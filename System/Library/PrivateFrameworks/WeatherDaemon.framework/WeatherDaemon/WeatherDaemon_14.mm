_BYTE *sub_1B6166FEC(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF8)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF7)
  {
    v6 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
          *result = a2 + 8;
        }

        break;
    }
  }

  return result;
}

uint64_t static HourlyForecastDescriptor.name.setter(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_3_5();
  *aHourlyforecast_4 = a1;
  *&aHourlyforecast_4[8] = a2;
}

uint64_t (*static HourlyForecastDescriptor.name.modify())()
{
  OUTLINED_FUNCTION_1_3();
  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_1B61671C0@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  v2 = *&aHourlyforecast_4[8];
  *a1 = *aHourlyforecast_4;
  a1[1] = v2;
  return sub_1B6220784();
}

uint64_t sub_1B6167210(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  swift_beginAccess();
  *aHourlyforecast_4 = v2;
  *&aHourlyforecast_4[8] = v1;
  sub_1B6220784();
}

uint64_t *sub_1B6167274()
{
  if (qword_1EDAB1240 != -1)
  {
    OUTLINED_FUNCTION_0_60();
  }

  return &qword_1EDAB1248;
}

uint64_t static HourlyForecastDescriptor.version.setter(uint64_t a1, uint64_t a2)
{
  if (qword_1EDAB1240 != -1)
  {
    OUTLINED_FUNCTION_0_60();
  }

  OUTLINED_FUNCTION_3_5();
  qword_1EDAB1248 = a1;
  qword_1EDAB1250 = a2;
}

uint64_t (*static HourlyForecastDescriptor.version.modify())()
{
  if (qword_1EDAB1240 != -1)
  {
    OUTLINED_FUNCTION_0_60();
  }

  OUTLINED_FUNCTION_1_3();
  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_1B6167394@<X0>(void *a1@<X8>)
{
  sub_1B6167274();
  swift_beginAccess();
  v2 = qword_1EDAB1250;
  *a1 = qword_1EDAB1248;
  a1[1] = v2;
  return sub_1B6220784();
}

uint64_t sub_1B61673E8(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  sub_1B6220784();
  sub_1B6167274();
  swift_beginAccess();
  qword_1EDAB1248 = v2;
  qword_1EDAB1250 = v1;
}

_BYTE *storeEnumTagSinglePayload for HourlyForecastDescriptor(_BYTE *result, int a2, int a3)
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

uint64_t sub_1B6167530(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6C696261626F7270 && a2 == 0xEB00000000797469;
  if (v4 || (sub_1B6221F24() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x4165676172657661 && a2 == 0xED0000746E756F6DLL;
    if (v6 || (sub_1B6221F24() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0xD000000000000015 && 0x80000001B623DFC0 == a2)
    {

      return 2;
    }

    else
    {
      v8 = sub_1B6221F24();

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

uint64_t sub_1B6167654(char a1)
{
  if (!a1)
  {
    return 0x6C696261626F7270;
  }

  if (a1 == 1)
  {
    return 0x4165676172657661;
  }

  return 0xD000000000000015;
}

uint64_t sub_1B61676CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B6167530(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B61676F4(uint64_t a1)
{
  v2 = sub_1B61678D8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B6167730(uint64_t a1)
{
  v2 = sub_1B61678D8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t PrecipitationAmount.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB926510);
  OUTLINED_FUNCTION_2();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B61678D8();
  sub_1B62220F4();
  v13 = 0;
  OUTLINED_FUNCTION_0_1();
  if (!v1)
  {
    v12 = 1;
    OUTLINED_FUNCTION_0_1();
    v11 = 2;
    OUTLINED_FUNCTION_0_1();
  }

  return (*(v5 + 8))(v8, v3);
}

unint64_t sub_1B61678D8()
{
  result = qword_1EB926518;
  if (!qword_1EB926518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB926518);
  }

  return result;
}

uint64_t PrecipitationAmount.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB926520);
  OUTLINED_FUNCTION_2();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v18[-v9];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B61678D8();
  sub_1B62220D4();
  if (!v2)
  {
    v18[15] = 0;
    OUTLINED_FUNCTION_1_23();
    v12 = v11;
    v18[14] = 1;
    OUTLINED_FUNCTION_1_23();
    v15 = v14;
    v18[13] = 2;
    OUTLINED_FUNCTION_1_23();
    v17 = v16;
    (*(v7 + 8))(v10, v5);
    *a2 = v12;
    a2[1] = v15;
    a2[2] = v17;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

_BYTE *storeEnumTagSinglePayload for PrecipitationAmount.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1B6167C30()
{
  result = qword_1EB926528;
  if (!qword_1EB926528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB926528);
  }

  return result;
}

unint64_t sub_1B6167C88()
{
  result = qword_1EB926530;
  if (!qword_1EB926530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB926530);
  }

  return result;
}

unint64_t sub_1B6167CE0()
{
  result = qword_1EB926538;
  if (!qword_1EB926538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB926538);
  }

  return result;
}

uint64_t sub_1B6167D34(uint64_t a1, int a2)
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

uint64_t sub_1B6167D74(uint64_t result, int a2, int a3)
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

uint64_t PrecipitationType.rawValue.getter()
{
  result = 0x5241454C43;
  switch(*v0)
  {
    case 1:
      result = 0x444558494DLL;
      break;
    case 2:
      result = 0x5449504943455250;
      break;
    case 3:
      result = 1313423698;
      break;
    case 4:
      result = 1464815187;
      break;
    case 5:
      result = 0x5445454C53;
      break;
    case 6:
      result = 1279869256;
      break;
    case 7:
      result = 0x4E574F4E4B4E55;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t PrecipitationType.init(from:)@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  OUTLINED_FUNCTION_0_9();
  sub_1B62220C4();
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_1(v11, v11[3]);
    OUTLINED_FUNCTION_0_9();
    v5 = sub_1B6221F44();
    v7 = v6;
    __swift_destroy_boxed_opaque_existential_1(v11);
    v8._countAndFlagsBits = v5;
    v8._object = v7;
    PrecipitationType.init(rawValue:)(v8);
    v9 = v11[0];
    if (LOBYTE(v11[0]) == 8)
    {
      v9 = 7;
    }

    *a2 = v9;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

WeatherDaemon::PrecipitationType_optional __swiftcall PrecipitationType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1B6221CD4();

  v5 = 8;
  if (v3 < 8)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t sub_1B6167FCC()
{
  result = qword_1EB926540[0];
  if (!qword_1EB926540[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB926540);
  }

  return result;
}

uint64_t sub_1B6168044@<X0>(uint64_t *a1@<X8>)
{
  result = PrecipitationType.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_1B61680EC()
{
  result = qword_1EDAB0A08;
  if (!qword_1EDAB0A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAB0A08);
  }

  return result;
}

uint64_t sub_1B6168154(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1B616859C;

  return v6(a1);
}

uint64_t ActorTaskScheduler.schedule<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB925160);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v17 - v10;
  v12 = *v4;
  v13 = sub_1B6221644();
  __swift_storeEnumTagSinglePayload(v11, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v15 = *(a3 + 24);
  v14[4] = *(a3 + 16);
  v14[5] = a4;
  v14[6] = v15;
  v14[7] = v12;
  v14[8] = a1;
  v14[9] = a2;
  swift_unknownObjectRetain();

  return sub_1B60C05E0(0, 0, v11, &unk_1B622FD70, v14);
}

uint64_t sub_1B6168368(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int *a5)
{
  v8 = swift_task_alloc();
  *(v5 + 16) = v8;
  *v8 = v5;
  v8[1] = sub_1B6049918;

  return sub_1B6168154(a1, a5);
}

uint64_t sub_1B616844C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[7];
  v7 = v1[8];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1B6049918;

  return sub_1B6168368(a1, v4, v5, v6, v7);
}

uint64_t sub_1B6168548()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t Settings.DaemonStore.set<A>(setting:value:)()
{
  sub_1B602D008(&qword_1EB924B58);

  return sub_1B621DC84();
}

uint64_t static Settings.Daemon.settingsStore.getter()
{
  type metadata accessor for Settings.DaemonStore();

  return swift_initStaticObject();
}

uint64_t sub_1B6168834()
{
  sub_1B621DC24();
  OUTLINED_FUNCTION_2_35();
  MEMORY[0x1EEE9AC00](v0);
  OUTLINED_FUNCTION_40();
  sub_1B621DC14();
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_1_37();
  v2 = OUTLINED_FUNCTION_12_16();
  v3(v2);
  v4 = OUTLINED_FUNCTION_7_22();
  v5(v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB926610);
  OUTLINED_FUNCTION_73();
  OUTLINED_FUNCTION_6_21();
  result = OUTLINED_FUNCTION_10_19();
  qword_1EB9265C8 = result;
  return result;
}

uint64_t sub_1B61689B0()
{
  sub_1B621DC24();
  OUTLINED_FUNCTION_2_35();
  MEMORY[0x1EEE9AC00](v0);
  OUTLINED_FUNCTION_40();
  sub_1B621DC14();
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_1_37();
  v2 = OUTLINED_FUNCTION_12_16();
  v3(v2);
  v4 = OUTLINED_FUNCTION_7_22();
  v5(v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB926610);
  OUTLINED_FUNCTION_73();
  OUTLINED_FUNCTION_6_21();
  result = OUTLINED_FUNCTION_10_19();
  qword_1EB9265D0 = result;
  return result;
}

uint64_t sub_1B6168B2C()
{
  sub_1B621DC24();
  OUTLINED_FUNCTION_2_35();
  MEMORY[0x1EEE9AC00](v0);
  OUTLINED_FUNCTION_40();
  sub_1B621DC14();
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_1_37();
  v2 = OUTLINED_FUNCTION_12_16();
  v3(v2);
  v4 = OUTLINED_FUNCTION_7_22();
  v5(v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB926610);
  OUTLINED_FUNCTION_73();
  OUTLINED_FUNCTION_6_21();
  result = OUTLINED_FUNCTION_10_19();
  qword_1EB9265D8 = result;
  return result;
}

uint64_t sub_1B6168CA8()
{
  sub_1B621DC24();
  OUTLINED_FUNCTION_2_35();
  MEMORY[0x1EEE9AC00](v0);
  OUTLINED_FUNCTION_40();
  sub_1B621DC14();
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_1_37();
  v2 = OUTLINED_FUNCTION_12_16();
  v3(v2);
  v4 = OUTLINED_FUNCTION_7_22();
  v5(v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB926610);
  OUTLINED_FUNCTION_73();
  OUTLINED_FUNCTION_6_21();
  result = OUTLINED_FUNCTION_10_19();
  qword_1EB9265E0 = result;
  return result;
}

uint64_t sub_1B6168E90()
{
  v0 = sub_1B621DC14();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v10[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = sub_1B621DC24();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_1EDAB4AA8 != -1)
  {
    swift_once();
  }

  v8 = __swift_project_value_buffer(v4, qword_1EDAB4AB0);
  (*(v5 + 16))(v7, v8, v4);
  (*(v1 + 104))(v3, *MEMORY[0x1E69D6E90], v0);
  v10[15] = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB926610);
  swift_allocObject();
  result = sub_1B621DC54();
  qword_1EB9265E8 = result;
  return result;
}

uint64_t sub_1B616910C()
{
  v0 = sub_1B621DC14();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v10[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = sub_1B621DC24();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_1EDAB4AA8 != -1)
  {
    swift_once();
  }

  v8 = __swift_project_value_buffer(v4, qword_1EDAB4AB0);
  (*(v5 + 16))(v7, v8, v4);
  (*(v1 + 104))(v3, *MEMORY[0x1E69D6E90], v0);
  v10[15] = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB926610);
  swift_allocObject();
  result = sub_1B621DC54();
  qword_1EDAB3C80 = result;
  return result;
}

uint64_t sub_1B6169360()
{
  v0 = sub_1B621DC24();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v9[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = sub_1B621DC14();
  v5 = MEMORY[0x1EEE9AC00](v4);
  (*(v7 + 104))(&v9[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], *MEMORY[0x1E69D6E90], v5);
  (*(v1 + 104))(v3, *MEMORY[0x1E69D6EA0], v0);
  v9[15] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB926610);
  swift_allocObject();
  result = sub_1B621DC54();
  qword_1EB9265F0 = result;
  return result;
}

uint64_t Settings.Daemon.AttributionOverrides.WeatherDataProvider.rawValue.getter()
{
  v1 = 0xD000000000000013;
  if (*v0 != 1)
  {
    v1 = 0;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x50746C7561666564;
  }
}

uint64_t Settings.Daemon.AttributionOverrides.WeatherDataProvider.init(rawValue:)@<X0>(char *a1@<X8>)
{
  v2 = sub_1B6221CD4();

  v4 = 3;
  if (v2 < 3)
  {
    v4 = v2;
  }

  *a1 = v4;
  return result;
}

uint64_t sub_1B6169674@<X0>(uint64_t *a1@<X8>)
{
  result = Settings.Daemon.AttributionOverrides.WeatherDataProvider.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1B616969C(uint64_t a1)
{
  v2 = sub_1B616A318();
  v3 = MEMORY[0x1E69D6EE0];

  return MEMORY[0x1EEE45780](a1, v2, v3);
}

uint64_t sub_1B61696F0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B616A318();
  v5 = MEMORY[0x1E69D6EE0];

  return MEMORY[0x1EEE45778](a1, a2, v4, v5);
}

uint64_t sub_1B616974C(uint64_t a1)
{
  v2 = sub_1B616A318();
  v3 = MEMORY[0x1E69D6EE0];

  return MEMORY[0x1EEE45770](a1, v2, v3);
}

void sub_1B61697A0()
{
  OUTLINED_FUNCTION_129();
  sub_1B621DC14();
  OUTLINED_FUNCTION_2_35();
  MEMORY[0x1EEE9AC00](v0);
  OUTLINED_FUNCTION_40();
  sub_1B621DC24();
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_1_37();
  if (qword_1EDAB4AA8 != -1)
  {
    v2 = OUTLINED_FUNCTION_4_25();
  }

  v3 = OUTLINED_FUNCTION_5_29(v2, qword_1EDAB4AB0);
  v4(v3);
  v5 = OUTLINED_FUNCTION_8_22();
  v6(v5);
  OUTLINED_FUNCTION_15();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB926610);
  OUTLINED_FUNCTION_73();
  OUTLINED_FUNCTION_9_20();
  qword_1EDAAF600 = OUTLINED_FUNCTION_11_18();
  OUTLINED_FUNCTION_48_0();
}

void sub_1B6169938()
{
  OUTLINED_FUNCTION_129();
  sub_1B621DC14();
  OUTLINED_FUNCTION_2_35();
  MEMORY[0x1EEE9AC00](v0);
  OUTLINED_FUNCTION_40();
  sub_1B621DC24();
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_1_37();
  if (qword_1EDAB4AA8 != -1)
  {
    v2 = OUTLINED_FUNCTION_4_25();
  }

  v3 = OUTLINED_FUNCTION_5_29(v2, qword_1EDAB4AB0);
  v4(v3);
  v5 = OUTLINED_FUNCTION_8_22();
  v6(v5);
  OUTLINED_FUNCTION_15();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB926610);
  OUTLINED_FUNCTION_73();
  OUTLINED_FUNCTION_9_20();
  qword_1EDAAF618 = OUTLINED_FUNCTION_11_18();
  OUTLINED_FUNCTION_48_0();
}

void sub_1B6169AD0()
{
  OUTLINED_FUNCTION_129();
  sub_1B621DC14();
  OUTLINED_FUNCTION_2_35();
  MEMORY[0x1EEE9AC00](v0);
  OUTLINED_FUNCTION_40();
  sub_1B621DC24();
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_1_37();
  if (qword_1EDAB4AA8 != -1)
  {
    v2 = OUTLINED_FUNCTION_4_25();
  }

  v3 = OUTLINED_FUNCTION_5_29(v2, qword_1EDAB4AB0);
  v4(v3);
  v5 = OUTLINED_FUNCTION_8_22();
  v6(v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB926610);
  OUTLINED_FUNCTION_73();
  OUTLINED_FUNCTION_9_20();
  qword_1EDAB20C0 = OUTLINED_FUNCTION_11_18();
  OUTLINED_FUNCTION_48_0();
}

void static Settings.Daemon.Performance.logConfiguration()()
{
  sub_1B621DC04();
  sub_1B621DBF4();
  if (qword_1EDAAF5F8 != -1)
  {
    swift_once();
  }

  sub_1B621DBE4();

  if (qword_1EDAAEB28 != -1)
  {
    swift_once();
  }

  v0 = sub_1B6220B34();
  __swift_project_value_buffer(v0, qword_1EDAAEB30);
  v1 = sub_1B6220B14();
  v2 = sub_1B62217C4();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 67109120;
    *(v3 + 4) = v8;
    _os_log_impl(&dword_1B6020000, v1, v2, "Deferring XPC service launch: %{BOOL}d", v3, 8u);
    MEMORY[0x1B8C91C90](v3, -1, -1);
  }

  sub_1B621DBF4();
  if (qword_1EDAAF610 != -1)
  {
    swift_once();
  }

  sub_1B621DBE4();

  v4 = sub_1B6220B14();
  v5 = sub_1B62217C4();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 67109120;
    *(v6 + 4) = v7;
    _os_log_impl(&dword_1B6020000, v4, v5, "Using workloop: %{BOOL}d", v6, 8u);
    MEMORY[0x1B8C91C90](v6, -1, -1);
  }
}

void sub_1B6169EA0()
{
  OUTLINED_FUNCTION_129();
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v0);
  OUTLINED_FUNCTION_14_0();
  swift_allocObject();
  v1 = OUTLINED_FUNCTION_16_0();
  v2(v1);
  OUTLINED_FUNCTION_23_10();
  v3 = OUTLINED_FUNCTION_21_0();
  v4(v3);
  OUTLINED_FUNCTION_48_0();
}

void sub_1B6169F68()
{
  OUTLINED_FUNCTION_129();
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v0);
  OUTLINED_FUNCTION_14_0();
  v1 = OUTLINED_FUNCTION_16_0();
  v2(v1);
  OUTLINED_FUNCTION_23_10();
  v3 = OUTLINED_FUNCTION_21_0();
  v4(v3);
  OUTLINED_FUNCTION_48_0();
}

uint64_t Settings.Daemon.Performance.__deallocating_deinit()
{
  v0 = _s11TeaSettings0B0C13WeatherDaemonE0D0V11PerformanceCfd_0();

  return MEMORY[0x1EEE6BDC0](v0, 16, 7);
}

unint64_t sub_1B616A080()
{
  result = qword_1EDAB0978;
  if (!qword_1EDAB0978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAB0978);
  }

  return result;
}

_BYTE *_s6DaemonVwst(_BYTE *result, int a2, int a3)
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

_BYTE *_s6DaemonV20AttributionOverridesC19WeatherDataProviderOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1B616A318()
{
  result = qword_1EDAB0970;
  if (!qword_1EDAB0970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAB0970);
  }

  return result;
}

uint64_t EventSignificance.init(from:)@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  OUTLINED_FUNCTION_0_9();
  sub_1B62220C4();
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_1(v11, v11[3]);
    OUTLINED_FUNCTION_0_9();
    v5 = sub_1B6221F44();
    v7 = v6;
    __swift_destroy_boxed_opaque_existential_1(v11);
    v8._countAndFlagsBits = v5;
    v8._object = v7;
    EventSignificance.init(rawValue:)(v8);
    v9 = v11[0];
    if (LOBYTE(v11[0]) == 13)
    {
      v9 = 12;
    }

    *a2 = v9;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

WeatherDaemon::EventSignificance_optional __swiftcall EventSignificance.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1B6221CD4();

  v5 = 13;
  if (v3 < 0xD)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t EventSignificance.rawValue.getter()
{
  result = 0x4843544157;
  switch(*v0)
  {
    case 1:
      result = 0x4E4954454C4C5542;
      break;
    case 2:
      result = 0x434E454752454D45;
      break;
    case 3:
      v2 = 0x4D4552545845;
      goto LABEL_12;
    case 4:
      result = 0x5453414345524F46;
      break;
    case 5:
      result = 0x4C415F4C41434F4CLL;
      break;
    case 6:
      v2 = 0x47415353454DLL;
LABEL_12:
      result = v2 & 0xFFFFFFFFFFFFLL | 0x45000000000000;
      break;
    case 7:
      result = 0x4B4F4F4C54554FLL;
      break;
    case 8:
      result = 0x54524F504552;
      break;
    case 9:
      result = 0x4E454D4554415453;
      break;
    case 0xA:
      result = 0x474E494E524157;
      break;
    case 0xB:
      result = 0x59524F5349564441;
      break;
    case 0xC:
      result = 0x4E574F4E4B4E55;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_1B616A618()
{
  result = qword_1EB926620;
  if (!qword_1EB926620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB926620);
  }

  return result;
}

uint64_t sub_1B616A690@<X0>(uint64_t *a1@<X8>)
{
  result = EventSignificance.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

_BYTE *storeEnumTagSinglePayload for EventSignificance(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 12 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 12) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF4)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF3)
  {
    v6 = ((a2 - 244) >> 8) + 1;
    *result = a2 + 12;
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
          *result = a2 + 12;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1B616A82C()
{
  result = qword_1EDAAF8D8;
  if (!qword_1EDAAF8D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAAF8D8);
  }

  return result;
}

uint64_t static HourForecastDescriptor.name.setter(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_3_5();
  *aHourforecast_2 = a1;
  *&aHourforecast_2[8] = a2;
}

uint64_t (*static HourForecastDescriptor.name.modify())()
{
  OUTLINED_FUNCTION_1_3();
  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_1B616A920@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  v2 = *&aHourforecast_2[8];
  *a1 = *aHourforecast_2;
  a1[1] = v2;
  return sub_1B6220784();
}

uint64_t sub_1B616A970(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  swift_beginAccess();
  *aHourforecast_2 = v2;
  *&aHourforecast_2[8] = v1;
  sub_1B6220784();
}

uint64_t *sub_1B616A9D4()
{
  if (qword_1EDAB1330 != -1)
  {
    OUTLINED_FUNCTION_0_61();
  }

  return &qword_1EDAB1338;
}

uint64_t static HourForecastDescriptor.version.setter(uint64_t a1, uint64_t a2)
{
  if (qword_1EDAB1330 != -1)
  {
    OUTLINED_FUNCTION_0_61();
  }

  OUTLINED_FUNCTION_3_5();
  qword_1EDAB1338 = a1;
  qword_1EDAB1340 = a2;
}

uint64_t (*static HourForecastDescriptor.version.modify())()
{
  if (qword_1EDAB1330 != -1)
  {
    OUTLINED_FUNCTION_0_61();
  }

  OUTLINED_FUNCTION_1_3();
  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_1B616AAF4@<X0>(void *a1@<X8>)
{
  sub_1B616A9D4();
  swift_beginAccess();
  v2 = qword_1EDAB1340;
  *a1 = qword_1EDAB1338;
  a1[1] = v2;
  return sub_1B6220784();
}

uint64_t sub_1B616AB48(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  sub_1B6220784();
  sub_1B616A9D4();
  swift_beginAccess();
  qword_1EDAB1338 = v2;
  qword_1EDAB1340 = v1;
}

_BYTE *storeEnumTagSinglePayload for HourForecastDescriptor(_BYTE *result, int a2, int a3)
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

BOOL Array<A>.contains(_:)(uint64_t a1, double a2, double a3)
{
  if (*(a1 + 16) != 4)
  {
    return 0;
  }

  v3 = *(a1 + 32) > a3 || *(a1 + 48) < a3;
  return !v3 && *(a1 + 40) <= a2 && *(a1 + 56) >= a2;
}

uint64_t Array<A>.minLongitude.getter(uint64_t result)
{
  if (!*(result + 16))
  {
    __break(1u);
  }

  return result;
}

uint64_t Array<A>.minLatitude.getter(uint64_t result)
{
  if (*(result + 16) < 2uLL)
  {
    __break(1u);
  }

  return result;
}

uint64_t Array<A>.maxLongitude.getter(uint64_t result)
{
  if (*(result + 16) < 3uLL)
  {
    __break(1u);
  }

  return result;
}

uint64_t Array<A>.maxLatitude.getter(uint64_t result)
{
  if (*(result + 16) < 4uLL)
  {
    __break(1u);
  }

  return result;
}

void Array<A>.center.getter(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 < 2)
  {
    __break(1u);
  }

  else if (v1 >= 4)
  {
    CLLocationCoordinate2DMake(*(a1 + 40) + (*(a1 + 56) - *(a1 + 40)) * 0.5, *(a1 + 32) + (*(a1 + 48) - *(a1 + 32)) * 0.5);
    return;
  }

  __break(1u);
}

uint64_t WDSJWTMescalSigner.__allocating_init()()
{
  v0 = swift_allocObject();
  WDSJWTMescalSigner.init()();
  return v0;
}

id sub_1B616AD6C@<X0>(void *a1@<X8>)
{
  sub_1B602370C(0, &qword_1EDAB0998);
  result = sub_1B616ADD0();
  *a1 = result;
  return result;
}

id sub_1B616ADD0()
{
  v0 = sub_1B62211B4();

  v1 = sub_1B62211B4();

  v2 = [swift_getObjCClassFromMetadata() bagForProfile:v0 profileVersion:v1];

  return v2;
}

uint64_t WDSJWTMescalSigner.sign(data:bundleIdentifier:)(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  if (qword_1EDAB4B00 != -1)
  {
    OUTLINED_FUNCTION_0_62();
    swift_once();
  }

  v6 = sub_1B6220B34();
  __swift_project_value_buffer(v6, qword_1EDAC2AC8);
  v7 = sub_1B6220B14();
  v8 = sub_1B62217F4();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_1B6020000, v7, v8, "About to request a signature", v9, 2u);
    MEMORY[0x1B8C91C90](v9, -1, -1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB926640);
  v10 = *(v3 + 16);
  v11 = swift_allocObject();
  v11[2] = a1;
  v11[3] = a2;
  v11[4] = v10;

  sub_1B604D8AC(a1, a2);
  return sub_1B6220924();
}

uint64_t sub_1B616AFC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[9] = a3;
  v4[10] = a4;
  v4[7] = a1;
  v4[8] = a2;
  v5 = sub_1B62210E4();
  v4[11] = v5;
  v4[12] = *(v5 - 8);
  v4[13] = swift_task_alloc();
  sub_1B62210D4();
  v4[14] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B616B0B0, 0, 0);
}

uint64_t sub_1B616B0B0()
{
  v2 = v0[13];
  v1 = v0[14];
  v4 = v0[11];
  v3 = v0[12];
  v5 = v0[9];
  v6 = v0[8];
  sub_1B602370C(0, &unk_1EDAB0408);
  sub_1B602C5F4(&qword_1EDAB0E00, MEMORY[0x1E6966698]);
  sub_1B6221064();
  sub_1B604D8AC(v6, v5);
  sub_1B616B6E0(v6, v5);
  sub_1B60362A8(v6, v5);
  sub_1B6221054();
  (*(v3 + 8))(v2, v4);
  v7 = sub_1B61758A0(v1);
  v9 = v8;
  v0[15] = v7;
  v0[16] = v8;
  sub_1B6220864();
  v10 = v0[6];
  v0[17] = v10;
  v11 = swift_task_alloc();
  v0[18] = v11;
  *v11 = v0;
  v11[1] = sub_1B616B270;

  return MEMORY[0x1EEDEE018](v7, v9, 1, v10);
}

uint64_t sub_1B616B270(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v4[2] = v3;
  v4[3] = a1;
  v4[4] = a2;
  v4[5] = v2;
  v4[19] = v2;

  if (v2)
  {
    v6 = v4[16];
    v5 = v4[17];
    v7 = v4[15];

    sub_1B60362A8(v7, v6);
    v8 = sub_1B616B4F0;
  }

  else
  {
    v9 = v4[17];
    sub_1B60362A8(v4[15], v4[16]);

    v8 = sub_1B616B3B4;
  }

  return MEMORY[0x1EEE6DFA0](v8, 0, 0);
}

uint64_t sub_1B616B3B4()
{
  if (qword_1EDAB4B00 != -1)
  {
    OUTLINED_FUNCTION_0_62();
    swift_once();
  }

  v1 = sub_1B6220B34();
  __swift_project_value_buffer(v1, qword_1EDAC2AC8);
  v2 = sub_1B6220B14();
  v3 = sub_1B62217F4();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1B6020000, v2, v3, "Signed successfully", v4, 2u);
    MEMORY[0x1B8C91C90](v4, -1, -1);
  }

  v5 = *(v0 + 56);
  v8 = *(v0 + 24);

  *v5 = v8;

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_1B616B4F0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t WDSJWTMescalSigner.__deallocating_deinit()
{

  return MEMORY[0x1EEE6BDC0](v0, 24, 7);
}

uint64_t sub_1B616B5D8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1B6049918;

  return sub_1B616AFC0(a1, v4, v5, v6);
}

void sub_1B616B6E0(uint64_t a1, unint64_t a2)
{
  switch(a2 >> 62)
  {
    case 1uLL:
      v5 = a1 >> 32;
      if (a1 >> 32 < a1)
      {
        goto LABEL_9;
      }

      a1 = a1;
      v4 = v5;
      goto LABEL_7;
    case 2uLL:
      v3 = *(a1 + 24);
      a1 = *(a1 + 16);
      v4 = v3;
LABEL_7:
      sub_1B616B850(a1, v4);
      if (v2)
      {
        goto LABEL_8;
      }

      return;
    default:
      sub_1B616B77C();
      if (!v2)
      {
        return;
      }

LABEL_8:

      __break(1u);
LABEL_9:
      __break(1u);
      return;
  }
}

uint64_t sub_1B616B77C()
{
  sub_1B62210E4();
  sub_1B602C5F4(&qword_1EDAB0E00, MEMORY[0x1E6966698]);
  return sub_1B6221044();
}

uint64_t sub_1B616B850(uint64_t a1, uint64_t a2)
{
  result = sub_1B621D4A4();
  if (!result || (result = sub_1B621D4C4(), !__OFSUB__(a1, result)))
  {
    if (!__OFSUB__(a2, a1))
    {
      sub_1B621D4B4();
      sub_1B62210E4();
      sub_1B602C5F4(&qword_1EDAB0E00, MEMORY[0x1E6966698]);
      return sub_1B6221044();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t static NewsDescriptor.name.setter(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_3_5();
  *aNews_8 = a1;
  qword_1EB926650 = a2;
}

uint64_t (*static NewsDescriptor.name.modify())()
{
  OUTLINED_FUNCTION_1_3();
  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_1B616B9D0@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  v2 = qword_1EB926650;
  *a1 = *aNews_8;
  a1[1] = v2;
  return sub_1B6220784();
}

uint64_t sub_1B616BA20(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  swift_beginAccess();
  *aNews_8 = v2;
  qword_1EB926650 = v1;
  sub_1B6220784();
}

uint64_t *sub_1B616BA84()
{
  if (qword_1EDAB1588 != -1)
  {
    OUTLINED_FUNCTION_0_63();
  }

  return &qword_1EDAB1590;
}

uint64_t static NewsDescriptor.version.setter(uint64_t a1, uint64_t a2)
{
  if (qword_1EDAB1588 != -1)
  {
    OUTLINED_FUNCTION_0_63();
  }

  OUTLINED_FUNCTION_3_5();
  qword_1EDAB1590 = a1;
  qword_1EDAB1598 = a2;
}

uint64_t (*static NewsDescriptor.version.modify())()
{
  if (qword_1EDAB1588 != -1)
  {
    OUTLINED_FUNCTION_0_63();
  }

  OUTLINED_FUNCTION_1_3();
  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_1B616BBA4@<X0>(void *a1@<X8>)
{
  sub_1B616BA84();
  swift_beginAccess();
  v2 = qword_1EDAB1598;
  *a1 = qword_1EDAB1590;
  a1[1] = v2;
  return sub_1B6220784();
}

uint64_t sub_1B616BBF8(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  sub_1B6220784();
  sub_1B616BA84();
  swift_beginAccess();
  qword_1EDAB1590 = v2;
  qword_1EDAB1598 = v1;
}

_BYTE *storeEnumTagSinglePayload for NewsDescriptor(_BYTE *result, int a2, int a3)
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

unint64_t WDSSignature.header.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[4];
  v4 = v0[5];
  v5 = sub_1B621D6F4();
  v6 = [v5 base64EncodedStringWithOptions_];

  v7 = sub_1B62211D4();
  v9 = v8;

  sub_1B6221B34();

  MEMORY[0x1B8C90530](v7, v9);

  MEMORY[0x1B8C90530](0x3D79656B3BLL, 0xE500000000000000);
  MEMORY[0x1B8C90530](v3, v4);
  MEMORY[0x1B8C90530](0x3D657461643BLL, 0xE600000000000000);
  MEMORY[0x1B8C90530](v1, v2);
  return 0xD000000000000010;
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataV15_RepresentationO(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

uint64_t sub_1B616BE3C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_1B616BE7C(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_1B616BED8(_BYTE *a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = (*a1 & 1) == 0;
  *(v3 + 24) = a3;
  *(v3 + 32) = a2;

  sub_1B616BF40();

  return v3;
}

uint64_t sub_1B616BF40()
{
  sub_1B621DC04();
  sub_1B621DBF4();
  if (qword_1EB924448 != -1)
  {
    swift_once();
  }

  sub_1B621DBE4();

  if (v1 == 1)
  {
    type metadata accessor for Settings.DaemonStore();
    swift_initStaticObject();
    sub_1B60A2A5C();
    sub_1B621DC84();
    return sub_1B616DF64();
  }

  return result;
}

uint64_t sub_1B616C020(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5, double a6)
{
  v7 = v6;
  v14 = *v7;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB925F70);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = v41 - v16;
  v18 = type metadata accessor for DailyWeatherStatistics();
  MEMORY[0x1EEE9AC00](v18);
  v45 = v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = v41 - v21;
  v23 = *(a4 + 8);
  v44 = *a4;
  v47 = a2;
  v48 = v44;
  v43 = v23;
  v49 = v23;
  v46 = a1;
  v24 = sub_1B616C484(a1, a2, a3, &v48);
  v26 = v25;
  if (qword_1EB9244E0 != -1)
  {
    swift_once();
  }

  v27 = sub_1B6220B34();
  __swift_project_value_buffer(v27, qword_1EB942B10);
  sub_1B6220784();
  v28 = sub_1B6220B14();
  v29 = sub_1B62217F4();

  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v41[1] = v14;
    v42 = a3;
    v31 = v30;
    v32 = v18;
    v33 = swift_slowAlloc();
    v48 = v33;
    *v31 = 141558275;
    *(v31 + 4) = 1752392040;
    *(v31 + 12) = 2081;
    *(v31 + 14) = sub_1B602EEB0(v24, v26, &v48);
    _os_log_impl(&dword_1B6020000, v28, v29, "Attempting to read daily statistics from cache; key=%{private,mask.hash}s", v31, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v33);
    v34 = v33;
    v18 = v32;
    MEMORY[0x1B8C91C90](v34, -1, -1);
    a3 = v42;
    MEMORY[0x1B8C91C90](v31, -1, -1);
  }

  sub_1B616C63C(v24, v26, v17);
  if (__swift_getEnumTagSinglePayload(v17, 1, v18) == 1)
  {
    sub_1B602724C(v17, &qword_1EB925F70);
    v48 = v44;
    v49 = v43;
    sub_1B610AA40(v46, v47, a3, &v48, a5, a6);
    v35 = swift_allocObject();
    *(v35 + 16) = v24;
    *(v35 + 24) = v26;
    *(v35 + 32) = a5;
    *(v35 + 40) = a6;
    sub_1B6220784();
    v36 = sub_1B62208D4();
    sub_1B6220954();

    v37 = swift_allocObject();
    *(v37 + 16) = v24;
    *(v37 + 24) = v26;
    v38 = sub_1B62208D4();
    v39 = sub_1B6220974();
  }

  else
  {

    sub_1B616E1E8(v17, v22);
    sub_1B616E24C(v22, v45);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB925F60);
    swift_allocObject();
    v39 = sub_1B6220994();
    sub_1B616E2B0(v22);
  }

  return v39;
}

uint64_t sub_1B616C484(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a4 + 8);
  sub_1B6221B34();
  v6 = CLLocationCoordinate2D.cacheKey.getter();

  MEMORY[0x1B8C90530](44, 0xE100000000000000);
  v7 = sub_1B6221F04();
  MEMORY[0x1B8C90530](v7);

  MEMORY[0x1B8C90530](44, 0xE100000000000000);
  v8 = sub_1B6221F04();
  MEMORY[0x1B8C90530](v8);

  MEMORY[0x1B8C90530](44, 0xE100000000000000);
  v9 = sub_1B6195268(a1);
  MEMORY[0x1B8C90530](v9);

  MEMORY[0x1B8C90530](44, 0xE100000000000000);
  if (v5)
  {
    v10 = 0xE300000000000000;
    v11 = 7104878;
  }

  else
  {
    v11 = sub_1B6221F04();
    v10 = v12;
  }

  MEMORY[0x1B8C90530](v11, v10);

  v13 = sub_1B60701A0();
  MEMORY[0x1B8C90530](v13);

  return v6;
}

uint64_t sub_1B616C63C@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v48 = a3;
  v47 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924B50);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v44 - v5;
  v7 = sub_1B6220BD4();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EB9244E0 != -1)
  {
    swift_once();
  }

  v11 = sub_1B6220B34();
  __swift_project_value_buffer(v11, qword_1EB942B10);
  sub_1B6220784();
  v12 = sub_1B6220B14();
  v13 = sub_1B62217F4();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v45 = v7;
    v46 = v8;
    v16 = v15;
    v54 = v15;
    *v14 = 141558275;
    *(v14 + 4) = 1752392040;
    *(v14 + 12) = 2081;
    *(v14 + 14) = sub_1B602EEB0(v47, a2, &v54);
    _os_log_impl(&dword_1B6020000, v12, v13, "Attempting to retrieve daily statistics from cache; key=%{private,mask.hash}s", v14, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v16);
    v17 = v16;
    v7 = v45;
    v8 = v46;
    MEMORY[0x1B8C91C90](v17, -1, -1);
    MEMORY[0x1B8C91C90](v14, -1, -1);
  }

  if (*(v49 + 16) == 1)
  {
    if (sub_1B60A059C())
    {
      sub_1B6220D44();
      v57 = MEMORY[0x1E69E6158];
      v58 = MEMORY[0x1E69D62D8];
      v54 = v47;
      v55 = a2;
      sub_1B6220784();
      sub_1B6220CD4();
      __swift_destroy_boxed_opaque_existential_1(&v54);
      v18 = sub_1B6220DD4();
      __swift_storeEnumTagSinglePayload(v6, 1, 1, v18);
      sub_1B6220D14();

      sub_1B602724C(v6, &qword_1EB924B50);
      (*(v8 + 8))(v10, v7);
      v25 = v50[0];
      if (v50[0])
      {
        v26 = v51;
        v27 = v52;
        v54 = v50[0];
        v55 = v50[1];
        v56 = v50[2];
        v57 = v50[3];
        v58 = v51;
        v59 = v52;
        v49 = v53;
        v60 = v53;
        sub_1B6220784();
        v28 = sub_1B6220B14();
        v29 = sub_1B62217F4();

        if (os_log_type_enabled(v28, v29))
        {
          v30 = swift_slowAlloc();
          v46 = v26;
          v31 = v30;
          v32 = swift_slowAlloc();
          v45 = v27;
          v33 = v32;
          v50[0] = v32;
          *v31 = 141558275;
          *(v31 + 4) = 1752392040;
          *(v31 + 12) = 2081;
          *(v31 + 14) = sub_1B602EEB0(v47, a2, v50);
          _os_log_impl(&dword_1B6020000, v28, v29, "Successfully retrieved daily statistics from cache; key=%{private,mask.hash}s", v31, 0x16u);
          __swift_destroy_boxed_opaque_existential_1(v33);
          MEMORY[0x1B8C91C90](v33, -1, -1);
          MEMORY[0x1B8C91C90](v31, -1, -1);
        }

        if (qword_1EDAAF1F0 != -1)
        {
          swift_once();
        }

        sub_1B61DAE90(xmmword_1EDAAF1F8, *(&xmmword_1EDAAF1F8 + 1), qword_1EDAAF208, dword_1EDAAF210 | ((word_1EDAAF214 | (byte_1EDAAF216 << 16)) << 32), v34, v35, v36, v37, v44, v45, v46, v47, v48, v49);

        return sub_1B60729F4(v25);
      }

      else
      {
        sub_1B6220784();
        v40 = sub_1B6220B14();
        v41 = sub_1B62217F4();

        if (os_log_type_enabled(v40, v41))
        {
          v42 = swift_slowAlloc();
          v43 = swift_slowAlloc();
          v54 = v43;
          *v42 = 141558275;
          *(v42 + 4) = 1752392040;
          *(v42 + 12) = 2081;
          *(v42 + 14) = sub_1B602EEB0(v47, a2, &v54);
          _os_log_impl(&dword_1B6020000, v40, v41, "Could not find daily statistics in cache; key=%{private,mask.hash}s", v42, 0x16u);
          __swift_destroy_boxed_opaque_existential_1(v43);
          MEMORY[0x1B8C91C90](v43, -1, -1);
          MEMORY[0x1B8C91C90](v42, -1, -1);
        }

        v38 = type metadata accessor for DailyWeatherStatistics();
        return __swift_storeEnumTagSinglePayload(v48, 1, 1, v38);
      }
    }

    v19 = sub_1B6220B14();
    v20 = sub_1B62217E4();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      v22 = "Cannot retrieve cached daily statistics due to missing store";
      goto LABEL_13;
    }
  }

  else
  {
    v19 = sub_1B6220B14();
    v20 = sub_1B62217E4();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      v22 = "Daily statistics cache is disabled - returning nil";
LABEL_13:
      _os_log_impl(&dword_1B6020000, v19, v20, v22, v21, 2u);
      MEMORY[0x1B8C91C90](v21, -1, -1);
    }
  }

  v23 = type metadata accessor for DailyWeatherStatistics();
  v24 = v48;

  return __swift_storeEnumTagSinglePayload(v24, 1, 1, v23);
}

uint64_t sub_1B616CEA4(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v8 = type metadata accessor for DailyWeatherStatistics();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EB9244E0 != -1)
  {
    swift_once();
  }

  v11 = sub_1B6220B34();
  __swift_project_value_buffer(v11, qword_1EB942B10);
  sub_1B6220784();
  v12 = sub_1B6220B14();
  v13 = sub_1B62217F4();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v18[1] = a2;
    v16 = v15;
    v19 = v15;
    *v14 = 141558275;
    *(v14 + 4) = 1752392040;
    *(v14 + 12) = 2081;
    *(v14 + 14) = sub_1B602EEB0(a3, a4, &v19);
    _os_log_impl(&dword_1B6020000, v12, v13, "Successfully fetched daily statistics. key=%{private,mask.hash}s", v14, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v16);
    MEMORY[0x1B8C91C90](v16, -1, -1);
    MEMORY[0x1B8C91C90](v14, -1, -1);
  }

  sub_1B616D0D8(a1, a3, a4);
  sub_1B616E24C(a1, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB925F60);
  swift_allocObject();
  return sub_1B6220994();
}

void sub_1B616D0D8(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924600);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v48 - v9;
  v11 = sub_1B621D8F4();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for DailyWeatherStatistics();
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v48 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v3 + 16) != 1)
  {
    if (qword_1EB9244E0 != -1)
    {
      swift_once();
    }

    v27 = sub_1B6220B34();
    __swift_project_value_buffer(v27, qword_1EB942B10);
    v61 = sub_1B6220B14();
    v28 = sub_1B62217E4();
    if (!os_log_type_enabled(v61, v28))
    {
      goto LABEL_13;
    }

    v29 = swift_slowAlloc();
    *v29 = 0;
    v30 = "Daily statistics cache is disabled - not caching";
    goto LABEL_12;
  }

  v18 = sub_1B60A059C();
  if (!v18)
  {
    if (qword_1EB9244E0 != -1)
    {
      swift_once();
    }

    v31 = sub_1B6220B34();
    __swift_project_value_buffer(v31, qword_1EB942B10);
    v61 = sub_1B6220B14();
    v28 = sub_1B62217E4();
    if (!os_log_type_enabled(v61, v28))
    {
      goto LABEL_13;
    }

    v29 = swift_slowAlloc();
    *v29 = 0;
    v30 = "Cannot cache daily statistics due to missing store";
LABEL_12:
    _os_log_impl(&dword_1B6020000, v61, v28, v30, v29, 2u);
    MEMORY[0x1B8C91C90](v29, -1, -1);
LABEL_13:
    v32 = v61;

    return;
  }

  v19 = v18;
  sub_1B616E24C(a1, v17);
  v20 = type metadata accessor for Metadata();
  (*(v12 + 16))(v14, a1 + *(v20 + 20), v11);
  sub_1B6220784();
  sub_1B61D8DFC();
  v61 = v19;
  v57 = a3;
  v58 = v4;
  v55 = v12;
  v56 = a2;
  v21 = v62;
  v59 = v63;
  v22 = v64;
  v23 = v65;
  v25 = v66;
  v24 = v67;
  v26 = v68;
  sub_1B6220D34();
  v60 = v21;
  v62 = v21;
  v63 = v59;
  v64 = v22;
  v65 = v23;
  v66 = v25;
  v67 = v24;
  v68 = v26;
  sub_1B6220D04();
  v54 = v26;
  v33 = v22;
  v34 = v23;
  v35 = v33;

  if (qword_1EB9244E0 != -1)
  {
    swift_once();
  }

  v36 = sub_1B6220B34();
  __swift_project_value_buffer(v36, qword_1EB942B10);
  v37 = v57;
  sub_1B6220784();

  v38 = sub_1B6220B14();
  v39 = sub_1B62217F4();

  v52 = v24;

  v53 = v25;

  v50 = v34;

  v51 = v35;

  if (!os_log_type_enabled(v38, v39))
  {

    goto LABEL_16;
  }

  v49 = v38;
  v40 = swift_slowAlloc();
  v41 = swift_slowAlloc();
  v62 = v41;
  *v40 = 141558531;
  *(v40 + 4) = 1752392040;
  *(v40 + 12) = 2081;
  *(v40 + 14) = sub_1B602EEB0(v56, v37, &v62);
  *(v40 + 22) = 2080;
  sub_1B6220D84();
  if (__swift_getEnumTagSinglePayload(v10, 1, v11) != 1)
  {
    sub_1B60CDD24();
    v43 = v42;
    v45 = v44;
    (*(v55 + 8))(v10, v11);
    v46 = sub_1B602EEB0(v43, v45, &v62);

    *(v40 + 24) = v46;
    v47 = v49;
    _os_log_impl(&dword_1B6020000, v49, v39, "Just cached daily statistics; key=%{private,mask.hash}s. It expires %s", v40, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1B8C91C90](v41, -1, -1);
    MEMORY[0x1B8C91C90](v40, -1, -1);

LABEL_16:
    sub_1B616DB18();

    return;
  }

  __break(1u);
}

void sub_1B616D9AC(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (qword_1EB9244E0 != -1)
  {
    swift_once();
  }

  v5 = sub_1B6220B34();
  __swift_project_value_buffer(v5, qword_1EB942B10);
  sub_1B6220784();
  oslog = sub_1B6220B14();
  v6 = sub_1B62217E4();

  if (os_log_type_enabled(oslog, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v10 = v8;
    *v7 = 141558275;
    *(v7 + 4) = 1752392040;
    *(v7 + 12) = 2081;
    *(v7 + 14) = sub_1B602EEB0(a2, a3, &v10);
    _os_log_impl(&dword_1B6020000, oslog, v6, "Failed to fetch daily statistics. key=%{private,mask.hash}s", v7, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v8);
    MEMORY[0x1B8C91C90](v8, -1, -1);
    MEMORY[0x1B8C91C90](v7, -1, -1);
  }
}

void sub_1B616DB18()
{
  v0 = sub_1B621D8F4();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0) + 8;
  v4 = sub_1B6220BD4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0) + 8;
  if (sub_1B60A059C())
  {
    sub_1B6220D64();
    v13[3] = v0;
    v13[4] = MEMORY[0x1E69D6130];
    __swift_allocate_boxed_opaque_existential_1(v13);
    type metadata accessor for WeatherClock();
    static WeatherClock.date.getter();
    sub_1B621D854();
    (*(v1 + 8))(v3, v0);
    sub_1B6220CF4();
    __swift_destroy_boxed_opaque_existential_1(v13);
    sub_1B6220DC4();

    (*(v5 + 8))(v7, v4);
    if (qword_1EB9244E0 != -1)
    {
      swift_once();
    }

    v8 = sub_1B6220B34();
    __swift_project_value_buffer(v8, qword_1EB942B10);
    v9 = sub_1B6220B14();
    v10 = sub_1B62217F4();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_1B6020000, v9, v10, "Purged expired daily weather statistics", v11, 2u);
      MEMORY[0x1B8C91C90](v11, -1, -1);
    }
  }
}

uint64_t sub_1B616DF64()
{
  result = sub_1B60A059C();
  if (result)
  {
    sub_1B6220D64();
    sub_1B6220DB4();
  }

  return result;
}

uint64_t sub_1B616E1E8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DailyWeatherStatistics();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B616E24C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DailyWeatherStatistics();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B616E2B0(uint64_t a1)
{
  v2 = type metadata accessor for DailyWeatherStatistics();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t WDSJWTAuthenticatorServiceProxy.__allocating_init()()
{
  v0 = swift_allocObject();
  WDSJWTAuthenticatorServiceProxy.init()();
  return v0;
}

uint64_t sub_1B616E344(uint64_t a1, uint64_t a2, uint64_t (*a3)(void *))
{
  v4[0] = a1;
  v4[1] = a2;
  return a3(v4);
}

id sub_1B616E37C()
{
  v1 = *(v0 + 32);
  if (v1)
  {
    v2 = *(v0 + 32);
  }

  else
  {
    v3 = sub_1B616E3D4();
    v4 = *(v0 + 32);
    *(v0 + 32) = v3;
    v2 = v3;

    v1 = 0;
  }

  v5 = v1;
  return v2;
}

id sub_1B616E3D4()
{
  v0 = sub_1B6220674();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B616F3F8();
  if (qword_1EDAAFA78 != -1)
  {
    swift_once();
  }

  v4 = sub_1B6220574();
  __swift_project_value_buffer(v4, qword_1EDAAFA80);
  sub_1B6220564();
  v5 = sub_1B616E530();
  sub_1B6220554();
  v6 = sub_1B6220664();
  (*(v1 + 8))(v3, v0);
  [v5 setRemoteObjectInterface_];

  return v5;
}

id sub_1B616E530()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v1 = sub_1B62211B4();

  v2 = [v0 initWithServiceName_];

  return v2;
}

void *WDSJWTAuthenticatorServiceProxy.init()()
{
  v1 = sub_1B6220514();
  MEMORY[0x1EEE9AC00](v1 - 8);
  sub_1B6220504();
  sub_1B6220534();
  swift_allocObject();
  v2 = sub_1B6220524();
  v0[3] = 0;
  v0[4] = 0;
  v0[2] = v2;
  return v0;
}

uint64_t WDSJWTAuthenticatorServiceProxy.deinit()
{

  return v0;
}

uint64_t WDSJWTAuthenticatorServiceProxy.__deallocating_deinit()
{
  WDSJWTAuthenticatorServiceProxy.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 40, 7);
}

uint64_t WDSJWTAuthenticatorServiceProxy.generateToken(session:url:)()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB925C18);
  swift_allocObject();
  return sub_1B62209D4();
}

void sub_1B616E70C(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t a4, uint64_t a5)
{
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;

  v11 = sub_1B616E37C();
  [v11 activate];

  v12 = *(a5 + 32);
  v13 = swift_allocObject();
  *(v13 + 16) = a3;
  *(v13 + 24) = a4;
  v36 = sub_1B616F378;
  v37 = v13;
  aBlock = MEMORY[0x1E69E9820];
  v33 = 1107296256;
  v34 = sub_1B619262C;
  v35 = &block_descriptor_3;
  v14 = _Block_copy(&aBlock);
  v15 = v12;

  v16 = [v15 remoteObjectProxyWithErrorHandler_];
  _Block_release(v14);

  sub_1B6221A84();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB926658);
  if (swift_dynamicCast())
  {
    sub_1B6220784();
    v17 = sub_1B62211B4();

    v18 = swift_allocObject();
    v18[2] = a3;
    v18[3] = a4;
    v18[4] = sub_1B616F340;
    v18[5] = v10;
    v36 = sub_1B616F3EC;
    v37 = v18;
    aBlock = MEMORY[0x1E69E9820];
    v33 = 1107296256;
    v34 = sub_1B616F240;
    v35 = &block_descriptor_11;
    v19 = _Block_copy(&aBlock);

    [v31 generateTokenWithUrl:v17 completion:v19];
    swift_unknownObjectRelease();
    _Block_release(v19);
  }

  else
  {

    if (qword_1EDAB4B00 != -1)
    {
      swift_once();
    }

    v20 = sub_1B6220B34();
    __swift_project_value_buffer(v20, qword_1EDAC2AC8);
    v21 = sub_1B6220B14();
    v22 = sub_1B62217E4();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      aBlock = v24;
      *v23 = 136446210;
      if (qword_1EDAAFA78 != -1)
      {
        swift_once();
      }

      v25 = sub_1B6220574();
      __swift_project_value_buffer(v25, qword_1EDAAFA80);
      v26 = sub_1B6220564();
      v28 = sub_1B602EEB0(v26, v27, &aBlock);

      *(v23 + 4) = v28;
      _os_log_impl(&dword_1B6020000, v21, v22, "Remote object proxy remote interface mismatch for: %{public}s", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v24);
      MEMORY[0x1B8C91C90](v24, -1, -1);
      MEMORY[0x1B8C91C90](v23, -1, -1);
    }

    sub_1B616F398();
    v29 = swift_allocError();
    *v30 = 0;
    a3();
  }
}

void sub_1B616EB6C(void *a1, void (*a2)(void *))
{
  if (qword_1EDAB4B00 != -1)
  {
    swift_once();
  }

  v4 = sub_1B6220B34();
  __swift_project_value_buffer(v4, qword_1EDAC2AC8);
  v5 = a1;
  v6 = sub_1B6220B14();
  v7 = sub_1B62217E4();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v21 = v9;
    *v8 = 136446466;
    if (qword_1EDAAFA78 != -1)
    {
      swift_once();
    }

    v10 = sub_1B6220574();
    __swift_project_value_buffer(v10, qword_1EDAAFA80);
    v11 = sub_1B6220564();
    v13 = sub_1B602EEB0(v11, v12, &v21);

    *(v8 + 4) = v13;
    *(v8 + 12) = 2080;
    v14 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924910);
    v15 = sub_1B6221234();
    v17 = sub_1B602EEB0(v15, v16, &v21);

    *(v8 + 14) = v17;
    _os_log_impl(&dword_1B6020000, v6, v7, "Failed to get remote object proxy for: %{public}s with error: %s", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B8C91C90](v9, -1, -1);
    MEMORY[0x1B8C91C90](v8, -1, -1);
  }

  sub_1B616F398();
  v18 = swift_allocError();
  *v19 = a1;
  v20 = a1;
  a2(v18);
}

void sub_1B616EDC0(uint64_t a1, void *a2, void (*a3)(void))
{
  if (a1)
  {
    v37[0] = 0;
    v37[1] = 0;
    sub_1B62211C4();
  }

  if (a2)
  {
    v5 = qword_1EDAB4B00;
    v6 = a2;
    if (v5 != -1)
    {
      swift_once();
    }

    v7 = sub_1B6220B34();
    __swift_project_value_buffer(v7, qword_1EDAC2AC8);
    v8 = v6;
    v9 = sub_1B6220B14();
    v10 = sub_1B62217E4();

    if (os_log_type_enabled(v9, v10))
    {
      v35 = a3;
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v37[0] = v12;
      *v11 = 136446466;
      if (qword_1EDAAFA78 != -1)
      {
        swift_once();
      }

      v13 = sub_1B6220574();
      __swift_project_value_buffer(v13, qword_1EDAAFA80);
      v14 = sub_1B6220564();
      v16 = sub_1B602EEB0(v14, v15, v37);

      *(v11 + 4) = v16;
      *(v11 + 12) = 2080;
      v17 = v8;
      v18 = [v17 description];
      v19 = sub_1B62211D4();
      v21 = v20;

      v22 = sub_1B602EEB0(v19, v21, v37);

      *(v11 + 14) = v22;
      _os_log_impl(&dword_1B6020000, v9, v10, "Failed to generate jwt token for: %{public}s with error: %s", v11, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1B8C91C90](v12, -1, -1);
      MEMORY[0x1B8C91C90](v11, -1, -1);

      a3 = v35;
    }

    else
    {
    }

    v36 = v8;
    a3();

    v34 = v36;
  }

  else
  {
    if (qword_1EDAB4B00 != -1)
    {
      swift_once();
    }

    v23 = sub_1B6220B34();
    __swift_project_value_buffer(v23, qword_1EDAC2AC8);
    v24 = sub_1B6220B14();
    v25 = sub_1B62217E4();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v37[0] = v27;
      *v26 = 136446210;
      if (qword_1EDAAFA78 != -1)
      {
        swift_once();
      }

      v28 = sub_1B6220574();
      __swift_project_value_buffer(v28, qword_1EDAAFA80);
      v29 = sub_1B6220564();
      v31 = sub_1B602EEB0(v29, v30, v37);

      *(v26 + 4) = v31;
      _os_log_impl(&dword_1B6020000, v24, v25, "Failed to generate jwt token for: %{public}s", v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v27);
      MEMORY[0x1B8C91C90](v27, -1, -1);
      MEMORY[0x1B8C91C90](v26, -1, -1);
    }

    sub_1B616F398();
    v32 = swift_allocError();
    *v33 = 1;
    a3();
    v34 = v32;
  }
}

void sub_1B616F240(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(a2, a3);
}

uint64_t sub_1B616F340(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v5[0] = a1;
  v5[1] = a2;
  return v3(v5);
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_1B616F398()
{
  result = qword_1EDAAEC38;
  if (!qword_1EDAAEC38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAAEC38);
  }

  return result;
}

unint64_t sub_1B616F3F8()
{
  result = qword_1EDAAEA90;
  if (!qword_1EDAAEA90)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDAAEA90);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_13WeatherDaemon31WDSJWTAuthenticatorServiceProxyC6ErrorsO(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1B616F454(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 8))
  {
    return (*a1 + 2147483646);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_1B616F4A8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

void *sub_1B616F504(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2 - 1;
  }

  *result = v2;
  return result;
}

__n128 HourWeatherStatistics.temperature.getter@<Q0>(__n128 *a1@<X8>)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  result = *(v1 + 8);
  *a1 = result;
  a1[1].n128_u64[0] = v2;
  a1[1].n128_u8[8] = v3;
  return result;
}

uint64_t HourWeatherStatistics.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v31 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB926660);
  OUTLINED_FUNCTION_2();
  v32 = v4;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v30 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB926668);
  OUTLINED_FUNCTION_2();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v30 - v12;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B616F920();
  v14 = v33;
  sub_1B62220D4();
  if (!v14)
  {
    v15 = v7;
    LOBYTE(v34) = 0;
    v30 = sub_1B6221DC4();
    v16 = a1[3];
    v33 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v16);
    sub_1B616F974();
    sub_1B62220D4();
    LOBYTE(v34) = 0;
    v17 = sub_1B6221D74();
    v19 = v15;
    v21 = v32;
    if ((v18 & 1) == 0)
    {
      v33 = v17;
      LOBYTE(v34) = 1;
      v26 = sub_1B6221D74();
      if ((v27 & 1) == 0)
      {
        v28 = sub_1B616FA1C(v30, v33, v26);
        if (v29)
        {
          LOBYTE(v34) = 0;
          v33 = "v24@?0@NSString8@NSError16";
          sub_1B6221B94();
          swift_allocError();
          sub_1B616FA90();
          sub_1B6221B74();
          swift_willThrow();
          (*(v21 + 8))(v19, v3);
          (*(v10 + 8))(v13, v8);
          return __swift_destroy_boxed_opaque_existential_1(a1);
        }

        v30 = v28;
      }
    }

    v37 = 1;
    sub_1B616F9C8();
    sub_1B6221D84();
    (*(v21 + 8))(v19, v3);
    (*(v10 + 8))(v13, v8);
    v22 = v35;
    v23 = v36;
    v24 = v34;
    v25 = v31;
    *v31 = v30;
    *(v25 + 1) = v24;
    v25[3] = v22;
    *(v25 + 32) = v23;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_1B616F920()
{
  result = qword_1EB926670;
  if (!qword_1EB926670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB926670);
  }

  return result;
}

unint64_t sub_1B616F974()
{
  result = qword_1EB926678;
  if (!qword_1EB926678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB926678);
  }

  return result;
}

unint64_t sub_1B616F9C8()
{
  result = qword_1EB926680;
  if (!qword_1EB926680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB926680);
  }

  return result;
}

uint64_t sub_1B616FA1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1B61B3364(a2, a3);
  if ((v5 & 1) == 0)
  {
    v6 = result - 1;
    if (__OFSUB__(result, 1))
    {
      __break(1u);
    }

    else
    {
      v7 = (v6 * 24) >> 64;
      v8 = 24 * v6;
      if (v7 == v8 >> 63)
      {
        v9 = __OFADD__(v8, a1);
        v10 = v8 + a1;
        if (!v9)
        {
          result = v10 + 1;
          if (!__OFADD__(v10, 1))
          {
            return result;
          }

LABEL_10:
          __break(1u);
          return result;
        }

LABEL_9:
        __break(1u);
        goto LABEL_10;
      }
    }

    __break(1u);
    goto LABEL_9;
  }

  return result;
}

unint64_t sub_1B616FA90()
{
  result = qword_1EB926688;
  if (!qword_1EB926688)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB926660);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB926688);
  }

  return result;
}

uint64_t sub_1B616FAF4()
{
  v0 = sub_1B6221CD4();

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

uint64_t sub_1B616FB68@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1B616FAF4();
  *a1 = result;
  return result;
}

uint64_t sub_1B616FBA0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1B6086D2C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1B616FBD4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1B616FAF4();
  *a1 = result;
  return result;
}

uint64_t sub_1B616FC04(uint64_t a1)
{
  v2 = sub_1B616F920();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B616FC40(uint64_t a1)
{
  v2 = sub_1B616F920();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B616FCA0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1B616FAF4();
  *a1 = result;
  return result;
}

uint64_t sub_1B616FCD8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1B6086D70(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1B616FD0C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1B616FAF4();
  *a1 = result;
  return result;
}

uint64_t sub_1B616FD3C(uint64_t a1)
{
  v2 = sub_1B616F974();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B616FD78(uint64_t a1)
{
  v2 = sub_1B616F974();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

BOOL static HourWeatherStatistics.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  if ((*(a1 + 32) & 1) == 0)
  {
    if ((*(a2 + 32) & 1) == 0)
    {
      v2 = *(a1 + 8) == *(a2 + 8) && *(a1 + 16) == *(a2 + 16);
      if (v2 && *(a1 + 24) == *(a2 + 24))
      {
        return 1;
      }
    }

    return 0;
  }

  return (*(a2 + 32) & 1) != 0;
}

uint64_t HourWeatherStatistics.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB926690);
  OUTLINED_FUNCTION_2();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v13 - v8;
  v10 = *(v1 + 8);
  v11 = *(v1 + 24);
  v15 = *(v1 + 16);
  v16 = v10;
  v14 = v11;
  v21 = *(v1 + 32);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B616F920();
  sub_1B62220F4();
  LOBYTE(v17) = 0;
  sub_1B6221EB4();
  if (!v2)
  {
    v17 = v16;
    v18 = v15;
    v19 = v14;
    v20 = v21;
    v22 = 1;
    sub_1B616FFA8();
    sub_1B6221E74();
  }

  return (*(v6 + 8))(v9, v4);
}

unint64_t sub_1B616FFA8()
{
  result = qword_1EB926698;
  if (!qword_1EB926698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB926698);
  }

  return result;
}

__n128 __swift_memcpy33_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1B6170074(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 33))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B6170094(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
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

  *(result + 33) = v3;
  return result;
}

_BYTE *sub_1B61700E4(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1B61701C4()
{
  result = qword_1EB9266A0;
  if (!qword_1EB9266A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9266A0);
  }

  return result;
}

unint64_t sub_1B617021C()
{
  result = qword_1EB9266A8;
  if (!qword_1EB9266A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9266A8);
  }

  return result;
}

unint64_t sub_1B6170274()
{
  result = qword_1EB9266B0;
  if (!qword_1EB9266B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9266B0);
  }

  return result;
}

unint64_t sub_1B61702CC()
{
  result = qword_1EB9266B8;
  if (!qword_1EB9266B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9266B8);
  }

  return result;
}

unint64_t sub_1B6170324()
{
  result = qword_1EB9266C0;
  if (!qword_1EB9266C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9266C0);
  }

  return result;
}

unint64_t sub_1B617037C()
{
  result = qword_1EB9266C8;
  if (!qword_1EB9266C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9266C8);
  }

  return result;
}

uint64_t GeoJSON.Feature<>.country.getter()
{
  if (*(v0 + 40) == 1)
  {
    return 0;
  }

  v1 = *(v0 + 48);
  sub_1B6220784();
  return v1;
}

uint64_t GeoJSON.Feature<>.channel.getter()
{
  if (*(v0 + 40) == 1)
  {
    return 0;
  }

  v1 = *(v0 + 32);
  sub_1B6220784();
  return v1;
}

uint64_t sub_1B61704E4(unint64_t a1, double a2, double a3)
{
  switch(a1 >> 62)
  {
    case 1uLL:
      v19 = *((a1 & 0x3FFFFFFFFFFFFFFFLL) + 0x20);
      v23 = *((a1 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      v24 = v19;
      v25 = *((a1 & 0x3FFFFFFFFFFFFFFFLL) + 0x30);
      v6 = &qword_1EB9266D8;
      sub_1B60C99C4(&v23, v22, &qword_1EB9266D8);
      v7 = Array<A>.contains(_:);
      goto LABEL_6;
    case 2uLL:
      v8 = *((a1 & 0x3FFFFFFFFFFFFFFFLL) + 0x20);
      v23 = *((a1 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      v24 = v8;
      v9 = *((a1 & 0x3FFFFFFFFFFFFFFFLL) + 0x40);
      v25 = *((a1 & 0x3FFFFFFFFFFFFFFFLL) + 0x30);
      v26 = v9;
      v6 = &qword_1EB9266D0;
      v10 = sub_1B60C99C4(&v23, v22, &qword_1EB9266D0);
      v11.n128_f64[0] = a2;
      v12.n128_f64[0] = a3;
      v13 = sub_1B6170698(v10, v11, v12);
      break;
    case 3uLL:
      v14 = *((a1 & 0x3FFFFFFFFFFFFFFFLL) + 0x20);
      v23 = *((a1 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      v24 = v14;
      v25 = *((a1 & 0x3FFFFFFFFFFFFFFFLL) + 0x30);
      v6 = &qword_1EB9266E8;
      sub_1B60C99C4(&v23, v22, &qword_1EB9266E8);
      v13 = sub_1B6170744(a2, a3, v15, v16, v17, v18);
      break;
    default:
      v5 = *(a1 + 32);
      v23 = *(a1 + 16);
      v24 = v5;
      v25 = *(a1 + 48);
      v6 = &qword_1EB9266E0;
      sub_1B60C99C4(&v23, v22, &qword_1EB9266E0);
      v7 = Array<A>.contains(_:);
LABEL_6:
      v13 = sub_1B617387C(v7, *&a2, a3);
      break;
  }

  v20 = v13;
  sub_1B602724C(&v23, v6);
  return v20 & 1;
}

uint64_t sub_1B6170698(double a1, double a2)
{
  v3 = *(v2 + 16);
  if (v3)
  {
    if (*(v3 + 16) != 4)
    {
      return 0;
    }

    v4.f64[0] = a2;
    v4.f64[1] = a1;
    v5 = vuzp1_s16(*&a1, vmovn_s64(vcgeq_f64(*(v3 + 48), v4)));
    LODWORD(v4.f64[0]) = vuzp1_s16(vmovn_s64(vcgeq_f64(v4, *(v3 + 32))), *&a1).u32[0];
    HIDWORD(v4.f64[0]) = v5.i32[1];
    if ((vminv_u16(*&v4.f64[0]) & 1) == 0)
    {
      return 0;
    }
  }

  v6 = *(v2 + 24);
  if ((~v6 & 0xF000000000000007) == 0)
  {
    return 0;
  }

  v8 = sub_1B61704E4(v6, a1, a2);
  sub_1B615206C(v6);
  return v8 & 1;
}

uint64_t sub_1B6170744(double a1, double a2, double a3, double a4, __n128 a5, __n128 a6)
{
  v7 = *(v6 + 8);
  if (!v7)
  {
    return 0;
  }

  a5.n128_f64[0] = a2;
  a6.n128_f64[0] = a1;
  v8 = 0;
  v9 = *(v7 + 16);
  v10 = v7 + 32;
  v11.f64[0] = a2;
  *&v11.f64[1] = a6.n128_u64[0];
  v224 = v11;
  v228 = a6;
  v229 = a5;
  while (1)
  {
LABEL_3:
    if (v8 == v9)
    {
      return 0;
    }

    v12 = (v10 + (v8 << 6));
    v13 = v12[3];
    v14 = *v12;
    v15 = v12[1];
    v261 = v12[2];
    v262 = v13;
    v259 = v14;
    v260 = v15;
    ++v8;
    if (!v15 || *(v15 + 16) == 4 && *(v15 + 32) <= a5.n128_f64[0] && *(v15 + 48) >= a5.n128_f64[0] && *(v15 + 40) <= a6.n128_f64[0] && *(v15 + 56) >= a6.n128_f64[0])
    {
      v16 = *(&v260 + 1);
      if ((~*(&v260 + 1) & 0xF000000000000007) != 0)
      {
        break;
      }
    }
  }

  switch(*(&v260 + 1) >> 62)
  {
    case 1:
      v49 = *((*(&v260 + 1) & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      v50 = *((*(&v260 + 1) & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
      v51 = *((*(&v260 + 1) & 0x3FFFFFFFFFFFFFFFLL) + 0x20);
      v52 = *((*(&v260 + 1) & 0x3FFFFFFFFFFFFFFFLL) + 0x28);
      if (!v49 || *(v49 + 16) == 4 && *(v49 + 32) <= a5.n128_f64[0] && *(v49 + 48) >= a5.n128_f64[0] && *(v49 + 40) <= a6.n128_f64[0] && *(v49 + 56) >= a6.n128_f64[0])
      {
        if (v50)
        {
          v226 = v10;
          sub_1B60C99C4(&v259, &v255, &qword_1EB9266D0);
          sub_1B615243C(v16);
          sub_1B6220784();
          sub_1B6220784();
          sub_1B6173BE0(v51, v52);
          v53 = Array<A>.contains(_:)(v50, v228.n128_f64[0], v229.n128_f64[0]);

          sub_1B6173C28(v51, v52);
          sub_1B615206C(v16);
          sub_1B602724C(&v259, &qword_1EB9266D0);
          v10 = v226;
          a6.n128_u64[0] = v228.n128_u64[0];
          a5.n128_u64[0] = v229.n128_u64[0];
          if (v53)
          {
            return 1;
          }
        }
      }

      goto LABEL_3;
    case 2:
      v28 = *((*(&v260 + 1) & 0x3FFFFFFFFFFFFFFFLL) + 0x20);
      v255 = *((*(&v260 + 1) & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      v256 = v28;
      v29 = *((*(&v260 + 1) & 0x3FFFFFFFFFFFFFFFLL) + 0x40);
      v257 = *((*(&v260 + 1) & 0x3FFFFFFFFFFFFFFFLL) + 0x30);
      v258 = v29;
      if (v256 && (*(v256 + 16) != 4 || *(v256 + 32) > a5.n128_f64[0] || *(v256 + 48) < a5.n128_f64[0] || *(v256 + 40) > a6.n128_f64[0] || *(v256 + 56) < a6.n128_f64[0]) || (~*(&v256 + 1) & 0xF000000000000007) == 0)
      {
        goto LABEL_3;
      }

      switch(*(&v256 + 1) >> 62)
      {
        case 1:
          v63 = *(&v260 + 1);
          v219 = v9;
          v64 = *((*(&v256 + 1) & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
          v65 = *((*(&v256 + 1) & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
          v66 = *((*(&v256 + 1) & 0x3FFFFFFFFFFFFFFFLL) + 0x20);
          v67 = *((*(&v256 + 1) & 0x3FFFFFFFFFFFFFFFLL) + 0x28);
          if (v64)
          {
            if (*(v64 + 16) != 4 || (v68 = *(v64 + 32), v69 = vuzp1_s16(*&v68.f64[0], vmovn_s64(vcgeq_f64(*(v64 + 48), v224))), *&v68.f64[0] = vmovn_s64(vcgeq_f64(v224, v68)), LODWORD(v68.f64[0]) = vuzp1_s16(*&v68.f64[0], *&v68.f64[0]).u32[0], HIDWORD(v68.f64[0]) = v69.i32[1], (vminv_u16(*&v68.f64[0]) & 1) == 0))
            {
              v70 = v10;
LABEL_77:
              sub_1B60C99C4(&v259, &v251, &qword_1EB9266D0);
              sub_1B602724C(&v259, &qword_1EB9266D0);
              a6.n128_u64[0] = v228.n128_u64[0];
              a5.n128_u64[0] = v229.n128_u64[0];
              v9 = v219;
              v10 = v70;
              goto LABEL_3;
            }
          }

          v70 = v10;
          if (!v65)
          {
            goto LABEL_77;
          }

          v71 = *(&v256 + 1);
          sub_1B60C99C4(&v259, &v251, &qword_1EB9266D0);
          sub_1B615243C(v63);
          sub_1B60C99C4(&v255, &v251, &qword_1EB9266D0);
          sub_1B615243C(v71);
          sub_1B6220784();
          sub_1B6220784();
          sub_1B6173BE0(v66, v67);
          v214 = Array<A>.contains(_:)(v65, v228.n128_f64[0], v229.n128_f64[0]);

          sub_1B6173C28(v66, v67);
          sub_1B615206C(v71);
          sub_1B602724C(&v255, &qword_1EB9266D0);
          sub_1B615206C(v63);
          sub_1B602724C(&v259, &qword_1EB9266D0);
          a6.n128_u64[0] = v228.n128_u64[0];
          a5.n128_u64[0] = v229.n128_u64[0];
          v9 = v219;
          v10 = v70;
          if (v214)
          {
            return 1;
          }

          goto LABEL_3;
        case 2:
          v54 = *((*(&v256 + 1) & 0x3FFFFFFFFFFFFFFFLL) + 0x20);
          v251 = *((*(&v256 + 1) & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
          v252 = v54;
          v55 = *((*(&v256 + 1) & 0x3FFFFFFFFFFFFFFFLL) + 0x40);
          v253 = *((*(&v256 + 1) & 0x3FFFFFFFFFFFFFFFLL) + 0x30);
          v254 = v55;
          if (!v252 || *(v252 + 16) == 4 && (v56 = *(v252 + 32), v57 = vuzp1_s16(*&v56.f64[0], vmovn_s64(vcgeq_f64(*(v252 + 48), v224))), *&v56.f64[0] = vmovn_s64(vcgeq_f64(v224, v56)), LODWORD(v56.f64[0]) = vuzp1_s16(*&v56.f64[0], *&v56.f64[0]).u32[0], HIDWORD(v56.f64[0]) = v57.i32[1], (vminv_u16(*&v56.f64[0]))) && (v58 = *(&v252 + 1), (~*(&v252 + 1) & 0xF000000000000007) != 0))
          {
            v227 = v10;
            switch(*(&v252 + 1) >> 62)
            {
              case 1:
                v220 = v9;
                v88 = *((*(&v252 + 1) & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
                v76 = *((*(&v252 + 1) & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
                v89 = *((*(&v252 + 1) & 0x3FFFFFFFFFFFFFFFLL) + 0x20);
                v90 = *((*(&v252 + 1) & 0x3FFFFFFFFFFFFFFFLL) + 0x28);
                if (!v88 || *(v88 + 16) == 4 && (v91 = *(v88 + 32), v92 = vuzp1_s16(*&v91.f64[0], vmovn_s64(vcgeq_f64(*(v88 + 48), v224))), *&v91.f64[0] = vmovn_s64(vcgeq_f64(v224, v91)), LODWORD(v91.f64[0]) = vuzp1_s16(*&v91.f64[0], *&v91.f64[0]).u32[0], HIDWORD(v91.f64[0]) = v92.i32[1], (vminv_u16(*&v91.f64[0]) & 1) != 0))
                {
                  v93 = *(&v260 + 1);
                  if (v76)
                  {
                    v209 = *(&v252 + 1);
                    v99 = *(&v256 + 1);
                    v201 = *(&v256 + 1);
                    sub_1B60C99C4(&v259, &v247, &qword_1EB9266D0);
                    sub_1B615243C(v93);
                    sub_1B60C99C4(&v255, &v247, &qword_1EB9266D0);
                    sub_1B615243C(v99);
                    sub_1B60C99C4(&v251, &v247, &qword_1EB9266D0);
                    sub_1B615243C(v209);
                    sub_1B6220784();
                    sub_1B6220784();
                    sub_1B6173BE0(v89, v90);
                    LOBYTE(v76) = Array<A>.contains(_:)(v76, v228.n128_f64[0], v229.n128_f64[0]);

                    sub_1B6173C28(v89, v90);
                    sub_1B615206C(v209);
                    sub_1B602724C(&v251, &qword_1EB9266D0);
                    sub_1B615206C(v201);
                  }

                  else
                  {
                    sub_1B60C99C4(&v259, &v247, &qword_1EB9266D0);
                    sub_1B615243C(v93);
                    sub_1B60C99C4(&v255, &v247, &qword_1EB9266D0);
                  }
                }

                else
                {
                  v93 = *(&v260 + 1);
                  sub_1B60C99C4(&v259, &v247, &qword_1EB9266D0);
                  sub_1B615243C(v93);
                  sub_1B60C99C4(&v255, &v247, &qword_1EB9266D0);
                  LOBYTE(v76) = 0;
                }

                v9 = v220;
                sub_1B602724C(&v255, &qword_1EB9266D0);
                v87 = v93;
                goto LABEL_114;
              case 2:
                v78 = *((*(&v252 + 1) & 0x3FFFFFFFFFFFFFFFLL) + 0x20);
                v247 = *((*(&v252 + 1) & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
                v248 = v78;
                v79 = *((*(&v252 + 1) & 0x3FFFFFFFFFFFFFFFLL) + 0x40);
                v249 = *((*(&v252 + 1) & 0x3FFFFFFFFFFFFFFFLL) + 0x30);
                v250 = v79;
                if (!v248 || *(v248 + 16) == 4 && (v80 = *(v248 + 32), v81 = vuzp1_s16(*&v80.f64[0], vmovn_s64(vcgeq_f64(*(v248 + 48), v224))), *&v80.f64[0] = vmovn_s64(vcgeq_f64(v224, v80)), LODWORD(v80.f64[0]) = vuzp1_s16(*&v80.f64[0], *&v80.f64[0]).u32[0], HIDWORD(v80.f64[0]) = v81.i32[1], (vminv_u16(*&v80.f64[0]))) && (~*(&v248 + 1) & 0xF000000000000007) != 0)
                {
                  switch(*(&v248 + 1) >> 62)
                  {
                    case 1:
                      v113 = *(&v252 + 1);
                      v114 = *(&v256 + 1);
                      v217 = *(&v260 + 1);
                      v222 = v9;
                      v116 = *((*(&v248 + 1) & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
                      v115 = *((*(&v248 + 1) & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
                      v76 = *((*(&v248 + 1) & 0x3FFFFFFFFFFFFFFFLL) + 0x20);
                      if (!v116 || *(v116 + 16) == 4 && (v117 = *(v116 + 32), v118 = vuzp1_s16(*&v117.f64[0], vmovn_s64(vcgeq_f64(*(v116 + 48), v224))), *&v117.f64[0] = vmovn_s64(vcgeq_f64(v224, v117)), LODWORD(v117.f64[0]) = vuzp1_s16(*&v117.f64[0], *&v117.f64[0]).u32[0], HIDWORD(v117.f64[0]) = v118.i32[1], (vminv_u16(*&v117.f64[0]))) && (v199 = *((*(&v248 + 1) & 0x3FFFFFFFFFFFFFFFLL) + 0x28), v205 = *(&v248 + 1), v115))
                      {
                        sub_1B60C99C4(&v259, &v243, &qword_1EB9266D0);
                        sub_1B615243C(v217);
                        sub_1B60C99C4(&v255, &v243, &qword_1EB9266D0);
                        sub_1B615243C(v114);
                        sub_1B60C99C4(&v251, &v243, &qword_1EB9266D0);
                        sub_1B615243C(v113);
                        sub_1B60C99C4(&v247, &v243, &qword_1EB9266D0);
                        sub_1B615243C(v205);
                        sub_1B6220784();
                        sub_1B6220784();
                        sub_1B6173BE0(v76, v199);
                        v119 = v76;
                        LOBYTE(v76) = Array<A>.contains(_:)(v115, v228.n128_f64[0], v229.n128_f64[0]);

                        sub_1B6173C28(v119, v199);
                        sub_1B615206C(v205);
                        sub_1B602724C(&v247, &qword_1EB9266D0);
                        sub_1B615206C(v113);
                      }

                      else
                      {
                        sub_1B60C99C4(&v259, &v243, &qword_1EB9266D0);
                        sub_1B615243C(v217);
                        sub_1B60C99C4(&v255, &v243, &qword_1EB9266D0);
                        sub_1B615243C(v114);
                        sub_1B60C99C4(&v251, &v243, &qword_1EB9266D0);
                        LOBYTE(v76) = 0;
                      }

                      sub_1B602724C(&v251, &qword_1EB9266D0);
                      sub_1B615206C(v114);
                      v82 = v217;
                      v9 = v222;
                      break;
                    case 2:
                      v211 = *(&v252 + 1);
                      v216 = *(&v260 + 1);
                      v100 = *(&v256 + 1);
                      v106 = *((*(&v248 + 1) & 0x3FFFFFFFFFFFFFFFLL) + 0x20);
                      v243 = *((*(&v248 + 1) & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
                      v244 = v106;
                      v107 = *((*(&v248 + 1) & 0x3FFFFFFFFFFFFFFFLL) + 0x40);
                      v245 = *((*(&v248 + 1) & 0x3FFFFFFFFFFFFFFFLL) + 0x30);
                      v246 = v107;
                      if (v244)
                      {
                        if (*(v244 + 16) != 4 || (v108 = *(v244 + 32), v109 = vuzp1_s16(*&v108.f64[0], vmovn_s64(vcgeq_f64(*(v244 + 48), v224))), *&v108.f64[0] = vmovn_s64(vcgeq_f64(v224, v108)), LODWORD(v108.f64[0]) = vuzp1_s16(*&v108.f64[0], *&v108.f64[0]).u32[0], HIDWORD(v108.f64[0]) = v109.i32[1], (vminv_u16(*&v108.f64[0]) & 1) == 0))
                        {
                          sub_1B60C99C4(&v259, &v239, &qword_1EB9266D0);
                          sub_1B615243C(v216);
                          sub_1B60C99C4(&v255, &v239, &qword_1EB9266D0);
                          sub_1B615243C(v100);
                          v105 = &v239;
                          goto LABEL_122;
                        }
                      }

                      v206 = *(&v248 + 1);
                      v223 = v9;
                      v200 = *(&v244 + 1);
                      if ((~*(&v244 + 1) & 0xF000000000000007) == 0)
                      {
                        sub_1B60C99C4(&v259, &v239, &qword_1EB9266D0);
                        sub_1B615243C(v216);
                        sub_1B60C99C4(&v255, &v239, &qword_1EB9266D0);
                        sub_1B615243C(v100);
                        v122 = &v239;
                        goto LABEL_150;
                      }

                      switch(*(&v244 + 1) >> 62)
                      {
                        case 1:
                          v143 = *((*(&v244 + 1) & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
                          v142 = *((*(&v244 + 1) & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
                          v144 = *((*(&v244 + 1) & 0x3FFFFFFFFFFFFFFFLL) + 0x28);
                          v198 = *((*(&v244 + 1) & 0x3FFFFFFFFFFFFFFFLL) + 0x20);
                          if (v143)
                          {
                            if (*(v143 + 16) != 4)
                            {
                              goto LABEL_176;
                            }

                            v145 = *(v143 + 32);
                            v146 = vuzp1_s16(*&v145.f64[0], vmovn_s64(vcgeq_f64(*(v143 + 48), v224)));
                            *&v145.f64[0] = vmovn_s64(vcgeq_f64(v224, v145));
                            LODWORD(v145.f64[0]) = vuzp1_s16(*&v145.f64[0], *&v145.f64[0]).u32[0];
                            HIDWORD(v145.f64[0]) = v146.i32[1];
                            if ((vminv_u16(*&v145.f64[0]) & 1) == 0)
                            {
                              goto LABEL_176;
                            }
                          }

                          if (!v142)
                          {
                            goto LABEL_176;
                          }

                          sub_1B60C99C4(&v259, &v239, &qword_1EB9266D0);
                          sub_1B615243C(v216);
                          sub_1B60C99C4(&v255, &v239, &qword_1EB9266D0);
                          sub_1B615243C(v100);
                          sub_1B60C99C4(&v251, &v239, &qword_1EB9266D0);
                          sub_1B615243C(v211);
                          sub_1B60C99C4(&v247, &v239, &qword_1EB9266D0);
                          sub_1B615243C(v206);
                          sub_1B60C99C4(&v243, &v239, &qword_1EB9266D0);
                          v147 = v200;
                          sub_1B615243C(v200);
                          sub_1B6220784();
                          sub_1B6220784();
                          sub_1B6173BE0(v198, v144);
                          LOBYTE(v76) = Array<A>.contains(_:)(v142, v228.n128_f64[0], v229.n128_f64[0]);

                          sub_1B6173C28(v198, v144);
                          goto LABEL_174;
                        case 2:
                          v133 = *((*(&v244 + 1) & 0x3FFFFFFFFFFFFFFFLL) + 0x20);
                          v239 = *((*(&v244 + 1) & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
                          v240 = v133;
                          v134 = *((*(&v244 + 1) & 0x3FFFFFFFFFFFFFFFLL) + 0x40);
                          v241 = *((*(&v244 + 1) & 0x3FFFFFFFFFFFFFFFLL) + 0x30);
                          v242 = v134;
                          if (v240 && (*(v240 + 16) != 4 || (v135 = *(v240 + 32), v136 = vuzp1_s16(*&v135.f64[0], vmovn_s64(vcgeq_f64(*(v240 + 48), v224))), *&v135.f64[0] = vmovn_s64(vcgeq_f64(v224, v135)), LODWORD(v135.f64[0]) = vuzp1_s16(*&v135.f64[0], *&v135.f64[0]).u32[0], HIDWORD(v135.f64[0]) = v136.i32[1], (vminv_u16(*&v135.f64[0]) & 1) == 0)) || (v137 = *(&v240 + 1), (~*(&v240 + 1) & 0xF000000000000007) == 0))
                          {
                            sub_1B60C99C4(&v259, &v235, &qword_1EB9266D0);
                            sub_1B615243C(v216);
                            sub_1B60C99C4(&v255, &v235, &qword_1EB9266D0);
                            sub_1B615243C(v100);
                            sub_1B60C99C4(&v251, &v235, &qword_1EB9266D0);
                            sub_1B615243C(v211);
                            v138 = &v235;
                            goto LABEL_177;
                          }

                          switch(*(&v240 + 1) >> 62)
                          {
                            case 1:
                              v165 = *((*(&v240 + 1) & 0x3FFFFFFFFFFFFFFFLL) + 0x20);
                              v272[0] = *((*(&v240 + 1) & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
                              v272[1] = v165;
                              v272[2] = *((*(&v240 + 1) & 0x3FFFFFFFFFFFFFFFLL) + 0x30);
                              sub_1B60C99C4(&v259, &v235, &qword_1EB9266D0);
                              sub_1B615243C(v216);
                              sub_1B60C99C4(&v255, &v235, &qword_1EB9266D0);
                              sub_1B615243C(v100);
                              sub_1B60C99C4(&v251, &v235, &qword_1EB9266D0);
                              sub_1B615243C(v211);
                              sub_1B60C99C4(&v247, &v235, &qword_1EB9266D0);
                              v155 = v206;
                              sub_1B615243C(v206);
                              sub_1B60C99C4(&v243, &v235, &qword_1EB9266D0);
                              v156 = v200;
                              sub_1B615243C(v200);
                              sub_1B60C99C4(&v239, &v235, &qword_1EB9266D0);
                              sub_1B615243C(v137);
                              v157 = &qword_1EB9266D8;
                              sub_1B60C99C4(v272, &v235, &qword_1EB9266D8);
                              LOBYTE(v76) = sub_1B617387C(Array<A>.contains(_:), v228.n128_u64[0], v229.n128_f64[0]);
                              v158 = v272;
                              goto LABEL_200;
                            case 2:
                              v160 = *((*(&v240 + 1) & 0x3FFFFFFFFFFFFFFFLL) + 0x20);
                              v235 = *((*(&v240 + 1) & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
                              v236 = v160;
                              v161 = *((*(&v240 + 1) & 0x3FFFFFFFFFFFFFFFLL) + 0x40);
                              v237 = *((*(&v240 + 1) & 0x3FFFFFFFFFFFFFFFLL) + 0x30);
                              v238 = v161;
                              if (v236 && (*(v236 + 16) != 4 || (v162 = *(v236 + 32), v163 = vuzp1_s16(*&v162.f64[0], vmovn_s64(vcgeq_f64(*(v236 + 48), v224))), *&v162.f64[0] = vmovn_s64(vcgeq_f64(v224, v162)), LODWORD(v162.f64[0]) = vuzp1_s16(*&v162.f64[0], *&v162.f64[0]).u32[0], HIDWORD(v162.f64[0]) = v163.i32[1], (vminv_u16(*&v162.f64[0]) & 1) == 0)) || (v164 = *(&v236 + 1), (~*(&v236 + 1) & 0xF000000000000007) == 0))
                              {
                                sub_1B60C99C4(&v259, &v231, &qword_1EB9266D0);
                                sub_1B615243C(v216);
                                sub_1B60C99C4(&v255, &v231, &qword_1EB9266D0);
                                sub_1B615243C(v100);
                                sub_1B60C99C4(&v251, &v231, &qword_1EB9266D0);
                                sub_1B615243C(v211);
                                sub_1B60C99C4(&v247, &v231, &qword_1EB9266D0);
                                sub_1B615243C(v206);
                                v159 = &v231;
                                goto LABEL_196;
                              }

                              switch(*(&v236 + 1) >> 62)
                              {
                                case 1:
                                  v177 = *((*(&v236 + 1) & 0x3FFFFFFFFFFFFFFFLL) + 0x20);
                                  v269[0] = *((*(&v236 + 1) & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
                                  v269[1] = v177;
                                  v269[2] = *((*(&v236 + 1) & 0x3FFFFFFFFFFFFFFFLL) + 0x30);
                                  sub_1B60C99C4(&v259, &v231, &qword_1EB9266D0);
                                  sub_1B615243C(v216);
                                  sub_1B60C99C4(&v255, &v231, &qword_1EB9266D0);
                                  sub_1B615243C(v100);
                                  sub_1B60C99C4(&v251, &v231, &qword_1EB9266D0);
                                  sub_1B615243C(v211);
                                  sub_1B60C99C4(&v247, &v231, &qword_1EB9266D0);
                                  sub_1B615243C(v206);
                                  sub_1B60C99C4(&v243, &v231, &qword_1EB9266D0);
                                  v147 = v200;
                                  sub_1B615243C(v200);
                                  sub_1B60C99C4(&v239, &v231, &qword_1EB9266D0);
                                  sub_1B615243C(v137);
                                  sub_1B60C99C4(&v235, &v231, &qword_1EB9266D0);
                                  sub_1B615243C(v164);
                                  v175 = &qword_1EB9266D8;
                                  sub_1B60C99C4(v269, &v231, &qword_1EB9266D8);
                                  LOBYTE(v76) = sub_1B617387C(Array<A>.contains(_:), v228.n128_u64[0], v229.n128_f64[0]);
                                  v176 = v269;
                                  goto LABEL_224;
                                case 2:
                                  v178 = *((*(&v236 + 1) & 0x3FFFFFFFFFFFFFFFLL) + 0x20);
                                  v231 = *((*(&v236 + 1) & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
                                  v232 = v178;
                                  v179 = *((*(&v236 + 1) & 0x3FFFFFFFFFFFFFFFLL) + 0x40);
                                  v233 = *((*(&v236 + 1) & 0x3FFFFFFFFFFFFFFFLL) + 0x30);
                                  v234 = v179;
                                  if (!v232 || *(v232 + 16) == 4 && (v180 = *(v232 + 32), v181 = vuzp1_s16(*&v180.f64[0], vmovn_s64(vcgeq_f64(*(v232 + 48), v224))), *&v180.f64[0] = vmovn_s64(vcgeq_f64(v224, v180)), LODWORD(v180.f64[0]) = vuzp1_s16(*&v180.f64[0], *&v180.f64[0]).u32[0], HIDWORD(v180.f64[0]) = v181.i32[1], (vminv_u16(*&v180.f64[0]))) && (v182 = *(&v232 + 1), (~*(&v232 + 1) & 0xF000000000000007) != 0))
                                  {
                                    switch(*(&v232 + 1) >> 62)
                                    {
                                      case 1:
                                        v188 = *((*(&v232 + 1) & 0x3FFFFFFFFFFFFFFFLL) + 0x20);
                                        v266[0] = *((*(&v232 + 1) & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
                                        v266[1] = v188;
                                        v266[2] = *((*(&v232 + 1) & 0x3FFFFFFFFFFFFFFFLL) + 0x30);
                                        sub_1B60C99C4(&v259, v230, &qword_1EB9266D0);
                                        sub_1B615243C(v216);
                                        sub_1B60C99C4(&v255, v230, &qword_1EB9266D0);
                                        sub_1B615243C(v100);
                                        sub_1B60C99C4(&v251, v230, &qword_1EB9266D0);
                                        sub_1B615243C(v211);
                                        sub_1B60C99C4(&v247, v230, &qword_1EB9266D0);
                                        sub_1B615243C(v206);
                                        sub_1B60C99C4(&v243, v230, &qword_1EB9266D0);
                                        sub_1B615243C(v200);
                                        sub_1B60C99C4(&v239, v230, &qword_1EB9266D0);
                                        sub_1B615243C(v137);
                                        sub_1B60C99C4(&v235, v230, &qword_1EB9266D0);
                                        sub_1B615243C(v164);
                                        sub_1B60C99C4(&v231, v230, &qword_1EB9266D0);
                                        sub_1B615243C(v182);
                                        v186 = &qword_1EB9266D8;
                                        sub_1B60C99C4(v266, v230, &qword_1EB9266D8);
                                        LOBYTE(v76) = sub_1B617387C(Array<A>.contains(_:), v228.n128_u64[0], v229.n128_f64[0]);
                                        v187 = v266;
                                        goto LABEL_230;
                                      case 2:
                                        v189 = *((*(&v232 + 1) & 0x3FFFFFFFFFFFFFFFLL) + 0x20);
                                        v263[0] = *((*(&v232 + 1) & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
                                        v263[1] = v189;
                                        v190 = *((*(&v232 + 1) & 0x3FFFFFFFFFFFFFFFLL) + 0x40);
                                        v263[2] = *((*(&v232 + 1) & 0x3FFFFFFFFFFFFFFFLL) + 0x30);
                                        v263[3] = v190;
                                        sub_1B60C99C4(&v259, v230, &qword_1EB9266D0);
                                        sub_1B615243C(v216);
                                        sub_1B60C99C4(&v255, v230, &qword_1EB9266D0);
                                        sub_1B615243C(v100);
                                        sub_1B60C99C4(&v251, v230, &qword_1EB9266D0);
                                        sub_1B615243C(v211);
                                        sub_1B60C99C4(&v247, v230, &qword_1EB9266D0);
                                        sub_1B615243C(v206);
                                        sub_1B60C99C4(&v243, v230, &qword_1EB9266D0);
                                        sub_1B615243C(v200);
                                        sub_1B60C99C4(&v239, v230, &qword_1EB9266D0);
                                        sub_1B615243C(v137);
                                        sub_1B60C99C4(&v235, v230, &qword_1EB9266D0);
                                        sub_1B615243C(v164);
                                        sub_1B60C99C4(&v231, v230, &qword_1EB9266D0);
                                        sub_1B615243C(v182);
                                        v191 = sub_1B60C99C4(v263, v230, &qword_1EB9266D0);
                                        LOBYTE(v76) = sub_1B6170698(v191, v228, v229);
                                        v187 = v263;
                                        v192 = &qword_1EB9266D0;
                                        goto LABEL_231;
                                      case 3:
                                        v193 = *((*(&v232 + 1) & 0x3FFFFFFFFFFFFFFFLL) + 0x20);
                                        v264[0] = *((*(&v232 + 1) & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
                                        v264[1] = v193;
                                        v264[2] = *((*(&v232 + 1) & 0x3FFFFFFFFFFFFFFFLL) + 0x30);
                                        sub_1B60C99C4(&v259, v230, &qword_1EB9266D0);
                                        sub_1B615243C(v216);
                                        sub_1B60C99C4(&v255, v230, &qword_1EB9266D0);
                                        sub_1B615243C(v100);
                                        sub_1B60C99C4(&v251, v230, &qword_1EB9266D0);
                                        sub_1B615243C(v211);
                                        sub_1B60C99C4(&v247, v230, &qword_1EB9266D0);
                                        sub_1B615243C(v206);
                                        sub_1B60C99C4(&v243, v230, &qword_1EB9266D0);
                                        sub_1B615243C(v200);
                                        sub_1B60C99C4(&v239, v230, &qword_1EB9266D0);
                                        sub_1B615243C(v137);
                                        sub_1B60C99C4(&v235, v230, &qword_1EB9266D0);
                                        sub_1B615243C(v164);
                                        sub_1B60C99C4(&v231, v230, &qword_1EB9266D0);
                                        sub_1B615243C(v182);
                                        v186 = &qword_1EB9266E8;
                                        v194 = sub_1B60C99C4(v264, v230, &qword_1EB9266E8);
                                        LOBYTE(v76) = sub_1B6170744(v194, v228, v229);
                                        v187 = v264;
                                        goto LABEL_230;
                                      default:
                                        v185 = *(*(&v232 + 1) + 32);
                                        v265[0] = *(*(&v232 + 1) + 16);
                                        v265[1] = v185;
                                        v265[2] = *(*(&v232 + 1) + 48);
                                        sub_1B60C99C4(&v259, v230, &qword_1EB9266D0);
                                        sub_1B615243C(v216);
                                        sub_1B60C99C4(&v255, v230, &qword_1EB9266D0);
                                        sub_1B615243C(v100);
                                        sub_1B60C99C4(&v251, v230, &qword_1EB9266D0);
                                        sub_1B615243C(v211);
                                        sub_1B60C99C4(&v247, v230, &qword_1EB9266D0);
                                        sub_1B615243C(v206);
                                        sub_1B60C99C4(&v243, v230, &qword_1EB9266D0);
                                        sub_1B615243C(v200);
                                        sub_1B60C99C4(&v239, v230, &qword_1EB9266D0);
                                        sub_1B615243C(v137);
                                        sub_1B60C99C4(&v235, v230, &qword_1EB9266D0);
                                        sub_1B615243C(v164);
                                        sub_1B60C99C4(&v231, v230, &qword_1EB9266D0);
                                        sub_1B615243C(v182);
                                        v186 = &qword_1EB9266E0;
                                        sub_1B60C99C4(v265, v230, &qword_1EB9266E0);
                                        LOBYTE(v76) = sub_1B617387C(Array<A>.contains(_:), v228.n128_u64[0], v229.n128_f64[0]);
                                        v187 = v265;
LABEL_230:
                                        v192 = v186;
LABEL_231:
                                        sub_1B602724C(v187, v192);
                                        sub_1B615206C(v182);
                                        sub_1B602724C(&v231, &qword_1EB9266D0);
                                        sub_1B615206C(v164);
                                        sub_1B602724C(&v235, &qword_1EB9266D0);
                                        sub_1B615206C(v137);
                                        break;
                                    }
                                  }

                                  else
                                  {
                                    sub_1B60C99C4(&v259, v230, &qword_1EB9266D0);
                                    sub_1B615243C(v216);
                                    sub_1B60C99C4(&v255, v230, &qword_1EB9266D0);
                                    sub_1B615243C(v100);
                                    sub_1B60C99C4(&v251, v230, &qword_1EB9266D0);
                                    sub_1B615243C(v211);
                                    sub_1B60C99C4(&v247, v230, &qword_1EB9266D0);
                                    sub_1B615243C(v206);
                                    sub_1B60C99C4(&v243, v230, &qword_1EB9266D0);
                                    sub_1B615243C(v200);
                                    sub_1B60C99C4(&v239, v230, &qword_1EB9266D0);
                                    LOBYTE(v76) = 0;
                                  }

                                  sub_1B602724C(&v239, &qword_1EB9266D0);
                                  v148 = v200;
                                  goto LABEL_175;
                                case 3:
                                  v183 = *((*(&v236 + 1) & 0x3FFFFFFFFFFFFFFFLL) + 0x20);
                                  v267[0] = *((*(&v236 + 1) & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
                                  v267[1] = v183;
                                  v267[2] = *((*(&v236 + 1) & 0x3FFFFFFFFFFFFFFFLL) + 0x30);
                                  sub_1B60C99C4(&v259, &v231, &qword_1EB9266D0);
                                  sub_1B615243C(v216);
                                  sub_1B60C99C4(&v255, &v231, &qword_1EB9266D0);
                                  sub_1B615243C(v100);
                                  sub_1B60C99C4(&v251, &v231, &qword_1EB9266D0);
                                  sub_1B615243C(v211);
                                  sub_1B60C99C4(&v247, &v231, &qword_1EB9266D0);
                                  sub_1B615243C(v206);
                                  sub_1B60C99C4(&v243, &v231, &qword_1EB9266D0);
                                  v147 = v200;
                                  sub_1B615243C(v200);
                                  sub_1B60C99C4(&v239, &v231, &qword_1EB9266D0);
                                  sub_1B615243C(v137);
                                  sub_1B60C99C4(&v235, &v231, &qword_1EB9266D0);
                                  sub_1B615243C(v164);
                                  v175 = &qword_1EB9266E8;
                                  v184 = sub_1B60C99C4(v267, &v231, &qword_1EB9266E8);
                                  LOBYTE(v76) = sub_1B6170744(v184, v228, v229);
                                  v176 = v267;
                                  goto LABEL_224;
                                default:
                                  v174 = *(*(&v236 + 1) + 32);
                                  v268[0] = *(*(&v236 + 1) + 16);
                                  v268[1] = v174;
                                  v268[2] = *(*(&v236 + 1) + 48);
                                  sub_1B60C99C4(&v259, &v231, &qword_1EB9266D0);
                                  sub_1B615243C(v216);
                                  sub_1B60C99C4(&v255, &v231, &qword_1EB9266D0);
                                  sub_1B615243C(v100);
                                  sub_1B60C99C4(&v251, &v231, &qword_1EB9266D0);
                                  sub_1B615243C(v211);
                                  sub_1B60C99C4(&v247, &v231, &qword_1EB9266D0);
                                  sub_1B615243C(v206);
                                  sub_1B60C99C4(&v243, &v231, &qword_1EB9266D0);
                                  v147 = v200;
                                  sub_1B615243C(v200);
                                  sub_1B60C99C4(&v239, &v231, &qword_1EB9266D0);
                                  sub_1B615243C(v137);
                                  sub_1B60C99C4(&v235, &v231, &qword_1EB9266D0);
                                  sub_1B615243C(v164);
                                  v175 = &qword_1EB9266E0;
                                  sub_1B60C99C4(v268, &v231, &qword_1EB9266E0);
                                  LOBYTE(v76) = sub_1B617387C(Array<A>.contains(_:), v228.n128_u64[0], v229.n128_f64[0]);
                                  v176 = v268;
LABEL_224:
                                  sub_1B602724C(v176, v175);
                                  sub_1B615206C(v164);
                                  sub_1B602724C(&v235, &qword_1EB9266D0);
                                  sub_1B615206C(v137);
                                  sub_1B602724C(&v239, &qword_1EB9266D0);
                                  break;
                              }

                              break;
                            case 3:
                              v166 = *((*(&v240 + 1) & 0x3FFFFFFFFFFFFFFFLL) + 0x20);
                              v270[0] = *((*(&v240 + 1) & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
                              v270[1] = v166;
                              v270[2] = *((*(&v240 + 1) & 0x3FFFFFFFFFFFFFFFLL) + 0x30);
                              sub_1B60C99C4(&v259, &v235, &qword_1EB9266D0);
                              sub_1B615243C(v216);
                              sub_1B60C99C4(&v255, &v235, &qword_1EB9266D0);
                              sub_1B615243C(v100);
                              sub_1B60C99C4(&v251, &v235, &qword_1EB9266D0);
                              sub_1B615243C(v211);
                              sub_1B60C99C4(&v247, &v235, &qword_1EB9266D0);
                              v155 = v206;
                              sub_1B615243C(v206);
                              sub_1B60C99C4(&v243, &v235, &qword_1EB9266D0);
                              v156 = v200;
                              sub_1B615243C(v200);
                              sub_1B60C99C4(&v239, &v235, &qword_1EB9266D0);
                              sub_1B615243C(v137);
                              v157 = &qword_1EB9266E8;
                              v167 = sub_1B60C99C4(v270, &v235, &qword_1EB9266E8);
                              LOBYTE(v76) = sub_1B6170744(v167, v228, v229);
                              v158 = v270;
                              goto LABEL_200;
                            default:
                              v154 = *(*(&v240 + 1) + 32);
                              v271[0] = *(*(&v240 + 1) + 16);
                              v271[1] = v154;
                              v271[2] = *(*(&v240 + 1) + 48);
                              sub_1B60C99C4(&v259, &v235, &qword_1EB9266D0);
                              sub_1B615243C(v216);
                              sub_1B60C99C4(&v255, &v235, &qword_1EB9266D0);
                              sub_1B615243C(v100);
                              sub_1B60C99C4(&v251, &v235, &qword_1EB9266D0);
                              sub_1B615243C(v211);
                              sub_1B60C99C4(&v247, &v235, &qword_1EB9266D0);
                              v155 = v206;
                              sub_1B615243C(v206);
                              sub_1B60C99C4(&v243, &v235, &qword_1EB9266D0);
                              v156 = v200;
                              sub_1B615243C(v200);
                              sub_1B60C99C4(&v239, &v235, &qword_1EB9266D0);
                              sub_1B615243C(v137);
                              v157 = &qword_1EB9266E0;
                              sub_1B60C99C4(v271, &v235, &qword_1EB9266E0);
                              LOBYTE(v76) = sub_1B617387C(Array<A>.contains(_:), v228.n128_u64[0], v229.n128_f64[0]);
                              v158 = v271;
LABEL_200:
                              sub_1B602724C(v158, v157);
                              sub_1B615206C(v137);
                              sub_1B602724C(&v239, &qword_1EB9266D0);
                              sub_1B615206C(v156);
                              sub_1B602724C(&v243, &qword_1EB9266D0);
                              v168 = v155;
                              goto LABEL_209;
                          }

LABEL_174:
                          v148 = v147;
LABEL_175:
                          sub_1B615206C(v148);
                          goto LABEL_208;
                        case 3:
                          v139 = *((*(&v244 + 1) & 0x3FFFFFFFFFFFFFFFLL) + 0x20);
                          v273[0] = *((*(&v244 + 1) & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
                          v273[1] = v139;
                          v273[2] = *((*(&v244 + 1) & 0x3FFFFFFFFFFFFFFFLL) + 0x30);
                          sub_1B60C99C4(&v259, &v239, &qword_1EB9266D0);
                          sub_1B615243C(v216);
                          sub_1B60C99C4(&v255, &v239, &qword_1EB9266D0);
                          sub_1B615243C(v100);
                          sub_1B60C99C4(&v251, &v239, &qword_1EB9266D0);
                          sub_1B615243C(v211);
                          sub_1B60C99C4(&v247, &v239, &qword_1EB9266D0);
                          sub_1B615243C(v206);
                          sub_1B60C99C4(&v243, &v239, &qword_1EB9266D0);
                          sub_1B615243C(v200);
                          v140 = sub_1B60C99C4(v273, &v239, &qword_1EB9266E8);
                          LOBYTE(v76) = sub_1B6170744(v140, v228, v229);
                          sub_1B602724C(v273, &qword_1EB9266E8);
                          sub_1B615206C(v200);
                          sub_1B602724C(&v243, &qword_1EB9266D0);
                          sub_1B615206C(v206);
                          sub_1B602724C(&v247, &qword_1EB9266D0);
                          v141 = v211;
                          goto LABEL_211;
                        default:
                          v126 = *(*(&v244 + 1) + 16);
                          v127 = *(*(&v244 + 1) + 24);
                          v196 = *(*(&v244 + 1) + 32);
                          if (!v126 || *(v126 + 16) == 4 && (v128 = *(v126 + 32), v129 = vuzp1_s16(*&v128.f64[0], vmovn_s64(vcgeq_f64(*(v126 + 48), v224))), *&v128.f64[0] = vmovn_s64(vcgeq_f64(v224, v128)), LODWORD(v128.f64[0]) = vuzp1_s16(*&v128.f64[0], *&v128.f64[0]).u32[0], HIDWORD(v128.f64[0]) = v129.i32[1], (vminv_u16(*&v128.f64[0]) & 1) != 0))
                          {
                            if (v127)
                            {
                              v130 = *(v127 + 16);
                              if (!v130)
                              {
                                sub_1B60C99C4(&v259, &v239, &qword_1EB9266D0);
                                sub_1B615243C(v216);
                                sub_1B60C99C4(&v255, &v239, &qword_1EB9266D0);
                                sub_1B615243C(v100);
                                sub_1B60C99C4(&v251, &v239, &qword_1EB9266D0);
                                sub_1B615243C(v211);
                                sub_1B60C99C4(&v247, &v239, &qword_1EB9266D0);
                                sub_1B615243C(v206);
                                v159 = &v239;
LABEL_196:
                                sub_1B60C99C4(&v243, v159, &qword_1EB9266D0);
                                goto LABEL_197;
                              }

                              sub_1B60C99C4(&v259, &v239, &qword_1EB9266D0);
                              sub_1B615243C(v216);
                              sub_1B60C99C4(&v255, &v239, &qword_1EB9266D0);
                              sub_1B615243C(v100);
                              sub_1B60C99C4(&v251, &v239, &qword_1EB9266D0);
                              sub_1B615243C(v211);
                              sub_1B60C99C4(&v247, &v239, &qword_1EB9266D0);
                              sub_1B615243C(v206);
                              sub_1B60C99C4(&v243, &v239, &qword_1EB9266D0);
                              sub_1B615243C(v200);
                              sub_1B6220784();
                              sub_1B6220784();
                              sub_1B6173BE0(v196, *(&v196 + 1));
                              v131 = sub_1B6220784();
                              v132 = sub_1B60F7978(v131, v228.n128_f64[0], v229.n128_f64[0]);

                              if ((v132 & 1) == 0)
                              {

                                goto LABEL_190;
                              }

                              if (v130 == 1)
                              {
                              }

                              else
                              {
                                result = sub_1B60F7D94(1, v130, v127);
                                v170 = v169;
                                v172 = v171 >> 1;
                                while (v172 != v170)
                                {
                                  if (v170 >= v172)
                                  {
                                    goto LABEL_245;
                                  }

                                  v173 = sub_1B6220784();
                                  if (sub_1B60F7978(v173, v228.n128_f64[0], v229.n128_f64[0]))
                                  {

                                    swift_unknownObjectRelease();
LABEL_190:
                                    sub_1B6173C28(v196, *(&v196 + 1));
                                    sub_1B615206C(v200);
LABEL_197:
                                    LOBYTE(v76) = 0;
LABEL_208:
                                    sub_1B602724C(&v243, &qword_1EB9266D0);
                                    v168 = v206;
LABEL_209:
                                    sub_1B615206C(v168);
                                    goto LABEL_210;
                                  }

                                  ++v170;
                                }

                                swift_unknownObjectRelease();
                              }

                              sub_1B6173C28(v196, *(&v196 + 1));
                              sub_1B615206C(v200);
                              LOBYTE(v76) = 1;
                              goto LABEL_208;
                            }
                          }

LABEL_176:
                          sub_1B60C99C4(&v259, &v239, &qword_1EB9266D0);
                          sub_1B615243C(v216);
                          sub_1B60C99C4(&v255, &v239, &qword_1EB9266D0);
                          sub_1B615243C(v100);
                          sub_1B60C99C4(&v251, &v239, &qword_1EB9266D0);
                          sub_1B615243C(v211);
                          v138 = &v239;
LABEL_177:
                          sub_1B60C99C4(&v247, v138, &qword_1EB9266D0);
                          LOBYTE(v76) = 0;
LABEL_210:
                          sub_1B602724C(&v247, &qword_1EB9266D0);
                          v141 = v211;
LABEL_211:
                          sub_1B615206C(v141);
                          break;
                      }

                      goto LABEL_212;
                    case 3:
                      v110 = *((*(&v248 + 1) & 0x3FFFFFFFFFFFFFFFLL) + 0x20);
                      v274[0] = *((*(&v248 + 1) & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
                      v274[1] = v110;
                      v274[2] = *((*(&v248 + 1) & 0x3FFFFFFFFFFFFFFFLL) + 0x30);
                      v76 = *(&v256 + 1);
                      v202 = *(&v256 + 1);
                      v111 = *(&v248 + 1);
                      v82 = *(&v260 + 1);
                      sub_1B60C99C4(&v259, &v243, &qword_1EB9266D0);
                      sub_1B615243C(v82);
                      sub_1B60C99C4(&v255, &v243, &qword_1EB9266D0);
                      sub_1B615243C(v76);
                      sub_1B60C99C4(&v251, &v243, &qword_1EB9266D0);
                      sub_1B615243C(v58);
                      sub_1B60C99C4(&v247, &v243, &qword_1EB9266D0);
                      sub_1B615243C(v111);
                      v112 = sub_1B60C99C4(v274, &v243, &qword_1EB9266E8);
                      LOBYTE(v76) = sub_1B6170744(v112, v228, v229);
                      sub_1B602724C(v274, &qword_1EB9266E8);
                      sub_1B615206C(v111);
                      sub_1B602724C(&v247, &qword_1EB9266D0);
                      sub_1B615206C(v58);
                      sub_1B602724C(&v251, &qword_1EB9266D0);
                      v86 = v202;
                      goto LABEL_91;
                    default:
                      v210 = *(&v252 + 1);
                      v216 = *(&v260 + 1);
                      v100 = *(&v256 + 1);
                      v101 = *(*(&v248 + 1) + 16);
                      v102 = *(*(&v248 + 1) + 24);
                      if (!v101 || *(v101 + 16) == 4 && (v103 = *(v101 + 32), v104 = vuzp1_s16(*&v103.f64[0], vmovn_s64(vcgeq_f64(*(v101 + 48), v224))), *&v103.f64[0] = vmovn_s64(vcgeq_f64(v224, v103)), LODWORD(v103.f64[0]) = vuzp1_s16(*&v103.f64[0], *&v103.f64[0]).u32[0], HIDWORD(v103.f64[0]) = v104.i32[1], (vminv_u16(*&v103.f64[0]) & 1) != 0))
                      {
                        v195 = *(*(&v248 + 1) + 32);
                        v207 = *(&v248 + 1);
                        v223 = v9;
                        if (!v102 || (v123 = *(v102 + 16)) == 0)
                        {
                          sub_1B60C99C4(&v259, &v243, &qword_1EB9266D0);
                          sub_1B615243C(v216);
                          sub_1B60C99C4(&v255, &v243, &qword_1EB9266D0);
                          sub_1B615243C(v100);
                          v122 = &v243;
LABEL_150:
                          sub_1B60C99C4(&v251, v122, &qword_1EB9266D0);
                          goto LABEL_151;
                        }

                        sub_1B60C99C4(&v259, &v243, &qword_1EB9266D0);
                        sub_1B615243C(v216);
                        sub_1B60C99C4(&v255, &v243, &qword_1EB9266D0);
                        sub_1B615243C(v100);
                        sub_1B60C99C4(&v251, &v243, &qword_1EB9266D0);
                        sub_1B615243C(v210);
                        sub_1B60C99C4(&v247, &v243, &qword_1EB9266D0);
                        sub_1B615243C(v207);
                        sub_1B6220784();
                        sub_1B6220784();
                        sub_1B6173BE0(v195, *(&v195 + 1));
                        v124 = sub_1B6220784();
                        v125 = sub_1B60F7978(v124, v228.n128_f64[0], v229.n128_f64[0]);

                        if ((v125 & 1) == 0)
                        {

                          goto LABEL_162;
                        }

                        if (v123 == 1)
                        {
                        }

                        else
                        {
                          result = sub_1B60F7D94(1, v123, v102);
                          v150 = v149;
                          v152 = v151 >> 1;
                          while (v152 != v150)
                          {
                            if (v150 >= v152)
                            {
                              goto LABEL_244;
                            }

                            v153 = sub_1B6220784();
                            if (sub_1B60F7978(v153, v228.n128_f64[0], v229.n128_f64[0]))
                            {

                              swift_unknownObjectRelease();
LABEL_162:
                              sub_1B6173C28(v195, *(&v195 + 1));
                              sub_1B615206C(v207);
                              sub_1B602724C(&v247, &qword_1EB9266D0);
                              sub_1B615206C(v210);
LABEL_151:
                              LOBYTE(v76) = 0;
LABEL_212:
                              v9 = v223;
                              goto LABEL_213;
                            }

                            ++v150;
                          }

                          swift_unknownObjectRelease();
                        }

                        sub_1B6173C28(v195, *(&v195 + 1));
                        sub_1B615206C(v207);
                        sub_1B602724C(&v247, &qword_1EB9266D0);
                        sub_1B615206C(v210);
                        LOBYTE(v76) = 1;
                        goto LABEL_212;
                      }

                      sub_1B60C99C4(&v259, &v243, &qword_1EB9266D0);
                      sub_1B615243C(v216);
                      sub_1B60C99C4(&v255, &v243, &qword_1EB9266D0);
                      sub_1B615243C(v100);
                      v105 = &v243;
LABEL_122:
                      sub_1B60C99C4(&v251, v105, &qword_1EB9266D0);
                      LOBYTE(v76) = 0;
LABEL_213:
                      sub_1B602724C(&v251, &qword_1EB9266D0);
                      sub_1B615206C(v100);
                      v82 = v216;
                      break;
                  }
                }

                else
                {
                  v82 = *(&v260 + 1);
                  sub_1B60C99C4(&v259, &v243, &qword_1EB9266D0);
                  sub_1B615243C(v82);
                  sub_1B60C99C4(&v255, &v243, &qword_1EB9266D0);
                  LOBYTE(v76) = 0;
                }

LABEL_92:
                sub_1B602724C(&v255, &qword_1EB9266D0);
                v87 = v82;
LABEL_114:
                sub_1B615206C(v87);
                goto LABEL_137;
              case 3:
                v83 = *((*(&v252 + 1) & 0x3FFFFFFFFFFFFFFFLL) + 0x20);
                v275[0] = *((*(&v252 + 1) & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
                v275[1] = v83;
                v275[2] = *((*(&v252 + 1) & 0x3FFFFFFFFFFFFFFFLL) + 0x30);
                v84 = *(&v256 + 1);
                v82 = *(&v260 + 1);
                sub_1B60C99C4(&v259, &v247, &qword_1EB9266D0);
                sub_1B615243C(v82);
                sub_1B60C99C4(&v255, &v247, &qword_1EB9266D0);
                sub_1B615243C(v84);
                sub_1B60C99C4(&v251, &v247, &qword_1EB9266D0);
                sub_1B615243C(v58);
                v85 = sub_1B60C99C4(v275, &v247, &qword_1EB9266E8);
                LOBYTE(v76) = sub_1B6170744(v85, v228, v229);
                sub_1B602724C(v275, &qword_1EB9266E8);
                sub_1B615206C(v58);
                sub_1B602724C(&v251, &qword_1EB9266D0);
                v86 = v84;
LABEL_91:
                sub_1B615206C(v86);
                goto LABEL_92;
              default:
                v73 = *(*(&v252 + 1) + 16);
                v72 = *(*(&v252 + 1) + 24);
                if (v73)
                {
                  if (*(v73 + 16) != 4 || (v74 = *(v73 + 32), v75 = vuzp1_s16(*&v74.f64[0], vmovn_s64(vcgeq_f64(*(v73 + 48), v224))), *&v74.f64[0] = vmovn_s64(vcgeq_f64(v224, v74)), LODWORD(v74.f64[0]) = vuzp1_s16(*&v74.f64[0], *&v74.f64[0]).u32[0], HIDWORD(v74.f64[0]) = v75.i32[1], (vminv_u16(*&v74.f64[0]) & 1) == 0))
                  {
                    v76 = *(&v260 + 1);
                    sub_1B60C99C4(&v259, &v247, &qword_1EB9266D0);
LABEL_83:
                    sub_1B615243C(v76);
                    sub_1B60C99C4(&v255, &v247, &qword_1EB9266D0);
                    LOBYTE(v72) = 0;
                    goto LABEL_136;
                  }
                }

                if (!v72)
                {
                  v76 = *(&v260 + 1);
                  sub_1B60C99C4(&v259, &v247, &qword_1EB9266D0);
                  sub_1B615243C(v76);
                  sub_1B60C99C4(&v255, &v247, &qword_1EB9266D0);
                  goto LABEL_136;
                }

                v215 = *(&v260 + 1);
                if (!*(v72 + 16))
                {
                  sub_1B60C99C4(&v259, &v247, &qword_1EB9266D0);
                  v76 = v215;
                  goto LABEL_83;
                }

                v197 = *(v72 + 16);
                v94 = *(&v252 + 1);
                v95 = *(&v256 + 1);
                v221 = *(*(&v252 + 1) + 32);
                v204 = *(*(&v252 + 1) + 40);
                sub_1B60C99C4(&v259, &v247, &qword_1EB9266D0);
                sub_1B615243C(v215);
                sub_1B60C99C4(&v255, &v247, &qword_1EB9266D0);
                sub_1B615243C(v95);
                sub_1B60C99C4(&v251, &v247, &qword_1EB9266D0);
                sub_1B615243C(v94);
                sub_1B6220784();
                sub_1B6220784();
                sub_1B6173BE0(v221, v204);
                v96 = sub_1B6220784();
                v97 = sub_1B60F7978(v96, v228.n128_f64[0], v229.n128_f64[0]);

                if ((v97 & 1) == 0)
                {

                  sub_1B6173C28(v221, v204);
                  sub_1B615206C(v94);
LABEL_117:
                  sub_1B602724C(&v251, &qword_1EB9266D0);
                  sub_1B615206C(v95);
                  LOBYTE(v72) = 0;
                  goto LABEL_135;
                }

                v98 = v197 - 1;
                if (v197 != 1)
                {
                  if (*(v72 + 16) < v197)
                  {
                    goto LABEL_243;
                  }

                  sub_1B6220784();
                  v120 = 40;
                  while (1)
                  {
                    v121 = sub_1B6220784();
                    if (sub_1B60F7978(v121, v228.n128_f64[0], v229.n128_f64[0]))
                    {
                      break;
                    }

                    v120 += 8;
                    if (!--v98)
                    {

                      swift_bridgeObjectRelease_n();
                      sub_1B6173C28(v221, v204);
                      sub_1B615206C(v94);
                      goto LABEL_134;
                    }
                  }

                  swift_bridgeObjectRelease_n();
                  sub_1B6173C28(v221, v204);
                  sub_1B615206C(v94);
                  goto LABEL_117;
                }

                sub_1B6173C28(v221, v204);
                sub_1B615206C(v94);
LABEL_134:
                sub_1B602724C(&v251, &qword_1EB9266D0);
                sub_1B615206C(v95);
                LOBYTE(v72) = 1;
LABEL_135:
                v76 = v215;
LABEL_136:
                sub_1B602724C(&v255, &qword_1EB9266D0);
                sub_1B615206C(v76);
                LOBYTE(v76) = v72;
LABEL_137:
                sub_1B602724C(&v259, &qword_1EB9266D0);
                a6.n128_u64[0] = v228.n128_u64[0];
                a5.n128_u64[0] = v229.n128_u64[0];
                v10 = v227;
                if (v76)
                {
                  return 1;
                }

                break;
            }
          }

          else
          {
            v59 = v10;
            sub_1B60C99C4(&v259, &v247, &qword_1EB9266D0);
            sub_1B602724C(&v259, &qword_1EB9266D0);
            a6.n128_u64[0] = v228.n128_u64[0];
            a5.n128_u64[0] = v229.n128_u64[0];
            v10 = v59;
          }

          goto LABEL_3;
        case 3:
          v60 = *((*(&v256 + 1) & 0x3FFFFFFFFFFFFFFFLL) + 0x20);
          v276[0] = *((*(&v256 + 1) & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
          v276[1] = v60;
          v276[2] = *((*(&v256 + 1) & 0x3FFFFFFFFFFFFFFFLL) + 0x30);
          v61 = *(&v256 + 1);
          v43 = *(&v260 + 1);
          v44 = v10;
          sub_1B60C99C4(&v259, &v251, &qword_1EB9266D0);
          sub_1B615243C(v43);
          sub_1B60C99C4(&v255, &v251, &qword_1EB9266D0);
          sub_1B615243C(v61);
          v62 = sub_1B60C99C4(v276, &v251, &qword_1EB9266E8);
          v46 = sub_1B6170744(v62, v228, v229);
          sub_1B602724C(v276, &qword_1EB9266E8);
          sub_1B615206C(v61);
          v47 = &v255;
          v48 = &qword_1EB9266D0;
          goto LABEL_48;
        default:
          v218 = v9;
          v31 = *(*(&v256 + 1) + 16);
          v30 = *(*(&v256 + 1) + 24);
          v225 = v10;
          if (!v31 || *(v31 + 16) == 4 && (v32 = *(v31 + 32), v33 = vuzp1_s16(*&v32.f64[0], vmovn_s64(vcgeq_f64(*(v31 + 48), v224))), *&v32.f64[0] = vmovn_s64(vcgeq_f64(v224, v32)), LODWORD(v32.f64[0]) = vuzp1_s16(*&v32.f64[0], *&v32.f64[0]).u32[0], HIDWORD(v32.f64[0]) = v33.i32[1], (vminv_u16(*&v32.f64[0]))) && v30 && (v213 = *(&v260 + 1), *(v30 + 16)))
          {
            v203 = *(v30 + 16);
            v208 = *(*(&v256 + 1) + 32);
            v34 = *(&v256 + 1);
            v35 = *(*(&v256 + 1) + 40);
            sub_1B60C99C4(&v259, &v251, &qword_1EB9266D0);
            sub_1B615243C(v213);
            sub_1B60C99C4(&v255, &v251, &qword_1EB9266D0);
            v36 = v35;
            sub_1B615243C(v34);
            sub_1B6220784();
            sub_1B6220784();
            sub_1B6173BE0(v208, v35);
            v37 = sub_1B6220784();
            v38 = sub_1B60F7978(v37, v228.n128_f64[0], v229.n128_f64[0]);

            if (v38)
            {
              v39 = v203 - 1;
              if (v203 == 1)
              {

LABEL_239:
                sub_1B6173C28(v208, v36);
                sub_1B615206C(v34);
                sub_1B602724C(&v255, &qword_1EB9266D0);
                sub_1B615206C(v213);
                goto LABEL_236;
              }

              if (*(v30 + 16) < v203)
              {
                goto LABEL_242;
              }

              sub_1B6220784();
              v40 = 40;
              while (1)
              {
                v41 = sub_1B6220784();
                if (sub_1B60F7978(v41, v228.n128_f64[0], v229.n128_f64[0]))
                {
                  break;
                }

                v40 += 8;
                if (!--v39)
                {

                  swift_bridgeObjectRelease_n();
                  goto LABEL_239;
                }
              }

              swift_bridgeObjectRelease_n();
              sub_1B6173C28(v208, v36);
              v77 = v34;
            }

            else
            {

              sub_1B6173C28(v208, v35);
              v77 = v34;
            }

            sub_1B615206C(v77);
            sub_1B602724C(&v255, &qword_1EB9266D0);
            sub_1B615206C(v213);
          }

          else
          {
            sub_1B60C99C4(&v259, &v251, &qword_1EB9266D0);
          }

          break;
      }

      goto LABEL_73;
    case 3:
      v42 = *((*(&v260 + 1) & 0x3FFFFFFFFFFFFFFFLL) + 0x20);
      v277[0] = *((*(&v260 + 1) & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      v277[1] = v42;
      v277[2] = *((*(&v260 + 1) & 0x3FFFFFFFFFFFFFFFLL) + 0x30);
      v43 = *(&v260 + 1);
      v44 = v10;
      sub_1B60C99C4(&v259, &v255, &qword_1EB9266D0);
      sub_1B615243C(v43);
      v45 = sub_1B60C99C4(v277, &v255, &qword_1EB9266E8);
      v46 = sub_1B6170744(v45, v228, v229);
      v47 = v277;
      v48 = &qword_1EB9266E8;
LABEL_48:
      sub_1B602724C(v47, v48);
      sub_1B615206C(v43);
      sub_1B602724C(&v259, &qword_1EB9266D0);
      v10 = v44;
      a6.n128_u64[0] = v228.n128_u64[0];
      a5.n128_u64[0] = v229.n128_u64[0];
      if (v46)
      {
        return 1;
      }

      goto LABEL_3;
    default:
      v18 = *(*(&v260 + 1) + 16);
      v17 = *(*(&v260 + 1) + 24);
      v20 = *(*(&v260 + 1) + 32);
      v19 = *(*(&v260 + 1) + 40);
      if (v18 && (*(v18 + 16) != 4 || *(v18 + 32) > a5.n128_f64[0] || *(v18 + 48) < a5.n128_f64[0] || *(v18 + 40) > a6.n128_f64[0] || *(v18 + 56) < a6.n128_f64[0]))
      {
        goto LABEL_3;
      }

      if (!v17)
      {
        goto LABEL_3;
      }

      v21 = *(v17 + 16);
      if (!v21)
      {
        goto LABEL_3;
      }

      v225 = v10;
      v218 = v9;
      sub_1B60C99C4(&v259, &v255, &qword_1EB9266D0);
      sub_1B615243C(v16);
      sub_1B6220784();
      sub_1B6220784();
      sub_1B6173BE0(v20, v19);
      v22 = sub_1B6220784();
      v212 = v16;
      v23 = sub_1B60F7978(v22, v228.n128_f64[0], v229.n128_f64[0]);

      if ((v23 & 1) == 0)
      {

LABEL_72:
        sub_1B6173C28(v20, v19);
        sub_1B615206C(v212);
LABEL_73:
        sub_1B602724C(&v259, &qword_1EB9266D0);
        a6.n128_u64[0] = v228.n128_u64[0];
        a5.n128_u64[0] = v229.n128_u64[0];
        v9 = v218;
        v10 = v225;
        goto LABEL_3;
      }

      v25 = v21 - 1;
      if (v21 == 1)
      {

        goto LABEL_235;
      }

      if (*(v17 + 16) < v21)
      {
        __break(1u);
LABEL_242:
        __break(1u);
LABEL_243:
        __break(1u);
LABEL_244:
        __break(1u);
LABEL_245:
        __break(1u);
        return result;
      }

      sub_1B6220784();
      v26 = 40;
      if (v25)
      {
        while (1)
        {
          v27 = sub_1B6220784();
          if (sub_1B60F7978(v27, v228.n128_f64[0], v229.n128_f64[0]))
          {
            break;
          }

          v26 += 8;
          if (!--v25)
          {
            goto LABEL_234;
          }
        }

        swift_bridgeObjectRelease_n();
        goto LABEL_72;
      }

LABEL_234:

      swift_bridgeObjectRelease_n();
LABEL_235:
      sub_1B6173C28(v20, v19);
      sub_1B615206C(v212);
LABEL_236:
      sub_1B602724C(&v259, &qword_1EB9266D0);
      return 1;
  }
}

uint64_t sub_1B617387C(uint64_t (*a1)(void), int16x4_t a2, float64_t a3)
{
  v4 = *v3;
  if (!*v3 || *(v4 + 16) == 4 && (v5.f64[0] = a3, *&v5.f64[1] = a2, v6.i32[0] = vuzp1_s16(vmovn_s64(vcgeq_f64(v5, *(v4 + 32))), a2).u32[0], v6.i32[1] = vuzp1_s16(a2, vmovn_s64(vcgeq_f64(*(v4 + 48), v5))).i32[1], (vminv_u16(v6))) && v3[1])
  {
    return a1();
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B61738E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *v8;
  switch(*v8 >> 62)
  {
    case 1uLL:
      OUTLINED_FUNCTION_1_38((v9 & 0x3FFFFFFFFFFFFFFFLL));
      v10 = &qword_1EB9266D8;
      OUTLINED_FUNCTION_0_64(v39, v40, v41, v42, v43, v44, v45, v46, v52, v53, v54, v55, v56, v57, v58, v59, v60[0]);
      goto LABEL_6;
    case 2uLL:
      v19 = (v9 & 0x3FFFFFFFFFFFFFFFLL);
      v20 = v19[2];
      v60[0] = v19[1];
      v60[1] = v20;
      v21 = v19[4];
      v60[2] = v19[3];
      v60[3] = v21;
      v10 = &qword_1EB9266D0;
      OUTLINED_FUNCTION_0_64(a1, a2, a3, a4, a5, a6, a7, a8, v52, v53, v54, v55, v56, v57, v58, v59, v60[0]);
      v22 = OUTLINED_FUNCTION_2_36();
      v24 = sub_1B6170698(v22, v23);
      break;
    case 3uLL:
      OUTLINED_FUNCTION_1_38((v9 & 0x3FFFFFFFFFFFFFFFLL));
      v10 = &qword_1EB9266E8;
      OUTLINED_FUNCTION_0_64(v25, v26, v27, v28, v29, v30, v31, v32, v52, v53, v54, v55, v56, v57, v58, v59, v60[0]);
      v33 = OUTLINED_FUNCTION_2_36();
      v24 = sub_1B6170744(v33, v34, v35, v36, v37, v38);
      break;
    default:
      OUTLINED_FUNCTION_1_38(v9);
      v10 = &qword_1EB9266E0;
      OUTLINED_FUNCTION_0_64(v11, v12, v13, v14, v15, v16, v17, v18, v52, v53, v54, v55, v56, v57, v58, v59, v60[0]);
LABEL_6:
      v47 = OUTLINED_FUNCTION_2_36();
      v24 = sub_1B617387C(v48, *&v47, v49);
      break;
  }

  v50 = v24;
  sub_1B602724C(v60, v10);
  return v50 & 1;
}

uint64_t sub_1B6173A1C()
{
  if (*v0 >> 62 != 3)
  {
    return MEMORY[0x1E69E7CC0];
  }

  if (*((*v0 & 0x3FFFFFFFFFFFFFFFLL) + 0x18))
  {
    v1 = *((*v0 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
  }

  else
  {
    v1 = MEMORY[0x1E69E7CC0];
  }

  sub_1B6220784();
  v2 = sub_1B6173A88(v1);

  return v2;
}

uint64_t sub_1B6173A88(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v20 = MEMORY[0x1E69E7CC0];
    sub_1B60AA5F0(0, v1, 0);
    v2 = v20;
    v4 = (a1 + 32);
    do
    {
      v5 = v4[1];
      v16 = *v4;
      v17 = v5;
      v6 = v4[3];
      v18 = v4[2];
      v19 = v6;
      sub_1B60C99C4(&v16, &v13, &qword_1EB9266D0);
      v20 = v2;
      v8 = *(v2 + 16);
      v7 = *(v2 + 24);
      if (v8 >= v7 >> 1)
      {
        sub_1B60AA5F0(v7 > 1, v8 + 1, 1);
        v2 = v20;
      }

      v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9266D0);
      v15 = &protocol witness table for <> GeoJSON<A>.Feature;
      v9 = swift_allocObject();
      *&v13 = v9;
      v10 = v17;
      v9[1] = v16;
      v9[2] = v10;
      v11 = v19;
      v9[3] = v18;
      v9[4] = v11;
      *(v2 + 16) = v8 + 1;
      sub_1B60273A4(&v13, v2 + 40 * v8 + 32);
      v4 += 4;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_1B6173BE0(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
    sub_1B6220784();

    return sub_1B6220784();
  }

  return result;
}

uint64_t sub_1B6173C28(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

uint64_t sub_1B6173C8C()
{
  v1 = sub_1B621D3A4();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v40 = v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = v37 - v5;
  MEMORY[0x1EEE9AC00](v7);
  v9 = v37 - v8;
  v10 = *v0;
  sub_1B621D374();
  sub_1B605C810();
  v12 = *(v11 + 16);
  v13 = v11;
  if (v12 >= *(v11 + 24) >> 1)
  {
    sub_1B605C810();
    v13 = v34;
  }

  *(v13 + 16) = v12 + 1;
  v14 = v13;
  v17 = *(v2 + 32);
  v16 = v2 + 32;
  v15 = v17;
  v42 = (*(v16 + 48) + 32) & ~*(v16 + 48);
  v41 = *(v16 + 40);
  v17(v13 + v42 + v41 * v12, v9, v1);
  sub_1B621D374();
  v18 = *(v14 + 16);
  if (v18 >= *(v14 + 24) >> 1)
  {
    sub_1B605C810();
    v14 = v35;
  }

  *(v14 + 16) = v18 + 1;
  v39 = v15;
  v15(v14 + v42 + v18 * v41, v6, v1);
  v19 = *(v10 + 16);
  v20 = MEMORY[0x1E69E7CC0];
  if (v19)
  {
    v37[0] = v14;
    v37[1] = v16;
    v38 = v1;
    v43 = MEMORY[0x1E69E7CC0];
    sub_1B603C6EC(0, v19, 0);
    v20 = v43;
    v21 = (v10 + 32);
    v22 = 16 * *(v43 + 16);
    OUTLINED_FUNCTION_0_44();
    v25 = 0x74617265706D6574;
    do
    {
      if (*v21)
      {
        v26 = v25;
      }

      else
      {
        v26 = v24;
      }

      if (*v21)
      {
        v27 = 0xEB00000000657275;
      }

      else
      {
        v27 = 0xED00006E6F697461;
      }

      v43 = v20;
      v28 = *(v20 + 24);
      v29 = v23 + 1;
      if (v23 >= v28 >> 1)
      {
        sub_1B603C6EC(v28 > 1, v23 + 1, 1);
        OUTLINED_FUNCTION_0_44();
        v20 = v43;
      }

      *(v20 + 16) = v29;
      v30 = v20 + v22;
      *(v30 + 32) = v26;
      *(v30 + 40) = v27;
      v22 += 16;
      ++v21;
      v23 = v29;
      --v19;
    }

    while (v19);
    v1 = v38;
    v14 = v37[0];
  }

  v43 = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924F68);
  sub_1B60358B4();
  sub_1B6221174();

  v31 = v40;
  sub_1B621D374();

  v32 = *(v14 + 16);
  if (v32 >= *(v14 + 24) >> 1)
  {
    sub_1B605C810();
    v14 = v36;
  }

  *(v14 + 16) = v32 + 1;
  v39(v14 + v42 + v32 * v41, v31, v1);
  return v14;
}

uint64_t ConditionToken.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  OUTLINED_FUNCTION_0_9();
  sub_1B62220C4();
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_1(v11, v11[3]);
    OUTLINED_FUNCTION_0_9();
    v5 = sub_1B6221F44();
    v7 = v6;
    __swift_destroy_boxed_opaque_existential_1(v11);
    v8._countAndFlagsBits = v5;
    v8._object = v7;
    ConditionToken.init(rawValue:)(v8);
    v9 = v11[0];
    if (LOBYTE(v11[0]) == 13)
    {
      v9 = 0;
    }

    *a2 = v9;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

WeatherDaemon::ConditionToken_optional __swiftcall ConditionToken.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1B6221CD4();

  v5 = 13;
  if (v3 < 0xD)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t sub_1B61741B0()
{
  result = qword_1EB9266F0;
  if (!qword_1EB9266F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9266F0);
  }

  return result;
}

unint64_t sub_1B6174228@<X0>(unint64_t *a1@<X8>)
{
  result = ConditionToken.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_1B61742BC()
{
  result = qword_1EB9266F8;
  if (!qword_1EB9266F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB926700);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9266F8);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ConditionToken(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 12 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 12) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF4)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF3)
  {
    v6 = ((a2 - 244) >> 8) + 1;
    *result = a2 + 12;
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
          *result = a2 + 12;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1B617442C()
{
  result = qword_1EDAB0230;
  if (!qword_1EDAB0230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAB0230);
  }

  return result;
}

uint64_t WeatherAvailableDataSetsStore.__allocating_init()()
{
  v0 = swift_allocObject();
  WeatherAvailableDataSetsStore.init()();
  return v0;
}

uint64_t WeatherAvailableDataSetsStore.init()()
{
  v2 = v0;
  v3 = sub_1B6220EC4();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDAAF1D8 != -1)
  {
    swift_once();
  }

  if (qword_1EDAAF1E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB926710);
    sub_1B6175124();

    v7 = sub_1B6220E74();
    if (!v1)
    {
      *(v0 + 16) = v7;
      (*(v4 + 104))(v6, *MEMORY[0x1E69D62C0], v3);
      sub_1B6220F04();
      (*(v4 + 8))(v6, v3);

      return v2;
    }
  }

  else
  {
    if (qword_1EDAB3D80 != -1)
    {
      swift_once();
    }

    v8 = sub_1B6220B34();
    __swift_project_value_buffer(v8, qword_1EDAC2AB0);
    v9 = sub_1B6220B14();
    v10 = sub_1B62217E4();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_1B6020000, v9, v10, "Failed to create weather available data sets database", v11, 2u);
      MEMORY[0x1B8C91C90](v11, -1, -1);
    }

    sub_1B61750D0();
    swift_allocError();
    swift_willThrow();
  }

  swift_deallocPartialClassInstance();
  return v2;
}

uint64_t sub_1B61747DC()
{
  sub_1B6220D54();
  sub_1B6220DA4();
}

uint64_t WeatherAvailableDataSetsStore.__deallocating_deinit()
{

  return MEMORY[0x1EEE6BDC0](v0, 24, 7);
}

uint64_t sub_1B617487C()
{
  v0 = sub_1B6220B34();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1B6220E84();
  __swift_allocate_value_buffer(v4, qword_1EDAAF1B8);
  v5 = __swift_project_value_buffer(v4, qword_1EDAAF1B8);
  if (qword_1EDAB3D80 != -1)
  {
    swift_once();
  }

  v6 = __swift_project_value_buffer(v0, qword_1EDAC2AB0);
  (*(v1 + 16))(v3, v6, v0);
  static Database.Location.protectedLocation(_:logger:)(0xD00000000000001ELL, 0x80000001B623E7A0, v3, v5);
  return (*(v1 + 8))(v3, v0);
}

uint64_t static WeatherAvailableDataSetsStore.location.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EDAAF1B0 != -1)
  {
    OUTLINED_FUNCTION_0_65();
  }

  v2 = sub_1B6220E84();
  v3 = __swift_project_value_buffer(v2, qword_1EDAAF1B8);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t static WeatherAvailableDataSetsStore.location.setter(uint64_t a1)
{
  if (qword_1EDAAF1B0 != -1)
  {
    OUTLINED_FUNCTION_0_65();
  }

  v2 = sub_1B6220E84();
  v3 = __swift_project_value_buffer(v2, qword_1EDAAF1B8);
  swift_beginAccess();
  v4 = *(v2 - 8);
  (*(v4 + 24))(v3, a1, v2);
  swift_endAccess();
  return (*(v4 + 8))(a1, v2);
}

uint64_t (*static WeatherAvailableDataSetsStore.location.modify())()
{
  if (qword_1EDAAF1B0 != -1)
  {
    OUTLINED_FUNCTION_0_65();
  }

  v0 = sub_1B6220E84();
  __swift_project_value_buffer(v0, qword_1EDAAF1B8);
  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t static WeatherAvailableDataSetsStore.preferredCacheSize.getter@<X0>(void *a1@<X8>)
{
  *a1 = 32;
  v2 = *MEMORY[0x1E69D6298];
  v3 = sub_1B6220EA4();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_1B6174C80()
{
  v0 = sub_1B6220E24();
  v28 = *(v0 - 8);
  v29 = v0;
  MEMORY[0x1EEE9AC00](v0);
  v27 = v22 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_1B6220E54();
  v24 = *(v2 - 8);
  v25 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v26 = v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_1B6220E04();
  v4 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v6 = v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1B6220EA4();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = (v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = sub_1B6220C84();
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1B6220E84();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = v22 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22[1] = sub_1B6220EB4();
  if (qword_1EDAAF1B0 != -1)
  {
    swift_once();
  }

  v18 = __swift_project_value_buffer(v14, qword_1EDAAF1B8);
  swift_beginAccess();
  (*(v15 + 16))(v17, v18, v14);
  static AssertionOptions.weatherAssertions.getter();
  *v10 = 32;
  (*(v8 + 104))(v10, *MEMORY[0x1E69D6298], v7);
  (*(v4 + 104))(v6, *MEMORY[0x1E69D6248], v23);
  v19 = v26;
  (*(v24 + 104))(v26, *MEMORY[0x1E69D6270], v25);
  v20 = v27;
  (*(v28 + 104))(v27, *MEMORY[0x1E69D6260], v29);
  v30 = 1;
  result = Database.init(location:assertions:journalingMode:recoveryMode:preferredCacheSize:vacuumMode:busyTimeout:)(v17, v13, v19, v20, v10, v6, 0x100000000);
  qword_1EDAAF1E0 = result;
  return result;
}

unint64_t sub_1B61750D0()
{
  result = qword_1EB926708;
  if (!qword_1EB926708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB926708);
  }

  return result;
}

unint64_t sub_1B6175124()
{
  result = qword_1EDAAF010;
  if (!qword_1EDAAF010)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB926710);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAAF010);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for WeatherAvailableDataSetsStore.Errors(_BYTE *result, int a2, int a3)
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

unint64_t sub_1B6175294()
{
  result = qword_1EB926718;
  if (!qword_1EB926718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB926718);
  }

  return result;
}

unint64_t sub_1B61752F8()
{
  result = qword_1EB926730;
  if (!qword_1EB926730)
  {
    type metadata accessor for Weather();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB926730);
  }

  return result;
}

uint64_t WDSHMACSigner.__allocating_init(signatureRoundingInterval:)(uint64_t a1)
{
  v2 = swift_allocObject();
  WDSHMACSigner.init(signatureRoundingInterval:)(a1);
  return v2;
}

BOOL sub_1B6175390(uint64_t a1, unint64_t a2)
{
  v2 = 0;
  v3 = 0;
  switch(a2 >> 62)
  {
    case 1uLL:
      v3 = a1;
      v2 = a1 >> 32;
      break;
    case 2uLL:
      v3 = *(a1 + 16);
      v2 = *(a1 + 24);
      break;
    case 3uLL:
      return v3 == v2;
    default:
      v3 = 0;
      v2 = BYTE6(a2);
      break;
  }

  return v3 == v2;
}

uint64_t sub_1B61753E4(uint64_t a1, unint64_t a2)
{
  v48 = *MEMORY[0x1E69E9840];
  *&v45 = a1;
  *(&v45 + 1) = a2;
  sub_1B6220784();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB926760);
  if (swift_dynamicCast())
  {
    sub_1B60273A4(v43, &v46);
    __swift_project_boxed_opaque_existential_1(&v46, v47);
    OUTLINED_FUNCTION_4_26();
    sub_1B621D534();
    v43[0] = v45;
    __swift_destroy_boxed_opaque_existential_1(&v46);
    goto LABEL_59;
  }

  v44 = 0;
  memset(v43, 0, sizeof(v43));
  sub_1B602724C(v43, &qword_1EB926768);
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_63;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    *&v43[0] = a1;
    *(&v43[0] + 1) = a2 & 0xFFFFFFFFFFFFFFLL;
    v4 = v43;
    v5 = HIBYTE(a2) & 0xF;
  }

  else if ((a1 & 0x1000000000000000) != 0)
  {
    v4 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v4 = sub_1B6221BA4();
  }

  sub_1B6176CB0(v4, v5, &v46);
  v6 = *(&v46 + 1);
  v7 = v46;
  if (*(&v46 + 1) >> 60 != 15)
  {
    v43[0] = v46;
    goto LABEL_59;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v8 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v8 = a1 & 0xFFFFFFFFFFFFLL;
  }

LABEL_12:
  *&v43[0] = MEMORY[0x1B8C8C8F0](v8);
  *(&v43[0] + 1) = v9;
  MEMORY[0x1EEE9AC00](*&v43[0]);
  v10 = sub_1B6176DCC(sub_1B61773A0);
  v12 = *(&v43[0] + 1) >> 62;
  v13 = v10;
  v15 = v14;
  v17 = v16;
  v18 = BYTE14(v43[0]);
  switch(*(&v43[0] + 1) >> 62)
  {
    case 1:
      LODWORD(v19) = DWORD1(v43[0]) - LODWORD(v43[0]);
      if (__OFSUB__(DWORD1(v43[0]), v43[0]))
      {
        goto LABEL_66;
      }

      v19 = v19;
LABEL_22:
      if (v11 == v19)
      {
        goto LABEL_23;
      }

      if (v12 == 2)
      {
        v18 = *(*&v43[0] + 24);
      }

      else if (v12 == 1)
      {
        v18 = *&v43[0] >> 32;
      }

      goto LABEL_56;
    case 2:
      v21 = *(*&v43[0] + 16);
      v20 = *(*&v43[0] + 24);
      v22 = __OFSUB__(v20, v21);
      v19 = v20 - v21;
      if (!v22)
      {
        goto LABEL_22;
      }

      __break(1u);
LABEL_18:
      if (v11)
      {
        v18 = 0;
LABEL_56:
        if (v18 < v11)
        {
          __break(1u);
LABEL_66:
          __break(1u);
        }

        sub_1B621D6C4();
LABEL_58:

        goto LABEL_59;
      }

LABEL_23:
      v42 = v7;
      LOBYTE(v23) = 0;
      if ((v15 & 0x2000000000000000) != 0)
      {
        v24 = HIBYTE(v15) & 0xF;
      }

      else
      {
        v24 = v10 & 0xFFFFFFFFFFFFLL;
      }

      v25 = (v10 >> 59) & 1;
      if ((v15 & 0x1000000000000000) == 0)
      {
        LOBYTE(v25) = 1;
      }

      v26 = 4 << v25;
      *(&v45 + 7) = 0;
      *&v45 = 0;
      break;
    case 3:
      goto LABEL_18;
    default:
      v19 = BYTE14(v43[0]);
      goto LABEL_22;
  }

  while (4 * v24 != v17 >> 14)
  {
    v27 = v17;
    if ((v17 & 0xC) == v26)
    {
      v31 = OUTLINED_FUNCTION_10_20();
      v27 = sub_1B6176C54(v31, v32, v33);
    }

    v28 = v27 >> 16;
    if (v27 >> 16 >= v24)
    {
      __break(1u);
LABEL_61:
      __break(1u);
LABEL_62:
      __break(1u);
LABEL_63:
      v8 = sub_1B6221334();
      v7 = 0;
      v6 = 0xF000000000000000;
      goto LABEL_12;
    }

    if ((v15 & 0x1000000000000000) != 0)
    {
      v30 = sub_1B6221374();
    }

    else if ((v15 & 0x2000000000000000) != 0)
    {
      *&v46 = v13;
      *(&v46 + 1) = v15 & 0xFFFFFFFFFFFFFFLL;
      v30 = *(&v46 + v28);
    }

    else
    {
      v29 = (v15 & 0xFFFFFFFFFFFFFFFLL) + 32;
      if ((v13 & 0x1000000000000000) == 0)
      {
        v29 = sub_1B6221BA4();
      }

      v30 = *(v29 + v28);
    }

    if ((v17 & 0xC) == v26)
    {
      v34 = OUTLINED_FUNCTION_10_20();
      v17 = sub_1B6176C54(v34, v35, v36);
      if ((v15 & 0x1000000000000000) == 0)
      {
LABEL_41:
        v17 = (v17 & 0xFFFFFFFFFFFF0000) + 65540;
        goto LABEL_46;
      }
    }

    else if ((v15 & 0x1000000000000000) == 0)
    {
      goto LABEL_41;
    }

    if (v24 <= v17 >> 16)
    {
      goto LABEL_62;
    }

    OUTLINED_FUNCTION_10_20();
    v17 = sub_1B6221344();
LABEL_46:
    *(&v45 + v23) = v30;
    v23 = v23 + 1;
    if ((v23 >> 8))
    {
      goto LABEL_61;
    }

    if (v23 == 14)
    {
      OUTLINED_FUNCTION_14_19();
      sub_1B621D6E4();
      LOBYTE(v23) = 0;
    }
  }

  if (v23)
  {
    OUTLINED_FUNCTION_14_19();
    sub_1B621D6E4();
    sub_1B602FF58(v42, v6);
    goto LABEL_58;
  }

  sub_1B602FF58(v42, v6);
LABEL_59:
  v37 = OUTLINED_FUNCTION_302();
  sub_1B604D8AC(v37, v38);

  v39 = OUTLINED_FUNCTION_302();
  sub_1B60362A8(v39, v40);
  return OUTLINED_FUNCTION_302();
}

uint64_t sub_1B61758A0(uint64_t a1)
{
  v2 = sub_1B62210D4();
  v7 = v2;
  v8 = sub_1B617741C(qword_1EDAB0E08, MEMORY[0x1E6966670]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v6);
  v4 = *(v2 - 8);
  (*(v4 + 16))(boxed_opaque_existential_1, a1, v2);
  __swift_project_boxed_opaque_existential_1(v6, v7);
  OUTLINED_FUNCTION_4_26();
  sub_1B621D534();
  __swift_destroy_boxed_opaque_existential_1(v6);
  (*(v4 + 8))(a1, v2);
  return OUTLINED_FUNCTION_302();
}

uint64_t sub_1B61759CC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB926738);
  v8 = v2;
  v9 = sub_1B602CAF4(&qword_1EDAB0458, &qword_1EB926738);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v7);
  v4 = *(v2 - 8);
  (*(v4 + 16))(boxed_opaque_existential_1, a1, v2);
  __swift_project_boxed_opaque_existential_1(v7, v8);
  sub_1B621D534();
  __swift_destroy_boxed_opaque_existential_1(v7);
  (*(v4 + 8))(a1, v2);
  return v6;
}

uint64_t sub_1B6175B14(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_302();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(v2);
  v9 = sub_1B602CAF4(&qword_1EDAAF6C8, &qword_1EB926758);
  v7[0] = a1;
  v3 = __swift_project_boxed_opaque_existential_1(v7, v8);
  sub_1B6177190(*v3 + 32, *v3 + 32 + *(*v3 + 16), &v6);
  v4 = v6;
  __swift_destroy_boxed_opaque_existential_1(v7);
  return v4;
}

uint64_t WDSHMACSigner.init(signatureRoundingInterval:)(uint64_t a1)
{
  v3 = [objc_allocWithZone(MEMORY[0x1E696AC80]) init];
  *(v1 + 16) = a1;
  *(v1 + 24) = v3;
  return v1;
}

uint64_t WDSHMACSigner.__deallocating_deinit()
{

  return MEMORY[0x1EEE6BDC0](v0, 32, 7);
}

uint64_t WDSHMACSigner.createSignature(with:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v193 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB926738);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v189 = &v176 - v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB926740);
  OUTLINED_FUNCTION_2();
  v191 = v6;
  v192 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v190 = &v176 - v7;
  sub_1B6221084();
  OUTLINED_FUNCTION_2();
  v195 = v9;
  v196 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v188 = &v176 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v194 = &v176 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924F58);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v176 - v14;
  v201 = sub_1B621D474();
  OUTLINED_FUNCTION_2();
  v17 = v16;
  MEMORY[0x1EEE9AC00](v18);
  v200 = &v176 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1B6221224();
  OUTLINED_FUNCTION_2();
  v22 = v21;
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v176 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_1B621D8F4();
  OUTLINED_FUNCTION_2();
  v28 = v27;
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v176 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32);
  v203 = &v176 - v33;
  v34 = sub_1B621D6A4();
  if (v35 >> 60 == 15)
  {
    sub_1B61769DC();
    OUTLINED_FUNCTION_127();
    *v36 = 0;
    return swift_willThrow();
  }

  v197 = v34;
  v198 = v35;
  v202 = v26;
  v199 = v28;
  v187 = type metadata accessor for WDSAuthenticationContext();
  v38 = *(v210 + 16);
  result = sub_1B621D754();
  if ((v38 * 60) >> 64 != (60 * v38) >> 63)
  {
    __break(1u);
    return result;
  }

  v185 = v15;
  v186 = a1;
  v184 = v17;
  sub_1B621D744();
  v39 = v199;
  v40 = v203;
  (*(v199 + 32))(v203, v31, v202);
  v41 = *(v210 + 24);
  v42 = sub_1B621D814();
  v43 = [v41 stringFromDate_];

  v44 = sub_1B62211D4();
  v46 = v45;

  sub_1B6221214();
  OUTLINED_FUNCTION_15_16();
  v181 = v44;
  v47 = sub_1B62211E4();
  v49 = v48;
  v52 = *(v22 + 8);
  v50 = v22 + 8;
  v51 = v52;
  (v52)(v25, v20);
  if (v49 >> 60 == 15)
  {

    sub_1B61769DC();
    OUTLINED_FUNCTION_127();
    OUTLINED_FUNCTION_9_21(v53, 1);
    sub_1B602FF58(v197, v198);
    return (*(v39 + 8))(v40, v202);
  }

  v182 = v46;
  v210 = v47;
  v183 = v49;
  sub_1B6221214();
  OUTLINED_FUNCTION_15_16();
  v54 = sub_1B62211E4();
  v56 = v55;
  v180 = v51;
  (v51)(v25, v20);
  if (v56 >> 60 == 15)
  {
    OUTLINED_FUNCTION_13_16();
    sub_1B61769DC();
    OUTLINED_FUNCTION_127();
    OUTLINED_FUNCTION_9_21(v57, 2);
    v58 = OUTLINED_FUNCTION_2_37();
    v60 = OUTLINED_FUNCTION_17_16(v58, v59);
    sub_1B602FF58(v60, v61);
    return (*(v39 + 8))(v203, v202);
  }

  v179 = v50;
  v62 = v20;
  v63 = v185;
  sub_1B621D3D4();
  v64 = v201;
  v65 = v39;
  if (__swift_getEnumTagSinglePayload(v63, 1, v201) == 1)
  {
    OUTLINED_FUNCTION_13_16();
    sub_1B602724C(v63, &qword_1EB924F58);
    sub_1B61769DC();
    v66 = OUTLINED_FUNCTION_127();
    OUTLINED_FUNCTION_5_30(v66, v67);
    sub_1B602FF58(v54, v56);
    v68 = OUTLINED_FUNCTION_2_37();
    v70 = OUTLINED_FUNCTION_17_16(v68, v69);
    sub_1B602FF58(v70, v71);
    return (*(v65 + 8))(v203, v202);
  }

  v177 = v54;
  v178 = v56;
  v72 = v64;
  v73 = v184;
  v74 = v200;
  (*(v184 + 32))(v200, v63, v72);
  sub_1B621D434();
  v75 = sub_1B621D454();
  if (!v76)
  {
    OUTLINED_FUNCTION_13_16();
    sub_1B61769DC();
    v91 = OUTLINED_FUNCTION_127();
    OUTLINED_FUNCTION_5_30(v91, v92);
    v93 = OUTLINED_FUNCTION_0_66();
    sub_1B602FF58(v93, v94);
    v95 = OUTLINED_FUNCTION_2_37();
    v97 = OUTLINED_FUNCTION_17_16(v95, v96);
    sub_1B602FF58(v97, v98);
    (*(v73 + 8))(v74, v72);
    return (*(v65 + 8))(v203, v202);
  }

  v208 = v75;
  v209 = v76;
  v206 = 12079;
  v207 = 0xE200000000000000;
  v204 = 0;
  v205 = 0xE000000000000000;
  sub_1B602C004();
  sub_1B6221A64();

  sub_1B6221214();
  OUTLINED_FUNCTION_15_16();
  v77 = sub_1B62211E4();
  v79 = v78;

  v80 = v180;
  (v180)(v25, v62);
  if (v79 >> 60 == 15)
  {
    OUTLINED_FUNCTION_13_16();
    sub_1B61769DC();
    v81 = OUTLINED_FUNCTION_127();
    OUTLINED_FUNCTION_5_30(v81, v82);
    v83 = OUTLINED_FUNCTION_0_66();
    sub_1B602FF58(v83, v84);
    v85 = OUTLINED_FUNCTION_2_37();
    v87 = OUTLINED_FUNCTION_17_16(v85, v86);
    sub_1B602FF58(v87, v88);
    v89 = OUTLINED_FUNCTION_3_31();
    v90(v89);
    return (*(v65 + 8))(v203, v202);
  }

  v99 = (v186 + *(v187 + 32));
  v100 = v80;
  v101 = *v99;
  v102 = v99[1];
  sub_1B6220784();
  sub_1B6221214();
  OUTLINED_FUNCTION_15_16();
  v187 = v101;
  v103 = sub_1B62211E4();
  v105 = v104;
  v106 = OUTLINED_FUNCTION_12();
  v100(v106);
  v107 = v203;
  if (v105 >> 60 == 15)
  {

    OUTLINED_FUNCTION_13_16();
    sub_1B61769DC();
    OUTLINED_FUNCTION_127();
    OUTLINED_FUNCTION_9_21(v108, 4);
    sub_1B602FF58(v77, v79);
    v109 = OUTLINED_FUNCTION_0_66();
    sub_1B602FF58(v109, v110);
    v111 = OUTLINED_FUNCTION_2_37();
  }

  else
  {
    v115 = OUTLINED_FUNCTION_12();
    if (sub_1B6175390(v115, v116))
    {

      sub_1B61769DC();
      OUTLINED_FUNCTION_127();
      *v117 = 0;
      swift_willThrow();
      v118 = OUTLINED_FUNCTION_277();
      sub_1B602FF58(v118, v119);
      sub_1B602FF58(v77, v79);
      v120 = OUTLINED_FUNCTION_0_66();
      sub_1B602FF58(v120, v121);
      v122 = OUTLINED_FUNCTION_2_37();
      sub_1B602FF58(v122, v123);
      v113 = OUTLINED_FUNCTION_12();
      goto LABEL_22;
    }

    v126 = v183;
    if (!sub_1B6175390(v210, v183))
    {
      v132 = v79;
      v133 = v177;
      v134 = v178;
      if (sub_1B6175390(v177, v178))
      {

        sub_1B61769DC();
        OUTLINED_FUNCTION_127();
        OUTLINED_FUNCTION_9_21(v135, 2);
        v136 = OUTLINED_FUNCTION_277();
        sub_1B602FF58(v136, v137);
        sub_1B602FF58(v77, v132);
        v138 = v133;
        v139 = v134;
      }

      else
      {
        v140 = v132;
        if (sub_1B6175390(v77, v132))
        {

          sub_1B61769DC();
          v141 = OUTLINED_FUNCTION_127();
          OUTLINED_FUNCTION_5_30(v141, v142);
          v143 = OUTLINED_FUNCTION_277();
          sub_1B602FF58(v143, v144);
          v145 = v77;
        }

        else
        {
          v146 = OUTLINED_FUNCTION_277();
          if (!sub_1B6175390(v146, v147))
          {
            v208 = v197;
            v209 = v198;
            sub_1B604D8AC(v197, v198);
            v155 = v194;
            sub_1B6221074();
            v156 = *(v195 + 16);
            v157 = v140;
            v185 = v140;
            v156(v188, v155, v196);
            sub_1B62210C4();
            sub_1B617741C(&qword_1EDAB0450, MEMORY[0x1E6966620]);
            v158 = v190;
            sub_1B6221094();
            v208 = v177;
            v209 = v178;
            sub_1B6176A30();
            v159 = v192;
            sub_1B62210A4();
            v176 = v77;
            v208 = v77;
            v209 = v157;
            OUTLINED_FUNCTION_7_23();
            v160 = v210;
            v161 = v183;
            v208 = v210;
            v209 = v183;
            OUTLINED_FUNCTION_7_23();
            v208 = v103;
            v209 = v105;
            OUTLINED_FUNCTION_7_23();
            v162 = v189;
            sub_1B62210B4();
            v163 = sub_1B61759CC(v162);
            v189 = v164;
            v165 = OUTLINED_FUNCTION_277();
            sub_1B602FF58(v165, v166);
            sub_1B602FF58(v176, v185);
            v167 = OUTLINED_FUNCTION_0_66();
            sub_1B602FF58(v167, v168);
            v169 = OUTLINED_FUNCTION_17_16(v160, v161);
            sub_1B602FF58(v169, v170);
            (*(v191 + 8))(v158, v159);
            (*(v195 + 8))(v194, v196);
            v171 = OUTLINED_FUNCTION_3_31();
            v172(v171);
            result = (*(v199 + 8))(v203, v202);
            v173 = v193;
            v174 = v182;
            *v193 = v181;
            v173[1] = v174;
            v175 = v189;
            v173[2] = v163;
            v173[3] = v175;
            v173[4] = v187;
            v173[5] = v102;
            return result;
          }

          sub_1B61769DC();
          OUTLINED_FUNCTION_127();
          OUTLINED_FUNCTION_9_21(v148, 4);
          v149 = OUTLINED_FUNCTION_277();
          sub_1B602FF58(v149, v150);
          v145 = v77;
        }

        sub_1B602FF58(v145, v132);
        v138 = OUTLINED_FUNCTION_0_66();
      }

      sub_1B602FF58(v138, v139);
      v151 = OUTLINED_FUNCTION_17_16(v210, v126);
      sub_1B602FF58(v151, v152);
      v153 = OUTLINED_FUNCTION_3_31();
      v154(v153);
      return (*(v199 + 8))(v203, v202);
    }

    sub_1B61769DC();
    OUTLINED_FUNCTION_127();
    OUTLINED_FUNCTION_9_21(v127, 1);
    v128 = OUTLINED_FUNCTION_277();
    sub_1B602FF58(v128, v129);
    sub_1B602FF58(v77, v79);
    v130 = OUTLINED_FUNCTION_0_66();
    sub_1B602FF58(v130, v131);
    v111 = OUTLINED_FUNCTION_12();
  }

  v113 = OUTLINED_FUNCTION_17_16(v111, v112);
LABEL_22:
  sub_1B602FF58(v113, v114);
  v124 = OUTLINED_FUNCTION_3_31();
  v125(v124);
  return (*(v199 + 8))(v107, v202);
}

unint64_t sub_1B61769DC()
{
  result = qword_1EB926748;
  if (!qword_1EB926748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB926748);
  }

  return result;
}

unint64_t sub_1B6176A30()
{
  result = qword_1EDAB0988;
  if (!qword_1EDAB0988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAB0988);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for WDSHMACSigner.Errors(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1B6176C00()
{
  result = qword_1EB926750;
  if (!qword_1EB926750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB926750);
  }

  return result;
}

uint64_t sub_1B6176C54(unint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v6 = sub_1B6221384();
    OUTLINED_FUNCTION_11_19(v6);
    return v7 | 4;
  }

  else
  {
    v3 = MEMORY[0x1B8C90570](15, a1 >> 16);
    OUTLINED_FUNCTION_11_19(v3);
    return v4 | 8;
  }
}

uint64_t sub_1B6176CB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = 0;
  v6 = 0xC000000000000000;
  if (a1 && a2)
  {
    if (a2 <= 14)
    {
      result = sub_1B621D644();
      v6 = v9 & 0xFFFFFFFFFFFFFFLL;
    }

    else
    {
      sub_1B621D4D4();
      swift_allocObject();
      v8 = sub_1B621D494();
      if (a2 >= 0x7FFFFFFF)
      {
        sub_1B621D6B4();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = a2;
        v6 = v8 | 0x8000000000000000;
      }

      else
      {
        result = a2 << 32;
        v6 = v8 | 0x4000000000000000;
      }
    }
  }

  *a3 = result;
  a3[1] = v6;
  return result;
}

void *sub_1B6176D78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6[0] = a3;
  v6[1] = a4;
  v5[2] = v6;
  return sub_1B6177250(sub_1B61773FC, v5, a1, a2);
}

uint64_t sub_1B6176DCC(void *(*a1)(uint64_t *__return_ptr, char *, char *))
{
  v4 = v1;
  v18[2] = *MEMORY[0x1E69E9840];
  v6 = *v1;
  v5 = v1[1];
  switch(v5 >> 62)
  {
    case 1uLL:
      v11 = v5 & 0x3FFFFFFFFFFFFFFFLL;

      sub_1B60362A8(v6, v5);
      *v4 = xmmword_1B6230DF0;
      sub_1B60362A8(0, 0xC000000000000000);
      v12 = v6 >> 32;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        goto LABEL_16;
      }

      if (v12 < v6)
      {
        goto LABEL_23;
      }

      if (sub_1B621D4A4() && __OFSUB__(v6, sub_1B621D4C4()))
      {
        goto LABEL_24;
      }

      sub_1B621D4D4();
      swift_allocObject();
      v13 = sub_1B621D484();

      v11 = v13;
LABEL_16:
      if (v12 < v6)
      {
        __break(1u);
LABEL_23:
        __break(1u);
LABEL_24:
        __break(1u);
      }

      v3 = sub_1B61772B4(v6, v6 >> 32, a1);

      v10 = v11 | 0x4000000000000000;
      if (v2)
      {
        goto LABEL_18;
      }

      goto LABEL_20;
    case 2uLL:
      v3 = v5 & 0x3FFFFFFFFFFFFFFFLL;

      sub_1B60362A8(v6, v5);
      v16 = v6;
      v17 = v5 & 0x3FFFFFFFFFFFFFFFLL;
      *v4 = xmmword_1B6230DF0;
      sub_1B60362A8(0, 0xC000000000000000);
      sub_1B621D654();
      v6 = v16;
      v9 = sub_1B61772B4(*(v16 + 16), *(v16 + 24), a1);
      if (v2)
      {
        v10 = v17 | 0x8000000000000000;
LABEL_18:
        *v4 = v6;
        v4[1] = v10;
      }

      else
      {
        v3 = v9;
        v10 = v17 | 0x8000000000000000;
LABEL_20:
        *v4 = v6;
        v4[1] = v10;
      }

      return v3;
    case 3uLL:
      memset(v18, 0, 15);
      a1(&v16, v18, v18);
      if (!v2)
      {
        return v16;
      }

      return v3;
    default:
      v3 = v6 >> 8;
      sub_1B60362A8(v6, v5);
      v18[0] = v6;
      LOWORD(v18[1]) = v5;
      BYTE2(v18[1]) = BYTE2(v5);
      BYTE3(v18[1]) = BYTE3(v5);
      BYTE4(v18[1]) = BYTE4(v5);
      BYTE5(v18[1]) = BYTE5(v5);
      BYTE6(v18[1]) = BYTE6(v5);
      a1(&v16, v18, v18 + BYTE6(v5));
      if (!v2)
      {
        v3 = v16;
      }

      v8 = LODWORD(v18[1]) | ((WORD2(v18[1]) | (BYTE6(v18[1]) << 16)) << 32);
      *v4 = v18[0];
      v4[1] = v8;
      return v3;
  }
}

uint64_t sub_1B6177190@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  if (!result)
  {
    goto LABEL_4;
  }

  v4 = a2 - result;
  if (a2 == result)
  {
    result = 0;
LABEL_4:
    v5 = 0xC000000000000000;
    goto LABEL_5;
  }

  if (v4 <= 14)
  {
    result = sub_1B621D644();
    v5 = v7 & 0xFFFFFFFFFFFFFFLL;
  }

  else if (v4 >= 0x7FFFFFFF)
  {
    result = MEMORY[0x1B8C8C880]();
    v5 = v8 | 0x8000000000000000;
  }

  else
  {
    result = MEMORY[0x1B8C8C8A0]();
    v5 = v6 | 0x4000000000000000;
  }

LABEL_5:
  *a3 = result;
  a3[1] = v5;
  return result;
}

uint64_t sub_1B6177208(uint64_t result)
{
  if (result)
  {
    result = sub_1B6221B44();
    if ((v1 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_1B6177250(void *(*a1)(uint64_t *__return_ptr, uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    v6 = a4 - a3;
    v7 = a3;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  result = a1(&v9, v7, v6);
  if (!v4)
  {
    return v9;
  }

  __break(1u);
  return result;
}

char *sub_1B61772B4(uint64_t a1, uint64_t a2, void *(*a3)(uint64_t *__return_ptr, char *, char *))
{
  result = sub_1B621D4A4();
  if (!result)
  {
    goto LABEL_12;
  }

  v8 = result;
  result = sub_1B621D4C4();
  v9 = a1 - result;
  if (__OFSUB__(a1, result))
  {
    __break(1u);
    goto LABEL_11;
  }

  v10 = __OFSUB__(a2, a1);
  v11 = a2 - a1;
  if (v10)
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  v12 = sub_1B621D4B4();
  if (v12 >= v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = v12;
  }

  result = a3(&v14, &v8[v9], &v8[v9 + v13]);
  if (!v3)
  {
    return v14;
  }

  return result;
}

void *sub_1B6177368@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, void *a4@<X8>)
{
  result = sub_1B6176D78(a1, a2, *a3, a3[1]);
  if (!v4)
  {
    *a4 = result;
    a4[1] = v7;
    a4[2] = v8;
    a4[3] = v9;
  }

  return result;
}

uint64_t sub_1B61773BC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1B6177208(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
    a2[3] = v7;
  }

  return result;
}

uint64_t sub_1B617741C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t Urgency.init(from:)@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  OUTLINED_FUNCTION_0_9();
  sub_1B62220C4();
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_1(v11, v11[3]);
    OUTLINED_FUNCTION_0_9();
    v5 = sub_1B6221F44();
    v7 = v6;
    __swift_destroy_boxed_opaque_existential_1(v11);
    v8._countAndFlagsBits = v5;
    v8._object = v7;
    Urgency.init(rawValue:)(v8);
    v9 = v11[0];
    if (LOBYTE(v11[0]) == 5)
    {
      v9 = 4;
    }

    *a2 = v9;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

WeatherDaemon::Urgency_optional __swiftcall Urgency.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1B6221CD4();

  v5 = 5;
  if (v3 < 5)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t Urgency.rawValue.getter()
{
  result = 0x54414944454D4D49;
  switch(*v0)
  {
    case 1:
      result = 0x4445544345505845;
      break;
    case 2:
      result = 0x455255545546;
      break;
    case 3:
      result = 1414742352;
      break;
    case 4:
      result = 0x4E574F4E4B4E55;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_1B617763C()
{
  result = qword_1EB926770;
  if (!qword_1EB926770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB926770);
  }

  return result;
}

uint64_t sub_1B61776B4@<X0>(uint64_t *a1@<X8>)
{
  result = Urgency.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

_BYTE *storeEnumTagSinglePayload for Urgency(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1B6177850()
{
  result = qword_1EDAAF738;
  if (!qword_1EDAAF738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAAF738);
  }

  return result;
}

uint64_t sub_1B61778A4(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924600);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v18 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924F20);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v18 - v10;
  v12 = type metadata accessor for WeatherRequestMarineHourlyRelativeRange();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for WeatherRequestOptions();
  sub_1B6177A8C(a1 + *(v15 + 48), v11);
  if (__swift_getEnumTagSinglePayload(v11, 1, v12) == 1)
  {
    sub_1B602724C(v11, &qword_1EB924F20);
    sub_1B6220784();
  }

  else
  {
    sub_1B6177AFC(v11, v14);
    v16 = sub_1B621D8F4();
    __swift_storeEnumTagSinglePayload(v8, 1, 1, v16);
    a2 = sub_1B618AD70(a2, a3, v8);
    sub_1B602724C(v8, &qword_1EB924600);
    sub_1B6177B60(v14);
  }

  return a2;
}

uint64_t sub_1B6177A8C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924F20);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B6177AFC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WeatherRequestMarineHourlyRelativeRange();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B6177B60(uint64_t a1)
{
  v2 = type metadata accessor for WeatherRequestMarineHourlyRelativeRange();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t WeatherModel.logName.getter()
{
  type metadata accessor for WeatherModel();
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B6177E08(v0, v3);
  v4 = 0x696C617551726961;
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v4 = 0x57746E6572727563;
      break;
    case 2u:
    case 3u:
      v4 = 0x7473616365726F66;
      break;
    case 4u:
      v4 = 0xD000000000000010;
      break;
    case 5u:
      v4 = 0xD000000000000010;
      break;
    case 6u:
      v4 = 0x6369726F74736968;
      break;
    case 7u:
      v4 = 0x6E6F697461636F6CLL;
      break;
    case 8u:
      v4 = 0x6F46656E6972616DLL;
      break;
    case 9u:
      v4 = 1937204590;
      break;
    case 0xAu:
      OUTLINED_FUNCTION_3_32();
      v4 = 0x4172617551726961;
      break;
    case 0xBu:
      OUTLINED_FUNCTION_3_32();
      v4 = 0x4372617551726961;
      break;
    case 0xCu:
      v4 = 0xD000000000000011;
      break;
    case 0xDu:
      v4 = 0x6E65764565646974;
      break;
    default:
      break;
  }

  sub_1B6177E6C(v3);
  return v4;
}

uint64_t sub_1B6177E08(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WeatherModel();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B6177E6C(uint64_t a1)
{
  v2 = type metadata accessor for WeatherModel();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

_BYTE *storeEnumTagSinglePayload for WeatherModel.MissingProductError(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 15 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 15) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF0)
  {
    v6 = ((a2 - 241) >> 8) + 1;
    *result = a2 + 15;
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
          *result = a2 + 15;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1B6177FA4(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  OUTLINED_FUNCTION_9();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t CurrentWeather.asOf.setter()
{
  v2 = v1 + *(OUTLINED_FUNCTION_23_11() + 20);

  return sub_1B603D764(v0, v2);
}

uint64_t CurrentWeather.cloudCover.setter()
{
  result = OUTLINED_FUNCTION_24_8();
  *(v0 + *(result + 24)) = v1;
  return result;
}

uint64_t CurrentWeather.cloudCoverLowAltPct.setter()
{
  result = OUTLINED_FUNCTION_24_8();
  *(v0 + *(result + 28)) = v1;
  return result;
}

uint64_t CurrentWeather.cloudCoverMidAltPct.setter()
{
  result = OUTLINED_FUNCTION_24_8();
  *(v0 + *(result + 32)) = v1;
  return result;
}

uint64_t CurrentWeather.cloudCoverHighAltPct.setter()
{
  result = OUTLINED_FUNCTION_24_8();
  *(v0 + *(result + 36)) = v1;
  return result;
}

uint64_t CurrentWeather.conditionCode.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for CurrentWeather();
  *(v1 + *(result + 40)) = v2;
  return result;
}

uint64_t CurrentWeather.daylight.setter(char a1)
{
  result = type metadata accessor for CurrentWeather();
  *(v1 + *(result + 44)) = a1;
  return result;
}

uint64_t CurrentWeather.humidity.setter()
{
  result = OUTLINED_FUNCTION_24_8();
  *(v0 + *(result + 48)) = v1;
  return result;
}

uint64_t CurrentWeather.precipitationAmount1h.setter()
{
  result = OUTLINED_FUNCTION_24_8();
  *(v0 + *(result + 52)) = v1;
  return result;
}

uint64_t CurrentWeather.precipitationAmount6h.setter()
{
  result = OUTLINED_FUNCTION_24_8();
  *(v0 + *(result + 56)) = v1;
  return result;
}

uint64_t CurrentWeather.precipitationAmount24h.setter()
{
  result = OUTLINED_FUNCTION_24_8();
  *(v0 + *(result + 60)) = v1;
  return result;
}

uint64_t CurrentWeather.precipitationAmountNext1h.setter()
{
  result = OUTLINED_FUNCTION_24_8();
  *(v0 + *(result + 64)) = v1;
  return result;
}

uint64_t CurrentWeather.precipitationAmountNext6h.setter()
{
  result = OUTLINED_FUNCTION_24_8();
  *(v0 + *(result + 68)) = v1;
  return result;
}

uint64_t CurrentWeather.precipitationAmountNext24h.setter()
{
  result = OUTLINED_FUNCTION_24_8();
  *(v0 + *(result + 72)) = v1;
  return result;
}

uint64_t CurrentWeather.precipitationAmountPrevious1hByType.setter()
{
  v2 = *(OUTLINED_FUNCTION_23_11() + 76);

  *(v1 + v2) = v0;
  return result;
}

uint64_t CurrentWeather.precipitationAmountPrevious6hByType.setter()
{
  v2 = *(OUTLINED_FUNCTION_23_11() + 80);

  *(v1 + v2) = v0;
  return result;
}

uint64_t CurrentWeather.precipitationAmountPrevious24hByType.setter()
{
  v2 = *(OUTLINED_FUNCTION_23_11() + 84);

  *(v1 + v2) = v0;
  return result;
}

uint64_t CurrentWeather.precipitationAmountNext1hByType.setter()
{
  v2 = *(OUTLINED_FUNCTION_23_11() + 88);

  *(v1 + v2) = v0;
  return result;
}

uint64_t CurrentWeather.precipitationAmountNext6hByType.setter()
{
  v2 = *(OUTLINED_FUNCTION_23_11() + 92);

  *(v1 + v2) = v0;
  return result;
}

uint64_t CurrentWeather.precipitationAmountNext24hByType.setter()
{
  v2 = *(OUTLINED_FUNCTION_23_11() + 96);

  *(v1 + v2) = v0;
  return result;
}

uint64_t CurrentWeather.precipitationIntensity.setter()
{
  result = OUTLINED_FUNCTION_24_8();
  *(v0 + *(result + 100)) = v1;
  return result;
}

uint64_t CurrentWeather.perceivedPrecipitationIntensity.setter()
{
  result = OUTLINED_FUNCTION_24_8();
  *(v0 + *(result + 104)) = v1;
  return result;
}

uint64_t CurrentWeather.pressureTrend.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for CurrentWeather();
  *(v1 + *(result + 112)) = v2;
  return result;
}

uint64_t CurrentWeather.snowfallAmount1h.setter()
{
  result = OUTLINED_FUNCTION_24_8();
  *(v0 + *(result + 116)) = v1;
  return result;
}

uint64_t CurrentWeather.snowfallAmount6h.setter()
{
  result = OUTLINED_FUNCTION_24_8();
  *(v0 + *(result + 120)) = v1;
  return result;
}

uint64_t CurrentWeather.snowfallAmount24h.setter()
{
  result = OUTLINED_FUNCTION_24_8();
  *(v0 + *(result + 124)) = v1;
  return result;
}

uint64_t CurrentWeather.snowfallAmountNext1h.setter()
{
  result = OUTLINED_FUNCTION_24_8();
  *(v0 + *(result + 128)) = v1;
  return result;
}

uint64_t CurrentWeather.snowfallAmountNext6h.setter()
{
  result = OUTLINED_FUNCTION_24_8();
  *(v0 + *(result + 132)) = v1;
  return result;
}

uint64_t CurrentWeather.snowfallAmountNext24h.setter()
{
  result = OUTLINED_FUNCTION_24_8();
  *(v0 + *(result + 136)) = v1;
  return result;
}

uint64_t CurrentWeather.sunrise.getter()
{
  v2 = v1 + *(OUTLINED_FUNCTION_28_6() + 140);

  return sub_1B6058CE0(v2, v0);
}

uint64_t CurrentWeather.sunrise.setter()
{
  v2 = v1 + *(OUTLINED_FUNCTION_23_11() + 140);

  return sub_1B603D764(v0, v2);
}

uint64_t CurrentWeather.sunset.getter()
{
  v2 = v1 + *(OUTLINED_FUNCTION_28_6() + 144);

  return sub_1B6058CE0(v2, v0);
}

uint64_t CurrentWeather.sunset.setter()
{
  v2 = v1 + *(OUTLINED_FUNCTION_23_11() + 144);

  return sub_1B603D764(v0, v2);
}

uint64_t CurrentWeather.temperature.setter()
{
  result = OUTLINED_FUNCTION_24_8();
  *(v0 + *(result + 148)) = v1;
  return result;
}

uint64_t CurrentWeather.uvIndex.setter()
{
  result = OUTLINED_FUNCTION_23_11();
  *(v1 + *(result + 168)) = v0;
  return result;
}

uint64_t CurrentWeather.visibility.setter()
{
  result = OUTLINED_FUNCTION_24_8();
  *(v0 + *(result + 172)) = v1;
  return result;
}

uint64_t CurrentWeather.windSpeed.setter()
{
  result = OUTLINED_FUNCTION_24_8();
  *(v0 + *(result + 184)) = v1;
  return result;
}

uint64_t CurrentWeather.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v135 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924600);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v136 = &v93 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v93 - v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v93 - v9;
  v11 = type metadata accessor for Metadata();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v93 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v138 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB926778);
  OUTLINED_FUNCTION_2();
  v15 = v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v93 - v17;
  v19 = a1[3];
  v140 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v19);
  sub_1B6179FEC();
  v137 = v18;
  v20 = v139;
  sub_1B62220D4();
  if (!v20)
  {
    v133 = v7;
    v134 = v10;
    v139 = v15;
    LOBYTE(v147) = 0;
    OUTLINED_FUNCTION_19_12();
    sub_1B617B858(v21, v22);
    OUTLINED_FUNCTION_32_7();
    sub_1B6221DD4();
    v23 = sub_1B621D8F4();
    LOBYTE(v147) = 1;
    OUTLINED_FUNCTION_18_14();
    v26 = sub_1B617B858(v24, v25);
    OUTLINED_FUNCTION_8_23();
    sub_1B6221D24();
    LOBYTE(v145) = 2;
    OUTLINED_FUNCTION_3_33();
    sub_1B6221D24();
    v27 = OUTLINED_FUNCTION_10_15();
    if (v28)
    {
      v29 = v27;
    }

    else
    {
      v29 = 0.0;
    }

    LOBYTE(v145) = 3;
    OUTLINED_FUNCTION_3_33();
    sub_1B6221D24();
    v30 = OUTLINED_FUNCTION_10_15();
    if (v28)
    {
      v31 = v30;
    }

    else
    {
      v31 = 0.0;
    }

    LOBYTE(v145) = 4;
    OUTLINED_FUNCTION_3_33();
    sub_1B6221D24();
    v32 = OUTLINED_FUNCTION_10_15();
    if (v28)
    {
      v33 = v32;
    }

    else
    {
      v33 = 0.0;
    }

    LOBYTE(v145) = 5;
    OUTLINED_FUNCTION_3_33();
    sub_1B6221D24();
    v34 = OUTLINED_FUNCTION_10_15();
    if (v28)
    {
      v35 = v34;
    }

    else
    {
      v35 = 0.0;
    }

    LOBYTE(v147) = 6;
    sub_1B60FDA64();
    OUTLINED_FUNCTION_12_17();
    sub_1B6221DD4();
    v37 = v151;
    OUTLINED_FUNCTION_7_18(7);
    v38 = sub_1B6221DA4();
    OUTLINED_FUNCTION_7_18(8);
    sub_1B6221DB4();
    v149 = v37;
    v130 = v26;
    v129 = v39;
    LOBYTE(v145) = 9;
    OUTLINED_FUNCTION_15_17();
    OUTLINED_FUNCTION_16_18();
    v40 = OUTLINED_FUNCTION_10_15();
    v41 = 0.0;
    if (!v28)
    {
      v40 = 0.0;
    }

    v132 = v40;
    OUTLINED_FUNCTION_5_31(10);
    OUTLINED_FUNCTION_16_18();
    v42 = OUTLINED_FUNCTION_10_15();
    if (!v28)
    {
      v42 = 0.0;
    }

    v131 = v42;
    OUTLINED_FUNCTION_5_31(11);
    OUTLINED_FUNCTION_16_18();
    v43 = OUTLINED_FUNCTION_10_15();
    if (v28)
    {
      v44 = v43;
    }

    else
    {
      v44 = 0.0;
    }

    OUTLINED_FUNCTION_5_31(12);
    OUTLINED_FUNCTION_16_18();
    v45 = OUTLINED_FUNCTION_10_15();
    if (v28)
    {
      v46 = v45;
    }

    else
    {
      v46 = 0.0;
    }

    OUTLINED_FUNCTION_5_31(13);
    OUTLINED_FUNCTION_16_18();
    v47 = OUTLINED_FUNCTION_10_15();
    if (v28)
    {
      v48 = v47;
    }

    else
    {
      v48 = 0.0;
    }

    OUTLINED_FUNCTION_5_31(14);
    OUTLINED_FUNCTION_16_18();
    v49 = OUTLINED_FUNCTION_10_15();
    if (v28)
    {
      v41 = v49;
    }

    LOBYTE(v147) = 15;
    sub_1B617A040();
    OUTLINED_FUNCTION_12_17();
    v128 = sub_1B6221D14();
    v127 = v48;
    v126 = v46;
    v125 = v44;
    v50 = v131;
    v51 = v132;
    LOBYTE(v147) = 16;
    OUTLINED_FUNCTION_12_17();
    v124 = OUTLINED_FUNCTION_29_8();
    LOBYTE(v147) = 17;
    OUTLINED_FUNCTION_12_17();
    v123 = OUTLINED_FUNCTION_29_8();
    LOBYTE(v147) = 18;
    OUTLINED_FUNCTION_12_17();
    v122 = OUTLINED_FUNCTION_29_8();
    LOBYTE(v147) = 19;
    OUTLINED_FUNCTION_12_17();
    v121 = OUTLINED_FUNCTION_29_8();
    v120 = v23;
    v118 = v41;
    v52 = v51;
    LOBYTE(v147) = 20;
    OUTLINED_FUNCTION_12_17();
    v119 = OUTLINED_FUNCTION_29_8();
    LOBYTE(v145) = 21;
    OUTLINED_FUNCTION_15_17();
    OUTLINED_FUNCTION_32_7();
    sub_1B6221D24();
    v53 = OUTLINED_FUNCTION_10_15();
    v54 = 0.0;
    if (v28)
    {
      v55 = v53;
    }

    else
    {
      v55 = 0.0;
    }

    OUTLINED_FUNCTION_1_40(22);
    v56 = OUTLINED_FUNCTION_10_15();
    if (!v28)
    {
      v56 = 0.0;
    }

    v117 = v56;
    OUTLINED_FUNCTION_1_40(23);
    v110 = v147;
    LODWORD(v109) = v148;
    LOBYTE(v145) = 24;
    sub_1B60FDAB8();
    OUTLINED_FUNCTION_15_17();
    sub_1B6221D24();
    v57 = v147;
    if (v147 == 3)
    {
      v57 = 2;
    }

    v116 = v57;
    OUTLINED_FUNCTION_1_40(25);
    v58 = OUTLINED_FUNCTION_10_15();
    if (!v28)
    {
      v58 = 0.0;
    }

    v115 = v58;
    OUTLINED_FUNCTION_1_40(26);
    v59 = OUTLINED_FUNCTION_10_15();
    if (!v28)
    {
      v59 = 0.0;
    }

    v114 = v59;
    OUTLINED_FUNCTION_1_40(27);
    v60 = OUTLINED_FUNCTION_10_15();
    if (!v28)
    {
      v60 = 0.0;
    }

    v113 = v60;
    OUTLINED_FUNCTION_1_40(28);
    v61 = OUTLINED_FUNCTION_10_15();
    if (!v28)
    {
      v61 = 0.0;
    }

    v112 = v61;
    OUTLINED_FUNCTION_1_40(29);
    v62 = OUTLINED_FUNCTION_10_15();
    if (!v28)
    {
      v62 = 0.0;
    }

    v111 = v62;
    OUTLINED_FUNCTION_1_40(30);
    v63 = OUTLINED_FUNCTION_10_15();
    if (v28)
    {
      v54 = v63;
    }

    LOBYTE(v147) = 31;
    OUTLINED_FUNCTION_8_23();
    sub_1B6221D24();
    LOBYTE(v147) = 32;
    OUTLINED_FUNCTION_8_23();
    sub_1B6221D24();
    OUTLINED_FUNCTION_7_18(33);
    sub_1B6221DB4();
    v130 = v64;
    LOBYTE(v145) = 34;
    OUTLINED_FUNCTION_15_17();
    OUTLINED_FUNCTION_32_7();
    sub_1B6221D24();
    v65 = v147;
    LODWORD(v104) = v148;
    LOBYTE(v145) = 35;
    OUTLINED_FUNCTION_3_33();
    sub_1B6221D24();
    v103 = v147;
    LODWORD(v102) = v148;
    LOBYTE(v145) = 36;
    OUTLINED_FUNCTION_3_33();
    sub_1B6221D24();
    v108 = v147;
    v107 = v148;
    LOBYTE(v143) = 37;
    sub_1B6221D24();
    v66 = v145;
    v106 = v146;
    LOBYTE(v143) = 38;
    v105 = sub_1B6221DC4();
    LOBYTE(v143) = 39;
    sub_1B6221DB4();
    v101 = v67;
    LOBYTE(v141) = 40;
    OUTLINED_FUNCTION_32_7();
    sub_1B6221D24();
    v100 = v143;
    v99 = v144;
    v150 = 41;
    sub_1B6221D24();
    v98 = v141;
    v97 = v142;
    v150 = 42;
    sub_1B6221DB4();
    v96 = v68;
    v69 = v110;
    if (v109)
    {
      v69 = 0;
    }

    v95 = v69;
    if (v104)
    {
      v70 = 0;
    }

    else
    {
      v70 = v65;
    }

    v110 = v70;
    v71 = v103;
    if (v102)
    {
      v71 = 0;
    }

    v109 = v71;
    (*(v139 + 8))(v137, v138);
    v72 = type metadata accessor for CurrentWeather();
    v73 = v72[5];
    v74 = v135;
    v75 = v120;
    __swift_storeEnumTagSinglePayload(v135 + v73, 1, 1, v120);
    v76 = v72[28];
    v102 = (v74 + v72[27]);
    *(v74 + v76) = 3;
    v94 = v72[35];
    v77 = OUTLINED_FUNCTION_22_8(v94);
    __swift_storeEnumTagSinglePayload(v77, v78, v79, v75);
    v139 = v72[36];
    v80 = OUTLINED_FUNCTION_22_8(v139);
    __swift_storeEnumTagSinglePayload(v80, v81, v82, v75);
    v83 = v72[39];
    v103 = (v74 + v72[38]);
    v137 = (v74 + v83);
    v84 = v72[41];
    v104 = (v74 + v72[40]);
    v120 = (v74 + v84);
    v85 = v72[45];
    v138 = (v74 + v72[44]);
    v86 = v74 + v85;
    sub_1B603D8D8(v13, v74);
    sub_1B603D764(v134, v74 + v73);
    *(v74 + v72[6]) = v29;
    *(v74 + v72[7]) = v31;
    *(v74 + v72[8]) = v33;
    *(v74 + v72[9]) = v35;
    *(v74 + v72[10]) = v149;
    *(v74 + v72[11]) = v38 & 1;
    OUTLINED_FUNCTION_17_17(v72[12]);
    *(v74 + v72[13]) = v52;
    *(v74 + v72[14]) = v50;
    OUTLINED_FUNCTION_17_17(v72[15]);
    OUTLINED_FUNCTION_17_17(v72[16]);
    OUTLINED_FUNCTION_17_17(v72[17]);
    OUTLINED_FUNCTION_17_17(v72[18]);
    OUTLINED_FUNCTION_25_8(v72[19]);
    OUTLINED_FUNCTION_25_8(v72[20]);
    OUTLINED_FUNCTION_25_8(v72[21]);
    OUTLINED_FUNCTION_25_8(v72[22]);
    OUTLINED_FUNCTION_25_8(v72[23]);
    OUTLINED_FUNCTION_25_8(v72[24]);
    *(v74 + v72[25]) = v55;
    OUTLINED_FUNCTION_17_17(v72[26]);
    v87 = v102;
    *v102 = v95;
    *(v87 + 8) = 0;
    *(v74 + v76) = v116;
    OUTLINED_FUNCTION_17_17(v72[29]);
    OUTLINED_FUNCTION_17_17(v72[30]);
    OUTLINED_FUNCTION_17_17(v72[31]);
    OUTLINED_FUNCTION_17_17(v72[32]);
    OUTLINED_FUNCTION_17_17(v72[33]);
    *(v74 + v72[34]) = v54;
    sub_1B603D764(v133, v74 + v94);
    sub_1B603D764(v136, v74 + v139);
    OUTLINED_FUNCTION_17_17(v72[37]);
    v88 = v103;
    *v103 = v110;
    *(v88 + 8) = 0;
    v89 = v137;
    *v137 = v109;
    *(v89 + 8) = 0;
    v90 = v104;
    *v104 = v108;
    *(v90 + 8) = v107;
    v91 = v120;
    *v120 = v66;
    *(v91 + 8) = v106;
    OUTLINED_FUNCTION_25_8(v72[42]);
    OUTLINED_FUNCTION_17_17(v72[43]);
    v92 = v138;
    *v138 = v100;
    *(v92 + 8) = v99;
    *v86 = v98;
    *(v86 + 8) = v97;
    OUTLINED_FUNCTION_17_17(v72[46]);
  }

  return __swift_destroy_boxed_opaque_existential_1(v140);
}

unint64_t sub_1B6179FEC()
{
  result = qword_1EDAB2078;
  if (!qword_1EDAB2078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAB2078);
  }

  return result;
}

unint64_t sub_1B617A040()
{
  result = qword_1EDAB11C8;
  if (!qword_1EDAB11C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAB11C8);
  }

  return result;
}

uint64_t sub_1B617A094(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x617461646174656DLL && a2 == 0xE800000000000000;
  if (v4 || (sub_1B6221F24() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 1716482913 && a2 == 0xE400000000000000;
    if (v6 || (sub_1B6221F24() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x766F4364756F6C63 && a2 == 0xEA00000000007265;
      if (v7 || (sub_1B6221F24() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000013 && 0x80000001B623D7A0 == a2;
        if (v8 || (sub_1B6221F24() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0xD000000000000013 && 0x80000001B623D7C0 == a2;
          if (v9 || (sub_1B6221F24() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0xD000000000000014 && 0x80000001B623D7E0 == a2;
            if (v10 || (sub_1B6221F24() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x6F697469646E6F63 && a2 == 0xED000065646F436ELL;
              if (v11 || (sub_1B6221F24() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x746867696C796164 && a2 == 0xE800000000000000;
                if (v12 || (sub_1B6221F24() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0x79746964696D7568 && a2 == 0xE800000000000000;
                  if (v13 || (sub_1B6221F24() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0xD000000000000015 && 0x80000001B623E820 == a2;
                    if (v14 || (sub_1B6221F24() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v15 = a1 == 0xD000000000000015 && 0x80000001B623E840 == a2;
                      if (v15 || (sub_1B6221F24() & 1) != 0)
                      {

                        return 10;
                      }

                      else
                      {
                        v16 = a1 == 0xD000000000000016 && 0x80000001B623E860 == a2;
                        if (v16 || (sub_1B6221F24() & 1) != 0)
                        {

                          return 11;
                        }

                        else
                        {
                          v17 = a1 == 0xD000000000000019 && 0x80000001B623E880 == a2;
                          if (v17 || (sub_1B6221F24() & 1) != 0)
                          {

                            return 12;
                          }

                          else
                          {
                            v18 = a1 == 0xD000000000000019 && 0x80000001B623E8A0 == a2;
                            if (v18 || (sub_1B6221F24() & 1) != 0)
                            {

                              return 13;
                            }

                            else
                            {
                              v19 = a1 == 0xD00000000000001ALL && 0x80000001B623E8C0 == a2;
                              if (v19 || (sub_1B6221F24() & 1) != 0)
                              {

                                return 14;
                              }

                              else
                              {
                                v20 = a1 == 0xD000000000000023 && 0x80000001B623E8E0 == a2;
                                if (v20 || (sub_1B6221F24() & 1) != 0)
                                {

                                  return 15;
                                }

                                else
                                {
                                  v21 = a1 == 0xD000000000000023 && 0x80000001B623E910 == a2;
                                  if (v21 || (sub_1B6221F24() & 1) != 0)
                                  {

                                    return 16;
                                  }

                                  else
                                  {
                                    v22 = a1 == 0xD000000000000024 && 0x80000001B623E940 == a2;
                                    if (v22 || (sub_1B6221F24() & 1) != 0)
                                    {

                                      return 17;
                                    }

                                    else
                                    {
                                      v23 = a1 == 0xD00000000000001FLL && 0x80000001B623E970 == a2;
                                      if (v23 || (sub_1B6221F24() & 1) != 0)
                                      {

                                        return 18;
                                      }

                                      else
                                      {
                                        v24 = a1 == 0xD00000000000001FLL && 0x80000001B623E990 == a2;
                                        if (v24 || (sub_1B6221F24() & 1) != 0)
                                        {

                                          return 19;
                                        }

                                        else
                                        {
                                          v25 = a1 == 0xD000000000000020 && 0x80000001B623E9B0 == a2;
                                          if (v25 || (sub_1B6221F24() & 1) != 0)
                                          {

                                            return 20;
                                          }

                                          else
                                          {
                                            v26 = a1 == 0xD000000000000016 && 0x80000001B623CEF0 == a2;
                                            if (v26 || (sub_1B6221F24() & 1) != 0)
                                            {

                                              return 21;
                                            }

                                            else
                                            {
                                              v27 = a1 == 0xD00000000000001FLL && 0x80000001B623D840 == a2;
                                              if (v27 || (sub_1B6221F24() & 1) != 0)
                                              {

                                                return 22;
                                              }

                                              else
                                              {
                                                v28 = a1 == 0x6572757373657270 && a2 == 0xE800000000000000;
                                                if (v28 || (sub_1B6221F24() & 1) != 0)
                                                {

                                                  return 23;
                                                }

                                                else
                                                {
                                                  v29 = a1 == 0x6572757373657270 && a2 == 0xED0000646E657254;
                                                  if (v29 || (sub_1B6221F24() & 1) != 0)
                                                  {

                                                    return 24;
                                                  }

                                                  else
                                                  {
                                                    v30 = a1 == 0xD000000000000010 && 0x80000001B623E9E0 == a2;
                                                    if (v30 || (sub_1B6221F24() & 1) != 0)
                                                    {

                                                      return 25;
                                                    }

                                                    else
                                                    {
                                                      v31 = a1 == 0xD000000000000010 && 0x80000001B623EA00 == a2;
                                                      if (v31 || (sub_1B6221F24() & 1) != 0)
                                                      {

                                                        return 26;
                                                      }

                                                      else
                                                      {
                                                        v32 = a1 == 0xD000000000000011 && 0x80000001B623EA20 == a2;
                                                        if (v32 || (sub_1B6221F24() & 1) != 0)
                                                        {

                                                          return 27;
                                                        }

                                                        else
                                                        {
                                                          v33 = a1 == 0xD000000000000014 && 0x80000001B623EA40 == a2;
                                                          if (v33 || (sub_1B6221F24() & 1) != 0)
                                                          {

                                                            return 28;
                                                          }

                                                          else
                                                          {
                                                            v34 = a1 == 0xD000000000000014 && 0x80000001B623EA60 == a2;
                                                            if (v34 || (sub_1B6221F24() & 1) != 0)
                                                            {

                                                              return 29;
                                                            }

                                                            else
                                                            {
                                                              v35 = a1 == 0xD000000000000015 && 0x80000001B623EA80 == a2;
                                                              if (v35 || (sub_1B6221F24() & 1) != 0)
                                                              {

                                                                return 30;
                                                              }

                                                              else
                                                              {
                                                                v36 = a1 == 0x657369726E7573 && a2 == 0xE700000000000000;
                                                                if (v36 || (sub_1B6221F24() & 1) != 0)
                                                                {

                                                                  return 31;
                                                                }

                                                                else
                                                                {
                                                                  v37 = a1 == 0x7465736E7573 && a2 == 0xE600000000000000;
                                                                  if (v37 || (sub_1B6221F24() & 1) != 0)
                                                                  {

                                                                    return 32;
                                                                  }

                                                                  else
                                                                  {
                                                                    v38 = a1 == 0x74617265706D6574 && a2 == 0xEB00000000657275;
                                                                    if (v38 || (sub_1B6221F24() & 1) != 0)
                                                                    {

                                                                      return 33;
                                                                    }

                                                                    else
                                                                    {
                                                                      v39 = a1 == 0xD000000000000013 && 0x80000001B623D880 == a2;
                                                                      if (v39 || (sub_1B6221F24() & 1) != 0)
                                                                      {

                                                                        return 34;
                                                                      }

                                                                      else
                                                                      {
                                                                        v40 = a1 == 0xD000000000000013 && 0x80000001B623D8A0 == a2;
                                                                        if (v40 || (sub_1B6221F24() & 1) != 0)
                                                                        {

                                                                          return 35;
                                                                        }

                                                                        else
                                                                        {
                                                                          v41 = a1 == 0xD000000000000013 && 0x80000001B623EAA0 == a2;
                                                                          if (v41 || (sub_1B6221F24() & 1) != 0)
                                                                          {

                                                                            return 36;
                                                                          }

                                                                          else
                                                                          {
                                                                            v42 = a1 == 0xD000000000000013 && 0x80000001B623EAC0 == a2;
                                                                            if (v42 || (sub_1B6221F24() & 1) != 0)
                                                                            {

                                                                              return 37;
                                                                            }

                                                                            else
                                                                            {
                                                                              v43 = a1 == 0x7865646E497675 && a2 == 0xE700000000000000;
                                                                              if (v43 || (sub_1B6221F24() & 1) != 0)
                                                                              {

                                                                                return 38;
                                                                              }

                                                                              else
                                                                              {
                                                                                v44 = a1 == 0x696C696269736976 && a2 == 0xEA00000000007974;
                                                                                if (v44 || (sub_1B6221F24() & 1) != 0)
                                                                                {

                                                                                  return 39;
                                                                                }

                                                                                else
                                                                                {
                                                                                  v45 = a1 == 0x65726944646E6977 && a2 == 0xED00006E6F697463;
                                                                                  if (v45 || (sub_1B6221F24() & 1) != 0)
                                                                                  {

                                                                                    return 40;
                                                                                  }

                                                                                  else
                                                                                  {
                                                                                    v46 = a1 == 0x74737547646E6977 && a2 == 0xE800000000000000;
                                                                                    if (v46 || (sub_1B6221F24() & 1) != 0)
                                                                                    {

                                                                                      return 41;
                                                                                    }

                                                                                    else if (a1 == 0x65657053646E6977 && a2 == 0xE900000000000064)
                                                                                    {

                                                                                      return 42;
                                                                                    }

                                                                                    else
                                                                                    {
                                                                                      v48 = sub_1B6221F24();

                                                                                      if (v48)
                                                                                      {
                                                                                        return 42;
                                                                                      }

                                                                                      else
                                                                                      {
                                                                                        return 43;
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
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_1B617AD00(char a1)
{
  result = 0x617461646174656DLL;
  switch(a1)
  {
    case 1:
      result = 1716482913;
      break;
    case 2:
      result = 0x766F4364756F6C63;
      break;
    case 3:
      result = 0xD000000000000013;
      break;
    case 4:
      result = 0xD000000000000013;
      break;
    case 5:
    case 28:
    case 29:
      result = 0xD000000000000014;
      break;
    case 6:
      result = 0x6F697469646E6F63;
      break;
    case 7:
      result = 0x746867696C796164;
      break;
    case 8:
      result = 0x79746964696D7568;
      break;
    case 9:
    case 10:
    case 30:
      result = 0xD000000000000015;
      break;
    case 11:
    case 21:
      result = 0xD000000000000016;
      break;
    case 12:
    case 13:
      result = 0xD000000000000019;
      break;
    case 14:
      result = 0xD00000000000001ALL;
      break;
    case 15:
    case 16:
      result = 0xD000000000000023;
      break;
    case 17:
      result = 0xD000000000000024;
      break;
    case 18:
    case 19:
    case 22:
      result = 0xD00000000000001FLL;
      break;
    case 20:
      result = 0xD000000000000020;
      break;
    case 23:
    case 24:
      v3 = 0x757373657270;
      goto LABEL_13;
    case 25:
    case 26:
      result = 0xD000000000000010;
      break;
    case 27:
      result = 0xD000000000000011;
      break;
    case 31:
      result = 0x657369726E7573;
      break;
    case 32:
      result = 0x7465736E7573;
      break;
    case 33:
      result = 0x74617265706D6574;
      break;
    case 34:
      result = 0xD000000000000013;
      break;
    case 35:
      result = 0xD000000000000013;
      break;
    case 36:
      result = 0xD000000000000013;
      break;
    case 37:
      result = 0xD000000000000013;
      break;
    case 38:
      result = 0x7865646E497675;
      break;
    case 39:
      result = 0x696C696269736976;
      break;
    case 40:
      v3 = 0x6944646E6977;
LABEL_13:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x6572000000000000;
      break;
    case 41:
      result = 0x74737547646E6977;
      break;
    case 42:
      result = 0x65657053646E6977;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1B617B10C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B617A094(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B617B134@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1B617ACF8();
  *a1 = result;
  return result;
}

uint64_t sub_1B617B15C(uint64_t a1)
{
  v2 = sub_1B6179FEC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B617B198(uint64_t a1)
{
  v2 = sub_1B6179FEC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t CurrentWeather.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB926780);
  OUTLINED_FUNCTION_2();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = v19 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B6179FEC();
  sub_1B62220F4();
  v20 = 0;
  type metadata accessor for Metadata();
  OUTLINED_FUNCTION_19_12();
  sub_1B617B858(v11, v12);
  OUTLINED_FUNCTION_13_17();
  sub_1B6221EC4();
  if (!v2)
  {
    v13 = type metadata accessor for CurrentWeather();
    v20 = 1;
    sub_1B621D8F4();
    OUTLINED_FUNCTION_18_14();
    sub_1B617B858(v14, v15);
    OUTLINED_FUNCTION_27_8();
    OUTLINED_FUNCTION_13_17();
    sub_1B6221E74();
    OUTLINED_FUNCTION_2_38(2);
    OUTLINED_FUNCTION_2_38(3);
    OUTLINED_FUNCTION_2_38(4);
    OUTLINED_FUNCTION_2_38(5);
    v20 = *(v3 + v13[10]);
    v21 = 6;
    sub_1B60FE980();
    OUTLINED_FUNCTION_9_2();
    OUTLINED_FUNCTION_13_17();
    sub_1B6221EC4();
    v20 = 7;
    OUTLINED_FUNCTION_27_8();
    OUTLINED_FUNCTION_13_17();
    sub_1B6221E94();
    OUTLINED_FUNCTION_2_38(8);
    OUTLINED_FUNCTION_2_38(9);
    OUTLINED_FUNCTION_2_38(10);
    OUTLINED_FUNCTION_2_38(11);
    OUTLINED_FUNCTION_2_38(12);
    OUTLINED_FUNCTION_2_38(13);
    OUTLINED_FUNCTION_2_38(14);
    OUTLINED_FUNCTION_26_9(v13[19]);
    v21 = 15;
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB926788);
    sub_1B617B8A0();
    OUTLINED_FUNCTION_9_2();
    v19[1] = v17;
    v19[2] = v16;
    OUTLINED_FUNCTION_13_17();
    sub_1B6221EC4();
    OUTLINED_FUNCTION_26_9(v13[20]);
    OUTLINED_FUNCTION_7_24(16);
    OUTLINED_FUNCTION_26_9(v13[21]);
    OUTLINED_FUNCTION_7_24(17);
    OUTLINED_FUNCTION_26_9(v13[22]);
    OUTLINED_FUNCTION_7_24(18);
    OUTLINED_FUNCTION_26_9(v13[23]);
    OUTLINED_FUNCTION_7_24(19);
    OUTLINED_FUNCTION_26_9(v13[24]);
    OUTLINED_FUNCTION_7_24(20);
    OUTLINED_FUNCTION_2_38(21);
    OUTLINED_FUNCTION_2_38(22);
    OUTLINED_FUNCTION_4_1(v13[27]);
    OUTLINED_FUNCTION_0_67(23);
    sub_1B6221E44();
    v20 = *(v3 + v13[28]);
    v21 = 24;
    sub_1B60FE9D4();
    OUTLINED_FUNCTION_9_2();
    OUTLINED_FUNCTION_13_17();
    sub_1B6221E74();
    OUTLINED_FUNCTION_2_38(25);
    OUTLINED_FUNCTION_2_38(26);
    OUTLINED_FUNCTION_2_38(27);
    OUTLINED_FUNCTION_2_38(28);
    OUTLINED_FUNCTION_2_38(29);
    OUTLINED_FUNCTION_2_38(30);
    v20 = 31;
    OUTLINED_FUNCTION_27_8();
    OUTLINED_FUNCTION_13_17();
    sub_1B6221E74();
    v20 = 32;
    OUTLINED_FUNCTION_27_8();
    OUTLINED_FUNCTION_13_17();
    sub_1B6221E74();
    OUTLINED_FUNCTION_2_38(33);
    OUTLINED_FUNCTION_4_1(v13[38]);
    OUTLINED_FUNCTION_0_67(34);
    sub_1B6221E44();
    OUTLINED_FUNCTION_4_1(v13[39]);
    OUTLINED_FUNCTION_0_67(35);
    sub_1B6221E44();
    OUTLINED_FUNCTION_4_1(v13[40]);
    OUTLINED_FUNCTION_0_67(36);
    sub_1B6221E44();
    OUTLINED_FUNCTION_4_1(v13[41]);
    OUTLINED_FUNCTION_0_67(37);
    sub_1B6221E44();
    v20 = 38;
    OUTLINED_FUNCTION_27_8();
    OUTLINED_FUNCTION_13_17();
    sub_1B6221EB4();
    OUTLINED_FUNCTION_2_38(39);
    OUTLINED_FUNCTION_4_1(v13[44]);
    OUTLINED_FUNCTION_0_67(40);
    sub_1B6221E64();
    OUTLINED_FUNCTION_4_1(v13[45]);
    OUTLINED_FUNCTION_0_67(41);
    sub_1B6221E44();
    OUTLINED_FUNCTION_2_38(42);
  }

  return (*(v7 + 8))(v10, v5);
}

uint64_t sub_1B617B858(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1B617B8A0()
{
  result = qword_1EDAB0DE8;
  if (!qword_1EDAB0DE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB926788);
    sub_1B617B924();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAB0DE8);
  }

  return result;
}

unint64_t sub_1B617B924()
{
  result = qword_1EDAB11D0;
  if (!qword_1EDAB11D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAB11D0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CurrentWeather.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xD6)
  {
    if (a2 + 42 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 42) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 43;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x2B;
  v5 = v6 - 43;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for CurrentWeather.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 42 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 42) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xD6)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xD5)
  {
    v6 = ((a2 - 214) >> 8) + 1;
    *result = a2 + 42;
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
          *result = a2 + 42;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1B617BB40()
{
  result = qword_1EB926790;
  if (!qword_1EB926790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB926790);
  }

  return result;
}

unint64_t sub_1B617BB98()
{
  result = qword_1EDAB2068;
  if (!qword_1EDAB2068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAB2068);
  }

  return result;
}

unint64_t sub_1B617BBF0()
{
  result = qword_1EDAB2070;
  if (!qword_1EDAB2070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAB2070);
  }

  return result;
}

void ForecastCondition.write(to:)()
{
  OUTLINED_FUNCTION_94_1();
  OUTLINED_FUNCTION_44_3();
  sub_1B621D774();
  if (!v0)
  {
    type metadata accessor for ForecastCondition();
    OUTLINED_FUNCTION_103_1();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924600);
    OUTLINED_FUNCTION_66();
    sub_1B6221A04();
    OUTLINED_FUNCTION_93_0();
    type metadata accessor for PrecipitationConditionParameter();
    sub_1B6077C6C(&unk_1EDAAFD50, type metadata accessor for PrecipitationConditionParameter);
    OUTLINED_FUNCTION_56_1();
    sub_1B6077C6C(v1, type metadata accessor for PrecipitationConditionParameter);
    OUTLINED_FUNCTION_21_11();
    OUTLINED_FUNCTION_73_1();
    sub_1B62214E4();
    OUTLINED_FUNCTION_66();
    ForecastToken.write(to:)();
    OUTLINED_FUNCTION_66();
    PollutantType.write(to:)();
    OUTLINED_FUNCTION_66();
    PollutantType.write(to:)();
  }

  OUTLINED_FUNCTION_95_1();
}

void static HistoricalFact.read(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, unsigned __int8 a12, char a13)
{
  OUTLINED_FUNCTION_12_0();
  v16 = v15;
  v17 = type metadata accessor for Metadata();
  v18 = OUTLINED_FUNCTION_0(v17);
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_45_0();
  OUTLINED_FUNCTION_70_0();
  if (!v13)
  {
    if (a13 == 2)
    {
      v19 = 1;
    }

    else
    {
      if (a13 != 1)
      {
        goto LABEL_8;
      }

      v19 = 0;
    }

    OUTLINED_FUNCTION_70_0();
    v20 = a12 - 1;
    if (v20 <= 2)
    {
      OUTLINED_FUNCTION_106_1();
      v21 = sub_1B6221274();
      v23 = v22;
      OUTLINED_FUNCTION_106_1();
      v24 = sub_1B6221274();
      v31 = v30;
      v39 = v24;
      OUTLINED_FUNCTION_106_1();
      v36 = sub_1B6221274();
      v38 = v32;
      sub_1B6181A20();
      sub_1B6181A74();
      v37 = sub_1B62214D4();
      OUTLINED_FUNCTION_106_1();
      static Metadata.read(from:)(v33);
      *v16 = v19;
      *(v16 + 1) = v20;
      *(v16 + 8) = v21;
      *(v16 + 16) = v23;
      *(v16 + 24) = v39;
      *(v16 + 32) = v31;
      *(v16 + 40) = v36;
      *(v16 + 48) = v38;
      *(v16 + 56) = v37;
      type metadata accessor for HistoricalFact();
      OUTLINED_FUNCTION_2_6();
      sub_1B604CB80(v14, v16 + v34, v35);
      goto LABEL_9;
    }

LABEL_8:
    sub_1B6220694();
    OUTLINED_FUNCTION_1_41();
    sub_1B6077C6C(v25, v26);
    v27 = OUTLINED_FUNCTION_17_18();
    OUTLINED_FUNCTION_43_2(v27, v28);
    OUTLINED_FUNCTION_14_1();
    (*(v29 + 104))();
    swift_willThrow();
  }

LABEL_9:
  OUTLINED_FUNCTION_37_1();
  OUTLINED_FUNCTION_13();
}

void HistoricalFact.write(to:)()
{
  OUTLINED_FUNCTION_101_1();
  sub_1B6220854();
  if (!v0)
  {
    OUTLINED_FUNCTION_84_1();
    sub_1B6220854();
    OUTLINED_FUNCTION_84_1();
    sub_1B6221284();
    OUTLINED_FUNCTION_84_1();
    sub_1B6221284();
    OUTLINED_FUNCTION_84_1();
    sub_1B6221284();
    sub_1B6181A20();
    sub_1B6181A74();
    sub_1B62214E4();
    type metadata accessor for HistoricalFact();
    OUTLINED_FUNCTION_84_1();
    Metadata.write(to:)();
  }
}

uint64_t static HistoricalFact.Argument.read(from:)@<X0>(uint64_t a1@<X8>)
{
  result = sub_1B6221274();
  if (!v1)
  {
    v5 = result;
    v6 = v4;
    OUTLINED_FUNCTION_32();
    OUTLINED_FUNCTION_31_4();
    result = sub_1B62219F4();
    *a1 = v5;
    *(a1 + 8) = v6;
    *(a1 + 16) = v8;
    *(a1 + 24) = v7;
  }

  return result;
}

uint64_t HistoricalFact.Argument.write(to:)()
{
  result = sub_1B6221284();
  if (!v0)
  {
    OUTLINED_FUNCTION_5_32();
    sub_1B6220854();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB925FE0);
    OUTLINED_FUNCTION_5_32();
    return sub_1B6221A04();
  }

  return result;
}

uint64_t sub_1B617C350@<X0>(char *a1@<X8>)
{
  result = OUTLINED_FUNCTION_88_1();
  if (!v1)
  {
    if (v10 == 1)
    {
      v4 = 0;
      goto LABEL_6;
    }

    if (v10 == 2)
    {
      v4 = 1;
LABEL_6:
      *a1 = v4;
      return result;
    }

    sub_1B6220694();
    OUTLINED_FUNCTION_1_41();
    sub_1B6077C6C(v5, v6);
    v7 = OUTLINED_FUNCTION_17_18();
    OUTLINED_FUNCTION_43_2(v7, v8);
    OUTLINED_FUNCTION_14_1();
    (*(v9 + 104))();
    return swift_willThrow();
  }

  return result;
}