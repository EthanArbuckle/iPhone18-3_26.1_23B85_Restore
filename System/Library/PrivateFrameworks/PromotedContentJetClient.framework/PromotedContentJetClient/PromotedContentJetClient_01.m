unint64_t sub_22FFFF9CC()
{
  result = qword_27DB06160;
  if (!qword_27DB06160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB06160);
  }

  return result;
}

unint64_t sub_22FFFFA24()
{
  result = qword_27DB06168;
  if (!qword_27DB06168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB06168);
  }

  return result;
}

unint64_t sub_22FFFFA7C()
{
  result = qword_27DB06170;
  if (!qword_27DB06170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB06170);
  }

  return result;
}

unint64_t sub_22FFFFAD4()
{
  result = qword_27DB06178;
  if (!qword_27DB06178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB06178);
  }

  return result;
}

unint64_t sub_22FFFFB2C()
{
  result = qword_27DB06180;
  if (!qword_27DB06180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB06180);
  }

  return result;
}

unint64_t sub_22FFFFB84()
{
  result = qword_27DB06188;
  if (!qword_27DB06188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB06188);
  }

  return result;
}

unint64_t sub_22FFFFBDC()
{
  result = qword_27DB06190;
  if (!qword_27DB06190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB06190);
  }

  return result;
}

unint64_t sub_22FFFFC34()
{
  result = qword_27DB06198;
  if (!qword_27DB06198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB06198);
  }

  return result;
}

unint64_t sub_22FFFFC8C()
{
  result = qword_27DB061A0;
  if (!qword_27DB061A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB061A0);
  }

  return result;
}

unint64_t sub_22FFFFCE4()
{
  result = qword_27DB061A8;
  if (!qword_27DB061A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB061A8);
  }

  return result;
}

unint64_t sub_22FFFFD3C()
{
  result = qword_27DB061B0;
  if (!qword_27DB061B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB061B0);
  }

  return result;
}

unint64_t sub_22FFFFD94()
{
  result = qword_27DB061B8;
  if (!qword_27DB061B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB061B8);
  }

  return result;
}

unint64_t sub_22FFFFDEC()
{
  result = qword_27DB061C0;
  if (!qword_27DB061C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB061C0);
  }

  return result;
}

unint64_t sub_22FFFFE44()
{
  result = qword_27DB061C8;
  if (!qword_27DB061C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB061C8);
  }

  return result;
}

unint64_t sub_22FFFFE9C()
{
  result = qword_27DB061D0;
  if (!qword_27DB061D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB061D0);
  }

  return result;
}

id sub_22FFFFEF4(void (*a1)(void), unint64_t *a2, void (*a3)(uint64_t))
{
  v23 = *MEMORY[0x277D85DE8];
  v6 = sub_230030D60();
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  swift_allocObject();
  sub_230030D50();
  a1(0);
  sub_2300003A0(a2, a3);
  v11 = sub_230030D40();
  v13 = v12;

  v14 = objc_opt_self();
  v15 = sub_230030DE0();
  v20[0] = 0;
  v16 = [v14 JSONObjectWithData:v15 options:0 error:v20];

  v17 = v20[0];
  if (v16)
  {
    sub_2300313C0();
    sub_22FFEDBF0(v11, v13);
    swift_unknownObjectRelease();
    sub_23000037C(v21, v22);
    sub_23000037C(v22, v21);
    sub_22FFED9B8(&qword_27DB06200, &unk_230034A30);
    if (swift_dynamicCast())
    {
      result = v20[0];
      goto LABEL_3;
    }
  }

  else
  {
    v18 = v17;
    v19 = sub_230030D70();

    swift_willThrow();
    sub_22FFEDBF0(v11, v13);
    MEMORY[0x23190FE50](v19);
  }

  result = 0;
LABEL_3:
  v10 = *MEMORY[0x277D85DE8];
  return result;
}

Swift::OpaquePointer_optional __swiftcall EncodableToDictionary.asDictionary()()
{
  v1 = v0;
  v21 = *MEMORY[0x277D85DE8];
  v2 = sub_230030D60();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  sub_230030D50();
  v5 = *(v1 + 16);
  v8 = sub_230030D40();
  v10 = v9;

  v11 = objc_opt_self();
  v12 = sub_230030DE0();
  v18[0] = 0;
  v13 = [v11 JSONObjectWithData:v12 options:0 error:v18];

  v14 = v18[0];
  if (v13)
  {
    sub_2300313C0();
    sub_22FFEDBF0(v8, v10);
    swift_unknownObjectRelease();
    sub_23000037C(v19, v20);
    sub_23000037C(v20, v19);
    sub_22FFED9B8(&qword_27DB06200, &unk_230034A30);
    if (swift_dynamicCast())
    {
      v6 = v18[0];
      goto LABEL_3;
    }
  }

  else
  {
    v16 = v14;
    v17 = sub_230030D70();

    swift_willThrow();
    sub_22FFEDBF0(v8, v10);
    MEMORY[0x23190FE50](v17);
  }

  v6 = 0;
LABEL_3:
  v7 = *MEMORY[0x277D85DE8];
  result.value._rawValue = v6;
  result.is_nil = v15;
  return result;
}

_OWORD *sub_23000037C(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_2300003A0(unint64_t *a1, void (*a2)(uint64_t))
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

PromotedContentJetClient::AttributionCallType_optional __swiftcall AttributionCallType.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (!rawValue)
  {
    v2 = 0;
  }

  *v1 = v2;
  return rawValue;
}

unint64_t sub_230000410()
{
  result = qword_27DB06218;
  if (!qword_27DB06218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB06218);
  }

  return result;
}

void *sub_230000464@<X0>(void *result@<X0>, char *a2@<X8>)
{
  if (*result == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (*result)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  *a2 = v3;
  return result;
}

unint64_t sub_230000544()
{
  result = qword_27DB06220;
  if (!qword_27DB06220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB06220);
  }

  return result;
}

uint64_t sub_2300005E0(uint64_t a1, uint64_t *a2)
{
  v3 = sub_230031040();
  sub_230000658(v3, a2);
  sub_2300006BC(v3, a2);
  return sub_230031030();
}

uint64_t *sub_230000658(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

uint64_t sub_2300006BC(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t AttributionConfig.allProperties.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for AttributionConfig() + 28);

  return sub_22FFFA88C(v3, a1);
}

uint64_t type metadata accessor for AttributionConfig()
{
  result = qword_281494B90;
  if (!qword_281494B90)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t AttributionConfig.allProperties.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for AttributionConfig() + 28);

  return sub_230000858(a1, v3);
}

uint64_t sub_230000858(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for APJSValue();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t AttributionConfig.init(maximumTokenLifetime:impressionLookback:interactionLookback:allProperties:)@<X0>(uint64_t a1@<X0>, double *a2@<X8>, double a3@<D0>, double a4@<D1>, double a5@<D2>)
{
  *a2 = a3;
  a2[1] = a4;
  a2[2] = a5;
  v7 = type metadata accessor for AttributionConfig();
  return sub_230001588(a1, a2 + *(v7 + 28), type metadata accessor for APJSValue);
}

PromotedContentJetClient::AttributionConfig::CodingKeys_optional __swiftcall AttributionConfig.CodingKeys.init(stringValue:)(Swift::String stringValue)
{
  v2 = v1;
  v3 = sub_230031460();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t sub_2300009D4()
{
  v1 = 0x65706F72506C6C61;
  if (*v0 == 2)
  {
    v1 = 0xD000000000000014;
  }

  v2 = 0xD000000000000012;
  if (*v0)
  {
    v2 = 0xD000000000000013;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_230000A74()
{
  v1 = *v0;
  sub_230031740();
  sub_2300311A0();

  return sub_230031760();
}

uint64_t sub_230000B50()
{
  *v0;
  *v0;
  *v0;
  sub_2300311A0();
}

uint64_t sub_230000C18()
{
  v1 = *v0;
  sub_230031740();
  sub_2300311A0();

  return sub_230031760();
}

void sub_230000CFC(unint64_t *a1@<X8>)
{
  v2 = 0xED00007365697472;
  v3 = 0x65706F72506C6C61;
  if (*v1 == 2)
  {
    v3 = 0xD000000000000014;
    v2 = 0x800000023003A080;
  }

  v4 = 0xD000000000000012;
  v5 = 0x800000023003A040;
  if (*v1)
  {
    v4 = 0xD000000000000013;
    v5 = 0x800000023003A060;
  }

  if (*v1 <= 1u)
  {
    v6 = v4;
  }

  else
  {
    v6 = v3;
  }

  if (*v1 <= 1u)
  {
    v2 = v5;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t sub_230000DCC(uint64_t a1)
{
  v2 = sub_2300011C8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_230000E08(uint64_t a1)
{
  v2 = sub_2300011C8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AttributionConfig.debugDescription.getter()
{
  sub_2300313E0();
  MEMORY[0x23190F560](0xD000000000000016, 0x800000023003A490);
  v1 = *v0;
  sub_2300312E0();
  MEMORY[0x23190F560](0xD000000000000016, 0x800000023003A4B0);
  v2 = v0[1];
  sub_2300312E0();
  MEMORY[0x23190F560](0xD000000000000017, 0x800000023003A4D0);
  v3 = v0[2];
  sub_2300312E0();
  MEMORY[0x23190F560](0x6F72506C6C61202CLL, 0xEF73656974726570);
  v4 = *(type metadata accessor for AttributionConfig() + 28);
  type metadata accessor for APJSValue();
  sub_230031420();
  return 0;
}

uint64_t AttributionConfig.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_22FFED9B8(&qword_27DB06228, &qword_230034B80);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v16[-v8];
  v10 = a1[4];
  sub_22FFEDA4C(a1, a1[3]);
  sub_2300011C8();
  sub_230031780();
  v11 = v3[1];
  v16[15] = 0;
  sub_230031620();
  if (!v2)
  {
    v12 = v3[2];
    v16[14] = 1;
    sub_230031620();
    v13 = *v3;
    v16[13] = 2;
    sub_230031620();
    v14 = *(type metadata accessor for AttributionConfig() + 28);
    v16[12] = 3;
    type metadata accessor for APJSValue();
    sub_230001544(&qword_27DB05C90);
    sub_230031640();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_2300011C8()
{
  result = qword_27DB06230;
  if (!qword_27DB06230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB06230);
  }

  return result;
}

uint64_t AttributionConfig.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v4 = type metadata accessor for APJSValue();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22FFED9B8(&qword_27DB06238, &qword_230034B88);
  v25 = *(v8 - 8);
  v26 = v8;
  v9 = *(v25 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v24 - v10;
  v12 = type metadata accessor for AttributionConfig();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v15 = (&v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = a1[3];
  v17 = a1[4];
  v27 = a1;
  sub_22FFEDA4C(a1, v16);
  sub_2300011C8();
  sub_230031770();
  if (!v2)
  {
    v31 = 0;
    v18 = v25;
    sub_230031500();
    v15[1] = v19;
    v30 = 1;
    sub_230031500();
    v15[2] = v20;
    v29 = 2;
    sub_230031500();
    *v15 = v22;
    v28 = 3;
    sub_230001544(&qword_27DB05CA8);
    v23 = v26;
    sub_230031520();
    (*(v18 + 8))(v11, v23);
    sub_230001588(v7, v15 + *(v12 + 28), type metadata accessor for APJSValue);
    sub_230001588(v15, v24, type metadata accessor for AttributionConfig);
  }

  return sub_22FFEE60C(v27);
}

uint64_t sub_230001544(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for APJSValue();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_230001588(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_2300015F4()
{
  result = qword_27DB06240;
  if (!qword_27DB06240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB06240);
  }

  return result;
}

unint64_t sub_23000164C()
{
  result = qword_27DB06248;
  if (!qword_27DB06248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB06248);
  }

  return result;
}

unint64_t sub_2300016A4()
{
  result = qword_27DB06250;
  if (!qword_27DB06250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB06250);
  }

  return result;
}

uint64_t sub_230001754()
{
  result = type metadata accessor for APJSValue();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t type metadata accessor for XPCSession.SendError()
{
  result = qword_281493F48;
  if (!qword_281493F48)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_23000184C()
{
  result = sub_2300310D0();
  if (v1 <= 0x3F)
  {
    result = sub_2300018DC();
    if (v2 <= 0x3F)
    {
      result = sub_2300312C0();
      if (v3 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

unint64_t sub_2300018DC()
{
  result = qword_281493E88;
  if (!qword_281493E88)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_281493E88);
  }

  return result;
}

uint64_t sub_230001940(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = sub_2300312C0();
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v6 = *(v5 + 64) + 15;
  v3[7] = swift_task_alloc();
  v7 = type metadata accessor for XPCSession.SendError();
  v3[8] = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  v3[9] = swift_task_alloc();
  v3[10] = swift_task_alloc();
  v9 = sub_22FFED9B8(&qword_27DB06258, &qword_230034E10);
  v3[11] = v9;
  v10 = *(*(v9 - 8) + 64) + 15;
  v3[12] = swift_task_alloc();
  v3[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_230001A88, 0, 0);
}

uint64_t sub_230001A88()
{
  v1 = swift_task_alloc();
  *(v0 + 112) = v1;
  *(v1 + 16) = *(v0 + 24);
  v2 = *(MEMORY[0x277D859E0] + 4);
  v3 = swift_task_alloc();
  *(v0 + 120) = v3;
  *v3 = v0;
  v3[1] = sub_230001B74;
  v4 = *(v0 + 104);
  v5 = *(v0 + 88);

  return MEMORY[0x2822007B8](v4, 0, 0, 0xD000000000000019, 0x800000023003A4F0, sub_230002310, v1, v5);
}

uint64_t sub_230001B74()
{
  v1 = *(*v0 + 120);
  v2 = *(*v0 + 112);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_230001C8C, 0, 0);
}

uint64_t sub_230001C8C()
{
  v1 = v0[11];
  sub_22FFF0DD0(v0[13], v0[12], &qword_27DB06258, &qword_230034E10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v2 = v0[9];
    v3 = v0[10];
    v4 = v0[8];
    sub_230002380(v0[12], v3, type metadata accessor for XPCSession.SendError);
    sub_2300030A8(v3, v2, type metadata accessor for XPCSession.SendError);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v6 = v0[13];
    v8 = v0[9];
    v7 = v0[10];
    if (EnumCaseMultiPayload == 4)
    {
      v10 = v0[6];
      v9 = v0[7];
      v11 = v0[5];
      (*(v10 + 32))(v9, v0[9], v11);
      sub_230003060(&qword_27DB06268, MEMORY[0x277D85678]);
      swift_allocError();
      (*(v10 + 16))(v12, v9, v11);
      swift_willThrow();
      (*(v10 + 8))(v9, v11);
      sub_230003110(v7, type metadata accessor for XPCSession.SendError);
      sub_230002318(v6);
    }

    else
    {
      v19 = v0[8];
      sub_230003060(&qword_27DB06260, type metadata accessor for XPCSession.SendError);
      swift_allocError();
      sub_2300030A8(v7, v20, type metadata accessor for XPCSession.SendError);
      swift_willThrow();
      sub_230003110(v7, type metadata accessor for XPCSession.SendError);
      sub_230002318(v6);
      sub_230003110(v8, type metadata accessor for XPCSession.SendError);
    }

    v22 = v0[12];
    v21 = v0[13];
    v24 = v0[9];
    v23 = v0[10];
    v25 = v0[7];

    v18 = v0[1];
  }

  else
  {
    v13 = v0[12];
    v15 = v0[9];
    v14 = v0[10];
    v16 = v0[7];
    v17 = v0[2];
    sub_230002318(v0[13]);
    sub_230002380(v13, v17, type metadata accessor for JetServiceResponse.Container);

    v18 = v0[1];
  }

  return v18();
}

uint64_t sub_230001FC4(uint64_t a1, void *a2)
{
  v15[0] = sub_22FFED9B8(&qword_27DB06258, &qword_230034E10);
  v4 = *(*(v15[0] - 8) + 64);
  MEMORY[0x28223BE20](v15[0]);
  v5 = sub_22FFED9B8(&qword_27DB06270, &qword_230034E18);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v15 - v8;
  v10 = a2[4];
  sub_22FFEDA4C(a2, a2[3]);
  v11 = *(v6 + 16);
  v15[1] = a1;
  v11(v9, a1, v5);
  v12 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v13 = swift_allocObject();
  (*(v6 + 32))(v13 + v12, v9, v5);
  sub_230031080();
}

uint64_t sub_230002318(uint64_t a1)
{
  v2 = sub_22FFED9B8(&qword_27DB06258, &qword_230034E10);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_230002380(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_2300023E8(uint64_t a1, uint64_t a2)
{
  v84 = a2;
  v81 = a1;
  v2 = sub_2300312C0();
  v76 = *(v2 - 8);
  v77 = v2;
  isa = v76[8].isa;
  v4 = MEMORY[0x28223BE20](v2);
  v75 = &v70 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v74 = &v70 - v6;
  v7 = sub_2300310D0();
  v78 = *(v7 - 8);
  v8 = *(v78 + 64);
  v9 = MEMORY[0x28223BE20](v7);
  v80 = &v70 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v79 = &v70 - v12;
  MEMORY[0x28223BE20](v11);
  v14 = &v70 - v13;
  v15 = type metadata accessor for JetServiceResponse.Container(0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v71 = &v70 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = sub_22FFED9B8(&qword_27DB06258, &qword_230034E10);
  v18 = *(*(v82 - 8) + 64);
  MEMORY[0x28223BE20](v82);
  v83 = &v70 - v19;
  v20 = type metadata accessor for JetServiceResponse(0);
  v21 = *(*(v20 - 8) + 64);
  v22 = MEMORY[0x28223BE20](v20);
  v72 = &v70 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v73 = &v70 - v24;
  v25 = sub_2300310F0();
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v25);
  v29 = &v70 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_22FFED9B8(&qword_27DB06278, &qword_230034E20);
  v31 = *(*(v30 - 8) + 64);
  MEMORY[0x28223BE20](v30);
  v33 = &v70 - v32;
  sub_22FFF0DD0(v81, &v70 - v32, &qword_27DB06278, &qword_230034E20);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v34 = v78;
    (*(v78 + 32))(v14, v33, v7);
    v35 = v7;
    v36 = v14;
    v37 = v34;
    if (qword_281493F58 != -1)
    {
      swift_once();
    }

    v38 = sub_230031040();
    sub_2300006BC(v38, qword_281498840);
    v39 = *(v34 + 16);
    v40 = v79;
    v39(v79, v36, v35);
    v41 = v80;
    v39(v80, v36, v35);
    v42 = sub_230031020();
    v43 = sub_230031310();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v76 = v42;
      v45 = v40;
      v46 = v44;
      v77 = swift_slowAlloc();
      v85[0] = v77;
      *v46 = 136315394;
      v47 = sub_2300310C0();
      v81 = v39;
      v48 = v36;
      if (v47)
      {
        v49 = 89;
      }

      else
      {
        v49 = 78;
      }

      v50 = *(v37 + 8);
      LODWORD(v78) = v43;
      v50(v45, v35);
      v51 = v49;
      v36 = v48;
      v39 = v81;
      v52 = sub_23000DE08(v51, 0xE100000000000000, v85);

      *(v46 + 4) = v52;
      *(v46 + 12) = 2080;
      v53 = sub_2300310B0();
      v54 = v41;
      v56 = v55;
      v50(v54, v35);
      v57 = sub_23000DE08(v53, v56, v85);

      *(v46 + 14) = v57;
      v58 = v76;
      _os_log_impl(&dword_22FFE9000, v76, v78, "XPC Service closed the connection. (canRetry: %s; reason: %s)", v46, 0x16u);
      v59 = v77;
      swift_arrayDestroy();
      MEMORY[0x23190FFD0](v59, -1, -1);
      MEMORY[0x23190FFD0](v46, -1, -1);
    }

    else
    {

      v50 = *(v37 + 8);
      v50(v41, v35);
      v50(v40, v35);
    }

    v39(v83, v36, v35);
    type metadata accessor for XPCSession.SendError();
    swift_storeEnumTagMultiPayload();
    swift_storeEnumTagMultiPayload();
    sub_22FFED9B8(&qword_27DB06270, &qword_230034E18);
    sub_2300312B0();
    return (v50)(v36, v35);
  }

  else
  {
    (*(v26 + 32))(v29, v33, v25);
    sub_2300312D0();
    sub_230003060(&qword_281494238, type metadata accessor for JetServiceResponse);
    v60 = v73;
    sub_2300310E0();
    v62 = v72;
    sub_2300030A8(v60, v72, type metadata accessor for JetServiceResponse);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 1)
    {
      v64 = *(v62 + 32);
      v65 = *(v62 + 40);
      v66 = *v62;
      v67 = *(v62 + 16);
      v68 = v83;
      *v83 = v66;
      *(v68 + 1) = v67;
      *(v68 + 4) = v64;
      v68[40] = v65;
      type metadata accessor for XPCSession.SendError();
      swift_storeEnumTagMultiPayload();
      swift_storeEnumTagMultiPayload();
      sub_22FFED9B8(&qword_27DB06270, &qword_230034E18);
      sub_2300312B0();
    }

    else
    {
      v69 = v71;
      sub_230002380(v62, v71, type metadata accessor for JetServiceResponse.Container);
      sub_2300030A8(v69, v83, type metadata accessor for JetServiceResponse.Container);
      swift_storeEnumTagMultiPayload();
      sub_22FFED9B8(&qword_27DB06270, &qword_230034E18);
      sub_2300312B0();
      sub_230003110(v69, type metadata accessor for JetServiceResponse.Container);
    }

    sub_230003110(v60, type metadata accessor for JetServiceResponse);
    return (*(v26 + 8))(v29, v25);
  }
}

uint64_t sub_230002FE4(uint64_t a1)
{
  v3 = *(sub_22FFED9B8(&qword_27DB06270, &qword_230034E18) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_2300023E8(a1, v4);
}

uint64_t sub_230003060(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2300030A8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_230003110(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t ConversionSignal.CodingKeys.stringValue.getter()
{
  if (*v0)
  {
    result = 0xD000000000000017;
  }

  else
  {
    result = 0xD00000000000001ALL;
  }

  *v0;
  return result;
}

uint64_t sub_2300031DC(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0xD000000000000017;
  }

  else
  {
    v4 = 0xD00000000000001ALL;
  }

  if (v3)
  {
    v5 = "time";
  }

  else
  {
    v5 = "appStoreInstallationSignal";
  }

  v6 = v5 | 0x8000000000000000;
  if (*a2)
  {
    v7 = 0xD000000000000017;
  }

  else
  {
    v7 = 0xD00000000000001ALL;
  }

  if (*a2)
  {
    v8 = "appStoreInstallationSignal";
  }

  else
  {
    v8 = "time";
  }

  if (v4 == v7 && v6 == (v8 | 0x8000000000000000))
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_2300316D0();
  }

  return v10 & 1;
}

uint64_t sub_230003288()
{
  v1 = *v0;
  sub_230031740();
  sub_2300311A0();

  return sub_230031760();
}

uint64_t sub_230003308()
{
  *v0;
  sub_2300311A0();
}

uint64_t sub_230003374()
{
  v1 = *v0;
  sub_230031740();
  sub_2300311A0();

  return sub_230031760();
}

uint64_t sub_2300033F0@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_230031460();

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

void sub_230003450(unint64_t *a1@<X8>)
{
  if (*v1)
  {
    v2 = 0xD000000000000017;
  }

  else
  {
    v2 = 0xD00000000000001ALL;
  }

  if (*v1)
  {
    v3 = "appStoreInstallationSignal";
  }

  else
  {
    v3 = "time";
  }

  *a1 = v2;
  a1[1] = v3 | 0x8000000000000000;
}

unint64_t sub_230003490()
{
  if (*v0)
  {
    result = 0xD000000000000017;
  }

  else
  {
    result = 0xD00000000000001ALL;
  }

  *v0;
  return result;
}

uint64_t sub_2300034CC@<X0>(char *a1@<X8>)
{
  v2 = sub_230031460();

  if (v2 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v2)
  {
    v4 = 0;
  }

  *a1 = v4;
  return result;
}

uint64_t sub_230003530(uint64_t a1)
{
  v2 = sub_230005154();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23000356C(uint64_t a1)
{
  v2 = sub_230005154();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ConversionSignal.adamId.getter()
{
  v1 = v0;
  v2 = type metadata accessor for StandaloneAppOpenSignal();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for AppStoreInstallationSignal();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for ConversionSignal();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_230003760(v1, v13);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_230005250(v13, v5, type metadata accessor for StandaloneAppOpenSignal);
    v14 = *(v5 + 2);
    v15 = *(v5 + 3);

    v16 = v5;
    v17 = type metadata accessor for StandaloneAppOpenSignal;
  }

  else
  {
    sub_230005250(v13, v9, type metadata accessor for AppStoreInstallationSignal);
    v18 = &v9[*(v6 + 36)];
    v14 = *v18;
    v19 = *(v18 + 1);

    v16 = v9;
    v17 = type metadata accessor for AppStoreInstallationSignal;
  }

  sub_230005724(v16, v17);
  return v14;
}

uint64_t sub_230003760(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ConversionSignal();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t ConversionSignal.accountToken.getter()
{
  v1 = v0;
  v2 = type metadata accessor for StandaloneAppOpenSignal();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for AppStoreInstallationSignal();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for ConversionSignal();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_230003760(v1, v13);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_230005250(v13, v5, type metadata accessor for StandaloneAppOpenSignal);
    v14 = &v5[*(v2 + 40)];
    v15 = *v14;
    v16 = *(v14 + 1);

    v17 = v5;
    v18 = type metadata accessor for StandaloneAppOpenSignal;
  }

  else
  {
    sub_230005250(v13, v9, type metadata accessor for AppStoreInstallationSignal);
    v19 = &v9[*(v6 + 56)];
    v15 = *v19;
    v20 = *(v19 + 1);

    v17 = v9;
    v18 = type metadata accessor for AppStoreInstallationSignal;
  }

  sub_230005724(v17, v18);
  return v15;
}

uint64_t ConversionSignal.bundleId.getter()
{
  v1 = v0;
  v2 = type metadata accessor for StandaloneAppOpenSignal();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = (&v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = type metadata accessor for AppStoreInstallationSignal();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for ConversionSignal();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_230003760(v1, v13);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_230005250(v13, v5, type metadata accessor for StandaloneAppOpenSignal);
    v14 = *v5;
    v15 = v5[1];

    v16 = v5;
    v17 = type metadata accessor for StandaloneAppOpenSignal;
  }

  else
  {
    sub_230005250(v13, v9, type metadata accessor for AppStoreInstallationSignal);
    v18 = &v9[*(v6 + 32)];
    v14 = *v18;
    v19 = *(v18 + 1);

    v16 = v9;
    v17 = type metadata accessor for AppStoreInstallationSignal;
  }

  sub_230005724(v16, v17);
  return v14;
}

unint64_t ConversionSignal.shortDescription.getter()
{
  v1 = type metadata accessor for StandaloneAppOpenSignal();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for AppStoreInstallationSignal();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for ConversionSignal();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_230003760(v0, v12);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_230005250(v12, v4, type metadata accessor for StandaloneAppOpenSignal);
    v19 = 0;
    v20 = 0xE000000000000000;
    sub_2300313E0();

    v19 = 0xD000000000000019;
    v20 = 0x800000023003A510;
    v13 = StandaloneAppOpenSignal.shortDescription.getter();
    MEMORY[0x23190F560](v13);

    MEMORY[0x23190F560](125, 0xE100000000000000);
    v14 = v19;
    v15 = v4;
    v16 = type metadata accessor for StandaloneAppOpenSignal;
  }

  else
  {
    sub_230005250(v12, v8, type metadata accessor for AppStoreInstallationSignal);
    v19 = 0;
    v20 = 0xE000000000000000;
    sub_2300313E0();

    v19 = 0xD00000000000001CLL;
    v20 = 0x800000023003A530;
    v17 = AppStoreInstallationSignal.shortDescription.getter();
    MEMORY[0x23190F560](v17);

    MEMORY[0x23190F560](125, 0xE100000000000000);
    v14 = v19;
    v15 = v8;
    v16 = type metadata accessor for AppStoreInstallationSignal;
  }

  sub_230005724(v15, v16);
  return v14;
}

uint64_t ConversionSignal.machTimestamp.getter()
{
  v1 = v0;
  v2 = type metadata accessor for StandaloneAppOpenSignal();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for AppStoreInstallationSignal();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for ConversionSignal();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_230003760(v1, v13);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_230005250(v13, v5, type metadata accessor for StandaloneAppOpenSignal);
    v14 = &v5[*(v2 + 28)];
    v15 = *v14;
    v16 = v14[8];
    v17 = v5;
    v18 = type metadata accessor for StandaloneAppOpenSignal;
  }

  else
  {
    sub_230005250(v13, v9, type metadata accessor for AppStoreInstallationSignal);
    v19 = &v9[*(v6 + 20)];
    v15 = *v19;
    v20 = v19[8];
    v17 = v9;
    v18 = type metadata accessor for AppStoreInstallationSignal;
  }

  sub_230005724(v17, v18);
  return v15;
}

uint64_t sub_230003F6C(uint64_t a1)
{
  v2 = sub_2300051FC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_230003FA8(uint64_t a1)
{
  v2 = sub_2300051FC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_230003FE4(uint64_t a1)
{
  v2 = sub_2300051A8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_230004020(uint64_t a1)
{
  v2 = sub_2300051A8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ConversionSignal.encode(to:)(void *a1)
{
  v2 = sub_22FFED9B8(&qword_27DB06288, &qword_230034E30);
  v38 = *(v2 - 8);
  v39 = v2;
  v3 = *(v38 + 64);
  MEMORY[0x28223BE20](v2);
  v37 = &v31 - v4;
  v35 = type metadata accessor for StandaloneAppOpenSignal();
  v5 = *(*(v35 - 8) + 64);
  MEMORY[0x28223BE20](v35);
  v36 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22FFED9B8(&qword_27DB06290, &qword_230034E38);
  v33 = *(v7 - 8);
  v34 = v7;
  v8 = *(v33 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v31 - v9;
  v32 = type metadata accessor for AppStoreInstallationSignal();
  v11 = *(*(v32 - 8) + 64);
  MEMORY[0x28223BE20](v32);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ConversionSignal();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_22FFED9B8(&qword_27DB06298, &qword_230034E40);
  v18 = *(v41 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v41);
  v21 = &v31 - v20;
  v22 = a1[4];
  sub_22FFEDA4C(a1, a1[3]);
  sub_230005154();
  sub_230031780();
  sub_230003760(v40, v17);
  v23 = (v18 + 8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v24 = v36;
    sub_230005250(v17, v36, type metadata accessor for StandaloneAppOpenSignal);
    v43 = 1;
    sub_2300051A8();
    v25 = v37;
    v26 = v41;
    sub_2300315A0();
    sub_2300052B8(&qword_27DB062A8, type metadata accessor for StandaloneAppOpenSignal);
    v27 = v39;
    sub_230031640();
    (*(v38 + 8))(v25, v27);
    sub_230005724(v24, type metadata accessor for StandaloneAppOpenSignal);
    return (*v23)(v21, v26);
  }

  else
  {
    sub_230005250(v17, v13, type metadata accessor for AppStoreInstallationSignal);
    v42 = 0;
    sub_2300051FC();
    v29 = v41;
    sub_2300315A0();
    sub_2300052B8(&qword_281493F90, type metadata accessor for AppStoreInstallationSignal);
    v30 = v34;
    sub_230031640();
    (*(v33 + 8))(v10, v30);
    sub_230005724(v13, type metadata accessor for AppStoreInstallationSignal);
    return (*v23)(v21, v29);
  }
}

uint64_t ConversionSignal.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v48 = a2;
  v55 = sub_22FFED9B8(&qword_27DB062B0, &qword_230034E48);
  v51 = *(v55 - 8);
  v3 = *(v51 + 64);
  MEMORY[0x28223BE20](v55);
  v54 = &v44 - v4;
  v5 = sub_22FFED9B8(&qword_27DB062B8, &qword_230034E50);
  v49 = *(v5 - 8);
  v50 = v5;
  v6 = *(v49 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v44 - v7;
  v9 = sub_22FFED9B8(&qword_27DB062C0, &unk_230034E58);
  v52 = *(v9 - 8);
  v53 = v9;
  v10 = *(v52 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v44 - v11;
  v13 = type metadata accessor for ConversionSignal();
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v44 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v44 - v19;
  MEMORY[0x28223BE20](v18);
  v22 = &v44 - v21;
  v23 = a1[3];
  v24 = a1[4];
  v57 = a1;
  sub_22FFEDA4C(a1, v23);
  sub_230005154();
  v25 = v56;
  sub_230031770();
  if (v25)
  {
    return sub_22FFEE60C(v57);
  }

  v45 = v17;
  v46 = v20;
  v26 = v54;
  v27 = v55;
  v56 = 0;
  v44 = v22;
  v47 = v13;
  v29 = v52;
  v28 = v53;
  v30 = sub_230031580();
  v31 = (2 * *(v30 + 16)) | 1;
  v58 = v30;
  v59 = v30 + 32;
  v60 = 0;
  v61 = v31;
  sub_22FFEE7BC(&v62);
  v32 = v12;
  if (v62 == 2 || v60 != v61 >> 1)
  {
    v36 = sub_230031400();
    swift_allocError();
    v38 = v37;
    v39 = *(sub_22FFED9B8(&qword_27DB05B98, &qword_230032EB0) + 48);
    *v38 = v47;
    sub_230031480();
    sub_2300313F0();
    (*(*(v36 - 8) + 104))(v38, *MEMORY[0x277D84160], v36);
    swift_willThrow();
    goto LABEL_8;
  }

  if ((v62 & 1) == 0)
  {
    v62 = 0;
    sub_2300051FC();
    v41 = v56;
    sub_230031470();
    if (!v41)
    {
      type metadata accessor for AppStoreInstallationSignal();
      sub_2300052B8(&qword_27DB062D0, type metadata accessor for AppStoreInstallationSignal);
      v35 = v46;
      v42 = v50;
      sub_230031520();
      (*(v49 + 8))(v8, v42);
      (*(v29 + 8))(v12, v28);
      swift_unknownObjectRelease();
      goto LABEL_12;
    }

    goto LABEL_8;
  }

  v62 = 1;
  sub_2300051A8();
  v33 = v26;
  v34 = v56;
  sub_230031470();
  if (v34)
  {
LABEL_8:
    (*(v29 + 8))(v32, v28);
    swift_unknownObjectRelease();
    return sub_22FFEE60C(v57);
  }

  type metadata accessor for StandaloneAppOpenSignal();
  sub_2300052B8(&qword_27DB062C8, type metadata accessor for StandaloneAppOpenSignal);
  v35 = v45;
  sub_230031520();
  (*(v51 + 8))(v33, v27);
  (*(v29 + 8))(v32, v28);
  swift_unknownObjectRelease();
LABEL_12:
  swift_storeEnumTagMultiPayload();
  v43 = v44;
  sub_230005250(v35, v44, type metadata accessor for ConversionSignal);
  sub_230005250(v43, v48, type metadata accessor for ConversionSignal);
  return sub_22FFEE60C(v57);
}

uint64_t ConversionSignal.debugDescription.getter()
{
  v1 = type metadata accessor for StandaloneAppOpenSignal();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for AppStoreInstallationSignal();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for ConversionSignal();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_230003760(v0, v12);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_230005250(v12, v4, type metadata accessor for StandaloneAppOpenSignal);
    v17 = 0;
    v18 = 0xE000000000000000;
    sub_2300313E0();
    MEMORY[0x23190F560](0xD000000000000019, 0x800000023003A510);
    sub_230031420();
    MEMORY[0x23190F560](125, 0xE100000000000000);
    v13 = v17;
    v14 = v4;
    v15 = type metadata accessor for StandaloneAppOpenSignal;
  }

  else
  {
    sub_230005250(v12, v8, type metadata accessor for AppStoreInstallationSignal);
    v17 = 0;
    v18 = 0xE000000000000000;
    sub_2300313E0();
    MEMORY[0x23190F560](0xD00000000000001CLL, 0x800000023003A530);
    sub_230031420();
    MEMORY[0x23190F560](125, 0xE100000000000000);
    v13 = v17;
    v14 = v8;
    v15 = type metadata accessor for AppStoreInstallationSignal;
  }

  sub_230005724(v14, v15);
  return v13;
}

uint64_t _s24PromotedContentJetClient16ConversionSignalO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StandaloneAppOpenSignal();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = (&v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = type metadata accessor for AppStoreInstallationSignal();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ConversionSignal();
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = (&v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v14);
  v18 = &v31 - v17;
  v19 = sub_22FFED9B8(&qword_27DB062F0, &qword_2300352E8);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v19 - 8);
  v23 = &v31 - v22;
  v24 = *(v21 + 56);
  sub_230003760(a1, &v31 - v22);
  sub_230003760(a2, &v23[v24]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_230003760(v23, v16);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_230005250(&v23[v24], v7, type metadata accessor for StandaloneAppOpenSignal);
      v25 = _s24PromotedContentJetClient23StandaloneAppOpenSignalV2eeoiySbAC_ACtFZ_0(v16, v7);
      sub_230005724(v7, type metadata accessor for StandaloneAppOpenSignal);
      v26 = v16;
      v27 = type metadata accessor for StandaloneAppOpenSignal;
LABEL_9:
      sub_230005724(v26, v27);
      sub_230005724(v23, type metadata accessor for ConversionSignal);
      return v25 & 1;
    }

    v28 = type metadata accessor for StandaloneAppOpenSignal;
    v29 = v16;
  }

  else
  {
    sub_230003760(v23, v18);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_230005250(&v23[v24], v11, type metadata accessor for AppStoreInstallationSignal);
      v25 = _s24PromotedContentJetClient26AppStoreInstallationSignalV2eeoiySbAC_ACtFZ_0(v18, v11);
      sub_230005724(v11, type metadata accessor for AppStoreInstallationSignal);
      v26 = v18;
      v27 = type metadata accessor for AppStoreInstallationSignal;
      goto LABEL_9;
    }

    v28 = type metadata accessor for AppStoreInstallationSignal;
    v29 = v18;
  }

  sub_230005724(v29, v28);
  sub_2300056BC(v23);
  v25 = 0;
  return v25 & 1;
}

unint64_t sub_230005154()
{
  result = qword_2814940F8;
  if (!qword_2814940F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814940F8);
  }

  return result;
}

unint64_t sub_2300051A8()
{
  result = qword_27DB062A0;
  if (!qword_27DB062A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB062A0);
  }

  return result;
}

unint64_t sub_2300051FC()
{
  result = qword_281494110;
  if (!qword_281494110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281494110);
  }

  return result;
}

uint64_t sub_230005250(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_2300052B8(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_230005304()
{
  result = qword_27DB062D8;
  if (!qword_27DB062D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB062D8);
  }

  return result;
}

unint64_t sub_23000535C()
{
  result = qword_2814940E8;
  if (!qword_2814940E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814940E8);
  }

  return result;
}

unint64_t sub_2300053B4()
{
  result = qword_2814940F0;
  if (!qword_2814940F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814940F0);
  }

  return result;
}

uint64_t sub_230005408()
{
  result = type metadata accessor for AppStoreInstallationSignal();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for StandaloneAppOpenSignal();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_2300054B0()
{
  result = qword_27DB062E0;
  if (!qword_27DB062E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB062E0);
  }

  return result;
}

unint64_t sub_230005508()
{
  result = qword_27DB062E8;
  if (!qword_27DB062E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB062E8);
  }

  return result;
}

unint64_t sub_230005560()
{
  result = qword_281494100;
  if (!qword_281494100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281494100);
  }

  return result;
}

unint64_t sub_2300055B8()
{
  result = qword_281494108;
  if (!qword_281494108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281494108);
  }

  return result;
}

unint64_t sub_230005610()
{
  result = qword_281494118;
  if (!qword_281494118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281494118);
  }

  return result;
}

unint64_t sub_230005668()
{
  result = qword_281494120;
  if (!qword_281494120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281494120);
  }

  return result;
}

uint64_t sub_2300056BC(uint64_t a1)
{
  v2 = sub_22FFED9B8(&qword_27DB062F0, &qword_2300352E8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_230005724(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_230005788(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEC00000064496E6FLL;
  v3 = 0x6973736572706D69;
  v4 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v5 = 0x7079546D69616C63;
    }

    else
    {
      v5 = 0xD000000000000017;
    }

    if (v4 == 2)
    {
      v6 = 0xE900000000000065;
    }

    else
    {
      v6 = 0x800000023003A290;
    }
  }

  else
  {
    if (a1)
    {
      v5 = 0x6D617473656D6974;
    }

    else
    {
      v5 = 0x6973736572706D69;
    }

    if (v4)
    {
      v6 = 0xE900000000000070;
    }

    else
    {
      v6 = 0xEC00000064496E6FLL;
    }
  }

  v7 = 0x7079546D69616C63;
  v8 = 0x800000023003A290;
  if (a2 == 2)
  {
    v8 = 0xE900000000000065;
  }

  else
  {
    v7 = 0xD000000000000017;
  }

  if (a2)
  {
    v3 = 0x6D617473656D6974;
    v2 = 0xE900000000000070;
  }

  if (a2 <= 1u)
  {
    v9 = v3;
  }

  else
  {
    v9 = v7;
  }

  if (a2 <= 1u)
  {
    v10 = v2;
  }

  else
  {
    v10 = v8;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_2300316D0();
  }

  return v11 & 1;
}

uint64_t sub_2300058E0(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE600000000000000;
  v4 = 0xD000000000000012;
  v5 = 0x800000023003A310;
  if (a1 != 5)
  {
    v4 = 0x6F72687473736170;
    v5 = 0xEF4E4F534A686775;
  }

  v6 = 0x646E6957656D6974;
  v7 = 0xED0000646E45776FLL;
  if (a1 != 3)
  {
    v6 = 0x7475626972747461;
    v7 = 0xEB000000006E6F69;
  }

  if (a1 <= 4u)
  {
    v4 = v6;
    v5 = v7;
  }

  v8 = 0xE800000000000000;
  v9 = 0x6449656C646E7562;
  if (a1 != 1)
  {
    v9 = 0x646E6957656D6974;
    v8 = 0xEF7472617453776FLL;
  }

  if (a1)
  {
    v3 = v8;
  }

  else
  {
    v9 = 0x64496D616461;
  }

  if (a1 <= 2u)
  {
    v10 = v9;
  }

  else
  {
    v10 = v4;
  }

  if (v2 <= 2)
  {
    v11 = v3;
  }

  else
  {
    v11 = v5;
  }

  if (a2 <= 2u)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v12 = 0xE800000000000000;
        if (v10 != 0x6449656C646E7562)
        {
          goto LABEL_39;
        }
      }

      else
      {
        v12 = 0xEF7472617453776FLL;
        if (v10 != 0x646E6957656D6974)
        {
          goto LABEL_39;
        }
      }
    }

    else
    {
      v12 = 0xE600000000000000;
      if (v10 != 0x64496D616461)
      {
        goto LABEL_39;
      }
    }
  }

  else if (a2 > 4u)
  {
    if (a2 == 5)
    {
      v12 = 0x800000023003A310;
      if (v10 != 0xD000000000000012)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v12 = 0xEF4E4F534A686775;
      if (v10 != 0x6F72687473736170)
      {
LABEL_39:
        v13 = sub_2300316D0();
        goto LABEL_40;
      }
    }
  }

  else if (a2 == 3)
  {
    v12 = 0xED0000646E45776FLL;
    if (v10 != 0x646E6957656D6974)
    {
      goto LABEL_39;
    }
  }

  else
  {
    v12 = 0xEB000000006E6F69;
    if (v10 != 0x7475626972747461)
    {
      goto LABEL_39;
    }
  }

  if (v11 != v12)
  {
    goto LABEL_39;
  }

  v13 = 1;
LABEL_40:

  return v13 & 1;
}

uint64_t sub_230005B60(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEB00000000656D69;
  v3 = 0x54746E6572727563;
  v4 = a1;
  v5 = 0x416465686374616DLL;
  v6 = 0xEA00000000007364;
  if (a1 != 5)
  {
    v5 = 0x6F43746E65746E69;
    v6 = 0xED0000747865746ELL;
  }

  v7 = 0xE800000000000000;
  v8 = 0x6449656C646E7562;
  if (a1 != 3)
  {
    v8 = 0x6E6576456C6C6163;
    v7 = 0xED00006570795474;
  }

  if (a1 <= 4u)
  {
    v5 = v8;
    v6 = v7;
  }

  v9 = 0xE600000000000000;
  v10 = 0x6769666E6F63;
  if (a1 != 1)
  {
    v10 = 0x64496D616461;
    v9 = 0xE600000000000000;
  }

  if (!a1)
  {
    v10 = 0x54746E6572727563;
    v9 = 0xEB00000000656D69;
  }

  if (a1 <= 2u)
  {
    v11 = v10;
  }

  else
  {
    v11 = v5;
  }

  if (v4 <= 2)
  {
    v12 = v9;
  }

  else
  {
    v12 = v6;
  }

  if (a2 <= 2u)
  {
    if (a2)
    {
      v2 = 0xE600000000000000;
      if (a2 == 1)
      {
        if (v11 != 0x6769666E6F63)
        {
          goto LABEL_36;
        }
      }

      else if (v11 != 0x64496D616461)
      {
        goto LABEL_36;
      }

      goto LABEL_33;
    }
  }

  else
  {
    if (a2 > 4u)
    {
      if (a2 == 5)
      {
        v2 = 0xEA00000000007364;
        if (v11 != 0x416465686374616DLL)
        {
          goto LABEL_36;
        }
      }

      else
      {
        v2 = 0xED0000747865746ELL;
        if (v11 != 0x6F43746E65746E69)
        {
          goto LABEL_36;
        }
      }

      goto LABEL_33;
    }

    if (a2 == 3)
    {
      v2 = 0xE800000000000000;
      if (v11 != 0x6449656C646E7562)
      {
        goto LABEL_36;
      }

      goto LABEL_33;
    }

    v3 = 0x6E6576456C6C6163;
    v2 = 0xED00006570795474;
  }

  if (v11 != v3)
  {
LABEL_36:
    v13 = sub_2300316D0();
    goto LABEL_37;
  }

LABEL_33:
  if (v12 != v2)
  {
    goto LABEL_36;
  }

  v13 = 1;
LABEL_37:

  return v13 & 1;
}

uint64_t sub_230005DA8(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEB00000000656D69;
  v3 = 0x54746E6572727563;
  v4 = a1;
  v5 = 0xE800000000000000;
  v6 = 0x4449656C646E7562;
  v7 = 0x6E6576456C6C6163;
  v8 = 0xED00006570795474;
  if (a1 != 4)
  {
    v7 = 0x54746E756F636361;
    v8 = 0xEC0000006E656B6FLL;
  }

  if (a1 != 3)
  {
    v6 = v7;
    v5 = v8;
  }

  v9 = 0xE600000000000000;
  v10 = 0x6769666E6F63;
  if (a1 != 1)
  {
    v10 = 0x44496D616461;
    v9 = 0xE600000000000000;
  }

  if (!a1)
  {
    v10 = 0x54746E6572727563;
    v9 = 0xEB00000000656D69;
  }

  if (a1 <= 2u)
  {
    v11 = v10;
  }

  else
  {
    v11 = v6;
  }

  if (v4 <= 2)
  {
    v12 = v9;
  }

  else
  {
    v12 = v5;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v2 = 0xE800000000000000;
      if (v11 != 0x4449656C646E7562)
      {
        goto LABEL_31;
      }
    }

    else if (a2 == 4)
    {
      v2 = 0xED00006570795474;
      if (v11 != 0x6E6576456C6C6163)
      {
        goto LABEL_31;
      }
    }

    else
    {
      v2 = 0xEC0000006E656B6FLL;
      if (v11 != 0x54746E756F636361)
      {
        goto LABEL_31;
      }
    }
  }

  else
  {
    if (a2)
    {
      v2 = 0xE600000000000000;
      if (a2 == 1)
      {
        if (v11 != 0x6769666E6F63)
        {
          goto LABEL_31;
        }

        goto LABEL_28;
      }

      v3 = 0x44496D616461;
    }

    if (v11 != v3)
    {
LABEL_31:
      v13 = sub_2300316D0();
      goto LABEL_32;
    }
  }

LABEL_28:
  if (v12 != v2)
  {
    goto LABEL_31;
  }

  v13 = 1;
LABEL_32:

  return v13 & 1;
}

uint64_t sub_230005F98(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE800000000000000;
  v4 = 0xEC0000006E656B6FLL;
  v5 = 0x656D69546863616DLL;
  if (a1 == 5)
  {
    v5 = 0x54746E756F636361;
  }

  else
  {
    v4 = 0xED0000706D617473;
  }

  v6 = 0xD000000000000012;
  v7 = 0x800000023003A1B0;
  if (a1 != 3)
  {
    v6 = 0x6973736572706D69;
    v7 = 0xEC00000064496E6FLL;
  }

  if (a1 <= 4u)
  {
    v5 = v6;
    v4 = v7;
  }

  v8 = 0xE600000000000000;
  v9 = 0x64496D616461;
  if (a1 != 1)
  {
    v9 = 0x6D617473656D6974;
    v8 = 0xE900000000000070;
  }

  if (a1)
  {
    v3 = v8;
  }

  else
  {
    v9 = 0x6449656C646E7562;
  }

  if (a1 <= 2u)
  {
    v10 = v9;
  }

  else
  {
    v10 = v5;
  }

  if (v2 <= 2)
  {
    v11 = v3;
  }

  else
  {
    v11 = v4;
  }

  if (a2 <= 2u)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v12 = 0xE600000000000000;
        if (v10 != 0x64496D616461)
        {
          goto LABEL_40;
        }
      }

      else
      {
        v12 = 0xE900000000000070;
        if (v10 != 0x6D617473656D6974)
        {
          goto LABEL_40;
        }
      }
    }

    else
    {
      v12 = 0xE800000000000000;
      if (v10 != 0x6449656C646E7562)
      {
        goto LABEL_40;
      }
    }

    goto LABEL_38;
  }

  if (a2 <= 4u)
  {
    if (a2 == 3)
    {
      v12 = 0x800000023003A1B0;
      if (v10 != 0xD000000000000012)
      {
        goto LABEL_40;
      }

      goto LABEL_38;
    }

    v13 = 0x6973736572706D69;
    v14 = 1682533999;
LABEL_35:
    v12 = v14 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
    if (v10 != v13)
    {
      goto LABEL_40;
    }

    goto LABEL_38;
  }

  if (a2 == 5)
  {
    v13 = 0x54746E756F636361;
    v14 = 1852140399;
    goto LABEL_35;
  }

  v12 = 0xED0000706D617473;
  if (v10 != 0x656D69546863616DLL)
  {
LABEL_40:
    v15 = sub_2300316D0();
    goto LABEL_41;
  }

LABEL_38:
  if (v11 != v12)
  {
    goto LABEL_40;
  }

  v15 = 1;
LABEL_41:

  return v15 & 1;
}

uint64_t sub_2300061F0(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x656C646E6168;
  if (a1 > 1u)
  {
    v5 = a1 == 2;
    v3 = 0xE900000000000065;
    v4 = 0xEC00000065707954;
    if (a1 == 2)
    {
      v6 = 0x7079546D69616C63;
    }

    else
    {
      v6 = 0x64616F6C6E776F64;
    }
  }

  else
  {
    v3 = 0xE600000000000000;
    v4 = 0xE900000000000070;
    v5 = a1 == 0;
    if (a1)
    {
      v6 = 0x6D617473656D6974;
    }

    else
    {
      v6 = 0x656C646E6168;
    }
  }

  if (v5)
  {
    v7 = v3;
  }

  else
  {
    v7 = v4;
  }

  v8 = 0xE600000000000000;
  v9 = 0x7079546D69616C63;
  if (a2 == 2)
  {
    v10 = 0xE900000000000065;
  }

  else
  {
    v9 = 0x64616F6C6E776F64;
    v10 = 0xEC00000065707954;
  }

  if (a2)
  {
    v2 = 0x6D617473656D6974;
    v8 = 0xE900000000000070;
  }

  if (a2 <= 1u)
  {
    v11 = v2;
  }

  else
  {
    v11 = v9;
  }

  if (a2 <= 1u)
  {
    v12 = v8;
  }

  else
  {
    v12 = v10;
  }

  if (v6 == v11 && v7 == v12)
  {
    v13 = 1;
  }

  else
  {
    v13 = sub_2300316D0();
  }

  return v13 & 1;
}

uint64_t sub_23000634C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v5 = 0x6972657551766461;
    }

    else
    {
      v5 = 0x74614D646E756F66;
    }

    if (v2)
    {
      v6 = 0xEA00000000007365;
    }

    else
    {
      v6 = 0xEA00000000006863;
    }
  }

  else
  {
    v3 = 0x6F43746E65746E69;
    v4 = 0xED0000747865746ELL;
    if (a1 != 3)
    {
      v3 = 0xD000000000000012;
      v4 = 0x800000023003A180;
    }

    if (a1 == 2)
    {
      v5 = 0x74616469646E6163;
    }

    else
    {
      v5 = v3;
    }

    if (v2 == 2)
    {
      v6 = 0xEA00000000007365;
    }

    else
    {
      v6 = v4;
    }
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v11 = 0x6972657551766461;
    }

    else
    {
      v11 = 0x74614D646E756F66;
    }

    if (a2)
    {
      v10 = 0xEA00000000007365;
    }

    else
    {
      v10 = 0xEA00000000006863;
    }

    if (v5 != v11)
    {
      goto LABEL_37;
    }
  }

  else
  {
    v7 = 0x6F43746E65746E69;
    v8 = 0x800000023003A180;
    if (a2 == 3)
    {
      v8 = 0xED0000747865746ELL;
    }

    else
    {
      v7 = 0xD000000000000012;
    }

    if (a2 == 2)
    {
      v9 = 0x74616469646E6163;
    }

    else
    {
      v9 = v7;
    }

    if (a2 == 2)
    {
      v10 = 0xEA00000000007365;
    }

    else
    {
      v10 = v8;
    }

    if (v5 != v9)
    {
      goto LABEL_37;
    }
  }

  if (v6 != v10)
  {
LABEL_37:
    v12 = sub_2300316D0();
    goto LABEL_38;
  }

  v12 = 1;
LABEL_38:

  return v12 & 1;
}

uint64_t sub_2300064E4(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEB00000000656D69;
  v3 = 0x54746E6572727563;
  v4 = a1;
  v5 = 0x54746E756F636361;
  v6 = 0xEC0000006E656B6FLL;
  if (a1 != 6)
  {
    v5 = 0x6F43746E65746E69;
    v6 = 0xED0000747865746ELL;
  }

  v7 = 0x6E6576456C6C6163;
  v8 = 0xED00006570795474;
  if (a1 != 4)
  {
    v7 = 0x73746E657665;
    v8 = 0xE600000000000000;
  }

  if (a1 <= 5u)
  {
    v5 = v7;
    v6 = v8;
  }

  v9 = 0xE600000000000000;
  v10 = 0x44496D616461;
  if (a1 != 2)
  {
    v10 = 0x4449656C646E7562;
    v9 = 0xE800000000000000;
  }

  v11 = 0xE600000000000000;
  v12 = 0x6769666E6F63;
  if (!a1)
  {
    v12 = 0x54746E6572727563;
    v11 = 0xEB00000000656D69;
  }

  if (a1 <= 1u)
  {
    v10 = v12;
    v9 = v11;
  }

  if (a1 <= 3u)
  {
    v13 = v10;
  }

  else
  {
    v13 = v5;
  }

  if (v4 <= 3)
  {
    v14 = v9;
  }

  else
  {
    v14 = v6;
  }

  if (a2 > 3u)
  {
    if (a2 > 5u)
    {
      if (a2 == 6)
      {
        v2 = 0xEC0000006E656B6FLL;
        if (v13 != 0x54746E756F636361)
        {
          goto LABEL_41;
        }

        goto LABEL_37;
      }

      v15 = 0x6F43746E65746E69;
      v16 = 0x747865746ELL;
    }

    else
    {
      if (a2 != 4)
      {
        v2 = 0xE600000000000000;
        if (v13 != 0x73746E657665)
        {
          goto LABEL_41;
        }

        goto LABEL_37;
      }

      v15 = 0x6E6576456C6C6163;
      v16 = 0x6570795474;
    }

    v2 = v16 & 0xFFFFFFFFFFFFLL | 0xED00000000000000;
    if (v13 != v15)
    {
      goto LABEL_41;
    }
  }

  else
  {
    if (a2 > 1u)
    {
      if (a2 == 2)
      {
        v2 = 0xE600000000000000;
        if (v13 != 0x44496D616461)
        {
          goto LABEL_41;
        }

        goto LABEL_37;
      }

      v2 = 0xE800000000000000;
      v3 = 0x4449656C646E7562;
    }

    else if (a2)
    {
      v2 = 0xE600000000000000;
      if (v13 != 0x6769666E6F63)
      {
        goto LABEL_41;
      }

      goto LABEL_37;
    }

    if (v13 != v3)
    {
LABEL_41:
      v17 = sub_2300316D0();
      goto LABEL_42;
    }
  }

LABEL_37:
  if (v14 != v2)
  {
    goto LABEL_41;
  }

  v17 = 1;
LABEL_42:

  return v17 & 1;
}

uint64_t sub_23000676C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEC00000064496E6FLL;
  v3 = 0x6973736572706D69;
  v4 = a1;
  if (a1 <= 2u)
  {
    v9 = 0xE600000000000000;
    v10 = 0x63697274656DLL;
    if (a1 != 1)
    {
      v10 = 0x65736F70727570;
      v9 = 0xE700000000000000;
    }

    if (a1)
    {
      v8 = v10;
    }

    else
    {
      v8 = 0x6973736572706D69;
    }

    if (v4)
    {
      v11 = v9;
    }

    else
    {
      v11 = 0xEC00000064496E6FLL;
    }
  }

  else
  {
    if (a1 > 4u)
    {
      v6 = 0x8000000230039F60;
      v7 = 0x8000000230039F80;
      v5 = a1 == 5;
      if (a1 == 5)
      {
        v8 = 0xD000000000000012;
      }

      else
      {
        v8 = 0xD000000000000010;
      }
    }

    else
    {
      v5 = a1 == 3;
      v6 = 0xE900000000000070;
      v7 = 0xEA00000000007365;
      if (a1 == 3)
      {
        v8 = 0x6D617473656D6974;
      }

      else
      {
        v8 = 0x69747265706F7270;
      }
    }

    if (v5)
    {
      v11 = v6;
    }

    else
    {
      v11 = v7;
    }
  }

  if (a2 <= 2u)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v2 = 0xE600000000000000;
        if (v8 != 0x63697274656DLL)
        {
          goto LABEL_42;
        }

        goto LABEL_39;
      }

      v2 = 0xE700000000000000;
      v3 = 0x65736F70727570;
    }

    if (v8 != v3)
    {
LABEL_42:
      v13 = sub_2300316D0();
      goto LABEL_43;
    }
  }

  else if (a2 > 4u)
  {
    if (a2 == 5)
    {
      v12 = 0xD000000000000012;
    }

    else
    {
      v12 = 0xD000000000000010;
    }

    if (a2 == 5)
    {
      v2 = 0x8000000230039F60;
    }

    else
    {
      v2 = 0x8000000230039F80;
    }

    if (v8 != v12)
    {
      goto LABEL_42;
    }
  }

  else if (a2 == 3)
  {
    v2 = 0xE900000000000070;
    if (v8 != 0x6D617473656D6974)
    {
      goto LABEL_42;
    }
  }

  else
  {
    v2 = 0xEA00000000007365;
    if (v8 != 0x69747265706F7270)
    {
      goto LABEL_42;
    }
  }

LABEL_39:
  if (v11 != v2)
  {
    goto LABEL_42;
  }

  v13 = 1;
LABEL_43:

  return v13 & 1;
}

uint64_t sub_2300069A4(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xED00007365697472;
  v3 = 0xD000000000000012;
  v4 = 0x65706F72506C6C61;
  v5 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v6 = 0xD000000000000014;
    }

    else
    {
      v6 = 0x65706F72506C6C61;
    }

    if (v5 == 2)
    {
      v7 = 0x800000023003A080;
    }

    else
    {
      v7 = 0xED00007365697472;
    }
  }

  else
  {
    if (a1)
    {
      v6 = 0xD000000000000013;
    }

    else
    {
      v6 = 0xD000000000000012;
    }

    if (v5)
    {
      v7 = 0x800000023003A060;
    }

    else
    {
      v7 = 0x800000023003A040;
    }
  }

  if (a2 == 2)
  {
    v4 = 0xD000000000000014;
    v2 = 0x800000023003A080;
  }

  v8 = 0x800000023003A060;
  if (a2)
  {
    v3 = 0xD000000000000013;
  }

  else
  {
    v8 = 0x800000023003A040;
  }

  if (a2 <= 1u)
  {
    v9 = v3;
  }

  else
  {
    v9 = v4;
  }

  if (a2 <= 1u)
  {
    v10 = v8;
  }

  else
  {
    v10 = v2;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_2300316D0();
  }

  return v11 & 1;
}

uint64_t sub_230006AD0(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE800000000000000;
  v4 = 0x7461766972507475;
  v5 = 0xEE007475706E4965;
  v6 = 0x63696C6275507475;
  v7 = 0xEB0000000079654BLL;
  if (a1 != 4)
  {
    v6 = 0xD000000000000010;
    v7 = 0x800000023003A020;
  }

  if (a1 != 3)
  {
    v4 = v6;
    v5 = v7;
  }

  v8 = 0x7473656D69547475;
  v9 = 0xEB00000000706D61;
  if (a1 != 1)
  {
    v8 = 0x6F64657273497475;
    v9 = 0xEE0064616F6C6E77;
  }

  if (a1)
  {
    v3 = v9;
  }

  else
  {
    v8 = 0x64496D6164417475;
  }

  if (a1 <= 2u)
  {
    v10 = v8;
  }

  else
  {
    v10 = v4;
  }

  if (v2 <= 2)
  {
    v11 = v3;
  }

  else
  {
    v11 = v5;
  }

  if (a2 <= 2u)
  {
    if (!a2)
    {
      v14 = 0xE800000000000000;
      if (v10 != 0x64496D6164417475)
      {
        goto LABEL_34;
      }

      goto LABEL_32;
    }

    if (a2 == 1)
    {
      v12 = 0x7473656D69547475;
      v13 = 7368033;
      goto LABEL_23;
    }

    v15 = 0x6F64657273497475;
    v16 = 0x64616F6C6E77;
LABEL_29:
    v14 = v16 & 0xFFFFFFFFFFFFLL | 0xEE00000000000000;
    if (v10 != v15)
    {
      goto LABEL_34;
    }

    goto LABEL_32;
  }

  if (a2 == 3)
  {
    v15 = 0x7461766972507475;
    v16 = 0x7475706E4965;
    goto LABEL_29;
  }

  if (a2 == 4)
  {
    v12 = 0x63696C6275507475;
    v13 = 7955787;
LABEL_23:
    v14 = v13 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
    if (v10 != v12)
    {
      goto LABEL_34;
    }

    goto LABEL_32;
  }

  v14 = 0x800000023003A020;
  if (v10 != 0xD000000000000010)
  {
LABEL_34:
    v17 = sub_2300316D0();
    goto LABEL_35;
  }

LABEL_32:
  if (v11 != v14)
  {
    goto LABEL_34;
  }

  v17 = 1;
LABEL_35:

  return v17 & 1;
}

uint64_t AttributionMatchIntent.currentTime.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_230030E00();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t AttributionMatchIntent.adamID.getter()
{
  v1 = (v0 + *(type metadata accessor for AttributionMatchIntent(0) + 24));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t AttributionMatchIntent.bundleID.getter()
{
  v1 = (v0 + *(type metadata accessor for AttributionMatchIntent(0) + 28));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t AttributionMatchIntent.callEventType.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for AttributionMatchIntent(0);
  *a1 = *(v1 + *(result + 32));
  return result;
}

uint64_t AttributionMatchIntent.events.getter()
{
  v1 = *(v0 + *(type metadata accessor for AttributionMatchIntent(0) + 36));
}

uint64_t AttributionMatchIntent.accountToken.getter()
{
  v1 = (v0 + *(type metadata accessor for AttributionMatchIntent(0) + 40));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t AttributionMatchIntent.intentContext.getter@<X0>(void *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for AttributionMatchIntent(0) + 44));
  v4 = v3[1];
  *a1 = *v3;
  a1[1] = v4;
}

PromotedContentJetClient::AttributionMatchIntent::CodingKeys_optional __swiftcall AttributionMatchIntent.CodingKeys.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_230031460();

  v5 = 8;
  if (v3 < 8)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

PromotedContentJetClient::AttributionMatchIntent::CodingKeys_optional __swiftcall AttributionMatchIntent.CodingKeys.init(stringValue:)(Swift::String stringValue)
{
  v2 = v1;
  result.value = AttributionMatchIntent.CodingKeys.init(rawValue:)(stringValue).value;
  *v2 = v4;
  return result;
}

uint64_t sub_230006FFC()
{
  v1 = *v0;
  v2 = 0x54746E6572727563;
  v3 = 0x54746E756F636361;
  if (v1 != 6)
  {
    v3 = 0x6F43746E65746E69;
  }

  v4 = 0x6E6576456C6C6163;
  if (v1 != 4)
  {
    v4 = 0x73746E657665;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0x44496D616461;
  if (v1 != 2)
  {
    v5 = 0x4449656C646E7562;
  }

  if (*v0)
  {
    v2 = 0x6769666E6F63;
  }

  if (*v0 > 1u)
  {
    v2 = v5;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

void sub_230007148(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEB00000000656D69;
  v4 = 0x54746E6572727563;
  v5 = 0xEC0000006E656B6FLL;
  v6 = 0x54746E756F636361;
  if (v2 != 6)
  {
    v6 = 0x6F43746E65746E69;
    v5 = 0xED0000747865746ELL;
  }

  v7 = 0xED00006570795474;
  v8 = 0x6E6576456C6C6163;
  if (v2 != 4)
  {
    v8 = 0x73746E657665;
    v7 = 0xE600000000000000;
  }

  if (*v1 <= 5u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE600000000000000;
  v10 = 0x44496D616461;
  if (v2 != 2)
  {
    v10 = 0x4449656C646E7562;
    v9 = 0xE800000000000000;
  }

  if (*v1)
  {
    v4 = 0x6769666E6F63;
    v3 = 0xE600000000000000;
  }

  if (*v1 > 1u)
  {
    v4 = v10;
    v3 = v9;
  }

  v13 = __OFSUB__(v2, 3);
  v11 = v2 == 3;
  v12 = v2 - 3 < 0;
  if (*v1 <= 3u)
  {
    v14 = v4;
  }

  else
  {
    v14 = v6;
  }

  if (!(v12 ^ v13 | v11))
  {
    v3 = v5;
  }

  *a1 = v14;
  a1[1] = v3;
}

uint64_t sub_2300072A8(uint64_t a1)
{
  v2 = sub_230007830();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2300072E4(uint64_t a1)
{
  v2 = sub_230007830();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AttributionMatchIntent.init(currentTime:config:adamID:bundleID:callEventType:events:accountToken:intentContext:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char *a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t *a12)
{
  v19 = *a7;
  v20 = *a12;
  v28 = a12[1];
  v21 = sub_230030E00();
  (*(*(v21 - 8) + 32))(a9, a1, v21);
  matched = type metadata accessor for AttributionMatchIntent(0);
  result = sub_230007440(a2, a9 + matched[5]);
  v24 = (a9 + matched[6]);
  *v24 = a3;
  v24[1] = a4;
  v25 = (a9 + matched[7]);
  *v25 = a5;
  v25[1] = a6;
  *(a9 + matched[8]) = v19;
  *(a9 + matched[9]) = a8;
  v26 = (a9 + matched[10]);
  *v26 = a10;
  v26[1] = a11;
  v27 = (a9 + matched[11]);
  *v27 = v20;
  v27[1] = v28;
  return result;
}

uint64_t sub_230007440(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AttributionConfig();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t AttributionMatchIntent.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_22FFED9B8(&qword_27DB062F8, "2b");
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v25 - v8;
  v10 = a1[4];
  sub_22FFEDA4C(a1, a1[3]);
  sub_230007830();
  sub_230031780();
  LOBYTE(v26) = 0;
  sub_230030E00();
  sub_230007884(&qword_281494290, MEMORY[0x277CC9578]);
  sub_230031640();
  if (!v2)
  {
    matched = type metadata accessor for AttributionMatchIntent(0);
    v12 = matched[5];
    LOBYTE(v26) = 1;
    type metadata accessor for AttributionConfig();
    sub_230007884(&qword_27DB06308, type metadata accessor for AttributionConfig);
    sub_230031640();
    v13 = (v3 + matched[6]);
    v14 = *v13;
    v15 = v13[1];
    LOBYTE(v26) = 2;
    sub_230031600();
    v16 = (v3 + matched[7]);
    v17 = *v16;
    v18 = v16[1];
    LOBYTE(v26) = 3;
    sub_230031600();
    LOBYTE(v26) = *(v3 + matched[8]);
    v28 = 4;
    sub_2300078CC();
    sub_230031640();
    v26 = *(v3 + matched[9]);
    v28 = 5;
    sub_22FFED9B8(&qword_27DB05BE0, &unk_230035310);
    sub_22FFEFFA4();
    sub_230031640();
    v19 = (v3 + matched[10]);
    v20 = *v19;
    v21 = v19[1];
    LOBYTE(v26) = 6;
    sub_230031600();
    v22 = (v3 + matched[11]);
    v23 = v22[1];
    v26 = *v22;
    v27 = v23;
    v28 = 7;
    sub_230007920();

    sub_2300315D0();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_230007830()
{
  result = qword_27DB06300;
  if (!qword_27DB06300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB06300);
  }

  return result;
}

uint64_t sub_230007884(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_2300078CC()
{
  result = qword_27DB06310;
  if (!qword_27DB06310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB06310);
  }

  return result;
}

unint64_t sub_230007920()
{
  result = qword_27DB06318;
  if (!qword_27DB06318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB06318);
  }

  return result;
}

uint64_t AttributionMatchIntent.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v33 = a2;
  v34 = type metadata accessor for AttributionConfig();
  v3 = *(*(v34 - 8) + 64);
  MEMORY[0x28223BE20](v34);
  v5 = v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_230030E00();
  v35 = *(v6 - 8);
  v7 = *(v35 + 64);
  MEMORY[0x28223BE20](v6);
  v38 = v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22FFED9B8(&qword_27DB06320, &qword_230035320);
  v36 = *(v9 - 8);
  v37 = v9;
  v10 = *(v36 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v32 - v11;
  matched = type metadata accessor for AttributionMatchIntent(0);
  v14 = *(*(matched - 1) + 64);
  MEMORY[0x28223BE20](matched);
  v16 = v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = a1[4];
  sub_22FFEDA4C(a1, a1[3]);
  sub_230007830();
  v39 = v12;
  v18 = v40;
  sub_230031770();
  if (v18)
  {
    return sub_22FFEE60C(a1);
  }

  v19 = v36;
  v20 = v16;
  LOBYTE(v41) = 0;
  sub_230007884(&qword_27DB05CA0, MEMORY[0x277CC9578]);
  v21 = v37;
  sub_230031520();
  (*(v35 + 32))(v20, v38, v6);
  LOBYTE(v41) = 1;
  sub_230007884(&qword_27DB06328, type metadata accessor for AttributionConfig);
  sub_230031520();
  v32[1] = v6;
  sub_230007440(v5, v20 + matched[5]);
  LOBYTE(v41) = 2;
  v38 = 0;
  v22 = sub_2300314E0();
  v40 = a1;
  v23 = (v20 + matched[6]);
  *v23 = v22;
  v23[1] = v24;
  LOBYTE(v41) = 3;
  v25 = sub_2300314E0();
  v26 = (v20 + matched[7]);
  *v26 = v25;
  v26[1] = v27;
  v42 = 4;
  sub_23000805C();
  sub_230031520();
  *(v20 + matched[8]) = v41;
  sub_22FFED9B8(&qword_27DB05BE0, &unk_230035310);
  v42 = 5;
  sub_22FFF0454();
  sub_230031520();
  *(v20 + matched[9]) = v41;
  LOBYTE(v41) = 6;
  v28 = sub_2300314E0();
  v29 = (v20 + matched[10]);
  *v29 = v28;
  v29[1] = v30;
  v42 = 7;
  sub_2300080B0();
  sub_2300314B0();
  (*(v19 + 8))(v39, v21);
  *(v20 + matched[11]) = v41;
  sub_230008104(v20, v33, type metadata accessor for AttributionMatchIntent);
  sub_22FFEE60C(v40);
  return sub_23000816C(v20, type metadata accessor for AttributionMatchIntent);
}

unint64_t sub_23000805C()
{
  result = qword_27DB06330;
  if (!qword_27DB06330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB06330);
  }

  return result;
}

unint64_t sub_2300080B0()
{
  result = qword_27DB06338;
  if (!qword_27DB06338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB06338);
  }

  return result;
}

uint64_t sub_230008104(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_23000816C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_230008224()
{
  v1 = *v0;
  sub_230031740();
  sub_2300311A0();

  return sub_230031760();
}

uint64_t sub_2300082F0()
{
  *v0;
  *v0;
  sub_2300311A0();
}

uint64_t sub_2300083A8()
{
  v1 = *v0;
  sub_230031740();
  sub_2300311A0();

  return sub_230031760();
}

uint64_t sub_230008470@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_23000AACC();
  *a2 = result;
  return result;
}

void sub_2300084A0(uint64_t *a1@<X8>)
{
  v2 = 0xE600000000000000;
  v3 = 0x656C646E6168;
  v4 = 0x7079546D69616C63;
  v5 = 0xEC00000065707954;
  if (*v1 == 2)
  {
    v5 = 0xE900000000000065;
  }

  else
  {
    v4 = 0x64616F6C6E776F64;
  }

  if (*v1)
  {
    v3 = 0x6D617473656D6974;
    v2 = 0xE900000000000070;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v4;
  }

  if (*v1 > 1u)
  {
    v2 = v5;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t sub_230008528()
{
  v1 = 0x656C646E6168;
  v2 = 0x7079546D69616C63;
  if (*v0 != 2)
  {
    v2 = 0x64616F6C6E776F64;
  }

  if (*v0)
  {
    v1 = 0x6D617473656D6974;
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

uint64_t sub_2300085AC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_23000AACC();
  *a1 = result;
  return result;
}

uint64_t sub_2300085D4(uint64_t a1)
{
  v2 = sub_230008878();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_230008610(uint64_t a1)
{
  v2 = sub_230008878();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MatchedEventProperties.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_22FFED9B8(&qword_27DB06340, &qword_230035328);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v17[-v8];
  v10 = a1[4];
  sub_22FFEDA4C(a1, a1[3]);
  sub_230008878();
  sub_230031780();
  v11 = *v3;
  v12 = v3[1];
  v17[15] = 0;
  sub_230031600();
  if (!v2)
  {
    v13 = type metadata accessor for MatchedEventProperties(0);
    v14 = v13[5];
    v17[14] = 1;
    sub_230030E00();
    sub_230007884(&qword_281494290, MEMORY[0x277CC9578]);
    sub_230031640();
    v17[13] = *(v3 + v13[6]);
    v17[12] = 2;
    sub_2300088EC();
    sub_230031640();
    v15 = *(v3 + v13[7]);
    v17[11] = 3;
    sub_230031630();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_230008878()
{
  result = qword_27DB06348;
  if (!qword_27DB06348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB06348);
  }

  return result;
}

unint64_t sub_2300088EC()
{
  result = qword_27DB06350;
  if (!qword_27DB06350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB06350);
  }

  return result;
}

uint64_t MatchedEventProperties.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a2;
  v3 = sub_230030E00();
  v21 = *(v3 - 8);
  v4 = *(v21 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_22FFED9B8(&qword_27DB06358, &qword_230035330);
  v22 = *(v24 - 8);
  v7 = *(v22 + 64);
  MEMORY[0x28223BE20](v24);
  v9 = &v20 - v8;
  v10 = type metadata accessor for MatchedEventProperties(0);
  v11 = *(*(v10 - 1) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = (&v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = a1[4];
  sub_22FFEDA4C(a1, a1[3]);
  sub_230008878();
  v23 = v9;
  v15 = v25;
  sub_230031770();
  if (v15)
  {
    return sub_22FFEE60C(a1);
  }

  v16 = v21;
  v30 = 0;
  *v13 = sub_2300314E0();
  v13[1] = v17;
  v25 = v17;
  v29 = 1;
  sub_230007884(&qword_27DB05CA0, MEMORY[0x277CC9578]);
  sub_230031520();
  (*(v16 + 32))(v13 + v10[5], v6, v3);
  v27 = 2;
  sub_230008D2C();
  sub_230031520();
  *(v13 + v10[6]) = v28;
  v26 = 3;
  v18 = sub_230031510();
  (*(v22 + 8))(v23, v24);
  *(v13 + v10[7]) = v18;
  sub_230008104(v13, v20, type metadata accessor for MatchedEventProperties);
  sub_22FFEE60C(a1);
  return sub_23000816C(v13, type metadata accessor for MatchedEventProperties);
}

unint64_t sub_230008D2C()
{
  result = qword_27DB06360;
  if (!qword_27DB06360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB06360);
  }

  return result;
}

uint64_t AttributionMatchIntent.ReturnType.intentContext.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 32);
  *a1 = *(v1 + 24);
  a1[1] = v2;
}

uint64_t AttributionMatchIntent.ReturnType.intentContext.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(v1 + 32);

  *(v1 + 24) = v2;
  *(v1 + 32) = v3;
  return result;
}

uint64_t AttributionMatchIntent.ReturnType.unMatchedCandidate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for AttributionMatchIntent.ReturnType(0) + 32);

  return sub_230008EC4(v3, a1);
}

uint64_t sub_230008E8C(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_230008EC4(uint64_t a1, uint64_t a2)
{
  v4 = sub_22FFED9B8(&qword_27DB06368, &qword_230035338);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t AttributionMatchIntent.ReturnType.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_22FFED9B8(&qword_27DB06370, &unk_230035340);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v15 - v8;
  v10 = a1[4];
  sub_22FFEDA4C(a1, a1[3]);
  sub_230009244();
  sub_230031780();
  v11 = *v3;
  LOBYTE(v16) = 0;
  sub_230031610();
  if (!v2)
  {
    v16 = v3[1];
    v18 = 1;
    sub_22FFED9B8(&qword_27DB06380, &qword_2300366B0);
    sub_230009828(&qword_281493EA0);
    sub_230031640();
    v16 = v3[2];
    v18 = 2;
    sub_22FFED9B8(&qword_27DB06388, &qword_230035350);
    sub_230009298(&qword_27DB06390, &qword_27DB06208);
    sub_230031640();
    v12 = v3[4];
    v16 = v3[3];
    v17 = v12;
    v18 = 3;
    sub_230007920();

    sub_2300315D0();

    v13 = *(type metadata accessor for AttributionMatchIntent.ReturnType(0) + 32);
    LOBYTE(v16) = 4;
    type metadata accessor for AttributionCandidateProperties(0);
    sub_230007884(&qword_27DB06398, type metadata accessor for AttributionCandidateProperties);
    sub_2300315D0();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_230009244()
{
  result = qword_27DB06378;
  if (!qword_27DB06378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB06378);
  }

  return result;
}

uint64_t sub_230009298(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_22FFF0054(&qword_27DB06388, &qword_230035350);
    sub_230007884(a2, type metadata accessor for AttributionMatchedEventProperties);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t AttributionMatchIntent.ReturnType.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v4 = sub_22FFED9B8(&qword_27DB06368, &qword_230035338);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v24 - v6;
  v26 = sub_22FFED9B8(&qword_27DB063A0, &qword_230035358);
  v8 = *(v26 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v26);
  v11 = v24 - v10;
  matched = type metadata accessor for AttributionMatchIntent.ReturnType(0);
  v13 = *(*(matched - 8) + 64);
  MEMORY[0x28223BE20](matched);
  v15 = v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v15 + 3) = 0;
  *(v15 + 4) = 0;
  v16 = a1[3];
  v17 = a1[4];
  v28 = a1;
  sub_22FFEDA4C(a1, v16);
  sub_230009244();
  v27 = v11;
  sub_230031770();
  if (v2)
  {
    sub_22FFEE60C(v28);
  }

  else
  {
    v18 = v8;
    LOBYTE(v29) = 0;
    v19 = v26;
    *v15 = sub_2300314F0() & 1;
    sub_22FFED9B8(&qword_27DB06380, &qword_2300366B0);
    v31 = 1;
    sub_230009828(&qword_281493E98);
    sub_230031520();
    v20 = v18;
    *(v15 + 1) = v29;
    sub_22FFED9B8(&qword_27DB06388, &qword_230035350);
    v31 = 2;
    sub_230009298(&qword_27DB063A8, &qword_27DB063B0);
    sub_230031520();
    v24[1] = v29;
    *(v15 + 2) = v29;
    v31 = 3;
    sub_2300080B0();
    sub_2300314B0();
    v21 = v29;
    v22 = v30;

    *(v15 + 3) = v21;
    *(v15 + 4) = v22;
    type metadata accessor for AttributionCandidateProperties(0);
    LOBYTE(v29) = 4;
    sub_230007884(&qword_27DB063B8, type metadata accessor for AttributionCandidateProperties);
    sub_2300314B0();
    (*(v20 + 8))(v27, v19);
    sub_230009894(v7, &v15[*(matched + 32)]);
    sub_230008104(v15, v25, type metadata accessor for AttributionMatchIntent.ReturnType);
    sub_22FFEE60C(v28);
    return sub_23000816C(v15, type metadata accessor for AttributionMatchIntent.ReturnType);
  }
}

uint64_t sub_230009828(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_22FFF0054(&qword_27DB06380, &qword_2300366B0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_230009894(uint64_t a1, uint64_t a2)
{
  v4 = sub_22FFED9B8(&qword_27DB06368, &qword_230035338);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t AttributionMatchIntent.ReturnType.debugDescription.getter()
{
  v1 = v0;
  sub_2300313E0();
  MEMORY[0x23190F560](0xD00000000000002ELL, 0x800000023003A550);
  if (*v0)
  {
    v2 = 1702195828;
  }

  else
  {
    v2 = 0x65736C6166;
  }

  if (*v0)
  {
    v3 = 0xE400000000000000;
  }

  else
  {
    v3 = 0xE500000000000000;
  }

  MEMORY[0x23190F560](v2, v3);

  MEMORY[0x23190F560](0xD000000000000012, 0x800000023003A580);
  v4 = MEMORY[0x23190F640](*(v0 + 8), MEMORY[0x277D837D0]);
  MEMORY[0x23190F560](v4);

  MEMORY[0x23190F560](0xD000000000000012, 0x800000023003A5A0);
  v5 = *(v0 + 16);
  v6 = type metadata accessor for AttributionMatchedEventProperties();
  v7 = MEMORY[0x23190F640](v5, v6);
  MEMORY[0x23190F560](v7);

  MEMORY[0x23190F560](0xD000000000000014, 0x800000023003A5C0);
  v10 = *(v1 + 24);
  v11 = *(v1 + 32);

  sub_22FFED9B8(&qword_27DB063C0, &qword_230035360);
  v8 = sub_230031170();
  MEMORY[0x23190F560](v8);

  return 0;
}

PromotedContentJetClient::AttributionMatchIntent::ReturnType::CodingKeys_optional __swiftcall AttributionMatchIntent.ReturnType.CodingKeys.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_230031460();

  v5 = 5;
  if (v3 < 5)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

PromotedContentJetClient::AttributionMatchIntent::ReturnType::CodingKeys_optional __swiftcall AttributionMatchIntent.ReturnType.CodingKeys.init(stringValue:)(Swift::String stringValue)
{
  v2 = v1;
  result.value = AttributionMatchIntent.ReturnType.CodingKeys.init(rawValue:)(stringValue).value;
  *v2 = v4;
  return result;
}

uint64_t AttributionMatchIntent.ReturnType.CodingKeys.stringValue.getter()
{
  v1 = *v0;
  v2 = 0x74614D646E756F66;
  v3 = 0x74616469646E6163;
  v4 = 0x6F43746E65746E69;
  if (v1 != 3)
  {
    v4 = 0xD000000000000012;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6972657551766461;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_230009C30()
{
  result = qword_27DB063C8;
  if (!qword_27DB063C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB063C8);
  }

  return result;
}

unint64_t sub_230009C88()
{
  result = qword_27DB063D0;
  if (!qword_27DB063D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB063D0);
  }

  return result;
}

unint64_t sub_230009CE0()
{
  result = qword_27DB063D8;
  if (!qword_27DB063D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB063D8);
  }

  return result;
}

uint64_t sub_230009D34(uint64_t a1)
{
  *(a1 + 8) = sub_230007884(&qword_27DB063E0, type metadata accessor for AttributionMatchIntent);
  result = sub_230007884(&qword_27DB063E8, type metadata accessor for AttributionMatchIntent);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_230009DB8(uint64_t a1)
{
  *(a1 + 8) = sub_230007884(&qword_27DB063F0, type metadata accessor for MatchedEventProperties);
  result = sub_230007884(&qword_27DB06210, type metadata accessor for MatchedEventProperties);
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_230009E4C()
{
  result = qword_27DB063F8;
  if (!qword_27DB063F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB063F8);
  }

  return result;
}

uint64_t sub_230009EA0()
{
  v1 = *v0;
  sub_230031740();
  sub_2300311A0();

  return sub_230031760();
}

uint64_t sub_230009F94()
{
  *v0;
  *v0;
  sub_2300311A0();
}

uint64_t sub_23000A074()
{
  v1 = *v0;
  sub_230031740();
  sub_2300311A0();

  return sub_230031760();
}

void sub_23000A170(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEA00000000006863;
  v4 = 0x74614D646E756F66;
  v5 = 0x74616469646E6163;
  v6 = 0xED0000747865746ELL;
  v7 = 0x6F43746E65746E69;
  if (v2 != 3)
  {
    v7 = 0xD000000000000012;
    v6 = 0x800000023003A180;
  }

  if (v2 == 2)
  {
    v6 = 0xEA00000000007365;
  }

  else
  {
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x6972657551766461;
    v3 = 0xEA00000000007365;
  }

  if (*v1 <= 1u)
  {
    v8 = v4;
  }

  else
  {
    v8 = v5;
  }

  if (*v1 <= 1u)
  {
    v9 = v3;
  }

  else
  {
    v9 = v6;
  }

  *a1 = v8;
  a1[1] = v9;
}

unint64_t sub_23000A224()
{
  result = qword_27DB06400;
  if (!qword_27DB06400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB06400);
  }

  return result;
}

unint64_t sub_23000A27C()
{
  result = qword_27DB06408;
  if (!qword_27DB06408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB06408);
  }

  return result;
}

uint64_t sub_23000A2D0()
{
  v1 = *v0;
  v2 = 0x74614D646E756F66;
  v3 = 0x74616469646E6163;
  v4 = 0x6F43746E65746E69;
  if (v1 != 3)
  {
    v4 = 0xD000000000000012;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6972657551766461;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_23000A3C0(uint64_t a1)
{
  v2 = sub_230009244();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23000A3FC(uint64_t a1)
{
  v2 = sub_230009244();

  return MEMORY[0x2821FE720](a1, v2);
}

void sub_23000A464()
{
  sub_230030E00();
  if (v0 <= 0x3F)
  {
    type metadata accessor for AttributionConfig();
    if (v1 <= 0x3F)
    {
      sub_22FFF0898();
      if (v2 <= 0x3F)
      {
        sub_23000A7B0(319, qword_281494A58, &type metadata for CustomIntentContext, MEMORY[0x277D83D88]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_23000A588()
{
  result = sub_230030E00();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_23000A644()
{
  sub_23000A7B0(319, &qword_27DB06430, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    sub_23000A800(319, &qword_27DB06438, type metadata accessor for AttributionMatchedEventProperties, MEMORY[0x277D83940]);
    if (v1 <= 0x3F)
    {
      sub_23000A7B0(319, qword_281494A58, &type metadata for CustomIntentContext, MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        sub_23000A800(319, &qword_27DB06440, type metadata accessor for AttributionCandidateProperties, MEMORY[0x277D83D88]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_23000A7B0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_23000A800(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for AttributionDownloadType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AttributionDownloadType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_23000A9C8()
{
  result = qword_27DB06448;
  if (!qword_27DB06448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB06448);
  }

  return result;
}

unint64_t sub_23000AA20()
{
  result = qword_27DB06450;
  if (!qword_27DB06450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB06450);
  }

  return result;
}

unint64_t sub_23000AA78()
{
  result = qword_27DB06458;
  if (!qword_27DB06458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB06458);
  }

  return result;
}

uint64_t sub_23000AACC()
{
  v0 = sub_230031460();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

uint64_t String.apJSValue.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = a1;
  a3[1] = a2;
  v4 = type metadata accessor for APJSValue();
  swift_storeEnumTagMultiPayload();
  (*(*(v4 - 8) + 56))(a3, 0, 1, v4);
}

uint64_t sub_23000AC28@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  *a1 = v3;
  a1[1] = v4;
  v5 = type metadata accessor for APJSValue();
  swift_storeEnumTagMultiPayload();
  (*(*(v5 - 8) + 56))(a1, 0, 1, v5);
}

uint64_t NSString.apJSValue.getter@<X0>(uint64_t *a1@<X8>)
{
  *a1 = sub_230031160();
  a1[1] = v2;
  v3 = type metadata accessor for APJSValue();
  swift_storeEnumTagMultiPayload();
  v4 = *(*(v3 - 8) + 56);

  return v4(a1, 0, 1, v3);
}

uint64_t sub_23000AD4C@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  *a1 = sub_230031160();
  a1[1] = v4;
  v5 = type metadata accessor for APJSValue();
  swift_storeEnumTagMultiPayload();
  v6 = *(*(v5 - 8) + 56);

  return v6(a1, 0, 1, v5);
}

uint64_t sub_23000AE50@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = a1(0);
  (*(*(v4 - 8) + 16))(a2, v2, v4);
  v5 = type metadata accessor for APJSValue();
  swift_storeEnumTagMultiPayload();
  v6 = *(*(v5 - 8) + 56);

  return v6(a2, 0, 1, v5);
}

uint64_t sub_23000AF28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  (*(*(a1 - 8) + 16))(a2, v3, a1);
  v5 = type metadata accessor for APJSValue();
  swift_storeEnumTagMultiPayload();
  v6 = *(*(v5 - 8) + 56);

  return v6(a2, 0, 1, v5);
}

uint64_t sub_23000B004@<X0>(void (*a1)(uint64_t)@<X0>, uint64_t a2@<X8>)
{
  v4 = v2;
  a1(v4);
  v6 = type metadata accessor for APJSValue();
  swift_storeEnumTagMultiPayload();
  v7 = *(*(v6 - 8) + 56);

  return v7(a2, 0, 1, v6);
}

uint64_t sub_23000B0BC@<X0>(void (*a1)(void)@<X2>, uint64_t a2@<X8>)
{
  a1(*v2);
  v4 = type metadata accessor for APJSValue();
  swift_storeEnumTagMultiPayload();
  v5 = *(*(v4 - 8) + 56);

  return v5(a2, 0, 1, v4);
}

uint64_t Bool.apJSValue.getter@<X0>(char a1@<W0>, _BYTE *a2@<X8>)
{
  *a2 = a1;
  v3 = type metadata accessor for APJSValue();
  swift_storeEnumTagMultiPayload();
  v4 = *(*(v3 - 8) + 56);

  return v4(a2, 0, 1, v3);
}

uint64_t sub_23000B1D8@<X0>(_BYTE *a1@<X8>)
{
  *a1 = *v1;
  v3 = type metadata accessor for APJSValue();
  swift_storeEnumTagMultiPayload();
  v4 = *(*(v3 - 8) + 56);

  return v4(a1, 0, 1, v3);
}

uint64_t NSNumber.apJSValue.getter@<X0>(_BYTE *a1@<X8>)
{
  [v1 objCType];
  v3 = sub_2300311C0();
  v5 = v4;
  v6 = v3 == 99 && v4 == 0xE100000000000000;
  if (v6 || (v7 = v3, (sub_2300316D0() & 1) != 0))
  {

    *a1 = [v1 charValue];
    v8 = type metadata accessor for APJSValue();
LABEL_7:
    swift_storeEnumTagMultiPayload();
    v9 = *(*(v8 - 8) + 56);
    v10 = a1;
    v11 = 0;
    v12 = v8;
    goto LABEL_8;
  }

  v14 = v7 == 105 && v5 == 0xE100000000000000;
  if (v14 || (sub_2300316D0() & 1) != 0)
  {

    *a1 = [v1 intValue];
    v8 = type metadata accessor for APJSValue();
    goto LABEL_7;
  }

  if (v7 == 73 && v5 == 0xE100000000000000 || (sub_2300316D0() & 1) != 0)
  {

    *a1 = [v1 unsignedIntValue];
    v8 = type metadata accessor for APJSValue();
    goto LABEL_7;
  }

  if (v7 == 113 && v5 == 0xE100000000000000 || (sub_2300316D0() & 1) != 0)
  {

    *a1 = [v1 longLongValue];
    v8 = type metadata accessor for APJSValue();
    goto LABEL_7;
  }

  if (v7 == 81 && v5 == 0xE100000000000000 || (sub_2300316D0() & 1) != 0)
  {

    *a1 = [v1 unsignedLongLongValue];
    v8 = type metadata accessor for APJSValue();
    goto LABEL_7;
  }

  if (v7 == 100 && v5 == 0xE100000000000000 || (sub_2300316D0() & 1) != 0 || v7 == 102 && v5 == 0xE100000000000000 || (sub_2300316D0() & 1) != 0)
  {

    [v1 doubleValue];
    *a1 = v15;
    v8 = type metadata accessor for APJSValue();
    goto LABEL_7;
  }

  if (v7 == 66 && v5 == 0xE100000000000000)
  {

LABEL_40:
    *a1 = [v1 BOOLValue];
    v8 = type metadata accessor for APJSValue();
    goto LABEL_7;
  }

  v16 = sub_2300316D0();

  if (v16)
  {
    goto LABEL_40;
  }

  v17 = type metadata accessor for APJSValue();
  v9 = *(*(v17 - 8) + 56);
  v12 = v17;
  v10 = a1;
  v11 = 1;
LABEL_8:

  return v9(v10, v11, 1, v12);
}

uint64_t UInt16.apJSValue.getter@<X0>(unsigned __int16 a1@<W0>, _DWORD *a2@<X8>)
{
  *a2 = a1;
  v3 = type metadata accessor for APJSValue();
  swift_storeEnumTagMultiPayload();
  v4 = *(*(v3 - 8) + 56);

  return v4(a2, 0, 1, v3);
}

uint64_t sub_23000B708@<X0>(_DWORD *a1@<X8>)
{
  *a1 = *v1;
  v3 = type metadata accessor for APJSValue();
  swift_storeEnumTagMultiPayload();
  v4 = *(*(v3 - 8) + 56);

  return v4(a1, 0, 1, v3);
}

uint64_t sub_23000B798@<X0>(int a1@<W0>, _DWORD *a2@<X8>)
{
  *a2 = a1;
  v3 = type metadata accessor for APJSValue();
  swift_storeEnumTagMultiPayload();
  v4 = *(*(v3 - 8) + 56);

  return v4(a2, 0, 1, v3);
}

uint64_t sub_23000B830@<X0>(_DWORD *a1@<X8>)
{
  *a1 = *v1;
  v3 = type metadata accessor for APJSValue();
  swift_storeEnumTagMultiPayload();
  v4 = *(*(v3 - 8) + 56);

  return v4(a1, 0, 1, v3);
}

uint64_t sub_23000B8C4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = a1;
  v3 = type metadata accessor for APJSValue();
  swift_storeEnumTagMultiPayload();
  v4 = *(*(v3 - 8) + 56);

  return v4(a2, 0, 1, v3);
}

uint64_t sub_23000B954@<X0>(void *a1@<X8>)
{
  *a1 = *v1;
  v3 = type metadata accessor for APJSValue();
  swift_storeEnumTagMultiPayload();
  v4 = *(*(v3 - 8) + 56);

  return v4(a1, 0, 1, v3);
}

uint64_t Double.apJSValue.getter@<X0>(double *a1@<X8>, double a2@<D0>)
{
  *a1 = a2;
  v3 = type metadata accessor for APJSValue();
  swift_storeEnumTagMultiPayload();
  v4 = *(*(v3 - 8) + 56);

  return v4(a1, 0, 1, v3);
}

uint64_t sub_23000BA6C@<X0>(void *a1@<X8>)
{
  *a1 = *v1;
  v3 = type metadata accessor for APJSValue();
  swift_storeEnumTagMultiPayload();
  v4 = *(*(v3 - 8) + 56);

  return v4(a1, 0, 1, v3);
}

uint64_t Float.apJSValue.getter@<X0>(double *a1@<X8>, float a2@<S0>)
{
  *a1 = a2;
  v3 = type metadata accessor for APJSValue();
  swift_storeEnumTagMultiPayload();
  v4 = *(*(v3 - 8) + 56);

  return v4(a1, 0, 1, v3);
}

uint64_t sub_23000BB7C@<X0>(double *a1@<X8>)
{
  *a1 = *v1;
  v3 = type metadata accessor for APJSValue();
  swift_storeEnumTagMultiPayload();
  v4 = *(*(v3 - 8) + 56);

  return v4(a1, 0, 1, v3);
}

uint64_t Array.apJSValue.getter@<X0>(uint64_t *a1@<X8>)
{
  sub_2300312A0();
  v2 = type metadata accessor for APJSValue();
  swift_getWitnessTable();
  *a1 = sub_230031240();
  swift_storeEnumTagMultiPayload();
  return (*(*(v2 - 8) + 56))(a1, 0, 1, v2);
}

uint64_t sub_23000BCF0@<X0>(uint64_t *a1@<X8>, uint64_t a2@<X0>)
{
  v3 = *v2;
  v4 = *(a2 + 16);
  return Array.apJSValue.getter(a1);
}

uint64_t Dictionary<>.apJSValue.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for APJSValue();
  *a1 = sub_230031120();
  swift_storeEnumTagMultiPayload();
  return (*(*(v2 - 8) + 56))(a1, 0, 1, v2);
}

uint64_t sub_23000BDD8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *(*(a2 - 8) + 64);
  MEMORY[0x28223BE20](a1);
  (*(v6 + 16))(v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_22FFED9B8(&qword_27DB06460, &qword_230035B28);
  if (swift_dynamicCast())
  {
    sub_23000C014(v11, v13);
    v7 = v14;
    v8 = v15;
    sub_22FFEDA4C(v13, v14);
    (*(v8 + 8))(v7, v8);
    return sub_22FFEE60C(v13);
  }

  else
  {
    v12 = 0;
    memset(v11, 0, sizeof(v11));
    sub_23000BFAC(v11);
    v10 = type metadata accessor for APJSValue();
    return (*(*(v10 - 8) + 56))(a3, 1, 1, v10);
  }
}

uint64_t sub_23000BF88@<X0>(uint64_t *a1@<X8>, uint64_t a2@<X0>)
{
  v3 = *v2;
  v4 = *(a2 + 24);
  return Dictionary<>.apJSValue.getter(a1);
}

uint64_t sub_23000BFAC(uint64_t a1)
{
  v2 = sub_22FFED9B8(&qword_27DB06468, &qword_230035B30);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23000C014(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t JetServiceRequesting.dispatch<A>(message:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[7] = a6;
  v7[8] = v6;
  v7[5] = a4;
  v7[6] = a5;
  v7[3] = a2;
  v7[4] = a3;
  v7[2] = a1;
  return MEMORY[0x2822009F8](sub_23000C080, 0, 0);
}

uint64_t sub_23000C080()
{
  v19 = v0[6];
  v1 = type metadata accessor for XPCIntentMessage.Builder(0);
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  v4 = swift_allocObject();
  v0[9] = v4;
  v5 = OBJC_IVAR____TtCV24PromotedContentJetClient16XPCIntentMessage7Builder_message;
  v6 = type metadata accessor for IntentMessage();
  (*(*(v6 - 8) + 56))(v4 + v5, 1, 1, v6);
  *(v4 + OBJC_IVAR____TtCV24PromotedContentJetClient16XPCIntentMessage7Builder_dependencyProvider) = 0;
  sub_230030F70();
  v7 = *(v19 + 8);
  v18 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  v0[10] = v9;
  *v9 = v0;
  v9[1] = sub_23000C234;
  v10 = v0[7];
  v11 = v0[8];
  v12 = v0[5];
  v13 = v0[6];
  v14 = v0[3];
  v15 = v0[4];
  v16 = v0[2];

  return v18(v16, v14, v4, v12, v10, v15, v13);
}

uint64_t sub_23000C234()
{
  v2 = *(*v1 + 80);
  v3 = *v1;
  v3[11] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_23000C370, 0, 0);
  }

  else
  {
    v4 = v3[9];

    v5 = v3[1];

    return v5();
  }
}

uint64_t sub_23000C370()
{
  v1 = v0[9];

  v2 = v0[1];
  v3 = v0[11];

  return v2();
}

uint64_t JetServiceRequester.__allocating_init(enabledFeatureFlags:signpostProvider:)(uint64_t a1, uint64_t a2)
{
  result = swift_allocObject();
  *(result + 16) = a2;
  *(result + 24) = a1;
  return result;
}

uint64_t JetServiceRequester.init(enabledFeatureFlags:signpostProvider:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a2;
  *(v2 + 24) = a1;
  return v2;
}

uint64_t sub_23000C420(uint64_t a1, uint64_t a2)
{
  v3[11] = a2;
  v3[12] = v2;
  v3[10] = a1;
  v4 = *(*(type metadata accessor for JetServiceResponse.Container(0) - 8) + 64) + 15;
  v3[13] = swift_task_alloc();
  v5 = sub_230030F50();
  v3[14] = v5;
  v6 = *(v5 - 8);
  v3[15] = v6;
  v7 = *(v6 + 64) + 15;
  v3[16] = swift_task_alloc();
  v8 = sub_230030F30();
  v3[17] = v8;
  v9 = *(v8 - 8);
  v3[18] = v9;
  v10 = *(v9 + 64) + 15;
  v3[19] = swift_task_alloc();
  v11 = *(*(sub_22FFED9B8(&qword_27DB06470, &qword_230035B50) - 8) + 64) + 15;
  v3[20] = swift_task_alloc();
  v12 = type metadata accessor for XPCIntentMessage(0);
  v3[21] = v12;
  v13 = *(*(v12 - 8) + 64) + 15;
  v3[22] = swift_task_alloc();
  v14 = *(*(sub_230031070() - 8) + 64) + 15;
  v3[23] = swift_task_alloc();
  v15 = type metadata accessor for IntentMessage();
  v3[24] = v15;
  v16 = *(v15 - 8);
  v3[25] = v16;
  v17 = *(v16 + 64) + 15;
  v3[26] = swift_task_alloc();
  v3[27] = swift_task_alloc();
  v18 = sub_230030FB0();
  v3[28] = v18;
  v19 = *(v18 - 8);
  v3[29] = v19;
  v20 = *(v19 + 64) + 15;
  v3[30] = swift_task_alloc();
  v21 = sub_230030F80();
  v3[31] = v21;
  v22 = *(v21 - 8);
  v3[32] = v22;
  v23 = *(v22 + 64) + 15;
  v3[33] = swift_task_alloc();
  v3[34] = swift_task_alloc();
  v3[35] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23000C738, 0, 0);
}

uint64_t sub_23000C738()
{
  v78 = v0;
  v2 = v0[34];
  v1 = v0[35];
  v3 = v0[31];
  v4 = v0[32];
  v5 = v0[30];
  v6 = v0[27];
  v7 = v0[10];
  v8 = *(v0[12] + 16);
  sub_230030EE0();
  sub_230030EF0();
  v75 = *(v4 + 16);
  v75(v2, v1, v3);
  sub_23000E33C();
  sub_23000D428();
  sub_23000E390(v9);
  sub_23000E540(v7, v6, type metadata accessor for IntentMessage);
  sub_23000E3A0();
  sub_23000D428();
  sub_23000E390(v10);
  v11 = sub_230030FA0();
  v12 = sub_230031350();
  v13 = sub_230031360();
  v14 = v0[34];
  v16 = v0[31];
  v15 = v0[32];
  v17 = v0[27];
  v76 = v0;
  if (v13)
  {
    v18 = v0[26];
    v19 = v0[24];
    v73 = v12;
    v20 = swift_slowAlloc();
    *v20 = 134349312;
    *(v20 + 4) = sub_230030F60();
    v21 = *(v15 + 8);
    v21(v14, v16);
    *(v20 + 12) = 2050;
    sub_23000E540(v17, v18, type metadata accessor for IntentMessage);
    v0 = v76;
    v22 = qword_230035C00[swift_getEnumCaseMultiPayload()];
    v23 = v76[35];
    v24 = v76[27];
    sub_23000E5FC(v76[26], type metadata accessor for IntentMessage);
    *(v20 + 14) = v22;
    sub_23000E5FC(v24, type metadata accessor for IntentMessage);
    v25 = sub_230030F60();
    _os_signpost_emit_with_name_impl(&dword_22FFE9000, v11, v73, v25, "Dispatch", "id=%{name=id,public}llu type=%{name=type,public}ld", v20, 0x16u);
    MEMORY[0x23190FFD0](v20, -1, -1);
  }

  else
  {

    sub_23000E5FC(v17, type metadata accessor for IntentMessage);
    v21 = *(v15 + 8);
    v21(v14, v16);
  }

  v0[36] = v21;
  v26 = v0[30];
  v28 = v0[28];
  v27 = v0[29];
  v75(v0[33], v0[35], v0[31]);
  v29 = sub_230031000();
  v30 = *(v29 + 48);
  v31 = *(v29 + 52);
  swift_allocObject();
  v0[37] = sub_230030FF0();
  (*(v27 + 8))(v26, v28);
  if (qword_281493F58 != -1)
  {
    swift_once();
  }

  v32 = sub_230031040();
  sub_2300006BC(v32, qword_281498840);
  v33 = sub_230031020();
  v34 = sub_230031300();
  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v77 = v36;
    *v35 = 136315138;
    *(v35 + 4) = sub_23000DE08(0xD000000000000026, 0x800000023003A5E0, &v77);
    _os_log_impl(&dword_22FFE9000, v33, v34, "Dispatching request to %s...", v35, 0xCu);
    sub_22FFEE60C(v36);
    MEMORY[0x23190FFD0](v36, -1, -1);
    MEMORY[0x23190FFD0](v35, -1, -1);
  }

  sub_2300312D0();
  v37 = v0[23];
  sub_2300310A0();
  sub_230031060();
  v0[38] = sub_230031050();
  v38 = *(v0[12] + 24);
  v39 = *(v38 + 16);
  v40 = MEMORY[0x277D84F90];
  if (v39)
  {
    v41 = v0[18];
    v42 = v0[15];
    v77 = MEMORY[0x277D84F90];
    sub_23000E3F4(0, v39, 0);
    v40 = v77;
    v43 = *(v41 + 16);
    v41 += 16;
    v44 = v38 + ((*(v41 + 64) + 32) & ~*(v41 + 64));
    v72 = *(v41 + 56);
    v74 = v43;
    v70 = (v41 - 8);
    v71 = (v42 + 8);
    do
    {
      v45 = v0[19];
      v46 = v0[16];
      v47 = v0[17];
      v48 = v0[14];
      v74(v45, v44, v47);
      sub_230030F20();
      v49 = sub_230030F40();
      v51 = v50;
      (*v71)(v46, v48);
      (*v70)(v45, v47);
      v77 = v40;
      v53 = *(v40 + 16);
      v52 = *(v40 + 24);
      if (v53 >= v52 >> 1)
      {
        sub_23000E3F4((v52 > 1), v53 + 1, 1);
        v40 = v77;
      }

      *(v40 + 16) = v53 + 1;
      v54 = v40 + 16 * v53;
      *(v54 + 32) = v49;
      *(v54 + 40) = v51;
      v44 += v72;
      --v39;
      v0 = v76;
    }

    while (v39);
  }

  v56 = v0[24];
  v55 = v0[25];
  v57 = v0[22];
  v58 = v0[20];
  v59 = v0[11];
  sub_23000E540(v0[10], v58, type metadata accessor for IntentMessage);
  (*(v55 + 56))(v58, 0, 1, v56);
  v60 = OBJC_IVAR____TtCV24PromotedContentJetClient16XPCIntentMessage7Builder_message;
  swift_beginAccess();
  sub_23000E414(v58, v59 + v60);
  swift_endAccess();
  v61 = *(v59 + OBJC_IVAR____TtCV24PromotedContentJetClient16XPCIntentMessage7Builder_dependencyProvider);
  *(v59 + OBJC_IVAR____TtCV24PromotedContentJetClient16XPCIntentMessage7Builder_dependencyProvider) = v40;

  sub_2300196EC(v57);
  v62 = sub_230031020();
  v63 = sub_230031300();
  if (os_log_type_enabled(v62, v63))
  {
    v64 = swift_slowAlloc();
    *v64 = 0;
    _os_log_impl(&dword_22FFE9000, v62, v63, "Created XPCService. Sending message...", v64, 2u);
    MEMORY[0x23190FFD0](v64, -1, -1);
  }

  sub_2300312D0();
  v65 = v0[22];
  v0[5] = v0[21];
  v0[6] = sub_23000E484();
  v66 = sub_23000E4DC(v0 + 2);
  sub_23000E540(v65, v66, type metadata accessor for XPCIntentMessage);
  v67 = swift_task_alloc();
  v0[39] = v67;
  *v67 = v0;
  v67[1] = sub_23000CFF0;
  v68 = v0[13];

  return sub_230001940(v68, (v0 + 2));
}

uint64_t sub_23000CFF0()
{
  v2 = *v1;
  v3 = *(*v1 + 312);
  v6 = *v1;
  *(*v1 + 320) = v0;

  if (v0)
  {
    v4 = sub_23000D2B4;
  }

  else
  {
    sub_22FFEE60C((v2 + 16));
    v4 = sub_23000D10C;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_23000D10C()
{
  v2 = v0[37];
  v1 = v0[38];
  v3 = v0[35];
  v12 = v0[36];
  v13 = v0[34];
  v4 = v0[32];
  v11 = v0[31];
  v14 = v0[33];
  v15 = v0[30];
  v16 = v0[27];
  v17 = v0[26];
  v18 = v0[23];
  v19 = v0[20];
  v20 = v0[19];
  v21 = v0[16];
  v6 = v0[12];
  v5 = v0[13];
  sub_23000E5FC(v0[22], type metadata accessor for XPCIntentMessage);
  v7 = *v5;
  v8 = v5[1];
  sub_23000E5A8(*v5, v8);
  sub_23000E5FC(v5, type metadata accessor for JetServiceResponse.Container);
  sub_23000D790();

  sub_23000D498(v6);

  v12(v3, v11);

  v9 = v0[1];

  return v9(v7, v8);
}

uint64_t sub_23000D2B4()
{
  v1 = *(v0 + 296);
  v2 = *(v0 + 304);
  v3 = *(v0 + 96);
  sub_23000E5FC(*(v0 + 176), type metadata accessor for XPCIntentMessage);
  sub_22FFEE60C((v0 + 16));
  sub_23000D790();

  sub_23000D498(v3);

  v5 = *(v0 + 264);
  v4 = *(v0 + 272);
  v6 = *(v0 + 240);
  v8 = *(v0 + 208);
  v7 = *(v0 + 216);
  v10 = *(v0 + 176);
  v9 = *(v0 + 184);
  v11 = *(v0 + 160);
  v16 = *(v0 + 152);
  v17 = *(v0 + 128);
  v12 = *(v0 + 104);
  v18 = *(v0 + 320);
  v13 = (*(v0 + 256) + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  (*(v0 + 288))(*(v0 + 280), *(v0 + 248));

  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_23000D498(uint64_t a1)
{
  v2 = sub_230030FC0();
  v24 = *(v2 - 8);
  v3 = *(v24 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v22[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v25 = sub_230030F80();
  v6 = *(v25 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v25);
  v9 = &v22[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_230030FB0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v22[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = *(a1 + 16);
  sub_230030EF0();
  v16 = sub_230030FA0();
  sub_230030FE0();
  v23 = sub_230031340();
  if (sub_230031360())
  {

    sub_230031010();

    v17 = v24;
    if ((*(v24 + 88))(v5, v2) == *MEMORY[0x277D85B00])
    {
      v18 = "[Error] Interval already ended";
    }

    else
    {
      (*(v17 + 8))(v5, v2);
      v18 = "";
    }

    v19 = swift_slowAlloc();
    *v19 = 0;
    v20 = sub_230030F60();
    _os_signpost_emit_with_name_impl(&dword_22FFE9000, v16, v23, v20, "Dispatch", v18, v19, 2u);
    MEMORY[0x23190FFD0](v19, -1, -1);
  }

  (*(v6 + 8))(v9, v25);
  return (*(v11 + 8))(v14, v10);
}

uint64_t sub_23000D790()
{
  if (qword_281493F58 != -1)
  {
    swift_once();
  }

  v0 = sub_230031040();
  sub_2300006BC(v0, qword_281498840);
  v1 = sub_230031020();
  v2 = sub_230031310();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v6 = v4;
    *v3 = 136315138;
    *(v3 + 4) = sub_23000DE08(0xD000000000000026, 0x800000023003A5E0, &v6);
    _os_log_impl(&dword_22FFE9000, v1, v2, "Cleaning up %s", v3, 0xCu);
    sub_22FFEE60C(v4);
    MEMORY[0x23190FFD0](v4, -1, -1);
    MEMORY[0x23190FFD0](v3, -1, -1);
  }

  return sub_230031090();
}

uint64_t sub_23000D8F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a1;
  v8 = swift_task_alloc();
  v5[5] = v8;
  *v8 = v5;
  v8[1] = sub_23000D9A0;

  return sub_23000C420(a2, a3);
}

uint64_t sub_23000D9A0(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 40);
  v8 = *v3;
  *(*v3 + 48) = v2;

  if (v2)
  {
    v9 = *(v8 + 8);

    return v9();
  }

  else
  {
    *(v6 + 56) = a2;
    *(v6 + 64) = a1;

    return MEMORY[0x2822009F8](sub_23000DB00, 0, 0);
  }
}

uint64_t sub_23000DB00()
{
  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[6];
  v5 = v0[3];
  v4 = v0[4];
  v6 = v0[2];
  v7 = sub_230030D30();
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  swift_allocObject();
  sub_230030D20();
  sub_230030D10();

  sub_22FFEDBF0(v1, v2);
  v10 = v0[1];

  return v10();
}

uint64_t JetServiceRequester.deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return v0;
}

uint64_t JetServiceRequester.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

uint64_t sub_23000DC48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = *v5;
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_23000DD14;

  return sub_23000D8F4(a1, a2, a3, a4, a5);
}

uint64_t sub_23000DD14()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_23000DE08(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_23000DED4(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_23000EB90(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_22FFEE60C(v11);
  return v7;
}

unint64_t sub_23000DED4(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_23000DFE0(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_230031410();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t sub_23000DFE0(uint64_t a1, unint64_t a2)
{
  v4 = sub_23000E02C(a1, a2);
  sub_23000E15C(&unk_2844E0738);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_23000E02C(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = sub_2300136E4(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_230031410();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_2300311D0();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_2300136E4(v10, 0);
        result = sub_2300313D0();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_23000E15C(uint64_t result)
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
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_23000E248(result, v12, 1, v3);
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
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

char *sub_23000E248(char *result, int64_t a2, char a3, char *a4)
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
    sub_22FFED9B8(&qword_27DB06478, &qword_230035BE8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

unint64_t sub_23000E33C()
{
  result = qword_281493E80;
  if (!qword_281493E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281493E80);
  }

  return result;
}

uint64_t sub_23000E390(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

unint64_t sub_23000E3A0()
{
  result = qword_281493EA8[0];
  if (!qword_281493EA8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_281493EA8);
  }

  return result;
}

char *sub_23000E3F4(char *a1, int64_t a2, char a3)
{
  result = sub_23000EBF0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_23000E414(uint64_t a1, uint64_t a2)
{
  v4 = sub_22FFED9B8(&qword_27DB06470, &qword_230035B50);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_23000E484()
{
  result = qword_281493FC0;
  if (!qword_281493FC0)
  {
    type metadata accessor for XPCIntentMessage(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281493FC0);
  }

  return result;
}

uint64_t *sub_23000E4DC(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_23000E540(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_23000E5A8(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_23000E5FC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t dispatch thunk of JetServiceRequesting.dispatch<A>(message:options:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = *(a7 + 8);
  v19 = (v15 + *v15);
  v16 = v15[1];
  v17 = swift_task_alloc();
  *(v7 + 16) = v17;
  *v17 = v7;
  v17[1] = sub_23000ECFC;

  return v19(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t dispatch thunk of JetServiceRequester.dispatchRaw(message:options:)(uint64_t a1, uint64_t a2)
{
  v6 = *(*v2 + 104);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_23000E930;

  return v10(a1, a2);
}

uint64_t sub_23000E930(uint64_t a1, uint64_t a2)
{
  v5 = *(*v2 + 16);
  v8 = *v2;

  v6 = *(v8 + 8);

  return v6(a1, a2);
}

uint64_t dispatch thunk of JetServiceRequester.dispatch<A>(message:options:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = *(*v5 + 112);
  v16 = (v12 + *v12);
  v13 = v12[1];
  v14 = swift_task_alloc();
  *(v6 + 16) = v14;
  *v14 = v6;
  v14[1] = sub_23000DD14;

  return v16(a1, a2, a3, a4, a5);
}

uint64_t sub_23000EB90(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

char *sub_23000EBF0(char *result, int64_t a2, char a3, char *a4)
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
    sub_22FFED9B8(&qword_27DB06480, &unk_230035BF0);
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
    v10 = MEMORY[0x277D84F90];
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

uint64_t sub_23000ED00()
{
  if (*v0)
  {
    result = 0x726F727265;
  }

  else
  {
    result = 0x73736563637573;
  }

  *v0;
  return result;
}

uint64_t sub_23000ED38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x73736563637573 && a2 == 0xE700000000000000;
  if (v6 || (sub_2300316D0() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x726F727265 && a2 == 0xE500000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_2300316D0();

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

uint64_t sub_23000EE10(uint64_t a1)
{
  v2 = sub_23000F474();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23000EE4C(uint64_t a1)
{
  v2 = sub_23000F474();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23000EE88(uint64_t a1)
{
  v2 = sub_23000F4C8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23000EEC4(uint64_t a1)
{
  v2 = sub_23000F4C8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23000EF00(uint64_t a1)
{
  v2 = sub_23000F5BC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23000EF3C(uint64_t a1)
{
  v2 = sub_23000F5BC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t JetServiceResponse.encode(to:)(void *a1)
{
  v2 = sub_22FFED9B8(&qword_27DB06488, &qword_230035C40);
  v38 = *(v2 - 8);
  v39 = v2;
  v3 = *(v38 + 64);
  MEMORY[0x28223BE20](v2);
  v37 = &v32[-v4];
  v5 = sub_22FFED9B8(&qword_27DB06490, &qword_230035C48);
  v35 = *(v5 - 8);
  v36 = v5;
  v6 = *(v35 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v32[-v7];
  v34 = type metadata accessor for JetServiceResponse.Container(0);
  v9 = *(*(v34 - 8) + 64);
  MEMORY[0x28223BE20](v34);
  v11 = &v32[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = type metadata accessor for JetServiceResponse(0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v32[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v41 = sub_22FFED9B8(&qword_27DB06498, &qword_230035C50);
  v16 = *(v41 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v41);
  v19 = &v32[-v18];
  v20 = a1[4];
  sub_22FFEDA4C(a1, a1[3]);
  sub_23000F474();
  sub_230031780();
  sub_23000FED4(v40, v15, type metadata accessor for JetServiceResponse);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v22 = *(v15 + 1);
    v40 = *v15;
    v21 = v40;
    v23 = *(v15 + 3);
    v34 = *(v15 + 2);
    v35 = v22;
    v36 = *(v15 + 4);
    v24 = v36;
    v33 = v15[40];
    LOBYTE(v42) = 1;
    sub_23000F4C8();
    v25 = v37;
    v26 = v41;
    sub_2300315A0();
    v42 = v21;
    v43 = v22;
    v27 = v34;
    v44 = v34;
    v45 = v23;
    v46 = v24;
    LOBYTE(v24) = v33;
    v47 = v33;
    sub_23000F51C();
    v28 = v39;
    sub_230031640();
    (*(v38 + 8))(v25, v28);
    (*(v16 + 8))(v19, v26);
    return sub_23000F570(v40, v35, v27, v23, v36, v24);
  }

  else
  {
    sub_23000FD74(v15, v11, type metadata accessor for JetServiceResponse.Container);
    LOBYTE(v42) = 0;
    sub_23000F5BC();
    v30 = v41;
    sub_2300315A0();
    sub_23000FDDC(&qword_281494248, type metadata accessor for JetServiceResponse.Container);
    v31 = v36;
    sub_230031640();
    (*(v35 + 8))(v8, v31);
    sub_2300100E0(v11, type metadata accessor for JetServiceResponse.Container);
    return (*(v16 + 8))(v19, v30);
  }
}

unint64_t sub_23000F474()
{
  result = qword_2814953C0;
  if (!qword_2814953C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814953C0);
  }

  return result;
}

unint64_t sub_23000F4C8()
{
  result = qword_27DB064A0;
  if (!qword_27DB064A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB064A0);
  }

  return result;
}

unint64_t sub_23000F51C()
{
  result = qword_27DB064A8;
  if (!qword_27DB064A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB064A8);
  }

  return result;
}

uint64_t sub_23000F570(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned __int8 a6)
{
  if (a6 <= 1u)
  {
  }

  return result;
}

unint64_t sub_23000F5BC()
{
  result = qword_281495398;
  if (!qword_281495398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281495398);
  }

  return result;
}

uint64_t JetServiceResponse.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v59 = a2;
  v53 = sub_22FFED9B8(&qword_27DB064B0, &qword_230035C58);
  v55 = *(v53 - 8);
  v3 = *(v55 + 64);
  MEMORY[0x28223BE20](v53);
  v58 = &v50 - v4;
  v56 = sub_22FFED9B8(&qword_27DB064B8, &qword_230035C60);
  v54 = *(v56 - 8);
  v5 = *(v54 + 64);
  MEMORY[0x28223BE20](v56);
  v57 = &v50 - v6;
  v7 = sub_22FFED9B8(&qword_27DB064C0, &unk_230035C68);
  v60 = *(v7 - 8);
  v8 = *(v60 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v50 - v9;
  v11 = type metadata accessor for JetServiceResponse(0);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v50 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v50 - v17;
  MEMORY[0x28223BE20](v16);
  v20 = &v50 - v19;
  v22 = a1[3];
  v21 = a1[4];
  v70 = a1;
  sub_22FFEDA4C(a1, v22);
  sub_23000F474();
  v23 = v61;
  sub_230031770();
  if (v23)
  {
    return sub_22FFEE60C(v70);
  }

  v52 = v18;
  v50 = v15;
  v25 = v57;
  v24 = v58;
  v61 = 0;
  v51 = v20;
  v26 = v59;
  v27 = sub_230031580();
  v28 = (2 * *(v27 + 16)) | 1;
  v66 = v27;
  v67 = v27 + 32;
  v68 = 0;
  v69 = v28;
  v29 = sub_22FFEE7F8();
  v30 = v10;
  if (v29 == 2 || v68 != v69 >> 1)
  {
    v33 = sub_230031400();
    swift_allocError();
    v35 = v34;
    v36 = *(sub_22FFED9B8(&qword_27DB05B98, &qword_230032EB0) + 48);
    *v35 = v11;
    sub_230031480();
    sub_2300313F0();
    (*(*(v33 - 8) + 104))(v35, *MEMORY[0x277D84160], v33);
    swift_willThrow();
    (*(v60 + 8))(v10, v7);
    swift_unknownObjectRelease();
    return sub_22FFEE60C(v70);
  }

  if (v29)
  {
    LOBYTE(v62) = 1;
    sub_23000F4C8();
    v31 = v24;
    v32 = v61;
    sub_230031470();
    if (v32)
    {
LABEL_6:
      (*(v60 + 8))(v30, v7);
      swift_unknownObjectRelease();
      return sub_22FFEE60C(v70);
    }

    v39 = v26;
    sub_23000FD20();
    v40 = v53;
    sub_230031520();
    (*(v55 + 8))(v31, v40);
    (*(v60 + 8))(v30, v7);
    swift_unknownObjectRelease();
    v41 = v64;
    v42 = v65;
    v43 = v63;
    v44 = v50;
    *v50 = v62;
    v44[1] = v43;
    *(v44 + 4) = v41;
    *(v44 + 40) = v42;
    swift_storeEnumTagMultiPayload();
    v45 = v44;
  }

  else
  {
    LOBYTE(v62) = 0;
    sub_23000F5BC();
    v38 = v61;
    sub_230031470();
    if (v38)
    {
      goto LABEL_6;
    }

    v39 = v26;
    v61 = v7;
    type metadata accessor for JetServiceResponse.Container(0);
    sub_23000FDDC(&qword_281494240, type metadata accessor for JetServiceResponse.Container);
    v46 = v52;
    v47 = v56;
    sub_230031520();
    v48 = v60;
    (*(v54 + 8))(v25, v47);
    (*(v48 + 8))(v10, v61);
    swift_unknownObjectRelease();
    swift_storeEnumTagMultiPayload();
    v45 = v46;
  }

  v49 = v51;
  sub_23000FD74(v45, v51, type metadata accessor for JetServiceResponse);
  sub_23000FD74(v49, v39, type metadata accessor for JetServiceResponse);
  return sub_22FFEE60C(v70);
}

unint64_t sub_23000FD20()
{
  result = qword_27DB064C8;
  if (!qword_27DB064C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB064C8);
  }

  return result;
}

uint64_t sub_23000FD74(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_23000FDDC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t JetServiceResponse.Container.intentReturn.getter()
{
  v1 = *v0;
  sub_23000E5A8(*v0, *(v0 + 8));
  return v1;
}

uint64_t sub_23000FED4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t JetServiceResponse.Container.init(_:metadata:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v20 = a2;
  v19 = a3;
  v5 = type metadata accessor for JetServiceResponse.Container(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v8 = (&v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = a1[5];
  sub_22FFEDA4C(a1, a1[3]);
  v10 = sub_230030D60();
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  swift_allocObject();
  sub_230030D50();
  v13 = sub_230030D40();
  if (v3)
  {
    sub_2300100E0(v20, type metadata accessor for JetServiceResponse.Metadata);
  }

  else
  {
    v15 = v13;
    v16 = v14;

    *v8 = v15;
    v8[1] = v16;
    sub_23000FD74(v20, v8 + *(v5 + 20), type metadata accessor for JetServiceResponse.Metadata);
    sub_23000FD74(v8, v19, type metadata accessor for JetServiceResponse.Container);
  }

  return sub_22FFEE60C(a1);
}

uint64_t sub_2300100E0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_230010140()
{
  if (*v0)
  {
    result = 0x617461646174656DLL;
  }

  else
  {
    result = 0x6552746E65746E69;
  }

  *v0;
  return result;
}

uint64_t sub_230010184@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6552746E65746E69 && a2 == 0xEC0000006E727574;
  if (v6 || (sub_2300316D0() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x617461646174656DLL && a2 == 0xE800000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_2300316D0();

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

uint64_t sub_230010264(uint64_t a1)
{
  v2 = sub_2300104B8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2300102A0(uint64_t a1)
{
  v2 = sub_2300104B8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t JetServiceResponse.Container.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_22FFED9B8(&qword_27DB064D0, &qword_230035C78);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v14[-v8];
  v10 = a1[4];
  sub_22FFEDA4C(a1, a1[3]);
  sub_2300104B8();
  sub_230031780();
  v11 = v3[1];
  v15 = *v3;
  v16 = v11;
  v14[15] = 0;
  sub_23000E5A8(v15, v11);
  sub_22FFEDC44();
  sub_230031640();
  sub_22FFEDBF0(v15, v16);
  if (!v2)
  {
    v12 = *(type metadata accessor for JetServiceResponse.Container(0) + 20);
    LOBYTE(v15) = 1;
    type metadata accessor for JetServiceResponse.Metadata(0);
    sub_23000FDDC(&qword_281494258, type metadata accessor for JetServiceResponse.Metadata);
    sub_230031640();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_2300104B8()
{
  result = qword_2814952D8[0];
  if (!qword_2814952D8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2814952D8);
  }

  return result;
}

uint64_t JetServiceResponse.Container.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a2;
  v23 = type metadata accessor for JetServiceResponse.Metadata(0);
  v4 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_22FFED9B8(&qword_27DB064D8, &qword_230035C80);
  v22 = *(v24 - 8);
  v7 = *(v22 + 64);
  MEMORY[0x28223BE20](v24);
  v9 = &v19 - v8;
  v10 = type metadata accessor for JetServiceResponse.Container(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a1[4];
  sub_22FFEDA4C(a1, a1[3]);
  sub_2300104B8();
  sub_230031770();
  if (v2)
  {
    return sub_22FFEE60C(a1);
  }

  v20 = v10;
  v15 = v22;
  v16 = v13;
  v26 = 0;
  sub_22FFEE700();
  v17 = v24;
  sub_230031520();
  *v16 = v25;
  LOBYTE(v25) = 1;
  sub_23000FDDC(&qword_281494250, type metadata accessor for JetServiceResponse.Metadata);
  sub_230031520();
  (*(v15 + 8))(v9, v17);
  sub_23000FD74(v6, v16 + *(v20 + 20), type metadata accessor for JetServiceResponse.Metadata);
  sub_23000FED4(v16, v21, type metadata accessor for JetServiceResponse.Container);
  sub_22FFEE60C(a1);
  return sub_2300100E0(v16, type metadata accessor for JetServiceResponse.Container);
}

uint64_t JetServiceResponse.Metadata.runningVersion.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for JetServiceResponse.Metadata(0) + 20);

  return sub_2300108AC(v3, a1);
}

uint64_t sub_2300108AC(uint64_t a1, uint64_t a2)
{
  v4 = sub_22FFED9B8(&qword_27DB064E0, &qword_230035C88);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t JetServiceResponse.Metadata.init(scheduleCacheTask:runningVersion:)@<X0>(char a1@<W0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  *a3 = a1;
  v4 = &a3[*(type metadata accessor for JetServiceResponse.Metadata(0) + 20)];

  return sub_230010968(a2, v4);
}

uint64_t sub_230010968(uint64_t a1, uint64_t a2)
{
  v4 = sub_22FFED9B8(&qword_27DB064E0, &qword_230035C88);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_2300109D8()
{
  if (*v0)
  {
    result = 0x56676E696E6E7572;
  }

  else
  {
    result = 0xD000000000000011;
  }

  *v0;
  return result;
}

uint64_t sub_230010A24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000011 && 0x800000023003A6F0 == a2 || (sub_2300316D0() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x56676E696E6E7572 && a2 == 0xEE006E6F69737265)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_2300316D0();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
  return result;
}

uint64_t sub_230010B14(uint64_t a1)
{
  v2 = sub_230010D44();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_230010B50(uint64_t a1)
{
  v2 = sub_230010D44();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t JetServiceResponse.Metadata.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_22FFED9B8(&qword_27DB064E8, &qword_230035C90);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v14[-v8];
  v10 = a1[4];
  sub_22FFEDA4C(a1, a1[3]);
  sub_230010D44();
  sub_230031780();
  v11 = *v3;
  v14[15] = 0;
  sub_230031610();
  if (!v2)
  {
    v12 = *(type metadata accessor for JetServiceResponse.Metadata(0) + 20);
    v14[14] = 1;
    type metadata accessor for JetPackVersion();
    sub_23000FDDC(&qword_281494268, type metadata accessor for JetPackVersion);
    sub_2300315D0();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_230010D44()
{
  result = qword_281495380;
  if (!qword_281495380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281495380);
  }

  return result;
}

uint64_t JetServiceResponse.Metadata.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a2;
  v4 = sub_22FFED9B8(&qword_27DB064E0, &qword_230035C88);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v20 - v6;
  v8 = sub_22FFED9B8(&qword_27DB064F0, &qword_230035C98);
  v22 = *(v8 - 8);
  v23 = v8;
  v9 = *(v22 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v20 - v10;
  v12 = type metadata accessor for JetServiceResponse.Metadata(0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1[4];
  sub_22FFEDA4C(a1, a1[3]);
  sub_230010D44();
  sub_230031770();
  if (!v2)
  {
    v20 = v12;
    v17 = v22;
    v18 = v23;
    v25 = 0;
    *v15 = sub_2300314F0() & 1;
    type metadata accessor for JetPackVersion();
    v24 = 1;
    sub_23000FDDC(&qword_281494260, type metadata accessor for JetPackVersion);
    sub_2300314B0();
    (*(v17 + 8))(v11, v18);
    sub_230010968(v7, &v15[*(v20 + 20)]);
    sub_23000FD74(v15, v21, type metadata accessor for JetServiceResponse.Metadata);
  }

  return sub_22FFEE60C(a1);
}

unint64_t JetServiceResponse.Metadata.debugDescription.getter()
{
  sub_2300313E0();

  if (*v0)
  {
    v1 = 89;
  }

  else
  {
    v1 = 78;
  }

  MEMORY[0x23190F560](v1, 0xE100000000000000);

  MEMORY[0x23190F560](0xD000000000000012, 0x800000023003A6D0);
  v2 = *(type metadata accessor for JetServiceResponse.Metadata(0) + 20);
  sub_22FFED9B8(&qword_27DB064E0, &qword_230035C88);
  v3 = sub_230031370();
  MEMORY[0x23190F560](v3);

  MEMORY[0x23190F560](41, 0xE100000000000000);
  return 0xD000000000000014;
}

uint64_t sub_23001118C()
{
  result = type metadata accessor for JetServiceResponse.Container(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_230011284(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  result = a5(319);
  if (v6 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_2300112FC()
{
  if (!qword_281495420)
  {
    type metadata accessor for JetPackVersion();
    v0 = sub_230031380();
    if (!v1)
    {
      atomic_store(v0, &qword_281495420);
    }
  }
}

unint64_t sub_2300113A8()
{
  result = qword_27DB064F8;
  if (!qword_27DB064F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB064F8);
  }

  return result;
}

unint64_t sub_230011400()
{
  result = qword_27DB06500;
  if (!qword_27DB06500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB06500);
  }

  return result;
}

unint64_t sub_230011458()
{
  result = qword_27DB06508;
  if (!qword_27DB06508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB06508);
  }

  return result;
}

unint64_t sub_2300114B0()
{
  result = qword_27DB06510;
  if (!qword_27DB06510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB06510);
  }

  return result;
}

unint64_t sub_230011508()
{
  result = qword_27DB06518;
  if (!qword_27DB06518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB06518);
  }

  return result;
}

unint64_t sub_230011560()
{
  result = qword_281495370;
  if (!qword_281495370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281495370);
  }

  return result;
}

unint64_t sub_2300115B8()
{
  result = qword_281495378;
  if (!qword_281495378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281495378);
  }

  return result;
}

unint64_t sub_230011610()
{
  result = qword_2814952C8;
  if (!qword_2814952C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814952C8);
  }

  return result;
}

unint64_t sub_230011668()
{
  result = qword_2814952D0;
  if (!qword_2814952D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814952D0);
  }

  return result;
}

unint64_t sub_2300116C0()
{
  result = qword_281495388;
  if (!qword_281495388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281495388);
  }

  return result;
}

unint64_t sub_230011718()
{
  result = qword_281495390;
  if (!qword_281495390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281495390);
  }

  return result;
}

unint64_t sub_230011770()
{
  result = qword_2814953A0;
  if (!qword_2814953A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814953A0);
  }

  return result;
}

unint64_t sub_2300117C8()
{
  result = qword_2814953A8;
  if (!qword_2814953A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814953A8);
  }

  return result;
}

unint64_t sub_230011820()
{
  result = qword_2814953B0;
  if (!qword_2814953B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814953B0);
  }

  return result;
}

unint64_t sub_230011878()
{
  result = qword_2814953B8;
  if (!qword_2814953B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814953B8);
  }

  return result;
}

uint64_t XPCOpenIntentModel.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a2 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](a1);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v9, a1, a2);
  v10 = sub_230014870(MEMORY[0x277D84F90]);
  (*(v6 + 8))(a1, a2);
  (*(v6 + 32))(a3, v9, a2);
  result = type metadata accessor for XPCOpenIntentModel();
  *(a3 + *(result + 44)) = v10;
  return result;
}

uint64_t XPCOpenIntentModel.init(base:fields:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  (*(*(a3 - 8) + 32))(a4, a1);
  result = type metadata accessor for XPCOpenIntentModel();
  *(a4 + *(result + 44)) = a2;
  return result;
}

uint64_t XPCOpenIntentModel.subscript.getter(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20]();
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v7, v2, v3);
  swift_getAtKeyPath();
  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_230011C20(uint64_t a1, uint64_t a2, void **a3, uint64_t a4)
{
  v5 = *(a3 + a4 - 32);
  v7 = *(a3 + a4 - 16);
  v6 = *(a3 + a4 - 8);
  v8 = *a3;
  type metadata accessor for XPCOpenIntentModel();

  sub_2300149AC(a1, v8);
}

uint64_t XPCOpenIntentModel.subscript.setter(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  sub_2300149AC(a1, a2);

  v4 = *(*(*(v3 + *MEMORY[0x277D84308] + 8) - 8) + 8);

  return v4(a1);
}

void (*XPCOpenIntentModel.subscript.modify(void *a1, void *a2, uint64_t a3))(uint64_t **a1, char a2)
{
  v7 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x38uLL);
  }

  v9 = v8;
  *a1 = v8;
  v8[1] = a3;
  v8[2] = v3;
  *v8 = a2;
  v10 = *(*a2 + *MEMORY[0x277D84308] + 8);
  v8[3] = v10;
  v11 = *(v10 - 8);
  v8[4] = v11;
  v12 = *(v11 + 64);
  if (v7)
  {
    v8[5] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v8[5] = malloc(v12);
    v13 = malloc(v12);
  }

  v9[6] = v13;
  XPCOpenIntentModel.subscript.getter(a2, a3);
  return sub_230011E98;
}

void sub_230011E98(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[5];
  v4 = (*a1)[6];
  v5 = (*a1)[3];
  v6 = (*a1)[4];
  v8 = (*a1)[1];
  v7 = (*a1)[2];
  v9 = **a1;
  if (a2)
  {
    (*(v6 + 16))((*a1)[5], v4, v5);

    sub_2300149AC(v3, v9);

    v10 = *(v6 + 8);
    v10(v3, v5);
    v10(v4, v5);
  }

  else
  {
    v11 = **a1;

    sub_2300149AC(v4, v9);

    (*(v6 + 8))(v4, v5);
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t XPCOpenIntentModel.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v51 = a4;
  v7 = sub_22FFED9B8(&qword_27DB06520, &qword_230036370);
  v47 = *(v7 - 8);
  v48 = v7;
  v8 = *(v47 + 64);
  v9 = MEMORY[0x28223BE20](v7);
  v52 = &v46 - v10;
  v58 = *(a2 - 8);
  v11 = *(v58 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v56 = &v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v53 = &v46 - v14;
  type metadata accessor for XPCOpenIntentModel.CodingKeys();
  swift_getWitnessTable();
  v15 = sub_230031590();
  v54 = *(v15 - 8);
  v16 = *(v54 + 64);
  MEMORY[0x28223BE20](v15);
  v18 = &v46 - v17;
  v59 = a3;
  v19 = type metadata accessor for XPCOpenIntentModel();
  v49 = *(v19 - 8);
  v50 = v19;
  v20 = *(v49 + 64);
  MEMORY[0x28223BE20](v19);
  v60 = &v46 - v21;
  if (qword_281493F58 != -1)
  {
    swift_once();
  }

  v55 = v15;
  v22 = sub_230031040();
  sub_2300006BC(v22, qword_281498840);
  v23 = sub_230031020();
  v24 = sub_230031310();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    *v25 = 0;
    _os_log_impl(&dword_22FFE9000, v23, v24, "Trying to decode natively encoded OpenIntentModel", v25, 2u);
    MEMORY[0x23190FFD0](v25, -1, -1);
  }

  v26 = a1[4];
  sub_22FFEDA4C(a1, a1[3]);
  v27 = v57;
  sub_230031770();
  if (v27)
  {
    v28 = v58;
    v33 = sub_230031020();
    v34 = sub_230031310();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&dword_22FFE9000, v33, v34, "Trying to decode JS encoded OpenIntentModel", v35, 2u);
      MEMORY[0x23190FFD0](v35, -1, -1);
    }

    sub_230014AB8(a1, v61);
    v36 = v56;
    sub_2300312F0();
    (*(v28 + 32))(v60, v36, a2);
    v37 = a1[4];
    sub_22FFEDA4C(a1, a1[3]);
    sub_230014B1C();
    v38 = v52;
    sub_230031770();
    v39 = v48;
    v40 = sub_230031580();
    MEMORY[0x28223BE20](v40);
    *(&v46 - 2) = v38;
    v41 = sub_230012BD8(MEMORY[0x277D84F98], sub_230014B70, (&v46 - 4), v40);
    MEMORY[0x23190FE50](v27);

    v43 = v50;
    v42 = v60;
    *&v60[*(v50 + 44)] = v41;
    (*(v47 + 8))(v38, v39);
    v32 = v42;
  }

  else
  {
    LOBYTE(v61[0]) = 0;
    v29 = v53;
    v30 = v55;
    sub_230031520();
    v31 = v29;
    v32 = v60;
    (*(v58 + 32))(v60, v31, a2);
    sub_22FFED9B8(&qword_27DB06530, &qword_230036378);
    v62 = 1;
    sub_230014BE0(&qword_27DB06538, sub_230014B8C);
    sub_230031520();
    (*(v54 + 8))(v18, v30);
    v43 = v50;
    *&v32[*(v50 + 44)] = v61[0];
  }

  v44 = v49;
  (*(v49 + 16))(v51, v32, v43);
  sub_22FFEE60C(a1);
  return (*(v44 + 8))(v32, v43);
}

uint64_t sub_230012734(uint64_t *a1, uint64_t a2)
{
  v3 = v2;
  v5 = *a2;
  v4 = *(a2 + 8);
  v6 = *(a2 + 16);
  if (qword_281493F58 != -1)
  {
    swift_once();
  }

  v7 = sub_230031040();
  sub_2300006BC(v7, qword_281498840);
  sub_230014CB8(v5, v4, v6);
  v8 = sub_230031020();
  v9 = sub_230031310();
  sub_230014CC8(v5, v4, v6);
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v26 = v23;
    *v10 = 136315138;
    sub_230014D88();
    v11 = sub_2300316B0();
    v13 = sub_23000DE08(v11, v12, &v26);

    *(v10 + 4) = v13;
    v3 = v2;
    _os_log_impl(&dword_22FFE9000, v8, v9, "Trying to decode field: %s", v10, 0xCu);
    sub_22FFEE60C(v23);
    MEMORY[0x23190FFD0](v23, -1, -1);
    MEMORY[0x23190FFD0](v10, -1, -1);
  }

  sub_22FFED9B8(&qword_27DB06520, &qword_230036370);
  v14 = sub_2300314E0();
  if (v3)
  {
    MEMORY[0x23190FE50](v3);
    v14 = sub_230031510();
    v16 = 0;
    v17 = 1;
  }

  else
  {
    v16 = v15;
    v17 = 0;
  }

  v18 = v14;
  if (v6)
  {
  }

  else
  {
    v5 = sub_2300316B0();
    v4 = v19;
  }

  v20 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v25 = *a1;
  sub_230013A38(v18, v16, v17, v5, v4, isUniquelyReferenced_nonNull_native);

  *a1 = v25;
  return result;
}

uint64_t OpenCodingKey.stringValue.getter(uint64_t a1, uint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
    return sub_2300316B0();
  }

  return a1;
}

uint64_t sub_230012BD8(uint64_t result, void (*a2)(uint64_t *, void *), uint64_t a3, uint64_t a4)
{
  v13 = result;
  v5 = *(a4 + 16);
  if (v5)
  {
    for (i = (a4 + 48); ; i += 24)
    {
      v8 = *(i - 2);
      v9 = *(i - 1);
      v10 = *i;
      v11[0] = v8;
      v11[1] = v9;
      v12 = v10;
      sub_230014CB8(v8, v9, v10);
      a2(&v13, v11);
      if (v4)
      {
        break;
      }

      sub_230014CC8(v8, v9, v10);
      if (!--v5)
      {
        return v13;
      }
    }

    sub_230014CC8(v8, v9, v10);
  }

  return result;
}

uint64_t sub_230012CA0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1702060386 && a2 == 0xE400000000000000;
  if (v3 || (sub_2300316D0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x73646C656966 && a2 == 0xE600000000000000)
  {

    return 1;
  }

  else
  {
    v6 = sub_2300316D0();

    if (v6)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_230012DA0(char a1)
{
  sub_230031740();
  MEMORY[0x23190FB00](a1 & 1);
  return sub_230031760();
}

uint64_t sub_230012DE8(char a1)
{
  if (a1)
  {
    return 0x73646C656966;
  }

  else
  {
    return 1702060386;
  }
}

BOOL sub_230012E14(unsigned __int8 *a1, unsigned __int8 *a2, void *a3)
{
  v4 = a3[2];
  v3 = a3[3];
  v5 = a3[4];
  return sub_230012D68(*a1, *a2);
}

uint64_t sub_230012E2C(void *a1)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  return sub_230012DA0(*v1);
}

uint64_t sub_230012E40(uint64_t a1, void *a2)
{
  v3 = a2[2];
  v4 = a2[3];
  v5 = a2[4];
  return sub_230012D78(a1, *v2);
}

uint64_t sub_230012E54(uint64_t a1, void *a2)
{
  sub_230031740();
  v4 = a2[2];
  v5 = a2[3];
  v6 = a2[4];
  sub_230012D78(v8, *v2);
  return sub_230031760();
}

uint64_t sub_230012EA0(void *a1)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  return sub_230012DE8(*v1);
}

uint64_t sub_230012EB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, _BYTE *a4@<X8>)
{
  v6 = a3[2];
  v5 = a3[3];
  v7 = a3[4];
  result = sub_230012CA0(a1, a2);
  *a4 = result;
  return result;
}

uint64_t sub_230012EE8@<X0>(void *a1@<X1>, _BYTE *a2@<X8>)
{
  v3 = a1[2];
  v4 = a1[3];
  v5 = a1[4];
  result = sub_2300152CC();
  *a2 = result;
  return result;
}

uint64_t sub_230012F1C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_230012F70(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t XPCOpenIntentModel.encode(to:)(void *a1, uint64_t a2)
{
  v14[3] = *(a2 + 16);
  v4 = *(a2 + 24);
  v14[1] = *(a2 + 32);
  type metadata accessor for XPCOpenIntentModel.CodingKeys();
  swift_getWitnessTable();
  v5 = sub_2300316A0();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v14 - v8;
  v10 = a1[4];
  sub_22FFEDA4C(a1, a1[3]);
  v11 = v14[2];
  sub_230031780();
  v16 = 0;
  v12 = v14[4];
  sub_230031640();
  if (!v12)
  {
    v14[5] = *(v11 + *(a2 + 44));
    v15 = 1;
    sub_22FFED9B8(&qword_27DB06530, &qword_230036378);
    sub_230014BE0(&qword_27DB06548, sub_230014C64);
    sub_230031640();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t OpenCodingKey.intValue.getter(uint64_t result, unint64_t a2, char a3)
{
  if (a3)
  {
    v4 = HIBYTE(a2) & 0xF;
    v5 = result & 0xFFFFFFFFFFFFLL;
    if ((a2 & 0x2000000000000000) != 0)
    {
      v6 = v4;
    }

    else
    {
      v6 = result & 0xFFFFFFFFFFFFLL;
    }

    if (!v6)
    {
      return 0;
    }

    if ((a2 & 0x1000000000000000) != 0)
    {
      v28 = result;
      sub_230014CB8(result, a2, 1);
      v9 = sub_2300141EC(v28, a2, 10);
      v27 = v29;
      sub_230014CC8(v28, a2, 1);
LABEL_65:
      if (v27)
      {
        return 0;
      }

      else
      {
        return v9;
      }
    }

    if ((a2 & 0x2000000000000000) != 0)
    {
      v30[0] = result;
      v30[1] = a2 & 0xFFFFFFFFFFFFFFLL;
      if (result == 43)
      {
        if (v4)
        {
          v8 = v4 - 1;
          if (v4 != 1)
          {
            v9 = 0;
            v19 = v30 + 1;
            while (1)
            {
              v20 = *v19 - 48;
              if (v20 > 9)
              {
                break;
              }

              v21 = 10 * v9;
              if ((v9 * 10) >> 64 != (10 * v9) >> 63)
              {
                break;
              }

              v9 = v21 + v20;
              if (__OFADD__(v21, v20))
              {
                break;
              }

              ++v19;
              if (!--v8)
              {
                goto LABEL_64;
              }
            }
          }

          goto LABEL_63;
        }

LABEL_74:
        __break(1u);
        return result;
      }

      if (result != 45)
      {
        if (v4)
        {
          v9 = 0;
          v24 = v30;
          while (1)
          {
            v25 = *v24 - 48;
            if (v25 > 9)
            {
              break;
            }

            v26 = 10 * v9;
            if ((v9 * 10) >> 64 != (10 * v9) >> 63)
            {
              break;
            }

            v9 = v26 + v25;
            if (__OFADD__(v26, v25))
            {
              break;
            }

            ++v24;
            if (!--v4)
            {
              goto LABEL_62;
            }
          }
        }

        goto LABEL_63;
      }

      if (v4)
      {
        v8 = v4 - 1;
        if (v4 != 1)
        {
          v9 = 0;
          v13 = v30 + 1;
          while (1)
          {
            v14 = *v13 - 48;
            if (v14 > 9)
            {
              break;
            }

            v15 = 10 * v9;
            if ((v9 * 10) >> 64 != (10 * v9) >> 63)
            {
              break;
            }

            v9 = v15 - v14;
            if (__OFSUB__(v15, v14))
            {
              break;
            }

            ++v13;
            if (!--v8)
            {
              goto LABEL_64;
            }
          }
        }

        goto LABEL_63;
      }
    }

    else
    {
      if ((result & 0x1000000000000000) != 0)
      {
        result = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
      }

      else
      {
        result = sub_230031410();
      }

      v7 = *result;
      if (v7 == 43)
      {
        if (v5 >= 1)
        {
          v8 = v5 - 1;
          if (v5 != 1)
          {
            v9 = 0;
            if (result)
            {
              v16 = (result + 1);
              while (1)
              {
                v17 = *v16 - 48;
                if (v17 > 9)
                {
                  goto LABEL_63;
                }

                v18 = 10 * v9;
                if ((v9 * 10) >> 64 != (10 * v9) >> 63)
                {
                  goto LABEL_63;
                }

                v9 = v18 + v17;
                if (__OFADD__(v18, v17))
                {
                  goto LABEL_63;
                }

                ++v16;
                if (!--v8)
                {
                  goto LABEL_64;
                }
              }
            }

            goto LABEL_62;
          }

          goto LABEL_63;
        }

        goto LABEL_73;
      }

      if (v7 != 45)
      {
        if (v5)
        {
          v9 = 0;
          if (result)
          {
            while (1)
            {
              v22 = *result - 48;
              if (v22 > 9)
              {
                goto LABEL_63;
              }

              v23 = 10 * v9;
              if ((v9 * 10) >> 64 != (10 * v9) >> 63)
              {
                goto LABEL_63;
              }

              v9 = v23 + v22;
              if (__OFADD__(v23, v22))
              {
                goto LABEL_63;
              }

              ++result;
              if (!--v5)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_62;
        }

LABEL_63:
        v9 = 0;
        LOBYTE(v8) = 1;
        goto LABEL_64;
      }

      if (v5 >= 1)
      {
        v8 = v5 - 1;
        if (v5 != 1)
        {
          v9 = 0;
          if (result)
          {
            v10 = (result + 1);
            while (1)
            {
              v11 = *v10 - 48;
              if (v11 > 9)
              {
                goto LABEL_63;
              }

              v12 = 10 * v9;
              if ((v9 * 10) >> 64 != (10 * v9) >> 63)
              {
                goto LABEL_63;
              }

              v9 = v12 - v11;
              if (__OFSUB__(v12, v11))
              {
                goto LABEL_63;
              }

              ++v10;
              if (!--v8)
              {
                goto LABEL_64;
              }
            }
          }

LABEL_62:
          LOBYTE(v8) = 0;
LABEL_64:
          v31 = v8;
          v27 = v8;
          goto LABEL_65;
        }

        goto LABEL_63;
      }

      __break(1u);
    }

    __break(1u);
LABEL_73:
    __break(1u);
    goto LABEL_74;
  }

  return result;
}

uint64_t OpenCodingKey.description.getter(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {

    return a1;
  }

  else
  {
    sub_230014CD8();
    return sub_2300313B0();
  }
}

uint64_t sub_230013598()
{
  v1 = *v0;
  if (*(v0 + 16) == 1)
  {
    v2 = v0[1];
    v3 = *v0;

    return v3;
  }

  else
  {
    v5 = *v0;
    return sub_2300316B0();
  }
}

uint64_t sub_230013600@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = result;
  *(a3 + 8) = a2;
  *(a3 + 16) = 1;
  return result;
}

uint64_t sub_230013634@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  return result;
}

uint64_t sub_230013640()
{
  v1 = *v0;
  if (*(v0 + 16) == 1)
  {
    v2 = v0[1];
    v3 = *v0;

    return v3;
  }

  else
  {
    v5 = *v0;
    sub_230014CD8();
    return sub_2300313B0();
  }
}

uint64_t sub_2300136A8(uint64_t a1)
{
  v2 = sub_230014B1C();

  return MEMORY[0x2821FE720](a1, v2);
}

void *sub_2300136E4(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  sub_22FFED9B8(&qword_27DB06478, &qword_230035BE8);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

uint64_t sub_230013758(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_22FFED9B8(&qword_27DB06678, &qword_230036660);
  v40 = a2;
  result = sub_230031440();
  v8 = result;
  if (*(v5 + 16))
  {
    v38 = v2;
    v39 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v19 = __clz(__rbit64(v13));
      v41 = (v13 - 1) & v13;
LABEL_17:
      v22 = v19 | (v9 << 6);
      v23 = (*(v5 + 48) + 16 * v22);
      v24 = v23[1];
      v42 = *v23;
      v25 = *(v5 + 56) + 24 * v22;
      v26 = *v25;
      v27 = *(v25 + 8);
      v28 = *(v25 + 16);
      if ((v40 & 1) == 0)
      {

        sub_2300152E8(v26, v27, v28);
      }

      v29 = *(v8 + 40);
      sub_230031740();
      sub_2300311A0();
      result = sub_230031760();
      v30 = -1 << *(v8 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v15 + 8 * (v31 >> 6))) == 0)
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
          v36 = *(v15 + 8 * v32);
          if (v36 != -1)
          {
            v16 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v31) & ~*(v15 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v42;
      v17[1] = v24;
      v18 = *(v8 + 56) + 24 * v16;
      *v18 = v26;
      *(v18 + 8) = v27;
      *(v18 + 16) = v28;
      ++*(v8 + 16);
      v5 = v39;
      v13 = v41;
    }

    v20 = v9;
    while (1)
    {
      v9 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v21 = v10[v9];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v41 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_35;
    }

    v37 = 1 << *(v5 + 32);
    v3 = v38;
    if (v37 >= 64)
    {
      bzero(v10, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v37;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_230013A38(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  v7 = v6;
  v14 = *v6;
  v15 = sub_23002F3D0(a4, a5);
  v17 = *(v14 + 16);
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
    __break(1u);
    goto LABEL_17;
  }

  v21 = v16;
  v22 = *(v14 + 24);
  if (v22 < v20 || (a6 & 1) == 0)
  {
    if (v22 < v20 || (a6 & 1) != 0)
    {
      sub_230013758(v20, a6 & 1);
      v24 = *v7;
      v15 = sub_23002F3D0(a4, a5);
      if ((v21 & 1) != (v25 & 1))
      {
LABEL_18:
        result = sub_2300316E0();
        __break(1u);
        return result;
      }
    }

    else
    {
      v23 = v15;
      sub_230013BE0();
      v15 = v23;
    }
  }

  v26 = *v7;
  if (v21)
  {
    v27 = v26[7] + 24 * v15;
    v28 = *v27;
    v29 = *(v27 + 8);
    *v27 = a1;
    *(v27 + 8) = a2;
    v30 = *(v27 + 16);
    *(v27 + 16) = a3;

    return sub_2300152D4(v28, v29, v30);
  }

  v26[(v15 >> 6) + 8] |= 1 << v15;
  v32 = (v26[6] + 16 * v15);
  *v32 = a4;
  v32[1] = a5;
  v33 = v26[7] + 24 * v15;
  *v33 = a1;
  *(v33 + 8) = a2;
  *(v33 + 16) = a3;
  v34 = v26[2];
  v19 = __OFADD__(v34, 1);
  v35 = v34 + 1;
  if (v19)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v26[2] = v35;
}

void *sub_230013BE0()
{
  v1 = v0;
  sub_22FFED9B8(&qword_27DB06678, &qword_230036660);
  v2 = *v0;
  v3 = sub_230031430();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v17 = v14 | (v8 << 6);
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v17 *= 24;
        v22 = *(v2 + 56) + v17;
        v23 = *v22;
        v24 = *(v22 + 8);
        v25 = (*(v4 + 48) + v18);
        v26 = *(v22 + 16);
        *v25 = v21;
        v25[1] = v20;
        v27 = *(v4 + 56) + v17;
        *v27 = v23;
        *(v27 + 8) = v24;
        *(v27 + 16) = v26;

        result = sub_2300152E8(v23, v24, v26);
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

      v16 = *(v2 + 64 + 8 * v8);
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

uint64_t sub_230013D78()
{
  v0 = sub_230031230();
  v4 = sub_230013DF8(v0, v1, v2, v3);

  return v4;
}

uint64_t sub_230013DF8(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) == 0)
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v15[0] = a3;
      v15[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return sub_230031190();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }

    goto LABEL_11;
  }

  v9 = sub_230031390();
  if (!v9)
  {
    v11 = MEMORY[0x277D84F90];
    goto LABEL_13;
  }

  v10 = v9;
  v11 = sub_2300136E4(v9, 0);
  v12 = sub_230013F50(v15, (v11 + 4), v10, a1, a2, a3, a4);

  if (v12 == v10)
  {
LABEL_13:
    v13 = v11[2];
    v14 = sub_230031190();

    return v14;
  }

  __break(1u);
LABEL_11:
  sub_230031410();
LABEL_4:

  return sub_230031190();
}

unint64_t sub_230013F50(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
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
      result = sub_230014170(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_230031200();
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
          result = sub_230031410();
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

    result = sub_230014170(v12, a6, a7);
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

    result = sub_2300311E0();
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

uint64_t sub_230014170(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_230031210();
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
    v5 = MEMORY[0x23190F5A0](15, a1 >> 16);
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

unsigned __int8 *sub_2300141EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v61 = a1;
  v62 = a2;

  result = sub_230031220();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_230013D78();
    v35 = v34;

    v5 = v35;
    if ((v35 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_230031410();
      v7 = v60;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v19 = v7 - 1;
        if (v19)
        {
          v20 = a3 + 48;
          v21 = a3 + 55;
          v22 = a3 + 87;
          if (a3 > 10)
          {
            v20 = 58;
          }

          else
          {
            v22 = 97;
            v21 = 65;
          }

          if (result)
          {
            v13 = 0;
            v23 = result + 1;
            do
            {
              v24 = *v23;
              if (v24 < 0x30 || v24 >= v20)
              {
                if (v24 < 0x41 || v24 >= v21)
                {
                  v17 = 0;
                  if (v24 < 0x61 || v24 >= v22)
                  {
                    goto LABEL_125;
                  }

                  v25 = -87;
                }

                else
                {
                  v25 = -55;
                }
              }

              else
              {
                v25 = -48;
              }

              v26 = v13 * a3;
              if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
              {
                goto LABEL_124;
              }

              v13 = v26 + (v24 + v25);
              if (__OFADD__(v26, (v24 + v25)))
              {
                goto LABEL_124;
              }

              ++v23;
              --v19;
            }

            while (v19);
LABEL_46:
            v17 = v13;
            goto LABEL_125;
          }

          goto LABEL_64;
        }

LABEL_124:
        v17 = 0;
        goto LABEL_125;
      }

      goto LABEL_129;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v27 = 0;
        v28 = a3 + 48;
        v29 = a3 + 55;
        v30 = a3 + 87;
        if (a3 > 10)
        {
          v28 = 58;
        }

        else
        {
          v30 = 97;
          v29 = 65;
        }

        while (1)
        {
          v31 = *result;
          if (v31 < 0x30 || v31 >= v28)
          {
            if (v31 < 0x41 || v31 >= v29)
            {
              v17 = 0;
              if (v31 < 0x61 || v31 >= v30)
              {
                goto LABEL_125;
              }

              v32 = -87;
            }

            else
            {
              v32 = -55;
            }
          }

          else
          {
            v32 = -48;
          }

          v33 = v27 * a3;
          if ((v27 * a3) >> 64 != (v27 * a3) >> 63)
          {
            goto LABEL_124;
          }

          v27 = v33 + (v31 + v32);
          if (__OFADD__(v33, (v31 + v32)))
          {
            goto LABEL_124;
          }

          ++result;
          if (!--v7)
          {
            goto LABEL_123;
          }
        }
      }

      goto LABEL_124;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          v13 = 0;
          v14 = result + 1;
          while (1)
          {
            v15 = *v14;
            if (v15 < 0x30 || v15 >= v10)
            {
              if (v15 < 0x41 || v15 >= v11)
              {
                v17 = 0;
                if (v15 < 0x61 || v15 >= v12)
                {
                  goto LABEL_125;
                }

                v16 = -87;
              }

              else
              {
                v16 = -55;
              }
            }

            else
            {
              v16 = -48;
            }

            v18 = v13 * a3;
            if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
            {
              goto LABEL_124;
            }

            v13 = v18 - (v15 + v16);
            if (__OFSUB__(v18, (v15 + v16)))
            {
              goto LABEL_124;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_64:
        v17 = 0;
LABEL_125:

        return v17;
      }

      goto LABEL_124;
    }

    __break(1u);
LABEL_128:
    __break(1u);
LABEL_129:
    __break(1u);
    goto LABEL_130;
  }

  v36 = HIBYTE(v5) & 0xF;
  v61 = v6;
  v62 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v36)
      {
        v27 = 0;
        v53 = a3 + 48;
        v54 = a3 + 55;
        v55 = a3 + 87;
        if (a3 > 10)
        {
          v53 = 58;
        }

        else
        {
          v55 = 97;
          v54 = 65;
        }

        v56 = &v61;
        while (1)
        {
          v57 = *v56;
          if (v57 < 0x30 || v57 >= v53)
          {
            if (v57 < 0x41 || v57 >= v54)
            {
              v17 = 0;
              if (v57 < 0x61 || v57 >= v55)
              {
                goto LABEL_125;
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

          v59 = v27 * a3;
          if ((v27 * a3) >> 64 != (v27 * a3) >> 63)
          {
            goto LABEL_124;
          }

          v27 = v59 + (v57 + v58);
          if (__OFADD__(v59, (v57 + v58)))
          {
            goto LABEL_124;
          }

          v56 = (v56 + 1);
          if (!--v36)
          {
            goto LABEL_123;
          }
        }
      }

      goto LABEL_124;
    }

    if (v36)
    {
      v37 = v36 - 1;
      if (v37)
      {
        v27 = 0;
        v38 = a3 + 48;
        v39 = a3 + 55;
        v40 = a3 + 87;
        if (a3 > 10)
        {
          v38 = 58;
        }

        else
        {
          v40 = 97;
          v39 = 65;
        }

        v41 = &v61 + 1;
        while (1)
        {
          v42 = *v41;
          if (v42 < 0x30 || v42 >= v38)
          {
            if (v42 < 0x41 || v42 >= v39)
            {
              v17 = 0;
              if (v42 < 0x61 || v42 >= v40)
              {
                goto LABEL_125;
              }

              v43 = -87;
            }

            else
            {
              v43 = -55;
            }
          }

          else
          {
            v43 = -48;
          }

          v44 = v27 * a3;
          if ((v27 * a3) >> 64 != (v27 * a3) >> 63)
          {
            goto LABEL_124;
          }

          v27 = v44 - (v42 + v43);
          if (__OFSUB__(v44, (v42 + v43)))
          {
            goto LABEL_124;
          }

          ++v41;
          if (!--v37)
          {
            goto LABEL_123;
          }
        }
      }

      goto LABEL_124;
    }

    goto LABEL_128;
  }

  if (v36)
  {
    v45 = v36 - 1;
    if (v45)
    {
      v27 = 0;
      v46 = a3 + 48;
      v47 = a3 + 55;
      v48 = a3 + 87;
      if (a3 > 10)
      {
        v46 = 58;
      }

      else
      {
        v48 = 97;
        v47 = 65;
      }

      v49 = &v61 + 1;
      do
      {
        v50 = *v49;
        if (v50 < 0x30 || v50 >= v46)
        {
          if (v50 < 0x41 || v50 >= v47)
          {
            v17 = 0;
            if (v50 < 0x61 || v50 >= v48)
            {
              goto LABEL_125;
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

        v52 = v27 * a3;
        if ((v27 * a3) >> 64 != (v27 * a3) >> 63)
        {
          goto LABEL_124;
        }

        v27 = v52 + (v50 + v51);
        if (__OFADD__(v52, (v50 + v51)))
        {
          goto LABEL_124;
        }

        ++v49;
        --v45;
      }

      while (v45);
LABEL_123:
      v17 = v27;
      goto LABEL_125;
    }

    goto LABEL_124;
  }

LABEL_130:
  __break(1u);
  return result;
}

unint64_t sub_23001476C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_22FFED9B8(&qword_27DB06680, &qword_230036668);
    v3 = sub_230031450();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_23002F3D0(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      *(v3[7] + 8 * result) = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_230014870(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_22FFED9B8(&qword_27DB06678, &qword_230036660);
    v3 = sub_230031450();

    for (i = (a1 + 64); ; i += 40)
    {
      v5 = *(i - 4);
      v6 = *(i - 3);
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;

      sub_2300152E8(v7, v8, v9);
      result = sub_23002F3D0(v5, v6);
      if (v11)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v12 = (v3[6] + 16 * result);
      *v12 = v5;
      v12[1] = v6;
      v13 = v3[7] + 24 * result;
      *v13 = v7;
      *(v13 + 8) = v8;
      *(v13 + 16) = v9;
      v14 = v3[2];
      v15 = __OFADD__(v14, 1);
      v16 = v14 + 1;
      if (v15)
      {
        goto LABEL_10;
      }

      v3[2] = v16;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t sub_2300149AC(uint64_t a1, void *a2)
{
  v2 = *(*(*(*a2 + *MEMORY[0x277D84308] + 8) - 8) + 64);
  MEMORY[0x28223BE20](a1);
  (*(v4 + 16))(&v6 - v3);
  return swift_setAtWritableKeyPath();
}

uint64_t sub_230014AB8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_230014B1C()
{
  result = qword_27DB06528;
  if (!qword_27DB06528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB06528);
  }

  return result;
}

unint64_t sub_230014B8C()
{
  result = qword_27DB06540;
  if (!qword_27DB06540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB06540);
  }

  return result;
}

uint64_t sub_230014BE0(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_22FFF0054(&qword_27DB06530, &qword_230036378);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}