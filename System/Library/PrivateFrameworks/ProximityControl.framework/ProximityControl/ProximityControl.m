uint64_t sub_26117AE40@<X0>(_BYTE *a1@<X8>)
{

  *a1 = 1;
  return result;
}

uint64_t sub_26117AF2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_26118BE10();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24) + 8);
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

uint64_t sub_26117AFF8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_26118BE10();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = a2;
  }

  return result;
}

void makeIneligibleForProcessing(void *a1)
{
  v1 = a1;
  [v1 setEligibleForHandoff:0];
  [v1 setEligibleForPublicIndexing:0];
  [v1 setEligibleForSearch:0];
  [v1 setEligibleForPrediction:0];
}

void localizeActivityIfNeeded(void *a1, uint64_t a2)
{
  v12 = a1;
  v3 = [PCLocalizedString keyValueForKey:a2];
  v4 = [v12 userInfo];
  v5 = [v4 objectForKeyedSubscript:@"displayTitle"];
  if ([v5 isEqualToString:v3])
  {
  }

  else
  {
    v6 = [v12 title];
    v7 = [v6 isEqualToString:v3];

    if (!v7)
    {
      goto LABEL_5;
    }
  }

  v8 = [PCLocalizedString localizedStringForKey:a2];
  v9 = [v12 userInfo];
  v10 = [v9 mutableCopy];

  [v10 setObject:v8 forKeyedSubscript:@"displayTitle"];
  v11 = [v10 copy];
  [v12 setUserInfo:v11];

  [v12 setTitle:v8];
LABEL_5:
}

void sub_2611841B4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v3 - 56));
  _Unwind_Resume(a1);
}

uint64_t sub_261187744()
{
  v0 = sub_26118BE40();
  __swift_allocate_value_buffer(v0, qword_27FE85FE8);
  __swift_project_value_buffer(v0, qword_27FE85FE8);
  return sub_26118BE30();
}

uint64_t sub_2611877C4()
{
  v1 = 0x6553776569566370;
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
    return 0x6C6974756370;
  }
}

uint64_t sub_261187824@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_26118B40C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_261187858(uint64_t a1)
{
  v2 = sub_261187FD4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_261187894(uint64_t a1)
{
  v2 = sub_261187FD4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2611878D8()
{
  sub_26118C0A0();
  MEMORY[0x2666FACF0](0);
  return sub_26118C0C0();
}

uint64_t sub_261187944()
{
  sub_26118C0A0();
  MEMORY[0x2666FACF0](0);
  return sub_26118C0C0();
}

uint64_t sub_261187990@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_26118C090();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_261187A10(uint64_t a1)
{
  v2 = sub_261188028();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_261187A4C(uint64_t a1)
{
  v2 = sub_261188028();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_261187A94(uint64_t a1)
{
  v2 = sub_26118807C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_261187AD0(uint64_t a1)
{
  v2 = sub_26118807C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_261187B0C(uint64_t a1)
{
  v2 = sub_2611880D0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_261187B48(uint64_t a1)
{
  v2 = sub_2611880D0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t PCProximityHandoffClient.Identifier.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE86000, &qword_26118DD90);
  v31 = *(v3 - 8);
  v32 = v3;
  v4 = (*(v31 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v30 = &v24 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE86008, &qword_26118DD98);
  v28 = *(v6 - 8);
  v29 = v6;
  v7 = (*(v28 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v27 = &v24 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE86010, &qword_26118DDA0);
  v25 = *(v9 - 8);
  v26 = v9;
  v10 = (*(v25 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v12 = &v24 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE86018, &qword_26118DDA8);
  v14 = *(v13 - 8);
  v15 = (*(v14 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v17 = &v24 - v16;
  v18 = v1[1];
  v24 = *v1;
  v19 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_261187FD4();
  sub_26118C0E0();
  if (!v18)
  {
    v33 = 0;
    sub_2611880D0();
    sub_26118C040();
    (*(v25 + 8))(v12, v26);
    return (*(v14 + 8))(v17, v13);
  }

  if (v18 == 1)
  {
    v34 = 1;
    sub_26118807C();
    v20 = v27;
    sub_26118C040();
    (*(v28 + 8))(v20, v29);
    return (*(v14 + 8))(v17, v13);
  }

  v35 = 2;
  sub_261188028();
  v22 = v30;
  sub_26118C040();
  v23 = v32;
  sub_26118C060();
  (*(v31 + 8))(v22, v23);
  return (*(v14 + 8))(v17, v13);
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
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

unint64_t sub_261187FD4()
{
  result = qword_27FE86020;
  if (!qword_27FE86020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE86020);
  }

  return result;
}

unint64_t sub_261188028()
{
  result = qword_27FE86028;
  if (!qword_27FE86028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE86028);
  }

  return result;
}

unint64_t sub_26118807C()
{
  result = qword_27FE86030;
  if (!qword_27FE86030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE86030);
  }

  return result;
}

unint64_t sub_2611880D0()
{
  result = qword_27FE86038;
  if (!qword_27FE86038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE86038);
  }

  return result;
}

uint64_t PCProximityHandoffClient.Identifier.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v49 = a2;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE86040, &qword_26118DDB0);
  v48 = *(v45 - 8);
  v3 = (*(v48 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v50 = &v43 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE86048, &qword_26118DDB8);
  v6 = *(v5 - 8);
  v46 = v5;
  v47 = v6;
  v7 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v9 = &v43 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE86050, &qword_26118DDC0);
  v44 = *(v10 - 8);
  v11 = (*(v44 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v13 = &v43 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE86058, &qword_26118DDC8);
  v15 = *(v14 - 8);
  v16 = (*(v15 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v18 = &v43 - v17;
  v19 = a1[3];
  v20 = a1[4];
  v52 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v19);
  sub_261187FD4();
  v21 = v51;
  sub_26118C0D0();
  if (!v21)
  {
    v43 = 0;
    v51 = v15;
    v22 = sub_26118C030();
    v23 = *(v22 + 16);
    if (!v23 || ((v24 = *(v22 + 32), v23 == 1) ? (v25 = v24 == 3) : (v25 = 1), v25))
    {
      v26 = sub_26118BFB0();
      swift_allocError();
      v27 = v14;
      v29 = v28;
      v30 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE86060, &qword_26118DDD0) + 48);
      *v29 = &type metadata for PCProximityHandoffClient.Identifier;
      sub_26118BFE0();
      sub_26118BFA0();
      (*(*(v26 - 8) + 104))(v29, *MEMORY[0x277D84160], v26);
      swift_willThrow();
      (*(v51 + 8))(v18, v27);
LABEL_9:
      swift_unknownObjectRelease();
      return __swift_destroy_boxed_opaque_existential_1Tm(v52);
    }

    if (!*(v22 + 32))
    {
      v53 = 0;
      sub_2611880D0();
      v32 = v18;
      v38 = v43;
      sub_26118BFD0();
      if (!v38)
      {
        (*(v44 + 8))(v13, v10);
        (*(v51 + 8))(v18, v14);
        swift_unknownObjectRelease();
        v35 = 0;
        v36 = 0;
        v37 = v49;
        goto LABEL_22;
      }

      v34 = v51;
      goto LABEL_17;
    }

    if (v24 == 1)
    {
      v54 = 1;
      sub_26118807C();
      v32 = v18;
      v33 = v43;
      sub_26118BFD0();
      v34 = v51;
      if (!v33)
      {
        (*(v47 + 8))(v9, v46);
        (*(v34 + 8))(v18, v14);
        swift_unknownObjectRelease();
        v35 = 0;
        v36 = 1;
        v37 = v49;
LABEL_22:
        *v37 = v35;
        v37[1] = v36;
        return __swift_destroy_boxed_opaque_existential_1Tm(v52);
      }

LABEL_17:
      (*(v34 + 8))(v32, v14);
      goto LABEL_9;
    }

    v55 = 2;
    sub_261188028();
    v39 = v43;
    sub_26118BFD0();
    v37 = v49;
    v40 = v51;
    if (!v39)
    {
      v47 = v14;
      v41 = v45;
      v35 = sub_26118C000();
      v36 = v42;
      (*(v48 + 8))(v50, v41);
      (*(v40 + 8))(v18, v47);
      swift_unknownObjectRelease();
      goto LABEL_22;
    }

    (*(v51 + 8))(v18, v14);
    swift_unknownObjectRelease();
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(v52);
}

uint64_t PCProximityHandoffClient.clientIdentifier.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 120);
  v3 = *(v1 + 128);
  *a1 = v2;
  a1[1] = v3;
  return sub_261188774(v2, v3);
}

uint64_t sub_261188774(uint64_t a1, unint64_t a2)
{
  if (a2 >= 2)
  {
  }

  return result;
}

void *PCProximityHandoffClient.init(identifier:)(uint64_t *a1)
{
  v29 = sub_26118BF50();
  v3 = *(v29 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20]();
  v6 = v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(*(sub_26118BF40() - 8) + 64);
  MEMORY[0x28223BE20]();
  v8 = *(*(sub_26118BF00() - 8) + 64);
  MEMORY[0x28223BE20]();
  v10 = *a1;
  v9 = a1[1];
  v11 = v1;
  swift_defaultActor_initialize();
  v12 = sub_261188BC8();
  v28[0] = "f keys found, expected one.";
  v28[1] = v12;
  sub_26118BEF0();
  v30 = MEMORY[0x277D84F90];
  sub_26118A50C(&qword_27FE86070, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE86078, &unk_26118DDD8);
  sub_261188C14();
  v13 = v1;
  sub_26118BF80();
  (*(v3 + 104))(v6, *MEMORY[0x277D85268], v29);
  *(v1 + 136) = sub_26118BF60();
  if (qword_27FE85FE0 != -1)
  {
    swift_once();
  }

  v14 = sub_26118BE40();
  __swift_project_value_buffer(v14, qword_27FE85FE8);
  sub_261188774(v10, v9);
  v15 = sub_26118BE20();
  v16 = sub_26118BF30();
  sub_261188CF8(v10, v9);
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v31 = v9;
    v32 = v18;
    *v17 = 136315138;
    v30 = v10;
    sub_261188774(v10, v9);
    v19 = sub_26118BF10();
    v21 = sub_261189EF8(v19, v20, &v32);

    *(v17 + 4) = v21;
    _os_log_impl(&dword_261179000, v15, v16, "Init: %s", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v18);
    MEMORY[0x2666FB3E0](v18, -1, -1);
    MEMORY[0x2666FB3E0](v17, -1, -1);
  }

  *(v11 + 120) = v10;
  *(v11 + 128) = v9;
  sub_26118BEB0();
  sub_26118BEE0();
  v22 = *(v13 + 136);
  *(v13 + 112) = sub_26118BE90();
  v23 = type metadata accessor for PCProximityHandoffClient();
  v33.receiver = v13;
  v33.super_class = v23;
  v24 = objc_msgSendSuper2(&v33, sel_init);
  v25 = v24[14];
  v26 = v24;

  sub_26118BEA0();

  return v26;
}

unint64_t sub_261188BC8()
{
  result = qword_27FE86068;
  if (!qword_27FE86068)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27FE86068);
  }

  return result;
}

unint64_t sub_261188C14()
{
  result = qword_27FE86080;
  if (!qword_27FE86080)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FE86078, &unk_26118DDD8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE86080);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_261188CF8(uint64_t a1, unint64_t a2)
{
  if (a2 >= 2)
  {
  }

  return result;
}

uint64_t PCProximityHandoffClient.deinit()
{
  v1 = v0;
  if (qword_27FE85FE0 != -1)
  {
    swift_once();
  }

  v2 = sub_26118BE40();
  __swift_project_value_buffer(v2, qword_27FE85FE8);
  v3 = sub_26118BE20();
  v4 = sub_26118BF30();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_261179000, v3, v4, "Deinit", v5, 2u);
    MEMORY[0x2666FB3E0](v5, -1, -1);
  }

  v6 = *(v1 + 112);

  sub_26118BE60();

  v7 = *(v1 + 112);

  sub_261188CF8(*(v1 + 120), *(v1 + 128));

  swift_defaultActor_destroy();
  return v1;
}

uint64_t PCProximityHandoffClient.__deallocating_deinit()
{
  PCProximityHandoffClient.deinit();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_261188F2C(char a1, void (*a2)(void), unint64_t *a3, void (*a4)(uint64_t))
{
  v9 = sub_26118BE50();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20]();
  v13 = v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v4 + 112);
  a2(0);
  v18 = a1;
  sub_26118A50C(a3, a4);
  v15 = v17[1];
  result = sub_26118BE70();
  if (!v15)
  {
    return (*(v10 + 8))(v13, v9);
  }

  return result;
}

uint64_t sub_261189068(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_26118BE50();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_261189128, v1, 0);
}

uint64_t sub_261189128()
{
  v1 = *(v0[3] + 112);
  v2 = type metadata accessor for PCProximityHandoffServiceInvocations.UserAlertAction(0);
  v3 = *(MEMORY[0x277D549F8] + 4);
  v4 = swift_task_alloc();
  v0[7] = v4;
  v5 = sub_26118A50C(&qword_27FE86098, type metadata accessor for PCProximityHandoffServiceInvocations.UserAlertAction);
  *v4 = v0;
  v4[1] = sub_261189220;
  v6 = v0[6];
  v7 = v0[2];

  return MEMORY[0x2821B5FC8](v6, v2, v7, v2, v5);
}

uint64_t sub_261189220()
{
  v2 = *v1;
  v3 = *(*v1 + 56);
  v8 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v4 = v2[3];
    v5 = sub_2611893B8;
  }

  else
  {
    v6 = v2[3];
    (*(v2[5] + 8))(v2[6], v2[4]);
    v5 = sub_261189354;
    v4 = v6;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_261189354()
{
  v1 = *(v0 + 48);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_2611893B8()
{
  v1 = v0[6];

  v2 = v0[1];
  v3 = v0[8];

  return v2();
}

void PCProximityHandoffClient.__allocating_init()()
{
  swift_allocObject();
  swift_defaultActor_initialize();
  _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
}

void PCProximityHandoffClient.init()()
{
  swift_defaultActor_initialize();
  _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
}

id PCProximityHandoffServiceInvocations.SuppressHandoffAction.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t PCProximityHandoffServiceInvocations.UserAlertAction.Parameters.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_26118BE10();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t PCProximityHandoffServiceInvocations.UserAlertAction.Parameters.textResponse.getter()
{
  v1 = (v0 + *(type metadata accessor for PCProximityHandoffServiceInvocations.UserAlertAction.Parameters(0) + 24));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t PCProximityHandoffServiceInvocations.UserAlertAction.Parameters.init(id:actionIndex:textResponse:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = sub_26118BE10();
  (*(*(v10 - 8) + 32))(a5, a1, v10);
  result = type metadata accessor for PCProximityHandoffServiceInvocations.UserAlertAction.Parameters(0);
  *(a5 + *(result + 20)) = a2;
  v12 = (a5 + *(result + 24));
  *v12 = a3;
  v12[1] = a4;
  return result;
}

uint64_t sub_261189734()
{
  v1 = *v0;
  sub_26118C0A0();
  MEMORY[0x2666FACF0](v1);
  return sub_26118C0C0();
}

uint64_t sub_26118977C()
{
  v1 = *v0;
  sub_26118C0A0();
  MEMORY[0x2666FACF0](v1);
  return sub_26118C0C0();
}

uint64_t sub_2611897C0()
{
  v1 = 0x6E496E6F69746361;
  if (*v0 != 1)
  {
    v1 = 0x7073655274786574;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 25705;
  }
}

uint64_t sub_261189820@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_26118B524(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_261189848(uint64_t a1)
{
  v2 = sub_26118A5EC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_261189884(uint64_t a1)
{
  v2 = sub_26118A5EC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t PCProximityHandoffServiceInvocations.UserAlertAction.Parameters.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE860A0, &qword_26118DDE8);
  v6 = *(v5 - 8);
  v7 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v9 = &v17[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26118A5EC();
  sub_26118C0E0();
  v17[15] = 0;
  sub_26118BE10();
  sub_26118A50C(&qword_27FE860B0, MEMORY[0x277CC95F0]);
  sub_26118C080();
  if (!v2)
  {
    v11 = type metadata accessor for PCProximityHandoffServiceInvocations.UserAlertAction.Parameters(0);
    v12 = *(v3 + *(v11 + 20));
    v17[14] = 1;
    sub_26118C070();
    v13 = (v3 + *(v11 + 24));
    v14 = *v13;
    v15 = v13[1];
    v17[13] = 2;
    sub_26118C050();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t PCProximityHandoffServiceInvocations.UserAlertAction.Parameters.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v4 = sub_26118BE10();
  v29 = *(v4 - 8);
  v5 = *(v29 + 64);
  MEMORY[0x28223BE20]();
  v31 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE860B8, &qword_26118DDF0);
  v28 = *(v30 - 8);
  v7 = (*(v28 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v9 = &v26 - v8;
  v10 = type metadata accessor for PCProximityHandoffServiceInvocations.UserAlertAction.Parameters(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20]();
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26118A5EC();
  sub_26118C0D0();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v26 = v13;
  v16 = v28;
  v15 = v29;
  v34 = 0;
  sub_26118A50C(&qword_27FE860C0, MEMORY[0x277CC95F0]);
  v17 = v30;
  sub_26118C020();
  (*(v15 + 32))(v26, v31, v4);
  v33 = 1;
  *&v26[*(v10 + 20)] = sub_26118C010();
  v32 = 2;
  v18 = sub_26118BFF0();
  v31 = v19;
  v20 = v18;
  (*(v16 + 8))(v9, v17);
  v22 = v26;
  v21 = v27;
  v23 = &v26[*(v10 + 24)];
  v24 = v31;
  *v23 = v20;
  v23[1] = v24;
  sub_26118A640(v22, v21);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return sub_26118A6A4(v22);
}

id _s16ProximityControl36PCProximityHandoffServiceInvocationsV08SuppressD6ActionCAEycfc_0()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_init);
}

id sub_261189E80(void *a1)
{
  v2.receiver = a1;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_init);
}

id _s16ProximityControl36PCProximityHandoffServiceInvocationsV08SuppressD6ActionCfD_0()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_261189EF8(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_261189FC4(v11, 0, 0, 1, a1, a2);
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
    sub_26118B63C(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1Tm(v11);
  return v7;
}

unint64_t sub_261189FC4(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_26118A0D0(a5, a6);
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
    result = sub_26118BFC0();
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

uint64_t sub_26118A0D0(uint64_t a1, unint64_t a2)
{
  v4 = sub_26118A11C(a1, a2);
  sub_26118A24C(&unk_2873A0B40);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_26118A11C(uint64_t a1, unint64_t a2)
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

  v6 = sub_26118A338(v5, 0);
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

  result = sub_26118BFC0();
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
        v10 = sub_26118BF20();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_26118A338(v10, 0);
        result = sub_26118BF90();
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

uint64_t sub_26118A24C(uint64_t result)
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

  result = sub_26118A3AC(result, v12, 1, v3);
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

void *sub_26118A338(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE86198, &qword_26118E5D0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_26118A3AC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE86198, &qword_26118E5D0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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

uint64_t __swift_destroy_boxed_opaque_existential_1Tm(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_26118A50C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_26118A5B4(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_26118A5EC()
{
  result = qword_27FE860A8;
  if (!qword_27FE860A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE860A8);
  }

  return result;
}

uint64_t sub_26118A640(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PCProximityHandoffServiceInvocations.UserAlertAction.Parameters(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26118A6A4(uint64_t a1)
{
  v2 = type metadata accessor for PCProximityHandoffServiceInvocations.UserAlertAction.Parameters(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t dispatch thunk of PCProximityHandoffClient.userAlertAction(params:)(uint64_t a1)
{
  v4 = *((*MEMORY[0x277D85000] & *v1) + 0x88);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_26118A994;

  return v8(a1);
}

uint64_t sub_26118A994()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t get_enum_tag_for_layout_string_16ProximityControl24PCProximityHandoffClientC10IdentifierO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_26118AAAC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 16))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_26118AB00(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

void *sub_26118AB60(void *result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

void sub_26118AC48()
{
  sub_26118BE10();
  if (v0 <= 0x3F)
  {
    sub_26118ACD4();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_26118ACD4()
{
  if (!qword_27FE86128)
  {
    v0 = sub_26118BF70();
    if (!v1)
    {
      atomic_store(v0, &qword_27FE86128);
    }
  }
}

uint64_t sub_26118AD40(unsigned __int8 *a1, unsigned int a2)
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
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_26118ADD0(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_26118AEB0(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *sub_26118AF00(_WORD *result, int a2, int a3)
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

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

unint64_t sub_26118AF98()
{
  result = qword_27FE86130;
  if (!qword_27FE86130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE86130);
  }

  return result;
}

unint64_t sub_26118AFF0()
{
  result = qword_27FE86138;
  if (!qword_27FE86138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE86138);
  }

  return result;
}

unint64_t sub_26118B048()
{
  result = qword_27FE86140;
  if (!qword_27FE86140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE86140);
  }

  return result;
}

unint64_t sub_26118B0A0()
{
  result = qword_27FE86148;
  if (!qword_27FE86148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE86148);
  }

  return result;
}

unint64_t sub_26118B0F8()
{
  result = qword_27FE86150;
  if (!qword_27FE86150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE86150);
  }

  return result;
}

unint64_t sub_26118B150()
{
  result = qword_27FE86158;
  if (!qword_27FE86158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE86158);
  }

  return result;
}

unint64_t sub_26118B1A8()
{
  result = qword_27FE86160;
  if (!qword_27FE86160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE86160);
  }

  return result;
}

unint64_t sub_26118B200()
{
  result = qword_27FE86168;
  if (!qword_27FE86168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE86168);
  }

  return result;
}

unint64_t sub_26118B258()
{
  result = qword_27FE86170;
  if (!qword_27FE86170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE86170);
  }

  return result;
}

unint64_t sub_26118B2B0()
{
  result = qword_27FE86178;
  if (!qword_27FE86178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE86178);
  }

  return result;
}

unint64_t sub_26118B308()
{
  result = qword_27FE86180;
  if (!qword_27FE86180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE86180);
  }

  return result;
}

unint64_t sub_26118B360()
{
  result = qword_27FE86188;
  if (!qword_27FE86188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE86188);
  }

  return result;
}

unint64_t sub_26118B3B8()
{
  result = qword_27FE86190;
  if (!qword_27FE86190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE86190);
  }

  return result;
}

uint64_t sub_26118B40C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6C6974756370 && a2 == 0xE600000000000000;
  if (v4 || (sub_26118C090() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6553776569566370 && a2 == 0xED00006563697672 || (sub_26118C090() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x726568746FLL && a2 == 0xE500000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_26118C090();

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

uint64_t sub_26118B524(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_26118C090() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E496E6F69746361 && a2 == 0xEB00000000786564 || (sub_26118C090() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7073655274786574 && a2 == 0xEC00000065736E6FLL)
  {

    return 2;
  }

  else
  {
    v6 = sub_26118C090();

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

uint64_t sub_26118B63C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
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