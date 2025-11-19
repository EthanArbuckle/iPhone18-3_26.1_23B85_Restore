id sub_1BCBAED7C()
{
  v0 = sub_1BCE19260();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1BCE19280();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BCE191B0();
  sub_1BCE19270();
  (*(v5 + 8))(v7, v4);
  LOBYTE(v7) = sub_1BCE19220();
  result = (*(v1 + 8))(v3, v0);
  v9 = 0;
  if (v7)
  {
    v9 = [objc_allocWithZone(MEMORY[0x1E696AB70]) init];
    [v9 setUnitsStyle_];
    result = [v9 setAllowedUnits_];
  }

  qword_1EDA1A720 = v9;
  return result;
}

id sub_1BCBAEF38()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E696AE78]) init];
  [v0 setUnitsStyle_];
  result = [v0 setDateTimeStyle_];
  qword_1EBD0A738 = v0;
  return result;
}

uint64_t MoonStringBuilder.nextFullMoonDurationString(fullMoonDate:now:timeZone:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = sub_1BCE193E0();
  OUTLINED_FUNCTION_2();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_2_0();
  v9 = v8 - v7;
  v10 = sub_1BCE19060();
  OUTLINED_FUNCTION_2();
  v12 = v11;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_2_0();
  v16 = v15 - v14;
  if (qword_1EDA1EFB0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v17 = qword_1EDA1EFB8;
  sub_1BCE18B60();

  v18 = sub_1BCE1D2E0();
  v20 = v19;

  if (v18 == 1702195828 && v20 == 0xE400000000000000)
  {

    v22 = 1;
  }

  else
  {
    v22 = sub_1BCE1E090();
  }

  sub_1BCE192A0();
  sub_1BCE19290();
  (*(v5 + 8))(v9, v3);
  v23 = MoonStringBuilder.nextFullMoonDurationString(fullMoonDate:relativeTo:timeZone:useRelativeDatePhrase:)(a1, v16, a3, v22 & 1);
  (*(v12 + 8))(v16, v10);
  return v23;
}

uint64_t MoonStringBuilder.nextFullMoonDurationString(fullMoonDate:relativeTo:timeZone:useRelativeDatePhrase:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = sub_1BCE193E0();
  OUTLINED_FUNCTION_2();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_2_0();
  v11 = v10 - v9;
  sub_1BCE192A0();
  if (a4)
  {
    v12 = sub_1BCBAF954();
  }

  else
  {
    v12 = sub_1BCBAFCA0();
  }

  v14 = v12;
  v15 = v13;
  (*(v7 + 8))(v11, v5);
  if (v15)
  {
    return v14;
  }

  else
  {
    return 0;
  }
}

uint64_t MoonStringBuilder.nextMoonRiseSetString(_:now:timeZone:)()
{
  v0 = sub_1BCE1E240();
  OUTLINED_FUNCTION_2();
  v24 = v1;
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_2_0();
  v5 = v4 - v3;
  v6 = sub_1BCE19260();
  OUTLINED_FUNCTION_2();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_2_0();
  v12 = v11 - v10;
  v13 = sub_1BCE19280();
  OUTLINED_FUNCTION_2();
  v15 = v14;
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_2_0();
  v19 = v18 - v17;
  sub_1BCE18F90();
  if (v20 >= 86400.0)
  {
    sub_1BCE1E260();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0A740);
    sub_1BCE1E210();
    *(swift_allocObject() + 16) = xmmword_1BCE3E050;
    sub_1BCE1E1E0();
    sub_1BCDF9240();
    sub_1BCBAF744();

    sub_1BCBB02C8();
    sub_1BCE1E250();
    (*(v24 + 8))(v5, v0);
    return v25;
  }

  else
  {
    if (qword_1EDA1EBE8 != -1)
    {
      swift_once();
    }

    sub_1BCE191B0();
    sub_1BCE19270();
    (*(v15 + 8))(v19, v13);
    v21 = sub_1BCE19240();
    (*(v8 + 8))(v12, v6);
    v22 = sub_1BC9600B0();
    if (v21)
    {
      sub_1BC970820();
      v22 = sub_1BCE1DB90();
    }
  }

  return v22;
}

uint64_t sub_1BCBAF744()
{
  v0 = sub_1BCE1E060();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1BCE1E1D0();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v5 = sub_1BCE1E1B0();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v6 = sub_1BCE1E230();
  MEMORY[0x1EEE9AC00](v6 - 8);

  sub_1BCE1E220();
  sub_1BCE1E1A0();
  (*(v1 + 104))(v3, *MEMORY[0x1E69E7048], v0);
  sub_1BCE1E1C0();
  (*(v1 + 8))(v3, v0);
  return sub_1BCE1E190();
}

uint64_t sub_1BCBAF954()
{
  v0 = sub_1BCE188F0();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BCE18F90();
  v5 = v4;
  if (v4 >= 3600.0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08570);
    v10 = sub_1BCE193C0();
    v11 = *(v10 - 8);
    v12 = (*(v11 + 80) + 32) & ~*(v11 + 80);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_1BCE3E050;
    if (v5 >= 86400.0)
    {
      v14 = MEMORY[0x1E6969A48];
    }

    else
    {
      v14 = MEMORY[0x1E6969A58];
    }

    (*(v11 + 104))(v13 + v12, *v14, v10);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08570);
    v6 = sub_1BCE193C0();
    v7 = *(v6 - 8);
    v8 = (*(v7 + 80) + 32) & ~*(v7 + 80);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_1BCE3E050;
    (*(v7 + 104))(v9 + v8, *MEMORY[0x1E6969A88], v6);
  }

  sub_1BC94FCF8();
  sub_1BCE192D0();

  if (qword_1EBD071C0 != -1)
  {
    swift_once();
  }

  v15 = qword_1EBD0A738;
  v16 = sub_1BCE19330();
  [v15 setCalendar_];

  v17 = sub_1BCE18820();
  v18 = [v15 localizedStringFromDateComponents_];

  v19 = sub_1BCE1D280();
  (*(v1 + 8))(v3, v0);
  return v19;
}

uint64_t sub_1BCBAFCA0()
{
  v0 = sub_1BCE1E240();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v28 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07888);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v32 = &v28 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0A748);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v28 - v7;
  v9 = sub_1BCE188F0();
  v29 = *(v9 - 8);
  v30 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v31 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1BCE1E210();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BCE18F90();
  v16 = v15;
  if (v15 >= 3600.0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0A740);
    *(swift_allocObject() + 16) = xmmword_1BCE3E050;
    if (v16 >= 86400.0)
    {
      sub_1BCE1E1E0();
    }

    else
    {
      sub_1BCE1E1F0();
    }
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0A740);
    *(swift_allocObject() + 16) = xmmword_1BCE3E050;
    sub_1BCE1E200();
  }

  sub_1BCDF9240();
  if (qword_1EDA1A718 != -1)
  {
    swift_once();
  }

  if (!qword_1EDA1A720)
  {
    goto LABEL_17;
  }

  v28 = v8;
  v17 = qword_1EDA1A720;
  sub_1BCE1E1E0();
  sub_1BCACB868();
  v19 = v18;
  (*(v12 + 8))(v14, v11);
  if ((v19 & 1) == 0 || (v20 = v16 / 86400.0, v16 / 86400.0 >= 2.0))
  {

LABEL_17:
    sub_1BCBAF744();

    sub_1BCE1E260();
    sub_1BCBB02C8();
    sub_1BCE1E250();
    (*(v1 + 8))(v3, v0);
    return v33;
  }

  v21 = sub_1BCE193E0();
  __swift_storeEnumTagSinglePayload(v28, 1, 1, v21);
  v22 = sub_1BCE19470();
  result = __swift_storeEnumTagSinglePayload(v32, 1, 1, v22);
  if (COERCE_UNSIGNED_INT64(fabs(v16 / 86400.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_21;
  }

  v24 = v31;
  if (v20 <= -9.22337204e18)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v20 < 9.22337204e18)
  {
    sub_1BCE188D0();
    v25 = sub_1BCE18820();
    v26 = [v17 stringFromDateComponents_];

    if (v26)
    {
      v27 = sub_1BCE1D280();

      (*(v29 + 8))(v24, v30);
    }

    else
    {
      (*(v29 + 8))(v24, v30);

      return 0;
    }

    return v27;
  }

LABEL_22:
  __break(1u);
  return result;
}

unint64_t sub_1BCBB02C8()
{
  result = qword_1EDA16810;
  if (!qword_1EDA16810)
  {
    sub_1BCE1E240();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA16810);
  }

  return result;
}

WeatherUI::TargetWindowSizeClass_optional __swiftcall TargetWindowSizeClass.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1BCE1DEC0();

  v5 = 9;
  if (v3 < 9)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t sub_1BCBB04C4()
{
  result = qword_1EBD0A750;
  if (!qword_1EBD0A750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD0A750);
  }

  return result;
}

unint64_t sub_1BCBB051C()
{
  result = qword_1EBD0A758;
  if (!qword_1EBD0A758)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD0A760);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD0A758);
  }

  return result;
}

unint64_t sub_1BCBB0580()
{
  result = qword_1EBD0A768;
  if (!qword_1EBD0A768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD0A768);
  }

  return result;
}

uint64_t SunriseSunsetEventCalculator.nextEvent(coordinate:date:timeZone:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>)
{
  v40 = a1;
  v41 = a2;
  v6 = sub_1BCE193E0();
  OUTLINED_FUNCTION_2();
  v39 = v7;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1BCE19060();
  OUTLINED_FUNCTION_2();
  v13 = v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v38 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v38 - v21;
  v24 = GEOLocationCoordinate2DMake(v23, a3);
  v26 = v25;
  sub_1BCE18E60();
  v28 = [objc_allocWithZone(MEMORY[0x1E69A2598]) initWithLocation:v24 time:v26 altitudeInDegrees:v27 accuracy:{*MEMORY[0x1E69A15F8], 60.0}];
  [v28 nextEventOfType_];
  v30 = v29;
  [v28 nextEventOfType_];
  v32 = v31;
  if (v30 == 0.0)
  {
    if (v31 == 0.0)
    {
      sub_1BCE19390();
      sub_1BCE18EF0();
      (*(v39 + 8))(v10, v6);
      SunriseSunsetEventCalculator.nextEvent(coordinate:date:timeZone:)(v22, v40, a3, a4);

      return (*(v13 + 8))(v22, v11);
    }

    sub_1BCE18E50();
    sub_1BCE18E50();
    (*(v13 + 8))(v19, v11);

    (*(v13 + 32))(v41, v16, v11);
    type metadata accessor for SunriseSunsetEvent();
  }

  else
  {
    sub_1BCE18E50();
    sub_1BCE18E50();
    v34 = (v13 + 32);
    if (v32 == 0.0)
    {
      (*(v13 + 8))(v16, v11);

      v35 = *(v13 + 32);
    }

    else
    {
      v36 = sub_1BCE18FD0();

      v37 = *(v13 + 8);
      if ((v36 & 1) == 0)
      {
        v37(v19, v11);
        (*v34)(v41, v16, v11);
        type metadata accessor for SunriseSunsetEvent();
        return swift_storeEnumTagMultiPayload();
      }

      v37(v16, v11);
      v35 = *v34;
    }

    v35(v41, v19, v11);
    type metadata accessor for SunriseSunsetEvent();
  }

  return swift_storeEnumTagMultiPayload();
}

uint64_t SunriseSunsetEventCalculator.isDaylight(location:date:timeZone:)()
{
  sub_1BCE18E60();
  sub_1BCE1A6A0();
  v1 = v0;
  v2 = sub_1BCE1A6A0();
  GEOLocationCoordinate2DMake(v2, v1);
  return geo_isDayLightForLocation();
}

uint64_t sub_1BCBB0A60(uint64_t a1)
{
  v2 = sub_1BCBB0BE0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BCBB0A9C(uint64_t a1)
{
  v2 = sub_1BCBB0BE0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SunriseSunsetEventCalculator.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0A770);
  OUTLINED_FUNCTION_2();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v9 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BCBB0BE0();
  sub_1BCE1E170();
  return (*(v4 + 8))(v7, v2);
}

unint64_t sub_1BCBB0BE0()
{
  result = qword_1EBD0A778;
  if (!qword_1EBD0A778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD0A778);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SunriseSunsetEventCalculator(_BYTE *result, int a2, int a3)
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

unint64_t sub_1BCBB0D3C()
{
  result = qword_1EBD0A780;
  if (!qword_1EBD0A780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD0A780);
  }

  return result;
}

unint64_t sub_1BCBB0D94()
{
  result = qword_1EBD0A788;
  if (!qword_1EBD0A788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD0A788);
  }

  return result;
}

uint64_t PressureFormatter.locale.getter@<X0>(uint64_t a1@<X8>)
{
  v8.receiver = v1;
  v8.super_class = swift_getObjectType();
  v3 = objc_msgSendSuper2(&v8, sel_locale);
  if (v3)
  {
    v4 = v3;
    sub_1BCE19170();

    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = sub_1BCE19280();
  return __swift_storeEnumTagSinglePayload(a1, v5, 1, v6);
}

uint64_t PressureFormatter.locale.setter(uint64_t a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07890);
  OUTLINED_FUNCTION_14(v5);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v13 - v7;
  sub_1BCA4B50C(a1, &v13 - v7);
  v9 = sub_1BCE19280();
  v10 = 0;
  if (__swift_getEnumTagSinglePayload(v8, 1, v9) != 1)
  {
    v10 = sub_1BCE19140();
    OUTLINED_FUNCTION_3_2();
    (*(v11 + 8))(v8, v9);
  }

  v13.receiver = v2;
  v13.super_class = ObjectType;
  objc_msgSendSuper2(&v13, sel_setLocale_, v10);

  sub_1BCBB1168();
  return sub_1BCA4B6E0(a1);
}

void sub_1BCBB1168()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07890);
  *&v2 = MEMORY[0x1EEE9AC00](v1 - 8).n128_u64[0];
  v4 = &v9 - v3;
  v5 = [v0 numberFormatter];
  if (v5)
  {
    v6 = v5;
    PressureFormatter.locale.getter(v4);
    v7 = sub_1BCE19280();
    v8 = 0;
    if (__swift_getEnumTagSinglePayload(v4, 1, v7) != 1)
    {
      v8 = sub_1BCE19140();
      (*(*(v7 - 8) + 8))(v4, v7);
    }

    [v6 setLocale_];
  }

  else
  {
    __break(1u);
  }
}

void (*PressureFormatter.locale.modify(objc_super **a1))(uint64_t *a1, char a2)
{
  v2 = v1;
  v4 = __swift_coroFrameAllocStub(0x58uLL);
  *a1 = v4;
  v4[3].receiver = v1;
  ObjectType = swift_getObjectType();
  v4[3].super_class = ObjectType;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07890);
  OUTLINED_FUNCTION_14(v6);
  v8 = *(v7 + 64);
  v4[4].receiver = __swift_coroFrameAllocStub(v8);
  v9 = __swift_coroFrameAllocStub(v8);
  v4[4].super_class = v9;
  v10 = __swift_coroFrameAllocStub(v8);
  v4[5].receiver = v10;
  v4->receiver = v2;
  v4->super_class = ObjectType;
  v11 = [(objc_super *)v4 locale];
  if (v11)
  {
    v12 = v11;
    sub_1BCE19170();

    v13 = 0;
  }

  else
  {
    v13 = 1;
  }

  v14 = sub_1BCE19280();
  __swift_storeEnumTagSinglePayload(v9, v13, 1, v14);
  sub_1BCA4BA30(v9, v10);
  return sub_1BCBB13C0;
}

void sub_1BCBB13C0(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 80);
  if (a2)
  {
    v4 = *(v2 + 64);
    sub_1BCA4B50C(*(*a1 + 80), v4);
    v5 = sub_1BCE19280();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v4, 1, v5);
    v7 = 0;
    if (EnumTagSinglePayload != 1)
    {
      v8 = *(v2 + 64);
      v7 = sub_1BCE19140();
      OUTLINED_FUNCTION_3_2();
      (*(v9 + 8))(v8, v5);
    }

    v10 = *(v2 + 72);
    v3 = *(v2 + 80);
    v11 = *(v2 + 64);
    *(v2 + 16) = *(v2 + 48);
    objc_msgSendSuper2((v2 + 16), sel_setLocale_, v7);

    sub_1BCA4B6E0(v3);
  }

  else
  {
    v12 = sub_1BCE19280();
    if (__swift_getEnumTagSinglePayload(v3, 1, v12) == 1)
    {
      v13 = 0;
    }

    else
    {
      v13 = sub_1BCE19140();
      OUTLINED_FUNCTION_3_2();
      (*(v14 + 8))(v3, v12);
      v3 = *(v2 + 80);
    }

    v11 = *(v2 + 64);
    v10 = *(v2 + 72);
    v15 = *(v2 + 48);
    *(v2 + 32) = v15;
    objc_msgSendSuper2((v2 + 32), sel_setLocale_, v13, v15);

    sub_1BCBB1168();
  }

  free(v3);
  free(v10);
  free(v11);

  free(v2);
}

id PressureFormatter.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id PressureFormatter.init()()
{
  ObjectType = swift_getObjectType();
  v2 = sub_1BCE19280();
  OUTLINED_FUNCTION_2();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07890);
  OUTLINED_FUNCTION_14(v8);
  OUTLINED_FUNCTION_7_0();
  *&v10 = MEMORY[0x1EEE9AC00](v9).n128_u64[0];
  v12 = &v17 - v11;
  v17.receiver = v0;
  v17.super_class = ObjectType;
  v13 = objc_msgSendSuper2(&v17, sel_init, v10);
  sub_1BCE19150();
  __swift_storeEnumTagSinglePayload(v12, 0, 1, v2);
  PressureFormatter.locale.setter(v12);
  [v13 setUnitStyle_];
  [v13 setUnitOptions_];
  result = [v13 numberFormatter];
  if (result)
  {
    v15 = result;
    sub_1BCE19150();
    v16 = sub_1BCE19140();
    (*(v4 + 8))(v7, v2);
    [v15 setLocale_];

    return v13;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t PressureFormatter.pressureValuePrecision.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07890);
  OUTLINED_FUNCTION_14(v0);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v8 - v2;
  PressureFormatter.locale.getter(&v8 - v2);
  v4 = sub_1BCE19280();
  result = __swift_getEnumTagSinglePayload(v3, 1, v4);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v6 = sub_1BCE190F0();
    OUTLINED_FUNCTION_3_2();
    (*(v7 + 8))(v3, v4);
    if (v6)
    {
      return 0;
    }

    else
    {
      return 2;
    }
  }

  return result;
}

NSUnitPressure __swiftcall PressureFormatter.localizedUnit()()
{
  sub_1BCE1A3E0();
  sub_1BCE1A3A0();
  v0 = sub_1BCE1A390();

  v4 = v0;
  result.super._converter = v3;
  result.super._reserved = v2;
  result.super.super._symbol = v1;
  result.super.super.super.isa = v4;
  return result;
}

Swift::Int __swiftcall PressureFormatter.pressureValuePrecision(for:)(NSUnitPressure a1)
{
  v1 = objc_opt_self();
  v2 = [v1 millimetersOfMercury];
  sub_1BC98B698();
  v3 = sub_1BCE1DAC0();

  if (v3)
  {
    return 0;
  }

  v4 = [v1 hectopascals];
  v5 = sub_1BCE1DAC0();

  if (v5)
  {
    return 0;
  }

  v7 = [v1 millibars];
  v8 = sub_1BCE1DAC0();

  if (v8)
  {
    return 0;
  }

  else
  {
    return 2;
  }
}

id PressureFormatter.pressureString(from:)()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD09BF0);
  OUTLINED_FUNCTION_2();
  v4 = v3;
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v5);
  v7 = v25 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07890);
  OUTLINED_FUNCTION_14(v8);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v9);
  v11 = v25 - v10;
  sub_1BCE1A3E0();
  sub_1BCE1A3A0();
  PressureFormatter.locale.getter(v11);
  v12 = sub_1BCE19280();
  result = __swift_getEnumTagSinglePayload(v11, 1, v12);
  if (result == 1)
  {
    __break(1u);
    goto LABEL_10;
  }

  v14 = sub_1BCE1A380();

  OUTLINED_FUNCTION_3_2();
  (*(v15 + 8))(v11, v12);
  sub_1BCE18680();
  sub_1BCE185E0();
  v17 = v16;
  (*(v4 + 8))(v7, v2);
  v26.super.super.super.isa = v14;
  v18 = PressureFormatter.pressureValuePrecision(for:)(v26);
  result = [v1 numberFormatter];
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v19 = result;
  [result setMinimumFractionDigits_];

  result = [v1 numberFormatter];
  if (!result)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v20 = result;
  [result setMaximumFractionDigits_];

  result = [v1 numberFormatter];
  if (!result)
  {
LABEL_12:
    __break(1u);
    return result;
  }

  v21 = result;
  v22 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
  v23 = [v21 stringFromNumber_];

  if (v23)
  {
    v24 = sub_1BCE1D280();
  }

  else
  {
    v25[0] = 0;
    v25[1] = 0xE000000000000000;
    sub_1BCE1D690();

    return v25[0];
  }

  return v24;
}

id PressureFormatter.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for SunriseSunsetWidgetDataStatus()
{
  result = qword_1EDA18308;
  if (!qword_1EDA18308)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1BCBB1DCC()
{
  v0 = type metadata accessor for SunriseSunsetViewModel(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v0;
}

uint64_t TemperatureHighLowTextVertical.init(highTemperature:lowTemperature:showNumericOnlyHighLow:scaleFactor:additionalSpacing:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X8>, double a7@<D0>, double a8@<D1>)
{
  *(a6 + 56) = swift_getKeyPath();
  *(a6 + 64) = 0;
  type metadata accessor for TemperatureHighLowTextVertical();
  sub_1BC97CA84();
  sub_1BCE1B570();
  OUTLINED_FUNCTION_2_46();
  OUTLINED_FUNCTION_2_46();
  result = OUTLINED_FUNCTION_2_46();
  *a6 = a1;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3;
  *(a6 + 24) = a4;
  *(a6 + 32) = a5;
  *(a6 + 40) = a7;
  *(a6 + 48) = a8;
  return result;
}

uint64_t TemperatureHighLowTextVertical.defaultAccessibilityLabel()()
{
  if (qword_1EDA1EFB0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v1 = qword_1EDA1EFB8;
  sub_1BCE18B60();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07880);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1BCE3E030;
  v4 = *v0;
  v3 = v0[1];
  v5 = MEMORY[0x1E69E6158];
  *(v2 + 56) = MEMORY[0x1E69E6158];
  v6 = sub_1BC9804E0();
  *(v2 + 32) = v4;
  *(v2 + 40) = v3;
  v7 = v0[2];
  v8 = v0[3];
  *(v2 + 96) = v5;
  *(v2 + 104) = v6;
  *(v2 + 64) = v6;
  *(v2 + 72) = v7;
  *(v2 + 80) = v8;

  sub_1BCE1D2B0();

  sub_1BC970820();
  v9 = sub_1BCE1C6A0();
  v11 = v10;
  v13 = v12;
  type metadata accessor for TemperatureHighLowTextVertical();
  sub_1BCBB3B20(qword_1EDA17F78, type metadata accessor for TemperatureHighLowTextVertical);
  sub_1BCE1C8D0();
  sub_1BC998CF4(v9, v11, v13 & 1);
}

double sub_1BCBB2134()
{
  v1 = sub_1BCE1BC20();
  OUTLINED_FUNCTION_2();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_2_0();
  v7 = v6 - v5;
  v8 = *(v0 + 56);
  if (*(v0 + 64) != 1)
  {

    sub_1BCE1D8C0();
    v9 = sub_1BCE1C1F0();
    sub_1BCE1AC20();

    sub_1BCE1BC10();
    swift_getAtKeyPath();
    sub_1BCA21FC4(v8, 0);
    (*(v3 + 8))(v7, v1);
    LOBYTE(v8) = v11;
  }

  result = 2.0;
  if (v8)
  {
    return 5.0;
  }

  return result;
}

uint64_t TemperatureHighLowTextVertical.body.getter@<X0>(uint64_t a1@<X8>)
{
  v24 = a1;
  sub_1BCE1C100();
  OUTLINED_FUNCTION_2();
  v22 = v3;
  v23 = v2;
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_2_0();
  v6 = v5 - v4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0A790);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v21 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0A798);
  OUTLINED_FUNCTION_2();
  v13 = v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v21 - v15;
  *v10 = sub_1BCE1BC80();
  *(v10 + 1) = 0;
  v10[16] = 0;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0A7A0);
  sub_1BCBB2500(v1, &v10[*(v17 + 44)]);
  sub_1BCE1C0D0();
  v18 = sub_1BC957184(&qword_1EBD0A7A8, &qword_1EBD0A790);
  sub_1BCE1C930();
  (*(v22 + 8))(v6, v23);
  sub_1BC94C05C(v10, &qword_1EBD0A790);
  v25 = v7;
  v26 = v18;
  swift_getOpaqueTypeConformance2();
  v19 = v24;
  sub_1BCE1C960();
  (*(v13 + 8))(v16, v11);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0A7B0);
  *(v19 + *(result + 36)) = 0x3FF0000000000000;
  return result;
}

uint64_t sub_1BCBB2500@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v182 = a2;
  v177 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0A7D8);
  MEMORY[0x1EEE9AC00](v177);
  v180 = (v158 - v3);
  v179 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0A7E0);
  MEMORY[0x1EEE9AC00](v179);
  v159 = v158 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0A7E8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v181 = v158 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v158 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0A7F0);
  MEMORY[0x1EEE9AC00](v10);
  v189 = v158 - v11;
  v12 = sub_1BCE1C420();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = v158 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08780);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = v158 - v17;
  v19 = sub_1BCE1C550();
  v165 = *(v19 - 8);
  v166 = v19;
  MEMORY[0x1EEE9AC00](v19);
  v164 = v158 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v171 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0A7F8);
  MEMORY[0x1EEE9AC00](v171);
  v176 = v158 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v192 = v158 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0A800);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v178 = v158 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v28 = v158 - v27;
  v29 = *(a1 + 32);
  v193 = v158 - v27;
  LODWORD(v163) = v29;
  v187 = v18;
  v188 = v9;
  v191 = v12;
  v186 = v15;
  if (v29)
  {
    v30 = 1;
    v31 = v10;
  }

  else
  {
    v185 = v10;
    v190 = v13;
    v173 = a1;
    if (qword_1EDA1EFB0 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v32 = qword_1EDA1EFB8;
    v33 = sub_1BCE18B60();
    v35 = v34;

    *&v210 = v33;
    *(&v210 + 1) = v35;
    sub_1BC970820();
    v36 = sub_1BCE1C6A0();
    v38 = v37;
    *&v210 = v36;
    *(&v210 + 1) = v37;
    v40 = v39 & 1;
    LOBYTE(v211) = v39 & 1;
    *(&v211 + 1) = v41;
    v42 = v164;
    sub_1BCE1C540();
    v43 = v192;
    sub_1BCE1C800();
    (*(v165 + 8))(v42, v166);
    sub_1BC998CF4(v36, v38, v40);

    type metadata accessor for TemperatureHighLowTextVertical();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0A7B8);
    v44 = v173;
    sub_1BCE1B580();
    sub_1BCE1C3C0();
    v45 = sub_1BCE1C350();
    v46 = v187;
    __swift_storeEnumTagSinglePayload(v187, 1, 1, v45);
    sub_1BCE1C3D0();
    sub_1BC94C05C(v46, &qword_1EBD08780);
    v13 = v190;
    v47 = v191;
    (*(v190 + 104))(v15, *MEMORY[0x1E6980EA8], v191);
    v48 = sub_1BCE1C450();

    (*(v13 + 8))(v15, v47);
    KeyPath = swift_getKeyPath();
    v50 = (v43 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0A808) + 36));
    *v50 = KeyPath;
    v50[1] = v48;
    *(v43 + *(v171 + 36)) = 257;
    sub_1BCBB2134();
    sub_1BCE1CEE0();
    sub_1BCE1B610();
    v183 = v220;
    v184 = v218;
    v174 = v223;
    v175 = v222;
    LOBYTE(v210) = 1;
    LOBYTE(v206) = v219;
    LOBYTE(v202) = v221;
    v51 = v176;
    sub_1BC952ABC(v43, v176, &qword_1EBD0A7F8);
    v52 = v210;
    LOBYTE(v47) = v206;
    v53 = v202;
    v54 = v189;
    sub_1BC952ABC(v51, v189, &qword_1EBD0A7F8);
    v55 = v54 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0A810) + 48);
    *v55 = 0;
    *(v55 + 8) = v52;
    v56 = v183;
    *(v55 + 16) = v184;
    *(v55 + 24) = v47;
    a1 = v44;
    *(v55 + 32) = v56;
    *(v55 + 40) = v53;
    v18 = v187;
    v57 = v174;
    *(v55 + 48) = v175;
    *(v55 + 56) = v57;
    sub_1BC94C05C(v192, &qword_1EBD0A7F8);
    v58 = v51;
    v15 = v186;
    sub_1BC94C05C(v58, &qword_1EBD0A7F8);
    v59 = v54;
    v60 = v193;
    sub_1BC9B53E8(v59, v193);
    v28 = v60;
    v30 = 0;
    v31 = v185;
  }

  __swift_storeEnumTagSinglePayload(v28, v30, 1, v31);
  v61 = *(a1 + 8);
  *&v210 = *a1;
  *(&v210 + 1) = v61;
  v62 = sub_1BC970820();

  v160 = v62;
  v172 = sub_1BCE1C6A0();
  v169 = v64;
  v170 = v63;
  LOBYTE(v62) = v65;
  v66 = type metadata accessor for TemperatureHighLowTextVertical();
  v67 = a1 + *(v66 + 48);
  v189 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0A7B8);
  v161 = v67;
  sub_1BCE1B580();
  v68 = *(a1 + 40);
  sub_1BCE1C390();
  v183 = sub_1BCE1C350();
  __swift_storeEnumTagSinglePayload(v18, 1, 1, v183);
  sub_1BCE1C3D0();
  sub_1BC94C05C(v18, &qword_1EBD08780);
  v70 = v13 + 104;
  v69 = *(v13 + 104);
  v71 = v15;
  LODWORD(v184) = *MEMORY[0x1E6980EA8];
  v72 = v15;
  v73 = v191;
  v185 = v69;
  v69(v71);
  sub_1BCE1C450();

  v74 = *(v13 + 8);
  v190 = v13 + 8;
  v162 = v74;
  v74(v72, v73);
  v75 = v172;
  v76 = v170;
  v77 = sub_1BCE1C610();
  v173 = v78;
  v174 = v77;
  LOBYTE(v73) = v79;
  v175 = v80;

  sub_1BC998CF4(v75, v76, v62 & 1);

  v81 = a1 + *(v66 + 52);
  sub_1BCE1B580();
  v82 = *&v210;
  LODWORD(v172) = v73 & 1;
  LOBYTE(v210) = v73 & 1;
  v158[2] = v66;
  sub_1BCE1B580();
  sub_1BCE1CEE0();
  sub_1BCE1B610();
  v169 = v226;
  v170 = v224;
  v167 = v229;
  v168 = v228;
  v217 = 1;
  v216 = v225;
  v215 = v227;
  if (v163)
  {
    v83 = *(a1 + 24);
    *&v210 = *(a1 + 16);
    *(&v210 + 1) = v83;

    v192 = sub_1BCE1C6A0();
    v176 = v84;
    v86 = v85;
    sub_1BCE1B580();
    sub_1BCE1C390();
    v87 = v187;
    __swift_storeEnumTagSinglePayload(v187, 1, 1, v183);
    sub_1BCE1C3D0();
    sub_1BC94C05C(v87, &qword_1EBD08780);
    v88 = v186;
    v89 = v191;
    v185(v186, v184, v191);
    sub_1BCE1C450();

    v162(v88, v89);
    LOBYTE(v89) = v86;
    v90 = v192;
    v91 = v176;
    v92 = sub_1BCE1C610();
    v190 = v93;
    v191 = v92;
    v95 = v94;
    v97 = v96;

    sub_1BC998CF4(v90, v91, v89 & 1);

    sub_1BCE1B580();
    v98 = v68 * *&v210;
    LOBYTE(v210) = v95 & 1;
    v99 = v180;
    v100 = v190;
    *v180 = v191;
    v99[1] = v100;
    *(v99 + 16) = v95 & 1;
    v99[3] = v97;
    *(v99 + 2) = xmmword_1BCE562E0;
    *(v99 + 6) = v98;
    *(v99 + 28) = 257;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0A828);
    sub_1BC957184(&qword_1EBD0A830, &qword_1EBD0A7E0);
    sub_1BCBB3DBC();
    v101 = v188;
    sub_1BCE1BF60();
  }

  else
  {
    v163 = v70;
    v158[1] = v81;
    if (qword_1EDA1EFB0 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v102 = qword_1EDA1EFB8;
    v103 = sub_1BCE18B60();
    v105 = v104;

    *&v210 = v103;
    *(&v210 + 1) = v105;
    v106 = sub_1BCE1C6A0();
    v108 = v107;
    *&v210 = v106;
    *(&v210 + 1) = v107;
    v110 = v109 & 1;
    LOBYTE(v211) = v109 & 1;
    *(&v211 + 1) = v111;
    v112 = v164;
    sub_1BCE1C540();
    v113 = v192;
    sub_1BCE1C800();
    (*(v165 + 8))(v112, v166);
    sub_1BC998CF4(v106, v108, v110);

    v114 = a1;
    sub_1BCE1B580();
    sub_1BCE1C3C0();
    v115 = v187;
    __swift_storeEnumTagSinglePayload(v187, 1, 1, v183);
    sub_1BCE1C3D0();
    sub_1BC94C05C(v115, &qword_1EBD08780);
    v116 = v186;
    v117 = v191;
    v185(v186, v184, v191);
    v118 = sub_1BCE1C450();

    v119 = v162;
    v162(v116, v117);
    v120 = swift_getKeyPath();
    v121 = (v113 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0A808) + 36));
    *v121 = v120;
    v121[1] = v118;
    *(v113 + *(v171 + 36)) = 257;
    sub_1BCBB2134();
    sub_1BCE1CEE0();
    sub_1BCE1B610();
    v171 = v230;
    v165 = v234;
    v166 = v232;
    v164 = v235;
    v201 = 1;
    v200 = v231;
    v199 = v233;
    v122 = *(v114 + 24);
    *&v210 = *(v114 + 16);
    *(&v210 + 1) = v122;

    v123 = sub_1BCE1C6A0();
    v125 = v124;
    v127 = v126;
    sub_1BCE1B580();
    sub_1BCE1C390();
    __swift_storeEnumTagSinglePayload(v115, 1, 1, v183);
    sub_1BCE1C3D0();
    sub_1BC94C05C(v115, &qword_1EBD08780);
    v185(v116, v184, v117);
    sub_1BCE1C450();

    v119(v116, v117);
    v128 = sub_1BCE1C610();
    v130 = v129;
    LOBYTE(v119) = v131;
    v133 = v132;

    sub_1BC998CF4(v123, v125, v127 & 1);

    sub_1BCE1B580();
    LOBYTE(v206) = v119 & 1;
    *&v202 = v128;
    *(&v202 + 1) = v130;
    LOBYTE(v203) = v119 & 1;
    *(&v203 + 1) = v210;
    DWORD1(v203) = *(&v210 + 3);
    *(&v203 + 1) = v133;
    *&v204 = 0;
    *(&v204 + 1) = v68 * *&v210;
    v205 = 257;
    v134 = v176;
    sub_1BC952ABC(v192, v176, &qword_1EBD0A7F8);
    LOBYTE(v125) = v201;
    LOBYTE(v115) = v200;
    LOBYTE(v128) = v199;
    v195 = v202;
    v196 = v203;
    v197 = v204;
    v198 = v205;
    v135 = v159;
    sub_1BC952ABC(v134, v159, &qword_1EBD0A7F8);
    v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0A818);
    v137 = v135 + *(v136 + 48);
    *v137 = 0;
    *(v137 + 8) = v125;
    *(v137 + 16) = v171;
    *(v137 + 24) = v115;
    v138 = v165;
    *(v137 + 32) = v166;
    *(v137 + 40) = v128;
    v139 = v164;
    *(v137 + 48) = v138;
    *(v137 + 56) = v139;
    v140 = v135 + *(v136 + 64);
    v141 = v195;
    v142 = v196;
    v206 = v195;
    v207 = v196;
    v143 = v197;
    v208 = v197;
    v144 = v196;
    *v140 = v195;
    *(v140 + 16) = v144;
    v209 = v198;
    *(v140 + 32) = v143;
    *(v140 + 48) = v198;
    v213 = v198;
    v211 = v142;
    v212 = v197;
    v210 = v141;
    sub_1BCBB3D4C(&v202, v194);
    sub_1BCBB3D4C(&v206, v194);
    sub_1BC94C05C(&v210, &qword_1EBD0A820);
    sub_1BC94C05C(v134, &qword_1EBD0A7F8);
    sub_1BC952ABC(v135, v180, &qword_1EBD0A7E0);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0A828);
    sub_1BC957184(&qword_1EBD0A830, &qword_1EBD0A7E0);
    sub_1BCBB3DBC();
    v101 = v188;
    sub_1BCE1BF60();
    sub_1BC94C05C(&v202, &qword_1EBD0A820);
    sub_1BC94C05C(v135, &qword_1EBD0A7E0);
    sub_1BC94C05C(v192, &qword_1EBD0A7F8);
  }

  v145 = v178;
  sub_1BC952ABC(v193, v178, &qword_1EBD0A800);
  LODWORD(v190) = v217;
  LODWORD(v191) = v216;
  LODWORD(v192) = v215;
  v146 = v181;
  sub_1BC952ABC(v101, v181, &qword_1EBD0A7E8);
  v147 = v182;
  sub_1BC952ABC(v145, v182, &qword_1EBD0A800);
  v148 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0A860);
  v149 = v147 + v148[12];
  v151 = v173;
  v150 = v174;
  *&v206 = v174;
  *(&v206 + 1) = v173;
  v152 = v172;
  LOBYTE(v207) = v172;
  *(&v207 + 1) = *v214;
  DWORD1(v207) = *&v214[3];
  v153 = v175;
  *(&v207 + 1) = v175;
  *&v208 = 0;
  *(&v208 + 1) = v68 * v82;
  v209 = 257;
  v154 = v208;
  *(v149 + 16) = v207;
  *(v149 + 32) = v154;
  *v149 = v206;
  *(v149 + 48) = 257;
  v155 = v147 + v148[16];
  *v155 = 0;
  *(v155 + 8) = v190;
  *(v155 + 16) = v170;
  *(v155 + 24) = v191;
  *(v155 + 32) = v169;
  *(v155 + 40) = v192;
  v156 = v167;
  *(v155 + 48) = v168;
  *(v155 + 56) = v156;
  sub_1BC952ABC(v146, v147 + v148[20], &qword_1EBD0A7E8);
  sub_1BCBB3D4C(&v206, &v210);
  sub_1BC94C05C(v188, &qword_1EBD0A7E8);
  sub_1BC94C05C(v193, &qword_1EBD0A800);
  sub_1BC94C05C(v146, &qword_1EBD0A7E8);
  *&v210 = v150;
  *(&v210 + 1) = v151;
  LOBYTE(v211) = v152;
  *(&v211 + 1) = *v214;
  DWORD1(v211) = *&v214[3];
  *(&v211 + 1) = v153;
  *&v212 = 0;
  *(&v212 + 1) = v68 * v82;
  v213 = 257;
  sub_1BC94C05C(&v210, &qword_1EBD0A820);
  return sub_1BC94C05C(v145, &qword_1EBD0A800);
}

uint64_t sub_1BCBB39F8(uint64_t a1)
{
  sub_1BCE1B7E0();
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_2_0();
  (*(v5 + 16))(v4 - v3, a1);
  return sub_1BCE1B9D0();
}

uint64_t sub_1BCBB3AAC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1BCE1B7C0();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1BCBB3B20(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1BCBB3B68()
{
  result = qword_1EBD0A7C0;
  if (!qword_1EBD0A7C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD0A7B0);
    sub_1BCBB3C20();
    sub_1BC957184(&qword_1EDA1E9B8, &qword_1EBD07E70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD0A7C0);
  }

  return result;
}

unint64_t sub_1BCBB3C20()
{
  result = qword_1EBD0A7C8;
  if (!qword_1EBD0A7C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD0A7D0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD0A790);
    sub_1BC957184(&qword_1EBD0A7A8, &qword_1EBD0A790);
    swift_getOpaqueTypeConformance2();
    sub_1BCBB3B20(&qword_1EDA1EE68, MEMORY[0x1E697CBE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD0A7C8);
  }

  return result;
}

uint64_t sub_1BCBB3D4C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0A820);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1BCBB3DBC()
{
  result = qword_1EBD0A838;
  if (!qword_1EBD0A838)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD0A828);
    sub_1BCBB3E48();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD0A838);
  }

  return result;
}

unint64_t sub_1BCBB3E48()
{
  result = qword_1EBD0A840;
  if (!qword_1EBD0A840)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD0A848);
    sub_1BCBB3ED4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD0A840);
  }

  return result;
}

unint64_t sub_1BCBB3ED4()
{
  result = qword_1EBD0A850;
  if (!qword_1EBD0A850)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD0A858);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD0A850);
  }

  return result;
}

uint64_t type metadata accessor for AirQualityView()
{
  result = qword_1EBD0A870;
  if (!qword_1EBD0A870)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1BCBB3FCC()
{
  sub_1BCBB4040();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_1BCBB4040()
{
  if (!qword_1EBD0A880)
  {
    sub_1BC96ABEC();
    v0 = type metadata accessor for ScaledValue();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBD0A880);
    }
  }
}

uint64_t sub_1BCBB40B8@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = *(*a1 + 48);
  v6 = **a1;
  v5 = *(*a1 + 16);
  a2[2] = *(*a1 + 32);
  a2[3] = v4;
  *a2 = v6;
  a2[1] = v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0A8D0);
  sub_1BC952ABC(a1[1], a2 + v7[12], &qword_1EBD0A8B8);
  v8 = a2 + v7[16];
  v9 = a1[2];
  v10 = a1[3];
  v30 = *(v9 + 8);
  v31 = *v9;
  v28 = *(v9 + 24);
  v29 = *(v9 + 16);
  v11 = *(v9 + 32);
  v12 = *(v9 + 40);
  v13 = *(v9 + 48);
  *v8 = *v9;
  *(v8 + 1) = v30;
  *(v8 + 2) = v29;
  *(v8 + 3) = v28;
  *(v8 + 4) = v11;
  *(v8 + 5) = v12;
  v8[48] = v13;
  v14 = v7[20];
  memcpy(__dst, v10, 0x58uLL);
  memmove(a2 + v14, v10, 0x58uLL);
  v15 = a2 + v7[24];
  v16 = a1[4];
  v17 = a1[5];
  v18 = *v16;
  v19 = *(v16 + 8);
  LOBYTE(v14) = *(v16 + 16);
  v20 = *(v16 + 24);
  v21 = *(v16 + 32);
  v22 = *(v16 + 40);
  LOBYTE(v16) = *(v16 + 48);
  *v15 = v18;
  *(v15 + 1) = v19;
  v15[16] = v14;
  *(v15 + 3) = v20;
  *(v15 + 4) = v21;
  *(v15 + 5) = v22;
  v15[48] = v16;
  v23 = (a2 + v7[28]);
  v24 = *v17;
  v25 = v17[1];
  v26 = v17[3];
  v23[2] = v17[2];
  v23[3] = v26;
  *v23 = v24;
  v23[1] = v25;
  sub_1BCBB57E0(v31, v30, v29, v28);
  sub_1BC952ABC(__dst, v32, &qword_1EBD0A8C8);
  sub_1BCA81D10(v18, v19, v14);
}

uint64_t sub_1BCBB4248@<X0>(uint64_t **a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[1];
  v4 = **a1;
  v5 = *(*a1 + 9);
  v6 = *(*a1 + 10);
  v36 = *(*a1 + 8);
  v7 = *v3;
  v8 = v3[1];
  v10 = v3[3];
  v9 = v3[4];
  v11 = v3[5];
  v35 = *(v3 + 16);
  v34 = *(v3 + 48);
  v13 = a1[2];
  v12 = a1[3];
  v14 = *v13;
  v33 = *(v13 + 8);
  v32 = *(v12 + 48);
  v15 = *(v13 + 9);
  LOBYTE(v13) = *(v13 + 10);
  *a2 = v4;
  *(a2 + 8) = v36;
  *(a2 + 9) = v5;
  v16 = *v12;
  v17 = v12[1];
  *(a2 + 10) = v6;
  *(a2 + 32) = v35;
  v18 = *(v12 + 16);
  v31 = v18;
  *(a2 + 56) = v11;
  *(a2 + 64) = v34;
  *(a2 + 72) = v14;
  *(a2 + 80) = v33;
  v20 = v12[3];
  v19 = v12[4];
  v21 = v12[5];
  *(a2 + 81) = v15;
  *(a2 + 82) = v13;
  *(a2 + 104) = v18;
  v22 = a1[4];
  v23 = a1[5];
  *(a2 + 128) = v21;
  *(a2 + 136) = v32;
  *(a2 + 144) = *v22;
  *(a2 + 152) = *(v22 + 8);
  LOBYTE(v21) = *(v22 + 9);
  LOBYTE(v22) = *(v22 + 10);
  *(a2 + 153) = v21;
  LOBYTE(v21) = *(v23 + 32);
  *(a2 + 154) = v22;
  LOBYTE(v22) = *(v23 + 33);
  v24 = a1[6];
  *(a2 + 192) = v21;
  v25 = *v24;
  *(a2 + 193) = v22;
  LOBYTE(v22) = *(v24 + 8);
  *(a2 + 200) = v25;
  LOBYTE(v25) = *(v24 + 9);
  *(a2 + 208) = v22;
  *(a2 + 209) = v25;
  v26 = *v23;
  v27 = v23[1];
  *(a2 + 210) = *(v24 + 10);
  v28 = *(v23 + 16);
  v29 = v23[3];
  *(a2 + 16) = v7;
  *(a2 + 24) = v8;
  *(a2 + 40) = v10;
  *(a2 + 48) = v9;
  *(a2 + 88) = v16;
  *(a2 + 96) = v17;
  *(a2 + 112) = v20;
  *(a2 + 120) = v19;
  *(a2 + 160) = v26;
  *(a2 + 168) = v27;
  *(a2 + 176) = v28;
  *(a2 + 184) = v29;
  sub_1BCA81D10(v7, v8, v35);

  sub_1BCA81D10(v16, v17, v31);

  sub_1BCA81D10(v26, v27, v28);
}

uint64_t sub_1BCBB4430@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(*a1 + 8);
  v5 = *(*a1 + 9);
  v6 = *(*a1 + 10);
  *a2 = **a1;
  *(a2 + 8) = v4;
  *(a2 + 9) = v5;
  *(a2 + 10) = v6;
  OUTLINED_FUNCTION_2_47();
  *(a2 + 16) = v7;
  *(a2 + 24) = v8;
  *(a2 + 25) = v9;
  *(a2 + 26) = v10;
  v12 = *(v11 + 16);
  v13 = *v12;
  v14 = *(v12 + 8);
  v15 = *(v12 + 16);
  v17 = *(v12 + 24);
  v16 = *(v12 + 32);
  v18 = *(v12 + 40);
  LOBYTE(v12) = *(v12 + 48);
  *(a2 + 32) = v13;
  *(a2 + 40) = v14;
  *(a2 + 48) = v15;
  *(a2 + 56) = v17;
  *(a2 + 64) = v16;
  *(a2 + 72) = v18;
  *(a2 + 80) = v12;
  OUTLINED_FUNCTION_2_47();
  *(a2 + 88) = v19;
  *(a2 + 96) = v20;
  *(a2 + 97) = v21;
  *(a2 + 98) = v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0A8D8);
  sub_1BC952ABC(*(a1 + 32), a2 + *(v23 + 96), &qword_1EBD0A8E0);
  v24 = a2 + *(v23 + 112);
  v25 = *(a1 + 40);
  v26 = *v25;
  v27 = *(v25 + 8);
  v28 = *(v25 + 9);
  LOBYTE(v25) = *(v25 + 10);
  *v24 = v26;
  *(v24 + 8) = v27;
  *(v24 + 9) = v28;
  *(v24 + 10) = v25;
  sub_1BCA81D10(v13, v14, v15);
}

uint64_t sub_1BCBB4574@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0A8E8);
  OUTLINED_FUNCTION_4();
  (*(v4 + 16))(a2, v3);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0A8F0);
  OUTLINED_FUNCTION_0_45(a2 + v5[12]);
  sub_1BC952ABC(v6, a2 + v5[16], &qword_1EBD0A8F8);
  OUTLINED_FUNCTION_0_45(a2 + v5[20]);
  sub_1BC952ABC(v7, a2 + v5[24], &qword_1EBD0A900);
  OUTLINED_FUNCTION_0_45(a2 + v5[28]);
  return sub_1BC952ABC(v8, a2 + v5[32], &qword_1EBD0A908);
}

uint64_t sub_1BCBB4680@<X0>(uint64_t **a1@<X0>, void *a2@<X8>)
{
  v2 = a1[1];
  v4 = **a1;
  v3 = (*a1)[1];
  v5 = (*a1)[2];
  v6 = (*a1)[3];
  v7 = (*a1)[4];
  v8 = (*a1)[5];
  v9 = *v2;
  v10 = v2[1];
  v11 = v2[2];
  v12 = v2[3];
  v13 = v2[4];
  v14 = v2[5];
  v15 = a1[2];
  v16 = a1[3];
  v17 = *v15;
  v18 = v15[1];
  v19 = v15[2];
  v20 = v15[3];
  v21 = *v16;
  v22 = v16[1];
  v23 = v16[2];
  v24 = v16[3];
  *a2 = v4;
  a2[1] = v3;
  a2[2] = v5;
  a2[3] = v6;
  a2[4] = v7;
  a2[5] = v8;
  a2[6] = v9;
  a2[7] = v10;
  a2[8] = v11;
  a2[9] = v12;
  a2[10] = v13;
  a2[11] = v14;
  a2[12] = v17;
  a2[13] = v18;
  a2[14] = v19;
  a2[15] = v20;
  a2[16] = v21;
  a2[17] = v22;
  a2[18] = v23;
  a2[19] = v24;
}

uint64_t sub_1BCBB4770@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_1BCE1BDF0();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0A888);
  return sub_1BCBB47C4(v1, a1 + *(v3 + 44));
}

uint64_t sub_1BCBB47C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v39 = sub_1BCE1C100();
  v4 = *(v39 - 8);
  MEMORY[0x1EEE9AC00](v39);
  v6 = &v28[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0A890);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v28[-v8];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0A898);
  v11 = *(v10 - 8);
  v40 = v10;
  v41 = v11;
  MEMORY[0x1EEE9AC00](v10);
  v38 = &v28[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v28[-v14];
  sub_1BCE1CEE0();
  sub_1BCE1B610();
  v37 = v42;
  v36 = v44;
  v35 = v46;
  v34 = v47;
  v56 = 1;
  v55 = v43;
  v54 = v45;
  *v9 = sub_1BCE1BC90();
  *(v9 + 1) = 0x4020000000000000;
  v9[16] = 0;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0A8A0);
  sub_1BCBB4C4C(a1, &v9[*(v16 + 44)]);
  sub_1BCE1C0E0();
  sub_1BC957184(&qword_1EBD0A8A8, &qword_1EBD0A890);
  v17 = v15;
  v30 = v15;
  sub_1BCE1C930();
  (*(v4 + 8))(v6, v39);
  sub_1BC94C05C(v9, &qword_1EBD0A890);
  sub_1BCE1CEE0();
  sub_1BCE1B610();
  v39 = v48;
  v33 = v50;
  v32 = v52;
  v31 = v53;
  v59 = 1;
  v58 = v49;
  v57 = v51;
  LOBYTE(a1) = v56;
  LOBYTE(v4) = v55;
  LOBYTE(v15) = v54;
  v18 = *(v41 + 16);
  v19 = v38;
  v20 = v17;
  v21 = v40;
  v18(v38, v20, v40);
  LOBYTE(v6) = v59;
  LOBYTE(v9) = v58;
  v29 = v57;
  *a2 = 0;
  *(a2 + 8) = a1;
  *(a2 + 16) = v37;
  *(a2 + 24) = v4;
  *(a2 + 32) = v36;
  *(a2 + 40) = v15;
  v22 = v34;
  *(a2 + 48) = v35;
  *(a2 + 56) = v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0A8B0);
  v18((a2 + *(v23 + 48)), v19, v21);
  v24 = a2 + *(v23 + 64);
  *v24 = 0;
  *(v24 + 8) = v6;
  *(v24 + 16) = v39;
  *(v24 + 24) = v9;
  *(v24 + 32) = v33;
  *(v24 + 40) = v29;
  v25 = v31;
  *(v24 + 48) = v32;
  *(v24 + 56) = v25;
  v26 = *(v41 + 8);
  v26(v30, v21);
  return (v26)(v19, v21);
}

uint64_t sub_1BCBB4C4C@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v108 = a2;
  v3 = sub_1BCE1BD20();
  MEMORY[0x1EEE9AC00](v3 - 8);
  v112 = &v90 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1BCE18AF0();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v111 = &v90 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0A8B8);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v109 = &v90 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v113 = &v90 - v10;
  sub_1BCE1CEE0();
  sub_1BCE1B610();
  v104 = v164;
  v105 = v166;
  v106 = v169;
  v107 = v168;
  v184 = 1;
  v182 = v165;
  v180 = v167;
  v11 = *(type metadata accessor for AirQualityView() + 20);
  v103 = a1;
  v12 = a1 + v11;
  v13 = *(a1 + v11 + 64);
  v14 = *(v12 + 72);
  *&v160[0] = v13;
  *(&v160[0] + 1) = v14;
  sub_1BC970820();

  v15 = sub_1BCE1C6A0();
  v17 = v16;
  v19 = v18;
  sub_1BCE1C470();
  v20 = sub_1BCE1C610();
  v22 = v21;
  v24 = v23;
  v110 = v25;

  sub_1BC998CF4(v15, v17, v19 & 1);

  sub_1BCE1C370();
  v26 = sub_1BCE1C530();
  v28 = v27;
  v30 = v29;
  sub_1BC998CF4(v20, v22, v24 & 1);

  v110 = objc_opt_self();
  v31 = [v110 labelColor];
  sub_1BCE1CA20();
  LOBYTE(v20) = v30;
  v32 = v26;
  v33 = sub_1BCE1C5C0();
  v96 = v34;
  v97 = v33;
  v35 = *&v34;
  LODWORD(v102) = v36;
  v38 = v37;
  v99 = *&v37;

  sub_1BC998CF4(v32, v28, v20 & 1);

  KeyPath = swift_getKeyPath();
  *&v132[0] = v33;
  v132[1] = v35;
  v39 = v102 & 1;
  LOBYTE(v132[2]) = v102 & 1;
  v132[3] = v38;
  *&v132[4] = KeyPath;
  *&v132[5] = 1;
  LOBYTE(v132[6]) = 0;
  v40 = *v12;
  *(v160 + 8) = *(v12 + 8);
  v41 = *(v12 + 24);
  v42 = *(v12 + 32);
  v43 = *(v12 + 40);
  v160[3] = *(v12 + 48);
  v44 = *(v12 + 64);
  v45 = *(v12 + 72);
  v160[5] = *(v12 + 80);
  LOBYTE(v33) = *(v12 + 96);
  *v162 = *(v12 + 97);
  *&v162[3] = *(v12 + 100);
  v46 = *(v12 + 104);
  v95 = v40;
  *&v160[0] = v40;
  *(&v160[1] + 1) = v41;
  v101 = v43;
  v102 = v42;
  *&v160[2] = v42;
  *(&v160[2] + 1) = v43;
  *&v160[4] = v44;
  *(&v160[4] + 1) = v45;
  v161 = v33;
  v100 = v46;
  v163 = v46;
  sub_1BCC770D8(v111);
  v47 = sub_1BCE1C690();
  v49 = v48;
  LOBYTE(v32) = v50;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0A8C0);
  sub_1BCBB56D8();
  sub_1BCE1C8D0();
  sub_1BC998CF4(v47, v49, v32 & 1);

  sub_1BC998CF4(v97, v96, v39);

  v51 = 0;
  v52 = 0;
  v53 = 0;
  v54 = 0;
  v55 = 0;
  v111 = 0;
  if (v33)
  {
    v111 = 1;
    sub_1BCE1BD10();
    sub_1BCE1BD00();
    *&v160[0] = v95;
    sub_1BCE1BCB0();
    sub_1BCE1BD00();
    sub_1BCE1BD40();
    v56 = sub_1BCE1C680();
    v58 = v57;
    v60 = v59;
    sub_1BCE1C470();
    v61 = sub_1BCE1C610();
    v63 = v62;
    v65 = v64;

    sub_1BC998CF4(v56, v58, v60 & 1);

    v66 = [v110 labelColor];
    sub_1BCE1CA20();
    v51 = sub_1BCE1C5C0();
    v52 = v67;
    LOBYTE(v58) = v68;
    v54 = v69;

    sub_1BC998CF4(v61, v63, v65 & 1);

    v55 = swift_getKeyPath();
    v53 = v58 & 1;
    sub_1BCA81D10(v51, v52, v58 & 1);
  }

  v94 = v53;
  v95 = v52;
  v96 = v51;
  v97 = v54;
  KeyPath = v55;

  v100 = sub_1BCE1CE60();
  v99 = sub_1BCE1CAB0();
  sub_1BCDC4D14();
  sub_1BCE1CEE0();
  sub_1BCE1B610();
  LOBYTE(v160[0]) = 0;
  *&v152[7] = v170;
  *&v152[23] = v171;
  *&v152[39] = v172;
  sub_1BCE1BD10();
  sub_1BCE1BD00();
  sub_1BCE1BCF0();
  sub_1BCE1BD00();
  sub_1BCE1BD40();
  v70 = sub_1BCE1C680();
  v72 = v71;
  v74 = v73;
  sub_1BCE1C470();
  v75 = sub_1BCE1C610();
  v77 = v76;
  v79 = v78;

  sub_1BC998CF4(v70, v72, v74 & 1);

  v80 = [v110 labelColor];
  sub_1BCE1CA20();
  v110 = sub_1BCE1C5C0();
  v103 = v81;
  LODWORD(v102) = v82;
  v112 = v83;

  sub_1BC998CF4(v75, v77, v79 & 1);

  v91 = swift_getKeyPath();
  sub_1BCE1CEE0();
  sub_1BCE1B610();
  v90 = v173;
  v101 = v177;
  v92 = v175;
  v93 = v178;
  v159 = 1;
  v157 = v174;
  v155 = v176;
  v140 = 0;
  v141 = v184;
  *v142 = *v183;
  *&v142[3] = *&v183[3];
  v143 = v104;
  v144 = v182;
  *v145 = *v181;
  *&v145[3] = *&v181[3];
  v146 = v105;
  v147 = v180;
  *&v148[3] = *&v179[3];
  *v148 = *v179;
  v149 = v107;
  v150 = v106;
  v151[0] = &v140;
  v84 = v113;
  v85 = v109;
  sub_1BC952ABC(v113, v109, &qword_1EBD0A8B8);
  v132[0] = v41 * 100.0;
  *(&v132[4] + 1) = *v152;
  v87 = v95;
  v86 = v96;
  v133 = v96;
  v134 = v95;
  LOBYTE(v75) = v94;
  v88 = v97;
  v135 = v94;
  v136 = v97;
  v137 = KeyPath;
  v138 = v111;
  v139 = 0;
  v151[1] = v85;
  v151[2] = &v133;
  LOBYTE(v132[1]) = 0;
  *(&v132[1] + 1) = *v153;
  HIDWORD(v132[1]) = *&v153[3];
  *&v132[2] = v99;
  *&v132[3] = v100;
  LOBYTE(v132[4]) = 0;
  *(&v132[6] + 1) = *&v152[16];
  *(&v132[8] + 1) = *&v152[32];
  v132[10] = *&v152[47];
  v125 = v110;
  v126 = v103;
  v127 = v102 & 1;
  v128 = v112;
  v129 = v91;
  v130 = 1;
  v131 = 0;
  v151[3] = v132;
  v151[4] = &v125;
  v114 = 0;
  v115 = v159;
  *v116 = *v158;
  *&v116[3] = *&v158[3];
  v117 = v90;
  v118 = v157;
  *v119 = *v156;
  *&v119[3] = *&v156[3];
  v120 = v92;
  v121 = v155;
  *&v122[3] = *&v154[3];
  *v122 = *v154;
  v123 = v101;
  v124 = v93;
  v151[5] = &v114;
  sub_1BCBB40B8(v151, v108);
  sub_1BCBB5790(v86, v87, v75, v88);
  sub_1BC94C05C(v84, &qword_1EBD0A8B8);
  sub_1BC998CF4(v125, v126, v127);

  memcpy(v160, v132, 0x58uLL);
  sub_1BC94C05C(v160, &qword_1EBD0A8C8);
  sub_1BCBB5790(v133, v134, v135, v136);
  return sub_1BC94C05C(v85, &qword_1EBD0A8B8);
}

unint64_t sub_1BCBB56D8()
{
  result = qword_1EDA1BAE8;
  if (!qword_1EDA1BAE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD0A8C0);
    sub_1BC957184(&qword_1EDA1B688, &qword_1EBD09FF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA1BAE8);
  }

  return result;
}

uint64_t sub_1BCBB5790(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_1BC998CF4(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_1BCBB57E0(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_1BCA81D10(result, a2, a3 & 1);
  }

  return result;
}

__n128 sub_1BCBB5830@<Q0>(uint64_t a1@<X8>)
{
  v2 = (a1 + 1436);
  sub_1BCBB5F8C();
  v4 = v3;
  sub_1BCBB7FDC();
  *a1 = 0x4006666666666666;
  *(a1 + 8) = 2;
  *(a1 + 16) = 0x3FF0000000000000;
  *(a1 + 24) = 30;
  *(a1 + 32) = xmmword_1BCE3BED0;
  *(a1 + 48) = xmmword_1BCE3BED0;
  *(a1 + 64) = 0x42C8000042480000;
  *(a1 + 72) = 0xC361000000000000;
  *(a1 + 80) = xmmword_1BCE3DE90;
  *(a1 + 96) = xmmword_1BCE3BEF0;
  *(a1 + 112) = 0x3E8000003DF5C28FLL;
  *(a1 + 128) = xmmword_1BCE3C7C0;
  *(a1 + 144) = xmmword_1BCE3D840;
  *(a1 + 160) = xmmword_1BCE3BF00;
  *(a1 + 176) = 1153138688;
  *(a1 + 184) = 0x3E4CCCCD3DA3D70ALL;
  *(a1 + 192) = xmmword_1BCE3C7C0;
  *(a1 + 208) = xmmword_1BCE3C700;
  *(a1 + 224) = xmmword_1BCE3C660;
  *(a1 + 240) = 0x4140000040A00000;
  *(a1 + 248) = 1132068864;
  *(a1 + 256) = 0x3E4CCCCD3DE147AELL;
  *(a1 + 264) = 0x40A0000041700000;
  *(a1 + 272) = 1101004800;
  __asm { FMOV            V0.4S, #1.0 }

  *(a1 + 288) = xmmword_1BCE3C7C0;
  *(a1 + 304) = result;
  *(a1 + 320) = 0x4348000040C00000;
  *(a1 + 328) = 0x3E99999A3E19999ALL;
  *(a1 + 336) = 0x3F00000040A00000;
  *(a1 + 352) = xmmword_1BCE3C7C0;
  *(a1 + 368) = xmmword_1BCE3C700;
  *(a1 + 384) = 0;
  *(a1 + 388) = 0x3AC49BA63F800000;
  *(a1 + 400) = xmmword_1BCE3C670;
  *(a1 + 416) = 0x3F0000003F000000;
  *(a1 + 424) = 30;
  *(a1 + 432) = xmmword_1BCE3C680;
  *(a1 + 448) = 0x3E4CCCCD3DCCCCCDLL;
  *(a1 + 464) = result;
  *(a1 + 480) = xmmword_1BCE3D870;
  *(a1 + 496) = 0x43FA000040400000;
  *(a1 + 504) = 1116471296;
  *(a1 + 512) = 0x3E8000003DF5C28FLL;
  *(a1 + 528) = result;
  *(a1 + 544) = result;
  *(a1 + 560) = 0x4248000044BB8000;
  *(a1 + 568) = 0x3E4CCCCD3DA3D70ALL;
  *(a1 + 576) = xmmword_1BCE3C700;
  *(a1 + 592) = xmmword_1BCE3D880;
  *(a1 + 608) = 0x40C0000040800000;
  *(a1 + 624) = xmmword_1BCE3C700;
  *(a1 + 640) = xmmword_1BCE3D880;
  *(a1 + 656) = 0x419DAE1441200000;
  *(a1 + 664) = 0x4019999A3E99999ALL;
  *(a1 + 672) = 0x409000003F800000;
  *(a1 + 688) = result;
  *(a1 + 704) = 1065353216;
  *(a1 + 712) = 0x3E4CCCCD3E3851ECLL;
  *(a1 + 720) = 0x41A0000041600000;
  *(a1 + 728) = 1090519040;
  *(a1 + 736) = 1;
  *(a1 + 744) = 4;
  *(a1 + 752) = xmmword_1BCE565B0;
  *(a1 + 768) = 0xD000000000000010;
  *(a1 + 776) = 0x80000001BCE79320;
  *(a1 + 784) = 0xD000000000000014;
  *(a1 + 792) = 0x80000001BCE79340;
  *(a1 + 800) = 9;
  *(a1 + 816) = result;
  *(a1 + 832) = 1065353216;
  *(a1 + 840) = 0x3ECCCCCD3E800000;
  __asm { FMOV            V4.2S, #12.5 }

  *(a1 + 848) = _D4;
  *(a1 + 856) = 1090519040;
  *(a1 + 864) = 1;
  *(a1 + 872) = 3;
  *(a1 + 880) = xmmword_1BCE565C0;
  *(a1 + 896) = 0x2073756C756D7543;
  *(a1 + 904) = 0xEB000000004C202DLL;
  *(a1 + 912) = 0x5F73756C756D7543;
  *(a1 + 920) = 0xEF4C656C676E6953;
  *(a1 + 928) = 10;
  *(a1 + 944) = result;
  *(a1 + 960) = 1065353216;
  *(a1 + 968) = 0x3ECCCCCD3E99999ALL;
  *(a1 + 976) = 0x40F0000040D00000;
  *(a1 + 984) = 0x40000000;
  *(a1 + 992) = 1;
  *(a1 + 1000) = 3;
  *(a1 + 1008) = xmmword_1BCE565D0;
  *(a1 + 1024) = 0x2073756C756D7543;
  *(a1 + 1032) = 0xEB000000004D202DLL;
  *(a1 + 1040) = 0x5F73756C756D7543;
  *(a1 + 1048) = 0xEF4D656C676E6953;
  *(a1 + 1056) = 15;
  *(a1 + 1072) = result;
  *(a1 + 1088) = 1065353216;
  *(a1 + 1096) = 0x3F8000003F000000;
  *(a1 + 1104) = 0x404F5C293FC00000;
  *(a1 + 1112) = 0;
  *(a1 + 1120) = 1;
  *(a1 + 1128) = 4;
  *(a1 + 1136) = xmmword_1BCE3D8A0;
  *(a1 + 1152) = 0x2073756C756D7543;
  *(a1 + 1160) = 0xEB0000000053202DLL;
  *(a1 + 1168) = 0x5F73756C756D7543;
  *(a1 + 1176) = 0xEF53656C676E6953;
  *(a1 + 1184) = 5;
  *(a1 + 1200) = result;
  *(a1 + 1216) = xmmword_1BCE3E540;
  *(a1 + 1232) = 0;
  *(a1 + 1236) = 1;
  *(a1 + 1240) = 0x617274736F746C41;
  *(a1 + 1248) = 0xEB00000000737574;
  *(a1 + 1256) = 0xD000000000000013;
  *(a1 + 1264) = 0x80000001BCE79300;
  *(a1 + 1272) = 8;
  *(a1 + 1280) = 0;
  *(a1 + 1288) = 0x400000003F800000;
  *(a1 + 1296) = 0x41C8000042C80000;
  *(a1 + 1304) = 0;
  *(a1 + 1312) = result;
  *(a1 + 1328) = result;
  *(a1 + 1344) = 0;
  *(a1 + 1352) = 0x40000000;
  *(a1 + 1360) = 0;
  *(a1 + 1368) = 1;
  *(a1 + 1408) = 0u;
  *(a1 + 1392) = 0u;
  *(a1 + 1376) = 0u;
  *(a1 + 1424) = 0x3F99999A3ECCCCCDLL;
  *(a1 + 1432) = 1;
  *v2 = xmmword_1BCE3BFC0;
  *(a1 + 1456) = 0x41D3333341BD3333;
  *(a1 + 1472) = result;
  *(a1 + 1488) = result;
  *(a1 + 1504) = 1097859072;
  *(a1 + 1512) = 0x736168506E6F6F6DLL;
  *(a1 + 1520) = 0xEA00000000003065;
  *(a1 + 1528) = 1112014848;
  *(a1 + 1536) = result;
  *(a1 + 1552) = xmmword_1BCE3C770;
  *(a1 + 1568) = 0x4248000042200000;
  *(a1 + 1584) = 0u;
  *(a1 + 1600) = xmmword_1BCE3D880;
  __asm { FMOV            V2.2S, #-30.0 }

  *(a1 + 1616) = -_D2;
  *(a1 + 1624) = 0x40000000;
  *(a1 + 1632) = 0;
  *(a1 + 1628) = 0;
  *(v2 + 198) = xmmword_1BCE3E560;
  *(a1 + 1650) = 1;
  *(a1 + 1652) = 0;
  *(a1 + 1656) = 0;
  *(a1 + 1657) = v13;
  *(a1 + 1659) = v14;
  *(a1 + 1660) = 1066611507;
  *(a1 + 1664) = 0x40C0000040A00000;
  *(a1 + 1672) = 3;
  *(a1 + 1680) = xmmword_1BCE3C000;
  *(a1 + 1696) = xmmword_1BCE3C010;
  *(a1 + 1712) = xmmword_1BCE3C020;
  *(a1 + 1728) = 0x3F0000003EB33333;
  *(a1 + 1736) = 0x3E800000453B8000;
  *(a1 + 1760) = 0;
  *(a1 + 1744) = 0u;
  *(a1 + 1776) = xmmword_1BCE3D8B0;
  *(a1 + 1792) = xmmword_1BCE3D8C0;
  *(a1 + 1808) = xmmword_1BCE3C7A0;
  *(a1 + 1824) = 1;
  *(a1 + 1828) = xmmword_1BCE3C7B0;
  *(a1 + 1844) = 1036831949;
  *(a1 + 1848) = 0x4100000041200000;
  *(a1 + 1856) = 3;
  *(a1 + 1864) = 1041865114;
  *(a1 + 1872) = 0x400AE1483F970A3DLL;
  *(a1 + 1880) = 1109917696;
  *(a1 + 1888) = result;
  *(a1 + 1904) = 0x3E4CCCCD40A00000;
  *(a1 + 1912) = 1101004800;
  *(a1 + 1920) = 1;
  *(a1 + 1928) = 1107296256;
  *(a1 + 1936) = result;
  *(a1 + 1952) = 1065353216;
  *(a1 + 1960) = 0x420C000041C80000;
  *(a1 + 1968) = xmmword_1BCE3C7D0;
  *(a1 + 1984) = 0x3F80000000000000;
  *(a1 + 1992) = 1061158912;
  *(a1 + 2000) = 0x3F6666663E4CCCCDLL;
  *(a1 + 2008) = 0x3F6666663F333333;
  *(a1 + 2016) = xmmword_1BCE3C080;
  *(a1 + 2096) = 0u;
  *(a1 + 2080) = 0u;
  *(a1 + 2064) = 0u;
  *(a1 + 2048) = 0u;
  *(a1 + 2032) = 0u;
  *(a1 + 2112) = 1056964608;
  *(a1 + 2120) = 0x3E4CCCCD3DCCCCCDLL;
  *(a1 + 2128) = 0x400000003F800000;
  *(a1 + 2136) = 0x4040000040000000;
  *(a1 + 2144) = -1046478848;
  *(a1 + 2160) = result;
  *(a1 + 2176) = result;
  *(a1 + 2192) = 1061997773;
  *(a1 + 2200) = 10;
  *(a1 + 2208) = 0x41A000003F4CCCCDLL;
  *(a1 + 2224) = xmmword_1BCE565E0;
  *(a1 + 2240) = xmmword_1BCE565F0;
  *(a1 + 2256) = result;
  *(a1 + 2304) = 0;
  *(a1 + 2288) = 0u;
  *(a1 + 2272) = 0u;
  *(a1 + 2312) = v4;
  *(a1 + 2320) = v12;
  return result;
}

__n128 sub_1BCBB5F8C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07858);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1BCE3C820;
  *(v0 + 32) = 0xC056800000000000;
  *(v0 + 40) = 0;
  *(v0 + 48) = xmmword_1BCE3C830;
  *(v0 + 64) = 0x432A000043160000;
  *(v0 + 72) = 1040242952;
  *(v0 + 80) = xmmword_1BCE3C840;
  *(v0 + 96) = xmmword_1BCE3C850;
  *(v0 + 112) = xmmword_1BCE3C860;
  *(v0 + 128) = xmmword_1BCE3C870;
  *(v0 + 144) = xmmword_1BCE3C880;
  *(v0 + 160) = xmmword_1BCE3C890;
  *(v0 + 176) = xmmword_1BCE3C8A0;
  *(v0 + 192) = xmmword_1BCE3C8B0;
  __asm { FMOV            V21.2D, #0.5 }

  *(v0 + 208) = _Q21;
  *(v0 + 224) = xmmword_1BCE3D910;
  __asm { FMOV            V0.2D, #1.0 }

  *(v0 + 240) = result;
  *(v0 + 256) = result;
  *(v0 + 272) = result;
  *(v0 + 288) = result;
  *(v0 + 304) = result;
  *(v0 + 320) = xmmword_1BCE3C8C0;
  *(v0 + 336) = xmmword_1BCE3C8F0;
  *(v0 + 352) = result;
  *(v0 + 368) = xmmword_1BCE3C900;
  *(v0 + 384) = 0x3F3333333F800000;
  *(v0 + 392) = 0x3FF0000000000000;
  *(v0 + 400) = result;
  *(v0 + 416) = 0;
  *(v0 + 424) = 1065353216;
  *(v0 + 432) = result;
  *(v0 + 448) = result;
  *(v0 + 464) = result;
  *(v0 + 480) = result;
  *(v0 + 496) = result;
  *(v0 + 512) = result;
  *(v0 + 528) = result;
  *(v0 + 544) = result;
  *(v0 + 560) = result;
  *(v0 + 576) = result;
  *(v0 + 592) = result;
  *(v0 + 608) = result;
  *(v0 + 624) = result;
  *(v0 + 640) = result;
  *(v0 + 656) = result;
  *(v0 + 672) = result;
  *(v0 + 688) = result;
  *(v0 + 704) = result;
  *(v0 + 720) = result;
  *(v0 + 736) = result;
  *(v0 + 752) = result;
  *(v0 + 768) = result;
  *(v0 + 784) = result;
  *(v0 + 800) = result;
  *(v0 + 816) = result;
  *(v0 + 832) = result;
  *(v0 + 848) = result;
  *(v0 + 864) = result;
  *(v0 + 880) = result;
  *(v0 + 896) = result;
  *(v0 + 912) = result;
  *(v0 + 928) = result;
  *(v0 + 944) = result;
  *(v0 + 960) = result;
  *(v0 + 976) = result;
  *(v0 + 992) = result;
  *(v0 + 1008) = result;
  *(v0 + 1024) = result;
  *(v0 + 1040) = result;
  *(v0 + 1056) = result;
  *(v0 + 1072) = vdupq_n_s64(0x3FCF82F740000000uLL);
  *(v0 + 1088) = xmmword_1BCE3C910;
  *(v0 + 1104) = xmmword_1BCE3C920;
  *(v0 + 1120) = xmmword_1BCE3C930;
  *(v0 + 1136) = result;
  *(v0 + 1152) = result;
  *(v0 + 1168) = 0x4170000000000000;
  *(v0 + 1176) = 0x3FF0000000000000;
  *(v0 + 1184) = result;
  *(v0 + 1200) = result;
  *(v0 + 1216) = result;
  *(v0 + 1232) = 0x3FF0000000000000;
  *(v0 + 1248) = 0xC04E000000000000;
  *(v0 + 1256) = 0;
  *(v0 + 1257) = *v10;
  *(v0 + 1260) = *&v10[3];
  *(v0 + 1264) = xmmword_1BCE3C830;
  *(v0 + 1280) = 0x432A000043160000;
  *(v0 + 1288) = 1040242952;
  *(v0 + 1296) = xmmword_1BCE3C840;
  *(v0 + 1312) = xmmword_1BCE3C850;
  *(v0 + 1328) = xmmword_1BCE3C860;
  *(v0 + 1344) = xmmword_1BCE3C870;
  *(v0 + 1360) = xmmword_1BCE3C880;
  *(v0 + 1376) = xmmword_1BCE3C890;
  *(v0 + 1392) = xmmword_1BCE3C8A0;
  *(v0 + 1408) = xmmword_1BCE3C8B0;
  *(v0 + 1424) = _Q21;
  *(v0 + 1440) = xmmword_1BCE3D910;
  *(v0 + 1456) = result;
  *(v0 + 1472) = result;
  *(v0 + 1488) = result;
  *(v0 + 1504) = result;
  *(v0 + 1520) = result;
  *(v0 + 1536) = xmmword_1BCE3C8C0;
  *(v0 + 1552) = xmmword_1BCE3C8F0;
  *(v0 + 1568) = result;
  *(v0 + 1584) = xmmword_1BCE3C900;
  *(v0 + 1600) = 0x3F3333333F800000;
  *(v0 + 1608) = 0x3FF0000000000000;
  *(v0 + 1616) = result;
  *(v0 + 1632) = 0;
  *(v0 + 1640) = 1065353216;
  *(v0 + 1648) = result;
  *(v0 + 1664) = result;
  *(v0 + 1680) = result;
  *(v0 + 1696) = result;
  *(v0 + 1712) = result;
  *(v0 + 1728) = result;
  *(v0 + 1744) = result;
  *(v0 + 1760) = result;
  *(v0 + 1776) = result;
  *(v0 + 1792) = result;
  *(v0 + 1808) = result;
  *(v0 + 1824) = result;
  *(v0 + 1840) = result;
  *(v0 + 1856) = result;
  *(v0 + 1872) = result;
  *(v0 + 1888) = result;
  *(v0 + 1904) = result;
  *(v0 + 1920) = result;
  *(v0 + 1936) = result;
  *(v0 + 1952) = result;
  *(v0 + 1968) = result;
  *(v0 + 1984) = result;
  *(v0 + 2000) = result;
  *(v0 + 2016) = result;
  *(v0 + 2032) = result;
  *(v0 + 2048) = result;
  *(v0 + 2064) = result;
  *(v0 + 2080) = result;
  *(v0 + 2096) = result;
  *(v0 + 2112) = result;
  *(v0 + 2128) = result;
  *(v0 + 2144) = result;
  *(v0 + 2160) = result;
  *(v0 + 2176) = result;
  *(v0 + 2192) = result;
  *(v0 + 2208) = result;
  *(v0 + 2224) = result;
  *(v0 + 2240) = result;
  *(v0 + 2256) = result;
  *(v0 + 2272) = result;
  *(v0 + 2288) = vdupq_n_s64(0x3FCF6CD7E0000000uLL);
  *(v0 + 2304) = xmmword_1BCE3C940;
  *(v0 + 2320) = xmmword_1BCE3C950;
  *(v0 + 2336) = xmmword_1BCE3C960;
  *(v0 + 2352) = result;
  *(v0 + 2368) = result;
  *(v0 + 2384) = 0x4170000000000000;
  *(v0 + 2392) = 0x3FF0000000000000;
  *(v0 + 2400) = result;
  *(v0 + 2416) = result;
  *(v0 + 2432) = result;
  *(v0 + 2448) = 0x3FF0000000000000;
  *(v0 + 2464) = 0xC028000000000000;
  *(v0 + 2472) = 0;
  *(v0 + 2473) = *v11;
  *(v0 + 2476) = *&v11[3];
  *(v0 + 2480) = xmmword_1BCE3C780;
  *(v0 + 2496) = 0x4396000042C80000;
  *(v0 + 2504) = 1036831949;
  *(v0 + 2512) = xmmword_1BCE3C970;
  *(v0 + 2528) = result;
  *(v0 + 2544) = xmmword_1BCE3C980;
  *(v0 + 2560) = xmmword_1BCE3C990;
  *(v0 + 2576) = xmmword_1BCE3C9A0;
  *(v0 + 2592) = result;
  *(v0 + 2608) = xmmword_1BCE3C9B0;
  *(v0 + 2624) = xmmword_1BCE3C8C0;
  *(v0 + 2640) = _Q21;
  *(v0 + 2656) = xmmword_1BCE3DCB0;
  *(v0 + 2672) = result;
  *(v0 + 2688) = result;
  *(v0 + 2704) = xmmword_1BCE3D3C0;
  *(v0 + 2720) = xmmword_1BCE3D3D0;
  *(v0 + 2736) = xmmword_1BCE3C9E0;
  *(v0 + 2752) = xmmword_1BCE3C8C0;
  *(v0 + 2768) = xmmword_1BCE3C9F0;
  *(v0 + 2784) = xmmword_1BCE3CA00;
  *(v0 + 2800) = xmmword_1BCE3CA10;
  *(v0 + 2816) = 0x3F3333333F4CCCCDLL;
  *(v0 + 2824) = 0x3FF0000000000000;
  *(v0 + 2832) = result;
  *(v0 + 2848) = 0;
  *(v0 + 2856) = 1065353216;
  *(v0 + 2864) = result;
  *(v0 + 2880) = result;
  *(v0 + 2896) = result;
  *(v0 + 2912) = result;
  *(v0 + 2928) = result;
  *(v0 + 2944) = result;
  *(v0 + 2960) = result;
  *(v0 + 2976) = result;
  *(v0 + 2992) = result;
  *(v0 + 3008) = result;
  *(v0 + 3024) = result;
  *(v0 + 3040) = result;
  *(v0 + 3056) = result;
  *(v0 + 3072) = result;
  *(v0 + 3088) = result;
  *(v0 + 3104) = result;
  *(v0 + 3120) = result;
  *(v0 + 3136) = result;
  *(v0 + 3152) = result;
  *(v0 + 3168) = result;
  *(v0 + 3184) = result;
  *(v0 + 3200) = result;
  *(v0 + 3216) = result;
  *(v0 + 3232) = result;
  *(v0 + 3248) = result;
  *(v0 + 3264) = result;
  *(v0 + 3280) = result;
  *(v0 + 3296) = result;
  *(v0 + 3312) = result;
  *(v0 + 3328) = result;
  *(v0 + 3344) = result;
  *(v0 + 3360) = result;
  *(v0 + 3376) = result;
  *(v0 + 3392) = result;
  *(v0 + 3408) = result;
  *(v0 + 3424) = result;
  *(v0 + 3440) = result;
  *(v0 + 3456) = result;
  *(v0 + 3472) = result;
  *(v0 + 3488) = result;
  *(v0 + 3504) = vdupq_n_s64(0x3FCF992720000000uLL);
  *(v0 + 3520) = xmmword_1BCE3CA20;
  *(v0 + 3536) = xmmword_1BCE3CA30;
  *(v0 + 3552) = xmmword_1BCE3CA40;
  *(v0 + 3568) = result;
  *(v0 + 3584) = result;
  *(v0 + 3600) = 0x4170000000000000;
  *(v0 + 3608) = 0x3FF0000000000000;
  *(v0 + 3616) = result;
  *(v0 + 3632) = result;
  *(v0 + 3648) = result;
  *(v0 + 3664) = 0x3FF0000000000000;
  *(v0 + 3680) = 0xC018000000000000;
  *(v0 + 3688) = 0;
  *(v0 + 3689) = *v12;
  *(v0 + 3692) = *&v12[3];
  *(v0 + 3696) = xmmword_1BCE3CA50;
  *(v0 + 4848) = result;
  *(v0 + 4905) = *v13;
  *(v0 + 4912) = xmmword_1BCE3CB30;
  *(v0 + 4928) = 0x44C8000044160000;
  *(v0 + 4936) = 1061997773;
  *(v0 + 4864) = result;
  *(v0 + 4880) = 0x3FF0000000000000;
  *(v0 + 4896) = 0;
  *(v0 + 4904) = 0;
  *(v0 + 4908) = *&v13[3];
  *(v0 + 4672) = result;
  *(v0 + 4688) = result;
  *(v0 + 4800) = result;
  *(v0 + 4816) = 0x4170000000000000;
  *(v0 + 4824) = 0x3FF0000000000000;
  *(v0 + 4832) = result;
  *(v0 + 4704) = result;
  *(v0 + 4768) = xmmword_1BCE3CB10;
  *(v0 + 4784) = result;
  *(v0 + 4720) = xmmword_1BCE3CB00;
  *(v0 + 4736) = xmmword_1BCE3CB10;
  *(v0 + 4752) = xmmword_1BCE3CB20;
  *(v0 + 4576) = result;
  *(v0 + 4592) = result;
  *(v0 + 4608) = result;
  *(v0 + 4624) = result;
  *(v0 + 4640) = result;
  *(v0 + 4656) = result;
  *(v0 + 4480) = result;
  *(v0 + 4496) = result;
  *(v0 + 4512) = result;
  *(v0 + 4528) = result;
  *(v0 + 4544) = result;
  *(v0 + 4560) = result;
  *(v0 + 4384) = result;
  *(v0 + 4400) = result;
  *(v0 + 4416) = result;
  *(v0 + 4432) = result;
  *(v0 + 4448) = result;
  *(v0 + 4464) = result;
  *(v0 + 4288) = result;
  *(v0 + 4304) = result;
  *(v0 + 4320) = result;
  *(v0 + 4336) = result;
  *(v0 + 4352) = result;
  *(v0 + 4368) = result;
  *(v0 + 4208) = result;
  *(v0 + 4224) = result;
  *(v0 + 4240) = result;
  *(v0 + 4256) = result;
  *(v0 + 4272) = result;
  *(v0 + 4128) = result;
  *(v0 + 4144) = result;
  *(v0 + 4160) = result;
  *(v0 + 4176) = result;
  *(v0 + 4192) = result;
  *(v0 + 3712) = 0x447A000044160000;
  *(v0 + 3936) = result;
  *(v0 + 4080) = result;
  *(v0 + 4096) = result;
  *(v0 + 4112) = result;
  *(v0 + 4016) = xmmword_1BCE3CAE0;
  *(v0 + 4064) = 0;
  *(v0 + 4072) = 0;
  *(v0 + 4032) = 1062836634;
  *(v0 + 4040) = 0x3FEFBFBFC0000000;
  *(v0 + 4048) = xmmword_1BCE3CAF0;
  *(v0 + 3952) = result;
  *(v0 + 3968) = xmmword_1BCE3C8C0;
  *(v0 + 3984) = xmmword_1BCE3CAD0;
  *(v0 + 4000) = xmmword_1BCE3CA00;
  *(v0 + 3720) = 1061997773;
  *(v0 + 3888) = result;
  *(v0 + 3904) = result;
  *(v0 + 3920) = result;
  *(v0 + 3728) = xmmword_1BCE3CA60;
  *(v0 + 3744) = result;
  *(v0 + 3872) = xmmword_1BCE3D960;
  *(v0 + 3840) = xmmword_1BCE3CAC0;
  *(v0 + 3856) = vdupq_n_s64(0x3FE88B6D00000000uLL);
  *(v0 + 3808) = xmmword_1BCE3CAA0;
  *(v0 + 3824) = xmmword_1BCE3CAB0;
  *(v0 + 3776) = xmmword_1BCE3CA80;
  *(v0 + 3792) = xmmword_1BCE3CA90;
  *(v0 + 3760) = xmmword_1BCE3CA70;
  *(v0 + 4944) = xmmword_1BCE3CB40;
  *(v0 + 4960) = xmmword_1BCE3CB50;
  *(v0 + 4976) = xmmword_1BCE3CB60;
  *(v0 + 4992) = xmmword_1BCE3CB70;
  *(v0 + 5008) = xmmword_1BCE3CB80;
  *(v0 + 5024) = xmmword_1BCE3CB90;
  *(v0 + 5040) = result;
  *(v0 + 5168) = xmmword_1BCE3CBD0;
  *(v0 + 5184) = xmmword_1BCE3CBE0;
  *(v0 + 5232) = xmmword_1BCE3CC00;
  *(v0 + 5936) = xmmword_1BCE3CC10;
  *(v0 + 5968) = xmmword_1BCE3CC30;
  *(v0 + 5952) = xmmword_1BCE3CC20;
  *(v0 + 5984) = xmmword_1BCE3CC20;
  *(v0 + 6128) = xmmword_1BCE3CC40;
  *(v0 + 6144) = 0x44480000443B8000;
  *(v0 + 6160) = xmmword_1BCE3CC50;
  *(v0 + 6176) = xmmword_1BCE3CC60;
  *(v0 + 6192) = xmmword_1BCE3CC70;
  *(v0 + 6208) = xmmword_1BCE3CC80;
  *(v0 + 6224) = xmmword_1BCE3CC90;
  *(v0 + 6240) = xmmword_1BCE3CCA0;
  *(v0 + 6416) = xmmword_1BCE3CCD0;
  *(v0 + 6432) = xmmword_1BCE3CCE0;
  *(v0 + 6448) = xmmword_1BCE3CCF0;
  *(v0 + 6480) = xmmword_1BCE3CD00;
  *(v0 + 7152) = xmmword_1BCE3CD10;
  *(v0 + 7184) = xmmword_1BCE3CD30;
  *(v0 + 7168) = xmmword_1BCE3CD20;
  *(v0 + 7200) = xmmword_1BCE3CD20;
  *(v0 + 7344) = xmmword_1BCE3CD40;
  *(v0 + 7408) = xmmword_1BCE3CD60;
  *(v0 + 7424) = xmmword_1BCE3C9D0;
  *(v0 + 7440) = xmmword_1BCE3CD70;
  *(v0 + 7456) = xmmword_1BCE3CD80;
  *(v0 + 7552) = result;
  *(v0 + 7632) = xmmword_1BCE3CD90;
  *(v0 + 7648) = xmmword_1BCE3CDA0;
  *(v0 + 7664) = xmmword_1BCE3CDB0;
  *(v0 + 7696) = xmmword_1BCE3CDC0;
  *(v0 + 8368) = xmmword_1BCE3CDD0;
  *(v0 + 8400) = xmmword_1BCE3CDE0;
  *(v0 + 8560) = xmmword_1BCE3CDF0;
  *(v0 + 8624) = xmmword_1BCE3CE00;
  *(v0 + 9584) = xmmword_1BCE3CE20;
  *(v0 + 10800) = xmmword_1BCE3CE20;
  *(v0 + 9776) = xmmword_1BCE3CE40;
  *(v0 + 10992) = xmmword_1BCE3CE40;
  *(v0 + 9792) = 1151500288;
  *(v0 + 11008) = 1151500288;
  *(v0 + 9840) = xmmword_1BCE3CE50;
  *(v0 + 11056) = xmmword_1BCE3CE50;
  *(v0 + 9856) = xmmword_1BCE3CE60;
  *(v0 + 11072) = xmmword_1BCE3CE60;
  *(v0 + 9872) = xmmword_1BCE3CE70;
  *(v0 + 11088) = xmmword_1BCE3CE70;
  *(v0 + 9888) = xmmword_1BCE3CE80;
  *(v0 + 11104) = xmmword_1BCE3CE80;
  v7 = vdupq_n_s32(0x3F666666u);
  *(v0 + 8880) = v7;
  *(v0 + 10096) = v7;
  *(v0 + 11312) = v7;
  *(v0 + 10816) = xmmword_1BCE3CE90;
  *(v0 + 12032) = xmmword_1BCE3CE90;
  *(v0 + 9616) = xmmword_1BCE3CE30;
  *(v0 + 12048) = xmmword_1BCE3CE30;
  *(v0 + 12208) = xmmword_1BCE3CEC0;
  *(v0 + 8576) = 0x41A0000044A8C000;
  *(v0 + 12224) = 0x41A0000044A8C000;
  v8 = vdupq_n_s64(0x3FECBCBCC0000000uLL);
  *(v0 + 7376) = v8;
  *(v0 + 8592) = v8;
  *(v0 + 9808) = v8;
  *(v0 + 11024) = v8;
  *(v0 + 12240) = v8;
  *(v0 + 7392) = xmmword_1BCE3CD50;
  *(v0 + 8608) = xmmword_1BCE3CD50;
  *(v0 + 9824) = xmmword_1BCE3CD50;
  *(v0 + 11040) = xmmword_1BCE3CD50;
  *(v0 + 12256) = xmmword_1BCE3CD50;
  *(v0 + 12272) = xmmword_1BCE3CED0;
  *(v0 + 12528) = xmmword_1BCE3CEF0;
  *(v0 + 8912) = xmmword_1BCE3CE10;
  *(v0 + 10128) = xmmword_1BCE3CE10;
  *(v0 + 11344) = xmmword_1BCE3CE10;
  *(v0 + 12560) = xmmword_1BCE3CE10;
  *(v0 + 10832) = xmmword_1BCE3CEA0;
  *(v0 + 13264) = xmmword_1BCE3CEA0;
  *(v0 + 13424) = xmmword_1BCE3CF00;
  *(v0 + 7360) = 1147207680;
  *(v0 + 13440) = 1147207680;
  *(v0 + 13456) = vdupq_n_s64(0x3FEC9CDC00000000uLL);
  *(v0 + 13472) = xmmword_1BCE3CF10;
  *(v0 + 13488) = xmmword_1BCE3CF20;
  *(v0 + 13504) = xmmword_1BCE3CF30;
  *(v0 + 13520) = xmmword_1BCE3CF40;
  *(v0 + 13536) = xmmword_1BCE3CF50;
  *(v0 + 6400) = xmmword_1BCE3CCC0;
  *(v0 + 7616) = xmmword_1BCE3CCC0;
  *(v0 + 8832) = xmmword_1BCE3CCC0;
  *(v0 + 10048) = xmmword_1BCE3CCC0;
  *(v0 + 12480) = xmmword_1BCE3CCC0;
  *(v0 + 13696) = xmmword_1BCE3CCC0;
  *(v0 + 13712) = xmmword_1BCE3CF60;
  *(v0 + 13744) = xmmword_1BCE3CF70;
  *(v0 + 13776) = xmmword_1BCE3CF80;
  *(v0 + 12016) = xmmword_1BCE3CEB0;
  *(v0 + 13232) = xmmword_1BCE3CEB0;
  *(v0 + 14448) = xmmword_1BCE3CEB0;
  *(v0 + 8384) = xmmword_1BCE3CBB0;
  *(v0 + 9600) = xmmword_1BCE3CBB0;
  *(v0 + 13248) = xmmword_1BCE3CBB0;
  *(v0 + 14464) = xmmword_1BCE3CBB0;
  *(v0 + 14480) = xmmword_1BCE3CF90;
  *(v0 + 8416) = xmmword_1BCE3CBC0;
  *(v0 + 9632) = xmmword_1BCE3CBC0;
  *(v0 + 10848) = xmmword_1BCE3CBC0;
  *(v0 + 12064) = xmmword_1BCE3CBC0;
  *(v0 + 13280) = xmmword_1BCE3CBC0;
  *(v0 + 14496) = xmmword_1BCE3CBC0;
  *(v0 + 14640) = xmmword_1BCE3CFA0;
  *(v0 + 14656) = 0x441EC000443B8000;
  *(v0 + 14672) = xmmword_1BCE3CFB0;
  *(v0 + 5056) = xmmword_1BCE3CBA0;
  *(v0 + 5072) = result;
  *(v0 + 5088) = xmmword_1BCE3DA70;
  *(v0 + 5104) = result;
  *(v0 + 5120) = result;
  *(v0 + 5136) = result;
  *(v0 + 5152) = result;
  *(v0 + 5200) = xmmword_1BCE3CBF0;
  *(v0 + 5216) = xmmword_1BCE3CA00;
  *(v0 + 5248) = 1063675494;
  *(v0 + 5256) = 0x3FF0000000000000;
  *(v0 + 5264) = result;
  *(v0 + 5280) = 0;
  *(v0 + 5288) = 0;
  *(v0 + 5296) = result;
  *(v0 + 5312) = result;
  *(v0 + 5328) = result;
  *(v0 + 5344) = result;
  *(v0 + 5360) = result;
  *(v0 + 5376) = result;
  *(v0 + 5392) = result;
  *(v0 + 5408) = result;
  *(v0 + 5424) = result;
  *(v0 + 5440) = result;
  *(v0 + 5456) = result;
  *(v0 + 5472) = result;
  *(v0 + 5488) = result;
  *(v0 + 5504) = result;
  *(v0 + 5520) = result;
  *(v0 + 5536) = result;
  *(v0 + 5552) = result;
  *(v0 + 5568) = result;
  *(v0 + 5584) = result;
  *(v0 + 5600) = result;
  *(v0 + 5616) = result;
  *(v0 + 5632) = result;
  *(v0 + 5648) = result;
  *(v0 + 5664) = result;
  *(v0 + 5680) = result;
  *(v0 + 5696) = result;
  *(v0 + 5712) = result;
  *(v0 + 5728) = result;
  *(v0 + 5744) = result;
  *(v0 + 5760) = result;
  *(v0 + 5776) = result;
  *(v0 + 5792) = result;
  *(v0 + 5808) = result;
  *(v0 + 5824) = result;
  *(v0 + 5840) = result;
  *(v0 + 5856) = result;
  *(v0 + 5872) = result;
  *(v0 + 5888) = result;
  *(v0 + 5904) = result;
  *(v0 + 5920) = result;
  *(v0 + 6000) = result;
  *(v0 + 6016) = result;
  *(v0 + 6032) = 0x4170000000000000;
  *(v0 + 6040) = 0x3FF0000000000000;
  *(v0 + 6048) = result;
  *(v0 + 6064) = result;
  *(v0 + 6080) = result;
  *(v0 + 6121) = *v14;
  *(v0 + 6096) = 0x3FF0000000000000;
  *(v0 + 6112) = 0x4017FFFFFFFFFFFALL;
  *(v0 + 6120) = 0;
  *(v0 + 6124) = *&v14[3];
  *(v0 + 6152) = 1060739482;
  *(v0 + 6256) = result;
  *(v0 + 6272) = result;
  *(v0 + 6288) = result;
  *(v0 + 6304) = xmmword_1BCE3DAE0;
  *(v0 + 6320) = result;
  *(v0 + 6336) = result;
  *(v0 + 6352) = result;
  *(v0 + 6368) = result;
  *(v0 + 6384) = xmmword_1BCE3CCB0;
  *(v0 + 6464) = 1063675494;
  *(v0 + 6472) = 0x3FEF857180000000;
  *(v0 + 6496) = 0x3FE0000000000000;
  *(v0 + 6504) = 0;
  *(v0 + 6512) = result;
  *(v0 + 6528) = result;
  *(v0 + 6544) = result;
  *(v0 + 6560) = result;
  *(v0 + 6576) = result;
  *(v0 + 6592) = result;
  *(v0 + 6608) = result;
  *(v0 + 6624) = result;
  *(v0 + 6640) = result;
  *(v0 + 6656) = result;
  *(v0 + 6672) = result;
  *(v0 + 6688) = result;
  *(v0 + 6704) = result;
  *(v0 + 6720) = result;
  *(v0 + 6736) = result;
  *(v0 + 6752) = result;
  *(v0 + 6768) = result;
  *(v0 + 6784) = result;
  *(v0 + 6800) = result;
  *(v0 + 6816) = result;
  *(v0 + 6832) = result;
  *(v0 + 6848) = result;
  *(v0 + 6864) = result;
  *(v0 + 6880) = result;
  *(v0 + 6896) = result;
  *(v0 + 6912) = result;
  *(v0 + 6928) = result;
  *(v0 + 6944) = result;
  *(v0 + 6960) = result;
  *(v0 + 6976) = result;
  *(v0 + 6992) = result;
  *(v0 + 7008) = result;
  *(v0 + 7024) = result;
  *(v0 + 7040) = result;
  *(v0 + 7056) = result;
  *(v0 + 7072) = result;
  *(v0 + 7088) = result;
  *(v0 + 7104) = result;
  *(v0 + 7120) = result;
  *(v0 + 7136) = result;
  *(v0 + 7216) = result;
  *(v0 + 7232) = result;
  *(v0 + 7248) = 0x4170000000000000;
  *(v0 + 7256) = 0x3FF0000000000000;
  *(v0 + 7264) = result;
  *(v0 + 7280) = result;
  *(v0 + 7296) = result;
  *(v0 + 7337) = *v15;
  *(v0 + 7312) = 0x3FF0000000000000;
  *(v0 + 7328) = 0x4027FFFFFFFFFFFALL;
  *(v0 + 7336) = 0;
  *(v0 + 7340) = *&v15[3];
  *(v0 + 7368) = 1059481190;
  *(v0 + 7472) = result;
  *(v0 + 7488) = result;
  *(v0 + 7504) = result;
  *(v0 + 7520) = xmmword_1BCE3DAE0;
  *(v0 + 7536) = result;
  *(v0 + 14688) = xmmword_1BCE3CFC0;
  *(v0 + 14704) = xmmword_1BCE3CFD0;
  *(v0 + 14720) = xmmword_1BCE3CFE0;
  *(v0 + 14736) = xmmword_1BCE3CFF0;
  *(v0 + 14752) = xmmword_1BCE3D000;
  *(v0 + 8736) = xmmword_1BCE3DAE0;
  *(v0 + 12384) = xmmword_1BCE3DAE0;
  *(v0 + 13600) = xmmword_1BCE3DAE0;
  *(v0 + 14816) = xmmword_1BCE3DAE0;
  *(v0 + 14864) = xmmword_1BCE3D010;
  *(v0 + 14896) = xmmword_1BCE3D020;
  *(v0 + 14912) = xmmword_1BCE3D030;
  *(v0 + 14928) = xmmword_1BCE3D040;
  *(v0 + 14960) = xmmword_1BCE3D050;
  *(v0 + 14992) = xmmword_1BCE3D060;
  *(v0 + 15664) = xmmword_1BCE3D070;
  *(v0 + 15680) = xmmword_1BCE3D080;
  *(v0 + 15696) = xmmword_1BCE3D090;
  *(v0 + 15712) = xmmword_1BCE3D0A0;
  *(v0 + 15856) = xmmword_1BCE3D0B0;
  *(v0 + 15872) = 0x449EC00044160000;
  *(v0 + 15888) = xmmword_1BCE3D0C0;
  *(v0 + 15904) = xmmword_1BCE3D0D0;
  *(v0 + 15920) = xmmword_1BCE3D0E0;
  *(v0 + 15936) = xmmword_1BCE3D0F0;
  *(v0 + 15952) = xmmword_1BCE3D100;
  *(v0 + 15968) = xmmword_1BCE3D110;
  *(v0 + 16000) = xmmword_1BCE3CBA0;
  *(v0 + 9952) = xmmword_1BCE3DA70;
  *(v0 + 11168) = xmmword_1BCE3DA70;
  *(v0 + 16032) = xmmword_1BCE3DA70;
  *(v0 + 7600) = xmmword_1BCE3CCB0;
  *(v0 + 8816) = xmmword_1BCE3CCB0;
  *(v0 + 8848) = xmmword_1BCE3CCB0;
  *(v0 + 10032) = xmmword_1BCE3CCB0;
  *(v0 + 10064) = xmmword_1BCE3CCB0;
  *(v0 + 11248) = xmmword_1BCE3CCB0;
  *(v0 + 11280) = xmmword_1BCE3CCB0;
  *(v0 + 12464) = xmmword_1BCE3CCB0;
  *(v0 + 16080) = xmmword_1BCE3CCB0;
  *(v0 + 16112) = xmmword_1BCE3D120;
  *(v0 + 16128) = xmmword_1BCE3D130;
  *(v0 + 16144) = xmmword_1BCE3CBF0;
  *(v0 + 16176) = xmmword_1BCE3D140;
  *(v0 + 7680) = 1063675494;
  *(v0 + 8896) = 1063675494;
  *(v0 + 10112) = 1063675494;
  *(v0 + 11328) = 1063675494;
  *(v0 + 12544) = 1063675494;
  *(v0 + 13760) = 1063675494;
  *(v0 + 14976) = 1063675494;
  *(v0 + 16192) = 1063675494;
  *(v0 + 16208) = xmmword_1BCE3D150;
  *(v0 + 16880) = xmmword_1BCE3D160;
  *(v0 + 16896) = xmmword_1BCE3D170;
  *(v0 + 16912) = xmmword_1BCE3D180;
  *(v0 + 16928) = xmmword_1BCE3D190;
  *(v0 + 17072) = xmmword_1BCE3CB30;
  *(v0 + 17088) = 0x4483CC9D445C8321;
  *(v0 + 17104) = xmmword_1BCE3D1A0;
  *(v0 + 17120) = xmmword_1BCE3D1B0;
  *(v0 + 17136) = xmmword_1BCE3D1C0;
  *(v0 + 17152) = xmmword_1BCE3D1D0;
  *(v0 + 17168) = xmmword_1BCE3D1E0;
  *(v0 + 17184) = xmmword_1BCE3D1F0;
  *(v0 + 17200) = xmmword_1BCE3D200;
  *(v0 + 17216) = xmmword_1BCE3CAC0;
  *(v0 + 17232) = vdupq_n_s64(0x3FE8F90420000000uLL);
  *(v0 + 17248) = xmmword_1BCE3DC60;
  *(v0 + 17360) = xmmword_1BCE3CAD0;
  *(v0 + 17392) = xmmword_1BCE3D210;
  *(v0 + 17408) = 1062836634;
  *(v0 + 17424) = xmmword_1BCE3D220;
  *(v0 + 18096) = xmmword_1BCE3D230;
  *(v0 + 18112) = xmmword_1BCE3D240;
  *(v0 + 18128) = xmmword_1BCE3D250;
  *(v0 + 18144) = xmmword_1BCE3D260;
  *(v0 + 18288) = xmmword_1BCE3C780;
  *(v0 + 18304) = 0x4396000042C80000;
  *(v0 + 18320) = xmmword_1BCE3D270;
  *(v0 + 18352) = xmmword_1BCE3D280;
  *(v0 + 18368) = xmmword_1BCE3D290;
  *(v0 + 18384) = xmmword_1BCE3C9A0;
  *(v0 + 18416) = xmmword_1BCE3D2A0;
  *(v0 + 18464) = xmmword_1BCE3DCB0;
  *(v0 + 18512) = xmmword_1BCE3D2B0;
  *(v0 + 18528) = xmmword_1BCE3D2C0;
  *(v0 + 18544) = xmmword_1BCE3D2D0;
  *(v0 + 18576) = xmmword_1BCE3C9F0;
  *(v0 + 13728) = xmmword_1BCE3CA00;
  *(v0 + 14944) = xmmword_1BCE3CA00;
  *(v0 + 16160) = xmmword_1BCE3CA00;
  *(v0 + 17376) = xmmword_1BCE3CA00;
  *(v0 + 18592) = xmmword_1BCE3CA00;
  *(v0 + 18608) = xmmword_1BCE3CA10;
  *(v0 + 18624) = 0x3F3333333F4CCCCDLL;
  *(v0 + 19312) = xmmword_1BCE3D2E0;
  *(v0 + 19344) = xmmword_1BCE3D2F0;
  *(v0 + 19632) = xmmword_1BCE3E590;
  __asm { FMOV            V1.2D, #0.25 }

  *(v0 + 20528) = _Q1;
  *(v0 + 20560) = xmmword_1BCE3D300;
  *(v0 + 19504) = xmmword_1BCE3C830;
  *(v0 + 20720) = xmmword_1BCE3C830;
  *(v0 + 19520) = 0x432A000043160000;
  *(v0 + 20736) = 0x432A000043160000;
  *(v0 + 19536) = xmmword_1BCE3C840;
  *(v0 + 20752) = xmmword_1BCE3C840;
  *(v0 + 19552) = xmmword_1BCE3C850;
  *(v0 + 20768) = xmmword_1BCE3C850;
  *(v0 + 19568) = xmmword_1BCE3C860;
  *(v0 + 20784) = xmmword_1BCE3C860;
  *(v0 + 19584) = xmmword_1BCE3C870;
  *(v0 + 20800) = xmmword_1BCE3C870;
  *(v0 + 19600) = xmmword_1BCE3C880;
  *(v0 + 20816) = xmmword_1BCE3C880;
  *(v0 + 19616) = xmmword_1BCE3C890;
  *(v0 + 20832) = xmmword_1BCE3C890;
  *(v0 + 20848) = xmmword_1BCE3C8A0;
  *(v0 + 19648) = xmmword_1BCE3C8B0;
  *(v0 + 20864) = xmmword_1BCE3C8B0;
  *(v0 + 18448) = _Q21;
  *(v0 + 19664) = _Q21;
  *(v0 + 20880) = _Q21;
  *(v0 + 19680) = xmmword_1BCE3D910;
  *(v0 + 20896) = xmmword_1BCE3D910;
  *(v0 + 11264) = xmmword_1BCE3C8C0;
  *(v0 + 17344) = xmmword_1BCE3C8C0;
  *(v0 + 18432) = xmmword_1BCE3C8C0;
  *(v0 + 18560) = xmmword_1BCE3C8C0;
  *(v0 + 19776) = xmmword_1BCE3C8C0;
  *(v0 + 20992) = xmmword_1BCE3C8C0;
  *(v0 + 19792) = xmmword_1BCE3C8F0;
  *(v0 + 21008) = xmmword_1BCE3C8F0;
  *(v0 + 19824) = xmmword_1BCE3C900;
  *(v0 + 19840) = 0x3F3333333F800000;
  *(v0 + 21040) = xmmword_1BCE3C900;
  *(v0 + 21056) = 0x3F3333333F800000;
  *(v0 + 21744) = vdupq_n_s64(0x3FCFEB6B80000000uLL);
  *(v0 + 19328) = xmmword_1BCE3C910;
  *(v0 + 19360) = xmmword_1BCE3C910;
  *(v0 + 20544) = xmmword_1BCE3C910;
  *(v0 + 20576) = xmmword_1BCE3C910;
  *(v0 + 21760) = xmmword_1BCE3C910;
  *(v0 + 21776) = xmmword_1BCE3D310;
  *(v0 + 21792) = xmmword_1BCE3D320;
  *(v0 + 8464) = 0x4170000000000000;
  *(v0 + 9680) = 0x4170000000000000;
  *(v0 + 10896) = 0x4170000000000000;
  *(v0 + 12112) = 0x4170000000000000;
  *(v0 + 13328) = 0x4170000000000000;
  *(v0 + 14544) = 0x4170000000000000;
  *(v0 + 15760) = 0x4170000000000000;
  *(v0 + 16976) = 0x4170000000000000;
  *(v0 + 18192) = 0x4170000000000000;
  *(v0 + 19408) = 0x4170000000000000;
  *(v0 + 20624) = 0x4170000000000000;
  *(v0 + 21840) = 0x4170000000000000;
  *(v0 + 7568) = result;
  *(v0 + 7584) = result;
  *(v0 + 7728) = result;
  *(v0 + 7744) = result;
  *(v0 + 7760) = result;
  *(v0 + 7776) = result;
  *(v0 + 7792) = result;
  *(v0 + 7808) = result;
  *(v0 + 7824) = result;
  *(v0 + 7840) = result;
  *(v0 + 7856) = result;
  *(v0 + 7872) = result;
  *(v0 + 18080) = result;
  *(v0 + 17984) = result;
  *(v0 + 18000) = result;
  *(v0 + 18016) = result;
  *(v0 + 18032) = result;
  *(v0 + 18048) = result;
  *(v0 + 18064) = result;
  *(v0 + 17888) = result;
  *(v0 + 17904) = result;
  *(v0 + 17920) = result;
  *(v0 + 17936) = result;
  *(v0 + 17952) = result;
  *(v0 + 17968) = result;
  *(v0 + 17792) = result;
  *(v0 + 17808) = result;
  *(v0 + 17824) = result;
  *(v0 + 17840) = result;
  *(v0 + 17856) = result;
  *(v0 + 17872) = result;
  *(v0 + 17696) = result;
  *(v0 + 17712) = result;
  *(v0 + 17728) = result;
  *(v0 + 17744) = result;
  *(v0 + 17760) = result;
  *(v0 + 17776) = result;
  *(v0 + 17600) = result;
  *(v0 + 17616) = result;
  *(v0 + 17632) = result;
  *(v0 + 17648) = result;
  *(v0 + 17664) = result;
  *(v0 + 17680) = result;
  *(v0 + 17504) = result;
  *(v0 + 17520) = result;
  *(v0 + 17536) = result;
  *(v0 + 17552) = result;
  *(v0 + 17568) = result;
  *(v0 + 17584) = result;
  *(v0 + 7888) = result;
  *(v0 + 7904) = result;
  *(v0 + 17456) = result;
  *(v0 + 17472) = result;
  *(v0 + 17488) = result;
  *(v0 + 7920) = result;
  *(v0 + 7936) = result;
  *(v0 + 17416) = 0x3FEF23CF40000000;
  *(v0 + 17440) = 0;
  *(v0 + 17448) = 665496235;
  *(v0 + 7952) = result;
  *(v0 + 7968) = result;
  *(v0 + 7984) = result;
  *(v0 + 17296) = result;
  *(v0 + 17312) = result;
  *(v0 + 17328) = result;
  *(v0 + 8000) = result;
  *(v0 + 8016) = result;
  *(v0 + 8032) = result;
  *(v0 + 8048) = result;
  *(v0 + 17264) = result;
  *(v0 + 17280) = result;
  *(v0 + 8064) = result;
  *(v0 + 8080) = result;
  *(v0 + 8096) = result;
  *(v0 + 8112) = result;
  *(v0 + 8128) = result;
  *(v0 + 8144) = result;
  *(v0 + 8160) = result;
  *(v0 + 8176) = result;
  *(v0 + 16992) = result;
  *(v0 + 17065) = *v23;
  *(v0 + 17068) = *&v23[3];
  *(v0 + 17096) = 1050388079;
  *(v0 + 17008) = result;
  *(v0 + 17024) = result;
  *(v0 + 17040) = 0x3FF0000000000000;
  *(v0 + 17056) = 0xC017FFFFFFFFFFE8;
  *(v0 + 17064) = 1;
  *(v0 + 0x2000) = result;
  *(v0 + 8208) = result;
  *(v0 + 8224) = result;
  *(v0 + 16944) = result;
  *(v0 + 16960) = result;
  *(v0 + 16984) = 0x3FF0000000000000;
  *(v0 + 8240) = result;
  *(v0 + 8256) = result;
  *(v0 + 16816) = result;
  *(v0 + 16832) = result;
  *(v0 + 16848) = result;
  *(v0 + 16864) = result;
  *(v0 + 16720) = result;
  *(v0 + 16736) = result;
  *(v0 + 16752) = result;
  *(v0 + 16768) = result;
  *(v0 + 16784) = result;
  *(v0 + 16800) = result;
  *(v0 + 16624) = result;
  *(v0 + 16640) = result;
  *(v0 + 16656) = result;
  *(v0 + 16672) = result;
  *(v0 + 16688) = result;
  *(v0 + 16704) = result;
  *(v0 + 16528) = result;
  *(v0 + 16544) = result;
  *(v0 + 16560) = result;
  *(v0 + 16576) = result;
  *(v0 + 16592) = result;
  *(v0 + 16608) = result;
  *(v0 + 16432) = result;
  *(v0 + 16448) = result;
  *(v0 + 16464) = result;
  *(v0 + 16480) = result;
  *(v0 + 16496) = result;
  *(v0 + 16512) = result;
  *(v0 + 16336) = result;
  *(v0 + 16352) = result;
  *(v0 + 16368) = result;
  *(v0 + 0x4000) = result;
  *(v0 + 16400) = result;
  *(v0 + 16416) = result;
  *(v0 + 8272) = result;
  *(v0 + 16256) = result;
  *(v0 + 16272) = result;
  *(v0 + 16288) = result;
  *(v0 + 16304) = result;
  *(v0 + 16320) = result;
  *(v0 + 8288) = result;
  *(v0 + 16200) = 0x3FEE6AC340000000;
  *(v0 + 16224) = 0;
  *(v0 + 16232) = 0;
  *(v0 + 16240) = result;
  *(v0 + 8304) = result;
  *(v0 + 8320) = result;
  *(v0 + 8336) = result;
  *(v0 + 8352) = result;
  *(v0 + 8432) = result;
  *(v0 + 16096) = result;
  *(v0 + 8448) = result;
  *(v0 + 8472) = 0x3FF0000000000000;
  *(v0 + 8480) = result;
  *(v0 + 16016) = result;
  *(v0 + 16048) = result;
  *(v0 + 16064) = result;
  *(v0 + 8496) = result;
  *(v0 + 8512) = result;
  *(v0 + 8528) = 0x3FF0000000000000;
  *(v0 + 8544) = 0x4032000000000001;
  *(v0 + 15984) = result;
  *(v0 + 8552) = 0;
  *(v0 + 8553) = *v16;
  *(v0 + 8556) = *&v16[3];
  *(v0 + 8584) = 1061158912;
  *(v0 + 8640) = result;
  *(v0 + 15848) = 1;
  *(v0 + 15849) = *v22;
  *(v0 + 15852) = *&v22[3];
  *(v0 + 15880) = 1061997773;
  *(v0 + 15768) = 0x3FF0000000000000;
  *(v0 + 15776) = result;
  *(v0 + 15792) = result;
  *(v0 + 15808) = result;
  *(v0 + 15824) = 0x3FF0000000000000;
  *(v0 + 15840) = 0;
  *(v0 + 8656) = result;
  *(v0 + 8672) = result;
  *(v0 + 8688) = result;
  *(v0 + 8704) = result;
  *(v0 + 15728) = result;
  *(v0 + 15744) = result;
  *(v0 + 8720) = result;
  *(v0 + 15584) = result;
  *(v0 + 15600) = result;
  *(v0 + 15616) = result;
  *(v0 + 15632) = result;
  *(v0 + 15648) = result;
  *(v0 + 15488) = result;
  *(v0 + 15504) = result;
  *(v0 + 15520) = result;
  *(v0 + 15536) = result;
  *(v0 + 15552) = result;
  *(v0 + 15568) = result;
  *(v0 + 15392) = result;
  *(v0 + 15408) = result;
  *(v0 + 15424) = result;
  *(v0 + 15440) = result;
  *(v0 + 15456) = result;
  *(v0 + 15472) = result;
  *(v0 + 15296) = result;
  *(v0 + 15312) = result;
  *(v0 + 15328) = result;
  *(v0 + 15344) = result;
  *(v0 + 15360) = result;
  *(v0 + 15376) = result;
  *(v0 + 15200) = result;
  *(v0 + 15216) = result;
  *(v0 + 15232) = result;
  *(v0 + 15248) = result;
  *(v0 + 15264) = result;
  *(v0 + 15280) = result;
  *(v0 + 15104) = result;
  *(v0 + 15120) = result;
  *(v0 + 15136) = result;
  *(v0 + 15152) = result;
  *(v0 + 15168) = result;
  *(v0 + 15184) = result;
  *(v0 + 8752) = result;
  *(v0 + 15024) = result;
  *(v0 + 15040) = result;
  *(v0 + 15056) = result;
  *(v0 + 15072) = result;
  *(v0 + 15088) = result;
  *(v0 + 8768) = result;
  *(v0 + 8784) = result;
  *(v0 + 14984) = 0x3FEDEF5480000000;
  *(v0 + 15008) = 0x3FE0000000000000;
  *(v0 + 15016) = 0;
  *(v0 + 8800) = result;
  *(v0 + 8864) = result;
  *(v0 + 8904) = 0x3FEB9B9BC0000000;
  *(v0 + 8928) = 0x3FF0000000000000;
  *(v0 + 14880) = result;
  *(v0 + 8936) = 0;
  *(v0 + 8944) = result;
  *(v0 + 14784) = result;
  *(v0 + 14800) = result;
  *(v0 + 14832) = result;
  *(v0 + 14848) = result;
  *(v0 + 8960) = result;
  *(v0 + 8976) = result;
  *(v0 + 8992) = result;
  *(v0 + 9008) = result;
  *(v0 + 9024) = result;
  *(v0 + 14768) = result;
  *(v0 + 9040) = result;
  *(v0 + 9056) = result;
  *(v0 + 14624) = 0x4018000000000010;
  *(v0 + 14632) = 1;
  *(v0 + 14633) = *v21;
  *(v0 + 14636) = *&v21[3];
  *(v0 + 14664) = 1061158912;
  *(v0 + 9072) = result;
  *(v0 + 14552) = 0x3FF0000000000000;
  *(v0 + 14560) = result;
  *(v0 + 14576) = result;
  *(v0 + 14592) = result;
  *(v0 + 14608) = 0x3FF0000000000000;
  *(v0 + 9088) = result;
  *(v0 + 9104) = result;
  *(v0 + 9120) = result;
  *(v0 + 9136) = result;
  *(v0 + 14512) = result;
  *(v0 + 14528) = result;
  *(v0 + 14352) = result;
  *(v0 + 14368) = result;
  *(v0 + 14384) = result;
  *(v0 + 14400) = result;
  *(v0 + 14416) = result;
  *(v0 + 14432) = result;
  *(v0 + 14256) = result;
  *(v0 + 14272) = result;
  *(v0 + 14288) = result;
  *(v0 + 14304) = result;
  *(v0 + 14320) = result;
  *(v0 + 14336) = result;
  *(v0 + 14160) = result;
  *(v0 + 14176) = result;
  *(v0 + 14192) = result;
  *(v0 + 14208) = result;
  *(v0 + 14224) = result;
  *(v0 + 14240) = result;
  *(v0 + 14064) = result;
  *(v0 + 14080) = result;
  *(v0 + 14096) = result;
  *(v0 + 14112) = result;
  *(v0 + 14128) = result;
  *(v0 + 14144) = result;
  *(v0 + 13968) = result;
  *(v0 + 13984) = result;
  *(v0 + 14000) = result;
  *(v0 + 14016) = result;
  *(v0 + 14032) = result;
  *(v0 + 14048) = result;
  *(v0 + 13872) = result;
  *(v0 + 13888) = result;
  *(v0 + 13904) = result;
  *(v0 + 13920) = result;
  *(v0 + 13936) = result;
  *(v0 + 13952) = result;
  *(v0 + 9152) = result;
  *(v0 + 13800) = 0;
  *(v0 + 13808) = result;
  *(v0 + 13824) = result;
  *(v0 + 13840) = result;
  *(v0 + 13856) = result;
  *(v0 + 9168) = result;
  *(v0 + 9184) = result;
  *(v0 + 9200) = result;
  *(v0 + 13768) = 0x3FED73E5C0000000;
  *(v0 + 13792) = 0x3FF0000000000000;
  *(v0 + 9216) = result;
  *(v0 + 9232) = result;
  *(v0 + 13632) = result;
  *(v0 + 13648) = result;
  *(v0 + 13664) = result;
  *(v0 + 13680) = result;
  *(v0 + 9248) = result;
  *(v0 + 9264) = result;
  *(v0 + 13552) = result;
  *(v0 + 13568) = result;
  *(v0 + 13584) = result;
  *(v0 + 13616) = result;
  *(v0 + 9280) = result;
  *(v0 + 9296) = result;
  *(v0 + 9312) = result;
  *(v0 + 9328) = result;
  *(v0 + 9344) = result;
  *(v0 + 9360) = result;
  *(v0 + 9376) = result;
  *(v0 + 9392) = result;
  *(v0 + 13336) = 0x3FF0000000000000;
  *(v0 + 13416) = 1;
  *(v0 + 13417) = *v20;
  *(v0 + 13420) = *&v20[3];
  *(v0 + 13448) = 1060320051;
  *(v0 + 13344) = result;
  *(v0 + 13360) = result;
  *(v0 + 13376) = result;
  *(v0 + 13392) = 0x3FF0000000000000;
  *(v0 + 13408) = 0x4028000000000010;
  *(v0 + 9408) = result;
  *(v0 + 9424) = result;
  *(v0 + 9440) = result;
  *(v0 + 9456) = result;
  *(v0 + 13296) = result;
  *(v0 + 13312) = result;
  *(v0 + 9472) = result;
  *(v0 + 13152) = result;
  *(v0 + 13168) = result;
  *(v0 + 13184) = result;
  *(v0 + 13200) = result;
  *(v0 + 13216) = result;
  *(v0 + 13056) = result;
  *(v0 + 13072) = result;
  *(v0 + 13088) = result;
  *(v0 + 13104) = result;
  *(v0 + 13120) = result;
  *(v0 + 13136) = result;
  *(v0 + 12960) = result;
  *(v0 + 12976) = result;
  *(v0 + 12992) = result;
  *(v0 + 13008) = result;
  *(v0 + 13024) = result;
  *(v0 + 13040) = result;
  *(v0 + 12864) = result;
  *(v0 + 12880) = result;
  *(v0 + 12896) = result;
  *(v0 + 12912) = result;
  *(v0 + 12928) = result;
  *(v0 + 12944) = result;
  *(v0 + 12768) = result;
  *(v0 + 12784) = result;
  *(v0 + 12800) = result;
  *(v0 + 12816) = result;
  *(v0 + 12832) = result;
  *(v0 + 12848) = result;
  *(v0 + 12672) = result;
  *(v0 + 12688) = result;
  *(v0 + 12704) = result;
  *(v0 + 12720) = result;
  *(v0 + 12736) = result;
  *(v0 + 12752) = result;
  *(v0 + 12584) = 0;
  *(v0 + 12592) = result;
  *(v0 + 12608) = result;
  *(v0 + 12624) = result;
  *(v0 + 12640) = result;
  *(v0 + 12656) = result;
  *(v0 + 9488) = result;
  *(v0 + 9504) = result;
  *(v0 + 9520) = result;
  *(v0 + 12512) = result;
  *(v0 + 12552) = 0x3FEB9B9BC0000000;
  *(v0 + 12576) = 0x3FF0000000000000;
  *(v0 + 9536) = result;
  *(v0 + 9552) = result;
  *(v0 + 12416) = result;
  *(v0 + 12432) = result;
  *(v0 + 12448) = result;
  *(v0 + 12496) = result;
  *(v0 + 9568) = result;
  *(v0 + 12320) = result;
  *(v0 + 12336) = result;
  *(v0 + 12352) = result;
  *(v0 + 12368) = result;
  *(v0 + 12400) = result;
  *(v0 + 9648) = result;
  *(v0 + 9664) = result;
  *(v0 + 9688) = 0x3FF0000000000000;
  *(v0 + 9696) = result;
  *(v0 + 12288) = result;
  *(v0 + 12304) = result;
  *(v0 + 9712) = result;
  *(v0 + 12201) = *v19;
  *(v0 + 12232) = 1061158912;
  *(v0 + 12176) = 0x3FF0000000000000;
  *(v0 + 12192) = 0x4031FFFFFFFFFFF6;
  *(v0 + 12200) = 1;
  *(v0 + 12204) = *&v19[3];
  *(v0 + 9728) = result;
  *(v0 + 9744) = 0x3FF0000000000000;
  *(v0 + 12120) = 0x3FF0000000000000;
  *(v0 + 12128) = result;
  *(v0 + 12144) = result;
  *(v0 + 12160) = result;
  *(v0 + 9760) = 0x403DFFFFFFFFFFFELL;
  *(v0 + 9768) = 0;
  *(v0 + 12096) = result;
  *(v0 + 9769) = *v17;
  *(v0 + 9772) = *&v17[3];
  *(v0 + 12000) = result;
  *(v0 + 12080) = result;
  *(v0 + 11904) = result;
  *(v0 + 11920) = result;
  *(v0 + 11936) = result;
  *(v0 + 11952) = result;
  *(v0 + 11968) = result;
  *(v0 + 11984) = result;
  *(v0 + 11808) = result;
  *(v0 + 11824) = result;
  *(v0 + 11840) = result;
  *(v0 + 11856) = result;
  *(v0 + 11872) = result;
  *(v0 + 11888) = result;
  *(v0 + 11712) = result;
  *(v0 + 11728) = result;
  *(v0 + 11744) = result;
  *(v0 + 11760) = result;
  *(v0 + 11776) = result;
  *(v0 + 11792) = result;
  *(v0 + 11616) = result;
  *(v0 + 11632) = result;
  *(v0 + 11648) = result;
  *(v0 + 11664) = result;
  *(v0 + 11680) = result;
  *(v0 + 11696) = result;
  *(v0 + 11520) = result;
  *(v0 + 11536) = result;
  *(v0 + 11552) = result;
  *(v0 + 11568) = result;
  *(v0 + 11584) = result;
  *(v0 + 11600) = result;
  *(v0 + 11424) = result;
  *(v0 + 11440) = result;
  *(v0 + 11456) = result;
  *(v0 + 11472) = result;
  *(v0 + 11488) = result;
  *(v0 + 11504) = result;
  *(v0 + 9800) = 1061997773;
  *(v0 + 11360) = 0x3FF0000000000000;
  *(v0 + 11368) = 0;
  *(v0 + 11376) = result;
  *(v0 + 11392) = result;
  *(v0 + 11408) = result;
  *(v0 + 9904) = result;
  *(v0 + 9920) = result;
  *(v0 + 9936) = result;
  *(v0 + 9968) = result;
  *(v0 + 11296) = result;
  *(v0 + 11336) = 0x3FEB9B9BC0000000;
  *(v0 + 9984) = result;
  *(v0 + 10000) = result;
  *(v0 + 11184) = result;
  *(v0 + 11200) = result;
  *(v0 + 11216) = result;
  *(v0 + 11232) = result;
  *(v0 + 10016) = result;
  *(v0 + 10080) = result;
  *(v0 + 10120) = 0x3FEB9B9BC0000000;
  *(v0 + 11120) = result;
  *(v0 + 11136) = result;
  *(v0 + 11152) = result;
  *(v0 + 10144) = 0x3FF0000000000000;
  *(v0 + 10152) = 0;
  *(v0 + 10160) = result;
  *(v0 + 10176) = result;
  *(v0 + 10192) = result;
  *(v0 + 10985) = *v18;
  *(v0 + 10988) = *&v18[3];
  *(v0 + 11016) = 1061997773;
  *(v0 + 10912) = result;
  *(v0 + 10928) = result;
  *(v0 + 10944) = result;
  *(v0 + 10960) = 0x3FF0000000000000;
  *(v0 + 10976) = 0x403DFFFFFFFFFFFELL;
  *(v0 + 10984) = 1;
  *(v0 + 10208) = result;
  *(v0 + 10224) = result;
  *(v0 + 10240) = result;
  *(v0 + 10864) = result;
  *(v0 + 10880) = result;
  *(v0 + 10904) = 0x3FF0000000000000;
  *(v0 + 10256) = result;
  *(v0 + 10272) = result;
  *(v0 + 10736) = result;
  *(v0 + 10752) = result;
  *(v0 + 10768) = result;
  *(v0 + 10784) = result;
  *(v0 + 10640) = result;
  *(v0 + 10656) = result;
  *(v0 + 10672) = result;
  *(v0 + 10688) = result;
  *(v0 + 10704) = result;
  *(v0 + 10720) = result;
  *(v0 + 10544) = result;
  *(v0 + 10560) = result;
  *(v0 + 10576) = result;
  *(v0 + 10592) = result;
  *(v0 + 10608) = result;
  *(v0 + 10624) = result;
  *(v0 + 10448) = result;
  *(v0 + 10464) = result;
  *(v0 + 10480) = result;
  *(v0 + 10496) = result;
  *(v0 + 10512) = result;
  *(v0 + 10528) = result;
  *(v0 + 10352) = result;
  *(v0 + 10368) = result;
  *(v0 + 10384) = result;
  *(v0 + 10400) = result;
  *(v0 + 10416) = result;
  *(v0 + 10432) = result;
  *(v0 + 10288) = result;
  *(v0 + 10304) = result;
  *(v0 + 10320) = result;
  *(v0 + 10336) = result;
  *(v0 + 18160) = result;
  *(v0 + 18176) = result;
  *(v0 + 18208) = result;
  *(v0 + 18224) = result;
  *(v0 + 18240) = result;
  *(v0 + 18336) = result;
  *(v0 + 18400) = result;
  *(v0 + 18480) = result;
  *(v0 + 18496) = result;
  *(v0 + 18640) = result;
  *(v0 + 18672) = result;
  *(v0 + 18688) = result;
  *(v0 + 18704) = result;
  *(v0 + 18720) = result;
  *(v0 + 18736) = result;
  *(v0 + 18752) = result;
  *(v0 + 18768) = result;
  *(v0 + 18784) = result;
  *(v0 + 18800) = result;
  *(v0 + 18816) = result;
  *(v0 + 18832) = result;
  *(v0 + 18848) = result;
  *(v0 + 18864) = result;
  *(v0 + 18880) = result;
  *(v0 + 18896) = result;
  *(v0 + 18912) = result;
  *(v0 + 18928) = result;
  *(v0 + 18944) = result;
  *(v0 + 18960) = result;
  *(v0 + 18976) = result;
  *(v0 + 18992) = result;
  *(v0 + 19008) = result;
  *(v0 + 19024) = result;
  *(v0 + 19040) = result;
  *(v0 + 19056) = result;
  *(v0 + 19072) = result;
  *(v0 + 19088) = result;
  *(v0 + 19104) = result;
  *(v0 + 19120) = result;
  *(v0 + 19136) = result;
  *(v0 + 19152) = result;
  *(v0 + 19168) = result;
  *(v0 + 19184) = result;
  *(v0 + 19200) = result;
  *(v0 + 19216) = result;
  *(v0 + 19232) = result;
  *(v0 + 19248) = result;
  *(v0 + 19264) = result;
  *(v0 + 19280) = result;
  *(v0 + 19296) = result;
  *(v0 + 19376) = result;
  *(v0 + 19392) = result;
  *(v0 + 19424) = result;
  *(v0 + 19440) = result;
  *(v0 + 19456) = result;
  *(v0 + 19696) = result;
  *(v0 + 19712) = result;
  *(v0 + 19728) = result;
  *(v0 + 19744) = result;
  *(v0 + 19760) = result;
  *(v0 + 19808) = result;
  *(v0 + 19856) = result;
  *(v0 + 19888) = result;
  *(v0 + 19904) = result;
  *(v0 + 19920) = result;
  *(v0 + 19936) = result;
  *(v0 + 19952) = result;
  *(v0 + 19968) = result;
  *(v0 + 19984) = result;
  *(v0 + 20000) = result;
  *(v0 + 20016) = result;
  *(v0 + 20032) = result;
  *(v0 + 20048) = result;
  *(v0 + 20064) = result;
  *(v0 + 20080) = result;
  *(v0 + 20096) = result;
  *(v0 + 20112) = result;
  *(v0 + 20128) = result;
  *(v0 + 20144) = result;
  *(v0 + 20160) = result;
  *(v0 + 20176) = result;
  *(v0 + 20192) = result;
  *(v0 + 20208) = result;
  *(v0 + 20224) = result;
  *(v0 + 20240) = result;
  *(v0 + 20256) = result;
  *(v0 + 20272) = result;
  *(v0 + 20288) = result;
  *(v0 + 20304) = result;
  *(v0 + 20320) = result;
  *(v0 + 20336) = result;
  *(v0 + 20352) = result;
  *(v0 + 20368) = result;
  *(v0 + 20384) = result;
  *(v0 + 20400) = result;
  *(v0 + 20416) = result;
  *(v0 + 20432) = result;
  *(v0 + 20448) = result;
  *(v0 + 20464) = result;
  *(v0 + 20480) = result;
  *(v0 + 20496) = result;
  *(v0 + 20512) = result;
  *(v0 + 20592) = result;
  *(v0 + 20608) = result;
  *(v0 + 20640) = result;
  *(v0 + 20656) = result;
  *(v0 + 20672) = result;
  *(v0 + 20912) = result;
  *(v0 + 20928) = result;
  *(v0 + 20944) = result;
  *(v0 + 20960) = result;
  *(v0 + 20976) = result;
  *(v0 + 21024) = result;
  *(v0 + 21072) = result;
  *(v0 + 21104) = result;
  *(v0 + 21120) = result;
  *(v0 + 21136) = result;
  *(v0 + 21152) = result;
  *(v0 + 21168) = result;
  *(v0 + 21184) = result;
  *(v0 + 21200) = result;
  *(v0 + 21216) = result;
  *(v0 + 21232) = result;
  *(v0 + 21248) = result;
  *(v0 + 21264) = result;
  *(v0 + 21280) = result;
  *(v0 + 21296) = result;
  *(v0 + 21312) = result;
  *(v0 + 21328) = result;
  *(v0 + 21344) = result;
  *(v0 + 21360) = result;
  *(v0 + 21376) = result;
  *(v0 + 21392) = result;
  *(v0 + 21408) = result;
  *(v0 + 21424) = result;
  *(v0 + 21440) = result;
  *(v0 + 21456) = result;
  *(v0 + 21472) = result;
  *(v0 + 21488) = result;
  *(v0 + 21504) = result;
  *(v0 + 21520) = result;
  *(v0 + 21536) = result;
  *(v0 + 21552) = result;
  *(v0 + 21568) = result;
  *(v0 + 21584) = result;
  *(v0 + 21600) = result;
  *(v0 + 21616) = result;
  *(v0 + 21632) = result;
  *(v0 + 21648) = result;
  *(v0 + 21664) = result;
  *(v0 + 21680) = result;
  *(v0 + 21696) = result;
  *(v0 + 21712) = result;
  *(v0 + 21728) = result;
  *(v0 + 21808) = result;
  *(v0 + 21824) = result;
  *(v0 + 21856) = result;
  *(v0 + 21872) = result;
  *(v0 + 21888) = result;
  *(v0 + 7688) = 0x3FEF0AE2E0000000;
  *(v0 + 7712) = 0x3FF0000000000000;
  *(v0 + 7720) = 0;
  *(v0 + 18200) = 0x3FF0000000000000;
  *(v0 + 18256) = 0x3FF0000000000000;
  *(v0 + 18272) = 0xC028000000000000;
  *(v0 + 18280) = 1;
  *(v0 + 18281) = *v24;
  *(v0 + 18284) = *&v24[3];
  *(v0 + 18312) = 1036831948;
  *(v0 + 18632) = 0x3FF0000000000000;
  *(v0 + 18656) = 0;
  *(v0 + 18664) = 1065353216;
  *(v0 + 19416) = 0x3FF0000000000000;
  *(v0 + 19472) = 0x3FF0000000000000;
  *(v0 + 19488) = 0xC04E000000000002;
  *(v0 + 19496) = 1;
  *(v0 + 19497) = *v25;
  *(v0 + 19500) = *&v25[3];
  *(v0 + 19528) = 1040242952;
  *(v0 + 19848) = 0x3FF0000000000000;
  *(v0 + 19872) = 0;
  *(v0 + 19880) = 1065353216;
  *(v0 + 20632) = 0x3FF0000000000000;
  *(v0 + 20688) = 0x3FF0000000000000;
  *(v0 + 20704) = 0xC056800000000000;
  *(v0 + 20712) = 1;
  *(v0 + 20713) = *v26;
  *(v0 + 20716) = *&v26[3];
  *(v0 + 20744) = 1040242952;
  *(v0 + 21064) = 0x3FF0000000000000;
  *(v0 + 21088) = 0;
  *(v0 + 21096) = 1065353216;
  *(v0 + 21848) = 0x3FF0000000000000;
  *(v0 + 21904) = 0x3FF0000000000000;
  return result;
}

double sub_1BCBB7FDC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07858);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1BCE3C820;
  *(v0 + 32) = 0xC056800000000000;
  *(v0 + 40) = 0;
  *(v0 + 48) = xmmword_1BCE3D330;
  *(v0 + 64) = 0x432A000043C80000;
  *(v0 + 72) = 1040242952;
  *(v0 + 80) = xmmword_1BCE3DCE0;
  *(v0 + 96) = xmmword_1BCE3C850;
  *(v0 + 112) = xmmword_1BCE3C860;
  *(v0 + 128) = xmmword_1BCE3C870;
  *(v0 + 144) = xmmword_1BCE3C880;
  *(v0 + 160) = xmmword_1BCE3C890;
  *(v0 + 176) = xmmword_1BCE3C8A0;
  *(v0 + 192) = xmmword_1BCE3C8B0;
  __asm { FMOV            V26.2D, #0.5 }

  *(v0 + 208) = _Q26;
  *(v0 + 224) = xmmword_1BCE3D910;
  __asm { FMOV            V0.2D, #1.0 }

  *(v0 + 240) = _Q0;
  *(v0 + 256) = _Q0;
  *(v0 + 272) = _Q0;
  *(v0 + 288) = _Q0;
  *(v0 + 304) = _Q0;
  *(v0 + 320) = xmmword_1BCE3C8C0;
  *(v0 + 336) = xmmword_1BCE3C8F0;
  *(v0 + 352) = _Q0;
  *(v0 + 368) = xmmword_1BCE3C900;
  *(v0 + 384) = 0x3F3333333F800000;
  *(v0 + 392) = 0x3FF0000000000000;
  *(v0 + 400) = _Q0;
  *(v0 + 416) = 0;
  *(v0 + 424) = 1065353216;
  *(v0 + 432) = _Q0;
  *(v0 + 448) = _Q0;
  *(v0 + 464) = _Q0;
  *(v0 + 480) = _Q0;
  *(v0 + 496) = _Q0;
  *(v0 + 512) = _Q0;
  *(v0 + 528) = _Q0;
  *(v0 + 544) = _Q0;
  *(v0 + 560) = _Q0;
  *(v0 + 576) = _Q0;
  *(v0 + 592) = _Q0;
  *(v0 + 608) = _Q0;
  *(v0 + 624) = _Q0;
  *(v0 + 640) = _Q0;
  *(v0 + 656) = _Q0;
  *(v0 + 672) = _Q0;
  *(v0 + 688) = _Q0;
  *(v0 + 704) = _Q0;
  *(v0 + 720) = _Q0;
  *(v0 + 736) = _Q0;
  *(v0 + 752) = _Q0;
  *(v0 + 768) = _Q0;
  *(v0 + 784) = _Q0;
  *(v0 + 800) = _Q0;
  *(v0 + 816) = _Q0;
  *(v0 + 832) = _Q0;
  *(v0 + 848) = _Q0;
  *(v0 + 864) = _Q0;
  *(v0 + 880) = _Q0;
  *(v0 + 896) = _Q0;
  *(v0 + 912) = _Q0;
  *(v0 + 928) = _Q0;
  *(v0 + 944) = _Q0;
  *(v0 + 960) = _Q0;
  *(v0 + 976) = _Q0;
  *(v0 + 992) = _Q0;
  *(v0 + 1008) = _Q0;
  *(v0 + 1024) = _Q0;
  *(v0 + 1040) = _Q0;
  *(v0 + 1056) = _Q0;
  *(v0 + 1072) = vdupq_n_s64(0x3FCF82F740000000uLL);
  *(v0 + 1088) = xmmword_1BCE3C910;
  *(v0 + 1104) = xmmword_1BCE3C920;
  *(v0 + 1120) = xmmword_1BCE3C930;
  *(v0 + 1136) = xmmword_1BCE3D350;
  *(v0 + 1152) = _Q0;
  *(v0 + 1168) = 0x4120000042FA0000;
  *(v0 + 1176) = 0x3FEB89F080000000;
  *(v0 + 1184) = xmmword_1BCE3D360;
  *(v0 + 1200) = _Q0;
  *(v0 + 1216) = xmmword_1BCE3D370;
  *(v0 + 1232) = 0x3FF0000000000000;
  *(v0 + 1248) = 0xC04E000000000000;
  *(v0 + 1256) = 0;
  *(v0 + 1257) = *v12;
  *(v0 + 1260) = *&v12[3];
  *(v0 + 1264) = xmmword_1BCE3D330;
  *(v0 + 1280) = 0x432A000043C80000;
  *(v0 + 1288) = 1040242952;
  v11 = vdupq_n_s64(0x3FD7575760000000uLL);
  *(v0 + 1296) = v11;
  *(v0 + 1312) = xmmword_1BCE3D340;
  *(v0 + 1328) = xmmword_1BCE3C860;
  *(v0 + 1344) = xmmword_1BCE3C870;
  *(v0 + 1360) = xmmword_1BCE3C880;
  *(v0 + 1376) = xmmword_1BCE3C890;
  *(v0 + 1392) = xmmword_1BCE3C8A0;
  *(v0 + 1408) = xmmword_1BCE3C8B0;
  *(v0 + 1424) = _Q26;
  *(v0 + 1440) = xmmword_1BCE3D910;
  *(v0 + 1456) = _Q0;
  *(v0 + 1472) = _Q0;
  *(v0 + 1488) = _Q0;
  *(v0 + 1504) = _Q0;
  *(v0 + 1520) = _Q0;
  *(v0 + 1536) = xmmword_1BCE3C8C0;
  *(v0 + 1552) = xmmword_1BCE3C8F0;
  *(v0 + 1568) = _Q0;
  *(v0 + 1584) = xmmword_1BCE3C900;
  *(v0 + 1600) = 0x3F3333333F800000;
  *(v0 + 1608) = 0x3FF0000000000000;
  *(v0 + 1616) = _Q0;
  *(v0 + 1632) = 0;
  *(v0 + 1640) = 1065353216;
  *(v0 + 1648) = _Q0;
  *(v0 + 1664) = _Q0;
  *(v0 + 1680) = _Q0;
  *(v0 + 1696) = _Q0;
  *(v0 + 1712) = _Q0;
  *(v0 + 1728) = _Q0;
  *(v0 + 1744) = _Q0;
  *(v0 + 1760) = _Q0;
  *(v0 + 1776) = _Q0;
  *(v0 + 1792) = _Q0;
  *(v0 + 1808) = _Q0;
  *(v0 + 1824) = _Q0;
  *(v0 + 1840) = _Q0;
  *(v0 + 1856) = _Q0;
  *(v0 + 1872) = _Q0;
  *(v0 + 1888) = _Q0;
  *(v0 + 1904) = _Q0;
  *(v0 + 1920) = _Q0;
  *(v0 + 1936) = _Q0;
  *(v0 + 1952) = _Q0;
  *(v0 + 1968) = _Q0;
  *(v0 + 1984) = _Q0;
  *(v0 + 2000) = _Q0;
  *(v0 + 2016) = _Q0;
  *(v0 + 2288) = vdupq_n_s64(0x3FCF6CD7E0000000uLL);
  *(v0 + 2304) = xmmword_1BCE3C940;
  *(v0 + 2320) = xmmword_1BCE3C950;
  *(v0 + 2336) = xmmword_1BCE3C960;
  *(v0 + 2400) = xmmword_1BCE3D380;
  *(v0 + 2432) = xmmword_1BCE3D390;
  *(v0 + 2608) = xmmword_1BCE3C9B0;
  *(v0 + 2704) = xmmword_1BCE3D3C0;
  *(v0 + 2720) = xmmword_1BCE3D3D0;
  *(v0 + 2736) = xmmword_1BCE3C9E0;
  *(v0 + 3504) = vdupq_n_s64(0x3FCF992720000000uLL);
  *(v0 + 3520) = xmmword_1BCE3CA20;
  *(v0 + 3536) = xmmword_1BCE3CA30;
  *(v0 + 3552) = xmmword_1BCE3CA40;
  *(v0 + 3568) = xmmword_1BCE3D3E0;
  *(v0 + 3584) = _Q0;
  *(v0 + 3600) = 0x4120000042B40000;
  *(v0 + 3608) = 0x3FE9EB8500000000;
  *(v0 + 3616) = xmmword_1BCE3D610;
  *(v0 + 3648) = xmmword_1BCE3D400;
  *(v0 + 3664) = 0x3FF0000000000000;
  *(v0 + 3680) = 0xC018000000000000;
  *(v0 + 3688) = 0;
  *(v0 + 3689) = *v14;
  *(v0 + 3692) = *&v14[3];
  *(v0 + 3696) = xmmword_1BCE3CA50;
  *(v0 + 3712) = 0x447A000044480000;
  *(v0 + 3720) = 1061997773;
  *(v0 + 3728) = xmmword_1BCE3CA60;
  *(v0 + 3744) = _Q0;
  *(v0 + 3760) = xmmword_1BCE3CA70;
  *(v0 + 3776) = xmmword_1BCE3CA80;
  *(v0 + 3792) = xmmword_1BCE3CA90;
  *(v0 + 3808) = xmmword_1BCE3CAA0;
  *(v0 + 3824) = xmmword_1BCE3CAB0;
  *(v0 + 3840) = xmmword_1BCE3CAC0;
  *(v0 + 3856) = vdupq_n_s64(0x3FE88B6D00000000uLL);
  *(v0 + 3872) = xmmword_1BCE3D960;
  *(v0 + 3888) = _Q0;
  *(v0 + 3904) = _Q0;
  *(v0 + 3920) = _Q0;
  *(v0 + 3936) = _Q0;
  *(v0 + 3952) = _Q0;
  *(v0 + 3968) = xmmword_1BCE3C8C0;
  *(v0 + 3984) = xmmword_1BCE3CAD0;
  *(v0 + 4000) = xmmword_1BCE3CA00;
  *(v0 + 4016) = xmmword_1BCE3CAE0;
  *(v0 + 4032) = 1062836634;
  *(v0 + 4040) = 0x3FEFBFBFC0000000;
  *(v0 + 4048) = xmmword_1BCE3CAF0;
  *(v0 + 4064) = 0;
  *(v0 + 4072) = 0;
  *(v0 + 4080) = _Q0;
  *(v0 + 4096) = _Q0;
  *(v0 + 4112) = _Q0;
  *(v0 + 4128) = _Q0;
  *(v0 + 4144) = _Q0;
  *(v0 + 4160) = _Q0;
  *(v0 + 4176) = _Q0;
  *(v0 + 4192) = _Q0;
  *(v0 + 4208) = _Q0;
  *(v0 + 4224) = _Q0;
  *(v0 + 4240) = _Q0;
  *(v0 + 4256) = _Q0;
  *(v0 + 4272) = _Q0;
  *(v0 + 4288) = _Q0;
  *(v0 + 4304) = _Q0;
  *(v0 + 4320) = _Q0;
  *(v0 + 4336) = _Q0;
  *(v0 + 4352) = _Q0;
  *(v0 + 4368) = _Q0;
  *(v0 + 4384) = _Q0;
  *(v0 + 4400) = _Q0;
  *(v0 + 4416) = _Q0;
  *(v0 + 4432) = _Q0;
  *(v0 + 4448) = _Q0;
  *(v0 + 4464) = _Q0;
  *(v0 + 4480) = _Q0;
  *(v0 + 4496) = _Q0;
  *(v0 + 4512) = _Q0;
  *(v0 + 4528) = _Q0;
  *(v0 + 4544) = _Q0;
  *(v0 + 4560) = _Q0;
  *(v0 + 4576) = _Q0;
  *(v0 + 4592) = _Q0;
  *(v0 + 4608) = _Q0;
  *(v0 + 4624) = _Q0;
  *(v0 + 4640) = _Q0;
  *(v0 + 4656) = _Q0;
  *(v0 + 4672) = _Q0;
  *(v0 + 4688) = _Q0;
  *(v0 + 4704) = _Q0;
  *(v0 + 4720) = xmmword_1BCE3CB00;
  *(v0 + 4736) = xmmword_1BCE3CB10;
  *(v0 + 4752) = xmmword_1BCE3CB20;
  *(v0 + 4768) = xmmword_1BCE3CB10;
  *(v0 + 4784) = xmmword_1BCE3D410;
  *(v0 + 4800) = _Q0;
  *(v0 + 4816) = 0x41A0000041F00000;
  *(v0 + 4824) = 0x3FE8000000000000;
  *(v0 + 4848) = xmmword_1BCE3D430;
  *(v0 + 4864) = xmmword_1BCE3D440;
  *(v0 + 4928) = 0x44C8000044160000;
  *(v0 + 4944) = xmmword_1BCE3CB40;
  *(v0 + 4960) = xmmword_1BCE3CB50;
  *(v0 + 4976) = xmmword_1BCE3CB60;
  *(v0 + 4992) = xmmword_1BCE3CB70;
  *(v0 + 5008) = xmmword_1BCE3CB80;
  *(v0 + 5024) = xmmword_1BCE3CB90;
  *(v0 + 5168) = xmmword_1BCE3CBD0;
  *(v0 + 5184) = xmmword_1BCE3CBE0;
  *(v0 + 5232) = xmmword_1BCE3CC00;
  *(v0 + 5936) = xmmword_1BCE3CC10;
  *(v0 + 5968) = xmmword_1BCE3CC30;
  *(v0 + 5952) = xmmword_1BCE3CC20;
  *(v0 + 5984) = xmmword_1BCE3CC20;
  *(v0 + 4832) = xmmword_1BCE3E5A0;
  *(v0 + 4880) = 0x3FF0000000000000;
  *(v0 + 4905) = *v15;
  *(v0 + 4908) = *&v15[3];
  *(v0 + 4936) = 1061997773;
  *(v0 + 6000) = xmmword_1BCE3D410;
  *(v0 + 6032) = 0x4170000041A00000;
  *(v0 + 4912) = xmmword_1BCE3CB30;
  *(v0 + 4896) = 0;
  *(v0 + 4904) = 0;
  *(v0 + 6048) = xmmword_1BCE3E5A0;
  *(v0 + 6080) = xmmword_1BCE3D460;
  *(v0 + 6128) = xmmword_1BCE3CC40;
  *(v0 + 6144) = 0x44480000443B8000;
  *(v0 + 6160) = xmmword_1BCE3CC50;
  *(v0 + 6176) = xmmword_1BCE3CC60;
  *(v0 + 6192) = xmmword_1BCE3CC70;
  *(v0 + 6208) = xmmword_1BCE3CC80;
  *(v0 + 6224) = xmmword_1BCE3CC90;
  *(v0 + 6240) = xmmword_1BCE3CCA0;
  *(v0 + 6416) = xmmword_1BCE3CCD0;
  *(v0 + 6432) = xmmword_1BCE3CCE0;
  *(v0 + 6448) = xmmword_1BCE3CCF0;
  *(v0 + 6480) = xmmword_1BCE3CD00;
  *(v0 + 7152) = xmmword_1BCE3CD10;
  *(v0 + 7184) = xmmword_1BCE3CD30;
  *(v0 + 7168) = xmmword_1BCE3CD20;
  *(v0 + 7200) = xmmword_1BCE3CD20;
  *(v0 + 7264) = xmmword_1BCE3E5B0;
  *(v0 + 7280) = xmmword_1BCE3D480;
  *(v0 + 7296) = xmmword_1BCE3D490;
  *(v0 + 7344) = xmmword_1BCE3CD40;
  *(v0 + 7408) = xmmword_1BCE3CD60;
  *(v0 + 7424) = xmmword_1BCE3C9D0;
  *(v0 + 7440) = xmmword_1BCE3CD70;
  *(v0 + 7456) = xmmword_1BCE3CD80;
  *(v0 + 7552) = _Q0;
  *(v0 + 7632) = xmmword_1BCE3CD90;
  *(v0 + 7648) = xmmword_1BCE3CDA0;
  *(v0 + 7664) = xmmword_1BCE3CDB0;
  *(v0 + 7696) = xmmword_1BCE3CDC0;
  *(v0 + 8368) = xmmword_1BCE3CDD0;
  *(v0 + 8400) = xmmword_1BCE3CDE0;
  *(v0 + 8480) = xmmword_1BCE3D4A0;
  *(v0 + 8512) = xmmword_1BCE3D4C0;
  *(v0 + 8560) = xmmword_1BCE3CDF0;
  *(v0 + 8624) = xmmword_1BCE3CE00;
  *(v0 + 9696) = xmmword_1BCE3D4D0;
  *(v0 + 9728) = xmmword_1BCE3D4F0;
  *(v0 + 9584) = xmmword_1BCE3CE20;
  *(v0 + 10800) = xmmword_1BCE3CE20;
  *(v0 + 10944) = xmmword_1BCE3D500;
  *(v0 + 9776) = xmmword_1BCE3CE40;
  *(v0 + 10992) = xmmword_1BCE3CE40;
  *(v0 + 9792) = 1151500288;
  *(v0 + 11008) = 1151500288;
  *(v0 + 9840) = xmmword_1BCE3CE50;
  *(v0 + 11056) = xmmword_1BCE3CE50;
  *(v0 + 9856) = xmmword_1BCE3CE60;
  *(v0 + 11072) = xmmword_1BCE3CE60;
  *(v0 + 9872) = xmmword_1BCE3CE70;
  *(v0 + 11088) = xmmword_1BCE3CE70;
  *(v0 + 9888) = xmmword_1BCE3CE80;
  *(v0 + 11104) = xmmword_1BCE3CE80;
  v7 = vdupq_n_s32(0x3F666666u);
  *(v0 + 8880) = v7;
  *(v0 + 10096) = v7;
  *(v0 + 11312) = v7;
  *(v0 + 10816) = xmmword_1BCE3CE90;
  *(v0 + 12032) = xmmword_1BCE3CE90;
  *(v0 + 9616) = xmmword_1BCE3CE30;
  *(v0 + 12048) = xmmword_1BCE3CE30;
  *(v0 + 12160) = xmmword_1BCE3D510;
  *(v0 + 12208) = xmmword_1BCE3CEC0;
  *(v0 + 8576) = 0x41A0000044A8C000;
  *(v0 + 12224) = 0x41A0000044A8C000;
  _Q1 = vdupq_n_s64(0x3FECBCBCC0000000uLL);
  *(v0 + 7376) = _Q1;
  *(v0 + 8592) = _Q1;
  *(v0 + 9808) = _Q1;
  *(v0 + 11024) = _Q1;
  *(v0 + 12240) = _Q1;
  *(v0 + 7392) = xmmword_1BCE3CD50;
  *(v0 + 8608) = xmmword_1BCE3CD50;
  *(v0 + 9824) = xmmword_1BCE3CD50;
  *(v0 + 11040) = xmmword_1BCE3CD50;
  *(v0 + 12256) = xmmword_1BCE3CD50;
  *(v0 + 12272) = xmmword_1BCE3CED0;
  *(v0 + 12528) = xmmword_1BCE3CEF0;
  *(v0 + 8912) = xmmword_1BCE3CE10;
  *(v0 + 10128) = xmmword_1BCE3CE10;
  *(v0 + 11344) = xmmword_1BCE3CE10;
  *(v0 + 12560) = xmmword_1BCE3CE10;
  *(v0 + 10832) = xmmword_1BCE3CEA0;
  *(v0 + 13264) = xmmword_1BCE3CEA0;
  *(v0 + 13376) = xmmword_1BCE3D520;
  *(v0 + 13424) = xmmword_1BCE3CF00;
  *(v0 + 7360) = 1147207680;
  *(v0 + 13440) = 1147207680;
  *(v0 + 13456) = vdupq_n_s64(0x3FEC9CDC00000000uLL);
  *(v0 + 13472) = xmmword_1BCE3CF10;
  *(v0 + 13488) = xmmword_1BCE3CF20;
  *(v0 + 13504) = xmmword_1BCE3CF30;
  *(v0 + 13520) = xmmword_1BCE3CF40;
  *(v0 + 13536) = xmmword_1BCE3CF50;
  *(v0 + 6400) = xmmword_1BCE3CCC0;
  *(v0 + 7616) = xmmword_1BCE3CCC0;
  *(v0 + 8832) = xmmword_1BCE3CCC0;
  *(v0 + 10048) = xmmword_1BCE3CCC0;
  *(v0 + 12480) = xmmword_1BCE3CCC0;
  *(v0 + 13696) = xmmword_1BCE3CCC0;
  *(v0 + 13712) = xmmword_1BCE3CF60;
  *(v0 + 13744) = xmmword_1BCE3CF70;
  *(v0 + 13776) = xmmword_1BCE3CF80;
  *(v0 + 12016) = xmmword_1BCE3CEB0;
  *(v0 + 13232) = xmmword_1BCE3CEB0;
  *(v0 + 14448) = xmmword_1BCE3CEB0;
  *(v0 + 8384) = xmmword_1BCE3CBB0;
  *(v0 + 9600) = xmmword_1BCE3CBB0;
  *(v0 + 13248) = xmmword_1BCE3CBB0;
  *(v0 + 14464) = xmmword_1BCE3CBB0;
  *(v0 + 14480) = xmmword_1BCE3CF90;
  *(v0 + 14560) = xmmword_1BCE3E5C0;
  *(v0 + 14592) = xmmword_1BCE3D540;
  *(v0 + 14640) = xmmword_1BCE3CFA0;
  *(v0 + 14656) = 0x441EC000443B8000;
  *(v0 + 14672) = xmmword_1BCE3CFB0;
  *(v0 + 3632) = xmmword_1BCE3CBC0;
  *(v0 + 2032) = _Q0;
  *(v0 + 2048) = _Q0;
  *(v0 + 2064) = _Q0;
  *(v0 + 2080) = _Q0;
  *(v0 + 2096) = _Q0;
  *(v0 + 3488) = _Q0;
  *(v0 + 3392) = _Q0;
  *(v0 + 3408) = _Q0;
  *(v0 + 3424) = _Q0;
  *(v0 + 3440) = _Q0;
  *(v0 + 3456) = _Q0;
  *(v0 + 3472) = _Q0;
  *(v0 + 3296) = _Q0;
  *(v0 + 3312) = _Q0;
  *(v0 + 3328) = _Q0;
  *(v0 + 3344) = _Q0;
  *(v0 + 3360) = _Q0;
  *(v0 + 3376) = _Q0;
  *(v0 + 3200) = _Q0;
  *(v0 + 3216) = _Q0;
  *(v0 + 3232) = _Q0;
  *(v0 + 3248) = _Q0;
  *(v0 + 3264) = _Q0;
  *(v0 + 3280) = _Q0;
  *(v0 + 3104) = _Q0;
  *(v0 + 3120) = _Q0;
  *(v0 + 3136) = _Q0;
  *(v0 + 3152) = _Q0;
  *(v0 + 3168) = _Q0;
  *(v0 + 3184) = _Q0;
  *(v0 + 3008) = _Q0;
  *(v0 + 3024) = _Q0;
  *(v0 + 3040) = _Q0;
  *(v0 + 3056) = _Q0;
  *(v0 + 3072) = _Q0;
  *(v0 + 3088) = _Q0;
  *(v0 + 2912) = _Q0;
  *(v0 + 2928) = _Q0;
  *(v0 + 2944) = _Q0;
  *(v0 + 2960) = _Q0;
  *(v0 + 2976) = _Q0;
  *(v0 + 2992) = _Q0;
  *(v0 + 2752) = xmmword_1BCE3C8C0;
  *(v0 + 2856) = 1065353216;
  *(v0 + 2864) = _Q0;
  *(v0 + 2880) = _Q0;
  *(v0 + 2896) = _Q0;
  *(v0 + 2768) = xmmword_1BCE3C9F0;
  *(v0 + 2784) = xmmword_1BCE3CA00;
  *(v0 + 2832) = _Q0;
  *(v0 + 2848) = 0;
  *(v0 + 2800) = xmmword_1BCE3CA10;
  *(v0 + 2816) = 0x3F3333333F4CCCCDLL;
  *(v0 + 2824) = 0x3FF0000000000000;
  *(v0 + 2112) = _Q0;
  *(v0 + 2128) = _Q0;
  *(v0 + 2144) = _Q0;
  *(v0 + 2160) = _Q0;
  *(v0 + 2176) = _Q0;
  *(v0 + 2688) = _Q0;
  *(v0 + 2624) = xmmword_1BCE3C8C0;
  *(v0 + 2640) = _Q26;
  *(v0 + 2656) = xmmword_1BCE3DCB0;
  *(v0 + 2672) = _Q0;
  *(v0 + 2192) = _Q0;
  *(v0 + 2473) = *v13;
  *(v0 + 2592) = _Q0;
  *(v0 + 2560) = xmmword_1BCE3C990;
  *(v0 + 2576) = xmmword_1BCE3C9A0;
  *(v0 + 2512) = xmmword_1BCE3C970;
  *(v0 + 2528) = _Q0;
  *(v0 + 2544) = xmmword_1BCE3C980;
  *(v0 + 2480) = xmmword_1BCE3D330;
  *(v0 + 2496) = 0x4396000043FA0000;
  *(v0 + 2504) = 1036831949;
  *(v0 + 2448) = 0x3FF0000000000000;
  *(v0 + 2464) = 0xC028000000000000;
  *(v0 + 2472) = 0;
  *(v0 + 2476) = *&v13[3];
  *(v0 + 2352) = xmmword_1BCE3D350;
  *(v0 + 2368) = _Q0;
  *(v0 + 2384) = 0x4120000042FA0000;
  *(v0 + 2392) = 0x3FEBA9FBE0000000;
  *(v0 + 2416) = _Q0;
  *(v0 + 2208) = _Q0;
  *(v0 + 2224) = _Q0;
  *(v0 + 2240) = _Q0;
  *(v0 + 2256) = _Q0;
  *(v0 + 2272) = _Q0;
  *(v0 + 5040) = _Q0;
  *(v0 + 5056) = xmmword_1BCE3CBA0;
  *(v0 + 5072) = _Q0;
  *(v0 + 5088) = xmmword_1BCE3DA70;
  *(v0 + 5104) = _Q0;
  *(v0 + 5120) = _Q0;
  *(v0 + 5136) = _Q0;
  *(v0 + 5152) = _Q0;
  *(v0 + 5200) = xmmword_1BCE3CBF0;
  *(v0 + 5216) = xmmword_1BCE3CA00;
  *(v0 + 5248) = 1063675494;
  *(v0 + 5256) = 0x3FF0000000000000;
  *(v0 + 5264) = _Q0;
  *(v0 + 5280) = 0;
  *(v0 + 5288) = 0;
  *(v0 + 5296) = _Q0;
  *(v0 + 5312) = _Q0;
  *(v0 + 5328) = _Q0;
  *(v0 + 5344) = _Q0;
  *(v0 + 5360) = _Q0;
  *(v0 + 5376) = _Q0;
  *(v0 + 5392) = _Q0;
  *(v0 + 5408) = _Q0;
  *(v0 + 5424) = _Q0;
  *(v0 + 5440) = _Q0;
  *(v0 + 5456) = _Q0;
  *(v0 + 5472) = _Q0;
  *(v0 + 5488) = _Q0;
  *(v0 + 5504) = _Q0;
  *(v0 + 5520) = _Q0;
  *(v0 + 5536) = _Q0;
  *(v0 + 5552) = _Q0;
  *(v0 + 5568) = _Q0;
  *(v0 + 5584) = _Q0;
  *(v0 + 5600) = _Q0;
  *(v0 + 5616) = _Q0;
  *(v0 + 5632) = _Q0;
  *(v0 + 5648) = _Q0;
  *(v0 + 5664) = _Q0;
  *(v0 + 5680) = _Q0;
  *(v0 + 5696) = _Q0;
  *(v0 + 5712) = _Q0;
  *(v0 + 5728) = _Q0;
  *(v0 + 5744) = _Q0;
  *(v0 + 5760) = _Q0;
  *(v0 + 5776) = _Q0;
  *(v0 + 5792) = _Q0;
  *(v0 + 5808) = _Q0;
  *(v0 + 5824) = _Q0;
  *(v0 + 5840) = _Q0;
  *(v0 + 5856) = _Q0;
  *(v0 + 5872) = _Q0;
  *(v0 + 5888) = _Q0;
  *(v0 + 5904) = _Q0;
  *(v0 + 5920) = _Q0;
  *(v0 + 6016) = _Q0;
  *(v0 + 6040) = 0x3FE6666680000000;
  *(v0 + 6064) = _Q0;
  *(v0 + 6096) = 0x3FF0000000000000;
  *(v0 + 6112) = 0x4017FFFFFFFFFFFALL;
  *(v0 + 6120) = 0;
  *(v0 + 6121) = *v16;
  *(v0 + 6124) = *&v16[3];
  *(v0 + 6152) = 1060739482;
  *(v0 + 6256) = _Q0;
  *(v0 + 6272) = _Q0;
  *(v0 + 6288) = _Q0;
  *(v0 + 6304) = xmmword_1BCE3DAE0;
  *(v0 + 6320) = _Q0;
  *(v0 + 6336) = _Q0;
  *(v0 + 6352) = _Q0;
  *(v0 + 6368) = _Q0;
  *(v0 + 6384) = xmmword_1BCE3CCB0;
  *(v0 + 6464) = 1063675494;
  *(v0 + 6472) = 0x3FEF857180000000;
  *(v0 + 6496) = 0x3FE0000000000000;
  *(v0 + 6504) = 0;
  *(v0 + 6512) = _Q0;
  *(v0 + 6528) = _Q0;
  *(v0 + 6544) = _Q0;
  *(v0 + 6560) = _Q0;
  *(v0 + 6576) = _Q0;
  *(v0 + 6592) = _Q0;
  *(v0 + 6608) = _Q0;
  *(v0 + 6624) = _Q0;
  *(v0 + 6640) = _Q0;
  *(v0 + 6656) = _Q0;
  *(v0 + 6672) = _Q0;
  *(v0 + 6688) = _Q0;
  *(v0 + 6704) = _Q0;
  *(v0 + 6720) = _Q0;
  *(v0 + 6736) = _Q0;
  *(v0 + 6752) = _Q0;
  *(v0 + 6768) = _Q0;
  *(v0 + 6784) = _Q0;
  *(v0 + 6800) = _Q0;
  *(v0 + 6816) = _Q0;
  *(v0 + 6832) = _Q0;
  *(v0 + 6848) = _Q0;
  *(v0 + 6864) = _Q0;
  *(v0 + 6880) = _Q0;
  *(v0 + 6896) = _Q0;
  *(v0 + 6912) = _Q0;
  *(v0 + 6928) = _Q0;
  *(v0 + 6944) = _Q0;
  *(v0 + 6960) = _Q0;
  *(v0 + 6976) = _Q0;
  *(v0 + 6992) = _Q0;
  *(v0 + 7008) = _Q0;
  *(v0 + 7024) = _Q0;
  *(v0 + 7040) = _Q0;
  *(v0 + 7056) = _Q0;
  *(v0 + 7072) = _Q0;
  *(v0 + 7088) = _Q0;
  *(v0 + 7104) = _Q0;
  *(v0 + 7120) = _Q0;
  *(v0 + 7136) = _Q0;
  *(v0 + 7216) = _Q0;
  *(v0 + 7232) = _Q0;
  *(v0 + 7248) = 0x4170000000000000;
  *(v0 + 7256) = 0x3FE206D360000000;
  *(v0 + 7312) = 0x3FF0000000000000;
  *(v0 + 7328) = 0x4027FFFFFFFFFFFALL;
  *(v0 + 7336) = 0;
  *(v0 + 7337) = *v17;
  *(v0 + 7340) = *&v17[3];
  *(v0 + 7368) = 1059481190;
  *(v0 + 7472) = _Q0;
  *(v0 + 7488) = _Q0;
  *(v0 + 7504) = _Q0;
  *(v0 + 7520) = xmmword_1BCE3DAE0;
  *(v0 + 7536) = _Q0;
  *(v0 + 14688) = xmmword_1BCE3CFC0;
  *(v0 + 14704) = xmmword_1BCE3CFD0;
  *(v0 + 14720) = xmmword_1BCE3CFE0;
  *(v0 + 14736) = xmmword_1BCE3CFF0;
  *(v0 + 14752) = xmmword_1BCE3D000;
  *(v0 + 8736) = xmmword_1BCE3DAE0;
  *(v0 + 12384) = xmmword_1BCE3DAE0;
  *(v0 + 13600) = xmmword_1BCE3DAE0;
  *(v0 + 14816) = xmmword_1BCE3DAE0;
  *(v0 + 14864) = xmmword_1BCE3D010;
  *(v0 + 14896) = xmmword_1BCE3D020;
  *(v0 + 14912) = xmmword_1BCE3D030;
  *(v0 + 14928) = xmmword_1BCE3D040;
  *(v0 + 14960) = xmmword_1BCE3D050;
  *(v0 + 14992) = xmmword_1BCE3D060;
  *(v0 + 15664) = xmmword_1BCE3D070;
  *(v0 + 15680) = xmmword_1BCE3D080;
  *(v0 + 15696) = xmmword_1BCE3D090;
  *(v0 + 15712) = xmmword_1BCE3D0A0;
  *(v0 + 15776) = xmmword_1BCE3E5D0;
  *(v0 + 9712) = xmmword_1BCE3D4E0;
  *(v0 + 10928) = xmmword_1BCE3D4E0;
  *(v0 + 12144) = xmmword_1BCE3D4E0;
  *(v0 + 13360) = xmmword_1BCE3D4E0;
  *(v0 + 15792) = xmmword_1BCE3D4E0;
  *(v0 + 15808) = xmmword_1BCE3D560;
  *(v0 + 15856) = xmmword_1BCE3D0B0;
  *(v0 + 15872) = 0x449EC00044160000;
  *(v0 + 15888) = xmmword_1BCE3D0C0;
  *(v0 + 15904) = xmmword_1BCE3D0D0;
  *(v0 + 15920) = xmmword_1BCE3D0E0;
  *(v0 + 15936) = xmmword_1BCE3D0F0;
  *(v0 + 15952) = xmmword_1BCE3D100;
  *(v0 + 15968) = xmmword_1BCE3D110;
  *(v0 + 16000) = xmmword_1BCE3CBA0;
  *(v0 + 9952) = xmmword_1BCE3DA70;
  *(v0 + 11168) = xmmword_1BCE3DA70;
  *(v0 + 16032) = xmmword_1BCE3DA70;
  *(v0 + 7600) = xmmword_1BCE3CCB0;
  *(v0 + 8816) = xmmword_1BCE3CCB0;
  *(v0 + 8848) = xmmword_1BCE3CCB0;
  *(v0 + 10032) = xmmword_1BCE3CCB0;
  *(v0 + 10064) = xmmword_1BCE3CCB0;
  *(v0 + 11248) = xmmword_1BCE3CCB0;
  *(v0 + 11280) = xmmword_1BCE3CCB0;
  *(v0 + 12464) = xmmword_1BCE3CCB0;
  *(v0 + 16080) = xmmword_1BCE3CCB0;
  *(v0 + 16112) = xmmword_1BCE3D120;
  *(v0 + 16128) = xmmword_1BCE3D130;
  *(v0 + 16144) = xmmword_1BCE3CBF0;
  *(v0 + 16176) = xmmword_1BCE3D140;
  *(v0 + 7680) = 1063675494;
  *(v0 + 8896) = 1063675494;
  *(v0 + 10112) = 1063675494;
  *(v0 + 11328) = 1063675494;
  *(v0 + 12544) = 1063675494;
  *(v0 + 13760) = 1063675494;
  *(v0 + 14976) = 1063675494;
  *(v0 + 16192) = 1063675494;
  *(v0 + 16208) = xmmword_1BCE3D150;
  *(v0 + 16880) = xmmword_1BCE3D160;
  *(v0 + 16896) = xmmword_1BCE3D170;
  *(v0 + 16912) = xmmword_1BCE3D180;
  *(v0 + 16928) = xmmword_1BCE3D190;
  *(v0 + 16944) = xmmword_1BCE3D570;
  *(v0 + 16960) = xmmword_1BCE3D580;
  *(v0 + 8464) = 0x4170000000000000;
  *(v0 + 9680) = 0x4170000000000000;
  *(v0 + 10896) = 0x4170000000000000;
  *(v0 + 12112) = 0x4170000000000000;
  *(v0 + 13328) = 0x4170000000000000;
  *(v0 + 14544) = 0x4170000000000000;
  *(v0 + 15760) = 0x4170000000000000;
  *(v0 + 16976) = 0x4170000000000000;
  *(v0 + 16992) = xmmword_1BCE3E5E0;
  *(v0 + 17024) = xmmword_1BCE3D5A0;
  *(v0 + 17072) = xmmword_1BCE3CB30;
  *(v0 + 17088) = 0x4483CC9D44160000;
  *(v0 + 17104) = xmmword_1BCE3D5B0;
  *(v0 + 17136) = xmmword_1BCE3D1C0;
  *(v0 + 17152) = xmmword_1BCE3D1D0;
  *(v0 + 17168) = xmmword_1BCE3D1E0;
  *(v0 + 17184) = xmmword_1BCE3D1F0;
  *(v0 + 17200) = xmmword_1BCE3D200;
  *(v0 + 17216) = xmmword_1BCE3CAC0;
  *(v0 + 17232) = vdupq_n_s64(0x3FE8F90420000000uLL);
  *(v0 + 17248) = xmmword_1BCE3DC60;
  *(v0 + 17360) = xmmword_1BCE3CAD0;
  *(v0 + 17392) = xmmword_1BCE3D210;
  *(v0 + 17408) = 1062836634;
  *(v0 + 17424) = xmmword_1BCE3D220;
  *(v0 + 18096) = xmmword_1BCE3D230;
  *(v0 + 18112) = xmmword_1BCE3D240;
  *(v0 + 18128) = xmmword_1BCE3D250;
  *(v0 + 18144) = xmmword_1BCE3D260;
  *(v0 + 18160) = xmmword_1BCE3D5C0;
  *(v0 + 18176) = xmmword_1BCE3D5D0;
  __asm { FMOV            V1.2S, #20.0 }

  *(v0 + 18192) = _Q1.i64[0];
  *(v0 + 18208) = xmmword_1BCE3E5F0;
  *(v0 + 8496) = xmmword_1BCE3D4B0;
  *(v0 + 14576) = xmmword_1BCE3D4B0;
  *(v0 + 18224) = xmmword_1BCE3D4B0;
  *(v0 + 18240) = xmmword_1BCE3D5F0;
  *(v0 + 18304) = 0x4396000043FA0000;
  *(v0 + 18320) = xmmword_1BCE3C970;
  *(v0 + 18352) = xmmword_1BCE3C980;
  *(v0 + 18368) = xmmword_1BCE3C990;
  *(v0 + 18384) = xmmword_1BCE3C9A0;
  *(v0 + 18416) = xmmword_1BCE3D2A0;
  *(v0 + 18464) = xmmword_1BCE3DCB0;
  *(v0 + 18512) = xmmword_1BCE3D2B0;
  *(v0 + 18528) = xmmword_1BCE3D2C0;
  *(v0 + 18544) = xmmword_1BCE3D2D0;
  *(v0 + 18576) = xmmword_1BCE3C9F0;
  *(v0 + 13728) = xmmword_1BCE3CA00;
  *(v0 + 14944) = xmmword_1BCE3CA00;
  *(v0 + 16160) = xmmword_1BCE3CA00;
  *(v0 + 17376) = xmmword_1BCE3CA00;
  *(v0 + 18592) = xmmword_1BCE3CA00;
  *(v0 + 18608) = xmmword_1BCE3CA10;
  *(v0 + 18624) = 0x3F3333333F4CCCCDLL;
  *(v0 + 19312) = xmmword_1BCE3D2E0;
  *(v0 + 19344) = xmmword_1BCE3D2F0;
  *(v0 + 19376) = xmmword_1BCE3D600;
  *(v0 + 19408) = 0x4120000042B40000;
  *(v0 + 19424) = xmmword_1BCE3D610;
  *(v0 + 8416) = xmmword_1BCE3CBC0;
  *(v0 + 9632) = xmmword_1BCE3CBC0;
  *(v0 + 10848) = xmmword_1BCE3CBC0;
  *(v0 + 12064) = xmmword_1BCE3CBC0;
  *(v0 + 13280) = xmmword_1BCE3CBC0;
  *(v0 + 14496) = xmmword_1BCE3CBC0;
  *(v0 + 17008) = xmmword_1BCE3CBC0;
  *(v0 + 19440) = xmmword_1BCE3CBC0;
  *(v0 + 19456) = xmmword_1BCE3D620;
  *(v0 + 19536) = v11;
  *(v0 + 19552) = xmmword_1BCE3D340;
  *(v0 + 19632) = xmmword_1BCE3E590;
  __asm { FMOV            V1.2D, #0.25 }

  *(v0 + 20528) = _Q1;
  *(v0 + 20560) = xmmword_1BCE3D300;
  *(v0 + 20640) = xmmword_1BCE3D630;
  *(v0 + 20672) = xmmword_1BCE3D640;
  *(v0 + 18288) = xmmword_1BCE3D330;
  *(v0 + 19504) = xmmword_1BCE3D330;
  *(v0 + 20720) = xmmword_1BCE3D330;
  *(v0 + 19520) = 0x432A000043C80000;
  *(v0 + 20736) = 0x432A000043C80000;
  *(v0 + 20752) = xmmword_1BCE3DCE0;
  *(v0 + 20768) = xmmword_1BCE3C850;
  *(v0 + 19568) = xmmword_1BCE3C860;
  *(v0 + 20784) = xmmword_1BCE3C860;
  *(v0 + 19584) = xmmword_1BCE3C870;
  *(v0 + 20800) = xmmword_1BCE3C870;
  *(v0 + 19600) = xmmword_1BCE3C880;
  *(v0 + 20816) = xmmword_1BCE3C880;
  *(v0 + 19616) = xmmword_1BCE3C890;
  *(v0 + 20832) = xmmword_1BCE3C890;
  *(v0 + 20848) = xmmword_1BCE3C8A0;
  *(v0 + 19648) = xmmword_1BCE3C8B0;
  *(v0 + 20864) = xmmword_1BCE3C8B0;
  *(v0 + 10912) = _Q26;
  *(v0 + 12128) = _Q26;
  *(v0 + 13344) = _Q26;
  *(v0 + 18448) = _Q26;
  *(v0 + 19664) = _Q26;
  *(v0 + 20880) = _Q26;
  *(v0 + 19680) = xmmword_1BCE3D910;
  *(v0 + 20896) = xmmword_1BCE3D910;
  *(v0 + 18064) = _Q0;
  *(v0 + 18080) = _Q0;
  *(v0 + 17968) = _Q0;
  *(v0 + 17984) = _Q0;
  *(v0 + 18000) = _Q0;
  *(v0 + 18016) = _Q0;
  *(v0 + 18032) = _Q0;
  *(v0 + 18048) = _Q0;
  *(v0 + 17872) = _Q0;
  *(v0 + 17888) = _Q0;
  *(v0 + 17904) = _Q0;
  *(v0 + 17920) = _Q0;
  *(v0 + 17936) = _Q0;
  *(v0 + 17952) = _Q0;
  *(v0 + 17776) = _Q0;
  *(v0 + 17792) = _Q0;
  *(v0 + 17808) = _Q0;
  *(v0 + 17824) = _Q0;
  *(v0 + 17840) = _Q0;
  *(v0 + 17856) = _Q0;
  *(v0 + 17680) = _Q0;
  *(v0 + 17696) = _Q0;
  *(v0 + 17712) = _Q0;
  *(v0 + 17728) = _Q0;
  *(v0 + 17744) = _Q0;
  *(v0 + 17760) = _Q0;
  *(v0 + 17584) = _Q0;
  *(v0 + 17600) = _Q0;
  *(v0 + 17616) = _Q0;
  *(v0 + 17632) = _Q0;
  *(v0 + 17648) = _Q0;
  *(v0 + 17664) = _Q0;
  *(v0 + 17504) = _Q0;
  *(v0 + 17520) = _Q0;
  *(v0 + 17536) = _Q0;
  *(v0 + 17552) = _Q0;
  *(v0 + 17568) = _Q0;
  *(v0 + 11264) = xmmword_1BCE3C8C0;
  *(v0 + 17344) = xmmword_1BCE3C8C0;
  *(v0 + 17456) = _Q0;
  *(v0 + 17472) = _Q0;
  *(v0 + 17488) = _Q0;
  *(v0 + 17416) = 0x3FEF23CF40000000;
  *(v0 + 17440) = 0;
  *(v0 + 17448) = 665496235;
  *(v0 + 18432) = xmmword_1BCE3C8C0;
  *(v0 + 18560) = xmmword_1BCE3C8C0;
  *(v0 + 19776) = xmmword_1BCE3C8C0;
  *(v0 + 20992) = xmmword_1BCE3C8C0;
  *(v0 + 17296) = _Q0;
  *(v0 + 17312) = _Q0;
  *(v0 + 17328) = _Q0;
  *(v0 + 19792) = xmmword_1BCE3C8F0;
  *(v0 + 21008) = xmmword_1BCE3C8F0;
  *(v0 + 19824) = xmmword_1BCE3C900;
  *(v0 + 21040) = xmmword_1BCE3C900;
  *(v0 + 17264) = _Q0;
  *(v0 + 17280) = _Q0;
  *(v0 + 19840) = 0x3F3333333F800000;
  *(v0 + 21056) = 0x3F3333333F800000;
  *(v0 + 21744) = vdupq_n_s64(0x3FCFEB6B80000000uLL);
  *(v0 + 17040) = 0x3FF0000000000000;
  *(v0 + 17056) = 0xC017FFFFFFFFFFE8;
  *(v0 + 17064) = 1;
  *(v0 + 17065) = *v25;
  *(v0 + 17096) = 1050388079;
  *(v0 + 17120) = _Q0;
  *(v0 + 17068) = *&v25[3];
  *(v0 + 19328) = xmmword_1BCE3C910;
  *(v0 + 19360) = xmmword_1BCE3C910;
  *(v0 + 20544) = xmmword_1BCE3C910;
  *(v0 + 20576) = xmmword_1BCE3C910;
  *(v0 + 21760) = xmmword_1BCE3C910;
  *(v0 + 21776) = xmmword_1BCE3D310;
  *(v0 + 21792) = xmmword_1BCE3D320;
  *(v0 + 20592) = xmmword_1BCE3D350;
  *(v0 + 21808) = xmmword_1BCE3D350;
  *(v0 + 20624) = 0x4120000042FA0000;
  *(v0 + 21840) = 0x4120000042FA0000;
  *(v0 + 16984) = 0x3FE8000000000000;
  *(v0 + 21856) = xmmword_1BCE3D360;
  *(v0 + 7568) = _Q0;
  *(v0 + 16848) = _Q0;
  *(v0 + 16864) = _Q0;
  *(v0 + 16752) = _Q0;
  *(v0 + 16768) = _Q0;
  *(v0 + 16784) = _Q0;
  *(v0 + 16800) = _Q0;
  *(v0 + 16816) = _Q0;
  *(v0 + 16832) = _Q0;
  *(v0 + 16656) = _Q0;
  *(v0 + 16672) = _Q0;
  *(v0 + 16688) = _Q0;
  *(v0 + 16704) = _Q0;
  *(v0 + 16720) = _Q0;
  *(v0 + 16736) = _Q0;
  *(v0 + 16560) = _Q0;
  *(v0 + 16576) = _Q0;
  *(v0 + 16592) = _Q0;
  *(v0 + 16608) = _Q0;
  *(v0 + 16624) = _Q0;
  *(v0 + 16640) = _Q0;
  *(v0 + 16464) = _Q0;
  *(v0 + 16480) = _Q0;
  *(v0 + 16496) = _Q0;
  *(v0 + 16512) = _Q0;
  *(v0 + 16528) = _Q0;
  *(v0 + 16544) = _Q0;
  *(v0 + 16368) = _Q0;
  *(v0 + 0x4000) = _Q0;
  *(v0 + 16400) = _Q0;
  *(v0 + 16416) = _Q0;
  *(v0 + 16432) = _Q0;
  *(v0 + 16448) = _Q0;
  *(v0 + 16272) = _Q0;
  *(v0 + 16288) = _Q0;
  *(v0 + 16304) = _Q0;
  *(v0 + 16320) = _Q0;
  *(v0 + 16336) = _Q0;
  *(v0 + 16352) = _Q0;
  *(v0 + 7584) = _Q0;
  *(v0 + 7728) = _Q0;
  *(v0 + 16224) = 0;
  *(v0 + 16232) = 0;
  *(v0 + 16240) = _Q0;
  *(v0 + 16256) = _Q0;
  *(v0 + 7744) = _Q0;
  *(v0 + 7760) = _Q0;
  *(v0 + 7776) = _Q0;
  *(v0 + 7792) = _Q0;
  *(v0 + 16200) = 0x3FEE6AC340000000;
  *(v0 + 7808) = _Q0;
  *(v0 + 7824) = _Q0;
  *(v0 + 7840) = _Q0;
  *(v0 + 16048) = _Q0;
  *(v0 + 16064) = _Q0;
  *(v0 + 16096) = _Q0;
  *(v0 + 7856) = _Q0;
  *(v0 + 7872) = _Q0;
  *(v0 + 7888) = _Q0;
  *(v0 + 7904) = _Q0;
  *(v0 + 15984) = _Q0;
  *(v0 + 16016) = _Q0;
  *(v0 + 7920) = _Q0;
  *(v0 + 7936) = _Q0;
  *(v0 + 7952) = _Q0;
  *(v0 + 7968) = _Q0;
  *(v0 + 7984) = _Q0;
  *(v0 + 15849) = *v24;
  *(v0 + 15852) = *&v24[3];
  *(v0 + 15880) = 1061997773;
  *(v0 + 8000) = _Q0;
  *(v0 + 8016) = _Q0;
  *(v0 + 8032) = _Q0;
  *(v0 + 15824) = 0x3FF0000000000000;
  *(v0 + 15840) = 0;
  *(v0 + 15848) = 1;
  *(v0 + 8048) = _Q0;
  *(v0 + 8064) = _Q0;
  *(v0 + 15728) = _Q0;
  *(v0 + 15744) = _Q0;
  *(v0 + 15768) = 0x3FE4CCCCC0000000;
  *(v0 + 8080) = _Q0;
  *(v0 + 8096) = _Q0;
  *(v0 + 8112) = _Q0;
  *(v0 + 15616) = _Q0;
  *(v0 + 15632) = _Q0;
  *(v0 + 15648) = _Q0;
  *(v0 + 15520) = _Q0;
  *(v0 + 15536) = _Q0;
  *(v0 + 15552) = _Q0;
  *(v0 + 15568) = _Q0;
  *(v0 + 15584) = _Q0;
  *(v0 + 15600) = _Q0;
  *(v0 + 15424) = _Q0;
  *(v0 + 15440) = _Q0;
  *(v0 + 15456) = _Q0;
  *(v0 + 15472) = _Q0;
  *(v0 + 15488) = _Q0;
  *(v0 + 15504) = _Q0;
  *(v0 + 15328) = _Q0;
  *(v0 + 15344) = _Q0;
  *(v0 + 15360) = _Q0;
  *(v0 + 15376) = _Q0;
  *(v0 + 15392) = _Q0;
  *(v0 + 15408) = _Q0;
  *(v0 + 15232) = _Q0;
  *(v0 + 15248) = _Q0;
  *(v0 + 15264) = _Q0;
  *(v0 + 15280) = _Q0;
  *(v0 + 15296) = _Q0;
  *(v0 + 15312) = _Q0;
  *(v0 + 15136) = _Q0;
  *(v0 + 15152) = _Q0;
  *(v0 + 15168) = _Q0;
  *(v0 + 15184) = _Q0;
  *(v0 + 15200) = _Q0;
  *(v0 + 15216) = _Q0;
  *(v0 + 8128) = _Q0;
  *(v0 + 15056) = _Q0;
  *(v0 + 15072) = _Q0;
  *(v0 + 15088) = _Q0;
  *(v0 + 15104) = _Q0;
  *(v0 + 15120) = _Q0;
  *(v0 + 14984) = 0x3FEDEF5480000000;
  *(v0 + 15008) = 0x3FE0000000000000;
  *(v0 + 15016) = 0;
  *(v0 + 15024) = _Q0;
  *(v0 + 15040) = _Q0;
  *(v0 + 8144) = _Q0;
  *(v0 + 8160) = _Q0;
  *(v0 + 8176) = _Q0;
  *(v0 + 0x2000) = _Q0;
  *(v0 + 8208) = _Q0;
  *(v0 + 8224) = _Q0;
  *(v0 + 8240) = _Q0;
  *(v0 + 8256) = _Q0;
  *(v0 + 14800) = _Q0;
  *(v0 + 14832) = _Q0;
  *(v0 + 14848) = _Q0;
  *(v0 + 14880) = _Q0;
  *(v0 + 8272) = _Q0;
  *(v0 + 8288) = _Q0;
  *(v0 + 8304) = _Q0;
  *(v0 + 14768) = _Q0;
  *(v0 + 14784) = _Q0;
  *(v0 + 8320) = _Q0;
  *(v0 + 8336) = _Q0;
  *(v0 + 8352) = _Q0;
  *(v0 + 14633) = *v23;
  *(v0 + 8432) = _Q0;
  *(v0 + 8448) = _Q0;
  *(v0 + 14636) = *&v23[3];
  *(v0 + 14664) = 1061158912;
  *(v0 + 8472) = 0x3FE0000000000000;
  *(v0 + 8528) = 0x3FF0000000000000;
  *(v0 + 14624) = 0x4018000000000010;
  *(v0 + 14632) = 1;
  *(v0 + 8544) = 0x4032000000000001;
  *(v0 + 8553) = *v18;
  *(v0 + 14608) = 0x3FF0000000000000;
  *(v0 + 8552) = 0;
  *(v0 + 8556) = *&v18[3];
  *(v0 + 14512) = _Q0;
  *(v0 + 14528) = _Q0;
  *(v0 + 14552) = 0x3FE0000000000000;
  *(v0 + 8584) = 1061158912;
  *(v0 + 8640) = _Q0;
  *(v0 + 14384) = _Q0;
  *(v0 + 14400) = _Q0;
  *(v0 + 14416) = _Q0;
  *(v0 + 14432) = _Q0;
  *(v0 + 14288) = _Q0;
  *(v0 + 14304) = _Q0;
  *(v0 + 14320) = _Q0;
  *(v0 + 14336) = _Q0;
  *(v0 + 14352) = _Q0;
  *(v0 + 14368) = _Q0;
  *(v0 + 14192) = _Q0;
  *(v0 + 14208) = _Q0;
  *(v0 + 14224) = _Q0;
  *(v0 + 14240) = _Q0;
  *(v0 + 14256) = _Q0;
  *(v0 + 14272) = _Q0;
  *(v0 + 14096) = _Q0;
  *(v0 + 14112) = _Q0;
  *(v0 + 14128) = _Q0;
  *(v0 + 14144) = _Q0;
  *(v0 + 14160) = _Q0;
  *(v0 + 14176) = _Q0;
  *(v0 + 14000) = _Q0;
  *(v0 + 14016) = _Q0;
  *(v0 + 14032) = _Q0;
  *(v0 + 14048) = _Q0;
  *(v0 + 14064) = _Q0;
  *(v0 + 14080) = _Q0;
  *(v0 + 13904) = _Q0;
  *(v0 + 13920) = _Q0;
  *(v0 + 13936) = _Q0;
  *(v0 + 13952) = _Q0;
  *(v0 + 13968) = _Q0;
  *(v0 + 13984) = _Q0;
  *(v0 + 8656) = _Q0;
  *(v0 + 13824) = _Q0;
  *(v0 + 13840) = _Q0;
  *(v0 + 13856) = _Q0;
  *(v0 + 13872) = _Q0;
  *(v0 + 13888) = _Q0;
  *(v0 + 8672) = _Q0;
  *(v0 + 13768) = 0x3FED73E5C0000000;
  *(v0 + 13792) = 0x3FF0000000000000;
  *(v0 + 13800) = 0;
  *(v0 + 13808) = _Q0;
  *(v0 + 8688) = _Q0;
  *(v0 + 8704) = _Q0;
  *(v0 + 8720) = _Q0;
  *(v0 + 8752) = _Q0;
  *(v0 + 13664) = _Q0;
  *(v0 + 13680) = _Q0;
  *(v0 + 8768) = _Q0;
  *(v0 + 8784) = _Q0;
  *(v0 + 13584) = _Q0;
  *(v0 + 13616) = _Q0;
  *(v0 + 13632) = _Q0;
  *(v0 + 13648) = _Q0;
  *(v0 + 8800) = _Q0;
  *(v0 + 8864) = _Q0;
  *(v0 + 8904) = 0x3FEB9B9BC0000000;
  *(v0 + 13552) = _Q0;
  *(v0 + 13568) = _Q0;
  *(v0 + 8928) = 0x3FF0000000000000;
  *(v0 + 8936) = 0;
  *(v0 + 8944) = _Q0;
  *(v0 + 8960) = _Q0;
  *(v0 + 8976) = _Q0;
  *(v0 + 8992) = _Q0;
  *(v0 + 13417) = *v22;
  *(v0 + 13448) = 1060320051;
  *(v0 + 13392) = 0x3FF0000000000000;
  *(v0 + 13408) = 0x4028000000000010;
  *(v0 + 13416) = 1;
  *(v0 + 13420) = *&v22[3];
  *(v0 + 9008) = _Q0;
  *(v0 + 9024) = _Q0;
  *(v0 + 9040) = _Q0;
  *(v0 + 13296) = _Q0;
  *(v0 + 13312) = _Q0;
  *(v0 + 13336) = 0x3FE0000000000000;
  *(v0 + 9056) = _Q0;
  *(v0 + 9072) = _Q0;
  *(v0 + 9088) = _Q0;
  *(v0 + 9104) = _Q0;
  *(v0 + 13200) = _Q0;
  *(v0 + 13216) = _Q0;
  *(v0 + 13104) = _Q0;
  *(v0 + 13120) = _Q0;
  *(v0 + 13136) = _Q0;
  *(v0 + 13152) = _Q0;
  *(v0 + 13168) = _Q0;
  *(v0 + 13184) = _Q0;
  *(v0 + 13008) = _Q0;
  *(v0 + 13024) = _Q0;
  *(v0 + 13040) = _Q0;
  *(v0 + 13056) = _Q0;
  *(v0 + 13072) = _Q0;
  *(v0 + 13088) = _Q0;
  *(v0 + 12912) = _Q0;
  *(v0 + 12928) = _Q0;
  *(v0 + 12944) = _Q0;
  *(v0 + 12960) = _Q0;
  *(v0 + 12976) = _Q0;
  *(v0 + 12992) = _Q0;
  *(v0 + 12816) = _Q0;
  *(v0 + 12832) = _Q0;
  *(v0 + 12848) = _Q0;
  *(v0 + 12864) = _Q0;
  *(v0 + 12880) = _Q0;
  *(v0 + 12896) = _Q0;
  *(v0 + 12720) = _Q0;
  *(v0 + 12736) = _Q0;
  *(v0 + 12752) = _Q0;
  *(v0 + 12768) = _Q0;
  *(v0 + 12784) = _Q0;
  *(v0 + 12800) = _Q0;
  *(v0 + 12624) = _Q0;
  *(v0 + 12640) = _Q0;
  *(v0 + 12656) = _Q0;
  *(v0 + 12672) = _Q0;
  *(v0 + 12688) = _Q0;
  *(v0 + 12704) = _Q0;
  *(v0 + 9120) = _Q0;
  *(v0 + 12552) = 0x3FEB9B9BC0000000;
  *(v0 + 12576) = 0x3FF0000000000000;
  *(v0 + 12584) = 0;
  *(v0 + 12592) = _Q0;
  *(v0 + 12608) = _Q0;
  *(v0 + 9136) = _Q0;
  *(v0 + 9152) = _Q0;
  *(v0 + 9168) = _Q0;
  *(v0 + 9184) = _Q0;
  *(v0 + 12496) = _Q0;
  *(v0 + 12512) = _Q0;
  *(v0 + 9200) = _Q0;
  *(v0 + 12368) = _Q0;
  *(v0 + 12400) = _Q0;
  *(v0 + 12416) = _Q0;
  *(v0 + 12432) = _Q0;
  *(v0 + 12448) = _Q0;
  *(v0 + 9216) = _Q0;
  *(v0 + 12288) = _Q0;
  *(v0 + 12304) = _Q0;
  *(v0 + 12320) = _Q0;
  *(v0 + 12336) = _Q0;
  *(v0 + 12352) = _Q0;
  *(v0 + 9232) = _Q0;
  *(v0 + 9248) = _Q0;
  *(v0 + 9264) = _Q0;
  *(v0 + 9280) = _Q0;
  *(v0 + 9296) = _Q0;
  *(v0 + 12201) = *v21;
  *(v0 + 12204) = *&v21[3];
  *(v0 + 12232) = 1061158912;
  *(v0 + 9312) = _Q0;
  *(v0 + 9328) = _Q0;
  *(v0 + 12176) = 0x3FF0000000000000;
  *(v0 + 12192) = 0x4031FFFFFFFFFFF6;
  *(v0 + 12200) = 1;
  *(v0 + 9344) = _Q0;
  *(v0 + 9360) = _Q0;
  *(v0 + 9376) = _Q0;
  *(v0 + 12080) = _Q0;
  *(v0 + 12096) = _Q0;
  *(v0 + 12120) = 0x3FE0000000000000;
  *(v0 + 9392) = _Q0;
  *(v0 + 9408) = _Q0;
  *(v0 + 11952) = _Q0;
  *(v0 + 11968) = _Q0;
  *(v0 + 11984) = _Q0;
  *(v0 + 12000) = _Q0;
  *(v0 + 11856) = _Q0;
  *(v0 + 11872) = _Q0;
  *(v0 + 11888) = _Q0;
  *(v0 + 11904) = _Q0;
  *(v0 + 11920) = _Q0;
  *(v0 + 11936) = _Q0;
  *(v0 + 11760) = _Q0;
  *(v0 + 11776) = _Q0;
  *(v0 + 11792) = _Q0;
  *(v0 + 11808) = _Q0;
  *(v0 + 11824) = _Q0;
  *(v0 + 11840) = _Q0;
  *(v0 + 11664) = _Q0;
  *(v0 + 11680) = _Q0;
  *(v0 + 11696) = _Q0;
  *(v0 + 11712) = _Q0;
  *(v0 + 11728) = _Q0;
  *(v0 + 11744) = _Q0;
  *(v0 + 11568) = _Q0;
  *(v0 + 11584) = _Q0;
  *(v0 + 11600) = _Q0;
  *(v0 + 11616) = _Q0;
  *(v0 + 11632) = _Q0;
  *(v0 + 11648) = _Q0;
  *(v0 + 11472) = _Q0;
  *(v0 + 11488) = _Q0;
  *(v0 + 11504) = _Q0;
  *(v0 + 11520) = _Q0;
  *(v0 + 11536) = _Q0;
  *(v0 + 11552) = _Q0;
  *(v0 + 11376) = _Q0;
  *(v0 + 11392) = _Q0;
  *(v0 + 11408) = _Q0;
  *(v0 + 11424) = _Q0;
  *(v0 + 11440) = _Q0;
  *(v0 + 11456) = _Q0;
  *(v0 + 9424) = _Q0;
  *(v0 + 9440) = _Q0;
  *(v0 + 9456) = _Q0;
  *(v0 + 11336) = 0x3FEB9B9BC0000000;
  *(v0 + 11360) = 0x3FF0000000000000;
  *(v0 + 11368) = 0;
  *(v0 + 9472) = _Q0;
  *(v0 + 9488) = _Q0;
  *(v0 + 9504) = _Q0;
  *(v0 + 11216) = _Q0;
  *(v0 + 11232) = _Q0;
  *(v0 + 11296) = _Q0;
  *(v0 + 9520) = _Q0;
  *(v0 + 11120) = _Q0;
  *(v0 + 11136) = _Q0;
  *(v0 + 11152) = _Q0;
  *(v0 + 11184) = _Q0;
  *(v0 + 11200) = _Q0;
  *(v0 + 9536) = _Q0;
  *(v0 + 9552) = _Q0;
  *(v0 + 9568) = _Q0;
  *(v0 + 9648) = _Q0;
  *(v0 + 9664) = _Q0;
  *(v0 + 9688) = 0x3FD9999980000000;
  *(v0 + 9744) = 0x3FF0000000000000;
  *(v0 + 9760) = 0x403DFFFFFFFFFFFELL;
  *(v0 + 11016) = 1061997773;
  *(v0 + 9768) = 0;
  *(v0 + 10985) = *v20;
  *(v0 + 9769) = *v19;
  *(v0 + 10976) = 0x403DFFFFFFFFFFFELL;
  *(v0 + 10984) = 1;
  *(v0 + 10988) = *&v20[3];
  *(v0 + 9772) = *&v19[3];
  *(v0 + 9800) = 1061997773;
  *(v0 + 9904) = _Q0;
  *(v0 + 10904) = 0x3FE0000000000000;
  *(v0 + 10960) = 0x3FF0000000000000;
  *(v0 + 9920) = _Q0;
  *(v0 + 9936) = _Q0;
  *(v0 + 9968) = _Q0;
  *(v0 + 9984) = _Q0;
  *(v0 + 10864) = _Q0;
  *(v0 + 10880) = _Q0;
  *(v0 + 10704) = _Q0;
  *(v0 + 10720) = _Q0;
  *(v0 + 10736) = _Q0;
  *(v0 + 10752) = _Q0;
  *(v0 + 10768) = _Q0;
  *(v0 + 10784) = _Q0;
  *(v0 + 10608) = _Q0;
  *(v0 + 10624) = _Q0;
  *(v0 + 10640) = _Q0;
  *(v0 + 10656) = _Q0;
  *(v0 + 10672) = _Q0;
  *(v0 + 10688) = _Q0;
  *(v0 + 10512) = _Q0;
  *(v0 + 10528) = _Q0;
  *(v0 + 10544) = _Q0;
  *(v0 + 10560) = _Q0;
  *(v0 + 10576) = _Q0;
  *(v0 + 10592) = _Q0;
  *(v0 + 10416) = _Q0;
  *(v0 + 10432) = _Q0;
  *(v0 + 10448) = _Q0;
  *(v0 + 10464) = _Q0;
  *(v0 + 10480) = _Q0;
  *(v0 + 10496) = _Q0;
  *(v0 + 10320) = _Q0;
  *(v0 + 10336) = _Q0;
  *(v0 + 10352) = _Q0;
  *(v0 + 10368) = _Q0;
  *(v0 + 10384) = _Q0;
  *(v0 + 10400) = _Q0;
  *(v0 + 10224) = _Q0;
  *(v0 + 10240) = _Q0;
  *(v0 + 10256) = _Q0;
  *(v0 + 10272) = _Q0;
  *(v0 + 10288) = _Q0;
  *(v0 + 10304) = _Q0;
  *(v0 + 10144) = 0x3FF0000000000000;
  *(v0 + 10152) = 0;
  *(v0 + 10160) = _Q0;
  *(v0 + 10176) = _Q0;
  *(v0 + 10192) = _Q0;
  *(v0 + 10208) = _Q0;
  *(v0 + 10000) = _Q0;
  *(v0 + 10016) = _Q0;
  *(v0 + 10080) = _Q0;
  *(v0 + 10120) = 0x3FEB9B9BC0000000;
  *(v0 + 18336) = _Q0;
  *(v0 + 18400) = _Q0;
  *(v0 + 18480) = _Q0;
  *(v0 + 18496) = _Q0;
  *(v0 + 18640) = _Q0;
  *(v0 + 18672) = _Q0;
  *(v0 + 18688) = _Q0;
  *(v0 + 18704) = _Q0;
  *(v0 + 18720) = _Q0;
  *(v0 + 18736) = _Q0;
  *(v0 + 18752) = _Q0;
  *(v0 + 18768) = _Q0;
  *(v0 + 18784) = _Q0;
  *(v0 + 18800) = _Q0;
  *(v0 + 18816) = _Q0;
  *(v0 + 18832) = _Q0;
  *(v0 + 18848) = _Q0;
  *(v0 + 18864) = _Q0;
  *(v0 + 18880) = _Q0;
  *(v0 + 18896) = _Q0;
  *(v0 + 18912) = _Q0;
  *(v0 + 18928) = _Q0;
  *(v0 + 18944) = _Q0;
  *(v0 + 18960) = _Q0;
  *(v0 + 18976) = _Q0;
  *(v0 + 18992) = _Q0;
  *(v0 + 19008) = _Q0;
  *(v0 + 19024) = _Q0;
  *(v0 + 19040) = _Q0;
  *(v0 + 19056) = _Q0;
  *(v0 + 19072) = _Q0;
  *(v0 + 19088) = _Q0;
  *(v0 + 19104) = _Q0;
  *(v0 + 19120) = _Q0;
  *(v0 + 19136) = _Q0;
  *(v0 + 19152) = _Q0;
  *(v0 + 19168) = _Q0;
  *(v0 + 19184) = _Q0;
  *(v0 + 19200) = _Q0;
  *(v0 + 19216) = _Q0;
  *(v0 + 19232) = _Q0;
  *(v0 + 19248) = _Q0;
  *(v0 + 19264) = _Q0;
  *(v0 + 19280) = _Q0;
  *(v0 + 19296) = _Q0;
  *(v0 + 19392) = _Q0;
  *(v0 + 19696) = _Q0;
  *(v0 + 19712) = _Q0;
  *(v0 + 19728) = _Q0;
  *(v0 + 19744) = _Q0;
  *(v0 + 19760) = _Q0;
  *(v0 + 19808) = _Q0;
  *(v0 + 19856) = _Q0;
  *(v0 + 19888) = _Q0;
  *(v0 + 19904) = _Q0;
  *(v0 + 19920) = _Q0;
  *(v0 + 19936) = _Q0;
  *(v0 + 19952) = _Q0;
  *(v0 + 19968) = _Q0;
  *(v0 + 19984) = _Q0;
  *(v0 + 20000) = _Q0;
  *(v0 + 20016) = _Q0;
  *(v0 + 20032) = _Q0;
  *(v0 + 20048) = _Q0;
  *(v0 + 20064) = _Q0;
  *(v0 + 20080) = _Q0;
  *(v0 + 20096) = _Q0;
  *(v0 + 20112) = _Q0;
  *(v0 + 20128) = _Q0;
  *(v0 + 20144) = _Q0;
  *(v0 + 20160) = _Q0;
  *(v0 + 20176) = _Q0;
  *(v0 + 20192) = _Q0;
  *(v0 + 20208) = _Q0;
  *(v0 + 20224) = _Q0;
  *(v0 + 20240) = _Q0;
  *(v0 + 20256) = _Q0;
  *(v0 + 20272) = _Q0;
  *(v0 + 20288) = _Q0;
  *(v0 + 20304) = _Q0;
  *(v0 + 20320) = _Q0;
  *(v0 + 20336) = _Q0;
  *(v0 + 20352) = _Q0;
  *(v0 + 20368) = _Q0;
  *(v0 + 20384) = _Q0;
  *(v0 + 20400) = _Q0;
  *(v0 + 20416) = _Q0;
  *(v0 + 20432) = _Q0;
  *(v0 + 20448) = _Q0;
  *(v0 + 20464) = _Q0;
  *(v0 + 20480) = _Q0;
  *(v0 + 20496) = _Q0;
  *(v0 + 20512) = _Q0;
  *(v0 + 20608) = _Q0;
  *(v0 + 20656) = _Q0;
  *(v0 + 20912) = _Q0;
  *(v0 + 20928) = _Q0;
  *(v0 + 20944) = _Q0;
  *(v0 + 20960) = _Q0;
  *(v0 + 20976) = _Q0;
  *(v0 + 21024) = _Q0;
  *(v0 + 21072) = _Q0;
  *(v0 + 21104) = _Q0;
  *(v0 + 21120) = _Q0;
  *(v0 + 21136) = _Q0;
  *(v0 + 21152) = _Q0;
  *(v0 + 21168) = _Q0;
  *(v0 + 21184) = _Q0;
  *(v0 + 21200) = _Q0;
  *(v0 + 21216) = _Q0;
  *(v0 + 21232) = _Q0;
  *(v0 + 21248) = _Q0;
  *(v0 + 21264) = _Q0;
  *(v0 + 21280) = _Q0;
  *(v0 + 21296) = _Q0;
  *(v0 + 21312) = _Q0;
  *(v0 + 21328) = _Q0;
  *(v0 + 21344) = _Q0;
  *(v0 + 21360) = _Q0;
  *(v0 + 21376) = _Q0;
  *(v0 + 21392) = _Q0;
  *(v0 + 21408) = _Q0;
  *(v0 + 21424) = _Q0;
  *(v0 + 21440) = _Q0;
  *(v0 + 21456) = _Q0;
  *(v0 + 21472) = _Q0;
  *(v0 + 21488) = _Q0;
  *(v0 + 21504) = _Q0;
  *(v0 + 21520) = _Q0;
  *(v0 + 21536) = _Q0;
  *(v0 + 21552) = _Q0;
  *(v0 + 21568) = _Q0;
  *(v0 + 21584) = _Q0;
  *(v0 + 21600) = _Q0;
  *(v0 + 21616) = _Q0;
  *(v0 + 21632) = _Q0;
  *(v0 + 21648) = _Q0;
  *(v0 + 21664) = _Q0;
  *(v0 + 21680) = _Q0;
  *(v0 + 21696) = _Q0;
  *(v0 + 21712) = _Q0;
  *(v0 + 21728) = _Q0;
  *(v0 + 21824) = _Q0;
  *(v0 + 21872) = _Q0;
  result = 0.799999952;
  *(v0 + 21888) = xmmword_1BCE3D370;
  *(v0 + 7688) = 0x3FEF0AE2E0000000;
  *(v0 + 7712) = 0x3FF0000000000000;
  *(v0 + 7720) = 0;
  *(v0 + 18200) = 0x3FE99999A0000000;
  *(v0 + 18256) = 0x3FF0000000000000;
  *(v0 + 18272) = 0xC028000000000000;
  *(v0 + 18280) = 1;
  *(v0 + 18281) = *v26;
  *(v0 + 18284) = *&v26[3];
  *(v0 + 18312) = 1036831949;
  *(v0 + 18632) = 0x3FF0000000000000;
  *(v0 + 18656) = 0;
  *(v0 + 18664) = 1065353216;
  *(v0 + 19416) = 0x3FE93332C0000000;
  *(v0 + 19472) = 0x3FF0000000000000;
  *(v0 + 19488) = 0xC04E000000000002;
  *(v0 + 19496) = 1;
  *(v0 + 19497) = *v27;
  *(v0 + 19500) = *&v27[3];
  *(v0 + 19528) = 1040242952;
  *(v0 + 19848) = 0x3FF0000000000000;
  *(v0 + 19872) = 0;
  *(v0 + 19880) = 1065353216;
  *(v0 + 20632) = 0x3FEB89F0C0000000;
  *(v0 + 20688) = 0x3FF0000000000000;
  *(v0 + 20704) = 0xC056800000000000;
  *(v0 + 20712) = 1;
  *(v0 + 20713) = *v28;
  *(v0 + 20716) = *&v28[3];
  *(v0 + 20744) = 1040242952;
  *(v0 + 21064) = 0x3FF0000000000000;
  *(v0 + 21088) = 0;
  *(v0 + 21096) = 1065353216;
  *(v0 + 21848) = 0x3FEB89F080000000;
  *(v0 + 21904) = 0x3FF0000000000000;
  return result;
}

void sub_1BCBBA260(uint64_t a1@<X8>)
{
  v2 = a1 + 1436;
  sub_1BCBBAA2C();
  v4 = v3;
  sub_1BCBBBC20();
  *a1 = 0x4006666666666666;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0x3FF0000000000000;
  *(a1 + 24) = 48;
  *(a1 + 32) = xmmword_1BCE3BED0;
  *(a1 + 48) = xmmword_1BCE3BED0;
  *(a1 + 64) = 0x42C8000042480000;
  *(a1 + 72) = 0xC42F000000000000;
  *(a1 + 80) = xmmword_1BCE3E630;
  *(a1 + 96) = xmmword_1BCE51C10;
  *(a1 + 112) = 0x3E23D70A3DE147AELL;
  *(a1 + 128) = xmmword_1BCE56610;
  *(a1 + 144) = xmmword_1BCE56620;
  *(a1 + 160) = xmmword_1BCE51C20;
  *(a1 + 176) = 1137180672;
  *(a1 + 184) = 0x3DE147AE3D4CCCCDLL;
  *(a1 + 192) = xmmword_1BCE56630;
  *(a1 + 208) = xmmword_1BCE56640;
  *(a1 + 224) = xmmword_1BCE44E70;
  *(a1 + 240) = 0x4140000040A00000;
  *(a1 + 248) = 1132068864;
  *(a1 + 256) = 0x3E4CCCCD3DE147AELL;
  *(a1 + 264) = 0x40A0000041700000;
  *(a1 + 272) = 1101004800;
  __asm { FMOV            V0.4S, #1.0 }

  *(a1 + 288) = xmmword_1BCE3C7C0;
  *(a1 + 304) = _Q0;
  *(a1 + 320) = 0x4348000040C00000;
  *(a1 + 328) = 0x3E99999A3E19999ALL;
  *(a1 + 336) = 0x3F00000040A00000;
  *(a1 + 352) = xmmword_1BCE3C7C0;
  *(a1 + 368) = xmmword_1BCE3C700;
  *(a1 + 384) = 0;
  *(a1 + 388) = 0x3CA3D70A00000000;
  *(a1 + 400) = xmmword_1BCE3BF20;
  *(a1 + 416) = 0x3F0000003F000000;
  *(a1 + 424) = 10;
  *(a1 + 432) = xmmword_1BCE3BF30;
  *(a1 + 448) = 0x3E4CCCCD3DCCCCCDLL;
  *(a1 + 464) = _Q0;
  *(a1 + 480) = xmmword_1BCE3D870;
  *(a1 + 496) = 0x43FA000040400000;
  *(a1 + 504) = 1116471296;
  *(a1 + 512) = 0x3E8000003DF5C28FLL;
  *(a1 + 528) = _Q0;
  *(a1 + 544) = _Q0;
  *(a1 + 560) = 0x4248000044BB8000;
  *(a1 + 568) = 0x3E4CCCCD3DA3D70ALL;
  *(a1 + 576) = xmmword_1BCE3C700;
  *(a1 + 592) = xmmword_1BCE3D880;
  *(a1 + 608) = 0x4100000040A00000;
  *(a1 + 624) = xmmword_1BCE3C700;
  *(a1 + 640) = xmmword_1BCE3D880;
  *(a1 + 656) = 0x4220000041200000;
  *(a1 + 664) = 0x3FC000003E99999ALL;
  *(a1 + 672) = 0x40A000003F800000;
  *(a1 + 688) = xmmword_1BCE56650;
  *(a1 + 704) = 1065353216;
  *(a1 + 712) = vdup_n_s32(0x3ECCCCCDu);
  *(a1 + 720) = 0x41AD851F41900000;
  *(a1 + 728) = 1094713344;
  *(a1 + 736) = 1;
  *(a1 + 744) = 12;
  *(a1 + 752) = xmmword_1BCE48B20;
  *(a1 + 768) = 0x617274736F746C41;
  *(a1 + 776) = 0xEF53202D20737574;
  *(a1 + 784) = 0xD000000000000013;
  *(a1 + 792) = 0x80000001BCE792E0;
  *(a1 + 800) = 9;
  *(a1 + 816) = _Q0;
  *(a1 + 832) = 1063675494;
  *(a1 + 840) = vdup_n_s32(0x3F19999Au);
  *(a1 + 848) = 0x41A0000041900000;
  *(a1 + 856) = 1097859072;
  *(a1 + 864) = 1;
  *(a1 + 872) = 12;
  *(a1 + 880) = xmmword_1BCE48B30;
  *(a1 + 896) = 0x617274736F746C41;
  *(a1 + 904) = 0xEF53202D20737574;
  *(a1 + 912) = 0xD000000000000013;
  *(a1 + 920) = 0x80000001BCE792E0;
  *(a1 + 928) = 9;
  *(a1 + 944) = _Q0;
  *(a1 + 960) = 1063675494;
  *(a1 + 968) = 0x3F4CCCCD3E4CCCCDLL;
  *(a1 + 976) = 0x415A8F5C40E00000;
  *(a1 + 984) = 1076315424;
  *(a1 + 992) = 1;
  *(a1 + 1000) = 6;
  *(a1 + 1008) = xmmword_1BCE3C6F0;
  *(a1 + 1024) = 0x617274736F746C41;
  *(a1 + 1032) = 0xEF4C202D20737574;
  *(a1 + 1040) = 0xD000000000000013;
  *(a1 + 1048) = 0x80000001BCE798E0;
  *(a1 + 1056) = 6;
  *(a1 + 1072) = xmmword_1BCE3D880;
  *(a1 + 1088) = 1063675494;
  *(a1 + 1096) = 0x3F8000003F000000;
  *(a1 + 1104) = 0x400000003FC00000;
  *(a1 + 1112) = 1084503840;
  *(a1 + 1120) = 0;
  *(a1 + 1128) = 4;
  *(a1 + 1136) = xmmword_1BCE3D8A0;
  *(a1 + 1152) = 0x7970736957;
  *(a1 + 1160) = 0xE500000000000000;
  strcpy((a1 + 1168), "Wispy_Single");
  *(a1 + 1181) = 0;
  *(a1 + 1182) = -5120;
  *(a1 + 1184) = 6;
  *(a1 + 1200) = xmmword_1BCE3D870;
  *(a1 + 1216) = xmmword_1BCE49BD0;
  *(a1 + 1232) = 0;
  *(a1 + 1236) = 1;
  *(a1 + 1240) = 0x617274736F746C41;
  *(a1 + 1248) = 0xEB00000000737574;
  *(a1 + 1256) = 0xD000000000000013;
  *(a1 + 1264) = 0x80000001BCE79300;
  *(a1 + 1272) = 8;
  *(a1 + 1280) = 0;
  *(a1 + 1288) = 0x3F4CCCCD3F000000;
  *(a1 + 1296) = 0x40C0000042700000;
  *(a1 + 1304) = 0;
  *(a1 + 1312) = xmmword_1BCE56660;
  *(a1 + 1328) = xmmword_1BCE56670;
  *(a1 + 1344) = 0;
  *(a1 + 1352) = 0x40000000;
  *(a1 + 1360) = 0;
  *(a1 + 1368) = 1;
  *(a1 + 1376) = xmmword_1BCE54350;
  *(a1 + 1392) = xmmword_1BCE56680;
  *(a1 + 1408) = xmmword_1BCE56690;
  *(a1 + 1424) = 0x3F99999A3ECCCCCDLL;
  *(a1 + 1432) = 1;
  *v2 = xmmword_1BCE3BFC0;
  *(a1 + 1456) = 0x42DC000042B40000;
  *(a1 + 1472) = _Q0;
  *(a1 + 1488) = _Q0;
  *(a1 + 1504) = 1097859072;
  *(a1 + 1512) = 0x736168506E6F6F6DLL;
  *(a1 + 1520) = 0xEA00000000003065;
  *(a1 + 1528) = 1112014848;
  *(a1 + 1536) = _Q0;
  *(a1 + 1552) = xmmword_1BCE3F4F0;
  *(a1 + 1568) = 0x4248000042200000;
  *(a1 + 1584) = 0u;
  *(a1 + 1600) = xmmword_1BCE3D880;
  __asm { FMOV            V2.2S, #-30.0 }

  *(a1 + 1616) = -_D2;
  *(a1 + 1624) = 0x40000000;
  *(a1 + 1628) = 256;
  *(a1 + 1634) = 0;
  *(a1 + 1630) = 0;
  *(a1 + 1636) = 1;
  *(v2 + 201) = 0;
  *(a1 + 1645) = 16843009;
  *(a1 + 1649) = 1;
  *(a1 + 1650) = 0;
  *(a1 + 1652) = 1;
  *(a1 + 1656) = 0;
  *(a1 + 1657) = v12;
  *(a1 + 1659) = v13;
  *(a1 + 1660) = 1066611507;
  *(a1 + 1664) = 0x40C0000040A00000;
  *(a1 + 1672) = 3;
  *(a1 + 1680) = xmmword_1BCE3C000;
  *(a1 + 1696) = xmmword_1BCE3C010;
  *(a1 + 1712) = xmmword_1BCE3C020;
  *(a1 + 1728) = 0x3F0000003EB33333;
  *(a1 + 1736) = 0x3E800000453B8000;
  *(a1 + 1744) = 0u;
  *(a1 + 1760) = 9;
  *(a1 + 1776) = xmmword_1BCE3FD40;
  *(a1 + 1792) = xmmword_1BCE566A0;
  *(a1 + 1808) = xmmword_1BCE3C7A0;
  *(a1 + 1824) = 1;
  *(a1 + 1828) = xmmword_1BCE3C060;
  *(a1 + 1844) = 1040187392;
  *(a1 + 1848) = 0x4100000041700000;
  *(a1 + 1856) = 3;
  *(a1 + 1864) = 0x40000000;
  *(a1 + 1872) = 0x408000003F400000;
  *(a1 + 1880) = 1109393408;
  *(a1 + 1888) = xmmword_1BCE54380;
  *(a1 + 1904) = 0x3DCCCCCD00000000;
  *(a1 + 1912) = 1101004800;
  *(a1 + 1920) = 0;
  *(a1 + 1928) = 1106247680;
  *(a1 + 1936) = _Q0;
  *(a1 + 1952) = 1082130432;
  *(a1 + 1960) = 0x420C000041C80000;
  *(a1 + 1968) = xmmword_1BCE3E700;
  *(a1 + 1984) = 0x3F80000000000000;
  *(a1 + 1992) = 1061158912;
  *(a1 + 2000) = 0x3F4CCCCD3E4CCCCDLL;
  *(a1 + 2008) = 0x3F6666663F333333;
  *(a1 + 2016) = xmmword_1BCE3C7E0;
  *(a1 + 2096) = 0u;
  *(a1 + 2080) = 0u;
  *(a1 + 2064) = 0u;
  *(a1 + 2048) = 0u;
  *(a1 + 2032) = 0u;
  *(a1 + 2112) = 1056964608;
  *(a1 + 2120) = 0x3DA3D70A3D23D70ALL;
  *(a1 + 2128) = 0x3FC000003F800000;
  *(a1 + 2136) = 0x4060000040400000;
  *(a1 + 2144) = -1046478848;
  *(a1 + 2160) = xmmword_1BCE566B0;
  *(a1 + 2176) = xmmword_1BCE566C0;
  *(a1 + 2192) = 1065353216;
  *(a1 + 2200) = 10;
  *(a1 + 2208) = 0x40A000003FC00000;
  *(a1 + 2224) = xmmword_1BCE3C090;
  *(a1 + 2240) = xmmword_1BCE3C0A0;
  *(a1 + 2256) = _Q0;
  *(a1 + 2304) = 0;
  *(a1 + 2288) = 0u;
  *(a1 + 2272) = 0u;
  *(a1 + 2312) = v4;
  *(a1 + 2320) = v11;
}

double sub_1BCBBAA2C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07858);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1BCE3EBD0;
  *(v0 + 48) = xmmword_1BCE3F510;
  *(v0 + 64) = 0x420C000043FA0000;
  *(v0 + 80) = xmmword_1BCE48B60;
  *(v0 + 96) = xmmword_1BCE3E150;
  *(v0 + 112) = xmmword_1BCE44EB0;
  *(v0 + 128) = xmmword_1BCE44EC0;
  *(v0 + 4464) = xmmword_1BCE566D0;
  *(v0 + 4480) = xmmword_1BCE566E0;
  *(v0 + 4496) = xmmword_1BCE566F0;
  *(v0 + 4512) = xmmword_1BCE56700;
  *(v0 + 4912) = xmmword_1BCE3FD40;
  *(v0 + 6128) = xmmword_1BCE3FD40;
  *(v0 + 4944) = xmmword_1BCE48F00;
  *(v0 + 6160) = xmmword_1BCE48F00;
  *(v0 + 5008) = xmmword_1BCE3EEF0;
  *(v0 + 6224) = xmmword_1BCE3EEF0;
  *(v0 + 5024) = xmmword_1BCE3EF00;
  *(v0 + 6240) = xmmword_1BCE3EF00;
  *(v0 + 5184) = xmmword_1BCE40200;
  *(v0 + 6400) = xmmword_1BCE40200;
  *(v0 + 5232) = xmmword_1BCE48A00;
  *(v0 + 6448) = xmmword_1BCE48A00;
  *(v0 + 5264) = xmmword_1BCE3E9D0;
  *(v0 + 6480) = xmmword_1BCE3E9D0;
  *(v0 + 5360) = xmmword_1BCE48F10;
  *(v0 + 6576) = xmmword_1BCE48F10;
  *(v0 + 5376) = xmmword_1BCE48F20;
  *(v0 + 6592) = xmmword_1BCE48F20;
  *(v0 + 5392) = xmmword_1BCE48F30;
  *(v0 + 6608) = xmmword_1BCE48F30;
  *(v0 + 5408) = xmmword_1BCE48F40;
  *(v0 + 6624) = xmmword_1BCE48F40;
  *(v0 + 5424) = xmmword_1BCE48F50;
  *(v0 + 6640) = xmmword_1BCE48F50;
  *(v0 + 5440) = xmmword_1BCE48F60;
  *(v0 + 6656) = xmmword_1BCE48F60;
  *(v0 + 5456) = xmmword_1BCE48F70;
  *(v0 + 6672) = xmmword_1BCE48F70;
  *(v0 + 5472) = xmmword_1BCE48F80;
  *(v0 + 6688) = xmmword_1BCE48F80;
  *(v0 + 5680) = xmmword_1BCE48F90;
  *(v0 + 6896) = xmmword_1BCE48F90;
  *(v0 + 5696) = xmmword_1BCE48FA0;
  *(v0 + 6912) = xmmword_1BCE48FA0;
  *(v0 + 5712) = xmmword_1BCE48FB0;
  *(v0 + 6928) = xmmword_1BCE48FB0;
  *(v0 + 5728) = xmmword_1BCE48FC0;
  *(v0 + 6944) = xmmword_1BCE48FC0;
  *(v0 + 5872) = xmmword_1BCE56730;
  *(v0 + 7088) = xmmword_1BCE56730;
  *(v0 + 5888) = xmmword_1BCE56740;
  *(v0 + 7104) = xmmword_1BCE56740;
  *(v0 + 5904) = xmmword_1BCE56750;
  *(v0 + 7120) = xmmword_1BCE56750;
  *(v0 + 5920) = xmmword_1BCE56760;
  *(v0 + 7136) = xmmword_1BCE56760;
  *(v0 + 3696) = xmmword_1BCE3EE30;
  *(v0 + 7344) = xmmword_1BCE3EE30;
  *(v0 + 3712) = 1150681088;
  *(v0 + 4928) = 1150681088;
  *(v0 + 6144) = 1150681088;
  *(v0 + 7360) = 1150681088;
  *(v0 + 3728) = xmmword_1BCE48E20;
  *(v0 + 7376) = xmmword_1BCE48E20;
  *(v0 + 3792) = xmmword_1BCE3E270;
  *(v0 + 7440) = xmmword_1BCE3E270;
  *(v0 + 3920) = xmmword_1BCE48E30;
  *(v0 + 7568) = xmmword_1BCE48E30;
  *(v0 + 3968) = xmmword_1BCE48E40;
  *(v0 + 7616) = xmmword_1BCE48E40;
  *(v0 + 4016) = xmmword_1BCE48E50;
  *(v0 + 7664) = xmmword_1BCE48E50;
  *(v0 + 4032) = 1065353216;
  *(v0 + 5248) = 1065353216;
  *(v0 + 6464) = 1065353216;
  *(v0 + 7680) = 1065353216;
  *(v0 + 4048) = xmmword_1BCE3E2F0;
  *(v0 + 7696) = xmmword_1BCE3E2F0;
  *(v0 + 4144) = xmmword_1BCE48E60;
  *(v0 + 7792) = xmmword_1BCE48E60;
  *(v0 + 4160) = xmmword_1BCE48E70;
  *(v0 + 7808) = xmmword_1BCE48E70;
  *(v0 + 4176) = xmmword_1BCE48E80;
  *(v0 + 7824) = xmmword_1BCE48E80;
  *(v0 + 4192) = xmmword_1BCE48E90;
  *(v0 + 7840) = xmmword_1BCE48E90;
  *(v0 + 4208) = xmmword_1BCE48EA0;
  *(v0 + 7856) = xmmword_1BCE48EA0;
  *(v0 + 4224) = xmmword_1BCE48EB0;
  *(v0 + 7872) = xmmword_1BCE48EB0;
  *(v0 + 4240) = xmmword_1BCE48EC0;
  *(v0 + 7888) = xmmword_1BCE48EC0;
  *(v0 + 4256) = xmmword_1BCE48ED0;
  *(v0 + 7904) = xmmword_1BCE48ED0;
  *(v0 + 8160) = xmmword_1BCE45000;
  *(v0 + 4656) = xmmword_1BCE48EE0;
  *(v0 + 8304) = xmmword_1BCE48EE0;
  *(v0 + 4672) = xmmword_1BCE48EF0;
  *(v0 + 8320) = xmmword_1BCE48EF0;
  *(v0 + 4688) = xmmword_1BCE56710;
  *(v0 + 8336) = xmmword_1BCE56710;
  *(v0 + 4704) = xmmword_1BCE56720;
  *(v0 + 8352) = xmmword_1BCE56720;
  *(v0 + 2480) = xmmword_1BCE3F7B0;
  *(v0 + 8560) = xmmword_1BCE3F7B0;
  *(v0 + 2496) = 1143930880;
  *(v0 + 8576) = 1143930880;
  *(v0 + 2512) = xmmword_1BCE48D20;
  *(v0 + 8592) = xmmword_1BCE48D20;
  *(v0 + 2544) = xmmword_1BCE48D30;
  *(v0 + 3760) = xmmword_1BCE48D30;
  *(v0 + 4976) = xmmword_1BCE48D30;
  *(v0 + 6192) = xmmword_1BCE48D30;
  *(v0 + 7408) = xmmword_1BCE48D30;
  *(v0 + 8624) = xmmword_1BCE48D30;
  *(v0 + 2560) = xmmword_1BCE3F930;
  *(v0 + 3776) = xmmword_1BCE3F930;
  *(v0 + 4992) = xmmword_1BCE3F930;
  *(v0 + 6208) = xmmword_1BCE3F930;
  *(v0 + 7424) = xmmword_1BCE3F930;
  *(v0 + 8640) = xmmword_1BCE3F930;
  *(v0 + 2576) = xmmword_1BCE3E180;
  *(v0 + 8656) = xmmword_1BCE3E180;
  *(v0 + 2592) = xmmword_1BCE3CB90;
  *(v0 + 3808) = xmmword_1BCE3CB90;
  *(v0 + 7456) = xmmword_1BCE3CB90;
  *(v0 + 8672) = xmmword_1BCE3CB90;
  *(v0 + 2704) = xmmword_1BCE48D40;
  *(v0 + 8784) = xmmword_1BCE48D40;
  *(v0 + 2736) = xmmword_1BCE48D50;
  *(v0 + 8816) = xmmword_1BCE48D50;
  *(v0 + 2752) = xmmword_1BCE48D60;
  *(v0 + 8832) = xmmword_1BCE48D60;
  *(v0 + 2768) = xmmword_1BCE44F40;
  *(v0 + 8848) = xmmword_1BCE44F40;
  *(v0 + 2800) = xmmword_1BCE48D70;
  *(v0 + 8880) = xmmword_1BCE48D70;
  *(v0 + 2928) = xmmword_1BCE48D80;
  *(v0 + 2960) = xmmword_1BCE48D80;
  *(v0 + 9008) = xmmword_1BCE48D80;
  *(v0 + 9040) = xmmword_1BCE48D80;
  *(v0 + 2976) = xmmword_1BCE40020;
  *(v0 + 9056) = xmmword_1BCE40020;
  *(v0 + 2992) = xmmword_1BCE48D90;
  *(v0 + 9072) = xmmword_1BCE48D90;
  *(v0 + 3024) = xmmword_1BCE48DA0;
  *(v0 + 9104) = xmmword_1BCE48DA0;
  *(v0 + 3040) = xmmword_1BCE48DB0;
  *(v0 + 9120) = xmmword_1BCE48DB0;
  *(v0 + 3248) = xmmword_1BCE48DC0;
  *(v0 + 9328) = xmmword_1BCE48DC0;
  *(v0 + 3264) = xmmword_1BCE48DD0;
  *(v0 + 9344) = xmmword_1BCE48DD0;
  *(v0 + 3280) = xmmword_1BCE48DE0;
  *(v0 + 9360) = xmmword_1BCE48DE0;
  *(v0 + 3296) = xmmword_1BCE48DF0;
  *(v0 + 9376) = xmmword_1BCE48DF0;
  *(v0 + 3440) = xmmword_1BCE48E00;
  *(v0 + 9520) = xmmword_1BCE48E00;
  *(v0 + 3456) = xmmword_1BCE3ECB0;
  *(v0 + 9536) = xmmword_1BCE3ECB0;
  *(v0 + 3472) = xmmword_1BCE48E10;
  *(v0 + 9552) = xmmword_1BCE48E10;
  *(v0 + 2944) = xmmword_1BCE3DA70;
  *(v0 + 3488) = xmmword_1BCE3DA70;
  *(v0 + 5088) = xmmword_1BCE3DA70;
  *(v0 + 6304) = xmmword_1BCE3DA70;
  *(v0 + 9024) = xmmword_1BCE3DA70;
  *(v0 + 9568) = xmmword_1BCE3DA70;
  *(v0 + 1264) = xmmword_1BCE3F6C0;
  *(v0 + 9776) = xmmword_1BCE3F6C0;
  *(v0 + 1280) = 0x41200000442F0000;
  *(v0 + 9792) = 0x41200000442F0000;
  *(v0 + 1328) = xmmword_1BCE48C40;
  *(v0 + 9840) = xmmword_1BCE48C40;
  *(v0 + 1344) = xmmword_1BCE48C50;
  *(v0 + 9856) = xmmword_1BCE48C50;
  *(v0 + 1360) = xmmword_1BCE432E0;
  *(v0 + 9872) = xmmword_1BCE432E0;
  *(v0 + 1376) = xmmword_1BCE432F0;
  *(v0 + 9888) = xmmword_1BCE432F0;
  *(v0 + 1488) = xmmword_1BCE48C60;
  *(v0 + 10000) = xmmword_1BCE48C60;
  *(v0 + 1520) = xmmword_1BCE48C70;
  *(v0 + 10032) = xmmword_1BCE48C70;
  *(v0 + 1536) = xmmword_1BCE3ED10;
  *(v0 + 10048) = xmmword_1BCE3ED10;
  *(v0 + 1552) = xmmword_1BCE48C80;
  *(v0 + 10064) = xmmword_1BCE48C80;
  *(v0 + 1568) = xmmword_1BCE48C90;
  *(v0 + 10080) = xmmword_1BCE48C90;
  *(v0 + 1584) = xmmword_1BCE3CA10;
  *(v0 + 10096) = xmmword_1BCE3CA10;
  *(v0 + 1712) = xmmword_1BCE48CA0;
  *(v0 + 10224) = xmmword_1BCE48CA0;
  *(v0 + 1728) = xmmword_1BCE48CB0;
  *(v0 + 10240) = xmmword_1BCE48CB0;
  *(v0 + 1744) = xmmword_1BCE48CC0;
  *(v0 + 10256) = xmmword_1BCE48CC0;
  *(v0 + 1760) = xmmword_1BCE48CD0;
  *(v0 + 10272) = xmmword_1BCE48CD0;
  *(v0 + 1792) = xmmword_1BCE48CE0;
  *(v0 + 10304) = xmmword_1BCE48CE0;
  *(v0 + 1824) = xmmword_1BCE41640;
  *(v0 + 10336) = xmmword_1BCE41640;
  v1 = vdupq_n_s64(0x3FE8B01180000000uLL);
  *(v0 + 2064) = v1;
  *(v0 + 10576) = v1;
  *(v0 + 2080) = xmmword_1BCE48CF0;
  *(v0 + 10592) = xmmword_1BCE48CF0;
  *(v0 + 2224) = xmmword_1BCE48D00;
  *(v0 + 10736) = xmmword_1BCE48D00;
  *(v0 + 2256) = xmmword_1BCE48D10;
  *(v0 + 10768) = xmmword_1BCE48D10;
  *(v0 + 144) = xmmword_1BCE43250;
  *(v0 + 160) = xmmword_1BCE43260;
  *(v0 + 10992) = xmmword_1BCE3F510;
  __asm { FMOV            V4.2D, #1.0 }

  *(v0 + 11008) = 0x420C000043FA0000;
  __asm { FMOV            V6.2D, #0.5 }

  *(v0 + 1296) = xmmword_1BCE48B60;
  *(v0 + 9808) = xmmword_1BCE48B60;
  *(v0 + 11024) = xmmword_1BCE48B60;
  *(v0 + 208) = _Q6;
  *(v0 + 224) = xmmword_1BCE3D910;
  *(v0 + 1312) = xmmword_1BCE3E150;
  *(v0 + 2528) = xmmword_1BCE3E150;
  *(v0 + 3744) = xmmword_1BCE3E150;
  *(v0 + 4960) = xmmword_1BCE3E150;
  *(v0 + 6176) = xmmword_1BCE3E150;
  *(v0 + 7392) = xmmword_1BCE3E150;
  *(v0 + 8608) = xmmword_1BCE3E150;
  *(v0 + 9824) = xmmword_1BCE3E150;
  *(v0 + 11040) = xmmword_1BCE3E150;
  *(v0 + 11056) = xmmword_1BCE44EB0;
  *(v0 + 240) = xmmword_1BCE43270;
  *(v0 + 256) = xmmword_1BCE43280;
  *(v0 + 11072) = xmmword_1BCE44EC0;
  *(v0 + 11088) = xmmword_1BCE43250;
  *(v0 + 272) = xmmword_1BCE48B70;
  *(v0 + 288) = xmmword_1BCE3FC70;
  *(v0 + 11104) = xmmword_1BCE43260;
  *(v0 + 1424) = _Q6;
  *(v0 + 2640) = _Q6;
  *(v0 + 8720) = _Q6;
  *(v0 + 9936) = _Q6;
  *(v0 + 11152) = _Q6;
  *(v0 + 11168) = xmmword_1BCE3D910;
  result = 1.0;
  *(v0 + 8368) = _Q4;
  *(v0 + 1456) = xmmword_1BCE43270;
  *(v0 + 9968) = xmmword_1BCE43270;
  *(v0 + 11184) = xmmword_1BCE43270;
  *(v0 + 1472) = xmmword_1BCE43280;
  *(v0 + 8288) = xmmword_1BCE3DAE0;
  *(v0 + 8208) = _Q4;
  *(v0 + 8224) = _Q4;
  *(v0 + 8240) = _Q4;
  *(v0 + 8256) = xmmword_1BCE3C8C0;
  *(v0 + 8272) = _Q4;
  *(v0 + 9984) = xmmword_1BCE43280;
  *(v0 + 11200) = xmmword_1BCE43280;
  *(v0 + 8176) = _Q4;
  *(v0 + 0x2000) = _Q4;
  *(v0 + 11216) = xmmword_1BCE48B70;
  *(v0 + 8000) = xmmword_1BCE3A880;
  *(v0 + 8096) = xmmword_1BCE3DD90;
  *(v0 + 8112) = _Q4;
  *(v0 + 8128) = xmmword_1BCE3A880;
  *(v0 + 8144) = _Q4;
  *(v0 + 8016) = _Q4;
  *(v0 + 8032) = xmmword_1BCE3C8C0;
  *(v0 + 8048) = _Q4;
  *(v0 + 8064) = _Q4;
  *(v0 + 8080) = _Q4;
  *(v0 + 304) = xmmword_1BCE48B80;
  *(v0 + 320) = xmmword_1BCE3E220;
  *(v0 + 7936) = xmmword_1BCE3A880;
  *(v0 + 7952) = _Q4;
  *(v0 + 7968) = _Q4;
  *(v0 + 7984) = _Q4;
  *(v0 + 11232) = xmmword_1BCE3FC70;
  *(v0 + 11248) = xmmword_1BCE48B80;
  *(v0 + 7920) = _Q4;
  *(v0 + 336) = xmmword_1BCE3FC90;
  *(v0 + 352) = xmmword_1BCE3CEE0;
  *(v0 + 11264) = xmmword_1BCE3E220;
  v9 = vdupq_n_s32(0x3F4CCCCDu);
  *(v0 + 368) = v9;
  *(v0 + 7760) = _Q4;
  *(v0 + 7776) = xmmword_1BCE3DAE0;
  *(v0 + 11280) = xmmword_1BCE3FC90;
  *(v0 + 2784) = xmmword_1BCE3CEE0;
  *(v0 + 7712) = 0x3FF0000000000000;
  *(v0 + 7720) = 0;
  *(v0 + 7744) = 0u;
  *(v0 + 7728) = 0u;
  *(v0 + 5216) = xmmword_1BCE3CEE0;
  *(v0 + 6432) = xmmword_1BCE3CEE0;
  *(v0 + 7632) = _Q4;
  *(v0 + 7648) = xmmword_1BCE3DD90;
  *(v0 + 7688) = 0x3FEF0AE2E0000000;
  *(v0 + 8864) = xmmword_1BCE3CEE0;
  *(v0 + 11296) = xmmword_1BCE3CEE0;
  *(v0 + 7552) = _Q4;
  *(v0 + 7584) = _Q4;
  *(v0 + 7600) = _Q4;
  *(v0 + 384) = 0x3F8000003F4CCCCDLL;
  *(v0 + 7472) = _Q4;
  *(v0 + 7488) = _Q4;
  *(v0 + 7504) = _Q4;
  *(v0 + 7520) = xmmword_1BCE3DAE0;
  *(v0 + 7536) = _Q4;
  *(v0 + 432) = 0u;
  *(v0 + 448) = 0u;
  *(v0 + 2816) = v9.i64[0];
  *(v0 + 8896) = v9.i64[0];
  *(v0 + 11312) = v9;
  *(v0 + 1600) = 0x3F8000003F4CCCCDLL;
  *(v0 + 7368) = 1065353216;
  *(v0 + 7232) = _Q4;
  *(v0 + 7337) = *v16;
  *(v0 + 7296) = _Q4;
  *(v0 + 7312) = 0x3FF0000000000000;
  *(v0 + 7328) = 0x4032000000000001;
  *(v0 + 7336) = 1;
  *(v0 + 7340) = *&v16[3];
  *(v0 + 7248) = 0x4170000042480000;
  *(v0 + 7256) = 0x3FF0000000000000;
  *(v0 + 7264) = _Q4;
  *(v0 + 7280) = _Q4;
  *(v0 + 10112) = 0x3F8000003F4CCCCDLL;
  *(v0 + 11328) = 0x3F8000003F4CCCCDLL;
  *(v0 + 7152) = _Q4;
  *(v0 + 7168) = xmmword_1BCE3C8C0;
  *(v0 + 7184) = _Q4;
  *(v0 + 7200) = xmmword_1BCE3DAE0;
  *(v0 + 7216) = _Q4;
  *(v0 + 1664) = 0u;
  *(v0 + 1648) = 0u;
  *(v0 + 7040) = xmmword_1BCE3C8C0;
  *(v0 + 7056) = _Q4;
  *(v0 + 7072) = xmmword_1BCE3DAE0;
  *(v0 + 2880) = 0u;
  *(v0 + 6960) = _Q4;
  *(v0 + 6976) = _Q4;
  *(v0 + 6992) = _Q4;
  *(v0 + 7008) = _Q4;
  *(v0 + 7024) = _Q4;
  *(v0 + 2864) = 0u;
  *(v0 + 4096) = 0u;
  *(v0 + 4080) = 0u;
  *(v0 + 6848) = _Q4;
  *(v0 + 6864) = _Q4;
  *(v0 + 6880) = xmmword_1BCE3DD90;
  *(v0 + 6752) = _Q4;
  *(v0 + 6768) = _Q4;
  *(v0 + 6784) = xmmword_1BCE3A880;
  *(v0 + 6800) = _Q4;
  *(v0 + 6816) = xmmword_1BCE3C8C0;
  *(v0 + 6832) = _Q4;
  *(v0 + 5312) = 0u;
  *(v0 + 5296) = 0u;
  *(v0 + 6528) = 0u;
  *(v0 + 6704) = _Q4;
  *(v0 + 6720) = xmmword_1BCE3A880;
  *(v0 + 6736) = _Q4;
  *(v0 + 6512) = 0u;
  *(v0 + 8960) = 0u;
  *(v0 + 8944) = 0u;
  *(v0 + 10176) = 0u;
  *(v0 + 10160) = 0u;
  *(v0 + 11392) = 0u;
  *(v0 + 11376) = 0u;
  *(v0 + 496) = xmmword_1BCE48B90;
  *(v0 + 512) = xmmword_1BCE3DCB0;
  *(v0 + 6544) = _Q4;
  *(v0 + 6560) = xmmword_1BCE3DAE0;
  *(v0 + 11440) = xmmword_1BCE48B90;
  *(v0 + 6472) = 0x3FF0000000000000;
  *(v0 + 6496) = 0x3FF0000000000000;
  *(v0 + 6504) = 0;
  *(v0 + 1440) = xmmword_1BCE3DCB0;
  *(v0 + 2656) = xmmword_1BCE3DCB0;
  *(v0 + 6368) = _Q4;
  *(v0 + 6384) = _Q4;
  *(v0 + 6416) = _Q4;
  *(v0 + 6320) = _Q4;
  *(v0 + 6336) = _Q4;
  *(v0 + 6352) = _Q4;
  *(v0 + 8736) = xmmword_1BCE3DCB0;
  *(v0 + 9952) = xmmword_1BCE3DCB0;
  *(v0 + 11456) = xmmword_1BCE3DCB0;
  *(v0 + 560) = xmmword_1BCE48BC0;
  *(v0 + 576) = xmmword_1BCE48BD0;
  *(v0 + 6256) = _Q4;
  *(v0 + 6272) = _Q4;
  *(v0 + 6288) = _Q4;
  *(v0 + 1776) = xmmword_1BCE48BC0;
  *(v0 + 10288) = xmmword_1BCE48BC0;
  *(v0 + 11504) = xmmword_1BCE48BC0;
  *(v0 + 11520) = xmmword_1BCE48BD0;
  *(v0 + 1808) = xmmword_1BCE48BE0;
  *(v0 + 6120) = 1;
  *(v0 + 6121) = *v15;
  *(v0 + 6124) = *&v15[3];
  *(v0 + 6152) = 1065353216;
  *(v0 + 6040) = 0x3FF0000000000000;
  *(v0 + 6048) = _Q4;
  *(v0 + 6064) = _Q4;
  *(v0 + 6080) = _Q4;
  *(v0 + 6096) = 0x3FF0000000000000;
  *(v0 + 6112) = 0x403DFFFFFFFFFFFELL;
  *(v0 + 5968) = _Q4;
  *(v0 + 5984) = xmmword_1BCE3DAE0;
  *(v0 + 6000) = _Q4;
  *(v0 + 6016) = _Q4;
  *(v0 + 6032) = 0x4170000042480000;
  *(v0 + 10320) = xmmword_1BCE48BE0;
  *(v0 + 11536) = xmmword_1BCE48BE0;
  *(v0 + 592) = xmmword_1BCE48BE0;
  *(v0 + 608) = xmmword_1BCE48BF0;
  *(v0 + 11552) = xmmword_1BCE48BF0;
  *(v0 + 5936) = _Q4;
  *(v0 + 5952) = xmmword_1BCE3C8C0;
  *(v0 + 5776) = _Q4;
  *(v0 + 5792) = _Q4;
  *(v0 + 5808) = _Q4;
  *(v0 + 5824) = xmmword_1BCE3C8C0;
  *(v0 + 5840) = _Q4;
  *(v0 + 5856) = xmmword_1BCE3DAE0;
  *(v0 + 640) = xmmword_1BCE3A880;
  *(v0 + 704) = xmmword_1BCE3A880;
  *(v0 + 800) = xmmword_1BCE3DD90;
  *(v0 + 5744) = _Q4;
  *(v0 + 5760) = _Q4;
  *(v0 + 5584) = _Q4;
  *(v0 + 5600) = xmmword_1BCE3C8C0;
  *(v0 + 5616) = _Q4;
  *(v0 + 5632) = _Q4;
  *(v0 + 5648) = _Q4;
  *(v0 + 5664) = xmmword_1BCE3DD90;
  *(v0 + 5488) = _Q4;
  *(v0 + 5504) = xmmword_1BCE3A880;
  *(v0 + 5520) = _Q4;
  *(v0 + 5536) = _Q4;
  *(v0 + 5552) = _Q4;
  *(v0 + 5568) = xmmword_1BCE3A880;
  *(v0 + 2016) = xmmword_1BCE3DD90;
  *(v0 + 3232) = xmmword_1BCE3DD90;
  *(v0 + 4000) = xmmword_1BCE3DD90;
  *(v0 + 4448) = xmmword_1BCE3DD90;
  *(v0 + 9312) = xmmword_1BCE3DD90;
  *(v0 + 10528) = xmmword_1BCE3DD90;
  *(v0 + 11744) = xmmword_1BCE3DD90;
  v10 = vdupq_n_s64(0x3FE872D0A0000000uLL);
  *(v0 + 5328) = _Q4;
  *(v0 + 5344) = xmmword_1BCE3DAE0;
  *(v0 + 832) = xmmword_1BCE3A880;
  *(v0 + 1856) = xmmword_1BCE3A880;
  *(v0 + 5256) = 0x3FF0000000000000;
  *(v0 + 5280) = 0x3FF0000000000000;
  *(v0 + 5288) = 0;
  *(v0 + 1920) = xmmword_1BCE3A880;
  *(v0 + 2048) = xmmword_1BCE3A880;
  *(v0 + 3072) = xmmword_1BCE3A880;
  *(v0 + 3136) = xmmword_1BCE3A880;
  *(v0 + 5168) = _Q4;
  *(v0 + 5200) = _Q4;
  *(v0 + 4288) = xmmword_1BCE3A880;
  *(v0 + 4352) = xmmword_1BCE3A880;
  *(v0 + 5120) = _Q4;
  *(v0 + 5136) = _Q4;
  *(v0 + 5152) = _Q4;
  *(v0 + 4905) = *v14;
  *(v0 + 5056) = _Q4;
  *(v0 + 5072) = _Q4;
  *(v0 + 5104) = _Q4;
  *(v0 + 4908) = *&v14[3];
  *(v0 + 4936) = 1065353216;
  *(v0 + 5040) = _Q4;
  *(v0 + 9152) = xmmword_1BCE3A880;
  *(v0 + 9216) = xmmword_1BCE3A880;
  *(v0 + 10368) = xmmword_1BCE3A880;
  *(v0 + 10432) = xmmword_1BCE3A880;
  *(v0 + 10560) = xmmword_1BCE3A880;
  *(v0 + 11584) = xmmword_1BCE3A880;
  *(v0 + 11648) = xmmword_1BCE3A880;
  *(v0 + 11776) = xmmword_1BCE3A880;
  *(v0 + 4784) = _Q4;
  *(v0 + 4864) = _Q4;
  *(v0 + 4880) = 0x3FF0000000000000;
  *(v0 + 4896) = 0x403DFFFFFFFFFFFELL;
  *(v0 + 4904) = 0;
  *(v0 + 4800) = _Q4;
  *(v0 + 4816) = 0x4170000042480000;
  *(v0 + 4824) = 0x3FF0000000000000;
  *(v0 + 4832) = _Q4;
  *(v0 + 4848) = _Q4;
  *(v0 + 848) = v10;
  *(v0 + 864) = xmmword_1BCE48C00;
  *(v0 + 4720) = _Q4;
  *(v0 + 4736) = xmmword_1BCE3C8C0;
  *(v0 + 4752) = _Q4;
  *(v0 + 4768) = xmmword_1BCE3DAE0;
  *(v0 + 11792) = v10;
  *(v0 + 11808) = xmmword_1BCE48C00;
  *(v0 + 4576) = _Q4;
  *(v0 + 4592) = _Q4;
  *(v0 + 4608) = xmmword_1BCE3C8C0;
  *(v0 + 4624) = _Q4;
  *(v0 + 4640) = xmmword_1BCE3DAE0;
  *(v0 + 11952) = xmmword_1BCE48C10;
  *(v0 + 1008) = xmmword_1BCE48C10;
  *(v0 + 1024) = xmmword_1BCE48C20;
  *(v0 + 4528) = _Q4;
  *(v0 + 4544) = _Q4;
  *(v0 + 4560) = _Q4;
  *(v0 + 2240) = xmmword_1BCE48C20;
  *(v0 + 4384) = xmmword_1BCE3C8C0;
  *(v0 + 4400) = _Q4;
  *(v0 + 4416) = _Q4;
  *(v0 + 4432) = _Q4;
  *(v0 + 3008) = xmmword_1BCE48C20;
  *(v0 + 4320) = _Q4;
  *(v0 + 4336) = _Q4;
  *(v0 + 4368) = _Q4;
  *(v0 + 9088) = xmmword_1BCE48C20;
  *(v0 + 10752) = xmmword_1BCE48C20;
  *(v0 + 11968) = xmmword_1BCE48C20;
  *(v0 + 1040) = xmmword_1BCE48C30;
  *(v0 + 4272) = _Q4;
  *(v0 + 4304) = _Q4;
  *(v0 + 11984) = xmmword_1BCE48C30;
  *(v0 + 11472) = xmmword_1BCE48BA0;
  *(v0 + 528) = xmmword_1BCE48BA0;
  *(v0 + 544) = xmmword_1BCE48BB0;
  *(v0 + 1056) = xmmword_1BCE48BB0;
  *(v0 + 2272) = xmmword_1BCE48BB0;
  *(v0 + 10784) = xmmword_1BCE48BB0;
  *(v0 + 11488) = xmmword_1BCE48BB0;
  *(v0 + 12000) = xmmword_1BCE48BB0;
  *(v0 + 736) = xmmword_1BCE3C8C0;
  *(v0 + 4112) = _Q4;
  *(v0 + 4128) = xmmword_1BCE3DAE0;
  *(v0 + 960) = xmmword_1BCE3C8C0;
  *(v0 + 1088) = xmmword_1BCE3C8C0;
  *(v0 + 1952) = xmmword_1BCE3C8C0;
  *(v0 + 4040) = 0x3FEF0AE2E0000000;
  *(v0 + 4064) = 0x3FF0000000000000;
  *(v0 + 4072) = 0;
  *(v0 + 2176) = xmmword_1BCE3C8C0;
  *(v0 + 2304) = xmmword_1BCE3C8C0;
  *(v0 + 3168) = xmmword_1BCE3C8C0;
  *(v0 + 3936) = _Q4;
  *(v0 + 3952) = _Q4;
  *(v0 + 3984) = _Q4;
  *(v0 + 3824) = _Q4;
  *(v0 + 3840) = _Q4;
  *(v0 + 3856) = _Q4;
  *(v0 + 3872) = xmmword_1BCE3DAE0;
  *(v0 + 3888) = _Q4;
  *(v0 + 3904) = _Q4;
  *(v0 + 3392) = xmmword_1BCE3C8C0;
  *(v0 + 3504) = _Q4;
  *(v0 + 3520) = xmmword_1BCE3C8C0;
  *(v0 + 3536) = _Q4;
  *(v0 + 3552) = xmmword_1BCE3DAE0;
  *(v0 + 3568) = _Q4;
  *(v0 + 3584) = _Q4;
  *(v0 + 3600) = 0x4170000042480000;
  *(v0 + 3689) = *v13;
  *(v0 + 3720) = 1065353216;
  *(v0 + 3648) = _Q4;
  *(v0 + 3664) = 0x3FF0000000000000;
  *(v0 + 3680) = 0x4032000000000001;
  *(v0 + 3688) = 0;
  *(v0 + 3692) = *&v13[3];
  *(v0 + 3608) = 0x3FF0000000000000;
  *(v0 + 3616) = _Q4;
  *(v0 + 3632) = _Q4;
  *(v0 + 8384) = xmmword_1BCE3C8C0;
  *(v0 + 9248) = xmmword_1BCE3C8C0;
  *(v0 + 9472) = xmmword_1BCE3C8C0;
  *(v0 + 9600) = xmmword_1BCE3C8C0;
  *(v0 + 10464) = xmmword_1BCE3C8C0;
  *(v0 + 10688) = xmmword_1BCE3C8C0;
  *(v0 + 10816) = xmmword_1BCE3C8C0;
  *(v0 + 11680) = xmmword_1BCE3C8C0;
  *(v0 + 11904) = xmmword_1BCE3C8C0;
  *(v0 + 12032) = xmmword_1BCE3C8C0;
  *(v0 + 480) = xmmword_1BCE3DAE0;
  *(v0 + 992) = xmmword_1BCE3DAE0;
  *(v0 + 3376) = _Q4;
  *(v0 + 3408) = _Q4;
  *(v0 + 3424) = xmmword_1BCE3DAE0;
  *(v0 + 1120) = xmmword_1BCE3DAE0;
  *(v0 + 1696) = xmmword_1BCE3DAE0;
  *(v0 + 3312) = _Q4;
  *(v0 + 3328) = _Q4;
  *(v0 + 3344) = _Q4;
  *(v0 + 3360) = _Q4;
  *(v0 + 2208) = xmmword_1BCE3DAE0;
  *(v0 + 2336) = xmmword_1BCE3DAE0;
  *(v0 + 2912) = xmmword_1BCE3DAE0;
  *(v0 + 3184) = _Q4;
  *(v0 + 3200) = _Q4;
  *(v0 + 3216) = _Q4;
  *(v0 + 3056) = _Q4;
  *(v0 + 3088) = _Q4;
  *(v0 + 3104) = _Q4;
  *(v0 + 3120) = _Q4;
  *(v0 + 3152) = _Q4;
  *(v0 + 8416) = xmmword_1BCE3DAE0;
  *(v0 + 8992) = xmmword_1BCE3DAE0;
  *(v0 + 9504) = xmmword_1BCE3DAE0;
  *(v0 + 9632) = xmmword_1BCE3DAE0;
  *(v0 + 10208) = xmmword_1BCE3DAE0;
  *(v0 + 10720) = xmmword_1BCE3DAE0;
  *(v0 + 10848) = xmmword_1BCE3DAE0;
  *(v0 + 11424) = xmmword_1BCE3DAE0;
  *(v0 + 11936) = xmmword_1BCE3DAE0;
  *(v0 + 12064) = xmmword_1BCE3DAE0;
  *(v0 + 1168) = 0x4170000042480000;
  *(v0 + 2384) = 0x4170000042480000;
  *(v0 + 2896) = _Q4;
  *(v0 + 2824) = 0x3FF0000000000000;
  *(v0 + 2832) = _Q4;
  *(v0 + 2848) = 0x3FF0000000000000;
  *(v0 + 2856) = 0;
  *(v0 + 8464) = 0x4170000042480000;
  *(v0 + 9680) = 0x4170000042480000;
  *(v0 + 10896) = 0x4170000042480000;
  *(v0 + 12112) = 0x4170000042480000;
  *(v0 + 464) = _Q4;
  *(v0 + 624) = _Q4;
  *(v0 + 672) = _Q4;
  *(v0 + 688) = _Q4;
  *(v0 + 720) = _Q4;
  *(v0 + 784) = _Q4;
  *(v0 + 816) = _Q4;
  *(v0 + 944) = _Q4;
  *(v0 + 2672) = _Q4;
  *(v0 + 2688) = _Q4;
  *(v0 + 2720) = _Q4;
  *(v0 + 976) = _Q4;
  *(v0 + 176) = _Q4;
  *(v0 + 192) = _Q4;
  *(v0 + 2608) = _Q4;
  *(v0 + 2624) = _Q4;
  *(v0 + 400) = _Q4;
  *(v0 + 424) = 0;
  *(v0 + 656) = _Q4;
  *(v0 + 2400) = _Q4;
  *(v0 + 2473) = *v12;
  *(v0 + 2476) = *&v12[3];
  *(v0 + 2504) = 1053609165;
  *(v0 + 2416) = _Q4;
  *(v0 + 2432) = _Q4;
  *(v0 + 2448) = 0x3FF0000000000000;
  *(v0 + 2464) = 0xC018000000000000;
  *(v0 + 2472) = 0;
  *(v0 + 752) = _Q4;
  *(v0 + 768) = _Q4;
  *(v0 + 2320) = _Q4;
  *(v0 + 2352) = _Q4;
  *(v0 + 2368) = _Q4;
  *(v0 + 2392) = 0x3FF0000000000000;
  *(v0 + 880) = _Q4;
  *(v0 + 896) = _Q4;
  *(v0 + 912) = _Q4;
  *(v0 + 928) = _Q4;
  *(v0 + 1072) = _Q4;
  *(v0 + 2288) = _Q4;
  *(v0 + 1104) = _Q4;
  *(v0 + 1136) = _Q4;
  *(v0 + 2128) = _Q4;
  *(v0 + 2144) = _Q4;
  *(v0 + 2160) = _Q4;
  *(v0 + 2192) = _Q4;
  *(v0 + 1152) = _Q4;
  *(v0 + 1176) = 0x3FF0000000000000;
  *(v0 + 1184) = _Q4;
  *(v0 + 2032) = _Q4;
  *(v0 + 2096) = _Q4;
  *(v0 + 2112) = _Q4;
  *(v0 + 1200) = _Q4;
  *(v0 + 1216) = _Q4;
  *(v0 + 1232) = 0x3FF0000000000000;
  *(v0 + 1968) = _Q4;
  *(v0 + 1984) = _Q4;
  *(v0 + 2000) = _Q4;
  *(v0 + 1248) = 0xC031FFFFFFFFFFFFLL;
  *(v0 + 1256) = 0;
  *(v0 + 1888) = _Q4;
  *(v0 + 1904) = _Q4;
  *(v0 + 1936) = _Q4;
  *(v0 + 1257) = *v11;
  *(v0 + 1840) = _Q4;
  *(v0 + 1872) = _Q4;
  *(v0 + 1260) = *&v11[3];
  *(v0 + 1288) = 1036831949;
  *(v0 + 1392) = _Q4;
  *(v0 + 1408) = _Q4;
  *(v0 + 1504) = _Q4;
  *(v0 + 1608) = 0x3FF0000000000000;
  *(v0 + 1616) = _Q4;
  *(v0 + 1632) = 0x3FF0000000000000;
  *(v0 + 1640) = 0;
  *(v0 + 1680) = _Q4;
  *(v0 + 8400) = _Q4;
  *(v0 + 8432) = _Q4;
  *(v0 + 8448) = _Q4;
  *(v0 + 8480) = _Q4;
  *(v0 + 8496) = _Q4;
  *(v0 + 8512) = _Q4;
  *(v0 + 8688) = _Q4;
  *(v0 + 8704) = _Q4;
  *(v0 + 8752) = _Q4;
  *(v0 + 8768) = _Q4;
  *(v0 + 8800) = _Q4;
  *(v0 + 8912) = _Q4;
  *(v0 + 8976) = _Q4;
  *(v0 + 9136) = _Q4;
  *(v0 + 9168) = _Q4;
  *(v0 + 9184) = _Q4;
  *(v0 + 9200) = _Q4;
  *(v0 + 9232) = _Q4;
  *(v0 + 9264) = _Q4;
  *(v0 + 9280) = _Q4;
  *(v0 + 9296) = _Q4;
  *(v0 + 9392) = _Q4;
  *(v0 + 9408) = _Q4;
  *(v0 + 9424) = _Q4;
  *(v0 + 9440) = _Q4;
  *(v0 + 9456) = _Q4;
  *(v0 + 9488) = _Q4;
  *(v0 + 9584) = _Q4;
  *(v0 + 9616) = _Q4;
  *(v0 + 9648) = _Q4;
  *(v0 + 9664) = _Q4;
  *(v0 + 9696) = _Q4;
  *(v0 + 9712) = _Q4;
  *(v0 + 9728) = _Q4;
  *(v0 + 9904) = _Q4;
  *(v0 + 9920) = _Q4;
  *(v0 + 10016) = _Q4;
  *(v0 + 10128) = _Q4;
  *(v0 + 10192) = _Q4;
  *(v0 + 10352) = _Q4;
  *(v0 + 10384) = _Q4;
  *(v0 + 10400) = _Q4;
  *(v0 + 10416) = _Q4;
  *(v0 + 10448) = _Q4;
  *(v0 + 10480) = _Q4;
  *(v0 + 10496) = _Q4;
  *(v0 + 10512) = _Q4;
  *(v0 + 10544) = _Q4;
  *(v0 + 10608) = _Q4;
  *(v0 + 10624) = _Q4;
  *(v0 + 10640) = _Q4;
  *(v0 + 10656) = _Q4;
  *(v0 + 10672) = _Q4;
  *(v0 + 10704) = _Q4;
  *(v0 + 10800) = _Q4;
  *(v0 + 10832) = _Q4;
  *(v0 + 10864) = _Q4;
  *(v0 + 10880) = _Q4;
  *(v0 + 10912) = _Q4;
  *(v0 + 10928) = _Q4;
  *(v0 + 10944) = _Q4;
  *(v0 + 11120) = _Q4;
  *(v0 + 11136) = _Q4;
  *(v0 + 11344) = _Q4;
  *(v0 + 11408) = _Q4;
  *(v0 + 11568) = _Q4;
  *(v0 + 11600) = _Q4;
  *(v0 + 11616) = _Q4;
  *(v0 + 11632) = _Q4;
  *(v0 + 11664) = _Q4;
  *(v0 + 11696) = _Q4;
  *(v0 + 11712) = _Q4;
  *(v0 + 11728) = _Q4;
  *(v0 + 11760) = _Q4;
  *(v0 + 11824) = _Q4;
  *(v0 + 11840) = _Q4;
  *(v0 + 11856) = _Q4;
  *(v0 + 11872) = _Q4;
  *(v0 + 11888) = _Q4;
  *(v0 + 11920) = _Q4;
  *(v0 + 12016) = _Q4;
  *(v0 + 12048) = _Q4;
  *(v0 + 12080) = _Q4;
  *(v0 + 12096) = _Q4;
  *(v0 + 12128) = _Q4;
  *(v0 + 12144) = _Q4;
  *(v0 + 12160) = _Q4;
  *(v0 + 392) = 0x3FF0000000000000;
  *(v0 + 416) = 0x3FF0000000000000;
  *(v0 + 32) = 0xC056800000000000;
  *(v0 + 40) = 0;
  *(v0 + 72) = 1036831949;
  *(v0 + 8472) = 0x3FF0000000000000;
  *(v0 + 8528) = 0x3FF0000000000000;
  *(v0 + 8544) = 0xC018000000000000;
  *(v0 + 8552) = 1;
  *(v0 + 8553) = *v17;
  *(v0 + 8556) = *&v17[3];
  *(v0 + 8584) = 1053609165;
  *(v0 + 8904) = 0x3FF0000000000000;
  *(v0 + 8928) = 0x3FF0000000000000;
  *(v0 + 8936) = 0;
  *(v0 + 9688) = 0x3FF0000000000000;
  *(v0 + 9744) = 0x3FF0000000000000;
  *(v0 + 9760) = 0xC031FFFFFFFFFFFFLL;
  *(v0 + 9769) = *v18;
  *(v0 + 9768) = 1;
  *(v0 + 9772) = *&v18[3];
  *(v0 + 9800) = 1036831949;
  *(v0 + 10120) = 0x3FF0000000000000;
  *(v0 + 10144) = 0x3FF0000000000000;
  *(v0 + 10152) = 0;
  *(v0 + 10904) = 0x3FF0000000000000;
  *(v0 + 10960) = 0x3FF0000000000000;
  *(v0 + 10976) = 0xC056800000000000;
  *(v0 + 10984) = 1;
  *(v0 + 10985) = *v19;
  *(v0 + 10988) = *&v19[3];
  *(v0 + 11016) = 1036831949;
  *(v0 + 11336) = 0x3FF0000000000000;
  *(v0 + 11360) = 0x3FF0000000000000;
  *(v0 + 11368) = 0;
  *(v0 + 12120) = 0x3FF0000000000000;
  *(v0 + 12176) = 0x3FF0000000000000;
  return result;
}

double sub_1BCBBBC20()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07858);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1BCE3EBD0;
  *(v0 + 48) = xmmword_1BCE3F510;
  *(v0 + 64) = 0x420C000043FA0000;
  *(v0 + 80) = xmmword_1BCE48B60;
  *(v0 + 96) = xmmword_1BCE3E150;
  *(v0 + 112) = xmmword_1BCE44EB0;
  *(v0 + 128) = xmmword_1BCE44EC0;
  *(v0 + 144) = xmmword_1BCE43250;
  *(v0 + 160) = xmmword_1BCE43260;
  *(v0 + 4912) = xmmword_1BCE3FD40;
  *(v0 + 6128) = xmmword_1BCE3FD40;
  *(v0 + 4944) = xmmword_1BCE48F00;
  *(v0 + 6160) = xmmword_1BCE48F00;
  *(v0 + 5008) = xmmword_1BCE3EEF0;
  *(v0 + 6224) = xmmword_1BCE3EEF0;
  *(v0 + 5024) = xmmword_1BCE3EF00;
  *(v0 + 6240) = xmmword_1BCE3EF00;
  *(v0 + 5184) = xmmword_1BCE40200;
  *(v0 + 6400) = xmmword_1BCE40200;
  *(v0 + 5232) = xmmword_1BCE48A00;
  *(v0 + 6448) = xmmword_1BCE48A00;
  *(v0 + 5264) = xmmword_1BCE3E9D0;
  *(v0 + 6480) = xmmword_1BCE3E9D0;
  *(v0 + 5376) = xmmword_1BCE490C0;
  *(v0 + 6592) = xmmword_1BCE490C0;
  *(v0 + 5392) = xmmword_1BCE490D0;
  *(v0 + 6608) = xmmword_1BCE490D0;
  *(v0 + 5424) = xmmword_1BCE490E0;
  *(v0 + 6640) = xmmword_1BCE490E0;
  *(v0 + 5440) = xmmword_1BCE490F0;
  *(v0 + 6656) = xmmword_1BCE490F0;
  *(v0 + 5456) = xmmword_1BCE49100;
  *(v0 + 6672) = xmmword_1BCE49100;
  *(v0 + 5472) = xmmword_1BCE49110;
  *(v0 + 6688) = xmmword_1BCE49110;
  *(v0 + 5920) = xmmword_1BCE48FE0;
  *(v0 + 7136) = xmmword_1BCE48FE0;
  *(v0 + 3696) = xmmword_1BCE3EE30;
  *(v0 + 7344) = xmmword_1BCE3EE30;
  *(v0 + 3712) = 1150681088;
  *(v0 + 4928) = 1150681088;
  *(v0 + 6144) = 1150681088;
  *(v0 + 7360) = 1150681088;
  *(v0 + 3728) = xmmword_1BCE48E20;
  *(v0 + 7376) = xmmword_1BCE48E20;
  *(v0 + 3792) = xmmword_1BCE3E270;
  *(v0 + 7440) = xmmword_1BCE3E270;
  *(v0 + 3920) = xmmword_1BCE48E30;
  *(v0 + 7568) = xmmword_1BCE48E30;
  *(v0 + 3968) = xmmword_1BCE48E40;
  *(v0 + 7616) = xmmword_1BCE48E40;
  *(v0 + 4016) = xmmword_1BCE48E50;
  *(v0 + 7664) = xmmword_1BCE48E50;
  *(v0 + 4032) = 1065353216;
  *(v0 + 5248) = 1065353216;
  *(v0 + 6464) = 1065353216;
  *(v0 + 7680) = 1065353216;
  *(v0 + 4048) = xmmword_1BCE3E2F0;
  *(v0 + 7696) = xmmword_1BCE3E2F0;
  *(v0 + 4144) = xmmword_1BCE48FD0;
  *(v0 + 5360) = xmmword_1BCE48FD0;
  *(v0 + 5872) = xmmword_1BCE48FD0;
  *(v0 + 6576) = xmmword_1BCE48FD0;
  *(v0 + 7088) = xmmword_1BCE48FD0;
  *(v0 + 7792) = xmmword_1BCE48FD0;
  *(v0 + 4192) = xmmword_1BCE3D430;
  *(v0 + 5408) = xmmword_1BCE3D430;
  *(v0 + 6624) = xmmword_1BCE3D430;
  *(v0 + 7840) = xmmword_1BCE3D430;
  *(v0 + 4208) = xmmword_1BCE49080;
  *(v0 + 7856) = xmmword_1BCE49080;
  *(v0 + 4224) = xmmword_1BCE49090;
  *(v0 + 7872) = xmmword_1BCE49090;
  *(v0 + 4240) = xmmword_1BCE490A0;
  *(v0 + 7888) = xmmword_1BCE490A0;
  *(v0 + 4256) = xmmword_1BCE490B0;
  *(v0 + 7904) = xmmword_1BCE490B0;
  *(v0 + 4656) = xmmword_1BCE48EE0;
  *(v0 + 8304) = xmmword_1BCE48EE0;
  *(v0 + 4672) = xmmword_1BCE48EF0;
  *(v0 + 8320) = xmmword_1BCE48EF0;
  v1 = vdupq_n_s64(0x3FECCCCCC0000000uLL);
  *(v0 + 4688) = v1;
  *(v0 + 8336) = v1;
  *(v0 + 4704) = xmmword_1BCE3CD20;
  *(v0 + 8352) = xmmword_1BCE3CD20;
  *(v0 + 2480) = xmmword_1BCE3F7B0;
  *(v0 + 8560) = xmmword_1BCE3F7B0;
  *(v0 + 2496) = 1143930880;
  *(v0 + 8576) = 1143930880;
  *(v0 + 2512) = xmmword_1BCE48D20;
  *(v0 + 8592) = xmmword_1BCE48D20;
  *(v0 + 2544) = xmmword_1BCE48D30;
  *(v0 + 3760) = xmmword_1BCE48D30;
  *(v0 + 4976) = xmmword_1BCE48D30;
  *(v0 + 6192) = xmmword_1BCE48D30;
  *(v0 + 7408) = xmmword_1BCE48D30;
  *(v0 + 8624) = xmmword_1BCE48D30;
  *(v0 + 2560) = xmmword_1BCE3F930;
  *(v0 + 3776) = xmmword_1BCE3F930;
  *(v0 + 4992) = xmmword_1BCE3F930;
  *(v0 + 6208) = xmmword_1BCE3F930;
  *(v0 + 7424) = xmmword_1BCE3F930;
  *(v0 + 8640) = xmmword_1BCE3F930;
  *(v0 + 2576) = xmmword_1BCE3E180;
  *(v0 + 8656) = xmmword_1BCE3E180;
  *(v0 + 2592) = xmmword_1BCE3CB90;
  *(v0 + 3808) = xmmword_1BCE3CB90;
  *(v0 + 7456) = xmmword_1BCE3CB90;
  *(v0 + 8672) = xmmword_1BCE3CB90;
  *(v0 + 2704) = xmmword_1BCE48D40;
  *(v0 + 8784) = xmmword_1BCE48D40;
  *(v0 + 2736) = xmmword_1BCE48D50;
  *(v0 + 8816) = xmmword_1BCE48D50;
  *(v0 + 2752) = xmmword_1BCE48D60;
  *(v0 + 8832) = xmmword_1BCE48D60;
  *(v0 + 2768) = xmmword_1BCE44F40;
  *(v0 + 8848) = xmmword_1BCE44F40;
  *(v0 + 2800) = xmmword_1BCE48D70;
  *(v0 + 8880) = xmmword_1BCE48D70;
  *(v0 + 2928) = xmmword_1BCE48D80;
  *(v0 + 2960) = xmmword_1BCE48D80;
  *(v0 + 9008) = xmmword_1BCE48D80;
  *(v0 + 9040) = xmmword_1BCE48D80;
  *(v0 + 2976) = xmmword_1BCE40020;
  *(v0 + 4160) = xmmword_1BCE40020;
  *(v0 + 7808) = xmmword_1BCE40020;
  *(v0 + 9056) = xmmword_1BCE40020;
  *(v0 + 2992) = xmmword_1BCE48D90;
  *(v0 + 9072) = xmmword_1BCE48D90;
  *(v0 + 3024) = xmmword_1BCE48DA0;
  *(v0 + 9104) = xmmword_1BCE48DA0;
  *(v0 + 3040) = xmmword_1BCE48DB0;
  *(v0 + 9120) = xmmword_1BCE48DB0;
  *(v0 + 3440) = xmmword_1BCE48E00;
  *(v0 + 9520) = xmmword_1BCE48E00;
  *(v0 + 3456) = xmmword_1BCE3ECB0;
  *(v0 + 9536) = xmmword_1BCE3ECB0;
  *(v0 + 3472) = xmmword_1BCE48E10;
  *(v0 + 9552) = xmmword_1BCE48E10;
  *(v0 + 2944) = xmmword_1BCE3DA70;
  *(v0 + 3488) = xmmword_1BCE3DA70;
  *(v0 + 5088) = xmmword_1BCE3DA70;
  *(v0 + 5888) = xmmword_1BCE3DA70;
  *(v0 + 6304) = xmmword_1BCE3DA70;
  *(v0 + 7104) = xmmword_1BCE3DA70;
  *(v0 + 9024) = xmmword_1BCE3DA70;
  *(v0 + 9568) = xmmword_1BCE3DA70;
  *(v0 + 1264) = xmmword_1BCE3F6C0;
  *(v0 + 9776) = xmmword_1BCE3F6C0;
  *(v0 + 1280) = 0x41200000442F0000;
  *(v0 + 9792) = 0x41200000442F0000;
  *(v0 + 1328) = xmmword_1BCE48C40;
  *(v0 + 9840) = xmmword_1BCE48C40;
  *(v0 + 1344) = xmmword_1BCE48C50;
  *(v0 + 9856) = xmmword_1BCE48C50;
  *(v0 + 1360) = xmmword_1BCE432E0;
  *(v0 + 9872) = xmmword_1BCE432E0;
  *(v0 + 1376) = xmmword_1BCE432F0;
  *(v0 + 9888) = xmmword_1BCE432F0;
  *(v0 + 1440) = xmmword_1BCE3DCB0;
  *(v0 + 2656) = xmmword_1BCE3DCB0;
  *(v0 + 8736) = xmmword_1BCE3DCB0;
  *(v0 + 9952) = xmmword_1BCE3DCB0;
  *(v0 + 1488) = xmmword_1BCE48C60;
  *(v0 + 10000) = xmmword_1BCE48C60;
  *(v0 + 1520) = xmmword_1BCE48C70;
  *(v0 + 10032) = xmmword_1BCE48C70;
  *(v0 + 1536) = xmmword_1BCE3ED10;
  *(v0 + 10048) = xmmword_1BCE3ED10;
  *(v0 + 1552) = xmmword_1BCE48C80;
  *(v0 + 10064) = xmmword_1BCE48C80;
  *(v0 + 1568) = xmmword_1BCE48C90;
  *(v0 + 10080) = xmmword_1BCE48C90;
  *(v0 + 1584) = xmmword_1BCE3CA10;
  *(v0 + 10096) = xmmword_1BCE3CA10;
  *(v0 + 1728) = xmmword_1BCE49060;
  *(v0 + 10240) = xmmword_1BCE49060;
  *(v0 + 1744) = xmmword_1BCE48CC0;
  *(v0 + 10256) = xmmword_1BCE48CC0;
  *(v0 + 1760) = xmmword_1BCE48CD0;
  *(v0 + 10272) = xmmword_1BCE48CD0;
  *(v0 + 1792) = xmmword_1BCE49070;
  *(v0 + 10304) = xmmword_1BCE49070;
  *(v0 + 1824) = xmmword_1BCE41640;
  *(v0 + 10336) = xmmword_1BCE41640;
  *(v0 + 1712) = xmmword_1BCE48D00;
  *(v0 + 2224) = xmmword_1BCE48D00;
  *(v0 + 10224) = xmmword_1BCE48D00;
  *(v0 + 10736) = xmmword_1BCE48D00;
  *(v0 + 2256) = xmmword_1BCE48D10;
  *(v0 + 10768) = xmmword_1BCE48D10;
  __asm { FMOV            V16.2D, #1.0 }

  *(v0 + 10992) = xmmword_1BCE3F510;
  __asm { FMOV            V6.2D, #0.5 }

  *(v0 + 11008) = 0x420C000043FA0000;
  *(v0 + 208) = _Q6;
  *(v0 + 224) = xmmword_1BCE3D910;
  *(v0 + 1296) = xmmword_1BCE48B60;
  *(v0 + 9808) = xmmword_1BCE48B60;
  *(v0 + 11024) = xmmword_1BCE48B60;
  *(v0 + 1312) = xmmword_1BCE3E150;
  *(v0 + 2528) = xmmword_1BCE3E150;
  *(v0 + 3744) = xmmword_1BCE3E150;
  *(v0 + 4960) = xmmword_1BCE3E150;
  *(v0 + 6176) = xmmword_1BCE3E150;
  *(v0 + 7392) = xmmword_1BCE3E150;
  *(v0 + 8608) = xmmword_1BCE3E150;
  *(v0 + 9824) = xmmword_1BCE3E150;
  *(v0 + 11040) = xmmword_1BCE3E150;
  *(v0 + 240) = xmmword_1BCE43270;
  *(v0 + 256) = xmmword_1BCE43280;
  *(v0 + 11056) = xmmword_1BCE44EB0;
  *(v0 + 11072) = xmmword_1BCE44EC0;
  *(v0 + 272) = xmmword_1BCE48B70;
  *(v0 + 288) = xmmword_1BCE3FC70;
  *(v0 + 11088) = xmmword_1BCE43250;
  *(v0 + 11104) = xmmword_1BCE43260;
  *(v0 + 304) = xmmword_1BCE48B80;
  *(v0 + 320) = xmmword_1BCE3E220;
  *(v0 + 1424) = _Q6;
  *(v0 + 2640) = _Q6;
  *(v0 + 8720) = _Q6;
  *(v0 + 9936) = _Q6;
  *(v0 + 11152) = _Q6;
  *(v0 + 11168) = xmmword_1BCE3D910;
  *(v0 + 336) = xmmword_1BCE3FC90;
  *(v0 + 352) = xmmword_1BCE3CEE0;
  *(v0 + 1456) = xmmword_1BCE43270;
  *(v0 + 9968) = xmmword_1BCE43270;
  *(v0 + 11184) = xmmword_1BCE43270;
  v8 = vdupq_n_s32(0x3F4CCCCDu);
  *(v0 + 368) = v8;
  *(v0 + 1472) = xmmword_1BCE43280;
  *(v0 + 9984) = xmmword_1BCE43280;
  *(v0 + 11200) = xmmword_1BCE43280;
  *(v0 + 384) = 0x3F8000003F4CCCCDLL;
  *(v0 + 11216) = xmmword_1BCE48B70;
  *(v0 + 432) = 0u;
  *(v0 + 448) = 0u;
  *(v0 + 11232) = xmmword_1BCE3FC70;
  result = 1.0;
  *(v0 + 11248) = xmmword_1BCE48B80;
  *(v0 + 11264) = xmmword_1BCE3E220;
  *(v0 + 11280) = xmmword_1BCE3FC90;
  *(v0 + 2784) = xmmword_1BCE3CEE0;
  *(v0 + 5216) = xmmword_1BCE3CEE0;
  *(v0 + 6432) = xmmword_1BCE3CEE0;
  *(v0 + 8368) = _Q16;
  *(v0 + 8864) = xmmword_1BCE3CEE0;
  *(v0 + 11296) = xmmword_1BCE3CEE0;
  *(v0 + 2816) = v8.i64[0];
  *(v0 + 8896) = v8.i64[0];
  *(v0 + 11312) = v8;
  *(v0 + 8224) = _Q16;
  *(v0 + 8240) = _Q16;
  *(v0 + 8256) = xmmword_1BCE3C8C0;
  *(v0 + 8272) = _Q16;
  *(v0 + 8288) = xmmword_1BCE3DAE0;
  *(v0 + 1600) = 0x3F8000003F4CCCCDLL;
  *(v0 + 7984) = _Q16;
  *(v0 + 8160) = xmmword_1BCE45000;
  *(v0 + 8176) = _Q16;
  *(v0 + 0x2000) = _Q16;
  *(v0 + 8208) = _Q16;
  *(v0 + 8064) = _Q16;
  *(v0 + 8080) = _Q16;
  *(v0 + 8096) = xmmword_1BCE3DD90;
  *(v0 + 8112) = _Q16;
  *(v0 + 8128) = xmmword_1BCE3A880;
  *(v0 + 8144) = _Q16;
  *(v0 + 8000) = xmmword_1BCE3A880;
  *(v0 + 8016) = _Q16;
  *(v0 + 8032) = xmmword_1BCE3C8C0;
  *(v0 + 8048) = _Q16;
  *(v0 + 10112) = 0x3F8000003F4CCCCDLL;
  *(v0 + 11328) = 0x3F8000003F4CCCCDLL;
  *(v0 + 7920) = _Q16;
  *(v0 + 7936) = xmmword_1BCE3A880;
  *(v0 + 7952) = _Q16;
  *(v0 + 7968) = _Q16;
  *(v0 + 1664) = 0u;
  *(v0 + 1648) = 0u;
  *(v0 + 2880) = 0u;
  *(v0 + 2864) = 0u;
  *(v0 + 7824) = _Q16;
  *(v0 + 4096) = 0u;
  *(v0 + 4080) = 0u;
  *(v0 + 7744) = 0u;
  *(v0 + 7728) = 0u;
  *(v0 + 7760) = _Q16;
  *(v0 + 7776) = xmmword_1BCE3DAE0;
  *(v0 + 5312) = 0u;
  *(v0 + 5296) = 0u;
  *(v0 + 6528) = 0u;
  *(v0 + 7688) = 0x3FEF0AE2E0000000;
  *(v0 + 7712) = 0x3FF0000000000000;
  *(v0 + 7720) = 0;
  *(v0 + 6512) = 0u;
  *(v0 + 7488) = _Q16;
  *(v0 + 7584) = _Q16;
  *(v0 + 7600) = _Q16;
  *(v0 + 7632) = _Q16;
  *(v0 + 7648) = xmmword_1BCE3DD90;
  *(v0 + 7504) = _Q16;
  *(v0 + 7520) = xmmword_1BCE3DAE0;
  *(v0 + 7536) = _Q16;
  *(v0 + 7552) = _Q16;
  *(v0 + 8960) = 0u;
  *(v0 + 8944) = 0u;
  *(v0 + 10176) = 0u;
  *(v0 + 10160) = 0u;
  *(v0 + 11392) = 0u;
  *(v0 + 11376) = 0u;
  *(v0 + 7472) = _Q16;
  *(v0 + 496) = xmmword_1BCE49010;
  *(v0 + 512) = xmmword_1BCE42F00;
  *(v0 + 11440) = xmmword_1BCE49010;
  *(v0 + 560) = xmmword_1BCE49020;
  *(v0 + 576) = xmmword_1BCE49030;
  *(v0 + 7368) = 1065353216;
  *(v0 + 11456) = xmmword_1BCE42F00;
  *(v0 + 7337) = *v15;
  *(v0 + 7312) = 0x3FF0000000000000;
  *(v0 + 7328) = 0x4032000000000001;
  *(v0 + 7336) = 1;
  *(v0 + 7340) = *&v15[3];
  *(v0 + 7232) = _Q16;
  *(v0 + 7248) = 0x4170000042480000;
  *(v0 + 7256) = 0x3FF0000000000000;
  *(v0 + 7264) = _Q16;
  *(v0 + 7280) = _Q16;
  *(v0 + 7296) = _Q16;
  *(v0 + 1776) = xmmword_1BCE49020;
  *(v0 + 7152) = _Q16;
  *(v0 + 7168) = xmmword_1BCE3C8C0;
  *(v0 + 7184) = _Q16;
  *(v0 + 7200) = xmmword_1BCE3DAE0;
  *(v0 + 7216) = _Q16;
  *(v0 + 10288) = xmmword_1BCE49020;
  *(v0 + 11504) = xmmword_1BCE49020;
  *(v0 + 7056) = _Q16;
  *(v0 + 7072) = xmmword_1BCE3DAE0;
  *(v0 + 7120) = _Q16;
  *(v0 + 6960) = _Q16;
  *(v0 + 6976) = _Q16;
  *(v0 + 6992) = _Q16;
  *(v0 + 7008) = _Q16;
  *(v0 + 7024) = _Q16;
  *(v0 + 7040) = xmmword_1BCE3C8C0;
  *(v0 + 6864) = _Q16;
  *(v0 + 6880) = xmmword_1BCE3DD90;
  *(v0 + 6896) = _Q16;
  *(v0 + 6912) = xmmword_1BCE3A880;
  *(v0 + 6928) = _Q16;
  *(v0 + 6944) = xmmword_1BCE45000;
  *(v0 + 6784) = xmmword_1BCE3A880;
  *(v0 + 6800) = _Q16;
  *(v0 + 6816) = xmmword_1BCE3C8C0;
  *(v0 + 6832) = _Q16;
  *(v0 + 6848) = _Q16;
  *(v0 + 11520) = xmmword_1BCE49030;
  *(v0 + 6720) = xmmword_1BCE3A880;
  *(v0 + 6736) = _Q16;
  *(v0 + 6752) = _Q16;
  *(v0 + 6768) = _Q16;
  *(v0 + 1808) = xmmword_1BCE48BE0;
  *(v0 + 10320) = xmmword_1BCE48BE0;
  *(v0 + 11536) = xmmword_1BCE48BE0;
  *(v0 + 592) = xmmword_1BCE48BE0;
  *(v0 + 608) = xmmword_1BCE48BF0;
  *(v0 + 6704) = _Q16;
  *(v0 + 11552) = xmmword_1BCE48BF0;
  *(v0 + 800) = xmmword_1BCE3DD90;
  *(v0 + 2016) = xmmword_1BCE3DD90;
  *(v0 + 3232) = xmmword_1BCE3DD90;
  *(v0 + 6544) = _Q16;
  *(v0 + 6560) = xmmword_1BCE3DAE0;
  *(v0 + 4000) = xmmword_1BCE3DD90;
  *(v0 + 4448) = xmmword_1BCE3DD90;
  *(v0 + 5664) = xmmword_1BCE3DD90;
  *(v0 + 6472) = 0x3FF0000000000000;
  *(v0 + 6496) = 0x3FF0000000000000;
  *(v0 + 6504) = 0;
  *(v0 + 9312) = xmmword_1BCE3DD90;
  *(v0 + 10528) = xmmword_1BCE3DD90;
  *(v0 + 11744) = xmmword_1BCE3DD90;
  *(v0 + 6368) = _Q16;
  *(v0 + 6384) = _Q16;
  *(v0 + 6416) = _Q16;
  *(v0 + 6272) = _Q16;
  *(v0 + 6288) = _Q16;
  *(v0 + 6320) = _Q16;
  *(v0 + 6336) = _Q16;
  *(v0 + 6352) = _Q16;
  *(v0 + 640) = xmmword_1BCE3A880;
  *(v0 + 704) = xmmword_1BCE3A880;
  *(v0 + 832) = xmmword_1BCE3A880;
  *(v0 + 864) = xmmword_1BCE45000;
  *(v0 + 6256) = _Q16;
  *(v0 + 1856) = xmmword_1BCE3A880;
  *(v0 + 1920) = xmmword_1BCE3A880;
  *(v0 + 2048) = xmmword_1BCE3A880;
  *(v0 + 6120) = 1;
  *(v0 + 6121) = *v14;
  *(v0 + 6124) = *&v14[3];
  *(v0 + 6152) = 1065353216;
  *(v0 + 6040) = 0x3FF0000000000000;
  *(v0 + 6048) = _Q16;
  *(v0 + 6064) = _Q16;
  *(v0 + 6080) = _Q16;
  *(v0 + 6096) = 0x3FF0000000000000;
  *(v0 + 6112) = 0x403DFFFFFFFFFFFELL;
  *(v0 + 5952) = xmmword_1BCE3C8C0;
  *(v0 + 5968) = _Q16;
  *(v0 + 5984) = xmmword_1BCE3DAE0;
  *(v0 + 6000) = _Q16;
  *(v0 + 6016) = _Q16;
  *(v0 + 6032) = 0x4170000042480000;
  *(v0 + 3072) = xmmword_1BCE3A880;
  *(v0 + 3136) = xmmword_1BCE3A880;
  *(v0 + 3264) = xmmword_1BCE3A880;
  *(v0 + 5856) = xmmword_1BCE3DAE0;
  *(v0 + 5904) = _Q16;
  *(v0 + 5936) = _Q16;
  *(v0 + 5760) = _Q16;
  *(v0 + 5776) = _Q16;
  *(v0 + 5792) = _Q16;
  *(v0 + 5808) = _Q16;
  *(v0 + 5824) = xmmword_1BCE3C8C0;
  *(v0 + 5840) = _Q16;
  *(v0 + 4288) = xmmword_1BCE3A880;
  *(v0 + 5680) = _Q16;
  *(v0 + 5696) = xmmword_1BCE3A880;
  *(v0 + 5712) = _Q16;
  *(v0 + 5728) = xmmword_1BCE45000;
  *(v0 + 5744) = _Q16;
  *(v0 + 5568) = xmmword_1BCE3A880;
  *(v0 + 5584) = _Q16;
  *(v0 + 5600) = xmmword_1BCE3C8C0;
  *(v0 + 5616) = _Q16;
  *(v0 + 5632) = _Q16;
  *(v0 + 5648) = _Q16;
  *(v0 + 4352) = xmmword_1BCE3A880;
  *(v0 + 5488) = _Q16;
  *(v0 + 5504) = xmmword_1BCE3A880;
  *(v0 + 5520) = _Q16;
  *(v0 + 5536) = _Q16;
  *(v0 + 5552) = _Q16;
  *(v0 + 4480) = xmmword_1BCE3A880;
  *(v0 + 5328) = _Q16;
  *(v0 + 5344) = xmmword_1BCE3DAE0;
  *(v0 + 9152) = xmmword_1BCE3A880;
  *(v0 + 9216) = xmmword_1BCE3A880;
  *(v0 + 9344) = xmmword_1BCE3A880;
  *(v0 + 10368) = xmmword_1BCE3A880;
  *(v0 + 10432) = xmmword_1BCE3A880;
  *(v0 + 10560) = xmmword_1BCE3A880;
  *(v0 + 11584) = xmmword_1BCE3A880;
  *(v0 + 11648) = xmmword_1BCE3A880;
  *(v0 + 11776) = xmmword_1BCE3A880;
  *(v0 + 2080) = xmmword_1BCE45000;
  *(v0 + 5256) = 0x3FF0000000000000;
  *(v0 + 5280) = 0x3FF0000000000000;
  *(v0 + 5288) = 0;
  *(v0 + 3296) = xmmword_1BCE45000;
  *(v0 + 4512) = xmmword_1BCE45000;
  *(v0 + 5152) = _Q16;
  *(v0 + 5168) = _Q16;
  *(v0 + 5200) = _Q16;
  *(v0 + 9376) = xmmword_1BCE45000;
  *(v0 + 10592) = xmmword_1BCE45000;
  *(v0 + 11808) = xmmword_1BCE45000;
  *(v0 + 5104) = _Q16;
  *(v0 + 5120) = _Q16;
  *(v0 + 5136) = _Q16;
  *(v0 + 11952) = xmmword_1BCE48C10;
  *(v0 + 1008) = xmmword_1BCE48C10;
  *(v0 + 1024) = xmmword_1BCE48C20;
  *(v0 + 5040) = _Q16;
  *(v0 + 5056) = _Q16;
  *(v0 + 5072) = _Q16;
  *(v0 + 2240) = xmmword_1BCE48C20;
  *(v0 + 3008) = xmmword_1BCE48C20;
  *(v0 + 4800) = _Q16;
  *(v0 + 4848) = _Q16;
  *(v0 + 4905) = *v13;
  *(v0 + 4936) = 1065353216;
  *(v0 + 4864) = _Q16;
  *(v0 + 4880) = 0x3FF0000000000000;
  *(v0 + 4896) = 0x403DFFFFFFFFFFFELL;
  *(v0 + 4904) = 0;
  *(v0 + 4908) = *&v13[3];
  *(v0 + 4816) = 0x4170000042480000;
  *(v0 + 4824) = 0x3FF0000000000000;
  *(v0 + 4832) = _Q16;
  *(v0 + 9088) = xmmword_1BCE48C20;
  *(v0 + 10752) = xmmword_1BCE48C20;
  *(v0 + 11968) = xmmword_1BCE48C20;
  *(v0 + 1040) = xmmword_1BCE48C30;
  *(v0 + 4752) = _Q16;
  *(v0 + 4768) = xmmword_1BCE3DAE0;
  *(v0 + 4784) = _Q16;
  *(v0 + 11984) = xmmword_1BCE48C30;
  *(v0 + 11472) = xmmword_1BCE48BA0;
  *(v0 + 528) = xmmword_1BCE48BA0;
  *(v0 + 544) = xmmword_1BCE48BB0;
  *(v0 + 4720) = _Q16;
  *(v0 + 4736) = xmmword_1BCE3C8C0;
  *(v0 + 4560) = _Q16;
  *(v0 + 4576) = _Q16;
  *(v0 + 4592) = _Q16;
  *(v0 + 4608) = xmmword_1BCE3C8C0;
  *(v0 + 4624) = _Q16;
  *(v0 + 4640) = xmmword_1BCE3DAE0;
  *(v0 + 1056) = xmmword_1BCE48BB0;
  *(v0 + 2272) = xmmword_1BCE48BB0;
  *(v0 + 4464) = _Q16;
  *(v0 + 4496) = _Q16;
  *(v0 + 4528) = _Q16;
  *(v0 + 4544) = _Q16;
  *(v0 + 4368) = _Q16;
  *(v0 + 4384) = xmmword_1BCE3C8C0;
  *(v0 + 4400) = _Q16;
  *(v0 + 4416) = _Q16;
  *(v0 + 4432) = _Q16;
  *(v0 + 10784) = xmmword_1BCE48BB0;
  *(v0 + 11488) = xmmword_1BCE48BB0;
  *(v0 + 12000) = xmmword_1BCE48BB0;
  *(v0 + 4272) = _Q16;
  *(v0 + 4304) = _Q16;
  *(v0 + 4320) = _Q16;
  *(v0 + 4336) = _Q16;
  *(v0 + 736) = xmmword_1BCE3C8C0;
  *(v0 + 960) = xmmword_1BCE3C8C0;
  *(v0 + 1088) = xmmword_1BCE3C8C0;
  *(v0 + 1952) = xmmword_1BCE3C8C0;
  *(v0 + 2176) = xmmword_1BCE3C8C0;
  *(v0 + 4176) = _Q16;
  *(v0 + 2304) = xmmword_1BCE3C8C0;
  *(v0 + 3168) = xmmword_1BCE3C8C0;
  *(v0 + 3392) = xmmword_1BCE3C8C0;
  *(v0 + 3520) = xmmword_1BCE3C8C0;
  *(v0 + 4112) = _Q16;
  *(v0 + 4128) = xmmword_1BCE3DAE0;
  *(v0 + 3824) = _Q16;
  *(v0 + 3840) = _Q16;
  *(v0 + 3856) = _Q16;
  *(v0 + 4040) = 0x3FEF0AE2E0000000;
  *(v0 + 4064) = 0x3FF0000000000000;
  *(v0 + 4072) = 0;
  *(v0 + 3872) = xmmword_1BCE3DAE0;
  *(v0 + 3888) = _Q16;
  *(v0 + 3904) = _Q16;
  *(v0 + 3936) = _Q16;
  *(v0 + 3952) = _Q16;
  *(v0 + 3984) = _Q16;
  *(v0 + 8384) = xmmword_1BCE3C8C0;
  *(v0 + 9248) = xmmword_1BCE3C8C0;
  *(v0 + 9472) = xmmword_1BCE3C8C0;
  *(v0 + 9600) = xmmword_1BCE3C8C0;
  *(v0 + 10464) = xmmword_1BCE3C8C0;
  *(v0 + 10688) = xmmword_1BCE3C8C0;
  *(v0 + 10816) = xmmword_1BCE3C8C0;
  *(v0 + 11680) = xmmword_1BCE3C8C0;
  *(v0 + 11904) = xmmword_1BCE3C8C0;
  *(v0 + 12032) = xmmword_1BCE3C8C0;
  *(v0 + 480) = xmmword_1BCE3DAE0;
  *(v0 + 992) = xmmword_1BCE3DAE0;
  *(v0 + 1120) = xmmword_1BCE3DAE0;
  *(v0 + 1696) = xmmword_1BCE3DAE0;
  *(v0 + 3689) = *v12;
  *(v0 + 3720) = 1065353216;
  *(v0 + 3648) = _Q16;
  *(v0 + 3664) = 0x3FF0000000000000;
  *(v0 + 3680) = 0x4032000000000001;
  *(v0 + 3688) = 0;
  *(v0 + 3692) = *&v12[3];
  *(v0 + 3568) = _Q16;
  *(v0 + 3584) = _Q16;
  *(v0 + 3600) = 0x4170000042480000;
  *(v0 + 3608) = 0x3FF0000000000000;
  *(v0 + 3616) = _Q16;
  *(v0 + 3632) = _Q16;
  *(v0 + 2208) = xmmword_1BCE3DAE0;
  *(v0 + 2336) = xmmword_1BCE3DAE0;
  *(v0 + 2912) = xmmword_1BCE3DAE0;
  *(v0 + 3504) = _Q16;
  *(v0 + 3536) = _Q16;
  *(v0 + 3552) = xmmword_1BCE3DAE0;
  *(v0 + 3088) = _Q16;
  *(v0 + 3104) = _Q16;
  *(v0 + 3120) = _Q16;
  *(v0 + 3376) = _Q16;
  *(v0 + 3408) = _Q16;
  *(v0 + 3424) = xmmword_1BCE3DAE0;
  *(v0 + 3152) = _Q16;
  *(v0 + 3280) = _Q16;
  *(v0 + 3312) = _Q16;
  *(v0 + 3328) = _Q16;
  *(v0 + 3344) = _Q16;
  *(v0 + 3360) = _Q16;
  *(v0 + 3184) = _Q16;
  *(v0 + 3200) = _Q16;
  *(v0 + 3216) = _Q16;
  *(v0 + 3248) = _Q16;
  *(v0 + 8416) = xmmword_1BCE3DAE0;
  *(v0 + 8992) = xmmword_1BCE3DAE0;
  *(v0 + 9504) = xmmword_1BCE3DAE0;
  *(v0 + 9632) = xmmword_1BCE3DAE0;
  *(v0 + 10208) = xmmword_1BCE3DAE0;
  *(v0 + 10720) = xmmword_1BCE3DAE0;
  *(v0 + 10848) = xmmword_1BCE3DAE0;
  *(v0 + 11424) = xmmword_1BCE3DAE0;
  *(v0 + 11936) = xmmword_1BCE3DAE0;
  *(v0 + 12064) = xmmword_1BCE3DAE0;
  *(v0 + 1168) = 0x4170000042480000;
  *(v0 + 2384) = 0x4170000042480000;
  *(v0 + 3056) = _Q16;
  *(v0 + 8464) = 0x4170000042480000;
  *(v0 + 9680) = 0x4170000042480000;
  *(v0 + 10896) = 0x4170000042480000;
  *(v0 + 12112) = 0x4170000042480000;
  *(v0 + 464) = _Q16;
  *(v0 + 624) = _Q16;
  *(v0 + 2896) = _Q16;
  *(v0 + 688) = _Q16;
  *(v0 + 720) = _Q16;
  *(v0 + 2824) = 0x3FF0000000000000;
  *(v0 + 2832) = _Q16;
  *(v0 + 2848) = 0x3FF0000000000000;
  *(v0 + 2856) = 0;
  *(v0 + 768) = _Q16;
  *(v0 + 784) = _Q16;
  *(v0 + 816) = _Q16;
  *(v0 + 848) = _Q16;
  *(v0 + 944) = _Q16;
  *(v0 + 976) = _Q16;
  *(v0 + 176) = _Q16;
  *(v0 + 192) = _Q16;
  *(v0 + 400) = _Q16;
  *(v0 + 2672) = _Q16;
  *(v0 + 2688) = _Q16;
  *(v0 + 2720) = _Q16;
  *(v0 + 424) = 0;
  *(v0 + 656) = _Q16;
  *(v0 + 672) = _Q16;
  *(v0 + 2608) = _Q16;
  *(v0 + 2624) = _Q16;
  *(v0 + 752) = _Q16;
  *(v0 + 880) = _Q16;
  *(v0 + 896) = _Q16;
  *(v0 + 2400) = _Q16;
  *(v0 + 2416) = _Q16;
  *(v0 + 2473) = *v11;
  *(v0 + 2476) = *&v11[3];
  *(v0 + 2504) = 1053609165;
  *(v0 + 2432) = _Q16;
  *(v0 + 2448) = 0x3FF0000000000000;
  *(v0 + 2464) = 0xC018000000000000;
  *(v0 + 2472) = 0;
  *(v0 + 912) = _Q16;
  *(v0 + 928) = _Q16;
  *(v0 + 1072) = _Q16;
  *(v0 + 2320) = _Q16;
  *(v0 + 2352) = _Q16;
  *(v0 + 2368) = _Q16;
  *(v0 + 2392) = 0x3FF0000000000000;
  *(v0 + 1104) = _Q16;
  *(v0 + 1136) = _Q16;
  *(v0 + 1152) = _Q16;
  *(v0 + 1176) = 0x3FF0000000000000;
  *(v0 + 1184) = _Q16;
  *(v0 + 2288) = _Q16;
  *(v0 + 1200) = _Q16;
  *(v0 + 1216) = _Q16;
  *(v0 + 1232) = 0x3FF0000000000000;
  *(v0 + 2144) = _Q16;
  *(v0 + 2160) = _Q16;
  *(v0 + 2192) = _Q16;
  *(v0 + 1248) = 0xC031FFFFFFFFFFFFLL;
  *(v0 + 1256) = 0;
  *(v0 + 2096) = _Q16;
  *(v0 + 2112) = _Q16;
  *(v0 + 2128) = _Q16;
  *(v0 + 1257) = *v10;
  *(v0 + 2032) = _Q16;
  *(v0 + 2064) = _Q16;
  *(v0 + 1260) = *&v10[3];
  *(v0 + 1288) = 1036831949;
  *(v0 + 1936) = _Q16;
  *(v0 + 1968) = _Q16;
  *(v0 + 1984) = _Q16;
  *(v0 + 2000) = _Q16;
  *(v0 + 1392) = _Q16;
  *(v0 + 1408) = _Q16;
  *(v0 + 1840) = _Q16;
  *(v0 + 1872) = _Q16;
  *(v0 + 1888) = _Q16;
  *(v0 + 1904) = _Q16;
  *(v0 + 1504) = _Q16;
  *(v0 + 1608) = 0x3FF0000000000000;
  *(v0 + 1616) = _Q16;
  *(v0 + 1632) = 0x3FF0000000000000;
  *(v0 + 1640) = 0;
  *(v0 + 1680) = _Q16;
  *(v0 + 8400) = _Q16;
  *(v0 + 8432) = _Q16;
  *(v0 + 8448) = _Q16;
  *(v0 + 8480) = _Q16;
  *(v0 + 8496) = _Q16;
  *(v0 + 8512) = _Q16;
  *(v0 + 8688) = _Q16;
  *(v0 + 8704) = _Q16;
  *(v0 + 8752) = _Q16;
  *(v0 + 8768) = _Q16;
  *(v0 + 8800) = _Q16;
  *(v0 + 8912) = _Q16;
  *(v0 + 8976) = _Q16;
  *(v0 + 9136) = _Q16;
  *(v0 + 9168) = _Q16;
  *(v0 + 9184) = _Q16;
  *(v0 + 9200) = _Q16;
  *(v0 + 9232) = _Q16;
  *(v0 + 9264) = _Q16;
  *(v0 + 9280) = _Q16;
  *(v0 + 9296) = _Q16;
  *(v0 + 9328) = _Q16;
  *(v0 + 9360) = _Q16;
  *(v0 + 9392) = _Q16;
  *(v0 + 9408) = _Q16;
  *(v0 + 9424) = _Q16;
  *(v0 + 9440) = _Q16;
  *(v0 + 9456) = _Q16;
  *(v0 + 9488) = _Q16;
  *(v0 + 9584) = _Q16;
  *(v0 + 9616) = _Q16;
  *(v0 + 9648) = _Q16;
  *(v0 + 9664) = _Q16;
  *(v0 + 9696) = _Q16;
  *(v0 + 9712) = _Q16;
  *(v0 + 9728) = _Q16;
  *(v0 + 9904) = _Q16;
  *(v0 + 9920) = _Q16;
  *(v0 + 10016) = _Q16;
  *(v0 + 10128) = _Q16;
  *(v0 + 10192) = _Q16;
  *(v0 + 10352) = _Q16;
  *(v0 + 10384) = _Q16;
  *(v0 + 10400) = _Q16;
  *(v0 + 10416) = _Q16;
  *(v0 + 10448) = _Q16;
  *(v0 + 10480) = _Q16;
  *(v0 + 10496) = _Q16;
  *(v0 + 10512) = _Q16;
  *(v0 + 10544) = _Q16;
  *(v0 + 10576) = _Q16;
  *(v0 + 10608) = _Q16;
  *(v0 + 10624) = _Q16;
  *(v0 + 10640) = _Q16;
  *(v0 + 10656) = _Q16;
  *(v0 + 10672) = _Q16;
  *(v0 + 10704) = _Q16;
  *(v0 + 10800) = _Q16;
  *(v0 + 10832) = _Q16;
  *(v0 + 10864) = _Q16;
  *(v0 + 10880) = _Q16;
  *(v0 + 10912) = _Q16;
  *(v0 + 10928) = _Q16;
  *(v0 + 10944) = _Q16;
  *(v0 + 11120) = _Q16;
  *(v0 + 11136) = _Q16;
  *(v0 + 11344) = _Q16;
  *(v0 + 11408) = _Q16;
  *(v0 + 11568) = _Q16;
  *(v0 + 11600) = _Q16;
  *(v0 + 11616) = _Q16;
  *(v0 + 11632) = _Q16;
  *(v0 + 11664) = _Q16;
  *(v0 + 11696) = _Q16;
  *(v0 + 11712) = _Q16;
  *(v0 + 11728) = _Q16;
  *(v0 + 11760) = _Q16;
  *(v0 + 11792) = _Q16;
  *(v0 + 11824) = _Q16;
  *(v0 + 11840) = _Q16;
  *(v0 + 11856) = _Q16;
  *(v0 + 11872) = _Q16;
  *(v0 + 11888) = _Q16;
  *(v0 + 11920) = _Q16;
  *(v0 + 12016) = _Q16;
  *(v0 + 12048) = _Q16;
  *(v0 + 12080) = _Q16;
  *(v0 + 12096) = _Q16;
  *(v0 + 12128) = _Q16;
  *(v0 + 12144) = _Q16;
  *(v0 + 12160) = _Q16;
  *(v0 + 392) = 0x3FF0000000000000;
  *(v0 + 416) = 0x3FF0000000000000;
  *(v0 + 32) = 0xC056800000000000;
  *(v0 + 40) = 0;
  *(v0 + 72) = 1036831949;
  *(v0 + 8472) = 0x3FF0000000000000;
  *(v0 + 8528) = 0x3FF0000000000000;
  *(v0 + 8544) = 0xC018000000000000;
  *(v0 + 8552) = 1;
  *(v0 + 8553) = *v16;
  *(v0 + 8556) = *&v16[3];
  *(v0 + 8584) = 1053609165;
  *(v0 + 8904) = 0x3FF0000000000000;
  *(v0 + 8928) = 0x3FF0000000000000;
  *(v0 + 8936) = 0;
  *(v0 + 9688) = 0x3FF0000000000000;
  *(v0 + 9744) = 0x3FF0000000000000;
  *(v0 + 9760) = 0xC031FFFFFFFFFFFFLL;
  *(v0 + 9769) = *v17;
  *(v0 + 9768) = 1;
  *(v0 + 9772) = *&v17[3];
  *(v0 + 9800) = 1036831949;
  *(v0 + 10120) = 0x3FF0000000000000;
  *(v0 + 10144) = 0x3FF0000000000000;
  *(v0 + 10152) = 0;
  *(v0 + 10904) = 0x3FF0000000000000;
  *(v0 + 10960) = 0x3FF0000000000000;
  *(v0 + 10976) = 0xC056800000000000;
  *(v0 + 10984) = 1;
  *(v0 + 10985) = *v18;
  *(v0 + 10988) = *&v18[3];
  *(v0 + 11016) = 1036831949;
  *(v0 + 11336) = 0x3FF0000000000000;
  *(v0 + 11360) = 0x3FF0000000000000;
  *(v0 + 11368) = 0;
  *(v0 + 12120) = 0x3FF0000000000000;
  *(v0 + 12176) = 0x3FF0000000000000;
  return result;
}

void sub_1BCBBCD58(uint64_t a1@<X8>)
{
  v2 = a1 + 1436;
  sub_1BCA93608();
  v4 = v3;
  sub_1BCA93608();
  *a1 = 0x4006666666666666;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0x3FF0000000000000;
  *(a1 + 24) = 48;
  *(a1 + 32) = xmmword_1BCE3BED0;
  *(a1 + 48) = xmmword_1BCE3BED0;
  *(a1 + 64) = 0x42C8000042480000;
  *(a1 + 72) = 0xC422800000000000;
  *(a1 + 80) = xmmword_1BCE3E630;
  *(a1 + 96) = xmmword_1BCE49420;
  *(a1 + 112) = 0x3EA3D70A3E428F5CLL;
  *(a1 + 128) = xmmword_1BCE44E30;
  *(a1 + 144) = xmmword_1BCE3D840;
  *(a1 + 160) = xmmword_1BCE42B00;
  *(a1 + 176) = 1165623296;
  *(a1 + 184) = 0x3E3851EC3E051EB8;
  *(a1 + 192) = xmmword_1BCE44E50;
  *(a1 + 208) = xmmword_1BCE44E60;
  *(a1 + 224) = xmmword_1BCE42B20;
  *(a1 + 240) = 0x4140000040A00000;
  *(a1 + 248) = 1132068864;
  *(a1 + 256) = 0x3E4CCCCD3DE147AELL;
  *(a1 + 264) = 0x40A0000041700000;
  *(a1 + 272) = 1101004800;
  __asm { FMOV            V0.4S, #1.0 }

  *(a1 + 288) = xmmword_1BCE3C7C0;
  *(a1 + 304) = _Q0;
  *(a1 + 320) = 0x4348000040C00000;
  *(a1 + 328) = 0x3E99999A3E19999ALL;
  *(a1 + 336) = 0x3F00000040A00000;
  *(a1 + 352) = xmmword_1BCE3C7C0;
  *(a1 + 368) = xmmword_1BCE3C700;
  *(a1 + 384) = 0;
  *(a1 + 388) = 0x3CA3D70A3F800000;
  *(a1 + 400) = xmmword_1BCE3BF20;
  *(a1 + 416) = 0x3F0000003F000000;
  *(a1 + 424) = 10;
  *(a1 + 432) = xmmword_1BCE3BF30;
  *(a1 + 448) = 0x3E4CCCCD3DCCCCCDLL;
  *(a1 + 464) = _Q0;
  *(a1 + 480) = xmmword_1BCE3D870;
  *(a1 + 496) = 0x43FA000040400000;
  *(a1 + 504) = 1116471296;
  *(a1 + 512) = 0x3E8000003DF5C28FLL;
  *(a1 + 528) = _Q0;
  *(a1 + 544) = _Q0;
  *(a1 + 560) = 0x4248000044BB8000;
  *(a1 + 568) = 0x3E4CCCCD3DA3D70ALL;
  *(a1 + 576) = xmmword_1BCE3C700;
  *(a1 + 592) = xmmword_1BCE3D880;
  *(a1 + 608) = 0x4100000040A00000;
  *(a1 + 624) = xmmword_1BCE3C700;
  *(a1 + 640) = xmmword_1BCE3D880;
  *(a1 + 656) = 0x4220000041200000;
  *(a1 + 664) = 0x3FC000003E99999ALL;
  *(a1 + 672) = 0x40A000003F800000;
  *(a1 + 688) = _Q0;
  *(a1 + 704) = 1065353216;
  *(a1 + 712) = 0x3F8000003F4CCCCDLL;
  *(a1 + 720) = 0x41B770A441900000;
  *(a1 + 728) = 1102579360;
  *(a1 + 736) = 1;
  *(a1 + 744) = 10;
  *(a1 + 752) = xmmword_1BCE3FB40;
  *(a1 + 768) = 0x617274736F746C41;
  *(a1 + 776) = 0xEF4C202D20737574;
  *(a1 + 784) = 0xD000000000000013;
  *(a1 + 792) = 0x80000001BCE798E0;
  *(a1 + 800) = 9;
  *(a1 + 816) = _Q0;
  *(a1 + 832) = 1065353216;
  *(a1 + 840) = 0x3F4CCCCD3ECCCCCDLL;
  *(a1 + 848) = 0x417C0000413CF5C2;
  *(a1 + 856) = 1094983344;
  *(a1 + 864) = 1;
  *(a1 + 872) = 4;
  *(a1 + 880) = xmmword_1BCE3F4C0;
  *(a1 + 896) = 0xD000000000000010;
  *(a1 + 904) = 0x80000001BCE79860;
  *(a1 + 912) = 0xD000000000000014;
  *(a1 + 920) = 0x80000001BCE79880;
  *(a1 + 928) = 6;
  *(a1 + 944) = _Q0;
  *(a1 + 960) = 1065353216;
  *(a1 + 968) = 0x3F4CCCCD3E4CCCCDLL;
  *(a1 + 976) = 0x415A8F5C40E00000;
  *(a1 + 984) = 1076315424;
  *(a1 + 992) = 1;
  *(a1 + 1000) = 6;
  *(a1 + 1008) = xmmword_1BCE3C6F0;
  *(a1 + 1024) = 0x617274736F746C41;
  *(a1 + 1032) = 0xEF4C202D20737574;
  *(a1 + 1040) = 0xD000000000000013;
  *(a1 + 1048) = 0x80000001BCE798E0;
  *(a1 + 1056) = 6;
  *(a1 + 1072) = _Q0;
  *(a1 + 1088) = 1065353216;
  *(a1 + 1096) = 0x3F8000003F000000;
  *(a1 + 1104) = 0x400000003FC00000;
  *(a1 + 1112) = 1084503840;
  *(a1 + 1120) = 0;
  *(a1 + 1128) = 4;
  *(a1 + 1136) = xmmword_1BCE3D8A0;
  *(a1 + 1152) = 0x7970736957;
  *(a1 + 1160) = 0xE500000000000000;
  strcpy((a1 + 1168), "Wispy_Single");
  *(a1 + 1181) = 0;
  *(a1 + 1182) = -5120;
  *(a1 + 1184) = 6;
  *(a1 + 1200) = _Q0;
  *(a1 + 1216) = xmmword_1BCE51C30;
  *(a1 + 1232) = 0;
  *(a1 + 1236) = 1;
  *(a1 + 1240) = 0x617274736F746C41;
  *(a1 + 1248) = 0xEB00000000737574;
  *(a1 + 1256) = 0xD000000000000013;
  *(a1 + 1264) = 0x80000001BCE79300;
  *(a1 + 1272) = 8;
  *(a1 + 1280) = 0;
  *(a1 + 1288) = 0x3F4CCCCD3F000000;
  *(a1 + 1296) = 0x4120000042700000;
  *(a1 + 1304) = 0;
  *(a1 + 1312) = xmmword_1BCE3C7C0;
  *(a1 + 1328) = xmmword_1BCE44E90;
  *(a1 + 1344) = 0;
  *(a1 + 1352) = 0x40000000;
  *(a1 + 1360) = 0;
  *(a1 + 1368) = 1;
  *(a1 + 1408) = 0u;
  *(a1 + 1392) = 0u;
  *(a1 + 1376) = 0u;
  *(a1 + 1424) = 0x3F99999A3ECCCCCDLL;
  *(a1 + 1432) = 1;
  *v2 = xmmword_1BCE3BFC0;
  *(a1 + 1456) = 0x42DC000042B40000;
  *(a1 + 1472) = _Q0;
  *(a1 + 1488) = _Q0;
  *(a1 + 1504) = 1097859072;
  *(a1 + 1512) = 0x736168506E6F6F6DLL;
  *(a1 + 1520) = 0xEA00000000003065;
  *(a1 + 1528) = 1112014848;
  *(a1 + 1536) = _Q0;
  *(a1 + 1552) = xmmword_1BCE3F4F0;
  *(a1 + 1568) = 0x4248000042200000;
  *(a1 + 1584) = 0u;
  *(a1 + 1600) = xmmword_1BCE3D880;
  __asm { FMOV            V3.2S, #-30.0 }

  *(a1 + 1616) = -_D3;
  *(a1 + 1624) = 0x40000000;
  *(a1 + 1628) = 256;
  *(a1 + 1630) = 0u;
  *(v2 + 210) = 65793;
  *(a1 + 1650) = 0;
  *(a1 + 1652) = 1;
  *(a1 + 1656) = 0;
  *(a1 + 1657) = v12;
  *(a1 + 1659) = v13;
  *(a1 + 1660) = 1066611507;
  *(a1 + 1664) = 0x40C0000040A00000;
  *(a1 + 1672) = 3;
  *(a1 + 1680) = xmmword_1BCE3C000;
  *(a1 + 1696) = xmmword_1BCE3C010;
  *(a1 + 1712) = xmmword_1BCE3C020;
  *(a1 + 1728) = 0x3F0000003EB33333;
  *(a1 + 1736) = 0x3E800000453B8000;
  *(a1 + 1744) = 0u;
  *(a1 + 1760) = 12;
  *(a1 + 1776) = xmmword_1BCE3D8B0;
  *(a1 + 1792) = xmmword_1BCE3D8C0;
  *(a1 + 1808) = xmmword_1BCE3C7A0;
  *(a1 + 1824) = 1;
  *(a1 + 1828) = xmmword_1BCE3C060;
  *(a1 + 1844) = 1040187392;
  *(a1 + 1848) = 0x4100000041700000;
  *(a1 + 1856) = 3;
  *(a1 + 1864) = 0x40000000;
  *(a1 + 1872) = 0x408000003F400000;
  *(a1 + 1880) = 1109393408;
  *(a1 + 1888) = _Q0;
  *(a1 + 1904) = 0x3DCCCCCD00000000;
  *(a1 + 1912) = 1101004800;
  *(a1 + 1920) = 0;
  *(a1 + 1928) = 1106247680;
  *(a1 + 1936) = _Q0;
  *(a1 + 1952) = 1090519040;
  *(a1 + 1960) = 0x420C000041C80000;
  *(a1 + 1968) = xmmword_1BCE3E700;
  *(a1 + 1984) = 0x3F80000000000000;
  *(a1 + 1992) = 1061158912;
  *(a1 + 2000) = 0x3F4CCCCD3E4CCCCDLL;
  *(a1 + 2008) = 0x3F6666663F333333;
  *(a1 + 2016) = xmmword_1BCE3C7E0;
  *(a1 + 2096) = 0u;
  *(a1 + 2080) = 0u;
  *(a1 + 2064) = 0u;
  *(a1 + 2048) = 0u;
  *(a1 + 2032) = 0u;
  *(a1 + 2112) = 1056964608;
  *(a1 + 2120) = 0x3E2E147B3D8F5C29;
  *(a1 + 2128) = 0x400000003F800000;
  *(a1 + 2136) = 0x4080000040600000;
  *(a1 + 2144) = -1046478848;
  *(a1 + 2160) = _Q0;
  *(a1 + 2176) = _Q0;
  *(a1 + 2192) = 1041865114;
  *(a1 + 2200) = 10;
  *(a1 + 2208) = 0x40A000003FC00000;
  *(a1 + 2224) = xmmword_1BCE3C090;
  *(a1 + 2240) = xmmword_1BCE3C0A0;
  *(a1 + 2256) = _Q0;
  *(a1 + 2304) = 0;
  *(a1 + 2288) = 0u;
  *(a1 + 2272) = 0u;
  *(a1 + 2312) = v4;
  *(a1 + 2320) = v11;
}

__n128 sub_1BCBBD4E0@<Q0>(uint64_t a1@<X8>)
{
  v2 = a1 + 1436;
  v3 = sub_1BCB87E8C();
  sub_1BCBBDC5C();
  *a1 = 0x4006666666666666;
  *(a1 + 8) = 3;
  *(a1 + 16) = 0x3FF0000000000000;
  *(a1 + 24) = 30;
  *(a1 + 32) = xmmword_1BCE3BED0;
  *(a1 + 48) = xmmword_1BCE3BED0;
  *(a1 + 64) = 0x42C8000042480000;
  *(a1 + 72) = 0xC361000000000000;
  *(a1 + 80) = xmmword_1BCE3DE90;
  *(a1 + 96) = xmmword_1BCE3BEF0;
  *(a1 + 112) = 0x3E8000003DF5C28FLL;
  *(a1 + 128) = xmmword_1BCE3C7C0;
  *(a1 + 144) = xmmword_1BCE3D840;
  *(a1 + 160) = xmmword_1BCE3BF00;
  *(a1 + 176) = 1153138688;
  *(a1 + 184) = 0x3E4CCCCD3DA3D70ALL;
  *(a1 + 192) = xmmword_1BCE3C7C0;
  *(a1 + 208) = xmmword_1BCE3C700;
  *(a1 + 224) = xmmword_1BCE3C660;
  *(a1 + 240) = 0x4140000040A00000;
  *(a1 + 248) = 1132068864;
  *(a1 + 256) = 0x3E4CCCCD3DE147AELL;
  *(a1 + 264) = 0x40A0000041700000;
  *(a1 + 272) = 1101004800;
  __asm { FMOV            V0.4S, #1.0 }

  *(a1 + 288) = xmmword_1BCE3C7C0;
  *(a1 + 304) = result;
  *(a1 + 320) = 0x4348000040C00000;
  *(a1 + 328) = 0x3E99999A3E19999ALL;
  *(a1 + 336) = 0x3F00000040A00000;
  *(a1 + 352) = xmmword_1BCE3C7C0;
  *(a1 + 368) = xmmword_1BCE3C700;
  *(a1 + 384) = 0;
  *(a1 + 388) = 0x3B03126F3F800000;
  *(a1 + 400) = xmmword_1BCE3C670;
  *(a1 + 416) = 0x3F0000003F000000;
  *(a1 + 424) = 30;
  *(a1 + 432) = xmmword_1BCE3C680;
  *(a1 + 448) = 0x3E4CCCCD3DCCCCCDLL;
  *(a1 + 464) = result;
  *(a1 + 480) = xmmword_1BCE3D870;
  *(a1 + 496) = 0x43FA000040400000;
  *(a1 + 504) = 1116471296;
  *(a1 + 512) = 0x3E8000003DF5C28FLL;
  *(a1 + 528) = result;
  *(a1 + 544) = result;
  *(a1 + 560) = 0x4248000044BB8000;
  *(a1 + 568) = 0x3E4CCCCD3DA3D70ALL;
  *(a1 + 576) = xmmword_1BCE3C700;
  *(a1 + 592) = xmmword_1BCE3D880;
  *(a1 + 608) = 0x40C0000040800000;
  *(a1 + 624) = xmmword_1BCE3C700;
  *(a1 + 640) = xmmword_1BCE3D880;
  *(a1 + 656) = 0x4190000041200000;
  *(a1 + 664) = 0x400CCCCD3E99999ALL;
  *(a1 + 672) = 0x408000003F800000;
  *(a1 + 688) = result;
  *(a1 + 704) = 1065353216;
  *(a1 + 712) = vdup_n_s32(0x3E4CCCCDu);
  *(a1 + 720) = 0x4120000041100000;
  *(a1 + 728) = 3231711232;
  *(a1 + 736) = 1;
  *(a1 + 744) = 8;
  *(a1 + 752) = xmmword_1BCE56790;
  *(a1 + 768) = 0x617274736F746C41;
  *(a1 + 776) = 0xEF4C202D20737574;
  *(a1 + 784) = 0xD000000000000013;
  *(a1 + 792) = 0x80000001BCE798E0;
  *(a1 + 800) = 9;
  *(a1 + 816) = result;
  *(a1 + 832) = 1065353216;
  *(a1 + 840) = 0x3E99999A3E4CCCCDLL;
  *(a1 + 848) = 0x4158000041380000;
  *(a1 + 856) = 1065353216;
  *(a1 + 864) = 1;
  *(a1 + 872) = 6;
  *(a1 + 880) = xmmword_1BCE42360;
  *(a1 + 896) = 0x2073756C756D7543;
  *(a1 + 904) = 0xEB000000004C202DLL;
  *(a1 + 912) = 0x5F73756C756D7543;
  *(a1 + 920) = 0xEF4C656C676E6953;
  *(a1 + 928) = 10;
  *(a1 + 944) = result;
  *(a1 + 960) = 1065353216;
  *(a1 + 968) = 0x3ECCCCCD3E4CCCCDLL;
  *(a1 + 976) = 0x4110000040D00000;
  *(a1 + 984) = 3221225472;
  *(a1 + 992) = 1;
  *(a1 + 1000) = 6;
  *(a1 + 1008) = xmmword_1BCE567A0;
  *(a1 + 1024) = 0x2073756C756D7543;
  *(a1 + 1032) = 0xEB000000004D202DLL;
  *(a1 + 1040) = 0x5F73756C756D7543;
  *(a1 + 1048) = 0xEF4D656C676E6953;
  *(a1 + 1056) = 15;
  *(a1 + 1072) = result;
  *(a1 + 1088) = 1065353216;
  *(a1 + 1096) = 0x3F8000003F000000;
  *(a1 + 1104) = 0x400000003FC00000;
  *(a1 + 1112) = 0;
  *(a1 + 1120) = 1;
  *(a1 + 1128) = 4;
  *(a1 + 1136) = xmmword_1BCE3D8A0;
  *(a1 + 1152) = 0x617274736F746C41;
  *(a1 + 1160) = 0xEF53202D20737574;
  *(a1 + 1168) = 0xD000000000000013;
  *(a1 + 1176) = 0x80000001BCE792E0;
  *(a1 + 1184) = 6;
  *(a1 + 1200) = result;
  *(a1 + 1216) = xmmword_1BCE567B0;
  *(a1 + 1232) = 0;
  *(a1 + 1236) = 1;
  *(a1 + 1240) = 0x617274736F746C41;
  *(a1 + 1248) = 0xEB00000000737574;
  *(a1 + 1256) = 0xD000000000000013;
  *(a1 + 1264) = 0x80000001BCE79300;
  *(a1 + 1272) = 8;
  *(a1 + 1280) = 0;
  *(a1 + 1288) = 0x400000003F800000;
  *(a1 + 1296) = 0x41C8000042C80000;
  *(a1 + 1304) = 0;
  *(a1 + 1312) = result;
  *(a1 + 1328) = result;
  *(a1 + 1344) = 0;
  *(a1 + 1352) = 0x40000000;
  *(a1 + 1360) = 0;
  *(a1 + 1368) = 1;
  *(a1 + 1408) = 0u;
  *(a1 + 1392) = 0u;
  *(a1 + 1376) = 0u;
  *(a1 + 1424) = 0x3F99999A3ECCCCCDLL;
  *(a1 + 1432) = 1;
  *v2 = xmmword_1BCE3BFC0;
  *(a1 + 1456) = 0x41D3333341BD3333;
  *(a1 + 1472) = result;
  *(a1 + 1488) = result;
  *(a1 + 1504) = 1097859072;
  *(a1 + 1512) = 0x736168506E6F6F6DLL;
  *(a1 + 1520) = 0xEA00000000003065;
  *(a1 + 1528) = 1112014848;
  *(a1 + 1536) = result;
  *(a1 + 1552) = xmmword_1BCE3C770;
  *(a1 + 1568) = 0x4248000042200000;
  *(a1 + 1584) = 0u;
  *(a1 + 1600) = xmmword_1BCE3D880;
  __asm { FMOV            V2.2S, #-30.0 }

  *(a1 + 1616) = -_D2;
  *(a1 + 1624) = 0x40000000;
  *(a1 + 1632) = 0;
  *(a1 + 1628) = 0;
  *(v2 + 198) = 0x1000001010001;
  *(v2 + 206) = 0x10000;
  *(a1 + 1646) = 16843009;
  *(a1 + 1650) = 1;
  *(a1 + 1651) = 0;
  *(a1 + 1656) = 0;
  *(a1 + 1657) = v11;
  *(a1 + 1659) = v12;
  *(a1 + 1660) = 1066611507;
  *(a1 + 1664) = 0x40C0000040A00000;
  *(a1 + 1672) = 3;
  *(a1 + 1680) = xmmword_1BCE3C000;
  *(a1 + 1696) = xmmword_1BCE3C010;
  *(a1 + 1712) = xmmword_1BCE3C020;
  *(a1 + 1728) = 0x3F0000003EB33333;
  *(a1 + 1736) = 0x3E800000453B8000;
  *(a1 + 1760) = 0;
  *(a1 + 1744) = 0u;
  *(a1 + 1776) = xmmword_1BCE3D8B0;
  *(a1 + 1792) = xmmword_1BCE3D8C0;
  *(a1 + 1808) = xmmword_1BCE3C7A0;
  *(a1 + 1824) = 1;
  *(a1 + 1828) = xmmword_1BCE3C7B0;
  *(a1 + 1844) = 1036831949;
  *(a1 + 1848) = 0x4100000041200000;
  *(a1 + 1856) = 3;
  *(a1 + 1864) = 1056964608;
  *(a1 + 1872) = 0x400AE1483F970A3DLL;
  *(a1 + 1880) = 1109917696;
  *(a1 + 1888) = result;
  *(a1 + 1904) = 0x3E4CCCCD40A00000;
  *(a1 + 1912) = 1101004800;
  *(a1 + 1920) = 1;
  *(a1 + 1928) = 1106247680;
  *(a1 + 1936) = result;
  *(a1 + 1952) = 0x40000000;
  *(a1 + 1960) = 0x420C000041C80000;
  *(a1 + 1968) = xmmword_1BCE3EBC0;
  *(a1 + 1984) = 0x3F80000000000000;
  *(a1 + 1992) = 1061158912;
  *(a1 + 2000) = 0x3F6666663E4CCCCDLL;
  *(a1 + 2008) = 0x3F6666663F333333;
  *(a1 + 2016) = xmmword_1BCE3C080;
  *(a1 + 2096) = 0u;
  *(a1 + 2080) = 0u;
  *(a1 + 2064) = 0u;
  *(a1 + 2048) = 0u;
  *(a1 + 2032) = 0u;
  *(a1 + 2112) = 1056964608;
  *(a1 + 2120) = 0x3E4CCCCD3DCCCCCDLL;
  *(a1 + 2128) = 0x400000003F800000;
  *(a1 + 2136) = 0x4040000040000000;
  *(a1 + 2144) = -1046478848;
  *(a1 + 2160) = result;
  *(a1 + 2176) = result;
  *(a1 + 2192) = 1061997773;
  *(a1 + 2200) = 10;
  *(a1 + 2208) = 0x41A000003F4CCCCDLL;
  *(a1 + 2224) = xmmword_1BCE567C0;
  *(a1 + 2240) = xmmword_1BCE43060;
  *(a1 + 2256) = result;
  *(a1 + 2304) = 0;
  *(a1 + 2288) = 0u;
  *(a1 + 2272) = 0u;
  *(a1 + 2312) = v3;
  *(a1 + 2320) = v10;
  return result;
}

double sub_1BCBBDC5C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07858);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1BCE3C820;
  *(v0 + 32) = 0xC056800000000000;
  *(v0 + 40) = 0;
  *(v0 + 48) = xmmword_1BCE3D330;
  *(v0 + 64) = 0x432A000043C80000;
  *(v0 + 72) = 1040242952;
  *(v0 + 80) = xmmword_1BCE3DCE0;
  *(v0 + 96) = xmmword_1BCE3C850;
  *(v0 + 112) = xmmword_1BCE3C860;
  *(v0 + 128) = xmmword_1BCE3C870;
  *(v0 + 144) = xmmword_1BCE3C880;
  *(v0 + 160) = xmmword_1BCE3C890;
  *(v0 + 176) = xmmword_1BCE42430;
  *(v0 + 192) = xmmword_1BCE42440;
  __asm { FMOV            V24.2D, #0.5 }

  *(v0 + 208) = _Q24;
  *(v0 + 224) = xmmword_1BCE3D910;
  __asm { FMOV            V0.2D, #1.0 }

  *(v0 + 240) = _Q0;
  *(v0 + 256) = _Q0;
  *(v0 + 272) = _Q0;
  *(v0 + 288) = _Q0;
  *(v0 + 304) = xmmword_1BCE42450;
  *(v0 + 320) = xmmword_1BCE3E1D0;
  *(v0 + 336) = xmmword_1BCE3C8F0;
  *(v0 + 352) = _Q0;
  *(v0 + 368) = xmmword_1BCE3C900;
  *(v0 + 384) = 0x3E4CCCCD3F800000;
  *(v0 + 392) = 0x3FF0000000000000;
  *(v0 + 400) = _Q0;
  *(v0 + 416) = 0;
  *(v0 + 424) = 1065353216;
  *(v0 + 432) = _Q0;
  *(v0 + 448) = _Q0;
  *(v0 + 464) = _Q0;
  *(v0 + 480) = _Q0;
  *(v0 + 496) = _Q0;
  *(v0 + 512) = _Q0;
  *(v0 + 528) = _Q0;
  *(v0 + 544) = _Q0;
  *(v0 + 560) = _Q0;
  *(v0 + 576) = _Q0;
  *(v0 + 592) = _Q0;
  *(v0 + 608) = _Q0;
  *(v0 + 624) = _Q0;
  *(v0 + 640) = _Q0;
  *(v0 + 656) = _Q0;
  *(v0 + 672) = _Q0;
  *(v0 + 688) = _Q0;
  *(v0 + 704) = _Q0;
  *(v0 + 720) = _Q0;
  *(v0 + 736) = _Q0;
  *(v0 + 752) = _Q0;
  *(v0 + 768) = _Q0;
  *(v0 + 784) = _Q0;
  *(v0 + 800) = _Q0;
  *(v0 + 816) = _Q0;
  *(v0 + 832) = _Q0;
  *(v0 + 848) = _Q0;
  *(v0 + 864) = _Q0;
  *(v0 + 880) = _Q0;
  *(v0 + 896) = _Q0;
  *(v0 + 912) = _Q0;
  *(v0 + 928) = _Q0;
  *(v0 + 944) = _Q0;
  *(v0 + 960) = _Q0;
  *(v0 + 976) = _Q0;
  *(v0 + 992) = _Q0;
  *(v0 + 1008) = _Q0;
  *(v0 + 1024) = _Q0;
  *(v0 + 1040) = _Q0;
  *(v0 + 1056) = _Q0;
  *(v0 + 1072) = vdupq_n_s64(0x3FCF82F740000000uLL);
  *(v0 + 1088) = xmmword_1BCE3C910;
  *(v0 + 1104) = xmmword_1BCE3C920;
  *(v0 + 1120) = xmmword_1BCE3C930;
  *(v0 + 1136) = xmmword_1BCE3D350;
  *(v0 + 1152) = _Q0;
  *(v0 + 1168) = 0x41F0000042FA0000;
  *(v0 + 1176) = 0x3FEB89F080000000;
  *(v0 + 1184) = xmmword_1BCE3D360;
  *(v0 + 1200) = _Q0;
  *(v0 + 1216) = xmmword_1BCE3D370;
  *(v0 + 1232) = 0x3FF0000000000000;
  *(v0 + 1248) = 0xC04E000000000000;
  *(v0 + 1256) = 0;
  *(v0 + 1257) = *v13;
  *(v0 + 1260) = *&v13[3];
  *(v0 + 1264) = xmmword_1BCE3D330;
  *(v0 + 1280) = 0x432A000043C80000;
  *(v0 + 1288) = 1040242952;
  v12 = vdupq_n_s64(0x3FD7575760000000uLL);
  *(v0 + 1296) = v12;
  *(v0 + 1312) = xmmword_1BCE3D340;
  *(v0 + 1328) = xmmword_1BCE3C860;
  *(v0 + 1344) = xmmword_1BCE3C870;
  *(v0 + 1360) = xmmword_1BCE3C880;
  *(v0 + 1376) = xmmword_1BCE3C890;
  *(v0 + 1392) = xmmword_1BCE42430;
  *(v0 + 1408) = xmmword_1BCE42440;
  *(v0 + 1424) = _Q24;
  *(v0 + 1440) = xmmword_1BCE3D910;
  *(v0 + 1456) = _Q0;
  *(v0 + 1472) = _Q0;
  *(v0 + 1488) = _Q0;
  *(v0 + 1504) = _Q0;
  *(v0 + 1520) = xmmword_1BCE42450;
  *(v0 + 1536) = xmmword_1BCE3E1D0;
  *(v0 + 1552) = xmmword_1BCE3C8F0;
  *(v0 + 1568) = _Q0;
  *(v0 + 1584) = xmmword_1BCE3C900;
  *(v0 + 1600) = 0x3E4CCCCD3F800000;
  *(v0 + 1608) = 0x3FF0000000000000;
  *(v0 + 1616) = _Q0;
  *(v0 + 1632) = 0;
  *(v0 + 1640) = 1065353216;
  *(v0 + 1648) = _Q0;
  *(v0 + 1664) = _Q0;
  *(v0 + 1680) = _Q0;
  *(v0 + 1696) = _Q0;
  *(v0 + 1712) = _Q0;
  *(v0 + 1728) = _Q0;
  *(v0 + 1744) = _Q0;
  *(v0 + 1760) = _Q0;
  *(v0 + 1776) = _Q0;
  *(v0 + 1792) = _Q0;
  *(v0 + 1808) = _Q0;
  *(v0 + 1824) = _Q0;
  *(v0 + 1840) = _Q0;
  *(v0 + 1856) = _Q0;
  *(v0 + 1872) = _Q0;
  *(v0 + 1888) = _Q0;
  *(v0 + 1904) = _Q0;
  *(v0 + 1920) = _Q0;
  *(v0 + 1936) = _Q0;
  *(v0 + 1952) = _Q0;
  *(v0 + 1968) = _Q0;
  *(v0 + 1984) = _Q0;
  *(v0 + 2000) = _Q0;
  *(v0 + 2016) = _Q0;
  *(v0 + 2032) = _Q0;
  *(v0 + 2048) = _Q0;
  *(v0 + 2064) = _Q0;
  *(v0 + 2288) = vdupq_n_s64(0x3FCF6CD7E0000000uLL);
  *(v0 + 2304) = xmmword_1BCE3C940;
  *(v0 + 2320) = xmmword_1BCE3C950;
  *(v0 + 2336) = xmmword_1BCE3C960;
  *(v0 + 2400) = xmmword_1BCE3D380;
  *(v0 + 2432) = xmmword_1BCE3D390;
  *(v0 + 2608) = xmmword_1BCE42430;
  *(v0 + 2704) = xmmword_1BCE3D3C0;
  *(v0 + 2720) = xmmword_1BCE3D3D0;
  *(v0 + 2736) = xmmword_1BCE3C9E0;
  *(v0 + 2752) = xmmword_1BCE3E2C0;
  *(v0 + 2768) = xmmword_1BCE42480;
  *(v0 + 2800) = xmmword_1BCE3CA10;
  *(v0 + 2864) = _Q0;
  *(v0 + 2880) = _Q0;
  *(v0 + 2896) = _Q0;
  *(v0 + 2912) = _Q0;
  *(v0 + 2928) = _Q0;
  *(v0 + 2944) = _Q0;
  *(v0 + 2960) = _Q0;
  *(v0 + 2976) = _Q0;
  *(v0 + 2992) = _Q0;
  *(v0 + 3008) = _Q0;
  *(v0 + 3024) = _Q0;
  *(v0 + 3040) = _Q0;
  *(v0 + 3056) = _Q0;
  *(v0 + 3072) = _Q0;
  *(v0 + 3088) = _Q0;
  *(v0 + 3104) = _Q0;
  *(v0 + 3120) = _Q0;
  *(v0 + 3136) = _Q0;
  *(v0 + 3152) = _Q0;
  *(v0 + 3168) = _Q0;
  *(v0 + 3184) = _Q0;
  *(v0 + 3200) = _Q0;
  *(v0 + 3216) = _Q0;
  *(v0 + 3232) = _Q0;
  *(v0 + 3248) = _Q0;
  *(v0 + 3264) = _Q0;
  *(v0 + 3280) = _Q0;
  *(v0 + 3296) = _Q0;
  *(v0 + 3312) = _Q0;
  *(v0 + 3328) = _Q0;
  *(v0 + 3344) = _Q0;
  *(v0 + 3360) = _Q0;
  *(v0 + 3376) = _Q0;
  *(v0 + 3392) = _Q0;
  *(v0 + 3408) = _Q0;
  *(v0 + 3424) = _Q0;
  *(v0 + 3440) = _Q0;
  *(v0 + 3456) = _Q0;
  *(v0 + 3472) = _Q0;
  *(v0 + 3488) = _Q0;
  *(v0 + 3504) = vdupq_n_s64(0x3FCF992720000000uLL);
  *(v0 + 3520) = xmmword_1BCE3CA20;
  *(v0 + 3536) = xmmword_1BCE3CA30;
  *(v0 + 3552) = xmmword_1BCE3CA40;
  *(v0 + 3568) = xmmword_1BCE3D3E0;
  *(v0 + 3584) = _Q0;
  *(v0 + 3600) = 0x41F0000042B40000;
  *(v0 + 3608) = 0x3FE9EB8500000000;
  *(v0 + 3616) = xmmword_1BCE3D610;
  *(v0 + 3632) = xmmword_1BCE3CBC0;
  *(v0 + 3648) = xmmword_1BCE3D400;
  *(v0 + 3664) = 0x3FF0000000000000;
  *(v0 + 3680) = 0xC018000000000000;
  *(v0 + 3688) = 0;
  *(v0 + 3689) = *v15;
  *(v0 + 3692) = *&v15[3];
  *(v0 + 3696) = xmmword_1BCE3CA50;
  *(v0 + 3712) = 0x447A000044480000;
  *(v0 + 3720) = 1061997773;
  *(v0 + 3728) = xmmword_1BCE3CA60;
  *(v0 + 3744) = _Q0;
  *(v0 + 3760) = xmmword_1BCE3CA70;
  *(v0 + 3776) = xmmword_1BCE3CA80;
  *(v0 + 3792) = xmmword_1BCE3CA90;
  *(v0 + 3808) = xmmword_1BCE3CAA0;
  *(v0 + 3824) = xmmword_1BCE424A0;
  *(v0 + 3840) = xmmword_1BCE424B0;
  *(v0 + 3856) = vdupq_n_s64(0x3FE88B6D00000000uLL);
  *(v0 + 3872) = xmmword_1BCE3D960;
  *(v0 + 3888) = _Q0;
  *(v0 + 3904) = _Q0;
  *(v0 + 3920) = _Q0;
  *(v0 + 3936) = _Q0;
  *(v0 + 3952) = _Q0;
  *(v0 + 3968) = xmmword_1BCE3E230;
  *(v0 + 3984) = xmmword_1BCE3CAD0;
  *(v0 + 4000) = xmmword_1BCE3CA00;
  *(v0 + 4016) = xmmword_1BCE3CAE0;
  *(v0 + 4720) = xmmword_1BCE3CB00;
  *(v0 + 4736) = xmmword_1BCE3CB10;
  *(v0 + 4752) = xmmword_1BCE3CB20;
  *(v0 + 4768) = xmmword_1BCE3CB10;
  *(v0 + 4784) = xmmword_1BCE3D410;
  __asm { FMOV            V2.2S, #30.0 }

  *(v0 + 4816) = _D2;
  *(v0 + 4848) = xmmword_1BCE3D430;
  *(v0 + 4864) = xmmword_1BCE3D440;
  *(v0 + 4896) = 0;
  *(v0 + 4928) = 0x44C8000044160000;
  *(v0 + 4944) = xmmword_1BCE3CB40;
  *(v0 + 4960) = xmmword_1BCE3CB50;
  *(v0 + 4976) = xmmword_1BCE3CB60;
  *(v0 + 4992) = xmmword_1BCE3CB70;
  *(v0 + 5008) = xmmword_1BCE3CB80;
  *(v0 + 5024) = xmmword_1BCE3CB90;
  *(v0 + 5168) = xmmword_1BCE3CBD0;
  *(v0 + 5184) = xmmword_1BCE424E0;
  *(v0 + 4904) = 0;
  *(v0 + 5200) = vdupq_n_s64(0x3FEF9F9F80000000uLL);
  strcpy((v0 + 5232), "fff?fff?333?fff?fff?");
  *(v0 + 5936) = xmmword_1BCE3CC10;
  *(v0 + 5968) = xmmword_1BCE3CC30;
  *(v0 + 5952) = xmmword_1BCE3CC20;
  *(v0 + 5984) = xmmword_1BCE3CC20;
  *(v0 + 4832) = xmmword_1BCE3E5A0;
  *(v0 + 4880) = 0x3FF0000000000000;
  *(v0 + 4800) = _Q0;
  *(v0 + 4824) = 0x3FE8000000000000;
  *(v0 + 6000) = xmmword_1BCE3D410;
  *(v0 + 6032) = 0x4170000041A00000;
  *(v0 + 4032) = 1062836634;
  *(v0 + 4040) = 0x3FF0000000000000;
  *(v0 + 4048) = _Q0;
  *(v0 + 4704) = _Q0;
  *(v0 + 4608) = _Q0;
  *(v0 + 4624) = _Q0;
  *(v0 + 4640) = _Q0;
  *(v0 + 4656) = _Q0;
  *(v0 + 4672) = _Q0;
  *(v0 + 4688) = _Q0;
  *(v0 + 4512) = _Q0;
  *(v0 + 4528) = _Q0;
  *(v0 + 4544) = _Q0;
  *(v0 + 4560) = _Q0;
  *(v0 + 4576) = _Q0;
  *(v0 + 4592) = _Q0;
  *(v0 + 4416) = _Q0;
  *(v0 + 4432) = _Q0;
  *(v0 + 4448) = _Q0;
  *(v0 + 4464) = _Q0;
  *(v0 + 4480) = _Q0;
  *(v0 + 4496) = _Q0;
  *(v0 + 4320) = _Q0;
  *(v0 + 4336) = _Q0;
  *(v0 + 4352) = _Q0;
  *(v0 + 4368) = _Q0;
  *(v0 + 4384) = _Q0;
  *(v0 + 4400) = _Q0;
  *(v0 + 4224) = _Q0;
  *(v0 + 4240) = _Q0;
  *(v0 + 4256) = _Q0;
  *(v0 + 4272) = _Q0;
  *(v0 + 4288) = _Q0;
  *(v0 + 4304) = _Q0;
  *(v0 + 4128) = _Q0;
  *(v0 + 4144) = _Q0;
  *(v0 + 4160) = _Q0;
  *(v0 + 4176) = _Q0;
  *(v0 + 4192) = _Q0;
  *(v0 + 4208) = _Q0;
  *(v0 + 4064) = 0;
  *(v0 + 4072) = 0;
  *(v0 + 4080) = _Q0;
  *(v0 + 4096) = _Q0;
  *(v0 + 4112) = _Q0;
  *(v0 + 6048) = xmmword_1BCE3E5A0;
  *(v0 + 6080) = xmmword_1BCE3D460;
  *(v0 + 6128) = xmmword_1BCE3CC40;
  *(v0 + 6144) = 0x44480000443B8000;
  *(v0 + 6160) = xmmword_1BCE3CC50;
  *(v0 + 6176) = xmmword_1BCE3CC60;
  *(v0 + 6192) = xmmword_1BCE3CC70;
  *(v0 + 6208) = xmmword_1BCE3CC80;
  *(v0 + 6224) = xmmword_1BCE3CC90;
  *(v0 + 6240) = xmmword_1BCE3CCA0;
  *(v0 + 6384) = xmmword_1BCE3DAF0;
  *(v0 + 6400) = xmmword_1BCE42520;
  *(v0 + 6416) = xmmword_1BCE42530;
  *(v0 + 6432) = xmmword_1BCE42540;
  *(v0 + 6448) = xmmword_1BCE42550;
  *(v0 + 6480) = xmmword_1BCE3CD00;
  *(v0 + 7152) = xmmword_1BCE3CD10;
  *(v0 + 7184) = xmmword_1BCE3CD30;
  *(v0 + 7168) = xmmword_1BCE3CD20;
  *(v0 + 7200) = xmmword_1BCE3CD20;
  *(v0 + 7264) = xmmword_1BCE3E5B0;
  *(v0 + 7280) = xmmword_1BCE3D480;
  *(v0 + 7296) = xmmword_1BCE3D490;
  *(v0 + 7344) = xmmword_1BCE3CD40;
  *(v0 + 7408) = xmmword_1BCE3CD60;
  *(v0 + 7424) = xmmword_1BCE3C9D0;
  *(v0 + 7440) = xmmword_1BCE3CD70;
  *(v0 + 7456) = xmmword_1BCE3CD80;
  *(v0 + 7552) = _Q0;
  *(v0 + 7632) = xmmword_1BCE42570;
  *(v0 + 7648) = xmmword_1BCE42580;
  *(v0 + 7664) = xmmword_1BCE3CDB0;
  *(v0 + 7696) = xmmword_1BCE3E2F0;
  *(v0 + 8368) = xmmword_1BCE3CDD0;
  *(v0 + 8400) = xmmword_1BCE3CDE0;
  *(v0 + 8480) = xmmword_1BCE3D4A0;
  *(v0 + 8512) = xmmword_1BCE3D4C0;
  *(v0 + 8560) = xmmword_1BCE3CDF0;
  *(v0 + 8624) = xmmword_1BCE3CE00;
  *(v0 + 9696) = xmmword_1BCE3D4D0;
  *(v0 + 9728) = xmmword_1BCE3D4F0;
  *(v0 + 9584) = xmmword_1BCE3CE20;
  *(v0 + 10800) = xmmword_1BCE3CE20;
  *(v0 + 10944) = xmmword_1BCE3D500;
  *(v0 + 9776) = xmmword_1BCE3CE40;
  *(v0 + 10992) = xmmword_1BCE3CE40;
  *(v0 + 9792) = 1151500288;
  *(v0 + 11008) = 1151500288;
  *(v0 + 9840) = xmmword_1BCE3CE50;
  *(v0 + 11056) = xmmword_1BCE3CE50;
  *(v0 + 9856) = xmmword_1BCE3CE60;
  *(v0 + 11072) = xmmword_1BCE3CE60;
  *(v0 + 9872) = xmmword_1BCE3CE70;
  *(v0 + 11088) = xmmword_1BCE3CE70;
  *(v0 + 9888) = xmmword_1BCE3CE80;
  *(v0 + 11104) = xmmword_1BCE3CE80;
  *(v0 + 11264) = xmmword_1BCE42590;
  v8 = vdupq_n_s32(0x3F666666u);
  *(v0 + 8880) = v8;
  *(v0 + 10096) = v8;
  *(v0 + 11312) = v8;
  *(v0 + 10816) = xmmword_1BCE3CE90;
  *(v0 + 12032) = xmmword_1BCE3CE90;
  *(v0 + 9616) = xmmword_1BCE3CE30;
  *(v0 + 12048) = xmmword_1BCE3CE30;
  *(v0 + 12160) = xmmword_1BCE3D510;
  *(v0 + 12208) = xmmword_1BCE3CEC0;
  *(v0 + 8576) = 0x41A0000044A8C000;
  *(v0 + 12224) = 0x41A0000044A8C000;
  v9 = vdupq_n_s64(0x3FECBCBCC0000000uLL);
  *(v0 + 7376) = v9;
  *(v0 + 8592) = v9;
  *(v0 + 9808) = v9;
  *(v0 + 11024) = v9;
  *(v0 + 12240) = v9;
  *(v0 + 7392) = xmmword_1BCE3CD50;
  *(v0 + 8608) = xmmword_1BCE3CD50;
  *(v0 + 9824) = xmmword_1BCE3CD50;
  *(v0 + 11040) = xmmword_1BCE3CD50;
  *(v0 + 12256) = xmmword_1BCE3CD50;
  *(v0 + 12272) = xmmword_1BCE3CED0;
  *(v0 + 12528) = xmmword_1BCE3CEF0;
  *(v0 + 8912) = xmmword_1BCE3CE10;
  *(v0 + 10128) = xmmword_1BCE3CE10;
  *(v0 + 11344) = xmmword_1BCE3CE10;
  *(v0 + 12560) = xmmword_1BCE3CE10;
  *(v0 + 10832) = xmmword_1BCE3CEA0;
  *(v0 + 13264) = xmmword_1BCE3CEA0;
  *(v0 + 13376) = xmmword_1BCE3D520;
  *(v0 + 13424) = xmmword_1BCE3CF00;
  *(v0 + 7360) = 1147207680;
  *(v0 + 13440) = 1147207680;
  *(v0 + 13456) = vdupq_n_s64(0x3FEC9CDC00000000uLL);
  *(v0 + 13472) = xmmword_1BCE3CF10;
  *(v0 + 13488) = xmmword_1BCE3CF20;
  *(v0 + 13504) = xmmword_1BCE3CF30;
  *(v0 + 13520) = xmmword_1BCE3CF40;
  *(v0 + 13536) = xmmword_1BCE3CF50;
  *(v0 + 7488) = xmmword_1BCE3CBA0;
  *(v0 + 13568) = xmmword_1BCE3CBA0;
  *(v0 + 13712) = xmmword_1BCE425F0;
  *(v0 + 13744) = xmmword_1BCE3CF70;
  *(v0 + 13776) = xmmword_1BCE3CF80;
  *(v0 + 12016) = xmmword_1BCE3CEB0;
  *(v0 + 13232) = xmmword_1BCE3CEB0;
  *(v0 + 14448) = xmmword_1BCE3CEB0;
  *(v0 + 14480) = xmmword_1BCE3CF90;
  *(v0 + 14560) = xmmword_1BCE3E5C0;
  *(v0 + 14592) = xmmword_1BCE3D540;
  *(v0 + 14640) = xmmword_1BCE3CFA0;
  *(v0 + 14656) = 0x441EC000443B8000;
  *(v0 + 14672) = xmmword_1BCE3CFB0;
  *(v0 + 2816) = 0x3E4CCCCD3F4CCCCDLL;
  *(v0 + 2824) = 0x3FF0000000000000;
  *(v0 + 2832) = _Q0;
  *(v0 + 2848) = 0;
  *(v0 + 2856) = 1065353216;
  *(v0 + 2080) = _Q0;
  *(v0 + 2096) = _Q0;
  *(v0 + 2112) = _Q0;
  *(v0 + 2128) = _Q0;
  *(v0 + 2144) = _Q0;
  *(v0 + 2784) = xmmword_1BCE3CA00;
  *(v0 + 2160) = _Q0;
  *(v0 + 2176) = _Q0;
  *(v0 + 2672) = _Q0;
  *(v0 + 2688) = _Q0;
  *(v0 + 2473) = *v14;
  *(v0 + 2640) = _Q24;
  *(v0 + 2656) = xmmword_1BCE3DCB0;
  *(v0 + 2476) = *&v14[3];
  *(v0 + 2480) = xmmword_1BCE3D330;
  *(v0 + 2624) = xmmword_1BCE42470;
  *(v0 + 2560) = xmmword_1BCE3C990;
  *(v0 + 2576) = xmmword_1BCE3C9A0;
  *(v0 + 2592) = _Q0;
  *(v0 + 2528) = _Q0;
  *(v0 + 2544) = xmmword_1BCE3C980;
  *(v0 + 2496) = 0x4396000043FA0000;
  *(v0 + 2504) = 1036831949;
  *(v0 + 2512) = xmmword_1BCE3C970;
  *(v0 + 2192) = _Q0;
  *(v0 + 2416) = _Q0;
  *(v0 + 2448) = 0x3FF0000000000000;
  *(v0 + 2464) = 0xC028000000000000;
  *(v0 + 2472) = 0;
  *(v0 + 2208) = _Q0;
  *(v0 + 2352) = xmmword_1BCE3D350;
  *(v0 + 2368) = _Q0;
  *(v0 + 2384) = 0x41F0000042FA0000;
  *(v0 + 2392) = 0x3FEBA9FBE0000000;
  *(v0 + 2224) = _Q0;
  *(v0 + 2240) = _Q0;
  *(v0 + 2256) = _Q0;
  *(v0 + 2272) = _Q0;
  *(v0 + 4905) = *v16;
  *(v0 + 4908) = *&v16[3];
  *(v0 + 4912) = xmmword_1BCE3CB30;
  *(v0 + 4936) = 1061997773;
  *(v0 + 5040) = xmmword_1BCE424D0;
  *(v0 + 5056) = xmmword_1BCE3C8C0;
  *(v0 + 5072) = _Q0;
  *(v0 + 5088) = xmmword_1BCE3DA70;
  *(v0 + 5104) = _Q0;
  *(v0 + 5120) = _Q0;
  *(v0 + 5136) = _Q0;
  *(v0 + 5152) = _Q0;
  *(v0 + 5216) = xmmword_1BCE3CA00;
  *(v0 + 5253) = 0;
  *(v0 + 5254) = 0;
  *(v0 + 5256) = 0x3FF0000000000000;
  *(v0 + 5264) = _Q0;
  *(v0 + 5280) = 0;
  *(v0 + 5288) = 0;
  *(v0 + 5296) = _Q0;
  *(v0 + 5312) = _Q0;
  *(v0 + 5328) = _Q0;
  *(v0 + 5344) = _Q0;
  *(v0 + 5360) = _Q0;
  *(v0 + 5376) = _Q0;
  *(v0 + 5392) = _Q0;
  *(v0 + 5408) = _Q0;
  *(v0 + 5424) = _Q0;
  *(v0 + 5440) = _Q0;
  *(v0 + 5456) = _Q0;
  *(v0 + 5472) = _Q0;
  *(v0 + 5488) = _Q0;
  *(v0 + 5504) = _Q0;
  *(v0 + 5520) = _Q0;
  *(v0 + 5536) = _Q0;
  *(v0 + 5552) = _Q0;
  *(v0 + 5568) = _Q0;
  *(v0 + 5584) = _Q0;
  *(v0 + 5600) = _Q0;
  *(v0 + 5616) = _Q0;
  *(v0 + 5632) = _Q0;
  *(v0 + 5648) = _Q0;
  *(v0 + 5664) = _Q0;
  *(v0 + 5680) = _Q0;
  *(v0 + 5696) = _Q0;
  *(v0 + 5712) = _Q0;
  *(v0 + 5728) = _Q0;
  *(v0 + 5744) = _Q0;
  *(v0 + 5760) = _Q0;
  *(v0 + 5776) = _Q0;
  *(v0 + 5792) = _Q0;
  *(v0 + 5808) = _Q0;
  *(v0 + 5824) = _Q0;
  *(v0 + 5840) = _Q0;
  *(v0 + 5856) = _Q0;
  *(v0 + 5872) = _Q0;
  *(v0 + 5888) = _Q0;
  *(v0 + 5904) = _Q0;
  *(v0 + 5920) = _Q0;
  *(v0 + 6016) = _Q0;
  *(v0 + 6040) = 0x3FE6666680000000;
  *(v0 + 6064) = _Q0;
  *(v0 + 6121) = *v17;
  *(v0 + 6096) = 0x3FF0000000000000;
  *(v0 + 6112) = 0x4017FFFFFFFFFFFALL;
  *(v0 + 6120) = 0;
  *(v0 + 6124) = *&v17[3];
  *(v0 + 6152) = 1060739482;
  *(v0 + 6256) = _Q0;
  *(v0 + 6272) = _Q0;
  *(v0 + 6288) = _Q0;
  *(v0 + 6304) = xmmword_1BCE3DAE0;
  *(v0 + 6320) = _Q0;
  *(v0 + 6336) = _Q0;
  *(v0 + 6352) = _Q0;
  *(v0 + 6368) = _Q0;
  *(v0 + 6464) = 1063675494;
  *(v0 + 6472) = 0x3FEF857180000000;
  *(v0 + 6496) = 0x3FE0000000000000;
  *(v0 + 6504) = 0;
  *(v0 + 6512) = _Q0;
  *(v0 + 6528) = _Q0;
  *(v0 + 6544) = _Q0;
  *(v0 + 6560) = _Q0;
  *(v0 + 6576) = _Q0;
  *(v0 + 6592) = _Q0;
  *(v0 + 6608) = _Q0;
  *(v0 + 6624) = _Q0;
  *(v0 + 6640) = _Q0;
  *(v0 + 6656) = _Q0;
  *(v0 + 6672) = _Q0;
  *(v0 + 6688) = _Q0;
  *(v0 + 6704) = _Q0;
  *(v0 + 6720) = _Q0;
  *(v0 + 6736) = _Q0;
  *(v0 + 6752) = _Q0;
  *(v0 + 6768) = _Q0;
  *(v0 + 6784) = _Q0;
  *(v0 + 6800) = _Q0;
  *(v0 + 6816) = _Q0;
  *(v0 + 6832) = _Q0;
  *(v0 + 6848) = _Q0;
  *(v0 + 6864) = _Q0;
  *(v0 + 6880) = _Q0;
  *(v0 + 6896) = _Q0;
  *(v0 + 6912) = _Q0;
  *(v0 + 6928) = _Q0;
  *(v0 + 6944) = _Q0;
  *(v0 + 6960) = _Q0;
  *(v0 + 6976) = _Q0;
  *(v0 + 6992) = _Q0;
  *(v0 + 7008) = _Q0;
  *(v0 + 7024) = _Q0;
  *(v0 + 7040) = _Q0;
  *(v0 + 7056) = _Q0;
  *(v0 + 7072) = _Q0;
  *(v0 + 7088) = _Q0;
  *(v0 + 7104) = _Q0;
  *(v0 + 7120) = _Q0;
  *(v0 + 7136) = _Q0;
  *(v0 + 7216) = _Q0;
  *(v0 + 7232) = _Q0;
  *(v0 + 7248) = 0x4170000000000000;
  *(v0 + 7256) = 0x3FE206D360000000;
  *(v0 + 7312) = 0x3FF0000000000000;
  *(v0 + 7328) = 0x4027FFFFFFFFFFFALL;
  *(v0 + 7337) = *v18;
  *(v0 + 7336) = 0;
  *(v0 + 7340) = *&v18[3];
  *(v0 + 7368) = 1059481190;
  *(v0 + 7472) = _Q0;
  *(v0 + 7504) = _Q0;
  *(v0 + 7520) = xmmword_1BCE3DAE0;
  *(v0 + 7536) = _Q0;
  *(v0 + 14688) = xmmword_1BCE3CFC0;
  *(v0 + 14704) = xmmword_1BCE3CFD0;
  *(v0 + 14720) = xmmword_1BCE3CFE0;
  *(v0 + 14736) = xmmword_1BCE3CFF0;
  *(v0 + 14752) = xmmword_1BCE3D000;
  *(v0 + 13600) = xmmword_1BCE3DAE0;
  *(v0 + 14816) = xmmword_1BCE3DAE0;
  *(v0 + 14864) = xmmword_1BCE3D010;
  *(v0 + 14928) = xmmword_1BCE42660;
  *(v0 + 14944) = xmmword_1BCE42670;
  *(v0 + 14960) = xmmword_1BCE42680;
  *(v0 + 14992) = xmmword_1BCE3D060;
  *(v0 + 15664) = xmmword_1BCE3D070;
  *(v0 + 15680) = xmmword_1BCE3D080;
  *(v0 + 15696) = xmmword_1BCE3D090;
  *(v0 + 15712) = xmmword_1BCE3D0A0;
  *(v0 + 15776) = xmmword_1BCE3E5D0;
  *(v0 + 9712) = xmmword_1BCE3D4E0;
  *(v0 + 10928) = xmmword_1BCE3D4E0;
  *(v0 + 12144) = xmmword_1BCE3D4E0;
  *(v0 + 13360) = xmmword_1BCE3D4E0;
  *(v0 + 15792) = xmmword_1BCE3D4E0;
  *(v0 + 15808) = xmmword_1BCE3D560;
  *(v0 + 15856) = xmmword_1BCE3D0B0;
  *(v0 + 15872) = 0x449EC00044160000;
  *(v0 + 15888) = xmmword_1BCE3D0C0;
  *(v0 + 15904) = xmmword_1BCE3D0D0;
  *(v0 + 15920) = xmmword_1BCE3D0E0;
  *(v0 + 15936) = xmmword_1BCE3D0F0;
  *(v0 + 15952) = xmmword_1BCE3D100;
  *(v0 + 15968) = xmmword_1BCE3D110;
  *(v0 + 8384) = xmmword_1BCE3CBB0;
  *(v0 + 9600) = xmmword_1BCE3CBB0;
  *(v0 + 13248) = xmmword_1BCE3CBB0;
  *(v0 + 14464) = xmmword_1BCE3CBB0;
  *(v0 + 16000) = xmmword_1BCE3CBB0;
  *(v0 + 8736) = xmmword_1BCE3DA70;
  *(v0 + 9952) = xmmword_1BCE3DA70;
  *(v0 + 11168) = xmmword_1BCE3DA70;
  *(v0 + 12384) = xmmword_1BCE3DA70;
  *(v0 + 16032) = xmmword_1BCE3DA70;
  *(v0 + 10064) = xmmword_1BCE3CCB0;
  *(v0 + 11248) = xmmword_1BCE3CCB0;
  *(v0 + 11280) = xmmword_1BCE3CCB0;
  *(v0 + 16080) = xmmword_1BCE3CCB0;
  *(v0 + 7616) = xmmword_1BCE3E230;
  *(v0 + 8832) = xmmword_1BCE3E230;
  *(v0 + 10048) = xmmword_1BCE3E230;
  *(v0 + 12480) = xmmword_1BCE3E230;
  *(v0 + 13696) = xmmword_1BCE3E230;
  *(v0 + 16128) = xmmword_1BCE3E230;
  *(v0 + 16144) = xmmword_1BCE42690;
  *(v0 + 16160) = xmmword_1BCE426A0;
  *(v0 + 16176) = xmmword_1BCE426B0;
  *(v0 + 7680) = 1063675494;
  *(v0 + 8896) = 1063675494;
  *(v0 + 10112) = 1063675494;
  *(v0 + 11328) = 1063675494;
  *(v0 + 12544) = 1063675494;
  *(v0 + 13760) = 1063675494;
  *(v0 + 14976) = 1063675494;
  *(v0 + 16192) = 1063675494;
  *(v0 + 16208) = xmmword_1BCE3D150;
  *(v0 + 16880) = xmmword_1BCE3D160;
  *(v0 + 16896) = xmmword_1BCE3D170;
  *(v0 + 16912) = xmmword_1BCE3D180;
  *(v0 + 16928) = xmmword_1BCE3D190;
  *(v0 + 16944) = xmmword_1BCE3D570;
  *(v0 + 16960) = xmmword_1BCE3D580;
  *(v0 + 8464) = 0x4170000000000000;
  *(v0 + 9680) = 0x4170000000000000;
  *(v0 + 10896) = 0x4170000000000000;
  *(v0 + 12112) = 0x4170000000000000;
  *(v0 + 13328) = 0x4170000000000000;
  *(v0 + 14544) = 0x4170000000000000;
  *(v0 + 15760) = 0x4170000000000000;
  *(v0 + 16976) = 0x4170000000000000;
  *(v0 + 16992) = xmmword_1BCE3E5E0;
  *(v0 + 17024) = xmmword_1BCE3D5A0;
  *(v0 + 17072) = xmmword_1BCE3CB30;
  *(v0 + 17088) = 0x4483CC9D44160000;
  *(v0 + 17104) = xmmword_1BCE3D5B0;
  *(v0 + 17136) = xmmword_1BCE3D1C0;
  *(v0 + 17152) = xmmword_1BCE3D1D0;
  *(v0 + 17168) = xmmword_1BCE3D1E0;
  *(v0 + 17184) = xmmword_1BCE3D1F0;
  *(v0 + 17200) = xmmword_1BCE424D0;
  *(v0 + 17216) = xmmword_1BCE3C8C0;
  *(v0 + 17232) = vdupq_n_s64(0x3FE8F90420000000uLL);
  *(v0 + 17248) = xmmword_1BCE3DC60;
  *(v0 + 14912) = xmmword_1BCE3ECB0;
  *(v0 + 17344) = xmmword_1BCE3ECB0;
  *(v0 + 17360) = xmmword_1BCE3CAD0;
  *(v0 + 17392) = xmmword_1BCE426C0;
  *(v0 + 17408) = 1062836634;
  *(v0 + 17424) = xmmword_1BCE3D220;
  *(v0 + 18096) = xmmword_1BCE3D230;
  *(v0 + 18112) = xmmword_1BCE3D240;
  *(v0 + 18128) = xmmword_1BCE3D250;
  *(v0 + 18144) = xmmword_1BCE3D260;
  *(v0 + 18160) = xmmword_1BCE3D5C0;
  *(v0 + 18176) = xmmword_1BCE3D5D0;
  *(v0 + 18192) = 0x41F0000041A00000;
  *(v0 + 18208) = xmmword_1BCE3E5F0;
  *(v0 + 8496) = xmmword_1BCE3D4B0;
  *(v0 + 14576) = xmmword_1BCE3D4B0;
  *(v0 + 18224) = xmmword_1BCE3D4B0;
  *(v0 + 18240) = xmmword_1BCE3D5F0;
  *(v0 + 18304) = 0x4396000043FA0000;
  *(v0 + 18320) = xmmword_1BCE3C970;
  *(v0 + 18352) = xmmword_1BCE3C980;
  *(v0 + 18368) = xmmword_1BCE3C990;
  *(v0 + 18384) = xmmword_1BCE3C9A0;
  *(v0 + 18432) = xmmword_1BCE42470;
  *(v0 + 18464) = xmmword_1BCE3DCB0;
  *(v0 + 18512) = xmmword_1BCE3D2B0;
  *(v0 + 18528) = xmmword_1BCE3D2C0;
  *(v0 + 18544) = xmmword_1BCE3D2D0;
  *(v0 + 18560) = xmmword_1BCE3E350;
  *(v0 + 18576) = xmmword_1BCE426F0;
  *(v0 + 13728) = xmmword_1BCE3CA00;
  *(v0 + 17376) = xmmword_1BCE3CA00;
  *(v0 + 18592) = xmmword_1BCE3CA00;
  *(v0 + 18608) = xmmword_1BCE3CA10;
  *(v0 + 18624) = 0x3E4CCCCD3F4CCCCDLL;
  *(v0 + 19312) = xmmword_1BCE3D2E0;
  *(v0 + 19344) = xmmword_1BCE3D2F0;
  *(v0 + 19376) = xmmword_1BCE3D600;
  *(v0 + 19408) = 0x41F0000042B40000;
  *(v0 + 19424) = xmmword_1BCE3D610;
  *(v0 + 8416) = xmmword_1BCE3CBC0;
  *(v0 + 9632) = xmmword_1BCE3CBC0;
  *(v0 + 10848) = xmmword_1BCE3CBC0;
  *(v0 + 12064) = xmmword_1BCE3CBC0;
  *(v0 + 13280) = xmmword_1BCE3CBC0;
  *(v0 + 14496) = xmmword_1BCE3CBC0;
  *(v0 + 17008) = xmmword_1BCE3CBC0;
  *(v0 + 19440) = xmmword_1BCE3CBC0;
  *(v0 + 19456) = xmmword_1BCE3D620;
  *(v0 + 19536) = v12;
  *(v0 + 19552) = xmmword_1BCE3D340;
  __asm { FMOV            V1.2D, #0.25 }

  *(v0 + 20528) = _Q1;
  *(v0 + 20560) = xmmword_1BCE3D300;
  *(v0 + 20640) = xmmword_1BCE3D630;
  *(v0 + 20672) = xmmword_1BCE3D640;
  *(v0 + 18288) = xmmword_1BCE3D330;
  *(v0 + 19504) = xmmword_1BCE3D330;
  *(v0 + 20720) = xmmword_1BCE3D330;
  *(v0 + 19520) = 0x432A000043C80000;
  *(v0 + 20736) = 0x432A000043C80000;
  *(v0 + 20752) = xmmword_1BCE3DCE0;
  *(v0 + 20768) = xmmword_1BCE3C850;
  *(v0 + 19568) = xmmword_1BCE3C860;
  *(v0 + 20784) = xmmword_1BCE3C860;
  *(v0 + 19584) = xmmword_1BCE3C870;
  *(v0 + 20800) = xmmword_1BCE3C870;
  *(v0 + 19600) = xmmword_1BCE3C880;
  *(v0 + 20816) = xmmword_1BCE3C880;
  *(v0 + 19616) = xmmword_1BCE3C890;
  *(v0 + 20832) = xmmword_1BCE3C890;
  *(v0 + 18416) = xmmword_1BCE426E0;
  *(v0 + 19632) = xmmword_1BCE426E0;
  *(v0 + 20848) = xmmword_1BCE426E0;
  *(v0 + 19648) = xmmword_1BCE42440;
  *(v0 + 20864) = xmmword_1BCE42440;
  *(v0 + 10912) = _Q24;
  *(v0 + 12128) = _Q24;
  *(v0 + 13344) = _Q24;
  *(v0 + 18448) = _Q24;
  *(v0 + 19664) = _Q24;
  *(v0 + 20880) = _Q24;
  *(v0 + 19680) = xmmword_1BCE3D910;
  *(v0 + 20896) = xmmword_1BCE3D910;
  *(v0 + 19760) = xmmword_1BCE42700;
  *(v0 + 20976) = xmmword_1BCE42700;
  *(v0 + 18064) = _Q0;
  *(v0 + 18080) = _Q0;
  *(v0 + 17968) = _Q0;
  *(v0 + 17984) = _Q0;
  *(v0 + 18000) = _Q0;
  *(v0 + 18016) = _Q0;
  *(v0 + 18032) = _Q0;
  *(v0 + 18048) = _Q0;
  *(v0 + 17872) = _Q0;
  *(v0 + 17888) = _Q0;
  *(v0 + 17904) = _Q0;
  *(v0 + 17920) = _Q0;
  *(v0 + 17936) = _Q0;
  *(v0 + 17952) = _Q0;
  *(v0 + 17776) = _Q0;
  *(v0 + 17792) = _Q0;
  *(v0 + 17808) = _Q0;
  *(v0 + 17824) = _Q0;
  *(v0 + 17840) = _Q0;
  *(v0 + 17856) = _Q0;
  *(v0 + 17680) = _Q0;
  *(v0 + 17696) = _Q0;
  *(v0 + 17712) = _Q0;
  *(v0 + 17728) = _Q0;
  *(v0 + 17744) = _Q0;
  *(v0 + 17760) = _Q0;
  *(v0 + 17584) = _Q0;
  *(v0 + 17600) = _Q0;
  *(v0 + 17616) = _Q0;
  *(v0 + 17632) = _Q0;
  *(v0 + 17648) = _Q0;
  *(v0 + 17664) = _Q0;
  *(v0 + 17488) = _Q0;
  *(v0 + 17504) = _Q0;
  *(v0 + 17520) = _Q0;
  *(v0 + 17536) = _Q0;
  *(v0 + 17552) = _Q0;
  *(v0 + 17568) = _Q0;
  *(v0 + 19776) = xmmword_1BCE3E1D0;
  *(v0 + 20992) = xmmword_1BCE3E1D0;
  *(v0 + 17456) = _Q0;
  *(v0 + 17472) = _Q0;
  *(v0 + 8848) = xmmword_1BCE3C8F0;
  *(v0 + 17416) = 0x3FEF23CF40000000;
  *(v0 + 17440) = 0;
  *(v0 + 17448) = 665496235;
  *(v0 + 19792) = xmmword_1BCE3C8F0;
  *(v0 + 21008) = xmmword_1BCE3C8F0;
  *(v0 + 17296) = _Q0;
  *(v0 + 17312) = _Q0;
  *(v0 + 17328) = _Q0;
  *(v0 + 19824) = xmmword_1BCE3C900;
  *(v0 + 21040) = xmmword_1BCE3C900;
  *(v0 + 17264) = _Q0;
  *(v0 + 17280) = _Q0;
  *(v0 + 19840) = 0x3E4CCCCD3F800000;
  *(v0 + 21056) = 0x3E4CCCCD3F800000;
  *(v0 + 21744) = vdupq_n_s64(0x3FCFEB6B80000000uLL);
  *(v0 + 17096) = 1050388079;
  *(v0 + 17120) = _Q0;
  *(v0 + 19328) = xmmword_1BCE3C910;
  *(v0 + 19360) = xmmword_1BCE3C910;
  *(v0 + 20544) = xmmword_1BCE3C910;
  *(v0 + 20576) = xmmword_1BCE3C910;
  *(v0 + 21760) = xmmword_1BCE3C910;
  *(v0 + 21776) = xmmword_1BCE3D310;
  *(v0 + 21792) = xmmword_1BCE3D320;
  *(v0 + 20592) = xmmword_1BCE3D350;
  *(v0 + 21808) = xmmword_1BCE3D350;
  *(v0 + 17065) = *v26;
  *(v0 + 17040) = 0x3FF0000000000000;
  *(v0 + 17056) = 0xC017FFFFFFFFFFE8;
  *(v0 + 17064) = 1;
  *(v0 + 17068) = *&v26[3];
  *(v0 + 20624) = 0x41F0000042FA0000;
  *(v0 + 21840) = 0x41F0000042FA0000;
  *(v0 + 21856) = xmmword_1BCE3D360;
  *(v0 + 16984) = 0x3FE8000000000000;
  *(v0 + 7568) = _Q0;
  *(v0 + 7584) = _Q0;
  *(v0 + 7600) = _Q0;
  *(v0 + 7728) = _Q0;
  *(v0 + 16848) = _Q0;
  *(v0 + 16864) = _Q0;
  *(v0 + 16752) = _Q0;
  *(v0 + 16768) = _Q0;
  *(v0 + 16784) = _Q0;
  *(v0 + 16800) = _Q0;
  *(v0 + 16816) = _Q0;
  *(v0 + 16832) = _Q0;
  *(v0 + 16656) = _Q0;
  *(v0 + 16672) = _Q0;
  *(v0 + 16688) = _Q0;
  *(v0 + 16704) = _Q0;
  *(v0 + 16720) = _Q0;
  *(v0 + 16736) = _Q0;
  *(v0 + 16560) = _Q0;
  *(v0 + 16576) = _Q0;
  *(v0 + 16592) = _Q0;
  *(v0 + 16608) = _Q0;
  *(v0 + 16624) = _Q0;
  *(v0 + 16640) = _Q0;
  *(v0 + 16464) = _Q0;
  *(v0 + 16480) = _Q0;
  *(v0 + 16496) = _Q0;
  *(v0 + 16512) = _Q0;
  *(v0 + 16528) = _Q0;
  *(v0 + 16544) = _Q0;
  *(v0 + 16368) = _Q0;
  *(v0 + 0x4000) = _Q0;
  *(v0 + 16400) = _Q0;
  *(v0 + 16416) = _Q0;
  *(v0 + 16432) = _Q0;
  *(v0 + 16448) = _Q0;
  *(v0 + 16272) = _Q0;
  *(v0 + 16288) = _Q0;
  *(v0 + 16304) = _Q0;
  *(v0 + 16320) = _Q0;
  *(v0 + 16336) = _Q0;
  *(v0 + 16352) = _Q0;
  *(v0 + 7744) = _Q0;
  *(v0 + 7760) = _Q0;
  *(v0 + 16224) = 0;
  *(v0 + 16232) = 0;
  *(v0 + 16240) = _Q0;
  *(v0 + 16256) = _Q0;
  *(v0 + 7776) = _Q0;
  *(v0 + 7792) = _Q0;
  *(v0 + 7808) = _Q0;
  *(v0 + 7824) = _Q0;
  *(v0 + 16200) = 0x3FEE6AC340000000;
  *(v0 + 7840) = _Q0;
  *(v0 + 7856) = _Q0;
  *(v0 + 16048) = _Q0;
  *(v0 + 16064) = _Q0;
  *(v0 + 16096) = _Q0;
  *(v0 + 16112) = _Q0;
  *(v0 + 7872) = _Q0;
  *(v0 + 7888) = _Q0;
  *(v0 + 7904) = _Q0;
  *(v0 + 7920) = _Q0;
  *(v0 + 15984) = _Q0;
  *(v0 + 16016) = _Q0;
  *(v0 + 7936) = _Q0;
  *(v0 + 7952) = _Q0;
  *(v0 + 7968) = _Q0;
  *(v0 + 7984) = _Q0;
  *(v0 + 8000) = _Q0;
  *(v0 + 15849) = *v25;
  *(v0 + 15852) = *&v25[3];
  *(v0 + 15880) = 1061997773;
  *(v0 + 8016) = _Q0;
  *(v0 + 8032) = _Q0;
  *(v0 + 8048) = _Q0;
  *(v0 + 15824) = 0x3FF0000000000000;
  *(v0 + 15840) = 0;
  *(v0 + 15848) = 1;
  *(v0 + 8064) = _Q0;
  *(v0 + 8080) = _Q0;
  *(v0 + 15728) = _Q0;
  *(v0 + 15744) = _Q0;
  *(v0 + 15768) = 0x3FE4CCCCC0000000;
  *(v0 + 8096) = _Q0;
  *(v0 + 8112) = _Q0;
  *(v0 + 8128) = _Q0;
  *(v0 + 15616) = _Q0;
  *(v0 + 15632) = _Q0;
  *(v0 + 15648) = _Q0;
  *(v0 + 15520) = _Q0;
  *(v0 + 15536) = _Q0;
  *(v0 + 15552) = _Q0;
  *(v0 + 15568) = _Q0;
  *(v0 + 15584) = _Q0;
  *(v0 + 15600) = _Q0;
  *(v0 + 15424) = _Q0;
  *(v0 + 15440) = _Q0;
  *(v0 + 15456) = _Q0;
  *(v0 + 15472) = _Q0;
  *(v0 + 15488) = _Q0;
  *(v0 + 15504) = _Q0;
  *(v0 + 15328) = _Q0;
  *(v0 + 15344) = _Q0;
  *(v0 + 15360) = _Q0;
  *(v0 + 15376) = _Q0;
  *(v0 + 15392) = _Q0;
  *(v0 + 15408) = _Q0;
  *(v0 + 15232) = _Q0;
  *(v0 + 15248) = _Q0;
  *(v0 + 15264) = _Q0;
  *(v0 + 15280) = _Q0;
  *(v0 + 15296) = _Q0;
  *(v0 + 15312) = _Q0;
  *(v0 + 15136) = _Q0;
  *(v0 + 15152) = _Q0;
  *(v0 + 15168) = _Q0;
  *(v0 + 15184) = _Q0;
  *(v0 + 15200) = _Q0;
  *(v0 + 15216) = _Q0;
  *(v0 + 8144) = _Q0;
  *(v0 + 15056) = _Q0;
  *(v0 + 15072) = _Q0;
  *(v0 + 15088) = _Q0;
  *(v0 + 15104) = _Q0;
  *(v0 + 15120) = _Q0;
  *(v0 + 14984) = 0x3FEDEF5480000000;
  *(v0 + 15008) = 0x3FE0000000000000;
  *(v0 + 15016) = 0;
  *(v0 + 15024) = _Q0;
  *(v0 + 15040) = _Q0;
  *(v0 + 8160) = _Q0;
  *(v0 + 8176) = _Q0;
  *(v0 + 0x2000) = _Q0;
  *(v0 + 8208) = _Q0;
  *(v0 + 8224) = _Q0;
  *(v0 + 14896) = _Q0;
  *(v0 + 8240) = _Q0;
  *(v0 + 8256) = _Q0;
  *(v0 + 14800) = _Q0;
  *(v0 + 14832) = _Q0;
  *(v0 + 14848) = _Q0;
  *(v0 + 14880) = _Q0;
  *(v0 + 8272) = _Q0;
  *(v0 + 8288) = _Q0;
  *(v0 + 8304) = _Q0;
  *(v0 + 14768) = _Q0;
  *(v0 + 14784) = _Q0;
  *(v0 + 8320) = _Q0;
  *(v0 + 8336) = _Q0;
  *(v0 + 8352) = _Q0;
  *(v0 + 14633) = *v24;
  *(v0 + 8432) = _Q0;
  *(v0 + 8448) = _Q0;
  *(v0 + 14636) = *&v24[3];
  *(v0 + 14664) = 1061158912;
  *(v0 + 8472) = 0x3FE0000000000000;
  *(v0 + 8528) = 0x3FF0000000000000;
  *(v0 + 14624) = 0x4018000000000010;
  *(v0 + 14632) = 1;
  *(v0 + 8544) = 0x4032000000000000;
  *(v0 + 8553) = *v19;
  *(v0 + 14608) = 0x3FF0000000000000;
  *(v0 + 8552) = 0;
  *(v0 + 8556) = *&v19[3];
  *(v0 + 14512) = _Q0;
  *(v0 + 14528) = _Q0;
  *(v0 + 14552) = 0x3FE0000000000000;
  *(v0 + 8584) = 1061158912;
  *(v0 + 8640) = _Q0;
  *(v0 + 14384) = _Q0;
  *(v0 + 14400) = _Q0;
  *(v0 + 14416) = _Q0;
  *(v0 + 14432) = _Q0;
  *(v0 + 14288) = _Q0;
  *(v0 + 14304) = _Q0;
  *(v0 + 14320) = _Q0;
  *(v0 + 14336) = _Q0;
  *(v0 + 14352) = _Q0;
  *(v0 + 14368) = _Q0;
  *(v0 + 14192) = _Q0;
  *(v0 + 14208) = _Q0;
  *(v0 + 14224) = _Q0;
  *(v0 + 14240) = _Q0;
  *(v0 + 14256) = _Q0;
  *(v0 + 14272) = _Q0;
  *(v0 + 14096) = _Q0;
  *(v0 + 14112) = _Q0;
  *(v0 + 14128) = _Q0;
  *(v0 + 14144) = _Q0;
  *(v0 + 14160) = _Q0;
  *(v0 + 14176) = _Q0;
  *(v0 + 14000) = _Q0;
  *(v0 + 14016) = _Q0;
  *(v0 + 14032) = _Q0;
  *(v0 + 14048) = _Q0;
  *(v0 + 14064) = _Q0;
  *(v0 + 14080) = _Q0;
  *(v0 + 13904) = _Q0;
  *(v0 + 13920) = _Q0;
  *(v0 + 13936) = _Q0;
  *(v0 + 13952) = _Q0;
  *(v0 + 13968) = _Q0;
  *(v0 + 13984) = _Q0;
  *(v0 + 8656) = _Q0;
  *(v0 + 13824) = _Q0;
  *(v0 + 13840) = _Q0;
  *(v0 + 13856) = _Q0;
  *(v0 + 13872) = _Q0;
  *(v0 + 13888) = _Q0;
  *(v0 + 8672) = _Q0;
  *(v0 + 13768) = 0x3FED73E5C0000000;
  *(v0 + 13792) = 0x3FF0000000000000;
  *(v0 + 13800) = 0;
  *(v0 + 13808) = _Q0;
  *(v0 + 8688) = _Q0;
  *(v0 + 8704) = _Q0;
  *(v0 + 8720) = _Q0;
  *(v0 + 8752) = _Q0;
  *(v0 + 13664) = _Q0;
  *(v0 + 13680) = _Q0;
  *(v0 + 8768) = _Q0;
  *(v0 + 8784) = _Q0;
  *(v0 + 13584) = _Q0;
  *(v0 + 13616) = _Q0;
  *(v0 + 13632) = _Q0;
  *(v0 + 13648) = _Q0;
  *(v0 + 8800) = _Q0;
  *(v0 + 8816) = _Q0;
  *(v0 + 8864) = _Q0;
  *(v0 + 8904) = 0x3FEB9B9BC0000000;
  *(v0 + 13552) = _Q0;
  *(v0 + 8928) = 0x3FF0000000000000;
  *(v0 + 8936) = 0;
  *(v0 + 8944) = _Q0;
  *(v0 + 8960) = _Q0;
  *(v0 + 8976) = _Q0;
  *(v0 + 8992) = _Q0;
  *(v0 + 13417) = *v23;
  *(v0 + 13448) = 1060320051;
  *(v0 + 13392) = 0x3FF0000000000000;
  *(v0 + 13408) = 0x4028000000000010;
  *(v0 + 13416) = 1;
  *(v0 + 13420) = *&v23[3];
  *(v0 + 9008) = _Q0;
  *(v0 + 9024) = _Q0;
  *(v0 + 9040) = _Q0;
  *(v0 + 13296) = _Q0;
  *(v0 + 13312) = _Q0;
  *(v0 + 13336) = 0x3FE0000000000000;
  *(v0 + 9056) = _Q0;
  *(v0 + 9072) = _Q0;
  *(v0 + 9088) = _Q0;
  *(v0 + 9104) = _Q0;
  *(v0 + 13200) = _Q0;
  *(v0 + 13216) = _Q0;
  *(v0 + 13104) = _Q0;
  *(v0 + 13120) = _Q0;
  *(v0 + 13136) = _Q0;
  *(v0 + 13152) = _Q0;
  *(v0 + 13168) = _Q0;
  *(v0 + 13184) = _Q0;
  *(v0 + 13008) = _Q0;
  *(v0 + 13024) = _Q0;
  *(v0 + 13040) = _Q0;
  *(v0 + 13056) = _Q0;
  *(v0 + 13072) = _Q0;
  *(v0 + 13088) = _Q0;
  *(v0 + 12912) = _Q0;
  *(v0 + 12928) = _Q0;
  *(v0 + 12944) = _Q0;
  *(v0 + 12960) = _Q0;
  *(v0 + 12976) = _Q0;
  *(v0 + 12992) = _Q0;
  *(v0 + 12816) = _Q0;
  *(v0 + 12832) = _Q0;
  *(v0 + 12848) = _Q0;
  *(v0 + 12864) = _Q0;
  *(v0 + 12880) = _Q0;
  *(v0 + 12896) = _Q0;
  *(v0 + 12720) = _Q0;
  *(v0 + 12736) = _Q0;
  *(v0 + 12752) = _Q0;
  *(v0 + 12768) = _Q0;
  *(v0 + 12784) = _Q0;
  *(v0 + 12800) = _Q0;
  *(v0 + 12624) = _Q0;
  *(v0 + 12640) = _Q0;
  *(v0 + 12656) = _Q0;
  *(v0 + 12672) = _Q0;
  *(v0 + 12688) = _Q0;
  *(v0 + 12704) = _Q0;
  *(v0 + 9120) = _Q0;
  *(v0 + 12552) = 0x3FEB9B9BC0000000;
  *(v0 + 12576) = 0x3FF0000000000000;
  *(v0 + 12584) = 0;
  *(v0 + 12592) = _Q0;
  *(v0 + 12608) = _Q0;
  *(v0 + 9136) = _Q0;
  *(v0 + 9152) = _Q0;
  *(v0 + 9168) = _Q0;
  *(v0 + 12464) = _Q0;
  *(v0 + 12496) = _Q0;
  *(v0 + 12512) = _Q0;
  *(v0 + 9184) = _Q0;
  *(v0 + 12368) = _Q0;
  *(v0 + 12400) = _Q0;
  *(v0 + 12416) = _Q0;
  *(v0 + 12432) = _Q0;
  *(v0 + 12448) = _Q0;
  *(v0 + 9200) = _Q0;
  *(v0 + 12288) = _Q0;
  *(v0 + 12304) = _Q0;
  *(v0 + 12320) = _Q0;
  *(v0 + 12336) = _Q0;
  *(v0 + 12352) = _Q0;
  *(v0 + 9216) = _Q0;
  *(v0 + 9232) = _Q0;
  *(v0 + 9248) = _Q0;
  *(v0 + 9264) = _Q0;
  *(v0 + 12200) = 1;
  *(v0 + 12201) = *v22;
  *(v0 + 12204) = *&v22[3];
  *(v0 + 12232) = 1061158912;
  *(v0 + 9280) = _Q0;
  *(v0 + 9296) = _Q0;
  *(v0 + 9312) = _Q0;
  *(v0 + 12120) = 0x3FE0000000000000;
  *(v0 + 12176) = 0x3FF0000000000000;
  *(v0 + 12192) = 0x4032000000000000;
  *(v0 + 9328) = _Q0;
  *(v0 + 9344) = _Q0;
  *(v0 + 9360) = _Q0;
  *(v0 + 9376) = _Q0;
  *(v0 + 12080) = _Q0;
  *(v0 + 12096) = _Q0;
  *(v0 + 9392) = _Q0;
  *(v0 + 11936) = _Q0;
  *(v0 + 11952) = _Q0;
  *(v0 + 11968) = _Q0;
  *(v0 + 11984) = _Q0;
  *(v0 + 12000) = _Q0;
  *(v0 + 11840) = _Q0;
  *(v0 + 11856) = _Q0;
  *(v0 + 11872) = _Q0;
  *(v0 + 11888) = _Q0;
  *(v0 + 11904) = _Q0;
  *(v0 + 11920) = _Q0;
  *(v0 + 11744) = _Q0;
  *(v0 + 11760) = _Q0;
  *(v0 + 11776) = _Q0;
  *(v0 + 11792) = _Q0;
  *(v0 + 11808) = _Q0;
  *(v0 + 11824) = _Q0;
  *(v0 + 11648) = _Q0;
  *(v0 + 11664) = _Q0;
  *(v0 + 11680) = _Q0;
  *(v0 + 11696) = _Q0;
  *(v0 + 11712) = _Q0;
  *(v0 + 11728) = _Q0;
  *(v0 + 11552) = _Q0;
  *(v0 + 11568) = _Q0;
  *(v0 + 11584) = _Q0;
  *(v0 + 11600) = _Q0;
  *(v0 + 11616) = _Q0;
  *(v0 + 11632) = _Q0;
  *(v0 + 11456) = _Q0;
  *(v0 + 11472) = _Q0;
  *(v0 + 11488) = _Q0;
  *(v0 + 11504) = _Q0;
  *(v0 + 11520) = _Q0;
  *(v0 + 11536) = _Q0;
  *(v0 + 11368) = 0;
  *(v0 + 11376) = _Q0;
  *(v0 + 11392) = _Q0;
  *(v0 + 11408) = _Q0;
  *(v0 + 11424) = _Q0;
  *(v0 + 11440) = _Q0;
  *(v0 + 9408) = _Q0;
  *(v0 + 9424) = _Q0;
  *(v0 + 9440) = _Q0;
  *(v0 + 11296) = _Q0;
  *(v0 + 11336) = 0x3FEB9B9BC0000000;
  *(v0 + 11360) = 0x3FF0000000000000;
  *(v0 + 9456) = _Q0;
  *(v0 + 9472) = _Q0;
  *(v0 + 9488) = _Q0;
  *(v0 + 11200) = _Q0;
  *(v0 + 11216) = _Q0;
  *(v0 + 11232) = _Q0;
  *(v0 + 9504) = _Q0;
  *(v0 + 9520) = _Q0;
  *(v0 + 11120) = _Q0;
  *(v0 + 11136) = _Q0;
  *(v0 + 11152) = _Q0;
  *(v0 + 11184) = _Q0;
  *(v0 + 9536) = _Q0;
  *(v0 + 9552) = _Q0;
  *(v0 + 9568) = _Q0;
  *(v0 + 9648) = _Q0;
  *(v0 + 9664) = _Q0;
  *(v0 + 9688) = 0x3FD9999980000000;
  *(v0 + 9744) = 0x3FF0000000000000;
  *(v0 + 9769) = *v20;
  *(v0 + 10985) = *v21;
  *(v0 + 11016) = 1061997773;
  *(v0 + 9760) = 0x403DFFFFFFFFFFFELL;
  *(v0 + 10976) = 0x403E000000000000;
  *(v0 + 10984) = 1;
  *(v0 + 10988) = *&v21[3];
  *(v0 + 9768) = 0;
  *(v0 + 9772) = *&v20[3];
  *(v0 + 9800) = 1061997773;
  *(v0 + 10904) = 0x3FE0000000000000;
  *(v0 + 10960) = 0x3FF0000000000000;
  *(v0 + 9904) = _Q0;
  *(v0 + 9920) = _Q0;
  *(v0 + 9936) = _Q0;
  *(v0 + 9968) = _Q0;
  *(v0 + 10864) = _Q0;
  *(v0 + 10880) = _Q0;
  *(v0 + 10704) = _Q0;
  *(v0 + 10720) = _Q0;
  *(v0 + 10736) = _Q0;
  *(v0 + 10752) = _Q0;
  *(v0 + 10768) = _Q0;
  *(v0 + 10784) = _Q0;
  *(v0 + 10608) = _Q0;
  *(v0 + 10624) = _Q0;
  *(v0 + 10640) = _Q0;
  *(v0 + 10656) = _Q0;
  *(v0 + 10672) = _Q0;
  *(v0 + 10688) = _Q0;
  *(v0 + 10512) = _Q0;
  *(v0 + 10528) = _Q0;
  *(v0 + 10544) = _Q0;
  *(v0 + 10560) = _Q0;
  *(v0 + 10576) = _Q0;
  *(v0 + 10592) = _Q0;
  *(v0 + 10416) = _Q0;
  *(v0 + 10432) = _Q0;
  *(v0 + 10448) = _Q0;
  *(v0 + 10464) = _Q0;
  *(v0 + 10480) = _Q0;
  *(v0 + 10496) = _Q0;
  *(v0 + 10320) = _Q0;
  *(v0 + 10336) = _Q0;
  *(v0 + 10352) = _Q0;
  *(v0 + 10368) = _Q0;
  *(v0 + 10384) = _Q0;
  *(v0 + 10400) = _Q0;
  *(v0 + 10224) = _Q0;
  *(v0 + 10240) = _Q0;
  *(v0 + 10256) = _Q0;
  *(v0 + 10272) = _Q0;
  *(v0 + 10288) = _Q0;
  *(v0 + 10304) = _Q0;
  *(v0 + 10144) = 0x3FF0000000000000;
  *(v0 + 10152) = 0;
  *(v0 + 10160) = _Q0;
  *(v0 + 10176) = _Q0;
  *(v0 + 10192) = _Q0;
  *(v0 + 10208) = _Q0;
  *(v0 + 9984) = _Q0;
  *(v0 + 10000) = _Q0;
  *(v0 + 10016) = _Q0;
  *(v0 + 10032) = _Q0;
  *(v0 + 10080) = _Q0;
  *(v0 + 10120) = 0x3FEB9B9BC0000000;
  *(v0 + 18336) = _Q0;
  *(v0 + 18400) = _Q0;
  *(v0 + 18480) = _Q0;
  *(v0 + 18496) = _Q0;
  *(v0 + 18640) = _Q0;
  *(v0 + 18672) = _Q0;
  *(v0 + 18688) = _Q0;
  *(v0 + 18704) = _Q0;
  *(v0 + 18720) = _Q0;
  *(v0 + 18736) = _Q0;
  *(v0 + 18752) = _Q0;
  *(v0 + 18768) = _Q0;
  *(v0 + 18784) = _Q0;
  *(v0 + 18800) = _Q0;
  *(v0 + 18816) = _Q0;
  *(v0 + 18832) = _Q0;
  *(v0 + 18848) = _Q0;
  *(v0 + 18864) = _Q0;
  *(v0 + 18880) = _Q0;
  *(v0 + 18896) = _Q0;
  *(v0 + 18912) = _Q0;
  *(v0 + 18928) = _Q0;
  *(v0 + 18944) = _Q0;
  *(v0 + 18960) = _Q0;
  *(v0 + 18976) = _Q0;
  *(v0 + 18992) = _Q0;
  *(v0 + 19008) = _Q0;
  *(v0 + 19024) = _Q0;
  *(v0 + 19040) = _Q0;
  *(v0 + 19056) = _Q0;
  *(v0 + 19072) = _Q0;
  *(v0 + 19088) = _Q0;
  *(v0 + 19104) = _Q0;
  *(v0 + 19120) = _Q0;
  *(v0 + 19136) = _Q0;
  *(v0 + 19152) = _Q0;
  *(v0 + 19168) = _Q0;
  *(v0 + 19184) = _Q0;
  *(v0 + 19200) = _Q0;
  *(v0 + 19216) = _Q0;
  *(v0 + 19232) = _Q0;
  *(v0 + 19248) = _Q0;
  *(v0 + 19264) = _Q0;
  *(v0 + 19280) = _Q0;
  *(v0 + 19296) = _Q0;
  *(v0 + 19392) = _Q0;
  *(v0 + 19696) = _Q0;
  *(v0 + 19712) = _Q0;
  *(v0 + 19728) = _Q0;
  *(v0 + 19744) = _Q0;
  *(v0 + 19808) = _Q0;
  *(v0 + 19856) = _Q0;
  *(v0 + 19888) = _Q0;
  *(v0 + 19904) = _Q0;
  *(v0 + 19920) = _Q0;
  *(v0 + 19936) = _Q0;
  *(v0 + 19952) = _Q0;
  *(v0 + 19968) = _Q0;
  *(v0 + 19984) = _Q0;
  *(v0 + 20000) = _Q0;
  *(v0 + 20016) = _Q0;
  *(v0 + 20032) = _Q0;
  *(v0 + 20048) = _Q0;
  *(v0 + 20064) = _Q0;
  *(v0 + 20080) = _Q0;
  *(v0 + 20096) = _Q0;
  *(v0 + 20112) = _Q0;
  *(v0 + 20128) = _Q0;
  *(v0 + 20144) = _Q0;
  *(v0 + 20160) = _Q0;
  *(v0 + 20176) = _Q0;
  *(v0 + 20192) = _Q0;
  *(v0 + 20208) = _Q0;
  *(v0 + 20224) = _Q0;
  *(v0 + 20240) = _Q0;
  *(v0 + 20256) = _Q0;
  *(v0 + 20272) = _Q0;
  *(v0 + 20288) = _Q0;
  *(v0 + 20304) = _Q0;
  *(v0 + 20320) = _Q0;
  *(v0 + 20336) = _Q0;
  *(v0 + 20352) = _Q0;
  *(v0 + 20368) = _Q0;
  *(v0 + 20384) = _Q0;
  *(v0 + 20400) = _Q0;
  *(v0 + 20416) = _Q0;
  *(v0 + 20432) = _Q0;
  *(v0 + 20448) = _Q0;
  *(v0 + 20464) = _Q0;
  *(v0 + 20480) = _Q0;
  *(v0 + 20496) = _Q0;
  *(v0 + 20512) = _Q0;
  *(v0 + 20608) = _Q0;
  *(v0 + 20656) = _Q0;
  *(v0 + 20912) = _Q0;
  *(v0 + 20928) = _Q0;
  *(v0 + 20944) = _Q0;
  *(v0 + 20960) = _Q0;
  *(v0 + 21024) = _Q0;
  *(v0 + 21072) = _Q0;
  *(v0 + 21104) = _Q0;
  *(v0 + 21120) = _Q0;
  *(v0 + 21136) = _Q0;
  *(v0 + 21152) = _Q0;
  *(v0 + 21168) = _Q0;
  *(v0 + 21184) = _Q0;
  *(v0 + 21200) = _Q0;
  *(v0 + 21216) = _Q0;
  *(v0 + 21232) = _Q0;
  *(v0 + 21248) = _Q0;
  *(v0 + 21264) = _Q0;
  *(v0 + 21280) = _Q0;
  *(v0 + 21296) = _Q0;
  *(v0 + 21312) = _Q0;
  *(v0 + 21328) = _Q0;
  *(v0 + 21344) = _Q0;
  *(v0 + 21360) = _Q0;
  *(v0 + 21376) = _Q0;
  *(v0 + 21392) = _Q0;
  *(v0 + 21408) = _Q0;
  *(v0 + 21424) = _Q0;
  *(v0 + 21440) = _Q0;
  *(v0 + 21456) = _Q0;
  *(v0 + 21472) = _Q0;
  *(v0 + 21488) = _Q0;
  *(v0 + 21504) = _Q0;
  *(v0 + 21520) = _Q0;
  *(v0 + 21536) = _Q0;
  *(v0 + 21552) = _Q0;
  *(v0 + 21568) = _Q0;
  *(v0 + 21584) = _Q0;
  *(v0 + 21600) = _Q0;
  *(v0 + 21616) = _Q0;
  *(v0 + 21632) = _Q0;
  *(v0 + 21648) = _Q0;
  *(v0 + 21664) = _Q0;
  *(v0 + 21680) = _Q0;
  *(v0 + 21696) = _Q0;
  *(v0 + 21712) = _Q0;
  *(v0 + 21728) = _Q0;
  *(v0 + 21824) = _Q0;
  *(v0 + 21872) = _Q0;
  result = 0.799999952;
  *(v0 + 21888) = xmmword_1BCE3D370;
  *(v0 + 7688) = 0x3FEF0AE2E0000000;
  *(v0 + 7712) = 0x3FF0000000000000;
  *(v0 + 7720) = 0;
  *(v0 + 18200) = 0x3FE99999A0000000;
  *(v0 + 18256) = 0x3FF0000000000000;
  *(v0 + 18272) = 0xC028000000000000;
  *(v0 + 18280) = 1;
  *(v0 + 18281) = *v27;
  *(v0 + 18284) = *&v27[3];
  *(v0 + 18312) = 1036831949;
  *(v0 + 18632) = 0x3FF0000000000000;
  *(v0 + 18656) = 0;
  *(v0 + 18664) = 1065353216;
  *(v0 + 19416) = 0x3FE93332C0000000;
  *(v0 + 19472) = 0x3FF0000000000000;
  *(v0 + 19488) = 0xC04E000000000002;
  *(v0 + 19496) = 1;
  *(v0 + 19497) = *v28;
  *(v0 + 19500) = *&v28[3];
  *(v0 + 19528) = 1040242952;
  *(v0 + 19848) = 0x3FF0000000000000;
  *(v0 + 19872) = 0;
  *(v0 + 19880) = 1065353216;
  *(v0 + 20632) = 0x3FEB89F0C0000000;
  *(v0 + 20688) = 0x3FF0000000000000;
  *(v0 + 20704) = 0xC056800000000000;
  *(v0 + 20712) = 1;
  *(v0 + 20713) = *v29;
  *(v0 + 20716) = *&v29[3];
  *(v0 + 20744) = 1040242952;
  *(v0 + 21064) = 0x3FF0000000000000;
  *(v0 + 21088) = 0;
  *(v0 + 21096) = 1065353216;
  *(v0 + 21848) = 0x3FEB89F080000000;
  *(v0 + 21904) = 0x3FF0000000000000;
  return result;
}

double UIWindow.nativeBounds.getter()
{
  OUTLINED_FUNCTION_0_46();
  v1 = v0;
  v2 = OUTLINED_FUNCTION_1_50();
  [v2 displayScale];
  v4 = v3;

  OUTLINED_FUNCTION_0_46();
  v5 = OUTLINED_FUNCTION_1_50();
  [v5 displayScale];

  OUTLINED_FUNCTION_0_46();
  v6 = OUTLINED_FUNCTION_1_50();
  [v6 displayScale];

  OUTLINED_FUNCTION_0_46();
  v7 = OUTLINED_FUNCTION_1_50();
  [v7 displayScale];

  return v1 * v4;
}

uint64_t HorizontalBarPointView.init(point:pointColor:gradient:)@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  *a5 = result;
  *(a5 + 8) = a2 & 1;
  *(a5 + 16) = a3;
  *(a5 + 24) = a4;
  *(a5 + 32) = 0;
  return result;
}

uint64_t HorizontalBarPointView.BarPointStyle.hashValue.getter()
{
  v1 = *v0;
  sub_1BCE1E100();
  MEMORY[0x1BFB30850](v1);
  return sub_1BCE1E150();
}

uint64_t HorizontalBarPointView.init(point:pointColor:gradient:style:)@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X4>, uint64_t a6@<X8>)
{
  v6 = *a5;
  *a6 = result;
  *(a6 + 8) = a2 & 1;
  *(a6 + 16) = a3;
  *(a6 + 24) = a4;
  *(a6 + 32) = v6;
  return result;
}

unint64_t sub_1BCBC011C()
{
  result = qword_1EBD0A930;
  if (!qword_1EBD0A930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD0A930);
  }

  return result;
}

uint64_t sub_1BCBC018C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 33))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 16);
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

uint64_t sub_1BCBC01CC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 33) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 33) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for HorizontalBarPointView.BarPointStyle(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1BCBC02EC()
{
  result = qword_1EDA1E9E8;
  if (!qword_1EDA1E9E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD0A928);
    sub_1BCBC0378();
    sub_1BC99C898();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA1E9E8);
  }

  return result;
}

unint64_t sub_1BCBC0378()
{
  result = qword_1EDA1E940;
  if (!qword_1EDA1E940)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD0A920);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA1E940);
  }

  return result;
}

double sub_1BCBC03DC@<D0>(uint64_t a1@<X8>)
{
  v2 = a1 + 1436;
  sub_1BCBC0B20();
  v4 = v3;
  sub_1BCBC0B20();
  *a1 = 0x4006666666666666;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0x3FF0000000000000;
  *(a1 + 24) = 48;
  *(a1 + 32) = xmmword_1BCE3BED0;
  *(a1 + 48) = xmmword_1BCE3BED0;
  *(a1 + 64) = 0x42C8000042480000;
  *(a1 + 72) = 0xC3FA000000000000;
  *(a1 + 80) = xmmword_1BCE51690;
  *(a1 + 96) = xmmword_1BCE56920;
  *(a1 + 112) = 0x3E8000003DF5C28FLL;
  *(a1 + 128) = xmmword_1BCE3C7C0;
  *(a1 + 144) = xmmword_1BCE3D840;
  *(a1 + 160) = xmmword_1BCE3BF00;
  *(a1 + 176) = 1153138688;
  *(a1 + 184) = 0x3E4CCCCD3DA3D70ALL;
  *(a1 + 192) = xmmword_1BCE3C7C0;
  *(a1 + 208) = xmmword_1BCE3C700;
  *(a1 + 224) = xmmword_1BCE3E070;
  *(a1 + 240) = 0x429C0000409A882FLL;
  *(a1 + 248) = 1147207680;
  *(a1 + 256) = 0x3E23D70A3D23D70ALL;
  *(a1 + 264) = 0x40A0000041400000;
  *(a1 + 272) = 1084292935;
  __asm { FMOV            V1.4S, #1.0 }

  *(a1 + 288) = xmmword_1BCE3C700;
  *(a1 + 304) = _Q1;
  *(a1 + 320) = 0x44C8000042820000;
  *(a1 + 328) = 0x3E9999993E3851EBLL;
  *(a1 + 336) = 0x40000000403F7D9CLL;
  *(a1 + 352) = xmmword_1BCE3E080;
  *(a1 + 368) = xmmword_1BCE3E090;
  *(a1 + 384) = 1;
  *(a1 + 388) = 0x3CA3D70A3F800000;
  *(a1 + 400) = xmmword_1BCE3BF20;
  *(a1 + 416) = 0x3F0000003F000000;
  *(a1 + 424) = 10;
  *(a1 + 432) = xmmword_1BCE3BF30;
  *(a1 + 448) = 0x3E4CCCCD3DCCCCCDLL;
  *(a1 + 464) = _Q1;
  *(a1 + 480) = xmmword_1BCE3D870;
  *(a1 + 496) = 0x43FA000040400000;
  *(a1 + 504) = 1116471296;
  *(a1 + 512) = 0x3E8000003DF5C28FLL;
  *(a1 + 528) = _Q1;
  *(a1 + 544) = _Q1;
  *(a1 + 560) = 0x4248000044BB8000;
  *(a1 + 568) = 0x3E4CCCCD3DA3D70ALL;
  *(a1 + 576) = xmmword_1BCE3C700;
  *(a1 + 592) = xmmword_1BCE3D880;
  *(a1 + 608) = 0x4100000040A00000;
  *(a1 + 624) = xmmword_1BCE3C700;
  *(a1 + 640) = xmmword_1BCE3D880;
  *(a1 + 656) = 0x4220000041200000;
  *(a1 + 664) = 0x3FC000003E99999ALL;
  *(a1 + 672) = 0x40A000003F800000;
  *(a1 + 688) = _Q1;
  *(a1 + 704) = 1065353216;
  *(a1 + 712) = 0x404000003FC00000;
  *(a1 + 720) = 0x4182A3D74124CCCDLL;
  *(a1 + 728) = 1096625756;
  *(a1 + 736) = 1;
  *(a1 + 744) = 4;
  *(a1 + 752) = xmmword_1BCE3E0A0;
  *(a1 + 768) = 0x7970736957;
  *(a1 + 776) = 0xE500000000000000;
  strcpy((a1 + 784), "Wispy_Single");
  *(a1 + 797) = 0;
  *(a1 + 798) = -5120;
  *(a1 + 800) = 6;
  *(a1 + 816) = _Q1;
  *(a1 + 832) = 1065353216;
  *(a1 + 840) = 0x4019999A3F99999ALL;
  *(a1 + 848) = 0x4160000041200000;
  *(a1 + 856) = 1082365648;
  *(a1 + 864) = 1;
  *(a1 + 872) = 4;
  *(a1 + 880) = xmmword_1BCE3E0B0;
  *(a1 + 896) = 0x7970736957;
  *(a1 + 904) = 0xE500000000000000;
  strcpy((a1 + 912), "Wispy_Single");
  *(a1 + 925) = 0;
  *(a1 + 926) = -5120;
  *(a1 + 928) = 6;
  *(a1 + 944) = _Q1;
  *(a1 + 960) = 1065353216;
  *(a1 + 968) = 0x4019999A3F19999ALL;
  *(a1 + 976) = 0x4100000040E00000;
  *(a1 + 984) = 1083393800;
  *(a1 + 992) = 1;
  *(a1 + 1000) = 4;
  *(a1 + 1008) = xmmword_1BCE3C6F0;
  *(a1 + 1024) = 0x7970736957;
  *(a1 + 1032) = 0xE500000000000000;
  strcpy((a1 + 1040), "Wispy_Single");
  *(a1 + 1053) = 0;
  *(a1 + 1054) = -5120;
  *(a1 + 1056) = 6;
  *(a1 + 1072) = _Q1;
  *(a1 + 1088) = 1065353216;
  *(a1 + 1096) = 0;
  __asm { FMOV            V3.2S, #3.25 }

  *(a1 + 1104) = _D3;
  *(a1 + 1112) = 0x42820000C0D00000;
  *(a1 + 1120) = 0;
  *(a1 + 1128) = 2;
  *(a1 + 1136) = xmmword_1BCE3C710;
  *(a1 + 1152) = 0x7970736957;
  *(a1 + 1160) = 0xE500000000000000;
  strcpy((a1 + 1168), "Wispy_Single");
  *(a1 + 1181) = 0;
  *(a1 + 1182) = -5120;
  *(a1 + 1184) = 6;
  *(a1 + 1200) = _Q1;
  *(a1 + 1216) = xmmword_1BCE4E6E0;
  *(a1 + 1232) = 0;
  *(a1 + 1236) = 1;
  *(a1 + 1240) = 0x73757461727453;
  *(a1 + 1248) = 0xE700000000000000;
  *(a1 + 1256) = 0x5F73757461727453;
  *(a1 + 1264) = 0xEF74656B6E616C42;
  *(a1 + 1272) = 8;
  *(a1 + 1280) = 0;
  *(a1 + 1288) = 0x3F11EB853E8A3D70;
  *(a1 + 1296) = 0x4316000042AA0000;
  *(a1 + 1304) = 1082130432;
  *(a1 + 1312) = xmmword_1BCE3E0D0;
  *(a1 + 1328) = xmmword_1BCE3E0E0;
  *(a1 + 1344) = 0x3E5A2A5200000000;
  *(a1 + 1352) = 1069547520;
  *(a1 + 1360) = 0;
  *(a1 + 1368) = 5;
  *(a1 + 1408) = 0u;
  *(a1 + 1392) = 0u;
  *(a1 + 1376) = 0u;
  *(a1 + 1424) = 0x3F99999A3ECCCCCDLL;
  *(a1 + 1432) = 1;
  *v2 = xmmword_1BCE3BFC0;
  *(a1 + 1456) = 0x42DC000042B40000;
  *(a1 + 1472) = _Q1;
  *(a1 + 1488) = _Q1;
  *(a1 + 1504) = 1097859072;
  *(a1 + 1512) = 0x736168506E6F6F6DLL;
  *(a1 + 1520) = 0xEA00000000003065;
  *(a1 + 1528) = 1112014848;
  *(a1 + 1536) = _Q1;
  *(a1 + 1552) = xmmword_1BCE3E0F0;
  *(a1 + 1568) = 0x42A2CCCD42200000;
  *(a1 + 1584) = 0u;
  *(a1 + 1600) = xmmword_1BCE3E100;
  __asm { FMOV            V3.2S, #-30.0 }

  *(a1 + 1616) = -_D3;
  *(a1 + 1624) = 0x40000000;
  *(a1 + 1628) = 16842752;
  *(a1 + 1637) = 0;
  *(a1 + 1632) = 0;
  *(a1 + 1645) = 257;
  *(v2 + 211) = 0;
  *(a1 + 1651) = 769;
  *(a1 + 1656) = 0;
  *(a1 + 1657) = v14;
  *(a1 + 1659) = v15;
  *(a1 + 1660) = 1066611507;
  *(a1 + 1664) = 0x40C0000040A00000;
  *(a1 + 1672) = 3;
  *(a1 + 1680) = xmmword_1BCE3C000;
  *(a1 + 1696) = xmmword_1BCE3C010;
  *(a1 + 1712) = xmmword_1BCE3C020;
  *(a1 + 1728) = 0x3F0000003EB33333;
  *(a1 + 1736) = 0x3E800000453B8000;
  *(a1 + 1744) = 0u;
  *(a1 + 1760) = 13;
  *(a1 + 1776) = xmmword_1BCE3D8B0;
  *(a1 + 1792) = xmmword_1BCE3D8C0;
  *(a1 + 1808) = xmmword_1BCE3C7A0;
  *(a1 + 1824) = 1;
  *(a1 + 1828) = xmmword_1BCE3C060;
  *(a1 + 1844) = 1052770304;
  *(a1 + 1848) = 0x4100000041700000;
  *(a1 + 1856) = 3;
  *(a1 + 1864) = 0x40000000;
  *(a1 + 1872) = 0x408000003F400000;
  *(a1 + 1880) = 1109393408;
  *(a1 + 1888) = _Q1;
  *(a1 + 1904) = 0x3E99999A00000000;
  *(a1 + 1912) = 1101004800;
  *(a1 + 1920) = 0;
  *(a1 + 1928) = 1106247680;
  *(a1 + 1936) = _Q1;
  *(a1 + 1952) = 1077936128;
  *(a1 + 1960) = 0x420C000041C80000;
  *(a1 + 1968) = xmmword_1BCE4E6F0;
  *(a1 + 1984) = 0x3F80000040C00000;
  *(a1 + 1992) = 1061158912;
  *(a1 + 2000) = 0x3F4CCCCD3E4CCCCDLL;
  *(a1 + 2008) = 0x3F6666663F333333;
  *(a1 + 2016) = xmmword_1BCE3C7E0;
  *(a1 + 2096) = 0u;
  *(a1 + 2080) = 0u;
  *(a1 + 2064) = 0u;
  *(a1 + 2048) = 0u;
  *(a1 + 2032) = 0u;
  *(a1 + 2112) = 1056964608;
  *(a1 + 2120) = 0x3E4CCCCD3DA3D70ALL;
  *(a1 + 2128) = 0x3F4CCCCD3F000000;
  *(a1 + 2136) = 0x4040000040000000;
  *(a1 + 2144) = -1046478848;
  *(a1 + 2160) = _Q1;
  *(a1 + 2176) = _Q1;
  *(a1 + 2192) = 1065353216;
  *(a1 + 2200) = 10;
  *(a1 + 2208) = 0x40A000003FC00000;
  *(a1 + 2224) = xmmword_1BCE3C090;
  result = 2.00000047;
  *(a1 + 2240) = xmmword_1BCE3C0A0;
  *(a1 + 2256) = _Q1;
  *(a1 + 2288) = 0u;
  *(a1 + 2272) = 0u;
  *(a1 + 2304) = 3;
  *(a1 + 2312) = v4;
  *(a1 + 2320) = v13;
  return result;
}