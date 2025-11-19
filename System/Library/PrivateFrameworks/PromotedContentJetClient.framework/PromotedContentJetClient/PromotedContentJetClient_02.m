unint64_t sub_230014C64()
{
  result = qword_27DB06550;
  if (!qword_27DB06550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB06550);
  }

  return result;
}

uint64_t sub_230014CB8(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_230014CC8(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

unint64_t sub_230014CD8()
{
  result = qword_27DB06558;
  if (!qword_27DB06558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB06558);
  }

  return result;
}

unint64_t sub_230014D30()
{
  result = qword_27DB06560;
  if (!qword_27DB06560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB06560);
  }

  return result;
}

unint64_t sub_230014D88()
{
  result = qword_27DB06568[0];
  if (!qword_27DB06568[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DB06568);
  }

  return result;
}

void sub_230014DE4(uint64_t a1)
{
  v1 = *(a1 + 16);
  swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    sub_23001515C();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_230014E6C(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  v9 = a2 - v7;
  v10 = v8 & 0xFFFFFFF8;
  if ((v8 & 0xFFFFFFF8) != 0)
  {
    v11 = 2;
  }

  else
  {
    v11 = v9 + 1;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v13 || (v14 = *(a1 + v8)) == 0)
  {
LABEL_28:
    if (v5 >= 0x7FFFFFFF)
    {
      return (*(v4 + 48))();
    }

    v17 = *((a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    return (v17 + 1);
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

_DWORD *sub_230014FA8(_DWORD *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 16) - 8) + 64);
  v9 = ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v10 = a3 - v7 + 1;
  }

  else
  {
    v10 = 2;
  }

  if (v10 >= 0x10000)
  {
    v11 = 4;
  }

  else
  {
    v11 = 2;
  }

  if (v10 < 0x100)
  {
    v11 = 1;
  }

  if (v10 >= 2)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  if (v7 < a3)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (a2 > v7)
  {
    if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v14 = a2 - v7;
    }

    else
    {
      v14 = 1;
    }

    if (((v8 + 7) & 0xFFFFFFF8) != 0xFFFFFFF8)
    {
      v15 = ~v7 + a2;
      v16 = result;
      bzero(result, ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 8);
      result = v16;
      *v16 = v15;
    }

    if (v13 > 1)
    {
      if (v13 == 2)
      {
        *(result + v9) = v14;
      }

      else
      {
        *(result + v9) = v14;
      }
    }

    else if (v13)
    {
      *(result + v9) = v14;
    }

    return result;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *(result + v9) = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_36;
    }

    *(result + v9) = 0;
  }

  else if (v13)
  {
    *(result + v9) = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_36;
  }

  if (!a2)
  {
    return result;
  }

LABEL_36:
  if (v6 < 0x7FFFFFFF)
  {
    v18 = ((result + v8 + 7) & 0xFFFFFFFFFFFFFFF8);
    if ((a2 & 0x80000000) != 0)
    {
      v19 = a2 & 0x7FFFFFFF;
    }

    else
    {
      v19 = a2 - 1;
    }

    *v18 = v19;
  }

  else
  {
    v17 = *(v5 + 56);

    return v17();
  }

  return result;
}

void sub_23001515C()
{
  if (!qword_27DB065F0[0])
  {
    v0 = sub_230031130();
    if (!v1)
    {
      atomic_store(v0, qword_27DB065F0);
    }
  }
}

uint64_t sub_2300151C8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 17))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_230015210(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_2300152D4(uint64_t a1, uint64_t a2, char a3)
{
  if (!a3)
  {
  }

  return result;
}

uint64_t sub_2300152E8(uint64_t a1, uint64_t a2, char a3)
{
  if (!a3)
  {
  }

  return result;
}

uint64_t sub_23001532C()
{
  sub_230031740();
  sub_2300311A0();

  return sub_230031760();
}

uint64_t sub_230015460()
{
  sub_230031740();
  sub_2300311A0();

  return sub_230031760();
}

uint64_t AttributionPreMatchIntent.currentTime.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_230030E00();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t type metadata accessor for AttributionPreMatchIntent()
{
  result = qword_281494848;
  if (!qword_281494848)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t AttributionPreMatchIntent.adamID.getter()
{
  v1 = (v0 + *(type metadata accessor for AttributionPreMatchIntent() + 24));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t AttributionPreMatchIntent.bundleID.getter()
{
  v1 = (v0 + *(type metadata accessor for AttributionPreMatchIntent() + 28));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t AttributionPreMatchIntent.callEventType.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for AttributionPreMatchIntent();
  *a1 = *(v1 + *(result + 32));
  return result;
}

uint64_t AttributionPreMatchIntent.accountToken.getter()
{
  v1 = (v0 + *(type metadata accessor for AttributionPreMatchIntent() + 36));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t AttributionPreMatchIntent.init(currentTime:config:adamID:bundleID:callEventType:accountToken:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char *a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v18 = *a7;
  v19 = sub_230030E00();
  (*(*(v19 - 8) + 32))(a9, a1, v19);
  matched = type metadata accessor for AttributionPreMatchIntent();
  result = sub_230007440(a2, a9 + matched[5]);
  v22 = (a9 + matched[6]);
  *v22 = a3;
  v22[1] = a4;
  v23 = (a9 + matched[7]);
  *v23 = a5;
  v23[1] = a6;
  *(a9 + matched[8]) = v18;
  v24 = (a9 + matched[9]);
  *v24 = a8;
  v24[1] = a10;
  return result;
}

uint64_t AttributionPreMatchIntent.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_22FFED9B8(&qword_27DB06688, ".R");
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v23[-v8];
  v10 = a1[4];
  sub_22FFEDA4C(a1, a1[3]);
  sub_230015B4C();
  sub_230031780();
  v23[15] = 0;
  sub_230030E00();
  sub_230016FCC(&qword_281494290, MEMORY[0x277CC9578]);
  sub_230031640();
  if (!v2)
  {
    matched = type metadata accessor for AttributionPreMatchIntent();
    v12 = matched[5];
    v23[14] = 1;
    type metadata accessor for AttributionConfig();
    sub_230016FCC(&qword_27DB06308, type metadata accessor for AttributionConfig);
    sub_230031640();
    v13 = (v3 + matched[6]);
    v14 = *v13;
    v15 = v13[1];
    v23[13] = 2;
    sub_230031600();
    v16 = (v3 + matched[7]);
    v17 = *v16;
    v18 = v16[1];
    v23[12] = 3;
    sub_230031600();
    v23[11] = *(v3 + matched[8]);
    v23[10] = 4;
    sub_2300078CC();
    sub_230031640();
    v19 = (v3 + matched[9]);
    v20 = *v19;
    v21 = v19[1];
    v23[9] = 5;
    sub_230031600();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_230015B4C()
{
  result = qword_27DB06690;
  if (!qword_27DB06690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB06690);
  }

  return result;
}

uint64_t AttributionPreMatchIntent.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a2;
  v33 = type metadata accessor for AttributionConfig();
  v3 = *(*(v33 - 8) + 64);
  MEMORY[0x28223BE20](v33);
  v5 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_230030E00();
  v34 = *(v6 - 8);
  v7 = *(v34 + 64);
  MEMORY[0x28223BE20](v6);
  v36 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = sub_22FFED9B8(&qword_27DB06698, &unk_230036698);
  v35 = *(v38 - 8);
  v9 = *(v35 + 64);
  MEMORY[0x28223BE20](v38);
  v11 = &v32 - v10;
  matched = type metadata accessor for AttributionPreMatchIntent();
  v13 = *(*(matched - 1) + 64);
  MEMORY[0x28223BE20](matched);
  v15 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1[4];
  sub_22FFEDA4C(a1, a1[3]);
  sub_230015B4C();
  v37 = v11;
  v17 = v39;
  sub_230031770();
  if (v17)
  {
    return sub_22FFEE60C(a1);
  }

  v18 = v34;
  v46 = 0;
  sub_230016FCC(&qword_27DB05CA0, MEMORY[0x277CC9578]);
  sub_230031520();
  (*(v18 + 32))(v15, v36, v6);
  v45 = 1;
  sub_230016FCC(&qword_27DB06328, type metadata accessor for AttributionConfig);
  sub_230031520();
  sub_230007440(v5, &v15[matched[5]]);
  v44 = 2;
  v19 = sub_2300314E0();
  v20 = &v15[matched[6]];
  *v20 = v19;
  v20[1] = v21;
  v43 = 3;
  v22 = sub_2300314E0();
  v23 = v35;
  v24 = &v15[matched[7]];
  *v24 = v22;
  v24[1] = v25;
  v41 = 4;
  sub_23000805C();
  sub_230031520();
  v15[matched[8]] = v42;
  v40 = 5;
  v26 = sub_2300314E0();
  v39 = v27;
  v28 = v26;
  (*(v23 + 8))(v37, v38);
  v29 = &v15[matched[9]];
  v30 = v39;
  *v29 = v28;
  *(v29 + 1) = v30;
  sub_230016124(v15, v32, type metadata accessor for AttributionPreMatchIntent);
  sub_22FFEE60C(a1);
  return sub_23001618C(v15, type metadata accessor for AttributionPreMatchIntent);
}

uint64_t sub_230016124(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_23001618C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

PromotedContentJetClient::AttributionPreMatchIntent::CodingKeys_optional __swiftcall AttributionPreMatchIntent.CodingKeys.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_230031460();

  v5 = 6;
  if (v3 < 6)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

PromotedContentJetClient::AttributionPreMatchIntent::CodingKeys_optional __swiftcall AttributionPreMatchIntent.CodingKeys.init(stringValue:)(Swift::String stringValue)
{
  v2 = v1;
  result.value = AttributionPreMatchIntent.CodingKeys.init(rawValue:)(stringValue).value;
  *v2 = v4;
  return result;
}

uint64_t AttributionPreMatchIntent.CodingKeys.stringValue.getter()
{
  v1 = *v0;
  v2 = 0x54746E6572727563;
  v3 = 0x4449656C646E7562;
  v4 = 0x6E6576456C6C6163;
  if (v1 != 4)
  {
    v4 = 0x54746E756F636361;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x6769666E6F63;
  if (v1 != 1)
  {
    v5 = 0x44496D616461;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_2300163C8()
{
  *v0;
  *v0;
  *v0;
  sub_2300311A0();
}

void sub_2300164E0(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEB00000000656D69;
  v4 = 0x54746E6572727563;
  v5 = 0xE800000000000000;
  v6 = 0x4449656C646E7562;
  v7 = 0xED00006570795474;
  v8 = 0x6E6576456C6C6163;
  if (v2 != 4)
  {
    v8 = 0x54746E756F636361;
    v7 = 0xEC0000006E656B6FLL;
  }

  if (v2 != 3)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0x6769666E6F63;
  if (v2 != 1)
  {
    v9 = 0x44496D616461;
  }

  if (*v1)
  {
    v4 = v9;
    v3 = 0xE600000000000000;
  }

  if (*v1 <= 2u)
  {
    v10 = v4;
  }

  else
  {
    v10 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v10;
  a1[1] = v3;
}

uint64_t sub_2300165B4()
{
  v1 = *v0;
  v2 = 0x54746E6572727563;
  v3 = 0x4449656C646E7562;
  v4 = 0x6E6576456C6C6163;
  if (v1 != 4)
  {
    v4 = 0x54746E756F636361;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x6769666E6F63;
  if (v1 != 1)
  {
    v5 = 0x44496D616461;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_2300166BC(uint64_t a1)
{
  v2 = sub_230015B4C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2300166F8(uint64_t a1)
{
  v2 = sub_230015B4C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AttributionPreMatchIntent.ReturnType.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];

  sub_2300313E0();
  MEMORY[0x23190F560](0xD00000000000002DLL, 0x800000023003A710);
  v4 = MEMORY[0x23190F640](v1, MEMORY[0x277D837D0]);
  MEMORY[0x23190F560](v4);

  MEMORY[0x23190F560](0xD000000000000010, 0x800000023003A740);
  sub_22FFED9B8(&qword_27DB063C0, &qword_230035360);
  v5 = sub_230031170();
  MEMORY[0x23190F560](v5);

  return 0;
}

uint64_t AttributionPreMatchIntent.ReturnType.intentContext.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 16);
  *a1 = *(v1 + 8);
  a1[1] = v2;
}

uint64_t AttributionPreMatchIntent.ReturnType.intentContext.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(v1 + 16);

  *(v1 + 8) = v2;
  *(v1 + 16) = v3;
  return result;
}

uint64_t AttributionPreMatchIntent.ReturnType.encode(to:)(void *a1)
{
  v4 = sub_22FFED9B8(&qword_27DB066A0, &qword_2300366A8);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v13 - v7;
  v9 = *v1;
  v10 = v1[2];
  v13 = v1[1];
  v14 = v10;
  v11 = a1[4];
  sub_22FFEDA4C(a1, a1[3]);
  sub_230016A98();

  sub_230031780();
  v15 = v9;
  v17 = 0;
  sub_22FFED9B8(&qword_27DB06380, &qword_2300366B0);
  sub_230009828(&qword_281493EA0);
  sub_230031640();

  if (!v2)
  {
    v15 = v13;
    v16 = v14;
    v17 = 1;
    sub_230007920();

    sub_2300315D0();
  }

  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_230016A98()
{
  result = qword_27DB066A8;
  if (!qword_27DB066A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB066A8);
  }

  return result;
}

uint64_t AttributionPreMatchIntent.ReturnType.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = sub_22FFED9B8(&qword_27DB066B0, &qword_2300366B8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v15 - v8;
  v10 = a1[4];
  sub_22FFEDA4C(a1, a1[3]);
  sub_230016A98();
  sub_230031770();
  if (v2)
  {
    sub_22FFEE60C(a1);
  }

  else
  {
    sub_22FFED9B8(&qword_27DB06380, &qword_2300366B0);
    v16 = 0;
    sub_230009828(&qword_281493E98);
    sub_230031520();
    v12 = v15[0];
    v16 = 1;
    sub_2300080B0();
    sub_2300314B0();
    (*(v6 + 8))(v9, v5);
    v14 = v15[0];
    v13 = v15[1];

    *a2 = v12;
    a2[1] = v14;
    a2[2] = v13;

    sub_22FFEE60C(a1);
  }
}

PromotedContentJetClient::AttributionPreMatchIntent::ReturnType::CodingKeys_optional __swiftcall AttributionPreMatchIntent.ReturnType.CodingKeys.init(stringValue:)(Swift::String stringValue)
{
  object = stringValue._object;
  countAndFlagsBits = stringValue._countAndFlagsBits;
  v4 = v1;
  v5 = stringValue._countAndFlagsBits == 0x73656972657571 && stringValue._object == 0xE700000000000000;
  if (v5 || (sub_2300316D0() & 1) != 0)
  {

    v7 = 0;
  }

  else if (countAndFlagsBits == 0x6F43746E65746E69 && object == 0xED0000747865746ELL)
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

  *v4 = v7;
  return result;
}

uint64_t AttributionPreMatchIntent.ReturnType.CodingKeys.hashValue.getter()
{
  v1 = *v0;
  sub_230031740();
  MEMORY[0x23190FB00](v1);
  return sub_230031760();
}

uint64_t AttributionPreMatchIntent.ReturnType.CodingKeys.stringValue.getter()
{
  if (*v0)
  {
    result = 0x6F43746E65746E69;
  }

  else
  {
    result = 0x73656972657571;
  }

  *v0;
  return result;
}

uint64_t sub_230016F48(uint64_t a1)
{
  *(a1 + 8) = sub_230016FCC(&qword_27DB066B8, type metadata accessor for AttributionPreMatchIntent);
  result = sub_230016FCC(&qword_27DB066C0, type metadata accessor for AttributionPreMatchIntent);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_230016FCC(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_230017018()
{
  result = qword_27DB066C8;
  if (!qword_27DB066C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB066C8);
  }

  return result;
}

unint64_t sub_230017070()
{
  result = qword_27DB066D0;
  if (!qword_27DB066D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB066D0);
  }

  return result;
}

unint64_t sub_2300170C8()
{
  result = qword_27DB066D8;
  if (!qword_27DB066D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB066D8);
  }

  return result;
}

unint64_t sub_230017120()
{
  result = qword_27DB066E0;
  if (!qword_27DB066E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB066E0);
  }

  return result;
}

unint64_t sub_230017178()
{
  result = qword_27DB066E8;
  if (!qword_27DB066E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB066E8);
  }

  return result;
}

unint64_t sub_2300171D0()
{
  result = qword_27DB066F0;
  if (!qword_27DB066F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB066F0);
  }

  return result;
}

uint64_t sub_230017224()
{
  if (*v0)
  {
    result = 0x6F43746E65746E69;
  }

  else
  {
    result = 0x73656972657571;
  }

  *v0;
  return result;
}

uint64_t sub_230017270(uint64_t a1)
{
  v2 = sub_230016A98();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2300172AC(uint64_t a1)
{
  v2 = sub_230016A98();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_230017310()
{
  result = sub_230030E00();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for AttributionConfig();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

__n128 sub_2300173C0(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_2300173D4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_23001741C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t StandaloneAppOpenSignal.shortDescription.getter()
{
  v1 = v0;
  sub_2300313E0();

  MEMORY[0x23190F560](*(v1 + 16), *(v1 + 24));
  MEMORY[0x23190F560](0x7473656D6974202CLL, 0xEC0000003A706D61);
  v2 = type metadata accessor for StandaloneAppOpenSignal();
  v3 = *(v2 + 24);
  sub_230030E00();
  sub_230018998(&qword_27DB05F50);
  v4 = sub_2300316B0();
  MEMORY[0x23190F560](v4);

  MEMORY[0x23190F560](0x736572706D69202CLL, 0xEF3A64496E6F6973);
  MEMORY[0x23190F560](*(v1 + *(v2 + 36)), *(v1 + *(v2 + 36) + 8));
  MEMORY[0x23190F560](125, 0xE100000000000000);
  return 0x3A64496D6164617BLL;
}

uint64_t StandaloneAppOpenSignal.bundleId.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t StandaloneAppOpenSignal.adamId.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t StandaloneAppOpenSignal.timestamp.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for StandaloneAppOpenSignal() + 24);
  v4 = sub_230030E00();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t StandaloneAppOpenSignal.machTimestamp.getter()
{
  v1 = (v0 + *(type metadata accessor for StandaloneAppOpenSignal() + 28));
  result = *v1;
  v3 = *(v1 + 8);
  return result;
}

uint64_t StandaloneAppOpenSignal.originatorBundleId.getter()
{
  v1 = (v0 + *(type metadata accessor for StandaloneAppOpenSignal() + 32));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t StandaloneAppOpenSignal.impressionId.getter()
{
  v1 = (v0 + *(type metadata accessor for StandaloneAppOpenSignal() + 36));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t StandaloneAppOpenSignal.accountToken.getter()
{
  v1 = (v0 + *(type metadata accessor for StandaloneAppOpenSignal() + 40));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

PromotedContentJetClient::StandaloneAppOpenSignal::CodingKeys_optional __swiftcall StandaloneAppOpenSignal.CodingKeys.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_230031460();

  v5 = 7;
  if (v3 < 7)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

PromotedContentJetClient::StandaloneAppOpenSignal::CodingKeys_optional __swiftcall StandaloneAppOpenSignal.CodingKeys.init(stringValue:)(Swift::String stringValue)
{
  v2 = v1;
  result.value = StandaloneAppOpenSignal.CodingKeys.init(rawValue:)(stringValue).value;
  *v2 = v4;
  return result;
}

uint64_t sub_230017844()
{
  v1 = *v0;
  v2 = 0x6449656C646E7562;
  v3 = 0x54746E756F636361;
  if (v1 != 5)
  {
    v3 = 0x656D69546863616DLL;
  }

  v4 = 0xD000000000000012;
  if (v1 != 3)
  {
    v4 = 0x6973736572706D69;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x64496D616461;
  if (v1 != 1)
  {
    v5 = 0x6D617473656D6974;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_230017958()
{
  *v0;
  *v0;
  *v0;
  sub_2300311A0();
}

void sub_230017A9C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE800000000000000;
  v4 = 0x6449656C646E7562;
  v5 = 0xEC0000006E656B6FLL;
  v6 = 0x54746E756F636361;
  if (v2 != 5)
  {
    v6 = 0x656D69546863616DLL;
    v5 = 0xED0000706D617473;
  }

  v7 = 0x800000023003A1B0;
  v8 = 0xD000000000000012;
  if (v2 != 3)
  {
    v8 = 0x6973736572706D69;
    v7 = 0xEC00000064496E6FLL;
  }

  if (*v1 <= 4u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE600000000000000;
  v10 = 0x64496D616461;
  if (v2 != 1)
  {
    v10 = 0x6D617473656D6974;
    v9 = 0xE900000000000070;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  v13 = __OFSUB__(v2, 2);
  v11 = v2 == 2;
  v12 = v2 - 2 < 0;
  if (*v1 <= 2u)
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

uint64_t sub_230017BD4(uint64_t a1)
{
  v2 = sub_230018944();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_230017C10(uint64_t a1)
{
  v2 = sub_230018944();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t StandaloneAppOpenSignal.init(bundleId:adamId:timestamp:originatorBundleId:impressionId:accountToken:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  *a9 = a1;
  *(a9 + 1) = a2;
  *(a9 + 2) = a3;
  *(a9 + 3) = a4;
  v16 = type metadata accessor for StandaloneAppOpenSignal();
  v17 = v16[6];
  v18 = sub_230030E00();
  v19 = *(v18 - 8);
  (*(v19 + 16))(&a9[v17], a5, v18);
  v20 = &a9[v16[8]];
  *v20 = a6;
  *(v20 + 1) = a7;
  v21 = &a9[v16[9]];
  *v21 = a8;
  *(v21 + 1) = a10;
  v22 = &a9[v16[10]];
  *v22 = a11;
  *(v22 + 1) = a12;
  v23 = mach_continuous_time();
  result = (*(v19 + 8))(a5, v18);
  v25 = &a9[v16[7]];
  *v25 = v23;
  v25[8] = 0;
  return result;
}

uint64_t StandaloneAppOpenSignal.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_22FFED9B8(&qword_27DB066F8, &qword_230036AA0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v30[-v8];
  v10 = a1[4];
  sub_22FFEDA4C(a1, a1[3]);
  sub_230018944();
  sub_230031780();
  v11 = *v3;
  v12 = v3[1];
  v30[15] = 0;
  sub_2300315B0();
  if (!v2)
  {
    v14 = v3[2];
    v15 = v3[3];
    v30[14] = 1;
    sub_230031600();
    v16 = type metadata accessor for StandaloneAppOpenSignal();
    v17 = v16[6];
    v30[13] = 2;
    sub_230030E00();
    sub_230018998(&qword_281494290);
    sub_230031640();
    v18 = (v3 + v16[8]);
    v19 = *v18;
    v20 = v18[1];
    v30[12] = 3;
    sub_230031600();
    v21 = (v3 + v16[9]);
    v22 = *v21;
    v23 = v21[1];
    v30[11] = 4;
    sub_230031600();
    v24 = (v3 + v16[10]);
    v25 = *v24;
    v26 = v24[1];
    v30[10] = 5;
    sub_230031600();
    v27 = v3 + v16[7];
    v28 = *v27;
    v29 = v27[8];
    v30[9] = 6;
    sub_2300315F0();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t StandaloneAppOpenSignal.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v46 = a2;
  v4 = sub_230030E00();
  v48 = *(v4 - 8);
  v5 = *(v48 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = sub_22FFED9B8(&qword_27DB06708, &qword_230036AA8);
  v47 = *(v50 - 8);
  v8 = *(v47 + 64);
  MEMORY[0x28223BE20](v50);
  v10 = &v44 - v9;
  v11 = type metadata accessor for StandaloneAppOpenSignal();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = (&v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = a1[3];
  v15 = a1[4];
  v51 = a1;
  sub_22FFEDA4C(a1, v16);
  sub_230018944();
  v49 = v10;
  sub_230031770();
  if (v2)
  {
    return sub_22FFEE60C(v51);
  }

  v17 = v47;
  v18 = v48;
  v45 = v11;
  v19 = v4;
  v58 = 0;
  v21 = v14;
  *v14 = sub_230031490();
  v14[1] = v22;
  v57 = 1;
  v14[2] = sub_2300314E0();
  v14[3] = v23;
  v56 = 2;
  sub_230018998(&qword_27DB05CA0);
  v24 = v7;
  sub_230031520();
  v44 = 0;
  v25 = v45;
  (*(v18 + 32))(v14 + v45[6], v24, v19);
  v55 = 3;
  v26 = v49;
  v27 = v44;
  v28 = sub_2300314E0();
  if (v27)
  {
    (*(v17 + 8))(v26, v50);
    v44 = v27;
    sub_22FFEE60C(v51);
    v38 = v14[1];

    v39 = v14[3];

    return (*(v18 + 8))(v14 + v45[6], v19);
  }

  else
  {
    v30 = (v14 + v25[8]);
    *v30 = v28;
    v30[1] = v29;
    v54 = 4;
    v31 = sub_2300314E0();
    v32 = (v14 + v25[9]);
    *v32 = v31;
    v32[1] = v33;
    v53 = 5;
    v34 = sub_2300314E0();
    v35 = (v14 + v25[10]);
    *v35 = v34;
    v35[1] = v36;
    v52 = 6;
    v37 = sub_2300314D0();
    v44 = 0;
    v40 = v37;
    v42 = v41;
    (*(v17 + 8))(v26, v50);
    v43 = v21 + v25[7];
    *v43 = v40;
    *(v43 + 8) = v42 & 1;
    sub_2300189DC(v21, v46);
    sub_22FFEE60C(v51);
    return sub_230018A40(v21);
  }
}

uint64_t StandaloneAppOpenSignal.debugDescription.getter()
{
  v1 = v0;
  sub_2300313E0();
  MEMORY[0x23190F560](0x3A64496D6164617BLL, 0xE900000000000020);
  MEMORY[0x23190F560](v1[2], v1[3]);
  MEMORY[0x23190F560](0x656C646E7562202CLL, 0xEC000000203A6449);
  v7 = *v0;
  v8 = v0[1];

  sub_22FFED9B8(&qword_27DB05CB8, &qword_230036AB0);
  v2 = sub_230031170();
  MEMORY[0x23190F560](v2);

  MEMORY[0x23190F560](0x7473656D6974202CLL, 0xEC0000003A706D61);
  v3 = type metadata accessor for StandaloneAppOpenSignal();
  v4 = v3[6];
  sub_230030E00();
  sub_230018998(&qword_27DB05F50);
  v5 = sub_2300316B0();
  MEMORY[0x23190F560](v5);

  MEMORY[0x23190F560](0xD000000000000015, 0x800000023003A760);
  MEMORY[0x23190F560](*(v1 + v3[8]), *(v1 + v3[8] + 8));
  MEMORY[0x23190F560](0x736572706D69202CLL, 0xEF3A64496E6F6973);
  MEMORY[0x23190F560](*(v1 + v3[9]), *(v1 + v3[9] + 8));
  MEMORY[0x23190F560](0x6E756F636361202CLL, 0xEF3A6E656B6F5474);
  MEMORY[0x23190F560](*(v1 + v3[10]), *(v1 + v3[10] + 8));
  MEMORY[0x23190F560](125, 0xE100000000000000);
  return 0;
}

uint64_t _s24PromotedContentJetClient23StandaloneAppOpenSignalV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v4 = a1[1];
  v5 = a2[1];
  if (v4)
  {
    if (!v5)
    {
      return 0;
    }

    v6 = *a1;
    v7 = *a1 == *a2 && v4 == v5;
    if (!v7 && (sub_2300316D0() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v5)
  {
    return 0;
  }

  v8 = a1[2] == a2[2] && a1[3] == a2[3];
  if (!v8 && (sub_2300316D0() & 1) == 0)
  {
    return 0;
  }

  v9 = type metadata accessor for StandaloneAppOpenSignal();
  v10 = v9[6];
  if ((sub_230030DF0() & 1) == 0)
  {
    return 0;
  }

  v11 = v9[7];
  v12 = (a1 + v11);
  v13 = *(a1 + v11 + 8);
  v14 = (a2 + v11);
  v15 = *(a2 + v11 + 8);
  if (v13)
  {
    if (v15)
    {
      goto LABEL_22;
    }

    return 0;
  }

  if (*v12 != *v14)
  {
    LOBYTE(v15) = 1;
  }

  if (v15)
  {
    return 0;
  }

LABEL_22:
  v16 = v9[8];
  v17 = *(a1 + v16);
  v18 = *(a1 + v16 + 8);
  v19 = (a2 + v16);
  v20 = v17 == *v19 && v18 == v19[1];
  if (!v20 && (sub_2300316D0() & 1) == 0)
  {
    return 0;
  }

  v21 = v9[9];
  v22 = *(a1 + v21);
  v23 = *(a1 + v21 + 8);
  v24 = (a2 + v21);
  if ((v22 != *v24 || v23 != v24[1]) && (sub_2300316D0() & 1) == 0)
  {
    return 0;
  }

  v25 = v9[10];
  v26 = *(a1 + v25);
  v27 = *(a1 + v25 + 8);
  v28 = (a2 + v25);
  if (v26 == *v28 && v27 == v28[1])
  {
    return 1;
  }

  return sub_2300316D0();
}

unint64_t sub_230018944()
{
  result = qword_27DB06700;
  if (!qword_27DB06700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB06700);
  }

  return result;
}

uint64_t sub_230018998(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_230030E00();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2300189DC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StandaloneAppOpenSignal();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_230018A40(uint64_t a1)
{
  v2 = type metadata accessor for StandaloneAppOpenSignal();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_230018AA0()
{
  result = qword_27DB06710;
  if (!qword_27DB06710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB06710);
  }

  return result;
}

unint64_t sub_230018AF8()
{
  result = qword_27DB06718;
  if (!qword_27DB06718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB06718);
  }

  return result;
}

unint64_t sub_230018B50()
{
  result = qword_27DB06720;
  if (!qword_27DB06720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB06720);
  }

  return result;
}

void sub_230018BA4()
{
  sub_22FFF2FC4(319, &qword_2814942D0);
  if (v0 <= 0x3F)
  {
    sub_230030E00();
    if (v1 <= 0x3F)
    {
      sub_22FFF2FC4(319, &qword_2814942A8);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t XPCIntentMessage.Builder.__allocating_init()()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  v4 = OBJC_IVAR____TtCV24PromotedContentJetClient16XPCIntentMessage7Builder_message;
  v5 = type metadata accessor for IntentMessage();
  (*(*(v5 - 8) + 56))(v3 + v4, 1, 1, v5);
  *(v3 + OBJC_IVAR____TtCV24PromotedContentJetClient16XPCIntentMessage7Builder_dependencyProvider) = 0;
  sub_230030F70();
  return v3;
}

uint64_t XPCIntentMessage.dependencyProvider.getter@<X0>(void *a1@<X8>)
{
  *a1 = *(v1 + *(type metadata accessor for XPCIntentMessage(0) + 24));
}

uint64_t XPCIntentMessage.signpostID.getter()
{
  v1 = *(v0 + *(type metadata accessor for XPCIntentMessage(0) + 20));

  return MEMORY[0x282200CE0](v1);
}

uint64_t sub_230018DD0()
{
  v1 = 0x6C61767265746E69;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000012;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6567617373656DLL;
  }
}

uint64_t sub_230018E34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_23001A29C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_230018E5C(uint64_t a1)
{
  v2 = sub_2300194E8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_230018E98(uint64_t a1)
{
  v2 = sub_2300194E8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t XPCIntentMessage.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_22FFED9B8(&qword_27DB06728, &qword_230036D10);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v14[-v8];
  v10 = a1[4];
  sub_22FFEDA4C(a1, a1[3]);
  sub_2300194E8();
  sub_230031780();
  v17 = 0;
  type metadata accessor for IntentMessage();
  sub_230019590(&qword_281494158);
  sub_230031640();
  if (!v2)
  {
    v11 = type metadata accessor for XPCIntentMessage(0);
    v12 = *(v3 + *(v11 + 20));
    v16 = 1;
    sub_230031690();
    v15 = *(v3 + *(v11 + 24));
    v14[15] = 2;
    sub_23001953C();

    sub_230031640();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t XPCIntentMessage.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a2;
  v4 = type metadata accessor for IntentMessage();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v24 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22FFED9B8(&qword_27DB06730, &unk_230036D18);
  v22 = *(v7 - 8);
  v23 = v7;
  v8 = *(v22 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v20 - v9;
  v11 = type metadata accessor for XPCIntentMessage(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[4];
  sub_22FFEDA4C(a1, a1[3]);
  sub_2300194E8();
  sub_230031770();
  if (v2)
  {
    return sub_22FFEE60C(a1);
  }

  v16 = v22;
  v17 = v14;
  v28 = 0;
  sub_230019590(&qword_281494150);
  v18 = v23;
  sub_230031520();
  sub_2300195D4(v24, v17);
  v27 = 1;
  *(v17 + *(v11 + 20)) = sub_230031570();
  v26 = 2;
  sub_230019638();
  sub_230031520();
  (*(v16 + 8))(v10, v18);
  *(v17 + *(v11 + 24)) = v25;
  sub_23000E540(v17, v21, type metadata accessor for XPCIntentMessage);
  sub_22FFEE60C(a1);
  return sub_23001968C(v17, type metadata accessor for XPCIntentMessage);
}

uint64_t XPCIntentMessage.Builder.init()()
{
  v1 = OBJC_IVAR____TtCV24PromotedContentJetClient16XPCIntentMessage7Builder_message;
  v2 = type metadata accessor for IntentMessage();
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  *(v0 + OBJC_IVAR____TtCV24PromotedContentJetClient16XPCIntentMessage7Builder_dependencyProvider) = 0;
  sub_230030F70();
  return v0;
}

unint64_t sub_2300194E8()
{
  result = qword_281494C48[0];
  if (!qword_281494C48[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_281494C48);
  }

  return result;
}

unint64_t sub_23001953C()
{
  result = qword_281493FB8;
  if (!qword_281493FB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281493FB8);
  }

  return result;
}

uint64_t sub_230019590(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for IntentMessage();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2300195D4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IntentMessage();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_230019638()
{
  result = qword_281493FB0;
  if (!qword_281493FB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281493FB0);
  }

  return result;
}

uint64_t sub_23001968C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2300196EC@<X0>(uint64_t a1@<X8>)
{
  v26 = a1;
  v2 = sub_230030F80();
  v25 = *(v2 - 8);
  v3 = *(v25 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_22FFED9B8(&qword_27DB06470, &qword_230035B50);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v24 - v8;
  v10 = type metadata accessor for IntentMessage();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = OBJC_IVAR____TtCV24PromotedContentJetClient16XPCIntentMessage7Builder_message;
  swift_beginAccess();
  sub_23001A3C4(v1 + v15, v9);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_230019AA0(v9);
    sub_23001A434();
    swift_allocError();
    *v16 = 0;
    return swift_willThrow();
  }

  else
  {
    sub_2300195D4(v9, v14);
    v18 = *(v1 + OBJC_IVAR____TtCV24PromotedContentJetClient16XPCIntentMessage7Builder_dependencyProvider);
    if (v18)
    {
      v24 = type metadata accessor for IntentMessage;
      v19 = v26;
      sub_23000E540(v14, v26, type metadata accessor for IntentMessage);
      v20 = OBJC_IVAR____TtCV24PromotedContentJetClient16XPCIntentMessage7Builder_signpostID;
      swift_beginAccess();
      v21 = v25;
      (*(v25 + 16))(v5, v1 + v20, v2);

      v22 = sub_230030F60();
      (*(v21 + 8))(v5, v2);
      sub_23001968C(v14, v24);
      result = type metadata accessor for XPCIntentMessage(0);
      *(v19 + *(result + 20)) = v22;
      *(v19 + *(result + 24)) = v18;
    }

    else
    {
      sub_23001A434();
      swift_allocError();
      *v23 = 1;
      swift_willThrow();
      return sub_23001968C(v14, type metadata accessor for IntentMessage);
    }
  }

  return result;
}

uint64_t XPCIntentMessage.Builder.deinit()
{
  sub_230019AA0(v0 + OBJC_IVAR____TtCV24PromotedContentJetClient16XPCIntentMessage7Builder_message);
  v1 = *(v0 + OBJC_IVAR____TtCV24PromotedContentJetClient16XPCIntentMessage7Builder_dependencyProvider);

  v2 = OBJC_IVAR____TtCV24PromotedContentJetClient16XPCIntentMessage7Builder_signpostID;
  v3 = sub_230030F80();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  return v0;
}

uint64_t sub_230019AA0(uint64_t a1)
{
  v2 = sub_22FFED9B8(&qword_27DB06470, &qword_230035B50);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t XPCIntentMessage.Builder.__deallocating_deinit()
{
  sub_230019AA0(v0 + OBJC_IVAR____TtCV24PromotedContentJetClient16XPCIntentMessage7Builder_message);
  v1 = *(v0 + OBJC_IVAR____TtCV24PromotedContentJetClient16XPCIntentMessage7Builder_dependencyProvider);

  v2 = OBJC_IVAR____TtCV24PromotedContentJetClient16XPCIntentMessage7Builder_signpostID;
  v3 = sub_230030F80();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v4, v5);
}

uint64_t XPCIntentMessage.Builder.Error.hashValue.getter()
{
  v1 = *v0;
  sub_230031740();
  MEMORY[0x23190FB00](v1);
  return sub_230031760();
}

uint64_t XPCIntentMessage.Builder.measure(id:)(uint64_t a1)
{
  v3 = sub_230030F80();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v7, a1, v3);
  v8 = OBJC_IVAR____TtCV24PromotedContentJetClient16XPCIntentMessage7Builder_signpostID;
  swift_beginAccess();
  (*(v4 + 40))(v1 + v8, v7, v3);
  swift_endAccess();
}

uint64_t static XPCIntentMessage.Builder.measure(id:)(uint64_t a1)
{
  v2 = sub_230030F80();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for XPCIntentMessage.Builder(0);
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  v10 = swift_allocObject();
  v11 = OBJC_IVAR____TtCV24PromotedContentJetClient16XPCIntentMessage7Builder_message;
  v12 = type metadata accessor for IntentMessage();
  (*(*(v12 - 8) + 56))(v10 + v11, 1, 1, v12);
  *(v10 + OBJC_IVAR____TtCV24PromotedContentJetClient16XPCIntentMessage7Builder_dependencyProvider) = 0;
  v13 = OBJC_IVAR____TtCV24PromotedContentJetClient16XPCIntentMessage7Builder_signpostID;
  sub_230030F70();
  (*(v3 + 16))(v6, a1, v2);
  swift_beginAccess();
  (*(v3 + 40))(v10 + v13, v6, v2);
  swift_endAccess();
  return v10;
}

unint64_t sub_230019F14()
{
  result = qword_27DB06738;
  if (!qword_27DB06738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB06738);
  }

  return result;
}

uint64_t sub_230019F90()
{
  result = type metadata accessor for IntentMessage();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_23001A01C()
{
  sub_23001A11C();
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    v2 = sub_230030F80();
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_23001A11C()
{
  if (!qword_281494148)
  {
    type metadata accessor for IntentMessage();
    v0 = sub_230031380();
    if (!v1)
    {
      atomic_store(v0, &qword_281494148);
    }
  }
}

unint64_t sub_23001A198()
{
  result = qword_27DB06740;
  if (!qword_27DB06740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB06740);
  }

  return result;
}

unint64_t sub_23001A1F0()
{
  result = qword_281494C38;
  if (!qword_281494C38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281494C38);
  }

  return result;
}

unint64_t sub_23001A248()
{
  result = qword_281494C40;
  if (!qword_281494C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281494C40);
  }

  return result;
}

uint64_t sub_23001A29C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6567617373656DLL && a2 == 0xE700000000000000;
  if (v4 || (sub_2300316D0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6C61767265746E69 && a2 == 0xEA00000000004449 || (sub_2300316D0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000012 && 0x800000023003A7D0 == a2)
  {

    return 2;
  }

  else
  {
    v6 = sub_2300316D0();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_23001A3C4(uint64_t a1, uint64_t a2)
{
  v4 = sub_22FFED9B8(&qword_27DB06470, &qword_230035B50);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_23001A434()
{
  result = qword_27DB06748;
  if (!qword_27DB06748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB06748);
  }

  return result;
}

uint64_t ActionStoreAdInstance.impressionId.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t ActionStoreAdInstance.adMetadata.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t ActionStoreAdInstance.additionalFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for ActionStoreAdInstance() + 24);

  return sub_22FFF32CC(v3, a1);
}

uint64_t type metadata accessor for ActionStoreAdInstance()
{
  result = qword_281494A48;
  if (!qword_281494A48)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

PromotedContentJetClient::ActionStoreAdInstance::CodingKeys_optional __swiftcall ActionStoreAdInstance.CodingKeys.init(stringValue:)(Swift::String stringValue)
{
  v2 = v1;
  v3 = sub_230031460();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t ActionStoreAdInstance.CodingKeys.stringValue.getter()
{
  v1 = 0x61646174654D6461;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000010;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6973736572706D69;
  }
}

uint64_t sub_23001A658(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x61646174654D6461;
  v4 = 0xEA00000000006174;
  v5 = 0x8000000230039F80;
  if (v2 != 1)
  {
    v3 = 0xD000000000000010;
    v4 = 0x8000000230039F80;
  }

  if (*a1)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0x6973736572706D69;
  }

  if (v2)
  {
    v7 = v4;
  }

  else
  {
    v7 = 0xEC00000064496E6FLL;
  }

  v8 = 0x61646174654D6461;
  if (*a2 == 1)
  {
    v5 = 0xEA00000000006174;
  }

  else
  {
    v8 = 0xD000000000000010;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x6973736572706D69;
  }

  if (*a2)
  {
    v10 = v5;
  }

  else
  {
    v10 = 0xEC00000064496E6FLL;
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

uint64_t sub_23001A760()
{
  v1 = *v0;
  sub_230031740();
  sub_2300311A0();

  return sub_230031760();
}

uint64_t sub_23001A814()
{
  *v0;
  *v0;
  sub_2300311A0();
}

uint64_t sub_23001A8B4()
{
  v1 = *v0;
  sub_230031740();
  sub_2300311A0();

  return sub_230031760();
}

void sub_23001A970(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEC00000064496E6FLL;
  v4 = 0xEA00000000006174;
  v5 = 0x61646174654D6461;
  if (v2 != 1)
  {
    v5 = 0xD000000000000010;
    v4 = 0x8000000230039F80;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6973736572706D69;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_23001A9E0()
{
  v1 = 0x61646174654D6461;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000010;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6973736572706D69;
  }
}

uint64_t sub_23001AA84(uint64_t a1)
{
  v2 = sub_23001B6C0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23001AAC0(uint64_t a1)
{
  v2 = sub_23001B6C0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ActionStoreAdInstance.init(impressionId:adMetadata:additionalFields:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  *a6 = a1;
  a6[1] = a2;
  a6[2] = a3;
  a6[3] = a4;
  v7 = a6 + *(type metadata accessor for ActionStoreAdInstance() + 24);

  return sub_22FFF3A24(a5, v7);
}

uint64_t ActionStoreAdInstance.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_22FFED9B8(&qword_27DB06750, &qword_230036FB8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v17[-v8];
  v10 = a1[4];
  sub_22FFEDA4C(a1, a1[3]);
  sub_23001B6C0();
  sub_230031780();
  v11 = *v3;
  v12 = v3[1];
  v17[15] = 0;
  sub_2300315B0();
  if (!v2)
  {
    v14 = v3[2];
    v15 = v3[3];
    v17[14] = 1;
    sub_2300315B0();
    v16 = *(type metadata accessor for ActionStoreAdInstance() + 24);
    v17[13] = 2;
    type metadata accessor for APJSValue();
    sub_230001544(&qword_27DB05C90);
    sub_2300315D0();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t ActionStoreAdInstance.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v4 = sub_22FFED9B8(&qword_27DB05C78, &qword_230032800);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v22 - v6;
  v8 = sub_22FFED9B8(&qword_27DB06760, &unk_230036FC0);
  v25 = *(v8 - 8);
  v26 = v8;
  v9 = *(v25 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = v22 - v10;
  v12 = type metadata accessor for ActionStoreAdInstance();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v15 = (v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = a1[4];
  sub_22FFEDA4C(a1, a1[3]);
  sub_23001B6C0();
  sub_230031770();
  if (v2)
  {
    return sub_22FFEE60C(a1);
  }

  v23 = v12;
  v17 = v25;
  v29 = 0;
  *v15 = sub_230031490();
  v15[1] = v18;
  v22[1] = v18;
  v28 = 1;
  v15[2] = sub_230031490();
  v15[3] = v19;
  type metadata accessor for APJSValue();
  v27 = 2;
  sub_230001544(&qword_27DB05CA8);
  v20 = v26;
  sub_2300314B0();
  (*(v17 + 8))(v11, v20);
  sub_22FFF3A24(v7, v15 + *(v23 + 24));
  sub_23001B714(v15, v24);
  sub_22FFEE60C(a1);
  return sub_23001B98C(v15, type metadata accessor for ActionStoreAdInstance);
}

uint64_t ActionStoreAdInstance.debugDescription.getter()
{
  v1 = sub_22FFED9B8(&qword_27DB05C78, &qword_230032800);
  v2 = *(*(v1 - 8) + 64);
  v3 = MEMORY[0x28223BE20](v1);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = (&v18 - v6);
  v20 = 0;
  v21 = 0xE000000000000000;
  sub_2300313E0();

  v20 = 0x2069202020200A7BLL;
  v21 = 0xEA0000000000203ALL;
  v8 = v0[1];
  v18 = *v0;
  v19 = v8;

  sub_22FFED9B8(&qword_27DB05CB8, &qword_230036AB0);
  v9 = sub_230031170();
  MEMORY[0x23190F560](v9);

  MEMORY[0x23190F560](0x3A6D61202020200ALL, 0xE900000000000020);
  v10 = v0[3];
  v18 = v0[2];
  v19 = v10;

  v11 = sub_230031170();
  MEMORY[0x23190F560](v11);

  MEMORY[0x23190F560](0x3A6664202020200ALL, 0xE900000000000020);
  v12 = type metadata accessor for ActionStoreAdInstance();
  sub_22FFF32CC(v0 + *(v12 + 24), v5);
  v13 = type metadata accessor for APJSValue();
  v14 = *(v13 - 8);
  v15 = *(v14 + 48);
  if (v15(v5, 1, v13) == 1)
  {
    *v7 = 7104878;
    v7[1] = 0xE300000000000000;
    swift_storeEnumTagMultiPayload();
    (*(v14 + 56))(v7, 0, 1, v13);
    if (v15(v5, 1, v13) != 1)
    {
      sub_22FFF31B4(v5, &qword_27DB05C78, &qword_230032800);
    }
  }

  else
  {
    sub_22FFF2D20(v5, v7);
    (*(v14 + 56))(v7, 0, 1, v13);
  }

  v16 = sub_230031170();
  MEMORY[0x23190F560](v16);

  MEMORY[0x23190F560](32010, 0xE200000000000000);
  return v20;
}

BOOL _s24PromotedContentJetClient21ActionStoreAdInstanceV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v4 = type metadata accessor for APJSValue();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = (&v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = sub_22FFED9B8(&qword_27DB05C78, &qword_230032800);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v26 - v11;
  v13 = sub_22FFED9B8(&qword_27DB05CD8, qword_2300327E0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v26 - v15;
  v17 = a1[1];
  v18 = a2[1];
  if (v17)
  {
    if (!v18 || (*a1 != *a2 || v17 != v18) && (sub_2300316D0() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v18)
  {
    return 0;
  }

  v19 = a1[3];
  v20 = a2[3];
  if (v19)
  {
    if (!v20 || (a1[2] != a2[2] || v19 != v20) && (sub_2300316D0() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v20)
  {
    return 0;
  }

  v21 = *(type metadata accessor for ActionStoreAdInstance() + 24);
  v22 = *(v13 + 48);
  sub_22FFF32CC(a1 + v21, v16);
  sub_22FFF32CC(a2 + v21, &v16[v22]);
  v23 = *(v5 + 48);
  if (v23(v16, 1, v4) == 1)
  {
    if (v23(&v16[v22], 1, v4) == 1)
    {
      sub_22FFF31B4(v16, &qword_27DB05C78, &qword_230032800);
      return 1;
    }

    goto LABEL_20;
  }

  sub_22FFF32CC(v16, v12);
  if (v23(&v16[v22], 1, v4) == 1)
  {
    sub_23001B98C(v12, type metadata accessor for APJSValue);
LABEL_20:
    sub_22FFF31B4(v16, &qword_27DB05CD8, qword_2300327E0);
    return 0;
  }

  sub_22FFF2D20(&v16[v22], v8);
  v25 = _s24PromotedContentJetClient9APJSValueO2eeoiySbAC_ACtFZ_0(v12, v8);
  sub_23001B98C(v8, type metadata accessor for APJSValue);
  sub_23001B98C(v12, type metadata accessor for APJSValue);
  sub_22FFF31B4(v16, &qword_27DB05C78, &qword_230032800);
  return (v25 & 1) != 0;
}

unint64_t sub_23001B6C0()
{
  result = qword_27DB06758;
  if (!qword_27DB06758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB06758);
  }

  return result;
}

uint64_t sub_23001B714(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ActionStoreAdInstance();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_23001B77C()
{
  result = qword_27DB06768;
  if (!qword_27DB06768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB06768);
  }

  return result;
}

unint64_t sub_23001B7D4()
{
  result = qword_27DB06770;
  if (!qword_27DB06770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB06770);
  }

  return result;
}

unint64_t sub_23001B82C()
{
  result = qword_27DB06778;
  if (!qword_27DB06778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB06778);
  }

  return result;
}

void sub_23001B8A8()
{
  sub_23001B92C();
  if (v0 <= 0x3F)
  {
    sub_22FFF4640();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_23001B92C()
{
  if (!qword_2814942D0)
  {
    v0 = sub_230031380();
    if (!v1)
    {
      atomic_store(v0, &qword_2814942D0);
    }
  }
}

uint64_t sub_23001B98C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_23001B9F4()
{
  v1 = 0x726F727245736ALL;
  if (*v0 != 1)
  {
    v1 = 0x726568746FLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x4D6E6F6973726576;
  }
}

uint64_t sub_23001BA58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_23001D7C8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_23001BA80(uint64_t a1)
{
  v2 = sub_23001C0A8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23001BABC(uint64_t a1)
{
  v2 = sub_23001C0A8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23001BAF8(uint64_t a1)
{
  v2 = sub_23001C1A4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23001BB34(uint64_t a1)
{
  v2 = sub_23001C1A4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23001BB70(uint64_t a1)
{
  v2 = sub_23001C0FC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23001BBAC(uint64_t a1)
{
  v2 = sub_23001C0FC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23001BBE8(uint64_t a1)
{
  v2 = sub_23001C1F8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23001BC24(uint64_t a1)
{
  v2 = sub_23001C1F8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t JetServiceError.encode(to:)(void *a1)
{
  v3 = sub_22FFED9B8(&qword_27DB06780, &qword_230037200);
  v33 = *(v3 - 8);
  v34 = v3;
  v4 = *(v33 + 64);
  MEMORY[0x28223BE20](v3);
  v32 = &v28 - v5;
  v6 = sub_22FFED9B8(&qword_27DB06788, &qword_230037208);
  v30 = *(v6 - 8);
  v31 = v6;
  v7 = *(v30 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v28 - v8;
  v10 = sub_22FFED9B8(&qword_27DB06790, &qword_230037210);
  v28 = *(v10 - 8);
  v29 = v10;
  v11 = *(v28 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v28 - v12;
  v40 = sub_22FFED9B8(&qword_27DB06798, &qword_230037218);
  v14 = *(v40 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v40);
  v17 = &v28 - v16;
  v18 = v1[1];
  v35 = *v1;
  v36 = v18;
  v19 = v1[3];
  v37 = v1[2];
  v38 = v19;
  v39 = v1[4];
  v20 = *(v1 + 40);
  v21 = a1[4];
  sub_22FFEDA4C(a1, a1[3]);
  sub_23001C0A8();
  sub_230031780();
  if (!v20)
  {
    LOBYTE(v41) = 1;
    sub_23001C1A4();
    v23 = v40;
    sub_2300315A0();
    v41 = v35;
    v42 = v36;
    v43 = v37;
    v44 = v38;
    v45 = v39;
    sub_23001C150();
    v25 = v31;
    sub_230031640();
    (*(v30 + 8))(v9, v25);
    return (*(v14 + 8))(v17, v23);
  }

  if (v20 == 1)
  {
    LOBYTE(v41) = 2;
    sub_23001C0FC();
    v22 = v32;
    v23 = v40;
    sub_2300315A0();
    v41 = v35;
    v42 = v36;
    v43 = v37;
    v44 = v38;
    v45 = v39;
    sub_23001C150();
    v24 = v34;
    sub_230031640();
    (*(v33 + 8))(v22, v24);
    return (*(v14 + 8))(v17, v23);
  }

  LOBYTE(v41) = 0;
  sub_23001C1F8();
  v27 = v40;
  sub_2300315A0();
  (*(v28 + 8))(v13, v29);
  return (*(v14 + 8))(v17, v27);
}

unint64_t sub_23001C0A8()
{
  result = qword_27DB067A0;
  if (!qword_27DB067A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB067A0);
  }

  return result;
}

unint64_t sub_23001C0FC()
{
  result = qword_27DB067A8;
  if (!qword_27DB067A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB067A8);
  }

  return result;
}

unint64_t sub_23001C150()
{
  result = qword_27DB067B0;
  if (!qword_27DB067B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB067B0);
  }

  return result;
}

unint64_t sub_23001C1A4()
{
  result = qword_27DB067B8;
  if (!qword_27DB067B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB067B8);
  }

  return result;
}

unint64_t sub_23001C1F8()
{
  result = qword_27DB067C0;
  if (!qword_27DB067C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB067C0);
  }

  return result;
}

uint64_t JetServiceError.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v48 = a2;
  v44 = sub_22FFED9B8(&qword_27DB067C8, &qword_230037220);
  v47 = *(v44 - 8);
  v3 = *(v47 + 64);
  MEMORY[0x28223BE20](v44);
  v50 = &v44 - v4;
  v5 = sub_22FFED9B8(&qword_27DB067D0, &qword_230037228);
  v6 = *(v5 - 8);
  v45 = v5;
  v46 = v6;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v44 - v8;
  v10 = sub_22FFED9B8(&qword_27DB067D8, &qword_230037230);
  v49 = *(v10 - 8);
  v11 = *(v49 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v44 - v12;
  v14 = sub_22FFED9B8(&qword_27DB067E0, &unk_230037238);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v44 - v17;
  v19 = a1[3];
  v20 = a1[4];
  v60 = a1;
  sub_22FFEDA4C(a1, v19);
  sub_23001C0A8();
  v21 = v51;
  sub_230031770();
  if (!v21)
  {
    v51 = 0;
    v23 = v49;
    v22 = v50;
    v24 = sub_230031580();
    v25 = (2 * *(v24 + 16)) | 1;
    v56 = v24;
    v57 = v24 + 32;
    v58 = 0;
    v59 = v25;
    v26 = sub_22FFEE82C();
    if (v26 == 3 || v58 != v59 >> 1)
    {
      v35 = sub_230031400();
      swift_allocError();
      v36 = v18;
      v38 = v37;
      v39 = *(sub_22FFED9B8(&qword_27DB05B98, &qword_230032EB0) + 48);
      *v38 = &type metadata for JetServiceError;
      sub_230031480();
      sub_2300313F0();
      (*(*(v35 - 8) + 104))(v38, *MEMORY[0x277D84160], v35);
      swift_willThrow();
      (*(v15 + 8))(v36, v14);
    }

    else
    {
      if (v26)
      {
        if (v26 == 1)
        {
          LOBYTE(v52) = 1;
          sub_23001C1A4();
          v27 = v51;
          sub_230031470();
          if (!v27)
          {
            sub_23001C8A4();
            v28 = v45;
            sub_230031520();
            (*(v46 + 8))(v9, v28);
            (*(v15 + 8))(v18, v14);
            swift_unknownObjectRelease();
            v29 = 0;
            v30 = v52;
            v31 = v53;
            v32 = v54;
            v33 = v55;
            v34 = v48;
LABEL_16:
            *v34 = v30;
            *(v34 + 16) = v31;
            *(v34 + 24) = v32;
            *(v34 + 32) = v33;
            *(v34 + 40) = v29;
            return sub_22FFEE60C(v60);
          }
        }

        else
        {
          LOBYTE(v52) = 2;
          sub_23001C0FC();
          v42 = v51;
          sub_230031470();
          v34 = v48;
          if (!v42)
          {
            sub_23001C8A4();
            v43 = v44;
            sub_230031520();
            (*(v47 + 8))(v22, v43);
            (*(v15 + 8))(v18, v14);
            swift_unknownObjectRelease();
            v30 = v52;
            v31 = v53;
            v32 = v54;
            v29 = 1;
            v33 = v55;
            goto LABEL_16;
          }
        }
      }

      else
      {
        LOBYTE(v52) = 0;
        sub_23001C1F8();
        v41 = v51;
        sub_230031470();
        if (!v41)
        {
          (*(v23 + 8))(v13, v10);
          (*(v15 + 8))(v18, v14);
          swift_unknownObjectRelease();
          v31 = 0;
          v32 = 0;
          v33 = 0;
          v30 = 0uLL;
          v29 = 2;
          v34 = v48;
          goto LABEL_16;
        }
      }

      (*(v15 + 8))(v18, v14);
    }

    swift_unknownObjectRelease();
  }

  return sub_22FFEE60C(v60);
}

unint64_t sub_23001C8A4()
{
  result = qword_27DB067E8;
  if (!qword_27DB067E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB067E8);
  }

  return result;
}

unint64_t JetServiceError.debugDescription.getter()
{
  v1 = *v0;
  v2 = v0[3];
  v3 = v0[4];
  if (!*(v0 + 40))
  {
    sub_2300313E0();

    v11 = 0xD00000000000001ELL;
    v9 = sub_2300316B0();
    MEMORY[0x23190F560](v9);

    MEMORY[0x23190F560](0x67617373656D202CLL, 0xEB00000000203A65);
    MEMORY[0x23190F560](v2, v3);
    v7 = 41;
    v8 = 0xE100000000000000;
    goto LABEL_5;
  }

  if (*(v0 + 40) == 1)
  {
    v5 = v0[1];
    v4 = v0[2];
    v11 = 0;
    sub_2300313E0();
    MEMORY[0x23190F560](0xD00000000000001CLL, 0x800000023003A7F0);
    v6 = sub_2300316B0();
    MEMORY[0x23190F560](v6);

    MEMORY[0x23190F560](0x67617373656D202CLL, 0xEB00000000203A65);
    MEMORY[0x23190F560](v2, v3);
    MEMORY[0x23190F560](0x6E69616D6F64202CLL, 0xEA0000000000203ALL);
    v7 = v5;
    v8 = v4;
LABEL_5:
    MEMORY[0x23190F560](v7, v8);
    return v11;
  }

  return 0xD00000000000001FLL;
}

uint64_t JetServiceError.ErrorContainer.domain.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

uint64_t JetServiceError.ErrorContainer.message.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return v1;
}

void __swiftcall JetServiceError.ErrorContainer.init(code:domain:message:)(PromotedContentJetClient::JetServiceError::ErrorContainer *__return_ptr retstr, Swift::Int code, Swift::String domain, Swift::String message)
{
  retstr->code = code;
  retstr->domain = domain;
  retstr->message = message;
}

uint64_t sub_23001CB94()
{
  v1 = 0x6E69616D6F64;
  if (*v0 != 1)
  {
    v1 = 0x6567617373656DLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1701080931;
  }
}

uint64_t sub_23001CBE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_23001D8E4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_23001CC0C(uint64_t a1)
{
  v2 = sub_23001CE44();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23001CC48(uint64_t a1)
{
  v2 = sub_23001CE44();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t JetServiceError.ErrorContainer.encode(to:)(void *a1)
{
  v4 = sub_22FFED9B8(&qword_27DB067F0, &qword_230037248);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v14 - v7;
  v10 = *v1;
  v9 = v1[1];
  v11 = v1[3];
  v14[2] = v1[2];
  v14[3] = v9;
  v14[0] = v1[4];
  v14[1] = v11;
  v12 = a1[4];
  sub_22FFEDA4C(a1, a1[3]);
  sub_23001CE44();
  sub_230031780();
  v17 = 0;
  sub_230031630();
  if (v2)
  {
    return (*(v5 + 8))(v8, v4);
  }

  v16 = 1;
  sub_230031600();
  v15 = 2;
  sub_230031600();
  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_23001CE44()
{
  result = qword_27DB067F8;
  if (!qword_27DB067F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB067F8);
  }

  return result;
}

uint64_t JetServiceError.ErrorContainer.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_22FFED9B8(&qword_27DB06800, &qword_230037250);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v22 - v8;
  v10 = a1[4];
  sub_22FFEDA4C(a1, a1[3]);
  sub_23001CE44();
  sub_230031770();
  if (v2)
  {
    return sub_22FFEE60C(a1);
  }

  v26 = 0;
  v11 = sub_230031510();
  v25 = 1;
  v12 = sub_2300314E0();
  v14 = v13;
  v23 = v12;
  v24 = 2;
  v15 = sub_2300314E0();
  v17 = v16;
  v18 = *(v6 + 8);
  v22 = v15;
  v18(v9, v5);
  v19 = v22;
  v20 = v23;
  *a2 = v11;
  a2[1] = v20;
  a2[2] = v14;
  a2[3] = v19;
  a2[4] = v17;

  sub_22FFEE60C(a1);
}

uint64_t sub_23001D0F8(uint64_t a1)
{
  if ((*(a1 + 40) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 40) & 3;
  }
}

__n128 sub_23001D114(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_23001D128(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 41))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 40);
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

uint64_t sub_23001D170(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 40) = -a2;
    }
  }

  return result;
}

uint64_t sub_23001D1C0(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    LOBYTE(a2) = 2;
  }

  *(result + 40) = a2;
  return result;
}

__n128 sub_23001D1F4(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_23001D208(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_23001D250(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_23001D2FC()
{
  result = qword_27DB06808;
  if (!qword_27DB06808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB06808);
  }

  return result;
}

unint64_t sub_23001D354()
{
  result = qword_27DB06810;
  if (!qword_27DB06810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB06810);
  }

  return result;
}

unint64_t sub_23001D3AC()
{
  result = qword_27DB06818;
  if (!qword_27DB06818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB06818);
  }

  return result;
}

unint64_t sub_23001D404()
{
  result = qword_27DB06820;
  if (!qword_27DB06820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB06820);
  }

  return result;
}

unint64_t sub_23001D45C()
{
  result = qword_27DB06828;
  if (!qword_27DB06828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB06828);
  }

  return result;
}

unint64_t sub_23001D4B4()
{
  result = qword_27DB06830;
  if (!qword_27DB06830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB06830);
  }

  return result;
}

unint64_t sub_23001D50C()
{
  result = qword_27DB06838;
  if (!qword_27DB06838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB06838);
  }

  return result;
}

unint64_t sub_23001D564()
{
  result = qword_27DB06840;
  if (!qword_27DB06840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB06840);
  }

  return result;
}

unint64_t sub_23001D5BC()
{
  result = qword_27DB06848;
  if (!qword_27DB06848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB06848);
  }

  return result;
}

unint64_t sub_23001D614()
{
  result = qword_27DB06850;
  if (!qword_27DB06850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB06850);
  }

  return result;
}

unint64_t sub_23001D66C()
{
  result = qword_27DB06858;
  if (!qword_27DB06858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB06858);
  }

  return result;
}

unint64_t sub_23001D6C4()
{
  result = qword_27DB06860;
  if (!qword_27DB06860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB06860);
  }

  return result;
}

unint64_t sub_23001D71C()
{
  result = qword_27DB06868;
  if (!qword_27DB06868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB06868);
  }

  return result;
}

unint64_t sub_23001D774()
{
  result = qword_27DB06870;
  if (!qword_27DB06870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB06870);
  }

  return result;
}

uint64_t sub_23001D7C8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4D6E6F6973726576 && a2 == 0xEF686374616D7369;
  if (v4 || (sub_2300316D0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x726F727245736ALL && a2 == 0xE700000000000000 || (sub_2300316D0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x726568746FLL && a2 == 0xE500000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_2300316D0();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_23001D8E4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701080931 && a2 == 0xE400000000000000;
  if (v3 || (sub_2300316D0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E69616D6F64 && a2 == 0xE600000000000000 || (sub_2300316D0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6567617373656DLL && a2 == 0xE700000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_2300316D0();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t AppStoreInstallationSignal.shortDescription.getter()
{
  sub_2300313E0();
  MEMORY[0x23190F560](0x3A64496D6164617BLL, 0xE900000000000020);
  v1 = type metadata accessor for AppStoreInstallationSignal();
  MEMORY[0x23190F560](*(v0 + v1[9]), *(v0 + v1[9] + 8));
  MEMORY[0x23190F560](0x3A6573616870202CLL, 0xE900000000000020);
  v6 = *(v0 + v1[6]);
  v2 = sub_2300316B0();
  MEMORY[0x23190F560](v2);

  MEMORY[0x23190F560](0xD000000000000011, 0x800000023003A850);
  LODWORD(v6) = *(v0 + v1[7]);
  v3 = sub_2300316B0();
  MEMORY[0x23190F560](v3);

  MEMORY[0x23190F560](0x6C6174736E69202CLL, 0xEF203A657079546CLL);
  LODWORD(v6) = *(v0 + v1[12]);
  v4 = sub_2300316B0();
  MEMORY[0x23190F560](v4);

  MEMORY[0x23190F560](125, 0xE100000000000000);
  return HIDWORD(v6);
}

uint64_t type metadata accessor for AppStoreInstallationSignal()
{
  result = qword_2814947A8;
  if (!qword_2814947A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t AppStoreInstallationSignal.machTimestamp.getter()
{
  v1 = (v0 + *(type metadata accessor for AppStoreInstallationSignal() + 20));
  result = *v1;
  v3 = *(v1 + 8);
  return result;
}

uint64_t AppStoreInstallationSignal.bundleId.getter()
{
  v1 = (v0 + *(type metadata accessor for AppStoreInstallationSignal() + 32));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t AppStoreInstallationSignal.itemId.getter()
{
  v1 = (v0 + *(type metadata accessor for AppStoreInstallationSignal() + 36));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t AppStoreInstallationSignal.commerceTimestamp.getter()
{
  v1 = (v0 + *(type metadata accessor for AppStoreInstallationSignal() + 52));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t AppStoreInstallationSignal.accountToken.getter()
{
  v1 = (v0 + *(type metadata accessor for AppStoreInstallationSignal() + 56));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t AppStoreInstallationSignal.proofOfPurchase.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for AppStoreInstallationSignal() + 60);
  v4 = *(v3 + 64);
  v7 = *(v3 + 16);
  v6 = *(v3 + 32);
  v13 = *(v3 + 48);
  v5 = v13;
  v14 = v4;
  v15 = *(v3 + 80);
  v8 = v15;
  v12[1] = v7;
  v12[2] = v6;
  v12[0] = *v3;
  v9 = v12[0];
  *(a1 + 32) = v6;
  *(a1 + 48) = v5;
  *(a1 + 64) = v4;
  *(a1 + 80) = v8;
  *a1 = v9;
  *(a1 + 16) = v7;
  return sub_22FFF0DD0(v12, v11, &qword_27DB06878, &qword_230037928);
}

unint64_t AppStoreInstallationSignal.reportingConversionTypeValue.getter()
{
  v1 = (v0 + *(type metadata accessor for AppStoreInstallationSignal() + 64));
  if ((v1[1] & 1) != 0 || (v2 = *v1, v2 == -1))
  {
    v2 = 0;
    v3 = 1;
  }

  else
  {
    v3 = 0;
  }

  return v2 | (v3 << 32);
}

PromotedContentJetClient::AppStoreInstallationSignal::CodingKeys_optional __swiftcall AppStoreInstallationSignal.CodingKeys.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_230031460();

  v5 = 13;
  if (v3 < 0xD)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

PromotedContentJetClient::AppStoreInstallationSignal::CodingKeys_optional __swiftcall AppStoreInstallationSignal.CodingKeys.init(stringValue:)(Swift::String stringValue)
{
  v2 = v1;
  result.value = AppStoreInstallationSignal.CodingKeys.init(rawValue:)(stringValue).value;
  *v2 = v4;
  return result;
}

unint64_t sub_23001DFE8()
{
  result = 0x6D617473656D6974;
  switch(*v0)
  {
    case 1:
      result = 0x6573616870;
      break;
    case 2:
      result = 0x6C616E696D726574;
      break;
    case 3:
      result = 0x6449656C646E7562;
      break;
    case 4:
      result = 0x64496D657469;
      break;
    case 5:
      result = 0x65707954707061;
      break;
    case 6:
      result = 0x656372756F73;
      break;
    case 7:
      result = 0x546C6C6174736E69;
      break;
    case 8:
      result = 0xD000000000000011;
      break;
    case 9:
      result = 0x54746E756F636361;
      break;
    case 0xA:
      result = 0x50664F666F6F7270;
      break;
    case 0xB:
      result = 0xD000000000000017;
      break;
    case 0xC:
      result = 0x656D69546863616DLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_23001E178(char *a1, char *a2)
{
  v10 = *a1;
  v9 = *a2;
  v2 = AppStoreInstallationSignal.CodingKeys.stringValue.getter();
  v4 = v3;
  if (v2 == AppStoreInstallationSignal.CodingKeys.stringValue.getter() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_2300316D0();
  }

  return v7 & 1;
}

uint64_t sub_23001E214()
{
  v1 = *v0;
  v2 = sub_230031740();
  AppStoreInstallationSignal.CodingKeys.stringValue.getter(v2);
  sub_2300311A0();

  return sub_230031760();
}

uint64_t sub_23001E27C(uint64_t a1)
{
  v3 = *v1;
  AppStoreInstallationSignal.CodingKeys.stringValue.getter(a1);
  sub_2300311A0();
}

uint64_t sub_23001E2E0()
{
  v1 = *v0;
  v2 = sub_230031740();
  AppStoreInstallationSignal.CodingKeys.stringValue.getter(v2);
  sub_2300311A0();

  return sub_230031760();
}

uint64_t sub_23001E350@<X0>(uint64_t *a1@<X8>)
{
  result = AppStoreInstallationSignal.CodingKeys.stringValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_23001E3B4(uint64_t a1)
{
  v2 = sub_23001FFF0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23001E3F0(uint64_t a1)
{
  v2 = sub_23001FFF0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AppStoreInstallationSignal.init(timestamp:phase:terminalPhase:bundleId:itemId:appType:source:installType:commerceTimestamp:accountToken:proofOfPurchase:reportingConversionType:)@<X0>(uint64_t a1@<X0>, int a2@<W1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, int a8@<W7>, uint64_t a9@<X8>, int a10, int a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, int a17, char a18)
{
  v23 = sub_230030E00();
  v24 = *(v23 - 8);
  (*(v24 + 16))(a9, a1, v23);
  (*(v24 + 56))(a9, 0, 1, v23);
  v25 = type metadata accessor for AppStoreInstallationSignal();
  *(a9 + v25[6]) = a2;
  *(a9 + v25[7]) = a3;
  v26 = (a9 + v25[8]);
  *v26 = a4;
  v26[1] = a5;
  v27 = (a9 + v25[9]);
  *v27 = a6;
  v27[1] = a7;
  *(a9 + v25[10]) = a8;
  *(a9 + v25[11]) = a10;
  *(a9 + v25[12]) = a11;
  v28 = (a9 + v25[13]);
  *v28 = a12;
  v28[1] = a13;
  v29 = (a9 + v25[14]);
  *v29 = a14;
  v29[1] = a15;
  v30 = a9 + v25[15];
  v31 = *(a16 + 48);
  *(v30 + 32) = *(a16 + 32);
  *(v30 + 48) = v31;
  *(v30 + 64) = *(a16 + 64);
  *(v30 + 80) = *(a16 + 80);
  v32 = *(a16 + 16);
  *v30 = *a16;
  *(v30 + 16) = v32;
  v33 = a9 + v25[16];
  *v33 = a17;
  *(v33 + 4) = a18 & 1;
  v34 = mach_continuous_time();
  result = (*(v24 + 8))(a1, v23);
  v36 = a9 + v25[5];
  *v36 = v34;
  *(v36 + 8) = 0;
  return result;
}

uint64_t AppStoreInstallationSignal.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_22FFED9B8(&qword_27DB06880, &qword_230037930);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v40[-v8];
  v10 = a1[4];
  sub_22FFEDA4C(a1, a1[3]);
  sub_23001FFF0();
  sub_230031780();
  LOBYTE(v51[0]) = 0;
  sub_230030E00();
  sub_230018998(&qword_281494290);
  sub_2300315D0();
  if (!v2)
  {
    v11 = type metadata accessor for AppStoreInstallationSignal();
    v12 = *(v3 + v11[6]);
    LOBYTE(v51[0]) = 1;
    sub_230031660();
    v13 = *(v3 + v11[7]);
    LOBYTE(v51[0]) = 2;
    sub_230031660();
    v14 = (v3 + v11[8]);
    v15 = *v14;
    v16 = v14[1];
    LOBYTE(v51[0]) = 3;
    sub_230031600();
    v17 = (v3 + v11[9]);
    v18 = *v17;
    v19 = v17[1];
    LOBYTE(v51[0]) = 4;
    sub_230031600();
    v20 = *(v3 + v11[10]);
    LOBYTE(v51[0]) = 5;
    sub_230031660();
    v21 = *(v3 + v11[11]);
    LOBYTE(v51[0]) = 6;
    sub_230031660();
    v22 = *(v3 + v11[12]);
    LOBYTE(v51[0]) = 7;
    sub_230031660();
    v23 = (v3 + v11[13]);
    v24 = *v23;
    v25 = v23[1];
    LOBYTE(v51[0]) = 8;
    sub_2300315B0();
    v26 = (v3 + v11[14]);
    v27 = *v26;
    v28 = v26[1];
    v56 = 9;
    sub_230031600();
    v29 = v3 + v11[15];
    v30 = *(v29 + 48);
    v31 = *(v29 + 16);
    v52 = *(v29 + 32);
    v53 = v30;
    v32 = *(v29 + 48);
    v54 = *(v29 + 64);
    v33 = *(v29 + 16);
    v51[0] = *v29;
    v51[1] = v33;
    v47 = v52;
    v48 = v32;
    v49 = *(v29 + 64);
    v55 = *(v29 + 80);
    v50 = *(v29 + 80);
    v45 = v51[0];
    v46 = v31;
    v44 = 10;
    sub_22FFF0DD0(v51, v42, &qword_27DB06878, &qword_230037928);
    sub_230020044();
    sub_2300315D0();
    v42[2] = v47;
    v42[3] = v48;
    v42[4] = v49;
    v43 = v50;
    v42[0] = v45;
    v42[1] = v46;
    sub_22FFF31B4(v42, &qword_27DB06878, &qword_230037928);
    v34 = (v3 + v11[16]);
    v35 = *v34;
    LOBYTE(v34) = *(v34 + 4);
    v41 = 11;
    v40[12] = v34;
    sub_2300315E0();
    v36 = (v3 + v11[5]);
    v37 = *v36;
    v38 = *(v36 + 8);
    v41 = 12;
    sub_2300315F0();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t AppStoreInstallationSignal.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v46 = a2;
  v4 = sub_22FFED9B8(&qword_27DB05C70, &unk_230032560);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v44 - v6;
  v48 = sub_22FFED9B8(&qword_27DB06888, &qword_230037938);
  v8 = *(v48 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v48);
  v11 = &v44 - v10;
  v12 = type metadata accessor for AppStoreInstallationSignal();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = a1[3];
  v16 = a1[4];
  v49 = a1;
  sub_22FFEDA4C(a1, v17);
  sub_23001FFF0();
  v47 = v11;
  sub_230031770();
  if (v2)
  {
    return sub_22FFEE60C(v49);
  }

  v18 = v8;
  v45 = v12;
  sub_230030E00();
  LOBYTE(v50) = 0;
  sub_230018998(&qword_27DB05CA0);
  sub_2300314B0();
  sub_230020098(v7, v15);
  LOBYTE(v50) = 1;
  v19 = sub_230031540();
  v20 = v45;
  *&v15[v45[6]] = v19;
  LOBYTE(v50) = 2;
  *&v15[v20[7]] = sub_230031540();
  LOBYTE(v50) = 3;
  v21 = sub_2300314E0();
  v22 = &v15[v20[8]];
  *v22 = v21;
  v22[1] = v23;
  LOBYTE(v50) = 4;
  v24 = sub_2300314E0();
  v25 = &v15[v20[9]];
  *v25 = v24;
  v25[1] = v26;
  LOBYTE(v50) = 5;
  *&v15[v20[10]] = sub_230031540();
  LOBYTE(v50) = 6;
  *&v15[v20[11]] = sub_230031540();
  LOBYTE(v50) = 7;
  *&v15[v20[12]] = sub_230031540();
  LOBYTE(v50) = 8;
  v27 = sub_230031490();
  v28 = &v15[v20[13]];
  *v28 = v27;
  v28[1] = v29;
  LOBYTE(v50) = 9;
  v30 = sub_2300314E0();
  v31 = &v15[v45[14]];
  *v31 = v30;
  v31[1] = v32;
  v57 = 10;
  sub_230020108();
  sub_2300314B0();
  v33 = &v15[v45[15]];
  v34 = v53;
  *(v33 + 2) = v52;
  *(v33 + 3) = v34;
  *(v33 + 4) = v54;
  *(v33 + 10) = v55;
  v35 = v51;
  *v33 = v50;
  *(v33 + 1) = v35;
  v56 = 11;
  v36 = sub_2300314C0();
  v37 = &v15[v45[16]];
  *v37 = v36;
  v37[4] = BYTE4(v36) & 1;
  v56 = 12;
  v38 = sub_2300314D0();
  v40 = v39;
  (*(v18 + 8))(v47, v48);
  v41 = v46;
  v42 = &v15[v45[5]];
  *v42 = v38;
  v42[8] = v40 & 1;
  sub_23002015C(v15, v41);
  sub_22FFEE60C(v49);
  return sub_2300201C0(v15);
}

uint64_t AppStoreInstallationSignal.debugDescription.getter()
{
  v1 = v0;
  v2 = sub_22FFED9B8(&qword_27DB05C70, &unk_230032560);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v28[-v4 - 8];
  *&v35[0] = 0;
  *(&v35[0] + 1) = 0xE000000000000000;
  sub_2300313E0();
  v34 = v35[0];
  MEMORY[0x23190F560](0x3A64496D6164617BLL, 0xE900000000000020);
  v6 = type metadata accessor for AppStoreInstallationSignal();
  MEMORY[0x23190F560](*(v1 + v6[9]), *(v1 + v6[9] + 8));
  MEMORY[0x23190F560](0x656C646E7562202CLL, 0xEC000000203A6449);
  MEMORY[0x23190F560](*(v1 + v6[8]), *(v1 + v6[8] + 8));
  MEMORY[0x23190F560](0x3A6573616870202CLL, 0xE900000000000020);
  LODWORD(v35[0]) = *(v0 + v6[6]);
  v7 = sub_2300316B0();
  MEMORY[0x23190F560](v7);

  MEMORY[0x23190F560](0xD000000000000011, 0x800000023003A850);
  LODWORD(v35[0]) = *(v0 + v6[7]);
  v8 = sub_2300316B0();
  MEMORY[0x23190F560](v8);

  MEMORY[0x23190F560](0x6C6174736E69202CLL, 0xEF203A657079546CLL);
  LODWORD(v35[0]) = *(v0 + v6[12]);
  v9 = sub_2300316B0();
  MEMORY[0x23190F560](v9);

  MEMORY[0x23190F560](0x707954707061202CLL, 0xEB00000000203A65);
  LODWORD(v35[0]) = *(v0 + v6[10]);
  v10 = sub_2300316B0();
  MEMORY[0x23190F560](v10);

  MEMORY[0x23190F560](0x656372756F73202CLL, 0xEA0000000000203ALL);
  LODWORD(v35[0]) = *(v0 + v6[11]);
  v11 = sub_2300316B0();
  MEMORY[0x23190F560](v11);

  MEMORY[0x23190F560](0x7473656D6974202CLL, 0xED0000203A706D61);
  sub_22FFF0DD0(v0, v5, &qword_27DB05C70, &unk_230032560);
  v12 = sub_230031170();
  MEMORY[0x23190F560](v12);

  MEMORY[0x23190F560](0xD000000000000015, 0x800000023003A870);
  v13 = (v0 + v6[13]);
  v14 = v13[1];
  *&v35[0] = *v13;
  *(&v35[0] + 1) = v14;

  sub_22FFED9B8(&qword_27DB05CB8, &qword_230036AB0);
  v15 = sub_230031170();
  MEMORY[0x23190F560](v15);

  MEMORY[0x23190F560](0xD000000000000010, 0x800000023003A890);
  MEMORY[0x23190F560](*(v1 + v6[14]), *(v1 + v6[14] + 8));
  MEMORY[0x23190F560](0xD00000000000001BLL, 0x800000023003A8B0);
  v16 = v0 + v6[16];
  v17 = *v16;
  LOBYTE(v16) = *(v16 + 4);
  LODWORD(v35[0]) = v17;
  BYTE4(v35[0]) = v16;
  sub_22FFED9B8(&qword_27DB05CB0, &unk_230032580);
  v18 = sub_230031170();
  MEMORY[0x23190F560](v18);

  MEMORY[0x23190F560](0xD000000000000013, 0x800000023003A8D0);
  v19 = v0 + v6[15];
  v20 = *(v19 + 48);
  v21 = *(v19 + 16);
  v36 = *(v19 + 32);
  v37 = v20;
  v22 = *(v19 + 48);
  v38 = *(v19 + 64);
  v23 = *(v19 + 16);
  v35[0] = *v19;
  v35[1] = v23;
  v29 = v21;
  v30 = v36;
  v24 = *(v19 + 64);
  v31 = v22;
  v32 = v24;
  v39 = *(v19 + 80);
  v33 = *(v19 + 80);
  *&v28[88] = v35[0];
  sub_22FFF0DD0(v35, v28, &qword_27DB06878, &qword_230037928);
  sub_22FFED9B8(&qword_27DB06878, &qword_230037928);
  v25 = sub_230031170();
  MEMORY[0x23190F560](v25);

  MEMORY[0x23190F560](125, 0xE100000000000000);
  return v34;
}

uint64_t _s24PromotedContentJetClient26AppStoreInstallationSignalV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_230030E00();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v85 = &v84 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22FFED9B8(&qword_27DB05C70, &unk_230032560);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v84 - v10;
  v12 = sub_22FFED9B8(&qword_27DB05CE0, &qword_230037BF0);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12 - 8);
  v16 = &v84 - v15;
  v17 = *(v14 + 56);
  v86 = a1;
  sub_22FFF0DD0(a1, &v84 - v15, &qword_27DB05C70, &unk_230032560);
  v87 = a2;
  sub_22FFF0DD0(a2, &v16[v17], &qword_27DB05C70, &unk_230032560);
  v18 = *(v5 + 48);
  if (v18(v16, 1, v4) == 1)
  {
    if (v18(&v16[v17], 1, v4) == 1)
    {
      sub_22FFF31B4(v16, &qword_27DB05C70, &unk_230032560);
      goto LABEL_10;
    }

LABEL_6:
    v19 = &qword_27DB05CE0;
    v20 = &qword_230037BF0;
    v21 = v16;
LABEL_7:
    sub_22FFF31B4(v21, v19, v20);
    return 0;
  }

  sub_22FFF0DD0(v16, v11, &qword_27DB05C70, &unk_230032560);
  if (v18(&v16[v17], 1, v4) == 1)
  {
    (*(v5 + 8))(v11, v4);
    goto LABEL_6;
  }

  v23 = v85;
  (*(v5 + 32))(v85, &v16[v17], v4);
  sub_230018998(&qword_27DB05CE8);
  v24 = sub_230031140();
  v25 = *(v5 + 8);
  v25(v23, v4);
  v25(v11, v4);
  sub_22FFF31B4(v16, &qword_27DB05C70, &unk_230032560);
  if ((v24 & 1) == 0)
  {
    return 0;
  }

LABEL_10:
  v26 = type metadata accessor for AppStoreInstallationSignal();
  v27 = v26[5];
  v29 = v86;
  v28 = v87;
  v30 = (v86 + v27);
  v31 = *(v86 + v27 + 8);
  v32 = (v87 + v27);
  v33 = *(v87 + v27 + 8);
  if (v31)
  {
    if (!v33)
    {
      return 0;
    }
  }

  else
  {
    if (*v30 != *v32)
    {
      LOBYTE(v33) = 1;
    }

    if (v33)
    {
      return 0;
    }
  }

  if (*(v86 + v26[6]) != *(v87 + v26[6]) || *(v86 + v26[7]) != *(v87 + v26[7]))
  {
    return 0;
  }

  v34 = v26[8];
  v36 = *(v86 + v34);
  v35 = *(v86 + v34 + 8);
  v37 = (v87 + v34);
  if (v36 != *v37 || v35 != v37[1])
  {
    v38 = v26;
    v39 = sub_2300316D0();
    v26 = v38;
    if ((v39 & 1) == 0)
    {
      return 0;
    }
  }

  v40 = v26[9];
  v42 = *(v29 + v40);
  v41 = *(v29 + v40 + 8);
  v43 = (v28 + v40);
  if (v42 != *v43 || v41 != v43[1])
  {
    v44 = v26;
    v45 = sub_2300316D0();
    v26 = v44;
    if ((v45 & 1) == 0)
    {
      return 0;
    }
  }

  if (*(v29 + v26[10]) != *(v28 + v26[10]) || *(v29 + v26[11]) != *(v28 + v26[11]) || *(v29 + v26[12]) != *(v28 + v26[12]))
  {
    return 0;
  }

  v46 = v26[13];
  v47 = (v29 + v46);
  v48 = *(v29 + v46 + 8);
  v49 = (v28 + v46);
  v50 = v49[1];
  if (v48)
  {
    if (!v50)
    {
      return 0;
    }

    if (*v47 != *v49 || v48 != v50)
    {
      v51 = v26;
      v52 = sub_2300316D0();
      v26 = v51;
      if ((v52 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v50)
  {
    return 0;
  }

  v53 = v26[14];
  v55 = *(v29 + v53);
  v54 = *(v29 + v53 + 8);
  v56 = (v28 + v53);
  if (v55 != *v56 || v54 != v56[1])
  {
    v57 = v26;
    v58 = sub_2300316D0();
    v26 = v57;
    if ((v58 & 1) == 0)
    {
      return 0;
    }
  }

  v59 = (v29 + v26[15]);
  v60 = v59[3];
  v61 = v59[4];
  v134 = *(v59 + 10);
  v62 = v59[2];
  v132 = v59[3];
  v133 = v61;
  v63 = v59[1];
  v64 = v59[2];
  v129 = *v59;
  v130 = v63;
  v131 = v62;
  v65 = (v28 + v26[15]);
  v66 = v65[3];
  v139 = v65[4];
  v67 = v65[1];
  v135 = *v65;
  v136 = v67;
  v68 = v65[3];
  v137 = v65[2];
  v138 = v68;
  v127 = v129;
  v123 = v64;
  v124 = v60;
  v125 = v59[4];
  v140 = *(v65 + 10);
  v128 = *(v59 + 2);
  v69 = *(&v130 + 1);
  v126 = *(v59 + 10);
  v122 = *(v65 + 2);
  v121 = v135;
  v70 = *(&v136 + 1);
  v71 = v65[4];
  v120 = *(v65 + 10);
  v118 = v66;
  v119 = v71;
  v117 = v137;
  if (*(&v130 + 1) == 1)
  {
    if (*(&v136 + 1) == 1)
    {
      v72 = v26;
      v104 = *v59;
      *&v105 = *(v59 + 2);
      *(&v105 + 1) = 1;
      v73 = v59[3];
      v106 = v59[2];
      v107 = v73;
      v108 = v59[4];
      v109 = *(v59 + 10);
      sub_22FFF0DD0(&v129, &v98, &qword_27DB06878, &qword_230037928);
      sub_22FFF0DD0(&v135, &v98, &qword_27DB06878, &qword_230037928);
      sub_22FFF31B4(&v104, &qword_27DB06878, &qword_230037928);
      goto LABEL_45;
    }

    sub_22FFF0DD0(&v129, &v104, &qword_27DB06878, &qword_230037928);
    sub_22FFF0DD0(&v135, &v104, &qword_27DB06878, &qword_230037928);
    goto LABEL_43;
  }

  v74 = *(v59 + 2);
  v104 = *v59;
  *&v105 = v74;
  *(&v105 + 1) = *(&v130 + 1);
  v75 = v59[3];
  v106 = v59[2];
  v107 = v75;
  v108 = v59[4];
  v109 = *(v59 + 10);
  v103 = v109;
  v101 = v75;
  v102 = v108;
  v98 = v104;
  v99 = v105;
  v100 = v106;
  if (*(&v136 + 1) == 1)
  {
    v94 = v106;
    v95 = v107;
    v96 = v108;
    v97 = v109;
    v92 = v104;
    v93 = v105;
    sub_22FFF0DD0(&v129, v90, &qword_27DB06878, &qword_230037928);
    sub_22FFF0DD0(&v135, v90, &qword_27DB06878, &qword_230037928);
    sub_22FFF0DD0(&v104, v90, &qword_27DB06878, &qword_230037928);
    sub_22FFFD9D4(&v92);
LABEL_43:
    v104 = v127;
    v106 = v123;
    v107 = v124;
    v108 = v125;
    v110 = v121;
    v115 = v119;
    v114 = v118;
    *&v105 = v128;
    *(&v105 + 1) = v69;
    v109 = v126;
    v111 = v122;
    v112 = v70;
    v116 = v120;
    v113 = v117;
    v19 = &unk_27DB068A0;
    v20 = &unk_230037BF8;
    v21 = &v104;
    goto LABEL_7;
  }

  v72 = v26;
  v92 = *v65;
  v76 = *(v65 + 2);
  v77 = v65[3];
  v94 = v65[2];
  v95 = v77;
  v96 = v65[4];
  v97 = *(v65 + 10);
  *&v93 = v76;
  *(&v93 + 1) = *(&v136 + 1);
  v78 = _s24PromotedContentJetClient15ProofOfPurchaseV2eeoiySbAC_ACtFZ_0(&v98, &v92);
  v88[2] = v94;
  v88[3] = v95;
  v88[4] = v96;
  v89 = v97;
  v88[0] = v92;
  v88[1] = v93;
  sub_22FFF0DD0(&v129, v90, &qword_27DB06878, &qword_230037928);
  sub_22FFF0DD0(&v135, v90, &qword_27DB06878, &qword_230037928);
  sub_22FFF0DD0(&v104, v90, &qword_27DB06878, &qword_230037928);
  sub_22FFFD9D4(v88);
  v90[2] = v100;
  v90[3] = v101;
  v90[4] = v102;
  v91 = v103;
  v90[0] = v98;
  v90[1] = v99;
  sub_22FFFD9D4(v90);
  v92 = v127;
  *&v93 = v128;
  *(&v93 + 1) = v69;
  v94 = v123;
  v95 = v124;
  v96 = v125;
  v97 = v126;
  sub_22FFF31B4(&v92, &qword_27DB06878, &qword_230037928);
  if (!v78)
  {
    return 0;
  }

LABEL_45:
  v79 = v72[16];
  v80 = (v29 + v79);
  v81 = *(v29 + v79 + 4);
  v82 = (v28 + v79);
  v83 = *(v28 + v79 + 4);
  if (v81)
  {
    if (!v83)
    {
      return 0;
    }
  }

  else
  {
    if (*v80 != *v82)
    {
      LOBYTE(v83) = 1;
    }

    if (v83)
    {
      return 0;
    }
  }

  return 1;
}

unint64_t sub_23001FFF0()
{
  result = qword_281493FA8;
  if (!qword_281493FA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281493FA8);
  }

  return result;
}

unint64_t sub_230020044()
{
  result = qword_281494128;
  if (!qword_281494128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281494128);
  }

  return result;
}

uint64_t sub_230020098(uint64_t a1, uint64_t a2)
{
  v4 = sub_22FFED9B8(&qword_27DB05C70, &unk_230032560);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_230020108()
{
  result = qword_27DB06890;
  if (!qword_27DB06890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB06890);
  }

  return result;
}

uint64_t sub_23002015C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppStoreInstallationSignal();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2300201C0(uint64_t a1)
{
  v2 = type metadata accessor for AppStoreInstallationSignal();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_230020220()
{
  result = qword_27DB06898;
  if (!qword_27DB06898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB06898);
  }

  return result;
}

unint64_t sub_230020278()
{
  result = qword_281493F98;
  if (!qword_281493F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281493F98);
  }

  return result;
}

unint64_t sub_2300202D0()
{
  result = qword_281493FA0;
  if (!qword_281493FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281493FA0);
  }

  return result;
}

void sub_23002034C()
{
  sub_230020474();
  if (v0 <= 0x3F)
  {
    sub_22FFF2FC4(319, &qword_2814942A8);
    if (v1 <= 0x3F)
    {
      sub_22FFF2FC4(319, &qword_2814942D0);
      if (v2 <= 0x3F)
      {
        sub_22FFF2FC4(319, qword_281494D90);
        if (v3 <= 0x3F)
        {
          sub_22FFF2FC4(319, &qword_2814942B0);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_230020474()
{
  if (!qword_281495498)
  {
    sub_230030E00();
    v0 = sub_230031380();
    if (!v1)
    {
      atomic_store(v0, &qword_281495498);
    }
  }
}

uint64_t JetPackVersion.base.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_230030EC0();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t type metadata accessor for JetPackVersion()
{
  result = qword_281495458;
  if (!qword_281495458)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t JetPackVersion.build.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for JetPackVersion();
  *a1 = *(v1 + *(result + 24));
  return result;
}

uint64_t JetPackVersion.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_22FFED9B8(&qword_27DB068A8, &qword_230037C00);
  v5 = v4 - 8;
  v6 = *(*(v4 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = v58 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = v58 - v11;
  MEMORY[0x28223BE20](v10);
  v14 = v58 - v13;
  v15 = *(v5 + 56);
  v61 = a1;
  *&v14[v15] = sub_230030E70();
  sub_230020C44(v14, v12);
  v16 = *&v12[*(v5 + 56)];

  v17 = sub_230030EC0();
  v18 = *(v17 - 8);
  (*(v18 + 32))(a2, v12, v17);
  sub_230020C44(v14, v9);
  v19 = *&v9[*(v5 + 56)];
  if (!v19)
  {
    goto LABEL_11;
  }

  if (!v19[2])
  {

LABEL_11:
    v42 = *(v18 + 8);
    v42(v61, v17);
    sub_230020CB4(v14);
    v42(v9, v17);
    result = type metadata accessor for JetPackVersion();
    v43 = result;
    *(a2 + *(result + 20)) = 1;
    v44 = 3;
LABEL_33:
    *(a2 + *(v43 + 24)) = v44;
    return result;
  }

  v20 = v18;
  v21 = v19[4];
  v22 = v19[5];

  v62 = v21;
  v63 = v22;
  v23 = sub_230020D1C();
  v24 = MEMORY[0x23190F750](45, 0xE100000000000000, 0x7FFFFFFFFFFFFFFFLL, 1, MEMORY[0x277D837D0], v23);

  v25 = *(v20 + 8);
  v58[1] = v20 + 8;
  v59 = v17;
  v58[0] = v25;
  v25(v9, v17);
  v26 = *(v24 + 16);
  v60 = a2;
  if (!v26)
  {

    v29 = MEMORY[0x277D84F90];
LABEL_13:
    v62 = 0x6C616E7265746E69;
    v63 = 0xE800000000000000;
    MEMORY[0x28223BE20](v41);
    v58[-2] = &v62;
    v45 = sub_230021D44(sub_230021DF0, &v58[-4], v29);
    v46 = type metadata accessor for JetPackVersion();
    v43 = v46;
    *(a2 + *(v46 + 20)) = v45 & 1;
    v44 = byte_2844E0D50;
    if (byte_2844E0D50)
    {
      if (byte_2844E0D50 == 1)
      {
        v47 = 0xE400000000000000;
        v48 = 1685025392;
      }

      else
      {
        v47 = 0xE500000000000000;
        v48 = 0x6775626564;
      }
    }

    else
    {
      v47 = 0xE500000000000000;
      v48 = 0x7972726163;
    }

    v62 = v48;
    v63 = v47;
    MEMORY[0x28223BE20](v46);
    v58[-2] = &v62;
    v49 = sub_230021D44(sub_230022650, &v58[-4], v29);

    if ((v49 & 1) == 0)
    {
      v44 = byte_2844E0D51;
      if (byte_2844E0D51)
      {
        if (byte_2844E0D51 == 1)
        {
          v51 = 0xE400000000000000;
          v52 = 1685025392;
        }

        else
        {
          v51 = 0xE500000000000000;
          v52 = 0x6775626564;
        }
      }

      else
      {
        v51 = 0xE500000000000000;
        v52 = 0x7972726163;
      }

      v62 = v52;
      v63 = v51;
      MEMORY[0x28223BE20](v50);
      v58[-2] = &v62;
      v53 = sub_230021D44(sub_230022650, &v58[-4], v29);

      if ((v53 & 1) == 0)
      {
        v44 = byte_2844E0D52;
        if (byte_2844E0D52)
        {
          if (byte_2844E0D52 == 1)
          {
            v55 = 0xE400000000000000;
            v56 = 1685025392;
          }

          else
          {
            v55 = 0xE500000000000000;
            v56 = 0x6775626564;
          }
        }

        else
        {
          v55 = 0xE500000000000000;
          v56 = 0x7972726163;
        }

        v62 = v56;
        v63 = v55;
        MEMORY[0x28223BE20](v54);
        v58[-2] = &v62;
        v57 = sub_230021D44(sub_230022650, &v58[-4], v29);

        if ((v57 & 1) == 0)
        {
          v44 = 3;
        }
      }
    }

    a2 = v60;

    (v58[0])(v61, v59);
    result = sub_230020CB4(v14);
    goto LABEL_33;
  }

  v62 = MEMORY[0x277D84F90];
  result = sub_23000E3F4(0, v26, 0);
  v28 = 0;
  v29 = v62;
  v30 = (v24 + 56);
  while (v28 < *(v24 + 16))
  {
    v31 = *(v30 - 3);
    v32 = *(v30 - 2);
    v34 = *(v30 - 1);
    v33 = *v30;

    v35 = MEMORY[0x23190F530](v31, v32, v34, v33);
    v37 = v36;

    v62 = v29;
    v39 = *(v29 + 16);
    v38 = *(v29 + 24);
    if (v39 >= v38 >> 1)
    {
      result = sub_23000E3F4((v38 > 1), v39 + 1, 1);
      v29 = v62;
    }

    ++v28;
    *(v29 + 16) = v39 + 1;
    v40 = v29 + 16 * v39;
    *(v40 + 32) = v35;
    *(v40 + 40) = v37;
    v30 += 4;
    if (v26 == v28)
    {

      a2 = v60;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t JetPackVersion.Build.rawValue.getter()
{
  v1 = 1685025392;
  if (*v0 != 1)
  {
    v1 = 0x6775626564;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x7972726163;
  }
}

uint64_t sub_230020C44(uint64_t a1, uint64_t a2)
{
  v4 = sub_22FFED9B8(&qword_27DB068A8, &qword_230037C00);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_230020CB4(uint64_t a1)
{
  v2 = sub_22FFED9B8(&qword_27DB068A8, &qword_230037C00);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_230020D1C()
{
  result = qword_2814942D8;
  if (!qword_2814942D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814942D8);
  }

  return result;
}

uint64_t sub_230020D70()
{
  v1 = 0x6C616E7265746E69;
  if (*v0 != 1)
  {
    v1 = 0x646C697562;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1702060386;
  }
}

uint64_t sub_230020DC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2300224E8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_230020DE8(uint64_t a1)
{
  v2 = sub_230021E64();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_230020E24(uint64_t a1)
{
  v2 = sub_230021E64();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t JetPackVersion.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_22FFED9B8(&qword_27DB068B0, &qword_230037C08);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v14[-v8];
  v10 = a1[4];
  sub_22FFEDA4C(a1, a1[3]);
  sub_230021E64();
  sub_230031780();
  v14[15] = 0;
  sub_230030EC0();
  sub_230022274(&qword_281494288, MEMORY[0x277CE4A80]);
  sub_230031640();
  if (!v2)
  {
    v11 = type metadata accessor for JetPackVersion();
    v12 = *(v3 + *(v11 + 20));
    v14[14] = 1;
    sub_230031610();
    v14[13] = *(v3 + *(v11 + 24));
    v14[12] = 2;
    sub_230021EB8();
    sub_2300315D0();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t JetPackVersion.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v4 = sub_230030EC0();
  v24 = *(v4 - 8);
  v5 = *(v24 + 64);
  MEMORY[0x28223BE20](v4);
  v27 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22FFED9B8(&qword_27DB068B8, &qword_230037C10);
  v25 = *(v7 - 8);
  v26 = v7;
  v8 = *(v25 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v22 - v9;
  v11 = type metadata accessor for JetPackVersion();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[4];
  sub_22FFEDA4C(a1, a1[3]);
  sub_230021E64();
  sub_230031770();
  if (v2)
  {
    return sub_22FFEE60C(a1);
  }

  v16 = v14;
  v17 = v24;
  v31 = 0;
  sub_230022274(&qword_281494280, MEMORY[0x277CE4A80]);
  v18 = v26;
  sub_230031520();
  v19 = *(v17 + 32);
  v20 = v27;
  v27 = v4;
  v19(v16, v20, v4);
  v30 = 1;
  *(v16 + *(v11 + 20)) = sub_2300314F0() & 1;
  v28 = 2;
  sub_230021F0C();
  sub_2300314B0();
  (*(v25 + 8))(v10, v18);
  *(v16 + *(v11 + 24)) = v29;
  sub_230021F60(v16, v23);
  sub_22FFEE60C(a1);
  return sub_230021FC4(v16);
}

PromotedContentJetClient::JetPackVersion::Build_optional __swiftcall JetPackVersion.Build.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_230031460();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_23002147C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE400000000000000;
  v4 = 1685025392;
  if (v2 != 1)
  {
    v4 = 0x6775626564;
    v3 = 0xE500000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x7972726163;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  v7 = 0xE400000000000000;
  v8 = 1685025392;
  if (*a2 != 1)
  {
    v8 = 0x6775626564;
    v7 = 0xE500000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x7972726163;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE500000000000000;
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

uint64_t sub_230021564()
{
  v1 = *v0;
  sub_230031740();
  sub_2300311A0();

  return sub_230031760();
}

uint64_t sub_2300215F8()
{
  *v0;
  *v0;
  sub_2300311A0();
}

uint64_t sub_230021678()
{
  v1 = *v0;
  sub_230031740();
  sub_2300311A0();

  return sub_230031760();
}

void sub_230021714(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE500000000000000;
  v4 = 0xE400000000000000;
  v5 = 1685025392;
  if (v2 != 1)
  {
    v5 = 0x6775626564;
    v4 = 0xE500000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x7972726163;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

BOOL static JetPackVersion.< infix(_:_:)(uint64_t a1, uint64_t a2)
{
  sub_230030EC0();
  sub_230022274(&qword_27DB068C0, MEMORY[0x277CE4A80]);
  if ((sub_230031140() & 1) == 0)
  {

    JUMPOUT(0x23190F210);
  }

  v4 = *(type metadata accessor for JetPackVersion() + 20);
  v5 = *(a1 + v4);
  v6 = *(a2 + v4);
  return v5 == 1 && (v6 & 1) == 0;
}

BOOL sub_230021900(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_230030EC0();
  sub_230022274(&qword_27DB068C0, MEMORY[0x277CE4A80]);
  if ((sub_230031140() & 1) == 0)
  {

    JUMPOUT(0x23190F210);
  }

  v6 = *(a3 + 20);
  v7 = *(a1 + v6);
  v8 = *(a2 + v6);
  return (v7 & 1) != 0 && (v8 & 1) == 0;
}

uint64_t sub_2300219D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_230030EC0();
  sub_230022274(&qword_27DB068C0, MEMORY[0x277CE4A80]);
  if (sub_230031140())
  {
    v6 = *(a3 + 20);
    v7 = *(a2 + v6);
    v8 = *(a1 + v6);
    v9 = (v7 & 1) == 0 || (v8 & 1) != 0;
  }

  else
  {
    v9 = MEMORY[0x23190F210](a2, a1) ^ 1;
  }

  return v9 & 1;
}

uint64_t sub_230021A90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_230030EC0();
  sub_230022274(&qword_27DB068C0, MEMORY[0x277CE4A80]);
  if (sub_230031140())
  {
    v6 = *(a3 + 20);
    v7 = *(a1 + v6);
    v8 = *(a2 + v6);
    v9 = (v7 & 1) == 0 || (v8 & 1) != 0;
  }

  else
  {
    v9 = MEMORY[0x23190F210](a1, a2) ^ 1;
  }

  return v9 & 1;
}

BOOL sub_230021B50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_230030EC0();
  sub_230022274(&qword_27DB068C0, MEMORY[0x277CE4A80]);
  if ((sub_230031140() & 1) == 0)
  {

    JUMPOUT(0x23190F210);
  }

  v6 = *(a3 + 20);
  v7 = *(a2 + v6);
  v8 = *(a1 + v6);
  return (v7 & 1) != 0 && (v8 & 1) == 0;
}

uint64_t JetPackVersion.description.getter()
{
  v7 = sub_230030E50();
  v1 = type metadata accessor for JetPackVersion();
  if (*(v0 + *(v1 + 20)))
  {
    v2 = 0x616E7265746E692DLL;
  }

  else
  {
    v2 = 0x616E72657478652DLL;
  }

  MEMORY[0x23190F560](v2, 0xE90000000000006CLL);

  v3 = *(v0 + *(v1 + 24));
  if (v3 != 3)
  {
    if (*(v0 + *(v1 + 24)))
    {
      if (v3 == 1)
      {
        v4 = 0xE400000000000000;
        v5 = 1685025392;
      }

      else
      {
        v4 = 0xE500000000000000;
        v5 = 0x6775626564;
      }
    }

    else
    {
      v4 = 0xE500000000000000;
      v5 = 0x7972726163;
    }

    MEMORY[0x23190F560](v5, v4);

    MEMORY[0x23190F560](45, 0xE100000000000000);
  }

  return v7;
}

uint64_t sub_230021D44(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t sub_230021E0C(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_2300316D0() & 1;
  }
}

unint64_t sub_230021E64()
{
  result = qword_281495488;
  if (!qword_281495488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281495488);
  }

  return result;
}

unint64_t sub_230021EB8()
{
  result = qword_281494278;
  if (!qword_281494278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281494278);
  }

  return result;
}

unint64_t sub_230021F0C()
{
  result = qword_281494270;
  if (!qword_281494270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281494270);
  }

  return result;
}

uint64_t sub_230021F60(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for JetPackVersion();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_230021FC4(uint64_t a1)
{
  v2 = type metadata accessor for JetPackVersion();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t _s24PromotedContentJetClient0C11PackVersionV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if ((MEMORY[0x23190F230]() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for JetPackVersion();
  if (*(a1 + *(v4 + 20)) != *(a2 + *(v4 + 20)))
  {
    return 0;
  }

  v6 = *(v4 + 24);
  v7 = *(a1 + v6);
  v8 = *(a2 + v6);
  if (v7 == 3)
  {
    return v8 == 3;
  }

  if (v8 == 3)
  {
    return 0;
  }

  v9 = 0x7972726163;
  v10 = 0xE400000000000000;
  v11 = 1685025392;
  if (v7 != 1)
  {
    v11 = 0x6775626564;
    v10 = 0xE500000000000000;
  }

  if (v7)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0x7972726163;
  }

  if (v7)
  {
    v13 = v10;
  }

  else
  {
    v13 = 0xE500000000000000;
  }

  if (v8)
  {
    if (v8 == 1)
    {
      v14 = 0xE400000000000000;
      v9 = 1685025392;
    }

    else
    {
      v14 = 0xE500000000000000;
      v9 = 0x6775626564;
    }
  }

  else
  {
    v14 = 0xE500000000000000;
  }

  if (v12 != v9 || v13 != v14)
  {
    v15 = sub_2300316D0();

    return (v15 & 1) != 0;
  }

  return 1;
}

unint64_t sub_230022170()
{
  result = qword_27DB068C8;
  if (!qword_27DB068C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB068C8);
  }

  return result;
}

unint64_t sub_2300221C8()
{
  result = qword_27DB068D0;
  if (!qword_27DB068D0)
  {
    sub_22FFF0054(&qword_27DB068D8, &qword_230037D58);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB068D0);
  }

  return result;
}

uint64_t sub_230022274(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_2300222E4()
{
  sub_230030EC0();
  if (v0 <= 0x3F)
  {
    sub_230022370();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_230022370()
{
  if (!qword_281495468)
  {
    v0 = sub_230031380();
    if (!v1)
    {
      atomic_store(v0, &qword_281495468);
    }
  }
}

unint64_t sub_2300223E4()
{
  result = qword_27DB068E8;
  if (!qword_27DB068E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB068E8);
  }

  return result;
}

unint64_t sub_23002243C()
{
  result = qword_281495478;
  if (!qword_281495478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281495478);
  }

  return result;
}

unint64_t sub_230022494()
{
  result = qword_281495480;
  if (!qword_281495480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281495480);
  }

  return result;
}

uint64_t sub_2300224E8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1702060386 && a2 == 0xE400000000000000;
  if (v3 || (sub_2300316D0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6C616E7265746E69 && a2 == 0xE800000000000000 || (sub_2300316D0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x646C697562 && a2 == 0xE500000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_2300316D0();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

unint64_t sub_2300225FC()
{
  result = qword_281495470;
  if (!qword_281495470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281495470);
  }

  return result;
}

uint64_t sub_230022694@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x4665727574616566 && a2 == 0xEC0000007367616CLL)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_2300316D0();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_230022720(uint64_t a1)
{
  v2 = sub_230022930();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23002275C(uint64_t a1)
{
  v2 = sub_230022930();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t IntentDependencyProvider.encode(to:)(void *a1)
{
  v3 = sub_22FFED9B8(&qword_27DB068F0, &unk_230037F90);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v11 - v6;
  v8 = *v1;
  v9 = a1[4];
  sub_22FFEDA4C(a1, a1[3]);
  sub_230022930();

  sub_230031780();
  v11[1] = v8;
  sub_22FFED9B8(&qword_27DB06380, &qword_2300366B0);
  sub_230009828(&qword_281493EA0);
  sub_230031640();

  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_230022930()
{
  result = qword_281494868[0];
  if (!qword_281494868[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_281494868);
  }

  return result;
}

uint64_t IntentDependencyProvider.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = sub_22FFED9B8(&qword_27DB068F8, &qword_230037FA0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v12 - v8;
  v10 = a1[4];
  sub_22FFEDA4C(a1, a1[3]);
  sub_230022930();
  sub_230031770();
  if (!v2)
  {
    sub_22FFED9B8(&qword_27DB06380, &qword_2300366B0);
    sub_230009828(&qword_281493E98);
    sub_230031520();
    (*(v6 + 8))(v9, v5);
    *a2 = v12[1];
  }

  return sub_22FFEE60C(a1);
}

uint64_t sub_230022B64(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_230022BAC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_230022C0C()
{
  result = qword_27DB06900;
  if (!qword_27DB06900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB06900);
  }

  return result;
}

unint64_t sub_230022C64()
{
  result = qword_281494858;
  if (!qword_281494858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281494858);
  }

  return result;
}

unint64_t sub_230022CBC()
{
  result = qword_281494860;
  if (!qword_281494860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281494860);
  }

  return result;
}

uint64_t IntentMessage.telemetryType.getter()
{
  v1 = type metadata accessor for IntentMessage();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_230022E14(v0, v4);
  v5 = qword_230038BB8[swift_getEnumCaseMultiPayload()];
  sub_23002442C(v4, type metadata accessor for IntentMessage);
  return v5;
}

uint64_t type metadata accessor for IntentMessage()
{
  result = qword_281494E30;
  if (!qword_281494E30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_230022E14(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IntentMessage();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_230022E78(uint64_t a1)
{
  v2 = sub_2300243D8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_230022EB4(uint64_t a1)
{
  v2 = sub_2300243D8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_230022EF0(uint64_t a1)
{
  v2 = sub_230024330();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_230022F2C(uint64_t a1)
{
  v2 = sub_230024330();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_230022F68(uint64_t a1)
{
  v2 = sub_230024384();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_230022FA4(uint64_t a1)
{
  v2 = sub_230024384();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_230022FE0()
{
  v1 = *v0;
  v2 = 0xD000000000000011;
  if (v1 != 3)
  {
    v2 = 0xD000000000000017;
  }

  if (*v0 > 4u)
  {
    v2 = 0xD000000000000017;
  }

  v3 = 0xD000000000000014;
  if (v1 == 1)
  {
    v3 = 0xD000000000000013;
  }

  if (!*v0)
  {
    v3 = 0xD000000000000010;
  }

  if (*v0 <= 2u)
  {
    return v3;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_23002309C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_230026030(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2300230C4(uint64_t a1)
{
  v2 = sub_23002418C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_230023100(uint64_t a1)
{
  v2 = sub_23002418C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23002313C(uint64_t a1)
{
  v2 = sub_230024288();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_230023178(uint64_t a1)
{
  v2 = sub_230024288();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2300231B4(uint64_t a1)
{
  v2 = sub_230024234();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2300231F0(uint64_t a1)
{
  v2 = sub_230024234();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23002322C(uint64_t a1)
{
  v2 = sub_2300241E0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_230023268(uint64_t a1)
{
  v2 = sub_2300241E0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2300232A4(uint64_t a1)
{
  v2 = sub_2300242DC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2300232E0(uint64_t a1)
{
  v2 = sub_2300242DC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t IntentMessage.encode(to:)(void *a1)
{
  v2 = sub_22FFED9B8(&qword_27DB06908, &qword_230038150);
  v96 = *(v2 - 8);
  v97 = v2;
  v3 = *(v96 + 64);
  MEMORY[0x28223BE20](v2);
  v95 = &v74 - v4;
  v93 = type metadata accessor for ConversionMatchingStep3Intent();
  v5 = *(*(v93 - 8) + 64);
  MEMORY[0x28223BE20](v93);
  v94 = &v74 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22FFED9B8(&qword_27DB06910, &qword_230038158);
  v91 = *(v7 - 8);
  v92 = v7;
  v8 = *(v91 + 64);
  MEMORY[0x28223BE20](v7);
  v90 = &v74 - v9;
  v88 = type metadata accessor for ConversionMatchingStep2Intent();
  v10 = *(*(v88 - 8) + 64);
  MEMORY[0x28223BE20](v88);
  v89 = &v74 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = sub_22FFED9B8(&qword_27DB06918, &qword_230038160);
  v86 = *(v87 - 8);
  v12 = *(v86 + 64);
  MEMORY[0x28223BE20](v87);
  v85 = &v74 - v13;
  v83 = type metadata accessor for ConversionMatchingStep1Intent();
  v14 = *(*(v83 - 8) + 64);
  MEMORY[0x28223BE20](v83);
  v84 = &v74 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = sub_22FFED9B8(&qword_27DB06920, &qword_230038168);
  v81 = *(v82 - 8);
  v16 = *(v81 + 64);
  MEMORY[0x28223BE20](v82);
  v80 = &v74 - v17;
  v78 = type metadata accessor for JetPackAssetCacheAction();
  v18 = *(*(v78 - 8) + 64);
  MEMORY[0x28223BE20](v78);
  v79 = &v74 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = sub_22FFED9B8(&qword_27DB06928, &qword_230038170);
  v77 = *(v105 - 8);
  v20 = *(v77 + 64);
  MEMORY[0x28223BE20](v105);
  v104 = &v74 - v21;
  matched = type metadata accessor for AttributionPostMatchIntent(0);
  v22 = *(*(matched - 8) + 64);
  MEMORY[0x28223BE20](matched);
  v102 = &v74 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = sub_22FFED9B8(&qword_27DB06930, &qword_230038178);
  v76 = *(v101 - 8);
  v24 = *(v76 + 64);
  MEMORY[0x28223BE20](v101);
  v100 = &v74 - v25;
  v75 = type metadata accessor for AttributionPreMatchIntent();
  v26 = *(*(v75 - 8) + 64);
  MEMORY[0x28223BE20](v75);
  v99 = &v74 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = sub_22FFED9B8(&qword_27DB06938, &qword_230038180);
  v74 = *(v98 - 8);
  v28 = *(v74 + 64);
  MEMORY[0x28223BE20](v98);
  v30 = &v74 - v29;
  v31 = type metadata accessor for AttributionMatchIntent(0);
  v32 = *(*(v31 - 8) + 64);
  MEMORY[0x28223BE20](v31);
  v34 = &v74 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = type metadata accessor for IntentMessage();
  v36 = *(*(v35 - 8) + 64);
  MEMORY[0x28223BE20](v35);
  v38 = &v74 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v106 = sub_22FFED9B8(&qword_27DB06940, &qword_230038188);
  v109 = *(v106 - 8);
  v39 = *(v109 + 64);
  MEMORY[0x28223BE20](v106);
  v41 = &v74 - v40;
  v42 = a1[4];
  sub_22FFEDA4C(a1, a1[3]);
  sub_23002418C();
  v107 = v41;
  sub_230031780();
  sub_230022E14(v108, v38);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    v108 = v31;
    v51 = v98;
    v52 = v100;
    v53 = v101;
    v54 = v104;
    v55 = v105;
    if (EnumCaseMultiPayload)
    {
      v56 = v106;
      if (EnumCaseMultiPayload == 1)
      {
        v57 = v99;
        sub_2300255B8(v38, v99, type metadata accessor for AttributionPreMatchIntent);
        v111 = 1;
        sub_230024384();
        v58 = v52;
        v59 = v107;
        sub_2300315A0();
        sub_230025620(&qword_27DB066C0, type metadata accessor for AttributionPreMatchIntent);
        sub_230031640();
        (*(v76 + 8))(v58, v53);
        v60 = type metadata accessor for AttributionPreMatchIntent;
      }

      else
      {
        v57 = v102;
        sub_2300255B8(v38, v102, type metadata accessor for AttributionPostMatchIntent);
        v112 = 2;
        sub_230024330();
        v59 = v107;
        sub_2300315A0();
        sub_230025620(&qword_27DB06970, type metadata accessor for AttributionPostMatchIntent);
        sub_230031640();
        (*(v77 + 8))(v54, v55);
        v60 = type metadata accessor for AttributionPostMatchIntent;
      }

      sub_23002442C(v57, v60);
      return (*(v109 + 8))(v59, v56);
    }

    else
    {
      sub_2300255B8(v38, v34, type metadata accessor for AttributionMatchIntent);
      v110 = 0;
      sub_2300243D8();
      v64 = v30;
      v66 = v106;
      v65 = v107;
      sub_2300315A0();
      sub_230025620(&qword_27DB063E8, type metadata accessor for AttributionMatchIntent);
      sub_230031640();
      (*(v74 + 8))(v64, v51);
      sub_23002442C(v34, type metadata accessor for AttributionMatchIntent);
      return (*(v109 + 8))(v65, v66);
    }
  }

  else
  {
    if (EnumCaseMultiPayload > 4)
    {
      v44 = v106;
      v45 = v107;
      if (EnumCaseMultiPayload == 5)
      {
        v61 = v38;
        v47 = v89;
        sub_2300255B8(v61, v89, type metadata accessor for ConversionMatchingStep2Intent);
        v115 = 5;
        sub_230024234();
        v62 = v90;
        sub_2300315A0();
        sub_230025620(&qword_27DB05C50, type metadata accessor for ConversionMatchingStep2Intent);
        v63 = v92;
        sub_230031640();
        (*(v91 + 8))(v62, v63);
        v50 = type metadata accessor for ConversionMatchingStep2Intent;
      }

      else
      {
        v71 = v38;
        v47 = v94;
        sub_2300255B8(v71, v94, type metadata accessor for ConversionMatchingStep3Intent);
        v116 = 6;
        sub_2300241E0();
        v72 = v95;
        sub_2300315A0();
        sub_230025620(&qword_27DB05D90, type metadata accessor for ConversionMatchingStep3Intent);
        v73 = v97;
        sub_230031640();
        (*(v96 + 8))(v72, v73);
        v50 = type metadata accessor for ConversionMatchingStep3Intent;
      }
    }

    else
    {
      v44 = v106;
      v45 = v107;
      if (EnumCaseMultiPayload == 3)
      {
        v46 = v38;
        v47 = v79;
        sub_2300255B8(v46, v79, type metadata accessor for JetPackAssetCacheAction);
        v113 = 3;
        sub_2300242DC();
        v48 = v80;
        sub_2300315A0();
        sub_230025620(qword_281494168, type metadata accessor for JetPackAssetCacheAction);
        v49 = v82;
        sub_230031640();
        (*(v81 + 8))(v48, v49);
        v50 = type metadata accessor for JetPackAssetCacheAction;
      }

      else
      {
        v68 = v38;
        v47 = v84;
        sub_2300255B8(v68, v84, type metadata accessor for ConversionMatchingStep1Intent);
        v114 = 4;
        sub_230024288();
        v69 = v85;
        sub_2300315A0();
        sub_230025620(&qword_27DB06960, type metadata accessor for ConversionMatchingStep1Intent);
        v70 = v87;
        sub_230031640();
        (*(v86 + 8))(v69, v70);
        v50 = type metadata accessor for ConversionMatchingStep1Intent;
      }
    }

    sub_23002442C(v47, v50);
    return (*(v109 + 8))(v45, v44);
  }
}

unint64_t sub_23002418C()
{
  result = qword_281494EB0;
  if (!qword_281494EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281494EB0);
  }

  return result;
}

unint64_t sub_2300241E0()
{
  result = qword_27DB06948;
  if (!qword_27DB06948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB06948);
  }

  return result;
}

unint64_t sub_230024234()
{
  result = qword_27DB06950;
  if (!qword_27DB06950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB06950);
  }

  return result;
}

unint64_t sub_230024288()
{
  result = qword_27DB06958;
  if (!qword_27DB06958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB06958);
  }

  return result;
}

unint64_t sub_2300242DC()
{
  result = qword_281494EC8[0];
  if (!qword_281494EC8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_281494EC8);
  }

  return result;
}

unint64_t sub_230024330()
{
  result = qword_27DB06968;
  if (!qword_27DB06968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB06968);
  }

  return result;
}

unint64_t sub_230024384()
{
  result = qword_27DB06978;
  if (!qword_27DB06978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB06978);
  }

  return result;
}

unint64_t sub_2300243D8()
{
  result = qword_27DB06980;
  if (!qword_27DB06980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB06980);
  }

  return result;
}

uint64_t sub_23002442C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t IntentMessage.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v119 = a2;
  v3 = sub_22FFED9B8(&qword_27DB06988, &qword_230038190);
  v4 = *(v3 - 8);
  v107 = v3;
  v108 = v4;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v118 = &v88 - v6;
  v106 = sub_22FFED9B8(&qword_27DB06990, &qword_230038198);
  v105 = *(v106 - 8);
  v7 = *(v105 + 64);
  MEMORY[0x28223BE20](v106);
  v112 = &v88 - v8;
  v104 = sub_22FFED9B8(&qword_27DB06998, &qword_2300381A0);
  v103 = *(v104 - 8);
  v9 = *(v103 + 64);
  MEMORY[0x28223BE20](v104);
  v111 = &v88 - v10;
  v101 = sub_22FFED9B8(&qword_27DB069A0, &qword_2300381A8);
  v102 = *(v101 - 8);
  v11 = *(v102 + 64);
  MEMORY[0x28223BE20](v101);
  v109 = &v88 - v12;
  v99 = sub_22FFED9B8(&qword_27DB069A8, &qword_2300381B0);
  v100 = *(v99 - 8);
  v13 = *(v100 + 64);
  MEMORY[0x28223BE20](v99);
  v117 = &v88 - v14;
  v98 = sub_22FFED9B8(&qword_27DB069B0, &qword_2300381B8);
  v97 = *(v98 - 8);
  v15 = *(v97 + 64);
  MEMORY[0x28223BE20](v98);
  v110 = &v88 - v16;
  v96 = sub_22FFED9B8(&qword_27DB069B8, &qword_2300381C0);
  v95 = *(v96 - 8);
  v17 = *(v95 + 64);
  MEMORY[0x28223BE20](v96);
  v115 = &v88 - v18;
  v116 = sub_22FFED9B8(&qword_27DB069C0, &unk_2300381C8);
  v114 = *(v116 - 8);
  v19 = *(v114 + 64);
  MEMORY[0x28223BE20](v116);
  v21 = &v88 - v20;
  v113 = type metadata accessor for IntentMessage();
  v22 = *(*(v113 - 8) + 64);
  v23 = MEMORY[0x28223BE20](v113);
  v94 = &v88 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x28223BE20](v23);
  v93 = &v88 - v26;
  v27 = MEMORY[0x28223BE20](v25);
  v92 = &v88 - v28;
  v29 = MEMORY[0x28223BE20](v27);
  v31 = &v88 - v30;
  v32 = MEMORY[0x28223BE20](v29);
  v34 = &v88 - v33;
  v35 = MEMORY[0x28223BE20](v32);
  v37 = &v88 - v36;
  v38 = MEMORY[0x28223BE20](v35);
  v40 = &v88 - v39;
  MEMORY[0x28223BE20](v38);
  v42 = &v88 - v41;
  v44 = a1[3];
  v43 = a1[4];
  v121 = a1;
  sub_22FFEDA4C(a1, v44);
  sub_23002418C();
  v120 = v21;
  v45 = v122;
  sub_230031770();
  if (v45)
  {
    return sub_22FFEE60C(v121);
  }

  v88 = v37;
  v89 = v34;
  v90 = v31;
  v91 = v40;
  v46 = v115;
  v47 = v116;
  v49 = v117;
  v48 = v118;
  v122 = v42;
  v51 = v119;
  v50 = v120;
  v52 = sub_230031580();
  v53 = (2 * *(v52 + 16)) | 1;
  v123 = v52;
  v124 = v52 + 32;
  v125 = 0;
  v126 = v53;
  v54 = sub_22FFEE860();
  if (v54 == 7 || v125 != v126 >> 1)
  {
    v58 = sub_230031400();
    swift_allocError();
    v59 = v50;
    v61 = v60;
    v62 = *(sub_22FFED9B8(&qword_27DB05B98, &qword_230032EB0) + 48);
    *v61 = v113;
    sub_230031480();
    sub_2300313F0();
    (*(*(v58 - 8) + 104))(v61, *MEMORY[0x277D84160], v58);
    swift_willThrow();
    (*(v114 + 8))(v59, v47);
    swift_unknownObjectRelease();
    return sub_22FFEE60C(v121);
  }

  if (v54 <= 2u)
  {
    v64 = v122;
    if (v54)
    {
      if (v54 == 1)
      {
        v127 = 1;
        sub_230024384();
        v65 = v110;
        sub_230031470();
        type metadata accessor for AttributionPreMatchIntent();
        sub_230025620(&qword_27DB066B8, type metadata accessor for AttributionPreMatchIntent);
        v66 = v88;
        v67 = v98;
        sub_230031520();
        v115 = 0;
        (*(v97 + 8))(v65, v67);
        (*(v114 + 8))(v50, v47);
        swift_unknownObjectRelease();
        swift_storeEnumTagMultiPayload();
        v87 = v66;
      }

      else
      {
        v127 = 2;
        sub_230024330();
        sub_230031470();
        type metadata accessor for AttributionPostMatchIntent(0);
        sub_230025620(&qword_27DB069D0, type metadata accessor for AttributionPostMatchIntent);
        v78 = v89;
        v79 = v99;
        sub_230031520();
        v80 = v114;
        v115 = 0;
        (*(v100 + 8))(v49, v79);
        (*(v80 + 8))(v50, v47);
        swift_unknownObjectRelease();
        swift_storeEnumTagMultiPayload();
        v87 = v78;
      }

      goto LABEL_20;
    }

    v127 = 0;
    sub_2300243D8();
    v72 = v46;
    sub_230031470();
    type metadata accessor for AttributionMatchIntent(0);
    sub_230025620(&qword_27DB063E0, type metadata accessor for AttributionMatchIntent);
    v73 = v91;
    v74 = v96;
    sub_230031520();
    (*(v95 + 8))(v72, v74);
    (*(v114 + 8))(v120, v47);
    swift_unknownObjectRelease();
    v115 = 0;
    swift_storeEnumTagMultiPayload();
    v75 = v121;
    v87 = v73;
  }

  else
  {
    if (v54 > 4u)
    {
      v68 = v114;
      if (v54 == 5)
      {
        v127 = 5;
        sub_230024234();
        v69 = v112;
        sub_230031470();
        type metadata accessor for ConversionMatchingStep2Intent();
        sub_230025620(&qword_27DB05C48, type metadata accessor for ConversionMatchingStep2Intent);
        v70 = v93;
        v71 = v106;
        sub_230031520();
        v115 = 0;
        (*(v105 + 8))(v69, v71);
      }

      else
      {
        v127 = 6;
        sub_2300241E0();
        v77 = v48;
        sub_230031470();
        type metadata accessor for ConversionMatchingStep3Intent();
        sub_230025620(&qword_27DB05D88, type metadata accessor for ConversionMatchingStep3Intent);
        v70 = v94;
        v86 = v107;
        sub_230031520();
        v115 = 0;
        (*(v108 + 8))(v77, v86);
      }

      (*(v68 + 8))(v120, v47);
      swift_unknownObjectRelease();
      swift_storeEnumTagMultiPayload();
      v87 = v70;
      goto LABEL_20;
    }

    v55 = v47;
    v56 = v114;
    if (v54 == 3)
    {
      v127 = 3;
      sub_2300242DC();
      v57 = v109;
      sub_230031470();
      type metadata accessor for JetPackAssetCacheAction();
      sub_230025620(&qword_281494160, type metadata accessor for JetPackAssetCacheAction);
      v81 = v90;
      v82 = v101;
      sub_230031520();
      v115 = 0;
      (*(v102 + 8))(v57, v82);
      (*(v56 + 8))(v120, v55);
      swift_unknownObjectRelease();
      swift_storeEnumTagMultiPayload();
      v87 = v81;
LABEL_20:
      v75 = v121;
      v64 = v122;
      goto LABEL_21;
    }

    v127 = 4;
    sub_230024288();
    v76 = v111;
    sub_230031470();
    type metadata accessor for ConversionMatchingStep1Intent();
    sub_230025620(&qword_27DB069C8, type metadata accessor for ConversionMatchingStep1Intent);
    v83 = v92;
    v84 = v76;
    v85 = v104;
    sub_230031520();
    v115 = 0;
    (*(v103 + 8))(v84, v85);
    (*(v56 + 8))(v50, v55);
    swift_unknownObjectRelease();
    swift_storeEnumTagMultiPayload();
    v87 = v83;
    v75 = v121;
    v64 = v122;
    v51 = v119;
  }

LABEL_21:
  sub_2300255B8(v87, v64, type metadata accessor for IntentMessage);
  sub_2300255B8(v64, v51, type metadata accessor for IntentMessage);
  return sub_22FFEE60C(v75);
}

uint64_t sub_2300255B8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_230025620(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_230025698()
{
  result = type metadata accessor for AttributionMatchIntent(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for AttributionPreMatchIntent();
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for AttributionPostMatchIntent(319);
      if (v3 <= 0x3F)
      {
        result = type metadata accessor for JetPackAssetCacheAction();
        if (v4 <= 0x3F)
        {
          result = type metadata accessor for ConversionMatchingStep1Intent();
          if (v5 <= 0x3F)
          {
            result = type metadata accessor for ConversionMatchingStep2Intent();
            if (v6 <= 0x3F)
            {
              result = type metadata accessor for ConversionMatchingStep3Intent();
              if (v7 <= 0x3F)
              {
                swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
                return 0;
              }
            }
          }
        }
      }
    }
  }

  return result;
}

unint64_t sub_2300257F4()
{
  result = qword_27DB069D8;
  if (!qword_27DB069D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB069D8);
  }

  return result;
}

unint64_t sub_23002584C()
{
  result = qword_27DB069E0;
  if (!qword_27DB069E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB069E0);
  }

  return result;
}

unint64_t sub_2300258A4()
{
  result = qword_27DB069E8;
  if (!qword_27DB069E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB069E8);
  }

  return result;
}

unint64_t sub_2300258FC()
{
  result = qword_27DB069F0;
  if (!qword_27DB069F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB069F0);
  }

  return result;
}

unint64_t sub_230025954()
{
  result = qword_27DB069F8;
  if (!qword_27DB069F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB069F8);
  }

  return result;
}

unint64_t sub_2300259AC()
{
  result = qword_27DB06A00;
  if (!qword_27DB06A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB06A00);
  }

  return result;
}

unint64_t sub_230025A04()
{
  result = qword_27DB06A08;
  if (!qword_27DB06A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB06A08);
  }

  return result;
}

unint64_t sub_230025A5C()
{
  result = qword_27DB06A10;
  if (!qword_27DB06A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB06A10);
  }

  return result;
}

unint64_t sub_230025AB4()
{
  result = qword_281494E90;
  if (!qword_281494E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281494E90);
  }

  return result;
}

unint64_t sub_230025B0C()
{
  result = qword_281494E98;
  if (!qword_281494E98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281494E98);
  }

  return result;
}

unint64_t sub_230025B64()
{
  result = qword_281494E80;
  if (!qword_281494E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281494E80);
  }

  return result;
}

unint64_t sub_230025BBC()
{
  result = qword_281494E88;
  if (!qword_281494E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281494E88);
  }

  return result;
}

unint64_t sub_230025C14()
{
  result = qword_281494E70;
  if (!qword_281494E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281494E70);
  }

  return result;
}

unint64_t sub_230025C6C()
{
  result = qword_281494E78;
  if (!qword_281494E78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281494E78);
  }

  return result;
}

unint64_t sub_230025CC4()
{
  result = qword_281494EB8;
  if (!qword_281494EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281494EB8);
  }

  return result;
}

unint64_t sub_230025D1C()
{
  result = qword_281494EC0;
  if (!qword_281494EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281494EC0);
  }

  return result;
}

unint64_t sub_230025D74()
{
  result = qword_281494E60;
  if (!qword_281494E60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281494E60);
  }

  return result;
}

unint64_t sub_230025DCC()
{
  result = qword_281494E68;
  if (!qword_281494E68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281494E68);
  }

  return result;
}

unint64_t sub_230025E24()
{
  result = qword_281494E50;
  if (!qword_281494E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281494E50);
  }

  return result;
}

unint64_t sub_230025E7C()
{
  result = qword_281494E58;
  if (!qword_281494E58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281494E58);
  }

  return result;
}

unint64_t sub_230025ED4()
{
  result = qword_281494E40;
  if (!qword_281494E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281494E40);
  }

  return result;
}

unint64_t sub_230025F2C()
{
  result = qword_281494E48;
  if (!qword_281494E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281494E48);
  }

  return result;
}

unint64_t sub_230025F84()
{
  result = qword_281494EA0;
  if (!qword_281494EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281494EA0);
  }

  return result;
}

unint64_t sub_230025FDC()
{
  result = qword_281494EA8;
  if (!qword_281494EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281494EA8);
  }

  return result;
}

uint64_t sub_230026030(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0xD000000000000010 && 0x800000023003A8F0 == a2;
  if (v4 || (sub_2300316D0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000013 && 0x800000023003A910 == a2 || (sub_2300316D0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000014 && 0x800000023003A930 == a2 || (sub_2300316D0() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000011 && 0x800000023003A950 == a2 || (sub_2300316D0() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000017 && 0x800000023003A970 == a2 || (sub_2300316D0() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000017 && 0x800000023003A990 == a2 || (sub_2300316D0() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000017 && 0x800000023003A9B0 == a2)
  {

    return 6;
  }

  else
  {
    v6 = sub_2300316D0();

    if (v6)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

uint64_t CustomIntentContext.stateStore.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t CustomIntentContext.stateStore.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t CustomIntentContext.debugDescription.getter()
{
  v1 = *v0;
  v2 = v0[1];
  strcpy(v4, "stateStore: ");
  MEMORY[0x23190F560](v1, v2);
  return v4[0];
}

uint64_t CustomIntentContext.CodingKeys.init(rawValue:)@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_230031460();

  *a1 = v2 != 0;
  return result;
}

uint64_t CustomIntentContext.CodingKeys.init(stringValue:)@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_230031460();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_230026454()
{
  sub_230031740();
  sub_2300311A0();
  return sub_230031760();
}

uint64_t sub_2300264C8()
{
  sub_230031740();
  sub_2300311A0();
  return sub_230031760();
}

uint64_t sub_23002651C@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_230031460();

  *a2 = v5 != 0;
  return result;
}

uint64_t sub_2300265AC@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_230031460();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_230026604(uint64_t a1)
{
  v2 = sub_2300267B8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_230026640(uint64_t a1)
{
  v2 = sub_2300267B8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t CustomIntentContext.encode(to:)(void *a1)
{
  v3 = sub_22FFED9B8(&qword_27DB06A18, &qword_230038BF0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v12 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = a1[4];
  sub_22FFEDA4C(a1, a1[3]);
  sub_2300267B8();
  sub_230031780();
  sub_230031600();
  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_2300267B8()
{
  result = qword_27DB06A20;
  if (!qword_27DB06A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB06A20);
  }

  return result;
}

uint64_t CustomIntentContext.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_22FFED9B8(&qword_27DB06A28, &qword_230038BF8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v15 - v8;
  v10 = a1[4];
  sub_22FFEDA4C(a1, a1[3]);
  sub_2300267B8();
  sub_230031770();
  if (!v2)
  {
    v11 = sub_2300314E0();
    v13 = v12;
    (*(v6 + 8))(v9, v5);
    *a2 = v11;
    a2[1] = v13;
  }

  return sub_22FFEE60C(a1);
}

unint64_t sub_230026984()
{
  result = qword_27DB06A30;
  if (!qword_27DB06A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB06A30);
  }

  return result;
}

unint64_t sub_2300269DC()
{
  result = qword_27DB06A38;
  if (!qword_27DB06A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB06A38);
  }

  return result;
}

unint64_t sub_230026A34()
{
  result = qword_27DB06A40;
  if (!qword_27DB06A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB06A40);
  }

  return result;
}

uint64_t sub_230026AA0(void *a1)
{
  v3 = sub_22FFED9B8(&qword_27DB06A18, &qword_230038BF0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v12 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = a1[4];
  sub_22FFEDA4C(a1, a1[3]);
  sub_2300267B8();
  sub_230031780();
  sub_230031600();
  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_230026BDC()
{
  v1 = *v0;
  v2 = v0[1];
  strcpy(v4, "stateStore: ");
  MEMORY[0x23190F560](v1, v2);
  return v4[0];
}

__n128 sub_230026C30(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_230026C3C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_230026C84(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t AttributionMatchedEventProperties.impressionId.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t AttributionMatchedEventProperties.timestamp.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AttributionMatchedEventProperties() + 20);
  v4 = sub_230030E00();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for AttributionMatchedEventProperties()
{
  result = qword_281494418;
  if (!qword_281494418)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t AttributionMatchedEventProperties.claimType.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for AttributionMatchedEventProperties();
  *a1 = *(v1 + *(result + 24));
  return result;
}

uint64_t AttributionMatchedEventProperties.attributionDownloadType.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for AttributionMatchedEventProperties();
  *a1 = *(v1 + *(result + 28));
  return result;
}

uint64_t AttributionMatchedEventProperties.init(impressionId:timestamp:claimType:downloadType:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X3>, char *a5@<X4>, char *a6@<X8>)
{
  v8 = *a4;
  v9 = *a5;
  *a6 = a1;
  *(a6 + 1) = a2;
  v10 = type metadata accessor for AttributionMatchedEventProperties();
  v11 = v10[5];
  v12 = sub_230030E00();
  result = (*(*(v12 - 8) + 32))(&a6[v11], a3, v12);
  a6[v10[6]] = v8;
  a6[v10[7]] = v9;
  return result;
}

PromotedContentJetClient::AttributionMatchedEventProperties::CodingKeys_optional __swiftcall AttributionMatchedEventProperties.CodingKeys.init(stringValue:)(Swift::String stringValue)
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

unint64_t AttributionMatchedEventProperties.CodingKeys.stringValue.getter()
{
  v1 = 0x6973736572706D69;
  v2 = 0x7079546D69616C63;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000017;
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

uint64_t sub_230026FE8()
{
  v1 = *v0;
  sub_230031740();
  sub_2300311A0();

  return sub_230031760();
}

uint64_t sub_2300270BC()
{
  *v0;
  *v0;
  sub_2300311A0();
}

uint64_t sub_23002717C()
{
  v1 = *v0;
  sub_230031740();
  sub_2300311A0();

  return sub_230031760();
}

void sub_230027258(unint64_t *a1@<X8>)
{
  v2 = 0xEC00000064496E6FLL;
  v3 = 0x6973736572706D69;
  v4 = 0x7079546D69616C63;
  v5 = 0x800000023003A290;
  if (*v1 == 2)
  {
    v5 = 0xE900000000000065;
  }

  else
  {
    v4 = 0xD000000000000017;
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

unint64_t sub_2300272E8()
{
  v1 = 0x6973736572706D69;
  v2 = 0x7079546D69616C63;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000017;
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

uint64_t sub_2300273AC(uint64_t a1)
{
  v2 = sub_230027668();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2300273E8(uint64_t a1)
{
  v2 = sub_230027668();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AttributionMatchedEventProperties.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_22FFED9B8(&qword_27DB06A48, &qword_230038E10);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v16[-v8];
  v10 = a1[4];
  sub_22FFEDA4C(a1, a1[3]);
  sub_230027668();
  sub_230031780();
  v11 = *v3;
  v12 = v3[1];
  v16[15] = 0;
  sub_230031600();
  if (!v2)
  {
    v13 = type metadata accessor for AttributionMatchedEventProperties();
    v14 = v13[5];
    v16[14] = 1;
    sub_230030E00();
    sub_230027DC8(&qword_281494290, MEMORY[0x277CC9578]);
    sub_230031640();
    v16[13] = *(v3 + v13[6]);
    v16[12] = 2;
    sub_2300088EC();
    sub_230031640();
    v16[11] = *(v3 + v13[7]);
    v16[10] = 3;
    sub_2300276BC();
    sub_230031640();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_230027668()
{
  result = qword_27DB06A50;
  if (!qword_27DB06A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB06A50);
  }

  return result;
}

unint64_t sub_2300276BC()
{
  result = qword_27DB06A58;
  if (!qword_27DB06A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB06A58);
  }

  return result;
}

uint64_t AttributionMatchedEventProperties.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a2;
  v3 = sub_230030E00();
  v21 = *(v3 - 8);
  v4 = *(v21 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_22FFED9B8(&qword_27DB06A60, &qword_230038E18);
  v22 = *(v24 - 8);
  v7 = *(v22 + 64);
  MEMORY[0x28223BE20](v24);
  v9 = &v20 - v8;
  v10 = type metadata accessor for AttributionMatchedEventProperties();
  v11 = *(*(v10 - 1) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = (&v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = a1[4];
  sub_22FFEDA4C(a1, a1[3]);
  sub_230027668();
  v23 = v9;
  v15 = v25;
  sub_230031770();
  if (v15)
  {
    return sub_22FFEE60C(a1);
  }

  v16 = v13;
  v17 = v21;
  v31 = 0;
  *v16 = sub_2300314E0();
  v16[1] = v18;
  v25 = v18;
  v30 = 1;
  sub_230027DC8(&qword_27DB05CA0, MEMORY[0x277CC9578]);
  sub_230031520();
  (*(v17 + 32))(v16 + v10[5], v6, v3);
  v28 = 2;
  sub_230008D2C();
  sub_230031520();
  *(v16 + v10[6]) = v29;
  v26 = 3;
  sub_230027AF8();
  sub_230031520();
  (*(v22 + 8))(v23, v24);
  *(v16 + v10[7]) = v27;
  sub_230027B4C(v16, v20);
  sub_22FFEE60C(a1);
  return sub_230027BB0(v16);
}

unint64_t sub_230027AF8()
{
  result = qword_27DB06A68;
  if (!qword_27DB06A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB06A68);
  }

  return result;
}

uint64_t sub_230027B4C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AttributionMatchedEventProperties();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_230027BB0(uint64_t a1)
{
  v2 = type metadata accessor for AttributionMatchedEventProperties();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_230027C10()
{
  result = qword_27DB06A70;
  if (!qword_27DB06A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB06A70);
  }

  return result;
}

unint64_t sub_230027C68()
{
  result = qword_27DB06A78;
  if (!qword_27DB06A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB06A78);
  }

  return result;
}

unint64_t sub_230027CC0()
{
  result = qword_27DB06A80;
  if (!qword_27DB06A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB06A80);
  }

  return result;
}

uint64_t sub_230027D44(uint64_t a1)
{
  *(a1 + 8) = sub_230027DC8(&qword_27DB063B0, type metadata accessor for AttributionMatchedEventProperties);
  result = sub_230027DC8(&qword_27DB06208, type metadata accessor for AttributionMatchedEventProperties);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_230027DC8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_230027E38()
{
  result = sub_230030E00();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_230027EE4()
{
  sub_2300311A0();
}

uint64_t sub_230028030()
{
  sub_230031740();
  sub_2300311A0();

  return sub_230031760();
}

uint64_t sub_230028160()
{
  sub_230031740();
  sub_2300311A0();

  return sub_230031760();
}

uint64_t sub_23002829C()
{
  sub_230031740();
  sub_2300311A0();

  return sub_230031760();
}

uint64_t sub_2300283FC()
{
  sub_230031740();
  sub_2300311A0();

  return sub_230031760();
}

uint64_t sub_230028540()
{
  sub_230031740();
  sub_2300311A0();

  return sub_230031760();
}

uint64_t sub_230028658()
{
  sub_230031740();
  sub_2300311A0();

  return sub_230031760();
}

uint64_t sub_230028798()
{
  sub_230031740();
  sub_2300311A0();

  return sub_230031760();
}

uint64_t AttributionMatchedProperties.impressionId.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t sub_2300289B0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t AttributionMatchedProperties.init(impressionId:metaData:attributionProperties:actionStoreAd:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X4>, uint64_t a4@<X5>, void *a5@<X8>)
{

  *a5 = a1;
  a5[1] = a2;
  v10 = type metadata accessor for AttributionMatchedProperties(0);
  sub_230029C0C(a3, a5 + *(v10 + 20), type metadata accessor for AttributionMatchedEventProperties);
  return sub_230029C0C(a4, a5 + *(v10 + 24), type metadata accessor for ActionStoreAdInstance);
}

PromotedContentJetClient::AttributionMatchedProperties::CodingKeys_optional __swiftcall AttributionMatchedProperties.CodingKeys.init(stringValue:)(Swift::String stringValue)
{
  v2 = v1;
  v3 = sub_230031460();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t AttributionMatchedProperties.CodingKeys.stringValue.getter()
{
  v1 = 0xD000000000000015;
  if (*v0 != 1)
  {
    v1 = 0x74536E6F69746361;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6973736572706D69;
  }
}

uint64_t sub_230028BA0(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xD000000000000015;
  v4 = 0x800000023003A2B0;
  if (v2 == 1)
  {
    v5 = 0x800000023003A2B0;
  }

  else
  {
    v3 = 0x74536E6F69746361;
    v5 = 0xED0000644165726FLL;
  }

  if (*a1)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0x6973736572706D69;
  }

  if (v2)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0xEC00000064496E6FLL;
  }

  v8 = 0xD000000000000015;
  if (*a2 != 1)
  {
    v8 = 0x74536E6F69746361;
    v4 = 0xED0000644165726FLL;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x6973736572706D69;
  }

  if (*a2)
  {
    v10 = v4;
  }

  else
  {
    v10 = 0xEC00000064496E6FLL;
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

uint64_t sub_230028CB8()
{
  v1 = *v0;
  sub_230031740();
  sub_2300311A0();

  return sub_230031760();
}

uint64_t sub_230028D74()
{
  *v0;
  *v0;
  sub_2300311A0();
}

uint64_t sub_230028E1C()
{
  v1 = *v0;
  sub_230031740();
  sub_2300311A0();

  return sub_230031760();
}

void sub_230028EE0(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEC00000064496E6FLL;
  v4 = 0x800000023003A2B0;
  v5 = 0xD000000000000015;
  if (v2 != 1)
  {
    v5 = 0x74536E6F69746361;
    v4 = 0xED0000644165726FLL;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6973736572706D69;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_230028F58()
{
  v1 = 0xD000000000000015;
  if (*v0 != 1)
  {
    v1 = 0x74536E6F69746361;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6973736572706D69;
  }
}

uint64_t sub_230029004(uint64_t a1)
{
  v2 = sub_2300292AC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_230029040(uint64_t a1)
{
  v2 = sub_2300292AC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AttributionMatchedProperties.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_22FFED9B8(&qword_27DB06A88, &qword_230039030);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v17[-v8];
  v10 = a1[4];
  sub_22FFEDA4C(a1, a1[3]);
  sub_2300292AC();
  sub_230031780();
  v11 = *v3;
  v12 = v3[1];
  v17[15] = 0;
  sub_230031600();
  if (!v2)
  {
    v13 = type metadata accessor for AttributionMatchedProperties(0);
    v14 = *(v13 + 20);
    v17[14] = 1;
    type metadata accessor for AttributionMatchedEventProperties();
    sub_230029300(&qword_27DB06208, type metadata accessor for AttributionMatchedEventProperties);
    sub_230031640();
    v15 = *(v13 + 24);
    v17[13] = 2;
    type metadata accessor for ActionStoreAdInstance();
    sub_230029300(&qword_27DB05D58, type metadata accessor for ActionStoreAdInstance);
    sub_230031640();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_2300292AC()
{
  result = qword_27DB06A90;
  if (!qword_27DB06A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB06A90);
  }

  return result;
}

uint64_t sub_230029300(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t AttributionMatchedProperties.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v28 = type metadata accessor for ActionStoreAdInstance();
  v3 = *(*(v28 - 8) + 64);
  MEMORY[0x28223BE20](v28);
  v27 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for AttributionMatchedEventProperties();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22FFED9B8(&qword_27DB06A98, &qword_230039038);
  v29 = *(v9 - 8);
  v30 = v9;
  v10 = *(v29 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v25 - v11;
  v13 = type metadata accessor for AttributionMatchedProperties(0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = (&v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = a1[4];
  sub_22FFEDA4C(a1, a1[3]);
  sub_2300292AC();
  v31 = v12;
  v18 = v32;
  sub_230031770();
  if (v18)
  {
    return sub_22FFEE60C(a1);
  }

  v32 = v13;
  v19 = v29;
  v35 = 0;
  v20 = v16;
  *v16 = sub_2300314E0();
  v16[1] = v21;
  v25 = v21;
  v34 = 1;
  sub_230029300(&qword_27DB063B0, type metadata accessor for AttributionMatchedEventProperties);
  sub_230031520();
  v22 = v32;
  sub_230029C0C(v8, v20 + *(v32 + 20), type metadata accessor for AttributionMatchedEventProperties);
  v33 = 2;
  sub_230029300(&qword_27DB05D68, type metadata accessor for ActionStoreAdInstance);
  v23 = v27;
  sub_230031520();
  (*(v19 + 8))(v31, v30);
  sub_230029C0C(v23, v20 + *(v22 + 24), type metadata accessor for ActionStoreAdInstance);
  sub_2300289B0(v20, v26, type metadata accessor for AttributionMatchedProperties);
  sub_22FFEE60C(a1);
  return sub_230029778(v20, type metadata accessor for AttributionMatchedProperties);
}

uint64_t sub_230029778(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t AttributionPostMatchIntent.currentTime.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_230030E00();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t AttributionPostMatchIntent.adamId.getter()
{
  v1 = (v0 + *(type metadata accessor for AttributionPostMatchIntent(0) + 24));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t AttributionPostMatchIntent.bundleId.getter()
{
  v1 = (v0 + *(type metadata accessor for AttributionPostMatchIntent(0) + 28));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t AttributionPostMatchIntent.callEventType.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for AttributionPostMatchIntent(0);
  *a1 = *(v1 + *(result + 32));
  return result;
}

uint64_t AttributionPostMatchIntent.matchedAds.getter()
{
  v1 = *(v0 + *(type metadata accessor for AttributionPostMatchIntent(0) + 36));
}

uint64_t AttributionPostMatchIntent.intentContext.getter@<X0>(void *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for AttributionPostMatchIntent(0) + 40));
  v4 = v3[1];
  *a1 = *v3;
  a1[1] = v4;
}

uint64_t AttributionPostMatchIntent.intentContext.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = (v1 + *(type metadata accessor for AttributionPostMatchIntent(0) + 40));
  v5 = v4[1];

  *v4 = v2;
  v4[1] = v3;
  return result;
}

uint64_t AttributionPostMatchIntent.init(currentTime:config:adamID:bundleId:callEventType:matchedAds:intentContext:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char *a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t *a10)
{
  v17 = *a7;
  v25 = a10[1];
  v26 = *a10;
  matched = type metadata accessor for AttributionPostMatchIntent(0);
  v19 = (a9 + matched[10]);
  v20 = sub_230030E00();
  *v19 = 0;
  v19[1] = 0;
  (*(*(v20 - 8) + 32))(a9, a1, v20);
  sub_230029C0C(a2, a9 + matched[5], type metadata accessor for AttributionConfig);
  v21 = (a9 + matched[6]);
  *v21 = a3;
  v21[1] = a4;
  v22 = (a9 + matched[7]);
  *v22 = a5;
  v22[1] = a6;
  *(a9 + matched[8]) = v17;
  *(a9 + matched[9]) = a8;
  v23 = v19[1];

  *v19 = v26;
  v19[1] = v25;
  return result;
}

uint64_t sub_230029C0C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

PromotedContentJetClient::AttributionPostMatchIntent::CodingKeys_optional __swiftcall AttributionPostMatchIntent.CodingKeys.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_230031460();

  v5 = 7;
  if (v3 < 7)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

PromotedContentJetClient::AttributionPostMatchIntent::CodingKeys_optional __swiftcall AttributionPostMatchIntent.CodingKeys.init(stringValue:)(Swift::String stringValue)
{
  v2 = v1;
  result.value = AttributionPostMatchIntent.CodingKeys.init(rawValue:)(stringValue).value;
  *v2 = v4;
  return result;
}

uint64_t AttributionPostMatchIntent.CodingKeys.stringValue.getter()
{
  v1 = *v0;
  v2 = 0x54746E6572727563;
  v3 = 0x416465686374616DLL;
  if (v1 != 5)
  {
    v3 = 0x6F43746E65746E69;
  }

  v4 = 0x6449656C646E7562;
  if (v1 != 3)
  {
    v4 = 0x6E6576456C6C6163;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x6769666E6F63;
  if (v1 != 1)
  {
    v5 = 0x64496D616461;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_230029E30()
{
  *v0;
  *v0;
  *v0;
  *v0;
  sub_2300311A0();
}

void sub_230029F70(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEB00000000656D69;
  v4 = 0x54746E6572727563;
  v5 = 0xEA00000000007364;
  v6 = 0x416465686374616DLL;
  if (v2 != 5)
  {
    v6 = 0x6F43746E65746E69;
    v5 = 0xED0000747865746ELL;
  }

  v7 = 0xE800000000000000;
  v8 = 0x6449656C646E7562;
  if (v2 != 3)
  {
    v8 = 0x6E6576456C6C6163;
    v7 = 0xED00006570795474;
  }

  if (*v1 <= 4u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0x6769666E6F63;
  if (v2 != 1)
  {
    v9 = 0x64496D616461;
  }

  if (*v1)
  {
    v4 = v9;
    v3 = 0xE600000000000000;
  }

  if (*v1 <= 2u)
  {
    v10 = v4;
  }

  else
  {
    v10 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v10;
  a1[1] = v3;
}

uint64_t sub_23002A06C()
{
  v1 = *v0;
  v2 = 0x54746E6572727563;
  v3 = 0x416465686374616DLL;
  if (v1 != 5)
  {
    v3 = 0x6F43746E65746E69;
  }

  v4 = 0x6449656C646E7562;
  if (v1 != 3)
  {
    v4 = 0x6E6576456C6C6163;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x6769666E6F63;
  if (v1 != 1)
  {
    v5 = 0x64496D616461;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_23002A19C(uint64_t a1)
{
  v2 = sub_23002A5A8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23002A1D8(uint64_t a1)
{
  v2 = sub_23002A5A8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AttributionPostMatchIntent.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_22FFED9B8(&qword_27DB06AA0, &qword_230039060);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v22 - v8;
  v10 = a1[4];
  sub_22FFEDA4C(a1, a1[3]);
  sub_23002A5A8();
  sub_230031780();
  LOBYTE(v23) = 0;
  sub_230030E00();
  sub_230029300(&qword_281494290, MEMORY[0x277CC9578]);
  sub_230031640();
  if (!v2)
  {
    matched = type metadata accessor for AttributionPostMatchIntent(0);
    v12 = matched[5];
    LOBYTE(v23) = 1;
    type metadata accessor for AttributionConfig();
    sub_230029300(&qword_27DB06308, type metadata accessor for AttributionConfig);
    sub_230031640();
    v13 = (v3 + matched[6]);
    v14 = *v13;
    v15 = v13[1];
    LOBYTE(v23) = 2;
    sub_230031600();
    v16 = (v3 + matched[7]);
    v17 = *v16;
    v18 = v16[1];
    LOBYTE(v23) = 3;
    sub_230031600();
    LOBYTE(v23) = *(v3 + matched[8]);
    v25 = 4;
    sub_2300078CC();
    sub_230031640();
    v23 = *(v3 + matched[9]);
    v25 = 5;
    sub_22FFED9B8(&qword_27DB06AB0, &qword_230039068);
    sub_23002ACD8(&qword_27DB06AB8, &qword_27DB06AC0);
    sub_230031640();
    v19 = (v3 + matched[10]);
    v20 = v19[1];
    v23 = *v19;
    v24 = v20;
    v25 = 6;
    sub_230007920();

    sub_2300315D0();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_23002A5A8()
{
  result = qword_27DB06AA8;
  if (!qword_27DB06AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB06AA8);
  }

  return result;
}

uint64_t AttributionPostMatchIntent.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v37 = a2;
  v40 = type metadata accessor for AttributionConfig();
  v3 = *(*(v40 - 8) + 64);
  MEMORY[0x28223BE20](v40);
  v5 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_230030E00();
  v38 = *(v6 - 8);
  v7 = *(v38 + 64);
  MEMORY[0x28223BE20](v6);
  v41 = (&v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v43 = sub_22FFED9B8(&qword_27DB06AC8, &qword_230039070);
  v39 = *(v43 - 8);
  v9 = *(v39 + 64);
  MEMORY[0x28223BE20](v43);
  v11 = &v36 - v10;
  matched = type metadata accessor for AttributionPostMatchIntent(0);
  v13 = *(*(matched - 8) + 64);
  v14 = MEMORY[0x28223BE20](matched);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = &v16[*(v14 + 40)];
  *v17 = 0;
  *(v17 + 1) = 0;
  v45 = v17;
  v18 = a1[4];
  sub_22FFEDA4C(a1, a1[3]);
  sub_23002A5A8();
  v42 = v11;
  v19 = v44;
  sub_230031770();
  if (v19)
  {
    sub_22FFEE60C(a1);
    v21 = *(v45 + 1);
  }

  else
  {
    v20 = v39;
    v44 = matched;
    LOBYTE(v46) = 0;
    sub_230029300(&qword_27DB05CA0, MEMORY[0x277CC9578]);
    sub_230031520();
    v22 = v16;
    (*(v38 + 32))(v16, v41, v6);
    LOBYTE(v46) = 1;
    sub_230029300(&qword_27DB06328, type metadata accessor for AttributionConfig);
    v23 = v5;
    sub_230031520();
    v24 = v44;
    sub_230029C0C(v23, v22 + v44[5], type metadata accessor for AttributionConfig);
    LOBYTE(v46) = 2;
    v25 = sub_2300314E0();
    v41 = a1;
    v26 = (v22 + v24[6]);
    *v26 = v25;
    v26[1] = v27;
    LOBYTE(v46) = 3;
    v28 = sub_2300314E0();
    v29 = (v22 + v24[7]);
    *v29 = v28;
    v29[1] = v30;
    v48 = 4;
    sub_23000805C();
    sub_230031520();
    *(v22 + v24[8]) = v46;
    sub_22FFED9B8(&qword_27DB06AB0, &qword_230039068);
    v48 = 5;
    sub_23002ACD8(&qword_27DB06AD0, &qword_27DB06AD8);
    sub_230031520();
    *(v22 + v24[9]) = v46;
    v48 = 6;
    sub_2300080B0();
    sub_2300314B0();
    (*(v20 + 8))(v42, v43);
    v31 = v46;
    v32 = v47;
    v33 = v45;
    v34 = *(v45 + 1);

    *v33 = v31;
    *(v33 + 1) = v32;
    sub_2300289B0(v22, v37, type metadata accessor for AttributionPostMatchIntent);
    sub_22FFEE60C(v41);
    return sub_230029778(v22, type metadata accessor for AttributionPostMatchIntent);
  }
}

uint64_t sub_23002ACD8(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_22FFF0054(&qword_27DB06AB0, &qword_230039068);
    sub_230029300(a2, type metadata accessor for AttributionMatchedProperties);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t AttributionCandidateProperties.bundleId.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t AttributionCandidateProperties.timeWindowStart.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AttributionCandidateProperties(0) + 24);
  v4 = sub_230030E00();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AttributionCandidateProperties.timeWindowEnd.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AttributionCandidateProperties(0) + 28);
  v4 = sub_230030E00();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AttributionCandidateProperties.attributionVersion.getter()
{
  v1 = (v0 + *(type metadata accessor for AttributionCandidateProperties(0) + 36));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t AttributionCandidateProperties.passthroughJSON.getter()
{
  v1 = (v0 + *(type metadata accessor for AttributionCandidateProperties(0) + 40));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

PromotedContentJetClient::AttributionCandidateProperties::CodingKeys_optional __swiftcall AttributionCandidateProperties.CodingKeys.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_230031460();

  v5 = 7;
  if (v3 < 7)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

PromotedContentJetClient::AttributionCandidateProperties::CodingKeys_optional __swiftcall AttributionCandidateProperties.CodingKeys.init(stringValue:)(Swift::String stringValue)
{
  v2 = v1;
  result.value = AttributionCandidateProperties.CodingKeys.init(rawValue:)(stringValue).value;
  *v2 = v4;
  return result;
}

unint64_t sub_23002B050()
{
  v1 = *v0;
  v2 = 0x64496D616461;
  v3 = 0xD000000000000012;
  if (v1 != 5)
  {
    v3 = 0x6F72687473736170;
  }

  v4 = 0x646E6957656D6974;
  if (v1 != 3)
  {
    v4 = 0x7475626972747461;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x6449656C646E7562;
  if (v1 != 1)
  {
    v5 = 0x646E6957656D6974;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_23002B170()
{
  *v0;
  *v0;
  *v0;
  sub_2300311A0();
}

void sub_23002B2C0(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE600000000000000;
  v4 = 0x64496D616461;
  v5 = 0x800000023003A310;
  v6 = 0xD000000000000012;
  if (v2 != 5)
  {
    v6 = 0x6F72687473736170;
    v5 = 0xEF4E4F534A686775;
  }

  v7 = 0xED0000646E45776FLL;
  v8 = 0x646E6957656D6974;
  if (v2 != 3)
  {
    v8 = 0x7475626972747461;
    v7 = 0xEB000000006E6F69;
  }

  if (*v1 <= 4u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE800000000000000;
  v10 = 0x6449656C646E7562;
  if (v2 != 1)
  {
    v10 = 0x646E6957656D6974;
    v9 = 0xEF7472617453776FLL;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  v13 = __OFSUB__(v2, 2);
  v11 = v2 == 2;
  v12 = v2 - 2 < 0;
  if (*v1 <= 2u)
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

uint64_t sub_23002B404(uint64_t a1)
{
  v2 = sub_23002B744();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23002B440(uint64_t a1)
{
  v2 = sub_23002B744();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AttributionCandidateProperties.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_22FFED9B8(&qword_27DB06AE0, &qword_230039078);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v26 - v8;
  v10 = a1[4];
  sub_22FFEDA4C(a1, a1[3]);
  sub_23002B744();
  sub_230031780();
  v11 = *v3;
  v12 = v3[1];
  v33 = 0;
  sub_230031600();
  if (!v2)
  {
    v14 = v3[2];
    v15 = v3[3];
    v32 = 1;
    sub_230031600();
    v16 = type metadata accessor for AttributionCandidateProperties(0);
    v17 = v16[6];
    v31 = 2;
    sub_230030E00();
    sub_230029300(&qword_281494290, MEMORY[0x277CC9578]);
    sub_230031640();
    v18 = v16[7];
    v30 = 3;
    sub_230031640();
    v19 = *(v3 + v16[8]);
    v29 = 4;
    sub_230031610();
    v20 = (v3 + v16[9]);
    v21 = *v20;
    v22 = v20[1];
    v28 = 5;
    sub_230031600();
    v23 = (v3 + v16[10]);
    v24 = *v23;
    v25 = v23[1];
    v27 = 6;
    sub_230031600();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_23002B744()
{
  result = qword_27DB06AE8;
  if (!qword_27DB06AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB06AE8);
  }

  return result;
}

uint64_t AttributionCandidateProperties.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v47 = a2;
  v3 = sub_230030E00();
  v4 = *(v3 - 8);
  v49 = v3;
  v50 = v4;
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v44 - v9;
  v51 = sub_22FFED9B8(&qword_27DB06AF0, &qword_230039080);
  v48 = *(v51 - 8);
  v11 = *(v48 + 64);
  MEMORY[0x28223BE20](v51);
  v13 = &v44 - v12;
  v14 = type metadata accessor for AttributionCandidateProperties(0);
  v15 = *(*(v14 - 1) + 64);
  MEMORY[0x28223BE20](v14);
  v17 = (&v44 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = a1[3];
  v18 = a1[4];
  v53 = a1;
  sub_22FFEDA4C(a1, v19);
  sub_23002B744();
  v20 = v13;
  v21 = v52;
  sub_230031770();
  if (v21)
  {
    return sub_22FFEE60C(v53);
  }

  v52 = v8;
  v22 = v48;
  v23 = v49;
  v24 = v50;
  v60 = 0;
  *v17 = sub_2300314E0();
  v17[1] = v26;
  v59 = 1;
  v17[2] = sub_2300314E0();
  v17[3] = v27;
  v58 = 2;
  sub_230029300(&qword_27DB05CA0, MEMORY[0x277CC9578]);
  v45 = v17;
  sub_230031520();
  v46 = 0;
  v28 = *(v24 + 32);
  v28(v45 + v14[6], v10, v23);
  v57 = 3;
  v29 = v52;
  v30 = v46;
  sub_230031520();
  if (v30)
  {
    (*(v22 + 8))(v20, v51);
    v46 = v30;
    v31 = v45;
    sub_22FFEE60C(v53);
    v38 = v31[1];

    v39 = v31[3];

    return (*(v50 + 8))(v31 + v14[6], v23);
  }

  else
  {
    v28(v45 + v14[7], v29, v23);
    v56 = 4;
    v32 = sub_2300314F0();
    v33 = v45;
    *(v45 + v14[8]) = v32 & 1;
    v55 = 5;
    v34 = sub_2300314E0();
    v35 = (v33 + v14[9]);
    *v35 = v34;
    v35[1] = v36;
    v54 = 6;
    v37 = sub_2300314E0();
    v46 = 0;
    v40 = v37;
    v42 = v41;
    (*(v22 + 8))(v20, v51);
    v43 = (v33 + v14[10]);
    *v43 = v40;
    v43[1] = v42;
    sub_2300289B0(v33, v47, type metadata accessor for AttributionCandidateProperties);
    sub_22FFEE60C(v53);
    return sub_230029778(v33, type metadata accessor for AttributionCandidateProperties);
  }
}

uint64_t AttributionPostMatchIntent.ReturnType.encode(to:)(void *a1)
{
  v3 = sub_22FFED9B8(&qword_27DB06AF8, &qword_230039088);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v11 - v6;
  v8 = *v1;
  v9 = a1[4];
  sub_22FFEDA4C(a1, a1[3]);
  sub_23002BF4C();

  sub_230031780();
  v11[1] = v8;
  sub_22FFED9B8(&qword_27DB06B08, &qword_230039090);
  sub_23002BFA0(&qword_27DB06B10, &qword_27DB06398);
  sub_230031640();

  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_23002BF4C()
{
  result = qword_27DB06B00;
  if (!qword_27DB06B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB06B00);
  }

  return result;
}

uint64_t sub_23002BFA0(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_22FFF0054(&qword_27DB06B08, &qword_230039090);
    sub_230029300(a2, type metadata accessor for AttributionCandidateProperties);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t AttributionPostMatchIntent.ReturnType.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = sub_22FFED9B8(&qword_27DB06B18, &qword_230039098);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v12 - v8;
  v10 = a1[4];
  sub_22FFEDA4C(a1, a1[3]);
  sub_23002BF4C();
  sub_230031770();
  if (!v2)
  {
    sub_22FFED9B8(&qword_27DB06B08, &qword_230039090);
    sub_23002BFA0(&qword_27DB06B20, &qword_27DB063B8);
    sub_230031520();
    (*(v6 + 8))(v9, v5);
    *a2 = v12[1];
  }

  return sub_22FFEE60C(a1);
}

uint64_t AttributionPostMatchIntent.ReturnType.CodingKeys.init(stringValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000015 && 0x800000023003A9D0 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_2300316D0();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t AttributionPostMatchIntent.ReturnType.CodingKeys.hashValue.getter()
{
  sub_230031740();
  MEMORY[0x23190FB00](0);
  return sub_230031760();
}

unint64_t sub_23002C364()
{
  result = qword_27DB06B28;
  if (!qword_27DB06B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB06B28);
  }

  return result;
}

unint64_t sub_23002C3BC()
{
  result = qword_27DB06B30;
  if (!qword_27DB06B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB06B30);
  }

  return result;
}

unint64_t sub_23002C414()
{
  result = qword_27DB06B38;
  if (!qword_27DB06B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB06B38);
  }

  return result;
}

unint64_t sub_23002C46C()
{
  result = qword_27DB06B40;
  if (!qword_27DB06B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB06B40);
  }

  return result;
}

unint64_t sub_23002C4C4()
{
  result = qword_27DB06B48;
  if (!qword_27DB06B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB06B48);
  }

  return result;
}

unint64_t sub_23002C51C()
{
  result = qword_27DB06B50;
  if (!qword_27DB06B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB06B50);
  }

  return result;
}

uint64_t sub_23002C570(uint64_t a1)
{
  *(a1 + 8) = sub_230029300(&qword_27DB069D0, type metadata accessor for AttributionPostMatchIntent);
  result = sub_230029300(&qword_27DB06970, type metadata accessor for AttributionPostMatchIntent);
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_23002C5F8()
{
  result = qword_27DB06B58;
  if (!qword_27DB06B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB06B58);
  }

  return result;
}

unint64_t sub_23002C650()
{
  result = qword_27DB06B60;
  if (!qword_27DB06B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB06B60);
  }

  return result;
}

unint64_t sub_23002C6A8()
{
  result = qword_27DB06B68;
  if (!qword_27DB06B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB06B68);
  }

  return result;
}

unint64_t sub_23002C700()
{
  result = qword_27DB06B70;
  if (!qword_27DB06B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB06B70);
  }

  return result;
}

unint64_t sub_23002C758()
{
  result = qword_27DB06B78;
  if (!qword_27DB06B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB06B78);
  }

  return result;
}

unint64_t sub_23002C7B0()
{
  result = qword_27DB06B80;
  if (!qword_27DB06B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB06B80);
  }

  return result;
}

uint64_t sub_23002C820@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000015 && 0x800000023003A9D0 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_2300316D0();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_23002C8B4(uint64_t a1)
{
  v2 = sub_23002BF4C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23002C8F0(uint64_t a1)
{
  v2 = sub_23002BF4C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23002C954()
{
  result = type metadata accessor for AttributionMatchedEventProperties();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for ActionStoreAdInstance();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_23002CA20()
{
  sub_230030E00();
  if (v0 <= 0x3F)
  {
    type metadata accessor for AttributionConfig();
    if (v1 <= 0x3F)
    {
      sub_23002CAE8();
      if (v2 <= 0x3F)
      {
        sub_23002CB40();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_23002CAE8()
{
  if (!qword_2814942C8)
  {
    type metadata accessor for AttributionMatchedProperties(255);
    v0 = sub_2300312A0();
    if (!v1)
    {
      atomic_store(v0, &qword_2814942C8);
    }
  }
}

void sub_23002CB40()
{
  if (!qword_281494A58[0])
  {
    v0 = sub_230031380();
    if (!v1)
    {
      atomic_store(v0, qword_281494A58);
    }
  }
}

uint64_t sub_23002CBC8()
{
  result = sub_230030E00();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_23002CCAC()
{
  v0 = type metadata accessor for JetServiceSettings(0);
  sub_230000658(v0, qword_27DB06B98);
  v1 = sub_2300006BC(v0, qword_27DB06B98);
  v2 = sub_230030DD0();
  (*(*(v2 - 8) + 56))(v1, 1, 5, v2);
  v3 = v0[6];
  v4 = sub_230030EC0();
  result = (*(*(v4 - 8) + 56))(v1 + v3, 1, 1, v4);
  *(v1 + v0[5]) = 0;
  *(v1 + v0[7]) = 0;
  return result;
}

uint64_t JetServiceSettings.init(environment:defaultBundled:minimumRuntimeVersion:enableLogging:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  sub_23002F31C(a1, a5, type metadata accessor for JetServiceSettings.Environment);
  v9 = type metadata accessor for JetServiceSettings(0);
  *(a5 + v9[5]) = a2;
  result = sub_23002CE54(a3, a5 + v9[6]);
  *(a5 + v9[7]) = a4;
  return result;
}

uint64_t sub_23002CE54(uint64_t a1, uint64_t a2)
{
  v4 = sub_22FFED9B8(&qword_27DB06BB8, &qword_230039820);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t static JetServiceSettings.production.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27DB05B30 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for JetServiceSettings(0);
  v3 = sub_2300006BC(v2, qword_27DB06B98);
  return sub_23002CF78(v3, a1, type metadata accessor for JetServiceSettings);
}

uint64_t sub_23002CF78(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t JetServiceSettings.minimumRuntimeVersion.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for JetServiceSettings(0) + 24);

  return sub_23002D048(v3, a1);
}

uint64_t sub_23002D048(uint64_t a1, uint64_t a2)
{
  v4 = sub_22FFED9B8(&qword_27DB06BB8, &qword_230039820);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t JetServiceSettings.init(store:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v58 = a2;
  v3 = sub_22FFED9B8(&qword_27DB06BB8, &qword_230039820);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  v55[0] = v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v57 = v55 - v7;
  v8 = sub_22FFED9B8(&qword_27DB06BC0, &qword_230039828);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = v55 - v10;
  v12 = sub_22FFED9B8(&qword_27DB06BC8, &qword_230039830);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = v55 - v14;
  v16 = type metadata accessor for JetServiceSettings.Environment(0);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = v55 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = a1[3];
  v21 = a1[4];
  v23 = sub_22FFEDA4C(a1, v22);
  v55[1] = v22;
  v55[2] = v23;
  v55[3] = v21;
  v56 = sub_230030E30();
  v24 = a1[4];
  sub_22FFEDA4C(a1, a1[3]);
  v25 = sub_230030E40();
  if (v26)
  {
    v27 = v25;
    v28 = v26;
    if (v25 == 0x6D6F74737563 && v26 == 0xE600000000000000 || (sub_2300316D0() & 1) != 0)
    {

      v29 = a1[4];
      sub_22FFEDA4C(a1, a1[3]);
      sub_230030E40();
      if (!v30)
      {
LABEL_8:
        if (qword_281493F60 != -1)
        {
          swift_once();
        }

        v33 = sub_230031040();
        sub_2300006BC(v33, qword_281498858);
        v34 = sub_230031020();
        v35 = sub_230031320();
        if (os_log_type_enabled(v34, v35))
        {
          v36 = swift_slowAlloc();
          *v36 = 0;
          _os_log_impl(&dword_22FFE9000, v34, v35, "Invalid configuration. Custom environment selected, but no URL was provided or the URL is invalid.", v36, 2u);
          MEMORY[0x23190FFD0](v36, -1, -1);
        }

LABEL_13:
        sub_22FFEE60C(a1);
        v37 = type metadata accessor for JetServiceSettings(0);
        return (*(*(v37 - 8) + 56))(v58, 1, 1, v37);
      }

      sub_230030DB0();

      v31 = sub_230030DD0();
      v32 = *(v31 - 8);
      if ((*(v32 + 48))(v15, 1, v31) == 1)
      {
        sub_22FFF31B4(v15, &qword_27DB06BC8, &qword_230039830);
        goto LABEL_8;
      }

      (*(v32 + 32))(v20, v15, v31);
      (*(v32 + 56))(v20, 0, 5, v31);
    }

    else
    {

      JetServiceSettings.Environment.init(rawValue:)(v27, v28, v11);
      if ((*(v17 + 48))(v11, 1, v16) == 1)
      {
        sub_22FFF31B4(v11, &qword_27DB06BC0, &qword_230039828);
        if (qword_281493F60 != -1)
        {
          swift_once();
        }

        v40 = sub_230031040();
        sub_2300006BC(v40, qword_281498858);

        v41 = sub_230031020();
        v42 = sub_230031320();

        if (os_log_type_enabled(v41, v42))
        {
          v43 = swift_slowAlloc();
          v44 = swift_slowAlloc();
          v59 = v44;
          *v43 = 136315138;
          v45 = sub_23000DE08(v27, v28, &v59);

          *(v43 + 4) = v45;
          _os_log_impl(&dword_22FFE9000, v41, v42, "Unsupported environment value. %s", v43, 0xCu);
          sub_22FFEE60C(v44);
          MEMORY[0x23190FFD0](v44, -1, -1);
          MEMORY[0x23190FFD0](v43, -1, -1);
        }

        else
        {
        }

        goto LABEL_13;
      }

      sub_23002F31C(v11, v20, type metadata accessor for JetServiceSettings.Environment);
    }
  }

  else
  {
    v39 = sub_230030DD0();
    (*(*(v39 - 8) + 56))(v20, 2, 5, v39);
  }

  v46 = sub_230030EC0();
  v47 = v57;
  (*(*(v46 - 8) + 56))(v57, 1, 1, v46);
  v48 = a1[4];
  sub_22FFEDA4C(a1, a1[3]);
  sub_230030E40();
  if (v49)
  {
    v50 = v55[0];
    sub_230030ED0();
    sub_22FFF31B4(v47, &qword_27DB06BB8, &qword_230039820);
    sub_23002CE54(v50, v47);
  }

  v51 = sub_230030E30();
  v52 = v20;
  v53 = v58;
  sub_23002F31C(v52, v58, type metadata accessor for JetServiceSettings.Environment);
  v54 = type metadata accessor for JetServiceSettings(0);
  *(v53 + v54[5]) = v56 & 1;
  sub_23002CE54(v47, v53 + v54[6]);
  *(v53 + v54[7]) = v51 & 1;
  (*(*(v54 - 1) + 56))(v53, 0, 1, v54);
  return sub_22FFEE60C(a1);
}

uint64_t JetServiceSettings.Environment.init(rawValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v74 = a3;
  v5 = sub_22FFED9B8(&qword_27DB06BC8, &qword_230039830);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v68 = &v65 - v7;
  v8 = sub_230030DD0();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v66 = &v65 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for JetServiceSettings.Environment(0);
  v72 = *(v12 - 8);
  v73 = v12;
  v13 = *(v72 + 64);
  v14 = MEMORY[0x28223BE20](v12);
  v69 = &v65 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v70 = &v65 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v65 - v19;
  v21 = MEMORY[0x28223BE20](v18);
  v23 = &v65 - v22;
  v24 = MEMORY[0x28223BE20](v21);
  v26 = &v65 - v25;
  MEMORY[0x28223BE20](v24);
  v71 = &v65 - v27;
  v67 = v9;
  v28 = v8;
  v29 = *(v9 + 56);
  v29(v26, 1, 5, v8);
  v30 = JetServiceSettings.Environment.rawValue.getter();
  v32 = v31;
  sub_23002F2C0(v26);
  if (v30 == a1 && v32 == a2)
  {

LABEL_8:
    v35 = v29;

    v36 = 1;
LABEL_9:
    v37 = v74;
    v38 = v28;
LABEL_10:
    v39 = v71;
    goto LABEL_11;
  }

  v34 = sub_2300316D0();

  if (v34)
  {
    goto LABEL_8;
  }

  v35 = v29;
  v29(v23, 2, 5, v28);
  v42 = JetServiceSettings.Environment.rawValue.getter();
  v44 = v43;
  sub_23002F2C0(v23);
  if (v42 == a1 && v44 == a2)
  {

LABEL_17:

    v36 = 2;
    goto LABEL_9;
  }

  v45 = sub_2300316D0();

  if (v45)
  {
    goto LABEL_17;
  }

  v29(v20, 3, 5, v28);
  v46 = JetServiceSettings.Environment.rawValue.getter();
  v48 = v47;
  sub_23002F2C0(v20);
  if (v46 == a1 && v48 == a2)
  {

LABEL_22:

    v36 = 3;
LABEL_23:
    v37 = v74;
    v38 = v28;
    goto LABEL_10;
  }

  v49 = a1;
  v50 = sub_2300316D0();

  if (v50)
  {
    goto LABEL_22;
  }

  v51 = v70;
  v29(v70, 4, 5, v28);
  v52 = JetServiceSettings.Environment.rawValue.getter();
  v54 = v53;
  sub_23002F2C0(v51);
  if (v52 == v49 && v54 == a2)
  {

LABEL_28:

    v36 = 4;
    goto LABEL_23;
  }

  v55 = sub_2300316D0();

  if (v55)
  {
    goto LABEL_28;
  }

  v56 = v69;
  v29(v69, 5, 5, v28);
  v57 = JetServiceSettings.Environment.rawValue.getter();
  v59 = v58;
  sub_23002F2C0(v56);
  if (v57 == v49 && v59 == a2)
  {

LABEL_33:

    v36 = 5;
    goto LABEL_23;
  }

  v60 = sub_2300316D0();

  if (v60)
  {
    goto LABEL_33;
  }

  v61 = v68;
  sub_230030DB0();

  v62 = v67;
  if ((*(v67 + 48))(v61, 1, v28) == 1)
  {
    sub_22FFF31B4(v61, &qword_27DB06BC8, &qword_230039830);
    v40 = 1;
    v37 = v74;
    return (*(v72 + 56))(v37, v40, 1, v73);
  }

  v63 = *(v62 + 32);
  v64 = v66;
  v63(v66, v61, v28);
  v39 = v71;
  v63(v71, v64, v28);
  v38 = v28;
  v36 = 0;
  v37 = v74;
LABEL_11:
  v35(v39, v36, 5, v38);
  sub_23002F31C(v39, v37, type metadata accessor for JetServiceSettings.Environment);
  v40 = 0;
  return (*(v72 + 56))(v37, v40, 1, v73);
}

uint64_t JetServiceSettings.init(suite:)@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_22FFED9B8(&qword_27DB06BD0, &qword_230039838);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v23[-1] - v4;
  v6 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v7 = sub_230031150();

  v8 = [v6 initWithSuiteName_];

  if (v8)
  {
    v9 = sub_230030F10();
    v10 = *(v9 + 48);
    v11 = *(v9 + 52);
    swift_allocObject();
    v12 = v8;
    v13 = sub_230030F00();
    v23[3] = v9;
    v23[4] = MEMORY[0x277CE4AA8];
    v23[0] = v13;
    JetServiceSettings.init(store:)(v23, v5);

    v14 = type metadata accessor for JetServiceSettings(0);
    v15 = *(v14 - 8);
    if ((*(v15 + 48))(v5, 1, v14) != 1)
    {
      sub_23002F31C(v5, a1, type metadata accessor for JetServiceSettings);
      return (*(v15 + 56))(a1, 0, 1, v14);
    }

    sub_22FFF31B4(v5, &qword_27DB06BD0, &qword_230039838);
  }

  if (qword_281493F60 != -1)
  {
    swift_once();
  }

  v16 = sub_230031040();
  sub_2300006BC(v16, qword_281498858);
  v17 = sub_230031020();
  v18 = sub_230031320();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&dword_22FFE9000, v17, v18, "Unable to access UserDefaults.", v19, 2u);
    MEMORY[0x23190FFD0](v19, -1, -1);
  }

  v20 = type metadata accessor for JetServiceSettings(0);
  return (*(*(v20 - 8) + 56))(a1, 1, 1, v20);
}

uint64_t sub_23002E270()
{
  v0 = sub_22FFED9B8(&qword_27DB06BC8, &qword_230039830);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v14 - v2;
  sub_22FFED9B8(&qword_27DB06BE8, &unk_230039920);
  v4 = *(type metadata accessor for JetServiceSettings.Environment(0) - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_230039810;
  v8 = v7 + v6;
  v9 = sub_230030DD0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 56);
  v11(v8, 1, 5, v9);
  v11(v8 + v5, 2, 5, v9);
  v11(v8 + 2 * v5, 3, 5, v9);
  v11(v8 + 3 * v5, 4, 5, v9);
  v11(v8 + 4 * v5, 5, 5, v9);
  sub_230030DB0();
  result = (*(v10 + 48))(v3, 1, v9);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v13 = 5 * v5;
    (*(v10 + 32))(v8 + v13, v3, v9);
    result = (v11)(v8 + v13, 0, 5, v9);
    qword_27DB06BB0 = v7;
  }

  return result;
}

uint64_t static JetServiceSettings.Environment.allCases.getter()
{
  if (qword_27DB05B38 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
}

uint64_t static JetServiceSettings.Environment.allCases.setter(uint64_t a1)
{
  if (qword_27DB05B38 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  qword_27DB06BB0 = a1;
}

uint64_t (*static JetServiceSettings.Environment.allCases.modify())()
{
  if (qword_27DB05B38 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_23002E66C@<X0>(void *a1@<X8>)
{
  if (qword_27DB05B38 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  *a1 = qword_27DB06BB0;
}

uint64_t sub_23002E6EC(uint64_t *a1)
{
  v1 = *a1;
  v2 = qword_27DB05B38;

  if (v2 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  qword_27DB06BB0 = v1;
}

uint64_t JetServiceSettings.Environment.rawValue.getter()
{
  v1 = v0;
  v2 = sub_230030DD0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for JetServiceSettings.Environment(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23002CF78(v1, v10, type metadata accessor for JetServiceSettings.Environment);
  v11 = (*(v3 + 48))(v10, 5, v2);
  if (v11 > 2)
  {
    if (v11 == 3)
    {
      return 7759204;
    }

    else if (v11 == 4)
    {
      return 0x627573657270;
    }

    else
    {
      return 0x646F7270657270;
    }
  }

  else if (v11)
  {
    if (v11 == 1)
    {
      return 1685025392;
    }

    else
    {
      return 0x7972726163;
    }
  }

  else
  {
    (*(v3 + 32))(v6, v10, v2);
    v13 = sub_230030D90();
    (*(v3 + 8))(v6, v2);
    return v13;
  }
}

uint64_t sub_23002E980@<X0>(uint64_t *a1@<X8>)
{
  result = JetServiceSettings.Environment.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t static JetServiceSettings.standard.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_22FFED9B8(&qword_27DB06BD0, &qword_230039838);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v26[-1] - v4;
  if ([objc_opt_self() isAppleInternalInstall])
  {
    sub_23002F384();
    sub_230031330();
    v6 = sub_230030F10();
    v7 = *(v6 + 48);
    v8 = *(v6 + 52);
    swift_allocObject();
    v9 = sub_230030F00();
    v26[3] = v6;
    v26[4] = MEMORY[0x277CE4AA8];
    v26[0] = v9;
    JetServiceSettings.init(store:)(v26, v5);
    v10 = type metadata accessor for JetServiceSettings(0);
    if ((*(*(v10 - 1) + 48))(v5, 1, v10) == 1)
    {
      sub_22FFF31B4(v5, &qword_27DB06BD0, &qword_230039838);
      if (qword_281493F58 != -1)
      {
        swift_once();
      }

      v11 = sub_230031040();
      sub_2300006BC(v11, qword_281498840);
      v12 = sub_230031020();
      v13 = sub_230031310();
      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        *v14 = 0;
        _os_log_impl(&dword_22FFE9000, v12, v13, "Can't read UserDefaults, defaulting to Internal Carry", v14, 2u);
        MEMORY[0x23190FFD0](v14, -1, -1);
      }

      v15 = sub_230030DD0();
      (*(*(v15 - 8) + 56))(a1, 2, 5, v15);
      v16 = v10[6];
      v17 = sub_230030EC0();
      result = (*(*(v17 - 8) + 56))(a1 + v16, 1, 1, v17);
      *(a1 + v10[5]) = 0;
      *(a1 + v10[7]) = 0;
    }

    else
    {
      return sub_23002F31C(v5, a1, type metadata accessor for JetServiceSettings);
    }
  }

  else
  {
    if (qword_281493F58 != -1)
    {
      swift_once();
    }

    v19 = sub_230031040();
    sub_2300006BC(v19, qword_281498840);
    v20 = sub_230031020();
    v21 = sub_230031310();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_22FFE9000, v20, v21, "Using Production JetService configuration", v22, 2u);
      MEMORY[0x23190FFD0](v22, -1, -1);
    }

    if (qword_27DB05B30 != -1)
    {
      swift_once();
    }

    v23 = type metadata accessor for JetServiceSettings(0);
    v24 = sub_2300006BC(v23, qword_27DB06B98);
    return sub_23002CF78(v24, a1, type metadata accessor for JetServiceSettings);
  }

  return result;
}

uint64_t static JetServiceSettings.jetPackUrl(with:for:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = sub_230030D80();
  v54 = *(v6 - 8);
  v55 = v6;
  v7 = *(v54 + 64);
  MEMORY[0x28223BE20](v6);
  v53 = v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22FFED9B8(&qword_27DB06BC8, &qword_230039830);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v48 - v11;
  v13 = type metadata accessor for JetServiceSettings.Environment(0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = v48 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_230030DD0();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v20 = MEMORY[0x28223BE20](v17);
  v56 = v48 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v20);
  v52 = v48 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v51 = v48 - v25;
  MEMORY[0x28223BE20](v24);
  v27 = v48 - v26;
  sub_23002CF78(a2, v16, type metadata accessor for JetServiceSettings.Environment);
  v28 = *(v18 + 48);
  if (v28(v16, 5, v17))
  {
    sub_23002F2C0(v16);
    v29 = JetServiceSettings.Environment.rawValue.getter();
    v57 = 0x5F35323032;
    v58 = 0xE500000000000000;
    MEMORY[0x23190F560](v29);

    if (*(a1 + 16))
    {
      v30 = sub_23002F3D0(v57, v58);
      v32 = v31;

      if (v32)
      {
        v33 = (*(a1 + 56) + 16 * v30);
        v35 = *v33;
        v34 = v33[1];

        sub_230030DB0();
        if (v28(v12, 1, v17) != 1)
        {
          v57 = v35;
          v58 = v34;
          v50 = *MEMORY[0x277CC91D8];
          v39 = v53;
          v40 = v54;
          v49 = *(v54 + 104);
          v41 = v55;
          v49(v53);
          v48[1] = sub_230020D1C();
          sub_230030DC0();
          v54 = *(v40 + 8);
          (v54)(v39, v41);

          v42 = *(v18 + 8);
          v42(v12, v17);
          v43 = v42;
          v57 = 0xD000000000000017;
          v58 = 0x800000023003AAB0;
          (v49)(v39, v50, v41);
          v44 = v52;
          v45 = v56;
          sub_230030DC0();
          (v54)(v39, v41);
          v43(v45, v17);
          v46 = *(v18 + 32);
          v47 = v51;
          v46(v51, v44, v17);
          v46(a3, v47, v17);
          v37 = 0;
          return (*(v18 + 56))(a3, v37, 1, v17);
        }

        sub_22FFF31B4(v12, &qword_27DB06BC8, &qword_230039830);
      }
    }

    else
    {
    }

    v37 = 1;
  }

  else
  {
    v36 = *(v18 + 32);
    v36(v27, v16, v17);
    v36(a3, v27, v17);
    v37 = 0;
  }

  return (*(v18 + 56))(a3, v37, 1, v17);
}

uint64_t sub_23002F2C0(uint64_t a1)
{
  v2 = type metadata accessor for JetServiceSettings.Environment(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23002F31C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_23002F384()
{
  result = qword_2814942B8;
  if (!qword_2814942B8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2814942B8);
  }

  return result;
}

unint64_t sub_23002F3D0(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_230031740();
  sub_2300311A0();
  v6 = sub_230031760();

  return sub_23002F64C(a1, a2, v6);
}

unint64_t sub_23002F44C()
{
  result = qword_27DB06BD8;
  if (!qword_27DB06BD8)
  {
    sub_22FFF0054(&qword_27DB06BE0, &qword_230039840);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB06BD8);
  }

  return result;
}

void sub_23002F4D8()
{
  type metadata accessor for JetServiceSettings.Environment(319);
  if (v0 <= 0x3F)
  {
    sub_23002F564();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_23002F564()
{
  if (!qword_281495490)
  {
    sub_230030EC0();
    v0 = sub_230031380();
    if (!v1)
    {
      atomic_store(v0, &qword_281495490);
    }
  }
}

uint64_t sub_23002F5F4()
{
  v0 = sub_230030DD0();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v0;
}

unint64_t sub_23002F64C(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_2300316D0())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

PromotedContentJetClient::AttributionClaimType_optional __swiftcall AttributionClaimType.init(rawValue:)(Swift::Int rawValue)
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

unint64_t sub_23002F72C()
{
  result = qword_27DB06BF0;
  if (!qword_27DB06BF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB06BF0);
  }

  return result;
}

unint64_t sub_23002F840()
{
  result = qword_27DB06BF8;
  if (!qword_27DB06BF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB06BF8);
  }

  return result;
}

PromotedContentJetClient::AttributionDownloadType_optional __swiftcall AttributionDownloadType.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 5;
  if (rawValue < 5)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

unint64_t sub_23002F8B4()
{
  result = qword_27DB06C00;
  if (!qword_27DB06C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB06C00);
  }

  return result;
}

unint64_t sub_23002F9D0()
{
  result = qword_27DB06C08;
  if (!qword_27DB06C08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB06C08);
  }

  return result;
}

uint64_t sub_23002FA4C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ConversionParams();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t ConversionMatchingStep1Intent.CodingKeys.init(rawValue:)@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_230031460();

  *a1 = v2 != 0;
  return result;
}

uint64_t ConversionMatchingStep1Intent.CodingKeys.init(stringValue:)@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_230031460();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_23002FB94()
{
  sub_230031740();
  sub_2300311A0();
  return sub_230031760();
}

uint64_t sub_23002FC08()
{
  sub_230031740();
  sub_2300311A0();
  return sub_230031760();
}

uint64_t sub_23002FC5C@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_230031460();

  *a2 = v5 != 0;
  return result;
}

uint64_t sub_23002FCEC@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_230031460();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_23002FD44(uint64_t a1)
{
  v2 = sub_230030444();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23002FD80(uint64_t a1)
{
  v2 = sub_230030444();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23002FDDC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x73656972657571 && a2 == 0xE700000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_2300316D0();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_23002FE64(uint64_t a1)
{
  v2 = sub_230030074();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23002FEA0(uint64_t a1)
{
  v2 = sub_230030074();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ConversionMatchingStep1Intent.ReturnType.encode(to:)(void *a1)
{
  v3 = sub_22FFED9B8(&qword_27DB06C10, &unk_230039BA0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v11 - v6;
  v8 = *v1;
  v9 = a1[4];
  sub_22FFEDA4C(a1, a1[3]);
  sub_230030074();

  sub_230031780();
  v11[1] = v8;
  sub_22FFED9B8(&qword_27DB06380, &qword_2300366B0);
  sub_230009828(&qword_281493EA0);
  sub_230031640();

  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_230030074()
{
  result = qword_27DB06C18;
  if (!qword_27DB06C18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB06C18);
  }

  return result;
}

uint64_t ConversionMatchingStep1Intent.ReturnType.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = sub_22FFED9B8(&qword_27DB06C20, &qword_230039BB0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v12 - v8;
  v10 = a1[4];
  sub_22FFEDA4C(a1, a1[3]);
  sub_230030074();
  sub_230031770();
  if (!v2)
  {
    sub_22FFED9B8(&qword_27DB06380, &qword_2300366B0);
    sub_230009828(&qword_281493E98);
    sub_230031520();
    (*(v6 + 8))(v9, v5);
    *a2 = v12[1];
  }

  return sub_22FFEE60C(a1);
}

uint64_t ConversionMatchingStep1Intent.encode(to:)(void *a1)
{
  v2 = sub_22FFED9B8(&qword_27DB06C28, &qword_230039BB8);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v9 - v5;
  v7 = a1[4];
  sub_22FFEDA4C(a1, a1[3]);
  sub_230030444();
  sub_230031780();
  type metadata accessor for ConversionParams();
  sub_230030968(&qword_27DB05BD8, type metadata accessor for ConversionParams);
  sub_230031640();
  return (*(v3 + 8))(v6, v2);
}

unint64_t sub_230030444()
{
  result = qword_27DB06C30;
  if (!qword_27DB06C30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB06C30);
  }

  return result;
}

uint64_t ConversionMatchingStep1Intent.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v19 = a2;
  v4 = type metadata accessor for ConversionParams();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v21 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22FFED9B8(&qword_27DB06C38, &qword_230039BC0);
  v20 = *(v7 - 8);
  v8 = *(v20 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v19 - v9;
  v11 = type metadata accessor for ConversionMatchingStep1Intent();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[4];
  sub_22FFEDA4C(a1, a1[3]);
  sub_230030444();
  sub_230031770();
  if (!v2)
  {
    v16 = v19;
    sub_230030968(&qword_27DB05C10, type metadata accessor for ConversionParams);
    v17 = v21;
    sub_230031520();
    (*(v20 + 8))(v10, v7);
    sub_230030758(v17, v14, type metadata accessor for ConversionParams);
    sub_230030758(v14, v16, type metadata accessor for ConversionMatchingStep1Intent);
  }

  return sub_22FFEE60C(a1);
}

uint64_t type metadata accessor for ConversionMatchingStep1Intent()
{
  result = qword_2814945A8;
  if (!qword_2814945A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_230030758(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_2300307C4()
{
  result = qword_27DB06C40;
  if (!qword_27DB06C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB06C40);
  }

  return result;
}

unint64_t sub_23003081C()
{
  result = qword_27DB06C48;
  if (!qword_27DB06C48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB06C48);
  }

  return result;
}

unint64_t sub_230030874()
{
  result = qword_27DB06C50;
  if (!qword_27DB06C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB06C50);
  }

  return result;
}

uint64_t sub_2300308E4(uint64_t a1)
{
  *(a1 + 8) = sub_230030968(&qword_27DB069C8, type metadata accessor for ConversionMatchingStep1Intent);
  result = sub_230030968(&qword_27DB06960, type metadata accessor for ConversionMatchingStep1Intent);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_230030968(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2300309C8(void *a1)
{
  v2 = sub_22FFED9B8(&qword_27DB06C28, &qword_230039BB8);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v9 - v5;
  v7 = a1[4];
  sub_22FFEDA4C(a1, a1[3]);
  sub_230030444();
  sub_230031780();
  type metadata accessor for ConversionParams();
  sub_230030968(&qword_27DB05BD8, type metadata accessor for ConversionParams);
  sub_230031640();
  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_230030B68()
{
  result = type metadata accessor for ConversionParams();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_230030C08()
{
  result = qword_27DB06C58;
  if (!qword_27DB06C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB06C58);
  }

  return result;
}

unint64_t sub_230030C60()
{
  result = qword_27DB06C60;
  if (!qword_27DB06C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB06C60);
  }

  return result;
}

unint64_t sub_230030CB8()
{
  result = qword_27DB06C68;
  if (!qword_27DB06C68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB06C68);
  }

  return result;
}