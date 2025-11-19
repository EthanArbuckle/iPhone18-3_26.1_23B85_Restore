uint64_t sub_267696F64()
{
  swift_beginAccess();
  sub_267696D80(0x8000000000000010);
  return swift_endAccess();
}

uint64_t sub_267696FB8(unint64_t a1)
{
  if (a1 >> 62)
  {
    if (a1 >> 62 == 1)
    {
      MEMORY[0x26D5FDD00](*((a1 & 0x3FFFFFFFFFFFFFFFLL) + 0x10), *((a1 & 0x3FFFFFFFFFFFFFFFLL) + 0x18));
      MEMORY[0x26D5FDD00](41, 0xE100000000000000);
      return 0x28726F727265;
    }

    else
    {
      v7 = 0x656C6C65636E6163;
      if (a1 != 0x8000000000000008)
      {
        v7 = 1701736292;
      }

      if (a1 == 0x8000000000000000)
      {
        return 0xD000000000000019;
      }

      else
      {
        return v7;
      }
    }
  }

  else
  {
    v3 = *(a1 + 16);
    v2 = *(a1 + 24);
    v5 = *(a1 + 32);
    v4 = *(a1 + 40);

    sub_2676CC3FC();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CDB18, &qword_2676D4370);
    v6 = sub_2676CBFBC();
    MEMORY[0x26D5FDD00](v6);

    MEMORY[0x26D5FDD00](41, 0xE100000000000000);
    return 0xD00000000000001ALL;
  }
}

uint64_t sub_267697148()
{
  sub_26769751C(*(v0 + 16));
  v1 = OBJC_IVAR____TtC16SiriMailInternal12SendMailFlow__sendMessageTask;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC720, &qword_2676CF7D0);
  OUTLINED_FUNCTION_2_6(v2);
  (*(v3 + 8))(v0 + v1);
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC16SiriMailInternal12SendMailFlow_linkServicesProvider));
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC16SiriMailInternal12SendMailFlow_featureFlags));
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC16SiriMailInternal12SendMailFlow_referenceResolver));
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC16SiriMailInternal12SendMailFlow_resolverOverride));

  return v0;
}

uint64_t sub_267697204()
{
  sub_267697148();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t type metadata accessor for SendMailFlow()
{
  result = qword_2801CDB00;
  if (!qword_2801CDB00)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2676972B0()
{
  sub_267697368();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_267697368()
{
  if (!qword_2801CDB10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2801CC658, &qword_2676D45A0);
    v0 = sub_2676C97CC();
    if (!v1)
    {
      atomic_store(v0, &qword_2801CDB10);
    }
  }
}

unint64_t get_enum_tag_for_layout_string_16SiriMailInternal04SendB4FlowC5StateO(uint64_t *a1)
{
  if (*a1 >= 0)
  {
    return *a1 >> 62;
  }

  else
  {
    return (*a1 >> 3) + 2;
  }
}

uint64_t sub_2676973E8(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7E && *(a1 + 8))
    {
      v2 = *a1 + 125;
    }

    else
    {
      v2 = (((*a1 >> 57) >> 5) | (4 * ((*a1 >> 57) & 0x18 | *a1 & 7))) ^ 0x7F;
      if (v2 >= 0x7D)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return v2 + 1;
}

uint64_t sub_26769743C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7D)
  {
    *result = a2 - 126;
    if (a3 >= 0x7E)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7E)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 2) & 0x1F | (32 * (-a2 & 0x7F));
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

unint64_t *sub_26769748C(unint64_t *result, uint64_t a2)
{
  if (a2 < 2)
  {
    v2 = *result & 0xFFFFFFFFFFFFFF8 | (a2 << 62);
  }

  else
  {
    v2 = (8 * (a2 - 2)) | 0x8000000000000000;
  }

  *result = v2;
  return result;
}

unint64_t sub_267697500(unint64_t result)
{
  if ((result >> 62) <= 1)
  {
  }

  return result;
}

unint64_t sub_26769751C(unint64_t result)
{
  if ((result >> 62) <= 1)
  {
  }

  return result;
}

unint64_t sub_267697538()
{
  result = qword_2801CC670;
  if (!qword_2801CC670)
  {
    sub_2676CBA1C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2801CC670);
  }

  return result;
}

unint64_t sub_2676975AC()
{
  result = qword_2801CDB40;
  if (!qword_2801CDB40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2801CDB40);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_3_27()
{
  *(v4 - 136) = v1;
  *(v0 + 296) = v2;
  *(v0 + 304) = v3;

  return swift_getOpaqueTypeConformance2();
}

uint64_t OUTLINED_FUNCTION_4_31(unint64_t *a1)
{

  return sub_2676148C4(a1, v1, v2);
}

uint64_t OUTLINED_FUNCTION_8_24()
{
  v2 = *(v0 + 200);

  return sub_2676C984C();
}

uint64_t OUTLINED_FUNCTION_9_28()
{
  v2 = *(v0 + 216);
  v3 = *(*(v0 + 208) + 16);
  return v1;
}

uint64_t OUTLINED_FUNCTION_23_11()
{

  return sub_2676C938C();
}

uint64_t OUTLINED_FUNCTION_24_11()
{
  *(v1 - 176) = 0;
  *(v0 + 48) = 0u;
  *(v0 + 64) = 0u;

  return sub_2676C9B9C();
}

uint64_t OUTLINED_FUNCTION_25_14()
{

  return sub_2675F95E4(v0 + 464, v0 + 344, v1, v2);
}

uint64_t OUTLINED_FUNCTION_27_10()
{

  return sub_2675F95E4(v3 - 256, v0 + 464, v1, v2);
}

uint64_t SendMailIntentPrototype.debugDescription.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC3D0, &qword_2676D1D80);
  OUTLINED_FUNCTION_2_6(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v3);
  v5 = &v37 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD860, &unk_2676D39A0);
  OUTLINED_FUNCTION_2_6(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v9);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CBFE0, &qword_2676D1070);
  OUTLINED_FUNCTION_4_1(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v13);
  v15 = &v37 - v14;
  v39 = 0;
  v40 = 0xE000000000000000;
  sub_2676CC3FC();
  MEMORY[0x26D5FDD00](540700532, 0xE400000000000000);
  v16 = sub_2676C8CDC();
  v17 = sub_2676C8C8C();
  v18 = MEMORY[0x26D5FDDD0](v16, v17);
  v20 = v19;

  MEMORY[0x26D5FDD00](v18, v20);

  OUTLINED_FUNCTION_10_20();
  sub_2676C8CAC();
  v21 = MEMORY[0x26D5FDDD0]();
  v23 = v22;

  MEMORY[0x26D5FDD00](v21, v23);

  OUTLINED_FUNCTION_9_29();
  sub_2676C8CFC();
  v24 = MEMORY[0x26D5FDDD0]();
  v26 = v25;

  MEMORY[0x26D5FDD00](v24, v26);

  OUTLINED_FUNCTION_5_22();
  v37 = sub_2676C8D4C();
  v38 = v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC9B0, &unk_2676CFE50);
  v28 = sub_2676CBFBC();
  MEMORY[0x26D5FDD00](v28);

  OUTLINED_FUNCTION_7_25();
  sub_2676C8D1C();
  v29 = sub_26762D208();
  v31 = v30;
  sub_2675EB7EC(v15, &qword_2801CBFE0, &qword_2676D1070);
  v37 = v29;
  v38 = v31;
  sub_2676CBFBC();
  OUTLINED_FUNCTION_12_17();

  MEMORY[0x26D5FDD00](0xD000000000000014, 0x80000002676D7D80);
  v32 = *(sub_2676C8C9C() + 16);

  v37 = v32;
  sub_2676CC56C();
  OUTLINED_FUNCTION_12_17();

  OUTLINED_FUNCTION_4_32();
  sub_2676C8D3C();
  sub_2676CBFBC();
  OUTLINED_FUNCTION_12_17();

  MEMORY[0x26D5FDD00](0xD000000000000010, 0x80000002676D7DA0);
  sub_2676C8D6C();
  v33 = sub_2676CC2EC();
  v35 = v34;
  sub_2675EB7EC(v5, &qword_2801CC3D0, &qword_2676D1D80);
  MEMORY[0x26D5FDD00](v33, v35);

  return v39;
}

uint64_t sub_267697B4C@<X0>(int a1@<W0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v82 = a2;
  v5 = sub_2676CB48C();
  v6 = OUTLINED_FUNCTION_4_1(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_3_2();
  v79 = v10 - v9;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC440, &qword_2676CEEF0);
  OUTLINED_FUNCTION_2_6(v81);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_9_1();
  v80 = v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CCED8, &unk_2676D1390);
  OUTLINED_FUNCTION_4_1(v15);
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_9_1();
  v77 = v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CBFD0, &qword_2676CDEA0);
  OUTLINED_FUNCTION_4_1(v20);
  v22 = *(v21 + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v23);
  v25 = &v74 - v24;
  v83 = sub_2676C8BFC();
  v26 = OUTLINED_FUNCTION_3(v83);
  v28 = v27;
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_3_2();
  v33 = v32 - v31;
  v34 = sub_2676C8C8C();
  v35 = OUTLINED_FUNCTION_3(v34);
  v37 = v36;
  v39 = *(v38 + 64);
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_3_2();
  v42 = v41 - v40;
  v76 = a1;
  if (a1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC508, &qword_2676CF260);
    v43 = *(v37 + 72);
    v44 = (*(v37 + 80) + 32) & ~*(v37 + 80);
    *(swift_allocObject() + 16) = xmmword_2676CDE20;
    sub_2676C8B3C();
    sub_2676C8B9C();
    sub_2676C8AAC();
    sub_2676C8AEC();
  }

  else
  {
    v45 = sub_2676C8ACC();
    MEMORY[0x28223BE20](v45);
    *(&v74 - 2) = v3;
    v47 = sub_2675DE9C0(sub_267698CEC, (&v74 - 4), v46);
    sub_2676C8B3C();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v71 = *(v47 + 16);
      sub_267606D84();
      v47 = v72;
    }

    v48 = *(v47 + 16);
    if (v48 >= *(v47 + 24) >> 1)
    {
      sub_267606D84();
      v47 = v73;
    }

    *(v47 + 16) = v48 + 1;
    (*(v37 + 32))(v47 + ((*(v37 + 80) + 32) & ~*(v37 + 80)) + *(v37 + 72) * v48, v42, v34);
    sub_2676C8B9C();
  }

  v49 = v83;
  if (qword_2801CBAA0 != -1)
  {
    swift_once();
  }

  v50 = sub_2676CBE4C();
  __swift_project_value_buffer(v50, qword_2801CDC90);
  v78 = *(v28 + 16);
  v78(v33, v3, v49);
  v51 = sub_2676CBE2C();
  v52 = sub_2676CC23C();
  if (os_log_type_enabled(v51, v52))
  {
    v53 = swift_slowAlloc();
    v75 = v25;
    v54 = v49;
    v55 = v53;
    v56 = swift_slowAlloc();
    v84[0] = v56;
    *v55 = 136315394;
    if (v76)
    {
      v57 = 6647407;
    }

    else
    {
      v57 = 7105633;
    }

    v58 = sub_2676B0B84(v57, 0xE300000000000000, v84);

    *(v55 + 4) = v58;
    *(v55 + 12) = 2048;
    v59 = *(sub_2676C8B8C() + 16);

    v60 = v54;
    v25 = v75;
    (*(v28 + 8))(v33, v60);
    *(v55 + 14) = v59;
    _os_log_impl(&dword_2675D4000, v51, v52, "#withReply %s: number of recipients: %ld", v55, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v56);
    MEMORY[0x26D5FEA80](v56, -1, -1);
    MEMORY[0x26D5FEA80](v55, -1, -1);
  }

  else
  {
    (*(v28 + 8))(v33, v49);
  }

  v61 = sub_2676C8BAC();
  if (v62)
  {
    v63 = v61;
    v64 = v62;
    sub_2676C9ECC();
    __swift_project_boxed_opaque_existential_1(v84, v84[3]);
    v65 = v77;
    sub_2676C98EC();
    v66 = sub_2676C911C();
    __swift_storeEnumTagSinglePayload(v65, 0, 1, v66);
    sub_2676B3184(v65, v63, v64);

    sub_2675EB7EC(v65, &qword_2801CCED8, &unk_2676D1390);
    __swift_destroy_boxed_opaque_existential_1(v84);
    sub_2676CBFEC();

    v67 = 0;
  }

  else
  {
    v67 = 1;
  }

  v68 = sub_2676CB3FC();
  __swift_storeEnumTagSinglePayload(v25, v67, 1, v68);
  type metadata accessor for MailLabelCATs();
  sub_2676CB47C();
  sub_2676CB3BC();
  v69 = v80;
  sub_26761A2EC(v25);

  sub_2676CC68C();
  sub_2675EB7EC(v69, &qword_2801CC440, &qword_2676CEEF0);
  sub_2676C8BBC();
  sub_2675EB7EC(v25, &qword_2801CBFD0, &qword_2676CDEA0);
  return (v78)(v82, v3, v83);
}

uint64_t MailMessagePrototype.debugDescription.getter()
{
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CDB50, &unk_2676D4480);
  OUTLINED_FUNCTION_2_6(v77);
  v1 = *(v0 + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_9_1();
  v76 = v3;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD860, &unk_2676D39A0);
  OUTLINED_FUNCTION_2_6(v75);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_9_1();
  v74 = v7;
  v8 = sub_2676C90CC();
  v9 = OUTLINED_FUNCTION_3(v8);
  v73 = v10;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_3_2();
  v15 = v14 - v13;
  v16 = sub_2676C8C8C();
  v17 = OUTLINED_FUNCTION_3(v16);
  v19 = v18;
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_3_2();
  v24 = v23 - v22;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CBFE0, &qword_2676D1070);
  OUTLINED_FUNCTION_4_1(v25);
  v27 = *(v26 + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v28);
  v30 = &v72 - v29;
  v80 = 0;
  v81 = 0xE000000000000000;
  sub_2676CC3FC();
  MEMORY[0x26D5FDD00](540697705, 0xE400000000000000);
  v31 = sub_2676C8ABC();
  MEMORY[0x26D5FDD00](v31);

  MEMORY[0x26D5FDD00](0x203A6F740ALL, 0xE500000000000000);
  sub_2676C8ACC();
  OUTLINED_FUNCTION_11_28();
  v33 = v32;
  v35 = v34;

  MEMORY[0x26D5FDD00](v33, v35);

  OUTLINED_FUNCTION_10_20();
  sub_2676C8A9C();
  OUTLINED_FUNCTION_11_28();
  v37 = v36;
  v39 = v38;

  MEMORY[0x26D5FDD00](v37, v39);

  OUTLINED_FUNCTION_9_29();
  sub_2676C8ADC();
  OUTLINED_FUNCTION_11_28();
  v41 = v40;
  v43 = v42;

  MEMORY[0x26D5FDD00](v41, v43);

  OUTLINED_FUNCTION_5_22();
  v78 = sub_2676C8BAC();
  v79 = v44;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC9B0, &unk_2676CFE50);
  v45 = sub_2676CBFBC();
  MEMORY[0x26D5FDD00](v45);

  OUTLINED_FUNCTION_7_25();
  sub_2676C8AFC();
  v46 = sub_26762D208();
  v48 = v47;
  sub_2675EB7EC(v30, &qword_2801CBFE0, &qword_2676D1070);
  v78 = v46;
  v79 = v48;
  v49 = sub_2676CBFBC();
  MEMORY[0x26D5FDD00](v49);

  MEMORY[0x26D5FDD00](0x3A7265646E65730ALL, 0xE900000000000020);
  sub_2676C8B3C();
  sub_2676CC49C();
  (*(v19 + 8))(v24, v16);
  MEMORY[0x26D5FDD00](0x6F54796C7065720ALL, 0xEA0000000000203ALL);
  sub_2676C8B8C();
  OUTLINED_FUNCTION_11_28();
  v51 = v50;
  v53 = v52;

  MEMORY[0x26D5FDD00](v51, v53);

  MEMORY[0x26D5FDD00](0x6E6553657461640ALL, 0xEB00000000203A74);
  sub_2676C8BDC();
  sub_2676988D0();
  v54 = sub_2676CC56C();
  MEMORY[0x26D5FDD00](v54);

  v55 = *(v73 + 8);
  v55(v15, v8);
  MEMORY[0x26D5FDD00](0x636552657461640ALL, 0xEF203A6465697665);
  sub_2676C8A7C();
  v56 = sub_2676CC56C();
  MEMORY[0x26D5FDD00](v56);

  v55(v15, v8);
  MEMORY[0x26D5FDD00](0x3A6461655273690ALL, 0xE900000000000020);
  v57 = sub_2676C8B2C();
  v58 = (v57 & 1) == 0;
  if (v57)
  {
    v59 = 1702195828;
  }

  else
  {
    v59 = 0x65736C6166;
  }

  if (v58)
  {
    v60 = 0xE500000000000000;
  }

  else
  {
    v60 = 0xE400000000000000;
  }

  MEMORY[0x26D5FDD00](v59, v60);

  MEMORY[0x26D5FDD00](0x3A6B6E754A73690ALL, 0xE900000000000020);
  v61 = sub_2676C8B1C();
  v62 = (v61 & 1) == 0;
  if (v61)
  {
    v63 = 1702195828;
  }

  else
  {
    v63 = 0x65736C6166;
  }

  if (v62)
  {
    v64 = 0xE500000000000000;
  }

  else
  {
    v64 = 0xE400000000000000;
  }

  MEMORY[0x26D5FDD00](v63, v64);

  MEMORY[0x26D5FDD00](0x756269727474610ALL, 0xED0000203A736574);
  v65 = sub_2676C8A6C();
  v66 = sub_2676C8A5C();
  v67 = MEMORY[0x26D5FDDD0](v65, v66);
  v69 = v68;

  MEMORY[0x26D5FDD00](v67, v69);

  OUTLINED_FUNCTION_4_32();
  sub_2676C8B6C();
  v70 = sub_2676CBFBC();
  MEMORY[0x26D5FDD00](v70);

  MEMORY[0x26D5FDD00](0x786F626C69616D0ALL, 0xEA0000000000203ALL);
  sub_2676C8B7C();
  sub_2676CBFBC();
  OUTLINED_FUNCTION_12_17();

  return v80;
}

unint64_t sub_2676988D0()
{
  result = qword_2801CC4A8;
  if (!qword_2801CC4A8)
  {
    sub_2676C90CC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2801CC4A8);
  }

  return result;
}

BOOL sub_267698928(uint64_t a1)
{
  v2 = sub_2676C8A9C();
  v10 = a1;
  v3 = sub_2676A2748(sub_267698D0C, v9, v2);

  if (v3)
  {
    return 0;
  }

  else
  {
    v5 = sub_2676C8ADC();
    MEMORY[0x28223BE20](v5);
    v8[2] = a1;
    v6 = sub_2676A2748(sub_267698D2C, v8, v5);

    return !v6;
  }
}

uint64_t sub_267698A24()
{
  v0 = sub_2676C8C4C();
  v2 = v1;
  if (v0 == sub_2676C8C4C() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_2676CC59C();
  }

  return v5 & 1;
}

uint64_t sub_267698ABC(char a1)
{
  if (a1)
  {
    return 6647407;
  }

  else
  {
    return 7105633;
  }
}

uint64_t sub_267698ADC()
{
  v0 = sub_2676CC50C();

  if (v0 == 1)
  {
    v1 = 1;
  }

  else
  {
    v1 = 2;
  }

  if (v0)
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

_BYTE *storeEnumTagSinglePayload for ReplyOption(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_267698C34@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_267698ADC();
  *a2 = result;
  return result;
}

uint64_t sub_267698C64@<X0>(uint64_t *a1@<X8>)
{
  result = sub_267698ABC(*v1);
  *a1 = result;
  a1[1] = 0xE300000000000000;
  return result;
}

unint64_t sub_267698C98()
{
  result = qword_2801CDB58;
  if (!qword_2801CDB58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2801CDB58);
  }

  return result;
}

void OUTLINED_FUNCTION_4_32()
{

  JUMPOUT(0x26D5FDD00);
}

void OUTLINED_FUNCTION_5_22()
{

  JUMPOUT(0x26D5FDD00);
}

void OUTLINED_FUNCTION_7_25()
{

  JUMPOUT(0x26D5FDD00);
}

void OUTLINED_FUNCTION_9_29()
{

  JUMPOUT(0x26D5FDD00);
}

void OUTLINED_FUNCTION_10_20()
{

  JUMPOUT(0x26D5FDD00);
}

void OUTLINED_FUNCTION_11_28()
{

  JUMPOUT(0x26D5FDDD0);
}

void OUTLINED_FUNCTION_12_17()
{

  JUMPOUT(0x26D5FDD00);
}

uint64_t sub_267698EB4(uint64_t a1)
{
  OUTLINED_FUNCTION_59_3(a1);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  if (v1)
  {
    OUTLINED_FUNCTION_14_2(v4);
    v6 = *(v5 + 16);
    v7 = *(v5 + 80);
    v8 = OUTLINED_FUNCTION_64_4();
    v9(v8);
  }

  v10 = OUTLINED_FUNCTION_57_9();

  return __swift_storeEnumTagSinglePayload(v10, v11, v12, v13);
}

uint64_t sub_267698F3C(uint64_t a1)
{
  OUTLINED_FUNCTION_59_3(a1);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC3D8, &unk_2676CEC00);
  if (v3)
  {
    sub_2675F95E4(v2 + ((*(*(v4 - 8) + 80) + 32) & ~*(*(v4 - 8) + 80)), v1, &qword_2801CC3D8, &unk_2676CEC00);
  }

  v5 = OUTLINED_FUNCTION_57_9();

  return __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
}

uint64_t sub_26769901C(uint64_t a1)
{
  OUTLINED_FUNCTION_59_3(a1);
  v3 = v2(0);
  if (v1)
  {
    OUTLINED_FUNCTION_14_2(v3);
    v5 = *(v4 + 16);
    v6 = *(v4 + 80);
    v7 = OUTLINED_FUNCTION_64_4();
    v8(v7);
  }

  v9 = OUTLINED_FUNCTION_57_9();

  return __swift_storeEnumTagSinglePayload(v9, v10, v11, v12);
}

uint64_t sub_2676990A4()
{
  OUTLINED_FUNCTION_5_6();
  result = sub_2676CB9AC();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_2676990CC(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_2676CB9BC();
}

uint64_t SendMailPlan.__allocating_init()()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  SendMailPlan.init()();
  return v3;
}

uint64_t sub_267699180()
{
  OUTLINED_FUNCTION_5_6();
  result = sub_2676C8D4C();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_2676991A8(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_2676C8D5C();
}

uint64_t sub_2676991E8()
{
  OUTLINED_FUNCTION_5_6();
  result = sub_2676C8CDC();
  *v0 = result;
  return result;
}

uint64_t sub_267699210(uint64_t *a1)
{
  v1 = *a1;

  return sub_2676C8CEC();
}

uint64_t sub_26769923C()
{
  OUTLINED_FUNCTION_5_6();
  result = sub_2676C8CAC();
  *v0 = result;
  return result;
}

uint64_t sub_267699264(uint64_t *a1)
{
  v1 = *a1;

  return sub_2676C8CBC();
}

uint64_t sub_267699290()
{
  OUTLINED_FUNCTION_5_6();
  result = sub_2676C8CFC();
  *v0 = result;
  return result;
}

uint64_t sub_2676992B8(uint64_t *a1)
{
  v1 = *a1;

  return sub_2676C8D0C();
}

uint64_t sub_267699308(uint64_t a1)
{
  v3 = OUTLINED_FUNCTION_49_1();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_4_1(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_19_1();
  sub_2675F95E4(a1, v1, &qword_2801CBFE0, &qword_2676D1070);
  return sub_2676C8D2C();
}

uint64_t sub_2676993D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(char *))
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC748, &unk_2676CF7E0);
  OUTLINED_FUNCTION_4_1(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20]();
  v11 = &v13 - v10;
  sub_2675F95E4(a1, &v13 - v10, &qword_2801CC748, &unk_2676CF7E0);
  return a5(v11);
}

uint64_t sub_2676994B8(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC658, &qword_2676D45A0);
  OUTLINED_FUNCTION_3(v3);
  v5 = v4;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v8);
  v10 = &v20 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC720, &qword_2676CF7D0);
  OUTLINED_FUNCTION_3(v11);
  v13 = v12;
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v16);
  v18 = &v20 - v17;
  (*(v13 + 16))(&v20 - v17, v1 + OBJC_IVAR____TtC16SiriMailInternal12SendMailPlan__sendMessageTask, v11);
  (*(v5 + 16))(v10, a1, v3);
  sub_2676C97AC();
  (*(v5 + 8))(a1, v3);
  return (*(v13 + 8))(v18, v11);
}

void (*sub_26769965C(void *a1))(void *a1)
{
  v2 = __swift_coroFrameAllocStub(0x40uLL);
  *a1 = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC720, &qword_2676CF7D0);
  v2[4] = v3;
  OUTLINED_FUNCTION_3(v3);
  v5 = v4;
  v2[5] = v4;
  v2[6] = __swift_coroFrameAllocStub(*(v6 + 64));
  (*(v5 + 16))();
  OUTLINED_FUNCTION_49_1();
  v2[7] = sub_2676C978C();
  return sub_26765BF6C;
}

uint64_t sub_267699768(void (*a1)(uint64_t))
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC720, &qword_2676CF7D0);
  OUTLINED_FUNCTION_3(v4);
  v6 = v5;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_19_1();
  (*(v6 + 16))(v2, v1 + OBJC_IVAR____TtC16SiriMailInternal12SendMailPlan__sendMessageTask, v4);
  a1(v4);
  return (*(v6 + 8))(v2, v4);
}

uint64_t SendMailPlan.init()()
{
  sub_2676CBA1C();
  OUTLINED_FUNCTION_0_28();
  sub_2676A15C4(v1, v2);
  sub_2676C97BC();
  *(v0 + OBJC_IVAR____TtC16SiriMailInternal12SendMailPlan_confirmIntentOptions) = 0;
  sub_2676CB38C();
  v3 = sub_2676CB37C();
  v18 = 0;
  memset(v17, 0, sizeof(v17));
  v16 = 0;
  memset(v15, 0, sizeof(v15));
  v14 = 0;
  memset(v13, 0, sizeof(v13));
  v12[3] = &type metadata for LinkServicesProvider;
  v12[4] = &protocol witness table for LinkServicesProvider;
  v4 = sub_2676C9B9C();
  OUTLINED_FUNCTION_7_13(v4);
  v11[3] = v4;
  v11[4] = &protocol witness table for ResponseFactory;
  v11[0] = sub_2676C9B8C();
  sub_2676C8D8C();

  sub_2676C981C();
  sub_2676CB0DC();
  sub_2676C981C();
  sub_2676C981C();
  sub_2676C981C();
  v5 = v0 + OBJC_IVAR____TtC16SiriMailInternal15MailSendingPlan_resolverOverride;
  *(v5 + 32) = 0;
  *v5 = 0u;
  *(v5 + 16) = 0u;
  *(v0 + OBJC_IVAR____TtC16SiriMailInternal15MailSendingPlan_globals) = v3;
  swift_beginAccess();
  v6 = v3;
  sub_267614854(v17, v5);
  swift_endAccess();
  sub_2676149CC(v12, v0 + OBJC_IVAR____TtC16SiriMailInternal15MailSendingPlan_linkServicesProvider);
  sub_2675F95E4(v15, v0 + OBJC_IVAR____TtC16SiriMailInternal15MailSendingPlan_skContactManagerOverride, &qword_2801CC6B0, &qword_2676CFC80);
  sub_2676149CC(v11, v0 + OBJC_IVAR____TtC16SiriMailInternal15MailSendingPlan_responseFactory);
  sub_2675F95E4(v13, &v8, &off_2801CC6B8, &unk_2676CF600);
  if (v9)
  {

    sub_267662EC4(v13, &off_2801CC6B8, &unk_2676CF600);
    sub_267662EC4(v15, &qword_2801CC6B0, &qword_2676CFC80);
    sub_267662EC4(v17, &qword_2801CC6A8, &unk_2676CF5F0);
    __swift_destroy_boxed_opaque_existential_1(v12);
    __swift_destroy_boxed_opaque_existential_1(v11);
    sub_267614E14(&v8, v10);
  }

  else
  {
    sub_2676C964C();

    sub_267662EC4(v13, &off_2801CC6B8, &unk_2676CF600);
    sub_267662EC4(v15, &qword_2801CC6B0, &qword_2676CFC80);
    sub_267662EC4(v17, &qword_2801CC6A8, &unk_2676CF5F0);
    __swift_destroy_boxed_opaque_existential_1(v12);
    __swift_destroy_boxed_opaque_existential_1(v11);
    if (v9)
    {
      sub_267662EC4(&v8, &off_2801CC6B8, &unk_2676CF600);
    }
  }

  sub_267614E14(v10, v0 + OBJC_IVAR____TtC16SiriMailInternal15MailSendingPlan_eventSender);
  return v0;
}

void sub_267699BCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_21_1();
  a19 = v22;
  a20 = v23;
  v265 = v20;
  v25 = v24;
  v271 = v26;
  v27 = sub_2676C9E6C();
  v28 = OUTLINED_FUNCTION_3(v27);
  v269 = v29;
  v270[0] = v28;
  v31 = *(v30 + 64);
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_3_2();
  v268 = v33 - v32;
  v259 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC8D8, &unk_2676CFC70);
  OUTLINED_FUNCTION_3(v259);
  v258 = v34;
  v36 = *(v35 + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_11_5(v38);
  v39 = sub_2676C9EAC();
  v40 = OUTLINED_FUNCTION_3(v39);
  v42 = v41;
  v44 = *(v43 + 64);
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_3_2();
  OUTLINED_FUNCTION_11_5(v46 - v45);
  v248 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC9D8, &unk_2676CFE60);
  OUTLINED_FUNCTION_3(v248);
  v247 = v47;
  v49 = *(v48 + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v50);
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_11_5(v51);
  v244 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC8B8, &unk_2676CFC60);
  OUTLINED_FUNCTION_3(v244);
  v243 = v52;
  v54 = *(v53 + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v55);
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_11_5(v56);
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC428, &unk_2676CEDD0);
  v58 = OUTLINED_FUNCTION_4_1(v57);
  v60 = *(v59 + 64);
  MEMORY[0x28223BE20](v58);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_4_13();
  MEMORY[0x28223BE20](v61);
  OUTLINED_FUNCTION_10_4();
  OUTLINED_FUNCTION_4_13();
  MEMORY[0x28223BE20](v62);
  OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_11_5(v63);
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD290, &qword_2676D24C0);
  OUTLINED_FUNCTION_4_1(v64);
  v66 = *(v65 + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v67);
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_11_5(v68);
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD298, &unk_2676D1FC0);
  OUTLINED_FUNCTION_3(v69);
  v251 = v70;
  v72 = *(v71 + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v73);
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_11_5(v74);
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC650, &unk_2676CF560);
  OUTLINED_FUNCTION_4_1(v75);
  v77 = *(v76 + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v78);
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_11_5(v79);
  v256 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC658, &qword_2676D45A0);
  v80 = OUTLINED_FUNCTION_3(v256);
  v253 = v81;
  v83 = *(v82 + 64);
  MEMORY[0x28223BE20](v80);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_4_13();
  MEMORY[0x28223BE20](v84);
  OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_11_5(v85);
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC640, &unk_2676CF550);
  OUTLINED_FUNCTION_4_1(v86);
  v88 = *(v87 + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v89);
  OUTLINED_FUNCTION_9_1();
  v266 = v90;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC648, &qword_2676CF990);
  v92 = OUTLINED_FUNCTION_3(v91);
  v257 = v93;
  v95 = *(v94 + 64);
  MEMORY[0x28223BE20](v92);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_4_13();
  MEMORY[0x28223BE20](v96);
  OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_11_5(v97);
  v98 = sub_2676C9EBC();
  v273 = OUTLINED_FUNCTION_3(v98);
  v274 = v99;
  v101 = *(v100 + 64);
  MEMORY[0x28223BE20](v273);
  OUTLINED_FUNCTION_55_3();
  MEMORY[0x28223BE20](v102);
  OUTLINED_FUNCTION_10_4();
  OUTLINED_FUNCTION_4_13();
  v104 = MEMORY[0x28223BE20](v103);
  v106 = &v238 - v105;
  MEMORY[0x28223BE20](v104);
  v108 = &v238 - v107;
  if (qword_2801CBAA0 != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v263 = v42;
  v264 = v39;
  v267 = v91;
  v254 = v69;
  v109 = sub_2676CBE4C();
  v270[1] = __swift_project_value_buffer(v109, qword_2801CDC90);
  v110 = sub_2676CBE2C();
  v111 = sub_2676CC23C();
  if (OUTLINED_FUNCTION_5_7(v111))
  {
    v112 = OUTLINED_FUNCTION_17_3();
    *v112 = 0;
    _os_log_impl(&dword_2675D4000, v110, v111, "#SendMailPlan accept(input:)", v112, 2u);
    OUTLINED_FUNCTION_2_5();
  }

  v113 = v25;
  sub_2676C9E5C();
  v114 = v273;
  v115 = v274;
  v116 = *(v274 + 88);
  v117 = OUTLINED_FUNCTION_49_1();
  v118 = v116(v117);
  v119 = *MEMORY[0x277D5C160];
  v120 = v108;
  v121 = *(v115 + 8);
  v121(v120, v114);
  v272 = v113;
  if (v118 == v119)
  {
    v239 = v116;
    sub_2676C9E5C();
    sub_2676371E0();
    if (v122)
    {
      v123 = sub_2676CA77C();

      v124 = v266;
      sub_267698EB4(v123);

      v121(v106, v114);
      v125 = OUTLINED_FUNCTION_33_4();
      v126 = v267;
      OUTLINED_FUNCTION_21_3(v125, v127, v267);
      if (!v160)
      {
        v238 = v121;
        OUTLINED_FUNCTION_51_2(&a12);
        (*(v128 + 32))(v260, v124, v126);
        v129 = *(v106 + 2);
        v130 = v255;
        v131 = OUTLINED_FUNCTION_34_9();
        (v129)(v131);
        sub_2676CBA1C();
        OUTLINED_FUNCTION_0_28();
        sub_2676A15C4(v132, v133);
        OUTLINED_FUNCTION_34_9();
        v135 = v134;
        v266 = v136;
        sub_2676CA3FC();
        v137 = v256;
        OUTLINED_FUNCTION_21_3(v135, 1, v256);
        if (!v160)
        {
          OUTLINED_FUNCTION_23_8(v279);
          v180 = *(v179 + 32);
          v181 = v250;
          v182 = OUTLINED_FUNCTION_83_1();
          v183(v182);
          v184 = v261;
          sub_2676C9E5C();
          v185 = OUTLINED_FUNCTION_83_1();
          sub_26769C510(v185, v186, v187, v188, v189, v190, v191, v192, v238, v239, v240, v241, v242, v243, v244, v245, v246, v247, v248, v249);
          v238(v184, v273);
          (*(v129 + 8))(v181, v137);
          (*(v106 + 1))(v260, v126);
          goto LABEL_32;
        }

        sub_267662EC4(v135, &qword_2801CC650, &unk_2676CF560);
        v138 = v260;
        (v129)(v130, v260, v126);
        sub_2676CBADC();
        v139 = sub_2676A15C4(&qword_2801CCA48, MEMORY[0x277D5C8A8]);
        OUTLINED_FUNCTION_23_8(&v277);
        OUTLINED_FUNCTION_34_9();
        sub_2676CA3FC();
        v140 = v254;
        OUTLINED_FUNCTION_21_3(v129, 1, v254);
        if (!v160)
        {
          (*(v251 + 32))(v252, v129, v140);
          KeyPath = swift_getKeyPath();
          OUTLINED_FUNCTION_1_30();
          sub_2676A15C4(v194, v195);
          OUTLINED_FUNCTION_60_0(&v276);
          OUTLINED_FUNCTION_55_2();
          v274 = v139;
          sub_2676CA3EC();

          v196 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CBF60, &unk_2676CEDE0);
          EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v21, 1, v196);
          sub_267662EC4(v21, &qword_2801CC428, &unk_2676CEDD0);
          if (EnumTagSinglePayload == 1)
          {
            v198 = v242;
            sub_26761D288();
            swift_getKeyPath();
            OUTLINED_FUNCTION_23_8(&v274);
            v199 = v244;
            sub_2676C97EC();

            OUTLINED_FUNCTION_27_5(&v271);
            v200(v198, v199);
            v201 = v248;
            sub_2676C983C();
            OUTLINED_FUNCTION_27_5(&v275);
            v202(KeyPath, v201);
            swift_getKeyPath();
            v203 = sub_26769965C(&v277);
            v204 = sub_2676CA3DC();
            if (__swift_getEnumTagSinglePayload(v205, 1, v196))
            {
              v206 = OUTLINED_FUNCTION_29_9();
              v204(v206);

              v207 = OUTLINED_FUNCTION_30_8();
              v203(v207);
            }

            else
            {
              v222 = swift_getKeyPath();
              swift_getKeyPath();
              v223 = v240;
              sub_2676CA3EC();

              v224 = OUTLINED_FUNCTION_86_1();
              OUTLINED_FUNCTION_21_3(v224, v225, v196);
              if (v160)
              {
                sub_267662EC4(v223, &qword_2801CC428, &unk_2676CEDD0);
              }

              else
              {
                swift_getKeyPath();
                sub_2676CA89C();
                v274 = v222;

                OUTLINED_FUNCTION_14_2(v196);
                (*(v226 + 8))(v223, v196);
              }

              sub_2676CA8AC();
              v227 = OUTLINED_FUNCTION_29_9();
              v204(v227);

              v228 = OUTLINED_FUNCTION_30_8();
              v203(v228);
            }

            v229 = sub_2676CBE2C();
            v230 = sub_2676CC23C();
            v231 = OUTLINED_FUNCTION_70_2(v230);
            v232 = v254;
            v233 = v267;
            v234 = v257;
            if (v231)
            {
              *OUTLINED_FUNCTION_17_3() = 0;
              OUTLINED_FUNCTION_4_18(&dword_2675D4000, v235, v236, "#SendMailPlan accept(input:) processed generic update message task, returning .yes");
              OUTLINED_FUNCTION_2_5();
            }

            sub_2676C974C();
            OUTLINED_FUNCTION_27_5(v278);
            v237(v252, v232);
            (*(v234 + 8))(v260, v233);
          }

          else
          {
            v208 = sub_2676CBE2C();
            v209 = sub_2676CC23C();
            if (OUTLINED_FUNCTION_5_7(v209))
            {
              v210 = OUTLINED_FUNCTION_17_3();
              *v210 = 0;
              _os_log_impl(&dword_2675D4000, v208, v209, "#SendMailPlan accept(input:) processed update message task, returning .yes", v210, 2u);
              OUTLINED_FUNCTION_2_5();
            }

            v211 = swift_getKeyPath();
            OUTLINED_FUNCTION_34_7(&v273);
            v212 = v252;
            sub_2676CA3EC();

            OUTLINED_FUNCTION_23_8(v270);
            sub_2676CA3BC();
            OUTLINED_FUNCTION_34_7(&a17);
            sub_2676C9E5C();
            sub_26769C510(v211, v138, v213, v214, v215, v216, v217, v218, v238, v239, v240, v241, v242, v243, v244, v245, v246, v247, v248, v249);
            v238(v138, v273);
            OUTLINED_FUNCTION_27_5(v279);
            v219(v211, v256);
            OUTLINED_FUNCTION_27_5(v278);
            v220(v212, v140);
            OUTLINED_FUNCTION_27_5(&a12);
            v221(v260, v267);
          }

          goto LABEL_32;
        }

        OUTLINED_FUNCTION_27_5(&a12);
        v141();
        sub_267662EC4(v129, &qword_2801CD290, &qword_2676D24C0);
        v121 = v238;
        goto LABEL_15;
      }
    }

    else
    {
      v121(v106, v114);
      v124 = v266;
      v142 = OUTLINED_FUNCTION_33_4();
      __swift_storeEnumTagSinglePayload(v142, v143, 1, v144);
    }

    sub_267662EC4(v124, &qword_2801CC640, &unk_2676CF550);
LABEL_15:
    v116 = v239;
  }

  sub_2676C9E5C();
  v145 = OUTLINED_FUNCTION_45_4();
  if (v116(v145) != *MEMORY[0x277D5C150])
  {
    v161 = OUTLINED_FUNCTION_45_4();
    (v121)(v161);
    goto LABEL_24;
  }

  v146 = *(v274 + 96);
  v147 = OUTLINED_FUNCTION_45_4();
  v148(v147);
  v150 = v263;
  v149 = v264;
  v151 = v262;
  (*(v263 + 32))(v262, v21, v264);
  v152 = sub_2676C9E8C();
  v154 = v153;
  v155 = sub_2676C96CC();
  v156 = [v155 identifier];

  v157 = sub_2676CBF6C();
  v159 = v158;

  v160 = v152 == v157 && v154 == v159;
  if (v160)
  {
  }

  else
  {
    sub_2676CC59C();
    OUTLINED_FUNCTION_96_1();

    if ((v152 & 1) == 0)
    {
      (*(v150 + 8))(v151, v149);
LABEL_24:
      v163 = v268;
      v162 = v269;
      v164 = v270[0];
      (*(v269 + 16))(v268, v272, v270[0]);
      v165 = sub_2676CBE2C();
      v166 = sub_2676CC23C();
      if (OUTLINED_FUNCTION_70_2(v166))
      {
        v167 = OUTLINED_FUNCTION_5_3();
        v168 = OUTLINED_FUNCTION_41_1();
        v277 = v168;
        *v167 = 136315138;
        sub_2676C9E5C();
        v169 = sub_2676CBFBC();
        v171 = v170;
        (*(v162 + 8))(v163, v164);
        v172 = sub_2676B0B84(v169, v171, &v277);

        *(v167 + 4) = v172;
        _os_log_impl(&dword_2675D4000, v165, v166, "#SendMailPlan accept(input:): got a non USO parse, rejecting parse: %s", v167, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v168);
        OUTLINED_FUNCTION_33_6();
        OUTLINED_FUNCTION_30_6();
      }

      else
      {

        (*(v162 + 8))(v163, v164);
      }

      sub_2676C973C();
      goto LABEL_32;
    }
  }

  v173 = sub_2676CBE2C();
  v174 = sub_2676CC23C();
  if (OUTLINED_FUNCTION_70_2(v174))
  {
    v121 = OUTLINED_FUNCTION_17_3();
    *v121 = 0;
    OUTLINED_FUNCTION_4_18(&dword_2675D4000, v175, v176, "#SendMailPlan got confirm DI, accepting parse");
    OUTLINED_FUNCTION_2_5();
  }

  OUTLINED_FUNCTION_34_7(&a13);
  sub_26761D2DC();
  LOBYTE(v277) = 1;
  v177 = v259;
  sub_2676C984C();
  OUTLINED_FUNCTION_27_5(&a14);
  v178(v121, v177);
  sub_2676C974C();
  (*(v150 + 8))(v151, v149);
LABEL_32:
  OUTLINED_FUNCTION_20_1();
}

void sub_26769AE40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_21_1();
  a19 = v22;
  a20 = v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD230, &unk_2676D4670);
  OUTLINED_FUNCTION_4_1(v24);
  v26 = *(v25 + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_11_5(v28);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC8B8, &unk_2676CFC60);
  v30 = OUTLINED_FUNCTION_3(v29);
  v131 = v31;
  v33 = *(v32 + 64);
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_4_13();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_10_4();
  OUTLINED_FUNCTION_4_13();
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_10_4();
  OUTLINED_FUNCTION_4_13();
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_55_3();
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_24_1();
  v129 = v38;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CDB68, &qword_2676D4B60);
  OUTLINED_FUNCTION_3(v39);
  v41 = v40;
  v43 = *(v42 + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_50_3();
  v45 = type metadata accessor for ResolveSendMailIntent();
  v46 = OUTLINED_FUNCTION_2_6(v45);
  v48 = *(v47 + 64);
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_3_2();
  v51 = v50 - v49;
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CDB70, &qword_2676D4680);
  OUTLINED_FUNCTION_3(v120);
  v53 = *(v52 + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v54);
  OUTLINED_FUNCTION_9_1();
  v130 = v55;
  v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CDB78, &qword_2676D4688);
  OUTLINED_FUNCTION_3(v121);
  v122 = v56;
  v58 = *(v57 + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v59);
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_11_5(v60);
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CDB80, &qword_2676D4690);
  v123 = OUTLINED_FUNCTION_3(v61);
  v124 = v62;
  v64 = *(v63 + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v65);
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_11_5(v66);
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CDB88, &qword_2676D4698);
  v125 = OUTLINED_FUNCTION_3(v67);
  v126 = v68;
  v70 = *(v69 + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v71);
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_11_5(v72);
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CDB90, &qword_2676D46A0);
  OUTLINED_FUNCTION_3(v73);
  v127 = v74;
  v76 = *(v75 + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v77);
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_11_5(v78);
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CDB98, &qword_2676D46A8);
  OUTLINED_FUNCTION_3(v79);
  v128 = v80;
  v82 = *(v81 + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v83);
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_11_5(v84);
  sub_267699750();
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_28();
  sub_2676A15C4(v85, v86);
  OUTLINED_FUNCTION_1_30();
  sub_2676A15C4(v87, v88);
  sub_2676C9A2C();

  (*(v41 + 8))(v21, v39);
  sub_26761D288();
  swift_getKeyPath();
  v89 = v51 + v45[6];
  sub_2676C97EC();

  v90 = *(v131 + 8);
  v90(v129, v29);
  sub_26761D288();
  swift_getKeyPath();
  v91 = v51 + v45[7];
  sub_2676C97EC();

  v92 = OUTLINED_FUNCTION_45_4();
  (v90)(v92);
  OUTLINED_FUNCTION_23_8(&v132);
  sub_26761D288();
  swift_getKeyPath();
  v93 = v45[8];
  OUTLINED_FUNCTION_66_3();

  v94 = OUTLINED_FUNCTION_43_2();
  (v90)(v94);
  OUTLINED_FUNCTION_23_8(&v133);
  sub_26761D288();
  swift_getKeyPath();
  v95 = v45[9];
  OUTLINED_FUNCTION_66_3();

  v96 = OUTLINED_FUNCTION_43_2();
  (v90)(v96);
  v118 = v90;
  OUTLINED_FUNCTION_23_8(&a9);
  sub_26761D288();
  swift_getKeyPath();
  v97 = v45[10];
  OUTLINED_FUNCTION_66_3();

  v98 = OUTLINED_FUNCTION_43_2();
  (v90)(v98);
  v99 = v45[11];
  v100 = sub_2676C8BFC();
  __swift_storeEnumTagSinglePayload(v51 + v99, 1, 1, v100);
  v101 = OBJC_IVAR____TtC16SiriMailInternal15MailSendingPlan_resolverOverride;
  swift_beginAccess();
  sub_2675F95E4(v20 + v101, v51 + v45[12], &qword_2801CC6A8, &unk_2676CF5F0);
  sub_2675F95E4(v20 + OBJC_IVAR____TtC16SiriMailInternal15MailSendingPlan_skContactManagerOverride, v51 + v45[13], &qword_2801CC6B0, &qword_2676CFC80);
  v102 = *(v20 + OBJC_IVAR____TtC16SiriMailInternal15MailSendingPlan_globals);
  sub_2676C8D8C();
  v103 = v45[5];
  v104 = v102;
  sub_2676C981C();
  *(v51 + v45[14]) = v104;
  sub_26761D2DC();
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC8D8, &unk_2676CFC70);
  __swift_storeEnumTagSinglePayload(v119, 0, 1, v105);
  sub_2676CBA1C();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC428, &unk_2676CEDD0);
  OUTLINED_FUNCTION_28_9();
  v108 = sub_2676A15C4(v106, v107);
  sub_2676C955C();

  sub_267662EC4(v119, &qword_2801CD230, &unk_2676D4670);
  sub_267662C60(v51);
  sub_26761D288();
  OUTLINED_FUNCTION_21_8();
  OUTLINED_FUNCTION_72_1();
  OUTLINED_FUNCTION_26_10();
  sub_2676A15C4(v109, v110);
  OUTLINED_FUNCTION_36_5(&a10);
  sub_2676C94EC();
  v118(v129, v29);
  OUTLINED_FUNCTION_27_5(&a16);
  v111(v130, v120);

  OUTLINED_FUNCTION_19_4();
  OUTLINED_FUNCTION_72_1();
  OUTLINED_FUNCTION_60_0(&a11);
  OUTLINED_FUNCTION_75_1();
  sub_2676C952C();

  (*(v122 + 8))(v108, v121);

  OUTLINED_FUNCTION_27_8();
  OUTLINED_FUNCTION_72_1();
  OUTLINED_FUNCTION_36_5(&a13);
  sub_2676C954C();

  (*(v124 + 8))(v129, v123);
  OUTLINED_FUNCTION_26_7();
  OUTLINED_FUNCTION_72_1();
  OUTLINED_FUNCTION_60_0(&a15);
  OUTLINED_FUNCTION_75_1();
  sub_2676C951C();
  (*(v126 + 8))(v108, v125);

  OUTLINED_FUNCTION_25_10();
  OUTLINED_FUNCTION_72_1();
  OUTLINED_FUNCTION_51_2(&a17);
  OUTLINED_FUNCTION_89_1();
  sub_2676C94FC();

  v112 = *(v127 + 8);
  v113 = OUTLINED_FUNCTION_45_4();
  v114(v113);
  OUTLINED_FUNCTION_24_7();
  OUTLINED_FUNCTION_72_1();
  sub_2676C933C();
  v115 = *(v128 + 8);
  v116 = OUTLINED_FUNCTION_29_0();
  v117(v116);
  OUTLINED_FUNCTION_20_1();
}

uint64_t sub_26769B974(uint64_t *a1)
{
  v1 = *(a1 + 8);
  v3 = *a1;
  v4 = v1;
  return sub_26761D3E0(&v3, 0);
}

uint64_t sub_26769B9B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[21] = a2;
  v3[22] = a3;
  v3[20] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD278, &unk_2676D1EA8);
  v3[23] = v4;
  v5 = *(v4 - 8);
  v3[24] = v5;
  v6 = *(v5 + 64) + 15;
  v3[25] = swift_task_alloc();
  v7 = sub_2676C9CCC();
  v3[26] = v7;
  v8 = *(v7 - 8);
  v3[27] = v8;
  v9 = *(v8 + 64) + 15;
  v3[28] = swift_task_alloc();
  v10 = sub_2676CB0DC();
  v3[29] = v10;
  v11 = *(v10 - 8);
  v3[30] = v11;
  v12 = *(v11 + 64) + 15;
  v3[31] = swift_task_alloc();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC8C8, &unk_2676D1C40);
  v3[32] = v13;
  v14 = *(v13 - 8);
  v3[33] = v14;
  v15 = *(v14 + 64) + 15;
  v3[34] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26769BBA8, 0, 0);
}

uint64_t sub_26769BBA8()
{
  v61 = v0;
  if (qword_2801CBAA0 != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v59 = (v0 + 16);
  v1 = sub_2676CBE4C();
  __swift_project_value_buffer(v1, qword_2801CDC90);
  v2 = sub_2676CBE2C();
  v3 = sub_2676CC26C();
  if (OUTLINED_FUNCTION_5_7(v3))
  {
    v4 = OUTLINED_FUNCTION_17_3();
    *v4 = 0;
    _os_log_impl(&dword_2675D4000, v2, v3, "#SendMailPlan handling cancelation", v4, 2u);
    OUTLINED_FUNCTION_33_6();
  }

  v57 = v0[28];
  v58 = v0;
  v6 = v0[33];
  v7 = v0[34];
  v9 = v0[31];
  v8 = v0[32];
  v11 = v0[29];
  v10 = v0[30];
  v5 = v0 + 28;
  v13 = v0[26];
  v12 = v0 + 26;
  v14 = v2;
  v16 = *(v5 - 7);
  v15 = *(v5 - 6);

  sub_26761D2A4();
  (*(v10 + 104))(v9, *MEMORY[0x277D5CA20], v11);
  sub_2676C984C();
  (*(v10 + 8))(v9, v11);
  (*(v6 + 8))(v7, v8);
  *(v5 - 12) = v16;
  v17 = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CCE70, &unk_2676D1300);
  v18 = v59;
  if (swift_dynamicCast())
  {
    v19 = 27;
    v20 = v58;
LABEL_9:
    (*(v20[v19] + 8))(*v5, *v12);

    v25 = sub_2676CBE2C();
    v26 = sub_2676CC26C();
    if (OUTLINED_FUNCTION_5_7(v26))
    {
      v27 = OUTLINED_FUNCTION_17_3();
      *v27 = 0;
      _os_log_impl(&dword_2675D4000, v25, v26, "#SendMailPlan user cancelled or rejected, returning IntentCancelled", v27, 2u);
      OUTLINED_FUNCTION_2_5();
    }

    v28 = swift_task_alloc();
    v20[35] = v28;
    *v28 = v20;
    OUTLINED_FUNCTION_49_2(v28);
    OUTLINED_FUNCTION_5_8();

    return sub_26762E11C();
  }

  v20 = v58;
  v5 = v58 + 25;
  v21 = v58[25];
  v18 = (v58 + 17);
  v22 = v58[23];
  v23 = v58[21];

  v58[17] = v23;
  v24 = v23;
  OUTLINED_FUNCTION_43_2();
  if (swift_dynamicCast())
  {
    v19 = 24;
    v12 = v58 + 23;
    goto LABEL_9;
  }

  v31 = v58[21];

  v58[18] = v31;
  v32 = v31;
  if (swift_dynamicCast())
  {
    v33 = v58[11];
    v34 = v58[12];
    v58[37] = v33;
    v58[38] = v34;
    v35 = *(v58 + 104);
    if (v35 == 1)
    {
      v36 = sub_2676CBE2C();
      v37 = sub_2676CC26C();
      if (OUTLINED_FUNCTION_5_7(v37))
      {
        v38 = OUTLINED_FUNCTION_17_3();
        *v38 = 0;
        _os_log_impl(&dword_2675D4000, v36, v37, "#SendMailPlan RecipientResolutionError.contactMatchWithoutEmailHandle, returning UnsupportedContactNoEmailAddress", v38, 2u);
        OUTLINED_FUNCTION_33_6();
      }

      v39 = v58[22];

      sub_2676149CC(v39 + OBJC_IVAR____TtC16SiriMailInternal15MailSendingPlan_responseFactory, (v58 + 3));
      v58[2] = v33;
      sub_267651D60(v33, v34, 1);
      v40 = swift_task_alloc();
      v58[39] = v40;
      *v40 = v58;
      OUTLINED_FUNCTION_49_2(v40);
      OUTLINED_FUNCTION_5_8();

      return sub_2676BFAF0();
    }

    sub_267651D40(v33, v34, v35);
  }

  v42 = v58[21];

  v43 = v42;
  v44 = sub_2676CBE2C();
  v45 = sub_2676CC26C();

  if (os_log_type_enabled(v44, v45))
  {
    v46 = v58[21];
    v47 = OUTLINED_FUNCTION_5_3();
    v48 = OUTLINED_FUNCTION_41_1();
    v60 = v48;
    *v47 = 136315138;
    swift_getErrorValue();
    v50 = v58[8];
    v49 = v58[9];
    v51 = v58[10];
    v52 = sub_2676CC5FC();
    v54 = sub_2676B0B84(v52, v53, &v60);

    *(v47 + 4) = v54;
    _os_log_impl(&dword_2675D4000, v44, v45, "#SendMailPlan error: %s", v47, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v48);
    OUTLINED_FUNCTION_33_6();
    OUTLINED_FUNCTION_2_5();
  }

  type metadata accessor for GenericError();
  v58[41] = swift_initStackObject();
  v55 = swift_task_alloc();
  v58[42] = v55;
  *v55 = v58;
  OUTLINED_FUNCTION_49_2(v55);
  OUTLINED_FUNCTION_5_8();

  return sub_2676C1B78();
}

uint64_t sub_26769C138()
{
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_9_3();
  v3 = v2;
  OUTLINED_FUNCTION_2_7();
  *v4 = v3;
  v6 = *(v5 + 280);
  v7 = *v1;
  OUTLINED_FUNCTION_0_1();
  *v8 = v7;
  *(v3 + 288) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_26769C4D8, 0, 0);
  }

  else
  {
    OUTLINED_FUNCTION_84_1();

    OUTLINED_FUNCTION_15_0();

    return v9();
  }
}

uint64_t sub_26769C278()
{
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_9_3();
  v3 = v2;
  OUTLINED_FUNCTION_2_7();
  *v4 = v3;
  v6 = *(v5 + 312);
  v7 = *v1;
  OUTLINED_FUNCTION_0_1();
  *v8 = v7;
  *(v3 + 320) = v0;

  sub_267662E0C(v3 + 16);
  if (v0)
  {
    v9 = sub_26769C4BC;
  }

  else
  {
    v9 = sub_26765F750;
  }

  return MEMORY[0x2822009F8](v9, 0, 0);
}

uint64_t sub_26769C37C()
{
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_9_3();
  v3 = v2;
  OUTLINED_FUNCTION_2_7();
  *v4 = v3;
  v6 = *(v5 + 336);
  v7 = *v1;
  OUTLINED_FUNCTION_0_1();
  *v8 = v7;
  *(v3 + 344) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_26769C4F4, 0, 0);
  }

  else
  {
    OUTLINED_FUNCTION_84_1();

    OUTLINED_FUNCTION_15_0();

    return v9();
  }
}

void sub_26769C510(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_21_1();
  a19 = v22;
  a20 = v23;
  v226 = v20;
  v219 = v25;
  v220 = v24;
  v231 = v26;
  v222 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC658, &qword_2676D45A0);
  OUTLINED_FUNCTION_3(v222);
  v205 = v27;
  v29 = *(v28 + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_11_5(v31);
  v214 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC9D0, &unk_2676D37C0);
  OUTLINED_FUNCTION_3(v214);
  v213 = v32;
  v34 = *(v33 + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_11_5(v36);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CDBE0, &qword_2676D4F20);
  v38 = OUTLINED_FUNCTION_4_1(v37);
  v40 = *(v39 + 64);
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_4_13();
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_10_4();
  OUTLINED_FUNCTION_4_13();
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_11_5(v43);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD510, &unk_2676D4970);
  v227 = OUTLINED_FUNCTION_3(v44);
  v228 = v45;
  v47 = *(v46 + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_11_5(v49);
  v212 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC9D8, &unk_2676CFE60);
  OUTLINED_FUNCTION_3(v212);
  v211 = v50;
  v52 = *(v51 + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v53);
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_11_5(v54);
  v203 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC428, &unk_2676CEDD0);
  v55 = OUTLINED_FUNCTION_2_6(v203);
  v57 = *(v56 + 64);
  MEMORY[0x28223BE20](v55);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_4_13();
  MEMORY[0x28223BE20](v58);
  OUTLINED_FUNCTION_10_4();
  OUTLINED_FUNCTION_4_13();
  MEMORY[0x28223BE20](v59);
  OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_11_5(v60);
  v210 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC970, &qword_2676D1C50);
  OUTLINED_FUNCTION_3(v210);
  v209 = v61;
  v63 = *(v62 + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v64);
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_11_5(v65);
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC8B8, &unk_2676CFC60);
  v67 = OUTLINED_FUNCTION_3(v66);
  v224 = v68;
  v225 = v67;
  v70 = *(v69 + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v71);
  OUTLINED_FUNCTION_9_1();
  v223 = v72;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD9A8, &qword_2676D3E40);
  OUTLINED_FUNCTION_3(v73);
  v75 = v74;
  v77 = *(v76 + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v78);
  v80 = &KeyPath - v79;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD3C0, &unk_2676D4DF0);
  OUTLINED_FUNCTION_3(v81);
  v83 = v82;
  v85 = *(v84 + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v86);
  v88 = &KeyPath - v87;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD3B8, &unk_2676D3E60);
  OUTLINED_FUNCTION_3(v89);
  v218 = v90;
  v92 = *(v91 + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v93);
  OUTLINED_FUNCTION_19_1();
  sub_2676CBA1C();
  OUTLINED_FUNCTION_0_28();
  v221 = sub_2676A15C4(v94, v95);
  sub_2676C98BC();
  swift_getKeyPath();
  OUTLINED_FUNCTION_1_30();
  v98 = sub_2676A15C4(v96, v97);
  sub_2676C988C();
  v99 = v98;

  (*(v83 + 8))(v88, v81);
  swift_getKeyPath();
  OUTLINED_FUNCTION_78_3();
  v229 = v89;
  v230 = v21;
  sub_2676C989C();

  LOBYTE(v88) = sub_2676C987C();
  v100 = *(v75 + 8);
  v216 = v75 + 8;
  v100(v80, v73);
  if (v88)
  {
    v199 = v100;
    sub_26761D288();
    swift_getKeyPath();
    OUTLINED_FUNCTION_60_0(&v235);
    sub_2676C97EC();

    v101 = *(v224 + 8);
    v102 = OUTLINED_FUNCTION_29_0();
    v103(v102);
    sub_2676C983C();
    OUTLINED_FUNCTION_27_5(&v236);
    v104 = OUTLINED_FUNCTION_83_1();
    v105(v104);
    swift_getKeyPath();
    v106 = sub_26769965C(&v234);
    v107 = v99;
    v108 = sub_2676CA3DC();
    v110 = v109;
    v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CBF60, &unk_2676CEDE0);
    if (__swift_getEnumTagSinglePayload(v110, 1, v111))
    {
      v112 = OUTLINED_FUNCTION_29_9();
      v108(v112);

      v113 = OUTLINED_FUNCTION_30_8();
      v106(v113);
      v99 = v107;
      v100 = v199;
    }

    else
    {
      v208 = v110;
      v209 = v108;
      v210 = v106;
      KeyPath = swift_getKeyPath();
      swift_getKeyPath();
      OUTLINED_FUNCTION_36_5(&v229);
      sub_2676CA3EC();

      OUTLINED_FUNCTION_21_3(v106, 1, v111);
      if (v114)
      {
        sub_267662EC4(v106, &qword_2801CC428, &unk_2676CEDD0);
      }

      else
      {
        swift_getKeyPath();
        sub_2676CA89C();

        OUTLINED_FUNCTION_14_2(v111);
        v116 = *(v115 + 8);
        v117 = OUTLINED_FUNCTION_16_3();
        v118(v117);
      }

      v100 = v199;
      sub_2676CA8AC();
      v119 = OUTLINED_FUNCTION_29_9();
      v209(v119);

      v120 = OUTLINED_FUNCTION_30_8();
      v210(v120);
      v99 = v107;
    }
  }

  swift_getKeyPath();
  OUTLINED_FUNCTION_78_3();
  sub_2676C989C();

  v121 = sub_2676C987C();
  v100(v80, v73);
  v122 = v228;
  if (v121)
  {
    v123 = v223;
    sub_26761D288();
    swift_getKeyPath();
    OUTLINED_FUNCTION_51_2(&v237);
    v124 = v225;
    sub_2676C97EC();

    (*(v224 + 8))(v123, v124);
    sub_2676C983C();
    OUTLINED_FUNCTION_27_5(&a9);
    v125 = OUTLINED_FUNCTION_29_0();
    v126(v125);
    swift_getKeyPath();
    v127 = sub_26769965C(&v234);
    v128 = sub_2676CA3DC();
    v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CBF60, &unk_2676CEDE0);
    v130 = OUTLINED_FUNCTION_86_1();
    if (__swift_getEnumTagSinglePayload(v130, v131, v129))
    {
      v132 = OUTLINED_FUNCTION_29_9();
      v128(v132);

      v133 = OUTLINED_FUNCTION_30_8();
      v127(v133);
    }

    else
    {
      v216 = swift_getKeyPath();
      swift_getKeyPath();
      v134 = v201;
      sub_2676CA3EC();

      OUTLINED_FUNCTION_21_3(v134, 1, v129);
      if (v114)
      {
        sub_267662EC4(v134, &qword_2801CC428, &unk_2676CEDD0);
        v135 = v99;
      }

      else
      {
        swift_getKeyPath();
        sub_2676CA89C();
        v135 = v99;

        OUTLINED_FUNCTION_14_2(v129);
        (*(v136 + 8))(v134, v129);
      }

      sub_2676CA8AC();
      v137 = OUTLINED_FUNCTION_29_9();
      v128(v137);

      v138 = OUTLINED_FUNCTION_30_8();
      v127(v138);
      v99 = v135;
    }

    v122 = v228;
  }

  swift_getKeyPath();
  OUTLINED_FUNCTION_8_25();
  sub_2676A15C4(v139, v140);
  v141 = v217;
  v143 = v229;
  v142 = v230;
  OUTLINED_FUNCTION_89_1();
  sub_2676C98AC();

  v144 = v227;
  v145 = sub_2676C987C();
  v148 = *(v122 + 8);
  v146 = v122 + 8;
  v147 = v148;
  v148(v141, v144);
  v215 = v99;
  if (v145)
  {
    v216 = v147;
    OUTLINED_FUNCTION_23_8(&a11);
    sub_26769D6B8(0, v220, v231, v149, v150, v151, v152, v153, KeyPath, v199, v200, v201, v202, v203, v204, v205, v206, v207, v208, v209);
    v154 = sub_2676C976C();
    OUTLINED_FUNCTION_21_3(v144, 1, v154);
    if (!v114)
    {
LABEL_32:
      OUTLINED_FUNCTION_27_5(&a18);
      v193(v142, v143);
      OUTLINED_FUNCTION_14_2(v154);
      (*(v194 + 32))(v219, v144, v154);
      goto LABEL_35;
    }

    sub_267662EC4(v144, &qword_2801CDBE0, &qword_2676D4F20);
    sub_26761D288();
    swift_getKeyPath();
    OUTLINED_FUNCTION_34_10();

    v155 = OUTLINED_FUNCTION_31_5();
    v156(v155);
    OUTLINED_FUNCTION_91_1();
    v157 = OUTLINED_FUNCTION_43_6();
    v158(v157);
    v147 = v216;
  }

  swift_getKeyPath();
  OUTLINED_FUNCTION_78_3();
  OUTLINED_FUNCTION_89_1();
  sub_2676C98AC();
  v144 = v227;

  v159 = sub_2676C987C();
  v147(v141, v144);
  if (v159)
  {
    v216 = v147;
    OUTLINED_FUNCTION_23_8(&v234);
    sub_26769D6B8(1, v220, v231, v160, v161, v162, v163, v164, KeyPath, v199, v200, v201, v202, v203, v204, v205, v206, v207, v208, v209);
    v154 = sub_2676C976C();
    OUTLINED_FUNCTION_21_3(v144, 1, v154);
    if (!v114)
    {
      goto LABEL_32;
    }

    sub_267662EC4(v144, &qword_2801CDBE0, &qword_2676D4F20);
    sub_26761D288();
    swift_getKeyPath();
    OUTLINED_FUNCTION_34_10();

    v165 = OUTLINED_FUNCTION_31_5();
    v166(v165);
    OUTLINED_FUNCTION_91_1();
    v167 = OUTLINED_FUNCTION_43_6();
    v144 = v227;
    v168(v167);
    v147 = v216;
  }

  swift_getKeyPath();
  OUTLINED_FUNCTION_78_3();
  OUTLINED_FUNCTION_89_1();
  sub_2676C98AC();

  v169 = sub_2676C987C();
  v147(v141, v144);
  if (v169)
  {
    OUTLINED_FUNCTION_34_7(&v233);
    sub_26769D6B8(2, v220, v231, v170, v171, v172, v173, v174, KeyPath, v199, v200, v201, v202, v203, v204, v205, v206, v207, v208, v209);
    v175 = sub_2676C976C();
    OUTLINED_FUNCTION_21_3(v146, 1, v175);
    if (!v114)
    {
      OUTLINED_FUNCTION_27_5(&a18);
      v196(v230, v229);
      OUTLINED_FUNCTION_14_2(v175);
      (*(v197 + 32))(v219, v146, v175);
      goto LABEL_35;
    }

    sub_267662EC4(v146, &qword_2801CDBE0, &qword_2676D4F20);
    sub_26761D288();
    swift_getKeyPath();
    OUTLINED_FUNCTION_34_7(&a12);
    sub_2676C97EC();

    v176 = *(v224 + 8);
    v177 = OUTLINED_FUNCTION_45_4();
    v178(v177);
    v179 = v214;
    sub_2676C983C();
    OUTLINED_FUNCTION_27_5(&a13);
    v180(v146, v179);
  }

  if (qword_2801CBAA0 != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v181 = sub_2676CBE4C();
  __swift_project_value_buffer(v181, qword_2801CDC90);

  v182 = sub_2676CBE2C();
  v183 = sub_2676CC23C();

  if (os_log_type_enabled(v182, v183))
  {
    v184 = OUTLINED_FUNCTION_5_3();
    v185 = OUTLINED_FUNCTION_41_1();
    v234 = v185;
    *v184 = 136315138;
    swift_getKeyPath();
    v186 = v204;
    sub_2676994A0();
    v187 = v222;
    sub_2676CA3EC();

    OUTLINED_FUNCTION_27_5(&v232);
    v188(v186, v187);
    v189 = sub_2676CBFBC();
    v191 = sub_2676B0B84(v189, v190, &v234);

    *(v184 + 4) = v191;
    v192 = v230;
    _os_log_impl(&dword_2675D4000, v182, v183, "#SendMailPlan accept(input:) returning .yes() with updated target: %s", v184, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v185);
    OUTLINED_FUNCTION_33_6();
    OUTLINED_FUNCTION_30_6();
  }

  else
  {

    v192 = v230;
  }

  sub_2676C974C();
  OUTLINED_FUNCTION_27_5(&a18);
  v195(v192, v229);
LABEL_35:
  OUTLINED_FUNCTION_20_1();
}

void sub_26769D6B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_21_1();
  a19 = v22;
  a20 = v23;
  v228 = v20;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CDBC8, &unk_2676D4960);
  OUTLINED_FUNCTION_3(v30);
  v221 = v31;
  v33 = *(v32 + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_11_5(v35);
  v223 = sub_2676CA43C();
  v36 = OUTLINED_FUNCTION_3(v223);
  v38 = v37;
  v40 = *(v39 + 64);
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_3_2();
  v43 = v42 - v41;
  v44 = sub_2676C9EBC();
  v45 = OUTLINED_FUNCTION_3(v44);
  v225 = v46;
  v48 = *(v47 + 64);
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_4_13();
  MEMORY[0x28223BE20](v49);
  v51 = &v210 - v50;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC428, &unk_2676CEDD0);
  OUTLINED_FUNCTION_4_1(v52);
  v54 = *(v53 + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v55);
  OUTLINED_FUNCTION_50_3();
  v230 = v27;
  v227 = v25;
  v56 = sub_26762F80C(v27);
  v229 = v29;
  if ((v56 & 1) == 0)
  {
    swift_getKeyPath();
    v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC658, &qword_2676D45A0);
    OUTLINED_FUNCTION_0_28();
    sub_2676A15C4(v73, v74);
    OUTLINED_FUNCTION_1_30();
    sub_2676A15C4(v75, v76);
    OUTLINED_FUNCTION_83_1();
    sub_2676CA3EC();

    v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CBF60, &unk_2676CEDE0);
    v78 = OUTLINED_FUNCTION_86_1();
    OUTLINED_FUNCTION_21_3(v78, v79, v77);
    if (v68)
    {
      sub_267662EC4(v21, &qword_2801CC428, &unk_2676CEDD0);
      v84 = MEMORY[0x277D84F90];
    }

    else
    {
      v84 = sub_2675DFE20(v230);
      OUTLINED_FUNCTION_14_2(v77);
      (*(v85 + 8))(v21, v77);
    }

    if (qword_2801CBAA0 != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v86 = sub_2676CBE4C();
    __swift_project_value_buffer(v86, qword_2801CDC90);

    v87 = sub_2676CBE2C();
    v88 = sub_2676CC23C();

    if (os_log_type_enabled(v87, v88))
    {
      v89 = swift_slowAlloc();
      v234[0] = swift_slowAlloc();
      *v89 = 136315394;
      v227 = v72;
      if (v230)
      {
        OUTLINED_FUNCTION_42_5();
        if (v90)
        {
          v92 = 17219;
        }

        else
        {
          v92 = 4408130;
        }

        if (v90)
        {
          v93 = v91;
        }

        else
        {
          v93 = 0xE300000000000000;
        }
      }

      else
      {
        v93 = 0xE200000000000000;
        v92 = 20308;
      }

      v144 = sub_2676B0B84(v92, v93, v234);

      *(v89 + 4) = v144;
      *(v89 + 12) = 2080;
      v145 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CBF78, &qword_2676CDF00);
      v146 = MEMORY[0x26D5FDDD0](v84, v145);
      v148 = sub_2676B0B84(v146, v147, v234);

      *(v89 + 14) = v148;
      _os_log_impl(&dword_2675D4000, v87, v88, "#SendMailPlan Replacing %s recipients with these recipients: %s", v89, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_2_5();
      OUTLINED_FUNCTION_30_6();
    }

    else
    {
    }

    swift_getKeyPath();
    v149 = sub_26769965C(v234);
    v150 = sub_2676CA3DC();
    if (!__swift_getEnumTagSinglePayload(v151, 1, v77))
    {
      sub_2675E025C(v230, v84);
    }

    v150(&v231, 0);

    (v149)(v234, 0);
    goto LABEL_61;
  }

  v226 = v38;
  v216 = v30;
  if (qword_2801CBAA0 != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v57 = sub_2676CBE4C();
  v58 = __swift_project_value_buffer(v57, qword_2801CDC90);
  v59 = v225;
  v60 = *(v225 + 16);
  v61 = v227;
  v60(v51, v227, v44);
  v62 = v224;
  v60(v224, v61, v44);
  v219 = v58;
  v63 = sub_2676CBE2C();
  v64 = sub_2676CC23C();
  v65 = os_log_type_enabled(v63, v64);
  v66 = MEMORY[0x277D5E478];
  if (v65)
  {
    v214 = v64;
    v67 = swift_slowAlloc();
    v213 = OUTLINED_FUNCTION_41_1();
    v234[0] = v213;
    *v67 = 136315650;
    v215 = v63;
    v218 = v44;
    if (v230)
    {
      OUTLINED_FUNCTION_42_5();
      if (v68)
      {
        v70 = 17219;
      }

      else
      {
        v70 = 4408130;
      }

      if (v68)
      {
        v71 = v69;
      }

      else
      {
        v71 = 0xE300000000000000;
      }
    }

    else
    {
      v71 = 0xE200000000000000;
      v70 = 20308;
    }

    v94 = sub_2676B0B84(v70, v71, v234);

    *(v67 + 4) = v94;
    *(v67 + 12) = 1024;
    v212 = *v66;
    v222 = *(v226 + 104);
    v220 = (v226 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
    v217 = v67;
    v95 = v226;
    OUTLINED_FUNCTION_75_2();
    v96();
    v97 = v230;
    v98 = sub_2676308A4(v230);
    MEMORY[0x28223BE20](v98);
    OUTLINED_FUNCTION_14_20();
    v100 = sub_2676A2650(sub_267630B90, v99, v98);

    v211 = *(v95 + 8);
    v101 = OUTLINED_FUNCTION_16_3();
    v102(v101);
    v225 = *(v225 + 8);
    (v225)(v51, v218);
    v103 = v217;
    *(v217 + 14) = v100 & 1;
    *(v103 + 18) = 1024;
    v104 = *MEMORY[0x277D5E470];
    v105 = OUTLINED_FUNCTION_52_2();
    (*(v106 - 256))(v105);
    v107 = v224;
    LOBYTE(v98) = v224;
    v108 = sub_2676308A4(v97);
    MEMORY[0x28223BE20](v108);
    OUTLINED_FUNCTION_14_20();
    sub_2676A2650(sub_267630B90, v109, v108);
    OUTLINED_FUNCTION_96_1();
    v83 = v220;
    v110 = OUTLINED_FUNCTION_16_3();
    v211(v110);
    v82 = v222;
    (v225)(v107, v218);
    v61 = v217;
    *(v217 + 20) = v98 & 1;
    v111 = v215;
    _os_log_impl(&dword_2675D4000, v215, v214, "#SendMailPlan %s recipients has a list operation add recipients? %{BOOL}d, remove recipients? %{BOOL}d", v61, 0x18u);
    __swift_destroy_boxed_opaque_existential_1(v213);
    OUTLINED_FUNCTION_36_10();
    OUTLINED_FUNCTION_2_5();

    LOBYTE(v61) = v227;
  }

  else
  {
    v80 = *(v59 + 8);
    v80(v62, v44);
    v80(v51, v44);

    v81 = *v66;
    v82 = *(v226 + 104);
    v83 = (v226 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
    OUTLINED_FUNCTION_75_2();
  }

  v112 = OUTLINED_FUNCTION_52_2();
  *(v113 - 256) = v82;
  v82(v112);
  v114 = v230;
  v115 = sub_2676308A4(v230);
  v116 = v83;
  MEMORY[0x28223BE20](v115);
  OUTLINED_FUNCTION_14_20();
  sub_2676A2650(sub_267630B6C, v117, v115);
  OUTLINED_FUNCTION_96_1();
  v118 = v226 + 8;
  v119 = *(v226 + 8);
  v120 = OUTLINED_FUNCTION_16_3();
  v119(v120);
  v121 = v114;
  if (v61)
  {
    v122 = v119;
    v220 = v116;
    v225 = v43;
    v226 = v118;
    v123 = sub_26762F9DC(v121);
    if (!*(v123 + 16))
    {
      v135 = v121;

      v136 = sub_2676CBE2C();
      v137 = sub_2676CC23C();
      if (OUTLINED_FUNCTION_70_2(v137))
      {
        v138 = OUTLINED_FUNCTION_5_3();
        v139 = OUTLINED_FUNCTION_41_1();
        v234[0] = v139;
        *v138 = 136315138;
        if (v135)
        {
          OUTLINED_FUNCTION_42_5();
          if (v140)
          {
            v142 = 17219;
          }

          else
          {
            v142 = 4408130;
          }

          if (v140)
          {
            v143 = v141;
          }

          else
          {
            v143 = 0xE300000000000000;
          }
        }

        else
        {
          v143 = 0xE200000000000000;
          v142 = 20308;
        }

        v181 = sub_2676B0B84(v142, v143, v234);

        *(v138 + 4) = v181;
        OUTLINED_FUNCTION_54_7();
        _os_log_impl(v182, v183, v184, v185, v186, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v139);
        OUTLINED_FUNCTION_30_6();
        OUTLINED_FUNCTION_36_10();
      }

      v187 = v228;
      v188 = *(v228 + OBJC_IVAR____TtC16SiriMailInternal15MailSendingPlan_globals);
      v189 = OBJC_IVAR____TtC16SiriMailInternal15MailSendingPlan_resolverOverride;
      OUTLINED_FUNCTION_94_2();
      sub_2675F95E4(v187 + v189, v234, &qword_2801CC6A8, &unk_2676CF5F0);
      v233 = 0;
      v231 = 0u;
      v232 = 0u;
      v190 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CDBD0, &unk_2676D4EC0);
      OUTLINED_FUNCTION_7_13(v190);
      v191 = v188;
      OUTLINED_FUNCTION_41_6();
      v234[0] = v192;
      v193 = swift_allocObject();
      *(v193 + 16) = v135;
      *(v193 + 24) = v187;

      v194 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC9F8, &unk_2676CFE90);
      v195 = sub_2676A1628();
      goto LABEL_77;
    }

    v124 = sub_2676CBE2C();
    v125 = sub_2676CC23C();
    if (OUTLINED_FUNCTION_70_2(v125))
    {
      v126 = swift_slowAlloc();
      v234[0] = swift_slowAlloc();
      *v126 = 136315394;
      v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CBF78, &qword_2676CDF00);
      v128 = MEMORY[0x26D5FDDD0](v123, v127);
      v130 = sub_2676B0B84(v128, v129, v234);

      *(v126 + 4) = v130;
      *(v126 + 12) = 2080;
      if (v230)
      {
        OUTLINED_FUNCTION_42_5();
        if (v131)
        {
          v133 = 17219;
        }

        else
        {
          v133 = 4408130;
        }

        if (v131)
        {
          v134 = v132;
        }

        else
        {
          v134 = 0xE300000000000000;
        }
      }

      else
      {
        v134 = 0xE200000000000000;
        v133 = 20308;
      }

      v152 = sub_2676B0B84(v133, v134, v234);

      *(v126 + 14) = v152;
      _os_log_impl(&dword_2675D4000, v124, v125, "#SendMailPlan Adding these recipients %s to %s", v126, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_33_6();
      OUTLINED_FUNCTION_36_10();
    }

    swift_getKeyPath();
    v153 = sub_26769965C(v234);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC658, &qword_2676D45A0);
    OUTLINED_FUNCTION_0_28();
    sub_2676A15C4(v154, v155);
    OUTLINED_FUNCTION_1_30();
    sub_2676A15C4(v156, v157);
    v158 = sub_2676CA3DC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CBF60, &unk_2676CEDE0);
    v159 = OUTLINED_FUNCTION_33_4();
    if (__swift_getEnumTagSinglePayload(v159, v160, v161))
    {

      v158(&v231, 0);

      (v153)(v234, 0);
      v121 = v230;
    }

    else
    {
      v162 = v230;
      sub_2675DFEE4(v230, v123);

      v158(&v231, 0);
      v121 = v162;

      (v153)(v234, 0);
    }

    LOBYTE(v61) = v227;
    OUTLINED_FUNCTION_75_2();
    v119 = v122;
  }

  v163 = *MEMORY[0x277D5E470];
  v164 = OUTLINED_FUNCTION_52_2();
  (*(v165 - 256))(v164);
  v166 = sub_2676308A4(v121);
  v167 = v121;
  MEMORY[0x28223BE20](v166);
  OUTLINED_FUNCTION_14_20();
  sub_2676A2650(sub_267630B90, v168, v166);
  OUTLINED_FUNCTION_96_1();
  v169 = OUTLINED_FUNCTION_16_3();
  v119(v169);
  if (v61)
  {
    if (*(sub_267630350(v121) + 16))
    {
      sub_26769EDB4();

      goto LABEL_61;
    }

    v173 = sub_2676CBE2C();
    v174 = sub_2676CC23C();
    if (OUTLINED_FUNCTION_70_2(v174))
    {
      v175 = OUTLINED_FUNCTION_5_3();
      v176 = OUTLINED_FUNCTION_41_1();
      v234[0] = v176;
      *v175 = 136315138;
      if (v167)
      {
        OUTLINED_FUNCTION_42_5();
        if (v177)
        {
          v179 = 17219;
        }

        else
        {
          v179 = 4408130;
        }

        if (v177)
        {
          v180 = v178;
        }

        else
        {
          v180 = 0xE300000000000000;
        }
      }

      else
      {
        v180 = 0xE200000000000000;
        v179 = 20308;
      }

      v196 = sub_2676B0B84(v179, v180, v234);

      *(v175 + 4) = v196;
      OUTLINED_FUNCTION_54_7();
      _os_log_impl(v197, v198, v199, v200, v201, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v176);
      OUTLINED_FUNCTION_30_6();
      OUTLINED_FUNCTION_36_10();
    }

    v202 = v228;
    v203 = *(v228 + OBJC_IVAR____TtC16SiriMailInternal15MailSendingPlan_globals);
    v204 = OBJC_IVAR____TtC16SiriMailInternal15MailSendingPlan_resolverOverride;
    OUTLINED_FUNCTION_94_2();
    sub_2675F95E4(v202 + v204, v234, &qword_2801CC6A8, &unk_2676CF5F0);
    v233 = 0;
    v231 = 0u;
    v232 = 0u;
    v190 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CDBD0, &unk_2676D4EC0);
    OUTLINED_FUNCTION_7_13(v190);
    v205 = v203;
    OUTLINED_FUNCTION_41_6();
    v234[0] = v206;
    v207 = swift_allocObject();
    *(v207 + 16) = v167;
    *(v207 + 24) = v202;

    v194 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC9F8, &unk_2676CFE90);
    v195 = sub_2676A1628();
LABEL_77:
    OUTLINED_FUNCTION_36_5(&a14);
    sub_2676C942C();

    v234[0] = v190;
    v234[1] = v194;
    v234[2] = v195;
    swift_getOpaqueTypeConformance2();
    v171 = v229;
    sub_2676C975C();
    OUTLINED_FUNCTION_27_5(&a15);
    v208 = OUTLINED_FUNCTION_34_9();
    v209(v208);
    v170 = 0;
    goto LABEL_62;
  }

LABEL_61:
  v170 = 1;
  v171 = v229;
LABEL_62:
  v172 = sub_2676C976C();
  __swift_storeEnumTagSinglePayload(v171, v170, 1, v172);
  OUTLINED_FUNCTION_20_1();
}

uint64_t sub_26769E7F8(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC9D0, &unk_2676D37C0);
  v5 = *(v30 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v30);
  v9 = v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = v28 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC8B8, &unk_2676CFC60);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = v28 - v18;
  v20 = *a1;
  v28[1] = a3;
  v28[2] = v20;
  sub_26761D288();
  v29 = (v5 + 8);
  swift_getKeyPath();
  sub_2676C97EC();

  v21 = *(v13 + 8);
  v21(v19, v12);
  sub_26761D288();
  swift_getKeyPath();
  sub_2676C97EC();

  v21(v17, v12);
  v22 = sub_2676A21D8();
  v23 = *v29;
  v24 = v9;
  v25 = v30;
  (*v29)(v24, v30);
  v31 = v22;

  sub_2676A1FA0(v26);
  sub_2676C984C();

  return v23(v11, v25);
}

uint64_t sub_26769EAD8(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC9D0, &unk_2676D37C0);
  v5 = *(v30 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v30);
  v9 = v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = v27 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC8B8, &unk_2676CFC60);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = v27 - v18;
  v20 = *a1;
  v27[1] = a3;
  v28 = v20;
  sub_26761D288();
  v29 = (v5 + 8);
  swift_getKeyPath();
  sub_2676C97EC();

  v21 = *(v13 + 8);
  v21(v19, v12);
  sub_26761D288();
  swift_getKeyPath();
  sub_2676C97EC();

  v21(v17, v12);
  v22 = sub_2676A21D8();
  v23 = v30;
  v24 = *v29;
  (*v29)(v9, v30);
  v25 = sub_2675DEC6C(v28, v22);

  v31 = v25;
  sub_2676C984C();

  return (v24)(v11, v23);
}

void sub_26769EDB4()
{
  OUTLINED_FUNCTION_21_1();
  v110 = v0;
  v3 = v2;
  LODWORD(v5) = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC068, &unk_2676D4E00);
  OUTLINED_FUNCTION_4_1(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_50_3();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CBF78, &qword_2676CDF00);
  v11 = OUTLINED_FUNCTION_3(v10);
  v111 = v12;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_4();
  v117 = v15;
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x28223BE20](v16);
  v18 = &v107[-v17];
  if (qword_2801CBAA0 != -1)
  {
LABEL_55:
    OUTLINED_FUNCTION_0();
  }

  v118 = v18;
  v19 = sub_2676CBE4C();
  __swift_project_value_buffer(v19, qword_2801CDC90);

  v20 = sub_2676CBE2C();
  v21 = sub_2676CC23C();

  v22 = os_log_type_enabled(v20, v21);
  v108 = v5;
  if (v22)
  {
    v23 = v1;
    v24 = swift_slowAlloc();
    v120[0] = swift_slowAlloc();
    *v24 = 136315394;
    v25 = v3;
    v26 = MEMORY[0x26D5FDDD0](v3, v10);
    v28 = sub_2676B0B84(v26, v27, v120);

    *(v24 + 4) = v28;
    *(v24 + 12) = 2080;
    if (v5)
    {
      OUTLINED_FUNCTION_42_5();
      if (v29)
      {
        v31 = 17219;
      }

      else
      {
        v31 = 4408130;
      }

      if (v29)
      {
        v32 = v30;
      }

      else
      {
        v32 = 0xE300000000000000;
      }
    }

    else
    {
      v32 = 0xE200000000000000;
      v31 = 20308;
    }

    v33 = sub_2676B0B84(v31, v32, v120);

    *(v24 + 14) = v33;
    OUTLINED_FUNCTION_54_7();
    _os_log_impl(v34, v35, v36, v37, v38, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_33_6();
    OUTLINED_FUNCTION_36_10();

    v3 = v25;
    v1 = v23;
  }

  else
  {
  }

  v5 = *(v3 + 16);
  v39 = MEMORY[0x277D84F90];
  v119 = v10;
  v109 = v3;
  if (v5)
  {
    v120[0] = MEMORY[0x277D84F90];
    OUTLINED_FUNCTION_93_1();
    v40 = *(v111 + 16);
    v39 = v120[0];
    v41 = v3 + ((*(v111 + 80) + 32) & ~*(v111 + 80));
    v113 = *(v111 + 72);
    v114 = v40;
    v115 = v111 + 16;
    v116 = v5;
    v112 = (v111 + 8);
    v42 = v5;
    do
    {
      v43 = v118;
      v114(v118, v41, v10);
      swift_getKeyPath();
      OUTLINED_FUNCTION_8_25();
      sub_2676A15C4(&qword_2801CBF70, v44);
      sub_2676A15C4(&qword_2801CC2D0, MEMORY[0x277D5C640]);
      sub_2676CA87C();

      v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC0D8, &qword_2676D1490);
      v46 = OUTLINED_FUNCTION_86_1();
      OUTLINED_FUNCTION_21_3(v46, v47, v45);
      if (v29)
      {
        v48 = *v112;
        v49 = OUTLINED_FUNCTION_55_2();
        v50(v49);
        sub_267662EC4(v1, &qword_2801CC068, &unk_2676D4E00);
        v51 = 0;
        v53 = 0;
      }

      else
      {
        swift_getKeyPath();
        v51 = sub_2676CA89C();
        v53 = v52;

        (*v112)(v43, v10);
        OUTLINED_FUNCTION_14_2(v45);
        (*(v54 + 8))(v1, v45);
      }

      v120[0] = v39;
      v56 = *(v39 + 16);
      v55 = *(v39 + 24);
      v57 = v56 + 1;
      v5 = v116;
      if (v56 >= v55 >> 1)
      {
        v59 = OUTLINED_FUNCTION_23_1(v55);
        sub_2676C2B08(v59, v56 + 1, 1);
        v39 = v120[0];
      }

      *(v39 + 16) = v57;
      v58 = v39 + 16 * v56;
      *(v58 + 32) = v51;
      *(v58 + 40) = v53;
      v41 += v113;
      --v42;
      v10 = v119;
    }

    while (v42);
  }

  else
  {
    v57 = *(MEMORY[0x277D84F90] + 16);
  }

  v3 = 0;
  v10 = MEMORY[0x277D84F90];
  v18 = MEMORY[0x277D84F90];
LABEL_24:
  v60 = 16 * v3 + 40;
  while (v57 != v3)
  {
    if (v3 >= *(v39 + 16))
    {
      __break(1u);
LABEL_54:
      __break(1u);
      goto LABEL_55;
    }

    ++v3;
    v61 = v60 + 16;
    v62 = *(v39 + v60);
    v60 += 16;
    if (v62)
    {
      v63 = *(v39 + v61 - 24);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_26760719C(0, *(v18 + 2) + 1, 1, v18);
        v18 = v66;
      }

      v1 = *(v18 + 2);
      v64 = *(v18 + 3);
      if (v1 >= v64 >> 1)
      {
        v67 = OUTLINED_FUNCTION_23_1(v64);
        sub_26760719C(v67, v1 + 1, 1, v18);
        v18 = v68;
      }

      *(v18 + 2) = v1 + 1;
      v65 = &v18[16 * v1];
      *(v65 + 4) = v63;
      *(v65 + 5) = v62;
      goto LABEL_24;
    }
  }

  v69 = sub_2676A1BFC(v18);
  v70 = v69;
  if (v5)
  {
    v114 = v69;
    v120[0] = v10;
    OUTLINED_FUNCTION_93_1();
    v10 = v120[0];
    v118 = *(v111 + 16);
    v71 = v109 + ((*(v111 + 80) + 32) & ~*(v111 + 80));
    v115 = *(v111 + 72);
    v72 = (v111 + 8);
    do
    {
      v73 = v117;
      v74 = v119;
      v118(v117, v71, v119);
      swift_getKeyPath();
      OUTLINED_FUNCTION_8_25();
      sub_2676A15C4(&qword_2801CBF70, v75);
      v76 = sub_2676CA89C();
      v1 = v77;

      (*v72)(v73, v74);
      v120[0] = v10;
      v79 = *(v10 + 16);
      v78 = *(v10 + 24);
      v18 = (v79 + 1);
      if (v79 >= v78 >> 1)
      {
        v81 = OUTLINED_FUNCTION_23_1(v78);
        sub_2676C2B08(v81, v79 + 1, 1);
        v10 = v120[0];
      }

      *(v10 + 16) = v18;
      v80 = v10 + 16 * v79;
      *(v80 + 32) = v76;
      *(v80 + 40) = v1;
      v71 += v115;
      --v5;
    }

    while (v5);
    v70 = v114;
  }

  else
  {
    v18 = *(v10 + 16);
  }

  v3 = 0;
  v82 = MEMORY[0x277D84F90];
LABEL_41:
  v83 = 16 * v3 + 40;
  while (v18 != v3)
  {
    if (v3 >= *(v10 + 16))
    {
      goto LABEL_54;
    }

    ++v3;
    v84 = v83 + 16;
    v85 = *(v10 + v83);
    v83 += 16;
    if (v85)
    {
      v86 = *(v10 + v84 - 24);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_26760719C(0, *(v82 + 16) + 1, 1, v82);
        v82 = v90;
      }

      v88 = *(v82 + 16);
      v87 = *(v82 + 24);
      v5 = v88 + 1;
      if (v88 >= v87 >> 1)
      {
        v91 = OUTLINED_FUNCTION_23_1(v87);
        sub_26760719C(v91, v88 + 1, 1, v82);
        v82 = v92;
      }

      *(v82 + 16) = v5;
      v89 = v82 + 16 * v88;
      *(v89 + 32) = v86;
      *(v89 + 40) = v85;
      goto LABEL_41;
    }
  }

  v93 = sub_2676A1BFC(v82);
  swift_getKeyPath();
  v94 = sub_26769965C(v120);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC658, &qword_2676D45A0);
  OUTLINED_FUNCTION_0_28();
  sub_2676A15C4(v95, v96);
  OUTLINED_FUNCTION_1_30();
  sub_2676A15C4(v97, v98);
  v99 = sub_2676CA3DC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CBF60, &unk_2676CEDE0);
  v100 = OUTLINED_FUNCTION_33_4();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v100, v101, v102);
  if (!EnumTagSinglePayload)
  {
    MEMORY[0x28223BE20](EnumTagSinglePayload);
    *&v107[-32] = v70;
    v104 = v108;
    v107[-24] = v108;
    *&v107[-16] = v93;
    sub_2675E0008(v104);
  }

  v105 = OUTLINED_FUNCTION_29_9();
  v99(v105);

  v106 = OUTLINED_FUNCTION_30_8();
  v94(v106);
  OUTLINED_FUNCTION_20_1();
}

uint64_t sub_26769F6B0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  HIDWORD(v36) = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC068, &unk_2676D4E00);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v36 - v8;
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CBF78, &qword_2676CDF00);
  sub_2676A15C4(&qword_2801CBF70, MEMORY[0x277D5C6D0]);
  sub_2676A15C4(&qword_2801CC2D0, MEMORY[0x277D5C640]);
  sub_2676CA87C();

  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC0D8, &qword_2676D1490);
  if (__swift_getEnumTagSinglePayload(v9, 1, v10) == 1)
  {
    sub_267662EC4(v9, &qword_2801CC068, &unk_2676D4E00);
    goto LABEL_16;
  }

  swift_getKeyPath();
  v11 = sub_2676CA89C();
  v13 = v12;

  (*(*(v10 - 8) + 8))(v9, v10);
  if (!v13)
  {
LABEL_16:
    swift_getKeyPath();
    v22 = sub_2676CA89C();
    v24 = v23;

    if (v24)
    {
      if (sub_2676A1CB8(v22, v24, a4))
      {
        if (qword_2801CBAA0 != -1)
        {
          swift_once();
        }

        v25 = sub_2676CBE4C();
        __swift_project_value_buffer(v25, qword_2801CDC90);

        v16 = sub_2676CBE2C();
        v26 = sub_2676CC23C();

        if (os_log_type_enabled(v16, v26))
        {
          v18 = swift_slowAlloc();
          v19 = swift_slowAlloc();
          v37 = v19;
          *v18 = 136315394;
          if (BYTE4(v36))
          {
            if (BYTE4(v36) == 1)
            {
              v27 = 17219;
            }

            else
            {
              v27 = 4408130;
            }

            if (BYTE4(v36) == 1)
            {
              v28 = 0xE200000000000000;
            }

            else
            {
              v28 = 0xE300000000000000;
            }
          }

          else
          {
            v28 = 0xE200000000000000;
            v27 = 20308;
          }

          v30 = sub_2676B0B84(v27, v28, &v37);

          *(v18 + 4) = v30;
          *(v18 + 12) = 2080;
          v31 = sub_2676B0B84(v22, v24, &v37);

          *(v18 + 14) = v31;
          v32 = "#SendMailPlan Removing %s recipient with name %s";
          v33 = v26;
LABEL_35:
          _os_log_impl(&dword_2675D4000, v16, v33, v32, v18, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x26D5FEA80](v19, -1, -1);
          MEMORY[0x26D5FEA80](v18, -1, -1);
          goto LABEL_36;
        }

        goto LABEL_30;
      }
    }

    return 0;
  }

  if (!sub_2676A1CB8(v11, v13, a2))
  {

    goto LABEL_16;
  }

  v14 = v11;
  if (qword_2801CBAA0 != -1)
  {
    swift_once();
  }

  v15 = sub_2676CBE4C();
  __swift_project_value_buffer(v15, qword_2801CDC90);

  v16 = sub_2676CBE2C();
  v17 = sub_2676CC23C();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v37 = v19;
    *v18 = 136315394;
    if (BYTE4(v36))
    {
      if (BYTE4(v36) == 1)
      {
        v20 = 17219;
      }

      else
      {
        v20 = 4408130;
      }

      if (BYTE4(v36) == 1)
      {
        v21 = 0xE200000000000000;
      }

      else
      {
        v21 = 0xE300000000000000;
      }
    }

    else
    {
      v21 = 0xE200000000000000;
      v20 = 20308;
    }

    v34 = sub_2676B0B84(v20, v21, &v37);

    *(v18 + 4) = v34;
    *(v18 + 12) = 2080;
    v35 = sub_2676B0B84(v14, v13, &v37);

    *(v18 + 14) = v35;
    v32 = "#SendMailPlan Removing %s recipient with email %s";
    v33 = v17;
    goto LABEL_35;
  }

LABEL_30:

LABEL_36:

  return 1;
}

void sub_26769FC0C()
{
  OUTLINED_FUNCTION_21_1();
  v2 = v0;
  v55 = v3;
  v4 = sub_2676CB48C();
  v5 = OUTLINED_FUNCTION_4_1(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_3_2();
  v56 = v9 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD3B8, &unk_2676D3E60);
  OUTLINED_FUNCTION_4_1(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_9_1();
  v57 = v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD3C0, &unk_2676D4DF0);
  v16 = OUTLINED_FUNCTION_3(v15);
  v53 = v17;
  v54 = v16;
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_50_3();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC428, &unk_2676CEDD0);
  OUTLINED_FUNCTION_4_1(v21);
  v23 = *(v22 + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_9_1();
  v58 = v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC658, &qword_2676D45A0);
  OUTLINED_FUNCTION_3(v26);
  v28 = v27;
  v30 = *(v29 + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v31);
  v33 = &v53 - v32;
  if (qword_2801CBAA0 != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v34 = sub_2676CBE4C();
  __swift_project_value_buffer(v34, qword_2801CDC90);
  v35 = sub_2676CBE2C();
  v36 = sub_2676CC23C();
  if (OUTLINED_FUNCTION_5_7(v36))
  {
    v37 = OUTLINED_FUNCTION_17_3();
    *v37 = 0;
    _os_log_impl(&dword_2675D4000, v35, v36, "#SendMailPlan making ConfirmationPrompt", v37, 2u);
    OUTLINED_FUNCTION_2_5();
  }

  swift_getKeyPath();
  sub_2676994A0();
  OUTLINED_FUNCTION_0_28();
  sub_2676A15C4(v38, v39);
  OUTLINED_FUNCTION_1_30();
  sub_2676A15C4(v40, v41);
  sub_2676CA3EC();

  (*(v28 + 8))(v33, v26);
  sub_2676CBA1C();
  sub_2676C98BC();
  swift_getKeyPath();
  v42 = v54;
  sub_2676C988C();

  (*(v53 + 8))(v1, v42);
  v43 = *(v2 + OBJC_IVAR____TtC16SiriMailInternal12SendMailPlan_confirmIntentOptions);
  v44 = type metadata accessor for ConfirmSendProducer(0);
  v62[3] = v44;
  v62[4] = sub_2676A15C4(&qword_2801CD220, type metadata accessor for ConfirmSendProducer);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v62);
  v46 = *(v44 + 24);
  v47 = sub_2676C8D8C();
  OUTLINED_FUNCTION_2_6(v47);
  (*(v48 + 16))(boxed_opaque_existential_1 + v46, v55);
  LOBYTE(v42) = SendMailPlan.isSnippetInFocus.getter();
  type metadata accessor for SendMailCATsSimple();
  sub_2676CB47C();
  v49 = sub_2676CB42C();
  boxed_opaque_existential_1[1] = v43;
  *(boxed_opaque_existential_1 + *(v44 + 28)) = v42 & 1;
  *boxed_opaque_existential_1 = v49;
  v50 = sub_2676C9B9C();
  OUTLINED_FUNCTION_7_13(v50);
  v51 = sub_2676C9B8C();
  v60 = v50;
  v61 = MEMORY[0x277D5BD58];
  v59 = v51;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CDBC0, &qword_2676D48C0);
  OUTLINED_FUNCTION_7_13(v52);
  sub_2676C9BEC();
  OUTLINED_FUNCTION_20_1();
}

uint64_t SendMailPlan.isSnippetInFocus.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC8D8, &unk_2676CFC70);
  OUTLINED_FUNCTION_3(v0);
  v2 = v1;
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v5);
  v7 = &v9[-v6];
  sub_26761D2C0();
  sub_2676C97FC();
  (*(v2 + 8))(v7, v0);
  return v9[15] & 1;
}

uint64_t sub_2676A0184()
{
  v1 = OBJC_IVAR____TtC16SiriMailInternal12SendMailPlan__sendMessageTask;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC720, &qword_2676CF7D0);
  OUTLINED_FUNCTION_8_2(v2);
  v4 = *(v3 + 8);

  return v4(v0 + v1);
}

uint64_t SendMailPlan.deinit()
{
  v0 = MailSendingPlan.deinit();
  v1 = OBJC_IVAR____TtC16SiriMailInternal12SendMailPlan__sendMessageTask;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC720, &qword_2676CF7D0);
  OUTLINED_FUNCTION_8_2(v2);
  (*(v3 + 8))(v0 + v1);
  return v0;
}

uint64_t SendMailPlan.__deallocating_deinit()
{
  v0 = MailSendingPlan.deinit();
  v1 = OBJC_IVAR____TtC16SiriMailInternal12SendMailPlan__sendMessageTask;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC720, &qword_2676CF7D0);
  OUTLINED_FUNCTION_8_2(v2);
  (*(v3 + 8))(v0 + v1);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v4, v5);
}

uint64_t sub_2676A031C()
{
  type metadata accessor for SendMailPlan();

  return sub_2676C950C();
}

uint64_t sub_2676A0390(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821BA568](a1, WitnessTable);
}

void SendMailPlan.snippet.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_21_1();
  a19 = v22;
  a20 = v23;
  v163 = v24;
  v25 = type metadata accessor for MailStateChangeEventHandler(0);
  v26 = *(v25 - 8);
  v157 = (v25 - 8);
  v162 = v26;
  v161 = *(v26 + 64);
  v27 = MEMORY[0x28223BE20](v25 - 8);
  v160 = &v149[-((v28 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_24_1();
  v170 = v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC980, &unk_2676CFE10);
  v31 = OUTLINED_FUNCTION_3(v30);
  v158 = v32;
  v159 = v31;
  v34 = *(v33 + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_11_5(v36);
  v153 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CDB68, &qword_2676D4B60);
  OUTLINED_FUNCTION_3(v153);
  v154 = v37;
  v39 = *(v38 + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_11_5(v41);
  v156 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC8D8, &unk_2676CFC70);
  OUTLINED_FUNCTION_3(v156);
  v155 = v42;
  v44 = *(v43 + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_11_5(v46);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC8C8, &unk_2676D1C40);
  OUTLINED_FUNCTION_4_1(v47);
  v49 = *(v48 + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v50);
  OUTLINED_FUNCTION_9_1();
  v175 = v51;
  v151 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC9D8, &unk_2676CFE60);
  v52 = OUTLINED_FUNCTION_3(v151);
  v150 = v53;
  v55 = *(v54 + 64);
  MEMORY[0x28223BE20](v52);
  OUTLINED_FUNCTION_4();
  v166 = v56;
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x28223BE20](v57);
  OUTLINED_FUNCTION_24_1();
  v174 = v58;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC970, &qword_2676D1C50);
  v60 = OUTLINED_FUNCTION_3(v59);
  v168 = v61;
  v169 = v60;
  v63 = *(v62 + 64);
  MEMORY[0x28223BE20](v60);
  OUTLINED_FUNCTION_4();
  v164 = v64;
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x28223BE20](v65);
  OUTLINED_FUNCTION_24_1();
  v173 = v66;
  v165 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC9D0, &unk_2676D37C0);
  v67 = OUTLINED_FUNCTION_3(v165);
  v167 = v68;
  v70 = *(v69 + 64);
  MEMORY[0x28223BE20](v67);
  OUTLINED_FUNCTION_4();
  v178 = v71;
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x28223BE20](v72);
  OUTLINED_FUNCTION_10_4();
  v177 = v73;
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x28223BE20](v74);
  OUTLINED_FUNCTION_10_4();
  v176 = v75;
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x28223BE20](v76);
  OUTLINED_FUNCTION_10_4();
  v172 = v77;
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x28223BE20](v78);
  OUTLINED_FUNCTION_10_4();
  v171 = v79;
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x28223BE20](v80);
  v152 = &v149[-v81];
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC8B8, &unk_2676CFC60);
  v83 = OUTLINED_FUNCTION_3(v82);
  v85 = v84;
  v87 = *(v86 + 64);
  MEMORY[0x28223BE20](v83);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_4_13();
  MEMORY[0x28223BE20](v88);
  OUTLINED_FUNCTION_10_4();
  OUTLINED_FUNCTION_4_13();
  MEMORY[0x28223BE20](v89);
  OUTLINED_FUNCTION_10_4();
  OUTLINED_FUNCTION_4_13();
  MEMORY[0x28223BE20](v90);
  OUTLINED_FUNCTION_10_4();
  OUTLINED_FUNCTION_4_13();
  MEMORY[0x28223BE20](v91);
  OUTLINED_FUNCTION_10_4();
  OUTLINED_FUNCTION_4_13();
  MEMORY[0x28223BE20](v92);
  OUTLINED_FUNCTION_10_4();
  OUTLINED_FUNCTION_4_13();
  v94 = MEMORY[0x28223BE20](v93);
  v96 = &v149[-v95];
  v97 = MEMORY[0x28223BE20](v94);
  v99 = &v149[-v98];
  MEMORY[0x28223BE20](v97);
  OUTLINED_FUNCTION_55_3();
  MEMORY[0x28223BE20](v100);
  v102 = &v149[-v101];
  sub_26761D288();
  swift_getKeyPath();
  sub_2676C97EC();

  v103 = *(v85 + 8);
  (v103)(v102, v82);
  sub_26761D288();
  swift_getKeyPath();
  sub_2676C97EC();

  (v103)(v21, v82);
  v104 = v20;
  sub_26761D288();
  KeyPath = swift_getKeyPath();
  sub_2676C97EC();

  (v103)(v99, v82);
  sub_26761D288();
  swift_getKeyPath();
  sub_2676C97EC();

  (v103)(v96, v82);
  OUTLINED_FUNCTION_34_7(&v173);
  sub_26761D288();
  swift_getKeyPath();
  sub_2676C97EC();

  (v103)(v96, v82);
  sub_26761D2A4();
  OUTLINED_FUNCTION_23_8(&v174);
  sub_26761D288();
  swift_getKeyPath();
  OUTLINED_FUNCTION_69_1();

  v106 = OUTLINED_FUNCTION_55_2();
  v103(v106);
  OUTLINED_FUNCTION_23_8(&v175);
  sub_26761D288();
  swift_getKeyPath();
  OUTLINED_FUNCTION_69_1();

  v107 = OUTLINED_FUNCTION_55_2();
  v103(v107);
  OUTLINED_FUNCTION_23_8(&v176);
  sub_26761D288();
  swift_getKeyPath();
  OUTLINED_FUNCTION_69_1();

  v108 = OUTLINED_FUNCTION_55_2();
  v103(v108);
  OUTLINED_FUNCTION_23_8(&v177);
  sub_26761D288();
  swift_getKeyPath();
  v109 = v164;
  OUTLINED_FUNCTION_69_1();

  v110 = OUTLINED_FUNCTION_55_2();
  v103(v110);
  OUTLINED_FUNCTION_23_8(&v178);
  sub_26761D288();
  swift_getKeyPath();
  OUTLINED_FUNCTION_69_1();

  v111 = OUTLINED_FUNCTION_55_2();
  v103(v111);
  OUTLINED_FUNCTION_60_0(&v179);
  sub_26761D2C0();
  OUTLINED_FUNCTION_23_8(&a9);
  sub_267699750();
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_28();
  sub_2676A15C4(v112, v113);
  OUTLINED_FUNCTION_1_30();
  sub_2676A15C4(v114, v115);
  OUTLINED_FUNCTION_51_2(&a15);
  v116 = v153;
  sub_2676C9A2C();

  OUTLINED_FUNCTION_27_5(&a14);
  v117(KeyPath, v116);
  v118 = *(v167 + 16);
  v119 = v170;
  v120 = v165;
  v118(v170, v176, v165);
  v121 = v157;
  v118(v119 + v157[7], v177, v120);
  v118(v119 + v121[8], v178, v120);
  v122 = OUTLINED_FUNCTION_73_1(v121[9]);
  v123(v122, v109);
  v124 = v150;
  v125 = OUTLINED_FUNCTION_73_1(v121[10]);
  v126 = v166;
  v127 = v151;
  v128(v125, v166, v151);
  v129 = v121[11];
  v130 = v121;
  v132 = v158;
  v131 = v159;
  v133 = OUTLINED_FUNCTION_73_1(v129);
  v134(v133, &unk_2676D46E0, v131);
  v135 = v155;
  OUTLINED_FUNCTION_73_1(v130[12]);
  OUTLINED_FUNCTION_75_2();
  v136();
  v137 = type metadata accessor for MetricsSnippetEventHandler();
  v138 = OUTLINED_FUNCTION_7_13(v137);
  swift_defaultActor_initialize();
  sub_2676C958C();
  v139 = *(v132 + 8);
  v140 = OUTLINED_FUNCTION_29_0();
  v141(v140);
  (*(v135 + 8))(v104, v104);
  (*(v124 + 8))(v126, v127);
  (*(v168 + 8))(v164, v169);
  v142 = *(v167 + 8);
  v143 = v165;
  v142(v178, v165);
  v142(v177, v143);
  v142(v176, v143);
  v144 = v160;
  sub_267662B28(v170, v160);
  v145 = (*(v162 + 80) + 16) & ~*(v162 + 80);
  v146 = (v161 + v145 + 7) & 0xFFFFFFFFFFFFFFF8;
  v147 = swift_allocObject();
  sub_267662B28(v144, v147 + v145);
  *(v147 + v146) = v138;
  sub_2676C916C();
  sub_2676CAFDC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC9F8, &unk_2676CFE90);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC9B0, &unk_2676CFE50);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CBFE0, &qword_2676D1070);
  sub_2676CB0DC();
  sub_2676A15C4(&qword_2801CD1E0, MEMORY[0x277D5C900]);
  v148 = MEMORY[0x277D5C970];
  sub_2676A15C4(&qword_2801CD1E8, MEMORY[0x277D5C970]);
  sub_2676A15C4(&qword_2801CD1F0, v148);
  sub_2676C9BAC();
  OUTLINED_FUNCTION_20_1();
}

uint64_t sub_2676A1194()
{
  OUTLINED_FUNCTION_12_1();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  OUTLINED_FUNCTION_63_4(v1);

  return sub_26765EC58();
}

uint64_t sub_2676A1234()
{
  OUTLINED_FUNCTION_12_1();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v2 = OUTLINED_FUNCTION_63_4(v1);

  return sub_26769B9B8(v2, v3, v4);
}

uint64_t type metadata accessor for SendMailPlan()
{
  result = qword_2801CDBB0;
  if (!qword_2801CDBB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2676A14A4()
{
  sub_267697368();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t sub_2676A15C4(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_2676A1628()
{
  result = qword_2801CDBD8;
  if (!qword_2801CDBD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2801CDBD0, &unk_2676D4EC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2801CDBD8);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_31_5()
{
  v2 = *(*(v1 - 216) + 8);
  result = v0;
  v4 = *(v1 - 288);
  v5 = *(v1 - 184);
  return result;
}

uint64_t OUTLINED_FUNCTION_34_10()
{
  v3 = *(v1 - 312);
  *(v1 - 184) = v0;
  v4 = *(v1 - 208);

  return sub_2676C97EC();
}

void OUTLINED_FUNCTION_36_10()
{

  JUMPOUT(0x26D5FEA80);
}

void OUTLINED_FUNCTION_41_6()
{

  sub_2676A2C60();
}

uint64_t OUTLINED_FUNCTION_43_6()
{
  v2 = *(*(v1 - 304) + 8);
  result = v0;
  v4 = *(v1 - 168);
  return result;
}

BOOL OUTLINED_FUNCTION_70_2(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_72_1()
{

  return swift_getOpaqueTypeConformance2();
}

uint64_t OUTLINED_FUNCTION_91_1()
{
  v2 = *(v0 - 296);

  return sub_2676C983C();
}

void *OUTLINED_FUNCTION_93_1()
{

  return sub_2676C2B08(0, v0, 0);
}

uint64_t OUTLINED_FUNCTION_94_2()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_96_1()
{
}

void sub_2676A1944()
{
  OUTLINED_FUNCTION_21_1();
  OUTLINED_FUNCTION_116_0();
  v4 = sub_2676C8C8C();
  v5 = OUTLINED_FUNCTION_3(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_1_7();
  OUTLINED_FUNCTION_79_3();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_78_4();
  v9 = v0[2];
  sub_2676AFE00(&qword_2801CBF50, MEMORY[0x277CBA2E0]);
  v10 = OUTLINED_FUNCTION_38_0();
  MEMORY[0x26D5FDED0](v10);
  v11 = v0[2];
  if (v11)
  {
    OUTLINED_FUNCTION_50_5();
    do
    {
      OUTLINED_FUNCTION_59_4();
      v2();
      v12 = OUTLINED_FUNCTION_86_2();
      sub_2676AC6B4(v12, v13);
      v14 = *v0;
      v15 = OUTLINED_FUNCTION_58_4();
      v16(v15);
      v1 += v3;
      --v11;
    }

    while (v11);
  }

  OUTLINED_FUNCTION_20_1();
}

void sub_2676A1AA0()
{
  OUTLINED_FUNCTION_21_1();
  OUTLINED_FUNCTION_116_0();
  v4 = sub_2676CB14C();
  v5 = OUTLINED_FUNCTION_3(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_1_7();
  OUTLINED_FUNCTION_79_3();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_78_4();
  v9 = v0[2];
  sub_2676AFE00(&qword_2801CBF40, MEMORY[0x277D5CA58]);
  v10 = OUTLINED_FUNCTION_38_0();
  MEMORY[0x26D5FDED0](v10);
  v11 = v0[2];
  if (v11)
  {
    OUTLINED_FUNCTION_50_5();
    do
    {
      OUTLINED_FUNCTION_59_4();
      v2();
      v12 = OUTLINED_FUNCTION_86_2();
      sub_2676AC97C(v12, v13);
      v14 = *v0;
      v15 = OUTLINED_FUNCTION_58_4();
      v16(v15);
      v1 += v3;
      --v11;
    }

    while (v11);
  }

  OUTLINED_FUNCTION_20_1();
}

uint64_t sub_2676A1BFC(uint64_t a1)
{
  result = MEMORY[0x26D5FDED0](*(a1 + 16), MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  v3 = 0;
  v8 = result;
  v4 = *(a1 + 16);
  for (i = (a1 + 40); ; i += 2)
  {
    if (v4 == v3)
    {

      return v8;
    }

    if (v3 >= *(a1 + 16))
    {
      break;
    }

    ++v3;
    v7 = *(i - 1);
    v6 = *i;

    OUTLINED_FUNCTION_113_0();
    sub_2676ACEBC();
  }

  __break(1u);
  return result;
}

BOOL sub_2676A1CB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v6 = *(a3 + 40);
  sub_2676CC64C();
  OUTLINED_FUNCTION_113_0();
  sub_2676CBFFC();
  sub_2676CC67C();
  v7 = *(a3 + 32);
  OUTLINED_FUNCTION_104_1();
  v10 = ~v9;
  do
  {
    v11 = v8 & v10;
    v12 = (1 << (v8 & v10)) & *(a3 + 56 + (((v8 & v10) >> 3) & 0xFFFFFFFFFFFFFF8));
    v13 = v12 != 0;
    if (!v12)
    {
      break;
    }

    v14 = (*(a3 + 48) + 16 * v11);
    if (*v14 == a1 && v14[1] == a2)
    {
      break;
    }

    v16 = OUTLINED_FUNCTION_95_2();
    v8 = v11 + 1;
  }

  while ((v16 & 1) == 0);
  return v13;
}

uint64_t sub_2676A1D90(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = *(*v1 + 16);
  result = v4 + v3;
  if (__OFADD__(v4, v3))
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_2675E0434(result, 1);
  v6 = *v1;
  if (!*(a1 + 16))
  {

    if (!v3)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  v7 = (*(v6 + 24) >> 1) - *(v6 + 16);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CBF78, &qword_2676CDF00);
  v8 = *(result - 8);
  if (v7 < v3)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v9 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v10 = *(v8 + 72);
  swift_arrayInitWithCopy();

  if (!v3)
  {
LABEL_8:
    *v1 = v6;
    return result;
  }

  v11 = *(v6 + 16);
  v12 = __OFADD__(v11, v3);
  v13 = v11 + v3;
  if (!v12)
  {
    *(v6 + 16) = v13;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_2676A1EF4(unint64_t a1)
{
  v3 = sub_267630B8C(a1);
  v4 = sub_267630B8C(*v1);
  v5 = __OFADD__(v4, v3);
  result = v4 + v3;
  if (v5)
  {
    __break(1u);
    goto LABEL_8;
  }

  sub_2675E047C(result);
  v7 = *v1;
  v8 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_2676AFE48(v8 + 8 * *(v8 + 0x10) + 32, (*(v8 + 0x18) >> 1) - *(v8 + 0x10), a1);
  v10 = v9;

  if (v10 < v3)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v10 < 1)
  {
LABEL_6:
    *v1 = v7;
    return result;
  }

  v11 = *(v8 + 16);
  v5 = __OFADD__(v11, v10);
  v12 = v11 + v10;
  if (!v5)
  {
    *(v8 + 16) = v12;
    goto LABEL_6;
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_2676A1FCC(uint64_t a1, void (*a2)(uint64_t, uint64_t), uint64_t (*a3)(void))
{
  v5 = *(a1 + 16);
  v6 = *(*v3 + 16);
  result = v6 + v5;
  if (__OFADD__(v6, v5))
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  a2(result, 1);
  v9 = *v3;
  if (!*(a1 + 16))
  {

    if (!v5)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  v10 = (*(v9 + 24) >> 1) - *(v9 + 16);
  result = a3(0);
  v11 = *(result - 8);
  if (v10 < v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v12 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v13 = *(v11 + 72);
  swift_arrayInitWithCopy();

  if (!v5)
  {
LABEL_8:
    *v3 = v9;
    return result;
  }

  v14 = *(v9 + 16);
  v15 = __OFADD__(v14, v5);
  v16 = v14 + v5;
  if (!v15)
  {
    *(v9 + 16) = v16;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_2676A2108()
{
  v0 = OUTLINED_FUNCTION_49_1();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_4_1(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_19_1();
  OUTLINED_FUNCTION_91_2();
  sub_2675F95E4(v6, v7, v8, &unk_2676D4EB0);
  return sub_2676CB83C();
}

uint64_t sub_2676A2198()
{
  OUTLINED_FUNCTION_5_6();
  result = sub_2676CB75C();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_2676A21D8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CDC58, &unk_2676D4EE8);
  OUTLINED_FUNCTION_3(v1);
  v3 = v2;
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_54_5();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC9D0, &unk_2676D37C0);
  sub_2676C97DC();
  v7 = v3[11];
  v8 = OUTLINED_FUNCTION_58_1();
  if (v9(v8) == *MEMORY[0x277D5B9E0])
  {
    v10 = v3[12];
    v11 = OUTLINED_FUNCTION_58_1();
    v12(v11);
    return *v0;
  }

  else
  {
    v14 = v3[1];
    v15 = OUTLINED_FUNCTION_58_1();
    v16(v15);
    if (qword_2801CBAA0 != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v17 = sub_2676CBE4C();
    OUTLINED_FUNCTION_24_2(v17, qword_2801CDC90);
    v18 = sub_2676CBE2C();
    v19 = sub_2676CC23C();
    if (OUTLINED_FUNCTION_5_5(v19))
    {
      OUTLINED_FUNCTION_5_3();
      v25 = OUTLINED_FUNCTION_12_2();
      *v0 = 136315138;
      *(v0 + 4) = sub_2676B0B84(0xD00000000000001DLL, 0x80000002676D7E50, &v25);
      OUTLINED_FUNCTION_3_7();
      _os_log_impl(v20, v21, v22, v23, v24, 0xCu);
      OUTLINED_FUNCTION_43_7();
      OUTLINED_FUNCTION_4_6();
    }

    return MEMORY[0x277D84F90];
  }
}

uint64_t sub_2676A239C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CDC48, &qword_2676D4ED0);
  OUTLINED_FUNCTION_3(v1);
  v3 = v2;
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_54_5();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC968, &unk_2676CFDF0);
  sub_2676C97DC();
  v7 = v3[11];
  v8 = OUTLINED_FUNCTION_58_1();
  if (v9(v8) == *MEMORY[0x277D5B9E0])
  {
    v10 = v3[12];
    v11 = OUTLINED_FUNCTION_58_1();
    v12(v11);
    return *v0;
  }

  else
  {
    v14 = v3[1];
    v15 = OUTLINED_FUNCTION_58_1();
    v16(v15);
    if (qword_2801CBAA0 != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v17 = sub_2676CBE4C();
    OUTLINED_FUNCTION_24_2(v17, qword_2801CDC90);
    v18 = sub_2676CBE2C();
    v19 = sub_2676CC23C();
    if (OUTLINED_FUNCTION_5_5(v19))
    {
      OUTLINED_FUNCTION_5_3();
      v25 = OUTLINED_FUNCTION_12_2();
      *v0 = 136315138;
      *(v0 + 4) = sub_2676B0B84(0x63413C7961727241, 0xEE003E746E756F63, &v25);
      OUTLINED_FUNCTION_3_7();
      _os_log_impl(v20, v21, v22, v23, v24, 0xCu);
      OUTLINED_FUNCTION_43_7();
      OUTLINED_FUNCTION_4_6();
    }

    return MEMORY[0x277D84F90];
  }
}

uint64_t SendMailSceneHostPlan.__allocating_init()()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  SendMailSceneHostPlan.init()();
  return v3;
}

BOOL sub_2676A25A0(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v5 = (a3 + 40);
  v6 = *(a3 + 16) + 1;
  do
  {
    if (!--v6)
    {
      break;
    }

    v7 = *v5;
    v11[0] = *(v5 - 1);
    v11[1] = v7;

    v8 = a1(v11);
    if (v3)
    {

      return v6 != 0;
    }

    v9 = v8;
    v5 += 2;
  }

  while ((v9 & 1) == 0);
  return v6 != 0;
}

uint64_t sub_2676A2650(uint64_t (*a1)(uint64_t *), uint64_t a2, uint64_t a3)
{
  result = sub_267630B8C(a3);
  v6 = result;
  v7 = 0;
  while (1)
  {
    v8 = v7;
    if (v6 == v7)
    {
      return v6 != v8;
    }

    if ((a3 & 0xC000000000000001) != 0)
    {
      v11 = OUTLINED_FUNCTION_47_4();
      result = MEMORY[0x26D5FE0E0](v11);
      v9 = result;
    }

    else
    {
      if (v7 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_13;
      }

      v9 = *(a3 + 8 * v7 + 32);
    }

    if (__OFADD__(v8, 1))
    {
      break;
    }

    v13 = v9;
    v10 = a1(&v13);

    if (!v3)
    {
      v7 = v8 + 1;
      if ((v10 & 1) == 0)
      {
        continue;
      }
    }

    return v6 != v8;
  }

  __break(1u);
LABEL_13:
  __break(1u);
  return result;
}

BOOL sub_2676A2748(uint64_t (*a1)(unint64_t), uint64_t a2, uint64_t a3)
{
  v6 = 0;
  v7 = *(a3 + 16);
  do
  {
    v8 = v6;
    if (v7 == v6)
    {
      break;
    }

    v9 = sub_2676C8C8C();
    OUTLINED_FUNCTION_1_0(v9);
    v12 = a1(a3 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v11 + 72) * v8);
    if (v3)
    {
      break;
    }

    v6 = v8 + 1;
  }

  while ((v12 & 1) == 0);
  return v7 != v8;
}

uint64_t sub_2676A2814()
{
  OUTLINED_FUNCTION_5_6();
  result = sub_2676CB16C();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_2676A2854()
{
  OUTLINED_FUNCTION_5_6();
  result = sub_2676CB05C();
  *v0 = result;
  return result;
}

uint64_t sub_2676A28A0()
{
  OUTLINED_FUNCTION_5_6();
  result = sub_2676CB02C();
  *v0 = result;
  return result;
}

uint64_t sub_2676A28EC()
{
  OUTLINED_FUNCTION_5_6();
  result = sub_2676CB07C();
  *v0 = result;
  return result;
}

uint64_t sub_2676A2938()
{
  OUTLINED_FUNCTION_5_6();
  result = sub_2676CB09C();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_2676A2978(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  v6 = *a1;
  v7 = a1[1];

  v8 = OUTLINED_FUNCTION_49_1();
  return a5(v8);
}

uint64_t sub_2676A29E0()
{
  OUTLINED_FUNCTION_116_0();
  v0 = sub_2676CB0DC();
  v1 = OUTLINED_FUNCTION_3(v0);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_3_2();
  v5 = *(v4 + 16);
  v6 = OUTLINED_FUNCTION_58_1();
  v7(v6);
  return sub_2676CB0FC();
}

uint64_t sub_2676A2A8C()
{
  OUTLINED_FUNCTION_5_6();
  result = sub_2676CAFEC();
  *v0 = result;
  return result;
}

uint64_t sub_2676A2B24(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v14 = MEMORY[0x277D84F90];
    sub_2676C2AC8(0, v1, 0);
    v2 = v14;
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CBF78, &qword_2676CDF00);
    OUTLINED_FUNCTION_1_0(v4);
    v6 = (a1 + ((*(v5 + 80) + 32) & ~*(v5 + 80)));
    v8 = *(v7 + 72);
    do
    {
      sub_26767699C(v6, &v13);
      v9 = v13;
      v14 = v2;
      v11 = *(v2 + 16);
      v10 = *(v2 + 24);
      if (v11 >= v10 >> 1)
      {
        sub_2676C2AC8((v10 > 1), v11 + 1, 1);
        v2 = v14;
      }

      *(v2 + 16) = v11 + 1;
      *(v2 + 8 * v11 + 32) = v9;
      v6 = (v6 + v8);
      --v1;
    }

    while (v1);
  }

  return v2;
}

void sub_2676A2C6C()
{
  OUTLINED_FUNCTION_21_1();
  v1 = v0;
  v3 = v2;
  v70 = v5;
  v71 = v4;
  v7 = v6;
  v72 = v8;
  v10 = v9;
  v11 = sub_2676CAB6C();
  v12 = OUTLINED_FUNCTION_3(v11);
  v14 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_1_5();
  v69 = v17;
  OUTLINED_FUNCTION_7_3();
  v18 = sub_2676CAC6C();
  v19 = OUTLINED_FUNCTION_3(v18);
  v66 = v20;
  v67 = v19;
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_1_5();
  v68 = v23;
  OUTLINED_FUNCTION_7_3();
  v24 = sub_2676CAC1C();
  v25 = OUTLINED_FUNCTION_4_1(v24);
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_7_3();
  v28 = sub_2676C911C();
  v29 = OUTLINED_FUNCTION_4_1(v28);
  v31 = *(v30 + 64);
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_1_5();
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD4F0, &qword_2676D3250);
  OUTLINED_FUNCTION_4_1(v32);
  v34 = *(v33 + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_9_1();
  v62 = v36;
  OUTLINED_FUNCTION_7_3();
  v65 = sub_2676CABFC();
  v37 = OUTLINED_FUNCTION_3(v65);
  v63 = v38;
  v40 = *(v39 + 64);
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_1_5();
  v61 = v41;
  *(v0 + 32) = 0;
  *(v0 + 40) = 0;
  *(v0 + 48) = -1;
  v42 = v0 + qword_2801D3EB0;
  *(v42 + 32) = 0;
  *v42 = 0u;
  *(v42 + 16) = 0u;
  v64 = v42;
  v43 = (v0 + qword_2801CD3D0);
  *v43 = 0;
  v43[1] = 0;
  v44 = (v0 + qword_2801CD3D8);
  *v44 = 0;
  v44[1] = 0;
  if (qword_2801CBAA0 != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v45 = sub_2676CBE4C();
  OUTLINED_FUNCTION_24_2(v45, qword_2801CDC90);

  v46 = sub_2676CBE2C();
  v47 = sub_2676CC23C();

  if (os_log_type_enabled(v46, v47))
  {
    v60 = v47;
    v48 = OUTLINED_FUNCTION_126();
    v73[0] = OUTLINED_FUNCTION_125_0();
    *v48 = 136315394;
    v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CBF78, &qword_2676CDF00);
    v50 = MEMORY[0x26D5FDDD0](v10, v49);
    v52 = v7;
    v53 = v3;
    v54 = sub_2676B0B84(v50, v51, v73);

    *(v48 + 4) = v54;
    v3 = v53;
    v7 = v52;
    *(v48 + 12) = 2080;
    *(v48 + 14) = sub_2676B0B84(v72, v52, v73);
    _os_log_impl(&dword_2675D4000, v46, v60, "#ResolveRecipientsFlow init with %s and parameter %s", v48, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_36_10();
    OUTLINED_FUNCTION_4_6();
  }

  else
  {
  }

  v55 = sub_2676A2B24(v10);

  *(v1 + 16) = v55;
  *(v1 + 24) = 0;
  sub_2676CACCC();
  v56 = sub_2676CACDC();
  __swift_storeEnumTagSinglePayload(v62, 0, 1, v56);
  sub_2676C910C();
  sub_2676CAC0C();
  (*(v66 + 104))(v68, *MEMORY[0x277D56148], v67);
  (*(v14 + 104))(v69, *MEMORY[0x277D560D0], v11);
  sub_2676CABEC();
  (*(v63 + 32))(v1 + qword_2801D3EA0, v61, v65);
  v57 = (v1 + qword_2801D3EA8);
  *v57 = v72;
  v57[1] = v7;
  swift_beginAccess();
  sub_26767D854(v70, v64);
  swift_endAccess();
  v58 = v1 + qword_2801D3EB8;
  v59 = *(v3 + 16);
  *v58 = *v3;
  *(v58 + 16) = v59;
  *(v58 + 32) = *(v3 + 32);
  *(v1 + qword_2801D3EC0) = v71;
  OUTLINED_FUNCTION_20_1();
}

uint64_t sub_2676A31F0(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC658, &qword_2676D45A0);
  OUTLINED_FUNCTION_3(v3);
  v5 = v4;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v8);
  v10 = &v23 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC720, &qword_2676CF7D0);
  OUTLINED_FUNCTION_3(v11);
  v13 = v12;
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v16);
  v18 = &v23 - v17;
  (*(v13 + 16))(&v23 - v17, v1 + OBJC_IVAR____TtC16SiriMailInternal21SendMailSceneHostPlan__sendMessageTask, v11);
  (*(v5 + 16))(v10, a1, v3);
  sub_2676C97AC();
  v19 = *(v5 + 8);
  v20 = OUTLINED_FUNCTION_45();
  v21(v20);
  return (*(v13 + 8))(v18, v11);
}

void (*sub_2676A3390(void *a1))(void *a1)
{
  v2 = __swift_coroFrameAllocStub(0x40uLL);
  *a1 = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC720, &qword_2676CF7D0);
  v2[4] = v3;
  OUTLINED_FUNCTION_3(v3);
  v5 = v4;
  v2[5] = v4;
  v2[6] = __swift_coroFrameAllocStub(*(v6 + 64));
  (*(v5 + 16))();
  OUTLINED_FUNCTION_49_1();
  v2[7] = sub_2676C978C();
  return sub_2676A3484;
}

void sub_2676A3484(void *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 48);
  v3 = *(*a1 + 32);
  v4 = *(*a1 + 40);
  (*(*a1 + 56))(*a1, 0);
  v5 = *(v4 + 8);
  v6 = OUTLINED_FUNCTION_38_0();
  v7(v6);
  free(v2);

  free(v1);
}

uint64_t sub_2676A3510(void (*a1)(uint64_t))
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC720, &qword_2676CF7D0);
  OUTLINED_FUNCTION_3(v4);
  v6 = v5;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_19_1();
  (*(v6 + 16))(v2, v1 + OBJC_IVAR____TtC16SiriMailInternal21SendMailSceneHostPlan__sendMessageTask, v4);
  a1(v4);
  v10 = *(v6 + 8);
  v11 = OUTLINED_FUNCTION_86_2();
  return v12(v11);
}

uint64_t SendMailSceneHostPlan.init()()
{
  sub_2676CBA1C();
  OUTLINED_FUNCTION_0_29();
  sub_2676AFE00(v1, v2);
  sub_2676C97BC();
  *(v0 + OBJC_IVAR____TtC16SiriMailInternal21SendMailSceneHostPlan_confirmIntentOptions) = 0;
  sub_2676CB38C();
  v3 = sub_2676CB37C();
  v18 = 0;
  memset(v17, 0, sizeof(v17));
  v16 = 0;
  memset(v15, 0, sizeof(v15));
  v14 = 0;
  memset(v13, 0, sizeof(v13));
  v12[3] = &type metadata for LinkServicesProvider;
  v12[4] = &protocol witness table for LinkServicesProvider;
  v4 = sub_2676C9B9C();
  OUTLINED_FUNCTION_7_13(v4);
  v11[3] = v4;
  v11[4] = &protocol witness table for ResponseFactory;
  v11[0] = sub_2676C9B8C();

  sub_2676C981C();
  sub_2676C981C();
  sub_2676CB18C();
  sub_2676C981C();
  v5 = v0 + OBJC_IVAR____TtC16SiriMailInternal24MailSendingSceneHostPlan_resolverOverride;
  *(v5 + 32) = 0;
  *v5 = 0u;
  *(v5 + 16) = 0u;
  *(v0 + OBJC_IVAR____TtC16SiriMailInternal24MailSendingSceneHostPlan_globals) = v3;
  swift_beginAccess();
  v6 = v3;
  sub_267614854(v17, v5);
  swift_endAccess();
  sub_2676149CC(v12, v0 + OBJC_IVAR____TtC16SiriMailInternal24MailSendingSceneHostPlan_linkServicesProvider);
  sub_2675F95E4(v15, v0 + OBJC_IVAR____TtC16SiriMailInternal24MailSendingSceneHostPlan_skContactManagerOverride, &qword_2801CC6B0, &qword_2676CFC80);
  sub_2676149CC(v11, v0 + OBJC_IVAR____TtC16SiriMailInternal24MailSendingSceneHostPlan_responseFactory);
  sub_2675F95E4(v13, &v8, &off_2801CC6B8, &unk_2676CF600);
  if (v9)
  {

    sub_267662EC4(v13, &off_2801CC6B8, &unk_2676CF600);
    sub_267662EC4(v15, &qword_2801CC6B0, &qword_2676CFC80);
    sub_267662EC4(v17, &qword_2801CC6A8, &unk_2676CF5F0);
    __swift_destroy_boxed_opaque_existential_1(v12);
    __swift_destroy_boxed_opaque_existential_1(v11);
    sub_267614E14(&v8, v10);
  }

  else
  {
    sub_2676C964C();

    sub_267662EC4(v13, &off_2801CC6B8, &unk_2676CF600);
    sub_267662EC4(v15, &qword_2801CC6B0, &qword_2676CFC80);
    sub_267662EC4(v17, &qword_2801CC6A8, &unk_2676CF5F0);
    __swift_destroy_boxed_opaque_existential_1(v12);
    __swift_destroy_boxed_opaque_existential_1(v11);
    if (v9)
    {
      sub_267662EC4(&v8, &off_2801CC6B8, &unk_2676CF600);
    }
  }

  sub_267614E14(v10, v0 + OBJC_IVAR____TtC16SiriMailInternal24MailSendingSceneHostPlan_eventSender);
  return v0;
}

void sub_2676A3948(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_21_1();
  a19 = v23;
  a20 = v24;
  v324 = v20;
  v26 = v25;
  v327 = v27;
  v322 = sub_2676C9E6C();
  v28 = OUTLINED_FUNCTION_3(v322);
  v30 = v29;
  v32 = *(v31 + 64);
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_1_5();
  v320 = v33;
  v307 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC8D8, &unk_2676CFC70);
  OUTLINED_FUNCTION_3(v307);
  v306 = v34;
  v36 = *(v35 + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_11_5(v38);
  v314 = sub_2676CB0DC();
  v39 = OUTLINED_FUNCTION_3(v314);
  v313 = v40;
  v42 = *(v41 + 64);
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_11_5(v43);
  v312 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC8C8, &unk_2676D1C40);
  OUTLINED_FUNCTION_3(v312);
  v311 = v44;
  v46 = *(v45 + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_11_5(v48);
  v319 = sub_2676C9EAC();
  v49 = OUTLINED_FUNCTION_3(v319);
  v51 = v50;
  v53 = *(v52 + 64);
  MEMORY[0x28223BE20](v49);
  OUTLINED_FUNCTION_1_5();
  v317 = v54;
  v294 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC970, &qword_2676D1C50);
  OUTLINED_FUNCTION_3(v294);
  v293 = v55;
  v57 = *(v56 + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v58);
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_11_5(v59);
  v316 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC940, &unk_2676D4A50);
  OUTLINED_FUNCTION_3(v316);
  v315 = v60;
  v62 = *(v61 + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v63);
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_11_5(v64);
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC428, &unk_2676CEDD0);
  v66 = OUTLINED_FUNCTION_4_1(v65);
  v68 = *(v67 + 64);
  MEMORY[0x28223BE20](v66);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_4_13();
  v70 = MEMORY[0x28223BE20](v69);
  v72 = &v286 - v71;
  MEMORY[0x28223BE20](v70);
  OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_11_5(v73);
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD290, &qword_2676D24C0);
  OUTLINED_FUNCTION_4_1(v74);
  v76 = *(v75 + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v77);
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_11_5(v78);
  v301 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD298, &unk_2676D1FC0);
  OUTLINED_FUNCTION_3(v301);
  v298 = v79;
  v81 = *(v80 + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v82);
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_11_5(v83);
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC650, &unk_2676CF560);
  OUTLINED_FUNCTION_4_1(v84);
  v86 = *(v85 + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v87);
  OUTLINED_FUNCTION_50_3();
  v304 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC658, &qword_2676D45A0);
  v88 = OUTLINED_FUNCTION_3(v304);
  v300 = v89;
  v91 = *(v90 + 64);
  MEMORY[0x28223BE20](v88);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_4_13();
  MEMORY[0x28223BE20](v92);
  OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_11_5(v93);
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC640, &unk_2676CF550);
  OUTLINED_FUNCTION_4_1(v94);
  v96 = *(v95 + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v97);
  OUTLINED_FUNCTION_9_1();
  v323 = v98;
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC648, &qword_2676CF990);
  v100 = OUTLINED_FUNCTION_3(v99);
  v305 = v101;
  v103 = *(v102 + 64);
  MEMORY[0x28223BE20](v100);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_4_13();
  MEMORY[0x28223BE20](v104);
  OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_11_5(v105);
  v106 = sub_2676C9EBC();
  v107 = OUTLINED_FUNCTION_3(v106);
  v328 = v108;
  v329[0] = v107;
  v110 = *(v109 + 64);
  MEMORY[0x28223BE20](v107);
  OUTLINED_FUNCTION_1_7();
  v113 = v111 - v112;
  MEMORY[0x28223BE20](v114);
  OUTLINED_FUNCTION_10_4();
  OUTLINED_FUNCTION_4_13();
  MEMORY[0x28223BE20](v115);
  OUTLINED_FUNCTION_79_3();
  MEMORY[0x28223BE20](v116);
  v118 = &v286 - v117;
  if (qword_2801CBAA0 != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v303 = v22;
  v289 = v72;
  v325 = v99;
  v321 = v30;
  v318 = v51;
  v119 = sub_2676CBE4C();
  v326 = __swift_project_value_buffer(v119, qword_2801CDC90);
  v120 = sub_2676CBE2C();
  v121 = sub_2676CC23C();
  if (OUTLINED_FUNCTION_5_7(v121))
  {
    v122 = OUTLINED_FUNCTION_17_3();
    *v122 = 0;
    _os_log_impl(&dword_2675D4000, v120, v121, "#SendMailSceneHostPlan accept(input:)", v122, 2u);
    OUTLINED_FUNCTION_2_5();
  }

  sub_2676C9E5C();
  v124 = v328;
  v123 = v329[0];
  v126 = v328 + 88;
  v125 = *(v328 + 88);
  v127 = (v125)(v118, v329[0]);
  v128 = v26;
  v129 = *MEMORY[0x277D5C160];
  v130 = v118;
  v131 = *(v124 + 8);
  v131(v130, v123);
  v166 = v127 == v129;
  v132 = v128;
  if (!v166)
  {
LABEL_14:
    sub_2676C9E5C();
    v154 = OUTLINED_FUNCTION_45();
    if ((v125)(v154) != *MEMORY[0x277D5C150])
    {
      v178 = OUTLINED_FUNCTION_45();
      (v131)(v178);
      goto LABEL_27;
    }

    v155 = *(v328 + 96);
    v156 = OUTLINED_FUNCTION_45();
    v157(v156);
    (*(v318 + 32))(v317, v113, v319);
    v158 = sub_2676C9E8C();
    v160 = v159;
    v161 = sub_2676C96CC();
    v162 = [v161 identifier];

    v163 = sub_2676CBF6C();
    v165 = v164;

    v166 = v158 == v163 && v160 == v165;
    if (v166)
    {
    }

    else
    {
      OUTLINED_FUNCTION_11_16();
      OUTLINED_FUNCTION_95_2();
      OUTLINED_FUNCTION_96_1();

      if ((v158 & 1) == 0)
      {
        v167 = sub_2676C9E8C();
        v169 = v168;
        v170 = sub_2676C96BC();
        v171 = [v170 identifier];

        v172 = sub_2676CBF6C();
        v174 = v173;

        if (v167 == v172 && v169 == v174)
        {
        }

        else
        {
          OUTLINED_FUNCTION_11_16();
          OUTLINED_FUNCTION_95_2();
          OUTLINED_FUNCTION_96_1();

          if ((v167 & 1) == 0)
          {
            v176 = OUTLINED_FUNCTION_42_6();
            v177(v176);
            v123 = v329[0];
LABEL_27:
            (*(v321 + 16))(v320, v132, v322);
            v179 = sub_2676CBE2C();
            v180 = sub_2676CC23C();
            if (OUTLINED_FUNCTION_70_2(v180))
            {
              OUTLINED_FUNCTION_5_3();
              v181 = OUTLINED_FUNCTION_12_2();
              v331 = v181;
              *v123 = 136315138;
              OUTLINED_FUNCTION_85_2(&v334);
              sub_2676C9E5C();
              v182 = sub_2676CBFBC();
              v184 = v183;
              v185 = OUTLINED_FUNCTION_42_6();
              v186(v185);
              v187 = sub_2676B0B84(v182, v184, &v331);

              *(v123 + 4) = v187;
              _os_log_impl(&dword_2675D4000, v179, v180, "#SendMailSceneHostPlan accept(input:): got a non USO parse, rejecting parse: %s", v123, 0xCu);
              __swift_destroy_boxed_opaque_existential_1(v181);
              OUTLINED_FUNCTION_2_5();
              OUTLINED_FUNCTION_4_6();
            }

            else
            {

              v188 = OUTLINED_FUNCTION_42_6();
              v189(v188);
            }

            sub_2676C973C();
            goto LABEL_36;
          }
        }

        v222 = sub_2676CBE2C();
        v223 = sub_2676CC23C();
        if (OUTLINED_FUNCTION_5_5(v223))
        {
          v224 = OUTLINED_FUNCTION_17_3();
          OUTLINED_FUNCTION_9_4(v224);
          OUTLINED_FUNCTION_3_7();
          _os_log_impl(v225, v226, v227, v228, v229, 2u);
          OUTLINED_FUNCTION_4_6();
        }

        OUTLINED_FUNCTION_23_8(&a16);
        sub_26761F9A8();
        swift_getKeyPath();
        OUTLINED_FUNCTION_60_0(&a10);
        v230 = v316;
        sub_2676C97EC();

        v231 = OUTLINED_FUNCTION_16_15(&a17);
        v232(v231, v230);
        v233 = *MEMORY[0x277D5CA20];
        OUTLINED_FUNCTION_34_7(&a14);
        v235 = v310;
        v236 = v314;
        (*(v234 + 104))(v310);
        v237 = v312;
        sub_2676C984C();
        (*(v230 + 8))(v235, v236);
        OUTLINED_FUNCTION_27_5(&a12);
        v208 = &off_279C11000;
        v210 = v237;
LABEL_35:
        v209(v208, v210);
        sub_2676C974C();
        v211 = OUTLINED_FUNCTION_42_6();
        v212(v211);
        goto LABEL_36;
      }
    }

    v190 = sub_2676CBE2C();
    v191 = sub_2676CC23C();
    if (OUTLINED_FUNCTION_5_5(v191))
    {
      v192 = OUTLINED_FUNCTION_17_3();
      OUTLINED_FUNCTION_9_4(v192);
      OUTLINED_FUNCTION_3_7();
      _os_log_impl(v193, v194, v195, v196, v197, 2u);
      OUTLINED_FUNCTION_4_6();
    }

    OUTLINED_FUNCTION_51_2(&a16);
    sub_26761F9A8();
    swift_getKeyPath();
    OUTLINED_FUNCTION_85_2(&a10);
    v198 = v316;
    sub_2676C97EC();

    OUTLINED_FUNCTION_27_5(&a17);
    v199 = OUTLINED_FUNCTION_86_2();
    v200(v199);
    v201 = *MEMORY[0x277D5CA00];
    OUTLINED_FUNCTION_23_8(&a14);
    v203 = v310;
    v204 = v314;
    (*(v202 + 104))(v310);
    v205 = v312;
    sub_2676C984C();
    (*(v198 + 8))(v203, v204);
    OUTLINED_FUNCTION_27_5(&a12);
    v206(v132, v205);
    OUTLINED_FUNCTION_23_8(&v332);
    sub_26761F98C();
    LOBYTE(v331) = 1;
    v207 = v307;
    sub_2676C984C();
    v208 = OUTLINED_FUNCTION_16_15(&v333);
    v210 = v207;
    goto LABEL_35;
  }

  sub_2676C9E5C();
  sub_2676371E0();
  if (!v133)
  {
    v131(v21, v123);
    v135 = v323;
    v152 = OUTLINED_FUNCTION_33_4();
    __swift_storeEnumTagSinglePayload(v152, v153, 1, v325);
    goto LABEL_13;
  }

  v134 = sub_2676CA77C();

  v135 = v323;
  sub_267698EA0(v134);
  v123 = v329[0];

  v131(v21, v123);
  v136 = OUTLINED_FUNCTION_33_4();
  v137 = v325;
  if (__swift_getEnumTagSinglePayload(v136, v138, v325) == 1)
  {
LABEL_13:
    sub_267662EC4(v135, &qword_2801CC640, &unk_2676CF550);
    goto LABEL_14;
  }

  v287 = v132;
  v288 = v131;
  OUTLINED_FUNCTION_23_8(&v331);
  v140 = v309;
  (*(v139 + 32))(v309, v135, v137);
  v141 = v21 + 16;
  v142 = v302;
  v323 = *(v21 + 16);
  v323(v302, v140, v137);
  sub_2676CBA1C();
  OUTLINED_FUNCTION_0_29();
  sub_2676AFE00(v143, v144);
  OUTLINED_FUNCTION_36_5(&v330);
  v286 = v145;
  sub_2676CA3FC();
  v146 = v304;
  if (__swift_getEnumTagSinglePayload(v140, 1, v304) != 1)
  {
    OUTLINED_FUNCTION_51_2(v329);
    v214 = v296;
    (*(v213 + 32))(v296, v140, v146);
    v215 = v308;
    sub_2676C9E5C();
    sub_2676A6DE4(v214, v215, v216, v217, v218, v219, v220, v221, v286, v287, v288, v289, v290, v291, v292, v293, v294, v295, v296, v297);
    v288(v215, v329[0]);
    (*(v125 + 8))(v214, v146);
    (*(v21 + 8))(v309, v137);
    goto LABEL_36;
  }

  sub_267662EC4(v140, &qword_2801CC650, &unk_2676CF560);
  v323(v142, v309, v137);
  sub_2676CBADC();
  sub_2676AFE00(&qword_2801CCA48, MEMORY[0x277D5C8A8]);
  OUTLINED_FUNCTION_34_7(&v326);
  v148 = v147;
  sub_2676CA3FC();
  v149 = v301;
  if (__swift_getEnumTagSinglePayload(v141, 1, v301) == 1)
  {
    v150 = OUTLINED_FUNCTION_16_15(&v331);
    v151(v150, v137);
    sub_267662EC4(v141, &qword_2801CD290, &qword_2676D24C0);
    v123 = v329[0];
    v131 = v288;
    v132 = v287;
    goto LABEL_14;
  }

  v238 = *(v298 + 32);
  v239 = OUTLINED_FUNCTION_38_0();
  v240(v239);
  swift_getKeyPath();
  OUTLINED_FUNCTION_1_31();
  sub_2676AFE00(v241, v242);
  OUTLINED_FUNCTION_51_2(&v324);
  sub_2676CA3EC();

  v243 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CBF60, &unk_2676CEDE0);
  v244 = OUTLINED_FUNCTION_64_2(v125);
  sub_267662EC4(v125, &qword_2801CC428, &unk_2676CEDD0);
  if (v244 == 1)
  {
    v329[0] = v148;
    OUTLINED_FUNCTION_36_5(&a16);
    sub_26761F9A8();
    swift_getKeyPath();
    OUTLINED_FUNCTION_43_3(&v321);
    v245 = v316;
    sub_2676C97EC();

    OUTLINED_FUNCTION_27_5(&a17);
    v246(v149, v245);
    v247 = v294;
    sub_2676C983C();
    OUTLINED_FUNCTION_27_5(&v322);
    v248(v126, v247);
    swift_getKeyPath();
    v249 = sub_2676A3390(&v331);
    OUTLINED_FUNCTION_100_1();
    v250 = sub_2676CA3DC();
    if (OUTLINED_FUNCTION_64_2(v251))
    {
      v252 = OUTLINED_FUNCTION_29_9();
      v250(v252);

      v253 = OUTLINED_FUNCTION_30_8();
      v249(v253);
    }

    else
    {
      KeyPath = swift_getKeyPath();
      swift_getKeyPath();
      OUTLINED_FUNCTION_43_3(&v318);
      sub_2676CA3EC();

      OUTLINED_FUNCTION_39_6(&v331);
      if (v166)
      {
        sub_267662EC4(&v331, &qword_2801CC428, &unk_2676CEDD0);
      }

      else
      {
        swift_getKeyPath();
        sub_2676CA89C();
        v329[0] = KeyPath;

        OUTLINED_FUNCTION_14_2(v243);
        (*(v270 + 8))(&v331, v243);
      }

      sub_2676CA8AC();
      v271 = OUTLINED_FUNCTION_29_9();
      v250(v271);

      v272 = OUTLINED_FUNCTION_30_8();
      v249(v272);
    }

    v273 = v305;
    v274 = sub_2676CBE2C();
    v275 = sub_2676CC23C();
    v276 = OUTLINED_FUNCTION_5_5(v275);
    v277 = v301;
    v278 = v325;
    if (v276)
    {
      v279 = OUTLINED_FUNCTION_17_3();
      OUTLINED_FUNCTION_9_4(v279);
      OUTLINED_FUNCTION_3_7();
      _os_log_impl(v280, v281, v282, v283, v284, 2u);
      OUTLINED_FUNCTION_4_6();
    }

    sub_2676C974C();
    OUTLINED_FUNCTION_27_5(&v327);
    v285(v299, v277);
    (*(v273 + 8))(v309, v278);
  }

  else
  {
    v254 = sub_2676CBE2C();
    v255 = sub_2676CC23C();
    if (OUTLINED_FUNCTION_5_7(v255))
    {
      v256 = OUTLINED_FUNCTION_17_3();
      *v256 = 0;
      _os_log_impl(&dword_2675D4000, v254, v255, "#SendMailSceneHostPlan accept(input:) processed update message task, returning .yes", v256, 2u);
      OUTLINED_FUNCTION_2_5();
    }

    v257 = swift_getKeyPath();
    OUTLINED_FUNCTION_51_2(&v320);
    v258 = v299;
    sub_2676CA3EC();

    OUTLINED_FUNCTION_60_0(&v319);
    sub_2676CA3BC();
    OUTLINED_FUNCTION_34_7(&v334);
    sub_2676C9E5C();
    sub_2676A6DE4(v243, v257, v259, v260, v261, v262, v263, v264, v286, v287, v288, v289, v290, v291, v292, v293, v294, v295, v296, v297);
    v288(v257, v329[0]);
    OUTLINED_FUNCTION_27_5(v329);
    v265(v243, v304);
    OUTLINED_FUNCTION_27_5(&v327);
    v266(v258, v149);
    v267 = OUTLINED_FUNCTION_16_15(&v331);
    v268(v267, v325);
  }

LABEL_36:
  OUTLINED_FUNCTION_20_1();
}

void sub_2676A4EEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_21_1();
  a19 = v22;
  a20 = v23;
  v165 = v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD230, &unk_2676D4670);
  OUTLINED_FUNCTION_4_1(v25);
  v27 = *(v26 + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_11_5(v29);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC940, &unk_2676D4A50);
  v31 = OUTLINED_FUNCTION_3(v30);
  v166 = v32;
  v34 = *(v33 + 64);
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_4_13();
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_10_4();
  OUTLINED_FUNCTION_4_13();
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_10_4();
  OUTLINED_FUNCTION_4_13();
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_10_4();
  OUTLINED_FUNCTION_4_13();
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_10_4();
  OUTLINED_FUNCTION_4_13();
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_10_4();
  OUTLINED_FUNCTION_4_13();
  MEMORY[0x28223BE20](v40);
  v42 = &v148 - v41;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CDB68, &qword_2676D4B60);
  OUTLINED_FUNCTION_3(v43);
  v45 = v44;
  v47 = *(v46 + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_50_3();
  v49 = type metadata accessor for ResolveSiriMailMessageIntent();
  v50 = OUTLINED_FUNCTION_2_6(v49);
  v52 = *(v51 + 64);
  MEMORY[0x28223BE20](v50);
  OUTLINED_FUNCTION_3_2();
  v55 = v54 - v53;
  v152 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CDBF0, &qword_2676D4B68);
  OUTLINED_FUNCTION_3(v152);
  v153 = v56;
  v58 = *(v57 + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v59);
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_11_5(v60);
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CDBF8, &qword_2676D4B70);
  v155 = OUTLINED_FUNCTION_3(v61);
  v156 = v62;
  v64 = *(v63 + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v65);
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_11_5(v66);
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CDC00, &qword_2676D4B78);
  v157 = OUTLINED_FUNCTION_3(v67);
  v158 = v68;
  v70 = *(v69 + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v71);
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_11_5(v72);
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CDC08, &qword_2676D4B80);
  v159 = OUTLINED_FUNCTION_3(v73);
  v160 = v74;
  v76 = *(v75 + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v77);
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_11_5(v78);
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CDC10, &qword_2676D4B88);
  v161 = OUTLINED_FUNCTION_3(v79);
  v162 = v80;
  v82 = *(v81 + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v83);
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_11_5(v84);
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CDC18, &qword_2676D4B90);
  v163 = OUTLINED_FUNCTION_3(v85);
  v164 = v86;
  v88 = *(v87 + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v89);
  OUTLINED_FUNCTION_9_1();
  v154 = v90;
  sub_2676A34F8();
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_29();
  v151 = sub_2676AFE00(v91, v92);
  OUTLINED_FUNCTION_1_31();
  sub_2676AFE00(v93, v94);
  sub_2676C9A2C();

  (*(v45 + 8))(v21, v43);
  v95 = v42;
  sub_26761F9A8();
  swift_getKeyPath();
  v96 = v55 + v49[5];
  v150 = v42;
  sub_2676C97EC();

  v98 = v166 + 8;
  v97 = *(v166 + 8);
  v97(v95, v30);
  OUTLINED_FUNCTION_43_3(&v170);
  sub_26761F9A8();
  swift_getKeyPath();
  v99 = v55 + v49[6];
  v100 = v30;
  sub_2676C97EC();

  v97(v21, v30);
  OUTLINED_FUNCTION_23_8(&v172);
  sub_26761F9A8();
  swift_getKeyPath();
  v101 = v55 + v49[7];
  sub_2676C97EC();

  v97(v30, v30);
  OUTLINED_FUNCTION_60_0(&v173);
  sub_26761F9A8();
  swift_getKeyPath();
  v102 = v49[8];
  OUTLINED_FUNCTION_44_4();

  v103 = OUTLINED_FUNCTION_78_2();
  (v97)(v103);
  OUTLINED_FUNCTION_60_0(&v174);
  sub_26761F9A8();
  swift_getKeyPath();
  v104 = v49[9];
  OUTLINED_FUNCTION_44_4();

  v105 = OUTLINED_FUNCTION_78_2();
  (v97)(v105);
  OUTLINED_FUNCTION_60_0(&a9);
  sub_26761F9A8();
  swift_getKeyPath();
  v106 = v49[10];
  OUTLINED_FUNCTION_44_4();

  v107 = OUTLINED_FUNCTION_78_2();
  (v97)(v107);
  v166 = v98;
  v149 = v97;
  OUTLINED_FUNCTION_60_0(&a10);
  sub_26761F9A8();
  swift_getKeyPath();
  v108 = v49[11];
  OUTLINED_FUNCTION_44_4();

  v109 = OUTLINED_FUNCTION_78_2();
  (v97)(v109);
  v110 = v49;
  v111 = v49[12];
  v112 = sub_2676C8BFC();
  v148 = v55;
  __swift_storeEnumTagSinglePayload(v55 + v111, 1, 1, v112);
  v113 = OBJC_IVAR____TtC16SiriMailInternal24MailSendingSceneHostPlan_resolverOverride;
  swift_beginAccess();
  sub_2675F95E4(v20 + v113, v55 + v49[13], &qword_2801CC6A8, &unk_2676CF5F0);
  sub_2675F95E4(v20 + OBJC_IVAR____TtC16SiriMailInternal24MailSendingSceneHostPlan_skContactManagerOverride, v55 + v49[14], &qword_2801CC6B0, &qword_2676CFC80);
  v114 = *(v20 + OBJC_IVAR____TtC16SiriMailInternal24MailSendingSceneHostPlan_globals);
  *(v55 + v49[15]) = v114;
  v115 = v114;
  OUTLINED_FUNCTION_85_2(&a17);
  sub_26761F98C();
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC8D8, &unk_2676CFC70);
  __swift_storeEnumTagSinglePayload(v98, 0, 1, v116);
  v117 = sub_2676CBA1C();

  v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC428, &unk_2676CEDD0);
  OUTLINED_FUNCTION_37_9();
  v121 = sub_2676AFE00(v119, v120);
  OUTLINED_FUNCTION_43_3(&a11);
  v122 = v110;
  v123 = v151;
  v124 = v148;
  sub_2676C955C();

  sub_267662EC4(v98, &qword_2801CD230, &unk_2676D4670);
  sub_26766B21C(v124);
  OUTLINED_FUNCTION_85_2(&v171);
  sub_26761F9A8();
  v167 = v122;
  v168 = v117;
  v169 = v118;
  v170 = v121;
  v171 = v123;
  OUTLINED_FUNCTION_21_8();
  v125 = OUTLINED_FUNCTION_72_1();
  OUTLINED_FUNCTION_12_18();
  v128 = sub_2676AFE00(v126, v127);
  OUTLINED_FUNCTION_36_5(&a12);
  v129 = v152;
  sub_2676C94EC();
  v149(v98, v100);
  OUTLINED_FUNCTION_27_5(&a18);
  v130 = OUTLINED_FUNCTION_14_3();
  v131(v130);

  v167 = v129;
  v168 = v125;
  v169 = v128;
  OUTLINED_FUNCTION_19_4();
  v132 = OUTLINED_FUNCTION_72_1();
  OUTLINED_FUNCTION_60_0(&a13);
  v133 = v155;
  OUTLINED_FUNCTION_75_1();
  sub_2676C952C();

  v134 = *(v156 + 8);
  v135 = OUTLINED_FUNCTION_47_4();
  v136(v135);

  v167 = v133;
  v168 = &type metadata for SendMailResult;
  v169 = v132;
  OUTLINED_FUNCTION_27_8();
  v137 = OUTLINED_FUNCTION_72_1();
  OUTLINED_FUNCTION_36_5(&a14);
  v138 = v157;
  sub_2676C954C();

  (*(v158 + 8))(v129, v138);
  v167 = v138;
  v168 = v137;
  OUTLINED_FUNCTION_26_7();
  v139 = OUTLINED_FUNCTION_72_1();
  OUTLINED_FUNCTION_60_0(&a16);
  v140 = v159;
  OUTLINED_FUNCTION_75_1();
  sub_2676C951C();
  v141 = *(v160 + 8);
  v142 = OUTLINED_FUNCTION_47_4();
  v143(v142);

  v167 = v140;
  v168 = &type metadata for SendMailResult;
  v169 = v139;
  OUTLINED_FUNCTION_25_10();
  v144 = OUTLINED_FUNCTION_72_1();
  v145 = v154;
  v146 = v161;
  sub_2676C94FC();

  (*(v162 + 8))(v129, v146);
  v167 = v146;
  v168 = v144;
  OUTLINED_FUNCTION_24_7();
  OUTLINED_FUNCTION_72_1();
  v147 = v163;
  sub_2676C933C();
  (*(v164 + 8))(v145, v147);
  OUTLINED_FUNCTION_20_1();
}

uint64_t sub_2676A5AD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC3D0, &qword_2676D1D80) - 8) + 64) + 15;
  v3[4] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC8D8, &unk_2676CFC70);
  v3[5] = v5;
  v6 = *(v5 - 8);
  v3[6] = v6;
  v7 = *(v6 + 64) + 15;
  v3[7] = swift_task_alloc();
  v8 = sub_2676CB0DC();
  v3[8] = v8;
  v9 = *(v8 - 8);
  v3[9] = v9;
  v10 = *(v9 + 64) + 15;
  v3[10] = swift_task_alloc();
  v11 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CCA20, &qword_2676CFEB8) - 8) + 64) + 15;
  v3[11] = swift_task_alloc();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC8C8, &unk_2676D1C40);
  v3[12] = v12;
  v13 = *(v12 - 8);
  v3[13] = v13;
  v14 = *(v13 + 64) + 15;
  v3[14] = swift_task_alloc();
  v3[15] = swift_task_alloc();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC940, &unk_2676D4A50);
  v3[16] = v15;
  v16 = *(v15 - 8);
  v3[17] = v16;
  v17 = *(v16 + 64) + 15;
  v3[18] = swift_task_alloc();
  v3[19] = swift_task_alloc();
  sub_2676CC1CC();
  v3[20] = sub_2676CC1BC();
  v19 = sub_2676CC18C();
  v3[21] = v19;
  v3[22] = v18;

  return MEMORY[0x2822009F8](sub_2676A5D84, v19, v18);
}

uint64_t sub_2676A5D84()
{
  v1 = *(v0 + 152);
  v2 = *(v0 + 128);
  v3 = *(v0 + 136);
  v4 = *(v0 + 120);
  v5 = *(v0 + 96);
  v6 = *(v0 + 104);
  v7 = *(v0 + 88);
  v51 = *(v0 + 64);
  v8 = *(v0 + 24);
  sub_26761F9A8();
  swift_getKeyPath();
  sub_2676C97EC();

  v9 = *(v3 + 8);
  v10 = OUTLINED_FUNCTION_45();
  v9(v10);
  sub_2676C97FC();
  v11 = *(v6 + 8);
  v11(v4, v5);
  if (__swift_getEnumTagSinglePayload(v7, 1, v51) == 1)
  {
    sub_267662EC4(*(v0 + 88), &qword_2801CCA20, &qword_2676CFEB8);
  }

  else
  {
    v12 = *(v0 + 72);
    v13 = *(v12 + 88);
    v14 = OUTLINED_FUNCTION_11_16();
    v16 = v15(v14);
    v17 = *MEMORY[0x277D5CA08];
    v18 = *(v12 + 8);
    v19 = OUTLINED_FUNCTION_11_16();
    v18(v19);
    if (v16 == v17)
    {
      if (qword_2801CBAA0 != -1)
      {
        OUTLINED_FUNCTION_0();
      }

      v49 = v9;
      v50 = v18;
      v52 = v11;
      v20 = sub_2676CBE4C();
      OUTLINED_FUNCTION_24_2(v20, qword_2801CDC90);
      v21 = sub_2676CBE2C();
      v22 = sub_2676CC26C();
      if (os_log_type_enabled(v21, v22))
      {
        v23 = OUTLINED_FUNCTION_17_3();
        OUTLINED_FUNCTION_9_4(v23);
        _os_log_impl(&dword_2675D4000, v21, v22, "#SendMailSceneHostPlan confirmed via voice, sending email now", v16, 2u);
        OUTLINED_FUNCTION_4_6();
      }

      v24 = *(v0 + 144);
      v25 = *(v0 + 128);
      v26 = *(v0 + 112);
      v27 = *(v0 + 72);
      v28 = *(v0 + 80);
      v29 = *(v0 + 64);
      v48 = *(v0 + 48);
      v46 = *(v0 + 56);
      v47 = *(v0 + 40);
      v44 = *(v0 + 96);
      v45 = *(v0 + 24);

      sub_26761F9A8();
      swift_getKeyPath();
      sub_2676C97EC();

      (v49)(v24, v25);
      (*(v27 + 104))(v28, *MEMORY[0x277D5CA00], v29);
      sub_2676C984C();
      (v50)(v28, v29);
      v30 = OUTLINED_FUNCTION_58_1();
      v52(v30);
      sub_26761F98C();
      *(v0 + 192) = 1;
      sub_2676C984C();
      v31 = *(v48 + 8);
      v32 = OUTLINED_FUNCTION_45();
      v33(v32);
    }
  }

  v34 = *(v0 + 32);
  sub_2676C8BFC();
  v35 = OUTLINED_FUNCTION_33_4();
  __swift_storeEnumTagSinglePayload(v35, v36, 1, v37);
  swift_task_alloc();
  OUTLINED_FUNCTION_15_3();
  *(v0 + 184) = v38;
  *v38 = v39;
  v38[1] = sub_267665C10;
  v41 = *(v0 + 24);
  v40 = *(v0 + 32);
  v42 = *(v0 + 16);

  return sub_26761FD10();
}

uint64_t sub_2676A6114(uint64_t *a1)
{
  v1 = *(a1 + 8);
  v3 = *a1;
  v4 = v1;
  return sub_26761FAAC(&v3);
}

uint64_t sub_2676A6158(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[21] = a2;
  v3[22] = a3;
  v3[20] = a1;
  v4 = sub_2676CB0DC();
  v3[23] = v4;
  v5 = *(v4 - 8);
  v3[24] = v5;
  v6 = *(v5 + 64) + 15;
  v3[25] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC8C8, &unk_2676D1C40);
  v3[26] = v7;
  v8 = *(v7 - 8);
  v3[27] = v8;
  v9 = *(v8 + 64) + 15;
  v3[28] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC940, &unk_2676D4A50);
  v3[29] = v10;
  v11 = *(v10 - 8);
  v3[30] = v11;
  v12 = *(v11 + 64) + 15;
  v3[31] = swift_task_alloc();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD310, &unk_2676D4F10);
  v3[32] = v13;
  v14 = *(v13 - 8);
  v3[33] = v14;
  v15 = *(v14 + 64) + 15;
  v3[34] = swift_task_alloc();
  v16 = sub_2676C9CCC();
  v3[35] = v16;
  v17 = *(v16 - 8);
  v3[36] = v17;
  v18 = *(v17 + 64) + 15;
  v3[37] = swift_task_alloc();
  sub_2676CC1CC();
  v3[38] = sub_2676CC1BC();
  v20 = sub_2676CC18C();
  v3[39] = v20;
  v3[40] = v19;

  return MEMORY[0x2822009F8](sub_2676A63E4, v20, v19);
}

uint64_t sub_2676A63E4()
{
  v75 = v0;
  v1 = (v0 + 128);
  if (qword_2801CBAA0 != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v2 = sub_2676CBE4C();
  OUTLINED_FUNCTION_24_2(v2, qword_2801CDC90);
  v3 = sub_2676CBE2C();
  v4 = sub_2676CC26C();
  if (OUTLINED_FUNCTION_70_2(v4))
  {
    v5 = OUTLINED_FUNCTION_17_3();
    *v5 = 0;
    _os_log_impl(&dword_2675D4000, v3, v4, "#SendMailSceneHostPlan handling error", v5, 2u);
    OUTLINED_FUNCTION_2_5();
  }

  v6 = *(v0 + 296);
  v7 = *(v0 + 280);
  v8 = *(v0 + 168);

  *(v0 + 128) = v8;
  v9 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CCE70, &unk_2676D1300);
  OUTLINED_FUNCTION_58_4();
  if (swift_dynamicCast())
  {
    v10 = (v0 + 296);
    v11 = (v0 + 280);
    v12 = 288;
LABEL_9:
    (*(*(v0 + v12) + 8))(*v10, *v11);

    v18 = *(v0 + 240);
    v17 = *(v0 + 248);
    v19 = *(v0 + 224);
    v20 = *(v0 + 232);
    v21 = *(v0 + 216);
    v22 = *(v0 + 192);
    v23 = *(v0 + 200);
    v24 = *(v0 + 176);
    v70 = *(v0 + 184);
    v72 = *(v0 + 208);
    sub_26761F9A8();
    swift_getKeyPath();
    sub_2676C97EC();

    (*(v18 + 8))(v17, v20);
    (*(v22 + 104))(v23, *MEMORY[0x277D5CA20], v70);
    sub_2676C984C();
    (*(v22 + 8))(v23, v70);
    (*(v21 + 8))(v19, v72);
    v25 = sub_2676CBE2C();
    v26 = sub_2676CC26C();
    if (OUTLINED_FUNCTION_5_7(v26))
    {
      v27 = OUTLINED_FUNCTION_17_3();
      OUTLINED_FUNCTION_9_4(v27);
      _os_log_impl(&dword_2675D4000, v25, v26, "#SendMailSceneHostPlan user cancelled or rejected, returning IntentCancelled", v19, 2u);
      OUTLINED_FUNCTION_4_6();
    }

    swift_task_alloc();
    OUTLINED_FUNCTION_15_3();
    *(v0 + 328) = v28;
    *v28 = v29;
    OUTLINED_FUNCTION_57_6(v28);
    OUTLINED_FUNCTION_87_2();

    return sub_26762E11C();
  }

  v1 = (v0 + 136);
  v13 = *(v0 + 272);
  v14 = *(v0 + 256);
  v15 = *(v0 + 168);

  *(v0 + 136) = v15;
  v16 = v15;
  OUTLINED_FUNCTION_58_4();
  if (swift_dynamicCast())
  {
    v10 = (v0 + 272);
    v11 = (v0 + 256);
    v12 = 264;
    goto LABEL_9;
  }

  v32 = *(v0 + 168);

  *(v0 + 144) = v32;
  v33 = v32;
  if (swift_dynamicCast())
  {
    v34 = *(v0 + 88);
    v35 = *(v0 + 96);
    *(v0 + 344) = v34;
    *(v0 + 352) = v35;
    v36 = *(v0 + 104);
    if (v36 == 1)
    {
      v37 = sub_2676CBE2C();
      v38 = sub_2676CC26C();
      if (OUTLINED_FUNCTION_5_7(v38))
      {
        v39 = OUTLINED_FUNCTION_17_3();
        *v39 = 0;
        _os_log_impl(&dword_2675D4000, v37, v38, "#SendMailSceneHostPlan RecipientResolutionError.contactMatchWithoutEmailHandle, returning UnsupportedContactNoEmailAddress", v39, 2u);
        OUTLINED_FUNCTION_2_5();
      }

      v40 = *(v0 + 176);

      sub_2676149CC(v40 + OBJC_IVAR____TtC16SiriMailInternal24MailSendingSceneHostPlan_responseFactory, v0 + 24);
      *(v0 + 16) = v34;
      sub_267651D60(v34, v35, 1);
      swift_task_alloc();
      OUTLINED_FUNCTION_15_3();
      *(v0 + 360) = v41;
      *v41 = v42;
      OUTLINED_FUNCTION_57_6(v41);
      OUTLINED_FUNCTION_87_2();

      return sub_2676BFAF0();
    }

    sub_267651D40(v34, v35, v36);
  }

  v45 = *(v0 + 240);
  v44 = *(v0 + 248);
  v46 = *(v0 + 224);
  v47 = *(v0 + 232);
  v48 = *(v0 + 216);
  v49 = *(v0 + 192);
  v50 = *(v0 + 200);
  v51 = *(v0 + 176);
  v69 = *(v0 + 184);
  v71 = *(v0 + 208);
  v73 = *(v0 + 168);

  sub_26761F9A8();
  swift_getKeyPath();
  sub_2676C97EC();

  (*(v45 + 8))(v44, v47);
  (*(v49 + 104))(v50, *MEMORY[0x277D5CA10], v69);
  sub_2676C984C();
  (*(v49 + 8))(v50, v69);
  v52 = *(v48 + 8);
  v53 = OUTLINED_FUNCTION_58_4();
  v54(v53);
  v55 = v73;
  v56 = sub_2676CBE2C();
  v57 = sub_2676CC26C();

  if (os_log_type_enabled(v56, v57))
  {
    v58 = *(v0 + 168);
    OUTLINED_FUNCTION_5_3();
    v59 = OUTLINED_FUNCTION_12_2();
    v74 = v59;
    *v73 = 136315138;
    swift_getErrorValue();
    v61 = *(v0 + 64);
    v60 = *(v0 + 72);
    v62 = *(v0 + 80);
    v63 = sub_2676CC5FC();
    v65 = sub_2676B0B84(v63, v64, &v74);

    *(v73 + 1) = v65;
    _os_log_impl(&dword_2675D4000, v56, v57, "#SendMailSceneHostPlan error: %s", v73, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v59);
    OUTLINED_FUNCTION_2_5();
    OUTLINED_FUNCTION_4_6();
  }

  type metadata accessor for GenericError();
  *(v0 + 376) = swift_initStackObject();
  swift_task_alloc();
  OUTLINED_FUNCTION_15_3();
  *(v0 + 384) = v66;
  *v66 = v67;
  OUTLINED_FUNCTION_57_6(v66);
  OUTLINED_FUNCTION_87_2();

  return sub_2676C1B78();
}

uint64_t sub_2676A6A60()
{
  OUTLINED_FUNCTION_12_1();
  v2 = *v1;
  OUTLINED_FUNCTION_2_7();
  *v4 = v3;
  v5 = v2[41];
  *v4 = *v1;
  *(v3 + 336) = v0;

  v6 = v2[40];
  v7 = v2[39];
  if (v0)
  {
    v8 = sub_2676A6DAC;
  }

  else
  {
    v8 = sub_267666894;
  }

  return MEMORY[0x2822009F8](v8, v7, v6);
}

uint64_t sub_2676A6B90()
{
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_9_3();
  v3 = v2;
  OUTLINED_FUNCTION_2_7();
  *v4 = v3;
  v6 = *(v5 + 360);
  v7 = *v1;
  OUTLINED_FUNCTION_0_1();
  *v8 = v7;
  v3[46] = v0;

  sub_267662E0C((v3 + 2));
  v9 = v3[39];
  v10 = v3[40];
  if (v0)
  {
    v11 = sub_2676A6D90;
  }

  else
  {
    v11 = sub_267666A1C;
  }

  return MEMORY[0x2822009F8](v11, v9, v10);
}

uint64_t sub_2676A6C94()
{
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_9_3();
  v3 = v2;
  OUTLINED_FUNCTION_2_7();
  *v4 = v3;
  v6 = *(v5 + 384);
  v7 = *v1;
  OUTLINED_FUNCTION_0_1();
  *v8 = v7;
  v3[49] = v0;

  v9 = v3[39];
  v10 = v3[40];
  if (v0)
  {
    v11 = sub_2676A6DC8;
  }

  else
  {
    v11 = sub_26766B3F0;
  }

  return MEMORY[0x2822009F8](v11, v9, v10);
}

void sub_2676A6DE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_21_1();
  a19 = v22;
  a20 = v23;
  v232 = v24;
  v233 = v20;
  v222 = v26;
  v223 = v25;
  v226 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC658, &qword_2676D45A0);
  OUTLINED_FUNCTION_3(v226);
  v214 = v27;
  v29 = *(v28 + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_11_5(v31);
  v217 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC968, &unk_2676CFDF0);
  OUTLINED_FUNCTION_3(v217);
  v216 = v32;
  v34 = *(v33 + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_11_5(v36);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CDBE0, &qword_2676D4F20);
  v38 = OUTLINED_FUNCTION_4_1(v37);
  v40 = *(v39 + 64);
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_4_13();
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_10_4();
  OUTLINED_FUNCTION_4_13();
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_11_5(v43);
  v230 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD510, &unk_2676D4970);
  OUTLINED_FUNCTION_3(v230);
  v224 = v44;
  v46 = *(v45 + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_11_5(v48);
  v212 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC428, &unk_2676CEDD0);
  v49 = OUTLINED_FUNCTION_2_6(v212);
  v51 = *(v50 + 64);
  MEMORY[0x28223BE20](v49);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_4_13();
  MEMORY[0x28223BE20](v52);
  OUTLINED_FUNCTION_10_4();
  OUTLINED_FUNCTION_4_13();
  MEMORY[0x28223BE20](v53);
  OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_11_5(v54);
  v219 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC970, &qword_2676D1C50);
  OUTLINED_FUNCTION_3(v219);
  v218 = v55;
  v57 = *(v56 + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v58);
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_11_5(v59);
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC940, &unk_2676D4A50);
  v61 = OUTLINED_FUNCTION_3(v60);
  v228 = v62;
  v229 = v61;
  v64 = *(v63 + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v65);
  OUTLINED_FUNCTION_9_1();
  v227 = v66;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD9A8, &qword_2676D3E40);
  OUTLINED_FUNCTION_3(v67);
  v69 = v68;
  v71 = *(v70 + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v72);
  v74 = &v202 - v73;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD3C0, &unk_2676D4DF0);
  OUTLINED_FUNCTION_3(v75);
  v77 = v76;
  v79 = *(v78 + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v80);
  v82 = &v202 - v81;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD3B8, &unk_2676D3E60);
  OUTLINED_FUNCTION_3(v83);
  v221 = v84;
  v86 = *(v85 + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v87);
  OUTLINED_FUNCTION_50_3();
  sub_2676CBA1C();
  OUTLINED_FUNCTION_0_29();
  v225 = sub_2676AFE00(v88, v89);
  sub_2676C98BC();
  swift_getKeyPath();
  OUTLINED_FUNCTION_1_31();
  v92 = sub_2676AFE00(v90, v91);
  OUTLINED_FUNCTION_91_2();
  sub_2676C988C();
  v93 = v83;
  v94 = v232;

  (*(v77 + 8))(v82, v75);
  swift_getKeyPath();
  OUTLINED_FUNCTION_59_4();
  v231 = v21;
  sub_2676C989C();

  LOBYTE(v82) = sub_2676C987C();
  v97 = *(v69 + 8);
  v96 = v69 + 8;
  v95 = v97;
  v97(v74, v67);
  v220 = v93;
  if (v82)
  {
    v207 = v96;
    v208 = v95;
    sub_26761F9A8();
    swift_getKeyPath();
    OUTLINED_FUNCTION_36_5(&a14);
    sub_2676C97EC();

    OUTLINED_FUNCTION_107_0();
    v98 = OUTLINED_FUNCTION_14_3();
    v99(v98);
    sub_2676C983C();
    v100 = *(v218 + 8);
    v101 = OUTLINED_FUNCTION_47_4();
    v102(v101);
    swift_getKeyPath();
    v103 = sub_2676A3390(v235);
    v104 = sub_2676CA3DC();
    v106 = v105;
    v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CBF60, &unk_2676CEDE0);
    if (OUTLINED_FUNCTION_64_2(v106))
    {
      v107 = OUTLINED_FUNCTION_29_9();
      v104(v107);

      v108 = OUTLINED_FUNCTION_30_8();
      v103(v108);
      OUTLINED_FUNCTION_101_0();
      v94 = v232;
      v95 = v208;
    }

    else
    {
      v204 = v106;
      v205 = v104;
      v206 = v103;
      KeyPath = swift_getKeyPath();
      swift_getKeyPath();
      OUTLINED_FUNCTION_36_5(&v234);
      sub_2676CA3EC();

      OUTLINED_FUNCTION_39_6(v103);
      if (v109)
      {
        sub_267662EC4(v103, &qword_2801CC428, &unk_2676CEDD0);
      }

      else
      {
        swift_getKeyPath();
        OUTLINED_FUNCTION_59_4();
        sub_2676CA89C();

        OUTLINED_FUNCTION_14_2(v93);
        (*(v110 + 8))(v103, v93);
      }

      v95 = v208;
      sub_2676CA8AC();
      v111 = OUTLINED_FUNCTION_29_9();
      v205(v111);

      v112 = OUTLINED_FUNCTION_30_8();
      v206(v112);
      OUTLINED_FUNCTION_101_0();
      v94 = v232;
    }

    v96 = v207;
  }

  swift_getKeyPath();
  OUTLINED_FUNCTION_59_4();
  v113 = v231;
  sub_2676C989C();

  v114 = sub_2676C987C();
  v95(v74, v67);
  v115 = v224;
  v116 = v92;
  if (v114)
  {
    v117 = v227;
    sub_26761F9A8();
    swift_getKeyPath();
    OUTLINED_FUNCTION_60_0(&a14);
    v118 = v229;
    sub_2676C97EC();

    OUTLINED_FUNCTION_107_0();
    v119(v117, v118);
    v120 = v219;
    sub_2676C983C();
    OUTLINED_FUNCTION_27_5(&a15);
    v121(v93, v120);
    swift_getKeyPath();
    v122 = sub_2676A3390(v235);
    OUTLINED_FUNCTION_100_1();
    v123 = sub_2676CA3DC();
    v124 = v116;
    v126 = v125;
    v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CBF60, &unk_2676CEDE0);
    if (OUTLINED_FUNCTION_64_2(v126))
    {
      v128 = OUTLINED_FUNCTION_29_9();
      v123(v128);

      v129 = OUTLINED_FUNCTION_30_8();
      v122(v129);
      OUTLINED_FUNCTION_101_0();
      v113 = v231;
      v94 = v232;
    }

    else
    {
      v219 = v123;
      v96 = swift_getKeyPath();
      swift_getKeyPath();
      v130 = v210;
      sub_2676CA3EC();

      OUTLINED_FUNCTION_39_6(v130);
      if (v109)
      {
        sub_267662EC4(v130, &qword_2801CC428, &unk_2676CEDD0);
      }

      else
      {
        swift_getKeyPath();
        OUTLINED_FUNCTION_59_4();
        sub_2676CA89C();

        OUTLINED_FUNCTION_14_2(v127);
        (*(v131 + 8))(v130, v127);
      }

      sub_2676CA8AC();
      v132 = OUTLINED_FUNCTION_29_9();
      v219(v132);

      v133 = OUTLINED_FUNCTION_30_8();
      v122(v133);
      OUTLINED_FUNCTION_101_0();
      v113 = v231;
      v94 = v232;
      v115 = v224;
    }

    v116 = v124;
  }

  swift_getKeyPath();
  OUTLINED_FUNCTION_11_29();
  v136 = sub_2676AFE00(v134, v135);
  OUTLINED_FUNCTION_85_2(&a17);
  OUTLINED_FUNCTION_122_0();

  v137 = v230;
  v138 = sub_2676C987C();
  v139 = *(v115 + 8);
  v139(v96, v137);
  if (v138)
  {
    v224 = v136;
    v145 = v215;
    sub_2676A7F58(0, v223, v94, v140, v141, v142, v143, v144, v202, KeyPath, v204, v205, v206, v207, v208, v209, v210, v211, v212, v213);
    v146 = sub_2676C976C();
    if (__swift_getEnumTagSinglePayload(v145, 1, v146) != 1)
    {
      v189 = OUTLINED_FUNCTION_19_9();
      v190(v189);
      OUTLINED_FUNCTION_14_2(v146);
      v192 = *(v191 + 32);
      v193 = v222;
      v194 = v145;
LABEL_33:
      v198 = v146;
      goto LABEL_35;
    }

    sub_267662EC4(v145, &qword_2801CDBE0, &qword_2676D4F20);
    v147 = v227;
    sub_26761F9A8();
    v148 = swift_getKeyPath();
    v219 = v139;
    v149 = v148;
    OUTLINED_FUNCTION_51_2(&a11);
    OUTLINED_FUNCTION_119_0();

    OUTLINED_FUNCTION_107_0();
    v150 = v116;
    v116 = v139;
    v151(v147, v150);
    OUTLINED_FUNCTION_118_0();
    v139 = v219;
    (*(v216 + 8))(v113, v149);
    v136 = v224;
  }

  swift_getKeyPath();
  OUTLINED_FUNCTION_122_0();
  v152 = v230;

  v153 = sub_2676C987C();
  v139(v96, v152);
  if ((v153 & 1) == 0)
  {
    goto LABEL_23;
  }

  v219 = v139;
  OUTLINED_FUNCTION_23_8(&a9);
  sub_2676A7F58(1, v223, v94, v154, v155, v156, v157, v158, v202, KeyPath, v204, v205, v206, v207, v208, v209, v210, v211, v212, v213);
  v146 = sub_2676C976C();
  if (__swift_getEnumTagSinglePayload(v152, 1, v146) != 1)
  {
    v195 = OUTLINED_FUNCTION_19_9();
    v196(v195);
    OUTLINED_FUNCTION_14_2(v146);
    v192 = *(v197 + 32);
    v193 = v222;
    v194 = v152;
    goto LABEL_33;
  }

  sub_267662EC4(v152, &qword_2801CDBE0, &qword_2676D4F20);
  v224 = v136;
  v159 = v227;
  sub_26761F9A8();
  swift_getKeyPath();
  OUTLINED_FUNCTION_51_2(&a11);
  OUTLINED_FUNCTION_119_0();

  OUTLINED_FUNCTION_107_0();
  v160 = v116;
  v116 = v139;
  v161(v159, v160);
  OUTLINED_FUNCTION_118_0();
  v162 = *(v216 + 8);
  v163 = OUTLINED_FUNCTION_86_2();
  v152 = v230;
  v164(v163);
  v139 = v219;
LABEL_23:
  swift_getKeyPath();
  v230 = v116;
  sub_2676C98AC();

  v165 = sub_2676C987C();
  v139(v96, v152);
  v166 = v226;
  if (v165)
  {
    OUTLINED_FUNCTION_34_7(&v238);
    sub_2676A7F58(2, v223, v94, v167, v168, v169, v170, v171, v202, KeyPath, v204, v205, v206, v207, v208, v209, v210, v211, v212, v213);
    v172 = sub_2676C976C();
    if (__swift_getEnumTagSinglePayload(v139, 1, v172) == 1)
    {
      sub_267662EC4(v139, &qword_2801CDBE0, &qword_2676D4F20);
      v173 = v227;
      sub_26761F9A8();
      swift_getKeyPath();
      OUTLINED_FUNCTION_34_7(&a11);
      v174 = v229;
      sub_2676C97EC();

      (*(v228 + 8))(v173, v174);
      sub_2676C983C();
      OUTLINED_FUNCTION_27_5(&a12);
      v175 = OUTLINED_FUNCTION_58_1();
      v176(v175);
      goto LABEL_26;
    }

    v199 = OUTLINED_FUNCTION_19_9();
    v200(v199);
    OUTLINED_FUNCTION_14_2(v172);
    v192 = *(v201 + 32);
    v193 = v222;
    v194 = v139;
    v198 = v172;
LABEL_35:
    v192(v193, v194, v198);
    goto LABEL_36;
  }

LABEL_26:
  if (qword_2801CBAA0 != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v177 = sub_2676CBE4C();
  OUTLINED_FUNCTION_24_2(v177, qword_2801CDC90);
  v178 = v233;

  v179 = sub_2676CBE2C();
  v180 = sub_2676CC23C();

  if (os_log_type_enabled(v179, v180))
  {
    v181 = OUTLINED_FUNCTION_5_3();
    v182 = OUTLINED_FUNCTION_41_1();
    v235[0] = v182;
    *v181 = 136315138;
    swift_getKeyPath();
    OUTLINED_FUNCTION_34_7(&v236);
    sub_2676A31D8();
    OUTLINED_FUNCTION_43_3(v235);
    sub_2676CA3EC();

    OUTLINED_FUNCTION_27_5(&v237);
    v183(v178, v166);
    v184 = sub_2676CBFBC();
    v186 = sub_2676B0B84(v184, v185, v235);

    *(v181 + 4) = v186;
    _os_log_impl(&dword_2675D4000, v179, v180, "#SendMailSceneHostPlan accept(input:) returning .yes() with updated target: %s", v181, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v182);
    OUTLINED_FUNCTION_2_5();
    OUTLINED_FUNCTION_2_5();
  }

  sub_2676C974C();
  v187 = OUTLINED_FUNCTION_19_9();
  v188(v187);
LABEL_36:
  OUTLINED_FUNCTION_20_1();
}

void sub_2676A7F58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_21_1();
  a19 = v22;
  a20 = v23;
  v212 = v20;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CDBC8, &unk_2676D4960);
  OUTLINED_FUNCTION_3(v30);
  v205 = v31;
  v33 = *(v32 + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_11_5(v35);
  v207 = sub_2676CA43C();
  v36 = OUTLINED_FUNCTION_3(v207);
  v38 = v37;
  v40 = *(v39 + 64);
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_3_2();
  v43 = v42 - v41;
  v44 = sub_2676C9EBC();
  v45 = OUTLINED_FUNCTION_3(v44);
  v209 = v46;
  v48 = *(v47 + 64);
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_4_13();
  MEMORY[0x28223BE20](v49);
  v51 = &v194 - v50;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC428, &unk_2676CEDD0);
  OUTLINED_FUNCTION_4_1(v52);
  v54 = *(v53 + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v55);
  OUTLINED_FUNCTION_50_3();
  v214 = v27;
  v211 = v25;
  v56 = sub_26762F80C(v27);
  v213 = v29;
  if ((v56 & 1) == 0)
  {
    swift_getKeyPath();
    v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC658, &qword_2676D45A0);
    OUTLINED_FUNCTION_0_29();
    sub_2676AFE00(v73, v74);
    OUTLINED_FUNCTION_1_31();
    sub_2676AFE00(v75, v76);
    sub_2676CA3EC();

    v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CBF60, &unk_2676CEDE0);
    OUTLINED_FUNCTION_39_6(v21);
    if (v68)
    {
      sub_267662EC4(v21, &qword_2801CC428, &unk_2676CEDD0);
      v83 = MEMORY[0x277D84F90];
    }

    else
    {
      v83 = sub_2675DFE20(v214);
      OUTLINED_FUNCTION_14_2(v77);
      v85 = *(v84 + 8);
      v86 = OUTLINED_FUNCTION_14_3();
      v87(v86);
    }

    if (qword_2801CBAA0 != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v88 = sub_2676CBE4C();
    OUTLINED_FUNCTION_24_2(v88, qword_2801CDC90);

    v89 = sub_2676CBE2C();
    v90 = sub_2676CC23C();

    if (os_log_type_enabled(v89, v90))
    {
      v91 = OUTLINED_FUNCTION_126();
      v217[0] = OUTLINED_FUNCTION_125_0();
      *v91 = 136315394;
      v211 = v72;
      if (v214)
      {
        OUTLINED_FUNCTION_42_5();
        if (v92)
        {
          v94 = 17219;
        }

        else
        {
          v94 = 4408130;
        }

        if (v92)
        {
          v95 = v93;
        }

        else
        {
          v95 = 0xE300000000000000;
        }
      }

      else
      {
        v95 = 0xE200000000000000;
        v94 = 20308;
      }

      v136 = sub_2676B0B84(v94, v95, v217);

      *(v91 + 4) = v136;
      *(v91 + 12) = 2080;
      v137 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CBF78, &qword_2676CDF00);
      v138 = MEMORY[0x26D5FDDD0](v83, v137);
      v140 = sub_2676B0B84(v138, v139, v217);

      *(v91 + 14) = v140;
      _os_log_impl(&dword_2675D4000, v89, v90, "#SendMailSceneHostPlan Replacing %s recipients with these recipients: %s", v91, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_2_5();
      OUTLINED_FUNCTION_2_5();
    }

    else
    {
    }

    swift_getKeyPath();
    v141 = sub_2676A3390(v217);
    v142 = sub_2676CA3DC();
    if (!OUTLINED_FUNCTION_64_2(v143))
    {
      sub_2675E025C(v214, v83);
    }

    v142(v215, 0);

    (v141)(v217, 0);
    goto LABEL_61;
  }

  v210 = v38;
  v200 = v30;
  if (qword_2801CBAA0 != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v57 = sub_2676CBE4C();
  v58 = __swift_project_value_buffer(v57, qword_2801CDC90);
  v59 = v209;
  v60 = *(v209 + 16);
  v61 = v211;
  v60(v51, v211, v44);
  v62 = v208;
  v60(v208, v61, v44);
  v203 = v58;
  v63 = sub_2676CBE2C();
  v64 = sub_2676CC23C();
  v65 = os_log_type_enabled(v63, v64);
  v66 = MEMORY[0x277D5E478];
  if (v65)
  {
    v198 = v64;
    v67 = swift_slowAlloc();
    v197 = OUTLINED_FUNCTION_41_1();
    v217[0] = v197;
    *v67 = 136315650;
    v199 = v63;
    v202 = v44;
    if (v214)
    {
      OUTLINED_FUNCTION_42_5();
      if (v68)
      {
        v70 = 17219;
      }

      else
      {
        v70 = 4408130;
      }

      if (v68)
      {
        v71 = v69;
      }

      else
      {
        v71 = 0xE300000000000000;
      }
    }

    else
    {
      v71 = 0xE200000000000000;
      v70 = 20308;
    }

    v96 = sub_2676B0B84(v70, v71, v217);

    *(v67 + 4) = v96;
    *(v67 + 12) = 1024;
    v196 = *v66;
    v204 = *(v210 + 104);
    v206 = (v210 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
    v201 = v67;
    v97 = v210;
    OUTLINED_FUNCTION_105_0();
    v98();
    v99 = v214;
    v100 = sub_2676308A4(v214);
    MEMORY[0x28223BE20](v100);
    OUTLINED_FUNCTION_14_20();
    v102 = sub_2676A2650(sub_267630B90, v101, v100);

    v195 = *(v97 + 8);
    v103 = OUTLINED_FUNCTION_47_4();
    v104(v103);
    v209 = *(v209 + 8);
    (v209)(v51, v202);
    v105 = v201;
    *(v201 + 14) = v102 & 1;
    *(v105 + 18) = 1024;
    v204(v43, *MEMORY[0x277D5E470], v38);
    v106 = v208;
    LOBYTE(v100) = v208;
    v107 = sub_2676308A4(v99);
    MEMORY[0x28223BE20](v107);
    OUTLINED_FUNCTION_14_20();
    sub_2676A2650(sub_267630B90, v108, v107);
    OUTLINED_FUNCTION_96_1();
    v81 = v206;
    v109 = OUTLINED_FUNCTION_47_4();
    v195(v109);
    v80 = v204;
    (v209)(v106, v202);
    v61 = v201;
    *(v201 + 20) = v100 & 1;
    v110 = v199;
    _os_log_impl(&dword_2675D4000, v199, v198, "#SendMailSceneHostPlan %s recipients has a list operation add recipients? %{BOOL}d, remove recipients? %{BOOL}d", v61, 0x18u);
    __swift_destroy_boxed_opaque_existential_1(v197);
    OUTLINED_FUNCTION_36_10();
    OUTLINED_FUNCTION_2_5();

    v82 = v196;
    LOBYTE(v61) = v211;
  }

  else
  {
    v78 = *(v59 + 8);
    v78(v62, v44);
    v78(v51, v44);

    v79 = *v66;
    v80 = *(v210 + 104);
    v81 = (v210 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
    OUTLINED_FUNCTION_105_0();
  }

  v206 = v81;
  v80(v43, v82, v38);
  v111 = v214;
  v112 = sub_2676308A4(v214);
  MEMORY[0x28223BE20](v112);
  OUTLINED_FUNCTION_14_20();
  sub_2676A2650(sub_267630B6C, v113, v112);
  OUTLINED_FUNCTION_96_1();
  v114 = v210 + 8;
  v115 = *(v210 + 8);
  v116 = OUTLINED_FUNCTION_47_4();
  v115(v116);
  v117 = v111;
  if (v61)
  {
    v209 = v43;
    v210 = v114;
    v38 = sub_26762F9DC(v111);
    if (!*(v38 + 16))
    {

      v129 = sub_2676CBE2C();
      v130 = sub_2676CC23C();
      if (OUTLINED_FUNCTION_70_2(v130))
      {
        v131 = OUTLINED_FUNCTION_5_3();
        v217[0] = OUTLINED_FUNCTION_41_1();
        *v131 = 136315138;
        if (v111)
        {
          OUTLINED_FUNCTION_42_5();
          if (v132)
          {
            v134 = 17219;
          }

          else
          {
            v134 = 4408130;
          }

          if (v132)
          {
            v135 = v133;
          }

          else
          {
            v135 = 0xE300000000000000;
          }
        }

        else
        {
          v135 = 0xE200000000000000;
          v134 = 20308;
        }

        v168 = sub_2676B0B84(v134, v135, v217);

        *(v131 + 4) = v168;
        OUTLINED_FUNCTION_54_7();
        _os_log_impl(v169, v170, v171, v172, v173, 0xCu);
        OUTLINED_FUNCTION_43_7();
        OUTLINED_FUNCTION_36_10();
      }

      goto LABEL_76;
    }

    v204 = v80;
    v118 = sub_2676CBE2C();
    v119 = sub_2676CC23C();
    if (OUTLINED_FUNCTION_70_2(v119))
    {
      v120 = OUTLINED_FUNCTION_126();
      v217[0] = OUTLINED_FUNCTION_125_0();
      *v120 = 136315394;
      v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CBF78, &qword_2676CDF00);
      v122 = MEMORY[0x26D5FDDD0](v38, v121);
      v124 = sub_2676B0B84(v122, v123, v217);

      *(v120 + 4) = v124;
      *(v120 + 12) = 2080;
      if (v214)
      {
        OUTLINED_FUNCTION_42_5();
        if (v125)
        {
          v127 = 17219;
        }

        else
        {
          v127 = 4408130;
        }

        if (v125)
        {
          v128 = v126;
        }

        else
        {
          v128 = 0xE300000000000000;
        }
      }

      else
      {
        v128 = 0xE200000000000000;
        v127 = 20308;
      }

      v144 = sub_2676B0B84(v127, v128, v217);

      *(v120 + 14) = v144;
      _os_log_impl(&dword_2675D4000, v118, v119, "#SendMailSceneHostPlan Adding these recipients %s to %s", v120, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_2_5();
      OUTLINED_FUNCTION_36_10();
    }

    swift_getKeyPath();
    v145 = sub_2676A3390(v217);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC658, &qword_2676D45A0);
    OUTLINED_FUNCTION_0_29();
    sub_2676AFE00(v146, v147);
    OUTLINED_FUNCTION_1_31();
    sub_2676AFE00(v148, v149);
    v150 = sub_2676CA3DC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CBF60, &unk_2676CEDE0);
    v151 = OUTLINED_FUNCTION_33_4();
    if (__swift_getEnumTagSinglePayload(v151, v152, v153))
    {

      v150(v215, 0);

      (v145)(v217, 0);
      v117 = v214;
    }

    else
    {
      v154 = v214;
      sub_2675DFEE4(v214, v38);

      v150(v215, 0);
      v117 = v154;

      (v145)(v217, 0);
    }

    OUTLINED_FUNCTION_105_0();
    v43 = v209;
    v80 = v204;
  }

  v80(v43, *MEMORY[0x277D5E470], v38);
  v155 = sub_2676308A4(v117);
  MEMORY[0x28223BE20](v155);
  OUTLINED_FUNCTION_14_20();
  v157 = sub_2676A2650(sub_267630B90, v156, v155);

  v158 = OUTLINED_FUNCTION_47_4();
  v115(v158);
  if (v157)
  {
    if (*(sub_267630350(v117) + 16))
    {
      sub_2676A9B64();

      goto LABEL_61;
    }

    v129 = sub_2676CBE2C();
    v162 = sub_2676CC23C();
    if (OUTLINED_FUNCTION_70_2(v162))
    {
      v163 = OUTLINED_FUNCTION_5_3();
      v217[0] = OUTLINED_FUNCTION_41_1();
      *v163 = 136315138;
      if (v117)
      {
        OUTLINED_FUNCTION_42_5();
        if (v164)
        {
          v166 = 17219;
        }

        else
        {
          v166 = 4408130;
        }

        if (v164)
        {
          v167 = v165;
        }

        else
        {
          v167 = 0xE300000000000000;
        }
      }

      else
      {
        v167 = 0xE200000000000000;
        v166 = 20308;
      }

      v174 = sub_2676B0B84(v166, v167, v217);

      *(v163 + 4) = v174;
      OUTLINED_FUNCTION_54_7();
      _os_log_impl(v175, v176, v177, v178, v179, 0xCu);
      OUTLINED_FUNCTION_43_7();
      OUTLINED_FUNCTION_36_10();
    }

LABEL_76:

    v180 = v212;
    v181 = *(v212 + OBJC_IVAR____TtC16SiriMailInternal24MailSendingSceneHostPlan_globals);
    v182 = OBJC_IVAR____TtC16SiriMailInternal24MailSendingSceneHostPlan_resolverOverride;
    OUTLINED_FUNCTION_121_0();
    sub_2675F95E4(v180 + v182, v217, &qword_2801CC6A8, &unk_2676CF5F0);
    v216 = 0;
    memset(v215, 0, sizeof(v215));
    v183 = OUTLINED_FUNCTION_49_1();
    v185 = __swift_instantiateConcreteTypeFromMangledNameV2(v183, v184);
    OUTLINED_FUNCTION_7_13(v185);
    v186 = v181;
    OUTLINED_FUNCTION_60_3();
    v217[0] = v187;
    v188 = swift_allocObject();
    *(v188 + 16) = v117;
    *(v188 + 24) = v180;

    v189 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC9F8, &unk_2676CFE90);
    v190 = OUTLINED_FUNCTION_38_5(&qword_2801CDBD8);
    OUTLINED_FUNCTION_23_8(&a14);
    sub_2676C942C();

    v217[0] = v185;
    v217[1] = v189;
    v217[2] = v190;
    swift_getOpaqueTypeConformance2();
    v160 = v213;
    v191 = v200;
    sub_2676C975C();
    v192 = OUTLINED_FUNCTION_16_15(&a15);
    v193(v192, v191);
    v159 = 0;
    goto LABEL_62;
  }

LABEL_61:
  v159 = 1;
  v160 = v213;
LABEL_62:
  v161 = sub_2676C976C();
  __swift_storeEnumTagSinglePayload(v160, v159, 1, v161);
  OUTLINED_FUNCTION_20_1();
}

uint64_t sub_2676A90A8(uint64_t *a1, int a2, uint64_t a3)
{
  v49 = a3;
  v47 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC968, &unk_2676CFDF0);
  v46 = *(v4 - 8);
  v5 = *(v46 + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v52 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = &v42 - v8;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC940, &unk_2676D4A50);
  v10 = *(v51 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v51);
  v50 = &v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v48 = &v42 - v14;
  v59 = sub_2676C8C8C();
  v15 = *(v59 - 1);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v59);
  v18 = &v42 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = sub_2676CB14C();
  v19 = *(v58 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v58);
  v45 = &v42 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *a1;
  v23 = *(*a1 + 16);
  v24 = MEMORY[0x277D84F90];
  if (v23)
  {
    v42 = v10;
    v43 = v9;
    v44 = v4;
    v60 = MEMORY[0x277D84F90];
    sub_2676C27D0(0, v23, 0);
    v25 = v60;
    v27 = *(v15 + 16);
    v26 = v15 + 16;
    v28 = v22 + ((*(v26 + 64) + 32) & ~*(v26 + 64));
    v55 = *(v26 + 56);
    v56 = v27;
    v57 = v26;
    v53 = v19 + 32;
    v54 = (v26 - 8);
    v29 = v45;
    do
    {
      v30 = v59;
      v56(v18, v28, v59);
      sub_2676C8C1C();
      sub_2676C8C4C();
      sub_2676CB11C();
      (*v54)(v18, v30);
      v60 = v25;
      v32 = *(v25 + 16);
      v31 = *(v25 + 24);
      if (v32 >= v31 >> 1)
      {
        sub_2676C27D0(v31 > 1, v32 + 1, 1);
        v29 = v45;
        v25 = v60;
      }

      *(v25 + 16) = v32 + 1;
      (*(v19 + 32))(v25 + ((*(v19 + 80) + 32) & ~*(v19 + 80)) + *(v19 + 72) * v32, v29, v58);
      v28 += v55;
      --v23;
    }

    while (v23);
    v24 = v25;
    v9 = v43;
    v4 = v44;
    v10 = v42;
  }

  v33 = v48;
  sub_26761F9A8();
  v34 = (v10 + 8);
  v59 = (v46 + 8);
  swift_getKeyPath();
  v35 = v51;
  sub_2676C97EC();

  v36 = *v34;
  (*v34)(v33, v35);
  v37 = v50;
  sub_26761F9A8();
  swift_getKeyPath();
  v38 = v52;
  sub_2676C97EC();

  v36(v37, v35);
  v39 = sub_2676A239C();
  v40 = *v59;
  (*v59)(v38, v4);
  v60 = v39;
  sub_2676A1FCC(v24, sub_2675E0534, MEMORY[0x277D5CA58]);
  sub_2676C984C();

  return v40(v9, v4);
}

uint64_t sub_2676A9614(uint64_t *a1, int a2, uint64_t a3)
{
  v50 = a3;
  v48 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC968, &unk_2676CFDF0);
  v47 = *(v4 - 8);
  v5 = *(v47 + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v53 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = &v43 - v8;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC940, &unk_2676D4A50);
  v10 = *(v52 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v52);
  v51 = &v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v49 = &v43 - v14;
  v60 = sub_2676C8C8C();
  v15 = *(v60 - 1);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v60);
  v18 = &v43 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = sub_2676CB14C();
  v19 = *(v59 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v59);
  v46 = &v43 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *a1;
  v23 = *(*a1 + 16);
  v24 = MEMORY[0x277D84F90];
  if (v23)
  {
    v43 = v10;
    v44 = v9;
    v45 = v4;
    v61 = MEMORY[0x277D84F90];
    sub_2676C27D0(0, v23, 0);
    v25 = v61;
    v27 = *(v15 + 16);
    v26 = v15 + 16;
    v28 = v22 + ((*(v26 + 64) + 32) & ~*(v26 + 64));
    v56 = *(v26 + 56);
    v57 = v27;
    v58 = v26;
    v54 = v19 + 32;
    v55 = (v26 - 8);
    v29 = v46;
    do
    {
      v30 = v60;
      v57(v18, v28, v60);
      sub_2676C8C1C();
      sub_2676C8C4C();
      sub_2676CB11C();
      (*v55)(v18, v30);
      v61 = v25;
      v32 = *(v25 + 16);
      v31 = *(v25 + 24);
      if (v32 >= v31 >> 1)
      {
        sub_2676C27D0(v31 > 1, v32 + 1, 1);
        v29 = v46;
        v25 = v61;
      }

      *(v25 + 16) = v32 + 1;
      (*(v19 + 32))(v25 + ((*(v19 + 80) + 32) & ~*(v19 + 80)) + *(v19 + 72) * v32, v29, v59);
      v28 += v56;
      --v23;
    }

    while (v23);
    v24 = v25;
    v9 = v44;
    v4 = v45;
    v10 = v43;
  }

  v33 = v49;
  sub_26761F9A8();
  v34 = (v10 + 8);
  v60 = (v47 + 8);
  swift_getKeyPath();
  v35 = v52;
  sub_2676C97EC();

  v36 = *v34;
  (*v34)(v33, v35);
  v37 = v51;
  sub_26761F9A8();
  swift_getKeyPath();
  v38 = v53;
  sub_2676C97EC();

  v36(v37, v35);
  v39 = sub_2676A239C();
  v40 = *v60;
  (*v60)(v38, v4);
  v41 = sub_2675DEEA4(v24, v39);

  v61 = v41;
  sub_2676C984C();

  return v40(v9, v4);
}

void sub_2676A9B64()
{
  OUTLINED_FUNCTION_21_1();
  v107 = v0;
  v3 = v2;
  LODWORD(v5) = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC068, &unk_2676D4E00);
  OUTLINED_FUNCTION_4_1(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_50_3();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CBF78, &qword_2676CDF00);
  v11 = OUTLINED_FUNCTION_3(v10);
  v108 = v12;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_4();
  v114 = v15;
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x28223BE20](v16);
  v18 = &v104[-v17];
  if (qword_2801CBAA0 != -1)
  {
LABEL_55:
    OUTLINED_FUNCTION_0();
  }

  v115 = v18;
  v19 = sub_2676CBE4C();
  OUTLINED_FUNCTION_24_2(v19, qword_2801CDC90);

  v20 = sub_2676CBE2C();
  v21 = sub_2676CC23C();

  v22 = os_log_type_enabled(v20, v21);
  v105 = v5;
  if (v22)
  {
    v23 = v1;
    v24 = OUTLINED_FUNCTION_126();
    v117[0] = OUTLINED_FUNCTION_125_0();
    *v24 = 136315394;
    v25 = v3;
    v26 = MEMORY[0x26D5FDDD0](v3, v10);
    v28 = sub_2676B0B84(v26, v27, v117);

    *(v24 + 4) = v28;
    *(v24 + 12) = 2080;
    if (v5)
    {
      OUTLINED_FUNCTION_42_5();
      if (v29)
      {
        v31 = 17219;
      }

      else
      {
        v31 = 4408130;
      }

      if (v29)
      {
        v32 = v30;
      }

      else
      {
        v32 = 0xE300000000000000;
      }
    }

    else
    {
      v32 = 0xE200000000000000;
      v31 = 20308;
    }

    v33 = sub_2676B0B84(v31, v32, v117);

    *(v24 + 14) = v33;
    OUTLINED_FUNCTION_54_7();
    _os_log_impl(v34, v35, v36, v37, v38, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_2_5();
    OUTLINED_FUNCTION_36_10();

    v3 = v25;
    v1 = v23;
  }

  else
  {
  }

  v5 = *(v3 + 16);
  v39 = MEMORY[0x277D84F90];
  v116 = v10;
  v106 = v3;
  if (v5)
  {
    v117[0] = MEMORY[0x277D84F90];
    OUTLINED_FUNCTION_93_1();
    v40 = *(v108 + 16);
    v39 = v117[0];
    v41 = v3 + ((*(v108 + 80) + 32) & ~*(v108 + 80));
    v110 = *(v108 + 72);
    v111 = v40;
    v112 = v108 + 16;
    v113 = v5;
    v109 = (v108 + 8);
    v42 = v5;
    do
    {
      v43 = v115;
      v111(v115, v41, v10);
      swift_getKeyPath();
      OUTLINED_FUNCTION_11_29();
      sub_2676AFE00(&qword_2801CBF70, v44);
      sub_2676AFE00(&qword_2801CC2D0, MEMORY[0x277D5C640]);
      sub_2676CA87C();

      v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC0D8, &qword_2676D1490);
      OUTLINED_FUNCTION_39_6(v1);
      if (v29)
      {
        (*v109)(v43, v10);
        sub_267662EC4(v1, &qword_2801CC068, &unk_2676D4E00);
        v46 = 0;
        v48 = 0;
      }

      else
      {
        swift_getKeyPath();
        OUTLINED_FUNCTION_59_4();
        v46 = sub_2676CA89C();
        v48 = v47;

        (*v109)(v43, v10);
        OUTLINED_FUNCTION_14_2(v45);
        (*(v49 + 8))(v1, v45);
      }

      v117[0] = v39;
      v51 = *(v39 + 16);
      v50 = *(v39 + 24);
      v52 = v51 + 1;
      v5 = v113;
      if (v51 >= v50 >> 1)
      {
        v54 = OUTLINED_FUNCTION_23_1(v50);
        sub_2676C2B08(v54, v51 + 1, 1);
        v39 = v117[0];
      }

      *(v39 + 16) = v52;
      v53 = v39 + 16 * v51;
      *(v53 + 32) = v46;
      *(v53 + 40) = v48;
      v41 += v110;
      --v42;
      v10 = v116;
    }

    while (v42);
  }

  else
  {
    v52 = *(MEMORY[0x277D84F90] + 16);
  }

  v3 = 0;
  v10 = MEMORY[0x277D84F90];
  v18 = MEMORY[0x277D84F90];
LABEL_24:
  v55 = 16 * v3 + 40;
  while (v52 != v3)
  {
    if (v3 >= *(v39 + 16))
    {
      __break(1u);
LABEL_54:
      __break(1u);
      goto LABEL_55;
    }

    ++v3;
    v56 = v55 + 16;
    v57 = *(v39 + v55);
    v55 += 16;
    if (v57)
    {
      v58 = *(v39 + v56 - 24);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_26760719C(0, *(v18 + 2) + 1, 1, v18);
        v18 = v61;
      }

      v1 = *(v18 + 2);
      v59 = *(v18 + 3);
      if (v1 >= v59 >> 1)
      {
        v62 = OUTLINED_FUNCTION_23_1(v59);
        sub_26760719C(v62, v1 + 1, 1, v18);
        v18 = v63;
      }

      *(v18 + 2) = v1 + 1;
      v60 = &v18[16 * v1];
      *(v60 + 4) = v58;
      *(v60 + 5) = v57;
      goto LABEL_24;
    }
  }

  v64 = sub_2676A1BFC(v18);
  v65 = v64;
  if (v5)
  {
    v111 = v64;
    v117[0] = v10;
    OUTLINED_FUNCTION_93_1();
    v10 = v117[0];
    v115 = *(v108 + 16);
    v66 = v106 + ((*(v108 + 80) + 32) & ~*(v108 + 80));
    v112 = *(v108 + 72);
    v67 = (v108 + 8);
    do
    {
      v68 = v114;
      v69 = OUTLINED_FUNCTION_38_0();
      v70 = v116;
      v71(v69);
      swift_getKeyPath();
      OUTLINED_FUNCTION_11_29();
      sub_2676AFE00(&qword_2801CBF70, v72);
      v73 = sub_2676CA89C();
      v1 = v74;

      (*v67)(v68, v70);
      v117[0] = v10;
      v76 = *(v10 + 16);
      v75 = *(v10 + 24);
      v18 = (v76 + 1);
      if (v76 >= v75 >> 1)
      {
        v78 = OUTLINED_FUNCTION_23_1(v75);
        sub_2676C2B08(v78, v76 + 1, 1);
        v10 = v117[0];
      }

      *(v10 + 16) = v18;
      v77 = v10 + 16 * v76;
      *(v77 + 32) = v73;
      *(v77 + 40) = v1;
      v66 += v112;
      --v5;
    }

    while (v5);
    v65 = v111;
  }

  else
  {
    v18 = *(v10 + 16);
  }

  v3 = 0;
  v79 = MEMORY[0x277D84F90];
LABEL_41:
  v80 = 16 * v3 + 40;
  while (v18 != v3)
  {
    if (v3 >= *(v10 + 16))
    {
      goto LABEL_54;
    }

    ++v3;
    v81 = v80 + 16;
    v82 = *(v10 + v80);
    v80 += 16;
    if (v82)
    {
      v83 = *(v10 + v81 - 24);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_26760719C(0, *(v79 + 16) + 1, 1, v79);
        v79 = v87;
      }

      v85 = *(v79 + 16);
      v84 = *(v79 + 24);
      v5 = v85 + 1;
      if (v85 >= v84 >> 1)
      {
        v88 = OUTLINED_FUNCTION_23_1(v84);
        sub_26760719C(v88, v85 + 1, 1, v79);
        v79 = v89;
      }

      *(v79 + 16) = v5;
      v86 = v79 + 16 * v85;
      *(v86 + 32) = v83;
      *(v86 + 40) = v82;
      goto LABEL_41;
    }
  }

  v90 = sub_2676A1BFC(v79);
  swift_getKeyPath();
  v91 = sub_2676A3390(v117);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC658, &qword_2676D45A0);
  OUTLINED_FUNCTION_0_29();
  sub_2676AFE00(v92, v93);
  OUTLINED_FUNCTION_1_31();
  sub_2676AFE00(v94, v95);
  v96 = sub_2676CA3DC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CBF60, &unk_2676CEDE0);
  v97 = OUTLINED_FUNCTION_33_4();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v97, v98, v99);
  if (!EnumTagSinglePayload)
  {
    MEMORY[0x28223BE20](EnumTagSinglePayload);
    *&v104[-32] = v65;
    v101 = v105;
    v104[-24] = v105;
    *&v104[-16] = v90;
    sub_2675E0008(v101);
  }

  v102 = OUTLINED_FUNCTION_29_9();
  v96(v102);

  v103 = OUTLINED_FUNCTION_30_8();
  v91(v103);
  OUTLINED_FUNCTION_20_1();
}

uint64_t sub_2676AA448(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  HIDWORD(v36) = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC068, &unk_2676D4E00);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v36 - v8;
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CBF78, &qword_2676CDF00);
  sub_2676AFE00(&qword_2801CBF70, MEMORY[0x277D5C6D0]);
  sub_2676AFE00(&qword_2801CC2D0, MEMORY[0x277D5C640]);
  sub_2676CA87C();

  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC0D8, &qword_2676D1490);
  if (__swift_getEnumTagSinglePayload(v9, 1, v10) == 1)
  {
    sub_267662EC4(v9, &qword_2801CC068, &unk_2676D4E00);
    goto LABEL_16;
  }

  swift_getKeyPath();
  v11 = sub_2676CA89C();
  v13 = v12;

  (*(*(v10 - 8) + 8))(v9, v10);
  if (!v13)
  {
LABEL_16:
    swift_getKeyPath();
    v22 = sub_2676CA89C();
    v24 = v23;

    if (v24)
    {
      if (sub_2676A1CB8(v22, v24, a4))
      {
        if (qword_2801CBAA0 != -1)
        {
          swift_once();
        }

        v25 = sub_2676CBE4C();
        __swift_project_value_buffer(v25, qword_2801CDC90);

        v16 = sub_2676CBE2C();
        v26 = sub_2676CC23C();

        if (os_log_type_enabled(v16, v26))
        {
          v18 = swift_slowAlloc();
          v19 = swift_slowAlloc();
          v37 = v19;
          *v18 = 136315394;
          if (BYTE4(v36))
          {
            if (BYTE4(v36) == 1)
            {
              v27 = 17219;
            }

            else
            {
              v27 = 4408130;
            }

            if (BYTE4(v36) == 1)
            {
              v28 = 0xE200000000000000;
            }

            else
            {
              v28 = 0xE300000000000000;
            }
          }

          else
          {
            v28 = 0xE200000000000000;
            v27 = 20308;
          }

          v30 = sub_2676B0B84(v27, v28, &v37);

          *(v18 + 4) = v30;
          *(v18 + 12) = 2080;
          v31 = sub_2676B0B84(v22, v24, &v37);

          *(v18 + 14) = v31;
          v32 = "#SendMailSceneHostPlan Removing %s recipient with name %s";
          v33 = v26;
LABEL_35:
          _os_log_impl(&dword_2675D4000, v16, v33, v32, v18, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x26D5FEA80](v19, -1, -1);
          MEMORY[0x26D5FEA80](v18, -1, -1);
          goto LABEL_36;
        }

        goto LABEL_30;
      }
    }

    return 0;
  }

  if (!sub_2676A1CB8(v11, v13, a2))
  {

    goto LABEL_16;
  }

  v14 = v11;
  if (qword_2801CBAA0 != -1)
  {
    swift_once();
  }

  v15 = sub_2676CBE4C();
  __swift_project_value_buffer(v15, qword_2801CDC90);

  v16 = sub_2676CBE2C();
  v17 = sub_2676CC23C();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v37 = v19;
    *v18 = 136315394;
    if (BYTE4(v36))
    {
      if (BYTE4(v36) == 1)
      {
        v20 = 17219;
      }

      else
      {
        v20 = 4408130;
      }

      if (BYTE4(v36) == 1)
      {
        v21 = 0xE200000000000000;
      }

      else
      {
        v21 = 0xE300000000000000;
      }
    }

    else
    {
      v21 = 0xE200000000000000;
      v20 = 20308;
    }

    v34 = sub_2676B0B84(v20, v21, &v37);

    *(v18 + 4) = v34;
    *(v18 + 12) = 2080;
    v35 = sub_2676B0B84(v14, v13, &v37);

    *(v18 + 14) = v35;
    v32 = "#SendMailSceneHostPlan Removing %s recipient with email %s";
    v33 = v17;
    goto LABEL_35;
  }

LABEL_30:

LABEL_36:

  return 1;
}

void sub_2676AA9A4()
{
  OUTLINED_FUNCTION_21_1();
  v2 = v0;
  v54 = v3;
  v4 = sub_2676CB48C();
  v5 = OUTLINED_FUNCTION_4_1(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_1_5();
  v55 = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD3B8, &unk_2676D3E60);
  OUTLINED_FUNCTION_4_1(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_9_1();
  v56 = v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD3C0, &unk_2676D4DF0);
  v15 = OUTLINED_FUNCTION_3(v14);
  v52 = v16;
  v53 = v15;
  v18 = *(v17 + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_50_3();
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC428, &unk_2676CEDD0);
  OUTLINED_FUNCTION_4_1(v20);
  v22 = *(v21 + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_9_1();
  v57 = v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC658, &qword_2676D45A0);
  OUTLINED_FUNCTION_3(v25);
  v27 = v26;
  v29 = *(v28 + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v30);
  v32 = &v52 - v31;
  if (qword_2801CBAA0 != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v33 = sub_2676CBE4C();
  OUTLINED_FUNCTION_24_2(v33, qword_2801CDC90);
  v34 = sub_2676CBE2C();
  v35 = sub_2676CC23C();
  if (OUTLINED_FUNCTION_5_7(v35))
  {
    v36 = OUTLINED_FUNCTION_17_3();
    *v36 = 0;
    _os_log_impl(&dword_2675D4000, v34, v35, "#SendMailSceneHostPlan making ConfirmationPrompt", v36, 2u);
    OUTLINED_FUNCTION_2_5();
  }

  swift_getKeyPath();
  sub_2676A31D8();
  OUTLINED_FUNCTION_0_29();
  sub_2676AFE00(v37, v38);
  OUTLINED_FUNCTION_1_31();
  sub_2676AFE00(v39, v40);
  sub_2676CA3EC();

  (*(v27 + 8))(v32, v25);
  sub_2676CBA1C();
  sub_2676C98BC();
  swift_getKeyPath();
  v41 = v53;
  sub_2676C988C();

  (*(v52 + 8))(v1, v41);
  v42 = *(v2 + OBJC_IVAR____TtC16SiriMailInternal21SendMailSceneHostPlan_confirmIntentOptions);
  v43 = type metadata accessor for ConfirmSendSceneHostProducer(0);
  v61[3] = v43;
  v61[4] = sub_2676AFE00(&qword_2801CD2D0, type metadata accessor for ConfirmSendSceneHostProducer);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v61);
  v45 = *(v43 + 24);
  v46 = sub_2676CB18C();
  OUTLINED_FUNCTION_2_6(v46);
  (*(v47 + 16))(boxed_opaque_existential_1 + v45, v54);
  LOBYTE(v41) = SendMailSceneHostPlan.isSnippetInFocus.getter();
  type metadata accessor for SendMailCATsSimple();
  sub_2676CB47C();
  v48 = sub_2676CB42C();
  boxed_opaque_existential_1[1] = v42;
  *(boxed_opaque_existential_1 + *(v43 + 28)) = v41 & 1;
  *boxed_opaque_existential_1 = v48;
  v49 = sub_2676C9B9C();
  OUTLINED_FUNCTION_7_13(v49);
  v50 = sub_2676C9B8C();
  v59 = v49;
  v60 = MEMORY[0x277D5BD58];
  v58 = v50;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CDBC0, &qword_2676D48C0);
  OUTLINED_FUNCTION_7_13(v51);
  sub_2676C9BEC();
  OUTLINED_FUNCTION_20_1();
}

uint64_t SendMailSceneHostPlan.isSnippetInFocus.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC8D8, &unk_2676CFC70);
  OUTLINED_FUNCTION_3(v0);
  v2 = v1;
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_54_5();
  sub_26761F970();
  sub_2676C97FC();
  v6 = *(v2 + 8);
  v7 = OUTLINED_FUNCTION_58_1();
  v8(v7);
  return v10 & 1;
}

uint64_t sub_2676AAF08()
{
  v1 = OBJC_IVAR____TtC16SiriMailInternal21SendMailSceneHostPlan__sendMessageTask;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC720, &qword_2676CF7D0);
  OUTLINED_FUNCTION_8_2(v2);
  v4 = *(v3 + 8);

  return v4(v0 + v1);
}

uint64_t SendMailSceneHostPlan.deinit()
{
  v0 = MailSendingSceneHostPlan.deinit();
  v1 = OBJC_IVAR____TtC16SiriMailInternal21SendMailSceneHostPlan__sendMessageTask;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC720, &qword_2676CF7D0);
  OUTLINED_FUNCTION_8_2(v2);
  (*(v3 + 8))(v0 + v1);
  return v0;
}

uint64_t SendMailSceneHostPlan.__deallocating_deinit()
{
  v0 = MailSendingSceneHostPlan.deinit();
  v1 = OBJC_IVAR____TtC16SiriMailInternal21SendMailSceneHostPlan__sendMessageTask;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC720, &qword_2676CF7D0);
  OUTLINED_FUNCTION_8_2(v2);
  (*(v3 + 8))(v0 + v1);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v4, v5);
}

uint64_t sub_2676AB0A0()
{
  type metadata accessor for SendMailSceneHostPlan();

  return sub_2676C950C();
}

uint64_t sub_2676AB114(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821BA568](a1, WitnessTable);
}

void SendMailSceneHostPlan.snippet.getter()
{
  OUTLINED_FUNCTION_21_1();
  v160 = v2;
  v3 = type metadata accessor for MailSceneHostStateChangeEventHandler(0);
  v4 = *(v3 - 8);
  v155 = (v3 - 8);
  v159 = v4;
  v158 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  OUTLINED_FUNCTION_11_5(v147 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_11_5(v7);
  v157 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC980, &unk_2676CFE10);
  OUTLINED_FUNCTION_3(v157);
  v156 = v8;
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_11_5(v12);
  v148 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CDB68, &qword_2676D4B60);
  OUTLINED_FUNCTION_3(v148);
  v149 = v13;
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_11_5(v17);
  v154 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC8D8, &unk_2676CFC70);
  OUTLINED_FUNCTION_3(v154);
  v152 = v18;
  v20 = *(v19 + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_11_5(v22);
  v151 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC8C8, &unk_2676D1C40);
  v23 = OUTLINED_FUNCTION_3(v151);
  v150 = v24;
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_4();
  v163 = v27;
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_24_1();
  v174 = v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC978, &unk_2676CFE00);
  v31 = OUTLINED_FUNCTION_3(v30);
  v167 = v32;
  v168 = v31;
  v34 = *(v33 + 64);
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_4();
  v161 = v35;
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_24_1();
  v173 = v37;
  v164 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC970, &qword_2676D1C50);
  v38 = OUTLINED_FUNCTION_3(v164);
  v166 = v39;
  v41 = *(v40 + 64);
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_4();
  v179 = v42;
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_10_4();
  v178 = v44;
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_10_4();
  v172 = v46;
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_24_1();
  v171 = v48;
  v162 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC968, &unk_2676CFDF0);
  v49 = OUTLINED_FUNCTION_3(v162);
  v165 = v50;
  v52 = *(v51 + 64);
  MEMORY[0x28223BE20](v49);
  OUTLINED_FUNCTION_4();
  v177 = v53;
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x28223BE20](v54);
  OUTLINED_FUNCTION_10_4();
  v176 = v55;
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x28223BE20](v56);
  OUTLINED_FUNCTION_10_4();
  v175 = v57;
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x28223BE20](v58);
  OUTLINED_FUNCTION_10_4();
  v170 = v59;
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x28223BE20](v60);
  OUTLINED_FUNCTION_10_4();
  v169 = v61;
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x28223BE20](v62);
  v147[12] = v147 - v63;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC940, &unk_2676D4A50);
  v65 = OUTLINED_FUNCTION_3(v64);
  v67 = v66;
  v69 = *(v68 + 64);
  MEMORY[0x28223BE20](v65);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_4_13();
  MEMORY[0x28223BE20](v70);
  OUTLINED_FUNCTION_10_4();
  OUTLINED_FUNCTION_4_13();
  MEMORY[0x28223BE20](v71);
  OUTLINED_FUNCTION_10_4();
  OUTLINED_FUNCTION_4_13();
  MEMORY[0x28223BE20](v72);
  OUTLINED_FUNCTION_10_4();
  OUTLINED_FUNCTION_4_13();
  MEMORY[0x28223BE20](v73);
  OUTLINED_FUNCTION_10_4();
  OUTLINED_FUNCTION_4_13();
  MEMORY[0x28223BE20](v74);
  OUTLINED_FUNCTION_10_4();
  OUTLINED_FUNCTION_4_13();
  MEMORY[0x28223BE20](v75);
  OUTLINED_FUNCTION_10_4();
  OUTLINED_FUNCTION_4_13();
  MEMORY[0x28223BE20](v76);
  OUTLINED_FUNCTION_10_4();
  OUTLINED_FUNCTION_4_13();
  MEMORY[0x28223BE20](v77);
  OUTLINED_FUNCTION_10_4();
  OUTLINED_FUNCTION_4_13();
  MEMORY[0x28223BE20](v78);
  OUTLINED_FUNCTION_10_4();
  OUTLINED_FUNCTION_4_13();
  v80 = MEMORY[0x28223BE20](v79);
  v82 = v147 - v81;
  v83 = MEMORY[0x28223BE20](v80);
  v85 = v147 - v84;
  v86 = MEMORY[0x28223BE20](v83);
  v88 = v147 - v87;
  MEMORY[0x28223BE20](v86);
  OUTLINED_FUNCTION_78_4();
  sub_26761F9A8();
  swift_getKeyPath();
  sub_2676C97EC();

  v89 = *(v67 + 8);
  v89(v1, v64);
  sub_26761F9A8();
  swift_getKeyPath();
  sub_2676C97EC();

  v89(v88, v64);
  v90 = v0;
  sub_26761F9A8();
  swift_getKeyPath();
  sub_2676C97EC();

  v89(v85, v64);
  sub_26761F9A8();
  KeyPath = swift_getKeyPath();
  sub_2676C97EC();

  v89(v82, v64);
  OUTLINED_FUNCTION_34_7(&v165);
  sub_26761F9A8();
  swift_getKeyPath();
  sub_2676C97EC();

  v89(KeyPath, v64);
  OUTLINED_FUNCTION_34_7(&v166);
  sub_26761F9A8();
  swift_getKeyPath();
  sub_2676C97EC();

  v89(KeyPath, v64);
  OUTLINED_FUNCTION_23_8(&v167);
  sub_26761F9A8();
  swift_getKeyPath();
  OUTLINED_FUNCTION_58_2();

  v92 = OUTLINED_FUNCTION_85_0();
  (v89)(v92);
  OUTLINED_FUNCTION_23_8(&v168);
  sub_26761F9A8();
  swift_getKeyPath();
  OUTLINED_FUNCTION_58_2();

  v93 = OUTLINED_FUNCTION_85_0();
  (v89)(v93);
  OUTLINED_FUNCTION_23_8(&v169);
  sub_26761F9A8();
  swift_getKeyPath();
  OUTLINED_FUNCTION_58_2();

  v94 = OUTLINED_FUNCTION_85_0();
  (v89)(v94);
  OUTLINED_FUNCTION_23_8(&v170);
  sub_26761F9A8();
  swift_getKeyPath();
  OUTLINED_FUNCTION_58_2();

  v95 = OUTLINED_FUNCTION_85_0();
  (v89)(v95);
  OUTLINED_FUNCTION_23_8(&v171);
  sub_26761F9A8();
  swift_getKeyPath();
  OUTLINED_FUNCTION_58_2();

  v96 = OUTLINED_FUNCTION_85_0();
  (v89)(v96);
  OUTLINED_FUNCTION_23_8(&v172);
  sub_26761F9A8();
  swift_getKeyPath();
  OUTLINED_FUNCTION_58_2();

  v97 = OUTLINED_FUNCTION_85_0();
  (v89)(v97);
  OUTLINED_FUNCTION_23_8(&v173);
  sub_26761F9A8();
  swift_getKeyPath();
  v98 = v161;
  OUTLINED_FUNCTION_58_2();

  v99 = OUTLINED_FUNCTION_85_0();
  (v89)(v99);
  OUTLINED_FUNCTION_23_8(&v174);
  sub_26761F9A8();
  swift_getKeyPath();
  v100 = v163;
  OUTLINED_FUNCTION_58_2();

  v101 = OUTLINED_FUNCTION_85_0();
  (v89)(v101);
  OUTLINED_FUNCTION_43_3(&v175);
  sub_26761F970();
  OUTLINED_FUNCTION_23_8(&v176);
  sub_2676A34F8();
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_29();
  sub_2676AFE00(v102, v103);
  OUTLINED_FUNCTION_1_31();
  sub_2676AFE00(v104, v105);
  OUTLINED_FUNCTION_51_2(&v180);
  v106 = v148;
  sub_2676C9A2C();

  v107 = OUTLINED_FUNCTION_16_15(&v179);
  v108(v107, v106);
  v109 = *(v165 + 16);
  v110 = v153;
  v111 = v162;
  v109(v153, v175, v162);
  v112 = v155;
  v109(v110 + v155[7], v176, v111);
  v109(v110 + v112[8], v177, v111);
  v113 = *(v166 + 16);
  v114 = v164;
  v113(v110 + v112[9], v178, v164);
  v113(v110 + v112[10], v179, v114);
  v115 = OUTLINED_FUNCTION_73_1(v112[11]);
  v116(v115, v98);
  v117 = v150;
  v118 = OUTLINED_FUNCTION_73_1(v112[12]);
  v119 = v151;
  v120(v118, v100, v151);
  v121 = v112[13];
  v122 = v112;
  v123 = v156;
  v124 = OUTLINED_FUNCTION_73_1(v121);
  v125 = v157;
  v126(v124, v90, v157);
  v127 = v152;
  v128 = OUTLINED_FUNCTION_73_1(v122[14]);
  v129(v128, v89, v154);
  v130 = type metadata accessor for MetricsSnippetEventHandler();
  v131 = OUTLINED_FUNCTION_7_13(v130);
  swift_defaultActor_initialize();
  sub_2676C958C();
  (*(v123 + 8))(v90, v125);
  v132 = *(v127 + 8);
  v133 = OUTLINED_FUNCTION_14_3();
  v134(v133);
  (*(v117 + 8))(v163, v119);
  (*(v167 + 8))(v161, v168);
  v135 = *(v166 + 8);
  v136 = v164;
  v135(v179, v164);
  v135(v178, v136);
  v138 = v165 + 8;
  v137 = *(v165 + 8);
  v139 = v162;
  v137(v177, v162);
  v137(v176, v139);
  v137(v175, v139);
  OUTLINED_FUNCTION_105_0();
  sub_26766B0E4(v140, v138);
  v141 = (*(v159 + 80) + 16) & ~*(v159 + 80);
  v142 = (v158 + v141 + 7) & 0xFFFFFFFFFFFFFFF8;
  v143 = swift_allocObject();
  sub_26766B0E4(v138, v143 + v141);
  *(v143 + v142) = v131;
  v179 = sub_2676C916C();
  sub_2676CAFDC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC9A0, &unk_2676D22B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC9B0, &unk_2676CFE50);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC9C0, &unk_2676D22C0);
  sub_2676CB0DC();
  sub_2676CB18C();
  sub_2676AFE00(&qword_2801CD1E0, MEMORY[0x277D5C900]);
  v144 = MEMORY[0x277D5C970];
  sub_2676AFE00(&qword_2801CD1E8, MEMORY[0x277D5C970]);
  sub_2676AFE00(&qword_2801CD1F0, v144);
  OUTLINED_FUNCTION_12_18();
  sub_2676AFE00(v145, v146);
  sub_2676C9BBC();
  OUTLINED_FUNCTION_20_1();
}

uint64_t sub_2676AC1EC()
{
  OUTLINED_FUNCTION_12_1();
  swift_task_alloc();
  OUTLINED_FUNCTION_15_3();
  *(v0 + 16) = v1;
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_63_4(v1);

  return sub_2676A5AD0(v3, v4, v5);
}

uint64_t sub_2676AC288()
{
  OUTLINED_FUNCTION_12_1();
  swift_task_alloc();
  OUTLINED_FUNCTION_15_3();
  *(v0 + 16) = v1;
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_63_4(v1);

  return sub_2676A6158(v3, v4, v5);
}

void sub_2676AC31C()
{
  v2 = OUTLINED_FUNCTION_116_0();
  v3 = type metadata accessor for MailSceneHostStateChangeEventHandler(v2);
  OUTLINED_FUNCTION_1_0(v3);
  v5 = v4;
  v7 = v6;
  v8 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v9 = *(v1 + ((*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_2676B2964(v0, v1 + v8, v9);
}

uint64_t type metadata accessor for SendMailSceneHostPlan()
{
  result = qword_2801CDC30;
  if (!qword_2801CDC30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2676AC584()
{
  sub_267697368();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

BOOL sub_2676AC6B4(char *a1, char *a2)
{
  v25 = a1;
  v4 = sub_2676C8C8C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = v2;
  v9 = *v2;
  v10 = *(*v2 + 40);
  sub_2676AFE00(&qword_2801CBF50, MEMORY[0x277CBA2E0]);
  v30 = a2;
  v11 = sub_2676CBF0C();
  v27 = v9;
  v28 = v9 + 56;
  v12 = ~(-1 << *(v9 + 32));
  v29 = v5 + 16;
  v26 = v5 + 8;
  while (1)
  {
    v13 = v11 & v12;
    v14 = (1 << (v11 & v12)) & *(v28 + (((v11 & v12) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v14)
    {
      v19 = v24;
      v20 = *v24;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v22 = v30;
      (*(v5 + 16))(v8, v30, v4);
      v31 = *v19;
      sub_2676ADFFC(v8, v13, isUniquelyReferenced_nonNull_native);
      *v19 = v31;
      (*(v5 + 32))(v25, v22, v4);
      return v14 == 0;
    }

    v15 = *(v5 + 72) * v13;
    v16 = *(v5 + 16);
    v16(v8, *(v27 + 48) + v15, v4);
    sub_2676AFE00(&qword_2801CBF58, MEMORY[0x277CBA2E0]);
    v17 = sub_2676CBF1C();
    v18 = *(v5 + 8);
    v18(v8, v4);
    if (v17)
    {
      break;
    }

    v11 = v13 + 1;
  }

  v18(v30, v4);
  v16(v25, *(v27 + 48) + v15, v4);
  return v14 == 0;
}

BOOL sub_2676AC97C(char *a1, char *a2)
{
  v25 = a1;
  v4 = sub_2676CB14C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = v2;
  v9 = *v2;
  v10 = *(*v2 + 40);
  sub_2676AFE00(&qword_2801CBF40, MEMORY[0x277D5CA58]);
  v30 = a2;
  v11 = sub_2676CBF0C();
  v27 = v9;
  v28 = v9 + 56;
  v12 = ~(-1 << *(v9 + 32));
  v29 = v5 + 16;
  v26 = v5 + 8;
  while (1)
  {
    v13 = v11 & v12;
    v14 = (1 << (v11 & v12)) & *(v28 + (((v11 & v12) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v14)
    {
      v19 = v24;
      v20 = *v24;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v22 = v30;
      (*(v5 + 16))(v8, v30, v4);
      v31 = *v19;
      sub_2676AE2AC(v8, v13, isUniquelyReferenced_nonNull_native);
      *v19 = v31;
      (*(v5 + 32))(v25, v22, v4);
      return v14 == 0;
    }

    v15 = *(v5 + 72) * v13;
    v16 = *(v5 + 16);
    v16(v8, *(v27 + 48) + v15, v4);
    sub_2676AFE00(&qword_2801CBF48, MEMORY[0x277D5CA58]);
    v17 = sub_2676CBF1C();
    v18 = *(v5 + 8);
    v18(v8, v4);
    if (v17)
    {
      break;
    }

    v11 = v13 + 1;
  }

  v18(v30, v4);
  v16(v25, *(v27 + 48) + v15, v4);
  return v14 == 0;
}

void sub_2676ACC44()
{
  OUTLINED_FUNCTION_21_1();
  v2 = v1;
  v34 = v3;
  v4 = sub_2676CAABC();
  v5 = OUTLINED_FUNCTION_3(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_3_2();
  v12 = v11 - v10;
  v33 = v0;
  v13 = *v0;
  v14 = *(*v0 + 40);
  OUTLINED_FUNCTION_30_10();
  sub_2676AFE00(v15, v16);
  sub_2676CBF0C();
  v35 = v13;
  v36 = v13 + 56;
  v17 = *(v13 + 32);
  OUTLINED_FUNCTION_104_1();
  v20 = ~v19;
  while (1)
  {
    v21 = v18 & v20;
    if (((1 << (v18 & v20)) & *(v36 + (((v18 & v20) >> 3) & 0xFFFFFFFFFFFFFF8))) == 0)
    {
      v27 = *v33;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v29 = v7[2];
      OUTLINED_FUNCTION_113_0();
      v30();
      v37 = *v33;
      sub_2676AE55C(v12, v21, isUniquelyReferenced_nonNull_native);
      *v33 = v37;
      v31 = v7[4];
      OUTLINED_FUNCTION_113_0();
      v32();
      goto LABEL_7;
    }

    v22 = v7[9] * v21;
    v23 = v7[2];
    v23(v12, *(v35 + 48) + v22, v4);
    OUTLINED_FUNCTION_30_10();
    sub_2676AFE00(&qword_2801CDC70, v24);
    v25 = sub_2676CBF1C();
    v26 = v7[1];
    v26(v12, v4);
    if (v25)
    {
      break;
    }

    v18 = v21 + 1;
  }

  v26(v2, v4);
  v23(v34, *(v35 + 48) + v22, v4);
LABEL_7:
  OUTLINED_FUNCTION_20_1();
}

BOOL sub_2676ACEBC()
{
  OUTLINED_FUNCTION_70_3();
  OUTLINED_FUNCTION_91_2();
  sub_2676CBFFC();
  sub_2676CC67C();
  v5 = *(v4 + 32);
  OUTLINED_FUNCTION_104_1();
  v8 = ~v7;
  while (1)
  {
    v9 = v6 & v8;
    v10 = (1 << (v6 & v8)) & *(v4 + 56 + (((v6 & v8) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v10)
    {
      break;
    }

    v11 = (*(v4 + 48) + 16 * v9);
    v12 = *v11 == v3 && v11[1] == v1;
    if (v12 || (sub_2676CC59C() & 1) != 0)
    {

      v13 = (*(v4 + 48) + 16 * v9);
      v14 = v13[1];
      *v0 = *v13;
      v0[1] = v14;

      return v10 == 0;
    }

    v6 = v9 + 1;
  }

  v15 = *v2;
  swift_isUniquelyReferenced_nonNull_native();
  OUTLINED_FUNCTION_123_0();
  v16 = OUTLINED_FUNCTION_58_4();
  sub_2676AE80C(v16, v17, v9, v4);
  *v2 = v19;
  *v0 = v3;
  v0[1] = v1;
  return v10 == 0;
}

uint64_t sub_2676ACFD0()
{
  OUTLINED_FUNCTION_70_3();
  sub_2676CC66C();
  if (v1)
  {
    OUTLINED_FUNCTION_91_2();
    sub_2676CBFFC();
  }

  sub_2676CC67C();
  v5 = *(v4 + 32);
  OUTLINED_FUNCTION_104_1();
  v8 = v7 & ~v6;
  if (((*(v4 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
LABEL_15:
    v14 = *v2;
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_123_0();
    v15 = OUTLINED_FUNCTION_58_4();
    sub_2676AE974(v15, v16, v8, v4);
    *v2 = v18;
    *v0 = v3;
    v0[1] = v1;
    return 1;
  }

  v9 = ~v6;
  v10 = *(v4 + 48);
  while (1)
  {
    v11 = (v10 + 16 * v8);
    v12 = v11[1];
    if (v12)
    {
      break;
    }

    if (!v1)
    {
      goto LABEL_17;
    }

LABEL_14:
    v8 = (v8 + 1) & v9;
    if (((*(v4 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      goto LABEL_15;
    }
  }

  if (!v1)
  {
    goto LABEL_14;
  }

  v13 = *v11 == v3 && v12 == v1;
  if (!v13 && (sub_2676CC59C() & 1) == 0)
  {
    goto LABEL_14;
  }

LABEL_17:
  *v0 = *(*(v4 + 48) + 16 * v8);

  return 0;
}

uint64_t sub_2676AD120(uint64_t a1)
{
  v2 = v1;
  v41 = sub_2676C8C8C();
  v4 = *(v41 - 8);
  v5 = v4[8];
  MEMORY[0x28223BE20](v41);
  v40 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v8 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CDC60, &qword_2676D4EF8);
  result = sub_2676CC3DC();
  v10 = result;
  if (!*(v7 + 16))
  {
LABEL_29:

    *v2 = v10;
    return result;
  }

  v35 = v2;
  v36 = v7;
  v11 = 0;
  v12 = (v7 + 56);
  v13 = 1 << *(v7 + 32);
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  else
  {
    v14 = -1;
  }

  v15 = v14 & *(v7 + 56);
  v16 = (v13 + 63) >> 6;
  v39 = v4 + 4;
  v17 = result + 56;
  if (!v15)
  {
LABEL_9:
    v19 = v11;
    while (1)
    {
      v11 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v11 >= v16)
      {
        break;
      }

      v20 = v12[v11];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v15 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    v33 = 1 << *(v7 + 32);
    if (v33 >= 64)
    {
      sub_2676AEB30(0, (v33 + 63) >> 6, v12);
    }

    else
    {
      *v12 = -1 << v33;
    }

    v2 = v35;
    *(v7 + 16) = 0;
    goto LABEL_29;
  }

  while (1)
  {
    v18 = __clz(__rbit64(v15));
    v15 &= v15 - 1;
LABEL_14:
    v21 = *(v7 + 48) + v4[9] * (v18 | (v11 << 6));
    v22 = v4[4];
    v37 = v4[9];
    v38 = v22;
    v22(v40, v21, v41);
    v23 = v10;
    v24 = *(v10 + 40);
    sub_2676AFE00(&qword_2801CBF50, MEMORY[0x277CBA2E0]);
    result = sub_2676CBF0C();
    v10 = v23;
    v25 = -1 << *(v23 + 32);
    v26 = result & ~v25;
    v27 = v26 >> 6;
    if (((-1 << v26) & ~*(v17 + 8 * (v26 >> 6))) == 0)
    {
      break;
    }

    v28 = __clz(__rbit64((-1 << v26) & ~*(v17 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v17 + ((v28 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v28;
    result = v38(*(v23 + 48) + v28 * v37, v40, v41);
    ++*(v23 + 16);
    v7 = v36;
    if (!v15)
    {
      goto LABEL_9;
    }
  }

  v29 = 0;
  v30 = (63 - v25) >> 6;
  while (++v27 != v30 || (v29 & 1) == 0)
  {
    v31 = v27 == v30;
    if (v27 == v30)
    {
      v27 = 0;
    }

    v29 |= v31;
    v32 = *(v17 + 8 * v27);
    if (v32 != -1)
    {
      v28 = __clz(__rbit64(~v32)) + (v27 << 6);
      goto LABEL_23;
    }
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_2676AD478(uint64_t a1)
{
  v2 = v1;
  v41 = sub_2676CB14C();
  v4 = *(v41 - 8);
  v5 = v4[8];
  MEMORY[0x28223BE20](v41);
  v40 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v8 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CDC50, &unk_2676D4ED8);
  result = sub_2676CC3DC();
  v10 = result;
  if (!*(v7 + 16))
  {
LABEL_29:

    *v2 = v10;
    return result;
  }

  v35 = v2;
  v36 = v7;
  v11 = 0;
  v12 = (v7 + 56);
  v13 = 1 << *(v7 + 32);
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  else
  {
    v14 = -1;
  }

  v15 = v14 & *(v7 + 56);
  v16 = (v13 + 63) >> 6;
  v39 = v4 + 4;
  v17 = result + 56;
  if (!v15)
  {
LABEL_9:
    v19 = v11;
    while (1)
    {
      v11 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v11 >= v16)
      {
        break;
      }

      v20 = v12[v11];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v15 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    v33 = 1 << *(v7 + 32);
    if (v33 >= 64)
    {
      sub_2676AEB30(0, (v33 + 63) >> 6, v12);
    }

    else
    {
      *v12 = -1 << v33;
    }

    v2 = v35;
    *(v7 + 16) = 0;
    goto LABEL_29;
  }

  while (1)
  {
    v18 = __clz(__rbit64(v15));
    v15 &= v15 - 1;
LABEL_14:
    v21 = *(v7 + 48) + v4[9] * (v18 | (v11 << 6));
    v22 = v4[4];
    v37 = v4[9];
    v38 = v22;
    v22(v40, v21, v41);
    v23 = v10;
    v24 = *(v10 + 40);
    sub_2676AFE00(&qword_2801CBF40, MEMORY[0x277D5CA58]);
    result = sub_2676CBF0C();
    v10 = v23;
    v25 = -1 << *(v23 + 32);
    v26 = result & ~v25;
    v27 = v26 >> 6;
    if (((-1 << v26) & ~*(v17 + 8 * (v26 >> 6))) == 0)
    {
      break;
    }

    v28 = __clz(__rbit64((-1 << v26) & ~*(v17 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v17 + ((v28 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v28;
    result = v38(*(v23 + 48) + v28 * v37, v40, v41);
    ++*(v23 + 16);
    v7 = v36;
    if (!v15)
    {
      goto LABEL_9;
    }
  }

  v29 = 0;
  v30 = (63 - v25) >> 6;
  while (++v27 != v30 || (v29 & 1) == 0)
  {
    v31 = v27 == v30;
    if (v27 == v30)
    {
      v27 = 0;
    }

    v29 |= v31;
    v32 = *(v17 + 8 * v27);
    if (v32 != -1)
    {
      v28 = __clz(__rbit64(~v32)) + (v27 << 6);
      goto LABEL_23;
    }
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_2676AD7D0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CDC40, &qword_2676D4EA8);
  result = sub_2676CC3DC();
  v6 = result;
  if (!*(v3 + 16))
  {
LABEL_29:

    *v2 = v6;
    return result;
  }

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
  if (!v11)
  {
LABEL_9:
    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v7 >= v12)
      {
        break;
      }

      v16 = v8[v7];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v11 = (v16 - 1) & v16;
        goto LABEL_14;
      }
    }

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      sub_2676AEB30(0, (v30 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v8 = -1 << v30;
    }

    v2 = v31;
    *(v3 + 16) = 0;
    goto LABEL_29;
  }

  while (1)
  {
    v14 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
LABEL_14:
    v17 = (*(v3 + 48) + 16 * (v14 | (v7 << 6)));
    v18 = *v17;
    v19 = v17[1];
    v20 = *(v6 + 40);
    sub_2676CC64C();
    sub_2676CBFFC();
    result = sub_2676CC67C();
    v21 = -1 << *(v6 + 32);
    v22 = result & ~v21;
    v23 = v22 >> 6;
    if (((-1 << v22) & ~*(v13 + 8 * (v22 >> 6))) == 0)
    {
      break;
    }

    v24 = __clz(__rbit64((-1 << v22) & ~*(v13 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v13 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
    v29 = (*(v6 + 48) + 16 * v24);
    *v29 = v18;
    v29[1] = v19;
    ++*(v6 + 16);
    if (!v11)
    {
      goto LABEL_9;
    }
  }

  v25 = 0;
  v26 = (63 - v21) >> 6;
  while (++v23 != v26 || (v25 & 1) == 0)
  {
    v27 = v23 == v26;
    if (v23 == v26)
    {
      v23 = 0;
    }

    v25 |= v27;
    v28 = *(v13 + 8 * v23);
    if (v28 != -1)
    {
      v24 = __clz(__rbit64(~v28)) + (v23 << 6);
      goto LABEL_23;
    }
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_2676ADA2C(uint64_t a1)
{
  v2 = v1;
  v41 = sub_2676CAABC();
  v4 = *(v41 - 8);
  v5 = v4[8];
  MEMORY[0x28223BE20](v41);
  v40 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v8 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CDC78, &unk_2676D4F00);
  result = sub_2676CC3DC();
  v10 = result;
  if (!*(v7 + 16))
  {
LABEL_29:

    *v2 = v10;
    return result;
  }

  v35 = v2;
  v36 = v7;
  v11 = 0;
  v12 = (v7 + 56);
  v13 = 1 << *(v7 + 32);
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  else
  {
    v14 = -1;
  }

  v15 = v14 & *(v7 + 56);
  v16 = (v13 + 63) >> 6;
  v39 = v4 + 4;
  v17 = result + 56;
  if (!v15)
  {
LABEL_9:
    v19 = v11;
    while (1)
    {
      v11 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v11 >= v16)
      {
        break;
      }

      v20 = v12[v11];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v15 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    v33 = 1 << *(v7 + 32);
    if (v33 >= 64)
    {
      sub_2676AEB30(0, (v33 + 63) >> 6, v12);
    }

    else
    {
      *v12 = -1 << v33;
    }

    v2 = v35;
    *(v7 + 16) = 0;
    goto LABEL_29;
  }

  while (1)
  {
    v18 = __clz(__rbit64(v15));
    v15 &= v15 - 1;
LABEL_14:
    v21 = *(v7 + 48) + v4[9] * (v18 | (v11 << 6));
    v22 = v4[4];
    v37 = v4[9];
    v38 = v22;
    v22(v40, v21, v41);
    v23 = v10;
    v24 = *(v10 + 40);
    sub_2676AFE00(&qword_2801CDC68, MEMORY[0x277D56020]);
    result = sub_2676CBF0C();
    v10 = v23;
    v25 = -1 << *(v23 + 32);
    v26 = result & ~v25;
    v27 = v26 >> 6;
    if (((-1 << v26) & ~*(v17 + 8 * (v26 >> 6))) == 0)
    {
      break;
    }

    v28 = __clz(__rbit64((-1 << v26) & ~*(v17 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v17 + ((v28 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v28;
    result = v38(*(v23 + 48) + v28 * v37, v40, v41);
    ++*(v23 + 16);
    v7 = v36;
    if (!v15)
    {
      goto LABEL_9;
    }
  }

  v29 = 0;
  v30 = (63 - v25) >> 6;
  while (++v27 != v30 || (v29 & 1) == 0)
  {
    v31 = v27 == v30;
    if (v27 == v30)
    {
      v27 = 0;
    }

    v29 |= v31;
    v32 = *(v17 + 8 * v27);
    if (v32 != -1)
    {
      v28 = __clz(__rbit64(~v32)) + (v27 << 6);
      goto LABEL_23;
    }
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_2676ADD84(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CDC88, &qword_2676D4FE8);
  result = sub_2676CC3DC();
  v6 = result;
  if (!*(v3 + 16))
  {
LABEL_31:

    *v2 = v6;
    return result;
  }

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
  if (!v11)
  {
LABEL_9:
    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v7 >= v12)
      {
        break;
      }

      v16 = v8[v7];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v11 = (v16 - 1) & v16;
        goto LABEL_14;
      }
    }

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      sub_2676AEB30(0, (v30 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v8 = -1 << v30;
    }

    v2 = v31;
    *(v3 + 16) = 0;
    goto LABEL_31;
  }

  while (1)
  {
    v14 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
LABEL_14:
    v17 = (*(v3 + 48) + 16 * (v14 | (v7 << 6)));
    v19 = *v17;
    v18 = v17[1];
    v20 = *(v6 + 40);
    sub_2676CC64C();
    sub_2676CC66C();
    if (v18)
    {
      sub_2676CBFFC();
    }

    result = sub_2676CC67C();
    v21 = -1 << *(v6 + 32);
    v22 = result & ~v21;
    v23 = v22 >> 6;
    if (((-1 << v22) & ~*(v13 + 8 * (v22 >> 6))) == 0)
    {
      break;
    }

    v24 = __clz(__rbit64((-1 << v22) & ~*(v13 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_25:
    *(v13 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
    v29 = (*(v6 + 48) + 16 * v24);
    *v29 = v19;
    v29[1] = v18;
    ++*(v6 + 16);
    if (!v11)
    {
      goto LABEL_9;
    }
  }

  v25 = 0;
  v26 = (63 - v21) >> 6;
  while (++v23 != v26 || (v25 & 1) == 0)
  {
    v27 = v23 == v26;
    if (v23 == v26)
    {
      v23 = 0;
    }

    v25 |= v27;
    v28 = *(v13 + 8 * v23);
    if (v28 != -1)
    {
      v24 = __clz(__rbit64(~v28)) + (v23 << 6);
      goto LABEL_25;
    }
  }

LABEL_33:
  __break(1u);
  return result;
}