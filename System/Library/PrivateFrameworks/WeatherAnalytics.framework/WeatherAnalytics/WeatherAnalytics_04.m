unint64_t sub_220C462A4()
{
  result = qword_27CF7C088;
  if (!qword_27CF7C088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7C088);
  }

  return result;
}

uint64_t WidgetRefreshFailedEventData.widget.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
}

uint64_t WidgetRefreshFailedEventData.widget.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);
  v5 = *(v1 + 8);

  *v1 = v2;
  *(v1 + 8) = v3;
  *(v1 + 16) = v4;
  return result;
}

uint64_t sub_220C463C4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746567646977 && a2 == 0xE600000000000000;
  if (v4 || (sub_220CA1154() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E6F73616572 && a2 == 0xE600000000000000)
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

uint64_t sub_220C4648C(char a1)
{
  if (a1)
  {
    return 0x6E6F73616572;
  }

  else
  {
    return 0x746567646977;
  }
}

uint64_t sub_220C464BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_220C463C4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_220C464E4(uint64_t a1)
{
  v2 = sub_220C466F8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_220C46520(uint64_t a1)
{
  v2 = sub_220C466F8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t WidgetRefreshFailedEventData.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7C090, &qword_220CA7A60);
  v4 = OUTLINED_FUNCTION_3(v3);
  v17 = v5;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  v9 = v16 - v8;
  v10 = *v1;
  v11 = v1[1];
  v12 = *(v1 + 16);
  v21 = *(v1 + 17);
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220C466F8();

  sub_220CA1254();
  v18 = v10;
  v19 = v11;
  v20 = v12;
  v22 = 0;
  sub_220C4674C();
  OUTLINED_FUNCTION_1_13();
  v14 = v16[1];
  sub_220CA1104();

  if (!v14)
  {
    LOBYTE(v18) = v21;
    v22 = 1;
    sub_220C467A0();
    OUTLINED_FUNCTION_1_13();
    sub_220CA1104();
  }

  return (*(v17 + 8))(v9, v3);
}

unint64_t sub_220C466F8()
{
  result = qword_27CF7C098;
  if (!qword_27CF7C098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7C098);
  }

  return result;
}

unint64_t sub_220C4674C()
{
  result = qword_27CF7C0A0;
  if (!qword_27CF7C0A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7C0A0);
  }

  return result;
}

unint64_t sub_220C467A0()
{
  result = qword_27CF7C0A8;
  if (!qword_27CF7C0A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7C0A8);
  }

  return result;
}

uint64_t WidgetRefreshFailedEventData.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7C0B0, &qword_220CA7A68);
  v6 = OUTLINED_FUNCTION_3(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  v12 = &v18 - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220C466F8();
  sub_220CA1234();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v23 = 0;
  sub_220C469B8();
  OUTLINED_FUNCTION_0_13();
  v15 = v19;
  v14 = v20;
  v22 = v21;
  v23 = 1;
  sub_220C46A0C();
  OUTLINED_FUNCTION_0_13();
  (*(v8 + 8))(v12, v5);
  v16 = v19;
  *a2 = v15;
  *(a2 + 8) = v14;
  *(a2 + 16) = v22;
  *(a2 + 17) = v16;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_220C469B8()
{
  result = qword_27CF7C0B8;
  if (!qword_27CF7C0B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7C0B8);
  }

  return result;
}

unint64_t sub_220C46A0C()
{
  result = qword_27CF7C0C0;
  if (!qword_27CF7C0C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7C0C0);
  }

  return result;
}

unint64_t sub_220C46A64()
{
  result = qword_27CF7C0C8;
  if (!qword_27CF7C0C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7C0C8);
  }

  return result;
}

unint64_t sub_220C46ABC()
{
  result = qword_27CF7C0D0;
  if (!qword_27CF7C0D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7C0D0);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for WidgetRefreshFailedEventData.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_220C46C30()
{
  result = qword_27CF7C0D8;
  if (!qword_27CF7C0D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7C0D8);
  }

  return result;
}

unint64_t sub_220C46C88()
{
  result = qword_27CF7C0E0;
  if (!qword_27CF7C0E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7C0E0);
  }

  return result;
}

unint64_t sub_220C46CE0()
{
  result = qword_27CF7C0E8;
  if (!qword_27CF7C0E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7C0E8);
  }

  return result;
}

void WidgetRefreshTelemetryPayload.Success.init(startTime:endTime:widgetName:widgetFamily:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 *a5)
{
  OUTLINED_FUNCTION_3_8(a1, a2, a3, a4, a5);
  v7 = sub_220C9F7D4();
  OUTLINED_FUNCTION_1(v7);
  v9 = *(v8 + 32);
  v9(v6, v5, v7);
  refreshed = type metadata accessor for WidgetRefreshTelemetryPayload.Success(0);
  v11 = OUTLINED_FUNCTION_5_7(refreshed);
  (v9)(v11);
  OUTLINED_FUNCTION_4_10();
}

void WidgetRefreshTelemetryPayload.Failure.init(startTime:endTime:widgetName:widgetFamily:reason:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 *a5)
{
  OUTLINED_FUNCTION_3_8(a1, a2, a3, a4, a5);
  v8 = *v7;
  v9 = sub_220C9F7D4();
  OUTLINED_FUNCTION_1(v9);
  v11 = *(v10 + 32);
  v11(v6, v5, v9);
  refreshed = type metadata accessor for WidgetRefreshTelemetryPayload.Failure(0);
  v13 = OUTLINED_FUNCTION_5_7(refreshed);
  (v11)(v13);
  OUTLINED_FUNCTION_4_10();
  *(v6 + *(v5 + 32)) = v8;
}

_BYTE *storeEnumTagSinglePayload for WidgetRefreshTelemetryPayload(_BYTE *result, int a2, int a3)
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

uint64_t sub_220C46FA4()
{
  result = sub_220C9F7D4();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_5();
  v6 = sub_220C9F7D4();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(v3, a2, v6);
  }

  else
  {
    v8 = *(v3 + *(a3 + 24) + 8);
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t __swift_store_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_220C9F7D4();
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_220C471A4()
{
  result = sub_220C9F7D4();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_220C47234()
{
  v2 = OUTLINED_FUNCTION_5();
  refreshed = type metadata accessor for WidgetRefreshTelemetryPayload.Success(v2);
  v4 = *(refreshed - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](refreshed - 8);
  v6 = v1[7];
  __swift_project_boxed_opaque_existential_1(v1 + 3, v1[6]);
  v7 = OUTLINED_FUNCTION_2_10();
  if (v8(v7))
  {
    v9 = v1[2];
    sub_220C47B2C(v0, &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for WidgetRefreshTelemetryPayload.Success);
    v10 = (*(v4 + 80) + 16) & ~*(v4 + 80);
    v11 = swift_allocObject();
    OUTLINED_FUNCTION_8_6(v11);
    sub_220CA0444();
  }

  else
  {
    if (qword_2812D1768 != -1)
    {
      OUTLINED_FUNCTION_1_10();
    }

    v12 = sub_220CA0A84();
    __swift_project_value_buffer(v12, qword_2812D1770);
    v18 = sub_220CA0A64();
    v13 = sub_220CA0D84();
    if (os_log_type_enabled(v18, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      OUTLINED_FUNCTION_8_4(&dword_220BF4000, v15, v16, "Skipping logging of widget refresh success event; not part of sample.");
      MEMORY[0x223D95B30](v14, -1, -1);
    }
  }
}

uint64_t sub_220C47438(uint64_t a1, uint64_t a2)
{
  v3 = sub_220C9F804();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220C9F7F4();
  sub_220C9F7E4();
  (*(v4 + 8))(v7, v3);
  sub_220C9FF74();

  type metadata accessor for WidgetRefreshEvent(0);
  sub_220C47DB4(&qword_27CF7C100, type metadata accessor for WidgetRefreshEvent);
  sub_220C9FF94();
  refreshed = type metadata accessor for WidgetRefreshTelemetryPayload.Success(0);
  v9 = (a2 + refreshed[6]);
  v10 = *v9;
  v11 = v9[1];
  LOBYTE(v9) = *(a2 + refreshed[7]);
  v14[1] = v10;
  v14[2] = v11;
  v15 = v9;
  sub_220C47DFC();

  sub_220C9FFC4();

  v12 = refreshed[5];
  sub_220C9FFA4();
  return sub_220C9FF84();
}

void sub_220C47634()
{
  v2 = OUTLINED_FUNCTION_5();
  refreshed = type metadata accessor for WidgetRefreshTelemetryPayload.Failure(v2);
  v4 = *(refreshed - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](refreshed - 8);
  v6 = v1[7];
  __swift_project_boxed_opaque_existential_1(v1 + 3, v1[6]);
  v7 = OUTLINED_FUNCTION_2_10();
  if (v8(v7))
  {
    v9 = v1[2];
    sub_220C47B2C(v0, &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for WidgetRefreshTelemetryPayload.Failure);
    v10 = (*(v4 + 80) + 16) & ~*(v4 + 80);
    v11 = swift_allocObject();
    OUTLINED_FUNCTION_8_6(v11);
    sub_220CA0444();
  }

  else
  {
    if (qword_2812D1768 != -1)
    {
      OUTLINED_FUNCTION_1_10();
    }

    v12 = sub_220CA0A84();
    __swift_project_value_buffer(v12, qword_2812D1770);
    v18 = sub_220CA0A64();
    v13 = sub_220CA0D84();
    if (os_log_type_enabled(v18, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      OUTLINED_FUNCTION_8_4(&dword_220BF4000, v15, v16, "Skipping logging of widget refresh failure event; not part of sample.");
      MEMORY[0x223D95B30](v14, -1, -1);
    }
  }
}

uint64_t sub_220C47838(uint64_t a1, uint64_t a2)
{
  v3 = sub_220C9F804();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220C9F7F4();
  sub_220C9F7E4();
  (*(v4 + 8))(v7, v3);
  sub_220C9FF74();

  type metadata accessor for WidgetRefreshFailedEvent(0);
  sub_220C47DB4(&qword_27CF7C0F0, type metadata accessor for WidgetRefreshFailedEvent);
  sub_220C9FF94();
  refreshed = type metadata accessor for WidgetRefreshTelemetryPayload.Failure(0);
  v9 = (a2 + refreshed[6]);
  v10 = *v9;
  v11 = v9[1];
  LOBYTE(v9) = *(a2 + refreshed[7]);
  v12 = *(a2 + refreshed[8]);
  v15[1] = v10;
  v15[2] = v11;
  v16 = v9;
  v17 = v12;
  sub_220C47AD8();

  sub_220C9FFC4();

  v13 = refreshed[5];
  sub_220C9FFA4();
  return sub_220C9FF84();
}

unint64_t sub_220C47AD8()
{
  result = qword_27CF7C0F8;
  if (!qword_27CF7C0F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7C0F8);
  }

  return result;
}

uint64_t sub_220C47B2C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  OUTLINED_FUNCTION_1(v5);
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t objectdestroyTm_0(uint64_t (*a1)(void))
{
  v2 = (a1(0) - 8);
  v3 = *(*v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(*v2 + 64);
  v6 = sub_220C9F7D4();
  OUTLINED_FUNCTION_1(v6);
  v8 = *(v7 + 8);
  v8(v1 + v4, v6);
  v8(v1 + v4 + v2[7], v6);
  v9 = *(v1 + v4 + v2[8] + 8);

  return MEMORY[0x2821FE8E8](v1, v4 + v5, v3 | 7);
}

uint64_t sub_220C47CA4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  OUTLINED_FUNCTION_1(v5);
  (*(v6 + 32))(a2, a1);
  return a2;
}

uint64_t sub_220C47D30(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  v5 = OUTLINED_FUNCTION_5();
  v7 = *(v6(v5) - 8);
  v8 = v4 + ((*(v7 + 80) + 16) & ~*(v7 + 80));

  return a3(v3, v8);
}

uint64_t sub_220C47DB4(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_220C47DFC()
{
  result = qword_27CF7C108;
  if (!qword_27CF7C108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7C108);
  }

  return result;
}

uint64_t sub_220C47F18()
{
  v0 = sub_220CA0254();
  __swift_allocate_value_buffer(v0, qword_27CF7C140);
  __swift_project_value_buffer(v0, qword_27CF7C140);
  return sub_220CA0244();
}

uint64_t PrecipitationNotificationIncorrectEvent.eventData.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B5F0, &unk_220CA1E90);
  OUTLINED_FUNCTION_1(v1);
  v3 = *(v2 + 16);
  v4 = OUTLINED_FUNCTION_6_0();

  return v5(v4, v0);
}

uint64_t PrecipitationNotificationIncorrectEvent.eventData.setter(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B5F0, &unk_220CA1E90);
  v4 = OUTLINED_FUNCTION_1(v3);
  v6 = *(v5 + 40);

  return v6(v1, a1, v4);
}

uint64_t PrecipitationNotificationIncorrectEvent.locationData.getter()
{
  v0 = OUTLINED_FUNCTION_6();
  v1 = *(type metadata accessor for PrecipitationNotificationIncorrectEvent(v0) + 20);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B9A0, &qword_220CA3C20);
  OUTLINED_FUNCTION_1(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_6_0();

  return v6(v5);
}

uint64_t PrecipitationNotificationIncorrectEvent.locationData.setter()
{
  v2 = OUTLINED_FUNCTION_5();
  v3 = *(type metadata accessor for PrecipitationNotificationIncorrectEvent(v2) + 20);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B9A0, &qword_220CA3C20);
  OUTLINED_FUNCTION_1(v4);
  v6 = *(v5 + 40);

  return v6(v1 + v3, v0);
}

uint64_t (*PrecipitationNotificationIncorrectEvent.locationData.modify())()
{
  v0 = OUTLINED_FUNCTION_5();
  v1 = *(type metadata accessor for PrecipitationNotificationIncorrectEvent(v0) + 20);
  return nullsub_1;
}

uint64_t PrecipitationNotificationIncorrectEvent.notificationData.getter()
{
  v0 = OUTLINED_FUNCTION_6();
  v1 = *(type metadata accessor for PrecipitationNotificationIncorrectEvent(v0) + 24);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7C158, &qword_220CA7D20);
  OUTLINED_FUNCTION_1(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_6_0();

  return v6(v5);
}

uint64_t PrecipitationNotificationIncorrectEvent.notificationData.setter()
{
  v2 = OUTLINED_FUNCTION_5();
  v3 = *(type metadata accessor for PrecipitationNotificationIncorrectEvent(v2) + 24);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7C158, &qword_220CA7D20);
  OUTLINED_FUNCTION_1(v4);
  v6 = *(v5 + 40);

  return v6(v1 + v3, v0);
}

uint64_t (*PrecipitationNotificationIncorrectEvent.notificationData.modify())()
{
  v0 = OUTLINED_FUNCTION_5();
  v1 = *(type metadata accessor for PrecipitationNotificationIncorrectEvent(v0) + 24);
  return nullsub_1;
}

uint64_t PrecipitationNotificationIncorrectEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B5F0, &unk_220CA1E90);
  OUTLINED_FUNCTION_1(v3);
  (*(v4 + 104))(a1, v2);
  v5 = type metadata accessor for PrecipitationNotificationIncorrectEvent(0);
  v6 = *(v5 + 20);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B9A0, &qword_220CA3C20);
  OUTLINED_FUNCTION_1(v7);
  (*(v8 + 104))(a1 + v6, v2);
  v9 = *(v5 + 24);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7C158, &qword_220CA7D20);
  OUTLINED_FUNCTION_1(v10);
  v12 = *(v11 + 104);

  return v12(a1 + v9, v2);
}

uint64_t PrecipitationNotificationIncorrectEvent.Model.eventData.getter()
{
  OUTLINED_FUNCTION_6();
  v1 = sub_220CA0494();
  OUTLINED_FUNCTION_1(v1);
  v3 = *(v2 + 16);
  v4 = OUTLINED_FUNCTION_6_0();

  return v5(v4, v0);
}

__n128 PrecipitationNotificationIncorrectEvent.Model.locationData.getter()
{
  v2 = OUTLINED_FUNCTION_6();
  result = *(v1 + *(type metadata accessor for PrecipitationNotificationIncorrectEvent.Model(v2) + 20));
  *v0 = result;
  return result;
}

uint64_t PrecipitationNotificationIncorrectEvent.Model.notificationData.getter()
{
  v2 = OUTLINED_FUNCTION_6();
  v3 = (v1 + *(type metadata accessor for PrecipitationNotificationIncorrectEvent.Model(v2) + 24));
  v4 = v3[2];
  v10 = v3[1];
  v5 = v10;
  v11 = v4;
  v12 = *(v3 + 6);
  v6 = v12;
  v9 = *v3;
  *v0 = v9;
  *(v0 + 16) = v5;
  *(v0 + 32) = v4;
  *(v0 + 48) = v6;
  return sub_220C48540(&v9, v8);
}

__n128 PrecipitationNotificationIncorrectEvent.Model.init(eventData:locationData:notificationData:)@<Q0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *a2;
  v8 = a2[1];
  v9 = sub_220CA0494();
  OUTLINED_FUNCTION_1(v9);
  (*(v10 + 32))(a4, a1);
  v11 = type metadata accessor for PrecipitationNotificationIncorrectEvent.Model(0);
  v12 = (a4 + *(v11 + 20));
  *v12 = v7;
  v12[1] = v8;
  v13 = a4 + *(v11 + 24);
  v14 = *(a3 + 16);
  *v13 = *a3;
  *(v13 + 16) = v14;
  result = *(a3 + 32);
  *(v13 + 32) = result;
  *(v13 + 48) = *(a3 + 48);
  return result;
}

uint64_t sub_220C48640(uint64_t a1)
{
  v2 = sub_220C4893C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_220C4867C(uint64_t a1)
{
  v2 = sub_220C4893C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t PrecipitationNotificationIncorrectEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7C160, &qword_220CA7D28);
  v6 = OUTLINED_FUNCTION_3(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  v12 = v20 - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220C4893C();
  sub_220CA1254();
  LOBYTE(v26[0]) = 0;
  sub_220CA0494();
  sub_220C04FCC(&qword_2812D0D90);
  sub_220CA1104();
  if (!v2)
  {
    v14 = type metadata accessor for PrecipitationNotificationIncorrectEvent.Model(0);
    v28 = *(v3 + *(v14 + 20));
    v30 = 1;
    sub_220C05568();
    sub_220CA1104();
    v15 = (v3 + *(v14 + 24));
    v16 = v15[1];
    v26[0] = *v15;
    v26[1] = v16;
    v18 = *v15;
    v17 = v15[1];
    v26[2] = v15[2];
    v27 = *(v15 + 6);
    v22 = v18;
    v23 = v17;
    v24 = v15[2];
    v25 = *(v15 + 6);
    v29 = 2;
    sub_220C48540(v26, v20);
    sub_220C48990();
    sub_220CA1104();
    v20[0] = v22;
    v20[1] = v23;
    v20[2] = v24;
    v21 = v25;
    sub_220C489E4(v20);
  }

  return (*(v8 + 8))(v12, v5);
}

unint64_t sub_220C4893C()
{
  result = qword_27CF7C168;
  if (!qword_27CF7C168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7C168);
  }

  return result;
}

unint64_t sub_220C48990()
{
  result = qword_27CF7C170;
  if (!qword_27CF7C170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7C170);
  }

  return result;
}

uint64_t PrecipitationNotificationIncorrectEvent.Model.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a2;
  v4 = sub_220CA0494();
  v5 = OUTLINED_FUNCTION_3(v4);
  v33 = v6;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v34 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7C178, &qword_220CA7D30);
  v11 = OUTLINED_FUNCTION_3(v10);
  v35 = v12;
  v36 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v11);
  v16 = &v31 - v15;
  v17 = type metadata accessor for PrecipitationNotificationIncorrectEvent.Model(0);
  v18 = OUTLINED_FUNCTION_1(v17);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  v22 = &v31 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220C4893C();
  sub_220CA1234();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v31 = a1;
  v24 = v22;
  v25 = v33;
  LOBYTE(v37) = 0;
  sub_220C04FCC(&qword_2812D0D88);
  v26 = v34;
  v27 = v36;
  sub_220CA1034();
  (*(v25 + 32))(v24, v26, v4);
  v41 = 1;
  sub_220C05514();
  OUTLINED_FUNCTION_3_9();
  *(v24 + *(v17 + 20)) = v37;
  v41 = 2;
  sub_220C48D98();
  OUTLINED_FUNCTION_3_9();
  (*(v35 + 8))(v16, v27);
  v28 = v24 + *(v17 + 24);
  v29 = v38;
  *v28 = v37;
  *(v28 + 16) = v29;
  *(v28 + 32) = v39;
  *(v28 + 48) = v40;
  sub_220C48DEC(v24, v32);
  __swift_destroy_boxed_opaque_existential_1(v31);
  return sub_220C48E50(v24);
}

unint64_t sub_220C48D98()
{
  result = qword_27CF7C180;
  if (!qword_27CF7C180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7C180);
  }

  return result;
}

uint64_t sub_220C48DEC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PrecipitationNotificationIncorrectEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_220C48E50(uint64_t a1)
{
  v2 = type metadata accessor for PrecipitationNotificationIncorrectEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_220C48F14()
{
  sub_220C04EB8();
  if (v0 <= 0x3F)
  {
    sub_220C49020(319, &qword_2812D0E38, sub_220C05514, sub_220C05568);
    if (v1 <= 0x3F)
    {
      sub_220C49020(319, &qword_27CF7C198, sub_220C48D98, sub_220C48990);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_220C49020(uint64_t a1, unint64_t *a2, void (*a3)(void), void (*a4)(void))
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

uint64_t sub_220C490C4()
{
  result = sub_220CA0494();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for PrecipitationNotificationIncorrectEvent.Model.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_220C49228()
{
  result = qword_27CF7C1B0;
  if (!qword_27CF7C1B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7C1B0);
  }

  return result;
}

unint64_t sub_220C49280()
{
  result = qword_27CF7C1B8;
  if (!qword_27CF7C1B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7C1B8);
  }

  return result;
}

unint64_t sub_220C492D8()
{
  result = qword_27CF7C1C0;
  if (!qword_27CF7C1C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7C1C0);
  }

  return result;
}

uint64_t sub_220C493F4()
{
  v0 = sub_220CA0254();
  __swift_allocate_value_buffer(v0, qword_27CF7C1F8);
  __swift_project_value_buffer(v0, qword_27CF7C1F8);
  return sub_220CA0244();
}

uint64_t LinkTapEvent.eventData.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B5F0, &unk_220CA1E90);
  OUTLINED_FUNCTION_1(v1);
  v3 = *(v2 + 16);
  v4 = OUTLINED_FUNCTION_6_0();

  return v5(v4, v0);
}

uint64_t LinkTapEvent.eventData.setter(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B5F0, &unk_220CA1E90);
  v4 = OUTLINED_FUNCTION_1(v3);
  v6 = *(v5 + 40);

  return v6(v1, a1, v4);
}

uint64_t LinkTapEvent.viewData.getter()
{
  v0 = OUTLINED_FUNCTION_6();
  v1 = *(type metadata accessor for LinkTapEvent(v0) + 20);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B8E8, &unk_220CA3700);
  OUTLINED_FUNCTION_1(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_6_0();

  return v6(v5);
}

uint64_t LinkTapEvent.viewData.setter()
{
  v2 = OUTLINED_FUNCTION_5();
  v3 = *(type metadata accessor for LinkTapEvent(v2) + 20);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B8E8, &unk_220CA3700);
  OUTLINED_FUNCTION_1(v4);
  v6 = *(v5 + 40);

  return v6(v1 + v3, v0);
}

uint64_t (*LinkTapEvent.viewData.modify())()
{
  v0 = OUTLINED_FUNCTION_5();
  v1 = *(type metadata accessor for LinkTapEvent(v0) + 20);
  return nullsub_1;
}

uint64_t LinkTapEvent.urlData.getter()
{
  v0 = OUTLINED_FUNCTION_6();
  v1 = *(type metadata accessor for LinkTapEvent(v0) + 24);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7C210, &qword_220CA7F70);
  OUTLINED_FUNCTION_1(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_6_0();

  return v6(v5);
}

uint64_t LinkTapEvent.urlData.setter()
{
  v2 = OUTLINED_FUNCTION_5();
  v3 = *(type metadata accessor for LinkTapEvent(v2) + 24);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7C210, &qword_220CA7F70);
  OUTLINED_FUNCTION_1(v4);
  v6 = *(v5 + 40);

  return v6(v1 + v3, v0);
}

uint64_t (*LinkTapEvent.urlData.modify())()
{
  v0 = OUTLINED_FUNCTION_5();
  v1 = *(type metadata accessor for LinkTapEvent(v0) + 24);
  return nullsub_1;
}

uint64_t LinkTapEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B5F0, &unk_220CA1E90);
  OUTLINED_FUNCTION_1(v3);
  (*(v4 + 104))(a1, v2);
  v5 = type metadata accessor for LinkTapEvent(0);
  v6 = *(v5 + 20);
  v7 = *MEMORY[0x277CEACF0];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B8E8, &unk_220CA3700);
  OUTLINED_FUNCTION_1(v8);
  (*(v9 + 104))(a1 + v6, v7);
  v10 = *(v5 + 24);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7C210, &qword_220CA7F70);
  OUTLINED_FUNCTION_1(v11);
  v13 = *(v12 + 104);

  return v13(a1 + v10, v7);
}

uint64_t LinkTapEvent.Model.eventData.getter()
{
  OUTLINED_FUNCTION_6();
  v1 = sub_220CA0494();
  OUTLINED_FUNCTION_1(v1);
  v3 = *(v2 + 16);
  v4 = OUTLINED_FUNCTION_6_0();

  return v5(v4, v0);
}

uint64_t LinkTapEvent.Model.viewData.getter()
{
  v2 = OUTLINED_FUNCTION_6();
  v3 = (v1 + *(type metadata accessor for LinkTapEvent.Model(v2) + 20));
  v5 = *v3;
  v4 = v3[1];
  LOWORD(v3) = *(v3 + 8);
  *v0 = v5;
  *(v0 + 8) = v4;
  *(v0 + 16) = v3;
}

uint64_t LinkTapEvent.Model.urlData.getter()
{
  v2 = OUTLINED_FUNCTION_6();
  v3 = (v1 + *(type metadata accessor for LinkTapEvent.Model(v2) + 24));
  v5 = *v3;
  v4 = v3[1];
  LOBYTE(v3) = *(v3 + 16);
  *v0 = v5;
  *(v0 + 8) = v4;
  *(v0 + 16) = v3;
}

uint64_t LinkTapEvent.Model.init(eventData:viewData:urlData:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v6 = *a2;
  v7 = a2[1];
  v8 = *(a2 + 8);
  v9 = *a3;
  v10 = a3[1];
  v11 = *(a3 + 16);
  v12 = sub_220CA0494();
  OUTLINED_FUNCTION_1(v12);
  (*(v13 + 32))(a4, a1);
  result = type metadata accessor for LinkTapEvent.Model(0);
  v15 = a4 + *(result + 20);
  *v15 = v6;
  *(v15 + 8) = v7;
  *(v15 + 16) = v8;
  v16 = a4 + *(result + 24);
  *v16 = v9;
  *(v16 + 8) = v10;
  *(v16 + 16) = v11;
  return result;
}

uint64_t sub_220C49AD4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746144746E657665 && a2 == 0xE900000000000061;
  if (v4 || (sub_220CA1154() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6174614477656976 && a2 == 0xE800000000000000;
    if (v6 || (sub_220CA1154() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x617461446C7275 && a2 == 0xE700000000000000)
    {

      return 2;
    }

    else
    {
      v8 = sub_220CA1154();

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

uint64_t sub_220C49BEC(char a1)
{
  if (!a1)
  {
    return 0x746144746E657665;
  }

  if (a1 == 1)
  {
    return 0x6174614477656976;
  }

  return 0x617461446C7275;
}

uint64_t sub_220C49C50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_220C49AD4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_220C49C78(uint64_t a1)
{
  v2 = sub_220C49EF8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_220C49CB4(uint64_t a1)
{
  v2 = sub_220C49EF8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t LinkTapEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7C218, &qword_220CA7F78);
  v6 = OUTLINED_FUNCTION_3(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  v12 = &v23 - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220C49EF8();
  sub_220CA1254();
  LOBYTE(v24) = 0;
  sub_220CA0494();
  sub_220C04FCC(&qword_2812D0D90);
  sub_220CA1104();
  if (!v2)
  {
    v14 = type metadata accessor for LinkTapEvent.Model(0);
    v15 = (v3 + *(v14 + 20));
    v16 = *v15;
    v17 = v15[1];
    LOWORD(v15) = *(v15 + 8);
    v24 = v16;
    v25 = v17;
    v26 = v15;
    HIBYTE(v23) = 1;
    v18 = sub_220C04820();

    OUTLINED_FUNCTION_4_11();

    if (!v18)
    {
      v19 = (v3 + *(v14 + 24));
      v20 = *v19;
      v21 = v19[1];
      LOBYTE(v19) = *(v19 + 16);
      v24 = v20;
      v25 = v21;
      LOBYTE(v26) = v19;
      HIBYTE(v23) = 2;
      sub_220C49F4C();

      OUTLINED_FUNCTION_4_11();
    }
  }

  return (*(v8 + 8))(v12, v5);
}

unint64_t sub_220C49EF8()
{
  result = qword_27CF7C220;
  if (!qword_27CF7C220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7C220);
  }

  return result;
}

unint64_t sub_220C49F4C()
{
  result = qword_27CF7C228;
  if (!qword_27CF7C228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7C228);
  }

  return result;
}

uint64_t LinkTapEvent.Model.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v34 = a2;
  v4 = sub_220CA0494();
  v5 = OUTLINED_FUNCTION_3(v4);
  v36 = v6;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v37 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7C230, &qword_220CA7F80);
  v10 = OUTLINED_FUNCTION_3(v38);
  v35 = v11;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = type metadata accessor for LinkTapEvent.Model(0);
  v15 = OUTLINED_FUNCTION_1(v14);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v31 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220C49EF8();
  sub_220CA1234();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v21 = v36;
  v32 = v14;
  v33 = v19;
  LOBYTE(v39) = 0;
  sub_220C04FCC(&qword_2812D0D88);
  v22 = v37;
  sub_220CA1034();
  (*(v21 + 32))(v33, v22, v4);
  v41 = 1;
  sub_220C0449C();
  OUTLINED_FUNCTION_7_7();
  sub_220CA0FC4();
  v23 = v40;
  v24 = &v33[*(v32 + 20)];
  *v24 = v39;
  *(v24 + 8) = v23;
  v41 = 2;
  sub_220C4A31C();
  OUTLINED_FUNCTION_7_7();
  sub_220CA0FC4();
  v25 = OUTLINED_FUNCTION_1_14();
  v26(v25);
  v27 = v40;
  v28 = v33;
  v29 = &v33[*(v32 + 24)];
  *v29 = v39;
  v29[16] = v27;
  sub_220C4A370(v28, v34);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_220C4A3D4(v28);
}

unint64_t sub_220C4A31C()
{
  result = qword_27CF7C238;
  if (!qword_27CF7C238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7C238);
  }

  return result;
}

uint64_t sub_220C4A370(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LinkTapEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_220C4A3D4(uint64_t a1)
{
  v2 = type metadata accessor for LinkTapEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_220C4A498()
{
  sub_220C04EB8();
  if (v0 <= 0x3F)
  {
    sub_220C4A5A4(319, &qword_2812D0DB8, sub_220C0449C, sub_220C04820);
    if (v1 <= 0x3F)
    {
      sub_220C4A5A4(319, &qword_27CF7C250, sub_220C4A31C, sub_220C49F4C);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_220C4A5A4(uint64_t a1, unint64_t *a2, void (*a3)(void), void (*a4)(void))
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

void sub_220C4A648()
{
  sub_220CA0494();
  if (v0 <= 0x3F)
  {
    sub_220BFE7B0(319, &qword_27CF7C268);
    if (v1 <= 0x3F)
    {
      sub_220BFE7B0(319, &qword_27CF7C270);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

_BYTE *storeEnumTagSinglePayload for LinkTapEvent.Model.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_220C4A7E4()
{
  result = qword_27CF7C278;
  if (!qword_27CF7C278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7C278);
  }

  return result;
}

unint64_t sub_220C4A83C()
{
  result = qword_27CF7C280;
  if (!qword_27CF7C280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7C280);
  }

  return result;
}

unint64_t sub_220C4A894()
{
  result = qword_27CF7C288;
  if (!qword_27CF7C288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7C288);
  }

  return result;
}

uint64_t sub_220C4A934(uint64_t a1, uint64_t a2)
{
  if (a1 == 1701869940 && a2 == 0xE400000000000000)
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

uint64_t sub_220C4A9C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_220C4A934(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_220C4A9EC(uint64_t a1)
{
  v2 = sub_220C4ABA4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_220C4AA28(uint64_t a1)
{
  v2 = sub_220C4ABA4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ComponentData.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7C290, &qword_220CA81A0);
  v4 = OUTLINED_FUNCTION_3(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  v10 = &v14 - v9;
  v11 = *v1;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220C4ABA4();
  sub_220CA1254();
  v15 = v11;
  sub_220C4ABF8();
  sub_220CA1104();
  return (*(v6 + 8))(v10, v3);
}

unint64_t sub_220C4ABA4()
{
  result = qword_2812D06E8;
  if (!qword_2812D06E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812D06E8);
  }

  return result;
}

unint64_t sub_220C4ABF8()
{
  result = qword_2812D06C0;
  if (!qword_2812D06C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812D06C0);
  }

  return result;
}

uint64_t ComponentData.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7C298, &qword_220CA81A8);
  v6 = OUTLINED_FUNCTION_3(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  v12 = &v15 - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220C4ABA4();
  sub_220CA1234();
  if (!v2)
  {
    sub_220C4ADAC();
    sub_220CA1034();
    (*(v8 + 8))(v12, v5);
    *a2 = v16;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_220C4ADAC()
{
  result = qword_27CF7C2A0;
  if (!qword_27CF7C2A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7C2A0);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ComponentData(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 16 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 16) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF0)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xEF)
  {
    v6 = ((a2 - 240) >> 8) + 1;
    *result = a2 + 16;
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
          *result = a2 + 16;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ComponentData.CodingKeys(_BYTE *result, int a2, int a3)
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

unint64_t sub_220C4AFC4()
{
  result = qword_27CF7C2A8;
  if (!qword_27CF7C2A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7C2A8);
  }

  return result;
}

unint64_t sub_220C4B01C()
{
  result = qword_2812D06D8;
  if (!qword_2812D06D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812D06D8);
  }

  return result;
}

unint64_t sub_220C4B074()
{
  result = qword_2812D06E0;
  if (!qword_2812D06E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812D06E0);
  }

  return result;
}

WeatherAnalytics::LocationAccessData_optional __swiftcall LocationAccessData.init(rawValue:)(Swift::String rawValue)
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

uint64_t sub_220C4B124(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = *a1;
  return sub_220C3B080();
}

unint64_t sub_220C4B134()
{
  result = qword_27CF7C2B0;
  if (!qword_27CF7C2B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7C2B0);
  }

  return result;
}

uint64_t sub_220C4B2D4()
{
  v0 = sub_220CA0254();
  __swift_allocate_value_buffer(v0, qword_27CF7C2E8);
  __swift_project_value_buffer(v0, qword_27CF7C2E8);
  return sub_220CA0244();
}

uint64_t DataTableExposureEvent.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B5F0, &unk_220CA1E90);
  v4 = OUTLINED_FUNCTION_1(v3);
  v6 = *(v5 + 16);

  return v6(a1, v1, v4);
}

uint64_t DataTableExposureEvent.eventData.setter(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B5F0, &unk_220CA1E90);
  v4 = OUTLINED_FUNCTION_1(v3);
  v6 = *(v5 + 40);

  return v6(v1, a1, v4);
}

uint64_t DataTableExposureEvent.timedData.getter()
{
  v0 = OUTLINED_FUNCTION_6();
  v1 = *(type metadata accessor for DataTableExposureEvent(v0) + 20);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B610, &qword_220CA1EB0);
  OUTLINED_FUNCTION_1(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_2();

  return v6(v5);
}

uint64_t DataTableExposureEvent.timedData.setter()
{
  v0 = *(OUTLINED_FUNCTION_12_2() + 20);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B610, &qword_220CA1EB0);
  OUTLINED_FUNCTION_0_0(v1);
  v3 = *(v2 + 40);
  v4 = OUTLINED_FUNCTION_14_0();

  return v5(v4);
}

uint64_t DataTableExposureEvent.orientationData.getter()
{
  v0 = OUTLINED_FUNCTION_6();
  v1 = *(type metadata accessor for DataTableExposureEvent(v0) + 24);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B5F8, &unk_220CA3990);
  OUTLINED_FUNCTION_1(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_2();

  return v6(v5);
}

uint64_t DataTableExposureEvent.orientationData.setter()
{
  v0 = *(OUTLINED_FUNCTION_12_2() + 24);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B5F8, &unk_220CA3990);
  OUTLINED_FUNCTION_0_0(v1);
  v3 = *(v2 + 40);
  v4 = OUTLINED_FUNCTION_14_0();

  return v5(v4);
}

uint64_t DataTableExposureEvent.hostViewData.getter()
{
  v0 = OUTLINED_FUNCTION_6();
  v1 = *(type metadata accessor for DataTableExposureEvent(v0) + 28);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B8E8, &unk_220CA3700);
  OUTLINED_FUNCTION_1(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_2();

  return v6(v5);
}

uint64_t DataTableExposureEvent.hostViewData.setter()
{
  v0 = *(OUTLINED_FUNCTION_12_2() + 28);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B8E8, &unk_220CA3700);
  OUTLINED_FUNCTION_0_0(v1);
  v3 = *(v2 + 40);
  v4 = OUTLINED_FUNCTION_14_0();

  return v5(v4);
}

uint64_t DataTableExposureEvent.privateUserData.getter()
{
  v0 = OUTLINED_FUNCTION_6();
  v1 = *(type metadata accessor for DataTableExposureEvent(v0) + 32);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B7F0, &qword_220CA3150);
  OUTLINED_FUNCTION_1(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_2();

  return v6(v5);
}

uint64_t DataTableExposureEvent.privateUserData.setter()
{
  v0 = *(OUTLINED_FUNCTION_12_2() + 32);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B7F0, &qword_220CA3150);
  OUTLINED_FUNCTION_0_0(v1);
  v3 = *(v2 + 40);
  v4 = OUTLINED_FUNCTION_14_0();

  return v5(v4);
}

uint64_t DataTableExposureEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B5F0, &unk_220CA1E90);
  OUTLINED_FUNCTION_0_0(v3);
  (*(v4 + 104))(a1, v2);
  v5 = type metadata accessor for DataTableExposureEvent(0);
  v6 = v5[5];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B610, &qword_220CA1EB0);
  OUTLINED_FUNCTION_0_0(v7);
  (*(v8 + 104))(a1 + v6, v2);
  v9 = v5[6];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B5F8, &unk_220CA3990);
  OUTLINED_FUNCTION_0_0(v10);
  (*(v11 + 104))(a1 + v9, v2);
  v12 = v5[7];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B8E8, &unk_220CA3700);
  OUTLINED_FUNCTION_0_0(v13);
  (*(v14 + 104))(a1 + v12, v2);
  v15 = v5[8];
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B7F0, &qword_220CA3150);
  OUTLINED_FUNCTION_0_0(v16);
  v18 = *(v17 + 104);

  return v18(a1 + v15, v2);
}

uint64_t DataTableExposureEvent.Model.eventData.getter()
{
  OUTLINED_FUNCTION_6();
  v2 = sub_220CA0494();
  v3 = OUTLINED_FUNCTION_1(v2);
  v5 = *(v4 + 16);

  return v5(v0, v1, v3);
}

uint64_t DataTableExposureEvent.Model.timedData.getter()
{
  v0 = OUTLINED_FUNCTION_6();
  v1 = *(type metadata accessor for DataTableExposureEvent.Model(v0) + 20);
  v2 = sub_220CA04D4();
  OUTLINED_FUNCTION_1(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_2();

  return v6(v5);
}

uint64_t DataTableExposureEvent.Model.orientationData.getter()
{
  v2 = OUTLINED_FUNCTION_6();
  result = type metadata accessor for DataTableExposureEvent.Model(v2);
  *v0 = *(v1 + *(result + 24));
  return result;
}

uint64_t DataTableExposureEvent.Model.hostViewData.getter()
{
  v2 = OUTLINED_FUNCTION_6();
  v3 = (v1 + *(type metadata accessor for DataTableExposureEvent.Model(v2) + 28));
  v5 = *v3;
  v4 = v3[1];
  LOWORD(v3) = *(v3 + 8);
  *v0 = v5;
  *(v0 + 8) = v4;
  *(v0 + 16) = v3;
}

uint64_t DataTableExposureEvent.Model.privateUserData.getter()
{
  v2 = OUTLINED_FUNCTION_6();
  v3 = (v1 + *(type metadata accessor for DataTableExposureEvent.Model(v2) + 32));
  v5 = *v3;
  v4 = v3[1];
  v6 = *(v3 + 4);
  LOBYTE(v3) = *(v3 + 20);
  *v0 = v5;
  *(v0 + 8) = v4;
  *(v0 + 16) = v6;
  *(v0 + 20) = v3;
}

uint64_t DataTableExposureEvent.Model.init(eventData:timedData:orientationData:hostViewData:privateUserData:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int16 *a3@<X2>, uint64_t *a4@<X3>, uint64_t *a5@<X4>, uint64_t a6@<X8>)
{
  v9 = *a3;
  v10 = *a4;
  v11 = a4[1];
  v12 = *(a4 + 8);
  v13 = a5[1];
  v25 = *a5;
  v14 = *(a5 + 4);
  v24 = *(a5 + 20);
  v15 = sub_220CA0494();
  OUTLINED_FUNCTION_0_0(v15);
  (*(v16 + 32))(a6, a1);
  v17 = type metadata accessor for DataTableExposureEvent.Model(0);
  v18 = v17[5];
  v19 = sub_220CA04D4();
  OUTLINED_FUNCTION_0_0(v19);
  result = (*(v20 + 32))(a6 + v18, a2);
  *(a6 + v17[6]) = v9;
  v22 = a6 + v17[7];
  *v22 = v10;
  *(v22 + 8) = v11;
  *(v22 + 16) = v12;
  v23 = a6 + v17[8];
  *v23 = v25;
  *(v23 + 8) = v13;
  *(v23 + 16) = v14;
  *(v23 + 20) = v24;
  return result;
}

uint64_t sub_220C4BD40(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746144746E657665 && a2 == 0xE900000000000061;
  if (v4 || (sub_220CA1154() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x74614464656D6974 && a2 == 0xE900000000000061;
    if (v6 || (sub_220CA1154() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x7461746E6569726FLL && a2 == 0xEF617461446E6F69;
      if (v7 || (sub_220CA1154() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x7765695674736F68 && a2 == 0xEC00000061746144;
        if (v8 || (sub_220CA1154() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 0x5565746176697270 && a2 == 0xEF61746144726573)
        {

          return 4;
        }

        else
        {
          v10 = sub_220CA1154();

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

uint64_t sub_220C4BF04(char a1)
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
      result = 0x7765695674736F68;
      break;
    case 4:
      result = 0x5565746176697270;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_220C4BFC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_220C4BD40(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_220C4BFEC(uint64_t a1)
{
  v2 = sub_220C4C310();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_220C4C028(uint64_t a1)
{
  v2 = sub_220C4C310();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t DataTableExposureEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7C300, &qword_220CA84D8);
  v6 = OUTLINED_FUNCTION_3(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  v12 = &v29 - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220C4C310();
  sub_220CA1254();
  LOBYTE(v30) = 0;
  sub_220CA0494();
  OUTLINED_FUNCTION_7();
  sub_220C04F84(v14, v15);
  OUTLINED_FUNCTION_17();
  if (!v2)
  {
    v16 = type metadata accessor for DataTableExposureEvent.Model(0);
    v17 = v16[5];
    LOBYTE(v30) = 1;
    sub_220CA04D4();
    OUTLINED_FUNCTION_5_0();
    sub_220C04F84(v18, v19);
    OUTLINED_FUNCTION_17();
    LOWORD(v30) = *(v3 + v16[6]);
    v34 = 2;
    sub_220BFE5BC();
    OUTLINED_FUNCTION_8_1();
    OUTLINED_FUNCTION_17();
    v20 = (v3 + v16[7]);
    v21 = *v20;
    v22 = v20[1];
    LOWORD(v20) = *(v20 + 8);
    v30 = v21;
    v31 = v22;
    LOWORD(v32) = v20;
    v34 = 3;
    v23 = sub_220C04820();

    OUTLINED_FUNCTION_8_1();
    OUTLINED_FUNCTION_17();

    if (!v23)
    {
      v24 = (v3 + v16[8]);
      v25 = *v24;
      v26 = v24[1];
      v27 = *(v24 + 4);
      LOBYTE(v24) = *(v24 + 20);
      v30 = v25;
      v31 = v26;
      v32 = v27;
      v33 = v24;
      v34 = 4;
      sub_220BFF788();

      OUTLINED_FUNCTION_8_1();
      OUTLINED_FUNCTION_17();
    }
  }

  return (*(v8 + 8))(v12, v5);
}

unint64_t sub_220C4C310()
{
  result = qword_27CF7C308;
  if (!qword_27CF7C308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7C308);
  }

  return result;
}

uint64_t DataTableExposureEvent.Model.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v50 = a2;
  v53 = sub_220CA04D4();
  v3 = OUTLINED_FUNCTION_3(v53);
  v51 = v4;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_11();
  v9 = v8 - v7;
  v10 = sub_220CA0494();
  v11 = OUTLINED_FUNCTION_3(v10);
  v52 = v12;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_11();
  v55 = v16 - v15;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7C310, &qword_220CA84E0);
  v17 = OUTLINED_FUNCTION_3(v57);
  v54 = v18;
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v17);
  v22 = &v50 - v21;
  v23 = type metadata accessor for DataTableExposureEvent.Model(0);
  v24 = OUTLINED_FUNCTION_1(v23);
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_11();
  v29 = v28 - v27;
  v30 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220C4C310();
  v56 = v22;
  v31 = v58;
  sub_220CA1234();
  if (v31)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v32 = v9;
  v33 = v52;
  v34 = v53;
  LOBYTE(v59) = 0;
  OUTLINED_FUNCTION_7();
  sub_220C04F84(v35, v36);
  sub_220CA1034();
  v37 = *(v33 + 32);
  v38 = v29;
  v58 = v10;
  v37(v29, v55);
  LOBYTE(v59) = 1;
  OUTLINED_FUNCTION_5_0();
  sub_220C04F84(v39, v40);
  sub_220CA1034();
  (*(v51 + 32))(v29 + v23[5], v32, v34);
  v63 = 2;
  sub_220BFE564();
  OUTLINED_FUNCTION_7_8();
  v55 = 0;
  sub_220CA1034();
  *(v29 + v23[6]) = v59;
  v63 = 3;
  sub_220C0449C();
  OUTLINED_FUNCTION_7_8();
  sub_220CA1034();
  v41 = v54;
  v42 = v60;
  v43 = v61;
  v44 = v38 + v23[7];
  *v44 = v59;
  *(v44 + 8) = v42;
  *(v44 + 16) = v43;
  v63 = 4;
  sub_220BFF730();
  OUTLINED_FUNCTION_7_8();
  sub_220CA1034();
  (*(v41 + 8))(v56, v57);
  v45 = v60;
  v46 = v61;
  v47 = v62;
  v48 = v38 + v23[8];
  *v48 = v59;
  *(v48 + 8) = v45;
  *(v48 + 16) = v46;
  *(v48 + 20) = v47;
  sub_220C4C860(v38, v50);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_220C4C8C4(v38);
}

uint64_t sub_220C4C860(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DataTableExposureEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_220C4C8C4(uint64_t a1)
{
  v2 = type metadata accessor for DataTableExposureEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_220C4C988()
{
  sub_220C04EB8();
  if (v0 <= 0x3F)
  {
    sub_220C05010();
    if (v1 <= 0x3F)
    {
      sub_220C05250(319, &qword_2812D0E20, sub_220BFE564, sub_220BFE5BC);
      if (v2 <= 0x3F)
      {
        sub_220C05250(319, &qword_2812D0DB8, sub_220C0449C, sub_220C04820);
        if (v3 <= 0x3F)
        {
          sub_220C05250(319, &qword_2812D0E18, sub_220BFF730, sub_220BFF788);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_220C4CB24()
{
  result = sub_220CA0494();
  if (v1 <= 0x3F)
  {
    result = sub_220CA04D4();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for DataTableExposureEvent.Model.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_220C4CCA4()
{
  result = qword_27CF7C338;
  if (!qword_27CF7C338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7C338);
  }

  return result;
}

unint64_t sub_220C4CCFC()
{
  result = qword_27CF7C340;
  if (!qword_27CF7C340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7C340);
  }

  return result;
}

unint64_t sub_220C4CD54()
{
  result = qword_27CF7C348;
  if (!qword_27CF7C348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7C348);
  }

  return result;
}

WeatherAnalytics::WidgetRefreshFailureReason_optional __swiftcall WidgetRefreshFailureReason.init(rawValue:)(Swift::String rawValue)
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

uint64_t WidgetRefreshFailureReason.rawValue.getter()
{
  v1 = 0x697461636F4C6F6ELL;
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
    return 0x6568746165576F6ELL;
  }
}

unint64_t sub_220C4CE84()
{
  result = qword_27CF7C350;
  if (!qword_27CF7C350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7C350);
  }

  return result;
}

uint64_t sub_220C4CEFC@<X0>(uint64_t *a1@<X8>)
{
  result = WidgetRefreshFailureReason.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

_BYTE *storeEnumTagSinglePayload for WidgetRefreshFailureReason(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_220C4D0A0()
{
  result = qword_27CF7C358;
  if (!qword_27CF7C358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7C358);
  }

  return result;
}

uint64_t ReverseGeocodeSource.init(_:)@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = sub_220C9FCC4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, a1, v4);
  v9 = (*(v5 + 88))(v8, v4);
  if (v9 != *MEMORY[0x277D7AB18])
  {
    if (v9 != *MEMORY[0x277D7AB10])
    {
      if (v9 == *MEMORY[0x277D7AB20])
      {
        v10 = 2;
        goto LABEL_8;
      }

      (*(v5 + 8))(v8, v4);
    }

    v10 = 1;
    goto LABEL_8;
  }

  v10 = 0;
LABEL_8:
  *a2 = v10;
  return (*(v5 + 8))(a1, v4);
}

uint64_t DebugData.name.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t DebugData.name.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t sub_220C4D300(uint64_t a1, uint64_t a2)
{
  if (a1 == 1701667182 && a2 == 0xE400000000000000)
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

uint64_t sub_220C4D38C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_220C4D300(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_220C4D3B8(uint64_t a1)
{
  v2 = sub_220C4D55C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_220C4D3F4(uint64_t a1)
{
  v2 = sub_220C4D55C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t DebugData.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7C360, &qword_220CA8850);
  v5 = OUTLINED_FUNCTION_0(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  v11 = &v16 - v10;
  v12 = *v1;
  v13 = v1[1];
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220C4D55C();
  sub_220CA1254();
  sub_220CA10C4();
  return (*(v7 + 8))(v11, v2);
}

unint64_t sub_220C4D55C()
{
  result = qword_27CF7C368;
  if (!qword_27CF7C368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7C368);
  }

  return result;
}

uint64_t DebugData.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7C370, &qword_220CA8858);
  v7 = OUTLINED_FUNCTION_0(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v7);
  v13 = &v19 - v12;
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220C4D55C();
  sub_220CA1234();
  if (!v2)
  {
    v15 = sub_220CA0FF4();
    v17 = v16;
    (*(v9 + 8))(v13, v3);
    *a2 = v15;
    a2[1] = v17;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

_BYTE *storeEnumTagSinglePayload for DebugData.CodingKeys(_BYTE *result, int a2, int a3)
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

unint64_t sub_220C4D7F4()
{
  result = qword_27CF7C378;
  if (!qword_27CF7C378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7C378);
  }

  return result;
}

unint64_t sub_220C4D84C()
{
  result = qword_27CF7C380;
  if (!qword_27CF7C380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7C380);
  }

  return result;
}

unint64_t sub_220C4D8A4()
{
  result = qword_27CF7C388;
  if (!qword_27CF7C388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7C388);
  }

  return result;
}

uint64_t sub_220C4D918()
{
  v1 = *(MEMORY[0x277D859E0] + 4);
  v2 = swift_task_alloc();
  *(v0 + 24) = v2;
  *v2 = v0;
  v2[1] = sub_220C4D9E8;
  v3 = *(v0 + 16);

  return MEMORY[0x2822007B8]();
}

uint64_t sub_220C4D9E8()
{
  v1 = *(*v0 + 24);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_220C35E48, 0, 0);
}

uint64_t sub_220C4DAE4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7BE38, &unk_220CA5D40);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v13 - v7;
  v9 = *(a2 + 16);
  (*(v5 + 16))(&v13 - v7, a1, v4);
  v10 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v11 = swift_allocObject();
  (*(v5 + 32))(v11 + v10, v8, v4);
  sub_220C9FF34();
}

uint64_t sub_220C4DC30()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

uint64_t sub_220C4DD5C()
{
  v0 = sub_220CA0254();
  __swift_allocate_value_buffer(v0, qword_27CF7C390);
  __swift_project_value_buffer(v0, qword_27CF7C390);
  return sub_220CA0244();
}

uint64_t TelemetryEvent.networkEventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7C3A8, &unk_220CA8AC0);
  v4 = OUTLINED_FUNCTION_1(v3);
  v6 = *(v5 + 16);

  return v6(a1, v1, v4);
}

uint64_t TelemetryEvent.networkEventData.setter(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7C3A8, &unk_220CA8AC0);
  v4 = OUTLINED_FUNCTION_1(v3);
  v6 = *(v5 + 40);

  return v6(v1, a1, v4);
}

uint64_t TelemetryEvent.privateUserData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for TelemetryEvent() + 20);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B7F0, &qword_220CA3150);
  v5 = OUTLINED_FUNCTION_1(v4);
  v7 = *(v6 + 16);

  return v7(a1, v1 + v3, v5);
}

uint64_t type metadata accessor for TelemetryEvent()
{
  result = qword_2812D0530;
  if (!qword_2812D0530)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t TelemetryEvent.privateUserData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for TelemetryEvent() + 20);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B7F0, &qword_220CA3150);
  OUTLINED_FUNCTION_1(v4);
  v6 = *(v5 + 40);

  return v6(v1 + v3, a1);
}

uint64_t TelemetryEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7C3A8, &unk_220CA8AC0);
  OUTLINED_FUNCTION_1(v3);
  (*(v4 + 104))(a1, v2);
  v5 = *(type metadata accessor for TelemetryEvent() + 20);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B7F0, &qword_220CA3150);
  OUTLINED_FUNCTION_1(v6);
  v8 = *(v7 + 104);

  return v8(a1 + v5, v2);
}

uint64_t TelemetryEvent.Model.networkEventData.getter@<X0>(void *a1@<X8>)
{
  memcpy(__dst, v1, 0x8AuLL);
  memcpy(a1, v1, 0x8AuLL);
  return sub_220C4142C(__dst, v4);
}

uint64_t TelemetryEvent.Model.privateUserData.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 152);
  v3 = *(v1 + 160);
  v4 = *(v1 + 164);
  *a1 = *(v1 + 144);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 20) = v4;
}

void *TelemetryEvent.Model.init(networkEventData:privateUserData:)@<X0>(void *__src@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *a2;
  v5 = a2[1];
  v6 = *(a2 + 4);
  v7 = *(a2 + 20);
  result = memcpy(a3, __src, 0x8AuLL);
  *(a3 + 144) = v4;
  *(a3 + 152) = v5;
  *(a3 + 160) = v6;
  *(a3 + 164) = v7;
  return result;
}

uint64_t sub_220C4E204(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000010 && 0x8000000220CB56C0 == a2;
  if (v3 || (sub_220CA1154() & 1) != 0)
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

uint64_t sub_220C4E2DC(char a1)
{
  if (a1)
  {
    return 0x5565746176697270;
  }

  else
  {
    return 0xD000000000000010;
  }
}

uint64_t sub_220C4E32C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_220C4E204(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_220C4E354(uint64_t a1)
{
  v2 = sub_220C4E5E4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_220C4E390(uint64_t a1)
{
  v2 = sub_220C4E5E4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t TelemetryEvent.Model.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7C3B0, &qword_220CA8AD0);
  v5 = OUTLINED_FUNCTION_3(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  v11 = &v15 - v10;
  memcpy(__dst, v1, 0x8AuLL);
  v12 = *(v1 + 152);
  v17 = *(v1 + 144);
  v18 = v12;
  v26 = *(v1 + 160);
  v16 = *(v1 + 164);
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220C4142C(__dst, v24);
  sub_220C4E5E4();
  sub_220CA1254();
  memcpy(v24, __dst, 0x8AuLL);
  v28 = 0;
  sub_220C414F0();
  sub_220CA1104();
  memcpy(v23, v24, 0x8AuLL);
  sub_220C41464(v23);
  if (!v2)
  {
    v19 = v17;
    v20 = v18;
    v21 = v26;
    v22 = v16;
    v27 = 1;
    sub_220BFF788();

    sub_220CA1104();
  }

  return (*(v7 + 8))(v11, v4);
}

unint64_t sub_220C4E5E4()
{
  result = qword_27CF7C3B8;
  if (!qword_27CF7C3B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7C3B8);
  }

  return result;
}

uint64_t TelemetryEvent.Model.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7C3C0, &qword_220CA8AD8);
  v5 = OUTLINED_FUNCTION_3(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220C4E5E4();
  sub_220CA1234();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  __dst[167] = 0;
  sub_220C41498();
  OUTLINED_FUNCTION_3_10();
  memcpy(__dst, v27, 0x8AuLL);
  __dst[166] = 1;
  sub_220BFF730();
  OUTLINED_FUNCTION_3_10();
  v9 = OUTLINED_FUNCTION_1_15();
  v10(v9);
  v11 = v23;
  v12 = v24;
  v13 = v25;
  __dst[164] = v26;
  memcpy(v17, __dst, 0x90uLL);
  v17[18] = v23;
  v17[19] = v24;
  LODWORD(v17[20]) = v25;
  v14 = v26;
  BYTE4(v17[20]) = v26;
  memcpy(a2, v17, 0xA5uLL);
  sub_220C4E888(v17, v18);
  __swift_destroy_boxed_opaque_existential_1(a1);
  memcpy(v18, __dst, sizeof(v18));
  v19 = v11;
  v20 = v12;
  v21 = v13;
  v22 = v14;
  return sub_220C4E8C0(v18);
}

void sub_220C4E958()
{
  sub_220C4EA4C(319, &qword_2812D0E50, sub_220C41498, sub_220C414F0);
  if (v0 <= 0x3F)
  {
    sub_220C4EA4C(319, &qword_2812D0E18, sub_220BFF730, sub_220BFF788);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_220C4EA4C(uint64_t a1, unint64_t *a2, void (*a3)(void), void (*a4)(void))
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

uint64_t sub_220C4EAD0(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 165))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 96);
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

uint64_t sub_220C4EB10(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 152) = 0;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 164) = 0;
    *(result + 160) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 165) = 1;
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
      *(result + 96) = (a2 - 1);
      return result;
    }

    *(result + 165) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for TelemetryEvent.Model.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_220C4EC70()
{
  result = qword_27CF7C3C8;
  if (!qword_27CF7C3C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7C3C8);
  }

  return result;
}

unint64_t sub_220C4ECC8()
{
  result = qword_27CF7C3D0;
  if (!qword_27CF7C3D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7C3D0);
  }

  return result;
}

unint64_t sub_220C4ED20()
{
  result = qword_27CF7C3D8;
  if (!qword_27CF7C3D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7C3D8);
  }

  return result;
}

uint64_t sub_220C4EE3C()
{
  v0 = sub_220CA0254();
  __swift_allocate_value_buffer(v0, qword_27CF7C3F8);
  __swift_project_value_buffer(v0, qword_27CF7C3F8);
  return sub_220CA0244();
}

uint64_t WeatherDataLoadFailedEvent.data.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7C410, &qword_220CA8D20);
  v4 = OUTLINED_FUNCTION_1(v3);
  v6 = *(v5 + 16);

  return v6(a1, v1, v4);
}

uint64_t WeatherDataLoadFailedEvent.data.setter(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7C410, &qword_220CA8D20);
  v4 = OUTLINED_FUNCTION_1(v3);
  v6 = *(v5 + 40);

  return v6(v1, a1, v4);
}

uint64_t WeatherDataLoadFailedEvent.timedData.getter()
{
  v0 = OUTLINED_FUNCTION_6();
  v1 = *(type metadata accessor for WeatherDataLoadFailedEvent(v0) + 20);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B610, &qword_220CA1EB0);
  OUTLINED_FUNCTION_1(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_2();

  return v6(v5);
}

uint64_t WeatherDataLoadFailedEvent.timedData.setter()
{
  v2 = *(OUTLINED_FUNCTION_8_7() + 20);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B610, &qword_220CA1EB0);
  OUTLINED_FUNCTION_1(v3);
  v5 = *(v4 + 40);

  return v5(v1 + v2, v0);
}

uint64_t WeatherDataLoadFailedEvent.privateUserData.getter()
{
  v0 = OUTLINED_FUNCTION_6();
  v1 = *(type metadata accessor for WeatherDataLoadFailedEvent(v0) + 24);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B7F0, &qword_220CA3150);
  OUTLINED_FUNCTION_1(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_2();

  return v6(v5);
}

uint64_t WeatherDataLoadFailedEvent.privateUserData.setter()
{
  v2 = *(OUTLINED_FUNCTION_8_7() + 24);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B7F0, &qword_220CA3150);
  OUTLINED_FUNCTION_1(v3);
  v5 = *(v4 + 40);

  return v5(v1 + v2, v0);
}

uint64_t WeatherDataLoadFailedEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7C410, &qword_220CA8D20);
  OUTLINED_FUNCTION_1(v3);
  (*(v4 + 104))(a1, v2);
  FailedEvent = type metadata accessor for WeatherDataLoadFailedEvent(0);
  v6 = *(FailedEvent + 20);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B610, &qword_220CA1EB0);
  OUTLINED_FUNCTION_1(v7);
  (*(v8 + 104))(a1 + v6, v2);
  v9 = *(FailedEvent + 24);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B7F0, &qword_220CA3150);
  OUTLINED_FUNCTION_1(v10);
  v12 = *(v11 + 104);

  return v12(a1 + v9, v2);
}

uint64_t WeatherDataLoadFailedEvent.Model.data.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t WeatherDataLoadFailedEvent.Model.timedData.getter()
{
  v0 = OUTLINED_FUNCTION_6();
  v1 = *(type metadata accessor for WeatherDataLoadFailedEvent.Model(v0) + 20);
  v2 = sub_220CA04D4();
  OUTLINED_FUNCTION_1(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_2();

  return v6(v5);
}

uint64_t WeatherDataLoadFailedEvent.Model.privateUserData.getter()
{
  v2 = OUTLINED_FUNCTION_6();
  v3 = (v1 + *(type metadata accessor for WeatherDataLoadFailedEvent.Model(v2) + 24));
  v5 = *v3;
  v4 = v3[1];
  v6 = *(v3 + 4);
  LOBYTE(v3) = *(v3 + 20);
  *v0 = v5;
  *(v0 + 8) = v4;
  *(v0 + 16) = v6;
  *(v0 + 20) = v3;
}

uint64_t WeatherDataLoadFailedEvent.Model.init(data:timedData:privateUserData:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, char *a4@<X8>)
{
  v6 = a1[1];
  v7 = *a3;
  v8 = a3[1];
  v9 = *(a3 + 4);
  v10 = *(a3 + 20);
  *a4 = *a1;
  *(a4 + 1) = v6;
  Failed = type metadata accessor for WeatherDataLoadFailedEvent.Model(0);
  v12 = *(Failed + 20);
  v13 = sub_220CA04D4();
  OUTLINED_FUNCTION_1(v13);
  result = (*(v14 + 32))(&a4[v12], a2);
  v16 = &a4[*(Failed + 24)];
  *v16 = v7;
  *(v16 + 1) = v8;
  *(v16 + 4) = v9;
  v16[20] = v10;
  return result;
}

uint64_t sub_220C4F4D4(uint64_t a1)
{
  v2 = sub_220C4F750();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_220C4F510(uint64_t a1)
{
  v2 = sub_220C4F750();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t WeatherDataLoadFailedEvent.Model.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7C418, &qword_220CA8D28);
  v5 = OUTLINED_FUNCTION_3(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  v11 = &v22 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220C4F750();
  sub_220CA1254();
  v13 = v2[1];
  v23 = *v2;
  v24 = v13;
  v27 = 0;
  v14 = sub_220C4F7A4();

  OUTLINED_FUNCTION_3_3();

  if (!v14)
  {
    Failed = type metadata accessor for WeatherDataLoadFailedEvent.Model(0);
    v16 = *(Failed + 20);
    LOBYTE(v23) = 1;
    sub_220CA04D4();
    sub_220C315AC(&qword_2812D0D80);
    sub_220CA1104();
    v17 = v2 + *(Failed + 24);
    v18 = *v17;
    v19 = *(v17 + 1);
    v20 = *(v17 + 4);
    LOBYTE(v17) = v17[20];
    v23 = v18;
    v24 = v19;
    v25 = v20;
    v26 = v17;
    v27 = 2;
    sub_220BFF788();

    OUTLINED_FUNCTION_3_3();
  }

  return (*(v7 + 8))(v11, v4);
}

unint64_t sub_220C4F750()
{
  result = qword_27CF7C420;
  if (!qword_27CF7C420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7C420);
  }

  return result;
}

unint64_t sub_220C4F7A4()
{
  result = qword_2812D0880;
  if (!qword_2812D0880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812D0880);
  }

  return result;
}

uint64_t WeatherDataLoadFailedEvent.Model.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v34 = a2;
  v4 = sub_220CA04D4();
  v5 = OUTLINED_FUNCTION_3(v4);
  v35 = v6;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7C428, &qword_220CA8D30);
  v12 = OUTLINED_FUNCTION_3(v11);
  v36 = v13;
  v37 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v12);
  Failed = type metadata accessor for WeatherDataLoadFailedEvent.Model(0);
  v17 = OUTLINED_FUNCTION_1(Failed);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v21 = &v34 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = a1[3];
  v23 = a1[4];
  v38 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v22);
  sub_220C4F750();
  sub_220CA1234();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(v38);
  }

  v24 = v21;
  v25 = v35;
  v43 = 0;
  sub_220C4FB6C();
  OUTLINED_FUNCTION_4_6();
  sub_220CA1034();
  v26 = v40;
  *v24 = v39;
  *(v24 + 1) = v26;
  LOBYTE(v39) = 1;
  sub_220C315AC(&qword_2812D0D78);
  sub_220CA1034();
  (*(v25 + 32))(&v24[*(Failed + 20)], v10, v4);
  v43 = 2;
  sub_220BFF730();
  OUTLINED_FUNCTION_4_6();
  sub_220CA1034();
  v27 = OUTLINED_FUNCTION_6_1();
  v28(v27, v37);
  v29 = v40;
  v30 = v41;
  v31 = v42;
  v32 = &v24[*(Failed + 24)];
  *v32 = v39;
  *(v32 + 1) = v29;
  *(v32 + 4) = v30;
  v32[20] = v31;
  sub_220C4FBC0(v24, v34);
  __swift_destroy_boxed_opaque_existential_1(v38);
  return sub_220C4FC24(v24);
}

unint64_t sub_220C4FB6C()
{
  result = qword_2812D0878;
  if (!qword_2812D0878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812D0878);
  }

  return result;
}

uint64_t sub_220C4FBC0(uint64_t a1, uint64_t a2)
{
  Failed = type metadata accessor for WeatherDataLoadFailedEvent.Model(0);
  (*(*(Failed - 8) + 16))(a2, a1, Failed);
  return a2;
}

uint64_t sub_220C4FC24(uint64_t a1)
{
  Failed = type metadata accessor for WeatherDataLoadFailedEvent.Model(0);
  (*(*(Failed - 8) + 8))(a1, Failed);
  return a1;
}

void sub_220C4FCE8()
{
  sub_220C4FDF4(319, &qword_2812D0E48, sub_220C4FB6C, sub_220C4F7A4);
  if (v0 <= 0x3F)
  {
    sub_220C05010();
    if (v1 <= 0x3F)
    {
      sub_220C4FDF4(319, &qword_2812D0E18, sub_220BFF730, sub_220BFF788);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_220C4FDF4(uint64_t a1, unint64_t *a2, void (*a3)(void), void (*a4)(void))
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

uint64_t sub_220C4FE98()
{
  result = sub_220CA04D4();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for WeatherDataLoadFailedEvent.Model.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_220C4FFFC()
{
  result = qword_27CF7C440;
  if (!qword_27CF7C440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7C440);
  }

  return result;
}

unint64_t sub_220C50054()
{
  result = qword_27CF7C448;
  if (!qword_27CF7C448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7C448);
  }

  return result;
}

unint64_t sub_220C500AC()
{
  result = qword_27CF7C450;
  if (!qword_27CF7C450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7C450);
  }

  return result;
}

uint64_t MissedPrecipitationNotificationData.currentPrecipitationForecastData.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  return OUTLINED_FUNCTION_1_16(*(v1 + 24), a1);
}

uint64_t MissedPrecipitationNotificationData.currentPrecipitationForecastData.setter(int *a1)
{
  v2 = *a1;
  v3 = *(a1 + 1);
  v4 = *(a1 + 2);
  v5 = *(v1 + 24);

  *(v1 + 8) = v2;
  *(v1 + 16) = v3;
  *(v1 + 24) = v4;
  return result;
}

uint64_t MissedPrecipitationNotificationData.previousPrecipitationForecastData.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 32);
  v3 = *(v1 + 40);
  return OUTLINED_FUNCTION_1_16(*(v1 + 48), a1);
}

uint64_t MissedPrecipitationNotificationData.previousPrecipitationForecastData.setter(int *a1)
{
  v2 = *a1;
  v3 = *(a1 + 1);
  v4 = *(a1 + 2);
  v5 = *(v1 + 48);

  *(v1 + 32) = v2;
  *(v1 + 40) = v3;
  *(v1 + 48) = v4;
  return result;
}

_BYTE *MissedPrecipitationNotificationData.init(notificationType:currentPrecipitationForecastData:previousPrecipitationForecastData:)@<X0>(_BYTE *result@<X0>, int *a2@<X1>, int *a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *a2;
  v5 = *(a2 + 1);
  v6 = *(a2 + 2);
  v7 = *a3;
  v8 = *(a3 + 1);
  v9 = *(a3 + 2);
  *a4 = *result;
  *(a4 + 8) = v4;
  *(a4 + 16) = v5;
  *(a4 + 24) = v6;
  *(a4 + 32) = v7;
  *(a4 + 40) = v8;
  *(a4 + 48) = v9;
  return result;
}

uint64_t sub_220C5023C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000010 && 0x8000000220CB56E0 == a2;
  if (v3 || (sub_220CA1154() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000020 && 0x8000000220CB5700 == a2;
    if (v6 || (sub_220CA1154() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0xD000000000000021 && 0x8000000220CB5730 == a2)
    {

      return 2;
    }

    else
    {
      v8 = sub_220CA1154();

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

unint64_t sub_220C50354(char a1)
{
  result = 0xD000000000000010;
  if (a1)
  {
    if (a1 == 1)
    {
      return 0xD000000000000020;
    }

    else
    {
      return 0xD000000000000021;
    }
  }

  return result;
}

uint64_t sub_220C503B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_220C5023C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_220C503DC(uint64_t a1)
{
  v2 = sub_220C50658();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_220C50418(uint64_t a1)
{
  v2 = sub_220C50658();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MissedPrecipitationNotificationData.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7C458, &qword_220CA8F50);
  v4 = OUTLINED_FUNCTION_3(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  v10 = &v19 - v9;
  v11 = *v1;
  v27 = *(v1 + 2);
  v12 = *(v1 + 3);
  v22 = *(v1 + 2);
  v21 = *(v1 + 8);
  v13 = *(v1 + 5);
  v19 = *(v1 + 6);
  v20 = v13;
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220C50658();
  sub_220CA1254();
  LOBYTE(v24) = v11;
  v28 = 0;
  sub_220C506AC();
  OUTLINED_FUNCTION_2_11();
  v15 = v23;
  sub_220CA1104();
  if (!v15)
  {
    v16 = v20;
    v17 = v21;
    v24 = v27;
    v25 = v22;
    v26 = v12;
    v28 = 1;
    sub_220C50700();

    OUTLINED_FUNCTION_2_11();
    sub_220CA1104();

    v24 = v17;
    v25 = v16;
    v26 = v19;
    v28 = 2;

    OUTLINED_FUNCTION_2_11();
    sub_220CA1104();
  }

  return (*(v6 + 8))(v10, v3);
}

unint64_t sub_220C50658()
{
  result = qword_27CF7C460;
  if (!qword_27CF7C460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7C460);
  }

  return result;
}

unint64_t sub_220C506AC()
{
  result = qword_27CF7C468;
  if (!qword_27CF7C468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7C468);
  }

  return result;
}

unint64_t sub_220C50700()
{
  result = qword_27CF7C470;
  if (!qword_27CF7C470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7C470);
  }

  return result;
}

uint64_t MissedPrecipitationNotificationData.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7C478, &qword_220CA8F58);
  v6 = OUTLINED_FUNCTION_3(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  v12 = &v20 - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220C50658();
  sub_220CA1234();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v27 = 0;
  sub_220C50998();
  OUTLINED_FUNCTION_0_14();
  sub_220CA1034();
  v14 = v23;
  v27 = 1;
  sub_220C509EC();
  OUTLINED_FUNCTION_0_14();
  sub_220CA1034();
  v26 = v23;
  v21 = v24;
  v22 = v25;
  v27 = 2;
  OUTLINED_FUNCTION_0_14();
  sub_220CA1034();
  (*(v8 + 8))(v12, v5);
  v15 = v23;
  v16 = v24;
  v17 = v25;
  *a2 = v14;
  *(a2 + 8) = v26;
  v18 = v22;
  *(a2 + 16) = v21;
  *(a2 + 24) = v18;
  *(a2 + 32) = v15;
  *(a2 + 40) = v16;
  *(a2 + 48) = v17;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_220C50998()
{
  result = qword_27CF7C480;
  if (!qword_27CF7C480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7C480);
  }

  return result;
}

unint64_t sub_220C509EC()
{
  result = qword_27CF7C488;
  if (!qword_27CF7C488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7C488);
  }

  return result;
}

uint64_t sub_220C50A78(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 56))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
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

uint64_t sub_220C50AB8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for MissedPrecipitationNotificationData.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_220C50BF4()
{
  result = qword_27CF7C490;
  if (!qword_27CF7C490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7C490);
  }

  return result;
}

unint64_t sub_220C50C4C()
{
  result = qword_27CF7C498;
  if (!qword_27CF7C498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7C498);
  }

  return result;
}

unint64_t sub_220C50CA4()
{
  result = qword_27CF7C4A0;
  if (!qword_27CF7C4A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7C4A0);
  }

  return result;
}

uint64_t sub_220C50DC0()
{
  v0 = sub_220CA0254();
  __swift_allocate_value_buffer(v0, qword_27CF7C4D8);
  __swift_project_value_buffer(v0, qword_27CF7C4D8);
  return sub_220CA0244();
}

uint64_t MenuLaunchDNUEvent.eventData.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B5F0, &unk_220CA1E90);
  OUTLINED_FUNCTION_1(v1);
  v3 = *(v2 + 16);
  v4 = OUTLINED_FUNCTION_6_0();

  return v5(v4, v0);
}

uint64_t MenuLaunchDNUEvent.eventData.setter(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B5F0, &unk_220CA1E90);
  v4 = OUTLINED_FUNCTION_1(v3);
  v6 = *(v5 + 40);

  return v6(v1, a1, v4);
}

uint64_t MenuLaunchDNUEvent.privateUserData.getter()
{
  v0 = *(type metadata accessor for MenuLaunchDNUEvent(0) + 20);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B7F0, &qword_220CA3150);
  OUTLINED_FUNCTION_1(v1);
  v3 = *(v2 + 16);
  v4 = OUTLINED_FUNCTION_6_0();

  return v5(v4);
}

uint64_t MenuLaunchDNUEvent.privateUserData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for MenuLaunchDNUEvent(0) + 20);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B7F0, &qword_220CA3150);
  OUTLINED_FUNCTION_1(v4);
  v6 = *(v5 + 40);

  return v6(v1 + v3, a1);
}

uint64_t MenuLaunchDNUEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B5F0, &unk_220CA1E90);
  OUTLINED_FUNCTION_1(v3);
  (*(v4 + 104))(a1, v2);
  v5 = *(type metadata accessor for MenuLaunchDNUEvent(0) + 20);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B7F0, &qword_220CA3150);
  OUTLINED_FUNCTION_1(v6);
  v8 = *(v7 + 104);

  return v8(a1 + v5, v2);
}

uint64_t MenuLaunchDNUEvent.Model.eventData.getter()
{
  v1 = sub_220CA0494();
  OUTLINED_FUNCTION_1(v1);
  v3 = *(v2 + 16);
  v4 = OUTLINED_FUNCTION_6_0();

  return v5(v4, v0);
}

uint64_t MenuLaunchDNUEvent.Model.privateUserData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for MenuLaunchDNUEvent.Model(0) + 20));
  v5 = *v3;
  v4 = v3[1];
  v6 = *(v3 + 4);
  LOBYTE(v3) = *(v3 + 20);
  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = v6;
  *(a1 + 20) = v3;
}

uint64_t MenuLaunchDNUEvent.Model.init(eventData:privateUserData:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a2;
  v6 = a2[1];
  v7 = *(a2 + 4);
  v8 = *(a2 + 20);
  v9 = sub_220CA0494();
  OUTLINED_FUNCTION_1(v9);
  (*(v10 + 32))(a3, a1);
  result = type metadata accessor for MenuLaunchDNUEvent.Model(0);
  v12 = a3 + *(result + 20);
  *v12 = v5;
  *(v12 + 8) = v6;
  *(v12 + 16) = v7;
  *(v12 + 20) = v8;
  return result;
}

uint64_t sub_220C512CC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746144746E657665 && a2 == 0xE900000000000061;
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

uint64_t sub_220C513A4(char a1)
{
  if (a1)
  {
    return 0x5565746176697270;
  }

  else
  {
    return 0x746144746E657665;
  }
}

uint64_t sub_220C513F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_220C512CC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_220C5141C(uint64_t a1)
{
  v2 = sub_220C5166C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_220C51458(uint64_t a1)
{
  v2 = sub_220C5166C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MenuLaunchDNUEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7C4F0, &qword_220CA9180);
  v6 = OUTLINED_FUNCTION_3(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  v12 = &v19[-v11];
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220C5166C();
  sub_220CA1254();
  LOBYTE(v20) = 0;
  sub_220CA0494();
  sub_220C04FCC(&qword_2812D0D90);
  sub_220CA1104();
  if (!v2)
  {
    v14 = (v3 + *(type metadata accessor for MenuLaunchDNUEvent.Model(0) + 20));
    v15 = *v14;
    v16 = v14[1];
    v17 = *(v14 + 4);
    LOBYTE(v14) = *(v14 + 20);
    v20 = v15;
    v21 = v16;
    v22 = v17;
    v23 = v14;
    v19[7] = 1;
    sub_220BFF788();

    sub_220CA1104();
  }

  return (*(v8 + 8))(v12, v5);
}

unint64_t sub_220C5166C()
{
  result = qword_27CF7C4F8;
  if (!qword_27CF7C4F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7C4F8);
  }

  return result;
}

uint64_t MenuLaunchDNUEvent.Model.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v34 = a2;
  v38 = sub_220CA0494();
  v4 = OUTLINED_FUNCTION_3(v38);
  v35 = v5;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7C500, &qword_220CA9188);
  v36 = OUTLINED_FUNCTION_3(v10);
  v37 = v11;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v36);
  v14 = type metadata accessor for MenuLaunchDNUEvent.Model(0);
  v15 = OUTLINED_FUNCTION_1(v14);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v32 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220C5166C();
  sub_220CA1234();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v33 = v14;
  v21 = v35;
  LOBYTE(v39) = 0;
  sub_220C04FCC(&qword_2812D0D88);
  v22 = v38;
  sub_220CA1034();
  v23 = *(v21 + 32);
  v32 = v19;
  v23(v19, v9, v22);
  v43 = 1;
  sub_220BFF730();
  sub_220CA1034();
  v24 = OUTLINED_FUNCTION_1_12();
  v25(v24);
  v26 = v40;
  v27 = v41;
  v28 = v42;
  v29 = v32;
  v30 = &v32[*(v33 + 20)];
  *v30 = v39;
  *(v30 + 1) = v26;
  *(v30 + 4) = v27;
  v30[20] = v28;
  sub_220C519DC(v29, v34);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_220C51A40(v29);
}

uint64_t sub_220C519DC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MenuLaunchDNUEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_220C51A40(uint64_t a1)
{
  v2 = type metadata accessor for MenuLaunchDNUEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_220C51B04()
{
  sub_220C04EB8();
  if (v0 <= 0x3F)
  {
    sub_220C43144();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_220C51BB0()
{
  result = sub_220CA0494();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for MenuLaunchDNUEvent.Model.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_220C51D04()
{
  result = qword_27CF7C528;
  if (!qword_27CF7C528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7C528);
  }

  return result;
}

unint64_t sub_220C51D5C()
{
  result = qword_27CF7C530;
  if (!qword_27CF7C530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7C530);
  }

  return result;
}

unint64_t sub_220C51DB4()
{
  result = qword_27CF7C538;
  if (!qword_27CF7C538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7C538);
  }

  return result;
}

uint64_t sub_220C51ED0()
{
  v0 = sub_220CA0254();
  __swift_allocate_value_buffer(v0, qword_27CF7C570);
  __swift_project_value_buffer(v0, qword_27CF7C570);
  return sub_220CA0244();
}

uint64_t MenuLaunchEvent.menuLaunchData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7C588, &qword_220CA9390);
  v4 = OUTLINED_FUNCTION_1(v3);
  v6 = *(v5 + 16);

  return v6(a1, v1, v4);
}

uint64_t MenuLaunchEvent.menuLaunchData.setter(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7C588, &qword_220CA9390);
  v4 = OUTLINED_FUNCTION_1(v3);
  v6 = *(v5 + 40);

  return v6(v1, a1, v4);
}

uint64_t MenuLaunchEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7C588, &qword_220CA9390);
  v4 = OUTLINED_FUNCTION_1(v3);
  v6 = *(v5 + 104);

  return v6(a1, v2, v4);
}

uint64_t MenuLaunchEvent.Model.menuLaunchData.getter@<X0>(void *a1@<X8>)
{
  memcpy(__dst, v1, sizeof(__dst));
  memcpy(a1, v1, 0x60uLL);
  return sub_220C52118(__dst, &v4);
}

uint64_t sub_220C52184(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x6E75614C756E656DLL && a2 == 0xEE00617461446863)
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

uint64_t sub_220C5222C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_220C52184(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_220C52258(uint64_t a1)
{
  v2 = sub_220C52458();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_220C52294(uint64_t a1)
{
  v2 = sub_220C52458();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MenuLaunchEvent.Model.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7C590, &qword_220CA9398);
  v4 = OUTLINED_FUNCTION_3(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  v10 = &v14[-v9 - 8];
  memcpy(__dst, v1, 0x60uLL);
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220C52118(__dst, v15);
  sub_220C52458();
  sub_220CA1254();
  memcpy(v15, __dst, sizeof(v15));
  sub_220C524AC();
  sub_220CA1104();
  memcpy(v14, v15, sizeof(v14));
  sub_220C52500(v14);
  return (*(v6 + 8))(v10, v3);
}

unint64_t sub_220C52458()
{
  result = qword_27CF7C598;
  if (!qword_27CF7C598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7C598);
  }

  return result;
}

unint64_t sub_220C524AC()
{
  result = qword_27CF7C5A0;
  if (!qword_27CF7C5A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7C5A0);
  }

  return result;
}

uint64_t MenuLaunchEvent.Model.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7C5A8, &qword_220CA93A0);
  v6 = OUTLINED_FUNCTION_3(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  v12 = &__src[-v11];
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220C52458();
  sub_220CA1234();
  if (!v2)
  {
    sub_220C526C0();
    sub_220CA1034();
    (*(v8 + 8))(v12, v5);
    memcpy(a2, __src, 0x60uLL);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_220C526C0()
{
  result = qword_27CF7C5B0;
  if (!qword_27CF7C5B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7C5B0);
  }

  return result;
}

uint64_t type metadata accessor for MenuLaunchEvent()
{
  result = qword_27CF7C5B8;
  if (!qword_27CF7C5B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_220C527C8()
{
  sub_220C52834();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_220C52834()
{
  if (!qword_27CF7C5C8)
  {
    sub_220C526C0();
    sub_220C524AC();
    v0 = sub_220CA0044();
    if (!v1)
    {
      atomic_store(v0, &qword_27CF7C5C8);
    }
  }
}

_BYTE *storeEnumTagSinglePayload for MenuLaunchEvent.Model.CodingKeys(_BYTE *result, int a2, int a3)
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

unint64_t sub_220C5295C()
{
  result = qword_27CF7C5D0;
  if (!qword_27CF7C5D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7C5D0);
  }

  return result;
}

unint64_t sub_220C529B4()
{
  result = qword_27CF7C5D8;
  if (!qword_27CF7C5D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7C5D8);
  }

  return result;
}

unint64_t sub_220C52A0C()
{
  result = qword_27CF7C5E0;
  if (!qword_27CF7C5E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7C5E0);
  }

  return result;
}

uint64_t sub_220C52B28()
{
  v0 = sub_220CA0254();
  __swift_allocate_value_buffer(v0, qword_27CF7C618);
  __swift_project_value_buffer(v0, qword_27CF7C618);
  return sub_220CA0244();
}

uint64_t MenuDetailViewEvent.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B5F0, &unk_220CA1E90);
  v4 = OUTLINED_FUNCTION_1(v3);
  v6 = *(v5 + 16);

  return v6(a1, v1, v4);
}

uint64_t MenuDetailViewEvent.eventData.setter(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B5F0, &unk_220CA1E90);
  v4 = OUTLINED_FUNCTION_1(v3);
  v6 = *(v5 + 40);

  return v6(v1, a1, v4);
}

uint64_t MenuDetailViewEvent.timedData.getter()
{
  v0 = OUTLINED_FUNCTION_6();
  v1 = *(type metadata accessor for MenuDetailViewEvent(v0) + 20);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B610, &qword_220CA1EB0);
  OUTLINED_FUNCTION_1(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_2();

  return v6(v5);
}

uint64_t MenuDetailViewEvent.timedData.setter()
{
  v2 = *(OUTLINED_FUNCTION_10_4() + 20);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B610, &qword_220CA1EB0);
  OUTLINED_FUNCTION_0_0(v3);
  v5 = *(v4 + 40);

  return v5(v1 + v2, v0);
}

uint64_t MenuDetailViewEvent.elevatedViewData.getter()
{
  v0 = OUTLINED_FUNCTION_6();
  v1 = *(type metadata accessor for MenuDetailViewEvent(v0) + 24);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7C630, &unk_220CA95E0);
  OUTLINED_FUNCTION_1(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_2();

  return v6(v5);
}

uint64_t MenuDetailViewEvent.elevatedViewData.setter()
{
  v2 = *(OUTLINED_FUNCTION_10_4() + 24);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7C630, &unk_220CA95E0);
  OUTLINED_FUNCTION_0_0(v3);
  v5 = *(v4 + 40);

  return v5(v1 + v2, v0);
}

uint64_t MenuDetailViewEvent.privateUserData.getter()
{
  v0 = OUTLINED_FUNCTION_6();
  v1 = *(type metadata accessor for MenuDetailViewEvent(v0) + 28);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B7F0, &qword_220CA3150);
  OUTLINED_FUNCTION_1(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_2();

  return v6(v5);
}

uint64_t MenuDetailViewEvent.privateUserData.setter()
{
  v2 = *(OUTLINED_FUNCTION_10_4() + 28);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B7F0, &qword_220CA3150);
  OUTLINED_FUNCTION_0_0(v3);
  v5 = *(v4 + 40);

  return v5(v1 + v2, v0);
}

uint64_t MenuDetailViewEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B5F0, &unk_220CA1E90);
  OUTLINED_FUNCTION_0_0(v3);
  (*(v4 + 104))(a1, v2);
  v5 = type metadata accessor for MenuDetailViewEvent(0);
  v6 = v5[5];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B610, &qword_220CA1EB0);
  OUTLINED_FUNCTION_0_0(v7);
  (*(v8 + 104))(a1 + v6, v2);
  v9 = v5[6];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7C630, &unk_220CA95E0);
  OUTLINED_FUNCTION_0_0(v10);
  (*(v11 + 104))(a1 + v9, v2);
  v12 = v5[7];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B7F0, &qword_220CA3150);
  OUTLINED_FUNCTION_0_0(v13);
  v15 = *(v14 + 104);

  return v15(a1 + v12, v2);
}

uint64_t MenuDetailViewEvent.Model.eventData.getter()
{
  OUTLINED_FUNCTION_6();
  v2 = sub_220CA0494();
  v3 = OUTLINED_FUNCTION_1(v2);
  v5 = *(v4 + 16);

  return v5(v0, v1, v3);
}

uint64_t MenuDetailViewEvent.Model.timedData.getter()
{
  v0 = OUTLINED_FUNCTION_6();
  v1 = *(type metadata accessor for MenuDetailViewEvent.Model(v0) + 20);
  v2 = sub_220CA04D4();
  OUTLINED_FUNCTION_1(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_2();

  return v6(v5);
}

uint64_t MenuDetailViewEvent.Model.elevatedViewData.getter()
{
  v2 = OUTLINED_FUNCTION_6();
  result = type metadata accessor for MenuDetailViewEvent.Model(v2);
  *v0 = *(v1 + *(result + 24));
  return result;
}

uint64_t MenuDetailViewEvent.Model.privateUserData.getter()
{
  v2 = OUTLINED_FUNCTION_6();
  v3 = (v1 + *(type metadata accessor for MenuDetailViewEvent.Model(v2) + 28));
  v5 = *v3;
  v4 = v3[1];
  v6 = *(v3 + 4);
  LOBYTE(v3) = *(v3 + 20);
  *v0 = v5;
  *(v0 + 8) = v4;
  *(v0 + 16) = v6;
  *(v0 + 20) = v3;
}

uint64_t MenuDetailViewEvent.Model.init(eventData:timedData:elevatedViewData:privateUserData:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X8>)
{
  v8 = *a3;
  v9 = *a4;
  v10 = a4[1];
  v11 = *(a4 + 4);
  v12 = *(a4 + 20);
  v13 = sub_220CA0494();
  OUTLINED_FUNCTION_0_0(v13);
  (*(v14 + 32))(a5, a1);
  v15 = type metadata accessor for MenuDetailViewEvent.Model(0);
  v16 = v15[5];
  v17 = sub_220CA04D4();
  OUTLINED_FUNCTION_0_0(v17);
  result = (*(v18 + 32))(a5 + v16, a2);
  *(a5 + v15[6]) = v8;
  v20 = a5 + v15[7];
  *v20 = v9;
  *(v20 + 8) = v10;
  *(v20 + 16) = v11;
  *(v20 + 20) = v12;
  return result;
}

uint64_t sub_220C533D0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746144746E657665 && a2 == 0xE900000000000061;
  if (v4 || (sub_220CA1154() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x74614464656D6974 && a2 == 0xE900000000000061;
    if (v6 || (sub_220CA1154() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000010 && 0x8000000220CB5760 == a2;
      if (v7 || (sub_220CA1154() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x5565746176697270 && a2 == 0xEF61746144726573)
      {

        return 3;
      }

      else
      {
        v9 = sub_220CA1154();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

unint64_t sub_220C53548(char a1)
{
  result = 0x746144746E657665;
  switch(a1)
  {
    case 1:
      result = 0x74614464656D6974;
      break;
    case 2:
      result = 0xD000000000000010;
      break;
    case 3:
      result = 0x5565746176697270;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_220C535E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_220C533D0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_220C5360C(uint64_t a1)
{
  v2 = sub_220C538EC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_220C53648(uint64_t a1)
{
  v2 = sub_220C538EC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MenuDetailViewEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7C638, &qword_220CA95F0);
  v6 = OUTLINED_FUNCTION_3(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  v12 = &v25 - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220C538EC();
  sub_220CA1254();
  LOBYTE(v26) = 0;
  sub_220CA0494();
  OUTLINED_FUNCTION_7();
  sub_220C04F84(v14, v15);
  OUTLINED_FUNCTION_16();
  if (!v2)
  {
    v16 = type metadata accessor for MenuDetailViewEvent.Model(0);
    v17 = v16[5];
    LOBYTE(v26) = 1;
    sub_220CA04D4();
    OUTLINED_FUNCTION_5_0();
    sub_220C04F84(v18, v19);
    OUTLINED_FUNCTION_16();
    LOBYTE(v26) = *(v3 + v16[6]);
    v30 = 2;
    sub_220C53940();
    sub_220CA1104();
    v20 = (v3 + v16[7]);
    v21 = *v20;
    v22 = v20[1];
    v23 = *(v20 + 4);
    LOBYTE(v20) = *(v20 + 20);
    v26 = v21;
    v27 = v22;
    v28 = v23;
    v29 = v20;
    v30 = 3;
    sub_220BFF788();

    sub_220CA1104();
  }

  return (*(v8 + 8))(v12, v5);
}

unint64_t sub_220C538EC()
{
  result = qword_27CF7C640;
  if (!qword_27CF7C640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7C640);
  }

  return result;
}

unint64_t sub_220C53940()
{
  result = qword_27CF7C648;
  if (!qword_27CF7C648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7C648);
  }

  return result;
}

uint64_t MenuDetailViewEvent.Model.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v49 = a2;
  v52 = sub_220CA04D4();
  v3 = OUTLINED_FUNCTION_3(v52);
  v50 = v4;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_11();
  v9 = v8 - v7;
  v10 = sub_220CA0494();
  v11 = OUTLINED_FUNCTION_3(v10);
  v51 = v12;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_11();
  v55 = v16 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7C650, &qword_220CA95F8);
  v18 = OUTLINED_FUNCTION_3(v17);
  v53 = v19;
  v54 = v18;
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v18);
  v23 = &v49 - v22;
  v24 = type metadata accessor for MenuDetailViewEvent.Model(0);
  v25 = OUTLINED_FUNCTION_1(v24);
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_11();
  v30 = v29 - v28;
  v31 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220C538EC();
  v56 = v23;
  v32 = v57;
  sub_220CA1234();
  if (v32)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v57 = v24;
  v33 = v51;
  v34 = v52;
  LOBYTE(v58) = 0;
  OUTLINED_FUNCTION_7();
  sub_220C04F84(v35, v36);
  sub_220CA1034();
  v37 = *(v33 + 32);
  v38 = v55;
  v55 = v10;
  v37(v30, v38);
  LOBYTE(v58) = 1;
  OUTLINED_FUNCTION_5_0();
  sub_220C04F84(v39, v40);
  sub_220CA1034();
  (*(v50 + 32))(v30 + *(v57 + 20), v9, v34);
  v62 = 2;
  sub_220C53E5C();
  sub_220CA1034();
  v41 = v57;
  *(v30 + *(v57 + 24)) = v58;
  v62 = 3;
  sub_220BFF730();
  sub_220CA1034();
  v42 = OUTLINED_FUNCTION_9_3();
  v43(v42, v54);
  v44 = v59;
  v45 = v60;
  v46 = v61;
  v47 = v30 + *(v41 + 28);
  *v47 = v58;
  *(v47 + 8) = v44;
  *(v47 + 16) = v45;
  *(v47 + 20) = v46;
  sub_220C53EB0(v30, v49);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_220C53F14(v30);
}

unint64_t sub_220C53E5C()
{
  result = qword_27CF7C658;
  if (!qword_27CF7C658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7C658);
  }

  return result;
}

uint64_t sub_220C53EB0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MenuDetailViewEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_220C53F14(uint64_t a1)
{
  v2 = type metadata accessor for MenuDetailViewEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_220C53FD8()
{
  sub_220C04EB8();
  if (v0 <= 0x3F)
  {
    sub_220C05010();
    if (v1 <= 0x3F)
    {
      sub_220C540FC(319, &qword_27CF7C670, sub_220C53E5C, sub_220C53940);
      if (v2 <= 0x3F)
      {
        sub_220C540FC(319, &qword_2812D0E18, sub_220BFF730, sub_220BFF788);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_220C540FC(uint64_t a1, unint64_t *a2, void (*a3)(void), void (*a4)(void))
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

uint64_t sub_220C541A0()
{
  result = sub_220CA0494();
  if (v1 <= 0x3F)
  {
    result = sub_220CA04D4();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for MenuDetailViewEvent.Model.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_220C5431C()
{
  result = qword_27CF7C688;
  if (!qword_27CF7C688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7C688);
  }

  return result;
}

unint64_t sub_220C54374()
{
  result = qword_27CF7C690;
  if (!qword_27CF7C690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7C690);
  }

  return result;
}

unint64_t sub_220C543CC()
{
  result = qword_27CF7C698;
  if (!qword_27CF7C698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7C698);
  }

  return result;
}

uint64_t MenuLaunchData.eventID.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return OUTLINED_FUNCTION_5_1();
}

uint64_t MenuLaunchData.eventID.setter()
{
  OUTLINED_FUNCTION_4_0();
  v3 = v1[1];

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t MenuLaunchData.languageCode.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return OUTLINED_FUNCTION_5_1();
}

uint64_t MenuLaunchData.languageCode.setter()
{
  OUTLINED_FUNCTION_4_0();
  v3 = *(v1 + 32);

  *(v1 + 24) = v2;
  *(v1 + 32) = v0;
  return result;
}

uint64_t MenuLaunchData.countryCode.getter()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);

  return OUTLINED_FUNCTION_5_1();
}

uint64_t MenuLaunchData.countryCode.setter()
{
  OUTLINED_FUNCTION_4_0();
  v3 = *(v1 + 48);

  *(v1 + 40) = v2;
  *(v1 + 48) = v0;
  return result;
}

uint64_t MenuLaunchData.osVersion.getter()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);

  return OUTLINED_FUNCTION_5_1();
}

uint64_t MenuLaunchData.osVersion.setter()
{
  OUTLINED_FUNCTION_4_0();
  v3 = *(v1 + 72);

  *(v1 + 64) = v2;
  *(v1 + 72) = v0;
  return result;
}

uint64_t MenuLaunchData.osBuild.getter()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 88);

  return OUTLINED_FUNCTION_5_1();
}

uint64_t MenuLaunchData.osBuild.setter()
{
  OUTLINED_FUNCTION_4_0();
  v3 = *(v1 + 88);

  *(v1 + 80) = v2;
  *(v1 + 88) = v0;
  return result;
}

__n128 MenuLaunchData.init(eventID:isDnu:utcOffset:languageCode:countryCode:isFirstLaunchOfMonth:osVersion:osBuild:)@<Q0>(unint64_t a1@<X0>, unint64_t a2@<X1>, unsigned __int8 a3@<W2>, unsigned __int32 a4@<W3>, unint64_t a5@<X4>, unint64_t a6@<X5>, unint64_t a7@<X6>, unint64_t a8@<X7>, __n128 *a9@<X8>, unsigned __int8 a10, __n128 a11, unint64_t a12, unint64_t a13)
{
  result = a11;
  a9->n128_u64[0] = a1;
  a9->n128_u64[1] = a2;
  a9[1].n128_u8[0] = a3;
  a9[1].n128_u32[1] = a4;
  a9[1].n128_u64[1] = a5;
  a9[2].n128_u64[0] = a6;
  a9[2].n128_u64[1] = a7;
  a9[3].n128_u64[0] = a8;
  a9[3].n128_u8[8] = a10;
  a9[4] = a11;
  a9[5].n128_u64[0] = a12;
  a9[5].n128_u64[1] = a13;
  return result;
}

uint64_t sub_220C54768(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4449746E657665 && a2 == 0xE700000000000000;
  if (v4 || (sub_220CA1154() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x756E447369 && a2 == 0xE500000000000000;
    if (v6 || (sub_220CA1154() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x657366664F637475 && a2 == 0xE900000000000074;
      if (v7 || (sub_220CA1154() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x65676175676E616CLL && a2 == 0xEC00000065646F43;
        if (v8 || (sub_220CA1154() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x437972746E756F63 && a2 == 0xEB0000000065646FLL;
          if (v9 || (sub_220CA1154() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0xD000000000000014 && 0x8000000220CB5780 == a2;
            if (v10 || (sub_220CA1154() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x6F6973726556736FLL && a2 == 0xE90000000000006ELL;
              if (v11 || (sub_220CA1154() & 1) != 0)
              {

                return 6;
              }

              else if (a1 == 0x646C697542736FLL && a2 == 0xE700000000000000)
              {

                return 7;
              }

              else
              {
                v13 = sub_220CA1154();

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

unint64_t sub_220C549F8(char a1)
{
  result = 0x4449746E657665;
  switch(a1)
  {
    case 1:
      result = 0x756E447369;
      break;
    case 2:
      result = 0x657366664F637475;
      break;
    case 3:
      result = 0x65676175676E616CLL;
      break;
    case 4:
      result = 0x437972746E756F63;
      break;
    case 5:
      result = 0xD000000000000014;
      break;
    case 6:
      result = 0x6F6973726556736FLL;
      break;
    case 7:
      result = 0x646C697542736FLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_220C54AFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_220C54768(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_220C54B24(uint64_t a1)
{
  v2 = sub_220C54E04();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_220C54B60(uint64_t a1)
{
  v2 = sub_220C54E04();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MenuLaunchData.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7C6A0, &qword_220CA9820);
  v4 = OUTLINED_FUNCTION_3(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  v10 = v25 - v9;
  v11 = *v1;
  v12 = v1[1];
  v13 = *(v1 + 16);
  v32 = *(v1 + 5);
  v33 = v13;
  v14 = v1[3];
  v30 = v1[4];
  v31 = v14;
  v15 = v1[6];
  v27 = v1[5];
  v28 = v15;
  v26 = *(v1 + 56);
  v16 = v1[9];
  v25[0] = v1[8];
  v25[1] = v16;
  v17 = v1[11];
  v29 = v1[10];
  v19 = a1[3];
  v18 = a1[4];
  v20 = a1;
  v22 = v21;
  __swift_project_boxed_opaque_existential_1(v20, v19);
  sub_220C54E04();
  sub_220CA1254();
  v42 = 0;
  v23 = v34;
  sub_220CA10C4();
  if (!v23)
  {
    v34 = v17;
    v41 = 1;
    OUTLINED_FUNCTION_3_11();
    sub_220CA10D4();
    v40 = 2;
    OUTLINED_FUNCTION_3_11();
    sub_220CA1114();
    v39 = 3;
    OUTLINED_FUNCTION_1_17();
    sub_220CA10C4();
    v38 = 4;
    OUTLINED_FUNCTION_1_17();
    sub_220CA10C4();
    v37 = 5;
    OUTLINED_FUNCTION_3_11();
    sub_220CA10D4();
    v36 = 6;
    OUTLINED_FUNCTION_1_17();
    sub_220CA10C4();
    v35 = 7;
    OUTLINED_FUNCTION_1_17();
    sub_220CA1074();
  }

  return (*(v6 + 8))(v10, v22);
}

unint64_t sub_220C54E04()
{
  result = qword_27CF7C6A8;
  if (!qword_27CF7C6A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7C6A8);
  }

  return result;
}

uint64_t MenuLaunchData.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7C6B0, &qword_220CA9828);
  v6 = OUTLINED_FUNCTION_3(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  v12 = &v31 - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220C54E04();
  sub_220CA1234();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v43[0]) = 0;
  v14 = sub_220CA0FF4();
  v16 = v15;
  OUTLINED_FUNCTION_0_15(1);
  v55 = sub_220CA1004();
  OUTLINED_FUNCTION_0_15(2);
  v39 = sub_220CA1044();
  OUTLINED_FUNCTION_0_15(3);
  v36 = sub_220CA0FF4();
  v37 = v14;
  v41 = v17;
  OUTLINED_FUNCTION_0_15(4);
  v18 = sub_220CA0FF4();
  v38 = v19;
  v35 = v18;
  OUTLINED_FUNCTION_0_15(5);
  v34 = sub_220CA1004();
  OUTLINED_FUNCTION_0_15(6);
  v33 = sub_220CA0FF4();
  v40 = v20;
  v56 = 7;
  v21 = sub_220CA0FA4();
  v22 = v55 & 1;
  v32 = v55 & 1;
  v55 = v34 & 1;
  v23 = v21;
  v24 = v12;
  v26 = v25;
  (*(v8 + 8))(v24, v5);
  __src[0] = v37;
  __src[1] = v16;
  LOBYTE(__src[2]) = v22;
  HIDWORD(__src[2]) = v39;
  v27 = v41;
  __src[3] = v36;
  __src[4] = v41;
  v28 = v38;
  __src[5] = v35;
  __src[6] = v38;
  LOBYTE(__src[7]) = v55;
  v29 = v40;
  __src[8] = v33;
  __src[9] = v40;
  __src[10] = v23;
  __src[11] = v26;
  memcpy(a2, __src, 0x60uLL);
  sub_220C52118(__src, v43);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v43[0] = v37;
  v43[1] = v16;
  v44 = v32;
  v45 = v39;
  v46 = v36;
  v47 = v27;
  v48 = v35;
  v49 = v28;
  v50 = v55;
  v51 = v33;
  v52 = v29;
  v53 = v23;
  v54 = v26;
  return sub_220C52500(v43);
}

_BYTE *storeEnumTagSinglePayload for MenuLaunchData.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_220C553A8()
{
  result = qword_27CF7C6B8;
  if (!qword_27CF7C6B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7C6B8);
  }

  return result;
}

unint64_t sub_220C55400()
{
  result = qword_27CF7C6C0;
  if (!qword_27CF7C6C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7C6C0);
  }

  return result;
}

unint64_t sub_220C55458()
{
  result = qword_27CF7C6C8;
  if (!qword_27CF7C6C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7C6C8);
  }

  return result;
}

uint64_t sub_220C554F8(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x6E6F697461636F6CLL && a2 == 0xE800000000000000)
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

uint64_t sub_220C5558C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_220C554F8(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_220C555B8(uint64_t a1)
{
  v2 = sub_220C55770();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_220C555F4(uint64_t a1)
{
  v2 = sub_220C55770();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t WidgetLocationData.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7C6D0, &qword_220CA9A70);
  v4 = OUTLINED_FUNCTION_3(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  v10 = &v14 - v9;
  v11 = *v1;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220C55770();
  sub_220CA1254();
  v15 = v11;
  sub_220C557C4();
  sub_220CA1104();
  return (*(v6 + 8))(v10, v3);
}

unint64_t sub_220C55770()
{
  result = qword_27CF7C6D8;
  if (!qword_27CF7C6D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7C6D8);
  }

  return result;
}

unint64_t sub_220C557C4()
{
  result = qword_27CF7C6E0;
  if (!qword_27CF7C6E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7C6E0);
  }

  return result;
}

uint64_t WidgetLocationData.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7C6E8, &qword_220CA9A78);
  v6 = OUTLINED_FUNCTION_3(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  v12 = &v15 - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220C55770();
  sub_220CA1234();
  if (!v2)
  {
    sub_220C55978();
    sub_220CA1034();
    (*(v8 + 8))(v12, v5);
    *a2 = v16;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_220C55978()
{
  result = qword_27CF7C6F0;
  if (!qword_27CF7C6F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7C6F0);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for WidgetLocationData(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for WidgetLocationData.CodingKeys(_BYTE *result, int a2, int a3)
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

unint64_t sub_220C55B90()
{
  result = qword_27CF7C6F8;
  if (!qword_27CF7C6F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7C6F8);
  }

  return result;
}

unint64_t sub_220C55BE8()
{
  result = qword_27CF7C700;
  if (!qword_27CF7C700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7C700);
  }

  return result;
}

unint64_t sub_220C55C40()
{
  result = qword_27CF7C708;
  if (!qword_27CF7C708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7C708);
  }

  return result;
}

uint64_t VisibleLocationFinishedLoadingEvent.EndReason.hashValue.getter()
{
  v1 = *v0;
  sub_220CA11F4();
  MEMORY[0x223D95580](v1);
  return sub_220CA1214();
}

double VisibleLocationFinishedLoadingEvent.location.getter()
{
  result = *v0;
  v2 = *(v0 + 8);
  return result;
}

uint64_t VisibleLocationFinishedLoadingEvent.startTime.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for VisibleLocationFinishedLoadingEvent() + 20);
  v4 = sub_220C9F7D4();
  v5 = OUTLINED_FUNCTION_1(v4);
  v7 = *(v6 + 16);

  return v7(a1, v1 + v3, v5);
}

uint64_t VisibleLocationFinishedLoadingEvent.startTime.setter()
{
  OUTLINED_FUNCTION_5();
  v2 = *(type metadata accessor for VisibleLocationFinishedLoadingEvent() + 20);
  v3 = sub_220C9F7D4();
  OUTLINED_FUNCTION_1(v3);
  v5 = *(v4 + 40);

  return v5(v1 + v2, v0);
}

uint64_t VisibleLocationFinishedLoadingEvent.startTime.modify()
{
  OUTLINED_FUNCTION_5();
  v0 = *(type metadata accessor for VisibleLocationFinishedLoadingEvent() + 20);
  return OUTLINED_FUNCTION_13();
}

uint64_t VisibleLocationFinishedLoadingEvent.endTime.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for VisibleLocationFinishedLoadingEvent() + 24);
  v4 = sub_220C9F7D4();
  v5 = OUTLINED_FUNCTION_1(v4);
  v7 = *(v6 + 16);

  return v7(a1, v1 + v3, v5);
}

uint64_t VisibleLocationFinishedLoadingEvent.endTime.setter()
{
  OUTLINED_FUNCTION_5();
  v2 = *(type metadata accessor for VisibleLocationFinishedLoadingEvent() + 24);
  v3 = sub_220C9F7D4();
  OUTLINED_FUNCTION_1(v3);
  v5 = *(v4 + 40);

  return v5(v1 + v2, v0);
}

uint64_t VisibleLocationFinishedLoadingEvent.endTime.modify()
{
  OUTLINED_FUNCTION_5();
  v0 = *(type metadata accessor for VisibleLocationFinishedLoadingEvent() + 24);
  return OUTLINED_FUNCTION_13();
}

uint64_t VisibleLocationFinishedLoadingEvent.endReason.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for VisibleLocationFinishedLoadingEvent();
  *a1 = *(v1 + *(result + 28));
  return result;
}

uint64_t VisibleLocationFinishedLoadingEvent.endReason.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for VisibleLocationFinishedLoadingEvent();
  *(v1 + *(result + 28)) = v2;
  return result;
}

uint64_t VisibleLocationFinishedLoadingEvent.endReason.modify()
{
  OUTLINED_FUNCTION_5();
  v0 = *(type metadata accessor for VisibleLocationFinishedLoadingEvent() + 28);
  return OUTLINED_FUNCTION_13();
}

uint64_t VisibleLocationFinishedLoadingEvent.loadingBeganOutsideObservation.setter(char a1)
{
  result = type metadata accessor for VisibleLocationFinishedLoadingEvent();
  *(v1 + *(result + 32)) = a1;
  return result;
}

uint64_t VisibleLocationFinishedLoadingEvent.loadingBeganOutsideObservation.modify()
{
  OUTLINED_FUNCTION_5();
  v0 = *(type metadata accessor for VisibleLocationFinishedLoadingEvent() + 32);
  return OUTLINED_FUNCTION_13();
}

BOOL static VisibleLocationFinishedLoadingEvent.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v4 = sub_220C9FBB4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = (MEMORY[0x28223BE20])(v4);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v22 - v10;
  v12 = *a1;
  v13 = a1[1];
  sub_220C9FBC4();
  v14 = *a2;
  v15 = a2[1];
  sub_220C9FBC4();
  v16 = sub_220C9FBA4();
  v17 = *(v5 + 8);
  v17(v9, v4);
  v17(v11, v4);
  if (v16 & 1) != 0 && (v18 = type metadata accessor for VisibleLocationFinishedLoadingEvent(), v19 = v18[5], (sub_220C9F7A4()) && (v20 = v18[6], (sub_220C9F7A4()))
  {
    return *(a1 + v18[7]) == *(a2 + v18[7]);
  }

  else
  {
    return 0;
  }
}

unint64_t sub_220C5625C()
{
  result = qword_27CF7C710;
  if (!qword_27CF7C710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7C710);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for VisibleLocationFinishedLoadingEvent.EndReason(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_220C563A8(double a1)
{
  v1 = a1 * 1000.0;
  if ((*&v1 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v1 <= -9.22337204e18)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v1 < 9.22337204e18)
  {
    return v1;
  }

LABEL_7:
  __break(1u);
  return result;
}

WeatherAnalytics::TemperatureFeedback_optional __swiftcall TemperatureFeedback.init(rawValue:)(Swift::String rawValue)
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

uint64_t TemperatureFeedback.rawValue.getter()
{
  v1 = 0x74726F7065527361;
  if (*v0 != 1)
  {
    v1 = 0x7265646C6F63;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x72656D726177;
  }
}

unint64_t sub_220C564C0()
{
  result = qword_27CF7C718;
  if (!qword_27CF7C718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7C718);
  }

  return result;
}

uint64_t sub_220C56538@<X0>(uint64_t *a1@<X8>)
{
  result = TemperatureFeedback.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

_BYTE *storeEnumTagSinglePayload for TemperatureFeedback(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_220C566EC()
{
  result = qword_27CF7C720;
  if (!qword_27CF7C720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7C720);
  }

  return result;
}

uint64_t AppSessionStartEvent.eventData.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B5F0, &unk_220CA1E90);
  OUTLINED_FUNCTION_1(v1);
  v3 = *(v2 + 16);
  v4 = OUTLINED_FUNCTION_6_0();

  return v5(v4, v0);
}

uint64_t AppSessionStartEvent.eventData.setter(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B5F0, &unk_220CA1E90);
  v4 = OUTLINED_FUNCTION_1(v3);
  v6 = *(v5 + 40);

  return v6(v1, a1, v4);
}

uint64_t AppSessionStartEvent.orientationData.getter()
{
  v0 = OUTLINED_FUNCTION_6();
  v1 = *(type metadata accessor for AppSessionStartEvent(v0) + 20);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B5F8, &unk_220CA3990);
  OUTLINED_FUNCTION_1(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_6_0();

  return v6(v5);
}

uint64_t AppSessionStartEvent.orientationData.setter()
{
  v2 = OUTLINED_FUNCTION_5();
  v3 = *(type metadata accessor for AppSessionStartEvent(v2) + 20);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B5F8, &unk_220CA3990);
  OUTLINED_FUNCTION_1(v4);
  v6 = *(v5 + 40);

  return v6(v1 + v3, v0);
}

uint64_t (*AppSessionStartEvent.orientationData.modify())()
{
  v0 = OUTLINED_FUNCTION_5();
  v1 = *(type metadata accessor for AppSessionStartEvent(v0) + 20);
  return nullsub_1;
}

uint64_t AppSessionStartEvent.temperatureScaleData.getter()
{
  v0 = OUTLINED_FUNCTION_6();
  v1 = *(type metadata accessor for AppSessionStartEvent(v0) + 24);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B600, &qword_220CA1EA0);
  OUTLINED_FUNCTION_1(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_6_0();

  return v6(v5);
}

uint64_t AppSessionStartEvent.temperatureScaleData.setter()
{
  v2 = OUTLINED_FUNCTION_5();
  v3 = *(type metadata accessor for AppSessionStartEvent(v2) + 24);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B600, &qword_220CA1EA0);
  OUTLINED_FUNCTION_1(v4);
  v6 = *(v5 + 40);

  return v6(v1 + v3, v0);
}

uint64_t (*AppSessionStartEvent.temperatureScaleData.modify())()
{
  v0 = OUTLINED_FUNCTION_5();
  v1 = *(type metadata accessor for AppSessionStartEvent(v0) + 24);
  return nullsub_1;
}

uint64_t AppSessionStartEvent.Model.eventData.getter()
{
  OUTLINED_FUNCTION_6();
  v1 = sub_220CA0494();
  OUTLINED_FUNCTION_1(v1);
  v3 = *(v2 + 16);
  v4 = OUTLINED_FUNCTION_6_0();

  return v5(v4, v0);
}

uint64_t AppSessionStartEvent.Model.orientationData.getter()
{
  v2 = OUTLINED_FUNCTION_6();
  result = type metadata accessor for AppSessionStartEvent.Model(v2);
  *v0 = *(v1 + *(result + 20));
  return result;
}

uint64_t AppSessionStartEvent.Model.temperatureScaleData.getter()
{
  v2 = OUTLINED_FUNCTION_6();
  result = type metadata accessor for AppSessionStartEvent.Model(v2);
  *v0 = *(v1 + *(result + 24));
  return result;
}

uint64_t AppSessionStartEvent.Model.init(eventData:orientationData:temperatureScaleData:)@<X0>(uint64_t a1@<X0>, __int16 *a2@<X1>, char *a3@<X2>, uint64_t a4@<X8>)
{
  v6 = *a2;
  v7 = *a3;
  v8 = sub_220CA0494();
  OUTLINED_FUNCTION_1(v8);
  (*(v9 + 32))(a4, a1);
  result = type metadata accessor for AppSessionStartEvent.Model(0);
  *(a4 + *(result + 20)) = v6;
  *(a4 + *(result + 24)) = v7;
  return result;
}

uint64_t sub_220C56C04(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746144746E657665 && a2 == 0xE900000000000061;
  if (v4 || (sub_220CA1154() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x7461746E6569726FLL && a2 == 0xEF617461446E6F69;
    if (v6 || (sub_220CA1154() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0xD000000000000014 && 0x8000000220CB4B90 == a2)
    {

      return 2;
    }

    else
    {
      v8 = sub_220CA1154();

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

uint64_t sub_220C56D2C(char a1)
{
  if (!a1)
  {
    return 0x746144746E657665;
  }

  if (a1 == 1)
  {
    return 0x7461746E6569726FLL;
  }

  return 0xD000000000000014;
}

uint64_t sub_220C56DA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_220C56C04(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_220C56DC8(uint64_t a1)
{
  v2 = sub_220C57038();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_220C56E04(uint64_t a1)
{
  v2 = sub_220C57038();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AppSessionStartEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7C728, &qword_220CA9EA8);
  v6 = OUTLINED_FUNCTION_3(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  v12 = &v16[-v11];
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220C57038();
  sub_220CA1254();
  v18 = 0;
  sub_220CA0494();
  sub_220C04FCC(&qword_2812D0D90);
  sub_220CA1104();
  if (!v2)
  {
    started = type metadata accessor for AppSessionStartEvent.Model(0);
    v17 = *(v3 + *(started + 20));
    v16[11] = 1;
    sub_220BFE5BC();
    sub_220CA1094();
    v16[10] = *(v3 + *(started + 24));
    v16[9] = 2;
    sub_220BFF604();
    sub_220CA1094();
  }

  return (*(v8 + 8))(v12, v5);
}

unint64_t sub_220C57038()
{
  result = qword_27CF7C730;
  if (!qword_27CF7C730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7C730);
  }

  return result;
}

uint64_t AppSessionStartEvent.Model.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a2;
  v4 = sub_220CA0494();
  v5 = OUTLINED_FUNCTION_3(v4);
  v30 = v6;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v33 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7C738, &qword_220CA9EB0);
  v11 = OUTLINED_FUNCTION_3(v10);
  v31 = v12;
  v32 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v11);
  started = type metadata accessor for AppSessionStartEvent.Model(0);
  v16 = OUTLINED_FUNCTION_1(started);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220C57038();
  sub_220CA1234();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v22 = v30;
  v38 = 0;
  sub_220C04FCC(&qword_2812D0D88);
  sub_220CA1034();
  v23 = *(v22 + 32);
  v24 = v33;
  v33 = v4;
  v23(v20, v24, v4);
  v37 = 1;
  sub_220BFE564();
  OUTLINED_FUNCTION_8_8();
  *&v20[*(started + 20)] = v36;
  v34 = 2;
  sub_220BFF5AC();
  OUTLINED_FUNCTION_8_8();
  v25 = OUTLINED_FUNCTION_3_12();
  v26(v25);
  v20[*(started + 24)] = v35;
  sub_220C573C8(v20, v29);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_220C5742C(v20);
}

uint64_t sub_220C573C8(uint64_t a1, uint64_t a2)
{
  started = type metadata accessor for AppSessionStartEvent.Model(0);
  (*(*(started - 8) + 16))(a2, a1, started);
  return a2;
}

uint64_t sub_220C5742C(uint64_t a1)
{
  started = type metadata accessor for AppSessionStartEvent.Model(0);
  (*(*(started - 8) + 8))(a1, started);
  return a1;
}

void sub_220C57508()
{
  sub_220CA0494();
  if (v0 <= 0x3F)
  {
    sub_220BFE7B0(319, &qword_2812D03E8);
    if (v1 <= 0x3F)
    {
      sub_220BFE7B0(319, &qword_2812CFC28);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

_BYTE *storeEnumTagSinglePayload for AppSessionStartEvent.Model.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_220C576A4()
{
  result = qword_27CF7C750;
  if (!qword_27CF7C750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7C750);
  }

  return result;
}

unint64_t sub_220C576FC()
{
  result = qword_27CF7C758;
  if (!qword_27CF7C758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7C758);
  }

  return result;
}

unint64_t sub_220C57754()
{
  result = qword_27CF7C760;
  if (!qword_27CF7C760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7C760);
  }

  return result;
}

uint64_t MapSessionStatisticsData.init(totalCalls:successfulCalls:cancelledCalls:errorCalls:avgTime:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  *a6 = result;
  a6[1] = a2;
  a6[2] = a3;
  a6[3] = a4;
  a6[4] = a5;
  return result;
}

uint64_t sub_220C578B0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6C61436C61746F74 && a2 == 0xEA0000000000736CLL;
  if (v4 || (sub_220CA1154() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6673736563637573 && a2 == 0xEF736C6C61436C75;
    if (v6 || (sub_220CA1154() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x656C6C65636E6163 && a2 == 0xEE00736C6C614364;
      if (v7 || (sub_220CA1154() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x6C6143726F727265 && a2 == 0xEA0000000000736CLL;
        if (v8 || (sub_220CA1154() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 0x656D6954677661 && a2 == 0xE700000000000000)
        {

          return 4;
        }

        else
        {
          v10 = sub_220CA1154();

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

uint64_t sub_220C57A70(char a1)
{
  result = 0x6C61436C61746F74;
  switch(a1)
  {
    case 1:
      result = 0x6673736563637573;
      break;
    case 2:
      result = 0x656C6C65636E6163;
      break;
    case 3:
      result = 0x6C6143726F727265;
      break;
    case 4:
      result = 0x656D6954677661;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_220C57B2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_220C578B0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_220C57B54(uint64_t a1)
{
  v2 = sub_220C57D80();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_220C57B90(uint64_t a1)
{
  v2 = sub_220C57D80();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MapSessionStatisticsData.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7C768, &qword_220CAA0D0);
  v5 = OUTLINED_FUNCTION_3(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  v11 = v17 - v10;
  v13 = *v1;
  v12 = v1[1];
  v14 = v1[3];
  v17[2] = v1[2];
  v17[3] = v12;
  v17[0] = v1[4];
  v17[1] = v14;
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220C57D80();
  sub_220CA1254();
  v22 = 0;
  OUTLINED_FUNCTION_0_16();
  if (!v2)
  {
    v21 = 1;
    OUTLINED_FUNCTION_0_16();
    v20 = 2;
    OUTLINED_FUNCTION_0_16();
    v19 = 3;
    OUTLINED_FUNCTION_0_16();
    v18 = 4;
    OUTLINED_FUNCTION_0_16();
  }

  return (*(v7 + 8))(v11, v4);
}

unint64_t sub_220C57D80()
{
  result = qword_27CF7C770;
  if (!qword_27CF7C770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7C770);
  }

  return result;
}

uint64_t MapSessionStatisticsData.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7C778, &qword_220CAA0D8);
  v6 = OUTLINED_FUNCTION_3(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  v12 = &v19 - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220C57D80();
  sub_220CA1234();
  if (!v2)
  {
    v25 = 0;
    v14 = OUTLINED_FUNCTION_1_18();
    v24 = 1;
    v15 = OUTLINED_FUNCTION_1_18();
    v23 = 2;
    v20 = OUTLINED_FUNCTION_1_18();
    v22 = 3;
    v19 = OUTLINED_FUNCTION_1_18();
    v21 = 4;
    v17 = OUTLINED_FUNCTION_1_18();
    (*(v8 + 8))(v12, v5);
    *a2 = v14;
    a2[1] = v15;
    v18 = v19;
    a2[2] = v20;
    a2[3] = v18;
    a2[4] = v17;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_220C57FB8()
{
  result = qword_27CF7C780;
  if (!qword_27CF7C780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7C780);
  }

  return result;
}

unint64_t sub_220C58010()
{
  result = qword_27CF7C788;
  if (!qword_27CF7C788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7C788);
  }

  return result;
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_220C580A8(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 40))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_220C580C8(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = (a2 - 1);
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

  *(result + 40) = v3;
  return result;
}

_BYTE *storeEnumTagSinglePayload for MapSessionStatisticsData.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_220C581EC()
{
  result = qword_27CF7C790;
  if (!qword_27CF7C790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7C790);
  }

  return result;
}

unint64_t sub_220C58244()
{
  result = qword_27CF7C798;
  if (!qword_27CF7C798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7C798);
  }

  return result;
}

unint64_t sub_220C5829C()
{
  result = qword_27CF7C7A0;
  if (!qword_27CF7C7A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7C7A0);
  }

  return result;
}

WeatherAnalytics::DetailViewOrigin_optional __swiftcall DetailViewOrigin.init(rawValue:)(Swift::String rawValue)
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

uint64_t DetailViewOrigin.rawValue.getter()
{
  v1 = 0x6E656E6F706D6F63;
  if (*v0 != 1)
  {
    v1 = 0x726F7463656C6573;
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

uint64_t sub_220C583AC(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = *a1;
  return sub_220C3B770();
}

unint64_t sub_220C583BC()
{
  result = qword_27CF7C7A8;
  if (!qword_27CF7C7A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7C7A8);
  }

  return result;
}

uint64_t sub_220C58434@<X0>(uint64_t *a1@<X8>)
{
  result = DetailViewOrigin.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

_BYTE *storeEnumTagSinglePayload for DetailViewOrigin(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_220C585E8()
{
  result = qword_27CF7C7B0;
  if (!qword_27CF7C7B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7C7B0);
  }

  return result;
}

uint64_t WeatherDataLoadFailedEventData.errorDescription.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t WeatherDataLoadFailedEventData.errorDescription.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t sub_220C586D4(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000010 && 0x8000000220CB54E0 == a2)
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

uint64_t sub_220C58774@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_220C586D4(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_220C587A0(uint64_t a1)
{
  v2 = sub_220C58944();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_220C587DC(uint64_t a1)
{
  v2 = sub_220C58944();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t WeatherDataLoadFailedEventData.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7C7B8, &qword_220CAA410);
  v5 = OUTLINED_FUNCTION_0(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  v11 = &v16 - v10;
  v12 = *v1;
  v13 = v1[1];
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220C58944();
  sub_220CA1254();
  sub_220CA10C4();
  return (*(v7 + 8))(v11, v2);
}

unint64_t sub_220C58944()
{
  result = qword_2812D08A0;
  if (!qword_2812D08A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812D08A0);
  }

  return result;
}

uint64_t WeatherDataLoadFailedEventData.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7C7C0, &qword_220CAA418);
  v7 = OUTLINED_FUNCTION_0(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v7);
  v13 = &v19 - v12;
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220C58944();
  sub_220CA1234();
  if (!v2)
  {
    v15 = sub_220CA0FF4();
    v17 = v16;
    (*(v9 + 8))(v13, v3);
    *a2 = v15;
    a2[1] = v17;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

_BYTE *storeEnumTagSinglePayload for WeatherDataLoadFailedEventData.CodingKeys(_BYTE *result, int a2, int a3)
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

unint64_t sub_220C58BF4()
{
  result = qword_27CF7C7C8;
  if (!qword_27CF7C7C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7C7C8);
  }

  return result;
}

unint64_t sub_220C58C4C()
{
  result = qword_2812D0890;
  if (!qword_2812D0890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812D0890);
  }

  return result;
}

unint64_t sub_220C58CA4()
{
  result = qword_2812D0898;
  if (!qword_2812D0898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812D0898);
  }

  return result;
}

double VisibleLocationFailedLoadingEvent.location.getter()
{
  result = *v0;
  v2 = *(v0 + 8);
  return result;
}

uint64_t VisibleLocationFailedLoadingEvent.startTime.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for VisibleLocationFailedLoadingEvent() + 20);
  v4 = sub_220C9F7D4();
  v5 = OUTLINED_FUNCTION_1(v4);
  v7 = *(v6 + 16);

  return v7(a1, v1 + v3, v5);
}

uint64_t VisibleLocationFailedLoadingEvent.startTime.setter()
{
  OUTLINED_FUNCTION_5();
  v2 = *(type metadata accessor for VisibleLocationFailedLoadingEvent() + 20);
  v3 = sub_220C9F7D4();
  OUTLINED_FUNCTION_1(v3);
  v5 = *(v4 + 40);

  return v5(v1 + v2, v0);
}

uint64_t (*VisibleLocationFailedLoadingEvent.startTime.modify())()
{
  OUTLINED_FUNCTION_5();
  v0 = *(type metadata accessor for VisibleLocationFailedLoadingEvent() + 20);
  return nullsub_1;
}

uint64_t VisibleLocationFailedLoadingEvent.endTime.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for VisibleLocationFailedLoadingEvent() + 24);
  v4 = sub_220C9F7D4();
  v5 = OUTLINED_FUNCTION_1(v4);
  v7 = *(v6 + 16);

  return v7(a1, v1 + v3, v5);
}

uint64_t VisibleLocationFailedLoadingEvent.endTime.setter()
{
  OUTLINED_FUNCTION_5();
  v2 = *(type metadata accessor for VisibleLocationFailedLoadingEvent() + 24);
  v3 = sub_220C9F7D4();
  OUTLINED_FUNCTION_1(v3);
  v5 = *(v4 + 40);

  return v5(v1 + v2, v0);
}

uint64_t (*VisibleLocationFailedLoadingEvent.endTime.modify())()
{
  OUTLINED_FUNCTION_5();
  v0 = *(type metadata accessor for VisibleLocationFailedLoadingEvent() + 24);
  return nullsub_1;
}

uint64_t VisibleLocationFailedLoadingEvent.errorDescription.getter()
{
  v1 = (v0 + *(type metadata accessor for VisibleLocationFailedLoadingEvent() + 28));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t VisibleLocationFailedLoadingEvent.errorDescription.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for VisibleLocationFailedLoadingEvent() + 28));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t (*VisibleLocationFailedLoadingEvent.errorDescription.modify())()
{
  OUTLINED_FUNCTION_5();
  v0 = *(type metadata accessor for VisibleLocationFailedLoadingEvent() + 28);
  return nullsub_1;
}

uint64_t VisibleLocationFailedLoadingEvent.init(location:startTime:endTime:errorDescription:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, double *a5@<X8>, double a6@<D0>, double a7@<D1>)
{
  *a5 = a6;
  a5[1] = a7;
  v12 = type metadata accessor for VisibleLocationFailedLoadingEvent();
  v13 = v12[5];
  v14 = sub_220C9F7D4();
  OUTLINED_FUNCTION_1(v14);
  v16 = *(v15 + 32);
  v16(a5 + v13, a1, v14);
  result = (v16)(a5 + v12[6], a2, v14);
  v18 = (a5 + v12[7]);
  *v18 = a3;
  v18[1] = a4;
  return result;
}

uint64_t static VisibleLocationFailedLoadingEvent.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v4 = sub_220C9FBB4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v28 - v10;
  v12 = *a1;
  v13 = a1[1];
  sub_220C9FBC4();
  v14 = *a2;
  v15 = a2[1];
  sub_220C9FBC4();
  v16 = sub_220C9FBA4();
  v17 = *(v5 + 8);
  v17(v8, v4);
  v17(v11, v4);
  if (v16 & 1) != 0 && (v18 = type metadata accessor for VisibleLocationFailedLoadingEvent(), v19 = v18[5], (sub_220C9F7A4()) && (v20 = v18[6], (sub_220C9F7A4()))
  {
    v21 = v18[7];
    v22 = *(a1 + v21);
    v23 = *(a1 + v21 + 8);
    v24 = (a2 + v21);
    if (v22 == *v24 && v23 == v24[1])
    {
      v26 = 1;
    }

    else
    {
      v26 = sub_220CA1154();
    }
  }

  else
  {
    v26 = 0;
  }

  return v26 & 1;
}

uint64_t PrecipitationForecastData.summaries.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

uint64_t PrecipitationForecastData.summaries.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t PrecipitationForecastData.init(date:summaries:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *a4 = result;
  *(a4 + 8) = a2;
  *(a4 + 16) = a3;
  return result;
}

uint64_t sub_220C593A0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1702125924 && a2 == 0xE400000000000000;
  if (v3 || (sub_220CA1154() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656972616D6D7573 && a2 == 0xE900000000000073)
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

uint64_t sub_220C59470(char a1)
{
  if (a1)
  {
    return 0x656972616D6D7573;
  }

  else
  {
    return 1702125924;
  }
}

uint64_t sub_220C594AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_220C593A0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_220C594D4(uint64_t a1)
{
  v2 = sub_220C596B4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_220C59510(uint64_t a1)
{
  v2 = sub_220C596B4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t PrecipitationForecastData.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7C7D0, &qword_220CAA6B0);
  v5 = OUTLINED_FUNCTION_3(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  v11 = v16 - v10;
  v12 = *v1;
  v13 = *(v1 + 1);
  v16[0] = *(v1 + 2);
  v16[1] = v13;
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220C596B4();
  sub_220CA1254();
  v18 = 0;
  sub_220CA1114();
  if (!v2)
  {
    v17 = 1;
    sub_220CA10C4();
  }

  return (*(v7 + 8))(v11, v4);
}

unint64_t sub_220C596B4()
{
  result = qword_27CF7C7D8;
  if (!qword_27CF7C7D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7C7D8);
  }

  return result;
}

uint64_t PrecipitationForecastData.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7C7E0, &qword_220CAA6B8);
  v6 = OUTLINED_FUNCTION_3(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  v12 = &v19 - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220C596B4();
  sub_220CA1234();
  if (!v2)
  {
    v21 = 0;
    v14 = sub_220CA1044();
    v20 = 1;
    v16 = sub_220CA0FF4();
    v18 = v17;
    (*(v8 + 8))(v12, v5);
    *a2 = v14;
    *(a2 + 8) = v16;
    *(a2 + 16) = v18;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

_BYTE *storeEnumTagSinglePayload for PrecipitationForecastData.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_220C599CC()
{
  result = qword_27CF7C7E8;
  if (!qword_27CF7C7E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7C7E8);
  }

  return result;
}

unint64_t sub_220C59A24()
{
  result = qword_27CF7C7F0;
  if (!qword_27CF7C7F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7C7F0);
  }

  return result;
}

unint64_t sub_220C59A7C()
{
  result = qword_27CF7C7F8;
  if (!qword_27CF7C7F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7C7F8);
  }

  return result;
}

uint64_t sub_220C59AD0()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  __swift_destroy_boxed_opaque_existential_1((v0 + 56));

  return MEMORY[0x2821FE8D8](v0, 102, 7);
}

uint64_t FollowingLocationListData.locations.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t FollowingLocationListData.init(locations:locationCount:)@<X0>(uint64_t result@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  *a3 = result;
  *(a3 + 8) = a2;
  return result;
}

uint64_t sub_220C59BAC(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0x6E6F697461636F6CLL && a2 == 0xE900000000000073;
  if (v3 || (sub_220CA1154() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E6F697461636F6CLL && a2 == 0xED0000746E756F43)
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

uint64_t sub_220C59CC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_220C59BAC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_220C59CE8(uint64_t a1)
{
  v2 = sub_220C59F34();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_220C59D24(uint64_t a1)
{
  v2 = sub_220C59F34();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t FollowingLocationListData.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7C800, &qword_220CAA970);
  v5 = OUTLINED_FUNCTION_3(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  v11 = v15 - v10;
  v12 = *v1;
  v15[2] = *(v1 + 2);
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220C59F34();

  sub_220CA1254();
  v18 = v12;
  v17 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7C808, &qword_220CAA978);
  sub_220C5A198(&qword_2812CE7B0, sub_220C05568);
  sub_220CA1104();

  if (!v2)
  {
    v16 = 1;
    sub_220CA1114();
  }

  return (*(v7 + 8))(v11, v4);
}

unint64_t sub_220C59F34()
{
  result = qword_2812CF500;
  if (!qword_2812CF500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812CF500);
  }

  return result;
}

uint64_t FollowingLocationListData.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7C810, &qword_220CAA980);
  v6 = OUTLINED_FUNCTION_3(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  v12 = &v17[-v11];
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220C59F34();
  sub_220CA1234();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7C808, &qword_220CAA978);
  v17[15] = 0;
  sub_220C5A198(&qword_27CF7C818, sub_220C05514);
  sub_220CA1034();
  v14 = v18;
  v17[14] = 1;
  v15 = sub_220CA1044();
  (*(v8 + 8))(v12, v5);
  *a2 = v14;
  *(a2 + 8) = v15;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_220C5A198(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF7C808, &qword_220CAA978);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t __swift_memcpy12_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t sub_220C5A25C(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 12))
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

uint64_t sub_220C5A29C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 12) = 1;
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

    *(result + 12) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for FollowingLocationListData.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_220C5A3BC()
{
  result = qword_27CF7C820;
  if (!qword_27CF7C820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7C820);
  }

  return result;
}

unint64_t sub_220C5A414()
{
  result = qword_2812CF4F0;
  if (!qword_2812CF4F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812CF4F0);
  }

  return result;
}

unint64_t sub_220C5A46C()
{
  result = qword_2812CF4F8;
  if (!qword_2812CF4F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812CF4F8);
  }

  return result;
}

uint64_t GeocodeTaskFailedEvent.init(startTime:endTime:location:errorDescription:reverseGeocodeSource:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X5>, uint64_t a7@<X8>)
{
  v13 = *a6;
  v14 = sub_220C9F7D4();
  OUTLINED_FUNCTION_1(v14);
  v16 = *(v15 + 32);
  v16(a7, a1, v14);
  v17 = type metadata accessor for GeocodeTaskFailedEvent();
  result = (v16)(a7 + v17[5], a2, v14);
  *(a7 + v17[6]) = a3;
  v19 = (a7 + v17[7]);
  *v19 = a4;
  v19[1] = a5;
  *(a7 + v17[8]) = v13;
  return result;
}

uint64_t type metadata accessor for GeocodeTaskFailedEvent()
{
  result = qword_2812CF8A0;
  if (!qword_2812CF8A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t GeocodeTaskFailedEvent.startTime.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_220C9F7D4();
  v4 = OUTLINED_FUNCTION_1(v3);
  v6 = *(v5 + 16);

  return v6(a1, v1, v4);
}

uint64_t GeocodeTaskFailedEvent.startTime.setter()
{
  OUTLINED_FUNCTION_5();
  v2 = sub_220C9F7D4();
  v3 = OUTLINED_FUNCTION_1(v2);
  v5 = *(v4 + 40);

  return v5(v1, v0, v3);
}

uint64_t GeocodeTaskFailedEvent.endTime.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for GeocodeTaskFailedEvent() + 20);
  v4 = sub_220C9F7D4();
  v5 = OUTLINED_FUNCTION_1(v4);
  v7 = *(v6 + 16);

  return v7(a1, v1 + v3, v5);
}

uint64_t GeocodeTaskFailedEvent.endTime.setter()
{
  OUTLINED_FUNCTION_5();
  v2 = *(type metadata accessor for GeocodeTaskFailedEvent() + 20);
  v3 = sub_220C9F7D4();
  OUTLINED_FUNCTION_1(v3);
  v5 = *(v4 + 40);

  return v5(v1 + v2, v0);
}

uint64_t GeocodeTaskFailedEvent.endTime.modify()
{
  OUTLINED_FUNCTION_5();
  v0 = *(type metadata accessor for GeocodeTaskFailedEvent() + 20);
  return OUTLINED_FUNCTION_13();
}

id GeocodeTaskFailedEvent.location.getter()
{
  v1 = *(v0 + *(type metadata accessor for GeocodeTaskFailedEvent() + 24));

  return v1;
}

void GeocodeTaskFailedEvent.location.setter()
{
  OUTLINED_FUNCTION_5();
  v2 = *(type metadata accessor for GeocodeTaskFailedEvent() + 24);

  *(v1 + v2) = v0;
}

uint64_t GeocodeTaskFailedEvent.location.modify()
{
  OUTLINED_FUNCTION_5();
  v0 = *(type metadata accessor for GeocodeTaskFailedEvent() + 24);
  return OUTLINED_FUNCTION_13();
}

uint64_t GeocodeTaskFailedEvent.errorDescription.getter()
{
  v1 = (v0 + *(type metadata accessor for GeocodeTaskFailedEvent() + 28));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t GeocodeTaskFailedEvent.errorDescription.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for GeocodeTaskFailedEvent() + 28));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t GeocodeTaskFailedEvent.errorDescription.modify()
{
  OUTLINED_FUNCTION_5();
  v0 = *(type metadata accessor for GeocodeTaskFailedEvent() + 28);
  return OUTLINED_FUNCTION_13();
}

uint64_t GeocodeTaskFailedEvent.reverseGeocodeSource.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for GeocodeTaskFailedEvent();
  *a1 = *(v1 + *(result + 32));
  return result;
}

uint64_t GeocodeTaskFailedEvent.reverseGeocodeSource.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for GeocodeTaskFailedEvent();
  *(v1 + *(result + 32)) = v2;
  return result;
}

uint64_t GeocodeTaskFailedEvent.reverseGeocodeSource.modify()
{
  OUTLINED_FUNCTION_5();
  v0 = *(type metadata accessor for GeocodeTaskFailedEvent() + 32);
  return OUTLINED_FUNCTION_13();
}

uint64_t static GeocodeTaskFailedEvent.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((sub_220C9F7A4() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for GeocodeTaskFailedEvent();
  v5 = v4[5];
  if ((sub_220C9F7A4() & 1) == 0)
  {
    return 0;
  }

  sub_220BF9260(0, &qword_27CF7BE70, 0x277D82BB8);
  v6 = v4[6];
  v7 = *(a1 + v6);
  v8 = *(a2 + v6);
  if ((sub_220CA0ED4() & 1) == 0)
  {
    return 0;
  }

  v9 = v4[7];
  v10 = *(a1 + v9);
  v11 = *(a1 + v9 + 8);
  v12 = (a2 + v9);
  v13 = v10 == *v12 && v11 == v12[1];
  if (!v13 && (sub_220CA1154() & 1) == 0)
  {
    return 0;
  }

  v14 = v4[8];
  v15 = *(a2 + v14);
  v16 = *(a1 + v14);

  return sub_220C3A9F4(v16, v15);
}