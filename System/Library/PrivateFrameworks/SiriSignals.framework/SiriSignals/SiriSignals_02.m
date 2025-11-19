unint64_t sub_2314BD080(unint64_t result)
{
  if (result >= 2)
  {
  }

  return result;
}

uint64_t sub_2314BD0D0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StreamedEventsAggregator.AppEvent(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2314BD14C(uint64_t a1)
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

id *sub_2314BD1F0()
{
  v1 = *v0;

  (*(*(v1[10] - 8) + 8))(v0 + *(*v0 + 12));
  return v0;
}

uint64_t sub_2314BD270()
{
  sub_2314BD1F0();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_2314BD310()
{

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

uint64_t sub_2314BD36C()
{
  sub_231586954();
  MEMORY[0x23192FF80](0xD00000000000002FLL, 0x8000000231590980);
  sub_231584C88();
  v1 = v0;
  v2 = [v0 description];
  v3 = sub_2315861A4();
  v5 = v4;

  MEMORY[0x23192FF80](v3, v5);

  MEMORY[0x23192FF80](0x61756C617665202CLL, 0xEE00203A6E6F6974);
  sub_231584DA8();
  v7 = v6;
  v8 = [v6 description];
  v9 = sub_2315861A4();
  v11 = v10;

  MEMORY[0x23192FF80](v9, v11);

  MEMORY[0x23192FF80](0x6261626F7270202CLL, 0xEF203A7974696C69);
  sub_231584D18();
  v13 = v12;
  v14 = [v12 description];
  v15 = sub_2315861A4();
  v17 = v16;

  MEMORY[0x23192FF80](v15, v17);

  return 0;
}

uint64_t sub_2314BD540(uint64_t a1)
{
  result = sub_2314BD5C8(&qword_280D6D5E8);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2314BD584(uint64_t a1)
{
  result = sub_2314BD5C8(&qword_280D6D5F0);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2314BD5C8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for AudioMegamodelOutput();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t AudioAppSignals.timestamp.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC11SiriSignals15AudioAppSignals_timestamp;
  v4 = sub_231585884();
  v5 = OUTLINED_FUNCTION_8(v4);
  v7 = *(v6 + 16);

  return v7(a1, v1 + v3, v5);
}

uint64_t AudioAppSignals.__allocating_init(candidateAppBundleIds:signalValues:apps:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_231585884();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  OUTLINED_FUNCTION_5();
  v10 = v9 - v8;
  sub_2314E0530(v9 - v8);
  v11 = type metadata accessor for AudioAppSignals();
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  v14 = swift_allocObject();
  AudioAppSignals.init(version:candidateAppBundleIds:signalValues:timestamp:apps:)(2, a1, a2, v10, a3);
  return v14;
}

uint64_t AudioAppSignals.__allocating_init(version:candidateAppBundleIds:signalValues:timestamp:apps:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(v5 + 48);
  v12 = *(v5 + 52);
  v13 = swift_allocObject();
  AudioAppSignals.init(version:candidateAppBundleIds:signalValues:timestamp:apps:)(a1, a2, a3, a4, a5);
  return v13;
}

uint64_t type metadata accessor for AudioAppSignals()
{
  result = qword_280D6E9C8;
  if (!qword_280D6E9C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

char *AudioAppSignals.init(version:candidateAppBundleIds:signalValues:timestamp:apps:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 2) = a1;
  *(v5 + 3) = a2;
  *(v5 + 4) = a3;
  v8 = OBJC_IVAR____TtC11SiriSignals15AudioAppSignals_timestamp;
  v9 = sub_231585884();
  OUTLINED_FUNCTION_8(v9);
  (*(v10 + 32))(&v5[v8], a4);
  *&v5[OBJC_IVAR____TtC11SiriSignals15AudioAppSignals_apps] = a5;
  return v5;
}

uint64_t sub_2314BD898()
{
  sub_231586954();
  OUTLINED_FUNCTION_12();
  MEMORY[0x23192FF80]();
  v8 = v0[2];
  v1 = sub_231586C24();
  MEMORY[0x23192FF80](v1);

  OUTLINED_FUNCTION_12();
  MEMORY[0x23192FF80]();
  v2 = MEMORY[0x231930080](v0[3], MEMORY[0x277D837D0]);
  MEMORY[0x23192FF80](v2);

  OUTLINED_FUNCTION_12();
  MEMORY[0x23192FF80](0xD000000000000010);
  v3 = v0[4];
  v4 = sub_2315860E4();
  MEMORY[0x23192FF80](v4);

  MEMORY[0x23192FF80](0x7473656D6974202CLL, 0xED0000203A706D61);
  sub_231585884();
  OUTLINED_FUNCTION_0_6();
  sub_2314AA758(v5);
  v6 = sub_231586C24();
  MEMORY[0x23192FF80](v6);

  OUTLINED_FUNCTION_12();
  MEMORY[0x23192FF80]();
  v9 = *(v0 + OBJC_IVAR____TtC11SiriSignals15AudioAppSignals_apps);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B190, &qword_2315886F0);
  sub_231586A54();
  MEMORY[0x23192FF80](32032, 0xE200000000000000);
  return 0;
}

uint64_t sub_2314BDAC8()
{
  v0 = sub_2315861F4();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  OUTLINED_FUNCTION_5();
  v2 = sub_231585664();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  sub_231585654();
  type metadata accessor for AudioAppSignals();
  OUTLINED_FUNCTION_5_5();
  sub_2314AA758(v5);
  v6 = sub_231585644();

  sub_2315861E4();
  sub_2315861C4();
  if (v7)
  {
    if (qword_280D70420 != -1)
    {
      OUTLINED_FUNCTION_6_0();
    }

    v8 = sub_231585FF4();
    __swift_project_value_buffer(v8, qword_280D72248);

    v9 = sub_231585FE4();
    v10 = sub_2315865D4();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      *v11 = 136315138;
      v12 = sub_2314A22E8();

      *(v11 + 4) = v12;
      _os_log_impl(&dword_231496000, v9, v10, "AudioAppSignalsSyncer#encode storing encoded signals %s", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v14);
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_10();
    }

    else
    {
    }
  }

  return v6;
}

uint64_t AudioAppSignals.__allocating_init(from:)()
{
  v0 = sub_2315861F4();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  OUTLINED_FUNCTION_5();
  v2 = sub_231585884();
  v3 = OUTLINED_FUNCTION_4_1(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_5();
  v10 = v9 - v8;
  v11 = sub_231585634();
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  swift_allocObject();
  sub_231585624();
  v14 = type metadata accessor for AudioAppSignals();
  OUTLINED_FUNCTION_5_5();
  sub_2314AA758(v15);
  sub_231585614();

  v16 = v27[2];
  v17 = v27[3];
  v18 = v27[4];
  (*(v5 + 16))(v10, v27 + OBJC_IVAR____TtC11SiriSignals15AudioAppSignals_timestamp, v2);
  v19 = *(v27 + OBJC_IVAR____TtC11SiriSignals15AudioAppSignals_apps);
  if (v19)
  {
    v20 = *(v27 + OBJC_IVAR____TtC11SiriSignals15AudioAppSignals_apps);
  }

  else
  {
    v19 = MEMORY[0x277D84F90];
  }

  v21 = OUTLINED_FUNCTION_7_5();
  sub_2314BEE4C(v21, v22);

  v23 = *(v14 + 48);
  v24 = *(v14 + 52);
  v25 = swift_allocObject();
  AudioAppSignals.init(version:candidateAppBundleIds:signalValues:timestamp:apps:)(v16, v17, v18, v10, v19);
  return v25;
}

uint64_t sub_2314BE1C0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E6F6973726576 && a2 == 0xE700000000000000;
  if (v4 || (sub_231586C44() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000015 && 0x8000000231590A60 == a2;
    if (v6 || (sub_231586C44() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x61566C616E676973 && a2 == 0xEC0000007365756CLL;
      if (v7 || (sub_231586C44() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x6D617473656D6974 && a2 == 0xE900000000000070;
        if (v8 || (sub_231586C44() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 1936748641 && a2 == 0xE400000000000000)
        {

          return 4;
        }

        else
        {
          v10 = sub_231586C44();

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

unint64_t sub_2314BE37C(char a1)
{
  result = 0x6E6F6973726576;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000015;
      break;
    case 2:
      result = 0x61566C616E676973;
      break;
    case 3:
      result = 0x6D617473656D6974;
      break;
    case 4:
      result = 1936748641;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_2314BE428@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2314BE1C0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2314BE450@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2314BE374();
  *a1 = result;
  return result;
}

uint64_t sub_2314BE478(uint64_t a1)
{
  v2 = sub_2314BEF0C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2314BE4B4(uint64_t a1)
{
  v2 = sub_2314BEF0C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AudioAppSignals.deinit()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  v3 = OBJC_IVAR____TtC11SiriSignals15AudioAppSignals_timestamp;
  v4 = sub_231585884();
  OUTLINED_FUNCTION_8(v4);
  (*(v5 + 8))(v0 + v3);
  v6 = *(v0 + OBJC_IVAR____TtC11SiriSignals15AudioAppSignals_apps);

  return v0;
}

uint64_t AudioAppSignals.__deallocating_deinit()
{
  AudioAppSignals.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_2314BE5C0(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B198, &qword_2315886F8);
  v6 = OUTLINED_FUNCTION_4_1(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2314BEF0C();
  sub_231586D64();
  v12 = v3[2];
  sub_231586BF4();
  if (!v2)
  {
    v18 = v3[3];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B0E8, &unk_231589320);
    sub_2314BEFB4(&qword_280D6C6C8);
    OUTLINED_FUNCTION_2_4();
    sub_231586C04();
    v19 = v3[4];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B1A0, &qword_231588700);
    sub_2314BF01C(&unk_280D6C6E8);
    OUTLINED_FUNCTION_2_4();
    sub_231586C04();
    sub_231585884();
    OUTLINED_FUNCTION_0_6();
    sub_2314AA758(v13);
    sub_231586C04();
    v20 = *(v3 + OBJC_IVAR____TtC11SiriSignals15AudioAppSignals_apps);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B1A8, &qword_231588708);
    sub_2314BF0F0(&unk_280D6C6D8);
    OUTLINED_FUNCTION_2_4();
    sub_231586BC4();
  }

  v14 = *(v8 + 8);
  v15 = OUTLINED_FUNCTION_7_5();
  return v16(v15);
}

uint64_t AudioAppSignals.__allocating_init(from:)(uint64_t *a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  AudioAppSignals.init(from:)(a1);
  return v5;
}

void *AudioAppSignals.init(from:)(uint64_t *a1)
{
  v3 = sub_231585884();
  v4 = OUTLINED_FUNCTION_4_1(v3);
  v29 = v5;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_5();
  v10 = v9 - v8;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B1B0, &qword_231588710);
  v12 = OUTLINED_FUNCTION_4_1(v11);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v28 - v15;
  v18 = a1[3];
  v17 = a1[4];
  v32 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v18);
  sub_2314BEF0C();
  v30 = v16;
  sub_231586D54();
  if (v1)
  {
    v23 = v31;
    type metadata accessor for AudioAppSignals();
    v20 = *(*v23 + 48);
    v21 = *(*v23 + 52);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v28 = v10;
    LOBYTE(v34) = 0;
    v19 = sub_231586B74();
    v23 = v31;
    v31[2] = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B0E8, &unk_231589320);
    v33 = 1;
    sub_2314BEFB4(&qword_280D6C6C0);
    OUTLINED_FUNCTION_9_3();
    sub_231586B84();
    v23[3] = v34;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B1A0, &qword_231588700);
    v33 = 2;
    sub_2314BF01C(&unk_280D6C6E0);
    OUTLINED_FUNCTION_9_3();
    sub_231586B84();
    v23[4] = v34;
    LOBYTE(v34) = 3;
    OUTLINED_FUNCTION_0_6();
    sub_2314AA758(v24);
    v25 = v28;
    sub_231586B84();
    (*(v29 + 32))(v23 + OBJC_IVAR____TtC11SiriSignals15AudioAppSignals_timestamp, v25, v3);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B1A8, &qword_231588708);
    v33 = 4;
    sub_2314BF0F0(&unk_280D6C6D0);
    OUTLINED_FUNCTION_9_3();
    sub_231586B44();
    v26 = OUTLINED_FUNCTION_6_5();
    v27(v26);
    *(v23 + OBJC_IVAR____TtC11SiriSignals15AudioAppSignals_apps) = v34;
  }

  __swift_destroy_boxed_opaque_existential_1(v32);
  return v23;
}

uint64_t sub_2314BEDD8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = AudioAppSignals.__allocating_init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_2314BEE4C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_2314BEEA4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD5B410, &unk_2315890B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_2314BEF0C()
{
  result = qword_280D6E9F8;
  if (!qword_280D6E9F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D6E9F8);
  }

  return result;
}

unint64_t sub_2314BEF60()
{
  result = qword_280D701C8;
  if (!qword_280D701C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D701C8);
  }

  return result;
}

unint64_t sub_2314BEFB4(uint64_t a1)
{
  result = OUTLINED_FUNCTION_11_4(a1);
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DD5B0E8, &unk_231589320);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_2314BF01C(uint64_t a1)
{
  result = OUTLINED_FUNCTION_11_4(a1);
  if (!result)
  {
    v4 = v3;
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DD5B1A0, &qword_231588700);
    v4();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_2314BF09C()
{
  result = qword_280D701C0;
  if (!qword_280D701C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D701C0);
  }

  return result;
}

unint64_t sub_2314BF0F0(uint64_t a1)
{
  result = OUTLINED_FUNCTION_11_4(a1);
  if (!result)
  {
    v4 = v3;
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DD5B1A8, &qword_231588708);
    sub_2314AA758(v4);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

uint64_t sub_2314BF190()
{
  result = sub_231585884();
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

uint64_t getEnumTagSinglePayload for AudioAppSignals.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

_BYTE *storeEnumTagSinglePayload for AudioAppSignals.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_2314BF484()
{
  result = qword_27DD5B1B8;
  if (!qword_27DD5B1B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD5B1B8);
  }

  return result;
}

unint64_t sub_2314BF4DC()
{
  result = qword_280D6E9E8;
  if (!qword_280D6E9E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D6E9E8);
  }

  return result;
}

unint64_t sub_2314BF534()
{
  result = qword_280D6E9F0;
  if (!qword_280D6E9F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D6E9F0);
  }

  return result;
}

uint64_t AudioAppSignalsCollector.AudioSignalCollectorError.hashValue.getter()
{
  v1 = *v0;
  sub_231586D14();
  MEMORY[0x231930A00](v1);
  return sub_231586D44();
}

unint64_t sub_2314BF620()
{
  result = qword_27DD5B1C0;
  if (!qword_27DD5B1C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD5B1C0);
  }

  return result;
}

uint64_t sub_2314BF680(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 17))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 <= 1)
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

uint64_t sub_2314BF6C0(uint64_t result, unsigned int a2, unsigned int a3)
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

_BYTE *_s25AudioSignalCollectorErrorOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

void *AudioAppSignalsCollector.__allocating_init()()
{
  type metadata accessor for MultiUserConnectionProvider();
  v0 = swift_allocObject();
  *(v0 + 16) = [objc_allocWithZone(MEMORY[0x277CEF318]) init];
  v4[3] = type metadata accessor for LSApplicationRecordProvider();
  v4[4] = &off_284613270;
  v4[0] = swift_allocObject();
  sub_2314BF8FC(v4, v3);
  v1 = sub_2314C197C(v0, v3, sub_2314BF8BC, 0);
  sub_2314C1BE4(v4);
  return v1;
}

void *sub_2314BF8BC(uint64_t a1, uint64_t a2)
{
  v3 = sub_231522034(a1);
  v4 = sub_2314C1464(v3, a2);

  return v4;
}

void sub_2314BF958(uint64_t *a1, void (*a2)(void), uint64_t a3)
{
  v7 = *a1;
  v6 = a1[1];
  v8 = *(a1 + 16);
  v9 = v3[16];
  __swift_project_boxed_opaque_existential_1(v3 + 12, v3[15]);
  v10 = OUTLINED_FUNCTION_5_6();
  if (v11(v10))
  {
    if (v8)
    {
      if (qword_280D701B8 != -1)
      {
        swift_once();
      }

      __swift_project_boxed_opaque_existential_1(qword_280D72218, qword_280D72230);
      v12 = OUTLINED_FUNCTION_5_6();
      if (v13(v12))
      {
        OUTLINED_FUNCTION_4_2();
        OUTLINED_FUNCTION_3_6();

        sub_2314C09FC(v14, v15, v16, v17);
      }

      else
      {
        OUTLINED_FUNCTION_4_2();
        OUTLINED_FUNCTION_3_6();

        sub_2314C0198(v31, v32, v33, v34);
      }
    }

    else
    {
      v26 = swift_allocObject();
      v26[2] = v3;
      v26[3] = v7;
      v26[4] = v6;
      v26[5] = a2;
      v26[6] = a3;

      OUTLINED_FUNCTION_4_2();
      sub_2314C1C9C();

      v27 = OUTLINED_FUNCTION_4_2();
      sub_2314C14C8(v27, v28, v29, v26);
      OUTLINED_FUNCTION_3_6();
    }
  }

  else
  {
    if (qword_280D70420 != -1)
    {
      swift_once();
    }

    v19 = sub_231585FF4();
    __swift_project_value_buffer(v19, qword_280D72248);
    v20 = sub_231585FE4();
    v21 = sub_2315865E4();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_231496000, v20, v21, "AudioAppSignalsCollector#getAudioAppPreferences Feature is disabled. Not returning signal values...", v22, 2u);
      MEMORY[0x231931280](v22, -1, -1);
    }

    sub_2314C1C38();
    swift_allocError();
    *v23 = 0;
    a2();
    OUTLINED_FUNCTION_3_6();
  }
}

void sub_2314BFC08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = sub_231566740(a1);
  v10 = MEMORY[0x277D84F90];
  if (v9)
  {
    v11 = v9;
    v24 = MEMORY[0x277D84F90];
    sub_23152D598();
    if (v11 < 0)
    {
      __break(1u);
      return;
    }

    v22 = a5;
    v23 = a6;
    v12 = 0;
    v10 = v24;
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v13 = MEMORY[0x231930660](v12, a1);
      }

      else
      {
        v13 = *(a1 + 8 * v12 + 32);
      }

      v14 = *(v13 + 16);
      v15 = *(v13 + 24);

      v16 = *(v24 + 16);
      if (v16 >= *(v24 + 24) >> 1)
      {
        sub_23152D598();
      }

      ++v12;
      *(v24 + 16) = v16 + 1;
      v17 = v24 + 16 * v16;
      *(v17 + 32) = v14;
      *(v17 + 40) = v15;
    }

    while (v11 != v12);
    a6 = v23;
    a5 = v22;
  }

  v18 = swift_allocObject();
  v18[2] = a5;
  v18[3] = a6;
  v18[4] = v10;
  v18[5] = a1;
  v19 = swift_allocObject();
  *(v19 + 16) = sub_2314C1D7C;
  *(v19 + 24) = v18;

  sub_2314C13B4(v20, v21, v10, sub_2314C1D88);
}

void sub_2314BFDEC(uint64_t a1, void (*a2)(void *, uint64_t), uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_231585884();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v35[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = *a1;
  if (*(a1 + 24) == 1)
  {
    if (qword_280D70420 != -1)
    {
      swift_once();
    }

    v14 = sub_231585FF4();
    __swift_project_value_buffer(v14, qword_280D72248);
    v15 = sub_231585FE4();
    v16 = sub_2315865E4();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v36 = v18;
      *v17 = 136315138;
      v19 = v13 & 1;
      v35[7] = v13 & 1;
      sub_231586204();
      v20 = sub_2314A22E8();

      *(v17 + 4) = v20;
      _os_log_impl(&dword_231496000, v15, v16, "AudioAppSignalsCollector#getAudioAppPreferences Error gathering signals: %s", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v18);
      MEMORY[0x231931280](v18, -1, -1);
      MEMORY[0x231931280](v17, -1, -1);
    }

    else
    {

      v19 = v13 & 1;
    }

    sub_2314C1D90();
    v33 = swift_allocError();
    *v34 = v19;
    a2(v33, 1);
  }

  else
  {
    v21 = *a1;

    sub_2314E0530(v12);
    v22 = type metadata accessor for AudioAppSignals();
    v23 = *(v22 + 48);
    v24 = *(v22 + 52);
    swift_allocObject();
    AudioAppSignals.init(version:candidateAppBundleIds:signalValues:timestamp:apps:)(2, a4, v13, v12, a5);
    v25 = qword_280D70420;

    if (v25 != -1)
    {
      swift_once();
    }

    v26 = sub_231585FF4();
    __swift_project_value_buffer(v26, qword_280D72248);

    v27 = sub_231585FE4();
    v28 = sub_2315865D4();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v36 = v30;
      *v29 = 136315138;
      sub_2314BD898();
      v31 = sub_2314A22E8();

      *(v29 + 4) = v31;
      _os_log_impl(&dword_231496000, v27, v28, "AudioAppSignalsCollector#getAudioAppPreferences Audio App signals: %s", v29, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v30);
      MEMORY[0x231931280](v30, -1, -1);
      MEMORY[0x231931280](v29, -1, -1);
    }

    a2(v32, 0);
  }
}

void sub_2314C0198(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = type metadata accessor for SiriSignalsSignpost();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280D70418 != -1)
  {
    OUTLINED_FUNCTION_0_7();
  }

  v13 = qword_280D72240;
  sub_231585FC4();
  v14 = &v12[*(v9 + 20)];
  *v14 = "getAudioAppPreferences.manatee";
  *(v14 + 1) = 30;
  v14[16] = 2;
  sub_2315866D4();
  OUTLINED_FUNCTION_2_5();
  v15 = __swift_project_boxed_opaque_existential_1((v4 + 16), *(v4 + 40));
  v16 = swift_allocObject();
  v16[2] = a1;
  v16[3] = a2;
  v16[4] = a3;
  v16[5] = a4;
  v17 = *v15;

  sub_2315218C8(a1, a2, sub_2314C20F8, v16);

  sub_2315866C4();
  OUTLINED_FUNCTION_2_5();
  sub_2314C1DE4(v12);
  OUTLINED_FUNCTION_3_6();
}

void sub_2314C0314(uint64_t a1, unint64_t a2, id a3, uint64_t a4, uint64_t a5, void (*a6)(id, uint64_t))
{
  if (a3)
  {
    v8 = a3;
    if (qword_280D70420 != -1)
    {
      swift_once();
    }

    v9 = sub_231585FF4();
    __swift_project_value_buffer(v9, qword_280D72248);
    v10 = a3;

    v11 = sub_231585FE4();
    v12 = sub_2315865E4();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      *v13 = 136315394;
      *(v13 + 4) = sub_2314A22E8();
      *(v13 + 12) = 2080;
      swift_getErrorValue();
      sub_231586C94();
      v14 = sub_2314A22E8();

      *(v13 + 14) = v14;
      _os_log_impl(&dword_231496000, v11, v12, "AudioAppSignalsCollector#getAudioAppPreferences Preference bag fetch for user: %s failed with error: %s", v13, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x231931280](v37, -1, -1);
      MEMORY[0x231931280](v13, -1, -1);
    }

    v15 = a3;
    a6(a3, 1);
  }

  else if (a2 >> 60 == 15)
  {
    if (qword_280D70420 != -1)
    {
      swift_once();
    }

    v17 = sub_231585FF4();
    __swift_project_value_buffer(v17, qword_280D72248);

    v18 = sub_231585FE4();
    v19 = sub_2315865E4();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      *v20 = 136315138;
      *(v20 + 4) = sub_2314A22E8();
      _os_log_impl(&dword_231496000, v18, v19, "AudioAppSignalsCollector#getAudioAppPreferences Preference bag fetch failed for user :%s with no errors but data is nil. Returning error", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v38);
      MEMORY[0x231931280](v38, -1, -1);
      MEMORY[0x231931280](v20, -1, -1);
    }

    sub_2314C1C38();
    v21 = swift_allocError();
    *v22 = 1;
    a6(v21, 1);
  }

  else
  {
    type metadata accessor for AudioAppSignals();
    sub_2314C2104(a1, a2);
    sub_2314C2104(a1, a2);
    if (AudioAppSignals.__allocating_init(from:)())
    {
      v36 = a6;
      if (qword_280D70420 != -1)
      {
        swift_once();
      }

      v24 = sub_231585FF4();
      __swift_project_value_buffer(v24, qword_280D72248);

      v25 = sub_231585FE4();
      v26 = sub_2315865D4();

      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        v39 = swift_slowAlloc();
        *v27 = 136315394;
        *(v27 + 4) = sub_2314A22E8();
        *(v27 + 12) = 2080;
        sub_2314BD898();
        v28 = sub_2314A22E8();

        *(v27 + 14) = v28;
        _os_log_impl(&dword_231496000, v25, v26, "AudioAppSignalsCollector#getAudioAppPreferences retrieved audio app preferences for shared user id: %s, signals: %s", v27, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x231931280](v39, -1, -1);
        MEMORY[0x231931280](v27, -1, -1);
      }

      v36(v29, 0);
    }

    else
    {
      if (qword_280D70420 != -1)
      {
        swift_once();
      }

      v30 = sub_231585FF4();
      __swift_project_value_buffer(v30, qword_280D72248);

      v31 = sub_231585FE4();
      v32 = sub_2315865E4();

      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        v40 = swift_slowAlloc();
        *v33 = 136315138;
        *(v33 + 4) = sub_2314A22E8();
        _os_log_impl(&dword_231496000, v31, v32, "AudioAppSignalsCollector#getAudioAppPreferences Unable to decode signals for user: %s as AudioAppSignals. Returning error", v33, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v40);
        MEMORY[0x231931280](v40, -1, -1);
        MEMORY[0x231931280](v33, -1, -1);
      }

      sub_2314C1C38();
      v34 = swift_allocError();
      *v35 = 2;
      a6(v34, 1);
    }

    sub_2314C215C(a1, a2);
  }
}

void sub_2314C09FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for SiriSignalsSignpost();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280D70418 != -1)
  {
    OUTLINED_FUNCTION_0_7();
  }

  v11 = qword_280D72240;
  sub_231585FC4();
  v12 = &v10[*(v7 + 20)];
  *v12 = "getAudioAppPreferences.biome";
  *(v12 + 1) = 28;
  v12[16] = 2;
  sub_2315866D4();
  OUTLINED_FUNCTION_1_3();
  v13 = OUTLINED_FUNCTION_4_2();
  sub_2314C0B1C(v13, v14, v4, a3, a4);
  sub_2315866C4();
  OUTLINED_FUNCTION_1_3();
  sub_2314C1DE4(v10);
  OUTLINED_FUNCTION_3_6();
}

void sub_2314C0B1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B1D0, &qword_231588B10);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = v23 - v12;
  if (qword_280D70420 != -1)
  {
    swift_once();
  }

  v14 = sub_231585FF4();
  __swift_project_value_buffer(v14, qword_280D72248);

  v15 = sub_231585FE4();
  v16 = sub_2315865D4();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v23[1] = v18;
    *v17 = 136315138;
    *(v17 + 4) = sub_2314A22E8();
    _os_log_impl(&dword_231496000, v15, v16, "AudioAppSignalsCollector#getAudioAppPreferences getting AudioAppSignals from Biome for [%s]", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v18);
    MEMORY[0x231931280](v18, -1, -1);
    MEMORY[0x231931280](v17, -1, -1);
  }

  v19 = dispatch_group_create();
  dispatch_group_enter(v19);
  v20 = sub_2315864A4();
  __swift_storeEnumTagSinglePayload(v13, 1, 1, v20);
  v21 = swift_allocObject();
  v21[2] = 0;
  v21[3] = 0;
  v21[4] = a3;
  v21[5] = a1;
  v21[6] = a2;
  v21[7] = a4;
  v21[8] = a5;
  v21[9] = v19;

  v22 = v19;
  sub_2314C0FFC(0, 0, v13, &unk_231588B20, v21);

  sub_231586624();
}

uint64_t sub_2314C0D70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[6] = a8;
  v8[7] = v10;
  v8[4] = a6;
  v8[5] = a7;
  v8[2] = a4;
  v8[3] = a5;
  return MEMORY[0x2822009F8](sub_2314C0DA0, 0, 0);
}

uint64_t sub_2314C0DA0()
{
  v1 = *__swift_project_boxed_opaque_existential_1((v0[2] + 16), *(v0[2] + 40));
  v2 = swift_task_alloc();
  v0[8] = v2;
  *v2 = v0;
  v2[1] = sub_2314C0E48;
  v4 = v0[3];
  v3 = v0[4];

  return sub_231521A48(v4, v3);
}

uint64_t sub_2314C0E48()
{
  v1 = *(*v0 + 64);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_2314C0F50, 0, 0);
}

uint64_t sub_2314C0F50()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[5];
  sub_2314C1C38();
  v4 = swift_allocError();
  *v5 = 0;
  v3(v4, 1);

  dispatch_group_leave(v1);
  v6 = v0[1];

  return v6();
}

uint64_t sub_2314C0FFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B1D0, &qword_231588B10);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = v23 - v10;
  sub_2314C2020(a3, v23 - v10);
  v12 = sub_2315864A4();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v11, 1, v12);

  if (EnumTagSinglePayload == 1)
  {
    sub_2314C2090(v11);
  }

  else
  {
    sub_231586494();
    (*(*(v12 - 8) + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  v14 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_231586464();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_231586234() + 32;

      if (v18 | v16)
      {
        v24[0] = 0;
        v24[1] = 0;
        v20 = v24;
        v24[2] = v16;
        v24[3] = v18;
      }

      else
      {
        v20 = 0;
      }

      v23[1] = 7;
      v23[2] = v20;
      v23[3] = v19;
      v21 = swift_task_create();

      sub_2314C2090(a3);

      return v21;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_2314C2090(a3);
  if (v18 | v16)
  {
    v24[4] = 0;
    v24[5] = 0;
    v24[6] = v16;
    v24[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_2314C1288(uint64_t a1)
{
  v7 = MEMORY[0x277D84F90];
  v8 = a1;
  v9 = 0u;
  v10 = 0u;
  v11 = 0;

  v2 = sub_231525958(&v8);
  sub_2314C1D18(&v8);
  sub_23152C7FC(v2);
  v3 = static MediaCategorySupportedSignal.instances(candidateAppBundleIds:)(a1);
  sub_23152C7FC(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD5B450, &unk_231588B00);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_231588340;
  *(inited + 56) = &type metadata for DeviceClassSignal;
  *(inited + 64) = &protocol witness table for DeviceClassSignal;
  if (qword_280D6F8F8 != -1)
  {
    swift_once();
  }

  v5 = unk_280D6F908;
  *(inited + 32) = qword_280D6F900;
  *(inited + 40) = v5;

  sub_23152C7FC(inited);
  return v7;
}

uint64_t sub_2314C13B4(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  v5 = v4;
  v7 = *v4;
  sub_2314C1288(a3);
  v8 = v4[18];
  v9 = (v5[17])();

  a4(v9);
}

void *sub_2314C1464(uint64_t a1, uint64_t a2)
{
  type metadata accessor for SignalGatherer();
  swift_allocObject();

  return SignalGatherer.init(signals:candidateAppBundleIds:)(a1, a2);
}

uint64_t sub_2314C14C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  __swift_project_boxed_opaque_existential_1((v4 + 56), *(v4 + 80));
  v9 = swift_allocObject();
  *(v9 + 16) = a3;
  *(v9 + 24) = a4;

  sub_2314C16F8(a1, a2, sub_2314C1D6C, v9);
}

uint64_t sub_2314C1570(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  if (qword_280D70420 != -1)
  {
    swift_once();
  }

  v4 = sub_231585FF4();
  __swift_project_value_buffer(v4, qword_280D72248);

  v5 = sub_231585FE4();
  v6 = sub_2315865D4();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v7 = 136315138;
    v8 = type metadata accessor for AppMetadata();
    MEMORY[0x231930080](a1, v8);
    v9 = sub_2314A22E8();

    *(v7 + 4) = v9;
    _os_log_impl(&dword_231496000, v5, v6, "AudioAppSignalsCollector#installedMediaApps Installed media apps: %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v11);
    MEMORY[0x231931280](v11, -1, -1);
    MEMORY[0x231931280](v7, -1, -1);
  }

  return a2(a1);
}

uint64_t sub_2314C16F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (qword_280D70420 != -1)
  {
    swift_once();
  }

  v8 = sub_231585FF4();
  __swift_project_value_buffer(v8, qword_280D72248);

  v9 = sub_231585FE4();
  v10 = sub_2315865D4();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *v11 = 136315138;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B120, &qword_23158ACE0);
    sub_231586204();
    v12 = sub_2314A22E8();

    *(v11 + 4) = v12;
    _os_log_impl(&dword_231496000, v9, v10, "InstalledAppProvider#installedApps for sharedUserId:%s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v15);
    MEMORY[0x231931280](v15, -1, -1);
    MEMORY[0x231931280](v11, -1, -1);
  }

  v13 = swift_allocObject();
  *(v13 + 16) = a3;
  *(v13 + 24) = a4;

  sub_23150E768(a1, a2, sub_2314C1D74, v13);
}

uint64_t *AudioAppSignalsCollector.deinit()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  __swift_destroy_boxed_opaque_existential_1(v0 + 12);
  v1 = v0[18];

  return v0;
}

uint64_t AudioAppSignalsCollector.__deallocating_deinit()
{
  AudioAppSignalsCollector.deinit();

  return MEMORY[0x2821FE8D8](v0, 152, 7);
}

void *sub_2314C197C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for MultiUserConnectionProvider();
  v34[3] = v8;
  v34[4] = &off_284619BE8;
  v34[0] = a1;
  v32 = &type metadata for InstalledAudioAppProvider;
  v33 = &off_284618438;
  v9 = swift_allocObject();
  v31[0] = v9;
  v10 = *(a2 + 16);
  *(v9 + 16) = *a2;
  *(v9 + 32) = v10;
  *(v9 + 48) = *(a2 + 32);
  v29 = &type metadata for AudioFeatureFlagProvider;
  v30 = &off_284613C60;
  type metadata accessor for AudioAppSignalsCollector();
  v11 = swift_allocObject();
  v12 = __swift_mutable_project_boxed_opaque_existential_1(v34, v8);
  v13 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v15 = (&v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v16 + 16))(v15);
  v17 = v32;
  v18 = __swift_mutable_project_boxed_opaque_existential_1(v31, v32);
  v19 = *(v17[-1].Description + 8);
  MEMORY[0x28223BE20](v18);
  v21 = &v27 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v22 + 16))(v21);
  v23 = *v15;
  v11[5] = v8;
  v11[6] = &off_284619BE8;
  v11[2] = v23;
  v11[10] = &type metadata for InstalledAudioAppProvider;
  v11[11] = &off_284618438;
  v24 = swift_allocObject();
  v11[7] = v24;
  v25 = *(v21 + 1);
  *(v24 + 16) = *v21;
  *(v24 + 32) = v25;
  *(v24 + 48) = *(v21 + 4);
  sub_23149FD3C(&v28, (v11 + 12));
  v11[17] = a3;
  v11[18] = a4;
  __swift_destroy_boxed_opaque_existential_1(v31);
  __swift_destroy_boxed_opaque_existential_1(v34);
  return v11;
}

unint64_t sub_2314C1C38()
{
  result = qword_27DD5B1C8;
  if (!qword_27DD5B1C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD5B1C8);
  }

  return result;
}

unint64_t sub_2314C1D90()
{
  result = qword_280D6D610[0];
  if (!qword_280D6D610[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280D6D610);
  }

  return result;
}

uint64_t sub_2314C1DE4(uint64_t a1)
{
  v2 = type metadata accessor for SiriSignalsSignpost();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2314C1E40(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v11 = v1[8];
  v10 = v1[9];
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_2314C1F2C;

  return sub_2314C0D70(a1, v4, v5, v6, v7, v8, v9, v11);
}

uint64_t sub_2314C1F2C()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_2314C2020(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B1D0, &qword_231588B10);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2314C2090(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B1D0, &qword_231588B10);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2314C2104(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_2314C215C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_2314BEE4C(a1, a2);
  }

  return a1;
}

Swift::Void __swiftcall AudioAppSignalsDataSyncUtilsProviding.postSyncNotification()()
{
  v2 = v1;
  v3 = v0;
  v4 = sub_231585884();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280D70420 != -1)
  {
    swift_once();
  }

  v8 = sub_231585FF4();
  __swift_project_value_buffer(v8, qword_280D72248);
  v9 = sub_231585FE4();
  v10 = sub_2315865D4();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v14[1] = v12;
    *v11 = 136315138;
    v13 = sub_2314A22E8();

    *(v11 + 4) = v13;
    _os_log_impl(&dword_231496000, v9, v10, "AudioAppSignalsSyncer#pushSyncNotification Posting Darwin notification: %s to initiate sync", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v12);
    MEMORY[0x231931280](v12, -1, -1);
    MEMORY[0x231931280](v11, -1, -1);
  }

  (*(v2 + 16))(0xD000000000000031, 0x8000000231590B90, v3, v2);

  sub_231585844();
  (*(v2 + 40))(v7, v3, v2);
}

void sub_2314C23B0(uint64_t a1, uint64_t a2)
{
  v4 = objc_opt_self();

  sub_2314C28F8(a1, a2, v4);
}

uint64_t sub_2314C23FC()
{
  v0 = sub_231586234();
  notify_post((v0 + 32));
}

uint64_t sub_2314C243C()
{
  v0 = objc_opt_self();

  return sub_2314C2950(v0);
}

uint64_t sub_2314C246C()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v1 = sub_23149C7D4(0xD000000000000018, 0x8000000231590C00);
  if (v1)
  {
    v2 = v1;
    v3 = sub_231586174();
    [v2 doubleForKey_];
  }

  return sub_231585774();
}

uint64_t sub_2314C2534(uint64_t a1)
{
  v2 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v3 = sub_23149C7D4(0xD000000000000018, 0x8000000231590C00);
  if (v3)
  {
    v4 = v3;
    sub_231585784();
    v6 = v5;
    v7 = sub_231586174();
    [v4 setDouble:v7 forKey:v6];
  }

  v8 = sub_231585884();
  v9 = *(*(v8 - 8) + 8);

  return v9(a1, v8);
}

void (*sub_2314C26A4(void *a1))(uint64_t a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v4 = sub_231585884();
  *v3 = v4;
  v5 = *(v4 - 8);
  v3[1] = v5;
  v6 = *(v5 + 64);
  v3[2] = __swift_coroFrameAllocStub(v6);
  v3[3] = __swift_coroFrameAllocStub(v6);
  v3[4] = *v1;
  sub_2314C246C();
  return sub_2314C277C;
}

void sub_2314C277C(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 16);
  v4 = *(*a1 + 24);
  if (a2)
  {
    v5 = *v2;
    v6 = v2[1];
    (*(v6 + 16))(*(*a1 + 16), v4, *v2);
    sub_2314C2534(v3);
    (*(v6 + 8))(v4, v5);
  }

  else
  {
    sub_2314C2534(*(*a1 + 24));
  }

  free(v4);
  free(v3);

  free(v2);
}

void *__swift_coroFrameAllocStub(size_t a1)
{
  if (MEMORY[0x277D84FD8])
  {
    return swift_coroFrameAlloc();
  }

  return malloc(a1);
}

void sub_2314C28F8(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_231585744();
  [a3 storeAudioAppSignals_];
}

uint64_t sub_2314C2950(void *a1)
{
  v1 = [a1 retrieveAudioAppSignals];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_231585754();

  return v3;
}

uint64_t sub_2314C29B4()
{
  result = sub_2314A1DFC(1, 2);
  qword_280D6E808 = result;
  qword_280D6E810 = v1;
  qword_280D6E818 = v2;
  return result;
}

void *AudioAppSignalsSyncer.__allocating_init()()
{
  v0 = type metadata accessor for AudioAppSignalsCollector();
  v1 = AudioAppSignalsCollector.__allocating_init()();
  v2 = type metadata accessor for AudioAppSignalsDataSyncUtils();
  v3 = swift_allocObject();
  v4 = sub_2314C2C48();
  if (qword_280D6E340 != -1)
  {
    swift_once();
  }

  v5 = qword_280D721C8;
  v6 = qword_280D701B8;

  if (v6 != -1)
  {
    swift_once();
  }

  sub_2314A2C74(qword_280D72218, v26);
  v24 = v0;
  v25 = &protocol witness table for AudioAppSignalsCollector;
  *&v23 = v1;
  v21 = &type metadata for AudioFeatureFlagProvider;
  v22 = &off_284613C60;
  v19 = &off_284613A90;
  v18 = v2;
  *&v17 = v3;
  v16[3] = &type metadata for SubscriptionStatusProvider;
  v16[4] = &off_28461D0D8;
  v15[4] = &off_284613BB8;
  v15[3] = &type metadata for AudioCompanionContextDonator;
  v15[0] = v4;
  type metadata accessor for AudioAppSignalsSyncer();
  v7 = swift_allocObject();
  __swift_mutable_project_boxed_opaque_existential_1(v16, &type metadata for SubscriptionStatusProvider);
  v8 = __swift_mutable_project_boxed_opaque_existential_1(v15, &type metadata for AudioCompanionContextDonator);
  v9 = *(MEMORY[0x277D833E8] + 64);
  MEMORY[0x28223BE20](v8);
  v11 = (v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v12 + 16))(v11);
  v13 = *v11;
  v7[20] = &type metadata for SubscriptionStatusProvider;
  v7[21] = &off_28461D0D8;
  v7[25] = &type metadata for AudioCompanionContextDonator;
  v7[26] = &off_284613BB8;
  v7[22] = v13;
  sub_23149FD3C(&v23, (v7 + 2));
  sub_23149FD3C(&v20, (v7 + 7));
  sub_23149FD3C(&v17, (v7 + 12));
  v7[27] = v5;
  sub_23149FD3C(v26, (v7 + 28));
  __swift_destroy_boxed_opaque_existential_1(v15);
  __swift_destroy_boxed_opaque_existential_1(v16);
  return v7;
}

id sub_2314C2C48()
{
  v0 = [BiomeLibrary() Siri];
  swift_unknownObjectRelease();
  v1 = [v0 Audio];
  swift_unknownObjectRelease();
  v2 = [v1 CompanionContext];
  swift_unknownObjectRelease();
  v3 = [v2 source];

  return v3;
}

void sub_2314C2D00(char a1, uint64_t *a2, NSObject *a3)
{
  v3 = a3;
  v5 = *a2;
  v6 = a2[1];
  v7 = *(a2 + 16);
  isa = a3[10].isa;
  v9 = a3[11].isa;
  __swift_project_boxed_opaque_existential_1(&a3[7].isa, isa);
  if (((*(v9 + 1))(isa, v9) & 1) == 0)
  {
    if (qword_280D70420 != -1)
    {
      OUTLINED_FUNCTION_6_0();
    }

    v23 = sub_231585FF4();
    OUTLINED_FUNCTION_1_4(v23, qword_280D72248);
    v3 = sub_231585FE4();
    v24 = sub_2315865E4();
    if (!OUTLINED_FUNCTION_12_4(v24))
    {
      goto LABEL_21;
    }

    v25 = OUTLINED_FUNCTION_5_3();
    *v25 = 0;
    v26 = "AudioAppSignalsSyncer#syncAudioAppSignals Feature is disabled. Not syncing...";
    goto LABEL_20;
  }

  if (!sub_2314C3974(a1 & 1))
  {
    if (qword_280D70420 != -1)
    {
      OUTLINED_FUNCTION_6_0();
    }

    v27 = sub_231585FF4();
    OUTLINED_FUNCTION_1_4(v27, qword_280D72248);
    v3 = sub_231585FE4();
    v28 = sub_2315865E4();
    if (!OUTLINED_FUNCTION_12_4(v28))
    {
      goto LABEL_21;
    }

    v25 = OUTLINED_FUNCTION_5_3();
    *v25 = 0;
    v26 = "AudioAppSignalsSyncer#syncAudioAppSignals Last sync happened too recently. Not syncing again";
LABEL_20:
    _os_log_impl(&dword_231496000, v3, v5, v26, v25, 2u);
    OUTLINED_FUNCTION_10();
LABEL_21:

    goto LABEL_22;
  }

  if (v7 != 1 || (v10 = OUTLINED_FUNCTION_17(), (sub_2314C3CCC(v10, v11) & 1) != 0))
  {
    if (qword_280D70420 != -1)
    {
      OUTLINED_FUNCTION_6_0();
    }

    v12 = sub_231585FF4();
    OUTLINED_FUNCTION_1_4(v12, qword_280D72248);
    v13 = sub_231585FE4();
    v14 = sub_2315865D4();
    if (OUTLINED_FUNCTION_11_5(v14))
    {
      v15 = OUTLINED_FUNCTION_5_3();
      *v15 = 0;
      _os_log_impl(&dword_231496000, v13, v14, "AudioAppSignalsSyncer#syncAudioAppSignals Gathering signals", v15, 2u);
      OUTLINED_FUNCTION_10();
    }

    v16 = v3[5].isa;
    v17 = v3[6].isa;
    __swift_project_boxed_opaque_existential_1(&v3[2].isa, v16);
    v35[0] = 0;
    v35[1] = 0;
    v36 = 0;
    v18 = swift_allocObject();
    *(v18 + 16) = sub_23155F118;
    *(v18 + 24) = 0;
    *(v18 + 32) = v5;
    *(v18 + 40) = v6;
    *(v18 + 48) = v7;
    *(v18 + 56) = v3;
    v19 = *(v17 + 1);
    v20 = OUTLINED_FUNCTION_17();
    sub_2314C4F38(v20, v21, v7);

    v19(v35, sub_2314C5264, v18, v16, v17);
    OUTLINED_FUNCTION_8_4();

    return;
  }

  if (qword_280D70420 != -1)
  {
    OUTLINED_FUNCTION_6_0();
  }

  v33 = sub_231585FF4();
  OUTLINED_FUNCTION_1_4(v33, qword_280D72248);
LABEL_22:
  oslog = sub_231585FE4();
  sub_2315865D4();
  OUTLINED_FUNCTION_9_4();
  if (os_log_type_enabled(oslog, v29))
  {
    v30 = swift_slowAlloc();
    *v30 = 67109120;
    _os_log_impl(&dword_231496000, oslog, v3, "SignalRepository: #AppInstallListener AudioAppSignalsSyncer success=%{BOOL}d", v30, 8u);
    OUTLINED_FUNCTION_10();
  }

  OUTLINED_FUNCTION_8_4();
}

void sub_2314C3094(char a1, uint64_t *a2, void (*a3)(void), uint64_t a4)
{
  v5 = v4;
  v9 = *a2;
  v10 = a2[1];
  v11 = *(a2 + 16);
  v12 = v4[10];
  v13 = v4[11];
  __swift_project_boxed_opaque_existential_1(v4 + 7, v12);
  if (((*(v13 + 8))(v12, v13) & 1) == 0)
  {
    if (qword_280D70420 != -1)
    {
      OUTLINED_FUNCTION_6_0();
    }

    v27 = sub_231585FF4();
    OUTLINED_FUNCTION_1_4(v27, qword_280D72248);
    v28 = sub_231585FE4();
    v29 = sub_2315865E4();
    if (!OUTLINED_FUNCTION_11_5(v29))
    {
      goto LABEL_21;
    }

    v30 = OUTLINED_FUNCTION_5_3();
    *v30 = 0;
    v31 = "AudioAppSignalsSyncer#syncAudioAppSignals Feature is disabled. Not syncing...";
    goto LABEL_20;
  }

  if (!sub_2314C3974(a1 & 1))
  {
    if (qword_280D70420 != -1)
    {
      OUTLINED_FUNCTION_6_0();
    }

    v32 = sub_231585FF4();
    OUTLINED_FUNCTION_1_4(v32, qword_280D72248);
    v28 = sub_231585FE4();
    v29 = sub_2315865E4();
    if (!OUTLINED_FUNCTION_11_5(v29))
    {
      goto LABEL_21;
    }

    v30 = OUTLINED_FUNCTION_5_3();
    *v30 = 0;
    v31 = "AudioAppSignalsSyncer#syncAudioAppSignals Last sync happened too recently. Not syncing again";
LABEL_20:
    _os_log_impl(&dword_231496000, v28, v29, v31, v30, 2u);
    OUTLINED_FUNCTION_10();
LABEL_21:

LABEL_22:
    a3(0);
    OUTLINED_FUNCTION_8_4();
    return;
  }

  if (v11 == 1)
  {
    v14 = OUTLINED_FUNCTION_14();
    if ((sub_2314C3CCC(v14, v15) & 1) == 0)
    {
      goto LABEL_22;
    }
  }

  if (qword_280D70420 != -1)
  {
    OUTLINED_FUNCTION_6_0();
  }

  v16 = sub_231585FF4();
  OUTLINED_FUNCTION_1_4(v16, qword_280D72248);
  v17 = sub_231585FE4();
  v18 = sub_2315865D4();
  if (OUTLINED_FUNCTION_11_5(v18))
  {
    v19 = OUTLINED_FUNCTION_5_3();
    *v19 = 0;
    _os_log_impl(&dword_231496000, v17, v18, "AudioAppSignalsSyncer#syncAudioAppSignals Gathering signals", v19, 2u);
    OUTLINED_FUNCTION_10();
  }

  v20 = v5[5];
  v21 = v5[6];
  __swift_project_boxed_opaque_existential_1(v5 + 2, v20);
  v33[0] = 0;
  v33[1] = 0;
  v34 = 0;
  v22 = swift_allocObject();
  *(v22 + 16) = a3;
  *(v22 + 24) = a4;
  *(v22 + 32) = v9;
  *(v22 + 40) = v10;
  *(v22 + 48) = v11;
  *(v22 + 56) = v5;
  v23 = *(v21 + 8);

  v24 = OUTLINED_FUNCTION_14();
  sub_2314C4F38(v24, v25, v11);

  v23(v33, sub_2314C4F34, v22, v20, v21);
  OUTLINED_FUNCTION_8_4();
}

uint64_t sub_2314C338C(void *a1, char a2, uint64_t (*a3)(void), uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t *a8)
{
  if (a2)
  {
    if (qword_280D70420 != -1)
    {
      swift_once();
    }

    v10 = sub_231585FF4();
    __swift_project_value_buffer(v10, qword_280D72248);
    v11 = a1;
    v12 = sub_231585FE4();
    v13 = sub_2315865E4();
    sub_2314C5254(a1, 1);
    if (!os_log_type_enabled(v12, v13))
    {
      goto LABEL_7;
    }

    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v57[0] = v15;
    *v14 = 136315138;
    v56 = a1;
    v16 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD5B860, qword_231588D90);
    sub_231586204();
    v17 = sub_2314A22E8();

    *(v14 + 4) = v17;
    _os_log_impl(&dword_231496000, v12, v13, "AudioAppSignalsSyncer#syncAudioAppSignals Error gathering signals: %s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v15);
    MEMORY[0x231931280](v15, -1, -1);
    v18 = v14;
    goto LABEL_6;
  }

  if (qword_280D70420 != -1)
  {
    swift_once();
  }

  v23 = sub_231585FF4();
  v24 = __swift_project_value_buffer(v23, qword_280D72248);

  v55 = v24;
  v25 = sub_231585FE4();
  v26 = sub_2315865D4();
  sub_2314C5254(a1, 0);
  if (os_log_type_enabled(v25, v26))
  {
    v53 = a5;
    v27 = swift_slowAlloc();
    v54 = a6;
    v28 = swift_slowAlloc();
    v57[0] = v28;
    *v27 = 136315138;
    sub_2314BD898();
    v52 = v26;
    v29 = a3;
    v30 = sub_2314A22E8();

    *(v27 + 4) = v30;
    a3 = v29;
    _os_log_impl(&dword_231496000, v25, v52, "AudioAppSignalsSyncer#syncAudioAppSignals Audio App signals: %s", v27, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v28);
    v31 = v28;
    a6 = v54;
    MEMORY[0x231931280](v31, -1, -1);
    v32 = v27;
    a5 = v53;
    MEMORY[0x231931280](v32, -1, -1);
  }

  if (!a7)
  {
    v34 = a1[3];
    v57[0] = a5;
    v57[1] = a6;
    MEMORY[0x28223BE20](v33);
    v51[2] = v57;
    v36 = sub_2314E62A8(sub_2314BB974, v51, v35);

    v12 = sub_231585FE4();
    v37 = sub_2315865D4();
    sub_2314C4F1C(a5, a6, 0);
    v38 = os_log_type_enabled(v12, v37);
    if (!v36)
    {
      if (!v38)
      {
        goto LABEL_7;
      }

      v49 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      v57[0] = v50;
      *v49 = 136315138;
      *(v49 + 4) = sub_2314A22E8();
      _os_log_impl(&dword_231496000, v12, v37, "AudioAppSignalsSyncer#syncAudioAppSignals bypassing because %s does not appear to be an audio app", v49, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v50);
      MEMORY[0x231931280](v50, -1, -1);
      v18 = v49;
LABEL_6:
      MEMORY[0x231931280](v18, -1, -1);
LABEL_7:

LABEL_24:
      v44 = 0;
      return a3(v44);
    }

    if (v38)
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v57[0] = v40;
      *v39 = 136315138;
      *(v39 + 4) = sub_2314A22E8();
      _os_log_impl(&dword_231496000, v12, v37, "AudioAppSignalsSyncer#syncAudioAppSignals doing sync on install because %s appears to be an audio app", v39, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v40);
      MEMORY[0x231931280](v40, -1, -1);
      MEMORY[0x231931280](v39, -1, -1);
    }
  }

  if (!sub_2314C407C())
  {
    v45 = sub_231585FE4();
    v46 = sub_2315865E4();
    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      *v47 = 0;
      _os_log_impl(&dword_231496000, v45, v46, "AudioAppSignalsSyncer#syncAudioAppSignals Unable to store the audio app preferences. Bailing on sync...", v47, 2u);
      MEMORY[0x231931280](v47, -1, -1);
    }

    goto LABEL_24;
  }

  v41 = a8[31];
  v42 = a8[32];
  __swift_project_boxed_opaque_existential_1(a8 + 28, v41);
  if ((*(v42 + 8))(v41, v42))
  {
    sub_2314C41B8(a1);
  }

  swift_beginAccess();
  v43 = a8[16];
  __swift_mutable_project_boxed_opaque_existential_1((a8 + 12), a8[15]);
  AudioAppSignalsDataSyncUtilsProviding.postSyncNotification()();
  swift_endAccess();
  v44 = 1;
  return a3(v44);
}

BOOL sub_2314C3974(char a1)
{
  v3 = sub_231585884();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0) + 8;
  MEMORY[0x28223BE20](v6);
  if (a1)
  {
    if (qword_280D70420 != -1)
    {
      OUTLINED_FUNCTION_6_0();
    }

    v9 = sub_231585FF4();
    OUTLINED_FUNCTION_1_4(v9, qword_280D72248);
    v10 = sub_231585FE4();
    v11 = sub_2315865D4();
    if (OUTLINED_FUNCTION_10_0(v11))
    {
      v12 = OUTLINED_FUNCTION_5_3();
      OUTLINED_FUNCTION_16_0(v12);
      OUTLINED_FUNCTION_4_3(&dword_231496000, v13, v14, "AudioAppSignalsSyncer#shouldSync Bypass min sync duration set to true. Force syncing");
      OUTLINED_FUNCTION_10();
    }

    return 1;
  }

  else
  {
    sub_231585844();
    OUTLINED_FUNCTION_19_0();
    sub_2314A2C74(v1 + 96, v31);
    v16 = v31[4];
    __swift_project_boxed_opaque_existential_1(v31, v31[3]);
    v17 = *(v16 + 32);
    v18 = OUTLINED_FUNCTION_14();
    v19(v18);
    __swift_destroy_boxed_opaque_existential_1(v31);
    sub_2315857A4();
    v21 = v20;
    v22 = *(v4 + 8);
    v22(v8, v3);
    v23 = OUTLINED_FUNCTION_7_5();
    (v22)(v23);
    if (qword_280D70420 != -1)
    {
      OUTLINED_FUNCTION_6_0();
    }

    v24 = sub_231585FF4();
    OUTLINED_FUNCTION_1_4(v24, qword_280D72248);
    v25 = sub_231585FE4();
    v26 = sub_2315865D4();
    if (OUTLINED_FUNCTION_12_4(v26))
    {
      v27 = swift_slowAlloc();
      v31[0] = swift_slowAlloc();
      *v27 = 136315394;
      sub_2315864C4();
      v28 = sub_2314A22E8();

      *(v27 + 4) = v28;
      *(v27 + 12) = 2080;
      if (qword_280D6E800 != -1)
      {
        OUTLINED_FUNCTION_2_6();
      }

      OUTLINED_FUNCTION_14();
      v29 = sub_2314A22E8();

      *(v27 + 14) = v29;
      _os_log_impl(&dword_231496000, v25, v8, "AudioAppSignalsSyncer#shouldSync Duration since last sync: %s. Min. Sync duration: %s", v27, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_10();
    }

    if (qword_280D6E800 != -1)
    {
      OUTLINED_FUNCTION_2_6();
    }

    return v21 >= qword_280D6E808;
  }
}

uint64_t sub_2314C3CCC(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_19_0();
  sub_2314A2C74(v2 + 96, v47);
  v5 = v48;
  v6 = v49;
  __swift_project_boxed_opaque_existential_1(v47, v48);
  (*(v6 + 24))(v5, v6);
  v8 = v7;
  __swift_destroy_boxed_opaque_existential_1(v47);
  if (v8 >> 60 == 15)
  {
    if (qword_280D70420 != -1)
    {
      OUTLINED_FUNCTION_6_0();
    }

    v9 = sub_231585FF4();
    OUTLINED_FUNCTION_1_4(v9, qword_280D72248);
    v10 = sub_231585FE4();
    v11 = sub_2315865E4();
    if (OUTLINED_FUNCTION_10_0(v11))
    {
      v12 = OUTLINED_FUNCTION_5_3();
      OUTLINED_FUNCTION_16_0(v12);
      OUTLINED_FUNCTION_4_3(&dword_231496000, v13, v14, "AudioAppSignalsSyncer#syncAudioAppSignals syncing because no last sync found");
      OUTLINED_FUNCTION_10();
    }

    return 1;
  }

  type metadata accessor for AudioAppSignals();
  v15 = OUTLINED_FUNCTION_7_5();
  sub_2314C2104(v15, v16);
  OUTLINED_FUNCTION_7_5();
  v17 = AudioAppSignals.__allocating_init(from:)();
  if (!v17)
  {
    if (qword_280D70420 != -1)
    {
      OUTLINED_FUNCTION_6_0();
    }

    v28 = sub_231585FF4();
    OUTLINED_FUNCTION_1_4(v28, qword_280D72248);
    v21 = sub_231585FE4();
    v29 = sub_2315865E4();
    if (OUTLINED_FUNCTION_11_5(v29))
    {
      *OUTLINED_FUNCTION_5_3() = 0;
      OUTLINED_FUNCTION_7_6();
      _os_log_impl(v30, v31, v32, v33, v34, 2u);
      OUTLINED_FUNCTION_10();
    }

    v35 = OUTLINED_FUNCTION_7_5();
    sub_2314C215C(v35, v36);
    goto LABEL_19;
  }

  v18 = *(v17 + 24);
  v47[0] = a1;
  v47[1] = a2;
  MEMORY[0x28223BE20](v17);
  v46[2] = v47;
  if (sub_2314E62A8(sub_2314BB954, v46, v19))
  {
    if (qword_280D70420 != -1)
    {
      OUTLINED_FUNCTION_6_0();
    }

    v20 = sub_231585FF4();
    OUTLINED_FUNCTION_1_4(v20, qword_280D72248);

    v21 = sub_231585FE4();
    sub_2315865D4();

    if (OUTLINED_FUNCTION_23())
    {
      v22 = OUTLINED_FUNCTION_22();
      v23 = swift_slowAlloc();
      v47[0] = v23;
      *(v22 + 4) = OUTLINED_FUNCTION_18_1(4.8149e-34);
      OUTLINED_FUNCTION_21(&dword_231496000, v24, v25, "AudioAppSignalsSyncer#syncAudioAppSignals syncing because %s was in last sync and was just uninstalled");
      __swift_destroy_boxed_opaque_existential_1(v23);
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_10();
    }

    v26 = OUTLINED_FUNCTION_7_5();
    sub_2314C215C(v26, v27);

LABEL_19:

    return 1;
  }

  if (qword_280D70420 != -1)
  {
    OUTLINED_FUNCTION_6_0();
  }

  v38 = sub_231585FF4();
  OUTLINED_FUNCTION_1_4(v38, qword_280D72248);

  v39 = sub_231585FE4();
  sub_2315865D4();

  if (OUTLINED_FUNCTION_23())
  {
    v40 = OUTLINED_FUNCTION_22();
    v41 = swift_slowAlloc();
    v47[0] = v41;
    *(v40 + 4) = OUTLINED_FUNCTION_18_1(4.8149e-34);
    OUTLINED_FUNCTION_21(&dword_231496000, v42, v43, "AudioAppSignalsSyncer#syncAudioAppSignals Not syncing because %s was not part of the last sync");
    __swift_destroy_boxed_opaque_existential_1(v41);
    OUTLINED_FUNCTION_10();
    OUTLINED_FUNCTION_10();
  }

  v44 = OUTLINED_FUNCTION_7_5();
  sub_2314C215C(v44, v45);

  return 0;
}

BOOL sub_2314C407C()
{
  v1 = sub_2314BDAC8();
  v3 = v2 >> 60;
  if (v2 >> 60 == 15)
  {
    if (qword_280D70420 != -1)
    {
      OUTLINED_FUNCTION_6_0();
    }

    v8 = sub_231585FF4();
    OUTLINED_FUNCTION_1_4(v8, qword_280D72248);
    v9 = sub_231585FE4();
    v10 = sub_2315865E4();
    if (OUTLINED_FUNCTION_10_0(v10))
    {
      v11 = OUTLINED_FUNCTION_5_3();
      OUTLINED_FUNCTION_16_0(v11);
      OUTLINED_FUNCTION_4_3(&dword_231496000, v12, v13, "AudioAppSignalsSyncer#storeAudioSignals unable to encode signals. Bailing");
      OUTLINED_FUNCTION_10();
    }
  }

  else
  {
    v4 = v1;
    v5 = v2;
    swift_beginAccess();
    sub_2314A2C74(v0 + 96, v15);
    v6 = v16;
    v7 = v17;
    __swift_project_boxed_opaque_existential_1(v15, v16);
    (*(v7 + 8))(v4, v5, v6, v7);
    sub_2314C215C(v4, v5);
    __swift_destroy_boxed_opaque_existential_1(v15);
  }

  return v3 < 0xF;
}

void sub_2314C41B8(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B1D0, &qword_231588B10);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v24 - v5;
  v7 = *(a1 + OBJC_IVAR____TtC11SiriSignals15AudioAppSignals_apps);
  if (!v7)
  {
    if (qword_280D70420 != -1)
    {
      OUTLINED_FUNCTION_6_0();
    }

    v13 = sub_231585FF4();
    OUTLINED_FUNCTION_1_4(v13, qword_280D72248);
    v25 = sub_231585FE4();
    sub_2315865E4();
    OUTLINED_FUNCTION_9_4();
    if (!os_log_type_enabled(v25, v14))
    {
      goto LABEL_18;
    }

    v11 = OUTLINED_FUNCTION_5_3();
    *v11 = 0;
    v12 = "AudioAppSignalsSyncer#donateAudioSignals Unable to donate the audio app preferences to Biome";
    goto LABEL_17;
  }

  v8 = *(*(v1 + 216) + 56);
  if (v8 == 2)
  {
    if (qword_280D70420 != -1)
    {
      OUTLINED_FUNCTION_6_0();
    }

    v9 = sub_231585FF4();
    OUTLINED_FUNCTION_1_4(v9, qword_280D72248);
    v25 = sub_231585FE4();
    sub_2315865E4();
    OUTLINED_FUNCTION_9_4();
    if (!os_log_type_enabled(v25, v10))
    {
      goto LABEL_18;
    }

    v11 = OUTLINED_FUNCTION_5_3();
    *v11 = 0;
    v12 = "AudioAppSignalsSyncer#donateAudioSignals aborting because no meDevice state";
    goto LABEL_17;
  }

  if (v8)
  {
    v15 = sub_2315864A4();
    OUTLINED_FUNCTION_20_0(v15);
    v16 = swift_allocObject();
    v16[2] = 0;
    v16[3] = 0;
    v16[4] = v1;
    v16[5] = v7;

    v17 = OUTLINED_FUNCTION_15();
    sub_23157FCA4(v17, v18, v19, v20, v16);

    return;
  }

  if (qword_280D70420 != -1)
  {
    OUTLINED_FUNCTION_6_0();
  }

  v21 = sub_231585FF4();
  OUTLINED_FUNCTION_1_4(v21, qword_280D72248);
  v25 = sub_231585FE4();
  sub_2315865D4();
  OUTLINED_FUNCTION_9_4();
  if (os_log_type_enabled(v25, v22))
  {
    v11 = OUTLINED_FUNCTION_5_3();
    *v11 = 0;
    v12 = "AudioAppSignalsSyncer#donateAudioSignals Ignoring non-meDevice";
LABEL_17:
    _os_log_impl(&dword_231496000, v25, v6, v12, v11, 2u);
    OUTLINED_FUNCTION_10();
  }

LABEL_18:
  v23 = v25;
}

uint64_t sub_2314C4448(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B1D0, &qword_231588B10) - 8) + 64) + 15;
  v5[4] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2314C44E4, 0, 0);
}

uint64_t sub_2314C44E4()
{
  __swift_project_boxed_opaque_existential_1((*(v0 + 16) + 136), *(*(v0 + 16) + 160));
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  *v1 = v0;
  v1[1] = sub_2314C4580;

  return sub_231576EE4();
}

uint64_t sub_2314C4580(uint64_t a1)
{
  v2 = *(*v1 + 40);
  v4 = *v1;
  *(*v1 + 48) = a1;

  return MEMORY[0x2822009F8](sub_2314C4680, 0, 0);
}

uint64_t sub_2314C4680()
{
  v1 = sub_231566740(v0[3]);
  if (v1)
  {
    v2 = v1;
    v34 = MEMORY[0x277D84F90];
    result = sub_2315869F4();
    if (v2 < 0)
    {
      __break(1u);
      return result;
    }

    v4 = 0;
    v5 = v0[3];
    v6 = v5 & 0xC000000000000001;
    v7 = v5 + 32;
    do
    {
      if (v6)
      {
        MEMORY[0x231930660](v4, v0[3]);
      }

      else
      {
        v8 = *(v7 + 8 * v4);
      }

      ++v4;
      sub_2314C4940(v0[6]);

      sub_2315869C4();
      v9 = *(v34 + 16);
      sub_231586A04();
      sub_231586A14();
      sub_2315869D4();
    }

    while (v2 != v4);
  }

  v10 = v0[6];

  v11 = v0[4];
  v12 = v0[2];
  sub_2314A207C(0, &qword_27DD5B1D8, 0x277CF1470);
  v13 = sub_2314C49F4();
  [*__swift_project_boxed_opaque_existential_1((v12 + 176) *(v12 + 200))];
  v14 = sub_2315864A4();
  OUTLINED_FUNCTION_20_0(v14);
  v15 = swift_allocObject();
  *(v15 + 16) = 0;
  *(v15 + 24) = 0;
  v16 = OUTLINED_FUNCTION_15();
  sub_23157FCA4(v16, v17, v18, v19, v20);

  if (qword_280D70420 != -1)
  {
    OUTLINED_FUNCTION_6_0();
  }

  v21 = sub_231585FF4();
  __swift_project_value_buffer(v21, qword_280D72248);
  v22 = v13;
  v23 = sub_231585FE4();
  sub_2315865D4();

  if (OUTLINED_FUNCTION_23())
  {
    v24 = OUTLINED_FUNCTION_22();
    v25 = swift_slowAlloc();
    *v24 = 138412290;
    *(v24 + 4) = v22;
    *v25 = v22;
    v26 = v22;
    OUTLINED_FUNCTION_7_6();
    _os_log_impl(v27, v28, v29, v30, v31, 0xCu);
    sub_2314BEEA4(v25);
    OUTLINED_FUNCTION_10();
    OUTLINED_FUNCTION_10();
    v22 = v23;
    v23 = v26;
  }

  v32 = v0[4];

  v33 = v0[1];

  return v33();
}

id sub_2314C4940(uint64_t a1)
{
  v3 = v1[2];
  if (v1[6])
  {
    v4 = v1[6];
  }

  else
  {
    v4 = MEMORY[0x277D84F90];
  }

  v5 = v1[3];

  v6 = OUTLINED_FUNCTION_17();
  sub_23149CA24(v6, v7, a1);
  v8 = sub_231586564();
  v10 = v1[4];
  v9 = v1[5];
  v11 = objc_allocWithZone(MEMORY[0x277CF1478]);

  v12 = OUTLINED_FUNCTION_17();
  return sub_2314C4E40(v12, v13, v4, v8, v10, v9);
}

id sub_2314C49F4()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  sub_2314A207C(0, &qword_27DD5B1E0, 0x277CF1478);
  v1 = sub_231586374();

  v2 = [v0 initWithAppSignals_];

  return v2;
}

uint64_t *AudioAppSignalsSyncer.deinit()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  __swift_destroy_boxed_opaque_existential_1(v0 + 12);
  __swift_destroy_boxed_opaque_existential_1(v0 + 17);
  __swift_destroy_boxed_opaque_existential_1(v0 + 22);
  v1 = v0[27];

  __swift_destroy_boxed_opaque_existential_1(v0 + 28);
  return v0;
}

uint64_t AudioAppSignalsSyncer.__deallocating_deinit()
{
  AudioAppSignalsSyncer.deinit();

  return MEMORY[0x2821FE8D8](v0, 264, 7);
}

uint64_t sub_2314C4B24()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_2314C4BB0, 0, 0);
}

uint64_t sub_2314C4BB0()
{
  v26 = *MEMORY[0x277D85DE8];
  v1 = [objc_allocWithZone(MEMORY[0x277CF1B98]) init];
  *(v0 + 16) = 0;
  v2 = [v1 triggerRapportSyncWithError_];

  v3 = *(v0 + 16);
  if (v2)
  {
    v4 = qword_280D70420;
    v5 = v3;
    if (v4 != -1)
    {
      OUTLINED_FUNCTION_6_0();
    }

    v6 = sub_231585FF4();
    OUTLINED_FUNCTION_1_4(v6, qword_280D72248);
    v7 = sub_231585FE4();
    sub_2315865D4();
    OUTLINED_FUNCTION_9_4();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = OUTLINED_FUNCTION_5_3();
      OUTLINED_FUNCTION_16_0(v9);
      _os_log_impl(&dword_231496000, v7, v4, "AudioAppSignalsSyncer#donateAudioSignals triggerRapportSync initiated", v2, 2u);
      OUTLINED_FUNCTION_10();
    }

    goto LABEL_10;
  }

  v10 = v3;
  v11 = sub_2315856D4();

  swift_willThrow();
  if (qword_280D70420 != -1)
  {
    OUTLINED_FUNCTION_6_0();
  }

  v12 = sub_231585FF4();
  OUTLINED_FUNCTION_1_4(v12, qword_280D72248);
  v13 = v11;
  v7 = sub_231585FE4();
  sub_2315865E4();

  if (OUTLINED_FUNCTION_23())
  {
    v14 = OUTLINED_FUNCTION_22();
    v15 = swift_slowAlloc();
    *v14 = 138412290;
    v16 = v11;
    v17 = _swift_stdlib_bridgeErrorToNSError();
    *(v14 + 4) = v17;
    *v15 = v17;
    OUTLINED_FUNCTION_7_6();
    _os_log_impl(v18, v19, v20, v21, v22, 0xCu);
    sub_2314BEEA4(v15);
    OUTLINED_FUNCTION_10();
    OUTLINED_FUNCTION_10();

LABEL_10:
    goto LABEL_12;
  }

LABEL_12:
  v23 = *(v0 + 8);
  v24 = *MEMORY[0x277D85DE8];

  return v23();
}

id sub_2314C4E40(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  if (a2)
  {
    v9 = sub_231586174();
  }

  else
  {
    v9 = 0;
  }

  v10 = sub_231586374();

  if (a6)
  {
    v11 = sub_231586174();
  }

  else
  {
    v11 = 0;
  }

  v12 = [v6 initWithAppBundleId:v9 mediaCategories:v10 subscriptionStatus:a4 localizedAppName:v11];

  return v12;
}

uint64_t sub_2314C4F1C(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 1u)
  {
  }

  return result;
}

uint64_t sub_2314C4F38(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 1u)
  {
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_11SiriSignals08AudioAppB6SyncerC11SyncTriggerO(uint64_t a1)
{
  if ((*(a1 + 16) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

uint64_t sub_2314C4FE0(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && *(a1 + 17))
    {
      v2 = *a1 + 253;
    }

    else
    {
      v3 = *(a1 + 16);
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

uint64_t sub_2314C5020(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
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

uint64_t sub_2314C5064(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t sub_2314C509C()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v7 = OUTLINED_FUNCTION_13(v6);

  return sub_2314C4448(v7, v8, v3, v5, v4);
}

uint64_t sub_2314C5150()
{
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  OUTLINED_FUNCTION_13(v4);

  return sub_2314C4B24();
}

uint64_t objectdestroyTm()
{
  v1 = *(v0 + 24);

  sub_2314C4F1C(*(v0 + 32), *(v0 + 40), *(v0 + 48));
  v2 = *(v0 + 56);

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

void sub_2314C5254(id a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

uint64_t sub_2314C528C()
{
  sub_231586D14();
  MEMORY[0x231930A00](0);
  return sub_231586D44();
}

uint64_t sub_2314C52D4()
{
  sub_231586D14();
  MEMORY[0x231930A00](0);
  return sub_231586D44();
}

uint64_t sub_2314C533C()
{
  v2[3] = &type metadata for AudioFeatureFlagProvider.FeatureFlags;
  v2[4] = sub_2314C5390();
  v0 = sub_231585A04();
  __swift_destroy_boxed_opaque_existential_1(v2);
  return v0 & 1;
}

unint64_t sub_2314C5390()
{
  result = qword_280D6CE30;
  if (!qword_280D6CE30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D6CE30);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AudioFeatureFlagProvider.FeatureFlags(unsigned int *a1, int a2)
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

_BYTE *storeEnumTagSinglePayload for AudioFeatureFlagProvider.FeatureFlags(_BYTE *result, int a2, int a3)
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

unint64_t sub_2314C54F0()
{
  result = qword_27DD5B1E8;
  if (!qword_27DD5B1E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD5B1E8);
  }

  return result;
}

void *sub_2314C5544(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a1;
  v3[3] = a2;
  v3[4] = a3;
  return v3;
}

uint64_t sub_2314C5554()
{
  v2 = *v0;
  v3 = *(v0 + 3);
  swift_beginAccess();
  v4 = *(v0 + 4);

  sub_2314C60D4(0xD000000000000015, 0x8000000231590DA0, v3, v4);

  v6 = qword_284611240;
  v5 = off_284611248;
  v161 = v0;
  v7 = *(v0 + 4);
  v8 = *(v7 + 16);

  v9 = &OBJC_IVAR____TtC11SiriSignals20AppLaunchCountSignal_bucket;
  v159 = v3;
  if (!v8)
  {
LABEL_6:
    if (qword_280D70420 != -1)
    {
      goto LABEL_95;
    }

    goto LABEL_7;
  }

  v10 = OUTLINED_FUNCTION_19_1();
  v12 = sub_23149C888(v10, v11);
  if ((v13 & 1) == 0)
  {

    goto LABEL_6;
  }

  v14 = *(v7 + 56) + 16 * v12;
  v15 = *v14;
  v16 = *(v14 + 8);
  sub_2314A5168(*v14, *(v14 + 8));

  switch(v16)
  {
    case 1:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD5B880, &unk_231588F00);
      sub_231586AC4();
      OUTLINED_FUNCTION_17_0();
      OUTLINED_FUNCTION_2_7();
      OUTLINED_FUNCTION_7_7();
      if (v1)
      {
        goto LABEL_30;
      }

      while (1)
      {
        v60 = v16;
        do
        {
          v16 = v60 + 1;
          if (__OFADD__(v60, 1))
          {
            goto LABEL_94;
          }

          if (v16 >= v6)
          {
            sub_2314A5EEC(v15, 1u);
            v48 = 3;
            goto LABEL_41;
          }

          OUTLINED_FUNCTION_22_1();
        }

        while (!v61);
        OUTLINED_FUNCTION_9_0();
        v1 = v63 & v62;
        while (1)
        {
          *&v64 = OUTLINED_FUNCTION_14_0(v59);
          sub_2314C6540(v64);
          OUTLINED_FUNCTION_18_2();
          OUTLINED_FUNCTION_1_5(v65);
          OUTLINED_FUNCTION_12_5(v66, v67);
          if (v47)
          {
            goto LABEL_99;
          }

          OUTLINED_FUNCTION_26_0(v68);
          if (!v1)
          {
            break;
          }

LABEL_30:
          OUTLINED_FUNCTION_16();
        }
      }

    case 2:
      v17 = *&v15;
      goto LABEL_18;
    case 3:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD5B880, &unk_231588F00);
      sub_231586AC4();
      OUTLINED_FUNCTION_17_0();
      OUTLINED_FUNCTION_2_7();
      OUTLINED_FUNCTION_7_7();
      if (v1)
      {
        goto LABEL_20;
      }

      break;
    default:
      v17 = v15;
LABEL_18:
      v2 = sub_2314C6540(v17);
      v48 = 2;
      goto LABEL_41;
  }

LABEL_21:
  v50 = v16;
  while (1)
  {
    v16 = v50 + 1;
    if (__OFADD__(v50, 1))
    {
      goto LABEL_93;
    }

    if (v16 >= v6)
    {
      break;
    }

    OUTLINED_FUNCTION_22_1();
    if (v51)
    {
      OUTLINED_FUNCTION_9_0();
      v1 = v53 & v52;
      while (1)
      {
        v54 = OUTLINED_FUNCTION_14_0(v49);
        sub_2314C6540(v54);
        OUTLINED_FUNCTION_18_2();
        OUTLINED_FUNCTION_1_5(v55);
        OUTLINED_FUNCTION_12_5(v56, v57);
        if (v47)
        {
          break;
        }

        OUTLINED_FUNCTION_26_0(v58);
        if (!v1)
        {
          goto LABEL_21;
        }

LABEL_20:
        OUTLINED_FUNCTION_16();
      }

LABEL_98:
      __break(1u);
LABEL_99:
      __break(1u);
LABEL_100:
      __break(1u);
LABEL_101:
      __break(1u);
      goto LABEL_102;
    }
  }

  v48 = 3;
  sub_2314A5EEC(v15, 3u);
LABEL_41:
  v21 = v161;
  OUTLINED_FUNCTION_10_4();
  v69 = *(v161 + 4);
  swift_isUniquelyReferenced_nonNull_native();
  OUTLINED_FUNCTION_6_6();
  sub_23149C888(v6, v5);
  OUTLINED_FUNCTION_5_2();
  if (__OFADD__(v72, v73))
  {
    goto LABEL_100;
  }

  v74 = v70;
  v75 = v71;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B1F0, &unk_23158E160);
  OUTLINED_FUNCTION_25();
  if (sub_231586A64())
  {
    v76 = v6;
    v77 = sub_23149C888(v6, v5);
    if ((v75 & 1) != (v78 & 1))
    {
      goto LABEL_102;
    }

    v74 = v77;
    if ((v75 & 1) == 0)
    {
      goto LABEL_45;
    }
  }

  else
  {
    v76 = v6;
    if ((v75 & 1) == 0)
    {
LABEL_45:
      v36 = v163;
      OUTLINED_FUNCTION_0_8(v163 + 8 * (v74 >> 6));
      v80 = (v79 + 16 * v74);
      *v80 = v76;
      v80[1] = v5;
      v81 = *(v163 + 56) + 16 * v74;
      *v81 = v2;
      *(v81 + 8) = v48;
      OUTLINED_FUNCTION_24();
      if (v47)
      {
        goto LABEL_101;
      }

      *(v163 + 16) = v82;
      goto LABEL_49;
    }
  }

  v36 = v163;
  v83 = *(v163 + 56) + 16 * v74;
  v84 = *v83;
  *v83 = v2;
  v85 = *(v83 + 8);
  *(v83 + 8) = v48;
  sub_2314A5EEC(v84, v85);
LABEL_49:
  v9 = &OBJC_IVAR____TtC11SiriSignals20AppLaunchCountSignal_bucket;
  while (2)
  {
    *(v21 + 4) = v36;
    swift_endAccess();
    v6 = 0;
    v160 = *(v9 + 220);
    while (1)
    {
      v86 = &unk_284611250 + 16 * v6;
      v87 = *(v86 + 4);
      v9 = *(v86 + 5);
      v5 = *(v36 + 16);

      if (v5)
      {

        v88 = OUTLINED_FUNCTION_13_0();
        v90 = sub_23149C888(v88, v89);
        if (v91)
        {
          v92 = *(v36 + 56) + 16 * v90;
          v93 = *v92;
          v94 = *(v92 + 8);
          sub_2314A5168(*v92, *(v92 + 8));

          v162 = v87;
          switch(v94)
          {
            case 1:
              __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD5B880, &unk_231588F00);
              sub_231586AC4();
              OUTLINED_FUNCTION_17_0();
              OUTLINED_FUNCTION_2_7();
              OUTLINED_FUNCTION_4_4();
              while (1)
              {
                OUTLINED_FUNCTION_23_0();
                *&v132 = OUTLINED_FUNCTION_15_0(v131);
                sub_2314C65F8(v132);
                OUTLINED_FUNCTION_1_5((v87 >> 3) & 0x1FFFFFFFFFFFFFF8);
                OUTLINED_FUNCTION_11_6(v133, v134);
                if (v47)
                {
                  break;
                }

                OUTLINED_FUNCTION_26_0(v135);
                v87 = v162;
              }

              goto LABEL_90;
            case 2:
              v95 = *&v93;
              break;
            case 3:
              __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD5B880, &unk_231588F00);
              sub_231586AC4();
              OUTLINED_FUNCTION_17_0();
              OUTLINED_FUNCTION_2_7();
              OUTLINED_FUNCTION_4_4();
              while (1)
              {
                OUTLINED_FUNCTION_23_0();
                v127 = OUTLINED_FUNCTION_15_0(v126);
                sub_2314C65F8(v127);
                OUTLINED_FUNCTION_1_5((v87 >> 3) & 0x1FFFFFFFFFFFFFF8);
                OUTLINED_FUNCTION_11_6(v128, v129);
                if (v47)
                {
                  break;
                }

                OUTLINED_FUNCTION_26_0(v130);
                v87 = v162;
              }

              goto LABEL_89;
            default:
              v95 = v93;
              break;
          }

          v125 = sub_2314C65F8(v95);
          v5 = v161;
          swift_beginAccess();
          v136 = *(v161 + 4);
          swift_isUniquelyReferenced_nonNull_native();
          v163 = *(v161 + 4);
          v161[4] = -0.0;
          v137 = OUTLINED_FUNCTION_13_0();
          sub_23149C888(v137, v138);
          OUTLINED_FUNCTION_5_2();
          if (__OFADD__(v141, v142))
          {
            goto LABEL_91;
          }

          v143 = v139;
          v144 = v140;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B1F0, &unk_23158E160);
          OUTLINED_FUNCTION_25();
          if (sub_231586A64())
          {
            v5 = v87;
            v145 = sub_23149C888(v87, v9);
            if ((v144 & 1) != (v146 & 1))
            {
              goto LABEL_102;
            }

            v143 = v145;
            if ((v144 & 1) == 0)
            {
              goto LABEL_80;
            }
          }

          else
          {
            v5 = v87;
            if ((v144 & 1) == 0)
            {
LABEL_80:
              v36 = v163;
              OUTLINED_FUNCTION_18_2();
              OUTLINED_FUNCTION_0_8(v147);
              v149 = (v148 + 16 * v143);
              *v149 = v5;
              v149[1] = v9;
              OUTLINED_FUNCTION_21_0();
              *v150 = v125;
              *(v150 + 8) = 2;
              OUTLINED_FUNCTION_24();
              if (v47)
              {
                goto LABEL_92;
              }

              *(v163 + 16) = v151;
              goto LABEL_84;
            }
          }

          v36 = v163;
          OUTLINED_FUNCTION_21_0();
          v153 = *v152;
          *v152 = v125;
          v154 = *(v152 + 8);
          *(v152 + 8) = 2;
          sub_2314A5EEC(v153, v154);
LABEL_84:
          v21 = v161;
          goto LABEL_85;
        }
      }

      if (qword_280D70420 != -1)
      {
        OUTLINED_FUNCTION_3();
        swift_once();
      }

      v96 = sub_231585FF4();
      __swift_project_value_buffer(v96, qword_280D72248);

      v97 = sub_231585FE4();
      v98 = sub_2315865E4();

      if (os_log_type_enabled(v97, v98))
      {
        v99 = swift_slowAlloc();
        v165 = swift_slowAlloc();
        *v99 = v160;
        OUTLINED_FUNCTION_13_0();
        *(v99 + 4) = sub_2314A22E8();
        _os_log_impl(&dword_231496000, v97, v98, "AudioMegamodelFeatureTransform AudioMegamodelPredictor: expected to scale %s but didn't have it; treating as max value (missing)", v99, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v165);
        OUTLINED_FUNCTION_10();
        OUTLINED_FUNCTION_10();
      }

      OUTLINED_FUNCTION_10_4();
      v100 = *(v21 + 4);
      swift_isUniquelyReferenced_nonNull_native();
      OUTLINED_FUNCTION_6_6();
      v101 = OUTLINED_FUNCTION_13_0();
      sub_23149C888(v101, v102);
      OUTLINED_FUNCTION_5_2();
      if (__OFADD__(v105, v106))
      {
        break;
      }

      v107 = v103;
      v108 = v104;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B1F0, &unk_23158E160);
      OUTLINED_FUNCTION_25();
      if (sub_231586A64())
      {
        v109 = OUTLINED_FUNCTION_13_0();
        v111 = sub_23149C888(v109, v110);
        if ((v108 & 1) != (v112 & 1))
        {
          goto LABEL_102;
        }

        v107 = v111;
      }

      v36 = v163;
      if (v108)
      {
        OUTLINED_FUNCTION_21_0();
        v114 = *v113;
        OUTLINED_FUNCTION_8_5(v113);
        v116 = *(v115 + 8);
        OUTLINED_FUNCTION_20_1(v115);
        sub_2314A5EEC(v117, v118);
      }

      else
      {
        OUTLINED_FUNCTION_18_2();
        OUTLINED_FUNCTION_0_8(v119);
        v121 = (v120 + 16 * v107);
        *v121 = v87;
        v121[1] = v9;
        OUTLINED_FUNCTION_21_0();
        OUTLINED_FUNCTION_8_5(v122);
        OUTLINED_FUNCTION_20_1(v123);
        OUTLINED_FUNCTION_24();
        if (v47)
        {
          goto LABEL_88;
        }

        *(v163 + 16) = v124;
      }

LABEL_85:
      *(v21 + 4) = v36;
      swift_endAccess();
      if (++v6 == 7)
      {

        sub_2314C60D4(0xD000000000000014, 0x8000000231590DC0, v159, v36);

        v155 = *(v21 + 2);
        v156 = *(v21 + 4);
        type metadata accessor for OrderedFeatureMap();
        swift_allocObject();
        v157 = sub_2314C5544(v155, v159, v156);

        return v157;
      }
    }

    __break(1u);
LABEL_88:
    __break(1u);
LABEL_89:
    __break(1u);
LABEL_90:
    __break(1u);
LABEL_91:
    __break(1u);
LABEL_92:
    __break(1u);
LABEL_93:
    __break(1u);
LABEL_94:
    __break(1u);
LABEL_95:
    OUTLINED_FUNCTION_3();
    swift_once();
LABEL_7:
    v18 = sub_231585FF4();
    __swift_project_value_buffer(v18, qword_280D72248);

    v19 = sub_231585FE4();
    v20 = sub_2315865E4();

    v21 = v161;
    if (os_log_type_enabled(v19, v20))
    {
      v22 = swift_slowAlloc();
      v164 = swift_slowAlloc();
      *v22 = *(v9 + 220);
      OUTLINED_FUNCTION_19_1();
      *(v22 + 4) = sub_2314A22E8();
      _os_log_impl(&dword_231496000, v19, v20, "AudioMegamodelFeatureTransform AudioMegamodelPredictor: expected to scale %s but didn't have it; treating as max value (missing)", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v164);
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_10();
    }

    OUTLINED_FUNCTION_10_4();
    v23 = *(v161 + 4);
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_6_6();
    v24 = OUTLINED_FUNCTION_19_1();
    sub_23149C888(v24, v25);
    OUTLINED_FUNCTION_5_2();
    if (__OFADD__(v28, v29))
    {
      __break(1u);
LABEL_97:
      __break(1u);
      goto LABEL_98;
    }

    v30 = v26;
    v31 = v27;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B1F0, &unk_23158E160);
    OUTLINED_FUNCTION_25();
    if ((sub_231586A64() & 1) == 0)
    {
LABEL_13:
      v36 = v163;
      if (v31)
      {
        v37 = (*(v163 + 56) + 16 * v30);
        v38 = *v37;
        OUTLINED_FUNCTION_8_5(v37);
        v40 = *(v39 + 8);
        OUTLINED_FUNCTION_20_1(v39);
        sub_2314A5EEC(v41, v42);

        continue;
      }

      OUTLINED_FUNCTION_0_8(v163 + 8 * (v30 >> 6));
      v44 = (v43 + 16 * v30);
      *v44 = v6;
      v44[1] = v5;
      OUTLINED_FUNCTION_8_5((*(v163 + 56) + 16 * v30));
      OUTLINED_FUNCTION_20_1(v45);
      OUTLINED_FUNCTION_24();
      if (!v47)
      {
        *(v163 + 16) = v46;
        continue;
      }

      goto LABEL_97;
    }

    break;
  }

  v32 = OUTLINED_FUNCTION_19_1();
  v34 = sub_23149C888(v32, v33);
  if ((v31 & 1) == (v35 & 1))
  {
    v30 = v34;
    goto LABEL_13;
  }

LABEL_102:
  result = sub_231586C84();
  __break(1u);
  return result;
}

uint64_t sub_2314C60D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v35 = a4;
  v36 = a2;
  v32 = a1;
  v33 = sub_231586024();
  v39 = *(v33 - 8);
  v4 = *(v39 + 64);
  MEMORY[0x28223BE20](v33);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_231586064();
  v37 = *(v7 - 8);
  v38 = v7;
  v8 = *(v37 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_231586014();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = (&v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = sub_231586094();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v31 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v23 = &v31 - v22;
  if (qword_280D6CFF8 != -1)
  {
    swift_once();
  }

  v31 = qword_280D72178;
  sub_231586074();
  *v15 = 5;
  (*(v12 + 104))(v15, *MEMORY[0x277D85188], v11);
  sub_231586084();
  (*(v12 + 8))(v15, v11);
  v24 = *(v17 + 8);
  v24(v21, v16);
  v25 = swift_allocObject();
  v26 = v35;
  v25[2] = v34;
  v25[3] = v26;
  v27 = v36;
  v25[4] = v32;
  v25[5] = v27;
  aBlock[4] = sub_2314C72F0;
  aBlock[5] = v25;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_23149B484;
  aBlock[3] = &block_descriptor_1;
  v28 = _Block_copy(aBlock);

  sub_231586054();
  v40 = MEMORY[0x277D84F90];
  sub_2314BCC04();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B180, &unk_231589020);
  sub_2314BCC5C();
  v29 = v33;
  sub_2315867C4();
  MEMORY[0x231930340](v23, v10, v6, v28);
  _Block_release(v28);
  (*(v39 + 8))(v6, v29);
  (*(v37 + 8))(v10, v38);
  v24(v23, v16);
}

double sub_2314C6540(double a1)
{
  v1 = a1 / 1000.0;
  v2 = sub_2314C65A8(a1 / 1000.0);
  if ((v3 & 1) == 0)
  {
    return *&v2;
  }

  return log(v1);
}

uint64_t sub_2314C65A8(double a1)
{
  if (a1 == 0.0)
  {
    return 0x3F1A36E2EB1C432DLL;
  }

  result = 0x4031400000000000;
  if (a1 >= 0.0 && a1 <= 2592000.0)
  {
    return 0;
  }

  return result;
}

double sub_2314C65F8(long double a1)
{
  v2 = sub_2314C65A8(a1);
  if ((v3 & 1) == 0)
  {
    return *&v2;
  }

  return log(a1);
}

uint64_t sub_2314C6654(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v120 = a4;
  v116 = a3;
  v127 = a2;
  v132[3] = *MEMORY[0x277D85DE8];
  v5 = sub_2315861F4();
  v6 = *(*(v5 - 8) + 64);
  result = MEMORY[0x28223BE20](v5 - 8);
  v117 = &v112 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v121 = a1;
  v119 = *(a1 + 16);
  if (!v119)
  {
    goto LABEL_70;
  }

  v10 = 0;
  v113 = 0;
  v11 = v127 + 64;
  v118 = v121 + 32;
  *&v8 = 136315906;
  v114 = v8;
  *&v8 = 136315650;
  v115 = v8;
  v125 = v127 + 64;
  while (1)
  {
    v123 = v10 + 1;
    v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B1F8, &unk_231588F10);
    v12 = sub_2315860F4();
    v131 = v12;
    v13 = 1 << *(v127 + 32);
    v14 = v13 < 64 ? ~(-1 << v13) : -1;
    v15 = v14 & *(v127 + 64);
    v16 = (v13 + 63) >> 6;
    v122 = v10;
    v126 = (v118 + 16 * v10);

    v17 = 0;
    if (v15)
    {
      break;
    }

    while (1)
    {
LABEL_7:
      v18 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
LABEL_72:
        __break(1u);
LABEL_73:
        __break(1u);
LABEL_74:
        __break(1u);
      }

      if (v18 >= v16)
      {
        break;
      }

      v15 = *(v11 + 8 * v18);
      ++v17;
      if (v15)
      {
        v17 = v18;
        goto LABEL_11;
      }
    }

    v55 = objc_opt_self();

    v56 = sub_2315860C4();

    v132[0] = 0;
    v57 = [v55 dataWithJSONObject:v56 options:0 error:v132];

    v58 = v132[0];
    if (!v57)
    {
      v76 = v58;
      v77 = sub_2315856D4();

      swift_willThrow();
      v113 = 0;
LABEL_44:
      if (qword_280D70420 != -1)
      {
        swift_once();
      }

      v78 = sub_231585FF4();
      __swift_project_value_buffer(v78, qword_280D72248);

      v79 = sub_231585FE4();
      v80 = sub_2315865D4();

      if (os_log_type_enabled(v79, v80))
      {
        v81 = swift_slowAlloc();
        v82 = swift_slowAlloc();
        v132[0] = v82;
        *v81 = v114;
        *(v81 + 4) = sub_2314A22E8();
        *(v81 + 12) = 2048;
        *(v81 + 14) = v122;
        *(v81 + 22) = 2080;
        v83 = *v126;
        v84 = v126[1];

        v85 = sub_2314A22E8();

        *(v81 + 24) = v85;
        *(v81 + 32) = 2080;

        sub_2315860E4();

        v86 = sub_2314A22E8();

        *(v81 + 34) = v86;
        _os_log_impl(&dword_231496000, v79, v80, "AudioMegamodelFeatureTransform AudioMegamodelPredictor: (async) %s signals for candidate %ld: %s, signals (JSON encoding failed: %s", v81, 0x2Au);
        swift_arrayDestroy();
        MEMORY[0x231931280](v82, -1, -1);
        MEMORY[0x231931280](v81, -1, -1);
      }

      goto LABEL_50;
    }

    v59 = sub_231585754();
    v61 = v60;

    sub_2315861E4();
    v62 = sub_2315861C4();
    if (!v63)
    {
      sub_2314BEE4C(v59, v61);
      goto LABEL_44;
    }

    v64 = v62;
    if (qword_280D70420 != -1)
    {
      swift_once();
    }

    v65 = sub_231585FF4();
    __swift_project_value_buffer(v65, qword_280D72248);

    v66 = sub_231585FE4();
    v67 = sub_2315865D4();

    v68 = v66;
    if (os_log_type_enabled(v66, v67))
    {
      v69 = swift_slowAlloc();
      v128 = v64;
      v70 = v69;
      v129 = COERCE_DOUBLE(swift_slowAlloc());
      v132[0] = *&v129;
      *v70 = v114;
      *(v70 + 4) = sub_2314A22E8();
      *(v70 + 12) = 2048;
      *(v70 + 14) = v122;
      *(v70 + 22) = 2080;
      v72 = *v126;
      v71 = v126[1];

      v73 = sub_2314A22E8();

      *(v70 + 24) = v73;
      *(v70 + 32) = 2080;
      v74 = sub_2314A22E8();

      *(v70 + 34) = v74;
      _os_log_impl(&dword_231496000, v68, v67, "AudioMegamodelFeatureTransform AudioMegamodelPredictor: (async) %s signals for candidate %ld: %s, signals: %s", v70, 0x2Au);
      v75 = v129;
      swift_arrayDestroy();
      MEMORY[0x231931280](*&v75, -1, -1);
      MEMORY[0x231931280](v70, -1, -1);
      sub_2314BEE4C(v59, v61);
    }

    else
    {
      sub_2314BEE4C(v59, v61);
    }

LABEL_50:
    v87 = 1 << *(v12 + 32);
    if (v87 < 64)
    {
      v88 = ~(-1 << v87);
    }

    else
    {
      v88 = -1;
    }

    v89 = v88 & *(v12 + 64);
    v90 = (v87 + 63) >> 6;

    v91 = 0;
    while (v89)
    {
LABEL_59:
      v93 = __clz(__rbit64(v89));
      v89 &= v89 - 1;
      v94 = (v91 << 10) | (16 * v93);
      v95 = *(v12 + 56) + v94;
      if ((*(v95 + 8) & 1) == 0)
      {
        v96 = (*(v12 + 48) + v94);
        v98 = *v96;
        v97 = v96[1];
        v99 = *v95;
        v100 = qword_280D6C6B8;

        if (v100 != -1)
        {
          swift_once();
        }

        v101 = qword_280D72138;
        if (*&qword_280D72138 <= fabs(v99))
        {
          if (qword_280D70420 != -1)
          {
            swift_once();
          }

          v102 = sub_231585FF4();
          __swift_project_value_buffer(v102, qword_280D72248);

          *&v103 = COERCE_DOUBLE(sub_231585FE4());
          v104 = sub_2315865E4();

          if (os_log_type_enabled(v103, v104))
          {
            v105 = swift_slowAlloc();
            v129 = *&v103;
            v106 = v105;
            v107 = swift_slowAlloc();
            v132[0] = v107;
            *v106 = v115;
            v108 = sub_2314A22E8();

            *(v106 + 4) = v108;
            *(v106 + 12) = 2048;
            *(v106 + 14) = v99;
            *(v106 + 22) = 2048;
            *(v106 + 24) = v101;
            v109 = v104;
            v110 = *&v129;
            _os_log_impl(&dword_231496000, *&v129, v109, "AudioMegamodelFeatureTransform AudioMegamodelPredictor: (async) signal %s value %f is outside of Float16 range: %f", v106, 0x20u);
            __swift_destroy_boxed_opaque_existential_1(v107);
            MEMORY[0x231931280](v107, -1, -1);
            MEMORY[0x231931280](v106, -1, -1);
          }

          else
          {
          }
        }

        else
        {
        }
      }
    }

    while (1)
    {
      v92 = v91 + 1;
      if (__OFADD__(v91, 1))
      {
        goto LABEL_72;
      }

      if (v92 >= v90)
      {
        break;
      }

      v89 = *(v12 + 64 + 8 * v92);
      ++v91;
      if (v89)
      {
        v91 = v92;
        goto LABEL_59;
      }
    }

    v10 = v123;
    v11 = v125;
    if (v123 == v119)
    {
LABEL_70:
      v111 = *MEMORY[0x277D85DE8];
      return result;
    }
  }

LABEL_11:
  while (2)
  {
    v19 = __clz(__rbit64(v15));
    v15 &= v15 - 1;
    v20 = (v17 << 10) | (16 * v19);
    v21 = (*(v127 + 48) + v20);
    v23 = *v21;
    v22 = v21[1];
    v24 = *(v127 + 56) + v20;
    v25 = *v24;
    v27 = *v126;
    v26 = v126[1];
    switch(*(v24 + 8))
    {
      case 1:
        isa = v25[2].isa;

        if (!isa)
        {
          goto LABEL_21;
        }

        v30 = v28;

        sub_2314A5168(v25, 1u);
        v36 = sub_23149C888(v27, v26);
        v38 = v37;

        if (v38)
        {
          v39 = *(v25[7].isa + v36);
          sub_2314A5EEC(v25, 1u);
          LODWORD(v128) = 0;
          v129 = v39;
        }

        else
        {
          LODWORD(v128) = 1;
          sub_2314A5EEC(v25, 1u);
          v129 = 0.0;
        }

        goto LABEL_25;
      case 2:
        v129 = *v24;
        goto LABEL_14;
      case 3:
        v29 = v25[2].isa;

        if (v29)
        {
          v30 = v28;

          sub_2314A5168(v25, 3u);
          v31 = sub_23149C888(v27, v26);
          v33 = v32;

          if (v33)
          {
            v34 = *(v25[7].isa + v31);
            sub_2314A5EEC(v25, 3u);
            LODWORD(v128) = 0;
            v129 = *&v34;
          }

          else
          {
            sub_2314A5EEC(v25, 3u);
            v129 = 0.0;
            LODWORD(v128) = 1;
          }

LABEL_25:
          v40 = v30;
        }

        else
        {
LABEL_21:
          v129 = 0.0;
          LODWORD(v128) = 1;
LABEL_22:
          v40 = v28;
        }

        swift_beginAccess();
        swift_isUniquelyReferenced_nonNull_native();
        v41 = v131;
        v130 = v131;
        v42 = v40;
        v43 = sub_23149C888(v23, v40);
        if (__OFADD__(*(v41 + 16), (v44 & 1) == 0))
        {
          goto LABEL_73;
        }

        v45 = v43;
        v46 = v44;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B200, &unk_23158E100);
        if ((sub_231586A64() & 1) == 0)
        {
          if (v46)
          {
LABEL_33:

            v12 = v130;
            v54 = *(v130 + 56) + 16 * v45;
            *v54 = v129;
            *(v54 + 8) = v128;
            goto LABEL_34;
          }

LABEL_30:
          v12 = v130;
          *(v130 + 8 * (v45 >> 6) + 64) |= 1 << v45;
          v49 = (*(v12 + 48) + 16 * v45);
          *v49 = v23;
          v49[1] = v42;
          v50 = *(v12 + 56) + 16 * v45;
          *v50 = v129;
          *(v50 + 8) = v128;
          v51 = *(v12 + 16);
          v52 = __OFADD__(v51, 1);
          v53 = v51 + 1;
          if (v52)
          {
            goto LABEL_74;
          }

          *(v12 + 16) = v53;
LABEL_34:
          v131 = v12;
          swift_endAccess();
          v11 = v125;
          if (!v15)
          {
            goto LABEL_7;
          }

          continue;
        }

        v47 = sub_23149C888(v23, v42);
        if ((v46 & 1) == (v48 & 1))
        {
          v45 = v47;
          if (v46)
          {
            goto LABEL_33;
          }

          goto LABEL_30;
        }

        result = sub_231586C84();
        __break(1u);
        return result;
      default:
        v129 = v25;
LABEL_14:

        LODWORD(v128) = 0;
        goto LABEL_22;
    }
  }
}

void *sub_2314C7258()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  return v0;
}

uint64_t sub_2314C7288()
{
  sub_2314C7258();

  return MEMORY[0x2821FE8D8](v0, 40, 7);
}

uint64_t sub_2314C72FC@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  if (qword_280D70420 != -1)
  {
    OUTLINED_FUNCTION_6_0();
  }

  v4 = sub_231585FF4();
  __swift_project_value_buffer(v4, qword_280D72248);
  v5 = sub_231585FE4();
  v6 = sub_2315865F4();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_231496000, v5, v6, "Loading AudioMegamodel", v7, 2u);
    MEMORY[0x231931280](v7, -1, -1);
  }

  v8 = type metadata accessor for AudioMegamodel();
  v9 = sub_2314C7A90();
  result = sub_2315849EC(v9);
  a1[3] = v8;
  a1[4] = &off_284613740;
  *a1 = result;
  return result;
}

uint64_t sub_2314C745C@<X0>(char *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *v2;
  v6 = sub_231585724();
  v7 = *(v6 - 8);
  v8 = v7[8];
  v9 = MEMORY[0x28223BE20](v6);
  v39 = v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v41 = v36 - v12;
  MEMORY[0x28223BE20](v11);
  v14 = v36 - v13;
  if (qword_280D70420 != -1)
  {
    OUTLINED_FUNCTION_6_0();
  }

  v15 = sub_231585FF4();
  __swift_project_value_buffer(v15, qword_280D72248);
  v16 = v7[2];
  v40 = a1;
  v38 = v16;
  v16(v14, a1, v6);
  v17 = sub_231585FE4();
  v18 = sub_2315865F4();
  v19 = os_log_type_enabled(v17, v18);
  v42 = v7;
  if (v19)
  {
    v20 = swift_slowAlloc();
    v36[1] = v5;
    v21 = v20;
    v22 = swift_slowAlloc();
    v37 = a2;
    v23 = v22;
    v43 = v22;
    *v21 = 136315138;
    sub_2315856E4();
    v24 = v7[1];
    v24(v14, v6);
    v25 = sub_2314A22E8();

    *(v21 + 4) = v25;
    _os_log_impl(&dword_231496000, v17, v18, "Loading compiled AudioMegamodel from url: %s", v21, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v23);
    v26 = v23;
    a2 = v37;
    MEMORY[0x231931280](v26, -1, -1);
    MEMORY[0x231931280](v21, -1, -1);

    v27 = v24;
  }

  else
  {

    v27 = v7[1];
    v27(v14, v6);
  }

  v28 = v41;
  v29 = v38;
  v38(v41, v40, v6);
  v30 = sub_2314C7A90();
  sub_2314C78E4();
  v31 = v39;
  v29(v39, v28, v6);
  v32 = sub_2314C7928(v31, v30);
  v33 = OUTLINED_FUNCTION_1_6();
  (v27)(v33);
  v34 = type metadata accessor for AudioMegamodel();
  result = swift_allocObject();
  *(result + 16) = v32;
  a2[3] = v34;
  a2[4] = &off_284613740;
  *a2 = result;
  return result;
}

uint64_t sub_2314C77F0()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return MEMORY[0x2821FE8D8](v0, 56, 7);
}

id sub_2314C7870()
{
  v1 = sub_231586174();
  v2 = sub_231586174();
  v3 = [v0 levelForFactor:v1 withNamespaceName:v2];

  return v3;
}

unint64_t sub_2314C78E4()
{
  result = qword_280D6C5F8;
  if (!qword_280D6C5F8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280D6C5F8);
  }

  return result;
}

id sub_2314C7928(uint64_t a1, void *a2)
{
  v14[1] = *MEMORY[0x277D85DE8];
  v4 = sub_231585704();
  v14[0] = 0;
  v5 = [swift_getObjCClassFromMetadata() modelWithContentsOfURL:v4 configuration:a2 error:v14];

  v6 = v14[0];
  if (v5)
  {
    v7 = sub_231585724();
    v8 = *(*(v7 - 8) + 8);
    v9 = v6;
    v8(a1, v7);
  }

  else
  {
    v10 = v14[0];
    sub_2315856D4();

    swift_willThrow();
    v11 = sub_231585724();
    (*(*(v11 - 8) + 8))(a1, v11);
  }

  v12 = *MEMORY[0x277D85DE8];
  return v5;
}

id sub_2314C7A90()
{
  v0 = [objc_allocWithZone(MEMORY[0x277CBFF38]) init];
  [v0 setComputeUnits_];
  return v0;
}

void sub_2314C7ADC(uint64_t a1@<X8>)
{
  v3 = v1[5];
  v4 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v3);
  v5 = (*(v4 + 8))(0xD000000000000016, 0x8000000231590F50, 0xD000000000000023, 0x8000000231590F10, v3, v4);
  if (v5)
  {
    v7 = v5;
    sub_2315809D8(a1);
  }

  else
  {
    v6 = sub_231585724();

    __swift_storeEnumTagSinglePayload(a1, 1, 1, v6);
  }
}

id sub_2314C7BD0()
{
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
  v3 = (*(v2 + 8))(0xD000000000000025, 0x8000000231590EE0, 0xD000000000000023, 0x8000000231590F10, v1, v2);
  v4 = v3;
  if (v3)
  {
    v5 = [v3 longValue];
    v6 = v4;
  }

  else
  {
    if (qword_280D70420 != -1)
    {
      swift_once();
    }

    v7 = sub_231585FF4();
    __swift_project_value_buffer(v7, qword_280D72248);
    v6 = sub_231585FE4();
    v8 = sub_2315865D4();
    if (os_log_type_enabled(v6, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_231496000, v6, v8, "AudioMegamodelManaging: No minimumNowPlayingBundleCountThreshold configured", v9, 2u);
      MEMORY[0x231931280](v9, -1, -1);
    }

    v5 = 0;
  }

  return v5;
}

uint64_t sub_2314C7D44@<X0>(int a1@<W0>, uint64_t *a2@<X8>)
{
  LODWORD(v54) = a1;
  v56 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27DD5B238, &unk_2315890C0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v50[-v4];
  v6 = sub_231585724();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v50[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v50[-v13];
  MEMORY[0x28223BE20](v12);
  v16 = &v50[-v15];
  v17 = type metadata accessor for SiriSignalsSignpost();
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17);
  v20 = &v50[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_280D70418 != -1)
  {
    swift_once();
  }

  v21 = qword_280D72240;
  sub_231585FC4();
  v22 = &v20[*(v17 + 20)];
  *v22 = "loadMegamodel";
  *(v22 + 1) = 13;
  v22[16] = 2;
  sub_2315866D4();
  v55 = v21;
  sub_231585FB4();
  sub_2314C7ADC(v5);
  if (__swift_getEnumTagSinglePayload(v5, 1, v6) == 1)
  {
    sub_2314CC1C4(v5, qword_27DD5B238, &unk_2315890C0);
    if (qword_280D70420 != -1)
    {
      swift_once();
    }

    v23 = sub_231585FF4();
    __swift_project_value_buffer(v23, qword_280D72248);
    v24 = sub_231585FE4();
    v25 = sub_2315865D4();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_231496000, v24, v25, "AudioMegamodelManaging: No Trial override, using default model", v26, 2u);
      MEMORY[0x231931280](v26, -1, -1);
    }

    sub_2314C72FC(v56);
  }

  else
  {
    (*(v7 + 32))(v16, v5, v6);
    v27 = [objc_allocWithZone(MEMORY[0x277CBFF38]) init];
    [v27 setComputeUnits_];
    sub_2314C745C(v16, &v57);

    if (v58)
    {
      sub_23149FD3C(&v57, v59);
      if (qword_280D70420 != -1)
      {
        swift_once();
      }

      v28 = sub_231585FF4();
      __swift_project_value_buffer(v28, qword_280D72248);
      (*(v7 + 16))(v14, v16, v6);
      v29 = sub_231585FE4();
      v30 = sub_2315865D4();
      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        v53 = v31;
        v54 = swift_slowAlloc();
        *&v57 = v54;
        *v31 = 136446210;
        sub_2314CC224(&qword_280D70408, MEMORY[0x277CC9260]);
        sub_231586C24();
        v32 = *(v7 + 8);
        v32(v14, v6);
        v33 = sub_2314A22E8();

        v34 = v53;
        *(v53 + 4) = v33;
        v35 = v34;
        _os_log_impl(&dword_231496000, v29, v30, "AudioMegamodelManaging: Loaded megamodel from Trial-override; %{public}s", v34, 0xCu);
        v36 = v54;
        __swift_destroy_boxed_opaque_existential_1(v54);
        MEMORY[0x231931280](v36, -1, -1);
        MEMORY[0x231931280](v35, -1, -1);

        v32(v16, v6);
      }

      else
      {

        v47 = *(v7 + 8);
        v47(v14, v6);
        v47(v16, v6);
      }

      sub_23149FD3C(v59, v56);
    }

    else
    {
      sub_2314CC1C4(&v57, &qword_27DD5B210, &unk_231589010);
      if (qword_280D70420 != -1)
      {
        swift_once();
      }

      v37 = sub_231585FF4();
      __swift_project_value_buffer(v37, qword_280D72248);
      v38 = v7;
      (*(v7 + 16))(v11, v16, v6);
      v39 = sub_231585FE4();
      v40 = sub_2315865E4();
      if (os_log_type_enabled(v39, v40))
      {
        v41 = swift_slowAlloc();
        v52 = v41;
        v53 = swift_slowAlloc();
        *&v59[0] = v53;
        *v41 = 136446210;
        sub_2314CC224(&qword_280D70408, MEMORY[0x277CC9260]);
        v51 = v40;
        sub_231586C24();
        v42 = *(v38 + 8);
        v42(v11, v6);
        v43 = sub_2314A22E8();

        v44 = v52;
        *(v52 + 1) = v43;
        v45 = v44;
        _os_log_impl(&dword_231496000, v39, v51, "AudioMegamodelManaging: Failed to load Trial-overridden model from %{public}s, reverting to builtin model", v44, 0xCu);
        v46 = v53;
        __swift_destroy_boxed_opaque_existential_1(v53);
        MEMORY[0x231931280](v46, -1, -1);
        MEMORY[0x231931280](v45, -1, -1);
      }

      else
      {

        v42 = *(v7 + 8);
        v42(v11, v6);
      }

      if (v54)
      {
        sub_2314C72FC(v56);
        v42(v16, v6);
      }

      else
      {
        v42(v16, v6);
        v48 = v56;
        v56[4] = 0;
        *v48 = 0u;
        *(v48 + 1) = 0u;
      }
    }
  }

  sub_2315866C4();
  sub_231585FB4();
  return sub_2314C1DE4(v20);
}

void sub_2314C8554()
{
  v0 = off_280D6CFE0;
  v1 = *(off_280D6CFE0 + 2);

  v2 = 0;
  v16 = MEMORY[0x277D84F90];
  v3 = (v0 + 5);
  v17 = xmmword_231588FE0;
  v15 = (v0 + 5);
LABEL_2:
  for (i = &v3[16 * v2]; ; i += 16)
  {
    if (v1 == v2)
    {

      qword_280D72170 = v16;
      return;
    }

    if (v2 >= v0[2])
    {
      break;
    }

    v5 = *(i - 1);
    v6 = *i;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B230, &unk_231589380);
    inited = swift_initStackObject();
    *(inited + 16) = v17;
    *(inited + 32) = 0x7269467070417369;
    *(inited + 40) = 0xEF79747261507473;
    strcpy((inited + 48), "isBoltEnabled");
    *(inited + 62) = -4864;
    v18[0] = v5;
    v18[1] = v6;
    MEMORY[0x28223BE20](inited);
    v14[2] = v18;

    v8 = sub_2314E62A8(sub_2314BB954, v14, inited);
    swift_setDeallocating();
    sub_231536E04();
    if (v8)
    {
      v9 = v16;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v19 = v9;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v11 = *(v9 + 16);
        sub_23152D598();
        v9 = v19;
      }

      v12 = *(v9 + 16);
      if (v12 >= *(v9 + 24) >> 1)
      {
        sub_23152D598();
        v9 = v19;
      }

      ++v2;
      *(v9 + 16) = v12 + 1;
      v16 = v9;
      v13 = v9 + 16 * v12;
      *(v13 + 32) = v5;
      *(v13 + 40) = v6;
      v3 = v15;
      goto LABEL_2;
    }

    ++v2;
  }

  __break(1u);
}

uint64_t sub_2314C8780()
{
  v13 = sub_231586674();
  v0 = OUTLINED_FUNCTION_4_1(v13);
  v2 = v1;
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v0);
  OUTLINED_FUNCTION_5();
  v7 = v6 - v5;
  v8 = sub_231586654();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_5();
  v10 = sub_231586064();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  OUTLINED_FUNCTION_5();
  sub_2314A207C(0, &qword_280D6FE88, 0x277D85C78);
  sub_231586044();
  sub_2314CC224(&qword_280D6FE90, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B228, &qword_23158B8E0);
  sub_2314CBD60(&qword_280D6FEA8, &qword_27DD5B228, &qword_23158B8E0);
  sub_2315867C4();
  (*(v2 + 104))(v7, *MEMORY[0x277D85260], v13);
  result = sub_2315866A4();
  qword_280D72178 = result;
  return result;
}

uint64_t AudioMegamodelPredictor.__allocating_init()()
{
  OUTLINED_FUNCTION_14_1();
  v0 = swift_allocObject();
  AudioMegamodelPredictor.init()();
  return v0;
}

uint64_t AudioMegamodelPredictor.init()()
{
  v1 = v0;
  v2 = [objc_opt_self() clientWithIdentifier_];
  *(&v9 + 1) = sub_2314A207C(0, &qword_280D6C5E0, 0x277D73660);
  v10 = &off_284613D50;
  *&v8 = v2;
  v3 = type metadata accessor for AudioMegamodelManager();
  v4 = swift_allocObject();
  sub_23149FD3C(&v8, v4 + 16);
  *(v1 + 48) = v3;
  *(v1 + 56) = &off_284613D60;
  *(v1 + 24) = v4;
  v5 = *__swift_project_boxed_opaque_existential_1((v1 + 24), v3);
  sub_2314C7D44(1, &v8);
  v6 = v9;
  *(v1 + 64) = v8;
  *(v1 + 80) = v6;
  *(v1 + 96) = v10;
  *(v1 + 16) = 0;
  return v1;
}

uint64_t AudioMegamodelPredictor.__allocating_init(candidateBundleIds:signalValues:)()
{
  OUTLINED_FUNCTION_14_1();
  v0 = swift_allocObject();
  v1 = OUTLINED_FUNCTION_18_3();
  AudioMegamodelPredictor.init(candidateBundleIds:signalValues:)(v1, v2);
  return v0;
}

uint64_t AudioMegamodelPredictor.init(candidateBundleIds:signalValues:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = off_280D6CFE0;
  type metadata accessor for AudioMegamodelFeatureTransformer();
  swift_initStackObject();
  sub_2314C5544(v6, a1, a2);

  v7 = sub_2314C5554();

  *(v3 + 16) = v7;
  v8 = [objc_opt_self() clientWithIdentifier_];
  *(&v15 + 1) = sub_2314A207C(0, &qword_280D6C5E0, 0x277D73660);
  v16 = &off_284613D50;
  *&v14 = v8;
  v9 = type metadata accessor for AudioMegamodelManager();
  v10 = swift_allocObject();
  sub_23149FD3C(&v14, v10 + 16);
  *(v3 + 48) = v9;
  *(v3 + 56) = &off_284613D60;
  *(v3 + 24) = v10;
  v11 = *__swift_project_boxed_opaque_existential_1((v3 + 24), v9);
  sub_2314C7D44(1, &v14);
  v12 = v15;
  *(v3 + 64) = v14;
  *(v3 + 80) = v12;
  *(v3 + 96) = v16;
  return v3;
}

uint64_t sub_2314C8C60()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    v2 = *(v1 + 24);
    v3 = *(v1 + 32);
    v4 = *(v0 + 16);

    v5 = sub_2314C95D4(v2, v3);
  }

  else
  {
    if (qword_280D70420 != -1)
    {
      OUTLINED_FUNCTION_3();
      swift_once();
    }

    v6 = sub_231585FF4();
    v5 = __swift_project_value_buffer(v6, qword_280D72248);
    v7 = sub_231585FE4();
    sub_2315865E4();
    v8 = OUTLINED_FUNCTION_3_7();
    if (os_log_type_enabled(v8, v9))
    {
      OUTLINED_FUNCTION_9_5();
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_21_1(&dword_231496000, v10, v11, "AudioMegamodelPredictor: called argumentless predict() while missing the orderedFeatureMap - this shouldn't be possible");
      v12 = OUTLINED_FUNCTION_4_5();
      MEMORY[0x231931280](v12);
    }

    sub_2314CB61C();
    OUTLINED_FUNCTION_23_1();
    *v13 = 0;
    v13[1] = 0;
    swift_willThrow();
  }

  return v5;
}

uint64_t sub_2314C8D94()
{
  sub_2314CB670(v0 + 64, &v67);
  if (!v68)
  {
    sub_2314CC1C4(&v67, &qword_27DD5B210, &unk_231589010);
    if (qword_280D70420 != -1)
    {
      OUTLINED_FUNCTION_3();
      swift_once();
    }

    v15 = sub_231585FF4();
    __swift_project_value_buffer(v15, qword_280D72248);
    v16 = sub_231585FE4();
    sub_2315865E4();
    v17 = OUTLINED_FUNCTION_3_7();
    if (os_log_type_enabled(v17, v18))
    {
      OUTLINED_FUNCTION_9_5();
      v19 = swift_slowAlloc();
      OUTLINED_FUNCTION_16_0(v19);
      OUTLINED_FUNCTION_4_3(&dword_231496000, v20, v21, "AudioMegamodelPredictor#modelVersion: couldn't load model, returning 1 as version");
      OUTLINED_FUNCTION_7();
      MEMORY[0x231931280]();
    }

    return 1;
  }

  sub_23149FD3C(&v67, v69);
  v1 = [*(*__swift_project_boxed_opaque_existential_1(v69 v69[3]) + 16)];
  v2 = [v1 metadata];

  type metadata accessor for MLModelMetadataKey();
  sub_2314CC224(&qword_280D6C648, type metadata accessor for MLModelMetadataKey);
  v3 = sub_2315860D4();

  sub_231566B38(*MEMORY[0x277CBFE98], v3, &v67);

  if (!v68)
  {
    sub_2314CC1C4(&v67, &qword_27DD5B218, &unk_23158A010);
    goto LABEL_19;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_19:
    if (qword_280D70420 != -1)
    {
      OUTLINED_FUNCTION_3();
      swift_once();
    }

    v23 = sub_231585FF4();
    __swift_project_value_buffer(v23, qword_280D72248);
    v24 = sub_231585FE4();
    sub_2315865E4();
    v25 = OUTLINED_FUNCTION_3_7();
    if (os_log_type_enabled(v25, v26))
    {
      OUTLINED_FUNCTION_9_5();
      v27 = swift_slowAlloc();
      OUTLINED_FUNCTION_16_0(v27);
      OUTLINED_FUNCTION_4_3(&dword_231496000, v28, v29, "AudioMegamodelPredictor#modelVersion: couldn't retrieve description from model metadata, returning 10 as version");
      OUTLINED_FUNCTION_7();
      MEMORY[0x231931280]();
    }

    __swift_destroy_boxed_opaque_existential_1(v69);
    return 10;
  }

  v5 = sub_231586324() == 118 && v4 == 0xE100000000000000;
  if (v5)
  {
  }

  else
  {
    v6 = sub_231586C44();

    if ((v6 & 1) == 0)
    {
      if (qword_280D70420 != -1)
      {
        OUTLINED_FUNCTION_3();
        swift_once();
      }

      v7 = sub_231585FF4();
      __swift_project_value_buffer(v7, qword_280D72248);

      v8 = sub_231585FE4();
      v9 = sub_2315865E4();

      if (os_log_type_enabled(v8, v9))
      {
        OUTLINED_FUNCTION_11_1();
        v10 = swift_slowAlloc();
        OUTLINED_FUNCTION_10_1();
        v11 = swift_slowAlloc();
        *&v67 = v11;
        *v10 = 136315138;
        OUTLINED_FUNCTION_18_3();
        v12 = sub_2314A22E8();

        *(v10 + 4) = v12;
        OUTLINED_FUNCTION_22_2(&dword_231496000, v13, v14, "AudioMegamodelPredictor#modelVersion: %s didn't start with the expected 'v'; returning 30");
        __swift_destroy_boxed_opaque_existential_1(v11);
        OUTLINED_FUNCTION_7();
        MEMORY[0x231931280]();
        OUTLINED_FUNCTION_7();
        MEMORY[0x231931280]();
      }

      else
      {
      }

      __swift_destroy_boxed_opaque_existential_1(v69);
      return 30;
    }
  }

  v31 = sub_2314C9500(1uLL, v65, v66);
  v32 = MEMORY[0x23192FF30](v31);
  v34 = v33;

  v35 = HIBYTE(v34) & 0xF;
  v36 = v32 & 0xFFFFFFFFFFFFLL;
  if ((v34 & 0x2000000000000000) != 0)
  {
    v37 = HIBYTE(v34) & 0xF;
  }

  else
  {
    v37 = v32 & 0xFFFFFFFFFFFFLL;
  }

  if (!v37)
  {

    goto LABEL_98;
  }

  if ((v34 & 0x1000000000000000) != 0)
  {
    v22 = sub_2314CB6E0(v32, v34, 10);
    v53 = v64;
LABEL_97:

    if ((v53 & 1) == 0)
    {

      __swift_destroy_boxed_opaque_existential_1(v69);
      return v22;
    }

LABEL_98:
    if (qword_280D70420 != -1)
    {
      OUTLINED_FUNCTION_3();
      swift_once();
    }

    v54 = sub_231585FF4();
    __swift_project_value_buffer(v54, qword_280D72248);

    v55 = sub_231585FE4();
    v56 = sub_2315865E4();

    if (os_log_type_enabled(v55, v56))
    {
      OUTLINED_FUNCTION_11_1();
      v57 = swift_slowAlloc();
      OUTLINED_FUNCTION_10_1();
      v58 = swift_slowAlloc();
      *&v67 = v58;
      *v57 = 136315138;
      OUTLINED_FUNCTION_18_3();
      v59 = sub_2314A22E8();

      *(v57 + 4) = v59;
      OUTLINED_FUNCTION_22_2(&dword_231496000, v60, v61, "AudioMegamodelPredictor#modelVersion: couldn't convert %s to expected int; returning 20");
      __swift_destroy_boxed_opaque_existential_1(v58);
      OUTLINED_FUNCTION_7();
      MEMORY[0x231931280](v62);
      OUTLINED_FUNCTION_7();
      MEMORY[0x231931280](v63);
    }

    else
    {
    }

    __swift_destroy_boxed_opaque_existential_1(v69);
    return 20;
  }

  if ((v34 & 0x2000000000000000) == 0)
  {
    if ((v32 & 0x1000000000000000) != 0)
    {
      result = (v34 & 0xFFFFFFFFFFFFFFFLL) + 32;
    }

    else
    {
      result = sub_2315869B4();
    }

    v38 = *result;
    if (v38 == 43)
    {
      if (v36 >= 1)
      {
        if (v36 != 1)
        {
          v22 = 0;
          if (result)
          {
            while (1)
            {
              OUTLINED_FUNCTION_8_6();
              if (!v5 & v39)
              {
                goto LABEL_95;
              }

              OUTLINED_FUNCTION_1_7();
              if (!v5)
              {
                goto LABEL_95;
              }

              v22 = v46 + v45;
              if (__OFADD__(v46, v45))
              {
                goto LABEL_95;
              }

              OUTLINED_FUNCTION_17_1();
              if (v5)
              {
                goto LABEL_96;
              }
            }
          }

          goto LABEL_86;
        }

        goto LABEL_95;
      }

      goto LABEL_110;
    }

    if (v38 != 45)
    {
      if (v36)
      {
        v22 = 0;
        if (result)
        {
          while (1)
          {
            v49 = *result - 48;
            if (v49 > 9)
            {
              goto LABEL_95;
            }

            v50 = 10 * v22;
            if ((v22 * 10) >> 64 != (10 * v22) >> 63)
            {
              goto LABEL_95;
            }

            v22 = v50 + v49;
            if (__OFADD__(v50, v49))
            {
              goto LABEL_95;
            }

            ++result;
            if (!--v36)
            {
              goto LABEL_86;
            }
          }
        }

        goto LABEL_86;
      }

LABEL_95:
      v22 = 0;
      v42 = 1;
      goto LABEL_96;
    }

    if (v36 >= 1)
    {
      if (v36 != 1)
      {
        v22 = 0;
        if (result)
        {
          while (1)
          {
            OUTLINED_FUNCTION_8_6();
            if (!v5 & v39)
            {
              goto LABEL_95;
            }

            OUTLINED_FUNCTION_1_7();
            if (!v5)
            {
              goto LABEL_95;
            }

            v22 = v41 - v40;
            if (__OFSUB__(v41, v40))
            {
              goto LABEL_95;
            }

            OUTLINED_FUNCTION_17_1();
            if (v5)
            {
              goto LABEL_96;
            }
          }
        }

LABEL_86:
        v42 = 0;
LABEL_96:
        v53 = v42;
        goto LABEL_97;
      }

      goto LABEL_95;
    }

    __break(1u);
LABEL_109:
    __break(1u);
LABEL_110:
    __break(1u);
    goto LABEL_111;
  }

  *&v67 = v32;
  *(&v67 + 1) = v34 & 0xFFFFFFFFFFFFFFLL;
  if (v32 != 43)
  {
    if (v32 != 45)
    {
      if (v35)
      {
        while (1)
        {
          OUTLINED_FUNCTION_8_6();
          if (!v5 & v39)
          {
            break;
          }

          OUTLINED_FUNCTION_1_7();
          if (!v5)
          {
            break;
          }

          v22 = v52 + v51;
          if (__OFADD__(v52, v51))
          {
            break;
          }

          OUTLINED_FUNCTION_17_1();
          if (v5)
          {
            goto LABEL_96;
          }
        }
      }

      goto LABEL_95;
    }

    if (v35)
    {
      if (v35 != 1)
      {
        OUTLINED_FUNCTION_20_2();
        while (1)
        {
          OUTLINED_FUNCTION_8_6();
          if (!v5 & v39)
          {
            break;
          }

          OUTLINED_FUNCTION_1_7();
          if (!v5)
          {
            break;
          }

          v22 = v44 - v43;
          if (__OFSUB__(v44, v43))
          {
            break;
          }

          OUTLINED_FUNCTION_17_1();
          if (v5)
          {
            goto LABEL_96;
          }
        }
      }

      goto LABEL_95;
    }

    goto LABEL_109;
  }

  if (v35)
  {
    if (v35 != 1)
    {
      OUTLINED_FUNCTION_20_2();
      while (1)
      {
        OUTLINED_FUNCTION_8_6();
        if (!v5 & v39)
        {
          break;
        }

        OUTLINED_FUNCTION_1_7();
        if (!v5)
        {
          break;
        }

        v22 = v48 + v47;
        if (__OFADD__(v48, v47))
        {
          break;
        }

        OUTLINED_FUNCTION_17_1();
        if (v5)
        {
          goto LABEL_96;
        }
      }
    }

    goto LABEL_95;
  }

LABEL_111:
  __break(1u);
  return result;
}

unint64_t sub_2314C9500(unint64_t result, uint64_t a2, unint64_t a3)
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
    result = sub_231586294();
    if (v6)
    {
      result = v5;
    }

    if (4 * v3 >= result >> 14)
    {
      v7 = sub_231586344();

      return v7;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2314C95D4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v122 = sub_231586024();
  v6 = OUTLINED_FUNCTION_4_1(v122);
  v121 = v7;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_13_1(v11 - v10);
  v120 = sub_231586064();
  v12 = OUTLINED_FUNCTION_4_1(v120);
  v118 = v13;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_13_1(v17 - v16);
  v115 = sub_231586014();
  v18 = OUTLINED_FUNCTION_4_1(v115);
  v114 = v19;
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_13_1(v23 - v22);
  *&v124 = sub_231586094();
  v24 = OUTLINED_FUNCTION_4_1(v124);
  v125 = v25;
  v27 = *(v26 + 64);
  v28 = MEMORY[0x28223BE20](v24);
  v112 = v111 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v123 = v111 - v30;
  v31 = *__swift_project_boxed_opaque_existential_1((v2 + 24), *(v2 + 48));
  v32 = sub_2314C7BD0();
  v116 = a1;
  v34 = sub_2314CA4A0(a1, a2, v32, v33 & 1);
  if (qword_280D70420 != -1)
  {
LABEL_44:
    OUTLINED_FUNCTION_3();
    swift_once();
  }

  v35 = sub_231585FF4();
  v36 = __swift_project_value_buffer(v35, qword_280D72248);

  v127 = v36;
  v37 = sub_231585FE4();
  v38 = sub_2315865D4();

  if (os_log_type_enabled(v37, v38))
  {
    OUTLINED_FUNCTION_11_1();
    v39 = swift_slowAlloc();
    OUTLINED_FUNCTION_10_1();
    v40 = swift_slowAlloc();
    *&aBlock = v40;
    *v39 = 136315138;
    MEMORY[0x231930080](v34, MEMORY[0x277D837D0]);
    v41 = sub_2314A22E8();

    *(v39 + 4) = v41;
    _os_log_impl(&dword_231496000, v37, v38, "AudioMegamodelPredictor: Filtered candidate list to %s", v39, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v40);
    v42 = OUTLINED_FUNCTION_4_5();
    MEMORY[0x231931280](v42);
    OUTLINED_FUNCTION_7();
    MEMORY[0x231931280]();
  }

  v43 = off_280D6CFE0;
  type metadata accessor for AudioMegamodelFeatureTransformer();
  swift_initStackObject();
  sub_2314C5544(v43, v34, a2);
  v128 = v34;

  v129 = sub_2314C5554();

  if (qword_280D6CFF0 != -1)
  {
    swift_once();
  }

  v44 = 0;
  v45 = qword_280D72170;
  v46 = *(qword_280D72170 + 16);
  v34 = (qword_280D72170 + 40);
  while (v46 != v44)
  {
    if (v44 >= v45[2])
    {
      __break(1u);
      goto LABEL_44;
    }

    v48 = *(v34 - 1);
    v47 = *v34;
    v49 = *(*(v129 + 32) + 16);

    if (!v49 || (, sub_23149C888(v48, v47), a2 = v50, , (a2 & 1) == 0))
    {

      v51 = OUTLINED_FUNCTION_24_0();
      v52 = sub_2315865E4();

      if (os_log_type_enabled(v51, v52))
      {
        OUTLINED_FUNCTION_11_1();
        v53 = swift_slowAlloc();
        OUTLINED_FUNCTION_10_1();
        v45 = swift_slowAlloc();
        *&aBlock = v45;
        *v53 = 136315138;
        *(v53 + 4) = sub_2314A22E8();
        _os_log_impl(&dword_231496000, v51, v52, "AudioMegamodelPredictor: missing required feature [%s]", v53, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v45);
        OUTLINED_FUNCTION_7();
        MEMORY[0x231931280]();
        OUTLINED_FUNCTION_7();
        MEMORY[0x231931280]();
      }

      sub_2314CB61C();
      OUTLINED_FUNCTION_23_1();
      *v54 = v48;
      v54[1] = v47;
      swift_willThrow();
LABEL_15:

      return v45;
    }

    v34 += 2;
    ++v44;
  }

  sub_2314CB670(v3 + 64, &aBlock);
  if (!v132)
  {

    sub_2314CC1C4(&aBlock, &qword_27DD5B210, &unk_231589010);
    v61 = OUTLINED_FUNCTION_24_0();
    v62 = sub_2315865E4();
    if (os_log_type_enabled(v61, v62))
    {
      OUTLINED_FUNCTION_9_5();
      v63 = swift_slowAlloc();
      *v63 = 0;
      _os_log_impl(&dword_231496000, v61, v62, "AudioMegamodelPredictor: unable to load megamodel asset", v63, 2u);
      v64 = OUTLINED_FUNCTION_4_5();
      MEMORY[0x231931280](v64);
    }

    sub_2314CB61C();
    OUTLINED_FUNCTION_23_1();
    *v65 = xmmword_231589000;
    swift_willThrow();
    goto LABEL_15;
  }

  sub_23149FD3C(&aBlock, v139);

  v56 = OUTLINED_FUNCTION_24_0();
  v57 = sub_2315865D4();
  v58 = os_log_type_enabled(v56, v57);
  v59 = v129;
  if (v58)
  {
    OUTLINED_FUNCTION_11_1();
    v60 = swift_slowAlloc();
    *v60 = 134217984;
    *(v60 + 4) = sub_2314C8D94();

    _os_log_impl(&dword_231496000, v56, v57, "AudioMegamodelPredictor: Using the model with version number %ld", v60, 0xCu);
    OUTLINED_FUNCTION_7();
    MEMORY[0x231931280]();
  }

  else
  {
  }

  v66 = v126;
  v67 = __swift_project_boxed_opaque_existential_1(v139, v139[3]);
  v68 = sub_2314CAE80(v59);
  if (v66)
  {

    __swift_destroy_boxed_opaque_existential_1(v139);
  }

  else
  {
    v69 = v68;
    v70 = *v67;
    v71 = sub_231585234(v68);
    v111[1] = 0;
    v137 = type metadata accessor for AudioMegamodelOutput();
    v138 = sub_2314CC224(&qword_280D6D5E8, type metadata accessor for AudioMegamodelOutput);

    v136 = v71;
    if (qword_280D6CFF8 != -1)
    {
LABEL_48:
      swift_once();
    }

    v126 = qword_280D72178;
    v72 = v112;
    sub_231586074();
    v73 = v113;
    *v113 = 1;
    v74 = v114;
    v75 = v115;
    (*(v114 + 104))(v73, *MEMORY[0x277D85188], v115);
    MEMORY[0x23192FD80](v72, v73);
    (*(v74 + 8))(v73, v75);
    v76 = *(v125 + 8);
    v125 += 8;
    v115 = v76;
    v76(v72, v124);
    v77 = swift_allocObject();
    swift_weakInit();
    sub_2314A2C74(&v136, v135);
    v78 = swift_allocObject();
    v79 = v116;
    v78[2] = v77;
    v78[3] = v79;
    v80 = v128;
    v78[4] = v128;
    sub_23149FD3C(v135, (v78 + 5));
    v78[10] = v59;
    v133 = sub_2314CBBF0;
    v134 = v78;
    *&aBlock = MEMORY[0x277D85DD0];
    *(&aBlock + 1) = 1107296256;
    v131 = sub_23149B484;
    v132 = &block_descriptor_2;
    v81 = _Block_copy(&aBlock);

    v82 = v117;
    sub_231586054();
    v139[12] = MEMORY[0x277D84F90];
    sub_2314CC224(&qword_280D6FEC0, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B180, &unk_231589020);
    sub_2314CBD60(&qword_280D6FEB0, &qword_27DD5B180, &unk_231589020);
    v83 = v119;
    v59 = v122;
    sub_2315867C4();
    v84 = v123;
    MEMORY[0x231930340](v123, v82, v83, v81);
    _Block_release(v81);
    (*(v121 + 8))(v83, v59);
    (*(v118 + 8))(v82, v120);
    v115(v84, v124);

    v45 = sub_2315860F4();
    v85 = 0;
    v125 = v80[2];
    v86 = v80 + 5;
    v124 = xmmword_231588FF0;
    while (v125 != v85)
    {
      if (v85 >= v80[2])
      {
        __break(1u);
LABEL_46:
        __break(1u);
LABEL_47:
        __break(1u);
        goto LABEL_48;
      }

      v87 = *(v86 - 1);
      v59 = *v86;
      v126 = v86;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD5B830, &qword_23158B470);
      v88 = swift_allocObject();
      *(v88 + 16) = v124;

      *(v88 + 32) = sub_231586564();
      v89 = *__swift_project_boxed_opaque_existential_1(&v136, v137);
      sub_231584C88();
      v91 = v90;
      sub_2314A207C(0, &qword_280D6FE68, 0x277CCABB0);
      v92 = sub_231586374();

      v93 = [v91 objectForKeyedSubscript_];

      v94 = [v93 BOOLValue];
      swift_isUniquelyReferenced_nonNull_native();
      *&aBlock = v45;
      v95 = sub_23149C888(v87, v59);
      if (__OFADD__(v45[2], (v96 & 1) == 0))
      {
        goto LABEL_46;
      }

      v97 = v95;
      v98 = v96;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B220, &qword_231589030);
      if (sub_231586A64())
      {
        v99 = sub_23149C888(v87, v59);
        if ((v98 & 1) != (v100 & 1))
        {
          result = sub_231586C84();
          __break(1u);
          return result;
        }

        v97 = v99;
      }

      v45 = aBlock;
      if (v98)
      {
        *(*(aBlock + 56) + v97) = v94;
      }

      else
      {
        *(aBlock + 8 * (v97 >> 6) + 64) |= 1 << v97;
        v101 = (v45[6] + 16 * v97);
        *v101 = v87;
        v101[1] = v59;
        *(v45[7] + v97) = v94;
        v102 = v45[2];
        v103 = __OFADD__(v102, 1);
        v104 = v102 + 1;
        if (v103)
        {
          goto LABEL_47;
        }

        v45[2] = v104;
      }

      v86 = (v126 + 16);
      ++v85;
      v80 = v128;
    }

    v105 = OUTLINED_FUNCTION_24_0();
    v106 = sub_2315865D4();
    if (os_log_type_enabled(v105, v106))
    {
      OUTLINED_FUNCTION_11_1();
      v107 = swift_slowAlloc();
      OUTLINED_FUNCTION_10_1();
      v108 = swift_slowAlloc();
      *&aBlock = v108;
      *v107 = 136315138;

      sub_2315860E4();

      v109 = sub_2314A22E8();

      *(v107 + 4) = v109;
      _os_log_impl(&dword_231496000, v105, v106, "AudioMegamodelPredictor: predicted bundles: %s", v107, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v108);
      OUTLINED_FUNCTION_7();
      MEMORY[0x231931280]();
      v110 = OUTLINED_FUNCTION_4_5();
      MEMORY[0x231931280](v110);
    }

    __swift_destroy_boxed_opaque_existential_1(&v136);
    __swift_destroy_boxed_opaque_existential_1(v139);
  }

  return v45;
}

void *sub_2314CA4A0(uint64_t a1, uint64_t a2, Swift::Int a3, char a4)
{
  v7 = a1;
  v8 = sub_23156CB28(a1, a2);
  sub_23156CD98(v7, a2);
  if ((a4 & 1) != 0 || a3 < 0 || !*(a2 + 16))
  {
    goto LABEL_21;
  }

  v10 = v9;
  v59 = v8;

  v11 = sub_23149C888(0xD000000000000015, 0x80000002315904F0);
  if ((v12 & 1) == 0)
  {

LABEL_21:

    if (qword_280D70420 != -1)
    {
      OUTLINED_FUNCTION_3();
      swift_once();
    }

    v35 = sub_231585FF4();
    __swift_project_value_buffer(v35, qword_280D72248);
    v36 = sub_231585FE4();
    sub_2315865D4();
    v37 = OUTLINED_FUNCTION_3_7();
    if (!os_log_type_enabled(v37, v38))
    {
      goto LABEL_26;
    }

    OUTLINED_FUNCTION_9_5();
    v39 = swift_slowAlloc();
    OUTLINED_FUNCTION_16_0(v39);
    v42 = "bundleCountThreshold does not exist. Skipping filtration";
    goto LABEL_25;
  }

  v57 = a2;
  v13 = v7[2];
  if (!v13)
  {

    if (qword_280D70420 != -1)
    {
      OUTLINED_FUNCTION_3();
      swift_once();
    }

    v50 = sub_231585FF4();
    __swift_project_value_buffer(v50, qword_280D72248);
    v36 = sub_231585FE4();
    sub_2315865E4();
    v51 = OUTLINED_FUNCTION_3_7();
    if (!os_log_type_enabled(v51, v52))
    {
      goto LABEL_26;
    }

    OUTLINED_FUNCTION_9_5();
    v53 = swift_slowAlloc();
    OUTLINED_FUNCTION_16_0(v53);
    v42 = "AudioMegamodelPredictor#filterCandidateBundleIds no candidate bundle ids found. Skipping filtration";
    goto LABEL_25;
  }

  v14 = *(a2 + 56) + 16 * v11;
  v15 = v7[4];
  v16 = v7[5];
  v63 = *v14;
  v62 = *(v14 + 8);
  sub_2314A5168(*v14, v62);

  v60 = sub_23156C67C(v15, v16, v7, a2);
  v18 = v17;
  if (qword_280D70420 != -1)
  {
    OUTLINED_FUNCTION_3();
    swift_once();
  }

  v19 = sub_231585FF4();
  __swift_project_value_buffer(v19, qword_280D72248);
  v20 = sub_231585FE4();
  v21 = sub_2315865D4();
  v61 = a3;
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    OUTLINED_FUNCTION_10_1();
    v23 = swift_slowAlloc();
    v64[0] = v23;
    *v22 = 134218242;
    *(v22 + 4) = a3;
    *(v22 + 12) = 2080;
    *(v22 + 14) = sub_2314A22E8();
    _os_log_impl(&dword_231496000, v20, v21, "AudioMegamodelPredictor: Filtering candidate list with nowPlayingCountThreshold of %lld and filtering signal: %s", v22, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v23);
    OUTLINED_FUNCTION_7();
    MEMORY[0x231931280]();
    OUTLINED_FUNCTION_7();
    MEMORY[0x231931280]();
  }

  v24 = v59;
  v25 = v18 & 1;
  v26 = v7 + 5;
  v27 = MEMORY[0x277D84F90];
  v58 = v7;
  v28 = v57;
  do
  {
    v29 = *(v26 - 1);
    v30 = *v26;
    v64[0] = v29;
    v64[1] = v30;

    if (sub_2314CB148(v64, v10, v63, v62, v61, v7, v28, v24, v60, v25))
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v65 = v27;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v32 = *(v27 + 16);
        sub_23152D598();
        v28 = v57;
        v27 = v65;
      }

      v33 = *(v27 + 16);
      if (v33 >= *(v27 + 24) >> 1)
      {
        sub_23152D598();
        v28 = v57;
        v27 = v65;
      }

      *(v27 + 16) = v33 + 1;
      v34 = v27 + 16 * v33;
      *(v34 + 32) = v29;
      *(v34 + 40) = v30;
      v7 = v58;
      v24 = v59;
    }

    else
    {
    }

    v26 += 2;
    --v13;
  }

  while (v13);

  sub_2314A5EEC(v63, v62);

  v44 = sub_231585FE4();
  v45 = sub_2315865D4();

  if (os_log_type_enabled(v44, v45))
  {
    OUTLINED_FUNCTION_11_1();
    v46 = swift_slowAlloc();
    OUTLINED_FUNCTION_10_1();
    v47 = swift_slowAlloc();
    v64[0] = v47;
    *v46 = 136315138;
    MEMORY[0x231930080](v27, MEMORY[0x277D837D0]);
    v48 = sub_2314A22E8();

    *(v46 + 4) = v48;
    _os_log_impl(&dword_231496000, v44, v45, "AudioMegamodelPredictor: All available apps after threshold check filtration: %s", v46, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v47);
    v7 = v58;
    OUTLINED_FUNCTION_7();
    MEMORY[0x231931280]();
    v49 = OUTLINED_FUNCTION_4_5();
    MEMORY[0x231931280](v49);
  }

  if (*(v27 + 16))
  {
    return v27;
  }

  v36 = sub_231585FE4();
  sub_2315865D4();
  v54 = OUTLINED_FUNCTION_3_7();
  if (os_log_type_enabled(v54, v55))
  {
    OUTLINED_FUNCTION_9_5();
    v56 = swift_slowAlloc();
    OUTLINED_FUNCTION_16_0(v56);
    v42 = "AudioMegamodelPredictor: All apps failed to meet the required threshold to be included during app selection. Returning all apps instead of an empty list";
LABEL_25:
    OUTLINED_FUNCTION_4_3(&dword_231496000, v40, v41, v42);
    OUTLINED_FUNCTION_7();
    MEMORY[0x231931280]();
  }

LABEL_26:

  return v7;
}

void sub_2314CAA2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {

    sub_23149FF38();
    v7 = v6;

    sub_23149FF38();
    v9 = sub_231529598(v8, v7);

    v10 = sub_2315715F4(v9);
    if (qword_280D70420 != -1)
    {
      swift_once();
    }

    v11 = sub_231585FF4();
    __swift_project_value_buffer(v11, qword_280D72248);
    sub_2314A2C74(a4, v31);

    v12 = sub_231585FE4();
    v13 = sub_2315865D4();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      *v14 = 136315650;
      v15 = v31[4];
      __swift_project_boxed_opaque_existential_1(v31, v31[3]);
      v16 = *(v15 + 8);
      sub_231586C24();
      __swift_destroy_boxed_opaque_existential_1(v31);
      v17 = sub_2314A22E8();

      *(v14 + 4) = v17;
      *(v14 + 12) = 2080;
      v18 = MEMORY[0x277D837D0];
      MEMORY[0x231930080](a3, MEMORY[0x277D837D0]);
      v19 = sub_2314A22E8();

      *(v14 + 14) = v19;
      *(v14 + 22) = 2080;
      MEMORY[0x231930080](v10, v18);

      v20 = sub_2314A22E8();

      *(v14 + 24) = v20;
      _os_log_impl(&dword_231496000, v12, v13, "AudioMegamodelPredictor: (async) %s, bundles (sent to model): %s, bundles (not sent to mode): %s", v14, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x231931280](v30, -1, -1);
      MEMORY[0x231931280](v14, -1, -1);
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_1(v31);
    }

    v25 = sub_231585FE4();
    v26 = sub_2315865D4();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v31[0] = v28;
      *v27 = 136315138;
      sub_23152965C();
      v29 = sub_2314A22E8();

      *(v27 + 4) = v29;
      _os_log_impl(&dword_231496000, v25, v26, "AudioMegamodelPredictor: (async) %s", v27, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v28);
      MEMORY[0x231931280](v28, -1, -1);
      MEMORY[0x231931280](v27, -1, -1);
    }
  }

  else
  {
    if (qword_280D70420 != -1)
    {
      swift_once();
    }

    v21 = sub_231585FF4();
    __swift_project_value_buffer(v21, qword_280D72248);
    v22 = sub_231585FE4();
    v23 = sub_2315865D4();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_231496000, v22, v23, "AudioMegamodelPredictor: (async) self deallocated prematurely", v24, 2u);
      MEMORY[0x231931280](v24, -1, -1);
    }
  }
}

id sub_2314CAE80(uint64_t a1)
{
  v3 = sub_23152989C();
  if (v3)
  {
    v4 = v3;
    if (qword_280D70420 != -1)
    {
      OUTLINED_FUNCTION_3();
      swift_once();
    }

    v5 = sub_231585FF4();
    __swift_project_value_buffer(v5, qword_280D72248);

    v1 = v4;
    v6 = sub_231585FE4();
    v7 = sub_2315865D4();

    if (os_log_type_enabled(v6, v7))
    {
      OUTLINED_FUNCTION_10_1();
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      swift_slowAlloc();
      *v8 = 138412802;
      *(v8 + 4) = v1;
      *v9 = v4;
      *(v8 + 12) = 2080;
      v10 = *(a1 + 24);
      v22 = v1;
      MEMORY[0x231930080](v10, MEMORY[0x277D837D0]);
      v11 = sub_2314A22E8();

      *(v8 + 14) = v11;
      *(v8 + 22) = 2080;
      MEMORY[0x231930080](*(a1 + 16), MEMORY[0x277D837D0]);
      v12 = sub_2314A22E8();

      *(v8 + 24) = v12;
      _os_log_impl(&dword_231496000, v6, v7, "AudioMegamodelPredictor: Model input: %@ for candidate bundle ids: %s and featureList: %s", v8, 0x20u);
      sub_2314CC1C4(v9, &unk_27DD5B410, &unk_2315890B0);
      OUTLINED_FUNCTION_7();
      MEMORY[0x231931280]();
      swift_arrayDestroy();
      OUTLINED_FUNCTION_7();
      MEMORY[0x231931280]();
      OUTLINED_FUNCTION_7();
      MEMORY[0x231931280]();

      return v22;
    }
  }

  else
  {
    if (qword_280D70420 != -1)
    {
      OUTLINED_FUNCTION_3();
      swift_once();
    }

    v14 = sub_231585FF4();
    __swift_project_value_buffer(v14, qword_280D72248);
    v15 = sub_231585FE4();
    sub_2315865E4();
    v16 = OUTLINED_FUNCTION_3_7();
    if (os_log_type_enabled(v16, v17))
    {
      OUTLINED_FUNCTION_9_5();
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_21_1(&dword_231496000, v18, v19, "AudioMegamodelPredictor: Unable to build input from feature set and signal values");
      v20 = OUTLINED_FUNCTION_4_5();
      MEMORY[0x231931280](v20);
    }

    sub_2314CB61C();
    OUTLINED_FUNCTION_23_1();
    *v21 = 0;
    v21[1] = 0;
    swift_willThrow();
  }

  return v1;
}

uint64_t sub_2314CB148(uint64_t *a1, double a2, uint64_t a3, uint64_t a4, Swift::Int a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10)
{
  v17 = *a1;
  v16 = a1[1];
  v18._countAndFlagsBits = *a1;
  v18._object = v16;
  v33 = SignalValue.valueInt(for:)(v18);
  if (!v33.is_nil && v33.value > a5 && (sub_23156C72C(a9, a10 & 1, v17, v16, a6, a7) & 1) != 0)
  {
    return 1;
  }

  if (a10)
  {
    v19 = 5;
  }

  else
  {
    v19 = sub_23150D60C(a9);
  }

  if (sub_23156C974(v19, v17, v16, a6, a7, a8, a2))
  {
    if (qword_280D70420 != -1)
    {
      swift_once();
    }

    v20 = sub_231585FF4();
    __swift_project_value_buffer(v20, qword_280D72248);

    v21 = sub_231585FE4();
    v22 = sub_2315865D4();

    if (!os_log_type_enabled(v21, v22))
    {
      goto LABEL_18;
    }

    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    *v23 = 136315138;
    *(v23 + 4) = sub_2314A22E8();
    v25 = "AudioMegamodelPredictor: %s bundleCount < bundleCountThreshold but the user has previously requested to play content on this app. Keeping";
LABEL_17:
    _os_log_impl(&dword_231496000, v21, v22, v25, v23, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v24);
    MEMORY[0x231931280](v24, -1, -1);
    MEMORY[0x231931280](v23, -1, -1);
LABEL_18:

    return 1;
  }

  if (sub_23156CA6C(v17, v16, a6, a7, a8, a2))
  {
    if (qword_280D70420 != -1)
    {
      swift_once();
    }

    v26 = sub_231585FF4();
    __swift_project_value_buffer(v26, qword_280D72248);

    v21 = sub_231585FE4();
    v22 = sub_2315865D4();

    if (!os_log_type_enabled(v21, v22))
    {
      goto LABEL_18;
    }

    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    *v23 = 136315138;
    *(v23 + 4) = sub_2314A22E8();
    v25 = "AudioMegamodelPredictor: %s bundleCount < bundleCountThreshold but user has previously requested to play this entity on this app. Keeping";
    goto LABEL_17;
  }

  if (qword_280D70420 != -1)
  {
    swift_once();
  }

  v28 = sub_231585FF4();
  __swift_project_value_buffer(v28, qword_280D72248);

  v29 = sub_231585FE4();
  v30 = sub_2315865D4();

  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    *v31 = 136446210;
    *(v31 + 4) = sub_2314A22E8();
    _os_log_impl(&dword_231496000, v29, v30, "AudioMegamodelPredictor: Filtering out candidate %{public}s. Bundle play count, mediaType and entitySearch counts don't exist or < threshold.", v31, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v32);
    MEMORY[0x231931280](v32, -1, -1);
    MEMORY[0x231931280](v31, -1, -1);
  }

  return 0;
}

uint64_t AudioMegamodelPredictor.deinit()
{
  v1 = *(v0 + 16);

  __swift_destroy_boxed_opaque_existential_1((v0 + 24));
  sub_2314CC1C4(v0 + 64, &qword_27DD5B210, &unk_231589010);
  return v0;
}

uint64_t AudioMegamodelPredictor.__deallocating_deinit()
{
  AudioMegamodelPredictor.deinit();
  v0 = OUTLINED_FUNCTION_14_1();

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

unint64_t sub_2314CB61C()
{
  result = qword_27DD5B208;
  if (!qword_27DD5B208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD5B208);
  }

  return result;
}

uint64_t sub_2314CB670(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B210, &unk_231589010);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unsigned __int8 *sub_2314CB6E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v80 = a1;
  v81 = a2;

  result = sub_231586334();
  v6 = result;
  v7 = v5;
  if ((v5 & 0x1000000000000000) != 0)
  {
    OUTLINED_FUNCTION_18_3();
    v6 = sub_2314CBDB4();
    v44 = v43;

    v7 = v44;
    if ((v44 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v7 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v8 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      OUTLINED_FUNCTION_18_3();
      result = sub_2315869B4();
    }

    v9 = *result;
    if (v9 == 43)
    {
      if (v8 >= 1)
      {
        if (v8 != 1)
        {
          OUTLINED_FUNCTION_15_1();
          if (v25 ^ v26 | v24)
          {
            v29 = 65;
          }

          if (!(v25 ^ v26 | v24))
          {
            v30 = 58;
          }

          if (v27)
          {
            v17 = 0;
            v31 = (v27 + 1);
            do
            {
              v32 = *v31;
              if (v32 < 0x30 || v32 >= v30)
              {
                if (v32 < 0x41 || v32 >= v29)
                {
                  OUTLINED_FUNCTION_16_1();
                  if (!v22 || v32 >= v34)
                  {
                    goto LABEL_142;
                  }

                  v33 = -87;
                }

                else
                {
                  v33 = -55;
                }
              }

              else
              {
                v33 = -48;
              }

              v35 = v17 * a3;
              if ((v17 * a3) >> 64 != (v17 * a3) >> 63)
              {
                goto LABEL_141;
              }

              v17 = v35 + (v32 + v33);
              if (__OFADD__(v35, (v32 + v33)))
              {
                goto LABEL_141;
              }

              ++v31;
              --v28;
            }

            while (v28);
LABEL_52:
            v6 = v17;
            goto LABEL_142;
          }

          goto LABEL_72;
        }

LABEL_141:
        v6 = 0;
        goto LABEL_142;
      }

      goto LABEL_146;
    }

    if (v9 != 45)
    {
      if (v8)
      {
        v36 = a3 + 48;
        v37 = a3 + 55;
        v38 = a3 + 87;
        if (a3 > 10)
        {
          v36 = 58;
        }

        else
        {
          v38 = 97;
          v37 = 65;
        }

        if (result)
        {
          v39 = 0;
          do
          {
            v40 = *result;
            if (v40 < 0x30 || v40 >= v36)
            {
              if (v40 < 0x41 || v40 >= v37)
              {
                v6 = 0;
                if (v40 < 0x61 || v40 >= v38)
                {
                  goto LABEL_142;
                }

                v41 = -87;
              }

              else
              {
                v41 = -55;
              }
            }

            else
            {
              v41 = -48;
            }

            v42 = v39 * a3;
            if ((v39 * a3) >> 64 != (v39 * a3) >> 63)
            {
              goto LABEL_141;
            }

            v39 = v42 + (v40 + v41);
            if (__OFADD__(v42, (v40 + v41)))
            {
              goto LABEL_141;
            }

            ++result;
            --v8;
          }

          while (v8);
          v6 = v42 + (v40 + v41);
          goto LABEL_142;
        }

        goto LABEL_72;
      }

      goto LABEL_141;
    }

    if (v8 >= 1)
    {
      if (v8 != 1)
      {
        OUTLINED_FUNCTION_15_1();
        if (v11 ^ v12 | v10)
        {
          v15 = 65;
        }

        if (!(v11 ^ v12 | v10))
        {
          v16 = 58;
        }

        if (v13)
        {
          v17 = 0;
          v18 = (v13 + 1);
          while (1)
          {
            v19 = *v18;
            if (v19 < 0x30 || v19 >= v16)
            {
              if (v19 < 0x41 || v19 >= v15)
              {
                OUTLINED_FUNCTION_16_1();
                if (!v22 || v19 >= v21)
                {
                  goto LABEL_142;
                }

                v20 = -87;
              }

              else
              {
                v20 = -55;
              }
            }

            else
            {
              v20 = -48;
            }

            v23 = v17 * a3;
            if ((v17 * a3) >> 64 != (v17 * a3) >> 63)
            {
              goto LABEL_141;
            }

            v17 = v23 - (v19 + v20);
            if (__OFSUB__(v23, (v19 + v20)))
            {
              goto LABEL_141;
            }

            ++v18;
            if (!--v14)
            {
              goto LABEL_52;
            }
          }
        }

LABEL_72:
        v6 = 0;
LABEL_142:

        return v6;
      }

      goto LABEL_141;
    }

    __break(1u);
LABEL_145:
    __break(1u);
LABEL_146:
    __break(1u);
    goto LABEL_147;
  }

  v45 = HIBYTE(v7) & 0xF;
  v80 = v6;
  v81 = v7 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v45)
      {
        OUTLINED_FUNCTION_6_7();
        if (v70 ^ v71 | v69)
        {
          v73 = 65;
        }

        if (!(v70 ^ v71 | v69))
        {
          v74 = 58;
        }

        v75 = &v80;
        while (1)
        {
          v76 = *v75;
          if (v76 < 0x30 || v76 >= v74)
          {
            if (v76 < 0x41 || v76 >= v73)
            {
              OUTLINED_FUNCTION_16_1();
              if (!v22 || v76 >= v78)
              {
                goto LABEL_142;
              }

              v77 = -87;
            }

            else
            {
              v77 = -55;
            }
          }

          else
          {
            v77 = -48;
          }

          v79 = v50 * a3;
          if ((v50 * a3) >> 64 != (v50 * a3) >> 63)
          {
            goto LABEL_141;
          }

          v50 = v79 + (v76 + v77);
          if (__OFADD__(v79, (v76 + v77)))
          {
            goto LABEL_141;
          }

          v75 = (v75 + 1);
          if (!--v72)
          {
            goto LABEL_140;
          }
        }
      }

      goto LABEL_141;
    }

    if (v45)
    {
      if (v45 != 1)
      {
        OUTLINED_FUNCTION_6_7();
        if (v47 ^ v48 | v46)
        {
          v51 = 65;
        }

        if (!(v47 ^ v48 | v46))
        {
          v52 = 58;
        }

        v53 = &v80 + 1;
        while (1)
        {
          v54 = *v53;
          if (v54 < 0x30 || v54 >= v52)
          {
            if (v54 < 0x41 || v54 >= v51)
            {
              OUTLINED_FUNCTION_16_1();
              if (!v22 || v54 >= v56)
              {
                goto LABEL_142;
              }

              v55 = -87;
            }

            else
            {
              v55 = -55;
            }
          }

          else
          {
            v55 = -48;
          }

          v57 = v50 * a3;
          if ((v50 * a3) >> 64 != (v50 * a3) >> 63)
          {
            goto LABEL_141;
          }

          v50 = v57 - (v54 + v55);
          if (__OFSUB__(v57, (v54 + v55)))
          {
            goto LABEL_141;
          }

          ++v53;
          if (!--v49)
          {
            goto LABEL_140;
          }
        }
      }

      goto LABEL_141;
    }

    goto LABEL_145;
  }

  if (v45)
  {
    if (v45 != 1)
    {
      OUTLINED_FUNCTION_6_7();
      if (v59 ^ v60 | v58)
      {
        v62 = 65;
      }

      if (!(v59 ^ v60 | v58))
      {
        v63 = 58;
      }

      v64 = &v80 + 1;
      do
      {
        v65 = *v64;
        if (v65 < 0x30 || v65 >= v63)
        {
          if (v65 < 0x41 || v65 >= v62)
          {
            OUTLINED_FUNCTION_16_1();
            if (!v22 || v65 >= v67)
            {
              goto LABEL_142;
            }

            v66 = -87;
          }

          else
          {
            v66 = -55;
          }
        }

        else
        {
          v66 = -48;
        }

        v68 = v50 * a3;
        if ((v50 * a3) >> 64 != (v50 * a3) >> 63)
        {
          goto LABEL_141;
        }

        v50 = v68 + (v65 + v66);
        if (__OFADD__(v68, (v65 + v66)))
        {
          goto LABEL_141;
        }

        ++v64;
        --v61;
      }

      while (v61);
LABEL_140:
      v6 = v50;
      goto LABEL_142;
    }

    goto LABEL_141;
  }

LABEL_147:
  __break(1u);
  return result;
}

uint64_t sub_2314CBD60(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_2314CBDB4()
{
  v0 = sub_2314CBE20();
  v4 = sub_2314CBE54(v0, v1, v2, v3);

  return v4;
}

uint64_t sub_2314CBE54(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) == 0)
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v15[0] = a3;
      v15[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return sub_231586264();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }

    goto LABEL_11;
  }

  v9 = sub_231586784();
  if (!v9)
  {
    v11 = MEMORY[0x277D84F90];
    goto LABEL_13;
  }

  v10 = v9;
  v11 = sub_2314A26B0(v9, 0);
  v12 = sub_2314CBFB4(v15, (v11 + 4), v10, a1, a2, a3, a4);

  if (v12 == v10)
  {
LABEL_13:
    v13 = v11[2];
    v14 = sub_231586264();

    return v14;
  }

  __break(1u);
LABEL_11:
  sub_2315869B4();
LABEL_4:

  return sub_231586264();
}

unint64_t sub_2314CBFB4(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_36;
  }

  if (a3 < 0)
  {
    goto LABEL_40;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_36:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    result = v12;
    if ((v12 & 0xC) == v15)
    {
      result = sub_2314E4F1C(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_2315862E4();
      v19 = result;
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = sub_2315869B4();
        }

        v19 = *(result + v18);
      }
    }

    if ((v12 & 0xC) == v15)
    {
      result = sub_2314E4F1C(v12, a6, a7);
      v12 = result;
      if ((a7 & 0x1000000000000000) == 0)
      {
LABEL_27:
        v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
        goto LABEL_31;
      }
    }

    else if ((a7 & 0x1000000000000000) == 0)
    {
      goto LABEL_27;
    }

    if (v23 <= v12 >> 16)
    {
      goto LABEL_39;
    }

    result = sub_2315862C4();
    v12 = result;
LABEL_31:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_36;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_38;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_36;
    }
  }

  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_2314CC1C4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_2314CC224(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2314CC270()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_2314CC2B8(uint64_t *a1, int a2)
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

uint64_t sub_2314CC2F8(uint64_t result, int a2, int a3)
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

uint64_t sub_2314CC350(uint64_t a1, int a2)
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

uint64_t sub_2314CC390(uint64_t result, int a2, int a3)
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

void sub_2314CC3E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v47 = *MEMORY[0x277D85DE8];
  v10 = BiomeLibrary();
  v11 = sub_231586174();
  aBlock = 0;
  v12 = [v10 streamWithIdentifier:v11 error:&aBlock];
  swift_unknownObjectRelease();

  v13 = aBlock;
  if (v12)
  {
    aBlock = 0xD000000000000019;
    v42 = 0x8000000231590F70;
    v14 = v13;
    MEMORY[0x23192FF80](a3, a4);
    v15 = aBlock;
    v16 = v42;
    objc_allocWithZone(MEMORY[0x277CF1918]);
    v17 = a5;
    v40 = sub_231560678(v15, v16, v17);
    v18 = [v12 DSLPublisher];
    v19 = [v18 subscribeOn_];

    v20 = swift_allocObject();
    v20[2] = a3;
    v20[3] = a4;
    v20[4] = v17;
    v45 = sub_2314CCA40;
    v46 = v20;
    aBlock = MEMORY[0x277D85DD0];
    v42 = 1107296256;
    v43 = sub_2314B901C;
    v44 = &block_descriptor_3;
    v21 = _Block_copy(&aBlock);
    v22 = v17;

    v23 = swift_allocObject();
    v23[2] = a1;
    v23[3] = a2;
    v23[4] = a3;
    v23[5] = a4;
    v23[6] = v22;
    v45 = sub_23149A690;
    v46 = v23;
    aBlock = MEMORY[0x277D85DD0];
    v42 = 1107296256;
    v43 = sub_23149A630;
    v44 = &block_descriptor_6;
    v24 = _Block_copy(&aBlock);
    v25 = v22;

    v26 = [v19 sinkWithCompletion:v21 receiveInput:v24];

    _Block_release(v24);
    _Block_release(v21);
  }

  else
  {
    v27 = aBlock;
    v28 = sub_2315856D4();

    swift_willThrow();
    if (qword_280D70420 != -1)
    {
      swift_once();
    }

    v29 = sub_231585FF4();
    __swift_project_value_buffer(v29, qword_280D72248);

    v30 = a5;
    v31 = v28;
    v32 = sub_231585FE4();
    v33 = sub_2315865E4();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      aBlock = v36;
      *v34 = 136315394;
      *(v34 + 4) = sub_2314A22E8();
      *(v34 + 12) = 2112;
      v37 = v28;
      v38 = _swift_stdlib_bridgeErrorToNSError();
      *(v34 + 14) = v38;
      *v35 = v38;
      _os_log_impl(&dword_231496000, v32, v33, "BiomeListener: Unrecognized stream [%s]: %@", v34, 0x16u);
      sub_2314BEEA4(v35);
      MEMORY[0x231931280](v35, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v36);
      MEMORY[0x231931280](v36, -1, -1);
      MEMORY[0x231931280](v34, -1, -1);
    }

    else
    {
    }
  }

  v39 = *MEMORY[0x277D85DE8];
}

void sub_2314CC89C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (qword_280D70420 != -1)
  {
    swift_once();
  }

  v5 = sub_231585FF4();
  __swift_project_value_buffer(v5, qword_280D72248);

  v6 = a4;
  oslog = sub_231585FE4();
  v7 = sub_2315865D4();

  if (os_log_type_enabled(oslog, v7))
  {
    v8 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v8 = 136315138;
    *(v8 + 4) = sub_2314A22E8();
    _os_log_impl(&dword_231496000, oslog, v7, "BiomeListener: cancelled subscription on %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v10);
    MEMORY[0x231931280](v10, -1, -1);
    MEMORY[0x231931280](v8, -1, -1);
  }
}

uint64_t sub_2314CCA08@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = nullsub_1(a1);
  *a2 = result;
  a2[1] = v4;
  a2[2] = v5;
  return result;
}

uint64_t sub_2314CCA54()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 16);
  if (v2)
  {
    v10 = MEMORY[0x277D84F90];
    sub_23152D598();
    v3 = (v1 + 40);
    do
    {
      v4 = *(v3 - 1);
      v5 = *v3;

      MEMORY[0x23192FF80](v4, v5);
      MEMORY[0x23192FF80](34, 0xE100000000000000);

      v6 = *(v10 + 16);
      if (v6 >= *(v10 + 24) >> 1)
      {
        sub_23152D598();
      }

      *(v10 + 16) = v6 + 1;
      v7 = v10 + 16 * v6;
      *(v7 + 32) = 34;
      *(v7 + 40) = 0xE100000000000000;
      v3 += 2;
      --v2;
    }

    while (v2);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B0E8, &unk_231589320);
  sub_2314A7490();
  v8 = sub_231586154();

  return v8;
}

uint64_t sub_2314CCBB0()
{
  v26 = 0;
  v27 = 0xE000000000000000;
  sub_231586954();
  MEMORY[0x23192FF80](0xD00000000000003CLL, 0x8000000231591090);
  v1 = OUTLINED_FUNCTION_0_9();
  MEMORY[0x23192FF80](v1);
  MEMORY[0x23192FF80](0xD000000000000025, 0x80000002315910D0);
  v2 = v0[7];
  __swift_project_boxed_opaque_existential_1(v0 + 3, v0[6]);
  v3 = *(v2 + 8);
  OUTLINED_FUNCTION_1_8();
  v7 = v6(v4, v5);

  if (*(v7 + 16))
  {
    v8 = *(v7 + 40);
    v24 = *(v7 + 32);
    v9 = *(v7 + 48);
    v23 = *(v7 + 56);
    v10 = sub_2314CD024(v7);
    v12 = v11;

    if (v12)
    {
      v13 = v0[2];
      v14 = 0;
      v25 = sub_2315860F4();
      v15 = *(v13 + 16);
      for (i = (v13 + 40); ; i += 2)
      {
        if (v15 == v14)
        {

          return v25;
        }

        if (v14 >= *(v13 + 16))
        {
          break;
        }

        v17 = *i;
        v26 = *(i - 1);
        v27 = v17;

        sub_2314CD08C(&v25, &v26, v24, v8, v23, v10, v12);

        ++v14;
      }

      __break(1u);
      goto LABEL_13;
    }
  }

  if (qword_280D70420 != -1)
  {
LABEL_13:
    swift_once();
  }

  v19 = sub_231585FF4();
  __swift_project_value_buffer(v19, qword_280D72248);
  v20 = sub_231585FE4();
  v21 = sub_2315865E4();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&dword_231496000, v20, v21, "BiomeQueriesAppInFocus.isInFocus: Nothing found by query.", v22, 2u);
    MEMORY[0x231931280](v22, -1, -1);
  }

  return 0;
}

void sub_2314CCEC8(uint64_t a1)
{
  v1 = 0;
  v2 = *(a1 + 16);
  v3 = a1 + 32;
  v19 = MEMORY[0x277D84F90];
  while (v2 != v1)
  {
    if (v1 >= v2)
    {
      __break(1u);
LABEL_13:
      __break(1u);
      return;
    }

    v4 = v1 + 1;
    if (__OFADD__(v1, 1))
    {
      goto LABEL_13;
    }

    v5 = *(v3 + 8 * v1);

    v7 = sub_231509E78(v6, 0x74736574616CLL, 0xE600000000000000, 0x676E697472617473, 0xE800000000000000);
    v9 = v8;
    v11 = v10;
    v13 = v12;

    ++v1;
    if (v9)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v16 = *(v19 + 16);
        sub_2314F12D0();
        v19 = v17;
      }

      v14 = *(v19 + 16);
      if (v14 >= *(v19 + 24) >> 1)
      {
        sub_2314F12D0();
        v19 = v18;
      }

      *(v19 + 16) = v14 + 1;
      v15 = v19 + 32 * v14;
      *(v15 + 32) = v7;
      *(v15 + 40) = v9;
      *(v15 + 48) = v11;
      *(v15 + 56) = v13 & 1;
      v1 = v4;
    }
  }
}

uint64_t sub_2314CD024(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = (a1 + 32 * v1);
  v3 = *v2;
  v4 = v2[1];
  v5 = v2[2];
  v6 = *(v2 + 24);

  return v3;
}

void sub_2314CD08C(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7)
{
  v10 = *a2;
  v9 = a2[1];
  if (*a2 == a3 && v9 == a4)
  {
    if ((a5 & 1) == 0)
    {
LABEL_26:
      if (qword_280D70420 != -1)
      {
        swift_once();
      }

      v25 = sub_231585FF4();
      __swift_project_value_buffer(v25, qword_280D72248);

      v22 = sub_231585FE4();
      v26 = sub_2315865D4();

      if (os_log_type_enabled(v22, v26))
      {
        v27 = swift_slowAlloc();
        v31 = swift_slowAlloc();
        *v27 = 136315138;
        *(v27 + 4) = sub_2314A22E8();
        _os_log_impl(&dword_231496000, v22, v26, "inside else if %s", v27, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v31);
        MEMORY[0x231931280](v31, -1, -1);
        MEMORY[0x231931280](v27, -1, -1);
      }

LABEL_30:

      v28 = *a1;
      swift_isUniquelyReferenced_nonNull_native();
      v29 = *a1;
      goto LABEL_31;
    }

LABEL_21:
    if (qword_280D70420 != -1)
    {
      swift_once();
    }

    v21 = sub_231585FF4();
    __swift_project_value_buffer(v21, qword_280D72248);

    v22 = sub_231585FE4();
    v23 = sub_2315865D4();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      *v24 = 136315138;
      *(v24 + 4) = sub_2314A22E8();
      _os_log_impl(&dword_231496000, v22, v23, "inside if %s", v24, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v30);
      MEMORY[0x231931280](v30, -1, -1);
      MEMORY[0x231931280](v24, -1, -1);
    }

    goto LABEL_30;
  }

  v16 = *a2;
  v17 = a2[1];
  if (sub_231586C44() & 1) != 0 && (a5)
  {
    goto LABEL_21;
  }

  if ((sub_231586C44() & 1) != 0 && (a5 & 1) == 0)
  {
    goto LABEL_26;
  }

  v18 = v10 == a6 && v9 == a7;
  if (v18 || (sub_231586C44() & 1) != 0)
  {
    v19 = a6 == a3 && a7 == a4;
    if (!v19 && (sub_231586C44() & 1) == 0)
    {
      goto LABEL_26;
    }
  }

  v20 = *a1;
  swift_isUniquelyReferenced_nonNull_native();
  v29 = *a1;
LABEL_31:
  sub_23157562C();
  *a1 = v29;
}

uint64_t sub_2314CD40C()
{
  sub_231586954();
  MEMORY[0x23192FF80](0xD000000000000039, 0x8000000231590FE0);
  v1 = OUTLINED_FUNCTION_0_9();
  MEMORY[0x23192FF80](v1);
  MEMORY[0x23192FF80](0xD000000000000015, 0x8000000231591020);
  v2 = sub_2314CCA54();
  MEMORY[0x23192FF80](v2);

  MEMORY[0x23192FF80](0xD000000000000025, 0x8000000231591040);
  v3 = v0[7];
  __swift_project_boxed_opaque_existential_1(v0 + 3, v0[6]);
  v4 = *(v3 + 8);
  OUTLINED_FUNCTION_1_8();
  v10 = v9(v5, v6, v7, v8);

  if (*(v10 + 16))
  {
    v11 = sub_2314D86B0(v10);
  }

  else
  {

    return 0;
  }

  return v11;
}

void sub_2314CD584(uint64_t a1)
{
  v1 = 0;
  v2 = *(a1 + 16);
  v3 = a1 + 32;
  v4 = MEMORY[0x277D84F90];
  while (v2 != v1)
  {
    if (v1 >= v2)
    {
      __break(1u);
LABEL_13:
      __break(1u);
      return;
    }

    v5 = v1 + 1;
    if (__OFADD__(v1, 1))
    {
      goto LABEL_13;
    }

    v6 = *(v3 + 8 * v1);

    v8 = sub_2314D7E38(v7, 0x74736574616CLL, 0xE600000000000000);
    v10 = v9;
    v12 = v11;

    ++v1;
    if (v10)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_2314F13A8(0, *(v4 + 16) + 1, 1, v4);
        v4 = v16;
      }

      v14 = *(v4 + 16);
      v13 = *(v4 + 24);
      if (v14 >= v13 >> 1)
      {
        sub_2314F13A8(v13 > 1, v14 + 1, 1, v4);
        v4 = v17;
      }

      *(v4 + 16) = v14 + 1;
      v15 = (v4 + 24 * v14);
      v15[4] = v8;
      v15[5] = v10;
      v15[6] = v12;
      v1 = v5;
    }
  }
}

uint64_t sub_2314CD6B0()
{
  v1 = *(v0 + 16);

  __swift_destroy_boxed_opaque_existential_1((v0 + 24));

  return MEMORY[0x2821FE8D8](v0, 64, 7);
}

BOOL sub_2314CD714(char a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = (a2 + 32);
  do
  {
    v5 = v3;
    if (v3-- == 0)
    {
      break;
    }

    v7 = 0xE200000000000000;
    v8 = 27954;
    switch(*v4)
    {
      case 1:
        v7 = 0xE300000000000000;
        v8 = 7155761;
        break;
      case 2:
        v8 = 26673;
        break;
      case 3:
        v8 = 26678;
        break;
      case 4:
        v8 = 25649;
        break;
      case 5:
        v8 = 25655;
        break;
      case 6:
        v7 = 0xE300000000000000;
        v8 = 6567986;
        break;
      case 7:
        v7 = 0xE300000000000000;
        v8 = 6712937;
        break;
      default:
        break;
    }

    v9 = 0xE200000000000000;
    v10 = 27954;
    switch(a1)
    {
      case 1:
        v9 = 0xE300000000000000;
        v10 = 7155761;
        break;
      case 2:
        v10 = 26673;
        break;
      case 3:
        v10 = 26678;
        break;
      case 4:
        v10 = 25649;
        break;
      case 5:
        v10 = 25655;
        break;
      case 6:
        v9 = 0xE300000000000000;
        v10 = 6567986;
        break;
      case 7:
        v9 = 0xE300000000000000;
        v10 = 6712937;
        break;
      default:
        break;
    }

    if (v8 == v10 && v7 == v9)
    {

      return v5 != 0;
    }

    v12 = sub_231586C44();

    ++v4;
  }

  while ((v12 & 1) == 0);
  return v5 != 0;
}

uint64_t sub_2314CD8CC(uint64_t *a1, uint64_t *a2)
{
  v3 = *(v2 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  sub_231586684();
  return v5;
}

uint64_t sub_2314CD924(uint64_t a1)
{
  swift_beginAccess();
  v2 = *(a1 + 24);
}

double sub_2314CD980()
{
  v0 = sub_2314A1DFC(60, 1);

  result = v0 + 0.001;
  *&qword_27DD5B2C0 = result;
  return result;
}

uint64_t sub_2314CD9CC()
{
  type metadata accessor for BiomeQueriesNowPlaying.UserTimeWindowsCache();
  v0 = swift_allocObject();
  sub_2314D3C64();
  v1 = sub_2314CDA1C(v0);

  qword_27DD5B2C8 = v1;
  return result;
}

uint64_t sub_2314CDA1C(uint64_t a1)
{
  if (qword_280D6CB30 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for BiomeQueriesNowPlaying.UserTimeWindowsCache();
  v11[3] = v2;
  v11[4] = &off_284614040;
  v11[0] = a1;
  swift_beginAccess();

  sub_2314D4638(sub_2314F0CD8);
  v3 = *(qword_280D72140 + 16);
  sub_2314D46C4(v3, sub_2314F0CD8);
  v4 = __swift_mutable_project_boxed_opaque_existential_1(v11, v2);
  v5 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v10[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v8 + 16))(v7);
  sub_2314D5DFC(v3, *v7, &qword_280D72140);
  __swift_destroy_boxed_opaque_existential_1(v11);
  swift_endAccess();
}

uint64_t sub_2314CDBB4()
{
  result = sub_2314A1DFC(5, 1);
  qword_27DD600C0 = result;
  *algn_27DD600C8 = v1;
  qword_27DD600D0 = v2;
  return result;
}

void sub_2314CDBE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, __int128 a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
  OUTLINED_FUNCTION_43_0();
  a24 = v26;
  a25 = v27;
  v28 = *(v25 + 16);
  if (*(v28 + 16))
  {
    *&a13 = 0;
    *(&a13 + 1) = 0xE000000000000000;
    sub_231586954();

    strcpy(&a13, "bundleID in(");
    HIBYTE(a13) = -18;
    v29 = *(v28 + 16);
    if (v29)
    {
      v39 = MEMORY[0x277D84F90];
      sub_23152D598();
      v30 = (v28 + 40);
      do
      {
        v31 = *(v30 - 1);
        v32 = *v30;

        MEMORY[0x23192FF80](v31, v32);
        MEMORY[0x23192FF80](34, 0xE100000000000000);

        v34 = *(v39 + 16);
        v33 = *(v39 + 24);
        if (v34 >= v33 >> 1)
        {
          OUTLINED_FUNCTION_18(v33);
          sub_23152D598();
        }

        *(v39 + 16) = v34 + 1;
        v35 = v39 + 16 * v34;
        *(v35 + 32) = 34;
        *(v35 + 40) = 0xE100000000000000;
        v30 += 2;
        --v29;
      }

      while (v29);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B0E8, &unk_231589320);
    sub_2314A7490();
    v36 = sub_231586154();
    v38 = v37;

    MEMORY[0x23192FF80](v36, v38);

    MEMORY[0x23192FF80](10528, 0xE200000000000000);
  }

  OUTLINED_FUNCTION_44();
}

uint64_t sub_2314CDD98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = v3[6];
  v8 = v3[7];
  __swift_project_boxed_opaque_existential_1(v3 + 3, v7);
  v9 = (*(v8 + 8))(0xD00000000000005BLL, 0x80000002315914D0, a1, a2, a3, sub_2314CDE90, 0, &type metadata for BiomeQueriesNowPlaying.BundleIDAndState, v7, v8);
  if (v9[2])
  {
    v10 = v9[4];
    v11 = v9[5];
    v12 = v9[6];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

uint64_t sub_2314CDE90(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = (a1 + 32);
  for (i = MEMORY[0x277D84F90]; v1; --v1)
  {
    v16 = *v2;
    sub_2314CDF94(&v16, &v13);
    v4 = v14;
    if (v14)
    {
      v5 = v13;
      v6 = v15;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v9 = *(i + 16);
        sub_2314F13C4();
        i = v10;
      }

      v7 = *(i + 16);
      if (v7 >= *(i + 24) >> 1)
      {
        sub_2314F13C4();
        i = v11;
      }

      *(i + 16) = v7 + 1;
      v8 = (i + 24 * v7);
      v8[4] = v5;
      v8[5] = v4;
      v8[6] = v6;
    }

    ++v2;
  }

  return i;
}

void sub_2314CDF94(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  strcpy(v11, "bundleID");
  BYTE1(v11[1]) = 0;
  WORD1(v11[1]) = 0;
  HIDWORD(v11[1]) = -402653184;
  sub_2315868E4();
  sub_231566B94(v12, v3, &v13);
  sub_2314D5E98(v12);
  if (!v14)
  {
    goto LABEL_7;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_8;
  }

  v5 = v11[0];
  v4 = v11[1];
  strcpy(v11, "playbackState");
  HIWORD(v11[1]) = -4864;
  sub_2315868E4();
  sub_231566B94(v12, v3, &v13);
  sub_2314D5E98(v12);
  if (!v14)
  {

LABEL_7:
    sub_2314A2910(&v13, &qword_27DD5B218, &unk_23158A010);
    goto LABEL_8;
  }

  if (swift_dynamicCast())
  {
    v6 = v11[0];
    *a2 = v5;
    a2[1] = v4;
    a2[2] = v6;
    return;
  }

LABEL_8:
  if (qword_280D70420 != -1)
  {
    swift_once();
  }

  v7 = sub_231585FF4();
  __swift_project_value_buffer(v7, qword_280D72248);
  v8 = sub_231585FE4();
  v9 = sub_2315865E4();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_231496000, v8, v9, "BiomeQueriesNowPlaying.getLatestBundleIDAndState: bundleID/playbackState not found by query.", v10, 2u);
    MEMORY[0x231931280](v10, -1, -1);
  }

  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
}

uint64_t sub_2314CE684()
{
  v1 = v0;
  v86 = sub_231585884();
  v2 = OUTLINED_FUNCTION_4_1(v86);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_5();
  isUniquelyReferenced_nonNull_native = v16 - v15;
  v81 = v0[2];
  if (*(v81 + 16))
  {
    sub_2314CDBE4(v7, v8, v9, v10, v11, v12, v13, v14, v81, v82, v84, v86, v87, 541347393, 0xE400000000000000, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101);
    MEMORY[0x23192FF80]();
  }

  v18 = OUTLINED_FUNCTION_29();
  v20 = sub_2314D2E7C(v18, v19, 4476481);
  v22 = v21;
  sub_231586954();
  MEMORY[0x23192FF80](0xD000000000000062, 0x8000000231591570);
  if (qword_280D6EA60 != -1)
  {
LABEL_58:
    OUTLINED_FUNCTION_16_2();
    swift_once();
  }

  v23 = sub_231586C24();
  MEMORY[0x23192FF80](v23);

  MEMORY[0x23192FF80](32, 0xE100000000000000);
  v24 = OUTLINED_FUNCTION_39();
  MEMORY[0x23192FF80](v24);

  MEMORY[0x23192FF80](32, 0xE100000000000000);
  if (v22)
  {
    v25 = v20;
  }

  else
  {
    v25 = 0;
  }

  if (v22)
  {
    v26 = v22;
  }

  else
  {
    v26 = 0xE000000000000000;
  }

  MEMORY[0x23192FF80](v25, v26);

  MEMORY[0x23192FF80](0xD000000000000012, 0x80000002315914B0);
  v27 = v1[7];
  __swift_project_boxed_opaque_existential_1(v1 + 3, v1[6]);
  v28 = *(v27 + 8);
  OUTLINED_FUNCTION_23_2();
  v32 = v31(v29, v30);

  v88 = *(v32 + 16);
  if (v88)
  {
    v33 = 0;
    v85 = (v4 + 1);
    v34 = (v32 + 48);
    v4 = MEMORY[0x277D84F98];
    v83 = v32;
    while (v88 != v33)
    {
      if (v33 >= *(v32 + 16))
      {
        __break(1u);
LABEL_50:
        __break(1u);
LABEL_51:
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
        __break(1u);
LABEL_57:
        __break(1u);
        goto LABEL_58;
      }

      v20 = *(v34 - 2);
      v22 = *(v34 - 1);
      v35 = *v34;

      sub_231585804();
      sub_231585784();
      v37 = round(v36);
      if ((*&v37 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
        goto LABEL_50;
      }

      if (v37 <= -9.22337204e18)
      {
        goto LABEL_51;
      }

      if (v37 >= 9.22337204e18)
      {
        goto LABEL_52;
      }

      v1 = isUniquelyReferenced_nonNull_native;
      (*v85)(isUniquelyReferenced_nonNull_native, v86);
      swift_isUniquelyReferenced_nonNull_native();
      v90 = v4;
      v38 = OUTLINED_FUNCTION_29();
      sub_23149C888(v38, v39);
      v40 = v4[2];
      OUTLINED_FUNCTION_17_2();
      v4 = (v43 + v44);
      if (__OFADD__(v43, v44))
      {
        goto LABEL_53;
      }

      isUniquelyReferenced_nonNull_native = v41;
      v45 = v42;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD5B890, &unk_231589360);
      if (sub_231586A64())
      {
        v46 = OUTLINED_FUNCTION_29();
        v48 = sub_23149C888(v46, v47);
        if ((v45 & 1) != (v49 & 1))
        {
LABEL_59:
          result = sub_231586C84();
          __break(1u);
          return result;
        }

        isUniquelyReferenced_nonNull_native = v48;
      }

      v4 = v90;
      if (v45)
      {
        *(v90[7] + 8 * isUniquelyReferenced_nonNull_native) = v37;
      }

      else
      {
        OUTLINED_FUNCTION_27_0();
        v50 = (v90[6] + 16 * isUniquelyReferenced_nonNull_native);
        *v50 = v20;
        v50[1] = v22;
        *(v90[7] + 8 * isUniquelyReferenced_nonNull_native) = v51;
        v52 = v90[2];
        v53 = __OFADD__(v52, 1);
        v54 = v52 + 1;
        if (v53)
        {
          goto LABEL_56;
        }

        v90[2] = v54;
      }

      v34 += 3;
      ++v33;
      isUniquelyReferenced_nonNull_native = v1;
      v32 = v83;
    }

    v55 = v81;
    if (*(v81 + 16))
    {
      v1 = sub_2315860F4();
      v56 = 0;
      v86 = *(v81 + 16);
      v57 = (v81 + 40);
      while (v86 != v56)
      {
        if (v56 >= *(v55 + 16))
        {
          goto LABEL_54;
        }

        v59 = *(v57 - 1);
        v58 = *v57;
        v60 = v4[2];

        if (v60 && (v61 = OUTLINED_FUNCTION_39(), v63 = sub_23149C888(v61, v62), (v64 & 1) != 0))
        {
          v65 = *(v4[7] + 8 * v63);
        }

        else
        {
          v65 = -1;
        }

        v89 = v65;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v91 = v1;
        v66 = OUTLINED_FUNCTION_39();
        sub_23149C888(v66, v67);
        v68 = v1[2];
        OUTLINED_FUNCTION_17_2();
        v1 = (v71 + v72);
        if (__OFADD__(v71, v72))
        {
          goto LABEL_55;
        }

        v22 = v69;
        v20 = v70;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD5B890, &unk_231589360);
        if (sub_231586A64())
        {
          v73 = OUTLINED_FUNCTION_39();
          v75 = sub_23149C888(v73, v74);
          if ((v20 & 1) != (v76 & 1))
          {
            goto LABEL_59;
          }

          v22 = v75;
        }

        v1 = v91;
        if (v20)
        {
          *(v91[7] + 8 * v22) = v89;
        }

        else
        {
          OUTLINED_FUNCTION_8_7(&v91[v22 >> 6]);
          v77 = (v91[6] + 16 * v22);
          *v77 = v59;
          v77[1] = v58;
          *(v91[7] + 8 * v22) = v89;
          v78 = v91[2];
          v53 = __OFADD__(v78, 1);
          v79 = v78 + 1;
          if (v53)
          {
            goto LABEL_57;
          }

          v91[2] = v79;
        }

        v57 += 2;
        ++v56;
        v55 = v81;
      }
    }

    else
    {
      v1 = v4;
    }

    if (qword_280D6F260 != -1)
    {
      OUTLINED_FUNCTION_2_8();
      swift_once();
    }
  }

  else
  {

    return 0;
  }

  return v1;
}

void sub_2314CECCC(uint64_t a1)
{
  v1 = 0;
  v2 = *(a1 + 16);
  v3 = a1 + 32;
  v4 = MEMORY[0x277D84F90];
  while (v2 != v1)
  {
    if (v1 >= v2)
    {
      __break(1u);
LABEL_13:
      __break(1u);
      return;
    }

    v5 = v1 + 1;
    if (__OFADD__(v1, 1))
    {
      goto LABEL_13;
    }

    v6 = *(v3 + 8 * v1);

    v8 = sub_2314CEDE4(v7);
    v10 = v9;
    v12 = v11;

    ++v1;
    if (v10)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_2314F1494(0, *(v4 + 16) + 1, 1, v4);
        v4 = v16;
      }

      v14 = *(v4 + 16);
      v13 = *(v4 + 24);
      if (v14 >= v13 >> 1)
      {
        sub_2314F1494(v13 > 1, v14 + 1, 1, v4);
        v4 = v17;
      }

      *(v4 + 16) = v14 + 1;
      v15 = (v4 + 24 * v14);
      v15[4] = v8;
      v15[5] = v10;
      v15[6] = v12;
      v1 = v5;
    }
  }
}

uint64_t sub_2314CEDE4(uint64_t a1)
{
  *&v75 = 0x4449656C646E7562;
  *(&v75 + 1) = 0xE800000000000000;
  sub_2315868E4();
  sub_231566B94(&v83, a1, &v79);
  sub_2314D5E98(&v83);
  if (!*(&v80 + 1))
  {
    sub_2314A2910(&v79, &qword_27DD5B218, &unk_23158A010);
LABEL_7:
    if (qword_280D70420 != -1)
    {
      goto LABEL_71;
    }

    goto LABEL_8;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_7;
  }

  v2 = v75;
  *&v75 = 0x74736574616CLL;
  *(&v75 + 1) = 0xE600000000000000;
  sub_2315868E4();
  sub_231566B94(&v83, a1, &v79);
  sub_2314D5E98(&v83);
  if (*(&v80 + 1))
  {
    if (swift_dynamicCast())
    {
      return v2;
    }
  }

  else
  {

    sub_2314A2910(&v79, &qword_27DD5B218, &unk_23158A010);
  }

  if (qword_280D70420 != -1)
  {
    swift_once();
  }

  v32 = sub_231585FF4();
  __swift_project_value_buffer(v32, qword_280D72248);

  v4 = sub_231585FE4();
  v5 = sub_2315865E4();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v8 = v33;
    v91 = v33;
    *v6 = 136315138;
    v34 = *(a1 + 16);
    v35 = MEMORY[0x277D84F90];
    if (v34)
    {
      v58 = v33;
      v60 = v6;
      v62 = v5;
      v64 = v4;
      v90 = MEMORY[0x277D84F90];
      sub_23152D7D4();
      v35 = v90;
      v36 = sub_23156C5C8(a1);
      v38 = v37;
      v40 = v39;
      v41 = 0;
      v68 = v34;
      v70 = a1 + 64;
      v66 = v37;
      while (1)
      {
        if (v36 < 0 || v36 >= 1 << *(a1 + 32))
        {
          goto LABEL_65;
        }

        v42 = v36 >> 6;
        if ((*(v70 + 8 * (v36 >> 6)) & (1 << v36)) == 0)
        {
          goto LABEL_66;
        }

        if (*(a1 + 36) != v38)
        {
          goto LABEL_67;
        }

        sub_2314D6014(*(a1 + 48) + 40 * v36, &v83);
        sub_2314A24F0(*(a1 + 56) + 32 * v36, v86);
        v79 = v83;
        v80 = v84;
        v81 = v85;
        sub_2314D6070(v86, v82);
        sub_2314A1D9C(&v79, &v75, &qword_27DD5B338, &qword_231589660);
        v71 = v75;
        v72 = v76;
        v73 = v77;
        sub_2314D6070(v78, v74);
        sub_2314D6014(&v71, &v87);
        sub_2314A2910(&v71, &qword_27DD5B338, &qword_231589660);
        sub_2314A2910(&v79, &qword_27DD5B338, &qword_231589660);
        v90 = v35;
        v43 = *(v35 + 16);
        if (v43 >= *(v35 + 24) >> 1)
        {
          sub_23152D7D4();
          v35 = v90;
        }

        *(v35 + 16) = v43 + 1;
        v44 = v35 + 40 * v43;
        v45 = v87;
        v46 = v88;
        *(v44 + 64) = v89;
        *(v44 + 32) = v45;
        *(v44 + 48) = v46;
        v47 = 1 << *(a1 + 32);
        if (v36 >= v47)
        {
          goto LABEL_68;
        }

        v48 = *(v70 + 8 * v42);
        if ((v48 & (1 << v36)) == 0)
        {
          goto LABEL_69;
        }

        if (*(a1 + 36) != v38)
        {
          break;
        }

        v49 = v48 & (-2 << (v36 & 0x3F));
        if (v49)
        {
          v47 = __clz(__rbit64(v49)) | v36 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v50 = v42 << 6;
          v51 = v42 + 1;
          v52 = (a1 + 72 + 8 * v42);
          while (v51 < (v47 + 63) >> 6)
          {
            v54 = *v52++;
            v53 = v54;
            v50 += 64;
            ++v51;
            if (v54)
            {
              sub_2314ABA68(v36, v38, v40 & 1);
              v47 = __clz(__rbit64(v53)) + v50;
              goto LABEL_53;
            }
          }

          sub_2314ABA68(v36, v38, v40 & 1);
        }

LABEL_53:
        v40 = 0;
        ++v41;
        v36 = v47;
        v38 = v66;
        if (v41 == v68)
        {
          v4 = v64;
          v5 = v62;
          v8 = v58;
          v6 = v60;
          goto LABEL_55;
        }
      }

      while (1)
      {
        __break(1u);
LABEL_71:
        swift_once();
LABEL_8:
        v3 = sub_231585FF4();
        __swift_project_value_buffer(v3, qword_280D72248);

        v4 = sub_231585FE4();
        v5 = sub_2315865E4();

        if (!os_log_type_enabled(v4, v5))
        {
          break;
        }

        v6 = swift_slowAlloc();
        v7 = swift_slowAlloc();
        v8 = v7;
        v91 = v7;
        *v6 = 136315138;
        v9 = *(a1 + 16);
        v10 = MEMORY[0x277D84F90];
        if (!v9)
        {
LABEL_29:
          MEMORY[0x231930080](v10, MEMORY[0x277D84030]);

          v30 = sub_2314A22E8();

          *(v6 + 4) = v30;
          v31 = "NowPlayingRecord: missing an expected column bundleID in: %s";
          goto LABEL_56;
        }

        v57 = v7;
        v59 = v6;
        v61 = v5;
        v63 = v4;
        v90 = MEMORY[0x277D84F90];
        sub_23152D7D4();
        v10 = v90;
        v11 = sub_23156C5C8(a1);
        v13 = v12;
        v15 = v14;
        v16 = 0;
        v67 = v9;
        v69 = a1 + 64;
        v65 = v12;
        while ((v11 & 0x8000000000000000) == 0 && v11 < 1 << *(a1 + 32))
        {
          v17 = v11 >> 6;
          if ((*(v69 + 8 * (v11 >> 6)) & (1 << v11)) == 0)
          {
            goto LABEL_60;
          }

          if (*(a1 + 36) != v13)
          {
            goto LABEL_61;
          }

          sub_2314D6014(*(a1 + 48) + 40 * v11, &v83);
          sub_2314A24F0(*(a1 + 56) + 32 * v11, v86);
          v79 = v83;
          v80 = v84;
          v81 = v85;
          sub_2314D6070(v86, v82);
          sub_2314A1D9C(&v79, &v75, &qword_27DD5B338, &qword_231589660);
          v71 = v75;
          v72 = v76;
          v73 = v77;
          sub_2314D6070(v78, v74);
          sub_2314D6014(&v71, &v87);
          sub_2314A2910(&v71, &qword_27DD5B338, &qword_231589660);
          sub_2314A2910(&v79, &qword_27DD5B338, &qword_231589660);
          v90 = v10;
          v18 = *(v10 + 16);
          if (v18 >= *(v10 + 24) >> 1)
          {
            sub_23152D7D4();
            v10 = v90;
          }

          *(v10 + 16) = v18 + 1;
          v19 = v10 + 40 * v18;
          v20 = v87;
          v21 = v88;
          *(v19 + 64) = v89;
          *(v19 + 32) = v20;
          *(v19 + 48) = v21;
          v22 = 1 << *(a1 + 32);
          if (v11 >= v22)
          {
            goto LABEL_62;
          }

          v23 = *(v69 + 8 * v17);
          if ((v23 & (1 << v11)) == 0)
          {
            goto LABEL_63;
          }

          if (*(a1 + 36) != v13)
          {
            goto LABEL_64;
          }

          v24 = v23 & (-2 << (v11 & 0x3F));
          if (v24)
          {
            v22 = __clz(__rbit64(v24)) | v11 & 0x7FFFFFFFFFFFFFC0;
          }

          else
          {
            v25 = v17 << 6;
            v26 = v17 + 1;
            v27 = (a1 + 72 + 8 * v17);
            while (v26 < (v22 + 63) >> 6)
            {
              v29 = *v27++;
              v28 = v29;
              v25 += 64;
              ++v26;
              if (v29)
              {
                sub_2314ABA68(v11, v13, v15 & 1);
                v22 = __clz(__rbit64(v28)) + v25;
                goto LABEL_27;
              }
            }

            sub_2314ABA68(v11, v13, v15 & 1);
          }

LABEL_27:
          v15 = 0;
          ++v16;
          v11 = v22;
          v13 = v65;
          if (v16 == v67)
          {
            v4 = v63;
            v5 = v61;
            v8 = v57;
            v6 = v59;
            goto LABEL_29;
          }
        }

        __break(1u);
LABEL_60:
        __break(1u);
LABEL_61:
        __break(1u);
LABEL_62:
        __break(1u);
LABEL_63:
        __break(1u);
LABEL_64:
        __break(1u);
LABEL_65:
        __break(1u);
LABEL_66:
        __break(1u);
LABEL_67:
        __break(1u);
LABEL_68:
        __break(1u);
LABEL_69:
        __break(1u);
      }
    }

    else
    {
LABEL_55:
      MEMORY[0x231930080](v35, MEMORY[0x277D84030]);

      v55 = sub_2314A22E8();

      *(v6 + 4) = v55;
      v31 = "NowPlayingRecord: missing an expected column latest in: %s";
LABEL_56:
      _os_log_impl(&dword_231496000, v4, v5, v31, v6, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v8);
      MEMORY[0x231931280](v8, -1, -1);
      MEMORY[0x231931280](v6, -1, -1);
    }
  }

  return 0;
}

uint64_t sub_2314CF730(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = sub_231585884();
  v7 = OUTLINED_FUNCTION_4_1(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_11_0();
  v14 = v12 - v13;
  v16 = MEMORY[0x28223BE20](v15);
  v18 = &v123 - v17;
  v19 = v2[8];
  v20 = v2[9];
  v19(v16);
  v124 = v18;
  v125 = v9;
  v21 = *(v9 + 16);
  v126 = v6;
  v22 = v21(v14, v18, v6);
  sub_2314CDBE4(v22, v23, v24, v25, v26, v27, v28, v29, v123, v124, v125, v126, v127, v128, v129, v130, v131, v132, v133, v134, v135, v136, v137, v138, v139);
  v31 = v30;
  v33 = v32;

  sub_2314CFE3C(v14, v31, v33, a1, a2);
  v34 = v3[6];
  v35 = v3[7];
  v130 = v3;
  __swift_project_boxed_opaque_existential_1(v3 + 3, v34);
  v36 = *(v35 + 8);
  OUTLINED_FUNCTION_23_2();
  v40 = v39(v37, v38);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B308, &qword_231589338);
  v41 = sub_2315860F4();
  v42 = 0;
  v131 = *(v40 + 16);
  v132 = v40;
  v43 = (v40 + 48);
  while (v131 != v42)
  {
    if (v42 >= *(v132 + 16))
    {
LABEL_54:
      __break(1u);
LABEL_55:
      __break(1u);
LABEL_56:
      __break(1u);
LABEL_57:
      __break(1u);
      goto LABEL_58;
    }

    v45 = *(v43 - 2);
    v44 = *(v43 - 1);
    v46 = *v43;
    swift_bridgeObjectRetain_n();

    swift_isUniquelyReferenced_nonNull_native();
    v133 = v41;
    sub_23149C888(v45, v44);
    v47 = v41[2];
    OUTLINED_FUNCTION_17_2();
    if (__OFADD__(v50, v51))
    {
      goto LABEL_55;
    }

    v52 = v48;
    v53 = v49;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B318, &qword_23158C820);
    OUTLINED_FUNCTION_41();
    if (sub_231586A64())
    {
      v54 = sub_23149C888(v45, v44);
      if ((v53 & 1) != (v55 & 1))
      {
        goto LABEL_59;
      }

      v52 = v54;
    }

    v41 = v133;
    if (v53)
    {
      v56 = v133[7];
      v57 = *(v56 + 8 * v52);
      *(v56 + 8 * v52) = v46;
    }

    else
    {
      OUTLINED_FUNCTION_6_8(&v133[v52 >> 6]);
      v58 = (v41[6] + 16 * v52);
      *v58 = v45;
      v58[1] = v44;
      *(v41[7] + 8 * v52) = v46;

      v59 = v41[2];
      v60 = __OFADD__(v59, 1);
      v61 = v59 + 1;
      if (v60)
      {
        goto LABEL_56;
      }

      v41[2] = v61;
    }

    v43 += 3;
    v42 = (v42 + 1);
  }

  v62 = v130[2];
  if (*(v62 + 16))
  {
    v63 = v130[2];
  }

  else
  {

    v62 = sub_231572E78(v64);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B2E8, &unk_23158B460);
  sub_2314B676C();
  v128 = sub_2315860F4();
  v65 = 0;
  v66 = *(v62 + 16);
  v131 = v41;
  v132 = v66;
  *&v127 = v62 + 40;
  v130 = v62;
  while (2)
  {
    HIDWORD(v129) = *(&unk_284610900 + v65 + 32);
    *(&v127 + 1) = v65 + 1;
    v67 = sub_2315860F4();
    v68 = 0;
    v69 = v127;
    while (v132 != v68)
    {
      if (v68 >= *(v62 + 16))
      {
        __break(1u);
LABEL_52:
        __break(1u);
LABEL_53:
        __break(1u);
        goto LABEL_54;
      }

      v71 = *(v69 - 1);
      v70 = *v69;
      v72 = v41[2];

      if (v72 && (v73 = OUTLINED_FUNCTION_28(), v75 = sub_23149C888(v73, v74), (v76 & 1) != 0) && (v77 = *(v41[7] + 8 * v75), *(v77 + 16)))
      {
        v78 = *(v41[7] + 8 * v75);

        v79 = sub_231574C34(SBYTE4(v129));
        if (v80)
        {
          v81 = *(*(v77 + 56) + 8 * v79);
        }

        else
        {
          v81 = 0;
        }
      }

      else
      {
        v81 = 0;
      }

      swift_isUniquelyReferenced_nonNull_native();
      v133 = v67;
      v82 = OUTLINED_FUNCTION_28();
      sub_23149C888(v82, v83);
      v84 = v67[2];
      OUTLINED_FUNCTION_17_2();
      if (__OFADD__(v87, v88))
      {
        goto LABEL_52;
      }

      v89 = v85;
      v90 = v86;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD5B890, &unk_231589360);
      OUTLINED_FUNCTION_41();
      if (sub_231586A64())
      {
        v91 = OUTLINED_FUNCTION_28();
        v93 = sub_23149C888(v91, v92);
        if ((v90 & 1) != (v94 & 1))
        {
          goto LABEL_59;
        }

        v89 = v93;
      }

      v67 = v133;
      if (v90)
      {
        *(v133[7] + 8 * v89) = v81;
      }

      else
      {
        OUTLINED_FUNCTION_8_7(&v133[v89 >> 6]);
        v95 = (v67[6] + 16 * v89);
        *v95 = v71;
        v95[1] = v70;
        *(v67[7] + 8 * v89) = v81;
        v96 = v67[2];
        v60 = __OFADD__(v96, 1);
        v97 = v96 + 1;
        if (v60)
        {
          goto LABEL_53;
        }

        v67[2] = v97;
      }

      v69 += 2;
      ++v68;
      v62 = v130;
      v41 = v131;
    }

    v98 = v128;
    swift_isUniquelyReferenced_nonNull_native();
    v133 = v98;
    sub_231575958();
    v128 = v133;
    v65 = *(&v127 + 1);
    if (*(&v127 + 1) != 7)
    {
      continue;
    }

    break;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B328, &qword_231589370);
  v99 = v128;
  v100 = sub_231586AC4();
  v101 = 0;
  v103 = *(v99 + 64);
  v102 = v99 + 64;
  v104 = *(v102 - 32);
  OUTLINED_FUNCTION_3_0();
  v107 = v106 & v105;
  v109 = (v108 + 63) >> 6;
  v111 = v110 + 64;
  if ((v106 & v105) == 0)
  {
LABEL_40:
    v113 = v101;
    while (1)
    {
      v101 = v113 + 1;
      if (__OFADD__(v113, 1))
      {
        goto LABEL_57;
      }

      if (v101 >= v109)
      {

        (*(v125 + 8))(v124, v126);
        return v100;
      }

      ++v113;
      if (*(v102 + 8 * v101))
      {
        OUTLINED_FUNCTION_9_0();
        v107 = v115 & v114;
        goto LABEL_45;
      }
    }
  }

  while (1)
  {
    v112 = __clz(__rbit64(v107));
    v107 &= v107 - 1;
LABEL_45:
    v116 = v112 | (v101 << 6);
    v117 = *(v128[6] + v116);
    v118 = *(v128[7] + 8 * v116);
    v119 = qword_280D6F260;

    if (v119 != -1)
    {
      OUTLINED_FUNCTION_2_8();
      swift_once();
    }

    *(v111 + ((v116 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v116;
    *(v100[6] + v116) = v117;
    *(v100[7] + 8 * v116) = v118;
    v120 = v100[2];
    v60 = __OFADD__(v120, 1);
    v121 = v120 + 1;
    if (v60)
    {
      break;
    }

    v100[2] = v121;
    if (!v107)
    {
      goto LABEL_40;
    }
  }

LABEL_58:
  __break(1u);
LABEL_59:
  result = sub_231586C84();
  __break(1u);
  return result;
}

uint64_t sub_2314CFE3C(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5)
{
  sub_231585814();
  v26 = MEMORY[0x277D84F90];
  sub_23152D598();
  v5 = 0;
  do
  {
    v6 = *(&unk_284610900 + v5++ + 32);
    sub_231586954();
    MEMORY[0x23192FF80](0xD000000000000024, 0x80000002315913E0);
    v7 = 0xE200000000000000;
    v8 = 27954;
    switch(v6)
    {
      case 1:
        v7 = 0xE300000000000000;
        v8 = 7155761;
        break;
      case 2:
        v8 = 26673;
        break;
      case 3:
        v8 = 26678;
        break;
      case 4:
        v8 = 25649;
        break;
      case 5:
        v8 = 25655;
        break;
      case 6:
        v7 = 0xE300000000000000;
        v8 = 6567986;
        break;
      case 7:
        v7 = 0xE300000000000000;
        v8 = 6712937;
        break;
      default:
        break;
    }

    sub_2315864E4();
    MEMORY[0x23192FF80](0xD000000000000016, 0x8000000231591270);
    sub_2315864E4();
    MEMORY[0x23192FF80](0xD00000000000001DLL, 0x8000000231591410);
    MEMORY[0x23192FF80](v8, v7);

    MEMORY[0x23192FF80](34, 0xE100000000000000);
    v9 = *(v26 + 16);
    if (v9 >= *(v26 + 24) >> 1)
    {
      sub_23152D598();
    }

    *(v26 + 16) = v9 + 1;
    v10 = v26 + 16 * v9;
    *(v10 + 32) = 0;
    *(v10 + 40) = 0xE000000000000000;
  }

  while (v5 != 7);
  v11 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v11 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v11)
  {
    MEMORY[0x23192FF80]();

    v13 = 541347393;
    v12 = 0xE400000000000000;
  }

  else
  {

    v13 = 0;
    v12 = 0xE000000000000000;
  }

  sub_231586954();
  MEMORY[0x23192FF80](0xD000000000000011, 0x8000000231591430);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B0E8, &unk_231589320);
  sub_2314A7490();
  v14 = sub_231586154();
  v16 = v15;

  MEMORY[0x23192FF80](v14, v16);

  MEMORY[0x23192FF80](0xD000000000000031, 0x8000000231591450);
  sub_2315864E4();
  MEMORY[0x23192FF80](0xD000000000000017, 0x8000000231591490);
  MEMORY[0x23192FF80](v13, v12);

  MEMORY[0x23192FF80](32, 0xE100000000000000);
  if (a5)
  {
    v17 = a4;
  }

  else
  {
    v17 = 0;
  }

  if (a5)
  {
    v18 = a5;
  }

  else
  {
    v18 = 0xE000000000000000;
  }

  MEMORY[0x23192FF80](v17, v18);

  MEMORY[0x23192FF80](0xD000000000000012, 0x80000002315914B0);
  v19 = sub_231585884();
  (*(*(v19 - 8) + 8))(a1, v19);
  return 0;
}