unint64_t sub_21E53C7C0()
{
  result = qword_27CEC8A88;
  if (!qword_27CEC8A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEC8A88);
  }

  return result;
}

unint64_t sub_21E53C818()
{
  result = qword_27CEC8A90;
  if (!qword_27CEC8A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEC8A90);
  }

  return result;
}

unint64_t sub_21E53C870()
{
  result = qword_27CEC8A98;
  if (!qword_27CEC8A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEC8A98);
  }

  return result;
}

void OUTLINED_FUNCTION_3_1(uint64_t a1@<X8>)
{
  v3 = v1 | (16 * a1);
  v4 = (*(v2 + 48) + v3);
  v6 = *v4;
  v5 = v4[1];
  v7 = (*(v2 + 56) + v3);
  v8 = *v7;
  v9 = v7[1];
}

uint64_t OUTLINED_FUNCTION_11_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return __swift_storeEnumTagSinglePayload(a1, 1, 1, a4);
}

uint64_t sub_21E53C9CC(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000010 && 0x800000021E57F2E0 == a2;
  if (v3 || (sub_21E57BB3C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6449656C646E7562 && a2 == 0xE800000000000000;
    if (v6 || (sub_21E57BB3C() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x657361726870 && a2 == 0xE600000000000000;
      if (v7 || (sub_21E57BB3C() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x6574656D61726170 && a2 == 0xE900000000000072)
      {

        return 3;
      }

      else
      {
        v9 = sub_21E57BB3C();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

unint64_t sub_21E53CB38(char a1)
{
  result = 0x6449656C646E7562;
  switch(a1)
  {
    case 1:
      return result;
    case 2:
      result = 0x657361726870;
      break;
    case 3:
      result = 0x6574656D61726170;
      break;
    default:
      result = 0xD000000000000010;
      break;
  }

  return result;
}

uint64_t sub_21E53CBC0(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC8B28, &qword_21E57CEC0);
  OUTLINED_FUNCTION_0(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_5_0();
  MEMORY[0x28223BE20](v10);
  v12 = &v21[-v11];
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21E540638();
  sub_21E57BBEC();
  v14 = *v3;
  v15 = v3[1];
  v23 = 0;
  OUTLINED_FUNCTION_10_1();
  sub_21E57BAEC();
  if (!v2)
  {
    v16 = v3[2];
    v17 = v3[3];
    OUTLINED_FUNCTION_18_0();
    OUTLINED_FUNCTION_10_1();
    sub_21E57BAEC();
    v22 = v3[4];
    v21[15] = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC8A70, &qword_21E57CEB0);
    sub_21E5406E0(&qword_27CEC8A80);
    OUTLINED_FUNCTION_1_1();
    v18 = v3[5];
    v19 = v3[6];
    v21[14] = 3;
    OUTLINED_FUNCTION_10_1();
    sub_21E57BACC();
  }

  return (*(v7 + 8))(v12, v5);
}

void sub_21E53CD84()
{
  OUTLINED_FUNCTION_25_0();
  v2 = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC8B18, &qword_21E57CEA8);
  OUTLINED_FUNCTION_0(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_5_0();
  MEMORY[0x28223BE20](v10);
  v12 = &v27 - v11;
  v13 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  sub_21E540638();
  sub_21E57BBDC();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_0Tm(v2);
  }

  else
  {
    OUTLINED_FUNCTION_12_0();
    v14 = sub_21E57BAAC();
    v16 = v15;
    v30 = v14;
    OUTLINED_FUNCTION_18_0();
    OUTLINED_FUNCTION_12_0();
    v17 = sub_21E57BAAC();
    v31 = v18;
    v29 = v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC8A70, &qword_21E57CEB0);
    sub_21E5406E0(qword_2812260F8);
    sub_21E57BABC();
    v28 = v32;
    OUTLINED_FUNCTION_12_0();
    v19 = sub_21E57BA8C();
    v21 = v20;
    v22 = *(v7 + 8);
    v27 = v19;
    v22(v12, v5);

    v23 = v31;

    v24 = v28;

    __swift_destroy_boxed_opaque_existential_0Tm(v2);

    v25 = v29;
    *v4 = v30;
    v4[1] = v16;
    v4[2] = v25;
    v4[3] = v23;
    v26 = v27;
    v4[4] = v24;
    v4[5] = v26;
    v4[6] = v21;
  }

  OUTLINED_FUNCTION_28_0();
}

uint64_t sub_21E53D070(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000010 && 0x800000021E57F2E0 == a2;
  if (v3 || (sub_21E57BB3C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6449656C646E7562 && a2 == 0xE800000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_21E57BB3C();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_21E53D148(char a1)
{
  if (a1)
  {
    return 0x6449656C646E7562;
  }

  else
  {
    return 0xD000000000000010;
  }
}

void sub_21E53D184()
{
  OUTLINED_FUNCTION_25_0();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC8B30, &qword_21E57CEC8);
  OUTLINED_FUNCTION_0(v4);
  v6 = v5;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_5_0();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_14_0();
  v10 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  sub_21E54068C();
  sub_21E57BBEC();
  sub_21E57BAEC();
  if (!v0)
  {
    OUTLINED_FUNCTION_18_0();
    sub_21E57BAEC();
  }

  (*(v6 + 8))(v1, v4);
  OUTLINED_FUNCTION_28_0();
}

void sub_21E53D2D0()
{
  OUTLINED_FUNCTION_25_0();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC8B20, &qword_21E57CEB8);
  OUTLINED_FUNCTION_0(v3);
  v5 = v4;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_5_0();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_14_0();
  v9 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  sub_21E54068C();
  OUTLINED_FUNCTION_16_0();
  if (!v0)
  {
    sub_21E57BAAC();
    OUTLINED_FUNCTION_18_0();
    sub_21E57BAAC();
    v10 = *(v5 + 8);
    v11 = OUTLINED_FUNCTION_9_1();
    v12(v11);
  }

  __swift_destroy_boxed_opaque_existential_0Tm(v2);
  OUTLINED_FUNCTION_28_0();
}

uint64_t sub_21E53D468(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6465766F72707061 && a2 == 0xEF73657361726850;
  if (v4 || (sub_21E57BB3C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000019 && 0x800000021E57F440 == a2)
  {

    return 1;
  }

  else
  {
    v7 = sub_21E57BB3C();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_21E53D540(char a1)
{
  sub_21E57BB8C();
  MEMORY[0x223D5D090](a1 & 1);
  return sub_21E57BBCC();
}

uint64_t sub_21E53D588(char a1)
{
  if (a1)
  {
    return 0xD000000000000019;
  }

  else
  {
    return 0x6465766F72707061;
  }
}

void sub_21E53D5D0()
{
  OUTLINED_FUNCTION_25_0();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC8AE8, &qword_21E57CC90);
  OUTLINED_FUNCTION_0(v3);
  v5 = v4;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_5_0();
  MEMORY[0x28223BE20](v8);
  v10 = &v12 - v9;
  v11 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  sub_21E54017C();
  sub_21E57BBEC();
  v13 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC8AD8, &qword_21E57CC80);
  sub_21E5402D8(&unk_27CEC8AF0);
  OUTLINED_FUNCTION_1_1();
  if (!v0)
  {
    v13 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC8AE0, &qword_21E57CC88);
    sub_21E540224(&unk_27CEC8B00);
    OUTLINED_FUNCTION_1_1();
  }

  (*(v5 + 8))(v10, v3);
  OUTLINED_FUNCTION_28_0();
}

uint64_t sub_21E53D7A8(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC8AD0, &qword_21E57CC78);
  OUTLINED_FUNCTION_0(v2);
  v4 = v3;
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_5_0();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_14_0();
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21E54017C();
  OUTLINED_FUNCTION_16_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC8AD8, &qword_21E57CC80);
  sub_21E5402D8(&unk_2812260E8);
  OUTLINED_FUNCTION_7_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC8AE0, &qword_21E57CC88);
  sub_21E540224(&unk_2812260F0);
  OUTLINED_FUNCTION_7_0();
  v10 = *(v4 + 8);
  v11 = OUTLINED_FUNCTION_9_1();
  v12(v11);
  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  return v13;
}

uint64_t sub_21E53D9A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v12 = a1 == a5 && a2 == a6;
  if (v12 || (v13 = sub_21E57BB3C(), result = 0, (v13 & 1) != 0))
  {
    if (a3 == a7 && a4 == a8)
    {
      return 1;
    }

    else
    {

      return sub_21E57BB3C();
    }
  }

  return result;
}

uint64_t sub_21E53DA44()
{
  sub_21E57B6AC();

  return sub_21E57B6AC();
}

uint64_t sub_21E53DA94()
{
  OUTLINED_FUNCTION_19_0();
  sub_21E57BB8C();
  sub_21E57B6AC();
  sub_21E57B6AC();
  return sub_21E57BBCC();
}

uint64_t sub_21E53DB00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if ((sub_21E53FBDC(a1, a3) & 1) == 0)
  {
    return 0;
  }

  return sub_21E57412C(a2, a4);
}

uint64_t sub_21E53DB58(const void *a1, uint64_t a2, uint64_t a3)
{
  sub_21E53FD84(a1, a2);

  return sub_21E579E90(a1, a3);
}

uint64_t sub_21E53DB98(uint64_t a1, uint64_t a2)
{
  sub_21E57BB8C();
  sub_21E53FD84(v5, a1);
  sub_21E579E90(v5, a2);
  return sub_21E57BBCC();
}

uint64_t sub_21E53DBF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21E53C9CC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_21E53DC20@<X0>(_BYTE *a1@<X8>)
{
  result = sub_21E53CB30();
  *a1 = result;
  return result;
}

uint64_t sub_21E53DC48(uint64_t a1)
{
  v2 = sub_21E540638();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21E53DC84(uint64_t a1)
{
  v2 = sub_21E540638();

  return MEMORY[0x2821FE720](a1, v2);
}

double sub_21E53DCC0@<D0>(uint64_t a1@<X8>)
{
  sub_21E53CD84();
  if (!v1)
  {
    *a1 = v4;
    *(a1 + 16) = v5;
    result = *&v6;
    *(a1 + 32) = v6;
    *(a1 + 48) = v7;
  }

  return result;
}

uint64_t sub_21E53DD30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21E53D070(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_21E53DD58@<X0>(_BYTE *a1@<X8>)
{
  result = sub_21E53D140();
  *a1 = result;
  return result;
}

uint64_t sub_21E53DD80(uint64_t a1)
{
  v2 = sub_21E54068C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21E53DDBC(uint64_t a1)
{
  v2 = sub_21E54068C();

  return MEMORY[0x2821FE720](a1, v2);
}

void sub_21E53DDF8(void *a1@<X8>)
{
  sub_21E53D2D0();
  if (!v1)
  {
    *a1 = v3;
    a1[1] = v4;
    a1[2] = v5;
    a1[3] = v6;
  }
}

void sub_21E53DE28()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  sub_21E53D184();
}

uint64_t sub_21E53DE50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21E53D468(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_21E53DE78(uint64_t a1)
{
  v2 = sub_21E54017C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21E53DEB4(uint64_t a1)
{
  v2 = sub_21E54017C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21E53DEF0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_21E53D7A8(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

void sub_21E53DF1C()
{
  v1 = *v0;
  v2 = v0[1];
  sub_21E53D5D0();
}

uint64_t sub_21E53DF38()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  return sub_21E53DA94();
}

uint64_t sub_21E53DF44()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  return sub_21E53DA44();
}

uint64_t sub_21E53DF50()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  sub_21E57BB8C();
  sub_21E57B6AC();
  sub_21E57B6AC();
  return sub_21E57BBCC();
}

uint64_t sub_21E53DFE0()
{
  v1 = *v0;
  v2 = v0[1];
  sub_21E57BB8C();
  sub_21E53FD84(v4, v1);
  sub_21E579E90(v4, v2);
  return sub_21E57BBCC();
}

uint64_t *sub_21E53E044()
{
  v0 = [objc_allocWithZone(MEMORY[0x277D23B78]) init];
  type metadata accessor for DefaultAppShortcutsApprovedPhrasesProvider();
  v1 = swift_allocObject();
  result = sub_21E53E0A0(v0);
  qword_281226A28 = v1;
  return result;
}

uint64_t *sub_21E53E0A0(uint64_t a1)
{
  v3 = *v1;
  sub_21E53E100();
  v1[2] = v4;
  v1[3] = a1;
  return v1;
}

void sub_21E53E100()
{
  OUTLINED_FUNCTION_93();
  v36 = sub_21E57B5EC();
  v0 = OUTLINED_FUNCTION_0(v36);
  v2 = v1;
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v0);
  OUTLINED_FUNCTION_2_2();
  v7 = v5 - v6;
  MEMORY[0x28223BE20](v8);
  v9 = sub_21E57ABEC();
  v10 = OUTLINED_FUNCTION_0(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_2_2();
  v17 = v15 - v16;
  MEMORY[0x28223BE20](v18);
  v20 = v33 - v19;
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v22 = [objc_opt_self() bundleForClass_];
  v23 = sub_21E546314(0xD00000000000001ELL, 0x800000021E57F420, 0x7473696C70, 0xE500000000000000, v22);

  if (v23)
  {
    v33[1] = v2;
    sub_21E57ABDC();

    v34 = v12;
    v35 = v9;
    (*(v12 + 32))(v20, v17, v9);
    v24 = sub_21E57AB9C();
    v25 = *(v24 + 48);
    v26 = *(v24 + 52);
    swift_allocObject();
    sub_21E57AB8C();
    v27 = sub_21E57ABFC();
    v29 = v28;
    sub_21E540090();
    sub_21E57AB7C();
    sub_21E53E5C4(v37, v38);
    sub_21E53505C(v27, v29);

    (*(v34 + 8))(v20, v35);
  }

  else
  {
    sub_21E57B5BC();
    v30 = sub_21E57B5DC();
    v31 = sub_21E57B85C();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&dword_21E527000, v30, v31, "ApprovedPhrasesForAppShortcuts: unable to get a path to the list of approved phrases for App Shortcuts", v32, 2u);
      OUTLINED_FUNCTION_39();
    }

    (*(v2 + 8))(v7, v36);
    sub_21E538FB0();
    sub_21E57B62C();
  }

  OUTLINED_FUNCTION_100();
}

uint64_t sub_21E53E5C4(uint64_t a1, uint64_t a2)
{
  v91 = a2;
  sub_21E538FB0();
  v113 = sub_21E57B62C();
  v99 = *(a1 + 16);
  if (v99)
  {
    v3 = 0;
    v96 = 0;
    v98 = a1 + 32;
    while (1)
    {
      v4 = (v98 + 56 * v3);
      v5 = v4[4];
      v105 = v3 + 1;
      v6 = v4[2];
      v7 = v4[3];
      v8 = *v4;
      v9 = v4[1];
      v100 = v4[5];
      v102 = v4[6];

      v103 = v7;
      v104 = v9;
      v10 = sub_21E53EAF0(v6, v7, v8, v9, &v113);
      v108 = v11;
      v109 = v10;
      v110 = v13;
      v111 = v12;
      v14 = v5 + 64;
      v15 = 1 << *(v5 + 32);
      if (v15 < 64)
      {
        v16 = ~(-1 << v15);
      }

      else
      {
        v16 = -1;
      }

      v17 = v16 & *(v5 + 64);
      v18 = (v15 + 63) >> 6;

      v19 = 0;
      for (i = v5; ; v5 = i)
      {
        v20 = v19;
        if (!v17)
        {
          goto LABEL_9;
        }

LABEL_8:
        v19 = v20;
LABEL_12:
        v21 = __clz(__rbit64(v17));
        v17 &= v17 - 1;
        v22 = (v19 << 10) | (16 * v21);
        v23 = (*(v5 + 48) + v22);
        v24 = *v23;
        v25 = v23[1];
        v26 = (*(v5 + 56) + v22);
        v27 = *v26;
        v28 = v26[1];

        v37 = OUTLINED_FUNCTION_26_0(v29, v30, v31, v32, v33, v34, v35, v36, v90, v91, v92, v93, v94, v95, v96, v98, v99, v100, v102, v103, v104, v105, i, v108, v109, v110, v111);
        v39 = v37;
        if (!*v38)
        {
          break;
        }

        v41 = v38;
        v93 = v37;
        v95 = v27;
        sub_21E5400E4(v96);
        v42 = *v41;
        HIDWORD(v94) = swift_isUniquelyReferenced_nonNull_native();
        v43 = *v41;
        v112 = *v41;
        *v41 = 0x8000000000000000;
        v92 = sub_21E52F7C4();
        v97 = v44;
        if (__OFADD__(v43[2], (v44 & 1) == 0))
        {
LABEL_43:
          __break(1u);
LABEL_44:
          __break(1u);
LABEL_45:
          result = sub_21E57BB6C();
          __break(1u);
          return result;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC8AC8, &qword_21E57CC08);
        if (sub_21E57BA1C())
        {
          v45 = sub_21E52F7C4();
          if ((v97 & 1) != (v46 & 1))
          {
            goto LABEL_45;
          }

          v47 = v45;
        }

        else
        {
          v47 = v92;
        }

        v48 = *v41;
        *v41 = v112;

        v49 = *v41;
        if (v97)
        {
        }

        else
        {
          v49[(v47 >> 6) + 8] |= 1 << v47;
          v50 = (v49[6] + 16 * v47);
          *v50 = v24;
          v50[1] = v25;
          *(v49[7] + 8 * v47) = MEMORY[0x277D84F90];
          v51 = v49[2];
          v52 = __OFADD__(v51, 1);
          v53 = v51 + 1;
          if (v52)
          {
            goto LABEL_44;
          }

          v49[2] = v53;
        }

        v54 = v49[7];
        v55 = *(v54 + 8 * v47);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v54 + 8 * v47) = v55;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v61 = *(v55 + 16);
          sub_21E543924();
          v55 = v62;
          *(v54 + 8 * v47) = v62;
        }

        v57 = *(v55 + 16);
        v58 = v95;
        if (v57 >= *(v55 + 24) >> 1)
        {
          sub_21E543924();
          v58 = v95;
          v55 = v63;
          *(v54 + 8 * v47) = v63;
        }

        *(v55 + 16) = v57 + 1;
        v59 = v55 + 16 * v57;
        *(v59 + 32) = v58;
        *(v59 + 40) = v28;
        v60 = OUTLINED_FUNCTION_11_1();
        (v93)(v60);
        v96 = sub_21E53EBE4;
      }

      v40 = OUTLINED_FUNCTION_11_1();
      (v39)(v40);
      v20 = v19;
      v5 = i;
      if (v17)
      {
        goto LABEL_8;
      }

      while (1)
      {
LABEL_9:
        v19 = v20 + 1;
        if (__OFADD__(v20, 1))
        {
          __break(1u);
          goto LABEL_43;
        }

        if (v19 >= v18)
        {
          break;
        }

        v17 = *(v14 + 8 * v19);
        ++v20;
        if (v17)
        {
          goto LABEL_12;
        }
      }

      v64 = v102;
      if (v102)
      {

        v74 = OUTLINED_FUNCTION_26_0(v65, v66, v67, v68, v69, v70, v71, v72, v90, v91, v92, v93, v94, v95, v96, v98, v99, v100, v102, v103, v104, v105, i, v108, v109, v110, v111);
        v3 = v106;
        if (*v73)
        {
          v75 = v73;
          sub_21E545A3C();
          v76 = *(v75[1] + 16);
          sub_21E52F384(v76);
          v77 = v75[1];
          *(v77 + 16) = v76 + 1;
          v78 = v77 + 16 * v76;
          *(v78 + 32) = v101;
          *(v78 + 40) = v64;
        }

        else
        {
        }

        v79 = OUTLINED_FUNCTION_11_1();
        (v74)(v79);
      }

      else
      {

        v3 = v105;
      }

      if (v3 == v99)
      {
        goto LABEL_38;
      }
    }
  }

  v96 = 0;
LABEL_38:
  v80 = *(v91 + 16);
  if (v80)
  {
    v81 = (v91 + 56);
    do
    {
      v82 = *(v81 - 3);
      v83 = *(v81 - 2);
      v84 = *(v81 - 1);
      v85 = *v81;

      v86 = OUTLINED_FUNCTION_15_0();
      sub_21E53EAF0(v86, v87, v82, v83, v88);

      v81 += 4;
      --v80;
    }

    while (v80);
  }

  sub_21E5400E4(v96);
  return v113;
}

uint64_t sub_21E53EAF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v10 = *(*a5 + 16);

  if (!v10 || (v11 = OUTLINED_FUNCTION_20_0(), sub_21E52F880(v11, v12, v13, v14), (v15 & 1) == 0))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC8958, &unk_21E57C580);
    v16 = MEMORY[0x277D84F90];
    v17 = sub_21E57B62C();
    v18 = *a5;
    swift_isUniquelyReferenced_nonNull_native();
    v20 = *a5;
    sub_21E545CBC(v17, v16, a1, a2, a3, a4);
    *a5 = v20;
  }

  return OUTLINED_FUNCTION_20_0();
}

uint64_t sub_21E53EBF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = *(v6 + 16);
  if (!*(v7 + 16))
  {
    return 0;
  }

  v9 = sub_21E52F880(a3, a4, a5, a6);
  if ((v10 & 1) == 0)
  {
    return 0;
  }

  v11 = *(*(v7 + 56) + 16 * v9);
  if (!*(v11 + 16))
  {

    return a1;
  }

  sub_21E53ED94();
  v14 = v12;
  if (!v13)
  {
LABEL_12:

    return v14;
  }

  v15 = sub_21E5351EC(v12, v13, v11);

  if (!v15)
  {
    return 0;
  }

  v17 = 0;
  v20 = *(v15 + 16);
  for (i = (v15 + 40); ; i += 2)
  {
    if (v20 == v17)
    {

      return 0;
    }

    if (v17 >= *(v15 + 16))
    {
      break;
    }

    v14 = *(i - 1);
    v19 = *i;
    sub_21E534DE8();

    if (!sub_21E57B8BC())
    {
      goto LABEL_12;
    }

    ++v17;
  }

  __break(1u);
  return result;
}

void sub_21E53ED94()
{
  OUTLINED_FUNCTION_93();
  v0 = sub_21E57B5EC();
  v1 = OUTLINED_FUNCTION_0(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_14();
  v8 = v7 - v6;
  if (sub_21E57B70C() & 1) != 0 || (sub_21E57B70C())
  {
  }

  else
  {

    v9 = sub_21E56E134(2);
    MEMORY[0x223D5CB90](v9);

    OUTLINED_FUNCTION_9_1();
    if (sub_21E57B6BC() != 2)
    {

      sub_21E57B5BC();

      v10 = sub_21E57B5DC();
      v11 = sub_21E57B85C();

      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        v16 = OUTLINED_FUNCTION_43();
        *v12 = 136315138;
        v13 = OUTLINED_FUNCTION_15_0();
        *(v12 + 4) = sub_21E5553D8(v13, v14, v15);
        _os_log_impl(&dword_21E527000, v10, v11, "getLanguageKeyForApprovedPhrase: Failed to extract language code from {%s}, return nil", v12, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v16);
        OUTLINED_FUNCTION_39();
        OUTLINED_FUNCTION_39();
      }

      (*(v3 + 8))(v8, v0);
    }
  }

  OUTLINED_FUNCTION_15_0();
  OUTLINED_FUNCTION_100();
}

uint64_t sub_21E53EF98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  if (!*(v5 + 16))
  {
    return 0;
  }

  v6 = sub_21E52F880(a1, a2, a3, a4);
  if ((v7 & 1) == 0)
  {
    return 0;
  }

  v8 = *(*(v5 + 56) + 16 * v6 + 8);
}

void sub_21E53EFE0()
{
  OUTLINED_FUNCTION_93();
  v1 = v0;
  v3 = v2;
  v4 = sub_21E57B5EC();
  v5 = OUTLINED_FUNCTION_0(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_14();
  v12 = v11 - v10;
  v13 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC8AA8, &qword_21E57CBF0) - 8) + 64);
  OUTLINED_FUNCTION_5_0();
  MEMORY[0x28223BE20](v14);
  v16 = &v44 - v15;
  v17 = sub_21E57AC6C();
  v18 = OUTLINED_FUNCTION_0(v17);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_14();
  v24 = v23 - v22;
  v25 = *(v3 + 16);
  if (v25)
  {
    v49 = v21;
    sub_21E53FF1C(v1, v16);
    if (__swift_getEnumTagSinglePayload(v16, 1, v17) == 1)
    {
      sub_21E53FF8C(v16, &qword_27CEC8AA8, &qword_21E57CBF0);
    }

    else
    {
      v48 = v12;
      v26 = v49;
      (*(v49 + 32))(v24, v16, v17);
      sub_21E53F358();
      if (v28)
      {
        v29 = v27;
        v30 = v28;
        v46 = v7;
        v47 = v4;
        v31 = v3 + 40;
        v32 = v25 + 1;
        do
        {
          if (!--v32)
          {
            break;
          }

          v33 = v31 + 16;
          v36 = v31 - 8;
          v34 = *(v31 - 8);
          v35 = *(v36 + 8);
          v52[0] = v29;
          v52[1] = v30;
          v50 = v34;
          v51 = v35;
          sub_21E534DE8();
          v37 = sub_21E57B8DC();
          v31 = v33;
        }

        while ((v37 & 1) == 0);
        v38 = v48;
        sub_21E57B5BC();

        v39 = sub_21E57B5DC();
        v40 = sub_21E57B85C();

        if (os_log_type_enabled(v39, v40))
        {
          v45 = v32 != 0;
          v41 = swift_slowAlloc();
          v42 = OUTLINED_FUNCTION_43();
          v52[0] = v42;
          *v41 = 136315394;
          v43 = sub_21E5553D8(v29, v30, v52);

          *(v41 + 4) = v43;
          *(v41 + 12) = 1024;
          *(v41 + 14) = v45;
          _os_log_impl(&dword_21E527000, v39, v40, "isParameterApproved: Parameter {%s} approved: %{BOOL}d", v41, 0x12u);
          __swift_destroy_boxed_opaque_existential_0Tm(v42);
          OUTLINED_FUNCTION_39();
          OUTLINED_FUNCTION_39();
        }

        else
        {
        }

        (*(v46 + 8))(v38, v47);
        (*(v49 + 8))(v24, v17);
      }

      else
      {
        (*(v26 + 8))(v24, v17);
      }
    }
  }

  OUTLINED_FUNCTION_100();
}

void sub_21E53F358()
{
  OUTLINED_FUNCTION_93();
  v2 = v1;
  v71[1] = *MEMORY[0x277D85DE8];
  v3 = sub_21E57AC6C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_2_2();
  v8 = v6 - v7;
  MEMORY[0x28223BE20](v9);
  v11 = &v66 - v10;
  v12 = sub_21E57B5EC();
  v13 = OUTLINED_FUNCTION_0(v12);
  v69 = v14;
  v70 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_2_2();
  v19 = v17 - v18;
  MEMORY[0x28223BE20](v20);
  v67 = (&v66 - v21);
  v22 = *(v0 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC8AB0, &unk_21E57CBF8);
  v23 = *(v4 + 72);
  v24 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_21E57C390;
  v68 = v4;
  v26 = *(v4 + 16);
  v26(v25 + v24, v2, v3);
  v27 = sub_21E57B77C();

  v71[0] = 0;
  v28 = [v22 propertiesForIdentifiers:v27 error:v71];

  v29 = v71[0];
  if (v28)
  {
    sub_21E53FFEC();
    sub_21E540030(&qword_27CEC8990);
    v30 = sub_21E57B60C();
    v31 = v29;

    v32 = sub_21E52D28C(v2, v30);

    if (v32 && (v33 = [v32 value], v32, v33))
    {
      v34 = [v33 description];
      sub_21E57B67C();
    }

    else
    {
      v35 = v67;
      sub_21E57B5BC();
      v26(v11, v2, v3);
      v36 = v35;
      v37 = sub_21E57B5DC();
      v38 = sub_21E57B86C();
      if (os_log_type_enabled(v37, v38))
      {
        v39 = swift_slowAlloc();
        v40 = OUTLINED_FUNCTION_43();
        v71[0] = v40;
        *v39 = 136315138;
        OUTLINED_FUNCTION_4_1(&unk_27CEC8AB8);
        v41 = sub_21E57BB2C();
        v43 = v42;
        OUTLINED_FUNCTION_22_0();
        v44 = OUTLINED_FUNCTION_15_0();
        v45(v44);
        v46 = sub_21E5553D8(v41, v43, v71);

        *(v39 + 4) = v46;
        _os_log_impl(&dword_21E527000, v37, v38, "convertParameterIdToValue: Cannot convert parameter UUID {%s} to parameter value", v39, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v40);
        OUTLINED_FUNCTION_39();
        OUTLINED_FUNCTION_39();
      }

      else
      {

        OUTLINED_FUNCTION_22_0();
        v62 = OUTLINED_FUNCTION_15_0();
        v63(v62);
      }

      (*(v69 + 8))(v36, v70);
    }
  }

  else
  {
    v47 = v71[0];
    v48 = sub_21E57ABAC();

    swift_willThrow();
    sub_21E57B5BC();
    v26(v8, v2, v3);
    v49 = v48;
    v50 = sub_21E57B5DC();
    v51 = sub_21E57B86C();

    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      v67 = swift_slowAlloc();
      v53 = OUTLINED_FUNCTION_43();
      v71[0] = v53;
      *v52 = 136315394;
      OUTLINED_FUNCTION_4_1(&unk_27CEC8AB8);
      v54 = sub_21E57BB2C();
      v56 = v55;
      OUTLINED_FUNCTION_22_0();
      v57(v8, v3);
      v58 = sub_21E5553D8(v54, v56, v71);

      *(v52 + 4) = v58;
      *(v52 + 12) = 2112;
      v59 = v48;
      v60 = _swift_stdlib_bridgeErrorToNSError();
      *(v52 + 14) = v60;
      v61 = v67;
      *v67 = v60;
      _os_log_impl(&dword_21E527000, v50, v51, "convertParameterIdToValue: error processing {%s}: %@", v52, 0x16u);
      sub_21E53FF8C(v61, &qword_27CEC88E8, &qword_21E57C660);
      OUTLINED_FUNCTION_39();
      __swift_destroy_boxed_opaque_existential_0Tm(v53);
      OUTLINED_FUNCTION_39();
      OUTLINED_FUNCTION_39();
    }

    else
    {

      OUTLINED_FUNCTION_22_0();
      v64(v8, v3);
    }

    (*(v69 + 8))(v19, v70);
  }

  v65 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_100();
}

BOOL sub_21E53F970(uint64_t a1, uint64_t a2)
{
  v12 = a1;
  v13 = a2;
  v11 = &v12;
  if (sub_21E56E084(sub_21E540070, v10, &unk_282F921D0))
  {
    return 1;
  }

  else
  {

    v3 = sub_21E56E134(2);
    v4 = MEMORY[0x223D5CB90](v3);
    v6 = v5;

    v12 = v4;
    v13 = v6;
    MEMORY[0x28223BE20](v7);
    v9[2] = &v12;
    v2 = sub_21E56E084(sub_21E540C2C, v9, &unk_282F921D0);
  }

  return v2;
}

uint64_t sub_21E53FA7C()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t sub_21E53FAA4()
{
  sub_21E53FA7C();

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

unint64_t sub_21E53FB30()
{
  result = qword_2812261B0;
  if (!qword_2812261B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812261B0);
  }

  return result;
}

unint64_t sub_21E53FB88()
{
  result = qword_27CEC8AA0;
  if (!qword_27CEC8AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEC8AA0);
  }

  return result;
}

uint64_t sub_21E53FBDC(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  if (v7)
  {
    while (1)
    {
      v9 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
LABEL_12:
      v12 = v9 | (v4 << 6);
      v13 = (*(v3 + 48) + 16 * v12);
      v14 = *v13;
      v15 = v13[1];
      v16 = *(*(v3 + 56) + 8 * v12);

      v17 = sub_21E52F7C4();
      v19 = v18;

      if ((v19 & 1) == 0 || (v20 = *(*(a2 + 56) + 8 * v17), v21 = *(v20 + 16), v21 != *(v16 + 16)))
      {
LABEL_29:

        return 0;
      }

      if (v21 && v20 != v16)
      {
        break;
      }

LABEL_26:

      if (!v7)
      {
        goto LABEL_7;
      }
    }

    v23 = (v20 + 40);
    v24 = (v16 + 40);
    while (v21)
    {
      result = *(v23 - 1);
      if (result != *(v24 - 1) || *v23 != *v24)
      {
        result = sub_21E57BB3C();
        if ((result & 1) == 0)
        {
          goto LABEL_29;
        }
      }

      v23 += 2;
      v24 += 2;
      if (!--v21)
      {
        goto LABEL_26;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_7:
    v10 = v4;
    while (1)
    {
      v4 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v4 >= v8)
      {
        return 1;
      }

      v11 = *(v3 + 64 + 8 * v4);
      ++v10;
      if (v11)
      {
        v9 = __clz(__rbit64(v11));
        v7 = (v11 - 1) & v11;
        goto LABEL_12;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_21E53FD84(const void *a1, uint64_t a2)
{
  v3 = a2 + 64;
  v4 = 1 << *(a2 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a2 + 64);
  v7 = (v4 + 63) >> 6;

  v9 = 0;
  for (i = 0; v6; v9 = result ^ v22)
  {
    v22 = v9;
LABEL_9:
    v12 = __clz(__rbit64(v6)) | (i << 6);
    v13 = (*(a2 + 48) + 16 * v12);
    v14 = *v13;
    v15 = v13[1];
    v16 = *(*(a2 + 56) + 8 * v12);
    memcpy(__dst, a1, sizeof(__dst));

    sub_21E57B6AC();

    MEMORY[0x223D5D090](*(v16 + 16));
    v17 = *(v16 + 16);
    if (v17)
    {
      v18 = (v16 + 40);
      do
      {
        v19 = *(v18 - 1);
        v20 = *v18;

        sub_21E57B6AC();

        v18 += 2;
        --v17;
      }

      while (v17);
    }

    v6 &= v6 - 1;

    result = sub_21E57BBCC();
  }

  while (1)
  {
    v11 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v11 >= v7)
    {

      return MEMORY[0x223D5D090](v9);
    }

    v6 = *(v3 + 8 * v11);
    ++i;
    if (v6)
    {
      v22 = v9;
      i = v11;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_21E53FF1C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC8AA8, &qword_21E57CBF0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21E53FF8C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_21E53FFEC()
{
  result = qword_27CEC8AC0;
  if (!qword_27CEC8AC0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27CEC8AC0);
  }

  return result;
}

unint64_t sub_21E540030(uint64_t a1)
{
  result = OUTLINED_FUNCTION_21_0(a1);
  if (!result)
  {
    sub_21E57AC6C();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_21E540090()
{
  result = qword_2812261E8;
  if (!qword_2812261E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812261E8);
  }

  return result;
}

uint64_t sub_21E5400E4(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_21E5400F4(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 16))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_21E540134(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

unint64_t sub_21E54017C()
{
  result = qword_281226200;
  if (!qword_281226200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281226200);
  }

  return result;
}

unint64_t sub_21E5401D0()
{
  result = qword_281226368;
  if (!qword_281226368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281226368);
  }

  return result;
}

unint64_t sub_21E540224(uint64_t a1)
{
  result = OUTLINED_FUNCTION_21_0(a1);
  if (!result)
  {
    OUTLINED_FUNCTION_19_0();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEC8AE0, &qword_21E57CC88);
    v2();
    result = OUTLINED_FUNCTION_24_0();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_21E540284()
{
  result = qword_281226388;
  if (!qword_281226388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281226388);
  }

  return result;
}

unint64_t sub_21E5402D8(uint64_t a1)
{
  result = OUTLINED_FUNCTION_21_0(a1);
  if (!result)
  {
    OUTLINED_FUNCTION_19_0();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEC8AD8, &qword_21E57CC80);
    v2();
    result = OUTLINED_FUNCTION_24_0();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_21E540338()
{
  result = qword_27CEC8AF8;
  if (!qword_27CEC8AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEC8AF8);
  }

  return result;
}

unint64_t sub_21E54038C()
{
  result = qword_27CEC8B08;
  if (!qword_27CEC8B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEC8B08);
  }

  return result;
}

uint64_t sub_21E5403F0(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 32))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
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

uint64_t sub_21E540430(uint64_t result, int a2, int a3)
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

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_21E540498(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 56))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
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

uint64_t sub_21E5404D8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_21E540534()
{
  result = qword_27CEC8B10;
  if (!qword_27CEC8B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEC8B10);
  }

  return result;
}

unint64_t sub_21E54058C()
{
  result = qword_2812261F0;
  if (!qword_2812261F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812261F0);
  }

  return result;
}

unint64_t sub_21E5405E4()
{
  result = qword_2812261F8;
  if (!qword_2812261F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812261F8);
  }

  return result;
}

unint64_t sub_21E540638()
{
  result = qword_281226380;
  if (!qword_281226380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281226380);
  }

  return result;
}

unint64_t sub_21E54068C()
{
  result = qword_2812263A0;
  if (!qword_2812263A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812263A0);
  }

  return result;
}

unint64_t sub_21E5406E0(uint64_t a1)
{
  result = OUTLINED_FUNCTION_21_0(a1);
  if (!result)
  {
    OUTLINED_FUNCTION_19_0();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEC8A70, &qword_21E57CEB0);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AppIntentInfo.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFF)
  {
    if (a2 + 1 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 1) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 2;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v5 = v6 - 2;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *sub_21E5407CC(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ApprovedPhrase.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFD)
  {
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

    v5 = (*a1 | (v4 << 8)) - 4;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v5 = v6 - 4;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for ApprovedPhrase.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_21E540A10()
{
  result = qword_27CEC8B38;
  if (!qword_27CEC8B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEC8B38);
  }

  return result;
}

unint64_t sub_21E540A68()
{
  result = qword_27CEC8B40;
  if (!qword_27CEC8B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEC8B40);
  }

  return result;
}

unint64_t sub_21E540AC0()
{
  result = qword_281226390;
  if (!qword_281226390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281226390);
  }

  return result;
}

unint64_t sub_21E540B18()
{
  result = qword_281226398;
  if (!qword_281226398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281226398);
  }

  return result;
}

unint64_t sub_21E540B70()
{
  result = qword_281226370;
  if (!qword_281226370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281226370);
  }

  return result;
}

unint64_t sub_21E540BC8()
{
  result = qword_281226378;
  if (!qword_281226378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281226378);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_1_1()
{

  return sub_21E57BAFC();
}

unint64_t OUTLINED_FUNCTION_4_1(uint64_t a1)
{

  return sub_21E540030(a1);
}

uint64_t OUTLINED_FUNCTION_7_0()
{

  return sub_21E57BABC();
}

uint64_t OUTLINED_FUNCTION_16_0()
{

  return sub_21E57BBDC();
}

uint64_t OUTLINED_FUNCTION_24_0()
{

  return swift_getWitnessTable();
}

uint64_t (*OUTLINED_FUNCTION_26_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27))()
{

  return sub_21E5369AC((v27 - 128), a25, a27, a24, a26);
}

uint64_t sub_21E540E54@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X3>, uint64_t *a5@<X8>)
{
  v6 = v5;
  v127 = *v5;
  v128 = a1;
  v11 = sub_21E57B5EC();
  v129 = OUTLINED_FUNCTION_0(v11);
  v130 = v12;
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v129);
  v17 = &v120 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v120 - v19;
  v21 = MEMORY[0x28223BE20](v18);
  v23 = &v120 - v22;
  v24 = MEMORY[0x28223BE20](v21);
  v26 = &v120 - v25;
  v27 = MEMORY[0x28223BE20](v24);
  v29 = &v120 - v28;
  v30 = MEMORY[0x28223BE20](v27);
  v126 = &v120 - v31;
  MEMORY[0x28223BE20](v30);
  v125 = &v120 - v32;
  sub_21E52D180(a3, &v133);
  if (!v134)
  {
    sub_21E5420D4(&v133);
    goto LABEL_14;
  }

  OUTLINED_FUNCTION_4_2();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_14:
    sub_21E57B5BC();

    v55 = sub_21E57B5DC();
    v56 = sub_21E57B85C();

    if (os_log_type_enabled(v55, v56))
    {
      v57 = OUTLINED_FUNCTION_57();
      *&v133 = swift_slowAlloc();
      *v57 = 136315394;
      v58 = OUTLINED_FUNCTION_5_2();
      OUTLINED_FUNCTION_7_1(v58, v59);
      OUTLINED_FUNCTION_9_2();
      *(v57 + 4) = v23;
      *(v57 + 12) = 2080;
      *(v57 + 14) = OUTLINED_FUNCTION_0_1();
      _os_log_impl(&dword_21E527000, v55, v56, "%s > Missing 'title' attribute; no phrase generated for generic intent from: %s", v57, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_39();
      OUTLINED_FUNCTION_39();
    }

    OUTLINED_FUNCTION_3_3();
    v54 = v17;
    goto LABEL_44;
  }

  v33 = v132;
  v123 = *&v131;
  sub_21E52D180(a3, &v133);
  if (!v134)
  {

    sub_21E5420D4(&v133);
LABEL_19:
    sub_21E57B5BC();

    v60 = sub_21E57B5DC();
    v61 = sub_21E57B85C();

    if (os_log_type_enabled(v60, v61))
    {
      OUTLINED_FUNCTION_57();
      *&v133 = OUTLINED_FUNCTION_6_2();
      *a4 = 136315394;
      v62 = OUTLINED_FUNCTION_5_2();
      OUTLINED_FUNCTION_7_1(v62, v63);
      OUTLINED_FUNCTION_9_2();
      *(a4 + 4) = v23;
      *(a4 + 6) = 2080;
      *(a4 + 14) = OUTLINED_FUNCTION_0_1();
      OUTLINED_FUNCTION_2_3(&dword_21E527000, v64, v65, "%s > Missing 'element' attribute; no phrase generated for generic intent from: %s");
      swift_arrayDestroy();
      OUTLINED_FUNCTION_39();
      OUTLINED_FUNCTION_39();
    }

    OUTLINED_FUNCTION_3_3();
    v54 = v20;
    goto LABEL_44;
  }

  v124 = v33;
  OUTLINED_FUNCTION_4_2();
  if ((OUTLINED_FUNCTION_10_2() & 1) == 0)
  {

    goto LABEL_19;
  }

  v35 = *&v131;
  v34 = v132;
  sub_21E52D180(a3, &v133);
  if (!v134)
  {

    sub_21E5420D4(&v133);
LABEL_24:
    sub_21E57B5BC();

    v66 = sub_21E57B5DC();
    v67 = sub_21E57B85C();

    if (os_log_type_enabled(v66, v67))
    {
      OUTLINED_FUNCTION_57();
      *&v133 = OUTLINED_FUNCTION_6_2();
      *a4 = 136315394;
      v68 = OUTLINED_FUNCTION_5_2();
      v70 = sub_21E5553D8(v68, v69, &v133);

      *(a4 + 4) = v70;
      *(a4 + 6) = 2080;
      *(a4 + 14) = OUTLINED_FUNCTION_0_1();
      OUTLINED_FUNCTION_2_3(&dword_21E527000, v71, v72, "%s > Missing 'compatibilityVersion' attribute; no phrase generated for generic intent from: %s");
      swift_arrayDestroy();
      OUTLINED_FUNCTION_39();
      OUTLINED_FUNCTION_39();
    }

    OUTLINED_FUNCTION_3_3();
    v54 = v23;
    goto LABEL_44;
  }

  OUTLINED_FUNCTION_4_2();
  if ((OUTLINED_FUNCTION_10_2() & 1) == 0)
  {

    goto LABEL_24;
  }

  v36 = v131;
  sub_21E52D180(a3, &v133);
  if (!v134)
  {

    sub_21E5420D4(&v133);
LABEL_29:
    sub_21E57B5BC();

    v73 = sub_21E57B5DC();
    v74 = sub_21E57B85C();

    if (os_log_type_enabled(v73, v74))
    {
      OUTLINED_FUNCTION_57();
      *&v133 = OUTLINED_FUNCTION_6_2();
      *a4 = 136315394;
      v75 = OUTLINED_FUNCTION_5_2();
      OUTLINED_FUNCTION_7_1(v75, v76);
      OUTLINED_FUNCTION_9_2();
      *(a4 + 4) = v23;
      *(a4 + 6) = 2080;
      *(a4 + 14) = OUTLINED_FUNCTION_0_1();
      OUTLINED_FUNCTION_2_3(&dword_21E527000, v77, v78, "%s > Missing 'locale' attribute; no phrase generated for generic intent from: %s");
      swift_arrayDestroy();
      OUTLINED_FUNCTION_39();
      OUTLINED_FUNCTION_39();
    }

    OUTLINED_FUNCTION_3_3();
    v54 = v26;
    goto LABEL_44;
  }

  OUTLINED_FUNCTION_4_2();
  if ((OUTLINED_FUNCTION_10_2() & 1) == 0)
  {

    goto LABEL_29;
  }

  v120 = v35;
  v38 = *&v131;
  v37 = v132;
  v39 = v6[3];
  v121 = v6[2];
  v122 = v34;
  if ((sub_21E541C6C(*&v131, v132, v121, v39) & 1) == 0)
  {

    sub_21E57B5BC();
    v79 = v124;

    v80 = sub_21E57B5DC();
    v81 = sub_21E57B85C();

    if (os_log_type_enabled(v80, v81))
    {
      v82 = swift_slowAlloc();
      LODWORD(v125) = v81;
      v83 = v82;
      v126 = swift_slowAlloc();
      *&v133 = v126;
      *v83 = 136316162;
      v84 = OUTLINED_FUNCTION_5_2();
      v86 = sub_21E5553D8(v84, v85, &v133);
      v127 = v80;
      v87 = v79;
      v88 = v86;

      *(v83 + 4) = v88;
      *(v83 + 12) = 2080;
      v89 = sub_21E5553D8(v38, v37, &v133);

      *(v83 + 14) = v89;
      *(v83 + 22) = 2080;
      *(v83 + 24) = sub_21E5553D8(v121, v39, &v133);
      *(v83 + 32) = 2080;
      v90 = sub_21E5553D8(v123, v87, &v133);

      *(v83 + 34) = v90;
      *(v83 + 42) = 2080;
      *(v83 + 44) = OUTLINED_FUNCTION_0_1();
      v91 = v127;
      _os_log_impl(&dword_21E527000, v127, v125, "%s > Language mismatch between intent locale (%s) and Siri locale (%s); not indexing %s for %s", v83, 0x34u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_39();
      OUTLINED_FUNCTION_39();

LABEL_43:
      OUTLINED_FUNCTION_3_3();
      v54 = v29;
      goto LABEL_44;
    }

LABEL_42:

    goto LABEL_43;
  }

  if (v36 < 1.0)
  {
LABEL_11:

    v29 = v126;
    sub_21E57B5BC();

    v40 = a4;
    v41 = v122;

    v42 = sub_21E57B5DC();
    v43 = sub_21E57B85C();

    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      *&v133 = swift_slowAlloc();
      *v44 = 136317186;
      v45 = OUTLINED_FUNCTION_5_2();
      OUTLINED_FUNCTION_7_1(v45, v46);
      OUTLINED_FUNCTION_9_2();
      *(v44 + 4) = v39;
      *(v44 + 12) = 2080;
      *(v44 + 14) = OUTLINED_FUNCTION_0_1();
      *(v44 + 22) = 2048;
      *(v44 + 24) = v36;
      *(v44 + 32) = 2048;
      *(v44 + 34) = 0x3FF0000000000000;
      *(v44 + 42) = 2080;
      v47 = [v40 domain];
      v48 = sub_21E57B67C();
      v50 = v49;

      v51 = sub_21E5553D8(v48, v50, &v133);

      *(v44 + 44) = v51;
      *(v44 + 52) = 2080;
      *(v44 + 54) = sub_21E5553D8(1936744781, 0xE400000000000000, &v133);
      *(v44 + 62) = 2080;
      v52 = sub_21E5553D8(v120, v41, &v133);

      *(v44 + 64) = v52;
      *(v44 + 72) = 2080;
      *(v44 + 74) = sub_21E5553D8(0x455249445F544547, 0xEE00534E4F495443, &v133);
      *(v44 + 82) = 2080;
      *(v44 + 84) = sub_21E5553D8(0x414E5F5452415453, 0xE900000000000056, &v133);
      _os_log_impl(&dword_21E527000, v42, v43, "%s not indexing generic intent for bundleId %s\ncompatibilityVersion = %f. Required: %f and above\nintent.domain = %s. Required: %s\nelement = %s. Required: %s or %s", v44, 0x5Cu);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_39();
      OUTLINED_FUNCTION_39();

      OUTLINED_FUNCTION_3_3();
      v54 = v126;
LABEL_44:
      result = v53(v54, v129);
      v99 = 0;
      v100 = 0;
      v101 = 0;
      v39 = 0;
      v102 = 0;
      a2 = 0;
      v103 = 0;
      v104 = 0;
      v105 = 0;
      v106 = 0;
      goto LABEL_45;
    }

    goto LABEL_42;
  }

  v92 = [a4 domain];
  v93 = sub_21E57B67C();
  v95 = v94;

  if (v93 == 1936744781 && v95 == 0xE400000000000000)
  {
  }

  else
  {
    v97 = sub_21E57BB3C();

    if ((v97 & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v107 = v120;
  v108 = v122;
  v109 = v120 == 0x455249445F544547 && v122 == 0xEE00534E4F495443;
  if (!v109 && (sub_21E57BB3C() & 1) == 0)
  {
    v110 = v107 == 0x414E5F5452415453 && v108 == 0xE900000000000056;
    if (!v110 && (sub_21E57BB3C() & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  sub_21E52D180(a3, &v133);
  v111 = v125;
  if (!v134)
  {
    sub_21E5420D4(&v133);
    goto LABEL_61;
  }

  OUTLINED_FUNCTION_4_2();
  if ((OUTLINED_FUNCTION_10_2() & 1) == 0)
  {
LABEL_61:
    v105 = 0;
    v106 = 0;
    goto LABEL_62;
  }

  v105 = *&v131;
  v106 = v132;
LABEL_62:
  sub_21E57B5BC();
  v112 = v124;

  v113 = sub_21E57B5DC();
  v114 = sub_21E57B85C();

  if (os_log_type_enabled(v113, v114))
  {
    v115 = swift_slowAlloc();
    LODWORD(v122) = v114;
    v116 = v115;
    v126 = swift_slowAlloc();
    *&v133 = v126;
    *v116 = 136315650;
    v117 = OUTLINED_FUNCTION_5_2();
    v119 = OUTLINED_FUNCTION_7_1(v117, v118);

    *(v116 + 4) = v119;
    *(v116 + 12) = 2080;
    v99 = v123;
    *(v116 + 14) = sub_21E5553D8(v123, v112, &v133);
    *(v116 + 22) = 2080;
    v102 = v128;
    *(v116 + 24) = sub_21E5553D8(v128, a2, &v133);
    _os_log_impl(&dword_21E527000, v113, v122, "%s > Returning %s for %s", v116, 0x20u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_39();
    OUTLINED_FUNCTION_39();

    (*(v130 + 8))(v125, v129);
  }

  else
  {

    (*(v130 + 8))(v111, v129);
    v102 = v128;
    v99 = v123;
  }

  v104 = 0x800000021E57F4E0;

  v103 = 0xD000000000000025;
  v100 = v124;
  v101 = v121;
LABEL_45:
  *a5 = v99;
  a5[1] = v100;
  a5[2] = v101;
  a5[3] = v39;
  a5[4] = v102;
  a5[5] = a2;
  a5[6] = v103;
  a5[7] = v104;
  a5[8] = 0;
  a5[9] = 0;
  a5[10] = v105;
  a5[11] = v106;
  return result;
}

uint64_t sub_21E541C6C(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v9 = *v4;
  v10 = sub_21E57B5EC();
  v11 = OUTLINED_FUNCTION_0(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v11);
  v17 = v39 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = a3 == 0x4E432D687ALL && a4 == 0xE500000000000000;
  if (v18 || (sub_21E57BB3C() & 1) != 0)
  {

    return sub_21E57B70C();
  }

  else
  {
    v39[1] = v9;
    v43 = v13;
    v44 = v10;

    v20 = sub_21E56E134(2);
    v22 = v21;
    v24 = v23;
    v26 = v25;

    v27 = sub_21E56E134(2);
    v41 = v28;
    v42 = v27;
    v40 = v29;
    v31 = v30;
    v39[0] = v24;
    if (sub_21E57B8AC() == 2 && sub_21E57B8AC() == 2)
    {
      v32 = sub_21E542004(v20, v22, v39[0], v26, v42, v41, v40, v31);

      return v32 & 1;
    }

    else
    {

      sub_21E57B5BC();

      v33 = sub_21E57B5DC();
      v34 = sub_21E57B85C();

      if (os_log_type_enabled(v33, v34))
      {
        v35 = swift_slowAlloc();
        v42 = swift_slowAlloc();
        v45 = v42;
        *v35 = 136315650;
        v36 = sub_21E57BC2C();
        v38 = sub_21E5553D8(v36, v37, &v45);

        *(v35 + 4) = v38;
        *(v35 + 12) = 2080;
        *(v35 + 14) = sub_21E5553D8(a1, a2, &v45);
        *(v35 + 22) = 2080;
        *(v35 + 24) = sub_21E5553D8(a3, a4, &v45);
        _os_log_impl(&dword_21E527000, v33, v34, "%s > cannot get proper language code from intentLocale (%s) or currentSiriLocale (%s)", v35, 0x20u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_39();
        OUTLINED_FUNCTION_39();
      }

      (*(v43 + 8))(v17, v44);
      return 0;
    }
  }
}

uint64_t sub_21E542004(unint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, unint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a3 == a7 && a4 == a8 && a1 >> 16 == a5 >> 16 && a2 >> 16 == a6 >> 16)
  {
    return 1;
  }

  else
  {
    return sub_21E57BB1C() & 1;
  }
}

uint64_t sub_21E542078()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

uint64_t sub_21E5420D4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC8968, qword_21E57D170);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t OUTLINED_FUNCTION_0_1()
{
  v3 = *(v1 - 176);

  return sub_21E5553D8(v3, v0, (v1 - 136));
}

void OUTLINED_FUNCTION_2_3(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0x16u);
}

uint64_t OUTLINED_FUNCTION_5_2()
{
  v2 = *(v0 - 184);

  return sub_21E57BC2C();
}

uint64_t OUTLINED_FUNCTION_6_2()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_7_1(uint64_t a1, unint64_t a2)
{

  return sub_21E5553D8(a1, a2, (v2 - 136));
}

uint64_t OUTLINED_FUNCTION_9_2()
{
}

uint64_t OUTLINED_FUNCTION_10_2()
{

  return swift_dynamicCast();
}

uint64_t sub_21E54222C(unsigned __int8 a1, char a2)
{
  v2 = 0xE900000000000068;
  v3 = 0x636E75614C707061;
  v4 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v5 = 0x4974694B69726973;
    }

    else
    {
      v5 = 0x6E65746E49707061;
    }

    if (v4 == 1)
    {
      v6 = 0xED0000746E65746ELL;
    }

    else
    {
      v6 = 0xE900000000000074;
    }
  }

  else
  {
    v5 = 0x636E75614C707061;
    v6 = 0xE900000000000068;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v3 = 0x4974694B69726973;
    }

    else
    {
      v3 = 0x6E65746E49707061;
    }

    if (a2 == 1)
    {
      v2 = 0xED0000746E65746ELL;
    }

    else
    {
      v2 = 0xE900000000000074;
    }
  }

  if (v5 == v3 && v6 == v2)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_21E57BB3C();
  }

  return v8 & 1;
}

uint64_t sub_21E542350()
{
  sub_21E57B6AC();
}

uint64_t sub_21E5423EC()
{
  sub_21E57BB8C();
  sub_21E57B6AC();

  return sub_21E57BBCC();
}

uint64_t sub_21E54249C()
{
  v0 = sub_21E57BA7C();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_21E5424E8(char a1)
{
  if (!a1)
  {
    return 0x636E75614C707061;
  }

  if (a1 == 1)
  {
    return 0x4974694B69726973;
  }

  return 0x6E65746E49707061;
}

uint64_t sub_21E542574@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_21E54249C();
  *a2 = result;
  return result;
}

uint64_t sub_21E5425A4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_21E5424E8(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_21E542680(uint64_t a1, uint64_t a2, double a3)
{
  v4 = v3;
  swift_beginAccess();
  v8 = *(v3 + 16);

  v9 = COERCE_DOUBLE(sub_21E52D1E4(a1, a2, v8));
  v11 = v10;

  if ((v11 & 1) == 0)
  {
    a3 = v9 + a3;
  }

  swift_beginAccess();
  v12 = *(v4 + 16);
  swift_isUniquelyReferenced_nonNull_native();
  v14 = *(v4 + 16);
  sub_21E545B9C(a1, a2, a3);
  *(v4 + 16) = v14;
  return swift_endAccess();
}

double sub_21E542764()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  if (!*(v1 + 16))
  {
    return 0.0;
  }

  v2 = sub_21E52F7C4();
  v3 = 0.0;
  if (v4)
  {
    v3 = *(*(v1 + 56) + 8 * v2);
  }

  return v3;
}

uint64_t sub_21E5427F8(uint64_t a1)
{
  v3 = sub_21E5351E4(a1);
  v4 = v3;
  if (v3)
  {
    if (v3 < 1)
    {
      __break(1u);
      goto LABEL_25;
    }

    v5 = 0;
    v6 = MEMORY[0x277D84F90];
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        MEMORY[0x223D5CE50](v5, a1);
      }

      else
      {
        v7 = *(a1 + 8 * v5 + 32);
      }

      sub_21E542A24();
      v8 = sub_21E542764();

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v10 = *(v6 + 16);
        sub_21E543828();
        v6 = v11;
      }

      v9 = *(v6 + 16);
      if (v9 >= *(v6 + 24) >> 1)
      {
        sub_21E543828();
        v6 = v12;
      }

      ++v5;

      *(v6 + 16) = v9 + 1;
      *(v6 + 8 * v9 + 32) = v8;
    }

    while (v4 != v5);
  }

  else
  {
    v6 = MEMORY[0x277D84F90];
  }

  v17 = v6;

  sub_21E571410(&v17);

  v1 = v17;
  if (v4)
  {
    if (v4 >= 1)
    {
      v13 = 0;
      do
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          MEMORY[0x223D5CE50](v13, a1);
        }

        else
        {
          v14 = *(a1 + 8 * v13 + 32);
        }

        ++v13;
        sub_21E542A24();
        v15 = sub_21E542764();

        sub_21E57A72C(v1, v15);
        sub_21E57B3FC();
      }

      while (v4 != v13);
      goto LABEL_21;
    }

LABEL_25:
    __break(1u);

    __break(1u);
    return result;
  }

LABEL_21:
}

uint64_t sub_21E542A24()
{
  v1 = sub_21E57B3DC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x28223BE20](v1);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v18 - v7;
  if (!*(v0 + 24))
  {

    return sub_21E57B47C();
  }

  v9 = sub_21E57BB3C();

  if (v9)
  {
    return sub_21E57B47C();
  }

  sub_21E57B46C();
  (*(v2 + 104))(v6, *MEMORY[0x277D55840], v1);
  sub_21E542E98();
  sub_21E57B73C();
  sub_21E57B73C();
  v10 = *(v2 + 8);
  v10(v6, v1);
  v10(v8, v1);
  if (v19 != v21)
  {
    return sub_21E57B45C();
  }

  v11 = sub_21E57B47C();
  v13 = v12;
  v14 = sub_21E57B40C();
  v16 = v15;
  v19 = v11;
  v20 = v13;

  MEMORY[0x223D5CBD0](95, 0xE100000000000000);

  MEMORY[0x223D5CBD0](v14, v16);

  return v19;
}

uint64_t sub_21E542CB4()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8D8](v0, 25, 7);
}

_BYTE *storeEnumTagSinglePayload for SiriAutoCompleteHistogramType(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_21E542DF0()
{
  result = qword_27CEC8B48;
  if (!qword_27CEC8B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEC8B48);
  }

  return result;
}

unint64_t sub_21E542E44()
{
  result = qword_27CEC8B50;
  if (!qword_27CEC8B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEC8B50);
  }

  return result;
}

unint64_t sub_21E542E98()
{
  result = qword_281225558;
  if (!qword_281225558)
  {
    sub_21E57B3DC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281225558);
  }

  return result;
}

uint64_t sub_21E542EF0(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC8B58, &qword_21E57D300);
  sub_21E543D84();
  v2 = MEMORY[0x277D84F90];
  v3 = sub_21E57B62C();
  v4 = *(a1 + 16);
  if (v4)
  {
    v5 = 0;
    v6 = (a1 + 32);
    v7 = v2;
    do
    {
      memcpy(__dst, v6, 0x60uLL);
      v8 = __dst[11];
      if (__dst[11])
      {
        v9 = __dst[10];
        sub_21E534CEC(__dst, v57);

        sub_21E5400E4(v5);
        swift_isUniquelyReferenced_nonNull_native();
        v57[0] = v3;
        v10 = sub_21E52F81C();
        if (__OFADD__(*(v3 + 16), (v11 & 1) == 0))
        {
          goto LABEL_44;
        }

        v12 = v10;
        v13 = v11;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC8B68, &qword_21E57D308);
        v14 = sub_21E57BA1C();
        v3 = v57[0];
        if (v14)
        {
          v15 = sub_21E52F81C();
          if ((v13 & 1) != (v16 & 1))
          {
            goto LABEL_49;
          }

          v12 = v15;
        }

        if (v13)
        {
        }

        else
        {
          *(v3 + 8 * (v12 >> 6) + 64) |= 1 << v12;
          v21 = (*(v3 + 48) + 16 * v12);
          *v21 = v9;
          v21[1] = v8;
          *(*(v3 + 56) + 8 * v12) = MEMORY[0x277D84F90];
          v22 = *(v3 + 16);
          v23 = __OFADD__(v22, 1);
          v24 = v22 + 1;
          if (v23)
          {
            goto LABEL_45;
          }

          *(v3 + 16) = v24;
        }

        v25 = *(v3 + 56);
        v20 = *(v25 + 8 * v12);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v25 + 8 * v12) = v20;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v28 = *(v20 + 16);
          sub_21E543754();
          v20 = v29;
          *(v25 + 8 * v12) = v29;
        }

        v18 = *(v20 + 16);
        v27 = *(v20 + 24);
        v19 = v18 + 1;
        if (v18 >= v27 >> 1)
        {
          OUTLINED_FUNCTION_10_3(v27);
          sub_21E543754();
          v20 = v30;
          *(v25 + 8 * v12) = v30;
        }

        v5 = sub_21E53EBE4;
      }

      else
      {
        sub_21E534CEC(__dst, v57);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v31 = *(v7 + 16);
          sub_21E543754();
          v7 = v32;
        }

        v18 = *(v7 + 16);
        v17 = *(v7 + 24);
        v19 = v18 + 1;
        if (v18 >= v17 >> 1)
        {
          OUTLINED_FUNCTION_10_3(v17);
          sub_21E543754();
          v20 = v33;
          v7 = v33;
        }

        else
        {
          v20 = v7;
        }
      }

      *(v20 + 16) = v19;
      memcpy((v20 + 96 * v18 + 32), __dst, 0x60uLL);
      v6 += 96;
      --v4;
    }

    while (v4);
  }

  else
  {
    v5 = 0;
    v7 = v2;
  }

  v34 = 0;
  v35 = *(v3 + 64);
  v36 = *(v3 + 32);
  OUTLINED_FUNCTION_2_4();
  v39 = v38 & v37;
  v41 = (v40 + 63) >> 6;
  v56 = v5;
  while (v39)
  {
LABEL_31:
    v43 = __clz(__rbit64(v39)) | (v34 << 6);
    v44 = (*(v3 + 48) + 16 * v43);
    v45 = *v44;
    v46 = v44[1];
    v47 = *(*(v3 + 56) + 8 * v43);

    v49 = sub_21E56064C(v48);

    v50 = *(v49 + 16);
    v51 = *(v7 + 16);
    if (__OFADD__(v51, v50))
    {
      goto LABEL_46;
    }

    if (!swift_isUniquelyReferenced_nonNull_native() || v51 + v50 > *(v7 + 24) >> 1)
    {
      sub_21E543754();
      v7 = v52;
    }

    v39 &= v39 - 1;
    if (*(v49 + 16))
    {
      if ((*(v7 + 24) >> 1) - *(v7 + 16) < v50)
      {
        goto LABEL_47;
      }

      swift_arrayInitWithCopy();

      v5 = v56;
      if (v50)
      {
        v53 = *(v7 + 16);
        v23 = __OFADD__(v53, v50);
        v54 = v53 + v50;
        if (v23)
        {
          goto LABEL_48;
        }

        *(v7 + 16) = v54;
      }
    }

    else
    {

      v5 = v56;
      if (v50)
      {
        __break(1u);
LABEL_42:

        sub_21E5400E4(v5);
        return v7;
      }
    }
  }

  while (1)
  {
    v42 = v34 + 1;
    if (__OFADD__(v34, 1))
    {
      break;
    }

    if (v42 >= v41)
    {
      goto LABEL_42;
    }

    v39 = *(v3 + 64 + 8 * v42);
    ++v34;
    if (v39)
    {
      v34 = v42;
      goto LABEL_31;
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
LABEL_49:
  result = sub_21E57BB6C();
  __break(1u);
  return result;
}

uint64_t sub_21E54335C(uint64_t a1)
{
  result = MEMORY[0x223D5CD20](*(a1 + 16), MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  v3 = 0;
  v9 = result;
  v4 = *(a1 + 16);
  for (i = (a1 + 40); ; i += 2)
  {
    if (v4 == v3)
    {

      return v9;
    }

    if (v3 >= *(a1 + 16))
    {
      break;
    }

    ++v3;
    v7 = *(i - 1);
    v6 = *i;

    sub_21E576044(&v8, v7, v6);
  }

  __break(1u);
  return result;
}

void sub_21E54341C(uint64_t a1)
{
  v2 = 0;
  v15[2] = MEMORY[0x223D5CD20](*(a1 + 16), MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  v3 = *(a1 + 64);
  v4 = *(a1 + 32);
  OUTLINED_FUNCTION_2_4();
  v7 = v6 & v5;
  v9 = (v8 + 63) >> 6;
  if ((v6 & v5) != 0)
  {
    do
    {
      v10 = v2;
LABEL_7:
      v11 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      v12 = (*(a1 + 48) + ((v10 << 10) | (16 * v11)));
      v13 = *v12;
      v14 = v12[1];

      sub_21E576044(v15, v13, v14);
    }

    while (v7);
  }

  while (1)
  {
    v10 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      break;
    }

    if (v10 >= v9)
    {

      return;
    }

    v7 = *(a1 + 64 + 8 * v10);
    ++v2;
    if (v7)
    {
      v2 = v10;
      goto LABEL_7;
    }
  }

  __break(1u);
}

uint64_t sub_21E543524()
{
  result = sub_21E54335C(&unk_282F920F8);
  qword_27CEC8DC8 = result;
  return result;
}

uint64_t sub_21E54354C()
{
  if (qword_27CEC88D0 != -1)
  {
LABEL_14:
    swift_once();
  }

  v0 = qword_27CEC8DC8;
  v2 = qword_27CEC8DC8 + 56;
  v1 = *(qword_27CEC8DC8 + 56);
  v3 = *(qword_27CEC8DC8 + 32);
  OUTLINED_FUNCTION_2_4();
  v6 = v5 & v4;
  v8 = (v7 + 63) >> 6;

  v9 = 0;
  do
  {
    if (!v6)
    {
      while (1)
      {
        v10 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          break;
        }

        if (v10 >= v8)
        {
          v12 = 0;
          goto LABEL_12;
        }

        v6 = *(v2 + 8 * v10);
        ++v9;
        if (v6)
        {
          v9 = v10;
          goto LABEL_9;
        }
      }

      __break(1u);
      goto LABEL_14;
    }

    v10 = v9;
LABEL_9:
    v11 = (*(v0 + 48) + ((v10 << 10) | (16 * __clz(__rbit64(v6)))));
    v6 &= v6 - 1;
    v14 = *v11;
    v15 = v11[1];
    sub_21E534DE8();
  }

  while ((sub_21E57B8DC() & 1) == 0);
  v12 = 1;
LABEL_12:

  return v12;
}

void sub_21E543698()
{
  OUTLINED_FUNCTION_8_1();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_1_2();
  if (v6 == v7)
  {
LABEL_7:
    OUTLINED_FUNCTION_4_3(v5);
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC8B70, &unk_21E57DF10);
      v8 = swift_allocObject();
      OUTLINED_FUNCTION_9_3(v8);
      OUTLINED_FUNCTION_6_3(v9);
      if (v1)
      {
LABEL_9:
        v10 = OUTLINED_FUNCTION_3_4();
        sub_21E565598(v10);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    v11 = OUTLINED_FUNCTION_7_2();
    memcpy(v11, v12, v13);
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_5_3();
  if (!v6)
  {
    OUTLINED_FUNCTION_0_2();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_21E543754()
{
  OUTLINED_FUNCTION_8_1();
  if ((v5 & 1) == 0)
  {
    v6 = v4;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_1_2();
  if (v7 == v8)
  {
LABEL_7:
    OUTLINED_FUNCTION_4_3(v6);
    if (v3)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC8928, &qword_21E57C4A8);
      v9 = swift_allocObject();
      OUTLINED_FUNCTION_9_3(v9);
      *(v3 + 16) = v2;
      *(v3 + 24) = 2 * (v10 / 96);
      if (v1)
      {
LABEL_9:
        v11 = OUTLINED_FUNCTION_3_4();
        sub_21E562708(v11, v12, v13);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    OUTLINED_FUNCTION_7_2();
    swift_arrayInitWithCopy();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_5_3();
  if (!v7)
  {
    OUTLINED_FUNCTION_0_2();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_21E543828()
{
  OUTLINED_FUNCTION_8_1();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_1_2();
  if (v6 == v7)
  {
LABEL_7:
    OUTLINED_FUNCTION_4_3(v5);
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC8B80, &qword_21E57DF30);
      v8 = swift_allocObject();
      OUTLINED_FUNCTION_9_3(v8);
      OUTLINED_FUNCTION_6_3(v9);
      if (v1)
      {
LABEL_9:
        v10 = OUTLINED_FUNCTION_3_4();
        sub_21E5626D0(v10, v11, v12);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    v13 = OUTLINED_FUNCTION_7_2();
    memcpy(v13, v14, v15);
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_5_3();
  if (!v6)
  {
    OUTLINED_FUNCTION_0_2();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_21E543924()
{
  OUTLINED_FUNCTION_8_1();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_1_2();
  if (v6 == v7)
  {
LABEL_7:
    OUTLINED_FUNCTION_4_3(v5);
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC8940, &qword_21E57C4C0);
      v8 = swift_allocObject();
      OUTLINED_FUNCTION_9_3(v8);
      OUTLINED_FUNCTION_6_3(v9);
      if (v1)
      {
LABEL_9:
        v10 = OUTLINED_FUNCTION_3_4();
        sub_21E52981C(v10, v11, v12);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    OUTLINED_FUNCTION_7_2();
    swift_arrayInitWithCopy();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_5_3();
  if (!v6)
  {
    OUTLINED_FUNCTION_0_2();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_21E5439E8()
{
  OUTLINED_FUNCTION_8_1();
  if ((v5 & 1) == 0)
  {
    v6 = v4;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_1_2();
  if (v7 == v8)
  {
LABEL_7:
    OUTLINED_FUNCTION_4_3(v6);
    if (v3)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC8B78, &qword_21E57D310);
      v9 = swift_allocObject();
      OUTLINED_FUNCTION_9_3(v9);
      *(v3 + 16) = v2;
      *(v3 + 24) = 2 * (v10 / 24);
      if (v1)
      {
LABEL_9:
        v11 = OUTLINED_FUNCTION_3_4();
        sub_21E562808(v11, v12, v13);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    OUTLINED_FUNCTION_7_2();
    swift_arrayInitWithCopy();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_5_3();
  if (!v7)
  {
    OUTLINED_FUNCTION_0_2();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_21E543ABC(char a1, uint64_t a2, char a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t), uint64_t (*a6)(void), void (*a7)(unint64_t, uint64_t, unint64_t))
{
  if (a3)
  {
    OUTLINED_FUNCTION_1_2();
    if (v12 != v13)
    {
      OUTLINED_FUNCTION_5_3();
      if (v12)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_0_2();
    }
  }

  else
  {
    v11 = a2;
  }

  v14 = *(a4 + 16);
  v15 = a5(v14, v11);
  v16 = *(a6(0) - 8);
  if (a1)
  {
    v17 = (*(v16 + 80) + 32) & ~*(v16 + 80);
    a7(a4 + v17, v14, v15 + v17);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

uint64_t sub_21E543BC8()
{
  OUTLINED_FUNCTION_11_2();
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v1 = v0;
  if (result)
  {
    if ((v0 & 0x8000000000000000) == 0 && (v0 & 0x4000000000000000) == 0)
    {
      v4 = v0 & 0xFFFFFFFFFFFFFF8;
      if (v2 <= *((v0 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }

LABEL_10:
    sub_21E57BA4C();
    goto LABEL_11;
  }

  if (v0 < 0 || (v0 & 0x4000000000000000) != 0)
  {
    goto LABEL_10;
  }

  v4 = v0 & 0xFFFFFFFFFFFFFF8;
LABEL_9:
  v5 = *(v4 + 16);
LABEL_11:
  result = sub_21E57B96C();
  *v1 = result;
  return result;
}

uint64_t sub_21E543C74(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = *v3;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v6;
  if (!result || a1 > *(v6 + 24) >> 1)
  {
    if (*(v6 + 16) > a1)
    {
      v8 = *(v6 + 16);
    }

    result = a3();
    *v3 = result;
  }

  return result;
}

void sub_21E543CEC()
{
  OUTLINED_FUNCTION_11_2();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v1 = v0;
  if (!isUniquelyReferenced_nonNull_native || v3 > *(v0 + 24) >> 1)
  {
    if (*(v0 + 16) <= v3)
    {
      v5 = v3;
    }

    else
    {
      v5 = *(v0 + 16);
    }

    sub_21E543ABC(isUniquelyReferenced_nonNull_native, v5, v2 & 1, v0, sub_21E52F478, MEMORY[0x277D606E0], sub_21E5626F0);
    *v1 = v6;
  }
}

unint64_t sub_21E543D84()
{
  result = qword_27CEC8B60;
  if (!qword_27CEC8B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEC8B60);
  }

  return result;
}

void OUTLINED_FUNCTION_4_3(uint64_t a1@<X8>)
{
  if (a1 <= *(v1 + 16))
  {
    v2 = *(v1 + 16);
  }
}

BOOL sub_21E543EB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v6 = *(a3 + 40);
  sub_21E57BB8C();
  sub_21E57B6AC();
  v7 = sub_21E57BBCC();
  v8 = ~(-1 << *(a3 + 32));
  do
  {
    v9 = v7 & v8;
    v10 = (1 << (v7 & v8)) & *(a3 + 56 + (((v7 & v8) >> 3) & 0xFFFFFFFFFFFFFF8));
    v11 = v10 != 0;
    if (!v10)
    {
      break;
    }

    v12 = (*(a3 + 48) + 16 * v9);
    if (*v12 == a1 && v12[1] == a2)
    {
      break;
    }

    v14 = sub_21E57BB3C();
    v7 = v9 + 1;
  }

  while ((v14 & 1) == 0);
  return v11;
}

BOOL sub_21E543F9C(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v4 = *(a2 + 40);
  sub_21E57BB8C();
  sub_21E546408(__src, a1);
  v5 = sub_21E57BBCC();
  v6 = ~(-1 << *(a2 + 32));
  do
  {
    v7 = v5 & v6;
    v8 = (1 << (v5 & v6)) & *(a2 + 56 + (((v5 & v6) >> 3) & 0xFFFFFFFFFFFFFF8));
    v9 = v8 != 0;
    if (!v8)
    {
      break;
    }

    v10 = *(*(a2 + 48) + 8 * v7);

    v12 = sub_21E54655C(v11, a1);

    v5 = v7 + 1;
  }

  while ((v12 & 1) == 0);
  return v9;
}

uint64_t sub_21E544080(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!*(a5 + 16))
  {
    return 0;
  }

  v10 = *(a5 + 40);
  sub_21E57BB8C();
  sub_21E57B6AC();
  sub_21E57B6AC();
  v11 = sub_21E57BBCC();
  v12 = a5 + 56;
  v13 = -1 << *(a5 + 32);
  v14 = v11 & ~v13;
  if (((*(a5 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
  {
    return 0;
  }

  v15 = ~v13;
  v16 = *(a5 + 48);
  while (1)
  {
    v17 = (v16 + 32 * v14);
    v18 = v17[2];
    v19 = v17[3];
    v20 = *v17 == a1 && v17[1] == a2;
    if (v20 || (sub_21E57BB3C() & 1) != 0)
    {
      v21 = v18 == a3 && v19 == a4;
      if (v21 || (sub_21E57BB3C() & 1) != 0)
      {
        break;
      }
    }

    v14 = (v14 + 1) & v15;
    if (((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

void sub_21E5441CC()
{
  v0 = sub_21E57B5EC();
  v1 = OUTLINED_FUNCTION_0(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v1);
  MEMORY[0x28223BE20](v6);
  v8 = &v32 - v7;
  v9 = sub_21E57ABEC();
  v10 = OUTLINED_FUNCTION_0(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v10);
  v17 = &v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v32 - v18;
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v21 = [objc_opt_self() bundleForClass_];
  v22 = sub_21E546314(0xD00000000000001CLL, 0x800000021E57D3C0, 0x7473696C70, 0xE500000000000000, v21);

  if (v22)
  {
    sub_21E57ABDC();

    (*(v12 + 32))(v19, v17, v9);
    v23 = sub_21E57AB9C();
    v24 = *(v23 + 48);
    v25 = *(v23 + 52);
    swift_allocObject();
    sub_21E57AB8C();
    v26 = sub_21E57ABFC();
    v28 = v27;
    sub_21E548BD8();
    sub_21E57AB7C();
    (*(v12 + 8))(v19, v9);
    sub_21E53505C(v26, v28);
  }

  else
  {
    sub_21E57B5BC();
    v29 = sub_21E57B5DC();
    v30 = sub_21E57B86C();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&dword_21E527000, v29, v30, "AppIntentTranscriptSource: unable to get URL to AppIntentTranscriptAllowList.plist filePath. Returning 0 phrases", v31, 2u);
      OUTLINED_FUNCTION_39();
    }

    (*(v3 + 8))(v8, v0);
  }

  OUTLINED_FUNCTION_100();
}

id sub_21E544610(void *a1)
{
  v2 = sub_21E57B5EC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [a1 error];
  if (result)
  {
    v8 = result;
    sub_21E57B5BC();
    v9 = v8;
    v10 = sub_21E57B5DC();
    v11 = sub_21E57B86C();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v18 = v13;
      *v12 = 136315138;
      swift_getErrorValue();
      v14 = sub_21E57BB7C();
      v16 = sub_21E5553D8(v14, v15, &v18);

      *(v12 + 4) = v16;
      _os_log_impl(&dword_21E527000, v10, v11, "Error encountered while fetching the link transcript for phrases %s", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v13);
      MEMORY[0x223D5D740](v13, -1, -1);
      MEMORY[0x223D5D740](v12, -1, -1);
    }

    else
    {
    }

    return (*(v3 + 8))(v6, v2);
  }

  return result;
}

uint64_t sub_21E544808(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  swift_beginAccess();
  v14 = __swift_project_boxed_opaque_existential_1(a3, a3[3]);
  sub_21E5477F0(a1, *v14, a4, a5, a6, (a7 + 16), a2);
  return swift_endAccess();
}

void sub_21E5448A8(void *a1)
{
  v3 = sub_21E57B5EC();
  v4 = OUTLINED_FUNCTION_0(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_9_4();
  if ([a1 source] >= 0xB)
  {
    sub_21E57B5BC();
    v9 = a1;
    v10 = sub_21E57B5DC();
    v11 = sub_21E57B86C();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 33554688;
      *(v12 + 4) = [v9 source];

      _os_log_impl(&dword_21E527000, v10, v11, "Unexpected source not covered by switch statement: %hu", v12, 6u);
      OUTLINED_FUNCTION_39();
    }

    else
    {

      v10 = v9;
    }

    (*(v6 + 8))(v1, v3);
  }

  OUTLINED_FUNCTION_25_1();
}

void sub_21E544A2C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_21E57B5EC();
  v5 = OUTLINED_FUNCTION_0(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_9_4();
  sub_21E57B5BC();
  v10 = sub_21E57B5DC();
  v11 = sub_21E57B84C();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_21E527000, v10, v11, "Ranking App Intent transcript phrases", v12, 2u);
    OUTLINED_FUNCTION_39();
  }

  (*(v7 + 8))(v1, v4);
  v13 = *(v1 + OBJC_IVAR____TtC16SiriAutoComplete25AppIntentTranscriptSource_histogram);
  v14 = *(v2 + OBJC_IVAR____TtC16SiriAutoComplete25AppIntentTranscriptSource_histogram);

  sub_21E5427F8(a1);

  OUTLINED_FUNCTION_25_1();
}

uint64_t sub_21E544B6C()
{
  v1 = OBJC_IVAR____TtC16SiriAutoComplete25AppIntentTranscriptSource_source;
  v2 = sub_21E57B3DC();
  OUTLINED_FUNCTION_82(v2);
  (*(v3 + 8))(v0 + v1);
  v4 = *(v0 + OBJC_IVAR____TtC16SiriAutoComplete25AppIntentTranscriptSource_histogram);

  __swift_destroy_boxed_opaque_existential_0Tm((v0 + OBJC_IVAR____TtC16SiriAutoComplete25AppIntentTranscriptSource_suggestionsForIntentProvider));
  return v0;
}

uint64_t sub_21E544BE0()
{
  sub_21E544B6C();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t type metadata accessor for AppIntentTranscriptSource()
{
  result = qword_281225A40;
  if (!qword_281225A40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21E544C8C()
{
  result = sub_21E57B3DC();
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

uint64_t sub_21E544D40(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000017 && 0x800000021E57F360 == a2;
  if (v3 || (sub_21E57BB3C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000012 && 0x800000021E57F5D0 == a2;
    if (v6 || (sub_21E57BB3C() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0xD000000000000014 && 0x800000021E57F5F0 == a2)
    {

      return 2;
    }

    else
    {
      v8 = sub_21E57BB3C();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

unint64_t sub_21E544E60(char a1)
{
  if (!a1)
  {
    return 0xD000000000000017;
  }

  if (a1 == 1)
  {
    return 0xD000000000000012;
  }

  return 0xD000000000000014;
}

void sub_21E544EB8()
{
  OUTLINED_FUNCTION_25_0();
  v13 = v1;
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC8BB8, &qword_21E57D510);
  OUTLINED_FUNCTION_0(v4);
  v6 = v5;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_5_0();
  MEMORY[0x28223BE20](v9);
  v11 = &v13 - v10;
  v12 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  sub_21E548D60();
  sub_21E57BBEC();
  v14 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC8BB0, &qword_21E57D508);
  sub_21E548E08(&qword_27CEC8BC0, sub_21E548E80);
  OUTLINED_FUNCTION_4_4();
  if (!v0)
  {
    v14 = 1;
    OUTLINED_FUNCTION_4_4();
    v14 = 2;
    OUTLINED_FUNCTION_4_4();
  }

  (*(v6 + 8))(v11, v4);
  OUTLINED_FUNCTION_28_0();
}

void sub_21E545058()
{
  OUTLINED_FUNCTION_25_0();
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC8BA8, &qword_21E57D500);
  OUTLINED_FUNCTION_0(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_5_0();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_14_0();
  v6 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v1[3]);
  sub_21E548D60();
  OUTLINED_FUNCTION_16_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC8BB0, &qword_21E57D508);
  sub_21E548E08(&qword_281225530, sub_21E548DB4);
  OUTLINED_FUNCTION_3_5();
  OUTLINED_FUNCTION_18_1();
  sub_21E57BABC();
  OUTLINED_FUNCTION_3_5();
  OUTLINED_FUNCTION_18_1();
  sub_21E57BABC();
  OUTLINED_FUNCTION_3_5();
  sub_21E57BABC();
  v7 = OUTLINED_FUNCTION_2_1();
  v8(v7);
  __swift_destroy_boxed_opaque_existential_0Tm(v1);
  OUTLINED_FUNCTION_28_0();
}

uint64_t sub_21E545264(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x614E746E65746E69 && a2 == 0xEA0000000000656DLL;
  if (v4 || (sub_21E57BB3C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6C646E7542707061 && a2 == 0xEB00000000644965)
  {

    return 1;
  }

  else
  {
    v7 = sub_21E57BB3C();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_21E545338(char a1)
{
  if (a1)
  {
    return 0x6C646E7542707061;
  }

  else
  {
    return 0x614E746E65746E69;
  }
}

void sub_21E54537C()
{
  OUTLINED_FUNCTION_25_0();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC8BE0, &qword_21E57D728);
  OUTLINED_FUNCTION_0(v4);
  v6 = v5;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_5_0();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_14_0();
  v10 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  sub_21E549120();
  sub_21E57BBEC();
  sub_21E57BAEC();
  if (!v0)
  {
    sub_21E57BAEC();
  }

  (*(v6 + 8))(v1, v4);
  OUTLINED_FUNCTION_28_0();
}

uint64_t sub_21E5454CC()
{
  sub_21E57BB8C();
  sub_21E57B6AC();
  sub_21E57B6AC();
  return sub_21E57BBCC();
}

void sub_21E54553C()
{
  OUTLINED_FUNCTION_25_0();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC8BD8, &qword_21E57D720);
  OUTLINED_FUNCTION_0(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_5_0();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_14_0();
  v7 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  sub_21E549120();
  OUTLINED_FUNCTION_16_0();
  if (!v0)
  {
    OUTLINED_FUNCTION_18_1();
    sub_21E57BAAC();
    OUTLINED_FUNCTION_18_1();
    sub_21E57BAAC();
    v8 = OUTLINED_FUNCTION_2_1();
    v9(v8);
  }

  __swift_destroy_boxed_opaque_existential_0Tm(v2);
  OUTLINED_FUNCTION_28_0();
}

uint64_t sub_21E5456C4@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC16SiriAutoComplete25AppIntentTranscriptSource_source;
  v5 = sub_21E57B3DC();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t sub_21E545740(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = *__swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_21E539DD0;

  return (sub_21E548158)(v8, a2, a3, v7);
}

uint64_t sub_21E545840@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21E544D40(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_21E545868(uint64_t a1)
{
  v2 = sub_21E548D60();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21E5458A4(uint64_t a1)
{
  v2 = sub_21E548D60();

  return MEMORY[0x2821FE720](a1, v2);
}

void sub_21E5458E0(void *a1@<X8>)
{
  sub_21E545058();
  if (!v1)
  {
    *a1 = v3;
    a1[1] = v4;
    a1[2] = v5;
  }
}

void sub_21E545910()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_21E544EB8();
}

uint64_t sub_21E545940@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21E545264(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_21E545968(uint64_t a1)
{
  v2 = sub_21E549120();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21E5459A4(uint64_t a1)
{
  v2 = sub_21E549120();

  return MEMORY[0x2821FE720](a1, v2);
}

void sub_21E5459E0(void *a1@<X8>)
{
  sub_21E54553C();
  if (!v1)
  {
    *a1 = v3;
    a1[1] = v4;
    a1[2] = v5;
    a1[3] = v6;
  }
}

void sub_21E545A10()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  sub_21E54537C();
}

uint64_t sub_21E545A30()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  return sub_21E5454CC();
}

uint64_t sub_21E545A54(uint64_t (*a1)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v1 = v3;
  if (!result)
  {
    result = a1(result, *(v3 + 16) + 1, 1, v3);
    *v1 = result;
  }

  return result;
}

uint64_t sub_21E545AB0()
{
  v2 = OUTLINED_FUNCTION_5_4();
  OUTLINED_FUNCTION_1_3(v2, v3);
  if (v6)
  {
    __break(1u);
    goto LABEL_13;
  }

  v7 = v4;
  v8 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC89A8, &unk_21E57C560);
  if ((OUTLINED_FUNCTION_20_1() & 1) == 0)
  {
    goto LABEL_5;
  }

  v9 = *v1;
  v10 = sub_21E52F7C4();
  if ((v8 & 1) != (v11 & 1))
  {
LABEL_13:
    result = sub_21E57BB6C();
    __break(1u);
    return result;
  }

  v7 = v10;
LABEL_5:
  if (v8)
  {
    v12 = *(*v1 + 56);
    v13 = *(v12 + 8 * v7);
    *(v12 + 8 * v7) = v0;
    OUTLINED_FUNCTION_25_1();
  }

  else
  {
    v16 = OUTLINED_FUNCTION_17_0();
    sub_21E5461B8(v16, v17, v18, v19, v20);
    OUTLINED_FUNCTION_25_1();
  }
}

uint64_t sub_21E545B9C(uint64_t a1, uint64_t a2, double a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_21E52F7C4();
  OUTLINED_FUNCTION_1_3(v9, v10);
  if (v13)
  {
    __break(1u);
    goto LABEL_11;
  }

  v14 = v11;
  v15 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC8B98, &unk_21E57D410);
  result = sub_21E57BA1C();
  if ((result & 1) == 0)
  {
    goto LABEL_5;
  }

  v17 = *v4;
  result = sub_21E52F7C4();
  if ((v15 & 1) != (v18 & 1))
  {
LABEL_11:
    result = sub_21E57BB6C();
    __break(1u);
    return result;
  }

  v14 = result;
LABEL_5:
  v19 = *v4;
  if (v15)
  {
    *(v19[7] + 8 * v14) = a3;
  }

  else
  {
    sub_21E5461DC(v14, a1, a2, v19, a3);
  }

  return result;
}

uint64_t sub_21E545CBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v13 = *v6;
  v14 = sub_21E52F880(a3, a4, a5, a6);
  OUTLINED_FUNCTION_1_3(v14, v15);
  if (v18)
  {
    __break(1u);
    goto LABEL_13;
  }

  v19 = v16;
  v20 = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC89C0, &qword_21E57D420);
  if ((sub_21E57BA1C() & 1) == 0)
  {
    goto LABEL_5;
  }

  v21 = *v7;
  v22 = sub_21E52F880(a3, a4, a5, a6);
  if ((v20 & 1) != (v23 & 1))
  {
LABEL_13:
    result = sub_21E57BB6C();
    __break(1u);
    return result;
  }

  v19 = v22;
LABEL_5:
  v24 = *v7;
  if (v20)
  {
    v25 = (v24[7] + 16 * v19);
    v27 = *v25;
    v26 = v25[1];
    *v25 = a1;
    v25[1] = a2;
  }

  else
  {
    sub_21E546224(v19, a3, a4, a5, a6, a1, a2, v24);
  }
}

uint64_t sub_21E545E44()
{
  v2 = OUTLINED_FUNCTION_5_4();
  OUTLINED_FUNCTION_1_3(v2, v3);
  if (v6)
  {
    __break(1u);
    goto LABEL_13;
  }

  v7 = v4;
  v8 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC8B88, &unk_21E57D3D0);
  if ((OUTLINED_FUNCTION_20_1() & 1) == 0)
  {
    goto LABEL_5;
  }

  v9 = *v1;
  v10 = sub_21E52F7C4();
  if ((v8 & 1) != (v11 & 1))
  {
LABEL_13:
    result = sub_21E57BB6C();
    __break(1u);
    return result;
  }

  v7 = v10;
LABEL_5:
  if (v8)
  {
    v12 = *(*v1 + 56);
    v13 = *(v12 + 8 * v7);
    *(v12 + 8 * v7) = v0;
    OUTLINED_FUNCTION_25_1();
  }

  else
  {
    v16 = OUTLINED_FUNCTION_17_0();
    sub_21E5461B8(v16, v17, v18, v19, v20);
    OUTLINED_FUNCTION_25_1();
  }
}

uint64_t sub_21E545F30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_21E52F7C4();
  OUTLINED_FUNCTION_1_3(v11, v12);
  if (v15)
  {
    __break(1u);
    goto LABEL_13;
  }

  v16 = v13;
  v17 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC8B90, &qword_21E57D408);
  if ((sub_21E57BA1C() & 1) == 0)
  {
    goto LABEL_5;
  }

  v18 = *v5;
  v19 = sub_21E52F7C4();
  if ((v17 & 1) != (v20 & 1))
  {
LABEL_13:
    result = sub_21E57BB6C();
    __break(1u);
    return result;
  }

  v16 = v19;
LABEL_5:
  v21 = *v5;
  if (v17)
  {
    v22 = (v21[7] + 16 * v16);
    v23 = v22[1];
    *v22 = a1;
    v22[1] = a2;
    OUTLINED_FUNCTION_100();
  }

  else
  {
    sub_21E546274(v16, a3, a4, a1, a2, v21);
    OUTLINED_FUNCTION_100();
  }
}

uint64_t sub_21E546068(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_21E52F7C4();
  OUTLINED_FUNCTION_1_3(v13, v14);
  if (v17)
  {
    __break(1u);
    goto LABEL_13;
  }

  v18 = v15;
  v19 = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC8BA0, &qword_21E57D428);
  if ((sub_21E57BA1C() & 1) == 0)
  {
    goto LABEL_5;
  }

  v20 = *v6;
  v21 = sub_21E52F7C4();
  if ((v19 & 1) != (v22 & 1))
  {
LABEL_13:
    result = sub_21E57BB6C();
    __break(1u);
    return result;
  }

  v18 = v21;
LABEL_5:
  v23 = *v6;
  if (v19)
  {
    v24 = (v23[7] + 24 * v18);
    v26 = v24[1];
    v25 = v24[2];
    *v24 = a1;
    v24[1] = a2;
    v24[2] = a3;

    OUTLINED_FUNCTION_100();
  }

  else
  {
    sub_21E5462C0(v18, a4, a5, a1, a2, a3, v23);
    OUTLINED_FUNCTION_100();
  }
}

unint64_t sub_21E5461B8(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  result = OUTLINED_FUNCTION_6_4(a1, a2, a3, a4, a5);
  if (v8)
  {
    __break(1u);
  }

  else
  {
    *(v6 + 16) = v7;
  }

  return result;
}

unint64_t sub_21E5461DC(unint64_t result, uint64_t a2, uint64_t a3, void *a4, double a5)
{
  a4[(result >> 6) + 8] |= 1 << result;
  v5 = (a4[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  *(a4[7] + 8 * result) = a5;
  v6 = a4[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v8;
  }

  return result;
}

unint64_t sub_21E546224(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  a8[(result >> 6) + 8] |= 1 << result;
  v8 = (a8[6] + 32 * result);
  *v8 = a2;
  v8[1] = a3;
  v8[2] = a4;
  v8[3] = a5;
  v9 = (a8[7] + 16 * result);
  *v9 = a6;
  v9[1] = a7;
  v10 = a8[2];
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    a8[2] = v12;
  }

  return result;
}

unint64_t sub_21E546274(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  a6[(result >> 6) + 8] |= 1 << result;
  v6 = (a6[6] + 16 * result);
  *v6 = a2;
  v6[1] = a3;
  v7 = (a6[7] + 16 * result);
  *v7 = a4;
  v7[1] = a5;
  v8 = a6[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v10;
  }

  return result;
}

unint64_t sub_21E5462C0(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  a7[(result >> 6) + 8] |= 1 << result;
  v7 = (a7[6] + 16 * result);
  *v7 = a2;
  v7[1] = a3;
  v8 = (a7[7] + 24 * result);
  *v8 = a4;
  v8[1] = a5;
  v8[2] = a6;
  v9 = a7[2];
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
  }

  else
  {
    a7[2] = v11;
  }

  return result;
}

id sub_21E546314(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = sub_21E57B66C();

  v7 = sub_21E57B66C();

  v8 = [a5 URLForResource:v6 withExtension:v7];

  return v8;
}

uint64_t sub_21E5463A8(void *a1, SEL *a2)
{
  v2 = [a1 *a2];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = sub_21E57B67C();

  return v4;
}

uint64_t sub_21E546408(void *__src, uint64_t a2)
{
  memcpy(__dst, __src, sizeof(__dst));
  sub_21E57BBCC();
  v3 = 1 << *(a2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a2 + 56);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  for (i = 0; v5; v8 ^= v15)
  {
    v10 = i;
LABEL_9:
    v11 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v12 = (*(a2 + 48) + ((v10 << 10) | (16 * v11)));
    v13 = *v12;
    v14 = v12[1];
    sub_21E57BB8C();

    sub_21E57B6AC();
    v15 = sub_21E57BBCC();
  }

  while (1)
  {
    v10 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v10 >= v6)
    {

      return MEMORY[0x223D5D090](v8);
    }

    v5 = *(a2 + 56 + 8 * v10);
    ++i;
    if (v5)
    {
      i = v10;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_21E54655C(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v22 = result;
  if (v7)
  {
    while (2)
    {
      v9 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
LABEL_13:
      v12 = (*(result + 48) + 16 * (v9 | (v3 << 6)));
      v14 = *v12;
      v13 = v12[1];
      v15 = *(a2 + 40);
      sub_21E57BB8C();

      sub_21E57B6AC();
      v16 = sub_21E57BBCC();
      v17 = ~(-1 << *(a2 + 32));
      do
      {
        v18 = v16 & v17;
        if (((*(a2 + 56 + (((v16 & v17) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v16 & v17)) & 1) == 0)
        {

          return 0;
        }

        v19 = (*(a2 + 48) + 16 * v18);
        if (*v19 == v14 && v19[1] == v13)
        {
          break;
        }

        v21 = sub_21E57BB3C();
        v16 = v18 + 1;
      }

      while ((v21 & 1) == 0);

      result = v22;
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v10 = v3;
  while (1)
  {
    v3 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v11 = *(v4 + 8 * v3);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v7 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_21E546704(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[12] = a1;
  v3[13] = a3;
  v5 = *(*(sub_21E57B03C() - 8) + 64) + 15;
  v3[14] = swift_task_alloc();
  v6 = sub_21E57B06C();
  v3[15] = v6;
  v7 = *(v6 - 8);
  v3[16] = v7;
  v8 = *(v7 + 64) + 15;
  v3[17] = swift_task_alloc();
  v3[18] = swift_task_alloc();
  v9 = sub_21E57B08C();
  v3[19] = v9;
  v10 = *(v9 - 8);
  v3[20] = v10;
  v11 = *(v10 + 64) + 15;
  v3[21] = swift_task_alloc();
  v12 = sub_21E57B09C();
  v3[22] = v12;
  v13 = *(v12 - 8);
  v3[23] = v13;
  v14 = *(v13 + 64) + 15;
  v3[24] = swift_task_alloc();
  v15 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC88F8, &unk_21E57C470) - 8) + 64) + 15;
  v3[25] = swift_task_alloc();
  v16 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC8900, &unk_21E57C620) - 8) + 64) + 15;
  v3[26] = swift_task_alloc();
  v17 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC88D8, &unk_21E57D3B0) - 8) + 64) + 15;
  v3[27] = swift_task_alloc();
  v18 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC8908, &qword_21E57C480) - 8) + 64) + 15;
  v3[28] = swift_task_alloc();
  v19 = sub_21E57B3DC();
  v3[29] = v19;
  v20 = *(v19 - 8);
  v3[30] = v20;
  v21 = *(v20 + 64) + 15;
  v3[31] = swift_task_alloc();
  v22 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC89E0, &unk_21E57D3C0) - 8) + 64) + 15;
  v3[32] = swift_task_alloc();
  v23 = sub_21E57B23C();
  v3[33] = v23;
  v24 = *(v23 - 8);
  v3[34] = v24;
  v25 = *(v24 + 64) + 15;
  v3[35] = swift_task_alloc();
  v3[36] = swift_task_alloc();
  v26 = sub_21E57AFDC();
  v3[37] = v26;
  v27 = *(v26 - 8);
  v3[38] = v27;
  v28 = *(v27 + 64) + 15;
  v3[39] = swift_task_alloc();
  v29 = sub_21E57AF9C();
  v3[40] = v29;
  v30 = *(v29 - 8);
  v3[41] = v30;
  v31 = *(v30 + 64) + 15;
  v3[42] = swift_task_alloc();
  v32 = sub_21E57B5EC();
  v3[43] = v32;
  v33 = *(v32 - 8);
  v3[44] = v33;
  v34 = *(v33 + 64) + 15;
  v3[45] = swift_task_alloc();
  v35 = type metadata accessor for DefaultEligibilityCriteria();
  v3[46] = v35;
  v3[5] = v35;
  v3[6] = &off_282F92F38;
  v3[2] = a2;

  return MEMORY[0x2822009F8](sub_21E546BD0);
}

uint64_t sub_21E546BD0()
{
  v1 = v0[45];
  v2 = v0[12];
  sub_21E57B5BC();

  v3 = sub_21E57B5DC();
  v4 = sub_21E57B85C();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = OUTLINED_FUNCTION_50();
    OUTLINED_FUNCTION_23_0(v5, 3.852e-34);
    OUTLINED_FUNCTION_44(&dword_21E527000, v6, v7, "AppIntentTranscriptSource: Getting Suggestion results for %ld eligible transcript action records");
    OUTLINED_FUNCTION_39();
  }

  else
  {
    v8 = v0[12];
  }

  v9 = v0[12];
  (*(v0[44] + 8))(v0[45], v0[43]);
  v10 = *(v9 + 16);
  if (v10)
  {
    v11 = v0[23];
    v46 = v0[24];
    v12 = v0[20];
    v44 = *MEMORY[0x277D60948];
    v43 = (v11 + 104);
    v42 = (v11 + 16);
    v41 = *MEMORY[0x277D60920];
    v40 = (v12 + 104);
    v39 = (v0[16] + 16);
    v38 = (v12 + 8);
    v45 = v0[16];
    v37 = (v11 + 8);
    v13 = (v0[12] + 48);
    v14 = MEMORY[0x277D84F90];
    do
    {
      v52 = v10;
      v53 = v14;
      v15 = v0[24];
      v16 = v0[21];
      v17 = v0[22];
      v18 = v0[18];
      v47 = v0[19];
      v48 = v0[17];
      v19 = v0[14];
      v50 = v0[15];
      v20 = *(v13 - 2);
      v21 = *(v13 - 1);
      v22 = *v13;

      v51 = v22;
      *v15 = [v51 resolvedAction];
      *(v46 + 8) = v20;
      *(v46 + 16) = v21;
      (*v43)(v15, v44, v17);
      (*v42)(v16, v15, v17);
      (*v40)(v16, v41, v47);

      sub_21E57B07C();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC8980, &qword_21E57C500);
      sub_21E57B62C();
      v23 = v53;
      sub_21E57B05C();
      (*v39)(v48, v18, v50);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_21E5438E4(0, *(v53 + 16) + 1, 1, v53);
        v23 = v32;
      }

      v25 = *(v23 + 16);
      v24 = *(v23 + 24);
      if (v25 >= v24 >> 1)
      {
        sub_21E5438E4(v24 > 1, v25 + 1, 1, v23);
        v54 = v33;
      }

      else
      {
        v54 = v23;
      }

      v26 = v0[24];
      v28 = v0[21];
      v27 = v0[22];
      v30 = v0[18];
      v29 = v0[19];
      v49 = v0[17];
      v31 = v0[15];

      (*(v45 + 8))(v30, v31);
      (*v38)(v28, v29);
      (*v37)(v26, v27);
      v14 = v54;
      *(v54 + 16) = v25 + 1;
      (*(v45 + 32))(v54 + ((*(v45 + 80) + 32) & ~*(v45 + 80)) + *(v45 + 72) * v25, v49, v31);
      v13 += 3;
      v10 = v52 - 1;
    }

    while (v52 != 1);
  }

  else
  {
    v14 = MEMORY[0x277D84F90];
  }

  v0[47] = v14;
  v34 = *__swift_project_boxed_opaque_existential_1((v0[13] + OBJC_IVAR____TtC16SiriAutoComplete25AppIntentTranscriptSource_suggestionsForIntentProvider), *(v0[13] + OBJC_IVAR____TtC16SiriAutoComplete25AppIntentTranscriptSource_suggestionsForIntentProvider + 24));
  v35 = swift_task_alloc();
  v0[48] = v35;
  *v35 = v0;
  v35[1] = sub_21E547028;

  return sub_21E5615B8();
}

uint64_t sub_21E547028()
{
  v1 = *v0;
  OUTLINED_FUNCTION_10_0();
  *v3 = v2;
  v5 = *(v4 + 384);
  *v3 = *v0;
  *(v2 + 392) = v6;

  return MEMORY[0x2822009F8](sub_21E547124);
}

uint64_t sub_21E547124()
{
  v1 = v0[49];
  if (!v1)
  {
    goto LABEL_17;
  }

  v2 = *(v1 + 16);
  if (!v2)
  {
    v62 = v0[49];

LABEL_17:
    v63 = v0[47];

    sub_21E57B4AC();
    v98 = sub_21E57B62C();
    goto LABEL_18;
  }

  v3 = v0[41];
  v4 = v0[38];
  v5 = v0[34];
  v6 = v0[30];
  v86 = v0[13];
  v82 = sub_21E57B4AC();
  v7 = sub_21E57B62C();
  v8 = *(v3 + 16);
  v3 += 16;
  v94 = v8;
  v85 = OBJC_IVAR____TtC16SiriAutoComplete25AppIntentTranscriptSource_histogram;
  v9 = v1 + ((*(v3 + 64) + 32) & ~*(v3 + 64));
  v92 = *(v3 + 56);
  v103 = (v4 + 8);
  v84 = (v5 + 8);
  v10 = (v3 - 8);
  v81 = *MEMORY[0x277D55858];
  v80 = (v6 + 104);
  v83 = (v3 - 8);
  do
  {
    v11 = v7;
    v12 = v10;
    v13 = v0[46];
    v15 = v0[39];
    v14 = v0[40];
    v16 = v0[37];
    v105 = v9;
    v94(v0[42]);
    sub_21E57AF5C();
    v17 = sub_21E57AFAC();
    v19 = v18;
    v99 = *v103;
    (*v103)(v15, v16);
    v20 = *__swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
    v0[10] = v13;
    v0[11] = &off_282F92F38;
    v0[7] = v20;
    v21 = v13;
    v22 = v19;
    v23 = *__swift_project_boxed_opaque_existential_1(v0 + 7, v21);

    v24 = sub_21E54A0B4(v17, v22);
    v25 = v0[42];
    if (v24)
    {
      v10 = v12;
      (*v12)(v0[42], v0[40]);

      __swift_destroy_boxed_opaque_existential_0Tm(v0 + 7);
      v7 = v11;
    }

    else
    {
      v91 = v2;
      v96 = v11;
      v27 = v0[35];
      v26 = v0[36];
      v28 = v22;
      v29 = v0[32];
      v30 = v0[33];
      __swift_destroy_boxed_opaque_existential_0Tm(v0 + 7);
      v31 = *(v86 + v85);

      sub_21E542680(v17, v28, 1.0);

      sub_21E57AF6C();
      sub_21E57B22C();
      v32 = *v84;
      (*v84)(v26, v30);
      sub_21E57AF6C();
      sub_21E57B20C();
      v32(v27, v30);
      v33 = sub_21E57B0CC();
      EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v29, 1, v33);
      v35 = v0[32];
      if (EnumTagSinglePayload == 1)
      {
        sub_21E5350C0(v0[32], &qword_27CEC89E0, &unk_21E57D3C0);
      }

      else
      {
        sub_21E57B0BC();
        (*(*(v33 - 8) + 8))(v35, v33);
      }

      v7 = v96;
      v10 = v83;
      if (*(v96 + 16) && (, sub_21E52F7C4(), v42 = v41, , (v42 & 1) != 0))
      {
        (*v83)(v0[42], v0[40]);
      }

      else
      {
        v90 = v0[42];
        v43 = v0[39];
        v97 = v0[40];
        v44 = v0[28];
        v89 = v0[31];
        v45 = v0[26];
        v46 = v0[27];
        v87 = v0[37];
        v88 = v0[25];
        (*v80)(v89, v81, v0[29], v36, v37, v38, v39, v40, v75, v76, v77, v78, v79);
        v47 = sub_21E57B1FC();
        OUTLINED_FUNCTION_11_0(v44, v48, v49, v47);
        v50 = sub_21E57AC4C();
        OUTLINED_FUNCTION_11_0(v46, v51, v52, v50);
        v53 = sub_21E57B5FC();
        OUTLINED_FUNCTION_11_0(v45, v54, v55, v53);
        sub_21E57AF5C();
        sub_21E57AFCC();
        v99(v43, v87);
        v56 = sub_21E57B04C();
        OUTLINED_FUNCTION_11_0(v88, v57, v58, v56);
        sub_21E57B5AC();
        sub_21E57B59C();
        v59 = *(v82 + 48);
        v60 = *(v82 + 52);
        swift_allocObject();

        v77 = 0;
        v78 = 0;
        v79 = 0;
        v75 = v89;
        v76 = v44;
        sub_21E57B44C();

        swift_isUniquelyReferenced_nonNull_native();
        sub_21E545E44();

        (*v83)(v90, v97);
      }

      v2 = v91;
    }

    v9 = v105 + v92;
    --v2;
  }

  while (v2);
  v61 = v0[47];

  v98 = v7;
LABEL_18:
  v64 = v0[45];
  v65 = v0[42];
  v66 = v0[39];
  v68 = v0[35];
  v67 = v0[36];
  v69 = v0[31];
  v70 = v0[32];
  v72 = v0[27];
  v71 = v0[28];
  v93 = v0[26];
  v95 = v0[25];
  v100 = v0[24];
  v101 = v0[21];
  v102 = v0[18];
  v104 = v0[17];
  v106 = v0[14];
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);

  OUTLINED_FUNCTION_9_0();

  return v73(v98);
}

uint64_t sub_21E5477F0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, uint64_t a7)
{
  v88 = a7;
  v89 = a4;
  v11 = sub_21E57B5EC();
  v12 = *(v11 - 8);
  v90 = v11;
  v91 = v12;
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v85 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v85 - v18;
  v20 = MEMORY[0x28223BE20](v17);
  v22 = &v85 - v21;
  v23 = MEMORY[0x28223BE20](v20);
  v25 = &v85 - v24;
  MEMORY[0x28223BE20](v23);
  v27 = &v85 - v26;
  v28 = type metadata accessor for DefaultEligibilityCriteria();
  v94[3] = v28;
  v94[4] = &off_282F92F38;
  v94[0] = a2;

  v29 = [a1 eventBody];
  if (v29)
  {
    v30 = v29;
    v86 = v22;
    v87 = a6;
    v31 = [v29 action];
    v32 = [v31 identifier];

    v33 = sub_21E57B67C();
    v35 = v34;

    v36 = sub_21E5463A8(v30, &selRef_bundleIdentifier);
    if (v37)
    {
      v38 = v36;
      v39 = v37;
      if (sub_21E544080(v33, v35, v36, v37, a3) & 1) != 0 || (sub_21E544080(v33, v35, v38, v39, v89))
      {
        v89 = v33;
        v40 = *__swift_project_boxed_opaque_existential_1(v94, v28);
        v41 = v38;
        v42 = sub_21E54A03C();
        v43 = [v30 source];
        if ((v42 & 1) == 0 && v43 != 3)
        {
          sub_21E57B5BC();

          v44 = sub_21E57B5DC();
          v45 = sub_21E57B85C();

          if (os_log_type_enabled(v44, v45))
          {
            v46 = swift_slowAlloc();
            v47 = swift_slowAlloc();
            v92 = v47;
            *v46 = 136315394;
            v48 = sub_21E5553D8(v38, v39, &v92);

            *(v46 + 4) = v48;
            *(v46 + 12) = 2080;
            v49 = sub_21E5553D8(v89, v35, &v92);

            *(v46 + 14) = v49;
            _os_log_impl(&dword_21E527000, v44, v45, "AppIntentTranscript %s.%s: Not eligible for autocomplete. Correlated app is not installed.", v46, 0x16u);
            swift_arrayDestroy();
            MEMORY[0x223D5D740](v47, -1, -1);
            MEMORY[0x223D5D740](v46, -1, -1);
          }

          else
          {
          }

          (*(v91 + 8))(v19, v90);
          return __swift_destroy_boxed_opaque_existential_0Tm(v94);
        }

        sub_21E5448A8(v30);
        if (v58)
        {
          v59 = sub_21E5463A8(v30, &selRef_clientLabel);
          if (v60)
          {
            if (v59 == 0x74756374726F6853 && v60 == 0xE900000000000073)
            {
            }

            else
            {
              v62 = sub_21E57BB3C();

              if ((v62 & 1) == 0)
              {
                goto LABEL_21;
              }
            }

            v92 = v38;
            v93 = v39;

            MEMORY[0x223D5CBD0](95, 0xE100000000000000);

            MEMORY[0x223D5CBD0](v89, v35);

            v78 = v92;
            v79 = v93;
            v80 = *(v88 + OBJC_IVAR____TtC16SiriAutoComplete25AppIntentTranscriptSource_histogram);

            sub_21E542680(v78, v79, 1.0);

            goto LABEL_37;
          }

LABEL_21:

LABEL_37:
          v81 = v87;
          sub_21E545A54(sub_21E5439E8);
          v82 = *(*v81 + 16);
          sub_21E52F39C(v82);
          v83 = *v81;
          *(v83 + 16) = v82 + 1;
          v84 = (v83 + 24 * v82);
          v84[4] = v38;
          v84[5] = v39;
          v84[6] = v30;
          *v81 = v83;
          return __swift_destroy_boxed_opaque_existential_0Tm(v94);
        }

        v70 = v86;
        sub_21E57B5BC();

        v71 = sub_21E57B5DC();
        v72 = sub_21E57B85C();

        if (os_log_type_enabled(v71, v72))
        {
          v73 = swift_slowAlloc();
          v74 = swift_slowAlloc();
          v92 = v74;
          *v73 = 136315394;
          v75 = sub_21E5553D8(v41, v39, &v92);

          *(v73 + 4) = v75;
          *(v73 + 12) = 2080;
          v76 = sub_21E5553D8(v89, v35, &v92);

          *(v73 + 14) = v76;
          _os_log_impl(&dword_21E527000, v71, v72, "AppIntentTranscript %s.%s: Not eligible for autocomplete. Record does not have eligible source", v73, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x223D5D740](v74, -1, -1);
          MEMORY[0x223D5D740](v73, -1, -1);
        }

        else
        {
        }

        (*(v91 + 8))(v70, v90);
      }

      else
      {
        v63 = v33;
        sub_21E57B5BC();

        v64 = sub_21E57B5DC();
        v65 = sub_21E57B85C();

        if (os_log_type_enabled(v64, v65))
        {
          v66 = swift_slowAlloc();
          v67 = swift_slowAlloc();
          v92 = v67;
          *v66 = 136315394;
          v68 = sub_21E5553D8(v38, v39, &v92);

          *(v66 + 4) = v68;
          *(v66 + 12) = 2080;
          v69 = sub_21E5553D8(v63, v35, &v92);

          *(v66 + 14) = v69;
          _os_log_impl(&dword_21E527000, v64, v65, "AppIntentTranscript %s.%s: not in our allowlist. Skipping processing.", v66, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x223D5D740](v67, -1, -1);
          MEMORY[0x223D5D740](v66, -1, -1);
        }

        else
        {
        }

        (*(v91 + 8))(v16, v90);
      }
    }

    else
    {
      sub_21E57B5BC();

      v53 = sub_21E57B5DC();
      v54 = sub_21E57B86C();

      if (os_log_type_enabled(v53, v54))
      {
        v55 = swift_slowAlloc();
        v56 = swift_slowAlloc();
        v92 = v56;
        *v55 = 136315138;
        v57 = sub_21E5553D8(v33, v35, &v92);

        *(v55 + 4) = v57;
        _os_log_impl(&dword_21E527000, v53, v54, "AppIntentTranscript %s: nil bundleId for lnTranscriptActionRecord. Skipping processing.", v55, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v56);
        MEMORY[0x223D5D740](v56, -1, -1);
        MEMORY[0x223D5D740](v55, -1, -1);
      }

      else
      {
      }

      (*(v91 + 8))(v25, v90);
    }
  }

  else
  {
    sub_21E57B5BC();
    v50 = sub_21E57B5DC();
    v51 = sub_21E57B86C();
    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      *v52 = 0;
      _os_log_impl(&dword_21E527000, v50, v51, "AppIntentTranscript: nil eventBody for lnTranscriptActionRecord", v52, 2u);
      MEMORY[0x223D5D740](v52, -1, -1);
    }

    (*(v91 + 8))(v27, v90);
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(v94);
}

uint64_t sub_21E548158(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v11 = *MEMORY[0x277D85DE8];
  v4[32] = a4;
  v4[33] = *a4;
  v6 = sub_21E57B5EC();
  v4[34] = v6;
  v7 = *(v6 - 8);
  v4[35] = v7;
  v8 = *(v7 + 64) + 15;
  v4[36] = swift_task_alloc();
  v4[37] = swift_task_alloc();
  v4[38] = swift_task_alloc();
  v4[17] = type metadata accessor for DefaultEligibilityCriteria();
  v4[18] = &off_282F92F38;
  v4[14] = a1;

  v9 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_21E5482B4);
}

uint64_t sub_21E5482B4()
{
  v74 = v0;
  v73[1] = *MEMORY[0x277D85DE8];
  v1 = v0[38];
  sub_21E57B5BC();
  v2 = sub_21E57B5DC();
  v3 = sub_21E57B84C();
  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[38];
  v6 = v0[34];
  v7 = v0[35];
  if (v4)
  {
    v8 = v0[33];
    v9 = OUTLINED_FUNCTION_50();
    v10 = swift_slowAlloc();
    v73[0] = v10;
    *v9 = 136315138;
    v11 = sub_21E57BC2C();
    v13 = sub_21E5553D8(v11, v12, v73);

    *(v9 + 4) = v13;
    _os_log_impl(&dword_21E527000, v2, v3, "%s: Fetching phrases", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v10);
    OUTLINED_FUNCTION_39();
    OUTLINED_FUNCTION_39();
  }

  v14 = *(v7 + 8);
  v14(v5, v6);
  v0[39] = v14;
  v15 = v0[33];
  sub_21E5441CC();
  if (v16)
  {
    v19 = v16;
    v20 = v18;
    v70 = v17;
    v21 = v0[32];
    v22 = swift_allocObject();
    v23 = MEMORY[0x277D84F90];
    v0[40] = v22;
    *(v22 + 16) = v23;
    v72 = (v22 + 16);
    v24 = [objc_allocWithZone(MEMORY[0x277D23CC0]) init];
    v25 = sub_21E57B66C();
    v26 = *(v21 + OBJC_IVAR____TtC16SiriAutoComplete25AppIntentTranscriptSource_maxNumTrancriptRecords);
    v27 = sub_21E57B83C();
    v0[30] = 0;
    v28 = [v24 transcriptPublisherWithStreamName:v25 fromDate:0 toDate:0 maxEvents:v27 reversed:1 error:v0 + 30];

    v29 = v0[30];
    if (v28)
    {
      v30 = v20;
      v31 = v0[32];
      v0[6] = sub_21E544610;
      v0[7] = 0;
      v0[2] = MEMORY[0x277D85DD0];
      v0[3] = 1107296256;
      v0[4] = sub_21E529A78;
      v0[5] = &block_descriptor_0;
      v32 = _Block_copy(v0 + 2);
      sub_21E534F3C((v0 + 14), (v0 + 19));
      v33 = swift_allocObject();
      v33[2] = v31;
      sub_21E529804((v0 + 19), (v33 + 3));
      v33[8] = v19;
      v33[9] = v70;
      v33[10] = v30;
      v33[11] = v22;
      v0[12] = sub_21E548BC4;
      v0[13] = v33;
      v0[8] = MEMORY[0x277D85DD0];
      v0[9] = 1107296256;
      v0[10] = sub_21E529A78;
      v0[11] = &block_descriptor_18;
      v34 = _Block_copy(v0 + 8);
      v35 = v0[13];
      v36 = v29;

      _Block_release(v34);
      _Block_release(v32);
    }

    else
    {
      v44 = v0[37];
      v45 = v29;

      v46 = sub_21E57ABAC();

      swift_willThrow();
      sub_21E57B5BC();
      v47 = v46;
      v48 = sub_21E57B5DC();
      v49 = sub_21E57B86C();

      v50 = os_log_type_enabled(v48, v49);
      v51 = v0[37];
      v52 = v0[34];
      v53 = v0[35];
      if (v50)
      {
        v54 = OUTLINED_FUNCTION_50();
        v55 = swift_slowAlloc();
        v73[0] = v55;
        *v54 = 136315138;
        swift_getErrorValue();
        v71 = v51;
        v57 = v0[27];
        v56 = v0[28];
        v58 = v0[29];
        v59 = sub_21E57BB7C();
        v69 = v52;
        v61 = sub_21E5553D8(v59, v60, v73);

        *(v54 + 4) = v61;
        _os_log_impl(&dword_21E527000, v48, v49, "Unexpected error while attempting to read the App Intent Transcript: %s", v54, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v55);
        OUTLINED_FUNCTION_39();
        OUTLINED_FUNCTION_39();

        v63 = v69;
        v62 = v71;
      }

      else
      {

        v62 = v51;
        v63 = v52;
      }

      v14(v62, v63);
    }

    swift_beginAccess();
    v64 = *v72;
    v0[41] = *v72;
    v65 = *__swift_project_boxed_opaque_existential_1(v0 + 14, v0[17]);

    v66 = swift_task_alloc();
    v0[42] = v66;
    *v66 = v0;
    v66[1] = sub_21E5488F0;
    v67 = v0[32];
    v68 = *MEMORY[0x277D85DE8];

    return sub_21E546704(v64, v65, v67);
  }

  else
  {
    v37 = v0[37];
    v38 = v0[38];
    v39 = v0[36];
    __swift_destroy_boxed_opaque_existential_0Tm(v0 + 14);

    OUTLINED_FUNCTION_9_0();
    v41 = *MEMORY[0x277D85DE8];
    v42 = MEMORY[0x277D84F90];

    return v40(v42);
  }
}

uint64_t sub_21E5488F0()
{
  v13 = *MEMORY[0x277D85DE8];
  v1 = *v0;
  OUTLINED_FUNCTION_10_0();
  *v3 = v2;
  v5 = *(v4 + 336);
  v6 = *(v4 + 328);
  v7 = *v0;
  OUTLINED_FUNCTION_10_0();
  *v8 = v7;
  *(v10 + 344) = v9;

  v11 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_21E548A34);
}

uint64_t sub_21E548A34()
{
  v20 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 344);
  v2 = *(v0 + 288);
  sub_21E57B5BC();

  v3 = sub_21E57B5DC();
  v4 = sub_21E57B84C();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = OUTLINED_FUNCTION_50();
    OUTLINED_FUNCTION_23_0(v5, 3.852e-34);
    OUTLINED_FUNCTION_44(&dword_21E527000, v6, v7, "AppIntentTranscriptSource: created %ld phrases");
    OUTLINED_FUNCTION_39();
  }

  else
  {
    v8 = *(v0 + 344);
  }

  v9 = *(v0 + 344);
  v10 = *(v0 + 320);
  v11 = *(v0 + 256);
  v12 = *(v0 + 280) + 8;
  (*(v0 + 312))(*(v0 + 288), *(v0 + 272));
  v13 = sub_21E529E80(v9);
  sub_21E544A2C(v13);

  v15 = *(v0 + 296);
  v14 = *(v0 + 304);
  v16 = *(v0 + 288);
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 112));

  OUTLINED_FUNCTION_9_0();
  v18 = *MEMORY[0x277D85DE8];

  return v17(v13);
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_21E548BD8()
{
  result = qword_2812257B8;
  if (!qword_2812257B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812257B8);
  }

  return result;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_21E548C40(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 24))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_21E548C80(uint64_t result, int a2, int a3)
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

uint64_t sub_21E548CD0(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 24))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
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

uint64_t sub_21E548D10(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

unint64_t sub_21E548D60()
{
  result = qword_2812257D0;
  if (!qword_2812257D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812257D0);
  }

  return result;
}

unint64_t sub_21E548DB4()
{
  result = qword_281225DF0;
  if (!qword_281225DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281225DF0);
  }

  return result;
}

uint64_t sub_21E548E08(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEC8BB0, &qword_21E57D508);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_21E548E80()
{
  result = qword_27CEC8BC8;
  if (!qword_27CEC8BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEC8BC8);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for AppIntentTranscriptAllowList.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_21E548FC4()
{
  result = qword_281225DF8;
  if (!qword_281225DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281225DF8);
  }

  return result;
}

unint64_t sub_21E54901C()
{
  result = qword_27CEC8BD0;
  if (!qword_27CEC8BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEC8BD0);
  }

  return result;
}

unint64_t sub_21E549074()
{
  result = qword_2812257C0;
  if (!qword_2812257C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812257C0);
  }

  return result;
}

unint64_t sub_21E5490CC()
{
  result = qword_2812257C8;
  if (!qword_2812257C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812257C8);
  }

  return result;
}

unint64_t sub_21E549120()
{
  result = qword_281225E10;
  if (!qword_281225E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281225E10);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for AppIntentInfo.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_21E549254()
{
  result = qword_27CEC8BE8;
  if (!qword_27CEC8BE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEC8BE8);
  }

  return result;
}

unint64_t sub_21E5492AC()
{
  result = qword_281225E00;
  if (!qword_281225E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281225E00);
  }

  return result;
}

unint64_t sub_21E549304()
{
  result = qword_281225E08;
  if (!qword_281225E08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281225E08);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_4_4()
{

  return sub_21E57BAFC();
}

unint64_t OUTLINED_FUNCTION_5_4()
{
  v2 = *v0;

  return sub_21E52F7C4();
}

unint64_t OUTLINED_FUNCTION_6_4(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  *(a5[7] + 8 * result) = a4;
  v6 = a5[2];
  return result;
}

uint64_t OUTLINED_FUNCTION_20_1()
{

  return sub_21E57BA1C();
}

uint64_t OUTLINED_FUNCTION_23_0(uint64_t a1, float a2)
{
  *a1 = a2;
  *(a1 + 4) = *(v2 + 16);
}

uint64_t sub_21E5494B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 8);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_21E5495E4;

  return v13(a1, a2, a3, a4);
}

uint64_t sub_21E5495E4()
{
  OUTLINED_FUNCTION_29();
  v2 = v1;
  v3 = *(*v0 + 16);
  v6 = *v0;

  v4 = *(v6 + 8);

  return v4(v2);
}

uint64_t sub_21E5496DC()
{
  OUTLINED_FUNCTION_29();
  v0[6] = v1;
  v0[7] = v2;
  v3 = sub_21E57B5EC();
  v0[8] = v3;
  v4 = *(v3 - 8);
  v0[9] = v4;
  v5 = *(v4 + 64) + 15;
  v0[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21E549798);
}

uint64_t sub_21E549798()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = swift_task_alloc();
  v0[11] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v4 = *(MEMORY[0x277D85A40] + 4);
  v5 = swift_task_alloc();
  v0[12] = v5;
  *v5 = v0;
  v5[1] = sub_21E549890;
  v6 = MEMORY[0x277D839B0];

  return MEMORY[0x2822008A0](v0 + 14, 0, 0, 0xD000000000000021, 0x800000021E57F650, sub_21E549F54, v3, v6);
}

uint64_t sub_21E549890()
{
  OUTLINED_FUNCTION_29();
  v2 = *v1;
  v3 = *(*v1 + 96);
  v7 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v4 = sub_21E549A0C;
  }

  else
  {
    v5 = *(v2 + 88);

    v4 = sub_21E5499A8;
  }

  return MEMORY[0x2822009F8](v4);
}

uint64_t sub_21E5499A8()
{
  OUTLINED_FUNCTION_29();
  v1 = *(v0 + 112);
  v2 = *(v0 + 80);

  v3 = *(v0 + 8);

  return v3(v1);
}

uint64_t sub_21E549A0C()
{
  v29 = v0;
  v1 = *(v0 + 104);
  v3 = *(v0 + 80);
  v2 = *(v0 + 88);
  v4 = *(v0 + 56);

  sub_21E57B5BC();

  v5 = v1;
  v6 = sub_21E57B5DC();
  v7 = sub_21E57B86C();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = *(v0 + 104);
    v9 = *(v0 + 72);
    v27 = *(v0 + 80);
    v10 = *(v0 + 56);
    v11 = *(v0 + 64);
    v12 = *(v0 + 48);
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v28 = v14;
    *v13 = 136315394;
    *(v13 + 4) = sub_21E5553D8(v12, v10, &v28);
    *(v13 + 12) = 2080;
    swift_getErrorValue();
    v16 = *(v0 + 16);
    v15 = *(v0 + 24);
    v17 = *(v0 + 32);
    v18 = sub_21E57BB7C();
    v20 = sub_21E5553D8(v18, v19, &v28);

    *(v13 + 14) = v20;
    _os_log_impl(&dword_21E527000, v6, v7, "DefaultSiriShortcutsEnablementProvider: Could not determine if App Shortcuts for %s are enabled %s", v13, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x223D5D740](v14, -1, -1);
    MEMORY[0x223D5D740](v13, -1, -1);

    (*(v9 + 8))(v27, v11);
  }

  else
  {
    v22 = *(v0 + 72);
    v21 = *(v0 + 80);
    v23 = *(v0 + 64);

    (*(v22 + 8))(v21, v23);
  }

  v24 = *(v0 + 80);

  v25 = *(v0 + 8);

  return v25(0);
}

void sub_21E549C30(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC8BF0, qword_21E57D8D0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = aBlock - v5;
  v7 = [objc_opt_self() standardClient];
  v8 = sub_21E57B66C();
  (*(v3 + 16))(v6, a1, v2);
  v9 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v10 = swift_allocObject();
  (*(v3 + 32))(v10 + v9, v6, v2);
  aBlock[4] = sub_21E549F5C;
  aBlock[5] = v10;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21E549EA8;
  aBlock[3] = &block_descriptor_1;
  v11 = _Block_copy(aBlock);

  [v7 getSiriAutoShortcutsEnablementForBundleIdentifier:v8 completion:v11];
  _Block_release(v11);
}

uint64_t sub_21E549E24(int a1, id a2)
{
  if (a2)
  {
    v2 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC8BF0, qword_21E57D8D0);
    return sub_21E57B7EC();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC8BF0, qword_21E57D8D0);
    return sub_21E57B7FC();
  }
}

void sub_21E549EA8(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v7 = a3;
  v6(a2, a3);
}

void sub_21E549F54(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  sub_21E549C30(a1);
}

uint64_t sub_21E549F5C(int a1, void *a2)
{
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC8BF0, qword_21E57D8D0) - 8) + 80);

  return sub_21E549E24(a1, a2);
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_21E54A03C()
{
  v1 = __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
  if (*(*(*v1 + 16) + 16))
  {
    v2 = *(*v1 + 16);

    sub_21E52F7C4();
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

BOOL sub_21E54A0B4(uint64_t a1, uint64_t a2)
{
  v5 = sub_21E57B5EC();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v2 + 56);
  if (v10)
  {
    v11 = v10;
    v12 = sub_21E57B66C();
    v13 = [v11 matchesInString:v12 options:0 range:{0, MEMORY[0x223D5CBF0](a1, a2)}];

    sub_21E54A300();
    v14 = sub_21E57B78C();

    v15 = sub_21E5351E4(v14);

    return v15 != 0;
  }

  else
  {
    sub_21E57B5BC();
    v17 = sub_21E57B5DC();
    v18 = sub_21E57B86C();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_21E527000, v17, v18, "Was not able to initialize an NSDataDetector with checking type 'phoneNumber'", v19, 2u);
      MEMORY[0x223D5D740](v19, -1, -1);
    }

    (*(v6 + 8))(v9, v5);
    return 0;
  }
}

uint64_t sub_21E54A294()
{
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));

  return MEMORY[0x2821FE8D8](v0, 64, 7);
}

unint64_t sub_21E54A300()
{
  result = qword_2812254E0;
  if (!qword_2812254E0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2812254E0);
  }

  return result;
}

void sub_21E54A344(uint64_t a1)
{
  v4 = OUTLINED_FUNCTION_97_0(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_21E543BB0(v4, 1);
  v6 = *v2;
  if (!*(v3 + 16))
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  OUTLINED_FUNCTION_233();
  if (v7 != v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  swift_arrayInitWithCopy();

  if (!v1)
  {
LABEL_8:
    *v2 = v6;
    return;
  }

  v8 = *(v6 + 16);
  v5 = __OFADD__(v8, v1);
  v9 = v8 + v1;
  if (!v5)
  {
    *(v6 + 16) = v9;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

uint64_t sub_21E54A3EC(uint64_t a1, uint64_t (*a2)(void), void (*a3)(uint64_t, uint64_t), void (*a4)(uint64_t, void, uint64_t))
{
  v9 = a2();
  v10 = (a2)(*v4);
  v11 = __OFADD__(v10, v9);
  result = v10 + v9;
  if (v11)
  {
    __break(1u);
    goto LABEL_8;
  }

  a3(result, 1);
  v13 = *v4;
  v14 = *v4 & 0xFFFFFFFFFFFFFF8;
  a4(v14 + 8 * *(v14 + 0x10) + 32, (*(v14 + 0x18) >> 1) - *(v14 + 0x10), a1);
  v16 = v15;

  if (v16 < v9)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v16 < 1)
  {
LABEL_6:
    *v4 = v13;
    return result;
  }

  v17 = *(v14 + 16);
  v11 = __OFADD__(v17, v16);
  v18 = v17 + v16;
  if (!v11)
  {
    *(v14 + 16) = v18;
    goto LABEL_6;
  }

LABEL_9:
  __break(1u);
  return result;
}

void sub_21E54A4B4(uint64_t a1)
{
  v4 = OUTLINED_FUNCTION_97_0(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_21E543C5C(v4, 1);
  v6 = *v2;
  if (!*(v3 + 16))
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  OUTLINED_FUNCTION_233();
  if (v7 != v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  swift_arrayInitWithCopy();

  if (!v1)
  {
LABEL_8:
    *v2 = v6;
    return;
  }

  v8 = *(v6 + 16);
  v5 = __OFADD__(v8, v1);
  v9 = v8 + v1;
  if (!v5)
  {
    *(v6 + 16) = v9;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

uint64_t sub_21E54A558(uint64_t a1)
{
  result = OUTLINED_FUNCTION_97_0(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_21E543CEC();
  v6 = *v2;
  if (!*(v3 + 16))
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  v7 = (*(v6 + 24) >> 1) - *(v6 + 16);
  result = sub_21E57AF9C();
  v8 = *(result - 8);
  if (v7 < v1)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v9 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v10 = *(v8 + 72);
  swift_arrayInitWithCopy();

  if (!v1)
  {
LABEL_8:
    *v2 = v6;
    return result;
  }

  v11 = *(v6 + 16);
  v5 = __OFADD__(v11, v1);
  v12 = v11 + v1;
  if (!v5)
  {
    *(v6 + 16) = v12;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_21E54A648@<X0>(uint64_t *a1@<X8>)
{
  swift_beginAccess();
  sub_21E54AD24(v1 + 192, &v4);
  if (v5)
  {
    return sub_21E529804(&v4, a1);
  }

  sub_21E53FF8C(&v4, &qword_27CEC8BF8, &qword_21E57D9A0);
  sub_21E54A700(v1, a1);
  sub_21E534F3C(a1, &v4);
  swift_beginAccess();
  sub_21E55BDFC(&v4, v1 + 192);
  return swift_endAccess();
}

uint64_t sub_21E54A700@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  type metadata accessor for DefaultInstalledAppProvider();
  v4 = swift_allocObject();
  *(v4 + 16) = sub_21E55D538();
  sub_21E534F3C(a1 + 72, v8);

  v6 = sub_21E555E9C(v5, v8);
  a2[3] = type metadata accessor for DefaultEligibilityCriteria();
  a2[4] = &off_282F92F38;

  *a2 = v6;
  return result;
}

uint64_t sub_21E54A798()
{
  result = sub_21E57B2BC();
  qword_281226A08 = result;
  return result;
}

uint64_t sub_21E54A7B8()
{
  result = sub_21E54A7DC();
  qword_281226920 = result;
  *algn_281226928 = v1;
  return result;
}

uint64_t sub_21E54A7DC()
{
  v0 = sub_21E57B0EC();
  if (v1)
  {
    v2 = v0;
  }

  else
  {
    v2 = 0;
  }

  v4 = v2;

  MEMORY[0x223D5CBD0](46, 0xE100000000000000);

  MEMORY[0x223D5CBD0](49, 0xE100000000000000);

  return v4;
}

uint64_t static SiriAutoCompleteIndexBuilder.currentOSBuildVersion.getter()
{
  if (qword_281226918 != -1)
  {
    OUTLINED_FUNCTION_130();
  }

  v0 = qword_281226920;

  return v0;
}

void sub_21E54A8BC()
{
  dword_281226A40 = 0;
  qword_281226A48 = 0;
  qword_281226A50 = 0xE000000000000000;
}

uint64_t SiriAutoCompleteIndexBuilder.__allocating_init()()
{
  v0 = sub_21E57B28C();
  v1 = OUTLINED_FUNCTION_0(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_14();
  v8 = v7 - v6;
  sub_21E57B27C();
  v9 = sub_21E57B2AC();
  v10 = sub_21E57B29C();
  v11 = sub_21E57B1CC();
  v37 = v12;
  v38 = v11;
  v13 = sub_21E57B56C();
  v14 = sub_21E57B55C();
  v15 = type metadata accessor for DefaultAutoCompleteSourceRunnerProvider();
  memset(v47, 0, sizeof(v47));
  v48 = 0;
  v16 = swift_allocObject();
  v46[3] = v9;
  v46[4] = MEMORY[0x277D55800];
  v46[0] = v10;
  v17 = v0;
  v45[3] = v0;
  v45[4] = MEMORY[0x277D557F8];
  boxed_opaque_existential_3 = __swift_allocate_boxed_opaque_existential_3(v45);
  (*(v3 + 16))(boxed_opaque_existential_3, v8, v0);
  v44[3] = v13;
  v44[4] = MEMORY[0x277D55890];
  v44[0] = v14;
  v43[3] = v15;
  v43[4] = &off_282F930C8;
  v43[0] = v16;
  type metadata accessor for SiriAutoCompleteIndexBuilder();
  v19 = swift_allocObject();
  v20 = __swift_mutable_project_boxed_opaque_existential_1(v43, v15);
  v21 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_14();
  v24 = (v23 - v22);
  (*(v25 + 16))(v23 - v22);
  v26 = *v24;
  v42[3] = v15;
  v42[4] = &off_282F930C8;
  v42[0] = v26;
  *(v19 + 192) = 0u;
  *(v19 + 208) = 0u;
  *(v19 + 224) = 0;
  sub_21E534F3C(v46, v19 + 16);
  *(v19 + 56) = v38;
  *(v19 + 64) = v37;
  sub_21E534F3C(v45, v19 + 72);
  sub_21E534F3C(v44, v19 + 112);
  *(v19 + 232) = 0x4056800000000000;
  sub_21E534F3C(v42, v19 + 152);
  sub_21E54AD24(v47, &v39);
  if (v40)
  {
    sub_21E529804(&v39, v41);
    sub_21E534F3C(v41, &v39);
    v27 = v40;
    v28 = __swift_mutable_project_boxed_opaque_existential_1(&v39, v40);
    v29 = *(*(v27 - 8) + 64);
    MEMORY[0x28223BE20](v28);
    OUTLINED_FUNCTION_14();
    v32 = (v31 - v30);
    (*(v33 + 16))(v31 - v30);
    sub_21E555FB8(*v32, v19);
    __swift_destroy_boxed_opaque_existential_1Tm(v41);
    sub_21E53FF8C(v47, &qword_27CEC8BF8, &qword_21E57D9A0);
    (*(v3 + 8))(v8, v17);
    v34 = OUTLINED_FUNCTION_213();
    __swift_destroy_boxed_opaque_existential_1Tm(v34);
  }

  else
  {
    sub_21E53FF8C(v47, &qword_27CEC8BF8, &qword_21E57D9A0);
    (*(v3 + 8))(v8, v0);
    v35 = OUTLINED_FUNCTION_213();
    sub_21E53FF8C(v35, &qword_27CEC8BF8, &qword_21E57D9A0);
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v43);
  return v19;
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

uint64_t sub_21E54AD24(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC8BF8, &qword_21E57D9A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21E54AD94()
{
  OUTLINED_FUNCTION_29();
  v1[12] = v2;
  v1[13] = v0;
  v1[14] = *v0;
  v3 = sub_21E57B53C();
  v1[15] = v3;
  OUTLINED_FUNCTION_6(v3);
  v1[16] = v4;
  v6 = *(v5 + 64);
  v1[17] = OUTLINED_FUNCTION_159();
  v7 = sub_21E57B5EC();
  v1[18] = v7;
  OUTLINED_FUNCTION_6(v7);
  v1[19] = v8;
  v10 = *(v9 + 64);
  v1[20] = OUTLINED_FUNCTION_187();
  v1[21] = swift_task_alloc();
  v11 = OUTLINED_FUNCTION_10();

  return MEMORY[0x2822009F8](v11);
}

uint64_t sub_21E54AEB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t *a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_190();
  a23 = v26;
  a24 = v27;
  OUTLINED_FUNCTION_225();
  a22 = v24;
  v28 = v24[13];
  v29 = v28[12];
  v30 = v28[13];
  OUTLINED_FUNCTION_38_0(v28 + 9);
  if (sub_21E57B2CC())
  {
    v31 = v24[13];
    v32 = v31[17];
    v33 = v31[18];
    OUTLINED_FUNCTION_38_0(v31 + 14);
    v34 = sub_21E57B4BC();
    v36 = v35;
    v24[22] = v35;
    if (qword_281226930 != -1)
    {
      OUTLINED_FUNCTION_23_1();
    }

    v37 = v24[20];
    v38 = v24[12];
    os_unfair_lock_lock(&dword_281226A40);

    qword_281226A48 = v34;
    qword_281226A50 = v36;

    os_unfair_lock_unlock(&dword_281226A40);
    sub_21E57B5BC();

    v39 = sub_21E57B5DC();
    v40 = sub_21E57B85C();

    v41 = os_log_type_enabled(v39, v40);
    v42 = v24[19];
    v43 = v24[18];
    if (v41)
    {
      v44 = v24[14];
      a11 = v24[20];
      v45 = v24[12];
      v46 = OUTLINED_FUNCTION_57();
      a13 = OUTLINED_FUNCTION_206();
      *v46 = 136315394;
      v47 = sub_21E57BC2C();
      a10 = v43;
      v49 = sub_21E5553D8(v47, v48, &a13);

      *(v46 + 4) = v49;
      *(v46 + 12) = 2080;
      v50 = MEMORY[0x223D5CC90](v45, MEMORY[0x277D837D0]);
      sub_21E5553D8(v50, v51, &a13);
      OUTLINED_FUNCTION_93_0();

      *(v46 + 14) = v49;
      OUTLINED_FUNCTION_230();
      _os_log_impl(v52, v53, v54, v55, v56, 0x16u);
      OUTLINED_FUNCTION_170();
      OUTLINED_FUNCTION_31();
      OUTLINED_FUNCTION_39();

      (*(v42 + 8))(a11, a10);
    }

    else
    {

      v87 = *(v42 + 8);
      v88 = OUTLINED_FUNCTION_200();
      v90(v88, v89);
    }

    v91 = v24[12];
    v92 = v24[13];
    type metadata accessor for AppLaunchSource();
    sub_21E54A648(v24 + 2);
    v93 = *__swift_project_boxed_opaque_existential_1(v24 + 2, v24[5]);
    OUTLINED_FUNCTION_224();
    v24[23] = sub_21E55864C(v94, v95, v96, v97, v98);
    __swift_destroy_boxed_opaque_existential_1Tm(v24 + 2);
    type metadata accessor for AppShortcutsSource();
    sub_21E54A648(v24 + 7);
    OUTLINED_FUNCTION_242(v24 + 7, v24[10]);
    OUTLINED_FUNCTION_11(&dword_21E57D9B0);
    v110 = v99;
    v100 = swift_task_alloc();
    v24[24] = v100;
    *v100 = v24;
    v100[1] = sub_21E54B268;
    v101 = v24[12];
    OUTLINED_FUNCTION_120();

    return v107(v102, v103, v104, v105, v106, v107, v108, v109, a9, a10, a11, v110, a13, a14, a15, a16);
  }

  else
  {
    OUTLINED_FUNCTION_182();
    v57 = sub_21E57B5DC();
    v58 = sub_21E57B85C();
    v59 = OUTLINED_FUNCTION_75_0(v58);
    v60 = v24[21];
    v61 = v24[18];
    v62 = v24[19];
    if (v59)
    {
      v63 = v24[14];
      v64 = OUTLINED_FUNCTION_50();
      a13 = OUTLINED_FUNCTION_43();
      v65 = OUTLINED_FUNCTION_149(4.8149e-34);
      sub_21E5553D8(v65, v66, &a13);
      OUTLINED_FUNCTION_221();
      *(v64 + 4) = v25;
      OUTLINED_FUNCTION_12();
      _os_log_impl(v67, v68, v69, v70, v71, 0xCu);
      OUTLINED_FUNCTION_41_0();
      OUTLINED_FUNCTION_30();
    }

    v72 = *(v62 + 8);
    v73 = OUTLINED_FUNCTION_62_0();
    v74(v73);
    v76 = v24[20];
    v75 = v24[21];
    v77 = v24[17];

    OUTLINED_FUNCTION_47_0();
    OUTLINED_FUNCTION_120();

    return v80(v78, v79, v80, v81, v82, v83, v84, v85, a9, a10, a11, a12, a13, a14, a15, a16);
  }
}

uint64_t sub_21E54B268()
{
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_32();
  v2 = v1;
  OUTLINED_FUNCTION_46_0();
  *v3 = v2;
  v5 = *(v4 + 192);
  v6 = *(v4 + 176);
  v7 = *v0;
  OUTLINED_FUNCTION_8();
  *v8 = v7;
  *(v2 + 200) = v9;

  __swift_destroy_boxed_opaque_existential_1Tm((v2 + 56));
  v10 = OUTLINED_FUNCTION_10();

  return MEMORY[0x2822009F8](v10);
}

uint64_t sub_21E54B370(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_190();
  OUTLINED_FUNCTION_225();
  v49 = v16[23];
  sub_21E54A3EC(v16[25], sub_21E5351E4, sub_21E543DD8, sub_21E555BA4);
  v17 = v49;
  os_unfair_lock_lock(&dword_281226A40);
  v18 = qword_281226A50;
  v47 = qword_281226A48;

  os_unfair_lock_unlock(&dword_281226A40);
  v50 = MEMORY[0x277D84F90];
  v19 = sub_21E529E5C(v17);
  v20 = v19;
  v21 = 0;
  v48 = v18;
  while (v20 != v21)
  {
    if ((v17 & 0xC000000000000001) != 0)
    {
      v19 = MEMORY[0x223D5CE50](v21, v17);
      v22 = v19;
    }

    else
    {
      if (v21 >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_32;
      }

      v22 = *(v17 + 8 * v21 + 32);
    }

    if (__OFADD__(v21, 1))
    {
      __break(1u);
LABEL_32:
      __break(1u);
      return MEMORY[0x2821B7108](v19);
    }

    if (qword_281226988 != -1)
    {
      OUTLINED_FUNCTION_22_1();
      swift_once();
    }

    if ((sub_21E537304(v22) & 1) != 0 || (v23 = sub_21E57B43C(), !v24))
    {

      goto LABEL_21;
    }

    if (v23 == v47 && v24 == v18)
    {

LABEL_19:
      sub_21E57B98C();
      v27 = *(v50 + 16);
      sub_21E57B9AC();
      sub_21E57B9BC();
      v19 = sub_21E57B99C();
      goto LABEL_20;
    }

    v26 = sub_21E57BB3C();

    if (v26)
    {
      goto LABEL_19;
    }

LABEL_20:
    v18 = v48;
LABEL_21:
    ++v21;
  }

  if (sub_21E529E5C(v50))
  {
    v28 = v16[13];
    if (sub_21E554A70())
    {
      v29 = v16[17];
      v30 = v16[13];
      sub_21E57B52C();
      sub_21E57B50C();
      OUTLINED_FUNCTION_93_0();

      sub_21E57B51C();

      v31 = v30[6];
      OUTLINED_FUNCTION_91_0(v30 + 2, v30[5]);
      v32 = *(MEMORY[0x277D55818] + 4);
      v33 = swift_task_alloc();
      v16[26] = v33;
      *v33 = v16;
      v33[1] = sub_21E54B6B0;
      OUTLINED_FUNCTION_57_0(v16[17]);
      OUTLINED_FUNCTION_120();

      return MEMORY[0x2821B7108](v19);
    }
  }

  v36 = v16[20];
  v35 = v16[21];
  v37 = v16[17];

  OUTLINED_FUNCTION_47_0();
  OUTLINED_FUNCTION_120();

  return v40(v38, v39, v40, v41, v42, v43, v44, v45, a9, v16, v47, v48, v50, a14, a15, a16);
}

uint64_t sub_21E54B6B0()
{
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_32();
  OUTLINED_FUNCTION_9();
  *v2 = v1;
  v4 = *(v3 + 208);
  *v2 = *v0;
  *(v1 + 216) = v5;

  v6 = OUTLINED_FUNCTION_10();

  return MEMORY[0x2822009F8](v6);
}

uint64_t sub_21E54B798()
{
  OUTLINED_FUNCTION_99_0();
  (*(v0[16] + 8))(v0[17], v0[15]);
  v1 = v0[27];
  v3 = v0[20];
  v2 = v0[21];
  v4 = v0[17];

  v5 = OUTLINED_FUNCTION_5();

  return v6(v5);
}

uint64_t sub_21E54B828(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  v3 = OUTLINED_FUNCTION_10();
  return MEMORY[0x2822009F8](v3);
}

uint64_t sub_21E54B850()
{
  OUTLINED_FUNCTION_99_0();
  v3 = v2[3];
  if (sub_21E554A70())
  {
    OUTLINED_FUNCTION_17_1(v2[3]);
    v4 = *(MEMORY[0x277D55810] + 4);
    v5 = swift_task_alloc();
    v2[4] = v5;
    *v5 = v2;
    v5[1] = sub_21E54B938;
    v6 = OUTLINED_FUNCTION_57_0(v2[2]);

    return MEMORY[0x2821B7100](v6, v0, v1);
  }

  else
  {
    OUTLINED_FUNCTION_9_0();

    return v7(0);
  }
}

uint64_t sub_21E54B938()
{
  OUTLINED_FUNCTION_29();
  v2 = v1;
  OUTLINED_FUNCTION_32();
  v4 = *(v3 + 32);
  v5 = *v0;
  OUTLINED_FUNCTION_8();
  *v6 = v5;

  OUTLINED_FUNCTION_9_0();

  return v7(v2);
}

uint64_t sub_21E54BA20()
{
  OUTLINED_FUNCTION_29();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_114(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_43_0(v1);
  OUTLINED_FUNCTION_76_0();

  return sub_21E54BAB0();
}

uint64_t sub_21E54BAB0()
{
  OUTLINED_FUNCTION_29();
  *(v1 + 489) = v2;
  *(v1 + 488) = v3;
  *(v1 + 80) = v4;
  *(v1 + 88) = v0;
  *(v1 + 64) = v5;
  *(v1 + 72) = v6;
  *(v1 + 96) = *v0;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC8C40, &qword_21E57DBA8) - 8) + 64);
  *(v1 + 104) = OUTLINED_FUNCTION_159();
  v8 = sub_21E57B3DC();
  *(v1 + 112) = v8;
  OUTLINED_FUNCTION_6(v8);
  *(v1 + 120) = v9;
  v11 = *(v10 + 64);
  *(v1 + 128) = OUTLINED_FUNCTION_187();
  *(v1 + 136) = swift_task_alloc();
  *(v1 + 144) = swift_task_alloc();
  v12 = sub_21E57B5EC();
  *(v1 + 152) = v12;
  OUTLINED_FUNCTION_6(v12);
  *(v1 + 160) = v13;
  v15 = *(v14 + 64);
  *(v1 + 168) = OUTLINED_FUNCTION_187();
  *(v1 + 176) = swift_task_alloc();
  *(v1 + 184) = swift_task_alloc();
  *(v1 + 192) = swift_task_alloc();
  *(v1 + 200) = swift_task_alloc();
  *(v1 + 208) = swift_task_alloc();
  v16 = OUTLINED_FUNCTION_10();

  return MEMORY[0x2822009F8](v16);
}

uint64_t sub_21E54BC58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_91();
  a19 = v22;
  a20 = v23;
  OUTLINED_FUNCTION_231();
  a18 = v20;
  if (v20[10])
  {
    v24 = v20[9];
    v25 = v20[10];
  }

  else
  {
    v26 = v20[11];
    v27 = v26[17];
    v28 = v26[18];
    OUTLINED_FUNCTION_38_0(v26 + 14);
    v24 = sub_21E57B4BC();
    v25 = v29;
  }

  v20[27] = v24;
  v20[28] = v25;
  v30 = v20[11];
  v31 = v30[13];
  __swift_project_boxed_opaque_existential_1(v30 + 9, v30[12]);

  if (sub_21E57B2CC())
  {
    if (qword_281226930 != -1)
    {
      OUTLINED_FUNCTION_23_1();
    }

    os_unfair_lock_lock(&dword_281226A40);

    qword_281226A48 = v24;
    qword_281226A50 = v25;

    os_unfair_lock_unlock(&dword_281226A40);
    v32 = swift_task_alloc();
    v20[29] = v32;
    *v32 = v20;
    v32[1] = sub_21E54BEDC;
    v33 = v20[11];
    OUTLINED_FUNCTION_55();

    return sub_21E553CE4();
  }

  else
  {
    v36 = v20[26];

    sub_21E57B5BC();
    v37 = sub_21E57B5DC();
    v38 = sub_21E57B85C();
    v39 = OUTLINED_FUNCTION_75_0(v38);
    v40 = v20[26];
    v41 = v20[19];
    v42 = v20[20];
    if (v39)
    {
      v43 = v20[12];
      v44 = OUTLINED_FUNCTION_50();
      a9 = OUTLINED_FUNCTION_43();
      v45 = OUTLINED_FUNCTION_149(4.8149e-34);
      sub_21E5553D8(v45, v46, &a9);
      OUTLINED_FUNCTION_221();
      *(v44 + 4) = v21;
      OUTLINED_FUNCTION_12();
      _os_log_impl(v47, v48, v49, v50, v51, 0xCu);
      OUTLINED_FUNCTION_41_0();
      OUTLINED_FUNCTION_30();
    }

    v52 = *(v42 + 8);
    v53 = OUTLINED_FUNCTION_62_0();
    v54(v53);
    v56 = v20[25];
    v55 = v20[26];
    v58 = v20[23];
    v57 = v20[24];
    v60 = v20[21];
    v59 = v20[22];
    v62 = v20[17];
    v61 = v20[18];
    v63 = v20[16];
    v64 = v20[13];

    OUTLINED_FUNCTION_47_0();
    OUTLINED_FUNCTION_55();

    return v67(v65, v66, v67, v68, v69, v70, v71, v72, a9, a10, a11, a12);
  }
}

uint64_t sub_21E54BEDC()
{
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_32();
  OUTLINED_FUNCTION_9();
  *v2 = v1;
  v4 = *(v3 + 232);
  *v2 = *v0;
  *(v1 + 240) = v5;

  v6 = OUTLINED_FUNCTION_10();

  return MEMORY[0x2822009F8](v6);
}

uint64_t sub_21E54BFC4(__n128 a1)
{
  v172 = v3;
  v4 = *(*(v3 + 64) + 16);
  *(v3 + 248) = v4;
  if (!v4)
  {
LABEL_29:
    v101 = *(v3 + 240);

    *(v3 + 424) = 0;
    *(v3 + 432) = 0;
    *(v3 + 440) = 0;
    v102 = *(v3 + 489);
    if (v102 == 2)
    {
      LOBYTE(v102) = sub_21E57B5AC();
      sub_21E57B59C();
      OUTLINED_FUNCTION_184();
      OUTLINED_FUNCTION_115();
    }

    v104 = *(v3 + 216);
    v103 = *(v3 + 224);
    os_unfair_lock_lock(&dword_281226A40);
    OUTLINED_FUNCTION_188();
    os_unfair_lock_unlock(&dword_281226A40);
    v105 = v2 == v104 && v1 == v103;
    if (v105)
    {
    }

    else
    {
      OUTLINED_FUNCTION_61_0();
      OUTLINED_FUNCTION_125();

      if ((v2 & 1) == 0)
      {
        v106 = *(v3 + 224);

LABEL_41:
        OUTLINED_FUNCTION_17_1(*(v3 + 88));
        v116 = *(MEMORY[0x277D55828] + 4);
        v117 = swift_task_alloc();
        v118 = OUTLINED_FUNCTION_117(v117);
        *v118 = v119;
        OUTLINED_FUNCTION_7_3(v118);
        OUTLINED_FUNCTION_102_0();

        return MEMORY[0x2821B7118]();
      }
    }

    sub_21E5502BC(*(v3 + 216), *(v3 + 224), v102 & 1);

    OUTLINED_FUNCTION_182();
    sub_21E57B5DC();
    v107 = sub_21E57B85C();
    if (OUTLINED_FUNCTION_75_0(v107))
    {
      v108 = OUTLINED_FUNCTION_106_0();
      *(OUTLINED_FUNCTION_29_0(v108, 1.5047e-36) + 10) = 0;
      OUTLINED_FUNCTION_12();
      _os_log_impl(v109, v110, v111, v112, v113, 0x12u);
      OUTLINED_FUNCTION_30();
    }

    OUTLINED_FUNCTION_105_0();
    v114 = OUTLINED_FUNCTION_48_0();
    v115(v114);
    OUTLINED_FUNCTION_186();
    OUTLINED_FUNCTION_62_0();
    sub_21E57B16C();
    goto LABEL_41;
  }

  v5 = 0;
  *(v3 + 456) = *MEMORY[0x277D55860];
  v6 = MEMORY[0x277D55858];
  *(v3 + 460) = *MEMORY[0x277D55868];
  *(v3 + 464) = *v6;
  *(v3 + 468) = *MEMORY[0x277D55878];
  v7 = MEMORY[0x277D55848];
  *(v3 + 472) = *MEMORY[0x277D55840];
  *(v3 + 476) = *v7;
  *(v3 + 480) = *MEMORY[0x277D55870];
  *(v3 + 484) = *MEMORY[0x277D55850];
  a1.n128_u64[0] = 136315394;
  v164 = a1;
  a1.n128_u64[0] = 136315138;
  v150 = a1;
  while (1)
  {
    *(v3 + 288) = 0;
    *(v3 + 296) = 0;
    *(v3 + 272) = 0;
    *(v3 + 280) = v5;
    *(v3 + 256) = 0;
    *(v3 + 264) = 0;
    v1 = *(v3 + 104);
    v8 = *(v3 + 112);
    v9 = *(*(v3 + 64) + 8 * v5 + 32);
    sub_21E57B3BC();
    OUTLINED_FUNCTION_37_0();
    if (v105)
    {
      v10 = OUTLINED_FUNCTION_147();
      sub_21E53FF8C(v10, &qword_27CEC8C40, &qword_21E57DBA8);
      sub_21E57B5BC();
      v11 = sub_21E57B5DC();
      v12 = sub_21E57B86C();
      OUTLINED_FUNCTION_92_0(v12);
      OUTLINED_FUNCTION_53_0();
      if (v13)
      {
        v2 = *(v3 + 96);
        OUTLINED_FUNCTION_57();
        v14 = OUTLINED_FUNCTION_2_0();
        v22 = OUTLINED_FUNCTION_31_0(v14, v15, v16, v17, v18, v19, v20, v21, v150.n128_i64[0], v150.n128_i64[1], v153, v155, v158, v161, v164.n128_i32[0]);
        OUTLINED_FUNCTION_158(v22, v23);
        v24 = OUTLINED_FUNCTION_183();
        OUTLINED_FUNCTION_13_0(v24, v25, v26, v27, v28, v29, v30, v31, v151, v152, v154, v156, v159, v162, v164.n128_i64[0], v164.n128_i64[1], v165, v166, v167, v9);
        OUTLINED_FUNCTION_179(&dword_21E527000, v11, v32, "%s: buildIndividualSources cannot convert %lld to case in AutoCompletePhraseSource");
        OUTLINED_FUNCTION_41_0();
        OUTLINED_FUNCTION_20();
      }

      v33 = OUTLINED_FUNCTION_52_0();
      v34(v33);
      goto LABEL_27;
    }

    v35 = *(v3 + 200);
    v36 = *(v3 + 136);
    v37 = *(v3 + 120);
    (*(v37 + 32))(*(v3 + 144), *(v3 + 104), *(v3 + 112));
    sub_21E57B5BC();
    v38 = *(v37 + 16);
    v39 = OUTLINED_FUNCTION_60();
    v167 = v40;
    v40(v39);
    v41 = sub_21E57B5DC();
    v42 = sub_21E57B85C();
    v43 = os_log_type_enabled(v41, v42);
    v1 = *(v3 + 200);
    v44 = *(v3 + 160);
    v166 = *(v3 + 152);
    v45 = *(v3 + 136);
    v46 = *(v3 + 120);
    if (v43)
    {
      LODWORD(v158) = v42;
      v47 = *(v3 + 96);
      v157 = *(v3 + 112);
      v163 = *(v3 + 200);
      v1 = swift_slowAlloc();
      v48 = OUTLINED_FUNCTION_43();
      *v1 = OUTLINED_FUNCTION_35_0(v48, v49, v50, v51, v52, v53, v54, v55, v150.n128_i64[0], v150.n128_i64[1], v153, v157, v158, v163, *&v164).n128_u32[0];
      v56 = sub_21E57BC2C();
      v168 = v9;
      v58 = sub_21E5553D8(v56, v57, &v171);

      *(v1 + 4) = v58;
      *(v1 + 12) = 2048;
      v59 = sub_21E57B3CC();
      v60 = *(v46 + 8);
      v60(v45, v155);
      *(v1 + 14) = v59;
      v9 = v168;
      _os_log_impl(&dword_21E527000, v41, v158, "%s: buildIndividualSources %lld", v1, 0x16u);
      OUTLINED_FUNCTION_25_2();
      OUTLINED_FUNCTION_39();

      v63 = *(v44 + 8);
      v61 = v44 + 8;
      v62 = v63;
      v63(v161, v166);
    }

    else
    {
      v60 = *(v46 + 8);
      v60(*(v3 + 136), *(v3 + 112));

      v64 = *(v44 + 8);
      v61 = v44 + 8;
      v62 = v64;
      v64(v1, v166);
    }

    *(v3 + 304) = v60;
    v65 = OUTLINED_FUNCTION_12_1();
    v167(v65);
    v66 = OUTLINED_FUNCTION_51_0();
    if (v67(v66) != v61)
    {
      break;
    }

    OUTLINED_FUNCTION_192();
    v68 = sub_21E57B5DC();
    v69 = sub_21E57B85C();
    v70 = OUTLINED_FUNCTION_92_0(v69);
    v71 = *(v3 + 192);
    v72 = *(v3 + 152);
    v2 = *(v3 + 144);
    v73 = *(v3 + 112);
    v74 = *(v3 + 160) + 8;
    v169 = *(v3 + 120) + 8;
    if (!v70)
    {

      v62(v71, v72);
      v100 = OUTLINED_FUNCTION_94_0();
LABEL_26:
      (v60)(v100);
      goto LABEL_27;
    }

    v161 = *(v3 + 144);
    v2 = *(v3 + 96);
    v167 = v60;
    v75 = OUTLINED_FUNCTION_50();
    v166 = v62;
    v171 = OUTLINED_FUNCTION_43();
    v76 = OUTLINED_FUNCTION_107_0(v150.n128_f32[0]);
    v158 = v73;
    v78 = OUTLINED_FUNCTION_158(v76, v77);

    *(v75 + 4) = v78;
    _os_log_impl(&dword_21E527000, v68, v1, "%s: buildIndividualSources AssistantSuggestions source does not support individual rebuild", v75, 0xCu);
    OUTLINED_FUNCTION_25_2();
    OUTLINED_FUNCTION_31();

    v62(v71, v72);
    (v167)(v161, v158);
LABEL_27:
    OUTLINED_FUNCTION_30_0();
    if (v105)
    {
      goto LABEL_29;
    }
  }

  OUTLINED_FUNCTION_145();
  if (!v105)
  {
    OUTLINED_FUNCTION_144();
    if (v105)
    {
      v125 = swift_task_alloc();
      v126 = OUTLINED_FUNCTION_113(v125);
      *v126 = v127;
      OUTLINED_FUNCTION_3_6(v126);
      OUTLINED_FUNCTION_102_0();

      return sub_21E551824();
    }

    OUTLINED_FUNCTION_143();
    if (v105)
    {
      v129 = swift_task_alloc();
      v130 = OUTLINED_FUNCTION_135(v129);
      *v130 = v131;
      OUTLINED_FUNCTION_5_5(v130);
      OUTLINED_FUNCTION_102_0();

      return sub_21E5513E0();
    }

    OUTLINED_FUNCTION_142();
    if (v105)
    {
      v133 = swift_task_alloc();
      v134 = OUTLINED_FUNCTION_109(v133);
      *v134 = v135;
      OUTLINED_FUNCTION_0_3(v134);
      OUTLINED_FUNCTION_102_0();

      return sub_21E552628();
    }

    OUTLINED_FUNCTION_141();
    if (v105)
    {
      v137 = swift_task_alloc();
      v138 = OUTLINED_FUNCTION_137(v137);
      *v138 = v139;
      OUTLINED_FUNCTION_1_4(v138);
      OUTLINED_FUNCTION_102_0();

      return sub_21E553090();
    }

    OUTLINED_FUNCTION_140();
    if (v105)
    {
      v141 = swift_task_alloc();
      v142 = OUTLINED_FUNCTION_134(v141);
      *v142 = v143;
      OUTLINED_FUNCTION_4_5(v142);
      OUTLINED_FUNCTION_102_0();

      return sub_21E552160();
    }

    OUTLINED_FUNCTION_139();
    if (v105)
    {
      v145 = swift_task_alloc();
      v146 = OUTLINED_FUNCTION_136(v145);
      *v146 = v147;
      OUTLINED_FUNCTION_6_5(v146);
      OUTLINED_FUNCTION_102_0();

      return sub_21E553410();
    }

    OUTLINED_FUNCTION_191();
    v79 = sub_21E57B5DC();
    v80 = sub_21E57B86C();
    v81 = OUTLINED_FUNCTION_92_0(v80);
    v161 = *(v3 + 184);
    v82 = *(v3 + 152);
    v2 = *(v3 + 144);
    v83 = *(v3 + 112);
    v84 = *(v3 + 160) + 8;
    v170 = *(v3 + 120) + 8;
    if (v81)
    {
      v160 = *(v3 + 144);
      v2 = *(v3 + 96);
      v167 = v60;
      v85 = OUTLINED_FUNCTION_57();
      v86 = OUTLINED_FUNCTION_43();
      v166 = v62;
      LODWORD(v94) = OUTLINED_FUNCTION_35_0(v86, v87, v88, v89, v90, v91, v92, v93, v150.n128_i64[0], v150.n128_i64[1], v153, v155, v160, v161, *&v164).n128_u32[0];
      v95 = OUTLINED_FUNCTION_107_0(v94);
      v155 = v83;
      v97 = OUTLINED_FUNCTION_158(v95, v96);

      *(v85 + 4) = v97;
      *(v85 + 12) = 2048;
      *(v85 + 14) = v9;
      OUTLINED_FUNCTION_207(&dword_21E527000, v79, v1, "%s: buildIndividualSources %lld is an unknown source");
      OUTLINED_FUNCTION_25_2();
      v60 = v167;
      OUTLINED_FUNCTION_39();

      v62(v161, v82);
      v99 = v155;
      v98 = v158;
    }

    else
    {

      v62(v161, v82);
      v98 = OUTLINED_FUNCTION_94_0();
    }

    v60(v98, v99);
    v100 = OUTLINED_FUNCTION_50_0();
    goto LABEL_26;
  }

  v121 = swift_task_alloc();
  v122 = OUTLINED_FUNCTION_138(v121);
  *v122 = v123;
  OUTLINED_FUNCTION_2_5(v122);
  OUTLINED_FUNCTION_102_0();

  return sub_21E5536A0();
}

uint64_t sub_21E54C8D4()
{
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_32();
  OUTLINED_FUNCTION_9();
  *v2 = v1;
  v1[2] = v0;
  v1[3] = v3;
  v1[4] = v4;
  v6 = *(v5 + 312);
  v7 = *v0;
  OUTLINED_FUNCTION_8();
  *v8 = v7;
  *(v10 + 320) = v9;

  v11 = OUTLINED_FUNCTION_10();

  return MEMORY[0x2822009F8](v11);
}

uint64_t sub_21E54D0D0()
{
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_32();
  OUTLINED_FUNCTION_9();
  *v2 = v1;
  v1[5] = v0;
  v1[6] = v3;
  v1[7] = v4;
  v6 = *(v5 + 328);
  v7 = *v0;
  OUTLINED_FUNCTION_8();
  *v8 = v7;
  *(v10 + 336) = v9;

  v11 = OUTLINED_FUNCTION_10();

  return MEMORY[0x2822009F8](v11);
}

uint64_t sub_21E54D8C8()
{
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_32();
  OUTLINED_FUNCTION_9();
  *v2 = v1;
  v4 = *(v3 + 344);
  *v2 = *v0;
  *(v1 + 352) = v5;

  v6 = OUTLINED_FUNCTION_10();

  return MEMORY[0x2822009F8](v6);
}

uint64_t sub_21E54E094()
{
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_32();
  OUTLINED_FUNCTION_9();
  *v2 = v1;
  v4 = *(v3 + 360);
  *v2 = *v0;
  *(v1 + 368) = v5;

  v6 = OUTLINED_FUNCTION_10();

  return MEMORY[0x2822009F8](v6);
}

uint64_t sub_21E54E860()
{
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_32();
  OUTLINED_FUNCTION_9();
  *v2 = v1;
  v4 = *(v3 + 376);
  *v2 = *v0;
  *(v1 + 384) = v5;

  v6 = OUTLINED_FUNCTION_10();

  return MEMORY[0x2822009F8](v6);
}

uint64_t sub_21E54F02C()
{
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_32();
  OUTLINED_FUNCTION_9();
  *v2 = v1;
  v4 = *(v3 + 392);
  *v2 = *v0;
  *(v1 + 400) = v5;

  v6 = OUTLINED_FUNCTION_10();

  return MEMORY[0x2822009F8](v6);
}

uint64_t sub_21E54F934()
{
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_32();
  OUTLINED_FUNCTION_9();
  *v2 = v1;
  v4 = *(v3 + 408);
  *v2 = *v0;
  *(v1 + 416) = v5;

  v6 = OUTLINED_FUNCTION_10();

  return MEMORY[0x2822009F8](v6);
}

uint64_t sub_21E550100()
{
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_32();
  v2 = *(v1 + 448);
  v3 = *v0;
  OUTLINED_FUNCTION_8();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_10();

  return MEMORY[0x2822009F8](v5);
}

uint64_t sub_21E5501E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_91();
  OUTLINED_FUNCTION_231();
  v13 = v12[54];
  v14 = v12[55];

  v34 = v12[53];
  v16 = v12[25];
  v15 = v12[26];
  v18 = v12[23];
  v17 = v12[24];
  v20 = v12[21];
  v19 = v12[22];
  v22 = v12[17];
  v21 = v12[18];
  v23 = v12[16];
  v24 = v12[13];

  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_55();

  return v27(v25, v26, v27, v28, v29, v30, v31, v32, v34, a10, a11, a12);
}

void __spoils<X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> sub_21E5502BC(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    v3 = 0xD000000000000014;
  }

  else
  {
    v3 = 0xD000000000000017;
  }

  if (a3)
  {
    v4 = "tokenAssetNotRegistered";
  }

  else
  {
    v4 = "rationTimeoutSeconds";
  }

  MEMORY[0x223D5CBD0](95, 0xE100000000000000);
  MEMORY[0x223D5CBD0](v3, v4 | 0x8000000000000000);

  MEMORY[0x223D5CBD0](95, 0xE100000000000000);
  if (qword_281226918 != -1)
  {
    OUTLINED_FUNCTION_130();
  }

  MEMORY[0x223D5CBD0](qword_281226920, *algn_281226928);
}

uint64_t sub_21E550394()
{
  OUTLINED_FUNCTION_29();
  *(v1 + 104) = v0;
  *(v1 + 352) = v2;
  *(v1 + 112) = *v0;
  v3 = sub_21E57B3DC();
  *(v1 + 120) = v3;
  OUTLINED_FUNCTION_6(v3);
  *(v1 + 128) = v4;
  v6 = *(v5 + 64);
  *(v1 + 136) = OUTLINED_FUNCTION_187();
  *(v1 + 144) = swift_task_alloc();
  *(v1 + 152) = swift_task_alloc();
  *(v1 + 160) = swift_task_alloc();
  *(v1 + 168) = swift_task_alloc();
  *(v1 + 176) = swift_task_alloc();
  v7 = swift_task_alloc();
  OUTLINED_FUNCTION_194(v7);
  v8 = sub_21E57B5EC();
  *(v1 + 192) = v8;
  OUTLINED_FUNCTION_6(v8);
  *(v1 + 200) = v9;
  v11 = *(v10 + 64);
  *(v1 + 208) = OUTLINED_FUNCTION_187();
  *(v1 + 216) = swift_task_alloc();
  *(v1 + 224) = swift_task_alloc();
  *(v1 + 232) = swift_task_alloc();
  *(v1 + 240) = swift_task_alloc();
  *(v1 + 248) = swift_task_alloc();
  v12 = OUTLINED_FUNCTION_10();

  return MEMORY[0x2822009F8](v12);
}

uint64_t sub_21E550530(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_190();
  a23 = v26;
  a24 = v27;
  OUTLINED_FUNCTION_225();
  a22 = v24;
  v28 = *(v24 + 104);
  v29 = v28[12];
  v30 = v28[13];
  OUTLINED_FUNCTION_38_0(v28 + 9);
  if ((sub_21E57B2CC() & 1) == 0)
  {
    v41 = *(v24 + 248);
    sub_21E57B5BC();
    v35 = sub_21E57B5DC();
    v42 = sub_21E57B85C();
    v43 = OUTLINED_FUNCTION_75_0(v42);
    v44 = *(v24 + 248);
    v45 = *(v24 + 192);
    v40 = *(v24 + 200);
    if (v43)
    {
LABEL_6:
      v46 = *(v24 + 112);
      v47 = OUTLINED_FUNCTION_50();
      a13 = OUTLINED_FUNCTION_43();
      v48 = OUTLINED_FUNCTION_149(4.8149e-34);
      sub_21E5553D8(v48, v49, &a13);
      OUTLINED_FUNCTION_221();
      *(v47 + 4) = v25;
      OUTLINED_FUNCTION_12();
      _os_log_impl(v50, v51, v52, v53, v54, 0xCu);
      OUTLINED_FUNCTION_41_0();
      OUTLINED_FUNCTION_30();
    }

LABEL_7:

    v55 = *(v40 + 8);
    v56 = OUTLINED_FUNCTION_62_0();
    v57(v56);
    goto LABEL_8;
  }

  v31 = *(v24 + 104);
  v33 = *(v31 + 56);
  v32 = *(v31 + 64);
  swift_getObjectType();
  if (sub_21E57B1BC())
  {
    v34 = *(v24 + 240);
    sub_21E57B5BC();
    v35 = sub_21E57B5DC();
    v36 = sub_21E57B85C();
    v37 = OUTLINED_FUNCTION_75_0(v36);
    v38 = *(v24 + 240);
    v39 = *(v24 + 192);
    v40 = *(v24 + 200);
    if (v37)
    {
      goto LABEL_6;
    }

    goto LABEL_7;
  }

  v77 = *(v24 + 104);
  v78 = v77[17];
  v79 = v77[18];
  OUTLINED_FUNCTION_38_0(v77 + 14);
  sub_21E57B4CC();
  if (v80)
  {
    v81 = *(v24 + 232);
    sub_21E57B5BC();
    v82 = sub_21E57B5DC();
    v83 = sub_21E57B85C();
    v84 = OUTLINED_FUNCTION_89_0(v83);
    v85 = *(v24 + 232);
    v87 = *(v24 + 192);
    v86 = *(v24 + 200);
    if (v84)
    {
      v88 = *(v24 + 112);
      v159 = *(v24 + 192);
      v89 = OUTLINED_FUNCTION_50();
      a13 = OUTLINED_FUNCTION_43();
      *v89 = 136315138;
      v90 = sub_21E57BC2C();
      v92 = sub_21E5553D8(v90, v91, &a13);

      *(v89 + 4) = v92;
      OUTLINED_FUNCTION_230();
      _os_log_impl(v93, v94, v95, v96, v97, 0xCu);
      OUTLINED_FUNCTION_25_2();
      OUTLINED_FUNCTION_81_0();

      (*(v86 + 8))(v85, v159);
    }

    else
    {

      (*(v86 + 8))(v85, v87);
    }

    sub_21E57B5AC();
    sub_21E57B59C();
    OUTLINED_FUNCTION_60();
    sub_21E57B57C();
  }

  v98 = *(v24 + 352);
  v99 = v77[17];
  v100 = v77[18];
  OUTLINED_FUNCTION_38_0(v77 + 14);
  *(v24 + 256) = sub_21E57B4BC();
  *(v24 + 264) = v101;
  sub_21E57B5AC();
  sub_21E57B59C();
  v102 = sub_21E57B58C();

  if (v98 == 1 && (v102 & 1) == 0)
  {
    v103 = *(v24 + 224);
    sub_21E57B59C();
    OUTLINED_FUNCTION_60();
    sub_21E57B57C();

    sub_21E57B59C();
    v102 = sub_21E57B58C();

    sub_21E57B5BC();

    v104 = sub_21E57B5DC();
    v105 = sub_21E57B85C();

    v106 = os_log_type_enabled(v104, v105);
    v107 = *(v24 + 224);
    v108 = *(v24 + 192);
    v109 = *(v24 + 200);
    if (v106)
    {
      v156 = *(v24 + 224);
      v110 = *(v24 + 112);
      v111 = swift_slowAlloc();
      a13 = OUTLINED_FUNCTION_206();
      *v111 = 136315650;
      v112 = sub_21E57BC2C();
      sub_21E5553D8(v112, v113, &a13);
      OUTLINED_FUNCTION_241();
      *(v111 + 4) = v108;
      *(v111 + 12) = 2080;
      v114 = OUTLINED_FUNCTION_60();
      *(v111 + 14) = sub_21E5553D8(v114, v115, v116);
      *(v111 + 22) = 1024;
      *(v111 + 24) = v102 & 1;
      _os_log_impl(&dword_21E527000, v104, v105, "%s: Attempted to update unregistered Morphun asset for locale %s onStartUpEvent, isAssetRegistered status for this locale: %{BOOL}d", v111, 0x1Cu);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_39();
      OUTLINED_FUNCTION_31();

      (*(v109 + 8))(v156, v108);
    }

    else
    {

      (*(v109 + 8))(v107, v108);
    }
  }

  *(v24 + 353) = v102 & 1;
  v117 = *(v24 + 352);
  v118 = OUTLINED_FUNCTION_60();
  sub_21E5502BC(v118, v119, v120);
  v122 = v121;
  if (v117 == 1)
  {
    v123 = v118;
    v124 = *(v24 + 104);
    if (sub_21E554464(v118, v121))
    {
      v125 = *(v24 + 216);

      sub_21E57B5BC();

      v126 = sub_21E57B5DC();
      v127 = sub_21E57B85C();

      v128 = os_log_type_enabled(v126, v127);
      v129 = *(v24 + 216);
      v131 = *(v24 + 192);
      v130 = *(v24 + 200);
      if (v128)
      {
        v132 = *(v24 + 112);
        v133 = OUTLINED_FUNCTION_57();
        a13 = OUTLINED_FUNCTION_206();
        *v133 = 136315394;
        v134 = sub_21E57BC2C();
        v157 = v129;
        v136 = sub_21E5553D8(v134, v135, &a13);

        *(v133 + 4) = v136;
        *(v133 + 12) = 2080;
        v137 = sub_21E5553D8(v123, v122, &a13);

        *(v133 + 14) = v137;
        OUTLINED_FUNCTION_230();
        _os_log_impl(v138, v139, v140, v141, v142, 0x16u);
        OUTLINED_FUNCTION_170();
        OUTLINED_FUNCTION_31();
        OUTLINED_FUNCTION_81_0();

        (*(v130 + 8))(v157, v131);
      }

      else
      {

        (*(v130 + 8))(v129, v131);
      }

LABEL_8:
      v59 = *(v24 + 240);
      v58 = *(v24 + 248);
      v61 = *(v24 + 224);
      v60 = *(v24 + 232);
      v63 = *(v24 + 208);
      v62 = *(v24 + 216);
      v65 = *(v24 + 176);
      v64 = *(v24 + 184);
      v67 = *(v24 + 160);
      v66 = *(v24 + 168);
      v154 = *(v24 + 152);
      v155 = *(v24 + 144);
      v158 = *(v24 + 136);

      OUTLINED_FUNCTION_47_0();
      OUTLINED_FUNCTION_120();

      return v70(v68, v69, v70, v71, v72, v73, v74, v75, a9, v154, v155, v158, a13, a14, a15, a16);
    }
  }

  *(v24 + 272) = sub_21E57B4FC();
  if (qword_281225EF8 != -1)
  {
    OUTLINED_FUNCTION_129();
  }

  v143 = *(v24 + 184);
  v144 = *(v24 + 120);
  v145 = *(v24 + 128);
  v146 = *(v24 + 104);
  *(v24 + 280) = qword_281226A08;
  sub_21E57B33C();
  OUTLINED_FUNCTION_199();
  sub_21E57B4EC();
  v147 = v146[6];
  OUTLINED_FUNCTION_91_0(v146 + 2, v146[5]);
  v148 = *MEMORY[0x277D55860];
  v149 = *(v145 + 104);
  *(v24 + 288) = v149;
  *(v24 + 296) = (v145 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v149(v143, v148, v144);
  v150 = *(MEMORY[0x277D55830] + 4);
  v151 = swift_task_alloc();
  *(v24 + 304) = v151;
  *v151 = v24;
  v151[1] = sub_21E550CE0;
  OUTLINED_FUNCTION_57_0(*(v24 + 184));
  OUTLINED_FUNCTION_120();

  return MEMORY[0x2821B7120](v152);
}

uint64_t sub_21E550CE0()
{
  OUTLINED_FUNCTION_99_0();
  OUTLINED_FUNCTION_32();
  v2 = v1;
  OUTLINED_FUNCTION_46_0();
  *v3 = v2;
  v5 = v4[38];
  v6 = v4[23];
  v7 = v4[16];
  v8 = v4[15];
  v9 = *v0;
  OUTLINED_FUNCTION_8();
  *v10 = v9;

  *(v2 + 312) = *(v7 + 8);
  *(v2 + 320) = (v7 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v11 = OUTLINED_FUNCTION_62_0();
  v12(v11);
  v13 = OUTLINED_FUNCTION_10();

  return MEMORY[0x2822009F8](v13);
}

uint64_t sub_21E550E20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  OUTLINED_FUNCTION_234();
  a27 = v29;
  a28 = v30;
  a26 = v28;
  v31 = *(v28 + 264);
  v32 = *(v28 + 208);
  sub_21E57B5BC();

  v33 = sub_21E57B5DC();
  v34 = sub_21E57B85C();

  if (os_log_type_enabled(v33, v34))
  {
    v35 = *(v28 + 256);
    v36 = *(v28 + 200);
    v88 = *(v28 + 208);
    v84 = *(v28 + 264);
    v86 = *(v28 + 192);
    v37 = *(v28 + 112);
    v38 = *(v28 + 352);
    v39 = swift_slowAlloc();
    a17 = OUTLINED_FUNCTION_206();
    *v39 = 136315650;
    v40 = sub_21E57BC2C();
    v42 = sub_21E5553D8(v40, v41, &a17);

    *(v39 + 4) = v42;
    *(v39 + 12) = 1024;
    *(v39 + 14) = v38;
    *(v39 + 18) = 2080;
    *(v39 + 20) = sub_21E5553D8(v35, v84, &a17);
    OUTLINED_FUNCTION_12();
    _os_log_impl(v43, v44, v45, v46, v47, 0x1Cu);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_20();
    OUTLINED_FUNCTION_30();

    (*(v36 + 8))(v88, v86);
  }

  else
  {
    OUTLINED_FUNCTION_229();

    v48 = OUTLINED_FUNCTION_59_0();
    v49(v48);
  }

  v51 = *(v28 + 312);
  v50 = *(v28 + 320);
  v52 = *(v28 + 288);
  v53 = *(v28 + 296);
  v89 = *(v28 + 353);
  v55 = *(v28 + 176);
  v54 = *(v28 + 184);
  v80 = *(v28 + 168);
  v81 = *(v28 + 160);
  v82 = *(v28 + 152);
  v83 = *(v28 + 144);
  v85 = *(v28 + 136);
  v87 = *(v28 + 264);
  v56 = *(v28 + 120);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC8C00, &qword_21E57DF60);
  inited = swift_initStackObject();
  *(v28 + 328) = inited;
  *(inited + 16) = xmmword_21E57D980;
  (v52)(v54, *MEMORY[0x277D55878], v56);
  v58 = sub_21E57B3CC();
  v51(v54, v56);
  *(inited + 32) = v58;
  v59 = *MEMORY[0x277D55858];
  v60 = OUTLINED_FUNCTION_202();
  v52(v60);
  sub_21E57B3CC();
  v61 = OUTLINED_FUNCTION_96_0();
  (v51)(v61);
  *(inited + 40) = v55;
  v62 = *MEMORY[0x277D55870];
  v63 = OUTLINED_FUNCTION_202();
  v52(v63);
  sub_21E57B3CC();
  v64 = OUTLINED_FUNCTION_96_0();
  (v51)(v64);
  *(inited + 48) = v80;
  v65 = *MEMORY[0x277D55840];
  v66 = OUTLINED_FUNCTION_202();
  v52(v66);
  sub_21E57B3CC();
  v67 = OUTLINED_FUNCTION_96_0();
  (v51)(v67);
  *(inited + 56) = v81;
  v68 = *MEMORY[0x277D55848];
  v69 = OUTLINED_FUNCTION_202();
  v52(v69);
  sub_21E57B3CC();
  v70 = OUTLINED_FUNCTION_96_0();
  (v51)(v70);
  *(inited + 64) = v82;
  v71 = *MEMORY[0x277D55850];
  v72 = OUTLINED_FUNCTION_202();
  v52(v72);
  sub_21E57B3CC();
  v73 = OUTLINED_FUNCTION_96_0();
  (v51)(v73);
  *(inited + 72) = v83;
  (v52)(v85, *MEMORY[0x277D55868], v56);
  v74 = sub_21E57B3CC();
  v51(v85, v56);
  *(inited + 80) = v74;
  v75 = swift_task_alloc();
  *(v28 + 336) = v75;
  *v75 = v28;
  v75[1] = sub_21E5511B4;
  v76 = *(v28 + 256);
  v77 = *(v28 + 104);
  OUTLINED_FUNCTION_162();

  return sub_21E54BAB0();
}

uint64_t sub_21E5511B4()
{
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_32();
  OUTLINED_FUNCTION_9();
  *v2 = v1;
  v4 = v3[42];
  v5 = v3[41];
  v6 = v3[33];
  v7 = *v0;
  OUTLINED_FUNCTION_8();
  *v8 = v7;
  *(v10 + 344) = v9;

  swift_setDeallocating();
  v11 = OUTLINED_FUNCTION_10();

  return MEMORY[0x2822009F8](v11);
}

uint64_t sub_21E5512D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_190();
  OUTLINED_FUNCTION_225();
  v18 = v16[34];
  v17 = v16[35];
  sub_21E57B33C();
  OUTLINED_FUNCTION_199();
  sub_21E57B4DC();
  v20 = v16[30];
  v19 = v16[31];
  v22 = v16[28];
  v21 = v16[29];
  v24 = v16[26];
  v23 = v16[27];
  v26 = v16[22];
  v25 = v16[23];
  v27 = v16[20];
  v28 = v16[21];
  v38 = v16[19];
  v39 = v16[18];
  v40 = v16[17];
  v41 = v16[43];

  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_120();

  return v31(v29, v30, v31, v32, v33, v34, v35, v36, a9, v38, v39, v40, v41, a14, a15, a16);
}

uint64_t sub_21E5513E0()
{
  OUTLINED_FUNCTION_29();
  v4 = OUTLINED_FUNCTION_173(v1, v2, v3);
  v0[21] = v4;
  OUTLINED_FUNCTION_6(v4);
  v0[22] = v5;
  v7 = *(v6 + 64);
  v8 = OUTLINED_FUNCTION_159();
  OUTLINED_FUNCTION_194(v8);
  v9 = sub_21E57B3DC();
  v0[24] = v9;
  OUTLINED_FUNCTION_6(v9);
  v0[25] = v10;
  v12 = *(v11 + 64);
  v0[26] = OUTLINED_FUNCTION_159();
  v13 = OUTLINED_FUNCTION_10();

  return MEMORY[0x2822009F8](v13);
}

uint64_t sub_21E5514C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_180();
  OUTLINED_FUNCTION_155();
  v12 = v10[25];
  v11 = v10[26];
  v13 = v10[24];
  v14 = v10[20];
  v15 = type metadata accessor for AppLaunchHistogramBuilder();
  v10[27] = sub_21E5687D0();
  OUTLINED_FUNCTION_91_0(v14 + 19, v14[22]);
  (*(v12 + 104))(v11, *MEMORY[0x277D55878], v13);
  v16 = *v15;

  v17 = OUTLINED_FUNCTION_200();
  sub_21E55F2C0(v17, v18, v19);

  v20 = *(v12 + 8);
  v21 = OUTLINED_FUNCTION_62_0();
  v22(v21);
  if (v10[10])
  {
    OUTLINED_FUNCTION_124();
    sub_21E57B34C();
    OUTLINED_FUNCTION_18_2();
    v23 = swift_task_alloc();
    v10[28] = v23;
    *v23 = v10;
    v23[1] = sub_21E5516BC;
    v24 = v10[19];
    v26 = v10[17];
    v25 = v10[18];
    OUTLINED_FUNCTION_8_2(v10[20]);
    OUTLINED_FUNCTION_126();

    return sub_21E55A0E4(v27, v28, v29, v30, v31, v32, v33, v34);
  }

  else
  {
    v37 = v10[23];
    sub_21E53FF8C((v10 + 7), &qword_27CEC8C18, &qword_21E57DB60);
    sub_21E57B5BC();
    v38 = sub_21E57B5DC();
    v39 = sub_21E57B85C();
    OUTLINED_FUNCTION_75_0(v39);
    OUTLINED_FUNCTION_226();
    if (v40)
    {
      v41 = OUTLINED_FUNCTION_178();
      OUTLINED_FUNCTION_176(v41);
      OUTLINED_FUNCTION_12();
      _os_log_impl(v42, v43, v44, v45, v46, 2u);
      OUTLINED_FUNCTION_30();
    }

    v47 = v14[1];
    v48 = OUTLINED_FUNCTION_62_0();
    v49(v48);
    OUTLINED_FUNCTION_239();

    OUTLINED_FUNCTION_201();
    v50 = v10[27];
    OUTLINED_FUNCTION_172();

    return v54(v51, v52, v53, v54, v55, v56, v57, v58, a9, a10);
  }
}

uint64_t sub_21E5516BC()
{
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_32();
  v2 = v1;
  OUTLINED_FUNCTION_46_0();
  *v3 = v2;
  v5 = *(v4 + 224);
  *v3 = *v0;
  *(v2 + 232) = v6;

  __swift_destroy_boxed_opaque_existential_1Tm((v2 + 96));
  v7 = OUTLINED_FUNCTION_10();

  return MEMORY[0x2822009F8](v7);
}

uint64_t sub_21E5517AC()
{
  OUTLINED_FUNCTION_29();
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  v1 = v0[29];
  v2 = v0[26];
  v3 = v0[23];

  OUTLINED_FUNCTION_201();
  v5 = v0[27];

  return v4(v5, v1);
}

uint64_t sub_21E551824()
{
  OUTLINED_FUNCTION_29();
  v1[36] = v2;
  v1[37] = v0;
  v1[34] = v3;
  v1[35] = v4;
  v1[38] = *v0;
  v5 = sub_21E57B5EC();
  v1[39] = v5;
  OUTLINED_FUNCTION_6(v5);
  v1[40] = v6;
  v8 = *(v7 + 64);
  v1[41] = OUTLINED_FUNCTION_187();
  v1[42] = swift_task_alloc();
  v9 = sub_21E57B3DC();
  v1[43] = v9;
  OUTLINED_FUNCTION_6(v9);
  v1[44] = v10;
  v12 = *(v11 + 64);
  v1[45] = OUTLINED_FUNCTION_159();
  v13 = OUTLINED_FUNCTION_10();

  return MEMORY[0x2822009F8](v13);
}

uint64_t sub_21E55194C()
{
  v4 = *(v1 + 352);
  v3 = *(v1 + 360);
  v5 = *(v1 + 344);
  OUTLINED_FUNCTION_90_0(*(v1 + 296));
  v6 = *MEMORY[0x277D55858];
  v7 = OUTLINED_FUNCTION_49_0();
  v8(v7);
  v9 = *v0;
  v10 = OUTLINED_FUNCTION_157();
  sub_21E55F2C0(v10, v11, v12);
  v13 = OUTLINED_FUNCTION_59_0();
  v14(v13);
  if (*(v1 + 136))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC8C20, &qword_21E57DB78);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC8C38, &qword_21E57DBA0);
    if (OUTLINED_FUNCTION_215())
    {
      if (*(v1 + 88))
      {
        v15 = *(v1 + 296);
        sub_21E53C0D0((v1 + 64), (v1 + 16));
        v16 = v15[12];
        v17 = v15[13];
        OUTLINED_FUNCTION_38_0(v15 + 9);
        if (sub_21E57B2DC())
        {
          v18 = *(v1 + 296);
          v19 = *(v1 + 40);
          v20 = *(v1 + 48);
          OUTLINED_FUNCTION_238();
          sub_21E54A648((v1 + 232));
          sub_21E57B39C();
          v21 = *__swift_project_boxed_opaque_existential_1((v1 + 232), *(v1 + 256));
          v22 = swift_task_alloc();
          *(v1 + 368) = v22;
          *v22 = v1;
          v22[1] = sub_21E551E10;
          v23 = *(v1 + 288);
          v25 = *(v1 + 272);
          v24 = *(v1 + 280);
          v80 = *(v1 + 296);
          OUTLINED_FUNCTION_54();

          return sub_21E55A0E4(v26, v27, v28, v29, v30, v31, v32, v33);
        }

        else
        {
          v50 = *(v1 + 336);
          sub_21E57B5BC();
          v51 = sub_21E57B5DC();
          v52 = sub_21E57B85C();
          v53 = OUTLINED_FUNCTION_75_0(v52);
          v54 = *(v1 + 336);
          v55 = *(v1 + 312);
          v56 = *(v1 + 320);
          if (v53)
          {
            v57 = *(v1 + 304);
            v58 = OUTLINED_FUNCTION_50();
            v81 = OUTLINED_FUNCTION_43();
            v59 = OUTLINED_FUNCTION_149(4.8149e-34);
            sub_21E5553D8(v59, v60, &v81);
            OUTLINED_FUNCTION_221();
            *(v58 + 4) = v2;
            OUTLINED_FUNCTION_12();
            _os_log_impl(v61, v62, v63, v64, v65, 0xCu);
            OUTLINED_FUNCTION_41_0();
            OUTLINED_FUNCTION_30();
          }

          v66 = *(v56 + 8);
          v67 = OUTLINED_FUNCTION_62_0();
          v68(v67);
          v69 = *(v1 + 296);
          sub_21E54A648((v1 + 152));
          sub_21E57B39C();
          OUTLINED_FUNCTION_242((v1 + 152), *(v1 + 176));
          v70 = type metadata accessor for DefaultEligibilityCriteria();
          OUTLINED_FUNCTION_210(v70, &off_282F92F38);
          OUTLINED_FUNCTION_91_0((v1 + 16), v55);
          v71 = *(v4 + 16);
          OUTLINED_FUNCTION_73_0();
          v78 = (v72 + *v72);
          v74 = *(v73 + 4);
          v75 = swift_task_alloc();
          *(v1 + 384) = v75;
          *v75 = v1;
          v75[1] = sub_21E551FB0;
          v76 = *(v1 + 280);
          v77 = *(v1 + 288);
          OUTLINED_FUNCTION_224();

          return v78();
        }
      }
    }

    else
    {
      *(v1 + 80) = 0u;
      *(v1 + 96) = 0u;
      *(v1 + 64) = 0u;
    }
  }

  else
  {
    sub_21E53FF8C(v1 + 112, &qword_27CEC8C18, &qword_21E57DB60);
    *(v1 + 64) = 0u;
    *(v1 + 80) = 0u;
    *(v1 + 96) = 0u;
  }

  v36 = *(v1 + 328);
  sub_21E53FF8C(v1 + 64, &qword_27CEC8C30, &qword_21E57DB98);
  sub_21E57B5BC();
  v37 = sub_21E57B5DC();
  v38 = sub_21E57B85C();
  if (OUTLINED_FUNCTION_92_0(v38))
  {
    v39 = OUTLINED_FUNCTION_178();
    *v39 = 0;
    _os_log_impl(&dword_21E527000, v37, v3, "Could not get AppIntentTranscriptSource runner in order to fetch phrases. Returning 0 AppIntentTranscript phrases", v39, 2u);
    OUTLINED_FUNCTION_86_0();
  }

  v41 = *(v1 + 320);
  v40 = *(v1 + 328);
  v42 = *(v1 + 312);

  v43 = OUTLINED_FUNCTION_59_0();
  v44(v43);
  type metadata accessor for SiriAutoCompleteHistogram();
  v45 = swift_allocObject();
  *(v45 + 16) = MEMORY[0x277D84F98];
  *(v45 + 24) = 2;
  v46 = *(v1 + 360);
  v48 = *(v1 + 328);
  v47 = *(v1 + 336);

  OUTLINED_FUNCTION_201();

  return v49(v45, 0);
}

uint64_t sub_21E551E10()
{
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_32();
  v2 = v1;
  OUTLINED_FUNCTION_46_0();
  *v3 = v2;
  v5 = *(v4 + 368);
  *v3 = *v0;
  *(v2 + 376) = v6;

  __swift_destroy_boxed_opaque_existential_1Tm((v2 + 232));
  v7 = OUTLINED_FUNCTION_10();

  return MEMORY[0x2822009F8](v7);
}

uint64_t sub_21E551F00()
{
  OUTLINED_FUNCTION_99_0();
  v1 = v0[5];
  v2 = v0[7];
  OUTLINED_FUNCTION_238();
  v3 = *(v2 + 8);
  v4 = OUTLINED_FUNCTION_62_0();
  v5(v4);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  v6 = v0[47];
  v7 = v0[45];
  v9 = v0[41];
  v8 = v0[42];

  OUTLINED_FUNCTION_201();
  v10 = OUTLINED_FUNCTION_90();

  return v11(v10);
}

uint64_t sub_21E551FB0()
{
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_32();
  v2 = *(v1 + 384);
  v3 = *v0;
  OUTLINED_FUNCTION_8();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_10();

  return MEMORY[0x2822009F8](v5);
}

uint64_t sub_21E5520A0()
{
  OUTLINED_FUNCTION_99_0();
  v1 = v0[5];
  v2 = v0[7];
  OUTLINED_FUNCTION_238();
  v3 = *(v2 + 8);
  v4 = OUTLINED_FUNCTION_62_0();
  v6 = v5(v4);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 24);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 19);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  v7 = v0[45];
  v9 = v0[41];
  v8 = v0[42];

  OUTLINED_FUNCTION_201();

  return v10(v6, 0);
}