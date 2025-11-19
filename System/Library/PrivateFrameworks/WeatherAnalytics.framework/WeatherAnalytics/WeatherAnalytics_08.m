unint64_t sub_220C96F1C()
{
  result = qword_27CF7D9F8;
  if (!qword_27CF7D9F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7D9F8);
  }

  return result;
}

unint64_t sub_220C96F74()
{
  result = qword_27CF7DA00;
  if (!qword_27CF7DA00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7DA00);
  }

  return result;
}

WeatherAnalytics::StartMethod_optional __swiftcall StartMethod.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_220CA0F84();

  v5 = 6;
  if (v3 < 6)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_220C97024(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = *a1;
  return sub_220C3C0A0();
}

unint64_t sub_220C97034()
{
  result = qword_27CF7DA08;
  if (!qword_27CF7DA08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7DA08);
  }

  return result;
}

uint64_t sub_220C971D4()
{
  v0 = sub_220CA0254();
  __swift_allocate_value_buffer(v0, qword_27CF7DA40);
  __swift_project_value_buffer(v0, qword_27CF7DA40);
  return sub_220CA0244();
}

uint64_t ViewEvent.viewData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B8E8, &unk_220CA3700);
  v4 = OUTLINED_FUNCTION_1(v3);
  v6 = *(v5 + 16);

  return v6(a1, v1, v4);
}

uint64_t ViewEvent.viewData.setter(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B8E8, &unk_220CA3700);
  v4 = OUTLINED_FUNCTION_1(v3);
  v6 = *(v5 + 40);

  return v6(v1, a1, v4);
}

uint64_t ViewEvent.privateUserData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ViewEvent() + 20);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B7F0, &qword_220CA3150);
  v5 = OUTLINED_FUNCTION_1(v4);
  v7 = *(v6 + 16);

  return v7(a1, v1 + v3, v5);
}

uint64_t type metadata accessor for ViewEvent()
{
  result = qword_27CF7DA70;
  if (!qword_27CF7DA70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ViewEvent.privateUserData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ViewEvent() + 20);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B7F0, &qword_220CA3150);
  OUTLINED_FUNCTION_1(v4);
  v6 = *(v5 + 40);

  return v6(v1 + v3, a1);
}

uint64_t ViewEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B8E8, &unk_220CA3700);
  OUTLINED_FUNCTION_1(v3);
  (*(v4 + 104))(a1, v2);
  v5 = *(type metadata accessor for ViewEvent() + 20);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B7F0, &qword_220CA3150);
  OUTLINED_FUNCTION_1(v6);
  v8 = *(v7 + 104);

  return v8(a1 + v5, v2);
}

uint64_t ViewEvent.Model.viewData.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
}

uint64_t ViewEvent.Model.privateUserData.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 32);
  v3 = *(v1 + 40);
  v4 = *(v1 + 44);
  *a1 = *(v1 + 24);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 20) = v4;
}

uint64_t ViewEvent.Model.init(viewData:privateUserData:)@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *(result + 8);
  v4 = *(result + 16);
  v5 = *a2;
  v6 = a2[1];
  v7 = *(a2 + 4);
  v8 = *(a2 + 20);
  *a3 = *result;
  *(a3 + 8) = v3;
  *(a3 + 16) = v4;
  *(a3 + 24) = v5;
  *(a3 + 32) = v6;
  *(a3 + 40) = v7;
  *(a3 + 44) = v8;
  return result;
}

uint64_t sub_220C9760C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6174614477656976 && a2 == 0xE800000000000000;
  if (v4 || (sub_220CA1154() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x5565746176697270 && a2 == 0xEF61746144726573)
  {

    return 1;
  }

  else
  {
    v7 = sub_220CA1154();

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

uint64_t sub_220C976DC(char a1)
{
  if (a1)
  {
    return 0x5565746176697270;
  }

  else
  {
    return 0x6174614477656976;
  }
}

uint64_t sub_220C97728@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_220C9760C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_220C97750(uint64_t a1)
{
  v2 = sub_220C979B0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_220C9778C(uint64_t a1)
{
  v2 = sub_220C979B0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ViewEvent.Model.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7DA58, &qword_220CB3200);
  v4 = OUTLINED_FUNCTION_3(v3);
  v21 = v5;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  v9 = &v17 - v8;
  v10 = *v1;
  v11 = v1[1];
  v12 = *(v1 + 8);
  v13 = v1[4];
  v18 = v1[3];
  v19 = v13;
  v26 = *(v1 + 10);
  HIDWORD(v17) = *(v1 + 44);
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220C979B0();

  sub_220CA1254();
  v22 = v10;
  v23 = v11;
  LOWORD(v24) = v12;
  v27 = 0;
  sub_220C04820();
  v15 = v20;
  sub_220CA1104();

  if (!v15)
  {
    v22 = v18;
    v23 = v19;
    v24 = v26;
    v25 = BYTE4(v17);
    v27 = 1;
    sub_220BFF788();

    sub_220CA1104();
  }

  return (*(v21 + 8))(v9, v3);
}

unint64_t sub_220C979B0()
{
  result = qword_27CF7DA60;
  if (!qword_27CF7DA60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7DA60);
  }

  return result;
}

uint64_t ViewEvent.Model.init(from:)@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7DA68, &qword_220CB3208);
  v6 = OUTLINED_FUNCTION_3(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220C979B0();
  sub_220CA1234();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  sub_220C0449C();
  OUTLINED_FUNCTION_3_18();
  v10 = *(&v24 + 1);
  v21 = v24;
  v11 = v25;
  v34 = HIBYTE(v25);
  v36 = 1;
  sub_220BFF730();
  OUTLINED_FUNCTION_3_18();
  v12 = OUTLINED_FUNCTION_0_3();
  v13(v12);
  v19 = v31;
  v20 = v30;
  v14 = v32;
  v15 = v33;
  v35 = v33;
  v22 = v24;
  *v23 = v25;
  v16 = HIBYTE(v25);
  *&v23[8] = v30;
  *&v23[16] = v31;
  *&v23[24] = v32;
  v23[28] = v33;
  v17 = *v23;
  *a2 = v24;
  a2[1] = v17;
  *(a2 + 29) = *&v23[13];
  sub_220C97C48(&v22, &v24);
  __swift_destroy_boxed_opaque_existential_1(a1);
  *&v24 = v21;
  *(&v24 + 1) = v10;
  LOBYTE(v25) = v11;
  HIBYTE(v25) = v16;
  v26 = v20;
  v27 = v19;
  v28 = v14;
  v29 = v15;
  return sub_220C97C80(&v24);
}

void sub_220C97D18()
{
  sub_220C97E0C(319, &qword_2812D0DB8, sub_220C0449C, sub_220C04820);
  if (v0 <= 0x3F)
  {
    sub_220C97E0C(319, &qword_2812D0E18, sub_220BFF730, sub_220BFF788);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_220C97E0C(uint64_t a1, unint64_t *a2, void (*a3)(void), void (*a4)(void))
{
  if (!*a2)
  {
    a3();
    a4();
    v6 = sub_220CA0044();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

__n128 __swift_memcpy45_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 29) = *(a2 + 29);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_220C97E9C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 45))
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

uint64_t sub_220C97EDC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 44) = 0;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 45) = 1;
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

    *(result + 45) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ViewEvent.Model.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_220C9801C()
{
  result = qword_27CF7DA80;
  if (!qword_27CF7DA80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7DA80);
  }

  return result;
}

unint64_t sub_220C98074()
{
  result = qword_27CF7DA88;
  if (!qword_27CF7DA88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7DA88);
  }

  return result;
}

unint64_t sub_220C980CC()
{
  result = qword_27CF7DA90;
  if (!qword_27CF7DA90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7DA90);
  }

  return result;
}

uint64_t sub_220C98160(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x7461446863746566 && a2 == 0xE900000000000065)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_220CA1154();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_220C98200@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_220C98160(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_220C9822C(uint64_t a1)
{
  v2 = sub_220C983CC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_220C98268(uint64_t a1)
{
  v2 = sub_220C983CC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ForecastAgeData.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7DA98, &qword_220CB3440);
  v5 = OUTLINED_FUNCTION_0(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  v11 = &v15 - v10;
  v12 = *v1;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220C983CC();
  sub_220CA1254();
  sub_220CA1114();
  return (*(v7 + 8))(v11, v2);
}

unint64_t sub_220C983CC()
{
  result = qword_27CF7DAA0;
  if (!qword_27CF7DAA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7DAA0);
  }

  return result;
}

uint64_t ForecastAgeData.init(from:)@<X0>(uint64_t *a1@<X0>, _DWORD *a2@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7DAA8, &qword_220CB3448);
  v7 = OUTLINED_FUNCTION_0(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v7);
  v13 = &v17 - v12;
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220C983CC();
  sub_220CA1234();
  if (!v2)
  {
    v15 = sub_220CA1044();
    (*(v9 + 8))(v13, v3);
    *a2 = v15;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

_BYTE *storeEnumTagSinglePayload for ForecastAgeData.CodingKeys(_BYTE *result, int a2, int a3)
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

unint64_t sub_220C9865C()
{
  result = qword_27CF7DAB0;
  if (!qword_27CF7DAB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7DAB0);
  }

  return result;
}

unint64_t sub_220C986B4()
{
  result = qword_27CF7DAB8;
  if (!qword_27CF7DAB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7DAB8);
  }

  return result;
}

unint64_t sub_220C9870C()
{
  result = qword_27CF7DAC0;
  if (!qword_27CF7DAC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7DAC0);
  }

  return result;
}

uint64_t sub_220C98828()
{
  v0 = sub_220CA0254();
  __swift_allocate_value_buffer(v0, qword_27CF7DAF8);
  __swift_project_value_buffer(v0, qword_27CF7DAF8);
  return sub_220CA0244();
}

uint64_t ComponentEngagementEvent.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B5F0, &unk_220CA1E90);
  v4 = OUTLINED_FUNCTION_1(v3);
  v6 = *(v5 + 16);

  return v6(a1, v1, v4);
}

uint64_t ComponentEngagementEvent.eventData.setter(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B5F0, &unk_220CA1E90);
  v4 = OUTLINED_FUNCTION_1(v3);
  v6 = *(v5 + 40);

  return v6(v1, a1, v4);
}

uint64_t ComponentEngagementEvent.timedData.getter()
{
  v0 = OUTLINED_FUNCTION_6();
  v1 = *(type metadata accessor for ComponentEngagementEvent(v0) + 20);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B610, &qword_220CA1EB0);
  OUTLINED_FUNCTION_1(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_2();

  return v6(v5);
}

uint64_t ComponentEngagementEvent.timedData.setter()
{
  v0 = *(OUTLINED_FUNCTION_13_9() + 20);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B610, &qword_220CA1EB0);
  OUTLINED_FUNCTION_0_0(v1);
  v3 = *(v2 + 40);
  v4 = OUTLINED_FUNCTION_14_0();

  return v5(v4);
}

uint64_t ComponentEngagementEvent.orientationData.getter()
{
  v0 = OUTLINED_FUNCTION_6();
  v1 = *(type metadata accessor for ComponentEngagementEvent(v0) + 24);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B5F8, &unk_220CA3990);
  OUTLINED_FUNCTION_1(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_2();

  return v6(v5);
}

uint64_t ComponentEngagementEvent.orientationData.setter()
{
  v0 = *(OUTLINED_FUNCTION_13_9() + 24);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B5F8, &unk_220CA3990);
  OUTLINED_FUNCTION_0_0(v1);
  v3 = *(v2 + 40);
  v4 = OUTLINED_FUNCTION_14_0();

  return v5(v4);
}

uint64_t ComponentEngagementEvent.locationData.getter()
{
  v0 = OUTLINED_FUNCTION_6();
  v1 = *(type metadata accessor for ComponentEngagementEvent(v0) + 28);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B9A0, &qword_220CA3C20);
  OUTLINED_FUNCTION_1(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_2();

  return v6(v5);
}

uint64_t ComponentEngagementEvent.locationData.setter()
{
  v0 = *(OUTLINED_FUNCTION_13_9() + 28);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B9A0, &qword_220CA3C20);
  OUTLINED_FUNCTION_0_0(v1);
  v3 = *(v2 + 40);
  v4 = OUTLINED_FUNCTION_14_0();

  return v5(v4);
}

uint64_t ComponentEngagementEvent.hostViewData.getter()
{
  v0 = OUTLINED_FUNCTION_6();
  v1 = *(type metadata accessor for ComponentEngagementEvent(v0) + 32);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B8E8, &unk_220CA3700);
  OUTLINED_FUNCTION_1(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_2();

  return v6(v5);
}

uint64_t ComponentEngagementEvent.hostViewData.setter()
{
  v0 = *(OUTLINED_FUNCTION_13_9() + 32);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B8E8, &unk_220CA3700);
  OUTLINED_FUNCTION_0_0(v1);
  v3 = *(v2 + 40);
  v4 = OUTLINED_FUNCTION_14_0();

  return v5(v4);
}

uint64_t ComponentEngagementEvent.privateUserData.getter()
{
  v0 = OUTLINED_FUNCTION_6();
  v1 = *(type metadata accessor for ComponentEngagementEvent(v0) + 36);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B7F0, &qword_220CA3150);
  OUTLINED_FUNCTION_1(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_2();

  return v6(v5);
}

uint64_t ComponentEngagementEvent.privateUserData.setter()
{
  v0 = *(OUTLINED_FUNCTION_13_9() + 36);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B7F0, &qword_220CA3150);
  OUTLINED_FUNCTION_0_0(v1);
  v3 = *(v2 + 40);
  v4 = OUTLINED_FUNCTION_14_0();

  return v5(v4);
}

uint64_t ComponentEngagementEvent.componentData.getter()
{
  v0 = OUTLINED_FUNCTION_6();
  v1 = *(type metadata accessor for ComponentEngagementEvent(v0) + 40);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B9A8, &qword_220CA39A0);
  OUTLINED_FUNCTION_1(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_2();

  return v6(v5);
}

uint64_t ComponentEngagementEvent.componentData.setter()
{
  v0 = *(OUTLINED_FUNCTION_13_9() + 40);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B9A8, &qword_220CA39A0);
  OUTLINED_FUNCTION_0_0(v1);
  v3 = *(v2 + 40);
  v4 = OUTLINED_FUNCTION_14_0();

  return v5(v4);
}

uint64_t ComponentEngagementEvent.componentPositionData.getter()
{
  v0 = OUTLINED_FUNCTION_6();
  v1 = *(type metadata accessor for ComponentEngagementEvent(v0) + 44);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B9B0, &qword_220CA39A8);
  OUTLINED_FUNCTION_1(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_2();

  return v6(v5);
}

uint64_t ComponentEngagementEvent.componentPositionData.setter()
{
  v0 = *(OUTLINED_FUNCTION_13_9() + 44);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B9B0, &qword_220CA39A8);
  OUTLINED_FUNCTION_0_0(v1);
  v3 = *(v2 + 40);
  v4 = OUTLINED_FUNCTION_14_0();

  return v5(v4);
}

uint64_t ComponentEngagementEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B5F0, &unk_220CA1E90);
  OUTLINED_FUNCTION_0_0(v3);
  (*(v4 + 104))(a1, v2);
  v5 = type metadata accessor for ComponentEngagementEvent(0);
  v6 = v5[5];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B610, &qword_220CA1EB0);
  OUTLINED_FUNCTION_0_0(v7);
  v9 = *(v8 + 104);
  v10 = OUTLINED_FUNCTION_16_0();
  v11(v10);
  v12 = v5[6];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B5F8, &unk_220CA3990);
  OUTLINED_FUNCTION_0_0(v13);
  v15 = *(v14 + 104);
  v16 = OUTLINED_FUNCTION_16_0();
  v17(v16);
  v18 = v5[7];
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B9A0, &qword_220CA3C20);
  OUTLINED_FUNCTION_0_0(v19);
  v21 = *(v20 + 104);
  v22 = OUTLINED_FUNCTION_16_0();
  v23(v22);
  v24 = v5[8];
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B8E8, &unk_220CA3700);
  OUTLINED_FUNCTION_0_0(v25);
  v27 = *(v26 + 104);
  v28 = OUTLINED_FUNCTION_16_0();
  v29(v28);
  v30 = v5[9];
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B7F0, &qword_220CA3150);
  OUTLINED_FUNCTION_0_0(v31);
  v33 = *(v32 + 104);
  v34 = OUTLINED_FUNCTION_16_0();
  v35(v34);
  v36 = v5[10];
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B9A8, &qword_220CA39A0);
  OUTLINED_FUNCTION_0_0(v37);
  v39 = *(v38 + 104);
  v40 = OUTLINED_FUNCTION_16_0();
  v41(v40);
  v42 = v5[11];
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B9B0, &qword_220CA39A8);
  OUTLINED_FUNCTION_0_0(v43);
  v45 = *(v44 + 104);

  return v45(a1 + v42, v2);
}

uint64_t ComponentEngagementEvent.Model.eventData.getter()
{
  OUTLINED_FUNCTION_6();
  v2 = sub_220CA0494();
  v3 = OUTLINED_FUNCTION_1(v2);
  v5 = *(v4 + 16);

  return v5(v0, v1, v3);
}

uint64_t ComponentEngagementEvent.Model.timedData.getter()
{
  v0 = OUTLINED_FUNCTION_6();
  v1 = *(type metadata accessor for ComponentEngagementEvent.Model(v0) + 20);
  v2 = sub_220CA04D4();
  OUTLINED_FUNCTION_1(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_2();

  return v6(v5);
}

uint64_t ComponentEngagementEvent.Model.orientationData.getter()
{
  v2 = OUTLINED_FUNCTION_6();
  result = type metadata accessor for ComponentEngagementEvent.Model(v2);
  *v0 = *(v1 + *(result + 24));
  return result;
}

__n128 ComponentEngagementEvent.Model.locationData.getter()
{
  v2 = OUTLINED_FUNCTION_6();
  result = *(v1 + *(type metadata accessor for ComponentEngagementEvent.Model(v2) + 28));
  *v0 = result;
  return result;
}

uint64_t ComponentEngagementEvent.Model.hostViewData.getter()
{
  v2 = OUTLINED_FUNCTION_6();
  v3 = (v1 + *(type metadata accessor for ComponentEngagementEvent.Model(v2) + 32));
  v5 = *v3;
  v4 = v3[1];
  LOWORD(v3) = *(v3 + 8);
  *v0 = v5;
  *(v0 + 8) = v4;
  *(v0 + 16) = v3;
}

uint64_t ComponentEngagementEvent.Model.privateUserData.getter()
{
  v2 = OUTLINED_FUNCTION_6();
  v3 = (v1 + *(type metadata accessor for ComponentEngagementEvent.Model(v2) + 36));
  v5 = *v3;
  v4 = v3[1];
  v6 = *(v3 + 4);
  LOBYTE(v3) = *(v3 + 20);
  *v0 = v5;
  *(v0 + 8) = v4;
  *(v0 + 16) = v6;
  *(v0 + 20) = v3;
}

uint64_t ComponentEngagementEvent.Model.componentData.getter()
{
  v2 = OUTLINED_FUNCTION_6();
  result = type metadata accessor for ComponentEngagementEvent.Model(v2);
  *v0 = *(v1 + *(result + 40));
  return result;
}

double ComponentEngagementEvent.Model.componentPositionData.getter()
{
  v2 = OUTLINED_FUNCTION_6();
  result = *(v1 + *(type metadata accessor for ComponentEngagementEvent.Model(v2) + 44));
  *v0 = result;
  return result;
}

uint64_t ComponentEngagementEvent.Model.init(eventData:timedData:orientationData:locationData:hostViewData:privateUserData:componentData:componentPositionData:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int16 *a3@<X2>, uint64_t *a4@<X3>, uint64_t *a5@<X4>, uint64_t *a6@<X5>, char *a7@<X6>, uint64_t *a8@<X7>, uint64_t a9@<X8>)
{
  v13 = *a3;
  v14 = *a4;
  v15 = a4[1];
  v16 = *a5;
  v17 = a5[1];
  v18 = *(a5 + 8);
  v32 = a6[1];
  v33 = *a6;
  v19 = *(a6 + 4);
  v20 = *(a6 + 20);
  v34 = *a7;
  v21 = sub_220CA0494();
  OUTLINED_FUNCTION_0_0(v21);
  v23 = *a8;
  (*(v22 + 32))(a9, a1);
  v24 = type metadata accessor for ComponentEngagementEvent.Model(0);
  v25 = v24[5];
  v26 = sub_220CA04D4();
  OUTLINED_FUNCTION_0_0(v26);
  result = (*(v27 + 32))(a9 + v25, a2);
  *(a9 + v24[6]) = v13;
  v29 = (a9 + v24[7]);
  *v29 = v14;
  v29[1] = v15;
  v30 = a9 + v24[8];
  *v30 = v16;
  *(v30 + 8) = v17;
  *(v30 + 16) = v18;
  v31 = a9 + v24[9];
  *v31 = v33;
  *(v31 + 8) = v32;
  *(v31 + 16) = v19;
  *(v31 + 20) = v20;
  *(a9 + v24[10]) = v34;
  *(a9 + v24[11]) = v23;
  return result;
}

uint64_t sub_220C99768(char a1)
{
  result = 0x746144746E657665;
  switch(a1)
  {
    case 1:
      v3 = 0x4464656D6974;
      goto LABEL_5;
    case 2:
      v3 = 0x746E6569726FLL;
LABEL_5:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x7461000000000000;
      break;
    case 3:
      result = 0x6E6F697461636F6CLL;
      break;
    case 4:
      result = 0x7765695674736F68;
      break;
    case 5:
      result = 0x5565746176697270;
      break;
    case 6:
      result = 0x6E656E6F706D6F63;
      break;
    case 7:
      result = 0xD000000000000015;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_220C9987C(uint64_t a1)
{
  v2 = sub_220C99C48();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_220C998B8(uint64_t a1)
{
  v2 = sub_220C99C48();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ComponentEngagementEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7DB10, &qword_220CB3650);
  v6 = OUTLINED_FUNCTION_3(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  v12 = &v30 - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220C99C48();
  sub_220CA1254();
  LOBYTE(v30) = 0;
  sub_220CA0494();
  OUTLINED_FUNCTION_7();
  sub_220C04F84(v14, v15);
  OUTLINED_FUNCTION_17();
  if (!v2)
  {
    v16 = type metadata accessor for ComponentEngagementEvent.Model(0);
    v17 = v16[5];
    LOBYTE(v30) = 1;
    sub_220CA04D4();
    OUTLINED_FUNCTION_5_0();
    sub_220C04F84(v18, v19);
    OUTLINED_FUNCTION_17();
    LOWORD(v30) = *(v3 + v16[6]);
    v33 = 2;
    sub_220BFE5BC();
    OUTLINED_FUNCTION_4_4();
    OUTLINED_FUNCTION_17();
    v30 = *(v3 + v16[7]);
    v33 = 3;
    sub_220C05568();
    OUTLINED_FUNCTION_4_4();
    OUTLINED_FUNCTION_17();
    v20 = (v3 + v16[8]);
    v21 = *v20;
    v22 = v20[1];
    LOWORD(v20) = *(v20 + 8);
    *&v30 = v21;
    *(&v30 + 1) = v22;
    LOWORD(v31) = v20;
    v33 = 4;
    v23 = sub_220C04820();

    OUTLINED_FUNCTION_4_4();
    OUTLINED_FUNCTION_17();
    if (v23)
    {
    }

    else
    {

      v24 = (v3 + v16[9]);
      v25 = *v24;
      v26 = v24[1];
      v27 = *(v24 + 4);
      LOBYTE(v24) = *(v24 + 20);
      *&v30 = v25;
      *(&v30 + 1) = v26;
      v31 = v27;
      v32 = v24;
      v33 = 5;
      v28 = sub_220BFF788();

      OUTLINED_FUNCTION_4_4();
      OUTLINED_FUNCTION_17();

      if (!v28)
      {
        LOBYTE(v30) = *(v3 + v16[10]);
        v33 = 6;
        sub_220C222D8();
        OUTLINED_FUNCTION_4_4();
        OUTLINED_FUNCTION_17();
        *&v30 = *(v3 + v16[11]);
        v33 = 7;
        sub_220C2232C();
        OUTLINED_FUNCTION_4_4();
        OUTLINED_FUNCTION_17();
      }
    }
  }

  return (*(v8 + 8))(v12, v5);
}

unint64_t sub_220C99C48()
{
  result = qword_27CF7DB18;
  if (!qword_27CF7DB18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7DB18);
  }

  return result;
}

uint64_t ComponentEngagementEvent.Model.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v52 = a2;
  v3 = sub_220CA04D4();
  v4 = OUTLINED_FUNCTION_3(v3);
  v55 = v5;
  v56 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_11();
  v10 = v9 - v8;
  v11 = sub_220CA0494();
  v12 = OUTLINED_FUNCTION_3(v11);
  v57 = v13;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_11();
  v18 = v17 - v16;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7DB20, &qword_220CB3658);
  v19 = OUTLINED_FUNCTION_3(v53);
  v21 = v20;
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v19);
  v25 = &v51 - v24;
  v58 = type metadata accessor for ComponentEngagementEvent.Model(0);
  v26 = OUTLINED_FUNCTION_1(v58);
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_11();
  v31 = v30 - v29;
  v33 = a1[3];
  v32 = a1[4];
  v60 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v33);
  sub_220C99C48();
  v54 = v25;
  v34 = v59;
  sub_220CA1234();
  if (v34)
  {
    return __swift_destroy_boxed_opaque_existential_1(v60);
  }

  v59 = v21;
  LOBYTE(v61) = 0;
  OUTLINED_FUNCTION_7();
  sub_220C04F84(v35, v36);
  sub_220CA1034();
  (*(v57 + 32))(v31, v18);
  LOBYTE(v61) = 1;
  OUTLINED_FUNCTION_5_0();
  sub_220C04F84(v37, v38);
  v39 = v56;
  sub_220CA1034();
  v40 = v58;
  (*(v55 + 32))(v31 + v58[5], v10, v39);
  v64 = 2;
  sub_220BFE564();
  OUTLINED_FUNCTION_2_1();
  sub_220CA1034();
  *(v31 + v40[6]) = v61;
  v64 = 3;
  sub_220C05514();
  OUTLINED_FUNCTION_2_1();
  sub_220CA1034();
  *(v31 + v40[7]) = v61;
  v64 = 4;
  sub_220C0449C();
  OUTLINED_FUNCTION_2_1();
  sub_220CA1034();
  v41 = *(&v61 + 1);
  v42 = v62;
  v43 = v31 + v40[8];
  *v43 = v61;
  *(v43 + 8) = v41;
  *(v43 + 16) = v42;
  v64 = 5;
  sub_220BFF730();
  OUTLINED_FUNCTION_2_1();
  sub_220CA1034();
  v44 = *(&v61 + 1);
  v45 = v62;
  v46 = v63;
  v47 = v31 + v40[9];
  *v47 = v61;
  *(v47 + 8) = v44;
  *(v47 + 16) = v45;
  *(v47 + 20) = v46;
  v64 = 6;
  sub_220C22978();
  OUTLINED_FUNCTION_2_1();
  sub_220CA1034();
  *(v31 + v40[10]) = v61;
  v64 = 7;
  sub_220C229CC();
  OUTLINED_FUNCTION_2_1();
  sub_220CA1034();
  v48 = OUTLINED_FUNCTION_15_2();
  v49(v48);
  *(v31 + v40[11]) = v61;
  sub_220C9A294(v31, v52);
  __swift_destroy_boxed_opaque_existential_1(v60);
  return sub_220C9A2F8(v31);
}

uint64_t sub_220C9A294(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ComponentEngagementEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_220C9A2F8(uint64_t a1)
{
  v2 = type metadata accessor for ComponentEngagementEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

_BYTE *storeEnumTagSinglePayload for ComponentEngagementEvent.Model.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_220C9A4C4()
{
  result = qword_27CF7DB48;
  if (!qword_27CF7DB48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7DB48);
  }

  return result;
}

unint64_t sub_220C9A51C()
{
  result = qword_27CF7DB50;
  if (!qword_27CF7DB50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7DB50);
  }

  return result;
}

unint64_t sub_220C9A574()
{
  result = qword_27CF7DB58;
  if (!qword_27CF7DB58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7DB58);
  }

  return result;
}

uint64_t URLData.url.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t URLData.url.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t sub_220C9A6A0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 7107189 && a2 == 0xE300000000000000;
  if (v3 || (sub_220CA1154() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x657079546B6E696CLL && a2 == 0xE800000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_220CA1154();

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

uint64_t sub_220C9A768(char a1)
{
  if (a1)
  {
    return 0x657079546B6E696CLL;
  }

  else
  {
    return 7107189;
  }
}

uint64_t sub_220C9A7A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_220C9A6A0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_220C9A7C8(uint64_t a1)
{
  v2 = sub_220C9A9C8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_220C9A804(uint64_t a1)
{
  v2 = sub_220C9A9C8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t URLData.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7DB60, &qword_220CB38D0);
  v5 = OUTLINED_FUNCTION_3(v4);
  v16 = v6;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v15 - v9;
  v11 = *v1;
  v12 = v1[1];
  v17 = *(v1 + 16);
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220C9A9C8();
  sub_220CA1254();
  v20 = 0;
  sub_220CA10C4();
  if (!v2)
  {
    v19 = v17;
    v18 = 1;
    sub_220C9AA1C();
    sub_220CA1104();
  }

  return (*(v16 + 8))(v10, v4);
}

unint64_t sub_220C9A9C8()
{
  result = qword_27CF7DB68;
  if (!qword_27CF7DB68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7DB68);
  }

  return result;
}

unint64_t sub_220C9AA1C()
{
  result = qword_27CF7DB70;
  if (!qword_27CF7DB70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7DB70);
  }

  return result;
}

uint64_t URLData.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7DB78, &qword_220CB38D8);
  v6 = OUTLINED_FUNCTION_3(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220C9A9C8();
  sub_220CA1234();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v10 = sub_220CA0FF4();
  v12 = v11;
  sub_220C9AC40();
  sub_220CA1034();
  v13 = OUTLINED_FUNCTION_0_3();
  v14(v13);
  *a2 = v10;
  *(a2 + 8) = v12;
  *(a2 + 16) = v16;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_220C9AC40()
{
  result = qword_27CF7DB80;
  if (!qword_27CF7DB80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7DB80);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for URLData.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_220C9ADBC()
{
  result = qword_27CF7DB88;
  if (!qword_27CF7DB88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7DB88);
  }

  return result;
}

unint64_t sub_220C9AE14()
{
  result = qword_27CF7DB90;
  if (!qword_27CF7DB90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7DB90);
  }

  return result;
}

unint64_t sub_220C9AE6C()
{
  result = qword_27CF7DB98;
  if (!qword_27CF7DB98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7DB98);
  }

  return result;
}

WeatherAnalytics::EndReason_optional __swiftcall EndReason.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_220CA0F84();

  v5 = 5;
  if (v3 < 5)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t EndReason.rawValue.getter()
{
  result = 0x6E776F6E6B6E75;
  switch(*v0)
  {
    case 1:
      result = 0x676B636142707061;
      break;
    case 2:
      result = 0x6975516563726F66;
      break;
    case 3:
      result = 0x6873617263;
      break;
    case 4:
      result = 0x6465726961706572;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_220C9AFC0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = *a1;
  return sub_220C3A1CC();
}

unint64_t sub_220C9AFD0()
{
  result = qword_27CF7DBA0;
  if (!qword_27CF7DBA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7DBA0);
  }

  return result;
}

uint64_t sub_220C9B048@<X0>(uint64_t *a1@<X8>)
{
  result = EndReason.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

_BYTE *storeEnumTagSinglePayload for EndReason(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_220C9B1EC()
{
  result = qword_2812CE7D8;
  if (!qword_2812CE7D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812CE7D8);
  }

  return result;
}

WeatherAnalytics::MapOverlay_optional __swiftcall MapOverlay.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_220CA0F84();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t MapOverlay.rawValue.getter()
{
  result = 0x7469706963657270;
  switch(*v0)
  {
    case 1:
      result = 0x74617265706D6574;
      break;
    case 2:
      result = 0x696C617551726961;
      break;
    case 3:
      result = 1684957559;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_220C9B33C()
{
  result = qword_27CF7DBA8;
  if (!qword_27CF7DBA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7DBA8);
  }

  return result;
}

uint64_t sub_220C9B3B4@<X0>(uint64_t *a1@<X8>)
{
  result = MapOverlay.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

_BYTE *storeEnumTagSinglePayload for MapOverlay(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_220C9B568()
{
  result = qword_27CF7DBB0;
  if (!qword_27CF7DBB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7DBB0);
  }

  return result;
}

uint64_t LocationViewLoadErrorData.errorDescriptions.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t LocationViewLoadErrorData.errorDescriptions.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

WeatherAnalytics::LocationViewLoadErrorData __swiftcall LocationViewLoadErrorData.init(errorDescriptions:missingCurrent:missingDaily:missingHourly:insufficientDays:insufficientHours:unexpectedDateFormat:missingResponse:failedToCreateResponseModel:invalidAuthorization:responseFailed:invalidJWTResponse:invalidBundleIdentifier:failedToGenerateSigningRequestData:invalidServerResponseForJWTToken:)(WeatherAnalytics::LocationViewLoadErrorData errorDescriptions, Swift::Bool missingCurrent, Swift::Bool missingDaily, Swift::Bool missingHourly, Swift::Bool insufficientDays, Swift::Bool insufficientHours, Swift::Bool unexpectedDateFormat, Swift::Bool missingResponse, Swift::Bool failedToCreateResponseModel, Swift::Bool invalidAuthorization, Swift::Bool responseFailed, Swift::Bool invalidJWTResponse, Swift::Bool invalidBundleIdentifier, Swift::Bool failedToGenerateSigningRequestData, Swift::Bool invalidServerResponseForJWTToken)
{
  *v15 = errorDescriptions.errorDescriptions;
  *(v15 + 16) = missingCurrent;
  *(v15 + 17) = missingDaily;
  *(v15 + 18) = missingHourly;
  *(v15 + 19) = insufficientDays;
  *(v15 + 20) = insufficientHours;
  *(v15 + 21) = unexpectedDateFormat;
  *(v15 + 22) = missingResponse;
  *(v15 + 23) = failedToCreateResponseModel;
  *(v15 + 24) = invalidAuthorization;
  *(v15 + 25) = responseFailed;
  *(v15 + 26) = invalidJWTResponse;
  *(v15 + 27) = invalidBundleIdentifier;
  *(v15 + 28) = failedToGenerateSigningRequestData;
  *(v15 + 29) = invalidServerResponseForJWTToken;
  errorDescriptions.invalidAuthorization = missingDaily;
  errorDescriptions.missingCurrent = missingCurrent;
  return errorDescriptions;
}

uint64_t sub_220C9B94C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000011 && 0x8000000220CB5010 == a2;
  if (v3 || (sub_220CA1154() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x43676E697373696DLL && a2 == 0xEE00746E65727275;
    if (v6 || (sub_220CA1154() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x44676E697373696DLL && a2 == 0xEC000000796C6961;
      if (v7 || (sub_220CA1154() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x48676E697373696DLL && a2 == 0xED0000796C72756FLL;
        if (v8 || (sub_220CA1154() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0xD000000000000010 && 0x8000000220CB6820 == a2;
          if (v9 || (sub_220CA1154() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0xD000000000000011 && 0x8000000220CB6840 == a2;
            if (v10 || (sub_220CA1154() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0xD000000000000014 && 0x8000000220CB6860 == a2;
              if (v11 || (sub_220CA1154() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x52676E697373696DLL && a2 == 0xEF65736E6F707365;
                if (v12 || (sub_220CA1154() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0xD00000000000001BLL && 0x8000000220CB6880 == a2;
                  if (v13 || (sub_220CA1154() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0xD000000000000014 && 0x8000000220CB68A0 == a2;
                    if (v14 || (sub_220CA1154() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v15 = a1 == 0x65736E6F70736572 && a2 == 0xEE0064656C696146;
                      if (v15 || (sub_220CA1154() & 1) != 0)
                      {

                        return 10;
                      }

                      else
                      {
                        v16 = a1 == 0xD000000000000012 && 0x8000000220CB68C0 == a2;
                        if (v16 || (sub_220CA1154() & 1) != 0)
                        {

                          return 11;
                        }

                        else
                        {
                          v17 = a1 == 0xD000000000000017 && 0x8000000220CB68E0 == a2;
                          if (v17 || (sub_220CA1154() & 1) != 0)
                          {

                            return 12;
                          }

                          else
                          {
                            v18 = a1 == 0xD000000000000022 && 0x8000000220CB6900 == a2;
                            if (v18 || (sub_220CA1154() & 1) != 0)
                            {

                              return 13;
                            }

                            else if (a1 == 0xD000000000000020 && 0x8000000220CB6930 == a2)
                            {

                              return 14;
                            }

                            else
                            {
                              v20 = sub_220CA1154();

                              if (v20)
                              {
                                return 14;
                              }

                              else
                              {
                                return 15;
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

unint64_t sub_220C9BDE8(char a1)
{
  result = 0x43676E697373696DLL;
  switch(a1)
  {
    case 1:
      return result;
    case 2:
      result = 0x44676E697373696DLL;
      break;
    case 3:
      result = 0x48676E697373696DLL;
      break;
    case 4:
      result = 0xD000000000000010;
      break;
    case 5:
      result = 0xD000000000000011;
      break;
    case 6:
    case 9:
      result = 0xD000000000000014;
      break;
    case 7:
      result = 0x52676E697373696DLL;
      break;
    case 8:
      result = 0xD00000000000001BLL;
      break;
    case 10:
      result = 0x65736E6F70736572;
      break;
    case 11:
      result = 0xD000000000000012;
      break;
    case 12:
      result = 0xD000000000000017;
      break;
    case 13:
      result = 0xD000000000000022;
      break;
    case 14:
      result = 0xD000000000000020;
      break;
    default:
      result = 0xD000000000000011;
      break;
  }

  return result;
}

uint64_t sub_220C9BFE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_220C9B94C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_220C9C00C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_220C9BDE0();
  *a1 = result;
  return result;
}

uint64_t sub_220C9C034(uint64_t a1)
{
  v2 = sub_220C9C41C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_220C9C070(uint64_t a1)
{
  v2 = sub_220C9C41C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t LocationViewLoadErrorData.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7DBB8, &qword_220CB3D20);
  v4 = OUTLINED_FUNCTION_3(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  v10 = v23 - v9;
  v11 = *v1;
  v12 = v1[1];
  v13 = *(v1 + 16);
  v23[14] = *(v1 + 17);
  v23[15] = v13;
  v14 = *(v1 + 18);
  v23[12] = *(v1 + 19);
  v23[13] = v14;
  v15 = *(v1 + 20);
  v23[10] = *(v1 + 21);
  v23[11] = v15;
  v16 = *(v1 + 22);
  v23[8] = *(v1 + 23);
  v23[9] = v16;
  v17 = *(v1 + 24);
  v23[6] = *(v1 + 25);
  v23[7] = v17;
  v18 = *(v1 + 26);
  v23[4] = *(v1 + 27);
  v23[5] = v18;
  v19 = *(v1 + 28);
  v23[2] = *(v1 + 29);
  v23[3] = v19;
  v20 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220C9C41C();
  sub_220CA1254();
  v39 = 0;
  v21 = v24;
  sub_220CA10C4();
  if (v21)
  {
    return (*(v6 + 8))(v10, v3);
  }

  v24 = v6;
  v38 = 1;
  OUTLINED_FUNCTION_1_31();
  v37 = 2;
  OUTLINED_FUNCTION_1_31();
  v36 = 3;
  OUTLINED_FUNCTION_1_31();
  v35 = 4;
  OUTLINED_FUNCTION_1_31();
  v34 = 5;
  OUTLINED_FUNCTION_1_31();
  v33 = 6;
  OUTLINED_FUNCTION_1_31();
  v32 = 7;
  OUTLINED_FUNCTION_1_31();
  v31 = 8;
  OUTLINED_FUNCTION_1_31();
  v30 = 9;
  OUTLINED_FUNCTION_1_31();
  v29 = 10;
  sub_220CA10D4();
  v28 = 11;
  OUTLINED_FUNCTION_3_22();
  v27 = 12;
  OUTLINED_FUNCTION_3_22();
  v26 = 13;
  OUTLINED_FUNCTION_3_22();
  v25 = 14;
  OUTLINED_FUNCTION_3_22();
  return (*(v24 + 8))(v10, v3);
}

unint64_t sub_220C9C41C()
{
  result = qword_27CF7DBC0;
  if (!qword_27CF7DBC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7DBC0);
  }

  return result;
}

uint64_t LocationViewLoadErrorData.init(from:)@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7DBC8, &qword_220CB3D28);
  v6 = OUTLINED_FUNCTION_3(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220C9C41C();
  sub_220CA1234();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  OUTLINED_FUNCTION_0_30();
  v10 = sub_220CA0FF4();
  v12 = v11;
  OUTLINED_FUNCTION_0_30();
  v46 = sub_220CA1004();
  OUTLINED_FUNCTION_0_30();
  v29 = sub_220CA1004();
  OUTLINED_FUNCTION_0_30();
  v28 = sub_220CA1004();
  OUTLINED_FUNCTION_0_30();
  v27 = sub_220CA1004();
  OUTLINED_FUNCTION_0_30();
  v26 = sub_220CA1004();
  OUTLINED_FUNCTION_0_30();
  v25 = sub_220CA1004();
  OUTLINED_FUNCTION_0_30();
  v24 = sub_220CA1004();
  OUTLINED_FUNCTION_0_30();
  v23 = sub_220CA1004();
  OUTLINED_FUNCTION_0_30();
  v22 = sub_220CA1004();
  OUTLINED_FUNCTION_0_30();
  v21 = sub_220CA1004();
  OUTLINED_FUNCTION_0_30();
  v20 = sub_220CA1004();
  OUTLINED_FUNCTION_0_30();
  v19 = sub_220CA1004();
  LOBYTE(v31[0]) = 13;
  OUTLINED_FUNCTION_0_30();
  v18 = sub_220CA1004();
  v47 = 14;
  v17 = sub_220CA1004();
  v16 = v46 & 1;
  v46 = v26 & 1;
  v13 = OUTLINED_FUNCTION_0_3();
  v14(v13);
  *v30 = v10;
  *&v30[8] = v12;
  v30[16] = v16;
  v30[17] = v29 & 1;
  v30[18] = v28 & 1;
  v30[19] = v27 & 1;
  v30[20] = v46;
  v30[21] = v25 & 1;
  v30[22] = v24 & 1;
  v30[23] = v23 & 1;
  v30[24] = v22 & 1;
  v30[25] = v21 & 1;
  v30[26] = v20 & 1;
  v30[27] = v19 & 1;
  v30[28] = v18 & 1;
  v30[29] = v17 & 1;
  *a2 = *v30;
  *(a2 + 14) = *&v30[14];
  sub_220C9C908(v30, v31);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v31[0] = v10;
  v31[1] = v12;
  v32 = v16;
  v33 = v29 & 1;
  v34 = v28 & 1;
  v35 = v27 & 1;
  v36 = v46;
  v37 = v25 & 1;
  v38 = v24 & 1;
  v39 = v23 & 1;
  v40 = v22 & 1;
  v41 = v21 & 1;
  v42 = v20 & 1;
  v43 = v19 & 1;
  v44 = v18 & 1;
  v45 = v17 & 1;
  return sub_220C9C940(v31);
}

__n128 __swift_memcpy30_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 14) = *(a2 + 14);
  *a1 = result;
  return result;
}

uint64_t sub_220C9C9BC(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 30))
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

uint64_t sub_220C9C9FC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 28) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 30) = 1;
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

    *(result + 30) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for LocationViewLoadErrorData.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 14 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 14) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF2)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF1)
  {
    v6 = ((a2 - 242) >> 8) + 1;
    *result = a2 + 14;
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
          *result = a2 + 14;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_220C9CB34()
{
  result = qword_27CF7DBD0;
  if (!qword_27CF7DBD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7DBD0);
  }

  return result;
}

unint64_t sub_220C9CB8C()
{
  result = qword_27CF7DBD8;
  if (!qword_27CF7DBD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7DBD8);
  }

  return result;
}

unint64_t sub_220C9CBE4()
{
  result = qword_27CF7DBE0;
  if (!qword_27CF7DBE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7DBE0);
  }

  return result;
}

unsigned __int8 *getEnumTagSinglePayload for Configuration.Enablement(unsigned __int8 *result, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
LABEL_18:
    v6 = *result;
    v7 = v6 >= 2;
    v8 = (v6 + 2147483646) & 0x7FFFFFFF;
    if (!v7)
    {
      v8 = -1;
    }

    if (v8 + 1 >= 2)
    {
      return v8;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v2 = a2 + 2;
    if (a2 + 2 >= 0xFFFF00)
    {
      v3 = 4;
    }

    else
    {
      v3 = 2;
    }

    if (v2 >> 8 < 0xFF)
    {
      v3 = 1;
    }

    if (v2 >= 0x100)
    {
      v4 = v3;
    }

    else
    {
      v4 = 0;
    }

    switch(v4)
    {
      case 1:
        v5 = result[1];
        if (!result[1])
        {
          goto LABEL_18;
        }

        goto LABEL_16;
      case 2:
        v5 = *(result + 1);
        if (!*(result + 1))
        {
          goto LABEL_18;
        }

        goto LABEL_16;
      case 3:
        __break(1u);
        return result;
      case 4:
        v5 = *(result + 1);
        if (!v5)
        {
          goto LABEL_18;
        }

LABEL_16:
        result = ((*result | (v5 << 8)) - 2);
        break;
      default:
        goto LABEL_18;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for Configuration.Enablement(_BYTE *result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 2;
  if (a3 + 2 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 >= 0xFE)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  if (a2 > 0xFD)
  {
    v7 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v6)
    {
      case 1:
        result[1] = v7;
        break;
      case 2:
        *(result + 1) = v7;
        break;
      case 3:
LABEL_25:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v7;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v6)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_20;
      case 2:
        *(result + 1) = 0;
        goto LABEL_19;
      case 3:
        goto LABEL_25;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_20;
      default:
LABEL_19:
        if (a2)
        {
LABEL_20:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_220C9CDD4(unsigned __int8 *a1)
{
  v1 = *a1;
  v2 = v1 >= 2;
  v3 = (v1 + 2147483646) & 0x7FFFFFFF;
  if (v2)
  {
    return (v3 + 1);
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_220C9CDF0(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 1;
  }

  return result;
}

uint64_t sub_220C9D18C(uint64_t a1, void (*a2)(_BYTE *, uint64_t))
{
  sub_220CA11F4();
  a2(v5, a1);
  return sub_220CA1214();
}

uint64_t sub_220C9D1E8()
{
  OUTLINED_FUNCTION_0_31();
  sub_220CA0C54();
}

uint64_t sub_220C9D2C4()
{
  OUTLINED_FUNCTION_0_31();
  switch(v0)
  {
    case 2:
      OUTLINED_FUNCTION_15_10();
      break;
    default:
      break;
  }

  sub_220CA0C54();
}

uint64_t sub_220C9D35C(uint64_t a1, char a2)
{
  if (!a2)
  {
    OUTLINED_FUNCTION_1_32();
  }

  sub_220CA0C54();
}

uint64_t sub_220C9D3D0()
{
  OUTLINED_FUNCTION_3_23();
  switch(v0)
  {
    case 1:
      OUTLINED_FUNCTION_4_19();
      OUTLINED_FUNCTION_12_8();
      break;
    default:
      break;
  }

  sub_220CA0C54();
}

uint64_t sub_220C9D484()
{
  OUTLINED_FUNCTION_0_31();
  switch(v0)
  {
    case 4:
    case 5:
      OUTLINED_FUNCTION_22_2();
      OUTLINED_FUNCTION_4_19();
      break;
    default:
      break;
  }

  sub_220CA0C54();
}

uint64_t sub_220C9D53C()
{
  OUTLINED_FUNCTION_0_31();
  sub_220CA0C54();
}

uint64_t sub_220C9D5D4(uint64_t a1, char a2)
{
  if (!a2)
  {
    OUTLINED_FUNCTION_6_15();
  }

  sub_220CA0C54();
}

uint64_t sub_220C9D658(uint64_t a1, char a2)
{
  v2 = *&aUnknown_26[8 * a2];
  sub_220CA0C54();
}

uint64_t sub_220C9D698()
{
  sub_220CA0C54();
}

uint64_t sub_220C9D768()
{
  OUTLINED_FUNCTION_3_23();
  OUTLINED_FUNCTION_5_15();
  sub_220CA0C54();
}

uint64_t sub_220C9D808(uint64_t a1, char a2)
{
  if (!a2)
  {
    OUTLINED_FUNCTION_21_1();
  }

  sub_220CA0C54();
}

uint64_t sub_220C9D884()
{
  OUTLINED_FUNCTION_0_31();
  switch(v0)
  {
    case 1:
      OUTLINED_FUNCTION_11_9();
      break;
    case 2:
      OUTLINED_FUNCTION_4_19();
      break;
    case 3:
      OUTLINED_FUNCTION_21();
      goto LABEL_6;
    case 4:
      OUTLINED_FUNCTION_22();
LABEL_6:
      OUTLINED_FUNCTION_18_4();
      break;
    default:
      break;
  }

  sub_220CA0C54();
}

uint64_t sub_220C9D910(uint64_t a1, char a2)
{
  if (a2)
  {
    OUTLINED_FUNCTION_13_10();
  }

  else
  {
    OUTLINED_FUNCTION_1_32();
  }

  sub_220CA0C54();
}

uint64_t sub_220C9D984(uint64_t a1, char a2)
{
  if (a2)
  {
    OUTLINED_FUNCTION_7_17();
  }

  else
  {
    OUTLINED_FUNCTION_17_7();
  }

  sub_220CA0C54();
}

uint64_t sub_220C9D9FC()
{
  OUTLINED_FUNCTION_0_31();
  switch(v0)
  {
    case 1:
      OUTLINED_FUNCTION_5_15();
      break;
    default:
      break;
  }

  sub_220CA0C54();
}

uint64_t sub_220C9DAB4()
{
  OUTLINED_FUNCTION_0_31();
  switch(v0)
  {
    case 1:
      OUTLINED_FUNCTION_11_9();
      break;
    case 2:
      OUTLINED_FUNCTION_4_19();
      break;
    case 3:
      OUTLINED_FUNCTION_21();
      goto LABEL_6;
    case 4:
      OUTLINED_FUNCTION_22();
LABEL_6:
      OUTLINED_FUNCTION_18_4();
      break;
    default:
      break;
  }

  sub_220CA0C54();
}

uint64_t sub_220C9DB6C()
{
  OUTLINED_FUNCTION_0_31();
  sub_220CA0C54();
}

uint64_t sub_220C9DC08()
{
  sub_220CA0C54();
}

uint64_t sub_220C9DC88()
{
  OUTLINED_FUNCTION_0_31();
  switch(v0)
  {
    case 4:
      OUTLINED_FUNCTION_4_19();
      break;
    default:
      break;
  }

  sub_220CA0C54();
}

uint64_t sub_220C9DD34(uint64_t a1, char a2)
{
  switch(a2)
  {
    case 1:
      OUTLINED_FUNCTION_4_19();
      break;
    case 3:
      OUTLINED_FUNCTION_2_24();
      break;
    default:
      break;
  }

  sub_220CA0C54();
}

uint64_t sub_220C9DDF8(uint64_t a1, char a2)
{
  if (!a2)
  {
    OUTLINED_FUNCTION_1_32();
  }

  sub_220CA0C54();
}

uint64_t sub_220C9DE78()
{
  OUTLINED_FUNCTION_0_31();
  sub_220CA0C54();
}

uint64_t sub_220C9DF2C()
{
  OUTLINED_FUNCTION_0_31();
  switch(v0)
  {
    case 2:
    case 3:
      OUTLINED_FUNCTION_12_8();
      goto LABEL_3;
    case 4:
    case 5:
LABEL_3:
      OUTLINED_FUNCTION_4_19();
      break;
    default:
      break;
  }

  sub_220CA0C54();
}

uint64_t sub_220C9DFFC()
{
  OUTLINED_FUNCTION_0_31();
  sub_220CA0C54();
}

uint64_t sub_220C9E0B8(uint64_t a1, char a2)
{
  if (!a2)
  {
    OUTLINED_FUNCTION_1_32();
  }

  sub_220CA0C54();
}

uint64_t sub_220C9E150(uint64_t a1, char a2)
{
  if (a2)
  {
    OUTLINED_FUNCTION_7_17();
  }

  sub_220CA0C54();
}

uint64_t sub_220C9E1CC()
{
  OUTLINED_FUNCTION_10_11();
  switch(v0)
  {
    case 1:
    case 2:
      OUTLINED_FUNCTION_10_11();
      break;
    case 3:
      OUTLINED_FUNCTION_22_2();
      OUTLINED_FUNCTION_4_19();
      break;
    case 4:
    case 6:
      OUTLINED_FUNCTION_4_19();
      break;
    case 8:
      OUTLINED_FUNCTION_1_32();
      break;
    default:
      break;
  }

  sub_220CA0C54();
}

uint64_t sub_220C9E2F8()
{
  OUTLINED_FUNCTION_0_31();
  switch(v0)
  {
    case 4:
      OUTLINED_FUNCTION_4_19();
      OUTLINED_FUNCTION_12_8();
      break;
    default:
      break;
  }

  sub_220CA0C54();
}

uint64_t sub_220C9E3B4()
{
  OUTLINED_FUNCTION_0_31();
  switch(v0)
  {
    case 1:
      OUTLINED_FUNCTION_2_24();
      break;
    case 5:
      OUTLINED_FUNCTION_4_19();
      OUTLINED_FUNCTION_22_2();
      break;
    default:
      break;
  }

  sub_220CA0C54();
}

uint64_t sub_220C9E4E0(uint64_t a1, char a2)
{
  if (a2)
  {
    OUTLINED_FUNCTION_7_17();
  }

  else
  {
    OUTLINED_FUNCTION_16_8();
  }

  sub_220CA0C54();
}

uint64_t sub_220C9E558(uint64_t a1, char a2)
{
  if (!a2)
  {
    OUTLINED_FUNCTION_1_32();
  }

  sub_220CA0C54();
}

uint64_t sub_220C9E5D8()
{
  OUTLINED_FUNCTION_0_31();
  switch(v0)
  {
    case 3:
      OUTLINED_FUNCTION_15_10();
      break;
    default:
      break;
  }

  sub_220CA0C54();
}

uint64_t sub_220C9E698(uint64_t a1, char a2)
{
  switch(a2)
  {
    case 2:
      OUTLINED_FUNCTION_2_24();
      break;
    default:
      break;
  }

  sub_220CA0C54();
}

uint64_t sub_220C9E74C()
{
  sub_220CA0C54();
}

uint64_t sub_220C9E7D0(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3();
  sub_220CA0C54();
}

uint64_t sub_220C9E834()
{
  OUTLINED_FUNCTION_3_23();
  OUTLINED_FUNCTION_5_15();
  sub_220CA0C54();
}

uint64_t sub_220C9E8D0(uint64_t a1, char a2)
{
  if (a2)
  {
    OUTLINED_FUNCTION_13_10();
  }

  else
  {
    OUTLINED_FUNCTION_14_5();
  }

  sub_220CA0C54();
}

uint64_t sub_220C9E948()
{
  OUTLINED_FUNCTION_3_23();
  sub_220CA0C54();
}

uint64_t sub_220C9EA4C(uint64_t a1, char a2)
{
  sub_220CA11F4();
  if (a2)
  {
    OUTLINED_FUNCTION_13_10();
  }

  else
  {
    OUTLINED_FUNCTION_14_5();
  }

  OUTLINED_FUNCTION_8_15();

  return sub_220CA1214();
}

uint64_t sub_220C9EB00()
{
  OUTLINED_FUNCTION_9_11();
  OUTLINED_FUNCTION_8_15();

  return sub_220CA1214();
}

uint64_t sub_220C9EBA0()
{
  OUTLINED_FUNCTION_9_11();
  if (!v0)
  {
    OUTLINED_FUNCTION_1_32();
  }

  OUTLINED_FUNCTION_8_15();

  return sub_220CA1214();
}

uint64_t sub_220C9EC24()
{
  OUTLINED_FUNCTION_9_11();
  if (v0)
  {
    OUTLINED_FUNCTION_7_17();
  }

  else
  {
    OUTLINED_FUNCTION_16_8();
  }

  OUTLINED_FUNCTION_8_15();

  return sub_220CA1214();
}

uint64_t sub_220C9ECE8()
{
  OUTLINED_FUNCTION_9_11();
  if (v0)
  {
    OUTLINED_FUNCTION_7_17();
  }

  OUTLINED_FUNCTION_8_15();

  return sub_220CA1214();
}

uint64_t sub_220C9ED80()
{
  OUTLINED_FUNCTION_9_11();
  if (!v0)
  {
    OUTLINED_FUNCTION_1_32();
  }

  OUTLINED_FUNCTION_8_15();

  return sub_220CA1214();
}

uint64_t sub_220C9EE4C()
{
  OUTLINED_FUNCTION_9_11();
  if (!v0)
  {
    OUTLINED_FUNCTION_1_32();
  }

  OUTLINED_FUNCTION_8_15();

  return sub_220CA1214();
}

uint64_t sub_220C9EF00()
{
  sub_220CA11F4();
  sub_220CA0C54();

  return sub_220CA1214();
}

uint64_t sub_220C9EFF4()
{
  OUTLINED_FUNCTION_9_11();
  if (v0)
  {
    OUTLINED_FUNCTION_7_17();
  }

  else
  {
    OUTLINED_FUNCTION_17_7();
  }

  OUTLINED_FUNCTION_8_15();

  return sub_220CA1214();
}

uint64_t sub_220C9F070()
{
  OUTLINED_FUNCTION_9_11();
  if (v0)
  {
    OUTLINED_FUNCTION_13_10();
  }

  else
  {
    OUTLINED_FUNCTION_1_32();
  }

  OUTLINED_FUNCTION_8_15();

  return sub_220CA1214();
}

uint64_t sub_220C9F100(uint64_t a1, char a2)
{
  sub_220CA11F4();
  if (!a2)
  {
    OUTLINED_FUNCTION_21_1();
  }

  OUTLINED_FUNCTION_8_15();

  return sub_220CA1214();
}

uint64_t sub_220C9F1B8(uint64_t a1, char a2)
{
  sub_220CA11F4();
  v3 = *&aUnknown_26[8 * a2];
  sub_220CA0C54();

  return sub_220CA1214();
}

uint64_t sub_220C9F214()
{
  OUTLINED_FUNCTION_9_11();
  if (!v0)
  {
    OUTLINED_FUNCTION_6_15();
  }

  OUTLINED_FUNCTION_8_15();

  return sub_220CA1214();
}

uint64_t sub_220C9F2E4()
{
  OUTLINED_FUNCTION_9_11();
  if (!v0)
  {
    OUTLINED_FUNCTION_1_32();
  }

  OUTLINED_FUNCTION_8_15();

  return sub_220CA1214();
}

uint64_t sub_220C9F38C(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  v4 = sub_220CA11F4();
  a3(v4);
  sub_220CA0C54();

  return sub_220CA1214();
}

uint64_t sub_220C9F410(uint64_t a1, uint64_t a2, void (*a3)(_BYTE *, uint64_t))
{
  sub_220CA11F4();
  a3(v6, a2);
  return sub_220CA1214();
}

WeatherAnalytics::OsInstallVariant_optional __swiftcall OsInstallVariant.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_220CA0F84();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_220C9F4B8(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = *a1;
  return sub_220C3B424();
}

unint64_t sub_220C9F4C8()
{
  result = qword_27CF7DBE8;
  if (!qword_27CF7DBE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7DBE8);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for OsInstallVariant(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t OUTLINED_FUNCTION_23_1(uint64_t a1, uint64_t a2)
{

  return sub_220C9F38C(0, a2, v2);
}