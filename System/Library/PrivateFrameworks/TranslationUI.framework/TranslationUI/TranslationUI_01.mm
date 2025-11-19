uint64_t sub_26F3BCB48@<X0>(char *a1@<X8>)
{
  v2 = sub_26F4A02A8();

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

uint64_t CoreAnalyticsLogger.CardType.rawValue.getter()
{
  if (*v0)
  {
    result = 0x657474696D6D6F63;
  }

  else
  {
    result = 0x65736F706D6F63;
  }

  *v0;
  return result;
}

uint64_t sub_26F3BCBE8(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x657474696D6D6F63;
  }

  else
  {
    v4 = 0x65736F706D6F63;
  }

  if (v3)
  {
    v5 = 0xE700000000000000;
  }

  else
  {
    v5 = 0xE900000000000064;
  }

  if (*a2)
  {
    v6 = 0x657474696D6D6F63;
  }

  else
  {
    v6 = 0x65736F706D6F63;
  }

  if (*a2)
  {
    v7 = 0xE900000000000064;
  }

  else
  {
    v7 = 0xE700000000000000;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_26F4A0458();
  }

  return v9 & 1;
}

uint64_t sub_26F3BCC94()
{
  v1 = *v0;
  sub_26F4A0528();
  sub_26F49F9A8();

  return sub_26F4A0568();
}

uint64_t sub_26F3BCD1C()
{
  *v0;
  sub_26F49F9A8();
}

uint64_t sub_26F3BCD90()
{
  v1 = *v0;
  sub_26F4A0528();
  sub_26F49F9A8();

  return sub_26F4A0568();
}

uint64_t sub_26F3BCE20@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_26F4A02A8();

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

void sub_26F3BCE7C(uint64_t *a1@<X8>)
{
  v2 = 0x65736F706D6F63;
  if (*v1)
  {
    v2 = 0x657474696D6D6F63;
  }

  v3 = 0xE700000000000000;
  if (*v1)
  {
    v3 = 0xE900000000000064;
  }

  *a1 = v2;
  a1[1] = v3;
}

TranslationUI::CoreAnalyticsLogger::InteractionLocation_optional __swiftcall CoreAnalyticsLogger.InteractionLocation.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_26F4A02A8();

  v5 = 7;
  if (v3 < 7)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t CoreAnalyticsLogger.InteractionLocation.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x7463416B63697571;
  v3 = 0xD000000000000015;
  if (v1 != 5)
  {
    v3 = 0x657469726F766166;
  }

  v4 = 0x61546172656D6163;
  if (v1 != 3)
  {
    v4 = 0x61737265766E6F63;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  if (v1 != 1)
  {
    v2 = 0x74616C736E617274;
  }

  if (!*v0)
  {
    v2 = 0xD000000000000011;
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

uint64_t sub_26F3BD048()
{
  *v0;
  *v0;
  *v0;
  sub_26F49F9A8();
}

void sub_26F3BD1A4(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEB000000006E6F69;
  v4 = 0x7463416B63697571;
  v5 = 0x800000026F4AC300;
  v6 = 0xD000000000000015;
  if (v2 != 5)
  {
    v6 = 0x657469726F766166;
    v5 = 0xEC00000062615473;
  }

  v7 = 0xE900000000000062;
  v8 = 0x61546172656D6163;
  if (v2 != 3)
  {
    v8 = 0x61737265766E6F63;
    v7 = 0xEF6261546E6F6974;
  }

  if (*v1 <= 4u)
  {
    v6 = v8;
    v5 = v7;
  }

  if (v2 != 1)
  {
    v4 = 0x74616C736E617274;
    v3 = 0xEE006261546E6F69;
  }

  if (!*v1)
  {
    v4 = 0xD000000000000011;
    v3 = 0x800000026F4AC2B0;
  }

  if (*v1 <= 2u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

uint64_t sub_26F3BD2BC(unsigned __int8 *a1, char a2, char a3, char a4)
{
  v7 = *a1;
  v15 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DED10, &qword_26F4A2CB0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26F4A2CA0;
  *(inited + 32) = 0x6570795464726163;
  v9 = MEMORY[0x277D837D0];
  v10 = 0x65736F706D6F63;
  if (v7)
  {
    v10 = 0x657474696D6D6F63;
  }

  *(inited + 40) = 0xE800000000000000;
  *(inited + 48) = v10;
  v11 = 0xE700000000000000;
  if (v7)
  {
    v11 = 0xE900000000000064;
  }

  *(inited + 56) = v11;
  *(inited + 72) = v9;
  *(inited + 80) = 0xD000000000000013;
  *(inited + 88) = 0x800000026F4ACC50;
  strcpy((inited + 96), "translationTab");
  *(inited + 111) = -18;
  *(inited + 120) = v9;
  *(inited + 128) = 0x65646E6547736168;
  v12 = MEMORY[0x277D839B0];
  *(inited + 136) = 0xE900000000000072;
  *(inited + 144) = a2;
  *(inited + 168) = v12;
  *(inited + 176) = 0x696E61654D736168;
  *(inited + 184) = 0xEA0000000000676ELL;
  *(inited + 192) = a3;
  *(inited + 216) = v12;
  *(inited + 224) = 0xD000000000000022;
  *(inited + 232) = 0x800000026F4ACC70;
  *(inited + 264) = v12;
  *(inited + 240) = a4;
  v13 = sub_26F3BDADC(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DED18, &qword_26F4A2CB8);
  swift_arrayDestroy();
  sub_26F3BC204(&v15, v13);
}

uint64_t sub_26F3BD498(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3, void *a4)
{
  v50 = a4;
  v6 = 0xE900000000000062;
  v7 = 0xD000000000000011;
  v8 = sub_26F49DAB8();
  v48 = *(v8 - 8);
  v49 = v8;
  v9 = *(v48 + 64);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v45 = &v44 - v13;
  v14 = *a1;
  v15 = *a2;
  v57[0] = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DED10, &qword_26F4A2CB0);
  inited = swift_initStackObject();
  v17 = inited;
  *(inited + 16) = xmmword_26F4A2CA0;
  *(inited + 32) = 0x6570795464726163;
  v46 = inited + 32;
  v18 = MEMORY[0x277D837D0];
  v19 = 0x65736F706D6F63;
  if (v14)
  {
    v19 = 0x657474696D6D6F63;
  }

  *(inited + 40) = 0xE800000000000000;
  *(inited + 48) = v19;
  v20 = 0xE700000000000000;
  if (v14)
  {
    v20 = 0xE900000000000064;
  }

  *(inited + 56) = v20;
  *(inited + 72) = v18;
  strcpy((inited + 80), "selectedType");
  *(inited + 93) = 0;
  *(inited + 94) = -5120;
  v21 = _LTDisambiguationTypeDescription();
  v22 = sub_26F49F8C8();
  v24 = v23;

  *(v17 + 96) = v22;
  *(v17 + 104) = v24;
  v25 = v18;
  *(v17 + 120) = v18;
  *(v17 + 128) = 0xD000000000000013;
  *(v17 + 136) = 0x800000026F4ACC50;
  v47 = v12;
  if (v15 <= 2)
  {
    if (v15)
    {
      v26 = v45;
      if (v15 == 1)
      {
        v6 = 0xEB000000006E6F69;
        v7 = 0x7463416B63697571;
      }

      else
      {
        v6 = 0xEE006261546E6F69;
        v7 = 0x74616C736E617274;
      }
    }

    else
    {
      v6 = 0x800000026F4AC2B0;
      v26 = v45;
    }
  }

  else if (v15 > 4)
  {
    v26 = v45;
    if (v15 == 5)
    {
      v6 = 0x800000026F4AC300;
      v7 = 0xD000000000000015;
    }

    else
    {
      v6 = 0xEC00000062615473;
      v7 = 0x657469726F766166;
    }
  }

  else
  {
    v26 = v45;
    if (v15 == 3)
    {
      v7 = 0x61546172656D6163;
    }

    else
    {
      v6 = 0xEF6261546E6F6974;
      v7 = 0x61737265766E6F63;
    }
  }

  *(v17 + 144) = v7;
  *(v17 + 152) = v6;
  v27 = v25;
  *(v17 + 168) = v25;
  strcpy((v17 + 176), "sourceLocale");
  *(v17 + 189) = 0;
  *(v17 + 190) = -5120;
  v28 = [v50 sourceLocale];
  sub_26F49DA18();

  v55 = sub_26F49D988();
  v56 = v29;
  v53 = 45;
  v54 = 0xE100000000000000;
  v51 = 95;
  v52 = 0xE100000000000000;
  sub_26F3BDC0C();
  v30 = sub_26F49FFF8();
  v32 = v31;
  v33 = *(v48 + 8);
  v34 = v26;
  v35 = v49;
  v33(v34, v49);

  *(v17 + 192) = v30;
  *(v17 + 200) = v32;
  *(v17 + 216) = v27;
  strcpy((v17 + 224), "targetLocale");
  *(v17 + 237) = 0;
  *(v17 + 238) = -5120;
  v36 = [v50 targetLocale];
  v37 = v47;
  sub_26F49DA18();

  v55 = sub_26F49D988();
  v56 = v38;
  v53 = 45;
  v54 = 0xE100000000000000;
  v51 = 95;
  v52 = 0xE100000000000000;
  v39 = sub_26F49FFF8();
  v41 = v40;
  v33(v37, v35);

  *(v17 + 264) = v27;
  *(v17 + 240) = v39;
  *(v17 + 248) = v41;
  v42 = sub_26F3BDADC(v17);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DED18, &qword_26F4A2CB8);
  swift_arrayDestroy();
  sub_26F3BC204(v57, v42);
}

unint64_t sub_26F3BD9D8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DED58, &qword_26F4A2F50);
    v3 = sub_26F4A0288();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_26F45FD88(v5, v6);
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

unint64_t sub_26F3BDADC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DED90, &qword_26F4AA100);
    v3 = sub_26F4A0288();
    v4 = a1 + 32;

    while (1)
    {
      sub_26F3B8DD4(v4, &v13, &qword_2806DED18, &qword_26F4A2CB8);
      v5 = v13;
      v6 = v14;
      result = sub_26F45FD88(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_26F3BE15C(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
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

unint64_t sub_26F3BDC0C()
{
  result = qword_280F66BA0[0];
  if (!qword_280F66BA0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280F66BA0);
  }

  return result;
}

unint64_t sub_26F3BDC64()
{
  result = qword_2806DED20;
  if (!qword_2806DED20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806DED20);
  }

  return result;
}

unint64_t sub_26F3BDCBC()
{
  result = qword_2806DED28;
  if (!qword_2806DED28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806DED28);
  }

  return result;
}

unint64_t sub_26F3BDD14()
{
  result = qword_2806DED30;
  if (!qword_2806DED30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806DED30);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CoreAnalyticsLogger.InteractionLocation(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 6;
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

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for CoreAnalyticsLogger.InteractionLocation(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_26F3BDF38(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DED40, &qword_26F4A2F38);
    v3 = sub_26F4A0288();
    v4 = a1 + 32;

    while (1)
    {
      sub_26F3B8DD4(v4, &v11, &qword_2806DF000, &qword_26F4A2F40);
      v5 = v11;
      result = sub_26F45FE00(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_26F3BE15C(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
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

unint64_t sub_26F3BE060(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DED38, &qword_26F4A2F30);
    v3 = sub_26F4A0288();

    for (i = (a1 + 48); ; i += 24)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_26F45FD88(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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

_OWORD *sub_26F3BE15C(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_26F3BE194()
{
  result = qword_2806DED48;
  if (!qword_2806DED48)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2806DED48);
  }

  return result;
}

unint64_t sub_26F3BE1E0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DED78, &qword_26F4A2F78);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v22 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806DEFC0, &unk_26F4A2F80);
    v8 = sub_26F4A0288();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_26F3B8DD4(v10, v6, &qword_2806DED78, &qword_26F4A2F78);
      result = sub_26F45FF48(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = sub_26F49D968();
      (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      v17 = v8[7];
      v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DED80, &qword_26F4A3660);
      result = sub_26F3BEFCC(&v6[v9], v17 + *(*(v18 - 8) + 72) * v14);
      v19 = v8[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v8[2] = v21;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_26F3BE3F4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DED68, &qword_26F4A2F68);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v22 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DED70, &qword_26F4A2F70);
    v8 = sub_26F4A0288();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_26F3B8DD4(v10, v6, &qword_2806DED68, &qword_26F4A2F68);
      result = sub_26F45FE94(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = type metadata accessor for TextModel();
      sub_26F3BEF64(v6, v15 + *(*(v16 - 8) + 72) * v14, type metadata accessor for TextModel);
      v17 = v8[7];
      v18 = sub_26F49D968();
      result = (*(*(v18 - 8) + 32))(v17 + *(*(v18 - 8) + 72) * v14, &v6[v9], v18);
      v19 = v8[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v8[2] = v21;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_26F3BE610(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DED88, &qword_26F4A2F90);
    v3 = sub_26F4A0288();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_26F45FD88(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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

unint64_t sub_26F3BE714(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DED60, &qword_26F4A2F58);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v22 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806DEFA0, &qword_26F4A2F60);
    v8 = sub_26F4A0288();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_26F3B8DD4(v10, v6, &qword_2806DED60, &qword_26F4A2F58);
      result = sub_26F45FF48(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = sub_26F49D968();
      (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      v17 = v8[7];
      v18 = type metadata accessor for VisualTranslationModel(0);
      result = sub_26F3BEF64(&v6[v9], v17 + *(*(v18 - 8) + 72) * v14, type metadata accessor for VisualTranslationModel);
      v19 = v8[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v8[2] = v21;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t sub_26F3BE930(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = sub_26F3BD9D8(MEMORY[0x277D84F90]);
  v3 = a1 + 64;
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 64);
  v7 = (v4 + 63) >> 6;
  v67 = a1;

  v8 = 0;
  v66 = a1 + 64;
  while (v6)
  {
    v12 = v8;
LABEL_17:
    v15 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v16 = v15 | (v12 << 6);
    v17 = (*(v67 + 48) + 16 * v16);
    v19 = *v17;
    v18 = v17[1];
    sub_26F3B2DBC(*(v67 + 56) + 32 * v16, v70);
    *&v71 = v19;
    *(&v71 + 1) = v18;
    sub_26F3BE15C(v70, &v72);

    v14 = v12;
LABEL_18:
    v74 = v71;
    v75[0] = v72;
    v75[1] = v73;
    v20 = *(&v71 + 1);
    if (!*(&v71 + 1))
    {

      return v2;
    }

    v21 = v74;
    sub_26F3BE15C(v75, &v71);
    sub_26F3B2DBC(&v71, v70);
    if (swift_dynamicCast())
    {
      v8 = v14;
      v22 = sub_26F49F898();

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v70[0] = v2;
      v24 = v21;
      v25 = sub_26F45FD88(v21, v20);
      v27 = v2[2];
      v28 = (v26 & 1) == 0;
      v29 = __OFADD__(v27, v28);
      v30 = v27 + v28;
      if (v29)
      {
        goto LABEL_52;
      }

      v31 = v26;
      if (v2[3] < v30)
      {
        sub_26F3C4F14(v30, isUniquelyReferenced_nonNull_native);
        v25 = sub_26F45FD88(v24, v20);
        if ((v31 & 1) != (v32 & 1))
        {
          goto LABEL_56;
        }

        goto LABEL_34;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
LABEL_34:
        if (v31)
        {
          goto LABEL_5;
        }
      }

      else
      {
        v60 = v25;
        sub_26F3C6B90();
        v25 = v60;
        if (v31)
        {
LABEL_5:
          v9 = v25;

          v2 = *&v70[0];
          v10 = *(*&v70[0] + 56);
          v11 = *(v10 + 8 * v9);
          *(v10 + 8 * v9) = v22;

LABEL_6:
          __swift_destroy_boxed_opaque_existential_0(&v71);
          goto LABEL_7;
        }
      }

      v2 = *&v70[0];
      *(*&v70[0] + 8 * (v25 >> 6) + 64) |= 1 << v25;
      v54 = (v2[6] + 16 * v25);
      *v54 = v24;
      v54[1] = v20;
      *(v2[7] + 8 * v25) = v22;
      __swift_destroy_boxed_opaque_existential_0(&v71);
      v55 = v2[2];
      v29 = __OFADD__(v55, 1);
      v56 = v55 + 1;
      if (v29)
      {
        goto LABEL_54;
      }

      goto LABEL_47;
    }

    sub_26F3B2DBC(&v71, v70);
    sub_26F3BE194();
    if (swift_dynamicCast())
    {
      v8 = v14;
      v33 = v68;
      v34 = swift_isUniquelyReferenced_nonNull_native();
      *&v70[0] = v2;
      v35 = v21;
      v36 = sub_26F45FD88(v21, v20);
      v38 = v2[2];
      v39 = (v37 & 1) == 0;
      v29 = __OFADD__(v38, v39);
      v40 = v38 + v39;
      if (v29)
      {
        goto LABEL_53;
      }

      v41 = v37;
      if (v2[3] >= v40)
      {
        if ((v34 & 1) == 0)
        {
          v61 = v36;
          sub_26F3C6B90();
          v36 = v61;
          if (v41)
          {
LABEL_42:
            v57 = v36;

            v2 = *&v70[0];
            v58 = *(*&v70[0] + 56);
            v59 = *(v58 + 8 * v57);
            *(v58 + 8 * v57) = v33;

            goto LABEL_6;
          }

          goto LABEL_46;
        }
      }

      else
      {
        sub_26F3C4F14(v40, v34);
        v36 = sub_26F45FD88(v35, v20);
        if ((v41 & 1) != (v42 & 1))
        {
          goto LABEL_56;
        }
      }

      if (v41)
      {
        goto LABEL_42;
      }

LABEL_46:
      v2 = *&v70[0];
      *(*&v70[0] + 8 * (v36 >> 6) + 64) |= 1 << v36;
      v62 = (v2[6] + 16 * v36);
      *v62 = v35;
      v62[1] = v20;
      *(v2[7] + 8 * v36) = v33;

      __swift_destroy_boxed_opaque_existential_0(&v71);
      v63 = v2[2];
      v29 = __OFADD__(v63, 1);
      v56 = v63 + 1;
      if (v29)
      {
        goto LABEL_55;
      }

LABEL_47:
      v2[2] = v56;
LABEL_7:
      v3 = v66;
    }

    else
    {
      v43 = v21;
      if (qword_2806DE778 != -1)
      {
        swift_once();
      }

      v44 = sub_26F49DCA8();
      __swift_project_value_buffer(v44, qword_2806EA878);
      sub_26F3B2DBC(&v71, v70);

      v45 = sub_26F49DC88();
      v46 = sub_26F49FDE8();

      if (os_log_type_enabled(v45, v46))
      {
        v47 = swift_slowAlloc();
        v65 = v14;
        v48 = swift_slowAlloc();
        v69 = v48;
        *v47 = 136446466;
        v49 = sub_26F3B38D0(v43, v20, &v69);

        *(v47 + 4) = v49;
        *(v47 + 12) = 2082;
        sub_26F3B2DBC(v70, &v68);
        v50 = sub_26F49F938();
        v52 = v51;
        __swift_destroy_boxed_opaque_existential_0(v70);
        v53 = sub_26F3B38D0(v50, v52, &v69);

        *(v47 + 14) = v53;
        _os_log_impl(&dword_26F39E000, v45, v46, "Failed to convert Swift value to NSObject in analytics dictionary for key %{public}s: %{public}s", v47, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x274391F70](v48, -1, -1);
        MEMORY[0x274391F70](v47, -1, -1);

        __swift_destroy_boxed_opaque_existential_0(&v71);
        v8 = v65;
      }

      else
      {

        __swift_destroy_boxed_opaque_existential_0(v70);
        __swift_destroy_boxed_opaque_existential_0(&v71);
        v8 = v14;
      }
    }
  }

  if (v7 <= v8 + 1)
  {
    v13 = v8 + 1;
  }

  else
  {
    v13 = v7;
  }

  v14 = v13 - 1;
  while (1)
  {
    v12 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v12 >= v7)
    {
      v6 = 0;
      v72 = 0u;
      v73 = 0u;
      v71 = 0u;
      goto LABEL_18;
    }

    v6 = *(v3 + 8 * v12);
    ++v8;
    if (v6)
    {
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_52:
  __break(1u);
LABEL_53:
  __break(1u);
LABEL_54:
  __break(1u);
LABEL_55:
  __break(1u);
LABEL_56:
  result = sub_26F4A04A8();
  __break(1u);
  return result;
}

uint64_t sub_26F3BEF64(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_26F3BEFCC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DED80, &qword_26F4A3660);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_26F3BF054(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 32))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_26F3BF0B0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_26F3BF130@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v33 = a5;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DEB88, &qword_26F4A26A0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v28 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DEB20, &qword_26F4A9FF0);
  v14 = *(v13 - 8);
  v31 = v13;
  v32 = v14;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v28 - v16;
  sub_26F49DF48();
  v18 = sub_26F49DF68();
  (*(*(v18 - 8) + 56))(v12, 0, 1, v18);
  v19 = swift_allocObject();
  *(v19 + 16) = a1;
  *(v19 + 24) = a2;
  *(v19 + 32) = a3;
  v29 = a3;
  v30 = a4;
  *(v19 + 40) = a4;

  sub_26F3ACF68(a3);
  sub_26F49F388();
  sub_26F49E768();
  type metadata accessor for _BundleObject();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v21 = [objc_opt_self() bundleForClass_];
  v22 = sub_26F49EEC8();
  v24 = v23;
  LOBYTE(a4) = v25;
  v38 = a1;
  v39 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DED98, &qword_26F4A4C00);
  sub_26F49F368();
  v34 = a1;
  v35 = a2;
  v36 = v29;
  v37 = v30;
  sub_26F3BF764();
  v26 = v31;
  sub_26F49F038();

  sub_26F3B8D40(v22, v24, a4 & 1);

  return (*(v32 + 8))(v17, v26);
}

uint64_t sub_26F3BF4A8(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DEB88, &qword_26F4A26A0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v15 - v10;
  sub_26F49DF48();
  v12 = sub_26F49DF68();
  (*(*(v12 - 8) + 56))(v11, 0, 1, v12);
  v13 = swift_allocObject();
  *(v13 + 16) = a1;
  *(v13 + 24) = a2;
  *(v13 + 32) = a3;
  *(v13 + 40) = a4;

  sub_26F3ACF68(a3);
  return sub_26F49F388();
}

uint64_t sub_26F3BF60C@<X0>(uint64_t a1@<X8>)
{
  sub_26F49E768();
  type metadata accessor for _BundleObject();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  result = sub_26F49EEC8();
  *a1 = result;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6 & 1;
  *(a1 + 24) = v7;
  return result;
}

uint64_t sub_26F3BF6F4()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DED98, &qword_26F4A4C00);
  return sub_26F49F358();
}

unint64_t sub_26F3BF764()
{
  result = qword_2806DEB28;
  if (!qword_2806DEB28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806DEB20, &qword_26F4A9FF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806DEB28);
  }

  return result;
}

uint64_t objectdestroyTm_2()
{
  v1 = v0[3];

  if (v0[4])
  {
    v2 = v0[5];
  }

  return swift_deallocObject();
}

uint64_t sub_26F3BF810()
{
  v1 = *(v0 + 32);
  if (v1)
  {
    v2 = *(v0 + 40);
    return v1();
  }

  return result;
}

uint64_t DetectableLanguagePicker.init(isDetected:selectedOption:preferredLocales:oppositeLocale:languageModels:sourceUsesOCR:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char a8@<W7>, uint64_t a9@<X8>)
{
  v17 = type metadata accessor for DetectableLanguagePicker();
  v18 = v17[6];
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  sub_26F3BF978(a4, a9 + v17[5]);
  *(a9 + v18) = a5;
  v19 = v17[7];
  v20 = sub_26F49DAB8();
  result = (*(*(v20 - 8) + 32))(a9 + v19, a6, v20);
  *(a9 + v17[8]) = a7;
  *(a9 + v17[9]) = a8;
  return result;
}

uint64_t type metadata accessor for DetectableLanguagePicker()
{
  result = qword_2806DEDB0;
  if (!qword_2806DEDB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26F3BF978(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DEDA0, &qword_26F4A3050);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t DetectableLanguagePicker.body.getter@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_26F49E6B8();
  *(a1 + 8) = 0x4000000000000000;
  *(a1 + 16) = 0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DEDA8, &qword_26F4A3058);
  return sub_26F3BFA3C(v1, (a1 + *(v3 + 44)));
}

uint64_t sub_26F3BFA3C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v62 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DEDF0, &qword_26F4A3118);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  v63 = &v57 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = &v57 - v7;
  v9 = *(a1 + 8);
  v10 = *(a1 + 16);
  v65 = *a1;
  v66 = v9;
  v67 = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DEDE8, &qword_26F4A3110);
  MEMORY[0x274390240](&v64, v11);
  if (v64 == 1)
  {
    type metadata accessor for _BundleObject();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v13 = [objc_opt_self() bundleForClass_];
    v14 = sub_26F49D7D8();
    v16 = v15;

    v65 = v14;
    v66 = v16;
    sub_26F3BDC0C();
    v17 = sub_26F49EED8();
    v19 = v18;
    LOBYTE(v16) = v20;
    sub_26F49ED68();
    sub_26F49ECB8();

    v21 = sub_26F49EEA8();
    v23 = v22;
    v25 = v24;
    v61 = v26;

    sub_26F3B8D40(v17, v19, v16 & 1);

    sub_26F49F288();
    v27 = v23;
    v28 = sub_26F49EE68();
    v30 = v29;
    LODWORD(v60) = v31;
    v33 = v32;

    sub_26F3B8D40(v21, v27, v25 & 1);

    v34 = sub_26F49F5F8();
    v35 = v60;
    v36 = v60 & 1;
    v60 = v30;
    v61 = v28;
    sub_26F3B0EE4(v28, v30, v35 & 1);
    v59 = v33;

    v58 = v34;
  }

  else
  {
    v60 = 0;
    v61 = 0;
    v36 = 0;
    v58 = 0;
    v59 = 0;
  }

  v37 = type metadata accessor for DetectableLanguagePicker();
  v38 = v37[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DEDA0, &qword_26F4A3050);
  sub_26F49F468();
  v39 = *(a1 + v37[6]);
  v40 = type metadata accessor for LIDOrLanguagePicker();
  v41 = v40[6];
  v42 = v37[7];
  v43 = sub_26F49DAB8();
  v44 = a1;
  v45 = *(v43 - 8);
  (*(v45 + 16))(&v8[v41], v44 + v42, v43);
  (*(v45 + 56))(&v8[v41], 0, 1, v43);
  v46 = v37[9];
  v47 = *(v44 + v37[8]);
  LOBYTE(v45) = *(v44 + v46);
  KeyPath = swift_getKeyPath();
  *&v8[v40[5]] = v39;
  *&v8[v40[7]] = v47;
  v8[v40[8]] = v45;
  v49 = &v8[v40[9]];
  *v49 = KeyPath;
  v49[8] = 0;
  v50 = v63;
  sub_26F3C040C(v8, v63);
  v52 = v61;
  v51 = v62;
  v54 = v59;
  v53 = v60;
  *v62 = v61;
  v51[1] = v53;
  v51[2] = v36;
  v51[3] = v54;
  v51[4] = v58;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DEDF8, &qword_26F4A3148);
  sub_26F3C040C(v50, v51 + *(v55 + 48));

  sub_26F3C047C(v52, v53, v36, v54);
  sub_26F3C04CC(v52, v53, v36, v54);
  sub_26F3C051C(v8);
  sub_26F3C051C(v50);
  return sub_26F3C04CC(v52, v53, v36, v54);
}

uint64_t sub_26F3BFEA8@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_26F49E6B8();
  *(a1 + 8) = 0x4000000000000000;
  *(a1 + 16) = 0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DEDA8, &qword_26F4A3058);
  return sub_26F3BFA3C(v1, (a1 + *(v3 + 44)));
}

uint64_t _s13TranslationUI24DetectableLanguagePickerV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v4 = type metadata accessor for LanguageOption();
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v28[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v6);
  v10 = &v28[-v9];
  v11 = a1[1];
  v12 = *(a1 + 16);
  v30 = *a1;
  v31 = v11;
  v32 = v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DEDE8, &qword_26F4A3110);
  MEMORY[0x274390240](&v29);
  v14 = v29;
  v15 = a2[1];
  v16 = *(a2 + 16);
  v30 = *a2;
  v31 = v15;
  v32 = v16;
  MEMORY[0x274390240](&v29, v13);
  if (v14 != v29)
  {
    goto LABEL_10;
  }

  v17 = type metadata accessor for DetectableLanguagePicker();
  v18 = v17[5];
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DEDA0, &qword_26F4A3050);
  MEMORY[0x274390240]();
  v20 = a2 + v17[5];
  MEMORY[0x274390240](v19);
  LOBYTE(v20) = _s13TranslationUI14LanguageOptionO2eeoiySbAC_ACtFZ_0(v10, v8);
  sub_26F3C03B0(v8);
  sub_26F3C03B0(v10);
  if ((v20 & 1) == 0)
  {
    goto LABEL_10;
  }

  v21 = v17[6];
  v22 = *(a1 + v21);
  v23 = *(a2 + v21);
  if (v22)
  {
    if (!v23)
    {
      goto LABEL_10;
    }

    v24 = *(a2 + v21);

    v25 = sub_26F42DB78(v22, v23);

    if ((v25 & 1) == 0)
    {
      goto LABEL_10;
    }
  }

  else if (v23)
  {
LABEL_10:
    v26 = 0;
    return v26 & 1;
  }

  if ((MEMORY[0x27438E800](a1 + v17[7], a2 + v17[7]) & 1) == 0)
  {
    goto LABEL_10;
  }

  v26 = sub_26F42DD8C(*(a1 + v17[8]), *(a2 + v17[8]));
  return v26 & 1;
}

void sub_26F3C0128()
{
  sub_26F3C02FC(319, &qword_2806DEDC0, MEMORY[0x277D839B0], MEMORY[0x277CE11F8]);
  if (v0 <= 0x3F)
  {
    sub_26F3C0240();
    if (v1 <= 0x3F)
    {
      sub_26F3C0298();
      if (v2 <= 0x3F)
      {
        sub_26F49DAB8();
        if (v3 <= 0x3F)
        {
          sub_26F3C02FC(319, &qword_280F656F8, &type metadata for LanguageModel, MEMORY[0x277D83940]);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_26F3C0240()
{
  if (!qword_2806DEDC8)
  {
    type metadata accessor for LanguageOption();
    v0 = sub_26F49F488();
    if (!v1)
    {
      atomic_store(v0, &qword_2806DEDC8);
    }
  }
}

void sub_26F3C0298()
{
  if (!qword_280F65708)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806DEDD0, &qword_26F4A3100);
    v0 = sub_26F49FFC8();
    if (!v1)
    {
      atomic_store(v0, &qword_280F65708);
    }
  }
}

void sub_26F3C02FC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_26F3C034C()
{
  result = qword_2806DEDD8;
  if (!qword_2806DEDD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806DEDE0, &qword_26F4A3108);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806DEDD8);
  }

  return result;
}

uint64_t sub_26F3C03B0(uint64_t a1)
{
  v2 = type metadata accessor for LanguageOption();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_26F3C040C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DEDF0, &qword_26F4A3118);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26F3C047C(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_26F3B0EE4(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_26F3C04CC(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_26F3B8D40(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_26F3C051C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DEDF0, &qword_26F4A3118);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *DisambiguationResultModel.disambiguableResult.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC13TranslationUI25DisambiguationResultModel_disambiguableResult);
  v2 = v1;
  return v1;
}

void sub_26F3C05B4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC13TranslationUI25DisambiguationResultModel_excludedTypes;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;

  v6 = OBJC_IVAR____TtC13TranslationUI25DisambiguationResultModel_renderMode;
  swift_beginAccess();
  if (*(v3 + v6))
  {
    sub_26F3C3338();
  }

  else
  {
    sub_26F3C2694();
  }
}

uint64_t sub_26F3C064C()
{
  v1 = OBJC_IVAR____TtC13TranslationUI25DisambiguationResultModel_excludedTypes;
  swift_beginAccess();
  v2 = *(v0 + v1);
}

void sub_26F3C0694(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC13TranslationUI25DisambiguationResultModel_excludedTypes;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;

  v5 = OBJC_IVAR____TtC13TranslationUI25DisambiguationResultModel_renderMode;
  swift_beginAccess();
  if (*(v1 + v5))
  {
    sub_26F3C3338();
  }

  else
  {
    sub_26F3C2694();
  }
}

void (*sub_26F3C071C(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_26F3C0780;
}

void sub_26F3C0780(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = *(a1 + 24);
    v5 = OBJC_IVAR____TtC13TranslationUI25DisambiguationResultModel_renderMode;
    swift_beginAccess();
    v6 = *(v4 + v5);
    v7 = *(a1 + 24);
    if (v6)
    {
      sub_26F3C3338();
    }

    else
    {
      sub_26F3C2694();
    }
  }
}

void sub_26F3C0808(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC13TranslationUI25DisambiguationResultModel_renderMode;
  swift_beginAccess();
  *(v3 + v4) = v2;
  if (v2)
  {
    sub_26F3C3338();
  }

  else
  {
    sub_26F3C2694();
  }
}

uint64_t sub_26F3C086C@<X0>(_BYTE *a1@<X8>)
{
  v3 = OBJC_IVAR____TtC13TranslationUI25DisambiguationResultModel_renderMode;
  result = swift_beginAccess();
  *a1 = *(v1 + v3);
  return result;
}

void sub_26F3C08C0(char *a1)
{
  v2 = *a1;
  v3 = OBJC_IVAR____TtC13TranslationUI25DisambiguationResultModel_renderMode;
  swift_beginAccess();
  *(v1 + v3) = v2;
  if (v2)
  {
    sub_26F3C3338();
  }

  else
  {
    sub_26F3C2694();
  }
}

void (*sub_26F3C0920(uint64_t *a1))(void **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR____TtC13TranslationUI25DisambiguationResultModel_renderMode;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return sub_26F3C09A8;
}

void sub_26F3C09A8(void **a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    if (*(v3[3] + v3[4]))
    {
      sub_26F3C3338();
    }

    else
    {
      sub_26F3C2694();
    }
  }

  free(v3);
}

uint64_t sub_26F3C0AA8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_26F49DDA8();

  *a2 = v5;
  return result;
}

uint64_t sub_26F3C0B38(void **a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = v3;
  v5 = v2;
  return sub_26F49DDB8();
}

uint64_t sub_26F3C0BC0()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_26F49DDA8();

  return v1;
}

uint64_t sub_26F3C0C2C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v4 = *a1;
  v5 = *a4;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DEE10, &qword_26F4A31A8);
  sub_26F49DD78();
  return swift_endAccess();
}

uint64_t sub_26F3C0CA0(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806DEF90, &qword_26F4A3650);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v20 - v14;
  v16 = *(v9 + 16);
  v16(&v20 - v14, a1, v8);
  v17 = *a2;
  v16(v13, v15, v8);
  v18 = *a5;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DEE10, &qword_26F4A31A8);
  sub_26F49DD88();
  swift_endAccess();
  return (*(v9 + 8))(v15, v8);
}

uint64_t sub_26F3C0E38(uint64_t *a1)
{
  v1 = *a1;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DEE10, &qword_26F4A31A8);
  sub_26F49DD78();
  return swift_endAccess();
}

_BYTE *DisambiguationResultModel.__allocating_init(disambiguableResult:excludedTypes:sourceLocale:targetLocale:globalAttributeProvider:linkAttributeProvider:userSelectionHandler:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v16 = objc_allocWithZone(v10);
  v17 = OBJC_IVAR____TtC13TranslationUI25DisambiguationResultModel_excludedTypes;
  *&v16[OBJC_IVAR____TtC13TranslationUI25DisambiguationResultModel_excludedTypes] = MEMORY[0x277D84F90];
  v16[OBJC_IVAR____TtC13TranslationUI25DisambiguationResultModel_renderMode] = 0;
  v18 = &v16[OBJC_IVAR____TtC13TranslationUI25DisambiguationResultModel_displaySource];
  *v18 = 0u;
  v18[1] = 0u;
  *&v16[OBJC_IVAR____TtC13TranslationUI25DisambiguationResultModel_disambiguableResult] = a1;
  v19 = &v16[OBJC_IVAR____TtC13TranslationUI25DisambiguationResultModel_globalAttributeProvider];
  *v19 = a5;
  v19[1] = a6;
  v20 = &v16[OBJC_IVAR____TtC13TranslationUI25DisambiguationResultModel_linkAttributeProvider];
  *v20 = a7;
  v20[1] = a8;
  swift_beginAccess();
  *&v16[v17] = a2;
  v21 = &v16[OBJC_IVAR____TtC13TranslationUI25DisambiguationResultModel_userSelectionHandler];
  *v21 = a9;
  v21[1] = a10;
  v22 = OBJC_IVAR____TtC13TranslationUI25DisambiguationResultModel_sourceLocale;
  v23 = sub_26F49DAB8();
  v36 = *(v23 - 8);
  v24 = *(v36 + 16);
  v24(&v16[v22], a3, v23);
  v37 = v23;
  v24(&v16[OBJC_IVAR____TtC13TranslationUI25DisambiguationResultModel_targetLocale], a4, v23);
  v25 = a1;
  sub_26F3ACF68(a5);
  sub_26F3ACF68(a7);
  sub_26F3ACF68(a9);
  v26 = [v25 sourceText];
  if (!v26)
  {
    sub_26F49F8C8();
    v26 = sub_26F49F898();
  }

  v27 = [objc_allocWithZone(MEMORY[0x277CCA898]) initWithString_];

  swift_beginAccess();
  v42 = v27;
  sub_26F3B0C24(0, &unk_280F65670, 0x277CCA898);
  sub_26F49DD68();
  swift_endAccess();
  v28 = [v25 targetText];
  if (!v28)
  {
    sub_26F49F8C8();
    v28 = sub_26F49F898();
  }

  v29 = [objc_allocWithZone(MEMORY[0x277CCA898]) initWithString_];

  swift_beginAccess();
  v42 = v29;
  sub_26F49DD68();
  swift_endAccess();
  v41.receiver = v16;
  v41.super_class = v35;
  v30 = objc_msgSendSuper2(&v41, sel_init);
  [v25 setDelegate_];
  [v25 addObserver_];
  v31 = OBJC_IVAR____TtC13TranslationUI25DisambiguationResultModel_renderMode;
  swift_beginAccess();
  if (v30[v31])
  {
    sub_26F3C3338();
  }

  else
  {
    sub_26F3C2694();
  }

  sub_26F3ACE98(a9);
  sub_26F3ACE98(a7);
  sub_26F3ACE98(a5);

  v32 = *(v36 + 8);
  v32(a4, v37);
  v32(a3, v37);
  return v30;
}

_BYTE *DisambiguationResultModel.init(disambiguableResult:excludedTypes:sourceLocale:targetLocale:globalAttributeProvider:linkAttributeProvider:userSelectionHandler:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v14 = OBJC_IVAR____TtC13TranslationUI25DisambiguationResultModel_excludedTypes;
  *&v10[OBJC_IVAR____TtC13TranslationUI25DisambiguationResultModel_excludedTypes] = MEMORY[0x277D84F90];
  v10[OBJC_IVAR____TtC13TranslationUI25DisambiguationResultModel_renderMode] = 0;
  v15 = &v10[OBJC_IVAR____TtC13TranslationUI25DisambiguationResultModel_displaySource];
  *v15 = 0u;
  v15[1] = 0u;
  *&v10[OBJC_IVAR____TtC13TranslationUI25DisambiguationResultModel_disambiguableResult] = a1;
  v16 = &v10[OBJC_IVAR____TtC13TranslationUI25DisambiguationResultModel_globalAttributeProvider];
  *v16 = a5;
  v16[1] = a6;
  v17 = &v10[OBJC_IVAR____TtC13TranslationUI25DisambiguationResultModel_linkAttributeProvider];
  *v17 = a7;
  v17[1] = a8;
  swift_beginAccess();
  *&v10[v14] = a2;
  v18 = &v10[OBJC_IVAR____TtC13TranslationUI25DisambiguationResultModel_userSelectionHandler];
  *v18 = a9;
  v18[1] = a10;
  v19 = OBJC_IVAR____TtC13TranslationUI25DisambiguationResultModel_sourceLocale;
  v20 = sub_26F49DAB8();
  v32 = *(v20 - 8);
  v21 = *(v32 + 16);
  v21(&v10[v19], a3, v20);
  v33 = v20;
  v21(&v10[OBJC_IVAR____TtC13TranslationUI25DisambiguationResultModel_targetLocale], a4, v20);
  v22 = a1;
  sub_26F3ACF68(a5);
  sub_26F3ACF68(a7);
  sub_26F3ACF68(a9);
  v23 = [v22 sourceText];
  if (!v23)
  {
    sub_26F49F8C8();
    v23 = sub_26F49F898();
  }

  v24 = [objc_allocWithZone(MEMORY[0x277CCA898]) initWithString_];

  swift_beginAccess();
  v37 = v24;
  sub_26F3B0C24(0, &unk_280F65670, 0x277CCA898);
  sub_26F49DD68();
  swift_endAccess();
  v25 = [v22 targetText];
  if (!v25)
  {
    sub_26F49F8C8();
    v25 = sub_26F49F898();
  }

  v26 = [objc_allocWithZone(MEMORY[0x277CCA898]) initWithString_];

  swift_beginAccess();
  v37 = v26;
  sub_26F49DD68();
  swift_endAccess();
  v36.receiver = v10;
  v36.super_class = type metadata accessor for DisambiguationResultModel(0);
  v27 = objc_msgSendSuper2(&v36, sel_init);
  [v22 setDelegate_];
  [v22 addObserver_];
  v28 = OBJC_IVAR____TtC13TranslationUI25DisambiguationResultModel_renderMode;
  swift_beginAccess();
  if (v27[v28])
  {
    sub_26F3C3338();
  }

  else
  {
    sub_26F3C2694();
  }

  sub_26F3ACE98(a9);
  sub_26F3ACE98(a7);
  sub_26F3ACE98(a5);

  v29 = *(v32 + 8);
  v29(a4, v33);
  v29(a3, v33);
  return v27;
}

id DisambiguationResultModel.__allocating_init(withStaticSource:staticTarget:sourceLocale:targetLocale:globalAttributeProvider:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v16 = objc_allocWithZone(v8);
  v17 = OBJC_IVAR____TtC13TranslationUI25DisambiguationResultModel_excludedTypes;
  v18 = MEMORY[0x277D84F90];
  *&v16[OBJC_IVAR____TtC13TranslationUI25DisambiguationResultModel_excludedTypes] = MEMORY[0x277D84F90];
  v16[OBJC_IVAR____TtC13TranslationUI25DisambiguationResultModel_renderMode] = 0;
  v19 = &v16[OBJC_IVAR____TtC13TranslationUI25DisambiguationResultModel_displaySource];
  *v19 = a1;
  v19[1] = a2;
  v19[2] = a3;
  v19[3] = a4;
  *&v16[OBJC_IVAR____TtC13TranslationUI25DisambiguationResultModel_disambiguableResult] = 0;
  v20 = &v16[OBJC_IVAR____TtC13TranslationUI25DisambiguationResultModel_globalAttributeProvider];
  *v20 = a7;
  v20[1] = a8;
  v21 = a7;
  v36 = a7;
  v22 = &v16[OBJC_IVAR____TtC13TranslationUI25DisambiguationResultModel_linkAttributeProvider];
  *v22 = 0;
  v22[1] = 0;
  swift_beginAccess();
  *&v16[v17] = v18;
  v23 = &v16[OBJC_IVAR____TtC13TranslationUI25DisambiguationResultModel_userSelectionHandler];
  *v23 = 0;
  v23[1] = 0;
  v24 = OBJC_IVAR____TtC13TranslationUI25DisambiguationResultModel_sourceLocale;
  v25 = sub_26F49DAB8();
  v26 = *(v25 - 8);
  v27 = *(v26 + 16);
  v27(&v16[v24], a5, v25);
  v27(&v16[OBJC_IVAR____TtC13TranslationUI25DisambiguationResultModel_targetLocale], a6, v25);
  v28 = objc_allocWithZone(MEMORY[0x277CCA898]);

  sub_26F3ACF68(v21);
  v29 = sub_26F49F898();

  [v28 initWithString_];

  swift_beginAccess();
  sub_26F3B0C24(0, &unk_280F65670, 0x277CCA898);
  sub_26F49DD68();
  swift_endAccess();
  v30 = objc_allocWithZone(MEMORY[0x277CCA898]);
  v31 = sub_26F49F898();

  v32 = [v30 initWithString_];

  swift_beginAccess();
  v41 = v32;
  sub_26F49DD68();
  swift_endAccess();
  v40.receiver = v16;
  v40.super_class = v38;
  v33 = objc_msgSendSuper2(&v40, sel_init);
  sub_26F3C2410();

  sub_26F3ACE98(v36);
  v34 = *(v26 + 8);
  v34(a6, v25);
  v34(a5, v25);
  return v33;
}

id DisambiguationResultModel.init(withStaticSource:staticTarget:sourceLocale:targetLocale:globalAttributeProvider:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v12 = OBJC_IVAR____TtC13TranslationUI25DisambiguationResultModel_excludedTypes;
  v13 = MEMORY[0x277D84F90];
  *&v8[OBJC_IVAR____TtC13TranslationUI25DisambiguationResultModel_excludedTypes] = MEMORY[0x277D84F90];
  v8[OBJC_IVAR____TtC13TranslationUI25DisambiguationResultModel_renderMode] = 0;
  v14 = &v8[OBJC_IVAR____TtC13TranslationUI25DisambiguationResultModel_displaySource];
  *v14 = a1;
  v14[1] = a2;
  v14[2] = a3;
  v14[3] = a4;
  *&v8[OBJC_IVAR____TtC13TranslationUI25DisambiguationResultModel_disambiguableResult] = 0;
  v15 = &v8[OBJC_IVAR____TtC13TranslationUI25DisambiguationResultModel_globalAttributeProvider];
  *v15 = a7;
  v15[1] = a8;
  v16 = &v8[OBJC_IVAR____TtC13TranslationUI25DisambiguationResultModel_linkAttributeProvider];
  *v16 = 0;
  v16[1] = 0;
  swift_beginAccess();
  *&v8[v12] = v13;
  v17 = &v8[OBJC_IVAR____TtC13TranslationUI25DisambiguationResultModel_userSelectionHandler];
  *v17 = 0;
  v17[1] = 0;
  v18 = OBJC_IVAR____TtC13TranslationUI25DisambiguationResultModel_sourceLocale;
  v19 = sub_26F49DAB8();
  v20 = *(v19 - 8);
  v21 = *(v20 + 16);
  v22 = &v8[v18];
  v23 = v19;
  v32 = v19;
  v21(v22, a5);
  (v21)(&v8[OBJC_IVAR____TtC13TranslationUI25DisambiguationResultModel_targetLocale], a6, v23);
  v24 = objc_allocWithZone(MEMORY[0x277CCA898]);

  sub_26F3ACF68(a7);
  v25 = sub_26F49F898();

  [v24 initWithString_];

  swift_beginAccess();
  sub_26F3B0C24(0, &unk_280F65670, 0x277CCA898);
  sub_26F49DD68();
  swift_endAccess();
  v26 = objc_allocWithZone(MEMORY[0x277CCA898]);
  v27 = sub_26F49F898();

  v28 = [v26 initWithString_];

  swift_beginAccess();
  v36 = v28;
  sub_26F49DD68();
  swift_endAccess();
  v35.receiver = v8;
  v35.super_class = type metadata accessor for DisambiguationResultModel(0);
  v29 = objc_msgSendSuper2(&v35, sel_init);
  sub_26F3C2410();

  sub_26F3ACE98(a7);
  v30 = *(v20 + 8);
  v30(a6, v32);
  v30(a5, v32);
  return v29;
}

void sub_26F3C1C70()
{
  v1 = *(v0 + OBJC_IVAR____TtC13TranslationUI25DisambiguationResultModel_disambiguableResult);
  if (v1)
  {
    v2 = v1;
    [v2 setDelegate_];
    [v2 addObserver_];
    v3 = OBJC_IVAR____TtC13TranslationUI25DisambiguationResultModel_renderMode;
    swift_beginAccess();
    if (*(v0 + v3))
    {
      sub_26F3C3338();
    }

    else
    {
      sub_26F3C2694();
    }
  }
}

uint64_t sub_26F3C1D0C(unsigned __int8 *a1)
{
  v1 = *a1;
  v10 = *a1;
  v2 = sub_26F3C3D34(&v10);
  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v2 = 0;
    v4 = 0xE000000000000000;
  }

  v9 = v1;
  v5 = sub_26F3C39C4(v2, v4, &v9);

  if (*(v5 + 2))
  {
    v6 = *(v5 + 4);
    v7 = *(v5 + 5);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

uint64_t DisambiguationResultModel.LinkRangeInfo.sourceRange.getter()
{
  result = *v0;
  v2 = v0[1];
  return result;
}

uint64_t DisambiguationResultModel.LinkRangeInfo.targetRange.getter()
{
  result = *(v0 + 16);
  v2 = *(v0 + 24);
  return result;
}

void sub_26F3C1DAC(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v59 = a2;
  v58 = sub_26F49D968();
  v4 = *(v58 - 8);
  v5 = v4[8];
  MEMORY[0x28223BE20](v58);
  v7 = &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DEE38, &qword_26F4A31F8);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v48 - v10;
  v12 = type metadata accessor for DisambiguationLinkInfo(0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v48 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(v2 + OBJC_IVAR____TtC13TranslationUI25DisambiguationResultModel_disambiguableResult);
  if (!v17)
  {
    goto LABEL_18;
  }

  sub_26F3B8DD4(a1, v11, &qword_2806DEE38, &qword_26F4A31F8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_26F3B6B4C(v11, &qword_2806DEE38, &qword_26F4A31F8);
LABEL_18:
    v28 = v59;
    *v59 = 0u;
    v28[1] = 0u;
    *(v28 + 32) = 1;
    return;
  }

  sub_26F3C8EE8(v11, v16, type metadata accessor for DisambiguationLinkInfo);
  v18 = v17;
  v19 = sub_26F49D928();
  v20 = [v18 sentenceWithUUID_];

  if (!v20)
  {
    sub_26F3C8084(v16);
LABEL_17:

    goto LABEL_18;
  }

  v21 = [v20 selectedTargetPhrase];
  if (!v21)
  {
    sub_26F3C8084(v16);
    goto LABEL_16;
  }

  v22 = v21;
  v23 = [v21 links];
  v24 = sub_26F3B0C24(0, &qword_2806DEE40, 0x277CE1AF0);
  v25 = sub_26F49FAF8();

  if (v25 >> 62)
  {
LABEL_44:
    v26 = sub_26F4A00A8();
  }

  else
  {
    v26 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v26 < 1 || *&v16[*(v12 + 20)] >= v26)
  {
    sub_26F3C8084(v16);

LABEL_16:
    goto LABEL_17;
  }

  v51 = *&v16[*(v12 + 20)];
  v29 = [v18 sentences];
  sub_26F3B0C24(0, &qword_2806DEE48, 0x277CE1AE8);
  v30 = sub_26F49FAF8();

  v49 = v20;
  v50 = v18;
  v52 = v24;
  v53 = v22;
  v55 = v30 & 0xFFFFFFFFFFFFFF8;
  if (v30 >> 62)
  {
    v57 = sub_26F4A00A8();
  }

  else
  {
    v57 = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v12 = 0;
  v31 = 0;
  v24 = 0;
  v56 = v30 & 0xC000000000000001;
  v54 = v4 + 1;
  while (v57 != v12)
  {
    if (v56)
    {
      v32 = MEMORY[0x274390F80](v12, v30);
    }

    else
    {
      if (v12 >= *(v55 + 16))
      {
        goto LABEL_41;
      }

      v32 = *(v30 + 8 * v12 + 32);
    }

    v4 = v32;
    if (__OFADD__(v12, 1))
    {
      __break(1u);
LABEL_41:
      __break(1u);
LABEL_42:
      __break(1u);
LABEL_43:
      __break(1u);
      goto LABEL_44;
    }

    v33 = [v32 UUID];
    sub_26F49D948();

    LOBYTE(v33) = sub_26F49D938();
    (*v54)(v7, v58);
    if (v33)
    {

      break;
    }

    v22 = v16;
    v16 = v30;
    v18 = [v4 sourceText];
    sub_26F49F8C8();

    v20 = sub_26F49F9B8();

    v34 = __OFADD__(v24, v20);
    v24 += v20;
    if (v34)
    {
      goto LABEL_42;
    }

    v35 = [v4 targetText];
    v18 = sub_26F49F8C8();

    v20 = sub_26F49F9B8();

    ++v12;
    v34 = __OFADD__(v31, v20);
    v31 += v20;
    v16 = v22;
    if (v34)
    {
      goto LABEL_43;
    }
  }

  v36 = v53;
  v37 = [v53 links];
  v38 = sub_26F49FAF8();

  if ((v38 & 0xC000000000000001) != 0)
  {
    v39 = MEMORY[0x274390F80](v51, v38);
  }

  else
  {
    if (v51 >= *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_48;
    }

    v39 = *(v38 + 8 * v51 + 32);
  }

  v40 = v39;

  v41 = [v40 sourceRange];
  v43 = v42;
  v44 = [v40 targetRange];
  v46 = v45;

  sub_26F3C8084(v16);
  if (!__OFADD__(v41, v24))
  {
    if (!__OFADD__(v44, v31))
    {
      v47 = v59;
      *v59 = &v41[v24];
      *(v47 + 1) = v43;
      *(v47 + 2) = &v44[v31];
      *(v47 + 3) = v46;
      *(v47 + 32) = 0;
      return;
    }

    goto LABEL_49;
  }

  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  __break(1u);
}

void sub_26F3C2410()
{
  v1 = &v0[OBJC_IVAR____TtC13TranslationUI25DisambiguationResultModel_displaySource];
  if (*&v0[OBJC_IVAR____TtC13TranslationUI25DisambiguationResultModel_displaySource + 8])
  {
    v2 = v1[2];
    v3 = v1[3];
    v4 = *v1;
    LOBYTE(v16) = 0;
    v5 = OBJC_IVAR____TtC13TranslationUI25DisambiguationResultModel_renderMode;
    swift_beginAccess();
    v17 = v0[v5];
    v6 = sub_26F3C3DF8(&v16, &v17);
    LOBYTE(v16) = 1;
    v17 = v0[v5];
    v7 = sub_26F3C3DF8(&v16, &v17);
    v8 = sub_26F49F898();
    if (v6)
    {
      type metadata accessor for Key(0);
      sub_26F3C8568(&qword_2806DE8E8, type metadata accessor for Key);
      v9 = sub_26F49F7E8();
    }

    else
    {
      v9 = 0;
    }

    v10 = [objc_allocWithZone(MEMORY[0x277CCA898]) initWithString:v8 attributes:v9];

    swift_getKeyPath();
    swift_getKeyPath();
    v16 = v10;
    v11 = v0;
    sub_26F49DDB8();
    v12 = sub_26F49F898();
    if (v7)
    {
      type metadata accessor for Key(0);
      sub_26F3C8568(&qword_2806DE8E8, type metadata accessor for Key);
      v13 = sub_26F49F7E8();
    }

    else
    {
      v13 = 0;
    }

    v14 = [objc_allocWithZone(MEMORY[0x277CCA898]) initWithString:v12 attributes:v13];

    swift_getKeyPath();
    swift_getKeyPath();
    v16 = v14;
    v15 = v11;
    sub_26F49DDB8();
  }
}

void sub_26F3C2694()
{
  ObjectType = swift_getObjectType();
  v2 = *&v0[OBJC_IVAR____TtC13TranslationUI25DisambiguationResultModel_disambiguableResult];
  if (v2)
  {
    v3 = ObjectType;
    LOBYTE(aBlock) = 0;
    v4 = OBJC_IVAR____TtC13TranslationUI25DisambiguationResultModel_renderMode;
    swift_beginAccess();
    v24 = v0[v4];
    v17 = v2;
    if (!sub_26F3C3DF8(&aBlock, &v24))
    {
      sub_26F3BDF38(MEMORY[0x277D84F90]);
    }

    LOBYTE(aBlock) = 1;
    v24 = v0[v4];
    if (!sub_26F3C3DF8(&aBlock, &v24))
    {
      sub_26F3BDF38(MEMORY[0x277D84F90]);
    }

    v5 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v6 = swift_allocObject();
    *(v6 + 16) = v5;
    *(v6 + 24) = v3;
    type metadata accessor for Key(0);
    sub_26F3C8568(&qword_2806DE8E8, type metadata accessor for Key);
    v7 = sub_26F49F7E8();

    v22 = sub_26F3C8F50;
    v23 = v6;
    aBlock = MEMORY[0x277D85DD0];
    v19 = 1107296256;
    v20 = sub_26F3C3200;
    v21 = &block_descriptor_1;
    v8 = _Block_copy(&aBlock);

    v9 = [v17 generateAttributedStringForLocation:0 withGlobalAttributes:v7 attributeProvider:v8];
    _Block_release(v8);

    v10 = sub_26F49F7E8();

    v22 = sub_26F3C8F50;
    v23 = v6;
    aBlock = MEMORY[0x277D85DD0];
    v19 = 1107296256;
    v20 = sub_26F3C3200;
    v21 = &block_descriptor_61;
    v11 = _Block_copy(&aBlock);

    v12 = [v17 generateAttributedStringForLocation:1 withGlobalAttributes:v10 attributeProvider:v11];
    _Block_release(v11);

    swift_getKeyPath();
    swift_getKeyPath();
    aBlock = v9;
    v13 = v9;
    v14 = v0;
    sub_26F49DDB8();
    swift_getKeyPath();
    swift_getKeyPath();
    aBlock = v12;
    v15 = v14;
    v16 = v12;
    sub_26F49DDB8();
  }

  else
  {

    sub_26F3C2410();
  }
}

uint64_t sub_26F3C2A6C(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_26F49F918();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = type metadata accessor for DisambiguationLinkInfo(0);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v55 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v55 - v16;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v19 = result;
    v56 = a2;
    v20 = *(result + OBJC_IVAR____TtC13TranslationUI25DisambiguationResultModel_linkAttributeProvider);
    if (!v20)
    {
      goto LABEL_9;
    }

    v21 = *(result + OBJC_IVAR____TtC13TranslationUI25DisambiguationResultModel_linkAttributeProvider + 8);
    if (a5)
    {
      if (a5 != 1)
      {
        result = sub_26F4A0238();
        __break(1u);
        return result;
      }

      v22 = 1;
    }

    else
    {
      v22 = 0;
    }

    LOBYTE(v59) = v22;
    v23 = OBJC_IVAR____TtC13TranslationUI25DisambiguationResultModel_renderMode;
    swift_beginAccess();
    LOBYTE(v58[0]) = v19[v23];
    v24 = v20(&v59, v58);
    if (v24)
    {
      v25 = v24;
    }

    else
    {
LABEL_9:
      v25 = sub_26F3BDF38(MEMORY[0x277D84F90]);
    }

    v26 = [a3 links];
    sub_26F3B0C24(0, &qword_2806DEE40, 0x277CE1AF0);
    v27 = sub_26F49FAF8();

    v28 = sub_26F3C3074(a4, v27);
    v30 = v29;

    if (v30)
    {

      if (qword_2806DE780 != -1)
      {
        swift_once();
      }

      v31 = sub_26F49DCA8();
      __swift_project_value_buffer(v31, qword_2806EA890);
      v32 = sub_26F49DC88();
      v33 = sub_26F49FDE8();
      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        *v34 = 0;
        _os_log_impl(&dword_26F39E000, v32, v33, "LinkAttributeProvider gave invalid arguments; can't find linkConfiguration inside node", v34, 2u);
        MEMORY[0x274391F70](v34, -1, -1);
      }

      return 0;
    }

    v35 = [v56 UUID];
    sub_26F49D948();

    if ((v28 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      *&v17[*(v11 + 20)] = v28;
      v36 = sub_26F49D728();
      v37 = *(v36 + 48);
      v38 = *(v36 + 52);
      swift_allocObject();
      sub_26F49D718();
      sub_26F3C8568(&qword_2806DF008, type metadata accessor for DisambiguationLinkInfo);
      v48 = sub_26F49D708();
      v50 = v49;

      sub_26F49F908();
      v51 = sub_26F49F8E8();
      if (v52)
      {
        v53 = *MEMORY[0x277D77208];
        v60 = MEMORY[0x277D837D0];
        *&v59 = v51;
        *(&v59 + 1) = v52;
        sub_26F3BE15C(&v59, v58);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v57 = v25;
        sub_26F497EBC(v58, v53, isUniquelyReferenced_nonNull_native);
        sub_26F3C8F70(v48, v50);

        sub_26F3C8084(v17);
        return v57;
      }

      sub_26F3C8F70(v48, v50);
      if (qword_2806DE780 == -1)
      {
        goto LABEL_19;
      }
    }

    swift_once();
LABEL_19:
    v39 = sub_26F49DCA8();
    __swift_project_value_buffer(v39, qword_2806EA890);
    sub_26F3C8E80(v17, v15, type metadata accessor for DisambiguationLinkInfo);
    v40 = sub_26F49DC88();
    v41 = sub_26F49FDD8();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      *&v59 = v43;
      *v42 = 136446210;
      v44 = DisambiguationLinkInfo.description.getter();
      v46 = v45;
      sub_26F3C8084(v15);
      v47 = sub_26F3B38D0(v44, v46, &v59);

      *(v42 + 4) = v47;
      _os_log_impl(&dword_26F39E000, v40, v41, "Failed to encode link information; won't show link in string for link: %{public}s", v42, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v43);
      MEMORY[0x274391F70](v43, -1, -1);
      MEMORY[0x274391F70](v42, -1, -1);
    }

    else
    {

      sub_26F3C8084(v15);
    }

    sub_26F3C8084(v17);
    return 0;
  }

  return result;
}

unint64_t sub_26F3C3074(uint64_t a1, unint64_t a2)
{
  v3 = a2 & 0xFFFFFFFFFFFFFF8;
  if (a2 >> 62)
  {
LABEL_17:
    v4 = sub_26F4A00A8();
  }

  else
  {
    v4 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v5 = 0;
  while (1)
  {
    if (v4 == v5)
    {
      return 0;
    }

    if ((a2 & 0xC000000000000001) != 0)
    {
      v6 = MEMORY[0x274390F80](v5, a2);
    }

    else
    {
      if (v5 >= *(v3 + 16))
      {
        __break(1u);
LABEL_16:
        __break(1u);
        goto LABEL_17;
      }

      v6 = *(a2 + 8 * v5 + 32);
    }

    v7 = v6;
    sub_26F3B0C24(0, &qword_2806DEE40, 0x277CE1AF0);
    v8 = sub_26F49FF48();

    if (v8)
    {
      return v5;
    }

    if (__OFADD__(v5++, 1))
    {
      goto LABEL_16;
    }
  }
}

uint64_t DisambiguationLinkInfo.init(sentenceUUID:linkIndex:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_26F49D968();
  (*(*(v6 - 8) + 32))(a3, a1, v6);
  result = type metadata accessor for DisambiguationLinkInfo(0);
  *(a3 + *(result + 20)) = a2;
  return result;
}

id sub_26F3C3200(uint64_t a1, void *a2, void *a3, void *a4, void *a5, uint64_t a6)
{
  v12 = *(a1 + 32);
  v11 = *(a1 + 40);

  v13 = a2;
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = v12(v13, v14, v15, v16, a6);

  if (v17)
  {
    type metadata accessor for Key(0);
    sub_26F3C8568(&qword_2806DE8E8, type metadata accessor for Key);
    v18 = sub_26F49F7E8();
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

void sub_26F3C3338()
{
  LOBYTE(v60) = 0;
  v1 = OBJC_IVAR____TtC13TranslationUI25DisambiguationResultModel_renderMode;
  swift_beginAccess();
  LOBYTE(v63) = v0[v1];
  if (!sub_26F3C3DF8(&v60, &v63))
  {
    sub_26F3BDF38(MEMORY[0x277D84F90]);
  }

  LOBYTE(v60) = 1;
  LOBYTE(v63) = v0[v1];
  if (!sub_26F3C3DF8(&v60, &v63))
  {
    sub_26F3BDF38(MEMORY[0x277D84F90]);
  }

  LOBYTE(v60) = 0;
  v2 = sub_26F3C3D34(&v60);
  if (v3)
  {
    v4 = v2;
  }

  else
  {
    v4 = 0;
  }

  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0xE000000000000000;
  }

  v54 = v5;
  LOBYTE(v60) = 1;
  v6 = sub_26F3C3D34(&v60);
  if (v7)
  {
    v8 = v6;
  }

  else
  {
    v8 = 0;
  }

  v52 = v8;
  v9 = v0;
  if (v7)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE000000000000000;
  }

  v11 = objc_allocWithZone(MEMORY[0x277CCAB48]);
  v12 = sub_26F49F898();
  type metadata accessor for Key(0);
  sub_26F3C8568(&qword_2806DE8E8, type metadata accessor for Key);
  v13 = sub_26F49F7E8();

  v58 = [v11 initWithString:v12 attributes:v13];

  v14 = objc_allocWithZone(MEMORY[0x277CCAB48]);
  v15 = sub_26F49F898();
  v16 = sub_26F49F7E8();

  v57 = [v14 initWithString:v15 attributes:v16];

  LOBYTE(v60) = 0;
  v17 = sub_26F3C39C4(v4, v54, &v60);

  LOBYTE(v60) = 1;
  v51 = v9;
  v53 = sub_26F3C39C4(v52, v10, &v60);

  v55 = *(v17 + 2);
  if (v55)
  {
    v18 = *MEMORY[0x277D77208];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DED40, &qword_26F4A2F38);
    v19 = 0;
    v20 = (v17 + 40);
    while (1)
    {
      v21 = *(v20 - 1);
      v22 = *v20;
      v60 = 0x414E4F4954434944;
      *&v61[0] = 0xEB000000002D5952;
      v63 = v19;
      v23 = sub_26F4A0428();
      MEMORY[0x2743907E0](v23);

      v62[0] = v18;
      v62[1] = v60;
      v62[4] = MEMORY[0x277D837D0];
      v62[2] = *&v61[0];
      v24 = sub_26F4A0288();
      v25 = v18;
      sub_26F3B8DD4(v62, &v60, &qword_2806DF000, &qword_26F4A2F40);
      v26 = v60;
      v27 = sub_26F45FE00(v60);
      if (v28)
      {
        break;
      }

      v24[(v27 >> 6) + 8] |= 1 << v27;
      *(v24[6] + 8 * v27) = v26;
      sub_26F3BE15C(v61, (v24[7] + 32 * v27));
      v29 = v24[2];
      v30 = __OFADD__(v29, 1);
      v31 = v29 + 1;
      if (v30)
      {
        goto LABEL_29;
      }

      ++v19;
      v20 += 2;
      v24[2] = v31;
      sub_26F3B6B4C(v62, &qword_2806DF000, &qword_26F4A2F40);
      v32 = sub_26F49F7E8();

      [v58 addAttributes:v32 range:{v21, v22}];

      if (v55 == v19)
      {
        goto LABEL_22;
      }
    }

    __break(1u);
LABEL_29:
    __break(1u);
  }

  else
  {
LABEL_22:

    v56 = *(v53 + 2);
    if (!v56)
    {
LABEL_27:

      swift_getKeyPath();
      swift_getKeyPath();
      v60 = v58;
      v47 = v58;
      v48 = v51;
      sub_26F49DDB8();
      swift_getKeyPath();
      swift_getKeyPath();
      v60 = v57;
      v49 = v48;
      v50 = v57;
      sub_26F49DDB8();

      return;
    }

    v33 = *MEMORY[0x277D77208];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DED40, &qword_26F4A2F38);
    v34 = 0;
    v35 = (v53 + 40);
    while (1)
    {
      v36 = *(v35 - 1);
      v37 = *v35;
      v60 = 0x414E4F4954434944;
      *&v61[0] = 0xEB000000002D5952;
      v63 = v34;
      v38 = sub_26F4A0428();
      MEMORY[0x2743907E0](v38);

      v59[0] = v33;
      v59[1] = v60;
      v59[4] = MEMORY[0x277D837D0];
      v59[2] = *&v61[0];
      v39 = sub_26F4A0288();
      v40 = v33;
      sub_26F3B8DD4(v59, &v60, &qword_2806DF000, &qword_26F4A2F40);
      v41 = v60;
      v42 = sub_26F45FE00(v60);
      if (v43)
      {
        break;
      }

      v39[(v42 >> 6) + 8] |= 1 << v42;
      *(v39[6] + 8 * v42) = v41;
      sub_26F3BE15C(v61, (v39[7] + 32 * v42));
      v44 = v39[2];
      v30 = __OFADD__(v44, 1);
      v45 = v44 + 1;
      if (v30)
      {
        goto LABEL_31;
      }

      ++v34;
      v35 += 2;
      v39[2] = v45;
      sub_26F3B6B4C(v59, &qword_2806DF000, &qword_26F4A2F40);
      v46 = sub_26F49F7E8();

      [v57 addAttributes:v46 range:{v36, v37}];

      if (v56 == v34)
      {
        goto LABEL_27;
      }
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
}

char *sub_26F3C39C4(uint64_t a1, uint64_t a2, unsigned __int8 *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DEFD8, &qword_26F4A3670);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5 - 8);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v32 - v10;
  v12 = *a3;
  v13 = sub_26F49DAB8();
  v14 = *(v13 - 8);
  v15 = &OBJC_IVAR____TtC13TranslationUI25DisambiguationResultModel_targetLocale;
  if (!v12)
  {
    v15 = &OBJC_IVAR____TtC13TranslationUI25DisambiguationResultModel_sourceLocale;
  }

  (*(*(v13 - 8) + 16))(v11, v3 + *v15, v13);
  sub_26F49DAB8();
  (*(v14 + 56))(v11, 0, 1, v13);
  v16 = sub_26F49F898();
  sub_26F3B8DD4(v11, v9, &qword_2806DEFD8, &qword_26F4A3670);
  v17 = 0;
  if ((*(v14 + 48))(v9, 1, v13) != 1)
  {
    v17 = sub_26F49D9F8();
    (*(v14 + 8))(v9, v13);
  }

  v18 = [v16 lt:v17 wordRangesWithLocale:?];

  sub_26F3B0C24(0, &unk_2806DEFE0, 0x277CCAE60);
  v19 = sub_26F49FAF8();

  if (!(v19 >> 62))
  {
    v20 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v20)
    {
      goto LABEL_7;
    }

LABEL_17:

    sub_26F3B6B4C(v11, &qword_2806DEFD8, &qword_26F4A3670);
    return MEMORY[0x277D84F90];
  }

  v20 = sub_26F4A00A8();
  if (!v20)
  {
    goto LABEL_17;
  }

LABEL_7:
  v33 = MEMORY[0x277D84F90];
  result = sub_26F40331C(0, v20 & ~(v20 >> 63), 0);
  if ((v20 & 0x8000000000000000) == 0)
  {
    v32 = v11;
    v22 = 0;
    v23 = v33;
    do
    {
      if ((v19 & 0xC000000000000001) != 0)
      {
        v24 = MEMORY[0x274390F80](v22, v19);
      }

      else
      {
        v24 = *(v19 + 8 * v22 + 32);
      }

      v25 = v24;
      v26 = [v24 rangeValue];
      v28 = v27;

      v33 = v23;
      v30 = *(v23 + 16);
      v29 = *(v23 + 24);
      if (v30 >= v29 >> 1)
      {
        sub_26F40331C((v29 > 1), v30 + 1, 1);
        v23 = v33;
      }

      ++v22;
      *(v23 + 16) = v30 + 1;
      v31 = v23 + 16 * v30;
      *(v31 + 32) = v26;
      *(v31 + 40) = v28;
    }

    while (v20 != v22);
    sub_26F3B6B4C(v32, &qword_2806DEFD8, &qword_26F4A3670);

    return v23;
  }

  __break(1u);
  return result;
}

uint64_t sub_26F3C3D34(unsigned __int8 *a1)
{
  v2 = *a1;
  v3 = (v1 + OBJC_IVAR____TtC13TranslationUI25DisambiguationResultModel_displaySource);
  if (*(v1 + OBJC_IVAR____TtC13TranslationUI25DisambiguationResultModel_displaySource + 8))
  {
    if (v2)
    {
      v5 = v3[2];
      v4 = v3[3];
    }

    else
    {
      v5 = *v3;
    }
  }

  else
  {
    v6 = *(v1 + OBJC_IVAR____TtC13TranslationUI25DisambiguationResultModel_disambiguableResult);
    if (v6)
    {
      v7 = v6;
      v8 = v7;
      v9 = &selRef_targetText;
      if (!v2)
      {
        v9 = &selRef_sourceText;
      }

      v10 = [v7 *v9];
      v5 = sub_26F49F8C8();
    }

    else
    {
      return 0;
    }
  }

  return v5;
}

unint64_t sub_26F3C3DF8(char *a1, char *a2)
{
  v3 = v2;
  v6 = sub_26F49DA98();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v25[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0) - 1];
  v11 = *a1;
  v12 = &OBJC_IVAR____TtC13TranslationUI25DisambiguationResultModel_targetLocale;
  v13 = *a2;
  if (!*a1)
  {
    v12 = &OBJC_IVAR____TtC13TranslationUI25DisambiguationResultModel_sourceLocale;
  }

  v14 = v3 + *v12;
  sub_26F49DAA8();
  v15 = sub_26F49DA78();
  (*(v7 + 8))(v10, v6);
  v16 = _s13TranslationUI25DisambiguationResultModelC17defaultAttributes6forRTLSDySo21NSAttributedStringKeyaypGSgSb_tFZ_0(v15 == 2);
  if (!v16)
  {
    v16 = sub_26F3BDF38(MEMORY[0x277D84F90]);
  }

  v17 = v16;
  v18 = *(v3 + OBJC_IVAR____TtC13TranslationUI25DisambiguationResultModel_globalAttributeProvider);
  if (v18 && (v19 = *(v3 + OBJC_IVAR____TtC13TranslationUI25DisambiguationResultModel_globalAttributeProvider + 8), LOBYTE(v26) = v11, v25[0] = v13, (v20 = v18(&v26, v25)) != 0))
  {
    v21 = v20;
  }

  else
  {
    v21 = sub_26F3BDF38(MEMORY[0x277D84F90]);
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v26 = v17;
  sub_26F3C80E0(v21, sub_26F3C7D6C, 0, isUniquelyReferenced_nonNull_native, &v26);

  return v26;
}

id DisambiguationResultModel.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id DisambiguationResultModel.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DisambiguationResultModel(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_26F3C4218@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for DisambiguationResultModel(0);
  result = sub_26F49DD48();
  *a1 = result;
  return result;
}

void DisambiguationResultModel.disambiguableResult(_:didChangeResultFor:with:)(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = OBJC_IVAR____TtC13TranslationUI25DisambiguationResultModel_renderMode;
  swift_beginAccess();
  if (*(v3 + v6))
  {
    sub_26F3C3338();
    if (!a3)
    {
      return;
    }
  }

  else
  {
    sub_26F3C2694();
    if (!a3)
    {
      return;
    }
  }

  v7 = *(v3 + OBJC_IVAR____TtC13TranslationUI25DisambiguationResultModel_userSelectionHandler);
  if (v7)
  {
    v8 = *(v3 + OBJC_IVAR____TtC13TranslationUI25DisambiguationResultModel_userSelectionHandler + 8);
    v9 = a3;
    v7(a2, v9);
  }
}

void DisambiguationResultModel.disambiguableResultDidUpdate(_:)()
{
  v1 = OBJC_IVAR____TtC13TranslationUI25DisambiguationResultModel_renderMode;
  swift_beginAccess();
  if (*(v0 + v1))
  {
    sub_26F3C3338();
  }

  else
  {
    sub_26F3C2694();
  }
}

uint64_t DisambiguationLinkInfo.sentenceUUID.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_26F49D968();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t DisambiguationLinkInfo.sentenceUUID.setter(uint64_t a1)
{
  v3 = sub_26F49D968();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t DisambiguationLinkInfo.linkIndex.setter(uint64_t a1)
{
  result = type metadata accessor for DisambiguationLinkInfo(0);
  *(v1 + *(result + 20)) = a1;
  return result;
}

uint64_t DisambiguationLinkInfo.description.getter()
{
  sub_26F4A0178();
  MEMORY[0x2743907E0](0xD000000000000026, 0x800000026F4ACD60);
  sub_26F49D968();
  sub_26F3C8568(&qword_2806DEE50, MEMORY[0x277CC95F0]);
  v1 = sub_26F4A0428();
  MEMORY[0x2743907E0](v1);

  MEMORY[0x2743907E0](0x6E496B6E696C203BLL, 0xEC0000003D786564);
  v4 = *(v0 + *(type metadata accessor for DisambiguationLinkInfo(0) + 20));
  v2 = sub_26F4A0428();
  MEMORY[0x2743907E0](v2);

  MEMORY[0x2743907E0](62, 0xE100000000000000);
  return 0;
}

uint64_t sub_26F3C482C()
{
  if (*v0)
  {
    result = 0x65646E496B6E696CLL;
  }

  else
  {
    result = 0x65636E65746E6573;
  }

  *v0;
  return result;
}

uint64_t sub_26F3C4874@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x65636E65746E6573 && a2 == 0xEC00000044495555;
  if (v6 || (sub_26F4A0458() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x65646E496B6E696CLL && a2 == 0xE900000000000078)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_26F4A0458();

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

uint64_t sub_26F3C4974(uint64_t a1)
{
  v2 = sub_26F3C8514();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26F3C49B0(uint64_t a1)
{
  v2 = sub_26F3C8514();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t DisambiguationLinkInfo.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DEE58, &qword_26F4A3200);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v13[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26F3C8514();
  sub_26F4A0598();
  v13[15] = 0;
  sub_26F49D968();
  sub_26F3C8568(&qword_2806DEE68, MEMORY[0x277CC95F0]);
  sub_26F4A03F8();
  if (!v2)
  {
    v11 = *(v3 + *(type metadata accessor for DisambiguationLinkInfo(0) + 20));
    v13[14] = 1;
    sub_26F4A03E8();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t DisambiguationLinkInfo.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v4 = sub_26F49D968();
  v26 = *(v4 - 8);
  v27 = v4;
  v5 = *(v26 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DEE70, &qword_26F4A3208);
  v25 = *(v28 - 8);
  v8 = *(v25 + 64);
  MEMORY[0x28223BE20](v28);
  v10 = &v23 - v9;
  v11 = type metadata accessor for DisambiguationLinkInfo(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26F3C8514();
  sub_26F4A0588();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v23 = v14;
  v16 = v25;
  v17 = v26;
  v30 = 0;
  sub_26F3C8568(&qword_2806DEE78, MEMORY[0x277CC95F0]);
  v18 = v27;
  sub_26F4A0348();
  (*(v17 + 32))(v23, v7, v18);
  v29 = 1;
  v19 = sub_26F4A0338();
  (*(v16 + 8))(v10, v28);
  v21 = v23;
  v20 = v24;
  *&v23[*(v11 + 20)] = v19;
  sub_26F3C8E80(v21, v20, type metadata accessor for DisambiguationLinkInfo);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return sub_26F3C8084(v21);
}

uint64_t sub_26F3C4F14(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DED58, &qword_26F4A2F50);
  v39 = a2;
  result = sub_26F4A0278();
  v8 = result;
  if (*(v5 + 16))
  {
    v37 = v3;
    v38 = v5;
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
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v5 + 56) + 8 * v21);
      if ((v39 & 1) == 0)
      {
        v26 = v22[1];

        v27 = v25;
      }

      v28 = *(v8 + 40);
      sub_26F4A0528();
      sub_26F49F9A8();
      result = sub_26F4A0568();
      v29 = -1 << *(v8 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v15 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v15 + 8 * v31);
          if (v35 != -1)
          {
            v16 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v30) & ~*(v15 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v5 = v38;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_35;
    }

    v36 = 1 << *(v5 + 32);
    v3 = v37;
    if (v36 >= 64)
    {
      bzero(v10, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v36;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_26F3C51B8(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DED40, &qword_26F4A2F38);
  v37 = a2;
  result = sub_26F4A0278();
  v8 = result;
  if (*(v5 + 16))
  {
    v35 = v3;
    v36 = v5;
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
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(v5 + 56);
      v22 = *(*(v5 + 48) + 8 * v20);
      v23 = (v21 + 32 * v20);
      if (v37)
      {
        sub_26F3BE15C(v23, v38);
      }

      else
      {
        sub_26F3B2DBC(v23, v38);
        v24 = v22;
      }

      v25 = *(v8 + 40);
      sub_26F49F8C8();
      sub_26F4A0528();
      sub_26F49F9A8();
      v26 = sub_26F4A0568();

      v27 = -1 << *(v8 + 32);
      v28 = v26 & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v15 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v15 + 8 * v29);
          if (v33 != -1)
          {
            v16 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v22;
      result = sub_26F3BE15C(v38, (*(v8 + 56) + 32 * v16));
      ++*(v8 + 16);
      v5 = v36;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    if ((v37 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_36;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero(v10, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v8;
  return result;
}

uint64_t sub_26F3C5488(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DEFD0, &qword_26F4A3668);
  v38 = a2;
  result = sub_26F4A0278();
  v8 = result;
  if (*(v5 + 16))
  {
    v36 = v3;
    v37 = v5;
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
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v5 + 56) + 8 * v21);
      if ((v38 & 1) == 0)
      {
        v26 = v22[1];
      }

      v27 = *(v8 + 40);
      sub_26F4A0528();
      sub_26F49F9A8();
      result = sub_26F4A0568();
      v28 = -1 << *(v8 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v15 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v15 + 8 * v30);
          if (v34 != -1)
          {
            v16 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v29) & ~*(v15 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v5 = v37;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_35;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v10, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_26F3C5730(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DED90, &qword_26F4AA100);
  v36 = a2;
  result = sub_26F4A0278();
  v8 = result;
  if (*(v5 + 16))
  {
    v35 = v3;
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
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = (*(v5 + 56) + 32 * v21);
      if (v36)
      {
        sub_26F3BE15C(v25, v37);
      }

      else
      {
        sub_26F3B2DBC(v25, v37);
      }

      v26 = *(v8 + 40);
      sub_26F4A0528();
      sub_26F49F9A8();
      result = sub_26F4A0568();
      v27 = -1 << *(v8 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v15 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v15 + 8 * v29);
          if (v33 != -1)
          {
            v16 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      result = sub_26F3BE15C(v37, (*(v8 + 56) + 32 * v16));
      ++*(v8 + 16);
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_36;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero((v5 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v8;
  return result;
}

uint64_t sub_26F3C59E8(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DED80, &qword_26F4A3660);
  v47 = *(v6 - 8);
  v7 = *(v47 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v52 = &v43 - v8;
  v9 = sub_26F49D968();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v51 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v14 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806DEFC0, &unk_26F4A2F80);
  v48 = a2;
  result = sub_26F4A0278();
  v16 = result;
  if (*(v13 + 16))
  {
    v43 = v3;
    v17 = 0;
    v18 = (v13 + 64);
    v19 = 1 << *(v13 + 32);
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    else
    {
      v20 = -1;
    }

    v21 = v20 & *(v13 + 64);
    v22 = (v19 + 63) >> 6;
    v44 = (v10 + 16);
    v45 = v10;
    v49 = (v10 + 32);
    v23 = result + 64;
    v46 = v13;
    while (v21)
    {
      v25 = __clz(__rbit64(v21));
      v21 &= v21 - 1;
LABEL_17:
      v28 = v25 | (v17 << 6);
      v29 = *(v13 + 48);
      v50 = *(v10 + 72);
      v30 = v29 + v50 * v28;
      if (v48)
      {
        (*v49)(v51, v30, v9);
        v31 = *(v13 + 56);
        v32 = *(v47 + 72);
        sub_26F3BEFCC(v31 + v32 * v28, v52);
      }

      else
      {
        (*v44)(v51, v30, v9);
        v33 = *(v13 + 56);
        v32 = *(v47 + 72);
        sub_26F3B8DD4(v33 + v32 * v28, v52, &qword_2806DED80, &qword_26F4A3660);
      }

      v34 = *(v16 + 40);
      sub_26F3C8568(&qword_280F663A8, MEMORY[0x277CC95F0]);
      result = sub_26F49F818();
      v35 = -1 << *(v16 + 32);
      v36 = result & ~v35;
      v37 = v36 >> 6;
      if (((-1 << v36) & ~*(v23 + 8 * (v36 >> 6))) == 0)
      {
        v38 = 0;
        v39 = (63 - v35) >> 6;
        while (++v37 != v39 || (v38 & 1) == 0)
        {
          v40 = v37 == v39;
          if (v37 == v39)
          {
            v37 = 0;
          }

          v38 |= v40;
          v41 = *(v23 + 8 * v37);
          if (v41 != -1)
          {
            v24 = __clz(__rbit64(~v41)) + (v37 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v24 = __clz(__rbit64((-1 << v36) & ~*(v23 + 8 * (v36 >> 6)))) | v36 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v23 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
      (*v49)((*(v16 + 48) + v50 * v24), v51, v9);
      result = sub_26F3BEFCC(v52, *(v16 + 56) + v32 * v24);
      ++*(v16 + 16);
      v10 = v45;
      v13 = v46;
    }

    v26 = v17;
    while (1)
    {
      v17 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v17 >= v22)
      {
        break;
      }

      v27 = v18[v17];
      ++v26;
      if (v27)
      {
        v25 = __clz(__rbit64(v27));
        v21 = (v27 - 1) & v27;
        goto LABEL_17;
      }
    }

    if ((v48 & 1) == 0)
    {

      v3 = v43;
      goto LABEL_36;
    }

    v42 = 1 << *(v13 + 32);
    v3 = v43;
    if (v42 >= 64)
    {
      bzero(v18, ((v42 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v18 = -1 << v42;
    }

    *(v13 + 16) = 0;
  }

LABEL_36:
  *v3 = v16;
  return result;
}

uint64_t sub_26F3C5E64(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = sub_26F49D968();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v59 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for TextModel();
  v52 = *(v10 - 8);
  v11 = *(v52 + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v15 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DED70, &qword_26F4A2F70);
  v54 = a2;
  result = sub_26F4A0278();
  v17 = result;
  if (*(v14 + 16))
  {
    v57 = v13;
    v49 = v3;
    v18 = 0;
    v53 = v14;
    v21 = *(v14 + 64);
    v20 = (v14 + 64);
    v19 = v21;
    v22 = 1 << *(v20 - 32);
    if (v22 < 64)
    {
      v23 = ~(-1 << v22);
    }

    else
    {
      v23 = -1;
    }

    v24 = v23 & v19;
    v25 = (v22 + 63) >> 6;
    v50 = v7 + 16;
    v51 = v7;
    v55 = (v7 + 32);
    v26 = result + 64;
    v58 = v6;
    while (v24)
    {
      v28 = __clz(__rbit64(v24));
      v24 &= v24 - 1;
LABEL_17:
      v31 = v28 | (v18 << 6);
      v32 = v53;
      v33 = *(v53 + 48);
      v56 = *(v52 + 72);
      v34 = v33 + v56 * v31;
      if (v54)
      {
        sub_26F3C8EE8(v34, v57, type metadata accessor for TextModel);
        v35 = *(v32 + 56);
        v36 = *(v7 + 72);
        (*(v7 + 32))(v59, v35 + v36 * v31, v58);
      }

      else
      {
        sub_26F3C8E80(v34, v57, type metadata accessor for TextModel);
        v37 = *(v32 + 56);
        v36 = *(v7 + 72);
        (*(v7 + 16))(v59, v37 + v36 * v31, v58);
      }

      v38 = *(v17 + 40);
      sub_26F4A0528();
      sub_26F3C8568(&qword_280F663A8, MEMORY[0x277CC95F0]);
      sub_26F49F828();
      result = sub_26F4A0568();
      v39 = -1 << *(v17 + 32);
      v40 = result & ~v39;
      v41 = v40 >> 6;
      if (((-1 << v40) & ~*(v26 + 8 * (v40 >> 6))) == 0)
      {
        v42 = 0;
        v43 = (63 - v39) >> 6;
        v7 = v51;
        while (++v41 != v43 || (v42 & 1) == 0)
        {
          v44 = v41 == v43;
          if (v41 == v43)
          {
            v41 = 0;
          }

          v42 |= v44;
          v45 = *(v26 + 8 * v41);
          if (v45 != -1)
          {
            v27 = __clz(__rbit64(~v45)) + (v41 << 6);
            goto LABEL_9;
          }
        }

LABEL_39:
        __break(1u);
        return result;
      }

      v27 = __clz(__rbit64((-1 << v40) & ~*(v26 + 8 * (v40 >> 6)))) | v40 & 0x7FFFFFFFFFFFFFC0;
      v7 = v51;
LABEL_9:
      *(v26 + ((v27 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v27;
      sub_26F3C8EE8(v57, *(v17 + 48) + v56 * v27, type metadata accessor for TextModel);
      result = (*v55)(*(v17 + 56) + v36 * v27, v59, v58);
      ++*(v17 + 16);
    }

    v29 = v18;
    while (1)
    {
      v18 = v29 + 1;
      if (__OFADD__(v29, 1))
      {
        __break(1u);
        goto LABEL_39;
      }

      if (v18 >= v25)
      {
        break;
      }

      v30 = v20[v18];
      ++v29;
      if (v30)
      {
        v28 = __clz(__rbit64(v30));
        v24 = (v30 - 1) & v30;
        goto LABEL_17;
      }
    }

    if ((v54 & 1) == 0)
    {

      v3 = v49;
      goto LABEL_37;
    }

    v46 = v53;
    v47 = 1 << *(v53 + 32);
    v3 = v49;
    if (v47 >= 64)
    {
      bzero(v20, ((v47 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v20 = -1 << v47;
    }

    *(v46 + 16) = 0;
  }

LABEL_37:
  *v3 = v17;
  return result;
}

uint64_t sub_26F3C6314(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = type metadata accessor for VisualTranslationModel(0);
  v47 = *(v6 - 8);
  v7 = *(v47 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v52 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_26F49D968();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v51 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v14 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806DEFA0, &qword_26F4A2F60);
  v48 = a2;
  result = sub_26F4A0278();
  v16 = result;
  if (*(v13 + 16))
  {
    v43 = v3;
    v17 = 0;
    v18 = (v13 + 64);
    v19 = 1 << *(v13 + 32);
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    else
    {
      v20 = -1;
    }

    v21 = v20 & *(v13 + 64);
    v22 = (v19 + 63) >> 6;
    v44 = (v10 + 16);
    v45 = v10;
    v49 = (v10 + 32);
    v23 = result + 64;
    v46 = v13;
    while (v21)
    {
      v25 = __clz(__rbit64(v21));
      v21 &= v21 - 1;
LABEL_17:
      v28 = v25 | (v17 << 6);
      v29 = *(v13 + 48);
      v50 = *(v10 + 72);
      v30 = v29 + v50 * v28;
      if (v48)
      {
        (*v49)(v51, v30, v9);
        v31 = *(v13 + 56);
        v32 = *(v47 + 72);
        sub_26F3C8EE8(v31 + v32 * v28, v52, type metadata accessor for VisualTranslationModel);
      }

      else
      {
        (*v44)(v51, v30, v9);
        v33 = *(v13 + 56);
        v32 = *(v47 + 72);
        sub_26F3C8E80(v33 + v32 * v28, v52, type metadata accessor for VisualTranslationModel);
      }

      v34 = *(v16 + 40);
      sub_26F3C8568(&qword_280F663A8, MEMORY[0x277CC95F0]);
      result = sub_26F49F818();
      v35 = -1 << *(v16 + 32);
      v36 = result & ~v35;
      v37 = v36 >> 6;
      if (((-1 << v36) & ~*(v23 + 8 * (v36 >> 6))) == 0)
      {
        v38 = 0;
        v39 = (63 - v35) >> 6;
        while (++v37 != v39 || (v38 & 1) == 0)
        {
          v40 = v37 == v39;
          if (v37 == v39)
          {
            v37 = 0;
          }

          v38 |= v40;
          v41 = *(v23 + 8 * v37);
          if (v41 != -1)
          {
            v24 = __clz(__rbit64(~v41)) + (v37 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v24 = __clz(__rbit64((-1 << v36) & ~*(v23 + 8 * (v36 >> 6)))) | v36 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v23 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
      (*v49)((*(v16 + 48) + v50 * v24), v51, v9);
      result = sub_26F3C8EE8(v52, *(v16 + 56) + v32 * v24, type metadata accessor for VisualTranslationModel);
      ++*(v16 + 16);
      v10 = v45;
      v13 = v46;
    }

    v26 = v17;
    while (1)
    {
      v17 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v17 >= v22)
      {
        break;
      }

      v27 = v18[v17];
      ++v26;
      if (v27)
      {
        v25 = __clz(__rbit64(v27));
        v21 = (v27 - 1) & v27;
        goto LABEL_17;
      }
    }

    if ((v48 & 1) == 0)
    {

      v3 = v43;
      goto LABEL_36;
    }

    v42 = 1 << *(v13 + 32);
    v3 = v43;
    if (v42 >= 64)
    {
      bzero(v18, ((v42 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v18 = -1 << v42;
    }

    *(v13 + 16) = 0;
  }

LABEL_36:
  *v3 = v16;
  return result;
}

uint64_t sub_26F3C67B4(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = sub_26F49D968();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v12 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806DEFB0, &qword_26F4A3658);
  v43 = a2;
  result = sub_26F4A0278();
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
      sub_26F3C8568(&qword_280F663A8, MEMORY[0x277CC95F0]);
      result = sub_26F49F818();
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

id sub_26F3C6B90()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DED58, &qword_26F4A2F50);
  v2 = *v0;
  v3 = sub_26F4A0268();
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
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;

        result = v20;
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

id sub_26F3C6CFC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DED40, &qword_26F4A2F38);
  v2 = *v0;
  v3 = sub_26F4A0268();
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
        v18 = *(*(v2 + 48) + 8 * v17);
        sub_26F3B2DBC(*(v2 + 56) + 32 * v17, v19);
        *(*(v4 + 48) + 8 * v17) = v18;
        sub_26F3BE15C(v19, (*(v4 + 56) + 32 * v17));
        result = v18;
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

void *sub_26F3C6E7C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DEFD0, &qword_26F4A3668);
  v2 = *v0;
  v3 = sub_26F4A0268();
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
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;
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

void *sub_26F3C6FEC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DED90, &qword_26F4AA100);
  v2 = *v0;
  v3 = sub_26F4A0268();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
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
        v22 = 32 * v17;
        sub_26F3B2DBC(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_26F3BE15C(v25, (*(v4 + 56) + v22));
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

        v1 = v24;
        goto LABEL_21;
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

LABEL_21:
    *v1 = v4;
  }

  return result;
}

char *sub_26F3C7190()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DED80, &qword_26F4A3660);
  v38 = *(v2 - 8);
  v3 = *(v38 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v37 = &v30 - v4;
  v36 = sub_26F49D968();
  v39 = *(v36 - 8);
  v5 = *(v39 + 64);
  MEMORY[0x28223BE20](v36);
  v35 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806DEFC0, &unk_26F4A2F80);
  v7 = *v0;
  v8 = sub_26F4A0268();
  v9 = v8;
  if (*(v7 + 16))
  {
    result = (v8 + 64);
    v11 = (v7 + 64);
    v12 = ((1 << *(v9 + 32)) + 63) >> 6;
    v31 = v1;
    v32 = v7 + 64;
    if (v9 != v7 || result >= &v11[8 * v12])
    {
      result = memmove(result, v11, 8 * v12);
    }

    v13 = 0;
    v14 = *(v7 + 16);
    v40 = v9;
    *(v9 + 16) = v14;
    v15 = 1 << *(v7 + 32);
    v16 = -1;
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    v17 = v16 & *(v7 + 64);
    v18 = (v15 + 63) >> 6;
    v33 = v39 + 32;
    v34 = v39 + 16;
    v19 = v35;
    if (v17)
    {
      do
      {
        v20 = __clz(__rbit64(v17));
        v41 = (v17 - 1) & v17;
LABEL_14:
        v23 = v20 | (v13 << 6);
        v24 = v39;
        v25 = *(v39 + 72) * v23;
        v26 = v36;
        (*(v39 + 16))(v19, *(v7 + 48) + v25, v36);
        v27 = v37;
        v28 = *(v38 + 72) * v23;
        sub_26F3B8DD4(*(v7 + 56) + v28, v37, &qword_2806DED80, &qword_26F4A3660);
        v29 = v40;
        (*(v24 + 32))(*(v40 + 48) + v25, v19, v26);
        result = sub_26F3BEFCC(v27, *(v29 + 56) + v28);
        v17 = v41;
      }

      while (v41);
    }

    v21 = v13;
    v9 = v40;
    while (1)
    {
      v13 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v13 >= v18)
      {

        v1 = v31;
        goto LABEL_18;
      }

      v22 = *(v32 + 8 * v13);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v41 = (v22 - 1) & v22;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v9;
  }

  return result;
}

char *sub_26F3C74AC()
{
  v1 = v0;
  v40 = sub_26F49D968();
  v42 = *(v40 - 8);
  v2 = *(v42 + 64);
  MEMORY[0x28223BE20](v40);
  v39 = &v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for TextModel();
  v38 = *(v4 - 8);
  v5 = *(v38 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v37 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DED70, &qword_26F4A2F70);
  v7 = *v0;
  v8 = sub_26F4A0268();
  v9 = v8;
  if (*(v7 + 16))
  {
    result = (v8 + 64);
    v11 = (v7 + 64);
    v12 = ((1 << *(v9 + 32)) + 63) >> 6;
    v32 = v1;
    v33 = v7 + 64;
    if (v9 != v7 || result >= &v11[8 * v12])
    {
      result = memmove(result, v11, 8 * v12);
    }

    v13 = 0;
    v14 = *(v7 + 16);
    v41 = v9;
    *(v9 + 16) = v14;
    v15 = 1 << *(v7 + 32);
    v16 = -1;
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    v17 = v16 & *(v7 + 64);
    v18 = (v15 + 63) >> 6;
    v34 = v42 + 32;
    v35 = v42 + 16;
    v36 = v7;
    v19 = v39;
    v20 = v9;
    if (v17)
    {
      do
      {
        v21 = __clz(__rbit64(v17));
        v43 = (v17 - 1) & v17;
LABEL_14:
        v24 = v21 | (v13 << 6);
        v25 = v37;
        v26 = *(v38 + 72) * v24;
        sub_26F3C8E80(*(v7 + 48) + v26, v37, type metadata accessor for TextModel);
        v27 = v42;
        v28 = *(v42 + 72) * v24;
        v29 = *(v7 + 56) + v28;
        v30 = v40;
        (*(v42 + 16))(v19, v29, v40);
        sub_26F3C8EE8(v25, *(v20 + 48) + v26, type metadata accessor for TextModel);
        v31 = v30;
        v7 = v36;
        result = (*(v27 + 32))(*(v20 + 56) + v28, v19, v31);
        v17 = v43;
      }

      while (v43);
    }

    v22 = v13;
    while (1)
    {
      v13 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      if (v13 >= v18)
      {

        v1 = v32;
        v9 = v41;
        goto LABEL_18;
      }

      v23 = *(v33 + 8 * v13);
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v43 = (v23 - 1) & v23;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v9;
  }

  return result;
}

char *sub_26F3C77D4()
{
  v1 = v0;
  v2 = type metadata accessor for VisualTranslationModel(0);
  v40 = *(v2 - 8);
  v3 = *(v40 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v39 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = sub_26F49D968();
  v42 = *(v38 - 8);
  v5 = *(v42 + 64);
  MEMORY[0x28223BE20](v38);
  v37 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806DEFA0, &qword_26F4A2F60);
  v7 = *v0;
  v8 = sub_26F4A0268();
  v9 = v8;
  if (*(v7 + 16))
  {
    result = (v8 + 64);
    v11 = (v7 + 64);
    v12 = ((1 << *(v9 + 32)) + 63) >> 6;
    v32 = v1;
    v33 = v7 + 64;
    if (v9 != v7 || result >= &v11[8 * v12])
    {
      result = memmove(result, v11, 8 * v12);
    }

    v13 = 0;
    v14 = *(v7 + 16);
    v41 = v9;
    *(v9 + 16) = v14;
    v15 = 1 << *(v7 + 32);
    v16 = -1;
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    v17 = v16 & *(v7 + 64);
    v18 = (v15 + 63) >> 6;
    v34 = v42 + 32;
    v35 = v42 + 16;
    v36 = v7;
    v19 = v42;
    v20 = v9;
    if (v17)
    {
      do
      {
        v21 = __clz(__rbit64(v17));
        v43 = (v17 - 1) & v17;
LABEL_14:
        v24 = v21 | (v13 << 6);
        v25 = *(v19 + 72) * v24;
        v27 = v37;
        v26 = v38;
        (*(v19 + 16))(v37, *(v7 + 48) + v25, v38);
        v28 = *(v7 + 56);
        v29 = v39;
        v30 = *(v40 + 72) * v24;
        sub_26F3C8E80(v28 + v30, v39, type metadata accessor for VisualTranslationModel);
        (*(v19 + 32))(*(v20 + 48) + v25, v27, v26);
        v31 = v29;
        v7 = v36;
        result = sub_26F3C8EE8(v31, *(v20 + 56) + v30, type metadata accessor for VisualTranslationModel);
        v17 = v43;
      }

      while (v43);
    }

    v22 = v13;
    while (1)
    {
      v13 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      if (v13 >= v18)
      {

        v1 = v32;
        v9 = v41;
        goto LABEL_18;
      }

      v23 = *(v33 + 8 * v13);
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v43 = (v23 - 1) & v23;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v9;
  }

  return result;
}

char *sub_26F3C7AF8()
{
  v1 = v0;
  v32 = sub_26F49D968();
  v34 = *(v32 - 8);
  v2 = *(v34 + 64);
  MEMORY[0x28223BE20](v32);
  v31 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806DEFB0, &qword_26F4A3658);
  v4 = *v0;
  v5 = sub_26F4A0268();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = (v4 + 64);
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    v27 = v1;
    v28 = v4 + 64;
    if (v6 != v4 || result >= &v8[8 * v9])
    {
      result = memmove(result, v8, 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v33 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    v29 = v34 + 32;
    v30 = v34 + 16;
    if (v14)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v35 = (v14 - 1) & v14;
LABEL_14:
        v19 = v16 | (v10 << 6);
        v20 = v34;
        v21 = *(v34 + 72) * v19;
        v23 = v31;
        v22 = v32;
        (*(v34 + 16))(v31, *(v4 + 48) + v21, v32);
        v24 = *(*(v4 + 56) + 8 * v19);
        v25 = v33;
        (*(v20 + 32))(*(v33 + 48) + v21, v23, v22);
        *(*(v25 + 56) + 8 * v19) = v24;
        result = v24;
        v14 = v35;
      }

      while (v35);
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

        v1 = v27;
        v6 = v33;
        goto LABEL_18;
      }

      v18 = *(v28 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v35 = (v18 - 1) & v18;
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

id sub_26F3C7D6C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  sub_26F3B2DBC((a1 + 1), (a2 + 1));
  *a2 = v4;

  return v4;
}

id sub_26F3C7DBC@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v6 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  if (v7)
  {
    v8 = v1[3];
LABEL_10:
    v12 = (v7 - 1) & v7;
    v13 = __clz(__rbit64(v7)) | (v8 << 6);
    v14 = *(*(v3 + 48) + 8 * v13);
    sub_26F3B2DBC(*(v3 + 56) + 32 * v13, &v19);
    *&v22[0] = v14;
    sub_26F3BE15C(&v19, (v22 + 8));
    result = v14;
    v16 = *&v22[0];
    v11 = v8;
LABEL_11:
    *v1 = v3;
    v1[1] = v4;
    v1[2] = v6;
    v1[3] = v11;
    v1[4] = v12;
    if (v16)
    {
      v18 = v1[5];
      v17 = v1[6];
      v19 = v16;
      v20 = *(v22 + 8);
      v21 = *(&v22[1] + 8);
      v18(&v19);
      return sub_26F3B6B4C(&v19, &unk_2806DEF80, &unk_26F4A3640);
    }

    else
    {
      *(a1 + 32) = 0;
      *a1 = 0u;
      *(a1 + 16) = 0u;
    }
  }

  else
  {
    v9 = (v6 + 64) >> 6;
    if (v9 <= v5 + 1)
    {
      v10 = v5 + 1;
    }

    else
    {
      v10 = (v6 + 64) >> 6;
    }

    v11 = v10 - 1;
    while (1)
    {
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      if (v8 >= v9)
      {
        v16 = 0;
        v12 = 0;
        memset(v22, 0, 40);
        goto LABEL_11;
      }

      v7 = *(v4 + 8 * v8);
      ++v5;
      if (v7)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  return result;
}

unint64_t _s13TranslationUI25DisambiguationResultModelC17defaultAttributes6forRTLSDySo21NSAttributedStringKeyaypGSgSb_tFZ_0(char a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x277D74240]) init];
  v3 = v2;
  if (a1)
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  [v2 setAlignment_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DEFF0, &qword_26F4A3678);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26F4A3150;
  v6 = *MEMORY[0x277D74118];
  *(inited + 32) = *MEMORY[0x277D74118];
  *(inited + 64) = sub_26F3B0C24(0, &qword_2806DEFF8, 0x277D74240);
  *(inited + 40) = v3;
  v7 = v6;
  v8 = sub_26F3BDF38(inited);
  swift_setDeallocating();
  sub_26F3B6B4C(inited + 32, &qword_2806DF000, &qword_26F4A2F40);
  return v8;
}

uint64_t sub_26F3C804C(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26F3C8084(uint64_t a1)
{
  v2 = type metadata accessor for DisambiguationLinkInfo(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_26F3C80E0(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v7 = -1 << *(a1 + 32);
  v8 = ~v7;
  v9 = *(a1 + 64);
  v10 = -v7;
  v44 = a1;
  v45 = a1 + 64;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v46 = v8;
  v47 = 0;
  v48 = v11 & v9;
  v49 = a2;
  v50 = a3;

  sub_26F3C7DBC(&v42);
  v12 = v42;
  if (!v42)
  {
    goto LABEL_25;
  }

  sub_26F3BE15C(v43, v41);
  v13 = *a5;
  result = sub_26F45FE00(v12);
  v16 = v13[2];
  v17 = (v15 & 1) == 0;
  v18 = __OFADD__(v16, v17);
  v19 = v16 + v17;
  if (v18)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v20 = v15;
  if (v13[3] < v19)
  {
    sub_26F3C51B8(v19, a4 & 1);
    v21 = *a5;
    result = sub_26F45FE00(v12);
    if ((v20 & 1) == (v22 & 1))
    {
      goto LABEL_10;
    }

LABEL_8:
    type metadata accessor for Key(0);
    result = sub_26F4A04A8();
    __break(1u);
  }

  if ((a4 & 1) == 0)
  {
    v26 = result;
    sub_26F3C6CFC();
    result = v26;
    v23 = *a5;
    if (v20)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_10:
  v23 = *a5;
  if (v20)
  {
LABEL_11:
    v24 = result;

    v25 = (v23[7] + 32 * v24);
    __swift_destroy_boxed_opaque_existential_0(v25);
    sub_26F3BE15C(v41, v25);
    goto LABEL_15;
  }

LABEL_13:
  v23[(result >> 6) + 8] |= 1 << result;
  *(v23[6] + 8 * result) = v12;
  result = sub_26F3BE15C(v41, (v23[7] + 32 * result));
  v27 = v23[2];
  v18 = __OFADD__(v27, 1);
  v28 = v27 + 1;
  if (!v18)
  {
    v23[2] = v28;
LABEL_15:
    sub_26F3C7DBC(&v42);
    v12 = v42;
    if (v42)
    {
      v20 = 1;
      do
      {
        sub_26F3BE15C(v43, v41);
        v31 = *a5;
        result = sub_26F45FE00(v12);
        v33 = v31[2];
        v34 = (v32 & 1) == 0;
        v18 = __OFADD__(v33, v34);
        v35 = v33 + v34;
        if (v18)
        {
          goto LABEL_26;
        }

        a4 = v32;
        if (v31[3] < v35)
        {
          sub_26F3C51B8(v35, 1);
          v36 = *a5;
          result = sub_26F45FE00(v12);
          if ((a4 & 1) != (v37 & 1))
          {
            goto LABEL_8;
          }
        }

        v38 = *a5;
        if (a4)
        {
          v29 = result;

          v30 = (v38[7] + 32 * v29);
          __swift_destroy_boxed_opaque_existential_0(v30);
          sub_26F3BE15C(v41, v30);
        }

        else
        {
          v38[(result >> 6) + 8] |= 1 << result;
          *(v38[6] + 8 * result) = v12;
          result = sub_26F3BE15C(v41, (v38[7] + 32 * result));
          v39 = v38[2];
          v18 = __OFADD__(v39, 1);
          v40 = v39 + 1;
          if (v18)
          {
            goto LABEL_27;
          }

          v38[2] = v40;
        }

        sub_26F3C7DBC(&v42);
        v12 = v42;
      }

      while (v42);
    }

LABEL_25:
    sub_26F3C8E34();
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t _s13TranslationUI25DisambiguationResultModelC13excludedTypes3forShySo8NSNumberCGSgSo016_LTDisambiguableD0C_tF_0()
{
  v1 = OBJC_IVAR____TtC13TranslationUI25DisambiguationResultModel_excludedTypes;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = *(v2 + 16);
  v4 = MEMORY[0x277D84F90];
  if (v3)
  {
    v9 = MEMORY[0x277D84F90];

    sub_26F4A01F8();
    v5 = 32;
    do
    {
      [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedInteger_];
      sub_26F4A01D8();
      v6 = *(v9 + 16);
      sub_26F4A0208();
      sub_26F4A0218();
      sub_26F4A01E8();
      v5 += 8;
      --v3;
    }

    while (v3);

    v4 = v9;
  }

  v7 = sub_26F4040F0(v4);

  return v7;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_26F3C8514()
{
  result = qword_2806DEE60;
  if (!qword_2806DEE60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806DEE60);
  }

  return result;
}

uint64_t sub_26F3C8568(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_26F3C85B4()
{
  result = qword_2806DEE80;
  if (!qword_2806DEE80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806DEE80);
  }

  return result;
}

unint64_t sub_26F3C860C()
{
  result = qword_2806DEE88;
  if (!qword_2806DEE88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806DEE88);
  }

  return result;
}

void sub_26F3C8674()
{
  v0 = sub_26F49DAB8();
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_26F3C8A8C();
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_26F3C8A8C()
{
  if (!qword_280F65778)
  {
    sub_26F3B0C24(255, &unk_280F65670, 0x277CCA898);
    v0 = sub_26F49DDC8();
    if (!v1)
    {
      atomic_store(v0, &qword_280F65778);
    }
  }
}

uint64_t sub_26F3C8B4C()
{
  result = sub_26F49D968();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_13TranslationUI25DisambiguationResultModelC13DisplaySource33_EC64E676C7883071BB2EA3C0071FEC01LLO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_26F3C8BD8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 32))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_26F3C8C28(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

void *sub_26F3C8C80(void *result, int a2)
{
  if (a2 < 0)
  {
    result[2] = 0;
    result[3] = 0;
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

unint64_t sub_26F3C8CC8()
{
  result = qword_2806DEF50;
  if (!qword_2806DEF50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806DEF50);
  }

  return result;
}

unint64_t sub_26F3C8D20()
{
  result = qword_2806DEF58;
  if (!qword_2806DEF58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806DEF58);
  }

  return result;
}

unint64_t sub_26F3C8D78()
{
  result = qword_2806DEF60;
  if (!qword_2806DEF60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806DEF60);
  }

  return result;
}

unint64_t sub_26F3C8DCC()
{
  result = qword_2806DEF70;
  if (!qword_2806DEF70)
  {
    sub_26F3B0C24(255, &qword_2806DEF68, 0x277CCABB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806DEF70);
  }

  return result;
}

uint64_t sub_26F3C8E3C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_26F3C8E80(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_26F3C8EE8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_26F3C8F50(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v6 = *(v5 + 16);
  v7 = *(v5 + 24);
  return sub_26F3C2A6C(a1, a2, a3, a4, a5);
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_26F3C8F70(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

double sub_26F3C8FE8@<D0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  v16[0] = *v1;
  v16[1] = v3;
  v17 = *(v1 + 32);
  v4 = sub_26F49E6D8();
  v14 = 1;
  sub_26F3C91A4(v16, __src);
  memcpy(__dst, __src, sizeof(__dst));
  memcpy(v19, __src, sizeof(v19));
  sub_26F3B8DD4(__dst, v11, &qword_2806DF0E8, &qword_26F4A3858);
  sub_26F3B6B4C(v19, &qword_2806DF0E8, &qword_26F4A3858);
  memcpy(&v13[7], __dst, 0x108uLL);
  v5 = v14;
  v6 = sub_26F49EC48();
  v11[0] = 0;
  sub_26F49F5A8();
  sub_26F49E3D8();
  *&v15[55] = *&__src[48];
  *&v15[71] = *&__src[64];
  *&v15[87] = *&__src[80];
  *&v15[103] = *&__src[96];
  *&v15[7] = *__src;
  *&v15[23] = *&__src[16];
  *&v15[39] = *&__src[32];
  *a1 = v4;
  *(a1 + 8) = 0;
  *(a1 + 16) = v5;
  memcpy((a1 + 17), v13, 0x10FuLL);
  *(a1 + 288) = v6;
  *(a1 + 296) = 0x4020000000000000;
  *(a1 + 304) = xmmword_26F4A3680;
  *(a1 + 320) = 0x4020000000000000;
  *(a1 + 328) = 0;
  v7 = *&v15[80];
  *(a1 + 393) = *&v15[64];
  *(a1 + 409) = v7;
  *(a1 + 425) = *&v15[96];
  *(a1 + 440) = *&v15[111];
  v8 = *&v15[16];
  *(a1 + 329) = *v15;
  *(a1 + 345) = v8;
  result = *&v15[32];
  v10 = *&v15[48];
  *(a1 + 361) = *&v15[32];
  *(a1 + 377) = v10;
  return result;
}

uint64_t sub_26F3C91A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_26F49E808();
  LOBYTE(v23) = 1;
  sub_26F3C9624(a1, &v29);
  v61 = v32;
  v62 = v33;
  v63 = v34;
  v64 = v35;
  v58 = v29;
  v59 = v30;
  v60 = v31;
  v65[1] = v30;
  v65[0] = v29;
  v65[2] = v31;
  v65[3] = v32;
  v65[4] = v33;
  v65[5] = v34;
  v65[6] = v35;
  sub_26F3B8DD4(&v58, v46, &qword_2806DF0F0, &qword_26F4A3860);
  sub_26F3B6B4C(v65, &qword_2806DF0F0, &qword_26F4A3860);
  *&v57[55] = v61;
  *&v57[71] = v62;
  *&v57[87] = v63;
  *&v57[103] = v64;
  *&v57[7] = v58;
  *&v57[23] = v59;
  *&v57[39] = v60;
  KeyPath = swift_getKeyPath();
  v18 = sub_26F49F2B8();
  sub_26F49ECA8();
  sub_26F49ED28();
  v17 = sub_26F49ED58();

  v6 = swift_getKeyPath();
  sub_26F49F5A8();
  sub_26F49E0C8();
  if (*(a1 + 32))
  {
    v7 = 1.0;
  }

  else
  {
    v7 = 0.0;
  }

  v8 = sub_26F49F228();
  v9 = swift_getKeyPath();
  v23 = v4;
  v24[0] = 1;
  *&v24[65] = *&v57[64];
  *&v24[81] = *&v57[80];
  *&v24[97] = *&v57[96];
  *&v24[1] = *v57;
  *&v24[17] = *&v57[16];
  *&v24[33] = *&v57[32];
  *&v24[49] = *&v57[48];
  *&v24[112] = *&v57[111];
  *&v24[120] = KeyPath;
  v35 = *&v24[80];
  v36 = *&v24[96];
  v31 = *&v24[16];
  v32 = *&v24[32];
  v33 = *&v24[48];
  v34 = *&v24[64];
  v29 = v4;
  v30 = *v24;
  v37 = *&v24[112];
  *&v26 = v18;
  *(&v26 + 1) = v6;
  *v27 = v17;
  *&v27[8] = v20;
  *&v27[24] = v21;
  *&v27[40] = v22;
  *&v27[56] = v7;
  *&v28 = v9;
  *(&v28 + 1) = v8;
  *&v19[7] = v26;
  *&v19[23] = *v27;
  *&v19[87] = v28;
  *&v19[71] = *&v27[48];
  *&v19[55] = *&v27[32];
  *&v19[39] = *&v27[16];
  v10 = *v24;
  *a2 = v4;
  *(a2 + 16) = v10;
  v11 = v31;
  v12 = v32;
  v13 = v34;
  *(a2 + 64) = v33;
  *(a2 + 80) = v13;
  *(a2 + 32) = v11;
  *(a2 + 48) = v12;
  v14 = v35;
  v15 = v37;
  *(a2 + 112) = v36;
  *(a2 + 128) = v15;
  *(a2 + 96) = v14;
  *(a2 + 209) = *&v19[48];
  *(a2 + 225) = *&v19[64];
  *(a2 + 241) = *&v19[80];
  *(a2 + 161) = *v19;
  *(a2 + 177) = *&v19[16];
  v25 = 0;
  LOBYTE(v38) = 0;
  *(a2 + 144) = v38;
  *(a2 + 152) = 0;
  *(a2 + 160) = 1;
  *(a2 + 256) = *&v19[95];
  *(a2 + 193) = *&v19[32];
  v39[0] = v18;
  v39[1] = v6;
  v39[2] = v17;
  v40 = v20;
  v41 = v21;
  v42 = v22;
  v43 = v7;
  v44 = v9;
  v45 = v8;
  sub_26F3B8DD4(&v23, v46, &qword_2806DF0F8, &qword_26F4A38F8);
  sub_26F3B8DD4(&v26, v46, &qword_2806DF100, &qword_26F4A3900);
  sub_26F3B6B4C(v39, &qword_2806DF100, &qword_26F4A3900);
  v52 = *&v57[64];
  v53 = *&v57[80];
  *v54 = *&v57[96];
  v48 = *v57;
  v49 = *&v57[16];
  v50 = *&v57[32];
  v46[0] = v4;
  v46[1] = 0;
  v47 = 1;
  v51 = *&v57[48];
  *&v54[15] = *&v57[111];
  v55 = KeyPath;
  v56 = 0;
  return sub_26F3B6B4C(v46, &qword_2806DF0F8, &qword_26F4A38F8);
}

uint64_t sub_26F3C9624@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  *&v39 = *a1;
  sub_26F3BDC0C();

  v31 = sub_26F49EED8();
  v27 = v6;
  v8 = v7;
  v29 = v9;
  *&v30 = sub_26F49F278();
  KeyPath = swift_getKeyPath();
  v8 &= 1u;
  *(&v30 + 1) = swift_getKeyPath();

  v10 = sub_26F49EED8();
  v12 = v11;
  v14 = v13;
  sub_26F49F288();
  v15 = sub_26F49EE68();
  v17 = v16;
  v26 = v18;
  v20 = v19;

  sub_26F3B8D40(v10, v12, v14 & 1);

  *&v35 = v31;
  *(&v35 + 1) = v27;
  LOBYTE(v36) = v8;
  *(&v36 + 1) = *v34;
  DWORD1(v36) = *&v34[3];
  *(&v36 + 1) = v29;
  LOWORD(v37) = 256;
  *(&v37 + 2) = v32;
  WORD3(v37) = v33;
  *(&v37 + 1) = KeyPath;
  *v38 = v30;
  *&v38[16] = 0;
  v38[24] = 1;
  v21 = v35;
  v22 = v36;
  *&v42[9] = *&v38[9];
  v41 = v37;
  *v42 = v30;
  v39 = v35;
  v40 = v36;
  v23 = *&v42[16];
  *(a2 + 48) = v30;
  *(a2 + 64) = v23;
  v24 = v41;
  *(a2 + 16) = v22;
  *(a2 + 32) = v24;
  *a2 = v21;
  *(a2 + 80) = v15;
  *(a2 + 88) = v17;
  *(a2 + 96) = v26 & 1;
  *(a2 + 104) = v20;
  sub_26F3B8DD4(&v35, v43, &qword_2806DF108, &qword_26F4A3938);
  sub_26F3B0EE4(v15, v17, v26 & 1);

  sub_26F3B8D40(v15, v17, v26 & 1);

  v43[0] = v31;
  v43[1] = v27;
  v44 = v8;
  *v45 = *v34;
  *&v45[3] = *&v34[3];
  v46 = v29;
  v47 = 256;
  v48 = v32;
  v49 = v33;
  v50 = KeyPath;
  v51 = v30;
  v52 = 0;
  v53 = 1;
  return sub_26F3B6B4C(v43, &qword_2806DF108, &qword_26F4A3938);
}

TranslationUI::DisambiguationView::Item __swiftcall DisambiguationView.Item.init(title:description:)(Swift::String title, Swift::String description)
{
  *v2 = title;
  v2[1] = description;
  result.description = description;
  result.title = title;
  return result;
}

uint64_t DisambiguationView.init(items:selection:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = result;
  a5[1] = a2;
  a5[2] = a3;
  a5[3] = a4;
  return result;
}

uint64_t DisambiguationView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v6 = v1[2];
  v5 = v1[3];
  *a1 = sub_26F49E7F8();
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF070, &qword_26F4A3690) + 44);
  v27 = sub_26F3CA374(v3);
  swift_getKeyPath();
  v8 = swift_allocObject();
  v8[2] = v3;
  v8[3] = v4;
  v8[4] = v6;
  v8[5] = v5;
  v9 = swift_allocObject();
  *(v9 + 16) = sub_26F3CA54C;
  *(v9 + 24) = v8;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF078, &qword_26F4A36B8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF080, &qword_26F4A36C0);
  sub_26F3B18CC(&qword_2806DF088, &qword_2806DF078, &qword_26F4A36B8);
  v26 = sub_26F3B18CC(&qword_2806DF090, &qword_2806DF080, &qword_26F4A36C0);
  sub_26F49F4B8();
  v10 = [objc_opt_self() tertiarySystemGroupedBackgroundColor];
  v11 = sub_26F49F218();
  v12 = sub_26F49F5A8();
  v14 = v13;
  v15 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF098, &qword_26F4A36C8) + 36));
  *v15 = v11;
  v15[1] = v12;
  v15[2] = v14;
  v16 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF0A0, &unk_26F4A36D0) + 36));
  v17 = *(sub_26F49E3A8() + 20);
  v18 = *MEMORY[0x277CE0118];
  v19 = sub_26F49E7C8();
  (*(*(v19 - 8) + 104))(&v16[v17], v18, v19);
  __asm { FMOV            V0.2D, #10.0 }

  *v16 = _Q0;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF0A8, &qword_26F4A7B20);
  *&v16[*(result + 36)] = 256;
  return result;
}

uint64_t sub_26F3C9B80@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char *a7@<X8>)
{
  v73 = a6;
  v71 = a3;
  v72 = a1;
  v83 = a7;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF110, &qword_26F4A3940);
  v11 = *(v10 - 8);
  v80 = v10;
  v81 = v11;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v69 = &v68 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF118, &qword_26F4A3948);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v14 - 8);
  v82 = &v68 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v77 = &v68 - v18;
  v74 = sub_26F49E358();
  v75 = *(v74 - 8);
  v19 = *(v75 + 64);
  MEMORY[0x28223BE20](v74);
  v21 = &v68 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF120, &qword_26F4A3950);
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v22);
  v26 = &v68 - v25;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF128, &qword_26F4A3958);
  v78 = *(v79 - 8);
  v27 = *(v78 + 64);
  v28 = MEMORY[0x28223BE20](v79);
  v76 = &v68 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v31 = &v68 - v30;
  v70 = *a2;
  v32 = *(a2 + 2);
  v33 = *(a2 + 3);
  v34 = swift_allocObject();
  v35 = v71;
  v34[2] = v71;
  v34[3] = a4;
  v36 = v73;
  v34[4] = a5;
  v34[5] = v36;
  v37 = v72;
  v34[6] = v72;
  v84 = v70;
  v85 = v32;
  v86 = v33;
  v87 = v37;
  v88 = v35;
  v38 = v37;
  v39 = v35;
  v89 = a4;
  v90 = a5;
  v91 = v36;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF130, &qword_26F4A3960);
  sub_26F3CAA24();
  sub_26F49F398();
  sub_26F49E348();
  sub_26F3B18CC(&qword_2806DF158, &qword_2806DF120, &qword_26F4A3950);
  sub_26F3CAB30();
  v40 = v31;
  v41 = v74;
  sub_26F49EF48();
  (*(v75 + 8))(v21, v41);
  (*(v23 + 8))(v26, v22);
  if (*(v39 + 16) - 1 == v38)
  {
    v42 = 1;
    v43 = v80;
    v44 = v77;
  }

  else
  {
    v45 = v69;
    sub_26F49F498();
    v46 = [objc_opt_self() separatorColor];
    v47 = sub_26F49F218();
    v48 = sub_26F49EC48();
    v49 = v45 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF168, &qword_26F4A3970) + 36);
    *v49 = v47;
    *(v49 + 8) = v48;
    sub_26F49F5A8();
    sub_26F49E0C8();
    v50 = (v45 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF170, &qword_26F4A3978) + 36));
    v51 = v93;
    *v50 = v92;
    v50[1] = v51;
    v50[2] = v94;
    LOBYTE(v47) = sub_26F49EC78();
    sub_26F49DF78();
    v52 = v80;
    v53 = v45 + *(v80 + 36);
    *v53 = v47;
    *(v53 + 8) = v54;
    *(v53 + 16) = v55;
    *(v53 + 24) = v56;
    *(v53 + 32) = v57;
    *(v53 + 40) = 0;
    v44 = v77;
    sub_26F3CAB88(v45, v77);
    v42 = 0;
    v43 = v52;
  }

  (*(v81 + 56))(v44, v42, 1, v43);
  v58 = v78;
  v59 = *(v78 + 16);
  v60 = v76;
  v61 = v40;
  v62 = v79;
  v59(v76, v40, v79);
  v63 = v82;
  sub_26F3B8DD4(v44, v82, &qword_2806DF118, &qword_26F4A3948);
  v64 = v83;
  v59(v83, v60, v62);
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF178, &unk_26F4A3980);
  sub_26F3B8DD4(v63, &v64[*(v65 + 48)], &qword_2806DF118, &qword_26F4A3948);
  sub_26F3B6B4C(v44, &qword_2806DF118, &qword_26F4A3948);
  v66 = *(v58 + 8);
  v66(v61, v62);
  sub_26F3B6B4C(v63, &qword_2806DF118, &qword_26F4A3948);
  return (v66)(v60, v62);
}

void *sub_26F3CA260@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, uint64_t a9)
{
  v18[1] = a6;
  v18[2] = a7;
  v18[3] = a9;

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF180, &qword_26F4A70B0);
  result = MEMORY[0x274390240](v18, v15);
  v17 = v18[0] == a5;
  *a8 = a1;
  *(a8 + 8) = a2;
  *(a8 + 16) = a3;
  *(a8 + 24) = a4;
  *(a8 + 32) = v17;
  *(a8 + 33) = 0;
  return result;
}

uint64_t sub_26F3CA310@<X0>(uint64_t a1@<X8>)
{
  result = sub_26F49E628();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_26F3CA344(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  return sub_26F49E638();
}

uint64_t sub_26F3CA374(uint64_t result)
{
  v1 = *(result + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v3 = 0;
    v4 = 0;
    v5 = (MEMORY[0x277D84F90] + 32);
    v6 = (result + 56);
    v25 = *(result + 16);
    while (1)
    {
      v8 = *(v6 - 3);
      v7 = *(v6 - 2);
      v10 = *(v6 - 1);
      v9 = *v6;
      if (v4)
      {
        v11 = *(v6 - 2);

        v12 = __OFSUB__(v4--, 1);
        if (v12)
        {
          goto LABEL_28;
        }
      }

      else
      {
        v13 = v2[3];
        if (((v13 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_29;
        }

        v14 = v13 & 0xFFFFFFFFFFFFFFFELL;
        if (v14 <= 1)
        {
          v15 = 1;
        }

        else
        {
          v15 = v14;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF188, &qword_26F4A3990);
        v16 = swift_allocObject();
        v17 = (_swift_stdlib_malloc_size(v16) - 32) / 40;
        v16[2] = v15;
        v16[3] = 2 * v17;
        v18 = v16 + 4;
        v19 = v2[3] >> 1;
        v5 = &v16[5 * v19 + 4];
        v20 = (v17 & 0x7FFFFFFFFFFFFFFFLL) - v19;
        if (v2[2])
        {
          if (v16 != v2 || v18 >= &v2[5 * v19 + 4])
          {
            memmove(v18, v2 + 4, 40 * v19);
          }

          v2[2] = 0;
        }

        else
        {
        }

        v2 = v16;
        v1 = v25;
        v12 = __OFSUB__(v20, 1);
        v4 = v20 - 1;
        if (v12)
        {
LABEL_28:
          __break(1u);
LABEL_29:
          __break(1u);
LABEL_30:
          __break(1u);
          return result;
        }
      }

      *v5 = v3;
      v5[1] = v8;
      v5[2] = v7;
      v5[3] = v10;
      v5[4] = v9;
      v5 += 5;
      v6 += 4;
      if (v1 == ++v3)
      {
        goto LABEL_24;
      }
    }
  }

  v4 = 0;
LABEL_24:
  v22 = v2[3];
  if (v22 >= 2)
  {
    v23 = v22 >> 1;
    v12 = __OFSUB__(v23, v4);
    v24 = v23 - v4;
    if (v12)
    {
      goto LABEL_30;
    }

    v2[2] = v24;
  }

  return v2;
}

uint64_t sub_26F3CA558(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1, a1 + 1);
}

uint64_t sub_26F3CA5A4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_26F3CA5EC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_26F3CA63C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_26F3CA684(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_26F3CA6D4()
{
  result = qword_2806DF0B0;
  if (!qword_2806DF0B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806DF0A0, &unk_26F4A36D0);
    sub_26F3CA78C();
    sub_26F3B18CC(&qword_2806DF0E0, &qword_2806DF0A8, &qword_26F4A7B20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806DF0B0);
  }

  return result;
}

unint64_t sub_26F3CA78C()
{
  result = qword_2806DF0B8;
  if (!qword_2806DF0B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806DF098, &qword_26F4A36C8);
    sub_26F3B18CC(&qword_2806DF0C0, &qword_2806DF0C8, &qword_26F4A37B8);
    sub_26F3B18CC(&qword_2806DF0D0, &qword_2806DF0D8, &qword_26F4A37C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806DF0B8);
  }

  return result;
}

__n128 __swift_memcpy33_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_26F3CA884(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 33))
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

uint64_t sub_26F3CA8CC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 33) = 1;
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

    *(result + 33) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t objectdestroyTm_3()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  return swift_deallocObject();
}

uint64_t sub_26F3CA990()
{
  v3 = *(v0 + 24);
  v4 = *(v0 + 40);
  v2 = *(v0 + 48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF180, &qword_26F4A70B0);
  return sub_26F49F458();
}

unint64_t sub_26F3CAA24()
{
  result = qword_2806DF138;
  if (!qword_2806DF138)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806DF130, &qword_26F4A3960);
    sub_26F3CAADC();
    sub_26F3B18CC(&qword_2806DF148, &qword_2806DF150, &qword_26F4A3968);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806DF138);
  }

  return result;
}

unint64_t sub_26F3CAADC()
{
  result = qword_2806DF140;
  if (!qword_2806DF140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806DF140);
  }

  return result;
}

unint64_t sub_26F3CAB30()
{
  result = qword_2806DF160;
  if (!qword_2806DF160)
  {
    sub_26F49E358();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806DF160);
  }

  return result;
}

uint64_t sub_26F3CAB88(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF110, &qword_26F4A3940);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_26F3CABF8()
{
  result = qword_2806DF190;
  if (!qword_2806DF190)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806DF198, &qword_26F4A3998);
    sub_26F3CAC84();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806DF190);
  }

  return result;
}

unint64_t sub_26F3CAC84()
{
  result = qword_2806DF1A0;
  if (!qword_2806DF1A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806DF1A8, &qword_26F4A39A0);
    sub_26F3B18CC(&qword_2806DF1B0, &qword_2806DF1B8, &qword_26F4A39A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806DF1A0);
  }

  return result;
}

uint64_t sub_26F3CAD48@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_26F49F2C8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26F49E018();
  v7 = v86;
  v44 = v88;
  v45 = v87;
  v8 = v89;
  v9 = v90;
  v42 = v90;
  v10 = v91;
  v11 = [objc_opt_self() secondarySystemFillColor];
  v46 = sub_26F49F218();
  KeyPath = swift_getKeyPath();
  v43 = KeyPath;
  v13 = COERCE_DOUBLE(sub_26F49EBC8());
  if (v14)
  {
    v13 = 0.0;
  }

  v15 = fmax(v13, 0.1);
  sub_26F49E018();
  v16 = sub_26F49F5F8();
  v39 = v16;
  v40 = sub_26F49EBC8();
  v18 = v17 & 1;
  v85 = v17 & 1;
  sub_26F49F668();
  v20 = v19;
  v22 = v21;
  sub_26F49F2B8();
  (*(v3 + 104))(v6, *MEMORY[0x277CE0FE0], v2);
  v41 = sub_26F49F2F8();

  (*(v3 + 8))(v6, v2);
  sub_26F49F5A8();
  sub_26F49E0C8();
  v23 = v92;
  v24 = v93;
  v25 = v94;
  v26 = v95;
  *&v57 = v7;
  v27 = v44;
  v28 = v45;
  *(&v57 + 1) = __PAIR64__(v44, v45);
  *&v58 = v8;
  *(&v58 + 1) = v9;
  *&v59 = v10;
  *(&v59 + 1) = KeyPath;
  v60 = v46;
  *&v52[0] = v46;
  v49 = v57;
  v50 = v58;
  v51 = v59;
  *&v61[0] = 0;
  *(v61 + 1) = v15;
  v61[1] = v54;
  v61[2] = v55;
  *&v62 = v56;
  *(&v62 + 1) = v16;
  v29 = v40;
  *&v63 = v40;
  BYTE8(v63) = v18;
  HIDWORD(v63) = *&v53[3];
  *(&v63 + 9) = *v53;
  *&v64 = 0xBFF921FB54442D18;
  *(&v64 + 1) = v20;
  v65 = v22;
  *(&v52[2] + 8) = v55;
  *(&v52[1] + 8) = v54;
  *(v52 + 8) = v61[0];
  *(&v52[6] + 1) = v22;
  *(&v52[5] + 8) = v64;
  *(&v52[4] + 8) = v63;
  *(&v52[3] + 8) = v62;
  v48 = v93;
  v47 = v95;
  v30 = v58;
  *a1 = v57;
  *(a1 + 16) = v30;
  v31 = v51;
  v32 = v52[0];
  v33 = v52[2];
  *(a1 + 64) = v52[1];
  *(a1 + 80) = v33;
  *(a1 + 32) = v31;
  *(a1 + 48) = v32;
  v34 = v52[3];
  v35 = v52[4];
  v36 = v52[6];
  *(a1 + 128) = v52[5];
  *(a1 + 144) = v36;
  *(a1 + 96) = v34;
  *(a1 + 112) = v35;
  *(a1 + 160) = v41;
  *(a1 + 168) = v23;
  *(a1 + 176) = v24;
  *(a1 + 184) = v25;
  *(a1 + 192) = v26;
  *(a1 + 200) = v96;
  sub_26F3B8DD4(&v57, v66, &qword_2806DF238, &qword_26F4A3B38);
  sub_26F3B8DD4(v61, v66, &qword_2806DF240, &qword_26F4A3B40);
  v66[0] = 0;
  *&v66[1] = v15;
  v67 = v54;
  v68 = v55;
  v69 = v56;
  v70 = v39;
  v71 = v29;
  v72 = v18;
  *v73 = *v53;
  *&v73[3] = *&v53[3];
  v74 = 0xBFF921FB54442D18;
  v75 = v20;
  v76 = v22;
  sub_26F3B6B4C(v66, &qword_2806DF240, &qword_26F4A3B40);
  v77 = v7;
  v78 = v28;
  v79 = v27;
  v80 = v8;
  v81 = v42;
  v82 = v10;
  v83 = v43;
  v84 = v46;
  return sub_26F3B6B4C(&v77, &qword_2806DF238, &qword_26F4A3B38);
}

double sub_26F3CB1C4@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_26F49F5A8();
  v4 = v3;
  sub_26F3CAD48(&v13);
  v37 = v23;
  v38 = v24;
  v39 = v25;
  v33 = v19;
  v34 = v20;
  v35 = v21;
  v36 = v22;
  v29 = v15;
  v30 = v16;
  v31 = v17;
  v32 = v18;
  v27 = v13;
  v28 = v14;
  v41[10] = v23;
  v41[11] = v24;
  v41[12] = v25;
  v41[6] = v19;
  v41[7] = v20;
  v41[8] = v21;
  v41[9] = v22;
  v41[2] = v15;
  v41[3] = v16;
  v41[4] = v17;
  v41[5] = v18;
  v40 = v26;
  v42 = v26;
  v41[0] = v13;
  v41[1] = v14;
  sub_26F3B8DD4(&v27, &v12, &qword_2806DF230, &qword_26F4A3B00);
  sub_26F3B6B4C(v41, &qword_2806DF230, &qword_26F4A3B00);
  *a1 = v2;
  *(a1 + 8) = v4;
  v5 = v38;
  *(a1 + 176) = v37;
  *(a1 + 192) = v5;
  *(a1 + 208) = v39;
  *(a1 + 224) = v40;
  v6 = v34;
  *(a1 + 112) = v33;
  *(a1 + 128) = v6;
  v7 = v36;
  *(a1 + 144) = v35;
  *(a1 + 160) = v7;
  v8 = v30;
  *(a1 + 48) = v29;
  *(a1 + 64) = v8;
  v9 = v32;
  *(a1 + 80) = v31;
  *(a1 + 96) = v9;
  result = *&v27;
  v11 = v28;
  *(a1 + 16) = v27;
  *(a1 + 32) = v11;
  return result;
}

uint64_t DownloadProgressView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v29 = a1;
  v2 = sub_26F49F2C8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF1C0, &unk_26F4A39C0);
  v7 = *(*(v28 - 8) + 64);
  MEMORY[0x28223BE20](v28);
  v9 = &v27 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF1C8, &qword_26F4A6790);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v27 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF1D0, &qword_26F4A39D0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15);
  v18 = &v27 - v17;
  if (v1[1])
  {
    sub_26F49F2B8();
    (*(v3 + 104))(v6, *MEMORY[0x277CE0FE0], v2);
    v19 = sub_26F49F2F8();

    (*(v3 + 8))(v6, v2);
    sub_26F49ECA8();
    sub_26F49ED08();
    v20 = sub_26F49ED58();

    KeyPath = swift_getKeyPath();
    sub_26F49F5A8();
    sub_26F49E0C8();
    *v9 = v19;
    *(v9 + 1) = KeyPath;
    *(v9 + 2) = v20;
    v22 = v32;
    *(v9 + 24) = v31;
    *(v9 + 40) = v22;
    *(v9 + 56) = v33;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF1D8, &qword_26F4A3A08);
    sub_26F3CB7FC();
    sub_26F3CB960();
    return sub_26F49E928();
  }

  else
  {
    v24 = *v1;
    BYTE8(v31) = 0;
    v30 = 0x3FF0000000000000;
    *&v31 = v24;
    sub_26F3B8CEC();
    sub_26F49E048();
    sub_26F3B18CC(&qword_2806DF1E8, &qword_2806DF1C8, &qword_26F4A6790);
    sub_26F3CB90C();
    sub_26F49EF18();
    (*(v11 + 8))(v14, v10);
    sub_26F49F5A8();
    sub_26F49E0C8();
    v25 = &v18[*(v15 + 36)];
    v26 = v32;
    *v25 = v31;
    *(v25 + 1) = v26;
    *(v25 + 2) = v33;
    sub_26F3A1ECC(v18, v9);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF1D8, &qword_26F4A3A08);
    sub_26F3CB7FC();
    sub_26F3CB960();
    sub_26F49E928();
    return sub_26F3A1F3C(v18);
  }
}

uint64_t sub_26F3CB7A4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_26F49E588();
  *a1 = result;
  return result;
}

uint64_t sub_26F3CB7D0(uint64_t *a1)
{
  v1 = *a1;

  return sub_26F49E598();
}

unint64_t sub_26F3CB7FC()
{
  result = qword_2806DF1E0;
  if (!qword_2806DF1E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806DF1D0, &qword_26F4A39D0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806DF1C8, &qword_26F4A6790);
    sub_26F3B18CC(&qword_2806DF1E8, &qword_2806DF1C8, &qword_26F4A6790);
    sub_26F3CB90C();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806DF1E0);
  }

  return result;
}

unint64_t sub_26F3CB90C()
{
  result = qword_2806DF1F0;
  if (!qword_2806DF1F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806DF1F0);
  }

  return result;
}

unint64_t sub_26F3CB960()
{
  result = qword_2806DF1F8;
  if (!qword_2806DF1F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806DF1D8, &qword_26F4A3A08);
    sub_26F3CB9EC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806DF1F8);
  }

  return result;
}

unint64_t sub_26F3CB9EC()
{
  result = qword_2806DF200;
  if (!qword_2806DF200)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806DF208, &unk_26F4A3A10);
    sub_26F3B18CC(&qword_2806DF210, &qword_2806DF218, &qword_26F4A4B40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806DF200);
  }

  return result;
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for LanguageState(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for DownloadProgressView(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *result = (a2 - 1);
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

  *(result + 9) = v3;
  return result;
}

unint64_t sub_26F3CBB30()
{
  result = qword_2806DF220;
  if (!qword_2806DF220)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806DF228, &qword_26F4A3AA8);
    sub_26F3CB7FC();
    sub_26F3CB960();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806DF220);
  }

  return result;
}

id sub_26F3CBD4C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for EmptyViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_26F3CBDA4()
{
  result = _LTIsInternalInstall();
  byte_280F67E58 = result;
  return result;
}

void sub_26F3CBDC4()
{
  v0 = sub_26F49F898();
  v1 = NSClassFromString(v0);

  if (v1)
  {
    v2 = swift_getObjCClassMetadata() != 0;
  }

  else
  {
    v2 = 0;
  }

  byte_280F67E59 = v2;
}

uint64_t sub_26F3CBE28()
{
  if (qword_280F65AE0 != -1)
  {
    result = swift_once();
  }

  if (byte_280F67E58 == 1)
  {
    if (qword_280F65AE8 != -1)
    {
      result = swift_once();
    }

    v0 = byte_280F67E59;
  }

  else
  {
    v0 = 0;
  }

  byte_2806EA860 = v0;
  return result;
}

uint64_t sub_26F3CBEC4(uint64_t a1, unint64_t a2)
{
  v32[4] = *MEMORY[0x277D85DE8];
  v4 = sub_26F49F918();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26F49F908();
  v9 = sub_26F49F8D8();
  v11 = v10;
  (*(v5 + 8))(v8, v4);
  if (v11 >> 60 == 15)
  {
    goto LABEL_5;
  }

  v12 = objc_opt_self();
  v13 = sub_26F49D898();
  v32[0] = 0;
  v14 = [v12 JSONObjectWithData:v13 options:16 error:v32];

  if (!v14)
  {
    v22 = v32[0];
    v23 = sub_26F49D7F8();

    swift_willThrow();
    sub_26F3CC308(v9, v11);
    if (qword_2806DE790 != -1)
    {
      swift_once();
    }

    v24 = sub_26F49DCA8();
    __swift_project_value_buffer(v24, qword_2806EA8C0);
    v25 = v23;
    v18 = sub_26F49DC88();
    v26 = sub_26F49FDD8();

    if (!os_log_type_enabled(v18, v26))
    {

      goto LABEL_14;
    }

    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    *v27 = 138412290;
    v29 = sub_26F49D7E8();
    *(v27 + 4) = v29;
    *v28 = v29;
    _os_log_impl(&dword_26F39E000, v18, v26, "Failed to decode Environment variable: %@", v27, 0xCu);
    sub_26F3CC31C(v28);
    MEMORY[0x274391F70](v28, -1, -1);
    MEMORY[0x274391F70](v27, -1, -1);

LABEL_13:
LABEL_14:
    result = 0;
    goto LABEL_15;
  }

  v15 = v32[0];
  sub_26F4A0038();
  sub_26F3CC308(v9, v11);
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF260, &qword_26F4A3B78);
  if (!swift_dynamicCast())
  {
LABEL_5:
    if (qword_2806DE790 != -1)
    {
      swift_once();
    }

    v17 = sub_26F49DCA8();
    __swift_project_value_buffer(v17, qword_2806EA8C0);

    v18 = sub_26F49DC88();
    v19 = sub_26F49FDD8();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v32[0] = v21;
      *v20 = 136380675;
      *(v20 + 4) = sub_26F3B38D0(a1, a2, v32);
      _os_log_impl(&dword_26F39E000, v18, v19, "Failed to decode Environment variable since object was not a dictionary: %{private}s", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v21);
      MEMORY[0x274391F70](v21, -1, -1);
      MEMORY[0x274391F70](v20, -1, -1);
    }

    goto LABEL_13;
  }

  result = v31[1];
LABEL_15:
  v30 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_26F3CC308(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_26F3C8F70(a1, a2);
  }

  return a1;
}

uint64_t sub_26F3CC31C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF258, &qword_26F4A6220);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t ErrorStateView.Context.hashValue.getter()
{
  v1 = *v0;
  sub_26F4A0528();
  MEMORY[0x274391330](v1);
  return sub_26F4A0568();
}

__n128 ErrorStateView.init(context:title:details:actionTitle:action:closeAction:)@<Q0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, __int128 a10, __int128 a11, __n128 a12, uint64_t a13)
{
  result = a12;
  *a9 = *a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8;
  *(a9 + 64) = a10;
  *(a9 + 80) = a11;
  *(a9 + 96) = a12;
  *(a9 + 112) = a13;
  return result;
}

uint64_t ErrorStateView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF268, &qword_26F4A3B90);
  v4 = v3 - 8;
  v5 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v45 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF270, &qword_26F4A3B98);
  v9 = v8 - 8;
  v10 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v12 = v45 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF278, &qword_26F4A3BA0);
  v14 = v13 - 8;
  v15 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v17 = v45 - v16;
  v18 = *(v1 + 80);
  v46[4] = *(v1 + 64);
  v46[5] = v18;
  v46[6] = *(v1 + 96);
  v47 = *(v1 + 112);
  v19 = *(v1 + 16);
  v46[0] = *v1;
  v46[1] = v19;
  v20 = *(v1 + 48);
  v46[2] = *(v1 + 32);
  v46[3] = v20;
  *v7 = sub_26F49E6C8();
  *(v7 + 1) = 0;
  v7[16] = 1;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF280, &qword_26F4A3BA8);
  sub_26F3CC7B4(v46, &v7[*(v21 + 44)]);
  v22 = sub_26F49EC48();
  sub_26F49DF78();
  v23 = &v7[*(v4 + 44)];
  *v23 = v22;
  *(v23 + 1) = v24;
  *(v23 + 2) = v25;
  *(v23 + 3) = v26;
  *(v23 + 4) = v27;
  v23[40] = 0;
  sub_26F49F5A8();
  sub_26F49E3D8();
  sub_26F3BBAEC(v7, v12, &qword_2806DF268, &qword_26F4A3B90);
  v28 = &v12[*(v9 + 44)];
  v29 = v45[5];
  *(v28 + 4) = v45[4];
  *(v28 + 5) = v29;
  *(v28 + 6) = v45[6];
  v30 = v45[1];
  *v28 = v45[0];
  *(v28 + 1) = v30;
  v31 = v45[3];
  *(v28 + 2) = v45[2];
  *(v28 + 3) = v31;
  v32 = [objc_opt_self() systemGroupedBackgroundColor];
  v33 = sub_26F49F218();
  LOBYTE(v9) = sub_26F49EC48();
  sub_26F3BBAEC(v12, v17, &qword_2806DF270, &qword_26F4A3B98);
  v34 = &v17[*(v14 + 44)];
  *v34 = v33;
  v34[8] = v9;
  v35 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF288, &unk_26F4A3BB0) + 36));
  v36 = *(sub_26F49E3A8() + 20);
  v37 = *MEMORY[0x277CE0118];
  v38 = sub_26F49E7C8();
  (*(*(v38 - 8) + 104))(&v35[v36], v37, v38);
  __asm { FMOV            V0.2D, #9.0 }

  *v35 = _Q0;
  *&v35[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF0A8, &qword_26F4A7B20) + 36)] = 256;
  return sub_26F3BBAEC(v17, a1, &qword_2806DF278, &qword_26F4A3BA0);
}

uint64_t sub_26F3CC7B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF310, &qword_26F4A3E40);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v28 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF318, &qword_26F4A3E48);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v29 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v28 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF320, &qword_26F4A3E50);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v18 = &v28 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = &v28 - v20;
  *v21 = sub_26F49E808();
  *(v21 + 1) = 0x4030000000000000;
  v21[16] = 0;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF328, &qword_26F4A3E58);
  sub_26F3CCB14(a1, &v21[*(v22 + 44)]);
  if (*(a1 + 104))
  {
    v23 = *(a1 + 112);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF338, &qword_26F4A3E68);
    sub_26F3CEFA0();
    sub_26F49F398();
    (*(v5 + 32))(v14, v8, v4);
    v24 = 0;
  }

  else
  {
    v24 = 1;
  }

  (*(v5 + 56))(v14, v24, 1, v4);
  sub_26F3B8DD4(v21, v18, &qword_2806DF320, &qword_26F4A3E50);
  v25 = v29;
  sub_26F3B8DD4(v14, v29, &qword_2806DF318, &qword_26F4A3E48);
  sub_26F3B8DD4(v18, a2, &qword_2806DF320, &qword_26F4A3E50);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF330, &qword_26F4A3E60);
  sub_26F3B8DD4(v25, a2 + *(v26 + 48), &qword_2806DF318, &qword_26F4A3E48);
  sub_26F3B6B4C(v14, &qword_2806DF318, &qword_26F4A3E48);
  sub_26F3B6B4C(v21, &qword_2806DF320, &qword_26F4A3E50);
  sub_26F3B6B4C(v25, &qword_2806DF318, &qword_26F4A3E48);
  return sub_26F3B6B4C(v18, &qword_2806DF320, &qword_26F4A3E50);
}

uint64_t sub_26F3CCB14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF368, &qword_26F4A3E88);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v44 = &v38 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF370, &qword_26F4A3E90);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v45 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v38 - v12;
  v14 = sub_26F49E808();
  v52 = 0;
  sub_26F3CCFD4(a1, &v48);
  v55 = *&v49[16];
  v56 = *&v49[32];
  v57 = *&v49[48];
  v58 = *&v49[64];
  v53 = v48;
  v54 = *v49;
  v59[2] = *&v49[16];
  v59[3] = *&v49[32];
  v59[4] = *&v49[48];
  v59[5] = *&v49[64];
  v59[0] = v48;
  v59[1] = *v49;
  sub_26F3B8DD4(&v53, &v46, &qword_2806DF378, &qword_26F4A3E98);
  sub_26F3B6B4C(v59, &qword_2806DF378, &qword_26F4A3E98);
  *&v51[39] = v55;
  *&v51[55] = v56;
  *&v51[71] = v57;
  *&v51[87] = v58;
  *&v51[7] = v53;
  *&v51[23] = v54;
  v15 = v52;
  if (*(a1 + 64) && *(a1 + 88))
  {
    v42 = &v38;
    v16 = *(a1 + 56);
    v17 = *(a1 + 72);
    v18 = *(a1 + 80);
    v39 = *(a1 + 96);
    MEMORY[0x28223BE20](v39);
    v40 = v19;
    v41 = &v38 - 6;
    *(&v38 - 4) = v21;
    *(&v38 - 3) = v20;
    *(&v38 - 16) = v22 & 1;
    *(&v38 - 1) = v23;

    v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF390, &qword_26F4A3EB0);
    v43 = v14;
    v24 = v15;
    v25 = v4;
    v26 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806DF358, &qword_26F4A3E78);
    v27 = sub_26F3B18CC(&qword_280F65720, &qword_2806DF358, &qword_26F4A3E78);
    v28 = sub_26F3CF264();
    *&v48 = v26;
    *(&v48 + 1) = &type metadata for ActionButtonLabelStyle;
    v4 = v25;
    v15 = v24;
    *v49 = v27;
    *&v49[8] = v28;
    v14 = v43;
    swift_getOpaqueTypeConformance2();
    v29 = v44;
    sub_26F49F398();
    (*(v5 + 32))(v13, v29, v4);
    v30 = 0;
  }

  else
  {
    v30 = 1;
  }

  (*(v5 + 56))(v13, v30, 1, v4);
  v31 = v45;
  sub_26F3B8DD4(v13, v45, &qword_2806DF370, &qword_26F4A3E90);
  *&v46 = v14;
  *(&v46 + 1) = 0x4000000000000000;
  v47[0] = v15;
  *&v47[17] = *&v51[16];
  *&v47[1] = *v51;
  *&v47[81] = *&v51[80];
  *&v47[65] = *&v51[64];
  *&v47[49] = *&v51[48];
  v32 = *&v51[95];
  *&v47[96] = *&v51[95];
  *&v47[33] = *&v51[32];
  v33 = *&v47[32];
  *(a2 + 32) = *&v47[16];
  *(a2 + 48) = v33;
  *(a2 + 112) = v32;
  v34 = *&v47[80];
  *(a2 + 80) = *&v47[64];
  *(a2 + 96) = v34;
  *(a2 + 64) = *&v47[48];
  v35 = *v47;
  *a2 = v46;
  *(a2 + 16) = v35;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF380, &qword_26F4A3EA0);
  sub_26F3B8DD4(v31, a2 + *(v36 + 48), &qword_2806DF370, &qword_26F4A3E90);
  sub_26F3B8DD4(&v46, &v48, &qword_2806DF388, &qword_26F4A3EA8);
  sub_26F3B6B4C(v13, &qword_2806DF370, &qword_26F4A3E90);
  sub_26F3B6B4C(v31, &qword_2806DF370, &qword_26F4A3E90);
  *&v49[49] = *&v51[48];
  *&v49[65] = *&v51[64];
  *v50 = *&v51[80];
  *&v49[1] = *v51;
  *&v49[17] = *&v51[16];
  *&v48 = v14;
  *(&v48 + 1) = 0x4000000000000000;
  v49[0] = v15;
  *&v50[15] = *&v51[95];
  *&v49[33] = *&v51[32];
  return sub_26F3B6B4C(&v48, &qword_2806DF388, &qword_26F4A3EA8);
}

uint64_t sub_26F3CCFD4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = *(a1 + 32);

  LOWORD(v40) = 256;
  v7 = sub_26F49EEC8();
  v9 = v8;
  LOBYTE(v5) = v10;
  sub_26F49EC98();
  v11 = sub_26F49EEA8();
  v13 = v12;
  v15 = v14;

  sub_26F3B8D40(v7, v9, v5 & 1);

  v16 = sub_26F49EE98();
  v18 = v17;
  v20 = v19;
  v22 = v21;
  sub_26F3B8D40(v11, v13, v15 & 1);

  v23 = *(a1 + 48);
  if (v23)
  {
    v47 = *(a1 + 40);
    v48 = v23;
    sub_26F3BDC0C();

    v24 = sub_26F49EED8();
    v23 = v25;
    v27 = v26;
    v29 = v28;
    v30 = sub_26F49EC98();
    KeyPath = swift_getKeyPath();
    LOBYTE(v47) = v27 & 1;
    v32 = v27 & 1;
    v33 = [objc_opt_self() secondaryLabelColor];
    v34 = sub_26F49F218();
    v35 = 256;
  }

  else
  {
    v24 = 0;
    v29 = 0;
    KeyPath = 0;
    v30 = 0;
    v34 = 0;
    v35 = 0;
    v32 = 0;
  }

  v36 = v20 & 1;
  v42[64] = v36;
  *&v43 = v24;
  *(&v43 + 1) = v23;
  *&v44 = v32;
  *(&v44 + 1) = v29;
  *&v45 = v35;
  *(&v45 + 1) = KeyPath;
  *&v46 = v30;
  *(&v46 + 1) = v34;
  *a2 = v16;
  *(a2 + 8) = v18;
  *(a2 + 16) = v36;
  *(a2 + 24) = v22;
  v37 = v44;
  *(a2 + 32) = v43;
  *(a2 + 48) = v37;
  v38 = v46;
  *(a2 + 64) = v45;
  *(a2 + 80) = v38;
  v47 = v24;
  v48 = v23;
  v49 = v32;
  v50 = v29;
  v51 = v35;
  v52 = KeyPath;
  v53 = v30;
  v54 = v34;
  sub_26F3B0EE4(v16, v18, v36);

  sub_26F3B8DD4(&v43, v42, &qword_2806DF3A0, &qword_26F4A3EB8);
  sub_26F3B6B4C(&v47, &qword_2806DF3A0, &qword_26F4A3EB8);
  sub_26F3B8D40(v16, v18, v36);
}

uint64_t sub_26F3CD268()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF358, &qword_26F4A3E78);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v6 - v3;

  sub_26F49F318();
  sub_26F3B18CC(&qword_280F65720, &qword_2806DF358, &qword_26F4A3E78);
  sub_26F3CF264();
  sub_26F49EF38();
  return (*(v1 + 8))(v4, v0);
}

uint64_t sub_26F3CD3F4@<X0>(uint64_t a1@<X8>)
{
  v23 = a1;
  v1 = sub_26F49E6F8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF358, &qword_26F4A3E78);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v22 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF348, &qword_26F4A3E70);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v22 - v13;
  sub_26F49E768();
  sub_26F49F318();
  sub_26F49E6E8();
  sub_26F3B18CC(&qword_280F65720, &qword_2806DF358, &qword_26F4A3E78);
  sub_26F3CF20C(&qword_2806DF360, MEMORY[0x277CDDE78]);
  sub_26F49EF38();
  (*(v2 + 8))(v5, v1);
  (*(v7 + 8))(v10, v6);
  v15 = sub_26F49EC98();
  KeyPath = swift_getKeyPath();
  v17 = &v14[*(v11 + 36)];
  *v17 = KeyPath;
  v17[1] = v15;
  sub_26F3CF094();
  v18 = v23;
  sub_26F49F0E8();
  sub_26F3B6B4C(v14, &qword_2806DF348, &qword_26F4A3E70);
  v19 = [objc_opt_self() tertiaryLabelColor];
  v20 = sub_26F49F218();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF338, &qword_26F4A3E68);
  *(v18 + *(result + 36)) = v20;
  return result;
}

uint64_t static ErrorStateView.airplaneMode(sourceLocale:targetLocale:context:)@<X0>(unsigned __int8 *a1@<X2>, uint64_t a2@<X8>)
{
  v4 = sub_26F49DAB8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v44 - v10;
  v47 = *a1;
  _s10Foundation6LocaleV13TranslationUIE9ltCurrentACvgZ_0();
  v12 = sub_26F49D9F8();
  v13 = sub_26F49D9F8();
  v14 = [v12 lt:3 displayNameForContext:v13 inTargetLocale:?];

  v15 = 0x45474155474E414CLL;
  if (v14)
  {
    v45 = sub_26F49F8C8();
    v46 = v16;
  }

  else
  {
    v45 = 0x45474155474E414CLL;
    v46 = 0xE800000000000000;
  }

  v17 = *(v5 + 8);
  v17(v11, v4);
  _s10Foundation6LocaleV13TranslationUIE9ltCurrentACvgZ_0();
  v18 = sub_26F49D9F8();
  v19 = sub_26F49D9F8();
  v20 = [v18 lt:3 displayNameForContext:v19 inTargetLocale:?];

  if (v20)
  {
    v15 = sub_26F49F8C8();
    v22 = v21;
  }

  else
  {
    v22 = 0xE800000000000000;
  }

  v17(v8, v4);
  v23 = [objc_opt_self() mainBundle];
  sub_26F49D7D8();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF290, &unk_26F4A3BC0);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_26F4A3B80;
  v25 = MEMORY[0x277D837D0];
  *(v24 + 56) = MEMORY[0x277D837D0];
  v26 = sub_26F3CDADC();
  v27 = v46;
  *(v24 + 32) = v45;
  *(v24 + 40) = v27;
  *(v24 + 96) = v25;
  *(v24 + 104) = v26;
  *(v24 + 64) = v26;
  *(v24 + 72) = v15;
  *(v24 + 80) = v22;
  v28 = sub_26F49F8F8();
  v30 = v29;

  v31 = sub_26F49E768();
  v33 = v32;
  v35 = v34;
  v37 = v36;
  v38 = sub_26F49F898();
  v39 = SFLocalizableWAPIStringKeyForKey();

  sub_26F49F8C8();
  result = sub_26F49E768();
  *a2 = v47;
  *(a2 + 8) = v31;
  *(a2 + 16) = v33;
  *(a2 + 24) = v35 & 1;
  *(a2 + 32) = v37;
  *(a2 + 40) = v28;
  *(a2 + 48) = v30;
  *(a2 + 56) = result;
  *(a2 + 64) = v42;
  *(a2 + 72) = v41 & 1;
  *(a2 + 80) = v43;
  *(a2 + 88) = sub_26F3CDB30;
  *(a2 + 96) = 0;
  *(a2 + 104) = 0;
  *(a2 + 112) = 0;
  return result;
}

unint64_t sub_26F3CDADC()
{
  result = qword_2806DF298;
  if (!qword_2806DF298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806DF298);
  }

  return result;
}

uint64_t sub_26F3CDB30()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806E0710, &qword_26F4A60A0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v9 - v2;
  v4 = sub_26F49FC08();
  (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
  sub_26F49FBD8();
  v5 = sub_26F49FBC8();
  v6 = swift_allocObject();
  v7 = MEMORY[0x277D85700];
  *(v6 + 16) = v5;
  *(v6 + 24) = v7;
  sub_26F40570C(0, 0, v3, &unk_26F4A3E38, v6);
}

uint64_t sub_26F3CDC3C()
{
  sub_26F49FBD8();
  *(v0 + 16) = sub_26F49FBC8();
  v2 = sub_26F49FB68();

  return MEMORY[0x2822009F8](sub_26F3CDCD0, v2, v1);
}

uint64_t sub_26F3CDCD0()
{
  v1 = *(v0 + 16);

  sub_26F45AA88(2);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t static ErrorStateView.missingOfflineAssets(context:)@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF2A0, &qword_26F4A7190);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v39 - v6;
  v8 = sub_26F49D878();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  MEMORY[0x28223BE20](v11);
  v13 = &v39 - v12;
  v48 = *a1;
  sub_26F49D868();
  result = (*(v9 + 48))(v7, 1, v8);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v15 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
    v47 = *(v9 + 32);
    v47(v13, v7, v8);
    v16 = sub_26F49E768();
    v44 = v17;
    v45 = v16;
    v43 = v18;
    v46 = v19;
    v42 = v9;
    if (qword_2806DE7D8 != -1)
    {
      swift_once();
    }

    v20 = sub_26F49D7D8();
    v40 = v21;
    v41 = v20;
    v22 = sub_26F49F898();
    v23 = SFLocalizableWAPIStringKeyForKey();

    sub_26F49F8C8();
    v39 = sub_26F49E768();
    v25 = v24;
    v27 = v26;
    v29 = v28 & 1;
    v30 = v8;
    v31 = v8;
    v32 = v47;
    v47(v15, v13, v30);
    v33 = (*(v42 + 80) + 16) & ~*(v42 + 80);
    v34 = swift_allocObject();
    result = v32(v34 + v33, v15, v31);
    *a2 = v48;
    v35 = v44;
    *(a2 + 8) = v45;
    *(a2 + 16) = v35;
    *(a2 + 24) = v43 & 1;
    v37 = v40;
    v36 = v41;
    *(a2 + 32) = v46;
    *(a2 + 40) = v36;
    v38 = v39;
    *(a2 + 48) = v37;
    *(a2 + 56) = v38;
    *(a2 + 64) = v25;
    *(a2 + 72) = v29;
    *(a2 + 80) = v27;
    *(a2 + 88) = sub_26F3CE76C;
    *(a2 + 96) = v34;
    *(a2 + 104) = 0;
    *(a2 + 112) = 0;
  }

  return result;
}

uint64_t sub_26F3CE0A8(uint64_t a1)
{
  v2 = sub_26F49D878();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806E0710, &qword_26F4A60A0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v16 - v8;
  v10 = sub_26F49FC08();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  (*(v3 + 16))(v5, a1, v2);
  sub_26F49FBD8();
  v11 = sub_26F49FBC8();
  v12 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v13 = swift_allocObject();
  v14 = MEMORY[0x277D85700];
  *(v13 + 16) = v11;
  *(v13 + 24) = v14;
  (*(v3 + 32))(v13 + v12, v5, v2);
  sub_26F4059FC(0, 0, v9, &unk_26F4A3E28, v13);
}

uint64_t sub_26F3CE294(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a1;
  v4[3] = a4;
  sub_26F49FBD8();
  v4[4] = sub_26F49FBC8();
  v6 = sub_26F49FB68();

  return MEMORY[0x2822009F8](sub_26F3CE32C, v6, v5);
}

uint64_t sub_26F3CE32C()
{
  v1 = *(v0 + 32);

  v2 = [objc_opt_self() defaultWorkspace];
  if (v2)
  {
    v3 = v2;
    v4 = *(v0 + 24);
    v5 = sub_26F49D828();
    sub_26F3BDADC(MEMORY[0x277D84F90]);
    v6 = sub_26F49F7E8();

    v7 = [v3 openSensitiveURL:v5 withOptions:v6];
  }

  else
  {
    v7 = 2;
  }

  **(v0 + 16) = v7;
  v8 = *(v0 + 8);

  return v8();
}

double static ErrorStateView.noInternetConnection(context:)@<D0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v17 = *a1;
  v3 = sub_26F49E768();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  if (qword_2806DE7D8 != -1)
  {
    swift_once();
  }

  v18 = sub_26F49D7D8();
  v19 = v10;
  MEMORY[0x2743907E0](10, 0xE100000000000000);
  v11 = sub_26F49F898();
  v12 = SFLocalizableWAPIStringKeyForKey();

  sub_26F49F8C8();
  v13 = sub_26F49D7D8();
  v15 = v14;

  MEMORY[0x2743907E0](v13, v15);

  *a2 = v17;
  *(a2 + 8) = v3;
  *(a2 + 16) = v5;
  *(a2 + 24) = v7 & 1;
  *(a2 + 32) = v9;
  *(a2 + 40) = v18;
  *(a2 + 48) = v19;
  result = 0.0;
  *(a2 + 56) = 0u;
  *(a2 + 72) = 0u;
  *(a2 + 88) = 0u;
  *(a2 + 104) = 0u;
  return result;
}

uint64_t sub_26F3CE60C@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF2F0, &qword_26F4A3DD0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v13 - v4;
  sub_26F49EA78();
  v6 = sub_26F49EC98();
  KeyPath = swift_getKeyPath();
  v8 = &v5[*(v2 + 36)];
  *v8 = KeyPath;
  v8[1] = v6;
  sub_26F3CEC28();
  sub_26F49F0E8();
  sub_26F3B6B4C(v5, &qword_2806DF2F0, &qword_26F4A3DD0);
  type metadata accessor for _BundleObject();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v10 = [objc_opt_self() bundleForClass_];
  v11 = sub_26F49F298();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF308, &unk_26F4A3E10);
  *(a1 + *(result + 36)) = v11;
  return result;
}

uint64_t sub_26F3CE76C()
{
  v1 = *(sub_26F49D878() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_26F3CE0A8(v2);
}

unint64_t sub_26F3CE7D0()
{
  result = qword_2806DF2A8;
  if (!qword_2806DF2A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806DF2A8);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_7SwiftUI18LocalizedStringKeyVSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy120_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  *(a1 + 112) = *(a2 + 14);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t sub_26F3CE884(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 120))
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

uint64_t sub_26F3CE8CC(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

unint64_t sub_26F3CE948()
{
  result = qword_2806DF2B0;
  if (!qword_2806DF2B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806DF288, &unk_26F4A3BB0);
    sub_26F3CEA00();
    sub_26F3B18CC(&qword_2806DF0E0, &qword_2806DF0A8, &qword_26F4A7B20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806DF2B0);
  }

  return result;
}

unint64_t sub_26F3CEA00()
{
  result = qword_2806DF2B8;
  if (!qword_2806DF2B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806DF278, &qword_26F4A3BA0);
    sub_26F3CEAB8();
    sub_26F3B18CC(&qword_2806DF2E0, &qword_2806DF2E8, &qword_26F4A3D78);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806DF2B8);
  }

  return result;
}

unint64_t sub_26F3CEAB8()
{
  result = qword_2806DF2C0;
  if (!qword_2806DF2C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806DF270, &qword_26F4A3B98);
    sub_26F3CEB44();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806DF2C0);
  }

  return result;
}

unint64_t sub_26F3CEB44()
{
  result = qword_2806DF2C8;
  if (!qword_2806DF2C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806DF268, &qword_26F4A3B90);
    sub_26F3B18CC(&qword_2806DF2D0, &qword_2806DF2D8, &qword_26F4A3D70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806DF2C8);
  }

  return result;
}

unint64_t sub_26F3CEC28()
{
  result = qword_2806DF2F8;
  if (!qword_2806DF2F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806DF2F0, &qword_26F4A3DD0);
    sub_26F3CF20C(&qword_2806DF300, MEMORY[0x277CDE230]);
    sub_26F3B18CC(&qword_2806DF210, &qword_2806DF218, &qword_26F4A4B40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806DF2F8);
  }

  return result;
}

uint64_t sub_26F3CED10(uint64_t a1)
{
  v4 = *(sub_26F49D878() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_26F3CF3AC;

  return sub_26F3CE294(a1, v6, v7, v1 + v5);
}

uint64_t sub_26F3CEE00()
{
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_26F3CEEAC;

  return sub_26F3CDC3C();
}

uint64_t sub_26F3CEEAC()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

unint64_t sub_26F3CEFA0()
{
  result = qword_2806DF340;
  if (!qword_2806DF340)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806DF338, &qword_26F4A3E68);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806DF348, &qword_26F4A3E70);
    sub_26F3CF094();
    swift_getOpaqueTypeConformance2();
    sub_26F3B18CC(&qword_2806DEC98, &qword_2806DECA0, &qword_26F4A3E80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806DF340);
  }

  return result;
}

unint64_t sub_26F3CF094()
{
  result = qword_2806DF350;
  if (!qword_2806DF350)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806DF348, &qword_26F4A3E70);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806DF358, &qword_26F4A3E78);
    sub_26F49E6F8();
    sub_26F3B18CC(&qword_280F65720, &qword_2806DF358, &qword_26F4A3E78);
    sub_26F3CF20C(&qword_2806DF360, MEMORY[0x277CDDE78]);
    swift_getOpaqueTypeConformance2();
    sub_26F3B18CC(&qword_2806DF210, &qword_2806DF218, &qword_26F4A4B40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806DF350);
  }

  return result;
}

uint64_t sub_26F3CF20C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_26F3CF254()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  return sub_26F3CD268();
}

unint64_t sub_26F3CF264()
{
  result = qword_2806DF398;
  if (!qword_2806DF398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806DF398);
  }

  return result;
}

unint64_t sub_26F3CF2B8()
{
  result = qword_2806DF3A8;
  if (!qword_2806DF3A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806DF308, &unk_26F4A3E10);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806DF2F0, &qword_26F4A3DD0);
    sub_26F3CEC28();
    swift_getOpaqueTypeConformance2();
    sub_26F3B18CC(&qword_2806DEC98, &qword_2806DECA0, &qword_26F4A3E80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806DF3A8);
  }

  return result;
}

unint64_t sub_26F3CF3B0(uint64_t a1)
{
  sub_26F4A0178();

  if (a1)
  {
    v2 = 0xEA00000000002C64;
  }

  else
  {
    v2 = 0xE000000000000000;
  }

  MEMORY[0x2743907E0]((a1 << 63 >> 63) & 0x65646E617078652ELL, v2);

  v3 = (a1 << 62 >> 63) & 0x736E65646E6F632ELL;
  if ((a1 & 2) != 0)
  {
    v4 = 0xEA00000000006465;
  }

  else
  {
    v4 = 0xE000000000000000;
  }

  MEMORY[0x2743907E0](v3, v4);

  MEMORY[0x2743907E0](15965, 0xE200000000000000);
  return 0xD000000000000011;
}

BOOL sub_26F3CF4FC(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

void *sub_26F3CF52C@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *sub_26F3CF558@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

uint64_t sub_26F3CF618@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = sub_26F3B0E74(a1);

  *a2 = v3;
  return result;
}

uint64_t sub_26F3CF658()
{
  v1 = sub_26F49E678();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = (v0 + *(type metadata accessor for ExpandingText() + 48));
  v7 = *v6;
  v8 = *(v6 + 8);

  if ((v8 & 1) == 0)
  {
    sub_26F49FDE8();
    v9 = sub_26F49EC18();
    sub_26F49DBC8();

    sub_26F49E668();
    swift_getAtKeyPath();
    j__swift_release();
    (*(v2 + 8))(v5, v1);
    return v11[1];
  }

  return v7;
}

uint64_t sub_26F3CF7AC@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_26F49E678();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF3B0, &unk_26F4A8280);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = (&v17 - v10);
  v12 = type metadata accessor for ExpandingText();
  sub_26F3B8DD4(v1 + *(v12 + 52), v11, &qword_2806DF3B0, &unk_26F4A8280);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_26F49E2E8();
    return (*(*(v13 - 8) + 32))(a1, v11, v13);
  }

  else
  {
    v15 = *v11;
    sub_26F49FDE8();
    v16 = sub_26F49EC18();
    sub_26F49DBC8();

    sub_26F49E668();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v7, v3);
  }
}

uint64_t ExpandingText.init(_:isExpanded:_:buttonAction:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v13 = type metadata accessor for ExpandingText();
  v14 = v13[6];
  v15 = sub_26F49DAB8();
  (*(*(v15 - 8) + 56))(a9 + v14, 1, 1, v15);
  v16 = (a9 + v13[7]);
  v17 = a9 + v13[8];
  sub_26F49F338();
  *v17 = v30;
  *(v17 + 8) = *(&v30 + 1);
  v18 = (a9 + v13[9]);
  sub_26F49F338();
  *v18 = v30;
  v19 = v13[10];
  sub_26F49F338();
  *(a9 + v19) = v30;
  v20 = a9 + v13[11];
  sub_26F49F338();
  *v20 = v30;
  *(v20 + 8) = *(&v30 + 1);
  v21 = a9 + v13[12];
  *v21 = swift_getKeyPath();
  *(v21 + 8) = 0;
  v22 = v13[13];
  *(a9 + v22) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF3B0, &unk_26F4A8280);
  swift_storeEnumTagMultiPayload();
  v23 = a9 + v13[14];
  sub_26F49EE48();
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  result = sub_26F3D27D4(a6, a9 + v14);
  *v16 = a7;
  v16[1] = a8;
  return result;
}

uint64_t type metadata accessor for ExpandingText()
{
  result = qword_2806DF440;
  if (!qword_2806DF440)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

BOOL sub_26F3CFBF8()
{
  v1 = v0;
  v2 = type metadata accessor for ExpandingText();
  v3 = *(*(v2 - 1) + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v72 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = (&v72 - v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF4B8, &qword_26F4A41C0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v86 = &v72 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF4C0, &qword_26F4A8460);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v85 = &v72 - v14;
  v15 = sub_26F49EE38();
  v88 = *(v15 - 8);
  v16 = *(v88 + 64);
  MEMORY[0x28223BE20](v15);
  v18 = &v72 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = sub_26F49EE58();
  v89 = *(v87 - 8);
  v19 = v89[8];
  MEMORY[0x28223BE20](v87);
  v84 = &v72 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v23 = &v72 - v22;
  v24 = (v0 + v2[9]);
  v25 = *v24;
  v26 = v24[1];
  *&v92 = *v24;
  *(&v92 + 1) = v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DEAA0, &qword_26F4A2550);
  sub_26F49F348();
  if (v91 <= 0.0 || (v92 = *(v0 + v2[10]), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF4B0, &qword_26F4A41B8), sub_26F49F348(), *&v91 == 3))
  {
    if (qword_2806DE798 != -1)
    {
      swift_once();
    }

    v27 = sub_26F49DCA8();
    __swift_project_value_buffer(v27, qword_2806EA8D8);
    sub_26F3D2844(v0, v8);
    sub_26F3D2844(v0, v5);
    v28 = sub_26F49DC88();
    v29 = sub_26F49FDC8();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *&v31 = COERCE_DOUBLE(swift_slowAlloc());
      v91 = *&v31;
      *v30 = 134218242;
      v32 = *v8;
      v33 = v8[1];
      v34 = sub_26F49F9B8();
      sub_26F3D35E4(v8);
      *(v30 + 4) = v34;
      *(v30 + 12) = 2080;
      v35 = &v5[v2[9]];
      v36 = *v35;
      v37 = *(v35 + 1);
      *&v92 = v36;
      *(&v92 + 1) = v37;
      sub_26F49F348();
      if (v90 > 0.0)
      {
        v38 = 0xD000000000000012;
      }

      else
      {
        v38 = 0xD000000000000013;
      }

      if (v90 <= 0.0)
      {
        v39 = "all layoutsChecked";
      }

      else
      {
        v39 = "<LayoutOptions: [";
      }

      sub_26F3D35E4(v5);
      v40 = sub_26F3B38D0(v38, v39 | 0x8000000000000000, &v91);

      *(v30 + 14) = v40;
      _os_log_impl(&dword_26F39E000, v28, v29, "Text of len %ld hard isMultiline due to: %s", v30, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v31);
      MEMORY[0x274391F70](v31, -1, -1);
      MEMORY[0x274391F70](v30, -1, -1);
    }

    else
    {
      sub_26F3D35E4(v8);

      sub_26F3D35E4(v5);
    }

    return 1;
  }

  else
  {
    v83 = v15;
    *&v92 = v25;
    *(&v92 + 1) = v26;
    sub_26F49F348();
    v42 = v89[2];
    v73 = v2[14];
    v75 = v42;
    v42(v23, (v0 + v73), v87);
    if (!sub_26F3CF658())
    {
      sub_26F49ECA8();
    }

    v43 = sub_26F49EEA8();
    v45 = v44;
    v47 = v46;

    v48 = sub_26F49EE08();
    v49 = *(v48 - 8);
    v81 = *(v49 + 56);
    v82 = v48;
    v80 = v49 + 56;
    v81(v85, 1, 1);
    v50 = sub_26F49EEB8();
    v51 = *(v50 - 8);
    v52 = *(v51 + 56);
    v79 = v50;
    v78 = v52;
    v77 = v51 + 56;
    (v52)(v86, 1, 1);
    sub_26F49EE28();
    sub_26F49EE18();
    v54 = v53;
    sub_26F3B8D40(v43, v45, v47 & 1);

    v55 = *(v88 + 8);
    v88 += 8;
    v76 = v55;
    v55(v18, v83);
    v56 = v89[1];
    v57 = v87;
    ++v89;
    v74 = v56;
    v56(v23, v87);
    v75(v84, &v1[v73], v57);
    v58 = *(v1 + 1);
    *&v92 = *v1;
    *(&v92 + 1) = v58;
    sub_26F3BDC0C();

    v59 = sub_26F49EED8();
    v61 = v60;
    v63 = v62;
    if (!sub_26F3CF658())
    {
      sub_26F49ECA8();
    }

    v64 = sub_26F49EEA8();
    v66 = v65;
    v68 = v67;
    sub_26F3B8D40(v59, v61, v63 & 1);

    (v81)(v85, 1, 1, v82);
    v78(v86, 1, 1, v79);
    sub_26F49EE28();
    v69 = v84;
    sub_26F49EE18();
    v71 = v70;
    sub_26F3B8D40(v64, v66, v68 & 1);

    v76(v18, v83);
    v74(v69, v87);
    return v54 < v71;
  }
}

uint64_t sub_26F3D0438@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF528, &qword_26F4A4218);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v66 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF530, &unk_26F4A83F0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v66 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v66 - v16;
  v18 = sub_26F49F258();
  if (a1)
  {
    sub_26F49E768();
    v19 = sub_26F49EEC8();
    v71 = v18;
    v72 = v14;
    v20 = v19;
    v69 = v6;
    v22 = v21;
    v23 = v17;
    v25 = v24;
    sub_26F49ECA8();
    v73 = a3;
    v66 = sub_26F49EEA8();
    v67 = v10;
    v68 = a2;
    v27 = v26;
    v70 = v7;
    v29 = v28;
    v31 = v30;

    v32 = v25 & 1;
    v17 = v23;
    sub_26F3B8D40(v20, v22, v32);

    LOBYTE(v22) = sub_26F49EC78();
    sub_26F49DF78();
    v34 = v33;
    v36 = v35;
    v38 = v37;
    v40 = v39;
    v29 &= 1u;
    LOBYTE(v91) = v29;
    LOBYTE(v88) = 0;
    v41 = sub_26F49F248();
    KeyPath = swift_getKeyPath();
    v43 = sub_26F49EC78();
    sub_26F49DF78();
    LOBYTE(v88) = 0;
    *&v91 = v66;
    *(&v91 + 1) = v27;
    LOBYTE(v92[0]) = v29;
    *(&v92[0] + 1) = v31;
    LOBYTE(v92[1]) = v22;
    *(&v92[1] + 1) = v34;
    *&v92[2] = v36;
    *(&v92[2] + 1) = v38;
    *&v92[3] = v40;
    BYTE8(v92[3]) = 0;
    *&v92[4] = KeyPath;
    *(&v92[4] + 1) = v41;
    LOBYTE(v92[5]) = v43;
    v18 = v71;
    *(&v92[5] + 1) = v44;
    *&v92[6] = v45;
    *(&v92[6] + 1) = v46;
    *&v92[7] = v47;
    BYTE8(v92[7]) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF540, &unk_26F4A8430);
    sub_26F3D3734();
    v48 = v67;
    v14 = v72;
    sub_26F49F078();
    v77[6] = v92[5];
    v78[0] = v92[6];
    *(v78 + 9) = *(&v92[6] + 9);
    v77[2] = v92[1];
    v77[3] = v92[2];
    v77[4] = v92[3];
    v77[5] = v92[4];
    v77[0] = v91;
    v77[1] = v92[0];
    sub_26F3B6B4C(v77, &qword_2806DF540, &unk_26F4A8430);
    v49 = sub_26F49E6D8();
    v76 = 0;
    sub_26F3D0A2C(&v91);
    v83 = v92[3];
    v84 = v92[4];
    v85 = v92[5];
    v79 = v91;
    v80 = v92[0];
    v81 = v92[1];
    v82 = v92[2];
    v86[0] = v91;
    v86[1] = v92[0];
    v86[2] = v92[1];
    v86[3] = v92[2];
    v86[4] = v92[3];
    v86[5] = v92[4];
    v87 = v92[5];
    sub_26F3B8DD4(&v79, &v88, &qword_2806DF570, &qword_26F4A4260);
    a3 = v73;
    sub_26F3B6B4C(v86, &qword_2806DF570, &qword_26F4A4260);
    *(&v75[3] + 7) = v82;
    *(&v75[4] + 7) = v83;
    *(&v75[5] + 7) = v84;
    *(v75 + 7) = v79;
    *(&v75[1] + 7) = v80;
    *(&v75[6] + 7) = v85;
    *(&v75[2] + 7) = v81;
    LOBYTE(v22) = v76;
    v50 = sub_26F49F5A8();
    v88 = v49;
    LOBYTE(v89[0]) = v22;
    *(&v89[3] + 1) = v75[3];
    v51 = v75[3];
    v52 = v75[4];
    *(&v89[4] + 1) = v75[4];
    v53 = v75[5];
    *(&v89[5] + 1) = v75[5];
    *(&v89[5] + 10) = *(&v75[5] + 9);
    *(v89 + 1) = v75[0];
    v54 = v75[0];
    v55 = v75[1];
    *(&v89[1] + 1) = v75[1];
    v56 = v75[2];
    *(&v89[2] + 1) = v75[2];
    *&v90 = v50;
    *(&v90 + 1) = v57;
    v58 = v69;
    v59 = (v48 + *(v69 + 36));
    v60 = v89[6];
    v59[6] = v89[5];
    v59[7] = v60;
    v59[8] = v90;
    v61 = v89[2];
    v59[2] = v89[1];
    v59[3] = v61;
    v62 = v89[4];
    v59[4] = v89[3];
    v59[5] = v62;
    v63 = v89[0];
    *v59 = v88;
    v59[1] = v63;
    *(&v92[3] + 1) = v51;
    *(&v92[4] + 1) = v52;
    *(&v92[5] + 1) = v53;
    *(&v92[5] + 10) = *(&v75[5] + 9);
    *(v92 + 1) = v54;
    *(&v92[1] + 1) = v55;
    v91 = v49;
    LOBYTE(v92[0]) = v22;
    *(&v92[2] + 1) = v56;
    *&v92[7] = v50;
    *(&v92[7] + 1) = v57;
    sub_26F3B8DD4(&v88, &v74, &qword_2806DF578, &unk_26F4A8440);
    sub_26F3B6B4C(&v91, &qword_2806DF578, &unk_26F4A8440);
    sub_26F3BBAEC(v48, v17, &qword_2806DF528, &qword_26F4A4218);
    (*(v70 + 56))(v17, 0, 1, v58);
  }

  else
  {
    (*(v7 + 56))(v17, 1, 1, v6);
  }

  sub_26F3B8DD4(v17, v14, &qword_2806DF530, &unk_26F4A83F0);
  *a3 = v18;
  *(a3 + 8) = 256;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF538, &qword_26F4A4220);
  sub_26F3B8DD4(v14, a3 + *(v64 + 48), &qword_2806DF530, &unk_26F4A83F0);

  sub_26F3B6B4C(v17, &qword_2806DF530, &unk_26F4A83F0);
  sub_26F3B6B4C(v14, &qword_2806DF530, &unk_26F4A83F0);
}

uint64_t sub_26F3D0A2C@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF580, &qword_26F4A4268);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_26F4A3B80;
  sub_26F49F258();
  sub_26F3D0C04();
  v3 = sub_26F49F268();

  *(v2 + 32) = v3;
  sub_26F49F258();
  sub_26F3D0C04();
  v4 = sub_26F49F268();

  *(v2 + 40) = v4;
  sub_26F49F678();
  sub_26F49F688();
  MEMORY[0x274390330](v2);
  sub_26F49E268();
  sub_26F49F5A8();
  sub_26F49E0C8();
  v5 = sub_26F49F248();
  v6 = v19;
  v12[2] = v18;
  v12[3] = v19;
  v12[4] = v20;
  v7 = v20;
  v8 = v21;
  v13 = v21;
  v10 = v17;
  v12[0] = v16;
  v9 = v16;
  v12[1] = v17;
  *(a1 + 32) = v18;
  *(a1 + 48) = v6;
  *(a1 + 64) = v7;
  *a1 = v9;
  *(a1 + 16) = v10;
  *(a1 + 80) = v8;
  *(a1 + 88) = v5;
  *(a1 + 96) = 256;
  sub_26F3B8DD4(v12, v14, &qword_2806DF588, &unk_26F4A8450);
  v14[2] = v18;
  v14[3] = v19;
  v14[4] = v20;
  v15 = v21;
  v14[0] = v16;
  v14[1] = v17;
  return sub_26F3B6B4C(v14, &qword_2806DF588, &unk_26F4A8450);
}

uint64_t sub_26F3D0C04()
{
  v1 = sub_26F49E2E8();
  v30 = *(v1 - 8);
  v31 = v1;
  v2 = *(v30 + 64);
  MEMORY[0x28223BE20](v1);
  v4 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v28 - v6;
  v8 = sub_26F49DA98();
  v28 = *(v8 - 8);
  v29 = v8;
  v9 = *(v28 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DEFD8, &qword_26F4A3670);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v28 - v14;
  v16 = sub_26F49DAB8();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for ExpandingText();
  sub_26F3B8DD4(v0 + *(v21 + 24), v15, &qword_2806DEFD8, &qword_26F4A3670);
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    sub_26F3B6B4C(v15, &qword_2806DEFD8, &qword_26F4A3670);
    sub_26F3CF7AC(v7);
    v23 = v30;
    v22 = v31;
    (*(v30 + 104))(v4, *MEMORY[0x277CDFA90], v31);
    v24 = sub_26F49E2D8();
    v25 = *(v23 + 8);
    v25(v4, v22);
    v25(v7, v22);
  }

  else
  {
    (*(v17 + 32))(v20, v15, v16);
    sub_26F49DAA8();
    v26 = sub_26F49DA78();
    (*(v28 + 8))(v11, v29);
    (*(v17 + 8))(v20, v16);
    v24 = v26 == 2;
  }

  return v24 & 1;
}