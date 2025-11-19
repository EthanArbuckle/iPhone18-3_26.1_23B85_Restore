uint64_t sub_222DC8E2C(void (*a1)(uint64_t))
{
  v2 = sub_222DDA650();
  v3 = OUTLINED_FUNCTION_2(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_4();
  v10 = v9 - v8;
  if (qword_27D0475A8 != -1)
  {
    OUTLINED_FUNCTION_3_4();
  }

  v11 = sub_222DDB3E0();
  OUTLINED_FUNCTION_63_0(v11, qword_27D04C910);
  v12 = sub_222DDB3C0();
  v13 = sub_222DDB6B0();
  if (OUTLINED_FUNCTION_54_2(v13))
  {
    v14 = OUTLINED_FUNCTION_43_0();
    *v14 = 0;
    _os_log_impl(&dword_222D8A000, v12, v13, "[LocationResolverFlow::execute] completed, returning .complete()", v14, 2u);
    OUTLINED_FUNCTION_48_2();
  }

  sub_222DDA640();
  a1(v10);
  return (*(v5 + 8))(v10, v2);
}

char *LocationResolverFlow.deinit()
{
  v1 = *v0;
  v2 = *(v0 + 2);

  OUTLINED_FUNCTION_22_3();
  v4 = *(v3 + 104);
  v5 = *(v1 + 80);
  OUTLINED_FUNCTION_34_4();
  v7 = *(v6 + 88);
  v8 = type metadata accessor for LocationResolverFlow.State();
  OUTLINED_FUNCTION_4_6(v8);
  (*(v9 + 8))(&v0[v4]);
  OUTLINED_FUNCTION_22_3();
  v11 = *(v10 + 112);
  v12 = sub_222DDA1D0();
  OUTLINED_FUNCTION_4_6(v12);
  (*(v13 + 8))(&v0[v11]);
  OUTLINED_FUNCTION_22_3();
  v15 = *(v14 + 120);
  v16 = sub_222DDA220();
  OUTLINED_FUNCTION_4_6(v16);
  (*(v17 + 8))(&v0[v15]);
  OUTLINED_FUNCTION_22_3();
  (*(*(v5 - 8) + 8))(&v0[*(v18 + 128)], v5);
  OUTLINED_FUNCTION_22_3();
  sub_222DB6FC0(&v0[*(v19 + 136)], &qword_27D047CF0, &unk_222DDDE10);
  OUTLINED_FUNCTION_22_3();
  v21 = *&v0[*(v20 + 144)];

  return v0;
}

uint64_t LocationResolverFlow.__deallocating_deinit()
{
  LocationResolverFlow.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_222DC917C()
{
  v1 = *v0;
  sub_222DC2FE4();
  return 1;
}

uint64_t sub_222DC91C8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 80);
  v4 = *(a1 + 88);
  v5 = type metadata accessor for LocationResolverFlow();

  return MEMORY[0x2821BA658](v5, a2);
}

void sub_222DC9238(uint64_t a1)
{
  v2 = *(a1 + 80);
  v1 = *(a1 + 88);
  v3 = type metadata accessor for LocationResolverFlow.State();
  if (v4 <= 0x3F)
  {
    v13 = *(v3 - 8) + 64;
    v5 = sub_222DDA1D0();
    if (v6 <= 0x3F)
    {
      v14 = *(v5 - 8) + 64;
      v7 = sub_222DDA220();
      if (v8 <= 0x3F)
      {
        v15 = *(v7 - 8) + 64;
        v9 = swift_checkMetadataState();
        if (v10 <= 0x3F)
        {
          v16 = *(v9 - 8) + 64;
          sub_222DB6D38();
          if (v12 <= 0x3F)
          {
            v17 = *(v11 - 8) + 64;
            swift_initClassMetadata2();
          }
        }
      }
    }
  }
}

_BYTE *sub_222DC9464(_BYTE *result, int a2, int a3)
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

uint64_t sub_222DC9500()
{
  v0 = sub_222DDADB0();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v0;
}

uint64_t sub_222DC95F0(uint64_t a1)
{
  v3 = sub_222DDADB0();
  OUTLINED_FUNCTION_8(v3);
  v5 = *(v1 + 32);
  v6 = v1 + ((*(v4 + 80) + 40) & ~*(v4 + 80));

  return sub_222DC5A44(a1, v5, v6);
}

unint64_t sub_222DC966C()
{
  result = qword_27D047E20;
  if (!qword_27D047E20)
  {
    sub_222DDA2A0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D047E20);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_16_3()
{
  v2 = *(v0 - 184);

  return sub_222DDA620();
}

uint64_t OUTLINED_FUNCTION_18_4()
{

  return sub_222DDA620();
}

uint64_t OUTLINED_FUNCTION_23_5()
{
  result = *(v0 - 240);
  v2 = *(v0 - 264);
  v3 = *(v0 - 224);
  return result;
}

uint64_t OUTLINED_FUNCTION_26_4()
{
  result = *(v0 - 520);
  v2 = *(v0 - 440);
  return result;
}

void OUTLINED_FUNCTION_36_2()
{
  v2 = *(v0 - 208);

  sub_222DC8854();
}

uint64_t OUTLINED_FUNCTION_37_3()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_42_3()
{
  v2 = *(v1 - 168);
  v3 = *(*(v1 - 176) + 8);
  return v0;
}

uint64_t OUTLINED_FUNCTION_45_2()
{
  result = v0;
  *(v2 - 224) = *(v1 + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_52_3@<X0>(int a1@<W8>)
{
  *(v1 + 4) = a1;
  *(v1 + 8) = 2080;

  return sub_222DDA2A0();
}

BOOL OUTLINED_FUNCTION_54_2(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

void *sub_222DC98E0()
{
  v1 = v0;
  v2 = sub_222DDB420();
  v3 = OUTLINED_FUNCTION_2(v2);
  v36 = v4;
  v37 = v3;
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v3);
  v34 = v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v35 = v32 - v9;
  v10 = [objc_allocWithZone(MEMORY[0x277D47310]) init];
  v11 = *MEMORY[0x277D47D78];
  v12 = sub_222DDB500();
  sub_222DCA324(v12, v13, v10);
  sub_222D9E3E4(0, &qword_27D048350, 0x277CCABB0);
  v14 = sub_222DDB700();
  [v10 setMaxAge_];

  v33 = *(type metadata accessor for LocationService() + 20);
  v15 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
  [v10 setSearchTimeout_];

  v16 = dispatch_semaphore_create(0);
  v17 = swift_allocObject();
  *(v17 + 16) = 0;
  v32[1] = v17 + 16;
  v18 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v1[3]);
  v19 = swift_allocObject();
  *(v19 + 16) = v16;
  *(v19 + 24) = v17;
  sub_222D9E3E4(0, &qword_27D048358, 0x277D477E8);
  v20 = v16;

  sub_222DDA710();

  v21 = v34;
  sub_222DDB410();
  v22 = v35;
  MEMORY[0x223DCE170](v21, v1 + v33);
  v23 = *(v36 + 8);
  v24 = v37;
  v23(v21, v37);
  sub_222DDB6E0();
  v23(v22, v24);
  if (sub_222DDB400())
  {
    if (qword_27D0475A8 != -1)
    {
      swift_once();
    }

    v25 = sub_222DDB3E0();
    __swift_project_value_buffer(v25, qword_27D04C910);
    v26 = sub_222DDB3C0();
    v27 = sub_222DDB6C0();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&dword_222D8A000, v26, v27, "could not acquire location within the specified timeout", v28, 2u);
      MEMORY[0x223DCEF40](v28, -1, -1);
    }

    return 0;
  }

  else
  {

    swift_beginAccess();
    v29 = *(v17 + 16);
    v30 = v29;
  }

  return v29;
}

double sub_222DC9CC8()
{
  v1 = v0;
  v2 = sub_222DDB3F0();
  v3 = OUTLINED_FUNCTION_2(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v9, v1, v2);
  v10 = (*(v5 + 88))(v9, v2);
  if (v10 == *MEMORY[0x277D85188])
  {
    v11 = OUTLINED_FUNCTION_0_11();
    v12(v11);
    return OUTLINED_FUNCTION_1_6();
  }

  if (v10 == *MEMORY[0x277D85178])
  {
    v14 = OUTLINED_FUNCTION_0_11();
    v15(v14);
    v16 = OUTLINED_FUNCTION_1_6();
    v17 = 1000.0;
  }

  else if (v10 == *MEMORY[0x277D85170])
  {
    v18 = OUTLINED_FUNCTION_0_11();
    v19(v18);
    v16 = OUTLINED_FUNCTION_1_6();
    v17 = 100000.0;
  }

  else
  {
    if (v10 != *MEMORY[0x277D85168])
    {
      (*(v5 + 8))(v9, v2);
      return 9.22337204e18;
    }

    v20 = OUTLINED_FUNCTION_0_11();
    v21(v20);
    v16 = OUTLINED_FUNCTION_1_6();
    v17 = 100000000.0;
  }

  return v16 / v17;
}

uint64_t sub_222DC9E88()
{
  v0 = sub_222DDB3F0();
  __swift_allocate_value_buffer(v0, qword_27D04C8F8);
  *__swift_project_value_buffer(v0, qword_27D04C8F8) = 50;
  v1 = *MEMORY[0x277D85178];
  v2 = *(*(v0 - 8) + 104);

  return v2();
}

void sub_222DC9F18(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v6 = sub_222DDA750();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = v36 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D048360, &qword_222DDE868);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14);
  v17 = (v36 - v16);
  sub_222DCA3DC(a1, v36 - v16);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v7 + 32))(v13, v17, v6);
    if (qword_27D0475A8 != -1)
    {
      swift_once();
    }

    v18 = sub_222DDB3E0();
    __swift_project_value_buffer(v18, qword_27D04C910);
    v19 = *(v7 + 16);
    v37 = v13;
    v19(v11, v13, v6);
    v20 = sub_222DDB3C0();
    v21 = sub_222DDB6B0();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v36[0] = swift_slowAlloc();
      v38 = v36[0];
      *v22 = 136315138;
      sub_222DCA44C();
      v23 = sub_222DDBB00();
      v36[1] = a2;
      v25 = v24;
      v26 = *(v7 + 8);
      v26(v11, v6);
      v27 = sub_222D8F7F0(v23, v25, &v38);

      *(v22 + 4) = v27;
      _os_log_impl(&dword_222D8A000, v20, v21, "Error getting current location: %s", v22, 0xCu);
      v28 = v36[0];
      __swift_destroy_boxed_opaque_existential_0(v36[0]);
      MEMORY[0x223DCEF40](v28, -1, -1);
      MEMORY[0x223DCEF40](v22, -1, -1);
    }

    else
    {

      v26 = *(v7 + 8);
      v26(v11, v6);
    }

    sub_222DDB6F0();
    v26(v37, v6);
  }

  else
  {
    v29 = *v17;
    v30 = [objc_allocWithZone(MEMORY[0x277D4C408]) init];
    swift_beginAccess();
    v31 = *(a3 + 16);
    *(a3 + 16) = v30;

    swift_beginAccess();
    v32 = *(a3 + 16);
    if (v32)
    {
      v33 = v32;
      [v29 latitude];
      [v33 setLat_];
    }

    swift_beginAccess();
    v34 = *(a3 + 16);
    if (v34)
    {
      v35 = v34;
      [v29 longitude];
      [v35 setLng_];
    }

    sub_222DDB6F0();
  }
}

void sub_222DCA324(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_222DDB4C0();

  [a3 setDesiredAccuracy_];
}

uint64_t type metadata accessor for LocationService()
{
  result = qword_27D048370;
  if (!qword_27D048370)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_222DCA3DC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D048360, &qword_222DDE868);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_222DCA44C()
{
  result = qword_27D048368;
  if (!qword_27D048368)
  {
    sub_222DDA750();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D048368);
  }

  return result;
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
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

unint64_t sub_222DCA530()
{
  result = sub_222DCA5B4();
  if (v1 <= 0x3F)
  {
    result = sub_222DDB3F0();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_222DCA5B4()
{
  result = qword_27D048380;
  if (!qword_27D048380)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_27D048380);
  }

  return result;
}

uint64_t sub_222DCA62C(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, void))
{
  v4 = sub_222D8DAFC(0, 0);
  if (!v4)
  {
    return a3(MEMORY[0x277D84F90], 0);
  }

  v5 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0487F0, &unk_222DDD310);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_222DDD2F0;
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_222DDD2F0;
  *(v7 + 32) = v5;
  v8 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D047F60, &qword_222DDE000);
  v9 = sub_222DDBBA0();
  if (v10)
  {
    v11 = v9;
  }

  else
  {
    v11 = 0;
  }

  if (v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = 0xE000000000000000;
  }

  sub_222DCAFC8();
  *(v6 + 32) = sub_222DD9914(v7, v11, v12);
  a3(v6, 0);
}

uint64_t sub_222DCA7A8(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v21 = sub_222DDB3B0();
  v6 = OUTLINED_FUNCTION_2(v21);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_1_7();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v12 = [objc_opt_self() bundleForClass_];
  if (qword_27D0475A8 != -1)
  {
    OUTLINED_FUNCTION_3_4();
  }

  v13 = sub_222DDB3E0();
  __swift_project_value_buffer(v13, qword_27D04C910);
  v14 = sub_222DDB3C0();
  v15 = sub_222DDB6B0();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_222D8A000, v14, v15, "[MissingMeCardViewBuilder] Constructing punchout button for macOS.", v16, 2u);
    MEMORY[0x223DCEF40](v16, -1, -1);
  }

  sub_222DDB1B0();
  sub_222DDB460();
  v23 = 0;
  memset(v22, 0, sizeof(v22));
  v17 = swift_allocObject();
  v17[2] = v4;
  v17[3] = a1;
  v17[4] = a2;
  sub_222DDB180();

  v18 = sub_222DDB170();
  sub_222DDB3A0();
  sub_222DDB190();

  (*(v8 + 8))(v3, v21);
  return sub_222D9E37C(v22);
}

uint64_t sub_222DCAA7C(uint64_t a1, void (*a2)(void, void), uint64_t a3, const char *a4)
{
  if (qword_27D0475A8 != -1)
  {
    OUTLINED_FUNCTION_3_4();
  }

  v6 = sub_222DDB3E0();
  __swift_project_value_buffer(v6, qword_27D04C910);
  v7 = sub_222DDB3C0();
  v8 = sub_222DDB6B0();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_222D8A000, v7, v8, a4, v9, 2u);
    MEMORY[0x223DCEF40](v9, -1, -1);
  }

  sub_222DBAB24(MEMORY[0x277D84F90], 0, a2);
}

uint64_t sub_222DCAB80(uint64_t a1, uint64_t a2)
{
  v4 = sub_222DDB3B0();
  v5 = OUTLINED_FUNCTION_2(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_1_7();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v11 = [objc_opt_self() bundleForClass_];
  if (qword_27D0475A8 != -1)
  {
    OUTLINED_FUNCTION_3_4();
  }

  v12 = sub_222DDB3E0();
  __swift_project_value_buffer(v12, qword_27D04C910);
  v13 = sub_222DDB3C0();
  v14 = sub_222DDB6B0();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_222D8A000, v13, v14, "[MissingMeCardViewBuilder] Constructing punchout button for iOS.", v15, 2u);
    MEMORY[0x223DCEF40](v15, -1, -1);
  }

  sub_222DDB1B0();
  sub_222DDB460();
  v21 = 0;
  memset(v20, 0, sizeof(v20));
  v16 = swift_allocObject();
  *(v16 + 16) = a1;
  *(v16 + 24) = a2;
  sub_222DDB180();

  v17 = sub_222DDB170();
  sub_222DDB3A0();
  sub_222DDB190();

  (*(v7 + 8))(v2, v4);
  return sub_222D9E37C(v20);
}

uint64_t sub_222DCAE2C(uint64_t a1, void (*a2)(uint64_t, void))
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0487F0, &unk_222DDD310);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_222DDD2F0;
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_222DDD2F0;
  *(v4 + 32) = sub_222D8DE88();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D047F60, &qword_222DDE000);
  v5 = sub_222DDBBA0();
  if (v6)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0;
  }

  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = 0xE000000000000000;
  }

  sub_222DCAFC8();
  *(v3 + 32) = sub_222DD9914(v4, v7, v8);
  a2(v3, 0);
}

uint64_t sub_222DCAF5C()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  sub_222DCB020(v0 + 56);

  return MEMORY[0x2821FE8D8](v0, 96, 7);
}

unint64_t sub_222DCAFC8()
{
  result = qword_27D048388;
  if (!qword_27D048388)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27D048388);
  }

  return result;
}

uint64_t sub_222DCB094(uint64_t a1, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  v3 = v2 == 0;
  return !a2 || v3;
}

uint64_t sub_222DCB0BC()
{
  v0 = sub_222DDB3E0();
  __swift_allocate_value_buffer(v0, qword_27D04C910);
  __swift_project_value_buffer(v0, qword_27D04C910);
  OUTLINED_FUNCTION_0_12();
  return sub_222DDB3D0();
}

uint64_t sub_222DCB118()
{
  v0 = sub_222DDB3E0();
  __swift_allocate_value_buffer(v0, qword_27D04C928);
  __swift_project_value_buffer(v0, qword_27D04C928);
  OUTLINED_FUNCTION_0_12();
  return sub_222DDB3D0();
}

uint64_t sub_222DCB174()
{
  v0 = sub_222DDB3E0();
  __swift_allocate_value_buffer(v0, qword_27D04C940);
  __swift_project_value_buffer(v0, qword_27D04C940);
  OUTLINED_FUNCTION_0_12();
  return sub_222DDB3D0();
}

uint64_t sub_222DCB204()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 24));

  return MEMORY[0x2821FE8D8](v0, 64, 7);
}

uint64_t sub_222DCB268(void *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D047B28, "|M");
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v15 - v6;
  sub_222DDA0A0();
  v8 = [a1 namePrefix];
  sub_222DDB500();
  OUTLINED_FUNCTION_1_8();
  OUTLINED_FUNCTION_0_13();
  sub_222DDA030();
  v9 = [a1 givenName];
  sub_222DDB500();
  OUTLINED_FUNCTION_1_8();
  OUTLINED_FUNCTION_0_13();
  sub_222DD9FE0();
  v10 = [a1 middleName];
  sub_222DDB500();
  OUTLINED_FUNCTION_1_8();
  OUTLINED_FUNCTION_0_13();
  sub_222DDA020();
  v11 = [a1 nickname];
  sub_222DDB500();
  OUTLINED_FUNCTION_1_8();
  OUTLINED_FUNCTION_0_13();
  sub_222DDA090();
  v12 = [a1 familyName];
  sub_222DDB500();
  OUTLINED_FUNCTION_1_8();
  OUTLINED_FUNCTION_0_13();
  sub_222DDA000();
  v13 = [a1 nameSuffix];
  sub_222DDB500();
  OUTLINED_FUNCTION_1_8();
  OUTLINED_FUNCTION_0_13();
  sub_222DDA040();
  sub_222D8E9FC(a2, v7);
  sub_222DDA060();

  return sub_222DCB430(a2);
}

uint64_t sub_222DCB430(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0479C8, &qword_222DDC758);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void OUTLINED_FUNCTION_1_8()
{
}

uint64_t static PhonemeDataParser.parse(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_222DDB530();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27D0475A8 != -1)
  {
    swift_once();
  }

  v9 = sub_222DDB3E0();
  __swift_project_value_buffer(v9, qword_27D04C910);
  v10 = a1;
  v11 = sub_222DDB3C0();
  v12 = sub_222DDB6B0();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v37 = a2;
    v40 = v36;
    *v13 = 136315138;
    v38 = sub_222DCBEC8(v10);
    v39 = v14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D047BA8, &qword_222DDE830);
    v15 = sub_222DDB540();
    v17 = v10;
    v18 = v8;
    v19 = v5;
    v20 = v4;
    v21 = sub_222D8F7F0(v15, v16, &v40);

    *(v13 + 4) = v21;
    v4 = v20;
    v5 = v19;
    v8 = v18;
    v10 = v17;
    _os_log_impl(&dword_222D8A000, v11, v12, "[PhonemeDataParser] phonemeData: %s", v13, 0xCu);
    v22 = v36;
    __swift_destroy_boxed_opaque_existential_0(v36);
    a2 = v37;
    MEMORY[0x223DCEF40](v22, -1, -1);
    MEMORY[0x223DCEF40](v13, -1, -1);
  }

  sub_222DCBEC8(v10);
  if (v23 && (sub_222DDB520(), v24 = sub_222DDB510(), v26 = v25, , v27 = (*(v5 + 8))(v8, v4), v26 >> 60 != 15))
  {
    v33 = sub_222D8E87C(v27);
    sub_222DCB850(v33, v34, a2);

    return sub_222D93218(v24, v26);
  }

  else
  {
    v28 = sub_222DDB3C0();
    v29 = sub_222DDB6B0();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&dword_222D8A000, v28, v29, "phonemeData string is empty", v30, 2u);
      MEMORY[0x223DCEF40](v30, -1, -1);
    }

    v31 = sub_222DDB200();
    return __swift_storeEnumTagSinglePayload(a2, 1, 1, v31);
  }
}

uint64_t sub_222DCB810()
{
  v0 = sub_222DD9EB0();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = sub_222DD9EA0();
  qword_27D048390 = result;
  return result;
}

uint64_t sub_222DCB850@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v55 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0479D0, &unk_222DDC760);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v48 - v7;
  v9 = sub_222DDB200();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v54 = &v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v48 - v15;
  MEMORY[0x28223BE20](v14);
  v18 = &v48 - v17;
  if (qword_27D0475C0 != -1)
  {
    swift_once();
  }

  sub_222DCBF2C();
  sub_222DD9E90();
  __swift_storeEnumTagSinglePayload(v8, 0, 1, v9);
  v52 = *(v10 + 32);
  v53 = v10 + 32;
  v52(v18, v8, v9);
  if (qword_27D0475A8 != -1)
  {
    swift_once();
  }

  v19 = sub_222DDB3E0();
  v20 = __swift_project_value_buffer(v19, qword_27D04C910);

  v21 = sub_222DDB3C0();
  v22 = sub_222DDB6B0();

  v23 = os_log_type_enabled(v21, v22);
  v51 = v16;
  if (v23)
  {
    v24 = swift_slowAlloc();
    v50 = v20;
    v25 = v24;
    v49 = swift_slowAlloc();
    v56[1] = a2;
    v57 = v49;
    *v25 = 136315138;
    v56[0] = v55;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D047BA8, &qword_222DDE830);
    v26 = sub_222DDB540();
    v28 = v18;
    v29 = v10;
    v30 = a3;
    v31 = sub_222D8F7F0(v26, v27, &v57);

    *(v25 + 4) = v31;
    a3 = v30;
    v10 = v29;
    v18 = v28;
    _os_log_impl(&dword_222D8A000, v21, v22, "[PhonemeDataParser] fullName: %s", v25, 0xCu);
    v32 = v49;
    __swift_destroy_boxed_opaque_existential_0(v49);
    MEMORY[0x223DCEF40](v32, -1, -1);
    MEMORY[0x223DCEF40](v25, -1, -1);
  }

  if (a2 && (sub_222DDB1F0() & 1) != 0)
  {
    v55 = a3;
    v33 = *(v10 + 16);
    v34 = v51;
    v33(v51, v18, v9);
    v35 = sub_222DDB3C0();
    v36 = sub_222DDB6B0();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      v56[0] = v50;
      *v37 = 136315138;
      v33(v54, v34, v9);
      v38 = sub_222DDB540();
      v40 = v39;
      (*(v10 + 8))(v34, v9);
      v41 = sub_222D8F7F0(v38, v40, v56);

      *(v37 + 4) = v41;
      _os_log_impl(&dword_222D8A000, v35, v36, "[PhonemeDataParser] after: %s", v37, 0xCu);
      v42 = v50;
      __swift_destroy_boxed_opaque_existential_0(v50);
      MEMORY[0x223DCEF40](v42, -1, -1);
      MEMORY[0x223DCEF40](v37, -1, -1);
    }

    else
    {

      (*(v10 + 8))(v34, v9);
    }

    a3 = v55;
    v52(v55, v18, v9);
    v46 = 0;
  }

  else
  {
    v43 = sub_222DDB3C0();
    v44 = sub_222DDB6C0();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      *v45 = 0;
      _os_log_impl(&dword_222D8A000, v43, v44, "[PhonemeDataParser] phonemeData checksum is invalid", v45, 2u);
      MEMORY[0x223DCEF40](v45, -1, -1);
    }

    (*(v10 + 8))(v18, v9);
    v46 = 1;
  }

  return __swift_storeEnumTagSinglePayload(a3, v46, 1, v9);
}

uint64_t sub_222DCBEC8(void *a1)
{
  v1 = [a1 phonemeData];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_222DDB500();

  return v3;
}

unint64_t sub_222DCBF2C()
{
  result = qword_27D048398;
  if (!qword_27D048398)
  {
    sub_222DDB200();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D048398);
  }

  return result;
}

uint64_t sub_222DCBF84(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0479D0, &unk_222DDC760);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_222DCBFEC(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D047B40, &unk_222DDD450);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_222DDC9B0;
  *(inited + 32) = 0x6E6F697461636F6CLL;
  *(inited + 40) = 0xE800000000000000;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0483A0, &qword_222DDE918);
  v3 = swift_initStackObject();
  *(v3 + 16) = xmmword_222DDC9B0;
  *(v3 + 32) = 0x7365756C6176;
  *(v3 + 40) = 0xE600000000000000;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0483A8, &qword_222DDE920);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_222DDC9B0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0483B0, &qword_222DDE928);
  v5 = swift_initStackObject();
  *(v5 + 16) = xmmword_222DDC9B0;
  *(v5 + 32) = 0x73736572646461;
  *(v5 + 40) = 0xE700000000000000;
  v6 = [a1 _geoMapItem];
  if (v6 && (v7 = [v6 addressDictionary], swift_unknownObjectRelease(), v7))
  {
    v8 = sub_222DDB450();
  }

  else
  {
    v8 = sub_222DDB460();
  }

  v9 = sub_222DCC274(v8);

  *(v5 + 48) = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0483B8, &qword_222DDE930);
  *(v4 + 32) = sub_222DDB460();
  *(v3 + 48) = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0483C0, &qword_222DDE938);
  v10 = sub_222DDB460();
  *(inited + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0483C8, &qword_222DDE940);
  *(inited + 48) = v10;
  return sub_222DDB460();
}

uint64_t sub_222DCC274(uint64_t a1)
{
  v2 = a1 + 64;
  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  v48 = MEMORY[0x277D84F90];
  while (v5)
  {
LABEL_9:
    v9 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    sub_222DCC7A0(*(a1 + 48) + 40 * (v9 | (v7 << 6)), &v53);
    v51[0] = v53;
    v51[1] = v54;
    v52 = v55;
    if (swift_dynamicCast())
    {
      v10 = *(&v50[0] + 1);
      if (*(&v50[0] + 1))
      {
        v46 = *&v50[0];
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v14 = v48[2];
          sub_222DD75B4();
          v48 = v15;
        }

        v11 = v48[2];
        v12 = v11 + 1;
        if (v11 >= v48[3] >> 1)
        {
          sub_222DD75B4();
          v12 = v11 + 1;
          v48 = v16;
        }

        v48[2] = v12;
        v13 = &v48[2 * v11];
        v13[4] = v46;
        v13[5] = v10;
      }
    }
  }

  while (1)
  {
    v8 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      result = sub_222DDBAF0();
      __break(1u);
      return result;
    }

    if (v8 >= v6)
    {
      break;
    }

    v5 = *(v2 + 8 * v8);
    ++v7;
    if (v5)
    {
      v7 = v8;
      goto LABEL_9;
    }
  }

  v17 = sub_222DDB460();
  v18 = 0;
  v47 = v48[2];
  v19 = v48 + 5;
  while (v47 != v18)
  {
    if (v18 >= v48[2])
    {
      goto LABEL_37;
    }

    v21 = *(v19 - 1);
    v20 = *v19;
    swift_bridgeObjectRetain_n();
    sub_222DCC7FC(1);
    v22 = sub_222DDB730();
    v24 = v23;

    v25 = sub_222DCC8BC(1uLL, v21, v20);
    *&v51[0] = v22;
    *(&v51[0] + 1) = v24;
    *&v53 = v25;
    *(&v53 + 1) = v26;
    *&v54 = v27;
    *(&v54 + 1) = v28;
    sub_222DCC990();
    sub_222DDB580();

    sub_222DDB7E0();
    *&v50[0] = v21;
    *(&v50[0] + 1) = v20;

    sub_222DDB7E0();
    if (*(a1 + 16) && (v29 = sub_222DCCA5C(v51), (v30 & 1) != 0))
    {
      sub_222D8FDAC(*(a1 + 56) + 32 * v29, v50);
      sub_222DCCAA0(v51);
      swift_isUniquelyReferenced_nonNull_native();
      v31 = sub_222DCCA5C(&v53);
      if (__OFADD__(v17[2], (v32 & 1) == 0))
      {
        goto LABEL_38;
      }

      v33 = v31;
      v34 = v32;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0483D8, &qword_222DDE948);
      if (sub_222DDB8E0())
      {
        v35 = sub_222DCCA5C(&v53);
        if ((v34 & 1) != (v36 & 1))
        {
          goto LABEL_40;
        }

        v33 = v35;
      }

      if (v34)
      {
        v37 = (v17[7] + 32 * v33);
        __swift_destroy_boxed_opaque_existential_0(v37);
        sub_222D93798(v50, v37);
      }

      else
      {
        v17[(v33 >> 6) + 8] |= 1 << v33;
        sub_222DCC7A0(&v53, v17[6] + 40 * v33);
        sub_222D93798(v50, (v17[7] + 32 * v33));
        v42 = v17[2];
        v43 = __OFADD__(v42, 1);
        v44 = v42 + 1;
        if (v43)
        {
          goto LABEL_39;
        }

        v17[2] = v44;
      }

      sub_222DCCAA0(&v53);
    }

    else
    {
      sub_222DCCAA0(v51);
      v38 = sub_222DCCA5C(&v53);
      if (v39)
      {
        v40 = v38;
        swift_isUniquelyReferenced_nonNull_native();
        v49 = v17;
        v41 = v17[3];
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0483D8, &qword_222DDE948);
        sub_222DDB8E0();
        v17 = v49;
        sub_222DCCAA0(v49[6] + 40 * v40);
        sub_222D93798((v49[7] + 32 * v40), v50);
        sub_222DDB8F0();

        sub_222DCCAA0(&v53);
      }

      else
      {
        sub_222DCCAA0(&v53);

        memset(v50, 0, sizeof(v50));
      }

      sub_222D93730(v50);
    }

    v19 += 2;
    ++v18;
  }

  return v17;
}

uint64_t sub_222DCC7FC(uint64_t result)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    sub_222DDB570();
    v1 = sub_222DDB5E0();

    return v1;
  }

  return result;
}

unint64_t sub_222DCC8BC(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    if ((a3 & 0x2000000000000000) != 0)
    {
      v3 = HIBYTE(a3) & 0xF;
    }

    else
    {
      v3 = a2 & 0xFFFFFFFFFFFFLL;
    }

    v4 = 7;
    if (((a3 >> 60) & ((a2 & 0x800000000000000) == 0)) != 0)
    {
      v4 = 11;
    }

    v5 = v4 | (v3 << 16);
    result = sub_222DDB570();
    if (v6)
    {
      result = v5;
    }

    if (4 * v3 >= result >> 14)
    {
      v7 = sub_222DDB5E0();

      return v7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_222DCC990()
{
  result = qword_27D0483D0;
  if (!qword_27D0483D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0483D0);
  }

  return result;
}

unint64_t sub_222DCC9E4(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_222DDBB60();
  sub_222DDB560();
  v6 = sub_222DDBB90();

  return sub_222DCCAF4(a1, a2, v6);
}

unint64_t sub_222DCCA5C(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  v5 = sub_222DDB7C0();

  return sub_222DCCBA8(a1, v5);
}

unint64_t sub_222DCCAF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = ~(-1 << *(v3 + 32));
  for (i = a3 & v6; ((1 << i) & *(v3 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v6)
  {
    v8 = (*(v3 + 48) + 16 * i);
    v9 = *v8 == a1 && v8[1] == a2;
    if (v9 || (sub_222DDBAC0() & 1) != 0)
    {
      break;
    }
  }

  return i;
}

unint64_t sub_222DCCBA8(uint64_t a1, uint64_t a2)
{
  v4 = ~(-1 << *(v2 + 32));
  for (i = a2 & v4; ((1 << i) & *(v2 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v4)
  {
    sub_222DCC7A0(*(v2 + 48) + 40 * i, v8);
    v6 = MEMORY[0x223DCE510](v8, a1);
    sub_222DCCAA0(v8);
    if (v6)
    {
      break;
    }
  }

  return i;
}

void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> ContactDisambiguationModel.init(contacts:prompt:contactSelectionDirectInvocationID:)(SiriInferenceFlow::ContactDisambiguationModel *__return_ptr retstr, Swift::OpaquePointer contacts, Swift::String prompt, Swift::String contactSelectionDirectInvocationID)
{
  rawValue = contacts._rawValue;
  v6 = sub_222DA8780(contacts._rawValue);
  v7 = MEMORY[0x277D84F90];
  if (!v6)
  {
LABEL_11:
    retstr->contacts._rawValue = rawValue;
    retstr->prompt = prompt;
    retstr->contactSelectionDirectInvocationID = contactSelectionDirectInvocationID;
    retstr->contactSelectionDirectInvocationKey.value._countAndFlagsBits = 0;
    retstr->contactSelectionDirectInvocationKey.value._object = 0;
    retstr->encodedContacts._rawValue = v7;
    return;
  }

  v8 = v6;
  v27 = MEMORY[0x277D84F90];

  OUTLINED_FUNCTION_55_2();
  if ((v8 & 0x8000000000000000) == 0)
  {
    v9 = 0;
    v7 = v27;
    v23 = rawValue & 0xC000000000000001;
    v24 = rawValue;
    do
    {
      if (v23)
      {
        MEMORY[0x223DCE590](v9, rawValue);
      }

      else
      {
        OUTLINED_FUNCTION_27_0(rawValue + 8 * v9);
      }

      sub_222DCE24C(v25);

      v10 = v25[0];
      v11 = v25[1];
      v12 = v25[2];
      v13 = v25[3];
      v14 = v26;
      v27 = v7;
      v16 = v7[2];
      v15 = v7[3];
      if (v16 >= v15 >> 1)
      {
        v18 = OUTLINED_FUNCTION_19_4(v15);
        v20 = v19;
        sub_222DA54E8(v18, v16 + 1, 1);
        v14 = v20;
        v7 = v27;
      }

      ++v9;
      v7[2] = v16 + 1;
      v17 = &v7[6 * v16];
      v17[4] = v10;
      v17[5] = v11;
      v17[6] = v12;
      v17[7] = v13;
      *(v17 + 4) = v14;
      rawValue = v24;
    }

    while (v8 != v9);

    goto LABEL_11;
  }

  __break(1u);
}

uint64_t ContactHandleDisambiguationModel.init(contact:contactHandles:isDeviceLocked:contactSelectionDirectInvocationID:prompt:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{

  sub_222DCE24C(&v37);
  v34 = a1;

  v15 = v37;
  v32 = v38;
  v33 = *(&v37 + 1);
  v30 = v39;
  v31 = *(&v38 + 1);
  v29 = *(&v39 + 1);
  v16 = sub_222DA8780(a2);
  v36 = a4;
  if (!v16)
  {

    v20 = MEMORY[0x277D84F90];
LABEL_13:
    *a8 = v34;
    *(a8 + 8) = a2;
    *(a8 + 16) = a3 & 1;
    *(a8 + 24) = v36;
    *(a8 + 32) = a5;
    *(a8 + 40) = 0;
    *(a8 + 48) = 0;
    *(a8 + 56) = a6;
    *(a8 + 64) = a7;
    *(a8 + 72) = v15;
    *(a8 + 80) = v33;
    *(a8 + 88) = v32;
    *(a8 + 96) = v31;
    *(a8 + 104) = v30;
    *(a8 + 112) = v29;
    *(a8 + 120) = v20;
    return result;
  }

  v17 = v16;
  result = OUTLINED_FUNCTION_39_3(v16, MEMORY[0x277D84F90]);
  if ((v17 & 0x8000000000000000) == 0)
  {
    v28 = a7;
    v19 = 0;
    v20 = v41;
    if ((a2 & 0xC000000000000001) == 0)
    {
      goto LABEL_5;
    }

LABEL_4:
    MEMORY[0x223DCE590](v19, a2);
    while (1)
    {
      sub_222DCF124(&v37);

      v41 = v20;
      v22 = *(v20 + 16);
      v21 = *(v20 + 24);
      if (v22 >= v21 >> 1)
      {
        v27 = OUTLINED_FUNCTION_19_4(v21);
        sub_222DA5508(v27, v22 + 1, 1);
        v20 = v41;
      }

      *(v20 + 16) = v22 + 1;
      v23 = (v20 + (v22 << 6));
      v24 = v37;
      v25 = v38;
      v26 = v40;
      v23[4] = v39;
      v23[5] = v26;
      v23[2] = v24;
      v23[3] = v25;
      if (v17 - 1 == v19)
      {
        break;
      }

      ++v19;
      if ((a2 & 0xC000000000000001) != 0)
      {
        goto LABEL_4;
      }

LABEL_5:
      OUTLINED_FUNCTION_27_0(a2 + 8 * v19);
    }

    a7 = v28;
    goto LABEL_13;
  }

  __break(1u);
  return result;
}

uint64_t static ContactDisambiguationSnippetPluginModel.bundleName.getter()
{
  swift_beginAccess();
  v0 = qword_27D0483E0;

  return v0;
}

uint64_t static ContactDisambiguationSnippetPluginModel.bundleName.setter(uint64_t a1, void *a2)
{
  swift_beginAccess();
  qword_27D0483E0 = a1;
  off_27D0483E8 = a2;
}

uint64_t sub_222DCD0C4@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  v2 = off_27D0483E8;
  *a1 = qword_27D0483E0;
  a1[1] = v2;
}

uint64_t sub_222DCD114(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  swift_beginAccess();
  qword_27D0483E0 = v2;
  off_27D0483E8 = v1;
}

uint64_t sub_222DCD180(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0xD000000000000015 && 0x8000000222DE1470 == a2;
  if (v4 || (sub_222DDBAC0() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD00000000000001BLL && 0x8000000222DE1490 == a2;
    if (v6 || (sub_222DDBAC0() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0xD000000000000013 && 0x8000000222DE14B0 == a2)
    {

      return 2;
    }

    else
    {
      v8 = sub_222DDBAC0();

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

unint64_t sub_222DCD298(char a1)
{
  if (!a1)
  {
    return 0xD000000000000015;
  }

  if (a1 == 1)
  {
    return 0xD00000000000001BLL;
  }

  return 0xD000000000000013;
}

uint64_t sub_222DCD2F8(uint64_t a1, uint64_t a2)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_222DDBAC0();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_222DCD370@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_222DCD180(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_222DCD398(uint64_t a1)
{
  v2 = sub_222DD2500();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_222DCD3D4(uint64_t a1)
{
  v2 = sub_222DD2500();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_222DCD434@<X0>(_BYTE *a1@<X8>)
{
  result = sub_222DBC398();
  *a1 = result & 1;
  return result;
}

uint64_t sub_222DCD460(uint64_t a1)
{
  v2 = sub_222DD2554();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_222DCD49C(uint64_t a1)
{
  v2 = sub_222DD2554();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_222DCD4D8(uint64_t a1)
{
  v2 = sub_222DD26A4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_222DCD514(uint64_t a1)
{
  v2 = sub_222DD26A4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_222DCD550()
{
  sub_222DDBB60();
  MEMORY[0x223DCE8B0](0);
  return sub_222DDBB90();
}

uint64_t sub_222DCD590(uint64_t a1)
{
  v2 = sub_222DD25FC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_222DCD5CC(uint64_t a1)
{
  v2 = sub_222DD25FC();

  return MEMORY[0x2821FE720](a1, v2);
}

void ContactDisambiguationSnippetPluginModel.encode(to:)()
{
  OUTLINED_FUNCTION_38_2();
  v51 = v0;
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0483F0, &qword_222DDE950);
  v5 = OUTLINED_FUNCTION_2(v4);
  v49 = v6;
  v50 = v5;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v9);
  v48 = &v45 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0483F8, &qword_222DDE958);
  v12 = OUTLINED_FUNCTION_2(v11);
  v46 = v13;
  v47 = v12;
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v16);
  v18 = &v45 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D048400, &qword_222DDE960);
  OUTLINED_FUNCTION_2(v19);
  v45 = v20;
  v22 = *(v21 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_23_6();
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D048408, &qword_222DDE968);
  OUTLINED_FUNCTION_2(v52);
  v25 = v24;
  v27 = *(v26 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v28);
  v30 = &v45 - v29;
  v31 = v3[4];
  OUTLINED_FUNCTION_28_5(v3, v3[3]);
  sub_222DD2500();
  sub_222DDBBC0();
  memcpy(v54, v51, 0x99uLL);
  v32 = sub_222DB1228(v54);
  v33 = (v25 + 8);
  if (v32)
  {
    if (v32 == 1)
    {
      v34 = nullsub_1(v54);
      v53[0] = 1;
      sub_222DD25FC();
      v35 = v52;
      OUTLINED_FUNCTION_29_5();
      sub_222DDBA10();
      memcpy(v53, v34, 0x80uLL);
      sub_222DD2650();
      v36 = v47;
      sub_222DDBA80();
      (*(v46 + 8))(v18, v36);
    }

    else
    {
      v42 = nullsub_1(v54);
      v53[0] = 2;
      sub_222DD2554();
      v43 = v48;
      v35 = v52;
      OUTLINED_FUNCTION_29_5();
      sub_222DDBA10();
      memcpy(v53, v42, sizeof(v53));
      sub_222DD25A8();
      v44 = v50;
      sub_222DDBA80();
      (*(v49 + 8))(v43, v44);
    }

    (*v33)(v30, v35);
  }

  else
  {
    v37 = nullsub_1(v54);
    v53[0] = 0;
    sub_222DD26A4();
    v38 = v52;
    sub_222DDBA10();
    v39 = *v37;
    v40 = v37[1];
    v41 = v37[3];
    *&v53[32] = v37[2];
    *&v53[48] = v41;
    *v53 = v39;
    *&v53[16] = v40;
    sub_222DD26F8();
    sub_222DDBA80();
    (*(v45 + 8))(v1, v19);
    (*v33)(v30, v38);
  }

  OUTLINED_FUNCTION_37_2();
}

void ContactDisambiguationSnippetPluginModel.init(from:)()
{
  OUTLINED_FUNCTION_38_2();
  v4 = v3;
  v84 = v5;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D048448, &qword_222DDE970);
  OUTLINED_FUNCTION_2(v83);
  v81 = v6;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v9);
  v85 = &v74 - v10;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D048450, &qword_222DDE978);
  OUTLINED_FUNCTION_2(v82);
  v80 = v11;
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_23_6();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D048458, &qword_222DDE980);
  OUTLINED_FUNCTION_2(v15);
  v79 = v16;
  v18 = *(v17 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_11_7();
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D048460, &qword_222DDE988);
  OUTLINED_FUNCTION_2(v20);
  v86 = v21;
  v23 = *(v22 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v24);
  v26 = &v74 - v25;
  v27 = v4[3];
  v28 = v4[4];
  v87 = v4;
  v29 = OUTLINED_FUNCTION_51_1();
  OUTLINED_FUNCTION_28_5(v29, v30);
  sub_222DD2500();
  sub_222DDBBB0();
  if (v0)
  {
    goto LABEL_11;
  }

  v76 = v15;
  v77 = v1;
  v78 = v2;
  v91 = v26;
  v31 = sub_222DDBA00();
  v35 = sub_222DD274C(v31, 0);
  if (v33 == v34 >> 1)
  {
    goto LABEL_10;
  }

  v75 = 0;
  if (v33 < (v34 >> 1))
  {
    v36 = v20;
    v37 = *(v32 + v33);
    v38 = sub_222DD2798(v33 + 1, v34 >> 1, v35, v32, v33, v34);
    v40 = v39;
    v42 = v41;
    swift_unknownObjectRelease();
    if (v40 == v42 >> 1)
    {
      if (v37)
      {
        if (v37 != 1)
        {
          LOBYTE(v88[0]) = 2;
          sub_222DD2554();
          OUTLINED_FUNCTION_30_5();
          v56 = v75;
          sub_222DDB970();
          v44 = v87;
          v57 = v84;
          if (v56)
          {
LABEL_16:
            (*(v86 + 8))(v26, v37);
            swift_unknownObjectRelease();
            goto LABEL_12;
          }

          v79 = v38;
          sub_222DD2814();
          v62 = v83;
          sub_222DDB9F0();
          v63 = (v86 + 8);
          swift_unknownObjectRelease();
          v72 = OUTLINED_FUNCTION_44_4();
          v73(v72, v62);
          (*v63)(v91, v37);
          memcpy(v88, v89, 0x98uLL);
          sub_222DB0F40(v88);
          OUTLINED_FUNCTION_36_3();
LABEL_21:
          memcpy(v57, v90, 0x99uLL);
          goto LABEL_12;
        }

        LOBYTE(v88[0]) = 1;
        sub_222DD25FC();
        OUTLINED_FUNCTION_30_5();
        v43 = v75;
        sub_222DDB970();
        v44 = v87;
        if (v43)
        {
          goto LABEL_16;
        }

        v79 = v38;
        sub_222DD2868();
        v58 = v82;
        sub_222DDB9F0();
        v59 = (v86 + 8);
        swift_unknownObjectRelease();
        v64 = OUTLINED_FUNCTION_44_4();
        v65(v64, v58);
        v66 = *v59;
        v67 = OUTLINED_FUNCTION_35_2();
        v68(v67);
        memcpy(v88, v89, 0x80uLL);
        sub_222DB0F4C(v88);
        OUTLINED_FUNCTION_36_3();
LABEL_20:
        v57 = v84;
        goto LABEL_21;
      }

      LOBYTE(v88[0]) = 0;
      sub_222DD26A4();
      OUTLINED_FUNCTION_30_5();
      v51 = v75;
      sub_222DDB970();
      v52 = v86;
      if (!v51)
      {
        sub_222DD28BC();
        v60 = v76;
        OUTLINED_FUNCTION_29_5();
        sub_222DDB9F0();
        v61 = (v79 + 8);
        swift_unknownObjectRelease();
        (*v61)(v77, v60);
        v69 = *(v52 + 8);
        v70 = OUTLINED_FUNCTION_35_2();
        v71(v70);
        v88[0] = *v89;
        v88[1] = *&v89[16];
        v88[2] = *&v89[32];
        v88[3] = *&v89[48];
        sub_222DB0FB4(v88);
        OUTLINED_FUNCTION_36_3();
        v44 = v87;
        goto LABEL_20;
      }

      v53 = *(v86 + 8);
      v54 = OUTLINED_FUNCTION_35_2();
      v55(v54);
      swift_unknownObjectRelease();
LABEL_11:
      v44 = v87;
LABEL_12:
      __swift_destroy_boxed_opaque_existential_0(v44);
      OUTLINED_FUNCTION_37_2();
      return;
    }

    v20 = v36;
LABEL_10:
    v45 = sub_222DDB870();
    swift_allocError();
    v47 = v46;
    v48 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D048468, &qword_222DDE990) + 48);
    *v47 = &type metadata for ContactDisambiguationSnippetPluginModel;
    sub_222DDB980();
    sub_222DDB860();
    v49 = *MEMORY[0x277D84160];
    OUTLINED_FUNCTION_28_2(v45);
    (*(v50 + 104))(v47);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v86 + 8))(v26, v20);
    goto LABEL_11;
  }

  __break(1u);
}

uint64_t ContactDisambiguationModel.prompt.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return OUTLINED_FUNCTION_9_5();
}

uint64_t ContactDisambiguationModel.contactSelectionDirectInvocationID.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return OUTLINED_FUNCTION_9_5();
}

uint64_t ContactDisambiguationModel.contactSelectionDirectInvocationKey.getter()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);

  return OUTLINED_FUNCTION_9_5();
}

uint64_t sub_222DCE24C@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0479C0, &qword_222DDE100);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v37 - v9;
  sub_222DDB0A0();
  v11 = sub_222DDB240();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v11);
  sub_222DB783C(v10);
  if (EnumTagSinglePayload == 1)
  {
    if (qword_27D0475B0 != -1)
    {
      OUTLINED_FUNCTION_0_4();
    }

    v13 = sub_222DDB3E0();
    __swift_project_value_buffer(v13, qword_27D04C928);
    v14 = sub_222DDB3C0();
    v15 = sub_222DDB6C0();
    if (OUTLINED_FUNCTION_54_2(v15))
    {
      *OUTLINED_FUNCTION_43_0() = 0;
      OUTLINED_FUNCTION_53_2(&dword_222D8A000, v16, v17, "Contact fullName is nil!");
      OUTLINED_FUNCTION_48_2();
    }
  }

  v19 = *(v2 + qword_27D047A30);
  v18 = *(v2 + qword_27D047A30 + 8);
  if (!v18)
  {
    if (qword_27D0475B0 != -1)
    {
      OUTLINED_FUNCTION_0_4();
    }

    v20 = sub_222DDB3E0();
    __swift_project_value_buffer(v20, qword_27D04C928);
    v21 = sub_222DDB3C0();
    v22 = sub_222DDB6C0();
    if (OUTLINED_FUNCTION_54_2(v22))
    {
      *OUTLINED_FUNCTION_43_0() = 0;
      OUTLINED_FUNCTION_52_4(&dword_222D8A000, v23, v24, "Contact view data is nil!");
      OUTLINED_FUNCTION_48_2();
    }
  }

  sub_222DDB0A0();
  if (__swift_getEnumTagSinglePayload(v8, 1, v11) == 1)
  {
    sub_222DB783C(v8);
    v25 = 0;
    v26 = 0;
  }

  else
  {
    v25 = sub_222DDB220();
    v26 = v27;
    OUTLINED_FUNCTION_28_2(v11);
    (*(v28 + 8))(v8, v11);
  }

  v29 = v2 + qword_27D047A00;
  v30 = *(v2 + qword_27D047A00);
  v31 = *(v29 + 8);
  if (v26)
  {
    v32 = v25;
  }

  else
  {
    v32 = 0;
  }

  v33 = 0xE000000000000000;
  if (v26)
  {
    v34 = v26;
  }

  else
  {
    v34 = 0xE000000000000000;
  }

  if (v18)
  {
    v35 = v19;
  }

  else
  {
    v35 = 0;
  }

  if (v18)
  {
    v33 = v18;
  }

  *a1 = v32;
  a1[1] = v34;
  a1[2] = v35;
  a1[3] = v33;
  a1[4] = v30;
  a1[5] = v31;

  return sub_222D931B0(v30, v31);
}

void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> ContactDisambiguationModel.init(contacts:prompt:contactSelectionDirectInvocationID:contactSelectionDirectInvocationKey:)(SiriInferenceFlow::ContactDisambiguationModel *__return_ptr retstr, Swift::OpaquePointer contacts, Swift::String prompt, Swift::String contactSelectionDirectInvocationID, Swift::String_optional contactSelectionDirectInvocationKey)
{
  object = contactSelectionDirectInvocationKey.value._object;
  countAndFlagsBits = contactSelectionDirectInvocationKey.value._countAndFlagsBits;
  v7 = contactSelectionDirectInvocationID._object;
  rawValue = contacts._rawValue;
  if (contacts._rawValue >> 62)
  {
    v22 = retstr;
    v23 = contactSelectionDirectInvocationID._countAndFlagsBits;
    v24 = prompt._object;
    v25 = prompt._countAndFlagsBits;
    v26 = sub_222DDB920();
    prompt._countAndFlagsBits = v25;
    prompt._object = v24;
    contactSelectionDirectInvocationID._countAndFlagsBits = v23;
    retstr = v22;
    v9 = v26;
  }

  else
  {
    v9 = *((contacts._rawValue & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v10 = MEMORY[0x277D84F90];
  if (!v9)
  {
LABEL_13:
    retstr->contacts._rawValue = rawValue;
    retstr->prompt = prompt;
    retstr->contactSelectionDirectInvocationID._countAndFlagsBits = contactSelectionDirectInvocationID._countAndFlagsBits;
    retstr->contactSelectionDirectInvocationID._object = v7;
    retstr->contactSelectionDirectInvocationKey.value._countAndFlagsBits = countAndFlagsBits;
    retstr->contactSelectionDirectInvocationKey.value._object = object;
    retstr->encodedContacts._rawValue = v10;
    return;
  }

  v30 = prompt;
  v31 = contactSelectionDirectInvocationID._countAndFlagsBits;
  v32 = retstr;
  v37 = MEMORY[0x277D84F90];

  OUTLINED_FUNCTION_55_2();
  if ((v9 & 0x8000000000000000) == 0)
  {
    v28 = countAndFlagsBits;
    v29 = object;
    v11 = 0;
    v10 = v37;
    v33 = rawValue & 0xC000000000000001;
    v34 = rawValue;
    do
    {
      if (v33)
      {
        MEMORY[0x223DCE590](v11, rawValue);
      }

      else
      {
        OUTLINED_FUNCTION_27_0(rawValue + 8 * v11);
      }

      sub_222DCE24C(v35);

      v12 = v35[0];
      v13 = v35[1];
      v14 = v35[2];
      v15 = v35[3];
      v16 = v36;
      v37 = v10;
      v18 = v10[2];
      v17 = v10[3];
      if (v18 >= v17 >> 1)
      {
        v20 = OUTLINED_FUNCTION_19_4(v17);
        v27 = v21;
        sub_222DA54E8(v20, v18 + 1, 1);
        v16 = v27;
        v10 = v37;
      }

      ++v11;
      v10[2] = v18 + 1;
      v19 = &v10[6 * v18];
      v19[4] = v12;
      v19[5] = v13;
      v19[6] = v14;
      v19[7] = v15;
      *(v19 + 4) = v16;
      rawValue = v34;
    }

    while (v9 != v11);

    object = v29;
    countAndFlagsBits = v28;
    retstr = v32;
    prompt = v30;
    contactSelectionDirectInvocationID._countAndFlagsBits = v31;
    goto LABEL_13;
  }

  __break(1u);
}

uint64_t sub_222DCE6CC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x73746361746E6F63 && a2 == 0xE800000000000000;
  if (v4 || (sub_222DDBAC0() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x74706D6F7270 && a2 == 0xE600000000000000;
    if (v6 || (sub_222DDBAC0() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000022 && 0x8000000222DE14D0 == a2;
      if (v7 || (sub_222DDBAC0() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000023 && 0x8000000222DE1500 == a2;
        if (v8 || (sub_222DDBAC0() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 0x436465646F636E65 && a2 == 0xEF73746361746E6FLL)
        {

          return 4;
        }

        else
        {
          v10 = sub_222DDBAC0();

          if (v10)
          {
            return 4;
          }

          else
          {
            return 5;
          }
        }
      }
    }
  }
}

unint64_t sub_222DCE884(char a1)
{
  result = 0x73746361746E6F63;
  switch(a1)
  {
    case 1:
      result = 0x74706D6F7270;
      break;
    case 2:
      result = 0xD000000000000022;
      break;
    case 3:
      result = 0xD000000000000023;
      break;
    case 4:
      result = 0x436465646F636E65;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_222DCE93C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_222DCE6CC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_222DCE964@<X0>(_BYTE *a1@<X8>)
{
  result = sub_222DCE87C();
  *a1 = result;
  return result;
}

uint64_t sub_222DCE98C(uint64_t a1)
{
  v2 = sub_222DD2910();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_222DCE9C8(uint64_t a1)
{
  v2 = sub_222DD2910();

  return MEMORY[0x2821FE720](a1, v2);
}

void ContactDisambiguationModel.encode(to:)()
{
  OUTLINED_FUNCTION_38_2();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D048488, &qword_222DDE998);
  OUTLINED_FUNCTION_2(v4);
  v6 = v5;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_11_7();
  v10 = *v0;
  v19 = v0[2];
  v20 = v0[1];
  v17 = v0[4];
  v18 = v0[3];
  v15 = v0[6];
  v16 = v0[5];
  v14 = v0[7];
  v11 = v3[4];
  OUTLINED_FUNCTION_28_5(v3, v3[3]);
  v12 = sub_222DD2910();

  OUTLINED_FUNCTION_49_4();
  sub_222DDBBC0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D048498, &qword_222DDE9A0);
  OUTLINED_FUNCTION_13_5();
  sub_222DD29B8(v13);
  OUTLINED_FUNCTION_8_7();
  sub_222DDBA80();
  if (v12)
  {
  }

  else
  {

    OUTLINED_FUNCTION_8_7();
    sub_222DDBA50();
    OUTLINED_FUNCTION_8_7();
    sub_222DDBA50();
    OUTLINED_FUNCTION_8_7();
    sub_222DDBA20();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0484B0, &qword_222DDE9A8);
    sub_222DD2A74(&unk_27D0484B8);
    OUTLINED_FUNCTION_8_7();
    sub_222DDBA80();
  }

  (*(v6 + 8))(v1, v4);
  OUTLINED_FUNCTION_34_5();
  OUTLINED_FUNCTION_37_2();
}

void ContactDisambiguationModel.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_38_2();
  v12 = v11;
  v14 = v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0484C8, &qword_222DDE9B0);
  OUTLINED_FUNCTION_2(v15);
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v18);
  v19 = v12[4];
  OUTLINED_FUNCTION_28_5(v12, v12[3]);
  sub_222DD2910();
  sub_222DDBBB0();
  if (v10)
  {
    __swift_destroy_boxed_opaque_existential_0(v12);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D048498, &qword_222DDE9A0);
    LOBYTE(v36) = 0;
    OUTLINED_FUNCTION_12_7();
    sub_222DD29B8(v20);
    OUTLINED_FUNCTION_38_3();
    v21 = v40[0];
    OUTLINED_FUNCTION_16_4(1);
    v22 = sub_222DDB9C0();
    v35 = v23;
    v32 = v22;
    OUTLINED_FUNCTION_16_4(2);
    v31 = sub_222DDB9C0();
    v34 = v24;
    OUTLINED_FUNCTION_16_4(3);
    v30 = sub_222DDB990();
    v33 = v25;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0484B0, &qword_222DDE9A8);
    v41 = 4;
    sub_222DD2A74(&unk_27D0484E0);
    OUTLINED_FUNCTION_38_3();
    v26 = OUTLINED_FUNCTION_6_7();
    v27(v26);
    *&v36 = v21;
    *(&v36 + 1) = v32;
    *&v37 = v35;
    *(&v37 + 1) = v31;
    *&v38 = v34;
    *(&v38 + 1) = v30;
    *&v39 = v33;
    *(&v39 + 1) = a10;
    v28 = v37;
    *v14 = v36;
    v14[1] = v28;
    v29 = v39;
    v14[2] = v38;
    v14[3] = v29;
    sub_222DB133C(&v36, v40);
    __swift_destroy_boxed_opaque_existential_0(v12);
    v40[0] = v21;
    v40[1] = v32;
    v40[2] = v35;
    v40[3] = v31;
    v40[4] = v34;
    v40[5] = v30;
    v40[6] = v33;
    v40[7] = a10;
    sub_222DD2B34(v40);
  }

  OUTLINED_FUNCTION_46_4();
  OUTLINED_FUNCTION_37_2();
}

uint64_t ContactHandleDisambiguationModel.contactSelectionDirectInvocationID.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return OUTLINED_FUNCTION_9_5();
}

uint64_t ContactHandleDisambiguationModel.contactSelectionDirectInvocationKey.getter()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);

  return OUTLINED_FUNCTION_9_5();
}

uint64_t ContactHandleDisambiguationModel.prompt.getter()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);

  return OUTLINED_FUNCTION_9_5();
}

uint64_t ContactHandleDisambiguationModel.encodedContact.getter@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_33_2(a1);

  return sub_222D931B0(v2, v1);
}

uint64_t sub_222DCF124@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0479C0, &qword_222DDE100);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v6 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v44 - v8;
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v44 - v11;
  MEMORY[0x28223BE20](v10);
  v14 = &v44 - v13;
  if (sub_222DDAEE0())
  {
  }

  else
  {
    if (qword_27D0475B0 != -1)
    {
      OUTLINED_FUNCTION_0_4();
    }

    v15 = sub_222DDB3E0();
    __swift_project_value_buffer(v15, qword_27D04C928);
    v16 = sub_222DDB3C0();
    v17 = sub_222DDB6C0();
    if (OUTLINED_FUNCTION_54_2(v17))
    {
      v18 = OUTLINED_FUNCTION_43_0();
      *v18 = 0;
      _os_log_impl(&dword_222D8A000, v16, v17, "Handle is nil! Unable to create a contact handle for the view", v18, 2u);
      OUTLINED_FUNCTION_48_2();
    }
  }

  if (sub_222DDAEE0())
  {
    sub_222DDAE60();

    v19 = sub_222DDB240();
    if (__swift_getEnumTagSinglePayload(v14, 1, v19) != 1)
    {
      sub_222DB783C(v14);
      goto LABEL_17;
    }
  }

  else
  {
    v20 = sub_222DDB240();
    __swift_storeEnumTagSinglePayload(v14, 1, 1, v20);
  }

  sub_222DB783C(v14);
  if (qword_27D0475B0 != -1)
  {
    OUTLINED_FUNCTION_0_4();
  }

  v21 = sub_222DDB3E0();
  __swift_project_value_buffer(v21, qword_27D04C928);
  v22 = sub_222DDB3C0();
  v23 = sub_222DDB6C0();
  if (OUTLINED_FUNCTION_54_2(v23))
  {
    *OUTLINED_FUNCTION_43_0() = 0;
    OUTLINED_FUNCTION_52_4(&dword_222D8A000, v24, v25, "Nil handle label!");
    OUTLINED_FUNCTION_48_2();
  }

LABEL_17:
  if (sub_222DDAEE0())
  {
    sub_222DDAE70();

    v26 = sub_222DDB240();
    if (__swift_getEnumTagSinglePayload(v12, 1, v26) != 1)
    {
      sub_222DB783C(v12);
      goto LABEL_26;
    }
  }

  else
  {
    v27 = sub_222DDB240();
    __swift_storeEnumTagSinglePayload(v12, 1, 1, v27);
  }

  sub_222DB783C(v12);
  if (qword_27D0475B0 != -1)
  {
    OUTLINED_FUNCTION_0_4();
  }

  v28 = sub_222DDB3E0();
  __swift_project_value_buffer(v28, qword_27D04C928);
  v29 = sub_222DDB3C0();
  v30 = sub_222DDB6C0();
  if (OUTLINED_FUNCTION_54_2(v30))
  {
    *OUTLINED_FUNCTION_43_0() = 0;
    OUTLINED_FUNCTION_53_2(&dword_222D8A000, v31, v32, "No value set on handle");
    OUTLINED_FUNCTION_48_2();
  }

LABEL_26:
  if (!sub_222DDAEE0())
  {
LABEL_29:
    v34 = 0;
    v35 = 0;
    goto LABEL_31;
  }

  sub_222DDAE60();

  v33 = sub_222DDB240();
  if (__swift_getEnumTagSinglePayload(v9, 1, v33) == 1)
  {
    sub_222DB783C(v9);
    goto LABEL_29;
  }

  v34 = sub_222DDB220();
  v35 = v36;
  OUTLINED_FUNCTION_28_2(v33);
  (*(v37 + 8))(v9, v33);
LABEL_31:
  v38 = sub_222DDAEE0();
  if (v38)
  {
    sub_222DDAE70();

    v39 = sub_222DDB240();
    if (__swift_getEnumTagSinglePayload(v6, 1, v39) != 1)
    {
      v38 = sub_222DDB220();
      v40 = v41;
      OUTLINED_FUNCTION_28_2(v39);
      (*(v42 + 8))(v6, v39);
      return sub_222DD156C(v34, v35, v38, v40, a1);
    }

    sub_222DB783C(v6);
    v38 = 0;
  }

  v40 = 0;
  return sub_222DD156C(v34, v35, v38, v40, a1);
}

uint64_t ContactHandleDisambiguationModel.init(contact:contactHandles:isDeviceLocked:contactSelectionDirectInvocationID:contactSelectionDirectInvocationKey:prompt:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{

  sub_222DCE24C(&v40);
  v36 = a1;

  v17 = v40;
  v34 = v41;
  v35 = *(&v40 + 1);
  v32 = v42;
  v33 = *(&v41 + 1);
  v31 = *(&v42 + 1);
  v18 = sub_222DA8780(a2);
  v39 = a5;
  if (!v18)
  {

    v22 = MEMORY[0x277D84F90];
LABEL_13:
    *a9 = v36;
    *(a9 + 8) = a2;
    *(a9 + 16) = a3 & 1;
    *(a9 + 24) = a4;
    *(a9 + 32) = v39;
    *(a9 + 40) = a6;
    *(a9 + 48) = a7;
    *(a9 + 56) = a8;
    *(a9 + 64) = a10;
    *(a9 + 72) = v17;
    *(a9 + 80) = v35;
    *(a9 + 88) = v34;
    *(a9 + 96) = v33;
    *(a9 + 104) = v32;
    *(a9 + 112) = v31;
    *(a9 + 120) = v22;
    return result;
  }

  v19 = v18;
  result = OUTLINED_FUNCTION_39_3(v18, MEMORY[0x277D84F90]);
  if ((v19 & 0x8000000000000000) == 0)
  {
    v30 = a8;
    v21 = 0;
    v22 = v44;
    if ((a2 & 0xC000000000000001) == 0)
    {
      goto LABEL_5;
    }

LABEL_4:
    MEMORY[0x223DCE590](v21, a2);
    while (1)
    {
      sub_222DCF124(&v40);

      v44 = v22;
      v24 = *(v22 + 16);
      v23 = *(v22 + 24);
      if (v24 >= v23 >> 1)
      {
        v29 = OUTLINED_FUNCTION_19_4(v23);
        sub_222DA5508(v29, v24 + 1, 1);
        v22 = v44;
      }

      *(v22 + 16) = v24 + 1;
      v25 = (v22 + (v24 << 6));
      v26 = v40;
      v27 = v41;
      v28 = v43;
      v25[4] = v42;
      v25[5] = v28;
      v25[2] = v26;
      v25[3] = v27;
      if (v19 - 1 == v21)
      {
        break;
      }

      ++v21;
      if ((a2 & 0xC000000000000001) != 0)
      {
        goto LABEL_4;
      }

LABEL_5:
      OUTLINED_FUNCTION_27_0(a2 + 8 * v21);
    }

    a8 = v30;
    goto LABEL_13;
  }

  __break(1u);
  return result;
}

uint64_t sub_222DCF7A8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746361746E6F63 && a2 == 0xE700000000000000;
  if (v4 || (sub_222DDBAC0() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x48746361746E6F63 && a2 == 0xEE0073656C646E61;
    if (v6 || (sub_222DDBAC0() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6563697665447369 && a2 == 0xEE0064656B636F4CLL;
      if (v7 || (sub_222DDBAC0() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000022 && 0x8000000222DE14D0 == a2;
        if (v8 || (sub_222DDBAC0() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0xD000000000000023 && 0x8000000222DE1500 == a2;
          if (v9 || (sub_222DDBAC0() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x74706D6F7270 && a2 == 0xE600000000000000;
            if (v10 || (sub_222DDBAC0() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x436465646F636E65 && a2 == 0xEE00746361746E6FLL;
              if (v11 || (sub_222DDBAC0() & 1) != 0)
              {

                return 6;
              }

              else if (a1 == 0x73656C646E6168 && a2 == 0xE700000000000000)
              {

                return 7;
              }

              else
              {
                v13 = sub_222DDBAC0();

                if (v13)
                {
                  return 7;
                }

                else
                {
                  return 8;
                }
              }
            }
          }
        }
      }
    }
  }
}

unint64_t sub_222DCFA48(char a1)
{
  result = 0x746361746E6F63;
  switch(a1)
  {
    case 1:
      result = 0x48746361746E6F63;
      break;
    case 2:
      result = 0x6563697665447369;
      break;
    case 3:
      result = 0xD000000000000022;
      break;
    case 4:
      result = 0xD000000000000023;
      break;
    case 5:
      result = 0x74706D6F7270;
      break;
    case 6:
      result = 0x436465646F636E65;
      break;
    case 7:
      result = 0x73656C646E6168;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_222DCFB5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_222DCF7A8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_222DCFB84@<X0>(_BYTE *a1@<X8>)
{
  result = sub_222DCFA40();
  *a1 = result;
  return result;
}

uint64_t sub_222DCFBAC(uint64_t a1)
{
  v2 = sub_222DD2B64();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_222DCFBE8(uint64_t a1)
{
  v2 = sub_222DD2B64();

  return MEMORY[0x2821FE720](a1, v2);
}

void ContactHandleDisambiguationModel.encode(to:)()
{
  OUTLINED_FUNCTION_38_2();
  v41 = v1;
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0484F0, &qword_222DDE9B8);
  OUTLINED_FUNCTION_2(v4);
  v6 = v5;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v9);
  v11 = &v27 - v10;
  v13 = *v0;
  v12 = v0[1];
  v48 = *(v0 + 16);
  v14 = v0[4];
  v39 = v0[3];
  v40 = v12;
  v15 = v0[5];
  v37 = v0[6];
  v38 = v14;
  v16 = v0[7];
  v35 = v0[8];
  v36 = v15;
  v17 = v0[10];
  v18 = v0[11];
  v28 = v0[9];
  v29 = v18;
  v20 = v0[12];
  v19 = v0[13];
  v30 = v17;
  v31 = v20;
  v32 = v19;
  v21 = v0[15];
  v33 = v0[14];
  v34 = v16;
  v22 = v3[4];
  OUTLINED_FUNCTION_28_5(v3, v3[3]);
  sub_222DD2B64();

  sub_222DDBBC0();
  v42 = v13;
  type metadata accessor for ContactDialogPerson(0);
  OUTLINED_FUNCTION_22_5(&unk_27D0484A8);
  OUTLINED_FUNCTION_21_4();
  v23 = v41;
  sub_222DDBA80();

  if (!v23)
  {
    v42 = v40;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D048498, &qword_222DDE9A0);
    OUTLINED_FUNCTION_13_5();
    sub_222DD29B8(v24);
    OUTLINED_FUNCTION_21_4();
    OUTLINED_FUNCTION_47_4();
    OUTLINED_FUNCTION_27_6();
    sub_222DDBA80();
    LOBYTE(v42) = 2;
    OUTLINED_FUNCTION_27_6();
    sub_222DDBA60();
    OUTLINED_FUNCTION_20_5(3);
    OUTLINED_FUNCTION_27_6();
    sub_222DDBA50();
    OUTLINED_FUNCTION_20_5(4);
    OUTLINED_FUNCTION_27_6();
    sub_222DDBA20();
    OUTLINED_FUNCTION_20_5(5);
    OUTLINED_FUNCTION_27_6();
    sub_222DDBA50();
    v42 = v28;
    v43 = v30;
    v44 = v29;
    v45 = v31;
    v25 = v32;
    v26 = v33;
    v46 = v32;
    v47 = v33;

    sub_222D931B0(v25, v26);
    sub_222DD2964();
    OUTLINED_FUNCTION_27_6();
    sub_222DDBA80();
    OUTLINED_FUNCTION_54_3();

    sub_222D93218(v11, v26);
    v42 = v21;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D048500, &qword_222DDE9C0);
    sub_222DD2BB8(&unk_27D048508);
    OUTLINED_FUNCTION_21_4();
    OUTLINED_FUNCTION_47_4();
    sub_222DDBA80();
  }

  (*(v6 + 8))(v11, v4);
  OUTLINED_FUNCTION_34_5();
  OUTLINED_FUNCTION_37_2();
}

void ContactHandleDisambiguationModel.init(from:)()
{
  OUTLINED_FUNCTION_38_2();
  v2 = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D048518, &qword_222DDE9C8);
  OUTLINED_FUNCTION_2(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v8);
  v9 = v2[3];
  v10 = v2[4];
  v11 = OUTLINED_FUNCTION_51_1();
  OUTLINED_FUNCTION_28_5(v11, v12);
  sub_222DD2B64();
  sub_222DDBBB0();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_0(v2);
  }

  else
  {
    type metadata accessor for ContactDialogPerson(0);
    OUTLINED_FUNCTION_17_4(&unk_27D0484D8);
    OUTLINED_FUNCTION_50_3();
    OUTLINED_FUNCTION_24_6();
    sub_222DDB9F0();
    v13 = v37;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D048498, &qword_222DDE9A0);
    OUTLINED_FUNCTION_12_7();
    sub_222DD29B8(v14);
    OUTLINED_FUNCTION_50_3();
    OUTLINED_FUNCTION_47_4();
    OUTLINED_FUNCTION_24_6();
    sub_222DDB9F0();
    v28 = v37;
    OUTLINED_FUNCTION_3_7(2);
    v15 = sub_222DDB9D0();
    OUTLINED_FUNCTION_3_7(3);
    v16 = sub_222DDB9C0();
    v35 = v17;
    OUTLINED_FUNCTION_3_7(4);
    v18 = sub_222DDB990();
    v34 = v19;
    v26 = v18;
    OUTLINED_FUNCTION_3_7(5);
    v25 = sub_222DDB9C0();
    v33 = v20;
    LOBYTE(v36[0]) = 6;
    sub_222DD2AE0();
    OUTLINED_FUNCTION_24_6();
    sub_222DDB9F0();
    v23 = v39;
    v24 = v37;
    v30 = v38;
    v31 = v40;
    v29 = v41;
    v32 = v42;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D048500, &qword_222DDE9C0);
    v53 = 7;
    sub_222DD2BB8(&unk_27D048520);
    OUTLINED_FUNCTION_47_4();
    OUTLINED_FUNCTION_24_6();
    sub_222DDB9F0();
    v21 = OUTLINED_FUNCTION_5_8();
    v22(v21);
    v27 = v54;
    v36[0] = v13;
    v36[1] = v28;
    LOBYTE(v36[2]) = v15 & 1;
    *(&v36[2] + 1) = v55[0];
    HIDWORD(v36[2]) = *(v55 + 3);
    v36[3] = v16;
    v36[4] = v35;
    v36[5] = v26;
    v36[6] = v34;
    v36[7] = v25;
    v36[8] = v33;
    v36[9] = v24;
    v36[10] = v30;
    v36[11] = v23;
    v36[12] = v31;
    v36[13] = v29;
    v36[14] = v32;
    v36[15] = v54;
    memcpy(v4, v36, 0x80uLL);
    sub_222DB12E0(v36, &v37);
    __swift_destroy_boxed_opaque_existential_0(v2);
    v37 = v13;
    v38 = v28;
    LOBYTE(v39) = v15 & 1;
    *(&v39 + 1) = v55[0];
    HIDWORD(v39) = *(v55 + 3);
    v40 = v16;
    v41 = v35;
    v42 = v26;
    v43 = v34;
    v44 = v25;
    v45 = v33;
    v46 = v24;
    v47 = v30;
    v48 = v23;
    v49 = v31;
    v50 = v29;
    v51 = v32;
    v52 = v27;
    sub_222DD2CCC(&v37);
  }

  OUTLINED_FUNCTION_46_4();
  OUTLINED_FUNCTION_37_2();
}

uint64_t ContactConfirmationModel.primaryButtonInvocationID.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return OUTLINED_FUNCTION_9_5();
}

uint64_t ContactConfirmationModel.secondaryButtonInvocationID.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return OUTLINED_FUNCTION_9_5();
}

uint64_t ContactConfirmationModel.changeButtonLabel.getter()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);

  return OUTLINED_FUNCTION_9_5();
}

uint64_t ContactConfirmationModel.primaryActionButtonLabel.getter()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);

  return OUTLINED_FUNCTION_9_5();
}

uint64_t ContactConfirmationModel.encodedContact.getter@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_33_2(a1);

  return sub_222D931B0(v2, v1);
}

uint64_t ContactConfirmationModel.contactLabel.getter()
{
  v1 = *(v0 + 120);
  v2 = *(v0 + 128);

  return OUTLINED_FUNCTION_9_5();
}

Swift::String __swiftcall ContactConfirmationModel.displayName()()
{
  v1 = sub_222DD9F60();
  v2 = OUTLINED_FUNCTION_2(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v2);
  v8 = v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = v0[9];
  v9 = v0[10];
  v11 = v0[17];
  v12 = v0[18];
  v22[0] = v10;
  v22[1] = v9;

  sub_222DD9F30();
  sub_222D8F710();
  v13 = sub_222DDB760();
  v15 = v14;
  (*(v4 + 8))(v8, v1);

  v16 = HIBYTE(v15) & 0xF;
  if ((v15 & 0x2000000000000000) == 0)
  {
    v16 = v13 & 0xFFFFFFFFFFFFLL;
  }

  if (v16)
  {
    v17 = v9;
  }

  else
  {
    v17 = v12;
  }

  if (v16)
  {
    v18 = v10;
  }

  else
  {
    v18 = v11;
  }

  v19 = v18;
  v20 = v17;
  result._object = v20;
  result._countAndFlagsBits = v19;
  return result;
}

uint64_t sub_222DD079C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746361746E6F63 && a2 == 0xE700000000000000;
  if (v4 || (sub_222DDBAC0() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000019 && 0x8000000222DE1530 == a2;
    if (v6 || (sub_222DDBAC0() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD00000000000001BLL && 0x8000000222DE1550 == a2;
      if (v7 || (sub_222DDBAC0() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000011 && 0x8000000222DE1570 == a2;
        if (v8 || (sub_222DDBAC0() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0xD000000000000018 && 0x8000000222DE1590 == a2;
          if (v9 || (sub_222DDBAC0() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x436465646F636E65 && a2 == 0xEE00746361746E6FLL;
            if (v10 || (sub_222DDBAC0() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x4C746361746E6F63 && a2 == 0xEC0000006C656261;
              if (v11 || (sub_222DDBAC0() & 1) != 0)
              {

                return 6;
              }

              else if (a1 == 0x487972616D697270 && a2 == 0xED0000656C646E61)
              {

                return 7;
              }

              else
              {
                v13 = sub_222DDBAC0();

                if (v13)
                {
                  return 7;
                }

                else
                {
                  return 8;
                }
              }
            }
          }
        }
      }
    }
  }
}

unint64_t sub_222DD0A30(char a1)
{
  result = 0x746361746E6F63;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000019;
      break;
    case 2:
      result = 0xD00000000000001BLL;
      break;
    case 3:
      result = 0xD000000000000011;
      break;
    case 4:
      result = 0xD000000000000018;
      break;
    case 5:
      result = 0x436465646F636E65;
      break;
    case 6:
      result = 0x4C746361746E6F63;
      break;
    case 7:
      result = 0x487972616D697270;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_222DD0B5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_222DD079C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_222DD0B84(uint64_t a1)
{
  v2 = sub_222DD2CFC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_222DD0BC0(uint64_t a1)
{
  v2 = sub_222DD2CFC();

  return MEMORY[0x2821FE720](a1, v2);
}

void ContactConfirmationModel.encode(to:)()
{
  OUTLINED_FUNCTION_38_2();
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D048530, &qword_222DDE9D0);
  OUTLINED_FUNCTION_2(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_11_7();
  v11 = *v0;
  v29 = v0[2];
  v30 = v0[1];
  v27 = v0[4];
  v28 = v0[3];
  v24 = v0[5];
  v25 = v0[6];
  v22 = v0[7];
  v23 = v0[8];
  v16 = v0[9];
  v17 = v0[10];
  v18 = v0[11];
  v19 = v0[12];
  v20 = v0[13];
  v21 = v0[14];
  v14 = v0[15];
  v15 = v0[16];
  v26 = v0[17];
  v12 = v0[18];
  v13 = v4[4];
  OUTLINED_FUNCTION_28_5(v4, v4[3]);
  sub_222DD2CFC();

  OUTLINED_FUNCTION_49_4();
  sub_222DDBBC0();
  type metadata accessor for ContactDialogPerson(0);
  OUTLINED_FUNCTION_22_5(&unk_27D0484A8);
  OUTLINED_FUNCTION_21_4();
  sub_222DDBA80();
  if (v1)
  {
  }

  else
  {

    OUTLINED_FUNCTION_20_5(1);
    OUTLINED_FUNCTION_8_7();
    sub_222DDBA50();
    OUTLINED_FUNCTION_20_5(2);
    OUTLINED_FUNCTION_8_7();
    sub_222DDBA50();
    OUTLINED_FUNCTION_20_5(3);
    OUTLINED_FUNCTION_8_7();
    sub_222DDBA50();
    OUTLINED_FUNCTION_20_5(4);
    OUTLINED_FUNCTION_8_7();
    sub_222DDBA50();

    sub_222D931B0(v20, v21);
    sub_222DD2964();
    OUTLINED_FUNCTION_8_7();
    sub_222DDBA80();
    OUTLINED_FUNCTION_54_3();

    sub_222D93218(v28, v5);
    OUTLINED_FUNCTION_20_5(6);
    OUTLINED_FUNCTION_8_7();
    sub_222DDBA50();
    if (!v20)
    {
      OUTLINED_FUNCTION_20_5(7);
      OUTLINED_FUNCTION_8_7();
      sub_222DDBA50();
    }
  }

  (*(v7 + 8))(v2, v5);
  OUTLINED_FUNCTION_34_5();
  OUTLINED_FUNCTION_37_2();
}

void ContactConfirmationModel.init(from:)()
{
  OUTLINED_FUNCTION_38_2();
  v3 = v2;
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D048540, &qword_222DDE9D8);
  OUTLINED_FUNCTION_2(v6);
  v8 = v7;
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_23_6();
  v12 = v3[4];
  v44 = v3;
  OUTLINED_FUNCTION_28_5(v3, v3[3]);
  sub_222DD2CFC();
  OUTLINED_FUNCTION_37_4();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_0(v3);
  }

  else
  {
    v13 = v8;
    v14 = v5;
    type metadata accessor for ContactDialogPerson(0);
    OUTLINED_FUNCTION_17_4(&unk_27D0484D8);
    v15 = v6;
    OUTLINED_FUNCTION_15_3();
    sub_222DDB9F0();
    v34 = v46;
    v16 = v13;
    v17 = OUTLINED_FUNCTION_4_12(1);
    v43 = v18;
    v19 = OUTLINED_FUNCTION_4_12(2);
    v42 = v20;
    v33 = OUTLINED_FUNCTION_4_12(3);
    v41 = v21;
    v22 = OUTLINED_FUNCTION_4_12(4);
    v40 = v23;
    v32 = v22;
    LOBYTE(v45[0]) = 5;
    sub_222DD2AE0();
    OUTLINED_FUNCTION_15_3();
    sub_222DDB9F0();
    v30 = v48;
    v31 = v46;
    v36 = v49;
    v38 = v50;
    v39 = v47;
    v37 = v51;
    v29 = OUTLINED_FUNCTION_4_12(6);
    v35 = v24;
    OUTLINED_FUNCTION_15_3();
    v25 = sub_222DDB9C0();
    v26 = v1;
    v28 = v27;
    (*(v16 + 8))(v26, v15);
    v45[0] = v34;
    v45[1] = v17;
    v45[2] = v43;
    v45[3] = v19;
    v45[4] = v42;
    v45[5] = v33;
    v45[6] = v41;
    v45[7] = v32;
    v45[8] = v40;
    v45[9] = v31;
    v45[10] = v39;
    v45[11] = v30;
    v45[12] = v36;
    v45[13] = v38;
    v45[14] = v37;
    v45[15] = v29;
    v45[16] = v35;
    v45[17] = v25;
    v45[18] = v28;
    memcpy(v14, v45, 0x98uLL);
    sub_222DB1230(v45, &v46);
    __swift_destroy_boxed_opaque_existential_0(v44);
    v46 = v34;
    v47 = v17;
    v48 = v43;
    v49 = v19;
    v50 = v42;
    v51 = v33;
    v52 = v41;
    v53 = v32;
    v54 = v40;
    v55 = v31;
    v56 = v39;
    v57 = v30;
    v58 = v36;
    v59 = v38;
    v60 = v37;
    v61 = v29;
    v62 = v35;
    v63 = v25;
    v64 = v28;
    sub_222DD2D50(&v46);
  }

  OUTLINED_FUNCTION_46_4();
  OUTLINED_FUNCTION_37_2();
}

uint64_t ContactHandle.id.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return OUTLINED_FUNCTION_9_5();
}

uint64_t ContactHandle.id.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t ContactHandle.label.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return OUTLINED_FUNCTION_9_5();
}

uint64_t ContactHandle.method.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return OUTLINED_FUNCTION_9_5();
}

uint64_t sub_222DD156C@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X8>)
{
  if (a2)
  {
    v5 = a1;
  }

  else
  {
    v5 = 0;
  }

  v6 = 0xE000000000000000;
  if (a2)
  {
    v7 = a2;
  }

  else
  {
    v7 = 0xE000000000000000;
  }

  if (a4)
  {
    v8 = a3;
  }

  else
  {
    v8 = 0;
  }

  if (a4)
  {
    v6 = a4;
  }

  *a5 = v8;
  *(a5 + 8) = v6;
  *(a5 + 16) = v5;
  *(a5 + 24) = v7;
  *(a5 + 32) = v8;
  *(a5 + 40) = v6;
  *(a5 + 48) = 0;
  *(a5 + 56) = -1;
}

uint64_t sub_222DD15A8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_222DDBAC0() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6C6562616CLL && a2 == 0xE500000000000000;
    if (v6 || (sub_222DDBAC0() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x646F6874656DLL && a2 == 0xE600000000000000;
      if (v7 || (sub_222DDBAC0() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x6974656361467369 && a2 == 0xEE00656C6261656DLL;
        if (v8 || (sub_222DDBAC0() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x617373654D697369 && a2 == 0xEE00656C62616567;
          if (v9 || (sub_222DDBAC0() & 1) != 0)
          {

            return 4;
          }

          else if (a1 == 0x7865646E69 && a2 == 0xE500000000000000)
          {

            return 5;
          }

          else
          {
            v11 = sub_222DDBAC0();

            if (v11)
            {
              return 5;
            }

            else
            {
              return 6;
            }
          }
        }
      }
    }
  }
}

uint64_t sub_222DD1794(char a1)
{
  result = 25705;
  switch(a1)
  {
    case 1:
      result = 0x6C6562616CLL;
      break;
    case 2:
      result = 0x646F6874656DLL;
      break;
    case 3:
      result = 0x6974656361467369;
      break;
    case 4:
      result = 0x617373654D697369;
      break;
    case 5:
      result = 0x7865646E69;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_222DD1854@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_222DD15A8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_222DD187C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_222DD178C();
  *a1 = result;
  return result;
}

uint64_t sub_222DD18A4(uint64_t a1)
{
  v2 = sub_222DD2D80();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_222DD18E0(uint64_t a1)
{
  v2 = sub_222DD2D80();

  return MEMORY[0x2821FE720](a1, v2);
}

void ContactHandle.encode(to:)()
{
  OUTLINED_FUNCTION_38_2();
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D048548, &qword_222DDE9E0);
  OUTLINED_FUNCTION_2(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_11_7();
  v11 = *v0;
  v12 = v0[1];
  v19 = v0[3];
  v20 = v0[2];
  v17 = v0[5];
  v18 = v0[4];
  v15 = *(v0 + 49);
  v16 = *(v0 + 48);
  v14 = v0[7];
  v13 = v4[4];
  OUTLINED_FUNCTION_28_5(v4, v4[3]);
  sub_222DD2D80();
  OUTLINED_FUNCTION_49_4();
  sub_222DDBBC0();
  sub_222DDBA50();
  if (!v1)
  {
    OUTLINED_FUNCTION_8_7();
    sub_222DDBA50();
    OUTLINED_FUNCTION_8_7();
    sub_222DDBA50();
    OUTLINED_FUNCTION_8_7();
    sub_222DDBA60();
    OUTLINED_FUNCTION_8_7();
    sub_222DDBA60();
    OUTLINED_FUNCTION_8_7();
    sub_222DDBA70();
  }

  (*(v7 + 8))(v2, v5);
  OUTLINED_FUNCTION_34_5();
  OUTLINED_FUNCTION_37_2();
}

void ContactHandle.init(from:)()
{
  OUTLINED_FUNCTION_38_2();
  v2 = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D048558, &qword_222DDE9E8);
  OUTLINED_FUNCTION_2(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v10);
  v12 = &v29 - v11;
  v13 = v2[4];
  OUTLINED_FUNCTION_28_5(v2, v2[3]);
  sub_222DD2D80();
  sub_222DDBBB0();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_0(v2);
  }

  else
  {
    LOBYTE(v40[0]) = 0;
    v14 = sub_222DDB9C0();
    v16 = v15;
    OUTLINED_FUNCTION_2_9(1);
    v17 = sub_222DDB9C0();
    v32 = v14;
    v33 = v17;
    v35 = v18;
    OUTLINED_FUNCTION_2_9(2);
    v19 = sub_222DDB9C0();
    v34 = v20;
    v31 = v19;
    OUTLINED_FUNCTION_2_9(3);
    v44 = sub_222DDB9D0();
    OUTLINED_FUNCTION_2_9(4);
    v30 = sub_222DDB9D0();
    v21 = sub_222DDB9E0();
    v44 &= 1u;
    v22 = v30 & 1;
    v23 = v21;
    (*(v7 + 8))(v12, v5);
    v24 = v32;
    *&v36 = v32;
    *(&v36 + 1) = v16;
    v26 = v34;
    v25 = v35;
    *&v37 = v33;
    *(&v37 + 1) = v35;
    *&v38 = v31;
    *(&v38 + 1) = v34;
    LOBYTE(v39) = v44;
    BYTE1(v39) = v22;
    *(&v39 + 1) = v23;
    v27 = v37;
    *v4 = v36;
    v4[1] = v27;
    v28 = v39;
    v4[2] = v38;
    v4[3] = v28;
    sub_222DD2DD4(&v36, v40);
    __swift_destroy_boxed_opaque_existential_0(v2);
    v40[0] = v24;
    v40[1] = v16;
    v40[2] = v33;
    v40[3] = v25;
    v40[4] = v31;
    v40[5] = v26;
    v41 = v44;
    v42 = v22;
    v43 = v23;
    sub_222DD2E0C(v40);
  }

  OUTLINED_FUNCTION_37_2();
}

uint64_t sub_222DD1E40@<X0>(uint64_t *a1@<X8>)
{
  result = ContactHandle.id.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t EncodedContact.fullName.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return OUTLINED_FUNCTION_9_5();
}

uint64_t EncodedContact.base64EncodedViewData.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return OUTLINED_FUNCTION_9_5();
}

uint64_t EncodedContact.imageData.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  v3 = OUTLINED_FUNCTION_9_5();
  sub_222D931B0(v3, v4);
  return OUTLINED_FUNCTION_9_5();
}

uint64_t sub_222DD1EEC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656D614E6C6C7566 && a2 == 0xE800000000000000;
  if (v4 || (sub_222DDBAC0() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000015 && 0x8000000222DE15B0 == a2;
    if (v6 || (sub_222DDBAC0() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x7461446567616D69 && a2 == 0xE900000000000061)
    {

      return 2;
    }

    else
    {
      v8 = sub_222DDBAC0();

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

uint64_t sub_222DD200C(char a1)
{
  if (!a1)
  {
    return 0x656D614E6C6C7566;
  }

  if (a1 == 1)
  {
    return 0xD000000000000015;
  }

  return 0x7461446567616D69;
}

uint64_t sub_222DD2074@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_222DD1EEC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_222DD209C(uint64_t a1)
{
  v2 = sub_222DD2E3C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_222DD20D8(uint64_t a1)
{
  v2 = sub_222DD2E3C();

  return MEMORY[0x2821FE720](a1, v2);
}

void EncodedContact.encode(to:)()
{
  OUTLINED_FUNCTION_38_2();
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D048560, &qword_222DDE9F0);
  OUTLINED_FUNCTION_2(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_11_7();
  v11 = *v0;
  v12 = v0[1];
  v16 = v0[3];
  v17 = v0[2];
  v14 = v0[5];
  v15 = v0[4];
  v13 = v4[4];
  OUTLINED_FUNCTION_28_5(v4, v4[3]);
  sub_222DD2E3C();
  OUTLINED_FUNCTION_49_4();
  sub_222DDBBC0();
  sub_222DDBA50();
  if (!v1)
  {
    OUTLINED_FUNCTION_8_7();
    sub_222DDBA50();
    sub_222D931B0(v15, v14);
    sub_222D931C4();
    OUTLINED_FUNCTION_8_7();
    sub_222DDBA40();
    sub_222D93218(v15, v14);
  }

  (*(v7 + 8))(v2, v5);
  OUTLINED_FUNCTION_34_5();
  OUTLINED_FUNCTION_37_2();
}

void EncodedContact.init(from:)()
{
  OUTLINED_FUNCTION_38_2();
  v2 = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D048570, &qword_222DDE9F8);
  OUTLINED_FUNCTION_2(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_23_6();
  v9 = v2[4];
  OUTLINED_FUNCTION_28_5(v2, v2[3]);
  sub_222DD2E3C();
  OUTLINED_FUNCTION_37_4();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_0(v2);
  }

  else
  {
    OUTLINED_FUNCTION_15_3();
    v10 = sub_222DDB9C0();
    v21 = v11;
    LOBYTE(v22) = 1;
    OUTLINED_FUNCTION_15_3();
    v19 = sub_222DDB9C0();
    v20 = v12;
    sub_222D93620();
    sub_222DDB9B0();
    v13 = OUTLINED_FUNCTION_2_0();
    v14(v13);
    *v4 = v10;
    v4[1] = v21;
    v4[2] = v19;
    v4[3] = v20;
    v4[4] = v22;
    v4[5] = v23;

    v15 = OUTLINED_FUNCTION_51_1();
    sub_222D931B0(v15, v16);
    __swift_destroy_boxed_opaque_existential_0(v2);

    v17 = OUTLINED_FUNCTION_51_1();
    sub_222D93218(v17, v18);
  }

  OUTLINED_FUNCTION_46_4();
  OUTLINED_FUNCTION_37_2();
}

unint64_t sub_222DD2500()
{
  result = qword_27D048410;
  if (!qword_27D048410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D048410);
  }

  return result;
}

unint64_t sub_222DD2554()
{
  result = qword_27D048418;
  if (!qword_27D048418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D048418);
  }

  return result;
}

unint64_t sub_222DD25A8()
{
  result = qword_27D048420;
  if (!qword_27D048420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D048420);
  }

  return result;
}

unint64_t sub_222DD25FC()
{
  result = qword_27D048428;
  if (!qword_27D048428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D048428);
  }

  return result;
}

unint64_t sub_222DD2650()
{
  result = qword_27D048430;
  if (!qword_27D048430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D048430);
  }

  return result;
}

unint64_t sub_222DD26A4()
{
  result = qword_27D048438;
  if (!qword_27D048438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D048438);
  }

  return result;
}

unint64_t sub_222DD26F8()
{
  result = qword_27D048440;
  if (!qword_27D048440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D048440);
  }

  return result;
}

uint64_t sub_222DD274C(uint64_t result, uint64_t a2)
{
  if (__OFSUB__(0, a2))
  {
    __break(1u);
    goto LABEL_7;
  }

  v2 = *(result + 16);
  v3 = __OFADD__(a2, v2);
  v4 = a2 + v2;
  if (v3)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (v4 < a2)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v4 < 0)
  {
LABEL_9:
    __break(1u);
  }

  return result;
}

uint64_t sub_222DD2798(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  if (result < a5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if ((a6 >> 1) < result || (a6 >> 1) < a2)
  {
    goto LABEL_10;
  }

  if (a2 < a5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
    return swift_unknownObjectRetain();
  }

LABEL_12:
  __break(1u);
  return result;
}

unint64_t sub_222DD2814()
{
  result = qword_27D048470;
  if (!qword_27D048470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D048470);
  }

  return result;
}

unint64_t sub_222DD2868()
{
  result = qword_27D048478;
  if (!qword_27D048478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D048478);
  }

  return result;
}

unint64_t sub_222DD28BC()
{
  result = qword_27D048480;
  if (!qword_27D048480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D048480);
  }

  return result;
}

unint64_t sub_222DD2910()
{
  result = qword_27D048490;
  if (!qword_27D048490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D048490);
  }

  return result;
}

unint64_t sub_222DD2964()
{
  result = qword_27D0484C0;
  if (!qword_27D0484C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0484C0);
  }

  return result;
}

unint64_t sub_222DD29B8(uint64_t a1)
{
  result = OUTLINED_FUNCTION_45_3(a1);
  if (!result)
  {
    v4 = v3;
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D048498, &qword_222DDE9A0);
    sub_222DD2A34(v4);
    OUTLINED_FUNCTION_31_3();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_222DD2A34(uint64_t a1)
{
  result = OUTLINED_FUNCTION_45_3(a1);
  if (!result)
  {
    type metadata accessor for ContactDialogPerson(255);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_222DD2A74(uint64_t a1)
{
  result = OUTLINED_FUNCTION_45_3(a1);
  if (!result)
  {
    v4 = v3;
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D0484B0, &qword_222DDE9A8);
    v4();
    OUTLINED_FUNCTION_31_3();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_222DD2AE0()
{
  result = qword_27D0484E8;
  if (!qword_27D0484E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0484E8);
  }

  return result;
}

unint64_t sub_222DD2B64()
{
  result = qword_27D0484F8;
  if (!qword_27D0484F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0484F8);
  }

  return result;
}

unint64_t sub_222DD2BB8(uint64_t a1)
{
  result = OUTLINED_FUNCTION_45_3(a1);
  if (!result)
  {
    v4 = v3;
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D048500, &qword_222DDE9C0);
    v4();
    OUTLINED_FUNCTION_31_3();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_222DD2C24()
{
  result = qword_27D048510;
  if (!qword_27D048510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D048510);
  }

  return result;
}

unint64_t sub_222DD2C78()
{
  result = qword_27D048528;
  if (!qword_27D048528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D048528);
  }

  return result;
}

unint64_t sub_222DD2CFC()
{
  result = qword_27D048538;
  if (!qword_27D048538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D048538);
  }

  return result;
}

unint64_t sub_222DD2D80()
{
  result = qword_27D048550;
  if (!qword_27D048550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D048550);
  }

  return result;
}

unint64_t sub_222DD2E3C()
{
  result = qword_27D048568;
  if (!qword_27D048568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D048568);
  }

  return result;
}

unint64_t sub_222DD2E94()
{
  result = qword_27D048578;
  if (!qword_27D048578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D048578);
  }

  return result;
}

unint64_t sub_222DD2EEC()
{
  result = qword_27D048580;
  if (!qword_27D048580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D048580);
  }

  return result;
}

uint64_t sub_222DD2F54(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && *(a1 + 153))
    {
      v2 = *a1 + 253;
    }

    else
    {
      v3 = *(a1 + 152);
      if (v3 <= 2)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_222DD2F94(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 152) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 153) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 153) = 0;
    }

    if (a2)
    {
      *(result + 152) = -a2;
    }
  }

  return result;
}

__n128 __swift_memcpy64_8(uint64_t a1, uint64_t a2)
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

uint64_t sub_222DD3028(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_222DD3068(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_222DD30CC(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 128))
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

uint64_t sub_222DD310C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 120) = 0;
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
      *(result + 128) = 1;
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

    *(result + 128) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_222DD3180(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 152))
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

uint64_t sub_222DD31C0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0u;
    *(result + 120) = 0u;
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
      *(result + 152) = 1;
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

    *(result + 152) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_222DD3230(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_222DD3270(uint64_t result, int a2, int a3)
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

_BYTE *storeEnumTagSinglePayload for ContactHandle.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
          *result = a2 + 5;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_222DD33D4(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF9)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF8)
  {
    v6 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
          *result = a2 + 7;
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ContactDisambiguationModel.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFC)
  {
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

    v5 = (*a1 | (v4 << 8)) - 5;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v5 = v6 - 5;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for ContactDisambiguationModel.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_222DD3614(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *sub_222DD3710(_BYTE *result, int a2, int a3)
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

unint64_t sub_222DD37C0()
{
  result = qword_27D048588;
  if (!qword_27D048588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D048588);
  }

  return result;
}

unint64_t sub_222DD3818()
{
  result = qword_27D048590;
  if (!qword_27D048590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D048590);
  }

  return result;
}

unint64_t sub_222DD3870()
{
  result = qword_27D048598;
  if (!qword_27D048598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D048598);
  }

  return result;
}

unint64_t sub_222DD38C8()
{
  result = qword_27D0485A0;
  if (!qword_27D0485A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0485A0);
  }

  return result;
}

unint64_t sub_222DD3920()
{
  result = qword_27D0485A8;
  if (!qword_27D0485A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0485A8);
  }

  return result;
}

unint64_t sub_222DD3978()
{
  result = qword_27D0485B0;
  if (!qword_27D0485B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0485B0);
  }

  return result;
}

unint64_t sub_222DD39D0()
{
  result = qword_27D0485B8;
  if (!qword_27D0485B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0485B8);
  }

  return result;
}

unint64_t sub_222DD3A28()
{
  result = qword_27D0485C0;
  if (!qword_27D0485C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0485C0);
  }

  return result;
}

unint64_t sub_222DD3A80()
{
  result = qword_27D0485C8;
  if (!qword_27D0485C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0485C8);
  }

  return result;
}

unint64_t sub_222DD3AD8()
{
  result = qword_27D0485D0;
  if (!qword_27D0485D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0485D0);
  }

  return result;
}

unint64_t sub_222DD3B30()
{
  result = qword_27D0485D8;
  if (!qword_27D0485D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0485D8);
  }

  return result;
}

unint64_t sub_222DD3B88()
{
  result = qword_27D0485E0;
  if (!qword_27D0485E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0485E0);
  }

  return result;
}

unint64_t sub_222DD3BE0()
{
  result = qword_27D0485E8;
  if (!qword_27D0485E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0485E8);
  }

  return result;
}

unint64_t sub_222DD3C38()
{
  result = qword_27D0485F0;
  if (!qword_27D0485F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0485F0);
  }

  return result;
}

unint64_t sub_222DD3C90()
{
  result = qword_27D0485F8;
  if (!qword_27D0485F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0485F8);
  }

  return result;
}

unint64_t sub_222DD3CE8()
{
  result = qword_27D048600;
  if (!qword_27D048600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D048600);
  }

  return result;
}

unint64_t sub_222DD3D40()
{
  result = qword_27D048608;
  if (!qword_27D048608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D048608);
  }

  return result;
}

unint64_t sub_222DD3D98()
{
  result = qword_27D048610;
  if (!qword_27D048610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D048610);
  }

  return result;
}

unint64_t sub_222DD3DF0()
{
  result = qword_27D048618;
  if (!qword_27D048618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D048618);
  }

  return result;
}

unint64_t sub_222DD3E48()
{
  result = qword_27D048620;
  if (!qword_27D048620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D048620);
  }

  return result;
}

unint64_t sub_222DD3EA0()
{
  result = qword_27D048628;
  if (!qword_27D048628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D048628);
  }

  return result;
}

unint64_t sub_222DD3EF8()
{
  result = qword_27D048630;
  if (!qword_27D048630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D048630);
  }

  return result;
}

unint64_t sub_222DD3F50()
{
  result = qword_27D048638;
  if (!qword_27D048638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D048638);
  }

  return result;
}

unint64_t sub_222DD3FA8()
{
  result = qword_27D048640;
  if (!qword_27D048640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D048640);
  }

  return result;
}

unint64_t sub_222DD4000()
{
  result = qword_27D048648;
  if (!qword_27D048648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D048648);
  }

  return result;
}

unint64_t sub_222DD4058()
{
  result = qword_27D048650;
  if (!qword_27D048650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D048650);
  }

  return result;
}

unint64_t sub_222DD40B0()
{
  result = qword_27D048658;
  if (!qword_27D048658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D048658);
  }

  return result;
}

uint64_t sub_222DD410C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 168))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 160);
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

uint64_t sub_222DD414C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0u;
    *(result + 152) = 0u;
    *(result + 120) = 0u;
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
      *(result + 168) = 1;
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
      *(result + 160) = (a2 - 1);
      return result;
    }

    *(result + 168) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_4_12@<X0>(char a1@<W8>)
{
  *(v1 - 240) = a1;

  return sub_222DDB9C0();
}

unint64_t OUTLINED_FUNCTION_17_4(uint64_t a1)
{

  return sub_222DD2A34(a1);
}

unint64_t OUTLINED_FUNCTION_22_5(uint64_t a1)
{

  return sub_222DD2A34(a1);
}

uint64_t OUTLINED_FUNCTION_33_2@<X0>(void *a1@<X8>)
{
  v4 = v1[9];
  v3 = v1[10];
  v5 = v1[11];
  v6 = v1[12];
  v8 = v1[13];
  v7 = v1[14];
  *a1 = v4;
  a1[1] = v3;
  a1[2] = v5;
  a1[3] = v6;
  a1[4] = v8;
  a1[5] = v7;
}

void *OUTLINED_FUNCTION_36_3()
{

  return memcpy((v1 - 256), (v0 + 112), 0x99uLL);
}

uint64_t OUTLINED_FUNCTION_37_4()
{

  return sub_222DDBBB0();
}

uint64_t OUTLINED_FUNCTION_38_3()
{

  return sub_222DDB9F0();
}

char *OUTLINED_FUNCTION_39_3@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(v2 - 72) = a2;

  return sub_222DA5508(0, a1 & ~(a1 >> 63), 0);
}

void OUTLINED_FUNCTION_52_4(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

void OUTLINED_FUNCTION_53_2(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t OUTLINED_FUNCTION_54_3()
{
  v2 = *(v0 - 128);
  v3 = *(v0 - 112);
  v4 = *(v0 - 104);
  v5 = *(v0 - 96);
}

char *OUTLINED_FUNCTION_55_2()
{

  return sub_222DA54E8(0, v0, 0);
}

uint64_t sub_222DD4598(uint64_t a1)
{
  result = sub_222DDA160();
  if (v3 <= 0x3F)
  {
    v7 = *(result - 8) + 64;
    result = sub_222DDA210();
    if (v4 <= 0x3F)
    {
      v8 = *(result - 8) + 64;
      v5 = *(a1 + 80);
      result = swift_checkMetadataState();
      if (v6 <= 0x3F)
      {
        v9 = *(result - 8) + 64;
        return swift_initClassMetadata2();
      }
    }
  }

  return result;
}

uint64_t sub_222DD46A0()
{
  OUTLINED_FUNCTION_17_5();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  sub_222DD4740();
  return v3;
}

uint64_t sub_222DD4700()
{
  sub_222DDBB60();
  sub_222D8D900(v2, *v0);
  return sub_222DDBB90();
}

void sub_222DD4740()
{
  OUTLINED_FUNCTION_32_2();
  v5 = v4;
  OUTLINED_FUNCTION_17_5();
  v6 = *v0;
  v7 = qword_27D048660;
  v8 = sub_222DDA160();
  OUTLINED_FUNCTION_4_6(v8);
  v10 = *(v9 + 32);
  v10(&v0[v7], v3, v8);
  v10(&v0[qword_27D048668], v2, v8);
  OUTLINED_FUNCTION_22_3();
  (*(*(*(v6 + 80) - 8) + 32))(&v0[*(v11 + 120)], v1);
  v12 = qword_27D048670;
  v13 = sub_222DDA210();
  OUTLINED_FUNCTION_4_6(v13);
  (*(v14 + 32))(&v0[v12], v5);
  OUTLINED_FUNCTION_36_1();
}

void sub_222DD486C()
{
  OUTLINED_FUNCTION_32_2();
  v1 = v0;
  v163 = v3;
  v164 = v2;
  v158 = v4;
  OUTLINED_FUNCTION_22_3();
  v161 = v5;
  v162 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D048720, &qword_222DE0028);
  v6 = OUTLINED_FUNCTION_4_6(v162);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v165 = &v154 - v9;
  OUTLINED_FUNCTION_10_4();
  v10 = sub_222DDA940();
  v11 = OUTLINED_FUNCTION_2(v10);
  v167 = v12;
  v168 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_4_11();
  v157 = v15;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x28223BE20](v16);
  v166 = &v154 - v17;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x28223BE20](v18);
  v155 = &v154 - v19;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x28223BE20](v20);
  v156 = &v154 - v21;
  OUTLINED_FUNCTION_10_4();
  v22 = sub_222DDA900();
  v23 = OUTLINED_FUNCTION_2(v22);
  v159 = v24;
  v160 = v23;
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_4();
  v29 = v28 - v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D048700, &qword_222DE0000);
  v30 = sub_222DDA160();
  OUTLINED_FUNCTION_2(v30);
  v32 = v31;
  v34 = *(v33 + 72);
  v35 = (*(v31 + 80) + 32) & ~*(v31 + 80);
  v36 = swift_allocObject();
  *(v36 + 16) = xmmword_222DDDFD0;
  v37 = *(v32 + 16);
  v37(v36 + v35, v0 + qword_27D048660, v30);
  v37(v36 + v35 + v34, v0 + qword_27D048668, v30);
  v170 = MEMORY[0x277D84F90];
  sub_222DDB8B0();
  v38 = 0;
  do
  {
    v39 = v38;
    sub_222DD55DC(&v169);
    sub_222DDB890();
    v40 = *(v170 + 16);
    sub_222DDB8C0();
    sub_222DDB8D0();
    sub_222DDB8A0();
    v38 = 1;
  }

  while ((v39 & 1) == 0);
  swift_setDeallocating();
  sub_222D9DFC8();
  sub_222DDA870();
  v41 = v159;
  v42 = *(v159 + 88);
  v43 = OUTLINED_FUNCTION_18_5();
  v45 = v44(v43);
  if (v45 == *MEMORY[0x277D5C128])
  {
    v46 = *(v41 + 96);
    v47 = OUTLINED_FUNCTION_18_5();
    v48(v47);
    v49 = v166;
    v50 = v167;
    v51 = v168;
    (*(v167 + 32))(v166, v29, v168);
    if (qword_27D0475A8 != -1)
    {
      OUTLINED_FUNCTION_3_4();
    }

    v52 = sub_222DDB3E0();
    __swift_project_value_buffer(v52, qword_27D04C910);
    v53 = v157;
    (*(v50 + 16))(v157, v49, v51);
    v54 = sub_222DDB3C0();
    v55 = sub_222DDB6B0();
    if (os_log_type_enabled(v54, v55))
    {
      OUTLINED_FUNCTION_29_4();
      v56 = OUTLINED_FUNCTION_22_6();
      v170 = v56;
      *v53 = 136315138;
      OUTLINED_FUNCTION_8_8();
      sub_222DD7BE8(v57, v58);
      v59 = sub_222DDBAB0();
      v61 = v60;
      v160 = *(v167 + 8);
      v160(v53, v168);
      v62 = sub_222D8F7F0(v59, v61, &v170);

      *(v53 + 4) = v62;
      _os_log_impl(&dword_222D8A000, v54, v55, "parsing disambiguation result, (nlv3 only), nlIntent: %s", v53, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v56);
      v51 = v168;
      OUTLINED_FUNCTION_48_2();
      OUTLINED_FUNCTION_48_2();
    }

    else
    {

      v160 = *(v50 + 8);
      v160(v53, v51);
    }

    v87 = *(*v1 + 120);
    v89 = *(v161 + 80);
    v88 = *(v161 + 88);
    v90 = OUTLINED_FUNCTION_28_6();
    v91 = v166;
    v92(v90, v166, v89, v88);

    v93 = v170;
    if (v170)
    {

      v94 = sub_222DDB3C0();
      v95 = sub_222DDB6B0();

      if (os_log_type_enabled(v94, v95))
      {
        OUTLINED_FUNCTION_29_4();
        v96 = OUTLINED_FUNCTION_22_6();
        v169 = v93;
        v170 = v96;
        *v88 = 136315138;
        sub_222DDAD60();
        OUTLINED_FUNCTION_7_9();
        sub_222DD7BE8(v97, v98);
        v99 = sub_222DDBAB0();
        v101 = sub_222D8F7F0(v99, v100, &v170);

        *(v88 + 4) = v101;
        v91 = v166;
        _os_log_impl(&dword_222D8A000, v94, v95, "Picked datetime after disambiguation (nlv3 only): %s", v88, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v96);
        OUTLINED_FUNCTION_48_2();
        OUTLINED_FUNCTION_48_2();
      }

      v102 = v160;
      v170 = v93;
      sub_222DDAD60();
      v103 = v165;
      sub_222DDA7A0();
      swift_storeEnumTagMultiPayload();
      v164(v103);

      sub_222DB6FC0(v103, &qword_27D048720, &qword_222DE0028);
      v102(v91, v51);
    }

    else
    {
      v117 = type metadata accessor for RelativeDateInWitchingHourDisambiguationStrategy.RelativeDateDisambiguationStrategyError();
      OUTLINED_FUNCTION_0_14();
      swift_getWitnessTable();
      v118 = OUTLINED_FUNCTION_12_5();
      *v119 = 2;
      OUTLINED_FUNCTION_4_13(v118);
      v120 = OUTLINED_FUNCTION_19_5();
      v121(v120);
      sub_222DB6FC0(v117, &qword_27D048720, &qword_222DE0028);
      v160(v91, v51);
    }
  }

  else
  {
    v63 = v45;
    v65 = v167;
    v64 = v168;
    if (v45 == *MEMORY[0x277D5C158])
    {
      v66 = *(v41 + 96);
      v67 = OUTLINED_FUNCTION_18_5();
      v68(v67);
      v69 = *(v29 + *(__swift_instantiateConcreteTypeFromMangledNameV2(qword_27D047FA0, &unk_222DDE250) + 48));

      v70 = v156;
      (*(v65 + 32))(v156, v29, v64);
      if (qword_27D0475A8 != -1)
      {
        OUTLINED_FUNCTION_3_4();
      }

      v71 = sub_222DDB3E0();
      v72 = __swift_project_value_buffer(v71, qword_27D04C910);
      v73 = v155;
      (*(v65 + 16))(v155, v70, v64);
      v74 = sub_222DDB3C0();
      v75 = sub_222DDB6B0();
      if (os_log_type_enabled(v74, v75))
      {
        v76 = OUTLINED_FUNCTION_29_4();
        v166 = v72;
        v77 = v73;
        v78 = v76;
        v79 = swift_slowAlloc();
        v170 = v79;
        *v78 = 136315138;
        OUTLINED_FUNCTION_8_8();
        sub_222DD7BE8(v80, v81);
        v82 = sub_222DDBAB0();
        v84 = v83;
        v85 = *(v65 + 8);
        v85(v77, v168);
        v86 = sub_222D8F7F0(v82, v84, &v170);
        v64 = v168;

        *(v78 + 4) = v86;
        _os_log_impl(&dword_222D8A000, v74, v75, "parsing disambiguation result, (nlv3 plus server conversion), nlIntent: %s", v78, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v79);
        v70 = v156;
        OUTLINED_FUNCTION_48_2();
        OUTLINED_FUNCTION_48_2();
      }

      else
      {

        v85 = *(v65 + 8);
        v85(v73, v64);
      }

      v122 = *(*v1 + 120);
      v124 = *(v161 + 80);
      v123 = *(v161 + 88);
      v125 = OUTLINED_FUNCTION_28_6();
      v126(v125, v70, v124, v123);

      v127 = v170;
      if (v170)
      {

        v128 = sub_222DDB3C0();
        v129 = sub_222DDB6B0();

        if (os_log_type_enabled(v128, v129))
        {
          OUTLINED_FUNCTION_29_4();
          v130 = OUTLINED_FUNCTION_22_6();
          v169 = v127;
          v170 = v130;
          *v124 = 136315138;
          sub_222DDAD60();
          OUTLINED_FUNCTION_7_9();
          sub_222DD7BE8(v131, v132);
          v133 = sub_222DDBAB0();
          v135 = sub_222D8F7F0(v133, v134, &v170);

          *(v124 + 4) = v135;
          v70 = v156;
          _os_log_impl(&dword_222D8A000, v128, v129, "Picked datetime after disambiguation (nlv3 plus server conversion): %s", v124, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v130);
          OUTLINED_FUNCTION_48_2();
          OUTLINED_FUNCTION_48_2();
        }

        v170 = v127;
        sub_222DDAD60();
        v136 = v165;
        sub_222DDA7A0();
        swift_storeEnumTagMultiPayload();
        v137 = OUTLINED_FUNCTION_19_5();
        v138(v137);
      }

      else
      {
        v136 = type metadata accessor for RelativeDateInWitchingHourDisambiguationStrategy.RelativeDateDisambiguationStrategyError();
        OUTLINED_FUNCTION_0_14();
        swift_getWitnessTable();
        v150 = OUTLINED_FUNCTION_12_5();
        *v151 = 2;
        OUTLINED_FUNCTION_4_13(v150);
        v152 = OUTLINED_FUNCTION_19_5();
        v153(v152);
      }

      sub_222DB6FC0(v136, &qword_27D048720, &qword_222DE0028);
      v85(v70, v64);
    }

    else
    {
      v104 = *MEMORY[0x277D5C150];

      if (v63 == v104)
      {
        v105 = *(v41 + 8);
        v106 = OUTLINED_FUNCTION_18_5();
        v107(v106);
        if (qword_27D0475A8 != -1)
        {
          OUTLINED_FUNCTION_3_4();
        }

        v108 = sub_222DDB3E0();
        __swift_project_value_buffer(v108, qword_27D04C910);
        v109 = sub_222DDB3C0();
        v110 = sub_222DDB6B0();
        if (os_log_type_enabled(v109, v110))
        {
          v111 = swift_slowAlloc();
          *v111 = 0;
          _os_log_impl(&dword_222D8A000, v109, v110, "got direct invocation omg", v111, 2u);
          OUTLINED_FUNCTION_48_2();
        }

        v112 = OUTLINED_FUNCTION_21_5();
        OUTLINED_FUNCTION_0_14();
        swift_getWitnessTable();
        v113 = OUTLINED_FUNCTION_12_5();
        *v114 = 0;
        OUTLINED_FUNCTION_4_13(v113);
        v115 = OUTLINED_FUNCTION_19_5();
        v116(v115);
        sub_222DB6FC0(v112, &qword_27D048720, &qword_222DE0028);
      }

      else
      {
        if (qword_27D0475A8 != -1)
        {
          OUTLINED_FUNCTION_3_4();
        }

        v139 = sub_222DDB3E0();
        __swift_project_value_buffer(v139, qword_27D04C910);
        v140 = sub_222DDB3C0();
        v141 = sub_222DDB6B0();
        if (os_log_type_enabled(v140, v141))
        {
          v142 = swift_slowAlloc();
          *v142 = 0;
          _os_log_impl(&dword_222D8A000, v140, v141, "received unsupported parse", v142, 2u);
          OUTLINED_FUNCTION_48_2();
        }

        OUTLINED_FUNCTION_21_5();
        OUTLINED_FUNCTION_0_14();
        swift_getWitnessTable();
        v143 = OUTLINED_FUNCTION_33_3();
        *v144 = 0;
        OUTLINED_FUNCTION_4_13(v143);
        v145 = OUTLINED_FUNCTION_19_5();
        v146(v145);
        sub_222DB6FC0(v104, &qword_27D048720, &qword_222DE0028);
        v147 = *(v41 + 8);
        v148 = OUTLINED_FUNCTION_18_5();
        v149(v148);
      }
    }
  }

  OUTLINED_FUNCTION_36_1();
}

uint64_t sub_222DD55DC@<X0>(uint64_t *a1@<X8>)
{
  sub_222DB1C58();
  v2 = sub_222DDAD60();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  result = sub_222DDAC80();
  *a1 = result;
  return result;
}

void sub_222DD564C()
{
  OUTLINED_FUNCTION_32_2();
  v1 = v0;
  v94 = v2;
  v93 = v3;
  OUTLINED_FUNCTION_22_3();
  v117 = v4;
  v112 = sub_222DDA7B0();
  v5 = OUTLINED_FUNCTION_2(v112);
  v118 = v6;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_4();
  v111 = v10 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0486F8, &qword_222DDFFF8);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v110 = &v89 - v13;
  OUTLINED_FUNCTION_10_4();
  v109 = sub_222DDA740();
  v14 = OUTLINED_FUNCTION_2(v109);
  v115 = v15;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_4();
  v108 = v19 - v18;
  OUTLINED_FUNCTION_10_4();
  v107 = sub_222DDA5D0();
  v20 = OUTLINED_FUNCTION_2(v107);
  v97 = v21;
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_4_11();
  v106 = v24;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x28223BE20](v25);
  v105 = &v89 - v26;
  OUTLINED_FUNCTION_10_4();
  v104 = sub_222DDA700();
  v27 = OUTLINED_FUNCTION_2(v104);
  v114 = v28;
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_4();
  v113 = v32 - v31;
  OUTLINED_FUNCTION_10_4();
  v33 = sub_222DDB140();
  v34 = *(v33 + 48);
  v35 = *(v33 + 52);
  swift_allocObject();
  sub_222DDB130();
  v36 = qword_27D048660;
  sub_222DDA150();
  sub_222DDB120();

  v92 = sub_222DDB110();

  v37 = *(v33 + 48);
  v38 = *(v33 + 52);
  swift_allocObject();
  sub_222DDB130();
  v39 = qword_27D048668;
  sub_222DDA150();
  sub_222DDB120();

  v91 = sub_222DDB110();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D048700, &qword_222DE0000);
  v40 = sub_222DDA160();
  OUTLINED_FUNCTION_2(v40);
  v42 = v41;
  v44 = *(v43 + 72);
  v45 = (*(v41 + 80) + 32) & ~*(v41 + 80);
  v46 = swift_allocObject();
  *(v46 + 16) = xmmword_222DDDFD0;
  v47 = v46 + v45;
  v48 = *(v42 + 16);
  v48(v46 + v45, v1 + v36, v40);
  v48(v46 + v45 + v44, v1 + v39, v40);
  v49 = 0;
  v116 = MEMORY[0x277D84F90];
LABEL_2:
  v50 = v47 + v44 * v49;
  while (++v49 != 3)
  {
    v51 = v50 + v44;
    sub_222DD6044(v120);
    v52 = v120[0];
    v50 = v51;
    if (v120[0])
    {
      v119 = v46;
      v53 = v120[1];
      v54 = v120[2];
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v116 = sub_222DD782C(0, *(v116 + 16) + 1, 1, v116);
      }

      v56 = *(v116 + 16);
      v55 = *(v116 + 24);
      if (v56 >= v55 >> 1)
      {
        v116 = sub_222DD782C(v55 > 1, v56 + 1, 1, v116);
      }

      v57 = v116;
      *(v116 + 16) = v56 + 1;
      v58 = (v57 + 24 * v56);
      v58[4] = v52;
      v58[5] = v53;
      v58[6] = v54;
      v46 = v119;
      goto LABEL_2;
    }
  }

  swift_setDeallocating();
  sub_222D9DFC8();
  v59 = v116;
  if (*(v116 + 16) == 2)
  {
    v90 = v1;
    v120[0] = MEMORY[0x277D84F90];
    sub_222DA5580();
    v60 = 0;
    v61 = 0;
    v62 = v120[0];
    v103 = v59 + 32;
    v102 = (v97 + 2);
    v101 = v115 + 16;
    v100 = *MEMORY[0x277D5BF70];
    v99 = (v118 + 104);
    v98 = v115 + 8;
    ++v97;
    v96 = v114 + 32;
    v95 = xmmword_222DDC9B0;
    v63 = v105;
    v64 = v108;
    v65 = v115;
    do
    {
      if (v61 >= *(v59 + 16))
      {
        __break(1u);
LABEL_28:
        __break(1u);
LABEL_29:
        __break(1u);
        return;
      }

      LODWORD(v118) = v60;
      v66 = (v103 + 24 * v61);
      v67 = v66[1];
      v117 = *v66;
      v119 = v62;
      v68 = v66[2];
      swift_bridgeObjectRetain_n();

      sub_222DDA5B0();
      v69 = v107;
      (*v102)(v106, v63, v107);
      __swift_storeEnumTagSinglePayload(v110, 1, 1, v69);

      OUTLINED_FUNCTION_27_7();
      sub_222DDA720();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D048708, &qword_222DE0008);
      v70 = *(v65 + 72);
      v71 = (*(v65 + 80) + 32) & ~*(v65 + 80);
      v72 = swift_allocObject();
      *(v72 + 16) = v95;
      v73 = v109;
      (*(v65 + 16))(v72 + v71, v64, v109);
      (*v99)(v111, v100, v112);
      OUTLINED_FUNCTION_27_7();
      sub_222DDA6B0();
      (*(v65 + 8))(v64, v73);
      (*v97)(v63, v69);
      v62 = v119;

      v120[0] = v62;
      v74 = *(v62 + 16);
      if (v74 >= *(v62 + 24) >> 1)
      {
        sub_222DA5580();
        v62 = v120[0];
      }

      *(v62 + 16) = v74 + 1;
      (*(v114 + 32))(v62 + ((*(v114 + 80) + 32) & ~*(v114 + 80)) + *(v114 + 72) * v74, v113, v104);
      v60 = 1;
      v61 = 1;
      v59 = v116;
    }

    while ((v118 & 1) == 0);
    v77 = *(v116 + 16);
    if (v77)
    {
      v119 = v62;
      v120[0] = MEMORY[0x277D84F90];
      sub_222DDB8B0();
      v78 = 0;
      v79 = *(v59 + 16);
      v80 = (v59 + 48);
      v81 = v90;
      while (v79 != v78)
      {
        if (v78 >= *(v59 + 16))
        {
          goto LABEL_29;
        }

        v82 = *(v80 - 2);
        v83 = *(v80 - 1);
        v84 = *v80;
        v80 += 3;

        sub_222DD6204(v78, v82, v83, v84, v81);

        sub_222DDB890();
        v85 = *(v120[0] + 16);
        sub_222DDB8C0();
        sub_222DDB8D0();
        sub_222DDB8A0();
        if (v77 == ++v78)
        {

          v62 = v119;
          v86 = v120[0];
          goto LABEL_25;
        }
      }

      goto LABEL_28;
    }

    v86 = MEMORY[0x277D84F90];
    v81 = v90;
LABEL_25:
    v87 = swift_allocObject();
    v88 = v93;
    v87[2] = v86;
    v87[3] = v88;
    v87[4] = v94;
    v87[5] = v81;
    v87[6] = v62;

    sub_222DD69C4();
  }

  else
  {

    OUTLINED_FUNCTION_21_5();
    OUTLINED_FUNCTION_0_14();
    swift_getWitnessTable();
    v75 = OUTLINED_FUNCTION_12_5();
    *v76 = 1;
    v120[0] = v75;
    v121 = 1;
    v93(v120);

    sub_222DB6FC0(v120, &unk_27D047F40, &unk_222DDE220);
  }

  OUTLINED_FUNCTION_36_1();
}

uint64_t sub_222DD6044@<X0>(uint64_t *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0479C0, &qword_222DDE100);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v15 - v4;
  v6 = sub_222DDB140();
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  swift_allocObject();
  sub_222DDB130();
  sub_222DDA150();
  sub_222DDB120();

  sub_222DDB110();

  sub_222DDB100();
  v9 = sub_222DDB240();
  if (__swift_getEnumTagSinglePayload(v5, 1, v9) == 1)
  {

    result = sub_222DB6FC0(v5, &qword_27D0479C0, &qword_222DDE100);
    v11 = 0;
    v12 = 0;
    v13 = 0;
  }

  else
  {
    v12 = sub_222DDB220();
    v13 = v14;
    (*(*(v9 - 8) + 8))(v5, v9);
    v11 = sub_222DB1C58();
  }

  *a1 = v11;
  a1[1] = v12;
  a1[2] = v13;
  return result;
}

uint64_t sub_222DD6204(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v7 = *a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0487F0, &unk_222DDD310);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_222DDD2F0;
  sub_222DDA3F0();

  sub_222DDA3C0();

  v9 = sub_222DDA3E0();

  *(v8 + 32) = v9;
  v10 = *(*a5 + 120);
  v11 = sub_222DDAD60();
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  swift_allocObject();

  v19 = sub_222DDAC80();
  (*(*(v7 + 88) + 48))(&v19, a1, *(v7 + 80));

  v14 = sub_222DDA370();
  v15 = *(v14 + 48);
  v16 = *(v14 + 52);
  swift_allocObject();
  v17 = sub_222DDA360();

  return v17;
}

uint64_t sub_222DD63AC(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *), uint64_t a4, uint64_t *a5, uint64_t a6)
{
  v43 = a6;
  v47 = a4;
  v46 = a3;
  v42 = a2;
  v45 = *a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D047E70, &unk_222DDE010);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v44 = &v40 - v10;
  v11 = sub_222DDA770();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_222DDA700();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = &v40 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D047F60, &qword_222DDE000);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21);
  v24 = (&v40 - v23);
  sub_222DBA6B4(a1, &v40 - v23);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v25 = *(v45 + 80);
    v26 = *(v45 + 88);
    type metadata accessor for RelativeDateInWitchingHourDisambiguationStrategy.RelativeDateDisambiguationStrategyError();
    swift_getWitnessTable();
    v27 = swift_allocError();
    *v28 = 0;
    v52[0] = v27;
    v55 = 1;
    v46(v52);
    sub_222DB6FC0(v52, &unk_27D047F40, &unk_222DDE220);
    v29 = &unk_27D047F60;
    v30 = &qword_222DDE000;
    v31 = v24;
  }

  else
  {
    v41 = v17;
    v32 = *(v17 + 32);
    v40 = v16;
    v32(v20, v24, v16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0487F0, &unk_222DDD310);
    v33 = swift_allocObject();
    *(v33 + 16) = xmmword_222DDD2F0;
    sub_222DDA910();
    __swift_project_boxed_opaque_existential_1(v52, v53);
    sub_222DDA760();
    v34 = sub_222DDA4A0();
    (*(v12 + 8))(v15, v11);
    __swift_destroy_boxed_opaque_existential_0(v52);
    *(v33 + 32) = MEMORY[0x223DCD150](v42, (v34 & 1) == 0);
    sub_222DDA910();
    sub_222DDA910();
    __swift_project_boxed_opaque_existential_1(v50, v50[3]);
    sub_222DDA4C0();
    v35 = a5 + *(*a5 + 120);
    v36 = v44;
    (*(*(v45 + 88) + 64))(v43, *(v45 + 80));
    v37 = sub_222DDA660();
    __swift_storeEnumTagSinglePayload(v36, 0, 1, v37);
    v38 = sub_222DDA920();
    memset(v48, 0, sizeof(v48));
    v49 = 0;
    v53 = v38;
    v54 = MEMORY[0x277D5C1D8];
    __swift_allocate_boxed_opaque_existential_1(v52);
    sub_222DDA5F0();

    sub_222DB6FC0(v48, &qword_27D047F80, &qword_222DE0010);
    sub_222DB6FC0(v36, &qword_27D047E70, &unk_222DDE010);
    __swift_destroy_boxed_opaque_existential_0(v51);
    __swift_destroy_boxed_opaque_existential_0(v50);
    v55 = 0;
    v46(v52);
    (*(v41 + 8))(v20, v40);
    v29 = &unk_27D047F40;
    v30 = &unk_222DDE220;
    v31 = v52;
  }

  return sub_222DB6FC0(v31, v29, v30);
}

uint64_t sub_222DD6910(void (*a1)(void *))
{
  v3 = *(*v1 + 80);
  v4 = *(*v1 + 88);
  type metadata accessor for RelativeDateInWitchingHourDisambiguationStrategy.RelativeDateDisambiguationStrategyError();
  OUTLINED_FUNCTION_0_14();
  swift_getWitnessTable();
  v5 = OUTLINED_FUNCTION_33_3();
  *v6 = 0;
  v8[0] = v5;
  v9 = 1;
  a1(v8);
  return sub_222DB6FC0(v8, &unk_27D047F40, &unk_222DDE220);
}

void sub_222DD69C4()
{
  OUTLINED_FUNCTION_32_2();
  v1 = v0;
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0479C0, &qword_222DDE100);
  v5 = OUTLINED_FUNCTION_4_6(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  if (qword_27D0475A8 != -1)
  {
    OUTLINED_FUNCTION_3_4();
  }

  v8 = sub_222DDB3E0();
  __swift_project_value_buffer(v8, qword_27D04C910);

  v9 = sub_222DDB3C0();
  v10 = sub_222DDB6B0();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v20[0] = swift_slowAlloc();
    *v11 = 136315394;
    sub_222DDB100();
    v12 = sub_222DDB540();
    v14 = sub_222D8F7F0(v12, v13, v20);

    *(v11 + 4) = v14;
    *(v11 + 12) = 2080;
    sub_222DDB100();
    v15 = sub_222DDB540();
    v17 = sub_222D8F7F0(v15, v16, v20);

    *(v11 + 14) = v17;
    _os_log_impl(&dword_222D8A000, v9, v10, "earlierDate: %s laterDate: %s", v11, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_48_2();
    OUTLINED_FUNCTION_48_2();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D047B40, &unk_222DDD450);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_222DDDFD0;
  *(inited + 32) = 0x447265696C726165;
  *(inited + 40) = 0xEB00000000657461;
  v19 = sub_222DDB150();
  *(inited + 48) = v3;
  *(inited + 72) = v19;
  *(inited + 80) = 0x746144726574616CLL;
  *(inited + 120) = v19;
  *(inited + 88) = 0xE900000000000065;
  *(inited + 96) = v1;

  sub_222DDB460();
  sub_222DD6CB8();

  OUTLINED_FUNCTION_36_1();
}

void sub_222DD6CB8()
{
  OUTLINED_FUNCTION_32_2();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = sub_222DDB3B0();
  v11 = OUTLINED_FUNCTION_2(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_4();
  v18 = v17 - v16;
  v19 = *v1;
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v21 = [objc_opt_self() bundleForClass_];
  sub_222DDB1B0();
  v25 = 0;
  memset(v24, 0, sizeof(v24));
  v22 = swift_allocObject();
  v22[2] = v9;
  v22[3] = v7;
  v22[4] = v5;
  v22[5] = v3;
  sub_222DDB180();

  v23 = sub_222DDB170();
  sub_222DDB3A0();
  sub_222DDB190();

  (*(v13 + 8))(v18, v10);
  sub_222DB6FC0(v24, &qword_27D047BB8, &qword_222DDD430);
  OUTLINED_FUNCTION_36_1();
}

uint64_t sub_222DD6EA8(uint64_t a1, uint64_t a2, unint64_t a3, void (*a4)(void *))
{
  v27 = a2;
  v7 = sub_222DDA700();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D047F60, &qword_222DDE000);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = (&v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v14);
  v18 = (&v27 - v17);
  sub_222DBA6B4(a1, &v27 - v17);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v19 = *v18;
    if (qword_27D0475A8 != -1)
    {
      swift_once();
    }

    v20 = sub_222DDB3E0();
    __swift_project_value_buffer(v20, qword_27D04C910);

    v21 = sub_222DDB3C0();
    v22 = sub_222DDB6C0();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v28 = v24;
      *v23 = 136315138;
      *(v23 + 4) = sub_222D8F7F0(v27, a3, &v28);
      _os_log_impl(&dword_222D8A000, v21, v22, "Failed to execute cat with id: %s", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v24);
      MEMORY[0x223DCEF40](v24, -1, -1);
      MEMORY[0x223DCEF40](v23, -1, -1);
    }

    *v16 = v19;
    swift_storeEnumTagMultiPayload();
    v25 = v19;
    a4(v16);

    return sub_222DB6FC0(v16, &unk_27D047F60, &qword_222DDE000);
  }

  else
  {
    (*(v8 + 32))(v11, v18, v7);
    (*(v8 + 16))(v16, v11, v7);
    swift_storeEnumTagMultiPayload();
    a4(v16);
    sub_222DB6FC0(v16, &unk_27D047F60, &qword_222DDE000);
    return (*(v8 + 8))(v11, v7);
  }
}

char *sub_222DD7200()
{
  v1 = *v0;
  v2 = qword_27D048660;
  v3 = sub_222DDA160();
  OUTLINED_FUNCTION_4_6(v3);
  v5 = *(v4 + 8);
  v5(&v0[v2], v3);
  v5(&v0[qword_27D048668], v3);
  v6 = qword_27D048670;
  v7 = sub_222DDA210();
  OUTLINED_FUNCTION_4_6(v7);
  (*(v8 + 8))(&v0[v6]);
  OUTLINED_FUNCTION_22_3();
  (*(*(*(v1 + 80) - 8) + 8))(&v0[*(v9 + 120)]);
  return v0;
}

uint64_t sub_222DD7314()
{
  sub_222DD7200();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_222DD73BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  OUTLINED_FUNCTION_17_5();
  v11 = *(v10 + 80);
  v12 = *(v10 + 88);
  v13 = type metadata accessor for RelativeDateInWitchingHourDisambiguationStrategy();

  return a6(v8, v7, v6, v13, a5);
}

void sub_222DD7444()
{
  OUTLINED_FUNCTION_31_4();
  if ((v5 & 1) == 0)
  {
    v6 = v4;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_13_6();
  if (v7 == v8)
  {
LABEL_7:
    OUTLINED_FUNCTION_11_8(v6);
    if (v3)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(qword_27D048740, &unk_222DE0050);
      v9 = swift_allocObject();
      v10 = _swift_stdlib_malloc_size(v9);
      v9[2] = v2;
      v9[3] = 2 * v10 - 64;
      if (v1)
      {
LABEL_9:
        v11 = OUTLINED_FUNCTION_10_8();
        sub_222DA52C4(v11, v12, v13);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    v14 = OUTLINED_FUNCTION_16_5();
    memcpy(v14, v15, v16);
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_29_6();
  if (!v7)
  {
    OUTLINED_FUNCTION_12_8();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_222DD7500()
{
  OUTLINED_FUNCTION_31_4();
  if ((v5 & 1) == 0)
  {
    v6 = v4;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_13_6();
  if (v7 == v8)
  {
LABEL_7:
    OUTLINED_FUNCTION_11_8(v6);
    if (v3)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D047C28, &qword_222DDD6B8);
      v9 = OUTLINED_FUNCTION_20_6();
      v10 = _swift_stdlib_malloc_size(v9);
      OUTLINED_FUNCTION_6_8(v10);
      if (v1)
      {
LABEL_9:
        v11 = OUTLINED_FUNCTION_10_8();
        sub_222DA52EC(v11, v12, v13);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else
    {
      v9 = MEMORY[0x277D84F90];
      if (v1)
      {
        goto LABEL_9;
      }
    }

    memcpy((v9 + 32), (v0 + 32), 16 * v2);
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_29_6();
  if (!v7)
  {
    OUTLINED_FUNCTION_12_8();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_222DD75B4()
{
  OUTLINED_FUNCTION_31_4();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_13_6();
  if (v6 == v7)
  {
LABEL_7:
    OUTLINED_FUNCTION_11_8(v5);
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D047C10, &qword_222DDD6A8);
      v8 = OUTLINED_FUNCTION_20_6();
      v9 = _swift_stdlib_malloc_size(v8);
      OUTLINED_FUNCTION_6_8(v9);
      if (v1)
      {
LABEL_9:
        v10 = OUTLINED_FUNCTION_10_8();
        sub_222DA52EC(v10, v11, v12);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    OUTLINED_FUNCTION_16_5();
    swift_arrayInitWithCopy();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_29_6();
  if (!v6)
  {
    OUTLINED_FUNCTION_12_8();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_222DD7668()
{
  OUTLINED_FUNCTION_31_4();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_13_6();
  if (v6 == v7)
  {
LABEL_7:
    OUTLINED_FUNCTION_11_8(v5);
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D048730, &qword_222DE0038);
      v8 = OUTLINED_FUNCTION_20_6();
      v9 = _swift_stdlib_malloc_size(v8);
      OUTLINED_FUNCTION_6_8(v9);
      if (v1)
      {
LABEL_9:
        v10 = OUTLINED_FUNCTION_10_8();
        sub_222DA52EC(v10, v11, v12);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D048738, &unk_222DE0040);
    OUTLINED_FUNCTION_16_5();
    swift_arrayInitWithCopy();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_29_6();
  if (!v6)
  {
    OUTLINED_FUNCTION_12_8();
    goto LABEL_7;
  }

  __break(1u);
}

size_t sub_222DD772C(size_t result, uint64_t a2, char a3, uint64_t a4)
{
  v5 = a2;
  v6 = result;
  if (a3)
  {
    v7 = *(a4 + 24);
    a2 = v7 >> 1;
    if ((v7 >> 1) < v5)
    {
      if (a2 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if (v8 <= v5)
      {
        a2 = v5;
      }

      else
      {
        a2 = v8;
      }
    }
  }

  v9 = *(a4 + 16);
  v10 = sub_222DD7AC4(v9, a2, &qword_27D047BD0, &qword_222DE0030, MEMORY[0x277D5BD60]);
  v11 = *(sub_222DDA700() - 8);
  if (v6)
  {
    v12 = (*(v11 + 80) + 32) & ~*(v11 + 80);
    sub_222DA530C(a4 + v12, v9, v10 + v12);
    *(a4 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_32_6();
  }

  return v10;
}

uint64_t sub_222DD782C(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D048710, &qword_222DE0018);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 24);
      if (v5)
      {
LABEL_13:
        sub_222DA5324((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D048718, &qword_222DE0020);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

size_t sub_222DD7944(size_t result, uint64_t a2, char a3, uint64_t a4)
{
  v5 = a2;
  v6 = result;
  if (a3)
  {
    v7 = *(a4 + 24);
    a2 = v7 >> 1;
    if ((v7 >> 1) < v5)
    {
      if (a2 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if (v8 <= v5)
      {
        a2 = v5;
      }

      else
      {
        a2 = v8;
      }
    }
  }

  v9 = *(a4 + 16);
  v10 = sub_222DD7AC4(v9, a2, &qword_27D048708, &qword_222DE0008, MEMORY[0x277D5BDD8]);
  v11 = *(sub_222DDA740() - 8);
  if (v6)
  {
    v12 = (*(v11 + 80) + 32) & ~*(v11 + 80);
    sub_222DA534C(a4 + v12, v9, v10 + v12);
    *(a4 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_32_6();
  }

  return v10;
}

void *sub_222DD7A44(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0487F0, &unk_222DDD310);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = (2 * ((v5 - 32) / 8)) | 1;
  return v4;
}

size_t sub_222DD7AC4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void))
{
  if (a2 <= a1)
  {
    v5 = a1;
  }

  else
  {
    v5 = a2;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v8 = *(a5(0) - 8);
  v9 = *(v8 + 72);
  v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v11 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v11);
  if (v9)
  {
    if (result - v10 != 0x8000000000000000 || v9 != -1)
    {
      v11[2] = a1;
      v11[3] = 2 * ((result - v10) / v9);
      return v11;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_222DD7BE8(unint64_t *a1, void (*a2)(uint64_t))
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

_BYTE *sub_222DD7C30(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t OUTLINED_FUNCTION_4_13(uint64_t a1)
{
  **(v1 - 136) = a1;
  v3 = *(v1 - 160);

  return swift_storeEnumTagMultiPayload();
}

uint64_t OUTLINED_FUNCTION_6_8(uint64_t result)
{
  *(v2 + 16) = v1;
  *(v2 + 24) = 2 * ((result - 32) / 16);
  return result;
}

void OUTLINED_FUNCTION_11_8(uint64_t a1@<X8>)
{
  if (a1 <= *(v1 + 16))
  {
    v2 = *(v1 + 16);
  }
}

uint64_t OUTLINED_FUNCTION_19_5()
{
  result = v0;
  v4 = *(v1 - 152);
  v3 = *(v1 - 144);
  return result;
}

uint64_t OUTLINED_FUNCTION_20_6()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_21_5()
{
  v2 = *(v0 - 168);
  v3 = *(v2 + 80);
  v4 = *(v2 + 88);

  return type metadata accessor for RelativeDateInWitchingHourDisambiguationStrategy.RelativeDateDisambiguationStrategyError();
}

uint64_t OUTLINED_FUNCTION_22_6()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_32_6()
{

  return swift_arrayInitWithCopy();
}

uint64_t OUTLINED_FUNCTION_33_3()
{

  return swift_allocError();
}

uint64_t sub_222DD7EE8@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  v15 = a1;
  v16 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D047E68, &qword_222DDE008);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v14 - v4;
  v6 = sub_222DDA7B0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_222DDA6C0();
  v11 = sub_222DDA6F0();
  v12 = sub_222DDA6F0();
  v17 = v11;
  sub_222DD80B4(v12);
  sub_222DD81B4(v15, v5);
  if (__swift_getEnumTagSinglePayload(v5, 1, v6) == 1)
  {
    sub_222DDA6D0();
    if (__swift_getEnumTagSinglePayload(v5, 1, v6) != 1)
    {
      sub_222DD8224(v5);
    }
  }

  else
  {
    (*(v7 + 32))(v10, v5, v6);
  }

  return sub_222DDA6B0();
}

uint64_t sub_222DD80B4(uint64_t a1)
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

  sub_222DD828C(result, 1);
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
  result = sub_222DDA740();
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

uint64_t sub_222DD81B4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D047E68, &qword_222DDE008);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_222DD8224(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D047E68, &qword_222DDE008);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

size_t sub_222DD828C(uint64_t a1, char a2)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v5;
  if (!result || a1 > *(v5 + 24) >> 1)
  {
    if (*(v5 + 16) <= a1)
    {
      v7 = a1;
    }

    else
    {
      v7 = *(v5 + 16);
    }

    result = sub_222DD7944(result, v7, a2 & 1, v5);
    *v2 = result;
  }

  return result;
}

id sub_222DD82F4(void *a1, void *a2, uint64_t a3)
{
  v6 = sub_222DDA190();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  sub_222D8E3B4(v11);
  if (v12)
  {
  }

  else
  {
    sub_222DDA180();
    v13 = sub_222DDA170();
    v15 = v14;
    (*(v7 + 8))(v10, v6);
    sub_222D8E490(v13, v15, v11, &selRef_setAceId_);
  }

  v16 = sub_222D8E0D0();
  [v11 setSash_];

  v17 = *MEMORY[0x277D47C68];
  v18 = sub_222DDB500();
  sub_222D8E490(v18, v19, v11, &selRef_setItemType_);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0487F0, &unk_222DDD310);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_222DDD2F0;
  sub_222D9E3E4(0, &qword_27D0487C8, 0x277D470F0);
  v21 = a1;
  v22 = a2;
  *(v20 + 32) = sub_222DD9204(a1, v22);
  sub_222DD858C(v20, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D047C10, &qword_222DDD6A8);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_222DDDDA0;
  v24 = *MEMORY[0x277CBD0C8];
  *(v23 + 32) = sub_222DDB500();
  *(v23 + 40) = v25;
  v26 = *MEMORY[0x277CBCFC0];
  *(v23 + 48) = sub_222DDB500();
  *(v23 + 56) = v27;
  v28 = *MEMORY[0x277CBD098];
  *(v23 + 64) = sub_222DDB500();
  *(v23 + 72) = v29;
  sub_222DD8610(v23, v11);

  sub_222DCB020(a3);
  return v11;
}

void sub_222DD858C(uint64_t a1, void *a2)
{
  sub_222D9E3E4(0, &unk_27D0487D0, 0x277D47630);
  v3 = sub_222DDB620();

  [a2 setPersons_];
}

void sub_222DD8610(uint64_t a1, void *a2)
{
  v3 = sub_222DDB620();

  [a2 setDisplayProperties_];
}

id sub_222DD867C(void *a1, unint64_t a2)
{
  sub_222D9E3E4(0, &unk_27D0487E0, 0x277D47508);
  v4 = a1;
  v5 = sub_222DD8C38(v4);
  v6 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  [v6 setLocation_];
  sub_222DD89FC(v5);
  if (v7)
  {
    v8 = sub_222DDB4C0();
  }

  else
  {
    v8 = 0;
  }

  [v6 setLabel_];

  result = [v4 _geoMapItem];
  if (result)
  {
    v10 = [result _placeDataAsData];
    swift_unknownObjectRelease();
    if (v10)
    {
      v11 = sub_222DDA130();
      v13 = v12;

      v14 = sub_222DDA110();
      sub_222D9322C(v11, v13);
    }

    else
    {
      v14 = 0;
    }

    [v6 setPlaceData2_];

    v15 = *MEMORY[0x277D48530];
    v16 = sub_222DDB500();
    sub_222DD8A60(v16, v17, v6);
    v18 = [v4 _geoMapItem];
    v19 = v18;
    if (v18)
    {
      [v18 _resultProviderID];
      swift_unknownObjectRelease();
      v19 = sub_222DDBB50();
    }

    [v6 setLocalSearchProviderId_];

    v20 = [v4 _geoMapItem];
    if (v20)
    {
      v21 = [v20 _reviewsAttribution];
      swift_unknownObjectRelease();
      if (v21)
      {
        v22 = [objc_allocWithZone(MEMORY[0x277D47480]) init];
        v23 = v21;
        sub_222DD8B44(v23);
        if (v24)
        {
          v25 = sub_222DDB4C0();
        }

        else
        {
          v25 = 0;
        }

        [v22 setAttributionId_];

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0487F0, &unk_222DDD310);
        v26 = swift_allocObject();
        *(v26 + 16) = xmmword_222DDD2F0;
        *(v26 + 32) = v22;
        v27 = v22;
        sub_222DD8BB4(v26, v6);
        v28 = *MEMORY[0x277D48538];
        v29 = sub_222DDB500();
        sub_222DD8A60(v29, v30, v6);
      }
    }

    if (a2 >> 62)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D048870, &unk_222DDE230);
      v31 = sub_222DDB910();
    }

    else
    {
      sub_222DDBAD0();
      v31 = a2;
    }

    sub_222DD8AC4(v31, v6);

    return v6;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_222DD89FC(void *a1)
{
  v1 = [a1 label];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_222DDB500();

  return v3;
}

void sub_222DD8A60(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_222DDB4C0();

  [a3 setDetailType_];
}

void sub_222DD8AC4(uint64_t a1, void *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D048870, &unk_222DDE230);
  v3 = sub_222DDB620();

  [a2 setCommands_];
}

uint64_t sub_222DD8B44(void *a1)
{
  v2 = [a1 providerID];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_222DDB500();

  return v3;
}

void sub_222DD8BB4(uint64_t a1, void *a2)
{
  sub_222D9E3E4(0, &qword_27D0487F8, 0x277D47480);
  v3 = sub_222DDB620();

  [a2 setAttributions_];
}

id sub_222DD8C38(void *a1)
{
  v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  result = OUTLINED_FUNCTION_5_9();
  if (result)
  {
    v4 = [result name];
    v5 = swift_unknownObjectRelease();
    OUTLINED_FUNCTION_2_10(v5, sel_setLabel_);

    v6 = OUTLINED_FUNCTION_5_9();
    v7 = v6;
    if (v6)
    {
      [v6 coordinate];
      swift_unknownObjectRelease();
      v7 = sub_222DDB670();
    }

    [v2 setLatitude_];

    v8 = OUTLINED_FUNCTION_5_9();
    v9 = v8;
    if (v8)
    {
      [v8 coordinate];
      swift_unknownObjectRelease();
      v9 = sub_222DDB670();
    }

    [v2 setLongitude_];

    result = OUTLINED_FUNCTION_5_9();
    if (result)
    {
      v10 = [result addressDictionary];
      swift_unknownObjectRelease();
      if (v10)
      {
        sub_222DDB450();
      }

      else
      {
        sub_222DDB460();
      }

      v11 = sub_222DA7B8C(a1, &selRef_fullThoroughfare);
      if (v12)
      {
        sub_222DDB4C0();
        v11 = OUTLINED_FUNCTION_4_14();
      }

      else
      {
        v10 = 0;
      }

      OUTLINED_FUNCTION_2_10(v11, sel_setStreet_);

      v13 = sub_222DA7B8C(a1, &selRef_thoroughfare);
      if (v14)
      {
        sub_222DDB4C0();
        v13 = OUTLINED_FUNCTION_4_14();
      }

      else
      {
        v10 = 0;
      }

      OUTLINED_FUNCTION_2_10(v13, sel_setThoroughfare_);

      v15 = sub_222DA7B8C(a1, &selRef_subThoroughfare);
      if (v16)
      {
        sub_222DDB4C0();
        v15 = OUTLINED_FUNCTION_4_14();
      }

      else
      {
        v10 = 0;
      }

      OUTLINED_FUNCTION_2_10(v15, sel_setSubThoroughfare_);

      v17 = sub_222DA7B8C(a1, &selRef_locality);
      if (v18)
      {
        sub_222DDB4C0();
        v17 = OUTLINED_FUNCTION_4_14();
      }

      else
      {
        v10 = 0;
      }

      OUTLINED_FUNCTION_2_10(v17, sel_setCity_);

      v19 = OUTLINED_FUNCTION_3_8();
      OUTLINED_FUNCTION_1_9(v19, v20, v21, v22, v23, v24, v25, v26, v61, 0x437972746E756F43, 0xEB0000000065646FLL, v72[0], v73, v74, v75, v76, v77);
      sub_222DCCAA0(v72);
      if (v78)
      {
        if (OUTLINED_FUNCTION_0_15())
        {
          v27 = v64;
          v28 = v68;
          goto LABEL_27;
        }
      }

      else
      {
        sub_222D93730(&v77);
      }

      v27 = 0;
      v28 = 0xE000000000000000;
LABEL_27:
      sub_222D8E490(v27, v28, v2, &selRef_setCountryCode_);

      v29 = OUTLINED_FUNCTION_3_8();
      OUTLINED_FUNCTION_1_9(v29, v30, v31, v32, v33, v34, v35, v36, v62, 0xD000000000000016, 0x8000000222DE1630, v72[0], v73, v74, v75, v76, v77);
      sub_222DCCAA0(v72);
      if (v78)
      {
        if (OUTLINED_FUNCTION_0_15())
        {
          if ((v65 || v69 != 0xE000000000000000) && (sub_222DDBAC0() & 1) == 0)
          {
            sub_222D8E490(v65, v69, v2, &selRef_setStateCode_);
LABEL_40:
            v48 = OUTLINED_FUNCTION_3_8();
            OUTLINED_FUNCTION_1_9(v48, v49, v50, v51, v52, v53, v54, v55, v63, 0x65646F4374736F50, 0xE800000000000000, v72[0], v73, v74, v75, v76, v77);

            sub_222DCCAA0(v72);
            if (v78)
            {
              if (OUTLINED_FUNCTION_0_15())
              {
                v56 = v67;
                v57 = v71;
LABEL_45:
                sub_222D8E490(v56, v57, v2, &selRef_setPostalCode_);
                v58 = *MEMORY[0x277D487C8];
                v59 = sub_222DDB500();
                sub_222D8E490(v59, v60, v2, &selRef_setRegionType_);

                return v2;
              }
            }

            else
            {
              sub_222D93730(&v77);
            }

            v56 = 0;
            v57 = 0xE000000000000000;
            goto LABEL_45;
          }
        }
      }

      else
      {
        sub_222D93730(&v77);
      }

      v37 = OUTLINED_FUNCTION_3_8();
      OUTLINED_FUNCTION_1_9(v37, v38, v39, v40, v41, v42, v43, v44, v63, 0xD000000000000012, 0x8000000222DE1650, v72[0], v73, v74, v75, v76, v77);
      sub_222DCCAA0(v72);
      if (v78)
      {
        if (OUTLINED_FUNCTION_0_15())
        {
          v45 = v66;
          v46 = v70;
LABEL_39:
          sub_222D8E490(v45, v46, v2, &selRef_setStateCode_);
          v47 = v2;
          goto LABEL_40;
        }
      }

      else
      {
        sub_222D93730(&v77);
      }

      v45 = 0;
      v46 = 0xE000000000000000;
      goto LABEL_39;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t OUTLINED_FUNCTION_0_15()
{

  return swift_dynamicCast();
}

double OUTLINED_FUNCTION_1_9(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, __int128 a17)
{

  return sub_222DA0340(&a12, v17, &a17);
}

id OUTLINED_FUNCTION_2_10(uint64_t a1, const char *a2)
{

  return [v2 a2];
}

uint64_t OUTLINED_FUNCTION_3_8()
{

  return sub_222DDB7E0();
}

uint64_t OUTLINED_FUNCTION_4_14()
{
}

id OUTLINED_FUNCTION_5_9()
{

  return [v0 (v1 + 494)];
}

id sub_222DD9204(void *a1, void *a2)
{
  v82 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D048800, &unk_222DE0140);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  v79 = &v79 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v80 = &v79 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D047E38, &qword_222DDDFA0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v81 = &v79 - v10;
  v11 = sub_222DDA100();
  v12 = OUTLINED_FUNCTION_2(v11);
  v14 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v12);
  v18 = &v79 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_222DDA190();
  v20 = OUTLINED_FUNCTION_2(v19);
  v22 = v21;
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v20);
  v26 = &v79 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  sub_222D8E3B4(v27);
  if (v28)
  {
  }

  else
  {
    sub_222DDA180();
    v29 = sub_222DDA170();
    v31 = v30;
    (*(v22 + 8))(v26, v19);
    sub_222DD8580(v29, v31, v27);
  }

  v32 = v82;
  if (a1)
  {
    v33 = [objc_opt_self() assistantIDFromContact_];
    if (v33)
    {
      sub_222DDA0E0();

      v33 = sub_222DDA0D0();
      (*(v14 + 8))(v18, v11);
    }

    v34 = v80;
    v35 = v81;
    v36 = v79;
    [v27 setIdentifier_];

    v37 = [a1 identifier];
    sub_222DDB500();
    OUTLINED_FUNCTION_1_10();
    OUTLINED_FUNCTION_0_16(v38, v39, v40, &selRef_setInternalGUID_);
    v41 = [a1 birthday];
    if (v41)
    {
      v42 = v41;
      sub_222DD9F70();

      v43 = 0;
    }

    else
    {
      v43 = 1;
    }

    v44 = sub_222DD9FC0();
    __swift_storeEnumTagSinglePayload(v36, v43, 1, v44);
    sub_222DD9808(v36, v34);
    if (__swift_getEnumTagSinglePayload(v34, 1, v44) == 1)
    {
      sub_222DD9878(v34);
      v45 = sub_222DDA160();
      __swift_storeEnumTagSinglePayload(v35, 1, 1, v45);
      v46 = 0;
    }

    else
    {
      sub_222DD9F90();
      (*(*(v44 - 8) + 8))(v34, v44);
      v47 = sub_222DDA160();
      v46 = 0;
      if (__swift_getEnumTagSinglePayload(v35, 1, v47) != 1)
      {
        v46 = sub_222DDA140();
        (*(*(v47 - 8) + 8))(v35, v47);
      }
    }

    [v27 setBirthday_];

    v48 = [a1 organizationName];
    sub_222DDB500();
    OUTLINED_FUNCTION_1_10();
    OUTLINED_FUNCTION_0_16(v49, v50, v51, &selRef_setCompany_);
    v52 = [a1 givenName];
    sub_222DDB500();
    OUTLINED_FUNCTION_1_10();
    OUTLINED_FUNCTION_0_16(v53, v54, v55, &selRef_setFirstName_);
    v56 = sub_222D8E87C();
    sub_222D8E490(v56, v57, v27, &selRef_setFullName_);
    v58 = [a1 familyName];
    sub_222DDB500();
    OUTLINED_FUNCTION_1_10();
    OUTLINED_FUNCTION_0_16(v59, v60, v61, &selRef_setLastName_);
    [v27 setMe_];
    v62 = [a1 middleName];
    sub_222DDB500();
    OUTLINED_FUNCTION_1_10();
    OUTLINED_FUNCTION_0_16(v63, v64, v65, &selRef_setMiddleName_);
    v66 = [a1 nickname];
    sub_222DDB500();
    OUTLINED_FUNCTION_1_10();
    OUTLINED_FUNCTION_0_16(v67, v68, v69, &selRef_setNickName_);
    v70 = [a1 namePrefix];
    sub_222DDB500();
    OUTLINED_FUNCTION_1_10();
    OUTLINED_FUNCTION_0_16(v71, v72, v73, &selRef_setPrefix_);
    v74 = [a1 nameSuffix];
    sub_222DDB500();
    OUTLINED_FUNCTION_1_10();
    OUTLINED_FUNCTION_0_16(v75, v76, v77, &selRef_setSuffix_);
  }

  return v27;
}

uint64_t sub_222DD9808(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D048800, &unk_222DE0140);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_222DD9878(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D048800, &unk_222DE0140);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void OUTLINED_FUNCTION_0_16(uint64_t a1, uint64_t a2, uint64_t a3, SEL *a4)
{

  sub_222D8E490(v4, v6, v5, a4);
}

void OUTLINED_FUNCTION_1_10()
{
}

id sub_222DD9914(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  sub_222DD9B58(a1, v6, &unk_27D048870, &unk_222DDE230);
  sub_222D8E490(a2, a3, v6, &selRef_setText_);

  return v6;
}

id sub_222DD99A0(uint64_t a1, uint64_t a2)
{
  v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0487F0, &unk_222DDD310);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_222DDD2F0;
  sub_222DD9B14();
  v6 = v4;
  *(v5 + 32) = sub_222DD9A6C(a1, a2);
  sub_222DD9B58(v5, v6, &qword_27D048888, &unk_222DE0150);

  return v6;
}

id sub_222DD9A6C(uint64_t a1, uint64_t a2)
{
  v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v5 = *MEMORY[0x277D48400];
  v6 = sub_222DDB500();
  v8 = v7;
  v9 = v4;
  sub_222D8E490(v6, v8, v9, &selRef_setOrigin_);
  sub_222D8E490(a1, a2, v9, &selRef_setUtterance_);

  return v9;
}

unint64_t sub_222DD9B14()
{
  result = qword_27D048880;
  if (!qword_27D048880)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27D048880);
  }

  return result;
}

void sub_222DD9B58(uint64_t a1, void *a2, uint64_t *a3, uint64_t *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v5 = sub_222DDB620();

  [a2 setCommands_];
}

uint64_t sub_222DD9BD0(uint64_t a1, uint64_t a2, __int128 *a3)
{
  *(v3 + 16) = a1;
  *(v3 + 24) = a2;
  sub_222D97C84(a3, v3 + 32);
  return v3;
}

uint64_t sub_222DD9C34(uint64_t a1, void (*a2)(void, void), uint64_t a3, const char *a4)
{
  if (qword_27D0475A8 != -1)
  {
    OUTLINED_FUNCTION_3_4();
  }

  v7 = sub_222DDB3E0();
  __swift_project_value_buffer(v7, qword_27D04C910);
  v8 = sub_222DDB3C0();
  v9 = sub_222DDB6B0();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_222D8A000, v8, v9, a4, v10, 2u);
    MEMORY[0x223DCEF40](v10, -1, -1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0487F0, &unk_222DDD310);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_222DDD2F0;
  sub_222DD9E4C();
  v12 = *(a1 + 16);
  v13 = *(a1 + 24);
  v16 = &type metadata for InstalledAppsProvider;
  v17 = &off_28362CB10;
  *(v11 + 32) = sub_222DD82F4(v12, v13, v15);
  sub_222DBAB24(v11, 0, a2);
}

uint64_t sub_222DD9DF4()
{
  sub_222DD9DC4();

  return MEMORY[0x2821FE8D8](v0, 72, 7);
}

unint64_t sub_222DD9E4C()
{
  result = qword_27D048890;
  if (!qword_27D048890)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27D048890);
  }

  return result;
}