void sub_1DD0034A4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA20D8, &unk_1DD10A050);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1DD0E32B0;
  if (qword_1ECCA13F8 != -1)
  {
    swift_once();
  }

  v1 = qword_1ECCD27B8;
  v2 = sub_1DD0DB95C();
  v3 = MEMORY[0x1E69D1510];
  *(v0 + 56) = v2;
  *(v0 + 64) = v3;
  *(v0 + 32) = v1;
  sub_1DD0DCF8C();
}

void sub_1DD003628()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA20D8, &unk_1DD10A050);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1DD0E07C0;
  if (qword_1ECCA1400 != -1)
  {
    swift_once();
  }

  v1 = qword_1ECCD27C0;
  v2 = sub_1DD0DB9AC();
  v3 = MEMORY[0x1E69D1510];
  *(v0 + 56) = v2;
  *(v0 + 64) = v3;
  *(v0 + 32) = v1;
  v4 = sub_1DD0DB95C();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  sub_1DD0DCF8C();
}

uint64_t sub_1DD00371C()
{
  v0 = sub_1DD0DB9AC();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = sub_1DD0DB99C();
  qword_1ECCD27C0 = result;
  return result;
}

uint64_t sub_1DD003770()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCABF60, &qword_1DD10A040);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = sub_1DD0DB9BC();
  qword_1ECCD27C8 = result;
  return result;
}

void sub_1DD0037D8()
{
  if (qword_1ECCA13F0 != -1)
  {
    swift_once();
  }

  sub_1DD0DCF8C();
}

void sub_1DD003834(uint64_t a1@<X8>)
{
  v2 = sub_1DD0DBD0C();
  OUTLINED_FUNCTION_2(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_33_1();
  v6(v5);
  v7 = *(type metadata accessor for PhoneIntent.Contact(0) + 20);
  if (qword_1ECCA13F8 != -1)
  {
    OUTLINED_FUNCTION_6_82();
  }

  *(a1 + v7) = qword_1ECCD27B8;

  sub_1DD0DCF8C();
}

uint64_t sub_1DD0038EC(uint64_t a1)
{
  v2 = sub_1DD003EA8(&qword_1ECCABF70, type metadata accessor for PhoneIntent.Contact);

  return MEMORY[0x1EEE3E098](a1, v2);
}

uint64_t sub_1DD003968(uint64_t a1)
{
  v2 = sub_1DD003EA8(&qword_1ECCABF70, type metadata accessor for PhoneIntent.Contact);

  return MEMORY[0x1EEE3E090](a1, v2);
}

uint64_t sub_1DD0039D4()
{
  v0 = sub_1DD0DEE9C();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1DD003A20(char a1)
{
  result = 7562617;
  switch(a1)
  {
    case 1:
      result = 28526;
      break;
    case 2:
      result = 0x206D7269666E6F63;
      break;
    case 3:
      result = 0x63207463656A6572;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1DD003AC0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v3 = a3(0);
  OUTLINED_FUNCTION_2(v3);
  v5 = *(v4 + 16);
  v6 = OUTLINED_FUNCTION_33_1();

  return v7(v6);
}

uint64_t sub_1DD003B38(uint64_t a1)
{
  v2 = sub_1DD003EA8(&qword_1ECCABFD8, type metadata accessor for PhoneIntent);

  return MEMORY[0x1EEE3D728](a1, v2);
}

uint64_t sub_1DD003BB4(uint64_t a1)
{
  v2 = sub_1DD003EA8(&qword_1ECCABFD8, type metadata accessor for PhoneIntent);

  return MEMORY[0x1EEE3D718](a1, v2);
}

uint64_t sub_1DD003C20(uint64_t a1)
{
  v2 = sub_1DD003EA8(&qword_1ECCABFD8, type metadata accessor for PhoneIntent);

  return MEMORY[0x1EEE3D720](a1, v2);
}

uint64_t sub_1DD003C8C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1DD0039D4();
  *a2 = result;
  return result;
}

uint64_t sub_1DD003CBC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1DD003A20(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1DD003CF8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1DD004348();
  v5 = sub_1DD00439C();
  v6 = sub_1DD0043F0();

  return MEMORY[0x1EEE3E530](a1, a2, v4, v5, v6);
}

uint64_t sub_1DD003D6C@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(v2 + 16);
  result = sub_1DD002F70(a2 + 1, *a1);
  *a2 = result;
  return result;
}

uint64_t sub_1DD003DB0(void *a1)
{
  v1 = [a1 internalGUID];
  if (v1)
  {
    v2 = v1;
    sub_1DD0DDFBC();
  }

  return OUTLINED_FUNCTION_33_1();
}

uint64_t sub_1DD003E30(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_2(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_1DD003EA8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1DD003EF0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PhoneIntent.Contact(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DD003F54(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3(0);
  OUTLINED_FUNCTION_2(v4);
  v6 = *(v5 + 16);
  v7 = OUTLINED_FUNCTION_33_1();
  v8(v7);
  return a2;
}

_BYTE *storeEnumTagSinglePayload for PhoneConfirmation(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1DD004170()
{
  result = qword_1ECCABFA8;
  if (!qword_1ECCABFA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCABFA8);
  }

  return result;
}

unint64_t sub_1DD00420C()
{
  result = qword_1ECCABFC0;
  if (!qword_1ECCABFC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCABFC0);
  }

  return result;
}

unint64_t sub_1DD004264()
{
  result = qword_1ECCABFC8;
  if (!qword_1ECCABFC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCABFC8);
  }

  return result;
}

unint64_t sub_1DD004348()
{
  result = qword_1ECCABFE0;
  if (!qword_1ECCABFE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCABFE0);
  }

  return result;
}

unint64_t sub_1DD00439C()
{
  result = qword_1ECCABFE8;
  if (!qword_1ECCABFE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCABFE8);
  }

  return result;
}

unint64_t sub_1DD0043F0()
{
  result = qword_1ECCABFF0;
  if (!qword_1ECCABFF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCABFF0);
  }

  return result;
}

id SIRINLUSystemDialogAct.toNluSystemDialogAct()@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1DD0DD6AC();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8, v4);
  OUTLINED_FUNCTION_16();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAC000, &unk_1DD0E0F60);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8, v7);
  v9 = &v26[-v8];
  v30 = &unk_1F5891A00;
  v31 = &unk_1F5897B28;
  v10 = swift_dynamicCastObjCProtocolConditional();
  if (v10)
  {
    swift_unknownObjectRetain();
  }

  v11 = [objc_opt_self() convertFromSystemDialogAct_];
  if (!v11)
  {
    if (qword_1EDE4F900 != -1)
    {
      OUTLINED_FUNCTION_0_0();
    }

    v19 = sub_1DD0DD8FC();
    __swift_project_value_buffer(v19, qword_1EDE57E00);
    v20 = sub_1DD0DD8EC();
    v21 = sub_1DD0DE6EC();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_1DCAFC000, v20, v21, "Tried to convert from legacy SDA to proto-backed SDA and failed", v22, 2u);
      MEMORY[0x1E12A8390](v22, -1, -1);
    }

    swift_unknownObjectRelease();
    v25 = sub_1DD0DB6EC();
    v23 = a1;
    v24 = 1;
    return __swift_storeEnumTagSinglePayload(v23, v24, 1, v25);
  }

  v12 = v11;
  result = [v11 data];
  if (result)
  {
    v14 = result;
    v15 = sub_1DD0DB6EC();
    v16 = sub_1DD0DAF2C();
    v18 = v17;

    v28 = v16;
    v29 = v18;
    v27 = 0;
    memset(&v26[16], 0, 32);
    sub_1DD0DD69C();
    sub_1DCE0A948();
    sub_1DD0DD6DC();

    swift_unknownObjectRelease();
    __swift_storeEnumTagSinglePayload(v9, 0, 1, v15);
    (*(*(v15 - 8) + 32))(a1, v9, v15);
    v23 = a1;
    v24 = 0;
    v25 = v15;
    return __swift_storeEnumTagSinglePayload(v23, v24, 1, v25);
  }

  __break(1u);
  return result;
}

id Siri_Nlu_External_SystemDialogAct.toLegacySystemDialogAct()()
{
  sub_1DD0DB6EC();
  sub_1DCE0A948();
  sub_1DD0DD6CC();
  v6 = objc_allocWithZone(MEMORY[0x1E69D1208]);
  v7 = OUTLINED_FUNCTION_17_1();
  sub_1DCC91E80(v7, v8);
  v9 = OUTLINED_FUNCTION_17_1();
  v11 = sub_1DCB3DEC0(v9, v10);
  if (v11)
  {
    v12 = v11;
    v4 = [objc_opt_self() convertSystemDialogAct_];
    v13 = OUTLINED_FUNCTION_17_1();
    sub_1DCB21A14(v13, v14);

    if (v4)
    {
      return v4;
    }
  }

  else
  {
    v15 = OUTLINED_FUNCTION_17_1();
    sub_1DCB21A14(v15, v16);
  }

  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v0 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v0, qword_1EDE57E00);
  v1 = sub_1DD0DD8EC();
  v2 = sub_1DD0DE6EC();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_1DCAFC000, v1, v2, "Tried to convert an SDA with no data", v3, 2u);
    MEMORY[0x1E12A8390](v3, -1, -1);
  }

  return 0;
}

uint64_t Array<A>.toLegacySystemDialogActs()(uint64_t a1)
{
  v2 = sub_1DD0DB6EC();
  v3 = OUTLINED_FUNCTION_9(v2);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3, v6);
  OUTLINED_FUNCTION_16();
  v10 = v9 - v8;
  v11 = MEMORY[0x1E69E7CC0];
  v23 = MEMORY[0x1E69E7CC0];
  v12 = *(a1 + 16);
  if (v12)
  {
    v14 = *(v7 + 16);
    v13 = v7 + 16;
    v22 = v14;
    v15 = a1 + ((*(v13 + 64) + 32) & ~*(v13 + 64));
    v16 = *(v13 + 56);
    v17 = (v13 - 8);
    do
    {
      v18 = v13;
      v22(v10, v15, v2);
      v19 = Siri_Nlu_External_SystemDialogAct.toLegacySystemDialogAct()();
      v20 = (*v17)(v10, v2);
      if (v19)
      {
        MEMORY[0x1E12A6920](v20);
        if (*((v23 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v23 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1DD0DE33C();
        }

        sub_1DD0DE3AC();
        v11 = v23;
      }

      v15 += v16;
      --v12;
      v13 = v18;
    }

    while (v12);
  }

  return v11;
}

uint64_t Array<A>.toNluSystemDialogActs()(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAC000, &unk_1DD0E0F60);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8, v4);
  v6 = &v28 - v5;
  v7 = sub_1DD0DB6EC();
  v8 = OUTLINED_FUNCTION_9(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v8, v13);
  OUTLINED_FUNCTION_16();
  v31 = v15 - v14;
  result = sub_1DCB08B14(a1);
  v17 = result;
  v18 = 0;
  v29 = v10;
  v30 = (v10 + 32);
  v19 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    if (v17 == v18)
    {
      return v19;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      result = MEMORY[0x1E12A72C0](v18, a1);
    }

    else
    {
      if (v18 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_17;
      }

      v20 = *(a1 + 8 * v18 + 32);
      result = swift_unknownObjectRetain();
    }

    v21 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    SIRINLUSystemDialogAct.toNluSystemDialogAct()(v6);
    swift_unknownObjectRelease();
    if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
    {
      result = sub_1DD004CD4(v6);
      ++v18;
    }

    else
    {
      v22 = *v30;
      (*v30)(v31, v6, v7);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v28 = v22;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v25 = *(v19 + 16);
        sub_1DCE19EC0();
        v19 = v26;
      }

      v24 = *(v19 + 16);
      if (v24 >= *(v19 + 24) >> 1)
      {
        sub_1DCE19EC0();
        v19 = v27;
      }

      *(v19 + 16) = v24 + 1;
      result = v28(v19 + ((*(v29 + 80) + 32) & ~*(v29 + 80)) + *(v29 + 72) * v24, v31, v7);
      v18 = v21;
    }
  }

  __break(1u);
LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_1DD004CD4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAC000, &unk_1DD0E0F60);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1DD004D3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v76 = a1;
  v70 = a2;
  v71 = sub_1DD0DB50C();
  v3 = OUTLINED_FUNCTION_9(v71);
  v69 = v4;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v3, v7);
  OUTLINED_FUNCTION_44_0();
  v68 = v8;
  MEMORY[0x1EEE9AC00](v9, v10);
  OUTLINED_FUNCTION_71_0();
  v67 = v11;
  OUTLINED_FUNCTION_12();
  v75 = sub_1DD0DB5BC();
  v12 = OUTLINED_FUNCTION_9(v75);
  v66 = v13;
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v12, v16);
  OUTLINED_FUNCTION_44_0();
  v63 = v17;
  MEMORY[0x1EEE9AC00](v18, v19);
  OUTLINED_FUNCTION_71_0();
  v64 = v20;
  OUTLINED_FUNCTION_12();
  v74 = sub_1DD0DB75C();
  v21 = OUTLINED_FUNCTION_9(v74);
  v65 = v22;
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v21, v25);
  OUTLINED_FUNCTION_10_2();
  v28 = v26 - v27;
  MEMORY[0x1EEE9AC00](v29, v30);
  OUTLINED_FUNCTION_71_0();
  v73 = v31;
  OUTLINED_FUNCTION_12();
  v32 = sub_1DD0DBAAC();
  OUTLINED_FUNCTION_9(v32);
  v34 = v33;
  v36 = *(v35 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v37, v38);
  v40 = &v61 - v39;
  v72 = sub_1DD0DB44C();
  v41 = OUTLINED_FUNCTION_9(v72);
  v43 = v42;
  v45 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v41, v46);
  OUTLINED_FUNCTION_10_2();
  v49 = v47 - v48;
  MEMORY[0x1EEE9AC00](v50, v51);
  OUTLINED_FUNCTION_8_77();
  sub_1DD0DC5EC();
  (*(v34 + 16))(v40, v76, v32);
  sub_1DD0DC5AC();
  v52 = v77;
  sub_1DD0DB7FC();

  if (!v52)
  {
    v54 = v73;
    sub_1DD0DB74C();
    v62 = v43;
    (*(v43 + 16))(v49, v2, v72);
    v77 = 0;
    sub_1DD0DB73C();
    v55 = v64;
    sub_1DD0DB5AC();
    v56 = v65;
    (*(v65 + 16))(v28, v54, v74);
    sub_1DD0DB58C();
    v57 = v67;
    sub_1DD0DB4FC();
    v58 = v66;
    (*(v66 + 16))(v63, v55, v75);
    sub_1DD0DB4EC();
    sub_1DD0DB6DC();
    v59 = v69;
    v60 = v71;
    (*(v69 + 16))(v68, v57, v71);
    sub_1DD0DB6AC();
    (*(v59 + 8))(v57, v60);
    (*(v58 + 8))(v55, v75);
    (*(v56 + 8))(v73, v74);
    return (*(v62 + 8))(v2, v72);
  }

  return result;
}

uint64_t sub_1DD0051A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  *a3 = a1;
  v5 = *(type metadata accessor for SystemGaveOptionsDialogActGenerator() + 44);
  v6 = type metadata accessor for USOKeyPath();
  v7 = *(*(v6 - 8) + 32);

  return v7(&a3[v5], a2, v6);
}

uint64_t sub_1DD005258@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v155 = a1;
  v127 = a4;
  v128 = sub_1DD0DB72C();
  v7 = OUTLINED_FUNCTION_9(v128);
  v126 = v8;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v7, v11);
  OUTLINED_FUNCTION_44_0();
  OUTLINED_FUNCTION_24_1();
  MEMORY[0x1EEE9AC00](v12, v13);
  OUTLINED_FUNCTION_71_0();
  v124 = v14;
  OUTLINED_FUNCTION_12();
  v164 = sub_1DD0DB5BC();
  v15 = OUTLINED_FUNCTION_9(v164);
  v17 = v16;
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v15, v20);
  OUTLINED_FUNCTION_10_2();
  v23 = v21 - v22;
  MEMORY[0x1EEE9AC00](v24, v25);
  OUTLINED_FUNCTION_71_0();
  v162 = v26;
  OUTLINED_FUNCTION_12();
  v161 = sub_1DD0DB66C();
  v27 = OUTLINED_FUNCTION_9(v161);
  v165 = v28;
  v30 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v27, v31);
  OUTLINED_FUNCTION_44_0();
  OUTLINED_FUNCTION_24_1();
  MEMORY[0x1EEE9AC00](v32, v33);
  OUTLINED_FUNCTION_71_0();
  v160 = v34;
  OUTLINED_FUNCTION_12();
  v159 = sub_1DD0DB44C();
  v35 = OUTLINED_FUNCTION_9(v159);
  v150 = v36;
  v38 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v35, v39);
  OUTLINED_FUNCTION_44_0();
  OUTLINED_FUNCTION_24_1();
  MEMORY[0x1EEE9AC00](v40, v41);
  OUTLINED_FUNCTION_71_0();
  v168 = v42;
  OUTLINED_FUNCTION_12();
  v156 = a3;
  v154 = sub_1DD0DBAAC();
  OUTLINED_FUNCTION_9(v154);
  v146 = v43;
  v45 = *(v44 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v46, v47);
  v151 = *(a2 + 16);
  v152 = &v120 - v48;
  v49 = sub_1DD0DBAAC();
  v123 = sub_1DD0DE97C();
  OUTLINED_FUNCTION_9(v123);
  v122 = v50;
  v52 = *(v51 + 64);
  OUTLINED_FUNCTION_10();
  v55 = MEMORY[0x1EEE9AC00](v53, v54);
  v158 = &v120 - v56;
  v167 = v49;
  v57 = *(v49 - 8);
  v58 = *(v57 + 64);
  MEMORY[0x1EEE9AC00](v55, v59);
  OUTLINED_FUNCTION_44_0();
  OUTLINED_FUNCTION_24_1();
  MEMORY[0x1EEE9AC00](v60, v61);
  OUTLINED_FUNCTION_71_0();
  v166 = v62;
  v63 = *(a2 + 24);
  v64 = *(v63 - 8);
  v65 = *(v64 + 64);
  v68 = MEMORY[0x1EEE9AC00](v66, v67);
  v70 = &v120 - ((v69 + 15) & 0xFFFFFFFFFFFFFFF0);
  v121 = v69;
  MEMORY[0x1EEE9AC00](v68, v71);
  OUTLINED_FUNCTION_71_0();
  v157 = v72;
  v144 = v4;
  v73 = *v4;

  v74 = sub_1DD0DE2FC();
  v173 = v74;
  v148 = v64 + 16;
  v147 = v64 + 32;
  v146 += 16;
  v141 = v57 + 32;
  v139 = v57 + 16;
  v135 = v150 + 2;
  v134 = v165 + 16;
  v133 = v17 + 16;
  v132 = v17 + 8;
  v131 = v165 + 8;
  v130 = v150 + 1;
  v140 = v57 + 8;
  v145 = v64;
  v75 = (v64 + 8);
  v76 = v63;
  v150 = v75;
  v138 = v17;
  v129 = v17 + 32;
  v77 = MEMORY[0x1E69E7CC0];
  v163 = v23;
  v153 = a2;
  v149 = v73;
  v142 = v76;
  while (1)
  {
    OUTLINED_FUNCTION_7_80();
    if (v74 == sub_1DD0DE3BC())
    {

      v112 = v124;
      sub_1DD0DB71C();
      sub_1DD0DB47C();
      sub_1DD0DB6DC();
      v113 = v126;
      v114 = v128;
      (*(v126 + 16))(v125, v112, v128);
      sub_1DD0DB68C();
      return (*(v113 + 8))(v112, v114);
    }

    v165 = v77;
    OUTLINED_FUNCTION_7_80();
    v78 = sub_1DD0DE39C();
    sub_1DD0DE32C();
    if (v78)
    {
      v79 = v157;
      (*(v145 + 16))(v157, v73 + ((*(v145 + 80) + 32) & ~*(v145 + 80)) + *(v145 + 72) * v74, v76);
      v80 = v153;
      v81 = v168;
      v82 = v158;
      goto LABEL_5;
    }

    result = sub_1DD0DEC5C();
    v81 = v168;
    v79 = v157;
    v82 = v158;
    if (v121 != 8)
    {
      break;
    }

    v170 = result;
    OUTLINED_FUNCTION_95_0(&v176);
    v108(v79, &v170, v76);
    swift_unknownObjectRelease();
    v80 = v153;
LABEL_5:
    sub_1DD0DE3FC();
    OUTLINED_FUNCTION_95_0(&v175);
    v83(v70, v79, v76);
    OUTLINED_FUNCTION_95_0(&v174);
    v84(v152, v155, v154);
    v85 = *(v80 + 32);
    sub_1DD0DBA9C();
    v86 = v167;
    if (__swift_getEnumTagSinglePayload(v82, 1, v167) == 1)
    {

      (*(v122 + 8))(v82, v123);
      sub_1DD006040();
      swift_allocError();
      *v115 = 0xD00000000000001DLL;
      v115[1] = 0x80000001DD129800;
      swift_willThrow();
      v116 = *v150;
      v117 = OUTLINED_FUNCTION_7_80();
      return v118(v117);
    }

    OUTLINED_FUNCTION_95_0(&v173);
    v87 = v166;
    v88(v166, v82, v86);
    v89 = *(v80 + 44);
    type metadata accessor for USOKeyPath();
    v90 = OUTLINED_FUNCTION_7_80();
    USOKeyPath.setValue(_:into:)(v90, v91, v92);
    sub_1DD0DC5EC();
    OUTLINED_FUNCTION_95_0(v171);
    v93(v143, v87, v86);
    sub_1DD0DC5AC();
    v94 = v169;
    sub_1DD0DB7FC();
    v169 = v94;
    if (v94)
    {

      OUTLINED_FUNCTION_95_0(&v172);
      v119(v166, v86);
      (*v150)(v70, v142);
    }

    v95 = v160;
    sub_1DD0DB65C();
    OUTLINED_FUNCTION_95_0(&v167);
    v96(v136, v81, v159);
    sub_1DD0DB64C();
    v97 = v162;
    sub_1DD0DB5AC();
    OUTLINED_FUNCTION_95_0(&v166);
    v98(v137, v95, v161);
    sub_1DD0DB57C();
    OUTLINED_FUNCTION_95_0(&v165);
    v99(v163, v97, v164);
    v77 = v165;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v73 = v149;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v109 = *(v77 + 16);
      sub_1DCE196A4();
      v77 = v110;
    }

    v76 = v142;
    v101 = *(v77 + 16);
    if (v101 >= *(v77 + 24) >> 1)
    {
      sub_1DCE196A4();
      v77 = v111;
    }

    v102 = v138;
    v103 = v164;
    (*(v138 + 8))(v162, v164);
    OUTLINED_FUNCTION_95_0(&v163);
    v104(v160, v161);
    OUTLINED_FUNCTION_95_0(&v162);
    v105(v168, v159);
    OUTLINED_FUNCTION_95_0(&v172);
    v106(v166, v167);
    (*v150)(v70, v76);
    *(v77 + 16) = v101 + 1;
    (*(v102 + 32))(v77 + ((*(v102 + 80) + 32) & ~*(v102 + 80)) + *(v102 + 72) * v101, v163, v103);
    v74 = v173;
  }

  __break(1u);
  return result;
}

uint64_t sub_1DD005D84@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v43 = a1;
  v41 = a2;
  v42 = sub_1DD0DB61C();
  v3 = OUTLINED_FUNCTION_9(v42);
  v40 = v4;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v3, v7);
  OUTLINED_FUNCTION_44_0();
  v39 = v8;
  MEMORY[0x1EEE9AC00](v9, v10);
  OUTLINED_FUNCTION_8_77();
  v11 = sub_1DD0DBAAC();
  OUTLINED_FUNCTION_9(v11);
  v13 = v12;
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v38 - v18;
  v20 = sub_1DD0DB44C();
  v21 = OUTLINED_FUNCTION_9(v20);
  v38 = v22;
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v21, v25);
  OUTLINED_FUNCTION_10_2();
  v28 = v26 - v27;
  MEMORY[0x1EEE9AC00](v29, v30);
  v32 = &v38 - v31;
  sub_1DD0DC5EC();
  (*(v13 + 16))(v19, v43, v11);
  sub_1DD0DC5AC();
  v33 = v44;
  sub_1DD0DB7FC();

  if (!v33)
  {
    sub_1DD0DB60C();
    v35 = v38;
    (*(v38 + 16))(v28, v32, v20);
    sub_1DD0DB5FC();
    sub_1DD0DB6DC();
    v36 = v40;
    v37 = v42;
    (*(v40 + 16))(v39, v2, v42);
    sub_1DD0DB6CC();
    (*(v36 + 8))(v2, v37);
    return (*(v35 + 8))(v32, v20);
  }

  return result;
}

unint64_t sub_1DD006040()
{
  result = qword_1ECCAC008[0];
  if (!qword_1ECCAC008[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECCAC008);
  }

  return result;
}

uint64_t sub_1DD0060BC(void *a1)
{
  v1 = a1[2];
  v2 = a1[3];
  v3 = a1[4];
  result = type metadata accessor for USOKeyPath();
  if (v5 <= 0x3F)
  {
    v6 = *(result - 8) + 64;
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

void sub_1DD006160(void *a1, void *a2, uint64_t a3)
{
  v3 = *(*(a3 + 24) - 8);
  v4 = *(v3 + 80);
  v5 = v4;
  v6 = ((v4 & 0xF8 ^ 0xFFFFFFFFFFFFFFF8) & (v5 + 8)) + ((((*(v3 + 64) + ((v5 + 48) & ~v5) + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  v7 = v4 & 0x100000;
  *a1 = *a2;
  if (v5 <= 7 && v7 == 0 && v6 <= 0x18)
  {
    v10 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
    v11 = ((a2 + 15) & 0xFFFFFFFFFFFFFFF8);
    *v10 = *v11;
    v10[1] = v11[1];
    v12 = ((v10 + 23) & 0xFFFFFFFFFFFFFFF8);
    v13 = ((v11 + 23) & 0xFFFFFFFFFFFFFFF8);
    *v12 = *v13;
    v12[1] = v13[1];
    v14 = ((v12 + 23) & 0xFFFFFFFFFFFFFFF8);
    v15 = ((v13 + 23) & 0xFFFFFFFFFFFFFFF8);
    v16 = v15[1];
    *v14 = *v15;
    v14[1] = v16;
    v17 = *(v3 + 16);

    sub_1DD0DCF8C();
  }

  sub_1DD0DCF8C();
}

uint64_t sub_1DD00633C(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;

  v5 = *(a2 + 24);
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = (a1 + (v7 | 7) + 8) & ~(v7 | 7);
  v9 = *(v8 + 8);

  v10 = (v8 + 23) & 0xFFFFFFFFFFFFFFF8;
  v11 = *(v10 + 8);

  v12 = (v10 + 23) & 0xFFFFFFFFFFFFFFF8;
  v13 = *(v12 + 8);

  v14 = (v7 + v12 + 16) & ~v7;
  (*(v6 + 8))(v14, v5);
  v15 = (*(v6 + 64) + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  v16 = *(v15 + 8);

  v17 = *(((v15 + 23) & 0xFFFFFFFFFFFFFFF8) + 8);
}

void sub_1DD006430(void *a1, void *a2, uint64_t a3)
{
  *a1 = *a2;
  v3 = *(*(a3 + 24) - 8);
  v4 = *(v3 + 80);
  v5 = (v4 | 7) + 8;
  v6 = ((a1 + v5) & ~(v4 | 7));
  v7 = ((a2 + v5) & ~(v4 | 7));
  *v6 = *v7;
  v6[1] = v7[1];
  v8 = ((v6 + 23) & 0xFFFFFFFFFFFFFFF8);
  v9 = ((v7 + 23) & 0xFFFFFFFFFFFFFFF8);
  *v8 = *v9;
  v8[1] = v9[1];
  v10 = ((v8 + 23) & 0xFFFFFFFFFFFFFFF8);
  v11 = ((v9 + 23) & 0xFFFFFFFFFFFFFFF8);
  v12 = v11[1];
  *v10 = *v11;
  v10[1] = v12;
  v13 = *(v3 + 16);

  sub_1DD0DCF8C();
}

void sub_1DD00659C(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v6 = *a1;
  *a1 = *a2;

  v7 = *(*(*(a3 + 24) - 8) + 80);
  v8 = (v7 | 7) + 8;
  v9 = ((a1 + v8) & ~(v7 | 7));
  v10 = ((a2 + v8) & ~(v7 | 7));
  *v9 = *v10;
  v11 = v9[1];
  v9[1] = v10[1];

  v12 = ((v9 + 23) & 0xFFFFFFFFFFFFFFF8);
  v13 = ((v10 + 23) & 0xFFFFFFFFFFFFFFF8);
  *v12 = *v13;
  v14 = v12[1];
  v12[1] = v13[1];

  v15 = ((v12 + 23) & 0xFFFFFFFFFFFFFFF8);
  v16 = ((v13 + 23) & 0xFFFFFFFFFFFFFFF8);
  v17 = v16[1];
  v18 = v15[1];
  *v15 = *v16;
  v15[1] = v17;
  sub_1DD0DCF8C();
}

void *sub_1DD006740(void *a1, void *a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = *(*(a3 + 24) - 8);
  v5 = *(v4 + 32);
  v6 = v4 + 32;
  v7 = *(v4 + 80);
  v8 = (v7 | 7) + 8;
  v9 = ((a1 + v8) & ~(v7 | 7));
  v10 = ((a2 + v8) & ~(v7 | 7));
  *v9 = *v10;
  v11 = ((v9 + 23) & 0xFFFFFFFFFFFFFFF8);
  v12 = ((v10 + 23) & 0xFFFFFFFFFFFFFFF8);
  *v11 = *v12;
  v13 = ((v11 + 23) & 0xFFFFFFFFFFFFFFF8);
  v14 = ((v12 + 23) & 0xFFFFFFFFFFFFFFF8);
  *v13 = *v14;
  v15 = (v13 + v7 + 16) & ~v7;
  v16 = (v14 + v7 + 16) & ~v7;
  v5(v15, v16);
  v17 = *(v6 + 32) + 7;
  v18 = ((v17 + v15) & 0xFFFFFFFFFFFFFFF8);
  v19 = ((v17 + v16) & 0xFFFFFFFFFFFFFFF8);
  *v18 = *v19;
  *((v18 + 23) & 0xFFFFFFFFFFFFFFF8) = *((v19 + 23) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

uint64_t *sub_1DD006834(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v6 = *a1;
  *a1 = *a2;

  v7 = *(a3 + 24);
  v8 = *(v7 - 8);
  v9 = *(v8 + 80);
  v10 = (v9 | 7) + 8;
  v11 = ((a1 + v10) & ~(v9 | 7));
  v12 = ((a2 + v10) & ~(v9 | 7));
  *v11 = *v12;
  v13 = v11[1];
  v11[1] = v12[1];

  v14 = ((v11 + 23) & 0xFFFFFFFFFFFFFFF8);
  v15 = ((v12 + 23) & 0xFFFFFFFFFFFFFFF8);
  *v14 = *v15;
  v16 = v14[1];
  v14[1] = v15[1];

  v17 = (v14 + 23) & 0xFFFFFFFFFFFFFFF8;
  v18 = ((v15 + 23) & 0xFFFFFFFFFFFFFFF8);
  v19 = *(v17 + 8);
  *v17 = *v18;

  v20 = (v9 + 16 + v17) & ~v9;
  v21 = (v18 + v9 + 16) & ~v9;
  (*(v8 + 40))(v20, v21, v7);
  v22 = *(v8 + 64) + 7;
  v23 = (v22 + v20) & 0xFFFFFFFFFFFFFFF8;
  v24 = v22 + v21;
  v25 = *(v23 + 8);
  v26 = (v24 & 0xFFFFFFFFFFFFFFF8) + 23;
  *v23 = *(v24 & 0xFFFFFFFFFFFFFFF8);

  v27 = (v23 + 23) & 0xFFFFFFFFFFFFFFF8;
  v28 = *(v27 + 8);
  *v27 = *(v26 & 0xFFFFFFFFFFFFFFF8);

  return a1;
}

uint64_t sub_1DD0069A4(uint64_t result, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 24);
  v5 = *(v4 - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(v5 + 80);
  if (v6 >= 0)
  {
    v9 = 0x7FFFFFFF;
  }

  else
  {
    v9 = v7;
  }

  if (!a2)
  {
    return 0;
  }

  v10 = v8 | 7;
  if (v9 >= a2)
  {
LABEL_29:
    if (v9 == 0x7FFFFFFF)
    {
      v19 = *result;
      if (*result >= 0xFFFFFFFFuLL)
      {
        LODWORD(v19) = -1;
      }

      return (v19 + 1);
    }

    else
    {
      return __swift_getEnumTagSinglePayload((v8 + ((((((result + v10 + 8) & ~v10) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16) & ~v8, v6, v4);
    }
  }

  else
  {
    v11 = ((v8 + 8) & ~v10) + ((((*(*(v4 - 8) + 64) + ((v8 + 48) & ~v8) + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
    v12 = a2 - v9;
    v13 = v11 & 0xFFFFFFF8;
    if ((v11 & 0xFFFFFFF8) != 0)
    {
      v14 = 2;
    }

    else
    {
      v14 = v12 + 1;
    }

    if (v14 >= 0x10000)
    {
      v15 = 4;
    }

    else
    {
      v15 = 2;
    }

    if (v14 < 0x100)
    {
      v15 = 1;
    }

    if (v14 >= 2)
    {
      v16 = v15;
    }

    else
    {
      v16 = 0;
    }

    switch(v16)
    {
      case 1:
        v17 = *(result + v11);
        if (!v17)
        {
          goto LABEL_29;
        }

        goto LABEL_25;
      case 2:
        v17 = *(result + v11);
        if (!v17)
        {
          goto LABEL_29;
        }

        goto LABEL_25;
      case 3:
        __break(1u);
        return result;
      case 4:
        v17 = *(result + v11);
        if (!v17)
        {
          goto LABEL_29;
        }

LABEL_25:
        v18 = v17 - 1;
        if (v13)
        {
          v18 = 0;
          LODWORD(v13) = *result;
        }

        result = v9 + (v13 | v18) + 1;
        break;
      default:
        goto LABEL_29;
    }
  }

  return result;
}

void sub_1DD006B34(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 24);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  if (v8 <= 0x7FFFFFFF)
  {
    v9 = 0x7FFFFFFF;
  }

  else
  {
    v9 = *(v7 + 84);
  }

  if (v8 >= 0)
  {
    v9 = 0x7FFFFFFF;
  }

  v10 = *(v7 + 80);
  v11 = ((((*(*(v6 - 8) + 64) + ((v10 + 48) & ~v10) + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + ((v10 + 8) & ~(v10 | 7)) + 16;
  if (v9 >= a3)
  {
    v15 = 0;
  }

  else
  {
    v12 = a3 - v9;
    if (((((*(*(v6 - 8) + 64) + ((v10 + 48) & ~v10) + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + ((v10 + 8) & ~(v10 | 7)) == -16)
    {
      v13 = v12 + 1;
    }

    else
    {
      v13 = 2;
    }

    if (v13 >= 0x10000)
    {
      v14 = 4;
    }

    else
    {
      v14 = 2;
    }

    if (v13 < 0x100)
    {
      v14 = 1;
    }

    if (v13 >= 2)
    {
      v15 = v14;
    }

    else
    {
      v15 = 0;
    }
  }

  if (a2 <= v9)
  {
    switch(v15)
    {
      case 1:
        a1[v11] = 0;
        if (a2)
        {
          goto LABEL_34;
        }

        break;
      case 2:
        *&a1[v11] = 0;
        if (a2)
        {
          goto LABEL_34;
        }

        break;
      case 3:
LABEL_45:
        __break(1u);
        break;
      case 4:
        *&a1[v11] = 0;
        goto LABEL_33;
      default:
LABEL_33:
        if (a2)
        {
LABEL_34:
          if (v9 == 0x7FFFFFFF)
          {
            if ((a2 & 0x80000000) != 0)
            {
              v18 = a2 & 0x7FFFFFFF;
            }

            else
            {
              v18 = (a2 - 1);
            }

            *a1 = v18;
          }

          else
          {
            v19 = (v10 + (((((&a1[(v10 | 7) + 8] & ~(v10 | 7)) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16) & ~v10;

            __swift_storeEnumTagSinglePayload(v19, a2, v8, v6);
          }
        }

        break;
    }
  }

  else
  {
    if (((((*(*(v6 - 8) + 64) + ((v10 + 48) & ~v10) + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + ((v10 + 8) & ~(v10 | 7)) == -16)
    {
      v16 = a2 - v9;
    }

    else
    {
      v16 = 1;
    }

    if (((((*(*(v6 - 8) + 64) + ((v10 + 48) & ~v10) + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + ((v10 + 8) & ~(v10 | 7)) != -16)
    {
      v17 = ~v9 + a2;
      bzero(a1, v11);
      *a1 = v17;
    }

    switch(v15)
    {
      case 1:
        a1[v11] = v16;
        break;
      case 2:
        *&a1[v11] = v16;
        break;
      case 3:
        goto LABEL_45;
      case 4:
        *&a1[v11] = v16;
        break;
      default:
        return;
    }
  }
}

id static SystemDialogActHelper.systemAskedUserToRepeat()()
{
  v0 = sub_1DD0DB9CC();
  v1 = OUTLINED_FUNCTION_9(v0);
  v35 = v2;
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v1, v5);
  OUTLINED_FUNCTION_16();
  v8 = v7 - v6;
  v9 = sub_1DD0DC58C();
  v10 = OUTLINED_FUNCTION_9(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v10, v15);
  OUTLINED_FUNCTION_16();
  v18 = v17 - v16;
  v19 = sub_1DD0DBB1C();
  v20 = OUTLINED_FUNCTION_9(v19);
  v22 = v21;
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v20, v25);
  OUTLINED_FUNCTION_16();
  v28 = v27 - v26;
  v29 = sub_1DD0DC5EC();
  v30 = *(v29 + 48);
  v31 = *(v29 + 52);
  swift_allocObject();
  sub_1DD0DC5DC();
  sub_1DD0DBAEC();
  sub_1DD0DC5CC();
  sub_1DD0DC57C();
  (*(v12 + 8))(v18, v9);
  sub_1DD0DC59C();
  sub_1DD0072B8();
  v32 = MEMORY[0x1E12A6E30](v8);
  (*(v35 + 8))(v8, v0);
  v33 = [objc_allocWithZone(MEMORY[0x1E69D2550]) initWithReference_];

  (*(v22 + 8))(v28, v19);
  return v33;
}

void sub_1DD007188()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2990, &qword_1DD0E8E30);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2600, &qword_1DD0E1660);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1DD0E15D0;
  *(v4 + 32) = v0;
  sub_1DD0DCF8C();
}

unint64_t sub_1DD0072B8()
{
  result = qword_1ECCAC090;
  if (!qword_1ECCAC090)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ECCAC090);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SystemDialogActHelper(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

uint64_t sub_1DD0073A8()
{
  v0 = sub_1DD0DDD3C();
  v1 = OUTLINED_FUNCTION_9(v0);
  v321 = v2;
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v1, v5);
  OUTLINED_FUNCTION_44_0();
  v311 = v6;
  OUTLINED_FUNCTION_29_0();
  MEMORY[0x1EEE9AC00](v7, v8);
  OUTLINED_FUNCTION_33_2();
  v310 = v9;
  OUTLINED_FUNCTION_29_0();
  MEMORY[0x1EEE9AC00](v10, v11);
  OUTLINED_FUNCTION_33_2();
  v326 = v12;
  OUTLINED_FUNCTION_29_0();
  MEMORY[0x1EEE9AC00](v13, v14);
  OUTLINED_FUNCTION_71_0();
  v316 = v15;
  OUTLINED_FUNCTION_12();
  v332 = sub_1DD0DDD7C();
  v16 = OUTLINED_FUNCTION_9(v332);
  v312 = v17;
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v16, v20);
  OUTLINED_FUNCTION_44_0();
  v304 = v21;
  OUTLINED_FUNCTION_29_0();
  MEMORY[0x1EEE9AC00](v22, v23);
  OUTLINED_FUNCTION_33_2();
  v325 = v24;
  OUTLINED_FUNCTION_29_0();
  MEMORY[0x1EEE9AC00](v25, v26);
  OUTLINED_FUNCTION_71_0();
  v335 = v27;
  OUTLINED_FUNCTION_12();
  v334 = sub_1DD0DDCFC();
  v28 = OUTLINED_FUNCTION_9(v334);
  v306 = v29;
  v31 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v28, v32);
  OUTLINED_FUNCTION_11_2();
  v333 = v33;
  OUTLINED_FUNCTION_12();
  v315 = sub_1DD0DDCCC();
  v34 = OUTLINED_FUNCTION_9(v315);
  v314 = v35;
  v37 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v34, v38);
  OUTLINED_FUNCTION_11_2();
  v313 = v39;
  OUTLINED_FUNCTION_12();
  v324 = sub_1DD0DDD5C();
  v40 = OUTLINED_FUNCTION_9(v324);
  v338 = v41;
  v43 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v40, v44);
  OUTLINED_FUNCTION_44_0();
  v327 = v45;
  OUTLINED_FUNCTION_29_0();
  MEMORY[0x1EEE9AC00](v46, v47);
  OUTLINED_FUNCTION_33_2();
  v336 = v48;
  OUTLINED_FUNCTION_29_0();
  MEMORY[0x1EEE9AC00](v49, v50);
  OUTLINED_FUNCTION_33_2();
  v337 = v51;
  OUTLINED_FUNCTION_29_0();
  MEMORY[0x1EEE9AC00](v52, v53);
  OUTLINED_FUNCTION_33_2();
  v331 = v54;
  OUTLINED_FUNCTION_29_0();
  MEMORY[0x1EEE9AC00](v55, v56);
  OUTLINED_FUNCTION_33_2();
  v330 = v57;
  OUTLINED_FUNCTION_29_0();
  MEMORY[0x1EEE9AC00](v58, v59);
  OUTLINED_FUNCTION_71_0();
  v317 = v60;
  OUTLINED_FUNCTION_12();
  v309 = sub_1DD0DD0DC();
  v61 = OUTLINED_FUNCTION_9(v309);
  v308 = v62;
  v64 = *(v63 + 64);
  MEMORY[0x1EEE9AC00](v61, v65);
  OUTLINED_FUNCTION_44_0();
  v307 = v66;
  OUTLINED_FUNCTION_29_0();
  MEMORY[0x1EEE9AC00](v67, v68);
  OUTLINED_FUNCTION_71_0();
  v320 = v69;
  OUTLINED_FUNCTION_12();
  v70 = sub_1DD0DD0CC();
  v71 = OUTLINED_FUNCTION_9(v70);
  v322 = v72;
  v323 = v71;
  v74 = *(v73 + 64);
  MEMORY[0x1EEE9AC00](v71, v75);
  OUTLINED_FUNCTION_44_0();
  v318 = v76;
  OUTLINED_FUNCTION_29_0();
  MEMORY[0x1EEE9AC00](v77, v78);
  OUTLINED_FUNCTION_71_0();
  v328 = v79;
  OUTLINED_FUNCTION_12();
  v80 = sub_1DD0DD0BC();
  v81 = OUTLINED_FUNCTION_9(v80);
  v339 = v82;
  v84 = *(v83 + 64);
  MEMORY[0x1EEE9AC00](v81, v85);
  OUTLINED_FUNCTION_44_0();
  v329 = v86;
  OUTLINED_FUNCTION_29_0();
  MEMORY[0x1EEE9AC00](v87, v88);
  v90 = &v297 - v89;
  v91 = sub_1DD0DD06C();
  v92 = OUTLINED_FUNCTION_9(v91);
  v94 = v93;
  v96 = *(v95 + 64);
  MEMORY[0x1EEE9AC00](v92, v97);
  OUTLINED_FUNCTION_11_2();
  v319 = v98;
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAC098, &qword_1DD10A450);
  v100 = *(*(v99 - 8) + 64);
  v102 = MEMORY[0x1EEE9AC00](v99 - 8, v101);
  v104 = &v297 - ((v103 + 15) & 0xFFFFFFFFFFFFFFF0);
  v106 = MEMORY[0x1EEE9AC00](v102, v105);
  v108 = &v297 - v107;
  MEMORY[0x1EEE9AC00](v106, v109);
  v111 = &v297 - v110;
  v112 = sub_1DD0DD09C();
  sub_1DCC621D4(v112);

  sub_1DD009AD0(v111, v108);
  v113 = sub_1DD0DD0FC();
  if (__swift_getEnumTagSinglePayload(v108, 1, v113) == 1)
  {
    sub_1DCB16D50(v108, &qword_1ECCAC098, &qword_1DD10A450);
    goto LABEL_7;
  }

  v305 = v0;
  v302 = v91;
  v303 = v94;
  sub_1DD0DD0EC();
  v114 = *(*(v113 - 8) + 8);
  v114(v108, v113);
  v115 = v339;
  v116 = *(v339 + 11);
  v117 = OUTLINED_FUNCTION_5_95();
  if (v116(v117) != *MEMORY[0x1E69A8ED8])
  {
    v125 = *(v115 + 1);
    v126 = OUTLINED_FUNCTION_5_95();
    v127(v126);
LABEL_7:
    if (qword_1EDE4F900 != -1)
    {
      goto LABEL_70;
    }

    goto LABEL_8;
  }

  v118 = *(v115 + 12);
  v119 = OUTLINED_FUNCTION_5_95();
  v301 = v120;
  v120(v119);
  (*(v303 + 32))(v319, v90, v302);
  v298 = v111;
  v121 = OUTLINED_FUNCTION_20_38();
  sub_1DD009AD0(v121, v122);
  if (__swift_getEnumTagSinglePayload(v104, 1, v113) == 1)
  {
    sub_1DCB16D50(v104, &qword_1ECCAC098, &qword_1DD10A450);
    v123 = v324;
    v124 = v332;
  }

  else
  {
    v136 = v329;
    sub_1DD0DD0EC();
    v114(v104, v113);
    v137 = OUTLINED_FUNCTION_5_95();
    v138 = v116(v137);
    v124 = v332;
    if (v138 == *MEMORY[0x1E69A8ED0])
    {
      v139 = OUTLINED_FUNCTION_5_95();
      v301(v139);
      v141 = v322;
      v140 = v323;
      v142 = v328;
      (*(v322 + 4))(v328, v136, v323);
      v143 = v318;
      (*(v141 + 2))(v318, v142, v140);
      v144 = *(v141 + 11);
      v145 = OUTLINED_FUNCTION_18_51();
      v147 = v146(v145);
      v123 = v324;
      v148 = v337;
      v149 = v338;
      v150 = v330;
      if (v147 == *MEMORY[0x1E69A8EE0])
      {
        v151 = *(v141 + 12);
        v152 = OUTLINED_FUNCTION_18_51();
        v153(v152);
        v154 = v308;
        v155 = v320;
        v156 = v309;
        (*(v308 + 4))(v320, v143, v309);
        v157 = v307;
        v154[2](v307, v155, v156);
        v158 = (v154[11])(v157, v156);
        v159 = v154[1];
        v160 = v331;
        if (v158 == *MEMORY[0x1E69A8EE8])
        {
          v161 = v157;
          v162 = v154[1];
          (v159)(v161, v156);
          v163 = v303;
          if (qword_1EDE4F900 != -1)
          {
            OUTLINED_FUNCTION_1_2();
            swift_once();
          }

          v164 = sub_1DD0DD8FC();
          OUTLINED_FUNCTION_92(v164, qword_1EDE57E00);
          v165 = sub_1DD0DD8EC();
          v166 = sub_1DD0DE6EC();
          v167 = os_log_type_enabled(v165, v166);
          v168 = v320;
          v169 = v328;
          if (v167)
          {
            v170 = OUTLINED_FUNCTION_50_0();
            OUTLINED_FUNCTION_46(v170);
            _os_log_impl(&dword_1DCAFC000, v165, v166, "User Authentication prompted. Returning", v148, 2u);
            OUTLINED_FUNCTION_62();
          }

          (v162)(v168, v156);
          (*(v322 + 1))(v169, v323);
          (*(v163 + 8))(v319, v302);
          v134 = v298;
          goto LABEL_11;
        }

        v339 = v154[1];
        (v159)(v320, v156);
        (*(v141 + 1))(v328, v140);
        (v339)(v157, v156);
        v149 = v338;
      }

      else
      {
        v292 = *(v141 + 1);
        (v292)(v142, v140);
        v293 = OUTLINED_FUNCTION_18_51();
        v292(v293);
        v160 = v331;
      }

      goto LABEL_22;
    }

    v171 = *(v339 + 1);
    v172 = OUTLINED_FUNCTION_5_95();
    v173(v172);
    v123 = v324;
  }

  v148 = v337;
  v149 = v338;
  v150 = v330;
  v160 = v331;
LABEL_22:
  v174 = v317;
  sub_1DD0DD05C();
  type metadata accessor for EntityTypeAndIdentifiersCollectionContainer();
  v175 = swift_allocObject();
  v176 = MEMORY[0x1E69E7CC8];
  v175[2] = MEMORY[0x1E69E7CC0];
  v175[3] = v176;
  v175[4] = 0;
  v175[5] = 0;
  v177 = v149;
  v179 = (v149 + 2);
  v178 = v149[2];
  (v178)(v150, v174, v123);
  v180 = v150;
  v182 = v177 + 11;
  v181 = v177[11];
  v183 = OUTLINED_FUNCTION_16_18();
  v339 = v184;
  v185 = (v184)(v183) == *MEMORY[0x1E69DAE18];
  v318 = v175;
  if (!v185)
  {
    v248 = v177 + 88;
    v249 = v177[1];
    v250 = OUTLINED_FUNCTION_16_18();
    v249(v250);
    v251 = v327;
    (v178)(v327, v317, v123);
    v252 = OUTLINED_FUNCTION_15_9();
    v253 = (v339)(v252);
    if (v253 != *MEMORY[0x1E69DAE58])
    {
      v281 = OUTLINED_FUNCTION_15_9();
      v249(v281);
      v282 = v298;
      if (qword_1EDE4F900 != -1)
      {
        OUTLINED_FUNCTION_1_2();
        swift_once();
      }

      v283 = sub_1DD0DD8FC();
      OUTLINED_FUNCTION_92(v283, qword_1EDE57E00);
      v284 = sub_1DD0DD8EC();
      v285 = sub_1DD0DE6EC();
      if (OUTLINED_FUNCTION_22(v285))
      {
        v286 = OUTLINED_FUNCTION_50_0();
        OUTLINED_FUNCTION_46(v286);
        OUTLINED_FUNCTION_8_0(&dword_1DCAFC000, v287, v288, "Neither type of collection or entity");
        OUTLINED_FUNCTION_62();
      }

      (v249)(v317, v123);
      v289 = OUTLINED_FUNCTION_11_73();
      v290(v289);
      v291 = v282;
      goto LABEL_67;
    }

    v339 = v249;
    v254 = v177[12];
    v255 = OUTLINED_FUNCTION_15_9();
    v256(v255);
    v257 = *v251;
    v258 = swift_projectBox();
    v259 = v321;
    v260 = v321[2];
    v261 = v326;
    v262 = v305;
    v260(v326, v258, v305);

    sub_1DD008D58(v318, v261);
    if (qword_1EDE4F900 != -1)
    {
      OUTLINED_FUNCTION_1_2();
      swift_once();
    }

    v263 = sub_1DD0DD8FC();
    OUTLINED_FUNCTION_92(v263, qword_1EDE57E00);
    v264 = v310;
    v260(v310, v261, v262);
    v265 = v311;
    v260(v311, v261, v262);
    v266 = sub_1DD0DD8EC();
    v267 = sub_1DD0DE6DC();
    if (OUTLINED_FUNCTION_22(v267))
    {
      v268 = swift_slowAlloc();
      v338 = swift_slowAlloc();
      v340 = v338;
      *v268 = 136315394;
      v337 = v266;
      v269 = v304;
      LODWORD(v336) = v248;
      sub_1DD0DDCEC();
      v270 = sub_1DD0DDD6C();
      v272 = v271;
      (*(v312 + 1))(v269, v332);
      v273 = v259[1];
      (v273)(v264, v262);
      v274 = sub_1DCB10E9C(v270, v272, &v340);

      *(v268 + 4) = v274;
      *(v268 + 12) = 2080;
      v275 = sub_1DD0DDCDC();
      v277 = v276;
      v278 = OUTLINED_FUNCTION_16_18();
      v273(v278);
      v279 = sub_1DCB10E9C(v275, v277, &v340);

      *(v268 + 14) = v279;
      v280 = v337;
      _os_log_impl(&dword_1DCAFC000, v337, v336, "bundleId=%s for entityId=%s", v268, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_80();
      OUTLINED_FUNCTION_62();

      (v273)(v326, v262);
    }

    else
    {

      v294 = v259[1];
      v294(v265, v262);
      v294(v264, v262);
      v294(v261, v262);
    }

    (v339)(v317, v324);
LABEL_66:
    v295 = OUTLINED_FUNCTION_11_73();
    v296(v295);
    v291 = v298;
LABEL_67:
    sub_1DCB16D50(v291, &qword_1ECCAC098, &qword_1DD10A450);
    return v318;
  }

  v186 = v177[12];
  v187 = OUTLINED_FUNCTION_16_18();
  v322 = v188;
  v323 = v177 + 12;
  v188(v187);
  v189 = *v180;
  v190 = swift_projectBox();
  (*(v314 + 16))(v313, v190, v315);

  v191 = sub_1DD0DDCBC();
  v193 = v336;
  v329 = *(v191 + 16);
  v330 = v191;
  if (!v329)
  {
LABEL_57:

    (*(v314 + 8))(v313, v315);
    (*(v338 + 8))(v317, v123);
    goto LABEL_66;
  }

  v194 = v179;
  v111 = 0;
  v327 = (v330 + ((*(v338 + 80) + 32) & ~*(v338 + 80)));
  LODWORD(v326) = *MEMORY[0x1E69DAE28];
  v195 = (v338 + 8);
  LODWORD(v311) = *MEMORY[0x1E69DAE58];
  v301 = (v321 + 2);
  v300 = v321 + 1;
  v310 = v306 + 16;
  v309 = v312 + 16;
  v308 = v312 + 88;
  LODWORD(v307) = *MEMORY[0x1E69DB098];
  v320 = (v312 + 8);
  v306 += 8;
  v299 = v312 + 96;
  *&v192 = 136315394;
  v297 = v192;
  v312 = v178;
  v321 = v182;
  v304 = (v338 + 8);
  v328 = v194;
  while (v111 < *(v330 + 16))
  {
    (v178)(v160, v327 + *(v338 + 72) * v111, v123);
    (v178)(v148, v160, v123);
    v196 = OUTLINED_FUNCTION_15_9();
    v197 = (v339)(v196);
    if (v197 == v326)
    {
      v198 = OUTLINED_FUNCTION_15_9();
      v322(v198);
      v199 = *v148;
      swift_projectBox();
      OUTLINED_FUNCTION_95_0(&v342);
      v200(v333);

      v201 = v335;
      sub_1DD0DDCEC();
      OUTLINED_FUNCTION_95_0(&v341);
      v202 = v325;
      v203(v325, v201, v124);
      OUTLINED_FUNCTION_95_0(&v340);
      v204 = OUTLINED_FUNCTION_20_38();
      v206 = v205(v204);
      if (v206 == v307)
      {
        OUTLINED_FUNCTION_95_0(&v331);
        v207 = OUTLINED_FUNCTION_20_38();
        v208(v207);
        v209 = *v202;
        v210 = v209[2];
        v211 = v209[3];
        v212 = v209[4];
        v213 = v209[5];

        if (qword_1EDE4F900 != -1)
        {
          OUTLINED_FUNCTION_1_2();
          swift_once();
        }

        v214 = sub_1DD0DD8FC();
        OUTLINED_FUNCTION_92(v214, qword_1EDE57E00);

        v215 = sub_1DD0DD8EC();
        v216 = sub_1DD0DE6DC();

        if (os_log_type_enabled(v215, v216))
        {
          v217 = swift_slowAlloc();
          v340 = swift_slowAlloc();
          *v217 = v297;
          *(v217 + 4) = sub_1DCB10E9C(v210, v211, &v340);
          *(v217 + 12) = 2080;
          *(v217 + 14) = sub_1DCB10E9C(v212, v213, &v340);
          _os_log_impl(&dword_1DCAFC000, v215, v216, "Custom Type=%s and typeName=%s", v217, 0x16u);
          swift_arrayDestroy();
          OUTLINED_FUNCTION_80();
          OUTLINED_FUNCTION_80();
        }

        v218 = v333;
        v219 = sub_1DD0DDCDC();
        sub_1DD008BB4(v219, v220, v210, v211, v212, v213);

        v124 = v332;
        (*v320)(v335, v332);
        OUTLINED_FUNCTION_95_0(&v338);
        v221(v218, v334);
        v160 = v331;
        v123 = v324;
        (*v195)(v331, v324);
        v178 = v312;
      }

      else
      {
        v232 = *v320;
        v233 = OUTLINED_FUNCTION_20_38();
        (v232)(v233);
        if (qword_1EDE4F900 != -1)
        {
          OUTLINED_FUNCTION_1_2();
          swift_once();
        }

        v234 = sub_1DD0DD8FC();
        OUTLINED_FUNCTION_92(v234, qword_1EDE57E00);
        v235 = sub_1DD0DD8EC();
        v236 = sub_1DD0DE6EC();
        if (os_log_type_enabled(v235, v236))
        {
          v237 = OUTLINED_FUNCTION_50_0();
          OUTLINED_FUNCTION_23_34(v237);
          _os_log_impl(&dword_1DCAFC000, v235, v238, "Not a custom entityIdentifier", v124, 2u);
          v124 = v194;
          v195 = v304;
          OUTLINED_FUNCTION_80();

          v239 = v335;
          v240 = v194;
        }

        else
        {

          v239 = v335;
          v240 = v124;
        }

        v232(v239, v240);
        OUTLINED_FUNCTION_95_0(&v338);
        v247(v333, v334);
        v160 = v331;
        (*v195)(v331, v123);
      }

      v194 = v328;
      goto LABEL_50;
    }

    v222 = *v195;
    v223 = OUTLINED_FUNCTION_15_9();
    (v222)(v223);
    (v178)(v193, v160, v123);
    v224 = (v339)(v193, v123);
    if (v224 == v311)
    {
      (v322)(v193, v123);
      v225 = *v193;
      swift_projectBox();
      OUTLINED_FUNCTION_95_0(&v333);
      v226 = v316;
      v227(v316);

      sub_1DD008D58(v318, v226);
      OUTLINED_FUNCTION_95_0(&v332);
      v228 = OUTLINED_FUNCTION_105();
      v178 = v312;
      v229(v228);
      v230 = v160;
      v231 = v123;
LABEL_48:
      v222(v230, v231);
      goto LABEL_49;
    }

    v222(v193, v123);
    if (qword_1EDE4F900 != -1)
    {
      OUTLINED_FUNCTION_1_2();
      swift_once();
    }

    v241 = sub_1DD0DD8FC();
    OUTLINED_FUNCTION_92(v241, qword_1EDE57E00);
    v242 = sub_1DD0DD8EC();
    v243 = sub_1DD0DE6EC();
    if (!os_log_type_enabled(v242, v243))
    {

      v230 = OUTLINED_FUNCTION_16_62();
      goto LABEL_48;
    }

    v244 = OUTLINED_FUNCTION_50_0();
    OUTLINED_FUNCTION_23_34(v244);
    _os_log_impl(&dword_1DCAFC000, v242, v245, "Collection without entity", v222, 2u);
    OUTLINED_FUNCTION_80();

    v246 = OUTLINED_FUNCTION_16_62();
    (v194)(v246);
LABEL_49:
    v194 = v328;
    v124 = v332;
LABEL_50:
    ++v111;
    v193 = v336;
    v148 = v337;
    if (v329 == v111)
    {
      goto LABEL_57;
    }
  }

  __break(1u);
LABEL_70:
  OUTLINED_FUNCTION_1_2();
  swift_once();
LABEL_8:
  v128 = sub_1DD0DD8FC();
  OUTLINED_FUNCTION_92(v128, qword_1EDE57E00);
  v129 = sub_1DD0DD8EC();
  v130 = sub_1DD0DE6EC();
  if (OUTLINED_FUNCTION_22(v130))
  {
    v131 = OUTLINED_FUNCTION_50_0();
    OUTLINED_FUNCTION_46(v131);
    OUTLINED_FUNCTION_8_0(&dword_1DCAFC000, v132, v133, "StatementOutcome is missing");
    OUTLINED_FUNCTION_62();
  }

  v134 = v111;
LABEL_11:
  sub_1DCB16D50(v134, &qword_1ECCAC098, &qword_1DD10A450);
  return 0;
}

uint64_t sub_1DD008BB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_beginAccess();

  sub_1DCB5D31C();
  v13 = *(*(v6 + 16) + 16);
  sub_1DCB5D3F4(v13);
  v14 = *(v6 + 16);
  *(v14 + 16) = v13 + 1;
  v15 = (v14 + 32 * v13);
  v15[4] = a1;
  v15[5] = a2;
  v15[6] = a5;
  v15[7] = a6;
  *(v6 + 16) = v14;
  swift_endAccess();
  swift_beginAccess();

  v16 = *(v6 + 24);
  swift_isUniquelyReferenced_nonNull_native();
  v18 = *(v6 + 24);
  sub_1DCC5FCB4(a3, a4, a1, a2);
  *(v6 + 24) = v18;
  return swift_endAccess();
}

void *sub_1DD008CD0()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[5];

  return v0;
}

uint64_t sub_1DD008D00()
{
  sub_1DD008CD0();

  return swift_deallocClassInstance();
}

void sub_1DD008D58(uint64_t a1, uint64_t a2)
{
  v177 = a2;
  v158 = a1;
  v2 = sub_1DD0DDD7C();
  v3 = OUTLINED_FUNCTION_9(v2);
  v152 = v4;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v3, v7);
  v9 = &v149 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v167 = sub_1DD0DDCFC();
  v10 = OUTLINED_FUNCTION_9(v167);
  v159 = v11;
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v10, v14);
  OUTLINED_FUNCTION_11_2();
  v166 = v15;
  OUTLINED_FUNCTION_12();
  v156 = sub_1DD0DDCCC();
  v16 = OUTLINED_FUNCTION_9(v156);
  v155 = v17;
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v16, v20);
  OUTLINED_FUNCTION_11_2();
  v154 = v21;
  OUTLINED_FUNCTION_12();
  v22 = sub_1DD0DDD4C();
  v23 = OUTLINED_FUNCTION_9(v22);
  v174 = v24;
  v175 = v23;
  v26 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v23, v27);
  v29 = &v149 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAC0A0, qword_1DD10A458);
  v31 = *(*(v30 - 8) + 64);
  MEMORY[0x1EEE9AC00](v30 - 8, v32);
  OUTLINED_FUNCTION_44_0();
  v176 = v33;
  OUTLINED_FUNCTION_29_0();
  MEMORY[0x1EEE9AC00](v34, v35);
  v37 = &v149 - v36;
  v38 = sub_1DD0DDD5C();
  v39 = OUTLINED_FUNCTION_9(v38);
  v168 = v40;
  v42 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](v39, v43);
  OUTLINED_FUNCTION_44_0();
  v169 = v44;
  OUTLINED_FUNCTION_29_0();
  MEMORY[0x1EEE9AC00](v45, v46);
  OUTLINED_FUNCTION_33_2();
  v172 = v47;
  OUTLINED_FUNCTION_29_0();
  v50 = MEMORY[0x1EEE9AC00](v48, v49);
  v52 = &v149 - v51;
  v54 = MEMORY[0x1EEE9AC00](v50, v53);
  v56 = (&v149 - v55);
  MEMORY[0x1EEE9AC00](v54, v57);
  v59 = &v149 - v58;
  if (qword_1EDE4F900 != -1)
  {
    goto LABEL_42;
  }

  while (1)
  {
    v60 = sub_1DD0DD8FC();
    v178 = __swift_project_value_buffer(v60, qword_1EDE57E00);
    v61 = sub_1DD0DD8EC();
    v62 = sub_1DD0DE6DC();
    v63 = os_log_type_enabled(v61, v62);
    v157 = v52;
    if (v63)
    {
      v64 = OUTLINED_FUNCTION_50_0();
      *v64 = 0;
      _os_log_impl(&dword_1DCAFC000, v61, v62, "Parsing EntityValue to find factoid and sub collection", v64, 2u);
      v52 = v157;
      OUTLINED_FUNCTION_80();
    }

    v65 = sub_1DD0DDD1C();
    sub_1DCC17B20(0x726577736E61, 0xE600000000000000, v65);

    if (__swift_getEnumTagSinglePayload(v37, 1, v38) == 1)
    {
      sub_1DCB16D50(v37, &qword_1ECCAC0A0, qword_1DD10A458);
      v37 = v166;
      v66 = v167;
      v29 = v168;
    }

    else
    {
      v67 = v168;
      v68 = *(v168 + 4);
      v69 = OUTLINED_FUNCTION_15_9();
      v70(v69);
      v67[2](v56, v59, v38);
      if ((v67[11])(v56, v38) == *MEMORY[0x1E69DAE70])
      {
        (v67[12])(v56, v38);
        v71.isa = v56->isa;
        v72 = swift_projectBox();
        v73 = v174;
        (*(v174 + 2))(v29, v72, v175);
        v74 = *(v73 + 11);
        v75 = OUTLINED_FUNCTION_18_51();
        if (v76(v75) == *MEMORY[0x1E69DADF0])
        {
          v77 = *(v73 + 12);
          v78 = OUTLINED_FUNCTION_18_51();
          v79(v78);
          v80 = *v29;
          v81 = *(v29 + 1);

          v82 = v158;
          v83 = *(v158 + 40);
          *(v158 + 32) = v80;
          *(v82 + 40) = v81;
          swift_bridgeObjectRetain_n();

          v84 = sub_1DD0DD8EC();
          v85 = sub_1DD0DE6DC();

          if (os_log_type_enabled(v84, v85))
          {
            v86 = v80;
            v87 = swift_slowAlloc();
            v88 = v2;
            v89 = swift_slowAlloc();
            v179[0] = v89;
            *v87 = 136315138;
            v90 = sub_1DCB10E9C(v86, v81, v179);

            *(v87 + 4) = v90;
            _os_log_impl(&dword_1DCAFC000, v84, v85, "Adding factoid=%s to container", v87, 0xCu);
            __swift_destroy_boxed_opaque_existential_1Tm(v89);
            v2 = v88;
            OUTLINED_FUNCTION_80();
            OUTLINED_FUNCTION_80();
          }

          else
          {
          }

          v29 = v168;
          v146 = *(v168 + 1);
          v147 = OUTLINED_FUNCTION_105();
          v148(v147);
          v37 = v166;
          v66 = v167;
          v52 = v157;
          goto LABEL_16;
        }

        v93 = v67[1];
        v94 = OUTLINED_FUNCTION_105();
        v95(v94);
        v96 = *(v73 + 1);
        v97 = OUTLINED_FUNCTION_18_51();
        v98(v97);
      }

      else
      {
        v91 = v67[1];
        v92 = OUTLINED_FUNCTION_105();
        (v91)(v92);
        (v91)(v56, v38);
      }

      v37 = v166;
      v66 = v167;
      v29 = v67;
      v52 = v157;
    }

    v99 = sub_1DD0DD8EC();
    v100 = sub_1DD0DE6DC();
    if (OUTLINED_FUNCTION_22(v100))
    {
      v101 = OUTLINED_FUNCTION_50_0();
      OUTLINED_FUNCTION_46(v101);
      OUTLINED_FUNCTION_8_0(&dword_1DCAFC000, v102, v103, "Factoid missing on entity");
      OUTLINED_FUNCTION_62();
    }

LABEL_16:
    v59 = v169;
    v104 = sub_1DD0DDD1C();
    v105 = v176;
    sub_1DCC17B20(0x73656372756F73, 0xE700000000000000, v104);

    if (__swift_getEnumTagSinglePayload(v105, 1, v38) == 1)
    {
      sub_1DCB16D50(v105, &qword_1ECCAC0A0, qword_1DD10A458);
      goto LABEL_36;
    }

    (*(v29 + 4))(v52, v105, v38);
    v106 = *(v29 + 2);
    v107 = v172;
    v108 = OUTLINED_FUNCTION_20_38();
    v175 = v110;
    v176 = v109;
    (v110)(v108);
    v173 = *(v29 + 11);
    v174 = v29 + 88;
    if (v173(v107, v38) != *MEMORY[0x1E69DAE18])
    {
      break;
    }

    v164 = *(v29 + 12);
    v165 = v29 + 96;
    v164(v107, v38);
    v56 = *v107;
    v111 = swift_projectBox();
    (*(v155 + 16))(v154, v111, v156);

    v177 = sub_1DD0DDCBC();
    v172 = *(v177 + 16);
    if (!v172)
    {
LABEL_34:

      (*(v155 + 8))(v154, v156);
      (*(v29 + 1))(v157, v38);
      return;
    }

    v52 = 0;
    v171 = v177 + ((v29[80] + 32) & ~v29[80]);
    v170 = *MEMORY[0x1E69DAE28];
    v162 = (v159 + 2);
    v163 = (v29 + 8);
    v161 = (v152 + 88);
    v160 = *MEMORY[0x1E69DB098];
    v153 = v152 + 8;
    ++v159;
    v152 += 96;
    *&v112 = 136315394;
    v149 = v112;
    v151 = v2;
    v150 = v9;
    while (v52 < *(v177 + 16))
    {
      v175(v59, v171 + *(v29 + 9) * v52, v38);
      v113 = OUTLINED_FUNCTION_105();
      v114 = (v173)(v113);
      if (v114 == v170)
      {
        v115 = OUTLINED_FUNCTION_105();
        (v164)(v115);
        v116 = *v59;
        v117 = swift_projectBox();
        (*v162)(v37, v117, v66);

        sub_1DD0DDCEC();
        v118 = (*v161)(v9, v2);
        if (v118 == v160)
        {
          OUTLINED_FUNCTION_95_0(&v180);
          v119(v9, v2);
          v120 = *(*v9 + 16);
          v56 = *(*v9 + 24);
          v122 = *(*v9 + 32);
          v121 = *(*v9 + 40);
          swift_bridgeObjectRetain_n();
          swift_bridgeObjectRetain_n();

          v123 = sub_1DD0DD8EC();
          v124 = sub_1DD0DE6DC();

          if (os_log_type_enabled(v123, v124))
          {
            v125 = swift_slowAlloc();
            v179[0] = swift_slowAlloc();
            *v125 = v149;
            *(v125 + 4) = sub_1DCB10E9C(v120, v56, v179);
            *(v125 + 12) = 2080;
            *(v125 + 14) = sub_1DCB10E9C(v122, v121, v179);
            _os_log_impl(&dword_1DCAFC000, v123, v124, "Custom Type=%s and typeName=%s", v125, 0x16u);
            swift_arrayDestroy();
            v2 = v151;
            OUTLINED_FUNCTION_80();
            v9 = v150;
            OUTLINED_FUNCTION_80();
          }

          v126 = v166;
          v127 = sub_1DD0DDCDC();
          v128 = v120;
          v37 = v126;
          sub_1DD008BB4(v127, v129, v128, v56, v122, v121);

          v66 = v167;
          (*v159)(v126, v167);
          v29 = v168;
          v59 = v169;
        }

        else
        {
          OUTLINED_FUNCTION_95_0(&v181);
          v136(v9, v2);
          v137 = v178;
          v56 = sub_1DD0DD8EC();
          v138 = sub_1DD0DE6EC();
          if (OUTLINED_FUNCTION_22(v138))
          {
            v139 = OUTLINED_FUNCTION_50_0();
            OUTLINED_FUNCTION_46(v139);
            _os_log_impl(&dword_1DCAFC000, v56, v137, "subEntityIdentifier Not a custom TypedValue", v59, 2u);
            v59 = v169;
            OUTLINED_FUNCTION_80();
          }

          (*v159)(v37, v66);
        }
      }

      else
      {
        v130 = *v163;
        v131 = OUTLINED_FUNCTION_105();
        v132(v131);
        v133 = v178;
        v56 = sub_1DD0DD8EC();
        v134 = sub_1DD0DE6DC();
        if (OUTLINED_FUNCTION_22(v134))
        {
          v135 = OUTLINED_FUNCTION_50_0();
          OUTLINED_FUNCTION_46(v135);
          _os_log_impl(&dword_1DCAFC000, v56, v133, "Sub collection doesn't contain entityIdentifiers", v59, 2u);
          v59 = v169;
          OUTLINED_FUNCTION_80();
        }
      }

      if (v172 == ++v52)
      {
        goto LABEL_34;
      }
    }

    __break(1u);
LABEL_42:
    OUTLINED_FUNCTION_1_2();
    swift_once();
  }

  v140 = *(v29 + 1);
  v140(v52, v38);
  v140(v107, v38);
LABEL_36:
  v141 = sub_1DD0DD8EC();
  v142 = sub_1DD0DE6EC();
  if (OUTLINED_FUNCTION_22(v142))
  {
    v143 = OUTLINED_FUNCTION_50_0();
    OUTLINED_FUNCTION_46(v143);
    OUTLINED_FUNCTION_8_0(&dword_1DCAFC000, v144, v145, "No sub collection found in properties");
    OUTLINED_FUNCTION_62();
  }
}

uint64_t sub_1DD009AD0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAC098, &qword_1DD10A450);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t dispatch thunk of TableSetFlowProvider.makeEmptyTableFlow()(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 48);
  OUTLINED_FUNCTION_8();
  v11 = v4 + *v4;
  v6 = *(v5 + 4);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v8 = OUTLINED_FUNCTION_26(v7);

  return v9(v8);
}

uint64_t dispatch thunk of TableSetFlowProvider.makeWholeTableFlow()(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 56);
  OUTLINED_FUNCTION_8();
  v11 = v4 + *v4;
  v6 = *(v5 + 4);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v8 = OUTLINED_FUNCTION_26(v7);

  return v9(v8);
}

uint64_t dispatch thunk of TableSetFlowProvider.makeWindowingConfiguration(promptType:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 64);
  OUTLINED_FUNCTION_8();
  v15 = (v10 + *v10);
  v12 = *(v11 + 4);
  v13 = swift_task_alloc();
  *(v4 + 16) = v13;
  *v13 = v4;
  v13[1] = sub_1DCB193FC;

  return v15(a1, a2, a3, a4);
}

uint64_t TaskFlowConfiguration.debugDescription.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = *(v0 + 24);
  sub_1DD0DEC1C();
  MEMORY[0x1E12A6780](0xD000000000000020, 0x80000001DD129920);
  MEMORY[0x1E12A6780](v1, v2);
  MEMORY[0x1E12A6780](0x79546B736174202CLL, 0xEC000000203A6570);
  sub_1DD0DEDBC();
  MEMORY[0x1E12A6780](41, 0xE100000000000000);
  return 0;
}

uint64_t TaskFlowType.debugDescription.getter()
{
  v1 = *v0;
  if (*(v0 + 8) == 1)
  {
    v2 = 0x6261696669646F6DLL;
    if (v1 != 1)
    {
      v2 = 0xD000000000000011;
    }

    if (v1)
    {
      return v2;
    }

    else
    {
      return 0x6B7361546F666E69;
    }
  }

  else
  {
    sub_1DD0DEC1C();

    v4 = sub_1DD0DF03C();
    MEMORY[0x1E12A6780](v4);

    MEMORY[0x1E12A6780](41, 0xE100000000000000);
    return 0xD000000000000027;
  }
}

BOOL static TaskFlowType.== infix(_:_:)(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(a2 + 8);
  if (*(a1 + 8) != 1)
  {
    if ((*(a2 + 8) & 1) == 0)
    {
      return v2 == v3;
    }

    return 0;
  }

  if (v2)
  {
    if (v2 != 1)
    {
      if (v3 > 1)
      {
        v8 = *(a2 + 8);
      }

      else
      {
        v8 = 0;
      }

      return (v8 & 1) != 0;
    }

    v5 = v3 == 1;
  }

  else
  {
    v5 = v3 == 0;
  }

  if (v5)
  {
    v7 = *(a2 + 8);
  }

  else
  {
    v7 = 0;
  }

  return (v7 & 1) != 0;
}

uint64_t TaskFlowConfiguration.taskName.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

void TaskFlowConfiguration.taskType.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  *a1 = *(v1 + 16);
  *(a1 + 8) = v2;
}

uint64_t TaskFlowConfiguration.init(taskName:taskType:)@<X0>(uint64_t result@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = *a3;
  v6 = *(a3 + 8);
  v7 = result & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v7 = HIBYTE(a2) & 0xF;
  }

  if (v5 >= 0)
  {
    v8 = 1;
  }

  else
  {
    v8 = *(a3 + 8);
  }

  if (v7 && v8)
  {
    *a4 = result;
    *(a4 + 8) = a2;
    *(a4 + 16) = v5;
    *(a4 + 24) = v6;
  }

  else
  {

    *a4 = 0;
    *(a4 + 8) = 0;
    *(a4 + 24) = 0;
    *(a4 + 16) = 0;
  }

  return result;
}

BOOL static TaskFlowConfiguration.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  v6 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (v6 || (v7 = sub_1DD0DF0AC(), result = 0, (v7 & 1) != 0))
  {
    if (!v3)
    {
      if (v2 == v4)
      {
        v10 = v5;
      }

      else
      {
        v10 = 1;
      }

      return (v10 & 1) == 0;
    }

    if (v2)
    {
      if (v2 != 1)
      {
        if (v4 > 1)
        {
          v12 = v5;
        }

        else
        {
          v12 = 0;
        }

        return (v12 & 1) != 0;
      }

      v9 = v4 == 1;
    }

    else
    {
      v9 = v4 == 0;
    }

    if (v9)
    {
      v11 = v5;
    }

    else
    {
      v11 = 0;
    }

    return (v11 & 1) != 0;
  }

  return result;
}

void Prompt.instrumentOnReprompt(_:)(uint64_t a1, uint64_t a2)
{
  v5 = swift_allocObject();
  v5[2] = a1;
  v5[3] = a2;
  v5[4] = v2;
  sub_1DD0DCF8C();
}

void ActingFlow.instrumentOnAttached(_:)()
{
  OUTLINED_FUNCTION_50();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v21[1] = v9;
  OUTLINED_FUNCTION_2_113(v7, v5, v3);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v14, v15);
  v16 = v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v16, v0);
  v17 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v18 = (v13 + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
  v19 = swift_allocObject();
  *(v19 + 16) = v4;
  *(v19 + 24) = v2;
  (*(v11 + 32))(v19 + v17, v16, v4);
  v20 = (v19 + v18);
  *v20 = v8;
  v20[1] = v6;
  sub_1DD0DCF8C();
}

void sub_1DD00A4EC()
{
  OUTLINED_FUNCTION_50();
  v28 = v1;
  v29 = v2;
  v25[1] = v4;
  v26 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v27 = v13;
  OUTLINED_FUNCTION_2_113(v3, v11, v9);
  v15 = v14;
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v18, v19);
  v20 = v25 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 16))(v20, v0);
  v21 = (*(v15 + 80) + 40) & ~*(v15 + 80);
  v22 = (v17 + v21 + 7) & 0xFFFFFFFFFFFFFFF8;
  v23 = swift_allocObject();
  *(v23 + 2) = v10;
  *(v23 + 3) = v8;
  *(v23 + 4) = v6;
  (*(v15 + 32))(&v23[v21], v20, v10);
  v24 = &v23[v22];
  *v24 = v26;
  v24[1] = v12;
  sub_1DD0DCF8C();
}

void sub_1DD00A644(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  sub_1DD0DCF8C();
}

void ActingFlow<>.instrumented(taskName:)()
{
  OUTLINED_FUNCTION_50();
  v27 = v0;
  v2 = v1;
  v4 = v3;
  v30 = v5;
  v31 = v6;
  v32 = v7;
  OUTLINED_FUNCTION_2_113(v7, v5, v3);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v12, v13);
  v14 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = *(v9 + 16);
  v29(v14, v15);
  v16 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v17 = (v11 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = swift_allocObject();
  *(v18 + 16) = v4;
  *(v18 + 24) = v2;
  v26 = v2;
  v28 = *(v9 + 32);
  v28(v18 + v16, v14, v4);
  v19 = (v18 + v17);
  v20 = v30;
  *v19 = v32;
  v19[1] = v20;

  v21 = v2;
  v22 = v27;
  ActingFlow.onAttached(_:)(sub_1DD00CABC, v18, v4, v21);

  (v29)(v14, v22, v4);
  v23 = swift_allocObject();
  v24 = v26;
  *(v23 + 16) = v4;
  *(v23 + 24) = v24;
  v28(v23 + v16, v14, v4);
  v25 = (v23 + v17);
  *v25 = v32;
  v25[1] = v20;

  sub_1DD00A644(sub_1DD00CB58, v23);
}

void sub_1DD00A8EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for SiriKitEventPayload(0);
  v6 = *(*(v5 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v5, v7);
  v9 = *(*(a4 - 8) + 64);
  v11 = MEMORY[0x1EEE9AC00](v8, v10);
  MEMORY[0x1EEE9AC00](v11, v12);
  sub_1DD0DCA6C();
}

void sub_1DD00AD90()
{
  OUTLINED_FUNCTION_50();
  OUTLINED_FUNCTION_0_1();
  v1 = *(v0 + 64);
  MEMORY[0x1EEE9AC00](v2, v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAAB70, &qword_1DD0E17E0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8, v6);
  sub_1DD0DCA6C();
}

void sub_1DD00B164(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  HIWORD(_8[0]) = 3887;
  sub_1DD00B244(a2, a3, _8 + 7, 0, 0, _8 + 6, a7, a8, v8, _8[0], _8[1], _8[2], _8[3], _8[4], _8[5], _8[6], _8[7], _8[8], _8[9], _8[10]);
  sub_1DD00AD90();
}

void sub_1DD00B244(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_50();
  a19 = v20;
  a20 = v21;
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v34 = type metadata accessor for SiriKitEventPayload(0);
  v35 = *(*(v34 - 8) + 64);
  MEMORY[0x1EEE9AC00](v34, v36);
  v38 = &a9 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(v29) = *v29;
  v39 = *v23;
  type metadata accessor for SiriKitEvent(0);
  *v38 = v29;
  *(v38 + 1) = v33;
  *(v38 + 2) = v31;
  bzero(v38 + 24, 0x90uLL);
  *(v38 + 21) = v27;
  *(v38 + 22) = v25;
  v38[184] = v39;
  swift_storeEnumTagMultiPayload();

  SiriKitEvent.__allocating_init(_:builder:)(v38, 0);
  OUTLINED_FUNCTION_49();
}

void ActingFlow.instrumented<A>(taskName:)()
{
  OUTLINED_FUNCTION_50();
  v46 = v1;
  v47 = v0;
  v3 = v2;
  v5 = v4;
  v40 = v4;
  v7 = v6;
  v51 = v8;
  v10 = v9;
  OUTLINED_FUNCTION_2_113(v9, v8, v6);
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v15, v16);
  v17 = &v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = *(v12 + 16);
  v50 = v12 + 16;
  v49(v17, v18);
  v19 = (*(v12 + 80) + 40) & ~*(v12 + 80);
  v48 = *(v12 + 80);
  v20 = (v14 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = swift_allocObject();
  *(v21 + 2) = v7;
  *(v21 + 3) = v5;
  *(v21 + 4) = v3;
  v22 = *(v12 + 32);
  v39 = v12 + 32;
  v44 = v19;
  v22(&v21[v19], v17, v7);
  v23 = v22;
  v43 = v22;
  v24 = &v21[v20];
  v25 = v10;
  v45 = v10;
  v26 = v51;
  *v24 = v10;
  v24[1] = v26;

  v27 = v3;
  v42 = v3;
  v28 = v47;
  ActingFlow.onAttached(_:)(sub_1DD00CBEC, v21, v7, v3);

  v41 = v53;
  v52 = v53;
  (v49)(v17, v28, v7);
  v29 = v20;
  v30 = swift_allocObject();
  v31 = v40;
  *(v30 + 2) = v7;
  *(v30 + 3) = v31;
  *(v30 + 4) = v27;
  v23(&v30[v19], v17, v7);
  v32 = &v30[v29];
  v33 = v51;
  *v32 = v25;
  v32[1] = v33;

  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECCA33E0, &unk_1DD0E1650);
  sub_1DD0DF22C();
  v34 = type metadata accessor for LifeCycleModifierFlow();
  OUTLINED_FUNCTION_1_138();
  WitnessTable = swift_getWitnessTable();
  ActingFlow.onSuccess<A>(_:)(sub_1DD00CC64, v30, v34, v31, WitnessTable);

  v53 = v54;
  (v49)(v17, v47, v7);
  v36 = swift_allocObject();
  *(v36 + 2) = v7;
  *(v36 + 3) = v31;
  *(v36 + 4) = v42;
  v43(&v36[v44], v17, v7);
  v37 = &v36[v29];
  v38 = v51;
  *v37 = v45;
  v37[1] = v38;

  ActingFlow.onFailure<A>(_:)(sub_1DD00CD80, v36, v34, v31, WitnessTable);

  OUTLINED_FUNCTION_49();
}

void sub_1DD00B694(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for SiriKitEventPayload(0);
  v6 = *(*(v5 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v5, v7);
  v9 = *(*(a4 - 8) + 64);
  v11 = MEMORY[0x1EEE9AC00](v8, v10);
  MEMORY[0x1EEE9AC00](v11, v12);
  sub_1DD0DCA6C();
}

void sub_1DD00BB38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  HIWORD(_8[0]) = 3887;
  sub_1DD00B244(a3, a4, _8 + 7, 0, 0, _8 + 6, a7, a8, v8, _8[0], _8[1], _8[2], _8[3], _8[4], _8[5], _8[6], _8[7], _8[8], _8[9], _8[10]);
  sub_1DD00AD90();
}

void sub_1DD00BC18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  HIBYTE(v11[0]) = 6;
  swift_getErrorValue();
  v6 = sub_1DD0DF18C();
  HIBYTE(v10[0]) = 18;
  sub_1DD00B244(a3, a4, v11 + 7, v6, v7, v10 + 7, v8, v9, v10[0], v10[1], v10[2], v10[3], v10[4], v11[0], v11[1], v11[2], v11[3], v11[4], v11[5], v11[6]);

  sub_1DD00AD90();
}

void sub_1DD00BD84()
{
  OUTLINED_FUNCTION_50();
  OUTLINED_FUNCTION_0_1();
  v1 = *(v0 + 64);
  v4 = MEMORY[0x1EEE9AC00](v2, v3);
  v9[5] = v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v4, v6);
  MEMORY[0x1EEE9AC00](v7, v8);
  sub_1DD0DCA6C();
}

uint64_t sub_1DD00C448(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  v8 = *(a7 - 8);
  v7[6] = v8;
  v9 = *(v8 + 64) + 15;
  v7[7] = swift_task_alloc();
  v7[8] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DD00C50C, 0, 0);
}

void sub_1DD00C50C()
{
  v7 = v0;
  if (qword_1EDE4D8C8 != -1)
  {
    OUTLINED_FUNCTION_0_34();
  }

  v1 = v0[8];
  v2 = v0[5];
  v3 = v0[6];
  v4 = v0[2];
  v5 = v0[3];
  v6 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v6, qword_1EDE57DA0);
  (*(v3 + 16))(v1, v4, v2);
  sub_1DD0DCF8C();
}

uint64_t sub_1DD00C83C()
{
  v1 = *(*v0 + 72);
  v2 = *(*v0 + 64);
  v3 = *(*v0 + 56);
  v6 = *v0;

  v4 = *(v6 + 8);

  return v4();
}

void sub_1DD00C968(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(*a3 + 80);
  type metadata accessor for Prompt();
  swift_getWitnessTable();
  sub_1DD00BD84();
}

uint64_t objectdestroy_2Tm_1()
{
  OUTLINED_FUNCTION_7_81();
  v4 = *(v3 + 8);
  v3 += 8;
  v5 = *(v3 + 72);
  v6 = *(v3 + 56);
  v7 = OUTLINED_FUNCTION_8_78();
  v8(v7);
  v0(*(v1 + v2 + 8));

  return swift_deallocObject();
}

uint64_t sub_1DD00CB70()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  OUTLINED_FUNCTION_0_1();
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v6 = (v0 + ((*(v5 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));
  return v7(v0 + v4, *v6, v6[1]);
}

void sub_1DD00CBEC()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  OUTLINED_FUNCTION_0_1();
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v7 = (v0 + ((*(v6 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  sub_1DD00B694(v0 + v5, *v7, v7[1], v8);
}

uint64_t sub_1DD00CC7C()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  OUTLINED_FUNCTION_0_1();
  v6 = (v0 + ((*(v5 + 64) + ((*(v4 + 80) + 40) & ~*(v4 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8));
  v7 = *v6;
  v8 = v6[1];
  return v9();
}

uint64_t objectdestroy_5Tm_0()
{
  OUTLINED_FUNCTION_7_81();
  v4 = *(v3 + 8);
  v3 += 8;
  v5 = *(v3 + 72);
  v6 = *(v3 + 56);
  v7 = OUTLINED_FUNCTION_8_78();
  v8(v7);
  v0(*(v1 + v2 + 8));

  return swift_deallocObject();
}

uint64_t sub_1DD00CD98()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  OUTLINED_FUNCTION_0_1();
  v6 = (v0 + ((*(v5 + 64) + ((*(v4 + 80) + 40) & ~*(v4 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8));
  v7 = *v6;
  v8 = v6[1];
  return v9();
}

uint64_t sub_1DD00CE18(uint64_t a1)
{
  v5 = v1[4];
  v4 = v1[5];
  OUTLINED_FUNCTION_0_1();
  v7 = (*(v6 + 80) + 48) & ~*(v6 + 80);
  v9 = (*(v8 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v9 + 15) & 0xFFFFFFFFFFFFFFF8;
  v11 = v1[2];
  v12 = v1[3];
  v13 = *(v1 + v9);
  v14 = swift_task_alloc();
  *(v2 + 16) = v14;
  *v14 = v2;
  v14[1] = sub_1DCB193FC;

  return sub_1DD00C448(a1, v11, v12, v1 + v7, v13, v1 + v10, v5);
}

void sub_1DD00CF50()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAC0C0, &qword_1DD10A5C8);
  __swift_allocate_value_buffer(v0, qword_1ECCAC0A8);
  __swift_project_value_buffer(v0, qword_1ECCAC0A8);
  sub_1DD0DC71C();
  sub_1DD0DCBAC();
}

void sub_1DD00CFD8(uint64_t *a1)
{
  v1 = *a1;
  sub_1DD0DBDEC();
  if (v3[3])
  {
    sub_1DD0DC1EC();
    if (swift_dynamicCast())
    {
      if (qword_1ECCA1418 != -1)
      {
        swift_once();
      }

      v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAC0C8, &qword_1DD10A5D0);
      __swift_project_value_buffer(v2, qword_1ECCD27D0);
      sub_1DD0DCBBC();
    }
  }

  else
  {
    sub_1DCC8BC14(v3);
  }

  sub_1DD0DCF1C();
}

uint64_t static Transformer<>.usoRunVoiceCommandTransformer.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1ECCA1410 != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAC0C0, &qword_1DD10A5C8);
  v3 = __swift_project_value_buffer(v2, qword_1ECCAC0A8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1DD00D25C()
{
  result = qword_1ECCA2C08;
  if (!qword_1ECCA2C08)
  {
    sub_1DD0DCF1C();
  }

  return result;
}

void sub_1DD00D2B4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAC0C8, &qword_1DD10A5D0);
  __swift_allocate_value_buffer(v0, qword_1ECCD27D0);
  __swift_project_value_buffer(v0, qword_1ECCD27D0);
  sub_1DD0DC1EC();
  sub_1DD0DCBAC();
}

void sub_1DD00D33C(uint64_t *a1)
{
  v1 = *a1;
  sub_1DD0DBEDC();
  if (v6)
  {
    sub_1DD0DCF8C();
  }

  if (qword_1EDE4F900 != -1)
  {
    swift_once();
  }

  v2 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v2, qword_1EDE57E00);
  v3 = sub_1DD0DD8EC();
  v4 = sub_1DD0DE6DC();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1DCAFC000, v3, v4, "Shortcut name could not be retrieved from USOGraph", v5, 2u);
    MEMORY[0x1E12A8390](v5, -1, -1);
  }

  sub_1DD0DCF1C();
}

SiriKitFlow::TaskType_optional __swiftcall TaskType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1DD0DF0FC();

  v5 = 0;
  v6 = 17;
  switch(v3)
  {
    case 0:
      goto LABEL_27;
    case 1:
      v5 = 1;
      goto LABEL_27;
    case 2:
      v5 = 2;
      goto LABEL_27;
    case 3:
      v5 = 3;
      goto LABEL_27;
    case 4:
      v5 = 4;
      goto LABEL_27;
    case 5:
      v5 = 5;
      goto LABEL_27;
    case 6:
      v5 = 6;
      goto LABEL_27;
    case 7:
      v5 = 7;
      goto LABEL_27;
    case 8:
      v5 = 8;
      goto LABEL_27;
    case 9:
      v5 = 9;
      goto LABEL_27;
    case 10:
      v5 = 10;
      goto LABEL_27;
    case 11:
      v5 = 11;
      goto LABEL_27;
    case 12:
      v5 = 12;
      goto LABEL_27;
    case 13:
      v5 = 13;
      goto LABEL_27;
    case 14:
      v5 = 14;
      goto LABEL_27;
    case 15:
      v5 = 15;
      goto LABEL_27;
    case 16:
      v5 = 16;
LABEL_27:
      v6 = v5;
      break;
    case 17:
      break;
    case 18:
      v6 = 18;
      break;
    case 19:
      v6 = 19;
      break;
    case 20:
      v6 = 20;
      break;
    case 21:
      v6 = 21;
      break;
    case 22:
      v6 = 22;
      break;
    case 23:
      v6 = 23;
      break;
    case 24:
      v6 = 24;
      break;
    case 25:
      v6 = 25;
      break;
    case 26:
      v6 = 26;
      break;
    case 27:
      v6 = 27;
      break;
    case 28:
      v6 = 28;
      break;
    case 29:
      v6 = 29;
      break;
    case 30:
      v6 = 30;
      break;
    case 31:
      v6 = 31;
      break;
    case 32:
      v6 = 32;
      break;
    case 33:
      v6 = 33;
      break;
    case 34:
      v6 = 34;
      break;
    default:
      v6 = 35;
      break;
  }

  *v2 = v6;
  return result;
}

unint64_t TaskType.rawValue.getter()
{
  result = 0xD000000000000013;
  switch(*v0)
  {
    case 1:
    case 0x17:
      result = 0xD000000000000010;
      break;
    case 2:
      result = 0xD000000000000014;
      break;
    case 4:
    case 0xE:
    case 0xF:
    case 0x16:
      result = 0xD000000000000016;
      break;
    case 5:
    case 0x11:
    case 0x12:
    case 0x1D:
    case 0x1F:
      result = 0xD000000000000012;
      break;
    case 7:
    case 8:
    case 9:
    case 0x20:
      result = 0xD000000000000019;
      break;
    case 0xA:
    case 0x13:
      result = 0xD00000000000001ELL;
      break;
    case 0xC:
      result = 0xD000000000000018;
      break;
    case 0x10:
    case 0x19:
    case 0x1B:
      result = 0xD000000000000015;
      break;
    case 0x14:
    case 0x15:
      result = 0xD000000000000011;
      break;
    case 0x18:
      result = 0xD00000000000001BLL;
      break;
    case 0x1A:
    case 0x22:
      result = 0xD000000000000017;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_1DD00D8DC()
{
  result = qword_1ECCAC0D0[0];
  if (!qword_1ECCAC0D0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECCAC0D0);
  }

  return result;
}

unint64_t sub_1DD00D954@<X0>(unint64_t *a1@<X8>)
{
  result = TaskType.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for TaskType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xDE)
  {
    if (a2 + 34 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 34) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 35;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x23;
  v5 = v6 - 35;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for TaskType(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 34 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 34) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xDE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xDD)
  {
    v6 = ((a2 - 222) >> 8) + 1;
    *result = a2 + 34;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 34;
        }

        break;
    }
  }

  return result;
}

uint64_t TaskWrapperFlow.__allocating_init(wrap:withTaskName:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(v3 + 48);
  v8 = *(v3 + 52);
  v9 = swift_allocObject();
  TaskWrapperFlow.init(wrap:withTaskName:)(a1, a2, a3);
  return v9;
}

uint64_t TaskWrapperFlow.init(wrap:withTaskName:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + *(*v3 + 112)) = 0;
  OUTLINED_FUNCTION_66();
  (*(*(*(v7 + 80) - 8) + 32))(v3 + *(v6 + 96));
  OUTLINED_FUNCTION_66();
  v9 = (v3 + *(v8 + 104));
  *v9 = a2;
  v9[1] = a3;
  return v3;
}

void sub_1DD00DC9C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA7470, &qword_1DD0E16E0);
  v1 = *(*(v0 - 8) + 64);
  v3 = MEMORY[0x1EEE9AC00](v0 - 8, v2);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = &v18 - v7;
  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_1_2();
    swift_once();
  }

  v9 = sub_1DD0DD8FC();
  v10 = __swift_project_value_buffer(v9, qword_1EDE57E00);
  v11 = *(v9 - 8);
  (*(v11 + 16))(v8, v10, v9);
  __swift_storeEnumTagSinglePayload(v8, 0, 1, v9);
  sub_1DCBCF6C8(v8, v5);
  if (__swift_getEnumTagSinglePayload(v5, 1, v9) == 1)
  {
    sub_1DCBCF738(v5);
  }

  else
  {
    v12 = sub_1DD0DD8EC();
    v13 = sub_1DD0DE6EC();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      *v14 = 136315650;
      v15 = sub_1DD0DEC3C();
      v17 = sub_1DCB10E9C(v15, v16, &v19);

      *(v14 + 4) = v17;
      *(v14 + 12) = 2048;
      *(v14 + 14) = 27;
      *(v14 + 22) = 2080;
      *(v14 + 24) = sub_1DCB10E9C(0xD00000000000003FLL, 0x80000001DD129A10, &v19);
      _os_log_impl(&dword_1DCAFC000, v12, v13, "FatalError at %s:%lu - %s", v14, 0x20u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_80();
      OUTLINED_FUNCTION_80();
    }

    (*(v11 + 8))(v5, v9);
  }

  static SiriKitLifecycle._logCrashToEventBus(_:)(0xD00000000000003FLL, 0x80000001DD129A10);
}

uint64_t sub_1DD00DF78(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v2[4] = *v1;
  return OUTLINED_FUNCTION_0_12(sub_1DD00DFB8);
}

uint64_t sub_1DD00DFB8()
{
  OUTLINED_FUNCTION_42();
  v1 = v0[3] + *(*v0[3] + 96);
  v2 = (*(*(v0[4] + 88) + 16))(v0[2], *(v0[4] + 80));
  v3 = v0[1];
  v4 = v2 & 1;

  return v3(v4);
}

void sub_1DD00E048()
{
  v1 = *(*v0 + 80);
  v2 = *(*v0 + 88);
  type metadata accessor for TaskWrapperFlow();
  swift_getWitnessTable();
  Flow.deferToExecuteAsync(_:)();
}

uint64_t sub_1DD00E0EC(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v2[4] = *v1;
  return OUTLINED_FUNCTION_0_12(sub_1DD00E12C);
}

uint64_t sub_1DD00E12C()
{
  if ((*(v0[3] + *(*v0[3] + 112)) & 1) == 0)
  {
    if (qword_1EDE4F900 != -1)
    {
      OUTLINED_FUNCTION_1_2();
      swift_once();
      v14 = v0[3];
    }

    v1 = sub_1DD0DD8FC();
    __swift_project_value_buffer(v1, qword_1EDE57E00);
    sub_1DD0DCF8C();
  }

  v3 = v0[3];
  v2 = v0[4];
  OUTLINED_FUNCTION_66();
  *(v3 + *(v4 + 112)) = 1;
  OUTLINED_FUNCTION_66();
  v6 = *(v5 + 96);
  v9 = *(v7 + 80);
  v8 = *(v7 + 88);
  v15 = (*(v8 + 40) + **(v8 + 40));
  v10 = *(*(v8 + 40) + 4);
  v11 = swift_task_alloc();
  v0[5] = v11;
  *v11 = v0;
  v11[1] = sub_1DD00E39C;
  v12 = v0[2];

  return v15(v12, v9, v8);
}

uint64_t sub_1DD00E39C()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v2 = *(v1 + 40);
  v3 = *v0;
  OUTLINED_FUNCTION_27();
  *v4 = v3;

  return MEMORY[0x1EEE6DFA0](sub_1DD00E488, 0, 0);
}

uint64_t sub_1DD00E488()
{
  if (**(v0 + 16) == 1)
  {
    if (qword_1EDE4F900 != -1)
    {
      OUTLINED_FUNCTION_1_2();
      swift_once();
    }

    v1 = *(v0 + 24);
    v2 = sub_1DD0DD8FC();
    __swift_project_value_buffer(v2, qword_1EDE57E00);
    sub_1DD0DCF8C();
  }

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1DD00E5FC()
{
  v1 = *(*(*v0 + 88) + 48);
  v2 = *(*v0 + 80);
  v3 = v0 + *(*v0 + 96);
  return v1(v2);
}

uint64_t TaskWrapperFlow.deinit()
{
  (*(*(*(*v0 + 80) - 8) + 8))(v0 + *(*v0 + 96));
  OUTLINED_FUNCTION_66();
  v2 = *(v0 + *(v1 + 104) + 8);

  return v0;
}

uint64_t TaskWrapperFlow.__deallocating_deinit()
{
  TaskWrapperFlow.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_1DD00E764(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1DCBCF434;

  return sub_1DD00DF78(a1);
}

uint64_t sub_1DD00E820(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1DCC467A0;

  return sub_1DD00E0EC(a1);
}

uint64_t sub_1DD00E8F8(uint64_t a1)
{
  v1 = *(a1 + 80);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t dispatch thunk of TaskWrapperFlow.onAsync(input:)(uint64_t a1)
{
  OUTLINED_FUNCTION_66();
  v4 = *(v3 + 160);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1DCBCF434;

  return v8(a1);
}

uint64_t dispatch thunk of TaskWrapperFlow.execute()(uint64_t a1)
{
  OUTLINED_FUNCTION_66();
  v4 = *(v3 + 176);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1DCC467A0;

  return v8(a1);
}

void sub_1DD00EC88()
{
  OUTLINED_FUNCTION_33();
  v1 = v0[25];
  v2 = sub_1DD0DDE9C();
  sub_1DCD01E78(v1, (v0 + 7));
  if (v0[10])
  {
    OUTLINED_FUNCTION_4_46();
  }

  sub_1DCD01EE8((v0 + 7));
  v0[26] = v2;
  if (qword_1EDE48CE8 != -1)
  {
    OUTLINED_FUNCTION_1_7();
  }

  v3 = qword_1EDE57D40;
  v4 = type metadata accessor for CATTemplateExecutor();
  v0[15] = v4;
  v0[16] = &off_1F58563F0;
  v0[12] = v3;
  v5 = *__swift_project_boxed_opaque_existential_1(v0 + 12, v4);
  sub_1DD0DCF8C();
}

uint64_t sub_1DD00EE08()
{
  OUTLINED_FUNCTION_33();
  v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v5 = v4;
  v7 = *(v6 + 216);
  v8 = *(v6 + 208);
  v9 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v10 = v9;
  *(v4 + 224) = v0;

  if (v0)
  {
    v11 = sub_1DD00EFB0;
  }

  else
  {
    *(v4 + 232) = v3;
    v11 = sub_1DD00EF48;
  }

  return MEMORY[0x1EEE6DFA0](v11, 0, 0);
}

uint64_t sub_1DD00EF48()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 12);
  v1 = v0[1];
  v2 = v0[29];

  return v1(v2);
}

uint64_t sub_1DD00EFB0()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 12);
  v1 = v0[1];
  v2 = v0[28];

  return v1();
}

void sub_1DD00F028()
{
  OUTLINED_FUNCTION_33();
  v1 = v0[25];
  v2 = sub_1DD0DDE9C();
  sub_1DCD01E78(v1, (v0 + 7));
  if (v0[10])
  {
    OUTLINED_FUNCTION_4_46();
  }

  sub_1DCD01EE8((v0 + 7));
  v0[26] = v2;
  if (qword_1EDE48CE8 != -1)
  {
    OUTLINED_FUNCTION_1_7();
  }

  v3 = qword_1EDE57D40;
  v4 = type metadata accessor for CATTemplateExecutor();
  v0[15] = v4;
  v0[16] = &off_1F58563F0;
  v0[12] = v3;
  v5 = *__swift_project_boxed_opaque_existential_1(v0 + 12, v4);
  sub_1DD0DCF8C();
}

uint64_t sub_1DD00F1A8()
{
  OUTLINED_FUNCTION_33();
  v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v5 = v4;
  v7 = *(v6 + 216);
  v8 = *(v6 + 208);
  v9 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v10 = v9;
  *(v4 + 224) = v0;

  if (v0)
  {
    v11 = sub_1DD00F2EC;
  }

  else
  {
    *(v4 + 232) = v3;
    v11 = sub_1DD00F2E8;
  }

  return MEMORY[0x1EEE6DFA0](v11, 0, 0);
}

void sub_1DD00F30C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = v4[11];
  v10 = v4[12];
  __swift_project_boxed_opaque_existential_1(v4 + 8, v9);
  if ((*(v10 + 32))(v9, v10))
  {
    v11 = swift_allocObject();
    v11[2] = a3;
    v11[3] = a4;
    v11[4] = a2;
    v11[5] = v4;
    sub_1DD0DCF8C();
  }

  sub_1DCCA3C08(v4 + 8, a1, a3, a4);
}

uint64_t sub_1DD00F450(void *a1, char a2, uint64_t (*a3)(void, void), uint64_t a4, uint64_t a5, uint64_t a6)
{
  v36 = a6;
  v11 = sub_1DD0DB0FC();
  v37 = *(v11 - 8);
  v12 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v11, v13);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA8EE0, &unk_1DD0ECCD0);
  v15 = *(*(v14 - 8) + 64);
  v17 = MEMORY[0x1EEE9AC00](v14 - 8, v16);
  v18 = &v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17, v19);
  v22 = &v32 - v21;
  if ((a2 & 1) == 0)
  {
    v33 = v20;
    v34 = a3;
    v35 = a4;
    v24 = *MEMORY[0x1E69C82E8];
    v25 = sub_1DD0DDFBC();
    sub_1DD010C14(v25, v26, a1);
    if (a5)
    {
      type metadata accessor for AppInformationResolver();
      swift_initStackObject();
      sub_1DD0DCF8C();
    }

    v27 = sub_1DD0DD23C();
    __swift_storeEnumTagSinglePayload(v22, 1, 1, v27);
    sub_1DCB28B08(v22, v18, &qword_1ECCA8EE0, &unk_1DD0ECCD0);
    v28 = (*(v33 + 80) + 24) & ~*(v33 + 80);
    v29 = swift_allocObject();
    *(v29 + 16) = a1;
    sub_1DCD0506C(v18, v29 + v28);
    v30 = (v29 + ((v15 + v28 + 7) & 0xFFFFFFFFFFFFFFF8));
    v31 = v35;
    *v30 = v34;
    v30[1] = v31;
    sub_1DCB96674(a1);
    sub_1DD0DCF8C();
  }

  return a3(a1, 1);
}

void sub_1DD00F798(uint64_t a1, uint64_t a2, char a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a3)
  {
    if (qword_1EDE4F900 != -1)
    {
      swift_once();
    }

    v10 = sub_1DD0DD8FC();
    __swift_project_value_buffer(v10, qword_1EDE57E00);
    v11 = sub_1DD0DD8EC();
    v12 = sub_1DD0DE6EC();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_1DCAFC000, v11, v12, "Unable to generate a snippet subtitle for TCC. Snippet will not have a subtitle", v13, 2u);
      MEMORY[0x1E12A8390](v13, -1, -1);
    }
  }

  else
  {
    sub_1DD010C78(a1, a2, a4);
  }

  v14 = swift_allocObject();
  v14[2] = a4;
  v14[3] = a6;
  v14[4] = a7;
  v15 = a4;
  sub_1DD0DCF8C();
}

uint64_t sub_1DD00F900(uint64_t a1, uint64_t a2, char a3, void *a4, uint64_t (*a5)(void *, void))
{
  if (a3)
  {
    if (qword_1EDE4F900 != -1)
    {
      swift_once();
    }

    v7 = sub_1DD0DD8FC();
    __swift_project_value_buffer(v7, qword_1EDE57E00);
    v8 = sub_1DD0DD8EC();
    v9 = sub_1DD0DE6EC();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_1DCAFC000, v8, v9, "Unable to generate a snippet title for TCC. Snippet will not have a title", v10, 2u);
      MEMORY[0x1E12A8390](v10, -1, -1);
    }
  }

  else
  {
    sub_1DCC36428(a1, a2, a4);
  }

  return a5(a4, 0);
}

void sub_1DD00FA10(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v49 = a5;
  v50 = a3;
  v46 = a4;
  v47 = a7;
  v48 = a6;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = OUTLINED_FUNCTION_9(AssociatedTypeWitness);
  v14 = v13;
  v16 = *(v15 + 64);
  v18 = MEMORY[0x1EEE9AC00](v12, v17);
  v51 = &v39 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18, v19);
  v21 = &v39 - v20;
  if (qword_1EDE4F908 != -1)
  {
    swift_once();
  }

  v44 = qword_1EDE57E18;
  sub_1DD0DE6DC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA25F0, &unk_1DD0E3370);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_1DD0E07C0;
  v52 = a2;
  sub_1DD0DD1FC();
  sub_1DD010B00(&qword_1EDE46330, MEMORY[0x1E69CE208]);
  v45 = a2;
  v23 = sub_1DD0DF03C();
  v25 = v24;
  *(v22 + 56) = MEMORY[0x1E69E6158];
  *(v22 + 64) = sub_1DCB34060();
  *(v22 + 32) = v23;
  *(v22 + 40) = v25;
  sub_1DD0DD7EC();

  v26 = v8[11];
  v27 = v8[12];
  __swift_project_boxed_opaque_existential_1(v8 + 8, v26);
  LODWORD(v44) = (*(v27 + 112))(v26, v27);
  v28 = v8[11];
  v29 = v8[12];
  __swift_project_boxed_opaque_existential_1(v8 + 8, v28);
  v43 = (*(v29 + 32))(v28, v29);
  v31 = v47;
  v30 = v48;
  (*(v47 + 176))(v48, v47);
  (*(v14 + 16))(v51, v21, AssociatedTypeWitness);
  v32 = (*(v14 + 80) + 56) & ~*(v14 + 80);
  v33 = (v16 + v32 + 7) & 0xFFFFFFFFFFFFFFF8;
  v40 = (v33 + 31) & 0xFFFFFFFFFFFFFFF8;
  v41 = (v33 + 15) & 0xFFFFFFFFFFFFFFF8;
  v34 = swift_allocObject();
  *(v34 + 2) = v30;
  *(v34 + 3) = v31;
  v35 = v46;
  v46 = v21;
  v42 = v8;
  v36 = v49;
  *(v34 + 4) = v35;
  *(v34 + 5) = v36;
  *(v34 + 6) = v8;
  (*(v14 + 32))(&v34[v32], v51, AssociatedTypeWitness);
  *&v34[v33] = v45;
  v37 = &v34[v41];
  *v37 = a1;
  v37[8] = v43 & 1;
  *&v34[v40] = v50;
  v38 = *(swift_getAssociatedConformanceWitness() + 240);
  sub_1DD0DCF8C();
}

void sub_1DD00FE3C(void *__src, void (*a2)(void *, uint64_t), uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, char a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  memcpy(__dst, __src, 0x49uLL);
  if (qword_1EDE4F908 != -1)
  {
    swift_once();
  }

  sub_1DD0DE6DC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA25F0, &unk_1DD0E3370);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1DD0E07C0;
  v26 = 0;
  v27 = 0xE000000000000000;
  memcpy(v25, __src, 0x49uLL);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA3260, &unk_1DD0E5AD0);
  sub_1DD0DEDBC();
  v19 = v26;
  v18 = v27;
  *(v17 + 56) = MEMORY[0x1E69E6158];
  *(v17 + 64) = sub_1DCB34060();
  *(v17 + 32) = v19;
  *(v17 + 40) = v18;
  sub_1DD0DD7EC();

  if ((__dst[72] & 1) == 0)
  {
    v23 = swift_allocObject();
    *(v23 + 16) = a10;
    *(v23 + 24) = a11;
    *(v23 + 32) = a2;
    *(v23 + 40) = a3;
    *(v23 + 48) = a7;
    *(v23 + 56) = a6;
    memcpy((v23 + 64), __dst, 0x48uLL);
    *(v23 + 136) = a4;
    *(v23 + 144) = a8 & 1;
    *(v23 + 152) = a9;
    sub_1DCB28B08(__dst, v25, &unk_1ECCA3260, &unk_1DD0E5AD0);
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    sub_1DD0DCF8C();
  }

  sub_1DD0DE6EC();
  sub_1DD0DD7EC();
  type metadata accessor for CommandFailure();
  swift_allocObject();
  v20 = CommandFailure.init(errorCode:reason:)(-1, 0xD000000000000023, 0x80000001DD129B90);
  sub_1DD010B00(qword_1EDE49B80, type metadata accessor for CommandFailure);
  v21 = swift_allocError();
  *v22 = v20;
  a2(v21, 1);
}

void sub_1DD0101A4(void *a1, char a2, void (*a3)(void *, uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, const void *a7, uint64_t a8, char a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v18 = *(*(AssociatedTypeWitness - 8) + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness, v19);
  if ((a2 & 1) == 0)
  {
    v27 = a4;
    v23 = *(a12 + 192);
    v25 = a1;
    v23(a11, a12);
    v24 = swift_allocObject();
    *(v24 + 16) = a11;
    *(v24 + 24) = a12;
    memcpy((v24 + 32), a7, 0x48uLL);
    *(v24 + 104) = a8;
    *(v24 + 112) = v25;
    *(v24 + 120) = a9 & 1;
    *(v24 + 128) = a5;
    *(v24 + 136) = a10;
    *(v24 + 144) = a6;
    *(v24 + 152) = a3;
    *(v24 + 160) = v27;
    v26 = *(swift_getAssociatedConformanceWitness() + 88);
    sub_1DCB96674(a1);
    sub_1DCBBF670(a7, v31);
    sub_1DD0DCF8C();
  }

  if (qword_1EDE4F908 != -1)
  {
    swift_once();
  }

  sub_1DD0DE6EC();
  sub_1DD0DD7EC();
  type metadata accessor for CommandFailure();
  swift_allocObject();
  v20 = CommandFailure.init(errorCode:reason:)(-1, 0xD000000000000026, 0x80000001DD129BC0);
  sub_1DD010B00(qword_1EDE49B80, type metadata accessor for CommandFailure);
  v21 = swift_allocError();
  *v22 = v20;
  a3(v21, 1);
}

void sub_1DD010548(uint64_t a1, void *a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v16 = type metadata accessor for AceOutput();
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8, v18);
  memcpy(__dst, a2, sizeof(__dst));
  v23 = *(*(a3 + 16) + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2600, &qword_1DD0E1660);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_1DD0E15D0;
  *(v19 + 32) = a4;
  v20 = a2[7] != 1;
  v21 = *(a12 + 320);
  v22 = a4;
  v21(a7, a11, a12);
  static AceOutputHelper.makeConfirmationViewOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();
}

uint64_t sub_1DD0107F8(uint64_t a1, char a2, void *a3, void *a4, uint64_t a5, uint64_t *a6, uint64_t (*a7)(uint64_t, uint64_t), uint64_t a8)
{
  v16 = type metadata accessor for SiriKitEventPayload(0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16, v18);
  v20 = v26 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a2 & 1) == 0)
  {
    v26[1] = a7;
    v22 = *a6;
    v23 = a6[1];
    v24 = a3[17];
    __swift_project_boxed_opaque_existential_1(a3 + 13, a3[16]);
    type metadata accessor for SiriKitEvent(0);
    v26[0] = a8;
    *v20 = 65;
    *(v20 + 1) = a4;
    *(v20 + 2) = a5;
    *(v20 + 3) = 3;
    *(v20 + 16) = 0;
    *(v20 + 5) = 0;
    *(v20 + 6) = 0;
    *(v20 + 7) = v22;
    *(v20 + 8) = v23;
    *(v20 + 9) = 0;
    *(v20 + 10) = 0;
    v20[88] = 4;
    swift_storeEnumTagMultiPayload();
    v25 = a4;
    sub_1DD0DCF8C();
  }

  if (qword_1EDE4F908 != -1)
  {
    swift_once();
  }

  sub_1DD0DE6EC();
  sub_1DD0DD7EC();
  return a7(a1, 1);
}

void sub_1DD010A1C(void *a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_99(AssociatedTypeWitness);
  v7 = v6;
  v9 = v8;
  v10 = (*(v7 + 80) + 56) & ~*(v7 + 80);
  v11 = (*(v9 + 64) + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_1DD00FE3C(a1, *(v1 + 32), *(v1 + 40), *(v1 + 48), v1 + v10, *(v1 + v11), *(v1 + ((v11 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((v11 + 15) & 0xFFFFFFFFFFFFFFF8) + 8), *(v1 + ((v11 + 31) & 0xFFFFFFFFFFFFFFF8)), v3, v4);
}

uint64_t sub_1DD010B00(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1DD010BD8(uint64_t a1, char a2)
{
  v4 = *(v2 + 16);
  v5 = *(v2 + 24);
  return sub_1DD0107F8(a1, a2 & 1, *(v2 + 32), *(v2 + 40), *(v2 + 48), (v2 + 56), *(v2 + 128), *(v2 + 136));
}

void sub_1DD010C14(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_1DD0DDF8C();

  [a3 setStyle_];
}

void sub_1DD010C78(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_1DD0DDF8C();
  [a3 setSubtitle_];
}

void sub_1DD010CE0(uint64_t a1, uint64_t a2, char a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA8EE0, &unk_1DD0ECCD0);
  OUTLINED_FUNCTION_99(v7);
  v9 = v8;
  v11 = v10;
  v12 = (*(v9 + 80) + 24) & ~*(v9 + 80);
  v13 = *(v3 + 16);
  v14 = (v3 + ((*(v11 + 64) + v12 + 7) & 0xFFFFFFFFFFFFFFF8));
  v15 = *v14;
  v16 = v14[1];

  sub_1DD00F798(a1, a2, a3 & 1, v13, v3 + v12, v15, v16);
}

uint64_t TCCResponses.promptToEnableApp(appDisplayInfo:deviceState:catOverrides:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[38] = a3;
  v4[39] = v3;
  v4[36] = a1;
  v4[37] = a2;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA8EE0, &unk_1DD0ECCD0) - 8) + 64) + 15;
  v4[40] = swift_task_alloc();
  v6 = sub_1DD0DD23C();
  v4[41] = v6;
  v7 = *(v6 - 8);
  v4[42] = v7;
  v8 = *(v7 + 64) + 15;
  v4[43] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DD010EAC, 0, 0);
}

uint64_t sub_1DD010EAC()
{
  v1 = *(v0 + 296);
  v2 = MEMORY[0x1E69E6158];
  v3 = sub_1DD0DDE9C();
  sub_1DCB28B08(v1, v0 + 56, &qword_1ECCA8AB0, &qword_1DD0E23E0);
  if (*(v0 + 80))
  {
    sub_1DCB18FF0((v0 + 56), v0 + 16);
    v4 = *(v0 + 48);
    __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
    sub_1DCCDE224();
  }

  sub_1DCB16D50(v0 + 56, &qword_1ECCA8AB0, &qword_1DD0E23E0);
  v6 = *(v0 + 320);
  v5 = *(v0 + 328);
  sub_1DCB28B08(*(v0 + 288), v6, &qword_1ECCA8EE0, &unk_1DD0ECCD0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v5) == 1)
  {
    sub_1DCB16D50(*(v0 + 320), &qword_1ECCA8EE0, &unk_1DD0ECCD0);
  }

  else
  {
    v8 = *(v0 + 336);
    v7 = *(v0 + 344);
    v9 = *(v0 + 328);
    (*(v8 + 32))(v7, *(v0 + 320), v9);
    v10 = sub_1DD0DD22C();
    *(v0 + 120) = MEMORY[0x1E69E6370];
    *(v0 + 96) = v10 & 1;
    sub_1DCB20B30((v0 + 96), (v0 + 128));
    swift_isUniquelyReferenced_nonNull_native();
    sub_1DCC60044();
    v11 = sub_1DD0DD21C();
    *(v0 + 184) = v2;
    *(v0 + 160) = v11;
    *(v0 + 168) = v12;
    sub_1DCB20B30((v0 + 160), (v0 + 192));
    swift_isUniquelyReferenced_nonNull_native();
    sub_1DCC60044();
    (*(v8 + 8))(v7, v9);
  }

  *(v0 + 352) = v3;
  v13 = *__swift_project_boxed_opaque_existential_1(*(v0 + 312), *(*(v0 + 312) + 24));
  v14 = swift_task_alloc();
  *(v0 + 360) = v14;
  *v14 = v0;
  v14[1] = sub_1DD0111C8;
  v15 = *(v0 + 304);

  return sub_1DCC6FD30(91, v3, 0, v15);
}

uint64_t sub_1DD0111C8(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 360);
  v6 = *(*v2 + 352);
  v7 = *v2;
  *(*v2 + 368) = v1;

  if (v1)
  {
    v8 = sub_1DD011388;
  }

  else
  {
    *(v4 + 376) = a1;
    v8 = sub_1DD011314;
  }

  return MEMORY[0x1EEE6DFA0](v8, 0, 0);
}

uint64_t sub_1DD011314()
{
  v1 = v0[43];
  v2 = v0[40];

  v3 = v0[1];
  v4 = v0[47];

  return v3(v4);
}

uint64_t sub_1DD011388()
{
  v1 = v0[43];
  v2 = v0[40];

  v3 = v0[1];
  v4 = v0[46];

  return v3();
}

uint64_t TCCResponses.confirmationRejected(deviceState:catOverrides:)(uint64_t a1, uint64_t a2)
{
  v3[21] = a2;
  v3[22] = v2;
  v3[20] = a1;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t sub_1DD011410()
{
  v1 = *(v0 + 160);
  v2 = sub_1DD0DDE9C();
  sub_1DCB28B08(v1, v0 + 56, &qword_1ECCA8AB0, &qword_1DD0E23E0);
  if (*(v0 + 80))
  {
    OUTLINED_FUNCTION_4_46();
  }

  sub_1DCB16D50(v0 + 56, &qword_1ECCA8AB0, &qword_1DD0E23E0);
  *(v0 + 184) = v2;
  v3 = *__swift_project_boxed_opaque_existential_1(*(v0 + 176), *(*(v0 + 176) + 24));
  v4 = swift_task_alloc();
  *(v0 + 192) = v4;
  *v4 = v0;
  v4[1] = sub_1DD011568;
  v5 = *(v0 + 168);

  return sub_1DCC6FD30(84, v2, 0, v5);
}

uint64_t sub_1DD011568(uint64_t a1)
{
  v4 = *(*v2 + 192);
  v5 = *(*v2 + 184);
  v9 = *v2;

  v7 = *(v9 + 8);
  if (!v1)
  {
    v6 = a1;
  }

  return v7(v6);
}

uint64_t TCCResponses.confirmationCancelled(deviceState:catOverrides:)(uint64_t a1, uint64_t a2)
{
  v3[21] = a2;
  v3[22] = v2;
  v3[20] = a1;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t sub_1DD0116A4()
{
  v1 = *(v0 + 160);
  v2 = sub_1DD0DDE9C();
  sub_1DCB28B08(v1, v0 + 56, &qword_1ECCA8AB0, &qword_1DD0E23E0);
  if (*(v0 + 80))
  {
    OUTLINED_FUNCTION_4_46();
  }

  sub_1DCB16D50(v0 + 56, &qword_1ECCA8AB0, &qword_1DD0E23E0);
  *(v0 + 184) = v2;
  v3 = *__swift_project_boxed_opaque_existential_1(*(v0 + 176), *(*(v0 + 176) + 24));
  v4 = swift_task_alloc();
  *(v0 + 192) = v4;
  *v4 = v0;
  v4[1] = sub_1DD01180C;
  v5 = *(v0 + 168);

  return sub_1DCC6FD30(83, v2, 0, v5);
}

void static TCCTemplates.promptToEnableApp(appDisplayInfo:deviceState:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA8EE0, &unk_1DD0ECCD0);
  v9 = OUTLINED_FUNCTION_99(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v9, v14);
  v16 = &v31 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAAB70, &qword_1DD0E17E0);
  v18 = OUTLINED_FUNCTION_20_0(v17);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18, v21);
  v23 = &v31 - v22;
  v24 = sub_1DD0DE4BC();
  __swift_storeEnumTagSinglePayload(v23, 1, 1, v24);
  sub_1DCB17C3C(a1, v16, &qword_1ECCA8EE0, &unk_1DD0ECCD0);
  sub_1DCB17C3C(a2, v32, &qword_1ECCA8AB0, &qword_1DD0E23E0);
  v25 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v26 = (v13 + v25 + 7) & 0xFFFFFFFFFFFFFFF8;
  v27 = swift_allocObject();
  *(v27 + 16) = 0;
  *(v27 + 24) = 0;
  sub_1DCD0506C(v16, v27 + v25);
  v28 = v27 + v26;
  v29 = v32[1];
  *v28 = v32[0];
  *(v28 + 16) = v29;
  *(v28 + 32) = v33;
  v30 = (v27 + ((v26 + 47) & 0xFFFFFFFFFFFFFFF8));
  *v30 = a3;
  v30[1] = a4;
  sub_1DD0DCF8C();
}

void sub_1DD011A24()
{
  OUTLINED_FUNCTION_211();
  OUTLINED_FUNCTION_33();
  v1 = *(v0 + 120);
  sub_1DD0DDE9C();
  OUTLINED_FUNCTION_15_64();
}

uint64_t sub_1DD011BA0()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_15_1();
  *v3 = v2;
  v5 = v4[18];
  v6 = v4[17];
  v7 = v4[16];
  v8 = *v1;
  OUTLINED_FUNCTION_27();
  *v9 = v8;
  *(v11 + 152) = v10;
  *(v11 + 160) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v12, v13, v14);
}

uint64_t sub_1DD011CDC()
{
  OUTLINED_FUNCTION_39();
  v1 = *(v0 + 152);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  v2 = [v1 dialog];
  sub_1DCE5993C();
  v3 = sub_1DD0DE2EC();

  if (sub_1DCB08B14(v3))
  {
    sub_1DCB35460(0, (v3 & 0xC000000000000001) == 0, v3);
    if ((v3 & 0xC000000000000001) != 0)
    {
      v4 = MEMORY[0x1E12A72C0](0, v3);
    }

    else
    {
      v4 = *(v3 + 32);
    }

    v5 = v4;
    v6 = *(v0 + 152);

    v7 = [v5 fullPrint];

    sub_1DD0DDFBC();
  }

  else
  {
    v8 = *(v0 + 152);
  }

  v9 = OUTLINED_FUNCTION_36_3();

  return v10(v9);
}

uint64_t sub_1DD011E18()
{
  OUTLINED_FUNCTION_42();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  OUTLINED_FUNCTION_29();
  v2 = *(v0 + 160);

  return v1();
}

void sub_1DD011E88()
{
  OUTLINED_FUNCTION_211();
  OUTLINED_FUNCTION_33();
  v1 = *(v0 + 120);
  sub_1DD0DDE9C();
  OUTLINED_FUNCTION_15_64();
}

uint64_t sub_1DD012004()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_15_1();
  *v3 = v2;
  v5 = v4[18];
  v6 = v4[17];
  v7 = v4[16];
  v8 = *v1;
  OUTLINED_FUNCTION_27();
  *v9 = v8;
  *(v11 + 152) = v10;
  *(v11 + 160) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v12, v13, v14);
}

void sub_1DD012154()
{
  OUTLINED_FUNCTION_211();
  OUTLINED_FUNCTION_33();
  v1 = *(v0 + 120);
  sub_1DD0DDE9C();
  OUTLINED_FUNCTION_15_64();
}

uint64_t static TCCTemplates.promptToAccessLocationBySiri(deviceState:hideDisplayedDialog:mustUseVoiceDrivenDialog:)(uint64_t a1, char a2, char a3)
{
  *(v3 + 297) = a3;
  *(v3 + 296) = a2;
  *(v3 + 248) = a1;
  return OUTLINED_FUNCTION_0_2();
}

void sub_1DD0122EC()
{
  OUTLINED_FUNCTION_145();
  OUTLINED_FUNCTION_41();
  v1 = *(v0 + 297);
  v2 = *(v0 + 296);
  v3 = *(v0 + 248);
  sub_1DD0DDE9C();
  OUTLINED_FUNCTION_16_63();
}

uint64_t sub_1DD0124D4()
{
  OUTLINED_FUNCTION_195();
  OUTLINED_FUNCTION_33();
  v3 = v2;
  OUTLINED_FUNCTION_32_1();
  v5 = v4;
  OUTLINED_FUNCTION_12_0();
  *v6 = v5;
  v8 = v7[34];
  v9 = v7[33];
  v10 = v7[32];
  v11 = *v1;
  OUTLINED_FUNCTION_27();
  *v12 = v11;
  *(v5 + 280) = v0;

  if (!v0)
  {
    *(v5 + 288) = v3;
  }

  OUTLINED_FUNCTION_101();
  OUTLINED_FUNCTION_196();

  return MEMORY[0x1EEE6DFA0](v13, v14, v15);
}

uint64_t sub_1DD012614()
{
  OUTLINED_FUNCTION_42();
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  v1 = v0[1];
  v2 = v0[36];

  return v1(v2);
}

uint64_t sub_1DD012678()
{
  OUTLINED_FUNCTION_42();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  OUTLINED_FUNCTION_29();
  v2 = *(v0 + 280);

  return v1();
}

uint64_t static TCCTemplates.promptToAccessPreciseLocationBySiriOneTime(deviceState:isImmediateFollowUp:hideDisplayedDialog:)(uint64_t a1, char a2, char a3)
{
  *(v3 + 297) = a3;
  *(v3 + 296) = a2;
  *(v3 + 248) = a1;
  return OUTLINED_FUNCTION_0_2();
}

void sub_1DD0126F0()
{
  OUTLINED_FUNCTION_145();
  OUTLINED_FUNCTION_41();
  v1 = *(v0 + 297);
  v2 = *(v0 + 296);
  v3 = *(v0 + 248);
  sub_1DD0DDE9C();
  OUTLINED_FUNCTION_16_63();
}

uint64_t sub_1DD0128D4()
{
  OUTLINED_FUNCTION_195();
  OUTLINED_FUNCTION_33();
  v3 = v2;
  OUTLINED_FUNCTION_32_1();
  v5 = v4;
  OUTLINED_FUNCTION_12_0();
  *v6 = v5;
  v8 = v7[34];
  v9 = v7[33];
  v10 = v7[32];
  v11 = *v1;
  OUTLINED_FUNCTION_27();
  *v12 = v11;
  *(v5 + 280) = v0;

  if (!v0)
  {
    *(v5 + 288) = v3;
  }

  OUTLINED_FUNCTION_101();
  OUTLINED_FUNCTION_196();

  return MEMORY[0x1EEE6DFA0](v13, v14, v15);
}

uint64_t static TCCTemplates.errorSiriNeedsLocationAccess(deviceState:requestingPreciseLocation:)(uint64_t a1, char a2)
{
  *(v2 + 232) = a2;
  *(v2 + 184) = a1;
  return OUTLINED_FUNCTION_0_2();
}

void sub_1DD012A2C()
{
  OUTLINED_FUNCTION_211();
  OUTLINED_FUNCTION_33();
  v1 = *(v0 + 232);
  v2 = *(v0 + 184);
  sub_1DD0DDE9C();
  OUTLINED_FUNCTION_16_63();
}

uint64_t sub_1DD012C08()
{
  OUTLINED_FUNCTION_195();
  OUTLINED_FUNCTION_33();
  v3 = v2;
  OUTLINED_FUNCTION_32_1();
  v5 = v4;
  OUTLINED_FUNCTION_12_0();
  *v6 = v5;
  v8 = v7[26];
  v9 = v7[25];
  v10 = v7[24];
  v11 = *v1;
  OUTLINED_FUNCTION_27();
  *v12 = v11;
  *(v5 + 216) = v0;

  if (!v0)
  {
    *(v5 + 224) = v3;
  }

  OUTLINED_FUNCTION_101();
  OUTLINED_FUNCTION_196();

  return MEMORY[0x1EEE6DFA0](v13, v14, v15);
}

uint64_t sub_1DD012D48()
{
  OUTLINED_FUNCTION_42();
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  v1 = v0[1];
  v2 = v0[28];

  return v1(v2);
}

uint64_t sub_1DD012DAC()
{
  OUTLINED_FUNCTION_42();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  OUTLINED_FUNCTION_29();
  v2 = *(v0 + 216);

  return v1();
}

void sub_1DD012E30()
{
  OUTLINED_FUNCTION_39();
  if (qword_1EDE48CE8 != -1)
  {
    OUTLINED_FUNCTION_1_7();
  }

  v1 = qword_1EDE57D40;
  v2 = type metadata accessor for CATTemplateExecutor();
  v0[5] = v2;
  v0[6] = &off_1F58563F0;
  v0[2] = v1;
  __swift_project_boxed_opaque_existential_1(v0 + 2, v2);
  sub_1DD0DCF8C();
}

uint64_t sub_1DD012F88()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_15_1();
  *v3 = v2;
  v5 = v4[9];
  v6 = v4[8];
  v7 = v4[7];
  v8 = *v1;
  OUTLINED_FUNCTION_27();
  *v9 = v8;
  *(v11 + 80) = v10;
  *(v11 + 88) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v12, v13, v14);
}

uint64_t sub_1DD0130C4()
{
  OUTLINED_FUNCTION_39();
  v1 = *(v0 + 80);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  v2 = [v1 dialog];
  sub_1DCE5993C();
  v3 = sub_1DD0DE2EC();

  if (sub_1DCB08B14(v3))
  {
    sub_1DCB35460(0, (v3 & 0xC000000000000001) == 0, v3);
    if ((v3 & 0xC000000000000001) != 0)
    {
      v4 = MEMORY[0x1E12A72C0](0, v3);
    }

    else
    {
      v4 = *(v3 + 32);
    }

    v5 = v4;
    v6 = *(v0 + 80);

    v7 = [v5 fullPrint];

    sub_1DD0DDFBC();
  }

  else
  {
    v8 = *(v0 + 80);
  }

  v9 = OUTLINED_FUNCTION_36_3();

  return v10(v9);
}

void sub_1DD013240(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v29[1] = a5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA8EE0, &unk_1DD0ECCD0);
  v8 = OUTLINED_FUNCTION_99(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v8, v13);
  v15 = v29 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAAB70, &qword_1DD0E17E0);
  v17 = OUTLINED_FUNCTION_20_0(v16);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17, v20);
  v22 = v29 - v21;
  v23 = sub_1DD0DE4BC();
  __swift_storeEnumTagSinglePayload(v22, 1, 1, v23);
  v24 = OUTLINED_FUNCTION_138();
  sub_1DCB17C3C(v24, v25, &qword_1ECCA8EE0, &unk_1DD0ECCD0);
  v26 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v27 = swift_allocObject();
  *(v27 + 16) = 0;
  *(v27 + 24) = 0;
  sub_1DCD0506C(v15, v27 + v26);
  v28 = (v27 + ((v12 + v26 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v28 = a2;
  v28[1] = a3;
  sub_1DD0DCF8C();
}

uint64_t sub_1DD0133F0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA1BD8, &unk_1DD0E6A20);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DD0E07C0;
  strcpy((inited + 32), "responseMode");
  *(inited + 45) = 0;
  *(inited + 46) = -5120;
  *(inited + 72) = MEMORY[0x1E69E6158];
  *(inited + 48) = 0;
  *(inited + 56) = 0xE000000000000000;
  result = sub_1DD0DDE9C();
  qword_1EDE49C18 = result;
  return result;
}

uint64_t sub_1DD013488(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[22] = a6;
  v7[23] = a7;
  v8 = swift_task_alloc();
  v7[24] = v8;
  *v8 = v7;
  v8[1] = sub_1DCF68320;

  return static TCCTemplates.promptToEnableApp(appDisplayInfo:deviceState:)();
}

uint64_t sub_1DD013530()
{
  OUTLINED_FUNCTION_41();
  v6 = v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA8EE0, &unk_1DD0ECCD0);
  OUTLINED_FUNCTION_99(v7);
  v9 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v11 = (*(v10 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  OUTLINED_FUNCTION_41_28(v11 + 47);
  v12 = swift_task_alloc();
  v13 = OUTLINED_FUNCTION_30_42(v12);
  *v13 = v14;
  v13[1] = sub_1DCB4AD3C;

  return sub_1DD013488(v6, v1, v2, v0 + v9, v0 + v11, v3, v4);
}

uint64_t static TCCTemplates.promptToEnableApp(appDisplayInfo:deviceState:)()
{
  OUTLINED_FUNCTION_42();
  v0[42] = v1;
  v0[43] = v2;
  v0[41] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA8EE0, &unk_1DD0ECCD0);
  OUTLINED_FUNCTION_20_0(v4);
  v6 = *(v5 + 64);
  v0[44] = OUTLINED_FUNCTION_38();
  v7 = sub_1DD0DD23C();
  v0[45] = v7;
  OUTLINED_FUNCTION_99(v7);
  v0[46] = v8;
  v10 = *(v9 + 64);
  v0[47] = OUTLINED_FUNCTION_38();
  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

void sub_1DD013734()
{
  OUTLINED_FUNCTION_41();
  v2 = *(v0 + 352);
  v1 = *(v0 + 360);
  v3 = *(v0 + 336);
  v4 = MEMORY[0x1E69E6158];
  v5 = sub_1DD0DDE9C();
  v6 = OUTLINED_FUNCTION_138();
  sub_1DCB17C3C(v6, v7, v8, v9);
  OUTLINED_FUNCTION_34_41();
  if (v10)
  {
    sub_1DCB185D0(*(v0 + 352), &qword_1ECCA8EE0, &unk_1DD0ECCD0);
  }

  else
  {
    v12 = *(v0 + 368);
    v11 = *(v0 + 376);
    v13 = *(v0 + 360);
    (*(v12 + 32))(v11, *(v0 + 352), v13);
    *(v0 + 200) = sub_1DD0DD22C() & 1;
    *(v0 + 224) = MEMORY[0x1E69E6370];
    sub_1DCB20B30((v0 + 200), (v0 + 232));
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_47_27();
    sub_1DCC60044();
    v14 = sub_1DD0DD21C();
    *(v0 + 288) = v4;
    *(v0 + 264) = v14;
    *(v0 + 272) = v15;
    sub_1DCB20B30((v0 + 264), (v0 + 296));
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_47_27();
    OUTLINED_FUNCTION_44_29();
    sub_1DCC60044();
    v5 = v17;
    (*(v12 + 8))(v11, v13);
  }

  sub_1DCB17C3C(*(v0 + 344), v0 + 56, &qword_1ECCA8AB0, &qword_1DD0E23E0);
  if (*(v0 + 80))
  {
    OUTLINED_FUNCTION_4_46();
  }

  sub_1DCB185D0(v0 + 56, &qword_1ECCA8AB0, &qword_1DD0E23E0);
  *(v0 + 384) = v5;
  if (qword_1EDE48CE8 != -1)
  {
    OUTLINED_FUNCTION_1_7();
  }

  v16 = type metadata accessor for CATTemplateExecutor();
  OUTLINED_FUNCTION_18_22(v16, v16, &off_1F58563F0);
  sub_1DD0DCF8C();
}

uint64_t sub_1DD013A60()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_15_1();
  *v3 = v2;
  v5 = v4[50];
  v6 = v4[49];
  v7 = v4[48];
  v8 = *v1;
  OUTLINED_FUNCTION_27();
  *v9 = v8;
  *(v10 + 408) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1DD013B98()
{
  OUTLINED_FUNCTION_42();
  v1 = v0[47];
  v2 = v0[44];
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 12);

  OUTLINED_FUNCTION_29();

  return v3();
}

uint64_t sub_1DD013C0C()
{
  OUTLINED_FUNCTION_42();
  v1 = v0[47];
  v2 = v0[44];
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 12);

  OUTLINED_FUNCTION_29();
  v4 = v0[51];

  return v3();
}

uint64_t sub_1DD013C80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  return MEMORY[0x1EEE6DFA0](sub_1DD013CA4, 0, 0);
}

uint64_t sub_1DD013CA4()
{
  OUTLINED_FUNCTION_39();
  v1 = v0[2];
  v2 = swift_task_alloc();
  v0[5] = v2;
  *(v2 + 16) = v1;
  v3 = OUTLINED_FUNCTION_9_1(dword_1DD10C2C0);
  v0[6] = v3;
  *v3 = v0;
  v3[1] = sub_1DD013D64;

  return v5(&unk_1DD10A938, v2);
}

uint64_t sub_1DD013D64()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_15_1();
  *v2 = v1;
  v4 = *(v3 + 48);
  v5 = *(v3 + 40);
  v6 = *v0;
  OUTLINED_FUNCTION_27();
  *v7 = v6;
  *(v10 + 56) = v8;
  *(v10 + 64) = v9;
  *(v10 + 72) = v11;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v12, v13, v14);
}

uint64_t sub_1DD013E6C(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_1DCDAF940;

  return static TCCTemplates.promptToEnableAppSnippetTitle(appDisplayInfo:)();
}

uint64_t static TCCTemplates.promptToEnableAppSnippetTitle(appDisplayInfo:)()
{
  OUTLINED_FUNCTION_42();
  v0[15] = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA8EE0, &unk_1DD0ECCD0);
  OUTLINED_FUNCTION_20_0(v2);
  v4 = *(v3 + 64);
  v0[16] = OUTLINED_FUNCTION_38();
  v5 = sub_1DD0DD23C();
  v0[17] = v5;
  OUTLINED_FUNCTION_99(v5);
  v0[18] = v6;
  v8 = *(v7 + 64);
  v0[19] = OUTLINED_FUNCTION_38();
  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

void sub_1DD013FD8()
{
  OUTLINED_FUNCTION_145();
  OUTLINED_FUNCTION_41();
  v2 = v0[16];
  v1 = v0[17];
  v3 = v0[15];
  v4 = sub_1DD0DDE9C();
  v5 = OUTLINED_FUNCTION_138();
  sub_1DCB17C3C(v5, v6, v7, v8);
  OUTLINED_FUNCTION_34_41();
  if (v9)
  {
    sub_1DCB185D0(v0[16], &qword_1ECCA8EE0, &unk_1DD0ECCD0);
  }

  else
  {
    v10 = OUTLINED_FUNCTION_26_38();
    v11(v10);
    v12 = sub_1DD0DD21C();
    OUTLINED_FUNCTION_36_41(v12, v13);
    OUTLINED_FUNCTION_28_37();
    OUTLINED_FUNCTION_44_29();
    sub_1DCC60044();
    v14 = OUTLINED_FUNCTION_49_27();
    v15(v14);
  }

  v0[20] = v4;
  if (qword_1EDE48CE8 != -1)
  {
    OUTLINED_FUNCTION_1_7();
  }

  v16 = qword_1EDE57D40;
  v17 = type metadata accessor for CATTemplateExecutor();
  v0[5] = v17;
  v0[6] = &off_1F58563F0;
  v0[2] = v16;
  v18 = *__swift_project_boxed_opaque_existential_1(v0 + 2, v17);
  OUTLINED_FUNCTION_40_35(&dword_1DD0F4BF0);
}

uint64_t sub_1DD014184()
{
  OUTLINED_FUNCTION_195();
  OUTLINED_FUNCTION_33();
  v3 = v2;
  v5 = v4;
  OUTLINED_FUNCTION_32_1();
  v7 = v6;
  OUTLINED_FUNCTION_12_0();
  *v8 = v7;
  v10 = *(v9 + 168);
  v11 = *(v9 + 160);
  v12 = *v1;
  OUTLINED_FUNCTION_27();
  *v13 = v12;
  v7[22] = v0;

  if (!v0)
  {
    v7[23] = v3;
    v7[24] = v5;
  }

  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_196();

  return MEMORY[0x1EEE6DFA0](v14, v15, v16);
}

uint64_t sub_1DD0142B0()
{
  OUTLINED_FUNCTION_42();
  v1 = v0[19];
  v2 = v0[16];
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);

  v3 = v0[1];
  v5 = v0[23];
  v4 = v0[24];

  return v3(v4, v5);
}

uint64_t sub_1DD01432C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  return MEMORY[0x1EEE6DFA0](sub_1DD014350, 0, 0);
}

uint64_t sub_1DD014350()
{
  OUTLINED_FUNCTION_39();
  v1 = v0[2];
  v2 = swift_task_alloc();
  v0[5] = v2;
  *(v2 + 16) = v1;
  v3 = OUTLINED_FUNCTION_9_1(dword_1DD10C2C0);
  v0[6] = v3;
  *v3 = v0;
  v3[1] = sub_1DD014410;

  return v5(&unk_1DD10A928, v2);
}

uint64_t sub_1DD014410()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_15_1();
  *v2 = v1;
  v4 = *(v3 + 48);
  v5 = *(v3 + 40);
  v6 = *v0;
  OUTLINED_FUNCTION_27();
  *v7 = v6;
  *(v10 + 56) = v8;
  *(v10 + 64) = v9;
  *(v10 + 72) = v11;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v12, v13, v14);
}

uint64_t sub_1DD014518(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_1DD0145B0;

  return static TCCTemplates.promptToEnableAppSnippetSubtitle(appDisplayInfo:)();
}

uint64_t sub_1DD0145B0()
{
  OUTLINED_FUNCTION_211();
  OUTLINED_FUNCTION_33();
  v3 = v2;
  v5 = v4;
  OUTLINED_FUNCTION_32_1();
  v7 = v6;
  OUTLINED_FUNCTION_12_0();
  *v8 = v7;
  v10 = *(v9 + 24);
  v11 = *v1;
  OUTLINED_FUNCTION_27();
  *v12 = v11;

  if (v0)
  {
    v13 = *(v11 + 8);
    OUTLINED_FUNCTION_152();

    return v15(v14, v15, v16, v17, v18, v19, v20, v21);
  }

  else
  {
    *(v7 + 32) = v3;
    *(v7 + 40) = v5;
    OUTLINED_FUNCTION_24();
    OUTLINED_FUNCTION_152();

    return MEMORY[0x1EEE6DFA0](v23, v24, v25);
  }
}

uint64_t static TCCTemplates.promptToEnableAppSnippetSubtitle(appDisplayInfo:)()
{
  OUTLINED_FUNCTION_42();
  v0[15] = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA8EE0, &unk_1DD0ECCD0);
  OUTLINED_FUNCTION_20_0(v2);
  v4 = *(v3 + 64);
  v0[16] = OUTLINED_FUNCTION_38();
  v5 = sub_1DD0DD23C();
  v0[17] = v5;
  OUTLINED_FUNCTION_99(v5);
  v0[18] = v6;
  v8 = *(v7 + 64);
  v0[19] = OUTLINED_FUNCTION_38();
  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

void sub_1DD0147B8()
{
  OUTLINED_FUNCTION_145();
  OUTLINED_FUNCTION_41();
  v2 = v0[16];
  v1 = v0[17];
  v3 = v0[15];
  v4 = sub_1DD0DDE9C();
  v5 = OUTLINED_FUNCTION_138();
  sub_1DCB17C3C(v5, v6, v7, v8);
  OUTLINED_FUNCTION_34_41();
  if (v9)
  {
    sub_1DCB185D0(v0[16], &qword_1ECCA8EE0, &unk_1DD0ECCD0);
  }

  else
  {
    v10 = OUTLINED_FUNCTION_26_38();
    v11(v10);
    v12 = sub_1DD0DD21C();
    OUTLINED_FUNCTION_36_41(v12, v13);
    OUTLINED_FUNCTION_28_37();
    OUTLINED_FUNCTION_44_29();
    sub_1DCC60044();
    v14 = OUTLINED_FUNCTION_49_27();
    v15(v14);
  }

  v0[20] = v4;
  if (qword_1EDE48CE8 != -1)
  {
    OUTLINED_FUNCTION_1_7();
  }

  v16 = qword_1EDE57D40;
  v17 = type metadata accessor for CATTemplateExecutor();
  v0[5] = v17;
  v0[6] = &off_1F58563F0;
  v0[2] = v16;
  v18 = *__swift_project_boxed_opaque_existential_1(v0 + 2, v17);
  OUTLINED_FUNCTION_40_35(&dword_1DD0F4BF0);
}

uint64_t sub_1DD014964()
{
  OUTLINED_FUNCTION_195();
  OUTLINED_FUNCTION_33();
  v3 = v2;
  v5 = v4;
  OUTLINED_FUNCTION_32_1();
  v7 = v6;
  OUTLINED_FUNCTION_12_0();
  *v8 = v7;
  v10 = *(v9 + 168);
  v11 = *(v9 + 160);
  v12 = *v1;
  OUTLINED_FUNCTION_27();
  *v13 = v12;
  v7[22] = v0;

  if (!v0)
  {
    v7[23] = v3;
    v7[24] = v5;
  }

  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_196();

  return MEMORY[0x1EEE6DFA0](v14, v15, v16);
}

uint64_t sub_1DD014AB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[22] = a5;
  v6[23] = a6;
  v8 = swift_task_alloc();
  v6[24] = v8;
  *v8 = v6;
  v8[1] = sub_1DCF68A2C;

  return static TCCTemplates.confirmationRejected(deviceState:)((v6 + 12), a4);
}

uint64_t static TCCTemplates.confirmationRejected(deviceState:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 200) = a1;
  *(v2 + 208) = a2;
  return OUTLINED_FUNCTION_0_2();
}

void sub_1DD014B64()
{
  OUTLINED_FUNCTION_33();
  v1 = v0[26];
  v2 = sub_1DD0DDE9C();
  sub_1DCB17C3C(v1, (v0 + 7), &qword_1ECCA8AB0, &qword_1DD0E23E0);
  if (v0[10])
  {
    OUTLINED_FUNCTION_4_46();
  }

  sub_1DCB185D0((v0 + 7), &qword_1ECCA8AB0, &qword_1DD0E23E0);
  v0[27] = v2;
  if (qword_1EDE48CE8 != -1)
  {
    OUTLINED_FUNCTION_1_7();
  }

  v3 = type metadata accessor for CATTemplateExecutor();
  OUTLINED_FUNCTION_18_22(v3, v3, &off_1F58563F0);
  sub_1DD0DCF8C();
}

void sub_1DD014D74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAAB70, &qword_1DD0E17E0);
  v7 = OUTLINED_FUNCTION_20_0(v6);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7, v10);
  v12 = &v16 - v11;
  v13 = sub_1DD0DE4BC();
  __swift_storeEnumTagSinglePayload(v12, 1, 1, v13);
  sub_1DCB17C3C(a1, v17, &qword_1ECCA8AB0, &qword_1DD0E23E0);
  v14 = swift_allocObject();
  *(v14 + 16) = 0;
  *(v14 + 24) = 0;
  v15 = v17[1];
  *(v14 + 32) = v17[0];
  *(v14 + 48) = v15;
  *(v14 + 64) = v18;
  *(v14 + 72) = a2;
  *(v14 + 80) = a3;
  sub_1DD0DCF8C();
}

uint64_t sub_1DD014E90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[22] = a5;
  v6[23] = a6;
  v8 = swift_task_alloc();
  v6[24] = v8;
  *v8 = v6;
  v8[1] = sub_1DCF68A2C;

  return static TCCTemplates.confirmationCancelled(deviceState:)((v6 + 12), a4);
}

uint64_t static TCCTemplates.confirmationCancelled(deviceState:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 200) = a1;
  *(v2 + 208) = a2;
  return OUTLINED_FUNCTION_0_2();
}

void sub_1DD014F44()
{
  OUTLINED_FUNCTION_33();
  v1 = v0[26];
  v2 = sub_1DD0DDE9C();
  sub_1DCB17C3C(v1, (v0 + 7), &qword_1ECCA8AB0, &qword_1DD0E23E0);
  if (v0[10])
  {
    OUTLINED_FUNCTION_4_46();
  }

  sub_1DCB185D0((v0 + 7), &qword_1ECCA8AB0, &qword_1DD0E23E0);
  v0[27] = v2;
  if (qword_1EDE48CE8 != -1)
  {
    OUTLINED_FUNCTION_1_7();
  }

  v3 = type metadata accessor for CATTemplateExecutor();
  OUTLINED_FUNCTION_18_22(v3, v3, &off_1F58563F0);
  sub_1DD0DCF8C();
}

uint64_t sub_1DD015134()
{
  OUTLINED_FUNCTION_41();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA8EE0, &unk_1DD0ECCD0);
  OUTLINED_FUNCTION_99(v0);
  OUTLINED_FUNCTION_41_28(*(v2 + 64) + ((*(v1 + 80) + 32) & ~*(v1 + 80)) + 7);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_30_42(v3);
  *v4 = v5;
  v4[1] = sub_1DCB4AE1C;
  OUTLINED_FUNCTION_7_82();

  return sub_1DD013C80(v6, v7, v8, v9, v10, v11);
}

uint64_t objectdestroy_17Tm_0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA8EE0, &unk_1DD0ECCD0);
  OUTLINED_FUNCTION_99(v1);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v5 = *(v4 + 64);
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  v7 = sub_1DD0DD23C();
  if (!__swift_getEnumTagSinglePayload(v0 + v3, 1, v7))
  {
    OUTLINED_FUNCTION_112(v7);
    (*(v8 + 8))(v0 + v3, v7);
  }

  v9 = *(v0 + ((v5 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 8);

  return swift_deallocObject();
}

uint64_t sub_1DD015350()
{
  OUTLINED_FUNCTION_41();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA8EE0, &unk_1DD0ECCD0);
  OUTLINED_FUNCTION_99(v0);
  OUTLINED_FUNCTION_41_28(*(v2 + 64) + ((*(v1 + 80) + 32) & ~*(v1 + 80)) + 7);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_30_42(v3);
  *v4 = v5;
  v4[1] = sub_1DCB4AE1C;
  OUTLINED_FUNCTION_7_82();

  return sub_1DD01432C(v6, v7, v8, v9, v10, v11);
}

uint64_t sub_1DD015460()
{
  OUTLINED_FUNCTION_195();
  OUTLINED_FUNCTION_33();
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[9];
  v4 = v0[10];
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_11_0(v5);
  *v6 = v7;
  v6[1] = sub_1DCB4AE1C;
  OUTLINED_FUNCTION_7_82();
  OUTLINED_FUNCTION_196();

  return sub_1DD014AB0(v8, v9, v10, v11, v12, v13);
}

uint64_t sub_1DD015500()
{
  OUTLINED_FUNCTION_195();
  OUTLINED_FUNCTION_33();
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[9];
  v4 = v0[10];
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_11_0(v5);
  *v6 = v7;
  v6[1] = sub_1DCB4AE1C;
  OUTLINED_FUNCTION_7_82();
  OUTLINED_FUNCTION_196();

  return sub_1DD014E90(v8, v9, v10, v11, v12, v13);
}

_BYTE *storeEnumTagSinglePayload for TCCTemplates(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

uint64_t sub_1DD01564C()
{
  OUTLINED_FUNCTION_42();
  v1 = *(v0 + 16);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_11_0(v2);
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_18_4(v3);

  return sub_1DD014518(v5);
}

uint64_t sub_1DD0156D4()
{
  OUTLINED_FUNCTION_42();
  v1 = *(v0 + 16);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_11_0(v2);
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_18_4(v3);

  return sub_1DD013E6C(v5);
}

void ActingFlow.then<A, B>(_:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t *a8@<X8>)
{
  swift_getAssociatedTypeWitness();
  type metadata accessor for ChainedFlow();
  v19 = a3;
  v20 = a6;
  __swift_allocate_boxed_opaque_existential_1Tm(&v18);
  OUTLINED_FUNCTION_112(a3);
  (*(v16 + 16))();
  v17 = swift_allocObject();
  v17[2] = a3;
  v17[3] = a4;
  v17[4] = a5;
  v17[5] = a6;
  v17[6] = a7;
  v17[7] = a1;
  v17[8] = a2;
  *a8 = sub_1DD015908(&v18, sub_1DD0158B8, v17);
  sub_1DD0DCF8C();
}

uint64_t sub_1DD0158B8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = v2[4];
  v6 = v2[6];
  v7 = v2[7];
  v8 = v2[8];
  a2[3] = v5;
  a2[4] = v6;
  __swift_allocate_boxed_opaque_existential_1Tm(a2);
  return v7(a1);
}

uint64_t sub_1DD015908(__int128 *a1, uint64_t a2, uint64_t a3)
{
  v7 = *(v3 + 48);
  v8 = *(v3 + 52);
  v9 = swift_allocObject();
  sub_1DD015D6C(a1, a2, a3);
  return v9;
}

void ActingFlow.then(_:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  swift_getAssociatedTypeWitness();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECCA1D30, &qword_1DD0E1EC0);
  type metadata accessor for ChainedFlow();
  v13 = a3;
  v14 = a4;
  __swift_allocate_boxed_opaque_existential_1Tm(&v12);
  OUTLINED_FUNCTION_112(a3);
  (*(v10 + 16))();
  v11 = swift_allocObject();
  v11[2] = a3;
  v11[3] = a4;
  v11[4] = a1;
  v11[5] = a2;
  *a5 = sub_1DD015908(&v12, sub_1DD015C30, v11);
  sub_1DD0DCF8C();
}

void sub_1DD015A80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v18 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(AssociatedTypeWitness - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness, v12);
  v14 = &v17 - v13;
  (*(v10 + 16))(&v17 - v13, a1, AssociatedTypeWitness);
  v15 = (*(v10 + 80) + 48) & ~*(v10 + 80);
  v16 = swift_allocObject();
  *(v16 + 2) = a4;
  *(v16 + 3) = a5;
  *(v16 + 4) = v18;
  *(v16 + 5) = a3;
  (*(v10 + 32))(&v16[v15], v14, AssociatedTypeWitness);
  type metadata accessor for Linearly();
  swift_allocObject();
  sub_1DD0DCF8C();
}

uint64_t sub_1DD015C3C(uint64_t a1)
{
  v1 = *(a1 + 80);
  v2 = *(a1 + 88);
  result = type metadata accessor for ChainedFlow.State();
  if (v4 <= 0x3F)
  {
    v5 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1DD015CE8(uint64_t (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v3 = a1(a3);
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECCA5288, &qword_1DD0F10C8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DD0E07C0;
  *(inited + 32) = v3;
  v5 = static FlowsBuilder.buildBlock(_:)(inited);
  swift_setDeallocating();
  sub_1DCC65794();
  return v5;
}

void *sub_1DD015D6C(__int128 *a1, uint64_t a2, uint64_t a3)
{
  v6 = *v3;
  sub_1DCAFF9E8(a1, (v3 + 2));
  v3[7] = a2;
  v3[8] = a3;
  v7 = *(*v3 + 112);
  v8 = *(v6 + 80);
  v9 = *(v6 + 88);
  type metadata accessor for ChainedFlow.State();
  swift_storeEnumTagMultiPayload();
  return v3;
}

uint64_t sub_1DD015E00@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v41 = a1;
  v3 = *v1;
  v4 = v3[11];
  OUTLINED_FUNCTION_0_1();
  *&v40 = v5;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v40 - v10;
  v12 = v3[10];
  OUTLINED_FUNCTION_0_1();
  v14 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v17, v18);
  v20 = &v40 - v19;
  OUTLINED_FUNCTION_80_8();
  v21 = type metadata accessor for ChainedFlow.State();
  OUTLINED_FUNCTION_0_1();
  v23 = v22;
  v25 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v26, v27);
  v29 = &v40 - v28;
  v30 = v3[14];
  swift_beginAccess();
  (*(v23 + 16))(v29, &v2[v30], v21);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    (*(v14 + 32))(v20, v29, v12);
    v36 = *(v2 + 8);
    (*(v2 + 7))(v42, v20);
    __swift_project_boxed_opaque_existential_1(v42, v42[3]);
    v37 = type metadata accessor for LifeCycleModifierFlow();
    v43 = OUTLINED_FUNCTION_1_140(v37);
    sub_1DD0DCF8C();
  }

  if (EnumCaseMultiPayload != 1)
  {
    v38 = *(v2 + 6);
    __swift_project_boxed_opaque_existential_1(v2 + 2, *(v2 + 5));
    OUTLINED_FUNCTION_80_8();
    v39 = type metadata accessor for LifeCycleModifierFlow();
    v43 = OUTLINED_FUNCTION_1_140(v39);
    sub_1DD0DCF8C();
  }

  v32 = v40;
  (*(v40 + 32))(v11, v29, v4);
  v33 = type metadata accessor for Conclude();
  v34 = OUTLINED_FUNCTION_5_118(v33, &protocol witness table for Conclude<A>);
  OUTLINED_FUNCTION_80_8();
  type metadata accessor for ChainedFlow();
  OUTLINED_FUNCTION_0_126();
  swift_getWitnessTable();
  ActingFlow.conclude(with:)(v11, v34);
  return (*(v32 + 8))(v11, v4);
}

uint64_t sub_1DD0162C0(uint64_t a1, uint64_t a2)
{
  v4 = *(*a2 + 80);
  v5 = *(*a2 + 88);
  v6 = type metadata accessor for ChainedFlow.State();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6, v9);
  v11 = &v14 - v10;
  (*(*(v4 - 8) + 16))(&v14 - v10, a1, v4);
  swift_storeEnumTagMultiPayload();
  v12 = *(*a2 + 112);
  swift_beginAccess();
  (*(v7 + 40))(a2 + v12, v11, v6);
  return swift_endAccess();
}

uint64_t sub_1DD016430(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = *(*a2 + 80);
  v6 = *(v4 + 88);
  v7 = type metadata accessor for ChainedFlow.State();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7, v10);
  v12 = &v15 - v11;
  (*(*(v6 - 8) + 16))(&v15 - v11, a1, v6);
  swift_storeEnumTagMultiPayload();
  v13 = *(*a2 + 112);
  swift_beginAccess();
  (*(v8 + 40))(a2 + v13, v12, v7);
  return swift_endAccess();
}

uint64_t *sub_1DD0165A0()
{
  v1 = *v0;
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  v2 = v0[8];

  v3 = *(*v0 + 112);
  v4 = *(v1 + 80);
  v5 = *(v1 + 88);
  v6 = type metadata accessor for ChainedFlow.State();
  OUTLINED_FUNCTION_112(v6);
  (*(v7 + 8))(v0 + v3);
  return v0;
}

uint64_t sub_1DD01664C()
{
  sub_1DD0165A0();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_1DD0166BC(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v4 <= 0x3F)
  {
    v7 = *(result - 8) + 64;
    v5 = *(a1 + 24);
    result = swift_checkMetadataState();
    if (v6 <= 0x3F)
    {
      v8 = *(result - 8) + 64;
      swift_initEnumMetadataMultiPayload();
      return 0;
    }
  }

  return result;
}

_BYTE *sub_1DD016788(_BYTE *__dst, unsigned __int8 *a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(*(a3 + 24) - 8);
  if (*(v5 + 64) <= *(v4 + 64))
  {
    v6 = *(*(*(a3 + 16) - 8) + 64);
  }

  else
  {
    v6 = *(v5 + 64);
  }

  if ((*(v5 + 80) | *(v4 + 80)) > 7u || (v6 + 1) > 0x18 || ((*(v5 + 80) | *(v4 + 80)) & 0x100000) != 0)
  {
    *__dst = *a2;
    sub_1DD0DCF8C();
  }

  v9 = a2[v6];
  v10 = v9 - 2;
  if (v9 >= 2)
  {
    if (v6 <= 3)
    {
      v11 = v6;
    }

    else
    {
      v11 = 4;
    }

    switch(v11)
    {
      case 1:
        v12 = *a2;
        goto LABEL_21;
      case 2:
        v12 = *a2;
        goto LABEL_21;
      case 3:
        v12 = *a2 | (a2[2] << 16);
        goto LABEL_21;
      case 4:
        v12 = *a2;
LABEL_21:
        v13 = (v12 | (v10 << (8 * v6))) + 2;
        v9 = v12 + 2;
        if (v6 < 4)
        {
          v9 = v13;
        }

        break;
      default:
        break;
    }
  }

  if (v9 == 1)
  {
    (*(v5 + 16))(__dst);
    __dst[v6] = 1;
    return __dst;
  }

  if (!v9)
  {
    (*(v4 + 16))(__dst);
    __dst[v6] = 0;
    return __dst;
  }

  return memcpy(__dst, a2, v6 + 1);
}

unsigned __int8 *sub_1DD016970(unsigned __int8 *result, uint64_t a2)
{
  v2 = *(*(a2 + 16) - 8);
  v3 = *(*(*(a2 + 24) - 8) + 64);
  if (v3 <= *(v2 + 64))
  {
    v3 = *(*(*(a2 + 16) - 8) + 64);
  }

  v4 = result[v3];
  v5 = v4 - 2;
  if (v4 >= 2)
  {
    if (v3 <= 3)
    {
      v6 = v3;
    }

    else
    {
      v6 = 4;
    }

    switch(v6)
    {
      case 1:
        v7 = *result;
        goto LABEL_12;
      case 2:
        v7 = *result;
        goto LABEL_12;
      case 3:
        v7 = *result | (result[2] << 16);
        goto LABEL_12;
      case 4:
        v7 = *result;
LABEL_12:
        v8 = (v7 | (v5 << (8 * v3))) + 2;
        v4 = v7 + 2;
        if (v3 < 4)
        {
          v4 = v8;
        }

        break;
      default:
        break;
    }
  }

  if (v4)
  {
    if (v4 != 1)
    {
      return result;
    }

    v2 = *(*(a2 + 24) - 8);
  }

  return (*(v2 + 8))();
}

_BYTE *sub_1DD016AAC(_BYTE *__dst, unsigned __int8 *a2, uint64_t a3)
{
  v4 = *(*(a3 + 24) - 8);
  if (*(v4 + 64) <= *(*(*(a3 + 16) - 8) + 64))
  {
    v5 = *(*(*(a3 + 16) - 8) + 64);
  }

  else
  {
    v5 = *(v4 + 64);
  }

  v6 = a2[v5];
  v7 = v6 - 2;
  if (v6 >= 2)
  {
    if (v5 <= 3)
    {
      v8 = v5;
    }

    else
    {
      v8 = 4;
    }

    switch(v8)
    {
      case 1:
        v9 = *a2;
        goto LABEL_13;
      case 2:
        v9 = *a2;
        goto LABEL_13;
      case 3:
        v9 = *a2 | (a2[2] << 16);
        goto LABEL_13;
      case 4:
        v9 = *a2;
LABEL_13:
        v10 = (v9 | (v7 << (8 * v5))) + 2;
        v6 = v9 + 2;
        if (v5 < 4)
        {
          v6 = v10;
        }

        break;
      default:
        break;
    }
  }

  if (v6 == 1)
  {
    (*(v4 + 16))(__dst);
    __dst[v5] = 1;
    return __dst;
  }

  if (!v6)
  {
    (*(*(*(a3 + 16) - 8) + 16))(__dst);
    __dst[v5] = 0;
    return __dst;
  }

  return memcpy(__dst, a2, v5 + 1);
}

unsigned __int8 *sub_1DD016C50(unsigned __int8 *__dst, unsigned __int8 *__src, uint64_t a3)
{
  if (__dst == __src)
  {
    return __dst;
  }

  v5 = *(a3 + 16);
  v6 = *(a3 + 24);
  v7 = *(v5 - 8);
  v8 = *(v6 - 8);
  if (*(v8 + 64) <= *(v7 + 64))
  {
    v9 = *(*(*(a3 + 16) - 8) + 64);
  }

  else
  {
    v9 = *(*(v6 - 8) + 64);
  }

  v10 = __dst[v9];
  v11 = 8 * v9;
  v12 = v10 - 2;
  if (v10 >= 2)
  {
    if (v9 <= 3)
    {
      v13 = v9;
    }

    else
    {
      v13 = 4;
    }

    switch(v13)
    {
      case 1:
        v14 = *__dst;
        goto LABEL_14;
      case 2:
        v14 = *__dst;
        goto LABEL_14;
      case 3:
        v14 = *__dst | (__dst[2] << 16);
        goto LABEL_14;
      case 4:
        v14 = *__dst;
LABEL_14:
        v15 = (v14 | (v12 << v11)) + 2;
        v10 = v14 + 2;
        if (v9 < 4)
        {
          v10 = v15;
        }

        break;
      default:
        break;
    }
  }

  if (v10)
  {
    if (v10 != 1)
    {
      goto LABEL_21;
    }

    v16 = *(v6 - 8);
    v17 = *(a3 + 24);
  }

  else
  {
    v16 = *(*(a3 + 16) - 8);
    v17 = *(a3 + 16);
  }

  (*(v16 + 8))(__dst, v17);
LABEL_21:
  v18 = __src[v9];
  v19 = v18 - 2;
  if (v18 >= 2)
  {
    if (v9 <= 3)
    {
      v20 = v9;
    }

    else
    {
      v20 = 4;
    }

    switch(v20)
    {
      case 1:
        v21 = *__src;
        goto LABEL_30;
      case 2:
        v21 = *__src;
        goto LABEL_30;
      case 3:
        v21 = *__src | (__src[2] << 16);
        goto LABEL_30;
      case 4:
        v21 = *__src;
LABEL_30:
        v22 = (v21 | (v19 << v11)) + 2;
        v18 = v21 + 2;
        if (v9 < 4)
        {
          v18 = v22;
        }

        break;
      default:
        break;
    }
  }

  if (v18 == 1)
  {
    (*(v8 + 16))(__dst, __src, v6);
    __dst[v9] = 1;
    return __dst;
  }

  if (!v18)
  {
    (*(v7 + 16))(__dst, __src, v5);
    __dst[v9] = 0;
    return __dst;
  }

  return memcpy(__dst, __src, v9 + 1);
}

_BYTE *sub_1DD016ED4(_BYTE *__dst, unsigned __int8 *a2, uint64_t a3)
{
  v4 = *(*(a3 + 24) - 8);
  if (*(v4 + 64) <= *(*(*(a3 + 16) - 8) + 64))
  {
    v5 = *(*(*(a3 + 16) - 8) + 64);
  }

  else
  {
    v5 = *(v4 + 64);
  }

  v6 = a2[v5];
  v7 = v6 - 2;
  if (v6 >= 2)
  {
    if (v5 <= 3)
    {
      v8 = v5;
    }

    else
    {
      v8 = 4;
    }

    switch(v8)
    {
      case 1:
        v9 = *a2;
        goto LABEL_13;
      case 2:
        v9 = *a2;
        goto LABEL_13;
      case 3:
        v9 = *a2 | (a2[2] << 16);
        goto LABEL_13;
      case 4:
        v9 = *a2;
LABEL_13:
        v10 = (v9 | (v7 << (8 * v5))) + 2;
        v6 = v9 + 2;
        if (v5 < 4)
        {
          v6 = v10;
        }

        break;
      default:
        break;
    }
  }

  if (v6 == 1)
  {
    (*(v4 + 32))(__dst);
    __dst[v5] = 1;
    return __dst;
  }

  if (!v6)
  {
    (*(*(*(a3 + 16) - 8) + 32))(__dst);
    __dst[v5] = 0;
    return __dst;
  }

  return memcpy(__dst, a2, v5 + 1);
}

unsigned __int8 *sub_1DD017078(unsigned __int8 *__dst, unsigned __int8 *__src, uint64_t a3)
{
  if (__dst == __src)
  {
    return __dst;
  }

  v5 = *(a3 + 16);
  v6 = *(a3 + 24);
  v7 = *(v5 - 8);
  v8 = *(v6 - 8);
  if (*(v8 + 64) <= *(v7 + 64))
  {
    v9 = *(*(*(a3 + 16) - 8) + 64);
  }

  else
  {
    v9 = *(*(v6 - 8) + 64);
  }

  v10 = __dst[v9];
  v11 = 8 * v9;
  v12 = v10 - 2;
  if (v10 >= 2)
  {
    if (v9 <= 3)
    {
      v13 = v9;
    }

    else
    {
      v13 = 4;
    }

    switch(v13)
    {
      case 1:
        v14 = *__dst;
        goto LABEL_14;
      case 2:
        v14 = *__dst;
        goto LABEL_14;
      case 3:
        v14 = *__dst | (__dst[2] << 16);
        goto LABEL_14;
      case 4:
        v14 = *__dst;
LABEL_14:
        v15 = (v14 | (v12 << v11)) + 2;
        v10 = v14 + 2;
        if (v9 < 4)
        {
          v10 = v15;
        }

        break;
      default:
        break;
    }
  }

  if (v10)
  {
    if (v10 != 1)
    {
      goto LABEL_21;
    }

    v16 = *(v6 - 8);
    v17 = *(a3 + 24);
  }

  else
  {
    v16 = *(*(a3 + 16) - 8);
    v17 = *(a3 + 16);
  }

  (*(v16 + 8))(__dst, v17);
LABEL_21:
  v18 = __src[v9];
  v19 = v18 - 2;
  if (v18 >= 2)
  {
    if (v9 <= 3)
    {
      v20 = v9;
    }

    else
    {
      v20 = 4;
    }

    switch(v20)
    {
      case 1:
        v21 = *__src;
        goto LABEL_30;
      case 2:
        v21 = *__src;
        goto LABEL_30;
      case 3:
        v21 = *__src | (__src[2] << 16);
        goto LABEL_30;
      case 4:
        v21 = *__src;
LABEL_30:
        v22 = (v21 | (v19 << v11)) + 2;
        v18 = v21 + 2;
        if (v9 < 4)
        {
          v18 = v22;
        }

        break;
      default:
        break;
    }
  }

  if (v18 == 1)
  {
    (*(v8 + 32))(__dst, __src, v6);
    __dst[v9] = 1;
    return __dst;
  }

  if (!v18)
  {
    (*(v7 + 32))(__dst, __src, v5);
    __dst[v9] = 0;
    return __dst;
  }

  return memcpy(__dst, __src, v9 + 1);
}

uint64_t sub_1DD0172FC(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(*(a3 + 24) - 8) + 64);
  if (v3 <= *(*(*(a3 + 16) - 8) + 64))
  {
    v3 = *(*(*(a3 + 16) - 8) + 64);
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_22;
  }

  v4 = v3 + 1;
  v5 = 8 * (v3 + 1);
  if ((v3 + 1) <= 3)
  {
    v8 = ((a2 + ~(-1 << v5) - 253) >> v5) + 1;
    if (HIWORD(v8))
    {
      v6 = *(a1 + v4);
      if (!v6)
      {
        goto LABEL_22;
      }

      goto LABEL_14;
    }

    if (v8 > 0xFF)
    {
      v6 = *(a1 + v4);
      if (!*(a1 + v4))
      {
        goto LABEL_22;
      }

      goto LABEL_14;
    }

    if (v8 < 2)
    {
LABEL_22:
      v10 = *(a1 + v3);
      if (v10 >= 3)
      {
        return (v10 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v6 = *(a1 + v4);
  if (!*(a1 + v4))
  {
    goto LABEL_22;
  }

LABEL_14:
  v9 = (v6 - 1) << v5;
  if (v4 > 3)
  {
    v9 = 0;
  }

  if (v4)
  {
    if (v4 > 3)
    {
      LODWORD(v4) = 4;
    }

    switch(v4)
    {
      case 2:
        LODWORD(v4) = *a1;
        break;
      case 3:
        LODWORD(v4) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v4) = *a1;
        break;
      default:
        LODWORD(v4) = *a1;
        break;
    }
  }

  return (v4 | v9) + 254;
}

void sub_1DD017430(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 64);
  if (*(*(*(a4 + 24) - 8) + 64) > v5)
  {
    v5 = *(*(*(a4 + 24) - 8) + 64);
  }

  v6 = v5 + 1;
  v7 = 8 * (v5 + 1);
  if (a3 < 0xFE)
  {
    v8 = 0;
  }

  else if (v6 <= 3)
  {
    v11 = ((a3 + ~(-1 << v7) - 253) >> v7) + 1;
    if (HIWORD(v11))
    {
      v8 = 4;
    }

    else
    {
      if (v11 < 0x100)
      {
        v12 = 1;
      }

      else
      {
        v12 = 2;
      }

      if (v11 >= 2)
      {
        v8 = v12;
      }

      else
      {
        v8 = 0;
      }
    }
  }

  else
  {
    v8 = 1;
  }

  if (a2 > 0xFD)
  {
    v9 = a2 - 254;
    if (v6 < 4)
    {
      v10 = (v9 >> v7) + 1;
      if (v5 != -1)
      {
        v13 = v9 & ~(-1 << v7);
        bzero(a1, v6);
        if (v6 == 3)
        {
          *a1 = v13;
          a1[2] = BYTE2(v13);
        }

        else if (v6 == 2)
        {
          *a1 = v13;
        }

        else
        {
          *a1 = v9;
        }
      }
    }

    else
    {
      bzero(a1, v5 + 1);
      *a1 = v9;
      v10 = 1;
    }

    switch(v8)
    {
      case 1:
        a1[v6] = v10;
        break;
      case 2:
        *&a1[v6] = v10;
        break;
      case 3:
LABEL_37:
        __break(1u);
        break;
      case 4:
        *&a1[v6] = v10;
        break;
      default:
        return;
    }
  }

  else
  {
    switch(v8)
    {
      case 1:
        a1[v6] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_26;
      case 2:
        *&a1[v6] = 0;
        goto LABEL_25;
      case 3:
        goto LABEL_37;
      case 4:
        *&a1[v6] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_26;
      default:
LABEL_25:
        if (a2)
        {
LABEL_26:
          a1[v5] = -a2;
        }

        break;
    }
  }
}

uint64_t sub_1DD017604(unsigned __int8 *a1, uint64_t a2)
{
  v2 = *(*(*(a2 + 24) - 8) + 64);
  if (v2 <= *(*(*(a2 + 16) - 8) + 64))
  {
    v2 = *(*(*(a2 + 16) - 8) + 64);
  }

  v3 = a1[v2];
  v4 = v3 - 2;
  if (v3 >= 2)
  {
    if (v2 <= 3)
    {
      v5 = v2;
    }

    else
    {
      v5 = 4;
    }

    switch(v5)
    {
      case 1:
        v6 = *a1;
        goto LABEL_12;
      case 2:
        v6 = *a1;
        goto LABEL_12;
      case 3:
        v6 = *a1 | (a1[2] << 16);
        goto LABEL_12;
      case 4:
        v6 = *a1;
LABEL_12:
        v7 = (v6 | (v4 << (8 * v2))) + 2;
        LODWORD(v3) = v6 + 2;
        if (v2 >= 4)
        {
          v3 = v3;
        }

        else
        {
          v3 = v7;
        }

        break;
      default:
        return v3;
    }
  }

  return v3;
}

void sub_1DD0176B8(_BYTE *a1, unsigned int a2, uint64_t a3)
{
  if (*(*(*(a3 + 24) - 8) + 64) <= *(*(*(a3 + 16) - 8) + 64))
  {
    v4 = *(*(*(a3 + 16) - 8) + 64);
  }

  else
  {
    v4 = *(*(*(a3 + 24) - 8) + 64);
  }

  if (a2 > 1)
  {
    v5 = a2 - 2;
    if (v4 < 4)
    {
      a1[v4] = (v5 >> (8 * v4)) + 2;
      if (v4)
      {
        v6 = v5 & ~(-1 << (8 * v4));
        bzero(a1, v4);
        if (v4 == 3)
        {
          *a1 = v6;
          a1[2] = BYTE2(v6);
        }

        else if (v4 == 2)
        {
          *a1 = v6;
        }

        else
        {
          *a1 = v5;
        }
      }
    }

    else
    {
      a1[v4] = 2;
      bzero(a1, v4);
      *a1 = v5;
    }
  }

  else
  {
    a1[v4] = a2;
  }
}

uint64_t sub_1DD0177D8()
{
  v1 = v0[2];
  v2 = v0[3];
  OUTLINED_FUNCTION_80_8();
  v3 = *(swift_getAssociatedTypeWitness() - 8);
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0 + ((*(v3 + 80) + 48) & ~*(v3 + 80));

  return sub_1DD015CE8(v4, v5, v6);
}

uint64_t UniversalActionFeatureFlags.isEnabled.getter()
{
  v2[3] = &type metadata for UniversalActionFeatureFlags;
  v2[4] = sub_1DD0178E4();
  v0 = sub_1DD0DB2AC();
  __swift_destroy_boxed_opaque_existential_1Tm(v2);
  return v0 & 1;
}

unint64_t sub_1DD0178E4()
{
  result = qword_1EDE4DB48[0];
  if (!qword_1EDE4DB48[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDE4DB48);
  }

  return result;
}

uint64_t UniversalActionFeatureFlags.hashValue.getter()
{
  sub_1DD0DF1DC();
  MEMORY[0x1E12A7840](0);
  return sub_1DD0DF20C();
}

unint64_t sub_1DD0179E0()
{
  result = qword_1ECCAC258;
  if (!qword_1ECCAC258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCAC258);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for UniversalActionFeatureFlags(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

uint64_t sub_1DD017B48()
{
  OUTLINED_FUNCTION_42();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_40(v1);

  return UnlockDeviceFlowStrategyAsync.makePromptForDeviceUnlock()();
}

uint64_t UnlockDeviceFlowStrategyAsync.makePromptForDeviceUnlock()()
{
  OUTLINED_FUNCTION_42();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_40(v1);

  return sub_1DCCDB478();
}

void UnlockDeviceFlowStrategy.makePromptForDeviceUnlock(_:)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAAB70, &qword_1DD0E17E0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8, v6);
  sub_1DD0DE4BC();
  OUTLINED_FUNCTION_31();
  __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
  OUTLINED_FUNCTION_41_4();
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_1DD10AAC0;
  v11[5] = 0;
  v11[6] = a1;
  v11[7] = a2;
  sub_1DD0DCF8C();
}

uint64_t sub_1DD017D60()
{
  OUTLINED_FUNCTION_42();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_40(v1);

  return sub_1DCD73EA8();
}

SiriKitFlow::AlternativeUnlockModes sub_1DD017E28@<X0>(Swift::Int *a1@<X0>, uint64_t a2@<X8>)
{
  result.rawValue = AlternativeUnlockModes.init(rawValue:)(*a1).rawValue;
  *a2 = v4;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_1DD017E68@<X0>(uint64_t *a1@<X8>)
{
  result = AlternativeUnlockModes.rawValue.getter();
  *a1 = result;
  return result;
}

unint64_t UnlockDevicePolicy.debugDescription.getter()
{
  sub_1DCFF2CD0(sub_1DD019134, &v14, &unk_1F584DE50);
  v1 = v0;
  v2 = *(v0 + 16);
  if (v2)
  {
    v15 = MEMORY[0x1E69E7CC0];
    sub_1DCB38954();
    v3 = v15;
    v4 = (v1 + 48);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;
      v15 = v3;
      v8 = *(v3 + 16);
      v7 = *(v3 + 24);

      if (v8 >= v7 >> 1)
      {
        sub_1DCB38954();
        v3 = v15;
      }

      *(v3 + 16) = v8 + 1;
      v9 = v3 + 16 * v8;
      *(v9 + 32) = v6;
      *(v9 + 40) = v5;
      v4 += 3;
      --v2;
    }

    while (v2);
  }

  else
  {

    v3 = MEMORY[0x1E69E7CC0];
  }

  v15 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2758, &unk_1DD0E6880);
  sub_1DCBF7DC0(&qword_1EDE46280, &qword_1ECCA2758, &unk_1DD0E6880);
  v10 = sub_1DD0DDF6C();
  v12 = v11;

  v15 = 0;
  v16 = 0xE000000000000000;
  sub_1DD0DEC1C();

  v15 = 0xD000000000000023;
  v16 = 0x80000001DD129CC0;
  MEMORY[0x1E12A6780](v10, v12);

  MEMORY[0x1E12A6780](93, 0xE100000000000000);
  return v15;
}

void sub_1DD018084(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, unint64_t a6)
{
  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v10 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v10, qword_1EDE57E00);

  v11 = a1;
  v12 = sub_1DD0DD8EC();
  v13 = sub_1DD0DE6DC();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *&v26 = swift_slowAlloc();
    *v14 = 136315394;
    v15 = [v11 identifier];
    v16 = sub_1DD0DDFBC();
    v17 = a5;
    v18 = a6;
    v20 = v19;

    v21 = sub_1DCB10E9C(v16, v20, &v26);

    *(v14 + 4) = v21;
    *(v14 + 12) = 2080;
    if (v18)
    {
      v22 = v17;
    }

    else
    {
      v22 = 0x3E6C696E3CLL;
    }

    if (v18)
    {
      v23 = v18;
    }

    else
    {
      v23 = 0xE500000000000000;
    }

    v24 = sub_1DCB10E9C(v22, v23, &v26);

    *(v14 + 14) = v24;
    _os_log_impl(&dword_1DCAFC000, v12, v13, "Creating an unlock device Output using a direct invocation: %s and refID: %s", v14, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_80();
    OUTLINED_FUNCTION_80();
  }

  v25 = a4[4];
  __swift_project_boxed_opaque_existential_1(a4, a4[3]);
  DeviceState.asInvocationContext.getter();
}

uint64_t sub_1DD018F94()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1DCB4AE1C;

  return UnlockDeviceFlowStrategy.makePromptForDeviceUnlock()();
}

uint64_t UnlockDeviceFlowStrategy.makePromptForDeviceUnlock()()
{
  OUTLINED_FUNCTION_42();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_40(v1);

  return sub_1DCCDB478();
}

uint64_t sub_1DD0190B0()
{
  OUTLINED_FUNCTION_42();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_40(v1);

  return sub_1DCCDB478();
}

uint64_t sub_1DD01914C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1DCB4AD3C;

  return UnlockDeviceFlowStrategyAsync.makePromptForDeviceUnlock()();
}

void *UnlockDeviceFlow.exitValue.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 16);
  sub_1DCB8D4CC(v2, *(v1 + 24));
  return v2;
}

uint64_t UnlockDeviceFlow.__allocating_init(strategy:deviceState:metricsState:outputPublisher:)()
{
  OUTLINED_FUNCTION_135();
  v0 = swift_allocObject();
  UnlockDeviceFlow.init(strategy:deviceState:metricsState:outputPublisher:)();
  return v0;
}

uint64_t sub_1DD019284(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v10 = a3[3];
  v11 = a3[4];
  __swift_project_boxed_opaque_existential_1(a3, v10);
  sub_1DCDD5204(v10, v11);
  v12 = sub_1DCC7E190(a1);
  sub_1DCB17D04(a2, v21);
  sub_1DCB17D04(a4, v20);
  type metadata accessor for OutputPublisherAsyncAdapter();
  v13 = swift_allocObject();
  sub_1DCAFF9E8(v20, v13 + 16);
  v14 = type metadata accessor for UnlockDeviceFlowAsync(0);
  v15 = *(v14 + 48);
  v16 = *(v14 + 52);
  v17 = swift_allocObject();
  v18 = sub_1DD01E050(v12, v21, v13, v17);
  __swift_destroy_boxed_opaque_existential_1Tm(a4);
  __swift_destroy_boxed_opaque_existential_1Tm(a2);
  *(v5 + 16) = v18;
  __swift_destroy_boxed_opaque_existential_1Tm(a3);
  return v5;
}

void UnlockDeviceFlow.init(strategy:deviceState:metricsState:outputPublisher:)()
{
  OUTLINED_FUNCTION_50();
  v1 = v0;
  v35 = v2;
  v36 = v3;
  v37 = v4;
  v5 = *v0;
  v6 = *(*v0 + 80);
  OUTLINED_FUNCTION_0_1();
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v11, v12);
  OUTLINED_FUNCTION_10_2();
  v15 = v13 - v14;
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v35 - v18;
  v38 = v20;
  v21 = v20[3];
  v22 = v20[4];
  __swift_project_boxed_opaque_existential_1(v20, v21);
  sub_1DCDD5204(v21, v22);
  v23 = type metadata accessor for AnyUnlockDeviceFlowStrategy();
  v24 = *(v8 + 16);
  OUTLINED_FUNCTION_26_18();
  v24();
  (v24)(v15, v19, v6);
  v25 = sub_1DD01DF10(v15, v23, v6, *(v5 + 88));
  v26 = *(v8 + 8);
  v26(v19, v6);
  v27 = v35;
  sub_1DCB17D04(v35, v40);
  v28 = v36;
  sub_1DCB17D04(v36, v39);
  type metadata accessor for OutputPublisherAsyncAdapter();
  OUTLINED_FUNCTION_1_1();
  v29 = swift_allocObject();
  sub_1DCAFF9E8(v39, v29 + 16);
  v30 = type metadata accessor for UnlockDeviceFlowAsync(0);
  v31 = *(v30 + 48);
  v32 = *(v30 + 52);
  v33 = swift_allocObject();
  v34 = sub_1DD01E050(v25, v40, v29, v33);
  __swift_destroy_boxed_opaque_existential_1Tm(v28);
  __swift_destroy_boxed_opaque_existential_1Tm(v27);
  v26(v37, v6);
  v1[2] = v34;
  __swift_destroy_boxed_opaque_existential_1Tm(v38);
  OUTLINED_FUNCTION_49();
}

uint64_t UnlockDeviceFlow.on(input:)()
{
  v1 = *(v0 + 16);
  sub_1DD0195D0();
  return v2 & 1;
}

void sub_1DD0195D0()
{
  OUTLINED_FUNCTION_50();
  v67 = v1;
  v68 = type metadata accessor for Parse(0);
  v2 = OUTLINED_FUNCTION_2(v68);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2, v5);
  OUTLINED_FUNCTION_16();
  v8 = (v7 - v6);
  v9 = type metadata accessor for UnlockDeviceFlowAsync.State(0);
  v10 = OUTLINED_FUNCTION_2(v9);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10, v13);
  OUTLINED_FUNCTION_10_2();
  v16 = v14 - v15;
  MEMORY[0x1EEE9AC00](v17, v18);
  v20 = v65 - v19;
  v21 = sub_1DD0DB04C();
  OUTLINED_FUNCTION_0_1();
  v23 = v22;
  v25 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v26, v27);
  OUTLINED_FUNCTION_10_2();
  v30 = v28 - v29;
  MEMORY[0x1EEE9AC00](v31, v32);
  v34 = v65 - v33;
  v35 = OBJC_IVAR____TtC11SiriKitFlow21UnlockDeviceFlowAsync_state;
  swift_beginAccess();
  OUTLINED_FUNCTION_8_80();
  sub_1DD01F3A0(v0 + v35, v20, v36);
  if (!swift_getEnumCaseMultiPayload())
  {
    v65[1] = v9;
    v66 = v0;
    v65[0] = v16;
    v39 = v30;
    (*(v23 + 32))(v34, v20, v21);
    v40 = type metadata accessor for Input(0);
    sub_1DD01F3A0(v67 + *(v40 + 20), v8, type metadata accessor for Parse);
    if (swift_getEnumCaseMultiPayload() != 2)
    {
      (*(v23 + 8))(v34, v21);
      v37 = type metadata accessor for Parse;
      v38 = v8;
      goto LABEL_19;
    }

    v68 = v34;
    v41 = v8[2];
    if (*v8 != 0xD000000000000030 || 0x80000001DD129E50 != v8[1])
    {
      v43 = v8[1];
      if ((sub_1DD0DF0AC() & 1) == 0)
      {
        (*(v23 + 8))(v68, v21);

        goto LABEL_20;
      }
    }

    v44 = v23;
    if (v41)
    {
      OUTLINED_FUNCTION_74_20();
      v45 = v68;
      if (*(&v73 + 1))
      {
        if (swift_dynamicCast())
        {
          v47 = v69;
          v46 = v70;
          if (v47 == sub_1DD0DAFFC() && v46 == v48)
          {

LABEL_37:

            v64 = v65[0];
            swift_storeEnumTagMultiPayload();
            sub_1DD01B00C(v64);
          }

          v50 = sub_1DD0DF0AC();

          if (v50)
          {

            goto LABEL_37;
          }
        }

LABEL_23:
        if (qword_1EDE4F900 != -1)
        {
          OUTLINED_FUNCTION_0_0();
        }

        v51 = sub_1DD0DD8FC();
        __swift_project_value_buffer(v51, qword_1EDE57E00);
        (*(v44 + 16))(v39, v45, v21);

        v52 = sub_1DD0DD8EC();
        v53 = sub_1DD0DE6EC();

        if (!os_log_type_enabled(v52, v53))
        {

          v62 = *(v44 + 8);
          v62(v39, v21);
          v62(v45, v21);
          goto LABEL_20;
        }

        v54 = v44;
        v55 = swift_slowAlloc();
        v71 = swift_slowAlloc();
        *v55 = 136315394;
        v56 = sub_1DD0DAFFC();
        v58 = v57;
        v66 = *(v54 + 8);
        v67 = v54 + 8;
        v66(v39, v21);
        v59 = sub_1DCB10E9C(v56, v58, &v71);

        *(v55 + 4) = v59;
        *(v55 + 12) = 2080;
        if (v41)
        {
          OUTLINED_FUNCTION_74_20();
          if (*(&v73 + 1))
          {
            if (swift_dynamicCast())
            {
              v61 = v69;
              v60 = v70;

LABEL_35:
              v63 = sub_1DCB10E9C(v61, v60, &v71);

              *(v55 + 14) = v63;
              _os_log_impl(&dword_1DCAFC000, v52, v53, "UnlockDeviceFlow got an unlock complete DI with the wrong identifier. Some other unlock request has interrupted unlock, and we don't know how to recover. (expected: %s, got: %s", v55, 0x16u);
              swift_arrayDestroy();
              OUTLINED_FUNCTION_80();
              OUTLINED_FUNCTION_80();

              v66(v68, v21);
              goto LABEL_20;
            }

LABEL_34:

            v60 = 0xE500000000000000;
            v61 = 0x3E6C696E3CLL;
            goto LABEL_35;
          }
        }

        else
        {
          v72 = 0u;
          v73 = 0u;
        }

        sub_1DCB0E9D8(&v72, &dword_1ECCA3CE0, &unk_1DD0E4F80);
        goto LABEL_34;
      }
    }

    else
    {
      v72 = 0u;
      v73 = 0u;
      v45 = v68;
    }

    sub_1DCB0E9D8(&v72, &dword_1ECCA3CE0, &unk_1DD0E4F80);
    goto LABEL_23;
  }

  OUTLINED_FUNCTION_7_83();
  v38 = v20;
LABEL_19:
  sub_1DD01F2E4(v38, v37);
LABEL_20:
  OUTLINED_FUNCTION_49();
}

uint64_t UnlockDeviceFlow.execute()(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t sub_1DD019CA8()
{
  OUTLINED_FUNCTION_42();
  v1 = *(*(v0 + 24) + 16);
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  *(v0 + 32) = v2;
  *v2 = v3;
  OUTLINED_FUNCTION_31_1(v2);

  return sub_1DD019D34();
}

uint64_t sub_1DD019D34()
{
  OUTLINED_FUNCTION_42();
  v1[18] = v2;
  v1[19] = v0;
  v3 = type metadata accessor for UnlockDeviceFlowAsync.State(0);
  v1[20] = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  v1[21] = swift_task_alloc();
  v1[22] = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1DD019DC8()
{
  v94 = v0;
  v1 = *(v0 + 176);
  v3 = *(v0 + 152);
  v2 = *(v0 + 160);
  v4 = OBJC_IVAR____TtC11SiriKitFlow21UnlockDeviceFlowAsync_state;
  swift_beginAccess();
  OUTLINED_FUNCTION_8_80();
  sub_1DD01F3A0(v3 + v4, v1, v5);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v42 = **(v0 + 176);
      if (qword_1EDE4F900 != -1)
      {
        OUTLINED_FUNCTION_0_0();
      }

      v43 = sub_1DD0DD8FC();
      __swift_project_value_buffer(v43, qword_1EDE57E00);
      v44 = v42;
      v45 = sub_1DD0DD8EC();
      v46 = sub_1DD0DE6EC();

      if (os_log_type_enabled(v45, v46))
      {
        v47 = swift_slowAlloc();
        v48 = swift_slowAlloc();
        v93 = v48;
        *v47 = 136315138;
        *(v0 + 136) = v42;
        v49 = v42;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA33E0, &unk_1DD0E1650);
        v50 = sub_1DD0DE02C();
        v52 = sub_1DCB10E9C(v50, v51, &v93);

        *(v47 + 4) = v52;
        OUTLINED_FUNCTION_15_8();
        _os_log_impl(v53, v54, v55, v56, v57, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v48);
        OUTLINED_FUNCTION_80();
        OUTLINED_FUNCTION_80();
      }

      v58 = OUTLINED_FUNCTION_60_19();
      *(v60 + 16) = v42;
      *(v60 + 24) = 1;
      break;
    case 2u:
      swift_task_alloc();
      OUTLINED_FUNCTION_45();
      *(v0 + 184) = v8;
      *v8 = v9;
      v8[1] = sub_1DD01A5C8;
      v10 = *(v0 + 144);
      v11 = *(v0 + 152);
      OUTLINED_FUNCTION_96_0();

      return sub_1DD01B090(v12);
    case 3u:
      if (qword_1EDE4F900 != -1)
      {
        OUTLINED_FUNCTION_0_0();
      }

      v15 = sub_1DD0DD8FC();
      __swift_project_value_buffer(v15, qword_1EDE57E00);
      v16 = sub_1DD0DD8EC();
      v17 = sub_1DD0DE6DC();
      if (os_log_type_enabled(v16, v17))
      {
        *OUTLINED_FUNCTION_50_0() = 0;
        OUTLINED_FUNCTION_15_8();
        _os_log_impl(v18, v19, v20, v21, v22, 2u);
        OUTLINED_FUNCTION_80();
      }

      v23 = *(v0 + 152);

      v24 = v23[8];
      v25 = v23[9];
      OUTLINED_FUNCTION_46_31(v23 + 5);
      v27 = *(v26 + 104);
      v28 = OUTLINED_FUNCTION_15_65();
      if ((v29(v28) & 1) == 0)
      {
        v65 = sub_1DD0DD8EC();
        v66 = sub_1DD0DE6DC();
        if (OUTLINED_FUNCTION_23(v66))
        {
          v67 = OUTLINED_FUNCTION_50_0();
          OUTLINED_FUNCTION_46(v67);
          OUTLINED_FUNCTION_36_0();
          _os_log_impl(v68, v69, v70, v71, v72, 2u);
          OUTLINED_FUNCTION_62();
        }

        if (qword_1EDE4F6A8 != -1)
        {
          OUTLINED_FUNCTION_0();
        }

        type metadata accessor for SiriKitEvent(0);
        OUTLINED_FUNCTION_59_26();
        OUTLINED_FUNCTION_2_114();
      }

      v30 = v23[9];
      __swift_project_boxed_opaque_existential_1(v23 + 5, v23[8]);
      *(v0 + 16) = 4;
      *(v0 + 48) = &type metadata for FeatureFlagDefinitions.Core;
      *(v0 + 56) = &off_1F585CB38;
      *(v0 + 24) = 0;
      v31 = *(v30 + 248);
      OUTLINED_FUNCTION_26_18();
      v33 = v32();
      sub_1DCC4B20C(v0 + 16);
      if (v33)
      {
        v34 = sub_1DD0DD8EC();
        v35 = sub_1DD0DE6DC();
        if (OUTLINED_FUNCTION_23(v35))
        {
          v36 = OUTLINED_FUNCTION_50_0();
          OUTLINED_FUNCTION_46(v36);
          OUTLINED_FUNCTION_36_0();
          _os_log_impl(v37, v38, v39, v40, v41, 2u);
          OUTLINED_FUNCTION_62();
        }

        if (qword_1EDE4F6A8 != -1)
        {
          OUTLINED_FUNCTION_0();
        }

        type metadata accessor for SiriKitEvent(0);
        OUTLINED_FUNCTION_59_26();
        OUTLINED_FUNCTION_2_114();
      }

      v73 = v23[9];
      __swift_project_boxed_opaque_existential_1(v23 + 5, v23[8]);
      *(v0 + 64) = 2;
      *(v0 + 96) = &type metadata for FeatureFlagDefinitions.Core;
      *(v0 + 104) = &off_1F585CB38;
      *(v0 + 72) = 0;
      v74 = *(v73 + 248);
      OUTLINED_FUNCTION_26_18();
      v76 = v75();
      sub_1DCC4B20C(v0 + 64);
      v77 = sub_1DD0DD8EC();
      if (v76)
      {
        v78 = sub_1DD0DE6DC();
        if (OUTLINED_FUNCTION_23(v78))
        {
          v79 = OUTLINED_FUNCTION_50_0();
          OUTLINED_FUNCTION_46(v79);
          OUTLINED_FUNCTION_36_0();
          _os_log_impl(v80, v81, v82, v83, v84, 2u);
          OUTLINED_FUNCTION_62();
        }

        if (qword_1EDE4F6A8 != -1)
        {
          OUTLINED_FUNCTION_0();
        }

        type metadata accessor for SiriKitEvent(0);
        OUTLINED_FUNCTION_59_26();
        OUTLINED_FUNCTION_2_114();
      }

      v85 = sub_1DD0DE6EC();
      if (OUTLINED_FUNCTION_23(v85))
      {
        v86 = OUTLINED_FUNCTION_50_0();
        OUTLINED_FUNCTION_46(v86);
        OUTLINED_FUNCTION_36_0();
        _os_log_impl(v87, v88, v89, v90, v91, 2u);
        OUTLINED_FUNCTION_62();
      }

      v58 = OUTLINED_FUNCTION_60_19();
      *(v92 + 16) = 0;
      *(v92 + 24) = 0;
      break;
    default:
      if (qword_1EDE4F900 != -1)
      {
        OUTLINED_FUNCTION_0_0();
      }

      v6 = *(v0 + 152);
      v7 = sub_1DD0DD8FC();
      __swift_project_value_buffer(v7, qword_1EDE57E00);
      OUTLINED_FUNCTION_48_1();
      sub_1DD0DCF8C();
  }

  sub_1DCB79378(v58, v59);
  static ExecuteResponse.complete()();
  v62 = *(v0 + 168);
  v61 = *(v0 + 176);

  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_96_0();

  __asm { BRAA            X1, X16 }

  return result;
}

uint64_t sub_1DD01A5C8()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_13_0();
  *v3 = v2;
  v5 = *(v4 + 184);
  v6 = *v1;
  OUTLINED_FUNCTION_27();
  *v7 = v6;
  *(v8 + 192) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1DD01A6C4()
{
  OUTLINED_FUNCTION_42();
  v2 = *(v0 + 168);
  v1 = *(v0 + 176);

  OUTLINED_FUNCTION_29();

  return v3();
}

uint64_t sub_1DD01A724()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v2 = *(v1 + 208);
  v3 = *(v1 + 200);
  v4 = *v0;
  OUTLINED_FUNCTION_27();
  *v5 = v4;

  v6 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1DD01A824()
{
  OUTLINED_FUNCTION_42();
  v1 = OUTLINED_FUNCTION_60_19();
  *(v2 + 16) = 0;
  *(v2 + 24) = 0;
  sub_1DCB79378(v1, v3);
  static ExecuteResponse.complete()();
  v5 = *(v0 + 168);
  v4 = *(v0 + 176);

  OUTLINED_FUNCTION_29();

  return v6();
}

uint64_t sub_1DD01A89C()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v2 = *(v1 + 224);
  v3 = *(v1 + 216);
  v4 = *v0;
  OUTLINED_FUNCTION_27();
  *v5 = v4;

  v6 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1DD01A99C()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v2 = *(v1 + 240);
  v3 = *(v1 + 232);
  v4 = *v0;
  OUTLINED_FUNCTION_27();
  *v5 = v4;

  v6 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

void sub_1DD01AA9C()
{
  OUTLINED_FUNCTION_39();
  v1 = v0[24];
  v2 = v0[20];
  v3 = v0[21];
  v5 = v0[18];
  v4 = v0[19];
  *v3 = v1;
  swift_storeEnumTagMultiPayload();
  v6 = v1;
  sub_1DD01B00C(v3);
}

uint64_t UnlockDeviceFlow.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t UnlockDeviceFlow.__deallocating_deinit()
{
  UnlockDeviceFlow.deinit();
  OUTLINED_FUNCTION_135();

  return swift_deallocClassInstance();
}

void sub_1DD01AB90(void **a1)
{
  *a1 = __swift_coroFrameAllocStub(0x28uLL);
  v2 = *v1;
  sub_1DD0DCAFC();
}

uint64_t sub_1DD01AC54(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1DCB4AD3C;

  return UnlockDeviceFlow.execute()(a1);
}

void *sub_1DD01ACF0@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  result = UnlockDeviceFlow.exitValue.getter();
  *a1 = result;
  *(a1 + 8) = v5 & 1;
  return result;
}

void sub_1DD01AD24()
{
  v1 = *v0;
  v2 = type metadata accessor for UnlockDeviceFlowAsync.State(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2, v4);
  if (qword_1EDE4F900 != -1)
  {
    swift_once();
  }

  v5 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v5, qword_1EDE57E00);
  sub_1DD0DCF8C();
}

void sub_1DD01B00C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC11SiriKitFlow21UnlockDeviceFlowAsync_state;
  swift_beginAccess();
  sub_1DD01F33C(a1, v1 + v3);
  swift_endAccess();
  sub_1DD01AD24();
}

uint64_t sub_1DD01B090(uint64_t a1)
{
  v2[43] = a1;
  v2[44] = v1;
  v3 = type metadata accessor for SiriKitEventPayload(0);
  v2[45] = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  v2[46] = swift_task_alloc();
  v5 = type metadata accessor for UnlockDeviceFlowAsync.State(0);
  v2[47] = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  v2[48] = swift_task_alloc();
  v7 = sub_1DD0DB04C();
  v2[49] = v7;
  v8 = *(v7 - 8);
  v2[50] = v8;
  v9 = *(v8 + 64) + 15;
  v2[51] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DD01B1B0, 0, 0);
}

uint64_t sub_1DD01B1B0()
{
  OUTLINED_FUNCTION_39();
  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v1 = sub_1DD0DD8FC();
  v0[52] = __swift_project_value_buffer(v1, qword_1EDE57E00);
  v2 = sub_1DD0DD8EC();
  v3 = sub_1DD0DE6DC();
  if (OUTLINED_FUNCTION_23(v3))
  {
    v4 = OUTLINED_FUNCTION_50_0();
    OUTLINED_FUNCTION_46(v4);
    OUTLINED_FUNCTION_36_0();
    _os_log_impl(v5, v6, v7, v8, v9, 2u);
    OUTLINED_FUNCTION_62();
  }

  v10 = v0[44];

  v0[53] = *(v10 + 32);
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  v0[54] = v11;
  *v11 = v12;
  v11[1] = sub_1DD01B2CC;

  return sub_1DD01CD9C((v0 + 21));
}

uint64_t sub_1DD01B2CC()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_13_0();
  *v3 = v2;
  v5 = *(v4 + 432);
  v6 = *v1;
  OUTLINED_FUNCTION_27();
  *v7 = v6;
  *(v8 + 440) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

void sub_1DD01B3C8()
{
  v1 = v0[53];
  v2 = v0[51];
  v3 = v0[44];
  sub_1DD01C11C((v0 + 21));
  sub_1DD0DB03C();
  sub_1DCB10E5C(0, &qword_1EDE46110, 0x1E69D01C8);
  v4 = sub_1DCD10120();
  v0[56] = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4918, &qword_1DD0ED840);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DD0E07C0;
  v0[40] = 25705;
  v0[41] = 0xE200000000000000;
  v6 = MEMORY[0x1E69E6158];
  sub_1DD0DEBBC();
  v7 = sub_1DD0DAFFC();
  *(inited + 96) = v6;
  *(inited + 72) = v7;
  *(inited + 80) = v8;
  v9 = sub_1DD0DDE9C();
  sub_1DCDAD634(v9, v4);
  v10 = *(v1 + 24);
  v11 = (*(v1 + 16))();
  v12 = *(v1 + 40);
  v13 = (*(v1 + 32))(v11);
  v14 = OUTLINED_FUNCTION_86();
  sub_1DD018084(v14, v15, v13, v16, 0, 0);
}

uint64_t sub_1DD01B7FC()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v3 = v2;
  OUTLINED_FUNCTION_13_0();
  *v4 = v3;
  v6 = *(v5 + 480);
  v7 = *v1;
  OUTLINED_FUNCTION_27();
  *v8 = v7;
  v3[61] = v0;

  if (v0)
  {
    v9 = v3[57];
    __swift_destroy_boxed_opaque_existential_1Tm(v3 + 26);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v3 + 26);
  }

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1DD01B914()
{
  v2 = v1[58];
  v3 = v1[59] + 1;
  v1[59] = v3;
  v4 = v1[57];
  if (v3 == v2)
  {
    v5 = v1[52];

    v6 = sub_1DD0DD8EC();
    v7 = sub_1DD0DE6DC();
    if (OUTLINED_FUNCTION_23(v7))
    {
      v8 = OUTLINED_FUNCTION_50_0();
      OUTLINED_FUNCTION_46(v8);
      OUTLINED_FUNCTION_36_0();
      _os_log_impl(v9, v10, v11, v12, v13, 2u);
      OUTLINED_FUNCTION_62();
    }

    v14 = OUTLINED_FUNCTION_19_49();
    v15(v14);
    OUTLINED_FUNCTION_86();
    swift_storeEnumTagMultiPayload();
    sub_1DD01B00C(v0);
  }

  if (v3 >= *(v4 + 16))
  {
    __break(1u);
    OUTLINED_FUNCTION_0();
    v17 = v1[45];
    v16 = v1[46];
    v18 = OUTLINED_FUNCTION_16_64();
    v19(v18);
    type metadata accessor for SiriKitEvent(0);
    OUTLINED_FUNCTION_6_85();
    sub_1DCB09910((v1 + 36), v16 + 48, &dword_1ECCA3CE0, &unk_1DD0E4F80);
    *(v16 + 80) = 0;
    *(v16 + 88) = 0;
    sub_1DCB09910((v1 + 31), v16 + 96, &unk_1ECCA3280, &unk_1DD0E23D0);
    OUTLINED_FUNCTION_17_52();
    v1[62] = SiriKitEvent.__allocating_init(_:builder:)(v16, 0);
    v20 = swift_task_alloc();
    v1[63] = v20;
    *v20 = v1;
    v21 = OUTLINED_FUNCTION_3_125(v20);

    return sub_1DCB649AC(v21);
  }

  else
  {
    v23 = v1[44];
    sub_1DCB17D04(v4 + 40 * v3 + 32, (v1 + 26));
    v24 = v23[14];
    __swift_project_boxed_opaque_existential_1(v23 + 10, v23[13]);
    v25 = *(OUTLINED_FUNCTION_48_1() + 8);
    OUTLINED_FUNCTION_25_1();
    v33 = v26 + *v26;
    v28 = *(v27 + 4);
    swift_task_alloc();
    OUTLINED_FUNCTION_45();
    v1[60] = v29;
    *v29 = v30;
    v31 = OUTLINED_FUNCTION_25_36();

    return v32(v31);
  }
}

uint64_t sub_1DD01BC20()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v2 = v1;
  OUTLINED_FUNCTION_13_0();
  *v3 = v2;
  v5 = *(v4 + 504);
  v6 = *(v4 + 496);
  v7 = *v0;
  OUTLINED_FUNCTION_27();
  *v8 = v7;

  sub_1DCB0E9D8(v2 + 248, &unk_1ECCA3280, &unk_1DD0E23D0);
  sub_1DCB0E9D8(v2 + 288, &dword_1ECCA3CE0, &unk_1DD0E4F80);
  v9 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1DD01BD4C()
{
  OUTLINED_FUNCTION_39();
  v2 = *(v0 + 400);
  v1 = *(v0 + 408);
  v3 = *(v0 + 392);

  (*(v2 + 8))(v1, v3);
  OUTLINED_FUNCTION_23_36();
  OUTLINED_FUNCTION_70_15();

  OUTLINED_FUNCTION_29();

  return v4();
}

uint64_t sub_1DD01BDE8()
{
  OUTLINED_FUNCTION_42();
  v1 = v0[51];
  v2 = v0[48];
  v3 = v0[46];

  OUTLINED_FUNCTION_29();
  v5 = v0[55];

  return v4();
}

void sub_1DD01BE5C()
{
  v22 = v0;
  v1 = v0[61];
  v2 = v0[52];
  v3 = v1;
  v4 = sub_1DD0DD8EC();
  v5 = sub_1DD0DE6DC();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[61];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v21 = v8;
    *v7 = 136315138;
    v0[42] = v6;
    v9 = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA33E0, &unk_1DD0E1650);
    v10 = sub_1DD0DE02C();
    v12 = sub_1DCB10E9C(v10, v11, &v21);

    *(v7 + 4) = v12;
    OUTLINED_FUNCTION_15_8();
    _os_log_impl(v13, v14, v15, v16, v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v8);
    OUTLINED_FUNCTION_80();
    OUTLINED_FUNCTION_80();
  }

  else
  {
    v18 = v0[61];
  }

  v19 = OUTLINED_FUNCTION_19_49();
  v20(v19);
  OUTLINED_FUNCTION_86();
  swift_storeEnumTagMultiPayload();
  sub_1DD01B00C(v5);
}

uint64_t sub_1DD01C11C(uint64_t a1)
{
  v2 = type metadata accessor for AceOutput();
  v3 = *(*(v2 - 8) + 64);
  v5 = MEMORY[0x1EEE9AC00](v2, v4);
  v7 = &v22[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v22[-v9];
  sub_1DCB17D04(a1, v25);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAC3A0, &unk_1DD0E1640);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA9C88, &qword_1DD101B90);
  if (!swift_dynamicCast())
  {
    type metadata accessor for EmptyOutput();
    if (swift_dynamicCast())
    {

      goto LABEL_5;
    }

    if (swift_dynamicCast())
    {
      sub_1DCB6DF70(v10, v7);
      v11 = *v7;

      sub_1DD01F2E4(v7, type metadata accessor for AceOutput);
      __swift_destroy_boxed_opaque_existential_1Tm(v25);
      return v11;
    }

    if (qword_1EDE4F900 != -1)
    {
      swift_once();
    }

    v13 = sub_1DD0DD8FC();
    __swift_project_value_buffer(v13, qword_1EDE57E00);
    sub_1DCB17D04(a1, v24);
    v14 = sub_1DD0DD8EC();
    v15 = sub_1DD0DE6EC();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v23 = v17;
      *v16 = 136315138;
      sub_1DCB17D04(v24, v22);
      v18 = sub_1DD0DE02C();
      v20 = v19;
      __swift_destroy_boxed_opaque_existential_1Tm(v24);
      v21 = sub_1DCB10E9C(v18, v20, &v23);

      *(v16 + 4) = v21;
      _os_log_impl(&dword_1DCAFC000, v14, v15, "Received non-Ace Output for UnlockFlow... Cannot currently handle non-ace output for unlocking (got: %s", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v17);
      MEMORY[0x1E12A8390](v17, -1, -1);
      MEMORY[0x1E12A8390](v16, -1, -1);

      goto LABEL_5;
    }
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v24);
LABEL_5:
  __swift_destroy_boxed_opaque_existential_1Tm(v25);
  return MEMORY[0x1E69E7CC0];
}

uint64_t sub_1DD01C408()
{
  sub_1DCB79378(*(v0 + 16), *(v0 + 24));
  v1 = *(v0 + 32);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 40));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 80));
  v2 = *(v0 + 144);

  OUTLINED_FUNCTION_7_83();
  sub_1DD01F2E4(v0 + v3, v4);
  return v0;
}

uint64_t sub_1DD01C460()
{
  sub_1DD01C408();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

void sub_1DD01C4B8(void **a1)
{
  *a1 = __swift_coroFrameAllocStub(0x28uLL);
  v2 = *v1;
  sub_1DD0DCAFC();
}

uint64_t sub_1DD01C530()
{
  v1 = *v0;
  sub_1DD0195D0();
  return v2 & 1;
}

uint64_t sub_1DD01C57C()
{
  OUTLINED_FUNCTION_42();
  v1 = *v0;
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_11_0(v2);
  *v3 = v4;
  v3[1] = sub_1DCB4AE1C;

  return sub_1DD019D34();
}

id sub_1DD01C60C@<X0>(uint64_t a1@<X8>)
{
  v2 = *(*v1 + 16);
  v3 = *(*v1 + 24);
  *a1 = v2;
  *(a1 + 8) = v3;
  return sub_1DCB8D4CC(v2, v3);
}

uint64_t static SimpleUnlockDeviceFlowHelper.makeUnlockFlow(deviceState:metricsState:outputPublisher:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v34 = 0;
  v36 = &type metadata for FeatureFlagDefinitions.Core;
  v37 = &off_1F585CB38;
  v35 = 0;
  sub_1DCC7DF20(&v34, v33);
  type metadata accessor for SimpleUnlockDeviceFlowHelper.SimpleUnlockDeviceFlowStrategy();
  OUTLINED_FUNCTION_41_4();
  v5 = swift_allocObject();
  OUTLINED_FUNCTION_52_31(v5, v6, v7, v8, v9, v10, v11, v12, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33[0], v33[1], v33[2]);
  sub_1DCB17D04(a2, &v28);
  sub_1DCB17D04(a3, &v23);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAC268, &qword_1DD10AAE0);
  OUTLINED_FUNCTION_135();
  v13 = swift_allocObject();
  v21 = OUTLINED_FUNCTION_64_21(v13, v14, v15, v16, v17, v18, v19, v20, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32, *&v33[0]);
  sub_1DCC4B20C(&v34);
  return v21;
}

uint64_t static SimpleUnlockDeviceFlowHelper.makeUnlockFlow(policy:deviceState:metricsState:outputPublisher:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1DCC7DF20(a1, v33);
  type metadata accessor for SimpleUnlockDeviceFlowHelper.SimpleUnlockDeviceFlowStrategy();
  OUTLINED_FUNCTION_41_4();
  v6 = swift_allocObject();
  OUTLINED_FUNCTION_52_31(v6, v7, v8, v9, v10, v11, v12, v13, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33[0], v33[1], v33[2]);
  sub_1DCB17D04(a3, &v28);
  sub_1DCB17D04(a4, &v23);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAC268, &qword_1DD10AAE0);
  OUTLINED_FUNCTION_135();
  v14 = swift_allocObject();
  return OUTLINED_FUNCTION_64_21(v14, v15, v16, v17, v18, v19, v20, v21, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32, *&v33[0]);
}

uint64_t SimpleUnlockDeviceFlowHelper.SimpleUnlockDeviceFlowStrategy.__deallocating_deinit()
{
  sub_1DCC4B20C(v0 + 16);
  OUTLINED_FUNCTION_41_4();

  return swift_deallocClassInstance();
}

uint64_t sub_1DD01C7EC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1DCB4AE1C;

  return sub_1DCD73EA8();
}

void *sub_1DD01C898(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[2] = a1;
  v7[3] = a2;
  v7[6] = a5;
  v7[7] = a6;
  v7[4] = a3;
  v7[5] = a4;
  v7[8] = a7;
  return v7;
}

uint64_t sub_1DD01C8B0(void *a1)
{
  v1 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v2 = *(v1 + 8);
  v3 = OUTLINED_FUNCTION_48_1();
  return v4(v3, v1);
}

uint64_t sub_1DD01C904(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t sub_1DD01C918()
{
  OUTLINED_FUNCTION_39();
  v1 = v0[3];
  v2 = swift_task_alloc();
  v0[4] = v2;
  *(v2 + 16) = v1;
  v3 = *(MEMORY[0x1E69E8920] + 4);
  v4 = swift_task_alloc();
  v0[5] = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAC3A0, &unk_1DD0E1640);
  *v4 = v0;
  v4[1] = sub_1DCCD0830;
  v5 = v0[2];
  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DE38](v6);
}

uint64_t sub_1DD01CA18(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAC3B0, &unk_1DD0E5A00);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v15 - v8;
  v10 = a2[3];
  v11 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v10);
  (*(v5 + 16))(v9, a1, v4);
  v12 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v13 = swift_allocObject();
  (*(v5 + 32))(v13 + v12, v9, v4);
  (*(v11 + 16))(sub_1DD01F408, v13, v10, v11);
}

uint64_t sub_1DD01CB90(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v1);
  return (*(v2 + 8))(v1, v2);
}

uint64_t sub_1DD01CBE8(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v1);
  return (*(v2 + 16))(v1, v2);
}

uint64_t sub_1DD01CC38(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1DD01CC58, 0, 0);
}

uint64_t sub_1DD01CC58()
{
  v1 = *(v0 + 24);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  v9 = (OUTLINED_FUNCTION_48_1() + 24);
  v10 = (*v9 + **v9);
  v4 = (*v9)[1];
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  *(v0 + 32) = v5;
  *v5 = v6;
  v7 = OUTLINED_FUNCTION_31_1(v5);

  return v10(v7, v2, v3);
}

uint64_t sub_1DD01CD74()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  return v1();
}

uint64_t sub_1DD01CD9C(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t sub_1DD01CDB0()
{
  OUTLINED_FUNCTION_42();
  v1 = *(v0 + 24);
  v2 = *(v1 + 56);
  v8 = (*(v1 + 48) + **(v1 + 48));
  v3 = *(*(v1 + 48) + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  *(v0 + 32) = v4;
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_31_1(v4);

  return v8(v6);
}

unint64_t sub_1DD01CE94()
{
  if (*(v0 + 64))
  {
    v3 = *(v0 + 64);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAC360, &qword_1DD0FE290);
    sub_1DD0DE02C();
  }

  sub_1DD0DEC1C();

  v1 = OUTLINED_FUNCTION_86();
  MEMORY[0x1E12A6780](v1);

  MEMORY[0x1E12A6780](41, 0xE100000000000000);
  return 0xD00000000000002ELL;
}

uint64_t sub_1DD01CF74()
{
  sub_1DCDD9E64();
  OUTLINED_FUNCTION_4_0();

  return swift_deallocClassInstance();
}

uint64_t sub_1DD01CFEC(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1DCB4AE1C;

  return sub_1DD01CD9C(a1);
}

uint64_t sub_1DD01D0D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_0_1();
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v11, v12);
  OUTLINED_FUNCTION_10_2();
  v15 = v13 - v14;
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v25 - v18;
  (*(v8 + 32))(&v25 - v18);
  v20 = *(a4 + 48);
  v21 = *(a4 + 52);
  swift_allocObject();
  (*(v8 + 16))(v15, v19, a5);
  sub_1DD01D228();
  v23 = v22;
  (*(v8 + 8))(v19, a5);
  return v23;
}

void sub_1DD01D228()
{
  OUTLINED_FUNCTION_50();
  v44 = v1;
  v45 = v0;
  v3 = v2;
  v5 = v4;
  v46 = v6;
  v8 = v7;
  v9 = sub_1DD0DB04C();
  OUTLINED_FUNCTION_0_1();
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v14, v15);
  OUTLINED_FUNCTION_16();
  v18 = v17 - v16;
  OUTLINED_FUNCTION_0_1();
  v20 = v19;
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v23, v24);
  OUTLINED_FUNCTION_10_2();
  v27 = v25 - v26;
  MEMORY[0x1EEE9AC00](v28, v29);
  v31 = &v43 - v30;
  (*(v20 + 32))(&v43 - v30, v8, v3);
  sub_1DD0DB03C();
  sub_1DD0DAFFC();
  (*(v11 + 8))(v18, v9);
  *(v5 + 120) = sub_1DCB598EC(8);
  *(v5 + 128) = v32;
  *(v5 + 136) = v33;
  *(v5 + 144) = v34;
  v35 = type metadata accessor for AnyUnlockDeviceFlowStrategy();
  (*(v20 + 16))(v27, v31, v3);
  *(v5 + 32) = sub_1DD01D850(v27, v35, v3, v44);
  v36 = v45;
  sub_1DCB17D04(v45, v5 + 40);
  v37 = v46;
  sub_1DCB17D04(v46, v5 + 80);
  type metadata accessor for CommandFailure();
  OUTLINED_FUNCTION_41_4();
  swift_allocObject();
  v38 = OUTLINED_FUNCTION_47_28();
  OUTLINED_FUNCTION_33_28();
  sub_1DD01F014(v39, v40);
  v41 = swift_allocError();
  *v42 = v38;
  __swift_destroy_boxed_opaque_existential_1Tm(v37);
  __swift_destroy_boxed_opaque_existential_1Tm(v36);
  (*(v20 + 8))(v31, v3);
  *(v5 + 16) = v41;
  *(v5 + 24) = 1;
  type metadata accessor for UnlockDeviceFlowAsync.State(0);
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_49();
}

void *sub_1DD01D4D0(uint64_t a1)
{
  v11 = type metadata accessor for AnyUnlockDeviceFlowStrategy();
  v12 = &off_1F5876F20;
  v10[0] = a1;
  sub_1DCB17D04(v10, v9);
  v2 = swift_allocObject();
  sub_1DCAFF9E8(v9, v2 + 16);
  sub_1DCB17D04(v10, v8);
  v3 = swift_allocObject();
  sub_1DCAFF9E8(v8, v3 + 16);
  sub_1DCB17D04(v10, v7);
  v4 = swift_allocObject();
  sub_1DCAFF9E8(v7, v4 + 16);
  __swift_project_boxed_opaque_existential_1(v10, v11);
  DynamicType = swift_getDynamicType();
  __swift_destroy_boxed_opaque_existential_1Tm(v10);
  result = swift_allocObject();
  result[2] = sub_1DD01F488;
  result[3] = v2;
  result[6] = &unk_1DD10B050;
  result[7] = v4;
  result[4] = sub_1DD01F484;
  result[5] = v3;
  result[8] = DynamicType;
  return result;
}

void *sub_1DD01D628(uint64_t a1)
{
  v11[3] = type metadata accessor for ProtectedAppDeviceUnlockStrategy();
  v11[4] = &off_1F586A0B8;
  v11[0] = a1;
  sub_1DCB17D04(v11, v10);
  OUTLINED_FUNCTION_1_1();
  v2 = swift_allocObject();
  v3 = OUTLINED_FUNCTION_75_15(v10);
  sub_1DCB17D04(v3, v9);
  OUTLINED_FUNCTION_1_1();
  v4 = swift_allocObject();
  sub_1DCAFF9E8(v9, v4 + 16);
  sub_1DCB17D04(v11, v8);
  OUTLINED_FUNCTION_1_1();
  v5 = swift_allocObject();
  v6 = OUTLINED_FUNCTION_32_31(v8);
  __swift_destroy_boxed_opaque_existential_1Tm(v11);
  type metadata accessor for AnyUnlockDeviceFlowStrategy();
  OUTLINED_FUNCTION_4_0();
  result = swift_allocObject();
  result[2] = sub_1DD01F488;
  result[3] = v2;
  result[6] = &unk_1DD10B078;
  result[7] = v5;
  result[4] = sub_1DD01F484;
  result[5] = v4;
  result[8] = v6;
  return result;
}

void *sub_1DD01D740()
{
  v9[3] = &type metadata for LocationAccessUnlockDeviceStrategy;
  v9[4] = &off_1F5875430;
  sub_1DCB17D04(v9, v8);
  OUTLINED_FUNCTION_1_1();
  v0 = swift_allocObject();
  v1 = OUTLINED_FUNCTION_75_15(v8);
  sub_1DCB17D04(v1, v7);
  OUTLINED_FUNCTION_1_1();
  v2 = swift_allocObject();
  sub_1DCAFF9E8(v7, v2 + 16);
  sub_1DCB17D04(v9, v6);
  OUTLINED_FUNCTION_1_1();
  v3 = swift_allocObject();
  v4 = OUTLINED_FUNCTION_32_31(v6);
  __swift_destroy_boxed_opaque_existential_1Tm(v9);
  type metadata accessor for AnyUnlockDeviceFlowStrategy();
  OUTLINED_FUNCTION_4_0();
  result = swift_allocObject();
  result[2] = sub_1DD01F488;
  result[3] = v0;
  result[6] = &unk_1DD10B070;
  result[7] = v3;
  result[4] = sub_1DD01F484;
  result[5] = v2;
  result[8] = v4;
  return result;
}

void *sub_1DD01D850(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_73_16(a1, a2, a3, a4);
  OUTLINED_FUNCTION_112(v4);
  (*(v5 + 32))();
  sub_1DCB17D04(v15, v14);
  OUTLINED_FUNCTION_1_1();
  v6 = swift_allocObject();
  v7 = OUTLINED_FUNCTION_75_15(v14);
  sub_1DCB17D04(v7, v13);
  OUTLINED_FUNCTION_1_1();
  v8 = swift_allocObject();
  sub_1DCAFF9E8(v13, v8 + 16);
  sub_1DCB17D04(v15, v12);
  OUTLINED_FUNCTION_1_1();
  v9 = swift_allocObject();
  v10 = OUTLINED_FUNCTION_32_31(v12);
  __swift_destroy_boxed_opaque_existential_1Tm(v15);
  type metadata accessor for AnyUnlockDeviceFlowStrategy();
  OUTLINED_FUNCTION_4_0();
  result = swift_allocObject();
  result[2] = sub_1DD01F05C;
  result[3] = v6;
  result[6] = &unk_1DD10B048;
  result[7] = v9;
  result[4] = sub_1DD01F064;
  result[5] = v8;
  result[8] = v10;
  return result;
}

void *sub_1DD01DF10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_73_16(a1, a2, a3, a4);
  OUTLINED_FUNCTION_112(v4);
  (*(v5 + 32))();
  sub_1DCB17D04(v13, v12);
  OUTLINED_FUNCTION_1_1();
  v6 = swift_allocObject();
  v7 = OUTLINED_FUNCTION_75_15(v12);
  sub_1DCB17D04(v7, v11);
  OUTLINED_FUNCTION_1_1();
  v8 = swift_allocObject();
  sub_1DCAFF9E8(v11, v8 + 16);
  __swift_project_boxed_opaque_existential_1(v13, v13[3]);
  DynamicType = swift_getDynamicType();
  __swift_destroy_boxed_opaque_existential_1Tm(v13);
  type metadata accessor for AnyUnlockDeviceFlowStrategy();
  OUTLINED_FUNCTION_4_0();
  result = swift_allocObject();
  result[2] = sub_1DCC7F18C;
  result[3] = v6;
  result[6] = &unk_1DD0E8460;
  result[7] = v8;
  result[4] = sub_1DCD799A4;
  result[5] = 0;
  result[8] = DynamicType;
  return result;
}

uint64_t sub_1DD01E050(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1DD0DB04C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8, v11);
  v13 = &v22[-1] - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22[3] = type metadata accessor for OutputPublisherAsyncAdapter();
  v22[4] = &protocol witness table for OutputPublisherAsyncAdapter;
  v22[0] = a3;
  sub_1DD0DB03C();
  sub_1DD0DAFFC();
  (*(v9 + 8))(v13, v8);
  *(a4 + 120) = sub_1DCB598EC(8);
  *(a4 + 128) = v14;
  *(a4 + 136) = v15;
  *(a4 + 144) = v16;
  *(a4 + 32) = sub_1DD01D4D0(a1);
  sub_1DCB17D04(a2, a4 + 40);
  sub_1DCB17D04(v22, a4 + 80);
  type metadata accessor for CommandFailure();
  swift_allocObject();
  v17 = CommandFailure.init(errorCode:reason:)(-1, 0x656C706D6F636E49, 0xEA00000000006574);
  sub_1DD01F014(qword_1EDE49B80, type metadata accessor for CommandFailure);
  v18 = swift_allocError();
  *v19 = v17;
  __swift_destroy_boxed_opaque_existential_1Tm(a2);
  __swift_destroy_boxed_opaque_existential_1Tm(v22);
  *(a4 + 16) = v18;
  *(a4 + 24) = 1;
  type metadata accessor for UnlockDeviceFlowAsync.State(0);
  swift_storeEnumTagMultiPayload();
  return a4;
}

unint64_t sub_1DD01E290()
{
  result = qword_1ECCAC270;
  if (!qword_1ECCAC270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCAC270);
  }

  return result;
}

unint64_t sub_1DD01E2E8()
{
  result = qword_1ECCAC278;
  if (!qword_1ECCAC278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCAC278);
  }

  return result;
}

unint64_t sub_1DD01E340()
{
  result = qword_1ECCAC280;
  if (!qword_1ECCAC280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCAC280);
  }

  return result;
}

unint64_t sub_1DD01E398()
{
  result = qword_1ECCAC288[0];
  if (!qword_1ECCAC288[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECCAC288);
  }

  return result;
}

uint64_t sub_1DD01E3EC(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 16) = result;
  return result;
}

void *assignWithCopy for UnlockDevicePolicy(void *a1, void *a2)
{
  *a1 = *a2;
  __swift_assign_boxed_opaque_existential_1(a1 + 1, a2 + 1);
  return a1;
}

uint64_t assignWithTake for UnlockDevicePolicy(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  __swift_destroy_boxed_opaque_existential_1Tm((a1 + 8));
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  return a1;
}

uint64_t getEnumTagSinglePayload for UnlockDevicePolicy(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 48))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 32);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for UnlockDevicePolicy(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t dispatch thunk of UnlockDeviceFlowStrategy.makePromptForDeviceUnlock()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 24);
  OUTLINED_FUNCTION_25_1();
  v13 = v4 + *v4;
  v6 = *(v5 + 4);
  v7 = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_11_0(v7);
  *v8 = v9;
  v10 = OUTLINED_FUNCTION_29_2(v8);

  return v11(v10);
}

uint64_t dispatch thunk of UnlockDeviceFlowStrategyAsync.makePromptForDeviceUnlock()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 24);
  OUTLINED_FUNCTION_25_1();
  v13 = v4 + *v4;
  v6 = *(v5 + 4);
  v7 = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_11_0(v7);
  *v8 = v9;
  v10 = OUTLINED_FUNCTION_29_2(v8);

  return v11(v10);
}

uint64_t sub_1DD01E7EC()
{
  result = type metadata accessor for UnlockDeviceFlowAsync.State(319);
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SimpleUnlockDeviceFlowHelper(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

void *sub_1DD01E990(void *a1, void *a2, uint64_t a3)
{
  if ((*(*(a3 - 8) + 80) & 0x20000) != 0)
  {
    *a1 = *a2;
    sub_1DD0DCF8C();
  }

  v5 = *(a3 - 8);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    v8 = *a2;
    v9 = v8;
    *a1 = v8;
    goto LABEL_7;
  }

  if (!EnumCaseMultiPayload)
  {
    v7 = sub_1DD0DB04C();
    (*(*(v7 - 8) + 16))(a1, a2, v7);
LABEL_7:
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  v11 = *(v5 + 64);

  return memcpy(a1, a2, v11);
}

void sub_1DD01EAC4(void **a1)
{
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    v5 = *a1;
  }

  else if (!EnumCaseMultiPayload)
  {
    v3 = sub_1DD0DB04C();
    v4 = *(*(v3 - 8) + 8);

    v4(a1, v3);
  }
}

void *sub_1DD01EB64(void *a1, void **a2, uint64_t a3)
{
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    v8 = *a2;
    v9 = v8;
    *a1 = v8;
    goto LABEL_5;
  }

  if (!EnumCaseMultiPayload)
  {
    v7 = sub_1DD0DB04C();
    (*(*(v7 - 8) + 16))(a1, a2, v7);
LABEL_5:
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  v11 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v11);
}

void **sub_1DD01EC58(void **a1, void **a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return a1;
  }

  sub_1DD01F2E4(a1, type metadata accessor for UnlockDeviceFlowAsync.State);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    v8 = *a2;
    v9 = v8;
    *a1 = v8;
    goto LABEL_6;
  }

  if (!EnumCaseMultiPayload)
  {
    v7 = sub_1DD0DB04C();
    (*(*(v7 - 8) + 16))(a1, a2, v7);
LABEL_6:
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  v11 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v11);
}

void *sub_1DD01ED70(void *a1, const void *a2, uint64_t a3)
{
  if (swift_getEnumCaseMultiPayload())
  {
    v6 = *(*(a3 - 8) + 64);

    return memcpy(a1, a2, v6);
  }

  else
  {
    v8 = sub_1DD0DB04C();
    (*(*(v8 - 8) + 32))(a1, a2, v8);
    swift_storeEnumTagMultiPayload();
    return a1;
  }
}

void *sub_1DD01EE3C(void *a1, const void *a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return a1;
  }

  sub_1DD01F2E4(a1, type metadata accessor for UnlockDeviceFlowAsync.State);
  if (!swift_getEnumCaseMultiPayload())
  {
    v8 = sub_1DD0DB04C();
    (*(*(v8 - 8) + 32))(a1, a2, v8);
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  v6 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v6);
}

uint64_t sub_1DD01EF2C()
{
  result = sub_1DD0DB04C();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    swift_initEnumMetadataMultiPayload();
    return 0;
  }

  return result;
}

uint64_t sub_1DD01EFBC(uint64_t a1)
{
  result = sub_1DD01F014(&unk_1ECCAC350, type metadata accessor for UnlockDeviceFlowAsync);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1DD01F014(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1DD01F06C()
{
  OUTLINED_FUNCTION_42();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_12_73(v1);

  return sub_1DD01CC38(v3, v4);
}

void sub_1DD01F0F0()
{
  OUTLINED_FUNCTION_50();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = sub_1DD0DB04C();
  OUTLINED_FUNCTION_0_1();
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v15, v16);
  OUTLINED_FUNCTION_16();
  v19 = v18 - v17;
  v29[3] = v3;
  v29[4] = v1;
  __swift_allocate_boxed_opaque_existential_1Tm(v29);
  OUTLINED_FUNCTION_112(v3);
  (*(v20 + 32))();
  sub_1DD0DB03C();
  sub_1DD0DAFFC();
  (*(v12 + 8))(v19, v10);
  *(v5 + 120) = sub_1DCB598EC(8);
  *(v5 + 128) = v21;
  *(v5 + 136) = v22;
  *(v5 + 144) = v23;
  *(v5 + 32) = sub_1DD01D4D0(v9);
  sub_1DCB17D04(v7, v5 + 40);
  sub_1DCB17D04(v29, v5 + 80);
  type metadata accessor for CommandFailure();
  OUTLINED_FUNCTION_41_4();
  swift_allocObject();
  v24 = OUTLINED_FUNCTION_47_28();
  OUTLINED_FUNCTION_33_28();
  sub_1DD01F014(v25, v26);
  v27 = swift_allocError();
  *v28 = v24;
  __swift_destroy_boxed_opaque_existential_1Tm(v7);
  __swift_destroy_boxed_opaque_existential_1Tm(v29);
  *(v5 + 16) = v27;
  *(v5 + 24) = 1;
  type metadata accessor for UnlockDeviceFlowAsync.State(0);
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_49();
}