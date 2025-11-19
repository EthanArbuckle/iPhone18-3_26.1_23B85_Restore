uint64_t sub_2741B06BC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2740A7434;

  return sub_2741AD670(a1, v4, v5, v1 + 32, v1 + 336, v1 + 440, v1 + 480);
}

uint64_t sub_2741B0778()
{
  v1 = v0[2];

  if (v0[7])
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 4);
  }

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_2741B07C0()
{
  sub_2740A66EC(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64));

  return MEMORY[0x2821FE8E8](v0, 65, 7);
}

unint64_t sub_2741B0870()
{
  result = qword_28093B3E0;
  if (!qword_28093B3E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28093B3C0, &qword_2741D7DC8);
    sub_2741B0924(&qword_28093B3E8, type metadata accessor for PasswordPromptSheet);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28093B3E0);
  }

  return result;
}

uint64_t sub_2741B0924(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_2741B096C()
{
  result = qword_28093B3F8;
  if (!qword_28093B3F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28093B378, &qword_2741D7CE0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28093B3B8, &qword_2741D7DC0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28093B3C0, &qword_2741D7DC8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28093B3C8, &qword_2741D7DD0);
    type metadata accessor for OtherNetworkSheet();
    sub_2740A6D24(&qword_28093B3D0, &qword_28093B3C8, &qword_2741D7DD0);
    sub_2741B0924(&qword_28093B3D8, type metadata accessor for OtherNetworkSheet);
    swift_getOpaqueTypeConformance2();
    sub_2741B0870();
    swift_getOpaqueTypeConformance2();
    sub_2740A6D24(&qword_28093B3F0, &qword_28093B3B0, &qword_2741D7DB8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28093B3F8);
  }

  return result;
}

uint64_t sub_2741B0B64()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[6];

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 10);
  v4 = v0[17];

  v5 = v0[19];

  v6 = v0[21];

  v7 = v0[23];

  return MEMORY[0x2821FE8E8](v0, 192, 7);
}

uint64_t sub_2741B0BD4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PasswordPromptSheet();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t keypath_set_72Tm(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  v6 = *a1;
  v7 = *a2;

  return a5(v8);
}

unint64_t sub_2741B0C98()
{
  result = qword_28093B438;
  if (!qword_28093B438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28093B438);
  }

  return result;
}

unint64_t sub_2741B0D34()
{
  result = qword_28093B468;
  if (!qword_28093B468)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28093B458, &qword_2741D7E70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28093B468);
  }

  return result;
}

unint64_t sub_2741B0DB0()
{
  result = qword_28093B470;
  if (!qword_28093B470)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28093B460, &qword_2741D7E78);
    type metadata accessor for NetworksListModel();
    sub_2741B0C98();
    sub_2741B0924(&qword_280939880, type metadata accessor for NetworksListModel);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28093B470);
  }

  return result;
}

unint64_t sub_2741B0EB0()
{
  result = qword_28093B478;
  if (!qword_28093B478)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28093B448, &qword_2741D7E60);
    sub_2741B0D34();
    sub_2741B0DB0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28093B478);
  }

  return result;
}

uint64_t objectdestroyTm_20()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[6];

  v4 = v0[8];

  v5 = v0[9];

  v6 = v0[11];

  v7 = v0[13];

  if (v0[17])
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 14);
  }

  v8 = v0[19];

  v9 = v0[21];

  if (v0[23])
  {

    v10 = v0[25];

    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 29);
  }

  v11 = v0[35];

  v12 = v0[37];

  v13 = v0[39];

  return MEMORY[0x2821FE8E8](v0, 320, 7);
}

uint64_t objectdestroy_105Tm()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[6];

  v4 = v0[8];

  v5 = v0[9];

  v6 = v0[11];

  v7 = v0[13];

  if (v0[17])
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 14);
  }

  v8 = v0[19];

  v9 = v0[21];

  if (v0[23])
  {

    v10 = v0[25];

    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 29);
  }

  v11 = v0[35];

  v12 = v0[37];

  v13 = v0[39];

  v14 = v0[41];

  v15 = v0[43];

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 47);

  return MEMORY[0x2821FE8E8](v0, 417, 7);
}

uint64_t sub_2741B1180()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 16);
  sub_2741A8D70();
  sub_2741519A0(v1);
}

uint64_t sub_2741B11CC()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[6];

  v4 = v0[8];

  v5 = v0[10];

  v6 = v0[11];

  v7 = v0[13];

  v8 = v0[15];

  if (v0[19])
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);
  }

  v9 = v0[21];

  v10 = v0[23];

  if (v0[25])
  {

    v11 = v0[27];

    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 31);
  }

  v12 = v0[37];

  v13 = v0[39];

  v14 = v0[41];

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 42);

  return MEMORY[0x2821FE8E8](v0, 376, 7);
}

uint64_t sub_2741B1298(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_27409D648;

  return sub_2741AAE48(a1, v4, v5, v1 + 32, v1 + 336);
}

unint64_t sub_2741B134C()
{
  result = qword_28093B488;
  if (!qword_28093B488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28093B488);
  }

  return result;
}

uint64_t sub_2741B13A0()
{
  if (*(v0 + 49))
  {
    v1 = 256;
  }

  else
  {
    v1 = 0;
  }

  return sub_27418FAD8(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), v1 | *(v0 + 48));
}

uint64_t sub_2741B13DC()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28093B2F8, &qword_2741D7C30);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280937F30, &unk_2741D7CA0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28093B2F0, &qword_2741D7C28);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280937F38, &unk_2741CB670);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280937F40, &qword_2741D5B30);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28093B2E8, &qword_2741D7C20);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28093A3D0, &qword_2741D3EA0);
  sub_2741B017C();
  sub_2741B0320();
  swift_getOpaqueTypeConformance2();
  sub_2740A5DB0();
  sub_2740A5EE4();
  swift_getOpaqueTypeConformance2();
  sub_2740A5F60();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_2741B1560()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2741B1598()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_2741A870C();
}

unint64_t sub_2741B15B4()
{
  result = qword_28093B4A0;
  if (!qword_28093B4A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28093B498, &qword_2741D7ED0);
    sub_2741B164C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28093B4A0);
  }

  return result;
}

unint64_t sub_2741B164C()
{
  result = qword_28093B4A8;
  if (!qword_28093B4A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28093B4B0, &qword_2741D7ED8);
    sub_2741B16D0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28093B4A8);
  }

  return result;
}

unint64_t sub_2741B16D0()
{
  result = qword_28093B4B8;
  if (!qword_28093B4B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28093B4B8);
  }

  return result;
}

WiFiSettingsKit::NetworkEnterpriseMode_optional __swiftcall NetworkEnterpriseMode.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 3;
  if (rawValue < 3)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

unint64_t sub_2741B17F4()
{
  result = qword_28093B4C0;
  if (!qword_28093B4C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28093B4C0);
  }

  return result;
}

unint64_t sub_2741B1854()
{
  result = qword_28093B4C8;
  if (!qword_28093B4C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280939AC8, &qword_2741D1110);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28093B4C8);
  }

  return result;
}

void sub_2741B199C(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937E30, &qword_2741CDC20);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v12[-v5 - 8];
  v7 = *(v1 + 16);
  sub_27409D4E4(a1 + 72, v12);
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937E18, &unk_2741D1A40);
  sub_27409D1F4();
  if (swift_dynamicCast())
  {
    v8 = v11;
    [v8 setLastJoinedByUserAt_];
    v9 = sub_2741C80DC();
    (*(*(v9 - 8) + 56))(v6, 1, 1, v9);
    v10 = swift_allocObject();
    v10[2] = 0;
    v10[3] = 0;
    v10[4] = v7;
    v10[5] = v8;
    sub_2740CE980(0, 0, v6, &unk_2741D8088, v10);
  }

  else
  {
    swift_unknownObjectRelease();
  }
}

uint64_t WiFiAssociator.deinit()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  return v0;
}

uint64_t WiFiAssociator.__deallocating_deinit()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_2741B1BB4()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2741B1BFC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_27409D648;

  return sub_2740F032C(a1, v4, v5, v7, v6);
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

uint64_t sub_2741B1CE8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 120))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 80);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2741B1D30(uint64_t result, int a2, int a3)
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
      *(result + 80) = (a2 - 1);
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

uint64_t sub_2741B1DB8@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093B498, &qword_2741D7ED0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v16[-v6];
  v17 = v1;
  if (qword_2809379B0 != -1)
  {
    swift_once();
  }

  v18 = qword_280946AA8;
  v19 = unk_280946AB0;
  sub_2740A6A74();

  v18 = sub_2741C76AC();
  v19 = v8;
  v20 = v9 & 1;
  v21 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093B4B0, &qword_2741D7ED8);
  sub_2741B2768(&qword_28093B4A8, &qword_28093B4B0, &qword_2741D7ED8, sub_2741B16D0);
  sub_2741C7B7C();
  v11 = *(v1 + 24);
  v22 = *(v1 + 16);
  v23 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937F20, &qword_2741CCFB0);
  sub_2741C7A5C();
  v12 = v18;
  v13 = v19;
  v14 = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937F28, &unk_2741CB660);
  sub_2741C7A3C();
  sub_2741A652C(v12, v13, v14, &v18, sub_2741B2438, 0, a1);

  sub_2741B2474(&v18);
  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_2741B203C(uint64_t a1)
{
  v2 = *(a1 + 80);
  swift_getKeyPath();
  *&v8[0] = v2;
  sub_2740E5A58();
  sub_2741C6A0C();

  swift_beginAccess();
  v10 = *(v2 + 56);
  swift_getKeyPath();
  sub_2741B253C(a1, v8);
  v3 = swift_allocObject();
  v4 = v8[5];
  *(v3 + 80) = v8[4];
  *(v3 + 96) = v4;
  *(v3 + 112) = v8[6];
  *(v3 + 128) = v9;
  v5 = v8[1];
  *(v3 + 16) = v8[0];
  *(v3 + 32) = v5;
  v6 = v8[3];
  *(v3 + 48) = v8[2];
  *(v3 + 64) = v6;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093B4D0, &qword_2741D8238);
  sub_2740A6D24(&qword_28093B4D8, &qword_28093B4D0, &qword_2741D8238);
  sub_2741B16D0();
  return sub_2741C7B5C();
}

uint64_t sub_2741B21D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_27409D4E4(a1, v17);
  v15[0] = *(a2 + 104);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093B4E0, qword_2741D8240);
  sub_2741C7A3C();
  v6 = *&v14[0];
  sub_27409D4E4(a1, v15);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2809385F0, &unk_2741CF560);
  sub_2740BA76C();
  if (swift_dynamicCast())
  {
    v7 = *&v14[0];
  }

  else
  {
    v7 = 0;
  }

  if (*&v14[0])
  {
    if (v7)
    {
      v8 = sub_2741C836C();
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    if (!v7)
    {
      v8 = 1;
      goto LABEL_11;
    }

    v8 = 0;
    v6 = v7;
  }

LABEL_11:
  sub_2741B253C(a2, v15);
  sub_27409D4E4(a1, v14);
  v9 = swift_allocObject();
  v10 = v15[5];
  *(v9 + 80) = v15[4];
  *(v9 + 96) = v10;
  *(v9 + 112) = v15[6];
  *(v9 + 128) = v16;
  v11 = v15[1];
  *(v9 + 16) = v15[0];
  *(v9 + 32) = v11;
  v12 = v15[3];
  *(v9 + 48) = v15[2];
  *(v9 + 64) = v12;
  sub_27409D118(v14, v9 + 136);
  result = sub_27409D118(v17, a3);
  *(a3 + 40) = v8 & 1;
  *(a3 + 48) = sub_2741B2674;
  *(a3 + 56) = v9;
  return result;
}

uint64_t sub_2741B2374(uint64_t a1, uint64_t a2)
{
  sub_27409D4E4(a2, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2809385F0, &unk_2741CF560);
  sub_2740BA76C();
  swift_dynamicCast();
  v6 = *(a1 + 104);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093B4E0, qword_2741D8240);
  sub_2741C7A4C();
  v4 = *(a1 + 96);
  return (*(a1 + 88))(a2);
}

uint64_t sub_2741B2474(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937E78, &qword_2741D81E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2741B24E4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  result = (*(v4 + 16))(v3, v4);
  *a2 = result;
  a2[1] = v6;
  return result;
}

uint64_t sub_2741B2574()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 40);

  if (*(v0 + 72))
  {
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 48));
  }

  v3 = *(v0 + 88);

  v4 = *(v0 + 96);

  v5 = *(v0 + 112);

  v6 = *(v0 + 128);

  return MEMORY[0x2821FE8E8](v0, 136, 7);
}

uint64_t sub_2741B25F4()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 40);

  if (*(v0 + 72))
  {
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 48));
  }

  v3 = *(v0 + 88);

  v4 = *(v0 + 96);

  v5 = *(v0 + 112);

  v6 = *(v0 + 128);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 136));

  return MEMORY[0x2821FE8E8](v0, 176, 7);
}

uint64_t sub_2741B2680()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28093B498, &qword_2741D7ED0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280937F38, &unk_2741CB670);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280937F40, &qword_2741D5B30);
  sub_2741B15B4();
  sub_2741B2768(&qword_280937F60, &qword_280937F38, &unk_2741CB670, sub_2740A5E34);
  sub_2740A5EE4();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_2741B2768(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2741B27E4(uint64_t a1)
{
  v2 = type metadata accessor for KnownNetwork();
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v9 = &v19 - v8;
  v10 = *(a1 + 16);
  if (!v10)
  {
    return MEMORY[0x277D84F90];
  }

  v11 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v12 = *(v7 + 72);
  v13 = a1 + v11;
  v14 = MEMORY[0x277D84F90];
  do
  {
    sub_27409CF58(v13, v9);
    if (v9[114])
    {
      sub_27409D050(v9);
    }

    else
    {
      sub_27409D240(v9, v6);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v20 = v14;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_27419897C(0, *(v14 + 16) + 1, 1);
        v14 = v20;
      }

      v17 = *(v14 + 16);
      v16 = *(v14 + 24);
      if (v17 >= v16 >> 1)
      {
        sub_27419897C(v16 > 1, v17 + 1, 1);
        v14 = v20;
      }

      *(v14 + 16) = v17 + 1;
      sub_27409D240(v6, v14 + v11 + v17 * v12);
    }

    v13 += v12;
    --v10;
  }

  while (v10);
  return v14;
}

uint64_t sub_2741B2998(uint64_t a1)
{
  v2 = type metadata accessor for KnownNetwork();
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v9 = &v19 - v8;
  v10 = *(a1 + 16);
  if (!v10)
  {
    return MEMORY[0x277D84F90];
  }

  v11 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v12 = *(v7 + 72);
  v13 = a1 + v11;
  v14 = MEMORY[0x277D84F90];
  do
  {
    sub_27409CF58(v13, v9);
    if (v9[114] == 1)
    {
      sub_27409D240(v9, v6);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v20 = v14;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_27419897C(0, *(v14 + 16) + 1, 1);
        v14 = v20;
      }

      v17 = *(v14 + 16);
      v16 = *(v14 + 24);
      if (v17 >= v16 >> 1)
      {
        sub_27419897C(v16 > 1, v17 + 1, 1);
        v14 = v20;
      }

      *(v14 + 16) = v17 + 1;
      sub_27409D240(v6, v14 + v11 + v17 * v12);
    }

    else
    {
      sub_27409D050(v9);
    }

    v13 += v12;
    --v10;
  }

  while (v10);
  return v14;
}

uint64_t sub_2741B2B4C(uint64_t a1)
{
  v2 = a1 + 56;
  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 56);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  for (i = MEMORY[0x277D84F90]; v5; *(v14 + 80) = v17)
  {
LABEL_10:
    while (1)
    {
      v11 = __clz(__rbit64(v5));
      v5 &= v5 - 1;
      sub_2740ACAC8(*(a1 + 48) + 104 * (v11 | (v8 << 6)), &v20);
      v29 = v22;
      v30 = v23;
      v31 = v24;
      v32 = v25;
      v33 = v26;
      v27 = v20;
      v28 = v21;
      if (BYTE9(v22) == 1)
      {
        break;
      }

      result = sub_2740ACB2C(&v27);
      if (!v5)
      {
        goto LABEL_6;
      }
    }

    v24 = v31;
    v25 = v32;
    v26 = v33;
    v20 = v27;
    v21 = v28;
    v22 = v29;
    v23 = v30;
    result = swift_isUniquelyReferenced_nonNull_native();
    v34 = i;
    if ((result & 1) == 0)
    {
      result = sub_274198AB0(0, *(i + 16) + 1, 1);
      i = v34;
    }

    v13 = *(i + 16);
    v12 = *(i + 24);
    if (v13 >= v12 >> 1)
    {
      result = sub_274198AB0((v12 > 1), v13 + 1, 1);
      i = v34;
    }

    *(i + 16) = v13 + 1;
    v14 = i + 104 * v13;
    v15 = v20;
    v16 = v22;
    *(v14 + 48) = v21;
    *(v14 + 64) = v16;
    *(v14 + 32) = v15;
    v17 = v23;
    v18 = v24;
    v19 = v25;
    *(v14 + 128) = v26;
    *(v14 + 96) = v18;
    *(v14 + 112) = v19;
  }

LABEL_6:
  while (1)
  {
    v10 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v10 >= v6)
    {

      return i;
    }

    v5 = *(v2 + 8 * v10);
    ++v8;
    if (v5)
    {
      v8 = v10;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2741B2D20(uint64_t a1)
{
  v2 = a1 + 56;
  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 56);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  for (i = MEMORY[0x277D84F90]; v5; *(v14 + 80) = v17)
  {
LABEL_10:
    while (1)
    {
      v11 = __clz(__rbit64(v5));
      v5 &= v5 - 1;
      sub_2740ACAC8(*(a1 + 48) + 104 * (v11 | (v8 << 6)), &v20);
      v29 = v22;
      v30 = v23;
      v31 = v24;
      v32 = v25;
      v33 = v26;
      v27 = v20;
      v28 = v21;
      if ((BYTE9(v22) & 1) == 0)
      {
        break;
      }

      result = sub_2740ACB2C(&v27);
      if (!v5)
      {
        goto LABEL_6;
      }
    }

    v24 = v31;
    v25 = v32;
    v26 = v33;
    v20 = v27;
    v21 = v28;
    v22 = v29;
    v23 = v30;
    result = swift_isUniquelyReferenced_nonNull_native();
    v34 = i;
    if ((result & 1) == 0)
    {
      result = sub_274198AB0(0, *(i + 16) + 1, 1);
      i = v34;
    }

    v13 = *(i + 16);
    v12 = *(i + 24);
    if (v13 >= v12 >> 1)
    {
      result = sub_274198AB0((v12 > 1), v13 + 1, 1);
      i = v34;
    }

    *(i + 16) = v13 + 1;
    v14 = i + 104 * v13;
    v15 = v20;
    v16 = v22;
    *(v14 + 48) = v21;
    *(v14 + 64) = v16;
    *(v14 + 32) = v15;
    v17 = v23;
    v18 = v24;
    v19 = v25;
    *(v14 + 128) = v26;
    *(v14 + 96) = v18;
    *(v14 + 112) = v19;
  }

LABEL_6:
  while (1)
  {
    v10 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v10 >= v6)
    {

      return i;
    }

    v5 = *(v2 + 8 * v10);
    ++v8;
    if (v5)
    {
      v8 = v10;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2741B2EF0()
{
  v1 = sub_2741B4968(sub_2741113C4);
  v2 = *(*v0 + 16);
  if (v2 < v1)
  {
    __break(1u);

    __break(1u);
  }

  else
  {
    sub_2741B4DAC(v1, v2, sub_274177318, sub_2741B4CD8);
    v4 = *v0;

    sub_2741B3160(&v4);

    *v0 = v4;
  }

  return result;
}

uint64_t sub_2741B2FC0(uint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = (*v1 + 32);
  v5 = -*(*v1 + 2);
  v6 = -1;
  while (v5 + v6 != -1)
  {
    if (++v6 >= *(v3 + 2))
    {
      __break(1u);
      goto LABEL_17;
    }

    sub_2740ACAC8(v4, v17);
    if (*&v17[0] == *v2 && *(&v17[0] + 1) == v2[1])
    {
      sub_2740ACB2C(v17);
LABEL_11:
      sub_2740ACAC8(v2, v17);
      if (swift_isUniquelyReferenced_nonNull_native())
      {
LABEL_12:
        v10 = *(v3 + 2);
        v9 = *(v3 + 3);
        if (v10 >= v9 >> 1)
        {
          v3 = sub_274177318((v9 > 1), v10 + 1, 1, v3);
        }

        *(v3 + 2) = v10 + 1;
        v11 = &v3[104 * v10];
        v12 = v17[0];
        v13 = v17[2];
        *(v11 + 3) = v17[1];
        *(v11 + 4) = v13;
        *(v11 + 2) = v12;
        v14 = v17[3];
        v15 = v17[4];
        v16 = v17[5];
        v11[128] = v18;
        *(v11 + 6) = v15;
        *(v11 + 7) = v16;
        *(v11 + 5) = v14;
        *&v17[0] = v3;

        sub_2741B3160(v17);

        *v1 = *&v17[0];
        return result;
      }

LABEL_17:
      v3 = sub_274177318(0, *(v3 + 2) + 1, 1, v3);
      goto LABEL_12;
    }

    v4 += 104;
    v8 = sub_2741C86DC();
    result = sub_2740ACB2C(v17);
    if (v8)
    {
      goto LABEL_11;
    }
  }

  return result;
}

uint64_t sub_2741B3160(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_2741B4B5C(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_2741B31CC(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_2741B31CC(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_2741C86BC();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x277D84F90];
      }

      else
      {
        v5 = sub_2741C801C();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_2741B34A4(v7, v8, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_2741B32C4(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_2741B32C4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 104 * a3;
    v6 = result - a3;
LABEL_6:
    v31 = a3;
    v7 = v6;
    v22 = v5;
    while (1)
    {
      sub_2740ACAC8(v5, &v24);
      v8 = (v5 - 104);
      sub_2740ACAC8(v5 - 104, &v23);
      v9 = sub_2741C7ECC();
      v11 = v10;
      if (v9 == sub_2741C7ECC() && v11 == v12)
      {

        sub_2740ACB2C(&v23);
        result = sub_2740ACB2C(&v24);
LABEL_5:
        a3 = v31 + 1;
        v5 = v22 + 104;
        --v6;
        if (v31 + 1 == a2)
        {
          return result;
        }

        goto LABEL_6;
      }

      v14 = sub_2741C86DC();

      sub_2740ACB2C(&v23);
      result = sub_2740ACB2C(&v24);
      if ((v14 & 1) == 0)
      {
        goto LABEL_5;
      }

      if (!v4)
      {
        break;
      }

      v27 = *(v5 + 48);
      v28 = *(v5 + 64);
      v29 = *(v5 + 80);
      v30 = *(v5 + 96);
      v24 = *v5;
      v25 = *(v5 + 16);
      v26 = *(v5 + 32);
      v15 = *(v5 - 88);
      *v5 = *v8;
      *(v5 + 16) = v15;
      v16 = *(v5 - 72);
      v17 = *(v5 - 56);
      v18 = *(v5 - 40);
      v19 = *(v5 - 24);
      *(v5 + 96) = *(v5 - 8);
      *(v5 + 64) = v18;
      *(v5 + 80) = v19;
      *(v5 + 32) = v16;
      *(v5 + 48) = v17;
      *(v5 - 24) = v29;
      *(v5 - 40) = v28;
      *(v5 - 56) = v27;
      *(v5 - 8) = v30;
      *v8 = v24;
      *(v5 - 88) = v25;
      *(v5 - 72) = v26;
      v5 -= 104;
      if (__CFADD__(v7++, 1))
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_2741B34A4(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v112 = result;
  v129 = a3;
  v6 = a3[1];
  if (v6 < 1)
  {
    v9 = MEMORY[0x277D84F90];
LABEL_105:
    v8 = *v112;
    if (!*v112)
    {
      goto LABEL_143;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
LABEL_107:
      v128 = v9;
      v103 = *(v9 + 2);
      if (v103 >= 2)
      {
        while (*v129)
        {
          v104 = *&v9[16 * v103];
          v105 = *&v9[16 * v103 + 24];
          sub_2741B3D2C((*v129 + 104 * v104), (*v129 + 104 * *&v9[16 * v103 + 16]), (*v129 + 104 * v105), v8);
          if (v5)
          {
          }

          if (v105 < v104)
          {
            goto LABEL_130;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v9 = sub_2741B412C(v9);
          }

          if (v103 - 2 >= *(v9 + 2))
          {
            goto LABEL_131;
          }

          v106 = &v9[16 * v103];
          *v106 = v104;
          *(v106 + 1) = v105;
          v128 = v9;
          result = sub_2741B40A0(v103 - 1);
          v9 = v128;
          v103 = *(v128 + 2);
          if (v103 <= 1)
          {
          }
        }

        goto LABEL_141;
      }
    }

LABEL_137:
    result = sub_2741B412C(v9);
    v9 = result;
    goto LABEL_107;
  }

  v7 = 0;
  v8 = &v121;
  v9 = MEMORY[0x277D84F90];
  while (1)
  {
    v10 = v7;
    v11 = v7 + 1;
    v116 = v9;
    if (v7 + 1 < v6)
    {
      v114 = v6;
      v110 = v5;
      v12 = *v129;
      v13 = v7 + 1;
      sub_2740ACAC8(*v129 + 104 * v11, &v121);
      sub_2740ACAC8(v12 + 104 * v10, &v120);
      v14 = sub_2741C7ECC();
      v16 = v15;
      if (v14 == sub_2741C7ECC() && v16 == v17)
      {
        v117 = 0;
      }

      else
      {
        v117 = sub_2741C86DC();
      }

      sub_2740ACB2C(&v120);
      result = sub_2740ACB2C(&v121);
      v19 = v10 + 2;
      v108 = v10;
      v20 = 104 * v10;
      v21 = v12 + 104 * v10 + 208;
      v22 = 104 * v10 + 104;
      v23 = v13;
      do
      {
        v25 = v19;
        v26 = v23;
        v27 = v22;
        if (v19 >= v114)
        {
          break;
        }

        sub_2740ACAC8(v21, &v121);
        sub_2740ACAC8(v21 - 104, &v120);
        v28 = sub_2741C7ECC();
        v30 = v29;
        v32 = v28 == sub_2741C7ECC() && v30 == v31;
        v24 = v32 ? 0 : sub_2741C86DC();

        sub_2740ACB2C(&v120);
        result = sub_2740ACB2C(&v121);
        v19 = v25 + 1;
        v21 += 104;
        v23 = v26 + 1;
        v22 = v27 + 104;
        v9 = v116;
      }

      while (((v117 ^ v24) & 1) == 0);
      if (v117)
      {
        v5 = v110;
        if (v25 < v108)
        {
          goto LABEL_134;
        }

        if (v108 >= v25)
        {
          v11 = v25;
          v10 = v108;
          goto LABEL_31;
        }

        v33 = v108;
        do
        {
          if (v33 != v26)
          {
            v35 = *v129;
            if (!*v129)
            {
              goto LABEL_140;
            }

            v36 = v35 + v27;
            v124 = *(v35 + v20 + 48);
            v125 = *(v35 + v20 + 64);
            v126 = *(v35 + v20 + 80);
            v127 = *(v35 + v20 + 96);
            v121 = *(v35 + v20);
            v122 = *(v35 + v20 + 16);
            v123 = *(v35 + v20 + 32);
            result = memmove((v35 + v20), (v35 + v27), 0x68uLL);
            *(v36 + 48) = v124;
            *(v36 + 64) = v125;
            *(v36 + 80) = v126;
            *(v36 + 96) = v127;
            *v36 = v121;
            *(v36 + 16) = v122;
            *(v36 + 32) = v123;
          }

          ++v33;
          v27 -= 104;
          v20 += 104;
        }

        while (v33 < v26--);
      }

      v11 = v25;
      v10 = v108;
      v5 = v110;
    }

LABEL_31:
    v37 = v129[1];
    if (v11 < v37)
    {
      if (__OFSUB__(v11, v10))
      {
        goto LABEL_133;
      }

      if (v11 - v10 < a4)
      {
        break;
      }
    }

LABEL_53:
    if (v11 < v10)
    {
      goto LABEL_132;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_274176EC4(0, *(v9 + 2) + 1, 1, v9);
      v9 = result;
    }

    v57 = *(v9 + 2);
    v56 = *(v9 + 3);
    v58 = v57 + 1;
    if (v57 >= v56 >> 1)
    {
      result = sub_274176EC4((v56 > 1), v57 + 1, 1, v9);
      v9 = result;
    }

    *(v9 + 2) = v58;
    v59 = &v9[16 * v57];
    *(v59 + 4) = v10;
    *(v59 + 5) = v11;
    v119 = v11;
    v60 = *v112;
    if (!*v112)
    {
      goto LABEL_142;
    }

    v61 = v5;
    if (v57)
    {
      while (1)
      {
        v5 = v58 - 1;
        if (v58 >= 4)
        {
          break;
        }

        if (v58 == 3)
        {
          v62 = *(v9 + 4);
          v63 = *(v9 + 5);
          v72 = __OFSUB__(v63, v62);
          v64 = v63 - v62;
          v65 = v72;
LABEL_73:
          if (v65)
          {
            goto LABEL_121;
          }

          v78 = &v9[16 * v58];
          v80 = *v78;
          v79 = *(v78 + 1);
          v81 = __OFSUB__(v79, v80);
          v82 = v79 - v80;
          v83 = v81;
          if (v81)
          {
            goto LABEL_124;
          }

          v84 = &v9[16 * v5 + 32];
          v86 = *v84;
          v85 = *(v84 + 1);
          v72 = __OFSUB__(v85, v86);
          v87 = v85 - v86;
          if (v72)
          {
            goto LABEL_127;
          }

          if (__OFADD__(v82, v87))
          {
            goto LABEL_128;
          }

          if (v82 + v87 >= v64)
          {
            if (v64 < v87)
            {
              v5 = v58 - 2;
            }

            goto LABEL_94;
          }

          goto LABEL_87;
        }

        v88 = &v9[16 * v58];
        v90 = *v88;
        v89 = *(v88 + 1);
        v72 = __OFSUB__(v89, v90);
        v82 = v89 - v90;
        v83 = v72;
LABEL_87:
        if (v83)
        {
          goto LABEL_123;
        }

        v91 = &v9[16 * v5];
        v93 = *(v91 + 4);
        v92 = *(v91 + 5);
        v72 = __OFSUB__(v92, v93);
        v94 = v92 - v93;
        if (v72)
        {
          goto LABEL_126;
        }

        if (v94 < v82)
        {
          goto LABEL_3;
        }

LABEL_94:
        v99 = v5 - 1;
        if (v5 - 1 >= v58)
        {
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
          goto LABEL_136;
        }

        if (!*v129)
        {
          goto LABEL_139;
        }

        v100 = *&v9[16 * v99 + 32];
        v101 = *&v9[16 * v5 + 40];
        sub_2741B3D2C((*v129 + 104 * v100), (*v129 + 104 * *&v9[16 * v5 + 32]), (*v129 + 104 * v101), v60);
        if (v61)
        {
        }

        if (v101 < v100)
        {
          goto LABEL_117;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = sub_2741B412C(v9);
        }

        if (v99 >= *(v9 + 2))
        {
          goto LABEL_118;
        }

        v102 = &v9[16 * v99];
        *(v102 + 4) = v100;
        *(v102 + 5) = v101;
        v128 = v9;
        result = sub_2741B40A0(v5);
        v9 = v128;
        v58 = *(v128 + 2);
        if (v58 <= 1)
        {
          goto LABEL_3;
        }
      }

      v66 = &v9[16 * v58 + 32];
      v67 = *(v66 - 64);
      v68 = *(v66 - 56);
      v72 = __OFSUB__(v68, v67);
      v69 = v68 - v67;
      if (v72)
      {
        goto LABEL_119;
      }

      v71 = *(v66 - 48);
      v70 = *(v66 - 40);
      v72 = __OFSUB__(v70, v71);
      v64 = v70 - v71;
      v65 = v72;
      if (v72)
      {
        goto LABEL_120;
      }

      v73 = &v9[16 * v58];
      v75 = *v73;
      v74 = *(v73 + 1);
      v72 = __OFSUB__(v74, v75);
      v76 = v74 - v75;
      if (v72)
      {
        goto LABEL_122;
      }

      v72 = __OFADD__(v64, v76);
      v77 = v64 + v76;
      if (v72)
      {
        goto LABEL_125;
      }

      if (v77 >= v69)
      {
        v95 = &v9[16 * v5 + 32];
        v97 = *v95;
        v96 = *(v95 + 1);
        v72 = __OFSUB__(v96, v97);
        v98 = v96 - v97;
        if (v72)
        {
          goto LABEL_129;
        }

        if (v64 < v98)
        {
          v5 = v58 - 2;
        }

        goto LABEL_94;
      }

      goto LABEL_73;
    }

LABEL_3:
    v6 = v129[1];
    v7 = v119;
    v5 = v61;
    if (v119 >= v6)
    {
      goto LABEL_105;
    }
  }

  v38 = v10 + a4;
  if (__OFADD__(v10, a4))
  {
    goto LABEL_135;
  }

  if (v38 >= v37)
  {
    v38 = v129[1];
  }

  if (v38 < v10)
  {
LABEL_136:
    __break(1u);
    goto LABEL_137;
  }

  if (v11 == v38)
  {
    goto LABEL_53;
  }

  v111 = v5;
  v39 = *v129;
  v40 = *v129 + 104 * v11;
  v109 = v10;
  v41 = v10 - v11;
  v113 = v38;
LABEL_42:
  v118 = v11;
  v42 = v41;
  v115 = v40;
  while (1)
  {
    sub_2740ACAC8(v40, &v121);
    v43 = (v40 - 104);
    sub_2740ACAC8(v40 - 104, &v120);
    v44 = sub_2741C7ECC();
    v46 = v45;
    if (v44 == sub_2741C7ECC() && v46 == v47)
    {

      sub_2740ACB2C(&v120);
      sub_2740ACB2C(&v121);
LABEL_41:
      v11 = v118 + 1;
      v40 = v115 + 104;
      --v41;
      if (v118 + 1 == v113)
      {
        v11 = v113;
        v10 = v109;
        v5 = v111;
        v9 = v116;
        goto LABEL_53;
      }

      goto LABEL_42;
    }

    v49 = sub_2741C86DC();

    sub_2740ACB2C(&v120);
    result = sub_2740ACB2C(&v121);
    if ((v49 & 1) == 0)
    {
      goto LABEL_41;
    }

    if (!v39)
    {
      break;
    }

    v124 = *(v40 + 48);
    v125 = *(v40 + 64);
    v126 = *(v40 + 80);
    v127 = *(v40 + 96);
    v121 = *v40;
    v122 = *(v40 + 16);
    v123 = *(v40 + 32);
    v50 = *(v40 - 88);
    *v40 = *v43;
    *(v40 + 16) = v50;
    v51 = *(v40 - 72);
    v52 = *(v40 - 56);
    v53 = *(v40 - 40);
    v54 = *(v40 - 24);
    *(v40 + 96) = *(v40 - 8);
    *(v40 + 64) = v53;
    *(v40 + 80) = v54;
    *(v40 + 32) = v51;
    *(v40 + 48) = v52;
    *(v40 - 24) = v126;
    *(v40 - 40) = v125;
    *(v40 - 56) = v124;
    *(v40 - 8) = v127;
    *v43 = v121;
    *(v40 - 88) = v122;
    *(v40 - 72) = v123;
    v40 -= 104;
    if (__CFADD__(v42++, 1))
    {
      goto LABEL_41;
    }
  }

  __break(1u);
LABEL_139:
  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
  return result;
}

uint64_t sub_2741B3D2C(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = (__src - __dst) / 104;
  v10 = a3 - __src;
  v11 = (a3 - __src) / 104;
  if (v9 >= v11)
  {
    v22 = 104 * v11;
    if (a4 != __src || &__src[v22] <= a4)
    {
      memmove(a4, __src, 104 * v11);
    }

    v13 = &v4[v22];
    if (v10 < 104 || v6 <= v7)
    {
      v21 = v6;
    }

    else
    {
      do
      {
        v21 = v6 - 104;
        v23 = v13 - 104;
        v5 -= 104;
        while (1)
        {
          sub_2740ACAC8(v23, &v35);
          sub_2740ACAC8((v6 - 104), &v34);
          v26 = sub_2741C7ECC();
          v28 = v27;
          v30 = v26 == sub_2741C7ECC() && v28 == v29;
          v31 = v30 ? 0 : sub_2741C86DC();

          sub_2740ACB2C(&v34);
          sub_2740ACB2C(&v35);
          if (v31)
          {
            break;
          }

          if (v5 + 104 != v23 + 104)
          {
            memmove(v5, v23, 0x68uLL);
          }

          v24 = v23 - 104;
          v5 -= 104;
          v25 = v23 > v4;
          v23 -= 104;
          if (!v25)
          {
            v13 = v24 + 104;
            v21 = v6;
            goto LABEL_44;
          }
        }

        if (v5 + 104 != v6)
        {
          memmove(v5, v6 - 104, 0x68uLL);
        }

        v13 = v23 + 104;
        if (v23 + 104 <= v4)
        {
          break;
        }

        v6 -= 104;
      }

      while (v21 > v7);
      v13 = v23 + 104;
    }
  }

  else
  {
    v12 = 104 * v9;
    if (a4 != __dst || &__dst[v12] <= a4)
    {
      memmove(a4, __dst, v12);
    }

    v13 = &v4[v12];
    if (v8 >= 104 && v6 < v5)
    {
      while (1)
      {
        sub_2740ACAC8(v6, &v35);
        sub_2740ACAC8(v4, &v34);
        v14 = sub_2741C7ECC();
        v16 = v15;
        v18 = v14 == sub_2741C7ECC() && v16 == v17;
        if (v18)
        {
          break;
        }

        v19 = sub_2741C86DC();

        sub_2740ACB2C(&v34);
        sub_2740ACB2C(&v35);
        if ((v19 & 1) == 0)
        {
          goto LABEL_16;
        }

        v20 = v6;
        v18 = v7 == v6;
        v6 += 104;
        if (!v18)
        {
          goto LABEL_17;
        }

LABEL_18:
        v7 += 104;
        if (v4 >= v13 || v6 >= v5)
        {
          goto LABEL_20;
        }
      }

      sub_2740ACB2C(&v34);
      sub_2740ACB2C(&v35);
LABEL_16:
      v20 = v4;
      v18 = v7 == v4;
      v4 += 104;
      if (v18)
      {
        goto LABEL_18;
      }

LABEL_17:
      memmove(v7, v20, 0x68uLL);
      goto LABEL_18;
    }

LABEL_20:
    v21 = v7;
  }

LABEL_44:
  v32 = 104 * ((v13 - v4) / 104);
  if (v21 != v4 || v21 >= &v4[v32])
  {
    memmove(v21, v4, v32);
  }

  return 1;
}

uint64_t sub_2741B40A0(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_2741B412C(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    v9 = *(v7 + 40);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

size_t sub_2741B4140(size_t result, int64_t a2, char a3, void *a4)
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
LABEL_30:
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

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093AC30, qword_2741D5CE8);
  v10 = *(type metadata accessor for KnownNetwork() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(type metadata accessor for KnownNetwork() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *sub_2741B4318(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093AC10, &qword_2741D5CC8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = (v11 - 32 + ((v11 - 32) >> 63)) & 0xFFFFFFFFFFFFFFFELL;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[2 * v8])
    {
      memmove(v12, v13, 2 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 2 * v8);
  }

  return v10;
}

void *sub_2741B4414(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093AC00, &qword_2741D5CB8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2809385F0, &unk_2741CF560);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_2741B455C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093ABF0, &qword_2741D5CA8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 104);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[104 * v8])
    {
      memmove(v12, v13, 104 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_2741B4680(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280939D80, &qword_2741D2B38);
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

uint64_t sub_2741B478C(uint64_t (*a1)(__int128 *))
{
  v4 = *v2;
  v5 = (*v2 + 2);
  v6 = *v5;
  if (*v5)
  {
    v1 = 0;
    for (i = 9; ; i += 5)
    {
      result = a1(&v4[i - 5]);
      if (v3)
      {
        break;
      }

      if (result)
      {
        v17 = v2;
        v10 = v1 + 1;
        if (__OFADD__(v1, 1))
        {
LABEL_32:
          __break(1u);
          return result;
        }

        v11 = *v5;
        while (v10 != v11)
        {
          if (v10 >= v11)
          {
            __break(1u);
LABEL_28:
            __break(1u);
LABEL_29:
            __break(1u);
LABEL_30:
            __break(1u);
LABEL_31:
            __break(1u);
            goto LABEL_32;
          }

          sub_27409D4E4(&v4[i], v16);
          v12 = a1(v16);
          result = __swift_destroy_boxed_opaque_existential_1Tm(v16);
          if ((v12 & 1) == 0)
          {
            if (v10 != v1)
            {
              if ((v1 & 0x8000000000000000) != 0)
              {
                goto LABEL_28;
              }

              v13 = *v5;
              if (v1 >= *v5)
              {
                goto LABEL_29;
              }

              result = sub_27409D4E4(&v4[5 * v1 + 4], v16);
              if (v10 >= v13)
              {
                goto LABEL_30;
              }

              sub_27409D4E4(&v4[i], v15);
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v4 = sub_2741B4B98(v4);
              }

              v14 = &v4[5 * v1];
              __swift_destroy_boxed_opaque_existential_1Tm(v14 + 4);
              result = sub_27409D118(v15, (v14 + 4));
              if (v10 >= v4[2])
              {
                goto LABEL_31;
              }

              __swift_destroy_boxed_opaque_existential_1Tm(&v4[i]);
              result = sub_27409D118(v16, &v4[i]);
              *v17 = v4;
            }

            ++v1;
          }

          ++v10;
          v5 = (v4 + 2);
          v11 = v4[2];
          i += 5;
        }

        return v1;
      }

      if (v6 == ++v1)
      {
        return *v5;
      }
    }
  }

  else if (!v3)
  {
    return *v5;
  }

  return v1;
}

uint64_t sub_2741B4968(uint64_t (*a1)(char *))
{
  v4 = *v2;
  v5 = (*v2 + 16);
  v6 = *v5;
  if (*v5)
  {
    v1 = 0;
    for (i = 136; ; i += 104)
    {
      result = a1(&v4[i - 104]);
      if (v3)
      {
        break;
      }

      if (result)
      {
        v16 = v2;
        v10 = v1 + 1;
        if (__OFADD__(v1, 1))
        {
LABEL_32:
          __break(1u);
          return result;
        }

        v11 = *v5;
        while (v10 != v11)
        {
          if (v10 >= v11)
          {
            __break(1u);
LABEL_28:
            __break(1u);
LABEL_29:
            __break(1u);
LABEL_30:
            __break(1u);
LABEL_31:
            __break(1u);
            goto LABEL_32;
          }

          sub_2740ACAC8(&v4[i], v15);
          v12 = a1(v15);
          result = sub_2740ACB2C(v15);
          if ((v12 & 1) == 0)
          {
            if (v10 != v1)
            {
              if ((v1 & 0x8000000000000000) != 0)
              {
                goto LABEL_28;
              }

              v13 = *v5;
              if (v1 >= *v5)
              {
                goto LABEL_29;
              }

              result = sub_2740ACAC8(&v4[104 * v1 + 32], v15);
              if (v10 >= v13)
              {
                goto LABEL_30;
              }

              sub_2740ACAC8(&v4[i], v14);
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v4 = sub_2741B4BAC(v4);
              }

              result = sub_2741B4E84(v14, &v4[104 * v1 + 32]);
              if (v10 >= *(v4 + 2))
              {
                goto LABEL_31;
              }

              result = sub_2741B4E84(v15, &v4[i]);
              *v16 = v4;
            }

            ++v1;
          }

          ++v10;
          v5 = (v4 + 16);
          v11 = *(v4 + 2);
          i += 104;
        }

        return v1;
      }

      if (v6 == ++v1)
      {
        return *v5;
      }
    }
  }

  else if (!v3)
  {
    return *v5;
  }

  return v1;
}

unint64_t sub_2741B4BC0(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_13;
  }

  v7 = *v3;
  v8 = v7 + 32 + 40 * result;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2809385F0, &unk_2741CF560);
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (!v10)
  {
    goto LABEL_10;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_14;
  }

  result = v8 + 40 * a3;
  v13 = (v7 + 32 + 40 * a2);
  if (result != v13 || result >= v13 + 40 * v12)
  {
    result = memmove(result, v13, 40 * v12);
  }

  v14 = *(v7 + 16);
  v9 = __OFADD__(v14, v10);
  v15 = v14 + v10;
  if (v9)
  {
    goto LABEL_15;
  }

  *(v7 + 16) = v15;
LABEL_10:
  if (a3 > 0)
  {
LABEL_16:
    __break(1u);
  }

  return result;
}

unint64_t sub_2741B4CD8(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *v3;
  v8 = v7 + 32 + 104 * result;
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_17;
  }

  result = v8 + 104 * a3;
  v13 = (v7 + 32 + 104 * a2);
  v14 = 104 * v12;
  v15 = &v13[104 * v12];
  if (result != v13 || result >= v15)
  {
    result = memmove(result, v13, v14);
  }

  v17 = *(v7 + 16);
  v9 = __OFADD__(v17, v10);
  v18 = v17 + v10;
  if (v9)
  {
    goto LABEL_18;
  }

  *(v7 + 16) = v18;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

uint64_t sub_2741B4DAC(uint64_t result, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(uint64_t, uint64_t, void))
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  v6 = *v4;
  v7 = *(*v4 + 16);
  if (v7 < a2)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v8 = result;
  if (__OFSUB__(a2, result))
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v9 = result - a2;
  if (__OFSUB__(0, a2 - result))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v10 = v7 + v9;
  if (__OFADD__(v7, v9))
  {
LABEL_14:
    __break(1u);
    return result;
  }

  v13 = *v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v4 = v6;
  if (!isUniquelyReferenced_nonNull_native || v10 > *(v6 + 24) >> 1)
  {
    v6 = a3();
    *v4 = v6;
  }

  result = a4(v8, a2, 0);
  *v4 = v6;
  return result;
}

unint64_t sub_2741B4F94()
{
  result = qword_28093B4E8;
  if (!qword_28093B4E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28093B4E8);
  }

  return result;
}

unint64_t sub_2741B4FEC()
{
  result = qword_28093B4F0;
  if (!qword_28093B4F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28093B4F0);
  }

  return result;
}

unint64_t sub_2741B5044()
{
  result = qword_28093B4F8;
  if (!qword_28093B4F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28093B4F8);
  }

  return result;
}

unint64_t sub_2741B509C()
{
  result = qword_28093B500;
  if (!qword_28093B500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28093B500);
  }

  return result;
}

id sub_2741B5154()
{
  result = [objc_allocWithZone(type metadata accessor for HotspotReceiver()) init];
  qword_28093B508 = result;
  unk_28093B510 = &off_288327620;
  return result;
}

uint64_t sub_2741B5194(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093B520, &qword_2741D8510);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v19 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937E30, &qword_2741CDC20);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v19 - v11;
  sub_2740CB460(0x1000000000000019, 0x80000002741E3A50);
  sub_2741C80BC();
  v13 = sub_2741C80DC();
  (*(*(v13 - 8) + 56))(v12, 0, 1, v13);
  (*(v5 + 16))(v8, a1, v4);
  v14 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = 0;
  *(v15 + 24) = 0;
  (*(v5 + 32))(v15 + v14, v8, v4);
  *(v15 + ((v6 + v14 + 7) & 0xFFFFFFFFFFFFFFF8)) = a2;

  v16 = sub_2740CE980(0, 0, v12, &unk_2741D8520, v15);
  v17 = *(a2 + 56);
  *(a2 + 56) = v16;
}

uint64_t sub_2741B53BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093B520, &qword_2741D8510);
  v5[4] = v6;
  v7 = *(v6 - 8);
  v5[5] = v7;
  v5[6] = *(v7 + 64);
  v5[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2741B5490, 0, 0);
}

uint64_t sub_2741B5490()
{
  v1 = v0[7];
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[3];
  (*(v3 + 16))(v1, v0[2], v2);
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = swift_allocObject();
  (*(v3 + 32))(v6 + v5, v1, v2);
  v7 = off_280945D88;
  off_280945D88 = sub_2741B8A88;
  qword_280945D90 = v6;
  sub_2740BA7B8(v7);

  sub_2741C80EC();

  v8 = v0[1];

  return v8();
}

uint64_t sub_2741B55C4(uint64_t a1, uint64_t a2)
{
  v35 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093B528, &qword_2741D8528);
  v33 = *(v3 - 8);
  v34 = v3;
  v4 = *(v33 + 64);
  MEMORY[0x28223BE20](v3);
  v32 = &v32 - v5;
  v6 = sub_274178320(MEMORY[0x277D84F90]);
  v7 = *(a1 + 16);
  if (!v7)
  {
LABEL_16:
    v27 = v6[2];
    if (v27)
    {
      v28 = sub_274177640(v6[2], 0);
      v29 = sub_274156EB4(&v38, (v28 + 4), v27, v6);

      sub_2740D43C8();
      if (v29 == v27)
      {
LABEL_20:
        v38 = v28;

        sub_2741B7704(&v38);

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093B520, &qword_2741D8510);
        v30 = v32;
        sub_2741C80FC();
        (*(v33 + 8))(v30, v34);
      }

      __break(1u);
    }

    v28 = MEMORY[0x277D84F90];
    goto LABEL_20;
  }

  v8 = (a1 + 32);
  while (1)
  {
    sub_27409D4E4(v8, &v38);
    v9 = v39;
    v10 = v40;
    __swift_project_boxed_opaque_existential_1(&v38, v39);
    v11 = (*(v10 + 24))(v9, v10);
    v13 = v12;
    sub_27409D4E4(&v38, v37);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v36 = v6;
    v16 = sub_2741251AC(v11, v13);
    v17 = v6[2];
    v18 = (v15 & 1) == 0;
    v19 = v17 + v18;
    if (__OFADD__(v17, v18))
    {
      break;
    }

    v20 = v15;
    if (v6[3] >= v19)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        v6 = v36;
        if (v15)
        {
          goto LABEL_3;
        }
      }

      else
      {
        sub_274106E40();
        v6 = v36;
        if (v20)
        {
          goto LABEL_3;
        }
      }
    }

    else
    {
      sub_274105CE8(v19, isUniquelyReferenced_nonNull_native);
      v21 = sub_2741251AC(v11, v13);
      if ((v20 & 1) != (v22 & 1))
      {
        goto LABEL_23;
      }

      v16 = v21;
      v6 = v36;
      if (v20)
      {
LABEL_3:

        goto LABEL_4;
      }
    }

    v6[(v16 >> 6) + 8] |= 1 << v16;
    v23 = (v6[6] + 16 * v16);
    *v23 = v11;
    v23[1] = v13;
    sub_27409D4E4(v37, v6[7] + 40 * v16);
    v24 = v6[2];
    v25 = __OFADD__(v24, 1);
    v26 = v24 + 1;
    if (v25)
    {
      goto LABEL_22;
    }

    v6[2] = v26;
LABEL_4:
    __swift_assign_boxed_opaque_existential_1((v6[7] + 40 * v16), &v38);
    __swift_destroy_boxed_opaque_existential_1Tm(v37);
    __swift_destroy_boxed_opaque_existential_1Tm(&v38);
    v8 += 40;
    if (!--v7)
    {
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __swift_destroy_boxed_opaque_existential_1Tm(v37);
  sub_2741C871C();
  __break(1u);

  __break(1u);
  return result;
}

uint64_t sub_2741B5948(void *a1, void *a2)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  (*(v4 + 16))(v3, v4);
  v5 = sub_2741C7ECC();
  v7 = v6;

  v8 = a2[3];
  v9 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v8);
  (*(v9 + 16))(v8, v9);
  v10 = sub_2741C7ECC();
  v12 = v11;

  if (v5 == v10 && v7 == v12)
  {
    v14 = 0;
  }

  else
  {
    v14 = sub_2741C86DC();
  }

  return v14 & 1;
}

uint64_t sub_2741B5A58(uint64_t a1, uint64_t a2)
{
  sub_2740CB460(0x1000000000000014, 0x80000002741E3A70);
  swift_beginAccess();
  sub_27409D4E4(a2 + 16, v6);
  v3 = v7;
  v4 = v8;
  __swift_project_boxed_opaque_existential_1(v6, v7);
  (*(v4 + 40))(v3, v4);
  return __swift_destroy_boxed_opaque_existential_1Tm(v6);
}

uint64_t sub_2741B5AFC()
{
  if (*(v0 + 56))
  {
    v1 = *(v0 + 56);

    sub_2741C814C();

    v2 = *(v0 + 56);
  }

  *(v0 + 56) = 0;
}

uint64_t sub_2741B5B70(uint64_t a1, uint64_t a2)
{
  v3[21] = a2;
  v3[22] = v2;
  v3[20] = a1;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937E30, &qword_2741CDC20) - 8) + 64) + 15;
  v3[23] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2741B5C10, 0, 0);
}

uint64_t sub_2741B5C10()
{
  v1 = *(v0 + 22);
  v2 = *(v0 + 23);
  v3 = *(v0 + 21);
  v4 = swift_allocObject();
  *(v0 + 24) = v4;
  *(v4 + 16) = 1;
  v5 = objc_opt_self();
  *(v0 + 6) = sub_2741B7100;
  *(v0 + 7) = v1;
  *(v0 + 2) = MEMORY[0x277D85DD0];
  *(v0 + 3) = 1107296256;
  *(v0 + 4) = sub_27415885C;
  *(v0 + 5) = &block_descriptor_12;
  v6 = _Block_copy(v0 + 1);
  v7 = *(v0 + 7);

  v8 = [v5 scheduledTimerWithTimeInterval:0 repeats:v6 block:30.0];
  _Block_release(v6);

  sub_2741C80BC();
  v9 = sub_2741C80DC();
  (*(*(v9 - 8) + 56))(v2, 0, 1, v9);
  sub_27409D4E4(v3, (v0 + 7));
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = v4;
  sub_27409D118(v0 + 7, (v10 + 5));
  v10[10] = v1;
  v10[11] = 0x3FF0000000000000;

  v11 = sub_2741A7C84(0, 0, v2, &unk_2741D84F0, v10);
  *(v0 + 25) = v11;
  v12 = *(MEMORY[0x277D857D0] + 4);
  v13 = swift_task_alloc();
  *(v0 + 26) = v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093B490, &qword_2741D7EA8);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937E10, &qword_2741CB370);
  *(v0 + 27) = v15;
  *v13 = v0;
  v13[1] = sub_2741B5EB4;
  v16 = MEMORY[0x277D84950];

  return MEMORY[0x282200440](v0 + 4, v11, v14, v15, v16);
}

uint64_t sub_2741B5EB4()
{
  v1 = *(*v0 + 208);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_2741B5FB0, 0, 0);
}

uint64_t sub_2741B5FB0()
{
  if (*(v0 + 104))
  {
    v1 = *(v0 + 216);
    v2 = *(v0 + 192);
    v3 = *(v0 + 200);
    v4 = *(v0 + 184);
    *(v0 + 152) = *(v0 + 64);
    swift_willThrowTypedImpl();
  }

  else
  {
    v7 = *(v0 + 192);
    v6 = *(v0 + 200);
    v8 = *(v0 + 184);
    v9 = *(v0 + 160);

    sub_27409D118((v0 + 64), v9);
  }

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_2741B6090(uint64_t a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 344) = a2;
  *(v7 + 328) = a6;
  *(v7 + 336) = a7;
  *(v7 + 312) = a1;
  *(v7 + 320) = a5;
  v8 = sub_2741C85FC();
  *(v7 + 352) = v8;
  v9 = *(v8 - 8);
  *(v7 + 360) = v9;
  v10 = *(v9 + 64) + 15;
  *(v7 + 368) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2741B6158, 0, 0);
}

uint64_t sub_2741B6158()
{
  v1 = v0[41];
  v2 = v0[42];
  v3 = v0[40];
  sub_2741C856C();

  swift_beginAccess();
  v0[34] = *(v3 + 16);
  v4 = sub_2741C86CC();
  MEMORY[0x2743E5FB0](v4);

  MEMORY[0x2743E5FB0](0xD000000000000016, 0x80000002741E3A10);
  v5 = v1[3];
  v6 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v5);
  v7 = (*(v6 + 16))(v5, v6);
  MEMORY[0x2743E5FB0](v7);

  sub_2740CB460(0x3A74706D65747441, 0xE900000000000020);

  swift_beginAccess();
  sub_27409D4E4(v2 + 16, (v0 + 2));
  v8 = v0[5];
  v9 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v8);
  v10 = *(v9 + 48);
  v16 = (v10 + *v10);
  v11 = v10[1];
  v12 = swift_task_alloc();
  v0[47] = v12;
  *v12 = v0;
  v12[1] = sub_2741B63B0;
  v13 = v0[41];
  v14 = v0[39];

  return v16(v14, v13, v8, v9);
}

uint64_t sub_2741B63B0()
{
  v2 = *(*v1 + 376);
  v5 = *v1;
  *(*v1 + 384) = v0;

  if (v0)
  {
    v3 = sub_2741B6B80;
  }

  else
  {
    v3 = sub_2741B64C4;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2741B64C4()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  v1 = v0[46];

  v2 = v0[1];

  return v2();
}

uint64_t sub_2741B6530()
{
  v2 = *v1;
  v3 = *(*v1 + 392);
  v4 = *v1;
  *(*v1 + 400) = v0;

  (*(v2[45] + 8))(v2[46], v2[44]);
  if (v0)
  {
    v5 = sub_2741B6AA0;
  }

  else
  {
    v5 = sub_2741B6698;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_2741B6698()
{
  v1 = v0[48];
  v3 = v0[40];
  v2 = v0[41];
  sub_2741C856C();
  v0[30] = 0;
  v0[31] = 0xE000000000000000;
  MEMORY[0x2743E5FB0](0xD000000000000010, 0x80000002741E3060);
  swift_beginAccess();
  v0[35] = *(v3 + 16);
  v4 = sub_2741C86CC();
  MEMORY[0x2743E5FB0](v4);

  MEMORY[0x2743E5FB0](0x206F742065756420, 0xEE003A726F727265);
  v0[36] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937E10, &qword_2741CB370);
  sub_2741C862C();
  MEMORY[0x2743E5FB0](0xD000000000000013, 0x80000002741E3A30);
  v5 = v2[3];
  v6 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v5);
  v7 = (*(v6 + 16))(v5, v6);
  MEMORY[0x2743E5FB0](v7);

  sub_2740CB460(v0[30], v0[31]);

  result = swift_beginAccess();
  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
  }

  else
  {
    v12 = v0[42];
    *(v0[40] + 16) = v11;
    sub_27409D4E4(v12 + 16, (v0 + 7));
    v13 = v0[10];
    v14 = v0[11];
    __swift_project_boxed_opaque_existential_1(v0 + 7, v13);
    v15 = *(v14 + 48);
    v20 = (v15 + *v15);
    v16 = v15[1];
    v17 = swift_task_alloc();
    v0[51] = v17;
    *v17 = v0;
    v17[1] = sub_2741B698C;
    v18 = v0[41];
    v19 = v0[39];

    return v20(v19, v18, v13, v14);
  }

  return result;
}

uint64_t sub_2741B698C()
{
  v2 = *(*v1 + 408);
  v5 = *v1;
  *(*v1 + 416) = v0;

  if (v0)
  {
    v3 = sub_2741B6E30;
  }

  else
  {
    v3 = sub_2741B6B0C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2741B6AA0()
{
  v1 = *(v0 + 400);
  v2 = *(v0 + 368);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_2741B6B0C()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 56));
  v1 = *(v0 + 368);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_2741B6B80()
{
  v1 = v0[42];
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  if (*(v1 + 64) == 1)
  {
    v2 = v0[48];
    v3 = v0[40];
    sub_2741C856C();
    v0[32] = 0;
    v0[33] = 0xE000000000000000;
    MEMORY[0x2743E5FB0](0xD00000000000001ALL, 0x80000002741E30A0);
    v0[37] = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937E10, &qword_2741CB370);
    sub_2741C862C();
    MEMORY[0x2743E5FB0](0xD000000000000011, 0x80000002741E30C0);
    swift_beginAccess();
    v0[38] = *(v3 + 16);
    v4 = sub_2741C86CC();
    MEMORY[0x2743E5FB0](v4);

    sub_2740CB218(v0[32], v0[33], 0x5F28656C62616E65, 0xEA0000000000293ALL);

    result = swift_beginAccess();
    v6 = *(v3 + 16);
    v7 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      __break(1u);
    }

    else
    {
      v8 = v0[48];
      *(v0[40] + 16) = v7;
      sub_27411D4AC();
      swift_allocError();
      *v9 = v7;
      *(v9 + 8) = 0;
      swift_willThrow();

      v10 = v0[46];

      v11 = v0[1];

      return v11();
    }
  }

  else
  {
    v12 = v0[46];
    v13 = v0[43];
    v14 = sub_2741C882C();
    v16 = v15;
    sub_2741C874C();
    v17 = swift_task_alloc();
    v0[49] = v17;
    *v17 = v0;
    v17[1] = sub_2741B6530;
    v18 = v0[46];

    return sub_2741B724C(v14, v16, 0, 0, 1);
  }

  return result;
}

uint64_t sub_2741B6E30()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 56));
  v1 = *(v0 + 416);
  v2 = *(v0 + 368);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t InstantHotspotBrowser.deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  v1 = *(v0 + 56);

  return v0;
}

uint64_t InstantHotspotBrowser.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  v1 = *(v0 + 56);

  return swift_deallocClassInstance();
}

uint64_t sub_2741B6F0C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093B518, &unk_2741D8500);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v10[-v4];
  v6 = *v0;
  swift_beginAccess();
  sub_27409D4E4(v6 + 16, v11);
  v7 = v12;
  v8 = v13;
  __swift_project_boxed_opaque_existential_1(v11, v12);
  (*(v8 + 32))(v7, v8);
  __swift_destroy_boxed_opaque_existential_1Tm(v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093B4D0, &qword_2741D8238);
  (*(v2 + 104))(v5, *MEMORY[0x277D85778], v1);
  return sub_2741C812C();
}

uint64_t block_copy_helper_12(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_2741B7124()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 5);
  v3 = v0[10];

  return MEMORY[0x2821FE8E8](v0, 96, 7);
}

uint64_t sub_2741B7174(uint64_t a1)
{
  v4 = *(v1 + 2);
  v5 = *(v1 + 3);
  v6 = *(v1 + 4);
  v7 = *(v1 + 10);
  v8 = v1[11];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_27409D648;

  return sub_2741B6090(a1, v8, v4, v5, v6, (v1 + 5), v7);
}

uint64_t sub_2741B724C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 56) = v5;
  v12 = sub_2741C85DC();
  *(v6 + 64) = v12;
  v13 = *(v12 - 8);
  *(v6 + 72) = v13;
  v14 = *(v13 + 64) + 15;
  *(v6 + 80) = swift_task_alloc();
  *(v6 + 88) = swift_task_alloc();
  *(v6 + 40) = a1;
  *(v6 + 48) = a2;
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  *(v6 + 32) = a5 & 1;

  return MEMORY[0x2822009F8](sub_2741B734C, 0, 0);
}

uint64_t sub_2741B734C()
{
  v1 = v0[10];
  v2 = v0[11];
  v3 = v0[8];
  v4 = v0[9];
  v5 = v0[7];
  v6 = sub_2741C85FC();
  v7 = sub_2741B8794(&qword_28093AEC8, MEMORY[0x277D85928]);
  sub_2741C872C();
  sub_2741B8794(&qword_28093AED0, MEMORY[0x277D858F8]);
  sub_2741C860C();
  v8 = *(v4 + 8);
  v0[12] = v8;
  v0[13] = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v8(v1, v3);
  v9 = *(MEMORY[0x277D85A58] + 4);
  v10 = swift_task_alloc();
  v0[14] = v10;
  *v10 = v0;
  v10[1] = sub_2741B74DC;
  v11 = v0[11];
  v12 = v0[7];

  return MEMORY[0x2822008C8](v11, v0 + 2, v6, v7);
}

uint64_t sub_2741B74DC()
{
  v2 = *(*v1 + 112);
  v3 = *(*v1 + 104);
  v4 = *(*v1 + 96);
  v5 = *(*v1 + 88);
  v6 = *(*v1 + 64);
  v7 = *v1;
  v7[15] = v0;

  v4(v5, v6);
  if (v0)
  {

    return MEMORY[0x2822009F8](sub_2741B7698, 0, 0);
  }

  else
  {
    v9 = v7[10];
    v8 = v7[11];

    v10 = v7[1];

    return v10();
  }
}

uint64_t sub_2741B7698()
{
  v2 = v0[10];
  v1 = v0[11];

  v3 = v0[1];
  v4 = v0[15];

  return v3();
}

uint64_t sub_2741B7704(void **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_2741B4B84(v2);
  }

  v3 = v2[2];
  v5[0] = (v2 + 4);
  v5[1] = v3;
  result = sub_2741B7770(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_2741B7770(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_2741C86BC();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x277D84F90];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2809385F0, &unk_2741CF560);
        v5 = sub_2741C801C();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_2741B7A60(v7, v8, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_2741B7878(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_2741B7878(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 40 * a3;
    v6 = result - a3;
LABEL_6:
    v30 = a3;
    v22 = v6;
    v23 = v5;
    while (1)
    {
      sub_27409D4E4(v5, &v27);
      sub_27409D4E4(v5 - 40, v24);
      v7 = v28;
      v8 = v29;
      __swift_project_boxed_opaque_existential_1(&v27, v28);
      (*(v8 + 16))(v7, v8);
      v9 = sub_2741C7ECC();
      v11 = v10;

      v13 = v25;
      v12 = v26;
      __swift_project_boxed_opaque_existential_1(v24, v25);
      (*(v12 + 16))(v13, v12);
      v14 = sub_2741C7ECC();
      v16 = v15;

      if (v9 == v14 && v11 == v16)
      {

        __swift_destroy_boxed_opaque_existential_1Tm(v24);
        result = __swift_destroy_boxed_opaque_existential_1Tm(&v27);
LABEL_5:
        a3 = v30 + 1;
        v5 = v23 + 40;
        v6 = v22 - 1;
        if (v30 + 1 == a2)
        {
          return result;
        }

        goto LABEL_6;
      }

      v18 = sub_2741C86DC();

      __swift_destroy_boxed_opaque_existential_1Tm(v24);
      result = __swift_destroy_boxed_opaque_existential_1Tm(&v27);
      if ((v18 & 1) == 0)
      {
        goto LABEL_5;
      }

      if (!v4)
      {
        break;
      }

      sub_27409D118(v5, &v27);
      v19 = *(v5 - 24);
      *v5 = *(v5 - 40);
      *(v5 + 16) = v19;
      *(v5 + 32) = *(v5 - 8);
      result = sub_27409D118(&v27, v5 - 40);
      v5 -= 40;
      if (__CFADD__(v6++, 1))
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_2741B7A60(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v6 = v4;
  v110 = result;
  v7 = a3[1];
  if (v7 < 1)
  {
    v9 = MEMORY[0x277D84F90];
LABEL_102:
    v5 = *v110;
    if (!*v110)
    {
      goto LABEL_142;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_136:
      result = sub_2741B412C(v9);
      v9 = result;
    }

    v102 = v6;
    v126 = v9;
    v103 = *(v9 + 2);
    if (v103 >= 2)
    {
      while (*a3)
      {
        v6 = v103 - 1;
        v104 = *&v9[16 * v103];
        v105 = *&v9[16 * v103 + 24];
        sub_2741B82F0((*a3 + 40 * v104), (*a3 + 40 * *&v9[16 * v103 + 16]), *a3 + 40 * v105, v5);
        if (v102)
        {
        }

        if (v105 < v104)
        {
          goto LABEL_129;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = sub_2741B412C(v9);
        }

        if (v103 - 2 >= *(v9 + 2))
        {
          goto LABEL_130;
        }

        v106 = &v9[16 * v103];
        *v106 = v104;
        *(v106 + 1) = v105;
        v126 = v9;
        result = sub_2741B40A0(v6);
        v9 = v126;
        v103 = *(v126 + 2);
        if (v103 <= 1)
        {
        }
      }

      goto LABEL_140;
    }
  }

  v8 = 0;
  v9 = MEMORY[0x277D84F90];
  while (1)
  {
    v10 = v8;
    if (v8 + 1 < v7)
    {
      v117 = v7;
      v11 = *a3;
      sub_27409D4E4(*a3 + 40 * (v8 + 1), &v123);
      sub_27409D4E4(v11 + 40 * v8, v120);
      v114 = sub_2741B5948(&v123, v120);
      if (!v6)
      {
        __swift_destroy_boxed_opaque_existential_1Tm(v120);
        result = __swift_destroy_boxed_opaque_existential_1Tm(&v123);
        v12 = v8 + 2;
        v109 = v8;
        v13 = 40 * v8;
        v14 = v11 + 40 * v8 + 80;
        do
        {
          if (v117 == v12)
          {
            v28 = v117;
            goto LABEL_18;
          }

          v17 = v9;
          sub_27409D4E4(v14, &v123);
          sub_27409D4E4(v14 - 40, v120);
          v18 = v124;
          v19 = v125;
          __swift_project_boxed_opaque_existential_1(&v123, v124);
          (*(v19 + 16))(v18, v19);
          v20 = sub_2741C7ECC();
          v22 = v21;

          v24 = v121;
          v23 = v122;
          __swift_project_boxed_opaque_existential_1(v120, v121);
          (*(v23 + 16))(v24, v23);
          v5 = sub_2741C7ECC();
          v26 = v25;

          if (v20 == v5 && v22 == v26)
          {
            v15 = 0;
          }

          else
          {
            v15 = sub_2741C86DC();
          }

          __swift_destroy_boxed_opaque_existential_1Tm(v120);
          result = __swift_destroy_boxed_opaque_existential_1Tm(&v123);
          v16 = v114 ^ v15;
          ++v12;
          v14 += 40;
          v9 = v17;
          v6 = 0;
        }

        while ((v16 & 1) == 0);
        v28 = v12 - 1;
LABEL_18:
        v10 = v109;
        if (v114)
        {
          if (v28 < v109)
          {
            goto LABEL_135;
          }

          if (v109 < v28)
          {
            v29 = v28;
            v30 = 40 * v28 - 40;
            v118 = v28;
            v5 = v109;
            do
            {
              if (v5 != --v29)
              {
                v31 = *a3;
                if (!*a3)
                {
                  goto LABEL_139;
                }

                v32 = v31 + v13;
                v33 = v31 + v30;
                sub_27409D118((v31 + v13), &v123);
                v34 = *(v33 + 32);
                v35 = *(v33 + 16);
                *v32 = *v33;
                *(v32 + 16) = v35;
                *(v32 + 32) = v34;
                result = sub_27409D118(&v123, v33);
              }

              ++v5;
              v30 -= 40;
              v13 += 40;
            }

            while (v5 < v29);
            v28 = v118;
          }
        }

        goto LABEL_27;
      }

      __swift_destroy_boxed_opaque_existential_1Tm(v120);
      __swift_destroy_boxed_opaque_existential_1Tm(&v123);
    }

    v28 = v8 + 1;
LABEL_27:
    v36 = a3[1];
    if (v28 >= v36)
    {
      goto LABEL_36;
    }

    if (__OFSUB__(v28, v10))
    {
      goto LABEL_132;
    }

    if (v28 - v10 >= a4)
    {
LABEL_36:
      v8 = v28;
      if (v28 < v10)
      {
        goto LABEL_131;
      }

      goto LABEL_37;
    }

    if (__OFADD__(v10, a4))
    {
      goto LABEL_133;
    }

    if (v10 + a4 >= v36)
    {
      v37 = a3[1];
    }

    else
    {
      v37 = v10 + a4;
    }

    if (v37 < v10)
    {
LABEL_134:
      __break(1u);
LABEL_135:
      __break(1u);
      goto LABEL_136;
    }

    if (v28 == v37)
    {
      goto LABEL_36;
    }

    v107 = v9;
    v113 = v6;
    v85 = *a3;
    v86 = *a3 + 40 * v28;
    v119 = v28;
    v87 = v10 - v28;
    v111 = v37;
LABEL_89:
    v112 = v87;
    v88 = v87;
    v115 = v86;
LABEL_90:
    sub_27409D4E4(v86, &v123);
    sub_27409D4E4(v86 - 40, v120);
    v89 = v124;
    v90 = v125;
    __swift_project_boxed_opaque_existential_1(&v123, v124);
    (*(v90 + 16))(v89, v90);
    v91 = sub_2741C7ECC();
    v93 = v92;

    v94 = v121;
    v95 = v122;
    __swift_project_boxed_opaque_existential_1(v120, v121);
    (*(v95 + 16))(v94, v95);
    v5 = sub_2741C7ECC();
    v97 = v96;

    if (v91 != v5 || v93 != v97)
    {
      break;
    }

    __swift_destroy_boxed_opaque_existential_1Tm(v120);
    __swift_destroy_boxed_opaque_existential_1Tm(&v123);
LABEL_88:
    v86 = v115 + 40;
    v8 = v111;
    v87 = v112 - 1;
    if (++v119 != v111)
    {
      goto LABEL_89;
    }

    v6 = v113;
    v9 = v107;
    if (v111 < v10)
    {
      goto LABEL_131;
    }

LABEL_37:
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_274176EC4(0, *(v9 + 2) + 1, 1, v9);
      v9 = result;
    }

    v39 = *(v9 + 2);
    v38 = *(v9 + 3);
    v40 = v39 + 1;
    if (v39 >= v38 >> 1)
    {
      result = sub_274176EC4((v38 > 1), v39 + 1, 1, v9);
      v9 = result;
    }

    *(v9 + 2) = v40;
    v41 = &v9[16 * v39];
    *(v41 + 4) = v10;
    *(v41 + 5) = v8;
    v42 = *v110;
    if (!*v110)
    {
      goto LABEL_141;
    }

    if (v39)
    {
      while (2)
      {
        v43 = v40 - 1;
        if (v40 >= 4)
        {
          v48 = &v9[16 * v40 + 32];
          v49 = *(v48 - 64);
          v50 = *(v48 - 56);
          v54 = __OFSUB__(v50, v49);
          v51 = v50 - v49;
          if (v54)
          {
            goto LABEL_118;
          }

          v53 = *(v48 - 48);
          v52 = *(v48 - 40);
          v54 = __OFSUB__(v52, v53);
          v46 = v52 - v53;
          v47 = v54;
          if (v54)
          {
            goto LABEL_119;
          }

          v55 = &v9[16 * v40];
          v57 = *v55;
          v56 = *(v55 + 1);
          v54 = __OFSUB__(v56, v57);
          v58 = v56 - v57;
          if (v54)
          {
            goto LABEL_121;
          }

          v54 = __OFADD__(v46, v58);
          v59 = v46 + v58;
          if (v54)
          {
            goto LABEL_124;
          }

          if (v59 >= v51)
          {
            v77 = &v9[16 * v43 + 32];
            v79 = *v77;
            v78 = *(v77 + 1);
            v54 = __OFSUB__(v78, v79);
            v80 = v78 - v79;
            if (v54)
            {
              goto LABEL_128;
            }

            if (v46 < v80)
            {
              v43 = v40 - 2;
            }
          }

          else
          {
LABEL_56:
            if (v47)
            {
              goto LABEL_120;
            }

            v60 = &v9[16 * v40];
            v62 = *v60;
            v61 = *(v60 + 1);
            v63 = __OFSUB__(v61, v62);
            v64 = v61 - v62;
            v65 = v63;
            if (v63)
            {
              goto LABEL_123;
            }

            v66 = &v9[16 * v43 + 32];
            v68 = *v66;
            v67 = *(v66 + 1);
            v54 = __OFSUB__(v67, v68);
            v69 = v67 - v68;
            if (v54)
            {
              goto LABEL_126;
            }

            if (__OFADD__(v64, v69))
            {
              goto LABEL_127;
            }

            if (v64 + v69 < v46)
            {
              goto LABEL_70;
            }

            if (v46 < v69)
            {
              v43 = v40 - 2;
            }
          }
        }

        else
        {
          if (v40 == 3)
          {
            v44 = *(v9 + 4);
            v45 = *(v9 + 5);
            v54 = __OFSUB__(v45, v44);
            v46 = v45 - v44;
            v47 = v54;
            goto LABEL_56;
          }

          v70 = &v9[16 * v40];
          v72 = *v70;
          v71 = *(v70 + 1);
          v54 = __OFSUB__(v71, v72);
          v64 = v71 - v72;
          v65 = v54;
LABEL_70:
          if (v65)
          {
            goto LABEL_122;
          }

          v73 = &v9[16 * v43];
          v75 = *(v73 + 4);
          v74 = *(v73 + 5);
          v54 = __OFSUB__(v74, v75);
          v76 = v74 - v75;
          if (v54)
          {
            goto LABEL_125;
          }

          if (v76 < v64)
          {
            break;
          }
        }

        v81 = v43 - 1;
        if (v43 - 1 >= v40)
        {
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
          goto LABEL_134;
        }

        if (!*a3)
        {
          goto LABEL_138;
        }

        v82 = *&v9[16 * v81 + 32];
        v83 = *&v9[16 * v43 + 40];
        sub_2741B82F0((*a3 + 40 * v82), (*a3 + 40 * *&v9[16 * v43 + 32]), *a3 + 40 * v83, v42);
        if (v6)
        {
        }

        if (v83 < v82)
        {
          goto LABEL_116;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = sub_2741B412C(v9);
        }

        if (v81 >= *(v9 + 2))
        {
          goto LABEL_117;
        }

        v84 = &v9[16 * v81];
        *(v84 + 4) = v82;
        *(v84 + 5) = v83;
        v126 = v9;
        result = sub_2741B40A0(v43);
        v9 = v126;
        v40 = *(v126 + 2);
        if (v40 <= 1)
        {
          break;
        }

        continue;
      }
    }

    v7 = a3[1];
    if (v8 >= v7)
    {
      goto LABEL_102;
    }
  }

  v99 = sub_2741C86DC();

  __swift_destroy_boxed_opaque_existential_1Tm(v120);
  result = __swift_destroy_boxed_opaque_existential_1Tm(&v123);
  if ((v99 & 1) == 0)
  {
    goto LABEL_88;
  }

  if (v85)
  {
    sub_27409D118(v86, &v123);
    v100 = *(v86 - 24);
    *v86 = *(v86 - 40);
    *(v86 + 16) = v100;
    *(v86 + 32) = *(v86 - 8);
    sub_27409D118(&v123, v86 - 40);
    v86 -= 40;
    if (__CFADD__(v88++, 1))
    {
      goto LABEL_88;
    }

    goto LABEL_90;
  }

  __break(1u);
LABEL_138:
  __break(1u);
LABEL_139:
  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
  return result;
}

uint64_t sub_2741B82F0(char *__src, char *a2, unint64_t a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v7 = a2;
  v8 = a2 - __src;
  v9 = (a2 - __src) / 40;
  v10 = a3 - a2;
  v11 = (a3 - a2) / 40;
  if (v9 >= v11)
  {
    if (a4 != a2 || &a2[40 * v11] <= a4)
    {
      memmove(a4, a2, 40 * v11);
      v7 = a2;
    }

    v62 = &v4[40 * v11];
    if (v10 >= 40 && v7 > __src)
    {
      v30 = v7;
      v55 = v4;
      do
      {
        __dst = v30;
        v31 = (v30 - 40);
        v32 = (v62 - 40);
        v5 -= 40;
        while (1)
        {
          sub_27409D4E4(v32, v59);
          v35 = v31;
          sub_27409D4E4(v31, v56);
          v36 = v60;
          v37 = v61;
          __swift_project_boxed_opaque_existential_1(v59, v60);
          (*(v37 + 16))(v36, v37);
          v38 = sub_2741C7ECC();
          v40 = v39;

          v42 = v57;
          v41 = v58;
          __swift_project_boxed_opaque_existential_1(v56, v57);
          (*(v41 + 16))(v42, v41);
          v43 = sub_2741C7ECC();
          v45 = v44;

          v46 = v38 == v43 && v40 == v45;
          v47 = v46 ? 0 : sub_2741C86DC();

          __swift_destroy_boxed_opaque_existential_1Tm(v56);
          __swift_destroy_boxed_opaque_existential_1Tm(v59);
          if (v47)
          {
            break;
          }

          if (v5 + 40 != v32 + 40)
          {
            v48 = *v32;
            v49 = *(v32 + 16);
            *(v5 + 32) = *(v32 + 32);
            *v5 = v48;
            *(v5 + 16) = v49;
          }

          v33 = v32 - 40;
          v5 -= 40;
          v34 = v32 > v55;
          v32 -= 40;
          v31 = v35;
          if (!v34)
          {
            v62 = (v33 + 40);
            v7 = __dst;
            v4 = v55;
            goto LABEL_43;
          }
        }

        v7 = v35;
        if ((v5 + 40) != __dst)
        {
          v50 = *v35;
          v51 = *(v35 + 1);
          *(v5 + 32) = *(v35 + 4);
          *v5 = v50;
          *(v5 + 16) = v51;
        }

        v62 = (v32 + 40);
        v4 = v55;
        if (v32 + 40 <= v55)
        {
          break;
        }

        v30 = v7;
      }

      while (v7 > __src);
      v62 = (v32 + 40);
    }
  }

  else
  {
    if (a4 != __src || &__src[40 * v9] <= a4)
    {
      memmove(a4, __src, 40 * v9);
      v7 = a2;
    }

    v62 = &v4[40 * v9];
    if (v8 >= 40 && v7 < v5)
    {
      while (1)
      {
        v13 = v7;
        sub_27409D4E4(v7, v59);
        sub_27409D4E4(v4, v56);
        v14 = v60;
        v15 = v61;
        __swift_project_boxed_opaque_existential_1(v59, v60);
        (*(v15 + 16))(v14, v15);
        v16 = sub_2741C7ECC();
        v18 = v17;

        v19 = v57;
        v20 = v58;
        __swift_project_boxed_opaque_existential_1(v56, v57);
        (*(v20 + 16))(v19, v20);
        v21 = sub_2741C7ECC();
        v23 = v22;

        v24 = v16 == v21 && v18 == v23;
        if (v24)
        {
          break;
        }

        v25 = sub_2741C86DC();

        __swift_destroy_boxed_opaque_existential_1Tm(v56);
        __swift_destroy_boxed_opaque_existential_1Tm(v59);
        if ((v25 & 1) == 0)
        {
          goto LABEL_15;
        }

        v26 = v13;
        v7 = v13 + 40;
        if (__src != v13)
        {
          goto LABEL_16;
        }

LABEL_17:
        __src += 40;
        if (v4 >= v62 || v7 >= v5)
        {
          goto LABEL_19;
        }
      }

      __swift_destroy_boxed_opaque_existential_1Tm(v56);
      __swift_destroy_boxed_opaque_existential_1Tm(v59);
LABEL_15:
      v26 = v4;
      v24 = __src == v4;
      v4 += 40;
      v7 = v13;
      if (v24)
      {
        goto LABEL_17;
      }

LABEL_16:
      v27 = *v26;
      v28 = *(v26 + 1);
      *(__src + 4) = *(v26 + 4);
      *__src = v27;
      *(__src + 1) = v28;
      goto LABEL_17;
    }

LABEL_19:
    v7 = __src;
  }

LABEL_43:
  v52 = (v62 - v4) / 40;
  if (v7 != v4 || v7 >= &v4[40 * v52])
  {
    memmove(v7, v4, 40 * v52);
  }

  return 1;
}

uint64_t sub_2741B8794(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2741B87E4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093B520, &qword_2741D8510);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);
  v7 = *(v0 + v5);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_2741B88C8(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093B520, &qword_2741D8510) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_27409D648;

  return sub_2741B53BC(a1, v6, v7, v1 + v5, v8);
}

uint64_t sub_2741B89F4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093B520, &qword_2741D8510);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_2741B8A88(uint64_t a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093B520, &qword_2741D8510) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_2741B55C4(a1, v4);
}

uint64_t sub_2741B8B0C(uint64_t a1)
{
  v3 = sub_2741C6AFC();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938570, &qword_2741D1630);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = (&v26 - v13);
  swift_beginAccess();
  v15 = *(v1 + 16);
  if (*(v15 + 16) && (v16 = sub_274125ECC(2), (v17 & 1) != 0))
  {
    sub_27409D4E4(*(v15 + 56) + 40 * v16, &v27);
  }

  else
  {
    v29 = 0;
    v27 = 0u;
    v28 = 0u;
  }

  swift_endAccess();
  if (!*(&v28 + 1))
  {
    sub_27409D420(&v27, &qword_280939AF8, &qword_2741D11A0);
    v30 = 0u;
    v31 = 0u;
    v32 = 0;
    goto LABEL_12;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A230, &unk_2741D3B10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A6D0, &unk_2741D8570);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v32 = 0;
    v30 = 0u;
    v31 = 0u;
    goto LABEL_12;
  }

  if (!*(&v31 + 1))
  {
LABEL_12:
    sub_27409D420(&v30, &qword_28093A6C8, &unk_2741D6570);
    v33 = 0;
    v34 = 0xE000000000000000;
    sub_2741C856C();
    MEMORY[0x2743E5FB0](0xD000000000000018, 0x80000002741E3AE0);
    LOBYTE(v30) = 2;
    sub_2741C862C();
    sub_2740CB218(v33, v34, 0xD00000000000001CLL, 0x80000002741E3CC0);
  }

  sub_27409D118(&v30, &v33);
  *&v30 = 0;
  *(&v30 + 1) = 0xE000000000000000;
  sub_2741C856C();

  *&v30 = 0xD000000000000014;
  *(&v30 + 1) = 0x80000002741E3CE0;
  sub_2740A6D94(a1, v14, &qword_280938570, &qword_2741D1630);
  v18 = type metadata accessor for KnownNetwork();
  if ((*(*(v18 - 8) + 48))(v14, 1, v18) == 1)
  {
    sub_27409D420(v14, &qword_280938570, &qword_2741D1630);
    v19 = 0xE300000000000000;
    v20 = 7104878;
  }

  else
  {
    v20 = *v14;
    v19 = v14[1];

    sub_27409D050(v14);
  }

  MEMORY[0x2743E5FB0](v20, v19);

  v22 = v30;
  if (qword_280937360 != -1)
  {
    swift_once();
  }

  v23 = __swift_project_value_buffer(v3, qword_280945DD8);
  (*(v4 + 16))(v7, v23, v3);
  sub_2740CA9CC(0x5D5355544154535BLL, 0xE800000000000000, v22, *(&v22 + 1));

  (*(v4 + 8))(v7, v3);
  sub_2740A6D94(a1, v12, &qword_280938570, &qword_2741D1630);
  v24 = v35;
  v25 = v36;
  __swift_mutable_project_boxed_opaque_existential_1(&v33, v35);
  (*(v25 + 48))(v12, v24, v25);
  return __swift_destroy_boxed_opaque_existential_1Tm(&v33);
}

uint64_t sub_2741B8FB8(uint64_t a1)
{
  v3 = sub_2741C6AFC();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v8 = *(v1 + 16);
  if (*(v8 + 16) && (v9 = sub_274125ECC(0), (v10 & 1) != 0))
  {
    sub_27409D4E4(*(v8 + 56) + 40 * v9, &v19);
  }

  else
  {
    v21 = 0;
    v19 = 0u;
    v20 = 0u;
  }

  swift_endAccess();
  if (!*(&v20 + 1))
  {
    sub_27409D420(&v19, &qword_280939AF8, &qword_2741D11A0);
    v22 = 0u;
    v23 = 0u;
    v24 = 0;
    goto LABEL_13;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A230, &unk_2741D3B10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093B530, &qword_2741D8588);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v24 = 0;
    v22 = 0u;
    v23 = 0u;
    goto LABEL_13;
  }

  if (!*(&v23 + 1))
  {
LABEL_13:
    sub_27409D420(&v22, &qword_280938E10, &qword_2741D8580);
    v25 = 0;
    v26 = 0xE000000000000000;
    sub_2741C856C();
    MEMORY[0x2743E5FB0](0xD000000000000018, 0x80000002741E3AE0);
    LOBYTE(v22) = 0;
    sub_2741C862C();
    sub_2740CB218(v25, v26, 0xD000000000000013, 0x80000002741E3C40);
  }

  sub_27409D118(&v22, &v25);
  *&v22 = 0;
  *(&v22 + 1) = 0xE000000000000000;
  sub_2741C856C();

  strcpy(&v22, "scanStatus='");
  BYTE13(v22) = 0;
  HIWORD(v22) = -5120;
  v11 = sub_2740E3040(a1);
  MEMORY[0x2743E5FB0](v11);

  MEMORY[0x2743E5FB0](10272, 0xE200000000000000);
  LOBYTE(v19) = a1;
  v12 = sub_2741C86CC();
  MEMORY[0x2743E5FB0](v12);

  MEMORY[0x2743E5FB0](10025, 0xE200000000000000);
  v13 = v22;
  if (qword_280937360 != -1)
  {
    swift_once();
  }

  v14 = __swift_project_value_buffer(v3, qword_280945DD8);
  (*(v4 + 16))(v7, v14, v3);
  sub_2740CA9CC(0x5D4E4143535BLL, 0xE600000000000000, v13, *(&v13 + 1));

  (*(v4 + 8))(v7, v3);
  v15 = v27;
  v16 = v28;
  __swift_mutable_project_boxed_opaque_existential_1(&v25, v27);
  (*(v16 + 24))(a1, v15, v16);
  return __swift_destroy_boxed_opaque_existential_1Tm(&v25);
}

uint64_t sub_2741B9380(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_2741C6AFC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v11 = *(v2 + 16);
  if (*(v11 + 16) && (v12 = sub_274125ECC(1), (v13 & 1) != 0))
  {
    sub_27409D4E4(*(v11 + 56) + 40 * v12, &v52);
  }

  else
  {
    *&v54 = 0;
    v52 = 0u;
    v53 = 0u;
  }

  swift_endAccess();
  if (!*(&v53 + 1))
  {
    sub_27409D420(&v52, &qword_280939AF8, &qword_2741D11A0);
    v61 = 0u;
    v62 = 0u;
    *&v63 = 0;
    goto LABEL_11;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A230, &unk_2741D3B10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A238, &qword_2741D4780);
  if ((swift_dynamicCast() & 1) == 0)
  {
    *&v63 = 0;
    v61 = 0u;
    v62 = 0u;
    goto LABEL_11;
  }

  if (!*(&v62 + 1))
  {
LABEL_11:
    sub_27409D420(&v61, &qword_28093A228, &unk_2741D4770);
    v18 = 4;
    goto LABEL_12;
  }

  sub_27409D118(&v61, &v52);
  __swift_project_boxed_opaque_existential_1(&v52, *(&v53 + 1));
  v14 = sub_2741BC2B4(&qword_28093A3E0, type metadata accessor for AssociationState);
  v47 = v3;
  v15 = *(v14 + 16);
  v16 = type metadata accessor for AssociationState();
  v17 = v15(v16, v14);
  v3 = v47;
  v18 = v17;
  __swift_destroy_boxed_opaque_existential_1Tm(&v52);
LABEL_12:
  swift_beginAccess();
  v19 = *(v3 + 16);
  if (*(v19 + 16) && (v20 = sub_274125ECC(2), (v21 & 1) != 0))
  {
    sub_27409D4E4(*(v19 + 56) + 40 * v20, &v61);
  }

  else
  {
    *&v63 = 0;
    v61 = 0u;
    v62 = 0u;
  }

  swift_endAccess();
  if (!*(&v62 + 1))
  {
    sub_27409D420(&v61, &qword_280939AF8, &qword_2741D11A0);
    v52 = 0u;
    v53 = 0u;
    *&v54 = 0;
    goto LABEL_27;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A230, &unk_2741D3B10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A6D0, &unk_2741D8570);
  if ((swift_dynamicCast() & 1) == 0)
  {
    *&v54 = 0;
    v52 = 0u;
    v53 = 0u;
    goto LABEL_27;
  }

  if (!*(&v53 + 1))
  {
LABEL_27:
    sub_27409D420(&v52, &qword_28093A6C8, &unk_2741D6570);
    *&v52 = 0;
    *(&v52 + 1) = 0xE000000000000000;
    sub_2741C856C();
    MEMORY[0x2743E5FB0](0xD000000000000018, 0x80000002741E3AE0);
    LOBYTE(v61) = 2;
    sub_2741C862C();
    sub_2740CB218(v52, *(&v52 + 1), 0xD00000000000002BLL, 0x80000002741E3B20);
  }

  sub_27409D118(&v52, v68);
  if ((v18 | 2) == 3)
  {
    __swift_project_boxed_opaque_existential_1(v68, v69);
    v22 = sub_2741BC2B4(&qword_28093A6D8, type metadata accessor for CurrentNetworkState);
    v23 = *(v22 + 16);
    v24 = type metadata accessor for CurrentNetworkState();
    v23(&v61, v24, v22);
    if (*(&v61 + 1))
    {
      v56 = v65;
      v57 = v66;
      v58 = v67;
      v52 = v61;
      v53 = v62;
      v54 = v63;
      v55 = v64;
      sub_2740A6D94(a1, v50, &qword_280938340, &qword_2741D1660);
      if (*(&v50[0] + 1))
      {
        v65 = v50[4];
        v66 = v50[5];
        v67 = v51;
        v61 = v50[0];
        v62 = v50[1];
        v63 = v50[2];
        v64 = v50[3];
        *&v50[0] = 0;
        *(&v50[0] + 1) = 0xE000000000000000;
        sub_2741C856C();
        MEMORY[0x2743E5FB0](0xD000000000000024, 0x80000002741E3B70);
        v25 = sub_27409DCD8();
        MEMORY[0x2743E5FB0](v25);

        MEMORY[0x2743E5FB0](0xD000000000000013, 0x80000002741E3BA0);
        v26 = sub_27409DCD8();
        MEMORY[0x2743E5FB0](v26);

        MEMORY[0x2743E5FB0](0xD00000000000001ALL, 0x80000002741E3BC0);
        v27 = v50[0];
        if (qword_280937360 != -1)
        {
          swift_once();
        }

        v28 = __swift_project_value_buffer(v6, qword_280945DD8);
        (*(v7 + 16))(v10, v28, v6);
        sub_2740CA9CC(0x5D5355544154535BLL, 0xE800000000000000, v27, *(&v27 + 1));

        (*(v7 + 8))(v10, v6);
        sub_2740ACB2C(&v61);
        sub_2740ACB2C(&v52);
      }

      else
      {
        sub_2740ACB2C(&v52);
        sub_27409D420(v50, &qword_280938340, &qword_2741D1660);
      }
    }

    else
    {
      sub_27409D420(&v61, &qword_280938340, &qword_2741D1660);
    }

    return __swift_destroy_boxed_opaque_existential_1Tm(v68);
  }

  v47 = a2;
  *&v52 = 0;
  *(&v52 + 1) = 0xE000000000000000;
  sub_2741C856C();

  *&v50[0] = 0xD00000000000001DLL;
  *(&v50[0] + 1) = 0x80000002741E3B50;
  sub_2740A6D94(a1, &v52, &qword_280938340, &qword_2741D1660);
  if (*(&v52 + 1))
  {
    v30 = sub_27409DCD8();
    v32 = v31;
    sub_2740ACB2C(&v52);
  }

  else
  {
    v30 = 7104878;
    sub_27409D420(&v52, &qword_280938340, &qword_2741D1660);
    v32 = 0xE300000000000000;
  }

  MEMORY[0x2743E5FB0](v30, v32);

  MEMORY[0x2743E5FB0](0x27206D6F72662027, 0xE800000000000000);
  __swift_project_boxed_opaque_existential_1(v68, v69);
  v33 = sub_2741BC2B4(&qword_28093A6D8, type metadata accessor for CurrentNetworkState);
  v34 = *(v33 + 16);
  v44 = type metadata accessor for CurrentNetworkState();
  v45 = v34;
  v46 = v33;
  v34(&v52, v44, v33);
  if (*(&v52 + 1))
  {
    sub_2740ACAC8(&v52, &v61);
    sub_27409D420(&v52, &qword_280938340, &qword_2741D1660);
    v35 = sub_27409DCD8();
    v37 = v36;
    sub_2740ACB2C(&v61);
  }

  else
  {
    v35 = 7104878;
    sub_27409D420(&v52, &qword_280938340, &qword_2741D1660);
    v37 = 0xE300000000000000;
  }

  MEMORY[0x2743E5FB0](v35, v37);

  MEMORY[0x2743E5FB0](39, 0xE100000000000000);
  v38 = v50[0];
  if (qword_280937360 != -1)
  {
    swift_once();
  }

  v39 = __swift_project_value_buffer(v6, qword_280945DD8);
  (*(v7 + 16))(v10, v39, v6);
  sub_2740CA9CC(0x5D5355544154535BLL, 0xE800000000000000, v38, *(&v38 + 1));

  (*(v7 + 8))(v10, v6);
  __swift_project_boxed_opaque_existential_1(v68, v69);
  v45(&v61, v44, v46);
  sub_2740A6D94(&v61, &v52, &qword_280938340, &qword_2741D1660);
  sub_2740A6D94(a1, v59, &qword_280938340, &qword_2741D1660);
  v40 = v47;
  if (!*(&v52 + 1))
  {
    sub_27409D420(&v61, &qword_280938340, &qword_2741D1660);
    if (!*(&v59[0] + 1))
    {
      goto LABEL_43;
    }

    goto LABEL_45;
  }

  sub_2740A6D94(&v52, v50, &qword_280938340, &qword_2741D1660);
  if (!*(&v59[0] + 1))
  {
    sub_27409D420(&v61, &qword_280938340, &qword_2741D1660);
    sub_2740ACB2C(v50);
LABEL_45:
    sub_27409D420(&v52, &qword_280939B80, &qword_2741D4800);
LABEL_46:
    sub_2740A6D94(a1, &v52, &qword_280938340, &qword_2741D1660);
    v41 = v69;
    v42 = v70;
    __swift_mutable_project_boxed_opaque_existential_1(v68, v69);
    (*(v42 + 24))(&v52, v41, v42);
    goto LABEL_47;
  }

  v48[4] = v59[4];
  v48[5] = v59[5];
  v49 = v60;
  v48[0] = v59[0];
  v48[1] = v59[1];
  v48[2] = v59[2];
  v48[3] = v59[3];
  if (v50[0] != v59[0])
  {
    v43 = sub_2741C86DC();
    sub_27409D420(&v61, &qword_280938340, &qword_2741D1660);
    sub_2740ACB2C(v48);
    sub_2740ACB2C(v50);
    sub_27409D420(&v52, &qword_280938340, &qword_2741D1660);
    if (v43)
    {
      goto LABEL_47;
    }

    goto LABEL_46;
  }

  sub_27409D420(&v61, &qword_280938340, &qword_2741D1660);
  sub_2740ACB2C(v48);
  sub_2740ACB2C(v50);
LABEL_43:
  sub_27409D420(&v52, &qword_280938340, &qword_2741D1660);
LABEL_47:
  sub_2741BA454(v40);
  return __swift_destroy_boxed_opaque_existential_1Tm(v68);
}

uint64_t sub_2741B9F04(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_2741C6AFC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v11 = *(v2 + 16);
  if (*(v11 + 16) && (v12 = sub_274125ECC(1), (v13 & 1) != 0))
  {
    sub_27409D4E4(*(v11 + 56) + 40 * v12, &v36);
  }

  else
  {
    v38 = 0;
    v37 = 0u;
    v36 = 0u;
  }

  swift_endAccess();
  if (!*(&v37 + 1))
  {
    sub_27409D420(&v36, &qword_280939AF8, &qword_2741D11A0);
    v33 = 0u;
    v34 = 0u;
    v35 = 0;
    return sub_27409D420(&v33, &qword_28093A228, &unk_2741D4770);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A230, &unk_2741D3B10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A238, &qword_2741D4780);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v35 = 0;
    v33 = 0u;
    v34 = 0u;
    return sub_27409D420(&v33, &qword_28093A228, &unk_2741D4770);
  }

  if (!*(&v34 + 1))
  {
    return sub_27409D420(&v33, &qword_28093A228, &unk_2741D4770);
  }

  v29 = a2;
  sub_27409D118(&v33, &v36);
  *&v33 = 0;
  *(&v33 + 1) = 0xE000000000000000;
  sub_2741C856C();
  MEMORY[0x2743E5FB0](0xD000000000000011, 0x80000002741E3C20);
  __swift_project_boxed_opaque_existential_1(&v36, *(&v37 + 1));
  v14 = sub_2741BC2B4(&qword_28093A3E0, type metadata accessor for AssociationState);
  v15 = *(v14 + 16);
  v16 = type metadata accessor for AssociationState();
  LOBYTE(v30) = v15(v16, v14);
  sub_2741C862C();
  MEMORY[0x2743E5FB0](540945696, 0xE400000000000000);
  LOBYTE(v30) = a1;
  sub_2741C862C();
  v17 = v33;
  if (qword_280937360 != -1)
  {
    swift_once();
  }

  v18 = __swift_project_value_buffer(v6, qword_280945DD8);
  (*(v7 + 16))(v10, v18, v6);
  sub_2740CA9CC(0x5D5355544154535BLL, 0xE800000000000000, v17, *(&v17 + 1));

  (*(v7 + 8))(v10, v6);
  v19 = *(&v37 + 1);
  v20 = v38;
  __swift_mutable_project_boxed_opaque_existential_1(&v36, *(&v37 + 1));
  (*(v20 + 24))(a1, v19, v20);
  sub_2740A6D94(v29, &v33, &qword_2809395D8, &qword_2741CFF78);
  v21 = *(&v37 + 1);
  v22 = v38;
  __swift_mutable_project_boxed_opaque_existential_1(&v36, *(&v37 + 1));
  (*(v22 + 48))(&v33, v21, v22);
  swift_beginAccess();
  v23 = *(v3 + 16);
  if (*(v23 + 16) && (v24 = sub_274125ECC(2), (v25 & 1) != 0))
  {
    sub_27409D4E4(*(v23 + 56) + 40 * v24, &v33);
  }

  else
  {
    v35 = 0;
    v33 = 0u;
    v34 = 0u;
  }

  swift_endAccess();
  if (!*(&v34 + 1))
  {
    sub_27409D420(&v33, &qword_280939AF8, &qword_2741D11A0);
    v30 = 0u;
    v31 = 0u;
    v32 = 0;
    goto LABEL_23;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A6D0, &unk_2741D8570);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v32 = 0;
    v30 = 0u;
    v31 = 0u;
    goto LABEL_23;
  }

  if (!*(&v31 + 1))
  {
LABEL_23:
    sub_27409D420(&v30, &qword_28093A6C8, &unk_2741D6570);
    return __swift_destroy_boxed_opaque_existential_1Tm(&v36);
  }

  sub_27409D118(&v30, &v33);
  v27 = *(&v34 + 1);
  v28 = v35;
  __swift_mutable_project_boxed_opaque_existential_1(&v33, *(&v34 + 1));
  (*(v28 + 192))(0, v27, v28);
  __swift_destroy_boxed_opaque_existential_1Tm(&v33);
  return __swift_destroy_boxed_opaque_existential_1Tm(&v36);
}

uint64_t sub_2741BA454(uint64_t a1)
{
  v3 = sub_2741C6AFC();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v8 = *(v1 + 16);
  if (*(v8 + 16) && (v9 = sub_274125ECC(2), (v10 & 1) != 0))
  {
    sub_27409D4E4(*(v8 + 56) + 40 * v9, &v35);
  }

  else
  {
    v37 = 0;
    v35 = 0u;
    v36 = 0u;
  }

  swift_endAccess();
  if (!*(&v36 + 1))
  {
    sub_27409D420(&v35, &qword_280939AF8, &qword_2741D11A0);
    v30 = 0u;
    v31 = 0u;
    v32 = 0;
    goto LABEL_14;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A230, &unk_2741D3B10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A6D0, &unk_2741D8570);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v32 = 0;
    v30 = 0u;
    v31 = 0u;
    goto LABEL_14;
  }

  if (!*(&v31 + 1))
  {
LABEL_14:
    sub_27409D420(&v30, &qword_28093A6C8, &unk_2741D6570);
    *&v30 = 0;
    *(&v30 + 1) = 0xE000000000000000;
    sub_2741C856C();
    MEMORY[0x2743E5FB0](0xD000000000000018, 0x80000002741E3AE0);
    LOBYTE(v35) = 2;
    sub_2741C862C();
    sub_2740CB218(v30, *(&v30 + 1), 0xD00000000000001CLL, 0x80000002741E3BE0);
  }

  sub_27409D118(&v30, v38);
  __swift_project_boxed_opaque_existential_1(v38, v39);
  v11 = sub_2741BC2B4(&qword_28093A6D8, type metadata accessor for CurrentNetworkState);
  v12 = *(v11 + 88);
  v25 = type metadata accessor for CurrentNetworkState();
  v26 = v12;
  v12(&v35, v25, v11);
  sub_2740A6D94(&v35, &v30, &qword_280938340, &qword_2741D1660);
  sub_2740A6D94(a1, v33, &qword_280938340, &qword_2741D1660);
  if (!*(&v30 + 1))
  {
    sub_27409D420(&v35, &qword_280938340, &qword_2741D1660);
    if (!*(&v33[0] + 1))
    {
      goto LABEL_16;
    }

    goto LABEL_18;
  }

  sub_2740A6D94(&v30, v29, &qword_280938340, &qword_2741D1660);
  if (!*(&v33[0] + 1))
  {
    sub_27409D420(&v35, &qword_280938340, &qword_2741D1660);
    sub_2740ACB2C(v29);
LABEL_18:
    sub_27409D420(&v30, &qword_280939B80, &qword_2741D4800);
    goto LABEL_19;
  }

  v27[4] = v33[4];
  v27[5] = v33[5];
  v28 = v34;
  v27[0] = v33[0];
  v27[1] = v33[1];
  v27[2] = v33[2];
  v27[3] = v33[3];
  if (v29[0] != v33[0])
  {
    v24 = sub_2741C86DC();
    sub_27409D420(&v35, &qword_280938340, &qword_2741D1660);
    sub_2740ACB2C(v27);
    sub_2740ACB2C(v29);
    sub_27409D420(&v30, &qword_280938340, &qword_2741D1660);
    if (v24)
    {
      return __swift_destroy_boxed_opaque_existential_1Tm(v38);
    }

LABEL_19:
    *&v30 = 0;
    *(&v30 + 1) = 0xE000000000000000;
    sub_2741C856C();

    *&v29[0] = 0xD00000000000001CLL;
    *(&v29[0] + 1) = 0x80000002741E3C00;
    sub_2740A6D94(a1, &v30, &qword_280938340, &qword_2741D1660);
    if (*(&v30 + 1))
    {
      v14 = sub_27409DCD8();
      v16 = v15;
      sub_2740ACB2C(&v30);
    }

    else
    {
      v14 = 7104878;
      sub_27409D420(&v30, &qword_280938340, &qword_2741D1660);
      v16 = 0xE300000000000000;
    }

    MEMORY[0x2743E5FB0](v14, v16);

    MEMORY[0x2743E5FB0](0x27206D6F72662027, 0xE800000000000000);
    __swift_project_boxed_opaque_existential_1(v38, v39);
    v26(&v30, v25, v11);
    if (*(&v30 + 1))
    {
      sub_2740ACAC8(&v30, &v35);
      sub_27409D420(&v30, &qword_280938340, &qword_2741D1660);
      v17 = sub_27409DCD8();
      v19 = v18;
      sub_2740ACB2C(&v35);
    }

    else
    {
      v17 = 7104878;
      sub_27409D420(&v30, &qword_280938340, &qword_2741D1660);
      v19 = 0xE300000000000000;
    }

    MEMORY[0x2743E5FB0](v17, v19);

    MEMORY[0x2743E5FB0](39, 0xE100000000000000);
    v20 = v29[0];
    if (qword_280937360 != -1)
    {
      swift_once();
    }

    v21 = __swift_project_value_buffer(v3, qword_280945DD8);
    (*(v4 + 16))(v7, v21, v3);
    sub_2740CA9CC(0x5D5355544154535BLL, 0xE800000000000000, v20, *(&v20 + 1));

    (*(v4 + 8))(v7, v3);
    sub_2740A6D94(a1, &v30, &qword_280938340, &qword_2741D1660);
    v22 = v39;
    v23 = v40;
    __swift_mutable_project_boxed_opaque_existential_1(v38, v39);
    (*(v23 + 96))(&v30, v22, v23);
    return __swift_destroy_boxed_opaque_existential_1Tm(v38);
  }

  sub_27409D420(&v35, &qword_280938340, &qword_2741D1660);
  sub_2740ACB2C(v27);
  sub_2740ACB2C(v29);
LABEL_16:
  sub_27409D420(&v30, &qword_280938340, &qword_2741D1660);
  return __swift_destroy_boxed_opaque_existential_1Tm(v38);
}

uint64_t sub_2741BAB64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  swift_beginAccess();
  v5 = *(v2 + 16);
  if (*(v5 + 16) && (v6 = sub_274125ECC(a1), (v7 & 1) != 0))
  {
    sub_27409D4E4(*(v5 + 56) + 40 * v6, a2);
  }

  else
  {
    *(a2 + 32) = 0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  return swift_endAccess();
}

uint64_t sub_2741BABF0(uint64_t a1, char a2)
{
  v5 = sub_2741C6AFC();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v10 = *(v2 + 16);
  if (*(v10 + 16) && (v11 = sub_274125ECC(2), (v12 & 1) != 0))
  {
    sub_27409D4E4(*(v10 + 56) + 40 * v11, &v27);
  }

  else
  {
    v29 = 0;
    v27 = 0u;
    v28 = 0u;
  }

  swift_endAccess();
  if (!*(&v28 + 1))
  {
    sub_27409D420(&v27, &qword_280939AF8, &qword_2741D11A0);
    v30 = 0u;
    v31 = 0u;
    v32 = 0;
    goto LABEL_13;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A230, &unk_2741D3B10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A6D0, &unk_2741D8570);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v32 = 0;
    v30 = 0u;
    v31 = 0u;
    goto LABEL_13;
  }

  if (!*(&v31 + 1))
  {
LABEL_13:
    sub_27409D420(&v30, &qword_28093A6C8, &unk_2741D6570);
    v33 = 0;
    v34 = 0xE000000000000000;
    sub_2741C856C();
    MEMORY[0x2743E5FB0](0xD000000000000018, 0x80000002741E3AE0);
    LOBYTE(v30) = 2;
    sub_2741C862C();
    sub_2740CB218(v33, v34, 0xD000000000000013, 0x80000002741E3D20);
  }

  sub_27409D118(&v30, &v33);
  __swift_project_boxed_opaque_existential_1(&v33, v35);
  v13 = sub_2741BC2B4(&qword_28093A6D8, type metadata accessor for CurrentNetworkState);
  v14 = *(v13 + 64);
  v15 = type metadata accessor for CurrentNetworkState();
  v16 = v14(v15, v13);
  if ((v17 & 1) == 0)
  {
    if ((a2 & 1) == 0 && v16 == a1)
    {
      return __swift_destroy_boxed_opaque_existential_1Tm(&v33);
    }

    v21 = v35;
    v22 = v36;
    __swift_mutable_project_boxed_opaque_existential_1(&v33, v35);
    (*(v22 + 72))(a1, a2 & 1, v21, v22);
    if (a2)
    {
      return __swift_destroy_boxed_opaque_existential_1Tm(&v33);
    }

    goto LABEL_17;
  }

  if ((a2 & 1) == 0)
  {
    v18 = v35;
    v19 = v36;
    __swift_mutable_project_boxed_opaque_existential_1(&v33, v35);
    (*(v19 + 72))(a1, a2 & 1, v18, v19);
LABEL_17:
    *&v30 = 0x4C746E6572727563;
    *(&v30 + 1) = 0xEB000000003D4D51;
    v23 = sub_27416FDE8(a1);
    MEMORY[0x2743E5FB0](v23);

    v24 = v30;
    if (qword_280937360 != -1)
    {
      swift_once();
    }

    v25 = __swift_project_value_buffer(v5, qword_280945DD8);
    (*(v6 + 16))(v9, v25, v5);
    sub_2740CA9CC(0x5D5355544154535BLL, 0xE800000000000000, v24, *(&v24 + 1));

    (*(v6 + 8))(v9, v5);
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(&v33);
}

uint64_t sub_2741BB034(char a1)
{
  v3 = sub_2741C6AFC();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v8 = *(v1 + 16);
  if (*(v8 + 16) && (v9 = sub_274125ECC(2), (v10 & 1) != 0))
  {
    sub_27409D4E4(*(v8 + 56) + 40 * v9, &v24);
  }

  else
  {
    v26 = 0;
    v24 = 0u;
    v25 = 0u;
  }

  swift_endAccess();
  if (!*(&v25 + 1))
  {
    sub_27409D420(&v24, &qword_280939AF8, &qword_2741D11A0);
    v27 = 0u;
    v28 = 0u;
    v29 = 0;
    goto LABEL_21;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A230, &unk_2741D3B10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A6D0, &unk_2741D8570);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v29 = 0;
    v27 = 0u;
    v28 = 0u;
    goto LABEL_21;
  }

  if (!*(&v28 + 1))
  {
LABEL_21:
    sub_27409D420(&v27, &qword_28093A6C8, &unk_2741D6570);
    v30 = 0;
    v31 = 0xE000000000000000;
    sub_2741C856C();
    MEMORY[0x2743E5FB0](0xD000000000000018, 0x80000002741E3AE0);
    LOBYTE(v27) = 2;
    sub_2741C862C();
    sub_2740CB218(v30, v31, 0xD000000000000017, 0x80000002741E3B00);
  }

  sub_27409D118(&v27, &v30);
  __swift_project_boxed_opaque_existential_1(&v30, v32);
  v11 = sub_2741BC2B4(&qword_28093A6D8, type metadata accessor for CurrentNetworkState);
  v12 = *(v11 + 184);
  v13 = type metadata accessor for CurrentNetworkState();
  if ((v12(v13, v11) & 1) != (a1 & 1))
  {
    v14 = v32;
    v15 = v33;
    __swift_mutable_project_boxed_opaque_existential_1(&v30, v32);
    v17 = a1 & 1;
    v16 = (a1 & 1) == 0;
    if (a1)
    {
      v18 = 1702195828;
    }

    else
    {
      v18 = 0x65736C6166;
    }

    if (v16)
    {
      v19 = 0xE500000000000000;
    }

    else
    {
      v19 = 0xE400000000000000;
    }

    (*(v15 + 192))(v17, v14, v15);
    *&v27 = 0;
    *(&v27 + 1) = 0xE000000000000000;
    sub_2741C856C();

    *&v27 = 0x41504964696C6176;
    *(&v27 + 1) = 0xEF3D737365726464;
    MEMORY[0x2743E5FB0](v18, v19);

    v20 = v27;
    if (qword_280937360 != -1)
    {
      swift_once();
    }

    v21 = __swift_project_value_buffer(v3, qword_280945DD8);
    (*(v4 + 16))(v7, v21, v3);
    sub_2740CA9CC(0x5D5355544154535BLL, 0xE800000000000000, v20, *(&v20 + 1));

    (*(v4 + 8))(v7, v3);
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(&v30);
}

uint64_t sub_2741BB460(uint64_t a1)
{
  v3 = sub_2741C6AFC();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v8 = *(v1 + 16);
  if (*(v8 + 16) && (v9 = sub_274125ECC(2), (v10 & 1) != 0))
  {
    sub_27409D4E4(*(v8 + 56) + 40 * v9, &v19);
  }

  else
  {
    v21 = 0;
    v19 = 0u;
    v20 = 0u;
  }

  swift_endAccess();
  if (!*(&v20 + 1))
  {
    sub_27409D420(&v19, &qword_280939AF8, &qword_2741D11A0);
    v22 = 0u;
    v23 = 0u;
    v24 = 0;
    goto LABEL_15;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A230, &unk_2741D3B10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A6D0, &unk_2741D8570);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v24 = 0;
    v22 = 0u;
    v23 = 0u;
    goto LABEL_15;
  }

  if (!*(&v23 + 1))
  {
LABEL_15:
    sub_27409D420(&v22, &qword_28093A6C8, &unk_2741D6570);
    v25 = 0;
    v26 = 0xE000000000000000;
    sub_2741C856C();
    MEMORY[0x2743E5FB0](0xD000000000000018, 0x80000002741E3AE0);
    LOBYTE(v22) = 2;
    sub_2741C862C();
    sub_2740CB218(v25, v26, 0x7028657461647075, 0xEE00293A7265776FLL);
  }

  sub_27409D118(&v22, &v25);
  *&v22 = 0;
  *(&v22 + 1) = 0xE000000000000000;
  MEMORY[0x2743E5FB0](0x7473207265776F70, 0xEC0000003D657461);
  LOBYTE(v19) = a1;
  sub_2741C862C();
  v11 = v22;
  if (qword_280937360 != -1)
  {
    swift_once();
  }

  v12 = __swift_project_value_buffer(v3, qword_280945DD8);
  (*(v4 + 16))(v7, v12, v3);
  sub_2740CA9CC(0x5D5355544154535BLL, 0xE800000000000000, v11, *(&v11 + 1));

  (*(v4 + 8))(v7, v3);
  v13 = v27;
  v14 = v28;
  __swift_mutable_project_boxed_opaque_existential_1(&v25, v27);
  (*(v14 + 168))(a1, v13, v14);
  LODWORD(v14) = a1;
  v15 = v27;
  v16 = v28;
  __swift_mutable_project_boxed_opaque_existential_1(&v25, v27);
  (*(v16 + 120))(v14 == 1, v15, v16);
  if (!v14)
  {
    sub_2741BBD74();
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(&v25);
}

uint64_t sub_2741BB848(unsigned __int16 a1, uint64_t a2, uint64_t a3, __int16 a4)
{
  swift_beginAccess();
  v9 = *(v4 + 16);
  if (*(v9 + 16) && (v10 = sub_274125ECC(3), (v11 & 1) != 0))
  {
    sub_27409D4E4(*(v9 + 56) + 40 * v10, &v16);
  }

  else
  {
    v18 = 0;
    v16 = 0u;
    v17 = 0u;
  }

  swift_endAccess();
  if (*(&v17 + 1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A230, &unk_2741D3B10);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093B538, &qword_2741D8590);
    if (swift_dynamicCast())
    {
      if (*(&v20 + 1))
      {
        sub_27409D118(&v19, &v22);
        *&v16 = 0;
        *(&v16 + 1) = 0xE000000000000000;
        MEMORY[0x2743E5FB0](0x7474655372657375, 0xED00003D73676E69);
        LOWORD(v19) = a1;
        *(&v19 + 1) = a2;
        *&v20 = a3;
        WORD4(v20) = a4 & 0x1FF;
        sub_2741C862C();
        sub_2740CB460(v16, *(&v16 + 1));

        v12 = v24;
        v13 = v25;
        __swift_mutable_project_boxed_opaque_existential_1(&v22, v24);
        v14 = *(v13 + 48);

        v14(a1, a2, a3, a4 & 0x1FF, v12, v13);
        return __swift_destroy_boxed_opaque_existential_1Tm(&v22);
      }
    }

    else
    {
      v21 = 0;
      v19 = 0u;
      v20 = 0u;
    }
  }

  else
  {
    sub_27409D420(&v16, &qword_280939AF8, &qword_2741D11A0);
    v19 = 0u;
    v20 = 0u;
    v21 = 0;
  }

  sub_27409D420(&v19, &qword_280937E38, &unk_2741CB3E0);
  v22 = 0;
  v23 = 0xE000000000000000;
  sub_2741C856C();
  MEMORY[0x2743E5FB0](0xD000000000000018, 0x80000002741E3AE0);
  LOBYTE(v19) = 3;
  sub_2741C862C();
  sub_2740CB218(v22, v23, 0xD000000000000015, 0x80000002741E3D00);
}

uint64_t sub_2741BBB14()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  if (*(v1 + 16) && (v2 = sub_274125ECC(3), (v3 & 1) != 0))
  {
    sub_27409D4E4(*(v1 + 56) + 40 * v2, &v9);
  }

  else
  {
    v11 = 0;
    v9 = 0u;
    v10 = 0u;
  }

  swift_endAccess();
  if (*(&v10 + 1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A230, &unk_2741D3B10);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093B538, &qword_2741D8590);
    if (swift_dynamicCast())
    {
      if (*(&v13 + 1))
      {
        sub_27409D118(&v12, &v15);
        v4 = v17;
        v5 = v18;
        __swift_mutable_project_boxed_opaque_existential_1(&v15, v17);
        v6 = *(v5 + 24);

        v6(v7, v4, v5);
        return __swift_destroy_boxed_opaque_existential_1Tm(&v15);
      }
    }

    else
    {
      v14 = 0;
      v12 = 0u;
      v13 = 0u;
    }
  }

  else
  {
    sub_27409D420(&v9, &qword_280939AF8, &qword_2741D11A0);
    v12 = 0u;
    v13 = 0u;
    v14 = 0;
  }

  sub_27409D420(&v12, &qword_280937E38, &unk_2741CB3E0);
  v15 = 0;
  v16 = 0xE000000000000000;
  sub_2741C856C();
  MEMORY[0x2743E5FB0](0xD000000000000018, 0x80000002741E3AE0);
  LOBYTE(v12) = 3;
  sub_2741C862C();
  sub_2740CB218(v15, v16, 0xD000000000000016, 0x80000002741E3CA0);
}

unint64_t sub_2741BBD2C()
{
  type metadata accessor for ObservationManager();
  v0 = swift_allocObject();
  result = sub_2741777F0(MEMORY[0x277D84F90]);
  *(v0 + 16) = result;
  qword_280946F30 = v0;
  return result;
}

uint64_t sub_2741BBD74()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938570, &qword_2741D1630);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v25 - v4;
  v6 = sub_2741C6AFC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280937360 != -1)
  {
    swift_once();
  }

  v11 = __swift_project_value_buffer(v6, qword_280945DD8);
  (*(v7 + 16))(v10, v11, v6);
  sub_2740CA9CC(0x5D5355544154535BLL, 0xE800000000000000, 0xD00000000000001DLL, 0x80000002741E3C60);
  (*(v7 + 8))(v10, v6);
  swift_beginAccess();
  v12 = *(v1 + 16);
  if (*(v12 + 16) && (v13 = sub_274125ECC(2), (v14 & 1) != 0))
  {
    sub_27409D4E4(*(v12 + 56) + 40 * v13, &v32);
  }

  else
  {
    v34 = 0;
    v32 = 0u;
    v33 = 0u;
  }

  swift_endAccess();
  if (*(&v33 + 1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A230, &unk_2741D3B10);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A6D0, &unk_2741D8570);
    if (swift_dynamicCast())
    {
      if (*(&v26 + 1))
      {
        sub_27409D118(&v25, v35);
        v31 = 0;
        v29 = 0u;
        v30 = 0u;
        v27 = 0u;
        v28 = 0u;
        v26 = 0u;
        v25 = 0u;
        v15 = v36;
        v16 = v37;
        __swift_mutable_project_boxed_opaque_existential_1(v35, v36);
        (*(v16 + 24))(&v25, v15, v16);
        v31 = 0;
        v29 = 0u;
        v30 = 0u;
        v27 = 0u;
        v28 = 0u;
        v26 = 0u;
        v25 = 0u;
        v17 = v36;
        v18 = v37;
        __swift_mutable_project_boxed_opaque_existential_1(v35, v36);
        (*(v18 + 96))(&v25, v17, v18);
        v19 = type metadata accessor for KnownNetwork();
        (*(*(v19 - 8) + 56))(v5, 1, 1, v19);
        v20 = v36;
        v21 = v37;
        __swift_mutable_project_boxed_opaque_existential_1(v35, v36);
        (*(v21 + 48))(v5, v20, v21);
        v22 = v36;
        v23 = v37;
        __swift_mutable_project_boxed_opaque_existential_1(v35, v36);
        (*(v23 + 72))(0, 1, v22, v23);
        return __swift_destroy_boxed_opaque_existential_1Tm(v35);
      }
    }

    else
    {
      *&v27 = 0;
      v26 = 0u;
      v25 = 0u;
    }
  }

  else
  {
    sub_27409D420(&v32, &qword_280939AF8, &qword_2741D11A0);
    v25 = 0u;
    v26 = 0u;
    *&v27 = 0;
  }

  sub_27409D420(&v25, &qword_28093A6C8, &unk_2741D6570);
  *&v25 = 0;
  *(&v25 + 1) = 0xE000000000000000;
  sub_2741C856C();
  MEMORY[0x2743E5FB0](0xD000000000000018, 0x80000002741E3AE0);
  LOBYTE(v35[0]) = 2;
  sub_2741C862C();
  sub_2740CB218(v25, *(&v25 + 1), 0xD000000000000018, 0x80000002741E3C80);
}

uint64_t sub_2741BC258()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_2741BC2B4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2741BC2FC()
{
  v1 = [v0 IPv4Addresses];
  if (v1)
  {
    v2 = v1;
    v3 = sub_2741C7FEC();

    if (v3[2])
    {
      v4 = v3[4];
      v5 = v3[5];

      v6 = objc_opt_self();
      v7 = sub_2741C7E3C();

      LOBYTE(v6) = [v6 ISValidIPv4Address_];

      if (v6)
      {
        return 1;
      }
    }

    else
    {
    }
  }

  v8 = [v0 IPv6Addresses];
  if (v8)
  {
    v9 = v8;
    v10 = sub_2741C7FEC();

    if (v10[2])
    {
      v11 = v10[4];
      v12 = v10[5];

      v13 = objc_opt_self();
      v14 = sub_2741C7E3C();

      LOBYTE(v13) = [v13 IsValidIPv6Address_];

      if (v13)
      {
        return 1;
      }
    }

    else
    {
    }
  }

  v16 = [v0 currentScanResult];
  v17 = [v16 matchingKnownNetworkProfile];

  if (!v17)
  {
    return 0;
  }

  result = [v0 currentScanResult];
  if (result)
  {
    v18 = result;
    v19 = [result isIBSS];

    return v19;
  }

  return result;
}

uint64_t netrbInitIfnetTrafficDescriptor(void *a1, uint64_t a2)
{
  if (!a1)
  {
    goto LABEL_3;
  }

  v4 = MEMORY[0x2743E7A80]();
  v5 = MEMORY[0x277D86468];
  if (v4 != MEMORY[0x277D86468])
  {
    goto LABEL_3;
  }

  value = xpc_dictionary_get_value(a1, netrbClientLowLatencyFlowParam[0]);
  if (!value)
  {
    goto LABEL_3;
  }

  v8 = value;
  if (MEMORY[0x2743E7A80]() != v5)
  {
    goto LABEL_3;
  }

  v35 = 0uLL;
  v34 = 0uLL;
  v9 = xpc_dictionary_get_value(v8, netrbClientIfnetTrafficDescriptorIpVersion[0]);
  v10 = MEMORY[0x277D864C8];
  if (v9 && (v11 = v9, MEMORY[0x2743E7A80]() == v10))
  {
    v19 = xpc_uint64_get_value(v11);
    v20 = v19;
    if (v19 != 4 && v19 != 96)
    {
      goto LABEL_3;
    }

    if (a2)
    {
      *(a2 + 8) |= 1u;
      *(a2 + 9) = v19;
    }

    v21 = xpc_dictionary_get_value(v8, netrbClientIfnetTrafficDescriptorLocalIp[0]);
    v22 = MEMORY[0x277D864C0];
    if (v21 && (v23 = v21, MEMORY[0x2743E7A80]() == v22))
    {
      string_ptr = xpc_string_get_string_ptr(v23);
      if (a2)
      {
        *(a2 + 8) |= 4u;
      }
    }

    else
    {
      NETRBInfoLog();
      string_ptr = 0;
    }

    v25 = xpc_dictionary_get_value(v8, netrbClientIfnetTrafficDescriptorRemoteIp[0]);
    if (v25 && (v26 = v25, MEMORY[0x2743E7A80]() == v22))
    {
      v27 = xpc_string_get_string_ptr(v26);
      if (a2)
      {
        *(a2 + 8) |= 8u;
      }
    }

    else
    {
      NETRBInfoLog();
      v27 = 0;
    }

    if (v20 == 4)
    {
      if (string_ptr && inet_pton(2, string_ptr, &v35 + 12) != 1 || v27 && inet_pton(2, v27, &v34 + 12) != 1)
      {
        goto LABEL_3;
      }

      if (a2)
      {
        *(a2 + 24) = HIDWORD(v35);
        *(a2 + 40) = HIDWORD(v34);
      }
    }

    else
    {
      if (string_ptr && inet_pton(30, string_ptr, &v35) != 1 || v27 && inet_pton(30, v27, &v34) != 1)
      {
        goto LABEL_3;
      }

      if (a2)
      {
        v33 = v34;
        *(a2 + 12) = v35;
        *(a2 + 28) = v33;
      }
    }
  }

  else
  {
    NETRBErrorLog();
  }

  v12 = xpc_dictionary_get_value(v8, netrbClientIfnetTrafficDescriptorIpProtocol[0]);
  if (v12 && (v13 = v12, MEMORY[0x2743E7A80]() == v10))
  {
    v28 = xpc_uint64_get_value(v13);
    if (v28 != 17 && v28 != 6)
    {
      goto LABEL_3;
    }

    if (a2)
    {
      *(a2 + 8) |= 2u;
      *(a2 + 10) = v28;
    }
  }

  else
  {
    NETRBInfoLog();
  }

  v14 = xpc_dictionary_get_value(v8, netrbClientIfnetTrafficDescriptorLocalPort[0]);
  if (v14)
  {
    v15 = v14;
    if (MEMORY[0x2743E7A80]() != v10)
    {
      goto LABEL_3;
    }

    v16 = xpc_uint64_get_value(v15);
    if (v16 - 0x10000 < 0xFFFFFFFFFFFF0001)
    {
      goto LABEL_3;
    }

    if (a2)
    {
      *(a2 + 8) |= 0x10u;
      *(a2 + 44) = bswap32(v16) >> 16;
    }
  }

  else
  {
    NETRBInfoLog();
  }

  v17 = xpc_dictionary_get_value(v8, netrbClientIfnetTrafficDescriptorRemotePort[0]);
  if (v17)
  {
    v18 = v17;
    if (MEMORY[0x2743E7A80]() != v10)
    {
      goto LABEL_3;
    }

    v32 = xpc_uint64_get_value(v18);
    if (v32 - 0x10000 < 0xFFFFFFFFFFFF0001)
    {
      goto LABEL_3;
    }

    if (a2)
    {
      *(a2 + 8) |= 0x20u;
      *(a2 + 46) = bswap32(v32) >> 16;
    }
  }

  else
  {
    NETRBErrorLog();
  }

  v30 = xpc_dictionary_get_value(v8, netrbClientIfnetTrafficDescriptorConnectionIdleTimeout[0]);
  if (v30)
  {
    v31 = v30;
    if (MEMORY[0x2743E7A80]() != v10 || xpc_uint64_get_value(v31) >= 0x69781)
    {
LABEL_3:
      NETRBErrorLog();
      return 0;
    }
  }

  return 1;
}

uint64_t _NETRBNetworkCopy(uint64_t a1, uint64_t a2)
{
  if (_NETRBNetworkGetTypeId_pred != -1)
  {
    _NETRBNetworkCopy_cold_1();
  }

  Instance = _CFRuntimeCreateInstance();
  v4 = *(a2 + 16);
  v5 = *(a2 + 32);
  v6 = *(a2 + 64);
  *(Instance + 48) = *(a2 + 48);
  *(Instance + 64) = v6;
  *(Instance + 16) = v4;
  *(Instance + 32) = v5;
  v7 = *(a2 + 80);
  v8 = *(a2 + 96);
  v9 = *(a2 + 112);
  *(Instance + 128) = *(a2 + 128);
  *(Instance + 96) = v8;
  *(Instance + 112) = v9;
  *(Instance + 80) = v7;
  *(Instance + 136) = 0;
  *(Instance + 144) = 0;
  v10 = *(a2 + 136);
  if (v10)
  {
    v11 = 0;
    do
    {
      v12 = malloc_type_malloc(0x18uLL, 0x10200400817995AuLL);
      if (v11)
      {
        v13 = v11;
      }

      else
      {
        v13 = (Instance + 136);
      }

      v14 = *v10;
      v12[2] = *(v10 + 2);
      *v12 = v14;
      *v12 = *v13;
      *v13 = v12;
      v10 = *v10;
      v11 = v12;
    }

    while (v10);
  }

  v15 = *(a2 + 144);
  if (v15)
  {
    v16 = 0;
    do
    {
      v17 = malloc_type_malloc(0x20uLL, 0x10200401B9196EFuLL);
      if (v16)
      {
        v18 = v16;
      }

      else
      {
        v18 = (Instance + 144);
      }

      v19 = v15[1];
      *v17 = *v15;
      v17[1] = v19;
      *v17 = *v18;
      *v18 = v17;
      v15 = *v15;
      v16 = v17;
    }

    while (v15);
  }

  return Instance;
}

void *_NETRBClientCreateInternal(NSObject *a1, const void *a2, uint64_t a3, uint64_t a4)
{
  v18 = 0;
  v19 = &v18;
  v20 = 0x2000000000;
  v21 = 0;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2000000000;
  v17 = 2000;
  v7 = 0;
  if (!NETRBLogCreate())
  {
    v9 = *MEMORY[0x277CBECE8];
    if (__NETRBClientGetTypeID_pred != -1)
    {
      _NETRBClientCreateInternal_cold_1();
    }

    Instance = _CFRuntimeCreateInstance();
    v7 = Instance;
    if (Instance)
    {
      bzero((Instance + 16), 0x218uLL);
      if (a1)
      {
        v7[2] = a1;
        dispatch_retain(a1);
        if (a2)
        {
          v7[3] = _Block_copy(a2);
        }
      }

      if (__NETRBClientGetQueue_predQueue != -1)
      {
        _NETRBClientCreateInternal_cold_2();
      }

      v11 = __NETRBClientGetQueue___netrbQueue;
      if (!__NETRBClientGetQueue___netrbQueue)
      {
        goto LABEL_19;
      }

      if (__NETRBClientGetXpcQueue_predXpc != -1)
      {
        _NETRBClientCreateInternal_cold_3();
      }

      if (__NETRBClientGetXpcQueue___netrbXpcQueue)
      {
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 0x40000000;
        block[2] = ___NETRBClientCreateInternal_block_invoke;
        block[3] = &unk_279ECB768;
        block[6] = v7;
        block[7] = __NETRBClientGetXpcQueue___netrbXpcQueue;
        block[4] = &v18;
        block[5] = &v14;
        block[8] = v11;
        block[9] = a4;
        dispatch_sync(v11, block);
        if (*(v19 + 24) == 1 && (v15[3] | 2) == 0x7D2)
        {
          *(v19 + 24) = 0;
        }
      }

      else
      {
LABEL_19:
        NETRBErrorLog();
      }

      if ((v19[3] & 1) == 0)
      {
        CFRelease(v7);
        v7 = 0;
      }
    }

    else
    {
      v12 = __error();
      strerror(*v12);
      NETRBErrorLog();
    }
  }

  _Block_object_dispose(&v14, 8);
  _Block_object_dispose(&v18, 8);
  return v7;
}

void __NETRBClientRemoveFromList(const void *a1)
{
  if (__netrbClientList && CFArrayGetCount(__netrbClientList) >= 1)
  {
    v2 = 0;
    while (CFArrayGetValueAtIndex(__netrbClientList, v2) != a1)
    {
      if (++v2 >= CFArrayGetCount(__netrbClientList))
      {
        return;
      }
    }

    CFArrayRemoveValueAtIndex(__netrbClientList, v2);
    if (!CFArrayGetCount(__netrbClientList))
    {
      NETRBXPCCleanup();
      NETRBEndPointCleanup();
      CFRelease(__netrbClientList);
      __netrbClientList = 0;
    }
  }
}

uint64_t _NETRBClientDestroy(uint64_t a1)
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2000000000;
  v12 = 0;
  v5 = 0;
  v6 = &v5;
  v7 = 0x2000000000;
  v8 = 2000;
  if (!a1)
  {
    goto LABEL_7;
  }

  if (__NETRBClientGetQueue_predQueue != -1)
  {
    _NETRBClientCreateInternal_cold_2();
  }

  if (__NETRBClientGetQueue___netrbQueue)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 0x40000000;
    block[2] = ___NETRBClientDestroy_block_invoke;
    block[3] = &unk_279ECB7B8;
    block[4] = &v9;
    block[5] = &v5;
    block[6] = a1;
    dispatch_sync(__NETRBClientGetQueue___netrbQueue, block);
    if (*(v10 + 24) == 1)
    {
      *(v10 + 24) = v6[3] == 2001;
    }
  }

  else
  {
LABEL_7:
    NETRBErrorLog();
  }

  v2 = *(v10 + 24);
  _Block_object_dispose(&v5, 8);
  _Block_object_dispose(&v9, 8);
  return v2;
}

uint64_t __NETRBClientValidateClient(_BYTE *a1)
{
  if (!a1)
  {
    goto LABEL_9;
  }

  if (!a1[288])
  {
    return 22;
  }

  if (!__netrbClientList || (Count = CFArrayGetCount(__netrbClientList)) == 0 || (v3 = Count, Count < 1))
  {
LABEL_9:
    NETRBErrorLog();
    return 22;
  }

  v4 = 0;
  while (CFArrayGetValueAtIndex(__netrbClientList, v4) != a1)
  {
    if (v3 == ++v4)
    {
      goto LABEL_9;
    }
  }

  return 0;
}

uint64_t _NETRBClientStartService(uint64_t a1, char *__s1, int a3, int a4, void *a5)
{
  v67 = 0;
  v68 = &v67;
  v69 = 0x2000000000;
  v70 = 0;
  if (!a1 || (a3 - 205) <= 0xFFFFFFFA || (a4 - 304) <= 0xFFFFFFFB || __s1 && *__s1 && strncmp(__s1, netrbClientAnyExternal, 0x10uLL) && !if_nametoindex(__s1) || (v10 = xpc_dictionary_create(0, 0, 0)) == 0)
  {
    NETRBErrorLog();
    goto LABEL_22;
  }

  v11 = v10;
  if (!a5)
  {
    goto LABEL_18;
  }

  v12 = MEMORY[0x2743E7A80](a5);
  v13 = MEMORY[0x277D86468];
  if (v12 != MEMORY[0x277D86468])
  {
    goto LABEL_18;
  }

  value = xpc_dictionary_get_value(a5, netrbClientDeviceType[0]);
  if (!value)
  {
    goto LABEL_18;
  }

  v15 = value;
  v16 = MEMORY[0x2743E7A80]();
  v17 = MEMORY[0x277D864C8];
  if (v16 != MEMORY[0x277D864C8])
  {
    goto LABEL_18;
  }

  v18 = xpc_uint64_get_value(v15);
  if (v18 >= 7)
  {
    goto LABEL_18;
  }

  v22 = v18;
  xpc_dictionary_set_uint64(v11, netrbXPCDeviceType[0], v18);
  if (v22 != 1)
  {
    v25 = xpc_dictionary_get_value(a5, netrbClientInterfaceName[0]);
    if (!v25)
    {
      goto LABEL_18;
    }

    v26 = v25;
    if (MEMORY[0x2743E7A80]() != MEMORY[0x277D864C0])
    {
      goto LABEL_18;
    }

    string_ptr = xpc_string_get_string_ptr(v26);
    if (!if_nametoindex(string_ptr))
    {
      goto LABEL_18;
    }

    v32 = netrbXPCInterfaceName[0];
    v33 = xpc_string_get_string_ptr(v26);
    xpc_dictionary_set_string(v11, v32, v33);
  }

  v23 = xpc_dictionary_get_value(a5, netrbClientInterfaceMTU[0]);
  if (v23)
  {
    v24 = v23;
    if (MEMORY[0x2743E7A80]() != v17)
    {
      goto LABEL_18;
    }

    v27 = netrbXPCInterfaceMTU[0];
    v28 = xpc_uint64_get_value(v24);
    xpc_dictionary_set_uint64(v11, v27, v28);
  }

  v29 = xpc_dictionary_get_value(a5, netrbClientInterfaceInstance[0]);
  if (v29)
  {
    v30 = v29;
    if (MEMORY[0x2743E7A80]() != v17)
    {
      goto LABEL_18;
    }

    v34 = netrbXPCInterfaceInstance[0];
    v35 = xpc_uint64_get_value(v30);
    xpc_dictionary_set_uint64(v11, v34, v35);
  }

  v36 = xpc_dictionary_get_value(a5, netrbClientInterfaceStartAddress);
  if (v36)
  {
    v37 = v36;
    if (MEMORY[0x2743E7A80]() != MEMORY[0x277D864C0])
    {
      goto LABEL_18;
    }

    v38 = netrbXPCStartAddress[0];
    v39 = xpc_string_get_string_ptr(v37);
    xpc_dictionary_set_string(v11, v38, v39);
  }

  v40 = xpc_dictionary_get_value(a5, netrbClientInterfaceEndAddress);
  if (v40)
  {
    v41 = v40;
    if (MEMORY[0x2743E7A80]() != MEMORY[0x277D864C0])
    {
      goto LABEL_18;
    }

    v42 = netrbXPCEndAddress[0];
    v43 = xpc_string_get_string_ptr(v41);
    xpc_dictionary_set_string(v11, v42, v43);
  }

  v44 = xpc_dictionary_get_value(a5, netrbClientInterfaceNetworkMask);
  if (!v44)
  {
    goto LABEL_46;
  }

  v45 = v44;
  if (MEMORY[0x2743E7A80]() != MEMORY[0x277D864C0])
  {
LABEL_18:
    NETRBErrorLog();
LABEL_19:
    v19 = v11;
LABEL_20:
    xpc_release(v19);
    goto LABEL_22;
  }

  v46 = netrbXPCNetworkMask[0];
  v47 = xpc_string_get_string_ptr(v45);
  xpc_dictionary_set_string(v11, v46, v47);
LABEL_46:
  v48 = xpc_dictionary_get_value(a5, netrbClientNatType);
  if (!v48)
  {
    if (a3 != 201)
    {
      xpc_dictionary_set_uint64(v11, netrbXPCNatType[0], 0x1F5uLL);
LABEL_56:
      v52 = 0;
      goto LABEL_57;
    }

    xpc_dictionary_set_uint64(v11, netrbXPCNatType[0], 0x1F4uLL);
LABEL_51:
    if (!insert_nat66_params(a5, v11))
    {
      goto LABEL_19;
    }

    goto LABEL_56;
  }

  v49 = v48;
  if (MEMORY[0x2743E7A80]() != v17)
  {
    goto LABEL_18;
  }

  v50 = xpc_uint64_get_value(v49);
  v51 = v50;
  if (v50 - 503 <= 0xFFFFFFFC)
  {
    goto LABEL_18;
  }

  xpc_dictionary_set_uint64(v11, netrbXPCNatType[0], v50);
  if (v51 == 500)
  {
    goto LABEL_51;
  }

  if (v51 != 502)
  {
    goto LABEL_56;
  }

  v53 = xpc_dictionary_get_value(a5, netrbClientNat64Param);
  if (!v53)
  {
    goto LABEL_56;
  }

  v54 = v53;
  if (MEMORY[0x2743E7A80]() != v13)
  {
    goto LABEL_18;
  }

  v55 = xpc_dictionary_create(0, 0, 0);
  if (!v55)
  {
    goto LABEL_18;
  }

  v52 = v55;
  v56 = xpc_dictionary_get_value(v54, netrbClientDns64Prefix);
  if (v56)
  {
    v57 = v56;
    if (MEMORY[0x2743E7A80]() != MEMORY[0x277D864C0])
    {
      goto LABEL_76;
    }

    v58 = netrbXPCDns64Prefix[0];
    v59 = xpc_string_get_string_ptr(v57);
    xpc_dictionary_set_string(v52, v58, v59);
  }

  v60 = xpc_dictionary_get_value(v54, netrbClientRaPrefix);
  if (v60)
  {
    v61 = v60;
    if (MEMORY[0x2743E7A80]() != MEMORY[0x277D864C0])
    {
LABEL_76:
      NETRBErrorLog();
      xpc_release(v11);
LABEL_63:
      v19 = v52;
      goto LABEL_20;
    }

    v62 = netrbXPCRaPrefix[0];
    v63 = xpc_string_get_string_ptr(v61);
    xpc_dictionary_set_string(v52, v62, v63);
  }

  xpc_dictionary_set_value(v11, netrbXPCNat64Param[0], v52);
LABEL_57:
  if (__NETRBClientGetQueue_predQueue != -1)
  {
    _NETRBClientCreateInternal_cold_2();
  }

  if (__NETRBClientGetQueue___netrbQueue)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 0x40000000;
    block[2] = ___NETRBClientStartService_block_invoke;
    block[3] = &unk_279ECB800;
    block[4] = &v67;
    block[5] = a1;
    v65 = a3;
    v66 = a4;
    block[6] = v11;
    block[7] = __s1;
    block[8] = __NETRBClientGetQueue___netrbQueue;
    dispatch_sync(__NETRBClientGetQueue___netrbQueue, block);
  }

  else
  {
    NETRBErrorLog();
  }

  xpc_release(v11);
  if (v52)
  {
    goto LABEL_63;
  }

LABEL_22:
  v20 = *(v68 + 24);
  _Block_object_dispose(&v67, 8);
  return v20;
}

uint64_t insert_nat66_params(void *a1, void *a2)
{
  value = xpc_dictionary_get_value(a1, netrbClientNat66Param);
  if (value)
  {
    v4 = value;
    if (MEMORY[0x2743E7A80]() != MEMORY[0x277D86468] || (string = xpc_dictionary_get_string(v4, netrbClientRaPrefix)) == 0)
    {
      NETRBErrorLog();
      return 0;
    }

    v7 = string;
    v8 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_string(v8, netrbXPCRaPrefix[0], v7);
    xpc_dictionary_set_value(a2, netrbXPCNat66Param[0], v8);
  }

  return 1;
}

void __NETRBClientResponseHandler(uint64_t a1, int a2, void *a3, uint64_t a4)
{
  v17 = off_279ECC048[a2 - 1001];
  NETRBInfoLog();
  if (__NETRBClientValidateClient(a1) || !*(a1 + 16) || !*(a1 + 24))
  {
    goto LABEL_6;
  }

  if (!a3)
  {
    v8 = xpc_dictionary_create(0, 0, 0);
    if (v8)
    {
      goto LABEL_14;
    }

    goto LABEL_17;
  }

  if (xpc_dictionary_get_uint64(a3, netrbXPCResponse[0]) != 2003)
  {
    v9 = xpc_dictionary_create(0, 0, 0);
    if (v9)
    {
      v8 = v9;
      if (xpc_dictionary_get_uint64(a3, netrbXPCResponse[0]) != 2002)
      {
        uint64 = xpc_dictionary_get_uint64(a3, netrbXPCResponse[0]);
        if (uint64 == 2001)
        {
          v15 = 5002;
        }

        else
        {
          v15 = 5003;
        }

        xpc_dictionary_set_uint64(v8, netrbClientNotificationKey, v15);
        if (a2 != 1014 || uint64 != 2000)
        {
          if (a2 == 1014 && uint64 == 2001)
          {
            notification_insert_keys(v8, a3);
          }

          goto LABEL_16;
        }

        v16 = xpc_dictionary_get_uint64(a3, netrbXPCErrorCode[0]);
        if (!v16)
        {
LABEL_16:
          v13 = *(a1 + 16);
          block[0] = MEMORY[0x277D85DD0];
          block[1] = 0x40000000;
          block[2] = ____NETRBClientResponseHandler_block_invoke;
          block[3] = &__block_descriptor_tmp_228;
          v19 = a2;
          block[4] = a1;
          block[5] = a4;
          block[6] = v8;
          dispatch_async(v13, block);
          return;
        }

        v12 = v16;
        v10 = netrbClientErrorCode;
        v11 = v8;
LABEL_15:
        xpc_dictionary_set_uint64(v11, v10, v12);
        goto LABEL_16;
      }

LABEL_14:
      v10 = netrbClientNotificationKey;
      v11 = v8;
      v12 = 5003;
      goto LABEL_15;
    }

LABEL_17:
    NETRBErrorLog();
    goto LABEL_7;
  }

LABEL_6:
  NETRBDebugLog();
LABEL_7:

  CFRelease(a1);
}

uint64_t _NETRBClientStopService(uint64_t a1)
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2000000000;
  v8 = 0;
  if (!a1)
  {
    goto LABEL_6;
  }

  if (__NETRBClientGetQueue_predQueue != -1)
  {
    _NETRBClientCreateInternal_cold_2();
  }

  if (__NETRBClientGetQueue___netrbQueue)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 0x40000000;
    block[2] = ___NETRBClientStopService_block_invoke;
    block[3] = &unk_279ECB848;
    block[4] = &v5;
    block[5] = a1;
    block[6] = __NETRBClientGetQueue___netrbQueue;
    dispatch_sync(__NETRBClientGetQueue___netrbQueue, block);
  }

  else
  {
LABEL_6:
    NETRBErrorLog();
  }

  v2 = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v2;
}

uint64_t _NETRBClientGetDynamicStoreKey(uint64_t a1, char *a2)
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2000000000;
  v10 = 0;
  if (!a1 || !a2)
  {
    goto LABEL_8;
  }

  if (__NETRBClientGetQueue_predQueue != -1)
  {
    _NETRBClientCreateInternal_cold_2();
  }

  if (__NETRBClientGetQueue___netrbQueue)
  {
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 0x40000000;
    v6[2] = ___NETRBClientGetDynamicStoreKey_block_invoke;
    v6[3] = &unk_279ECB870;
    v6[4] = &v7;
    v6[5] = a1;
    dispatch_sync(__NETRBClientGetQueue___netrbQueue, v6);
    if (*(v8 + 24) == 1)
    {
      strcpy(a2, "com.apple.MobileInternetSharing");
    }
  }

  else
  {
LABEL_8:
    NETRBErrorLog();
  }

  v4 = *(v8 + 24);
  _Block_object_dispose(&v7, 8);
  return v4;
}

uint64_t _NETRBClientGetGlobalServiceState(uint64_t a1, _DWORD *a2, _DWORD *a3)
{
  v21 = 0;
  v22 = &v21;
  v23 = 0x2000000000;
  v24 = 0;
  v17 = 0;
  v18 = &v17;
  v19 = 0x2000000000;
  v20 = 0;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2000000000;
  v16 = 0;
  v9 = 0;
  v10 = &v9;
  v11 = 0x2000000000;
  v12 = 2000;
  if (!a1 || !a2 || !a3)
  {
    goto LABEL_9;
  }

  if (__NETRBClientGetQueue_predQueue != -1)
  {
    v7 = a1;
    _NETRBClientCreateInternal_cold_2();
    a1 = v7;
  }

  if (__NETRBClientGetQueue___netrbQueue)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 0x40000000;
    block[2] = ___NETRBClientGetGlobalServiceState_block_invoke;
    block[3] = &unk_279ECB8C0;
    block[4] = &v13;
    block[5] = &v9;
    block[6] = &v21;
    block[7] = &v17;
    block[8] = a1;
    dispatch_sync(__NETRBClientGetQueue___netrbQueue, block);
    if (*(v14 + 24) == 1)
    {
      *(v14 + 24) = v10[3] == 2001;
      *a2 = *(v22 + 6);
      *a3 = *(v18 + 6);
    }
  }

  else
  {
LABEL_9:
    NETRBErrorLog();
  }

  v5 = *(v14 + 24);
  _Block_object_dispose(&v9, 8);
  _Block_object_dispose(&v13, 8);
  _Block_object_dispose(&v17, 8);
  _Block_object_dispose(&v21, 8);
  return v5;
}

uint64_t _NETRBClientSetGlobalServiceState(uint64_t a1, int a2)
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x2000000000;
  v15 = 0;
  v8 = 0;
  v9 = &v8;
  v10 = 0x2000000000;
  v11 = 2000;
  if (!a1 || (a2 - 1024) <= 0xFFFFFFFB)
  {
    goto LABEL_10;
  }

  if (__NETRBClientGetQueue_predQueue != -1)
  {
    _NETRBClientCreateInternal_cold_2();
  }

  if (__NETRBClientGetQueue___netrbQueue)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 0x40000000;
    block[2] = ___NETRBClientSetGlobalServiceState_block_invoke;
    block[3] = &unk_279ECB910;
    v7 = a2;
    block[4] = &v12;
    block[5] = &v8;
    block[6] = a1;
    dispatch_sync(__NETRBClientGetQueue___netrbQueue, block);
    if (*(v13 + 24) == 1)
    {
      *(v13 + 24) = v9[3] == 2001;
    }
  }

  else
  {
LABEL_10:
    NETRBErrorLog();
  }

  v4 = *(v13 + 24);
  _Block_object_dispose(&v8, 8);
  _Block_object_dispose(&v12, 8);
  return v4;
}

uint64_t _NETRBClientGetExtName(uint64_t a1, uint64_t a2)
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x2000000000;
  v14 = 0;
  v7 = 0;
  v8 = &v7;
  v9 = 0x2000000000;
  v10 = 2000;
  if (!a1 || !a2)
  {
    goto LABEL_8;
  }

  if (__NETRBClientGetQueue_predQueue != -1)
  {
    _NETRBClientCreateInternal_cold_2();
  }

  if (__NETRBClientGetQueue___netrbQueue)
  {
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 0x40000000;
    v6[2] = ___NETRBClientGetExtName_block_invoke;
    v6[3] = &unk_279ECB960;
    v6[4] = &v11;
    v6[5] = &v7;
    v6[6] = a1;
    v6[7] = a2;
    dispatch_sync(__NETRBClientGetQueue___netrbQueue, v6);
    if (*(v12 + 24) == 1)
    {
      *(v12 + 24) = v8[3] == 2001;
    }
  }

  else
  {
LABEL_8:
    NETRBErrorLog();
  }

  v4 = *(v12 + 24);
  _Block_object_dispose(&v7, 8);
  _Block_object_dispose(&v11, 8);
  return v4;
}

void *_NETRBClientCopyFixtureForwardedPorts(void *a1)
{
  v1 = a1;
  v17 = 0;
  v18 = &v17;
  v19 = 0x2000000000;
  v20 = 0;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2000000000;
  v16 = 0;
  v9 = 0;
  v10 = &v9;
  v11 = 0x2000000000;
  v12 = 0;
  v5 = 0;
  v6 = &v5;
  v7 = 0x2000000000;
  v8 = 2000;
  if (!a1)
  {
    NETRBErrorLog();
    goto LABEL_12;
  }

  if (__NETRBClientGetQueue_predQueue != -1)
  {
    _NETRBClientCreateInternal_cold_2();
  }

  if (!__NETRBClientGetQueue___netrbQueue)
  {
    NETRBErrorLog();
LABEL_11:
    v1 = 0;
    goto LABEL_12;
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = ___NETRBClientCopyFixtureForwardedPorts_block_invoke;
  block[3] = &unk_279ECB9B0;
  block[4] = &v9;
  block[5] = &v5;
  block[6] = &v17;
  block[7] = &v13;
  block[8] = v1;
  dispatch_sync(__NETRBClientGetQueue___netrbQueue, block);
  if (*(v10 + 24) != 1 || v6[3] != 2001)
  {
    goto LABEL_11;
  }

  v2 = xpc_dictionary_create(0, 0, 0);
  v1 = v2;
  if (v2)
  {
    xpc_dictionary_set_uint64(v2, netrbClientForwardedLowPort[0], *(v18 + 12));
    xpc_dictionary_set_uint64(v1, netrbClientForwardedHighPort[0], *(v14 + 12));
  }

  else
  {
    NETRBErrorLog();
    *(v10 + 24) = 0;
  }

LABEL_12:
  _Block_object_dispose(&v5, 8);
  _Block_object_dispose(&v9, 8);
  _Block_object_dispose(&v13, 8);
  _Block_object_dispose(&v17, 8);
  return v1;
}

uint64_t _NETRBClientSetFixtureForwardedPorts(uint64_t a1, uint64_t a2)
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x2000000000;
  v14 = 0;
  v7 = 0;
  v8 = &v7;
  v9 = 0x2000000000;
  v10 = 2000;
  if (!a1 || !a2 || MEMORY[0x2743E7A80](a2) != MEMORY[0x277D86468])
  {
    goto LABEL_4;
  }

  if (__NETRBClientGetQueue_predQueue != -1)
  {
    _NETRBClientCreateInternal_cold_2();
  }

  if (__NETRBClientGetQueue___netrbQueue)
  {
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 0x40000000;
    v6[2] = ___NETRBClientSetFixtureForwardedPorts_block_invoke;
    v6[3] = &unk_279ECBA00;
    v6[6] = a1;
    v6[7] = a2;
    v6[4] = &v11;
    v6[5] = &v7;
    dispatch_sync(__NETRBClientGetQueue___netrbQueue, v6);
    if (*(v12 + 24) == 1)
    {
      *(v12 + 24) = v8[3] == 2001;
    }
  }

  else
  {
LABEL_4:
    NETRBErrorLog();
  }

  v4 = *(v12 + 24);
  _Block_object_dispose(&v7, 8);
  _Block_object_dispose(&v11, 8);
  return v4;
}

uint64_t _NETRBClientIsAllowedMoreHost(uint64_t a1)
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2000000000;
  v12 = 0;
  v5 = 0;
  v6 = &v5;
  v7 = 0x2000000000;
  v8 = 2000;
  if (!a1)
  {
    goto LABEL_7;
  }

  if (__NETRBClientGetQueue_predQueue != -1)
  {
    _NETRBClientCreateInternal_cold_2();
  }

  if (__NETRBClientGetQueue___netrbQueue)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 0x40000000;
    block[2] = ___NETRBClientIsAllowedMoreHost_block_invoke;
    block[3] = &unk_279ECBA50;
    block[4] = &v9;
    block[5] = &v5;
    block[6] = a1;
    dispatch_sync(__NETRBClientGetQueue___netrbQueue, block);
    if (*(v10 + 24) == 1)
    {
      *(v10 + 24) = v6[3] == 2001;
    }
  }

  else
  {
LABEL_7:
    NETRBErrorLog();
  }

  v2 = *(v10 + 24);
  _Block_object_dispose(&v5, 8);
  _Block_object_dispose(&v9, 8);
  return v2;
}

uint64_t _NETRBClientAddHost(uint64_t a1, unsigned int a2)
{
  v4 = xpc_dictionary_create(0, 0, 0);
  if (v4)
  {
    v5 = v4;
    xpc_dictionary_set_uint64(v4, netrbClientHostIftype, a2);
    xpc_dictionary_set_uint64(v5, netrbClientHostDeviceId, 0xFFFFFFFFuLL);
    v6 = _NETRBClientAddHostExt(a1, v5);
    xpc_release(v5);
    return v6;
  }

  else
  {
    NETRBErrorLog();
    return 0;
  }
}

uint64_t _NETRBClientAddHostExt(uint64_t a1, void *a2)
{
  v21 = 0;
  v22 = &v21;
  v23 = 0x2000000000;
  v24 = 0;
  v17 = 0;
  v18 = &v17;
  v19 = 0x2000000000;
  v20 = 2000;
  if (a2 && MEMORY[0x2743E7A80](a2) == MEMORY[0x277D86468] && (v6 = xpc_dictionary_get_value(a2, netrbClientHostIftype)) != 0 && (v7 = v6, v8 = MEMORY[0x2743E7A80](), v9 = MEMORY[0x277D864C8], v8 == MEMORY[0x277D864C8]) && (v10 = xpc_uint64_get_value(v7), (v11 = xpc_dictionary_get_value(a2, netrbClientHostDeviceId)) != 0) && (v12 = v11, MEMORY[0x2743E7A80]() == v9))
  {
    value = xpc_uint64_get_value(v12);
    if (!a1 || (v10 - 7) <= 0xFFFFFFFA)
    {
      goto LABEL_20;
    }

    v14 = value;
    if (__NETRBClientGetQueue_predQueue != -1)
    {
      _NETRBClientCreateInternal_cold_2();
    }

    if (__NETRBClientGetQueue___netrbQueue)
    {
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 0x40000000;
      block[2] = ___NETRBClientAddHostExt_block_invoke;
      block[3] = &unk_279ECBAA0;
      v16 = v10;
      block[6] = a1;
      block[7] = v14;
      block[4] = &v21;
      block[5] = &v17;
      dispatch_sync(__NETRBClientGetQueue___netrbQueue, block);
      if (*(v22 + 24) == 1)
      {
        *(v22 + 24) = v18[3] == 2001;
      }
    }

    else
    {
LABEL_20:
      NETRBErrorLog();
    }
  }

  else
  {
    NETRBErrorLog();
    *(v22 + 24) = 0;
  }

  v4 = *(v22 + 24);
  _Block_object_dispose(&v17, 8);
  _Block_object_dispose(&v21, 8);
  return v4;
}

uint64_t _NETRBClientRemoveHostExt(uint64_t a1, void *a2)
{
  v21 = 0;
  v22 = &v21;
  v23 = 0x2000000000;
  v24 = 0;
  v17 = 0;
  v18 = &v17;
  v19 = 0x2000000000;
  v20 = 2000;
  if (a2 && MEMORY[0x2743E7A80](a2) == MEMORY[0x277D86468] && (v6 = xpc_dictionary_get_value(a2, netrbClientHostIftype)) != 0 && (v7 = v6, v8 = MEMORY[0x2743E7A80](), v9 = MEMORY[0x277D864C8], v8 == MEMORY[0x277D864C8]) && (v10 = xpc_uint64_get_value(v7), (v11 = xpc_dictionary_get_value(a2, netrbClientHostDeviceId)) != 0) && (v12 = v11, MEMORY[0x2743E7A80]() == v9))
  {
    value = xpc_uint64_get_value(v12);
    if (!a1 || (v10 - 7) <= 0xFFFFFFFA)
    {
      goto LABEL_20;
    }

    v14 = value;
    if (__NETRBClientGetQueue_predQueue != -1)
    {
      _NETRBClientCreateInternal_cold_2();
    }

    if (__NETRBClientGetQueue___netrbQueue)
    {
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 0x40000000;
      block[2] = ___NETRBClientRemoveHostExt_block_invoke;
      block[3] = &unk_279ECBAF0;
      v16 = v10;
      block[6] = a1;
      block[7] = v14;
      block[4] = &v21;
      block[5] = &v17;
      dispatch_sync(__NETRBClientGetQueue___netrbQueue, block);
      if (*(v22 + 24) == 1)
      {
        *(v22 + 24) = v18[3] == 2001;
      }
    }

    else
    {
LABEL_20:
      NETRBErrorLog();
    }
  }

  else
  {
    NETRBErrorLog();
    *(v22 + 24) = 0;
  }

  v4 = *(v22 + 24);
  _Block_object_dispose(&v17, 8);
  _Block_object_dispose(&v21, 8);
  return v4;
}

uint64_t _NETRBClientRemoveHost(uint64_t a1, unsigned int a2)
{
  v4 = xpc_dictionary_create(0, 0, 0);
  if (v4)
  {
    v5 = v4;
    xpc_dictionary_set_uint64(v4, netrbClientHostIftype, a2);
    xpc_dictionary_set_uint64(v5, netrbClientHostDeviceId, 0xFFFFFFFFuLL);
    v6 = _NETRBClientRemoveHostExt(a1, v5);
    xpc_release(v5);
    return v6;
  }

  else
  {
    NETRBErrorLog();
    return 0;
  }
}

uint64_t _NETRBClientGetHostCount(uint64_t a1, _DWORD *a2, _DWORD *a3)
{
  v21 = 0;
  v22 = &v21;
  v23 = 0x2000000000;
  v24 = 0;
  v17 = 0;
  v18 = &v17;
  v19 = 0x2000000000;
  v20 = 0;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2000000000;
  v16 = 0;
  v9 = 0;
  v10 = &v9;
  v11 = 0x2000000000;
  v12 = 2000;
  if (!a1 || !a2 || !a3)
  {
    goto LABEL_9;
  }

  if (__NETRBClientGetQueue_predQueue != -1)
  {
    v7 = a1;
    _NETRBClientCreateInternal_cold_2();
    a1 = v7;
  }

  if (__NETRBClientGetQueue___netrbQueue)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 0x40000000;
    block[2] = ___NETRBClientGetHostCount_block_invoke;
    block[3] = &unk_279ECBB40;
    block[4] = &v13;
    block[5] = &v9;
    block[6] = &v21;
    block[7] = &v17;
    block[8] = a1;
    dispatch_sync(__NETRBClientGetQueue___netrbQueue, block);
    if (*(v14 + 24) == 1)
    {
      *(v14 + 24) = v10[3] == 2001;
      *a2 = *(v22 + 6);
      *a3 = *(v18 + 6);
    }
  }

  else
  {
LABEL_9:
    NETRBErrorLog();
  }

  v5 = *(v14 + 24);
  _Block_object_dispose(&v9, 8);
  _Block_object_dispose(&v13, 8);
  _Block_object_dispose(&v17, 8);
  _Block_object_dispose(&v21, 8);
  return v5;
}

uint64_t _NETRBClientSetHostCount(uint64_t a1, int a2, int a3)
{
  v15 = 0;
  v16 = &v15;
  v17 = 0x2000000000;
  v18 = 0;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2000000000;
  v14 = 2000;
  if (!a1 || (a2 - 7) <= 0xFFFFFFFA)
  {
    goto LABEL_10;
  }

  if (__NETRBClientGetQueue_predQueue != -1)
  {
    _NETRBClientCreateInternal_cold_2();
  }

  if (__NETRBClientGetQueue___netrbQueue)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 0x40000000;
    block[2] = ___NETRBClientSetHostCount_block_invoke;
    block[3] = &unk_279ECBB90;
    v9 = a2;
    v10 = a3;
    block[4] = &v15;
    block[5] = &v11;
    block[6] = a1;
    dispatch_sync(__NETRBClientGetQueue___netrbQueue, block);
    if (*(v16 + 24) == 1)
    {
      *(v16 + 24) = v12[3] == 2001;
    }
  }

  else
  {
LABEL_10:
    NETRBErrorLog();
  }

  v6 = *(v16 + 24);
  _Block_object_dispose(&v11, 8);
  _Block_object_dispose(&v15, 8);
  return v6;
}

uint64_t _NETRBClientNewInterface(uint64_t a1, int a2, uint64_t a3, void *a4)
{
  v44 = 0;
  v45 = &v44;
  v46 = 0x2000000000;
  v47 = 0;
  v40 = 0;
  v41 = &v40;
  v42 = 0x2000000000;
  v43 = 0;
  if (!a1)
  {
    goto LABEL_40;
  }

  v41[3] = xpc_dictionary_create(0, 0, 0);
  if (a4)
  {
    string = xpc_dictionary_get_string(a4, netrbClientExternalInterface);
  }

  else
  {
    string = 0;
  }

  if ((a2 - 201) >= 3)
  {
    if (a2 != 204 || !string || !*string)
    {
      goto LABEL_40;
    }

    if (a4)
    {
      uint64 = 0;
      goto LABEL_16;
    }

LABEL_22:
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = 1;
    goto LABEL_36;
  }

  if (string)
  {
    goto LABEL_40;
  }

  if (!a4)
  {
    goto LABEL_22;
  }

  uint64 = xpc_dictionary_get_uint64(a4, netrbClientInterfaceMTU[0]);
LABEL_16:
  v9 = v41[3];
  v10 = xpc_dictionary_get_string(a4, netrbClientInterfaceStartAddress);
  v11 = xpc_dictionary_get_string(a4, netrbClientInterfaceEndAddress);
  v12 = xpc_dictionary_get_string(a4, netrbClientInterfaceNetworkMask);
  if (v10 && v11 && (v13 = v12) != 0)
  {
    xpc_dictionary_set_string(v9, netrbXPCStartAddress[0], v10);
    xpc_dictionary_set_string(v9, netrbXPCEndAddress[0], v11);
    xpc_dictionary_set_string(v9, netrbXPCNetworkMask[0], v13);
  }

  else if (v10 | v11)
  {
    goto LABEL_40;
  }

  if (!insert_nat66_params(a4, v41[3]))
  {
    goto LABEL_41;
  }

  v20 = v41[3];
  uuid = xpc_dictionary_get_uuid(a4, netrbClientNetworkIdentifier);
  if (uuid)
  {
    xpc_dictionary_set_uuid(v20, netrbXPCNetworkIdentifier[0], uuid);
    v22 = xpc_dictionary_get_string(a4, netrbClientInterfaceIPv4Address);
    v23 = xpc_dictionary_get_string(a4, netrbClientInterfaceNetworkMask);
    v24 = v23;
    if (v22 && v23)
    {
      xpc_dictionary_set_string(v20, netrbXPCInterfaceIPv4Address[0], v22);
      xpc_dictionary_set_string(v20, netrbXPCNetworkMask[0], v24);
    }

    else if (v22 | v23)
    {
      goto LABEL_40;
    }

    v25 = xpc_dictionary_get_string(a4, netrbClientInterfaceIPv6Address);
    if (v25)
    {
      xpc_dictionary_set_string(v20, netrbXPCInterfaceIPv6Address[0], v25);
    }
  }

  if (xpc_dictionary_get_value(a4, netrbClientAllocateMACAddress))
  {
    v19 = xpc_dictionary_get_BOOL(a4, netrbClientAllocateMACAddress);
  }

  else
  {
    v19 = 1;
  }

  v17 = xpc_dictionary_get_BOOL(a4, netrbClientEnableTSO);
  v16 = xpc_dictionary_get_BOOL(a4, netrbClientEnableIsolation);
  v15 = xpc_dictionary_get_BOOL(a4, netrbClientEnableChecksumOffload);
  v18 = xpc_dictionary_get_BOOL(a4, netrbClientEnableMACNAT);
  LOBYTE(a4) = xpc_dictionary_get_BOOL(a4, netrbClientEnableVirtIOHeader);
  v14 = uint64;
LABEL_36:
  if (__NETRBClientGetQueue_predQueue != -1)
  {
    v30 = v14;
    _NETRBClientCreateInternal_cold_2();
    v14 = v30;
  }

  if (__NETRBClientGetQueue___netrbQueue)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 0x40000000;
    block[2] = ___NETRBClientNewInterface_block_invoke;
    block[3] = &unk_279ECBBD8;
    block[6] = a1;
    block[7] = string;
    v34 = v19;
    v35 = v17;
    v36 = a4;
    v37 = v18;
    v38 = v16;
    v39 = v15;
    v32 = a2;
    v33 = v14;
    block[4] = &v40;
    block[5] = &v44;
    block[8] = a3;
    block[9] = __NETRBClientGetQueue___netrbQueue;
    dispatch_sync(__NETRBClientGetQueue___netrbQueue, block);
    goto LABEL_41;
  }

LABEL_40:
  NETRBErrorLog();
LABEL_41:
  v26 = v41[3];
  if (v26)
  {
    xpc_release(v26);
  }

  v27 = *(v45 + 24);
  _Block_object_dispose(&v40, 8);
  _Block_object_dispose(&v44, 8);
  return v27;
}

uint64_t _NETRBClientAddIPPortForwardingRule(CFTypeRef cf, char a2, __int16 a3, int a4, uint64_t a5, __int16 a6, uint64_t a7)
{
  v22 = 0;
  v23 = &v22;
  v24 = 0x2000000000;
  v25 = 0;
  if (!cf)
  {
    goto LABEL_9;
  }

  v10 = a4;
  if (a4 != 2 && a4 != 30)
  {
    goto LABEL_9;
  }

  if (__NETRBClientGetQueue_predQueue != -1)
  {
    _NETRBClientCreateInternal_cold_2();
  }

  v14 = __NETRBClientGetQueue___netrbQueue;
  if (__NETRBClientGetQueue___netrbQueue)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 0x40000000;
    block[2] = ___NETRBClientAddIPPortForwardingRule_block_invoke;
    block[3] = &unk_279ECBC50;
    v20 = a2;
    v18 = a3;
    v21 = v10;
    block[6] = cf;
    block[7] = a5;
    v19 = a6;
    block[4] = a7;
    block[5] = &v22;
    block[8] = __NETRBClientGetQueue___netrbQueue;
    CFRetain(cf);
    dispatch_sync(v14, block);
    if ((v23[3] & 1) == 0)
    {
      CFRelease(cf);
    }
  }

  else
  {
LABEL_9:
    NETRBErrorLog();
  }

  v15 = *(v23 + 24);
  _Block_object_dispose(&v22, 8);
  return v15;
}

void *netrbMakePortForwardingRuleDict(unsigned int a1, unsigned int a2, unsigned int a3, void *a4, unsigned int a5)
{
  v15 = *MEMORY[0x277D85DE8];
  if ((a3 == 30 || a3 == 2) && (a4 || !a5) && (!a4 || a5) && (!a4 || inet_ntop(a3, a4, string, 0x2Eu)))
  {
    v13 = xpc_dictionary_create(0, 0, 0);
    v10 = v13;
    if (a1)
    {
      xpc_dictionary_set_uint64(v13, netrbXPCPortForwardingRuleProtocol[0], a1);
    }

    if (a2)
    {
      xpc_dictionary_set_uint64(v10, netrbXPCPortForwardingRuleExternalPort[0], a2);
    }

    xpc_dictionary_set_uint64(v10, netrbXPCPortForwardingRuleAddressFamily[0], a3);
    if (a5)
    {
      xpc_dictionary_set_uint64(v10, netrbXPCPortForwardingRuleInternalPort[0], a5);
    }

    if (a4)
    {
      xpc_dictionary_set_string(v10, netrbXPCPortForwardingRuleInternalAddress[0], string);
    }
  }

  else
  {
    v10 = 0;
  }

  v11 = *MEMORY[0x277D85DE8];
  return v10;
}

uint64_t _NETRBClientRemoveIPPortForwardingRule(CFTypeRef cf, char a2, __int16 a3, int a4, uint64_t a5)
{
  v17 = 0;
  v18 = &v17;
  v19 = 0x2000000000;
  v20 = 0;
  if (!cf)
  {
    goto LABEL_9;
  }

  v6 = a4;
  if (a4 != 2 && a4 != 30)
  {
    goto LABEL_9;
  }

  if (__NETRBClientGetQueue_predQueue != -1)
  {
    _NETRBClientCreateInternal_cold_2();
  }

  v10 = __NETRBClientGetQueue___netrbQueue;
  if (__NETRBClientGetQueue___netrbQueue)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 0x40000000;
    block[2] = ___NETRBClientRemoveIPPortForwardingRule_block_invoke;
    block[3] = &unk_279ECBCC8;
    v15 = a2;
    v14 = a3;
    v16 = v6;
    block[4] = a5;
    block[5] = &v17;
    block[6] = cf;
    block[7] = __NETRBClientGetQueue___netrbQueue;
    CFRetain(cf);
    dispatch_sync(v10, block);
    if ((v18[3] & 1) == 0)
    {
      CFRelease(cf);
    }
  }

  else
  {
LABEL_9:
    NETRBErrorLog();
  }

  v11 = *(v18 + 24);
  _Block_object_dispose(&v17, 8);
  return v11;
}

uint64_t _NETRBClientGetIPPortForwardingRules(CFTypeRef cf, int a2, uint64_t a3)
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x2000000000;
  v14 = 0;
  if (!cf)
  {
    goto LABEL_9;
  }

  v4 = a2;
  if (a2 != 2 && a2 != 30)
  {
    goto LABEL_9;
  }

  if (__NETRBClientGetQueue_predQueue != -1)
  {
    _NETRBClientCreateInternal_cold_2();
  }

  v6 = __NETRBClientGetQueue___netrbQueue;
  if (__NETRBClientGetQueue___netrbQueue)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 0x40000000;
    block[2] = ___NETRBClientGetIPPortForwardingRules_block_invoke;
    block[3] = &unk_279ECBD40;
    v10 = v4;
    block[4] = a3;
    block[5] = &v11;
    block[6] = cf;
    block[7] = __NETRBClientGetQueue___netrbQueue;
    CFRetain(cf);
    dispatch_sync(v6, block);
    if ((v12[3] & 1) == 0)
    {
      CFRelease(cf);
    }
  }

  else
  {
LABEL_9:
    NETRBErrorLog();
  }

  v7 = *(v12 + 24);
  _Block_object_dispose(&v11, 8);
  return v7;
}

const char *_NETRBIPPortForwardingDictGetDetails(xpc_object_t xdict, _BYTE *a2, _WORD *a3, int a4, void *a5, _WORD *a6)
{
  if (!xdict || a4 != 2 && a4 != 30)
  {
    goto LABEL_10;
  }

  uint64 = xpc_dictionary_get_uint64(xdict, netrbXPCPortForwardingRuleProtocol[0]);
  *a2 = uint64;
  if (!uint64)
  {
    return 0;
  }

  v13 = xpc_dictionary_get_uint64(xdict, netrbXPCPortForwardingRuleExternalPort[0]);
  *a3 = v13;
  if (!v13)
  {
    return 0;
  }

  v14 = xpc_dictionary_get_uint64(xdict, netrbXPCPortForwardingRuleInternalPort[0]);
  *a6 = v14;
  if (!v14)
  {
    return 0;
  }

  if (xpc_dictionary_get_uint64(xdict, netrbXPCPortForwardingRuleAddressFamily[0]) != a4)
  {
LABEL_10:
    NETRBErrorLog();
    return 0;
  }

  result = xpc_dictionary_get_string(xdict, netrbXPCPortForwardingRuleInternalAddress[0]);
  if (result)
  {
    return (inet_pton(a4, result, a5) != 0);
  }

  return result;
}

uint64_t NETRBClientSendNotification(void *a1)
{
  if (__netrbClientList && (Count = CFArrayGetCount(__netrbClientList)) != 0 && (v3 = Count, (v4 = xpc_dictionary_create(0, 0, 0)) != 0))
  {
    v5 = v4;
    v6 = netrbClientNotificationKey;
    uint64 = xpc_dictionary_get_uint64(a1, netrbXPCNotification[0]);
    xpc_dictionary_set_uint64(v5, v6, uint64);
    if (v3 >= 1)
    {
      for (i = 0; i != v3; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(__netrbClientList, i);
        if (ValueAtIndex)
        {
          v10 = ValueAtIndex;
          if (ValueAtIndex[2])
          {
            if (ValueAtIndex[3])
            {
              xpc_retain(v5);
              CFRetain(v10);
              v11 = v10[2];
              v13[0] = MEMORY[0x277D85DD0];
              v13[1] = 0x40000000;
              v13[2] = __NETRBClientSendNotification_block_invoke;
              v13[3] = &__block_descriptor_tmp_179;
              v13[4] = v10;
              v13[5] = v5;
              dispatch_async(v11, v13);
            }
          }
        }
      }
    }

    xpc_release(v5);
    return 1;
  }

  else
  {
    NETRBErrorLog();
    return 0;
  }
}

void __NETRBClientSendNotification_block_invoke(uint64_t a1)
{
  v4[0] = 0;
  v4[1] = v4;
  v4[2] = 0x2000000000;
  v5 = 0;
  if (__NETRBClientGetQueue_predQueue != -1)
  {
    _NETRBClientCreateInternal_cold_2();
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = __NETRBClientSendNotification_block_invoke_2;
  block[3] = &unk_279ECBD68;
  block[4] = v4;
  v3 = *(a1 + 32);
  dispatch_sync(__NETRBClientGetQueue___netrbQueue, block);
  xpc_release(*(a1 + 40));
  CFRelease(*(a1 + 32));
  _Block_object_dispose(v4, 8);
}

uint64_t __NETRBClientSendNotification_block_invoke_2(uint64_t a1)
{
  result = __NETRBClientValidateClient(*(a1 + 40));
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!result)
  {
    v3 = *(a1 + 48);
    v4 = *(*(*(a1 + 40) + 24) + 16);

    return v4();
  }

  return result;
}

uint64_t _NETRBClientModifyLowLatencyFlow(uint64_t a1, void *a2, char a3)
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x2000000000;
  v14 = 0;
  inited = netrbInitIfnetTrafficDescriptor(a2, 0);
  *(v12 + 24) = inited;
  if ((inited & 1) == 0)
  {
    goto LABEL_6;
  }

  if (__NETRBClientGetQueue_predQueue != -1)
  {
    _NETRBClientCreateInternal_cold_2();
  }

  if (__NETRBClientGetQueue___netrbQueue)
  {
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 0x40000000;
    v9[2] = ___NETRBClientModifyLowLatencyFlow_block_invoke;
    v9[3] = &unk_279ECBF20;
    v9[4] = &v11;
    v9[5] = a1;
    v9[6] = a2;
    v10 = a3;
    dispatch_sync(__NETRBClientGetQueue___netrbQueue, v9);
  }

  else
  {
LABEL_6:
    NETRBErrorLog();
  }

  v7 = *(v12 + 24);
  _Block_object_dispose(&v11, 8);
  return v7;
}

uint64_t _NETRBCreateNetworkConfiguration(unsigned int a1, void *a2)
{
  v4 = *MEMORY[0x277CBECE8];
  if (_NETRBNetworkGetTypeId_pred != -1)
  {
    _NETRBNetworkCopy_cold_1();
  }

  Instance = _CFRuntimeCreateInstance();
  v6 = Instance;
  if (Instance)
  {
    *(Instance + 144) = 0;
    *(Instance + 112) = 0u;
    *(Instance + 128) = 0u;
    *(Instance + 80) = 0u;
    *(Instance + 96) = 0u;
    *(Instance + 48) = 0u;
    *(Instance + 64) = 0u;
    *(Instance + 16) = 0u;
    *(Instance + 32) = 0u;
    if (a1 >= 2)
    {
      NETRBErrorLog();
      CFRelease(v6);
      v6 = 0;
      result = 6002;
    }

    else
    {
      *(Instance + 36) = a1;
      result = 0;
      if (a1 == 1)
      {
        v6[10] |= 2u;
        v6[14] |= 4u;
      }
    }
  }

  else
  {
    NETRBErrorLog();
    result = 6003;
  }

  *a2 = v6;
  return result;
}

uint64_t _NETRBCreateNetwork(void *a1)
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x2000000000;
  v15 = 0;
  v8 = 0;
  v9 = &v8;
  v10 = 0x2000000000;
  v11 = 0;
  v7 = 0;
  if (NETRBLogCreate())
  {
    *(v13 + 6) = 6003;
  }

  else
  {
    GlobalClient = __NETRBNetworkCreateGlobalClient();
    *(v13 + 6) = GlobalClient;
    if (GlobalClient)
    {
      NETRBErrorLog();
    }

    else
    {
      _NETRBSerializeNetwork(a1, &v7);
      *(v13 + 6) = 0;
      if (__NETRBClientGetQueue_predQueue != -1)
      {
        _NETRBClientCreateInternal_cold_2();
      }

      if (__NETRBClientGetQueue___netrbQueue)
      {
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 0x40000000;
        block[2] = ___NETRBCreateNetwork_block_invoke;
        block[3] = &unk_279ECBDD8;
        v3 = v7;
        block[6] = a1;
        block[7] = v7;
        block[4] = &v12;
        block[5] = &v8;
        dispatch_sync(__NETRBClientGetQueue___netrbQueue, block);
        if ((v9[3] & 1) == 0)
        {
          NETRBErrorLog();
          *(v13 + 6) = 1;
        }
      }

      else
      {
        NETRBErrorLog();
        *(v13 + 6) = 6003;
        v3 = v7;
      }

      if (v3)
      {
        xpc_release(v3);
      }
    }
  }

  v4 = *(v13 + 6);
  _Block_object_dispose(&v8, 8);
  _Block_object_dispose(&v12, 8);
  return v4;
}

uint64_t __NETRBNetworkCreateGlobalClient()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2000000000;
  v6 = 0;
  if (__NETRBNetworkGetServiceQueue_predNetworkQueue != -1)
  {
    __NETRBNetworkCreateGlobalClient_cold_1();
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = ____NETRBNetworkCreateGlobalClient_block_invoke;
  block[3] = &unk_279ECBFA8;
  block[4] = &v3;
  dispatch_sync(__NETRBNetworkGetServiceQueue___networkServiceQueue, block);
  v0 = *(v4 + 6);
  _Block_object_dispose(&v3, 8);
  return v0;
}

uint64_t _NETRBSerializeNetwork(void *a1, xpc_object_t *a2)
{
  v4 = xpc_dictionary_create(0, 0, 0);
  *a2 = v4;
  xpc_dictionary_set_data(v4, netrbXPCNetworkSerialization[0], a1 + 2, 0x78uLL);
  v5 = a1[17];
  if (v5)
  {
    v6 = 0;
    do
    {
      v5 = *v5;
      v6 += 24;
    }

    while (v5);
    v7 = malloc_type_malloc(v6, 0xA056F487uLL);
    bzero(v7, v6);
    v8 = a1[17];
    if (v8)
    {
      v9 = v7;
      do
      {
        v10 = *v8;
        v9[2] = *(v8 + 2);
        *v9 = v10;
        v9 += 3;
        v8 = *v8;
      }

      while (v8);
    }

    xpc_dictionary_set_data(*a2, netrbXPCNetworkSerializationDHCPReservation[0], v7, v6);
    free(v7);
  }

  v11 = a1[18];
  if (v11)
  {
    v12 = 0;
    do
    {
      v11 = *v11;
      v12 += 32;
    }

    while (v11);
    v13 = malloc_type_malloc(v12, 0x95A4A4E9uLL);
    bzero(v13, v12);
    v14 = a1[18];
    if (v14)
    {
      v15 = v13;
      do
      {
        v16 = v14[1];
        *v15 = *v14;
        v15[1] = v16;
        v15 += 2;
        v14 = *v14;
      }

      while (v14);
    }

    xpc_dictionary_set_data(*a2, netrbXPCNetworkSerializationPortForwarding, v13, v12);
    free(v13);
  }

  return 0;
}

uint64_t _NETRBNetworkStartVirtualMachineInterface(void *a1, void *a2, void *a3)
{
  v33 = 0;
  v34 = &v33;
  v35 = 0x2000000000;
  v36 = 0;
  v29 = 0;
  v30 = &v29;
  v31 = 0x2000000000;
  v32 = 0;
  v28 = 0;
  if (NETRBLogCreate())
  {
    goto LABEL_2;
  }

  GlobalClient = __NETRBNetworkCreateGlobalClient();
  *(v34 + 6) = GlobalClient;
  if (GlobalClient)
  {
    NETRBErrorLog();
    goto LABEL_5;
  }

  v9 = *MEMORY[0x277CBECE8];
  if (_NETRBInterfaceGetTypeId_pred != -1)
  {
    _NETRBNetworkStartVirtualMachineInterface_cold_1();
  }

  Instance = _CFRuntimeCreateInstance();
  if (!Instance)
  {
    NETRBErrorLog();
LABEL_2:
    *(v34 + 6) = 6003;
    goto LABEL_5;
  }

  v11 = Instance;
  *(Instance + 48) = 0;
  NETRBInfoLog();
  if (__NETRBClientGetQueue_predQueue != -1)
  {
    _NETRBClientCreateInternal_cold_2();
  }

  v12 = __NETRBClientGetQueue___netrbQueue;
  if (!__NETRBClientGetQueue___netrbQueue)
  {
    v14 = 0;
    v15 = 6003;
LABEL_25:
    NETRBErrorLog();
    *(v34 + 6) = v15;
LABEL_26:
    CFRelease(v11);
    goto LABEL_27;
  }

  _NETRBSerializeNetwork(a1, &v28);
  *(v34 + 6) = 0;
  if (a3)
  {
    if (xpc_dictionary_get_value(a3, netrbClientAllocateMACAddress))
    {
      v13 = xpc_dictionary_get_BOOL(a3, netrbClientAllocateMACAddress);
    }

    else
    {
      v13 = 1;
    }

    v17 = xpc_dictionary_get_BOOL(a3, netrbClientEnableTSO);
    v16 = xpc_dictionary_get_BOOL(a3, netrbClientEnableIsolation);
    v20 = xpc_dictionary_get_BOOL(a3, netrbClientEnableChecksumOffload);
    v19 = xpc_dictionary_get_BOOL(a3, netrbClientEnableMACNAT);
    v18 = xpc_dictionary_get_BOOL(a3, netrbClientEnableVirtIOHeader);
  }

  else
  {
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = 0;
    v20 = 0;
    v13 = 1;
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = ___NETRBNetworkStartVirtualMachineInterface_block_invoke;
  block[3] = &unk_279ECBE28;
  v22 = v13;
  v14 = v28;
  block[6] = a1;
  block[7] = v28;
  v23 = v17;
  v24 = v18;
  v25 = v19;
  v26 = v16;
  v27 = v20;
  block[4] = &v33;
  block[5] = &v29;
  block[8] = a3;
  block[9] = v11;
  dispatch_sync(v12, block);
  if (!*(v30 + 24))
  {
    v15 = 1;
    goto LABEL_25;
  }

  if (*(v34 + 6))
  {
    goto LABEL_26;
  }

  *a2 = v11;
  CFRetain(a1);
  if (*(v34 + 6))
  {
    goto LABEL_26;
  }

LABEL_27:
  if (v14)
  {
    xpc_release(v14);
  }

LABEL_5:
  v7 = *(v34 + 6);
  _Block_object_dispose(&v29, 8);
  _Block_object_dispose(&v33, 8);
  return v7;
}

unint64_t _NETRBEtherAton(const char *a1)
{
  v3 = 0;
  v2 = 0;
  sscanf(a1, "%hhx:%hhx:%hhx:%hhx:%hhx:%hhx", &v2, &v2 + 1, &v2 + 2, &v2 + 3, &v3, &v3 + 1);
  return v2 | (v3 << 32);
}

uint64_t _NETRBNetworkSetIPv4Addresses(uint64_t a1, _DWORD *a2, _DWORD *a3)
{
  *(a1 + 44) = *a2;
  *(a1 + 48) = *a3;
  return 0;
}

uint64_t _NETRBNetworkSetIPv6Prefix(uint64_t a1, _OWORD *a2, int a3)
{
  *(a1 + 60) = *a2;
  *(a1 + 76) = a3;
  return 0;
}

uint64_t _NETRBNetworkAddPortForwardingRule(uint64_t a1, char a2, int a3, __int16 a4, __int16 a5)
{
  v10 = malloc_type_malloc(0x20uLL, 0x10200401B9196EFuLL);
  v11 = v10;
  *v10 = 0u;
  *(v10 + 1) = 0u;
  *(v10 + 8) = a2;
  if (a3 == 2 || a3 == 30)
  {
    *(v10 + 9) = a3;
    *(v10 + 5) = a4;
    *(v10 + 6) = a5;
    __memcpy_chk();
    v12 = 0;
    *v11 = *(a1 + 144);
    *(a1 + 144) = v11;
  }

  else
  {
    NETRBErrorLog();
    v12 = 6002;
  }

  if (a3 != 2 && a3 != 30)
  {
    free(v11);
  }

  return v12;
}

uint64_t _NETRBNetworkAddDHCPReservation(uint64_t a1, int *a2, _DWORD *a3)
{
  v6 = malloc_type_malloc(0x18uLL, 0x10200400817995AuLL);
  v7 = *a2;
  v6[6] = *(a2 + 2);
  *(v6 + 2) = v7;
  *(v6 + 4) = *a3;
  *v6 = *(a1 + 136);
  *(a1 + 136) = v6;
  return 0;
}

uint64_t _NETRBDeserializeNetworkConfig(void *a1, uint64_t a2)
{
  v23 = 0;
  length = 0;
  v22 = 0;
  data = xpc_dictionary_get_data(a1, netrbXPCNetworkSerialization[0], &length);
  if (length == 120)
  {
    v5 = *data;
    v6 = data[1];
    v7 = data[3];
    *(a2 + 32) = data[2];
    *(a2 + 48) = v7;
    *a2 = v5;
    *(a2 + 16) = v6;
    v8 = data[4];
    v9 = data[5];
    v10 = data[6];
    *(a2 + 112) = *(data + 14);
    *(a2 + 80) = v9;
    *(a2 + 96) = v10;
    *(a2 + 64) = v8;
    *(a2 + 120) = 0;
    v11 = (a2 + 120);
    *(a2 + 128) = 0;
    v12 = xpc_dictionary_get_data(a1, netrbXPCNetworkSerializationDHCPReservation[0], &v23);
    if (v12 && v23 >= 0x18)
    {
      v13 = v23 / 0x18;
      v14 = v12 + 16;
      do
      {
        v15 = malloc_type_malloc(0x18uLL, 0x10200400817995AuLL);
        v15[1] = 0;
        v15[2] = 0;
        *v15 = 0;
        v16 = *(v14 - 2);
        *(v15 + 2) = *(v14 - 2);
        *(v15 + 6) = v16;
        v17 = *v14;
        v14 += 6;
        *(v15 + 4) = v17;
        *v15 = *v11;
        *v11 = v15;
        --v13;
      }

      while (v13);
    }

    result = xpc_dictionary_get_data(a1, netrbXPCNetworkSerializationPortForwarding, &v22);
    if (result)
    {
      if (v22 >= 0x20)
      {
        v19 = v22 >> 5;
        v20 = result + 8;
        do
        {
          v21 = malloc_type_malloc(0x20uLL, 0x10200401B9196EFuLL);
          *v21 = 0u;
          *(v21 + 1) = 0u;
          *(v21 + 4) = *v20;
          *(v21 + 10) = *(v20 + 2);
          *(v21 + 1) = *(v20 + 8);
          *v21 = *(a2 + 128);
          *(a2 + 128) = v21;
          v20 += 32;
          --v19;
        }

        while (v19);
      }

      return 0;
    }
  }

  else
  {
    NETRBErrorLog();
    return 6002;
  }

  return result;
}

uint64_t _NETRBDeserializeNetwork(void *a1, void *a2)
{
  v4 = *MEMORY[0x277CBECE8];
  if (_NETRBNetworkGetTypeId_pred != -1)
  {
    _NETRBNetworkCopy_cold_1();
  }

  Instance = _CFRuntimeCreateInstance();
  v6 = Instance;
  if (Instance)
  {
    v7 = _NETRBDeserializeNetworkConfig(a1, Instance + 16);
    if (v7)
    {
      CFRelease(v6);
      v6 = 0;
    }
  }

  else
  {
    NETRBErrorLog();
    v7 = 6003;
  }

  *a2 = v6;
  return v7;
}

uint64_t _NETRBNetworkGetIPv4Subnet(uint64_t result, _DWORD *a2, _DWORD *a3)
{
  *a2 = *(result + 44);
  *a3 = *(result + 48);
  return result;
}

__n128 _NETRBNetworkGetIPv6Prefix(uint64_t a1, __n128 *a2, _BYTE *a3)
{
  result = *(a1 + 60);
  *a2 = result;
  *a3 = *(a1 + 76);
  return result;
}

uint64_t __NETRBClientRelease(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    _Block_release(v2);
    *(a1 + 24) = 0;
  }

  v3 = *(a1 + 16);
  if (v3)
  {
    dispatch_release(v3);
    *(a1 + 16) = 0;
  }

  return NETRBInfoLog();
}

void notification_insert_keys(void *a1, xpc_object_t xdict)
{
  v17 = *MEMORY[0x277D85DE8];
  string = xpc_dictionary_get_string(xdict, netrbXPCMACAddress[0]);
  if (string)
  {
    xpc_dictionary_set_string(a1, netrbClientMACAddress, string);
  }

  *v16 = 0uLL;
  uuid = xpc_dictionary_get_uuid(xdict, netrbXPCMACUUID[0]);
  if (uuid)
  {
    *v16 = *uuid;
    xpc_dictionary_set_uuid(a1, netrbClientMACUUID, v16);
  }

  v6 = xpc_dictionary_dup_fd(xdict, netrbXPCInterfaceSocket[0]);
  if (v6 != -1)
  {
    xpc_dictionary_set_uint64(a1, netrbClientSocketFD, v6);
  }

  v7 = xpc_dictionary_get_string(xdict, netrbXPCStartAddress[0]);
  v8 = xpc_dictionary_get_string(xdict, netrbXPCEndAddress[0]);
  v9 = xpc_dictionary_get_string(xdict, netrbXPCNetworkMask[0]);
  if (v7)
  {
    v10 = v8 == 0;
  }

  else
  {
    v10 = 1;
  }

  if (!v10 && v9 != 0)
  {
    v12 = v9;
    xpc_dictionary_set_string(a1, netrbClientInterfaceStartAddress, v7);
    xpc_dictionary_set_string(a1, netrbClientInterfaceEndAddress, v8);
    xpc_dictionary_set_string(a1, netrbClientInterfaceNetworkMask, v12);
  }

  value = xpc_dictionary_get_value(xdict, netrbXPCInterfaceMTU[0]);
  if (value)
  {
    xpc_dictionary_set_value(a1, netrbClientInterfaceMTU[0], value);
  }

  v14 = xpc_dictionary_get_value(xdict, netrbXPCNat66Param[0]);
  if (v14)
  {
    xpc_dictionary_set_value(a1, netrbClientNat66Param, v14);
  }

  v15 = *MEMORY[0x277D85DE8];
}

void *__NETRBNetworkRelease(uint64_t a1)
{
  if (*(a1 + 152) == 1)
  {
    value = 0;
    if (__NETRBClientValidateClient(_NETRBNetworkClient))
    {
      NETRBErrorLog();
    }

    else
    {
      _NETRBSerializeNetwork(a1, &value);
      v2 = xpc_dictionary_create(0, 0, 0);
      xpc_dictionary_set_uint64(v2, netrbXPCKey[0], 0x401uLL);
      xpc_dictionary_set_string(v2, netrbXPCClientID[0], (_NETRBNetworkClient + 32));
      v3 = value;
      xpc_dictionary_set_value(v2, netrbXPCNetworkObject[0], value);
      NETRBXPCSetupAndSend(0, v2, &__block_literal_global_265);
      if (v2)
      {
        xpc_release(v2);
      }

      if (v3)
      {
        xpc_release(v3);
      }
    }
  }

  while (1)
  {
    v4 = *(a1 + 136);
    if (!v4)
    {
      break;
    }

    *(a1 + 136) = *v4;
    free(v4);
  }

  while (1)
  {
    result = *(a1 + 144);
    if (!result)
    {
      break;
    }

    *(a1 + 144) = *result;
    free(result);
  }

  return result;
}

void __NETRBInterfaceRelease(uint64_t a1)
{
  value = 0;
  if (__NETRBClientValidateClient(_NETRBNetworkClient) || !*(a1 + 56))
  {
    NETRBErrorLog();
  }

  else
  {
    v2 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_uint64(v2, netrbXPCKey[0], 0x3FFuLL);
    xpc_dictionary_set_string(v2, netrbXPCClientID[0], (_NETRBNetworkClient + 32));
    xpc_dictionary_set_uint64(v2, netrbXPCInterfaceId[0], *(a1 + 48));
    _NETRBSerializeNetwork(*(a1 + 56), &value);
    v3 = value;
    xpc_dictionary_set_value(v2, netrbXPCNetworkObject[0], value);
    NETRBXPCSetupAndSend(0, v2, &__block_literal_global_282);
    if (v2)
    {
      xpc_release(v2);
    }

    if (v3)
    {
      xpc_release(v3);
    }

    if (__NETRBNetworkGetServiceQueue_predNetworkQueue != -1)
    {
      ____NETRBNetworkCreateGlobalClient_block_invoke_cold_1();
    }

    dispatch_sync(__NETRBNetworkGetServiceQueue___networkServiceQueue, &__block_literal_global_285);
    v4 = *(a1 + 56);

    CFRelease(v4);
  }
}

uint64_t NETRBLogCreate()
{
  if (NETRBLogCreate_predLog != -1)
  {
    NETRBLogCreate_cold_1();
  }

  if (NETRBLogCreate_error)
  {
    return 12;
  }

  else
  {
    return 0;
  }
}

void __NETRBLogCreate_block_invoke()
{
  __netrbLog = os_log_create("com.apple.MobileInternetSharing", "framework.netrb");
  if (!__netrbLog)
  {
    NETRBLogCreate_error = 1;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      __NETRBLogCreate_block_invoke_cold_1();
    }
  }
}

uint64_t NETRBXPCEndPointCreate(dispatch_queue_t targetq)
{
  if (__netrbReceiverConnection)
  {
    NETRBDebugLog();
  }

  else
  {
    v2 = xpc_connection_create(0, targetq);
    __netrbReceiverConnection = v2;
    if (!v2)
    {
      NETRBErrorLog();
      return 0;
    }

    v3 = v2;
    NETRBInfoLog();
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 0x40000000;
    handler[2] = __NETRBXPCEndPointCreate_block_invoke;
    handler[3] = &__block_descriptor_tmp_72;
    handler[4] = v3;
    handler[5] = targetq;
    xpc_connection_set_event_handler(v3, handler);
    xpc_connection_resume(__netrbReceiverConnection);
  }

  return 1;
}

void __NETRBXPCEndPointCreate_block_invoke(uint64_t a1, void *a2)
{
  v4 = MEMORY[0x2743E7A80](a2);
  v5 = *(a1 + 32);
  if (v5 && (v5 == __netrbReceiverConnection ? (v6 = v4 == MEMORY[0x277D86480]) : (v6 = 0), v6))
  {
    if (a2 == MEMORY[0x277D86420] || a2 == MEMORY[0x277D863F8])
    {
      NETRBInfoLog();
    }
  }

  else if (v4 == MEMORY[0x277D86450])
  {
    v7 = *(a1 + 40);
    NETRBInfoLog();
    if (__netrbNotificationConnection)
    {
      xpc_connection_cancel(__netrbNotificationConnection);
      xpc_release(__netrbNotificationConnection);
      __netrbNotificationConnection = 0;
    }

    __netrbNotificationConnection = xpc_retain(a2);
    xpc_connection_set_target_queue(a2, v7);
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 0x40000000;
    handler[2] = ____NETRBXPCNewNotificationConnection_block_invoke;
    handler[3] = &__block_descriptor_tmp_86;
    handler[4] = a2;
    xpc_connection_set_event_handler(a2, handler);
    xpc_connection_resume(a2);
  }
}

BOOL NETRBXPCCreate(dispatch_queue_t targetq, uint64_t a2)
{
  if (__netrbConnection)
  {
    NETRBDebugLog();
    return 1;
  }

  __netrbConnection = xpc_connection_create_mach_service(netrbXPCService, targetq, 2uLL);
  if (!__netrbConnection)
  {
    goto LABEL_7;
  }

  if (MEMORY[0x2743E7A80]() != MEMORY[0x277D86450])
  {
    if (__netrbConnection)
    {
      xpc_release(__netrbConnection);
LABEL_8:
      result = 0;
      __netrbConnection = 0;
      return result;
    }

LABEL_7:
    NETRBErrorLog();
    goto LABEL_8;
  }

  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 0x40000000;
  handler[2] = __NETRBXPCCreate_block_invoke;
  handler[3] = &__block_descriptor_tmp_77;
  handler[4] = __netrbConnection;
  handler[5] = a2;
  xpc_connection_set_event_handler(__netrbConnection, handler);
  NETRBInfoLog();
  xpc_connection_resume(__netrbConnection);
  return __netrbConnection != 0;
}

void __NETRBXPCCreate_block_invoke(uint64_t a1, xpc_object_t object)
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 0x40000000;
  v4[2] = __NETRBXPCCreate_block_invoke_2;
  v4[3] = &__block_descriptor_tmp_76;
  v3 = *(a1 + 32);
  v4[4] = object;
  v4[5] = v3;
  xpc_retain(object);
  dispatch_async(*(a1 + 40), v4);
}

void __NETRBXPCCreate_block_invoke_2(uint64_t a1)
{
  if (MEMORY[0x2743E7A80](*(a1 + 32)) == MEMORY[0x277D86480])
  {
    if (*(a1 + 40) == __netrbConnection)
    {
      v3 = *(a1 + 40);
      xpc_dictionary_get_string(*(a1 + 32), *MEMORY[0x277D86400]);
      NETRBErrorLog();
      NETRBXPCCleanup();
    }
  }

  else
  {
    NETRBErrorLog();
  }

  v2 = *(a1 + 32);

  xpc_release(v2);
}

BOOL NETRBXPCCleanup()
{
  v0 = __netrbConnection;
  if (__netrbConnection)
  {
    NETRBInfoLog();
    xpc_connection_cancel(__netrbConnection);
    xpc_release(__netrbConnection);
    __netrbConnection = 0;
  }

  return v0 != 0;
}

BOOL NETRBXPCSetupAndSend(NSObject *a1, xpc_object_t xdict, uint64_t a3)
{
  if (xpc_dictionary_get_uint64(xdict, netrbXPCKey[0]) == 1000)
  {
    if (!__netrbReceiverConnection)
    {
      return 0;
    }

    xpc_dictionary_set_connection(xdict, netrbXPCClientComm, __netrbReceiverConnection);
  }

  if (a1)
  {
    v6 = __netrbConnection != 0;
    if (__netrbConnection)
    {
      handler[0] = MEMORY[0x277D85DD0];
      handler[1] = 0x40000000;
      handler[2] = ____NETRBXPCSendMessage_block_invoke;
      handler[3] = &unk_279ECC160;
      handler[4] = a3;
      xpc_connection_send_message_with_reply(__netrbConnection, xdict, a1, handler);
    }

    else
    {
      NETRBDebugLog();
    }

    return v6;
  }

  if (!__netrbConnection)
  {
    NETRBDebugLog();
    return 0;
  }

  v7 = xpc_connection_send_message_with_reply_sync(__netrbConnection, xdict);
  v8 = v7;
  v9 = MEMORY[0x277D86468];
  if (v7)
  {
    v10 = MEMORY[0x2743E7A80](v7);
    if (v10 != MEMORY[0x277D86480])
    {
      v11 = v10;
      if (v10 == v9)
      {
        if (xpc_dictionary_get_uint64(v8, netrbXPCResponse[0]) == 2002)
        {
          NETRBErrorLog();
          NETRBXPCCleanup();
        }

        v11 = MEMORY[0x277D86468];
      }

      else
      {
        NETRBErrorLog();
        NETRBXPCCleanup();
      }

      goto LABEL_18;
    }

    xpc_dictionary_get_string(v8, *MEMORY[0x277D86400]);
    NETRBErrorLog();
    NETRBXPCCleanup();
  }

  else
  {
    NETRBXPCCleanup();
    NETRBErrorLog();
  }

  v11 = MEMORY[0x277D86480];
LABEL_18:
  if (v11 == v9)
  {
    v12 = v8;
  }

  else
  {
    v12 = 0;
  }

  (*(a3 + 16))(a3, v12);
  if (v8)
  {
    xpc_release(v8);
  }

  return 1;
}

BOOL NETRBEndPointCleanup()
{
  v0 = __netrbReceiverConnection;
  if (__netrbReceiverConnection)
  {
    NETRBInfoLog();
    xpc_connection_cancel(__netrbReceiverConnection);
    xpc_release(__netrbReceiverConnection);
    __netrbReceiverConnection = 0;
  }

  return v0 != 0;
}

uint64_t _MISAttach(void *a1)
{
  if (!a1)
  {
    return 22;
  }

  if (__MISDGetQueue_predQueue != -1)
  {
    _MISAttach_cold_1();
  }

  v2 = __MISDGetQueue___misdQueue;
  if (!__MISDGetQueue___misdQueue)
  {
    return 12;
  }

  *a1 = 0;
  v3 = _NETRBClientCreate(v2, &__block_literal_global_2, 0);
  if (!v3)
  {
    return 12;
  }

  v4 = v3;
  result = 0;
  *a1 = v4;
  return result;
}

uint64_t _MISDetach(uint64_t a1)
{
  v1 = 22;
  if (a1)
  {
    if (_NETRBClientDestroy(a1))
    {
      return 0;
    }

    else
    {
      return 22;
    }
  }

  return v1;
}

uint64_t _MISIsServiceAvailable(uint64_t result)
{
  if (result)
  {
    v1 = result;
    v4 = 0;
    result = _NETRBClientGetGlobalServiceState(result, &v4 + 1, &v4);
    if (result)
    {
      if (HIDWORD(v4) == 1022)
      {
        return 0;
      }

      if (HIDWORD(v4) == 1023)
      {
        return 1;
      }

      result = xpc_dictionary_create(0, 0, 0);
      if (result)
      {
        v2 = result;
        xpc_dictionary_set_uint64(result, netrbClientDeviceType[0], 1uLL);
        started = _NETRBClientStartService(v1, 0, 201, 301, v2);
        xpc_release(v2);
        if (started)
        {
          result = _NETRBClientGetGlobalServiceState(v1, &v4 + 1, &v4);
          if (result)
          {
            return HIDWORD(v4) == 1023;
          }

          return result;
        }

        return 0;
      }
    }
  }

  return result;
}

uint64_t _MISGetGlobalServiceState(uint64_t a1, _DWORD *a2, int *a3)
{
  v5 = 0;
  v3 = 22;
  if (a1)
  {
    if (!a3)
    {
      a3 = &v5;
    }

    if (_NETRBClientGetGlobalServiceState(a1, a2, a3))
    {
      return 0;
    }

    else
    {
      return 22;
    }
  }

  return v3;
}

uint64_t _MISGetDynamicStoreKey(uint64_t a1, char *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  if (a1 && (memset(v5, 0, sizeof(v5)), _NETRBClientGetDynamicStoreKey(a1, v5)))
  {
    snprintf(a2, 0x100uLL, "%s", v5);
    result = 0;
  }

  else
  {
    result = 22;
  }

  v4 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t _MISSetGlobalServiceState(uint64_t a1, int a2)
{
  v2 = 22;
  if (a1)
  {
    if (_NETRBClientSetGlobalServiceState(a1, a2))
    {
      return 0;
    }

    else
    {
      return 22;
    }
  }

  return v2;
}

uint64_t _MISStartServiceDHCP(uint64_t a1, const char *a2, _OWORD *a3)
{
  if (!a1)
  {
    return 22;
  }

  a3[14] = 0u;
  a3[15] = 0u;
  a3[12] = 0u;
  a3[13] = 0u;
  a3[10] = 0u;
  a3[11] = 0u;
  a3[8] = 0u;
  a3[9] = 0u;
  a3[6] = 0u;
  a3[7] = 0u;
  a3[4] = 0u;
  a3[5] = 0u;
  a3[2] = 0u;
  a3[3] = 0u;
  *a3 = 0u;
  a3[1] = 0u;
  v5 = xpc_dictionary_create(0, 0, 0);
  if (!v5)
  {
    return 12;
  }

  v6 = v5;
  xpc_dictionary_set_string(v5, netrbClientInterfaceName[0], a2);
  v7 = netrbClientDeviceType[0];
  v8 = strlen(a2);
  if (!strncmp("ap1", a2, v8))
  {
    v9 = 3;
  }

  else
  {
    v9 = 0;
  }

  xpc_dictionary_set_uint64(v6, v7, v9);
  started = _NETRBClientStartService(a1, 0, 201, 302, v6);
  xpc_release(v6);
  if (started)
  {
    return 0;
  }

  else
  {
    return 22;
  }
}

uint64_t _MISStartServiceDHCPLocal(uint64_t a1, const char *a2, _OWORD *a3)
{
  if (!a1)
  {
    return 22;
  }

  a3[14] = 0u;
  a3[15] = 0u;
  a3[12] = 0u;
  a3[13] = 0u;
  a3[10] = 0u;
  a3[11] = 0u;
  a3[8] = 0u;
  a3[9] = 0u;
  a3[6] = 0u;
  a3[7] = 0u;
  a3[4] = 0u;
  a3[5] = 0u;
  a3[2] = 0u;
  a3[3] = 0u;
  *a3 = 0u;
  a3[1] = 0u;
  v5 = xpc_dictionary_create(0, 0, 0);
  if (!v5)
  {
    return 12;
  }

  v6 = v5;
  xpc_dictionary_set_string(v5, netrbClientInterfaceName[0], a2);
  v7 = netrbClientDeviceType[0];
  v8 = strlen(a2);
  if (!strncmp("ap1", a2, v8))
  {
    v9 = 3;
  }

  else
  {
    v9 = 0;
  }

  xpc_dictionary_set_uint64(v6, v7, v9);
  started = _NETRBClientStartService(a1, 0, 203, 302, v6);
  xpc_release(v6);
  if (started)
  {
    return 0;
  }

  else
  {
    return 22;
  }
}

uint64_t _MISStartServiceDHCPCustom(uint64_t a1, const char *a2, unsigned int a3, unsigned int a4, int a5, _OWORD *a6)
{
  if (!a1)
  {
    return 22;
  }

  a6[14] = 0u;
  a6[15] = 0u;
  a6[12] = 0u;
  a6[13] = 0u;
  a6[10] = 0u;
  a6[11] = 0u;
  a6[8] = 0u;
  a6[9] = 0u;
  a6[6] = 0u;
  a6[7] = 0u;
  a6[4] = 0u;
  a6[5] = 0u;
  a6[2] = 0u;
  a6[3] = 0u;
  *a6 = 0u;
  a6[1] = 0u;
  v11 = xpc_dictionary_create(0, 0, 0);
  if (!v11)
  {
    return 12;
  }

  v12 = v11;
  xpc_dictionary_set_string(v11, netrbClientInterfaceName[0], a2);
  xpc_dictionary_set_uint64(v12, netrbClientInterfaceMTU[0], a3);
  xpc_dictionary_set_uint64(v12, netrbClientInterfaceInstance[0], a4);
  v13 = netrbClientDeviceType[0];
  v14 = strlen(a2);
  if (!strncmp("ap1", a2, v14))
  {
    v15 = 3;
  }

  else
  {
    v15 = 0;
  }

  xpc_dictionary_set_uint64(v12, v13, v15);
  if (a5 == 1)
  {
    v16 = 203;
  }

  else
  {
    v16 = 201;
  }

  started = _NETRBClientStartService(a1, 0, v16, 302, v12);
  xpc_release(v12);
  if (started)
  {
    return 0;
  }

  else
  {
    return 22;
  }
}

uint64_t _MISStartServiceDHCPWithOptions(uint64_t a1, const char *a2, unsigned int a3, unsigned int a4, unsigned int a5, int a6, uint64_t a7, uint64_t a8, _OWORD *a9)
{
  if (!a1)
  {
    return 22;
  }

  a9[14] = 0u;
  a9[15] = 0u;
  a9[12] = 0u;
  a9[13] = 0u;
  a9[10] = 0u;
  a9[11] = 0u;
  a9[8] = 0u;
  a9[9] = 0u;
  a9[6] = 0u;
  a9[7] = 0u;
  a9[4] = 0u;
  a9[5] = 0u;
  a9[2] = 0u;
  a9[3] = 0u;
  *a9 = 0u;
  a9[1] = 0u;
  v15 = xpc_dictionary_create(0, 0, 0);
  if (!v15)
  {
    return 12;
  }

  v16 = v15;
  xpc_dictionary_set_string(v15, netrbClientInterfaceName[0], a2);
  xpc_dictionary_set_uint64(v16, netrbClientDeviceType[0], a3);
  xpc_dictionary_set_uint64(v16, netrbClientInterfaceMTU[0], a4);
  xpc_dictionary_set_uint64(v16, netrbClientInterfaceInstance[0], a5);
  if (a6 == 1)
  {
    v17 = 203;
  }

  else
  {
    v17 = 201;
  }

  started = _NETRBClientStartService(a1, 0, v17, 302, v16);
  xpc_release(v16);
  if (started)
  {
    return 0;
  }

  else
  {
    return 22;
  }
}

uint64_t _MISStopService(uint64_t a1)
{
  v1 = 22;
  if (a1)
  {
    if (_NETRBClientStopService(a1))
    {
      return 0;
    }

    else
    {
      return 22;
    }
  }

  return v1;
}

uint64_t _MISSetFixtureForwardedPorts(uint64_t a1, unsigned int a2, unsigned int a3)
{
  if (!a1)
  {
    return 22;
  }

  v6 = xpc_dictionary_create(0, 0, 0);
  if (!v6)
  {
    return 12;
  }

  v7 = v6;
  xpc_dictionary_set_uint64(v6, netrbClientForwardedLowPort[0], a2);
  xpc_dictionary_set_uint64(v7, netrbClientForwardedHighPort[0], a3);
  v8 = _NETRBClientSetFixtureForwardedPorts(a1, v7);
  xpc_release(v7);
  if (v8)
  {
    return 0;
  }

  else
  {
    return 22;
  }
}

uint64_t _MISGetFixtureForwardedPorts(void *a1, _WORD *a2, _WORD *a3)
{
  if (!a1)
  {
    return 22;
  }

  v5 = _NETRBClientCopyFixtureForwardedPorts(a1);
  if (!v5)
  {
    return 22;
  }

  v6 = v5;
  if (MEMORY[0x2743E7A80]() != MEMORY[0x277D86468])
  {
    return 22;
  }

  *a2 = xpc_dictionary_get_uint64(v6, netrbClientForwardedLowPort[0]);
  uint64 = xpc_dictionary_get_uint64(v6, netrbClientForwardedHighPort[0]);
  result = 0;
  *a3 = uint64;
  return result;
}

uint64_t _MISIsAllowedMoreHost(uint64_t a1)
{
  if (a1)
  {
    return _NETRBClientIsAllowedMoreHost(a1);
  }

  else
  {
    return 22;
  }
}

uint64_t _MISAddHost(uint64_t a1, int a2)
{
  v2 = 22;
  if (a1)
  {
    if ((a2 - 1) < 5)
    {
      v3 = a2 + 1;
    }

    else
    {
      v3 = 0;
    }

    if (_NETRBClientAddHost(a1, v3))
    {
      return 0;
    }

    else
    {
      return 22;
    }
  }

  return v2;
}

uint64_t _MISRemoveHost(uint64_t a1, int a2)
{
  v2 = 22;
  if (a1)
  {
    if ((a2 - 1) < 5)
    {
      v3 = a2 + 1;
    }

    else
    {
      v3 = 0;
    }

    if (_NETRBClientRemoveHost(a1, v3))
    {
      return 0;
    }

    else
    {
      return 22;
    }
  }

  return v2;
}

uint64_t _MISGetHostCount(uint64_t a1, _DWORD *a2, _DWORD *a3)
{
  v3 = 22;
  if (a1)
  {
    if (_NETRBClientGetHostCount(a1, a2, a3))
    {
      return 0;
    }

    else
    {
      return 22;
    }
  }

  return v3;
}

uint64_t _MISSetHostCount(uint64_t a1, int a2, int a3)
{
  v3 = 22;
  if (a1)
  {
    if ((a2 - 1) < 5)
    {
      v4 = a2 + 1;
    }

    else
    {
      v4 = 0;
    }

    if (_NETRBClientSetHostCount(a1, v4, a3))
    {
      return 0;
    }

    else
    {
      return 22;
    }
  }

  return v3;
}

uint64_t _MISGetExt(uint64_t a1, char *a2)
{
  v5[2] = *MEMORY[0x277D85DE8];
  if (a1 && (v5[0] = 0, v5[1] = 0, _NETRBClientGetExtName(a1, v5)))
  {
    snprintf(a2, 0x10uLL, "%s", v5);
    result = 0;
  }

  else
  {
    result = 22;
  }

  v4 = *MEMORY[0x277D85DE8];
  return result;
}

BOOL __isOSVersionAtLeast(int a1, int a2, int a3)
{
  if (qword_280945D70 == -1)
  {
    v3 = _MergedGlobals < a1;
    if (_MergedGlobals > a1)
    {
      return 1;
    }
  }

  else
  {
    v5 = a3;
    v6 = a2;
    __isOSVersionAtLeast_cold_1();
    a2 = v6;
    a3 = v5;
    v3 = _MergedGlobals < a1;
    if (_MergedGlobals > a1)
    {
      return 1;
    }
  }

  if (v3)
  {
    return 0;
  }

  if (dword_280945D64 > a2)
  {
    return 1;
  }

  if (dword_280945D64 < a2)
  {
    return 0;
  }

  return dword_280945D68 >= a3;
}

uint64_t __isPlatformVersionAtLeast(uint64_t a1, int a2, int a3, int a4)
{
  v16 = *MEMORY[0x277D85DE8];
  if (qword_280945D78 == -1)
  {
    if (qword_280945D80)
    {
LABEL_3:
      result = _availability_version_check();
      v5 = *MEMORY[0x277D85DE8];
      return result;
    }
  }

  else
  {
    v6 = a4;
    v7 = a3;
    v8 = a2;
    __isPlatformVersionAtLeast_cold_1();
    a2 = v8;
    a3 = v7;
    a4 = v6;
    if (qword_280945D80)
    {
      goto LABEL_3;
    }
  }

  if (qword_280945D70 != -1)
  {
    v13 = a4;
    v14 = a3;
    v15 = a2;
    __isOSVersionAtLeast_cold_1();
    a3 = v14;
    a4 = v13;
    v9 = _MergedGlobals < v15;
    if (_MergedGlobals > v15)
    {
      goto LABEL_11;
    }

LABEL_7:
    if (!v9)
    {
      if (dword_280945D64 > a3)
      {
        goto LABEL_11;
      }

      if (dword_280945D64 >= a3)
      {
        result = dword_280945D68 >= a4;
        v12 = *MEMORY[0x277D85DE8];
        return result;
      }
    }

    result = 0;
    v10 = *MEMORY[0x277D85DE8];
    return result;
  }

  v9 = _MergedGlobals < a2;
  if (_MergedGlobals <= a2)
  {
    goto LABEL_7;
  }

LABEL_11:
  result = 1;
  v11 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t _initializeAvailabilityCheck(unint64_t result)
{
  v30 = *MEMORY[0x277D85DE8];
  v1 = qword_280945D80;
  if (qword_280945D80)
  {
    v2 = result == 0;
  }

  else
  {
    v2 = 0;
  }

  if (!v2)
  {
    if (MEMORY[0x28223BE68])
    {
      v1 = MEMORY[0x28223BE68];
      qword_280945D80 = MEMORY[0x28223BE68];
    }

    if (v1)
    {
      v3 = result == 0;
    }

    else
    {
      v3 = 0;
    }

    if (!v3)
    {
      result = dlsym(0xFFFFFFFFFFFFFFFELL, "kCFAllocatorNull");
      if (result)
      {
        v4 = *result;
        result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFDataCreateWithBytesNoCopy");
        if (result)
        {
          v5 = result;
          v6 = dlsym(0xFFFFFFFFFFFFFFFELL, "CFPropertyListCreateWithData");
          result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFPropertyListCreateFromXMLData");
          if (v6 | result)
          {
            v7 = result;
            result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringCreateWithCStringNoCopy");
            if (result)
            {
              v8 = result;
              result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFDictionaryGetValue");
              if (result)
              {
                v9 = result;
                result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFGetTypeID");
                if (result)
                {
                  v10 = result;
                  result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringGetTypeID");
                  if (result)
                  {
                    v11 = result;
                    result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringGetCString");
                    v28 = result;
                    if (result)
                    {
                      result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFRelease");
                      if (result)
                      {
                        v12 = result;
                        result = fopen("/System/Library/CoreServices/SystemVersion.plist", "r");
                        if (result)
                        {
                          v13 = result;
                          v27 = v12;
                          fseek(result, 0, 2);
                          v14 = MEMORY[0x2743E6F30](v13);
                          if (v14 < 0)
                          {
                            v16 = 0;
                          }

                          else
                          {
                            v15 = v14;
                            rewind(v13);
                            v16 = malloc(v15);
                            if (v16)
                            {
                              v26 = v16;
                              if (fread(v16, 1uLL, v15, v13) == v15 && (v17 = v5(0, v26, v15, v4)) != 0)
                              {
                                v18 = v17;
                                if (v6)
                                {
                                  v19 = (v6)(0, v17, 0, 0, 0);
                                }

                                else
                                {
                                  v19 = v7(0, v17, 0, 0);
                                }

                                v20 = v19;
                                if (v19)
                                {
                                  v21 = v8(0, "ProductVersion", 1536, v4);
                                  if (v21)
                                  {
                                    v22 = v21;
                                    v23 = v9(v20, v21);
                                    (v27)(v22);
                                    if (v23)
                                    {
                                      v24 = v10(v23);
                                      if (v24 == v11())
                                      {
                                        if (v28(v23, v29, 32, 134217984))
                                        {
                                          sscanf(v29, "%d.%d.%d", &_MergedGlobals, &dword_280945D64, &dword_280945D68);
                                        }
                                      }
                                    }
                                  }

                                  (v27)(v20);
                                }

                                (v27)(v18);
                                v16 = v26;
                              }

                              else
                              {
                                v16 = v26;
                              }
                            }
                          }

                          free(v16);
                          result = fclose(v13);
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  v25 = *MEMORY[0x277D85DE8];
  return result;
}

void WiFiDisableMISState_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = _initWSKLOG();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_0(&dword_274093000, v1, v2, "failed to create MIS session with err=%d", v3, v4, v5, v6, 0);
  }

  v7 = *MEMORY[0x277D85DE8];
}

void WiFiDisableMISState_cold_2()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = _initWSKLOG();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_0(&dword_274093000, v1, v2, "Failed to turn off Personal Hotspot with err=%d", v3, v4, v5, v6, 0);
  }

  v7 = *MEMORY[0x277D85DE8];
}

void WiFiDisableMISState_cold_3()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = _initWSKLOG();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_0(&dword_274093000, v1, v2, "Failed to re-enable Personal Hotspot with err=%d", v3, v4, v5, v6, 0);
  }

  v7 = *MEMORY[0x277D85DE8];
}

void WiFiManagerSetAutoJoinEnabled_cold_1(char a1, NSObject *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = 136315394;
  v4 = "WiFiManagerSetAutoJoinEnabled";
  v5 = 1024;
  v6 = a1 & 1;
  _os_log_error_impl(&dword_274093000, a2, OS_LOG_TYPE_ERROR, "%s: setting auto join enabled=%d", &v3, 0x12u);
  v2 = *MEMORY[0x277D85DE8];
}