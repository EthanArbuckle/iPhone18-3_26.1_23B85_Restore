__n128 sub_26465C570@<Q0>(uint64_t a1@<X8>, double a2@<D0>)
{
  *&v12 = _s15SafetyMonitorUI0aB11UIUtilitiesC35initiatorRemoveExtraTimeButtonTitle4withSSSd_tFZ_0(a2);
  *(&v12 + 1) = v3;
  sub_264613FC4();
  v4 = sub_264784E44();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  sub_264785504();
  sub_264784314();
  *a1 = v4;
  *(a1 + 8) = v6;
  *(a1 + 16) = v8 & 1;
  *(a1 + 24) = v10;
  *(a1 + 96) = v16;
  *(a1 + 112) = v17;
  *(a1 + 128) = v18;
  *(a1 + 32) = v12;
  *(a1 + 48) = v13;
  result = v15;
  *(a1 + 64) = v14;
  *(a1 + 80) = v15;
  return result;
}

uint64_t sub_26465C65C@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v46 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76138, &qword_264789CD0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v39 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76140, &qword_264789CD8);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v45 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v44 = &v39 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v43 = &v39 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v42 = &v39 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v41 = &v39 - v19;
  MEMORY[0x28223BE20](v18);
  v40 = &v39 - v20;
  v21 = swift_allocObject();
  v22 = a1[1];
  v21[1] = *a1;
  v21[2] = v22;
  v21[3] = a1[2];
  sub_26465D7D4(a1, v47);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76148, &qword_264789CE0);
  sub_26460CDF0(&qword_27FF76150, &qword_27FF76148, &qword_264789CE0);
  sub_264785334();
  sub_26460CDF0(&qword_27FF76158, &qword_27FF76138, &qword_264789CD0);
  sub_264785034();
  v23 = *(v4 + 8);
  v23(v7, v3);
  v24 = swift_allocObject();
  v25 = a1[1];
  v24[1] = *a1;
  v24[2] = v25;
  v24[3] = a1[2];
  sub_26465D7D4(a1, v47);
  sub_264785334();
  v26 = v41;
  sub_264785034();
  v23(v7, v3);
  v27 = swift_allocObject();
  v28 = a1[1];
  v27[1] = *a1;
  v27[2] = v28;
  v27[3] = a1[2];
  sub_26465D7D4(a1, v47);
  sub_264785334();
  v29 = v42;
  sub_264785034();
  v23(v7, v3);
  v30 = v40;
  v31 = v43;
  sub_26465D884(v40, v43);
  v32 = v44;
  sub_26465D884(v26, v44);
  v33 = v29;
  v34 = v29;
  v35 = v45;
  sub_26465D884(v33, v45);
  v36 = v46;
  sub_26465D884(v31, v46);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76160, &qword_264789CE8);
  sub_26465D884(v32, v36 + *(v37 + 48));
  sub_26465D884(v35, v36 + *(v37 + 64));
  sub_26460CD50(v34, &qword_27FF76140, &qword_264789CD8);
  sub_26460CD50(v26, &qword_27FF76140, &qword_264789CD8);
  sub_26460CD50(v30, &qword_27FF76140, &qword_264789CD8);
  sub_26460CD50(v35, &qword_27FF76140, &qword_264789CD8);
  sub_26460CD50(v32, &qword_27FF76140, &qword_264789CD8);
  return sub_26460CD50(v31, &qword_27FF76140, &qword_264789CD8);
}

uint64_t sub_26465CC0C(uint64_t a1)
{
  v1 = *(a1 + 16);
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_264783EE4();
}

uint64_t sub_26465CCB8(void *a1, void *a2, void *a3)
{
  if (*a1 != -1)
  {
    v4 = a2;
    v5 = a3;
    swift_once();
    a2 = v4;
    a3 = v5;
  }

  v6 = *a2;
  v7 = *a3;
  sub_264613FC4();

  return sub_2647852D4();
}

__n128 sub_26465CD54@<Q0>(uint64_t a1@<X8>)
{
  if (qword_27FF752E0 != -1)
  {
    swift_once();
  }

  v10 = xmmword_27FF79178;
  sub_264613FC4();

  v2 = sub_264784E44();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  sub_264785504();
  sub_264784314();
  *a1 = v2;
  *(a1 + 8) = v4;
  *(a1 + 16) = v6 & 1;
  *(a1 + 24) = v8;
  *(a1 + 96) = v14;
  *(a1 + 112) = v15;
  *(a1 + 128) = v16;
  *(a1 + 32) = v10;
  *(a1 + 48) = v11;
  result = v13;
  *(a1 + 64) = v12;
  *(a1 + 80) = v13;
  return result;
}

uint64_t sub_26465CE84@<X0>(char *a1@<X8>)
{
  v2 = v1[1];
  v4[0] = *v1;
  v4[1] = v2;
  v4[2] = v1[2];
  return sub_26465AAA0(v4, a1);
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_26465CECC(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_26465CF14(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

unint64_t sub_26465CF74()
{
  result = qword_27FF75FC0;
  if (!qword_27FF75FC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF75FC8, &qword_264789B38);
    sub_26460CDF0(&qword_27FF75FD0, &qword_27FF75FD8, &qword_264789B40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF75FC0);
  }

  return result;
}

unint64_t sub_26465D02C()
{
  result = qword_27FF76000;
  if (!qword_27FF76000)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF754B8, &qword_264787630);
    sub_26465D3B4(&qword_27FF76008, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF76000);
  }

  return result;
}

unint64_t sub_26465D0E8()
{
  result = qword_27FF76018;
  if (!qword_27FF76018)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF76020, &qword_264789B70);
    sub_26460CDF0(&qword_27FF76028, &qword_27FF76030, &qword_264789B78);
    sub_26460CDF0(&qword_27FF76038, &qword_27FF76040, &unk_264789B80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF76018);
  }

  return result;
}

unint64_t sub_26465D1CC()
{
  result = qword_27FF76048;
  if (!qword_27FF76048)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF75FF8, &qword_264789B68);
    sub_26465D250();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF76048);
  }

  return result;
}

unint64_t sub_26465D250()
{
  result = qword_27FF76050;
  if (!qword_27FF76050)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF76058, &qword_26478C060);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF76050);
  }

  return result;
}

uint64_t sub_26465D2D4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75FE0, &unk_264789B48);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26465D344(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75FE0, &unk_264789B48);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_26465D3B4(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_26465D40C()
{
  result = qword_27FF760B8;
  if (!qword_27FF760B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF760B8);
  }

  return result;
}

unint64_t sub_26465D460()
{
  result = qword_27FF760C0;
  if (!qword_27FF760C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF760B0, &qword_264789C48);
    sub_26465D524();
    sub_26465D40C();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF760C0);
  }

  return result;
}

unint64_t sub_26465D524()
{
  result = qword_27FF760C8;
  if (!qword_27FF760C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF760C8);
  }

  return result;
}

unint64_t sub_26465D578()
{
  result = qword_27FF760D8;
  if (!qword_27FF760D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF76080, &qword_264789BF0);
    sub_26460CDF0(&qword_27FF760E0, &qword_27FF760E8, &qword_264789C50);
    sub_26460CDF0(&qword_27FF760F0, &qword_27FF760F8, &qword_264789C58);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF760D8);
  }

  return result;
}

uint64_t sub_26465D65C(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    sub_26465D3B4(&qword_27FF76008, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_26465D720()
{
  result = qword_27FF76128;
  if (!qword_27FF76128)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF75AA0, &qword_2647888F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF76128);
  }

  return result;
}

uint64_t sub_26465D884(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76140, &qword_264789CD8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroyTm_1()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[5];

  v4 = v0[6];

  v5 = v0[7];

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_26465D94C@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(v2 + 32);
  v8 = *a1;
  v4 = v8;
  result = sub_2647145BC(&v8);
  *a2 = v4;
  *(a2 + 8) = result;
  *(a2 + 16) = v7 & 1;
  *(a2 + 17) = v4;
  *(a2 + 18) = 1;
  return result;
}

unint64_t sub_26465D9AC()
{
  result = qword_27FF76180;
  if (!qword_27FF76180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF76180);
  }

  return result;
}

uint64_t sub_26465DA2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76190, &unk_264789D60);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_26465DB08(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76190, &unk_264789D60);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

uint64_t type metadata accessor for InitiatorConfigurationSheet()
{
  result = qword_27FF76198;
  if (!qword_27FF76198)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_26465DC18()
{
  sub_26465DD44();
  if (v0 <= 0x3F)
  {
    sub_26465DD9C();
    if (v1 <= 0x3F)
    {
      sub_26465DE30();
      if (v2 <= 0x3F)
      {
        sub_26465DE94(319, &qword_27FF761C0, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);
        if (v3 <= 0x3F)
        {
          sub_26465DE94(319, &qword_27FF761C8, MEMORY[0x277CE0F78], MEMORY[0x277D83D88]);
          if (v4 <= 0x3F)
          {
            type metadata accessor for SessionViewModel(319);
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

void sub_26465DD44()
{
  if (!qword_27FF761A8)
  {
    sub_2647840D4();
    v0 = sub_264783F94();
    if (!v1)
    {
      atomic_store(v0, &qword_27FF761A8);
    }
  }
}

void sub_26465DD9C()
{
  if (!qword_27FF761B0)
  {
    type metadata accessor for UserSessionConfiguration();
    sub_264664FBC(&qword_27FF75F58, type metadata accessor for UserSessionConfiguration);
    v0 = sub_264783FC4();
    if (!v1)
    {
      atomic_store(v0, &qword_27FF761B0);
    }
  }
}

void sub_26465DE30()
{
  if (!qword_27FF761B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF756E0, &qword_264787DE0);
    v0 = sub_264785324();
    if (!v1)
    {
      atomic_store(v0, &qword_27FF761B8);
    }
  }
}

void sub_26465DE94(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_26465DF00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = sub_264783E24();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  *a3 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75688, &unk_264789EA0);
  swift_storeEnumTagMultiPayload();
  v11 = type metadata accessor for InitiatorConfigurationSheet();
  v12 = (a3 + v11[6]);
  v25 = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF756E0, &qword_264787DE0);
  sub_2647852E4();
  v13 = v27;
  *v12 = v26;
  v12[1] = v13;
  v14 = a3 + v11[7];
  LOBYTE(v25) = 0;
  sub_2647852E4();
  v15 = v27;
  *v14 = v26;
  *(v14 + 1) = v15;
  v16 = a3 + v11[8];
  LOBYTE(v25) = 0;
  sub_2647852E4();
  v17 = v27;
  *v16 = v26;
  *(v16 + 1) = v17;
  v18 = v11[9];
  *(a3 + v11[10]) = a1;
  *(a3 + v18) = a2;
  v19 = a3 + v11[5];
  *v19 = sub_264665078;
  *(v19 + 1) = a1;
  v19[16] = 0;

  sub_264783DF4();
  v20 = sub_264783E14();
  v21 = sub_2647859F4();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&dword_264605000, v20, v21, "Using existing configuration to setup configuration sheet", v22, 2u);
    MEMORY[0x266740650](v22, -1, -1);
  }

  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_26465E168()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4();

  sub_2647164C0(v2);

  type metadata accessor for UserSessionConfiguration();
  swift_dynamicCast();
  return v1;
}

uint64_t sub_26465E220@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_264784574();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75688, &unk_264789EA0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = (&v17 - v11);
  sub_26460CCE8(v2, &v17 - v11, &qword_27FF75688, &unk_264789EA0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_2647840D4();
    return (*(*(v13 - 8) + 32))(a1, v12, v13);
  }

  else
  {
    v15 = *v12;
    sub_2647859E4();
    v16 = sub_264784BE4();
    sub_264783DA4();

    sub_264784564();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v8, v4);
  }
}

uint64_t sub_26465E420@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v96 = a2;
  v3 = type metadata accessor for InitiatorConfigurationSheet();
  v4 = v3 - 8;
  v94 = *(v3 - 8);
  v5 = *(v94 + 64);
  MEMORY[0x28223BE20](v3);
  v98 = v6;
  v95 = &v74 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2647845A4();
  v92 = *(v7 - 1);
  v93 = v7;
  v8 = *(v92 + 64);
  MEMORY[0x28223BE20](v7);
  v91 = &v74 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = sub_264784954();
  v77 = *(v80 - 8);
  v10 = *(v77 + 64);
  MEMORY[0x28223BE20](v80);
  v76 = &v74 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76258, &unk_264789E40);
  v12 = *(v74 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v74);
  v15 = &v74 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76240, &qword_264789E38);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16);
  v19 = &v74 - v18;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76238, &qword_264789E30);
  v75 = *(v79 - 8);
  v20 = *(v75 + 64);
  MEMORY[0x28223BE20](v79);
  v22 = &v74 - v21;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76230, &qword_264789E28);
  v81 = *(v83 - 8);
  v23 = *(v81 + 64);
  MEMORY[0x28223BE20](v83);
  v78 = &v74 - v24;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76228, &qword_264789E20);
  v84 = *(v85 - 8);
  v25 = *(v84 + 64);
  MEMORY[0x28223BE20](v85);
  v82 = &v74 - v26;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76218, &qword_264789E10);
  v87 = *(v88 - 8);
  v27 = *(v87 + 64);
  MEMORY[0x28223BE20](v88);
  v86 = &v74 - v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76208, &qword_264789E00);
  v89 = *(v29 - 8);
  v90 = v29;
  v30 = *(v89 + 64);
  MEMORY[0x28223BE20](v29);
  v97 = &v74 - v31;
  v100 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF762D0, &qword_264789E68);
  sub_26460CDF0(&qword_27FF762D8, &qword_27FF762D0, &qword_264789E68);
  sub_264784DA4();
  v32 = *(v4 + 44);
  v99 = a1;
  v33 = *(a1 + v32);
  KeyPath = swift_getKeyPath();
  if (v33)
  {
    v101 = v33;

    v33 = sub_2647840B4();
  }

  v35 = v74;
  (*(v12 + 16))(v19, v15, v74);
  v36 = &v19[*(v16 + 36)];
  *v36 = KeyPath;
  v36[1] = v33;
  (*(v12 + 8))(v15, v35);
  v37 = v76;
  sub_264784944();
  v38 = sub_26466405C();
  v39 = MEMORY[0x277CDE0D0];
  v40 = v80;
  sub_264785124();
  (*(v77 + 8))(v37, v40);
  sub_26460CD50(v19, &qword_27FF76240, &qword_264789E38);
  sub_264784C44();
  v101 = v16;
  v102 = v40;
  v103 = v38;
  v104 = v39;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v42 = v78;
  v43 = v79;
  sub_264784EE4();
  (*(v75 + 8))(v22, v43);
  if (qword_27FF75260 != -1)
  {
    swift_once();
  }

  v101 = qword_27FF79078;
  v102 = qword_27FF79080;
  sub_264613FC4();

  v44 = sub_264784E44();
  v46 = v45;
  v48 = v47;
  v101 = v43;
  v102 = OpaqueTypeConformance2;
  v49 = swift_getOpaqueTypeConformance2();
  v50 = v82;
  v51 = v83;
  sub_264784F44();
  sub_26460ECC4(v44, v46, v48 & 1);

  (*(v81 + 8))(v42, v51);
  v53 = v91;
  v52 = v92;
  v54 = v93;
  (*(v92 + 104))(v91, *MEMORY[0x277CDDDC0], v93);
  v101 = v51;
  v102 = v49;
  v55 = swift_getOpaqueTypeConformance2();
  v56 = v86;
  v57 = v85;
  sub_264785084();
  (*(v52 + 8))(v53, v54);
  v58 = (*(v84 + 8))(v50, v57);
  MEMORY[0x28223BE20](v58);
  v59 = v99;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76220, &qword_264789E18);
  v101 = v57;
  v102 = v55;
  v61 = swift_getOpaqueTypeConformance2();
  v62 = sub_26460CDF0(&qword_27FF76270, &qword_27FF76220, &qword_264789E18);
  v63 = v88;
  sub_2647850E4();
  (*(v87 + 8))(v56, v63);
  type metadata accessor for SafetyMonitorUINavigationPathItem();
  v93 = type metadata accessor for InitiatorConfigurationSheet;
  v64 = v59;
  v65 = v95;
  sub_2646646D8(v64, v95, type metadata accessor for InitiatorConfigurationSheet);
  v66 = (*(v94 + 80) + 16) & ~*(v94 + 80);
  v67 = swift_allocObject();
  sub_2646644E4(v65, v67 + v66);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76210, &qword_264789E08);
  v101 = v63;
  v102 = v60;
  v103 = v61;
  v104 = v62;
  swift_getOpaqueTypeConformance2();
  sub_264664FBC(&qword_27FF76278, type metadata accessor for SafetyMonitorUINavigationPathItem);
  sub_264664140();
  v68 = v96;
  v69 = v90;
  v70 = v97;
  sub_264785014();

  (*(v89 + 8))(v70, v69);
  sub_2646646D8(v99, v65, v93);
  v71 = swift_allocObject();
  sub_2646644E4(v65, v71 + v66);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF761E0, &qword_264789DF8);
  v73 = (v68 + *(result + 36));
  *v73 = sub_2646645C8;
  v73[1] = v71;
  v73[2] = 0;
  v73[3] = 0;
  return result;
}

uint64_t sub_26465EFFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v104 = a1;
  v107 = a2;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76388, &qword_26478A078);
  v91 = *(v94 - 8);
  v2 = *(v91 + 64);
  MEMORY[0x28223BE20](v94);
  v90 = &v90 - v3;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76390, &qword_26478A080);
  v4 = *(*(v92 - 8) + 64);
  MEMORY[0x28223BE20](v92);
  v93 = (&v90 - v5);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76398, &qword_26478A088);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v106 = &v90 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v105 = &v90 - v10;
  v102 = sub_2647848D4();
  v101 = *(v102 - 8);
  v11 = *(v101 + 64);
  MEMORY[0x28223BE20](v102);
  v13 = &v90 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF763A0, &qword_26478A090);
  v14 = *(*(v97 - 8) + 64);
  MEMORY[0x28223BE20](v97);
  v16 = &v90 - v15;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF763A8, &qword_26478A098);
  v17 = *(*(v98 - 8) + 64);
  MEMORY[0x28223BE20](v98);
  v19 = &v90 - v18;
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF763B0, &qword_26478A0A0);
  v99 = *(v100 - 8);
  v20 = *(v99 + 64);
  MEMORY[0x28223BE20](v100);
  v22 = &v90 - v21;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF763B8, &qword_26478A0A8);
  v23 = *(*(v95 - 8) + 64);
  MEMORY[0x28223BE20](v95);
  v25 = &v90 - v24;
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF763C0, &unk_26478A0B0);
  v26 = *(*(v96 - 8) + 64);
  v27 = MEMORY[0x28223BE20](v96);
  v103 = &v90 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x28223BE20](v27);
  v31 = &v90 - v30;
  MEMORY[0x28223BE20](v29);
  v108 = &v90 - v32;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF763C8, &qword_264790D40);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2647889B0;
  v34 = sub_264784BF4();
  *(inited + 32) = v34;
  v35 = sub_264784C14();
  *(inited + 33) = v35;
  v36 = sub_264784C04();
  sub_264784C04();
  if (sub_264784C04() != v34)
  {
    v36 = sub_264784C04();
  }

  sub_264784C04();
  if (sub_264784C04() != v35)
  {
    v36 = sub_264784C04();
  }

  *v16 = v36;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF763D0, &qword_26478A0C0);
  v38 = v104;
  sub_26465FED0(v104, &v16[*(v37 + 44)]);
  sub_26460CDF0(&qword_27FF763D8, &qword_27FF763A0, &qword_26478A090);
  sub_264785034();
  sub_26460CD50(v16, &qword_27FF763A0, &qword_26478A090);
  sub_2647848C4();
  sub_264664BCC();
  v39 = v102;
  sub_264784EF4();
  (*(v101 + 8))(v13, v39);
  sub_26460CD50(v19, &qword_27FF763A8, &qword_26478A098);
  v40 = v22;
  v41 = v38;
  (*(v99 + 32))(v25, v40, v100);
  v42 = &v25[*(v95 + 36)];
  v42[32] = 0;
  *v42 = 0u;
  *(v42 + 1) = 0u;
  *&v114 = sub_2647851A4();
  v43 = sub_2647853C4();
  sub_26460E7E4(v25, v31, &qword_27FF763B8, &qword_26478A0A8);
  *&v31[*(v96 + 36)] = v43;
  sub_26460E7E4(v31, v108, &qword_27FF763C0, &unk_26478A0B0);
  v44 = type metadata accessor for InitiatorConfigurationSheet();
  v45 = v41 + v44[5];
  v47 = *v45;
  v46 = *(v45 + 8);
  v48 = *(v45 + 16);
  type metadata accessor for UserSessionConfiguration();
  sub_264664FBC(&qword_27FF75F58, type metadata accessor for UserSessionConfiguration);
  sub_264783FA4();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4();

  if (v114 == 1)
  {
    v49 = *(v41 + v44[10]);

    sub_264783FB4();
    swift_getKeyPath();
    sub_264784194();

    v109 = v49;
    v110 = v114;
    v111 = v115;
    v112 = 0;
    v113 = 0;
    sub_264664E7C();
    sub_264664ED0();

    sub_264784874();
    v50 = v117;
    v51 = v115;
    v52 = v93;
    *v93 = v114;
    v52[1] = v51;
    v52[2] = v116;
    *(v52 + 48) = v50;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76418, &qword_26478A0F0);
    sub_264664DF0();
    sub_264664F24();
    v53 = v105;
    sub_264784874();

LABEL_12:
    v89 = 0;
    goto LABEL_13;
  }

  sub_264783FA4();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4();

  if (v114 == 2)
  {
    v54 = *(v41 + v44[10]);
    sub_264783FA4();
    v55 = (v41 + v44[6]);
    v57 = *v55;
    v56 = v55[1];
    v109 = v57;
    *&v110 = v56;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF761D8, &qword_264789DF0);
    sub_264785314();
    v58 = v114;
    v59 = v115;

    v60 = sub_264784174();
    v109 = v54;
    *&v110 = v60;
    v102 = v54;
    *(&v110 + 1) = v61;
    v111 = v58;
    v112 = v59;
    v113 = 1;
    sub_264664E7C();
    sub_264664ED0();

    sub_264784874();
    v62 = v117;
    v63 = v115;
    v64 = v44;
    v65 = v41;
    v66 = v93;
    *v93 = v114;
    v66[1] = v63;
    v66[2] = v116;
    *(v66 + 48) = v62;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76418, &qword_26478A0F0);
    sub_264664DF0();
    sub_264664F24();
    v53 = v105;
    v41 = v65;
    v44 = v64;
    sub_264784874();

    goto LABEL_12;
  }

  sub_264783FA4();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4();

  v53 = v105;
  if (v114 == 4)
  {
    v67 = *(v41 + v44[10]);
    *&v114 = sub_26474F59C();
    *(&v114 + 1) = v68;
    sub_264613FC4();
    *&v114 = sub_264784E44();
    *(&v114 + 1) = v69;
    LOBYTE(v115) = v70 & 1;
    *(&v115 + 1) = v71;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF763F8, &qword_26478A0D8);
    sub_264664CB4();
    v72 = v90;
    sub_264785474();
    v73 = v91;
    v74 = v94;
    (*(v91 + 16))(v93, v72, v94);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76418, &qword_26478A0F0);
    sub_264664DF0();
    sub_264664F24();
    sub_264784874();
    (*(v73 + 8))(v72, v74);
    goto LABEL_12;
  }

  v89 = 1;
LABEL_13:
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF763E8, &qword_26478A0C8);
  (*(*(v75 - 8) + 56))(v53, v89, 1, v75);
  v76 = (v41 + v44[6]);
  v78 = *v76;
  v77 = v76[1];
  v109 = v78;
  *&v110 = v77;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF761D8, &qword_264789DF0);
  sub_264785314();
  v79 = v114;
  v80 = v115;
  v81 = v108;
  v82 = v103;
  v83 = v53;
  sub_26460CCE8(v108, v103, &qword_27FF763C0, &unk_26478A0B0);
  v84 = v106;
  sub_26460CCE8(v53, v106, &qword_27FF76398, &qword_26478A088);
  v85 = v107;
  sub_26460CCE8(v82, v107, &qword_27FF763C0, &unk_26478A0B0);
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF763F0, &qword_26478A0D0);
  sub_26460CCE8(v84, v85 + *(v86 + 48), &qword_27FF76398, &qword_26478A088);
  v87 = v85 + *(v86 + 80);
  *v87 = v79;
  *(v87 + 16) = v80;

  sub_26460CD50(v83, &qword_27FF76398, &qword_26478A088);
  sub_26460CD50(v81, &qword_27FF763C0, &unk_26478A0B0);

  sub_26460CD50(v84, &qword_27FF76398, &qword_26478A088);
  return sub_26460CD50(v82, &qword_27FF763C0, &unk_26478A0B0);
}

uint64_t sub_26465FED0@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v33 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76440, &qword_26478A0F8);
  v29 = *(v3 - 8);
  v4 = *(v29 + 64);
  v5 = MEMORY[0x28223BE20](v3);
  v32 = v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v31 = v25 - v8;
  v9 = MEMORY[0x28223BE20](v7);
  v30 = v25 - v10;
  MEMORY[0x28223BE20](v9);
  v12 = v25 - v11;
  if (qword_27FF75278 != -1)
  {
    swift_once();
  }

  v13 = unk_27FF790B0;
  v28 = qword_27FF790A8;
  v38 = qword_27FF790A8;
  v39 = unk_27FF790B0;
  v14 = (a1 + *(type metadata accessor for InitiatorConfigurationSheet() + 20));
  v15 = *v14;
  v26 = v14[1];
  v27 = v15;
  v25[3] = *(v14 + 16);
  type metadata accessor for UserSessionConfiguration();
  sub_264664FBC(&qword_27FF75F58, type metadata accessor for UserSessionConfiguration);
  swift_bridgeObjectRetain_n();
  sub_264783FB4();
  swift_getKeyPath();
  sub_264784194();

  v34 = v36;
  v35 = v37;
  type metadata accessor for SMSessionType(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76448, &qword_26478A100);
  sub_264664FBC(&qword_27FF76450, type metadata accessor for SMSessionType);
  sub_26460CDF0(&qword_27FF76458, &qword_27FF76448, &qword_26478A100);
  sub_264613FC4();
  sub_2647853B4();
  v38 = v28;
  v39 = v13;
  sub_264783FB4();
  swift_getKeyPath();
  sub_264784194();

  v34 = v36;
  v35 = v37;
  v16 = v30;
  sub_2647853B4();
  v17 = v29;
  v18 = *(v29 + 16);
  v19 = v31;
  v18(v31, v12, v3);
  v20 = v32;
  v18(v32, v16, v3);
  v21 = v33;
  v18(v33, v19, v3);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76460, &qword_26478A108);
  v18(&v21[*(v22 + 48)], v20, v3);
  v23 = *(v17 + 8);
  v23(v16, v3);
  v23(v12, v3);
  v23(v20, v3);
  return (v23)(v19, v3);
}

double sub_264660388@<D0>(uint64_t a1@<X8>)
{
  v2 = [objc_opt_self() sharedApplication];
  [v2 userInterfaceLayoutDirection];

  type metadata accessor for ImageProvider();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v4 = [objc_opt_self() bundleForClass_];
  v5 = sub_264785714();
  v6 = [objc_opt_self() imageNamed:v5 inBundle:v4 withConfiguration:0];

  if (!v6)
  {
    [objc_allocWithZone(MEMORY[0x277D755B8]) init];
  }

  v7 = sub_264785254();
  sub_264785504();
  sub_264784314();
  sub_2647851A4();
  v8 = sub_2647853C4();
  *(a1 + 56) = v13;
  *(a1 + 72) = v14;
  *(a1 + 88) = v15;
  *(a1 + 104) = v16;
  result = *&v10;
  *(a1 + 8) = v10;
  *(a1 + 24) = v11;
  *a1 = v7;
  *(a1 + 40) = v12;
  *(a1 + 120) = v8;
  return result;
}

uint64_t sub_264660584@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a2;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76300, &qword_264789F10);
  v3 = *(*(v31 - 8) + 64);
  MEMORY[0x28223BE20](v31);
  v29 = v26 - v4;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76308, &qword_264789F18);
  v28 = *(v30 - 8);
  v5 = *(v28 + 64);
  MEMORY[0x28223BE20](v30);
  v7 = v26 - v6;
  v8 = sub_264784934();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76310, &qword_264789F20);
  v10 = *(v27 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v27);
  v13 = v26 - v12;
  sub_2647848F4();
  v34 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76318, &qword_264789F28);
  sub_2646647A8();
  sub_264783FE4();
  sub_264784904();
  v33 = a1;
  v26[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76338, &qword_264789F38);
  v14 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF76340, &unk_264789F40);
  v15 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF76348, &qword_264792100);
  v16 = sub_264664898();
  v17 = sub_264613FC4();
  v18 = sub_26460CDF0(&qword_27FF76368, &qword_27FF76348, &qword_264792100);
  v35 = v14;
  v36 = MEMORY[0x277D837D0];
  v37 = v15;
  v38 = MEMORY[0x277CE0BD8];
  v39 = v16;
  v40 = v17;
  v41 = v18;
  v42 = MEMORY[0x277CE0BC8];
  swift_getOpaqueTypeConformance2();
  sub_264783FE4();
  v19 = *(v31 + 48);
  v20 = v29;
  v21 = v27;
  (*(v10 + 16))(v29, v13, v27);
  v22 = v28;
  v23 = &v20[v19];
  v24 = v30;
  (*(v28 + 16))(v23, v7, v30);
  sub_264784754();
  (*(v22 + 8))(v7, v24);
  return (*(v10 + 8))(v13, v21);
}

uint64_t sub_26466096C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v18[1] = a2;
  v3 = type metadata accessor for InitiatorConfigurationSheet();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = sub_264783F44();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76330, &qword_264789F30);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = v18 - v13;
  sub_264783F24();
  sub_2646646D8(a1, v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for InitiatorConfigurationSheet);
  v15 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v16 = swift_allocObject();
  sub_2646644E4(v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v15);
  MEMORY[0x26673F080](v9, sub_264664B40, v16);
  sub_26460CDF0(&qword_27FF76328, &qword_27FF76330, &qword_264789F30);
  sub_264785034();
  return (*(v11 + 8))(v14, v10);
}

uint64_t sub_264660BDC(uint64_t a1)
{
  v19 = sub_264784574();
  v2 = *(v19 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v19);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75688, &unk_264789EA0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = (&v18 - v8);
  v10 = sub_2647840D4();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26460CCE8(a1, v9, &qword_27FF75688, &unk_264789EA0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v11 + 32))(v14, v9, v10);
  }

  else
  {
    v15 = *v9;
    sub_2647859E4();
    v16 = sub_264784BE4();
    sub_264783DA4();

    sub_264784564();
    swift_getAtKeyPath();

    (*(v2 + 8))(v5, v19);
  }

  sub_2647840C4();
  return (*(v11 + 8))(v14, v10);
}

uint64_t sub_264660E58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v34 = a2;
  v31 = type metadata accessor for InitiatorConfigurationSheet();
  v3 = *(v31 - 1);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v31);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_264783F44();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76330, &qword_264789F30);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v30 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76340, &unk_264789F40);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15);
  v18 = &v30 - v17;
  sub_264783F34();
  sub_2646646D8(a1, v5, type metadata accessor for InitiatorConfigurationSheet);
  v19 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v20 = swift_allocObject();
  sub_2646644E4(v5, v20 + v19);
  MEMORY[0x26673F080](v9, sub_264664950, v20);
  sub_26460CDF0(&qword_27FF76328, &qword_27FF76330, &qword_264789F30);
  sub_264785034();
  (*(v11 + 8))(v14, v10);
  LOBYTE(v5) = sub_2646618B4();
  KeyPath = swift_getKeyPath();
  v22 = swift_allocObject();
  *(v22 + 16) = v5 & 1;
  v32 = v15;
  v33 = v18;
  v23 = &v18[*(v15 + 36)];
  *v23 = KeyPath;
  v23[1] = sub_264664980;
  v23[2] = v22;
  if (qword_27FF752F0 != -1)
  {
    swift_once();
  }

  v37 = qword_27FF79198;
  v38 = qword_27FF791A0;
  v24 = a1 + *(v31 + 7);
  v25 = *v24;
  v26 = *(v24 + 8);
  v35 = v25;
  v36 = v26;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF762E0, &qword_26478C6E0);
  v27 = sub_264785314();
  v31 = &v30;
  MEMORY[0x28223BE20](v27);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76348, &qword_264792100);
  sub_264664898();
  sub_264613FC4();
  sub_26460CDF0(&qword_27FF76368, &qword_27FF76348, &qword_264792100);
  v28 = v33;
  sub_2647850A4();

  return sub_26460CD50(v28, &qword_27FF76340, &unk_264789F40);
}

uint64_t sub_264661344(uint64_t a1)
{
  v2 = sub_2647840D4();
  v41 = *(v2 - 8);
  v42 = v2;
  v3 = *(v41 + 64);
  MEMORY[0x28223BE20](v2);
  v40 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_264783E24();
  v44 = *(v5 - 8);
  v45 = v5;
  v6 = *(v44 + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v37 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v36 = &v35 - v9;
  v43 = type metadata accessor for InitiatorConfigurationSheet();
  v10 = (a1 + *(v43 + 20));
  v12 = *v10;
  v11 = v10[1];
  v13 = *(v10 + 16);
  type metadata accessor for UserSessionConfiguration();
  sub_264664FBC(&qword_27FF75F58, type metadata accessor for UserSessionConfiguration);
  sub_264783FA4();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4();

  v38 = v11;
  v39 = v12;
  if (*&v47 == 1)
  {
    sub_264783FA4();
    swift_getKeyPath();
    swift_getKeyPath();
    sub_264783ED4();

    if (v47 <= 28800.0)
    {
      v17 = 0;
    }

    else
    {
      v14 = [objc_opt_self() standardUserDefaults];
      v15 = sub_264785714();
      v16 = [v14 BOOLForKey_];

      v17 = v16 ^ 1;
    }
  }

  else
  {
    v17 = 0;
  }

  v18 = v43;
  v19 = a1;
  v20 = a1 + *(v43 + 28);
  v22 = *(v20 + 8);
  LOBYTE(v47) = *v20;
  v21 = LOBYTE(v47);
  v48 = v22;
  v46 = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF762E0, &qword_26478C6E0);
  sub_264785304();
  LOBYTE(v47) = v21;
  v48 = v22;
  sub_2647852F4();
  if (v46)
  {
    v23 = v37;
    sub_264783DF4();
    v24 = sub_264783E14();
    v25 = sub_2647859F4();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_264605000, v24, v25, "#Initiator, InitiatorConfigurationSheet, show exceeding max session duration alert", v26, 2u);
      MEMORY[0x266740650](v26, -1, -1);
    }

    return (*(v44 + 8))(v23, v45);
  }

  else
  {
    v28 = v36;
    sub_264783DF4();
    v29 = sub_264783E14();
    v30 = sub_2647859F4();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&dword_264605000, v29, v30, "#Initiator, InitiatorConfigurationSheet, saving user session configuration", v31, 2u);
      MEMORY[0x266740650](v31, -1, -1);
    }

    (*(v44 + 8))(v28, v45);
    v32 = *(v19 + *(v18 + 40));
    v33 = sub_264783FA4();
    swift_getKeyPath();
    swift_getKeyPath();
    v47 = *&v33;

    sub_264783EE4();
    sub_264629270();

    v34 = v40;
    sub_26465E220(v40);
    sub_2647840C4();
    return (*(v41 + 8))(v34, v42);
  }
}

uint64_t sub_2646618B4()
{
  v1 = type metadata accessor for InitiatorConfigurationSheet();
  v2 = (v0 + *(v1 + 20));
  v3 = *v2;
  v4 = v2[1];
  v5 = *(v2 + 16);
  type metadata accessor for UserSessionConfiguration();
  sub_264664FBC(&qword_27FF75F58, type metadata accessor for UserSessionConfiguration);
  sub_264783FA4();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4();

  if (v11 == 2)
  {
    sub_264783FA4();
    swift_getKeyPath();
    swift_getKeyPath();
    sub_264783ED4();

    sub_264783FA4();
    sub_264713490();
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  sub_264783FA4();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4();

  if (v11 == 4)
  {
    if ([objc_opt_self() zelkovaKahanaEnabled])
    {
      v8 = (v0 + *(v1 + 32));
      v12 = *v8;
      v13 = *(v8 + 1);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF762E0, &qword_26478C6E0);
      sub_2647852F4();
      if (!(v7 & 1 | ((v10 & 1) == 0)))
      {
        return 0;
      }
    }
  }

  else if ((v7 & 1) == 0)
  {
    return 0;
  }

  return 1;
}

uint64_t sub_264661B6C@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v32 = a1;
  v36 = a2;
  v2 = type metadata accessor for InitiatorConfigurationSheet();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76370, &unk_2647922D0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v31 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76378, &unk_264789F90);
  v10 = *(v9 - 8);
  v11 = v10[8];
  v12 = MEMORY[0x28223BE20](v9);
  v35 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v34 = &v31 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v33 = &v31 - v17;
  MEMORY[0x28223BE20](v16);
  v19 = &v31 - v18;
  if (qword_27FF75300 != -1)
  {
    swift_once();
  }

  v37 = qword_27FF791B8;
  v38 = unk_27FF791C0;
  v20 = sub_264783F44();
  v31 = *(*(v20 - 8) + 56);
  v31(v8, 1, 1, v20);
  sub_2646646D8(v32, &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for InitiatorConfigurationSheet);
  v21 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v22 = swift_allocObject();
  sub_2646644E4(&v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v22 + v21);
  sub_264613FC4();

  sub_264785364();
  if (qword_27FF75308 != -1)
  {
    swift_once();
  }

  v37 = qword_27FF791C8;
  v38 = unk_27FF791D0;
  v31(v8, 1, 1, v20);

  v23 = v33;
  sub_264785364();
  v24 = v10[2];
  v25 = v34;
  v24(v34, v19, v9);
  v26 = v35;
  v24(v35, v23, v9);
  v27 = v36;
  v24(v36, v25, v9);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76380, &qword_2647922E0);
  v24(&v27[*(v28 + 48)], v26, v9);
  v29 = v10[1];
  v29(v23, v9);
  v29(v19, v9);
  v29(v26, v9);
  return (v29)(v25, v9);
}

uint64_t sub_264662004(uint64_t a1)
{
  v2 = sub_2647840D4();
  v23 = *(v2 - 8);
  v24 = v2;
  v3 = *(v23 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_264783E24();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_264783DF4();
  v11 = sub_264783E14();
  v12 = sub_2647859B4();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_264605000, v11, v12, "#Initiator, InitiatorConfigurationSheet, tapped on max duration button", v13, 2u);
    MEMORY[0x266740650](v13, -1, -1);
  }

  (*(v7 + 8))(v10, v6);
  v14 = type metadata accessor for InitiatorConfigurationSheet();
  v15 = (a1 + *(v14 + 20));
  v16 = *v15;
  v17 = v15[1];
  v18 = *(v15 + 16);
  type metadata accessor for UserSessionConfiguration();
  sub_264664FBC(&qword_27FF75F58, type metadata accessor for UserSessionConfiguration);
  sub_264783FA4();
  swift_getKeyPath();
  swift_getKeyPath();
  v25 = 0x40DC200000000000;
  sub_264783EE4();
  v19 = *(a1 + *(v14 + 40));
  v20 = sub_264783FA4();
  swift_getKeyPath();
  swift_getKeyPath();
  v25 = v20;

  sub_264783EE4();
  sub_264629270();

  sub_26465E220(v5);
  sub_2647840C4();
  return (*(v23 + 8))(v5, v24);
}

uint64_t sub_264662320@<X0>(uint64_t a1@<X8>)
{
  if (qword_27FF752F8 != -1)
  {
    swift_once();
  }

  sub_264613FC4();

  result = sub_264784E44();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_2646623C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76290, &qword_264789E50);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = v14 - v8;
  sub_264662500(a1, a2, v14 - v8);
  v10 = *(a2 + *(type metadata accessor for InitiatorConfigurationSheet() + 36));
  KeyPath = swift_getKeyPath();
  if (v10)
  {
    v14[1] = v10;

    v10 = sub_2647840B4();
  }

  sub_26460CCE8(v9, a3, &qword_27FF76290, &qword_264789E50);
  v12 = (a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76210, &qword_264789E08) + 36));
  *v12 = KeyPath;
  v12[1] = v10;
  return sub_26460CD50(v9, &qword_27FF76290, &qword_264789E50);
}

uint64_t sub_264662500@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF762E8, &qword_264789EB0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = v40 - v8;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF762F0, &qword_264789EB8);
  v10 = *(*(v41 - 8) + 64);
  MEMORY[0x28223BE20](v41);
  v12 = (v40 - v11);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF762B0, &qword_264789E60);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = v40 - v15;
  v42 = type metadata accessor for LocationSelectionView(0);
  v17 = *(*(v42 - 8) + 64);
  MEMORY[0x28223BE20](v42);
  v19 = v40 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for SafetyMonitorUINavigationPathItem();
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20 - 8);
  v23 = v40 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2646646D8(a1, v23, type metadata accessor for SafetyMonitorUINavigationPathItem);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF762F8, &qword_264789EC0);
  v25 = (*(*(v24 - 8) + 48))(v23, 3, v24);
  if (v25 == 2)
  {
    v35 = (a2 + *(type metadata accessor for InitiatorConfigurationSheet() + 20));
    v36 = *v35;
    v37 = v35[1];
    v38 = *(v35 + 16);
    type metadata accessor for UserSessionConfiguration();
    sub_264664FBC(&qword_27FF75F58, type metadata accessor for UserSessionConfiguration);
    sub_264783FA4();
    swift_getKeyPath();
    swift_getKeyPath();
    sub_264783ED4();

    *v12 = v43;
    swift_storeEnumTagMultiPayload();
    sub_264664FBC(&qword_27FF762B8, type metadata accessor for LocationSelectionView);
    sub_2646643C4();
    sub_264784874();
    sub_26460CCE8(v16, v9, &qword_27FF762B0, &qword_264789E60);
    swift_storeEnumTagMultiPayload();
    sub_264664308();
    sub_264784874();
    return sub_26460CD50(v16, &qword_27FF762B0, &qword_264789E60);
  }

  else
  {
    if (v25 == 1)
    {
      v26 = type metadata accessor for InitiatorConfigurationSheet();
      v27 = *(a2 + *(v26 + 40));
      v28 = (a2 + *(v26 + 20));
      v29 = *v28;
      v30 = v28[1];
      v40[1] = v6;
      v31 = *(v28 + 16);
      type metadata accessor for UserSessionConfiguration();
      v40[2] = v13;
      sub_264664FBC(&qword_27FF75F58, type metadata accessor for UserSessionConfiguration);
      v40[0] = a3;

      v32 = sub_264783FA4();
      LocationSelectionView.init(sessionViewModel:userSessionConfiguration:)(v32, v19);
      sub_2646646D8(v19, v12, type metadata accessor for LocationSelectionView);
      swift_storeEnumTagMultiPayload();
      sub_264664FBC(&qword_27FF762B8, type metadata accessor for LocationSelectionView);
      sub_2646643C4();
      sub_264784874();
      sub_26460CCE8(v16, v9, &qword_27FF762B0, &qword_264789E60);
      swift_storeEnumTagMultiPayload();
      sub_264664308();
      sub_264784874();
      sub_26460CD50(v16, &qword_27FF762B0, &qword_264789E60);
      v33 = type metadata accessor for LocationSelectionView;
      v34 = v19;
    }

    else
    {
      swift_storeEnumTagMultiPayload();
      sub_264664308();
      sub_264784874();
      v33 = type metadata accessor for SafetyMonitorUINavigationPathItem;
      v34 = v23;
    }

    return sub_264664740(v34, v33);
  }
}

uint64_t sub_264662B08(uint64_t a1)
{
  v2 = type metadata accessor for InitiatorConfigurationSheet();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = *(a1 + *(MEMORY[0x28223BE20](v2 - 8) + 48));
  sub_2646646D8(a1, aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for InitiatorConfigurationSheet);
  v6 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v7 = swift_allocObject();
  sub_2646644E4(aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6);
  v8 = *(v5 + 16);
  v9 = swift_allocObject();
  v9[2] = v5;
  v9[3] = sub_2646645E0;
  v9[4] = v7;
  aBlock[4] = sub_264655938;
  aBlock[5] = v9;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_26465A0C0;
  aBlock[3] = &block_descriptor_0;
  v10 = _Block_copy(aBlock);

  [v8 fetchCurrentWorkoutSnapshotWithCompletion_];
  _Block_release(v10);
}

uint64_t sub_264662CDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = (a5 + *(type metadata accessor for InitiatorConfigurationSheet() + 32));
  v7 = *v5;
  v8 = *(v5 + 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF762E0, &qword_26478C6E0);
  return sub_264785304();
}

uint64_t sub_264662D50@<X0>(uint64_t a1@<X8>)
{
  v65 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76468, &unk_26478A110);
  v2 = *(*(v1 - 8) + 64);
  v3 = MEMORY[0x28223BE20](v1 - 8);
  v66 = &v62 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v64 = &v62 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF754B8, &qword_264787630);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v62 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76470, &unk_26478A120);
  v67 = *(v10 - 8);
  v68 = v10;
  v11 = *(v67 + 64);
  v12 = MEMORY[0x28223BE20](v10);
  v63 = &v62 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v71 = &v62 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v70 = &v62 - v17;
  MEMORY[0x28223BE20](v16);
  v19 = &v62 - v18;
  if (qword_27FF75280 != -1)
  {
    swift_once();
  }

  v72 = qword_27FF790B8;
  v73 = unk_27FF790C0;
  v20 = sub_264613FC4();

  v21 = sub_264784E44();
  v23 = v22;
  v72 = v21;
  v73 = v22;
  v25 = v24 & 1;
  v74 = v24 & 1;
  v75 = v26;
  sub_264785034();
  sub_26460ECC4(v21, v23, v25);

  sub_264665004(v9, v19);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF754C0, &qword_264787638);
  v28 = *(v27 + 36);
  v69 = v19;
  v29 = &v19[v28];
  *v29 = 2;
  v30 = 1;
  v29[8] = 1;
  if (qword_27FF75290 != -1)
  {
    swift_once();
  }

  v72 = qword_27FF790D8;
  v73 = unk_27FF790E0;

  v62 = v20;
  v31 = sub_264784E44();
  v33 = v32;
  v72 = v31;
  v73 = v32;
  v35 = v34 & 1;
  v74 = v34 & 1;
  v75 = v36;
  sub_264785034();
  sub_26460ECC4(v31, v33, v35);

  v37 = v70;
  sub_264665004(v9, v70);
  v38 = v37 + *(v27 + 36);
  *v38 = 1;
  *(v38 + 8) = 1;
  v39 = objc_opt_self();
  v40 = [v39 zelkovaWorkoutEnabled];
  v41 = v64;
  v42 = v69;
  if (v40)
  {
    if ([v39 zelkovaKahanaEnabled] & 1) != 0 || (type metadata accessor for SafetyMonitorUIUtilities(), (sub_264739D18()))
    {
      if (qword_27FF752A0 != -1)
      {
        swift_once();
      }

      v72 = qword_27FF790F8;
      v73 = unk_27FF79100;

      v43 = sub_264784E44();
      v45 = v44;
      v72 = v43;
      v73 = v44;
      v47 = v46 & 1;
      v74 = v46 & 1;
      v75 = v48;
      sub_264785034();
      sub_26460ECC4(v43, v45, v47);

      v49 = v71;
      sub_264665004(v9, v71);
      v50 = v49 + *(v27 + 36);
      *v50 = 4;
      *(v50 + 8) = 1;
      (*(v67 + 32))(v41, v49, v68);
      v30 = 0;
    }

    else
    {
      v30 = 1;
    }
  }

  v52 = v67;
  v51 = v68;
  (*(v67 + 56))(v41, v30, 1, v68);
  v53 = *(v52 + 16);
  v54 = v71;
  v53(v71, v42, v51);
  v55 = v63;
  v56 = v70;
  v53(v63, v70, v51);
  v57 = v66;
  sub_26460CCE8(v41, v66, &qword_27FF76468, &unk_26478A110);
  v58 = v65;
  v53(v65, v54, v51);
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76478, &qword_26478A130);
  v53(v58 + *(v59 + 48), v55, v51);
  sub_26460CCE8(v57, v58 + *(v59 + 64), &qword_27FF76468, &unk_26478A110);
  sub_26460CD50(v41, &qword_27FF76468, &unk_26478A110);
  v60 = *(v52 + 8);
  v60(v56, v51);
  v60(v69, v51);
  sub_26460CD50(v57, &qword_27FF76468, &unk_26478A110);
  v60(v55, v51);
  return (v60)(v71, v51);
}

uint64_t sub_264663408@<X0>(uint64_t a1@<X8>)
{
  v65 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76468, &unk_26478A110);
  v2 = *(*(v1 - 8) + 64);
  v3 = MEMORY[0x28223BE20](v1 - 8);
  v66 = &v62 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v64 = &v62 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF754B8, &qword_264787630);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v62 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76470, &unk_26478A120);
  v67 = *(v10 - 8);
  v68 = v10;
  v11 = *(v67 + 64);
  v12 = MEMORY[0x28223BE20](v10);
  v63 = &v62 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v71 = &v62 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v70 = &v62 - v17;
  MEMORY[0x28223BE20](v16);
  v19 = &v62 - v18;
  if (qword_27FF75288 != -1)
  {
    swift_once();
  }

  v72 = qword_27FF790C8;
  v73 = unk_27FF790D0;
  v20 = sub_264613FC4();

  v21 = sub_264784E44();
  v23 = v22;
  v72 = v21;
  v73 = v22;
  v25 = v24 & 1;
  v74 = v24 & 1;
  v75 = v26;
  sub_264785034();
  sub_26460ECC4(v21, v23, v25);

  sub_264665004(v9, v19);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF754C0, &qword_264787638);
  v28 = *(v27 + 36);
  v69 = v19;
  v29 = &v19[v28];
  *v29 = 2;
  v30 = 1;
  v29[8] = 1;
  if (qword_27FF75298 != -1)
  {
    swift_once();
  }

  v72 = qword_27FF790E8;
  v73 = unk_27FF790F0;

  v62 = v20;
  v31 = sub_264784E44();
  v33 = v32;
  v72 = v31;
  v73 = v32;
  v35 = v34 & 1;
  v74 = v34 & 1;
  v75 = v36;
  sub_264785034();
  sub_26460ECC4(v31, v33, v35);

  v37 = v70;
  sub_264665004(v9, v70);
  v38 = v37 + *(v27 + 36);
  *v38 = 1;
  *(v38 + 8) = 1;
  v39 = objc_opt_self();
  v40 = [v39 zelkovaWorkoutEnabled];
  v41 = v64;
  v42 = v69;
  if (v40)
  {
    if ([v39 zelkovaKahanaEnabled] & 1) != 0 || (type metadata accessor for SafetyMonitorUIUtilities(), (sub_264739D18()))
    {
      if (qword_27FF752A8 != -1)
      {
        swift_once();
      }

      v72 = qword_27FF79108;
      v73 = unk_27FF79110;

      v43 = sub_264784E44();
      v45 = v44;
      v72 = v43;
      v73 = v44;
      v47 = v46 & 1;
      v74 = v46 & 1;
      v75 = v48;
      sub_264785034();
      sub_26460ECC4(v43, v45, v47);

      v49 = v71;
      sub_264665004(v9, v71);
      v50 = v49 + *(v27 + 36);
      *v50 = 4;
      *(v50 + 8) = 1;
      (*(v67 + 32))(v41, v49, v68);
      v30 = 0;
    }

    else
    {
      v30 = 1;
    }
  }

  v52 = v67;
  v51 = v68;
  (*(v67 + 56))(v41, v30, 1, v68);
  v53 = *(v52 + 16);
  v54 = v71;
  v53(v71, v42, v51);
  v55 = v63;
  v56 = v70;
  v53(v63, v70, v51);
  v57 = v66;
  sub_26460CCE8(v41, v66, &qword_27FF76468, &unk_26478A110);
  v58 = v65;
  v53(v65, v54, v51);
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76478, &qword_26478A130);
  v53(v58 + *(v59 + 48), v55, v51);
  sub_26460CCE8(v57, v58 + *(v59 + 64), &qword_27FF76468, &unk_26478A110);
  sub_26460CD50(v41, &qword_27FF76468, &unk_26478A110);
  v60 = *(v52 + 8);
  v60(v56, v51);
  v60(v69, v51);
  sub_26460CD50(v57, &qword_27FF76468, &unk_26478A110);
  v60(v55, v51);
  return (v60)(v71, v51);
}

uint64_t sub_264663AC0(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF761D0, &qword_264789DE8);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v12[-v6];
  v8 = (v1 + *(a1 + 24));
  v10 = *v8;
  v9 = v8[1];
  v14 = v10;
  v15 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF761D8, &qword_264789DF0);
  sub_264785314();
  v13 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF756E0, &qword_264787DE0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF761E0, &qword_264789DF8);
  sub_26460CDF0(&qword_27FF761E8, &qword_27FF756E0, &qword_264787DE0);
  sub_26460CDF0(&qword_27FF761F0, &qword_27FF756E0, &qword_264787DE0);
  sub_26460CDF0(&qword_27FF761F8, &qword_27FF756E0, &qword_264787DE0);
  sub_264663D70();
  sub_264664FBC(&qword_27FF76278, type metadata accessor for SafetyMonitorUINavigationPathItem);
  sub_264784274();
  sub_26460CDF0(&qword_27FF762C8, &qword_27FF761D0, &qword_264789DE8);
  sub_264785054();
  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_264663D70()
{
  result = qword_27FF76200;
  if (!qword_27FF76200)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF761E0, &qword_264789DF8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF76208, &qword_264789E00);
    type metadata accessor for SafetyMonitorUINavigationPathItem();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF76210, &qword_264789E08);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF76218, &qword_264789E10);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF76220, &qword_264789E18);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF76228, &qword_264789E20);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF76230, &qword_264789E28);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF76238, &qword_264789E30);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF76240, &qword_264789E38);
    sub_264784954();
    sub_26466405C();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_26460CDF0(&qword_27FF76270, &qword_27FF76220, &qword_264789E18);
    swift_getOpaqueTypeConformance2();
    sub_264664FBC(&qword_27FF76278, type metadata accessor for SafetyMonitorUINavigationPathItem);
    sub_264664140();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF76200);
  }

  return result;
}

unint64_t sub_26466405C()
{
  result = qword_27FF76248;
  if (!qword_27FF76248)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF76240, &qword_264789E38);
    sub_26460CDF0(&qword_27FF76250, &qword_27FF76258, &unk_264789E40);
    sub_26460CDF0(&qword_27FF76260, &qword_27FF76268, &qword_26478EFD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF76248);
  }

  return result;
}

unint64_t sub_264664140()
{
  result = qword_27FF76280;
  if (!qword_27FF76280)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF76210, &qword_264789E08);
    sub_2646641F8();
    sub_26460CDF0(&qword_27FF76260, &qword_27FF76268, &qword_26478EFD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF76280);
  }

  return result;
}

unint64_t sub_2646641F8()
{
  result = qword_27FF76288;
  if (!qword_27FF76288)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF76290, &qword_264789E50);
    sub_26466427C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF76288);
  }

  return result;
}

unint64_t sub_26466427C()
{
  result = qword_27FF76298;
  if (!qword_27FF76298)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF762A0, &qword_264789E58);
    sub_264664308();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF76298);
  }

  return result;
}

unint64_t sub_264664308()
{
  result = qword_27FF762A8;
  if (!qword_27FF762A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF762B0, &qword_264789E60);
    sub_264664FBC(&qword_27FF762B8, type metadata accessor for LocationSelectionView);
    sub_2646643C4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF762A8);
  }

  return result;
}

unint64_t sub_2646643C4()
{
  result = qword_27FF762C0;
  if (!qword_27FF762C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF762C0);
  }

  return result;
}

uint64_t sub_264664420@<X0>(uint64_t *a1@<X8>)
{
  result = MEMORY[0x26673E1F0]();
  *a1 = result;
  return result;
}

uint64_t sub_26466444C@<X0>(uint64_t *a1@<X8>)
{
  result = MEMORY[0x26673E1F0]();
  *a1 = result;
  return result;
}

uint64_t sub_264664478(uint64_t *a1)
{
  v1 = *a1;

  return MEMORY[0x26673E200](v2);
}

uint64_t sub_2646644A4(uint64_t *a1)
{
  v1 = *a1;

  return MEMORY[0x26673E200](v2);
}

uint64_t sub_2646644E4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for InitiatorConfigurationSheet();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_264664548@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for InitiatorConfigurationSheet() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_2646623C4(a1, v6, a2);
}

uint64_t sub_2646645E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(type metadata accessor for InitiatorConfigurationSheet() - 8);
  v10 = v4 + ((*(v9 + 80) + 16) & ~*(v9 + 80));

  return sub_264662CDC(a1, a2, a3, a4, v10);
}

uint64_t sub_264664678()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_2646646D8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_264664740(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_2646647A8()
{
  result = qword_27FF76320;
  if (!qword_27FF76320)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF76318, &qword_264789F28);
    sub_26460CDF0(&qword_27FF76328, &qword_27FF76330, &qword_264789F30);
    sub_264664FBC(&qword_27FF76008, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF76320);
  }

  return result;
}

unint64_t sub_264664898()
{
  result = qword_27FF76350;
  if (!qword_27FF76350)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF76340, &unk_264789F40);
    sub_2646647A8();
    sub_26460CDF0(&qword_27FF76358, &qword_27FF76360, &qword_264789F50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF76350);
  }

  return result;
}

uint64_t objectdestroyTm_2()
{
  v1 = type metadata accessor for InitiatorConfigurationSheet();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = (v0 + v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75688, &unk_264789EA0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_2647840D4();
    (*(*(v6 - 8) + 8))(v0 + v3, v6);
  }

  else
  {
    v7 = *v5;
  }

  v8 = v5 + v1[5];
  v9 = *v8;
  v10 = *(v8 + 1);
  v11 = v8[16];
  sub_2646644DC();
  v12 = (v5 + v1[6]);
  v13 = *v12;

  v14 = v12[1];

  v15 = *(v5 + v1[7] + 8);

  v16 = *(v5 + v1[8] + 8);

  v17 = *(v5 + v1[9]);

  v18 = *(v5 + v1[10]);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_264664B58(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for InitiatorConfigurationSheet() - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

unint64_t sub_264664BCC()
{
  result = qword_27FF763E0;
  if (!qword_27FF763E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF763A8, &qword_26478A098);
    sub_26460CDF0(&qword_27FF763D8, &qword_27FF763A0, &qword_26478A090);
    sub_264664FBC(&qword_27FF76008, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF763E0);
  }

  return result;
}

unint64_t sub_264664CB4()
{
  result = qword_27FF76400;
  if (!qword_27FF76400)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF763F8, &qword_26478A0D8);
    sub_264664D6C();
    sub_26460CDF0(&qword_27FF75AF0, &qword_27FF75AF8, &qword_264788928);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF76400);
  }

  return result;
}

unint64_t sub_264664D6C()
{
  result = qword_27FF76408;
  if (!qword_27FF76408)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF76410, &unk_26478A0E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF76408);
  }

  return result;
}

unint64_t sub_264664DF0()
{
  result = qword_27FF76420;
  if (!qword_27FF76420)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF76418, &qword_26478A0F0);
    sub_264664E7C();
    sub_264664ED0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF76420);
  }

  return result;
}

unint64_t sub_264664E7C()
{
  result = qword_27FF76428;
  if (!qword_27FF76428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF76428);
  }

  return result;
}

unint64_t sub_264664ED0()
{
  result = qword_27FF76430;
  if (!qword_27FF76430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF76430);
  }

  return result;
}

unint64_t sub_264664F24()
{
  result = qword_27FF76438;
  if (!qword_27FF76438)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF76388, &qword_26478A078);
    sub_264664CB4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF76438);
  }

  return result;
}

uint64_t sub_264664FBC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_264665004(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF754B8, &qword_264787630);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_264665080()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF761D0, &qword_264789DE8);
  sub_26460CDF0(&qword_27FF762C8, &qword_27FF761D0, &qword_264789DE8);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_26466516C()
{
  v0 = *MEMORY[0x277D4ACA0];
  result = sub_264785724();
  qword_27FF76480 = result;
  *algn_27FF76488 = v2;
  return result;
}

uint64_t sub_2646651E0()
{
  v0 = *MEMORY[0x277D4ACB0];
  result = sub_264785724();
  qword_27FF76490 = result;
  *algn_27FF76498 = v2;
  return result;
}

uint64_t sub_264665238()
{
  v0 = *MEMORY[0x277D4ACA8];
  result = sub_264785724();
  qword_27FF764A0 = result;
  *algn_27FF764A8 = v2;
  return result;
}

uint64_t sub_264665290(void *a1, void *a2, void *a3)
{
  if (*a1 != -1)
  {
    v6 = a2;
    v7 = a3;
    swift_once();
    a2 = v6;
    a3 = v7;
  }

  v3 = *a2;
  v4 = *a3;

  return v3;
}

uint64_t sub_2646652FC()
{
  v0 = type metadata accessor for DeviceLockMonitor();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = sub_264666104();
  qword_27FF764B0 = result;
  return result;
}

uint64_t static DeviceLockMonitor.shared.getter()
{
  if (qword_27FF74FE8 != -1)
  {
    swift_once();
  }
}

uint64_t (*sub_2646653F0(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_264783EC4();
  return sub_26465A0B0;
}

uint64_t (*sub_2646654AC(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF764C8, &qword_26478A1D0);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC15SafetyMonitorUI17DeviceLockMonitor__lockState;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF764C0, &qword_26478A1C8);
  sub_264783EA4();
  swift_endAccess();
  return sub_2646263E8;
}

uint64_t sub_264665658()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4();
}

uint64_t sub_2646656E4(char *a1)
{
  v1 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_264783EE4();
}

uint64_t (*sub_264665750(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_264783EC4();
  return sub_264622F4C;
}

uint64_t sub_2646657F4(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v4 = *a1;
  v5 = *a4;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF764C0, &qword_26478A1C8);
  sub_264783EA4();
  return swift_endAccess();
}

uint64_t sub_264665868(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF764C8, &qword_26478A1D0);
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
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF764C0, &qword_26478A1C8);
  sub_264783EB4();
  swift_endAccess();
  return (*(v9 + 8))(v15, v8);
}

uint64_t sub_264665A00(uint64_t *a1)
{
  v1 = *a1;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF764C0, &qword_26478A1C8);
  sub_264783EA4();
  return swift_endAccess();
}

uint64_t sub_264665A7C(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF764C8, &qword_26478A1D0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  (*(v5 + 16))(&v10 - v7, a1, v4);
  v8 = *a2;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF764C0, &qword_26478A1C8);
  sub_264783EB4();
  swift_endAccess();
  return (*(v5 + 8))(a1, v4);
}

uint64_t (*sub_264665BB4(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF764C8, &qword_26478A1D0);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC15SafetyMonitorUI17DeviceLockMonitor__lockscreenState;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF764C0, &qword_26478A1C8);
  sub_264783EA4();
  swift_endAccess();
  return sub_26465A0AC;
}

SafetyMonitorUI::DeviceLockMonitor::LockState_optional __swiftcall DeviceLockMonitor.LockState.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_264785E14();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t DeviceLockMonitor.LockState.rawValue.getter()
{
  v1 = 0x64656B636F6CLL;
  if (*v0 != 1)
  {
    v1 = 0x6E776F6E6B6E75;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x64656B636F6C6E75;
  }
}

uint64_t sub_264665DD8(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE600000000000000;
  v4 = 0x64656B636F6CLL;
  if (v2 != 1)
  {
    v4 = 0x6E776F6E6B6E75;
    v3 = 0xE700000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x64656B636F6C6E75;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE800000000000000;
  }

  v7 = 0xE600000000000000;
  v8 = 0x64656B636F6CLL;
  if (*a2 != 1)
  {
    v8 = 0x6E776F6E6B6E75;
    v7 = 0xE700000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x64656B636F6C6E75;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE800000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_264785E84();
  }

  return v11 & 1;
}

uint64_t sub_264665ED4()
{
  v1 = *v0;
  sub_264785F44();
  sub_264785794();

  return sub_264785F94();
}

uint64_t sub_264665F74()
{
  *v0;
  *v0;
  sub_264785794();
}

uint64_t sub_264666000()
{
  v1 = *v0;
  sub_264785F44();
  sub_264785794();

  return sub_264785F94();
}

void sub_2646660A8(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE800000000000000;
  v4 = 0xE600000000000000;
  v5 = 0x64656B636F6CLL;
  if (v2 != 1)
  {
    v5 = 0x6E776F6E6B6E75;
    v4 = 0xE700000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x64656B636F6C6E75;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_264666104()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF764C0, &qword_26478A1C8);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v11[-v4];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF764F8, &qword_26478A368);
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  *(v0 + 16) = v6;
  *(v0 + 24) = -1;
  v7 = OBJC_IVAR____TtC15SafetyMonitorUI17DeviceLockMonitor__lockState;
  v11[15] = 2;
  sub_264783E94();
  v8 = *(v2 + 32);
  v8(v0 + v7, v5, v1);
  v9 = OBJC_IVAR____TtC15SafetyMonitorUI17DeviceLockMonitor__lockscreenState;
  v11[14] = 2;
  sub_264783E94();
  v8(v0 + v9, v5, v1);
  return v0;
}

void sub_26466626C()
{
  v1 = *(v0 + 16);
  os_unfair_lock_lock(v1 + 4);
  sub_264667D28();
  os_unfair_lock_unlock(v1 + 4);
  os_unfair_lock_lock(v1 + 4);
  sub_264668520();
  os_unfair_lock_unlock(v1 + 4);
  os_unfair_lock_lock(v1 + 4);
  sub_264668520();
  os_unfair_lock_unlock(v1 + 4);
  os_unfair_lock_lock(v1 + 4);
  sub_264668520();
  os_unfair_lock_unlock(v1 + 4);
}

uint64_t sub_26466636C(uint64_t a1)
{
  v3 = sub_264783E24();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &aBlock[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &aBlock[-1] - v9;
  v11 = sub_2647855A4();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &aBlock[-1] - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = swift_beginAccess();
  if (*(a1 + 24) == -1)
  {
    v30 = v4;
    aBlock[10] = v1;
    sub_26466831C();
    (*(v12 + 104))(v15, *MEMORY[0x277D851C8], v11);
    v17 = sub_264785A64();
    (*(v12 + 8))(v15, v11);
    v18 = swift_allocObject();
    swift_weakInit();
    aBlock[4] = sub_2646684CC;
    aBlock[5] = v18;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_264666900;
    aBlock[3] = &block_descriptor_49;
    v19 = _Block_copy(aBlock);

    v20 = sub_264785784();
    swift_beginAccess();
    v21 = notify_register_dispatch((v20 + 32), (a1 + 24), v17, v19);
    swift_endAccess();
    _Block_release(v19);

    if (v21 || *(a1 + 24) == -1)
    {
      sub_264783DF4();
      v22 = sub_264783E14();
      v23 = sub_2647859D4();
      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        v25 = swift_slowAlloc();
        aBlock[0] = v25;
        *v24 = 136315138;
        *(v24 + 4) = sub_2646DF234(0xD000000000000011, 0x8000000264794D10, aBlock);
        _os_log_impl(&dword_264605000, v22, v23, "%s - Error registering for keybag notifications", v24, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v25);
        MEMORY[0x266740650](v25, -1, -1);
        MEMORY[0x266740650](v24, -1, -1);
      }

      return (*(v30 + 8))(v8, v3);
    }

    else
    {
      sub_264783DF4();
      v26 = sub_264783E14();
      v27 = sub_2647859F4();
      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        v29 = swift_slowAlloc();
        aBlock[0] = v29;
        *v28 = 136315138;
        *(v28 + 4) = sub_2646DF234(0xD000000000000011, 0x8000000264794D10, aBlock);
        _os_log_impl(&dword_264605000, v26, v27, "%s - Registered for keybag notifications", v28, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v29);
        MEMORY[0x266740650](v29, -1, -1);
        MEMORY[0x266740650](v28, -1, -1);
      }

      return (*(v30 + 8))(v10, v3);
    }
  }

  return result;
}

uint64_t sub_264666844()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = *(result + 16);
    MEMORY[0x28223BE20](result);
    os_unfair_lock_lock(v1 + 4);
    sub_264668520();
    os_unfair_lock_unlock(v1 + 4);
  }

  return result;
}

uint64_t sub_264666900(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v4(a2);
}

uint64_t sub_264666954(uint64_t a1)
{
  v3 = sub_264783E24();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &aBlock[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &aBlock[-1] - v9;
  v11 = sub_2647855A4();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &aBlock[-1] - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = swift_beginAccess();
  if (*(a1 + 28) == -1)
  {
    v29 = v4;
    aBlock[10] = v1;
    v17 = *MEMORY[0x277D67770];
    sub_26466831C();
    (*(v12 + 104))(v15, *MEMORY[0x277D851C8], v11);
    v18 = sub_264785A64();
    (*(v12 + 8))(v15, v11);
    v19 = swift_allocObject();
    swift_weakInit();
    aBlock[4] = sub_2646684B8;
    aBlock[5] = v19;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_264666900;
    aBlock[3] = &block_descriptor_37;
    v20 = _Block_copy(aBlock);

    swift_beginAccess();
    LODWORD(v17) = notify_register_dispatch(v17, (a1 + 28), v18, v20);
    swift_endAccess();
    _Block_release(v20);

    if (v17 || *(a1 + 28) == -1)
    {
      sub_264783DF4();
      v21 = sub_264783E14();
      v22 = sub_2647859D4();
      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        v24 = swift_slowAlloc();
        aBlock[0] = v24;
        *v23 = 136315138;
        *(v23 + 4) = sub_2646DF234(0xD000000000000011, 0x8000000264794D10, aBlock);
        _os_log_impl(&dword_264605000, v21, v22, "%s - Error registering for SpringBoard lock screen notifications", v23, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v24);
        MEMORY[0x266740650](v24, -1, -1);
        MEMORY[0x266740650](v23, -1, -1);
      }

      return (*(v29 + 8))(v8, v3);
    }

    else
    {
      sub_264783DF4();
      v25 = sub_264783E14();
      v26 = sub_2647859F4();
      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        v28 = swift_slowAlloc();
        aBlock[0] = v28;
        *v27 = 136315138;
        *(v27 + 4) = sub_2646DF234(0xD000000000000011, 0x8000000264794D10, aBlock);
        _os_log_impl(&dword_264605000, v25, v26, "%s - Registered for SpringBoard lock screen notifications", v27, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v28);
        MEMORY[0x266740650](v28, -1, -1);
        MEMORY[0x266740650](v27, -1, -1);
      }

      return (*(v29 + 8))(v10, v3);
    }
  }

  return result;
}

uint64_t sub_264666DF0()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = *(result + 16);
    MEMORY[0x28223BE20](result);
    os_unfair_lock_lock(v1 + 4);
    sub_264668520();
    os_unfair_lock_unlock(v1 + 4);
  }

  return result;
}

uint64_t sub_264666EAC(uint64_t a1)
{
  v2 = sub_264785594();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_2647855C4();
  v7 = *(v16 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v16);
  v10 = aBlock - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MKBGetDeviceLockState();
  sub_26466831C();
  v12 = sub_264785A44();
  v13 = swift_allocObject();
  *(v13 + 16) = v11;
  *(v13 + 24) = a1;
  aBlock[4] = sub_2646684C0;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_264659F60;
  aBlock[3] = &block_descriptor_45;
  v14 = _Block_copy(aBlock);

  sub_2647855B4();
  aBlock[7] = MEMORY[0x277D84F90];
  sub_2646683C4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF76990, &qword_264788A90);
  sub_26466841C();
  sub_264785BD4();
  MEMORY[0x26673F780](0, v10, v6, v14);
  _Block_release(v14);

  (*(v3 + 8))(v6, v2);
  (*(v7 + 8))(v10, v16);
}

uint64_t sub_264667148(int a1)
{
  v2 = 0x64656B636F6C6E75;
  v3 = sub_264783E24();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a1 != 3 && a1 != 0;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4();

  v10 = 0xE600000000000000;
  v11 = 0x64656B636F6CLL;
  if (v30 != 1)
  {
    v11 = 0x6E776F6E6B6E75;
    v10 = 0xE700000000000000;
  }

  if (v30)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0x64656B636F6C6E75;
  }

  if (v30)
  {
    v13 = v10;
  }

  else
  {
    v13 = 0xE800000000000000;
  }

  v14 = 0xE800000000000000;
  if (a1 && a1 != 3)
  {
    v14 = 0xE600000000000000;
    v2 = 0x64656B636F6CLL;
  }

  if (v12 == v2 && v13 == v14)
  {
  }

  else
  {
    v16 = sub_264785E84();

    if ((v16 & 1) == 0)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      v29 = v9;

      sub_264783EE4();
      sub_264783DF4();

      v17 = sub_264783E14();
      v18 = sub_2647859F4();

      if (os_log_type_enabled(v17, v18))
      {
        v26 = v4;
        v19 = swift_slowAlloc();
        v20 = swift_slowAlloc();
        v28 = v20;
        *v19 = 136315138;
        swift_getKeyPath();
        swift_getKeyPath();
        sub_264783ED4();

        v21 = 0xE600000000000000;
        v22 = 0x64656B636F6CLL;
        if (v27 != 1)
        {
          v22 = 0x6E776F6E6B6E75;
          v21 = 0xE700000000000000;
        }

        if (v27)
        {
          v23 = v22;
        }

        else
        {
          v23 = 0x64656B636F6C6E75;
        }

        if (v27)
        {
          v24 = v21;
        }

        else
        {
          v24 = 0xE800000000000000;
        }

        v25 = sub_2646DF234(v23, v24, &v28);

        *(v19 + 4) = v25;
        _os_log_impl(&dword_264605000, v17, v18, "Updated lock state: %s", v19, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v20);
        MEMORY[0x266740650](v20, -1, -1);
        MEMORY[0x266740650](v19, -1, -1);

        return (*(v26 + 8))(v7, v3);
      }

      else
      {

        return (*(v4 + 8))(v7, v3);
      }
    }
  }

  return result;
}

uint64_t sub_264667500(uint64_t a1)
{
  v22 = *MEMORY[0x277D85DE8];
  v2 = sub_264785594();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_2647855C4();
  v7 = *(v18 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v18);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = 0;
  v11 = SBSGetScreenLockStatus() != 0;
  sub_26466831C();
  v12 = sub_264785A44();
  v13 = swift_allocObject();
  *(v13 + 16) = v11;
  *(v13 + 24) = a1;
  aBlock[4] = sub_2646683A0;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_264659F60;
  aBlock[3] = &block_descriptor_1;
  v14 = _Block_copy(aBlock);

  sub_2647855B4();
  v19 = MEMORY[0x277D84F90];
  sub_2646683C4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF76990, &qword_264788A90);
  sub_26466841C();
  sub_264785BD4();
  MEMORY[0x26673F780](0, v10, v6, v14);
  _Block_release(v14);

  (*(v3 + 8))(v6, v2);
  (*(v7 + 8))(v10, v18);

  v16 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_2646677D0(char a1)
{
  v2 = sub_264783E24();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4();

  if (v26)
  {
    if (v26 != 1)
    {
      goto LABEL_14;
    }

    v7 = 0xE600000000000000;
    v8 = 0x64656B636F6CLL;
  }

  else
  {
    v8 = 0x64656B636F6C6E75;
    v7 = 0xE800000000000000;
  }

  if (a1)
  {
    v9 = 0x64656B636F6CLL;
  }

  else
  {
    v9 = 0x64656B636F6C6E75;
  }

  if (a1)
  {
    v10 = 0xE600000000000000;
  }

  else
  {
    v10 = 0xE800000000000000;
  }

  if (v8 == v9 && v7 == v10)
  {
  }

LABEL_14:
  v12 = sub_264785E84();

  if ((v12 & 1) == 0)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v25 = a1 & 1;

    sub_264783EE4();
    sub_264783DF4();

    v13 = sub_264783E14();
    v14 = sub_2647859F4();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v24 = v16;
      *v15 = 136315138;
      swift_getKeyPath();
      swift_getKeyPath();
      sub_264783ED4();

      v17 = 0xE600000000000000;
      v18 = 0x6E776F6E6B6E75;
      if (v23 == 1)
      {
        v18 = 0x64656B636F6CLL;
      }

      else
      {
        v17 = 0xE700000000000000;
      }

      if (v23)
      {
        v19 = v18;
      }

      else
      {
        v19 = 0x64656B636F6C6E75;
      }

      if (v23)
      {
        v20 = v17;
      }

      else
      {
        v20 = 0xE800000000000000;
      }

      v21 = sub_2646DF234(v19, v20, &v24);

      *(v15 + 4) = v21;
      _os_log_impl(&dword_264605000, v13, v14, "Updated lockscreen state: %s", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v16);
      MEMORY[0x266740650](v16, -1, -1);
      MEMORY[0x266740650](v15, -1, -1);
    }

    return (*(v3 + 8))(v6, v2);
  }

  return result;
}

uint64_t DeviceLockMonitor.deinit()
{
  v1 = *(v0 + 16);

  v2 = OBJC_IVAR____TtC15SafetyMonitorUI17DeviceLockMonitor__lockState;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF764C0, &qword_26478A1C8);
  v4 = *(*(v3 - 8) + 8);
  v4(v0 + v2, v3);
  v4(v0 + OBJC_IVAR____TtC15SafetyMonitorUI17DeviceLockMonitor__lockscreenState, v3);
  return v0;
}

uint64_t DeviceLockMonitor.__deallocating_deinit()
{
  v1 = *(v0 + 2);

  v2 = OBJC_IVAR____TtC15SafetyMonitorUI17DeviceLockMonitor__lockState;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF764C0, &qword_26478A1C8);
  v4 = *(*(v3 - 8) + 8);
  v4(&v0[v2], v3);
  v4(&v0[OBJC_IVAR____TtC15SafetyMonitorUI17DeviceLockMonitor__lockscreenState], v3);
  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_264667CE8@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for DeviceLockMonitor();
  result = sub_264783E64();
  *a1 = result;
  return result;
}

uint64_t sub_264667D28()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

unint64_t sub_264667DA8()
{
  result = qword_27FF764D8;
  if (!qword_27FF764D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF764D8);
  }

  return result;
}

uint64_t type metadata accessor for DeviceLockMonitor()
{
  result = qword_27FF764E0;
  if (!qword_27FF764E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_264667ED0()
{
  sub_26466817C();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_26466817C()
{
  if (!qword_27FF764F0)
  {
    v0 = sub_264783EF4();
    if (!v1)
    {
      atomic_store(v0, &qword_27FF764F0);
    }
  }
}

uint64_t getEnumTagSinglePayload for DeviceLockMonitor.LockState(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for DeviceLockMonitor.LockState(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_26466831C()
{
  result = qword_27FF76980;
  if (!qword_27FF76980)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27FF76980);
  }

  return result;
}

uint64_t sub_264668368()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_2646683C4()
{
  result = qword_27FF75CD8;
  if (!qword_27FF75CD8)
  {
    sub_264785594();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF75CD8);
  }

  return result;
}

unint64_t sub_26466841C()
{
  result = qword_27FF75CE0;
  if (!qword_27FF75CE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27FF76990, &qword_264788A90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF75CE0);
  }

  return result;
}

uint64_t sub_264668480()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_26466856C()
{
  v0 = sub_264783E24();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x28223BE20](v0);
  v5 = &v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v42 - v7;
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v42 - v10;
  MEMORY[0x28223BE20](v9);
  v13 = &v42 - v12;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4();

  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4();

  v14 = v43;
  if (!v43)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_264783ED4();

    v14 = v43;
    if (!v43)
    {
      sub_264783DF4();
      v15 = sub_264783E14();
      v16 = sub_2647859E4();
      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        *v17 = 0;
        _os_log_impl(&dword_264605000, v15, v16, "#Initiator,InitiatorConfigurationView,locationString - endLocation from userSessionConfiguration and sessionViewModel is invalid", v17, 2u);
        MEMORY[0x266740650](v17, -1, -1);
      }

      (*(v1 + 8))(v13, v0);
      v14 = 0;
    }
  }

  if (SessionViewModel.sessionType.getter() != 2)
  {
    sub_264783DF4();
    v24 = sub_264783E14();
    v25 = sub_2647859D4();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_264605000, v24, v25, "#Initiator,InitiatorConfigurationView,locationString - session type is not destination bound", v26, 2u);
      MEMORY[0x266740650](v26, -1, -1);
    }

    (*(v1 + 8))(v5, v0);
    return 0;
  }

  if ((SessionViewModel.isReadyToConfigure.getter() & 1) == 0)
  {
    sub_264783DF4();
    v27 = sub_264783E14();
    v28 = sub_2647859D4();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&dword_264605000, v27, v28, "#Initiator,InitiatorConfigurationView,locationString - model not ready to configure", v29, 2u);
      MEMORY[0x266740650](v29, -1, -1);
    }

    (*(v1 + 8))(v8, v0);
    return 0;
  }

  v18 = sub_264624CE4();
  v19 = v18;
  if (v18 > 2)
  {
    if (v18 != 3)
    {
      if (v18 == 4)
      {
        v31 = _s15SafetyMonitorUI0aB11UIUtilitiesC29fullThoroughfareAddressFormat3forSSSgSo9MKMapItemCSg_tFZ_0(v14);
        v33 = v32;
        if (qword_27FF750A8 != -1)
        {
          swift_once();
        }

        v34 = qword_27FF78D08;

        if (v33)
        {

          return v31;
        }

        goto LABEL_38;
      }

LABEL_27:
      sub_264783DF4();
      v35 = sub_264783E14();
      v36 = sub_2647859D4();
      if (os_log_type_enabled(v35, v36))
      {
        v37 = swift_slowAlloc();
        *v37 = 134217984;
        *(v37 + 4) = v19;
        _os_log_impl(&dword_264605000, v35, v36, "#Initiator,InitiatorConfigurationView,locationString - Invalid destination type: %lu", v37, 0xCu);
        MEMORY[0x266740650](v37, -1, -1);
      }

      (*(v1 + 8))(v11, v0);
      return 0;
    }

    v20 = _s15SafetyMonitorUI0aB11UIUtilitiesC17cityAddressFormat3forSSSgSo9MKMapItemCSg_tFZ_0(v14);
    v22 = v39;
    if (qword_27FF75098 != -1)
    {
      swift_once();
    }

    v23 = &qword_27FF78CF0;
  }

  else
  {
    if (v18 != 1)
    {
      if (v18 == 2)
      {
        v20 = _s15SafetyMonitorUI0aB11UIUtilitiesC17cityAddressFormat3forSSSgSo9MKMapItemCSg_tFZ_0(v14);
        v22 = v21;
        if (qword_27FF75090 != -1)
        {
          swift_once();
        }

        v23 = &qword_27FF78CE0;
        goto LABEL_36;
      }

      goto LABEL_27;
    }

    v20 = _s15SafetyMonitorUI0aB11UIUtilitiesC17cityAddressFormat3forSSSgSo9MKMapItemCSg_tFZ_0(v14);
    v22 = v38;
    if (qword_27FF75088 != -1)
    {
      swift_once();
    }

    v23 = &qword_27FF78CD0;
  }

LABEL_36:
  v34 = *v23;
  v40 = v23[1];

  if (v22)
  {

    LOBYTE(v43) = 0;
    v41 = _s15SafetyMonitorUI0aB11UIUtilitiesC31formatAddressForDestinationType011destinationI07address04userI0SSSo09SMSessionhI0V_SSAA04UserI0OtFZ_0(v19, v20, v22, &v43);

    return v41;
  }

LABEL_38:

  return v34;
}

uint64_t sub_264668BD8()
{
  v0 = sub_264783E24();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x28223BE20](v0);
  v5 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v37 - v7;
  MEMORY[0x28223BE20](v6);
  v10 = &v37 - v9;
  v11 = sub_264783AF4();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((SessionViewModel.isReadyToConfigure.getter() & 1) == 0)
  {
    sub_264783DF4();
    v21 = sub_264783E14();
    v22 = sub_2647859D4();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_264605000, v21, v22, "#Initiator,InitiatorConfigurationView,sessionTimeString - not ready to configure", v23, 2u);
      MEMORY[0x266740650](v23, -1, -1);
    }

    (*(v1 + 8))(v5, v0);
    return 0;
  }

  if (SessionViewModel.sessionType.getter() - 1 > 1)
  {
    sub_264783DF4();

    v24 = sub_264783E14();
    v25 = sub_2647859D4();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v38 = v27;
      *v26 = 136315138;
      v28 = objc_opt_self();
      v29 = [v28 sessionTypeToString_];
      v30 = sub_264785724();
      v32 = v31;

      v33 = sub_2646DF234(v30, v32, &v38);

      *(v26 + 4) = v33;
      _os_log_impl(&dword_264605000, v24, v25, "#Initiator,InitiatorConfigurationView,sessionTimeString - invalid sessionType %s", v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v27);
      MEMORY[0x266740650](v27, -1, -1);
      MEMORY[0x266740650](v26, -1, -1);
    }

    (*(v1 + 8))(v8, v0);
    return 0;
  }

  v16 = SessionViewModel.sessionType.getter();
  if (v16 == 1)
  {
    sub_26461FD8C();
    if (v35)
    {
      goto LABEL_6;
    }

LABEL_18:
    sub_264783A94();
    v36 = _s15SafetyMonitorUI0aB11UIUtilitiesC10presentETA3forSS10Foundation4DateV_tFZ_0();
    (*(v12 + 8))(v15, v11);
    return v36;
  }

  if (v16 == 2)
  {
    sub_26461F730();
    if ((v17 & 1) == 0)
    {
      goto LABEL_18;
    }
  }

LABEL_6:
  sub_264783DF4();
  v18 = sub_264783E14();
  v19 = sub_2647859D4();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&dword_264605000, v18, v19, "#Initiator,InitiatorConfigurationView,sessionTimeString - missing sessionDuration", v20, 2u);
    MEMORY[0x266740650](v20, -1, -1);
  }

  (*(v1 + 8))(v10, v0);
  return 0;
}

uint64_t sub_26466902C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC15SafetyMonitorUI35SafetyCacheWorkoutEventRowViewModel_iconColor;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
}

uint64_t sub_264669094()
{
  v1 = OBJC_IVAR____TtC15SafetyMonitorUI35SafetyCacheWorkoutEventRowViewModel_iconColor;
  swift_beginAccess();
  v2 = *(v0 + v1);
}

uint64_t sub_2646690DC(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC15SafetyMonitorUI35SafetyCacheWorkoutEventRowViewModel_iconColor;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_26466920C(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = *a1;
  v5 = a1[1];
  v7 = (*a2 + *a5);
  swift_beginAccess();
  v8 = v7[1];
  *v7 = v6;
  v7[1] = v5;
}

uint64_t sub_264669280(void *a1)
{
  v2 = (v1 + *a1);
  swift_beginAccess();
  v4 = *v2;
  v3 = v2[1];

  return v4;
}

uint64_t sub_2646692E0(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = (v3 + *a3);
  swift_beginAccess();
  v7 = v6[1];
  *v6 = a1;
  v6[1] = a2;
}

double sub_26466939C@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4();

  result = *&v5;
  *a2 = v5;
  return result;
}

uint64_t sub_26466941C(uint64_t *a1, void **a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  v5 = v4;
  return sub_264783EE4();
}

uint64_t sub_26466949C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4();

  return v1;
}

uint64_t sub_264669518()
{
  swift_getKeyPath();
  swift_getKeyPath();
  v1 = v0;
  return sub_264783EE4();
}

void (*sub_264669590(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_264783EC4();
  return sub_264623A34;
}

uint64_t sub_264669634(uint64_t *a1)
{
  v1 = *a1;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75B60, &unk_26478B420);
  sub_264783EA4();
  return swift_endAccess();
}

uint64_t sub_2646696AC(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75D08, &qword_264788F00);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v15 - v10;
  v12 = *(v5 + 16);
  v12(&v15 - v10, a1, v4);
  v13 = *a2;
  v12(v9, v11, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75B60, &unk_26478B420);
  sub_264783EB4();
  swift_endAccess();
  return (*(v5 + 8))(v11, v4);
}

uint64_t sub_264669830()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75B60, &unk_26478B420);
  sub_264783EA4();
  return swift_endAccess();
}

uint64_t sub_2646698A4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75D08, &qword_264788F00);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75B60, &unk_26478B420);
  sub_264783EB4();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

void (*sub_2646699DC(uint64_t *a1))(uint64_t a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75D08, &qword_264788F00);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC15SafetyMonitorUI35SafetyCacheWorkoutEventRowViewModel__addressString;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75B60, &unk_26478B420);
  sub_264783EA4();
  swift_endAccess();
  return sub_26462AFD0;
}

id SafetyCacheWorkoutEventRowViewModel.init(with:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75B60, &unk_26478B420);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v15 - v6;
  *&v1[OBJC_IVAR____TtC15SafetyMonitorUI35SafetyCacheWorkoutEventRowViewModel_iconColor] = 0;
  v8 = &v1[OBJC_IVAR____TtC15SafetyMonitorUI35SafetyCacheWorkoutEventRowViewModel_title];
  *v8 = 0;
  *(v8 + 1) = 0;
  v9 = &v1[OBJC_IVAR____TtC15SafetyMonitorUI35SafetyCacheWorkoutEventRowViewModel_timeString];
  *v9 = 0;
  *(v9 + 1) = 0;
  v10 = OBJC_IVAR____TtC15SafetyMonitorUI35SafetyCacheWorkoutEventRowViewModel__addressString;
  v16 = 0;
  v17 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75C40, &qword_264788A70);
  sub_264783E94();
  (*(v4 + 32))(&v1[v10], v7, v3);
  *&v1[OBJC_IVAR____TtC15SafetyMonitorUI35SafetyCacheWorkoutEventRowViewModel_workoutEvent] = a1;
  v11 = type metadata accessor for SafetyCacheWorkoutEventRowViewModel();
  v15.receiver = v1;
  v15.super_class = v11;
  v12 = a1;
  v13 = objc_msgSendSuper2(&v15, sel_init);
  sub_264669DA8();
  sub_264669E48();
  sub_26466A400();
  sub_26466A58C();

  return v13;
}

uint64_t type metadata accessor for SafetyCacheWorkoutEventRowViewModel()
{
  result = qword_27FF76528;
  if (!qword_27FF76528)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

BOOL sub_264669D58()
{
  v1 = [*(v0 + OBJC_IVAR____TtC15SafetyMonitorUI35SafetyCacheWorkoutEventRowViewModel_workoutEvent) location];
  v2 = v1;
  if (v1)
  {
  }

  return v2 != 0;
}

uint64_t sub_264669DA8()
{
  v1 = OBJC_IVAR____TtC15SafetyMonitorUI35SafetyCacheWorkoutEventRowViewModel_workoutEvent;
  if ([*(v0 + OBJC_IVAR____TtC15SafetyMonitorUI35SafetyCacheWorkoutEventRowViewModel_workoutEvent) sessionState] == 4)
  {
    v2 = sub_2647851E4();
  }

  else if ([*(v0 + v1) sessionState] == 3)
  {
    v2 = sub_264785164();
  }

  else
  {
    v2 = sub_2647851B4();
  }

  v3 = v2;
  v4 = OBJC_IVAR____TtC15SafetyMonitorUI35SafetyCacheWorkoutEventRowViewModel_iconColor;
  swift_beginAccess();
  v5 = *(v0 + v4);
  *(v0 + v4) = v3;
}

uint64_t sub_264669E48()
{
  v1 = v0;
  v2 = sub_2647856E4();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = sub_264783B94();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = sub_264785704();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = OBJC_IVAR____TtC15SafetyMonitorUI35SafetyCacheWorkoutEventRowViewModel_workoutEvent;
  [*(v0 + OBJC_IVAR____TtC15SafetyMonitorUI35SafetyCacheWorkoutEventRowViewModel_workoutEvent) locationType];
  [*(v0 + v8) activityType];
  [*(v0 + v8) swimmingLocationType];
  v9 = FILocalizedNameForActivityType();
  if (v9)
  {
    v10 = v9;
    v11 = sub_264785724();
    v13 = v12;
  }

  else
  {
    sub_264785694();
    sub_264659B70(0, &qword_27FF779F0, 0x277D4AB68);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v15 = [objc_opt_self() bundleForClass_];
    sub_264783B84();
    v11 = sub_264785744();
    v13 = v16;
  }

  v17 = [*(v0 + v8) sessionState];
  if (v17 == 4 || v17 == 3)
  {
    sub_2647856D4();
    sub_2647856C4();
    sub_2647856B4();

    sub_2647856C4();
    sub_2647856F4();
    sub_264659B70(0, &qword_27FF779F0, 0x277D4AB68);
    v19 = swift_getObjCClassFromMetadata();
    [objc_opt_self() bundleForClass_];
    sub_264783B84();
    goto LABEL_11;
  }

  if (v17 == 2)
  {
    [*(v0 + v8) isResumedSessionState];
    sub_2647856D4();
    sub_2647856C4();
    sub_2647856B4();

    sub_2647856C4();
    sub_2647856F4();
    sub_264659B70(0, &qword_27FF779F0, 0x277D4AB68);
    v18 = swift_getObjCClassFromMetadata();
    [objc_opt_self() bundleForClass_];
    sub_264783B84();
LABEL_11:
    v22 = sub_264785754();
    v24 = v23;
    v25 = (v1 + OBJC_IVAR____TtC15SafetyMonitorUI35SafetyCacheWorkoutEventRowViewModel_title);
    swift_beginAccess();
    v26 = v25[1];
    *v25 = v22;
    v25[1] = v24;
  }

  v20 = (v0 + OBJC_IVAR____TtC15SafetyMonitorUI35SafetyCacheWorkoutEventRowViewModel_title);
  swift_beginAccess();
  v21 = v20[1];
  *v20 = v11;
  v20[1] = v13;
}

uint64_t sub_26466A400()
{
  v1 = v0;
  v2 = sub_264783AF4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [objc_opt_self() dateTimeFormatter];
  v8 = [*(v1 + OBJC_IVAR____TtC15SafetyMonitorUI35SafetyCacheWorkoutEventRowViewModel_workoutEvent) date];
  sub_264783AC4();

  v9 = sub_264783A64();
  (*(v3 + 8))(v6, v2);
  v10 = [v7 stringFromDate_];

  v11 = sub_264785724();
  v13 = v12;

  v14 = (v1 + OBJC_IVAR____TtC15SafetyMonitorUI35SafetyCacheWorkoutEventRowViewModel_timeString);
  swift_beginAccess();
  v15 = v14[1];
  *v14 = v11;
  v14[1] = v13;
}

id sub_26466A58C()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76970, &qword_264789300);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v31 - v4;
  v6 = sub_264783AF4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [*&v1[OBJC_IVAR____TtC15SafetyMonitorUI35SafetyCacheWorkoutEventRowViewModel_workoutEvent] location];
  if (result)
  {
    v12 = result;
    [result latitude];
    v14 = v13;
    [v12 longitude];
    v16 = v15;
    [v12 altitude];
    v18 = v17;
    [v12 hunc];
    v20 = v19;
    [v12 vunc];
    v22 = v21;
    v23 = [v12 date];
    sub_264783AC4();

    v24 = [v12 referenceFrame];
    v25 = objc_allocWithZone(MEMORY[0x277CE41F8]);
    v26 = sub_264783A64();
    v27 = [v25 initWithCoordinate:v26 altitude:v24 horizontalAccuracy:v14 verticalAccuracy:v16 timestamp:v18 referenceFrame:{v20, v22}];

    (*(v7 + 8))(v10, v6);
    sub_2647858C4();
    v28 = sub_2647858E4();
    (*(*(v28 - 8) + 56))(v5, 0, 1, v28);
    v29 = swift_allocObject();
    v29[2] = 0;
    v29[3] = 0;
    v29[4] = v27;
    v29[5] = v1;
    v30 = v1;
    sub_264635430(0, 0, v5, &unk_26478A588, v29);
  }

  return result;
}

uint64_t sub_26466A878(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[13] = a4;
  v5[14] = a5;
  v6 = sub_264785594();
  v5[15] = v6;
  v7 = *(v6 - 8);
  v5[16] = v7;
  v8 = *(v7 + 64) + 15;
  v5[17] = swift_task_alloc();
  v9 = sub_2647855C4();
  v5[18] = v9;
  v10 = *(v9 - 8);
  v5[19] = v10;
  v11 = *(v10 + 64) + 15;
  v5[20] = swift_task_alloc();
  v12 = sub_264783E24();
  v5[21] = v12;
  v13 = *(v12 - 8);
  v5[22] = v13;
  v14 = *(v13 + 64) + 15;
  v5[23] = swift_task_alloc();
  v5[24] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26466A9FC, 0, 0);
}

uint64_t sub_26466A9FC()
{
  if (qword_27FF74FF0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 104);
  v2 = swift_task_alloc();
  *(v0 + 200) = v2;
  *v2 = v0;
  v2[1] = sub_26466AAC8;

  return sub_2646DCEB0(v1);
}

uint64_t sub_26466AAC8(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 200);
  v7 = *v2;
  *(v3 + 208) = a1;
  *(v3 + 216) = v1;

  if (v1)
  {
    v5 = sub_26466AE9C;
  }

  else
  {
    v5 = sub_26466ABDC;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_26466ABDC()
{
  v1 = v0[26];
  if (v1)
  {
    v2 = v0[20];
    v3 = v0[17];
    v27 = v0[19];
    v28 = v0[18];
    v4 = v0[15];
    v5 = v0[16];
    v6 = v0[14];
    sub_264659B70(0, &qword_27FF76980, 0x277D85C78);
    v26 = sub_264785A44();
    v7 = swift_allocObject();
    *(v7 + 16) = v6;
    *(v7 + 24) = v1;
    v0[6] = sub_26466BAA8;
    v0[7] = v7;
    v0[2] = MEMORY[0x277D85DD0];
    v0[3] = 1107296256;
    v0[4] = sub_264659F60;
    v0[5] = &block_descriptor_2;
    v8 = _Block_copy(v0 + 2);
    v9 = v6;
    v10 = v1;
    sub_2647855B4();
    v0[12] = MEMORY[0x277D84F90];
    sub_2646683C4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF76990, &qword_264788A90);
    sub_26466841C();
    sub_264785BD4();
    MEMORY[0x26673F780](0, v2, v3, v8);
    _Block_release(v8);

    (*(v5 + 8))(v3, v4);
    (*(v27 + 8))(v2, v28);
    v11 = v0[7];
  }

  else
  {
    v12 = v0[24];
    sub_264783DF4();
    v13 = sub_264783E14();
    v14 = sub_2647859D4();
    v15 = os_log_type_enabled(v13, v14);
    v16 = v0[24];
    v17 = v0[21];
    v18 = v0[22];
    if (v15)
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_264605000, v13, v14, "Failed to get a placemark for reverse geocode location", v19, 2u);
      MEMORY[0x266740650](v19, -1, -1);
    }

    (*(v18 + 8))(v16, v17);
  }

  v21 = v0[23];
  v20 = v0[24];
  v22 = v0[20];
  v23 = v0[17];

  v24 = v0[1];

  return v24();
}

uint64_t sub_26466AE9C()
{
  v28 = v0;
  v1 = *(v0 + 216);
  v2 = *(v0 + 184);
  sub_264783DF4();
  v3 = v1;
  v4 = sub_264783E14();
  v5 = sub_2647859D4();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 216);
    v7 = *(v0 + 176);
    v26 = *(v0 + 184);
    v8 = *(v0 + 168);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v27 = v10;
    *v9 = 136315138;
    swift_getErrorValue();
    v12 = *(v0 + 64);
    v11 = *(v0 + 72);
    v13 = *(v0 + 80);
    v14 = sub_264785EF4();
    v16 = sub_2646DF234(v14, v15, &v27);

    *(v9 + 4) = v16;
    _os_log_impl(&dword_264605000, v4, v5, "Failed to reverse geocode location: %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x266740650](v10, -1, -1);
    MEMORY[0x266740650](v9, -1, -1);

    (*(v7 + 8))(v26, v8);
  }

  else
  {
    v18 = *(v0 + 176);
    v17 = *(v0 + 184);
    v19 = *(v0 + 168);

    (*(v18 + 8))(v17, v19);
  }

  v21 = *(v0 + 184);
  v20 = *(v0 + 192);
  v22 = *(v0 + 160);
  v23 = *(v0 + 136);

  v24 = *(v0 + 8);

  return v24();
}

uint64_t sub_26466B094(void *a1, id a2)
{
  v3 = [a2 postalAddress];
  if (v3)
  {
    v4 = v3;
    v5 = [objc_allocWithZone(MEMORY[0x277CBDB80]) init];
    v6 = [v5 stringFromPostalAddress_];
    sub_264785724();

    sub_264613FC4();
    sub_264785B84();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v7 = a1;
  return sub_264783EE4();
}

id SafetyCacheWorkoutEventRowViewModel.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SafetyCacheWorkoutEventRowViewModel.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SafetyCacheWorkoutEventRowViewModel();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_26466B378@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for SafetyCacheWorkoutEventRowViewModel();
  result = sub_264783E64();
  *a1 = result;
  return result;
}

uint64_t sub_26466B3B8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC15SafetyMonitorUI35SafetyCacheWorkoutEventRowViewModel_iconColor;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t keypath_get_7Tm@<X0>(void *a1@<X0>, void *a2@<X3>, void *a3@<X8>)
{
  v4 = (*a1 + *a2);
  swift_beginAccess();
  v5 = v4[1];
  *a3 = *v4;
  a3[1] = v5;
}

void sub_26466B4D4()
{
  sub_26466B8FC();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_26466B8FC()
{
  if (!qword_27FF75E08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF75C40, &qword_264788A70);
    v0 = sub_264783EF4();
    if (!v1)
    {
      atomic_store(v0, &qword_27FF75E08);
    }
  }
}

uint64_t sub_26466B960()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_26466B9A8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_26460F764;

  return sub_26466A878(a1, v4, v5, v7, v6);
}

uint64_t sub_26466BA68()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t DeviceCacheInfoView.init(infoModel:)@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for DeviceCacheInfoViewModel();
  sub_26466D474(&qword_27FF76538, type metadata accessor for DeviceCacheInfoViewModel);
  result = sub_264784174();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_26466BB48()
{
  v1 = sub_264783B94();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = sub_264785704();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = sub_2647856E4();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = *(v0 + 8);
  ObjectType = swift_getObjectType();
  v9 = type metadata accessor for WatchCacheInfoViewModel();
  v10 = OBJC_IVAR____TtC15SafetyMonitorUI24DeviceCacheInfoViewModel_contact;
  swift_beginAccess();
  v11 = *(v7 + v10);
  v12 = OBJC_IVAR____TtC15SafetyMonitorUI24DeviceCacheInfoViewModel_isTransparencyMode;
  swift_beginAccess();
  v13 = (v11 == 0) | *(v7 + v12);
  if (ObjectType == v9)
  {
    if ((v11 == 0) | *(v7 + v12) & 1)
    {
LABEL_5:
      sub_264785694();
      sub_26460EC78();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v15 = [objc_opt_self() bundleForClass_];
      sub_264783B84();
      return sub_264785754();
    }
  }

  else if ((v11 == 0) | *(v7 + v12) & 1)
  {
    goto LABEL_5;
  }

  v17 = v11;
  sub_2647856D4();
  sub_2647856C4();
  sub_264785B14();
  sub_2647856B4();

  sub_2647856C4();
  sub_2647856F4();
  sub_26460EC78();
  v18 = swift_getObjCClassFromMetadata();
  v19 = [objc_opt_self() bundleForClass_];
  sub_264783B84();
  v20 = sub_264785754();

  return v20;
}

uint64_t DeviceCacheInfoView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = *v1;
  v3 = *(v1 + 8);
  *a1 = sub_2647845C4();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76540, &qword_26478A590);
  return sub_26466BF94(v4, v3, (a1 + *(v5 + 44)));
}

uint64_t sub_26466BF94@<X0>(void *a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v81 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76558, &qword_26478A630);
  v6 = *(v5 - 8);
  v80 = v5 - 8;
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5 - 8);
  v82 = &v74 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = &v74 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76560, &qword_26478A638);
  v13 = v12 - 8;
  v14 = *(*(v12 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v12);
  v90 = &v74 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v18 = &v74 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76568, &qword_26478A640);
  v20 = v19 - 8;
  v21 = *(*(v19 - 8) + 64);
  v22 = MEMORY[0x28223BE20](v19);
  v89 = &v74 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v25 = &v74 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76570, &qword_26478A648);
  v27 = v26 - 8;
  v28 = *(*(v26 - 8) + 64);
  v29 = MEMORY[0x28223BE20](v26);
  v88 = &v74 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v32 = &v74 - v31;
  v93 = a1;
  v94 = a2;
  sub_26466C648(v91);
  v86 = v91[1];
  v83 = v91[0];
  v84 = v91[2];
  v85 = v92;
  *v32 = sub_264784724();
  *(v32 + 1) = 0;
  v32[16] = 1;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76578, &qword_26478A650);
  sub_26466C788(a1, a2, &v32[*(v33 + 44)]);
  v34 = sub_264784C64();
  sub_264783F54();
  v35 = v32;
  v36 = &v32[*(v27 + 44)];
  *v36 = v34;
  *(v36 + 1) = v37;
  *(v36 + 2) = v38;
  *(v36 + 3) = v39;
  *(v36 + 4) = v40;
  v36[40] = 0;
  v41 = a2;
  sub_264726F80(v25);
  v42 = sub_264785214();
  KeyPath = swift_getKeyPath();
  v44 = *(v20 + 44);
  v87 = v25;
  v45 = &v25[v44];
  *v45 = KeyPath;
  v45[1] = v42;
  sub_264726504(v18);
  v46 = sub_264785214();
  v47 = swift_getKeyPath();
  v48 = &v18[*(v13 + 44)];
  *v48 = v47;
  v48[1] = v46;
  sub_2647278CC(v11);
  v49 = sub_264785214();
  v50 = swift_getKeyPath();
  v51 = v11;
  v52 = &v11[*(v80 + 44)];
  *v52 = v50;
  v52[1] = v49;
  type metadata accessor for PhoneCacheInfoViewModel();
  v53 = swift_dynamicCastClass();
  if (v53 && (v54 = v53 + OBJC_IVAR____TtC15SafetyMonitorUI24DeviceCacheInfoViewModel_safetyCache, swift_beginAccess(), *(v54 + 24)))
  {
    v55 = sub_264785274();
    v56 = sub_264785214();

    v57 = swift_getKeyPath();
    v80 = v55;

    v77 = v57;

    v78 = v56;
  }

  else
  {

    v80 = 0;
    v77 = 0;
    v78 = 0;
  }

  v79 = v35;
  v58 = v88;
  sub_26460CCE8(v35, v88, &qword_27FF76570, &qword_26478A648);
  v59 = v89;
  sub_26460CCE8(v87, v89, &qword_27FF76568, &qword_26478A640);
  v76 = v18;
  v60 = v90;
  sub_26460CCE8(v18, v90, &qword_27FF76560, &qword_26478A638);
  v75 = v51;
  v61 = v82;
  sub_26460CCE8(v51, v82, &qword_27FF76558, &qword_26478A630);
  v62 = v81;
  v63 = v84;
  v64 = v86;
  *v81 = v83;
  v62[1] = v64;
  v62[2] = v63;
  *(v62 + 24) = v85;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76580, &qword_26478A688);
  sub_26460CCE8(v58, v62 + v65[12], &qword_27FF76570, &qword_26478A648);
  v66 = v62 + v65[16];
  *v66 = 0;
  v66[8] = 1;
  sub_26460CCE8(v59, v62 + v65[20], &qword_27FF76568, &qword_26478A640);
  sub_26460CCE8(v60, v62 + v65[24], &qword_27FF76560, &qword_26478A638);
  sub_26460CCE8(v61, v62 + v65[28], &qword_27FF76558, &qword_26478A630);
  v67 = (v62 + v65[32]);
  v68 = v83;
  v69 = v63;
  LOBYTE(v63) = v85;
  sub_26466D29C(v83, v64, v69, v85);
  v70 = v80;
  v71 = v77;
  v72 = v78;
  sub_26466D2FC(v80);
  sub_26466D34C(v70);
  *v67 = v70;
  v67[1] = v71;
  v67[2] = v72;
  sub_26460CD50(v75, &qword_27FF76558, &qword_26478A630);
  sub_26460CD50(v76, &qword_27FF76560, &qword_26478A638);
  sub_26460CD50(v87, &qword_27FF76568, &qword_26478A640);
  sub_26460CD50(v79, &qword_27FF76570, &qword_26478A648);
  sub_26466D34C(v70);
  sub_26460CD50(v61, &qword_27FF76558, &qword_26478A630);
  sub_26460CD50(v90, &qword_27FF76560, &qword_26478A638);
  sub_26460CD50(v89, &qword_27FF76568, &qword_26478A640);
  sub_26460CD50(v88, &qword_27FF76570, &qword_26478A648);
  return sub_26466D398(v68, v86, v84, v63);
}

uint64_t sub_26466C648@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 8);
  type metadata accessor for PhoneCacheInfoViewModel();
  if (swift_dynamicCastClass() || (type metadata accessor for WatchCacheInfoViewModel(), (result = swift_dynamicCastClass()) != 0))
  {
    sub_264785274();
    sub_264784D44();
    swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF765B0, &unk_2647908C0);
    sub_26466D5C8();
    result = sub_264784874();
    v5 = v8;
    v6 = v9;
    v7 = v10;
  }

  else
  {
    v6 = 0;
    v5 = 0uLL;
    v7 = -1;
  }

  *a1 = v5;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  return result;
}

uint64_t sub_26466C788@<X0>(void *a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v71 = a2;
  v72 = a1;
  v80 = a3;
  v78 = sub_264784AE4();
  v74 = *(v78 - 8);
  v5 = *(v74 + 64);
  v6 = MEMORY[0x28223BE20](v78);
  v73 = &v70 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = &v70 - v8;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76588, &qword_26478A690);
  v77 = *(v79 - 8);
  v10 = *(v77 + 64);
  v11 = MEMORY[0x28223BE20](v79);
  v83 = &v70 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v84 = &v70 - v13;
  v87 = a1;
  v88 = a2;
  v85 = sub_26466BB48();
  v86 = v14;
  v70 = sub_264613FC4();
  v15 = sub_264784E44();
  v17 = v16;
  v19 = v18;
  sub_264784CC4();
  v20 = sub_264784E24();
  v22 = v21;
  v24 = v23;

  sub_26460ECC4(v15, v17, v19 & 1);

  sub_264785204();
  v25 = sub_264784DE4();
  v81 = v26;
  v82 = v25;
  v75 = v27;
  v76 = v28;

  sub_26460ECC4(v20, v22, v24 & 1);

  sub_264784AD4();
  v29 = swift_allocObject();
  v30 = v73;
  v31 = v71;
  *(v29 + 16) = v72;
  *(v29 + 24) = v31;
  v32 = v74;
  v33 = v78;
  (*(v74 + 16))(v30, v9, v78);
  v34 = swift_allocObject();
  *(v34 + 16) = sub_26466D42C;
  *(v34 + 24) = v29;
  v35 = v31;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76590, &qword_26478A698);
  sub_26466D474(&qword_27FF76598, MEMORY[0x277CE0818]);
  sub_26466D4BC();
  sub_264784024();
  (*(v32 + 8))(v9, v33);
  v36 = v35;
  v37 = sub_264725AE0();
  v39 = v38;

  if (v39)
  {
    v87 = v37;
    v88 = v39;
    v40 = sub_264784E44();
    v42 = v41;
    v44 = v43;
    sub_264784D74();
    v45 = sub_264784E24();
    v47 = v46;
    v49 = v48;

    sub_26460ECC4(v40, v42, v44 & 1);

    sub_264785214();
    v78 = sub_264784DE4();
    v73 = v51;
    v74 = v50;
    v53 = v52;

    sub_26460ECC4(v45, v47, v49 & 1);

    v39 = v53 & 1;
  }

  else
  {
    v78 = 0;
    v73 = 0;
    v74 = 0;
  }

  v54 = v77;
  v55 = *(v77 + 16);
  v56 = v83;
  v57 = v79;
  v55(v83, v84, v79);
  v59 = v80;
  v58 = v81;
  v60 = v82;
  *v80 = v82;
  v59[1] = v58;
  v75 &= 1u;
  *(v59 + 16) = v75;
  v59[3] = v76;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF765A8, &qword_26478A6A0);
  v55(v59 + *(v61 + 48), v56, v57);
  v62 = (v59 + *(v61 + 64));
  v63 = v78;
  v65 = v73;
  v64 = v74;
  *v62 = v78;
  v62[1] = v64;
  v62[2] = v39;
  v62[3] = v65;
  v66 = v60;
  v67 = v81;
  LOBYTE(v60) = v75;
  sub_26460C474(v66, v81, v75);

  sub_26466D538(v63, v64, v39, v65);
  v68 = *(v54 + 8);
  v68(v84, v57);
  sub_26466D57C(v63, v64, v39, v65);
  v68(v83, v57);
  sub_26460ECC4(v82, v67, v60);
}

uint64_t sub_26466CD44@<X0>(void *a1@<X2>, uint64_t *a2@<X8>)
{
  v4 = sub_264783B94();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_264785704();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = sub_2647856E4();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = sub_264783AF4();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v43 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for PhoneCacheInfoViewModel();
  result = swift_dynamicCastClass();
  if (result && (v18 = result + OBJC_IVAR____TtC15SafetyMonitorUI24DeviceCacheInfoViewModel_safetyCache, result = swift_beginAccess(), (v19 = *(v18 + 24)) != 0))
  {
    v44 = a1;
    v20 = [v19 date];
    sub_264783AC4();

    v21 = sub_264783A64();
    v22 = [v21 preciseFormattedTime];

    sub_264785724();
    v43 = v7;

    (*(v13 + 8))(v16, v12);
    sub_2647856D4();
    sub_2647856C4();
    sub_2647856B4();

    sub_2647856C4();
    sub_2647856F4();
    sub_26460EC78();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v24 = [objc_opt_self() bundleForClass_];
    sub_264783B84();
    v45 = sub_264785754();
    v46 = v25;
    sub_264613FC4();
    v26 = sub_264784E44();
    v28 = v27;
    v30 = v29;
    sub_264784D74();
    v31 = sub_264784E24();
    v33 = v32;
    LOBYTE(v22) = v34;

    sub_26460ECC4(v26, v28, v30 & 1);

    sub_264785214();
    v35 = sub_264784DE4();
    v37 = v36;
    v39 = v38;
    v41 = v40;

    sub_26460ECC4(v31, v33, v22 & 1);

    v42 = v39 & 1;
  }

  else
  {
    v35 = 0;
    v37 = 0;
    v42 = 0;
    v41 = 0;
  }

  *a2 = v35;
  a2[1] = v37;
  a2[2] = v42;
  a2[3] = v41;
  return result;
}

uint64_t sub_26466D158@<X0>(uint64_t a1@<X8>)
{
  v4 = *v1;
  v3 = *(v1 + 8);
  *a1 = sub_2647845C4();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76540, &qword_26478A590);
  return sub_26466BF94(v4, v3, (a1 + *(v5 + 44)));
}

uint64_t sub_26466D1BC(uint64_t a1, int a2)
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

uint64_t sub_26466D204(uint64_t result, int a2, int a3)
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

uint64_t sub_26466D29C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4 != -1)
  {
    return sub_26466D2B4();
  }

  return result;
}

uint64_t sub_26466D2B4()
{
}

uint64_t sub_26466D2FC(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_26466D34C(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_26466D398(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4 != -1)
  {
    return sub_26466D3B0();
  }

  return result;
}

uint64_t sub_26466D3B0()
{
}

uint64_t sub_26466D3F4()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_26466D434()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_26466D474(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_26466D4BC()
{
  result = qword_27FF765A0;
  if (!qword_27FF765A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF76590, &qword_26478A698);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF765A0);
  }

  return result;
}

uint64_t sub_26466D538(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_26460C474(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_26466D57C(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_26460ECC4(result, a2, a3 & 1);
  }

  return result;
}

unint64_t sub_26466D5C8()
{
  result = qword_27FF765B8;
  if (!qword_27FF765B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF765B0, &unk_2647908C0);
    sub_26460CDF0(&qword_27FF765C0, &qword_27FF765C8, &qword_26478A6E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF765B8);
  }

  return result;
}

uint64_t SafetyCacheViewModel.sessionID.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC15SafetyMonitorUI20SafetyCacheViewModel_sessionID;
  v4 = sub_264783B64();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_26466D6F8()
{
  v1 = v0;
  v2 = sub_264785594();
  v56 = *(v2 - 8);
  v57 = v2;
  v3 = *(v56 + 64);
  MEMORY[0x28223BE20](v2);
  v54 = &v51 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = sub_2647855C4();
  v53 = *(v55 - 8);
  v5 = *(v53 + 64);
  MEMORY[0x28223BE20](v55);
  v52 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_264783E24();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v51 - v13;
  v64 = OBJC_IVAR____TtC15SafetyMonitorUI20SafetyCacheViewModel_userType;
  if (v0[OBJC_IVAR____TtC15SafetyMonitorUI20SafetyCacheViewModel_userType])
  {
    sub_264783DE4();
  }

  else
  {
    sub_264783DF4();
  }

  v15 = v0;
  v16 = sub_264783E14();
  v17 = sub_2647859F4();

  v18 = os_log_type_enabled(v16, v17);
  v58 = v15;
  if (v18)
  {
    LODWORD(v63) = v17;
    v60 = v8;
    v62 = v12;
    v19 = swift_slowAlloc();
    *&v59 = swift_slowAlloc();
    v74 = v59;
    *v19 = 136315395;
    *(v19 + 4) = sub_2646DF234(0x6143797465666173, 0xEB00000000656863, &v74);
    *(v19 + 12) = 2085;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_264783ED4();

    if (v82)
    {
      v72[2] = v83;
      v72[3] = v84;
      v72[4] = v85;
      v72[5] = v86;
      v67 = v83;
      v68 = v84;
      v69 = v85;
      v70 = v86;
      v72[0] = aBlock;
      v72[1] = v82;
      v65 = aBlock;
      v66 = v82;
      v73[0] = aBlock;
      v73[1] = v82;
      v73[4] = v85;
      v73[5] = v86;
      v73[2] = v83;
      v73[3] = v84;
      v75 = aBlock;
      v76 = v82;
      v79 = v85;
      v80 = v86;
      v77 = v83;
      v78 = v84;
      sub_26467A834(&v75, &v71);
      sub_26460CD50(v73, &qword_27FF756F8, &qword_264787DF0);
      v20 = SafetyCache.description.getter();
      v22 = v21;
      sub_26460CD50(v72, &qword_27FF756F8, &qword_264787DF0);
    }

    else
    {
      v77 = v83;
      v78 = v84;
      v79 = v85;
      v80 = v86;
      v75 = aBlock;
      v76 = v82;
      sub_26460CD50(&v75, &qword_27FF756F8, &qword_264787DF0);
      v20 = 0;
      v22 = 0xE000000000000000;
    }

    v23 = sub_2646DF234(v20, v22, &v74);

    *(v19 + 14) = v23;
    _os_log_impl(&dword_264605000, v16, v63, "%s: safety cache has been updated to %{sensitive}s", v19, 0x16u);
    v24 = v59;
    swift_arrayDestroy();
    MEMORY[0x266740650](v24, -1, -1);
    MEMORY[0x266740650](v19, -1, -1);

    v8 = v60;
    v63 = *(v60 + 8);
    v63(v14, v7);
    v15 = v58;
    v12 = v62;
  }

  else
  {

    v63 = *(v8 + 8);
    v63(v14, v7);
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4();

  v25 = v82;
  if (v82)
  {
    v77 = v83;
    v78 = v84;
    v79 = v85;
    v80 = v86;
    v75 = aBlock;
    v76 = v82;

    sub_26460CD50(&v75, &qword_27FF756F8, &qword_264787DF0);
    sub_26466E030(v25, v73);
    sub_26466E0FC();
    if (v27)
    {
      v29 = v26;
      v30 = v27;
      *&v28 = 136315651;
      v59 = v28;
      v61 = v7;
      v62 = v12;
      v60 = v8 + 8;
      do
      {
        if (v1[v64])
        {
          sub_264783DE4();
        }

        else
        {
          sub_264783DF4();
        }

        v33 = v30;
        v34 = sub_264783E14();
        v35 = sub_2647859F4();

        if (os_log_type_enabled(v34, v35))
        {
          v36 = swift_slowAlloc();
          v37 = v1;
          v38 = swift_slowAlloc();
          v39 = swift_slowAlloc();
          *&v72[0] = v39;
          *v36 = v59;
          *(v36 + 4) = sub_2646DF234(0x6143797465666173, 0xEB00000000656863, v72);
          *(v36 + 12) = 2048;
          *(v36 + 14) = v29;
          *(v36 + 22) = 2117;
          *(v36 + 24) = v33;
          *v38 = v30;
          v40 = v33;
          _os_log_impl(&dword_264605000, v34, v35, "%s: location %ld, %{sensitive}@", v36, 0x20u);
          sub_26460CD50(v38, &qword_27FF779D0, &qword_26478A9A0);
          v41 = v38;
          v1 = v37;
          v7 = v61;
          MEMORY[0x266740650](v41, -1, -1);
          __swift_destroy_boxed_opaque_existential_0(v39);
          MEMORY[0x266740650](v39, -1, -1);
          v42 = v36;
          v12 = v62;
          MEMORY[0x266740650](v42, -1, -1);
        }

        else
        {
        }

        v63(v12, v7);
        sub_26466E0FC();
        v29 = v31;
        v30 = v32;
      }

      while (v32);
    }

    sub_26467A824();
    v15 = v58;
  }

  else
  {
    v77 = v83;
    v78 = v84;
    v79 = v85;
    v80 = v86;
    v75 = aBlock;
    v76 = v82;
    sub_26460CD50(&v75, &qword_27FF756F8, &qword_264787DF0);
  }

  sub_264659B70(0, &qword_27FF76980, 0x277D85C78);
  v43 = sub_264785A44();
  v44 = swift_allocObject();
  *(v44 + 16) = v15;
  *&v83 = sub_26467A82C;
  *(&v83 + 1) = v44;
  *&aBlock = MEMORY[0x277D85DD0];
  *(&aBlock + 1) = 1107296256;
  *&v82 = sub_264659F60;
  *(&v82 + 1) = &block_descriptor_227;
  v45 = _Block_copy(&aBlock);
  v46 = v15;

  v47 = v52;
  sub_2647855B4();
  *&aBlock = MEMORY[0x277D84F90];
  sub_26467A240(&qword_27FF75CD8, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF76990, &qword_264788A90);
  sub_26466841C();
  v48 = v54;
  v49 = v57;
  sub_264785BD4();
  MEMORY[0x26673F780](0, v47, v48, v45);
  _Block_release(v45);

  (*(v56 + 8))(v48, v49);
  return (*(v53 + 8))(v47, v55);
}

uint64_t sub_26466E030@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  if ((result & 0xC000000000000001) != 0)
  {
    sub_264785C04();
    sub_264659B70(0, &qword_27FF75E80, 0x277D4AB28);
    sub_26467A890();
    sub_264785984();
    result = v10;
    v3 = v11;
    v5 = v12;
    v4 = v13;
    v6 = v14;
  }

  else
  {
    v4 = 0;
    v7 = -1;
    v8 = -1 << *(result + 32);
    v3 = result + 56;
    v5 = ~v8;
    v9 = -v8;
    if (v9 < 64)
    {
      v7 = ~(-1 << v9);
    }

    v6 = v7 & *(result + 56);
  }

  *a2 = result;
  a2[1] = v3;
  a2[2] = v5;
  a2[3] = v4;
  a2[4] = v6;
  a2[5] = 0;
  return result;
}

void sub_26466E0FC()
{
  if ((*v0 & 0x8000000000000000) != 0)
  {
    if (sub_264785C44())
    {
      sub_264659B70(0, &qword_27FF75E80, 0x277D4AB28);
      swift_dynamicCast();
      if (v11)
      {
        goto LABEL_16;
      }
    }
  }

  else
  {
    v1 = v0[3];
    v2 = v0[4];
    if (!v2)
    {
      v4 = (v0[2] + 64) >> 6;
      if (v4 <= v1 + 1)
      {
        v5 = v1 + 1;
      }

      else
      {
        v5 = (v0[2] + 64) >> 6;
      }

      v6 = v5 - 1;
      while (1)
      {
        v3 = v1 + 1;
        if (__OFADD__(v1, 1))
        {
          break;
        }

        if (v3 >= v4)
        {
          v8 = 0;
          v7 = 0;
          goto LABEL_15;
        }

        v2 = *(v0[1] + 8 * v3);
        ++v1;
        if (v2)
        {
          goto LABEL_14;
        }
      }

      __break(1u);
LABEL_21:
      __break(1u);
      return;
    }

    v3 = v0[3];
LABEL_14:
    v7 = (v2 - 1) & v2;
    v8 = *(*(*v0 + 48) + ((v3 << 9) | (8 * __clz(__rbit64(v2)))));
    v9 = v8;
    v6 = v3;
LABEL_15:
    v0[3] = v6;
    v0[4] = v7;
    if (v8)
    {
LABEL_16:
      v10 = v0[5];
      if (!__OFADD__(v10, 1))
      {
        v0[5] = v10 + 1;
        return;
      }

      goto LABEL_21;
    }
  }
}

uint64_t sub_26466E238()
{
  type metadata accessor for SafetyCacheViewModel();
  sub_26467A240(&qword_27FF756E8, type metadata accessor for SafetyCacheViewModel);
  sub_264783E64();
  sub_264783E74();
}

uint64_t sub_26466E2C0()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4();
}

void (*sub_26466E390(void *a1))(uint64_t a1, char a2)
{
  a1[2] = v1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4();

  *a1 = a1[1];
  return sub_26466E424;
}

uint64_t (*sub_26466E460(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF765E0, &qword_26478A750);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC15SafetyMonitorUI20SafetyCacheViewModel__phoneCache;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF765D8, &qword_26478A748);
  sub_264783EA4();
  swift_endAccess();
  return sub_2646263E8;
}

uint64_t sub_26466E5F8(void **a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = v2;
  v3;
  sub_264783EE4();
  return sub_26466E674();
}

uint64_t sub_26466E674()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4();

  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4();

  SafetyCache.init(phoneCache:watchCache:)(v3, v3, &v3);
  swift_getKeyPath();
  swift_getKeyPath();
  v1 = v0;
  sub_264783EE4();
  return sub_26466D6F8();
}

void sub_26466E7C4(void *a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = a1;
  v4 = v1;
  sub_264783EE4();
  sub_26466E674();
}

void (*sub_26466E840(void *a1))(uint64_t a1, char a2)
{
  a1[2] = v1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4();

  *a1 = a1[1];
  return sub_26466E8D4;
}

void sub_26466E8E8(uint64_t a1, char a2)
{
  v4 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  *(a1 + 8) = v4;
  v5 = *(a1 + 16);
  v8 = v4;
  v5;
  if (a2)
  {
    v6 = v8;
    sub_264783EE4();
    sub_26466E674();

    v7 = *a1;
  }

  else
  {
    sub_264783EE4();
    sub_26466E674();
    v7 = v8;
  }
}

uint64_t sub_26466E9D0(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF765E0, &qword_26478A750);
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
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF765D8, &qword_26478A748);
  sub_264783EB4();
  swift_endAccess();
  return (*(v9 + 8))(v15, v8);
}

uint64_t sub_26466EB84(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF765E0, &qword_26478A750);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  (*(v5 + 16))(&v10 - v7, a1, v4);
  v8 = *a2;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF765D8, &qword_26478A748);
  sub_264783EB4();
  swift_endAccess();
  return (*(v5 + 8))(a1, v4);
}

uint64_t (*sub_26466ECBC(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF765E0, &qword_26478A750);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC15SafetyMonitorUI20SafetyCacheViewModel__watchCache;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF765D8, &qword_26478A748);
  sub_264783EA4();
  swift_endAccess();
  return sub_26465A0AC;
}

uint64_t (*sub_26466EE84(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_264783EC4();
  return sub_264622F4C;
}

uint64_t sub_26466EF28(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF765F8, &qword_26478A7E8);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v15 - v10;
  v12 = *(v5 + 16);
  v12(&v15 - v10, a1, v4);
  v13 = *a2;
  v12(v9, v11, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF756A0, &qword_264787DA0);
  sub_264783EB4();
  swift_endAccess();
  return (*(v5 + 8))(v11, v4);
}

uint64_t sub_26466F0C8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF765F8, &qword_26478A7E8);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF756A0, &qword_264787DA0);
  sub_264783EB4();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_26466F200(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF765F8, &qword_26478A7E8);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC15SafetyMonitorUI20SafetyCacheViewModel__cacheExpiryDate;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF756A0, &qword_264787DA0);
  sub_264783EA4();
  swift_endAccess();
  return sub_26465A0AC;
}

uint64_t sub_26466F384(uint64_t *a1)
{
  v1 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4();
}

uint64_t sub_26466F410(uint64_t a1, void **a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF756B8, &qword_26478AC90);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v14 - v9;
  sub_26460CCE8(a1, &v14 - v9, &qword_27FF756B8, &qword_26478AC90);
  v11 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_26460CCE8(v10, v8, &qword_27FF756B8, &qword_26478AC90);
  v12 = v11;
  sub_264783EE4();
  return sub_26460CD50(v10, &qword_27FF756B8, &qword_26478AC90);
}

uint64_t sub_26466F56C(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF756B8, &qword_26478AC90);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v9 - v5;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_26460CCE8(a1, v6, &qword_27FF756B8, &qword_26478AC90);
  v7 = v1;
  sub_264783EE4();
  return sub_26460CD50(a1, &qword_27FF756B8, &qword_26478AC90);
}

uint64_t (*sub_26466F658(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_264783EC4();
  return sub_26465A0B0;
}

uint64_t sub_26466F6FC(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF765F8, &qword_26478A7E8);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v15 - v10;
  v12 = *(v5 + 16);
  v12(&v15 - v10, a1, v4);
  v13 = *a2;
  v12(v9, v11, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF756A0, &qword_264787DA0);
  sub_264783EB4();
  swift_endAccess();
  return (*(v5 + 8))(v11, v4);
}

uint64_t sub_26466F89C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF765F8, &qword_26478A7E8);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF756A0, &qword_264787DA0);
  sub_264783EB4();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_26466F9D4(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF765F8, &qword_26478A7E8);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC15SafetyMonitorUI20SafetyCacheViewModel__cacheReleaseDate;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF756A0, &qword_264787DA0);
  sub_264783EA4();
  swift_endAccess();
  return sub_26465A0AC;
}

void sub_26466FB44(void *a1)
{
  v2 = v1;
  v4 = sub_264785594();
  v5 = *(v4 - 8);
  v74 = v4;
  v75 = v5;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v66 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = sub_2647855C4();
  v9 = *(v76 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v76);
  v12 = &v66 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_2647855A4();
  v70 = *(v13 - 8);
  v71 = v13;
  v14 = *(v70 + 64);
  MEMORY[0x28223BE20](v13);
  v69 = &v66 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_264783E24();
  v72 = *(v16 - 8);
  v73 = v16;
  v17 = *(v72 + 64);
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v66 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v66 - v21;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4();

  v23 = aBlock;
  if (aBlock)
  {
    if (a1)
    {
      sub_264659B70(0, &qword_27FF76678, 0x277D4AB58);
      v24 = v2;
      v25 = v12;
      v26 = v9;
      v27 = v8;
      v28 = a1;
      v29 = sub_264785AE4();

      v8 = v27;
      v9 = v26;
      v12 = v25;
      v2 = v24;

      if (v29)
      {
        return;
      }
    }

    else
    {
    }
  }

  else if (!a1)
  {
    return;
  }

  v30 = sub_264675E44();
  v31 = v2[OBJC_IVAR____TtC15SafetyMonitorUI20SafetyCacheViewModel_userType];
  v32 = "SMDirectionsTransportType";
  if (v30)
  {
    if (v2[OBJC_IVAR____TtC15SafetyMonitorUI20SafetyCacheViewModel_userType])
    {
      sub_264783DE4();
    }

    else
    {
      sub_264783DF4();
    }

    v66 = v2;
    v33 = v2;
    v34 = sub_264783E14();
    v35 = sub_2647859D4();
    v36 = v33;

    if (os_log_type_enabled(v34, v35))
    {
      v37 = swift_slowAlloc();
      v68 = v8;
      v38 = v37;
      v39 = swift_slowAlloc();
      *v38 = 138412290;
      swift_getKeyPath();
      v67 = v12;
      swift_getKeyPath();
      sub_264783ED4();
      v12 = v67;

      v40 = aBlock;
      *(v38 + 4) = aBlock;
      *v39 = v40;
      _os_log_impl(&dword_264605000, v34, v35, "#SafetyCacheViewModel, updating safety cache because session state is updated to %@", v38, 0xCu);
      sub_26460CD50(v39, &qword_27FF779D0, &qword_26478A9A0);
      v41 = v39;
      v32 = "SMDirectionsTransportType";
      MEMORY[0x266740650](v41, -1, -1);
      v42 = v38;
      v8 = v68;
      MEMORY[0x266740650](v42, -1, -1);
    }

    (*(v72 + 8))(v22, v73);
    sub_264659B70(0, &qword_27FF76980, 0x277D85C78);
    v44 = v69;
    v43 = v70;
    v45 = v71;
    (*(v70 + 104))(v69, *MEMORY[0x277D851A8], v71);
    v46 = sub_264785A64();
    (*(v43 + 8))(v44, v45);
    v47 = swift_allocObject();
    *(v47 + 16) = v36;
    v82 = sub_26467A814;
    v83 = v47;
    aBlock = MEMORY[0x277D85DD0];
    v79 = *(v32 + 297);
    v80 = sub_264659F60;
    v81 = &block_descriptor_210_0;
    v48 = _Block_copy(&aBlock);
    v49 = v36;
    sub_2647855B4();
    v77 = MEMORY[0x277D84F90];
    sub_26467A240(&qword_27FF75CD8, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF76990, &qword_264788A90);
    sub_26466841C();
    v50 = v74;
    sub_264785BD4();
    MEMORY[0x26673F780](0, v12, v8, v48);
    _Block_release(v48);

    (*(v75 + 8))(v8, v50);
    (*(v9 + 8))(v12, v76);

    v2 = v66;
  }

  else
  {
    if (v2[OBJC_IVAR____TtC15SafetyMonitorUI20SafetyCacheViewModel_userType])
    {
      sub_264783DE4();
    }

    else
    {
      sub_264783DF4();
    }

    v51 = v2;
    v52 = sub_264783E14();
    v53 = sub_2647859D4();

    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      v67 = v12;
      v55 = v54;
      v56 = swift_slowAlloc();
      v68 = v8;
      v57 = v56;
      *v55 = 138412290;
      swift_getKeyPath();
      swift_getKeyPath();
      sub_264783ED4();
      v32 = "SMDirectionsTransportType";

      v58 = aBlock;
      *(v55 + 4) = aBlock;
      *v57 = v58;
      _os_log_impl(&dword_264605000, v52, v53, "#SafetyCacheViewModel, not updating safety cache because session state is updated to %@", v55, 0xCu);
      sub_26460CD50(v57, &qword_27FF779D0, &qword_26478A9A0);
      v59 = v57;
      v8 = v68;
      MEMORY[0x266740650](v59, -1, -1);
      v60 = v55;
      v12 = v67;
      MEMORY[0x266740650](v60, -1, -1);
    }

    (*(v72 + 8))(v20, v73);
  }

  sub_264659B70(0, &qword_27FF76980, 0x277D85C78);
  v61 = sub_264785A44();
  v62 = swift_allocObject();
  *(v62 + 16) = v2;
  v82 = sub_26467A80C;
  v83 = v62;
  aBlock = MEMORY[0x277D85DD0];
  v79 = *(v32 + 297);
  v80 = sub_264659F60;
  v81 = &block_descriptor_204;
  v63 = _Block_copy(&aBlock);
  v64 = v2;

  sub_2647855B4();
  aBlock = MEMORY[0x277D84F90];
  sub_26467A240(&qword_27FF75CD8, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF76990, &qword_264788A90);
  sub_26466841C();
  v65 = v74;
  sub_264785BD4();
  MEMORY[0x26673F780](0, v12, v8, v63);
  _Block_release(v63);

  (*(v75 + 8))(v8, v65);
  (*(v9 + 8))(v12, v76);
}

void sub_26467049C(uint64_t a1)
{
  v1 = *(a1 + OBJC_IVAR____TtC15SafetyMonitorUI20SafetyCacheViewModel_manager);
  v2 = sub_264783B14();
  v3 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v5[4] = sub_26467A978;
  v5[5] = v3;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 1107296256;
  v5[2] = sub_26467762C;
  v5[3] = &block_descriptor_215;
  v4 = _Block_copy(v5);

  [v1 fetchReceiverSafetyCacheForSessionID:v2 completion:v4];
  _Block_release(v4);

  sub_264674AA0();
}

uint64_t sub_2646705A8(uint64_t a1)
{
  type metadata accessor for SafetyCacheViewModel();
  sub_26467A240(&qword_27FF756E8, type metadata accessor for SafetyCacheViewModel);
  sub_264783E64();
  sub_264783E74();

  v3 = *(a1 + OBJC_IVAR____TtC15SafetyMonitorUI20SafetyCacheViewModel_containerVCHandler);
  if (v3)
  {
    v4 = *(a1 + OBJC_IVAR____TtC15SafetyMonitorUI20SafetyCacheViewModel_containerVCHandler + 8);
    return v3(result);
  }

  return result;
}

void sub_264670664(void *a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4();

  swift_getKeyPath();
  swift_getKeyPath();
  v3 = a1;
  v4 = v1;
  sub_264783EE4();
  sub_26466FB44(v5);
}

void (*sub_26467073C(void *a1))(uint64_t a1, char a2)
{
  a1[2] = v1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4();

  *a1 = a1[1];
  return sub_2646707D0;
}

void sub_2646707D0(uint64_t a1, char a2)
{
  v4 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  v5 = *(a1 + 16);
  if (a2)
  {
    v6 = v4;
    sub_264783ED4();

    v7 = *(a1 + 8);
    swift_getKeyPath();
    swift_getKeyPath();
    *(a1 + 8) = v4;
    v8 = v5;
    v9 = v6;
    sub_264783EE4();
    sub_26466FB44(v7);

    v10 = *a1;
  }

  else
  {
    v11 = *(a1 + 16);
    sub_264783ED4();

    v14 = *(a1 + 8);
    swift_getKeyPath();
    swift_getKeyPath();
    *(a1 + 8) = v4;
    v12 = v4;
    v13 = v5;
    sub_264783EE4();
    sub_26466FB44(v14);

    v10 = v14;
  }
}

uint64_t sub_264670964(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76618, &unk_26478A888);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v15 - v10;
  v12 = *(v5 + 16);
  v12(&v15 - v10, a1, v4);
  v13 = *a2;
  v12(v9, v11, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76610, &qword_26478A880);
  sub_264783EB4();
  swift_endAccess();
  return (*(v5 + 8))(v11, v4);
}

uint64_t sub_264670B04(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76618, &unk_26478A888);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76610, &qword_26478A880);
  sub_264783EB4();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_264670C3C(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76618, &unk_26478A888);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC15SafetyMonitorUI20SafetyCacheViewModel__receiverSessionStatus;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76610, &qword_26478A880);
  sub_264783EA4();
  swift_endAccess();
  return sub_26465A0AC;
}

_BYTE *SafetyCacheViewModel.__allocating_init(sessionID:userType:containerVCHandler:)(char *a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4)
{
  v9 = objc_allocWithZone(v4);
  v10 = sub_2646789E0(a1, a2, a3, a4);
  sub_26460C9A0(a3);
  return v10;
}

_BYTE *SafetyCacheViewModel.init(sessionID:userType:containerVCHandler:)(char *a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_2646789E0(a1, a2, a3, a4);
  sub_26460C9A0(a3);
  return v5;
}

id SafetyCacheViewModel.__deallocating_deinit()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76970, &qword_264789300);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v31 - v3;
  v5 = sub_264783B64();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_264783E24();
  v10 = *(v37 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v37);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = OBJC_IVAR____TtC15SafetyMonitorUI20SafetyCacheViewModel_userType;
  if (v0[OBJC_IVAR____TtC15SafetyMonitorUI20SafetyCacheViewModel_userType])
  {
    sub_264783DE4();
  }

  else
  {
    sub_264783DF4();
  }

  v14 = v0;
  v35 = v0;
  v15 = v14;
  v16 = sub_264783E14();
  v17 = sub_2647859F4();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v38 = v32;
    *v18 = 136315394;
    (*(v6 + 16))(v9, v15 + OBJC_IVAR____TtC15SafetyMonitorUI20SafetyCacheViewModel_sessionID, v5);
    sub_26467A240(&qword_27FF75D80, MEMORY[0x277CC95F0]);
    v33 = v15;
    v19 = sub_264785E44();
    v34 = v4;
    v21 = v20;
    (*(v6 + 8))(v9, v5);
    v22 = sub_2646DF234(v19, v21, &v38);

    *(v18 + 4) = v22;
    *(v18 + 12) = 2080;
    if (v35[v36])
    {
      v23 = 0x7265766965636552;
    }

    else
    {
      v23 = 0x6F74616974696E49;
    }

    if (v35[v36])
    {
      v24 = 0xE800000000000000;
    }

    else
    {
      v24 = 0xE900000000000072;
    }

    v25 = sub_2646DF234(v23, v24, &v38);
    v15 = v33;

    *(v18 + 14) = v25;
    v4 = v34;
    _os_log_impl(&dword_264605000, v16, v17, "#SafetyCacheViewModel, sessionID: %s, deinitializing safetyCacheViewModel, userType: %s", v18, 0x16u);
    v26 = v32;
    swift_arrayDestroy();
    MEMORY[0x266740650](v26, -1, -1);
    MEMORY[0x266740650](v18, -1, -1);
  }

  (*(v10 + 8))(v13, v37);
  v27 = sub_2647858E4();
  (*(*(v27 - 8) + 56))(v4, 1, 1, v27);
  v28 = swift_allocObject();
  *(v28 + 16) = 0;
  *(v28 + 24) = 0;
  sub_264635430(0, 0, v4, &unk_26478A8A0, v28);

  v29 = type metadata accessor for SafetyCacheViewModel();
  v39.receiver = v15;
  v39.super_class = v29;
  return objc_msgSendSuper2(&v39, sel_dealloc);
}

void sub_2646714E4()
{
  if (qword_27FF74FC0 != -1)
  {
    swift_once();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4();

  if (v8)
  {
    v0 = [v8 isActiveState];

    if (v0)
    {
      v1 = [objc_opt_self() defaultManager];
      v2 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v12 = sub_26467A468;
      v13 = v2;
      v8 = MEMORY[0x277D85DD0];
      v9 = 1107296256;
      v10 = sub_26467A99C;
      v11 = &block_descriptor_122;
      v3 = _Block_copy(&v8);

      [v1 startMonitoringInitiatorSafetyCacheWithHandler_];
      _Block_release(v3);
    }
  }

  v4 = [objc_opt_self() defaultManager];
  v5 = sub_264783B14();
  v6 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v12 = sub_26467A420;
  v13 = v6;
  v8 = MEMORY[0x277D85DD0];
  v9 = 1107296256;
  v10 = sub_26467A99C;
  v11 = &block_descriptor_118;
  v7 = _Block_copy(&v8);

  [v4 fetchInitiatorSafetyCacheForSessionID:v5 completion:v7];
  _Block_release(v7);
}

uint64_t sub_26467177C(void *a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF756B8, &qword_26478AC90);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v14 = &aBlock - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &aBlock - v15;
  v17 = &property descriptor for DeviceCacheInfoViewModel.isTransparencyMode;
  if (a1)
  {
    sub_264659B70(0, &qword_27FF76980, 0x277D85C78);
    v18 = sub_264785A44();
    v19 = swift_allocObject();
    *(v19 + 16) = a2;
    *(v19 + 24) = a1;
    v35 = sub_26467AA2C;
    v36 = v19;
    aBlock = MEMORY[0x277D85DD0];
    v32 = 1107296256;
    v33 = sub_26465A0B4;
    v34 = &block_descriptor_140;
    v20 = _Block_copy(&aBlock);
    v21 = a2;
    v22 = a1;
    v17 = &property descriptor for DeviceCacheInfoViewModel.isTransparencyMode;

    [v22 shiftLocationsOnQueue:v18 handler:v20];
    _Block_release(v20);
  }

  if (a3)
  {
    sub_264659B70(0, &qword_27FF76980, 0x277D85C78);
    v23 = sub_264785A44();
    v24 = swift_allocObject();
    *(v24 + 16) = a2;
    *(v24 + 24) = a3;
    v35 = sub_26467AA28;
    v36 = v24;
    aBlock = MEMORY[0x277D85DD0];
    v32 = 1107296256;
    v33 = sub_26465A0B4;
    v34 = &block_descriptor_134;
    v25 = _Block_copy(&aBlock);
    v26 = a2;
    v27 = a3;

    [v27 v17[239]];
    _Block_release(v25);
  }

  sub_26460CCE8(a4, v16, &qword_27FF756B8, &qword_26478AC90);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_26460CCE8(v16, v14, &qword_27FF756B8, &qword_26478AC90);
  v28 = a2;
  sub_264783EE4();
  sub_26460CD50(v16, &qword_27FF756B8, &qword_26478AC90);
  sub_26460CCE8(a5, v16, &qword_27FF756B8, &qword_26478AC90);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_26460CCE8(v16, v14, &qword_27FF756B8, &qword_26478AC90);
  v29 = v28;
  sub_264783EE4();
  return sub_26460CD50(v16, &qword_27FF756B8, &qword_26478AC90);
}

uint64_t sub_264671AF8(uint64_t a1, void *a2, void *a3)
{
  swift_getKeyPath();
  swift_getKeyPath();
  v5 = a3;
  v6 = a2;
  sub_264783EE4();
  return sub_26466E674();
}

uint64_t sub_264671B70(void *a1, void *a2, void *a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v120 = a8;
  v126 = a6;
  v119 = a5;
  v127 = a4;
  v128 = a2;
  v129 = a3;
  v115 = a1;
  v10 = sub_264785594();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v123 = &v102 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_2647855C4();
  v122 = *(v14 - 8);
  v15 = *(v122 + 64);
  MEMORY[0x28223BE20](v14);
  v121 = &v102 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF756B8, &qword_26478AC90);
  v116 = *(v17 - 8);
  v18 = *(v116 + 64);
  v19 = MEMORY[0x28223BE20](v17 - 8);
  v118 = &v102 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v19);
  v117 = &v102 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v113 = &v102 - v23;
  MEMORY[0x28223BE20](v22);
  v25 = &v102 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75CE8, &unk_264788B70);
  v27 = *(*(v26 - 8) + 64);
  v28 = MEMORY[0x28223BE20](v26 - 8);
  v30 = &v102 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v32 = &v102 - v31;
  v33 = sub_264783E24();
  v34 = *(v33 - 8);
  v35 = *(v34 + 64);
  MEMORY[0x28223BE20](v33);
  v125 = &v102 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v38 = result;
    v124 = v25;
    v106 = v34;
    v107 = v33;
    v39 = *(result + OBJC_IVAR____TtC15SafetyMonitorUI20SafetyCacheViewModel_userType);
    v112 = v10;
    v111 = v11;
    v105 = v18;
    v40 = v125;
    if (v39)
    {
      sub_264783DE4();
    }

    else
    {
      sub_264783DF4();
    }

    v110 = v14;
    v109 = a10;
    v108 = a9;
    sub_26460CCE8(v115, v32, &qword_27FF75CE8, &unk_264788B70);
    v41 = v124;
    sub_26460CCE8(v127, v124, &qword_27FF756B8, &qword_26478AC90);
    v42 = v128;
    v43 = v129;
    v44 = v126;
    v45 = v126;
    v46 = sub_264783E14();
    v47 = sub_2647859F4();
    v114 = v43;

    v115 = v42;
    v104 = v47;
    if (os_log_type_enabled(v46, v47))
    {
      v102 = v46;
      v103 = v38;
      v48 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      aBlock[0] = v50;
      *v48 = 136316163;
      sub_26460CCE8(v32, v30, &qword_27FF75CE8, &unk_264788B70);
      v51 = sub_264783B64();
      v52 = *(v51 - 8);
      v53 = (*(v52 + 48))(v30, 1, v51);
      v54 = v105;
      if (v53 == 1)
      {
        sub_26460CD50(v30, &qword_27FF75CE8, &unk_264788B70);
        v55 = 0xE300000000000000;
        v56 = 7104878;
      }

      else
      {
        v56 = sub_264783B04();
        v55 = v59;
        (*(v52 + 8))(v30, v51);
      }

      sub_26460CD50(v32, &qword_27FF75CE8, &unk_264788B70);
      v60 = sub_2646DF234(v56, v55, aBlock);

      *(v48 + 4) = v60;
      *(v48 + 12) = 2117;
      v61 = v115;
      *(v48 + 14) = v115;
      *(v48 + 22) = 2117;
      v62 = v114;
      *(v48 + 24) = v114;
      v63 = v129;
      *v49 = v128;
      v49[1] = v63;
      *(v48 + 32) = 2080;
      v64 = v113;
      sub_26460CCE8(v124, v113, &qword_27FF756B8, &qword_26478AC90);
      v65 = sub_264783AF4();
      v66 = *(v65 - 8);
      v67 = (*(v66 + 48))(v64, 1, v65);
      v68 = v61;
      v69 = v62;
      v70 = v126;
      if (v67 == 1)
      {
        sub_26460CD50(v64, &qword_27FF756B8, &qword_26478AC90);
        v71 = 0xE300000000000000;
        v72 = 7104878;
      }

      else
      {
        v73 = sub_264783A64();
        v74 = v54;
        v75 = v49;
        v76 = v50;
        v77 = v64;
        v78 = [v73 absoluteTimeString:0 preposition:0 capitalized:0];

        v72 = sub_264785724();
        v71 = v79;

        v80 = v77;
        v50 = v76;
        v49 = v75;
        v54 = v74;
        v70 = v126;
        (*(v66 + 8))(v80, v65);
      }

      v58 = v112;
      v57 = v111;
      sub_26460CD50(v124, &qword_27FF756B8, &qword_26478AC90);
      v81 = sub_2646DF234(v72, v71, aBlock);

      *(v48 + 34) = v81;
      *(v48 + 42) = 2080;
      if (v70)
      {
        swift_getErrorValue();
        v82 = sub_264785EF4();
        v84 = v83;
        v85 = v125;
      }

      else
      {
        v84 = 0xE300000000000000;
        v85 = v125;
        v82 = 7104878;
      }

      v86 = sub_2646DF234(v82, v84, aBlock);

      *(v48 + 44) = v86;
      v87 = v102;
      _os_log_impl(&dword_264605000, v102, v104, "#SafetyCacheViewModel,uuid %s,phoneCache %{sensitive}@,watchCache %{sensitive}@,cacheExpiryDate %s,error %s", v48, 0x34u);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF779D0, &qword_26478A9A0);
      swift_arrayDestroy();
      MEMORY[0x266740650](v49, -1, -1);
      swift_arrayDestroy();
      MEMORY[0x266740650](v50, -1, -1);
      MEMORY[0x266740650](v48, -1, -1);

      (*(v106 + 8))(v85, v107);
      v38 = v103;
    }

    else
    {

      sub_26460CD50(v41, &qword_27FF756B8, &qword_26478AC90);
      sub_26460CD50(v32, &qword_27FF75CE8, &unk_264788B70);
      (*(v106 + 8))(v40, v107);
      v57 = v111;
      v58 = v112;
      v54 = v105;
    }

    sub_264659B70(0, &qword_27FF76980, 0x277D85C78);
    v88 = sub_264785A44();
    v89 = v117;
    sub_26460CCE8(v127, v117, &qword_27FF756B8, &qword_26478AC90);
    v90 = v118;
    sub_26460CCE8(v119, v118, &qword_27FF756B8, &qword_26478AC90);
    v91 = *(v116 + 80);
    v92 = (v91 + 40) & ~v91;
    v93 = (v54 + v91 + v92) & ~v91;
    v94 = swift_allocObject();
    v95 = v129;
    v94[2] = v128;
    v94[3] = v38;
    v94[4] = v95;
    sub_26460CF84(v89, v94 + v92);
    sub_26460CF84(v90, v94 + v93);
    aBlock[4] = v108;
    aBlock[5] = v94;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_264659F60;
    aBlock[3] = v109;
    v96 = _Block_copy(aBlock);
    v97 = v115;
    v98 = v114;
    v99 = v38;

    v100 = v121;
    sub_2647855B4();
    aBlock[0] = MEMORY[0x277D84F90];
    sub_26467A240(&qword_27FF75CD8, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF76990, &qword_264788A90);
    sub_26466841C();
    v101 = v123;
    sub_264785BD4();
    MEMORY[0x26673F780](0, v100, v101, v96);
    _Block_release(v96);

    (*(v57 + 8))(v101, v58);
    return (*(v122 + 8))(v100, v110);
  }

  return result;
}

uint64_t sub_2646726FC(void *a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF756B8, &qword_26478AC90);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v14 = &aBlock - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &aBlock - v15;
  v17 = &property descriptor for DeviceCacheInfoViewModel.isTransparencyMode;
  if (a1)
  {
    sub_264659B70(0, &qword_27FF76980, 0x277D85C78);
    v18 = sub_264785A44();
    v19 = swift_allocObject();
    *(v19 + 16) = a2;
    *(v19 + 24) = a1;
    v35 = sub_26467AA2C;
    v36 = v19;
    aBlock = MEMORY[0x277D85DD0];
    v32 = 1107296256;
    v33 = sub_26465A0B4;
    v34 = &block_descriptor_158;
    v20 = _Block_copy(&aBlock);
    v21 = a2;
    v22 = a1;
    v17 = &property descriptor for DeviceCacheInfoViewModel.isTransparencyMode;

    [v22 shiftLocationsOnQueue:v18 handler:v20];
    _Block_release(v20);
  }

  if (a3)
  {
    sub_264659B70(0, &qword_27FF76980, 0x277D85C78);
    v23 = sub_264785A44();
    v24 = swift_allocObject();
    *(v24 + 16) = a2;
    *(v24 + 24) = a3;
    v35 = sub_26467AA28;
    v36 = v24;
    aBlock = MEMORY[0x277D85DD0];
    v32 = 1107296256;
    v33 = sub_26465A0B4;
    v34 = &block_descriptor_152;
    v25 = _Block_copy(&aBlock);
    v26 = a2;
    v27 = a3;

    [v27 v17[239]];
    _Block_release(v25);
  }

  sub_26460CCE8(a4, v16, &qword_27FF756B8, &qword_26478AC90);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_26460CCE8(v16, v14, &qword_27FF756B8, &qword_26478AC90);
  v28 = a2;
  sub_264783EE4();
  sub_26460CD50(v16, &qword_27FF756B8, &qword_26478AC90);
  sub_26460CCE8(a5, v16, &qword_27FF756B8, &qword_26478AC90);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_26460CCE8(v16, v14, &qword_27FF756B8, &qword_26478AC90);
  v29 = v28;
  sub_264783EE4();
  return sub_26460CD50(v16, &qword_27FF756B8, &qword_26478AC90);
}

uint64_t sub_264672A7C(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t a5, uint64_t a6, void *a7)
{
  v38 = a4;
  v39 = a7;
  v37 = a3;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF756B8, &qword_26478AC90);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v15 = &v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v36 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75CE8, &unk_264788B70);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v21 = &v36 - v20;
  v22 = *(a1 + 40);
  v36 = *(a1 + 32);
  if (a2)
  {
    sub_264783B44();
    v23 = sub_264783B64();
    (*(*(v23 - 8) + 56))(v21, 0, 1, v23);
  }

  else
  {
    v24 = sub_264783B64();
    (*(*(v24 - 8) + 56))(v21, 1, 1, v24);
  }

  if (a5)
  {
    sub_264783AC4();
    v25 = 0;
  }

  else
  {
    v25 = 1;
  }

  v26 = sub_264783AF4();
  v27 = *(*(v26 - 8) + 56);
  v28 = 1;
  v27(v17, v25, 1, v26);
  if (a6)
  {
    sub_264783AC4();
    v28 = 0;
  }

  v27(v15, v28, 1, v26);

  v29 = v37;
  v30 = v37;
  v31 = v38;
  v32 = v38;
  v33 = v39;
  v34 = v39;
  v36(v21, v29, v31, v17, v15, v33);

  sub_26460CD50(v15, &qword_27FF756B8, &qword_26478AC90);
  sub_26460CD50(v17, &qword_27FF756B8, &qword_26478AC90);
  return sub_26460CD50(v21, &qword_27FF75CE8, &unk_264788B70);
}

void sub_264672D64()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC15SafetyMonitorUI20SafetyCacheViewModel_manager];
  v3 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v13 = sub_26467A2E0;
  v14 = v3;
  v9 = MEMORY[0x277D85DD0];
  v10 = 1107296256;
  v11 = sub_264673EEC;
  v12 = &block_descriptor_95;
  v4 = _Block_copy(&v9);

  [v2 startMonitoringReceiverSessionStatusWithHandler_];
  _Block_release(v4);
  v5 = sub_264783B14();
  v6 = swift_allocObject();
  *(v6 + 16) = v1;
  v13 = sub_26467A998;
  v14 = v6;
  v9 = MEMORY[0x277D85DD0];
  v10 = 1107296256;
  v11 = sub_26464CCBC;
  v12 = &block_descriptor_102;
  v7 = _Block_copy(&v9);
  v8 = v1;

  [v2 fetchReceiverSessionStatusForSessionID:v5 completion:v7];
  _Block_release(v7);
}

uint64_t sub_264672F10(char *a1, void *a2, void *a3)
{
  v101 = a2;
  v102 = a1;
  v4 = sub_264785594();
  v99 = *(v4 - 8);
  v100 = v4;
  v5 = *(v99 + 8);
  MEMORY[0x28223BE20](v4);
  v97 = &v94 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = sub_2647855C4();
  v96 = *(v98 - 8);
  v7 = *(v96 + 64);
  MEMORY[0x28223BE20](v98);
  v95 = &v94 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_264783E24();
  v10 = *(v9 - 8);
  v106 = v9;
  v107 = v10;
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v94 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v94 - v16;
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v94 - v19;
  MEMORY[0x28223BE20](v18);
  v22 = &v94 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75CE8, &unk_264788B70);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23 - 8);
  v26 = &v94 - v25;
  v27 = sub_264783B64();
  v28 = *(v27 - 8);
  v104 = v27;
  v105 = v28;
  v29 = *(v28 + 64);
  v30 = MEMORY[0x28223BE20](v27);
  v31 = &v94 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = MEMORY[0x28223BE20](v30);
  v34 = &v94 - v33;
  MEMORY[0x28223BE20](v32);
  v103 = &v94 - v35;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v37 = result;
    if (a3)
    {
      v38 = a3;
      sub_264783DE4();
      v39 = a3;
      v40 = sub_264783E14();
      v41 = sub_2647859D4();

      if (os_log_type_enabled(v40, v41))
      {
        v42 = swift_slowAlloc();
        v43 = swift_slowAlloc();
        v44 = swift_slowAlloc();
        aBlock[0] = v44;
        *v42 = 136315394;
        *(v42 + 4) = sub_2646DF234(0xD00000000000002FLL, 0x8000000264795330, aBlock);
        *(v42 + 12) = 2112;
        v45 = a3;
        v46 = _swift_stdlib_bridgeErrorToNSError();
        *(v42 + 14) = v46;
        *v43 = v46;
        _os_log_impl(&dword_264605000, v40, v41, "%s: error happened in callback of startMonitoringReceiverSessionStatus: error:%@", v42, 0x16u);
        sub_26460CD50(v43, &qword_27FF779D0, &qword_26478A9A0);
        MEMORY[0x266740650](v43, -1, -1);
        __swift_destroy_boxed_opaque_existential_0(v44);
        MEMORY[0x266740650](v44, -1, -1);
        MEMORY[0x266740650](v42, -1, -1);
      }

      else
      {
      }

      v53 = *(v107 + 8);
      v54 = v22;
      return v53(v54, v106);
    }

    sub_26460CCE8(v102, v26, &qword_27FF75CE8, &unk_264788B70);
    v48 = v104;
    v47 = v105;
    if ((*(v105 + 48))(v26, 1, v104) == 1)
    {
      sub_26460CD50(v26, &qword_27FF75CE8, &unk_264788B70);
      sub_264783DE4();
      v49 = sub_264783E14();
      v50 = sub_2647859D4();
      if (os_log_type_enabled(v49, v50))
      {
        v51 = swift_slowAlloc();
        v52 = swift_slowAlloc();
        aBlock[0] = v52;
        *v51 = 136315138;
        *(v51 + 4) = sub_2646DF234(0xD00000000000002FLL, 0x8000000264795330, aBlock);
        _os_log_impl(&dword_264605000, v49, v50, "%s: missing sessionID in callback of startMonitoringReceiverSessionStatus", v51, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v52);
        MEMORY[0x266740650](v52, -1, -1);
        MEMORY[0x266740650](v51, -1, -1);
      }

      else
      {
      }

      v53 = *(v107 + 8);
      v54 = v14;
      return v53(v54, v106);
    }

    v55 = v103;
    v102 = *(v47 + 32);
    (v102)(v103, v26, v48);
    v56 = OBJC_IVAR____TtC15SafetyMonitorUI20SafetyCacheViewModel_sessionID;
    if (sub_264783B34())
    {
      v57 = v37;
      v58 = v101;
      if (v101)
      {
        sub_264659B70(0, &qword_27FF76980, 0x277D85C78);
        v59 = v58;
        v107 = sub_264785A44();
        v61 = v104;
        v60 = v105;
        (*(v105 + 16))(v34, v103, v104);
        v62 = (*(v60 + 80) + 32) & ~*(v60 + 80);
        v63 = swift_allocObject();
        *(v63 + 16) = v57;
        *(v63 + 24) = v59;
        (v102)(v63 + v62, v34, v61);
        aBlock[4] = sub_26467A3B4;
        aBlock[5] = v63;
        aBlock[0] = MEMORY[0x277D85DD0];
        aBlock[1] = 1107296256;
        aBlock[2] = sub_264659F60;
        aBlock[3] = &block_descriptor_108;
        v64 = _Block_copy(aBlock);
        v65 = v59;
        v66 = v57;

        v67 = v95;
        sub_2647855B4();
        aBlock[0] = MEMORY[0x277D84F90];
        sub_26467A240(&qword_27FF75CD8, MEMORY[0x277D85198]);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF76990, &qword_264788A90);
        sub_26466841C();
        v68 = v97;
        v69 = v100;
        sub_264785BD4();
        v70 = v107;
        MEMORY[0x26673F780](0, v67, v68, v64);
        _Block_release(v64);

        (*(v99 + 1))(v68, v69);
        (*(v96 + 8))(v67, v98);
        return (*(v60 + 8))(v103, v61);
      }

      else
      {
        sub_264783DE4();
        v90 = sub_264783E14();
        v91 = sub_2647859D4();
        if (os_log_type_enabled(v90, v91))
        {
          v92 = swift_slowAlloc();
          v93 = swift_slowAlloc();
          aBlock[0] = v93;
          *v92 = 136315138;
          *(v92 + 4) = sub_2646DF234(0xD00000000000002FLL, 0x8000000264795330, aBlock);
          _os_log_impl(&dword_264605000, v90, v91, "%s: missing receiverSessionStatus in callback of startMonitoringReceiverSessionStatus", v92, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v93);
          MEMORY[0x266740650](v93, -1, -1);
          MEMORY[0x266740650](v92, -1, -1);
        }

        (*(v107 + 8))(v20, v106);
        return (*(v105 + 8))(v103, v104);
      }
    }

    else
    {
      sub_264783DE4();
      v100 = *(v105 + 16);
      v100(v31, v55, v48);
      v71 = v37;
      v72 = sub_264783E14();
      v73 = sub_2647859C4();
      v102 = v71;

      LODWORD(v101) = v73;
      if (os_log_type_enabled(v72, v73))
      {
        v74 = swift_slowAlloc();
        v99 = v17;
        v75 = v74;
        v98 = swift_slowAlloc();
        aBlock[0] = v98;
        *v75 = 136315650;
        *(v75 + 4) = sub_2646DF234(0xD00000000000002FLL, 0x8000000264795330, aBlock);
        *(v75 + 12) = 2080;
        v76 = v104;
        v100(v34, &v37[v56], v104);
        sub_26467A240(&qword_27FF75D80, MEMORY[0x277CC95F0]);
        v77 = v72;
        v78 = sub_264785E44();
        v80 = v79;
        v81 = *(v105 + 8);
        v81(v34, v76);
        v82 = sub_2646DF234(v78, v80, aBlock);

        *(v75 + 14) = v82;
        *(v75 + 22) = 2080;
        v83 = sub_264785E44();
        v85 = v84;
        v81(v31, v76);
        v86 = sub_2646DF234(v83, v85, aBlock);

        *(v75 + 24) = v86;
        _os_log_impl(&dword_264605000, v77, v101, "%s: #SafetyCacheViewModel,sessionID mismatch,safetyCacheViewModel.sessionID,%s,completion sessionID,%s", v75, 0x20u);
        v87 = v98;
        swift_arrayDestroy();
        MEMORY[0x266740650](v87, -1, -1);
        MEMORY[0x266740650](v75, -1, -1);

        (*(v107 + 8))(v99, v106);
        return (v81)(v103, v76);
      }

      else
      {

        v88 = v104;
        v89 = *(v105 + 8);
        v89(v31, v104);
        (*(v107 + 8))(v17, v106);
        return (v89)(v55, v88);
      }
    }
  }

  return result;
}

uint64_t sub_264673B50(void *a1, void *a2, uint64_t a3)
{
  v25 = a3;
  v5 = sub_264783B64();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_264783E24();
  v26 = *(v10 - 8);
  v27 = v10;
  v11 = *(v26 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4();

  v14 = v28;
  swift_getKeyPath();
  swift_getKeyPath();
  v28 = a2;
  a1;
  v15 = a2;
  sub_264783EE4();
  sub_26466FB44(v14);

  sub_264783DE4();
  (*(v6 + 16))(v9, v25, v5);
  v16 = sub_264783E14();
  v17 = sub_2647859B4();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v28 = v19;
    *v18 = 136315394;
    sub_26467A240(&qword_27FF75D80, MEMORY[0x277CC95F0]);
    v20 = sub_264785E44();
    v22 = v21;
    (*(v6 + 8))(v9, v5);
    v23 = sub_2646DF234(v20, v22, &v28);

    *(v18 + 4) = v23;
    *(v18 + 12) = 2080;
    *(v18 + 14) = sub_2646DF234(0xD00000000000002FLL, 0x8000000264795330, &v28);
    _os_log_impl(&dword_264605000, v16, v17, "#SafetyCacheViewModel, sessionID: %s, function: %s, delivering receiver session status successfully", v18, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266740650](v19, -1, -1);
    MEMORY[0x266740650](v18, -1, -1);
  }

  else
  {

    (*(v6 + 8))(v9, v5);
  }

  return (*(v26 + 8))(v13, v27);
}

uint64_t sub_264673EEC(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75CE8, &unk_264788B70);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v19 - v10;
  v13 = *(a1 + 32);
  v12 = *(a1 + 40);
  if (a2)
  {
    sub_264783B44();
    v14 = sub_264783B64();
    (*(*(v14 - 8) + 56))(v11, 0, 1, v14);
  }

  else
  {
    v15 = sub_264783B64();
    (*(*(v15 - 8) + 56))(v11, 1, 1, v15);
  }

  v16 = a3;
  v17 = a4;
  v13(v11, a3, a4);

  return sub_26460CD50(v11, &qword_27FF75CE8, &unk_264788B70);
}

uint64_t sub_264674060()
{
  v1 = sub_264783E24();
  v0[42] = v1;
  v2 = *(v1 - 8);
  v0[43] = v2;
  v3 = *(v2 + 64) + 15;
  v0[44] = swift_task_alloc();
  v0[45] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_264674128, 0, 0);
}

uint64_t sub_264674128()
{
  v1 = objc_opt_self();
  v0[46] = v1;
  v2 = [v1 defaultManager];
  v0[47] = v2;
  v0[2] = v0;
  v0[3] = sub_264674268;
  v3 = swift_continuation_init();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75D70, &qword_264789350);
  v0[48] = v4;
  v0[25] = v4;
  v0[18] = MEMORY[0x277D85DD0];
  v0[19] = 1107296256;
  v0[20] = sub_2646384B4;
  v0[21] = &block_descriptor_195;
  v0[22] = v3;
  [v2 stopMonitoringReceiverSessionStatusWithCompletion_];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_264674268()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 392) = v2;
  if (v2)
  {
    v3 = sub_26467461C;
  }

  else
  {
    v3 = sub_264674378;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_264674378()
{
  v1 = *(v0 + 384);
  v2 = [*(v0 + 368) defaultManager];
  *(v0 + 400) = v2;
  *(v0 + 80) = v0;
  *(v0 + 88) = sub_26467449C;
  v3 = swift_continuation_init();
  *(v0 + 264) = v1;
  *(v0 + 208) = MEMORY[0x277D85DD0];
  *(v0 + 216) = 1107296256;
  *(v0 + 224) = sub_2646384B4;
  *(v0 + 232) = &block_descriptor_198;
  *(v0 + 240) = v3;
  [v2 stopMonitoringReceiverSafetyCacheWithCompletion_];

  return MEMORY[0x282200938](v0 + 80);
}

uint64_t sub_26467449C()
{
  v1 = *v0;
  v2 = *(*v0 + 112);
  *(*v0 + 408) = v2;
  if (v2)
  {
    v3 = sub_2646748B4;
  }

  else
  {
    v3 = sub_2646745AC;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2646745AC()
{
  v2 = *(v0 + 352);
  v1 = *(v0 + 360);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_26467461C()
{
  v27 = v0;
  v1 = *(v0 + 392);
  v2 = *(v0 + 376);
  v3 = *(v0 + 360);
  swift_willThrow();

  sub_264783DE4();
  v4 = v1;
  v5 = sub_264783E14();
  v6 = sub_2647859D4();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = *(v0 + 392);
    v25 = *(v0 + 360);
    v9 = *(v0 + 336);
    v8 = *(v0 + 344);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v26 = v11;
    *v10 = 136315138;
    swift_getErrorValue();
    v13 = *(v0 + 296);
    v12 = *(v0 + 304);
    v14 = *(v0 + 312);
    v15 = sub_264785EF4();
    v17 = sub_2646DF234(v15, v16, &v26);

    *(v10 + 4) = v17;
    _os_log_impl(&dword_264605000, v5, v6, "#SafetyCacheViewModel, error while stop monitoring receiver session status, error: %s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v11);
    MEMORY[0x266740650](v11, -1, -1);
    MEMORY[0x266740650](v10, -1, -1);

    (*(v8 + 8))(v25, v9);
  }

  else
  {
    v18 = *(v0 + 360);
    v19 = *(v0 + 336);
    v20 = *(v0 + 344);

    (*(v20 + 8))(v18, v19);
  }

  v21 = *(v0 + 384);
  v22 = [*(v0 + 368) defaultManager];
  *(v0 + 400) = v22;
  *(v0 + 80) = v0;
  *(v0 + 88) = sub_26467449C;
  v23 = swift_continuation_init();
  *(v0 + 264) = v21;
  *(v0 + 208) = MEMORY[0x277D85DD0];
  *(v0 + 216) = 1107296256;
  *(v0 + 224) = sub_2646384B4;
  *(v0 + 232) = &block_descriptor_198;
  *(v0 + 240) = v23;
  [v22 stopMonitoringReceiverSafetyCacheWithCompletion_];

  return MEMORY[0x282200938](v0 + 80);
}

uint64_t sub_2646748B4()
{
  v27 = v0;
  v1 = *(v0 + 400);
  v2 = *(v0 + 408);
  v3 = *(v0 + 352);
  swift_willThrow();

  sub_264783DE4();
  v4 = v2;
  v5 = sub_264783E14();
  v6 = sub_2647859D4();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = *(v0 + 408);
    v8 = *(v0 + 344);
    v25 = *(v0 + 352);
    v9 = *(v0 + 336);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v26 = v11;
    *v10 = 136315138;
    swift_getErrorValue();
    v13 = *(v0 + 272);
    v12 = *(v0 + 280);
    v14 = *(v0 + 288);
    v15 = sub_264785EF4();
    v17 = sub_2646DF234(v15, v16, &v26);

    *(v10 + 4) = v17;
    _os_log_impl(&dword_264605000, v5, v6, "#SafetyCacheViewModel, error while stop monitoring receiver safety cache, error: %s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v11);
    MEMORY[0x266740650](v11, -1, -1);
    MEMORY[0x266740650](v10, -1, -1);

    (*(v8 + 8))(v25, v9);
  }

  else
  {
    v19 = *(v0 + 344);
    v18 = *(v0 + 352);
    v20 = *(v0 + 336);

    (*(v19 + 8))(v18, v20);
  }

  v22 = *(v0 + 352);
  v21 = *(v0 + 360);

  v23 = *(v0 + 8);

  return v23();
}

void sub_264674AA0()
{
  v1 = sub_264783E24();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_264675E44())
  {
    v6 = *&v0[OBJC_IVAR____TtC15SafetyMonitorUI20SafetyCacheViewModel_manager];
    v7 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v24 = sub_26467A22C;
    v25 = v7;
    aBlock = MEMORY[0x277D85DD0];
    v21 = 1107296256;
    v22 = sub_264675CB4;
    v23 = &block_descriptor_68;
    v8 = _Block_copy(&aBlock);

    [v6 startMonitoringReceiverSafetyCacheWithHandler_];
    _Block_release(v8);
    v9 = sub_264783B14();
    v10 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v24 = sub_26467A978;
    v25 = v10;
    aBlock = MEMORY[0x277D85DD0];
    v21 = 1107296256;
    v22 = sub_26467762C;
    v23 = &block_descriptor_73;
    v11 = _Block_copy(&aBlock);

    [v6 fetchReceiverSafetyCacheForSessionID:v9 completion:v11];
    _Block_release(v11);
  }

  else
  {
    sub_264783DE4();
    v12 = v0;
    v13 = sub_264783E14();
    v14 = sub_2647859F4();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      aBlock = v16;
      *v15 = 136315138;
      sub_264783B64();
      sub_26467A240(&qword_27FF75D80, MEMORY[0x277CC95F0]);
      v17 = sub_264785E44();
      v19 = sub_2646DF234(v17, v18, &aBlock);

      *(v15 + 4) = v19;
      _os_log_impl(&dword_264605000, v13, v14, "#SafetyCacheViewModel, sessionID: %s, Attempted to register for safety cache monitoring but current session doesn't require us to start safety cache monitoring", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v16);
      MEMORY[0x266740650](v16, -1, -1);
      MEMORY[0x266740650](v15, -1, -1);
    }

    (*(v2 + 8))(v5, v1);
  }
}

void sub_264674E28(uint64_t a1, void *a2, void *a3, void *a4)
{
  v108 = a3;
  v109 = a2;
  v6 = sub_264785594();
  v114 = *(v6 - 8);
  v7 = *(v114 + 8);
  MEMORY[0x28223BE20](v6);
  v112 = &v106 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = sub_2647855C4();
  isa = v113[-1].isa;
  v9 = *(isa + 8);
  MEMORY[0x28223BE20](v113);
  v110 = &v106 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_264783E24();
  v118 = *(v11 - 8);
  v119 = v11;
  v12 = *(v118 + 64);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v106 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v13);
  v115 = &v106 - v17;
  MEMORY[0x28223BE20](v16);
  v19 = &v106 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75CE8, &unk_264788B70);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20 - 8);
  v23 = &v106 - v22;
  v24 = sub_264783B64();
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  v27 = MEMORY[0x28223BE20](v24);
  v29 = &v106 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x28223BE20](v27);
  v116 = &v106 - v31;
  MEMORY[0x28223BE20](v30);
  v117 = &v106 - v32;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v34 = Strong;
  sub_26460CCE8(a1, v23, &qword_27FF75CE8, &unk_264788B70);
  v35 = v24;
  if ((*(v25 + 48))(v23, 1, v24) == 1)
  {
    sub_26460CD50(v23, &qword_27FF75CE8, &unk_264788B70);
    v36 = v25;
    if (!a4)
    {

      return;
    }

    goto LABEL_7;
  }

  v107 = v6;
  v37 = v117;
  (*(v25 + 32))(v117, v23, v24);
  v36 = v25;
  if (a4)
  {
    (*(v25 + 8))(v37, v35);
LABEL_7:
    v38 = v35;
    v39 = a4;
    sub_264783DE4();
    v40 = v34;
    v41 = a4;
    v42 = sub_264783E14();
    v43 = sub_2647859D4();

    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v117 = swift_slowAlloc();
      aBlock[0] = v117;
      *v44 = 136315394;
      v45 = v116;
      (*(v36 + 16))(v116, &v40[OBJC_IVAR____TtC15SafetyMonitorUI20SafetyCacheViewModel_sessionID], v35);
      sub_26467A240(&qword_27FF75D80, MEMORY[0x277CC95F0]);
      v46 = sub_264785E44();
      v47 = v36;
      v49 = v48;
      (*(v47 + 8))(v45, v38);
      v50 = sub_2646DF234(v46, v49, aBlock);

      *(v44 + 4) = v50;
      *(v44 + 12) = 2080;
      swift_getErrorValue();
      v51 = sub_264785EF4();
      v53 = sub_2646DF234(v51, v52, aBlock);

      *(v44 + 14) = v53;
      _os_log_impl(&dword_264605000, v42, v43, "#SafetyCacheViewModel, sessionID: %s, error while monitoring receiver safety cache, error: %s", v44, 0x16u);
      v54 = v117;
      swift_arrayDestroy();
      MEMORY[0x266740650](v54, -1, -1);
      MEMORY[0x266740650](v44, -1, -1);
    }

    else
    {
    }

    (*(v118 + 8))(v15, v119);
    return;
  }

  v55 = OBJC_IVAR____TtC15SafetyMonitorUI20SafetyCacheViewModel_sessionID;
  if (sub_264783B34())
  {
    v56 = v35;
    sub_264783DE4();
    v57 = v34;
    v58 = sub_264783E14();
    v59 = sub_2647859F4();

    if (os_log_type_enabled(v58, v59))
    {
      v60 = swift_slowAlloc();
      v115 = v57;
      v61 = v60;
      v106 = swift_slowAlloc();
      aBlock[0] = v106;
      *v61 = 136315394;
      v62 = *(v25 + 16);
      v63 = &v34[v55];
      v64 = v116;
      v65 = v35;
      v62(v116, v63, v35);
      sub_26467A240(&qword_27FF75D80, MEMORY[0x277CC95F0]);
      v66 = sub_264785E44();
      v68 = v67;
      (*(v36 + 8))(v64, v56);
      v69 = sub_2646DF234(v66, v68, aBlock);

      *(v61 + 4) = v69;
      *(v61 + 12) = 2080;
      *(v61 + 14) = sub_2646DF234(0xD00000000000002ALL, 0x80000002647952C0, aBlock);
      _os_log_impl(&dword_264605000, v58, v59, "#SafetyCacheViewModel, sessionID: %s, function: %s, delivering phone cache & watch cache content successfully", v61, 0x16u);
      v70 = v106;
      swift_arrayDestroy();
      MEMORY[0x266740650](v70, -1, -1);
      v71 = v61;
      v57 = v115;
      MEMORY[0x266740650](v71, -1, -1);

      (*(v118 + 8))(v19, v119);
    }

    else
    {

      (*(v118 + 8))(v19, v119);
      v65 = v35;
    }

    sub_264659B70(0, &qword_27FF76980, 0x277D85C78);
    v94 = sub_264785A44();
    v95 = swift_allocObject();
    v96 = v109;
    v95[2] = v109;
    v95[3] = v57;
    v97 = v108;
    v95[4] = v108;
    aBlock[4] = sub_26467A234;
    aBlock[5] = v95;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_264659F60;
    aBlock[3] = &block_descriptor_79;
    v98 = _Block_copy(aBlock);
    v99 = v97;
    v100 = v57;
    v101 = v96;

    v102 = v110;
    sub_2647855B4();
    aBlock[0] = MEMORY[0x277D84F90];
    sub_26467A240(&qword_27FF75CD8, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF76990, &qword_264788A90);
    sub_26466841C();
    v103 = v112;
    v104 = v107;
    sub_264785BD4();
    MEMORY[0x26673F780](0, v102, v103, v98);
    _Block_release(v98);

    (*(v114 + 1))(v103, v104);
    (*(isa + 1))(v102, v113);
    (*(v36 + 8))(v117, v65);
  }

  else
  {
    sub_264783DE4();
    v72 = v25;
    v73 = *(v25 + 16);
    v73(v29, v37, v35);
    v74 = v34;
    v75 = v35;
    v76 = sub_264783E14();
    v77 = sub_2647859F4();
    v114 = v74;

    if (os_log_type_enabled(v76, v77))
    {
      v78 = swift_slowAlloc();
      v113 = v76;
      v79 = v78;
      v80 = swift_slowAlloc();
      aBlock[0] = v80;
      *v79 = 136315394;
      v81 = &v34[v55];
      v82 = v116;
      v73(v116, v81, v75);
      sub_26467A240(&qword_27FF75D80, MEMORY[0x277CC95F0]);
      v83 = v77;
      v84 = sub_264785E44();
      v86 = v85;
      v87 = *(v72 + 8);
      v87(v82, v75);
      v88 = sub_2646DF234(v84, v86, aBlock);

      *(v79 + 4) = v88;
      *(v79 + 12) = 2080;
      v89 = sub_264783B04();
      v91 = v90;
      v87(v29, v75);
      v92 = sub_2646DF234(v89, v91, aBlock);

      *(v79 + 14) = v92;
      v93 = v113;
      _os_log_impl(&dword_264605000, v113, v83, "#SafetyCacheViewModel, sessionID: %s, found receiver safety cache for some other session: %s", v79, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x266740650](v80, -1, -1);
      MEMORY[0x266740650](v79, -1, -1);

      (*(v118 + 8))(v115, v119);
      v87(v117, v75);
    }

    else
    {

      v105 = *(v72 + 8);
      v105(v29, v75);
      (*(v118 + 8))(v115, v119);
      v105(v117, v75);
    }
  }
}

void sub_264675AB4(void *a1, void *a2, void *a3)
{
  if (a1)
  {
    sub_264659B70(0, &qword_27FF76980, 0x277D85C78);
    v6 = sub_264785A44();
    v7 = swift_allocObject();
    *(v7 + 16) = a2;
    *(v7 + 24) = a1;
    v20 = sub_26467A2B4;
    v21 = v7;
    v16 = MEMORY[0x277D85DD0];
    v17 = 1107296256;
    v18 = sub_26465A0B4;
    v19 = &block_descriptor_91;
    v8 = _Block_copy(&v16);
    v9 = a2;
    v10 = a1;

    [v10 shiftLocationsOnQueue:v6 handler:v8];
    _Block_release(v8);
  }

  if (a3)
  {
    sub_264659B70(0, &qword_27FF76980, 0x277D85C78);
    v11 = sub_264785A44();
    v12 = swift_allocObject();
    *(v12 + 16) = a2;
    *(v12 + 24) = a3;
    v20 = sub_26467A288;
    v21 = v12;
    v16 = MEMORY[0x277D85DD0];
    v17 = 1107296256;
    v18 = sub_26465A0B4;
    v19 = &block_descriptor_85;
    v13 = _Block_copy(&v16);
    v14 = a2;
    v15 = a3;

    [v15 shiftLocationsOnQueue:v11 handler:v13];
    _Block_release(v13);
  }
}

uint64_t sub_264675CB4(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75CE8, &unk_264788B70);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v22 - v12;
  v15 = *(a1 + 32);
  v14 = *(a1 + 40);
  if (a2)
  {
    sub_264783B44();
    v16 = sub_264783B64();
    (*(*(v16 - 8) + 56))(v13, 0, 1, v16);
  }

  else
  {
    v17 = sub_264783B64();
    (*(*(v17 - 8) + 56))(v13, 1, 1, v17);
  }

  v18 = a3;
  v19 = a4;
  v20 = a5;
  v15(v13, a3, a4, a5);

  return sub_26460CD50(v13, &qword_27FF75CE8, &unk_264788B70);
}

uint64_t sub_264675E44()
{
  v1 = sub_264783E24();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4();

  v6 = v18;
  if (v18)
  {
    v7 = [v18 sessionState];

    if (v7 <= 9 && ((1 << v7) & 0x230) != 0)
    {
      return 1;
    }
  }

  sub_264783DE4();
  v9 = v0;
  v10 = sub_264783E14();
  v11 = sub_2647859F4();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v18 = v13;
    *v12 = 136315138;
    sub_264783B64();
    sub_26467A240(&qword_27FF75D80, MEMORY[0x277CC95F0]);
    v14 = sub_264785E44();
    v16 = sub_2646DF234(v14, v15, &v18);

    *(v12 + 4) = v16;
    _os_log_impl(&dword_264605000, v10, v11, "#SafetyCacheViewModel, sessionID: %s, Attempted to register for safety cache monitoring but current session doesn't require us to start safety cache monitoring", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v13);
    MEMORY[0x266740650](v13, -1, -1);
    MEMORY[0x266740650](v12, -1, -1);
  }

  (*(v2 + 8))(v5, v1);
  return 0;
}

void sub_2646760D0()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC15SafetyMonitorUI20SafetyCacheViewModel_manager];
  v3 = sub_264783B14();
  v4 = swift_allocObject();
  *(v4 + 16) = v0;
  v7[4] = sub_2646794CC;
  v7[5] = v4;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 1107296256;
  v7[2] = sub_26464CCBC;
  v7[3] = &block_descriptor_3;
  v5 = _Block_copy(v7);
  v6 = v1;

  [v2 fetchReceiverSessionStatusForSessionID:v3 completion:v5];
  _Block_release(v5);
}

uint64_t sub_2646761D8(void *a1, void *a2, void *a3)
{
  v50 = a1;
  v5 = sub_264785594();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2647855C4();
  v51 = *(v10 - 8);
  v52 = v10;
  v11 = *(v51 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_264783E24();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v43 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v48 = v17;
    v49 = v6;
    v20 = a2;
    sub_264783DE4();
    v21 = a2;
    v22 = a3;
    v23 = sub_264783E14();
    v24 = sub_2647859D4();

    v47 = v24;
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v46 = a3;
      v26 = v25;
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      aBlock[0] = v45;
      *v26 = 136315650;
      *(v26 + 4) = sub_2646DF234(0xD00000000000001CLL, 0x8000000264795400, aBlock);
      *(v26 + 12) = 2080;
      v43 = v23;
      sub_264783B64();
      sub_26467A240(&qword_27FF75D80, MEMORY[0x277CC95F0]);
      v27 = sub_264785E44();
      v29 = sub_2646DF234(v27, v28, aBlock);

      *(v26 + 14) = v29;
      *(v26 + 22) = 2112;
      v30 = a2;
      v31 = _swift_stdlib_bridgeErrorToNSError();
      *(v26 + 24) = v31;
      v33 = v43;
      v32 = v44;
      *v44 = v31;
      _os_log_impl(&dword_264605000, v33, v47, "#SafetyCacheViewModel, %s: error happened when trying to fetch session info for %s, error:%@", v26, 0x20u);
      sub_26460CD50(v32, &qword_27FF779D0, &qword_26478A9A0);
      MEMORY[0x266740650](v32, -1, -1);
      v34 = v45;
      swift_arrayDestroy();
      MEMORY[0x266740650](v34, -1, -1);
      v35 = v26;
      a3 = v46;
      MEMORY[0x266740650](v35, -1, -1);
    }

    else
    {
    }

    (*(v15 + 8))(v19, v48);
    v6 = v49;
  }

  sub_264659B70(0, &qword_27FF76980, 0x277D85C78);
  v36 = sub_264785A44();
  v37 = swift_allocObject();
  v38 = v50;
  *(v37 + 16) = a3;
  *(v37 + 24) = v38;
  aBlock[4] = sub_26467A804;
  aBlock[5] = v37;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_264659F60;
  aBlock[3] = &block_descriptor_192;
  v39 = _Block_copy(aBlock);
  v40 = v38;
  v41 = a3;

  sub_2647855B4();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_26467A240(&qword_27FF75CD8, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF76990, &qword_264788A90);
  sub_26466841C();
  sub_264785BD4();
  MEMORY[0x26673F780](0, v13, v9, v39);
  _Block_release(v39);

  (*(v6 + 8))(v9, v5);
  return (*(v51 + 8))(v13, v52);
}

uint64_t sub_264676750(void *a1, void *a2)
{
  v4 = sub_264783E24();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4();

  v9 = v29;
  swift_getKeyPath();
  swift_getKeyPath();
  v29 = a2;
  v10 = a2;
  v11 = a1;
  sub_264783EE4();
  sub_26466FB44(v9);

  sub_264783DE4();
  v12 = v11;
  v13 = v10;
  v14 = sub_264783E14();
  v15 = sub_2647859F4();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v26 = a2;
    v18 = v17;
    v19 = swift_slowAlloc();
    v28 = v5;
    v29 = v19;
    v20 = v19;
    *v16 = 136315650;
    *(v16 + 4) = sub_2646DF234(0xD00000000000001CLL, 0x8000000264795400, &v29);
    *(v16 + 12) = 2080;
    sub_264783B64();
    v27 = v4;
    sub_26467A240(&qword_27FF75D80, MEMORY[0x277CC95F0]);
    v21 = sub_264785E44();
    v23 = sub_2646DF234(v21, v22, &v29);

    *(v16 + 14) = v23;
    *(v16 + 22) = 2112;
    *(v16 + 24) = v13;
    *v18 = v26;
    v24 = v13;
    _os_log_impl(&dword_264605000, v14, v15, "#SafetyCacheViewModel, %s: successfully fetch session info for %s, status:%@", v16, 0x20u);
    sub_26460CD50(v18, &qword_27FF779D0, &qword_26478A9A0);
    MEMORY[0x266740650](v18, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x266740650](v20, -1, -1);
    MEMORY[0x266740650](v16, -1, -1);

    return (*(v28 + 8))(v8, v27);
  }

  else
  {

    return (*(v5 + 8))(v8, v4);
  }
}

void sub_264676AB8()
{
  v1 = *(v0 + OBJC_IVAR____TtC15SafetyMonitorUI20SafetyCacheViewModel_manager);
  v2 = sub_264783B14();
  v3 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v5[4] = sub_264679524;
  v5[5] = v3;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 1107296256;
  v5[2] = sub_26467762C;
  v5[3] = &block_descriptor_40;
  v4 = _Block_copy(v5);

  [v1 fetchReceiverSafetyCacheForSessionID:v2 completion:v4];
  _Block_release(v4);
}

uint64_t sub_264676BBC(void *a1, void *a2, void *a3)
{
  v57 = a2;
  v58 = a1;
  v4 = sub_264785594();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v60 = &v48[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v61 = sub_2647855C4();
  v59 = *(v61 - 8);
  v8 = *(v59 + 64);
  MEMORY[0x28223BE20](v61);
  v10 = &v48[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = sub_264783B64();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v48[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = sub_264783E24();
  v55 = *(v16 - 8);
  v56 = v16;
  v17 = *(v55 + 64);
  MEMORY[0x28223BE20](v16);
  v19 = &v48[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v21 = result;
    v53 = v5;
    v54 = v4;
    if (a3)
    {
      v22 = a3;
      sub_264783DE4();
      v23 = a3;
      v24 = v21;
      v25 = sub_264783E14();
      v26 = sub_2647859D4();

      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        v51 = v25;
        v28 = v27;
        v50 = swift_slowAlloc();
        v52 = swift_slowAlloc();
        aBlock[0] = v52;
        *v28 = 136315650;
        *(v28 + 4) = sub_2646DF234(0xD00000000000001ALL, 0x80000002647953E0, aBlock);
        *(v28 + 12) = 2080;
        (*(v12 + 16))(v15, v24 + OBJC_IVAR____TtC15SafetyMonitorUI20SafetyCacheViewModel_sessionID, v11);
        sub_26467A240(&qword_27FF75D80, MEMORY[0x277CC95F0]);
        v49 = v26;
        v29 = sub_264785E44();
        v31 = v30;
        (*(v12 + 8))(v15, v11);
        v32 = sub_2646DF234(v29, v31, aBlock);

        *(v28 + 14) = v32;
        *(v28 + 22) = 2112;
        v33 = a3;
        v34 = _swift_stdlib_bridgeErrorToNSError();
        *(v28 + 24) = v34;
        v36 = v50;
        v35 = v51;
        *v50 = v34;
        _os_log_impl(&dword_264605000, v35, v49, "#SafetyCacheViewModel, %s: error happened when trying to fetch safety cache for %s, error: %@", v28, 0x20u);
        sub_26460CD50(v36, &qword_27FF779D0, &qword_26478A9A0);
        MEMORY[0x266740650](v36, -1, -1);
        v37 = v52;
        swift_arrayDestroy();
        MEMORY[0x266740650](v37, -1, -1);
        MEMORY[0x266740650](v28, -1, -1);
      }

      else
      {
      }

      (*(v55 + 8))(v19, v56);
    }

    sub_264659B70(0, &qword_27FF76980, 0x277D85C78);
    v38 = sub_264785A44();
    v39 = swift_allocObject();
    v40 = v57;
    v41 = v58;
    v39[2] = v58;
    v39[3] = v21;
    v39[4] = v40;
    aBlock[4] = sub_26467A7F8;
    aBlock[5] = v39;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_264659F60;
    aBlock[3] = &block_descriptor_174;
    v42 = _Block_copy(aBlock);
    v43 = v40;
    v44 = v21;
    v45 = v41;

    sub_2647855B4();
    aBlock[0] = MEMORY[0x277D84F90];
    sub_26467A240(&qword_27FF75CD8, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF76990, &qword_264788A90);
    sub_26466841C();
    v46 = v60;
    v47 = v54;
    sub_264785BD4();
    MEMORY[0x26673F780](0, v10, v46, v42);
    _Block_release(v42);

    (*(v53 + 8))(v46, v47);
    return (*(v59 + 8))(v10, v61);
  }

  return result;
}

uint64_t sub_264677228(void *a1, void *a2, void *a3)
{
  v6 = sub_264783E24();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &aBlock - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    sub_264659B70(0, &qword_27FF76980, 0x277D85C78);
    v11 = sub_264785A44();
    v12 = swift_allocObject();
    *(v12 + 16) = a2;
    *(v12 + 24) = a1;
    v34 = sub_26467AA2C;
    v35 = v12;
    aBlock = MEMORY[0x277D85DD0];
    v31 = 1107296256;
    v32 = sub_26465A0B4;
    v33 = &block_descriptor_186;
    v13 = _Block_copy(&aBlock);
    v14 = a2;
    v15 = a1;

    [v15 shiftLocationsOnQueue:v11 handler:v13];
    _Block_release(v13);
  }

  if (a3)
  {
    sub_264659B70(0, &qword_27FF76980, 0x277D85C78);
    v16 = sub_264785A44();
    v17 = swift_allocObject();
    *(v17 + 16) = a2;
    *(v17 + 24) = a3;
    v34 = sub_26467AA28;
    v35 = v17;
    aBlock = MEMORY[0x277D85DD0];
    v31 = 1107296256;
    v32 = sub_26465A0B4;
    v33 = &block_descriptor_180;
    v18 = _Block_copy(&aBlock);
    v19 = a2;
    v20 = a3;

    [v20 shiftLocationsOnQueue:v16 handler:v18];
    _Block_release(v18);
  }

  sub_264783DE4();
  v21 = a2;
  v22 = sub_264783E14();
  v23 = sub_2647859F4();

  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    aBlock = v25;
    *v24 = 136315394;
    sub_264783B64();
    sub_26467A240(&qword_27FF75D80, MEMORY[0x277CC95F0]);
    v26 = sub_264785E44();
    v28 = sub_2646DF234(v26, v27, &aBlock);

    *(v24 + 4) = v28;
    *(v24 + 12) = 2080;
    *(v24 + 14) = sub_2646DF234(0xD00000000000001ALL, 0x80000002647953E0, &aBlock);
    _os_log_impl(&dword_264605000, v22, v23, "#SafetyCacheViewModel, sessionID: %s, function: %s, delivering phone cache &  watch cache content successfully", v24, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266740650](v25, -1, -1);
    MEMORY[0x266740650](v24, -1, -1);
  }

  return (*(v7 + 8))(v10, v6);
}

void sub_26467762C(uint64_t a1, void *a2, void *a3, void *a4)
{
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);

  v11 = a2;
  v9 = a3;
  v10 = a4;
  v8(a2, a3, a4);
}

uint64_t sub_2646776D4(uint64_t a1)
{
  v3 = sub_264783B64();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76970, &qword_264789300);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v15 - v8;
  v10 = sub_2647858E4();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  (*(v4 + 16))(&v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  v11 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v12 = swift_allocObject();
  *(v12 + 2) = 0;
  *(v12 + 3) = 0;
  *(v12 + 4) = v1;
  (*(v4 + 32))(&v12[v11], &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v3);
  v13 = v1;
  sub_264635430(0, 0, v9, &unk_26478A8B0, v12);
}

uint64_t sub_2646778B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[28] = a4;
  v5[29] = a5;
  v6 = sub_264783B64();
  v5[30] = v6;
  v7 = *(v6 - 8);
  v5[31] = v7;
  v8 = *(v7 + 64) + 15;
  v5[32] = swift_task_alloc();
  v5[33] = swift_task_alloc();
  v9 = sub_264783E24();
  v5[34] = v9;
  v10 = *(v9 - 8);
  v5[35] = v10;
  v11 = *(v10 + 64) + 15;
  v5[36] = swift_task_alloc();
  v5[37] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2646779E8, 0, 0);
}

uint64_t sub_2646779E8()
{
  v1 = v0[29];
  v2 = *(v0[28] + OBJC_IVAR____TtC15SafetyMonitorUI20SafetyCacheViewModel_manager);
  v0[38] = v2;
  v3 = sub_264783B14();
  v0[39] = v3;
  v0[2] = v0;
  v0[3] = sub_264677B24;
  v4 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75D70, &qword_264789350);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_2646384B4;
  v0[13] = &block_descriptor_161;
  v0[14] = v4;
  [v2 userRequestedCacheDownloadForSessionID:v3 completion:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_264677B24()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 320) = v2;
  if (v2)
  {
    v3 = sub_264677F94;
  }

  else
  {
    v3 = sub_264677C34;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_264677C34()
{
  v37 = v0;
  v1 = v0[37];
  v2 = v0[33];
  v3 = v0[30];
  v4 = v0[31];
  v5 = v0[29];

  sub_264783DE4();
  (*(v4 + 16))(v2, v5, v3);
  v6 = sub_264783E14();
  v7 = sub_2647859F4();
  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[37];
  v11 = v0[34];
  v10 = v0[35];
  v12 = v0[33];
  v14 = v0[30];
  v13 = v0[31];
  if (v8)
  {
    v35 = v0[34];
    v15 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v36 = v34;
    *v15 = 136315394;
    sub_26467A240(&qword_27FF75D80, MEMORY[0x277CC95F0]);
    v16 = sub_264785E44();
    v33 = v9;
    v18 = v17;
    (*(v13 + 8))(v12, v14);
    v19 = sub_2646DF234(v16, v18, &v36);

    *(v15 + 4) = v19;
    *(v15 + 12) = 2080;
    *(v15 + 14) = sub_2646DF234(0xD000000000000029, 0x80000002647953B0, &v36);
    _os_log_impl(&dword_264605000, v6, v7, "#SafetyCacheViewModel, sessionID: %s, function: %s, user request for Satefy Cache Download is successful, please fetch safety cache now", v15, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266740650](v34, -1, -1);
    MEMORY[0x266740650](v15, -1, -1);

    (*(v10 + 8))(v33, v35);
  }

  else
  {

    (*(v13 + 8))(v12, v14);
    (*(v10 + 8))(v9, v11);
  }

  v20 = v0[38];
  v21 = v0[28];
  v22 = sub_264783B14();
  v23 = swift_allocObject();
  *(v23 + 16) = v21;
  v0[22] = sub_26467A998;
  v0[23] = v23;
  v0[18] = MEMORY[0x277D85DD0];
  v0[19] = 1107296256;
  v0[20] = sub_26464CCBC;
  v0[21] = &block_descriptor_168;
  v24 = _Block_copy(v0 + 18);
  v25 = v0[23];
  v26 = v21;

  [v20 fetchReceiverSessionStatusForSessionID:v22 completion:v24];
  _Block_release(v24);

  v28 = v0[36];
  v27 = v0[37];
  v30 = v0[32];
  v29 = v0[33];

  v31 = v0[1];

  return v31();
}

uint64_t sub_264677F94()
{
  v44 = v0;
  v2 = v0[39];
  v1 = v0[40];
  v3 = v0[36];
  v5 = v0[31];
  v4 = v0[32];
  v7 = v0[29];
  v6 = v0[30];
  swift_willThrow();

  sub_264783DE4();
  (*(v5 + 16))(v4, v7, v6);
  v8 = v1;
  v9 = sub_264783E14();
  v10 = sub_2647859D4();

  if (os_log_type_enabled(v9, v10))
  {
    v39 = v0[40];
    v40 = v0[35];
    v41 = v0[34];
    v42 = v0[36];
    v12 = v0[31];
    v11 = v0[32];
    v13 = v0[30];
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v43[0] = v15;
    *v14 = 136315394;
    sub_26467A240(&qword_27FF75D80, MEMORY[0x277CC95F0]);
    v16 = sub_264785E44();
    v18 = v17;
    (*(v12 + 8))(v11, v13);
    v19 = sub_2646DF234(v16, v18, v43);

    *(v14 + 4) = v19;
    *(v14 + 12) = 2080;
    swift_getErrorValue();
    v21 = v0[24];
    v20 = v0[25];
    v22 = v0[26];
    v23 = sub_264785EF4();
    v25 = sub_2646DF234(v23, v24, v43);

    *(v14 + 14) = v25;
    _os_log_impl(&dword_264605000, v9, v10, "#SafetyCacheViewModel, sessionID: %s, error while user requested to download Satefy Cache, error: %s", v14, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266740650](v15, -1, -1);
    MEMORY[0x266740650](v14, -1, -1);

    (*(v40 + 8))(v42, v41);
  }

  else
  {
    v26 = v0[40];
    v28 = v0[35];
    v27 = v0[36];
    v29 = v0[34];
    v31 = v0[31];
    v30 = v0[32];
    v32 = v0[30];

    (*(v31 + 8))(v30, v32);
    (*(v28 + 8))(v27, v29);
  }

  v34 = v0[36];
  v33 = v0[37];
  v36 = v0[32];
  v35 = v0[33];

  v37 = v0[1];

  return v37();
}

id SafetyCacheViewModel.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t sub_264678318@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for SafetyCacheViewModel();
  result = sub_264783E64();
  *a1 = result;
  return result;
}

Swift::Void __swiftcall SafetyCacheViewModel.callBuddy()()
{
  v1 = v0;
  v2 = sub_264783E24();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_264659B70(0, &qword_27FF76980, 0x277D85C78);
  v7 = sub_264785A44();

  v8 = objc_opt_self();
  v9 = [v8 sharedInstance];
  v10 = [v9 providerManager];

  v11 = [v10 defaultAppProvider];
  if (!v11)
  {
    v12 = [v8 sharedInstance];
    v13 = [v12 providerManager];

    v11 = [v13 telephonyProvider];
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4();

  v14 = v39;
  if (!v39)
  {
    goto LABEL_11;
  }

  v37 = v3;
  v38 = v2;
  v15 = [v39 initiatorHandle];

  v16 = [v15 primaryHandle];
  v17 = v16;
  v18 = v16;
  v19 = v16;
  if (!v16)
  {
    sub_264785724();
    v19 = sub_264785714();

    sub_264785724();
    v18 = sub_264785714();

    sub_264785724();
    v17 = sub_264785714();
  }

  v20 = objc_allocWithZone(MEMORY[0x277D6EED0]);
  v21 = v16;
  v22 = [v20 initWithProvider_];
  LODWORD(v20) = [v19 _appearsToBeEmail];

  if (v20)
  {

    v23 = [objc_allocWithZone(MEMORY[0x277D6EEE8]) initWithType:3 value:v18];
  }

  else
  {

    v23 = [objc_allocWithZone(MEMORY[0x277D6EEE8]) initWithType:2 value:v17];
    v18 = v17;
  }

  [v22 setHandle_];
  v24 = [v8 sharedInstance];
  v25 = [v24 canDialWithRequest_];

  if (v25)
  {
    v26 = [v8 sharedInstance];
    v27 = [v26 dialWithRequest_];

LABEL_11:
    return;
  }

  sub_264783DE4();
  v28 = v1;
  v29 = sub_264783E14();
  v30 = sub_2647859D4();

  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v39 = v32;
    *v31 = 136315394;
    v33 = sub_264783B04();
    v35 = sub_2646DF234(v33, v34, &v39);

    *(v31 + 4) = v35;
    *(v31 + 12) = 2080;
    *(v31 + 14) = sub_2646DF234(0x646475426C6C6163, 0xEB00000000292879, &v39);
    _os_log_impl(&dword_264605000, v29, v30, "#SafetyCacheViewModel, sessionID: %s, function: %s,  error while dialing a call using TelephonyUtilities ", v31, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266740650](v32, -1, -1);
    MEMORY[0x266740650](v31, -1, -1);
  }

  else
  {
  }

  (*(v37 + 8))(v6, v38);
}

uint64_t SafetyCacheViewModel.shouldAllowCalling.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4();

  if (!v4)
  {
    return 0;
  }

  v0 = [v4 initiatorHandle];

  v1 = [v0 primaryHandle];
  if (!v1)
  {
    sub_264785724();
    v1 = sub_264785714();
  }

  v2 = [v1 _appearsToBeEmail];

  return v2 ^ 1;
}

_BYTE *sub_2646789E0(char *a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4)
{
  v82 = a4;
  v81 = a3;
  v90 = a1;
  v80 = sub_264783B64();
  v89 = *(v80 - 8);
  v6 = v89[8];
  MEMORY[0x28223BE20](v80);
  v83 = &v71 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_264783E24();
  v85 = *(v8 - 8);
  v86 = v8;
  v9 = *(v85 + 64);
  MEMORY[0x28223BE20](v8);
  v84 = &v71 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76610, &qword_26478A880);
  v78 = *(v79 - 8);
  v11 = *(v78 + 64);
  MEMORY[0x28223BE20](v79);
  v77 = &v71 - v12;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF756A0, &qword_264787DA0);
  v88 = *(v76 - 8);
  v13 = *(v88 + 64);
  MEMORY[0x28223BE20](v76);
  v75 = &v71 - v14;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF756B8, &qword_26478AC90);
  v15 = *(*(v74 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v74);
  v18 = &v71 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v71 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF765D8, &qword_26478A748);
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21);
  v25 = &v71 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF756B0, &unk_264787DB0);
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v26);
  v30 = &v71 - v29;
  v87 = *a2;
  v31 = OBJC_IVAR____TtC15SafetyMonitorUI20SafetyCacheViewModel_manager;
  *&v4[v31] = [objc_opt_self() defaultManager];
  v32 = OBJC_IVAR____TtC15SafetyMonitorUI20SafetyCacheViewModel__safetyCache;
  memset(v92, 0, sizeof(v92));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF756F8, &qword_264787DF0);
  sub_264783E94();
  (*(v27 + 32))(&v4[v32], v30, v26);
  v33 = OBJC_IVAR____TtC15SafetyMonitorUI20SafetyCacheViewModel__phoneCache;
  *&v92[0] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76658, &qword_26478A990);
  sub_264783E94();
  v34 = *(v22 + 32);
  v34(&v4[v33], v25, v21);
  v35 = OBJC_IVAR____TtC15SafetyMonitorUI20SafetyCacheViewModel__watchCache;
  *&v92[0] = 0;
  sub_264783E94();
  v34(&v4[v35], v25, v21);
  v73 = OBJC_IVAR____TtC15SafetyMonitorUI20SafetyCacheViewModel__cacheExpiryDate;
  v36 = sub_264783AF4();
  v72 = *(*(v36 - 8) + 56);
  v72(v20, 1, 1, v36);
  v37 = v20;
  sub_26460CCE8(v20, v18, &qword_27FF756B8, &qword_26478AC90);
  v38 = v75;
  sub_264783E94();
  sub_26460CD50(v20, &qword_27FF756B8, &qword_26478AC90);
  v39 = *(v88 + 32);
  v88 += 32;
  v40 = v76;
  v39(&v4[v73], v38, v76);
  v41 = OBJC_IVAR____TtC15SafetyMonitorUI20SafetyCacheViewModel__cacheReleaseDate;
  v72(v37, 1, 1, v36);
  sub_26460CCE8(v37, v18, &qword_27FF756B8, &qword_26478AC90);
  sub_264783E94();
  v42 = v80;
  sub_26460CD50(v37, &qword_27FF756B8, &qword_26478AC90);
  v39(&v4[v41], v38, v40);
  v43 = v87;
  v44 = OBJC_IVAR____TtC15SafetyMonitorUI20SafetyCacheViewModel__receiverSessionStatus;
  *&v92[0] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76670, &qword_26478A998);
  v45 = v77;
  sub_264783E94();
  (*(v78 + 32))(&v4[v44], v45, v79);
  v46 = v89[2];
  v46(&v4[OBJC_IVAR____TtC15SafetyMonitorUI20SafetyCacheViewModel_sessionID], v90, v42);
  v4[OBJC_IVAR____TtC15SafetyMonitorUI20SafetyCacheViewModel_userType] = v43;
  v47 = &v4[OBJC_IVAR____TtC15SafetyMonitorUI20SafetyCacheViewModel_containerVCHandler];
  v48 = v81;
  v49 = v82;
  *v47 = v81;
  v47[1] = v49;
  sub_264611394(v48);
  v50 = type metadata accessor for SafetyCacheViewModel();
  v91.receiver = v4;
  v91.super_class = v50;
  v51 = objc_msgSendSuper2(&v91, sel_init);
  v52 = v51[OBJC_IVAR____TtC15SafetyMonitorUI20SafetyCacheViewModel_userType];
  v53 = v51;
  v54 = v84;
  if (v52)
  {
    sub_264783DE4();
  }

  else
  {
    sub_264783DF4();
  }

  v55 = v83;
  v46(v83, v90, v42);
  v56 = sub_264783E14();
  v57 = sub_2647859F4();
  if (os_log_type_enabled(v56, v57))
  {
    v58 = swift_slowAlloc();
    v59 = swift_slowAlloc();
    *&v92[0] = v59;
    *v58 = 136315394;
    sub_26467A240(&qword_27FF75D80, MEMORY[0x277CC95F0]);
    v60 = sub_264785E44();
    v61 = v55;
    v63 = v62;
    v64 = v89[1];
    v64(v61, v42);
    v65 = sub_2646DF234(v60, v63, v92);

    *(v58 + 4) = v65;
    *(v58 + 12) = 2080;
    if (v87)
    {
      v66 = 0x7265766965636552;
    }

    else
    {
      v66 = 0x6F74616974696E49;
    }

    if (v87)
    {
      v67 = 0xE800000000000000;
    }

    else
    {
      v67 = 0xE900000000000072;
    }

    v68 = sub_2646DF234(v66, v67, v92);

    *(v58 + 14) = v68;
    _os_log_impl(&dword_264605000, v56, v57, "#SafetyCacheViewModel, sessionID: %s, userType: %s", v58, 0x16u);
    swift_arrayDestroy();
    v69 = v59;
    v43 = v87;
    MEMORY[0x266740650](v69, -1, -1);
    MEMORY[0x266740650](v58, -1, -1);
  }

  else
  {

    v64 = v89[1];
    v64(v55, v42);
  }

  (*(v85 + 8))(v54, v86);
  if (v43)
  {
    sub_264672D64();
  }

  else
  {
    sub_2646714E4();
  }

  v64(v90, v42);
  return v53;
}

uint64_t sub_26467939C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2646793D4()
{
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_264611390;

  return sub_264674060();
}

uint64_t type metadata accessor for SafetyCacheViewModel()
{
  result = qword_27FF76640;
  if (!qword_27FF76640)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_2646794EC()
{
  MEMORY[0x2667406F0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_26467952C()
{
  v1 = sub_264783B64();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_2646795F8(uint64_t a1)
{
  v4 = *(sub_264783B64() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_26460F764;

  return sub_2646778B4(a1, v6, v7, v8, v1 + v5);
}

void sub_26467985C()
{
  v0 = sub_264783B64();
  if (v1 <= 0x3F)
  {
    v10 = *(v0 - 8) + 64;
    sub_264656F0C(319, &unk_27FF779A0, &qword_27FF756F8, &qword_264787DF0);
    if (v3 <= 0x3F)
    {
      v11 = *(v2 - 8) + 64;
      sub_264656F0C(319, &qword_27FF76650, &qword_27FF76658, &qword_26478A990);
      if (v5 <= 0x3F)
      {
        v12 = *(v4 - 8) + 64;
        sub_264656F0C(319, &qword_27FF76660, &qword_27FF756B8, &qword_26478AC90);
        if (v7 <= 0x3F)
        {
          v13 = *(v6 - 8) + 64;
          sub_264656F0C(319, &qword_27FF76668, &qword_27FF76670, &qword_26478A998);
          if (v9 <= 0x3F)
          {
            v14 = *(v8 - 8) + 64;
            swift_updateClassMetadata2();
          }
        }
      }
    }
  }
}

uint64_t sub_26467A240(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_26467A2E8()
{
  v1 = sub_264783B64();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_26467A3B4()
{
  v1 = *(sub_264783B64() - 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = v0 + ((*(v1 + 80) + 32) & ~*(v1 + 80));

  return sub_264673B50(v2, v3, v4);
}

uint64_t sub_26467A4CC()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t objectdestroy_124Tm()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF756B8, &qword_26478AC90) - 8);
  v2 = *(v1 + 80);
  v3 = *(v1 + 64);
  v4 = (v2 + 40) & ~v2;
  v5 = (v3 + v2 + v4) & ~v2;

  v6 = sub_264783AF4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 48);
  if (!v8(v0 + v4, 1, v6))
  {
    (*(v7 + 8))(v0 + v4, v6);
  }

  if (!v8(v0 + v5, 1, v6))
  {
    (*(v7 + 8))(v0 + v5, v6);
  }

  return MEMORY[0x2821FE8E8](v0, v5 + v3, v2 | 7);
}

uint64_t sub_26467A6A8(uint64_t (*a1)(uint64_t, uint64_t, uint64_t, char *, char *))
{
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF756B8, &qword_26478AC90) - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v1 + 2);
  v6 = *(v1 + 3);
  v7 = *(v1 + 4);
  v8 = &v1[(*(v2 + 64) + v3 + v4) & ~v3];

  return a1(v5, v6, v7, &v1[v4], v8);
}

uint64_t sub_26467A774()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t objectdestroy_75Tm()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

unint64_t sub_26467A890()
{
  result = qword_27FF76680;
  if (!qword_27FF76680)
  {
    sub_264659B70(255, &qword_27FF75E80, 0x277D4AB28);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF76680);
  }

  return result;
}

uint64_t sub_26467AA44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76688, &unk_26478AA40);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 24) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = type metadata accessor for SafetyCacheMapView.Annotation(0);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 36);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_26467AB8C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76688, &unk_26478AA40);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 24) + 8) = (a2 - 1);
  }

  else
  {
    v11 = type metadata accessor for SafetyCacheMapView.Annotation(0);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 36);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

void sub_26467ACE0()
{
  sub_26467ADF4(319, &qword_27FF766A0, &qword_27FF766A8, &unk_26478AA80);
  if (v0 <= 0x3F)
  {
    sub_26467ADF4(319, &qword_27FF766B0, &qword_27FF766B8, &qword_26478F190);
    if (v1 <= 0x3F)
    {
      sub_26467AE48();
      if (v2 <= 0x3F)
      {
        sub_26467AEDC();
        if (v3 <= 0x3F)
        {
          sub_26467AF70();
          if (v4 <= 0x3F)
          {
            type metadata accessor for SafetyCacheMapView.Annotation(319);
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