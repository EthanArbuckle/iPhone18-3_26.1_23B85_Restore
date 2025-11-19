id sub_22F032D30(unsigned __int8 *a1, int a2)
{
  v38 = a2;
  v3 = sub_22F0D05EC();
  v35 = *(v3 - 8);
  v36 = v3;
  v4 = *(v35 + 64);
  MEMORY[0x28223BE20](v3);
  v34 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_22F0D126C();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v8 = sub_22F0D0A6C();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = sub_22F0D127C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *a1;
  v37 = sub_22F033250();
  v40 = 0;
  v41 = 0xE000000000000000;
  sub_22F0D152C();
  MEMORY[0x2318FD2C0](0xD000000000000010, 0x800000022F0DD990);
  MEMORY[0x2318FD2C0](0x712D656D6F69622DLL, 0xED00002E65756575);
  v39 = v15;
  sub_22F032B24(v15);
  (*(v11 + 104))(v14, *MEMORY[0x277D85268], v10);
  sub_22F0D0A5C();
  v40 = MEMORY[0x277D84F90];
  sub_22F03329C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1E90, qword_22F0DA870);
  sub_22F0332F4();
  sub_22F0D13EC();
  v16 = v38;
  v17 = sub_22F0D129C();
  v40 = 0;
  v41 = 0xE000000000000000;
  MEMORY[0x2318FD2C0](0xD000000000000010, 0x800000022F0DD990);
  if ((v16 & 1) == 0)
  {
    MEMORY[0x2318FD2C0](46, 0xE100000000000000);
    v18 = v34;
    sub_22F0CFD4C();
    v19 = sub_22F0D05CC();
    v21 = v20;
    (*(v35 + 8))(v18, v36);
    MEMORY[0x2318FD2C0](v19, v21);
  }

  MEMORY[0x2318FD2C0](46, 0xE100000000000000);
  sub_22F032B24(v39);
  v23 = v40;
  v22 = v41;
  if (qword_280CBEC38 != -1)
  {
    swift_once();
  }

  v24 = sub_22F0D0A1C();
  __swift_project_value_buffer(v24, qword_280CBEC40);
  sub_22F0CFF1C();
  v25 = sub_22F0D09FC();
  v26 = sub_22F0D122C();

  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v40 = v28;
    *v27 = 136315394;
    *(v27 + 4) = sub_22F00A560(v23, v22, &v40);
    *(v27 + 12) = 1024;
    *(v27 + 14) = v16 & 1;
    _os_log_impl(&dword_22EFE1000, v25, v26, "Creating listening scheduler for %s with waking: %{BOOL}d", v27, 0x12u);
    __swift_destroy_boxed_opaque_existential_1Tm(v28);
    MEMORY[0x2318FE8B0](v28, -1, -1);
    MEMORY[0x2318FE8B0](v27, -1, -1);
  }

  v29 = objc_allocWithZone(MEMORY[0x277CF1918]);
  v30 = sub_22F0D0C7C();

  v31 = [v29 initWithIdentifier:v30 targetQueue:v17 waking:v16 & 1];

  return v31;
}

unint64_t sub_22F033250()
{
  result = qword_280CBEC70;
  if (!qword_280CBEC70)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280CBEC70);
  }

  return result;
}

unint64_t sub_22F03329C()
{
  result = qword_280CBEC78;
  if (!qword_280CBEC78)
  {
    sub_22F0D126C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CBEC78);
  }

  return result;
}

unint64_t sub_22F0332F4()
{
  result = qword_280CBEC80;
  if (!qword_280CBEC80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DAA1E90, qword_22F0DA870);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CBEC80);
  }

  return result;
}

uint64_t PersonTypeAppEntity.id.getter()
{
  v1 = *v0;
  sub_22F0CFE0C();
  return v3;
}

uint64_t PersonTypeAppEntity.displayString.getter()
{
  v1 = *(v0 + 8);
  sub_22F0CFE0C();
  return v3;
}

uint64_t sub_22F033400()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1540, &qword_22F0DB420);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v9 - v2;
  v4 = sub_22F0D036C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = sub_22F0D005C();
  __swift_allocate_value_buffer(v7, qword_27DAA1520);
  __swift_project_value_buffer(v7, qword_27DAA1520);
  sub_22F0D034C();
  (*(v5 + 56))(v3, 1, 1, v4);
  return sub_22F0D004C();
}

uint64_t static PersonTypeAppEntity.typeDisplayRepresentation.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27DAA04E8 != -1)
  {
    swift_once();
  }

  v2 = sub_22F0D005C();
  v3 = __swift_project_value_buffer(v2, qword_27DAA1520);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t static PersonTypeAppEntity.typeDisplayRepresentation.setter(uint64_t a1)
{
  if (qword_27DAA04E8 != -1)
  {
    swift_once();
  }

  v2 = sub_22F0D005C();
  v3 = __swift_project_value_buffer(v2, qword_27DAA1520);
  swift_beginAccess();
  v4 = *(v2 - 8);
  (*(v4 + 24))(v3, a1, v2);
  swift_endAccess();
  return (*(v4 + 8))(a1, v2);
}

uint64_t (*static PersonTypeAppEntity.typeDisplayRepresentation.modify())()
{
  if (qword_27DAA04E8 != -1)
  {
    swift_once();
  }

  v0 = sub_22F0D005C();
  __swift_project_value_buffer(v0, qword_27DAA1520);
  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_22F0337B0@<X0>(uint64_t a1@<X8>)
{
  if (qword_27DAA04E8 != -1)
  {
    swift_once();
  }

  v2 = sub_22F0D005C();
  v3 = __swift_project_value_buffer(v2, qword_27DAA1520);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t sub_22F033870(uint64_t a1)
{
  if (qword_27DAA04E8 != -1)
  {
    swift_once();
  }

  v2 = sub_22F0D005C();
  v3 = __swift_project_value_buffer(v2, qword_27DAA1520);
  swift_beginAccess();
  (*(*(v2 - 8) + 24))(v3, a1, v2);
  return swift_endAccess();
}

uint64_t sub_22F03393C()
{
  if (qword_280CBEC28 != -1)
  {
    swift_once();
  }

  v0 = qword_280CBEC30;
  qword_280CBDE80 = type metadata accessor for ContactFetcher();
  unk_280CBDE88 = &protocol witness table for ContactFetcher;
  qword_280CBDE68 = v0;

  return sub_22F0CFFAC();
}

uint64_t static PersonTypeAppEntity.defaultQuery.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_280CBDE60 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return sub_22F034664(&qword_280CBDE68, a1);
}

uint64_t static PersonTypeAppEntity.defaultQuery.setter(uint64_t a1)
{
  if (qword_280CBDE60 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  sub_22F0346C0(a1, &qword_280CBDE68);
  swift_endAccess();
  return sub_22F03471C(a1);
}

uint64_t (*static PersonTypeAppEntity.defaultQuery.modify())()
{
  if (qword_280CBDE60 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_22F033B5C@<X0>(uint64_t a1@<X8>)
{
  if (qword_280CBDE60 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return sub_22F034664(&qword_280CBDE68, a1);
}

uint64_t sub_22F033BDC(uint64_t a1)
{
  if (qword_280CBDE60 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  sub_22F0346C0(a1, &qword_280CBDE68);
  return swift_endAccess();
}

uint64_t sub_22F033C64(uint64_t *a1, uint64_t *a2)
{
  v3 = *a2;
  v2 = a2[1];
  v5 = *a1;
  v6 = a1[1];
  sub_22F0CFF1C();
  sub_22F0CFFAC();
  sub_22F0CFFAC();
  sub_22F0CFE1C();
  sub_22F0D00CC();
  return sub_22F0D00CC();
}

uint64_t (*PersonTypeAppEntity.id.modify(uint64_t *a1))()
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
  v4 = *v1;
  *(v3 + 32) = sub_22F0CFDFC();
  return sub_22F034C18;
}

uint64_t sub_22F033D8C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v5 = *a1;
  v6 = a1[1];
  sub_22F0CFF1C();
  sub_22F0CFFAC();
  sub_22F0CFFAC();
  sub_22F0CFE1C();
  sub_22F0D00CC();
  return sub_22F0D00CC();
}

uint64_t (*PersonTypeAppEntity.displayString.modify(uint64_t *a1))()
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
  v4 = *(v1 + 8);
  *(v3 + 32) = sub_22F0CFDFC();
  return sub_22F033E90;
}

void sub_22F033E94(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

uint64_t PersonTypeAppEntity.displayRepresentation.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1538, &unk_22F0D6FA0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v17 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1540, &qword_22F0DB420);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v17 - v7;
  v9 = sub_22F0D036C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = sub_22F0D0C6C();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = *(v0 + 8);
  sub_22F0D0C5C();
  sub_22F0D0C4C();
  sub_22F0CFE0C();
  sub_22F0D0C3C();

  sub_22F0D0C4C();
  sub_22F0D035C();
  (*(v10 + 56))(v8, 1, 1, v9);
  v15 = sub_22F0CFF6C();
  (*(*(v15 - 8) + 56))(v4, 1, 1, v15);
  return sub_22F0CFF7C();
}

uint64_t PersonTypeAppEntity.init(id:displayString:)@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_22F0D036C();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1548, &qword_22F0D6FB0);
  sub_22F0D034C();
  *a1 = sub_22F0CFE4C();
  sub_22F0D034C();
  a1[1] = sub_22F0CFE4C();
  sub_22F0CFE1C();
  return sub_22F0CFE1C();
}

uint64_t sub_22F03429C@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  result = sub_22F0CFE0C();
  *a1 = v5;
  a1[1] = v6;
  return result;
}

uint64_t sub_22F0342DC(uint64_t a1)
{
  v2 = sub_22F034BA0();

  return MEMORY[0x28210B488](a1, v2);
}

uint64_t sub_22F03432C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(MEMORY[0x277CBA470] + 4);
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_22F00CD54;

  return MEMORY[0x28210C4A0](a1, a2, a3, a4);
}

uint64_t sub_22F0343F0(uint64_t a1)
{
  v2 = sub_22F0349E0();

  return MEMORY[0x28210C4B8](a1, v2);
}

uint64_t _s6People19PersonTypeAppEntityV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v5 = *a2;
  v4 = a2[1];
  sub_22F0CFE0C();
  sub_22F0CFE0C();

  sub_22F0CFE0C();
  sub_22F0CFE0C();

  return 1;
}

uint64_t _s6People19PersonTypeAppEntityV15decodeContactID3forSSSgAF_tFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = a1;
  if (a2)
  {
    v13[0] = 124;
    v13[1] = 0xE100000000000000;
    MEMORY[0x28223BE20](a1);
    v12[2] = v13;
    v4 = v3;
    sub_22F0CFF1C();
    v6 = sub_22F042274(0x7FFFFFFFFFFFFFFFLL, 1, sub_22F034BF4, v12, v2, v4, v5);
    if (v6[2])
    {
      v7 = v6[4];
      v8 = v6[5];
      v9 = v6[6];
      v10 = v6[7];
      swift_bridgeObjectRetain_n();

      v2 = MEMORY[0x2318FD270](v7, v8, v9, v10);
      swift_bridgeObjectRelease_n();
    }

    else
    {

      return 0;
    }
  }

  return v2;
}

unint64_t sub_22F034774()
{
  result = qword_280CBDE50;
  if (!qword_280CBDE50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CBDE50);
  }

  return result;
}

unint64_t sub_22F0347CC()
{
  result = qword_280CBDE38;
  if (!qword_280CBDE38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CBDE38);
  }

  return result;
}

unint64_t sub_22F034824()
{
  result = qword_280CBDE18;
  if (!qword_280CBDE18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CBDE18);
  }

  return result;
}

unint64_t sub_22F03487C()
{
  result = qword_280CBDDB8;
  if (!qword_280CBDDB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CBDDB8);
  }

  return result;
}

unint64_t sub_22F0348E0()
{
  result = qword_280CBDE30;
  if (!qword_280CBDE30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CBDE30);
  }

  return result;
}

unint64_t sub_22F034934()
{
  result = qword_280CBDE58;
  if (!qword_280CBDE58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CBDE58);
  }

  return result;
}

unint64_t sub_22F034988()
{
  result = qword_280CBDE40;
  if (!qword_280CBDE40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CBDE40);
  }

  return result;
}

unint64_t sub_22F0349E0()
{
  result = qword_280CBDE28;
  if (!qword_280CBDE28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CBDE28);
  }

  return result;
}

unint64_t sub_22F034A44()
{
  result = qword_280CBDC20;
  if (!qword_280CBDC20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DAA1550, &qword_22F0D7128);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CBDC20);
  }

  return result;
}

unint64_t sub_22F034AAC()
{
  result = qword_280CBDE20;
  if (!qword_280CBDE20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CBDE20);
  }

  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_22F034B0C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_22F034B54(uint64_t result, int a2, int a3)
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

unint64_t sub_22F034BA0()
{
  result = qword_280CBDE48;
  if (!qword_280CBDE48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CBDE48);
  }

  return result;
}

uint64_t UserDefaultsLaunchDiaryWriter.__allocating_init()()
{
  result = swift_allocObject();
  *(result + 16) = 0x694468636E75616CLL;
  *(result + 24) = 0xEB00000000797261;
  return result;
}

uint64_t UserDefaultsLaunchDiaryWriter.init()()
{
  result = v0;
  *(v0 + 16) = 0x694468636E75616CLL;
  *(v0 + 24) = 0xEB00000000797261;
  return result;
}

void sub_22F034C90()
{
  if (qword_280CBEF20 != -1)
  {
    swift_once();
  }

  v1 = qword_280CBEF28;
  v2 = sub_22F0D046C();
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  v5 = sub_22F0D0C7C();
  [v1 setValue:v2 forKey:v5];

  [v1 synchronize];
}

uint64_t sub_22F034D5C()
{
  if (qword_280CBEF20 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = qword_280CBEF28;
  v4 = sub_22F0D0C7C();
  v5 = [v3 objectForKey_];

  if (v5)
  {
    sub_22F0D13CC();

    swift_unknownObjectRelease();
  }

  else
  {

    v8 = 0u;
    v9 = 0u;
  }

  v10[0] = v8;
  v10[1] = v9;
  if (*(&v9 + 1))
  {
    if (swift_dynamicCast())
    {
      return v7;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_22F012704(v10);
    return 0;
  }
}

uint64_t UserDefaultsLaunchDiaryWriter.deinit()
{
  v1 = *(v0 + 24);

  return v0;
}

uint64_t UserDefaultsLaunchDiaryWriter.__deallocating_deinit()
{
  v1 = *(v0 + 24);

  return swift_deallocClassInstance();
}

void sub_22F034EE8()
{
  v1 = *v0;
  if (qword_280CBEF20 != -1)
  {
    swift_once();
  }

  v2 = qword_280CBEF28;
  v3 = sub_22F0D046C();
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = sub_22F0D0C7C();
  [v2 setValue:v3 forKey:v6];

  [v2 synchronize];
}

uint64_t sub_22F0350EC(uint64_t a1)
{
  v2 = *(a1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](a1);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 16))(v5, v6, a1);
  if (sub_22F0D186C())
  {
    (*(v2 + 8))(v5, a1);
  }

  else
  {
    swift_allocError();
    (*(v2 + 32))(v7, v5, a1);
  }

  return swift_willThrow();
}

unint64_t sub_22F035260()
{
  result = qword_27DAA1558[0];
  if (!qword_27DAA1558[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DAA1558);
  }

  return result;
}

uint64_t sub_22F0352B4()
{
  v1 = *v0;
  v2 = v0[1];
  sub_22F0CFF1C();
  return v1;
}

uint64_t sub_22F0352F0(void *a1, uint64_t a2)
{
  v4 = [objc_opt_self() interfaceWithProtocol_];
  [a1 setExportedInterface_];

  [a1 setExportedObject_];
  [a1 resume];
  return 1;
}

uint64_t sub_22F0353AC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  v8[2] = v22;
  v8[3] = v23;
  v13 = *((*MEMORY[0x277D85000] & *a4) + 0x60);
  v14 = *((*MEMORY[0x277D85000] & *a4) + 0x58);
  v15 = *(v14 + 16);
  v16 = *((*MEMORY[0x277D85000] & *a4) + 0x50);
  v20 = (v15 + *v15);
  v17 = v15[1];
  v18 = swift_task_alloc();
  v8[4] = v18;
  *v18 = v8;
  v18[1] = sub_22F035554;

  return (v20)(a5, a6, a7, a8 & 1, v16, v14);
}

uint64_t sub_22F035554(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 32);
  v6 = *v2;
  *(*v2 + 40) = v1;

  if (v1)
  {
    v7 = sub_22F0367B0;
  }

  else
  {
    *(v4 + 48) = a1;
    v7 = sub_22F0367AC;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

void sub_22F0356CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    v4 = sub_22F0D032C();
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;
  (*(a3 + 16))(a3);
}

uint64_t sub_22F035758(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v34 = a6;
  v35 = a8;
  v30 = a7;
  v31 = a1;
  v33 = a5;
  v32 = a4;
  v11 = *v8;
  v12 = *MEMORY[0x277D85000];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA10F8, &qword_22F0D5320);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v17 = &v30 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1418, &qword_22F0D7460);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v21 = &v30 - v20;
  sub_22F0D10BC();
  v22 = sub_22F0D10EC();
  (*(*(v22 - 8) + 56))(v21, 0, 1, v22);
  sub_22F036154(a3, v17);
  v23 = (*(v14 + 80) + 72) & ~*(v14 + 80);
  v24 = v23 + v15;
  v25 = swift_allocObject();
  v25[2] = 0;
  v25[3] = 0;
  v25[4] = *((v12 & v11) + 0x50);
  v25[5] = *((v12 & v11) + 0x58);
  v25[6] = v8;
  v25[7] = v31;
  v25[8] = a2;
  sub_22F0361C4(v17, v25 + v23);
  *(v25 + v24) = v32;
  v26 = v25 + (v24 & 0xFFFFFFFFFFFFFFF8);
  v27 = v34;
  *(v26 + 1) = v33;
  *(v26 + 2) = v27;
  v28 = v8;
  sub_22F0CFF1C();
  sub_22F0CFFAC();
  sub_22F01A61C(0, 0, v21, v35, v25);
  return sub_22F0D00CC();
}

uint64_t sub_22F035994(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  v8[2] = v22;
  v8[3] = v23;
  v13 = *((*MEMORY[0x277D85000] & *a4) + 0x60);
  v14 = *((*MEMORY[0x277D85000] & *a4) + 0x58);
  v15 = *(v14 + 24);
  v16 = *((*MEMORY[0x277D85000] & *a4) + 0x50);
  v20 = (v15 + *v15);
  v17 = v15[1];
  v18 = swift_task_alloc();
  v8[4] = v18;
  *v18 = v8;
  v18[1] = sub_22F035B3C;

  return (v20)(a5, a6, a7, a8 & 1, v16, v14);
}

uint64_t sub_22F035B3C(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 32);
  v6 = *v2;
  *(*v2 + 40) = v1;

  if (v1)
  {
    v7 = sub_22F035CEC;
  }

  else
  {
    *(v4 + 48) = a1;
    v7 = sub_22F035C64;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_22F035C64()
{
  v1 = v0[6];
  v3 = v0[2];
  v2 = v0[3];
  v4 = v1;
  v3(0, v1);

  v5 = v0[1];

  return v5();
}

uint64_t sub_22F035CEC()
{
  v1 = v0[5];
  v3 = v0[2];
  v2 = v0[3];
  v4 = v1;
  v3(v1, 0);

  v5 = v0[1];

  return v5();
}

uint64_t sub_22F035DCC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, const void *a6, uint64_t a7, uint64_t a8, void (*a9)(uint64_t, uint64_t, char *, uint64_t, uint64_t, uint64_t))
{
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA10F8, &qword_22F0D5320);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v27 - v16;
  v18 = _Block_copy(a6);
  v19 = sub_22F0D0CAC();
  v21 = v20;
  if (a4)
  {
    sub_22F0D03EC();
    v22 = sub_22F0D043C();
    (*(*(v22 - 8) + 56))(v17, 0, 1, v22);
  }

  else
  {
    v23 = sub_22F0D043C();
    (*(*(v23 - 8) + 56))(v17, 1, 1, v23);
  }

  v24 = swift_allocObject();
  *(v24 + 16) = v18;
  v25 = a1;
  a9(v19, v21, v17, a5, a8, v24);

  sub_22F0D00CC();
  return sub_22F009070(v17);
}

void sub_22F035F78(void *a1)
{
  v1 = *((*MEMORY[0x277D85000] & *a1) + 0x50);
  v2 = *((*MEMORY[0x277D85000] & *a1) + 0x58);
  sub_22F036774();
}

id sub_22F035FB8()
{
  v1 = *((*MEMORY[0x277D85000] & *v0) + 0x50);
  v2 = *((*MEMORY[0x277D85000] & *v0) + 0x58);
  v4.receiver = v0;
  v4.super_class = type metadata accessor for LegacyConfiguration.ExportedObject();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t sub_22F0360A4()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_22F036118(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_22F036154(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA10F8, &qword_22F0D5320);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22F0361C4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA10F8, &qword_22F0D5320);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_22F036234(uint64_t a1)
{
  v3 = v2;
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA10F8, &qword_22F0D5320) - 8);
  v5 = (*(v4 + 80) + 72) & ~*(v4 + 80);
  v6 = v5 + *(v4 + 64);
  v7 = v1[3];
  v17 = v1[2];
  v8 = v1[6];
  v9 = v1[7];
  v10 = *(v1 + v6);
  v11 = v1[8];
  v12 = v1 + (v6 & 0xFFFFFFFFFFFFFFF8);
  v14 = *(v12 + 1);
  v13 = *(v12 + 2);
  v15 = swift_task_alloc();
  *(v3 + 16) = v15;
  *v15 = v3;
  v15[1] = sub_22F00CD54;

  return sub_22F035994(a1, v17, v7, v8, v9, v11, v1 + v5, v10);
}

uint64_t objectdestroyTm_0()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA10F8, &qword_22F0D5320) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 72) & ~v2;
  v4 = *(v1 + 64);
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();

  v6 = *(v0 + 64);

  v7 = sub_22F0D043C();
  v8 = *(v7 - 8);
  if (!(*(v8 + 48))(v0 + v3, 1, v7))
  {
    (*(v8 + 8))(v0 + v3, v7);
  }

  v9 = (v3 + v4) & 0xFFFFFFFFFFFFFFF8;
  v10 = *(v0 + v9 + 16);
  sub_22F0D00CC();

  return MEMORY[0x2821FE8E8](v0, v9 + 24, v2 | 7);
}

uint64_t sub_22F0364D8(uint64_t a1)
{
  v3 = v2;
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA10F8, &qword_22F0D5320) - 8);
  v5 = (*(v4 + 80) + 72) & ~*(v4 + 80);
  v6 = v5 + *(v4 + 64);
  v7 = v1[3];
  v17 = v1[2];
  v8 = v1[6];
  v9 = v1[7];
  v10 = *(v1 + v6);
  v11 = v1[8];
  v12 = v1 + (v6 & 0xFFFFFFFFFFFFFFF8);
  v14 = *(v12 + 1);
  v13 = *(v12 + 2);
  v15 = swift_task_alloc();
  *(v3 + 16) = v15;
  *v15 = v3;
  v15[1] = sub_22F00CF60;

  return sub_22F0353AC(a1, v17, v7, v8, v9, v11, v1 + v5, v10);
}

id sub_22F036638(uint64_t a1)
{
  v2 = *v1;
  v3 = *MEMORY[0x277D85000];
  (*(*(*((*MEMORY[0x277D85000] & *v1) + 0x50) - 8) + 16))(&v1[*((*MEMORY[0x277D85000] & *v1) + 0x60)], a1, *((*MEMORY[0x277D85000] & *v1) + 0x50));
  v4 = *((v3 & v2) + 0x58);
  v6.receiver = v1;
  v6.super_class = type metadata accessor for LegacyConfiguration.ExportedObject();
  return objc_msgSendSuper2(&v6, sel_init);
}

id sub_22F036704(uint64_t a1)
{
  v3 = *(v1 + 80);
  v4 = *(v1 + 88);
  v5 = objc_allocWithZone(type metadata accessor for LegacyConfiguration.ExportedObject());
  return sub_22F036638(a1);
}

uint64_t LaunchRecorder.__allocating_init(dataWriter:)(uint64_t a1)
{
  v2 = swift_allocObject();
  v11 = *(a1 + 24);
  v3 = v11;
  v4 = __swift_mutable_project_boxed_opaque_existential_1(a1, v11);
  v5 = *(v11 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8);
  *(v2 + 48) = v11;
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm((v2 + 24));
  (*(v5 + 32))(boxed_opaque_existential_1Tm, v8, v3);
  *(v2 + 16) = 0;
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v2;
}

void *LaunchRecorder.init(dataWriter:)(uint64_t *a1)
{
  v3 = a1[3];
  v4 = a1[4];
  v5 = __swift_mutable_project_boxed_opaque_existential_1(a1, v3);
  v6 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v8);
  v10 = sub_22F036D40(v8, v1, v3, v4);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v10;
}

void sub_22F0369CC()
{
  v2 = v0;
  v3 = v0[6];
  v4 = v0[7];
  __swift_project_boxed_opaque_existential_1(v0 + 3, v3);
  v5 = (*(v4 + 16))(v3, v4);
  if (v1)
  {
  }

  else if (v6 >> 60 != 15)
  {
    v7 = v5;
    v8 = v6;
    type metadata accessor for LaunchDiary();
    swift_allocObject();
    sub_22F00AC04(v7, v8);
    v9 = v7;
    v10 = LaunchDiary.init(withJSON:)(v7, v8);
    sub_22F00AB48(v9, v8);
    v11 = v2[2];
    v2[2] = v10;
    sub_22F0D00CC();
  }

  if (!v2[2])
  {
    type metadata accessor for LaunchDiary();
    swift_allocObject();
    v12 = LaunchDiary.init(withJSON:)(0, 0xF000000000000000);
    v13 = v2[2];
    v2[2] = v12;
    sub_22F0D00CC();
  }
}

uint64_t sub_22F036B38()
{
  v2 = *(v0 + 16);
  if (v2)
  {
    sub_22EFFFB40(v0 + 24, v12);
    v3 = v13;
    v4 = v14;
    __swift_project_boxed_opaque_existential_1(v12, v13);
    v5 = sub_22F0D016C();
    v6 = *(v5 + 48);
    v7 = *(v5 + 52);
    swift_allocObject();
    sub_22F0CFFAC();
    sub_22F0D015C();
    swift_beginAccess();
    v15 = *(v2 + 16);
    sub_22F0CFF1C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1660, &qword_22F0D74C0);
    sub_22F036E04();
    v8 = sub_22F0D014C();
    v10 = v9;

    sub_22F0D00CC();
    if (v1)
    {
      sub_22F0D00CC();
    }

    else
    {
      (*(v4 + 8))(v8, v10, v3, v4);
      sub_22F0D00CC();
      sub_22F00AB5C(v8, v10);
    }

    return __swift_destroy_boxed_opaque_existential_1Tm(v12);
  }

  else
  {
    _s6People0A6ErrorsO11createError_4codeSo7NSErrorCSS_SitFZ_0(0x7972616964206F4ELL, 0xEA00000000002120, 500);
    return swift_willThrow();
  }
}

uint64_t LaunchRecorder.deinit()
{
  v1 = *(v0 + 16);
  sub_22F0D00CC();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 24));
  return v0;
}

uint64_t LaunchRecorder.__deallocating_deinit()
{
  v1 = *(v0 + 16);
  sub_22F0D00CC();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 24));

  return swift_deallocClassInstance();
}

void *sub_22F036D40(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  a2[6] = a3;
  a2[7] = a4;
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(a2 + 3);
  (*(*(a3 - 8) + 32))(boxed_opaque_existential_1Tm, a1, a3);
  a2[2] = 0;
  return a2;
}

unint64_t sub_22F036E04()
{
  result = qword_280CBD1A0;
  if (!qword_280CBD1A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DAA1660, &qword_22F0D74C0);
    sub_22F036E90();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CBD1A0);
  }

  return result;
}

unint64_t sub_22F036E90()
{
  result = qword_280CBDC10;
  if (!qword_280CBDC10)
  {
    sub_22F0D05BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CBDC10);
  }

  return result;
}

uint64_t sub_22F036EE8()
{
  sub_22F0D199C();
  sub_22F0D0D5C();

  return sub_22F0D19CC();
}

uint64_t sub_22F036FE4(char a1)
{
  sub_22F0D199C();
  if (a1)
  {
    v2 = 0x3FD999999999999ALL;
  }

  else
  {
    v2 = 0x3FF0000000000000;
  }

  MEMORY[0x2318FDEF0](v2);
  return sub_22F0D19CC();
}

uint64_t sub_22F037040()
{
  sub_22F0D199C();
  sub_22F0D0D5C();

  return sub_22F0D19CC();
}

char *MessageDetails.queryItems.getter()
{
  v1 = v0;
  v102[2] = *MEMORY[0x277D85DE8];
  v99 = sub_22F0D021C();
  v2 = *(v99 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x28223BE20](v99);
  v91 = &v90 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v4);
  v92 = &v90 - v7;
  v8 = MEMORY[0x28223BE20](v6);
  v98 = &v90 - v9;
  v10 = MEMORY[0x28223BE20](v8);
  v93 = &v90 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v97 = &v90 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v96 = &v90 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v95 = &v90 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v94 = &v90 - v19;
  MEMORY[0x28223BE20](v18);
  v21 = &v90 - v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA0E20, &qword_22F0D4FF0);
  v22 = *(v2 + 72);
  v101 = v2;
  v23 = (*(v101 + 80) + 32) & ~*(v101 + 80);
  v90 = 8 * v22;
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_22F0D5A90;
  v100 = v23;
  *(v1 + 16);
  *(v1 + 16);
  v25 = v24;
  sub_22F0D01EC();

  v26 = *v1;
  v27 = v1[1];
  sub_22F0D01EC();
  v28 = v1[5];
  v29 = v1[6];
  sub_22F0D01EC();
  v30 = v1[3];
  v31 = v1[4];
  sub_22F0D01EC();
  v102[0] = 0;
  v102[1] = 0xE000000000000000;
  v32 = type metadata accessor for MessageDetails();
  v33 = v1 + v32[8];
  sub_22F0D04CC();
  sub_22F0D111C();
  sub_22F0D01EC();

  v34 = (v1 + v32[19]);
  v35 = *v34;
  v36 = v34[1];
  sub_22F0D01EC();
  v37 = v99;
  sub_22F0D01EC();

  v38 = (v1 + v32[17]);
  v39 = *v38;
  v40 = v38[1];
  sub_22F0D01EC();
  v41 = v1 + v32[9];
  if (*(v41 + 8))
  {
    v42 = v101;
  }

  else
  {
    v102[0] = *v41;
    sub_22F0D183C();
    sub_22F0D01EC();

    v25 = sub_22F03D7EC(1uLL, 9, 1, v25, &qword_27DAA0E20, &qword_22F0D4FF0, MEMORY[0x277CC8918]);
    *(v25 + 2) = 9;
    v42 = v101;
    (*(v101 + 32))(&v25[v100 + v90], v21, v37);
  }

  v43 = v93;
  v44 = (v1 + v32[18]);
  if (v44[1])
  {
    v45 = *v44;
    sub_22F0D01EC();
    v47 = *(v25 + 2);
    v46 = *(v25 + 3);
    v48 = v100;
    if (v47 >= v46 >> 1)
    {
      v25 = sub_22F03D7EC(v46 > 1, v47 + 1, 1, v25, &qword_27DAA0E20, &qword_22F0D4FF0, MEMORY[0x277CC8918]);
    }

    *(v25 + 2) = v47 + 1;
    (*(v42 + 32))(&v25[v48 + v47 * v22], v94, v37);
  }

  else
  {
    v48 = v100;
  }

  v49 = (v1 + v32[13]);
  if (v49[1])
  {
    v50 = *v49;
    sub_22F0D01EC();
    v52 = *(v25 + 2);
    v51 = *(v25 + 3);
    if (v52 >= v51 >> 1)
    {
      v25 = sub_22F03D7EC(v51 > 1, v52 + 1, 1, v25, &qword_27DAA0E20, &qword_22F0D4FF0, MEMORY[0x277CC8918]);
    }

    *(v25 + 2) = v52 + 1;
    (*(v42 + 32))(&v25[v48 + v52 * v22], v95, v37);
  }

  v53 = (v1 + v32[20]);
  if (v53[1])
  {
    v54 = *v53;
    sub_22F0D01EC();
    v56 = *(v25 + 2);
    v55 = *(v25 + 3);
    if (v56 >= v55 >> 1)
    {
      v25 = sub_22F03D7EC(v55 > 1, v56 + 1, 1, v25, &qword_27DAA0E20, &qword_22F0D4FF0, MEMORY[0x277CC8918]);
    }

    *(v25 + 2) = v56 + 1;
    (*(v42 + 32))(&v25[v48 + v56 * v22], v96, v37);
  }

  v57 = (v1 + v32[21]);
  if (v57[1])
  {
    v58 = *v57;
    sub_22F0D01EC();
    v60 = *(v25 + 2);
    v59 = *(v25 + 3);
    if (v60 >= v59 >> 1)
    {
      v25 = sub_22F03D7EC(v59 > 1, v60 + 1, 1, v25, &qword_27DAA0E20, &qword_22F0D4FF0, MEMORY[0x277CC8918]);
    }

    *(v25 + 2) = v60 + 1;
    (*(v42 + 32))(&v25[v48 + v60 * v22], v97, v37);
  }

  MessageDetails.notificationCaption.getter();
  sub_22F0D01EC();

  v62 = *(v25 + 2);
  v61 = *(v25 + 3);
  if (v62 >= v61 >> 1)
  {
    v25 = sub_22F03D7EC(v61 > 1, v62 + 1, 1, v25, &qword_27DAA0E20, &qword_22F0D4FF0, MEMORY[0x277CC8918]);
  }

  *(v25 + 2) = v62 + 1;
  v63 = &v25[v48 + v62 * v22];
  v66 = *(v42 + 32);
  v65 = v42 + 32;
  v64 = v66;
  (v66)(v63, v43, v37);
  v67 = (v1 + v32[16]);
  if (v67[1])
  {
    v68 = *v67;
    sub_22F0D01EC();
    v70 = *(v25 + 2);
    v69 = *(v25 + 3);
    if (v70 >= v69 >> 1)
    {
      v25 = sub_22F03D7EC(v69 > 1, v70 + 1, 1, v25, &qword_27DAA0E20, &qword_22F0D4FF0, MEMORY[0x277CC8918]);
    }

    *(v25 + 2) = v70 + 1;
    (v64)(&v25[v48 + v70 * v22], v98, v37);
  }

  v71 = (v1 + v32[14]);
  v72 = v71[1];
  if (v72 >> 60 != 15)
  {
    v101 = v65;
    v73 = *v71;
    sub_22F00AC04(*v71, v72);
    v74 = sub_22F0D046C();
    v102[0] = 0;
    v75 = [v74 compressedDataUsingAlgorithm:3 error:v102];

    v76 = v102[0];
    if (v75)
    {
      v98 = v64;
      v77 = sub_22F0D049C();
      v79 = v78;

      sub_22F0D047C();
      sub_22F0D01EC();

      v81 = *(v25 + 2);
      v80 = *(v25 + 3);
      if (v81 >= v80 >> 1)
      {
        v25 = sub_22F03D7EC(v80 > 1, v81 + 1, 1, v25, &qword_27DAA0E20, &qword_22F0D4FF0, MEMORY[0x277CC8918]);
      }

      sub_22F00AB48(v73, v72);
      sub_22F00AB5C(v77, v79);
      *(v25 + 2) = v81 + 1;
      v37 = v99;
      v48 = v100;
      v64 = v98;
      (v98)(&v25[v100 + v81 * v22], v92, v99);
    }

    else
    {
      v82 = v76;
      v83 = sub_22F0D033C();

      swift_willThrow();
      sub_22F00AB48(v73, v72);

      v37 = v99;
      v48 = v100;
    }
  }

  v84 = v1 + v32[10];
  if ((*(v84 + 8) & 1) == 0)
  {
    v102[0] = *v84;
    sub_22F0D183C();
    v85 = v91;
    sub_22F0D01EC();

    v87 = *(v25 + 2);
    v86 = *(v25 + 3);
    if (v87 >= v86 >> 1)
    {
      v25 = sub_22F03D7EC(v86 > 1, v87 + 1, 1, v25, &qword_27DAA0E20, &qword_22F0D4FF0, MEMORY[0x277CC8918]);
    }

    *(v25 + 2) = v87 + 1;
    (v64)(&v25[v48 + v87 * v22], v85, v37);
  }

  v88 = *MEMORY[0x277D85DE8];
  return v25;
}

uint64_t static MessageDetails.detailsFrom(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v241[3] = *MEMORY[0x277D85DE8];
  v5 = sub_22F0D05BC();
  v229 = *(v5 - 8);
  v230 = v5;
  v6 = *(v229 + 64);
  MEMORY[0x28223BE20](v5);
  v228 = &v214 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v236 = type metadata accessor for MessageDetails();
  v8 = *(*(v236 - 1) + 64);
  MEMORY[0x28223BE20](v236);
  v237 = &v214 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_22F0D021C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v239 = &v214 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v240 = &v214 - v16;
  MEMORY[0x28223BE20](v15);
  v18 = &v214 - v17;
  v19 = sub_22F005C48(0x756F53746E657665, 0xEB00000000656372);
  v20 = *(v19 + 2);
  v235 = a2;
  v231 = v18;
  if (v20)
  {
    v22 = *(v19 + 4);
    v21 = *(v19 + 5);
    sub_22F0CFF1C();
  }

  object = String.trimToNil()().value._object;

  if (!object)
  {
    v27 = "Missing event source";
LABEL_14:
    v32 = (v27 - 32) | 0x8000000000000000;
    v33 = 0xD000000000000014;
LABEL_15:
    _s6People0A6ErrorsO11createError_4codeSo7NSErrorCSS_SitFZ_0(v33, v32, 500);
    result = swift_willThrow();
    goto LABEL_16;
  }

  v24 = sub_22F0D174C();

  if (v24 == 1)
  {
    v26 = 0;
    v25 = 1;
  }

  else
  {
    if (v24 != 2)
    {

      goto LABEL_13;
    }

    v25 = 2;
    v26 = 1;
  }

  v28 = sub_22F0D188C();

  if (v28)
  {
LABEL_13:
    v27 = "Unknown event source";
    goto LABEL_14;
  }

  v29 = sub_22F005C48(0x4974736575716572, 0xE900000000000044);
  if (*(v29 + 2))
  {
    v31 = *(v29 + 4);
    v30 = *(v29 + 5);
    sub_22F0CFF1C();
  }

  v36 = String.trimToNil()();
  v37 = v36.value._object;

  if (!v36.value._object)
  {
    v33 = 0xD000000000000011;
    v32 = 0x800000022F0DE020;
    goto LABEL_15;
  }

  countAndFlagsBits = v36.value._countAndFlagsBits;
  v38 = sub_22F005C48(1701667182, 0xE400000000000000);
  v39 = *(v38 + 2);
  v223 = v2;
  if (v39)
  {
    v41 = *(v38 + 4);
    v40 = *(v38 + 5);
    sub_22F0CFF1C();
  }

  v42 = String.trimToNil()();

  v227 = a1;
  v222 = v25;
  if (v42.value._object)
  {
    v224 = v42;
  }

  else
  {
    type metadata accessor for DaemonConnection();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v44 = [objc_opt_self() bundleForClass_];
    v224.value._countAndFlagsBits = sub_22F0D031C();
    v46 = v45;

    if (qword_27DAA0570 != -1)
    {
      swift_once();
    }

    v47 = sub_22F0D0A1C();
    __swift_project_value_buffer(v47, qword_27DAA1A28);
    sub_22F0CFF1C();
    v48 = sub_22F0D09FC();
    v49 = sub_22F0D123C();

    v50 = os_log_type_enabled(v48, v49);
    v224.value._object = v46;
    if (v50)
    {
      v51 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      v241[0] = v52;
      *v51 = 136315138;
      *(v51 + 4) = sub_22F00A560(v224.value._countAndFlagsBits, v46, v241);
      _os_log_impl(&dword_22EFE1000, v48, v49, "Missing child name in URL components. Falling back to %s", v51, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v52);
      MEMORY[0x2318FE8B0](v52, -1, -1);
      v53 = v51;
      v37 = v36.value._object;
      MEMORY[0x2318FE8B0](v53, -1, -1);
    }
  }

  v54 = sub_22F005C48(0x4674736575716572, 0xED000074616D726FLL);
  v55 = v11;
  if (*(v54 + 2))
  {
    v57 = *(v54 + 4);
    v56 = *(v54 + 5);
    sub_22F0CFF1C();
  }

  v58 = String.trimToNil()();

  v220 = v58.value._object;
  if (!v58.value._object)
  {

    v33 = 0x20676E697373694DLL;
    v32 = 0xEE0074616D726F66;
    goto LABEL_15;
  }

  LODWORD(v217) = v26;
  v218 = v58.value._countAndFlagsBits;
  v219 = v37;
  v59 = sub_22F0D023C();
  v60 = 0x27DAA0000;
  if (!v59)
  {
    goto LABEL_56;
  }

  v234 = *(v59 + 16);
  if (v234)
  {
    v61 = 0;
    v232 = v55 + 16;
    v225 = v55 + 8;
    v238 = (v55 + 32);
    v62 = MEMORY[0x277D84F90];
    v226 = v55;
    v233 = v59;
    while (1)
    {
      if (v61 >= *(v59 + 16))
      {
        __break(1u);
        goto LABEL_152;
      }

      v63 = (*(v55 + 80) + 32) & ~*(v55 + 80);
      v64 = *(v55 + 72);
      v65 = v10;
      (*(v55 + 16))(v240, v59 + v63 + v64 * v61, v10);
      if (sub_22F0D01FC() == 0x7470697263736564 && v66 == 0xEB000000006E6F69)
      {
        break;
      }

      v67 = sub_22F0D188C();

      if (v67)
      {
        goto LABEL_41;
      }

      v10 = v65;
      (*v225)(v240, v65);
LABEL_35:
      ++v61;
      v59 = v233;
      if (v234 == v61)
      {
        goto LABEL_48;
      }
    }

LABEL_41:
    v68 = *v238;
    (*v238)(v239, v240, v65);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v241[0] = v62;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_22EFFC598(0, v62[2] + 1, 1);
      v62 = v241[0];
    }

    v71 = v62[2];
    v70 = v62[3];
    if (v71 >= v70 >> 1)
    {
      sub_22EFFC598(v70 > 1, v71 + 1, 1);
      v62 = v241[0];
    }

    v62[2] = v71 + 1;
    v10 = v65;
    v68(v62 + v63 + v71 * v64, v239, v65);
    v55 = v226;
    goto LABEL_35;
  }

  v62 = MEMORY[0x277D84F90];
LABEL_48:

  if (!v62[2])
  {
    sub_22F0D00CC();
    v60 = 0x27DAA0000uLL;
    goto LABEL_56;
  }

  v72 = v231;
  (*(v55 + 16))(v231, v62 + ((*(v55 + 80) + 32) & ~*(v55 + 80)), v10);
  sub_22F0D00CC();
  v240 = sub_22F0D020C();
  v74 = v73;
  (*(v55 + 8))(v72, v10);
  v60 = 0x27DAA0000uLL;
  v239 = v74;
  if (!v74)
  {
LABEL_56:
    v79 = sub_22F005C48(0x656C746974, 0xE500000000000000);
    if (*(v79 + 2))
    {
      v81 = *(v79 + 4);
      v80 = *(v79 + 5);
      sub_22F0CFF1C();
    }

    v82 = String.trimToNil()();
    v240 = v82.value._countAndFlagsBits;

    v239 = v82.value._object;
    if (!v82.value._object)
    {
      if (*(v60 + 1392) != -1)
      {
        swift_once();
      }

      v83 = sub_22F0D0A1C();
      __swift_project_value_buffer(v83, qword_27DAA1A28);
      v84 = sub_22F0D09FC();
      v85 = sub_22F0D123C();
      if (os_log_type_enabled(v84, v85))
      {
        v86 = swift_slowAlloc();
        *v86 = 0;
        _os_log_impl(&dword_22EFE1000, v84, v85, "Missing item title in URL components. Falling back to empty string", v86, 2u);
        MEMORY[0x2318FE8B0](v86, -1, -1);
      }

      v239 = 0xE000000000000000;
      v240 = 0;
    }

    goto LABEL_64;
  }

  if (qword_27DAA0570 != -1)
  {
    swift_once();
  }

  v75 = sub_22F0D0A1C();
  __swift_project_value_buffer(v75, qword_27DAA1A28);
  v76 = sub_22F0D09FC();
  v77 = sub_22F0D122C();
  if (os_log_type_enabled(v76, v77))
  {
    v78 = swift_slowAlloc();
    *v78 = 0;
    _os_log_impl(&dword_22EFE1000, v76, v77, "Old style conversation url", v78, 2u);
    MEMORY[0x2318FE8B0](v78, -1, -1);
  }

LABEL_64:
  v87 = sub_22F005C48(1684632420, 0xE400000000000000);
  if (*(v87 + 2))
  {
    v89 = *(v87 + 4);
    v88 = *(v87 + 5);
    sub_22F0CFF1C();
  }

  v90 = String.trimToNil()();

  if (v90.value._object && (v91 = sub_22F03C308(v90.value._countAndFlagsBits, v90.value._object), (v92 & 1) == 0))
  {
    LODWORD(v226) = 0;
  }

  else
  {
    if (*(v60 + 1392) != -1)
    {
      swift_once();
    }

    v93 = sub_22F0D0A1C();
    __swift_project_value_buffer(v93, qword_27DAA1A28);
    v94 = sub_22F0D09FC();
    v95 = sub_22F0D123C();
    if (os_log_type_enabled(v94, v95))
    {
      v96 = swift_slowAlloc();
      *v96 = 0;
      _os_log_impl(&dword_22EFE1000, v94, v95, "Missing/invalid dsid in URL components. Falling back to nil", v96, 2u);
      MEMORY[0x2318FE8B0](v96, -1, -1);
    }

    v91 = 0;
    LODWORD(v226) = 1;
  }

  v231 = v91;
  v97 = 0x65726F7453707061;
  if (v217)
  {
    v98 = sub_22F005C48(0x4449656C646E7562, 0xE800000000000000);
    if (*(v98 + 2))
    {
      v100 = *(v98 + 4);
      v99 = *(v98 + 5);
      sub_22F0CFF1C();
    }

    v104 = String.trimToNil()();

    v225 = 0x65726F7453707061;
    if (v104.value._object)
    {
      v233 = v104.value._object;
      v234 = v104.value._countAndFlagsBits;
      v105 = 0;
      v106 = 0;
      v107 = 0;
      v238 = 0;
    }

    else
    {
      if (*(v60 + 1392) != -1)
      {
        swift_once();
      }

      v117 = sub_22F0D0A1C();
      __swift_project_value_buffer(v117, qword_27DAA1A28);
      v118 = sub_22F0D09FC();
      v119 = sub_22F0D123C();
      if (os_log_type_enabled(v118, v119))
      {
        v120 = swift_slowAlloc();
        *v120 = 0;
        _os_log_impl(&dword_22EFE1000, v118, v119, "Missing bundle id in URL components. Falling back to nil", v120, 2u);
        MEMORY[0x2318FE8B0](v120, -1, -1);
      }

      v105 = 0;
      v106 = 0;
      v107 = 0;
      v238 = 0;
      v233 = 0;
      v234 = 0;
    }

    v232 = 0xE800000000000000;
    v121 = v237;
  }

  else
  {
    v101 = sub_22F005C48(0x69616E626D756874, 0xED0000687461506CLL);
    if (*(v101 + 2))
    {
      v103 = *(v101 + 4);
      v102 = *(v101 + 5);
      sub_22F0CFF1C();
    }

    v108 = String.trimToNil()();
    v109 = v108.value._countAndFlagsBits;

    v238 = v108.value._object;
    if (!v108.value._object)
    {
      if (*(v60 + 1392) != -1)
      {
        swift_once();
      }

      v110 = sub_22F0D0A1C();
      __swift_project_value_buffer(v110, qword_27DAA1A28);
      v111 = sub_22F0D09FC();
      v112 = sub_22F0D123C();
      if (os_log_type_enabled(v111, v112))
      {
        v113 = swift_slowAlloc();
        *v113 = 0;
        _os_log_impl(&dword_22EFE1000, v111, v112, "Missing thumbnailPath in URL components. Falling back to nil", v113, 2u);
        MEMORY[0x2318FE8B0](v113, -1, -1);
      }

      v109 = 0;
    }

    v114 = sub_22F005C48(0x6E694C65726F7473, 0xE90000000000006BLL);
    if (*(v114 + 2))
    {
      v116 = *(v114 + 4);
      v115 = *(v114 + 5);
      sub_22F0CFF1C();
    }

    v122 = String.trimToNil()();
    v106 = v122.value._object;

    if (v122.value._object)
    {
      v105 = v122.value._countAndFlagsBits;
    }

    else
    {
      v105 = 0;
    }

    v123 = sub_22F005C48(0x54746375646F7270, 0xEB00000000657079);
    if (*(v123 + 2))
    {
      v125 = *(v123 + 4);
      v124 = *(v123 + 5);
      sub_22F0CFF1C();
    }

    v126 = String.trimToNil()();

    v233 = 0;
    v234 = 0;
    if (v126.value._object)
    {
      v97 = v126.value._countAndFlagsBits;
    }

    v225 = v97;
    v127 = 0xE800000000000000;
    if (v126.value._object)
    {
      v127 = v126.value._object;
    }

    v232 = v127;
    v121 = v237;
    v107 = v109;
  }

  v121[16] = 3;
  v128 = v236;
  v216 = v236[8];
  sub_22F0D04EC();
  v129 = &v121[v128[10]];
  *v129 = 0;
  v215 = v129;
  v129[8] = 1;
  v130 = v128[11];
  v121[v130] = 0;
  v131 = v128[12];
  v132 = type metadata accessor for ResolvedFamily();
  (*(*(v132 - 8) + 56))(&v121[v131], 1, 1, v132);
  v133 = &v121[v128[14]];
  *v133 = xmmword_22F0D6620;
  v134 = &v121[v128[17]];
  v134->value._countAndFlagsBits = 0;
  v134->value._object = 0xE000000000000000;
  v217 = v134;
  v135 = sub_22F005C48(0x69616E626D756874, 0xED0000617461446CLL);
  if (*(v135 + 2))
  {
    v137 = *(v135 + 4);
    v136 = *(v135 + 5);
    sub_22F0CFF1C();
  }

  v138 = String.trimToNil()().value._object;

  if (v138)
  {
    v139 = sub_22F0D045C();
    v141 = v140;

    if (v141 >> 60 != 15)
    {
      v142 = sub_22F0D046C();
      v241[0] = 0;
      v143 = [v142 decompressedDataUsingAlgorithm:3 error:v241];

      v144 = v241[0];
      if (v143)
      {
        v145 = sub_22F0D049C();
        v214 = v105;
        v146 = v106;
        v147 = v130;
        v149 = v148;
        sub_22F00AB48(v139, v141);

        sub_22F00AB48(*v133, *(v133 + 1));
        *v133 = v145;
        *(v133 + 1) = v149;
        v130 = v147;
        v106 = v146;
        v105 = v214;
      }

      else
      {
        v150 = v144;
        v151 = sub_22F0D033C();

        swift_willThrow();
        sub_22F00AB48(v139, v141);

        v223 = 0;
      }
    }
  }

  v152 = sub_22F005C48(0xD000000000000013, 0x800000022F0DC590);
  v153 = v233;
  if (*(v152 + 2))
  {
    v155 = *(v152 + 4);
    v154 = *(v152 + 5);
    sub_22F0CFF1C();
  }

  v156 = String.trimToNil()().value._object;

  if (v156)
  {
    v157 = String.trimToNil()();
    v158 = v157.value._countAndFlagsBits;
    v159 = v157.value._object;
  }

  else
  {
    v158 = 0;
    v159 = 0;
  }

  v160 = &v237[v236[15]];
  *v160 = v158;
  v160[1] = v159;
  v161 = sub_22F005C48(0x6143656C62627562, 0xED00006E6F697470);
  if (*(v161 + 2))
  {
    v163 = *(v161 + 4);
    v162 = *(v161 + 5);
    sub_22F0CFF1C();
  }

  v164 = String.trimToNil()().value._object;

  if (v164)
  {
    v165 = String.trimToNil()();
    v166 = v165.value._countAndFlagsBits;
    v167 = v165.value._object;
  }

  else
  {
    v166 = 0;
    v167 = 0;
  }

  v168 = v237;
  v169 = &v237[v236[9]];
  v170 = &v237[v236[13]];
  v171 = &v237[v236[16]];
  v172 = &v237[v236[18]];
  v173 = &v237[v236[19]];
  v174 = &v237[v236[20]];
  v175 = &v237[v236[21]];
  *v171 = v166;
  v171[1] = v167;
  *(v168 + 3) = v218;
  *(v168 + 4) = v220;
  *v173 = v240;
  *(v173 + 1) = v239;
  v168[v130] = 5;
  *v169 = v231;
  v169[8] = v226;
  v168[16] = v222;
  v176 = v219;
  *v168 = countAndFlagsBits;
  *(v168 + 1) = v176;
  v177 = v224.value._object;
  *(v168 + 5) = v224.value._countAndFlagsBits;
  *(v168 + 6) = v177;
  *v172 = v234;
  v172[1] = v153;
  v178 = v238;
  *v170 = v107;
  *(v170 + 1) = v178;
  *v174 = v105;
  v174[1] = v106;
  v179 = v232;
  *v175 = v225;
  v175[1] = v179;
  v180 = sub_22F005C48(0x73556E6F69746361, 0xEE00444953447265);
  if (*(v180 + 2))
  {
    v182 = *(v180 + 4);
    v181 = *(v180 + 5);
    sub_22F0CFF1C();
  }

  v183 = String.trimToNil()();

  if (v183.value._object)
  {
    v184 = sub_22F03C308(v183.value._countAndFlagsBits, v183.value._object);
    if ((v185 & 1) == 0)
    {
      v186 = v215;
      *v215 = v184;
      *(v186 + 8) = 0;
    }
  }

  v187 = sub_22F005C48(0x6C61766F72707061, 0xEC000000656D6954);
  if (*(v187 + 2))
  {
    v189 = *(v187 + 4);
    v188 = *(v187 + 5);
    sub_22F0CFF1C();
  }

  v190 = String.trimToNil()();

  if (v190.value._object)
  {
    *v217 = v190;
  }

  v191 = sub_22F005C48(0x737574617473, 0xE600000000000000);
  if (*(v191 + 2))
  {
    v193 = *(v191 + 4);
    v192 = *(v191 + 5);
    sub_22F0CFF1C();
  }

  v194 = String.trimToNil()();

  if (v194.value._object)
  {
    MessageDetails.EventStatus.init(rawValue:)(v194.value);
    if (LOBYTE(v241[0]) != 6)
    {
      v237[v130] = v241[0];
    }
  }

  v195 = sub_22F005C48(0x73657269707865, 0xE700000000000000);
  if (*(v195 + 2))
  {
    v197 = *(v195 + 4);
    v196 = *(v195 + 5);
    sub_22F0CFF1C();
  }

  v198 = String.trimToNil()();

  if (v198.value._object && (v241[0] = 0, v199 = sub_22F03D9C8(v198.value._countAndFlagsBits, v198.value._object), , v199))
  {
    v200 = v228;
    sub_22F0D04BC();
    (*(v229 + 40))(&v237[v216], v200, v230);
  }

  else
  {
    if (qword_27DAA0570 != -1)
    {
      swift_once();
    }

    v201 = sub_22F0D0A1C();
    __swift_project_value_buffer(v201, qword_27DAA1A28);
    v202 = sub_22F0D09FC();
    v203 = sub_22F0D123C();
    if (os_log_type_enabled(v202, v203))
    {
      v204 = swift_slowAlloc();
      *v204 = 0;
      _os_log_impl(&dword_22EFE1000, v202, v203, "Failed to get expiration date from URL", v204, 2u);
      MEMORY[0x2318FE8B0](v204, -1, -1);
    }
  }

  if (qword_27DAA0570 != -1)
  {
LABEL_152:
    swift_once();
  }

  v205 = sub_22F0D0A1C();
  __swift_project_value_buffer(v205, qword_27DAA1A28);
  v206 = sub_22F0D09FC();
  v207 = sub_22F0D122C();
  if (os_log_type_enabled(v206, v207))
  {
    v208 = swift_slowAlloc();
    v209 = swift_slowAlloc();
    v241[0] = v209;
    *v208 = 136315138;
    v210 = v237;
    swift_beginAccess();
    v211 = MessageDetails.debugDescription.getter();
    v213 = sub_22F00A560(v211, v212, v241);

    *(v208 + 4) = v213;
    _os_log_impl(&dword_22EFE1000, v206, v207, "Details from URL %s", v208, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v209);
    MEMORY[0x2318FE8B0](v209, -1, -1);
    MEMORY[0x2318FE8B0](v208, -1, -1);
  }

  else
  {

    v210 = v237;
  }

  swift_beginAccess();
  sub_22F011C4C(v210, v235);
  result = sub_22F01DF14(v210, type metadata accessor for MessageDetails);
LABEL_16:
  v35 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t MessageDetails.EventSource.rawValue.getter()
{
  v1 = 0x7975426F546B7361;
  if (*v0 != 1)
  {
    v1 = 0x69546E6565726373;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6E776F6E6B6E75;
  }
}

double MessageDetails.init()@<D0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  *(a1 + 16) = 3;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0xE000000000000000;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0xE000000000000000;
  v2 = type metadata accessor for MessageDetails();
  v3 = a1 + v2[8];
  sub_22F0D04EC();
  v4 = a1 + v2[9];
  *v4 = 0;
  *(v4 + 8) = 1;
  v5 = a1 + v2[10];
  *v5 = 0;
  *(v5 + 8) = 1;
  *(a1 + v2[11]) = 0;
  v6 = v2[12];
  v7 = type metadata accessor for ResolvedFamily();
  (*(*(v7 - 8) + 56))(a1 + v6, 1, 1, v7);
  v8 = (a1 + v2[13]);
  *v8 = 0;
  v8[1] = 0;
  result = 0.0;
  *(a1 + v2[14]) = xmmword_22F0D6620;
  v10 = (a1 + v2[15]);
  *v10 = 0;
  v10[1] = 0;
  v11 = (a1 + v2[16]);
  *v11 = 0;
  v11[1] = 0;
  v12 = (a1 + v2[17]);
  *v12 = 0;
  v12[1] = 0xE000000000000000;
  v13 = (a1 + v2[18]);
  *v13 = 0;
  v13[1] = 0;
  v14 = (a1 + v2[19]);
  *v14 = 0;
  v14[1] = 0xE000000000000000;
  v15 = (a1 + v2[20]);
  *v15 = 0;
  v15[1] = 0;
  v16 = (a1 + v2[21]);
  *v16 = 0;
  v16[1] = 0;
  return result;
}

People::MessageDetails::EventSource_optional __swiftcall MessageDetails.EventSource.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_22F0D174C();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_22F03990C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE800000000000000;
  v4 = 0x7975426F546B7361;
  if (v2 != 1)
  {
    v4 = 0x69546E6565726373;
    v3 = 0xEA0000000000656DLL;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x6E776F6E6B6E75;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  v7 = 0xE800000000000000;
  v8 = 0x7975426F546B7361;
  if (*a2 != 1)
  {
    v8 = 0x69546E6565726373;
    v7 = 0xEA0000000000656DLL;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x6E776F6E6B6E75;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE700000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_22F0D188C();
  }

  return v11 & 1;
}

uint64_t sub_22F039A18()
{
  v1 = *v0;
  sub_22F0D199C();
  sub_22F0D0D5C();

  return sub_22F0D19CC();
}

uint64_t sub_22F039AC0()
{
  *v0;
  *v0;
  sub_22F0D0D5C();
}

uint64_t sub_22F039B54()
{
  v1 = *v0;
  sub_22F0D199C();
  sub_22F0D0D5C();

  return sub_22F0D19CC();
}

void sub_22F039C04(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0xE800000000000000;
  v5 = 0x7975426F546B7361;
  if (v2 != 1)
  {
    v5 = 0x69546E6565726373;
    v4 = 0xEA0000000000656DLL;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6E776F6E6B6E75;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

People::MessageDetails::EventStatus_optional __swiftcall MessageDetails.EventStatus.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_22F0D174C();

  v5 = 6;
  if (v3 < 6)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t MessageDetails.EventStatus.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x6E776F6E6B6E75;
  v3 = 0x6465696E6564;
  v4 = 0x64657269707865;
  if (v1 != 4)
  {
    v4 = 0x646567727570;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x676E69646E6570;
  if (v1 != 1)
  {
    v5 = 0x6465766F72707061;
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

uint64_t type metadata accessor for MessageDetails()
{
  result = qword_27DAA1698;
  if (!qword_27DAA1698)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22F039DD8()
{
  *v0;
  *v0;
  *v0;
  sub_22F0D0D5C();
}

void sub_22F039ED4(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x6E776F6E6B6E75;
  v5 = 0xE600000000000000;
  v6 = 0x6465696E6564;
  v7 = 0xE700000000000000;
  v8 = 0x64657269707865;
  if (v2 != 4)
  {
    v8 = 0x646567727570;
    v7 = 0xE600000000000000;
  }

  if (v2 != 3)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE700000000000000;
  v10 = 0x676E69646E6570;
  if (v2 != 1)
  {
    v10 = 0x6465766F72707061;
    v9 = 0xE800000000000000;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  if (*v1 <= 2u)
  {
    v11 = v4;
  }

  else
  {
    v11 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v11;
  a1[1] = v3;
}

uint64_t MessageDetails.requestID.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_22F0CFF1C();
  return v1;
}

uint64_t MessageDetails.requestID.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t MessageDetails.requestFormat.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  sub_22F0CFF1C();
  return v1;
}

uint64_t MessageDetails.requestFormat.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 32);

  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return result;
}

uint64_t MessageDetails.childName.getter()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
  sub_22F0CFF1C();
  return v1;
}

uint64_t MessageDetails.childName.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);

  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return result;
}

uint64_t MessageDetails.expirationDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for MessageDetails() + 32);
  v4 = sub_22F0D05BC();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t MessageDetails.expirationDate.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for MessageDetails() + 32);
  v4 = sub_22F0D05BC();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t MessageDetails.userDSID.getter()
{
  v1 = (v0 + *(type metadata accessor for MessageDetails() + 36));
  result = *v1;
  v3 = *(v1 + 8);
  return result;
}

uint64_t MessageDetails.userDSID.setter(uint64_t a1, char a2)
{
  result = type metadata accessor for MessageDetails();
  v6 = v2 + *(result + 36);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

uint64_t MessageDetails.actionUserDSID.getter()
{
  v1 = (v0 + *(type metadata accessor for MessageDetails() + 40));
  result = *v1;
  v3 = *(v1 + 8);
  return result;
}

uint64_t MessageDetails.actionUserDSID.setter(uint64_t a1, char a2)
{
  result = type metadata accessor for MessageDetails();
  v6 = v2 + *(result + 40);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

uint64_t MessageDetails.status.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for MessageDetails();
  *a1 = *(v1 + *(result + 44));
  return result;
}

uint64_t MessageDetails.status.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for MessageDetails();
  *(v1 + *(result + 44)) = v2;
  return result;
}

uint64_t MessageDetails.family.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for MessageDetails() + 48);

  return sub_22F02D28C(v3, a1);
}

uint64_t MessageDetails.family.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for MessageDetails() + 48);

  return sub_22F03DAC0(a1, v3);
}

uint64_t MessageDetails.thumbnailPath.getter()
{
  v1 = (v0 + *(type metadata accessor for MessageDetails() + 52));
  v2 = *v1;
  v3 = v1[1];
  sub_22F0CFF1C();
  return v2;
}

uint64_t MessageDetails.thumbnailPath.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for MessageDetails() + 52));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t MessageDetails.thumbnailData.getter()
{
  v1 = v0 + *(type metadata accessor for MessageDetails() + 56);
  v2 = *v1;
  sub_22F0303BC(*v1, *(v1 + 8));
  return v2;
}

uint64_t MessageDetails.thumbnailData.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2 + *(type metadata accessor for MessageDetails() + 56);
  result = sub_22F00AB48(*v5, *(v5 + 8));
  *v5 = a1;
  *(v5 + 8) = a2;
  return result;
}

uint64_t MessageDetails._bubbleCaption.getter()
{
  v1 = (v0 + *(type metadata accessor for MessageDetails() + 64));
  v2 = *v1;
  v3 = v1[1];
  sub_22F0CFF1C();
  return v2;
}

uint64_t MessageDetails._bubbleCaption.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for MessageDetails() + 64));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t MessageDetails.notificationCaption.getter()
{
  v1 = type metadata accessor for MessageDetails();
  v2 = (v0 + *(v1 + 60));
  if (!v2[1])
  {
    if (*(v0 + 16) > 1u)
    {
      if (*(v0 + 16) == 2)
      {
        v5 = v1;
        v8 = (v0 + *(v1 + 72));
        v9 = v8[1];
        if (v9 && (*v8 == 0xD000000000000016 ? (v10 = v9 == 0x800000022F0DD8D0) : (v10 = 0), v10 || (sub_22F0D188C() & 1) != 0))
        {
          type metadata accessor for DaemonConnection();
          ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
          v7 = [objc_opt_self() bundleForClass_];
          v26 = 0x800000022F0DE080;
        }

        else
        {
          type metadata accessor for DaemonConnection();
          ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
          v7 = [objc_opt_self() bundleForClass_];
          v26 = 0x800000022F0DE060;
        }

        goto LABEL_16;
      }
    }

    else if (*(v0 + 16))
    {
      v5 = v1;
      type metadata accessor for DaemonConnection();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v7 = [objc_opt_self() bundleForClass_];
      v26 = 0x800000022F0DE0A0;
LABEL_16:
      sub_22F0D031C();

      type metadata accessor for DaemonConnection();
      v16 = [objc_opt_self() bundleForClass_];
      sub_22F0D031C();

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA07B0, &qword_22F0D2C58);
      v17 = swift_allocObject();
      *(v17 + 16) = xmmword_22F0D6710;
      v19 = *(v0 + 40);
      v18 = *(v0 + 48);
      v20 = MEMORY[0x277D837D0];
      *(v17 + 56) = MEMORY[0x277D837D0];
      v21 = sub_22F03DB30();
      *(v17 + 64) = v21;
      *(v17 + 32) = v19;
      *(v17 + 40) = v18;
      v22 = (v0 + *(v5 + 76));
      v23 = *v22;
      v24 = v22[1];
      *(v17 + 96) = v20;
      *(v17 + 104) = v21;
      *(v17 + 72) = v23;
      *(v17 + 80) = v24;
      sub_22F0CFF1C();
      sub_22F0CFF1C();
      v3 = sub_22F0D0CCC();
      goto LABEL_17;
    }

    type metadata accessor for DaemonConnection();
    v11 = swift_getObjCClassFromMetadata();
    v12 = [objc_opt_self() bundleForClass_];
    sub_22F0D031C();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA07B0, &qword_22F0D2C58);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_22F0D2BF0;
    v15 = *(v0 + 40);
    v14 = *(v0 + 48);
    *(v13 + 56) = MEMORY[0x277D837D0];
    *(v13 + 64) = sub_22F03DB30();
    *(v13 + 32) = v15;
    *(v13 + 40) = v14;
    sub_22F0CFF1C();
    v3 = sub_22F0D0CCC();
LABEL_17:

    goto LABEL_18;
  }

  v3 = *v2;
  v4 = v2[1];
LABEL_18:
  sub_22F0CFF1C();
  return v3;
}

uint64_t sub_22F03AC34(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = String.trimToNil()();
  v6 = (a2 + *(type metadata accessor for MessageDetails() + 60));
  object = v6->value._object;

  *v6 = v5;
  return result;
}

uint64_t MessageDetails.notificationCaption.setter()
{
  v1 = String.trimToNil()();

  v2 = (v0 + *(type metadata accessor for MessageDetails() + 60));
  object = v2->value._object;

  *v2 = v1;
  return result;
}

uint64_t (*MessageDetails.notificationCaption.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  *a1 = MessageDetails.notificationCaption.getter();
  a1[1] = v3;
  return sub_22F03AD2C;
}

uint64_t sub_22F03AD2C(uint64_t *a1, char a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  if (a2)
  {
    v5 = a1[1];
    sub_22F0CFF1C();
    v6 = String.trimToNil()();

    v7 = (v4 + *(type metadata accessor for MessageDetails() + 60));
    object = v7->value._object;

    *v7 = v6;
  }

  else
  {
    v10 = *a1;
    v11 = String.trimToNil()();

    v12 = (v4 + *(type metadata accessor for MessageDetails() + 60));
    v13 = v12->value._object;

    *v12 = v11;
  }

  return result;
}

uint64_t MessageDetails.bubbleCaption.getter()
{
  v1 = (v0 + *(type metadata accessor for MessageDetails() + 64));
  if (v1[1])
  {
    v2 = *v1;
    v3 = v1[1];
  }

  else
  {
    v2 = MessageDetails.notificationCaption.getter();
  }

  sub_22F0CFF1C();
  return v2;
}

uint64_t sub_22F03AE54@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for MessageDetails() + 64));
  v4 = v3[1];
  if (v4)
  {
    v5 = *v3;
    v6 = v4;
  }

  else
  {
    v5 = MessageDetails.notificationCaption.getter();
  }

  *a2 = v5;
  a2[1] = v6;

  return sub_22F0CFF1C();
}

uint64_t sub_22F03AEBC(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = String.trimToNil()();
  v6 = (a2 + *(type metadata accessor for MessageDetails() + 64));
  object = v6->value._object;

  *v6 = v5;
  return result;
}

uint64_t MessageDetails.bubbleCaption.setter()
{
  v1 = String.trimToNil()();

  v2 = (v0 + *(type metadata accessor for MessageDetails() + 64));
  object = v2->value._object;

  *v2 = v1;
  return result;
}

void (*MessageDetails.bubbleCaption.modify(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(type metadata accessor for MessageDetails() + 64);
  *(v4 + 32) = v5;
  v6 = (v1 + v5);
  v7 = v6[1];
  if (v7)
  {
    v8 = *v6;
    v9 = v7;
  }

  else
  {
    v8 = MessageDetails.notificationCaption.getter();
    v7 = 0;
  }

  *(v4 + 24) = v7;
  *v4 = v8;
  *(v4 + 8) = v9;
  sub_22F0CFF1C();
  return sub_22F03B020;
}

void sub_22F03B020(uint64_t **a1, char a2)
{
  v2 = *a1;
  v4 = **a1;
  v3 = (*a1)[1];
  v5 = (*a1)[3];
  v6 = ((*a1)[2] + *(*a1 + 8));
  if (a2)
  {
    v7 = (*a1)[1];
    sub_22F0CFF1C();
    v8 = String.trimToNil()();

    *v6 = v8;
    v9 = v2[1];
  }

  else
  {
    v10 = **a1;
    v11 = String.trimToNil()();

    *v6 = v11;
  }

  free(v2);
}

uint64_t MessageDetails.approvalTime.getter()
{
  v1 = (v0 + *(type metadata accessor for MessageDetails() + 68));
  v2 = *v1;
  v3 = v1[1];
  sub_22F0CFF1C();
  return v2;
}

uint64_t MessageDetails.approvalTime.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for MessageDetails() + 68));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t MessageDetails.bundleId.getter()
{
  v1 = (v0 + *(type metadata accessor for MessageDetails() + 72));
  v2 = *v1;
  v3 = v1[1];
  sub_22F0CFF1C();
  return v2;
}

uint64_t MessageDetails.bundleId.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for MessageDetails() + 72));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t MessageDetails.title.getter()
{
  v1 = (v0 + *(type metadata accessor for MessageDetails() + 76));
  v2 = *v1;
  v3 = v1[1];
  sub_22F0CFF1C();
  return v2;
}

uint64_t MessageDetails.title.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for MessageDetails() + 76));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t MessageDetails.storeLink.getter()
{
  v1 = (v0 + *(type metadata accessor for MessageDetails() + 80));
  v2 = *v1;
  v3 = v1[1];
  sub_22F0CFF1C();
  return v2;
}

uint64_t MessageDetails.storeLink.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for MessageDetails() + 80));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t MessageDetails.productType.getter()
{
  v1 = (v0 + *(type metadata accessor for MessageDetails() + 84));
  v2 = *v1;
  v3 = v1[1];
  sub_22F0CFF1C();
  return v2;
}

uint64_t MessageDetails.productType.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for MessageDetails() + 84));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t MessageDetails.debugDescription.getter()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1448, &unk_22F0D6640);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v61 - v4;
  v63[0] = 0;
  v63[1] = 0xE000000000000000;
  sub_22F0D152C();

  strcpy(v63, " eventSource:");
  HIWORD(v63[1]) = -4864;
  LOBYTE(v61) = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1668, &qword_22F0D74C8);
  v6 = sub_22F0D0CFC();
  MEMORY[0x2318FD2C0](v6);

  MEMORY[0x2318FD2C0](32, 0xE100000000000000);
  v7 = v63[0];
  v8 = v63[1];
  v63[0] = 0;
  v63[1] = 0xE000000000000000;
  sub_22F0D152C();

  v63[0] = v7;
  v63[1] = v8;
  MEMORY[0x2318FD2C0](0xD000000000000010, 0x800000022F0DE0C0);
  v9 = type metadata accessor for MessageDetails();
  v10 = v9[8];
  sub_22F0D05BC();
  sub_22F03DB84();
  v11 = sub_22F0D183C();
  MEMORY[0x2318FD2C0](v11);

  MEMORY[0x2318FD2C0](32, 0xE100000000000000);
  MEMORY[0x2318FD2C0](0x4953447265737520, 0xEA00000000003A44);
  v12 = v1 + v9[9];
  v13 = *v12;
  LOBYTE(v12) = v12[8];
  v61 = v13;
  LOBYTE(v62) = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1678, &qword_22F0D74D0);
  v14 = sub_22F0D0CFC();
  MEMORY[0x2318FD2C0](v14);

  MEMORY[0x2318FD2C0](32, 0xE100000000000000);
  v15 = v63[0];
  v16 = v63[1];
  v63[0] = 0;
  v63[1] = 0xE000000000000000;
  sub_22F0D152C();

  v63[0] = v15;
  v63[1] = v16;
  MEMORY[0x2318FD2C0](0xD000000000000010, 0x800000022F0DE0E0);
  v17 = v1 + v9[10];
  v18 = *v17;
  LOBYTE(v17) = v17[8];
  v61 = v18;
  LOBYTE(v62) = v17;
  v19 = sub_22F0D0CFC();
  MEMORY[0x2318FD2C0](v19);

  MEMORY[0x2318FD2C0](32, 0xE100000000000000);
  v20 = v63[0];
  v21 = v63[1];
  v63[0] = 0;
  v63[1] = 0xE000000000000000;
  sub_22F0D152C();

  v63[0] = v20;
  v63[1] = v21;
  MEMORY[0x2318FD2C0](0x7473657571657220, 0xEC000000203A4449);
  MEMORY[0x2318FD2C0](*v1, v1[1]);
  MEMORY[0x2318FD2C0](32, 0xE100000000000000);
  v22 = v63[0];
  v23 = v63[1];
  v63[0] = 0;
  v63[1] = 0xE000000000000000;
  MEMORY[0x2318FD2C0](v22, v23);

  MEMORY[0x2318FD2C0](0x3A73757461747320, 0xE900000000000020);
  LOBYTE(v61) = *(v1 + v9[11]);
  sub_22F0D168C();
  MEMORY[0x2318FD2C0](32, 0xE100000000000000);
  v24 = v63[0];
  v25 = v63[1];
  v63[0] = 0;
  v63[1] = 0xE000000000000000;
  sub_22F0D152C();

  v63[0] = v24;
  v63[1] = v25;
  MEMORY[0x2318FD2C0](0x49656C646E756220, 0xEB00000000203A64);
  v26 = (v1 + v9[18]);
  v27 = v26[1];
  v61 = *v26;
  v62 = v27;
  sub_22F0CFF1C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA14D8, &unk_22F0D6A00);
  v28 = sub_22F0D0CFC();
  MEMORY[0x2318FD2C0](v28);

  MEMORY[0x2318FD2C0](32, 0xE100000000000000);
  v29 = v63[0];
  v30 = v63[1];
  v63[0] = 0;
  v63[1] = 0xE000000000000000;
  sub_22F0D152C();

  v63[0] = v29;
  v63[1] = v30;
  MEMORY[0x2318FD2C0](0xD000000000000010, 0x800000022F0DE100);
  v31 = (v1 + v9[13]);
  v32 = v31[1];
  v61 = *v31;
  v62 = v32;
  sub_22F0CFF1C();
  v33 = sub_22F0D0CFC();
  MEMORY[0x2318FD2C0](v33);

  MEMORY[0x2318FD2C0](32, 0xE100000000000000);
  v34 = v63[0];
  v35 = v63[1];
  v63[0] = 0;
  v63[1] = 0xE000000000000000;
  sub_22F0D152C();

  v63[0] = v34;
  v63[1] = v35;
  MEMORY[0x2318FD2C0](0xD000000000000010, 0x800000022F0DE120);
  v36 = (v1 + v9[14]);
  v37 = v36[1];
  v61 = *v36;
  v62 = v37;
  sub_22F0303BC(v61, v37);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1680, &qword_22F0D74D8);
  v38 = sub_22F0D0CFC();
  MEMORY[0x2318FD2C0](v38);

  MEMORY[0x2318FD2C0](32, 0xE100000000000000);
  v39 = v63[0];
  v40 = v63[1];
  v63[0] = 0;
  v63[1] = 0xE000000000000000;
  sub_22F0D152C();

  v63[0] = v39;
  v63[1] = v40;
  MEMORY[0x2318FD2C0](0xD000000000000010, 0x800000022F0DE140);
  MEMORY[0x2318FD2C0](v1[3], v1[4]);
  MEMORY[0x2318FD2C0](32, 0xE100000000000000);
  MEMORY[0x2318FD2C0](0x203A656D616E20, 0xE700000000000000);
  MEMORY[0x2318FD2C0](v1[5], v1[6]);
  MEMORY[0x2318FD2C0](32, 0xE100000000000000);
  MEMORY[0x2318FD2C0](0x203A656C74697420, 0xE800000000000000);
  MEMORY[0x2318FD2C0](*(v1 + v9[19]), *(v1 + v9[19] + 8));
  MEMORY[0x2318FD2C0](32, 0xE100000000000000);
  MEMORY[0x2318FD2C0](0x3A796C696D616620, 0xE900000000000020);
  sub_22F02D28C(v1 + v9[12], v5);
  v41 = sub_22F0D0CFC();
  MEMORY[0x2318FD2C0](v41);

  MEMORY[0x2318FD2C0](32, 0xE100000000000000);
  v42 = v63[0];
  v43 = v63[1];
  v63[0] = 0;
  v63[1] = 0xE000000000000000;
  sub_22F0D152C();

  v63[0] = v42;
  v63[1] = v43;
  MEMORY[0x2318FD2C0](0x6C2065726F747320, 0xED0000203A6B6E69);
  v44 = (v1 + v9[20]);
  v45 = v44[1];
  v61 = *v44;
  v62 = v45;
  sub_22F0CFF1C();
  v46 = sub_22F0D0CFC();
  MEMORY[0x2318FD2C0](v46);

  MEMORY[0x2318FD2C0](32, 0xE100000000000000);
  v47 = v63[0];
  v48 = v63[1];
  v63[0] = 0;
  v63[1] = 0xE000000000000000;
  sub_22F0D152C();

  v63[0] = v47;
  v63[1] = v48;
  MEMORY[0x2318FD2C0](0x746375646F727020, 0xEF203A6570797420);
  v49 = (v1 + v9[21]);
  v50 = v49[1];
  v61 = *v49;
  v62 = v50;
  sub_22F0CFF1C();
  v51 = sub_22F0D0CFC();
  MEMORY[0x2318FD2C0](v51);

  MEMORY[0x2318FD2C0](32, 0xE100000000000000);
  v52 = v63[0];
  v53 = v63[1];
  v63[0] = 0;
  v63[1] = 0xE000000000000000;
  sub_22F0D152C();

  v63[0] = v52;
  v63[1] = v53;
  MEMORY[0x2318FD2C0](0xD000000000000016, 0x800000022F0DE160);
  v54 = MessageDetails.notificationCaption.getter();
  MEMORY[0x2318FD2C0](v54);

  MEMORY[0x2318FD2C0](32, 0xE100000000000000);
  v55 = v63[0];
  v56 = v63[1];
  v63[0] = 0;
  v63[1] = 0xE000000000000000;
  sub_22F0D152C();

  v63[0] = v55;
  v63[1] = v56;
  MEMORY[0x2318FD2C0](0xD000000000000011, 0x800000022F0DE180);
  v57 = (v1 + v9[16]);
  v58 = v57[1];
  v61 = *v57;
  v62 = v58;
  sub_22F0CFF1C();
  v59 = sub_22F0D0CFC();
  MEMORY[0x2318FD2C0](v59);

  MEMORY[0x2318FD2C0](32, 0xE100000000000000);
  return v63[0];
}

uint64_t MessageDetails.actioned.getter()
{
  v1 = *(v0 + *(type metadata accessor for MessageDetails() + 44));
  if (v1 == 2)
  {
    v2 = 1;
LABEL_8:

    return v2 & 1;
  }

  v3 = sub_22F0D188C();

  if ((v3 & 1) == 0)
  {
    if (v1 == 3)
    {
      v2 = 1;
    }

    else
    {
      v2 = sub_22F0D188C();
    }

    goto LABEL_8;
  }

  v2 = 1;
  return v2 & 1;
}

uint64_t MessageDetails.isExpired.getter()
{
  v0 = sub_22F0D05BC();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22F0D05AC();
  v5 = *(type metadata accessor for MessageDetails() + 32);
  v6 = sub_22F0D052C();
  (*(v1 + 8))(v4, v0);
  return v6 & 1;
}

uint64_t MessageDetails.TTL.getter@<X0>(uint64_t a1@<X8>)
{
  if (*(v1 + 16) > 1u)
  {
    if (*(v1 + 16) == 2)
    {
      if (qword_280CBE748 != -1)
      {
        swift_once();
      }

      v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAA1170, &unk_22F0D5A60);
      v4 = v3;
      v5 = qword_280CBE750;
      goto LABEL_10;
    }
  }

  else if (*(v1 + 16))
  {
    if (qword_280CBE790 != -1)
    {
      swift_once();
    }

    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAA1170, &unk_22F0D5A60);
    v4 = v3;
    v5 = qword_280CBE798;
LABEL_10:
    v6 = __swift_project_value_buffer(v3, v5);
    v13 = *(v4 - 8);
    (*(v13 + 16))(a1, v6, v4);
    v7 = *(v13 + 56);
    v8 = a1;
    v9 = 0;
    v10 = v4;
    goto LABEL_12;
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAA1170, &unk_22F0D5A60);
  v7 = *(*(v11 - 8) + 56);
  v10 = v11;
  v8 = a1;
  v9 = 1;
LABEL_12:

  return v7(v8, v9, 1, v10);
}

uint64_t MessageDetails.updateFromDetails(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1448, &unk_22F0D6640);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v33 - v8;
  v10 = type metadata accessor for ResolvedFamily();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = (&v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_22F011C4C(v3, a2);
  v15 = type metadata accessor for MessageDetails();
  v16 = v15[12];
  sub_22F03DBDC(a1 + v16, a2 + v16);
  sub_22F02D28C(a1 + v16, v9);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_22F03DC4C(v9);
  }

  else
  {
    sub_22F03DCB4(v9, v14);
    v17 = *v14;
    v18 = FAFamilyMember.displayNameWithFallback.getter();
    v20 = v19;
    sub_22F01DF14(v14, type metadata accessor for ResolvedFamily);
    v21 = *(a2 + 48);

    *(a2 + 40) = v18;
    *(a2 + 48) = v20;
  }

  v22 = v15[10];
  v23 = *(a1 + v22);
  v24 = *(a1 + v22 + 8);
  v25 = a2 + v22;
  *v25 = v23;
  *(v25 + 8) = v24;
  *(a2 + v15[11]) = *(a1 + v15[11]);
  v26 = v15[17];
  v27 = a1 + v26;
  v29 = *(a1 + v26);
  v28 = *(v27 + 8);
  v30 = (a2 + v26);
  v31 = *(a2 + v26 + 8);
  sub_22F0CFF1C();

  *v30 = v29;
  v30[1] = v28;
  return result;
}

uint64_t sub_22F03C308(uint64_t result, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  v3 = result & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v4 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v4 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v4)
  {

    return 0;
  }

  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v27[0] = result;
      v27[1] = a2 & 0xFFFFFFFFFFFFFFLL;
      if (result == 43)
      {
        if (v2)
        {
          v3 = v2 - 1;
          if (v2 != 1)
          {
            v6 = 0;
            v16 = v27 + 1;
            while (1)
            {
              v17 = *v16 - 48;
              if (v17 > 9)
              {
                break;
              }

              v18 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                break;
              }

              v6 = v18 + v17;
              if (__OFADD__(v18, v17))
              {
                break;
              }

              ++v16;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_61;
        }

LABEL_72:
        __break(1u);
        return result;
      }

      if (result != 45)
      {
        if (v2)
        {
          v6 = 0;
          v21 = v27;
          while (1)
          {
            v22 = *v21 - 48;
            if (v22 > 9)
            {
              break;
            }

            v23 = 10 * v6;
            if ((v6 * 10) >> 64 != (10 * v6) >> 63)
            {
              break;
            }

            v6 = v23 + v22;
            if (__OFADD__(v23, v22))
            {
              break;
            }

            ++v21;
            if (!--v2)
            {
              goto LABEL_60;
            }
          }
        }

        goto LABEL_61;
      }

      if (v2)
      {
        v3 = v2 - 1;
        if (v2 != 1)
        {
          v6 = 0;
          v10 = v27 + 1;
          while (1)
          {
            v11 = *v10 - 48;
            if (v11 > 9)
            {
              break;
            }

            v12 = 10 * v6;
            if ((v6 * 10) >> 64 != (10 * v6) >> 63)
            {
              break;
            }

            v6 = v12 - v11;
            if (__OFSUB__(v12, v11))
            {
              break;
            }

            ++v10;
            if (!--v3)
            {
              goto LABEL_62;
            }
          }
        }

        goto LABEL_61;
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
        result = sub_22F0D15DC();
        v3 = v26;
      }

      v5 = *result;
      if (v5 == 43)
      {
        if (v3 >= 1)
        {
          if (--v3)
          {
            v6 = 0;
            if (result)
            {
              v13 = (result + 1);
              while (1)
              {
                v14 = *v13 - 48;
                if (v14 > 9)
                {
                  goto LABEL_61;
                }

                v15 = 10 * v6;
                if ((v6 * 10) >> 64 != (10 * v6) >> 63)
                {
                  goto LABEL_61;
                }

                v6 = v15 + v14;
                if (__OFADD__(v15, v14))
                {
                  goto LABEL_61;
                }

                ++v13;
                if (!--v3)
                {
                  goto LABEL_62;
                }
              }
            }

            goto LABEL_60;
          }

          goto LABEL_61;
        }

        goto LABEL_71;
      }

      if (v5 != 45)
      {
        if (v3)
        {
          v6 = 0;
          if (result)
          {
            while (1)
            {
              v19 = *result - 48;
              if (v19 > 9)
              {
                goto LABEL_61;
              }

              v20 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                goto LABEL_61;
              }

              v6 = v20 + v19;
              if (__OFADD__(v20, v19))
              {
                goto LABEL_61;
              }

              ++result;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_60;
        }

LABEL_61:
        v6 = 0;
        LOBYTE(v3) = 1;
        goto LABEL_62;
      }

      if (v3 >= 1)
      {
        if (--v3)
        {
          v6 = 0;
          if (result)
          {
            v7 = (result + 1);
            while (1)
            {
              v8 = *v7 - 48;
              if (v8 > 9)
              {
                goto LABEL_61;
              }

              v9 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                goto LABEL_61;
              }

              v6 = v9 - v8;
              if (__OFSUB__(v9, v8))
              {
                goto LABEL_61;
              }

              ++v7;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

LABEL_60:
          LOBYTE(v3) = 0;
LABEL_62:
          v28 = v3;
          v24 = v3;
          goto LABEL_63;
        }

        goto LABEL_61;
      }

      __break(1u);
    }

    __break(1u);
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  v6 = sub_22F0BE920(result, a2, 10);
  v24 = v25;
LABEL_63:

  if (v24)
  {
    return 0;
  }

  else
  {
    return v6;
  }
}

char *sub_22F03C658(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA16D8, &qword_22F0DBF50);
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
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

char *sub_22F03C784(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA0DD0, &qword_22F0D4FA0);
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

char *sub_22F03C890(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA0E28, &qword_22F0D4FF8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_22F03C9B0(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = a4[3];
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = a4[2];
  if (v9 <= v10)
  {
    v11 = a4[2];
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 - 17;
    }

    v12[2] = v10;
    v12[3] = 2 * (v14 >> 4);
  }

  else
  {
    v12 = MEMORY[0x277D84F90];
  }

  if (v7)
  {
    if (v12 != a4 || v12 + 4 >= &a4[2 * v10 + 4])
    {
      memmove(v12 + 4, a4 + 4, 16 * v10);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA13A0, &qword_22F0D6218);
    swift_arrayInitWithCopy();
  }

  return v12;
}

void *sub_22F03CB24(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v16 = swift_allocObject();
    v17 = _swift_stdlib_malloc_size(v16);
    v16[2] = v14;
    v16[3] = 2 * ((v17 - 32) / 40);
  }

  else
  {
    v16 = MEMORY[0x277D84F90];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[5 * v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 40 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

void *sub_22F03CC6C(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1728, &qword_22F0D7738);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1730, &qword_22F0D7740);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_22F03CDA0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAA0D90, &qword_22F0D4F78);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_22F03CEB0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1720, &qword_22F0D7730);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 80);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[80 * v8])
    {
      memmove(v12, v13, 80 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_22F03CFCC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1718, &qword_22F0D7728);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_22F03D0D8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA0D68, &qword_22F0D4F50);
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

char *sub_22F03D20C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA0D60, &qword_22F0D4F48);
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

char *sub_22F03D340(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA16F0, &qword_22F0D7708);
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

size_t sub_22F03D494(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (!v15)
  {
    v19 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a7, a8) - 8);
  v17 = *(v16 + 72);
  v18 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v19 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v19);
  if (!v17)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v18 == 0x8000000000000000 && v17 == -1)
  {
    goto LABEL_29;
  }

  v19[2] = v14;
  v19[3] = 2 * ((result - v18) / v17);
LABEL_19:
  v21 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a7, a8) - 8);
  if (v11)
  {
    if (v19 < a4 || (v22 = (*(v21 + 80) + 32) & ~*(v21 + 80), v19 + v22 >= a4 + v22 + *(v21 + 72) * v14))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v19 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v19;
}

char *sub_22F03D6A4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA0CB0, &qword_22F0D4F30);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_22F03D7EC(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
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

BOOL sub_22F03D9C8(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      if (a1 > 0x20u || ((0x100003E01uLL >> a1) & 1) == 0)
      {
        goto LABEL_10;
      }

      return 0;
    }

    if ((a1 & 0x1000000000000000) != 0)
    {
      v3 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      if (v3 >= 0x21 || ((0x100003E01uLL >> v3) & 1) == 0)
      {
LABEL_10:
        v5 = _swift_stdlib_strtod_clocale();
        return v5 && *v5 == 0;
      }

      return 0;
    }
  }

  sub_22F0D151C();
  if (!v2)
  {
    return v7;
  }

  return v4;
}

uint64_t sub_22F03DAC0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1448, &unk_22F0D6640);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_22F03DB30()
{
  result = qword_280CBD1B0;
  if (!qword_280CBD1B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CBD1B0);
  }

  return result;
}

unint64_t sub_22F03DB84()
{
  result = qword_27DAA1670;
  if (!qword_27DAA1670)
  {
    sub_22F0D05BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAA1670);
  }

  return result;
}

uint64_t sub_22F03DBDC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1448, &unk_22F0D6640);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_22F03DC4C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1448, &unk_22F0D6640);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22F03DCB4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ResolvedFamily();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_22F03DD1C()
{
  result = qword_27DAA1688;
  if (!qword_27DAA1688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAA1688);
  }

  return result;
}

unint64_t sub_22F03DD74()
{
  result = qword_27DAA1690;
  if (!qword_27DAA1690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAA1690);
  }

  return result;
}

void sub_22F03DDF0()
{
  sub_22F03DFB0(319, &qword_27DAA16A8);
  if (v0 <= 0x3F)
  {
    sub_22F0D05BC();
    if (v1 <= 0x3F)
    {
      sub_22F03DFB0(319, &qword_27DAA16B0);
      if (v2 <= 0x3F)
      {
        sub_22F03DF58();
        if (v3 <= 0x3F)
        {
          sub_22F03DFB0(319, &qword_280CBD180);
          if (v4 <= 0x3F)
          {
            sub_22F03DFB0(319, &qword_27DAA16C0);
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_22F03DF58()
{
  if (!qword_27DAA16B8)
  {
    type metadata accessor for ResolvedFamily();
    v0 = sub_22F0D132C();
    if (!v1)
    {
      atomic_store(v0, &qword_27DAA16B8);
    }
  }
}

void sub_22F03DFB0(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_22F0D132C();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

_BYTE *sub_22F03E01C@<X0>(_BYTE *result@<X0>, BOOL *a2@<X8>)
{
  v3 = *result;
  v4 = v3 > 0x20;
  v5 = (1 << v3) & 0x100003E01;
  if (v4 || v5 == 0)
  {
    v8 = *(v2 + 16);
    result = _swift_stdlib_strtod_clocale();
    if (result)
    {
      v9 = *result == 0;
    }

    else
    {
      v9 = 0;
    }

    *a2 = v9;
  }

  else
  {
    *a2 = 0;
  }

  return result;
}

uint64_t dispatch thunk of ItemIndexer.startBatchMode(forBundle:protectionClass:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = *(a6 + 8);
  v17 = (v13 + *v13);
  v14 = v13[1];
  v15 = swift_task_alloc();
  *(v6 + 16) = v15;
  *v15 = v6;
  v15[1] = sub_22F00CD54;

  return v17(a1, a2, a3, a4, a5, a6);
}

uint64_t dispatch thunk of ItemIndexer.endBatchMode(forBundle:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 16);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_22F00CD54;

  return v13(a1, a2, a3, a4);
}

uint64_t dispatch thunk of ItemFetcher.fetchItem(itemID:indexBundleId:attributes:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = *(a7 + 8);
  v19 = (v15 + *v15);
  v16 = v15[1];
  v17 = swift_task_alloc();
  *(v7 + 16) = v17;
  *v17 = v7;
  v17[1] = sub_22F01F1CC;

  return v19(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t LinearScale.init(from:to:validRange:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v11 = *(*(a4 - 8) + 32);
  v11(a6, a1, a4);
  v12 = type metadata accessor for LinearScale();
  v11(a6 + *(v12 + 36), a2, a4);
  v13 = *(v12 + 40);
  v14 = *(*(*(a5 + 16) + 24) + 8);
  sub_22F0D0C1C();
  v15 = sub_22F0D132C();
  v16 = *(*(v15 - 8) + 32);

  return v16(a6 + v13, a3, v15);
}

double LinearScale.ratio(for:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = *(a2 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](a1);
  v10 = v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = v19 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = *(*(*(*(*(v14 + 24) + 16) + 16) + 8) + 8);
  sub_22F0D16CC();
  v16 = v3 + *(a2 + 36);
  sub_22F0D16CC();
  sub_22F0D0B6C();
  v17 = *(v6 + 8);
  v17(v10, v5);
  v17(v13, v5);
  sub_22F03E770();
  sub_22F0D0ACC();
  return *&v19[1];
}

unint64_t sub_22F03E770()
{
  result = qword_27DAA1758;
  if (!qword_27DAA1758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAA1758);
  }

  return result;
}

uint64_t LinearScale.value(forRatio:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v51 = a2;
  v4 = *(a1 + 16);
  v50 = *(a1 + 24);
  v44 = a1;
  v6 = *(v50 + 2);
  v43 = *(*(v6 + 24) + 8);
  v46 = sub_22F0D0C1C();
  v49 = sub_22F0D132C();
  v45 = *(v49 - 8);
  v7 = *(v45 + 64);
  v8 = MEMORY[0x28223BE20](v49);
  v47 = &v40 - v9;
  v48 = *(v46 - 8);
  v10 = *(v48 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v42 = &v40 - v12;
  v13 = *(v4 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v11);
  v17 = &v40 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v40 - v19;
  v21 = MEMORY[0x28223BE20](v18);
  v23 = &v40 - v22;
  MEMORY[0x28223BE20](v21);
  v25 = &v40 - v24;
  v26 = *(a1 + 36);
  v27 = *(*(*(v6 + 16) + 8) + 8);
  sub_22F0D16CC();
  sub_22F0D0ADC();
  sub_22F0D117C();
  v41 = v13;
  v28 = *(v13 + 8);
  v29 = v17;
  v30 = v45;
  v28(v29, v4);
  v31 = v20;
  v32 = v49;
  v28(v31, v4);
  v50 = v25;
  v33 = v46;
  sub_22F0D16BC();
  v34 = v47;
  v28(v23, v4);
  v35 = v48;
  (*(v30 + 16))(v34, v3 + *(v44 + 40), v32);
  if ((*(v35 + 48))(v34, 1, v33) == 1)
  {
    (*(v30 + 8))(v34, v32);
    return (*(v41 + 32))(v51, v50, v4);
  }

  else
  {
    v37 = v42;
    (*(v35 + 32))(v42, v34, v33);
    v38 = v50;
    sub_22F0D18DC();
    v39 = &v37[*(v33 + 36)];
    sub_22F0D18EC();
    v28(v23, v4);
    (*(v35 + 8))(v37, v33);
    return (v28)(v38, v4);
  }
}

uint64_t LinearScale.convert<A>(_:to:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  LinearScale.ratio(for:)(a1, a2);
  v4 = type metadata accessor for LinearScale();
  return LinearScale.value(forRatio:)(v4, a3);
}

uint64_t LinearScale.reversed()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a2;
  v4 = *(a1 + 16);
  v22 = *(a1 + 24);
  v5 = *(*(*(v22 + 16) + 24) + 8);
  sub_22F0D0C1C();
  v6 = sub_22F0D132C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v21 - v10;
  v12 = *(v4 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v9);
  v16 = &v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v21 - v17;
  v19 = *(v12 + 16);
  v19(&v21 - v17, v2 + *(a1 + 36), v4);
  v19(v16, v2, v4);
  (*(v7 + 16))(v11, v2 + *(a1 + 40), v6);
  return LinearScale.init(from:to:validRange:)(v18, v16, v11, v4, v22, v21);
}

uint64_t sub_22F03EE58(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v4 <= 0x3F)
  {
    v5 = *(*(*(*(a1 + 24) + 16) + 24) + 8);
    sub_22F0D0C1C();
    result = sub_22F0D132C();
    if (v6 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_22F03EF00(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  v7 = *(v4 + 80);
  v8 = (v6 + v7) & ~v7;
  v9 = v8 + v6;
  if (v5)
  {
    v10 = v8 + v6;
  }

  else
  {
    v10 = v9 + 1;
  }

  if (!a2)
  {
    return 0;
  }

  v11 = a2 - v5;
  if (a2 <= v5)
  {
    return (*(v4 + 48))();
  }

  v12 = v10 + ((v9 + v7) & ~v7);
  v13 = 8 * v12;
  if (v12 <= 3)
  {
    v15 = ((v11 + ~(-1 << v13)) >> v13) + 1;
    if (HIWORD(v15))
    {
      v14 = *(a1 + v12);
      if (!v14)
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v15 > 0xFF)
    {
      v14 = *(a1 + v12);
      if (!*(a1 + v12))
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v15 < 2)
    {
LABEL_25:
      if (v5)
      {
        return (*(v4 + 48))();
      }

      return 0;
    }
  }

  v14 = *(a1 + v12);
  if (!*(a1 + v12))
  {
    goto LABEL_25;
  }

LABEL_14:
  v16 = (v14 - 1) << v13;
  if (v12 > 3)
  {
    v16 = 0;
  }

  if (v12)
  {
    if (v12 > 3)
    {
      LODWORD(v12) = 4;
    }

    if (v12 > 2)
    {
      if (v12 == 3)
      {
        LODWORD(v12) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v12) = *a1;
      }
    }

    else if (v12 == 1)
    {
      LODWORD(v12) = *a1;
    }

    else
    {
      LODWORD(v12) = *a1;
    }
  }

  return v5 + (v12 | v16) + 1;
}

char *sub_22F03F064(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 80);
  v8 = ((*(v5 + 64) + v7) & ~v7) + *(v5 + 64);
  v9 = (v8 + v7) & ~v7;
  if (!v6)
  {
    ++v8;
  }

  v10 = v8 + v9;
  v11 = a3 >= v6;
  v12 = a3 - v6;
  if (v12 != 0 && v11)
  {
    if (v10 <= 3)
    {
      v17 = ((v12 + ~(-1 << (8 * v10))) >> (8 * v10)) + 1;
      if (HIWORD(v17))
      {
        v13 = 4;
      }

      else
      {
        if (v17 < 0x100)
        {
          v18 = 1;
        }

        else
        {
          v18 = 2;
        }

        if (v17 >= 2)
        {
          v13 = v18;
        }

        else
        {
          v13 = 0;
        }
      }
    }

    else
    {
      v13 = 1;
    }
  }

  else
  {
    v13 = 0;
  }

  if (v6 < a2)
  {
    v14 = ~v6 + a2;
    if (v10 < 4)
    {
      v16 = (v14 >> (8 * v10)) + 1;
      if (v10)
      {
        v19 = v14 & ~(-1 << (8 * v10));
        v20 = result;
        bzero(result, v10);
        result = v20;
        if (v10 != 3)
        {
          if (v10 == 2)
          {
            *v20 = v19;
            if (v13 > 1)
            {
LABEL_41:
              if (v13 == 2)
              {
                *&result[v10] = v16;
              }

              else
              {
                *&result[v10] = v16;
              }

              return result;
            }
          }

          else
          {
            *v20 = v14;
            if (v13 > 1)
            {
              goto LABEL_41;
            }
          }

          goto LABEL_38;
        }

        *v20 = v19;
        v20[2] = BYTE2(v19);
      }

      if (v13 > 1)
      {
        goto LABEL_41;
      }
    }

    else
    {
      v15 = result;
      bzero(result, v10);
      result = v15;
      *v15 = v14;
      v16 = 1;
      if (v13 > 1)
      {
        goto LABEL_41;
      }
    }

LABEL_38:
    if (v13)
    {
      result[v10] = v16;
    }

    return result;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *&result[v10] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_30;
    }

    *&result[v10] = 0;
  }

  else if (v13)
  {
    result[v10] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_30;
  }

  if (!a2)
  {
    return result;
  }

LABEL_30:
  v21 = *(v5 + 56);

  return v21();
}

uint64_t sub_22F03F290(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v4 + 216) = a4;
  *(v4 + 56) = a2;
  *(v4 + 64) = a3;
  *(v4 + 48) = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1760, &unk_22F0D77D8);
  *(v4 + 72) = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  *(v4 + 80) = swift_task_alloc();
  *(v4 + 88) = swift_task_alloc();
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1448, &unk_22F0D6640) - 8) + 64) + 15;
  *(v4 + 96) = swift_task_alloc();
  *(v4 + 104) = swift_task_alloc();
  *(v4 + 112) = swift_task_alloc();
  v8 = type metadata accessor for ResolvedFamily();
  *(v4 + 120) = v8;
  v9 = *(v8 - 8);
  *(v4 + 128) = v9;
  v10 = *(v9 + 64) + 15;
  *(v4 + 136) = swift_task_alloc();
  *(v4 + 144) = swift_task_alloc();
  v11 = type metadata accessor for MessageDetails();
  *(v4 + 152) = v11;
  v12 = *(*(v11 - 8) + 64) + 15;
  *(v4 + 160) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22F03F42C, 0, 0);
}

uint64_t sub_22F03F42C()
{
  v1 = *(v0 + 152);
  v2 = *(v0 + 160);
  sub_22F040184(*(v0 + 64), v2, type metadata accessor for MessageDetails);
  v3 = v2 + *(v1 + 36);
  v4 = *v3;
  *(v0 + 168) = *v3;
  v5 = *(v0 + 160);
  if (*(v3 + 8))
  {
    v7 = *(v0 + 136);
    v6 = *(v0 + 144);
    v9 = *(v0 + 104);
    v8 = *(v0 + 112);
    v11 = *(v0 + 88);
    v10 = *(v0 + 96);
    v24 = *(v0 + 80);
    _s6People0A6ErrorsO11createError_4codeSo7NSErrorCSS_SitFZ_0(0xD000000000000015, 0x800000022F0DE1A0, 500);
    swift_willThrow();
    sub_22F01DF14(v5, type metadata accessor for MessageDetails);

    v12 = *(v0 + 8);

    __asm { BRAA            X1, X16 }
  }

  v13 = *(v0 + 216);
  v14 = v5 + *(*(v0 + 152) + 40);
  v15 = *v14;
  *(v0 + 176) = *v14;
  v16 = *(v14 + 8);
  *(v0 + 217) = v16;
  if (v13 == 1)
  {
    if (qword_27DAA0688 != -1)
    {
      swift_once();
    }

    *(v0 + 184) = qword_27DAA2360;

    return MEMORY[0x2822009F8](sub_22F03F70C);
  }

  else
  {
    v17 = *(v0 + 56);
    v18 = swift_task_alloc();
    *(v0 + 192) = v18;
    *(v18 + 16) = v4;
    *(v18 + 24) = v15;
    *(v18 + 32) = v16;
    *(v18 + 40) = v17;
    v19 = *(MEMORY[0x277D859E0] + 4);
    v20 = swift_task_alloc();
    *(v0 + 200) = v20;
    *v20 = v0;
    v20[1] = sub_22F03FA70;
    v21 = *(v0 + 88);
    v22 = *(v0 + 72);

    return MEMORY[0x2822007B8](v21, 0, 0, 0xD000000000000043, 0x800000022F0DE1C0, sub_22F040104, v18, v22);
  }
}

uint64_t sub_22F03F70C()
{
  v1 = v0[23];
  sub_22F0B301C(v0[21], v0[13]);

  return MEMORY[0x2822009F8](sub_22F03F77C, 0, 0);
}

uint64_t sub_22F03F77C()
{
  v1 = *(v0 + 104);
  if ((*(*(v0 + 128) + 48))(v1, 1, *(v0 + 120)) == 1)
  {
    sub_22F003A4C(v1, &qword_27DAA1448, &unk_22F0D6640);
    v2 = *(v0 + 217);
    v4 = *(v0 + 168);
    v3 = *(v0 + 176);
    v5 = *(v0 + 56);
    v6 = swift_task_alloc();
    *(v0 + 192) = v6;
    *(v6 + 16) = v4;
    *(v6 + 24) = v3;
    *(v6 + 32) = v2;
    *(v6 + 40) = v5;
    v7 = *(MEMORY[0x277D859E0] + 4);
    v8 = swift_task_alloc();
    *(v0 + 200) = v8;
    *v8 = v0;
    v8[1] = sub_22F03FA70;
    v9 = *(v0 + 88);
    v10 = *(v0 + 72);

    return MEMORY[0x2822007B8](v9, 0, 0, 0xD000000000000043, 0x800000022F0DE1C0, sub_22F040104, v6, v10);
  }

  else
  {
    sub_22F03DCB4(v1, *(v0 + 112));
    v11 = *(v0 + 152);
    v12 = *(v0 + 160);
    v13 = *(v0 + 144);
    v14 = *(v0 + 120);
    v15 = *(v0 + 112);
    v26 = *(v0 + 96);
    v27 = *(v0 + 88);
    v28 = *(v0 + 80);
    v16 = *(v0 + 48);
    v17 = *(*(v0 + 128) + 56);
    v17(v15, 0, 1, v14);
    sub_22F03DCB4(v15, v13);
    v18 = *(v11 + 48);
    sub_22F003A4C(v12 + v18, &qword_27DAA1448, &unk_22F0D6640);
    sub_22F040184(v13, v12 + v18, type metadata accessor for ResolvedFamily);
    v17(v12 + v18, 0, 1, v14);
    v19 = *v13;
    v20 = FAFamilyMember.displayNameWithFallback.getter();
    v22 = v21;
    sub_22F01DF14(v13, type metadata accessor for ResolvedFamily);
    v23 = *(v12 + 48);

    *(v12 + 40) = v20;
    *(v12 + 48) = v22;
    sub_22F040184(v12, v16, type metadata accessor for MessageDetails);
    sub_22F01DF14(v12, type metadata accessor for MessageDetails);

    v24 = *(v0 + 8);

    return v24();
  }
}

uint64_t sub_22F03FA70()
{
  v1 = *(*v0 + 200);
  v2 = *(*v0 + 192);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_22F03FB88, 0, 0);
}

uint64_t sub_22F03FB88()
{
  v1 = v0[9];
  sub_22F040114(v0[11], v0[10]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v2 = v0[15];
    v3 = v0[16];
    v4 = v0[14];
    v5 = v0[10];
    v6 = v0[11];
    v7 = *v5;
    v0[5] = *v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA0870, &qword_22F0D2CB0);
    swift_willThrowTypedImpl();
    sub_22F003A4C(v6, &qword_27DAA1760, &unk_22F0D77D8);

    (*(v3 + 56))(v4, 1, 1, v2);
    sub_22F003A4C(v4, &qword_27DAA1448, &unk_22F0D6640);
    v8 = v0[20];
    v10 = v0[17];
    v9 = v0[18];
    v12 = v0[13];
    v11 = v0[14];
    v14 = v0[11];
    v13 = v0[12];
    v17 = v0[10];
    _s6People0A6ErrorsO11createError_4codeSo7NSErrorCSS_SitFZ_0(0xD000000000000015, 0x800000022F0DE1A0, 500);
    swift_willThrow();
    sub_22F01DF14(v8, type metadata accessor for MessageDetails);

    v15 = v0[1];

    __asm { BRAA            X1, X16 }
  }

  sub_22F03DCB4(v0[10], v0[17]);
  if (qword_27DAA0688 != -1)
  {
    swift_once();
  }

  v0[26] = qword_27DAA2360;

  return MEMORY[0x2822009F8](sub_22F03FDE8);
}

uint64_t sub_22F03FDE8()
{
  v1 = [**(v0 + 136) dsid];
  if (v1)
  {
    v2 = *(v0 + 208);
    v4 = *(v0 + 128);
    v3 = *(v0 + 136);
    v5 = *(v0 + 120);
    v6 = *(v0 + 96);
    v7 = v1;
    v8 = [v1 integerValue];
    sub_22F040184(v3, v6, type metadata accessor for ResolvedFamily);
    (*(v4 + 56))(v6, 0, 1, v5);
    swift_beginAccess();
    sub_22F046214(v6, v8);
    swift_endAccess();
  }

  return MEMORY[0x2822009F8](sub_22F03FF14, 0, 0);
}

uint64_t sub_22F03FF14()
{
  v1 = v0[17];
  v2 = v0[14];
  sub_22F003A4C(v0[11], &qword_27DAA1760, &unk_22F0D77D8);
  sub_22F03DCB4(v1, v2);
  v3 = v0[19];
  v4 = v0[20];
  v5 = v0[18];
  v6 = v0[15];
  v7 = v0[14];
  v18 = v0[12];
  v19 = v0[11];
  v20 = v0[10];
  v8 = v0[6];
  v9 = *(v0[16] + 56);
  v9(v7, 0, 1, v6);
  sub_22F03DCB4(v7, v5);
  v10 = *(v3 + 48);
  sub_22F003A4C(v4 + v10, &qword_27DAA1448, &unk_22F0D6640);
  sub_22F040184(v5, v4 + v10, type metadata accessor for ResolvedFamily);
  v9(v4 + v10, 0, 1, v6);
  v11 = *v5;
  v12 = FAFamilyMember.displayNameWithFallback.getter();
  v14 = v13;
  sub_22F01DF14(v5, type metadata accessor for ResolvedFamily);
  v15 = *(v4 + 48);

  *(v4 + 40) = v12;
  *(v4 + 48) = v14;
  sub_22F040184(v4, v8, type metadata accessor for MessageDetails);
  sub_22F01DF14(v4, type metadata accessor for MessageDetails);

  v16 = v0[1];

  return v16();
}

uint64_t sub_22F040114(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1760, &unk_22F0D77D8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22F040184(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_22F0401EC()
{
  v0 = sub_22F0D005C();
  __swift_allocate_value_buffer(v0, qword_27DAA1768);
  __swift_project_value_buffer(v0, qword_27DAA1768);
  return sub_22F0D003C();
}

uint64_t static QuickActionAppHandle.typeDisplayRepresentation.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27DAA04F8 != -1)
  {
    swift_once();
  }

  v2 = sub_22F0D005C();
  v3 = __swift_project_value_buffer(v2, qword_27DAA1768);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t static QuickActionAppHandle.typeDisplayRepresentation.setter(uint64_t a1)
{
  if (qword_27DAA04F8 != -1)
  {
    swift_once();
  }

  v2 = sub_22F0D005C();
  v3 = __swift_project_value_buffer(v2, qword_27DAA1768);
  swift_beginAccess();
  v4 = *(v2 - 8);
  (*(v4 + 24))(v3, a1, v2);
  swift_endAccess();
  return (*(v4 + 8))(a1, v2);
}

uint64_t (*static QuickActionAppHandle.typeDisplayRepresentation.modify())()
{
  if (qword_27DAA04F8 != -1)
  {
    swift_once();
  }

  v0 = sub_22F0D005C();
  __swift_project_value_buffer(v0, qword_27DAA1768);
  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_22F040498@<X0>(uint64_t a1@<X8>)
{
  if (qword_27DAA04F8 != -1)
  {
    swift_once();
  }

  v2 = sub_22F0D005C();
  v3 = __swift_project_value_buffer(v2, qword_27DAA1768);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t sub_22F040558(uint64_t a1)
{
  if (qword_27DAA04F8 != -1)
  {
    swift_once();
  }

  v2 = sub_22F0D005C();
  v3 = __swift_project_value_buffer(v2, qword_27DAA1768);
  swift_beginAccess();
  (*(*(v2 - 8) + 24))(v3, a1, v2);
  return swift_endAccess();
}

uint64_t QuickActionAppHandle.bundleID.getter()
{
  v1 = *v0;
  sub_22F0CFE0C();
  return v3;
}

uint64_t sub_22F040654(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[2];
  v5 = a2[4];
  v7 = *a1;
  v8 = a1[1];
  sub_22F0CFF1C();
  sub_22F0CFF1C();
  sub_22F0CFFAC();
  sub_22F0CFFAC();
  sub_22F0CFFAC();
  sub_22F0CFE1C();

  sub_22F0D00CC();
  sub_22F0D00CC();
  return sub_22F0D00CC();
}

uint64_t QuickActionAppHandle.handle.getter()
{
  v1 = *(v0 + 8);
  sub_22F0CFE0C();
  return v3;
}

uint64_t sub_22F040744(uint64_t *a1, uint64_t *a2)
{
  v3 = *a2;
  v2 = a2[1];
  v4 = a2[2];
  v5 = a2[4];
  v7 = *a1;
  v8 = a1[1];
  sub_22F0CFF1C();
  sub_22F0CFF1C();
  sub_22F0CFFAC();
  sub_22F0CFFAC();
  sub_22F0CFFAC();
  sub_22F0CFE1C();

  sub_22F0D00CC();
  sub_22F0D00CC();
  return sub_22F0D00CC();
}

uint64_t sub_22F040824(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA10F8, &qword_22F0D5320);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v16 - v9;
  sub_22F036154(a1, &v16 - v9);
  v11 = *a2;
  v12 = a2[1];
  v13 = a2[2];
  v14 = a2[4];
  sub_22F036154(v10, v8);
  sub_22F0CFF1C();
  sub_22F0CFFAC();
  sub_22F0CFFAC();
  sub_22F0CFFAC();
  sub_22F0CFE1C();
  sub_22F009070(v10);

  sub_22F0D00CC();
  sub_22F0D00CC();
  return sub_22F0D00CC();
}

void QuickActionAppHandle.displayRepresentation.getter(uint64_t a1@<X8>)
{
  v44 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1538, &unk_22F0D6FA0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v43 = v38 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1540, &qword_22F0DB420);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v42 = v38 - v7;
  v8 = sub_22F0D036C();
  v39 = *(v8 - 8);
  v40 = v8;
  v9 = *(v39 + 64);
  MEMORY[0x28223BE20](v8);
  v41 = v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_22F0D0C6C();
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  MEMORY[0x28223BE20](v13);
  v15 = *v1;
  v14 = v1[1];
  v16 = v1[2];
  v17 = v1[3];
  v18 = v1[4];
  sub_22F0CFE0C();
  v19 = v47;
  if (v47)
  {
    v38[1] = v17;
    v20 = v46;
    sub_22F0CFE0C();
    if (v47)
    {
      if (v18)
      {
        v38[0] = v46;
        v21 = objc_allocWithZone(MEMORY[0x277CC1E70]);
        sub_22F0CFF1C();
        v22 = sub_22F041518(v20, v19, 0);
        if (v22)
        {
          v33 = v22;
          sub_22F0D0C5C();
          sub_22F0D0C4C();
          sub_22F0D0C3C();

          sub_22F0D0C4C();
          sub_22F0D035C();
          sub_22F0D0C5C();
          sub_22F0D0C4C();
          v34 = [v33 localizedName];
          sub_22F0D0CAC();

          sub_22F0D0C3C();

          sub_22F0D0C4C();
          v35 = v42;
          sub_22F0D035C();
          (*(v39 + 56))(v35, 0, 1, v40);
          v36 = v43;
          sub_22F0CFF5C();
          v37 = sub_22F0CFF6C();
          (*(*(v37 - 8) + 56))(v36, 0, 1, v37);
          sub_22F0CFF7C();

          return;
        }
      }
    }
  }

  if (qword_280CBEC38 != -1)
  {
    swift_once();
  }

  v23 = sub_22F0D0A1C();
  __swift_project_value_buffer(v23, qword_280CBEC40);
  sub_22F0CFF1C();
  sub_22F0CFFAC();
  sub_22F0CFFAC();
  sub_22F0CFFAC();
  v24 = sub_22F0D09FC();
  v25 = sub_22F0D123C();

  sub_22F0D00CC();
  sub_22F0D00CC();
  sub_22F0D00CC();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v45 = v27;
    *v26 = 136315138;
    sub_22F0CFE0C();
    if (v47)
    {
      v28 = v46;
    }

    else
    {
      v28 = 0;
    }

    if (v47)
    {
      v29 = v47;
    }

    else
    {
      v29 = 0xE000000000000000;
    }

    v30 = sub_22F00A560(v28, v29, &v45);

    *(v26 + 4) = v30;
    _os_log_impl(&dword_22EFE1000, v24, v25, "Error finding LSApplicationRecord for bundleID: %s", v26, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v27);
    MEMORY[0x2318FE8B0](v27, -1, -1);
    MEMORY[0x2318FE8B0](v26, -1, -1);
  }

  sub_22F0CFE0C();
  sub_22F0CFE0C();
  sub_22F0D0C5C();
  sub_22F0D0C4C();
  sub_22F0D0C3C();

  sub_22F0D0C4C();
  sub_22F0D035C();
  sub_22F0D0C5C();
  sub_22F0D0C4C();
  sub_22F0D0C3C();

  sub_22F0D0C4C();
  v31 = v42;
  sub_22F0D035C();
  (*(v39 + 56))(v31, 0, 1, v40);
  v32 = sub_22F0CFF6C();
  (*(*(v32 - 8) + 56))(v43, 1, 1, v32);
  sub_22F0CFF7C();
}

uint64_t QuickActionAppHandle.init(_:)@<X0>(__int128 *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA10F8, &qword_22F0D5320);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = v19 - v9;
  v11 = sub_22F0D036C();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = a1[3];
  v23 = a1[2];
  *v24 = v13;
  *(&v24[1] + 2) = *(a1 + 58);
  v14 = a1[1];
  v21 = *a1;
  v22 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1780, &qword_22F0D77E8);
  sub_22F0D034C();
  *a2 = sub_22F0CFE4C();
  sub_22F0D034C();
  a2[1] = sub_22F0CFE4C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1788, &qword_22F0D77F0);
  sub_22F0D034C();
  a2[2] = sub_22F0CFE3C();
  v19[0] = *&v24[1];
  sub_22F0CFF1C();
  sub_22F0CFE1C();
  v19[0] = __PAIR128__(v24[0], *(&v23 + 1));
  sub_22F0CFF1C();
  sub_22F0CFE1C();
  v19[2] = v23;
  v20[0] = *v24;
  *(v20 + 10) = *(&v24[1] + 2);
  v19[0] = v21;
  v19[1] = v22;
  QuickAction.url.getter(v10);
  sub_22F036154(v10, v8);
  sub_22F0CFE1C();
  sub_22F009070(v10);
  if (v21 <= 1u)
  {
    v15 = 0xEA00000000006C6CLL;
    if (v21)
    {
      v17 = 0x2E6F65646976;
    }

    else
    {
      v17 = 0x2E656E6F6870;
    }

    v16 = v17 & 0xFFFFFFFFFFFFLL | 0x6966000000000000;
  }

  else if (v21 == 2)
  {
    v15 = 0xEC0000006C6C6966;
    v16 = 0x2E6567617373656DLL;
  }

  else if (v21 == 3)
  {
    v15 = 0xED00006C6C69662ELL;
    v16 = 0x65706F6C65766E65;
  }

  else
  {
    v15 = 0x800000022F0DDD40;
    v16 = 0xD000000000000012;
  }

  result = sub_22F0415F4(&v21);
  a2[3] = v16;
  a2[4] = v15;
  return result;
}

uint64_t QuickActionAppHandle.init()@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_22F0D036C();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1780, &qword_22F0D77E8);
  sub_22F0D034C();
  *a1 = sub_22F0CFE4C();
  sub_22F0D034C();
  a1[1] = sub_22F0CFE4C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1788, &qword_22F0D77F0);
  sub_22F0D034C();
  result = sub_22F0CFE3C();
  a1[3] = 0;
  a1[4] = 0;
  a1[2] = result;
  return result;
}

uint64_t sub_22F0413E4(uint64_t a1)
{
  v2 = sub_22F041B30();

  return MEMORY[0x28210B2E8](a1, v2);
}

uint64_t sub_22F041430()
{
  sub_22F041B30();

  return sub_22F0CFD4C();
}

uint64_t sub_22F04147C(uint64_t a1)
{
  v2 = sub_22F04164C();

  return MEMORY[0x28210B488](a1, v2);
}

uint64_t sub_22F0414CC(uint64_t a1)
{
  v2 = sub_22F0418FC();

  return MEMORY[0x28210C4B8](a1, v2);
}

id sub_22F041518(uint64_t a1, uint64_t a2, char a3)
{
  v11[1] = *MEMORY[0x277D85DE8];
  v5 = sub_22F0D0C7C();

  v11[0] = 0;
  v6 = [v3 initWithBundleIdentifier:v5 allowPlaceholder:a3 & 1 error:v11];

  if (v6)
  {
    v7 = v11[0];
  }

  else
  {
    v8 = v11[0];
    sub_22F0D033C();

    swift_willThrow();
  }

  v9 = *MEMORY[0x277D85DE8];
  return v6;
}

unint64_t sub_22F04164C()
{
  result = qword_280CBDE00;
  if (!qword_280CBDE00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CBDE00);
  }

  return result;
}

unint64_t sub_22F0416A4()
{
  result = qword_280CBDE08;
  if (!qword_280CBDE08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CBDE08);
  }

  return result;
}

unint64_t sub_22F0416FC()
{
  result = qword_280CBDDF0;
  if (!qword_280CBDDF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CBDDF0);
  }

  return result;
}

unint64_t sub_22F041754()
{
  result = qword_280CBDDC8;
  if (!qword_280CBDDC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CBDDC8);
  }

  return result;
}

unint64_t sub_22F0417FC()
{
  result = qword_280CBDDE8;
  if (!qword_280CBDDE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CBDDE8);
  }

  return result;
}

unint64_t sub_22F041850()
{
  result = qword_280CBDDE0;
  if (!qword_280CBDDE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CBDDE0);
  }

  return result;
}

unint64_t sub_22F0418A4()
{
  result = qword_280CBDDF8;
  if (!qword_280CBDDF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CBDDF8);
  }

  return result;
}

unint64_t sub_22F0418FC()
{
  result = qword_280CBDDD8;
  if (!qword_280CBDDD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CBDDD8);
  }

  return result;
}

unint64_t sub_22F041954()
{
  result = qword_27DAA1798;
  if (!qword_27DAA1798)
  {
    sub_22F0D05EC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAA1798);
  }

  return result;
}

uint64_t sub_22F0419F0(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_22F041A3C()
{
  result = qword_280CBDDD0;
  if (!qword_280CBDDD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CBDDD0);
  }

  return result;
}

uint64_t sub_22F041A90(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_22F041AD8(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

unint64_t sub_22F041B30()
{
  result = qword_280CBDE10;
  if (!qword_280CBDE10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CBDE10);
  }

  return result;
}

Swift::String_optional __swiftcall String.trimToNil()()
{
  v2 = v1;
  v3 = v0;
  v4 = sub_22F0D01DC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16[0] = v3;
  v16[1] = v2;
  sub_22F0D01CC();
  sub_22F00901C();
  v9 = sub_22F0D136C();
  v11 = v10;
  (*(v5 + 8))(v8, v4);
  v12 = HIBYTE(v11) & 0xF;
  if ((v11 & 0x2000000000000000) == 0)
  {
    v12 = v9 & 0xFFFFFFFFFFFFLL;
  }

  if (!v12)
  {

    v9 = 0;
    v11 = 0;
  }

  v13 = v9;
  v14 = v11;
  result.value._object = v14;
  result.value._countAndFlagsBits = v13;
  return result;
}

Swift::Bool __swiftcall String.isSuitableForVerticalLayout(maxCount:)(Swift::Int maxCount)
{
  v1 = sub_22F0D0C7C();
  IsSuitableForVerticalLayout = CTStringIsSuitableForVerticalLayout();

  return IsSuitableForVerticalLayout;
}

uint64_t String.localized.getter()
{
  type metadata accessor for DaemonConnection();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_22F0D031C();

  return v2;
}

uint64_t String.urlSafeString.getter(uint64_t a1, uint64_t a2)
{
  v4 = sub_22F0D01DC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15[2] = a1;
  v15[3] = a2;
  sub_22F00901C();
  v9 = sub_22F0D139C();
  if (v10)
  {
    v15[0] = v9;
    v15[1] = v10;
    sub_22F0D01BC();
    v11 = sub_22F0D138C();
    v13 = v12;
    (*(v5 + 8))(v8, v4);

    if (v13)
    {
      return v11;
    }
  }

  sub_22F0CFF1C();
  return a1;
}

Swift::String __swiftcall String.trim()()
{
  v2 = v1;
  v3 = v0;
  v4 = sub_22F0D01DC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15[0] = v3;
  v15[1] = v2;
  sub_22F0D01CC();
  sub_22F00901C();
  v9 = sub_22F0D136C();
  v11 = v10;
  (*(v5 + 8))(v8, v4);
  v12 = v9;
  v13 = v11;
  result._object = v13;
  result._countAndFlagsBits = v12;
  return result;
}

uint64_t String.splitWith(_:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v23[0] = a1;
  v23[1] = a2;
  v22[2] = v23;
  sub_22F0CFF1C();
  v7 = sub_22F042274(0x7FFFFFFFFFFFFFFFLL, 1, sub_22F04268C, v22, a3, a4, v6);
  v8 = *(v7 + 16);
  if (v8)
  {
    v23[0] = MEMORY[0x277D84F90];
    sub_22EFFC4E8(0, v8, 0);
    v9 = v23[0];
    v10 = (v7 + 56);
    do
    {
      v11 = *(v10 - 3);
      v12 = *(v10 - 2);
      v13 = *(v10 - 1);
      v14 = *v10;
      sub_22F0CFF1C();
      v15 = MEMORY[0x2318FD270](v11, v12, v13, v14);
      v17 = v16;

      v23[0] = v9;
      v19 = *(v9 + 16);
      v18 = *(v9 + 24);
      if (v19 >= v18 >> 1)
      {
        sub_22EFFC4E8((v18 > 1), v19 + 1, 1);
        v9 = v23[0];
      }

      *(v9 + 16) = v19 + 1;
      v20 = v9 + 16 * v19;
      *(v20 + 32) = v15;
      *(v20 + 40) = v17;
      v10 += 4;
      --v8;
    }

    while (v8);
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return v9;
}

uint64_t String.rebrand.getter(uint64_t a1, unint64_t a2)
{
  v9 = &type metadata for AppleAccountFeatures;
  v10 = sub_22F0426E4();
  v4 = sub_22F0D070C();
  __swift_destroy_boxed_opaque_existential_1Tm(&v7);
  if ((v4 & 1) != 0 && (v7 = a1, v8 = a2, sub_22F00901C(), (sub_22F0D13BC() & 1) == 0))
  {
    v7 = 0x444E41524245525FLL;
    v8 = 0xE800000000000000;
    sub_22F0CFF1C();
    v6 = sub_22F0D0E3C();
    sub_22F0D0D7C();
    return v6;
  }

  else
  {
    sub_22F0CFF1C();
  }

  return a1;
}

unint64_t sub_22F042274@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t (*a3)(void *)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, unint64_t a7@<X8>)
{
  v45 = a3;
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_43;
  }

  v11 = a5;
  v15 = HIBYTE(a6) & 0xF;
  if (!a1 || ((a6 & 0x2000000000000000) != 0 ? (v16 = HIBYTE(a6) & 0xF) : (v16 = a5 & 0xFFFFFFFFFFFFLL), !v16))
  {
    if ((a6 & 0x2000000000000000) == 0)
    {
      v15 = a5 & 0xFFFFFFFFFFFFLL;
    }

    if (!v15 && (a2 & 1) != 0)
    {

      return MEMORY[0x277D84F90];
    }

    v7 = sub_22F0D0E4C();
    v11 = v30;
    v12 = v31;
    v13 = v32;

    v14 = sub_22F03CFCC(0, 1, 1, MEMORY[0x277D84F90]);
    v9 = *(v14 + 16);
    a7 = *(v14 + 24);
LABEL_39:
    v10 = v9 + 1;
    if (v9 < a7 >> 1)
    {
LABEL_40:
      *(v14 + 16) = v10;
      v36 = (v14 + 32 * v9);
      v36[4] = v7;
      v36[5] = v11;
      v36[6] = v12;
      v36[7] = v13;
      return v14;
    }

LABEL_43:
    v14 = sub_22F03CFCC((a7 > 1), v10, 1, v14);
    goto LABEL_40;
  }

  v7 = a4;
  v17 = 4 * v16;
  v14 = MEMORY[0x277D84F90];
  v18 = 15;
  while (1)
  {
    v13 = v18 >> 14;
    if (v18 >> 14 == v17)
    {
      goto LABEL_33;
    }

    v41 = v14;
    v39 = a1;
    while (2)
    {
      v42 = v18;
      v14 = v18;
      while (1)
      {
        v19 = sub_22F0D0E2C();
        v12 = v20;
        v44[0] = v19;
        v44[1] = v20;
        v21 = v45(v44);
        if (v8)
        {

          return v14;
        }

        v22 = v21;

        if (v22)
        {
          break;
        }

        v14 = sub_22F0D0D6C();
        v13 = v14 >> 14;
        if (v14 >> 14 == v17)
        {
          v14 = v41;
          v18 = v42;
          goto LABEL_33;
        }
      }

      result = v42;
      if (v42 >> 14 == v13 && (a2 & 1) != 0)
      {
        v18 = sub_22F0D0D6C();
        v13 = v18 >> 14;
        if (v18 >> 14 != v17)
        {
          continue;
        }

        v14 = v41;
LABEL_33:
        if (v18 >> 14 == v17 && (a2 & 1) != 0)
        {

          return v14;
        }

        if (v17 < v18 >> 14)
        {
          __break(1u);
        }

        else
        {
          v7 = sub_22F0D0E4C();
          v11 = v33;
          v12 = v34;
          v13 = v35;

          if (swift_isUniquelyReferenced_nonNull_native())
          {
LABEL_38:
            v9 = *(v14 + 16);
            a7 = *(v14 + 24);
            goto LABEL_39;
          }
        }

        v14 = sub_22F03CFCC(0, *(v14 + 16) + 1, 1, v14);
        goto LABEL_38;
      }

      break;
    }

    if (v13 < v42 >> 14)
    {
      break;
    }

    v24 = sub_22F0D0E4C();
    v43 = v25;
    v37 = v27;
    v38 = v26;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v41 = sub_22F03CFCC(0, *(v41 + 2) + 1, 1, v41);
    }

    v13 = *(v41 + 2);
    v28 = *(v41 + 3);
    v12 = v13 + 1;
    if (v13 >= v28 >> 1)
    {
      v41 = sub_22F03CFCC((v28 > 1), v13 + 1, 1, v41);
    }

    *(v41 + 2) = v12;
    v29 = &v41[32 * v13];
    *(v29 + 4) = v24;
    *(v29 + 5) = v43;
    *(v29 + 6) = v38;
    *(v29 + 7) = v37;
    v14 = v41;
    v18 = sub_22F0D0D6C();
    a1 = v39;
    if (*(v41 + 2) == v39)
    {
      goto LABEL_33;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22F042634(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_22F0D188C() & 1;
  }
}

uint64_t sub_22F04268C(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_22F0D188C() & 1;
  }
}

unint64_t sub_22F0426E4()
{
  result = qword_27DAA17B0;
  if (!qword_27DAA17B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAA17B0);
  }

  return result;
}

uint64_t sub_22F042738(void *a1, uint64_t (*a2)(void *))
{
  if (qword_280CBDB90 != -1)
  {
    swift_once();
  }

  v4 = sub_22F0D0A1C();
  __swift_project_value_buffer(v4, qword_280CBDB98);
  Logger.ifError(_:message:)(a1);
  return a2(a1);
}

uint64_t sub_22F04280C(void *a1, void **a2, void *a3, void (*a4)(uint64_t), uint64_t a5)
{
  v88 = a4;
  v89 = a5;
  v80 = a3;
  v7 = sub_22F0D05BC();
  v90 = *(v7 - 8);
  v8 = *(v90 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v80 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a2;
  v87 = a2[1];
  v12 = a2[2];
  v13 = [a1 idsHandle];
  v14 = sub_22F0D0CAC();
  v81 = v15;
  v82 = v14;

  sub_22F0D05AC();
  v16 = [a1 locationChangeType];
  v17 = [a1 motionActivityState];
  v18 = [a1 latitude];
  v19 = [a1 longitude];
  MyItem = type metadata accessor for FindMyItem();
  v21 = *(MyItem + 48);
  v22 = *(MyItem + 52);
  v23 = swift_allocObject();
  v83 = v16;
  *(v23 + OBJC_IVAR____TtC6People10FindMyItem_type) = v16;
  v24 = (v23 + OBJC_IVAR____TtC6People10FindMyItem_contactPerson);
  v25 = v11;
  v26 = v87;
  *v24 = v11;
  v24[1] = v26;
  v24[2] = v12;
  *(v23 + OBJC_IVAR____TtC6People10FindMyItem_motionState) = v17;
  *(v23 + OBJC_IVAR____TtC6People10FindMyItem_latitude) = v18;
  *(v23 + OBJC_IVAR____TtC6People10FindMyItem_longitude) = v19;
  type metadata accessor for DaemonConnection();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v28 = objc_opt_self();
  v29 = v25;
  sub_22F0CFF1C();
  v84 = v18;
  v85 = v19;
  v30 = [v28 bundleForClass_];
  v31 = sub_22F0D031C();
  v33 = v32;

  v34 = v90;
  v35 = *(v90 + 16);
  v86 = v10;
  v35(v23 + OBJC_IVAR____TtC6People13IndexableItem_eventDate, v10, v7);
  v36 = *(v34 + 56);
  v87 = v7;
  v36(v23 + OBJC_IVAR____TtC6People13IndexableItem_expirationDate, 1, 1, v7);
  v37 = OBJC_IVAR____TtC6People13IndexableItem_keywordStrings;
  v38 = MEMORY[0x277D84F90];
  *(v23 + OBJC_IVAR____TtC6People13IndexableItem_keywordStrings) = MEMORY[0x277D84F90];
  v39 = (v23 + OBJC_IVAR____TtC6People13IndexableItem_title);
  *v39 = v31;
  v39[1] = v33;
  v40 = (v23 + OBJC_IVAR____TtC6People13IndexableItem_description);
  *v40 = 0;
  v40[1] = 0xE000000000000000;
  *(v23 + 16) = v25;
  v41 = (v23 + OBJC_IVAR____TtC6People13IndexableItem_indexableID);
  v42 = v81;
  *v41 = v82;
  v41[1] = v42;
  swift_beginAccess();
  *(v23 + v37) = v38;
  v43 = v29;
  sub_22F0CFFAC();
  v44 = sub_22F03C784(0, 1, 1, v38);
  *(v23 + v37) = v44;
  v46 = *(v44 + 2);
  v45 = *(v44 + 3);
  if (v46 >= v45 >> 1)
  {
    v44 = sub_22F03C784((v45 > 1), v46 + 1, 1, v44);
  }

  *(v44 + 2) = v46 + 1;
  v47 = &v44[16 * v46];
  *(v47 + 4) = 0x6E6F697461636F6CLL;
  *(v47 + 5) = 0xE800000000000000;
  *(v23 + v37) = v44;
  swift_endAccess();
  sub_22F0D00CC();
  if (v83 == 2)
  {
    swift_beginAccess();
    v48 = *(v23 + v37);
    sub_22F0CFFAC();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v23 + v37) = v48;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v48 = sub_22F03C784(0, *(v48 + 2) + 1, 1, v48);
      *(v23 + v37) = v48;
    }

    v52 = v89;
    v63 = *(v48 + 2);
    v62 = *(v48 + 3);
    if (v63 >= v62 >> 1)
    {
      v48 = sub_22F03C784((v62 > 1), v63 + 1, 1, v48);
    }

    *(v48 + 2) = v63 + 1;
    v64 = &v48[16 * v63];
    *(v64 + 4) = 0xD000000000000011;
    *(v64 + 5) = 0x800000022F0DE260;
LABEL_24:
    *(v23 + v37) = v48;
    swift_endAccess();

    (*(v90 + 8))(v86, v87);
    sub_22F0D00CC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAA18B0, &unk_22F0D7AC0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_22F0D6C00;
    *(inited + 32) = v23;
    swift_retain_n();
    v66 = sub_22F0220A0(inited);
    swift_setDeallocating();
    v67 = *(inited + 16);
    swift_arrayDestroy();
    if (v66 >> 62)
    {
      if (sub_22F0D143C() == 1)
      {
        goto LABEL_26;
      }
    }

    else if (*((v66 & 0xFFFFFFFFFFFFFF8) + 0x10) == 1)
    {
LABEL_26:
      if (*(v23 + OBJC_IVAR____TtC6People10FindMyItem_type) != 2)
      {
        sub_22F0D00CC();
        v76 = v80[3];
        v77 = v80[4];
        __swift_project_boxed_opaque_existential_1(v80, v76);
        v78 = swift_allocObject();
        *(v78 + 16) = v88;
        *(v78 + 24) = v52;
        v79 = *(v77 + 24);
        sub_22F0CFFAC();
        v79(v66, 0xD000000000000017, 0x800000022F0DCC10, sub_22F0431D0, v78, v76, v77);
        sub_22F0D00CC();
        sub_22F0D00CC();
      }

      v68 = v80[3];
      v69 = v80[4];
      __swift_project_boxed_opaque_existential_1(v80, v68);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA0DD0, &qword_22F0D4FA0);
      v70 = swift_allocObject();
      *(v70 + 16) = xmmword_22F0D2BF0;
      v72 = *(v23 + OBJC_IVAR____TtC6People13IndexableItem_indexableID);
      v71 = *(v23 + OBJC_IVAR____TtC6People13IndexableItem_indexableID + 8);
      sub_22F0CFF1C();
      sub_22F0D00CC();
      *(v70 + 32) = v72;
      *(v70 + 40) = v71;
      v73 = swift_allocObject();
      *(v73 + 16) = v88;
      *(v73 + 24) = v52;
      v74 = *(v69 + 32);
      sub_22F0CFFAC();
      v74(v70, 0xD000000000000017, 0x800000022F0DCC10, sub_22F0431EC, v73, v68, v69);

      sub_22F0D00CC();
      return sub_22F0D00CC();
    }

    sub_22F0D00CC();
    if (qword_27DAA05A0 != -1)
    {
      swift_once();
    }

    v88(qword_27DAACED0);
    return sub_22F0D00CC();
  }

  if (v83 == 1)
  {
    swift_beginAccess();
    v48 = *(v23 + v37);
    sub_22F0CFFAC();
    v55 = swift_isUniquelyReferenced_nonNull_native();
    *(v23 + v37) = v48;
    if ((v55 & 1) == 0)
    {
      v48 = sub_22F03C784(0, *(v48 + 2) + 1, 1, v48);
      *(v23 + v37) = v48;
    }

    v52 = v89;
    v57 = *(v48 + 2);
    v56 = *(v48 + 3);
    if (v57 >= v56 >> 1)
    {
      v48 = sub_22F03C784((v56 > 1), v57 + 1, 1, v48);
    }

    *(v48 + 2) = v57 + 1;
    v53 = &v48[16 * v57];
    v54 = 0xEE00646572616853;
    goto LABEL_16;
  }

  if (!v83)
  {
    swift_beginAccess();
    v48 = *(v23 + v37);
    sub_22F0CFFAC();
    v49 = swift_isUniquelyReferenced_nonNull_native();
    *(v23 + v37) = v48;
    if ((v49 & 1) == 0)
    {
      v48 = sub_22F03C784(0, *(v48 + 2) + 1, 1, v48);
      *(v23 + v37) = v48;
    }

    v51 = *(v48 + 2);
    v50 = *(v48 + 3);
    if (v51 >= v50 >> 1)
    {
      v48 = sub_22F03C784((v50 > 1), v51 + 1, 1, v48);
    }

    v52 = v89;
    *(v48 + 2) = v51 + 1;
    v53 = &v48[16 * v51];
    v54 = 0xEF64657461647055;
LABEL_16:
    *(v53 + 4) = 0x6E6F697461636F6CLL;
    *(v53 + 5) = v54;
    *(v23 + v37) = v48;
    v59 = *(v48 + 2);
    v58 = *(v48 + 3);
    if (v59 >= v58 >> 1)
    {
      v48 = sub_22F03C784((v58 > 1), v59 + 1, 1, v48);
    }

    *(v48 + 2) = v59 + 1;
    v60 = &v48[16 * v59];
    *(v60 + 4) = 0x794D646E6946;
    *(v60 + 5) = 0xE600000000000000;
    goto LABEL_24;
  }

  (*(v90 + 8))(v86, v87);
  sub_22F0D00CC();

  if (qword_27DAA0598 != -1)
  {
    swift_once();
  }

  return (v88)(qword_27DAACEC8);
}

void sub_22F0431F0(void *a1, void (*a2)(void *, uint64_t))
{
  if (a1)
  {
    v4 = a1;
    if (qword_280CBDB90 != -1)
    {
      swift_once();
    }

    v5 = sub_22F0D0A1C();
    __swift_project_value_buffer(v5, qword_280CBDB98);
    v6 = a1;
    v7 = sub_22F0D09FC();
    v8 = sub_22F0D123C();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v16 = v10;
      *v9 = 136315138;
      swift_getErrorValue();
      v11 = sub_22F0D192C();
      v13 = sub_22F00A560(v11, v12, &v16);

      *(v9 + 4) = v13;
      _os_log_impl(&dword_22EFE1000, v7, v8, "Index error %s", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v10);
      MEMORY[0x2318FE8B0](v10, -1, -1);
      MEMORY[0x2318FE8B0](v9, -1, -1);
    }

    v14 = a1;
    a2(a1, 1);
  }

  else
  {
    v15 = sub_22F0454B0();
    a2(v15, 0);
  }
}

void sub_22F0433F4(void *a1, void (*a2)(void *, uint64_t))
{
  if (a1)
  {
    v4 = a1;
    a2(a1, 1);
  }

  else
  {
    v5 = sub_22F0454B0();
    a2(v5, 0);
  }
}

uint64_t sub_22F0434F8(void *a1, void *a2, void *a3, uint64_t a4)
{
  v135 = a2;
  v136 = a4;
  v134 = a3;
  v5 = sub_22F0D01DC();
  v128 = *(v5 - 8);
  v129 = v5;
  v6 = *(v128 + 64);
  MEMORY[0x28223BE20](v5);
  v127 = &v112[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAA1170, &unk_22F0D5A60);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v112[-v11];
  v13 = sub_22F0D05BC();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v112[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v112[-v20];
  MEMORY[0x28223BE20](v19);
  v23 = &v112[-v22];
  [a1 eventTime];
  sub_22F0D04BC();
  v24 = [a1 requestID];
  v25 = sub_22F0D0CAC();
  v132 = v26;
  v133 = v25;

  v27 = *(v14 + 16);
  v138 = v21;
  v130 = v27;
  v131 = v14 + 16;
  v27(v21, v23, v13);
  if (qword_27DAA0538 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v8, qword_27DAACE80);
  v28 = [objc_opt_self() seconds];
  sub_22F0D019C();

  sub_22F0D018C();
  (*(v9 + 8))(v12, v8);
  sub_22F0D054C();
  v29 = [a1 thumbnailPath];
  v30 = sub_22F0D0CAC();
  v125 = v31;

  v32 = [a1 storeLink];
  v137 = v23;
  if (v32)
  {
    v33 = v32;
    v124 = sub_22F0D0CAC();
    v123 = v34;
  }

  else
  {
    v124 = 0;
    v123 = 0;
  }

  v35 = [a1 productType];
  sub_22F0D0CAC();

  v36 = String.trimToNil()();
  object = v36.value._object;

  if (v36.value._object)
  {
    countAndFlagsBits = v36.value._countAndFlagsBits;
  }

  else
  {
    countAndFlagsBits = 0;
  }

  if (!v36.value._object)
  {
    object = 0xE000000000000000;
  }

  sub_22F01B924(0, &unk_27DAA23F0, 0x277CF1910);
  static BMAskToBuyEvent.productType(withCode:)(countAndFlagsBits, object, v143);

  v139 = v18;
  v126 = v30;
  v116 = v14;
  if (v143[0] <= 1u)
  {
    if (v143[0])
    {
      v120 = 0xE600000000000000;
      v39 = 0x73656E755469;
    }

    else
    {
      v120 = 0xE500000000000000;
      v39 = 0x736B6F6F62;
    }
  }

  else if (v143[0] == 2)
  {
    v120 = 0xE800000000000000;
    v39 = 0x65726F7453707061;
  }

  else if (v143[0] == 3)
  {
    v120 = 0xED0000736E6F6974;
    v39 = 0x7069726373627573;
  }

  else
  {
    v120 = 0xE700000000000000;
    v39 = 0x5654656C707061;
  }

  v119 = v39;
  v40 = [a1 itemTitle];
  v122 = sub_22F0D0CAC();
  v121 = v41;

  v42 = [a1 status];
  v43 = [a1 itemLocalizedPrice];
  v115 = sub_22F0D0CAC();
  v114 = v44;

  v45 = [a1 itemDescription];
  v118 = sub_22F0D0CAC();
  v117 = v46;

  v47 = [a1 itemStarRating];
  v48 = [a1 itemAgeRating];
  v49 = sub_22F0D0CAC();
  v51 = v50;

  v52 = [a1 productType];
  sub_22F0D0CAC();

  v53 = String.trimToNil()();

  if (v53.value._object)
  {
    v54 = v53.value._countAndFlagsBits;
  }

  else
  {
    v54 = 0;
  }

  if (v53.value._object)
  {
    v55 = v53.value._object;
  }

  else
  {
    v55 = 0xE000000000000000;
  }

  static BMAskToBuyEvent.productType(withCode:)(v54, v55, &v142);

  v113 = v142;
  v56 = type metadata accessor for AskToBuyItem();
  v57 = *(v56 + 48);
  v58 = *(v56 + 52);
  v59 = swift_allocObject();
  v60 = v42;
  v61 = v42 == 1;
  v62 = v134;
  if (!v61 && !v134)
  {
    if (qword_280CBDB90 != -1)
    {
      swift_once();
    }

    v63 = sub_22F0D0A1C();
    __swift_project_value_buffer(v63, qword_280CBDB98);
    v64 = sub_22F0D09FC();
    v65 = sub_22F0D122C();
    if (os_log_type_enabled(v64, v65))
    {
      v66 = swift_slowAlloc();
      *v66 = 0;
      _os_log_impl(&dword_22EFE1000, v64, v65, "AskToBuy responding user missing!", v66, 2u);
      MEMORY[0x2318FE8B0](v66, -1, -1);
    }
  }

  *(v59 + OBJC_IVAR____TtC6People12AskToBuyItem_starRating) = v47;
  v140 = v49;
  v141 = v51;
  v67 = v47;
  v68 = v127;
  sub_22F0D01CC();
  sub_22F00901C();
  v69 = sub_22F0D136C();
  v71 = v70;
  (*(v128 + 8))(v68, v129);
  v72 = v139;
  if (v69 == 48 && v71 == 0xE100000000000000)
  {
  }

  else
  {
    v73 = sub_22F0D188C();

    if ((v73 & 1) == 0)
    {
      goto LABEL_38;
    }
  }

  v49 = 0;
  v51 = 0xE000000000000000;
LABEL_38:
  v74 = (v59 + OBJC_IVAR____TtC6People12AskToBuyItem_ageRating);
  *v74 = v49;
  v74[1] = v51;
  *(v59 + OBJC_IVAR____TtC6People12AskToBuyItem_status) = v60;
  v75 = (v59 + OBJC_IVAR____TtC6People12AskToBuyItem_thumbnailPath);
  v76 = v125;
  *v75 = v126;
  v75[1] = v76;
  *(v59 + OBJC_IVAR____TtC6People12AskToBuyItem_actionFamilyMember) = v62;
  v77 = v135;
  v78 = v136;
  *(v59 + OBJC_IVAR____TtC6People12AskToBuyItem_familyMember) = v135;
  v79 = (v59 + OBJC_IVAR____TtC6People12AskToBuyItem_localizedPrice);
  v80 = v114;
  *v79 = v115;
  v79[1] = v80;
  *(v59 + OBJC_IVAR____TtC6People12AskToBuyItem_requestApprovers) = v78;
  v81 = (v59 + OBJC_IVAR____TtC6People12AskToBuyItem_storeLink);
  v82 = v123;
  *v81 = v124;
  v81[1] = v82;
  v83 = (v59 + OBJC_IVAR____TtC6People12AskToBuyItem_productTypeCode);
  v84 = v120;
  *v83 = v119;
  v83[1] = v84;
  *(v59 + OBJC_IVAR____TtC6People12AskToBuyItem_mappedProductType) = v113;
  v85 = v62;
  v86 = v77;
  sub_22F0CFF1C();
  v87 = [v86 contactIncludingImage_];
  v88 = v138;
  v89 = v130;
  v130(v59 + OBJC_IVAR____TtC6People13IndexableItem_eventDate, v138, v13);
  v90 = OBJC_IVAR____TtC6People13IndexableItem_expirationDate;
  v89(v59 + OBJC_IVAR____TtC6People13IndexableItem_expirationDate, v72, v13);
  v91 = v116;
  (*(v116 + 56))(v59 + v90, 0, 1, v13);
  v92 = OBJC_IVAR____TtC6People13IndexableItem_keywordStrings;
  v93 = MEMORY[0x277D84F90];
  *(v59 + OBJC_IVAR____TtC6People13IndexableItem_keywordStrings) = MEMORY[0x277D84F90];
  v94 = (v59 + OBJC_IVAR____TtC6People13IndexableItem_title);
  v95 = v121;
  *v94 = v122;
  v94[1] = v95;
  v96 = (v59 + OBJC_IVAR____TtC6People13IndexableItem_description);
  v97 = v117;
  *v96 = v118;
  v96[1] = v97;
  *(v59 + 16) = v87;
  v98 = (v59 + OBJC_IVAR____TtC6People13IndexableItem_indexableID);
  v99 = v132;
  *v98 = v133;
  v98[1] = v99;
  swift_beginAccess();
  sub_22F0CFFAC();
  v100 = sub_22F03C784(0, 1, 1, v93);
  v102 = *(v100 + 2);
  v101 = *(v100 + 3);
  if (v102 >= v101 >> 1)
  {
    v100 = sub_22F03C784((v101 > 1), v102 + 1, 1, v100);
  }

  *(v100 + 2) = v102 + 1;
  v103 = &v100[16 * v102];
  *(v103 + 4) = 0x74736575716572;
  *(v103 + 5) = 0xE700000000000000;
  *(v59 + v92) = v100;
  v105 = *(v100 + 2);
  v104 = *(v100 + 3);
  if (v105 >= v104 >> 1)
  {
    v100 = sub_22F03C784((v104 > 1), v105 + 1, 1, v100);
  }

  *(v100 + 2) = v105 + 1;
  v106 = &v100[16 * v105];
  *(v106 + 4) = 0x7975426F546B7341;
  *(v106 + 5) = 0xE800000000000000;
  *(v59 + v92) = v100;
  v108 = *(v100 + 2);
  v107 = *(v100 + 3);
  if (v108 >= v107 >> 1)
  {
    v100 = sub_22F03C784((v107 > 1), v108 + 1, 1, v100);
  }

  *(v100 + 2) = v108 + 1;
  v109 = &v100[16 * v108];
  *(v109 + 4) = 0x6573616863727550;
  *(v109 + 5) = 0xEF74736575716552;
  *(v59 + v92) = v100;
  swift_endAccess();

  v110 = *(v91 + 8);
  v110(v72, v13);
  v110(v88, v13);
  v110(v137, v13);
  sub_22F0D00CC();
  return v59;
}

uint64_t sub_22F0440B0(void *a1, void *a2, void *a3, uint64_t a4, void *a5, void (*a6)(uint64_t, uint64_t), uint64_t a7)
{
  v159 = a5;
  v13 = sub_22F0D05BC();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v150 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_22F0434F8(a1, a2, a3, a4);
  if (v18)
  {
    v19 = v18;
    v157 = a1;
    v158 = v17;
    v20 = *(v18 + OBJC_IVAR____TtC6People12AskToBuyItem_status);
    if (v20 == 1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAA18B0, &unk_22F0D7AC0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_22F0D6C00;
      *(inited + 32) = v19;
      sub_22F0CFFAC();
      v22 = sub_22F0220A0(inited);
      swift_setDeallocating();
      v23 = *(inited + 16);
      swift_arrayDestroy();
      if (v22 >> 62)
      {
        if (sub_22F0D143C() == 1)
        {
          goto LABEL_5;
        }
      }

      else if (*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10) == 1)
      {
LABEL_5:
        v24 = v159[3];
        v25 = v159[4];
        __swift_project_boxed_opaque_existential_1(v159, v24);
        v26 = v19;
        v27 = swift_allocObject();
        v27[2] = a6;
        v27[3] = a7;
        v27[4] = v26;
        v28 = *(v25 + 24);
        sub_22F0CFFAC();
        sub_22F0CFFAC();
        v28(v22, 0xD000000000000020, 0x800000022F0DCBB0, sub_22F044F84, v27, v24, v25);

        sub_22F0D00CC();
        return sub_22F0D00CC();
      }

      if (qword_27DAA05A0 != -1)
      {
        swift_once();
      }

      a6(qword_27DAACED0, 1);
      return sub_22F0D00CC();
    }

    v156 = v14;
    v30 = OBJC_IVAR____TtC6People12AskToBuyItem_actionFamilyMember;
    if (!*(v18 + OBJC_IVAR____TtC6People12AskToBuyItem_actionFamilyMember))
    {
      if (qword_280CBDB90 != -1)
      {
        swift_once();
      }

      v34 = sub_22F0D0A1C();
      __swift_project_value_buffer(v34, qword_280CBDB98);
      sub_22F0CFFAC();
      v35 = sub_22F0D09FC();
      v36 = sub_22F0D122C();
      sub_22F0D00CC();
      if (os_log_type_enabled(v35, v36))
      {
        v37 = swift_slowAlloc();
        v38 = swift_slowAlloc();
        *&v162 = v38;
        *v37 = 136315138;
        v39 = v19 + OBJC_IVAR____TtC6People13IndexableItem_indexableID;
        v40 = v19;
        v41 = *(v19 + OBJC_IVAR____TtC6People13IndexableItem_indexableID);
        v42 = *(v39 + 8);
        sub_22F0CFF1C();
        v43 = sub_22F00A560(v41, v42, &v162);

        *(v37 + 4) = v43;
        v19 = v40;
        _os_log_impl(&dword_22EFE1000, v35, v36, "Deleting askToBuy %s - no actionFamilyMember!", v37, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v38);
        MEMORY[0x2318FE8B0](v38, -1, -1);
        MEMORY[0x2318FE8B0](v37, -1, -1);
      }

      v44 = v159[4];
      v158 = v159[3];
      __swift_project_boxed_opaque_existential_1(v159, v158);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA0DD0, &qword_22F0D4FA0);
      v45 = swift_allocObject();
      *(v45 + 16) = xmmword_22F0D2BF0;
      v46 = (v19 + OBJC_IVAR____TtC6People13IndexableItem_indexableID);
      v47 = v19;
      v48 = *(v19 + OBJC_IVAR____TtC6People13IndexableItem_indexableID + 8);
      *(v45 + 32) = *v46;
      *(v45 + 40) = v48;
      v49 = swift_allocObject();
      v49[2] = a6;
      v49[3] = a7;
      v49[4] = v47;
      v50 = *(v44 + 32);
      sub_22F0CFFAC();
      sub_22F0CFFAC();
      sub_22F0CFF1C();
      v50(v45, 0xD000000000000020, 0x800000022F0DCBB0, sub_22F044F64, v49, v158, v44);

      sub_22F0D00CC();

      return sub_22F0D00CC();
    }

    v155 = a6;
    v153 = a7;
    v31 = v13;
    if (v20 == 2)
    {
      v32 = 0xED00006465696E65;
      v33 = 0x4474736575716572;
    }

    else
    {
      if (v20 != 3)
      {
        v54 = MEMORY[0x277D84F98];
LABEL_24:
        [v157 eventTime];
        v57 = v158;
        sub_22F0D04BC();
        v58 = *MEMORY[0x277CC25E0];
        v59 = sub_22F0D0CAC();
        v61 = v60;
        v163 = v31;
        boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(&v162);
        v63 = *(v156 + 16);
        v63(boxed_opaque_existential_1Tm, v57, v31);
        sub_22EFFFA24(&v162, v161);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v160 = v54;
        sub_22F018078(v161, v59, v61, isUniquelyReferenced_nonNull_native);

        v65 = v160;
        v66 = *MEMORY[0x277CC2448];
        v67 = sub_22F0D0CAC();
        v69 = v68;
        v163 = v31;
        v70 = __swift_allocate_boxed_opaque_existential_1Tm(&v162);
        v154 = v31;
        v63(v70, v57, v31);
        sub_22EFFFA24(&v162, v161);
        v71 = swift_isUniquelyReferenced_nonNull_native();
        v160 = v65;
        sub_22F018078(v161, v67, v69, v71);

        v72 = v160;
        v73 = *MEMORY[0x277CC2450];
        v74 = sub_22F0D0CAC();
        v76 = v75;
        v163 = MEMORY[0x277D849A8];
        LODWORD(v162) = v20;
        sub_22EFFFA24(&v162, v161);
        v77 = swift_isUniquelyReferenced_nonNull_native();
        v160 = v72;
        sub_22F018078(v161, v74, v76, v77);

        v78 = v160;
        v79 = *(v19 + v30);
        if (v79)
        {
          v80 = v79;
          v81 = [v80 dsid];
          if (v81)
          {
            v82 = v81;
            v83 = *MEMORY[0x277CC2460];
            v84 = sub_22F0D0CAC();
            v86 = v85;
            v163 = sub_22F01B924(0, &qword_27DAA1850, 0x277CCABB0);
            *&v162 = v82;
            sub_22EFFFA24(&v162, v161);
            v87 = v82;
            v88 = swift_isUniquelyReferenced_nonNull_native();
            v160 = v78;
            sub_22F018078(v161, v84, v86, v88);

            v78 = v160;
          }

          v89 = [v80 contactIncludingImage_];
          if (v89)
          {
            v90 = v89;
            v91 = [v89 identifier];
            v92 = sub_22F0D0CAC();
            v94 = v93;

            v163 = MEMORY[0x277D837D0];
            *&v162 = v92;
            *(&v162 + 1) = v94;
            sub_22EFFFA24(&v162, v161);
            v95 = swift_isUniquelyReferenced_nonNull_native();
            v160 = v78;
            sub_22F018078(v161, 0xD00000000000001DLL, 0x800000022F0DCF70, v95);
            v96 = v160;
            v97 = *MEMORY[0x277CC2468];
            *&v152 = sub_22F0D0CAC();
            v99 = v98;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA0DD0, &qword_22F0D4FA0);
            v100 = swift_allocObject();
            *(v100 + 16) = xmmword_22F0D2BF0;
            v101 = [v90 identifier];
            v102 = sub_22F0D0CAC();
            v104 = v103;

            *(v100 + 32) = v102;
            *(v100 + 40) = v104;
            v163 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAA0DE0, &unk_22F0D4FB0);
            *&v162 = v100;
            sub_22EFFFA24(&v162, v161);
            v105 = swift_isUniquelyReferenced_nonNull_native();
            v160 = v96;
            sub_22F018078(v161, v152, v99, v105);

            v78 = v160;
          }

          v106 = *MEMORY[0x277CC2478];
          v151 = sub_22F0D0CAC();
          v108 = v107;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA0DD0, &qword_22F0D4FA0);
          v109 = swift_allocObject();
          v152 = xmmword_22F0D2BF0;
          *(v109 + 16) = xmmword_22F0D2BF0;
          v110 = [v80 fullName];
          if (v110)
          {
            v111 = v110;
            v112 = sub_22F0D0CAC();
            v114 = v113;
          }

          else
          {
            v112 = 0;
            v114 = 0xE000000000000000;
          }

          *(v109 + 32) = v112;
          *(v109 + 40) = v114;
          v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAA0DE0, &unk_22F0D4FB0);
          v163 = v115;
          *&v162 = v109;
          sub_22EFFFA24(&v162, v161);
          v116 = swift_isUniquelyReferenced_nonNull_native();
          v160 = v78;
          sub_22F018078(v161, v151, v108, v116);

          v117 = v160;
          v118 = *MEMORY[0x277CC2470];
          v119 = sub_22F0D0CAC();
          v121 = v120;
          v122 = swift_allocObject();
          *(v122 + 16) = v152;
          v123 = [v80 appleID];
          if (v123)
          {
            v124 = v123;
            v125 = sub_22F0D0CAC();
            v127 = v126;
          }

          else
          {
            v125 = 0;
            v127 = 0xE000000000000000;
          }

          *(v122 + 32) = v125;
          *(v122 + 40) = v127;
          v163 = v115;
          *&v162 = v122;
          sub_22EFFFA24(&v162, v161);
          v128 = swift_isUniquelyReferenced_nonNull_native();
          v160 = v117;
          sub_22F018078(v161, v119, v121, v128);

          v78 = v160;
        }

        v129 = *(v19 + 16);
        v130 = v157;
        sub_22F0CFFAC();
        if (v129)
        {
          v131 = [v129 identifier];
          sub_22F0D0CAC();
        }

        object = String.trimToNil()().value._object;
        sub_22F0D00CC();

        if (object)
        {
        }

        else
        {
          v133 = *MEMORY[0x277CC24C0];
          v134 = sub_22F0D0CAC();
          v136 = v135;
          v163 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAA0DE0, &unk_22F0D4FB0);
          *&v162 = MEMORY[0x277D84F90];
          sub_22EFFFA24(&v162, v161);
          v137 = swift_isUniquelyReferenced_nonNull_native();
          v160 = v78;
          sub_22F018078(v161, v134, v136, v137);

          v78 = v160;
        }

        v138 = [v130 requestID];
        v139 = sub_22F0D0CAC();
        v141 = v140;

        sub_22F022C68(v139, v141, 1, v78);
        v143 = v142;

        v144 = v159[4];
        v157 = v159[3];
        __swift_project_boxed_opaque_existential_1(v159, v157);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAA18B0, &unk_22F0D7AC0);
        v145 = swift_allocObject();
        *(v145 + 16) = xmmword_22F0D6C00;
        *(v145 + 32) = v143;
        v146 = swift_allocObject();
        v147 = v153;
        v146[2] = v155;
        v146[3] = v147;
        v146[4] = v19;
        v148 = *(v144 + 24);
        sub_22F0CFFAC();
        sub_22F0CFFAC();
        v149 = v143;
        v148(v145, 0xD000000000000020, 0x800000022F0DCBB0, sub_22F044F90, v146, v157, v144);

        sub_22F0D00CC();

        sub_22F0D00CC();
        return (*(v156 + 8))(v158, v154);
      }

      v32 = 0xEF6465766F727070;
      v33 = 0x4174736575716572;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA0DD0, &qword_22F0D4FA0);
    v51 = swift_initStackObject();
    *(v51 + 16) = xmmword_22F0D2BF0;
    *(v51 + 32) = v33;
    v52 = v51 + 32;
    *(v51 + 40) = v32;
    v53 = sub_22F05BB98(v51);
    swift_setDeallocating();
    sub_22F022C14(v52);
    v54 = MEMORY[0x277D84F98];
    if (v53)
    {
      v163 = sub_22F01B924(0, &qword_27DAA1508, 0x277CC3440);
      *&v162 = v53;
      sub_22EFFFA24(&v162, v161);
      v55 = v53;
      v56 = swift_isUniquelyReferenced_nonNull_native();
      v160 = v54;
      sub_22F018078(v161, 0xD00000000000001ELL, 0x800000022F0DCF50, v56);

      v54 = v160;
    }

    goto LABEL_24;
  }

  if (qword_27DAA05A0 != -1)
  {
    swift_once();
  }

  return (a6)(qword_27DAACED0, 1);
}

void sub_22F044F64(void *a1)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  sub_22F0433F4(a1, *(v1 + 16));
}

void sub_22F044F84(void *a1)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  sub_22F0431F0(a1, *(v1 + 16));
}

Swift::String __swiftcall ContactFormatter.displayName(for:includePhone:)(CNContact a1, Swift::Bool includePhone)
{
  isa = a1.super.isa;
  v5 = *v2;
  v6 = *(v2 + 8);
  v7 = [*(v2 + 16) stringFromContact_];
  if (v7)
  {
    v8 = v7;
    v5 = sub_22F0D0CAC();
    v6 = v9;

    goto LABEL_24;
  }

  v10 = [isa emailAddresses];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1480, &qword_22F0D7B10);
  v11 = sub_22F0D0F4C();

  if (v11 >> 62)
  {
    if (sub_22F0D143C())
    {
      goto LABEL_5;
    }

LABEL_11:

    goto LABEL_12;
  }

  if (!*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_11;
  }

LABEL_5:
  if ((v11 & 0xC000000000000001) != 0)
  {
    v12 = MEMORY[0x2318FDAB0](0, v11);
  }

  else
  {
    if (!*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
LABEL_21:
      v18 = sub_22F0D143C();
      if (v18)
      {
        goto LABEL_15;
      }

      goto LABEL_22;
    }

    v12 = *(v11 + 32);
  }

  v13 = v12;

  v14 = [v13 value];

  if (v14)
  {
    v5 = sub_22F0D0CAC();
    v6 = v15;

    goto LABEL_24;
  }

LABEL_12:
  if (!includePhone)
  {
LABEL_23:
    sub_22F0CFF1C();
    goto LABEL_24;
  }

  v16 = [isa phoneNumbers];
  isa = sub_22F0D0F4C();

  if (isa >> 62)
  {
    goto LABEL_21;
  }

  v18 = *((isa & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v18)
  {
LABEL_22:

    goto LABEL_23;
  }

LABEL_15:
  if ((isa & 0xC000000000000001) != 0)
  {
    v19 = MEMORY[0x2318FDAB0](0, isa);
  }

  else
  {
    if (!*((isa & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_27;
    }

    v19 = *(isa + 32);
  }

  v20 = v19;

  v21 = [v20 value];

  v22 = [v21 stringValue];
  v5 = sub_22F0D0CAC();
  v6 = v23;

LABEL_24:
  v18 = v5;
  v17 = v6;
LABEL_27:
  result._object = v17;
  result._countAndFlagsBits = v18;
  return result;
}

uint64_t ContactFormatter.Style.hashValue.getter()
{
  v1 = *v0;
  sub_22F0D199C();
  MEMORY[0x2318FDEE0](v1);
  return sub_22F0D19CC();
}

Swift::String __swiftcall ContactFormatter.displayName(for:)(CNContact a1)
{
  v6 = *v1;
  v7 = *(v1 + 1);
  v4 = ContactFormatter.displayName(for:includePhone:)(a1, 1);
  object = v4._object;
  countAndFlagsBits = v4._countAndFlagsBits;
  result._object = object;
  result._countAndFlagsBits = countAndFlagsBits;
  return result;
}

unint64_t sub_22F045348()
{
  result = qword_27DAA17B8;
  if (!qword_27DAA17B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAA17B8);
  }

  return result;
}

uint64_t sub_22F04539C(CNContact a1)
{
  v3 = *v1;
  v4 = *(v1 + 1);
  return ContactFormatter.displayName(for:includePhone:)(a1, 1)._countAndFlagsBits;
}

uint64_t sub_22F045408(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_22F045450(uint64_t result, int a2, int a3)
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

char *sub_22F0454B0()
{
  v1 = [*(v0 + OBJC_IVAR____TtC6People12AskToBuyItem_familyMember) contactsIncludingImage_];
  sub_22F0459DC();
  v2 = sub_22F0D0F4C();

  if (!(v2 >> 62))
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_13:

    return MEMORY[0x277D84F90];
  }

  v3 = sub_22F0D143C();
  if (!v3)
  {
    goto LABEL_13;
  }

LABEL_3:
  v16 = MEMORY[0x277D84F90];
  result = sub_22EFFC4E8(0, v3 & ~(v3 >> 63), 0);
  if ((v3 & 0x8000000000000000) == 0)
  {
    v5 = 0;
    v6 = v16;
    do
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x2318FDAB0](v5, v2);
      }

      else
      {
        v7 = *(v2 + 8 * v5 + 32);
      }

      v8 = v7;
      v9 = [v7 identifier];
      v10 = sub_22F0D0CAC();
      v12 = v11;

      v14 = *(v16 + 16);
      v13 = *(v16 + 24);
      if (v14 >= v13 >> 1)
      {
        sub_22EFFC4E8((v13 > 1), v14 + 1, 1);
      }

      ++v5;
      *(v16 + 16) = v14 + 1;
      v15 = v16 + 16 * v14;
      *(v15 + 32) = v10;
      *(v15 + 40) = v12;
    }

    while (v3 != v5);

    return v6;
  }

  __break(1u);
  return result;
}

uint64_t sub_22F045658()
{
  v1 = *(v0 + OBJC_IVAR____TtC6People12AskToBuyItem_requestApprovers);

  v2 = *(v0 + OBJC_IVAR____TtC6People12AskToBuyItem_thumbnailPath + 8);

  v3 = *(v0 + OBJC_IVAR____TtC6People12AskToBuyItem_localizedPrice + 8);

  v4 = *(v0 + OBJC_IVAR____TtC6People12AskToBuyItem_ageRating + 8);

  v5 = *(v0 + OBJC_IVAR____TtC6People12AskToBuyItem_storeLink + 8);

  v6 = *(v0 + OBJC_IVAR____TtC6People12AskToBuyItem_productTypeCode + 8);
}

uint64_t sub_22F04571C()
{
  v1 = OBJC_IVAR____TtC6People13IndexableItem_eventDate;
  v2 = sub_22F0D05BC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_22F01B96C(v0 + OBJC_IVAR____TtC6People13IndexableItem_expirationDate);
  v3 = *(v0 + OBJC_IVAR____TtC6People13IndexableItem_keywordStrings);

  v4 = *(v0 + OBJC_IVAR____TtC6People13IndexableItem_title + 8);

  v5 = *(v0 + OBJC_IVAR____TtC6People13IndexableItem_description + 8);

  v6 = *(v0 + OBJC_IVAR____TtC6People13IndexableItem_indexableID + 8);

  v7 = *(v0 + OBJC_IVAR____TtC6People12AskToBuyItem_requestApprovers);

  v8 = *(v0 + OBJC_IVAR____TtC6People12AskToBuyItem_thumbnailPath + 8);

  v9 = *(v0 + OBJC_IVAR____TtC6People12AskToBuyItem_localizedPrice + 8);

  v10 = *(v0 + OBJC_IVAR____TtC6People12AskToBuyItem_ageRating + 8);

  v11 = *(v0 + OBJC_IVAR____TtC6People12AskToBuyItem_storeLink + 8);

  v12 = *(v0 + OBJC_IVAR____TtC6People12AskToBuyItem_productTypeCode + 8);

  return v0;
}

uint64_t sub_22F04589C()
{
  sub_22F04571C();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for AskToBuyItem()
{
  result = qword_27DAA17C0;
  if (!qword_27DAA17C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_22F0459DC()
{
  result = qword_280CBDC30;
  if (!qword_280CBDC30)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280CBDC30);
  }

  return result;
}

uint64_t static PeopleSharedDirectory.groupContainer.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = [objc_opt_self() defaultManager];
  v3 = sub_22F0D0C7C();
  v4 = [v2 containerURLForSecurityApplicationGroupIdentifier_];

  if (v4)
  {
    sub_22F0D03EC();

    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = sub_22F0D043C();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, 1, v6);
}

uint64_t static PeopleSharedDirectory.cacheFolder(create:)@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA10F8, &qword_22F0D5320);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v25 - v9;
  v11 = sub_22F0D043C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v25 - v17;
  static PeopleSharedDirectory.groupContainer.getter(v10);
  v19 = *(v12 + 48);
  if (v19(v10, 1, v11) == 1)
  {
    sub_22F009070(v10);
    v20 = 1;
  }

  else
  {
    sub_22F0D03BC();
    v25 = v16;
    v26 = v8;
    v21 = a1;
    v22 = a2;
    v23 = *(v12 + 8);
    v23(v10, v11);
    sub_22F0D03BC();
    v23(v18, v11);
    a2 = v22;
    a1 = v21;
    v16 = v25;
    v8 = v26;
    v20 = 0;
  }

  result = (*(v12 + 56))(a2, v20, 1, v11);
  if (a1)
  {
    sub_22F036154(a2, v8);
    if (v19(v8, 1, v11) == 1)
    {
      return sub_22F009070(v8);
    }

    else
    {
      (*(v12 + 32))(v16, v8, v11);
      sub_22F046064();
      return (*(v12 + 8))(v16, v11);
    }
  }

  return result;
}

uint64_t static PeopleSharedDirectory.tempFolder(hint:create:)@<X0>(uint64_t a1@<X1>, int a2@<W2>, uint64_t a3@<X8>)
{
  v22 = a2;
  v23 = a3;
  v4 = sub_22F0D05EC();
  v21 = *(v4 - 8);
  v5 = *(v21 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22F0D043C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v20 - v14;
  v16 = [objc_opt_self() defaultManager];
  v17 = [v16 temporaryDirectory];

  sub_22F0D03EC();
  if (!a1)
  {
    sub_22F0CFD4C();
    sub_22F0D05CC();
    (*(v21 + 8))(v7, v4);
  }

  sub_22F0CFF1C();
  sub_22F0D03BC();

  (*(v9 + 8))(v13, v8);
  if (v22)
  {
    sub_22F046064();
  }

  v18 = v23;
  (*(v9 + 32))(v23, v15, v8);
  return (*(v9 + 56))(v18, 0, 1, v8);
}

void sub_22F046064()
{
  v11[1] = *MEMORY[0x277D85DE8];
  v0 = [objc_opt_self() defaultManager];
  v1 = sub_22F0D03AC();
  v11[0] = 0;
  v2 = [v0 createDirectoryAtURL:v1 withIntermediateDirectories:1 attributes:0 error:v11];

  v3 = v11[0];
  if (v2)
  {
    v4 = *MEMORY[0x277D85DE8];

    v5 = v3;
  }

  else
  {
    v6 = v11[0];
    v7 = sub_22F0D033C();

    swift_willThrow();
    if (qword_280CBEC38 != -1)
    {
      swift_once();
    }

    v8 = sub_22F0D0A1C();
    __swift_project_value_buffer(v8, qword_280CBEC40);
    v9 = v7;
    Logger.ifError(_:message:)(v7);

    v10 = *MEMORY[0x277D85DE8];
  }
}

uint64_t sub_22F046214(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1448, &unk_22F0D6640);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v25 - v8;
  v10 = type metadata accessor for ResolvedFamily();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v11 + 48))(a1, 1, v10) == 1)
  {
    sub_22F003A4C(a1, &qword_27DAA1448, &unk_22F0D6640);
    v15 = *v3;
    v16 = sub_22EFFDADC(a2);
    if (v17)
    {
      v18 = v16;
      v19 = *v3;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v21 = *v3;
      v26 = *v3;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_22F06026C();
        v21 = v26;
      }

      sub_22F04A06C(*(v21 + 56) + *(v11 + 72) * v18, v9, type metadata accessor for ResolvedFamily);
      sub_22F05F284(v18, v21);
      *v3 = v21;
      (*(v11 + 56))(v9, 0, 1, v10);
    }

    else
    {
      (*(v11 + 56))(v9, 1, 1, v10);
    }

    return sub_22F003A4C(v9, &qword_27DAA1448, &unk_22F0D6640);
  }

  else
  {
    sub_22F04A06C(a1, v14, type metadata accessor for ResolvedFamily);
    v22 = *v3;
    v23 = swift_isUniquelyReferenced_nonNull_native();
    v26 = *v3;
    result = sub_22F017F24(v14, a2, v23);
    *v3 = v26;
  }

  return result;
}

uint64_t sub_22F046468(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1440, &unk_22F0D65F0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v19 - v9;
  v11 = sub_22F0D05BC();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v12 + 48))(a1, 1, v11) == 1)
  {
    sub_22F003A4C(a1, &qword_27DAA1440, &unk_22F0D65F0);
    sub_22F0178D0(a2, a3, v10);

    return sub_22F003A4C(v10, &qword_27DAA1440, &unk_22F0D65F0);
  }

  else
  {
    (*(v12 + 32))(v15, a1, v11);
    v17 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;
    sub_22F0181C8(v15, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v20;
  }

  return result;
}

uint64_t sub_22F046640(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA17E8, &qword_22F0D7CC8);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v19 - v9;
  v11 = type metadata accessor for PeopleLocation();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v15 + 48))(a1, 1) == 1)
  {
    sub_22F003A4C(a1, &qword_27DAA17E8, &qword_22F0D7CC8);
    sub_22F017A40(a2, a3, v10);

    return sub_22F003A4C(v10, &qword_27DAA17E8, &qword_22F0D7CC8);
  }

  else
  {
    sub_22F04A06C(a1, v14, type metadata accessor for PeopleLocation);
    v17 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;
    sub_22F018348(v14, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v20;
  }

  return result;
}

uint64_t static SpotlightHelper.fillinDetailsFromSpotlight(withDetails:)(uint64_t a1, uint64_t a2)
{
  v2[20] = a1;
  v2[21] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1760, &unk_22F0D77D8);
  v2[22] = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  v2[23] = swift_task_alloc();
  v2[24] = swift_task_alloc();
  v2[25] = swift_task_alloc();
  v2[26] = swift_task_alloc();
  v5 = type metadata accessor for ResolvedFamily();
  v2[27] = v5;
  v6 = *(v5 - 8);
  v2[28] = v6;
  v7 = *(v6 + 64) + 15;
  v2[29] = swift_task_alloc();
  v2[30] = swift_task_alloc();
  v2[31] = swift_task_alloc();
  v2[32] = swift_task_alloc();
  v2[33] = swift_task_alloc();
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1448, &unk_22F0D6640) - 8) + 64) + 15;
  v2[34] = swift_task_alloc();
  v2[35] = swift_task_alloc();
  v2[36] = swift_task_alloc();
  v2[37] = swift_task_alloc();
  v2[38] = swift_task_alloc();
  v2[39] = swift_task_alloc();
  v2[40] = swift_task_alloc();
  v9 = type metadata accessor for MessageDetails();
  v2[41] = v9;
  v10 = *(*(v9 - 8) + 64) + 15;
  v2[42] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22F046A14, 0, 0);
}

uint64_t sub_22F046A14()
{
  v2 = *(v0 + 328);
  v1 = *(v0 + 336);
  v3 = *(v0 + 320);
  v4 = *(v0 + 216);
  v5 = *(v0 + 224);
  sub_22F040184(*(v0 + 168), v1, type metadata accessor for MessageDetails);
  v6 = *(v2 + 48);
  *(v0 + 480) = v6;
  sub_22F049FF4(v1 + v6, v3, &qword_27DAA1448, &unk_22F0D6640);
  v7 = *(v5 + 48);
  *(v0 + 344) = v7;
  *(v0 + 352) = (v5 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  LODWORD(v1) = v7(v3, 1, v4);
  sub_22F003A4C(v3, &qword_27DAA1448, &unk_22F0D6640);
  if (v1 != 1)
  {
    v12 = *(v0 + 344);
    v11 = *(v0 + 352);
    v13 = *(v0 + 288);
    v14 = *(v0 + 216);
    sub_22F049FF4(*(v0 + 336) + *(v0 + 480), v13, &qword_27DAA1448, &unk_22F0D6640);
    if (v12(v13, 1, v14) == 1)
    {
      sub_22F003A4C(*(v0 + 288), &qword_27DAA1448, &unk_22F0D6640);
      _s6People0A6ErrorsO11createError_4codeSo7NSErrorCSS_SitFZ_0(0xD000000000000020, 0x800000022F0DE380, 500);
      swift_willThrow();
      goto LABEL_27;
    }

    v15 = *(v0 + 336);
    sub_22F04A06C(*(v0 + 288), *(v0 + 248), type metadata accessor for ResolvedFamily);
    v16 = *v15;
    v17 = v15[1];
    v18 = String.trimToNil()();
    *(v0 + 392) = v18;
    if (v18.value._object)
    {
      if (*(*(v0 + 336) + 16) > 1u)
      {
        if (*(*(v0 + 336) + 16) == 2)
        {
          v19 = ".askToBuyRequest";
          if (qword_27DAA0508 != -1)
          {
            swift_once();
          }

          v20 = &qword_27DAA17D8;
LABEL_22:
          v24 = *v20;
          *(v0 + 408) = v19;
          *(v0 + 416) = v24;
          sub_22F0CFF1C();
          v25 = swift_task_alloc();
          *(v0 + 424) = v25;
          *v25 = v0;
          v25[1] = sub_22F048290;

          JUMPOUT(0x22F02D6A0);
        }
      }

      else if (*(*(v0 + 336) + 16))
      {
        v19 = "d";
        if (qword_27DAA0510 != -1)
        {
          swift_once();
        }

        v20 = &qword_27DAA17E0;
        goto LABEL_22;
      }

      v21 = *(v0 + 248);

      v23 = 0xD000000000000013;
      v22 = 0x800000022F0DE3E0;
    }

    else
    {
      v21 = *(v0 + 248);
      v22 = 0x800000022F0DE3B0;
      v23 = 0xD000000000000020;
    }

    _s6People0A6ErrorsO11createError_4codeSo7NSErrorCSS_SitFZ_0(v23, v22, 500);
    swift_willThrow();
    sub_22F01DF14(v21, type metadata accessor for ResolvedFamily);
LABEL_27:
    v26 = *(v0 + 312);
    v27 = *(v0 + 320);
    v29 = *(v0 + 296);
    v28 = *(v0 + 304);
    v31 = *(v0 + 280);
    v30 = *(v0 + 288);
    v33 = *(v0 + 264);
    v32 = *(v0 + 272);
    v36 = *(v0 + 256);
    v37 = *(v0 + 248);
    v38 = *(v0 + 240);
    v39 = *(v0 + 232);
    v40 = *(v0 + 208);
    v41 = *(v0 + 200);
    v42 = *(v0 + 192);
    v43 = *(v0 + 184);
    sub_22F01DF14(*(v0 + 336), type metadata accessor for MessageDetails);

    v34 = *(v0 + 8);

    __asm { BRAA            X1, X16 }
  }

  v8 = *(v0 + 336) + *(*(v0 + 328) + 36);
  *(v0 + 360) = *v8;
  *(v0 + 484) = *(v8 + 8);
  if (qword_280CBEC28 != -1)
  {
    swift_once();
  }

  v9 = qword_280CBEC30;
  *(v0 + 40) = type metadata accessor for ContactFetcher();
  *(v0 + 48) = &protocol witness table for ContactFetcher;
  *(v0 + 16) = v9;
  v10 = qword_27DAA0688;
  sub_22F0CFFAC();
  if (v10 != -1)
  {
    swift_once();
  }

  *(v0 + 368) = qword_27DAA2360;

  return MEMORY[0x2822009F8](sub_22F046FB4);
}

uint64_t sub_22F046FB4()
{
  v1 = *(v0 + 368);
  if (*(v0 + 484))
  {
    v2 = -1;
  }

  else
  {
    v2 = *(v0 + 360);
  }

  sub_22F0B301C(v2, *(v0 + 304));

  return MEMORY[0x2822009F8](sub_22F04702C, 0, 0);
}

uint64_t sub_22F04702C()
{
  v1 = *(v0 + 352);
  v2 = *(v0 + 304);
  if ((*(v0 + 344))(v2, 1, *(v0 + 216)) == 1)
  {
    if (*(v0 + 484))
    {
      v3 = -1;
    }

    else
    {
      v3 = *(v0 + 360);
    }

    sub_22F003A4C(v2, &qword_27DAA1448, &unk_22F0D6640);
    v4 = swift_task_alloc();
    *(v0 + 376) = v4;
    *(v4 + 16) = v3;
    *(v4 + 24) = 0;
    *(v4 + 32) = 1;
    *(v4 + 40) = v0 + 16;
    v5 = *(MEMORY[0x277D859E0] + 4);
    v6 = swift_task_alloc();
    *(v0 + 384) = v6;
    *v6 = v0;
    v6[1] = sub_22F04761C;
    v7 = *(v0 + 208);
    v8 = *(v0 + 176);

    return MEMORY[0x2822007B8](v7, 0, 0, 0xD000000000000043, 0x800000022F0DE1C0, sub_22F049FF0, v4, v8);
  }

  sub_22F04A06C(v2, *(v0 + 312), type metadata accessor for ResolvedFamily);
  v9 = *(v0 + 480);
  v10 = *(v0 + 336);
  v11 = *(v0 + 312);
  v12 = *(v0 + 264);
  v13 = *(v0 + 216);
  v14 = *(v0 + 224);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  v15 = *(v14 + 56);
  v15(v11, 0, 1, v13);
  sub_22F04A06C(v11, v12, type metadata accessor for ResolvedFamily);
  sub_22F003A4C(v10 + v9, &qword_27DAA1448, &unk_22F0D6640);
  sub_22F04A06C(v12, v10 + v9, type metadata accessor for ResolvedFamily);
  v15(v10 + v9, 0, 1, v13);
  v17 = *(v0 + 344);
  v16 = *(v0 + 352);
  v18 = *(v0 + 288);
  v19 = *(v0 + 216);
  sub_22F049FF4(*(v0 + 336) + *(v0 + 480), v18, &qword_27DAA1448, &unk_22F0D6640);
  if (v17(v18, 1, v19) == 1)
  {
    sub_22F003A4C(*(v0 + 288), &qword_27DAA1448, &unk_22F0D6640);
    _s6People0A6ErrorsO11createError_4codeSo7NSErrorCSS_SitFZ_0(0xD000000000000020, 0x800000022F0DE380, 500);
    swift_willThrow();
LABEL_26:
    v34 = *(v0 + 312);
    v35 = *(v0 + 320);
    v37 = *(v0 + 296);
    v36 = *(v0 + 304);
    v39 = *(v0 + 280);
    v38 = *(v0 + 288);
    v41 = *(v0 + 264);
    v40 = *(v0 + 272);
    v44 = *(v0 + 256);
    v45 = *(v0 + 248);
    v46 = *(v0 + 240);
    v47 = *(v0 + 232);
    v48 = *(v0 + 208);
    v49 = *(v0 + 200);
    v50 = *(v0 + 192);
    v51 = *(v0 + 184);
    sub_22F01DF14(*(v0 + 336), type metadata accessor for MessageDetails);

    v42 = *(v0 + 8);

    return v42();
  }

  v20 = *(v0 + 336);
  sub_22F04A06C(*(v0 + 288), *(v0 + 248), type metadata accessor for ResolvedFamily);
  v21 = *v20;
  v22 = v20[1];
  v23 = String.trimToNil()();
  *(v0 + 392) = v23;
  if (!v23.value._object)
  {
    v29 = *(v0 + 248);
    v30 = 0x800000022F0DE3B0;
    v31 = 0xD000000000000020;
LABEL_25:
    _s6People0A6ErrorsO11createError_4codeSo7NSErrorCSS_SitFZ_0(v31, v30, 500);
    swift_willThrow();
    sub_22F01DF14(v29, type metadata accessor for ResolvedFamily);
    goto LABEL_26;
  }

  if (*(*(v0 + 336) + 16) > 1u)
  {
    if (*(*(v0 + 336) + 16) == 2)
    {
      countAndFlagsBits = v23.value._countAndFlagsBits;
      object = v23.value._object;
      v27 = ".askToBuyRequest";
      if (qword_27DAA0508 != -1)
      {
        swift_once();
      }

      v26 = 0xD000000000000022;
      v28 = &qword_27DAA17D8;
      goto LABEL_21;
    }

    goto LABEL_24;
  }

  if (!*(*(v0 + 336) + 16))
  {
LABEL_24:
    v29 = *(v0 + 248);

    v31 = 0xD000000000000013;
    v30 = 0x800000022F0DE3E0;
    goto LABEL_25;
  }

  countAndFlagsBits = v23.value._countAndFlagsBits;
  object = v23.value._object;
  v26 = 0xD000000000000020;
  v27 = "d";
  if (qword_27DAA0510 != -1)
  {
    swift_once();
  }

  v28 = &qword_27DAA17E0;
LABEL_21:
  v32 = *v28;
  *(v0 + 408) = v27;
  *(v0 + 416) = v32;
  sub_22F0CFF1C();
  v33 = swift_task_alloc();
  *(v0 + 424) = v33;
  *v33 = v0;
  v33[1] = sub_22F048290;

  return sub_22F02D6A0(countAndFlagsBits, object, v26, v27 | 0x8000000000000000, v32);
}

uint64_t sub_22F04761C()
{
  v1 = *(*v0 + 384);
  v2 = *(*v0 + 376);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_22F047734, 0, 0);
}

uint64_t sub_22F047734()
{
  v1 = *(v0 + 176);
  sub_22F049FF4(*(v0 + 208), *(v0 + 200), &qword_27DAA1760, &unk_22F0D77D8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v2 = *(v0 + 312);
    v3 = *(v0 + 216);
    v4 = *(v0 + 224);
    v5 = *(v0 + 200);
    v6 = *(v0 + 208);
    v7 = *v5;
    *(v0 + 144) = *v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA0870, &qword_22F0D2CB0);
    swift_willThrowTypedImpl();

    sub_22F003A4C(v6, &qword_27DAA1760, &unk_22F0D77D8);
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
    (*(v4 + 56))(v2, 1, 1, v3);
    sub_22F003A4C(v2, &qword_27DAA1448, &unk_22F0D6640);
    v9 = *(v0 + 344);
    v8 = *(v0 + 352);
    v10 = *(v0 + 288);
    v11 = *(v0 + 216);
    sub_22F049FF4(*(v0 + 336) + *(v0 + 480), v10, &qword_27DAA1448, &unk_22F0D6640);
    if (v9(v10, 1, v11) == 1)
    {
      sub_22F003A4C(*(v0 + 288), &qword_27DAA1448, &unk_22F0D6640);
      _s6People0A6ErrorsO11createError_4codeSo7NSErrorCSS_SitFZ_0(0xD000000000000020, 0x800000022F0DE380, 500);
      swift_willThrow();
      goto LABEL_23;
    }

    v13 = *(v0 + 336);
    sub_22F04A06C(*(v0 + 288), *(v0 + 248), type metadata accessor for ResolvedFamily);
    v14 = *v13;
    v15 = v13[1];
    v16 = String.trimToNil()();
    *(v0 + 392) = v16;
    if (v16.value._object)
    {
      if (*(*(v0 + 336) + 16) > 1u)
      {
        if (*(*(v0 + 336) + 16) == 2)
        {
          v17 = ".askToBuyRequest";
          if (qword_27DAA0508 != -1)
          {
            swift_once();
          }

          v18 = &qword_27DAA17D8;
LABEL_18:
          v22 = *v18;
          *(v0 + 408) = v17;
          *(v0 + 416) = v22;
          sub_22F0CFF1C();
          v23 = swift_task_alloc();
          *(v0 + 424) = v23;
          *v23 = v0;
          v23[1] = sub_22F048290;

          JUMPOUT(0x22F02D6A0);
        }
      }

      else if (*(*(v0 + 336) + 16))
      {
        v17 = "d";
        if (qword_27DAA0510 != -1)
        {
          swift_once();
        }

        v18 = &qword_27DAA17E0;
        goto LABEL_18;
      }

      v19 = *(v0 + 248);

      v21 = 0xD000000000000013;
      v20 = 0x800000022F0DE3E0;
    }

    else
    {
      v19 = *(v0 + 248);
      v20 = 0x800000022F0DE3B0;
      v21 = 0xD000000000000020;
    }

    _s6People0A6ErrorsO11createError_4codeSo7NSErrorCSS_SitFZ_0(v21, v20, 500);
    swift_willThrow();
    sub_22F01DF14(v19, type metadata accessor for ResolvedFamily);
LABEL_23:
    v24 = *(v0 + 312);
    v25 = *(v0 + 320);
    v27 = *(v0 + 296);
    v26 = *(v0 + 304);
    v29 = *(v0 + 280);
    v28 = *(v0 + 288);
    v31 = *(v0 + 264);
    v30 = *(v0 + 272);
    v34 = *(v0 + 256);
    v35 = *(v0 + 248);
    v36 = *(v0 + 240);
    v37 = *(v0 + 232);
    v38 = *(v0 + 208);
    v39 = *(v0 + 200);
    v40 = *(v0 + 192);
    v41 = *(v0 + 184);
    sub_22F01DF14(*(v0 + 336), type metadata accessor for MessageDetails);

    v32 = *(v0 + 8);

    __asm { BRAA            X1, X16 }
  }

  v12 = *(v0 + 368);
  sub_22F04A06C(*(v0 + 200), *(v0 + 256), type metadata accessor for ResolvedFamily);

  return MEMORY[0x2822009F8](sub_22F047C80, v12, 0);
}

uint64_t sub_22F047C80()
{
  v1 = [**(v0 + 256) dsid];
  if (v1)
  {
    v2 = *(v0 + 368);
    v3 = *(v0 + 296);
    v4 = *(v0 + 256);
    v5 = *(v0 + 216);
    v6 = *(v0 + 224);
    v7 = v1;
    v8 = [v1 integerValue];
    sub_22F040184(v4, v3, type metadata accessor for ResolvedFamily);
    (*(v6 + 56))(v3, 0, 1, v5);
    swift_beginAccess();
    sub_22F046214(v3, v8);
    swift_endAccess();
  }

  return MEMORY[0x2822009F8](sub_22F047DAC, 0, 0);
}

uint64_t sub_22F047DAC()
{
  v1 = *(v0 + 312);
  v2 = *(v0 + 256);
  sub_22F003A4C(*(v0 + 208), &qword_27DAA1760, &unk_22F0D77D8);
  sub_22F04A06C(v2, v1, type metadata accessor for ResolvedFamily);
  v3 = *(v0 + 480);
  v4 = *(v0 + 336);
  v5 = *(v0 + 312);
  v6 = *(v0 + 264);
  v7 = *(v0 + 216);
  v8 = *(v0 + 224);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  v9 = *(v8 + 56);
  v9(v5, 0, 1, v7);
  sub_22F04A06C(v5, v6, type metadata accessor for ResolvedFamily);
  sub_22F003A4C(v4 + v3, &qword_27DAA1448, &unk_22F0D6640);
  sub_22F04A06C(v6, v4 + v3, type metadata accessor for ResolvedFamily);
  v9(v4 + v3, 0, 1, v7);
  v11 = *(v0 + 344);
  v10 = *(v0 + 352);
  v12 = *(v0 + 288);
  v13 = *(v0 + 216);
  sub_22F049FF4(*(v0 + 336) + *(v0 + 480), v12, &qword_27DAA1448, &unk_22F0D6640);
  if (v11(v12, 1, v13) == 1)
  {
    sub_22F003A4C(*(v0 + 288), &qword_27DAA1448, &unk_22F0D6640);
    _s6People0A6ErrorsO11createError_4codeSo7NSErrorCSS_SitFZ_0(0xD000000000000020, 0x800000022F0DE380, 500);
    swift_willThrow();
LABEL_19:
    v29 = *(v0 + 312);
    v30 = *(v0 + 320);
    v32 = *(v0 + 296);
    v31 = *(v0 + 304);
    v34 = *(v0 + 280);
    v33 = *(v0 + 288);
    v36 = *(v0 + 264);
    v35 = *(v0 + 272);
    v38 = *(v0 + 256);
    v39 = *(v0 + 248);
    v40 = *(v0 + 240);
    v41 = *(v0 + 232);
    v42 = *(v0 + 208);
    v43 = *(v0 + 200);
    v44 = *(v0 + 192);
    v45 = *(v0 + 184);
    sub_22F01DF14(*(v0 + 336), type metadata accessor for MessageDetails);

    v37 = *(v0 + 8);

    return v37();
  }

  v14 = *(v0 + 336);
  sub_22F04A06C(*(v0 + 288), *(v0 + 248), type metadata accessor for ResolvedFamily);
  v15 = *v14;
  v16 = v14[1];
  v17 = String.trimToNil()();
  *(v0 + 392) = v17;
  if (!v17.value._object)
  {
    v23 = *(v0 + 248);
    v24 = 0x800000022F0DE3B0;
    v25 = 0xD000000000000020;
LABEL_18:
    _s6People0A6ErrorsO11createError_4codeSo7NSErrorCSS_SitFZ_0(v25, v24, 500);
    swift_willThrow();
    sub_22F01DF14(v23, type metadata accessor for ResolvedFamily);
    goto LABEL_19;
  }

  if (*(*(v0 + 336) + 16) > 1u)
  {
    if (*(*(v0 + 336) + 16) == 2)
    {
      countAndFlagsBits = v17.value._countAndFlagsBits;
      object = v17.value._object;
      v21 = ".askToBuyRequest";
      if (qword_27DAA0508 != -1)
      {
        swift_once();
      }

      v20 = 0xD000000000000022;
      v22 = &qword_27DAA17D8;
      goto LABEL_14;
    }

    goto LABEL_17;
  }

  if (!*(*(v0 + 336) + 16))
  {
LABEL_17:
    v23 = *(v0 + 248);

    v25 = 0xD000000000000013;
    v24 = 0x800000022F0DE3E0;
    goto LABEL_18;
  }

  countAndFlagsBits = v17.value._countAndFlagsBits;
  object = v17.value._object;
  v20 = 0xD000000000000020;
  v21 = "d";
  if (qword_27DAA0510 != -1)
  {
    swift_once();
  }

  v22 = &qword_27DAA17E0;
LABEL_14:
  v26 = *v22;
  *(v0 + 408) = v21;
  *(v0 + 416) = v26;
  sub_22F0CFF1C();
  v27 = swift_task_alloc();
  *(v0 + 424) = v27;
  *v27 = v0;
  v27[1] = sub_22F048290;

  return sub_22F02D6A0(countAndFlagsBits, object, v20, v21 | 0x8000000000000000, v26);
}

uint64_t sub_22F048290(uint64_t a1)
{
  v2 = *(*v1 + 424);
  v3 = *(*v1 + 416);
  v4 = *(*v1 + 408);
  v6 = *v1;
  *(*v1 + 432) = a1;

  return MEMORY[0x2822009F8](sub_22F0483CC, 0, 0);
}

uint64_t sub_22F0483CC()
{
  v1 = v0[54];
  v2 = v0[50];
  if (!*(v1 + 16))
  {
    v28 = v0[49];
    v29 = v0[31];
    v30 = v0[54];

    sub_22F0D152C();

    v163 = 0xD000000000000027;
    v164 = 0x800000022F0DE500;
    v31 = v28;
    v32 = v2;
LABEL_19:
    MEMORY[0x2318FD2C0](v31, v32);

    _s6People0A6ErrorsO11createError_4codeSo7NSErrorCSS_SitFZ_0(v163, v164, 500);

    swift_willThrow();
LABEL_20:
    sub_22F01DF14(v29, type metadata accessor for ResolvedFamily);
    v36 = v0[39];
    v37 = v0[40];
    v39 = v0[37];
    v38 = v0[38];
    v41 = v0[35];
    v40 = v0[36];
    v43 = v0[33];
    v42 = v0[34];
    v144 = v0[32];
    v146 = v0[31];
    v148 = v0[30];
    v150 = v0[29];
    v152 = v0[26];
    v154 = v0[25];
    v156 = v0[24];
    v158 = v0[23];
    sub_22F01DF14(v0[42], type metadata accessor for MessageDetails);

    v44 = v0[1];
    goto LABEL_21;
  }

  v3 = v0[50];

  v4 = *MEMORY[0x277CC24B8];
  v5 = sub_22F0D0CAC();
  if (!*(v1 + 16))
  {
    v33 = v0[54];

LABEL_18:

    v29 = v0[31];
    v163 = 0x69662074276E6143;
    v164 = 0xEB0000000020646ELL;
    v31 = sub_22F0D0CAC();
    goto LABEL_19;
  }

  v7 = sub_22EFFDA80(v5, v6);
  v9 = v8;

  v10 = v0[54];
  if ((v9 & 1) == 0)
  {
    v34 = v0[54];
    goto LABEL_18;
  }

  v11 = *(*(v10 + 56) + 8 * v7);
  swift_unknownObjectRetain();
  objc_opt_self();
  v12 = swift_dynamicCastObjCClass();
  if (!v12)
  {
    v35 = v0[54];
    swift_unknownObjectRelease();
    goto LABEL_18;
  }

  v13 = v0[42];
  v0[55] = [v12 integerValue];
  if (*(v13 + 16) <= 1u)
  {
    if (*(v13 + 16))
    {
      v14 = *MEMORY[0x277CC2450];
      v15 = sub_22F0D0CAC();
      if (*(v1 + 16))
      {
        v17 = v0[54];
        v18 = sub_22EFFDA80(v15, v16);
        v20 = v19;

        if (v20)
        {
          v21 = *(*(v10 + 56) + 8 * v18);
          swift_unknownObjectRetain();
          objc_opt_self();
          v22 = swift_dynamicCastObjCClass();
          if (v22)
          {
            v23 = [v22 intValue];
            switch(v23)
            {
              case 3u:
                v65 = v0[41];
                v24 = v0[42];
                swift_unknownObjectRelease();
                v26 = *(v65 + 44);
                v27 = 2;
                break;
              case 2u:
                v64 = v0[41];
                v24 = v0[42];
                swift_unknownObjectRelease();
                v26 = *(v64 + 44);
                v27 = 3;
                break;
              case 1u:
                v25 = v0[41];
                v24 = v0[42];
                swift_unknownObjectRelease();
                v26 = *(v25 + 44);
                v27 = 1;
                break;
              default:
                v109 = v0[54];
                v29 = v0[31];

                _s6People0A6ErrorsO11createError_4codeSo7NSErrorCSS_SitFZ_0(0xD000000000000014, 0x800000022F0DE420, 500);
                swift_willThrow();
                swift_unknownObjectRelease();
                goto LABEL_71;
            }

            *(v24 + v26) = v27;
          }

          else
          {
            swift_unknownObjectRelease();
          }
        }
      }

      else
      {
      }

      if (*(v0[42] + *(v0[41] + 44)) == 1)
      {
        v66 = v0[54];

LABEL_51:
        swift_unknownObjectRelease();

        v69 = v0[31];
LABEL_52:
        sub_22F01DF14(v69, type metadata accessor for ResolvedFamily);
        v70 = v0[42];
        v71 = v0[39];
        v72 = v0[40];
        v74 = v0[37];
        v73 = v0[38];
        v76 = v0[35];
        v75 = v0[36];
        v77 = v0[34];
        v145 = v0[33];
        v147 = v0[32];
        v149 = v0[31];
        v151 = v0[30];
        v153 = v0[29];
        v155 = v0[26];
        v157 = v0[25];
        v159 = v0[24];
        v161 = v0[23];
        sub_22F040184(v70, v0[20], type metadata accessor for MessageDetails);
        sub_22F01DF14(v70, type metadata accessor for MessageDetails);

        v44 = v0[1];
LABEL_21:

        __asm { BRAA            X1, X16 }
      }

      v67 = sub_22F0D188C();

      if (v67)
      {
        v68 = v0[54];
        goto LABEL_51;
      }

      v78 = *MEMORY[0x277CC2460];
      v79 = sub_22F0D0CAC();
      if (*(v1 + 16))
      {
        v81 = sub_22EFFDA80(v79, v80);
        v83 = v82;

        v84 = v0[54];
        if (v83)
        {
          v85 = *(*(v10 + 56) + 8 * v81);
          swift_unknownObjectRetain();

          objc_opt_self();
          v86 = swift_dynamicCastObjCClass();
          if (v86)
          {
            v87 = v0[31];
            v88 = v86;
            v89 = ResolvedFamily.approverByDSID(with:)([v86 integerValue]);
            if (v89)
            {

              v90 = [v88 integerValue];
              goto LABEL_58;
            }

            v29 = v0[31];
            v113 = "No approver found";
            v112 = 0xD000000000000013;
            goto LABEL_96;
          }

          swift_unknownObjectRelease();
          goto LABEL_68;
        }

        v97 = v0[54];
      }

      else
      {
        v96 = v0[54];
      }

LABEL_68:
      v29 = v0[31];
      v63 = "Invalid approval time";
      v59 = 0xD000000000000011;
      goto LABEL_69;
    }

LABEL_32:
    v57 = v0[54];
    v29 = v0[31];

    v58 = 0x800000022F0DD7C0;
    v59 = 0xD000000000000014;
LABEL_70:
    _s6People0A6ErrorsO11createError_4codeSo7NSErrorCSS_SitFZ_0(v59, v58, 500);
    swift_willThrow();
LABEL_71:
    swift_unknownObjectRelease();
    goto LABEL_20;
  }

  if (*(v13 + 16) != 2)
  {
    goto LABEL_32;
  }

  v45 = *MEMORY[0x277CC2450];
  v46 = sub_22F0D0CAC();
  if (!*(v1 + 16))
  {
    v60 = v0[54];

LABEL_38:

    v29 = v0[31];
    v63 = "Invalid eventSource";
    v59 = 0xD000000000000010;
LABEL_69:
    v58 = v63 | 0x8000000000000000;
    goto LABEL_70;
  }

  v48 = sub_22EFFDA80(v46, v47);
  v50 = v49;

  if ((v50 & 1) == 0)
  {
    v61 = v0[54];
    goto LABEL_38;
  }

  v51 = *(*(v10 + 56) + 8 * v48);
  swift_unknownObjectRetain();
  objc_opt_self();
  v52 = swift_dynamicCastObjCClass();
  if (!v52)
  {
    v62 = v0[54];
    swift_unknownObjectRelease();
    goto LABEL_38;
  }

  v53 = [v52 intValue];
  switch(v53)
  {
    case 3u:
      v98 = v0;
      v100 = v0 + 41;
      v99 = v0[41];
      *(v100[1] + *(v99 + 44)) = 2;
      v143 = v98;
      v101 = v98[54];
      if (*(v1 + 16))
      {
        v102 = v98[54];
        v103 = sub_22EFFDA80(0xD000000000000022, 0x800000022F0DCFB0);
        if (v104)
        {
          v105 = *(*(v10 + 56) + 8 * v103);
          swift_unknownObjectRetain();
          objc_opt_self();
          v106 = swift_dynamicCastObjCClass();
          if (v106)
          {
            v107 = v143[42];
            v108 = [v106 intValue];
            *(v107 + *(v99 + 44)) = 2;
            if (v108 != 3 && v108 != 2)
            {
              v0 = v143;
              if (v108 != 1)
              {
                v141 = v143[54];
                v29 = v143[31];

                _s6People0A6ErrorsO11createError_4codeSo7NSErrorCSS_SitFZ_0(0xD000000000000015, 0x800000022F0DE4A0, 500);
                swift_willThrow();
                swift_unknownObjectRelease();
                swift_unknownObjectRelease();
                swift_unknownObjectRelease();
                goto LABEL_20;
              }
            }

            v160 = v143[41];
            v162 = v143[42];
            type metadata accessor for DaemonConnection();
            ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
            v135 = [objc_opt_self() bundleForClass_];
            v136 = sub_22F0D031C();
            v138 = v137;

            swift_unknownObjectRelease();
            v139 = (v162 + *(v160 + 68));
            v140 = v139[1];

            *v139 = v136;
            v139[1] = v138;
            v0 = v143;
            goto LABEL_42;
          }

          v0 = v143;
          v133 = v143[54];
          swift_unknownObjectRelease();
        }

        else
        {
          v0 = v143;
          v131 = v143[54];
        }
      }

      else
      {
        v0 = v98;
      }

      v29 = v0[31];
      v113 = "Family update failed";
      v112 = 0xD000000000000017;
LABEL_96:
      v111 = v113 | 0x8000000000000000;
      goto LABEL_97;
    case 2u:
      v54 = v0[42];
      v55 = *(v0[41] + 44);
      v56 = 3;
      break;
    case 1u:
      v54 = v0[42];
      v55 = *(v0[41] + 44);
      v56 = 1;
      break;
    default:
      v110 = v0[54];
      v29 = v0[31];

      v111 = 0x800000022F0DE420;
      v112 = 0xD000000000000014;
LABEL_97:
      _s6People0A6ErrorsO11createError_4codeSo7NSErrorCSS_SitFZ_0(v112, v111, 500);
      swift_willThrow();
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      goto LABEL_20;
  }

  *(v54 + v55) = v56;
LABEL_42:
  if (*(v0[42] + *(v0[41] + 44)) == 1)
  {

LABEL_85:
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    v115 = v0[54];
    v116 = v0[31];

    v69 = v116;
    goto LABEL_52;
  }

  v114 = sub_22F0D188C();

  if (v114)
  {
    goto LABEL_85;
  }

  v117 = *MEMORY[0x277CC2460];
  v118 = sub_22F0D0CAC();
  if (!*(v1 + 16))
  {
    v129 = v0[31];
    v130 = v0[54];

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    v69 = v129;
    goto LABEL_52;
  }

  v120 = sub_22EFFDA80(v118, v119);
  v122 = v121;

  v123 = v0[54];
  if ((v122 & 1) == 0)
  {
    v126 = v0[31];
    v132 = v0[54];

LABEL_99:
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    v69 = v126;
    goto LABEL_52;
  }

  v124 = *(*(v10 + 56) + 8 * v120);
  swift_unknownObjectRetain();

  objc_opt_self();
  v125 = swift_dynamicCastObjCClass();
  v126 = v0[31];
  if (!v125)
  {
    swift_unknownObjectRelease();
    goto LABEL_99;
  }

  v127 = v125;
  v128 = ResolvedFamily.approverByDSID(with:)([v125 integerValue]);
  if (!v128)
  {
    v29 = v0[31];
    _s6People0A6ErrorsO11createError_4codeSo7NSErrorCSS_SitFZ_0(0xD000000000000013, 0x800000022F0DE440, 500);
    swift_willThrow();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    goto LABEL_20;
  }

  v90 = [v127 integerValue];
  swift_unknownObjectRelease();
LABEL_58:
  v0[56] = v90;
  v91 = v0[41];
  v92 = v0[42];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  v93 = v92 + *(v91 + 40);
  *v93 = v90;
  *(v93 + 8) = 0;
  if (qword_280CBEC28 != -1)
  {
    swift_once();
  }

  v94 = qword_280CBEC30;
  v0[10] = type metadata accessor for ContactFetcher();
  v0[11] = &protocol witness table for ContactFetcher;
  v0[7] = v94;
  v95 = qword_27DAA0688;
  sub_22F0CFFAC();
  if (v95 != -1)
  {
    swift_once();
  }

  v0[57] = qword_27DAA2360;

  return MEMORY[0x2822009F8](sub_22F0492A0);
}