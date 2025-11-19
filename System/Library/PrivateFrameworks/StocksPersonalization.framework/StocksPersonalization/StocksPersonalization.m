uint64_t Assembly.init()()
{
  sub_2203BF3A4();
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_22042D3E0;
  v2 = type metadata accessor for UserEventHistoryAssembly();
  v3 = swift_allocObject();
  *(v1 + 56) = v2;
  *(v1 + 64) = sub_2203BF484(qword_280FA0B78, type metadata accessor for UserEventHistoryAssembly);
  *(v1 + 32) = v3;
  v4 = type metadata accessor for WorkServiceAssembly();
  v5 = swift_allocObject();
  *(v1 + 96) = v4;
  *(v1 + 104) = sub_2203BF484(qword_280FA0FB8, type metadata accessor for WorkServiceAssembly);
  *(v1 + 72) = v5;
  *(v0 + 16) = v1;
  return v0;
}

void sub_2203BF3A4()
{
  if (!qword_280FA0260)
  {
    sub_2203BF3FC();
    v0 = sub_22042BF30();
    if (!v1)
    {
      atomic_store(v0, &qword_280FA0260);
    }
  }
}

unint64_t sub_2203BF3FC()
{
  result = qword_280FA2420;
  if (!qword_280FA2420)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_280FA2420);
  }

  return result;
}

uint64_t sub_2203BF484(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2203BF500()
{
  v0 = sub_22042AD40();
  v19 = *(v0 - 8);
  v20 = v0;
  v1 = *(v19 + 64);
  MEMORY[0x28223BE20](v0, v2);
  v18 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_22042AE80();
  v5 = *(v4 - 8);
  v6 = v5[8];
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22042AD70();
  sub_2203BFB80(0, &qword_280FA23E8);
  sub_22042AE40();

  v10 = *MEMORY[0x277D6CF00];
  v11 = v5[13];
  v11(v9, v10, v4);
  sub_22042ACC0();

  v12 = v5[1];
  v12(v9, v4);
  sub_22042AD70();
  sub_22042AE40();

  v11(v9, v10, v4);
  sub_22042ACC0();

  v12(v9, v4);
  sub_22042AD80();
  sub_2203BFB80(0, &unk_280FA07E0);
  sub_22042AE40();

  v11(v9, v10, v4);
  sub_22042ACC0();

  v12(v9, v4);
  sub_22042AD80();
  sub_2203BFBDC();
  sub_22042AE30();

  sub_22042AD70();
  _s7FactoryCMa();
  sub_22042AE30();

  v13 = *MEMORY[0x277D6CF10];
  v11(v9, v13, v4);
  sub_22042ACC0();

  v12(v9, v4);
  sub_22042AD70();
  sub_2203BFB80(0, &qword_280FA22A8);
  sub_22042AE40();

  v11(v9, v13, v4);
  sub_22042ACC0();

  v12(v9, v4);
  sub_22042AD70();
  sub_2203BFCDC();
  sub_22042AE30();

  sub_22042AD80();
  type metadata accessor for StocksUserEventHistorySessionUnarchiver();
  sub_22042AE30();

  v11(v9, v13, v4);
  sub_22042ACC0();

  v12(v9, v4);
  sub_22042AD80();
  sub_22042B920();
  sub_22042AE30();

  sub_22042AD90();
  __swift_project_boxed_opaque_existential_1(v21, v21[3]);
  sub_22042AE00();
  v15 = v18;
  v14 = v19;
  v16 = v20;
  (*(v19 + 104))(v18, *MEMORY[0x277D6CB30], v20);
  sub_22042AE50();
  (*(v14 + 8))(v15, v16);
  return __swift_destroy_boxed_opaque_existential_1(v21);
}

uint64_t sub_2203BFB80(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

void sub_2203BFBDC()
{
  if (!qword_280FA22C8)
  {
    _s7FactoryCMa();
    sub_2203BFC94(qword_280FA16F0, _s7FactoryCMa);
    v0 = sub_22042B420();
    if (!v1)
    {
      atomic_store(v0, &qword_280FA22C8);
    }
  }
}

uint64_t sub_2203BFC94(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_2203BFCDC()
{
  if (!qword_280FA2290)
  {
    type metadata accessor for StocksUserEventHistorySessionUnarchiver();
    sub_2203BFD94(qword_280FA11F0, type metadata accessor for StocksUserEventHistorySessionUnarchiver);
    v0 = sub_22042B4C0();
    if (!v1)
    {
      atomic_store(v0, &qword_280FA2290);
    }
  }
}

uint64_t sub_2203BFD94(unint64_t *a1, void (*a2)(uint64_t))
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

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_1(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_2203BFE70(uint64_t a1)
{
  v2 = sub_22042AD40();
  v28 = *(v2 - 8);
  v29 = v2;
  v3 = *(v28 + 64);
  MEMORY[0x28223BE20](v2, v4);
  v27 = &v24[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_22042AE80();
  v7 = *(v6 - 8);
  v8 = v7[8];
  MEMORY[0x28223BE20](v6, v9);
  v11 = &v24[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_22042AD70();
  sub_220429A10(0, &qword_280FA2328, MEMORY[0x277CFBB00]);
  sub_22042AE30();

  v12 = v7[13];
  v13 = *MEMORY[0x277D6CF10];
  v12(v11);
  sub_22042ACC0();

  v14 = v7[1];
  v14(v11, v6);
  sub_22042AD80();
  type metadata accessor for ComputeServiceRetentionTokenVendor();
  sub_22042AE30();

  sub_22042AD80();
  type metadata accessor for StocksAppFeatureResolvers();
  sub_22042AE30();

  sub_22042AD70();
  sub_2203CFDB8(0, qword_280FA1148);
  sub_22042AE40();

  (v12)(v11, v13, v6);
  sub_22042ACC0();

  v14(v11, v6);
  sub_22042AD80();
  type metadata accessor for UserEventsFeatureResolver();
  sub_22042AE30();

  (v12)(v11, v13, v6);
  sub_22042ACC0();

  v14(v11, v6);
  sub_22042AD80();
  sub_220429A10(0, &qword_280FA2260, MEMORY[0x277D34BC0]);
  sub_22042AE30();

  (v12)(v11, v13, v6);
  sub_22042ACC0();

  v14(v11, v6);
  sub_22042AD80();
  type metadata accessor for UserEventFeaturesFactory();
  sub_22042AE30();

  v34 = v13;
  (v12)(v11, v13, v6);
  sub_22042ACC0();

  v14(v11, v6);
  sub_22042AD80();
  sub_220429A74();
  sub_22042AE30();

  (v12)(v11, v13, v6);
  sub_22042ACC0();

  v14(v11, v6);
  sub_22042AD80();
  sub_22042B290();
  sub_22042AE40();

  sub_22042AD70();
  sub_2203CFDB8(0, &qword_280FA04B0);
  sub_22042AE40();

  sub_22042AD80();
  type metadata accessor for ComputeServiceScoringService();
  sub_22042AE30();

  v31 = v12;
  (v12)(v11, v34, v6);
  sub_22042ACC0();

  v14(v11, v6);
  sub_22042AD70();
  sub_2203CFDB8(0, qword_280FA13B8);
  sub_22042AE40();

  v25 = *MEMORY[0x277D6CF00];
  v12(v11);
  sub_22042ACC0();

  v14(v11, v6);
  v33 = v7 + 1;
  sub_22042AD80();
  type metadata accessor for ComputeServiceConfigurationManager();
  sub_22042AE30();

  v15 = v34;
  v16 = v31;
  v31(v11, v34, v6);
  sub_22042ACC0();

  v14(v11, v6);
  sub_22042AD80();
  sub_22042B3D0();
  sub_22042AE30();

  v16(v11, v15, v6);
  v26 = v7 + 13;
  sub_22042ACC0();

  v32 = v14;
  v14(v11, v6);
  sub_22042AD80();
  sub_2203CFDB8(0, &qword_280FA09F0);
  sub_22042AE40();

  sub_22042AD80();
  type metadata accessor for ComputeServiceUnloaderService();
  sub_22042AE30();

  v16(v11, v25, v6);
  sub_22042ACC0();

  v14(v11, v6);
  sub_22042AD80();
  sub_2203CFDB8(0, &qword_280FA2288);
  sub_22042AE40();

  sub_22042AD80();
  sub_22042B4D0();
  sub_22042AE30();

  sub_22042AD80();
  type metadata accessor for StocksComputeServiceStartupTask();
  sub_22042AE30();

  sub_22042AD90();
  __swift_project_boxed_opaque_existential_1(v35, v35[3]);
  sub_22042AE00();
  v17 = v27;
  v18 = v28;
  v19 = v29;
  (*(v28 + 104))(v27, *MEMORY[0x277D6CB30], v29);
  sub_22042AE50();
  (*(v18 + 8))(v17, v19);
  __swift_destroy_boxed_opaque_existential_1(v35);
  sub_22042AD80();
  sub_22042B2F0();
  sub_22042AE30();

  v20 = v34;
  v21 = v31;
  v31(v11, v34, v6);
  sub_22042ACC0();

  v32(v11, v6);
  sub_22042ACB0();

  sub_22042AD80();
  type metadata accessor for ArticleScoringRequestEventProcessor();
  sub_22042AE30();

  sub_22042AD70();
  sub_2203C109C(0, &unk_280FA2240, MEMORY[0x277D34C00], MEMORY[0x277D83D88]);
  sub_22042AE40();

  v30 = a1;
  sub_22042AD70();
  sub_2203CFDB8(0, &qword_280FA24B8);
  sub_22042AE40();

  sub_22042AD80();
  sub_22042A500();
  sub_22042AE40();

  v21(v11, v20, v6);
  sub_22042ACC0();

  v22 = v32;
  v32(v11, v6);
  sub_22042AD80();
  sub_22042AE40();

  v21(v11, v20, v6);
  sub_22042ACC0();

  v22(v11, v6);
  sub_22042AD80();
  sub_22042AE40();

  v21(v11, v20, v6);
  sub_22042ACC0();

  v22(v11, v6);
  sub_22042AD80();
  sub_22042AE40();

  v21(v11, v20, v6);
  sub_22042ACC0();

  return (v22)(v11, v6);
}

unint64_t sub_2203C0E7C()
{
  result = qword_280FA08E0;
  if (!qword_280FA08E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FA08E0);
  }

  return result;
}

unint64_t sub_2203C0ED4()
{
  result = qword_280FA08D0;
  if (!qword_280FA08D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FA08D0);
  }

  return result;
}

unint64_t sub_2203C0F94()
{
  result = qword_280FA0498;
  if (!qword_280FA0498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FA0498);
  }

  return result;
}

unint64_t sub_2203C0FEC()
{
  result = qword_280FA08D8;
  if (!qword_280FA08D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FA08D8);
  }

  return result;
}

uint64_t sub_2203C1064(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2203C109C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_2203C1100(uint64_t a1, void *a2)
{
  v3 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_2203BFB80(0, &unk_280FA24E0);
  result = sub_22042AD30();
  if (!v10)
  {
    __break(1u);
    goto LABEL_7;
  }

  __swift_project_boxed_opaque_existential_1(v9, v10);
  v5 = sub_22042A9F0();
  result = __swift_destroy_boxed_opaque_existential_1(v9);
  if ((v5 & 1) == 0)
  {
    return result;
  }

  v6 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  v7 = sub_22042B920();
  result = sub_22042AD00();
  if (!result)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  v8 = result;
  v10 = v7;
  v11 = sub_2203BFC94(qword_280FA04C8, MEMORY[0x277D304B8]);
  v9[0] = v8;
  sub_22042ADF0();
  return __swift_destroy_boxed_opaque_existential_1(v9);
}

void sub_2203C12B0()
{
  if (!qword_280FA2558)
  {
    sub_2203C1318(255, &qword_280FA0370, 0x277CCAE18);
    v0 = sub_22042A400();
    if (!v1)
    {
      atomic_store(v0, &qword_280FA2558);
    }
  }
}

uint64_t sub_2203C1318(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

void sub_2203C1360(uint64_t a1, unint64_t *a2, unint64_t *a3)
{
  if (!*a2)
  {
    sub_2203CFDB8(255, a3);
    v4 = sub_22042BF30();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_2203C13B8(void *a1)
{
  v2 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2203C14A4();
  sub_22042B900();
  v3 = sub_22042AD00();

  if (v3)
  {
    v5 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    type metadata accessor for StocksUserEventHistorySessionUnarchiver();
    result = sub_22042AD20();
    if (result)
    {
      sub_2203BFCDC();
      v7 = *(v6 + 48);
      v8 = *(v6 + 52);
      swift_allocObject();
      return sub_22042B4B0();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_2203C14A4()
{
  result = qword_280FA0368;
  if (!qword_280FA0368)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_280FA0368);
  }

  return result;
}

uint64_t sub_2203C1508()
{
  type metadata accessor for StocksUserEventHistorySessionUnarchiver();

  return swift_allocObject();
}

void sub_2203C153C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_2203C15B4()
{
  result = qword_280FA0AC0;
  if (!qword_280FA0AC0)
  {
    type metadata accessor for UserEventsFeatureResolver();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FA0AC0);
  }

  return result;
}

unint64_t sub_2203C1608(uint64_t a1)
{
  result = sub_2203C15B4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_2203C1630()
{
  result = qword_280FA2270;
  if (!qword_280FA2270)
  {
    sub_220429A10(255, &qword_280FA2260, MEMORY[0x277D34BC0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FA2270);
  }

  return result;
}

unint64_t sub_2203C16A4()
{
  result = qword_280FA2278;
  if (!qword_280FA2278)
  {
    sub_2203C1724();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FA2278);
  }

  return result;
}

unint64_t sub_2203C16FC(uint64_t a1)
{
  result = sub_2203C16A4();
  *(a1 + 8) = result;
  return result;
}

void sub_2203C1724()
{
  if (!qword_280FA2260)
  {
    sub_2203C0E7C();
    v0 = sub_22042B510();
    if (!v1)
    {
      atomic_store(v0, &qword_280FA2260);
    }
  }
}

uint64_t sub_2203C1790@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277D6CE30];
  v3 = sub_22042AE60();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

double sub_2203C180C(uint64_t a1)
{
  *(a1 + 224) = 0;
  result = 0.0;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t sub_2203C1834(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 232))
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

uint64_t sub_2203C1894(void *a1, uint64_t a2, uint64_t a3, void (*a4)(char *))
{
  v6 = sub_22042A420();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6, v9);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22042A410();
  v12 = a1;
  a4(v11);

  return (*(v7 + 8))(v11, v6);
}

uint64_t sub_2203C1984()
{
  v1 = v0;
  v26 = sub_22042A790();
  v2 = *(v26 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v26, v4);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280FA0CE8 != -1)
  {
    swift_once();
  }

  v7 = qword_280FA0CF0;
  sub_2203C1EE8();
  v25 = v8;
  v9 = swift_allocObject();
  v24 = xmmword_22042D3F0;
  *(v9 + 16) = xmmword_22042D3F0;
  sub_22042A420();
  sub_2203C1F50();
  v10 = sub_22042BF20();
  v12 = v11;
  *(v9 + 56) = MEMORY[0x277D837D0];
  v13 = sub_2203C1FA8();
  *(v9 + 64) = v13;
  *(v9 + 32) = v10;
  *(v9 + 40) = v12;
  sub_22042BCA0();
  v27 = v7;
  sub_22042B8D0();

  v23 = v1;
  v14 = *(v1 + OBJC_IVAR____TtC21StocksPersonalization29ComputeServiceUnloaderService_configurationManager);
  v15 = v14[6];
  __swift_project_boxed_opaque_existential_1(v14 + 2, v14[5]);
  sub_22042AA40();
  sub_2203C1FFC(&v29);
  (*(v2 + 8))(v6, v26);
  v44[12] = v41;
  v44[13] = v42;
  v44[8] = v37;
  v44[9] = v38;
  v44[10] = v39;
  v44[11] = v40;
  v44[4] = v33;
  v44[5] = v34;
  v44[6] = v35;
  v44[7] = v36;
  v44[0] = v29;
  v44[1] = v30;
  v44[2] = v31;
  v44[3] = v32;
  v47 = v41;
  v48 = v42;
  v46[8] = v37;
  v46[9] = v38;
  v46[10] = v39;
  v46[11] = v40;
  v46[4] = v33;
  v46[5] = v34;
  v46[6] = v35;
  v46[7] = v36;
  v46[0] = v29;
  v46[1] = v30;
  v45 = v43;
  v49 = v43;
  v46[2] = v31;
  v46[3] = v32;
  if (sub_2203C30A8(v46) == 1)
  {
    sub_2203C30C0();
    v16 = swift_allocError();
    swift_willThrow();
    sub_22042BC80();
    v17 = swift_allocObject();
    *(v17 + 16) = v24;
    *&v29 = 0;
    *(&v29 + 1) = 0xE000000000000000;
    v28 = v16;
    sub_2203CFDB8(0, &unk_280FA01A0);
    sub_22042BDF0();
    v18 = v29;
    *(v17 + 56) = MEMORY[0x277D837D0];
    *(v17 + 64) = v13;
    *(v17 + 32) = v18;
    sub_22042B8D0();

    return MEMORY[0x223D7C730](v16);
  }

  else
  {
    sub_2203E34AC(v44);
    v20 = BYTE8(v47);
    sub_22042BCA0();
    if (v20 == 1)
    {
      sub_22042B8D0();
      v21 = *(v23 + OBJC_IVAR____TtC21StocksPersonalization29ComputeServiceUnloaderService_workService);
      return sub_22042B190();
    }

    else
    {
      return sub_22042B8D0();
    }
  }
}

uint64_t sub_2203C1DC4()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = [v0 bundleIdentifier];

  if (v1)
  {
    sub_22042BA30();
  }

  sub_2203C1E9C();
  result = sub_22042BCE0();
  qword_280FA0CF0 = result;
  return result;
}

unint64_t sub_2203C1E9C()
{
  result = qword_280FA0340;
  if (!qword_280FA0340)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280FA0340);
  }

  return result;
}

void sub_2203C1EE8()
{
  if (!qword_280FA01B0)
  {
    sub_2203CFDB8(255, &qword_280FA0190);
    v0 = sub_22042BF30();
    if (!v1)
    {
      atomic_store(v0, &qword_280FA01B0);
    }
  }
}

unint64_t sub_2203C1F50()
{
  result = qword_280FA2548;
  if (!qword_280FA2548)
  {
    sub_22042A420();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FA2548);
  }

  return result;
}

unint64_t sub_2203C1FA8()
{
  result = qword_280FA0490;
  if (!qword_280FA0490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FA0490);
  }

  return result;
}

void sub_2203C1FFC(uint64_t a1@<X8>)
{
  sub_2203C2CFC();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8, v4);
  v6 = &v58 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22042AE70();
  v62 = *(v7 - 8);
  v8 = *(v62 + 64);
  MEMORY[0x28223BE20](v7, v9);
  v61 = &v58 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_22042BA70();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11, v14);
  v16 = &v58 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22042ACE0();
  if (sub_22042ACD0())
  {
    v60 = v7;
    sub_22042AB70();
    sub_22042AB60();
    if (qword_280FA2498 != -1)
    {
      swift_once();
    }

    sub_22042AB50();

    if (v95 == 1)
    {
      sub_22042AB60();
      if (qword_27CF51EF0 != -1)
      {
        swift_once();
      }

      sub_22042AB50();

      v17 = v95;
      v18 = HIBYTE(*(&v95 + 1)) & 0xFLL;
      if ((*(&v95 + 1) & 0x2000000000000000) == 0)
      {
        v18 = v95 & 0xFFFFFFFFFFFFLL;
      }

      if (v18)
      {
        sub_22042BA60();
        v59 = sub_22042BA40();
        v19 = v16;
        v21 = v20;
        (*(v12 + 8))(v19, v11);
        if (v21 >> 60 != 15)
        {

          v23 = sub_22042A380();
          v24 = *(v23 + 48);
          v25 = *(v23 + 52);
          swift_allocObject();
          sub_22042A370();
          sub_2203C0ED4();
          v26 = v59;
          sub_22042A360();

          v77 = v107;
          v78 = v108;
          v79 = v109;
          v73 = v103;
          v74 = v104;
          v75 = v105;
          v76 = v106;
          v69 = v99;
          v70 = v100;
          v71 = v101;
          v72 = v102;
          v65 = v95;
          v66 = v96;
          v67 = v97;
          v68 = v98;
          if (qword_280FA07C8 != -1)
          {
            swift_once();
          }

          sub_2203C1EE8();
          v49 = swift_allocObject();
          *(v49 + 16) = xmmword_22042D3F0;
          v63 = 0;
          v64 = 0xE000000000000000;
          v92 = v77;
          v93 = v78;
          v94 = v79;
          v88 = v73;
          v89 = v74;
          v90 = v75;
          v91 = v76;
          v84 = v69;
          v85 = v70;
          v86 = v71;
          v87 = v72;
          v80 = v65;
          v81 = v66;
          v82 = v67;
          v83 = v68;
          sub_22042BDF0();
          v50 = v63;
          v51 = v64;
          *(v49 + 56) = MEMORY[0x277D837D0];
          *(v49 + 64) = sub_2203C1FA8();
          *(v49 + 32) = v50;
          *(v49 + 40) = v51;
          sub_22042BCA0();
          sub_22042B8D0();
          sub_2203DF298(v26, v21);

          goto LABEL_29;
        }

        if (qword_280FA07C8 != -1)
        {
          swift_once();
        }

        sub_22042BC80();
        sub_2203C1EE8();
        v22 = swift_allocObject();
        *(v22 + 16) = xmmword_22042D3F0;
        *(v22 + 56) = MEMORY[0x277D837D0];
        *(v22 + 64) = sub_2203C1FA8();
        *(v22 + 32) = v17;
        sub_22042B8D0();
      }

      else
      {

        if (qword_280FA07C8 != -1)
        {
          swift_once();
        }

        sub_22042BC80();
        sub_22042B8D0();
      }
    }

    v7 = v60;
  }

  sub_22042A760();
  v27 = v62;
  if ((*(v62 + 48))(v6, 1, v7) != 1)
  {
    (*(v27 + 32))(v61, v6, v7);
    v28 = sub_22042A3E0();
    v29 = *(v28 + 48);
    v30 = *(v28 + 52);
    swift_allocObject();
    sub_22042A3D0();
    sub_2204225B8();
    v39 = sub_22042A3C0();
    v41 = v40;

    v42 = sub_22042A380();
    v43 = *(v42 + 48);
    v44 = *(v42 + 52);
    swift_allocObject();
    sub_22042A370();
    sub_2203C0ED4();
    sub_22042A360();
    v45 = v7;

    v77 = v107;
    v78 = v108;
    v79 = v109;
    v73 = v103;
    v74 = v104;
    v75 = v105;
    v76 = v106;
    v69 = v99;
    v70 = v100;
    v71 = v101;
    v72 = v102;
    v65 = v95;
    v66 = v96;
    v67 = v97;
    v68 = v98;
    if (qword_280FA07C8 != -1)
    {
      swift_once();
    }

    sub_2203C1EE8();
    v46 = swift_allocObject();
    *(v46 + 16) = xmmword_22042D3F0;
    v63 = 0;
    v64 = 0xE000000000000000;
    v92 = v77;
    v93 = v78;
    v94 = v79;
    v88 = v73;
    v89 = v74;
    v90 = v75;
    v91 = v76;
    v84 = v69;
    v85 = v70;
    v86 = v71;
    v87 = v72;
    v80 = v65;
    v81 = v66;
    v82 = v67;
    v83 = v68;
    sub_22042BDF0();
    v47 = v63;
    v48 = v64;
    *(v46 + 56) = MEMORY[0x277D837D0];
    *(v46 + 64) = sub_2203C1FA8();
    *(v46 + 32) = v47;
    *(v46 + 40) = v48;
    sub_22042BCA0();
    sub_22042B8D0();

    sub_2203DF1B0(v39, v41);
    (*(v62 + 8))(v61, v45);
LABEL_29:
    v92 = v77;
    v93 = v78;
    v94 = v79;
    v88 = v73;
    v89 = v74;
    v90 = v75;
    v91 = v76;
    v84 = v69;
    v85 = v70;
    v86 = v71;
    v87 = v72;
    v80 = v65;
    v81 = v66;
    v82 = v67;
    v83 = v68;
    nullsub_1(&v80);
    v52 = v93;
    *(a1 + 192) = v92;
    *(a1 + 208) = v52;
    *(a1 + 224) = v94;
    v53 = v89;
    *(a1 + 128) = v88;
    *(a1 + 144) = v53;
    v54 = v91;
    *(a1 + 160) = v90;
    *(a1 + 176) = v54;
    v55 = v85;
    *(a1 + 64) = v84;
    *(a1 + 80) = v55;
    v56 = v87;
    *(a1 + 96) = v86;
    *(a1 + 112) = v56;
    v57 = v81;
    *a1 = v80;
    *(a1 + 16) = v57;
    v38 = v82;
    v37 = v83;
    goto LABEL_30;
  }

  sub_2203C2F70(v6, sub_2203C2CFC);
  if (qword_280FA07C8 != -1)
  {
    swift_once();
  }

  sub_22042BCA0();
  sub_22042B8D0();
  sub_2203C180C(&v95);
  v31 = v108;
  *(a1 + 192) = v107;
  *(a1 + 208) = v31;
  *(a1 + 224) = v109;
  v32 = v104;
  *(a1 + 128) = v103;
  *(a1 + 144) = v32;
  v33 = v106;
  *(a1 + 160) = v105;
  *(a1 + 176) = v33;
  v34 = v100;
  *(a1 + 64) = v99;
  *(a1 + 80) = v34;
  v35 = v102;
  *(a1 + 96) = v101;
  *(a1 + 112) = v35;
  v36 = v96;
  *a1 = v95;
  *(a1 + 16) = v36;
  v38 = v97;
  v37 = v98;
LABEL_30:
  *(a1 + 32) = v38;
  *(a1 + 48) = v37;
}

void sub_2203C2CFC()
{
  if (!qword_280FA2400)
  {
    sub_22042AE70();
    v0 = sub_22042BCF0();
    if (!v1)
    {
      atomic_store(v0, &qword_280FA2400);
    }
  }
}

uint64_t sub_2203C2D54()
{
  v0 = sub_22042AB90();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0, v3);
  v5 = &v15[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_22042AB80();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6, v8);
  (*(v10 + 104))(&v15[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)], *MEMORY[0x277D6D090]);
  (*(v1 + 104))(v5, *MEMORY[0x277D6D0A8], v0);
  v15[15] = 0;
  sub_2203C2F20(0, &qword_280FA2488);
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  swift_allocObject();
  result = sub_22042ABB0();
  qword_280FA24A0 = result;
  return result;
}

void sub_2203C2F20(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_22042ABA0();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t sub_2203C2F70(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2203C2FD0()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = [v0 bundleIdentifier];

  if (v1)
  {
    sub_22042BA30();
  }

  sub_2203C1E9C();
  result = sub_22042BCE0();
  qword_280FA07D0 = result;
  return result;
}

uint64_t sub_2203C30A8(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

unint64_t sub_2203C30C0()
{
  result = qword_280FA07B8;
  if (!qword_280FA07B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FA07B8);
  }

  return result;
}

void sub_2203C3120(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_2203C3184()
{
  v1 = *v0;
  sub_2203C3120(0, &unk_280FA25E0, MEMORY[0x277D69810], MEMORY[0x277D83940]);
  sub_22042AF00();

  v2 = sub_22042AEA0();
  sub_2203C33A4();
  sub_22042AED0();

  v3 = sub_22042AEA0();
  sub_2203CFDB8(0, &unk_280FA2890);
  v4 = sub_22042AED0();

  return v4;
}

uint64_t sub_2203C32C8()
{
  v1 = v0[11];
  __swift_project_boxed_opaque_existential_1(v0 + 7, v0[10]);
  return sub_22042A9B0();
}

uint64_t sub_2203C3314(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3 | 1;
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

void sub_2203C33A4()
{
  if (!qword_280FA25D8)
  {
    sub_2203C3120(255, &unk_280FA25E0, MEMORY[0x277D69810], MEMORY[0x277D83940]);
    sub_22042A830();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_280FA25D8);
    }
  }
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

uint64_t sub_2203C34EC(uint64_t *a1, uint64_t a2)
{
  v38 = sub_22042AAC0();
  v5 = *(v38 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v38, v7);
  v37 = v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a1;
  sub_2203C37C0(a2 + 16, v39);
  v10 = v40;
  v11 = v41;
  v12 = __swift_project_boxed_opaque_existential_1(v39, v40);
  v13 = *(v9 + 16);
  if (v13)
  {
    v31[1] = v12;
    v31[2] = v11;
    v31[3] = v10;
    v33 = v2;
    v42 = MEMORY[0x277D84F90];
    sub_2203C3A84(0, v13, 0);
    v14 = v42;
    v16 = *(v5 + 16);
    v15 = v5 + 16;
    v17 = *(v15 + 64);
    v32 = v9;
    v18 = v9 + ((v17 + 32) & ~v17);
    v35 = *(v15 + 56);
    v36 = v16;
    v34 = (v15 - 8);
    do
    {
      v19 = v37;
      v20 = v38;
      v21 = v15;
      v36(v37, v18, v38);
      v22 = sub_22042AAB0();
      v24 = v23;
      (*v34)(v19, v20);
      v42 = v14;
      v26 = *(v14 + 16);
      v25 = *(v14 + 24);
      if (v26 >= v25 >> 1)
      {
        sub_2203C3A84((v25 > 1), v26 + 1, 1);
        v14 = v42;
      }

      *(v14 + 16) = v26 + 1;
      v27 = v14 + 16 * v26;
      *(v27 + 32) = v22;
      *(v27 + 40) = v24;
      v18 += v35;
      --v13;
      v15 = v21;
    }

    while (v13);
    v9 = v32;
  }

  sub_22042A9E0();

  *(swift_allocObject() + 16) = v9;

  v28 = sub_22042AEA0();
  sub_2203C33A4();
  v29 = sub_22042AEE0();

  __swift_destroy_boxed_opaque_existential_1(v39);
  return v29;
}

uint64_t sub_2203C3788()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2203C37C0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_2203C3824()
{
  result = qword_280FA0440;
  if (!qword_280FA0440)
  {
    sub_2203C109C(255, &unk_280FA0448, MEMORY[0x277D6CD10], MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FA0440);
  }

  return result;
}

void sub_2203C38AC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_2203C38FC()
{
  if (!qword_280FA2418)
  {
    v0 = sub_22042AD60();
    if (!v1)
    {
      atomic_store(v0, &qword_280FA2418);
    }
  }
}

char *sub_2203C3960(char *result, int64_t a2, char a3, char *a4)
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
    sub_2203CFE74(0, &qword_280FA2560, MEMORY[0x277D837D0], MEMORY[0x277D84560]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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

char *sub_2203C3A84(char *a1, int64_t a2, char a3)
{
  result = sub_2203C3960(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_2203C3AD0()
{
  v1 = *v0;
  sub_2203C3C64(0, &unk_280FA23F0, MEMORY[0x277D84F78] + 8, MEMORY[0x277D6CF30]);

  return sub_22042AEC0();
}

uint64_t sub_2203C3B48()
{
  v2 = *v1;
  v3 = *(*v1 + 528);
  v7 = *v1;
  *(*v1 + 536) = v0;

  if (v0)
  {
    v4 = sub_220421B84;
  }

  else
  {
    v5 = *(v2 + 520);

    v4 = sub_2203C3CB4;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

void sub_2203C3C64(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_2203C3CB4()
{
  v2 = *(v0 + 504);
  v1 = *(v0 + 512);
  v3 = *(v0 + 496);
  sub_2203C1FFC(v0 + 248);
  (*(v2 + 8))(v1, v3);
  v4 = *(v0 + 424);
  v5 = *(v0 + 456);
  *(v0 + 208) = *(v0 + 440);
  *(v0 + 224) = v5;
  v6 = *(v0 + 360);
  v7 = *(v0 + 392);
  v8 = *(v0 + 408);
  *(v0 + 144) = *(v0 + 376);
  *(v0 + 160) = v7;
  *(v0 + 176) = v8;
  *(v0 + 192) = v4;
  v9 = *(v0 + 296);
  v10 = *(v0 + 328);
  v11 = *(v0 + 344);
  *(v0 + 80) = *(v0 + 312);
  *(v0 + 96) = v10;
  *(v0 + 112) = v11;
  *(v0 + 128) = v6;
  v12 = *(v0 + 264);
  v13 = *(v0 + 280);
  *(v0 + 16) = *(v0 + 248);
  *(v0 + 32) = v12;
  *(v0 + 240) = *(v0 + 472);
  *(v0 + 48) = v13;
  *(v0 + 64) = v9;
  if (sub_2203C30A8(v0 + 16) == 1)
  {
    sub_2203C30C0();
    swift_allocError();
    swift_willThrow();
    v14 = *(v0 + 512);
  }

  else
  {
    v16 = *(v0 + 512);
    v17 = *(v0 + 480);
    v18 = *(v0 + 112);
    v20 = *(v0 + 64);
    v19 = *(v0 + 80);
    *(v17 + 80) = *(v0 + 96);
    *(v17 + 96) = v18;
    *(v17 + 48) = v20;
    *(v17 + 64) = v19;
    v21 = *(v0 + 176);
    v23 = *(v0 + 128);
    v22 = *(v0 + 144);
    *(v17 + 144) = *(v0 + 160);
    *(v17 + 160) = v21;
    *(v17 + 112) = v23;
    *(v17 + 128) = v22;
    v25 = *(v0 + 208);
    v24 = *(v0 + 224);
    v26 = *(v0 + 192);
    *(v17 + 224) = *(v0 + 240);
    *(v17 + 192) = v25;
    *(v17 + 208) = v24;
    *(v17 + 176) = v26;
    v27 = *(v0 + 16);
    v28 = *(v0 + 48);
    *(v17 + 16) = *(v0 + 32);
    *(v17 + 32) = v28;
    *v17 = v27;
  }

  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_2203C3E30()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_2203C3F24@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  result = (*(*(a1 + a2 - 8) + 64))(*(a1 + a2 - 16));
  *a3 = result;
  return result;
}

__n128 sub_2203C3F78(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_2203C3F98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    sub_2203D1504(0, qword_280FA05D0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
    v9 = v8;
    v10 = *(*(v8 - 8) + 48);
    v11 = a1 + *(a3 + 104);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_2203C4064(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    sub_2203D1504(0, qword_280FA05D0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
    v8 = v7;
    v9 = *(*(v7 - 8) + 56);
    v10 = v5 + *(a4 + 104);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

uint64_t sub_2203C4124(uint64_t a1, uint64_t a2)
{
  v4 = sub_22042AAC0();
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 3)
  {
    return v5 - 2;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2203C4190(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 2);
  }

  else
  {
    v5 = 0;
  }

  v6 = sub_22042AAC0();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_2203C421C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22042B680();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    sub_2203E16A8(0, qword_280FA2010, type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock, MEMORY[0x277D83D88]);
    v11 = v10;
    v12 = *(*(v10 - 8) + 48);
    v13 = a1 + *(a3 + 20);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_2203C433C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_22042B680();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    sub_2203E16A8(0, qword_280FA2010, type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock, MEMORY[0x277D83D88]);
    v13 = v12;
    v14 = *(*(v12 - 8) + 56);
    v15 = a1 + *(a4 + 20);

    return v14(v15, a2, a2, v13);
  }
}

uint64_t sub_2203C4470(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22042B680();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    sub_2203E16A8(0, qword_280FA2010, type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock, MEMORY[0x277D83D88]);
    v11 = v10;
    v12 = *(*(v10 - 8) + 48);
    v13 = a1 + *(a3 + 20);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_2203C4590(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_22042B680();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    sub_2203E16A8(0, qword_280FA2010, type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock, MEMORY[0x277D83D88]);
    v13 = v12;
    v14 = *(*(v12 - 8) + 56);
    v15 = a1 + *(a4 + 20);

    return v14(v15, a2, a2, v13);
  }
}

uint64_t sub_2203C46CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22042B680();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_2203C4798(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_22042B680();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = a2;
  }

  return result;
}

uint64_t _s21StocksPersonalization27ComputeServiceConfigurationV32FeedPersonalizationConfigurationV22UserEventConfigurationV15EventConditionsV17DurationConditionVwet_0(uint64_t a1, int a2)
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

uint64_t _s21StocksPersonalization27ComputeServiceConfigurationV32FeedPersonalizationConfigurationV22UserEventConfigurationV15EventConditionsV17DurationConditionVwst_0(uint64_t result, int a2, int a3)
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

uint64_t sub_2203C496C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    sub_2203EEEF0(0, &qword_280FA1F80, type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticle.OneOf_Metadata, MEMORY[0x277D83D88]);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 20);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_22042B680();
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 24);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_2203C4AC0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    sub_2203EEEF0(0, &qword_280FA1F80, type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticle.OneOf_Metadata, MEMORY[0x277D83D88]);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_22042B680();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 24);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_2203C4C14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22042B680();
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

uint64_t sub_2203C4CD0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_22042B680();
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

uint64_t sub_2203C4D88(uint64_t a1, uint64_t a2)
{
  v4 = sub_22042AAC0();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_2203C4DF4(uint64_t a1, uint64_t a2)
{
  v4 = sub_22042AAC0();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_2203C4E74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22042B680();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  sub_2203F2458(0, qword_280FA2010, type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock, MEMORY[0x277D83D88]);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  sub_2203F2458(0, &qword_280FA2210, MEMORY[0x277D21628], MEMORY[0x277D83D88]);
  v15 = v14;
  v16 = *(*(v14 - 8) + 48);
  v17 = a1 + *(a3 + 24);

  return v16(v17, a2, v15);
}

uint64_t sub_2203C5014(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_22042B680();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  sub_2203F2458(0, qword_280FA2010, type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock, MEMORY[0x277D83D88]);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
    goto LABEL_5;
  }

  sub_2203F2458(0, &qword_280FA2210, MEMORY[0x277D21628], MEMORY[0x277D83D88]);
  v17 = v16;
  v18 = *(*(v16 - 8) + 56);
  v19 = a1 + *(a4 + 24);

  return v18(v19, a2, a2, v17);
}

uint64_t sub_2203C5338(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_2203F2FE0(0, qword_280FA21D0, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent.OneOf_Event, MEMORY[0x277D83D88]);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_22042B680();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  sub_2203F2FE0(0, &qword_280FA2228, MEMORY[0x277D21570], MEMORY[0x277D83D88]);
  v15 = v14;
  v16 = *(*(v14 - 8) + 48);
  v17 = a1 + *(a3 + 24);

  return v16(v17, a2, v15);
}

uint64_t sub_2203C54D8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_2203F2FE0(0, qword_280FA21D0, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent.OneOf_Event, MEMORY[0x277D83D88]);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  v13 = sub_22042B680();
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
    goto LABEL_5;
  }

  sub_2203F2FE0(0, &qword_280FA2228, MEMORY[0x277D21570], MEMORY[0x277D83D88]);
  v17 = v16;
  v18 = *(*(v16 - 8) + 56);
  v19 = a1 + *(a4 + 24);

  return v18(v19, a2, a2, v17);
}

uint64_t sub_2203C5684(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *a1;
    v5 = v4 >= 2;
    v6 = (v4 + 2147483646) & 0x7FFFFFFF;
    if (v5)
    {
      return (v6 + 1);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v10 = sub_22042B680();
    v11 = *(*(v10 - 8) + 48);
    v12 = &a1[*(a3 + 52)];

    return v11(v12, a2, v10);
  }
}

_BYTE *sub_2203C5730(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *result = a2 + 1;
  }

  else
  {
    v7 = sub_22042B680();
    v8 = *(*(v7 - 8) + 56);
    v9 = &v5[*(a4 + 52)];

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_2203C57D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 12)
  {
    v4 = *(a1 + 8) >> 60;
    if (((4 * v4) & 0xC) != 0)
    {
      return 16 - ((4 * v4) & 0xC | (v4 >> 2));
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = sub_22042B680();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_2203C5888(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 12)
  {
    *result = 0;
    result[1] = (((-a2 >> 2) & 3) - 4 * a2) << 60;
  }

  else
  {
    v7 = sub_22042B680();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_2203C5934(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_2203C594C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2203C5984()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2203C59D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_22042B680();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 32);

      return v11(v12, a2, v10);
    }

    else
    {
      sub_220406D48(0, &qword_280FA2228, MEMORY[0x277D21570], MEMORY[0x277D83D88]);
      v14 = v13;
      v15 = *(*(v13 - 8) + 48);
      v16 = a1 + *(a3 + 36);

      return v15(v16, a2, v14);
    }
  }
}

uint64_t sub_2203C5B24(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_22042B680();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 32);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      sub_220406D48(0, &qword_280FA2228, MEMORY[0x277D21570], MEMORY[0x277D83D88]);
      v14 = v13;
      v15 = *(*(v13 - 8) + 56);
      v16 = v5 + *(a4 + 36);

      return v15(v16, a2, a2, v14);
    }
  }

  return result;
}

uint64_t sub_2203C5CB0@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X8>)
{
  v3 = *(a1 + *(type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadata(0) + 20));
  v4 = OBJC_IVAR____TtCV21StocksPersonalization61Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadataP33_7441C0F8AE1593DAA6735B7CA221A47813_StorageClass__length;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_2203C5E6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22042B680();
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

uint64_t sub_2203C5F28(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_22042B680();
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

uint64_t sub_2203C5FE0(uint64_t a1, uint64_t a2)
{
  v4 = sub_22042AAC0();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_2203C604C(uint64_t a1, uint64_t a2)
{
  v4 = sub_22042AAC0();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_2203C60BC(uint64_t a1, uint64_t a2)
{
  v4 = sub_22042AAC0();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_2203C6128(uint64_t a1, uint64_t a2)
{
  v4 = sub_22042AAC0();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_2203C61A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22042B680();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  sub_220411E24(0, qword_280FA1E98, type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticle, MEMORY[0x277D83D88]);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  sub_220411E24(0, &qword_280FA2210, MEMORY[0x277D21628], MEMORY[0x277D83D88]);
  v15 = v14;
  v16 = *(*(v14 - 8) + 48);
  v17 = a1 + *(a3 + 24);

  return v16(v17, a2, v15);
}

uint64_t sub_2203C6348(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_22042B680();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  sub_220411E24(0, qword_280FA1E98, type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticle, MEMORY[0x277D83D88]);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
    goto LABEL_5;
  }

  sub_220411E24(0, &qword_280FA2210, MEMORY[0x277D21628], MEMORY[0x277D83D88]);
  v17 = v16;
  v18 = *(*(v16 - 8) + 56);
  v19 = a1 + *(a4 + 24);

  return v18(v19, a2, a2, v17);
}

uint64_t sub_2203C64F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_22042B460();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 56);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_2203C65A0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_22042B460();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 56);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_2203C6644()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_2203C667C()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2203C66B4()
{
  sub_220416944(0, &qword_280FA03B8, type metadata accessor for UserEventHistoryEventProcessor.IncomingEvent, MEMORY[0x277D857B8]);
  v2 = v1;
  v3 = *(v1 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 32) & ~v4;
  v6 = (*(v3 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v0 + 16);
  swift_unknownObjectRelease();
  (*(v3 + 8))(v0 + v5, v2);
  v8 = *(v0 + v6);

  return MEMORY[0x2821FE8E8](v0, v6 + 8, v4 | 7);
}

uint64_t sub_2203C67BC()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2203C67F8(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_22042A5B0();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 48);

    return v9(v10, a2, v8);
  }
}

void *sub_2203C68A4(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_22042A5B0();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 48);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_2203C6948(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_22042A750();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_2203C69F4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_22042A750();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

__n128 sub_2203C6AA8(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_2203C6AC4()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2203C6B00()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2203C6B58()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2203C6B90@<X0>(uint64_t isUniquelyReferenced_nonNull_native@<X0>, uint64_t a2@<X8>)
{
  v335 = a2;
  v4 = MEMORY[0x277D83D88];
  sub_2203CB524(0, qword_280FA05D0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List, MEMORY[0x277D83D88]);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8, v7);
  v340 = &v326 - v8;
  v9 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List();
  v348 = *(v9 - 8);
  v349 = v9;
  v10 = *(v348 + 64);
  MEMORY[0x28223BE20](v9, v11);
  v359 = &v326 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2203CB524(0, &unk_280FA22F8, MEMORY[0x277CFBB58], v4);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8, v15);
  v327 = (&v326 - v16);
  v17 = sub_22042B130();
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8, v19);
  v336 = &v326 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v334 = sub_22042B370();
  v333 = *(v334 - 8);
  v21 = *(v333 + 64);
  MEMORY[0x28223BE20](v334, v22);
  v337 = &v326 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v347 = type metadata accessor for EventArticleFeatures();
  v357 = *(v347 - 8);
  v24 = *(v357 + 64);
  v26 = MEMORY[0x28223BE20](v347, v25);
  v358 = &v326 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x28223BE20](v26, v28);
  v356 = &v326 - v30;
  v32 = MEMORY[0x28223BE20](v29, v31);
  v355 = &v326 - v33;
  v35 = MEMORY[0x28223BE20](v32, v34);
  v332 = &v326 - v36;
  v38 = MEMORY[0x28223BE20](v35, v37);
  v354 = &v326 - v39;
  v41 = MEMORY[0x28223BE20](v38, v40);
  v43 = &v326 - v42;
  MEMORY[0x28223BE20](v41, v44);
  v353 = &v326 - v45;
  if (qword_280FA07F0 != -1)
  {
LABEL_164:
    swift_once();
  }

  v46 = qword_280FA07F8;
  sub_22042BCA0();
  v47 = MEMORY[0x277D84F90];
  sub_22042B8D0();
  v362 = 0;
  v363 = 0;
  sub_22042BCA0();
  v48 = sub_22042B8D0();
  v361 = v47;
  v49 = *(isUniquelyReferenced_nonNull_native + 24);
  v360 = v2[2];
  MEMORY[0x28223BE20](v48, v50);
  *(&v326 - 6) = &v363;
  *(&v326 - 5) = &v361;
  *(&v326 - 4) = v49;
  *(&v326 - 3) = &v362;
  *(&v326 - 2) = v2;
  *(&v326 - 1) = isUniquelyReferenced_nonNull_native;
  v338 = isUniquelyReferenced_nonNull_native;
  sub_2203BFCDC();
  isUniquelyReferenced_nonNull_native = v51;
  sub_2203BFD94(&qword_280FA22A0, sub_2203BFCDC);

  sub_22042B4F0();

  sub_2203CB524(0, &qword_280FA01B0, sub_2203CAFEC, MEMORY[0x277D84560]);
  v345 = v52;
  v53 = swift_allocObject();
  *(v53 + 16) = xmmword_22042D3E0;
  v55 = v362;
  v54 = v363;
  v56 = MEMORY[0x277D83B88];
  v57 = MEMORY[0x277D83C10];
  *(v53 + 56) = MEMORY[0x277D83B88];
  *(v53 + 64) = v57;
  *(v53 + 32) = v55;
  *(v53 + 96) = v56;
  *(v53 + 104) = v57;
  *(v53 + 72) = v54;
  sub_22042BCA0();
  v346 = v46;
  sub_22042B8D0();

  sub_22042ACE0();
  v58 = sub_22042ACD0();
  v59 = v349;
  if (v58)
  {
    v344 = v49;
    v60 = v361;
    v352 = *(v361 + 16);
    if (v352)
    {
      v61 = 0;
      v351 = v361 + ((*(v357 + 80) + 32) & ~*(v357 + 80));
      v2 = MEMORY[0x277D84F98];
      v350 = v361;
      do
      {
        if (v61 >= *(v60 + 16))
        {
          __break(1u);
LABEL_162:
          __break(1u);
LABEL_163:
          __break(1u);
          goto LABEL_164;
        }

        v62 = v353;
        sub_2203CB3DC(v351 + *(v357 + 72) * v61, v353, type metadata accessor for EventArticleFeatures);
        v64 = v62[2];
        v63 = v62[3];
        v66 = *v62;
        v65 = v62[1];

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v360 = v2;
        v68 = sub_2203FFB78(v64, v63);
        v69 = v2[2];
        v70 = (v67 & 1) == 0;
        v71 = v69 + v70;
        if (__OFADD__(v69, v70))
        {
          goto LABEL_162;
        }

        v72 = v67;
        if (v2[3] >= v71)
        {
          if (isUniquelyReferenced_nonNull_native)
          {
            if (v67)
            {
              goto LABEL_13;
            }
          }

          else
          {
            sub_220400E6C();
            v2 = v360;
            if (v72)
            {
              goto LABEL_13;
            }
          }
        }

        else
        {
          sub_2203FFBF0(v71, isUniquelyReferenced_nonNull_native);
          v2 = v360;
          v73 = sub_2203FFB78(v64, v63);
          if ((v72 & 1) != (v74 & 1))
          {
            result = sub_22042BF70();
            __break(1u);
            return result;
          }

          v68 = v73;
          if (v72)
          {
LABEL_13:

            goto LABEL_17;
          }
        }

        v2[(v68 >> 6) + 8] |= 1 << v68;
        v75 = (v2[6] + 16 * v68);
        *v75 = v64;
        v75[1] = v63;
        *(v2[7] + 8 * v68) = MEMORY[0x277D84F90];
        v76 = v2[2];
        v77 = __OFADD__(v76, 1);
        v78 = v76 + 1;
        if (v77)
        {
          goto LABEL_163;
        }

        v2[2] = v78;
LABEL_17:
        isUniquelyReferenced_nonNull_native = v2[7];
        v79 = *(isUniquelyReferenced_nonNull_native + 8 * v68);
        v80 = swift_isUniquelyReferenced_nonNull_native();
        *(isUniquelyReferenced_nonNull_native + 8 * v68) = v79;
        if ((v80 & 1) == 0)
        {
          v79 = sub_22041ECD0(0, *(v79 + 2) + 1, 1, v79);
          *(isUniquelyReferenced_nonNull_native + 8 * v68) = v79;
        }

        v82 = *(v79 + 2);
        v81 = *(v79 + 3);
        if (v82 >= v81 >> 1)
        {
          *(isUniquelyReferenced_nonNull_native + 8 * v68) = sub_22041ECD0((v81 > 1), v82 + 1, 1, v79);
        }

        ++v61;
        sub_2203CB444(v353, type metadata accessor for EventArticleFeatures);
        v83 = *(isUniquelyReferenced_nonNull_native + 8 * v68);
        *(v83 + 16) = v82 + 1;
        v84 = v83 + 16 * v82;
        *(v84 + 32) = v66;
        *(v84 + 40) = v65;
        v60 = v350;
      }

      while (v352 != v61);
    }

    v85 = MEMORY[0x277D837D0];
    v86 = swift_allocObject();
    *(v86 + 16) = xmmword_22042D3F0;
    sub_2203C153C(0, &qword_280FA25C8, v85, MEMORY[0x277D83940]);
    v87 = sub_22042B9C0();
    v89 = v88;

    *(v86 + 56) = v85;
    *(v86 + 64) = sub_2203C1FA8();
    *(v86 + 32) = v87;
    *(v86 + 40) = v89;
    sub_22042BCA0();
    sub_22042B8D0();

    v59 = v349;
    v49 = v344;
  }

  v90 = *(v361 + 16);
  v91 = v49 - v90;
  if (v49 > v90)
  {
    v92 = v338[4];
    v93 = *v338;
    *v43 = 0;
    *(v43 + 1) = 0xE000000000000000;
    *(v43 + 2) = 0;
    *(v43 + 3) = 0xE000000000000000;
    *(v43 + 4) = 0;
    *(v43 + 5) = 0xE000000000000000;
    *(v43 + 6) = 0;
    *(v43 + 7) = 0xE000000000000000;
    *(v43 + 8) = 0;
    *(v43 + 9) = 0xE000000000000000;
    *(v43 + 10) = sub_2203CB2EC(0, 0xE000000000000000, v92);
    v94 = MEMORY[0x277D84F90];
    *(v43 + 11) = MEMORY[0x277D84F90];
    *(v43 + 12) = 0;
    *(v43 + 13) = 0xE000000000000000;
    *(v43 + 28) = 0;
    *(v43 + 25) = v93;
    (*(v348 + 56))(&v43[*(v347 + 104)], 1, 1, v59);
    *(v43 + 116) = 0u;
    *(v43 + 132) = 0u;
    *(v43 + 19) = 0;
    *(v43 + 20) = 0xE000000000000000;
    *(v43 + 21) = 0;
    *(v43 + 22) = 0xE000000000000000;
    *(v43 + 23) = v94;
    *(v43 + 24) = v94;
    v95 = sub_2203CAE5C(v43, v91);
    sub_2204127C4(v95);
  }

  sub_2203CB524(0, &unk_280FA0248, sub_2203CB050, MEMORY[0x277D84560]);
  sub_2203CB050();
  v353 = v96;
  v97 = (*(*(v96 - 8) + 80) + 32) & ~*(*(v96 - 8) + 80);
  v351 = *(*(v96 - 8) + 72);
  v98 = swift_allocObject();
  *(v98 + 16) = xmmword_22042D400;
  v331 = v98;
  v350 = v98 + v97;
  sub_22042B120();
  v99 = v361;
  v100 = *(v361 + 16);
  v346 = v361;
  v345 = v100;
  if (v100)
  {
    v360 = MEMORY[0x277D84F90];
    sub_2203C3A84(0, v100, 0);
    v101 = v360;
    v102 = v99 + ((*(v357 + 80) + 32) & ~*(v357 + 80));
    v103 = *(v357 + 72);
    do
    {
      sub_2203CB3DC(v102, v43, type metadata accessor for EventArticleFeatures);
      v105 = *(v43 + 2);
      v104 = *(v43 + 3);

      sub_2203CB444(v43, type metadata accessor for EventArticleFeatures);
      v360 = v101;
      v107 = v101[2];
      v106 = v101[3];
      if (v107 >= v106 >> 1)
      {
        sub_2203C3A84((v106 > 1), v107 + 1, 1);
        v101 = v360;
      }

      v101[2] = v107 + 1;
      v108 = &v101[2 * v107];
      v108[4] = v105;
      v108[5] = v104;
      v102 += v103;
      --v100;
    }

    while (v100);
    v99 = v346;
    v100 = v345;
  }

  v109 = v350;
  v110 = v350 + *(v353 + 48);
  sub_22042B300();
  v111 = v109 + v351;
  sub_22042B120();
  v112 = MEMORY[0x277D84F90];
  if (v100)
  {
    v360 = MEMORY[0x277D84F90];
    sub_2203CE85C(0, v100, 0);
    v112 = v360;
    v113 = v99 + ((*(v357 + 80) + 32) & ~*(v357 + 80));
    v114 = *(v357 + 72);
    v115 = v100;
    do
    {
      sub_2203CB3DC(v113, v43, type metadata accessor for EventArticleFeatures);
      v116 = *(v43 + 35);
      sub_2203CB444(v43, type metadata accessor for EventArticleFeatures);
      v360 = v112;
      v118 = v112[2];
      v117 = v112[3];
      if (v118 >= v117 >> 1)
      {
        sub_2203CE85C((v117 > 1), v118 + 1, 1);
        v112 = v360;
      }

      v112[2] = v118 + 1;
      *(v112 + v118 + 8) = v116;
      v113 += v114;
      --v115;
    }

    while (v115);
    v100 = v345;
  }

  v119 = *(v353 + 48);
  *(v111 + v119) = v112;
  v120 = *MEMORY[0x277CFBB50];
  v121 = sub_22042B310();
  v326 = *(v121 - 8);
  v122 = *(v326 + 104);
  v341 = v120;
  v344 = v121;
  v343 = v326 + 104;
  v342 = v122;
  (v122)(v111 + v119, v120);
  v123 = v350 + 2 * v351;
  sub_22042B120();
  v124 = MEMORY[0x277D84F90];
  if (v100)
  {
    v360 = MEMORY[0x277D84F90];
    sub_2203CE83C(0, v100, 0);
    v124 = v360;
    v125 = v99 + ((*(v357 + 80) + 32) & ~*(v357 + 80));
    v126 = *(v357 + 72);
    v127 = v100;
    do
    {
      sub_2203CB3DC(v125, v43, type metadata accessor for EventArticleFeatures);
      v128 = *(v43 + 36);
      sub_2203CB444(v43, type metadata accessor for EventArticleFeatures);
      v360 = v124;
      v130 = v124[2];
      v129 = v124[3];
      if (v130 >= v129 >> 1)
      {
        sub_2203CE83C((v129 > 1), v130 + 1, 1);
        v124 = v360;
      }

      v124[2] = v130 + 1;
      *(v124 + v130 + 8) = v128;
      v125 += v126;
      --v127;
    }

    while (v127);
  }

  v131 = *(v353 + 48);
  *(v123 + v131) = v124;
  v342(v123 + v131, *MEMORY[0x277CFBB48], v344);
  v132 = v350 + 3 * v351;
  v330 = 0xD000000000000012;
  sub_22042B120();
  if (v100)
  {
    v360 = MEMORY[0x277D84F90];
    sub_2203C3A84(0, v100, 0);
    v133 = v360;
    v134 = v99 + ((*(v357 + 80) + 32) & ~*(v357 + 80));
    v135 = *(v357 + 72);
    do
    {
      sub_2203CB3DC(v134, v43, type metadata accessor for EventArticleFeatures);
      v137 = *(v43 + 4);
      v136 = *(v43 + 5);

      sub_2203CB444(v43, type metadata accessor for EventArticleFeatures);
      v360 = v133;
      v139 = v133[2];
      v138 = v133[3];
      if (v139 >= v138 >> 1)
      {
        sub_2203C3A84((v138 > 1), v139 + 1, 1);
        v133 = v360;
      }

      v133[2] = v139 + 1;
      v140 = &v133[2 * v139];
      v140[4] = v137;
      v140[5] = v136;
      v134 += v135;
      --v100;
    }

    while (v100);
    v99 = v346;
    v100 = v345;
  }

  v141 = v132 + *(v353 + 48);
  sub_22042B300();
  v142 = v350 + 4 * v351;
  sub_22042B120();
  if (v100)
  {
    v360 = MEMORY[0x277D84F90];
    sub_2203C3A84(0, v100, 0);
    v143 = v360;
    v144 = v99 + ((*(v357 + 80) + 32) & ~*(v357 + 80));
    v145 = *(v357 + 72);
    do
    {
      sub_2203CB3DC(v144, v43, type metadata accessor for EventArticleFeatures);
      v147 = *(v43 + 6);
      v146 = *(v43 + 7);

      sub_2203CB444(v43, type metadata accessor for EventArticleFeatures);
      v360 = v143;
      v149 = v143[2];
      v148 = v143[3];
      if (v149 >= v148 >> 1)
      {
        sub_2203C3A84((v148 > 1), v149 + 1, 1);
        v143 = v360;
      }

      v143[2] = v149 + 1;
      v150 = &v143[2 * v149];
      v150[4] = v147;
      v150[5] = v146;
      v144 += v145;
      --v100;
    }

    while (v100);
    v99 = v346;
    v100 = v345;
  }

  v151 = v142 + *(v353 + 48);
  sub_22042B300();
  v152 = v350 + 5 * v351;
  v329 = 0xD000000000000017;
  sub_22042B120();
  if (v100)
  {
    v360 = MEMORY[0x277D84F90];
    sub_2203C3A84(0, v100, 0);
    v153 = v360;
    v154 = v99 + ((*(v357 + 80) + 32) & ~*(v357 + 80));
    v155 = *(v357 + 72);
    do
    {
      sub_2203CB3DC(v154, v43, type metadata accessor for EventArticleFeatures);
      v157 = *(v43 + 8);
      v156 = *(v43 + 9);

      sub_2203CB444(v43, type metadata accessor for EventArticleFeatures);
      v360 = v153;
      v159 = v153[2];
      v158 = v153[3];
      if (v159 >= v158 >> 1)
      {
        sub_2203C3A84((v158 > 1), v159 + 1, 1);
        v153 = v360;
      }

      v153[2] = v159 + 1;
      v160 = &v153[2 * v159];
      v160[4] = v157;
      v160[5] = v156;
      v154 += v155;
      --v100;
    }

    while (v100);
    v99 = v346;
  }

  v161 = v152 + *(v353 + 48);
  sub_22042B300();
  v328 = v350 + 6 * v351;
  sub_22042B120();
  v162 = *(v99 + 16);
  v339 = v162;
  v163 = v332;
  if (v162)
  {
    v164 = v99 + ((*(v357 + 80) + 32) & ~*(v357 + 80));
    v165 = MEMORY[0x277D84F90];
    v352 = *(v357 + 72);
    v166 = v354;
    do
    {
      sub_2203CB3DC(v164, v166, type metadata accessor for EventArticleFeatures);
      v360 = *(v166 + 80);
      sub_2203C153C(0, &qword_280FA25C8, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
      sub_2203CB0C0();

      v167 = sub_22042BA00();
      v169 = v168;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v165 = sub_22041ECD0(0, *(v165 + 2) + 1, 1, v165);
      }

      v171 = *(v165 + 2);
      v170 = *(v165 + 3);
      v166 = v354;
      if (v171 >= v170 >> 1)
      {
        v165 = sub_22041ECD0((v170 > 1), v171 + 1, 1, v165);
        v166 = v354;
      }

      sub_2203CB444(v166, type metadata accessor for EventArticleFeatures);
      *(v165 + 2) = v171 + 1;
      v172 = &v165[16 * v171];
      *(v172 + 4) = v167;
      *(v172 + 5) = v169;
      v164 += v352;
      --v162;
    }

    while (v162);
  }

  v173 = v328 + *(v353 + 48);
  sub_22042B300();
  v352 = v350 - v351;
  v328 = v350 - v351 + 8 * v351;
  v354 = 0xD000000000000019;
  sub_22042B120();
  v174 = v339;
  if (v339)
  {
    v175 = v346 + ((*(v357 + 80) + 32) & ~*(v357 + 80));
    v176 = MEMORY[0x277D84F90];
    v177 = *(v357 + 72);
    do
    {
      sub_2203CB3DC(v175, v163, type metadata accessor for EventArticleFeatures);
      v360 = *(v163 + 88);
      sub_2203C153C(0, &qword_280FA25C8, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
      sub_2203CB0C0();

      v178 = sub_22042BA00();
      v180 = v179;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v176 = sub_22041ECD0(0, *(v176 + 2) + 1, 1, v176);
      }

      v182 = *(v176 + 2);
      v181 = *(v176 + 3);
      if (v182 >= v181 >> 1)
      {
        v176 = sub_22041ECD0((v181 > 1), v182 + 1, 1, v176);
      }

      sub_2203CB444(v163, type metadata accessor for EventArticleFeatures);
      *(v176 + 2) = v182 + 1;
      v183 = &v176[16 * v182];
      *(v183 + 4) = v178;
      *(v183 + 5) = v180;
      v175 += v177;
      --v174;
    }

    while (v174);
  }

  v184 = v328 + *(v353 + 48);
  sub_22042B300();
  v185 = v350 + 8 * v351;
  sub_22042B120();
  v186 = v345;
  if (v345)
  {
    v360 = MEMORY[0x277D84F90];
    sub_2203C3A84(0, v345, 0);
    v187 = v360;
    v188 = v346 + ((*(v357 + 80) + 32) & ~*(v357 + 80));
    v189 = *(v357 + 72);
    v190 = v186;
    do
    {
      sub_2203CB3DC(v188, v43, type metadata accessor for EventArticleFeatures);
      v192 = *(v43 + 12);
      v191 = *(v43 + 13);

      sub_2203CB444(v43, type metadata accessor for EventArticleFeatures);
      v360 = v187;
      v194 = v187[2];
      v193 = v187[3];
      if (v194 >= v193 >> 1)
      {
        sub_2203C3A84((v193 > 1), v194 + 1, 1);
        v187 = v360;
      }

      v187[2] = v194 + 1;
      v195 = &v187[2 * v194];
      v195[4] = v192;
      v195[5] = v191;
      v188 += v189;
      --v190;
    }

    while (v190);
    v196 = v346;
    v186 = v345;
  }

  else
  {
    v196 = v346;
  }

  v197 = v185 + *(v353 + 48);
  sub_22042B300();
  v198 = v350 + 9 * v351;
  sub_22042B120();
  v199 = MEMORY[0x277D84F90];
  if (v186)
  {
    v360 = MEMORY[0x277D84F90];
    sub_2203CE85C(0, v186, 0);
    v199 = v360;
    v200 = v196 + ((*(v357 + 80) + 32) & ~*(v357 + 80));
    v201 = *(v357 + 72);
    v202 = v186;
    do
    {
      sub_2203CB3DC(v200, v43, type metadata accessor for EventArticleFeatures);
      v203 = *(v43 + 28);
      sub_2203CB444(v43, type metadata accessor for EventArticleFeatures);
      v360 = v199;
      v205 = v199[2];
      v204 = v199[3];
      if (v205 >= v204 >> 1)
      {
        sub_2203CE85C((v204 > 1), v205 + 1, 1);
        v199 = v360;
      }

      v199[2] = v205 + 1;
      *(v199 + v205 + 8) = v203;
      v200 += v201;
      --v202;
    }

    while (v202);
    v186 = v345;
  }

  v206 = *(v353 + 48);
  *(v198 + v206) = v199;
  v342(v198 + v206, v341, v344);
  v207 = v350 + 10 * v351;
  sub_22042B120();
  v208 = MEMORY[0x277D84F90];
  if (v186)
  {
    v360 = MEMORY[0x277D84F90];
    sub_2203CE85C(0, v186, 0);
    v208 = v360;
    v209 = v196 + ((*(v357 + 80) + 32) & ~*(v357 + 80));
    v210 = *(v357 + 72);
    v211 = v186;
    do
    {
      sub_2203CB3DC(v209, v43, type metadata accessor for EventArticleFeatures);
      v212 = *(v43 + 29);
      sub_2203CB444(v43, type metadata accessor for EventArticleFeatures);
      v360 = v208;
      v214 = v208[2];
      v213 = v208[3];
      if (v214 >= v213 >> 1)
      {
        sub_2203CE85C((v213 > 1), v214 + 1, 1);
        v208 = v360;
      }

      v208[2] = v214 + 1;
      *(v208 + v214 + 8) = v212;
      v209 += v210;
      --v211;
    }

    while (v211);
    v196 = v346;
    v186 = v345;
  }

  v215 = *(v353 + 48);
  *(v207 + v215) = v208;
  v342(v207 + v215, v341, v344);
  v216 = v350 + 11 * v351;
  sub_22042B120();
  v217 = MEMORY[0x277D84F90];
  if (v186)
  {
    v360 = MEMORY[0x277D84F90];
    sub_2203CE85C(0, v186, 0);
    v217 = v360;
    v218 = v196 + ((*(v357 + 80) + 32) & ~*(v357 + 80));
    v219 = *(v357 + 72);
    v220 = v186;
    do
    {
      sub_2203CB3DC(v218, v43, type metadata accessor for EventArticleFeatures);
      v221 = *(v43 + 30);
      sub_2203CB444(v43, type metadata accessor for EventArticleFeatures);
      v360 = v217;
      v223 = v217[2];
      v222 = v217[3];
      if (v223 >= v222 >> 1)
      {
        sub_2203CE85C((v222 > 1), v223 + 1, 1);
        v217 = v360;
      }

      v217[2] = v223 + 1;
      *(v217 + v223 + 8) = v221;
      v218 += v219;
      --v220;
    }

    while (v220);
    v196 = v346;
    v186 = v345;
  }

  v224 = *(v353 + 48);
  *(v216 + v224) = v217;
  v342(v216 + v224, v341, v344);
  v225 = v350 + 12 * v351;
  sub_22042B120();
  v226 = MEMORY[0x277D84F90];
  if (v186)
  {
    v360 = MEMORY[0x277D84F90];
    sub_2203CE85C(0, v186, 0);
    v226 = v360;
    v227 = v196 + ((*(v357 + 80) + 32) & ~*(v357 + 80));
    v228 = *(v357 + 72);
    v229 = v186;
    do
    {
      sub_2203CB3DC(v227, v43, type metadata accessor for EventArticleFeatures);
      v230 = *(v43 + 31);
      sub_2203CB444(v43, type metadata accessor for EventArticleFeatures);
      v360 = v226;
      v232 = v226[2];
      v231 = v226[3];
      if (v232 >= v231 >> 1)
      {
        sub_2203CE85C((v231 > 1), v232 + 1, 1);
        v226 = v360;
      }

      v226[2] = v232 + 1;
      *(v226 + v232 + 8) = v230;
      v227 += v228;
      --v229;
    }

    while (v229);
    v196 = v346;
    v186 = v345;
  }

  v233 = *(v353 + 48);
  *(v225 + v233) = v226;
  v342(v225 + v233, v341, v344);
  v234 = v350 + 13 * v351;
  sub_22042B120();
  v235 = MEMORY[0x277D84F90];
  if (v186)
  {
    v360 = MEMORY[0x277D84F90];
    sub_2203CE85C(0, v186, 0);
    v235 = v360;
    v236 = v196 + ((*(v357 + 80) + 32) & ~*(v357 + 80));
    v237 = *(v357 + 72);
    v238 = v186;
    do
    {
      sub_2203CB3DC(v236, v43, type metadata accessor for EventArticleFeatures);
      v239 = *(v43 + 32);
      sub_2203CB444(v43, type metadata accessor for EventArticleFeatures);
      v360 = v235;
      v241 = v235[2];
      v240 = v235[3];
      if (v241 >= v240 >> 1)
      {
        sub_2203CE85C((v240 > 1), v241 + 1, 1);
        v235 = v360;
      }

      v235[2] = v241 + 1;
      *(v235 + v241 + 8) = v239;
      v236 += v237;
      --v238;
    }

    while (v238);
    v196 = v346;
    v186 = v345;
  }

  v242 = *(v353 + 48);
  *(v234 + v242) = v235;
  v342(v234 + v242, v341, v344);
  v243 = v350 + 14 * v351;
  sub_22042B120();
  v244 = MEMORY[0x277D84F90];
  if (v186)
  {
    v360 = MEMORY[0x277D84F90];
    sub_2203CE85C(0, v186, 0);
    v244 = v360;
    v245 = v196 + ((*(v357 + 80) + 32) & ~*(v357 + 80));
    v246 = *(v357 + 72);
    v247 = v186;
    do
    {
      sub_2203CB3DC(v245, v43, type metadata accessor for EventArticleFeatures);
      v248 = *(v43 + 33);
      sub_2203CB444(v43, type metadata accessor for EventArticleFeatures);
      v360 = v244;
      v250 = v244[2];
      v249 = v244[3];
      if (v250 >= v249 >> 1)
      {
        sub_2203CE85C((v249 > 1), v250 + 1, 1);
        v244 = v360;
      }

      v244[2] = v250 + 1;
      *(v244 + v250 + 8) = v248;
      v245 += v246;
      --v247;
    }

    while (v247);
    v196 = v346;
    v186 = v345;
  }

  v251 = *(v353 + 48);
  *(v243 + v251) = v244;
  v342(v243 + v251, v341, v344);
  v252 = v352 + 16 * v351;
  sub_22042B120();
  v253 = MEMORY[0x277D84F90];
  if (v186)
  {
    v360 = MEMORY[0x277D84F90];
    sub_2203CE85C(0, v186, 0);
    v253 = v360;
    v254 = v196 + ((*(v357 + 80) + 32) & ~*(v357 + 80));
    v255 = *(v357 + 72);
    v256 = v186;
    do
    {
      sub_2203CB3DC(v254, v43, type metadata accessor for EventArticleFeatures);
      v257 = *(v43 + 34);
      sub_2203CB444(v43, type metadata accessor for EventArticleFeatures);
      v360 = v253;
      v259 = v253[2];
      v258 = v253[3];
      if (v259 >= v258 >> 1)
      {
        sub_2203CE85C((v258 > 1), v259 + 1, 1);
        v253 = v360;
      }

      v253[2] = v259 + 1;
      *(v253 + v259 + 8) = v257;
      v254 += v255;
      --v256;
    }

    while (v256);
    v186 = v345;
  }

  v260 = *(v353 + 48);
  *(v252 + v260) = v253;
  v342(v252 + v260, v341, v344);
  v261 = v350 + 16 * v351;
  sub_22042B120();
  if (v186)
  {
    v360 = MEMORY[0x277D84F90];
    sub_2203C3A84(0, v186, 0);
    v262 = v360;
    v263 = v196 + ((*(v357 + 80) + 32) & ~*(v357 + 80));
    v264 = *(v357 + 72);
    v265 = v186;
    do
    {
      sub_2203CB3DC(v263, v43, type metadata accessor for EventArticleFeatures);
      v267 = *(v43 + 19);
      v266 = *(v43 + 20);

      sub_2203CB444(v43, type metadata accessor for EventArticleFeatures);
      v360 = v262;
      v269 = v262[2];
      v268 = v262[3];
      if (v269 >= v268 >> 1)
      {
        sub_2203C3A84((v268 > 1), v269 + 1, 1);
        v262 = v360;
      }

      v262[2] = v269 + 1;
      v270 = &v262[2 * v269];
      v270[4] = v267;
      v270[5] = v266;
      v263 += v264;
      --v265;
    }

    while (v265);
    v196 = v346;
    v186 = v345;
  }

  v271 = v261 + *(v353 + 48);
  sub_22042B300();
  v272 = v350 + 17 * v351;
  sub_22042B120();
  if (v186)
  {
    v360 = MEMORY[0x277D84F90];
    sub_2203C3A84(0, v186, 0);
    v273 = v360;
    v274 = v196 + ((*(v357 + 80) + 32) & ~*(v357 + 80));
    v275 = *(v357 + 72);
    do
    {
      v276 = v186;
      sub_2203CB3DC(v274, v43, type metadata accessor for EventArticleFeatures);
      v278 = *(v43 + 21);
      v277 = *(v43 + 22);

      sub_2203CB444(v43, type metadata accessor for EventArticleFeatures);
      v360 = v273;
      v280 = v273[2];
      v279 = v273[3];
      if (v280 >= v279 >> 1)
      {
        sub_2203C3A84((v279 > 1), v280 + 1, 1);
        v273 = v360;
      }

      v273[2] = v280 + 1;
      v281 = &v273[2 * v280];
      v281[4] = v278;
      v281[5] = v277;
      v274 += v275;
      v186 = v276 - 1;
    }

    while (v276 != 1);
    v196 = v346;
  }

  v282 = v272 + *(v353 + 48);
  sub_22042B300();
  v352 = v350 + 18 * v351;
  sub_22042B120();
  v283 = v339;
  if (v339)
  {
    v284 = v196 + ((*(v357 + 80) + 32) & ~*(v357 + 80));
    v285 = MEMORY[0x277D84F90];
    v286 = *(v357 + 72);
    v287 = MEMORY[0x277D837D0];
    v288 = v355;
    do
    {
      sub_2203CB3DC(v284, v288, type metadata accessor for EventArticleFeatures);
      v360 = *(v288 + 184);
      sub_2203C153C(0, &qword_280FA25C8, v287, MEMORY[0x277D83940]);
      sub_2203CB0C0();

      v289 = sub_22042BA00();
      v291 = v290;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v285 = sub_22041ECD0(0, *(v285 + 2) + 1, 1, v285);
      }

      v293 = *(v285 + 2);
      v292 = *(v285 + 3);
      v288 = v355;
      if (v293 >= v292 >> 1)
      {
        v285 = sub_22041ECD0((v292 > 1), v293 + 1, 1, v285);
        v288 = v355;
      }

      sub_2203CB444(v288, type metadata accessor for EventArticleFeatures);
      *(v285 + 2) = v293 + 1;
      v294 = &v285[16 * v293];
      *(v294 + 4) = v289;
      *(v294 + 5) = v291;
      v284 += v286;
      --v283;
    }

    while (v283);
  }

  v295 = v352 + *(v353 + 48);
  sub_22042B300();
  v355 = (v350 + 19 * v351);
  sub_22042B120();
  v296 = v339;
  if (v339)
  {
    v297 = v356;
    v298 = v346 + ((*(v357 + 80) + 32) & ~*(v357 + 80));
    v299 = *(v357 + 72);
    v300 = MEMORY[0x277D84F90];
    v301 = MEMORY[0x277D837D0];
    do
    {
      sub_2203CB3DC(v298, v297, type metadata accessor for EventArticleFeatures);
      v360 = *(v297 + 192);
      sub_2203C153C(0, &qword_280FA25C8, v301, MEMORY[0x277D83940]);
      sub_2203CB0C0();

      v302 = sub_22042BA00();
      v304 = v303;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v300 = sub_22041ECD0(0, *(v300 + 2) + 1, 1, v300);
      }

      v306 = *(v300 + 2);
      v305 = *(v300 + 3);
      v297 = v356;
      if (v306 >= v305 >> 1)
      {
        v300 = sub_22041ECD0((v305 > 1), v306 + 1, 1, v300);
        v297 = v356;
      }

      sub_2203CB444(v297, type metadata accessor for EventArticleFeatures);
      *(v300 + 2) = v306 + 1;
      v307 = &v300[16 * v306];
      *(v307 + 4) = v302;
      *(v307 + 5) = v304;
      v298 += v299;
      --v296;
    }

    while (v296);
  }

  v308 = &v355[*(v353 + 48)];
  sub_22042B300();
  v309 = v337;
  sub_22042B340();
  v310 = v346;
  if (*v338 > 0)
  {
    sub_22042B120();
    v311 = *(v310 + 16);
    v312 = MEMORY[0x277D84F90];
    if (v311)
    {
      v360 = MEMORY[0x277D84F90];
      sub_2203CE7EC(0, v311, 0);
      v312 = v360;
      v313 = v310 + ((*(v357 + 80) + 32) & ~*(v357 + 80));
      v314 = *(v357 + 72);
      v315 = (v348 + 48);
      v316 = v340;
      do
      {
        v317 = v358;
        sub_2203CB3DC(v313, v358, type metadata accessor for EventArticleFeatures);
        sub_2203CB13C(v317 + *(v347 + 104), v316, qword_280FA05D0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
        if ((*v315)(v316, 1, v349) == 1)
        {
          v318 = sub_2203CB1BC(v316, qword_280FA05D0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
          v319 = *(v358 + 200);
          MEMORY[0x28223BE20](v318, v320);
          *(&v326 - 2) = v321;
          sub_2203BFD94(&unk_280FA0618, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
          sub_22042B810();
          v316 = v340;
          v317 = v358;
        }

        else
        {
          sub_2203CB588(v316, v359, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
        }

        sub_2203CB444(v317, type metadata accessor for EventArticleFeatures);
        v360 = v312;
        v323 = *(v312 + 16);
        v322 = *(v312 + 24);
        if (v323 >= v322 >> 1)
        {
          sub_2203CE7EC(v322 > 1, v323 + 1, 1);
          v316 = v340;
          v312 = v360;
        }

        *(v312 + 16) = v323 + 1;
        sub_2203CB588(v359, v312 + ((*(v348 + 80) + 32) & ~*(v348 + 80)) + *(v348 + 72) * v323, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
        v313 += v314;
        --v311;
      }

      while (v311);
      v309 = v337;
    }

    v324 = v327;
    sub_220414A38(v312, v327);

    (*(v326 + 56))(v324, 0, 1, v344);
    sub_22042B390();
  }

  (*(v333 + 32))(v335, v309, v334);
}

uint64_t sub_2203C9454(unint64_t *a1, BOOL *a2, uint64_t *a3, size_t *a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8)
{
  v116 = a7;
  v117 = a8;
  v119 = a5;
  v120 = a4;
  v101 = sub_22042B600();
  v12 = *(v101 - 8);
  v13 = v12[8];
  MEMORY[0x28223BE20](v101, v14);
  v96 = &v91 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x277D83D88];
  sub_2203CB524(0, &qword_280FA2228, MEMORY[0x277D21570], MEMORY[0x277D83D88]);
  v18 = *(*(v17 - 8) + 64);
  v20 = MEMORY[0x28223BE20](v17 - 8, v19);
  v95 = &v91 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20, v22);
  v99 = &v91 - v23;
  v24 = type metadata accessor for EventArticleFeatures();
  v98 = *(v24 - 8);
  v25 = *(v98 + 64);
  MEMORY[0x28223BE20](v24 - 8, v26);
  v111 = &v91 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticle(0);
  v29 = *(*(v28 - 8) + 64);
  v31 = MEMORY[0x28223BE20](v28 - 8, v30);
  v115 = (&v91 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v31, v33);
  v114 = &v91 - v34;
  v113 = type metadata accessor for UserEventFeaturesFactory.Validation();
  v35 = *(*(v113 - 8) + 64);
  MEMORY[0x28223BE20](v113, v36);
  v112 = (&v91 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_2203CB524(0, qword_280FA21D0, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent.OneOf_Event, v16);
  v39 = *(*(v38 - 8) + 64);
  MEMORY[0x28223BE20](v38 - 8, v40);
  v42 = &v91 - v41;
  v118 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent.OneOf_Event(0);
  v43 = *(v118 - 8);
  v44 = *(v43 + 64);
  MEMORY[0x28223BE20](v118, v45);
  v100 = &v91 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent(0);
  v47 = *(v97 - 8);
  v48 = *(v47 + 64);
  v50 = MEMORY[0x28223BE20](v97, v49);
  v121 = &v91 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = *a3 + 1;
  if (__OFADD__(*a3, 1))
  {
    goto LABEL_28;
  }

  v92 = a2;
  *a3 = v53;
  if (qword_280FA0348 != -1)
  {
    goto LABEL_29;
  }

  while (1)
  {
    v54 = *algn_280FA56E8;
    MEMORY[0x28223BE20](v50, v51);
    *(&v91 - 2) = a1;
    v109 = v54;
    v110 = v55;
    result = (v55)(sub_2203CB3D4);
    v57 = a1[2];
    v58 = *(v57 + 16);
    v59 = v100;
    if (!v58)
    {
      break;
    }

    v43 += 48;
    v60 = (v12 + 6);
    v93 = (v12 + 4);
    v94 = (v12 + 1);
    a1 = qword_280FA21D0;
    v107 = v42;
    v108 = a6;
    v105 = v43;
    v106 = v57;
    while (v58 <= *(v57 + 16))
    {
      --v58;
      sub_2203CB3DC(v57 + ((*(v47 + 80) + 32) & ~*(v47 + 80)) + *(v47 + 72) * v58, v121, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent);
      if (*(*v120 + 16) >= v119)
      {
        result = sub_2203CB444(v121, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent);
        goto LABEL_25;
      }

      if (__OFADD__(*a6, 1))
      {
        goto LABEL_27;
      }

      ++*a6;
      v12 = qword_280FA21D0;
      sub_2203CB13C(v121, v42, qword_280FA21D0, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent.OneOf_Event);
      if ((*v43)(v42, 1, v118) == 1)
      {
        sub_2203CB1BC(v42, qword_280FA21D0, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent.OneOf_Event);
      }

      else
      {
        v61 = v47;
        sub_2203CB588(v42, v59, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent.OneOf_Event);
        v62 = v112;
        v63 = v59;
        sub_2203CA1D8(v59, v112, *(v117 + 8), *(v117 + 16));
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        v66 = *v62;
        v67 = v62[1];
        if (EnumCaseMultiPayload == 1)
        {
          MEMORY[0x28223BE20](EnumCaseMultiPayload, v65);
          *(&v91 - 2) = v66;
          *(&v91 - 1) = v67;
          v110(sub_2203CB4A4);

          sub_2203CB444(v63, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent.OneOf_Event);
          v42 = v107;
          a6 = v108;
          v59 = v63;
          v47 = v61;
          v43 = v105;
          v57 = v106;
        }

        else
        {
          sub_2203CB4AC();
          v69 = *(v68 + 48);
          v102 = *(v62 + *(v68 + 64));
          v70 = v114;
          v71 = sub_2203CB588(v62 + v69, v114, type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticle);
          MEMORY[0x28223BE20](v71, v72);
          v103 = v66;
          v104 = v67;
          *(&v91 - 2) = v66;
          *(&v91 - 1) = v67;
          v110(sub_2203CB51C);
          sub_2203CB3DC(v70, v115, type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticle);
          v73 = *(v97 + 24);
          v74 = MEMORY[0x277D21570];
          v75 = v99;
          sub_2203CB13C(v121 + v73, v99, &qword_280FA2228, MEMORY[0x277D21570]);
          v12 = *v60;
          v76 = (*v60)(v75, 1, v101);
          sub_2203CB1BC(v75, &qword_280FA2228, v74);
          v77 = 0.0;
          v47 = v61;
          v57 = v106;
          if (v76 != 1)
          {
            v78 = v121 + v73;
            v79 = v95;
            sub_2203CB13C(v78, v95, &qword_280FA2228, MEMORY[0x277D21570]);
            v80 = v101;
            if ((v12)(v79, 1, v101) == 1)
            {
              v81 = v96;
              sub_22042B5F0();
              if ((v12)(v79, 1, v80) != 1)
              {
                sub_2203CB1BC(v79, &qword_280FA2228, MEMORY[0x277D21570]);
              }
            }

            else
            {
              v81 = v96;
              (*v93)(v96, v79, v80);
            }

            sub_22042B5D0();
            v83 = v82;
            (*v94)(v81, v80);
            v77 = v83;
          }

          sub_2203CFF58(v102, v103, v104, v115, *(v117 + 32), *v117, v111, v77);
          v84 = v120;
          v85 = *v120;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *v84 = v85;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v85 = sub_22041EC9C(0, v85[2] + 1, 1, v85);
            *v120 = v85;
          }

          a6 = v108;
          v88 = v85[2];
          v87 = v85[3];
          if (v88 >= v87 >> 1)
          {
            v90 = sub_22041EC9C(v87 > 1, v88 + 1, 1, v85);
            *v120 = v90;
          }

          sub_2203CB444(v114, type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticle);
          v59 = v100;
          sub_2203CB444(v100, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent.OneOf_Event);
          v89 = *v120;
          *(v89 + 16) = v88 + 1;
          sub_2203CB588(v111, v89 + ((*(v98 + 80) + 32) & ~*(v98 + 80)) + *(v98 + 72) * v88, type metadata accessor for EventArticleFeatures);
          v42 = v107;
          v43 = v105;
        }
      }

      result = sub_2203CB444(v121, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent);
      if (!v58)
      {
        goto LABEL_25;
      }
    }

    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    v50 = swift_once();
  }

LABEL_25:
  *v92 = *(*v120 + 16) >= v119;
  return result;
}

uint64_t sub_2203C9EFC(void *a1)
{
  v2 = MEMORY[0x277D21570];
  sub_2203CB524(0, &qword_280FA2228, MEMORY[0x277D21570], MEMORY[0x277D83D88]);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8, v5);
  v7 = v18 - v6;
  v8 = sub_22042B600();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8, v11);
  v13 = v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = 0;
  v20 = 0xE000000000000000;
  sub_22042BD70();
  MEMORY[0x223D7BDE0](0xD000000000000013, 0x8000000220431700);
  MEMORY[0x223D7BDE0](*a1, a1[1]);
  MEMORY[0x223D7BDE0](2108704, 0xE300000000000000);
  v14 = type metadata accessor for Com_Apple_Stocks_Personalization_Session();
  sub_2203CB13C(a1 + *(v14 + 36), v7, &qword_280FA2228, v2);
  v15 = *(v9 + 48);
  if (v15(v7, 1, v8) == 1)
  {
    sub_22042B5F0();
    if (v15(v7, 1, v8) != 1)
    {
      sub_2203CB1BC(v7, &qword_280FA2228, MEMORY[0x277D21570]);
    }
  }

  else
  {
    (*(v9 + 32))(v13, v7, v8);
  }

  sub_22042BDF0();
  (*(v9 + 8))(v13, v8);
  MEMORY[0x223D7BDE0](0x206874697720, 0xE600000000000000);
  v18[1] = *(a1[2] + 16);
  v16 = sub_22042BF20();
  MEMORY[0x223D7BDE0](v16);

  MEMORY[0x223D7BDE0](0x73746E65766520, 0xE700000000000000);
  return v19;
}

uint64_t sub_2203CA1D8@<X0>(uint64_t a1@<X0>, void *a2@<X8>, double a3@<D0>, double a4@<D1>)
{
  v8 = MEMORY[0x277D83D88];
  sub_2203CB524(0, &qword_280FA2210, MEMORY[0x277D21628], MEMORY[0x277D83D88]);
  v10 = *(*(v9 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v9 - 8, v11);
  v92 = &v87 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v12, v14);
  v94 = &v87 - v16;
  MEMORY[0x28223BE20](v15, v17);
  v96 = &v87 - v18;
  v19 = sub_22042B650();
  v98 = *(v19 - 8);
  v99 = v19;
  v20 = *(v98 + 64);
  v22 = MEMORY[0x28223BE20](v19, v21);
  v91 = &v87 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x28223BE20](v22, v24);
  v93 = &v87 - v26;
  MEMORY[0x28223BE20](v25, v27);
  v95 = &v87 - v28;
  v29 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionEventArticleRead();
  v30 = *(*(v29 - 8) + 64);
  MEMORY[0x28223BE20](v29, v31);
  v100 = &v87 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent.OneOf_Event(0);
  v34 = *(*(v33 - 8) + 64);
  v36 = MEMORY[0x28223BE20](v33, v35);
  v97 = &v87 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v36, v38);
  v40 = &v87 - v39;
  sub_2203CB524(0, qword_280FA1E98, type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticle, v8);
  v42 = *(*(v41 - 8) + 64);
  MEMORY[0x28223BE20](v41 - 8, v43);
  v45 = &v87 - v44;
  v46 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticle(0);
  v47 = *(v46 - 8);
  v48 = *(v47 + 64);
  MEMORY[0x28223BE20](v46, v49);
  v51 = &v87 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  Com_Apple_Stocks_Personalization_SessionEvent.OneOf_Event.article.getter(v45);
  if ((*(v47 + 48))(v45, 1, v46) == 1)
  {
    sub_2203CB1BC(v45, qword_280FA1E98, type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticle);
    *a2 = 0xD00000000000001ALL;
    a2[1] = 0x80000002204315E0;
    goto LABEL_3;
  }

  sub_2203CB588(v45, v51, type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticle);
  sub_2203CB3DC(a1, v40, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent.OneOf_Event);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v63 = 0x8000000220431620;
      sub_2203CB444(v51, type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticle);
      v64 = 0xD00000000000001BLL;
    }

    else
    {
      v63 = 0x8000000220431600;
      sub_2203CB444(v51, type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticle);
      v64 = 0xD00000000000001DLL;
    }
  }

  else
  {
    if (!EnumCaseMultiPayload)
    {
      v54 = v100;
      v55 = sub_2203CB588(v40, v100, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEventArticleRead);
      if (a4 <= 0.0 || (sub_2203CB248(v55, 0.0, 1.0), v56 >= a4))
      {
        v101 = 0;
        v102 = 0xE000000000000000;
        sub_22042BD70();
        MEMORY[0x223D7BDE0](0xD000000000000024, 0x8000000220431670);
        sub_22042BBE0();
        MEMORY[0x223D7BDE0](0x74617320746F6E20, 0xEE00646569667369);
        v65 = v101;
        v66 = v102;
        sub_2203CB444(v54, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEventArticleRead);
        v67 = v51;
      }

      else
      {
        v88 = *(v29 + 24);
        v57 = v96;
        sub_2203CB13C(v54 + v88, v96, &qword_280FA2210, MEMORY[0x277D21628]);
        v59 = v98;
        v58 = v99;
        v60 = *(v98 + 48);
        v61 = v60(v57, 1, v99);
        v89 = v60;
        v90 = v51;
        if (v61 == 1)
        {
          v62 = v95;
          sub_22042B640();
          if (v60(v57, 1, v58) != 1)
          {
            sub_2203CB1BC(v57, &qword_280FA2210, MEMORY[0x277D21628]);
          }
        }

        else
        {
          v62 = v95;
          (*(v59 + 32))(v95, v57, v58);
        }

        sub_22042B620();
        v69 = v68;
        v70 = *(v59 + 8);
        v70(v62, v58);
        if (v69 >= a3)
        {
          sub_2203CB3DC(a1, v97, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent.OneOf_Event);
          v74 = swift_getEnumCaseMultiPayload();
          v75 = v89;
          if (v74 > 1)
          {
            if (v74 == 2)
            {
              v76 = 0xEB000000006C6F62;
              v77 = 0x6D79536863746177;
            }

            else
            {
              v76 = 0xED00006C6F626D79;
              v77 = 0x5368637461776E75;
            }
          }

          else if (v74)
          {
            v76 = 0xEF74697369566465;
            v77 = 0x65466C6F626D7973;
          }

          else
          {
            v76 = 0xEB00000000646165;
            v77 = 0x52656C6369747261;
          }

          sub_2203CB4AC();
          v79 = v78;
          v80 = *(v78 + 48);
          sub_2203CB444(v97, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent.OneOf_Event);
          *a2 = v77;
          a2[1] = v76;
          v81 = a2;
          sub_2203CB3DC(v90, a2 + v80, type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticle);
          v82 = v94;
          sub_2203CB13C(v100 + v88, v94, &qword_280FA2210, MEMORY[0x277D21628]);
          v83 = v99;
          if (v75(v82, 1, v99) == 1)
          {
            v84 = v93;
            sub_22042B640();
            if (v75(v82, 1, v83) != 1)
            {
              sub_2203CB1BC(v82, &qword_280FA2210, MEMORY[0x277D21628]);
            }
          }

          else
          {
            v84 = v93;
            (*(v98 + 32))(v93, v82, v83);
          }

          v85 = *(v79 + 64);
          v86 = sub_22042B630();
          v70(v84, v83);
          sub_2203CB444(v100, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEventArticleRead);
          sub_2203CB444(v90, type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticle);
          *(v81 + v85) = v86;
          type metadata accessor for UserEventFeaturesFactory.Validation();
          return swift_storeEnumTagMultiPayload();
        }

        v101 = 0;
        v102 = 0xE000000000000000;
        sub_22042BD70();
        MEMORY[0x223D7BDE0](0xD000000000000021, 0x80000002204316A0);
        v71 = v92;
        sub_2203CB13C(v100 + v88, v92, &qword_280FA2210, MEMORY[0x277D21628]);
        v72 = v89;
        if (v89(v71, 1, v58) == 1)
        {
          v73 = v91;
          sub_22042B640();
          if (v72(v71, 1, v58) != 1)
          {
            sub_2203CB1BC(v71, &qword_280FA2210, MEMORY[0x277D21628]);
          }
        }

        else
        {
          v73 = v91;
          (*(v98 + 32))(v91, v71, v58);
        }

        sub_22042B620();
        v70(v73, v58);
        sub_22042BBE0();
        MEMORY[0x223D7BDE0](0xD000000000000027, 0x80000002204316D0);
        sub_22042BBE0();
        v65 = v101;
        v66 = v102;
        sub_2203CB444(v100, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEventArticleRead);
        v67 = v90;
      }

      sub_2203CB444(v67, type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticle);
      *a2 = v65;
      a2[1] = v66;
LABEL_3:
      type metadata accessor for UserEventFeaturesFactory.Validation();
      return swift_storeEnumTagMultiPayload();
    }

    v63 = 0x8000000220431640;
    sub_2203CB444(v51, type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticle);
    v64 = 0xD000000000000020;
  }

  *a2 = v64;
  a2[1] = v63;
  type metadata accessor for UserEventFeaturesFactory.Validation();
  swift_storeEnumTagMultiPayload();
  return sub_2203CB444(v40, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent.OneOf_Event);
}

unint64_t sub_2203CAD5C(uint64_t a1, uint64_t a2)
{
  sub_22042BD70();

  MEMORY[0x223D7BDE0](a1, a2);
  return 0xD000000000000010;
}

unint64_t sub_2203CADDC(uint64_t a1, uint64_t a2)
{
  sub_22042BD70();

  MEMORY[0x223D7BDE0](a1, a2);
  return 0xD000000000000017;
}

uint64_t sub_2203CAE5C(uint64_t result, uint64_t a2)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = result;
    if (a2)
    {
      v4 = type metadata accessor for EventArticleFeatures();
      v5 = sub_22042BB50();
      *(v5 + 16) = a2;
      v6 = *(v4 - 8);
      v7 = (*(v6 + 80) + 32) & ~*(v6 + 80);
      sub_2203CB3DC(v3, v5 + v7, type metadata accessor for EventArticleFeatures);
      v8 = a2 - 1;
      if (a2 != 1)
      {
        v9 = *(v6 + 72);
        v10 = v5 + v9 + v7;
        do
        {
          sub_2203CB3DC(v3, v10, type metadata accessor for EventArticleFeatures);
          v10 += v9;
          --v8;
        }

        while (v8);
      }
    }

    else
    {
      v5 = MEMORY[0x277D84F90];
    }

    sub_2203CB444(v3, type metadata accessor for EventArticleFeatures);
    return v5;
  }

  return result;
}

uint64_t sub_2203CAF7C()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

unint64_t sub_2203CAFEC()
{
  result = qword_280FA0190;
  if (!qword_280FA0190)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_280FA0190);
  }

  return result;
}

void sub_2203CB050()
{
  if (!qword_280FA2350)
  {
    sub_22042B130();
    sub_22042B310();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_280FA2350);
    }
  }
}

unint64_t sub_2203CB0C0()
{
  result = qword_280FA0410;
  if (!qword_280FA0410)
  {
    sub_2203C153C(255, &qword_280FA25C8, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FA0410);
  }

  return result;
}

uint64_t sub_2203CB13C(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_2203CB524(0, a3, a4, MEMORY[0x277D83D88]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_2203CB1BC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_2203CB524(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_2203CB248(uint64_t result, double a2, double a3)
{
  if (a2 == a3)
  {
    __break(1u);
    goto LABEL_7;
  }

  v5 = a3 - a2;
  if (COERCE__INT64(fabs(a3 - a2)) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  v6 = result;
  v7 = 0;
  result = MEMORY[0x223D7C8D0](&v7, 8);
  if (v5 * vcvtd_n_f64_u64(v7 & 0x1FFFFFFFFFFFFFLL, 0x35uLL) + a2 == a3)
  {
    return sub_2203CB248(v6, a2, a3);
  }

  return result;
}

void *sub_2203CB2EC(void *result, uint64_t a2, uint64_t a3)
{
  if (a3 < 0)
  {
    __break(1u);
  }

  else
  {
    if (!a3)
    {
      return MEMORY[0x277D84F90];
    }

    v4 = result;
    v6 = sub_22042BB50();
    v7 = v6;
    v6[2] = a3;
    v6[4] = v4;
    v6[5] = a2;
    v8 = a3 - 1;
    if (v8)
    {
      v9 = v6 + 7;
      do
      {
        *(v9 - 1) = v4;
        *v9 = a2;

        v9 += 2;
        --v8;
      }

      while (v8);
    }

    return v7;
  }

  return result;
}

uint64_t type metadata accessor for UserEventFeaturesFactory.Validation()
{
  result = qword_280FA0CB0;
  if (!qword_280FA0CB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2203CB3DC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2203CB444(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_2203CB4AC()
{
  if (!qword_280FA0458)
  {
    type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticle(255);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_280FA0458);
    }
  }
}

void sub_2203CB524(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_2203CB588(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_2203CB644()
{
  sub_2203CB4AC();
  if (v0 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
  }
}

uint64_t sub_2203CB6B8(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2203CB6D8(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
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

  *(result + 4) = v3;
  return result;
}

id AccessCheckerHasBundleSubscription(_:to:lineNumber:)(void *a1, uint64_t a2, uint64_t a3, int a4)
{
  if (!a3)
  {
    return 0;
  }

  v6 = [objc_msgSend(a1 bundleSubscriptionProvider)];
  swift_unknownObjectRelease();
  if (objc_getAssociatedObject(v6, v6 + 1))
  {
    sub_22042BD00();
    swift_unknownObjectRelease();
  }

  else
  {
    v17 = 0u;
    v18 = 0u;
  }

  v19 = v17;
  v20 = v18;
  if (!*(&v18 + 1))
  {
    sub_2203CB99C(&v19);
    goto LABEL_11;
  }

  sub_2203CBA4C();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_11:
    v8 = 0;
    v9 = 0;
    goto LABEL_12;
  }

  v8 = v16;
  v9 = [v16 integerValue];
  if (v9 == -1)
  {
LABEL_20:

    if ((((v9 + a4) ^ a4) & 1) == 0)
    {
      return 0;
    }

LABEL_18:
    v12 = [objc_msgSend(a1 bundleSubscriptionProvider)];
    swift_unknownObjectRelease();
    v13 = [v12 bundleChannelIDs];

    v14 = sub_22042BA20();
    v15 = [v13 containsObject_];

    return v15;
  }

LABEL_12:
  if (objc_getAssociatedObject(v6, ~v9))
  {
    sub_22042BD00();
    swift_unknownObjectRelease();
  }

  else
  {
    v17 = 0u;
    v18 = 0u;
  }

  v19 = v17;
  v20 = v18;
  if (!*(&v18 + 1))
  {
    sub_2203CB99C(&v19);
    goto LABEL_20;
  }

  sub_2203CBA4C();
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_20;
  }

  v10 = v16;
  v11 = [v10 integerValue];

  if (((v11 - a4) ^ (v9 + a4)))
  {
    goto LABEL_18;
  }

  return 0;
}

uint64_t sub_2203CB99C(uint64_t a1)
{
  sub_2203CB9F8();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_2203CB9F8()
{
  if (!qword_280FA0188)
  {
    v0 = sub_22042BCF0();
    if (!v1)
    {
      atomic_store(v0, &qword_280FA0188);
    }
  }
}

unint64_t sub_2203CBA4C()
{
  result = qword_280FA0350;
  if (!qword_280FA0350)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280FA0350);
  }

  return result;
}

BOOL AccessCheckerHasAccess(_:toItemPaid:isBundlePaid:channelID:lineNumber:)(id a1, char a2, char a3, uint64_t a4, uint64_t a5, int a6)
{
  if (a2)
  {
    v11 = [a1 purchaseProvider];
    if (!a5)
    {
      swift_unknownObjectRelease();
      return 0;
    }

    v12 = [v11 purchasedTagIDs];
    v13 = sub_22042BBF0();

    LOBYTE(v12) = sub_2203CC928(a4, a5, v13);

    swift_unknownObjectRelease();
    if ((v12 & 1) == 0)
    {
      if ((a3 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_8;
    }

    return 1;
  }

  if ((a3 & 1) == 0)
  {
    return 1;
  }

  if (!a5)
  {
    return 0;
  }

LABEL_8:
  v14 = [objc_msgSend(a1 bundleSubscriptionProvider)];
  swift_unknownObjectRelease();
  if (objc_getAssociatedObject(v14, v14 + 1))
  {
    sub_22042BD00();
    swift_unknownObjectRelease();
  }

  else
  {
    v25 = 0u;
    v26 = 0u;
  }

  v27 = v25;
  v28 = v26;
  if (!*(&v26 + 1))
  {
    sub_2203CB99C(&v27);
    goto LABEL_17;
  }

  sub_2203CBA4C();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_17:
    v15 = 0;
    v16 = 0;
    goto LABEL_18;
  }

  v15 = v24;
  v16 = [v24 integerValue];
  if (v16 == -1)
  {
LABEL_26:

    if ((((v16 + a6) ^ a6) & 1) == 0)
    {
      return 0;
    }

    goto LABEL_27;
  }

LABEL_18:
  if (objc_getAssociatedObject(v14, ~v16))
  {
    sub_22042BD00();
    swift_unknownObjectRelease();
  }

  else
  {
    v25 = 0u;
    v26 = 0u;
  }

  v27 = v25;
  v28 = v26;
  if (!*(&v26 + 1))
  {
    sub_2203CB99C(&v27);
    goto LABEL_26;
  }

  sub_2203CBA4C();
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_26;
  }

  v17 = v24;
  v18 = [v17 integerValue];

  if ((((v18 - a6) ^ (v16 + a6)) & 1) == 0)
  {
    return 0;
  }

LABEL_27:
  v19 = [objc_msgSend(a1 bundleSubscriptionProvider)];
  swift_unknownObjectRelease();
  v20 = [v19 bundleChannelIDs];

  v21 = sub_22042BA20();
  v22 = [v20 containsObject_];

  return (v22 & 1) != 0;
}

BOOL AccessCheckerHasAccess(_:to:lineNumber:)(void *a1, id a2, int a3)
{
  v6 = [a2 isPaid];
  if ([a2 respondsToSelector_])
  {
    v7 = [a2 isBundlePaid];
  }

  else
  {
    v7 = 0;
  }

  v8 = [a2 sourceChannel];
  if (v8)
  {
    v9 = [v8 identifier];
    swift_unknownObjectRelease();
    v10 = sub_22042BA30();
    v12 = v11;

    if (v6)
    {
      goto LABEL_6;
    }

LABEL_11:
    if (v7)
    {
      goto LABEL_15;
    }

    goto LABEL_12;
  }

  v10 = 0;
  v12 = 0;
  if ((v6 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_6:
  v13 = [a1 purchaseProvider];
  if (v12)
  {
    v14 = [v13 purchasedTagIDs];
    v15 = sub_22042BBF0();

    LOBYTE(v14) = sub_2203CC928(v10, v12, v15);

    swift_unknownObjectRelease();
    if ((v14 & 1) == 0)
    {
      if (!v7)
      {
        goto LABEL_35;
      }

      goto LABEL_15;
    }

LABEL_12:

    return 1;
  }

  swift_unknownObjectRelease();
  if (!v7)
  {
    goto LABEL_35;
  }

LABEL_15:
  if (v12)
  {
    v17 = [objc_msgSend(a1 bundleSubscriptionProvider)];
    swift_unknownObjectRelease();
    if (objc_getAssociatedObject(v17, v17 + 1))
    {
      sub_22042BD00();
      swift_unknownObjectRelease();
    }

    else
    {
      v27 = 0u;
      v28 = 0u;
    }

    v29 = v27;
    v30 = v28;
    if (*(&v28 + 1))
    {
      sub_2203CBA4C();
      if (swift_dynamicCast())
      {
        v18 = v26;
        v19 = [v26 integerValue];
        if (v19 == -1)
        {
LABEL_34:

          if ((((v19 + a3) ^ a3) & 1) == 0)
          {
            goto LABEL_35;
          }

          goto LABEL_31;
        }

        goto LABEL_25;
      }
    }

    else
    {
      sub_2203CB99C(&v29);
    }

    v18 = 0;
    v19 = 0;
LABEL_25:
    if (objc_getAssociatedObject(v17, ~v19))
    {
      sub_22042BD00();
      swift_unknownObjectRelease();
    }

    else
    {
      v27 = 0u;
      v28 = 0u;
    }

    v29 = v27;
    v30 = v28;
    if (!*(&v28 + 1))
    {
      sub_2203CB99C(&v29);
      goto LABEL_34;
    }

    sub_2203CBA4C();
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_34;
    }

    v20 = v26;
    v21 = [v20 integerValue];

    if (((v21 - a3) ^ (v19 + a3)))
    {
LABEL_31:
      v22 = [objc_msgSend(a1 bundleSubscriptionProvider)];
      swift_unknownObjectRelease();
      v23 = [v22 bundleChannelIDs];

      v24 = sub_22042BA20();
      v25 = [v23 containsObject_];

      return (v25 & 1) != 0;
    }

LABEL_35:
  }

  return 0;
}

{
  v6 = [a2 isPaid];
  v7 = [a2 isBundlePaid];
  v8 = [objc_msgSend(a2 sourceChannel)];
  swift_unknownObjectRelease();
  v9 = sub_22042BA30();
  v11 = v10;

  if ((v6 & 1) == 0)
  {
    if (v7)
    {
      goto LABEL_6;
    }

LABEL_8:

    return 1;
  }

  v12 = [objc_msgSend(a1 purchaseProvider)];
  v13 = sub_22042BBF0();

  LOBYTE(v12) = sub_2203CC928(v9, v11, v13);

  swift_unknownObjectRelease();
  if (v12)
  {
    goto LABEL_8;
  }

  if ((v7 & 1) == 0)
  {
    goto LABEL_27;
  }

LABEL_6:
  v14 = [objc_msgSend(a1 bundleSubscriptionProvider)];
  swift_unknownObjectRelease();
  if (objc_getAssociatedObject(v14, v14 + 1))
  {
    sub_22042BD00();
    swift_unknownObjectRelease();
  }

  else
  {
    v24 = 0u;
    v25 = 0u;
  }

  v26 = v24;
  v27 = v25;
  if (!*(&v25 + 1))
  {
    sub_2203CB99C(&v26);
    goto LABEL_16;
  }

  sub_2203CBA4C();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_16:
    v16 = 0;
    v17 = 0;
    goto LABEL_17;
  }

  v16 = v23;
  v17 = [v23 integerValue];
  if (v17 == -1)
  {
LABEL_26:

    if ((((v17 + a3) ^ a3) & 1) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_23;
  }

LABEL_17:
  if (objc_getAssociatedObject(v14, ~v17))
  {
    sub_22042BD00();
    swift_unknownObjectRelease();
  }

  else
  {
    v24 = 0u;
    v25 = 0u;
  }

  v26 = v24;
  v27 = v25;
  if (!*(&v25 + 1))
  {
    sub_2203CB99C(&v26);
    goto LABEL_26;
  }

  sub_2203CBA4C();
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_26;
  }

  v18 = v23;
  v19 = [v18 integerValue];

  if (((v19 - a3) ^ (v17 + a3)))
  {
LABEL_23:
    v20 = [objc_msgSend(a1 bundleSubscriptionProvider)];
    swift_unknownObjectRelease();
    v21 = [v20 bundleChannelIDs];

    v22 = sub_22042BA20();
    LOBYTE(v20) = [v21 containsObject_];

    return (v20 & 1) != 0;
  }

LABEL_27:

  return 0;
}

uint64_t AccessCheckerHasAccess(_:with:lineNumber:)(void *a1, void *a2, int a3)
{
  v6 = [a1 purchaseProvider];
  if ([swift_unknownObjectRetain() tagType] == 3)
  {
    v7 = [a2 asSection];
    if (!v7 || (v8 = [v7 parentID], swift_unknownObjectRelease(), !v8))
    {
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      goto LABEL_8;
    }
  }

  else
  {
    v8 = [a2 identifier];
  }

  v9 = sub_22042BA30();
  v11 = v10;

  v12 = [v6 purchasedTagIDs];
  v13 = sub_22042BBF0();

  LOBYTE(v12) = sub_2203CC928(v9, v11, v13);

  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  if (v12)
  {
    return 1;
  }

LABEL_8:
  v15 = [objc_msgSend(a1 bundleSubscriptionProvider)];
  swift_unknownObjectRelease();
  if (objc_getAssociatedObject(v15, v15 + 1))
  {
    sub_22042BD00();
    swift_unknownObjectRelease();
  }

  else
  {
    v24 = 0u;
    v25 = 0u;
  }

  v26 = v24;
  v27 = v25;
  if (!*(&v25 + 1))
  {
    sub_2203CB99C(&v26);
    goto LABEL_16;
  }

  sub_2203CBA4C();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_16:
    v16 = 0;
    v17 = 0;
    goto LABEL_17;
  }

  v16 = v23;
  v17 = [v23 integerValue];
  if (v17 == -1)
  {
LABEL_27:

    if ((((v17 + a3) ^ a3) & 1) == 0)
    {
      return 0;
    }

    goto LABEL_23;
  }

LABEL_17:
  if (objc_getAssociatedObject(v15, ~v17))
  {
    sub_22042BD00();
    swift_unknownObjectRelease();
  }

  else
  {
    v24 = 0u;
    v25 = 0u;
  }

  v26 = v24;
  v27 = v25;
  if (!*(&v25 + 1))
  {
    sub_2203CB99C(&v26);
    goto LABEL_27;
  }

  sub_2203CBA4C();
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_27;
  }

  v18 = v23;
  v19 = [v18 integerValue];

  if ((((v19 - a3) ^ (v17 + a3)) & 1) == 0)
  {
    return 0;
  }

LABEL_23:
  v20 = [objc_msgSend(a1 bundleSubscriptionProvider)];
  swift_unknownObjectRelease();
  v21 = [a2 identifier];
  if (!v21)
  {
    sub_22042BA30();
    v21 = sub_22042BA20();
  }

  v22 = [v20 containsTagID_];

  return v22;
}

uint64_t sub_2203CC928(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v6 = *(a3 + 40);
  sub_22042BFC0();
  sub_22042BAA0();
  v7 = sub_22042BFE0();
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
    if (v12 || (sub_22042BF50() & 1) != 0)
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

uint64_t Assembly.__allocating_init()()
{
  v0 = swift_allocObject();
  sub_2203BF3A4();
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_22042D3E0;
  v2 = type metadata accessor for UserEventHistoryAssembly();
  v3 = swift_allocObject();
  *(v1 + 56) = v2;
  *(v1 + 64) = sub_2203BF484(qword_280FA0B78, type metadata accessor for UserEventHistoryAssembly);
  *(v1 + 32) = v3;
  v4 = type metadata accessor for WorkServiceAssembly();
  v5 = swift_allocObject();
  *(v1 + 96) = v4;
  *(v1 + 104) = sub_2203BF484(qword_280FA0FB8, type metadata accessor for WorkServiceAssembly);
  *(v1 + 72) = v5;
  *(v0 + 16) = v1;
  return v0;
}

uint64_t Assembly.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t Assembly.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_2203CCBC8(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v39 = a8;
  v48 = a1;
  v49 = a2;
  v11 = *(a5 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](a1, a2);
  v50 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v14 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v52 = *(AssociatedTypeWitness - 8);
  v16 = *(v52 + 64);
  v18 = MEMORY[0x28223BE20](AssociatedTypeWitness, v17);
  v20 = &v37 - v19;
  v21 = *(*(a4 - 8) + 64);
  MEMORY[0x28223BE20](v18, v22);
  v46 = &v37 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = swift_getAssociatedTypeWitness();
  v40 = *(v24 - 8);
  v41 = v24;
  v25 = *(v40 + 64);
  MEMORY[0x28223BE20](v24, v26);
  v28 = &v37 - v27;
  v29 = sub_22042BC30();
  if (!v29)
  {
    return sub_22042BB40();
  }

  v51 = v29;
  v55 = sub_22042BDC0();
  v42 = sub_22042BDD0();
  sub_22042BDA0();
  result = sub_22042BC20();
  if ((v51 & 0x8000000000000000) == 0)
  {
    v37 = v11;
    v38 = a5;
    v31 = 0;
    v43 = (v52 + 16);
    v44 = (v52 + 8);
    v45 = v8;
    while (!__OFADD__(v31, 1))
    {
      v52 = v31 + 1;
      v32 = sub_22042BC60();
      v33 = v20;
      v34 = v20;
      v35 = AssociatedTypeWitness;
      (*v43)(v33);
      v32(v54, 0);
      v36 = v53;
      v48(v34, v50);
      if (v36)
      {
        (*v44)(v34, v35);
        (*(v40 + 8))(v28, v41);

        return (*(v37 + 32))(v39, v50, v38);
      }

      v53 = 0;
      (*v44)(v34, v35);
      sub_22042BDB0();
      result = sub_22042BC40();
      ++v31;
      v20 = v34;
      if (v52 == v51)
      {
        (*(v40 + 8))(v28, v41);
        return v55;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t ComputeServiceScoringService.score<A>(items:identifiedBy:origin:)(uint64_t a1, char *a2, char *a3, char *a4, char *a5)
{
  v74 = a2;
  v77 = a3;
  v8 = sub_22042A680();
  v67 = *(v8 - 8);
  v68 = v8;
  v9 = *(v67 + 64);
  MEMORY[0x28223BE20](v8, v10);
  v66 = &v66 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_22042B130();
  v71 = *(v12 - 8);
  v72 = v12;
  v13 = *(v71 + 64);
  MEMORY[0x28223BE20](v12, v14);
  v69 = &v66 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2203CDA6C();
  v73 = v16;
  v70 = *(v16 - 8);
  v17 = *(v70 + 64);
  MEMORY[0x28223BE20](v16, v18);
  v76 = &v66 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v95 = a1;
  v78[10] = a4;
  v78[11] = a5;
  KeyPath = swift_getKeyPath();
  v78[8] = a5;
  v78[9] = KeyPath;
  v21 = sub_22042BB60();
  swift_getWitnessTable();
  v22 = MEMORY[0x277D837D0];
  v23 = sub_22042BAF0();

  *&v95 = v23;
  v78[4] = a4;
  v78[5] = a5;
  v24 = swift_getKeyPath();
  v78[2] = a5;
  v78[3] = v24;
  WitnessTable = swift_getWitnessTable();
  v27 = sub_2203CCBC8(sub_2203CDB74, v78, v21, v22, MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v26);

  *&v95 = v23;
  v28 = sub_22042BC50();
  if (v28)
  {

    return sub_2203CF834(MEMORY[0x277D84F90]);
  }

  v31 = v75;
  v32 = *&v75[OBJC_IVAR____TtC21StocksPersonalization28ComputeServiceScoringService_computeService];
  MEMORY[0x28223BE20](v28, v29);
  *(&v66 - 8) = a4;
  *(&v66 - 7) = a5;
  *(&v66 - 6) = v27;
  *(&v66 - 5) = v31;
  *(&v66 - 4) = v77;
  *(&v66 - 3) = v23;
  *(&v66 - 2) = v74;
  sub_22042B1C0();
  v74 = v27;

  if (v31[OBJC_IVAR____TtC21StocksPersonalization28ComputeServiceScoringService_isSubscribed] == 1)
  {
    sub_22042B1D0();
    v107 = v92;
    v108 = v93;
    v109 = v94;
    v103 = v88;
    v104 = v89;
    v105 = v90;
    v106 = v91;
    v99 = v84;
    v100 = v85;
    v101 = v86;
    v102 = v87;
    v95 = v80;
    v96 = v81;
    v97 = v82;
    v98 = v83;
    sub_2203CF92C(&v95, v79);
    sub_2203CF988(&v95);
    v75 = v97;
  }

  else
  {
    sub_22042B1D0();
    v107 = v92;
    v108 = v93;
    v109 = v94;
    v103 = v88;
    v104 = v89;
    v105 = v90;
    v106 = v91;
    v99 = v84;
    v100 = v85;
    v101 = v86;
    v102 = v87;
    v95 = v80;
    v96 = v81;
    v97 = v82;
    v98 = v83;
    sub_2203CF92C(&v95, v79);
    sub_2203CF988(&v95);
    v75 = v101;
  }

  sub_2203CF9DC(&v95);
  v34 = v68;
  v33 = v69;
  v35 = v66;
  v36 = v67;
  (*(v67 + 16))(v66, v77, v68);
  v37 = (*(v36 + 88))(v35, v34);
  if (v37 == *MEMORY[0x277D692E0])
  {
    v38 = *(v36 + 8);

    v38(v35, v34);

LABEL_9:
    v39 = v73;
    v40 = v76;
    v41 = v33;
    goto LABEL_11;
  }

  if (v37 == *MEMORY[0x277D692D0])
  {
    goto LABEL_9;
  }

  v39 = v73;
  v40 = v76;
  v41 = v33;
  if (v37 != *MEMORY[0x277D692D8])
  {
    result = sub_22042BF40();
    __break(1u);
    return result;
  }

LABEL_11:

  sub_22042B120();
  sub_2203CFA30();
  v42 = sub_22042B2B0();
  v43 = *(v42 + 16);
  if (v43)
  {
    v44 = v40;
    *&v95 = MEMORY[0x277D84F90];
    v45 = v42;
    sub_2203CE87C(0, v43, 0);
    v46 = v45;
    v47 = v95;
    v48 = *(v95 + 16);
    v49 = 32;
    do
    {
      v50 = *(v46 + v49);
      *&v95 = v47;
      v51 = v47[3];
      if (v48 >= v51 >> 1)
      {
        sub_2203CE87C((v51 > 1), v48 + 1, 1);
        v46 = v45;
        v47 = v95;
      }

      v47[2] = v48 + 1;
      *&v47[v48 + 4] = v50;
      v49 += 4;
      ++v48;
      --v43;
    }

    while (v43);

    v40 = v44;
  }

  else
  {

    v47 = MEMORY[0x277D84F90];
  }

  v52 = v47[2];
  v53 = *(v74 + 2);
  if (v52 == v53)
  {
    if (qword_280FA0808 != -1)
    {
      swift_once();
    }

    sub_2203C1360(0, &qword_280FA01B0, &qword_280FA0190);
    v54 = swift_allocObject();
    v55 = MEMORY[0x277D83B88];
    *(v54 + 16) = xmmword_22042D3F0;
    v56 = MEMORY[0x277D83C10];
    *(v54 + 56) = v55;
    *(v54 + 64) = v56;
    *(v54 + 32) = v52;
    sub_22042BCA0();
    sub_22042B8D0();

    v57 = sub_2203CFADC(v74, v47);

    (*(v71 + 8))(v41, v72);
    (*(v70 + 8))(v40, v39);
    return v57;
  }

  else
  {

    *&v95 = 0;
    *(&v95 + 1) = 0xE000000000000000;
    sub_22042BD70();

    *&v95 = 0x20646E756F46;
    *(&v95 + 1) = 0xE600000000000000;
    *&v80 = v52;
    v58 = sub_22042BF20();
    MEMORY[0x223D7BDE0](v58);

    MEMORY[0x223D7BDE0](0xD000000000000015, 0x80000002204317A0);
    *&v80 = v53;
    v59 = sub_22042BF20();
    MEMORY[0x223D7BDE0](v59);

    v60 = v95;
    sub_2203CFA88();
    v61 = swift_allocError();
    *v62 = v60;
    *(v62 + 16) = 1;
    swift_willThrow();
    (*(v71 + 8))(v41, v72);
    (*(v70 + 8))(v40, v39);
    if (qword_280FA0650 != -1)
    {
      swift_once();
    }

    sub_22042BC80();
    sub_2203C1360(0, &qword_280FA01B0, &qword_280FA0190);
    v63 = swift_allocObject();
    *(v63 + 16) = xmmword_22042D3F0;
    *&v95 = 0;
    *(&v95 + 1) = 0xE000000000000000;
    *&v80 = v61;
    sub_2203CFDB8(0, &unk_280FA01A0);
    sub_22042BDF0();
    v64 = v95;
    *(v63 + 56) = MEMORY[0x277D837D0];
    *(v63 + 64) = sub_2203C1FA8();
    *(v63 + 32) = v64;
    sub_22042B8D0();

    v65 = sub_2203CF834(MEMORY[0x277D84F90]);
    MEMORY[0x223D7C730](v61);
    return v65;
  }
}

void sub_2203CDA6C()
{
  if (!qword_280FA2330)
  {
    sub_2203C0E7C();
    v0 = sub_22042B1E0();
    if (!v1)
    {
      atomic_store(v0, &qword_280FA2330);
    }
  }
}

uint64_t sub_2203CDAC8@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  result = (*(*(a1 + a2 - 8) + 64))(*(a1 + a2 - 16));
  *a3 = result;
  return result;
}

void sub_2203CDB1C(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 itemID];
  v4 = sub_22042BA30();
  v6 = v5;

  *a2 = v4;
  a2[1] = v6;
}

uint64_t sub_2203CDBA0@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v47 = a7;
  v49 = a6;
  v46 = a5;
  v45 = a4;
  v54 = a8;
  v11 = sub_22042B370();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8, v13);
  v51 = &v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_22042A680();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15, v18);
  v20 = &v44 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = sub_22042B130();
  v52 = *(v53 - 8);
  v21 = *(v52 + 64);
  MEMORY[0x28223BE20](v53, v22);
  v50 = &v44 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = a1[9];
  v56[8] = a1[8];
  v56[9] = v24;
  v56[10] = a1[10];
  v25 = a1[5];
  v56[4] = a1[4];
  v56[5] = v25;
  v26 = a1[7];
  v56[6] = a1[6];
  v56[7] = v26;
  v27 = a1[1];
  v56[0] = *a1;
  v56[1] = v27;
  v28 = a1[3];
  v56[2] = a1[2];
  v56[3] = v28;
  if (qword_280FA0808 != -1)
  {
    swift_once();
  }

  sub_2203C1360(0, &qword_280FA01B0, &qword_280FA0190);
  v29 = swift_allocObject();
  v44 = xmmword_22042D3F0;
  *(v29 + 16) = xmmword_22042D3F0;
  v30 = *(a2 + 16);
  v31 = MEMORY[0x277D83C10];
  *(v29 + 56) = MEMORY[0x277D83B88];
  *(v29 + 64) = v31;
  *(v29 + 32) = v30;
  sub_22042BCA0();
  sub_22042B8D0();

  v48 = a3;
  if (*(a3 + OBJC_IVAR____TtC21StocksPersonalization28ComputeServiceScoringService_isSubscribed) == 1)
  {
    v57 = *a1;
  }

  else
  {
    v57 = a1[4];
  }

  sub_2203CFEC4(&v57, v55);

  (*(v16 + 16))(v20, v45, v15);
  v32 = (*(v16 + 88))(v20, v15);
  if (v32 == *MEMORY[0x277D692E0])
  {
    v33 = *(v16 + 8);

    v33(v20, v15);

LABEL_10:

    v34 = v50;
    sub_22042B120();
    sub_2203CFDB8(0, &qword_280FA1128);
    v35 = sub_22042BDE0();
    sub_2203CE184(v56, v35, v51);

    v49 = sub_22042A5C0();
    v48 = v36;
    v47 = qword_27CF524E0;
    sub_2203CFC84(0, &qword_280FA0258, MEMORY[0x277CFBAD0]);
    v37 = v52;
    v38 = *(v52 + 72);
    v39 = (*(v52 + 80) + 32) & ~*(v52 + 80);
    v40 = swift_allocObject();
    *(v40 + 16) = v44;
    v41 = v53;
    (*(v37 + 16))(v40 + v39, v34, v53);

    sub_2204211D0(v40);
    swift_setDeallocating();
    v42 = *(v37 + 8);
    v42(v40 + v39, v41);
    swift_deallocClassInstance();
    sub_22042B320();
    return (v42)(v34, v41);
  }

  if (v32 == *MEMORY[0x277D692D0] || v32 == *MEMORY[0x277D692D8])
  {
    goto LABEL_10;
  }

  result = sub_22042BF40();
  __break(1u);
  return result;
}

uint64_t sub_2203CE184@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v39 = a1;
  v7 = type metadata accessor for ArticleFeatures();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7 - 8, v10);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_22042B530();
  v36 = *(v13 - 8);
  v14 = *(v36 + 64);
  MEMORY[0x28223BE20](v13, v15);
  v35 = &v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(a2 + 16);
  v18 = MEMORY[0x277D84F90];
  if (v17)
  {
    v32 = v13;
    v34 = a3;
    v45 = MEMORY[0x277D84F90];
    sub_2203CE90C(0, v17, 0);
    v38 = *(v3 + OBJC_IVAR____TtC21StocksPersonalization28ComputeServiceScoringService_paidAccessChecker);
    v33 = v3;
    v37 = *(v3 + OBJC_IVAR____TtC21StocksPersonalization28ComputeServiceScoringService_isSubscribed);
    v18 = v45;
    v19 = a2 + 32;
    do
    {
      sub_2203C37C0(v19, v42);
      v20 = [objc_msgSend(v38 bundleSubscriptionProvider)];
      swift_unknownObjectRelease();
      v22 = v43;
      v21 = v44;
      __swift_project_boxed_opaque_existential_1(v42, v43);
      LODWORD(v21) = [v20 containsItem_];

      swift_unknownObjectRelease();
      sub_2203C37C0(v42, v41);
      v23 = v39;
      sub_2203CF92C(v39, &v40);
      sub_2204129E4(v41, v21, v23, v37, v12);
      __swift_destroy_boxed_opaque_existential_1(v42);
      v45 = v18;
      v25 = *(v18 + 16);
      v24 = *(v18 + 24);
      if (v25 >= v24 >> 1)
      {
        sub_2203CE90C(v24 > 1, v25 + 1, 1);
        v18 = v45;
      }

      *(v18 + 16) = v25 + 1;
      sub_2203CFCD8(v12, v18 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v25);
      v19 += 40;
      --v17;
    }

    while (v17);
    v4 = v33;
    a3 = v34;
    v13 = v32;
  }

  v26 = __swift_project_boxed_opaque_existential_1((v4 + OBJC_IVAR____TtC21StocksPersonalization28ComputeServiceScoringService_articleFeaturesFactory), *(v4 + OBJC_IVAR____TtC21StocksPersonalization28ComputeServiceScoringService_articleFeaturesFactory + 24));
  v27 = v39[6];
  v28 = v39[16];
  v29 = v35;
  sub_22042B520();
  v30 = *v26;
  sub_220416D60(v18, v29, a3);

  return (*(v36 + 8))(v29, v13);
}

uint64_t ComputeServiceScoringService.prepareForUse()()
{
  sub_2203CFE74(0, &unk_280FA23F0, MEMORY[0x277D84F78] + 8, MEMORY[0x277D6CF30]);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  return sub_22042AEF0();
}

uint64_t sub_2203CE55C(uint64_t (*a1)(uint64_t))
{
  if (qword_280FA0650 != -1)
  {
    swift_once();
  }

  sub_22042BCA0();
  v2 = sub_22042B8D0();
  return a1(v2);
}

uint64_t ComputeServiceScoringService.prepareForUse(completionHandler:)(uint64_t (*a1)(uint64_t))
{
  if (qword_280FA0650 != -1)
  {
    swift_once();
  }

  sub_22042BCA0();
  v2 = sub_22042B8D0();
  return a1(v2);
}

id ComputeServiceScoringService.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ComputeServiceScoringService.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

char *sub_2203CE7CC(char *a1, int64_t a2, char a3)
{
  result = sub_2203CEB5C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_2203CE7EC(size_t a1, int64_t a2, char a3)
{
  result = sub_2203CF268(a1, a2, a3, *v3, &unk_280FA01F0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
  *v3 = result;
  return result;
}

char *sub_2203CE83C(char *a1, int64_t a2, char a3)
{
  result = sub_2203CEC80(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2203CE85C(char *a1, int64_t a2, char a3)
{
  result = sub_2203CED9C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2203CE87C(char *a1, int64_t a2, char a3)
{
  result = sub_2203CEEB8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_2203CE89C(size_t a1, int64_t a2, char a3)
{
  result = sub_2203CF268(a1, a2, a3, *v3, &qword_280FA0240, MEMORY[0x277D34B18], MEMORY[0x277D34B18]);
  *v3 = result;
  return result;
}

void *sub_2203CE8EC(void *a1, int64_t a2, char a3)
{
  result = sub_2203CEFD4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_2203CE90C(size_t a1, int64_t a2, char a3)
{
  result = sub_2203CF268(a1, a2, a3, *v3, &qword_280FA0208, type metadata accessor for ArticleFeatures, type metadata accessor for ArticleFeatures);
  *v3 = result;
  return result;
}

size_t sub_2203CE95C(size_t a1, int64_t a2, char a3)
{
  result = sub_2203CF268(a1, a2, a3, *v3, &unk_280FA0228, type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock, type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock);
  *v3 = result;
  return result;
}

size_t sub_2203CE9AC(size_t a1, int64_t a2, char a3)
{
  result = sub_2203CF268(a1, a2, a3, *v3, &qword_27CF52380, MEMORY[0x277D6CED0], MEMORY[0x277D6CED0]);
  *v3 = result;
  return result;
}

void *sub_2203CE9FC(void *a1, int64_t a2, char a3)
{
  result = sub_2203CF114(a1, a2, a3, *v3, &qword_280FA0210, &qword_280FA1128);
  *v3 = result;
  return result;
}

size_t sub_2203CEA34(size_t a1, int64_t a2, char a3)
{
  result = sub_2203CF268(a1, a2, a3, *v3, &qword_280FA2570, type metadata accessor for ScorableHeadline, type metadata accessor for ScorableHeadline);
  *v3 = result;
  return result;
}

size_t sub_2203CEA84(size_t a1, int64_t a2, char a3)
{
  result = sub_2203CF268(a1, a2, a3, *v3, &qword_280FA2578, type metadata accessor for StocksTabiArticleData, type metadata accessor for StocksTabiArticleData);
  *v3 = result;
  return result;
}

void *sub_2203CEAD4(void *a1, int64_t a2, char a3)
{
  result = sub_2203CF114(a1, a2, a3, *v3, &qword_280FA2590, &unk_280FA28C8);
  *v3 = result;
  return result;
}

size_t sub_2203CEB0C(size_t a1, int64_t a2, char a3)
{
  result = sub_2203CF268(a1, a2, a3, *v3, &qword_280FA0270, MEMORY[0x277D69858], MEMORY[0x277D69858]);
  *v3 = result;
  return result;
}

char *sub_2203CEB5C(char *result, int64_t a2, char a3, char *a4)
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
    sub_2203CFE74(0, &qword_280FA0278, MEMORY[0x277CC9318], MEMORY[0x277D84560]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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

char *sub_2203CEC80(char *result, int64_t a2, char a3, char *a4)
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
    sub_2203CFE74(0, &qword_280FA01D8, MEMORY[0x277D83A90], MEMORY[0x277D84560]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 29;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 2);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[4 * v8])
    {
      memmove(v13, v14, 4 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 4 * v8);
  }

  return v10;
}

char *sub_2203CED9C(char *result, int64_t a2, char a3, char *a4)
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
    sub_2203CFE74(0, &qword_280FA01C0, MEMORY[0x277D849A8], MEMORY[0x277D84560]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 29;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 2);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[4 * v8])
    {
      memmove(v13, v14, 4 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 4 * v8);
  }

  return v10;
}

char *sub_2203CEEB8(char *result, int64_t a2, char a3, char *a4)
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
    sub_2203CFE74(0, &qword_280FA01E0, MEMORY[0x277D839F8], MEMORY[0x277D84560]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

void *sub_2203CEFD4(void *result, int64_t a2, char a3, void *a4)
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

  if (v9)
  {
    sub_2203CFD3C();
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_2203CFE74(0, &unk_280FA0400, MEMORY[0x277D83A90], MEMORY[0x277D83940]);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_2203CF114(void *result, int64_t a2, char a3, void *a4, unint64_t *a5, unint64_t *a6)
{
  v8 = result;
  if (a3)
  {
    v9 = a4[3];
    v10 = v9 >> 1;
    if ((v9 >> 1) < a2)
    {
      if (v10 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v10 = v9 & 0xFFFFFFFFFFFFFFFELL;
      if ((v9 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v10 = a2;
      }
    }
  }

  else
  {
    v10 = a2;
  }

  v11 = a4[2];
  if (v10 <= v11)
  {
    v12 = a4[2];
  }

  else
  {
    v12 = v10;
  }

  if (v12)
  {
    sub_2203C1360(0, a5, a6);
    v13 = swift_allocObject();
    v14 = _swift_stdlib_malloc_size(v13);
    v13[2] = v11;
    v13[3] = 2 * ((v14 - 32) / 40);
  }

  else
  {
    v13 = MEMORY[0x277D84F90];
  }

  if (v8)
  {
    if (v13 != a4 || v13 + 4 >= &a4[5 * v11 + 4])
    {
      memmove(v13 + 4, a4 + 4, 40 * v11);
    }

    a4[2] = 0;
  }

  else
  {
    sub_2203CFDB8(0, a6);
    swift_arrayInitWithCopy();
  }

  return v13;
}

size_t sub_2203CF268(size_t result, int64_t a2, char a3, void *a4, unint64_t *a5, void (*a6)(uint64_t), uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  sub_2203CFC84(0, a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

uint64_t sub_2203CF448(void *a1, void *a2, char a3, void *a4)
{
  v8 = a1[2];

  if (!v8 || !a2[2])
  {
    goto LABEL_24;
  }

  v10 = a1[4];
  v9 = a1[5];
  v45 = a1;
  v11 = a2[4];
  v12 = *a4;

  v13 = sub_2203FFB78(v10, v9);
  v15 = v12[2];
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  LOBYTE(v19) = v14;
  if (v12[3] < v18)
  {
    sub_2203FFEC4(v18, a3 & 1);
    v20 = *a4;
    v13 = sub_2203FFB78(v10, v9);
    if ((v19 & 1) == (v21 & 1))
    {
      goto LABEL_8;
    }

LABEL_6:
    v13 = sub_22042BF70();
    __break(1u);
  }

  if (a3)
  {
LABEL_8:
    if (v19)
    {
      goto LABEL_9;
    }

    goto LABEL_12;
  }

  v24 = v13;
  sub_220401008();
  v13 = v24;
  if (v19)
  {
LABEL_9:
    v22 = swift_allocError();
    swift_willThrow();
    MEMORY[0x223D7C740](v22);
    sub_2203CFDB8(0, &unk_280FA01A0);
    if ((swift_dynamicCast() & 1) == 0)
    {

      swift_bridgeObjectRelease_n();
      swift_bridgeObjectRelease_n();
      return MEMORY[0x223D7C730](v22);
    }

    goto LABEL_29;
  }

LABEL_12:
  v25 = *a4;
  *(*a4 + 8 * (v13 >> 6) + 64) |= 1 << v13;
  v26 = (v25[6] + 16 * v13);
  *v26 = v10;
  v26[1] = v9;
  *(v25[7] + 8 * v13) = v11;
  v27 = v25[2];
  v17 = __OFADD__(v27, 1);
  v28 = v27 + 1;
  if (!v17)
  {
    v25[2] = v28;
    v29 = v45[2];
    if (v29 != 1)
    {
      v19 = v45 + 7;
      v30 = a2 + 5;
      v31 = 1;
      while (v31 < v29)
      {
        v32 = a2[2];
        if (v31 == v32)
        {
          goto LABEL_24;
        }

        if (v31 >= v32)
        {
          goto LABEL_28;
        }

        v10 = *(v19 - 1);
        v9 = *v19;
        v11 = *v30;
        v33 = *a4;

        v34 = sub_2203FFB78(v10, v9);
        v36 = v33[2];
        v37 = (v35 & 1) == 0;
        v17 = __OFADD__(v36, v37);
        v38 = v36 + v37;
        if (v17)
        {
          goto LABEL_25;
        }

        a3 = v35;
        if (v33[3] < v38)
        {
          sub_2203FFEC4(v38, 1);
          v39 = *a4;
          v34 = sub_2203FFB78(v10, v9);
          if ((a3 & 1) != (v40 & 1))
          {
            goto LABEL_6;
          }
        }

        if (a3)
        {
          goto LABEL_9;
        }

        v41 = *a4;
        *(*a4 + 8 * (v34 >> 6) + 64) |= 1 << v34;
        v42 = (v41[6] + 16 * v34);
        *v42 = v10;
        v42[1] = v9;
        *(v41[7] + 8 * v34) = v11;
        v43 = v41[2];
        v17 = __OFADD__(v43, 1);
        v44 = v43 + 1;
        if (v17)
        {
          goto LABEL_26;
        }

        ++v31;
        v41[2] = v44;
        v29 = v45[2];
        v19 += 2;
        ++v30;
        if (v31 == v29)
        {
          goto LABEL_24;
        }
      }

      goto LABEL_27;
    }

LABEL_24:

    return swift_bridgeObjectRelease_n();
  }

LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  sub_22042BD70();
  MEMORY[0x223D7BDE0](0xD00000000000001BLL, 0x8000000220431970);
  sub_22042BDF0();
  MEMORY[0x223D7BDE0](39, 0xE100000000000000);
  result = sub_22042BE00();
  __break(1u);
  return result;
}

unint64_t sub_2203CF834(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_2203CFE14();
    v3 = sub_22042BE40();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_2203FFB78(v5, v6);
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

unint64_t sub_2203CFA30()
{
  result = qword_280FA2340;
  if (!qword_280FA2340)
  {
    sub_2203CDA6C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FA2340);
  }

  return result;
}

unint64_t sub_2203CFA88()
{
  result = qword_27CF52760;
  if (!qword_27CF52760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF52760);
  }

  return result;
}

uint64_t sub_2203CFADC(void *a1, void *a2)
{
  if (a2[2] >= a1[2])
  {
    v4 = a1[2];
  }

  else
  {
    v4 = a2[2];
  }

  if (v4)
  {
    sub_2203CFE14();
    v5 = sub_22042BE40();
  }

  else
  {
    v5 = MEMORY[0x277D84F98];
  }

  v7 = v5;

  sub_2203CF448(a1, a2, 1, &v7);
  return v7;
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_2203CFBDC(uint64_t a1, unsigned int a2)
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

uint64_t sub_2203CFC24(uint64_t result, unsigned int a2, unsigned int a3)
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

void sub_2203CFC84(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_22042BF30();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_2203CFCD8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ArticleFeatures();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_2203CFD3C()
{
  if (!qword_280FA01E8)
  {
    sub_2203CFE74(255, &unk_280FA0400, MEMORY[0x277D83A90], MEMORY[0x277D83940]);
    v0 = sub_22042BF30();
    if (!v1)
    {
      atomic_store(v0, &qword_280FA01E8);
    }
  }
}

uint64_t sub_2203CFDB8(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

void sub_2203CFE14()
{
  if (!qword_280FA02F8)
  {
    v0 = sub_22042BE50();
    if (!v1)
    {
      atomic_store(v0, &qword_280FA02F8);
    }
  }
}

void sub_2203CFE74(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_2203CFF58@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void, void, void)@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>, float a8@<S0>)
{
  v215 = a6;
  v233 = a3;
  v234 = a5;
  v228 = a2;
  sub_2203D1504(0, qword_280FA2010, type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock);
  v13 = *(*(v12 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v12 - 8, v14);
  v222 = &v209 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15, v17);
  v220 = &v209 - v18;
  v238 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock();
  v231 = *(v238 - 8);
  v19 = *(v231 + 64);
  v21 = MEMORY[0x28223BE20](v238, v20);
  v237 = &v209 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v21, v23);
  v236 = &v209 - v25;
  v27 = MEMORY[0x28223BE20](v24, v26);
  v221 = &v209 - v28;
  MEMORY[0x28223BE20](v27, v29);
  v219 = &v209 - v30;
  sub_2203D1504(0, qword_280FA1D70, type metadata accessor for Com_Apple_Stocks_Personalization_ArticleFeatures);
  v32 = *(*(v31 - 8) + 64);
  MEMORY[0x28223BE20](v31 - 8, v33);
  v218 = &v209 - v34;
  v35 = type metadata accessor for Com_Apple_Stocks_Personalization_ArticleFeatures();
  v216 = *(v35 - 8);
  v217 = v35;
  v36 = *(v216 + 64);
  MEMORY[0x28223BE20](v35, v37);
  v229 = &v209 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2203D1504(0, qword_280FA05D0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
  v40 = *(*(v39 - 8) + 64);
  v42 = MEMORY[0x28223BE20](v39 - 8, v41);
  v212 = &v209 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = MEMORY[0x28223BE20](v42, v44);
  v213 = &v209 - v46;
  MEMORY[0x28223BE20](v45, v47);
  v214 = &v209 - v48;
  v235 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadata(0);
  v49 = *(*(v235 - 8) + 64);
  v51 = MEMORY[0x28223BE20](v235, v50);
  v53 = &v209 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v51, v54);
  v227 = &v209 - v55;
  sub_2203D1504(0, &qword_280FA1F80, type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticle.OneOf_Metadata);
  v57 = *(*(v56 - 8) + 64);
  v59 = MEMORY[0x28223BE20](v56 - 8, v58);
  v224 = &v209 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = MEMORY[0x28223BE20](v59, v61);
  v223 = &v209 - v63;
  v65 = MEMORY[0x28223BE20](v62, v64);
  v67 = &v209 - v66;
  MEMORY[0x28223BE20](v65, v68);
  v70 = &v209 - v69;
  v71 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticle.OneOf_Metadata(0);
  v72 = *(v71 - 8);
  v73 = *(v72 + 64);
  v75 = MEMORY[0x28223BE20](v71, v74);
  v77 = MEMORY[0x28223BE20](v75, v76);
  v79 = MEMORY[0x28223BE20](v77, v78);
  v226 = &v209 - v80;
  MEMORY[0x28223BE20](v79, v81);
  v85 = &v209 - v84;
  v232 = a4;
  v86 = *a4;
  v87 = a4[1];
  *a7 = v86;
  *(a7 + 8) = v87;
  v88 = v233;
  *(a7 + 16) = v228;
  *(a7 + 24) = v88;
  if (a1 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_116;
  }

  if (a1 > 0x7FFFFFFF)
  {
LABEL_116:
    __break(1u);
    goto LABEL_117;
  }

  v210 = v83;
  v211 = v82;
  *(a7 + 140) = a1;
  *(a7 + 144) = a8;
  v89 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticle(0);
  v90 = v232;
  v228 = *(v89 + 20);
  sub_2203D1558(v232 + v228, v70, &qword_280FA1F80, type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticle.OneOf_Metadata);
  v233 = *(v72 + 48);
  v91 = (v233)(v70, 1, v71);
  v225 = v53;
  if (v91 == 1)
  {

    sub_2203D15C4(v70, &qword_280FA1F80, type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticle.OneOf_Metadata);
    v92 = 0xE700000000000000;
    v93 = 0x6E776F6E6B6E75;
LABEL_11:
    v99 = v224;
    v100 = v228;
    goto LABEL_23;
  }

  sub_2203D17B0(v70, v85, type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticle.OneOf_Metadata);
  v94 = v85;
  v95 = v226;
  sub_2203D17B0(v94, v226, type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticle.OneOf_Metadata);
  v96 = v227;
  sub_2203D17B0(v95, v227, type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadata);
  v97 = *(v96 + *(v235 + 20)) + OBJC_IVAR____TtCV21StocksPersonalization61Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadataP33_7441C0F8AE1593DAA6735B7CA221A47813_StorageClass__group;
  swift_beginAccess();
  v98 = *v97;
  LODWORD(v97) = *(v97 + 8);

  sub_2203D16EC(v96, type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadata);
  if (v97 != 1)
  {
    v93 = 0;
    v92 = 0xE000000000000000;
    v53 = v225;
    v90 = v232;
    goto LABEL_11;
  }

  v99 = v224;
  v100 = v228;
  if (v98 <= 2)
  {
    v90 = v232;
    if (!v98)
    {
      v92 = 0xE700000000000000;
      v93 = 0x6E776F6E6B6E75;
      goto LABEL_22;
    }

    if (v98 != 1)
    {
      v92 = 0xEA00000000007365;
      v93 = 0x69726F7453706F74;
      goto LABEL_22;
    }

    v92 = 0xE700000000000000;
    v101 = 1634891107;
  }

  else
  {
    v90 = v232;
    if (v98 <= 4)
    {
      if (v98 == 3)
      {
        v92 = 0xE600000000000000;
        v93 = 0x6C6F626D7973;
      }

      else
      {
        v92 = 0xE800000000000000;
        v93 = 0x6D6F724665726F6DLL;
      }

      goto LABEL_22;
    }

    if (v98 != 5)
    {
      v92 = 0xE200000000000000;
      v93 = 25697;
      goto LABEL_22;
    }

    v92 = 0xE700000000000000;
    v101 = 1634493810;
  }

  v93 = v101 | 0x64657400000000;
LABEL_22:
  v53 = v225;
LABEL_23:
  *(a7 + 32) = v93;
  *(a7 + 40) = v92;
  sub_2203D1558(v90 + v100, v67, &qword_280FA1F80, type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticle.OneOf_Metadata);
  if ((v233)(v67, 1, v71) == 1)
  {
    sub_2203D15C4(v67, &qword_280FA1F80, type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticle.OneOf_Metadata);
    goto LABEL_25;
  }

  v105 = v67;
  v106 = v210;
  sub_2203D17B0(v105, v210, type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticle.OneOf_Metadata);
  v107 = v106;
  v108 = v226;
  sub_2203D17B0(v107, v226, type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticle.OneOf_Metadata);
  v109 = v227;
  sub_2203D17B0(v108, v227, type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadata);
  v110 = *(v109 + *(v235 + 20)) + OBJC_IVAR____TtCV21StocksPersonalization61Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadataP33_7441C0F8AE1593DAA6735B7CA221A47813_StorageClass__feed;
  swift_beginAccess();
  v111 = *v110;
  LODWORD(v110) = *(v110 + 8);
  sub_2203D16EC(v109, type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadata);
  if (v110 == 1)
  {
    if (v111 > 1)
    {
      v100 = v228;
      if (v111 == 2)
      {
        v102 = 0xE600000000000000;
        v103 = 0x756F59726F66;
      }

      else
      {
        v102 = 0xE300000000000000;
        v103 = 6385509;
      }

      goto LABEL_26;
    }

    v100 = v228;
    if (v111)
    {
      v102 = 0xE600000000000000;
      v103 = 0x6C6F626D7973;
      goto LABEL_26;
    }

LABEL_25:
    v102 = 0xE700000000000000;
    v103 = 0x6E776F6E6B6E75;
LABEL_26:
    v104 = v223;
    goto LABEL_32;
  }

  v103 = 0;
  v102 = 0xE000000000000000;
  v104 = v223;
  v100 = v228;
LABEL_32:
  *(a7 + 48) = v103;
  *(a7 + 56) = v102;
  sub_2203D1558(v90 + v100, v104, &qword_280FA1F80, type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticle.OneOf_Metadata);
  if ((v233)(v104, 1, v71) == 1)
  {
    sub_2203D15C4(v104, &qword_280FA1F80, type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticle.OneOf_Metadata);
    v112 = 0;
    v113 = 1;
  }

  else
  {
    v114 = v104;
    v115 = v211;
    sub_2203D17B0(v114, v211, type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticle.OneOf_Metadata);
    v116 = v115;
    v117 = v226;
    sub_2203D17B0(v116, v226, type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticle.OneOf_Metadata);
    v118 = v227;
    sub_2203D17B0(v117, v227, type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadata);
    v119 = *(v118 + *(v235 + 20)) + OBJC_IVAR____TtCV21StocksPersonalization61Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadataP33_7441C0F8AE1593DAA6735B7CA221A47813_StorageClass__viewAction;
    swift_beginAccess();
    v112 = *v119;
    v113 = *(v119 + 8);
    v120 = v118;
    v100 = v228;
    sub_2203D16EC(v120, type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadata);
  }

  v243 = v112;
  v244 = v113;
  v121 = sub_220422C2C();
  if (v122)
  {
    v123 = v121;
  }

  else
  {
    v123 = 0;
  }

  v124 = 0xE000000000000000;
  if (v122)
  {
    v124 = v122;
  }

  *(a7 + 64) = v123;
  *(a7 + 72) = v124;
  sub_2203D1558(v90 + v100, v99, &qword_280FA1F80, type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticle.OneOf_Metadata);
  if ((v233)(v99, 1, v71) != 1)
  {
    sub_2203D17B0(v99, v53, type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadata);
    goto LABEL_44;
  }

  sub_2203D15C4(v99, &qword_280FA1F80, type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticle.OneOf_Metadata);
  sub_22042B670();
  v85 = *(v235 + 20);
  if (qword_280FA1A10 != -1)
  {
    goto LABEL_118;
  }

  while (1)
  {
    *&v53[v85] = qword_280FA1A18;

LABEL_44:
    v125 = *&v53[*(v235 + 20)];
    swift_beginAccess();
    v126 = v125[2];
    v241 = 0;
    v242 = 0xE000000000000000;

    v127 = sub_22042BB20();

    *(a7 + 80) = v127;
    v128 = OBJC_IVAR____TtCV21StocksPersonalization61Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadataP33_7441C0F8AE1593DAA6735B7CA221A47813_StorageClass__adCategories;
    swift_beginAccess();
    v129 = *(v125 + v128);
    *(a7 + 88) = v129;
    swift_beginAccess();
    v130 = v125[4];
    *(a7 + 96) = v125[3];
    *(a7 + 104) = v130;
    v85 = OBJC_IVAR____TtCV21StocksPersonalization61Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadataP33_7441C0F8AE1593DAA6735B7CA221A47813_StorageClass__length;
    swift_beginAccess();
    v131 = *(v125 + v85);
    if ((v131 & 0x80000000) == 0)
    {
      break;
    }

LABEL_117:
    __break(1u);
LABEL_118:
    swift_once();
  }

  *(a7 + 112) = v131;
  v230 = a7;
  *(a7 + 200) = v215;
  v132 = OBJC_IVAR____TtCV21StocksPersonalization61Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadataP33_7441C0F8AE1593DAA6735B7CA221A47813_StorageClass__embedding;
  swift_beginAccess();
  v235 = v129;
  v133 = v213;
  sub_2203D1558(v125 + v132, v213, qword_280FA05D0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
  v134 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List();
  v233 = *(v134 - 8);
  v135 = 1;
  v228 = *(v233 + 48);
  v136 = (v228)(v133, 1, v134);

  sub_2203D15C4(v133, qword_280FA05D0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
  v137 = v136 == 1;
  v138 = v238;
  v139 = v214;
  v235 = v125;
  if (!v137)
  {
    v140 = v125 + v132;
    v141 = v212;
    sub_2203D1558(v140, v212, qword_280FA05D0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
    v142 = v228;
    if ((v228)(v141, 1, v134) == 1)
    {
      *v139 = xmmword_22042D6B0;
      v143 = v139 + *(v134 + 20);
      sub_22042B670();
      if (v142(v141, 1, v134) != 1)
      {
        sub_2203D15C4(v141, qword_280FA05D0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
      }

      v135 = 0;
      v125 = v235;
    }

    else
    {
      sub_2203D17B0(v141, v139, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
      v135 = 0;
    }
  }

  (*(v233 + 56))(v139, v135, 1, v134);
  v144 = type metadata accessor for EventArticleFeatures();
  v145 = v230;
  sub_2203D166C(v139, v230 + *(v144 + 104));
  v146 = OBJC_IVAR____TtCV21StocksPersonalization61Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadataP33_7441C0F8AE1593DAA6735B7CA221A47813_StorageClass__features;
  swift_beginAccess();
  v147 = v218;
  sub_2203D1558(v125 + v146, v218, qword_280FA1D70, type metadata accessor for Com_Apple_Stocks_Personalization_ArticleFeatures);
  v148 = v217;
  v149 = *(v216 + 48);
  v150 = v149(v147, 1, v217);
  v151 = v220;
  if (v150 == 1)
  {
    v152 = v229;
    *(v229 + 8) = 0;
    *v152 = 0;
    v153 = v152 + *(v148 + 52);
    sub_22042B670();
    v154 = v149(v147, 1, v148);
    v155 = v222;
    v156 = v219;
    if (v154 != 1)
    {
      sub_2203D15C4(v147, qword_280FA1D70, type metadata accessor for Com_Apple_Stocks_Personalization_ArticleFeatures);
    }

    if (*v152)
    {
LABEL_55:
      *(v145 + 116) = 1;
      if ((*(v152 + 1) & 1) == 0)
      {
        goto LABEL_56;
      }

      goto LABEL_63;
    }
  }

  else
  {
    v152 = v229;
    sub_2203D17B0(v147, v229, type metadata accessor for Com_Apple_Stocks_Personalization_ArticleFeatures);
    v155 = v222;
    v156 = v219;
    if (*v152)
    {
      goto LABEL_55;
    }
  }

  *(v145 + 116) = 0;
  if ((*(v152 + 1) & 1) == 0)
  {
LABEL_56:
    *(v145 + 120) = 0;
    if ((*(v152 + 3) & 1) == 0)
    {
      goto LABEL_57;
    }

    goto LABEL_64;
  }

LABEL_63:
  *(v145 + 120) = 1;
  if ((*(v152 + 3) & 1) == 0)
  {
LABEL_57:
    *(v145 + 124) = 0;
    if ((*(v152 + 4) & 1) == 0)
    {
      goto LABEL_58;
    }

    goto LABEL_65;
  }

LABEL_64:
  *(v145 + 124) = 1;
  if ((*(v152 + 4) & 1) == 0)
  {
LABEL_58:
    *(v145 + 128) = 0;
    if ((*(v152 + 6) & 1) == 0)
    {
      goto LABEL_59;
    }

LABEL_66:
    v157 = 1;
    *(v145 + 132) = 1;
    if (*(v152 + 5))
    {
      goto LABEL_68;
    }

    goto LABEL_67;
  }

LABEL_65:
  *(v145 + 128) = 1;
  if (*(v152 + 6))
  {
    goto LABEL_66;
  }

LABEL_59:
  *(v145 + 132) = 0;
  if (*(v152 + 5))
  {
    v157 = 1;
    goto LABEL_68;
  }

LABEL_67:
  v157 = 0;
LABEL_68:
  *(v145 + 136) = v157;
  v158 = OBJC_IVAR____TtCV21StocksPersonalization61Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadataP33_7441C0F8AE1593DAA6735B7CA221A47813_StorageClass__groupBackingStock;
  v159 = v235;
  swift_beginAccess();
  sub_2203D1558(v159 + v158, v151, qword_280FA2010, type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock);
  v160 = *(v231 + 48);
  if (v160(v151, 1, v138) == 1)
  {
    sub_22042B670();
    v161 = (v156 + *(v138 + 20));
    *v161 = 0;
    v161[1] = 0;
    v162 = (v156 + *(v138 + 24));
    *v162 = 0;
    v162[1] = 0;
    if (v160(v151, 1, v138) != 1)
    {
      sub_2203D15C4(v151, qword_280FA2010, type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock);
    }
  }

  else
  {
    sub_2203D17B0(v151, v156, type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock);
  }

  v163 = (v156 + *(v138 + 20));
  v165 = *v163;
  v164 = v163[1];

  sub_2203D16EC(v156, type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock);
  if (v164)
  {
    v166 = v165;
  }

  else
  {
    v166 = 0;
  }

  v167 = 0xE000000000000000;
  if (v164)
  {
    v167 = v164;
  }

  *(v145 + 152) = v166;
  *(v145 + 160) = v167;
  v168 = v235;
  sub_2203D1558(v235 + v158, v155, qword_280FA2010, type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock);
  if (v160(v155, 1, v138) == 1)
  {
    v169 = v221;
    sub_22042B670();
    v170 = (v169 + *(v138 + 20));
    *v170 = 0;
    v170[1] = 0;
    v171 = (v169 + *(v138 + 24));
    *v171 = 0;
    v171[1] = 0;
    if (v160(v155, 1, v138) != 1)
    {
      sub_2203D15C4(v155, qword_280FA2010, type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock);
    }
  }

  else
  {
    v169 = v221;
    sub_2203D17B0(v155, v221, type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock);
  }

  v172 = (v169 + *(v138 + 24));
  v174 = *v172;
  v173 = v172[1];

  sub_2203D16EC(v169, type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock);
  if (v173)
  {
    v175 = v174;
  }

  else
  {
    v175 = 0;
  }

  if (v173)
  {
    v176 = v173;
  }

  else
  {
    v176 = 0xE000000000000000;
  }

  *(v145 + 168) = v175;
  *(v145 + 176) = v176;
  v177 = OBJC_IVAR____TtCV21StocksPersonalization61Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadataP33_7441C0F8AE1593DAA6735B7CA221A47813_StorageClass__stocks;
  swift_beginAccess();
  v178 = *(v168 + v177);
  v179 = *(v178 + 16);
  if (v179)
  {
    v233 = v177;
    v239 = MEMORY[0x277D84F90];

    sub_2203C3A84(0, v179, 0);
    v180 = v239;
    v181 = *(v231 + 80);
    v228 = v178;
    v182 = v178 + ((v181 + 32) & ~v181);
    v183 = *(v231 + 72);
    do
    {
      v184 = v236;
      sub_2203D174C(v182, v236);
      v185 = (v184 + *(v138 + 20));
      v186 = v185[1];
      if (v186)
      {
        v187 = *v185;
      }

      else
      {
        v187 = 0;
      }

      if (v186)
      {
        v188 = v185[1];
      }

      else
      {
        v188 = 0xE000000000000000;
      }

      sub_2203D16EC(v184, type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock);
      v239 = v180;
      v190 = *(v180 + 16);
      v189 = *(v180 + 24);
      if (v190 >= v189 >> 1)
      {
        sub_2203C3A84((v189 > 1), v190 + 1, 1);
        v180 = v239;
      }

      *(v180 + 16) = v190 + 1;
      v191 = v180 + 16 * v190;
      *(v191 + 32) = v187;
      *(v191 + 40) = v188;
      v182 += v183;
      --v179;
      v138 = v238;
    }

    while (v179);

    v145 = v230;
    v168 = v235;
    v177 = v233;
  }

  v239 = 0;
  v240 = 0xE000000000000000;
  v192 = sub_22042BB20();

  *(v145 + 184) = v192;
  v193 = *(v168 + v177);
  v194 = *(v193 + 16);
  if (v194)
  {
    v239 = MEMORY[0x277D84F90];

    sub_2203C3A84(0, v194, 0);
    v195 = v239;
    v196 = *(v231 + 80);
    v236 = v193;
    v197 = v193 + ((v196 + 32) & ~v196);
    v198 = *(v231 + 72);
    do
    {
      v199 = v237;
      sub_2203D174C(v197, v237);
      v200 = (v199 + *(v138 + 24));
      v201 = v200[1];
      if (v201)
      {
        v202 = *v200;
      }

      else
      {
        v202 = 0;
      }

      if (v201)
      {
        v203 = v200[1];
      }

      else
      {
        v203 = 0xE000000000000000;
      }

      sub_2203D16EC(v199, type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock);
      v239 = v195;
      v205 = *(v195 + 16);
      v204 = *(v195 + 24);
      if (v205 >= v204 >> 1)
      {
        sub_2203C3A84((v204 > 1), v205 + 1, 1);
        v195 = v239;
      }

      *(v195 + 16) = v205 + 1;
      v206 = v195 + 16 * v205;
      *(v206 + 32) = v202;
      *(v206 + 40) = v203;
      v197 += v198;
      --v194;
      v138 = v238;
    }

    while (v194);

    v145 = v230;
  }

  v239 = 0;
  v240 = 0xE000000000000000;
  v207 = sub_22042BB20();

  sub_2203D16EC(v232, type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticle);
  sub_2203D16EC(v229, type metadata accessor for Com_Apple_Stocks_Personalization_ArticleFeatures);
  result = sub_2203D16EC(v225, type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadata);
  *(v145 + 192) = v207;
  return result;
}

void sub_2203D1504(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_22042BCF0();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_2203D1558(uint64_t a1, uint64_t a2, unint64_t *a3, void (*a4)(uint64_t))
{
  sub_2203D1504(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_2203D15C4(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_2203D1504(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t type metadata accessor for EventArticleFeatures()
{
  result = qword_280FA0F08;
  if (!qword_280FA0F08)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2203D166C(uint64_t a1, uint64_t a2)
{
  sub_2203D1504(0, qword_280FA05D0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2203D16EC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2203D174C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2203D17B0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_2203D1840()
{
  sub_2203D193C();
  if (v0 <= 0x3F)
  {
    sub_2203D1504(319, qword_280FA05D0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_2203D193C()
{
  if (!qword_280FA25C8)
  {
    v0 = sub_22042BB60();
    if (!v1)
    {
      atomic_store(v0, &qword_280FA25C8);
    }
  }
}

uint64_t sub_2203D198C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v154 = a2;
  v3 = MEMORY[0x277D83D88];
  sub_2203DE8BC(0, &qword_280FA2468, sub_2203DED10, MEMORY[0x277D83D88]);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8, v6);
  v131 = &v126 - v7;
  sub_2203DED10();
  v130 = v8;
  v129 = *(v8 - 8);
  v9 = *(v129 + 64);
  MEMORY[0x28223BE20](v8, v10);
  v126 = &v126 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2203DE8BC(0, &qword_280FA2478, sub_2203DEC7C, v3);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8, v14);
  v136 = &v126 - v15;
  sub_2203DEC7C();
  v134 = *(v16 - 8);
  v135 = v16;
  v17 = *(v134 + 64);
  MEMORY[0x28223BE20](v16, v18);
  v128 = &v126 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2203DE8BC(0, &qword_280FA2438, sub_2203DE9E4, v3);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20 - 8, v22);
  v141 = &v126 - v23;
  sub_2203DE9E4();
  v139 = *(v24 - 8);
  v140 = v24;
  v25 = *(v139 + 64);
  MEMORY[0x28223BE20](v24, v26);
  v133 = &v126 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2203DE8BC(0, &qword_280FA2428, sub_2203DEA78, v3);
  v29 = *(*(v28 - 8) + 64);
  MEMORY[0x28223BE20](v28 - 8, v30);
  v146 = &v126 - v31;
  sub_2203DEA78();
  v144 = *(v32 - 8);
  v145 = v32;
  v33 = *(v144 + 64);
  MEMORY[0x28223BE20](v32, v34);
  v138 = &v126 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2203DE8BC(0, &qword_280FA2448, sub_2203DEBE8, v3);
  v37 = *(*(v36 - 8) + 64);
  MEMORY[0x28223BE20](v36 - 8, v38);
  v150 = &v126 - v39;
  sub_2203DEBE8();
  v148 = *(v40 - 8);
  v149 = v40;
  v41 = *(v148 + 64);
  MEMORY[0x28223BE20](v40, v42);
  v143 = &v126 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2203DE8BC(0, &qword_280FA2458, sub_2203DEB54, v3);
  v45 = *(*(v44 - 8) + 64);
  MEMORY[0x28223BE20](v44 - 8, v46);
  v48 = &v126 - v47;
  v49 = sub_22042ABE0();
  v50 = *(v49 - 8);
  v51 = *(v50 + 64);
  v53 = MEMORY[0x28223BE20](v49, v52);
  v127 = &v126 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = MEMORY[0x28223BE20](v53, v55);
  v132 = &v126 - v57;
  v59 = MEMORY[0x28223BE20](v56, v58);
  v137 = &v126 - v60;
  v62 = MEMORY[0x28223BE20](v59, v61);
  v142 = &v126 - v63;
  v65 = MEMORY[0x28223BE20](v62, v64);
  v147 = &v126 - v66;
  MEMORY[0x28223BE20](v65, v67);
  v69 = &v126 - v68;
  sub_2203DEB54();
  v71 = v70;
  v72 = *(v70 - 8);
  v73 = v72[8];
  MEMORY[0x28223BE20](v70, v74);
  v76 = &v126 - ((v75 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = type metadata accessor for UserEventHistoryEventProcessor.IncomingEvent(0);
  v152 = *(v77 - 8);
  v153 = v77;
  v78 = *(v152 + 64);
  MEMORY[0x28223BE20](v77, v79);
  v81 = &v126 - ((v80 + 15) & 0xFFFFFFFFFFFFFFF0);
  v151 = *(v50 + 16);
  v151(v69, a1, v49);
  v82 = v49;
  v83 = swift_dynamicCast();
  v84 = v72[7];
  if (v83)
  {
    v84(v48, 0, 1, v71);
    (*(v50 + 8))(a1, v49);
    v85 = v72[4];
    v85(v76, v48, v71);
    v85(v81, v76, v71);
  }

  else
  {
    v84(v48, 1, 1, v71);
    sub_2203DF738(v48, &qword_280FA2458, sub_2203DEB54, MEMORY[0x277D83D88], sub_2203DE8BC);
    v86 = a1;
    v151(v147, a1, v82);
    v87 = v150;
    v88 = v149;
    v89 = swift_dynamicCast();
    v90 = v148;
    v91 = *(v148 + 56);
    if (v89)
    {
      v91(v87, 0, 1, v88);
      (*(v50 + 8))(v86, v82);
      v92 = *(v90 + 32);
      v93 = v143;
      v92(v143, v87, v88);
      v92(v81, v93, v88);
    }

    else
    {
      v91(v87, 1, 1, v88);
      sub_2203DF738(v87, &qword_280FA2448, sub_2203DEBE8, MEMORY[0x277D83D88], sub_2203DE8BC);
      v151(v142, v86, v82);
      v95 = v145;
      v94 = v146;
      v96 = swift_dynamicCast();
      v97 = v144;
      v98 = *(v144 + 56);
      if (v96)
      {
        v98(v94, 0, 1, v95);
        (*(v50 + 8))(v86, v82);
        v99 = *(v97 + 32);
        v100 = v138;
        v99(v138, v94, v95);
        v99(v81, v100, v95);
      }

      else
      {
        v98(v94, 1, 1, v95);
        sub_2203DF738(v94, &qword_280FA2428, sub_2203DEA78, MEMORY[0x277D83D88], sub_2203DE8BC);
        v151(v137, v86, v82);
        v102 = v140;
        v101 = v141;
        v103 = swift_dynamicCast();
        v104 = v139;
        v105 = *(v139 + 56);
        if (v103)
        {
          v105(v101, 0, 1, v102);
          (*(v50 + 8))(v86, v82);
          v106 = *(v104 + 32);
          v107 = v133;
          v106(v133, v101, v102);
          v106(v81, v107, v102);
        }

        else
        {
          v105(v101, 1, 1, v102);
          sub_2203DF738(v101, &qword_280FA2438, sub_2203DE9E4, MEMORY[0x277D83D88], sub_2203DE8BC);
          v151(v132, v86, v82);
          v109 = v135;
          v108 = v136;
          v110 = swift_dynamicCast();
          v111 = v134;
          v112 = *(v134 + 56);
          if (v110)
          {
            v112(v108, 0, 1, v109);
            (*(v50 + 8))(v86, v82);
            v113 = *(v111 + 32);
            v114 = v128;
            v113(v128, v108, v109);
            v113(v81, v114, v109);
          }

          else
          {
            v112(v108, 1, 1, v109);
            sub_2203DF738(v108, &qword_280FA2478, sub_2203DEC7C, MEMORY[0x277D83D88], sub_2203DE8BC);
            (*(v50 + 32))(v127, v86, v82);
            v115 = v131;
            v116 = v130;
            v117 = swift_dynamicCast();
            v118 = v129;
            v119 = *(v129 + 56);
            if ((v117 & 1) == 0)
            {
              v119(v115, 1, 1, v116);
              sub_2203DF738(v115, &qword_280FA2468, sub_2203DED10, MEMORY[0x277D83D88], sub_2203DE8BC);
              v124 = 1;
              v122 = v153;
              v123 = v154;
              return (*(v152 + 56))(v123, v124, 1, v122);
            }

            v119(v115, 0, 1, v116);
            v120 = *(v118 + 32);
            v121 = v126;
            v120(v126, v115, v116);
            v120(v81, v121, v116);
          }
        }
      }
    }
  }

  v122 = v153;
  swift_storeEnumTagMultiPayload();
  v123 = v154;
  sub_2203DF148(v81, v154, type metadata accessor for UserEventHistoryEventProcessor.IncomingEvent);
  v124 = 0;
  return (*(v152 + 56))(v123, v124, 1, v122);
}

uint64_t sub_2203D2848(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v6 = type metadata accessor for UserEventHistoryEventProcessor.IncomingEvent(0);
  v5[7] = v6;
  v7 = *(v6 - 8);
  v5[8] = v7;
  v8 = *(v7 + 64) + 15;
  v5[9] = swift_task_alloc();
  sub_2203DE8BC(0, qword_280FA1548, type metadata accessor for UserEventHistoryEventProcessor.IncomingEvent, MEMORY[0x277D83D88]);
  v10 = *(*(v9 - 8) + 64) + 15;
  v5[10] = swift_task_alloc();
  sub_2203DE8BC(0, &unk_280FA03C0, type metadata accessor for UserEventHistoryEventProcessor.IncomingEvent, MEMORY[0x277D857A8]);
  v5[11] = v11;
  v12 = *(v11 - 8);
  v5[12] = v12;
  v13 = *(v12 + 64) + 15;
  v5[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2203D29E4, 0, 0);
}

uint64_t sub_2203D29E4()
{
  if (qword_280FA09F8 != -1)
  {
    swift_once();
  }

  v1 = v0[13];
  v2 = v0[5];
  v3 = v0[6];
  sub_22042BCA0();
  sub_22042B8D0();
  sub_2203DE8BC(0, &qword_280FA03B8, type metadata accessor for UserEventHistoryEventProcessor.IncomingEvent, MEMORY[0x277D857B8]);
  sub_22042BBC0();
  swift_beginAccess();
  v4 = *(MEMORY[0x277D85798] + 4);
  v5 = swift_task_alloc();
  v0[14] = v5;
  *v5 = v0;
  v5[1] = sub_2203D2B54;
  v6 = v0[13];
  v7 = v0[10];
  v8 = v0[11];

  return MEMORY[0x2822003E8](v7, 0, 0, v8);
}

uint64_t sub_2203D2B54()
{
  v1 = *(*v0 + 112);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_2203D2C50, 0, 0);
}

uint64_t sub_2203D2C50()
{
  v1 = v0[10];
  if ((*(v0[8] + 48))(v1, 1, v0[7]) != 1)
  {
    v2 = v0[6];
    sub_2203DF148(v1, v0[9], type metadata accessor for UserEventHistoryEventProcessor.IncomingEvent);
    Strong = swift_weakLoadStrong();
    v0[15] = Strong;
    if (Strong)
    {
      v4 = swift_task_alloc();
      v0[16] = v4;
      *v4 = v0;
      v4[1] = sub_2203D2DD8;
      v5 = v0[9];

      return sub_2203D2FA0(v5);
    }

    sub_2203DF670(v0[9], type metadata accessor for UserEventHistoryEventProcessor.IncomingEvent);
    v7 = v0[10];
  }

  v8 = v0[9];
  (*(v0[12] + 8))(v0[13], v0[11]);

  v9 = v0[1];

  return v9();
}

uint64_t sub_2203D2DD8()
{
  v1 = *(*v0 + 128);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_2203D2ED4, 0, 0);
}

uint64_t sub_2203D2ED4()
{
  v1 = v0[15];
  v2 = v0[9];

  sub_2203DF670(v2, type metadata accessor for UserEventHistoryEventProcessor.IncomingEvent);
  v3 = *(MEMORY[0x277D85798] + 4);
  v4 = swift_task_alloc();
  v0[14] = v4;
  *v4 = v0;
  v4[1] = sub_2203D2B54;
  v5 = v0[13];
  v6 = v0[10];
  v7 = v0[11];

  return MEMORY[0x2822003E8](v6, 0, 0, v7);
}

uint64_t sub_2203D2FA0(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  v2[7] = *v1;
  v3 = *(*(type metadata accessor for Com_Apple_Stocks_Personalization_Session() - 8) + 64) + 15;
  v2[8] = swift_task_alloc();
  v2[9] = swift_task_alloc();
  sub_2203DED10();
  v2[10] = v4;
  v5 = *(v4 - 8);
  v2[11] = v5;
  v6 = *(v5 + 64) + 15;
  v2[12] = swift_task_alloc();
  sub_2203DEC7C();
  v2[13] = v7;
  v8 = *(v7 - 8);
  v2[14] = v8;
  v9 = *(v8 + 64) + 15;
  v2[15] = swift_task_alloc();
  sub_2203DEBE8();
  v2[16] = v10;
  v11 = *(v10 - 8);
  v2[17] = v11;
  v12 = *(v11 + 64) + 15;
  v2[18] = swift_task_alloc();
  sub_2203DEB54();
  v2[19] = v13;
  v14 = *(v13 - 8);
  v2[20] = v14;
  v15 = *(v14 + 64) + 15;
  v2[21] = swift_task_alloc();
  sub_2203DEA78();
  v2[22] = v16;
  v17 = *(v16 - 8);
  v2[23] = v17;
  v18 = *(v17 + 64) + 15;
  v2[24] = swift_task_alloc();
  sub_2203DE9E4();
  v2[25] = v19;
  v20 = *(v19 - 8);
  v2[26] = v20;
  v21 = *(v20 + 64) + 15;
  v2[27] = swift_task_alloc();
  v22 = type metadata accessor for UserEventHistoryEventProcessor.IncomingEvent(0);
  v2[28] = v22;
  v23 = *(*(v22 - 8) + 64) + 15;
  v2[29] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2203D32BC, 0, 0);
}

uint64_t sub_2203D32BC()
{
  v1 = *(v0 + 224);
  sub_2203DF42C(*(v0 + 40), *(v0 + 232), type metadata accessor for UserEventHistoryEventProcessor.IncomingEvent);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v3 = *(v0 + 232);
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      (*(*(v0 + 136) + 32))(*(v0 + 144), v3, *(v0 + 128));
      v21 = swift_task_alloc();
      *(v0 + 248) = v21;
      *v21 = v0;
      v21[1] = sub_2203D4004;
      v22 = *(v0 + 144);
      v23 = *(v0 + 48);

      return sub_2203D6BC0(v22);
    }

    else if (EnumCaseMultiPayload == 4)
    {
      (*(*(v0 + 112) + 32))(*(v0 + 120), v3, *(v0 + 104));
      v8 = swift_task_alloc();
      *(v0 + 256) = v8;
      *v8 = v0;
      v8[1] = sub_2203D4598;
      v9 = *(v0 + 120);
      v10 = *(v0 + 48);

      return sub_2203D7F28(v9);
    }

    else
    {
      (*(*(v0 + 88) + 32))(*(v0 + 96), v3, *(v0 + 80));
      v27 = swift_task_alloc();
      *(v0 + 264) = v27;
      *v27 = v0;
      v27[1] = sub_2203D4B2C;
      v28 = *(v0 + 96);
      v29 = *(v0 + 48);

      return sub_2203D8F90(v28);
    }
  }

  else
  {
    if (!EnumCaseMultiPayload)
    {
      v5 = *(v0 + 208);
      v4 = *(v0 + 216);
      v6 = *(v0 + 200);
      v12 = *(v0 + 48);
      (*(v5 + 32))(v4, v3, v6);
      sub_2203D54A0();
LABEL_11:
      (*(v5 + 8))(v4, v6);
      sub_22042ACE0();
      if (sub_22042ACD0())
      {
        v13 = *(*(v0 + 48) + OBJC_IVAR____TtC21StocksPersonalization30UserEventHistoryEventProcessor_sessionManager);
        if (sub_22042B410())
        {
          v15 = *(v0 + 64);
          v14 = *(v0 + 72);
          sub_22042B490();

          sub_2203DF148(v15, v14, type metadata accessor for Com_Apple_Stocks_Personalization_Session);
          if (qword_280FA24A8 != -1)
          {
            swift_once();
          }

          v17 = *(v0 + 48);
          v16 = *(v0 + 56);
          sub_2203DEB0C(&unk_280FA1498, type metadata accessor for UserEventHistoryEventProcessor);
          sub_22042AB30();
          if (*(v0 + 272) == 1)
          {
            if (qword_280FA09F8 != -1)
            {
              swift_once();
            }

            v18 = *(v0 + 72);
            sub_2203C1EE8();
            v19 = swift_allocObject();
            *(v19 + 16) = xmmword_22042D3F0;
            v20 = sub_2203D9FF8(type metadata accessor for Com_Apple_Stocks_Personalization_Session, &qword_280FA1638, type metadata accessor for Com_Apple_Stocks_Personalization_Session);
            MEMORY[0x223D7BDE0](v20);

            *(v19 + 56) = MEMORY[0x277D837D0];
            *(v19 + 64) = sub_2203C1FA8();
            *(v19 + 32) = 0;
            *(v19 + 40) = 0xE000000000000000;
            sub_22042BCA0();
            sub_22042B8D0();
          }

          else
          {
            if (qword_280FA09F8 != -1)
            {
              swift_once();
            }

            v30 = *(v0 + 72);
            sub_2203C1EE8();
            v31 = swift_allocObject();
            *(v31 + 16) = xmmword_22042D3F0;
            v32 = *(*(v30 + 16) + 16);
            v33 = MEMORY[0x277D83C10];
            *(v31 + 56) = MEMORY[0x277D83B88];
            *(v31 + 64) = v33;
            *(v31 + 32) = v32;
            sub_22042BCA0();
            sub_22042B8D0();
          }

          sub_2203DF670(*(v0 + 72), type metadata accessor for Com_Apple_Stocks_Personalization_Session);
        }
      }

      v34 = *(v0 + 232);
      v35 = *(v0 + 216);
      v36 = *(v0 + 192);
      v37 = *(v0 + 168);
      v38 = *(v0 + 144);
      v39 = *(v0 + 120);
      v40 = *(v0 + 96);
      v42 = *(v0 + 64);
      v41 = *(v0 + 72);

      v43 = *(v0 + 8);

      return v43();
    }

    if (EnumCaseMultiPayload == 1)
    {
      v5 = *(v0 + 184);
      v4 = *(v0 + 192);
      v6 = *(v0 + 176);
      v7 = *(v0 + 48);
      (*(v5 + 32))(v4, v3, v6);
      sub_2203D59FC();
      goto LABEL_11;
    }

    (*(*(v0 + 160) + 32))(*(v0 + 168), v3, *(v0 + 152));
    v24 = swift_task_alloc();
    *(v0 + 240) = v24;
    *v24 = v0;
    v24[1] = sub_2203D3A70;
    v25 = *(v0 + 168);
    v26 = *(v0 + 48);

    return sub_2203D5F64(v25);
  }
}

uint64_t sub_2203D3A70()
{
  v1 = *(*v0 + 240);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_2203D3B6C, 0, 0);
}

uint64_t sub_2203D3B6C()
{
  (*(*(v0 + 160) + 8))(*(v0 + 168), *(v0 + 152));
  sub_22042ACE0();
  if (sub_22042ACD0())
  {
    v1 = *(*(v0 + 48) + OBJC_IVAR____TtC21StocksPersonalization30UserEventHistoryEventProcessor_sessionManager);
    if (sub_22042B410())
    {
      v3 = *(v0 + 64);
      v2 = *(v0 + 72);
      sub_22042B490();

      sub_2203DF148(v3, v2, type metadata accessor for Com_Apple_Stocks_Personalization_Session);
      if (qword_280FA24A8 != -1)
      {
        swift_once();
      }

      v5 = *(v0 + 48);
      v4 = *(v0 + 56);
      sub_2203DEB0C(&unk_280FA1498, type metadata accessor for UserEventHistoryEventProcessor);
      sub_22042AB30();
      if (*(v0 + 272) == 1)
      {
        if (qword_280FA09F8 != -1)
        {
          swift_once();
        }

        v6 = *(v0 + 72);
        sub_2203C1EE8();
        v7 = swift_allocObject();
        *(v7 + 16) = xmmword_22042D3F0;
        v8 = sub_2203D9FF8(type metadata accessor for Com_Apple_Stocks_Personalization_Session, &qword_280FA1638, type metadata accessor for Com_Apple_Stocks_Personalization_Session);
        MEMORY[0x223D7BDE0](v8);

        *(v7 + 56) = MEMORY[0x277D837D0];
        *(v7 + 64) = sub_2203C1FA8();
        *(v7 + 32) = 0;
        *(v7 + 40) = 0xE000000000000000;
        sub_22042BCA0();
        sub_22042B8D0();
      }

      else
      {
        if (qword_280FA09F8 != -1)
        {
          swift_once();
        }

        v9 = *(v0 + 72);
        sub_2203C1EE8();
        v10 = swift_allocObject();
        *(v10 + 16) = xmmword_22042D3F0;
        v11 = *(*(v9 + 16) + 16);
        v12 = MEMORY[0x277D83C10];
        *(v10 + 56) = MEMORY[0x277D83B88];
        *(v10 + 64) = v12;
        *(v10 + 32) = v11;
        sub_22042BCA0();
        sub_22042B8D0();
      }

      sub_2203DF670(*(v0 + 72), type metadata accessor for Com_Apple_Stocks_Personalization_Session);
    }
  }

  v13 = *(v0 + 232);
  v14 = *(v0 + 216);
  v15 = *(v0 + 192);
  v16 = *(v0 + 168);
  v17 = *(v0 + 144);
  v18 = *(v0 + 120);
  v19 = *(v0 + 96);
  v21 = *(v0 + 64);
  v20 = *(v0 + 72);

  v22 = *(v0 + 8);

  return v22();
}

uint64_t sub_2203D4004()
{
  v1 = *(*v0 + 248);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_2203D4100, 0, 0);
}

uint64_t sub_2203D4100()
{
  (*(*(v0 + 136) + 8))(*(v0 + 144), *(v0 + 128));
  sub_22042ACE0();
  if (sub_22042ACD0())
  {
    v1 = *(*(v0 + 48) + OBJC_IVAR____TtC21StocksPersonalization30UserEventHistoryEventProcessor_sessionManager);
    if (sub_22042B410())
    {
      v3 = *(v0 + 64);
      v2 = *(v0 + 72);
      sub_22042B490();

      sub_2203DF148(v3, v2, type metadata accessor for Com_Apple_Stocks_Personalization_Session);
      if (qword_280FA24A8 != -1)
      {
        swift_once();
      }

      v5 = *(v0 + 48);
      v4 = *(v0 + 56);
      sub_2203DEB0C(&unk_280FA1498, type metadata accessor for UserEventHistoryEventProcessor);
      sub_22042AB30();
      if (*(v0 + 272) == 1)
      {
        if (qword_280FA09F8 != -1)
        {
          swift_once();
        }

        v6 = *(v0 + 72);
        sub_2203C1EE8();
        v7 = swift_allocObject();
        *(v7 + 16) = xmmword_22042D3F0;
        v8 = sub_2203D9FF8(type metadata accessor for Com_Apple_Stocks_Personalization_Session, &qword_280FA1638, type metadata accessor for Com_Apple_Stocks_Personalization_Session);
        MEMORY[0x223D7BDE0](v8);

        *(v7 + 56) = MEMORY[0x277D837D0];
        *(v7 + 64) = sub_2203C1FA8();
        *(v7 + 32) = 0;
        *(v7 + 40) = 0xE000000000000000;
        sub_22042BCA0();
        sub_22042B8D0();
      }

      else
      {
        if (qword_280FA09F8 != -1)
        {
          swift_once();
        }

        v9 = *(v0 + 72);
        sub_2203C1EE8();
        v10 = swift_allocObject();
        *(v10 + 16) = xmmword_22042D3F0;
        v11 = *(*(v9 + 16) + 16);
        v12 = MEMORY[0x277D83C10];
        *(v10 + 56) = MEMORY[0x277D83B88];
        *(v10 + 64) = v12;
        *(v10 + 32) = v11;
        sub_22042BCA0();
        sub_22042B8D0();
      }

      sub_2203DF670(*(v0 + 72), type metadata accessor for Com_Apple_Stocks_Personalization_Session);
    }
  }

  v13 = *(v0 + 232);
  v14 = *(v0 + 216);
  v15 = *(v0 + 192);
  v16 = *(v0 + 168);
  v17 = *(v0 + 144);
  v18 = *(v0 + 120);
  v19 = *(v0 + 96);
  v21 = *(v0 + 64);
  v20 = *(v0 + 72);

  v22 = *(v0 + 8);

  return v22();
}

uint64_t sub_2203D4598()
{
  v1 = *(*v0 + 256);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_2203D4694, 0, 0);
}

uint64_t sub_2203D4694()
{
  (*(*(v0 + 112) + 8))(*(v0 + 120), *(v0 + 104));
  sub_22042ACE0();
  if (sub_22042ACD0())
  {
    v1 = *(*(v0 + 48) + OBJC_IVAR____TtC21StocksPersonalization30UserEventHistoryEventProcessor_sessionManager);
    if (sub_22042B410())
    {
      v3 = *(v0 + 64);
      v2 = *(v0 + 72);
      sub_22042B490();

      sub_2203DF148(v3, v2, type metadata accessor for Com_Apple_Stocks_Personalization_Session);
      if (qword_280FA24A8 != -1)
      {
        swift_once();
      }

      v5 = *(v0 + 48);
      v4 = *(v0 + 56);
      sub_2203DEB0C(&unk_280FA1498, type metadata accessor for UserEventHistoryEventProcessor);
      sub_22042AB30();
      if (*(v0 + 272) == 1)
      {
        if (qword_280FA09F8 != -1)
        {
          swift_once();
        }

        v6 = *(v0 + 72);
        sub_2203C1EE8();
        v7 = swift_allocObject();
        *(v7 + 16) = xmmword_22042D3F0;
        v8 = sub_2203D9FF8(type metadata accessor for Com_Apple_Stocks_Personalization_Session, &qword_280FA1638, type metadata accessor for Com_Apple_Stocks_Personalization_Session);
        MEMORY[0x223D7BDE0](v8);

        *(v7 + 56) = MEMORY[0x277D837D0];
        *(v7 + 64) = sub_2203C1FA8();
        *(v7 + 32) = 0;
        *(v7 + 40) = 0xE000000000000000;
        sub_22042BCA0();
        sub_22042B8D0();
      }

      else
      {
        if (qword_280FA09F8 != -1)
        {
          swift_once();
        }

        v9 = *(v0 + 72);
        sub_2203C1EE8();
        v10 = swift_allocObject();
        *(v10 + 16) = xmmword_22042D3F0;
        v11 = *(*(v9 + 16) + 16);
        v12 = MEMORY[0x277D83C10];
        *(v10 + 56) = MEMORY[0x277D83B88];
        *(v10 + 64) = v12;
        *(v10 + 32) = v11;
        sub_22042BCA0();
        sub_22042B8D0();
      }

      sub_2203DF670(*(v0 + 72), type metadata accessor for Com_Apple_Stocks_Personalization_Session);
    }
  }

  v13 = *(v0 + 232);
  v14 = *(v0 + 216);
  v15 = *(v0 + 192);
  v16 = *(v0 + 168);
  v17 = *(v0 + 144);
  v18 = *(v0 + 120);
  v19 = *(v0 + 96);
  v21 = *(v0 + 64);
  v20 = *(v0 + 72);

  v22 = *(v0 + 8);

  return v22();
}

uint64_t sub_2203D4B2C()
{
  v1 = *(*v0 + 264);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_2203D4C28, 0, 0);
}

uint64_t sub_2203D4C28()
{
  (*(*(v0 + 88) + 8))(*(v0 + 96), *(v0 + 80));
  sub_22042ACE0();
  if (sub_22042ACD0())
  {
    v1 = *(*(v0 + 48) + OBJC_IVAR____TtC21StocksPersonalization30UserEventHistoryEventProcessor_sessionManager);
    if (sub_22042B410())
    {
      v3 = *(v0 + 64);
      v2 = *(v0 + 72);
      sub_22042B490();

      sub_2203DF148(v3, v2, type metadata accessor for Com_Apple_Stocks_Personalization_Session);
      if (qword_280FA24A8 != -1)
      {
        swift_once();
      }

      v5 = *(v0 + 48);
      v4 = *(v0 + 56);
      sub_2203DEB0C(&unk_280FA1498, type metadata accessor for UserEventHistoryEventProcessor);
      sub_22042AB30();
      if (*(v0 + 272) == 1)
      {
        if (qword_280FA09F8 != -1)
        {
          swift_once();
        }

        v6 = *(v0 + 72);
        sub_2203C1EE8();
        v7 = swift_allocObject();
        *(v7 + 16) = xmmword_22042D3F0;
        v8 = sub_2203D9FF8(type metadata accessor for Com_Apple_Stocks_Personalization_Session, &qword_280FA1638, type metadata accessor for Com_Apple_Stocks_Personalization_Session);
        MEMORY[0x223D7BDE0](v8);

        *(v7 + 56) = MEMORY[0x277D837D0];
        *(v7 + 64) = sub_2203C1FA8();
        *(v7 + 32) = 0;
        *(v7 + 40) = 0xE000000000000000;
        sub_22042BCA0();
        sub_22042B8D0();
      }

      else
      {
        if (qword_280FA09F8 != -1)
        {
          swift_once();
        }

        v9 = *(v0 + 72);
        sub_2203C1EE8();
        v10 = swift_allocObject();
        *(v10 + 16) = xmmword_22042D3F0;
        v11 = *(*(v9 + 16) + 16);
        v12 = MEMORY[0x277D83C10];
        *(v10 + 56) = MEMORY[0x277D83B88];
        *(v10 + 64) = v12;
        *(v10 + 32) = v11;
        sub_22042BCA0();
        sub_22042B8D0();
      }

      sub_2203DF670(*(v0 + 72), type metadata accessor for Com_Apple_Stocks_Personalization_Session);
    }
  }

  v13 = *(v0 + 232);
  v14 = *(v0 + 216);
  v15 = *(v0 + 192);
  v16 = *(v0 + 168);
  v17 = *(v0 + 144);
  v18 = *(v0 + 120);
  v19 = *(v0 + 96);
  v21 = *(v0 + 64);
  v20 = *(v0 + 72);

  v22 = *(v0 + 8);

  return v22();
}

uint64_t sub_2203D50C0(uint64_t a1)
{
  v32 = a1;
  sub_2203DE8BC(0, &unk_280FA03E0, type metadata accessor for UserEventHistoryEventProcessor.IncomingEvent, MEMORY[0x277D85760]);
  v30 = *(v1 - 8);
  v31 = v1;
  v2 = *(v30 + 64);
  MEMORY[0x28223BE20](v1, v3);
  v29 = &v28 - v4;
  v5 = sub_22042ABE0();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v28 - v9;
  sub_2203DE8BC(0, qword_280FA1548, type metadata accessor for UserEventHistoryEventProcessor.IncomingEvent, MEMORY[0x277D83D88]);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8, v13);
  v15 = &v28 - v14;
  v16 = type metadata accessor for UserEventHistoryEventProcessor.IncomingEvent(0);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v20 = MEMORY[0x28223BE20](v16, v19);
  v22 = &v28 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20, v23);
  v25 = &v28 - v24;
  (*(v6 + 16))(v10, v32, v5);
  sub_2203D198C(v10, v15);
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    return sub_2203DF738(v15, qword_280FA1548, type metadata accessor for UserEventHistoryEventProcessor.IncomingEvent, MEMORY[0x277D83D88], sub_2203DE8BC);
  }

  sub_2203DF148(v15, v25, type metadata accessor for UserEventHistoryEventProcessor.IncomingEvent);
  sub_2203DF42C(v25, v22, type metadata accessor for UserEventHistoryEventProcessor.IncomingEvent);
  sub_2203DE8BC(0, &qword_280FA03D0, type metadata accessor for UserEventHistoryEventProcessor.IncomingEvent, MEMORY[0x277D85788]);
  v27 = v29;
  sub_22042BBB0();
  (*(v30 + 8))(v27, v31);
  return sub_2203DF670(v25, type metadata accessor for UserEventHistoryEventProcessor.IncomingEvent);
}

uint64_t sub_2203D54A0()
{
  v0 = sub_22042A5B0();
  v44 = *(v0 - 8);
  v1 = *(v44 + 64);
  MEMORY[0x28223BE20](v0, v2);
  v4 = &v39 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_22042AC80();
  v45 = *(v5 - 8);
  v6 = *(v45 + 64);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_22042AFB0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10, v13);
  v15 = &v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2203DE9E4();
  v16 = sub_22042ABC0();
  v17 = sub_22042AC60();
  v19 = v18;
  v41 = v9;
  v42 = v5;
  v39 = v4;
  v40 = v0;
  v20 = v46;
  v43 = v11;
  v21 = v17;

  v22 = sub_22042A380();
  v23 = *(v22 + 48);
  v24 = *(v22 + 52);
  swift_allocObject();
  sub_22042A370();
  sub_2203DEB0C(&qword_280FA23C0, MEMORY[0x277D68840]);
  sub_22042A360();

  v29 = v41;
  sub_22042AFA0();
  sub_22042AC70();
  v31 = v30;
  (*(v45 + 8))(v29, v42);
  if (v31)
  {
    v32 = *(v20 + OBJC_IVAR____TtC21StocksPersonalization30UserEventHistoryEventProcessor_sessionManager);
    v33 = v39;
    sub_22042A590();
    sub_22042B3E0();
    v34 = v43;
    sub_2203DF1B0(v21, v19);

    (*(v44 + 8))(v33, v40);
    return (*(v34 + 8))(v15, v10);
  }

  else
  {
    type metadata accessor for UserEventHistoryEventProcessor.Errors(0);
    sub_2203DEB0C(&qword_27CF52388, type metadata accessor for UserEventHistoryEventProcessor.Errors);
    v35 = swift_allocError();
    v37 = v36;
    v38 = sub_22042AAC0();
    (*(*(v38 - 8) + 56))(v37, 1, 2, v38);
    swift_willThrow();
    sub_2203DF1B0(v21, v19);
    (*(v43 + 8))(v15, v10);
    if (qword_280FA09F8 != -1)
    {
      swift_once();
    }

    sub_22042BC90();
    sub_2203C1EE8();
    v25 = swift_allocObject();
    *(v25 + 16) = xmmword_22042D3F0;
    v48 = 0;
    v49 = 0xE000000000000000;
    v47 = v35;
    sub_2203CFDB8(0, &unk_280FA01A0);
    sub_22042BDF0();
    v26 = v48;
    v27 = v49;
    *(v25 + 56) = MEMORY[0x277D837D0];
    *(v25 + 64) = sub_2203C1FA8();
    *(v25 + 32) = v26;
    *(v25 + 40) = v27;
    sub_22042B8D0();

    return MEMORY[0x223D7C730](v35);
  }
}

uint64_t sub_2203D59FC()
{
  v0 = sub_22042A5B0();
  v45 = *(v0 - 8);
  v1 = *(v45 + 64);
  MEMORY[0x28223BE20](v0, v2);
  v4 = &v40 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_22042AC80();
  v47 = *(v5 - 8);
  v6 = *(v47 + 64);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_22042B000();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10, v13);
  v15 = &v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2203DEA78();
  v16 = sub_22042ABC0();
  v17 = sub_22042AC60();
  v19 = v18;
  v42 = v9;
  v43 = v5;
  v40 = v4;
  v41 = v0;
  v44 = v11;
  v20 = v17;

  v21 = sub_22042A380();
  v22 = *(v21 + 48);
  v23 = *(v21 + 52);
  swift_allocObject();
  sub_22042A370();
  sub_2203DEB0C(&qword_280FA23A8, MEMORY[0x277D68980]);
  sub_22042A360();
  v24 = v19;

  v29 = v42;
  sub_22042AFF0();
  sub_22042AC70();
  v31 = v30;
  (*(v47 + 8))(v29, v43);
  if (v31)
  {
    v32 = *(v46 + OBJC_IVAR____TtC21StocksPersonalization30UserEventHistoryEventProcessor_sessionManager);
    v33 = v40;
    sub_22042A590();
    sub_22042B3F0();
    v34 = (v45 + 8);
    v35 = (v44 + 8);

    sub_2203DF1B0(v20, v24);

    (*v34)(v33, v41);
    return (*v35)(v15, v10);
  }

  else
  {
    type metadata accessor for UserEventHistoryEventProcessor.Errors(0);
    sub_2203DEB0C(&qword_27CF52388, type metadata accessor for UserEventHistoryEventProcessor.Errors);
    v36 = swift_allocError();
    v38 = v37;
    v39 = sub_22042AAC0();
    (*(*(v39 - 8) + 56))(v38, 1, 2, v39);
    swift_willThrow();
    sub_2203DF1B0(v20, v19);
    (*(v44 + 8))(v15, v10);
    if (qword_280FA09F8 != -1)
    {
      swift_once();
    }

    sub_22042BC90();
    sub_2203C1EE8();
    v25 = swift_allocObject();
    *(v25 + 16) = xmmword_22042D3F0;
    v49 = 0;
    v50 = 0xE000000000000000;
    v48 = v36;
    sub_2203CFDB8(0, &unk_280FA01A0);
    sub_22042BDF0();
    v26 = v49;
    v27 = v50;
    *(v25 + 56) = MEMORY[0x277D837D0];
    *(v25 + 64) = sub_2203C1FA8();
    *(v25 + 32) = v26;
    *(v25 + 40) = v27;
    sub_22042B8D0();

    return MEMORY[0x223D7C730](v36);
  }
}

uint64_t sub_2203D5F64(uint64_t a1)
{
  v2[17] = a1;
  v2[18] = v1;
  sub_2203DE8BC(0, qword_280FA2010, type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock, MEMORY[0x277D83D88]);
  v4 = *(*(v3 - 8) + 64) + 15;
  v2[19] = swift_task_alloc();
  v5 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent(0);
  v2[20] = v5;
  v6 = *(v5 - 8);
  v2[21] = v6;
  v7 = *(v6 + 64) + 15;
  v2[22] = swift_task_alloc();
  v2[23] = swift_task_alloc();
  v8 = sub_22042B070();
  v2[24] = v8;
  v9 = *(v8 - 8);
  v2[25] = v9;
  v10 = *(v9 + 64) + 15;
  v2[26] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2203D60E8, 0, 0);
}

uint64_t sub_2203D60E8()
{
  v1 = v0[17];
  sub_2203DEB54();
  sub_22042ABD0();
  if (!v0[5])
  {
    sub_2203DF738((v0 + 2), &qword_280FA0188, MEMORY[0x277D84F70] + 8, MEMORY[0x277D83D88], sub_2203DF5B8);
LABEL_6:
    sub_22042ACE0();
    if (sub_22042ACD0())
    {
      if (qword_280FA09F8 != -1)
      {
        swift_once();
      }

      sub_22042BC90();
      sub_22042B8D0();
    }

    goto LABEL_13;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_6;
  }

  v2 = v0[18];
  v0[27] = v0[14];
  v0[28] = *(v2 + OBJC_IVAR____TtC21StocksPersonalization30UserEventHistoryEventProcessor_sessionManager);
  if (sub_22042B410())
  {
    v3 = v0[17];

    v4 = sub_22042ABC0();
    v0[29] = sub_22042AC60();
    v0[30] = v5;
    v10 = v0[26];
    v11 = v0[24];

    v12 = sub_22042A380();
    v13 = *(v12 + 48);
    v14 = *(v12 + 52);
    swift_allocObject();
    sub_22042A370();
    sub_2203DEB0C(&qword_280FA2398, MEMORY[0x277D689E0]);
    sub_22042A360();
    v0[31] = 0;

    v24 = swift_task_alloc();
    v0[32] = v24;
    *v24 = v0;
    v24[1] = sub_2203D65B0;
    v25 = v0[26];
    v27 = v0[18];
    v26 = v0[19];

    return sub_2203DA3BC(v26, v27, v25);
  }

  type metadata accessor for UserEventHistoryEventProcessor.Errors(0);
  sub_2203DEB0C(&qword_27CF52388, type metadata accessor for UserEventHistoryEventProcessor.Errors);
  v6 = swift_allocError();
  v8 = v7;
  v9 = sub_22042AAC0();
  (*(*(v9 - 8) + 56))(v8, 2, 2, v9);
  swift_willThrow();
  if (qword_280FA09F8 != -1)
  {
    swift_once();
  }

  sub_22042BC90();
  sub_2203C1EE8();
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_22042D3F0;
  v0[10] = 0;
  v0[11] = 0xE000000000000000;
  v0[15] = v6;
  sub_2203CFDB8(0, &unk_280FA01A0);
  sub_22042BDF0();
  v16 = v0[10];
  v17 = v0[11];
  *(v15 + 56) = MEMORY[0x277D837D0];
  *(v15 + 64) = sub_2203C1FA8();
  *(v15 + 32) = v16;
  *(v15 + 40) = v17;
  sub_22042B8D0();

  MEMORY[0x223D7C730](v6);
  swift_unknownObjectRelease();
LABEL_13:
  v18 = v0[26];
  v19 = v0[22];
  v20 = v0[23];
  v21 = v0[19];

  v22 = v0[1];

  return v22();
}

uint64_t sub_2203D65B0()
{
  v1 = *(*v0 + 256);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_2203D66AC, 0, 0);
}

uint64_t sub_2203D66AC()
{
  v1 = *(v0 + 248);
  v2 = *(v0 + 184);
  v4 = *(v0 + 152);
  v3 = *(v0 + 160);
  v5 = swift_task_alloc();
  *(v5 + 16) = *(v0 + 208);
  *(v5 + 32) = v4;
  sub_2203DEB0C(&unk_280FA2130, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent);
  sub_22042B810();

  sub_2203DF738(v4, qword_280FA2010, type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock, MEMORY[0x277D83D88], sub_2203DE8BC);
  sub_22042ACE0();
  if (sub_22042ACD0())
  {
    if (qword_280FA09F8 != -1)
    {
      swift_once();
    }

    v6 = *(v0 + 184);
    sub_2203C1EE8();
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_22042D3F0;
    v8 = sub_2203D9FF8(type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent, &unk_280FA2130, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent);
    if (v1)
    {
      *(v7 + 16) = 0;

      sub_22042BC80();
      v10 = swift_allocObject();
      *(v10 + 16) = xmmword_22042D3F0;
      *(v0 + 96) = 0;
      *(v0 + 104) = 0xE000000000000000;
      *(v0 + 128) = v1;
      sub_2203CFDB8(0, &unk_280FA01A0);
      sub_22042BDF0();
      v11 = *(v0 + 96);
      v12 = *(v0 + 104);
      *(v10 + 56) = MEMORY[0x277D837D0];
      *(v10 + 64) = sub_2203C1FA8();
      *(v10 + 32) = v11;
      *(v10 + 40) = v12;
      sub_22042B8D0();

      MEMORY[0x223D7C730](v1);
    }

    else
    {
      v13 = v8;
      v14 = v9;
      *(v7 + 56) = MEMORY[0x277D837D0];
      *(v7 + 64) = sub_2203C1FA8();
      *(v7 + 32) = v13;
      *(v7 + 40) = v14;
      sub_22042BCA0();
      sub_22042B8D0();
    }
  }

  v15 = *(v0 + 224);
  if (sub_22042B410())
  {
    sub_2203DF42C(*(v0 + 184), *(v0 + 176), type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent);
    v42 = sub_22042B480();
    v17 = v16;
    v18 = *(v16 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v17 + 16) = v18;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v18 = sub_22041EF10(0, v18[2] + 1, 1, v18);
      *(v17 + 16) = v18;
    }

    v21 = v18[2];
    v20 = v18[3];
    if (v21 >= v20 >> 1)
    {
      v18 = sub_22041EF10(v20 > 1, v21 + 1, 1, v18);
      *(v17 + 16) = v18;
    }

    v23 = *(v0 + 232);
    v22 = *(v0 + 240);
    v24 = *(v0 + 216);
    v25 = *(v0 + 200);
    v40 = *(v0 + 192);
    v41 = *(v0 + 208);
    v26 = *(v0 + 176);
    v39 = *(v0 + 184);
    v27 = *(v0 + 168);
    v18[2] = v21 + 1;
    sub_2203DF148(v26, v18 + ((*(v27 + 80) + 32) & ~*(v27 + 80)) + *(v27 + 72) * v21, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent);
    v42(v0 + 48, 0);

    sub_2203DF1B0(v23, v22);
    swift_unknownObjectRelease();
    sub_2203DF670(v39, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent);
    (*(v25 + 8))(v41, v40);
  }

  else
  {
    v28 = *(v0 + 208);
    v29 = *(v0 + 216);
    v30 = *(v0 + 192);
    v31 = *(v0 + 200);
    v32 = *(v0 + 184);
    sub_2203DF1B0(*(v0 + 232), *(v0 + 240));
    swift_unknownObjectRelease();
    sub_2203DF670(v32, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent);
    (*(v31 + 8))(v28, v30);
  }

  v33 = *(v0 + 208);
  v34 = *(v0 + 176);
  v35 = *(v0 + 184);
  v36 = *(v0 + 152);

  v37 = *(v0 + 8);

  return v37();
}

uint64_t sub_2203D6BC0(uint64_t a1)
{
  v2[20] = a1;
  v2[21] = v1;
  v3 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent(0);
  v2[22] = v3;
  v4 = *(v3 - 8);
  v2[23] = v4;
  v5 = *(v4 + 64) + 15;
  v2[24] = swift_task_alloc();
  v2[25] = swift_task_alloc();
  sub_2203DE8BC(0, &qword_280FA0DF0, type metadata accessor for FeedViewEventUserInfo, MEMORY[0x277D83D88]);
  v7 = *(*(v6 - 8) + 64) + 15;
  v2[26] = swift_task_alloc();
  v8 = sub_22042AAC0();
  v2[27] = v8;
  v9 = *(v8 - 8);
  v2[28] = v9;
  v10 = *(v9 + 64) + 15;
  v2[29] = swift_task_alloc();
  v2[30] = swift_task_alloc();
  v11 = sub_22042B0B0();
  v2[31] = v11;
  v12 = *(v11 - 8);
  v2[32] = v12;
  v13 = *(v12 + 64) + 15;
  v2[33] = swift_task_alloc();
  v2[34] = swift_task_alloc();
  v14 = sub_22042B0A0();
  v2[35] = v14;
  v15 = *(v14 - 8);
  v2[36] = v15;
  v16 = *(v15 + 64) + 15;
  v2[37] = swift_task_alloc();
  v17 = sub_22042AF60();
  v2[38] = v17;
  v18 = *(v17 - 8);
  v2[39] = v18;
  v19 = *(v18 + 64) + 15;
  v2[40] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2203D6E70, 0, 0);
}

uint64_t sub_2203D6E70()
{
  v0[41] = *(v0[21] + OBJC_IVAR____TtC21StocksPersonalization30UserEventHistoryEventProcessor_sessionManager);
  if (!sub_22042B410())
  {
    v5 = v0[27];
    v6 = v0[28];
    type metadata accessor for UserEventHistoryEventProcessor.Errors(0);
    sub_2203DEB0C(&qword_27CF52388, type metadata accessor for UserEventHistoryEventProcessor.Errors);
    v7 = swift_allocError();
    (*(v6 + 56))(v8, 2, 2, v5);
    swift_willThrow();
    if (qword_280FA09F8 != -1)
    {
      swift_once();
    }

    sub_22042BC90();
    sub_2203C1EE8();
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_22042D3F0;
    v0[10] = 0;
    v0[11] = 0xE000000000000000;
    v0[18] = v7;
    sub_2203CFDB8(0, &unk_280FA01A0);
    sub_22042BDF0();
    v17 = v0[10];
    v18 = v0[11];
    *(v16 + 56) = MEMORY[0x277D837D0];
    *(v16 + 64) = sub_2203C1FA8();
    *(v16 + 32) = v17;
    *(v16 + 40) = v18;
    sub_22042B8D0();

    MEMORY[0x223D7C730](v7);
    goto LABEL_6;
  }

  v1 = v0[20];

  sub_2203DEBE8();
  v2 = sub_22042ABC0();
  v3 = sub_22042AC60();
  v0[42] = v3;
  v0[43] = v4;
  v9 = v3;
  v10 = v4;
  v11 = v0[40];
  v12 = v0[38];

  v13 = sub_22042A380();
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  swift_allocObject();
  sub_22042A370();
  sub_2203DEB0C(&unk_280FA23D8, MEMORY[0x277D68478]);
  sub_22042A360();
  v65 = v10;
  v30 = v0[40];
  v32 = v0[36];
  v31 = v0[37];
  v33 = v0[34];
  v34 = v0[32];
  v62 = v0[35];
  v63 = v0[33];
  v35 = v0[31];

  sub_22042AF40();
  sub_22042B090();
  (*(v32 + 8))(v31, v62);
  (*(v34 + 104))(v63, *MEMORY[0x277D68EF0], v35);
  sub_2203DEB0C(&qword_280FA2380, MEMORY[0x277D68F00]);
  sub_22042BB00();
  sub_22042BB00();
  v37 = v0[33];
  v36 = v0[34];
  v38 = v0[31];
  v39 = v0[32];
  if (v0[12] == v0[14] && v0[13] == v0[15])
  {
    v40 = *(v39 + 8);
    v40(v0[33], v0[31]);
    v40(v36, v38);

    v41 = v65;
  }

  else
  {
    v42 = v0[13];
    v43 = v0[15];
    v64 = sub_22042BF50();
    v44 = *(v39 + 8);
    v44(v37, v38);
    v44(v36, v38);

    v41 = v65;
    if ((v64 & 1) == 0)
    {
      goto LABEL_23;
    }
  }

  v45 = v0[20];
  sub_22042ABD0();
  v46 = v0[26];
  if (v0[5])
  {
    v47 = type metadata accessor for FeedViewEventUserInfo();
    v48 = swift_dynamicCast();
    v49 = *(v47 - 8);
    (*(v49 + 56))(v46, v48 ^ 1u, 1, v47);
    if ((*(v49 + 48))(v46, 1, v47) != 1)
    {
      v50 = v0[29];
      v51 = v0[30];
      v52 = v0[27];
      v53 = v0[28];
      v54 = v0[26];
      (*(v53 + 16))(v50, v54, v52);
      sub_2203DF670(v54, type metadata accessor for FeedViewEventUserInfo);
      (*(v53 + 32))(v51, v50, v52);
      v55 = swift_task_alloc();
      v0[44] = v55;
      *v55 = v0;
      v55[1] = sub_2203D7694;
      v56 = v0[30];
      v57 = v0[21];

      return sub_2203DD16C(v56);
    }
  }

  else
  {
    sub_2203DF738((v0 + 2), &qword_280FA0188, MEMORY[0x277D84F70] + 8, MEMORY[0x277D83D88], sub_2203DF5B8);
    v58 = type metadata accessor for FeedViewEventUserInfo();
    (*(*(v58 - 8) + 56))(v46, 1, 1, v58);
  }

  sub_2203DF738(v0[26], &unk_280FA0DF0, type metadata accessor for FeedViewEventUserInfo, MEMORY[0x277D83D88], sub_2203DE8BC);
  sub_22042ACE0();
  if (sub_22042ACD0())
  {
    if (qword_280FA09F8 != -1)
    {
      swift_once();
    }

    v60 = v0[39];
    v59 = v0[40];
    v61 = v0[38];
    sub_22042BC90();
    sub_22042B8D0();
    sub_2203DF1B0(v9, v41);
    (*(v60 + 8))(v59, v61);
    goto LABEL_6;
  }

LABEL_23:
  (*(v0[39] + 8))(v0[40], v0[38]);
  sub_2203DF1B0(v9, v41);
LABEL_6:
  v19 = v0[40];
  v20 = v0[37];
  v22 = v0[33];
  v21 = v0[34];
  v24 = v0[29];
  v23 = v0[30];
  v26 = v0[25];
  v25 = v0[26];
  v27 = v0[24];

  v28 = v0[1];

  return v28();
}

uint64_t sub_2203D7694(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 352);
  v8 = *v3;
  *(*v3 + 360) = v2;

  if (v2)
  {
    v9 = sub_2203D7D04;
  }

  else
  {
    *(v6 + 368) = a2;
    *(v6 + 376) = a1;
    v9 = sub_2203D77C8;
  }

  return MEMORY[0x2822009F8](v9, 0, 0);
}

uint64_t sub_2203D77C8()
{
  v1 = v0[46];
  v2 = v0[47];
  v3 = v0[45];
  v4 = v0[40];
  v5 = v0[30];
  v6 = v0[25];
  v8 = v0[21];
  v7 = v0[22];
  v9 = swift_task_alloc();
  v9[2] = v4;
  v9[3] = v8;
  v9[4] = v5;
  v9[5] = v2;
  v9[6] = v1;
  sub_2203DEB0C(&unk_280FA2130, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent);
  sub_22042B810();

  sub_22042ACE0();
  if (sub_22042ACD0())
  {
    if (qword_280FA09F8 != -1)
    {
      swift_once();
    }

    v10 = v0[25];
    sub_2203C1EE8();
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_22042D3F0;
    v12 = sub_2203D9FF8(type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent, &unk_280FA2130, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent);
    if (v3)
    {
      *(v11 + 16) = 0;

      sub_22042BC80();
      v14 = swift_allocObject();
      *(v14 + 16) = xmmword_22042D3F0;
      v0[16] = 0;
      v0[17] = 0xE000000000000000;
      v0[19] = v3;
      sub_2203CFDB8(0, &unk_280FA01A0);
      sub_22042BDF0();
      v15 = v0[16];
      v16 = v0[17];
      *(v14 + 56) = MEMORY[0x277D837D0];
      *(v14 + 64) = sub_2203C1FA8();
      *(v14 + 32) = v15;
      *(v14 + 40) = v16;
      sub_22042B8D0();

      MEMORY[0x223D7C730](v3);
    }

    else
    {
      v17 = v12;
      v18 = v13;
      *(v11 + 56) = MEMORY[0x277D837D0];
      *(v11 + 64) = sub_2203C1FA8();
      *(v11 + 32) = v17;
      *(v11 + 40) = v18;
      sub_22042BCA0();
      sub_22042B8D0();
    }
  }

  v19 = v0[41];
  if (sub_22042B410())
  {
    sub_2203DF42C(v0[25], v0[24], type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent);
    v55 = sub_22042B480();
    v21 = v20;
    v22 = *(v20 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v21 + 16) = v22;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v22 = sub_22041EF10(0, v22[2] + 1, 1, v22);
      *(v21 + 16) = v22;
    }

    v25 = v22[2];
    v24 = v22[3];
    if (v25 >= v24 >> 1)
    {
      v22 = sub_22041EF10(v24 > 1, v25 + 1, 1, v22);
      *(v21 + 16) = v22;
    }

    v27 = v0[42];
    v26 = v0[43];
    v28 = v0[39];
    v53 = v0[38];
    v54 = v0[40];
    v29 = v0[28];
    v51 = v0[27];
    v52 = v0[30];
    v30 = v0[24];
    v31 = v0[25];
    v32 = v0[23];
    v22[2] = v25 + 1;
    sub_2203DF148(v30, v22 + ((*(v32 + 80) + 32) & ~*(v32 + 80)) + *(v32 + 72) * v25, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent);
    v55();
    sub_2203DF1B0(v27, v26);

    sub_2203DF670(v31, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent);
    (*(v29 + 8))(v52, v51);
    (*(v28 + 8))(v54, v53);
  }

  else
  {
    v34 = v0[39];
    v33 = v0[40];
    v35 = v0[38];
    v36 = v0[30];
    v37 = v0[27];
    v38 = v0[28];
    v39 = v0[25];
    sub_2203DF1B0(v0[42], v0[43]);
    sub_2203DF670(v39, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent);
    (*(v38 + 8))(v36, v37);
    (*(v34 + 8))(v33, v35);
  }

  v40 = v0[40];
  v41 = v0[37];
  v43 = v0[33];
  v42 = v0[34];
  v45 = v0[29];
  v44 = v0[30];
  v47 = v0[25];
  v46 = v0[26];
  v48 = v0[24];

  v49 = v0[1];

  return v49();
}