uint64_t static LocationIndexMapper.makeMapping(from:savedLocations:)(uint64_t a1, uint64_t a2)
{
  result = sub_1C96A6F04();
  v5 = result;
  v6 = 0;
  v7 = a1 + 32;
  v8 = a2;
  v35 = a2 + 96;
  v36 = *(a1 + 16);
  while (1)
  {
    v9 = v6;
    if (v6 == v36)
    {
      v27 = *(v8 + 16);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v39 = v5;
      sub_1C950C0D0(v27, v36, isUniquelyReferenced_nonNull_native, v29, v30, v31, v32, v33, v34, v35);
      return v39;
    }

    if (v6 >= v36)
    {
      break;
    }

    result = memcpy(__dst, (v7 + 72 * v6++), sizeof(__dst));
    if (__OFADD__(v9, 1))
    {
      goto LABEL_21;
    }

    memcpy(v40, (v7 + 72 * v9), sizeof(v40));
    v39 = v9;
    v10 = *(v8 + 16);
    if (v10)
    {
      v11 = 0;
      v12 = *&v40[4];
      v13 = *&v40[5];
      v14 = v35;
      v15 = v40[7];
      v16 = v40[8];
      while (1)
      {
        v18 = *(v14 - 4);
        v17 = *(v14 - 3);
        v19 = *(v14 - 1) == v15 && *v14 == v16;
        if (v19 || (sub_1C96A7DE4()) && v18 == v12 && v17 == v13)
        {
          break;
        }

        ++v11;
        v14 += 9;
        if (v10 == v11)
        {
          goto LABEL_17;
        }
      }

      sub_1C95087DC(__dst, v37);
      v21 = swift_isUniquelyReferenced_nonNull_native();
      v37[0] = v5;
      sub_1C950C0D0(v11, v9, v21, v22, v23, v24, v25, v26, v34, v35);
      result = sub_1C9641614(&v39);
      v5 = v37[0];
    }

    else
    {
LABEL_17:
      sub_1C95087DC(__dst, v37);
      result = sub_1C9641614(&v39);
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_1C9641614(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A7928);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

_BYTE *storeEnumTagSinglePayload for LocationIndexMapper(_BYTE *result, int a2, int a3)
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

unint64_t sub_1C9641764()
{
  result = qword_1EC3A7930;
  if (!qword_1EC3A7930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A7930);
  }

  return result;
}

unint64_t sub_1C96417BC()
{
  result = qword_1EC3A7938;
  if (!qword_1EC3A7938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A7938);
  }

  return result;
}

unint64_t sub_1C964181C()
{
  result = qword_1EC3A7940;
  if (!qword_1EC3A7940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A7940);
  }

  return result;
}

unint64_t sub_1C9641874()
{
  result = qword_1EC3A7948;
  if (!qword_1EC3A7948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A7948);
  }

  return result;
}

WeatherCore::UserIdentityChangeKind sub_1C96418E8@<X0>(Swift::Int *a1@<X0>, uint64_t a2@<X8>)
{
  result.rawValue = UserIdentityChangeKind.init(rawValue:)(*a1).rawValue;
  *a2 = v4;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_1C9641928@<X0>(uint64_t *a1@<X8>)
{
  result = UserIdentityChangeKind.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1C9641964()
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    swift_getObjectType();
    sub_1C96A5F24();

    return swift_unknownObjectRelease();
  }

  return result;
}

unint64_t AppConfigurationSettings.rawValue.getter()
{
  result = 0x303030303030;
  switch(*v0)
  {
    case 1:
      result = 0xD00000000000001CLL;
      break;
    case 2:
      result = 0xD00000000000001DLL;
      break;
    case 3:
      return result;
    case 4:
      result = 0xD000000000000016;
      break;
    default:
      result = 0xD000000000000015;
      break;
  }

  return result;
}

WeatherCore::AppConfigurationSettings_optional __swiftcall AppConfigurationSettings.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1C96A7BE4();

  v5 = 5;
  if (v3 < 5)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t sub_1C9641B1C()
{
  result = qword_1EC3A7950;
  if (!qword_1EC3A7950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A7950);
  }

  return result;
}

unint64_t sub_1C9641B94@<X0>(unint64_t *a1@<X8>)
{
  result = AppConfigurationSettings.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

_BYTE *storeEnumTagSinglePayload for AppConfigurationSettings(_BYTE *result, unsigned int a2, unsigned int a3)
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

BOOL sub_1C9641C98(unsigned __int8 a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = (a2 + 32);
  do
  {
    v4 = v2;
    if (v2-- == 0)
    {
      break;
    }

    v6 = *v3++;
  }

  while (v6 != a1);
  return v4 != 0;
}

uint64_t EndpointConfiguration.init(environment:analyticsURL:widgetAnalyticsURL:weatherDataURL:configurationURL:useDynamicPortForWeatherData:)@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, _BYTE *a7@<X8>)
{
  *a7 = a1;
  v12 = type metadata accessor for EndpointConfiguration();
  v13 = v12[5];
  v14 = sub_1C96A4764();
  OUTLINED_FUNCTION_6();
  v16 = *(v15 + 32);
  v16(&a7[v13], a2, v14);
  sub_1C947D474(a3, &a7[v12[6]]);
  v16(&a7[v12[7]], a4, v14);
  result = (v16)(&a7[v12[8]], a5, v14);
  a7[v12[9]] = a6;
  return result;
}

uint64_t EndpointConfiguration.analyticsURL.getter()
{
  OUTLINED_FUNCTION_20_25();
  sub_1C96A4764();
  OUTLINED_FUNCTION_6();
  v0 = OUTLINED_FUNCTION_3_24();

  return v1(v0);
}

uint64_t EndpointConfiguration.widgetAnalyticsURL.getter()
{
  v2 = v1 + *(OUTLINED_FUNCTION_20_25() + 24);

  return sub_1C947F224(v2, v0);
}

uint64_t EndpointConfiguration.configurationURL.getter()
{
  OUTLINED_FUNCTION_20_25();
  sub_1C96A4764();
  OUTLINED_FUNCTION_6();
  v0 = OUTLINED_FUNCTION_3_24();

  return v1(v0);
}

uint64_t EndpointConfiguration.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A7960);
  OUTLINED_FUNCTION_1();
  v7 = v6;
  OUTLINED_FUNCTION_71();
  MEMORY[0x1EEE9AC00](v8);
  v10 = v13 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C947D174();
  sub_1C96A7F54();
  v19 = *v3;
  v18 = 0;
  sub_1C964224C();
  sub_1C96A7D74();
  if (!v2)
  {
    v11 = type metadata accessor for EndpointConfiguration();
    v17 = 1;
    sub_1C96A4764();
    sub_1C947D430(&qword_1EDB7FD80);
    OUTLINED_FUNCTION_10_40();
    v13[1] = *(v11 + 24);
    v16 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4A70);
    sub_1C96422A0();
    sub_1C96A7D74();
    v15 = 3;
    OUTLINED_FUNCTION_10_40();
    v14 = 4;
    OUTLINED_FUNCTION_10_40();
  }

  return (*(v7 + 8))(v10, v5);
}

uint64_t sub_1C9642138@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C94E859C();
  *a1 = result;
  return result;
}

unint64_t sub_1C9642168@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1C947D1C8(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1C9642194@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C94E859C();
  *a1 = result;
  return result;
}

uint64_t sub_1C96421BC(uint64_t a1)
{
  v2 = sub_1C947D174();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C96421F8(uint64_t a1)
{
  v2 = sub_1C947D174();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1C964224C()
{
  result = qword_1EDB7EB08;
  if (!qword_1EDB7EB08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7EB08);
  }

  return result;
}

unint64_t sub_1C96422A0()
{
  result = qword_1EDB7FD68;
  if (!qword_1EDB7FD68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC3A4A70);
    sub_1C947D430(&qword_1EDB7FD80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7FD68);
  }

  return result;
}

uint64_t static EndpointConfiguration.defaultEndpoints.getter()
{
  if (qword_1EDB7BF10 != -1)
  {
    OUTLINED_FUNCTION_4_5();
  }

  swift_beginAccess();
  return sub_1C96A53C4();
}

uint64_t static EndpointConfiguration.defaultEndpoints.setter(uint64_t a1)
{
  if (qword_1EDB7BF10 != -1)
  {
    OUTLINED_FUNCTION_4_5();
  }

  swift_beginAccess();
  qword_1EDB7BF18 = a1;
}

uint64_t (*static EndpointConfiguration.defaultEndpoints.modify())()
{
  if (qword_1EDB7BF10 != -1)
  {
    OUTLINED_FUNCTION_4_5();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t static EndpointConfiguration.== infix(_:_:)(char *a1, char *a2)
{
  v4 = sub_1C96A4764();
  OUTLINED_FUNCTION_1();
  v33 = v5;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4A70);
  OUTLINED_FUNCTION_71();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v32 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A57D0);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_71();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v32 - v14;
  v16 = *a2;
  v17 = ContentEnvironment.rawValue.getter(*a1);
  v19 = v18;
  v21 = v17 == ContentEnvironment.rawValue.getter(v16) && v19 == v20;
  if (v21)
  {
  }

  else
  {
    v22 = sub_1C96A7DE4();

    if ((v22 & 1) == 0)
    {
      goto LABEL_22;
    }
  }

  v23 = type metadata accessor for EndpointConfiguration();
  if ((sub_1C96A4724() & 1) == 0)
  {
LABEL_22:
    v30 = 0;
    return v30 & 1;
  }

  v24 = *(v23 + 24);
  v25 = *(v12 + 48);
  sub_1C947F224(&a1[v24], v15);
  sub_1C947F224(&a2[v24], &v15[v25]);
  OUTLINED_FUNCTION_23_1(v15, 1, v4);
  if (v21)
  {
    OUTLINED_FUNCTION_23_1(&v15[v25], 1, v4);
    if (v21)
    {
      sub_1C9470AFC(v15, &qword_1EC3A4A70);
      goto LABEL_19;
    }

    goto LABEL_17;
  }

  sub_1C947F224(v15, v11);
  OUTLINED_FUNCTION_23_1(&v15[v25], 1, v4);
  if (v26)
  {
    (*(v33 + 8))(v11, v4);
LABEL_17:
    sub_1C9470AFC(v15, &qword_1EC3A57D0);
    goto LABEL_22;
  }

  v27 = v33;
  (*(v33 + 32))(v8, &v15[v25], v4);
  sub_1C947D430(&qword_1EC3A57D8);
  v28 = sub_1C96A6F94();
  v29 = *(v27 + 8);
  v29(v8, v4);
  v29(v11, v4);
  sub_1C9470AFC(v15, &qword_1EC3A4A70);
  if ((v28 & 1) == 0)
  {
    goto LABEL_22;
  }

LABEL_19:
  if ((sub_1C96A4724() & 1) == 0 || (sub_1C96A4724() & 1) == 0)
  {
    goto LABEL_22;
  }

  v30 = a1[*(v23 + 36)] ^ a2[*(v23 + 36)] ^ 1;
  return v30 & 1;
}

unint64_t sub_1C9642818()
{
  result = qword_1EC3A7968;
  if (!qword_1EC3A7968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A7968);
  }

  return result;
}

void __swiftcall PrivacyConfiguration.init(dataSamplingRate:geocodeSamplingRate:telemetrySamplingRate:userIdentifierResetTimeInterval:privateUserIdentifierResetTimeInterval:reportWeatherUserIdentifierResetTimeInterval:reportWeatherEventSubmissionDrivenIdentifierResetCount:allowAppSessionEventForNonDNUUsers:allowRecordingCDNServer:)(WeatherCore::PrivacyConfiguration *__return_ptr retstr, Swift::Double_optional dataSamplingRate, Swift::Double_optional geocodeSamplingRate, Swift::Double_optional telemetrySamplingRate, Swift::Double_optional userIdentifierResetTimeInterval, Swift::Double_optional privateUserIdentifierResetTimeInterval, Swift::Double_optional reportWeatherUserIdentifierResetTimeInterval, Swift::Int_optional reportWeatherEventSubmissionDrivenIdentifierResetCount, Swift::Bool_optional allowAppSessionEventForNonDNUUsers, Swift::Bool_optional allowRecordingCDNServer)
{
  is_nil = reportWeatherEventSubmissionDrivenIdentifierResetCount.is_nil;
  value = reportWeatherEventSubmissionDrivenIdentifierResetCount.value;
  v10 = reportWeatherUserIdentifierResetTimeInterval.is_nil;
  v11 = userIdentifierResetTimeInterval.is_nil;
  v13 = 0.2;
  v14 = 0.2;
  if (!geocodeSamplingRate.is_nil)
  {
    OUTLINED_FUNCTION_1_32();
    sub_1C96A7534();
    v14 = v15;
  }

  v16 = 0.2;
  if (!v11)
  {
    OUTLINED_FUNCTION_1_32();
    sub_1C96A7534();
    v16 = v17;
  }

  if (!v10)
  {
    OUTLINED_FUNCTION_1_32();
    sub_1C96A7534();
    v13 = v18;
  }

  v19 = *&value;
  if (is_nil)
  {
    v19 = 33696000.0;
  }

  v20 = *&allowAppSessionEventForNonDNUUsers.value;
  v21 = 2592000.0;
  if (v25)
  {
    v20 = 2592000.0;
  }

  if ((v27 & 1) == 0)
  {
    v21 = v26;
  }

  v22 = 10;
  if ((v29 & 1) == 0)
  {
    v22 = v28;
  }

  retstr->dataSamplingRate = v14;
  retstr->geocodeSamplingRate = v16;
  retstr->telemetrySamplingRate = v13;
  retstr->userIdentifierResetTimeInterval = v19;
  retstr->privateUserIdentifierResetTimeInterval = v20;
  retstr->reportWeatherUserIdentifierResetTimeInterval = v21;
  retstr->reportWeatherEventSubmissionDrivenIdentifierResetCount = v22;
  retstr->allowAppSessionEventForNonDNUUsers = (v30 == 2) | v30 & 1;
  retstr->allowRecordingCDNServer = v31 & 1;
}

uint64_t PrivacyConfiguration.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A7980);
  OUTLINED_FUNCTION_1();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  v8 = v11 - v7;
  v11[1] = *(v1 + 48);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C947ACA4();
  sub_1C96A7F54();
  v20 = 0;
  v9 = v11[2];
  sub_1C96A7D44();
  if (!v9)
  {
    v19 = 1;
    OUTLINED_FUNCTION_0_0();
    sub_1C96A7D44();
    v18 = 2;
    OUTLINED_FUNCTION_0_0();
    sub_1C96A7D44();
    v17 = 3;
    OUTLINED_FUNCTION_0_0();
    sub_1C96A7D44();
    v16 = 4;
    OUTLINED_FUNCTION_0_0();
    sub_1C96A7D44();
    v15 = 5;
    OUTLINED_FUNCTION_0_0();
    sub_1C96A7D44();
    v14 = 6;
    OUTLINED_FUNCTION_0_0();
    sub_1C96A7D54();
    v13 = 7;
    OUTLINED_FUNCTION_0_0();
    sub_1C96A7D34();
    v12 = 8;
    OUTLINED_FUNCTION_0_0();
    sub_1C96A7D34();
  }

  return (*(v5 + 8))(v8, v3);
}

uint64_t sub_1C9642C8C()
{
  v0 = sub_1C96A7BE4();

  if (v0 >= 9)
  {
    return 9;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1C9642D04@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C9642C8C();
  *a1 = result;
  return result;
}

unint64_t sub_1C9642D34@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1C947AD14(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1C9642D60@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C9642CD8();
  *a1 = result;
  return result;
}

uint64_t sub_1C9642D88(uint64_t a1)
{
  v2 = sub_1C947ACA4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C9642DC4(uint64_t a1)
{
  v2 = sub_1C947ACA4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

__n128 __swift_memcpy58_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 42) = *(a2 + 42);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_1C9642E38(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 58))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 56);
      v4 = v3 >= 2;
      v2 = (v3 + 2147483646) & 0x7FFFFFFF;
      if (!v4)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

unint64_t sub_1C9642E88()
{
  result = qword_1EC3A7988;
  if (!qword_1EC3A7988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A7988);
  }

  return result;
}

uint64_t dispatch thunk of ActiveUserServiceType.updateLastLaunchDate(to:)()
{
  OUTLINED_FUNCTION_39();
  v9 = (OUTLINED_FUNCTION_38_1(v4, v5, v6) + 16);
  v10 = (*v9 + **v9);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1C94B0CEC;

  return v10(v3, v1, v0);
}

uint64_t dispatch thunk of ActiveUserServiceType.updateLastLaunchDate(of:to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 24) + **(a4 + 24));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1C94B0CEC;

  return v11(a1, a2, a3, a4);
}

uint64_t sub_1C9643124()
{
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_27();
  v2 = v1[6];
  v3 = v1[5];
  v4 = v1[4];
  v5 = *v0;
  OUTLINED_FUNCTION_15();
  *v6 = v5;

  (*(v3 + 8))(v2, v4);
  v7 = OUTLINED_FUNCTION_98();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C9643264()
{
  OUTLINED_FUNCTION_18();
  sub_1C95470C0();

  OUTLINED_FUNCTION_17();

  return v0();
}

uint64_t sub_1C96432D4()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_27();
  v1 = *v0;
  OUTLINED_FUNCTION_15();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_18_29();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1C96433E8()
{
  OUTLINED_FUNCTION_30();
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);
  OUTLINED_FUNCTION_21_26();
  v1 = OUTLINED_FUNCTION_4_4();
  sub_1C94D5EE0(v1, v2);

  OUTLINED_FUNCTION_17();

  return v3();
}

uint64_t sub_1C964346C()
{
  OUTLINED_FUNCTION_18();
  v1 = *v0;
  OUTLINED_FUNCTION_15();
  *v2 = v1;

  v3 = *(v1 + 8);

  return v3();
}

uint64_t sub_1C964358C(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_28_1(sub_1C96435A8, 0);
}

uint64_t sub_1C96435A8()
{
  OUTLINED_FUNCTION_18();
  *(v0 + 40) = 0;
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  OUTLINED_FUNCTION_26_16(v1);

  return sub_1C964363C();
}

uint64_t sub_1C964363C()
{
  OUTLINED_FUNCTION_18();
  v3 = v2;
  *(v1 + 176) = v4;
  *(v1 + 184) = v0;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A7990);
  OUTLINED_FUNCTION_7(v5);
  *(v1 + 192) = OUTLINED_FUNCTION_12_4();
  v6 = sub_1C96A4A54();
  *(v1 + 200) = v6;
  OUTLINED_FUNCTION_9(v6);
  *(v1 + 208) = v7;
  *(v1 + 216) = OUTLINED_FUNCTION_12_4();
  *(v1 + 289) = *v3;
  v8 = OUTLINED_FUNCTION_15_7();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1C9643718(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_94_0();
  a19 = v21;
  a20 = v22;
  a18 = v20;
  if (qword_1EDB77EA8 != -1)
  {
    OUTLINED_FUNCTION_9_1();
  }

  v23 = *(v20 + 208);
  v24 = sub_1C96A6154();
  __swift_project_value_buffer(v24, qword_1EDB77EB0);
  *(v20 + 224) = *(v23 + 16);
  *(v20 + 232) = (v23 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v25 = OUTLINED_FUNCTION_4_4();
  v26(v25);
  v27 = sub_1C96A6134();
  v28 = sub_1C96A76A4();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = *(v20 + 289);
    v31 = *(v20 + 208);
    v30 = *(v20 + 216);
    v32 = *(v20 + 200);
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    a9 = v34;
    *v33 = 136315394;
    *(v20 + 288) = v29;
    v35 = sub_1C96A70A4();
    v37 = sub_1C9484164(v35, v36, &a9);

    *(v33 + 4) = v37;
    *(v33 + 12) = 2080;
    sub_1C94B91C8(&qword_1EDB7CC50, MEMORY[0x1E6969530]);
    v38 = sub_1C96A7DB4();
    v40 = v39;
    (*(v31 + 8))(v30, v32);
    v41 = sub_1C9484164(v38, v40, &a9);

    *(v33 + 14) = v41;
    _os_log_impl(&dword_1C945E000, v27, v28, "Updating the last launch date of %s: %s", v33, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1CCA8E3D0](v34, -1, -1);
    OUTLINED_FUNCTION_38_0();
  }

  else
  {

    v42 = OUTLINED_FUNCTION_4_4();
    v43(v42);
  }

  *(v20 + 240) = type metadata accessor for ActiveUserModel();
  *(v20 + 160) = swift_allocBox();
  *(v20 + 168) = v44;
  *(v20 + 248) = v44;
  swift_task_alloc();
  OUTLINED_FUNCTION_35();
  *(v20 + 256) = v45;
  *v45 = v46;
  v45[1] = sub_1C96439C8;
  OUTLINED_FUNCTION_49_1();

  return sub_1C94D2014();
}

uint64_t sub_1C96439C8()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_27();
  v1 = *v0;
  OUTLINED_FUNCTION_15();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_15_7();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1C9643AC0()
{
  OUTLINED_FUNCTION_94_0();
  v26 = *(v0 + 160);
  v2 = *(v0 + 240);
  v1 = *(v0 + 248);
  v3 = *(v0 + 224);
  v4 = *(v0 + 192);
  v5 = *(v0 + 200);
  v6 = *(v0 + 176);
  v7 = *(v0 + 184);
  v8 = 24;
  if (*(v0 + 289))
  {
    v8 = 28;
  }

  v9 = *(v2 + v8);
  sub_1C94BE204(v1 + v9, &unk_1EC3A5430);
  v3(v1 + v9, v6, v5);
  OUTLINED_FUNCTION_48();
  __swift_storeEnumTagSinglePayload(v10, v11, v12, v5);
  *(v0 + 264) = v26;
  sub_1C94D5EE0(v1, v4);
  OUTLINED_FUNCTION_48();
  __swift_storeEnumTagSinglePayload(v13, v14, v15, v2);
  v16 = OBJC_IVAR____TtCC11WeatherCore17ActiveUserService5Actor__activeUserModel;
  swift_beginAccess();
  sub_1C9645CE4(v4, v7 + v16, &qword_1EC3A7990);
  swift_endAccess();
  sub_1C9469B6C(v7 + 152, v0 + 16);
  __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
  sub_1C9469B6C(v7 + 232, v0 + 56);
  sub_1C9469B6C(v7 + 112, v0 + 96);
  v17 = swift_allocObject();
  *(v0 + 272) = v17;
  sub_1C94670AC((v0 + 56), v17 + 16);
  sub_1C94670AC((v0 + 96), v17 + 56);
  *(v17 + 96) = v26;
  sub_1C96A3D04();
  v18 = swift_task_alloc();
  *(v0 + 280) = v18;
  *v18 = v0;
  v18[1] = sub_1C9643CC4;
  OUTLINED_FUNCTION_16_31();
  OUTLINED_FUNCTION_49_1();

  return sub_1C94D28EC(v19, v20, v21, v22, v23, v24);
}

uint64_t sub_1C9643CC4()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_27();
  v1 = *v0;
  OUTLINED_FUNCTION_15();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_18_29();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1C9643DD8()
{
  OUTLINED_FUNCTION_30();
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);

  OUTLINED_FUNCTION_17();

  return v1();
}

uint64_t sub_1C9643E5C(_BYTE *a1, uint64_t a2)
{
  *(v3 + 16) = a2;
  *(v3 + 24) = v2;
  *(v3 + 41) = *a1;
  return OUTLINED_FUNCTION_28_1(sub_1C9643E80, 0);
}

uint64_t sub_1C9643E80()
{
  OUTLINED_FUNCTION_18();
  *(v0 + 40) = *(v0 + 41);
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  OUTLINED_FUNCTION_26_16(v1);

  return sub_1C964363C();
}

uint64_t sub_1C9643F18(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1C94B0CEC;

  return sub_1C964358C(a1);
}

uint64_t sub_1C9643FB0(_BYTE *a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1C94B0CEC;

  return sub_1C9643E5C(a1, a2);
}

uint64_t sub_1C9644058()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_27();
  v1 = *v0;
  OUTLINED_FUNCTION_15();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_15_7();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1C9644158()
{
  OUTLINED_FUNCTION_30();
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);
  *(v0 + 89) = 0;
  OUTLINED_FUNCTION_8_42();
  sub_1C94B91C8(v1, v2);
  sub_1C96A4FE4();
  OUTLINED_FUNCTION_17();

  return v3();
}

uint64_t sub_1C9644200(void *a1, void *a2)
{
  v3 = a2[17];
  v4 = a2[18];
  __swift_project_boxed_opaque_existential_1(a2 + 14, v3);
  sub_1C959EC70(v3, v4);
  v5 = a1[3];
  v6 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v5);
  return sub_1C959EC70(v5, v6);
}

uint64_t sub_1C9644270()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 112);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 152);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 192);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 232);
  sub_1C94BE204(v0 + OBJC_IVAR____TtCC11WeatherCore17ActiveUserService5Actor__activeUserModel, &qword_1EC3A7990);
  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_1C96442D0()
{
  sub_1C9644270();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t sub_1C9644320()
{
  type metadata accessor for ActiveUserService.Actor();

  return sub_1C96A4E44();
}

uint64_t sub_1C9644378(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  active = type metadata accessor for ActiveUserService.Actor();

  return MEMORY[0x1EEE454F0](a1, a2, a3, active, a7);
}

uint64_t sub_1C96443E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  active = type metadata accessor for ActiveUserService.Actor();

  return MEMORY[0x1EEE454D8](a1, a2, a3, a4, active, a8);
}

uint64_t sub_1C9644468()
{
  type metadata accessor for ActiveUserService.Actor();

  return sub_1C96A4FE4();
}

uint64_t sub_1C96444C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  active = type metadata accessor for ActiveUserService.Actor();

  return MEMORY[0x1EEE45768](a1, active, a5);
}

uint64_t sub_1C9644510(uint64_t a1)
{
  active = type metadata accessor for ActiveUserService.Actor();

  return MEMORY[0x1EEE45760](a1, active);
}

uint64_t sub_1C9644560()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_27();
  v1 = *v0;
  OUTLINED_FUNCTION_15();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_18_29();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1C9644674()
{
  OUTLINED_FUNCTION_39();
  v1 = v0[30];
  v3 = v0[22];
  v2 = v0[23];
  v4 = v0[20];
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 2));
  sub_1C94D5EE0(v4, v2);
  OUTLINED_FUNCTION_48();
  __swift_storeEnumTagSinglePayload(v5, v6, v7, v1);
  v8 = OBJC_IVAR____TtCC11WeatherCore17ActiveUserService5Actor__activeUserModel;
  swift_beginAccess();
  sub_1C9645CE4(v2, v3 + v8, &qword_1EC3A7990);
  swift_endAccess();

  OUTLINED_FUNCTION_17();

  return v9();
}

uint64_t sub_1C9644758@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  active = type metadata accessor for ActiveUserModel();
  MEMORY[0x1EEE9AC00](active);
  v10 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v43 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A7998);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v43 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5430);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v44 = &v43 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v43 - v20;
  if (a1)
  {
    if (qword_1EDB77EA8 != -1)
    {
      swift_once();
    }

    v22 = sub_1C96A6154();
    __swift_project_value_buffer(v22, qword_1EDB77EB0);
    v23 = sub_1C96A6134();
    v24 = sub_1C96A76A4();
    if (!os_log_type_enabled(v23, v24))
    {
      goto LABEL_7;
    }

    v25 = swift_slowAlloc();
    *v25 = 0;
    v26 = "Resetting the active user model";
LABEL_6:
    _os_log_impl(&dword_1C945E000, v23, v24, v26, v25, 2u);
    MEMORY[0x1CCA8E3D0](v25, -1, -1);
LABEL_7:

    v27 = sub_1C96A4A54();
    __swift_storeEnumTagSinglePayload(v21, 1, 1, v27);
    v28 = v44;
    __swift_storeEnumTagSinglePayload(v44, 1, 1, v27);
    sub_1C96A4A84();
    sub_1C96A4A14();
    sub_1C96A66B4();
    v29 = sub_1C96A6F04();
    v30 = active[6];
    __swift_storeEnumTagSinglePayload(a4 + v30, 1, 1, v27);
    v31 = active[7];
    __swift_storeEnumTagSinglePayload(a4 + v31, 1, 1, v27);
    sub_1C9645CE4(v21, a4 + v30, &unk_1EC3A5430);
    result = sub_1C9645CE4(v28, a4 + v31, &unk_1EC3A5430);
    *(a4 + active[8]) = v29;
    return result;
  }

  v33 = *(v14 + 48);
  sub_1C94D23D0(a2, v16);
  sub_1C94D23D0(a3, &v16[v33]);
  if (__swift_getEnumTagSinglePayload(&v16[v33], 1, active) == 1)
  {
    if (__swift_getEnumTagSinglePayload(v16, 1, active) == 1)
    {
      if (qword_1EDB77EA8 != -1)
      {
        swift_once();
      }

      v34 = sub_1C96A6154();
      __swift_project_value_buffer(v34, qword_1EDB77EB0);
      v23 = sub_1C96A6134();
      v24 = sub_1C96A76A4();
      if (!os_log_type_enabled(v23, v24))
      {
        goto LABEL_7;
      }

      v25 = swift_slowAlloc();
      *v25 = 0;
      v26 = "No local or remote user model - making a new one";
      goto LABEL_6;
    }

    sub_1C94D5F44(v16, v13);
    if (qword_1EDB77EA8 != -1)
    {
      swift_once();
    }

    v39 = sub_1C96A6154();
    __swift_project_value_buffer(v39, qword_1EDB77EB0);
    v40 = sub_1C96A6134();
    v41 = sub_1C96A76A4();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      *v42 = 0;
      _os_log_impl(&dword_1C945E000, v40, v41, "Using local user model", v42, 2u);
      MEMORY[0x1CCA8E3D0](v42, -1, -1);
    }

    return sub_1C94D5F44(v13, a4);
  }

  else
  {
    sub_1C94D5F44(&v16[v33], v10);
    if (qword_1EDB77EA8 != -1)
    {
      swift_once();
    }

    v35 = sub_1C96A6154();
    __swift_project_value_buffer(v35, qword_1EDB77EB0);
    v36 = sub_1C96A6134();
    v37 = sub_1C96A76A4();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      *v38 = 0;
      _os_log_impl(&dword_1C945E000, v36, v37, "Using remote user model", v38, 2u);
      MEMORY[0x1CCA8E3D0](v38, -1, -1);
    }

    sub_1C94D5F44(v10, a4);
    return sub_1C94BE204(v16, &qword_1EC3A7990);
  }
}

uint64_t sub_1C9644D14(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  type metadata accessor for ActiveUserModel();
  v9 = swift_projectBox();
  v10 = a2[3];
  v11 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v10);
  v13[2] = a3;
  v13[3] = v9;
  v13[4] = a1;
  return (*(v11 + 24))(a5, v13, MEMORY[0x1E69E7CA8] + 8, v10, v11);
}

uint64_t sub_1C9644DD4(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  active = type metadata accessor for ActiveUserModel();
  v8 = OUTLINED_FUNCTION_7(active);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v12[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  swift_beginAccess();
  sub_1C94D5EE0(a3, v10);
  sub_1C959E940();
  sub_1C94D6860(v10);
  __swift_project_boxed_opaque_existential_1(a4, a4[3]);
  swift_beginAccess();
  sub_1C94D5EE0(a3, v10);
  sub_1C959E940();
  return sub_1C94D6860(v10);
}

void sub_1C9644F0C(uint64_t a1, unint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5090);
  v5 = OUTLINED_FUNCTION_7(v4);
  MEMORY[0x1EEE9AC00](v5);
  v7 = *a2;
  if (v7 < 4 || (v19[0] = 0x7355657669746361, v19[1] = 0xEF6C65646F4D7265, MEMORY[0x1EEE9AC00](v6), v18[-2] = v19, sub_1C957FD34(sub_1C9592490, &v18[-4], v7)))
  {
    v8 = sub_1C96A7414();
    OUTLINED_FUNCTION_31_9(v8);
    v9 = swift_allocObject();
    v9[2] = 0;
    v9[3] = 0;
    v9[4] = v2;
    sub_1C96A3D04();
    sub_1C951C258();
  }

  else
  {
    if (qword_1EDB77EA8 != -1)
    {
      OUTLINED_FUNCTION_9_1();
    }

    v10 = sub_1C96A6154();
    __swift_project_value_buffer(v10, qword_1EDB77EB0);
    sub_1C96A53C4();
    v11 = sub_1C96A6134();
    v12 = sub_1C96A76A4();
    sub_1C9592428(v7);
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v19[0] = v14;
      *v13 = 136315138;
      v18[0] = v7;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5FC0);
      sub_1C94D55CC();
      v15 = sub_1C96A6F54();
      v17 = sub_1C9484164(v15, v16, v19);

      *(v13 + 4) = v17;
      _os_log_impl(&dword_1C945E000, v11, v12, "Remote active user store did change but it wasn't a relevant key (%s), so ignoring", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v14);
      MEMORY[0x1CCA8E3D0](v14, -1, -1);
      MEMORY[0x1CCA8E3D0](v13, -1, -1);
    }
  }
}

uint64_t sub_1C96451B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = sub_1C96A4A54();
  v4[3] = v5;
  v4[4] = *(v5 - 8);
  v4[5] = swift_task_alloc();
  type metadata accessor for ActiveUserModel();
  v4[6] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C964529C, 0, 0);
}

uint64_t sub_1C964529C()
{
  OUTLINED_FUNCTION_30();
  if (qword_1EDB77EA8 != -1)
  {
    OUTLINED_FUNCTION_9_1();
  }

  v1 = sub_1C96A6154();
  __swift_project_value_buffer(v1, qword_1EDB77EB0);
  v2 = sub_1C96A6134();
  v3 = sub_1C96A76A4();
  if (OUTLINED_FUNCTION_41(v3))
  {
    *swift_slowAlloc() = 0;
    OUTLINED_FUNCTION_16_2(&dword_1C945E000, v4, v5, "Remote active user store did change - refreshing");
    OUTLINED_FUNCTION_38_0();
  }

  sub_1C96A4A14();
  swift_task_alloc();
  OUTLINED_FUNCTION_35();
  *(v0 + 56) = v6;
  *v6 = v7;
  OUTLINED_FUNCTION_17_32(v6);

  return sub_1C94D258C();
}

uint64_t sub_1C96453BC()
{
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_27();
  v2 = *(v1 + 48);
  v3 = *v0;
  OUTLINED_FUNCTION_15();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_20_26();
  v6(v5);
  sub_1C94D6860(v2);
  v7 = OUTLINED_FUNCTION_98();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C9645514(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = sub_1C96A4A54();
  v4[3] = v5;
  v4[4] = *(v5 - 8);
  v4[5] = swift_task_alloc();
  type metadata accessor for ActiveUserModel();
  v4[6] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C9645600, 0, 0);
}

uint64_t sub_1C9645600()
{
  OUTLINED_FUNCTION_30();
  if (qword_1EDB77EA8 != -1)
  {
    OUTLINED_FUNCTION_9_1();
  }

  v1 = sub_1C96A6154();
  __swift_project_value_buffer(v1, qword_1EDB77EB0);
  v2 = sub_1C96A6134();
  v3 = sub_1C96A76A4();
  if (OUTLINED_FUNCTION_41(v3))
  {
    *swift_slowAlloc() = 0;
    OUTLINED_FUNCTION_16_2(&dword_1C945E000, v4, v5, "Login detected - refreshing");
    OUTLINED_FUNCTION_38_0();
  }

  sub_1C96A4A14();
  swift_task_alloc();
  OUTLINED_FUNCTION_35();
  *(v0 + 56) = v6;
  *v6 = v7;
  OUTLINED_FUNCTION_17_32(v6);

  return sub_1C94D258C();
}

uint64_t sub_1C9645720()
{
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_27();
  v2 = *(v1 + 48);
  v3 = *v0;
  OUTLINED_FUNCTION_15();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_20_26();
  v6(v5);
  sub_1C94D6860(v2);
  v7 = OUTLINED_FUNCTION_98();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C9645874()
{
  OUTLINED_FUNCTION_18();

  OUTLINED_FUNCTION_17();

  return v0();
}

uint64_t sub_1C96458D4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5090);
  v2 = OUTLINED_FUNCTION_7(v1);
  MEMORY[0x1EEE9AC00](v2);
  v3 = sub_1C96A7414();
  OUTLINED_FUNCTION_31_9(v3);
  v4 = swift_allocObject();
  v4[2] = 0;
  v4[3] = 0;
  v4[4] = v0;
  sub_1C96A3D04();
  sub_1C951C258();
}

uint64_t sub_1C9645998(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = sub_1C96A4A54();
  v4[3] = v5;
  v4[4] = *(v5 - 8);
  v4[5] = swift_task_alloc();
  type metadata accessor for ActiveUserModel();
  v4[6] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C9645A84, 0, 0);
}

uint64_t sub_1C9645A84()
{
  OUTLINED_FUNCTION_30();
  if (qword_1EDB77EA8 != -1)
  {
    OUTLINED_FUNCTION_9_1();
  }

  v1 = sub_1C96A6154();
  __swift_project_value_buffer(v1, qword_1EDB77EB0);
  v2 = sub_1C96A6134();
  v3 = sub_1C96A76A4();
  if (OUTLINED_FUNCTION_41(v3))
  {
    *swift_slowAlloc() = 0;
    OUTLINED_FUNCTION_16_2(&dword_1C945E000, v4, v5, "Logout detected - refreshing to a new model");
    OUTLINED_FUNCTION_38_0();
  }

  sub_1C96A4A14();
  swift_task_alloc();
  OUTLINED_FUNCTION_35();
  *(v0 + 56) = v6;
  *v6 = v7;
  OUTLINED_FUNCTION_17_32(v6);

  return sub_1C94D258C();
}

uint64_t sub_1C9645CE4(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

uint64_t sub_1C9645D4C()
{
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_82_0();
  swift_task_alloc();
  OUTLINED_FUNCTION_35();
  *(v0 + 16) = v1;
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_3_51(v1);

  return sub_1C96451B0(v3, v4, v5, v6);
}

uint64_t sub_1C9645DDC()
{
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_82_0();
  swift_task_alloc();
  OUTLINED_FUNCTION_35();
  *(v0 + 16) = v1;
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_3_51(v1);

  return sub_1C9645998(v3, v4, v5, v6);
}

uint64_t sub_1C9645E6C()
{
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_82_0();
  swift_task_alloc();
  OUTLINED_FUNCTION_35();
  *(v0 + 16) = v1;
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_3_51(v1);

  return sub_1C9645514(v3, v4, v5, v6);
}

uint64_t StubPPTSavedLocationsManager.savedLocations.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 16) = a1;
}

uint64_t StubPPTSavedLocationsManager.__allocating_init()()
{
  v0 = swift_allocObject();
  StubPPTSavedLocationsManager.init()();
  return v0;
}

uint64_t StubPPTSavedLocationsManager.__deallocating_deinit()
{

  return MEMORY[0x1EEE6BDC0](v0, 24, 7);
}

uint64_t sub_1C96460A0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1C94B9278;

  return StubPPTSavedLocationsManager.addLocationWithChecks(_:locationDisplayContext:)();
}

uint64_t sub_1C964612C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1C95EE080;

  return StubPPTSavedLocationsManager.removeLocation(by:)();
}

uint64_t sub_1C96461B8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1C94B9278;

  return StubPPTSavedLocationsManager.updateSavedLocationTimeZones(_:)();
}

uint64_t sub_1C9646260()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1C95EE080;

  return StubPPTSavedLocationsManager.reloadFromLocalStorage()();
}

uint64_t SavedLocation.name.getter()
{
  v1 = type metadata accessor for Location();
  v2 = OUTLINED_FUNCTION_7(v1);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_14();
  v5 = v4 - v3;
  type metadata accessor for SavedLocation();
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_2_1();
  sub_1C949A614(v0, v0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    memcpy(__dst, v0, sizeof(__dst));
    v7 = __dst[2];
    sub_1C96A53C4();
    sub_1C96A53C4();
    sub_1C96A53C4();
    sub_1C955FE40(__dst);
  }

  else
  {
    OUTLINED_FUNCTION_1_73();
    sub_1C949A7E4(v0, v5, v8);
    v7 = *(v5 + 16);
    sub_1C96A53C4();
    sub_1C96A53C4();
    sub_1C96A53C4();
    OUTLINED_FUNCTION_0_98();
    sub_1C949A9FC(v5, v9);
  }

  return v7;
}

uint64_t SavedLocation.timeZone.getter()
{
  OUTLINED_FUNCTION_40_0();
  v3 = type metadata accessor for Location();
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_2_1();
  type metadata accessor for SavedLocation();
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_35_2();
  sub_1C949A614(v1, v2);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1C949A9FC(v2, type metadata accessor for SavedLocation);
    sub_1C96A4DF4();
    v6 = OUTLINED_FUNCTION_21_27();
  }

  else
  {
    OUTLINED_FUNCTION_1_73();
    sub_1C949A7E4(v2, v1, v10);
    v11 = *(v3 + 20);
    v12 = sub_1C96A4DF4();
    OUTLINED_FUNCTION_6();
    (*(v13 + 16))(v0, v1 + v11, v12);
    OUTLINED_FUNCTION_0_98();
    sub_1C949A9FC(v1, v14);
    v6 = v0;
    v7 = 0;
    v8 = 1;
    v9 = v12;
  }

  return __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
}

uint64_t sub_1C96465CC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A79B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *SavedLocation.Placeholder.init(identifier:searchTitle:searchSubtitle:)@<X0>(void *__src@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  result = memcpy(a6, __src, 0x48uLL);
  a6[9] = a2;
  a6[10] = a3;
  a6[11] = a4;
  a6[12] = a5;
  return result;
}

uint64_t SavedLocation.Placeholder.identifier.getter()
{
  memcpy(__dst, v0, sizeof(__dst));
  v1 = OUTLINED_FUNCTION_11();
  memcpy(v1, v2, 0x48uLL);
  return sub_1C95087DC(__dst, &v4);
}

uint64_t sub_1C9646734(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (sub_1C96A7DE4() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6954686372616573 && a2 == 0xEB00000000656C74;
    if (v6 || (sub_1C96A7DE4() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x7553686372616573 && a2 == 0xEE00656C74697462)
    {

      return 2;
    }

    else
    {
      v8 = sub_1C96A7DE4();

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

uint64_t sub_1C9646858(char a1)
{
  if (!a1)
  {
    return 0x696669746E656469;
  }

  if (a1 == 1)
  {
    return 0x6954686372616573;
  }

  return 0x7553686372616573;
}

uint64_t sub_1C96468C8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E6F697461636F6CLL && a2 == 0xE800000000000000;
  if (v4 || (sub_1C96A7DE4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6C6F686563616C70 && a2 == 0xEB00000000726564)
  {

    return 1;
  }

  else
  {
    v7 = sub_1C96A7DE4();

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

uint64_t sub_1C9646994(char a1)
{
  if (a1)
  {
    return 0x6C6F686563616C70;
  }

  else
  {
    return 0x6E6F697461636F6CLL;
  }
}

uint64_t sub_1C96469DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C9646734(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C9646A04(uint64_t a1)
{
  v2 = sub_1C9648598();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C9646A40(uint64_t a1)
{
  v2 = sub_1C9648598();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C9646A84@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C96468C8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C9646AAC(uint64_t a1)
{
  v2 = sub_1C9647814();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C9646AE8(uint64_t a1)
{
  v2 = sub_1C9647814();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C9646B24(uint64_t a1)
{
  v2 = sub_1C9647910();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C9646B60(uint64_t a1)
{
  v2 = sub_1C9647910();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C9646B9C(uint64_t a1)
{
  v2 = sub_1C9647868();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C9646BD8(uint64_t a1)
{
  v2 = sub_1C9647868();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SavedLocation.lastRefreshDate.getter()
{
  v3 = v1;
  OUTLINED_FUNCTION_40_0();
  v4 = type metadata accessor for Location();
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_14();
  v8 = v7 - v6;
  type metadata accessor for SavedLocation();
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_35_2();
  sub_1C949A614(v3, v2);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1C949A9FC(v2, type metadata accessor for SavedLocation);
    sub_1C96A4A54();
    v10 = OUTLINED_FUNCTION_21_27();
    return __swift_storeEnumTagSinglePayload(v10, v11, v12, v13);
  }

  else
  {
    OUTLINED_FUNCTION_1_73();
    sub_1C949A7E4(v2, v8, v15);
    sub_1C94D63E8(v8 + *(v4 + 24), v0);
    OUTLINED_FUNCTION_0_98();
    return sub_1C949A9FC(v8, v16);
  }
}

void static SavedLocation.areListsEqual(_:_:)(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for Location();
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_2();
  v9 = v7 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = (&v72 - v11);
  type metadata accessor for SavedLocation();
  OUTLINED_FUNCTION_1();
  v14 = v13;
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_2();
  v75 = (v16 - v17);
  MEMORY[0x1EEE9AC00](v18);
  v74 = &v72 - v19;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A79B0);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_71();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_35_2();
  v21 = *(a1 + 16);
  if (v21 != *(a2 + 16) || !v21)
  {
    return;
  }

  v22 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v23 = a1 + v22;
  v24 = a2 + v22;
  v73 = *(v14 + 72);
  while (1)
  {
    v25 = *(v76 + 48);
    sub_1C949A614(v23, v2);
    sub_1C949A614(v24, v2 + v25);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      break;
    }

    v34 = v74;
    sub_1C949A614(v2, v74);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      OUTLINED_FUNCTION_0_98();
      sub_1C949A9FC(v34, v71);
      goto LABEL_93;
    }

    sub_1C949A7E4(v34, v12, type metadata accessor for Location);
    sub_1C949A7E4(v2 + v25, v9, type metadata accessor for Location);
    v36 = v12[4];
    v35 = v12[5];
    v38 = *(v9 + 32);
    v37 = *(v9 + 40);
    v39 = *(v12 + 7) == *(v9 + 56) && *(v12 + 8) == *(v9 + 64);
    if (!v39 && (sub_1C96A7DE4() & 1) == 0 || (v36 == v38 ? (v40 = v35 == v37) : (v40 = 0), !v40))
    {
LABEL_87:
      sub_1C949A9FC(v9, type metadata accessor for Location);
      sub_1C949A9FC(v12, type metadata accessor for Location);
LABEL_89:
      OUTLINED_FUNCTION_6_53();
      sub_1C949A9FC(v2, v70);
      return;
    }

    OUTLINED_FUNCTION_20_2();
    if (v43)
    {
      if (!v41)
      {
        goto LABEL_87;
      }

      OUTLINED_FUNCTION_22(v42);
      v46 = v31 && v44 == v45;
      if (!v46 && (sub_1C96A7DE4() & 1) == 0)
      {
        goto LABEL_87;
      }
    }

    else if (v41)
    {
      goto LABEL_87;
    }

    OUTLINED_FUNCTION_20_2();
    if (v52)
    {
      if (!v50)
      {
        goto LABEL_87;
      }

      OUTLINED_FUNCTION_22(v51);
      v55 = v31 && v53 == v54;
      if (!v55 && (sub_1C96A7DE4() & 1) == 0)
      {
        goto LABEL_87;
      }
    }

    else if (v50)
    {
      goto LABEL_87;
    }

    OUTLINED_FUNCTION_20_2();
    if (v58)
    {
      if (!v56)
      {
        goto LABEL_87;
      }

      OUTLINED_FUNCTION_22(v57);
      v61 = v31 && v59 == v60;
      if (!v61 && (sub_1C96A7DE4() & 1) == 0)
      {
        goto LABEL_87;
      }
    }

    else if (v56)
    {
      goto LABEL_87;
    }

    OUTLINED_FUNCTION_20_2();
    if (v64)
    {
      if (!v62)
      {
        goto LABEL_87;
      }

      OUTLINED_FUNCTION_22(v63);
      v67 = v31 && v65 == v66;
      if (!v67 && (sub_1C96A7DE4() & 1) == 0)
      {
        goto LABEL_87;
      }
    }

    else if (v62)
    {
      goto LABEL_87;
    }

    v68 = MEMORY[0x1CCA8A750](v12 + *(v5 + 20), v9 + *(v5 + 20));
    sub_1C949A9FC(v9, type metadata accessor for Location);
    sub_1C949A9FC(v12, type metadata accessor for Location);
    if ((v68 & 1) == 0)
    {
      goto LABEL_89;
    }

LABEL_85:
    OUTLINED_FUNCTION_6_53();
    sub_1C949A9FC(v2, v69);
    v24 += v73;
    v23 += v73;
    if (!--v21)
    {
      return;
    }
  }

  v26 = v75;
  sub_1C949A614(v2, v75);
  memcpy(__dst, v26, 0x68uLL);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    memcpy(v77, (v2 + v25), sizeof(v77));
    v28 = *&__dst[4];
    v27 = *&__dst[5];
    v29 = *&v77[4];
    v30 = *&v77[5];
    v31 = __dst[7] == v77[7] && __dst[8] == v77[8];
    if (!v31 && (sub_1C96A7DE4() & 1) == 0 || (v28 == v29 ? (v32 = v27 == v30) : (v32 = 0), !v32))
    {
LABEL_88:
      sub_1C955FE40(v77);
      sub_1C955FE40(__dst);
      goto LABEL_89;
    }

    if (__dst[10])
    {
      if (!v77[10])
      {
        goto LABEL_88;
      }

      v33 = __dst[9] == v77[9] && __dst[10] == v77[10];
      if (!v33 && (sub_1C96A7DE4() & 1) == 0)
      {
        goto LABEL_88;
      }
    }

    else if (v77[10])
    {
      goto LABEL_88;
    }

    v47 = v77[12];
    if (__dst[12])
    {
      if (!v77[12])
      {
        goto LABEL_88;
      }

      if (__dst[11] == v77[11] && __dst[12] == v77[12])
      {
        sub_1C955FE40(v77);
        sub_1C955FE40(__dst);
      }

      else
      {
        v49 = sub_1C96A7DE4();
        sub_1C955FE40(v77);
        sub_1C955FE40(__dst);
        if ((v49 & 1) == 0)
        {
          goto LABEL_89;
        }
      }
    }

    else
    {
      sub_1C955FE40(v77);
      sub_1C955FE40(__dst);
      if (v47)
      {
        goto LABEL_89;
      }
    }

    goto LABEL_85;
  }

  sub_1C955FE40(__dst);
LABEL_93:
  sub_1C96465CC(v2);
}

uint64_t static SavedLocation.Placeholder.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4 = *(a1 + 72);
  v6 = *(a1 + 80);
  v5 = *(a1 + 88);
  v7 = *(a1 + 96);
  v9 = *(a2 + 32);
  v8 = *(a2 + 40);
  v11 = *(a2 + 72);
  v10 = *(a2 + 80);
  v12 = *(a1 + 56) == *(a2 + 56) && *(a1 + 64) == *(a2 + 64);
  v14 = *(a2 + 88);
  v13 = *(a2 + 96);
  if (v12)
  {
    if (v3 != v9 || v2 != v8)
    {
      return 0;
    }

LABEL_16:
    if (v6)
    {
      if (!v10)
      {
        return 0;
      }

      v19 = v4 == v11 && v6 == v10;
      if (!v19 && (sub_1C96A7DE4() & 1) == 0)
      {
        return 0;
      }
    }

    else if (v10)
    {
      return 0;
    }

    if (v7)
    {
      if (v13)
      {
        if (v5 == v14 && v7 == v13)
        {
          return 1;
        }

        OUTLINED_FUNCTION_11();
        if (sub_1C96A7DE4())
        {
          return 1;
        }
      }
    }

    else if (!v13)
    {
      return 1;
    }

    return 0;
  }

  v15 = sub_1C96A7DE4();
  result = 0;
  if ((v15 & 1) != 0 && v3 == v9 && v2 == v8)
  {
    goto LABEL_16;
  }

  return result;
}

void SavedLocation.encode(to:)()
{
  OUTLINED_FUNCTION_119();
  v36 = v0;
  v3 = v2;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A79B8);
  OUTLINED_FUNCTION_1();
  v34 = v4;
  OUTLINED_FUNCTION_71();
  MEMORY[0x1EEE9AC00](v5);
  v33 = v30 - v6;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A79C0);
  OUTLINED_FUNCTION_1();
  v31 = v7;
  OUTLINED_FUNCTION_71();
  MEMORY[0x1EEE9AC00](v8);
  v10 = v30 - v9;
  v30[1] = type metadata accessor for Location();
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_14();
  v14 = v13 - v12;
  type metadata accessor for SavedLocation();
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_35_2();
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A79C8);
  OUTLINED_FUNCTION_1();
  v17 = v16;
  OUTLINED_FUNCTION_71();
  MEMORY[0x1EEE9AC00](v18);
  v20 = v30 - v19;
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  sub_1C9647814();
  sub_1C96A7F54();
  sub_1C949A614(v36, v1);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    memcpy(v39, v1, 0x68uLL);
    v38[0] = 1;
    sub_1C9647868();
    v21 = v33;
    v22 = v37;
    OUTLINED_FUNCTION_20_27();
    sub_1C96A7CD4();
    memcpy(v38, v39, sizeof(v38));
    sub_1C96478BC();
    v23 = v35;
    sub_1C96A7D74();
    (*(v34 + 8))(v21, v23);
    (*(v17 + 8))(v20, v22);
    sub_1C955FE40(v39);
  }

  else
  {
    sub_1C949A7E4(v1, v14, type metadata accessor for Location);
    v39[0] = 0;
    sub_1C9647910();
    OUTLINED_FUNCTION_20_27();
    sub_1C96A7CD4();
    OUTLINED_FUNCTION_10_41();
    sub_1C9489304(v24, v25);
    v26 = v32;
    sub_1C96A7D74();
    (*(v31 + 8))(v10, v26);
    OUTLINED_FUNCTION_0_98();
    sub_1C949A9FC(v14, v27);
    v28 = OUTLINED_FUNCTION_22_23();
    v29(v28);
  }

  OUTLINED_FUNCTION_118();
}

unint64_t sub_1C9647814()
{
  result = qword_1EDB7A298;
  if (!qword_1EDB7A298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7A298);
  }

  return result;
}

unint64_t sub_1C9647868()
{
  result = qword_1EC3A79D0;
  if (!qword_1EC3A79D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A79D0);
  }

  return result;
}

unint64_t sub_1C96478BC()
{
  result = qword_1EC3A79D8;
  if (!qword_1EC3A79D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A79D8);
  }

  return result;
}

unint64_t sub_1C9647910()
{
  result = qword_1EDB7A2B0[0];
  if (!qword_1EDB7A2B0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDB7A2B0);
  }

  return result;
}

void SavedLocation.init(from:)()
{
  OUTLINED_FUNCTION_119();
  v2 = v1;
  v63 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A79E0);
  OUTLINED_FUNCTION_1();
  v64 = v4;
  v65 = v5;
  OUTLINED_FUNCTION_71();
  MEMORY[0x1EEE9AC00](v6);
  v69 = &v58 - v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A79E8);
  OUTLINED_FUNCTION_1();
  v66 = v9;
  v67 = v8;
  OUTLINED_FUNCTION_71();
  MEMORY[0x1EEE9AC00](v10);
  v68 = &v58 - v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A79F0);
  OUTLINED_FUNCTION_1();
  v70 = v13;
  v71 = v12;
  OUTLINED_FUNCTION_71();
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v58 - v15;
  v17 = type metadata accessor for SavedLocation();
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_2();
  v21 = (v19 - v20);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v58 - v23;
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v58 - v26;
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  sub_1C9647814();
  sub_1C96A7F44();
  if (v0)
  {
    goto LABEL_9;
  }

  v61 = v24;
  v59 = v21;
  v60 = v27;
  v62 = v17;
  v28 = v71;
  v29 = sub_1C96A7CC4();
  sub_1C9489288(v29, 0);
  if (v31 == v32 >> 1)
  {
LABEL_8:
    v40 = v62;
    v41 = sub_1C96A7AE4();
    swift_allocError();
    v43 = v42;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5A78);
    *v43 = v40;
    sub_1C96A7C14();
    sub_1C96A7AD4();
    (*(*(v41 - 8) + 104))(v43, *MEMORY[0x1E69E6AF8], v41);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v70 + 8))(v16, v28);
LABEL_9:
    __swift_destroy_boxed_opaque_existential_1Tm(v2);
LABEL_10:
    OUTLINED_FUNCTION_118();
    return;
  }

  if (v31 < (v32 >> 1))
  {
    v33 = v28;
    v34 = *(v30 + v31);
    sub_1C9489290(v31 + 1);
    v36 = v35;
    v38 = v37;
    swift_unknownObjectRelease();
    if (v36 == v38 >> 1)
    {
      if (v34)
      {
        v72[0] = 1;
        sub_1C9647868();
        v39 = v69;
        OUTLINED_FUNCTION_18_30();
        sub_1C9648544();
        v44 = v64;
        OUTLINED_FUNCTION_20_27();
        sub_1C96A7CB4();
        v45 = (v65 + 8);
        swift_unknownObjectRelease();
        (*v45)(v39, v44);
        v48 = OUTLINED_FUNCTION_15_35();
        v49(v48);
        memcpy(v59, v72, 0x68uLL);
      }

      else
      {
        v72[0] = 0;
        sub_1C9647910();
        OUTLINED_FUNCTION_18_30();
        type metadata accessor for Location();
        OUTLINED_FUNCTION_10_41();
        sub_1C9489304(v46, v47);
        sub_1C96A7CB4();
        swift_unknownObjectRelease();
        v50 = OUTLINED_FUNCTION_22_23();
        v51(v50);
        v52 = OUTLINED_FUNCTION_15_35();
        v53(v52);
      }

      swift_storeEnumTagMultiPayload();
      v54 = OUTLINED_FUNCTION_8_43();
      sub_1C949A7E4(v54, v60, v55);
      v56 = OUTLINED_FUNCTION_8_43();
      sub_1C949A7E4(v56, v63, v57);
      __swift_destroy_boxed_opaque_existential_1Tm(v2);
      goto LABEL_10;
    }

    v28 = v33;
    goto LABEL_8;
  }

  __break(1u);
}

void SavedLocation.Placeholder.encode(to:)()
{
  OUTLINED_FUNCTION_119();
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A7A00);
  OUTLINED_FUNCTION_1();
  v7 = v6;
  OUTLINED_FUNCTION_71();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_35_2();
  memcpy(v11, v0, 0x48uLL);
  __swift_project_boxed_opaque_existential_1(v4, v4[3]);
  sub_1C95087DC(v11, v10);
  sub_1C9648598();
  sub_1C96A7F54();
  OUTLINED_FUNCTION_27_15(v10);
  sub_1C96485EC();
  sub_1C96A7D74();
  if (v1)
  {
    memcpy(v9, v10, sizeof(v9));
    sub_1C953AEDC(v9);
  }

  else
  {
    memcpy(v9, v10, sizeof(v9));
    sub_1C953AEDC(v9);
    sub_1C96A7CE4();
    sub_1C96A7CE4();
  }

  (*(v7 + 8))(v2, v5);
  OUTLINED_FUNCTION_118();
}

void SavedLocation.Placeholder.init(from:)()
{
  OUTLINED_FUNCTION_119();
  v2 = v1;
  v4 = v3;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A7A18);
  OUTLINED_FUNCTION_1();
  v6 = v5;
  OUTLINED_FUNCTION_71();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v18 - v8;
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  sub_1C9648598();
  sub_1C96A7F44();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v2);
  }

  else
  {
    v10 = v6;
    sub_1C9648640();
    v11 = v20;
    OUTLINED_FUNCTION_20_27();
    sub_1C96A7CB4();
    memcpy(v28, v27, sizeof(v28));
    v22[0] = 1;
    v18 = sub_1C96A7C44();
    v19 = v12;
    v13 = sub_1C96A7C44();
    v15 = v14;
    (*(v10 + 8))(v9, v11);
    OUTLINED_FUNCTION_27_15(v21);
    v17 = v18;
    v16 = v19;
    v21[9] = v18;
    v21[10] = v19;
    v21[11] = v13;
    v21[12] = v15;
    memcpy(v4, v21, 0x68uLL);
    sub_1C9648694(v21, v22);
    __swift_destroy_boxed_opaque_existential_1Tm(v2);
    OUTLINED_FUNCTION_27_15(v22);
    v23 = v17;
    v24 = v16;
    v25 = v13;
    v26 = v15;
    sub_1C955FE40(v22);
  }

  OUTLINED_FUNCTION_118();
}

unint64_t sub_1C9648544()
{
  result = qword_1EC3A79F8;
  if (!qword_1EC3A79F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A79F8);
  }

  return result;
}

unint64_t sub_1C9648598()
{
  result = qword_1EC3A7A08;
  if (!qword_1EC3A7A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A7A08);
  }

  return result;
}

unint64_t sub_1C96485EC()
{
  result = qword_1EC3A7A10;
  if (!qword_1EC3A7A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A7A10);
  }

  return result;
}

unint64_t sub_1C9648640()
{
  result = qword_1EC3A7A20;
  if (!qword_1EC3A7A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A7A20);
  }

  return result;
}

uint64_t sub_1C96486CC(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 104))
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

uint64_t sub_1C964870C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 104) = 1;
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

    *(result + 104) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SavedLocation.Placeholder.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for SavedLocation.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *sub_1C964892C(_BYTE *result, int a2, int a3)
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

unint64_t sub_1C96489DC()
{
  result = qword_1EC3A7A28;
  if (!qword_1EC3A7A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A7A28);
  }

  return result;
}

unint64_t sub_1C9648A34()
{
  result = qword_1EC3A7A30;
  if (!qword_1EC3A7A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A7A30);
  }

  return result;
}

unint64_t sub_1C9648A8C()
{
  result = qword_1EC3A7A38;
  if (!qword_1EC3A7A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A7A38);
  }

  return result;
}

unint64_t sub_1C9648AE4()
{
  result = qword_1EC3A7A40;
  if (!qword_1EC3A7A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A7A40);
  }

  return result;
}

unint64_t sub_1C9648B3C()
{
  result = qword_1EC3A7A48;
  if (!qword_1EC3A7A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A7A48);
  }

  return result;
}

unint64_t sub_1C9648B94()
{
  result = qword_1EC3A7A50;
  if (!qword_1EC3A7A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A7A50);
  }

  return result;
}

unint64_t sub_1C9648BEC()
{
  result = qword_1EDB7A2A0;
  if (!qword_1EDB7A2A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7A2A0);
  }

  return result;
}

unint64_t sub_1C9648C44()
{
  result = qword_1EDB7A2A8;
  if (!qword_1EDB7A2A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7A2A8);
  }

  return result;
}

unint64_t sub_1C9648C9C()
{
  result = qword_1EDB7A278;
  if (!qword_1EDB7A278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7A278);
  }

  return result;
}

unint64_t sub_1C9648CF4()
{
  result = qword_1EDB7A280;
  if (!qword_1EDB7A280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7A280);
  }

  return result;
}

unint64_t sub_1C9648D4C()
{
  result = qword_1EDB7A288;
  if (!qword_1EDB7A288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7A288);
  }

  return result;
}

unint64_t sub_1C9648DA4()
{
  result = qword_1EDB7A290;
  if (!qword_1EDB7A290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7A290);
  }

  return result;
}

uint64_t sub_1C9648E04(unint64_t a1)
{
  v3 = sub_1C946D04C(a1);
  v4 = sub_1C946D04C(*v1);
  v5 = __OFADD__(v4, v3);
  result = v4 + v3;
  if (v5)
  {
    __break(1u);
    goto LABEL_8;
  }

  sub_1C953A188(result, 1);
  v7 = *v1;
  v8 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_1C964AFB8(v8 + 8 * *(v8 + 0x10) + 32, (*(v8 + 0x18) >> 1) - *(v8 + 0x10), a1);
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

uint64_t sub_1C9648EB0(uint64_t a1)
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

  sub_1C953A18C(result, 1);
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
  result = type metadata accessor for MapsConfiguration.EndpointConfiguration();
  if (v7 < v3)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  swift_arrayInitWithCopy();

  if (!v3)
  {
LABEL_8:
    *v1 = v6;
    return result;
  }

  v8 = *(v6 + 16);
  v9 = __OFADD__(v8, v3);
  v10 = v8 + v3;
  if (!v9)
  {
    *(v6 + 16) = v10;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t LocationCoalescenceProvider.__allocating_init(dedupingEnabled:)(char a1)
{
  v2 = swift_allocObject();
  LocationCoalescenceProvider.init(dedupingEnabled:)(a1);
  return v2;
}

uint64_t CoalescedLocationResult.locationsOfInterest.setter(uint64_t a1)
{

  *(v1 + 40) = a1;
  return result;
}

uint64_t CoalescedLocationResult.coalesceLocations.setter(uint64_t a1)
{

  *(v1 + 48) = a1;
  return result;
}

uint64_t sub_1C9649218()
{
  v1 = *(v0 + *(type metadata accessor for Location() + 40));
  sub_1C96A53C4();
  return v1;
}

uint64_t sub_1C9649258()
{
  v1 = *(v0 + *(type metadata accessor for Location() + 36));
  sub_1C96A53C4();
  return v1;
}

uint64_t LocationCoalescenceProvider.init(dedupingEnabled:)(char a1)
{
  sub_1C946B5D0(0, &unk_1EDB7CD20);
  *(v1 + 56) = sub_1C96A7904();
  *(v1 + 64) = a1;
  v3 = type metadata accessor for DefaultLocationCoalescenceOptionsProvider();
  swift_allocObject();
  sub_1C95FD894();
  *(v1 + 40) = v3;
  *(v1 + 48) = &off_1F49070E0;
  *(v1 + 16) = v4;
  return v1;
}

uint64_t sub_1C9649364()
{
  OUTLINED_FUNCTION_40_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(v1);
  OUTLINED_FUNCTION_6_3();
  v2 = OUTLINED_FUNCTION_11();
  v3(v2);
  return v0;
}

uint64_t sub_1C96493E8(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v7 = *(a2 + 24);
  v8 = *(a2 + 32);
  v9 = __swift_mutable_project_boxed_opaque_existential_1(a2, v7);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_14();
  v12 = v11 - v10;
  (*(v13 + 16))(v11 - v10);
  v14 = a3(a1, v12, v3, v7, v8);
  __swift_destroy_boxed_opaque_existential_1Tm(a2);
  return v14;
}

uint64_t sub_1C96494E8()
{
  sub_1C949D47C(v0, v3);
  if (v5)
  {
    v1 = v4;
  }

  else
  {
    v1 = 0;
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v3);
  return v1;
}

BOOL sub_1C9649538()
{
  v0 = COERCE_DOUBLE(sub_1C96494E8());
  if (v1)
  {
    v2 = INFINITY;
  }

  else
  {
    v2 = v0;
  }

  v3 = COERCE_DOUBLE(sub_1C96494E8());
  if (v4)
  {
    v3 = INFINITY;
  }

  return v2 < v3;
}

uint64_t LocationCoalescenceProvider.coalesceLocations(currentLocation:locationList:locationsOfInterest:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_17_5();
  v7 = v6;
  v8 = sub_1C96A6F04();
  LocationCoalescenceProvider.coalesceLocations(currentLocation:locationList:locationsOfInterest:displayContextByLocation:)(v4, v3, a3, v8, v7);
}

uint64_t LocationCoalescenceProvider.matchLocationsOfInterest(for:locationsOfInterest:)()
{
  OUTLINED_FUNCTION_17_5();
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4C98);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C96AA1C0;
  sub_1C9469B6C(v1, inited + 32);
  v5 = sub_1C96A6F04();
  v6 = sub_1C9497AC4(v0, inited, v5);

  swift_setDeallocating();
  sub_1C953A130();
  sub_1C94FB1D0(v6, v3);
}

uint64_t LocationCoalescenceProvider.deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);

  return v0;
}

uint64_t LocationCoalescenceProvider.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);

  return MEMORY[0x1EEE6BDC0](v0, 65, 7);
}

void sub_1C96497C0(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = OUTLINED_FUNCTION_6_54(a1, a2, a3, a4, a5);
  sub_1C94DED24(v8, (*(v7 + 56) + 32 * v6));
  OUTLINED_FUNCTION_18_31();
  if (v10)
  {
    __break(1u);
  }

  else
  {
    *(a5 + 16) = v9;
  }
}

void sub_1C9649804(uint64_t a1, uint64_t a2, __n128 *a3, uint64_t a4)
{
  OUTLINED_FUNCTION_17_5();
  OUTLINED_FUNCTION_3_52(v8, v9, v10, v11);
  v13 = *(v12 + 48);
  sub_1C96A7B74();
  OUTLINED_FUNCTION_6_3();
  (*(v14 + 32))(v13 + *(v14 + 72) * v5, v4);
  sub_1C94DED24(a3, (*(a4 + 56) + 32 * v5));
  OUTLINED_FUNCTION_18_31();
  if (v16)
  {
    __break(1u);
  }

  else
  {
    *(a4 + 16) = v15;
  }
}

void sub_1C9649898(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = OUTLINED_FUNCTION_3_52(a1, a2, a3, a4);
  *(*(v6 + 48) + v5) = v7 & 1;
  memcpy((*(v6 + 56) + 72 * v5), v8, 0x48uLL);
  OUTLINED_FUNCTION_18_31();
  if (v10)
  {
    __break(1u);
  }

  else
  {
    *(a4 + 16) = v9;
  }
}

unint64_t sub_1C96498F4(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = OUTLINED_FUNCTION_6_54(a1, a2, a3, a4, a5);
  v7 = *(v6 + 56) + 40 * result;
  v9 = *(v8 + 16);
  *v7 = *v8;
  *(v7 + 16) = v9;
  *(v7 + 32) = *(v8 + 32);
  v10 = *(v6 + 16);
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    *(v6 + 16) = v12;
  }

  return result;
}

unint64_t sub_1C964993C(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = OUTLINED_FUNCTION_6_54(a1, a2, a3, a4, a5);
  *(*(v6 + 56) + 8 * result) = v7;
  v8 = *(v6 + 16);
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    *(v6 + 16) = v10;
  }

  return result;
}

void sub_1C9649970(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_6_54(a1, a2, a3, a4, a5);
  type metadata accessor for Location();
  sub_1C9499788();
  OUTLINED_FUNCTION_18_31();
  if (v7)
  {
    __break(1u);
  }

  else
  {
    *(a5 + 16) = v6;
  }
}

void sub_1C96499F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_17_5();
  OUTLINED_FUNCTION_3_52(v8, v9, v10, v11);
  v13 = *(v12 + 48);
  sub_1C96A4C14();
  OUTLINED_FUNCTION_6_3();
  (*(v14 + 32))(v13 + *(v14 + 72) * v5, v4);
  v15 = *(a4 + 56) + 56 * v5;
  *(v15 + 48) = *(a3 + 48);
  v16 = *(a3 + 32);
  *(v15 + 16) = *(a3 + 16);
  *(v15 + 32) = v16;
  *v15 = *a3;
  OUTLINED_FUNCTION_18_31();
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a4 + 16) = v17;
  }
}

unint64_t sub_1C9649A9C(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = OUTLINED_FUNCTION_3_52(a1, a2, a3, a4);
  *(v5[6] + 8 * result) = v6;
  *(v5[7] + 8 * result) = v7;
  v8 = v5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    v5[2] = v10;
  }

  return result;
}

void sub_1C9649AD8(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v4 = a3[1];
  if (v4 < 1)
  {
    v6 = MEMORY[0x1E69E7CC0];
LABEL_89:
    v101 = *a1;
    if (!*a1)
    {
      goto LABEL_130;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_91:
      v90 = v6;
      v91 = (v6 + 16);
      for (i = *(v6 + 2); ; *v91 = i)
      {
        v6 = (i - 2);
        if (i < 2)
        {
          break;
        }

        if (!*a3)
        {
          goto LABEL_127;
        }

        v93 = &v90[16 * i];
        v94 = *v93;
        v95 = &v91[2 * i];
        v96 = v95[1];
        v97 = v107;
        sub_1C964A824((*a3 + 48 * *v93), (*a3 + 48 * *v95), (*a3 + 48 * v96), v101);
        v107 = v97;
        if (v97)
        {
          break;
        }

        if (v96 < v94)
        {
          goto LABEL_115;
        }

        if (v6 >= *v91)
        {
          goto LABEL_116;
        }

        *v93 = v94;
        *(v93 + 1) = v96;
        v98 = *v91 - i;
        if (*v91 < i)
        {
          goto LABEL_117;
        }

        i = *v91 - 1;
        memmove(v95, v95 + 2, 16 * v98);
      }

LABEL_99:

      return;
    }

LABEL_124:
    v6 = sub_1C964ACF8(v6);
    goto LABEL_91;
  }

  v5 = 0;
  v6 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v7 = v5++;
    if (v5 < v4)
    {
      v8 = *a3;
      sub_1C949B07C(*a3 + 48 * v5, v105);
      v9 = 48 * v7;
      sub_1C949B07C(v8 + 48 * v7, v103);
      v10 = v106;
      v11 = v104;
      sub_1C949B0D8(v103);
      sub_1C949B0D8(v105);
      v12 = v8 + 48 * v7 + 96;
      v13 = v7 + 2;
      while (1)
      {
        v14 = v13;
        if (++v5 >= v4)
        {
          break;
        }

        sub_1C949B07C(v12, v105);
        sub_1C949B07C(v12 - 48, v103);
        v15 = v106;
        v16 = v104;
        sub_1C949B0D8(v103);
        sub_1C949B0D8(v105);
        v12 += 48;
        v13 = v14 + 1;
        if (v10 < v11 == v15 >= v16)
        {
          goto LABEL_9;
        }
      }

      v5 = v4;
LABEL_9:
      if (v10 < v11)
      {
        if (v5 < v7)
        {
          goto LABEL_121;
        }

        if (v7 < v5)
        {
          if (v4 >= v14)
          {
            v17 = v14;
          }

          else
          {
            v17 = v4;
          }

          v18 = 48 * v17 - 48;
          v19 = v5;
          v20 = v7;
          do
          {
            if (v20 != --v19)
            {
              v21 = *a3;
              if (!*a3)
              {
                goto LABEL_128;
              }

              v22 = (v21 + v9);
              v23 = (v21 + v18);
              v24 = *v22;
              v25 = v22[1];
              v26 = v22[2];
              v28 = v23[1];
              v27 = v23[2];
              *v22 = *v23;
              v22[1] = v28;
              v22[2] = v27;
              v23[1] = v25;
              v23[2] = v26;
              *v23 = v24;
            }

            ++v20;
            v18 -= 48;
            v9 += 48;
          }

          while (v20 < v19);
        }
      }
    }

    v29 = a3[1];
    if (v5 < v29)
    {
      if (__OFSUB__(v5, v7))
      {
        goto LABEL_120;
      }

      if (v5 - v7 < a4)
      {
        break;
      }
    }

LABEL_37:
    if (v5 < v7)
    {
      goto LABEL_119;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1C94FB33C();
      v6 = v88;
    }

    v46 = *(v6 + 2);
    v47 = v46 + 1;
    if (v46 >= *(v6 + 3) >> 1)
    {
      sub_1C94FB33C();
      v6 = v89;
    }

    *(v6 + 2) = v47;
    v48 = v6 + 32;
    v49 = &v6[16 * v46 + 32];
    *v49 = v7;
    *(v49 + 1) = v5;
    v101 = *a1;
    if (!*a1)
    {
      goto LABEL_129;
    }

    if (v46)
    {
      while (1)
      {
        v50 = v47 - 1;
        v51 = &v48[16 * v47 - 16];
        v52 = &v6[16 * v47];
        if (v47 >= 4)
        {
          break;
        }

        if (v47 == 3)
        {
          v53 = *(v6 + 4);
          v54 = *(v6 + 5);
          v63 = __OFSUB__(v54, v53);
          v55 = v54 - v53;
          v56 = v63;
LABEL_57:
          if (v56)
          {
            goto LABEL_106;
          }

          v68 = *v52;
          v67 = *(v52 + 1);
          v69 = __OFSUB__(v67, v68);
          v70 = v67 - v68;
          v71 = v69;
          if (v69)
          {
            goto LABEL_109;
          }

          v72 = *(v51 + 1);
          v73 = v72 - *v51;
          if (__OFSUB__(v72, *v51))
          {
            goto LABEL_112;
          }

          if (__OFADD__(v70, v73))
          {
            goto LABEL_114;
          }

          if (v70 + v73 >= v55)
          {
            if (v55 < v73)
            {
              v50 = v47 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v47 < 2)
        {
          goto LABEL_108;
        }

        v75 = *v52;
        v74 = *(v52 + 1);
        v63 = __OFSUB__(v74, v75);
        v70 = v74 - v75;
        v71 = v63;
LABEL_72:
        if (v71)
        {
          goto LABEL_111;
        }

        v77 = *v51;
        v76 = *(v51 + 1);
        v63 = __OFSUB__(v76, v77);
        v78 = v76 - v77;
        if (v63)
        {
          goto LABEL_113;
        }

        if (v78 < v70)
        {
          goto LABEL_86;
        }

LABEL_79:
        if (v50 - 1 >= v47)
        {
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
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
          goto LABEL_123;
        }

        if (!*a3)
        {
          goto LABEL_126;
        }

        v82 = v6;
        v83 = &v48[16 * v50 - 16];
        v84 = *v83;
        v6 = &v48[16 * v50];
        v85 = *(v6 + 1);
        v86 = v107;
        sub_1C964A824((*a3 + 48 * *v83), (*a3 + 48 * *v6), (*a3 + 48 * v85), v101);
        v107 = v86;
        if (v86)
        {
          goto LABEL_99;
        }

        if (v85 < v84)
        {
          goto LABEL_101;
        }

        v87 = *(v82 + 2);
        if (v50 > v87)
        {
          goto LABEL_102;
        }

        *v83 = v84;
        *(v83 + 1) = v85;
        if (v50 >= v87)
        {
          goto LABEL_103;
        }

        v47 = v87 - 1;
        memmove(&v48[16 * v50], v6 + 16, 16 * (v87 - 1 - v50));
        v6 = v82;
        *(v82 + 2) = v87 - 1;
        if (v87 <= 2)
        {
          goto LABEL_86;
        }
      }

      v57 = &v48[16 * v47];
      v58 = *(v57 - 8);
      v59 = *(v57 - 7);
      v63 = __OFSUB__(v59, v58);
      v60 = v59 - v58;
      if (v63)
      {
        goto LABEL_104;
      }

      v62 = *(v57 - 6);
      v61 = *(v57 - 5);
      v63 = __OFSUB__(v61, v62);
      v55 = v61 - v62;
      v56 = v63;
      if (v63)
      {
        goto LABEL_105;
      }

      v64 = *(v52 + 1);
      v65 = v64 - *v52;
      if (__OFSUB__(v64, *v52))
      {
        goto LABEL_107;
      }

      v63 = __OFADD__(v55, v65);
      v66 = v55 + v65;
      if (v63)
      {
        goto LABEL_110;
      }

      if (v66 >= v60)
      {
        v80 = *v51;
        v79 = *(v51 + 1);
        v63 = __OFSUB__(v79, v80);
        v81 = v79 - v80;
        if (v63)
        {
          goto LABEL_118;
        }

        if (v55 < v81)
        {
          v50 = v47 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_86:
    v4 = a3[1];
    if (v5 >= v4)
    {
      goto LABEL_89;
    }
  }

  if (__OFADD__(v7, a4))
  {
    goto LABEL_122;
  }

  if (v7 + a4 >= v29)
  {
    v30 = a3[1];
  }

  else
  {
    v30 = v7 + a4;
  }

  if (v30 < v7)
  {
LABEL_123:
    __break(1u);
    goto LABEL_124;
  }

  if (v5 == v30)
  {
    goto LABEL_37;
  }

  v101 = v6;
  v31 = *a3;
  v32 = *a3 + 48 * v5;
  v33 = v7;
  v34 = v7 - v5;
LABEL_30:
  v35 = v30;
  v36 = v34;
  v37 = v32;
  while (1)
  {
    sub_1C949B07C(v37, v105);
    v38 = v37 - 3;
    sub_1C949B07C((v37 - 3), v103);
    v39 = v106;
    v40 = v104;
    sub_1C949B0D8(v103);
    sub_1C949B0D8(v105);
    if (v39 >= v40)
    {
LABEL_35:
      ++v5;
      v32 += 48;
      --v34;
      v30 = v35;
      if (v5 == v35)
      {
        v5 = v35;
        v6 = v101;
        v7 = v33;
        goto LABEL_37;
      }

      goto LABEL_30;
    }

    if (!v31)
    {
      break;
    }

    v42 = v37[1];
    v41 = v37[2];
    v43 = *v37;
    v44 = *(v37 - 2);
    *v37 = *v38;
    v37[1] = v44;
    v37[2] = *(v37 - 1);
    *v38 = v43;
    *(v37 - 2) = v42;
    v37 -= 3;
    v38[2] = v41;
    if (__CFADD__(v36++, 1))
    {
      goto LABEL_35;
    }
  }

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
}

void sub_1C964A10C(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v111 = a3;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x1E69E7CC0];
LABEL_101:
    __dst = *a1;
    if (!*a1)
    {
      goto LABEL_144;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      goto LABEL_138;
    }

    goto LABEL_103;
  }

  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v9 = v7++;
    if (v7 >= v6)
    {
      goto LABEL_26;
    }

    v10 = *v111;
    sub_1C949D47C(*v111 + 56 * v7, v110);
    sub_1C949D47C(v10 + 56 * v9, v109);
    v11 = sub_1C9649538();
    if (v5)
    {
      sub_1C949D4E4(v109);
      sub_1C949D4E4(v110);
      goto LABEL_113;
    }

    v12 = v11;
    sub_1C949D4E4(v109);
    sub_1C949D4E4(v110);
    v13 = 56 * v9;
    v14 = v10 + 56 * v9 + 112;
    v15 = v9 + 2;
    while (1)
    {
      v16 = v15;
      if (++v7 >= v6)
      {
        break;
      }

      sub_1C949D47C(v14, v110);
      sub_1C949D47C(v14 - 56, v109);
      sub_1C949D47C(v110, v106);
      v17 = INFINITY;
      if (v108)
      {
        v18 = v107;
      }

      else
      {
        v18 = INFINITY;
      }

      __swift_destroy_boxed_opaque_existential_1Tm(v106);
      sub_1C949D47C(v109, v106);
      if (v108)
      {
        v17 = v107;
      }

      __swift_destroy_boxed_opaque_existential_1Tm(v106);
      sub_1C949D4E4(v109);
      sub_1C949D4E4(v110);
      v14 += 56;
      v15 = v16 + 1;
      if (((v12 ^ (v18 >= v17)) & 1) == 0)
      {
        if (!v12)
        {
          goto LABEL_26;
        }

LABEL_16:
        if (v7 >= v9)
        {
          if (v9 < v7)
          {
            if (v6 >= v16)
            {
              v19 = v16;
            }

            else
            {
              v19 = v6;
            }

            v20 = 56 * v19 - 56;
            v21 = v7;
            v22 = v9;
            do
            {
              if (v22 != --v21)
              {
                v23 = *v111;
                if (!*v111)
                {
                  goto LABEL_142;
                }

                v24 = (v23 + v13);
                v25 = *(v23 + v13 + 48);
                v26 = (v23 + v20);
                v28 = v24[1];
                v27 = v24[2];
                v29 = *v24;
                v31 = v26[1];
                v30 = v26[2];
                v32 = *v26;
                *(v24 + 6) = *(v26 + 6);
                v24[1] = v31;
                v24[2] = v30;
                *v24 = v32;
                *v26 = v29;
                v26[1] = v28;
                v26[2] = v27;
                *(v26 + 48) = v25;
              }

              ++v22;
              v20 -= 56;
              v13 += 56;
            }

            while (v22 < v21);
          }

          goto LABEL_26;
        }

LABEL_137:
        __break(1u);
LABEL_138:
        v8 = sub_1C964ACF8(v8);
LABEL_103:
        v94 = (v8 + 16);
        v95 = *(v8 + 16);
        while (v95 >= 2)
        {
          if (!*v111)
          {
            goto LABEL_141;
          }

          v96 = v8;
          v97 = (v8 + 16 * v95);
          v98 = *v97;
          v99 = &v94[2 * v95];
          v8 = v99[1];
          sub_1C964AA34((*v111 + 56 * *v97), (*v111 + 56 * *v99), *v111 + 56 * v8, __dst);
          if (v5)
          {
            break;
          }

          if (v8 < v98)
          {
            goto LABEL_129;
          }

          if (v95 - 2 >= *v94)
          {
            goto LABEL_130;
          }

          *v97 = v98;
          v97[1] = v8;
          v100 = *v94 - v95;
          if (*v94 < v95)
          {
            goto LABEL_131;
          }

          v95 = *v94 - 1;
          memmove(v99, v99 + 2, 16 * v100);
          *v94 = v95;
          v8 = v96;
        }

LABEL_113:

        return;
      }
    }

    v7 = v6;
    if (v12)
    {
      goto LABEL_16;
    }

LABEL_26:
    v33 = v111[1];
    if (v7 < v33)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_134;
      }

      if (v7 - v9 < a4)
      {
        break;
      }
    }

LABEL_48:
    if (v7 < v9)
    {
      goto LABEL_133;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1C94FB33C();
      v8 = v92;
    }

    v50 = *(v8 + 16);
    v51 = v50 + 1;
    if (v50 >= *(v8 + 24) >> 1)
    {
      sub_1C94FB33C();
      v8 = v93;
    }

    *(v8 + 16) = v51;
    v52 = v8 + 32;
    v53 = (v8 + 32 + 16 * v50);
    *v53 = v9;
    v53[1] = v7;
    __dst = *a1;
    if (!*a1)
    {
      goto LABEL_143;
    }

    if (v50)
    {
      v104 = v7;
      while (1)
      {
        v54 = v51 - 1;
        v55 = (v52 + 16 * (v51 - 1));
        v56 = (v8 + 16 * v51);
        if (v51 >= 4)
        {
          break;
        }

        if (v51 == 3)
        {
          v57 = *(v8 + 32);
          v58 = *(v8 + 40);
          v67 = __OFSUB__(v58, v57);
          v59 = v58 - v57;
          v60 = v67;
LABEL_69:
          if (v60)
          {
            goto LABEL_120;
          }

          v72 = *v56;
          v71 = v56[1];
          v73 = __OFSUB__(v71, v72);
          v74 = v71 - v72;
          v75 = v73;
          if (v73)
          {
            goto LABEL_123;
          }

          v76 = v55[1];
          v77 = v76 - *v55;
          if (__OFSUB__(v76, *v55))
          {
            goto LABEL_126;
          }

          if (__OFADD__(v74, v77))
          {
            goto LABEL_128;
          }

          if (v74 + v77 >= v59)
          {
            if (v59 < v77)
            {
              v54 = v51 - 2;
            }

            goto LABEL_91;
          }

          goto LABEL_84;
        }

        if (v51 < 2)
        {
          goto LABEL_122;
        }

        v79 = *v56;
        v78 = v56[1];
        v67 = __OFSUB__(v78, v79);
        v74 = v78 - v79;
        v75 = v67;
LABEL_84:
        if (v75)
        {
          goto LABEL_125;
        }

        v81 = *v55;
        v80 = v55[1];
        v67 = __OFSUB__(v80, v81);
        v82 = v80 - v81;
        if (v67)
        {
          goto LABEL_127;
        }

        if (v82 < v74)
        {
          goto LABEL_98;
        }

LABEL_91:
        if (v54 - 1 >= v51)
        {
          __break(1u);
LABEL_115:
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
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
          goto LABEL_136;
        }

        if (!*v111)
        {
          goto LABEL_140;
        }

        v86 = (v52 + 16 * (v54 - 1));
        v87 = *v86;
        v88 = v54;
        v89 = (v52 + 16 * v54);
        v90 = v89[1];
        sub_1C964AA34((*v111 + 56 * *v86), (*v111 + 56 * *v89), *v111 + 56 * v90, __dst);
        if (v5)
        {
          goto LABEL_113;
        }

        if (v90 < v87)
        {
          goto LABEL_115;
        }

        v5 = v8;
        v8 = *(v8 + 16);
        if (v88 > v8)
        {
          goto LABEL_116;
        }

        *v86 = v87;
        v86[1] = v90;
        if (v88 >= v8)
        {
          goto LABEL_117;
        }

        v51 = v8 - 1;
        memmove(v89, v89 + 2, 16 * (v8 - 1 - v88));
        *(v5 + 16) = v8 - 1;
        v91 = v8 > 2;
        v8 = v5;
        v5 = 0;
        v7 = v104;
        if (!v91)
        {
          goto LABEL_98;
        }
      }

      v61 = v52 + 16 * v51;
      v62 = *(v61 - 64);
      v63 = *(v61 - 56);
      v67 = __OFSUB__(v63, v62);
      v64 = v63 - v62;
      if (v67)
      {
        goto LABEL_118;
      }

      v66 = *(v61 - 48);
      v65 = *(v61 - 40);
      v67 = __OFSUB__(v65, v66);
      v59 = v65 - v66;
      v60 = v67;
      if (v67)
      {
        goto LABEL_119;
      }

      v68 = v56[1];
      v69 = v68 - *v56;
      if (__OFSUB__(v68, *v56))
      {
        goto LABEL_121;
      }

      v67 = __OFADD__(v59, v69);
      v70 = v59 + v69;
      if (v67)
      {
        goto LABEL_124;
      }

      if (v70 >= v64)
      {
        v84 = *v55;
        v83 = v55[1];
        v67 = __OFSUB__(v83, v84);
        v85 = v83 - v84;
        if (v67)
        {
          goto LABEL_132;
        }

        if (v59 < v85)
        {
          v54 = v51 - 2;
        }

        goto LABEL_91;
      }

      goto LABEL_69;
    }

LABEL_98:
    v6 = v111[1];
    if (v7 >= v6)
    {
      goto LABEL_101;
    }
  }

  if (__OFADD__(v9, a4))
  {
    goto LABEL_135;
  }

  if (v9 + a4 >= v33)
  {
    v34 = v111[1];
  }

  else
  {
    v34 = (v9 + a4);
  }

  if (v34 < v9)
  {
LABEL_136:
    __break(1u);
    goto LABEL_137;
  }

  if (v7 == v34)
  {
    goto LABEL_48;
  }

  v35 = *v111;
  v36 = v9;
  v37 = *v111 + 56 * v7;
  v103 = v36;
  __dst = v34;
  v38 = v36 - v7;
LABEL_36:
  v39 = v38;
  v40 = v37;
  while (1)
  {
    sub_1C949D47C(v40, v110);
    v41 = v40 - 56;
    sub_1C949D47C(v40 - 56, v109);
    sub_1C949D47C(v110, v106);
    v42 = INFINITY;
    if (v108)
    {
      v43 = v107;
    }

    else
    {
      v43 = INFINITY;
    }

    __swift_destroy_boxed_opaque_existential_1Tm(v106);
    sub_1C949D47C(v109, v106);
    if (v108)
    {
      v42 = v107;
    }

    __swift_destroy_boxed_opaque_existential_1Tm(v106);
    sub_1C949D4E4(v109);
    sub_1C949D4E4(v110);
    if (v43 >= v42)
    {
LABEL_46:
      ++v7;
      v37 += 56;
      --v38;
      if (v7 == __dst)
      {
        v7 = __dst;
        v9 = v103;
        goto LABEL_48;
      }

      goto LABEL_36;
    }

    if (!v35)
    {
      break;
    }

    v44 = *(v40 + 48);
    v46 = *(v40 + 16);
    v45 = *(v40 + 32);
    v47 = *v40;
    v48 = *(v40 - 40);
    *v40 = *v41;
    *(v40 + 16) = v48;
    *(v40 + 32) = *(v40 - 24);
    *(v40 + 48) = *(v40 - 8);
    *v41 = v47;
    *(v40 - 40) = v46;
    *(v40 - 24) = v45;
    v40 -= 56;
    *(v41 + 48) = v44;
    if (__CFADD__(v39++, 1))
    {
      goto LABEL_46;
    }
  }

  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
LABEL_144:
  __break(1u);
}

uint64_t sub_1C964A824(char *a1, char *a2, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = (a2 - a1) / 48;
  v9 = (a3 - a2) / 48;
  if (v8 < v9)
  {
    sub_1C9522A90(a1, (a2 - a1) / 48, a4);
    v10 = &v4[48 * v8];
    while (1)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_28;
      }

      sub_1C949B07C(v6, v33);
      sub_1C949B07C(v4, v31);
      v12 = v34;
      v13 = v32;
      sub_1C949B0D8(v31);
      sub_1C949B0D8(v33);
      if (v12 >= v13)
      {
        break;
      }

      v14 = v6;
      v15 = v7 == v6;
      v6 += 48;
      if (!v15)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 48;
    }

    v14 = v4;
    v15 = v7 == v4;
    v4 += 48;
    if (v15)
    {
      goto LABEL_13;
    }

LABEL_12:
    v16 = *v14;
    v17 = *(v14 + 2);
    *(v7 + 1) = *(v14 + 1);
    *(v7 + 2) = v17;
    *v7 = v16;
    goto LABEL_13;
  }

  sub_1C9522A90(a2, (a3 - a2) / 48, a4);
  v18 = &v4[48 * v9];
LABEL_15:
  v19 = v6 - 48;
  v5 -= 48;
  for (i = v18 - 48; ; i -= 48)
  {
    v10 = i + 48;
    if (i + 48 <= v4 || v6 <= v7)
    {
      break;
    }

    sub_1C949B07C(i, v33);
    sub_1C949B07C((v6 - 48), v31);
    v22 = v34;
    v23 = v32;
    sub_1C949B0D8(v31);
    sub_1C949B0D8(v33);
    if (v22 < v23)
    {
      v18 = i + 48;
      v15 = v5 + 48 == v6;
      v6 -= 48;
      if (!v15)
      {
        v26 = *v19;
        v27 = *(v19 + 2);
        *(v5 + 1) = *(v19 + 1);
        *(v5 + 2) = v27;
        *v5 = v26;
        v6 = v19;
      }

      goto LABEL_15;
    }

    if (v10 != v5 + 48)
    {
      v24 = *i;
      v25 = *(i + 2);
      *(v5 + 1) = *(i + 1);
      *(v5 + 2) = v25;
      *v5 = v24;
    }

    v5 -= 48;
  }

LABEL_28:
  v28 = (v10 - v4) / 48;
  if (v6 != v4 || v6 >= &v4[48 * v28])
  {
    memmove(v6, v4, 48 * v28);
  }

  return 1;
}

uint64_t sub_1C964AA34(char *__src, char *a2, unint64_t a3, char *__dst)
{
  v4 = __dst;
  v5 = a3;
  v6 = a2;
  v7 = __src;
  v8 = (a2 - __src) / 56;
  v9 = (a3 - a2) / 56;
  if (v8 < v9)
  {
    sub_1C9522AD0(__src, (a2 - __src) / 56, __dst);
    v10 = &v4[56 * v8];
    while (1)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_38;
      }

      sub_1C949D47C(v6, v38);
      sub_1C949D47C(v4, v37);
      sub_1C949D47C(v38, v34);
      v12 = INFINITY;
      v13 = v36 ? v35 : INFINITY;
      __swift_destroy_boxed_opaque_existential_1Tm(v34);
      sub_1C949D47C(v37, v34);
      if (v36)
      {
        v12 = v35;
      }

      __swift_destroy_boxed_opaque_existential_1Tm(v34);
      sub_1C949D4E4(v37);
      sub_1C949D4E4(v38);
      if (v13 >= v12)
      {
        break;
      }

      v14 = v6;
      v15 = v7 == v6;
      v6 += 56;
      if (!v15)
      {
        goto LABEL_17;
      }

LABEL_18:
      v7 += 56;
    }

    v14 = v4;
    v15 = v7 == v4;
    v4 += 56;
    if (v15)
    {
      goto LABEL_18;
    }

LABEL_17:
    v16 = *v14;
    v17 = *(v14 + 1);
    v18 = *(v14 + 2);
    *(v7 + 6) = *(v14 + 6);
    *(v7 + 1) = v17;
    *(v7 + 2) = v18;
    *v7 = v16;
    goto LABEL_18;
  }

  sub_1C9522AD0(a2, (a3 - a2) / 56, __dst);
  v19 = &v4[56 * v9];
LABEL_20:
  v20 = v6 - 56;
  v5 -= 56;
  for (i = (v19 - 56); ; i -= 56)
  {
    v10 = (i + 56);
    if (i + 56 <= v4 || v6 <= v7)
    {
      break;
    }

    sub_1C949D47C(i, v38);
    sub_1C949D47C((v6 - 56), v37);
    sub_1C949D47C(v38, v34);
    v23 = INFINITY;
    if (v36)
    {
      v24 = v35;
    }

    else
    {
      v24 = INFINITY;
    }

    __swift_destroy_boxed_opaque_existential_1Tm(v34);
    sub_1C949D47C(v37, v34);
    if (v36)
    {
      v23 = v35;
    }

    __swift_destroy_boxed_opaque_existential_1Tm(v34);
    sub_1C949D4E4(v37);
    sub_1C949D4E4(v38);
    if (v24 < v23)
    {
      v19 = (i + 56);
      v15 = v5 + 56 == v6;
      v6 -= 56;
      if (!v15)
      {
        v28 = *v20;
        v29 = *(v20 + 1);
        v30 = *(v20 + 2);
        *(v5 + 48) = *(v20 + 6);
        *(v5 + 16) = v29;
        *(v5 + 32) = v30;
        *v5 = v28;
        v6 = v20;
      }

      goto LABEL_20;
    }

    if (v10 != (v5 + 56))
    {
      v25 = *i;
      v26 = *(i + 16);
      v27 = *(i + 32);
      *(v5 + 48) = *(i + 48);
      *(v5 + 16) = v26;
      *(v5 + 32) = v27;
      *v5 = v25;
    }

    v5 -= 56;
  }

LABEL_38:
  v31 = 56 * ((v10 - v4) / 56);
  if (v6 != v4 || v6 >= &v4[v31])
  {
    memmove(v6, v4, v31);
  }

  return 1;
}

char *sub_1C964AD0C(char *__src, uint64_t a2, char *__dst)
{
  if (__dst != __src || &__src[16 * a2] <= __dst)
  {
    return memmove(__dst, __src, 16 * a2);
  }

  return __src;
}

char *sub_1C964AD38(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4C80);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[16 * v8] <= v12)
    {
      memmove(v12, v13, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 16 * v8);
  }

  return v10;
}

uint64_t sub_1C964AE38(uint64_t result, uint64_t a2, unint64_t a3)
{
  v5 = result;
  v6 = a3 >> 62;
  if (a3 >> 62)
  {
    result = sub_1C96A7BB4();
    v7 = result;
    if (!result)
    {
      return OUTLINED_FUNCTION_11();
    }
  }

  else
  {
    v7 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return OUTLINED_FUNCTION_11();
    }
  }

  if (v5)
  {
    result = sub_1C946D04C(a3);
    if (result > a2)
    {
      __break(1u);
    }

    else
    {
      if (!v6)
      {
        sub_1C946B5D0(0, &qword_1EDB77CD8);
        swift_arrayInitWithCopy();
        return OUTLINED_FUNCTION_11();
      }

      if (v7 >= 1)
      {
        sub_1C964B790(&qword_1EC3A7AA0, &qword_1EC3A7A98);
        for (i = 0; i != v7; ++i)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A7A98);
          v9 = sub_1C952D120(v12, i, a3);
          v11 = *v10;
          (v9)(v12, 0);
          *(v5 + 8 * i) = v11;
        }

        return OUTLINED_FUNCTION_11();
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1C964AFB8(uint64_t result, uint64_t a2, unint64_t a3)
{
  v5 = result;
  v6 = a3 >> 62;
  if (a3 >> 62)
  {
    result = sub_1C96A7BB4();
    v7 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v7 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return a3;
    }
  }

  if (v5)
  {
    result = sub_1C946D04C(a3);
    if (result > a2)
    {
      __break(1u);
    }

    else
    {
      if (!v6)
      {
        sub_1C946B5D0(0, &qword_1EDB7AB48);
        swift_arrayInitWithCopy();
        return a3;
      }

      if (v7 >= 1)
      {
        sub_1C964B790(&qword_1EC3A7A90, &qword_1EC3A7A88);
        for (i = 0; i != v7; ++i)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A7A88);
          v9 = sub_1C952D18C(v12, i, a3);
          v11 = *v10;
          (v9)(v12, 0);
          *(v5 + 8 * i) = v11;
        }

        return a3;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1C964B18C(unint64_t a1)
{
  if (a1 >> 62)
  {
    sub_1C96A7BB4();
  }

  return sub_1C96A7AC4();
}

__n128 *sub_1C964B1F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = a1;
  v9 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = swift_allocObject();
  (*(v9 + 16))(v11, a2, a4);
  v13 = sub_1C964B310(v8, v11, v12, a4, a5);
  (*(v9 + 8))(a2, a4);
  return v13;
}

__n128 *sub_1C964B310(unsigned __int8 a1, uint64_t a2, __n128 *a3, uint64_t a4, uint64_t a5)
{
  v11[3] = a4;
  v11[4] = a5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v11);
  (*(*(a4 - 8) + 32))(boxed_opaque_existential_1, a2, a4);
  sub_1C946B5D0(0, &unk_1EDB7CD20);
  a3[3].n128_u64[1] = sub_1C96A7904();
  a3[4].n128_u8[0] = a1;
  sub_1C949B26C(v11, a3 + 1);
  return a3;
}

uint64_t sub_1C964B3F8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LocationOfInterest();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C964B4C0(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 96))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 40);
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

uint64_t sub_1C964B500(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 96) = 1;
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
      *(result + 40) = (a2 - 1);
      return result;
    }

    *(result + 96) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy49_8(uint64_t a1, uint64_t a2)
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

uint64_t sub_1C964B660(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 49))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 48);
  if (v3 >= 2)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C964B69C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 48) = 0;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *(result + 48) = -a2;
    }
  }

  return result;
}

uint64_t sub_1C964B6EC(uint64_t result, unsigned int a2)
{
  if (a2 > 1)
  {
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 48) = a2;
  return result;
}

uint64_t sub_1C964B73C()
{
  OUTLINED_FUNCTION_40_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(v1);
  OUTLINED_FUNCTION_6_3();
  v2 = OUTLINED_FUNCTION_11();
  v3(v2);
  return v0;
}

uint64_t sub_1C964B790(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1C964B80C(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

uint64_t sub_1C964B8BC@<X0>(_BYTE *a1@<X8>)
{
  result = static ContentEnvironment.read(from:)();
  if (!v1)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_1C964B904@<X0>(uint64_t *a1@<X8>)
{
  result = static CountryCode.read(from:)();
  if (!v1)
  {
    *a1 = result;
    a1[1] = v4;
  }

  return result;
}

uint64_t NotificationConfiguration.cloudChannelsConfiguration.getter()
{
  v1 = *(v0 + 24);
  sub_1C96A53C4();
  return v1;
}

uint64_t sub_1C964C08C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 88))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 32);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1C964C0E0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 88) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 88) = 0;
    }

    if (a2)
    {
      *(result + 32) = a2;
    }
  }

  return result;
}

uint64_t sub_1C964C158(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x65747461506C7275 && a2 == 0xEA00000000006E72;
  if (v4 || (sub_1C96A7DE4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656C69466E6F736ALL && a2 == 0xE800000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_1C96A7DE4();

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

uint64_t sub_1C964C228(char a1)
{
  if (a1)
  {
    return 0x656C69466E6F736ALL;
  }

  else
  {
    return 0x65747461506C7275;
  }
}

uint64_t sub_1C964C26C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C964C158(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C964C294(uint64_t a1)
{
  v2 = sub_1C964C47C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C964C2D0(uint64_t a1)
{
  v2 = sub_1C964C47C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AutomationStubFileMapping.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A7AA8);
  OUTLINED_FUNCTION_1();
  v12 = v5;
  MEMORY[0x1EEE9AC00](v6);
  v8 = v11 - v7;
  v9 = *(v1 + 16);
  v11[1] = *(v1 + 24);
  v11[2] = v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C964C47C();
  sub_1C96A7F54();
  v14 = 0;
  sub_1C96A7D24();
  if (!v2)
  {
    v13 = 1;
    sub_1C96A7D24();
  }

  return (*(v12 + 8))(v8, v4);
}

unint64_t sub_1C964C47C()
{
  result = qword_1EDB795D0;
  if (!qword_1EDB795D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB795D0);
  }

  return result;
}

uint64_t AutomationStubFileMapping.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A7AB0);
  OUTLINED_FUNCTION_1();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v19 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C964C47C();
  sub_1C96A7F44();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v22 = 0;
  v11 = sub_1C96A7C84();
  v13 = v12;
  v21 = 1;
  v14 = sub_1C96A7C84();
  v16 = v15;
  v17 = *(v7 + 8);
  v20 = v14;
  v17(v10, v5);
  *a2 = v11;
  a2[1] = v13;
  a2[2] = v20;
  a2[3] = v16;
  sub_1C96A53C4();
  sub_1C96A53C4();
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

_BYTE *storeEnumTagSinglePayload for AutomationStubFileMapping.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1C964C7E4()
{
  result = qword_1EC3A7AB8;
  if (!qword_1EC3A7AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A7AB8);
  }

  return result;
}

unint64_t sub_1C964C83C()
{
  result = qword_1EDB795C0;
  if (!qword_1EDB795C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB795C0);
  }

  return result;
}

unint64_t sub_1C964C894()
{
  result = qword_1EDB795C8;
  if (!qword_1EDB795C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB795C8);
  }

  return result;
}

uint64_t sub_1C964C8FC()
{
  v1 = v0;
  v2 = sub_1C96A5154();
  OUTLINED_FUNCTION_1();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_14();
  v8 = v7 - v6;
  if (qword_1EDB7CF60 != -1)
  {
    OUTLINED_FUNCTION_4_2();
  }

  v9 = sub_1C96A6154();
  __swift_project_value_buffer(v9, qword_1EDB7CF68);
  v10 = sub_1C96A6134();
  v11 = sub_1C96A76A4();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_1C945E000, v10, v11, "Fetching app config after user identity change", v12, 2u);
    OUTLINED_FUNCTION_26();
  }

  v13 = v1[5];
  v14 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v13);
  (*(v4 + 104))(v8, *MEMORY[0x1E69D63C0], v2);
  (*(v14 + 16))(v8, v13, v14);

  return (*(v4 + 8))(v8, v2);
}

uint64_t sub_1C964CAB0()
{
  v1 = v0;
  v2 = type metadata accessor for UserIdentity();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_14();
  v5 = v4 - v3;
  v6 = sub_1C96A4A54();
  OUTLINED_FUNCTION_1();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  v61 = &v56 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v56 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v56 - v15;
  v17 = v0[10];
  v18 = v0[11];
  __swift_project_boxed_opaque_existential_1(v0 + 7, v17);
  (*(v18 + 8))(v17, v18);
  v62 = v2;
  v19 = *(v2 + 36);
  v64 = v8;
  v20 = *(v8 + 16);
  v20(v16, v5 + v19, v6);
  OUTLINED_FUNCTION_0_100();
  if (qword_1EDB7CF60 != -1)
  {
    OUTLINED_FUNCTION_4_2();
  }

  v21 = sub_1C96A6154();
  v22 = __swift_project_value_buffer(v21, qword_1EDB7CF68);
  v20(v13, v16, v6);
  sub_1C96A3D04();
  v23 = sub_1C96A6134();
  v24 = sub_1C96A76A4();

  v60 = v24;
  v25 = os_log_type_enabled(v23, v24);
  v63 = v16;
  if (v25)
  {
    v26 = swift_slowAlloc();
    v58 = swift_slowAlloc();
    v65 = v58;
    OUTLINED_FUNCTION_2_53(7.2226e-34);
    v27 = v6;
    v59 = v22;
    v29 = v1[10];
    v28 = v1[11];
    __swift_project_boxed_opaque_existential_1(v1 + 7, v29);
    v30 = *(v28 + 8);
    v57 = v23;
    v31 = v29;
    v6 = v27;
    v30(v31, v28);
    v32 = (v5 + *(v62 + 32));
    v33 = *v32;
    v34 = v32[1];
    sub_1C96A53C4();
    OUTLINED_FUNCTION_0_100();
    v35 = sub_1C9484164(v33, v34, &v65);

    *(v26 + 14) = v35;
    *(v26 + 22) = 2082;
    v20(v61, v13, v27);
    v36 = sub_1C96A70C4();
    v38 = v37;
    v39 = *(v64 + 8);
    v39(v13, v27);
    v40 = sub_1C9484164(v36, v38, &v65);

    *(v26 + 24) = v40;
    v41 = v57;
    _os_log_impl(&dword_1C945E000, v57, v60, "About to reset an identifier from an external request; (old) reportWeatherUserIdentifier=%{private,mask.hash}s; reportWeatherUserIdentifierLastResetDate=%{public}s", v26, 0x20u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_26();
    OUTLINED_FUNCTION_26();
  }

  else
  {

    v39 = *(v64 + 8);
    v39(v13, v6);
  }

  v42 = v1[10];
  v43 = v1[11];
  __swift_project_boxed_opaque_existential_1(v1 + 7, v42);
  (*(v43 + 32))(v42, v43);
  sub_1C96A3D04();
  v44 = sub_1C96A6134();
  v45 = sub_1C96A76A4();

  if (os_log_type_enabled(v44, v45))
  {
    v46 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    v65 = v47;
    OUTLINED_FUNCTION_2_53(7.2225e-34);
    v61 = v39;
    v48 = v6;
    v49 = v1[10];
    v50 = v1[11];
    __swift_project_boxed_opaque_existential_1(v1 + 7, v49);
    (*(v50 + 8))(v49, v50);
    v51 = (v5 + *(v62 + 32));
    v52 = *v51;
    v53 = v51[1];
    sub_1C96A53C4();
    OUTLINED_FUNCTION_0_100();
    v54 = sub_1C9484164(v52, v53, &v65);

    *(v46 + 14) = v54;
    _os_log_impl(&dword_1C945E000, v44, v45, "Just reset an identifier; (new) reportWeatherUserIdentifier=%{private,mask.hash}s", v46, 0x16u);
    __swift_destroy_boxed_opaque_existential_1Tm(v47);
    OUTLINED_FUNCTION_26();
    OUTLINED_FUNCTION_26();

    return (v61)(v63, v48);
  }

  else
  {

    return (v39)(v63, v6);
  }
}

uint64_t sub_1C964D008()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 56);

  return MEMORY[0x1EEE6BDC0](v0, 96, 7);
}

uint64_t sub_1C964D0E4(void *a1, uint64_t a2)
{
  v4 = a1[3];
  v5 = a1[4];
  v6 = __swift_project_boxed_opaque_existential_1(a1, v4);

  return sub_1C964D138(v6, a2, v2, v4, v5);
}

uint64_t sub_1C964D138(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13[3] = a4;
  v13[4] = a5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v13);
  (*(*(a4 - 8) + 16))(boxed_opaque_existential_1, a1, a4);
  if (swift_unknownObjectWeakLoadStrong())
  {
    v10 = *(a3 + 24);
    ObjectType = swift_getObjectType();
    (*(v10 + 8))(v13, a2, ObjectType, v10);
    swift_unknownObjectRelease();
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(v13);
}

uint64_t SyncedDataManager.__allocating_init(syncedDataContextProvider:defaultSyncedData:)()
{
  swift_allocObject();
  OUTLINED_FUNCTION_25_2();
  SyncedDataManager.init(syncedDataContextProvider:defaultSyncedData:)();
  return v0;
}

void SyncedDataManager.init(syncedDataContextProvider:defaultSyncedData:)()
{
  OUTLINED_FUNCTION_103();
  v30 = v1;
  v31 = v2;
  v33 = sub_1C96A5174();
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_14();
  v32 = v5 - v4;
  OUTLINED_FUNCTION_15_4();
  v6 = type metadata accessor for SyncedData();
  OUTLINED_FUNCTION_1();
  v29 = v7;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v28 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  OUTLINED_FUNCTION_15_4();
  v11 = sub_1C96A5114();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_3();
  __swift_storeEnumTagSinglePayload(v12, v13, v14, v6);
  v15 = OBJC_IVAR____TtC11WeatherCore17SyncedDataManager_lock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4A30);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1C96AA1C0;
  sub_1C96A5104();
  v34 = v16;
  sub_1C949525C(&qword_1EDB7D0A8, MEMORY[0x1E69D6388]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4A38);
  sub_1C9469CB4(&qword_1EDB7CEA0, &qword_1EC3A4A38);
  sub_1C96A79E4();
  sub_1C96A5134();
  swift_allocObject();
  OUTLINED_FUNCTION_25_2();
  *(v0 + v15) = sub_1C96A5124();
  v17 = v0;
  v18 = v30;
  sub_1C9469B6C(v30, v0 + 16);
  v19 = v31;
  v20 = v28;
  sub_1C96518A4(v31, v28, type metadata accessor for SyncedData);
  v21 = (*(v29 + 80) + 16) & ~*(v29 + 80);
  swift_allocObject();
  OUTLINED_FUNCTION_0_50();
  sub_1C9651904(v20, v22 + v21, v23);
  v34 = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_14_34();
  sub_1C949525C(v24, v25);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5350);
  sub_1C9469CB4(&qword_1EDB7CE98, &unk_1EC3A5350);
  sub_1C96A79E4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A7AC0);
  swift_allocObject();
  v26 = sub_1C96A5544();
  sub_1C95D0D4C(v19, type metadata accessor for SyncedData);
  __swift_destroy_boxed_opaque_existential_1Tm(v18);
  *(v17 + 56) = v26;
  OUTLINED_FUNCTION_101();
}

uint64_t sub_1C964D670@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for SyncedData();
  OUTLINED_FUNCTION_7(v3);
  OUTLINED_FUNCTION_7_45();
  return sub_1C96518A4(v1 + v4, a1, v5);
}

uint64_t sub_1C964D6D4(__int128 *a1, uint64_t a2)
{
  v5 = sub_1C96A5114();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OBJC_IVAR____TtC11WeatherCore17SyncedDataManager_cachedSyncedData;
  v7 = type metadata accessor for SyncedData();
  __swift_storeEnumTagSinglePayload(v2 + v6, 1, 1, v7);
  v8 = OBJC_IVAR____TtC11WeatherCore17SyncedDataManager_lock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4A30);
  *(swift_allocObject() + 16) = xmmword_1C96AA1C0;
  sub_1C96A5104();
  sub_1C949525C(&qword_1EDB7D0A8, MEMORY[0x1E69D6388]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4A38);
  sub_1C9469CB4(&qword_1EDB7CEA0, &qword_1EC3A4A38);
  sub_1C96A79E4();
  sub_1C96A5134();
  swift_allocObject();
  *(v2 + v8) = sub_1C96A5124();
  sub_1C94670AC(a1, v2 + 16);
  *(v2 + 56) = a2;
  return v2;
}

void sub_1C964D8F8(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v1);
  (*(v2 + 8))(v1, v2);

  SyncedData.init(locations:)();
}

uint64_t SyncedDataManager.addLocation(_:displayContext:)@<X0>(uint64_t *a1@<X0>, unsigned __int8 *a2@<X1>, uint64_t a3@<X8>)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A6810);
  OUTLINED_FUNCTION_7(v9);
  OUTLINED_FUNCTION_71();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_90();
  v86 = v11;
  OUTLINED_FUNCTION_15_4();
  v87 = type metadata accessor for SyncedLocationDisplayContext();
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_2();
  v84 = v13 - v14;
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v15);
  v85 = &v82[-v16];
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v17);
  v88 = &v82[-v18];
  OUTLINED_FUNCTION_15_4();
  sub_1C96A4A54();
  OUTLINED_FUNCTION_1();
  v90 = v20;
  v91 = v19;
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_14();
  v89 = v22 - v21;
  OUTLINED_FUNCTION_15_4();
  v23 = type metadata accessor for Location();
  v24 = OUTLINED_FUNCTION_7(v23);
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_36_8();
  v25 = type metadata accessor for SyncedData();
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_14();
  v29 = v28 - v27;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5F90);
  OUTLINED_FUNCTION_7(v30);
  OUTLINED_FUNCTION_71();
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_2_37();
  LODWORD(v92) = *a2;
  SyncedDataManager.getSyncedData()(v4);
  v32 = OUTLINED_FUNCTION_21_3();
  OUTLINED_FUNCTION_23_1(v32, v33, v25);
  v93 = v3;
  v94 = v25;
  if (v34)
  {
    sub_1C96A5534();
    v35 = OUTLINED_FUNCTION_21_3();
    OUTLINED_FUNCTION_23_1(v35, v36, v25);
    if (!v34)
    {
      sub_1C9470AFC(v4, &unk_1EC3A5F90);
    }
  }

  else
  {
    OUTLINED_FUNCTION_0_50();
    sub_1C9651904(v4, a3, v37);
  }

  OUTLINED_FUNCTION_17_4();
  sub_1C96518A4(a3, v29, v38);
  v39 = sub_1C95C5198();
  v40 = sub_1C955FFD8(v39);
  v41 = v29 + *(v94 + 5);
  sub_1C95C5414();
  v43 = sub_1C955FFD8(v42);
  sub_1C95C870C(v40, v43);
  OUTLINED_FUNCTION_25_2();

  sub_1C95C4FBC(v41, v29);

  sub_1C95D0D4C(a3, v25);
  OUTLINED_FUNCTION_0_50();
  sub_1C9651904(v29, a3, v44);
  v46 = *a1;
  v45 = a1[1];
  v47 = a3;
  v48 = a1[3];
  v95 = a1[2];
  v49 = a1[4];
  v50 = a1[5];
  sub_1C96A66B4();
  OUTLINED_FUNCTION_25_2();
  sub_1C96A53C4();
  sub_1C96A53C4();
  v51 = sub_1C96A6F04();
  sub_1C96518A4(a1, v5, type metadata accessor for Location);
  sub_1C96A5954();
  v52 = v89;
  sub_1C96A5944();
  sub_1C96A49E4();
  v54 = v53;
  (*(v90 + 8))(v52, v91);
  SyncedLocation.init(location:createdAt:)(v5, v54, 0, v98);
  memcpy(v97, v98, sizeof(v97));
  v91 = v46;
  v96[0] = v46;
  v96[1] = v45;
  v96[2] = v95;
  v96[3] = v48;
  v96[4] = v49;
  v96[5] = v50;
  v96[6] = v51;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A60A8);
  sub_1C96A6C94();
  sub_1C95A038C(v98);
  v55 = v92;
  if (v92 == 2)
  {
  }

  else
  {
    v89 = v47;
    v90 = v51;
    sub_1C96518A4(a1, v5, type metadata accessor for Location);
    v56 = v87;
    v57 = v88;
    *&v88[*(v87 + 24)] = MEMORY[0x1E69E7CC8];
    v58 = v5[1];
    v97[0] = *v5;
    v97[1] = v58;
    sub_1C96A53C4();
    sub_1C96A66C4();
    LOBYTE(v97[0]) = v55 & 1;
    sub_1C96A66C4();
    sub_1C95D0D4C(v5, type metadata accessor for Location);
    if (qword_1EDB7D060 != -1)
    {
      OUTLINED_FUNCTION_0_54();
    }

    v59 = sub_1C96A6154();
    OUTLINED_FUNCTION_54_0(v59, qword_1EDB7D068);
    v60 = v85;
    sub_1C96518A4(v57, v85, type metadata accessor for SyncedLocationDisplayContext);
    sub_1C96A53C4();
    sub_1C96A53C4();
    v61 = v90;
    sub_1C96A53C4();
    v62 = sub_1C96A6134();
    v63 = sub_1C96A76A4();

    if (os_log_type_enabled(v62, v63))
    {
      v64 = swift_slowAlloc();
      v83 = v63;
      v65 = v60;
      v66 = v64;
      v92 = swift_slowAlloc();
      v96[0] = v92;
      *v66 = 141558787;
      *(v66 + 4) = 1752392040;
      *(v66 + 12) = 2081;
      sub_1C96518A4(v65, v84, type metadata accessor for SyncedLocationDisplayContext);
      v67 = sub_1C96A70A4();
      v69 = v68;
      v61 = v90;
      sub_1C95D0D4C(v65, type metadata accessor for SyncedLocationDisplayContext);
      v70 = sub_1C9484164(v67, v69, v96);

      *(v66 + 14) = v70;
      *(v66 + 22) = 2160;
      *(v66 + 24) = 1752392040;
      *(v66 + 32) = 2081;
      v71 = v91;
      v97[0] = v91;
      v97[1] = v45;
      v97[2] = v95;
      v97[3] = v48;
      v97[4] = v49;
      v97[5] = v50;
      v97[6] = v61;
      sub_1C96A53C4();
      sub_1C96A53C4();
      sub_1C96A53C4();
      v72 = sub_1C96A70A4();
      v74 = sub_1C9484164(v72, v73, v96);

      *(v66 + 34) = v74;
      v57 = v88;
      _os_log_impl(&dword_1C945E000, v62, v83, "Set syncedDisplayContext:%{private,mask.hash}s for location key %{private,mask.hash}s", v66, 0x2Au);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_26();
      OUTLINED_FUNCTION_26();

      v75 = v87;
    }

    else
    {

      sub_1C95D0D4C(v60, type metadata accessor for SyncedLocationDisplayContext);
      v75 = v56;
      v71 = v91;
    }

    sub_1C96518A4(v57, v86, type metadata accessor for SyncedLocationDisplayContext);
    OUTLINED_FUNCTION_48();
    __swift_storeEnumTagSinglePayload(v76, v77, v78, v75);
    v97[0] = v71;
    v97[1] = v45;
    v97[2] = v95;
    v97[3] = v48;
    v97[4] = v49;
    v97[5] = v50;
    v97[6] = v61;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A60B0);
    sub_1C96A6C14();
    sub_1C95D0D4C(v57, type metadata accessor for SyncedLocationDisplayContext);
  }

  SyncedDataManager.commitToDisk(_:)();
  return sub_1C9485BFC(v79, v80);
}

void SyncedDataManager.commitToDisk(_:)()
{
  OUTLINED_FUNCTION_103();
  v2 = v0;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5F90);
  OUTLINED_FUNCTION_7(v5);
  OUTLINED_FUNCTION_71();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_36_8();
  v7 = sub_1C96A4764();
  OUTLINED_FUNCTION_1();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_14();
  v13 = v12 - v11;
  if (qword_1EDB7D060 != -1)
  {
    OUTLINED_FUNCTION_0_54();
  }

  v14 = sub_1C96A6154();
  __swift_project_value_buffer(v14, qword_1EDB7D068);
  v15 = sub_1C96A6134();
  v16 = sub_1C96A76A4();
  if (OUTLINED_FUNCTION_21(v16))
  {
    v17 = OUTLINED_FUNCTION_29();
    OUTLINED_FUNCTION_41_2(v17);
    OUTLINED_FUNCTION_15_25();
    _os_log_impl(v18, v19, v20, v21, v22, 2u);
    OUTLINED_FUNCTION_7_2();
  }

  SyncedDataManager.makeData(from:)(v4);
  if (v23 >> 60 == 15)
  {
    v24 = sub_1C96A6134();
    v25 = sub_1C96A7684();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = OUTLINED_FUNCTION_29();
      *v26 = 0;
      OUTLINED_FUNCTION_14_18();
      _os_log_impl(v27, v28, v29, v30, v26, 2u);
      OUTLINED_FUNCTION_26();
    }
  }

  else
  {
    v47 = v1;
    v31 = v2[6];
    __swift_project_boxed_opaque_existential_1(v2 + 2, v2[5]);
    v32 = OUTLINED_FUNCTION_25_2();
    v33(v32, v31);
    sub_1C96A4874();
    (*(v9 + 8))(v13, v7);
    sub_1C96A50E4();
    OUTLINED_FUNCTION_7_45();
    sub_1C96518A4(v4, v47, v34);
    type metadata accessor for SyncedData();
    OUTLINED_FUNCTION_48();
    __swift_storeEnumTagSinglePayload(v35, v36, v37, v38);
    v39 = OBJC_IVAR____TtC11WeatherCore17SyncedDataManager_cachedSyncedData;
    swift_beginAccess();
    sub_1C95738B4(v47, v2 + v39);
    swift_endAccess();
    sub_1C96A50F4();
    v24 = sub_1C96A6134();
    v40 = sub_1C96A76A4();
    if (os_log_type_enabled(v24, v40))
    {
      v42 = OUTLINED_FUNCTION_29();
      *v42 = 0;
      OUTLINED_FUNCTION_14_18();
      _os_log_impl(v43, v44, v45, v46, v42, 2u);
      OUTLINED_FUNCTION_26();
    }
  }

  OUTLINED_FUNCTION_101();
}

void SyncedDataManager.removeLocation(at:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_103();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v26 = v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5F90);
  OUTLINED_FUNCTION_7(v27);
  OUTLINED_FUNCTION_71();
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_36_8();
  v29 = type metadata accessor for SyncedData();
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_2();
  v33 = v31 - v32;
  MEMORY[0x1EEE9AC00](v34);
  v36 = &a9 - v35;
  SyncedDataManager.getSyncedData()(v20);
  OUTLINED_FUNCTION_23_1(v20, 1, v29);
  if (v37)
  {
    sub_1C96A5534();
    OUTLINED_FUNCTION_23_1(v20, 1, v29);
    if (!v37)
    {
      sub_1C9470AFC(v20, &unk_1EC3A5F90);
    }
  }

  else
  {
    OUTLINED_FUNCTION_0_50();
    sub_1C9651904(v20, v36, v38);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A60A8);
  if (sub_1C96A6C84() <= v24)
  {
    if (qword_1EDB7D060 != -1)
    {
      OUTLINED_FUNCTION_0_54();
    }

    v41 = sub_1C96A6154();
    OUTLINED_FUNCTION_54_0(v41, qword_1EDB7D068);
    OUTLINED_FUNCTION_7_45();
    sub_1C96518A4(v36, v33, v42);
    v43 = sub_1C96A6134();
    v44 = sub_1C96A7684();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      *v45 = 134218240;
      v46 = sub_1C96A6C84();
      OUTLINED_FUNCTION_3_36();
      sub_1C95D0D4C(v33, v47);
      *(v45 + 4) = v46;
      *(v45 + 12) = 2048;
      *(v45 + 14) = v24;
      _os_log_impl(&dword_1C945E000, v43, v44, "Not removing location as out of bounds. count=%ld, index=%ld", v45, 0x16u);
      OUTLINED_FUNCTION_26();
    }

    else
    {
      OUTLINED_FUNCTION_3_36();
      sub_1C95D0D4C(v33, v48);
    }

    goto LABEL_19;
  }

  sub_1C964E8E0(v36, v24);
  if (!v39)
  {
    if (qword_1EDB7D060 != -1)
    {
      OUTLINED_FUNCTION_0_54();
    }

    v49 = sub_1C96A6154();
    OUTLINED_FUNCTION_54_0(v49, qword_1EDB7D068);
    v50 = sub_1C96A6134();
    v51 = sub_1C96A7684();
    if (os_log_type_enabled(v50, v51))
    {
      v52 = OUTLINED_FUNCTION_9_8();
      *v52 = 134217984;
      *(v52 + 4) = v24;
      OUTLINED_FUNCTION_33_11();
      _os_log_impl(v53, v54, v55, v56, v57, 0xCu);
      OUTLINED_FUNCTION_26();
    }

LABEL_19:
    OUTLINED_FUNCTION_0_50();
    sub_1C9651904(v36, v26, v58);
    goto LABEL_20;
  }

  SyncedDataManager.removeLocation(by:)();

  OUTLINED_FUNCTION_3_36();
  sub_1C95D0D4C(v36, v40);
LABEL_20:
  OUTLINED_FUNCTION_101();
}

uint64_t sub_1C964E8E0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A60A8);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v19 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A6888);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v19 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A6890);
  v12 = v11 - 8;
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v19 - v14;
  (*(v5 + 16))(v10, a1, v4, v13);
  (*(v5 + 32))(v7, v10, v4);
  sub_1C9469CB4(&qword_1EC3A67A8, &qword_1EC3A60A8);
  sub_1C96A71F4();
  v21 = *(v12 + 44);
  sub_1C9469CB4(&qword_1EC3A67B0, &qword_1EC3A67A0);
  v16 = 0;
  v20 = a2 + 1;
  while (1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A67A0);
    sub_1C96A7944();
    memcpy(v24, v23, 0xD0uLL);
    result = sub_1C94EA54C(v24);
    if (result == 1)
    {
      *&v15[v21] = v16;
      memcpy(v22, v23, sizeof(v22));
      sub_1C9470AFC(v22, &qword_1EC3A67D0);
      sub_1C9470AFC(v15, &qword_1EC3A6890);
      return 0;
    }

    if (__OFADD__(v16, 1))
    {
      break;
    }

    memcpy(v22, v23, sizeof(v22));
    if (a2 == v16)
    {
      *&v15[v21] = v20;
      sub_1C9470AFC(v15, &qword_1EC3A6890);

      v18 = v22[7];
      sub_1C96A53C4();
      sub_1C95A038C(&v22[7]);
      return v18;
    }

    sub_1C9470AFC(v22, &qword_1EC3A6818);
    ++v16;
  }

  __break(1u);
  return result;
}

void SyncedDataManager.removeLocation(by:)()
{
  OUTLINED_FUNCTION_103();
  v2 = v0;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A6810);
  OUTLINED_FUNCTION_7(v9);
  OUTLINED_FUNCTION_71();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_90();
  v47 = v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5F90);
  OUTLINED_FUNCTION_7(v12);
  OUTLINED_FUNCTION_71();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_2_37();
  v14 = type metadata accessor for SyncedData();
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_2();
  v18 = v16 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v21 = v45 - v20;
  SyncedDataManager.getSyncedData()(v1);
  v22 = OUTLINED_FUNCTION_21_3();
  OUTLINED_FUNCTION_23_1(v22, v23, v14);
  if (v24)
  {
    sub_1C96A5534();
    v25 = OUTLINED_FUNCTION_21_3();
    OUTLINED_FUNCTION_23_1(v25, v26, v14);
    if (!v24)
    {
      sub_1C9470AFC(v1, &unk_1EC3A5F90);
    }
  }

  else
  {
    OUTLINED_FUNCTION_0_50();
    sub_1C9651904(v1, v21, v27);
  }

  sub_1C96518A4(v21, v18, type metadata accessor for SyncedData);
  v28 = sub_1C95C5198();
  v29 = sub_1C955FFD8(v28);
  v30 = v18 + *(v14 + 20);
  sub_1C95C5414();
  v32 = sub_1C955FFD8(v31);
  sub_1C95C870C(v29, v32);
  OUTLINED_FUNCTION_25_2();

  sub_1C95C4FBC(v30, v18);

  sub_1C95D0D4C(v21, type metadata accessor for SyncedData);
  OUTLINED_FUNCTION_0_50();
  sub_1C9651904(v18, v21, v33);
  sub_1C964F05C(v21, v6, v4, &v48);
  v34 = v49;
  if (v49)
  {
    v45[1] = v2;
    v46 = v8;
    v35 = v48;
    OUTLINED_FUNCTION_43_14();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A60B0);
    v36 = v47;
    sub_1C96A6B74();
    sub_1C9470AFC(v36, &qword_1EC3A6810);
    OUTLINED_FUNCTION_43_14();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A60A8);
    sub_1C96A6C34();
    v37 = v35;
    v8 = v46;
    sub_1C95CBA44(v37, v34);
    SyncedDataManager.commitToDisk(_:)();
    sub_1C9485BFC(v38, v39);
  }

  else
  {
    if (qword_1EDB7D060 != -1)
    {
      OUTLINED_FUNCTION_0_54();
    }

    v40 = sub_1C96A6154();
    OUTLINED_FUNCTION_54_0(v40, qword_1EDB7D068);
    sub_1C96A53C4();
    v41 = sub_1C96A6134();
    v42 = sub_1C96A7684();

    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v48 = v44;
      *v43 = 141558275;
      *(v43 + 4) = 1752392040;
      *(v43 + 12) = 2081;
      *(v43 + 14) = sub_1C9484164(v6, v4, &v48);
      _os_log_impl(&dword_1C945E000, v41, v42, "Not removing location because can't find locationKey and index for location id: %{private,mask.hash}s", v43, 0x16u);
      __swift_destroy_boxed_opaque_existential_1Tm(v44);
      OUTLINED_FUNCTION_26();
      OUTLINED_FUNCTION_26();
    }
  }

  sub_1C9651904(v21, v8, type metadata accessor for SyncedData);
  OUTLINED_FUNCTION_101();
}

uint64_t sub_1C964F05C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v29 = a2;
  v30 = a3;
  v28 = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A60A8);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v26 - v7;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A67A0);
  v27 = *(v32 - 8);
  v9 = MEMORY[0x1EEE9AC00](v32);
  v11 = &v26 - v10;
  (*(v6 + 16))(v8, a1, v5, v9);
  v31 = v11;
  sub_1C96A6C44();
  (*(v6 + 8))(v8, v5);
  while (1)
  {
    sub_1C96A6CB4();
    memcpy(v35, v34, sizeof(v35));
    memcpy(v36, v35, 0xD0uLL);
    if (sub_1C94EA54C(v36) == 1)
    {
      result = (*(v27 + 8))(v31, v32);
      v24 = v28;
      v28[6] = 0;
      v24[1] = 0u;
      v24[2] = 0u;
      *v24 = 0u;
      return result;
    }

    v12 = v36[0];
    v13 = v36[1];
    v14 = v36[2];
    v15 = v36[3];
    v16 = v36[4];
    v17 = v36[5];
    v18 = v36[6];
    memcpy(v34, v35, sizeof(v34));
    sub_1C9470A40(v34, &v33, &qword_1EC3A6818);

    v19 = v36[7];
    v20 = v36[8];
    sub_1C96A53C4();
    sub_1C95A038C(&v36[7]);
    if (v19 == v29 && v20 == v30)
    {
      break;
    }

    v22 = sub_1C96A7DE4();

    if (v22)
    {
      goto LABEL_11;
    }

    sub_1C9470AFC(v35, &qword_1EC3A67D0);
  }

LABEL_11:
  (*(v27 + 8))(v31, v32);
  result = sub_1C95A038C(&v36[7]);
  v25 = v28;
  *v28 = v12;
  v25[1] = v13;
  v25[2] = v14;
  v25[3] = v15;
  v25[4] = v16;
  v25[5] = v17;
  v25[6] = v18;
  return result;
}

void SyncedDataManager.removeAll()()
{
  OUTLINED_FUNCTION_103();
  v4 = v3;
  v5 = sub_1C96A4D34();
  OUTLINED_FUNCTION_1();
  v82 = v6;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_14();
  v80 = v9 - v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A6840);
  OUTLINED_FUNCTION_1();
  v92 = v11;
  v93 = v10;
  OUTLINED_FUNCTION_71();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_90();
  v91 = v13;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A6848);
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_2();
  v17 = v15 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v87 = &v75 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A6850);
  OUTLINED_FUNCTION_1();
  v84 = v21;
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_2();
  v94 = v23 - v24;
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v75 - v26;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A6858);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_71();
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_90();
  v86 = v29;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A6860);
  OUTLINED_FUNCTION_1();
  v78 = v31;
  v79 = v30;
  OUTLINED_FUNCTION_71();
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_90();
  v90 = v33;
  OUTLINED_FUNCTION_15_4();
  v34 = type metadata accessor for SyncedData();
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_14();
  v38 = v37 - v36;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5F90);
  OUTLINED_FUNCTION_7(v39);
  OUTLINED_FUNCTION_71();
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_2_37();
  SyncedDataManager.getSyncedData()(v1);
  v41 = OUTLINED_FUNCTION_21_3();
  OUTLINED_FUNCTION_23_1(v41, v42, v34);
  v81 = v0;
  if (v43)
  {
    sub_1C96A5534();
    v44 = OUTLINED_FUNCTION_21_3();
    OUTLINED_FUNCTION_23_1(v44, v45, v34);
    if (!v43)
    {
      sub_1C9470AFC(v1, &unk_1EC3A5F90);
    }
  }

  else
  {
    OUTLINED_FUNCTION_0_50();
    sub_1C9651904(v1, v4, v46);
  }

  OUTLINED_FUNCTION_17_4();
  sub_1C96518A4(v4, v38, v47);
  v48 = sub_1C95C5198();
  v49 = sub_1C955FFD8(v48);
  v50 = v38 + *(v34 + 20);
  sub_1C95C5414();
  v52 = sub_1C955FFD8(v51);
  sub_1C95C870C(v49, v52);
  OUTLINED_FUNCTION_25_2();

  sub_1C95C4FBC(v50, v38);

  sub_1C95D0D4C(v4, v2);
  OUTLINED_FUNCTION_0_50();
  sub_1C9651904(v38, v4, v53);
  if (qword_1EDB7D060 != -1)
  {
    OUTLINED_FUNCTION_0_54();
  }

  v54 = sub_1C96A6154();
  OUTLINED_FUNCTION_54_0(v54, qword_1EDB7D068);
  v55 = sub_1C96A6134();
  v56 = sub_1C96A7684();
  if (OUTLINED_FUNCTION_21(v56))
  {
    v57 = OUTLINED_FUNCTION_29();
    *v57 = 0;
    _os_log_impl(&dword_1C945E000, v55, OS_LOG_TYPE_DEFAULT, "Removing all locations", v57, 2u);
    OUTLINED_FUNCTION_26();
  }

  v58 = *(v34 + 20);
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A60B0);
  sub_1C96A6B64();
  v60 = v94;
  v83 = v59;
  sub_1C96A6BD4();
  v61 = v20;
  v88 = sub_1C9469CB4(&qword_1EC3A6868, &qword_1EC3A6850);
  if (sub_1C96A6F84())
  {
    v76 = v5;
    v77 = v58;
    v62 = v27;
    v63 = v84;
    v64 = *(v84 + 32);
    v65 = v87;
    v64(v87, v62, v20);
    v66 = v89;
    v64((v65 + *(v89 + 48)), v60, v61);
    sub_1C9470A40(v65, v17, &qword_1EC3A6848);
    v67 = *(v66 + 48);
    v68 = v86;
    v64(v86, v17, v61);
    v94 = v4;
    v69 = *(v63 + 8);
    v69(v17 + v67, v61);
    sub_1C95D0C24(v65, v17);
    v64(&v68[*(v85 + 36)], (v17 + *(v66 + 48)), v61);
    v69(v17, v61);
    v70 = v90;
    sub_1C96A7F74();
    sub_1C9469CB4(&qword_1EC3A6870, &qword_1EC3A60B0);
    v71 = v91;
    sub_1C96A7614();
    (*(v92 + 8))(v71, v93);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A60A8);
    if ((sub_1C96A6C84() & 0x8000000000000000) == 0)
    {
      v72 = v80;
      sub_1C96A4D24();
      sub_1C96A6CA4();
      SyncedDataManager.commitToDisk(_:)();
      sub_1C9485BFC(v73, v74);
      (*(v82 + 8))(v72, v76);
      (*(v78 + 8))(v70, v79);
      OUTLINED_FUNCTION_101();
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t SyncedDataManager.moveLocation(from:to:)@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5F90);
  OUTLINED_FUNCTION_7(v3);
  OUTLINED_FUNCTION_71();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_4_42();
  SyncedDataManager.getSyncedData()(v1);
  v5 = type metadata accessor for SyncedData();
  v6 = OUTLINED_FUNCTION_44_7();
  OUTLINED_FUNCTION_23_1(v6, v7, v5);
  if (v8)
  {
    sub_1C96A5534();
    v9 = OUTLINED_FUNCTION_44_7();
    OUTLINED_FUNCTION_23_1(v9, v10, v5);
    if (!v8)
    {
      sub_1C9470AFC(v1, &unk_1EC3A5F90);
    }
  }

  else
  {
    OUTLINED_FUNCTION_0_50();
    sub_1C9651904(v1, a1, v11);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A60A8);
  sub_1C96A6C74();
  SyncedDataManager.commitToDisk(_:)();
  return sub_1C9485BFC(v12, v13);
}

uint64_t SyncedDataManager.updateLocationTimeZones(with:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5F60);
  OUTLINED_FUNCTION_7(v5);
  OUTLINED_FUNCTION_71();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_90();
  v132 = v7;
  OUTLINED_FUNCTION_15_4();
  v127 = type metadata accessor for Location();
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_14();
  v11 = (v10 - v9);
  v137 = type metadata accessor for SavedLocation();
  OUTLINED_FUNCTION_1();
  v134 = v12;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_2();
  v130 = v14 - v15;
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v16);
  v131 = &v122[-v17];
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v122[-v19];
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5F90);
  OUTLINED_FUNCTION_7(v21);
  OUTLINED_FUNCTION_71();
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v122[-v23];
  v25 = type metadata accessor for SyncedData();
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_14();
  v29 = v28 - v27;
  v126 = v2;
  SyncedDataManager.getSyncedData()(v24);
  OUTLINED_FUNCTION_23_1(v24, 1, v25);
  if (v72)
  {
    sub_1C9470AFC(v24, &unk_1EC3A5F90);
    if (qword_1EDB7D060 != -1)
    {
LABEL_62:
      OUTLINED_FUNCTION_0_54();
    }

    v30 = sub_1C96A6154();
    OUTLINED_FUNCTION_54_0(v30, qword_1EDB7D068);
    v31 = sub_1C96A6134();
    v32 = sub_1C96A7684();
    if (OUTLINED_FUNCTION_21(v32))
    {
      v33 = OUTLINED_FUNCTION_29();
      OUTLINED_FUNCTION_41_2(v33);
      OUTLINED_FUNCTION_15_25();
      _os_log_impl(v34, v35, v36, v37, v38, 2u);
      OUTLINED_FUNCTION_7_2();
    }
  }

  else
  {
    OUTLINED_FUNCTION_0_50();
    sub_1C9651904(v24, v29, v39);
    v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A60A8);
    v40 = sub_1C96A6C84();
    if (v40 == *(a1 + 16))
    {
      if (v40)
      {
        v124 = v25;
        v125 = a2;
        v123 = 0;
        v25 = 0;
        v41 = *(v134 + 80);
        v128 = v40;
        v129 = a1 + ((v41 + 32) & ~v41);
        v133 = v20;
        while (1)
        {
          if (v25 >= v40)
          {
            __break(1u);
LABEL_61:
            __break(1u);
            goto LABEL_62;
          }

          if (__OFADD__(v25, 1))
          {
            goto LABEL_61;
          }

          v135 = v25 + 1;
          v42 = v29;
          sub_1C96A6CF4();
          sub_1C96518A4(v129 + *(v134 + 72) * v25, v20, type metadata accessor for SavedLocation);
          v43 = v131;
          sub_1C96518A4(v20, v131, type metadata accessor for SavedLocation);
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            memcpy(v144, v43, 0x68uLL);
            v44 = v144[0];
            v45 = v144[1];
            v46 = v144[2];
            v47 = v144[3];
            v48 = v144[4];
            v49 = v144[5];
            sub_1C96A53C4();
            sub_1C96A53C4();
            sub_1C96A53C4();
            sub_1C955FE40(v144);
          }

          else
          {
            OUTLINED_FUNCTION_18_2();
            sub_1C9651904(v43, v11, v50);
            v44 = *v11;
            v45 = *(v11 + 1);
            v46 = *(v11 + 2);
            v47 = *(v11 + 3);
            v48 = *(v11 + 4);
            v49 = *(v11 + 5);
            sub_1C96A53C4();
            sub_1C96A53C4();
            sub_1C96A53C4();
            OUTLINED_FUNCTION_23_2();
          }

          sub_1C96A66B4();
          sub_1C96A53C4();
          sub_1C96A53C4();
          v51 = sub_1C96A6F04();

          v144[0] = v44;
          v144[1] = v45;
          v144[2] = v46;
          v144[3] = v47;
          v144[4] = v48;
          v144[5] = v49;
          v144[6] = v51;
          v29 = v42;
          sub_1C96A6CE4();

          memcpy(v144, v145, 0x98uLL);
          memcpy(v146, __src, sizeof(v146));
          memcpy(v147, __src, sizeof(v147));
          GEOLocationCoordinate2DMake(v147);
          memcpy(&v144[19], v147, 0x98uLL);
          OUTLINED_FUNCTION_40_6(v148);
          if (sub_1C94EA54C(v148) == 1)
          {
            memcpy(v142, &v144[19], 0x98uLL);
            v52 = sub_1C94EA54C(v142);
            v53 = v132;
            v20 = v133;
            if (v52 != 1)
            {
              sub_1C95A0354(v146, v143);
              goto LABEL_49;
            }

            OUTLINED_FUNCTION_40_6(v143);
            sub_1C95A0354(v146, v141);
            sub_1C9470AFC(v143, &qword_1EC3A6880);
          }

          else
          {
            OUTLINED_FUNCTION_40_6(v143);
            OUTLINED_FUNCTION_40_6(v141);
            memcpy(v142, &v144[19], 0x98uLL);
            v72 = sub_1C94EA54C(v142) == 1;
            v53 = v132;
            v20 = v133;
            if (v72)
            {
              OUTLINED_FUNCTION_40_6(v140);
              sub_1C95A0354(v146, v139);
              sub_1C9470A40(v143, v139, &qword_1EC3A6880);
              sub_1C95A038C(v140);
LABEL_49:
              memcpy(v142, v144, sizeof(v142));
              sub_1C9470AFC(v142, &qword_1EC3A6878);
LABEL_50:
              if (qword_1EDB7D060 != -1)
              {
                OUTLINED_FUNCTION_0_54();
              }

              v95 = sub_1C96A6154();
              OUTLINED_FUNCTION_54_0(v95, qword_1EDB7D068);
              v96 = sub_1C96A6134();
              v97 = sub_1C96A7684();
              v98 = OUTLINED_FUNCTION_21(v97);
              v99 = v124;
              if (v98)
              {
                v100 = OUTLINED_FUNCTION_29();
                OUTLINED_FUNCTION_41_2(v100);
                OUTLINED_FUNCTION_15_25();
                _os_log_impl(v101, v102, v103, v104, v105, 2u);
                OUTLINED_FUNCTION_7_2();
              }

              OUTLINED_FUNCTION_2_2();
              sub_1C95D0D4C(v20, v106);
              OUTLINED_FUNCTION_3_36();
              sub_1C95D0D4C(v29, v107);
              OUTLINED_FUNCTION_3();
              __swift_storeEnumTagSinglePayload(v108, v109, v110, v99);
              OUTLINED_FUNCTION_33();
              return sub_1C95A038C(v144);
            }

            memcpy(v140, &v144[19], sizeof(v140));
            sub_1C95A0354(v146, v139);
            sub_1C9470A40(v143, v139, &qword_1EC3A6880);
            static SyncedLocation.== infix(_:_:)(v141, v140);
            v55 = v54;
            memcpy(v138, v140, sizeof(v138));
            sub_1C95A038C(v138);
            memcpy(v139, v141, sizeof(v139));
            sub_1C95A038C(v139);
            OUTLINED_FUNCTION_40_6(v140);
            sub_1C9470AFC(v140, &qword_1EC3A6880);
            if ((v55 & 1) == 0)
            {
              goto LABEL_50;
            }
          }

          v56 = v130;
          sub_1C96518A4(v20, v130, type metadata accessor for SavedLocation);
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            OUTLINED_FUNCTION_2_2();
            sub_1C95D0D4C(v56, v57);
            v58 = sub_1C96A4DF4();
            v59 = OUTLINED_FUNCTION_44_7();
          }

          else
          {
            OUTLINED_FUNCTION_18_2();
            sub_1C9651904(v56, v11, v61);
            v62 = *(v127 + 20);
            v58 = sub_1C96A4DF4();
            OUTLINED_FUNCTION_6();
            (*(v63 + 16))(v53, &v11[v62], v58);
            OUTLINED_FUNCTION_23_2();
            v59 = v53;
            v60 = 0;
          }

          __swift_storeEnumTagSinglePayload(v59, v60, 1, v58);
          sub_1C96A4DF4();
          v64 = OUTLINED_FUNCTION_44_7();
          OUTLINED_FUNCTION_23_1(v64, v65, v58);
          if (v72)
          {
            break;
          }

          v67 = v146[6];
          v68 = v146[7];
          v69 = sub_1C96A4D74();
          v71 = v70;
          (*(*(v58 - 8) + 8))(v53, v58);
          v72 = v69 == v67 && v71 == v68;
          if (v72 || (sub_1C96A7DE4() & 1) != 0)
          {
            OUTLINED_FUNCTION_2_2();
            v20 = v133;
            sub_1C95D0D4C(v133, v73);

LABEL_32:
            OUTLINED_FUNCTION_33();
            sub_1C95A038C(v144);
            v40 = v128;
            if (v135 == v128)
            {
              if (v123)
              {
                v76 = v124;
                v75 = v125;
LABEL_46:
                SyncedDataManager.commitToDisk(_:)();
                sub_1C9485BFC(v92, v93);
                OUTLINED_FUNCTION_0_50();
                sub_1C9651904(v29, v75, v94);
                OUTLINED_FUNCTION_48();
                v90 = v76;
                return __swift_storeEnumTagSinglePayload(v87, v88, v89, v90);
              }

              v111 = v124;
              if (qword_1EDB7D060 != -1)
              {
                OUTLINED_FUNCTION_0_54();
              }

              v112 = sub_1C96A6154();
              OUTLINED_FUNCTION_54_0(v112, qword_1EDB7D068);
              v113 = sub_1C96A6134();
              v114 = sub_1C96A76A4();
              if (OUTLINED_FUNCTION_21(v114))
              {
                v115 = OUTLINED_FUNCTION_29();
                OUTLINED_FUNCTION_41_2(v115);
                OUTLINED_FUNCTION_15_25();
                _os_log_impl(v116, v117, v118, v119, v120, 2u);
                OUTLINED_FUNCTION_7_2();
              }

              OUTLINED_FUNCTION_3_36();
              sub_1C95D0D4C(v29, v121);
              OUTLINED_FUNCTION_3();
              v90 = v111;
              return __swift_storeEnumTagSinglePayload(v87, v88, v89, v90);
            }

            ++v25;
          }

          else
          {

            __src[6] = v69;
            __src[7] = v71;
            memcpy(v142, __src, 0x98uLL);
            OUTLINED_FUNCTION_33();
            sub_1C95A0354(v142, v145);
            sub_1C96A6D04();
            OUTLINED_FUNCTION_2_2();
            v20 = v133;
            sub_1C95D0D4C(v133, v74);
            OUTLINED_FUNCTION_33();
            sub_1C95A038C(v144);
            v40 = v128;
            v25 = v135;
            v76 = v124;
            v75 = v125;
            if (v135 == v128)
            {
              goto LABEL_46;
            }

            v123 = 1;
          }
        }

        OUTLINED_FUNCTION_2_2();
        sub_1C95D0D4C(v20, v66);
        sub_1C9470AFC(v53, &unk_1EC3A5F60);
        goto LABEL_32;
      }
    }

    else
    {
      if (qword_1EDB7D060 != -1)
      {
        OUTLINED_FUNCTION_0_54();
      }

      v77 = sub_1C96A6154();
      OUTLINED_FUNCTION_54_0(v77, qword_1EDB7D068);
      v78 = sub_1C96A6134();
      v79 = sub_1C96A7684();
      if (OUTLINED_FUNCTION_21(v79))
      {
        v80 = OUTLINED_FUNCTION_29();
        OUTLINED_FUNCTION_41_2(v80);
        OUTLINED_FUNCTION_15_25();
        _os_log_impl(v81, v82, v83, v84, v85, 2u);
        OUTLINED_FUNCTION_7_2();
      }
    }

    OUTLINED_FUNCTION_3_36();
    sub_1C95D0D4C(v29, v86);
  }

  OUTLINED_FUNCTION_3();
  v90 = v25;
  return __swift_storeEnumTagSinglePayload(v87, v88, v89, v90);
}

uint64_t SyncedDataManager.mergeSyncedData(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1C9650708(a1, a2);
  SyncedDataManager.commitToDisk(_:)();

  return sub_1C9485BFC(v2, v3);
}

uint64_t sub_1C9650708@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A60A8);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v17 - v6;
  v8 = sub_1C96A6AE4();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5F90);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v17 - v13;
  SyncedDataManager.getSyncedData()(&v17 - v13);
  v15 = type metadata accessor for SyncedData();
  if (__swift_getEnumTagSinglePayload(v14, 1, v15) == 1)
  {
    sub_1C9470AFC(v14, &unk_1EC3A5F90);
    return sub_1C96518A4(a1, a2, type metadata accessor for SyncedData);
  }

  else
  {
    sub_1C9651904(v14, a2, type metadata accessor for SyncedData);
    sub_1C949525C(&qword_1EDB7A5D8, type metadata accessor for SyncedData);
    sub_1C96A6924();
    (*(v9 + 8))(v11, v8);
    sub_1C95C8040();
    return (*(v5 + 40))(a2, v7, v4);
  }
}

uint64_t SyncedDataManager.makeSyncedData(from:)(uint64_t a1, unint64_t a2)
{
  v4 = type metadata accessor for SyncedData();
  sub_1C94874C0(a1, a2);
  OUTLINED_FUNCTION_13_41();
  sub_1C949525C(v5, v6);
  sub_1C96A6D24();
  OUTLINED_FUNCTION_48();

  return __swift_storeEnumTagSinglePayload(v7, v8, v9, v4);
}

uint64_t SyncedDataManager.makeData(from:)(uint64_t a1)
{
  v3 = v1[5];
  v4 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v3);
  v5 = *(v4 + 32);
  v6 = type metadata accessor for SyncedData();
  OUTLINED_FUNCTION_13_41();
  v9 = sub_1C949525C(v7, v8);
  return v5(a1, v6, v9, v3, v4);
}

Swift::Void __swiftcall SyncedDataManager.removeSyncedData()()
{
  OUTLINED_FUNCTION_103();
  v2 = v0;
  v38[3] = *MEMORY[0x1E69E9840];
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5F90);
  OUTLINED_FUNCTION_7(v3);
  OUTLINED_FUNCTION_71();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_2_37();
  v5 = sub_1C96A4764();
  OUTLINED_FUNCTION_1();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_14();
  v11 = v10 - v9;
  v12 = [objc_opt_self() defaultManager];
  v13 = v0[5];
  v14 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v13);
  (*(v14 + 8))(v13, v14);
  v15 = sub_1C96A46E4();
  (*(v7 + 8))(v11, v5);
  v38[0] = 0;
  v16 = [v12 removeItemAtURL:v15 error:v38];

  if (v16)
  {
    v17 = v38[0];
    sub_1C96A50E4();
    type metadata accessor for SyncedData();
    v18 = OUTLINED_FUNCTION_21_3();
    __swift_storeEnumTagSinglePayload(v18, v19, 1, v20);
    v21 = OBJC_IVAR____TtC11WeatherCore17SyncedDataManager_cachedSyncedData;
    swift_beginAccess();
    sub_1C95738B4(v1, v2 + v21);
    swift_endAccess();
    sub_1C96A50F4();
  }

  else
  {
    v22 = v38[0];
    v23 = sub_1C96A4584();

    swift_willThrow();
    if (qword_1EDB7D060 != -1)
    {
      OUTLINED_FUNCTION_0_54();
    }

    v24 = sub_1C96A6154();
    OUTLINED_FUNCTION_54_0(v24, qword_1EDB7D068);
    v25 = v23;
    v26 = sub_1C96A6134();
    v27 = sub_1C96A76A4();

    if (os_log_type_enabled(v26, v27))
    {
      OUTLINED_FUNCTION_9_8();
      v28 = OUTLINED_FUNCTION_11_6();
      v38[0] = v28;
      *v16 = 136446210;
      v29 = v23;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5380);
      v30 = sub_1C96A70A4();
      v32 = sub_1C9484164(v30, v31, v38);

      *(v16 + 4) = v32;
      OUTLINED_FUNCTION_15_25();
      _os_log_impl(v33, v34, v35, v36, v37, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v28);
      OUTLINED_FUNCTION_26();
      OUTLINED_FUNCTION_7_2();
    }

    else
    {
    }
  }

  OUTLINED_FUNCTION_101();
}

Swift::String_optional __swiftcall SyncedDataManager.locationID(by:)(Swift::Int by)
{
  OUTLINED_FUNCTION_103();
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A6888);
  OUTLINED_FUNCTION_7(v5);
  OUTLINED_FUNCTION_71();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_90();
  v54 = v7;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A6890);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_71();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v52 - v9;
  v11 = type metadata accessor for SyncedData();
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_14();
  v52 = v14 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5F90);
  OUTLINED_FUNCTION_7(v15);
  OUTLINED_FUNCTION_71();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_4_42();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A7AC8);
  OUTLINED_FUNCTION_7(v17);
  OUTLINED_FUNCTION_71();
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v52 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A60A8);
  OUTLINED_FUNCTION_1();
  v23 = v22;
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_2();
  v53 = v25 - v26;
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v52 - v28;
  SyncedDataManager.getSyncedData()(v2);
  v30 = OUTLINED_FUNCTION_44_7();
  OUTLINED_FUNCTION_23_1(v30, v31, v11);
  v56 = v29;
  if (v32)
  {
    sub_1C9470AFC(v2, &unk_1EC3A5F90);
    OUTLINED_FUNCTION_3();
    __swift_storeEnumTagSinglePayload(v33, v34, v35, v21);
    v1 = *(v1 + 56);
    v36 = v52;
    sub_1C96A5534();
    OUTLINED_FUNCTION_42_12();
    (v1)(v29, v36, v21);
    OUTLINED_FUNCTION_3_36();
    sub_1C95D0D4C(v36, v37);
    OUTLINED_FUNCTION_23_1(v20, 1, v21);
    if (!v32)
    {
      sub_1C9470AFC(v20, &qword_1EC3A7AC8);
    }

    v42 = v56;
  }

  else
  {
    OUTLINED_FUNCTION_42_12();
    (v1)(v20, v2, v21);
    OUTLINED_FUNCTION_3_36();
    sub_1C95D0D4C(v2, v38);
    OUTLINED_FUNCTION_48();
    __swift_storeEnumTagSinglePayload(v39, v40, v41, v21);
    (*(v23 + 32))(v29, v20, v21);
    v42 = v29;
  }

  v43 = v54;
  (v1)(v54, v42, v21);
  v52 = v23;
  (*(v23 + 32))(v53, v43, v21);
  sub_1C9469CB4(&qword_1EC3A67A8, &qword_1EC3A60A8);
  v54 = v21;
  sub_1C96A71F4();
  v55 = *(v55 + 36);
  sub_1C9469CB4(&qword_1EC3A67B0, &qword_1EC3A67A0);
  v44 = 0;
  v53 = v4 + 1;
  while (1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A67A0);
    sub_1C96A7944();
    memcpy(v59, v58, 0xD0uLL);
    v45 = sub_1C94EA54C(v59);
    if (v45 == 1)
    {
      *&v10[v55] = v44;
      memcpy(v57, v58, sizeof(v57));
      sub_1C9470AFC(v57, &qword_1EC3A67D0);
      sub_1C9470AFC(v10, &qword_1EC3A6890);
      v47 = OUTLINED_FUNCTION_44_9();
      v48(v47);
LABEL_13:
      OUTLINED_FUNCTION_101();
      goto LABEL_15;
    }

    if (__OFADD__(v44, 1))
    {
      break;
    }

    memcpy(v57, v58, sizeof(v57));
    if (v4 == v44)
    {
      *&v10[v55] = v53;
      sub_1C9470AFC(v10, &qword_1EC3A6890);
      v49 = OUTLINED_FUNCTION_44_9();
      v50(v49);

      sub_1C96A53C4();
      sub_1C95A038C(&v57[56]);
      goto LABEL_13;
    }

    sub_1C9470AFC(v57, &qword_1EC3A6818);
    ++v44;
  }

  __break(1u);
LABEL_15:
  result.value._object = v46;
  result.value._countAndFlagsBits = v45;
  return result;
}

uint64_t SyncedDataManager.deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);

  sub_1C9470AFC(v0 + OBJC_IVAR____TtC11WeatherCore17SyncedDataManager_cachedSyncedData, &unk_1EC3A5F90);

  return v0;
}

uint64_t SyncedDataManager.__deallocating_deinit()
{
  SyncedDataManager.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1C96518A4(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_6();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1C9651904(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_6();
  (*(v5 + 32))(a2, a1);
  return a2;
}

void static NSUserDefaults.postSettingsUpdatedNotification()()
{
  v0 = [objc_opt_self() defaultCenter];
  OUTLINED_FUNCTION_1_43();
  v1 = sub_1C96A7004();
  [v0 postNotificationName:v1 object:0 userInfo:0 options:3];
}

uint64_t (*static NSUserDefaults.weatherShared.modify())()
{
  if (qword_1EDB80350 != -1)
  {
    OUTLINED_FUNCTION_0_101();
  }

  OUTLINED_FUNCTION_117();
  swift_beginAccess();
  return j__swift_endAccess;
}

id sub_1C9651BE4()
{
  v0 = objc_allocWithZone(MEMORY[0x1E695E000]);
  result = sub_1C96520EC(0xD00000000000001ALL, 0x80000001C96D2580);
  qword_1EDB7AB30 = result;
  return result;
}

uint64_t static NSUserDefaults.weatherSharedInternal.getter()
{
  if (qword_1EDB7AB28 != -1)
  {
    swift_once();
  }

  v0 = qword_1EDB7AB30;
  v1 = qword_1EDB7AB30;
  return v0;
}

void sub_1C9651CD8(void *a1, void *a2, void **a3)
{
  if (*a2 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v5 = *a3;
  *a3 = a1;
}

uint64_t (*static NSUserDefaults.sensitive.modify())()
{
  if (qword_1EDB7CDE0 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_117();
  swift_beginAccess();
  return j_j__swift_endAccess;
}

id sub_1C9651DC4(void *a1)
{
  v1 = a1;
  v2 = sub_1C9651E48();
  v4 = v3;

  if (v4 >> 60 == 15)
  {
    v5 = 0;
  }

  else
  {
    v5 = sub_1C96A4834();
    sub_1C9485BFC(v2, v4);
  }

  return v5;
}

uint64_t sub_1C9651E48()
{
  OUTLINED_FUNCTION_1_43();
  v1 = sub_1C96A7004();
  v2 = [v0 dataForKey_];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_1C96A4854();

  return v3;
}

void sub_1C9651ED8(void *a1, uint64_t a2, void *a3)
{
  v3 = a3;
  if (a3)
  {
    v4 = a1;
    v5 = v3;
    v3 = sub_1C96A4854();
    v7 = v6;
  }

  else
  {
    v8 = a1;
    v7 = 0xF000000000000000;
  }

  sub_1C9651F60(v3, v7);
}

uint64_t sub_1C9651F60(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 == 15)
  {
    v3 = 0;
  }

  else
  {
    OUTLINED_FUNCTION_117();
    v3 = sub_1C96A4834();
  }

  OUTLINED_FUNCTION_1_43();
  v4 = sub_1C96A7004();
  [v2 setValue:v3 forKey:v4];
  swift_unknownObjectRelease();

  v5 = OUTLINED_FUNCTION_117();

  return sub_1C9485BFC(v5, v6);
}

void sub_1C965200C(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 UnitsConfiguration];
  if (v3)
  {
    v4 = v3;
    v5 = sub_1C96A4854();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0xF000000000000000;
  }

  *a2 = v5;
  a2[1] = v7;
}

void sub_1C9652074(uint64_t a1, void **a2)
{
  v2 = *a2;
  if (*(a1 + 8) >> 60 == 15)
  {
    v3 = 0;
  }

  else
  {
    v3 = sub_1C96A4834();
  }

  v4 = v3;
  [v2 setUnitsConfiguration_];
}

id sub_1C96520EC(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = sub_1C96A7004();
  }

  else
  {
    v3 = 0;
  }

  v4 = [v2 initWithSuiteName_];

  return v4;
}

uint64_t Location.Identifier.with(id:name:coordinate:)@<X0>(double a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, double a5@<X4>, double a6@<X5>, char a7@<W6>, uint64_t a8@<X8>)
{
  v13 = *(v8 + 2);
  v12 = *(v8 + 3);
  v14 = v8[4];
  v15 = v8[5];
  if (a2)
  {
    v17 = a2;
  }

  else
  {
    a1 = *v8;
    v17 = *(v8 + 1);
    sub_1C96A53C4();
  }

  v18 = a4;
  if (!a4)
  {
    sub_1C96A53C4();
    a3 = v13;
    v18 = v12;
  }

  sub_1C96A53C4();
  sub_1C96A53C4();
  sub_1C96A53C4();
  swift_bridgeObjectRetain_n();
  MEMORY[0x1CCA8CB00](58, 0xE100000000000000);
  MEMORY[0x1CCA8CB00](a3, v18);

  if (a1 == 1.81844032e-306 && v17 == 0xE700000000000000)
  {

    v20 = 1;
  }

  else
  {
    v20 = sub_1C96A7DE4();
  }

  v22 = a6;
  if (a7)
  {
    v22 = v15;
  }

  *a8 = a1;
  *(a8 + 8) = v17;
  v23 = a5;
  if (a7)
  {
    v23 = v14;
  }

  *(a8 + 16) = a3;
  *(a8 + 24) = v18;
  *(a8 + 32) = v23;
  *(a8 + 40) = v22;
  *(a8 + 48) = v20 & 1;
  *(a8 + 56) = a1;
  *(a8 + 64) = v17;
  return result;
}

uint64_t Location.Identifier.init(id:name:coordinate:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>, double a6@<D0>, double a7@<D1>)
{
  swift_bridgeObjectRetain_n();
  sub_1C96A53C4();
  MEMORY[0x1CCA8CB00](58, 0xE100000000000000);
  MEMORY[0x1CCA8CB00](a3, a4);

  if (a1 == 0x746E6572727563 && a2 == 0xE700000000000000)
  {

    v15 = 1;
  }

  else
  {
    v15 = sub_1C96A7DE4();
  }

  *a5 = a1;
  *(a5 + 8) = a2;
  *(a5 + 16) = a3;
  *(a5 + 24) = a4;
  *(a5 + 32) = a6;
  *(a5 + 40) = a7;
  *(a5 + 48) = v15 & 1;
  *(a5 + 56) = a1;
  *(a5 + 64) = a2;
  return result;
}

uint64_t Location.Identifier.Kind.init(rawValue:)()
{
  v0 = sub_1C96A7BE4();

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

uint64_t sub_1C965243C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_1C96A7DE4() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 1701667182 && a2 == 0xE400000000000000;
    if (v6 || (sub_1C96A7DE4() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x616E6964726F6F63 && a2 == 0xEA00000000006574;
      if (v7 || (sub_1C96A7DE4() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 1684957547 && a2 == 0xE400000000000000;
        if (v8 || (sub_1C96A7DE4() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 0x4449657571696E75 && a2 == 0xE800000000000000)
        {

          return 4;
        }

        else
        {
          v10 = sub_1C96A7DE4();

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

uint64_t sub_1C96525DC(char a1)
{
  result = 25705;
  switch(a1)
  {
    case 1:
      result = 1701667182;
      break;
    case 2:
      result = 0x616E6964726F6F63;
      break;
    case 3:
      result = 1684957547;
      break;
    case 4:
      result = 0x4449657571696E75;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C9652684@<X0>(_BYTE *a1@<X8>)
{
  result = Location.Identifier.Kind.init(rawValue:)();
  *a1 = result;
  return result;
}

uint64_t sub_1C96526B4@<X0>(uint64_t *a1@<X8>)
{
  result = Location.Identifier.Kind.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1C9652798@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C965243C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C96527C0(uint64_t a1)
{
  v2 = sub_1C9652E60();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C96527FC(uint64_t a1)
{
  v2 = sub_1C9652E60();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Location.Identifier.hashValue.getter()
{
  sub_1C96A7EE4();
  Location.Identifier.hash(into:)();
  return sub_1C96A7F24();
}

uint64_t sub_1C965287C@<X0>(uint64_t *a1@<X8>)
{
  result = Location.Identifier.id.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t Location.Identifier.encode(to:)(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A7AD0);
  OUTLINED_FUNCTION_1_75();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  v8 = v16 - v7;
  v9 = *(v1 + 16);
  v16[3] = *(v1 + 24);
  v16[4] = v9;
  v10 = *(v1 + 32);
  v11 = *(v1 + 40);
  v19 = *(v1 + 48);
  v12 = *(v1 + 56);
  v16[1] = *(v1 + 64);
  v16[2] = v12;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C9652E60();
  sub_1C96A7F54();
  LOBYTE(v17) = 0;
  v13 = v16[5];
  sub_1C96A7D24();
  if (!v13)
  {
    v14 = v19;
    LOBYTE(v17) = 1;
    OUTLINED_FUNCTION_0_0();
    sub_1C96A7D24();
    v17 = v10;
    v18 = v11;
    v20 = 2;
    type metadata accessor for CLLocationCoordinate2D(0);
    sub_1C95DBBC4(&qword_1EDB7AB18);
    OUTLINED_FUNCTION_0_0();
    sub_1C96A7D74();
    LOBYTE(v17) = v14;
    v20 = 3;
    sub_1C9652EB4();
    OUTLINED_FUNCTION_0_0();
    sub_1C96A7D74();
    LOBYTE(v17) = 4;
    OUTLINED_FUNCTION_0_0();
    sub_1C96A7D24();
  }

  return (*(v5 + 8))(v8, v2);
}

uint64_t Location.Identifier.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A7AD8);
  OUTLINED_FUNCTION_1_75();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v24 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C9652E60();
  sub_1C96A7F44();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  LOBYTE(v29) = 0;
  v11 = OUTLINED_FUNCTION_2_69();
  v13 = v12;
  v41 = v11;
  LOBYTE(v29) = 1;
  v26 = OUTLINED_FUNCTION_2_69();
  v27 = v14;
  type metadata accessor for CLLocationCoordinate2D(0);
  LOBYTE(__src[0]) = 2;
  sub_1C95DBBC4(&unk_1EDB7CD80);
  sub_1C96A7CB4();
  v15 = v29;
  v16 = v30;
  LOBYTE(__src[0]) = 3;
  sub_1C9652F08();
  sub_1C96A7CB4();
  v25 = v29;
  v39 = 4;
  v17 = OUTLINED_FUNCTION_2_69();
  v19 = v18;
  (*(v7 + 8))(v10, v3);
  v20 = v41;
  __src[0] = v41;
  __src[1] = v13;
  v21 = v26;
  v22 = v27;
  __src[2] = v26;
  __src[3] = v27;
  __src[4] = v15;
  __src[5] = v16;
  LOBYTE(__src[6]) = v25;
  *(&__src[6] + 1) = v40[0];
  HIDWORD(__src[6]) = *(v40 + 3);
  __src[7] = v17;
  __src[8] = v19;
  memcpy(a2, __src, 0x48uLL);
  sub_1C95087DC(__src, &v29);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  v29 = v20;
  v30 = v13;
  v31 = v21;
  v32 = v22;
  v33 = v15;
  v34 = v16;
  v35 = v25;
  *v36 = v40[0];
  *&v36[3] = *(v40 + 3);
  v37 = v17;
  v38 = v19;
  return sub_1C953AEDC(&v29);
}

unint64_t sub_1C9652E60()
{
  result = qword_1EDB77F20[0];
  if (!qword_1EDB77F20[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDB77F20);
  }

  return result;
}

unint64_t sub_1C9652EB4()
{
  result = qword_1EDB77F08;
  if (!qword_1EDB77F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB77F08);
  }

  return result;
}

unint64_t sub_1C9652F08()
{
  result = qword_1EC3A7AE0;
  if (!qword_1EC3A7AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A7AE0);
  }

  return result;
}

unint64_t sub_1C9652F60()
{
  result = qword_1EC3A7AF0;
  if (!qword_1EC3A7AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A7AF0);
  }

  return result;
}

_BYTE *_s10IdentifierV4KindOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *_s10IdentifierV10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1C9653170()
{
  result = qword_1EC3A7AF8;
  if (!qword_1EC3A7AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A7AF8);
  }

  return result;
}

unint64_t sub_1C96531C8()
{
  result = qword_1EDB77F10;
  if (!qword_1EDB77F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB77F10);
  }

  return result;
}

unint64_t sub_1C9653220()
{
  result = qword_1EDB77F18;
  if (!qword_1EDB77F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB77F18);
  }

  return result;
}

unint64_t sub_1C9653274()
{
  result = qword_1EDB77F00;
  if (!qword_1EDB77F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB77F00);
  }

  return result;
}

uint64_t sub_1C9653310(const void *a1)
{
  v2 = sub_1C96A65E4();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &__dst[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  memcpy(__dst, a1, sizeof(__dst));
  sub_1C96A65D4();
  v6 = StubGeocodeManager.reverseGeocode(placeholder:ignoreTimeZoneExpiration:qos:)();
  (*(v3 + 8))(v5, v2);
  return v6;
}

uint64_t sub_1C965340C(void *a1, char a2)
{
  v4 = sub_1C96A65E4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C96A65D4();
  v8 = GeocodeManager.reverseGeocode(placeholder:ignoreTimeZoneExpiration:qos:)(a1, a2, v7);
  (*(v5 + 8))(v7, v4);
  return v8;
}

uint64_t GeocodeManagerType.reverseGeocode(placeholder:ignoreTimeZoneExpiration:)(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1C96A65E4();
  OUTLINED_FUNCTION_1();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_14();
  v14 = v13 - v12;
  memcpy(__dst, a1, sizeof(__dst));
  sub_1C96A65D4();
  v15 = (*(a4 + 48))(__dst, a2, v14, a3, a4);
  (*(v10 + 8))(v14, v8);
  return v15;
}

uint64_t sub_1C9653628(uint64_t a1)
{
  v2 = type metadata accessor for Location();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1C96A65E4();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C96A65D4();
  sub_1C9489AF8(a1, v4, type metadata accessor for Location);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5758);
  swift_allocObject();
  v9 = sub_1C96A56A4();
  (*(v6 + 8))(v8, v5);
  return v9;
}

uint64_t sub_1C9653790(uint64_t a1, char a2, char a3)
{
  v6 = sub_1C96A65E4();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C96A65D4();
  v10 = GeocodeManager.reverseGeocode(location:forceUpdate:ignoreTimeZoneExpiration:qos:)(a1, a2, a3, v9);
  (*(v7 + 8))(v9, v6);
  return v10;
}

uint64_t GeocodeManagerType.reverseGeocode(location:forceUpdate:ignoreTimeZoneExpiration:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_1C96A65E4();
  OUTLINED_FUNCTION_1();
  v12 = v11;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_14();
  v16 = v15 - v14;
  sub_1C96A65D4();
  v17 = (*(a5 + 64))(a1, a2, a3, v16, a4, a5);
  (*(v12 + 8))(v16, v10);
  return v17;
}

uint64_t sub_1C965399C()
{
  sub_1C96A5134();
  sub_1C96A3D04();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A7B20);
  sub_1C96A5554();
}

double sub_1C9653A44@<D0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  sub_1C9470A40(v1 + 64, &v5, &qword_1EC3A7B08);
  if (*(&v6 + 1) == 1)
  {
    sub_1C9470AFC(&v5, &qword_1EC3A7B08);
    sub_1C9653B24(v1, a1);
    sub_1C9470A40(a1, &v5, &qword_1EC3A7B20);
    swift_beginAccess();
    sub_1C9656D48(&v5, v1 + 64);
    swift_endAccess();
  }

  else
  {
    result = *&v5;
    v4 = v6;
    *a1 = v5;
    *(a1 + 16) = v4;
    *(a1 + 32) = v7;
  }

  return result;
}

uint64_t sub_1C9653B24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  (*(a1 + 104))(v10);
  sub_1C96A4EE4();
  sub_1C96A4EC4();
  if (qword_1EDB7FCA8 != -1)
  {
    swift_once();
  }

  sub_1C96A4EB4();

  v4 = v11;
  v5 = v12;
  __swift_project_boxed_opaque_existential_1(v10, v11);
  v6 = *(v5 + 40);
  if (v9 == 1)
  {
    v6(OUTLINED_FUNCTION_25_4, 0, v4, v5);
    sub_1C94D7D04(&qword_1EC3A7B28, v7, type metadata accessor for GeocodeManager);
    sub_1C96A4FE4();
  }

  else
  {
    v6(sub_1C9656DB8, a1, v4, v5);
  }

  sub_1C9469B6C(v10, a2);
  return __swift_destroy_boxed_opaque_existential_1Tm(v10);
}

BOOL sub_1C9653E58(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5430);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v19 - v4;
  v6 = sub_1C96A4A54();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v19 - v11;
  v13 = type metadata accessor for Location();
  sub_1C9470A40(a1 + *(v13 + 24), v5, &unk_1EC3A5430);
  if (__swift_getEnumTagSinglePayload(v5, 1, v6) == 1)
  {
    sub_1C9470AFC(v5, &unk_1EC3A5430);
    return 1;
  }

  else
  {
    (*(v7 + 32))(v12, v5, v6);
    v15 = *(v1 + 16);
    sub_1C96A5954();
    sub_1C96A5944();
    sub_1C96A4964();
    v17 = v16;
    v18 = *(v7 + 8);
    v18(v9, v6);
    v18(v12, v6);
    return v15 <= v17;
  }
}

uint64_t GeocodeManager.__allocating_init(service:store:appConfigurationManager:queue:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6)
{
  v12 = swift_allocObject();
  GeocodeManager.init(service:store:appConfigurationManager:queue:)(a1, a2, a3, a4, a5, a6);
  return v12;
}

uint64_t GeocodeManager.init(service:store:appConfigurationManager:queue:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, id a6)
{
  v7 = v6;
  v25 = type metadata accessor for AppConfiguration();
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_14();
  v14 = v13 - v12;
  v15 = sub_1C96A5114();
  MEMORY[0x1EEE9AC00](v15 - 8);
  OUTLINED_FUNCTION_14();
  sub_1C96A5404();
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_14();
  sub_1C94D7D04(&unk_1EDB7D088, 255, MEMORY[0x1E69D67A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A6390);
  sub_1C9656A98();
  sub_1C96A79E4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A7B00);
  swift_allocObject();
  *(v6 + 40) = sub_1C96A5314();
  sub_1C96A5104();
  sub_1C96A5134();
  swift_allocObject();
  *(v6 + 48) = sub_1C96A5124();
  *(v6 + 56) = MEMORY[0x1E69E7CC0];
  *(v6 + 64) = 0;
  *(v6 + 72) = 0;
  *(v6 + 80) = 0;
  *(v6 + 88) = xmmword_1C96AA490;
  *(v6 + 24) = a1;
  *(v6 + 32) = a2;
  *(v6 + 104) = a3;
  *(v6 + 112) = a4;
  if (a6)
  {
    swift_unknownObjectRetain();
    sub_1C96A3D04();
  }

  else
  {
    v17 = qword_1EDB7CDC8;
    swift_unknownObjectRetain();
    sub_1C96A3D04();
    if (v17 != -1)
    {
      swift_once();
    }

    a6 = qword_1EDB7CDD0;
  }

  *(v7 + 120) = a6;
  v18 = a5[3];
  v19 = a5[4];
  __swift_project_boxed_opaque_existential_1(a5, v18);
  (*(v19 + 8))(v18, v19);
  swift_unknownObjectRelease();

  v20 = *(v14 + *(v25 + 28));
  sub_1C948CCF4(v14, type metadata accessor for AppConfiguration);
  *(v7 + 16) = v20;
  __swift_destroy_boxed_opaque_existential_1Tm(a5);
  return v7;
}

uint64_t GeocodeManager.register(callbacks:)(uint64_t a1)
{
  v2 = v1;
  sub_1C96A50E4();
  swift_beginAccess();
  sub_1C952293C();
  v4 = *(*(v1 + 56) + 16);
  sub_1C952296C(v4);
  v5 = *(v1 + 56);
  *(v5 + 16) = v4 + 1;
  sub_1C9469B6C(a1, v5 + 40 * v4 + 32);
  *(v2 + 56) = v5;
  swift_endAccess();
  return sub_1C96A50F4();
}

uint64_t GeocodeManager.reverseGeocode(clLocation:qos:ignoreTimeZoneExpiration:)(void *a1, uint64_t a2, char a3)
{
  v4 = v3;
  if (qword_1EDB7CF88 != -1)
  {
    swift_once();
  }

  v7 = sub_1C96A6154();
  __swift_project_value_buffer(v7, qword_1EDB7CF90);
  v8 = sub_1C96A6134();
  v9 = sub_1C96A76A4();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_1C945E000, v8, v9, "Entering reverse geocode queue.", v10, 2u);
    MEMORY[0x1CCA8E3D0](v10, -1, -1);
  }

  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = a3 & 1;
  *(v11 + 32) = v4;
  type metadata accessor for Location();
  v12 = a1;
  sub_1C96A3D04();
  v13 = sub_1C96A5764();

  return v13;
}

uint64_t sub_1C965463C(uint64_t a1, uint64_t a2)
{
  if (qword_1EDB7CF88 != -1)
  {
    swift_once();
  }

  v4 = sub_1C96A6154();
  __swift_project_value_buffer(v4, qword_1EDB7CF90);
  v5 = sub_1C96A6134();
  v6 = sub_1C96A76A4();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_1C945E000, v5, v6, "Accessing reverse geocode callbacks to be notified.", v7, 2u);
    MEMORY[0x1CCA8E3D0](v7, -1, -1);
  }

  sub_1C96A50E4();
  swift_beginAccess();
  v8 = *(a1 + 56);
  sub_1C96A53C4();
  sub_1C96A50F4();
  v9 = sub_1C96A6134();
  v10 = sub_1C96A76A4();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_1C945E000, v9, v10, "Notifying reverse geocode callbacks.", v11, 2u);
    MEMORY[0x1CCA8E3D0](v11, -1, -1);
  }

  sub_1C9654884(v8, a2);
  v14 = CLLocation.storeKey.getter();
  MEMORY[0x1EEE9AC00](v14);
  v12 = sub_1C96A5324();

  return v12;
}

uint64_t sub_1C9654884(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2)
  {
    v4 = (result + 32);
    do
    {
      v5 = v4[3];
      v6 = v4[4];
      __swift_project_boxed_opaque_existential_1(v4, v5);
      result = (*(v6 + 8))(a2, v5, v6);
      v4 += 5;
      --v2;
    }

    while (v2);
  }

  return result;
}

uint64_t sub_1C9654900(uint64_t a1, uint64_t a2, unint64_t a3, int a4, uint64_t a5, void *a6, void *a7)
{
  v68 = a4;
  v70 = *a7;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A7B18);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = (&v65 - v14);
  v71 = type metadata accessor for Location();
  MEMORY[0x1EEE9AC00](v71);
  v17 = &v65 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v65 - v19;
  sub_1C96A4EE4();
  sub_1C96A4EC4();
  if (qword_1EDB7FC90 != -1)
  {
    swift_once();
  }

  sub_1C96A4EB4();

  if (v72[0])
  {
    goto LABEL_15;
  }

  v66 = v17;
  sub_1C965399C();
  v21 = v73;
  if (!v73)
  {
    sub_1C9470AFC(v72, &qword_1EC3A7B20);
    v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4F40);
    __swift_storeEnumTagSinglePayload(v15, 1, 1, v34);
    goto LABEL_13;
  }

  v67 = v20;
  v22 = a2;
  v23 = v74;
  __swift_project_boxed_opaque_existential_1(v72, v73);
  v24 = *(v23 + 16);
  v25 = v23;
  a2 = v22;
  v24(v22, a3, v21, v25);
  __swift_destroy_boxed_opaque_existential_1Tm(v72);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4F40);
  if (__swift_getEnumTagSinglePayload(v15, 1, v26) == 1)
  {
LABEL_13:
    v35 = &qword_1EC3A7B18;
    v36 = v15;
    goto LABEL_14;
  }

  v27 = v15 + *(v26 + 48);
  v29 = *v27;
  v28 = *(v27 + 1);
  sub_1C94898C4(v15, v67);
  if (v29 == sub_1C96A4D74() && v28 == v30)
  {

    a2 = v22;
    v33 = v67;
  }

  else
  {
    v32 = sub_1C96A7DE4();

    a2 = v22;
    v33 = v67;
    if ((v32 & 1) == 0)
    {
LABEL_24:
      sub_1C965399C();
      v57 = v73;
      if (v73)
      {
        v58 = v74;
        __swift_project_boxed_opaque_existential_1(v72, v73);
        (*(v58 + 32))(a2, a3, v57, v58);
        sub_1C948CCF4(v33, type metadata accessor for Location);
        __swift_destroy_boxed_opaque_existential_1Tm(v72);
        goto LABEL_15;
      }

      sub_1C948CCF4(v33, type metadata accessor for Location);
      v35 = &qword_1EC3A7B20;
      v36 = v72;
LABEL_14:
      sub_1C9470AFC(v36, v35);
LABEL_15:
      if (qword_1EDB7CF88 != -1)
      {
        swift_once();
      }

      v37 = sub_1C96A6154();
      __swift_project_value_buffer(v37, qword_1EDB7CF90);
      sub_1C96A53C4();
      v38 = sub_1C96A6134();
      v39 = sub_1C96A76A4();

      v40 = os_log_type_enabled(v38, v39);
      v69 = a7;
      if (v40)
      {
        v41 = swift_slowAlloc();
        v42 = a2;
        v43 = swift_slowAlloc();
        v72[0] = v43;
        *v41 = 141558275;
        *(v41 + 4) = 1752392040;
        *(v41 + 12) = 2081;
        *(v41 + 14) = sub_1C9484164(v42, a3, v72);
        __swift_destroy_boxed_opaque_existential_1Tm(v43);
        v44 = v43;
        a2 = v42;
        MEMORY[0x1CCA8E3D0](v44, -1, -1);
        MEMORY[0x1CCA8E3D0](v41, -1, -1);
      }

      v45 = *(a1 + 32);
      ObjectType = swift_getObjectType();
      (*(v45 + 40))(v72, a6, ObjectType, v45);
      v47 = v72[0];
      (*(v45 + 8))(a6, ObjectType, v45);
      v48 = swift_allocObject();
      *(v48 + 16) = a2;
      *(v48 + 24) = a3;
      *(v48 + 32) = a5;
      *(v48 + 40) = a6;
      *(v48 + 48) = v47;
      sub_1C96A53C4();
      sub_1C96A53C4();
      v49 = a6;
      v50 = a2;
      v51 = sub_1C96A55A4();
      sub_1C96A5654();

      v52 = swift_allocObject();
      *(v52 + 16) = v50;
      *(v52 + 24) = a3;
      *(v52 + 32) = a1;
      *(v52 + 40) = a5;
      *(v52 + 48) = v49;
      *(v52 + 56) = v47;
      sub_1C96A53C4();
      sub_1C96A53C4();
      v53 = v49;
      sub_1C96A3D04();
      v54 = sub_1C96A55A4();
      v55 = sub_1C96A5674();

      return v55;
    }
  }

  if ((v68 & 1) == 0 && sub_1C9653E58(v33))
  {
    goto LABEL_24;
  }

  if (qword_1EDB7CF88 != -1)
  {
    swift_once();
  }

  v59 = sub_1C96A6154();
  __swift_project_value_buffer(v59, qword_1EDB7CF90);
  sub_1C96A53C4();
  v60 = sub_1C96A6134();
  v61 = sub_1C96A76A4();

  if (os_log_type_enabled(v60, v61))
  {
    v62 = swift_slowAlloc();
    v63 = swift_slowAlloc();
    v72[0] = v63;
    *v62 = 141558275;
    *(v62 + 4) = 1752392040;
    *(v62 + 12) = 2081;
    *(v62 + 14) = sub_1C9484164(a2, a3, v72);
    __swift_destroy_boxed_opaque_existential_1Tm(v63);
    MEMORY[0x1CCA8E3D0](v63, -1, -1);
    MEMORY[0x1CCA8E3D0](v62, -1, -1);
  }

  v64 = v66;
  LOBYTE(v72[0]) = 2;
  sub_1C9655128(a5, a6, v72);
  sub_1C9489AF8(v33, v64, type metadata accessor for Location);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5758);
  swift_allocObject();
  v55 = sub_1C96A56A4();
  sub_1C948CCF4(v33, type metadata accessor for Location);
  return v55;
}

uint64_t sub_1C9655128(uint64_t result, uint64_t a2, char *a3)
{
  v3 = *(result + 16);
  if (v3)
  {
    v5 = *a3;
    v6 = (result + 32);
    do
    {
      v7 = v6[3];
      v8 = v6[4];
      __swift_project_boxed_opaque_existential_1(v6, v7);
      v9 = v5;
      result = (*(v8 + 16))(a2, &v9, v7, v8);
      v6 += 5;
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_1C96551C0(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  v40 = a3;
  v41 = a5;
  v47 = a2;
  v12 = type metadata accessor for GeocodeResult(0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for Location();
  MEMORY[0x1EEE9AC00](v15 - 8);
  v43 = v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = v38 - v18;
  sub_1C9489AF8(a1, v38 - v18, type metadata accessor for Location);
  if (qword_1EDB7CF88 != -1)
  {
    swift_once();
  }

  v20 = sub_1C96A6154();
  __swift_project_value_buffer(v20, qword_1EDB7CF90);
  v42 = a1;
  sub_1C9489AF8(a1, v14, type metadata accessor for GeocodeResult);
  sub_1C96A53C4();
  v21 = sub_1C96A6134();
  v22 = sub_1C96A76A4();

  v23 = os_log_type_enabled(v21, v22);
  v39 = a4;
  if (v23)
  {
    v24 = swift_slowAlloc();
    v38[1] = v7;
    v25 = v24;
    v26 = swift_slowAlloc();
    v38[0] = a6;
    v27 = v26;
    v44[0] = v26;
    *v25 = 141558531;
    *(v25 + 4) = 1752392040;
    *(v25 + 12) = 2081;
    *(v25 + 14) = sub_1C9484164(v40, a4, v44);
    *(v25 + 22) = 1024;
    v28 = v14;
    v29 = v14[*(v12 + 20)];
    sub_1C948CCF4(v28, type metadata accessor for GeocodeResult);
    *(v25 + 24) = v29;
    _os_log_impl(&dword_1C945E000, v21, v22, "Successfully obtained a resolved geocode Location; saving in cache. locationKey=%{private,mask.hash}s, isExact=%{BOOL}d", v25, 0x1Cu);
    __swift_destroy_boxed_opaque_existential_1Tm(v27);
    v30 = v27;
    a6 = v38[0];
    MEMORY[0x1CCA8E3D0](v30, -1, -1);
    MEMORY[0x1CCA8E3D0](v25, -1, -1);
  }

  else
  {
    sub_1C948CCF4(v14, type metadata accessor for GeocodeResult);
  }

  if (*(v42 + *(v12 + 20)) == 1)
  {
    sub_1C965399C();
    v31 = v45;
    if (v45)
    {
      v32 = a7;
      v33 = v46;
      __swift_project_boxed_opaque_existential_1(v44, v45);
      v34 = *(v33 + 24);
      v35 = v33;
      a7 = v32;
      v34(v19, v40, v39, v31, v35);
      __swift_destroy_boxed_opaque_existential_1Tm(v44);
    }

    else
    {
      sub_1C9470AFC(v44, &qword_1EC3A7B20);
    }
  }

  LOBYTE(v44[0]) = a7;
  sub_1C9655128(v41, a6, v44);
  sub_1C9489AF8(v19, v43, type metadata accessor for Location);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5758);
  swift_allocObject();
  v36 = sub_1C96A56A4();
  sub_1C948CCF4(v19, type metadata accessor for Location);
  return v36;
}

uint64_t sub_1C96555BC(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  if (qword_1EDB7CF88 != -1)
  {
    swift_once();
  }

  v13 = sub_1C96A6154();
  __swift_project_value_buffer(v13, qword_1EDB7CF90);
  sub_1C96A53C4();
  v14 = sub_1C96A6134();
  v15 = sub_1C96A7684();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v19 = v17;
    *v16 = 141558275;
    *(v16 + 4) = 1752392040;
    *(v16 + 12) = 2081;
    *(v16 + 14) = sub_1C9484164(a2, a3, &v19);
    _os_log_impl(&dword_1C945E000, v14, v15, "Failed to obtained a resolved geocode Location. locationKey=%{private,mask.hash}s", v16, 0x16u);
    __swift_destroy_boxed_opaque_existential_1Tm(v17);
    MEMORY[0x1CCA8E3D0](v17, -1, -1);
    MEMORY[0x1CCA8E3D0](v16, -1, -1);
  }

  v20 = a7;
  return sub_1C9655784(a5, a6, a1, &v20);
}

uint64_t sub_1C9655784(uint64_t result, uint64_t a2, uint64_t a3, char *a4)
{
  v4 = *(result + 16);
  if (v4)
  {
    v7 = *a4;
    v8 = (result + 32);
    do
    {
      v9 = v8[3];
      v10 = v8[4];
      __swift_project_boxed_opaque_existential_1(v8, v9);
      v11 = v7;
      result = (*(v10 + 24))(a2, a3, &v11, v9, v10);
      v8 += 5;
      --v4;
    }

    while (v4);
  }

  return result;
}

uint64_t GeocodeManager.reverseGeocode(coordinate:)(double a1, double a2)
{
  v4 = sub_1C96A65E4();
  OUTLINED_FUNCTION_1();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_14();
  v10 = v9 - v8;
  v11 = [objc_allocWithZone(MEMORY[0x1E6985C40]) initWithLatitude:a1 longitude:a2];
  sub_1C96A65D4();
  v12 = GeocodeManager.reverseGeocode(clLocation:qos:ignoreTimeZoneExpiration:)(v11, v10, 0);

  (*(v6 + 8))(v10, v4);
  return v12;
}

uint64_t GeocodeManager.reverseGeocode(coordinate:qos:)(uint64_t a1, double a2, double a3)
{
  v4 = [objc_allocWithZone(MEMORY[0x1E6985C40]) initWithLatitude:a2 longitude:a3];
  v5 = GeocodeManager.reverseGeocode(clLocation:qos:ignoreTimeZoneExpiration:)(v4, a1, 0);

  return v5;
}

uint64_t GeocodeManager.reverseGeocode(placeholder:ignoreTimeZoneExpiration:qos:)(void *__src, char a2, uint64_t a3)
{
  memcpy(__dst, __src, sizeof(__dst));
  v6 = [objc_allocWithZone(MEMORY[0x1E6985C40]) initWithLatitude:__dst[4] longitude:__dst[5]];
  GeocodeManager.reverseGeocode(clLocation:qos:ignoreTimeZoneExpiration:)(v6, a3, a2);
  v7 = swift_allocObject();
  memcpy((v7 + 16), __src, 0x68uLL);
  sub_1C9648694(__dst, &v11);
  v8 = sub_1C96A55A4();
  type metadata accessor for Location();
  v9 = sub_1C96A5634();

  return v9;
}

uint64_t sub_1C9655AB4(uint64_t a1, void *a2)
{
  v4 = sub_1C96A4DF4();
  v59 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v69 = &v56 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5430);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v58 = &v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v68 = &v56 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v56 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5F60);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v56 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v56 - v17;
  v19 = type metadata accessor for Location();
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v56 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v64 = &v56 - v23;
  memcpy(__dst, a2, sizeof(__dst));
  __swift_storeEnumTagSinglePayload(v18, 1, 1, v4);
  v24 = sub_1C96A4A54();
  v72 = v12;
  __swift_storeEnumTagSinglePayload(v12, 1, 1, v24);
  v25 = a2[10];
  v65 = a2[9];
  v67 = v25;
  v26 = a2[12];
  v66 = a2[11];
  v60 = v26;
  v27 = v4;
  sub_1C95087DC(__dst, v70);
  v61 = Location.clLocation.getter();
  v63 = v18;
  sub_1C9470A40(v18, v15, &unk_1EC3A5F60);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v15, 1, v4);
  v62 = v4;
  if (EnumTagSinglePayload == 1)
  {
    v29 = v59;
    v30 = a1;
    (*(v59 + 16))(v69, a1 + v19[5], v27);
    v31 = __swift_getEnumTagSinglePayload(v15, 1, v27) == 1;
    v32 = v29;
    if (v31)
    {
      sub_1C95087DC(__dst, v70);
    }

    else
    {
      sub_1C95087DC(__dst, v70);
      sub_1C9470AFC(v15, &unk_1EC3A5F60);
    }
  }

  else
  {
    v30 = a1;
    v33 = v59;
    (*(v59 + 32))(v69, v15, v27);
    sub_1C95087DC(__dst, v70);
    v32 = v33;
  }

  v34 = v58;
  sub_1C9470A40(v72, v58, &unk_1EC3A5430);
  if (__swift_getEnumTagSinglePayload(v34, 1, v24) == 1)
  {
    sub_1C9470A40(v30 + v19[6], v68, &unk_1EC3A5430);
    if (__swift_getEnumTagSinglePayload(v34, 1, v24) != 1)
    {
      sub_1C9470AFC(v34, &unk_1EC3A5430);
    }
  }

  else
  {
    v35 = v68;
    (*(*(v24 - 8) + 32))(v68, v34, v24);
    __swift_storeEnumTagSinglePayload(v35, 0, 1, v24);
  }

  v36 = v67;
  v37 = v60;
  if (!v67)
  {
    v65 = *(v30 + v19[7]);
    v36 = sub_1C96A53C4();
  }

  v59 = v36;
  v38 = v32;
  v39 = v62;
  v40 = v37;
  if (!v37)
  {
    v41 = (v30 + v19[8]);
    v40 = v41[1];
    v66 = *v41;
    sub_1C96A53C4();
  }

  v42 = v19[10];
  v43 = (v30 + v19[9]);
  v44 = v43[1];
  v57 = *v43;
  v45 = v30 + v42;
  v46 = *(v30 + v42);
  v47 = *(v45 + 8);
  v58 = v46;
  v48 = v19[11];
  *&v21[v48] = 0;
  memcpy(v21, __dst, 0x48uLL);
  (*(v38 + 32))(&v21[v19[5]], v69, v39);
  sub_1C948E818(v68, &v21[v19[6]]);
  sub_1C96A53C4();
  sub_1C96A53C4();
  sub_1C96A53C4();
  sub_1C96A53C4();
  sub_1C953AEDC(__dst);
  v49 = &v21[v19[7]];
  v50 = v59;
  *v49 = v65;
  *(v49 + 1) = v50;
  v51 = &v21[v19[8]];
  *v51 = v66;
  *(v51 + 1) = v40;
  v52 = &v21[v19[9]];
  *v52 = v57;
  *(v52 + 1) = v44;
  v53 = &v21[v19[10]];
  *v53 = v58;
  *(v53 + 1) = v47;
  v54 = v61;
  sub_1C9470AFC(v72, &unk_1EC3A5430);
  sub_1C9470AFC(v63, &unk_1EC3A5F60);
  *&v21[v48] = v54;
  sub_1C94898C4(v21, v64);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5758);
  swift_allocObject();
  return sub_1C96A56A4();
}

uint64_t GeocodeManager.reverseGeocode(location:forceUpdate:ignoreTimeZoneExpiration:qos:)(uint64_t a1, char a2, char a3, uint64_t a4)
{
  type metadata accessor for Location();
  OUTLINED_FUNCTION_1();
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v12);
  if (sub_1C9653E58(a1) || (a2 & 1) != 0)
  {
    v14 = [objc_allocWithZone(MEMORY[0x1E6985C40]) initWithLatitude:*(a1 + 32) longitude:*(a1 + 40)];
    GeocodeManager.reverseGeocode(clLocation:qos:ignoreTimeZoneExpiration:)(v14, a4, a3 & 1);
    OUTLINED_FUNCTION_3_53();
    v15 = (*(v9 + 80) + 16) & ~*(v9 + 80);
    v16 = swift_allocObject();
    sub_1C94898C4(&v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v15);
    v17 = sub_1C96A55A4();
    v13 = sub_1C96A5634();
  }

  else
  {
    OUTLINED_FUNCTION_3_53();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5758);
    swift_allocObject();
    return sub_1C96A56A4();
  }

  return v13;
}

uint64_t sub_1C9656310(uint64_t a1, char *a2)
{
  v54 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5430);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v49 = &v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v55 = &v46 - v6;
  v7 = sub_1C96A4DF4();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v58 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5F60);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v46 - v14;
  v16 = type metadata accessor for Location();
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v46 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v19);
  v53 = &v46 - v21;
  v23 = *(v8 + 16);
  v23(v15, v54 + *(v22 + 20), v7, v20);
  __swift_storeEnumTagSinglePayload(v15, 0, 1, v7);
  v47 = v16[6];
  v48 = Location.clLocation.getter();
  memcpy(__dst, a2, 0x48uLL);
  v52 = v15;
  sub_1C9470A40(v15, v12, &unk_1EC3A5F60);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v7);
  v50 = v8;
  if (EnumTagSinglePayload == 1)
  {
    (v23)(v58, &a2[v16[5]], v7);
    if (__swift_getEnumTagSinglePayload(v12, 1, v7) != 1)
    {
      sub_1C95087DC(__dst, v56);
      sub_1C9470AFC(v12, &unk_1EC3A5F60);
      goto LABEL_6;
    }
  }

  else
  {
    (*(v8 + 32))(v58, v12, v7);
  }

  sub_1C95087DC(__dst, v56);
LABEL_6:
  v25 = v49;
  sub_1C9470A40(v54 + v47, v49, &unk_1EC3A5430);
  v26 = sub_1C96A4A54();
  v27 = __swift_getEnumTagSinglePayload(v25, 1, v26);
  v51 = v7;
  if (v27 == 1)
  {
    sub_1C9470A40(&a2[v16[6]], v55, &unk_1EC3A5430);
    if (__swift_getEnumTagSinglePayload(v25, 1, v26) != 1)
    {
      sub_1C9470AFC(v25, &unk_1EC3A5430);
    }
  }

  else
  {
    v28 = v55;
    (*(*(v26 - 8) + 32))(v55, v25, v26);
    __swift_storeEnumTagSinglePayload(v28, 0, 1, v26);
  }

  v29 = v16[8];
  v30 = &a2[v16[7]];
  v31 = v30[1];
  v49 = *v30;
  v32 = *&a2[v29 + 8];
  v54 = *&a2[v29];
  v33 = v16[10];
  v34 = &a2[v16[9]];
  v36 = *v34;
  v35 = *(v34 + 1);
  v38 = *&a2[v33];
  v37 = *&a2[v33 + 8];
  v39 = v16[11];
  *&v18[v39] = 0;
  memcpy(v18, __dst, 0x48uLL);
  (*(v50 + 32))(&v18[v16[5]], v58, v51);
  sub_1C948E818(v55, &v18[v16[6]]);
  v40 = &v18[v16[7]];
  *v40 = v49;
  *(v40 + 1) = v31;
  v41 = &v18[v16[8]];
  *v41 = v54;
  *(v41 + 1) = v32;
  v42 = &v18[v16[9]];
  *v42 = v36;
  *(v42 + 1) = v35;
  v43 = &v18[v16[10]];
  *v43 = v38;
  *(v43 + 1) = v37;
  sub_1C96A53C4();
  v44 = v48;
  sub_1C96A53C4();
  sub_1C96A53C4();
  sub_1C96A53C4();
  sub_1C9470AFC(v52, &unk_1EC3A5F60);
  *&v18[v39] = v44;
  sub_1C94898C4(v18, v53);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5758);
  swift_allocObject();
  return sub_1C96A56A4();
}