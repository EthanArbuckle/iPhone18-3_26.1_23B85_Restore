uint64_t WeatherConditionBackgroundOptions.effectViewID.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  *a1 = v2;
  a1[1] = v3;
  return sub_1BC9775B8(v2, v3);
}

uint64_t sub_1BC9775B8(uint64_t a1, unint64_t a2)
{
  if (a2 >= 5)
  {
  }

  return result;
}

uint64_t static VFXEffectViewID.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  v5 = a2[1];
  switch(v3)
  {
    case 0uLL:
      if (v5)
      {
        goto LABEL_13;
      }

      sub_1BC977830(*a1, 0);
      v6 = v4;
      v7 = 0;
      goto LABEL_20;
    case 1uLL:
      if (v5 != 1)
      {
        goto LABEL_13;
      }

      v8 = 1;
      sub_1BC977830(*a1, 1uLL);
      sub_1BC977830(v4, 1uLL);
      return v8;
    case 2uLL:
      if (v5 != 2)
      {
        goto LABEL_13;
      }

      sub_1BC977830(*a1, 2uLL);
      v6 = v4;
      v7 = 2;
      goto LABEL_20;
    case 3uLL:
      if (v5 != 3)
      {
        goto LABEL_13;
      }

      sub_1BC977830(*a1, 3uLL);
      v6 = v4;
      v7 = 3;
      goto LABEL_20;
    case 4uLL:
      if (v5 != 4)
      {
        goto LABEL_13;
      }

      sub_1BC977830(*a1, 4uLL);
      v6 = v4;
      v7 = 4;
      goto LABEL_20;
    default:
      if (v5 >= 5)
      {
        v13 = *a1;
        if (v2 != v4 || v3 != v5)
        {
          v15 = sub_1BCE1E090();
          v16 = OUTLINED_FUNCTION_10_3();
          OUTLINED_FUNCTION_0_86(v16, v17);
          v18 = OUTLINED_FUNCTION_10_3();
          sub_1BC977830(v18, v19);
          return v15 & 1;
        }

        OUTLINED_FUNCTION_0_86(v13, v3);
        v6 = v2;
        v7 = v3;
LABEL_20:
        sub_1BC977830(v6, v7);
        return 1;
      }

      else
      {
LABEL_13:
        v9 = OUTLINED_FUNCTION_10_3();
        OUTLINED_FUNCTION_0_86(v9, v10);
        v11 = OUTLINED_FUNCTION_10_3();
        sub_1BC977830(v11, v12);
        return 0;
      }
  }
}

void sub_1BC97779C()
{
  if (!qword_1EDA1C1E0)
  {
    type metadata accessor for NSUnitSpeed.WeatherFormatComponent(255);
    sub_1BC9500CC(qword_1EDA1C180, type metadata accessor for NSUnitSpeed.WeatherFormatComponent);
    v0 = sub_1BCE1D6D0();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDA1C1E0);
    }
  }
}

uint64_t sub_1BC977830(uint64_t a1, unint64_t a2)
{
  if (a2 >= 5)
  {
  }

  return result;
}

void sub_1BC977844()
{
  sub_1BC97779C();
  if (v0 <= 0x3F)
  {
    sub_1BCE19280();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t WeatherVFXConditionBackground.isLoaded.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BCE1B450();

  return v1;
}

uint64_t sub_1BC97795C@<X0>(_BYTE *a1@<X8>)
{
  result = WeatherVFXConditionBackground.isLoaded.getter();
  *a1 = result & 1;
  return result;
}

void sub_1BC9779B4()
{
  if (!qword_1EDA1EF98)
  {
    sub_1BC947608(255, &qword_1EDA1F1C8);
    v0 = sub_1BCE18670();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDA1EF98);
    }
  }
}

void sub_1BC977A2C()
{
  if (!qword_1EDA1EC78)
  {
    sub_1BC9779B4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDA1EC78);
    }
  }
}

uint64_t sub_1BC977A8C()
{
  sub_1BC977A2C();
  v1 = v0;
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

uint64_t sub_1BC977B50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07898);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v28 - v4;
  v6 = sub_1BCE1A000();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v28 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07860);
  v29 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v28 - v17;
  v30 = a1;
  sub_1BCE196B0();
  sub_1BCE19FE0();
  v19 = *(v7 + 8);
  v28 = v6;
  v19(v12, v6);
  if (__swift_getEnumTagSinglePayload(v5, 1, v13) == 1)
  {
    sub_1BC94C05C(v5, &qword_1EBD07898);
LABEL_6:
    v26 = 1;
    v25 = v31;
    return __swift_storeEnumTagSinglePayload(v25, v26, 1, v13);
  }

  v20 = v29;
  v21 = v5;
  v22 = *(v29 + 32);
  v22(v18, v21, v13);
  sub_1BCE196B0();
  sub_1BCE19FF0();
  v19(v9, v28);
  sub_1BC957184(&qword_1EDA1EC68, &qword_1EBD07860);
  v23 = sub_1BCE1D1E0();
  v24 = *(v20 + 8);
  v24(v15, v13);
  if ((v23 & 1) == 0)
  {
    v24(v18, v13);
    goto LABEL_6;
  }

  v25 = v31;
  v22(v31, v18, v13);
  v26 = 0;
  return __swift_storeEnumTagSinglePayload(v25, v26, 1, v13);
}

uint64_t sub_1BC977E98()
{
  v0 = sub_1BCE1A240();
  OUTLINED_FUNCTION_2();
  v2 = v1;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_2_0();
  v6 = v5 - v4;
  v7 = sub_1BCE1A260();
  OUTLINED_FUNCTION_2();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_2_0();
  v13 = v12 - v11;
  v14 = [objc_opt_self() processInfo];
  [v14 physicalMemory];

  (*(v9 + 104))(v13, *MEMORY[0x1E69D6EA0], v7);
  (*(v2 + 104))(v6, *MEMORY[0x1E69D6E88], v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0A978);
  swift_allocObject();
  result = sub_1BCE1A2C0();
  qword_1EDA1BDE0 = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_77_3(__n128 a1)
{
  v1[5] = a1;
}

uint64_t OUTLINED_FUNCTION_47()
{
}

uint64_t OUTLINED_FUNCTION_47_0()
{

  return sub_1BC94C05C(v1, v0);
}

uint64_t OUTLINED_FUNCTION_47_3()
{
}

uint64_t WeatherConditionBackgroundModel.canShowAnimatedBackground.getter()
{
  if (qword_1EDA1BDE8 != -1)
  {
    swift_once();
  }

  if (sub_1BCE1A1E0())
  {
    v1 = (*(v0 + 104) == 2) | *(v0 + 104);
  }

  else
  {
    v1 = 0;
  }

  return v1 & 1;
}

uint64_t sub_1BC9781E0(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_68_0(a1, a2);
  sub_1BCE195D0();
  OUTLINED_FUNCTION_2();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_15();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_6_1();
  OUTLINED_FUNCTION_15();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_35();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08CB0);
  OUTLINED_FUNCTION_65();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_66();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD085A0);
  OUTLINED_FUNCTION_8_24(&qword_1EDA1EF08);
  OUTLINED_FUNCTION_76_1();
  OUTLINED_FUNCTION_7_31(&qword_1EDA1EF00);
  OUTLINED_FUNCTION_14_15();
  while (1)
  {
    OUTLINED_FUNCTION_50_1();
    OUTLINED_FUNCTION_64_1();
    if (v11)
    {
      sub_1BC94C05C(v4, &qword_1EBD08CB0);
      return OUTLINED_FUNCTION_59_1();
    }

    OUTLINED_FUNCTION_36_4();
    v12 = OUTLINED_FUNCTION_19_12();
    v13(v12);
    v14 = OUTLINED_FUNCTION_63_0();
    v2(v14);
    OUTLINED_FUNCTION_49_2();
    v15 = OUTLINED_FUNCTION_26_7();
    v6(v15);
    v16 = OUTLINED_FUNCTION_58_2();
    v18 = v17(v16);
    if (v3)
    {
      break;
    }

    if (v18)
    {
      v21 = OUTLINED_FUNCTION_62_1();
      v6(v21);
      OUTLINED_FUNCTION_52_2();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_25_5();
        sub_1BC978EFC();
      }

      OUTLINED_FUNCTION_60_2();
      if (v22)
      {
        OUTLINED_FUNCTION_61_2();
        sub_1BC978EFC();
      }

      v23 = OUTLINED_FUNCTION_5_25();
      v6(v23);
    }

    else
    {
      v19 = OUTLINED_FUNCTION_21_12();
      v20(v19);
    }
  }

  v24 = OUTLINED_FUNCTION_21_12();
  v25(v24);
  sub_1BC94C05C(v4, &qword_1EBD08CB0);
  OUTLINED_FUNCTION_52_2();

  return OUTLINED_FUNCTION_59_1();
}

uint64_t OUTLINED_FUNCTION_63_3()
{

  return sub_1BCE1DAC0();
}

uint64_t OUTLINED_FUNCTION_63_4@<X0>(uint64_t a1@<X8>, double a2@<D0>, uint64_t a3, __int128 a4, double a5, uint64_t a6, char a7, char a8, int a9, char a10)
{
  a3 = v10;
  a4 = *(a1 + 8);
  a5 = a2;
  a6 = v11;
  a7 = v12;
  a8 = v13;

  return static SunriseSunsetViewModel.ChartViewModel.== infix(_:_:)(&a10, &a3);
}

void sub_1BC978520()
{
  sub_1BC9787A0(319, &qword_1EDA1C230, type metadata accessor for NextHourPrecipitationChartViewModel.Point, MEMORY[0x1E69E62F8]);
  if (v0 <= 0x3F)
  {
    sub_1BC978A08(319, &qword_1EDA1C238, &qword_1EBD08EC8);
    if (v1 <= 0x3F)
    {
      type metadata accessor for NextHourPrecipitationChartViewModel.LeadingPrecipitationValue(319);
      if (v2 <= 0x3F)
      {
        sub_1BC9787A0(319, qword_1EDA1C798, type metadata accessor for NextHourPrecipitationChartViewModel.Point, MEMORY[0x1E69E6720]);
        if (v3 <= 0x3F)
        {
          sub_1BC978A08(319, &qword_1EDA1C3D0, &qword_1EBD08E78);
          if (v4 <= 0x3F)
          {
            sub_1BC9787A0(319, &qword_1EDA1EF30, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
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

uint64_t OUTLINED_FUNCTION_52_3()
{

  return sub_1BCE1E130();
}

uint64_t OUTLINED_FUNCTION_52_6(double a1, double a2, double a3, double a4)
{
  *&STACK[0x288] = a1;
  *&STACK[0x280] = a2;
  *&STACK[0x278] = a3;
  *&STACK[0x270] = a4;
}

void sub_1BC9787A0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t OUTLINED_FUNCTION_46_0()
{

  return sub_1BCE193E0();
}

uint64_t OUTLINED_FUNCTION_55_0()
{

  return sub_1BCE1E170();
}

uint64_t OUTLINED_FUNCTION_46_8()
{
}

uint64_t sub_1BC9788E4()
{
  result = sub_1BCE19060();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_61_7()
{
}

void sub_1BC978A08(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3);
    v4 = sub_1BCE1DB10();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t OUTLINED_FUNCTION_60_5()
{

  return swift_allocError();
}

uint64_t OUTLINED_FUNCTION_60_7(double a1, double a2, double a3, double a4)
{
  *&STACK[0x438] = a1;
  *&STACK[0x420] = a2;
  *&STACK[0x418] = a3;
  *&STACK[0x410] = a4;
}

uint64_t sub_1BC978B08()
{
  v0 = sub_1BCE19060();
  OUTLINED_FUNCTION_2();
  v2 = v1;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_2_0();
  v6 = v5 - v4;
  sub_1BCE195A0();
  v7 = sub_1BCE18FC0();
  v8 = *(v2 + 8);
  v8(v6, v0);
  if (v7)
  {
    sub_1BCE195A0();
    v9 = sub_1BCE18FD0();
    v8(v6, v0);
  }

  else
  {
    v9 = 0;
  }

  return v9 & 1;
}

uint64_t sub_1BC978C24()
{
  result = sub_1BCE19060();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1BC978D04()
{
  sub_1BC978DF0();
  v1 = v0;
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

uint64_t OUTLINED_FUNCTION_67()
{

  return sub_1BC9849E8();
}

uint64_t OUTLINED_FUNCTION_67_1()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_67_3()
{

  return swift_getObjectType();
}

void sub_1BC978DF0()
{
  if (!qword_1EDA1EBF8)
  {
    v0 = sub_1BCE19060();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDA1EBF8);
    }
  }
}

uint64_t OUTLINED_FUNCTION_48_1()
{
}

uint64_t OUTLINED_FUNCTION_48_2()
{
}

uint64_t OUTLINED_FUNCTION_48_8(double a1, double a2, double a3, double a4)
{
  *&STACK[0x3D0] = a1;
  *&STACK[0x3C8] = a2;
  *&STACK[0x3C0] = a3;
  *&STACK[0x3B8] = a4;
}

void sub_1BC978EFC()
{
  OUTLINED_FUNCTION_8_3();
  sub_1BC978F74(v1, v2, v3, v4, v5, v6, v7, MEMORY[0x1E6984B10]);
  *v0 = v8;
}

void sub_1BC978F74(char a1, uint64_t a2, char a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t (*a7)(void), void (*a8)(void))
{
  if (a3)
  {
    OUTLINED_FUNCTION_14_0();
    if (v13 != v14)
    {
      if (v12 + 0x4000000000000000 < 0)
      {
LABEL_24:
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_13_2();
    }
  }

  else
  {
    v12 = a2;
  }

  v15 = *(a4 + 16);
  if (v12 <= v15)
  {
    v16 = *(a4 + 16);
  }

  else
  {
    v16 = v12;
  }

  if (!v16)
  {
    v22 = MEMORY[0x1E69E7CC0];
    goto LABEL_18;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5);
  v17 = a7(0);
  OUTLINED_FUNCTION_11_2(v17);
  v19 = *(v18 + 72);
  v21 = (*(v20 + 80) + 32) & ~*(v20 + 80);
  v22 = swift_allocObject();
  v23 = _swift_stdlib_malloc_size(v22);
  if (!v19)
  {
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v23 - v21 == 0x8000000000000000 && v19 == -1)
  {
    goto LABEL_23;
  }

  v22[2] = v15;
  v22[3] = 2 * ((v23 - v21) / v19);
LABEL_18:
  a7(0);
  OUTLINED_FUNCTION_16();
  if (a1)
  {
    sub_1BC953500(a4 + v25, v15, v22 + v25, a8);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

uint64_t OUTLINED_FUNCTION_55_3()
{
  v5 = *(v0 + 520);
  *v5 = v2;
  v5[1] = v3;
  v5[2] = v1;
  v5[3] = v4;
  return *(v0 + 560);
}

uint64_t OUTLINED_FUNCTION_55_7(double a1, double a2, double a3, double a4)
{
  *&STACK[0x2E8] = a1;
  *&STACK[0x2E0] = a2;
  *&STACK[0x2D8] = a3;
  *&STACK[0x2D0] = a4;
}

uint64_t sub_1BC979200()
{
  result = type metadata accessor for SunriseSunsetViewModel.NormalSunriseSunsetModel(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for SunriseSunsetViewModel.PolarNightModel(319);
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for SunriseSunsetViewModel.PolarDayModel(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_56_2()
{
  *(v0 + 32) = v1;
  *(v0 + 40) = v2;
  *(v0 + 48) = 0;
  *(v0 + 56) = 0;
  *(v0 + 64) = 2;

  return sub_1BCE19680();
}

uint64_t OUTLINED_FUNCTION_56_4()
{

  return sub_1BCE1E170();
}

uint64_t OUTLINED_FUNCTION_56_5(double a1, double a2, double a3, double a4)
{
  *&STACK[0x308] = a1;
  *&STACK[0x300] = a2;
  *&STACK[0x2F8] = a3;
  *&STACK[0x2F0] = a4;
}

uint64_t OUTLINED_FUNCTION_56_6()
{
  v2 = *(*(v1 - 288) + 72);
  *(v1 - 248) = v0;
  return *(v1 - 320) + v2 * v0;
}

void sub_1BC979348()
{
  sub_1BCE19060();
  if (v0 <= 0x3F)
  {
    sub_1BCE19470();
    if (v1 <= 0x3F)
    {
      sub_1BC979418();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1BC979418()
{
  if (!qword_1EDA1C228)
  {
    v0 = sub_1BCE1D5D0();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDA1C228);
    }
  }
}

void static Set<>.full.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD078A8);
  OUTLINED_FUNCTION_12_55();
  *(swift_allocObject() + 16) = xmmword_1BCE3E030;
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD078B0);
  OUTLINED_FUNCTION_19_0();
  __swift_storeEnumTagSinglePayload(v1, v2, v3, v0);
  sub_1BC947608(0, &qword_1EDA1F1C8);
  sub_1BCE18630();
  OUTLINED_FUNCTION_60();
  __swift_storeEnumTagSinglePayload(v4, v5, v6, v0);

  sub_1BC9795A8();
}

{
  OUTLINED_FUNCTION_96();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08BF8);
  OUTLINED_FUNCTION_2();
  v3 = v2;
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_24_15();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07CD8);
  OUTLINED_FUNCTION_11_32();
  v6 = *(v5 + 72);
  v8 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1BCE3E030;
  v10 = type metadata accessor for NSUnitTemperature.WeatherFormatUnitConfiguration(0);
  OUTLINED_FUNCTION_19_0();
  __swift_storeEnumTagSinglePayload(v11, v12, v13, v10);
  sub_1BC947608(0, qword_1EDA1EFC0);
  sub_1BCE18630();
  v14 = OUTLINED_FUNCTION_52_4();
  v15(v14);
  *(v9 + v8 + v6 + *(v10 + 20)) = 0;
  OUTLINED_FUNCTION_60();
  __swift_storeEnumTagSinglePayload(v16, v17, v18, v10);
  (*(v3 + 8))(v0, v1);
  sub_1BC9639B4();
  OUTLINED_FUNCTION_18_8();
}

{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08B00);
  OUTLINED_FUNCTION_13_14();
  *(swift_allocObject() + 16) = xmmword_1BCE3E030;
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08B08);
  OUTLINED_FUNCTION_19_0();
  __swift_storeEnumTagSinglePayload(v1, v2, v3, v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08B10);
  OUTLINED_FUNCTION_19_0();
  __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
  OUTLINED_FUNCTION_60();
  __swift_storeEnumTagSinglePayload(v8, v9, v10, v0);

  sub_1BC98427C();
}

{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD09BC8);
  OUTLINED_FUNCTION_2_103();
  *(swift_allocObject() + 16) = xmmword_1BCE3E030;
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08BD8);
  OUTLINED_FUNCTION_19_0();
  __swift_storeEnumTagSinglePayload(v1, v2, v3, v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08BB8);
  OUTLINED_FUNCTION_19_0();
  __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
  OUTLINED_FUNCTION_60();
  __swift_storeEnumTagSinglePayload(v8, v9, v10, v0);

  sub_1BC98926C();
}

void sub_1BC9795A8()
{
  OUTLINED_FUNCTION_20_0();
  v4 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08BB0);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_77();
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08270);
  OUTLINED_FUNCTION_2();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_3();
  v46 = v9 - v10;
  OUTLINED_FUNCTION_15();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_35();
  OUTLINED_FUNCTION_64_4(v12);
  v13 = OUTLINED_FUNCTION_12_55();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_3();
  v16 = v14 - v15;
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_9_5();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_50();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_35();
  v49 = v20;
  if (!*(v4 + 16))
  {
    goto LABEL_27;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0E7C0);
  v21 = sub_1BCE1DD00();
  v22 = v21;
  v44 = *(v4 + 16);
  if (!v44)
  {
    goto LABEL_27;
  }

  v23 = 0;
  v53 = v21 + 56;
  v47 = (v7 + 32);
  v50 = (v7 + 8);
  v43 = v1;
  v48 = v21;
  v42 = v4;
  while (1)
  {
    if (v23 >= *(v4 + 16))
    {
      __break(1u);
      goto LABEL_29;
    }

    v45 = v23;
    OUTLINED_FUNCTION_34_15();
    v24 = v49;
    sub_1BC970B70();
    sub_1BCE1E100();
    OUTLINED_FUNCTION_11_15();
    sub_1BC970B70();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD078B0);
    OUTLINED_FUNCTION_15_13(v1);
    if (v31)
    {
      OUTLINED_FUNCTION_105_3();
    }

    else
    {
      v24 = v51;
      (*v47)(v41, v1, v51);
      OUTLINED_FUNCTION_106_3();
      OUTLINED_FUNCTION_10_0();
      sub_1BC957184(&qword_1EDA1EFA0, &qword_1EBD08270);
      OUTLINED_FUNCTION_85_4();
      sub_1BCE1D190();
      v22 = v48;
      (*v50)(v41, v51);
    }

    v25 = sub_1BCE1E150() & ~(-1 << *(v22 + 32));
    OUTLINED_FUNCTION_26_19();
    if (((v28 << v25) & v29) == 0)
    {
      break;
    }

    v52 = ~v27;
    while (1)
    {
      OUTLINED_FUNCTION_34_15();
      sub_1BC970B70();
      OUTLINED_FUNCTION_100_2();
      sub_1BC970B70();
      OUTLINED_FUNCTION_15_13(v0);
      if (v31)
      {
        OUTLINED_FUNCTION_0_93();
        sub_1BC979DA0(v2, v30);
        OUTLINED_FUNCTION_15_13(v24 + v0);
        if (v31)
        {
          goto LABEL_25;
        }

        goto LABEL_18;
      }

      OUTLINED_FUNCTION_8_64();
      OUTLINED_FUNCTION_10_2();
      sub_1BC970B70();
      OUTLINED_FUNCTION_15_13(v24 + v0);
      if (!v31)
      {
        break;
      }

      OUTLINED_FUNCTION_0_93();
      sub_1BC979DA0(v2, v32);
      (*v50)(v16, v51);
LABEL_18:
      sub_1BC94C05C(v0, &qword_1EBD08BB0);
LABEL_21:
      v25 = (v25 + 1) & v52;
      v26 = v25 >> 6;
      if ((*(v53 + 8 * (v25 >> 6)) & (1 << v25)) == 0)
      {
        v4 = v42;
        goto LABEL_23;
      }
    }

    (*v47)(v46, v24 + v0, v51);
    sub_1BC947608(0, &qword_1EDA1F1C8);
    OUTLINED_FUNCTION_54_6();
    v33 = sub_1BCE18640();
    v24 = *v50;
    (*v50)(v46, v51);
    OUTLINED_FUNCTION_0_93();
    sub_1BC979DA0(v2, v34);
    v22 = v48;
    v24(v16, v51);
    if ((v33 & 1) == 0)
    {
      OUTLINED_FUNCTION_0_93();
      sub_1BC979DA0(v0, v35);
      goto LABEL_21;
    }

LABEL_25:
    sub_1BC979DA0(v0, type metadata accessor for NSUnitSpeed.WeatherFormatComponent);
    v39 = OUTLINED_FUNCTION_64();
    sub_1BC979DA0(v39, v40);
    v4 = v42;
LABEL_26:
    v23 = v45 + 1;
    v1 = v43;
    if (v45 + 1 == v44)
    {
LABEL_27:

      OUTLINED_FUNCTION_21();
      return;
    }
  }

LABEL_23:
  OUTLINED_FUNCTION_74_4(v26);
  OUTLINED_FUNCTION_28_16();
  sub_1BC979BA4();
  v36 = *(v22 + 16);
  v37 = __OFADD__(v36, 1);
  v38 = v36 + 1;
  if (!v37)
  {
    *(v22 + 16) = v38;
    goto LABEL_26;
  }

LABEL_29:
  __break(1u);
}

uint64_t OUTLINED_FUNCTION_113_0(__n128 a1)
{
  v1[6] = a1;
}

uint64_t sub_1BC979B4C()
{
  OUTLINED_FUNCTION_9();
  v1(0);
  OUTLINED_FUNCTION_4();
  v2 = OUTLINED_FUNCTION_10_1();
  v3(v2);
  return v0;
}

uint64_t sub_1BC979BA4()
{
  OUTLINED_FUNCTION_9();
  v1(0);
  OUTLINED_FUNCTION_4();
  v2 = OUTLINED_FUNCTION_10_1();
  v3(v2);
  return v0;
}

uint64_t OUTLINED_FUNCTION_117()
{

  return sub_1BC9849E8();
}

void sub_1BC979C44()
{
  sub_1BCE19060();
  if (v0 <= 0x3F)
  {
    sub_1BCE19470();
    if (v1 <= 0x3F)
    {
      sub_1BC979418();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t OUTLINED_FUNCTION_116()
{

  return sub_1BC96DDD0();
}

uint64_t OUTLINED_FUNCTION_95()
{

  return sub_1BCE1D210();
}

uint64_t sub_1BC979DA0(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_4();
  (*(v3 + 8))(a1);
  return a1;
}

_BYTE *storeEnumTagSinglePayload for ForegroundEffect(_BYTE *result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 3;
  if (a3 + 3 >= 0xFFFF00)
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

  if (a3 >= 0xFD)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  if (a2 > 0xFC)
  {
    v7 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
        JUMPOUT(0x1BC979ED8);
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1BC979F00(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NSUnitSpeed.BaseWeatherFormatStyle(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BC979F64(uint64_t a1, int a2, uint64_t a3, uint64_t *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08260);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v18 - v10;
  OUTLINED_FUNCTION_7();
  sub_1BC97A1C0();
  if (v13)
  {
    return v12;
  }

  v14 = sub_1BC97AE18(a4, a2, a3, a1);
  if (qword_1EDA1F638 != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07860);
  OUTLINED_FUNCTION_4();
  (*(v15 + 16))(v11, a4);
  sub_1BC97EA90(a1, &v11[v8[11]]);
  v11[v8[12]] = a2;
  v16 = &v11[v8[13]];
  *v16 = 0;
  *(v16 + 1) = 0;
  sub_1BC97EFB4();
  sub_1BC94C05C(v11, &qword_1EBD08260);
  return v14;
}

uint64_t sub_1BC97A108(uint64_t a1)
{
  result = sub_1BC9500CC(&qword_1EDA1EDA0, type metadata accessor for NSUnitSpeed.BaseWeatherFormatStyle);
  *(a1 + 8) = result;
  return result;
}

void sub_1BC97A1C0()
{
  OUTLINED_FUNCTION_96();
  OUTLINED_FUNCTION_33_5();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08260);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_26_8();
  if (qword_1EDA1F638 != -1)
  {
    OUTLINED_FUNCTION_2_6();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07860);
  OUTLINED_FUNCTION_4();
  v2 = OUTLINED_FUNCTION_74_1();
  v3(v2);
  OUTLINED_FUNCTION_81_2(*(v0 + 44));
  OUTLINED_FUNCTION_37_4();
  OUTLINED_FUNCTION_25_7();
  sub_1BC97A3B0();
  v4 = OUTLINED_FUNCTION_25_7();
  sub_1BC94C05C(v4, v5);
  OUTLINED_FUNCTION_72_1();
  OUTLINED_FUNCTION_18_8();
}

uint64_t get_witness_table_7SwiftUI4ViewRzlAA15ModifiedContentVyx07WeatherB030EnableForegroundEffectModifier33_A39A32B40A4B6358E5C401BA018B3258LLVGAaBHPxAaBHD1__AhA0cJ0HPyHCHCTm(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  sub_1BCE1B8B0();
  a3();
  OUTLINED_FUNCTION_0_87();
  return swift_getWitnessTable();
}

unint64_t sub_1BC97A354()
{
  result = qword_1EDA188C8[0];
  if (!qword_1EDA188C8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDA188C8);
  }

  return result;
}

void sub_1BC97A3B0()
{
  OUTLINED_FUNCTION_20_0();
  v1 = v0;
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(v0);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v9 - v5;
  sub_1BCE1A780();
  sub_1BC9660CC(v3, v6, v1);
  OUTLINED_FUNCTION_43_3();
  OUTLINED_FUNCTION_76();
  sub_1BCB60180(v7, v8);

  sub_1BCE1DCC0();
  sub_1BCE1AA40();

  sub_1BC96B2D0(&v10);
  sub_1BCE1A790();
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_21();
}

double Double.roundedPrecipitationPercent.getter(long double a1)
{
  v2 = sub_1BCE1E060();
  OUTLINED_FUNCTION_2();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_2_0();
  v8 = v7 - v6;
  (*(v4 + 104))(v7 - v6, *MEMORY[0x1E69E7038], v2);
  v9 = Double.nearestMultiple(of:roundingRule:)(v8, 0.05, a1);
  (*(v4 + 8))(v8, v2);
  return v9;
}

uint64_t sub_1BC97A5C8()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD0E278);
  sub_1BC97A6C8();
  return OUTLINED_FUNCTION_1_90();
}

uint64_t NSUnitSpeed.BaseWeatherFormatStyle.hash(into:)()
{
  sub_1BC97A7BC();
  MEMORY[0x1BFB30850](*(v0 + 8));
  v1 = type metadata accessor for NSUnitSpeed.BaseWeatherFormatStyle(0);
  sub_1BCE19280();
  OUTLINED_FUNCTION_13_48();
  sub_1BC9500CC(v2, v3);
  sub_1BCE1D190();
  sub_1BCE1E120();
  return MEMORY[0x1BFB30850](*(v0 + *(v1 + 32)));
}

unint64_t sub_1BC97A6C8()
{
  result = qword_1EDA1BB40;
  if (!qword_1EDA1BB40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD0E278);
    sub_1BC957184(&qword_1EDA1B730, &qword_1EBD0E280);
    sub_1BC957184(&qword_1EDA1B690, &qword_1EBD0E288);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA1BB40);
  }

  return result;
}

void sub_1BC97A7BC()
{
  OUTLINED_FUNCTION_20_0();
  v2 = v1;
  v4 = v3;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08270);
  OUTLINED_FUNCTION_2();
  v6 = v5;
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_10_16();
  v43 = v8;
  v9 = OUTLINED_FUNCTION_13();
  v10 = type metadata accessor for NSUnitSpeed.WeatherFormatComponent(v9);
  v11 = OUTLINED_FUNCTION_11_2(v10);
  v13 = v12;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v14);
  v16 = v41 - v15;
  v41[1] = v4;
  memcpy(v47, v4, sizeof(v47));
  v46 = sub_1BCE1E150();
  v17 = v2 + 56;
  OUTLINED_FUNCTION_9_17();
  v20 = v19 & v18;
  v22 = (v21 + 63) >> 6;
  v41[3] = v6 + 32;
  v41[2] = v6 + 8;

  v23 = 0;
  v24 = 0;
  v42 = v16;
  if (v20)
  {
    goto LABEL_6;
  }

  while (1)
  {
    v25 = v24 + 1;
    if (__OFADD__(v24, 1))
    {
      break;
    }

    if (v25 >= v22)
    {

      MEMORY[0x1BFB30850](v23);
      OUTLINED_FUNCTION_21();
      return;
    }

    v20 = *(v17 + 8 * v25);
    ++v24;
    if (v20)
    {
      v24 = v25;
      do
      {
LABEL_6:
        OUTLINED_FUNCTION_23_6();
        sub_1BC96DDD0();
        sub_1BCE1E100();
        sub_1BC96DDD0();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD078B0);
        v26 = OUTLINED_FUNCTION_57();
        OUTLINED_FUNCTION_29_0(v26, v27, v28);
        if (v29)
        {
          MEMORY[0x1BFB30850](0);
        }

        else
        {
          OUTLINED_FUNCTION_6_6();
          v30 = v0;
          v31 = v43;
          v45 = v23;
          v32 = v13;
          v33 = v2;
          v34 = v44;
          v35(v43, v30, v44);
          MEMORY[0x1BFB30850](1);
          OUTLINED_FUNCTION_10_0();
          sub_1BC957184(&qword_1EDA1EFA0, &qword_1EBD08270);
          sub_1BCE1D190();
          OUTLINED_FUNCTION_6_6();
          v36 = v31;
          v0 = v30;
          v16 = v42;
          v37 = v34;
          v2 = v33;
          v13 = v32;
          v23 = v45;
          v38(v36, v37);
        }

        v20 &= v20 - 1;
        v39 = sub_1BCE1E150();
        OUTLINED_FUNCTION_4_24();
        sub_1BC96DF88(v16, v40);
        v23 ^= v39;
      }

      while (v20);
    }
  }

  __break(1u);
}

uint64_t OUTLINED_FUNCTION_94()
{

  return sub_1BC96DDD0();
}

uint64_t OUTLINED_FUNCTION_94_1(__n128 *a1, __n128 a2)
{
  a1[1] = a2;

  return type metadata accessor for NSUnitTemperature.WeatherFormatUnitConfiguration(0);
}

uint64_t OUTLINED_FUNCTION_94_3()
{
}

uint64_t sub_1BC97AB6C(uint64_t a1)
{
  v2 = sub_1BCE1BF90();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0E278);
  MEMORY[0x1EEE9AC00](v6);
  v8 = v13 - v7;
  KeyPath = swift_getKeyPath();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0E280);
  (*(*(v10 - 8) + 16))(v8, a1, v10);
  v11 = &v8[*(v6 + 36)];
  *v11 = KeyPath;
  v11[8] = 1;
  v13[0] = 0xD000000000000028;
  v13[1] = 0x80000001BCE8C8A0;
  sub_1BCE1C030();
  sub_1BC97A6C8();
  sub_1BCE1C870();
  (*(v3 + 8))(v5, v2);
  return sub_1BC94C0B4(v8, &qword_1EBD0E278);
}

uint64_t OUTLINED_FUNCTION_71_1@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = v2;
  a2[1] = a1;
  a2[2] = v3;
  a2[3] = v5;
  a2[4] = v4;
}

uint64_t sub_1BC97ADF0()
{
  OUTLINED_FUNCTION_20_1();
  v0 = sub_1BC97C338();
  return OUTLINED_FUNCTION_9_40(v0);
}

uint64_t sub_1BC97AE18(uint64_t *a1, int a2, uint64_t a3, uint64_t a4)
{
  v152 = a3;
  LODWORD(v150) = a2;
  v153 = a1;
  v141 = sub_1BCE18710();
  v140 = *(v141 - 8);
  MEMORY[0x1EEE9AC00](v141);
  v139 = &v120 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v144 = sub_1BCE1DAF0();
  v143 = *(v144 - 8);
  MEMORY[0x1EEE9AC00](v144);
  v142 = &v120 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v148 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08268);
  v145 = *(v148 - 8);
  MEMORY[0x1EEE9AC00](v148);
  v147 = &v120 - v7;
  v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08270);
  v123 = *(v133 - 8);
  MEMORY[0x1EEE9AC00](v133);
  v121 = &v120 - v8;
  v129 = type metadata accessor for Beaufort.FormatStyle(0);
  MEMORY[0x1EEE9AC00](v129);
  v127 = &v120 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v128 = &v120 - v11;
  v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08278);
  MEMORY[0x1EEE9AC00](v130);
  v132 = &v120 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08280);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v122 = &v120 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v131 = &v120 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v134 = &v120 - v18;
  v19 = type metadata accessor for NSUnitSpeed.WeatherFormatComponent(0);
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v146 = &v120 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v138 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08288);
  v137 = *(v138 - 8);
  MEMORY[0x1EEE9AC00](v138);
  v135 = &v120 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v136 = &v120 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07890);
  MEMORY[0x1EEE9AC00](v25 - 8);
  v27 = &v120 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07860);
  v149 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v120 - v29;
  LOBYTE(v154) = *(a4 + 8);
  v31 = type metadata accessor for NSUnitSpeed.BaseWeatherFormatStyle(0);
  v32 = *(v31 + 24);
  v33 = sub_1BCE19280();
  v34 = *(v33 - 8);
  v35 = *(v34 + 16);
  v151 = v32;
  v125 = v35;
  v124 = v34 + 16;
  v35(v27, (a4 + v32), v33);
  v126 = v33;
  __swift_storeEnumTagSinglePayload(v27, 0, 1, v33);
  sub_1BC97CB2C();
  sub_1BC94C05C(v27, &qword_1EBD07890);
  v36 = *(v31 + 32);
  v153 = a4;
  LOBYTE(v27) = *(a4 + v36);
  v152 = v28;
  v37 = sub_1BCE185C0();
  v38 = v37;
  if (v27)
  {
  }

  else
  {
    sub_1BC947608(0, &qword_1EDA1C0B8);
    v39 = [objc_opt_self() metersPerSecond];
    sub_1BCE1DAC0();
  }

  v40 = v150;
  v41 = v153;
  v42 = *v153;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD078A8);
  v43 = (*(v20 + 80) + 32) & ~*(v20 + 80);
  v44 = swift_allocObject();
  v150 = xmmword_1BCE3E050;
  *(v44 + 16) = xmmword_1BCE3E050;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD078B0);
  __swift_storeEnumTagSinglePayload(v44 + v43, 1, 1, v45);
  sub_1BC9795A8();
  sub_1BC97D104();
  LOBYTE(v43) = v46;

  if ((v43 & 1) == 0)
  {
    if (*(v41 + 8) || (v55 = sub_1BCE185C0(), v56 = sub_1BCE1D830(), v55, (v56 & 1) == 0) || (Set<>.beaufortIncludes.getter(v42, v57, v58, v59, v60, v61, v62, v63, v120, v121, v122, v123, v124, v125, v126, v127, v128, v129, v130, v131), v64 = v154, v154 > 0xFBu))
    {
      sub_1BC97D624();
      sub_1BC957184(&qword_1EDA1EF90, &qword_1EBD08268);
      v65 = v152;
      sub_1BCE186A0();
      __swift_storeEnumTagSinglePayload(v146, 1, 1, v45);
      sub_1BC97E47C();
      v67 = v66;
      sub_1BC97E9E0();
      if (v67)
      {
        v68 = 0xE000000000000000;
        v69 = v30;
        v70 = 0;
        switch(v40)
        {
          case 1:
            v68 = 0xE200000000000000;
            v70 = 11565;
            goto LABEL_19;
          case 2:
            v68 = 0xA600000000000000;
            v70 = 0x9380E29380E2;
            goto LABEL_19;
          case 3:
LABEL_19:
            v77 = v142;
            sub_1BCE1ABF0();
            v160 = v70;
            v161 = v68;
            sub_1BC98C934();
            sub_1BC98CAB4();
            sub_1BCA72520(&qword_1EDA1C0A8, MEMORY[0x1E6969FD0]);
            v78 = v144;
            sub_1BCE1D790();
            (*(v143 + 8))(v77, v78);

            break;
          default:
            break;
        }
      }

      else
      {
        v69 = v30;
        v71 = v142;
        sub_1BCE1ABF0();
        v160 = 0;
        v161 = 0xE000000000000000;
        sub_1BC98C934();
        sub_1BC98CAB4();
        sub_1BCA72520(&qword_1EDA1C0A8, MEMORY[0x1E6969FD0]);
        v72 = v144;
        sub_1BCE1D790();
        (*(v143 + 8))(v71, v72);
        v160 = v154;
        v161 = v155;
        v73 = v139;
        sub_1BCE186C0();
        sub_1BC970820();
        v74 = sub_1BCE1DB70();
        v76 = v75;
        (*(v140 + 8))(v73, v141);

        v154 = v74;
        v155 = v76;
      }

      v160 = v154;
      v161 = v155;
      v158 = 32;
      v159 = 0xE100000000000000;
      v156 = 41154;
      v157 = 0xA200000000000000;
      sub_1BC970820();
      v79 = sub_1BCE1DB90();
      v81 = v80;

      v160 = v79;
      v161 = v81;
      v158 = 47;
      v159 = 0xE100000000000000;
      v156 = 0xA081E22FA081E2;
      v157 = 0xA700000000000000;
      v47 = sub_1BCE1DB90();
      (*(v145 + 8))(v147, v148);
      (*(v149 + 8))(v69, v65);
      goto LABEL_21;
    }

    __swift_storeEnumTagSinglePayload(v146, 1, 1, v45);
    sub_1BC97E47C();
    v84 = v83;
    sub_1BC97E9E0();
    if (v84)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08298);
      inited = swift_initStackObject();
      *(inited + 16) = v150;
      *(inited + 32) = v64;
      sub_1BCDF8F74();
      v87 = v86;
      if ((v40 - 1) >= 3)
      {
LABEL_59:
        v115 = v127;
        sub_1BCE191B0();
        v116 = v129;
        *(v115 + *(v129 + 20)) = v87;

        sub_1BC97E9E0();
        v117 = v41 + v151;
        v118 = v128;
        v125(v128, v117, v126);
        *(v118 + *(v116 + 20)) = v87;
        sub_1BCA72520(qword_1EBD082A0, type metadata accessor for Beaufort.FormatStyle);
        v119 = v152;
        sub_1BCE186A0();
        sub_1BC97E9E0();
        (*(v149 + 8))(v30, v119);
        v47 = v154;
LABEL_21:

        return v47;
      }

      sub_1BCE1E100();
      MEMORY[0x1BFB30850](1);
      MEMORY[0x1BFB30850](v40);
      v88 = sub_1BCE1E150();
      v89 = -1 << *(v87 + 32);
      v90 = v88 & ~v89;
      if ((*(v87 + 56 + ((v90 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v90))
      {
        v91 = ~v89;
        while ((*(*(v87 + 48) + v90) & 0x80) == 0 || (*(*(v87 + 48) + v90) & 0x7F) != v40)
        {
          v90 = (v90 + 1) & v91;
          if (((*(v87 + 56 + ((v90 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v90) & 1) == 0)
          {
            goto LABEL_30;
          }
        }

        goto LABEL_59;
      }

LABEL_30:
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v160 = v87;
      if (*(v87 + 24) <= *(v87 + 16))
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          sub_1BCBE9A94();
        }

        else
        {
          sub_1BCBEB03C();
        }

        v87 = v160;
        sub_1BCE1E100();
        MEMORY[0x1BFB30850](1);
        MEMORY[0x1BFB30850](v40);
        v109 = sub_1BCE1E150();
        v110 = -1 << *(v87 + 32);
        v90 = v109 & ~v110;
        if ((*(v87 + 56 + ((v90 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v90))
        {
          v111 = ~v110;
          while ((*(*(v87 + 48) + v90) & 0x80) == 0 || (*(*(v87 + 48) + v90) & 0x7F) != v40)
          {
            v90 = (v90 + 1) & v111;
            if (((*(v87 + 56 + ((v90 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v90) & 1) == 0)
            {
              goto LABEL_57;
            }
          }

LABEL_67:
          sub_1BCE1E0E0();
          __break(1u);
          JUMPOUT(0x1BC97C318);
        }
      }

      else if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1BCBEAAA4();
        v87 = v160;
      }

LABEL_57:
      *(v87 + ((v90 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) |= 1 << v90;
      *(*(v87 + 48) + v90) = v40 | 0x80;
      v112 = *(v87 + 16);
      v113 = __OFADD__(v112, 1);
      v114 = v112 + 1;
      if (!v113)
      {
        *(v87 + 16) = v114;
        goto LABEL_59;
      }

LABEL_66:
      __break(1u);
      goto LABEL_67;
    }

    v93 = v134;
    Set<>.unitWidth.getter();
    sub_1BC947608(0, &qword_1EDA1F1C8);
    v94 = v131;
    sub_1BCE18650();
    v95 = v133;
    __swift_storeEnumTagSinglePayload(v94, 0, 1, v133);
    v96 = *(v130 + 48);
    v97 = v132;
    sub_1BC9660CC(v93, v132, &qword_1EBD08280);
    sub_1BC9660CC(v94, v97 + v96, &qword_1EBD08280);
    if (__swift_getEnumTagSinglePayload(v97, 1, v95) == 1)
    {
      sub_1BC94C05C(v94, &qword_1EBD08280);
      sub_1BC94C05C(v93, &qword_1EBD08280);
      EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v97 + v96, 1, v95);
      v99 = v152;
      if (EnumTagSinglePayload == 1)
      {
        sub_1BC94C05C(v97, &qword_1EBD08280);
        goto LABEL_44;
      }
    }

    else
    {
      v100 = v122;
      sub_1BC9660CC(v97, v122, &qword_1EBD08280);
      v101 = __swift_getEnumTagSinglePayload(v97 + v96, 1, v95);
      v99 = v152;
      if (v101 != 1)
      {
        v104 = v123;
        v105 = v97 + v96;
        v106 = v121;
        (*(v123 + 32))(v121, v105, v95);
        sub_1BC957184(&qword_1EBD08290, &qword_1EBD08270);
        LODWORD(v153) = sub_1BCE1D210();
        v107 = *(v104 + 8);
        v107(v106, v95);
        sub_1BC94C05C(v94, &qword_1EBD08280);
        sub_1BC94C05C(v134, &qword_1EBD08280);
        v107(v100, v95);
        sub_1BC94C05C(v97, &qword_1EBD08280);
        if (v153)
        {
LABEL_44:
          sub_1BCE185E0();
          if ((*&v108 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
          {
            if (v108 > -9.22337204e18)
            {
              if (v108 < 9.22337204e18)
              {
                v103 = sub_1BCE1A630();
                goto LABEL_48;
              }

LABEL_65:
              __break(1u);
              goto LABEL_66;
            }

LABEL_64:
            __break(1u);
            goto LABEL_65;
          }

LABEL_63:
          __break(1u);
          goto LABEL_64;
        }

LABEL_39:
        sub_1BCE185E0();
        if ((*&v102 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
        {
          __break(1u);
        }

        else if (v102 > -9.22337204e18)
        {
          if (v102 < 9.22337204e18)
          {
            v103 = sub_1BCE1A640();
LABEL_48:
            v47 = v103;
            (*(v149 + 8))(v30, v99);
            return v47;
          }

          goto LABEL_62;
        }

        __break(1u);
LABEL_62:
        __break(1u);
        goto LABEL_63;
      }

      sub_1BC94C05C(v94, &qword_1EBD08280);
      sub_1BC94C05C(v134, &qword_1EBD08280);
      (*(v123 + 8))(v100, v95);
    }

    sub_1BC94C05C(v97, &qword_1EBD08278);
    goto LABEL_39;
  }

  v47 = 0;
  v48 = v152;
  v49 = v151;
  switch(v40)
  {
    case 1:
      v47 = 11565;
      goto LABEL_16;
    case 2:
      v47 = 0x9380E29380E2;
      goto LABEL_16;
    case 3:
LABEL_16:
      (*(v149 + 8))(v30, v152);
      break;
    default:
      sub_1BCE185E0();
      v160 = v50;
      v51 = v135;
      sub_1BC97E250();
      v52 = v136;
      v53 = v138;
      MEMORY[0x1BFB2B3D0](v153 + v49, v138);
      v54 = *(v137 + 8);
      v54(v51, v53);
      sub_1BC96ABEC();
      sub_1BC957184(&qword_1EDA1EF58, &qword_1EBD08288);
      sub_1BCE1D0F0();
      v54(v52, v53);
      (*(v149 + 8))(v30, v48);
      v47 = v154;
      break;
  }

  return v47;
}

unint64_t sub_1BC97C358()
{
  result = qword_1EDA17100[0];
  if (!qword_1EDA17100[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDA17100);
  }

  return result;
}

void sub_1BC97C3EC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, void (*a5)(void))
{
  sub_1BCE19280();
  if (v7 <= 0x3F)
  {
    sub_1BC97C6BC(319, a4, a5);
    if (v8 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1BC97C4EC(void *a1@<X0>, uint64_t a2@<X3>, uint64_t *a3@<X8>)
{
  v6 = sub_1BCE193E0();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1BCE19420();
  [a1 setTimeZone_];

  [a1 setFormattingContext_];
  sub_1BCE19390();
  v11 = sub_1BCE19330();
  (*(v7 + 8))(v9, v6);
  [a1 setCalendar_];

  v12 = sub_1BCE18FB0();
  v13 = [a1 stringFromDate_];

  v14 = sub_1BCE1D280();
  v16 = v15;

  *a3 = v14;
  a3[1] = v16;
}

uint64_t type metadata accessor for TemperatureHighLowTextVertical()
{
  result = qword_1EDA1CB98;
  if (!qword_1EDA1CB98)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1BC97C6BC(uint64_t a1, unint64_t *a2, void (*a3)(void))
{
  if (!*a2)
  {
    a3();
    v4 = sub_1BCE1D6D0();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_1BC97C71C()
{
  result = qword_1EDA1EB18;
  if (!qword_1EDA1EB18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA1EB18);
  }

  return result;
}

uint64_t WeatherCondition.isPrecipitation.getter()
{
  sub_1BCE199D0();
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v0);
  v2 = OUTLINED_FUNCTION_0_49(v1, v30);
  v3(v2);
  v4 = OUTLINED_FUNCTION_3_48();
  v6 = v5(v4);
  v25 = v6 == *MEMORY[0x1E6984CE0] || v6 == *MEMORY[0x1E6984CD8] || v6 == *MEMORY[0x1E6984CE8] || v6 == *MEMORY[0x1E6984C58] || v6 == *MEMORY[0x1E6984C28] || v6 == *MEMORY[0x1E6984C78] || v6 == *MEMORY[0x1E6984D10] || v6 == *MEMORY[0x1E6984D18] || v6 == *MEMORY[0x1E6984D20] || v6 == *MEMORY[0x1E6984C60] || v6 == *MEMORY[0x1E6984C88] || v6 == *MEMORY[0x1E6984C68] || v6 == *MEMORY[0x1E6984CA8] || v6 == *MEMORY[0x1E6984C90] || v6 == *MEMORY[0x1E6984C40] || v6 == *MEMORY[0x1E6984C20] || v6 == *MEMORY[0x1E6984C00] || v6 == *MEMORY[0x1E6984C48] || v6 == *MEMORY[0x1E6984C50] || v6 == *MEMORY[0x1E6984D28];
  v26 = v25;
  if (!v25)
  {
    v27 = OUTLINED_FUNCTION_4_39();
    v28(v27);
  }

  return v26;
}

void sub_1BC97C970()
{
  sub_1BC95A6B4();
  if (v0 <= 0x3F)
  {
    sub_1BC97CA28();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1BC97CA28()
{
  if (!qword_1EDA1EA28)
  {
    sub_1BC97CA84();
    v0 = sub_1BCE1B590();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDA1EA28);
    }
  }
}

unint64_t sub_1BC97CA84()
{
  result = qword_1EDA1EAE0;
  if (!qword_1EDA1EAE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA1EAE0);
  }

  return result;
}

unint64_t sub_1BC97CAD8()
{
  result = qword_1EDA1EB10;
  if (!qword_1EDA1EB10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA1EB10);
  }

  return result;
}

void sub_1BC97CB2C()
{
  OUTLINED_FUNCTION_20_0();
  v45[4] = v6;
  v45[2] = v7;
  v45[3] = v8;
  v45[1] = v9;
  v11 = v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07890);
  v13 = OUTLINED_FUNCTION_14(v12);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_18_2();
  MEMORY[0x1EEE9AC00](v14);
  v16 = v45 - v15;
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_9_5();
  MEMORY[0x1EEE9AC00](v18);
  v20 = v45 - v19;
  v21 = sub_1BCE19280();
  OUTLINED_FUNCTION_2();
  v45[0] = v22;
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_63_6();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_131();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_20_10();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_17_2();
  switch(*v11)
  {
    case 1:
      sub_1BC95DCE8();
      OUTLINED_FUNCTION_29_0(v5, 1, v21);
      if (v27)
      {
        sub_1BC94C05C(v5, &qword_1EBD07890);
        OUTLINED_FUNCTION_67_3();
        v28 = sub_1BCE1A490();
        goto LABEL_15;
      }

      v43 = v45[0];
      (*(v45[0] + 32))(v3, v5, v21);
      OUTLINED_FUNCTION_67_3();
      v42 = sub_1BCE1A480();
      (*(v43 + 8))(v3, v21);
      break;
    case 2:
      sub_1BC95DCE8();
      OUTLINED_FUNCTION_29_0(v16, 1, v21);
      if (v27)
      {
        sub_1BC94C05C(v16, &qword_1EBD07890);
        OUTLINED_FUNCTION_67_3();
        v29 = sub_1BCE1A440();
        goto LABEL_11;
      }

      OUTLINED_FUNCTION_71_3();
      v31(v1, v16, v21);
      OUTLINED_FUNCTION_67_3();
      v32 = sub_1BCE1A430();
      v42 = sub_1BCDF88D8(v32);

      v33 = OUTLINED_FUNCTION_10_2();
      v38(v33, v37);
      break;
    case 3:
      sub_1BC95DCE8();
      OUTLINED_FUNCTION_29_0(v4, 1, v21);
      if (v27)
      {
        sub_1BC94C05C(v4, &qword_1EBD07890);
        OUTLINED_FUNCTION_67_3();
        v29 = sub_1BCE1A460();
LABEL_11:
        v30 = v29;
        v42 = sub_1BCDF88D8(v29);
      }

      else
      {
        v34 = v45[0];
        OUTLINED_FUNCTION_71_3();
        v35(v0, v4, v21);
        OUTLINED_FUNCTION_67_3();
        v36 = sub_1BCE1A450();
        v42 = sub_1BCDF88D8(v36);

        (*(v34 + 8))(v0, v21);
      }

      break;
    default:
      sub_1BC95DCE8();
      OUTLINED_FUNCTION_29_0(v20, 1, v21);
      if (v27)
      {
        sub_1BC94C05C(v20, &qword_1EBD07890);
        OUTLINED_FUNCTION_67_3();
        v28 = sub_1BCE1A4B0();
LABEL_15:
        v42 = v28;
      }

      else
      {
        v39 = v45[0];
        v40 = OUTLINED_FUNCTION_54_6();
        v41(v40);
        OUTLINED_FUNCTION_67_3();
        v42 = sub_1BCE1A4A0();
        (*(v39 + 8))(v2, v21);
      }

      break;
  }

  v44 = v42;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07860);
  sub_1BCE18680();

  OUTLINED_FUNCTION_21();
}

double Font.capHeight(in:)()
{
  v0 = sub_1BCE1C2A0();
  CapHeight = CTFontGetCapHeight(v0);

  return CapHeight;
}

uint64_t OUTLINED_FUNCTION_101_1()
{

  return sub_1BCE1D370();
}

void OUTLINED_FUNCTION_101_3()
{

  JUMPOUT(0x1BFB2B8A0);
}

uint64_t View.setForegroundEffect(_:)(char *a1, uint64_t a2, uint64_t a3)
{
  v5 = *a1;
  KeyPath = swift_getKeyPath();
  v8 = 0;
  v9 = v5;
  MEMORY[0x1BFB2F100](&KeyPath, a2, &type metadata for SetForegroundEffectModifier, a3);
  return j__swift_release(KeyPath, v8);
}

void sub_1BC97D104()
{
  OUTLINED_FUNCTION_20_0();
  v5 = v4;
  v7 = v6;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08270);
  OUTLINED_FUNCTION_2();
  v9 = v8;
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_10_16();
  v62 = v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08BB0);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_36_1();
  v14 = type metadata accessor for NSUnitSpeed.WeatherFormatComponent(0);
  v15 = OUTLINED_FUNCTION_11_2(v14);
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_3();
  v65 = v16 - v17;
  OUTLINED_FUNCTION_15();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_35_0();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v53 - v21;
  if (v7 == v5 || *(v7 + 16) != *(v5 + 16))
  {
LABEL_29:
    OUTLINED_FUNCTION_21();
  }

  else
  {
    OUTLINED_FUNCTION_16_16();
    v60 = (v9 + 32);
    v61 = v5 + 56;
    v63 = (v9 + 8);
    v57 = v7;
    v56 = v26;
    v55 = v22;
    v54 = v25;
    v53 = v23;
    v67 = v5;
    if (v27)
    {
      do
      {
        OUTLINED_FUNCTION_52_0();
        v58 = v30;
LABEL_10:
        v59 = v28;
        v68 = *(v29 + 72);
        OUTLINED_FUNCTION_24_5();
        sub_1BC96DDD0();
        sub_1BC979B4C();
        sub_1BCE1E100();
        NSUnitSpeed.WeatherFormatComponent.hash(into:)();
        sub_1BCE1E150();
        OUTLINED_FUNCTION_59();
        v36 = v61;
        v38 = v65;
        if (((*(v61 + v37) >> v0) & 1) == 0)
        {
LABEL_28:
          sub_1BC96DF88(v2, type metadata accessor for NSUnitSpeed.WeatherFormatComponent);
          goto LABEL_29;
        }

        v66 = ~v35;
        while (1)
        {
          OUTLINED_FUNCTION_23_6();
          sub_1BC96DDD0();
          v39 = *(v12 + 48);
          OUTLINED_FUNCTION_120();
          sub_1BC96DDD0();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD078B0);
          OUTLINED_FUNCTION_8_0(v1);
          if (v41)
          {
            OUTLINED_FUNCTION_4_24();
            sub_1BC96DF88(v3, v40);
            OUTLINED_FUNCTION_8_0(v1 + v39);
            if (v41)
            {
              goto LABEL_25;
            }

            goto LABEL_20;
          }

          OUTLINED_FUNCTION_24_5();
          sub_1BC96DDD0();
          OUTLINED_FUNCTION_8_0(v1 + v39);
          if (!v41)
          {
            break;
          }

          OUTLINED_FUNCTION_4_24();
          sub_1BC96DF88(v3, v42);
          (*v63)(v38, v64);
LABEL_20:
          sub_1BC94C05C(v1, &qword_1EBD08BB0);
LABEL_23:
          v0 = (v0 + 1) & v66;
          if (((*(v36 + ((v0 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v0) & 1) == 0)
          {
            goto LABEL_28;
          }
        }

        v43 = v12;
        v44 = v62;
        v45 = v2;
        v46 = v64;
        (*v60)(v62, v1 + v39, v64);
        sub_1BC947608(0, &qword_1EDA1F1C8);
        v47 = sub_1BCE18640();
        v48 = *v63;
        v49 = v44;
        v12 = v43;
        v38 = v65;
        (*v63)(v49, v46);
        OUTLINED_FUNCTION_4_24();
        sub_1BC96DF88(v3, v50);
        v51 = v46;
        v2 = v45;
        v36 = v61;
        v48(v38, v51);
        if ((v47 & 1) == 0)
        {
          OUTLINED_FUNCTION_4_24();
          sub_1BC96DF88(v1, v52);
          goto LABEL_23;
        }

LABEL_25:
        sub_1BC96DF88(v1, type metadata accessor for NSUnitSpeed.WeatherFormatComponent);
        sub_1BC96DF88(v2, type metadata accessor for NSUnitSpeed.WeatherFormatComponent);
        v24 = v59;
        v25 = v54;
        v23 = v53;
      }

      while (v58);
    }

    v31 = v24;
    while (1)
    {
      v32 = v31 + 1;
      if (__OFADD__(v31, 1))
      {
        break;
      }

      if (v32 >= v23)
      {
        goto LABEL_29;
      }

      ++v31;
      if (*(v25 + 8 * v32))
      {
        OUTLINED_FUNCTION_30();
        v58 = v34 & v33;
        goto LABEL_10;
      }
    }

    __break(1u);
  }
}

void sub_1BC97D624()
{
  OUTLINED_FUNCTION_20_0();
  v103 = v1;
  v96 = v2;
  v4 = v3;
  v92 = v5;
  v101 = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08B50);
  OUTLINED_FUNCTION_14(v7);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_10_16();
  v100 = v9;
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD09BD8);
  OUTLINED_FUNCTION_2();
  v97 = v10;
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_10_16();
  v94 = v12;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08268);
  OUTLINED_FUNCTION_2();
  v95 = v13;
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_10_16();
  v93 = v15;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08278);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_77();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08280);
  v18 = OUTLINED_FUNCTION_14(v17);
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_3();
  v21 = v19 - v20;
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_6_1();
  v87 = v23;
  OUTLINED_FUNCTION_15();
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v83[-v25];
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v83[-v28];
  v30 = sub_1BCE19260();
  OUTLINED_FUNCTION_2();
  v32 = v31;
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_2_0();
  v36 = v35 - v34;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08270);
  OUTLINED_FUNCTION_2();
  v39 = v38;
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_3();
  v91 = v41 - v42;
  OUTLINED_FUNCTION_15();
  MEMORY[0x1EEE9AC00](v43);
  OUTLINED_FUNCTION_6_1();
  v89 = v44;
  OUTLINED_FUNCTION_15();
  MEMORY[0x1EEE9AC00](v45);
  OUTLINED_FUNCTION_6_1();
  v86 = v46;
  OUTLINED_FUNCTION_15();
  MEMORY[0x1EEE9AC00](v47);
  OUTLINED_FUNCTION_35();
  v90 = v48;
  v102 = v4;
  sub_1BCE19270();
  LOBYTE(v4) = sub_1BCE19230();
  (*(v32 + 8))(v36, v30);
  if ((v4 & 1) == 0)
  {
    goto LABEL_11;
  }

  v85 = v21;
  Set<>.unitWidth.getter();
  v49 = sub_1BC947608(0, &qword_1EDA1F1C8);
  sub_1BCE18660();
  OUTLINED_FUNCTION_60();
  __swift_storeEnumTagSinglePayload(v50, v51, v52, v37);
  v53 = *(v88 + 48);
  sub_1BC95DCE8();
  sub_1BC95DCE8();
  OUTLINED_FUNCTION_15_13(v0);
  if (v55)
  {
    OUTLINED_FUNCTION_56(v26);
    OUTLINED_FUNCTION_56(v29);
    OUTLINED_FUNCTION_15_13(v0 + v53);
    if (v55)
    {
      v88 = v49;
      sub_1BC94C05C(v0, &qword_1EBD08280);
LABEL_21:
      v59 = v90;
      sub_1BCE18630();
      v58 = v91;
      goto LABEL_16;
    }

    goto LABEL_10;
  }

  v54 = v87;
  sub_1BC95DCE8();
  OUTLINED_FUNCTION_15_13(v0 + v53);
  if (v55)
  {
    OUTLINED_FUNCTION_56(v26);
    OUTLINED_FUNCTION_56(v29);
    (*(v39 + 8))(v54, v37);
LABEL_10:
    sub_1BC94C05C(v0, &qword_1EBD08278);
    v21 = v85;
    goto LABEL_11;
  }

  v88 = v49;
  OUTLINED_FUNCTION_71_3();
  v70 = v0 + v53;
  v71 = v86;
  v72(v86, v70, v37);
  OUTLINED_FUNCTION_7_26();
  sub_1BC957184(v73, v74);
  OUTLINED_FUNCTION_62();
  v84 = sub_1BCE1D210();
  v75 = v54;
  v76 = *(v39 + 8);
  v76(v71, v37);
  OUTLINED_FUNCTION_15_5();
  sub_1BC94C05C(v77, v78);
  OUTLINED_FUNCTION_15_5();
  sub_1BC94C05C(v79, v80);
  v76(v75, v37);
  OUTLINED_FUNCTION_15_5();
  sub_1BC94C05C(v81, v82);
  v21 = v85;
  if (v84)
  {
    goto LABEL_21;
  }

LABEL_11:
  Set<>.unitWidth.getter();
  OUTLINED_FUNCTION_15_13(v21);
  if (v55)
  {
    sub_1BC947608(0, &qword_1EDA1F1C8);
    v56 = v89;
    sub_1BCE18630();
    OUTLINED_FUNCTION_15_13(v21);
    v59 = v90;
    v58 = v91;
    if (!v55)
    {
      sub_1BC94C05C(v21, &qword_1EBD08280);
    }
  }

  else
  {
    OUTLINED_FUNCTION_71_3();
    v56 = v89;
    v57(v89, v21, v37);
    v59 = v90;
    v58 = v91;
  }

  OUTLINED_FUNCTION_71_3();
  v60(v59, v56, v37);
LABEL_16:
  if (v92)
  {
    sub_1BC947608(0, &qword_1EDA1F1C8);
    sub_1BCE18650();
  }

  else
  {
    (*(v39 + 16))(v58, v59, v37);
  }

  sub_1BC947608(0, &qword_1EDA1F1C8);
  v61 = v94;
  sub_1BCE18CF0();
  v62 = v100;
  sub_1BC97E250();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08288);
  OUTLINED_FUNCTION_60();
  __swift_storeEnumTagSinglePayload(v63, v64, v65, v66);
  sub_1BCE18510();
  sub_1BC94C05C(v62, &qword_1EBD08B50);
  (*(v97 + 8))(v61, v99);
  v67 = *(v39 + 8);
  v67(v58, v37);
  sub_1BCE18620();
  v68 = OUTLINED_FUNCTION_10_2();
  v69(v68);
  v67(v59, v37);
  OUTLINED_FUNCTION_21();
}

uint64_t OUTLINED_FUNCTION_114()
{

  return sub_1BCE1E100();
}

uint64_t OUTLINED_FUNCTION_41_4(unint64_t *a1)
{

  return sub_1BC94B978(a1);
}

uint64_t OUTLINED_FUNCTION_41_7()
{
}

uint64_t OUTLINED_FUNCTION_41_10()
{
}

void Set<>.unitWidth.getter()
{
  OUTLINED_FUNCTION_20_0();
  v1 = v0;
  v2 = OUTLINED_FUNCTION_12_55();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_3();
  v5 = v3 - v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_17_2();
  v7 = 1 << *(v1 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(v1 + 56);
  v10 = (v7 + 63) >> 6;

  v11 = 0;
  if (v9)
  {
    while (1)
    {
      v12 = v11;
LABEL_8:
      OUTLINED_FUNCTION_8_64();
      sub_1BC970B70();
      OUTLINED_FUNCTION_28_16();
      sub_1BC979BA4();
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD078B0);
      OUTLINED_FUNCTION_29_0(v5, 1, v13);
      if (!v14)
      {
        break;
      }

      v9 &= v9 - 1;
      OUTLINED_FUNCTION_0_93();
      sub_1BC979DA0(v5, v15);
      v11 = v12;
      if (!v9)
      {
        goto LABEL_5;
      }
    }

    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08270);
    OUTLINED_FUNCTION_4();
    v17 = OUTLINED_FUNCTION_62();
    v18(v17);
    OUTLINED_FUNCTION_60();
    v22 = v16;
LABEL_13:
    __swift_storeEnumTagSinglePayload(v19, v20, v21, v22);
    OUTLINED_FUNCTION_21();
  }

  else
  {
LABEL_5:
    while (1)
    {
      v12 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v12 >= v10)
      {

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08270);
        OUTLINED_FUNCTION_19_0();
        goto LABEL_13;
      }

      v9 = *(v1 + 56 + 8 * v12);
      ++v11;
      if (v9)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }
}

uint64_t __swift_memcpy10_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t sub_1BC97E180()
{
  v0 = OUTLINED_FUNCTION_10_1();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD0E270);
  OUTLINED_FUNCTION_2_102(&qword_1EDA1B750);
  sub_1BC97E400(&qword_1EDA1AAA0, &qword_1EBD0E270, &unk_1BCE6DDB8, sub_1BC97E800);
  return swift_getOpaqueTypeConformance2();
}

void sub_1BC97E250()
{
  OUTLINED_FUNCTION_20_0();
  v2 = sub_1BCE18D90();
  OUTLINED_FUNCTION_2();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_52();
  v6 = sub_1BCE19280();
  v7 = OUTLINED_FUNCTION_14(v6);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_2_0();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08288);
  OUTLINED_FUNCTION_2();
  v10 = v9;
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_6_15();
  sub_1BCE19150();
  sub_1BC96ABEC();
  sub_1BCE18C80();
  sub_1BCE18D60();
  MEMORY[0x1BFB2B400](v0, v8);
  (*(v4 + 8))(v0, v2);
  (*(v10 + 8))(v1, v8);
  OUTLINED_FUNCTION_21();
}

uint64_t sub_1BC97E400(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1BC97E47C()
{
  OUTLINED_FUNCTION_20_0();
  OUTLINED_FUNCTION_66_0();
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08270);
  OUTLINED_FUNCTION_2();
  v6 = v5;
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_10_16();
  v28 = v8;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08BB0);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_36_1();
  v10 = type metadata accessor for NSUnitSpeed.WeatherFormatComponent(0);
  v11 = OUTLINED_FUNCTION_11_2(v10);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_54();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_16_0();
  if (*(v0 + 16))
  {
    sub_1BCE1E100();
    NSUnitSpeed.WeatherFormatComponent.hash(into:)();
    sub_1BCE1E150();
    OUTLINED_FUNCTION_26_4();
    OUTLINED_FUNCTION_59();
    if ((*(v15 + v14) >> v1))
    {
      v16 = ~v13;
      v27 = ~v13;
      v30 = (v6 + 8);
      while (1)
      {
        OUTLINED_FUNCTION_23_6();
        sub_1BC96DDD0();
        v17 = *(v32 + 48);
        OUTLINED_FUNCTION_120();
        sub_1BC96DDD0();
        v18 = OUTLINED_FUNCTION_109();
        __swift_instantiateConcreteTypeFromMangledNameV2(v18);
        OUTLINED_FUNCTION_8_0(v2);
        if (v20)
        {
          break;
        }

        OUTLINED_FUNCTION_24_5();
        sub_1BC96DDD0();
        OUTLINED_FUNCTION_8_0(v2 + v17);
        if (v20)
        {
          OUTLINED_FUNCTION_4_24();
          sub_1BC96DF88(v4, v21);
          (*v30)(v3, v31);
LABEL_12:
          sub_1BC94C05C(v2, &qword_1EBD08BB0);
          goto LABEL_15;
        }

        (*(v6 + 32))(v28, v2 + v17, v31);
        sub_1BC947608(0, &qword_1EDA1F1C8);
        v29 = sub_1BCE18640();
        v22 = *v30;
        v16 = v27;
        (*v30)(v28, v31);
        OUTLINED_FUNCTION_4_24();
        sub_1BC96DF88(v4, v23);
        v22(v3, v31);
        if (v29)
        {
LABEL_17:
          OUTLINED_FUNCTION_4_24();
          sub_1BC96DF88(v2, v26);
          goto LABEL_16;
        }

        OUTLINED_FUNCTION_4_24();
        sub_1BC96DF88(v2, v24);
LABEL_15:
        v1 = (v1 + 1) & v16;
        OUTLINED_FUNCTION_55_1();
        if (((v25 >> v1) & 1) == 0)
        {
          goto LABEL_16;
        }
      }

      OUTLINED_FUNCTION_4_24();
      sub_1BC96DF88(v4, v19);
      OUTLINED_FUNCTION_8_0(v2 + v17);
      if (v20)
      {
        goto LABEL_17;
      }

      goto LABEL_12;
    }
  }

LABEL_16:
  OUTLINED_FUNCTION_21();
}

unint64_t sub_1BC97E800()
{
  result = qword_1EDA1AAA8;
  if (!qword_1EDA1AAA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA1AAA8);
  }

  return result;
}

uint64_t NSUnitSpeed.WeatherFormatComponent.hash(into:)()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08270);
  OUTLINED_FUNCTION_2();
  v3 = v2;
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v14 - v5;
  v7 = type metadata accessor for NSUnitSpeed.WeatherFormatComponent(0);
  v8 = OUTLINED_FUNCTION_14(v7);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_8_64();
  OUTLINED_FUNCTION_16_2();
  sub_1BC970B70();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD078B0);
  OUTLINED_FUNCTION_29_0(v0, 1, v9);
  if (v10)
  {
    return MEMORY[0x1BFB30850](0);
  }

  (*(v3 + 32))(v6, v0, v1);
  MEMORY[0x1BFB30850](1);
  OUTLINED_FUNCTION_10_0();
  sub_1BC957184(v11, v12);
  OUTLINED_FUNCTION_33_6();
  sub_1BCE1D190();
  return (*(v3 + 8))(v6, v1);
}

uint64_t sub_1BC97E9E0()
{
  v1 = OUTLINED_FUNCTION_27();
  v2(v1);
  OUTLINED_FUNCTION_4();
  (*(v3 + 8))(v0);
  return v0;
}

uint64_t sub_1BC97EA34(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_4();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1BC97EA90(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NSUnitSpeed.BaseWeatherFormatStyle(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BC97EAF4()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v5 = *(v0 + 9);
  v3 = swift_allocObject();
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  *(v3 + 25) = v5;
  j__swift_retain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0E268);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0E270);
  sub_1BC957184(&qword_1EDA1B750, &qword_1EBD0E268);
  sub_1BC97E400(&qword_1EDA1AAA0, &qword_1EBD0E270, &unk_1BCE6DDB8, sub_1BC97E800);
  sub_1BCE1C9F0();
}

uint64_t sub_1BC97EC58()
{
  j__swift_release(*(v0 + 16), *(v0 + 24));

  return MEMORY[0x1EEE6BDD0](v0, 26, 7);
}

void OUTLINED_FUNCTION_38_7(unint64_t a1@<X8>)
{

  sub_1BCB653B4(a1 > 1, v2, 1, v1);
}

uint64_t OUTLINED_FUNCTION_38_8()
{

  return sub_1BCE1E090();
}

uint64_t OUTLINED_FUNCTION_38_12()
{
  *(v4 - 176) = v1;
  *(v4 - 168) = v3;
  *(v4 - 160) = v0;
  *(v4 - 88) = v2;

  return sub_1BCE1DF80();
}

uint64_t OUTLINED_FUNCTION_38_14()
{
}

void sub_1BC97ED98()
{
  OUTLINED_FUNCTION_20_0();
  v14 = v0;
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(v1);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v15[-1] - v10;
  sub_1BCE1A780();
  v15[5] = v8;
  v15[6] = v6;
  sub_1BC9660CC(v4, v11, v2);
  OUTLINED_FUNCTION_43_3();
  OUTLINED_FUNCTION_76();
  sub_1BCB60180(v12, v13);

  sub_1BCE1DCC0();
  sub_1BCE1AA10();

  sub_1BC96B2D0(v15);
  sub_1BCE1A790();
  OUTLINED_FUNCTION_21();
}

uint64_t FloatingPoint.clamped(to:)(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_3_6();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BCE1D200();
  sub_1BCE1E0D0();
  sub_1BCE1E0C0();
  return (*(v4 + 8))(v7, a2);
}

uint64_t sub_1BC97EFD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD095B0);
  MEMORY[0x1EEE9AC00](v28);
  v6 = v27 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07890);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = v27 - v8;
  v10 = type metadata accessor for NSUnitTemperature.BaseWeatherFormatStyle(0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Set<>.full.getter();
  v13 = sub_1BCE19280();
  __swift_storeEnumTagSinglePayload(v9, 1, 1, v13);
  static WeatherFormatStyle<>.weather(_:locale:)();

  sub_1BC94C05C(v9, &qword_1EBD07890);
  swift_getObjectType();
  v27[1] = a3;
  v14 = sub_1BCE1A420();
  v15 = [v14 symbol];

  v16 = sub_1BCE1D280();
  v18 = v17;

  sub_1BC97F790();
  if (v20)
  {
    v21 = v19;
    sub_1BC97EA34(v12, type metadata accessor for NSUnitTemperature.BaseWeatherFormatStyle);
  }

  else
  {
    v29 = 0;
    sub_1BC967B28();
    v21 = v22;
    if (qword_1EDA1F638 != -1)
    {
      swift_once();
    }

    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07CA8);
    (*(*(v23 - 8) + 16))(v6, a1, v23);
    v24 = v28;
    sub_1BC97FBF0(v12, &v6[*(v28 + 44)]);
    v6[*(v24 + 48)] = 0;
    v25 = &v6[*(v24 + 52)];
    *v25 = v16;
    v25[1] = v18;
    sub_1BC97FC54();
    sub_1BC94C05C(v6, &qword_1EBD095B0);
    sub_1BC97EA34(v12, type metadata accessor for NSUnitTemperature.BaseWeatherFormatStyle);
  }

  return v21;
}

uint64_t getEnumTagSinglePayload for ForegroundEffect(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD)
  {
    v2 = a2 + 3;
    if (a2 + 3 >= 0xFFFF00)
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
        v5 = a1[1];
        if (!a1[1])
        {
          break;
        }

        return (*a1 | (v5 << 8)) - 3;
      case 2:
        v5 = *(a1 + 1);
        if (*(a1 + 1))
        {
          return (*a1 | (v5 << 8)) - 3;
        }

        break;
      case 3:
        __break(1u);
        JUMPOUT(0x1BC97F3C0);
      case 4:
        v5 = *(a1 + 1);
        if (!v5)
        {
          break;
        }

        return (*a1 | (v5 << 8)) - 3;
      default:
        break;
    }
  }

  v7 = *a1;
  v8 = v7 >= 3;
  v9 = v7 - 3;
  if (!v8)
  {
    v9 = -1;
  }

  if (v9 + 1 >= 2)
  {
    return v9;
  }

  else
  {
    return 0;
  }
}

void sub_1BC97F60C(uint64_t a1, __int16 a2)
{
  v4 = HIBYTE(a2);
  v5 = sub_1BCE1BC20();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v4 != 4)
  {
    if (a2)
    {
      j__swift_retain();
      if (!a1)
      {
        return;
      }
    }

    else
    {
      j__swift_retain();
      sub_1BCE1D8C0();
      v9 = sub_1BCE1C1F0();
      sub_1BCE1AC20();

      sub_1BCE1BC10();
      swift_getAtKeyPath();
      j__swift_release(a1, 0);
      (*(v6 + 8))(v8, v5);
      if (!v11)
      {
        return;
      }
    }

    HIBYTE(v10) = HIBYTE(a2);
    sub_1BC97F8B4(&v10 + 7);
  }
}

void sub_1BC97F790()
{
  OUTLINED_FUNCTION_96();
  OUTLINED_FUNCTION_33_5();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD095B0);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_26_8();
  if (qword_1EDA1F638 != -1)
  {
    OUTLINED_FUNCTION_2_6();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07CA8);
  OUTLINED_FUNCTION_4();
  v2 = OUTLINED_FUNCTION_74_1();
  v3(v2);
  OUTLINED_FUNCTION_81_2(*(v0 + 44));
  OUTLINED_FUNCTION_37_4();
  OUTLINED_FUNCTION_25_7();
  sub_1BC97A3B0();
  v4 = OUTLINED_FUNCTION_25_7();
  sub_1BC94C05C(v4, v5);
  OUTLINED_FUNCTION_72_1();
  OUTLINED_FUNCTION_18_8();
}

void sub_1BC97F8B4(char *a1)
{
  v2 = sub_1BCE1CFF0();
  OUTLINED_FUNCTION_2();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_2_0();
  v8 = v7 - v6;
  v9 = sub_1BCE1D020();
  OUTLINED_FUNCTION_2();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_2_0();
  v15 = v14 - v13;
  v16 = *a1;
  if (qword_1EDA18AE0 != -1)
  {
    OUTLINED_FUNCTION_0_15();
  }

  OUTLINED_FUNCTION_6_9();
  if (v17)
  {
    OUTLINED_FUNCTION_9_9();
    v18 = swift_allocObject();
    swift_weakInit();
    v19 = swift_allocObject();
    *(v19 + 16) = v18;
    *(v19 + 24) = v16;
    aBlock[4] = sub_1BC97FF48;
    aBlock[5] = v19;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1BC97FFC4;
    aBlock[3] = &block_descriptor;
    v21 = v9;
    v20 = _Block_copy(aBlock);

    sub_1BCE1D000();
    sub_1BC95C6F8(&qword_1EDA1E910, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07D38);
    sub_1BC94DD84(&qword_1EDA1C240, &qword_1EBD07D38);
    sub_1BCE1DC30();
    MEMORY[0x1BFB30100](0, v15, v8, v20);
    _Block_release(v20);
    (*(v4 + 8))(v8, v2);
    (*(v11 + 8))(v15, v21);
  }
}

uint64_t sub_1BC97FBB8()
{

  return MEMORY[0x1EEE6BDD0](v0, 25, 7);
}

uint64_t sub_1BC97FBF0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NSUnitTemperature.BaseWeatherFormatStyle(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BC97FC70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07890);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v31 - v7;
  sub_1BCE191B0();
  v9 = sub_1BCE19280();
  __swift_storeEnumTagSinglePayload(v8, 0, 1, v9);
  v10 = *(a3 + 16);
  if (v10)
  {
    v32 = v8;
    v33 = a1;
    v34 = a2;
    v38 = MEMORY[0x1E69E7CC0];
    sub_1BC9804BC(0, v10, 0);
    v11 = v38;
    v12 = (a3 + 64);
    v13 = MEMORY[0x1E69E6530];
    v14 = MEMORY[0x1E69E65A8];
    v15 = MEMORY[0x1E69E6158];
    do
    {
      v17 = *(v12 - 4);
      v16 = *(v12 - 3);
      v18 = *v12;
      v12 += 40;
      switch(v18)
      {
        case 1:
        case 2:
        case 3:
        case 5:
          v36 = v15;
          v19 = sub_1BC9804E0();
          v37 = v19;
          v35[0] = v17;
          v35[1] = v16;

          v20 = v15;
          break;
        default:
          v36 = v13;
          v37 = v14;
          v19 = v14;
          v20 = v13;
          v35[0] = v17;
          break;
      }

      v38 = v11;
      v22 = *(v11 + 16);
      v21 = *(v11 + 24);
      if (v22 >= v21 >> 1)
      {
        OUTLINED_FUNCTION_16_29(v21);
        v20 = v36;
        v19 = v37;
      }

      v23 = __swift_mutable_project_boxed_opaque_existential_1(v35, v20);
      v24 = MEMORY[0x1EEE9AC00](v23);
      v26 = &v31 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v27 + 16))(v26, v24);
      sub_1BC980584(v22, v26, &v38, v20, v19);
      __swift_destroy_boxed_opaque_existential_1(v35);
      v11 = v38;
      --v10;
    }

    while (v10);
    v8 = v32;
  }

  v28 = sub_1BCE1D290();

  sub_1BC94C0B4(v8, &qword_1EBD07890);
  v29 = sub_1BC980738(0, 0xE000000000000000, v28);

  return v29;
}

uint64_t OUTLINED_FUNCTION_78_2()
{
}

uint64_t sub_1BC97FFC4(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t sub_1BC980008(uint64_t a1, char a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v4 = result;
    *(result + 16) = a2;
    sub_1BC9801A4();
    *(v4 + 20) = 0;
  }

  return result;
}

void *sub_1BC98006C(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07880);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || &a4[5 * v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07940);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_1BC9801A4()
{
  v0 = sub_1BCE1CFF0();
  v11 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v2 = &v10 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1BCE1D020();
  v3 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BC947608(0, &qword_1EDA1C128);
  v6 = sub_1BCE1D9B0();
  v7 = swift_allocObject();
  swift_weakInit();
  aBlock[4] = sub_1BC98FF48;
  aBlock[5] = v7;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BC97FFC4;
  aBlock[3] = &block_descriptor_16;
  v8 = _Block_copy(aBlock);

  sub_1BCE1D000();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1BC95C6F8(&qword_1EDA1E910, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07D38);
  sub_1BC94DD84(&qword_1EDA1C240, &qword_1EBD07D38);
  sub_1BCE1DC30();
  MEMORY[0x1BFB30100](0, v5, v2, v8);
  _Block_release(v8);

  (*(v11 + 8))(v2, v0);
  return (*(v3 + 8))(v5, v10);
}

uint64_t sub_1BC980488()
{
  swift_weakDestroy();
  OUTLINED_FUNCTION_9_9();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

void *sub_1BC9804BC(void *a1, int64_t a2, char a3)
{
  result = sub_1BC98006C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

unint64_t sub_1BC9804E0()
{
  result = qword_1EDA1EDB8;
  if (!qword_1EDA1EDB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA1EDB8);
  }

  return result;
}

uint64_t sub_1BC980584(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v13 = a4;
  v14 = a5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v12);
  (*(*(a4 - 8) + 32))(boxed_opaque_existential_1, a2, a4);
  v10 = *a3;
  *(v10 + 16) = a1 + 1;
  return sub_1BC947AB4(&v12, v10 + 40 * a1 + 32);
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *a1)
{
  v1 = a1;
  if ((*(*(a1[3] - 8) + 82) & 2) != 0)
  {
    *a1 = swift_allocBox();
    return v2;
  }

  return v1;
}

uint64_t static WeatherConditionBackgroundModel.== infix(_:_:)()
{
  OUTLINED_FUNCTION_9();
  memcpy(__dst, v1, sizeof(__dst));
  memcpy(v6, v0, sizeof(v6));
  if (!static SkyBackgroundGradient.== infix(_:_:)(__dst, v6))
  {
    return 0;
  }

  v2 = v1[104];
  v3 = v0[104];
  if (v2 == 2)
  {
    if (v3 != 2)
    {
      return 0;
    }
  }

  else if (v3 == 2 || ((v3 ^ v2) & 1) != 0)
  {
    return 0;
  }

  v4 = *(type metadata accessor for WeatherConditionBackgroundModel(0) + 24);

  return static BackgroundAnimationData.== infix(_:_:)(&v1[v4], &v0[v4]);
}

uint64_t sub_1BC980738(uint64_t a1, uint64_t a2, uint64_t a3)
{
  MEMORY[0x1BFB2FB00](a1, a2);
  MEMORY[0x1BFB2FB00](46, 0xE100000000000000);
  v4 = sub_1BCE1D440();

  if (v4)
  {
    v5 = sub_1BCC0DB14(1);
    a3 = MEMORY[0x1BFB2FA90](v5);
  }

  return a3;
}

uint64_t sub_1BC9807F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07890);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v6);
  v8 = v43 - v7;
  sub_1BCE191B0();
  v9 = sub_1BCE19280();
  __swift_storeEnumTagSinglePayload(v8, 0, 1, v9);
  v10 = *(a3 + 16);
  if (v10)
  {
    v43[0] = v8;
    v43[1] = a1;
    v43[2] = a2;
    v49 = MEMORY[0x1E69E7CC0];
    sub_1BC9804BC(0, v10, 0);
    v11 = v49;
    v44 = 0x80000001BCE8FE50;
    v12 = (a3 + 64);
    v13 = MEMORY[0x1E69E6158];
    do
    {
      v14 = *(v12 - 4);
      v15 = *(v12 - 3);
      v16 = *(v12 - 2);
      v17 = *(v12 - 1);
      v18 = *v12;
      v12 += 40;
      switch(v18)
      {
        case 1:
        case 2:
          v47 = v13;
          v48 = sub_1BC9804E0();
          v45 = v14;
          v46 = v15;
          goto LABEL_8;
        case 3:
          v45 = 23390;
          v46 = 0xE200000000000000;
          v19 = OUTLINED_FUNCTION_13_37();
          sub_1BCD03FD4(v19, v20, v21, v22, v23);
          MEMORY[0x1BFB2FB00](v14, v15);
          MEMORY[0x1BFB2FB00](0xD000000000000021, v44);
          v24 = v45;
          v25 = v46;
          v47 = v13;
          v48 = sub_1BC9804E0();
          v26 = OUTLINED_FUNCTION_13_37();
          sub_1BCD04FDC(v26, v27, v28, v29, v30);
          v45 = v24;
          v46 = v25;
          break;
        case 5:
          v47 = v13;
          v48 = sub_1BC9804E0();
          v45 = v16;
          v46 = v17;
LABEL_8:

          break;
        default:
          v48 = MEMORY[0x1E69E65A8];
          v47 = MEMORY[0x1E69E6530];
          v45 = v14;
          break;
      }

      v49 = v11;
      v32 = *(v11 + 16);
      v31 = *(v11 + 24);
      if (v32 >= v31 >> 1)
      {
        OUTLINED_FUNCTION_16_29(v31);
      }

      v33 = v47;
      v34 = v48;
      v35 = __swift_mutable_project_boxed_opaque_existential_1(&v45, v47);
      v36 = MEMORY[0x1EEE9AC00](v35);
      v38 = v43 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v39 + 16))(v38, v36);
      sub_1BC980584(v32, v38, &v49, v33, v34);
      __swift_destroy_boxed_opaque_existential_1(&v45);
      v11 = v49;
      --v10;
    }

    while (v10);
    v8 = v43[0];
    v40 = v44;
  }

  else
  {
    v40 = 0x80000001BCE8FE50;
  }

  v41 = sub_1BCE1D290();

  sub_1BC94C0B4(v8, &qword_1EBD07890);
  sub_1BC980738(0xD000000000000021, v40, v41);

  return OUTLINED_FUNCTION_62();
}

uint64_t static BackgroundAnimationData.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for BackgroundAnimationData.Model(0);
  v6 = OUTLINED_FUNCTION_14(v5);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_2_0();
  v9 = v8 - v7;
  type metadata accessor for BackgroundAnimationData(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_3();
  v13 = v11 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v24[-v15];
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0CD98);
  v18 = OUTLINED_FUNCTION_14(v17);
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_24_15();
  v20 = *(v19 + 56);
  sub_1BC96AF48(a1, v2);
  sub_1BC96AF48(a2, v2 + v20);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1BC96AF48(v2, v13);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      OUTLINED_FUNCTION_3_74();
      sub_1BC999604();
      v21 = static BackgroundAnimationData.Model.== infix(_:_:)(v13, v9);
      sub_1BC969F84(v9, type metadata accessor for BackgroundAnimationData.Model);
      sub_1BC969F84(v13, type metadata accessor for BackgroundAnimationData.Model);
LABEL_9:
      sub_1BC969F84(v2, type metadata accessor for BackgroundAnimationData);
      return v21 & 1;
    }

    OUTLINED_FUNCTION_2_82();
    sub_1BC969F84(v13, v22);
  }

  else
  {
    sub_1BC96AF48(v2, v16);
    memcpy(__dst, v16, 0x59uLL);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      memcpy(v26, (v2 + v20), 0x59uLL);
      memcpy(v25, v16, 0x59uLL);
      memcpy(v24, (v2 + v20), 0x59uLL);
      v21 = static WeatherConditionBackgroundOptions.== infix(_:_:)(v25, v24);
      sub_1BC9812B4(v26);
      sub_1BC9812B4(__dst);
      goto LABEL_9;
    }

    sub_1BC9812B4(__dst);
  }

  sub_1BC94C05C(v2, &qword_1EBD0CD98);
  v21 = 0;
  return v21 & 1;
}

uint64_t OUTLINED_FUNCTION_58_0@<X0>(char a1@<W8>)
{
  *(v1 - 72) = a1;

  return sub_1BCE1DF30();
}

uint64_t OUTLINED_FUNCTION_58_5()
{

  return swift_getWitnessTable();
}

uint64_t OUTLINED_FUNCTION_58_6(double a1, double a2, double a3, double a4)
{
  *&STACK[0x3E8] = a1;
  *&STACK[0x3E0] = a2;
  *&STACK[0x3D8] = a3;
  *&STACK[0x3D0] = a4;
}

BOOL static SkyBackgroundGradient.== infix(_:_:)(float64x2_t *a1, float64x2_t *a2)
{
  result = 0;
  if ((vminv_u8(vmovn_s16(vuzp1q_s16(vuzp1q_s32(vceqq_f64(*a1, *a2), vceqq_f64(a1[1], a2[1])), vuzp1q_s32(vceqq_f64(a1[2], a2[2]), vceqq_f64(a1[3], a2[3]))))) & 1) != 0 && (~vaddvq_s32(vandq_s8(vuzp1q_s32(vceqq_f64(a1[4], a2[4]), vceqq_f64(a1[5], a2[5])), xmmword_1BCE54AE0)) & 0xF) == 0)
  {
    return a1[6].f64[0] == a2[6].f64[0];
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_65_0()
{

  return type metadata accessor for NSUnitPressure.BaseWeatherFormatStyle(0);
}

uint64_t OUTLINED_FUNCTION_65_1()
{

  return sub_1BCE1DF30();
}

uint64_t OUTLINED_FUNCTION_65_3()
{

  return sub_1BC95DCE8();
}

uint64_t static WeatherConditionBackgroundOptions.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 9);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v33 = *(a1 + 33);
  v34 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  v8 = *(a1 + 56);
  v9 = *(a1 + 64);
  v26 = *(a1 + 80);
  v28 = *(a1 + 88);
  v10 = *(a2 + 8);
  v11 = *(a2 + 9);
  v12 = *(a2 + 16);
  v13 = *(a2 + 24);
  v14 = *(a2 + 32);
  v15 = *(a2 + 33);
  v31 = *(a2 + 34);
  v32 = *(a1 + 34);
  v16 = *(a2 + 40);
  v17 = *(a2 + 48);
  v18 = *(a2 + 56);
  v19 = *(a2 + 64);
  v29 = *(a2 + 72);
  v30 = *(a1 + 72);
  v25 = *(a2 + 80);
  v27 = *(a2 + 88);
  v20 = sub_1BC98121C(*a1, *a2);
  result = 0;
  if ((v20 & 1) != 0 && ((v2 ^ v10) & 1) == 0 && ((v3 ^ v11) & 1) == 0)
  {
    v37 = v4;
    v38 = v5;
    v35 = v12;
    v36 = v13;
    sub_1BC9775B8(v4, v5);
    sub_1BC9775B8(v12, v13);
    v22 = static VFXEffectViewID.== infix(_:_:)(&v37, &v35);
    sub_1BC977830(v35, v36);
    sub_1BC977830(v37, v38);
    result = 0;
    if ((v22 & 1) != 0 && v34 == v14 && v33 == v15 && v32 == v31)
    {
      v39.origin.x = v6;
      v39.origin.y = v7;
      v39.size.width = v8;
      v39.size.height = v9;
      v40.origin.x = v16;
      v40.origin.y = v17;
      v40.size.width = v18;
      v40.size.height = v19;
      v23 = CGRectEqualToRect(v39, v40);
      result = 0;
      if (v23 && v30 == v29)
      {
        if (v28)
        {
          if ((v27 & 1) == 0)
          {
            return 0;
          }
        }

        else
        {
          v24 = v27;
          if (v26 != v25)
          {
            v24 = 1;
          }

          if (v24)
          {
            return 0;
          }
        }

        return 1;
      }
    }
  }

  return result;
}

uint64_t sub_1BC9811E0()
{
  swift_arrayDestroy();
  v0 = OUTLINED_FUNCTION_0_22();

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1BC98121C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      return 1;
    }

    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (sub_1BCE1E090() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t sub_1BC981308@<X0>(uint64_t *a1@<X8>)
{
  result = TargetWindowSizeClass.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t ConstantConditionsStringBuilder.buildString(from:hourlyForecast:feelsLikeDescription:timeZone:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v9 = *a3;
  v8 = a3[1];
  v11 = a3[2];
  v10 = a3[3];
  __swift_project_boxed_opaque_existential_1((v4 + 16), *(v4 + 40));
  v12 = *(sub_1BC981768(a1, a2) + 16);

  if (v12)
  {
    *a4 = 0u;
    *(a4 + 16) = 0u;
  }

  else
  {
    sub_1BC982BF8(a1);
    if (v8)
    {
      v14 = qword_1EDA1EFB0;

      if (v14 != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      v15 = qword_1EDA1EFB8;
      v16 = sub_1BCE18B60();
      v18 = v17;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD078E8);
      inited = swift_initStackObject();
      v20 = OUTLINED_FUNCTION_1_12(inited, xmmword_1BCE3E030);
      v20[4].n128_u64[1] = v9;
      v20[5].n128_u64[0] = v8;
      v20[5].n128_u64[1] = v11;
      v20[6].n128_u64[0] = v10;
      v20[6].n128_u8[8] = 5;
      v21 = sub_1BC97FC70(v16, v18, inited);
      v23 = v22;
      v24 = sub_1BC9807F0(v16, v18, inited);
      v26 = v25;
      swift_setDeallocating();
      sub_1BC9811E0();

      *a4 = v21;
      *(a4 + 8) = v23;
      *(a4 + 16) = v24;
      *(a4 + 24) = v26;
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD078E8);
      v27 = swift_initStackObject();
      OUTLINED_FUNCTION_1_12(v27, xmmword_1BCE3E050);
      v28 = sub_1BC97FC70(16421, 0xE200000000000000, v27);
      v30 = v29;
      v31 = sub_1BC9807F0(16421, 0xE200000000000000, v27);
      v33 = v32;
      swift_setDeallocating();
      result = sub_1BC9811E0();
      *a4 = v28;
      *(a4 + 8) = v30;
      *(a4 + 16) = v31;
      *(a4 + 24) = v33;
    }
  }

  return result;
}

uint64_t TargetWindowSizeClass.rawValue.getter()
{
  result = 0x746361706D6F43;
  switch(*v0)
  {
    case 1:
      result = 0x7469617274726F50;
      break;
    case 2:
      result = 0x70616373646E614CLL;
      break;
    case 3:
      result = 0x6469776172746C55;
      break;
    case 4:
      result = 0x726574736F50;
      break;
    case 5:
      result = 0x6863746157;
      break;
    case 6:
      result = 0x76656C67614DLL;
      break;
    case 7:
      result = 0x4D746361706D6F43;
      break;
    case 8:
      result = 0x4D746361706D6F43;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1BC9816C8()
{
  OUTLINED_FUNCTION_10_5();
  sub_1BCE1A780();
  OUTLINED_FUNCTION_5_3();
  OUTLINED_FUNCTION_16_5();
  OUTLINED_FUNCTION_0_10();
  sub_1BCE1DEB0();
  sub_1BCE1AA40();

  sub_1BC96B2D0(v2);
  sub_1BCE1A790();
  return v1;
}

uint64_t sub_1BC981768(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD085A0);
  OUTLINED_FUNCTION_2();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v18[-v8];
  v10 = sub_1BCE19060();
  OUTLINED_FUNCTION_2();
  v12 = v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v18[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1BC9819C4(v15);
  (*(v6 + 16))(v9, a2, v4);
  v19 = a1;
  v20 = v15;
  v16 = sub_1BC9781E0(sub_1BC982B70, v18);
  (*(v12 + 8))(v15, v10);
  return v16;
}

uint64_t sub_1BC981934(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1BC97E400(&qword_1EDA1B448, &qword_1EBD0E210, &unk_1BCE6D8B0, sub_1BC982724);

  return MEMORY[0x1EEDDEA00](a1, a2, a3, a4, v8);
}

uint64_t sub_1BC9819C4@<X0>(uint64_t a1@<X8>)
{
  v107 = a1;
  v109 = sub_1BCE192F0();
  v103 = *(v109 - 8);
  MEMORY[0x1EEE9AC00](v109);
  v104 = &v90 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = sub_1BCE19320();
  v102 = *(v108 - 8);
  MEMORY[0x1EEE9AC00](v108);
  v105 = &v90 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = sub_1BCE192C0();
  v100 = *(v113 - 8);
  MEMORY[0x1EEE9AC00](v113);
  v106 = &v90 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1BCE193C0();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v114 = &v90 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07868);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v92 = &v90 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v91 = &v90 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v93 = &v90 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v94 = &v90 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v97 = (&v90 - v16);
  v98 = sub_1BCE188F0();
  v96 = *(v98 - 8);
  MEMORY[0x1EEE9AC00](v98);
  v18 = &v90 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = sub_1BCE193E0();
  v99 = *(v101 - 8);
  MEMORY[0x1EEE9AC00](v101);
  v20 = &v90 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_1BCE19060();
  v112 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v110 = &v90 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v90 - v24;
  sub_1BCE196A0();
  sub_1BCE192A0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08570);
  v95 = v5;
  v26 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_1BCE3E050;
  v28 = *(v5 + 104);
  v28(v27 + v26, *MEMORY[0x1E6969A58], v4);
  sub_1BC94FCF8();
  sub_1BCE192E0();

  v29 = sub_1BCE18850();
  v31 = v30;
  (*(v96 + 8))(v18, v98);
  if (v31)
  {
    v32 = 0;
  }

  else
  {
    v32 = v29;
  }

  v33 = v114;
  v28(v114, *MEMORY[0x1E6969A48], v4);
  v34 = v97;
  v98 = v20;
  sub_1BCE19370();
  (*(v95 + 8))(v33, v4);
  v114 = v21;
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v34, 1, v21);
  v111 = v25;
  if (EnumTagSinglePayload == 1)
  {
    v36 = v110;
    v37 = v114;
    (*(v112 + 16))(v110, v25, v114);
    if (__swift_getEnumTagSinglePayload(v34, 1, v37) != 1)
    {
      sub_1BCA0A6F0(v34);
    }
  }

  else
  {
    v36 = v110;
    (*(v112 + 32))(v110, v34, v114);
  }

  v39 = v108;
  v38 = v109;
  v41 = v105;
  v40 = v106;
  v42 = v104;
  if ((v32 - 4) < 8)
  {
    v43 = v100;
    (*(v100 + 104))(v106, *MEMORY[0x1E69698D0], v113);
    v44 = v102;
    (*(v102 + 104))(v41, *MEMORY[0x1E69699C8], v39);
    v45 = v103;
    (*(v103 + 104))(v42, *MEMORY[0x1E6969998], v38);
    v46 = v39;
    v47 = v94;
    v48 = v42;
    v49 = v98;
    sub_1BCE19350();
    (*(v45 + 8))(v48, v38);
    v50 = v112;
    (*(v44 + 8))(v41, v46);
    (*(v43 + 8))(v40, v113);
    v51 = *(v50 + 8);
    v52 = v114;
    v51(v110, v114);
    (*(v99 + 8))(v49, v101);
    if (__swift_getEnumTagSinglePayload(v47, 1, v52) != 1)
    {
      v69 = v114;
      v51(v111, v114);
      return (*(v50 + 32))(v107, v47, v69);
    }

    v53 = v114;
    (*(v50 + 32))(v107, v111, v114);
    goto LABEL_19;
  }

  v54 = v103;
  if ((v32 - 20) >= 0xFFFFFFFFFFFFFFF8)
  {
    v70 = v100;
    v71 = v106;
    (*(v100 + 104))(v106, *MEMORY[0x1E69698D0], v113);
    v72 = v102;
    (*(v102 + 104))(v41, *MEMORY[0x1E69699C8], v39);
    v73 = v109;
    (*(v54 + 104))(v42, *MEMORY[0x1E6969998], v109);
    v47 = v93;
    v74 = v54 + 104;
    v75 = v42;
    v76 = v98;
    sub_1BCE19350();
    (*(v74 - 96))(v75, v73);
    (*(v72 + 8))(v41, v108);
    (*(v70 + 8))(v71, v113);
    v77 = v112;
    v78 = *(v112 + 8);
    v79 = v114;
    v78(v110, v114);
    (*(v99 + 8))(v76, v101);
    if (__swift_getEnumTagSinglePayload(v47, 1, v79) == 1)
    {
      v53 = v114;
      (*(v77 + 32))(v107, v111, v114);
LABEL_19:
      result = __swift_getEnumTagSinglePayload(v47, 1, v53);
      if (result == 1)
      {
        return result;
      }

      v68 = v47;
      return sub_1BCA0A6F0(v68);
    }

    v87 = v114;
    v78(v111, v114);
    return (*(v77 + 32))(v107, v47, v87);
  }

  else
  {
    v97 = (v103 + 8);
    v55 = v100 + 104;
    (*(v100 + 104))(v106, *MEMORY[0x1E69698D0], v113);
    v56 = v102 + 104;
    (*(v102 + 104))(v41, *MEMORY[0x1E69699C8], v39);
    v57 = v109;
    (*(v54 + 104))(v42, *MEMORY[0x1E6969998], v109);
    v58 = (v56 - 96);
    v59 = (v55 - 96);
    if (v32 < 20)
    {
      v80 = v92;
      v81 = v42;
      v82 = v98;
      sub_1BCE19350();
      (*v97)(v81, v57);
      (*v58)(v41, v39);
      (*v59)(v40, v113);
      v83 = v112;
      v84 = *(v112 + 8);
      v85 = v114;
      v84(v36, v114);
      (*(v99 + 8))(v82, v101);
      if (__swift_getEnumTagSinglePayload(v80, 1, v85) == 1)
      {
        v86 = v114;
        (*(v83 + 32))(v107, v111, v114);
        result = __swift_getEnumTagSinglePayload(v80, 1, v86);
        if (result != 1)
        {
          v68 = v80;
          return sub_1BCA0A6F0(v68);
        }
      }

      else
      {
        v89 = v114;
        v84(v111, v114);
        return (*(v83 + 32))(v107, v80, v89);
      }
    }

    else
    {
      v60 = v91;
      v61 = v42;
      v62 = v98;
      sub_1BCE19350();
      (*v97)(v61, v57);
      (*v58)(v41, v39);
      (*v59)(v40, v113);
      (*(v99 + 8))(v62, v101);
      v63 = v112;
      v64 = *(v112 + 8);
      v65 = v114;
      v64(v111, v114);
      if (__swift_getEnumTagSinglePayload(v60, 1, v65) == 1)
      {
        v66 = v114;
        (*(v63 + 32))(v107, v36, v114);
        result = __swift_getEnumTagSinglePayload(v60, 1, v66);
        if (result == 1)
        {
          return result;
        }

        v68 = v60;
        return sub_1BCA0A6F0(v68);
      }

      v88 = v114;
      v64(v36, v114);
      return (*(v63 + 32))(v107, v60, v88);
    }
  }

  return result;
}

unint64_t sub_1BC982724()
{
  result = qword_1EDA1B450;
  if (!qword_1EDA1B450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA1B450);
  }

  return result;
}

BOOL sub_1BC98277C()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  v1 = swift_unknownObjectWeakLoadStrong();
  v2 = v1;
  if (Strong)
  {
    if (v1)
    {
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      return Strong == v2;
    }

    goto LABEL_5;
  }

  if (v1)
  {
LABEL_5:
    swift_unknownObjectRelease();
    return 0;
  }

  return 1;
}

uint64_t sub_1BC9827F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v40 = a3;
  v4 = sub_1BCE198D0();
  v38 = *(v4 - 8);
  v39 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v37 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v36 = &v33 - v7;
  v8 = sub_1BCE199D0();
  v33 = *(v8 - 8);
  v34 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v33 - v12;
  v14 = sub_1BCE19060();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v33 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v33 - v19;
  sub_1BCE195A0();
  v35 = a2;
  sub_1BCE196A0();
  v21 = sub_1BCE18FC0();
  v22 = *(v15 + 8);
  v22(v17, v14);
  v22(v20, v14);
  if (v21 & 1) != 0 && (sub_1BCE195A0(), v23 = sub_1BCE18FD0(), v22(v20, v14), (v23))
  {
    sub_1BCE195C0();
    v24 = v36;
    sub_1BCE19980();
    v25 = v34;
    v26 = *(v33 + 8);
    v26(v13, v34);
    sub_1BCE196D0();
    v27 = v37;
    sub_1BCE19980();
    v26(v10, v25);
    sub_1BC982BA0();
    v28 = v39;
    v29 = sub_1BCE1D210();
    v30 = *(v38 + 8);
    v30(v27, v28);
    v30(v24, v28);
    v31 = v29 ^ 1;
  }

  else
  {
    v31 = 0;
  }

  return v31 & 1;
}

unint64_t sub_1BC982BA0()
{
  result = qword_1EDA1EB80;
  if (!qword_1EDA1EB80)
  {
    sub_1BCE198D0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA1EB80);
  }

  return result;
}

uint64_t sub_1BC982BF8(uint64_t a1)
{
  v2 = sub_1BCE199D0();
  v31 = *(v2 - 8);
  v32 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1BCE188F0();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1BCE193E0();
  v35 = *(v9 - 8);
  v36 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1BCE19060();
  v33 = *(v12 - 8);
  v34 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = a1;
  sub_1BCE196A0();
  sub_1BCE192A0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08570);
  v15 = sub_1BCE193C0();
  v16 = *(v15 - 8);
  v17 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v18 = swift_allocObject();
  v29 = xmmword_1BCE3E050;
  *(v18 + 16) = xmmword_1BCE3E050;
  (*(v16 + 104))(v18 + v17, *MEMORY[0x1E6969A58], v15);
  sub_1BC94FCF8();
  sub_1BCE192E0();

  v19 = sub_1BCE18850();
  LOBYTE(v15) = v20;
  (*(v6 + 8))(v8, v5);
  if (v15)
  {
    goto LABEL_2;
  }

  if ((v19 - 4) <= 7)
  {
    if (qword_1EDA1EFB0 == -1)
    {
      goto LABEL_10;
    }

    goto LABEL_12;
  }

  if ((v19 - 20) >= 0xFFFFFFFFFFFFFFF8)
  {
    if (qword_1EDA1EFB0 == -1)
    {
LABEL_10:
      swift_beginAccess();
      v23 = qword_1EDA1EFB8;
      sub_1BCE18B60();

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07880);
      v22 = swift_allocObject();
      *(v22 + 16) = v29;
      sub_1BCE196D0();
      sub_1BCE19620();
      String.beginsWithFirstArgument.getter();
      goto LABEL_11;
    }

LABEL_12:
    swift_once();
    goto LABEL_10;
  }

LABEL_2:
  if (qword_1EDA1EFB0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v21 = qword_1EDA1EFB8;
  sub_1BCE18B60();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07880);
  v22 = swift_allocObject();
  *(v22 + 16) = v29;
  sub_1BCE196D0();
  String.beginsWithFirstArgument.getter();
LABEL_11:
  v24 = sub_1BCE19950();
  v26 = v25;
  (*(v31 + 8))(v4, v32);
  *(v22 + 56) = MEMORY[0x1E69E6158];
  *(v22 + 64) = sub_1BC9804E0();
  *(v22 + 32) = v24;
  *(v22 + 40) = v26;
  v27 = sub_1BCE1D250();

  (*(v35 + 8))(v11, v36);
  (*(v33 + 8))(v14, v34);
  return v27;
}

uint64_t String.beginsWithFirstArgument.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD0C550);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BCE43610;
  *(inited + 32) = 16421;
  *(inited + 40) = 0xE200000000000000;
  *(inited + 48) = 1076113701;
  *(inited + 56) = 0xE400000000000000;
  *(inited + 64) = 1076113957;
  *(inited + 72) = 0xE400000000000000;
  sub_1BC970820();
  for (i = 0; ; i += 16)
  {
    if (i == 48)
    {
      swift_setDeallocating();
      sub_1BC9833E4();
      v2 = 0;
      return v2 & 1;
    }

    if (sub_1BCE1DBD0())
    {
      break;
    }
  }

  swift_setDeallocating();
  sub_1BC9833E4();
  v2 = sub_1BCE1D430();

  return v2 & 1;
}

uint64_t sub_1BC9833E4()
{
  swift_arrayDestroy();
  v0 = OUTLINED_FUNCTION_0_22();

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1BC983420(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

void sub_1BC983464()
{
  if (!qword_1EDA1BFC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD08B68);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EDA1BFC0);
    }
  }
}

void sub_1BC9834DC()
{
  sub_1BC983464();
  if (v0 <= 0x3F)
  {
    sub_1BC983550();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_1BC983550()
{
  if (!qword_1EDA1BFB8)
  {
    sub_1BC983598();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDA1BFB8);
    }
  }
}

void sub_1BC983598()
{
  if (!qword_1EDA1BFA8)
  {
    sub_1BC9835F0();
    v0 = sub_1BCE186B0();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDA1BFA8);
    }
  }
}

unint64_t sub_1BC9835F0()
{
  result = qword_1EDA16AF0[0];
  if (!qword_1EDA16AF0[0])
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, qword_1EDA16AF0);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_75_0()
{

  return sub_1BCE1D1E0();
}

uint64_t OUTLINED_FUNCTION_75_1()
{

  return sub_1BCE1DF70();
}

uint64_t OUTLINED_FUNCTION_75_2@<X0>(uint64_t a1@<X8>)
{
  result = *(v3 - 168);
  *(*(v3 - 176) + 8 * a1) = v1 | v2;
  return result;
}

uint64_t Measurement<>.roundPrecipitation()@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08B68);
  OUTLINED_FUNCTION_2();
  v5 = v4;
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_4_9();
  Measurement<>.roundedPrecipitation()();
  sub_1BCE185E0();
  if (v7 == 0.0)
  {
    v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD09B18) + 48);
    (*(v5 + 16))(a1, v1, v3);
    sub_1BCE185E0();
    v10 = v9;
    sub_1BCE185E0();
    v12 = v11;
    (*(v5 + 8))(v1, v3);
    *(a1 + v8) = v10 != v12;
  }

  else
  {
    (*(v5 + 32))(a1, v1, v3);
  }

  type metadata accessor for RoundedPrecipitation();
  return swift_storeEnumTagMultiPayload();
}

uint64_t Measurement<>.roundedPrecipitation()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08B68);
  v0 = sub_1BCE185C0();
  v1 = objc_opt_self();
  v2 = v0;
  v3 = [v1 millimeters];
  sub_1BC947608(0, qword_1EDA16AF0);
  LOBYTE(v0) = OUTLINED_FUNCTION_121();

  if (v0)
  {
    goto LABEL_5;
  }

  v4 = v2;
  v5 = [v1 centimeters];
  v6 = OUTLINED_FUNCTION_121();

  if (v6)
  {

    OUTLINED_FUNCTION_68();
    sub_1BCE185E0();
    sub_1BCE185E0();
    goto LABEL_6;
  }

  v2 = v4;
  v7 = [v1 meters];
  v8 = OUTLINED_FUNCTION_121();

  if (v8)
  {
LABEL_5:

    OUTLINED_FUNCTION_68();
    sub_1BCE185E0();
  }

  else
  {
    v10 = [v1 inches];
    v11 = OUTLINED_FUNCTION_121();

    OUTLINED_FUNCTION_68();
    sub_1BCE185E0();
    if (v11)
    {
      OUTLINED_FUNCTION_68();
      sub_1BCE185E0();
    }
  }

LABEL_6:
  OUTLINED_FUNCTION_68();
  sub_1BCE185C0();

  return sub_1BCE185D0();
}

uint64_t OUTLINED_FUNCTION_44_7(uint64_t result, uint64_t a2)
{
  *(v2 + 32) = result;
  *(v2 + 40) = a2;
  return result;
}

uint64_t OUTLINED_FUNCTION_44_8()
{

  return sub_1BCE1E160();
}

uint64_t OUTLINED_FUNCTION_44_10()
{
}

uint64_t static WeatherFormatStyle<>.weather.getter()
{
  v1 = OUTLINED_FUNCTION_25_0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v1);
  OUTLINED_FUNCTION_14(v2);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_77();
  static Set<>.full.getter();
  sub_1BCE19280();
  OUTLINED_FUNCTION_19_0();
  __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
  static WeatherFormatStyle<>.weather(_:locale:)();

  return sub_1BC94C05C(v0, &qword_1EBD07890);
}

uint64_t type metadata accessor for RoundedPrecipitation()
{
  result = qword_1EDA1A158;
  if (!qword_1EDA1A158)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t RoundedPrecipitation.measurement.getter()
{
  v1 = type metadata accessor for RoundedPrecipitation();
  v2 = OUTLINED_FUNCTION_14(v1);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_2_0();
  sub_1BC983D0C(v0, v4 - v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08B68);
  OUTLINED_FUNCTION_4();
  v5 = OUTLINED_FUNCTION_62();
  return v6(v5);
}

uint64_t sub_1BC983D0C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RoundedPrecipitation();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void NSUnitTemperature.BaseWeatherFormatStyle.secondary.getter()
{
  OUTLINED_FUNCTION_20_0();
  v4 = sub_1BCE19280();
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_13();
  sub_1BCE18D50();
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_2_0();
  v9 = (v8 - v7);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07890);
  v11 = OUTLINED_FUNCTION_14(v10);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_54();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_16_0();
  v13 = *v0;
  type metadata accessor for NSUnitTemperature.BaseWeatherFormatStyle(0);
  v14 = OUTLINED_FUNCTION_22_20();
  v15(v14);
  OUTLINED_FUNCTION_60();
  __swift_storeEnumTagSinglePayload(v16, v17, v18, v4);
  v29 = *(v0 + v1[6]);
  v19 = OUTLINED_FUNCTION_53_2();
  v20(v19);
  *v9 = v13;
  sub_1BCBDA45C();
  OUTLINED_FUNCTION_6(v2);
  if (v21)
  {
    v22 = qword_1EDA1F658;

    if (v22 != -1)
    {
      OUTLINED_FUNCTION_1_0();
    }

    sub_1BCE1A9F0();

    sub_1BC94C05C(v3, &qword_1EBD07890);
    OUTLINED_FUNCTION_6(v2);
    if (!v21)
    {
      sub_1BC94C05C(v2, &qword_1EBD07890);
    }
  }

  else
  {

    sub_1BC94C05C(v3, &qword_1EBD07890);
    v23 = OUTLINED_FUNCTION_28_10();
    v24(v23);
  }

  v25 = OUTLINED_FUNCTION_30_11(v1[5]);
  v26(v25);
  *(v9 + v1[6]) = v29;
  v27 = OUTLINED_FUNCTION_27_9(v1[7]);
  v28(v27);
  OUTLINED_FUNCTION_21();
}

void sub_1BC984178()
{
  if (!qword_1EDA1C010)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD08B10);
    v0 = sub_1BCE1DB10();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDA1C010);
    }
  }
}

void sub_1BC9841DC()
{
  if (!qword_1EDA1C018)
  {
    sub_1BC984178();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDA1C018);
    }
  }
}

uint64_t sub_1BC984224()
{
  sub_1BC9841DC();
  v1 = v0;
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

void sub_1BC98427C()
{
  OUTLINED_FUNCTION_20_0();
  v7 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08B28);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_10_16();
  v68 = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08B30);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_37();
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08B10);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_10_16();
  OUTLINED_FUNCTION_64_4(v13);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08B20);
  v15 = OUTLINED_FUNCTION_14(v14);
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_15();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_6_1();
  OUTLINED_FUNCTION_15();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_17_2();
  v18 = type metadata accessor for NSUnitLength.WeatherFormatComponent(0);
  v19 = OUTLINED_FUNCTION_11_2(v18);
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_18_2();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_63_6();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_9_5();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_35();
  v71 = v23;
  OUTLINED_FUNCTION_88_3();
  if (!v1 || (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0E7A8), OUTLINED_FUNCTION_35_14(), OUTLINED_FUNCTION_95_2(), !v24))
  {
LABEL_41:

    OUTLINED_FUNCTION_21();
    return;
  }

  OUTLINED_FUNCTION_21_29();
LABEL_4:
  if (v25 >= *(v7 + 2))
  {
    __break(1u);
    goto LABEL_43;
  }

  OUTLINED_FUNCTION_56_6();
  sub_1BC970B70();
  sub_1BCE1E100();
  sub_1BC970B70();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08B08);
  OUTLINED_FUNCTION_29_4(v5);
  v69 = v2;
  if (v26)
  {
    OUTLINED_FUNCTION_105_3();
  }

  else
  {
    sub_1BC9849E8();
    OUTLINED_FUNCTION_106_3();
    OUTLINED_FUNCTION_65_3();
    OUTLINED_FUNCTION_29_0(type metadata accessor for NSUnitLength.WeatherFormatComponent, 1, v66);
    if (v26)
    {
      sub_1BCE1E120();
    }

    else
    {
      OUTLINED_FUNCTION_43_8();
      OUTLINED_FUNCTION_15_5();
      v27();
      sub_1BCE1E120();
      OUTLINED_FUNCTION_10_0();
      sub_1BC957184(&qword_1EBD08B40, &qword_1EBD08B10);
      OUTLINED_FUNCTION_85_4();
      sub_1BCE1D190();
      v28 = OUTLINED_FUNCTION_61_8();
      v29(v28);
    }

    v30 = OUTLINED_FUNCTION_16_2();
    sub_1BC94C05C(v30, v31);
    v4 = v63;
  }

  v32 = v70;
  v33 = sub_1BCE1E150() & ~(-1 << *(v70 + 32));
  OUTLINED_FUNCTION_26_19();
  v7 = v64;
  if (((v36 << v33) & v37) != 0)
  {
    v38 = ~v35;
    v67 = ~v35;
    while (1)
    {
      sub_1BC970B70();
      OUTLINED_FUNCTION_99_2();
      sub_1BC970B70();
      OUTLINED_FUNCTION_29_4(v3);
      if (v26)
      {
        OUTLINED_FUNCTION_3_92();
        sub_1BC979DA0(v0, v39);
        OUTLINED_FUNCTION_29_4(v64 + v3);
        if (v26)
        {
          goto LABEL_38;
        }
      }

      else
      {
        sub_1BC970B70();
        OUTLINED_FUNCTION_29_4(v64 + v3);
        if (!v40)
        {
          OUTLINED_FUNCTION_76_4();
          v38 = &qword_1EBD08B20;
          v2 = &unk_1BCE4B858;
          sub_1BC9849E8();
          OUTLINED_FUNCTION_80_4();
          v42 = v10;
          v10 = v66;
          OUTLINED_FUNCTION_29_0(v42, 1, v66);
          if (v43)
          {
            OUTLINED_FUNCTION_3_92();
            sub_1BC979DA0(v0, v44);
            OUTLINED_FUNCTION_15_13(type metadata accessor for NSUnitLength.WeatherFormatComponent + v64);
            v10 = v65;
            v38 = v67;
            if (v26)
            {
              sub_1BC94C05C(v64, &qword_1EBD08B20);
LABEL_38:
              sub_1BC979DA0(v3, type metadata accessor for NSUnitLength.WeatherFormatComponent);
              sub_1BC979DA0(v71, type metadata accessor for NSUnitLength.WeatherFormatComponent);
              OUTLINED_FUNCTION_72_4();
LABEL_39:
              OUTLINED_FUNCTION_59_5();
              v5 = *(v62 - 256);
              if (v26)
              {
                goto LABEL_41;
              }

              goto LABEL_4;
            }
          }

          else
          {
            OUTLINED_FUNCTION_102_1();
            OUTLINED_FUNCTION_15_13(type metadata accessor for NSUnitLength.WeatherFormatComponent + v64);
            if (!v45)
            {
              OUTLINED_FUNCTION_43_8();
              v49 = OUTLINED_FUNCTION_70_1();
              v50(v49);
              OUTLINED_FUNCTION_7_26();
              sub_1BC957184(&qword_1EBD08B38, &qword_1EBD08B10);
              v51 = OUTLINED_FUNCTION_81_4();
              v52 = OUTLINED_FUNCTION_49_9(v51);
              v64(v52);
              OUTLINED_FUNCTION_3_92();
              sub_1BC979DA0(v0, v53);
              v54 = OUTLINED_FUNCTION_91_3();
              v64(v54);
              sub_1BC94C05C(v68, &qword_1EBD08B20);
              OUTLINED_FUNCTION_73_4();
              if (v55)
              {
                goto LABEL_38;
              }

              goto LABEL_33;
            }

            OUTLINED_FUNCTION_3_92();
            sub_1BC979DA0(v0, v46);
            v47 = OUTLINED_FUNCTION_91_3();
            v48(v47);
            v10 = v65;
            v38 = v67;
          }

          sub_1BC94C05C(v64, &qword_1EBD08B28);
          v2 = v69;
LABEL_33:
          OUTLINED_FUNCTION_3_92();
          sub_1BC979DA0(v3, v56);
          goto LABEL_34;
        }

        OUTLINED_FUNCTION_3_92();
        sub_1BC979DA0(v0, v41);
        sub_1BC94C05C(v4, &qword_1EBD08B20);
      }

      sub_1BC94C05C(v3, &qword_1EBD08B30);
LABEL_34:
      v33 = (v33 + 1) & v38;
      v32 = v70;
      OUTLINED_FUNCTION_44_11();
      if ((v58 & (v57 << v33)) == 0)
      {
        OUTLINED_FUNCTION_89_4();
        break;
      }
    }
  }

  OUTLINED_FUNCTION_75_2(v34);
  sub_1BC979BA4();
  v59 = *(v32 + 16);
  v60 = __OFADD__(v59, 1);
  v61 = v59 + 1;
  if (!v60)
  {
    *(v32 + 16) = v61;
    goto LABEL_39;
  }

LABEL_43:
  __break(1u);
}

uint64_t sub_1BC9849E8()
{
  OUTLINED_FUNCTION_9();
  __swift_instantiateConcreteTypeFromMangledNameV2(v1);
  OUTLINED_FUNCTION_4();
  v2 = OUTLINED_FUNCTION_10_1();
  v3(v2);
  return v0;
}

void OUTLINED_FUNCTION_84_2()
{

  JUMPOUT(0x1BFB31B10);
}

void *OUTLINED_FUNCTION_91(void *__src, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char __dst)
{

  return memcpy(&__dst, __src, 0x48uLL);
}

uint64_t OUTLINED_FUNCTION_91_0()
{

  return sub_1BCE1E170();
}

uint64_t OUTLINED_FUNCTION_91_1()
{

  return sub_1BCE19270();
}

uint64_t OUTLINED_FUNCTION_111@<X0>(uint64_t a1@<X8>)
{
  v4 = *(v2 + 48);
  v5 = *(v1 + 72);
  *(v3 - 176) = v5;
  return v4 + v5 * a1;
}

uint64_t OUTLINED_FUNCTION_109_0(uint64_t a1, uint64_t a2)
{

  return sub_1BCA24D24(a1, a2, v2, v5, v4, v3);
}

uint64_t OUTLINED_FUNCTION_109_1()
{
}

void sub_1BC984B98()
{
  if (!qword_1EDA16CA8)
  {
    type metadata accessor for NSUnitLength.WeatherFormatComponent(255);
    sub_1BC94FFF4(qword_1EDA16BA0, type metadata accessor for NSUnitLength.WeatherFormatComponent);
    v0 = sub_1BCE1D6D0();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDA16CA8);
    }
  }
}

void sub_1BC984C2C()
{
  sub_1BC984B98();
  if (v0 <= 0x3F)
  {
    sub_1BCE19280();
    if (v1 <= 0x3F)
    {
      sub_1BCE18D50();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void static WeatherFormatStyle<>.weather(_:usage:scaling:trimLeadingZeroes:locale:)()
{
  OUTLINED_FUNCTION_20_0();
  v52 = v2;
  v50 = v4;
  v51 = v3;
  v6 = v5;
  v8 = v7;
  sub_1BCE19260();
  OUTLINED_FUNCTION_2();
  v46 = v10;
  v47 = v9;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_2_0();
  v45 = v12 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08B18);
  OUTLINED_FUNCTION_14(v13);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_10_16();
  v48 = v15;
  OUTLINED_FUNCTION_13();
  v16 = sub_1BCE19280();
  OUTLINED_FUNCTION_2();
  v49 = v17;
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_2_0();
  v21 = v20 - v19;
  sub_1BCE18D50();
  OUTLINED_FUNCTION_2();
  v53 = v23;
  v54 = v22;
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_2_0();
  v26 = v25 - v24;
  v27 = OUTLINED_FUNCTION_87();
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(v27);
  v29 = OUTLINED_FUNCTION_14(v28);
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_35_0();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_73();
  v31 = *v6;
  LOBYTE(v6) = *v50;
  sub_1BC95DCE8();
  sub_1BCE18D40();
  *v8 = v51;
  *(v8 + 8) = v31;
  *(v8 + 9) = v6;
  sub_1BC95DCE8();
  OUTLINED_FUNCTION_6(v1);
  if (v39)
  {
    v32 = qword_1EDA1F658;

    if (v32 != -1)
    {
      OUTLINED_FUNCTION_1_0();
    }

    sub_1BCE1A9F0();

    OUTLINED_FUNCTION_6(v1);
    v34 = v52;
    v33 = v49;
    if (!v39)
    {
      sub_1BC94C05C(v1, &qword_1EBD07890);
    }
  }

  else
  {
    v33 = v49;
    (*(v49 + 32))(v21, v1, v16);

    v34 = v52;
  }

  v35 = type metadata accessor for NSUnitLength.BaseWeatherFormatStyle(0);
  (*(v33 + 32))(v8 + v35[8], v21, v16);
  if (v34 == 2)
  {
    sub_1BCE19270();
    sub_1BCE19250();
    (*(v46 + 8))(v45, v47);
    v36 = sub_1BCE190D0();
    OUTLINED_FUNCTION_6(v48);
    if (v39)
    {
      sub_1BC94C05C(v48, &qword_1EBD08B18);
    }

    else
    {
      sub_1BCE190B0();
      OUTLINED_FUNCTION_84_0();
      (*(v38 + 8))(v48, v36);
      v39 = v0 == 28261 && v48 == 0xE200000000000000;
      if (v39)
      {
      }

      else
      {
        v40 = OUTLINED_FUNCTION_92();

        if ((v40 & 1) == 0)
        {
          goto LABEL_25;
        }
      }

      v41 = sub_1BCE190E0();
      if (v42)
      {
        if (v41 == 46 && v42 == 0xE100000000000000)
        {

          v44 = 1;
        }

        else
        {
          v44 = OUTLINED_FUNCTION_118();
        }

        goto LABEL_26;
      }
    }

LABEL_25:
    v44 = 0;
LABEL_26:
    sub_1BC94C05C(v0, &qword_1EBD07890);
    v37 = v44 & 1;
    goto LABEL_27;
  }

  sub_1BC94C05C(v0, &qword_1EBD07890);
  v37 = v34 & 1;
LABEL_27:
  *(v8 + 10) = v37;
  *(v8 + v35[9]) = 0;
  (*(v53 + 32))(v8 + v35[10], v26, v54);
  OUTLINED_FUNCTION_21();
}

void OUTLINED_FUNCTION_62_3()
{

  JUMPOUT(0x1BFB30850);
}

unint64_t OUTLINED_FUNCTION_62_4@<X0>(uint64_t a1@<X8>, double a2@<D0>)
{
  *(v6 - 112) = v5;
  *(v6 - 104) = *(a1 + 8);
  *(v6 - 88) = a2;
  *(v6 - 80) = v2;
  *(v6 - 72) = v3;
  *(v6 - 71) = v4;
  *(v6 - 65) = 5;

  return sub_1BCD8EA90();
}

__n128 OUTLINED_FUNCTION_83_3()
{
  result = *(v2 - 128);
  v4 = *(v2 - 112);
  v5 = *(v2 - 104);
  v6 = (v0 + *(v1 + 40));
  *v6 = result;
  v6[1].n128_u64[0] = v4;
  v6[1].n128_u64[1] = v5;
  return result;
}

uint64_t sub_1BC9852BC(uint64_t a1)
{
  result = sub_1BC94FFF4(&qword_1EDA16C58, type metadata accessor for NSUnitLength.BaseWeatherFormatStyle);
  *(a1 + 8) = result;
  return result;
}

uint64_t NSUnitLength.BaseWeatherFormatStyle.hash(into:)(const void *a1)
{
  sub_1BC985454(a1, *v1);
  MEMORY[0x1BFB30850](*(v1 + 8));
  MEMORY[0x1BFB30850](*(v1 + 9));
  sub_1BCE1E120();
  type metadata accessor for NSUnitLength.BaseWeatherFormatStyle(0);
  sub_1BCE19280();
  OUTLINED_FUNCTION_42();
  sub_1BC94FFF4(v2, v3);
  OUTLINED_FUNCTION_58();
  sub_1BCE1D190();
  sub_1BCE1E120();
  sub_1BCE18D50();
  OUTLINED_FUNCTION_41_1();
  sub_1BC94FFF4(v4, v5);
  OUTLINED_FUNCTION_58();
  return sub_1BCE1D190();
}

uint64_t sub_1BC985454(const void *a1, uint64_t a2)
{
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08B10);
  v4 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37);
  v35 = v32 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08B20);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v36 = v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v43 = v32 - v9;
  v10 = type metadata accessor for NSUnitLength.WeatherFormatComponent(0);
  v41 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = v32 - v14;
  v32[1] = a1;
  memcpy(__dst, a1, sizeof(__dst));
  v40 = sub_1BCE1E150();
  v16 = a2 + 56;
  v17 = 1 << *(a2 + 32);
  v18 = -1;
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  v19 = v18 & *(a2 + 56);
  v20 = (v17 + 63) >> 6;
  v34 = (v4 + 32);
  v33 = (v4 + 8);
  v42 = a2;

  v22 = 0;
  v23 = 0;
  for (i = v12; v19; v22 ^= v31)
  {
    v24 = v43;
LABEL_10:
    sub_1BC96DDD0();
    sub_1BCE1E100();
    sub_1BC96DDD0();
    v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08B08);
    if (__swift_getEnumTagSinglePayload(v12, 1, v26) == 1)
    {
      MEMORY[0x1BFB30850](0);
    }

    else
    {
      v39 = v22;
      sub_1BC9849E8();
      MEMORY[0x1BFB30850](1);
      v27 = v24;
      v28 = v36;
      sub_1BC95DCE8();
      v29 = v37;
      if (__swift_getEnumTagSinglePayload(v28, 1, v37) == 1)
      {
        sub_1BCE1E120();
      }

      else
      {
        v30 = v35;
        (*v34)(v35, v28, v29);
        sub_1BCE1E120();
        sub_1BC957184(&qword_1EBD08B40, &qword_1EBD08B10);
        sub_1BCE1D190();
        (*v33)(v30, v29);
      }

      sub_1BC94C05C(v27, &qword_1EBD08B20);
      v22 = v39;
      v12 = i;
    }

    v19 &= v19 - 1;
    v31 = sub_1BCE1E150();
    result = sub_1BC96DF88(v15, type metadata accessor for NSUnitLength.WeatherFormatComponent);
  }

  v24 = v43;
  while (1)
  {
    v25 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      break;
    }

    if (v25 >= v20)
    {

      return MEMORY[0x1BFB30850](v22);
    }

    v19 = *(v16 + 8 * v25);
    ++v23;
    if (v19)
    {
      v23 = v25;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1BC985944(char *a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v105 = a1;
  v106 = a6;
  v101 = a3;
  v83 = sub_1BCE18710();
  v82 = *(v83 - 8);
  MEMORY[0x1EEE9AC00](v83);
  v81 = &v78 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = sub_1BCE1DAF0();
  v85 = *(v86 - 8);
  MEMORY[0x1EEE9AC00](v86);
  v84 = &v78 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for NSUnitLength.WeatherFormatComponent(0);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v94 = &v78 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08B50);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v93 = &v78 - v14;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08B58);
  v91 = *(v92 - 8);
  MEMORY[0x1EEE9AC00](v92);
  v90 = &v78 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08B20);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v87 = &v78 - v17;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08B10);
  v97 = *(v89 - 8);
  MEMORY[0x1EEE9AC00](v89);
  v96 = &v78 - v18;
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08B60);
  v95 = *(v103 - 8);
  MEMORY[0x1EEE9AC00](v103);
  v88 = &v78 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v102 = &v78 - v21;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08288);
  v80 = *(v98 - 8);
  MEMORY[0x1EEE9AC00](v98);
  v78 = &v78 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v79 = &v78 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07890);
  MEMORY[0x1EEE9AC00](v25 - 8);
  v27 = &v78 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08B68);
  v104 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v78 - v29;
  v100 = *a2;
  LOBYTE(v113) = *(a4 + 8);
  LOBYTE(v111) = *(a4 + 9);
  v31 = type metadata accessor for NSUnitLength.BaseWeatherFormatStyle(0);
  v32 = v31[8];
  v33 = sub_1BCE19280();
  v34 = *(*(v33 - 8) + 16);
  v99 = v32;
  v34(v27, a4 + v32, v33);
  __swift_storeEnumTagSinglePayload(v27, 0, 1, v33);
  sub_1BC986808(&v113, &v111, v27, v101, v106, v35, v36, v37, v78, v79, v80, v81);
  sub_1BC94C05C(v27, &qword_1EBD07890);
  v38 = *(a4 + 8);
  v105 = v30;
  v106 = v28;
  v39 = sub_1BCE185C0();
  if (v38 >= 2)
  {
    v40 = sub_1BCE1D890();
  }

  else
  {
    v40 = sub_1BCE1D8A0();
  }

  v41 = v40;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08B00);
  v42 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v43 = swift_allocObject();
  *(v43 + 16) = xmmword_1BCE3E050;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08B08);
  __swift_storeEnumTagSinglePayload(v43 + v42, 1, 1, v44);
  sub_1BC98427C();
  sub_1BC986D6C();
  LOBYTE(v42) = v45;

  if (v42)
  {
    v46 = 11565;
    switch(v100)
    {
      case 1:
        goto LABEL_17;
      case 2:
        v46 = 0x9380E29380E2;
        goto LABEL_17;
      case 3:
        v46 = 0;
LABEL_17:
        (*(v104 + 8))(v105, v106);
        break;
      default:
        v48 = v105;
        v47 = v106;
        sub_1BCE185E0();
        v111 = v49;
        v50 = v78;
        sub_1BC9874E4();
        v51 = v98;
        v52 = v79;
        MEMORY[0x1BFB2B3D0](a4 + v99, v98);
        v53 = *(v80 + 8);
        v53(v50, v51);
        sub_1BC96ABEC();
        sub_1BC957184(&qword_1EDA1EF58, &qword_1EBD08288);
        sub_1BCE1D0F0();
        v53(v52, v51);
        (*(v104 + 8))(v48, v47);
        v46 = v113;
        break;
    }
  }

  else
  {
    v54 = (v41 & 1) == 0 && *(a4 + 8) < 2u;
    v55 = v96;
    v56 = v87;
    v57 = v31[9];
    v101 = v31[10];
    if (*(a4 + v57) == 1)
    {
      sub_1BC947608(0, qword_1EDA16AF0);
      sub_1BCE18650();
      v58 = v89;
    }

    else
    {
      sub_1BC987308();
      v58 = v89;
      if (__swift_getEnumTagSinglePayload(v56, 1, v89) == 1)
      {
        sub_1BC947608(0, qword_1EDA16AF0);
        if (v54)
        {
          sub_1BCE18660();
        }

        else
        {
          sub_1BCE18630();
        }

        EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v56, 1, v58);
        v55 = v96;
        if (EnumTagSinglePayload != 1)
        {
          sub_1BC94C05C(v56, &qword_1EBD08B20);
        }
      }

      else
      {
        (*(v97 + 32))(v55, v56, v58);
      }
    }

    sub_1BC947608(0, qword_1EDA16AF0);
    v60 = v90;
    sub_1BCE18CF0();
    v61 = v93;
    sub_1BC9874E4();
    __swift_storeEnumTagSinglePayload(v61, 0, 1, v98);
    v62 = v88;
    sub_1BCE18510();
    sub_1BC94C05C(v61, &qword_1EBD08B50);
    (*(v91 + 8))(v60, v92);
    (*(v97 + 8))(v55, v58);
    v63 = v103;
    sub_1BCE18620();
    v64 = *(v95 + 8);
    v64(v62, v63);
    sub_1BC957184(&qword_1EDA1BFF8, &qword_1EBD08B60);
    sub_1BCE186A0();
    v65 = v94;
    __swift_storeEnumTagSinglePayload(v94, 1, 1, v44);
    sub_1BC987820();
    LOBYTE(v62) = v66;
    sub_1BC96DF88(v65, type metadata accessor for NSUnitLength.WeatherFormatComponent);
    if (v62)
    {
      v67 = 0xE200000000000000;
      v68 = 11565;
      switch(v100)
      {
        case 1:
          goto LABEL_27;
        case 2:
          v67 = 0xA600000000000000;
          v68 = 0x9380E29380E2;
          goto LABEL_27;
        case 3:
          v68 = 0;
          v67 = 0xE000000000000000;
LABEL_27:
          v75 = v84;
          sub_1BCE1ABF0();
          v111 = v68;
          v112 = v67;
          sub_1BC98C934();
          sub_1BC98CAB4();
          sub_1BC94FFF4(&qword_1EDA1C0A8, MEMORY[0x1E6969FD0]);
          v76 = v86;
          sub_1BCE1D790();
          (*(v85 + 8))(v75, v76);

          break;
        default:
          break;
      }
    }

    else
    {
      v69 = v84;
      sub_1BCE1ABF0();
      v111 = 0;
      v112 = 0xE000000000000000;
      sub_1BC98C934();
      sub_1BC98CAB4();
      sub_1BC94FFF4(&qword_1EDA1C0A8, MEMORY[0x1E6969FD0]);
      v70 = v86;
      sub_1BCE1D790();
      (*(v85 + 8))(v69, v70);
      v111 = v113;
      v112 = v114;
      v71 = v81;
      sub_1BCE186C0();
      sub_1BC970820();
      v72 = sub_1BCE1DB70();
      v74 = v73;
      (*(v82 + 8))(v71, v83);

      v113 = v72;
      v114 = v74;
    }

    v111 = v113;
    v112 = v114;
    v109 = 32;
    v110 = 0xE100000000000000;
    v107 = 41154;
    v108 = 0xA200000000000000;
    sub_1BC970820();
    v46 = sub_1BCE1DB90();
    v64(v102, v103);
    (*(v104 + 8))(v105, v106);
  }

  return v46;
}

uint64_t sub_1BC9867C0()
{
  OUTLINED_FUNCTION_101_0();
  v1 = v0;
  swift_getObjectType();
  v2 = OUTLINED_FUNCTION_69();
  result = sub_1BC985944(v2, v3, v4, v5, v6, v7);
  *v1 = result;
  v1[1] = v9;
  return result;
}

void sub_1BC986808(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_20_0();
  v65 = v12;
  v61 = v18;
  v62 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08B68);
  OUTLINED_FUNCTION_2();
  v63 = v26;
  v64 = v25;
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_18_2();
  MEMORY[0x1EEE9AC00](v27);
  v60 = &v58 - v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07890);
  v30 = OUTLINED_FUNCTION_14(v29);
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_73();
  v32 = sub_1BCE19280();
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_35_0();
  MEMORY[0x1EEE9AC00](v34);
  v37 = &v58 - v36;
  v38 = *v20;
  if (v38 != 2)
  {
    if (v38 == 3)
    {
      OUTLINED_FUNCTION_21();

      Measurement<>.roundedPrecipitation()();
      return;
    }

    v59 = v35;
    v48 = *v22;
    sub_1BC95DCE8();
    OUTLINED_FUNCTION_29_0(v13, 1, v32);
    if (v49)
    {
      sub_1BC94C05C(v13, &qword_1EBD07890);
      swift_getObjectType();
      if (v48)
      {
        v50 = v64;
        if (v48 != 1)
        {
          v51 = sub_1BCE1A400();
          if (v38 == 1)
          {
LABEL_31:
            sub_1BCE18680();
            sub_1BC988A74(v24);

            (*(v63 + 8))(v14, v50);
            goto LABEL_33;
          }

LABEL_30:
          sub_1BCE18680();

LABEL_33:
          OUTLINED_FUNCTION_21();
          return;
        }

        v51 = sub_1BCE1A460();
LABEL_24:
        if (v38 == 1)
        {
          if (v48 <= 1)
          {
            v53 = v60;
            sub_1BCE18680();
            sub_1BC95DCE8();
            v54 = OUTLINED_FUNCTION_57();
            OUTLINED_FUNCTION_29_0(v54, v55, v32);
            if (v49)
            {
              sub_1BCE191B0();
              v56 = OUTLINED_FUNCTION_57();
              OUTLINED_FUNCTION_29_0(v56, v57, v32);
              if (!v49)
              {
                sub_1BC94C05C(v15, &qword_1EBD07890);
              }
            }

            else
            {
              (*(v59 + 32))(v16, v15, v32);
            }

            sub_1BCACC86C();

            (*(v59 + 8))(v16, v32);
            (*(v63 + 8))(v53, v50);
            goto LABEL_33;
          }

          goto LABEL_31;
        }

        goto LABEL_30;
      }

      v51 = sub_1BCE1A440();
    }

    else
    {
      (*(v59 + 32))(v37, v13, v32);
      swift_getObjectType();
      if (v48)
      {
        if (v48 == 1)
        {
          v52 = sub_1BCE1A450();
        }

        else
        {
          v52 = sub_1BCE1A3F0();
        }
      }

      else
      {
        v52 = sub_1BCE1A430();
      }

      v51 = v52;
      (*(v59 + 8))(v37, v32);
    }

    v50 = v64;
    goto LABEL_24;
  }

  OUTLINED_FUNCTION_21();

  v43(v40, v41, v42, v43, v44, v45, v46, v47, a9, a10, a11, a12);
}

uint64_t sub_1BC986CA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08BF8);
  OUTLINED_FUNCTION_1();
  if (*(v7 + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v9 = *(a1 + *(a3 + 20));
    if (v9 >= 2)
    {
      return ((v9 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

void sub_1BC986D6C()
{
  OUTLINED_FUNCTION_20_0();
  v5 = v4;
  v7 = v6;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08B10);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_77();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08B20);
  OUTLINED_FUNCTION_14(v9);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_10_16();
  OUTLINED_FUNCTION_114_0(v11);
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08B28);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_10_16();
  v69 = v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08B30);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v15);
  v17 = v64 - v16;
  v18 = OUTLINED_FUNCTION_13_14();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_78();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_50();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_54();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_106();
  if (v43 || *(v7 + 16) != *(v5 + 16))
  {
    goto LABEL_38;
  }

  v72 = v22;
  v65 = v0;
  OUTLINED_FUNCTION_16_16();
  OUTLINED_FUNCTION_32_2();
  if (!v26)
  {
    goto LABEL_5;
  }

  do
  {
    OUTLINED_FUNCTION_52_0();
    OUTLINED_FUNCTION_86();
LABEL_10:
    OUTLINED_FUNCTION_111(v27);
    OUTLINED_FUNCTION_5_21();
    sub_1BC96DDD0();
    OUTLINED_FUNCTION_43_0();
    sub_1BC979B4C();
    sub_1BCE1E100();
    NSUnitLength.WeatherFormatComponent.hash(into:)(&v74, v30, v31, v32, v33, v34, v35, v36, v64[0], v64[1], v64[2], v64[3], v64[4], v64[5], v64[6], v64[7], v65, v66, v67, v68);
    sub_1BCE1E150();
    OUTLINED_FUNCTION_51();
    OUTLINED_FUNCTION_108();
    if ((v38 & 1) == 0)
    {
LABEL_37:
      sub_1BC96DF88(v3, type metadata accessor for NSUnitLength.WeatherFormatComponent);
LABEL_38:
      OUTLINED_FUNCTION_21();
      return;
    }

    v73 = ~v37;
    while (1)
    {
      OUTLINED_FUNCTION_103_0();
      OUTLINED_FUNCTION_44_0();
      sub_1BC96DDD0();
      OUTLINED_FUNCTION_116();
      sub_1BC96DDD0();
      v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08B08);
      OUTLINED_FUNCTION_8_0(v17);
      if (v43)
      {
        OUTLINED_FUNCTION_0_27();
        sub_1BC96DF88(v1, v40);
        OUTLINED_FUNCTION_8_0(&v17[v5]);
        v5 = v2;
        if (v43)
        {
          goto LABEL_34;
        }

        goto LABEL_20;
      }

      v41 = v3;
      OUTLINED_FUNCTION_5_21();
      v42 = v72;
      sub_1BC96DDD0();
      OUTLINED_FUNCTION_8_0(&v17[v5]);
      if (!v43)
      {
        break;
      }

      OUTLINED_FUNCTION_0_27();
      sub_1BC96DF88(v1, v44);
      sub_1BC94C05C(v42, &qword_1EBD08B20);
      v5 = v2;
      v3 = v41;
LABEL_20:
      sub_1BC94C05C(v17, &qword_1EBD08B30);
LABEL_32:
      OUTLINED_FUNCTION_64_0();
      if ((v62 & 1) == 0)
      {
        goto LABEL_37;
      }
    }

    OUTLINED_FUNCTION_100();
    v3 = &qword_1EBD08B20;
    sub_1BC9849E8();
    OUTLINED_FUNCTION_115();
    v45 = OUTLINED_FUNCTION_57();
    v5 = v71;
    OUTLINED_FUNCTION_29_0(v45, v46, v71);
    if (!v47)
    {
      sub_1BC95DCE8();
      OUTLINED_FUNCTION_6(v14 + v39);
      if (!v50)
      {
        OUTLINED_FUNCTION_6_6();
        v54 = OUTLINED_FUNCTION_99();
        v55(v54);
        OUTLINED_FUNCTION_7_26();
        sub_1BC957184(&qword_1EBD08B38, &qword_1EBD08B10);
        v56 = OUTLINED_FUNCTION_95();
        v57 = OUTLINED_FUNCTION_80_0(v56);
        (unk_1BCE4B858)(v57);
        OUTLINED_FUNCTION_0_27();
        sub_1BC96DF88(v1, v58);
        v59 = OUTLINED_FUNCTION_98_0();
        (unk_1BCE4B858)(v59);
        sub_1BC94C05C(v14, &qword_1EBD08B20);
        OUTLINED_FUNCTION_82();
        if (v60)
        {
          goto LABEL_34;
        }

        goto LABEL_31;
      }

      OUTLINED_FUNCTION_0_27();
      sub_1BC96DF88(v1, v51);
      v52 = OUTLINED_FUNCTION_98_0();
      v53(v52);
      v5 = v2;
      v49 = v14;
      v3 = v41;
LABEL_29:
      sub_1BC94C05C(v49, &qword_1EBD08B28);
      v14 = v68;
LABEL_31:
      OUTLINED_FUNCTION_0_27();
      sub_1BC96DF88(v17, v61);
      goto LABEL_32;
    }

    OUTLINED_FUNCTION_0_27();
    sub_1BC96DF88(v1, v48);
    OUTLINED_FUNCTION_6(v14 + v39);
    v5 = v2;
    v49 = v14;
    v3 = v41;
    if (!v43)
    {
      goto LABEL_29;
    }

    sub_1BC94C05C(v14, &qword_1EBD08B20);
    v14 = v68;
LABEL_34:
    sub_1BC96DF88(v17, type metadata accessor for NSUnitLength.WeatherFormatComponent);
    sub_1BC96DF88(v3, type metadata accessor for NSUnitLength.WeatherFormatComponent);
    OUTLINED_FUNCTION_34_1();
  }

  while (v63);
LABEL_5:
  v28 = v25;
  while (1)
  {
    v29 = v28 + 1;
    if (__OFADD__(v28, 1))
    {
      break;
    }

    if (v29 >= v23)
    {
      goto LABEL_38;
    }

    ++v28;
    if (*(v24 + 8 * v29))
    {
      OUTLINED_FUNCTION_30();
      OUTLINED_FUNCTION_71();
      goto LABEL_10;
    }
  }

  __break(1u);
}

void sub_1BC987308()
{
  OUTLINED_FUNCTION_20_0();
  v2 = v1;
  v3 = OUTLINED_FUNCTION_13_14();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_3();
  v6 = v4 - v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_9_17();
  v10 = v9 & v8;
  OUTLINED_FUNCTION_112();

  v11 = 0;
  if (v10)
  {
    while (1)
    {
      v12 = v11;
LABEL_6:
      OUTLINED_FUNCTION_5_21();
      sub_1BC96DDD0();
      OUTLINED_FUNCTION_43_0();
      sub_1BC979B4C();
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08B08);
      OUTLINED_FUNCTION_29_0(v6, 1, v13);
      if (!v14)
      {
        break;
      }

      v10 &= v10 - 1;
      OUTLINED_FUNCTION_0_27();
      sub_1BC96DF88(v6, v15);
      v11 = v12;
      if (!v10)
      {
        goto LABEL_3;
      }
    }

    sub_1BC9849E8();
LABEL_11:
    OUTLINED_FUNCTION_21();
  }

  else
  {
LABEL_3:
    while (1)
    {
      v12 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v12 >= v0)
      {

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08B10);
        OUTLINED_FUNCTION_19_0();
        __swift_storeEnumTagSinglePayload(v16, v17, v18, v19);
        goto LABEL_11;
      }

      v10 = *(v2 + 56 + 8 * v12);
      ++v11;
      if (v10)
      {
        goto LABEL_6;
      }
    }

    __break(1u);
  }
}

void sub_1BC9874E4()
{
  OUTLINED_FUNCTION_20_0();
  v40 = v4;
  v41 = v3;
  v6 = v5;
  v37 = v7;
  sub_1BCE18D90();
  OUTLINED_FUNCTION_2();
  v38 = v9;
  v39 = v8;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_18_2();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v36[-v11];
  v13 = sub_1BCE19280();
  v14 = OUTLINED_FUNCTION_14(v13);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_2_0();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08288);
  OUTLINED_FUNCTION_2();
  v17 = v16;
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_3();
  v21 = v19 - v20;
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v36[-v23];
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_35_0();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_16_0();
  sub_1BCE19150();
  sub_1BC96ABEC();
  if (v6)
  {
    sub_1BCE18C80();
    v44 = xmmword_1BCE4B830;
    v27 = 1;
    if ((v37 & 1) == 0)
    {
      v27 = 2;
    }

    v42 = 0;
    v43 = v27;
    v28 = OUTLINED_FUNCTION_10_1();
    __swift_instantiateConcreteTypeFromMangledNameV2(v28);
    OUTLINED_FUNCTION_40_3();
    sub_1BC957184(v29, v30);
    sub_1BCE18D80();
    v31 = OUTLINED_FUNCTION_63();
    MEMORY[0x1BFB2B400](v31);
  }

  else
  {
    sub_1BCE18C80();
    v32 = 1;
    if ((v37 & 1) == 0)
    {
      v32 = 2;
    }

    *&v44 = 0;
    *(&v44 + 1) = v32;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07E60);
    OUTLINED_FUNCTION_40_3();
    sub_1BC957184(v33, v34);
    sub_1BCE18D70();
    MEMORY[0x1BFB2B400](v0, v15);
    v12 = v0;
    v2 = v21;
    v1 = v24;
  }

  (*(v38 + 8))(v12, v39);
  v35 = *(v17 + 8);
  v35(v2, v15);
  MEMORY[0x1BFB2B3B0](v41, v15);
  v35(v1, v15);
  OUTLINED_FUNCTION_21();
}

Swift::String_optional __swiftcall WeatherCondition.conditionIconName(isDaytime:)(Swift::Bool isDaytime)
{
  v3 = WeatherCondition.conditionIconName(isDaytime:isFilled:)(isDaytime, 1);
  object = v3.value._object;
  countAndFlagsBits = v3.value._countAndFlagsBits;
  result.value._object = object;
  result.value._countAndFlagsBits = countAndFlagsBits;
  return result;
}

void sub_1BC987820()
{
  OUTLINED_FUNCTION_20_0();
  OUTLINED_FUNCTION_66_0();
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08B10);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_37();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08B20);
  OUTLINED_FUNCTION_14(v5);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_10_16();
  v53 = v7;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08B28);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v8);
  v10 = v49 - v9;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08B30);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_85();
  v12 = OUTLINED_FUNCTION_13_14();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_3();
  v52 = (v13 - v14);
  OUTLINED_FUNCTION_15();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_72();
  if (!*(v0 + 16))
  {
    goto LABEL_25;
  }

  sub_1BCE1E100();
  NSUnitLength.WeatherFormatComponent.hash(into:)(&v60, v16, v17, v18, v19, v20, v21, v22, v49[0], v49[1], v49[2], v49[3], v50, v51, v52, v53, v54, v55, v56, v57);
  sub_1BCE1E150();
  OUTLINED_FUNCTION_26_4();
  OUTLINED_FUNCTION_51();
  v58 = v23;
  OUTLINED_FUNCTION_108();
  if ((v25 & 1) == 0)
  {
    goto LABEL_25;
  }

  OUTLINED_FUNCTION_39_0(v24);
  v26 = v52;
  while (1)
  {
    OUTLINED_FUNCTION_44_0();
    sub_1BC96DDD0();
    OUTLINED_FUNCTION_94();
    sub_1BC96DDD0();
    v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08B08);
    OUTLINED_FUNCTION_8_0(v3);
    if (v29)
    {
      OUTLINED_FUNCTION_0_27();
      sub_1BC96DF88(v2, v28);
      OUTLINED_FUNCTION_8_0(v3 + v0);
      v0 = v55;
      if (v29)
      {
        goto LABEL_26;
      }

      goto LABEL_12;
    }

    OUTLINED_FUNCTION_5_21();
    OUTLINED_FUNCTION_87();
    sub_1BC96DDD0();
    OUTLINED_FUNCTION_8_0(v3 + v0);
    if (!v29)
    {
      break;
    }

    OUTLINED_FUNCTION_0_27();
    sub_1BC96DF88(v2, v30);
    v31 = OUTLINED_FUNCTION_63();
    sub_1BC94C05C(v31, v32);
    v0 = v55;
LABEL_12:
    sub_1BC94C05C(v3, &qword_1EBD08B30);
LABEL_24:
    v1 = (v1 + 1) & v54;
    OUTLINED_FUNCTION_55_1();
    if (((v47 >> v1) & 1) == 0)
    {
      goto LABEL_25;
    }
  }

  OUTLINED_FUNCTION_67();
  OUTLINED_FUNCTION_117();
  v0 = v51;
  OUTLINED_FUNCTION_29_0(v10, 1, v51);
  if (!v33)
  {
    OUTLINED_FUNCTION_119();
    OUTLINED_FUNCTION_5_16(v27 + v10);
    if (!v35)
    {
      v39 = OUTLINED_FUNCTION_61_0();
      v40(v39);
      OUTLINED_FUNCTION_7_26();
      sub_1BC957184(&qword_1EBD08B38, &qword_1EBD08B10);
      v41 = OUTLINED_FUNCTION_96_0();
      v42 = OUTLINED_FUNCTION_81(v41);
      v27(v42);
      OUTLINED_FUNCTION_0_27();
      sub_1BC96DF88(v2, v43);
      v44 = OUTLINED_FUNCTION_102();
      v27(v44);
      sub_1BC94C05C(v10, v26);
      OUTLINED_FUNCTION_83();
      if (v45)
      {
        goto LABEL_26;
      }

      goto LABEL_23;
    }

    OUTLINED_FUNCTION_0_27();
    sub_1BC96DF88(v2, v36);
    v37 = OUTLINED_FUNCTION_102();
    v38(v37);
    v0 = v55;
LABEL_21:
    sub_1BC94C05C(v10, &qword_1EBD08B28);
    v26 = v52;
LABEL_23:
    OUTLINED_FUNCTION_0_27();
    sub_1BC96DF88(v3, v46);
    goto LABEL_24;
  }

  OUTLINED_FUNCTION_0_27();
  sub_1BC96DF88(v2, v34);
  OUTLINED_FUNCTION_5_16(v27 + v10);
  v0 = v55;
  if (!v29)
  {
    goto LABEL_21;
  }

  sub_1BC94C05C(v10, &qword_1EBD08B20);
LABEL_26:
  OUTLINED_FUNCTION_0_27();
  sub_1BC96DF88(v3, v48);
LABEL_25:
  OUTLINED_FUNCTION_21();
}

uint64_t OUTLINED_FUNCTION_96_0()
{

  return sub_1BCE1D210();
}

uint64_t OUTLINED_FUNCTION_96_3()
{
  *(v1 - 184) = v0;

  return sub_1BCE1E160();
}

void NSUnitLength.WeatherFormatComponent.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_20_0();
  a19 = v22;
  a20 = v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08B10);
  OUTLINED_FUNCTION_2();
  v26 = v25;
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v27);
  v29 = &a9 - v28;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08B20);
  v31 = OUTLINED_FUNCTION_14(v30);
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_50();
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_73();
  v33 = type metadata accessor for NSUnitLength.WeatherFormatComponent(0);
  v34 = OUTLINED_FUNCTION_14(v33);
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_2_0();
  v37 = v36 - v35;
  OUTLINED_FUNCTION_5_21();
  sub_1BC96DDD0();
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08B08);
  OUTLINED_FUNCTION_29_0(v37, 1, v38);
  if (v39)
  {
    MEMORY[0x1BFB30850](0);
  }

  else
  {
    sub_1BC9849E8();
    MEMORY[0x1BFB30850](1);
    sub_1BC95DCE8();
    OUTLINED_FUNCTION_5_16(v21);
    if (v39)
    {
      sub_1BCE1E120();
    }

    else
    {
      (*(v26 + 32))(v29, v21, v24);
      sub_1BCE1E120();
      OUTLINED_FUNCTION_10_0();
      sub_1BC957184(v40, v41);
      sub_1BCE1D190();
      (*(v26 + 8))(v29, v24);
    }

    sub_1BC94C05C(v20, &qword_1EBD08B20);
  }

  OUTLINED_FUNCTION_21();
}

uint64_t sub_1BC987F5C(void *a1, SEL *a2)
{
  v2 = [a1 *a2];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = sub_1BCE1D280();

  return v4;
}

void Date.isDaytime(sunrise:sunset:)()
{
  OUTLINED_FUNCTION_20_0();
  v30 = v0;
  v2 = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07868);
  v6 = OUTLINED_FUNCTION_14(v5);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_3();
  v9 = v7 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v29 - v11;
  v13 = sub_1BCE19060();
  OUTLINED_FUNCTION_2();
  v15 = v14;
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_3();
  v19 = (v17 - v18);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v29 - v21;
  sub_1BC952ABC(v4, v12, &qword_1EBD07868);
  OUTLINED_FUNCTION_29_0(v12, 1, v13);
  if (v25)
  {
    v23 = v12;
  }

  else
  {
    v24 = *(v15 + 32);
    v24(v22, v12, v13);
    sub_1BC952ABC(v2, v9, &qword_1EBD07868);
    OUTLINED_FUNCTION_29_0(v9, 1, v13);
    if (!v25)
    {
      v24(v19, v9, v13);
      v26 = sub_1BCE18FC0();
      sub_1BC95FF1C(&qword_1EDA1EF40, MEMORY[0x1E6969530]);
      v27 = sub_1BCE1D1E0();
      if (v26)
      {
        if (v27)
        {
          goto LABEL_13;
        }
      }

      else if ((v27 & 1) == 0)
      {
LABEL_13:
        v28 = *(v15 + 8);
        v28(v19, v13);
        v28(v22, v13);
        goto LABEL_14;
      }

      sub_1BCE1D1E0();
      goto LABEL_13;
    }

    (*(v15 + 8))(v22, v13);
    v23 = v9;
  }

  sub_1BC94C05C(v23, &qword_1EBD07868);
LABEL_14:
  OUTLINED_FUNCTION_21();
}

void NSUnitLength.BaseWeatherFormatStyle.accessible.getter()
{
  OUTLINED_FUNCTION_20_0();
  v29 = v3;
  v4 = sub_1BCE19280();
  OUTLINED_FUNCTION_2();
  v33 = v5;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_2_0();
  v30 = v8 - v7;
  OUTLINED_FUNCTION_13();
  v9 = sub_1BCE18D50();
  OUTLINED_FUNCTION_2();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_2_0();
  v15 = v14 - v13;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07890);
  v17 = OUTLINED_FUNCTION_14(v16);
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_72();
  v19 = *v0;
  v20 = *(v0 + 4);
  v21 = type metadata accessor for NSUnitLength.BaseWeatherFormatStyle(0);
  (*(v33 + 16))(v1, v0 + v21[8], v4);
  OUTLINED_FUNCTION_60();
  __swift_storeEnumTagSinglePayload(v22, v23, v24, v4);
  v31 = v11;
  v32 = v9;
  (*(v11 + 16))(v15, v0 + v21[10], v9);
  *v29 = v19;
  *(v29 + 8) = v20;
  sub_1BC95DCE8();
  OUTLINED_FUNCTION_6(v2);
  if (v25)
  {
    v28 = v30;
    v27 = v33;
    v26 = qword_1EDA1F658;

    if (v26 != -1)
    {
      OUTLINED_FUNCTION_1_0();
    }

    sub_1BCE1A9F0();

    OUTLINED_FUNCTION_6(v2);
    if (!v25)
    {
      sub_1BC94C05C(v2, &qword_1EBD07890);
    }
  }

  else
  {
    v27 = v33;
    v28 = v30;
    (*(v33 + 32))(v30, v2, v4);
  }

  (*(v27 + 32))(v29 + v21[8], v28, v4);
  sub_1BC94C05C(v1, &qword_1EBD07890);
  *(v29 + 10) = 0;
  *(v29 + v21[9]) = 1;
  (*(v31 + 32))(v29 + v21[10], v15, v32);
  OUTLINED_FUNCTION_21();
}

uint64_t StringBuilder.makeWeatherDescription(for:data:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v15 = *(v3 + 16);
  OUTLINED_FUNCTION_2_54();
  OUTLINED_FUNCTION_2_54();
  type metadata accessor for AnyRule();
  sub_1BCE1D5D0();

  OUTLINED_FUNCTION_0_53();
  sub_1BCE1D4E0();

  if (v12)
  {
    v7 = *(v12 + 48);

    v7(&v12, a1, a2);

    v9 = v13;
    v10 = v14;
    *a3 = v12;
    *(a3 + 16) = v9;
    *(a3 + 24) = v10;
  }

  else
  {
    v11._countAndFlagsBits = 0;
    v11._object = 0xE000000000000000;
    return WeatherDescription.init(stringLiteral:)(v11);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_80_2(uint64_t a1, uint64_t a2)
{

  return sub_1BC9660CC(a1, a2, v2);
}

uint64_t OUTLINED_FUNCTION_80_3()
{
}

uint64_t OUTLINED_FUNCTION_80_4()
{

  return sub_1BC9849E8();
}

uint64_t DescriptionRuleType.weatherDescription(for:data:)@<X0>(uint64_t a1@<X3>, uint64_t *a2@<X8>)
{
  v3 = (*(a1 + 32))();
  static WeatherDescription.string(_:)(v3, v4, a2);
}

uint64_t sub_1BC988808@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t *a4@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD078E8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BCE3E050;
  *(inited + 32) = a1;
  *(inited + 40) = a2;
  *(inited + 48) = 0;
  *(inited + 56) = 0;
  *(inited + 64) = a3;

  v9 = OUTLINED_FUNCTION_17_26();
  v11 = sub_1BC97FC70(v9, v10, inited);
  v13 = v12;
  v14 = OUTLINED_FUNCTION_17_26();
  v16 = sub_1BC9807F0(v14, v15, inited);
  v18 = v17;
  swift_setDeallocating();
  result = sub_1BC9811E0();
  *a4 = v11;
  a4[1] = v13;
  a4[2] = v16;
  a4[3] = v18;
  return result;
}

uint64_t static Date.uses24HourTime()()
{
  sub_1BCE19280();
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v0);
  OUTLINED_FUNCTION_2_50();
  v1 = objc_opt_self();
  v2 = sub_1BCE1D240();
  sub_1BCE191B0();
  v3 = sub_1BCE19140();
  v4 = OUTLINED_FUNCTION_6_2();
  v5(v4);
  v6 = [v1 dateFormatFromTemplate:v2 options:0 locale:v3];

  if (v6)
  {
    sub_1BCE1D280();
    OUTLINED_FUNCTION_11_0();

    sub_1BC970820();
    v7 = sub_1BCE1DBD0();

    v8 = v7 ^ 1;
  }

  else
  {
    v8 = 0;
  }

  return v8 & 1;
}

uint64_t sub_1BC988A74@<X0>(uint64_t a1@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08B78);
  OUTLINED_FUNCTION_14(v4);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_36_1();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08B68);
  OUTLINED_FUNCTION_2();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_50();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_110();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_16_0();
  v12 = sub_1BCE185C0();
  v13 = sub_1BCE1D890();

  v14 = objc_opt_self();
  v15 = v14;
  v16 = (v8 + 8);
  if (v13)
  {
    v17 = [v14 meters];
    OUTLINED_FUNCTION_93();

    sub_1BCE185E0();
    v18 = *v16;
    v19 = OUTLINED_FUNCTION_109();
    v18(v19);
    v20 = [v15 meters];
    sub_1BC947608(0, qword_1EDA16AF0);
    sub_1BCE185D0();
    OUTLINED_FUNCTION_19_0();
    __swift_storeEnumTagSinglePayload(v21, v22, v23, v6);
    sub_1BCE185E0();
    if (v24 >= 1000.0)
    {
      sub_1BCACD0A4(v2, a1);
      sub_1BC94C05C(v2, &qword_1EBD08B78);
      return (v18)(v3, v6);
    }

    else
    {
      sub_1BC94C05C(v2, &qword_1EBD08B78);
      return (*(v8 + 32))(a1, v3, v6);
    }
  }

  else
  {
    v26 = [v14 miles];
    OUTLINED_FUNCTION_93();

    sub_1BCE185E0();
    v27 = *v16;
    v28 = OUTLINED_FUNCTION_109();
    v27(v28);
    v29 = [v15 miles];
    sub_1BC947608(0, qword_1EDA16AF0);
    sub_1BCE185D0();
    sub_1BCE185E0();
    if (v30 >= 1.0)
    {
      return (*(v8 + 32))(a1, v1, v6);
    }

    else
    {
      v31 = [v15 yards];
      OUTLINED_FUNCTION_93();

      sub_1BCE185E0();
      v32 = OUTLINED_FUNCTION_109();
      v27(v32);
      v33 = [v15 yards];
      sub_1BCE185D0();
      return (v27)(v1, v6);
    }
  }
}

uint64_t OUTLINED_FUNCTION_90()
{

  return sub_1BCE1DF70();
}

uint64_t OUTLINED_FUNCTION_90_0()
{
}

uint64_t OUTLINED_FUNCTION_90_1()
{

  return swift_allocObject();
}

void sub_1BC988EEC()
{
  if (!qword_1EDA16CA0)
  {
    type metadata accessor for NSUnitPressure.WeatherFormatComponent(255);
    sub_1BC950084(qword_1EDA16A20, type metadata accessor for NSUnitPressure.WeatherFormatComponent);
    v0 = sub_1BCE1D6D0();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDA16CA0);
    }
  }
}

void sub_1BC988F80()
{
  sub_1BC988EEC();
  if (v0 <= 0x3F)
  {
    sub_1BCE19280();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1BC98900C()
{
  if (!qword_1EDA1C000)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD08BB8);
    v0 = sub_1BCE1DB10();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDA1C000);
    }
  }
}

void sub_1BC989070()
{
  if (!qword_1EDA1C008)
  {
    sub_1BC98900C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDA1C008);
    }
  }
}

uint64_t sub_1BC9890B8()
{
  sub_1BC989070();
  v1 = v0;
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

void sub_1BC98926C()
{
  OUTLINED_FUNCTION_20_0();
  v7 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08BC8);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_10_16();
  v68 = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08BD0);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_37();
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08BB8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_10_16();
  OUTLINED_FUNCTION_64_4(v13);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08BC0);
  v15 = OUTLINED_FUNCTION_14(v14);
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_15();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_6_1();
  OUTLINED_FUNCTION_15();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_17_2();
  v18 = type metadata accessor for NSUnitPressure.WeatherFormatComponent(0);
  v19 = OUTLINED_FUNCTION_11_2(v18);
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_18_2();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_63_6();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_9_5();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_35();
  v71 = v23;
  OUTLINED_FUNCTION_88_3();
  if (!v1 || (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0E7A0), OUTLINED_FUNCTION_35_14(), OUTLINED_FUNCTION_95_2(), !v24))
  {
LABEL_41:

    OUTLINED_FUNCTION_21();
    return;
  }

  OUTLINED_FUNCTION_21_29();
LABEL_4:
  if (v25 >= *(v7 + 2))
  {
    __break(1u);
    goto LABEL_43;
  }

  OUTLINED_FUNCTION_56_6();
  sub_1BC970B70();
  sub_1BCE1E100();
  sub_1BC970B70();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08BD8);
  OUTLINED_FUNCTION_29_4(v5);
  v69 = v2;
  if (v26)
  {
    OUTLINED_FUNCTION_105_3();
  }

  else
  {
    sub_1BC9849E8();
    OUTLINED_FUNCTION_106_3();
    OUTLINED_FUNCTION_65_3();
    OUTLINED_FUNCTION_29_0(type metadata accessor for NSUnitPressure.WeatherFormatComponent, 1, v66);
    if (v26)
    {
      sub_1BCE1E120();
    }

    else
    {
      OUTLINED_FUNCTION_43_8();
      OUTLINED_FUNCTION_15_5();
      v27();
      sub_1BCE1E120();
      OUTLINED_FUNCTION_10_0();
      sub_1BC957184(&qword_1EBD08BE8, &qword_1EBD08BB8);
      OUTLINED_FUNCTION_85_4();
      sub_1BCE1D190();
      v28 = OUTLINED_FUNCTION_61_8();
      v29(v28);
    }

    v30 = OUTLINED_FUNCTION_16_2();
    sub_1BC94C05C(v30, v31);
    v4 = v63;
  }

  v32 = v70;
  v33 = sub_1BCE1E150() & ~(-1 << *(v70 + 32));
  OUTLINED_FUNCTION_26_19();
  v7 = v64;
  if (((v36 << v33) & v37) != 0)
  {
    v38 = ~v35;
    v67 = ~v35;
    while (1)
    {
      sub_1BC970B70();
      OUTLINED_FUNCTION_99_2();
      sub_1BC970B70();
      OUTLINED_FUNCTION_29_4(v3);
      if (v26)
      {
        OUTLINED_FUNCTION_2_107();
        sub_1BC979DA0(v0, v39);
        OUTLINED_FUNCTION_29_4(v64 + v3);
        if (v26)
        {
          goto LABEL_38;
        }
      }

      else
      {
        sub_1BC970B70();
        OUTLINED_FUNCTION_29_4(v64 + v3);
        if (!v40)
        {
          OUTLINED_FUNCTION_76_4();
          v38 = &qword_1EBD08BC0;
          v2 = &unk_1BCE4BB20;
          sub_1BC9849E8();
          OUTLINED_FUNCTION_80_4();
          v42 = v10;
          v10 = v66;
          OUTLINED_FUNCTION_29_0(v42, 1, v66);
          if (v43)
          {
            OUTLINED_FUNCTION_2_107();
            sub_1BC979DA0(v0, v44);
            OUTLINED_FUNCTION_15_13(type metadata accessor for NSUnitPressure.WeatherFormatComponent + v64);
            v10 = v65;
            v38 = v67;
            if (v26)
            {
              sub_1BC94C05C(v64, &qword_1EBD08BC0);
LABEL_38:
              sub_1BC979DA0(v3, type metadata accessor for NSUnitPressure.WeatherFormatComponent);
              sub_1BC979DA0(v71, type metadata accessor for NSUnitPressure.WeatherFormatComponent);
              OUTLINED_FUNCTION_72_4();
LABEL_39:
              OUTLINED_FUNCTION_59_5();
              v5 = *(v62 - 256);
              if (v26)
              {
                goto LABEL_41;
              }

              goto LABEL_4;
            }
          }

          else
          {
            OUTLINED_FUNCTION_102_1();
            OUTLINED_FUNCTION_15_13(type metadata accessor for NSUnitPressure.WeatherFormatComponent + v64);
            if (!v45)
            {
              OUTLINED_FUNCTION_43_8();
              v49 = OUTLINED_FUNCTION_70_1();
              v50(v49);
              OUTLINED_FUNCTION_7_26();
              sub_1BC957184(&qword_1EBD08BE0, &qword_1EBD08BB8);
              v51 = OUTLINED_FUNCTION_81_4();
              v52 = OUTLINED_FUNCTION_49_9(v51);
              v64(v52);
              OUTLINED_FUNCTION_2_107();
              sub_1BC979DA0(v0, v53);
              v54 = OUTLINED_FUNCTION_91_3();
              v64(v54);
              sub_1BC94C05C(v68, &qword_1EBD08BC0);
              OUTLINED_FUNCTION_73_4();
              if (v55)
              {
                goto LABEL_38;
              }

              goto LABEL_33;
            }

            OUTLINED_FUNCTION_2_107();
            sub_1BC979DA0(v0, v46);
            v47 = OUTLINED_FUNCTION_91_3();
            v48(v47);
            v10 = v65;
            v38 = v67;
          }

          sub_1BC94C05C(v64, &qword_1EBD08BC8);
          v2 = v69;
LABEL_33:
          OUTLINED_FUNCTION_2_107();
          sub_1BC979DA0(v3, v56);
          goto LABEL_34;
        }

        OUTLINED_FUNCTION_2_107();
        sub_1BC979DA0(v0, v41);
        sub_1BC94C05C(v4, &qword_1EBD08BC0);
      }

      sub_1BC94C05C(v3, &qword_1EBD08BD0);
LABEL_34:
      v33 = (v33 + 1) & v38;
      v32 = v70;
      OUTLINED_FUNCTION_44_11();
      if ((v58 & (v57 << v33)) == 0)
      {
        OUTLINED_FUNCTION_89_4();
        break;
      }
    }
  }

  OUTLINED_FUNCTION_75_2(v34);
  sub_1BC979BA4();
  v59 = *(v32 + 16);
  v60 = __OFADD__(v59, 1);
  v61 = v59 + 1;
  if (!v60)
  {
    *(v32 + 16) = v61;
    goto LABEL_39;
  }

LABEL_43:
  __break(1u);
}

void static WeatherFormatStyle<>.weather(_:locale:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_20_0();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v26 = v25;
  sub_1BCE19280();
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_52();
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07890);
  v29 = OUTLINED_FUNCTION_14(v28);
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_50();
  MEMORY[0x1EEE9AC00](v30);
  v32 = &a9 - v31;
  v33 = OUTLINED_FUNCTION_18_1();
  sub_1BC952ABC(v33, v34, &qword_1EBD07890);
  *v26 = v24;
  sub_1BC952ABC(v32, v20, &qword_1EBD07890);
  OUTLINED_FUNCTION_6(v20);
  if (v35)
  {
    v36 = qword_1EDA1F658;

    if (v36 != -1)
    {
      OUTLINED_FUNCTION_1_0();
    }

    sub_1BCE1A9F0();

    sub_1BC94C05C(v32, &qword_1EBD07890);
    OUTLINED_FUNCTION_6(v20);
    if (!v35)
    {
      sub_1BC94C05C(v20, &qword_1EBD07890);
    }
  }

  else
  {

    sub_1BC94C05C(v32, &qword_1EBD07890);
    v37 = OUTLINED_FUNCTION_36_5();
    v38(v37);
  }

  v39 = type metadata accessor for NSUnitPressure.BaseWeatherFormatStyle(0);
  OUTLINED_FUNCTION_76();
  v40();
  *(v26 + *(v39 + 24)) = 0;
  OUTLINED_FUNCTION_21();
}

void NSUnitPressure.BaseWeatherFormatStyle.accessible.getter()
{
  OUTLINED_FUNCTION_20_0();
  v3 = v2;
  v4 = sub_1BCE19280();
  OUTLINED_FUNCTION_2();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_52();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07890);
  v9 = OUTLINED_FUNCTION_14(v8);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_3();
  v12 = v10 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v27 - v14;
  v16 = *v0;
  v17 = type metadata accessor for NSUnitPressure.BaseWeatherFormatStyle(0);
  (*(v6 + 16))(v15, &v0[*(v17 + 20)], v4);
  OUTLINED_FUNCTION_60();
  __swift_storeEnumTagSinglePayload(v18, v19, v20, v4);
  v28 = v3;
  *v3 = v16;
  v21 = OUTLINED_FUNCTION_18_1();
  sub_1BC952ABC(v21, v22, &qword_1EBD07890);
  OUTLINED_FUNCTION_6(v12);
  if (v23)
  {
    v24 = qword_1EDA1F658;

    if (v24 != -1)
    {
      OUTLINED_FUNCTION_1_0();
    }

    sub_1BCE1A9F0();

    sub_1BC94C05C(v15, &qword_1EBD07890);
    OUTLINED_FUNCTION_6(v12);
    if (!v23)
    {
      sub_1BC94C05C(v12, &qword_1EBD07890);
    }
  }

  else
  {

    sub_1BC94C05C(v15, &qword_1EBD07890);
    (*(v6 + 32))(v1, v12, v4);
  }

  v25 = v28;
  OUTLINED_FUNCTION_76();
  v26();
  *(v25 + *(v17 + 24)) = 1;
  OUTLINED_FUNCTION_21();
}

uint64_t sub_1BC989DE4(uint64_t a1)
{
  result = sub_1BC950084(&qword_1EDA16AC8, type metadata accessor for NSUnitPressure.BaseWeatherFormatStyle);
  *(a1 + 8) = result;
  return result;
}

uint64_t NSUnitPressure.BaseWeatherFormatStyle.hash(into:)()
{
  sub_1BC989F28();
  type metadata accessor for NSUnitPressure.BaseWeatherFormatStyle(0);
  sub_1BCE19280();
  OUTLINED_FUNCTION_1_91();
  sub_1BC950084(v0, v1);
  sub_1BCE1D190();
  return sub_1BCE1E120();
}

void sub_1BC989F28()
{
  OUTLINED_FUNCTION_20_0();
  v3 = v2;
  v5 = v4;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08BB8);
  OUTLINED_FUNCTION_2();
  v7 = v6;
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_10_16();
  v43 = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08BC0);
  v11 = OUTLINED_FUNCTION_14(v10);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_3();
  v44 = v12 - v13;
  OUTLINED_FUNCTION_15();
  MEMORY[0x1EEE9AC00](v14);
  v51 = v42 - v15;
  v16 = OUTLINED_FUNCTION_13();
  v17 = type metadata accessor for NSUnitPressure.WeatherFormatComponent(v16);
  v18 = OUTLINED_FUNCTION_11_2(v17);
  v49 = v19;
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_3();
  v22 = v20 - v21;
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_23_0();
  v42[1] = v5;
  memcpy(v52, v5, sizeof(v52));
  v48 = sub_1BCE1E150();
  v24 = v3 + 56;
  OUTLINED_FUNCTION_9_17();
  v27 = v26 & v25;
  OUTLINED_FUNCTION_112();
  v42[3] = v7 + 32;
  v42[2] = v7 + 8;
  v50 = v3;

  v28 = 0;
  v29 = 0;
  for (i = v22; v27; v28 ^= v40)
  {
    v30 = v51;
LABEL_8:
    OUTLINED_FUNCTION_18_10();
    sub_1BC96DDD0();
    sub_1BCE1E100();
    sub_1BC96DDD0();
    v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08BD8);
    OUTLINED_FUNCTION_29_0(v22, 1, v32);
    if (v36)
    {
      MEMORY[0x1BFB30850](0);
    }

    else
    {
      v47 = v28;
      sub_1BC9849E8();
      MEMORY[0x1BFB30850](1);
      v33 = v30;
      v34 = v44;
      sub_1BC95DCE8();
      v35 = v45;
      OUTLINED_FUNCTION_29_0(v34, 1, v45);
      if (v36)
      {
        sub_1BCE1E120();
      }

      else
      {
        OUTLINED_FUNCTION_6_6();
        v37 = v43;
        v38(v43, v34, v35);
        sub_1BCE1E120();
        OUTLINED_FUNCTION_10_0();
        sub_1BC957184(&qword_1EBD08BE8, &qword_1EBD08BB8);
        sub_1BCE1D190();
        OUTLINED_FUNCTION_6_6();
        v39(v37, v35);
      }

      sub_1BC94C05C(v33, &qword_1EBD08BC0);
      v28 = v47;
      v22 = i;
    }

    v27 &= v27 - 1;
    v40 = sub_1BCE1E150();
    OUTLINED_FUNCTION_1_20();
    sub_1BC96DF88(v0, v41);
  }

  v30 = v51;
  while (1)
  {
    v31 = v29 + 1;
    if (__OFADD__(v29, 1))
    {
      break;
    }

    if (v31 >= v1)
    {

      MEMORY[0x1BFB30850](v28);
      OUTLINED_FUNCTION_21();
      return;
    }

    v27 = *(v24 + 8 * v31);
    ++v29;
    if (v27)
    {
      v29 = v31;
      goto LABEL_8;
    }
  }

  __break(1u);
}

uint64_t sub_1BC98A370()
{
  OUTLINED_FUNCTION_101_0();
  v3 = v2;
  swift_getObjectType();
  OUTLINED_FUNCTION_76();
  result = sub_1BC98A3C8(v4, v5, v6, v1, v7, v0);
  *v3 = result;
  v3[1] = v9;
  return result;
}

uint64_t sub_1BC98A3C8(uint64_t a1, unsigned __int8 *a2, uint64_t a3, uint64_t *a4, uint64_t *a5, char *a6)
{
  v116 = a6;
  v114 = a5;
  v95 = sub_1BCE18710();
  v94 = *(v95 - 8);
  MEMORY[0x1EEE9AC00](v95);
  v93 = &v89 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = sub_1BCE1DAF0();
  v97 = *(v98 - 8);
  MEMORY[0x1EEE9AC00](v98);
  v96 = &v89 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for NSUnitPressure.WeatherFormatComponent(0);
  v113 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v105 = &v89 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08B50);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v104 = &v89 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD09C00);
  v102 = *(v14 - 8);
  v103 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v100 = &v89 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08BC0);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v92 = &v89 - v17;
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08288);
  v91 = *(v108 - 8);
  MEMORY[0x1EEE9AC00](v108);
  v89 = &v89 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v90 = &v89 - v20;
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08BB8);
  v107 = *(v110 - 8);
  MEMORY[0x1EEE9AC00](v110);
  v99 = &v89 - v21;
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD09C08);
  v106 = *(v112 - 8);
  MEMORY[0x1EEE9AC00](v112);
  v23 = &v89 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v111 = &v89 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD09BF0);
  v117 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v89 - v27;
  v109 = *a2;
  v29 = type metadata accessor for NSUnitPressure.BaseWeatherFormatStyle(0);
  v115 = *(v29 + 20);
  v30 = sub_1BCE1A470();
  sub_1BCE18680();

  v31 = v26;
  v116 = v28;
  v32 = sub_1BCE185C0();
  v33 = sub_1BCE1D8F0();

  v34 = *a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD09BC8);
  v35 = (*(v113 + 80) + 32) & ~*(v113 + 80);
  v36 = swift_allocObject();
  *(v36 + 16) = xmmword_1BCE3E050;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08BD8);
  __swift_storeEnumTagSinglePayload(v36 + v35, 1, 1, v37);
  sub_1BC98926C();
  sub_1BC98B0E4();
  LOBYTE(v35) = v38;

  if (v35)
  {
    v39 = 11565;
    v41 = v115;
    v40 = v116;
    switch(v109)
    {
      case 1:
        break;
      case 2:
        v39 = 0x9380E29380E2;
        break;
      case 3:
        v39 = 0;
        break;
      default:
        sub_1BCE185E0();
        v118 = v42;
        v43 = v89;
        sub_1BC98B6DC(v33 & 1, v34, v44, v45, v46, v47, v48, v49, v89, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100);
        v50 = a4 + v41;
        v51 = v90;
        v52 = v108;
        MEMORY[0x1BFB2B3D0](v50, v108);
        v53 = *(v91 + 8);
        v53(v43, v52);
        sub_1BC96ABEC();
        sub_1BC957184(&qword_1EDA1EF58, &qword_1EBD08288);
        sub_1BCE1D0F0();
        v53(v51, v52);
        (*(v117 + 8))(v40, v31);
        return v120;
    }

    (*(v117 + 8))(v116, v31);
    return v39;
  }

  v54 = *(a4 + *(v29 + 24));
  v114 = a4;
  v101 = v26;
  if (v54)
  {
    sub_1BC98B698();
    v55 = v99;
    sub_1BCE18650();
    v56 = v112;
  }

  else
  {
    v57 = v92;
    sub_1BC98C6B4();
    v58 = v110;
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v57, 1, v110);
    v56 = v112;
    v55 = v99;
    if (EnumTagSinglePayload == 1)
    {
      sub_1BC98B698();
      sub_1BCE18630();
      v60 = __swift_getEnumTagSinglePayload(v57, 1, v58);
      v61 = v106;
      if (v60 != 1)
      {
        sub_1BC94C05C(v57, &qword_1EBD08BC0);
      }

      goto LABEL_14;
    }

    (*(v107 + 32))(v99, v57, v58);
  }

  v61 = v106;
LABEL_14:
  sub_1BC98B698();
  v62 = v100;
  sub_1BCE18CF0();
  v63 = v33 & 1;
  v64 = v104;
  sub_1BC98B6DC(v63, v34, v65, v66, v67, v68, v69, v70, v89, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100);
  __swift_storeEnumTagSinglePayload(v64, 0, 1, v108);
  sub_1BCE18510();
  sub_1BC94C05C(v64, &qword_1EBD08B50);
  (*(v102 + 8))(v62, v103);
  (*(v107 + 8))(v55, v110);
  v71 = v111;
  sub_1BCE18620();
  v72 = *(v61 + 8);
  v72(v23, v56);
  sub_1BC957184(&qword_1EDA1BFF0, &qword_1EBD09C08);
  v73 = v116;
  sub_1BCE186A0();
  v74 = v105;
  __swift_storeEnumTagSinglePayload(v105, 1, 1, v37);
  sub_1BC98B894();
  v76 = v75;
  sub_1BC98BFC8(v74);
  if (v76)
  {
    v77 = 0xE200000000000000;
    v78 = 11565;
    v79 = v111;
    switch(v109)
    {
      case 1:
        goto LABEL_21;
      case 2:
        v77 = 0xA600000000000000;
        v78 = 0x9380E29380E2;
        goto LABEL_21;
      case 3:
        v78 = 0;
        v77 = 0xE000000000000000;
LABEL_21:
        v86 = v96;
        sub_1BCE1ABF0();
        v118 = v78;
        v119 = v77;
        sub_1BC98C934();
        sub_1BC98CAB4();
        sub_1BC950084(&qword_1EDA1C0A8, MEMORY[0x1E6969FD0]);
        v87 = v98;
        sub_1BCE1D790();
        (*(v97 + 8))(v86, v87);
        v72(v79, v112);
        (*(v117 + 8))(v73, v101);

        break;
      default:
        v72(v111, v56);
        (*(v117 + 8))(v73, v101);
        break;
    }
  }

  else
  {
    v80 = v96;
    sub_1BCE1ABF0();
    v118 = 0;
    v119 = 0xE000000000000000;
    sub_1BC98C934();
    sub_1BC98CAB4();
    sub_1BC950084(&qword_1EDA1C0A8, MEMORY[0x1E6969FD0]);
    v81 = v98;
    sub_1BCE1D790();
    (*(v97 + 8))(v80, v81);
    v118 = v120;
    v119 = v121;
    v82 = v93;
    sub_1BCE186C0();
    sub_1BC970820();
    v83 = sub_1BCE1DB70();
    v85 = v84;
    (*(v94 + 8))(v82, v95);
    v72(v71, v112);
    (*(v117 + 8))(v73, v101);

    v120 = v83;
    v121 = v85;
  }

  return v120;
}

void sub_1BC98B0E4()
{
  OUTLINED_FUNCTION_20_0();
  v5 = v4;
  v7 = v6;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08BB8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_77();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08BC0);
  OUTLINED_FUNCTION_14(v9);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_10_16();
  OUTLINED_FUNCTION_114_0(v11);
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08BC8);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_10_16();
  v60 = v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08BD0);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v15);
  v17 = v58 - v16;
  v18 = type metadata accessor for NSUnitPressure.WeatherFormatComponent(0);
  v19 = OUTLINED_FUNCTION_11_2(v18);
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_78();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_50();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_54();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_106();
  if (v37 || *(v7 + 16) != *(v5 + 16))
  {
    goto LABEL_38;
  }

  v63 = v23;
  v58[8] = v0;
  OUTLINED_FUNCTION_16_16();
  OUTLINED_FUNCTION_32_2();
  if (!v27)
  {
    goto LABEL_5;
  }

  do
  {
    OUTLINED_FUNCTION_52_0();
    OUTLINED_FUNCTION_86();
LABEL_10:
    OUTLINED_FUNCTION_111(v28);
    OUTLINED_FUNCTION_19_9();
    sub_1BC96DDD0();
    sub_1BC979B4C();
    sub_1BCE1E100();
    NSUnitPressure.WeatherFormatComponent.hash(into:)();
    sub_1BCE1E150();
    OUTLINED_FUNCTION_51();
    OUTLINED_FUNCTION_108();
    if ((v32 & 1) == 0)
    {
LABEL_37:
      sub_1BC96DF88(v3, type metadata accessor for NSUnitPressure.WeatherFormatComponent);
LABEL_38:
      OUTLINED_FUNCTION_21();
      return;
    }

    v64 = ~v31;
    while (1)
    {
      OUTLINED_FUNCTION_103_0();
      OUTLINED_FUNCTION_18_10();
      sub_1BC96DDD0();
      OUTLINED_FUNCTION_116();
      sub_1BC96DDD0();
      v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08BD8);
      OUTLINED_FUNCTION_8_0(v17);
      if (v37)
      {
        OUTLINED_FUNCTION_1_20();
        sub_1BC96DF88(v1, v34);
        OUTLINED_FUNCTION_8_0(&v17[v5]);
        v5 = v2;
        if (v37)
        {
          goto LABEL_34;
        }

        goto LABEL_20;
      }

      v35 = v3;
      OUTLINED_FUNCTION_19_9();
      v36 = v63;
      sub_1BC96DDD0();
      OUTLINED_FUNCTION_8_0(&v17[v5]);
      if (!v37)
      {
        break;
      }

      OUTLINED_FUNCTION_1_20();
      sub_1BC96DF88(v1, v38);
      sub_1BC94C05C(v36, &qword_1EBD08BC0);
      v5 = v2;
      v3 = v35;
LABEL_20:
      sub_1BC94C05C(v17, &qword_1EBD08BD0);
LABEL_32:
      OUTLINED_FUNCTION_64_0();
      if ((v56 & 1) == 0)
      {
        goto LABEL_37;
      }
    }

    OUTLINED_FUNCTION_100();
    v3 = &qword_1EBD08BC0;
    sub_1BC9849E8();
    OUTLINED_FUNCTION_115();
    v39 = OUTLINED_FUNCTION_57();
    v5 = v62;
    OUTLINED_FUNCTION_29_0(v39, v40, v62);
    if (!v41)
    {
      sub_1BC95DCE8();
      OUTLINED_FUNCTION_6(v14 + v33);
      if (!v44)
      {
        OUTLINED_FUNCTION_6_6();
        v48 = OUTLINED_FUNCTION_99();
        v49(v48);
        OUTLINED_FUNCTION_7_26();
        sub_1BC957184(&qword_1EBD08BE0, &qword_1EBD08BB8);
        v50 = OUTLINED_FUNCTION_95();
        v51 = OUTLINED_FUNCTION_80_0(v50);
        (unk_1BCE4BB20)(v51);
        OUTLINED_FUNCTION_1_20();
        sub_1BC96DF88(v1, v52);
        v53 = OUTLINED_FUNCTION_98_0();
        (unk_1BCE4BB20)(v53);
        sub_1BC94C05C(v14, &qword_1EBD08BC0);
        OUTLINED_FUNCTION_82();
        if (v54)
        {
          goto LABEL_34;
        }

        goto LABEL_31;
      }

      OUTLINED_FUNCTION_1_20();
      sub_1BC96DF88(v1, v45);
      v46 = OUTLINED_FUNCTION_98_0();
      v47(v46);
      v5 = v2;
      v43 = v14;
      v3 = v35;
LABEL_29:
      sub_1BC94C05C(v43, &qword_1EBD08BC8);
      v14 = v59;
LABEL_31:
      OUTLINED_FUNCTION_1_20();
      sub_1BC96DF88(v17, v55);
      goto LABEL_32;
    }

    OUTLINED_FUNCTION_1_20();
    sub_1BC96DF88(v1, v42);
    OUTLINED_FUNCTION_6(v14 + v33);
    v5 = v2;
    v43 = v14;
    v3 = v35;
    if (!v37)
    {
      goto LABEL_29;
    }

    sub_1BC94C05C(v14, &qword_1EBD08BC0);
    v14 = v59;
LABEL_34:
    sub_1BC96DF88(v17, type metadata accessor for NSUnitPressure.WeatherFormatComponent);
    sub_1BC96DF88(v3, type metadata accessor for NSUnitPressure.WeatherFormatComponent);
    OUTLINED_FUNCTION_34_1();
  }

  while (v57);
LABEL_5:
  v29 = v26;
  while (1)
  {
    v30 = v29 + 1;
    if (__OFADD__(v29, 1))
    {
      break;
    }

    if (v30 >= v24)
    {
      goto LABEL_38;
    }

    ++v29;
    if (*(v25 + 8 * v30))
    {
      OUTLINED_FUNCTION_30();
      OUTLINED_FUNCTION_71();
      goto LABEL_10;
    }
  }

  __break(1u);
}

unint64_t sub_1BC98B698()
{
  result = qword_1EDA16970[0];
  if (!qword_1EDA16970[0])
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, qword_1EDA16970);
  }

  return result;
}

void sub_1BC98B6DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_20_0();
  a19 = v21;
  a20 = v22;
  v23 = sub_1BCE18D90();
  OUTLINED_FUNCTION_2();
  v25 = v24;
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_52();
  v27 = sub_1BCE19280();
  v28 = OUTLINED_FUNCTION_14(v27);
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_2_0();
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08288);
  OUTLINED_FUNCTION_2();
  v31 = v30;
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v32);
  v34 = &a9 - v33;
  sub_1BCE19150();
  sub_1BC96ABEC();
  sub_1BCE18C80();
  sub_1BCE18D60();
  v35 = OUTLINED_FUNCTION_36_5();
  MEMORY[0x1BFB2B400](v35);
  (*(v25 + 8))(v20, v23);
  (*(v31 + 8))(v34, v29);
  OUTLINED_FUNCTION_21();
}

void sub_1BC98B894()
{
  OUTLINED_FUNCTION_20_0();
  OUTLINED_FUNCTION_66_0();
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08BB8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_37();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08BC0);
  OUTLINED_FUNCTION_14(v5);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_10_16();
  v46 = v7;
  v43[4] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08BC8);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v8);
  v10 = v43 - v9;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08BD0);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_85();
  v12 = type metadata accessor for NSUnitPressure.WeatherFormatComponent(0);
  v13 = OUTLINED_FUNCTION_11_2(v12);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_3();
  v45 = (v14 - v15);
  OUTLINED_FUNCTION_15();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_72();
  if (!*(v0 + 16))
  {
    goto LABEL_25;
  }

  sub_1BCE1E100();
  NSUnitPressure.WeatherFormatComponent.hash(into:)();
  sub_1BCE1E150();
  OUTLINED_FUNCTION_26_4();
  OUTLINED_FUNCTION_51();
  v49 = v17;
  OUTLINED_FUNCTION_108();
  if ((v19 & 1) == 0)
  {
    goto LABEL_25;
  }

  OUTLINED_FUNCTION_39_0(v18);
  v20 = v45;
  while (1)
  {
    OUTLINED_FUNCTION_18_10();
    sub_1BC96DDD0();
    OUTLINED_FUNCTION_94();
    sub_1BC96DDD0();
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08BD8);
    OUTLINED_FUNCTION_8_0(v3);
    if (v23)
    {
      OUTLINED_FUNCTION_1_20();
      sub_1BC96DF88(v2, v22);
      OUTLINED_FUNCTION_8_0(v3 + v0);
      v0 = v48;
      if (v23)
      {
        goto LABEL_26;
      }

      goto LABEL_12;
    }

    OUTLINED_FUNCTION_19_9();
    OUTLINED_FUNCTION_87();
    sub_1BC96DDD0();
    OUTLINED_FUNCTION_8_0(v3 + v0);
    if (!v23)
    {
      break;
    }

    OUTLINED_FUNCTION_1_20();
    sub_1BC96DF88(v2, v24);
    v25 = OUTLINED_FUNCTION_63();
    sub_1BC94C05C(v25, v26);
    v0 = v48;
LABEL_12:
    sub_1BC94C05C(v3, &qword_1EBD08BD0);
LABEL_24:
    v1 = (v1 + 1) & v47;
    OUTLINED_FUNCTION_55_1();
    if (((v41 >> v1) & 1) == 0)
    {
      goto LABEL_25;
    }
  }

  OUTLINED_FUNCTION_67();
  OUTLINED_FUNCTION_117();
  v0 = v44;
  OUTLINED_FUNCTION_29_0(v10, 1, v44);
  if (!v27)
  {
    OUTLINED_FUNCTION_119();
    OUTLINED_FUNCTION_5_16(v21 + v10);
    if (!v29)
    {
      v33 = OUTLINED_FUNCTION_61_0();
      v34(v33);
      OUTLINED_FUNCTION_7_26();
      sub_1BC957184(&qword_1EBD08BE0, &qword_1EBD08BB8);
      v35 = OUTLINED_FUNCTION_96_0();
      v36 = OUTLINED_FUNCTION_81(v35);
      v21(v36);
      OUTLINED_FUNCTION_1_20();
      sub_1BC96DF88(v2, v37);
      v38 = OUTLINED_FUNCTION_102();
      v21(v38);
      sub_1BC94C05C(v10, v20);
      OUTLINED_FUNCTION_83();
      if (v39)
      {
        goto LABEL_26;
      }

      goto LABEL_23;
    }

    OUTLINED_FUNCTION_1_20();
    sub_1BC96DF88(v2, v30);
    v31 = OUTLINED_FUNCTION_102();
    v32(v31);
    v0 = v48;
LABEL_21:
    sub_1BC94C05C(v10, &qword_1EBD08BC8);
    v20 = v45;
LABEL_23:
    OUTLINED_FUNCTION_1_20();
    sub_1BC96DF88(v3, v40);
    goto LABEL_24;
  }

  OUTLINED_FUNCTION_1_20();
  sub_1BC96DF88(v2, v28);
  OUTLINED_FUNCTION_5_16(v21 + v10);
  v0 = v48;
  if (!v23)
  {
    goto LABEL_21;
  }

  sub_1BC94C05C(v10, &qword_1EBD08BC0);
LABEL_26:
  OUTLINED_FUNCTION_1_20();
  sub_1BC96DF88(v3, v42);
LABEL_25:
  OUTLINED_FUNCTION_21();
}

uint64_t NSUnitPressure.WeatherFormatComponent.hash(into:)()
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08BB8);
  OUTLINED_FUNCTION_2();
  v5 = v4;
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_26_8();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08BC0);
  v8 = OUTLINED_FUNCTION_14(v7);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_50();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v23 - v10;
  v12 = type metadata accessor for NSUnitPressure.WeatherFormatComponent(0);
  v13 = OUTLINED_FUNCTION_14(v12);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_2_0();
  v16 = v15 - v14;
  sub_1BC98BF64(v0, v15 - v14);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08BD8);
  OUTLINED_FUNCTION_29_0(v16, 1, v17);
  if (v22)
  {
    return MEMORY[0x1BFB30850](0);
  }

  sub_1BC98C608(v16, v11);
  MEMORY[0x1BFB30850](1);
  v19 = OUTLINED_FUNCTION_36_5();
  sub_1BC952ABC(v19, v20, v21);
  OUTLINED_FUNCTION_29_0(v2, 1, v3);
  if (v22)
  {
    sub_1BCE1E120();
  }

  else
  {
    (*(v5 + 32))(v1, v2, v3);
    sub_1BCE1E120();
    sub_1BC957184(&qword_1EBD08BE8, &qword_1EBD08BB8);
    sub_1BCE1D190();
    (*(v5 + 8))(v1, v3);
  }

  return sub_1BC94C05C(v11, &qword_1EBD08BC0);
}

uint64_t sub_1BC98BF64(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NSUnitPressure.WeatherFormatComponent(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BC98BFC8(uint64_t a1)
{
  v2 = type metadata accessor for NSUnitPressure.WeatherFormatComponent(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t OUTLINED_FUNCTION_86_1()
{

  return swift_arrayDestroy();
}

uint64_t OUTLINED_FUNCTION_120()
{

  return sub_1BC96DDD0();
}

uint64_t OUTLINED_FUNCTION_102_0()
{

  return sub_1BCE1CAE0();
}

uint64_t OUTLINED_FUNCTION_102_1()
{

  return sub_1BC95DCE8();
}

void OUTLINED_FUNCTION_32_2()
{
  *(v8 - 168) = v6 + 56;
  *(v8 - 264) = v5 + 32;
  *(v8 - 240) = v5 + 8;
  *(v8 - 288) = v4;
  *(v8 - 232) = v7;
  *(v8 - 296) = v3;
  *(v8 - 304) = v1;
  *(v8 - 312) = v2;
  *(v8 - 320) = v0;
}

uint64_t OUTLINED_FUNCTION_32_4()
{

  return swift_once();
}

float OUTLINED_FUNCTION_32_8(float result)
{
  if (result == 0.0)
  {
    return v1;
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_32_9(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(void))
{

  return sub_1BCCD7280(a3, a5, v5);
}

uint64_t OUTLINED_FUNCTION_32_10()
{
}

uint64_t OUTLINED_FUNCTION_32_11(double a1, double a2, double a3, double a4)
{
  *&STACK[0x350] = a1;
  *&STACK[0x348] = a2;
  *&STACK[0x340] = a3;
  *&STACK[0x338] = a4;
}

void OUTLINED_FUNCTION_105_3()
{

  JUMPOUT(0x1BFB30850);
}

void static Set<>.unit.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD09BC8);
  OUTLINED_FUNCTION_2_103();
  *(OUTLINED_FUNCTION_19_6() + 16) = xmmword_1BCE3E050;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08BB8);
  OUTLINED_FUNCTION_19_0();
  __swift_storeEnumTagSinglePayload(v0, v1, v2, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08BD8);
  OUTLINED_FUNCTION_60();
  __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);

  sub_1BC98926C();
}

{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD078A8);
  OUTLINED_FUNCTION_12_55();
  *(OUTLINED_FUNCTION_19_6() + 16) = xmmword_1BCE3E050;
  sub_1BC947608(0, &qword_1EDA1F1C8);
  sub_1BCE18630();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD078B0);
  OUTLINED_FUNCTION_60();
  __swift_storeEnumTagSinglePayload(v0, v1, v2, v3);

  sub_1BC9795A8();
}

{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08B00);
  OUTLINED_FUNCTION_13_14();
  *(OUTLINED_FUNCTION_19_6() + 16) = xmmword_1BCE3E050;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08B10);
  OUTLINED_FUNCTION_19_0();
  __swift_storeEnumTagSinglePayload(v0, v1, v2, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08B08);
  OUTLINED_FUNCTION_60();
  __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);

  sub_1BC98427C();
}

{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08BF8);
  OUTLINED_FUNCTION_2();
  v3 = v2;
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_24_15();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07CD8);
  OUTLINED_FUNCTION_11_32();
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1BCE3E050;
  v8 = v7 + v6;
  sub_1BC947608(0, qword_1EDA1EFC0);
  sub_1BCE18630();
  v9 = OUTLINED_FUNCTION_52_4();
  v10(v9);
  *(v8 + *(OUTLINED_FUNCTION_55_5() + 20)) = 0;
  OUTLINED_FUNCTION_60();
  __swift_storeEnumTagSinglePayload(v11, v12, v13, v14);
  (*(v3 + 8))(v0, v1);
  sub_1BC9639B4();
}

uint64_t sub_1BC98C404(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1BCE186B0();
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = a1;
  }

  else
  {
    v9 = *(a4 + 24);
    if (*(*(v9 - 8) + 84) != a3)
    {
      *(a1 + *(a4 + 52) + 8) = a2;
      return result;
    }

    v10 = a1 + *(a4 + 44);
  }

  return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
}

uint64_t sub_1BC98C508(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1BCE186B0();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1;
LABEL_5:

    return __swift_getEnumTagSinglePayload(v8, a2, v7);
  }

  v7 = *(a3 + 24);
  if (*(*(v7 - 8) + 84) == a2)
  {
    v8 = a1 + *(a3 + 44);
    goto LABEL_5;
  }

  v10 = *(a1 + *(a3 + 52) + 8);
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

uint64_t sub_1BC98C608(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08BC0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t OUTLINED_FUNCTION_66_2(double a1, double a2)
{
  *&STACK[0x208] = a1;
  *&STACK[0x200] = a2;
}

void sub_1BC98C6B4()
{
  OUTLINED_FUNCTION_20_0();
  v1 = v0;
  v25 = v2;
  v3 = OUTLINED_FUNCTION_2_103();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_3();
  v8 = v6 - v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v24 - v10;
  v12 = 1 << *(v1 + 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & *(v1 + 56);
  v15 = (v12 + 63) >> 6;

  v16 = 0;
  if (v14)
  {
    while (1)
    {
      v17 = v16;
LABEL_8:
      sub_1BC98BF64(*(v1 + 48) + *(v5 + 72) * (__clz(__rbit64(v14)) | (v17 << 6)), v11);
      sub_1BC98C88C(v11, v8);
      v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08BD8);
      OUTLINED_FUNCTION_29_0(v8, 1, v18);
      if (!v19)
      {
        break;
      }

      v14 &= v14 - 1;
      sub_1BC98BFC8(v8);
      v16 = v17;
      if (!v14)
      {
        goto LABEL_5;
      }
    }

    sub_1BC98C608(v8, v25);
LABEL_13:
    OUTLINED_FUNCTION_21();
  }

  else
  {
LABEL_5:
    while (1)
    {
      v17 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v17 >= v15)
      {

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08BB8);
        OUTLINED_FUNCTION_19_0();
        __swift_storeEnumTagSinglePayload(v20, v21, v22, v23);
        goto LABEL_13;
      }

      v14 = *(v1 + 56 + 8 * v17);
      ++v16;
      if (v14)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }
}

uint64_t sub_1BC98C88C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NSUnitPressure.WeatherFormatComponent(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BC98C8F0(uint64_t a1, uint64_t a2)
{
  sub_1BCE1E100();
  sub_1BC98C988(v4, a2);
  return sub_1BCE1E150();
}

unint64_t sub_1BC98C934()
{
  result = qword_1EDA1C3E0;
  if (!qword_1EDA1C3E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA1C3E0);
  }

  return result;
}

uint64_t sub_1BC98C988(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  sub_1BCE186B0();
  v5 = sub_1BCE185C0();
  v6 = [v5 symbol];

  sub_1BCE1D280();
  sub_1BCE1D370();

  sub_1BCE185E0();
  if (v7 == 0.0)
  {
    v7 = 0.0;
  }

  MEMORY[0x1BFB30880](*&v7);
  sub_1BCE1D190();
  result = MEMORY[0x1BFB30850](*(v3 + *(a2 + 48)));
  if (*(v3 + *(a2 + 52) + 8))
  {

    return sub_1BCE1D370();
  }

  return result;
}

unint64_t sub_1BC98CAB4()
{
  result = qword_1EDA1C3E8;
  if (!qword_1EDA1C3E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA1C3E8);
  }

  return result;
}

void sub_1BC98CB2C()
{
  OUTLINED_FUNCTION_20_0();
  v4 = v3;
  v6 = v5;
  type metadata accessor for NSUnitTemperature.WeatherFormatUnitConfiguration(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_2_0();
  v27 = v9 - v8;
  v10 = OUTLINED_FUNCTION_13();
  v11 = type metadata accessor for NSUnitTemperature.WeatherFormatComponent(v10);
  v12 = OUTLINED_FUNCTION_11_2(v11);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_18_2();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_23_0();
  memcpy(v29, v6, sizeof(v29));
  sub_1BCE1E150();
  v14 = v4 + 56;
  OUTLINED_FUNCTION_9_17();
  v17 = v16 & v15;
  OUTLINED_FUNCTION_112();

  v18 = 0;
  v19 = 0;
  v26 = v0;
  v25 = v1;
  if (!v17)
  {
    goto LABEL_3;
  }

  do
  {
    v28 = v18;
LABEL_7:
    OUTLINED_FUNCTION_21_8();
    sub_1BC96DDD0();
    sub_1BCE1E100();
    OUTLINED_FUNCTION_120();
    OUTLINED_FUNCTION_5_16(v0);
    if (v21)
    {
      MEMORY[0x1BFB30850](0);
    }

    else
    {
      OUTLINED_FUNCTION_20_8();
      sub_1BC979B4C();
      MEMORY[0x1BFB30850](1);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08BF8);
      OUTLINED_FUNCTION_10_0();
      sub_1BC957184(&qword_1EDA1F690, &qword_1EBD08BF8);
      sub_1BCE1D190();
      v1 = v25;
      sub_1BCE1E120();
      OUTLINED_FUNCTION_2_20();
      v0 = v26;
      sub_1BC96DF88(v27, v22);
    }

    v17 &= v17 - 1;
    v23 = sub_1BCE1E150();
    OUTLINED_FUNCTION_3_27();
    sub_1BC96DF88(v1, v24);
    v18 = v23 ^ v28;
  }

  while (v17);
LABEL_3:
  while (1)
  {
    v20 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      break;
    }

    if (v20 >= v2)
    {

      MEMORY[0x1BFB30850](v18);
      OUTLINED_FUNCTION_21();
      return;
    }

    v17 = *(v14 + 8 * v20);
    ++v19;
    if (v17)
    {
      v28 = v18;
      v19 = v20;
      goto LABEL_7;
    }
  }

  __break(1u);
}

uint64_t sub_1BC98CE2C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD09BF0);
  __swift_project_value_buffer(v5, a2);
  OUTLINED_FUNCTION_3_2();
  v7 = *(v6 + 16);

  return v7(a3);
}

uint64_t sub_1BC98CECC(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD09BF0);
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v3, a2);
  v4 = [objc_opt_self() millibars];
  sub_1BC98B698();
  return sub_1BCE185D0();
}

void static WeatherFormatStyle<>.weather(_:usage:locale:)()
{
  OUTLINED_FUNCTION_20_0();
  v28[1] = v2;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = sub_1BCE19280();
  OUTLINED_FUNCTION_2();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_6_15();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07890);
  v14 = OUTLINED_FUNCTION_14(v13);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_50();
  MEMORY[0x1EEE9AC00](v15);
  v17 = v28 - v16;
  LOBYTE(v4) = *v4;
  sub_1BC95DCE8();
  *v8 = v6;
  *(v8 + 8) = v4;
  sub_1BC95DCE8();
  v18 = OUTLINED_FUNCTION_61();
  OUTLINED_FUNCTION_29_0(v18, v19, v9);
  if (v20)
  {
    v21 = v1;
    v22 = qword_1EDA1F658;

    if (v22 != -1)
    {
      OUTLINED_FUNCTION_1_0();
    }

    v1 = v21;
    sub_1BCE1A9F0();

    sub_1BC94C05C(v17, &qword_1EBD07890);
    v23 = OUTLINED_FUNCTION_61();
    OUTLINED_FUNCTION_29_0(v23, v24, v9);
    if (!v20)
    {
      sub_1BC94C05C(v0, &qword_1EBD07890);
    }
  }

  else
  {

    sub_1BC94C05C(v17, &qword_1EBD07890);
    v25 = OUTLINED_FUNCTION_11_15();
    v26(v25);
  }

  v27 = type metadata accessor for NSUnitSpeed.BaseWeatherFormatStyle(0);
  (*(v11 + 32))(v8 + v27[6], v1, v9);
  *(v8 + v27[7]) = 0;
  *(v8 + v27[8]) = 1;
  OUTLINED_FUNCTION_21();
}

uint64_t sub_1BC98D220()
{
  OUTLINED_FUNCTION_101_0();
  v4 = v3;
  swift_getObjectType();
  v5 = OUTLINED_FUNCTION_16_2();
  result = sub_1BC98D278(v5, v6, v2, v1, v7, v0);
  *v4 = result;
  v4[1] = v9;
  return result;
}

uint64_t sub_1BC98D278(uint64_t a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6)
{
  v156 = a6;
  v154 = a3;
  *&v155 = a1;
  v143 = sub_1BCE18710();
  v142 = *(v143 - 8);
  MEMORY[0x1EEE9AC00](v143);
  v141 = &v123 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v146 = sub_1BCE1DAF0();
  v145 = *(v146 - 8);
  MEMORY[0x1EEE9AC00](v146);
  v144 = &v123 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v148 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08268);
  v147 = *(v148 - 8);
  MEMORY[0x1EEE9AC00](v148);
  v152 = &v123 - v10;
  v134 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08270);
  v125 = *(v134 - 8);
  MEMORY[0x1EEE9AC00](v134);
  v123 = &v123 - v11;
  v131 = type metadata accessor for Beaufort.FormatStyle(0);
  MEMORY[0x1EEE9AC00](v131);
  v129 = &v123 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v130 = &v123 - v14;
  v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08278);
  MEMORY[0x1EEE9AC00](v132);
  v133 = &v123 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08280);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v124 = &v123 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v135 = &v123 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v136 = &v123 - v21;
  v22 = type metadata accessor for NSUnitSpeed.WeatherFormatComponent(0);
  v23 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v149 = &v123 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v140 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08288);
  v139 = *(v140 - 8);
  MEMORY[0x1EEE9AC00](v140);
  v137 = &v123 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v138 = &v123 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07890);
  MEMORY[0x1EEE9AC00](v28 - 8);
  v30 = &v123 - v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07860);
  v153 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v123 - v32;
  v150 = *a2;
  LOBYTE(v157) = *(a4 + 8);
  v34 = type metadata accessor for NSUnitSpeed.BaseWeatherFormatStyle(0);
  v35 = *(v34 + 24);
  v36 = sub_1BCE19280();
  v37 = *(v36 - 8);
  v38 = *(v37 + 16);
  v151 = v35;
  v127 = v38;
  v126 = v37 + 16;
  v38(v30, (a4 + v35), v36);
  v128 = v36;
  __swift_storeEnumTagSinglePayload(v30, 0, 1, v36);
  sub_1BC97CB2C();
  sub_1BC94C05C(v30, &qword_1EBD07890);
  v39 = *(v34 + 32);
  v156 = a4;
  v40 = *(a4 + v39);
  v41 = v31;
  v42 = v33;
  v43 = sub_1BCE185C0();
  v44 = v43;
  if (v40)
  {
  }

  else
  {
    sub_1BC947608(0, &qword_1EDA1C0B8);
    v45 = [objc_opt_self() metersPerSecond];
    sub_1BCE1DAC0();
  }

  v46 = v156;
  v47 = *v156;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD078A8);
  v48 = (*(v23 + 80) + 32) & ~*(v23 + 80);
  v49 = swift_allocObject();
  v155 = xmmword_1BCE3E050;
  *(v49 + 16) = xmmword_1BCE3E050;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD078B0);
  __swift_storeEnumTagSinglePayload(v49 + v48, 1, 1, v50);
  sub_1BC9795A8();
  sub_1BC97D104();
  LOBYTE(v48) = v51;

  if ((v48 & 1) == 0)
  {
    if (*(v46 + 8) || (v58 = sub_1BCE185C0(), v59 = sub_1BCE1D830(), v58, (v59 & 1) == 0) || (Set<>.beaufortIncludes.getter(v47, v60, v61, v62, v63, v64, v65, v66, v123, v124, v125, v126, v127, v128, v129, v130, v131, v132, v133, v134), v67 = v157, v157 > 0xFBu))
    {
      sub_1BC97D624();
      sub_1BC957184(&qword_1EDA1EF90, &qword_1EBD08268);
      v68 = v42;
      v69 = v148;
      *&v155 = v68;
      sub_1BCE186A0();
      v70 = v149;
      __swift_storeEnumTagSinglePayload(v149, 1, 1, v50);
      sub_1BC97E47C();
      LOBYTE(v68) = v71;
      sub_1BC979DA0(v70, type metadata accessor for NSUnitSpeed.WeatherFormatComponent);
      if (v68)
      {
        v72 = 0xE200000000000000;
        v73 = 11565;
        v74 = v41;
        switch(v150)
        {
          case 1:
            goto LABEL_18;
          case 2:
            v72 = 0xA600000000000000;
            v73 = 0x9380E29380E2;
            goto LABEL_18;
          case 3:
            v73 = 0;
            v72 = 0xE000000000000000;
LABEL_18:
            v81 = v144;
            sub_1BCE1ABF0();
            v163 = v73;
            v164 = v72;
            sub_1BC98C934();
            sub_1BC98CAB4();
            sub_1BC9500CC(&qword_1EDA1C0A8, MEMORY[0x1E6969FD0]);
            v82 = v146;
            sub_1BCE1D790();
            (*(v145 + 8))(v81, v82);

            break;
          default:
            break;
        }
      }

      else
      {
        v74 = v41;
        v75 = v144;
        sub_1BCE1ABF0();
        v163 = 0;
        v164 = 0xE000000000000000;
        sub_1BC98C934();
        sub_1BC98CAB4();
        sub_1BC9500CC(&qword_1EDA1C0A8, MEMORY[0x1E6969FD0]);
        v76 = v146;
        sub_1BCE1D790();
        (*(v145 + 8))(v75, v76);
        v163 = v157;
        v164 = v158;
        v77 = v141;
        sub_1BCE186C0();
        sub_1BC970820();
        v78 = sub_1BCE1DB70();
        v80 = v79;
        (*(v142 + 8))(v77, v143);

        v157 = v78;
        v158 = v80;
      }

      v163 = v157;
      v164 = v158;
      v161 = 32;
      v162 = 0xE100000000000000;
      v159 = 41154;
      v160 = 0xA200000000000000;
      sub_1BC970820();
      v83 = sub_1BCE1DB90();
      v85 = v84;

      v163 = v83;
      v164 = v85;
      v161 = 47;
      v162 = 0xE100000000000000;
      v159 = 0xA081E22FA081E2;
      v160 = 0xA700000000000000;
      v52 = sub_1BCE1DB90();
      (*(v147 + 8))(v152, v69);
      (*(v153 + 8))(v155, v74);
      goto LABEL_20;
    }

    v87 = v149;
    __swift_storeEnumTagSinglePayload(v149, 1, 1, v50);
    sub_1BC97E47C();
    v89 = v88;
    sub_1BC979DA0(v87, type metadata accessor for NSUnitSpeed.WeatherFormatComponent);
    v90 = v151;
    if (v89)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08298);
      inited = swift_initStackObject();
      *(inited + 16) = v155;
      *(inited + 32) = v67;
      sub_1BCDF8F74();
      v93 = v92;
      v94 = v150;
      if ((v150 - 1) >= 3)
      {
LABEL_58:
        v120 = v129;
        sub_1BCE191B0();
        v121 = v131;
        *(v120 + *(v131 + 20)) = v93;

        sub_1BC979DA0(v120, type metadata accessor for Beaufort.FormatStyle);
        v122 = v130;
        v127(v130, v156 + v90, v128);
        *(v122 + *(v121 + 20)) = v93;
        sub_1BC9500CC(qword_1EBD082A0, type metadata accessor for Beaufort.FormatStyle);
        sub_1BCE186A0();
        sub_1BC979DA0(v122, type metadata accessor for Beaufort.FormatStyle);
        (*(v153 + 8))(v42, v41);
        v52 = v157;
LABEL_20:

        return v52;
      }

      sub_1BCE1E100();
      MEMORY[0x1BFB30850](1);
      MEMORY[0x1BFB30850](v94);
      v95 = sub_1BCE1E150();
      v96 = -1 << *(v93 + 32);
      v97 = v95 & ~v96;
      if ((*(v93 + 56 + ((v97 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v97))
      {
        v98 = ~v96;
        while ((*(*(v93 + 48) + v97) & 0x80) == 0 || (*(*(v93 + 48) + v97) & 0x7F) != v94)
        {
          v97 = (v97 + 1) & v98;
          if (((*(v93 + 56 + ((v97 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v97) & 1) == 0)
          {
            goto LABEL_29;
          }
        }

        goto LABEL_58;
      }

LABEL_29:
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v163 = v93;
      if (*(v93 + 24) <= *(v93 + 16))
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          sub_1BCBE9A94();
        }

        else
        {
          sub_1BCBEB03C();
        }

        v93 = v163;
        sub_1BCE1E100();
        MEMORY[0x1BFB30850](1);
        MEMORY[0x1BFB30850](v94);
        v114 = sub_1BCE1E150();
        v115 = -1 << *(v93 + 32);
        v97 = v114 & ~v115;
        if ((*(v93 + 56 + ((v97 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v97))
        {
          v116 = ~v115;
          while ((*(*(v93 + 48) + v97) & 0x80) == 0 || (*(*(v93 + 48) + v97) & 0x7F) != v94)
          {
            v97 = (v97 + 1) & v116;
            if (((*(v93 + 56 + ((v97 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v97) & 1) == 0)
            {
              goto LABEL_56;
            }
          }

LABEL_66:
          sub_1BCE1E0E0();
          __break(1u);
          JUMPOUT(0x1BC98E758);
        }
      }

      else if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1BCBEAAA4();
        v93 = v163;
      }

LABEL_56:
      *(v93 + ((v97 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) |= 1 << v97;
      *(*(v93 + 48) + v97) = v94 | 0x80;
      v117 = *(v93 + 16);
      v118 = __OFADD__(v117, 1);
      v119 = v117 + 1;
      if (!v118)
      {
        *(v93 + 16) = v119;
        goto LABEL_58;
      }

LABEL_65:
      __break(1u);
      goto LABEL_66;
    }

    v100 = v136;
    Set<>.unitWidth.getter();
    sub_1BC947608(0, &qword_1EDA1F1C8);
    v101 = v135;
    sub_1BCE18650();
    v102 = v134;
    __swift_storeEnumTagSinglePayload(v101, 0, 1, v134);
    v103 = *(v132 + 48);
    v104 = v133;
    sub_1BC95DCE8();
    sub_1BC95DCE8();
    if (__swift_getEnumTagSinglePayload(v104, 1, v102) == 1)
    {
      sub_1BC94C05C(v101, &qword_1EBD08280);
      sub_1BC94C05C(v100, &qword_1EBD08280);
      if (__swift_getEnumTagSinglePayload(v104 + v103, 1, v102) == 1)
      {
        sub_1BC94C05C(v104, &qword_1EBD08280);
        goto LABEL_43;
      }
    }

    else
    {
      v105 = v124;
      sub_1BC95DCE8();
      if (__swift_getEnumTagSinglePayload(v104 + v103, 1, v102) != 1)
      {
        v108 = v125;
        v109 = v104 + v103;
        v110 = v123;
        (*(v125 + 32))(v123, v109, v102);
        sub_1BC957184(&qword_1EBD08290, &qword_1EBD08270);
        v111 = sub_1BCE1D210();
        v112 = *(v108 + 8);
        v112(v110, v102);
        sub_1BC94C05C(v135, &qword_1EBD08280);
        sub_1BC94C05C(v136, &qword_1EBD08280);
        v112(v105, v102);
        sub_1BC94C05C(v104, &qword_1EBD08280);
        if (v111)
        {
LABEL_43:
          sub_1BCE185E0();
          if ((*&v113 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
          {
            if (v113 > -9.22337204e18)
            {
              if (v113 < 9.22337204e18)
              {
                v107 = sub_1BCE1A630();
LABEL_47:
                v52 = v107;
LABEL_16:
                (*(v153 + 8))(v42, v41);
                return v52;
              }

LABEL_64:
              __break(1u);
              goto LABEL_65;
            }

LABEL_63:
            __break(1u);
            goto LABEL_64;
          }

LABEL_62:
          __break(1u);
          goto LABEL_63;
        }

LABEL_38:
        sub_1BCE185E0();
        if ((*&v106 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
        {
          __break(1u);
        }

        else if (v106 > -9.22337204e18)
        {
          if (v106 < 9.22337204e18)
          {
            v107 = sub_1BCE1A640();
            goto LABEL_47;
          }

          goto LABEL_61;
        }

        __break(1u);
LABEL_61:
        __break(1u);
        goto LABEL_62;
      }

      sub_1BC94C05C(v101, &qword_1EBD08280);
      sub_1BC94C05C(v100, &qword_1EBD08280);
      (*(v125 + 8))(v105, v102);
    }

    sub_1BC94C05C(v104, &qword_1EBD08278);
    goto LABEL_38;
  }

  v52 = 11565;
  switch(v150)
  {
    case 1:
      goto LABEL_16;
    case 2:
      v52 = 0x9380E29380E2;
      goto LABEL_16;
    case 3:
      v52 = 0;
      goto LABEL_16;
    default:
      sub_1BCE185E0();
      v163 = v53;
      v54 = v137;
      sub_1BC97E250();
      v55 = v138;
      v56 = v140;
      MEMORY[0x1BFB2B3D0](v46 + v151, v140);
      v57 = *(v139 + 8);
      v57(v54, v56);
      sub_1BC96ABEC();
      sub_1BC957184(&qword_1EDA1EF58, &qword_1EBD08288);
      sub_1BCE1D0F0();
      v57(v55, v56);
      (*(v153 + 8))(v42, v41);
      v52 = v157;
      break;
  }

  return v52;
}

uint64_t static NSUnitSpeed.BaseWeatherFormatStyle.== infix(_:_:)()
{
  OUTLINED_FUNCTION_9();
  sub_1BC97D104();
  if (v3 & 1) != 0 && *(v1 + 8) == *(v0 + 8) && (type metadata accessor for NSUnitSpeed.BaseWeatherFormatStyle(0), OUTLINED_FUNCTION_101_3(), (v4) && *(v1 + *(v2 + 28)) == *(v0 + *(v2 + 28)))
  {
    OUTLINED_FUNCTION_92_4();
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

uint64_t OUTLINED_FUNCTION_99_2()
{

  return sub_1BC970B70();
}

uint64_t OUTLINED_FUNCTION_114_1@<X0>(uint64_t a1@<X8>)
{
  v4 = (v2 + a1);
  v5 = v4[1];
  v6 = v4[2];
  v7 = v4[3];
  *v1 = *v4;
  v1[1] = v5;
  v1[2] = v6;
  v1[3] = v7;
}

void OUTLINED_FUNCTION_106_3()
{

  JUMPOUT(0x1BFB30850);
}

void NSUnitSpeed.BaseWeatherFormatStyle.accessible.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_20_0();
  a19 = v23;
  a20 = v24;
  v26 = v25;
  v27 = sub_1BCE19280();
  OUTLINED_FUNCTION_2();
  v29 = v28;
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_52();
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07890);
  v32 = OUTLINED_FUNCTION_14(v31);
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_20_10();
  MEMORY[0x1EEE9AC00](v33);
  v35 = &a9 - v34;
  v36 = *v20;
  v37 = *(v20 + 8);
  v38 = type metadata accessor for NSUnitSpeed.BaseWeatherFormatStyle(0);
  (*(v29 + 16))(v35, v20 + v38[6], v27);
  OUTLINED_FUNCTION_60();
  __swift_storeEnumTagSinglePayload(v39, v40, v41, v27);
  v42 = *(v20 + v38[8]);
  *v26 = v36;
  *(v26 + 8) = v37;
  sub_1BC95DCE8();
  v43 = OUTLINED_FUNCTION_15_35();
  OUTLINED_FUNCTION_29_0(v43, v44, v27);
  if (v45)
  {
    v46 = v42;
    v47 = qword_1EDA1F658;

    if (v47 != -1)
    {
      OUTLINED_FUNCTION_1_0();
    }

    sub_1BCE1A9F0();

    sub_1BC94C05C(v35, &qword_1EBD07890);
    v48 = OUTLINED_FUNCTION_15_35();
    OUTLINED_FUNCTION_29_0(v48, v49, v27);
    v42 = v46;
    if (!v45)
    {
      sub_1BC94C05C(v22, &qword_1EBD07890);
    }
  }

  else
  {

    sub_1BC94C05C(v35, &qword_1EBD07890);
    (*(v29 + 32))(v21, v22, v27);
  }

  (*(v29 + 32))(v26 + v38[6], v21, v27);
  *(v26 + v38[7]) = 1;
  *(v26 + v38[8]) = v42;
  OUTLINED_FUNCTION_21();
}

uint64_t getEnumTagSinglePayload for Elevation(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 9))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 8);
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

uint64_t Elevation.description.getter()
{
  v1 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07880);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1BCE3E050;
  *(v2 + 56) = MEMORY[0x1E69E7DE0];
  *(v2 + 64) = sub_1BC98EDE8();
  *(v2 + 32) = v1;

  return sub_1BCE1D2B0();
}

unint64_t sub_1BC98EDE8()
{
  result = qword_1EDA1BD28;
  if (!qword_1EDA1BD28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA1BD28);
  }

  return result;
}

uint64_t BackgroundMoonData.moonImageName.getter()
{
  v1 = *(v0 + *(type metadata accessor for BackgroundMoonData() + 40));

  return v1;
}

uint64_t sub_1BC98EE7C(uint64_t a1, uint64_t a2)
{
  if (sub_1BCE185B0())
  {
    v4 = type metadata accessor for WeatherFormatCacheKey();
    if ((sub_1BCE1D210() & 1) != 0 && *(a1 + *(v4 + 48)) == *(a2 + *(v4 + 48)))
    {
      v5 = *(v4 + 52);
      v6 = (a1 + v5);
      v7 = *(a1 + v5 + 8);
      v8 = (a2 + v5);
      v9 = v8[1];
      if (v7)
      {
        if (v9)
        {
          v10 = *v6 == *v8 && v7 == v9;
          if (v10 || (sub_1BCE1E090() & 1) != 0)
          {
            return 1;
          }
        }
      }

      else if (!v9)
      {
        return 1;
      }
    }
  }

  return 0;
}