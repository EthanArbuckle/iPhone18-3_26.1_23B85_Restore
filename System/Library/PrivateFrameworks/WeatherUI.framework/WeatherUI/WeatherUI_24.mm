BOOL static DailyForecastViewModel.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BCE19AD0();
  OUTLINED_FUNCTION_2();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5_1();
  v77 = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD09858);
  OUTLINED_FUNCTION_14(v9);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_10_16();
  v78 = v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD09860);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_10_16();
  v79 = v14;
  OUTLINED_FUNCTION_13();
  v15 = sub_1BCE1A170();
  OUTLINED_FUNCTION_2();
  v80 = v16;
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_2_0();
  v20 = v19 - v18;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD09868);
  OUTLINED_FUNCTION_14(v21);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v73 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD09870);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v73 - v27;
  if ((sub_1BCE19070() & 1) == 0)
  {
    return 0;
  }

  v76 = v12;
  v29 = type metadata accessor for DailyForecastViewModel();
  OUTLINED_FUNCTION_33_4(v29[5]);
  if ((sub_1BCE19010() & 1) == 0)
  {
    return 0;
  }

  v74 = v4;
  v75 = v6;
  sub_1BC947608(0, qword_1EDA1EFC0);
  if ((sub_1BCE185B0() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_33_4(v29[7]);
  if ((sub_1BCE185B0() & 1) == 0)
  {
    return 0;
  }

  v30 = OUTLINED_FUNCTION_33_4(v29[8]);
  if ((static ConditionViewModel.== infix(_:_:)(v30, v31) & 1) == 0)
  {
    return 0;
  }

  v32 = OUTLINED_FUNCTION_33_4(v29[9]);
  if ((sub_1BCA68720(v32, v33) & 1) == 0 || *(a1 + v29[10]) != *(a2 + v29[10]))
  {
    return 0;
  }

  v34 = v29[11];
  v35 = (a1 + v34);
  v36 = *(a1 + v34 + 8);
  v37 = (a2 + v34);
  v38 = v37[1];
  if (v36)
  {
    if (!v38)
    {
      return 0;
    }

    v39 = *v35 == *v37 && v36 == v38;
    if (!v39 && (sub_1BCE1E090() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v38)
  {
    return 0;
  }

  OUTLINED_FUNCTION_19_13(v29[12]);
  v42 = v39 && v40 == v41;
  if (!v42 && (sub_1BCE1E090() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_19_13(v29[13]);
  v45 = v39 && v43 == v44;
  if (!v45 && (sub_1BCE1E090() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_19_13(v29[14]);
  v48 = v39 && v46 == v47;
  if (!v48 && (sub_1BCE1E090() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_33_4(v29[15]);
  if ((sub_1BCE1A5A0() & 1) == 0)
  {
    return 0;
  }

  v73 = v29;
  v49 = v29[16];
  v50 = *(v25 + 48);
  sub_1BCB34A00(a1 + v49, v28, &qword_1EBD09868);
  sub_1BCB34A00(a2 + v49, &v28[v50], &qword_1EBD09868);
  OUTLINED_FUNCTION_8_0(v28);
  if (v39)
  {
    OUTLINED_FUNCTION_8_0(&v28[v50]);
    v51 = v75;
    v52 = v76;
    if (v39)
    {
      sub_1BC94C05C(v28, &qword_1EBD09868);
      goto LABEL_43;
    }

LABEL_41:
    v55 = &qword_1EBD09870;
LABEL_49:
    sub_1BC94C05C(v28, v55);
    return 0;
  }

  sub_1BCB34A00(v28, v24, &qword_1EBD09868);
  v53 = v50;
  OUTLINED_FUNCTION_8_0(&v28[v50]);
  v52 = v76;
  if (v54)
  {
    (*(v80 + 8))(v24, v15);
    goto LABEL_41;
  }

  v56 = v80;
  (*(v80 + 32))(v20, &v28[v53], v15);
  OUTLINED_FUNCTION_14_16();
  sub_1BCB3898C(v57, v58);
  v59 = sub_1BCE1D210();
  v60 = *(v56 + 8);
  v60(v20, v15);
  v60(v24, v15);
  v51 = v75;
  sub_1BC94C05C(v28, &qword_1EBD09868);
  if ((v59 & 1) == 0)
  {
    return 0;
  }

LABEL_43:
  v61 = v73[17];
  v62 = *(v52 + 48);
  v28 = v79;
  sub_1BCB34A00(a1 + v61, v79, &qword_1EBD09858);
  sub_1BCB34A00(a2 + v61, &v28[v62], &qword_1EBD09858);
  v63 = v74;
  if (__swift_getEnumTagSinglePayload(v28, 1, v74) != 1)
  {
    v64 = v78;
    sub_1BCB34A00(v28, v78, &qword_1EBD09858);
    if (__swift_getEnumTagSinglePayload(&v28[v62], 1, v63) != 1)
    {
      v66 = &v28[v62];
      v67 = v77;
      (*(v51 + 32))(v77, v66, v63);
      OUTLINED_FUNCTION_12_22();
      sub_1BCB3898C(v68, v69);
      v70 = sub_1BCE1D210();
      v71 = *(v51 + 8);
      v71(v67, v63);
      v71(v64, v63);
      sub_1BC94C05C(v28, &qword_1EBD09858);
      if ((v70 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_53;
    }

    (*(v51 + 8))(v64, v63);
    goto LABEL_48;
  }

  if (__swift_getEnumTagSinglePayload(&v28[v62], 1, v63) != 1)
  {
LABEL_48:
    v55 = &qword_1EBD09860;
    goto LABEL_49;
  }

  sub_1BC94C05C(v28, &qword_1EBD09858);
LABEL_53:
  v72 = v73;
  OUTLINED_FUNCTION_33_4(v73[18]);
  if (sub_1BCE1A050())
  {
    return *(a1 + v72[19]) == *(a2 + v72[19]);
  }

  return 0;
}

uint64_t type metadata accessor for DailyForecastViewModel()
{
  result = qword_1EDA19B80;
  if (!qword_1EDA19B80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1BCB34A00(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  OUTLINED_FUNCTION_9_0(a1, a2, a3);
  OUTLINED_FUNCTION_0_3();
  v4 = OUTLINED_FUNCTION_10_1();
  v5(v4);
  return v3;
}

uint64_t DailyForecastViewModel.id.getter()
{
  OUTLINED_FUNCTION_19_1();
  sub_1BCE19090();
  OUTLINED_FUNCTION_4();
  v0 = OUTLINED_FUNCTION_10_1();

  return v1(v0);
}

uint64_t DailyForecastViewModel.date.getter()
{
  OUTLINED_FUNCTION_19_1();
  type metadata accessor for DailyForecastViewModel();
  sub_1BCE19060();
  OUTLINED_FUNCTION_4();
  v0 = OUTLINED_FUNCTION_8();

  return v1(v0);
}

uint64_t DailyForecastViewModel.high.getter()
{
  OUTLINED_FUNCTION_19_1();
  type metadata accessor for DailyForecastViewModel();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07CA8);
  OUTLINED_FUNCTION_4();
  v0 = OUTLINED_FUNCTION_8();

  return v1(v0);
}

uint64_t DailyForecastViewModel.low.getter()
{
  OUTLINED_FUNCTION_19_1();
  type metadata accessor for DailyForecastViewModel();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07CA8);
  OUTLINED_FUNCTION_4();
  v0 = OUTLINED_FUNCTION_8();

  return v1(v0);
}

uint64_t DailyForecastViewModel.condition.getter()
{
  OUTLINED_FUNCTION_19_1();
  v2 = type metadata accessor for DailyForecastViewModel();
  return sub_1BCB388E0(v1 + *(v2 + 32), v0);
}

uint64_t DailyForecastViewModel.precipitation.getter()
{
  OUTLINED_FUNCTION_19_1();
  type metadata accessor for DailyForecastViewModel();
  sub_1BCE19BA0();
  OUTLINED_FUNCTION_4();
  v0 = OUTLINED_FUNCTION_8();

  return v1(v0);
}

uint64_t DailyForecastViewModel.precipitationDescription.getter()
{
  type metadata accessor for DailyForecastViewModel();
  OUTLINED_FUNCTION_32();
  return OUTLINED_FUNCTION_10_1();
}

uint64_t DailyForecastViewModel.temperatureUnitString.getter()
{
  type metadata accessor for DailyForecastViewModel();
  OUTLINED_FUNCTION_32();
  return OUTLINED_FUNCTION_10_1();
}

uint64_t DailyForecastViewModel.dayString.getter()
{
  type metadata accessor for DailyForecastViewModel();
  OUTLINED_FUNCTION_32();
  return OUTLINED_FUNCTION_10_1();
}

uint64_t DailyForecastViewModel.shortDayString.getter()
{
  type metadata accessor for DailyForecastViewModel();
  OUTLINED_FUNCTION_32();
  return OUTLINED_FUNCTION_10_1();
}

uint64_t DailyForecastViewModel.temperatureScaleConfig.getter()
{
  OUTLINED_FUNCTION_19_1();
  type metadata accessor for DailyForecastViewModel();
  sub_1BCE1A610();
  OUTLINED_FUNCTION_4();
  v0 = OUTLINED_FUNCTION_8();

  return v1(v0);
}

uint64_t DailyForecastViewModel.sunEvents.getter()
{
  OUTLINED_FUNCTION_19_1();
  v2 = type metadata accessor for DailyForecastViewModel();
  return sub_1BCB34A00(v1 + *(v2 + 64), v0, &qword_1EBD09868);
}

uint64_t DailyForecastViewModel.moonEvents.getter()
{
  OUTLINED_FUNCTION_19_1();
  v2 = type metadata accessor for DailyForecastViewModel();
  return sub_1BCB34A00(v1 + *(v2 + 68), v0, &qword_1EBD09858);
}

uint64_t DailyForecastViewModel.uvIndex.getter()
{
  OUTLINED_FUNCTION_19_1();
  type metadata accessor for DailyForecastViewModel();
  sub_1BCE1A080();
  OUTLINED_FUNCTION_4();
  v0 = OUTLINED_FUNCTION_8();

  return v1(v0);
}

uint64_t DailyForecastViewModel.accessibilityDescription.getter()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07890);
  OUTLINED_FUNCTION_14(v2);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_10_16();
  v75 = v4;
  v5 = OUTLINED_FUNCTION_13();
  v6 = type metadata accessor for NSUnitTemperature.BaseWeatherFormatStyle(v5);
  v7 = OUTLINED_FUNCTION_14(v6);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5_1();
  v76 = v8;
  OUTLINED_FUNCTION_13();
  v9 = type metadata accessor for DailyForecastViewModel();
  v10 = (v0 + v9[13]);
  v12 = *v10;
  v11 = v10[1];

  sub_1BCB653B4(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v14 = v13;
  v16 = *(v13 + 16);
  v15 = *(v13 + 24);
  v17 = v16 + 1;
  if (v16 >= v15 >> 1)
  {
    OUTLINED_FUNCTION_38_7(v15);
    v14 = v68;
  }

  *(v14 + 16) = v17;
  v18 = v14 + 16 * v16;
  *(v18 + 32) = v12;
  *(v18 + 40) = v11;
  v19 = v1 + v9[8];
  v20 = type metadata accessor for ConditionViewModel();
  v21 = (v19 + *(v20 + 28));
  v22 = *v21;
  v23 = v21[1];
  v24 = (v1 + v9[11]);
  v25 = v24[1];
  v77 = v1;
  if (v25 && *(v19 + *(v20 + 36)) == 1)
  {
    v26 = *v24;
    sub_1BC970820();

    if (sub_1BCE1DBB0())
    {
      v28 = *(v14 + 16);
      v27 = *(v14 + 24);
      v17 = v28 + 1;
      if (v28 >= v27 >> 1)
      {
        OUTLINED_FUNCTION_38_7(v27);
        v14 = v72;
      }

      *(v14 + 16) = v17;
      v29 = v14 + 16 * v28;
      *(v29 + 32) = v22;
      *(v29 + 40) = v23;
    }

    else
    {

      v17 = *(v14 + 16);
    }

    v31 = v17 + 1;
    if (v17 >= *(v14 + 24) >> 1)
    {
      OUTLINED_FUNCTION_45_1();
      v14 = v71;
    }

    v23 = v25;
  }

  else
  {
    v30 = *(v14 + 24);
    v31 = v16 + 2;

    if ((v16 + 2) > (v30 >> 1))
    {
      OUTLINED_FUNCTION_45_1();
      v14 = v70;
    }

    v26 = v22;
  }

  *(v14 + 16) = v31;
  v32 = v14 + 16 * v17;
  *(v32 + 32) = v26;
  *(v32 + 40) = v23;
  if (qword_1EDA1EFB0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v33 = qword_1EDA1EFB8;
  sub_1BCE18B60();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07880);
  v34 = swift_allocObject();
  *(v34 + 16) = xmmword_1BCE3E030;
  v35 = v9[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07CD8);
  type metadata accessor for NSUnitTemperature.WeatherFormatComponent(0);
  *(swift_allocObject() + 16) = xmmword_1BCE3E050;
  v74 = type metadata accessor for NSUnitTemperature.WeatherFormatUnitConfiguration(0);
  OUTLINED_FUNCTION_19_0();
  __swift_storeEnumTagSinglePayload(v36, v37, v38, v39);
  sub_1BC9639B4();
  OUTLINED_FUNCTION_11();
  v73 = sub_1BCE19280();
  OUTLINED_FUNCTION_19_0();
  __swift_storeEnumTagSinglePayload(v40, v41, v42, v43);
  static WeatherFormatStyle<>.weather(_:locale:)();

  sub_1BC94C05C(v75, &qword_1EBD07890);
  sub_1BCE1A3E0();
  v44 = sub_1BCE1A3A0();
  v45 = sub_1BCB37580(v76, 0, v44, v77 + v35);
  v47 = v46;

  sub_1BCB38934(v76, type metadata accessor for NSUnitTemperature.BaseWeatherFormatStyle);
  *(v34 + 56) = MEMORY[0x1E69E6158];
  v48 = sub_1BC9804E0();
  *(v34 + 64) = v48;
  *(v34 + 32) = v45;
  *(v34 + 40) = v47;
  v49 = v9[7];
  *(swift_allocObject() + 16) = xmmword_1BCE3E050;
  OUTLINED_FUNCTION_19_0();
  __swift_storeEnumTagSinglePayload(v50, v51, v52, v74);
  sub_1BC9639B4();
  OUTLINED_FUNCTION_19_0();
  __swift_storeEnumTagSinglePayload(v53, v54, v55, v73);
  static WeatherFormatStyle<>.weather(_:locale:)();

  sub_1BC94C05C(v75, &qword_1EBD07890);
  v56 = sub_1BCE1A3A0();
  v57 = sub_1BCB37580(v76, 0, v56, v77 + v49);
  v59 = v58;

  sub_1BCB38934(v76, type metadata accessor for NSUnitTemperature.BaseWeatherFormatStyle);
  *(v34 + 96) = MEMORY[0x1E69E6158];
  *(v34 + 104) = v48;
  *(v34 + 72) = v57;
  *(v34 + 80) = v59;
  v60 = sub_1BCE1D2B0();
  v62 = v61;

  v64 = *(v14 + 16);
  v63 = *(v14 + 24);
  if (v64 >= v63 >> 1)
  {
    sub_1BCB653B4(v63 > 1, v64 + 1, 1, v14);
    v14 = v69;
  }

  *(v14 + 16) = v64 + 1;
  v65 = v14 + 16 * v64;
  *(v65 + 32) = v60;
  *(v65 + 40) = v62;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07878);
  sub_1BC957184(&qword_1EDA1C220, &qword_1EBD07878);
  v66 = sub_1BCE1D1D0();

  return v66;
}

double DailyForecastViewModel.relevantPrecipitationChance.getter()
{
  v1 = sub_1BCE1E060();
  OUTLINED_FUNCTION_2();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_2_0();
  v7 = v6 - v5;
  v8 = type metadata accessor for DailyForecastViewModel();
  v9 = v0 + *(v8 + 32);
  v10 = 0.0;
  if (*(v9 + *(type metadata accessor for ConditionViewModel() + 36)) == 1)
  {
    v11 = *(v0 + *(v8 + 40));
    (*(v3 + 104))(v7, *MEMORY[0x1E69E7038], v1);
    v10 = Double.nearestMultiple(of:roundingRule:)(v7, 0.05, v11);
    (*(v3 + 8))(v7, v1);
  }

  return v10;
}

uint64_t DailyForecastViewModel.init(id:date:high:low:condition:precipitation:precipitationChance:precipitationDescription:temperatureUnitString:dayString:shortDayString:temperatureScaleConfig:sunEvents:moonEvents:uvIndex:humidity:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, double a10@<D0>, double a11@<D1>, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  sub_1BCE19090();
  OUTLINED_FUNCTION_0_3();
  (*(v29 + 32))(a9, a1);
  v30 = type metadata accessor for DailyForecastViewModel();
  v31 = v30[5];
  sub_1BCE19060();
  OUTLINED_FUNCTION_0_3();
  (*(v32 + 32))(a9 + v31, a2);
  v33 = v30[6];
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07CA8);
  OUTLINED_FUNCTION_4();
  v36 = *(v35 + 32);
  v36(a9 + v33, a3, v34);
  v36(a9 + v30[7], a4, v34);
  sub_1BCAFEA84(a5, a9 + v30[8]);
  v37 = v30[9];
  sub_1BCE19BA0();
  OUTLINED_FUNCTION_0_3();
  (*(v38 + 32))(a9 + v37, a6);
  *(a9 + v30[10]) = a10;
  v39 = (a9 + v30[11]);
  *v39 = a7;
  v39[1] = a8;
  v40 = (a9 + v30[12]);
  *v40 = a12;
  v40[1] = a13;
  v41 = (a9 + v30[13]);
  *v41 = a14;
  v41[1] = a15;
  v42 = (a9 + v30[14]);
  *v42 = a16;
  v42[1] = a17;
  v43 = v30[15];
  sub_1BCE1A610();
  OUTLINED_FUNCTION_0_3();
  (*(v44 + 32))(a9 + v43, a18);
  sub_1BCB37738(a19, a9 + v30[16], &qword_1EBD09868);
  sub_1BCB37738(a20, a9 + v30[17], &qword_1EBD09858);
  v45 = v30[18];
  sub_1BCE1A080();
  OUTLINED_FUNCTION_0_3();
  result = (*(v46 + 32))(a9 + v45, a21);
  *(a9 + v30[19]) = a11;
  return result;
}

uint64_t sub_1BCB35964(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_1BCE1E090() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 1702125924 && a2 == 0xE400000000000000;
    if (v6 || (sub_1BCE1E090() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 1751607656 && a2 == 0xE400000000000000;
      if (v7 || (sub_1BCE1E090() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 7827308 && a2 == 0xE300000000000000;
        if (v8 || (sub_1BCE1E090() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x6F697469646E6F63 && a2 == 0xE90000000000006ELL;
          if (v9 || (sub_1BCE1E090() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x7469706963657270 && a2 == 0xED00006E6F697461;
            if (v10 || (sub_1BCE1E090() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0xD000000000000013 && 0x80000001BCE7D9B0 == a2;
              if (v11 || (sub_1BCE1E090() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0xD000000000000018 && 0x80000001BCE7D9D0 == a2;
                if (v12 || (sub_1BCE1E090() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0xD000000000000015 && 0x80000001BCE7CFC0 == a2;
                  if (v13 || (sub_1BCE1E090() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0x6E69727453796164 && a2 == 0xE900000000000067;
                    if (v14 || (sub_1BCE1E090() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v15 = a1 == 0x79614474726F6873 && a2 == 0xEE00676E69727453;
                      if (v15 || (sub_1BCE1E090() & 1) != 0)
                      {

                        return 10;
                      }

                      else
                      {
                        v16 = a1 == 0xD000000000000016 && 0x80000001BCE7D9F0 == a2;
                        if (v16 || (sub_1BCE1E090() & 1) != 0)
                        {

                          return 11;
                        }

                        else
                        {
                          v17 = a1 == 0x746E6576456E7573 && a2 == 0xE900000000000073;
                          if (v17 || (sub_1BCE1E090() & 1) != 0)
                          {

                            return 12;
                          }

                          else
                          {
                            v18 = a1 == 0x6E6576456E6F6F6DLL && a2 == 0xEA00000000007374;
                            if (v18 || (sub_1BCE1E090() & 1) != 0)
                            {

                              return 13;
                            }

                            else
                            {
                              v19 = a1 == 0x7865646E497675 && a2 == 0xE700000000000000;
                              if (v19 || (sub_1BCE1E090() & 1) != 0)
                              {

                                return 14;
                              }

                              else if (a1 == 0x79746964696D7568 && a2 == 0xE800000000000000)
                              {

                                return 15;
                              }

                              else
                              {
                                v21 = sub_1BCE1E090();

                                if (v21)
                                {
                                  return 15;
                                }

                                else
                                {
                                  return 16;
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

unint64_t sub_1BCB35E50(char a1)
{
  result = 25705;
  switch(a1)
  {
    case 1:
      result = 1702125924;
      break;
    case 2:
      result = 1751607656;
      break;
    case 3:
      result = 7827308;
      break;
    case 4:
      result = 0x6F697469646E6F63;
      break;
    case 5:
      result = 0x7469706963657270;
      break;
    case 6:
      result = 0xD000000000000013;
      break;
    case 7:
      result = 0xD000000000000018;
      break;
    case 8:
      result = 0xD000000000000015;
      break;
    case 9:
      result = 0x6E69727453796164;
      break;
    case 10:
      result = 0x79614474726F6873;
      break;
    case 11:
      result = 0xD000000000000016;
      break;
    case 12:
      result = 0x746E6576456E7573;
      break;
    case 13:
      result = 0x6E6576456E6F6F6DLL;
      break;
    case 14:
      result = 0x7865646E497675;
      break;
    case 15:
      result = 0x79746964696D7568;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1BCB36024@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1BCB35964(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1BCB3604C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1BCB35E48();
  *a1 = result;
  return result;
}

uint64_t sub_1BCB36074(uint64_t a1)
{
  v2 = sub_1BCB37780();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BCB360B0(uint64_t a1)
{
  v2 = sub_1BCB37780();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t DailyForecastViewModel.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD09878);
  OUTLINED_FUNCTION_2();
  v5 = v4;
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v28 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BCB37780();
  sub_1BCE1E170();
  v30 = 0;
  sub_1BCE19090();
  OUTLINED_FUNCTION_23_13();
  sub_1BCB3898C(v9, v10);
  OUTLINED_FUNCTION_19_2();
  sub_1BCE1E020();
  if (!v1)
  {
    v11 = type metadata accessor for DailyForecastViewModel();
    OUTLINED_FUNCTION_31_5(1);
    sub_1BCE19060();
    OUTLINED_FUNCTION_22_11();
    sub_1BCB3898C(v12, v13);
    OUTLINED_FUNCTION_19_2();
    sub_1BCE1E020();
    v29 = v11;
    v30 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07CA8);
    sub_1BC957184(&qword_1EBD09188, &qword_1EBD07CA8);
    OUTLINED_FUNCTION_17();
    sub_1BCE1E020();
    v30 = 3;
    OUTLINED_FUNCTION_17();
    sub_1BCE1E020();
    OUTLINED_FUNCTION_31_5(4);
    type metadata accessor for ConditionViewModel();
    OUTLINED_FUNCTION_21_13();
    sub_1BCB3898C(v14, v15);
    OUTLINED_FUNCTION_0_34();
    sub_1BCE1E020();
    OUTLINED_FUNCTION_31_5(5);
    sub_1BCE19BA0();
    OUTLINED_FUNCTION_20_12();
    sub_1BCB3898C(v16, v17);
    OUTLINED_FUNCTION_0_34();
    sub_1BCE1E020();
    v18 = v29;
    v30 = 6;
    OUTLINED_FUNCTION_17();
    sub_1BCE1DFF0();
    OUTLINED_FUNCTION_44_2(v18[11]);
    OUTLINED_FUNCTION_15_15(7);
    sub_1BCE1DFA0();
    OUTLINED_FUNCTION_44_2(v18[12]);
    OUTLINED_FUNCTION_15_15(8);
    sub_1BCE1DFD0();
    OUTLINED_FUNCTION_44_2(v18[13]);
    OUTLINED_FUNCTION_15_15(9);
    sub_1BCE1DFD0();
    OUTLINED_FUNCTION_44_2(v18[14]);
    OUTLINED_FUNCTION_15_15(10);
    sub_1BCE1DFD0();
    OUTLINED_FUNCTION_31_5(11);
    sub_1BCE1A610();
    OUTLINED_FUNCTION_25_6();
    sub_1BCB3898C(v19, v20);
    OUTLINED_FUNCTION_0_34();
    sub_1BCE1E020();
    OUTLINED_FUNCTION_31_5(12);
    sub_1BCE1A170();
    OUTLINED_FUNCTION_14_16();
    sub_1BCB3898C(v21, v22);
    OUTLINED_FUNCTION_0_34();
    sub_1BCE1DFC0();
    OUTLINED_FUNCTION_31_5(13);
    sub_1BCE19AD0();
    OUTLINED_FUNCTION_12_22();
    sub_1BCB3898C(v23, v24);
    OUTLINED_FUNCTION_0_34();
    sub_1BCE1DFC0();
    OUTLINED_FUNCTION_31_5(14);
    sub_1BCE1A080();
    OUTLINED_FUNCTION_24_10();
    sub_1BCB3898C(v25, v26);
    OUTLINED_FUNCTION_0_34();
    sub_1BCE1E020();
    v30 = 15;
    OUTLINED_FUNCTION_17();
    sub_1BCE1DFF0();
  }

  return (*(v5 + 8))(v8, v3);
}

uint64_t DailyForecastViewModel.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v122 = a2;
  sub_1BCE1A080();
  OUTLINED_FUNCTION_2();
  v129 = v4;
  v130 = v3;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5_1();
  v123 = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD09858);
  OUTLINED_FUNCTION_14(v6);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_10_16();
  v124 = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD09868);
  OUTLINED_FUNCTION_14(v9);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_10_16();
  v125 = v11;
  OUTLINED_FUNCTION_13();
  sub_1BCE1A610();
  OUTLINED_FUNCTION_2();
  v131 = v13;
  v132 = v12;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_5_1();
  v126 = v14;
  OUTLINED_FUNCTION_13();
  sub_1BCE19BA0();
  OUTLINED_FUNCTION_2();
  v133 = v16;
  v134 = v15;
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_5_1();
  v127 = v17;
  OUTLINED_FUNCTION_13();
  v137 = type metadata accessor for ConditionViewModel();
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_5_1();
  v138 = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07CA8);
  OUTLINED_FUNCTION_2();
  v144 = v21;
  v145 = v20;
  MEMORY[0x1EEE9AC00](v20);
  v139 = &v121 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v121 - v24;
  v146 = sub_1BCE19060();
  OUTLINED_FUNCTION_2();
  v135 = v26;
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_2_0();
  v30 = v29 - v28;
  v31 = sub_1BCE19090();
  OUTLINED_FUNCTION_2();
  v136 = v32;
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_2_0();
  v36 = v35 - v34;
  v140 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD098A8);
  OUTLINED_FUNCTION_2();
  v38 = v37;
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v39);
  v41 = &v121 - v40;
  v148 = type metadata accessor for DailyForecastViewModel();
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_5_1();
  v147 = v43;
  v44 = a1[3];
  v142 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v44);
  sub_1BCB37780();
  v141 = v41;
  v45 = v143;
  sub_1BCE1E160();
  if (v45)
  {
    v143 = v45;
    v48 = 0;
    LODWORD(v49) = 0;
    v50 = 0;
    v51 = 0;
    LODWORD(v52) = 0;
    OUTLINED_FUNCTION_7_33();
    v53 = v146;
  }

  else
  {
    v121 = v38;
    v149 = 0;
    OUTLINED_FUNCTION_23_13();
    sub_1BCB3898C(v46, v47);
    OUTLINED_FUNCTION_29_8();
    LODWORD(v38) = v140;
    sub_1BCE1DF70();
    v70 = *(v136 + 32);
    v71 = v147;
    v128 = v31;
    v70(v147, v36, v31);
    v149 = 1;
    OUTLINED_FUNCTION_22_11();
    sub_1BCB3898C(v72, v73);
    OUTLINED_FUNCTION_29_8();
    v74 = v146;
    sub_1BCE1DF70();
    v75 = v148;
    (*(v135 + 32))(v71 + v148[5], v30, v74);
    v149 = 2;
    sub_1BC957184(&qword_1EBD091C0, &qword_1EBD07CA8);
    v76 = v145;
    OUTLINED_FUNCTION_39_4();
    v77 = v71 + v75[6];
    v143 = *(v144 + 32);
    v143(v77, v25, v76);
    v149 = 3;
    v78 = v139;
    OUTLINED_FUNCTION_39_4();
    v79 = v76;
    v80 = v148;
    v81 = v71;
    v143(v71 + v148[7], v78, v79);
    v149 = 4;
    OUTLINED_FUNCTION_21_13();
    sub_1BCB3898C(v82, v83);
    OUTLINED_FUNCTION_29_8();
    v84 = v138;
    sub_1BCE1DF70();
    sub_1BCAFEA84(v84, v71 + v80[8]);
    v149 = 5;
    OUTLINED_FUNCTION_20_12();
    sub_1BCB3898C(v85, v86);
    OUTLINED_FUNCTION_29_8();
    v49 = v127;
    v52 = v134;
    sub_1BCE1DF70();
    (*(v133 + 32))(v81 + v80[9], v49, v52);
    OUTLINED_FUNCTION_28_4(6);
    v50 = v141;
    sub_1BCE1DF40();
    *(v81 + v80[10]) = v87;
    OUTLINED_FUNCTION_28_4(7);
    v88 = sub_1BCE1DEF0();
    v51 = v121;
    v89 = (v81 + v80[11]);
    *v89 = v88;
    v89[1] = v90;
    OUTLINED_FUNCTION_28_4(8);
    v91 = sub_1BCE1DF20();
    v143 = 0;
    v93 = (v147 + v148[12]);
    *v93 = v91;
    v93[1] = v92;
    OUTLINED_FUNCTION_28_4(9);
    v94 = v143;
    v95 = sub_1BCE1DF20();
    v143 = v94;
    if (v94)
    {
      OUTLINED_FUNCTION_10_24();
      v97(v141, v140);
      LODWORD(v140) = 0;
      LODWORD(v141) = 0;
      v48 = 1;
      OUTLINED_FUNCTION_2_30();
      LODWORD(v139) = v98;
    }

    else
    {
      v99 = (v147 + v148[13]);
      *v99 = v95;
      v99[1] = v96;
      OUTLINED_FUNCTION_43_2(10);
      v100 = sub_1BCE1DF20();
      v143 = 0;
      v101 = (v147 + v148[14]);
      *v101 = v100;
      v101[1] = v102;
      v149 = 11;
      OUTLINED_FUNCTION_25_6();
      sub_1BCB3898C(v103, v104);
      OUTLINED_FUNCTION_29_8();
      v50 = v141;
      v105 = v143;
      sub_1BCE1DF70();
      v143 = v105;
      if (!v105)
      {
        (*(v131 + 32))(v147 + v148[15], v126, v132);
        sub_1BCE1A170();
        v149 = 12;
        OUTLINED_FUNCTION_14_16();
        sub_1BCB3898C(v108, v109);
        OUTLINED_FUNCTION_29_8();
        OUTLINED_FUNCTION_37_3();
        v56 = 1;
        v143 = 0;
        sub_1BCB37738(v125, v147 + v148[16], &qword_1EBD09868);
        v51 = sub_1BCE19AD0();
        v149 = 13;
        OUTLINED_FUNCTION_12_22();
        sub_1BCB3898C(v110, v111);
        OUTLINED_FUNCTION_29_8();
        OUTLINED_FUNCTION_37_3();
        v143 = 0;
        sub_1BCB37738(v124, v147 + v148[17], &qword_1EBD09858);
        v149 = 14;
        OUTLINED_FUNCTION_24_10();
        sub_1BCB3898C(v113, v114);
        OUTLINED_FUNCTION_29_8();
        v50 = v141;
        v115 = v143;
        sub_1BCE1DF70();
        v143 = v115;
        if (!v115)
        {
          (*(v129 + 32))(v147 + v148[18], v123, v130);
          OUTLINED_FUNCTION_43_2(15);
          sub_1BCE1DF40();
          v143 = 0;
          v118 = v117;
          OUTLINED_FUNCTION_10_24();
          v119(v141, v140);
          v120 = v147;
          *(v147 + v148[19]) = v118;
          sub_1BCB388E0(v120, v122);
          __swift_destroy_boxed_opaque_existential_1(v142);
          return sub_1BCB38934(v120, type metadata accessor for DailyForecastViewModel);
        }

        OUTLINED_FUNCTION_10_24();
        v116(v141, v140);
        LODWORD(v137) = 0;
        v57 = 1;
        __swift_destroy_boxed_opaque_existential_1(v142);
        OUTLINED_FUNCTION_2_30();
        LODWORD(v139) = v112;
        LODWORD(v140) = v112;
        LODWORD(v141) = v112;
        v55 = 1;
        v53 = v146;
LABEL_6:
        result = (*(v136 + 8))(v147, v128);
        if (v49)
        {
          goto LABEL_7;
        }

        goto LABEL_11;
      }

      OUTLINED_FUNCTION_10_24();
      v106(v141, v140);
      v48 = 1;
      OUTLINED_FUNCTION_2_30();
      LODWORD(v139) = v107;
      LODWORD(v140) = v107;
      LODWORD(v141) = v107;
    }

    v53 = v146;
    v31 = v128;
  }

  result = __swift_destroy_boxed_opaque_existential_1(v142);
  if (v48)
  {
    v128 = v31;
    v55 = 0;
    v56 = 0;
    v57 = 0;
    LODWORD(v137) = 0;
    goto LABEL_6;
  }

  LODWORD(v137) = 0;
  v57 = 0;
  v56 = 0;
  v55 = 0;
  if (v49)
  {
LABEL_7:
    v58 = v147;
    v59 = OUTLINED_FUNCTION_41(v148[5]);
    result = v60(v59, v53);
    v61 = v144;
    if ((v50 & 1) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_12;
  }

LABEL_11:
  v58 = v147;
  v61 = v144;
  if (!v50)
  {
LABEL_8:
    if (v51)
    {
      v62 = *(v61 + 8);
      goto LABEL_13;
    }

    goto LABEL_24;
  }

LABEL_12:
  v62 = *(v61 + 8);
  result = v62(v58 + v148[6], v145);
  if (v51)
  {
LABEL_13:
    v63 = v148;
    result = v62(v58 + v148[7], v145);
    if ((v52 & 1) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_25;
  }

LABEL_24:
  v63 = v148;
  if (!v52)
  {
LABEL_14:
    if (v38)
    {
      goto LABEL_15;
    }

    goto LABEL_26;
  }

LABEL_25:
  result = sub_1BCB38934(v58 + v63[8], type metadata accessor for ConditionViewModel);
  if (v38)
  {
LABEL_15:
    v64 = OUTLINED_FUNCTION_41(v63[9]);
    result = v65(v64);
    if ((v138 & 1) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_27;
  }

LABEL_26:
  if (!v138)
  {
LABEL_16:
    if (v139)
    {
      goto LABEL_17;
    }

    goto LABEL_28;
  }

LABEL_27:
  result = OUTLINED_FUNCTION_48_2();
  if (v139)
  {
LABEL_17:
    result = OUTLINED_FUNCTION_48_2();
    if ((v140 & 1) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_29;
  }

LABEL_28:
  if (!v140)
  {
LABEL_18:
    if (v141)
    {
      goto LABEL_19;
    }

    goto LABEL_30;
  }

LABEL_29:
  result = OUTLINED_FUNCTION_48_2();
  if (v141)
  {
LABEL_19:
    result = OUTLINED_FUNCTION_48_2();
    if ((v55 & 1) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_31;
  }

LABEL_30:
  if (!v55)
  {
LABEL_20:
    if (v56)
    {
      goto LABEL_21;
    }

    goto LABEL_32;
  }

LABEL_31:
  v66 = OUTLINED_FUNCTION_41(v63[15]);
  result = v67(v66);
  if (v56)
  {
LABEL_21:
    result = sub_1BC94C05C(v58 + v63[16], &qword_1EBD09868);
    if ((v57 & 1) == 0)
    {
      goto LABEL_22;
    }

LABEL_33:
    result = sub_1BC94C05C(v58 + v63[17], &qword_1EBD09858);
    if ((v137 & 1) == 0)
    {
      return result;
    }

    goto LABEL_34;
  }

LABEL_32:
  if (v57)
  {
    goto LABEL_33;
  }

LABEL_22:
  if (!v137)
  {
    return result;
  }

LABEL_34:
  v68 = OUTLINED_FUNCTION_41(v63[18]);
  return v69(v68);
}

uint64_t sub_1BCB37580(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD095B0);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v18 - v10;
  sub_1BC97F790();
  if (v13)
  {
    return v12;
  }

  v14 = sub_1BCB37CFC(a4, a2, a3, a1);
  if (qword_1EDA1F638 != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07CA8);
  OUTLINED_FUNCTION_0_3();
  (*(v15 + 16))(v11, a4);
  sub_1BCB388E0(a1, &v11[v8[11]]);
  v11[v8[12]] = a2;
  v16 = &v11[v8[13]];
  *v16 = 0;
  *(v16 + 1) = 0;
  sub_1BC97FC54();
  sub_1BC94C05C(v11, &qword_1EBD095B0);
  return v14;
}

uint64_t sub_1BCB37738(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  OUTLINED_FUNCTION_9_0(a1, a2, a3);
  OUTLINED_FUNCTION_0_3();
  v4 = OUTLINED_FUNCTION_10_1();
  v5(v4);
  return v3;
}

unint64_t sub_1BCB37780()
{
  result = qword_1EBD09880;
  if (!qword_1EBD09880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD09880);
  }

  return result;
}

void sub_1BCB37844()
{
  sub_1BCE19090();
  if (v0 <= 0x3F)
  {
    sub_1BCE19060();
    if (v1 <= 0x3F)
    {
      sub_1BCB379D4();
      if (v2 <= 0x3F)
      {
        type metadata accessor for ConditionViewModel();
        if (v3 <= 0x3F)
        {
          sub_1BCE19BA0();
          if (v4 <= 0x3F)
          {
            sub_1BC965D24();
            if (v5 <= 0x3F)
            {
              sub_1BCE1A610();
              if (v6 <= 0x3F)
              {
                sub_1BCB37A3C(319, &qword_1EDA1BE70, MEMORY[0x1E69852E8]);
                if (v7 <= 0x3F)
                {
                  sub_1BCB37A3C(319, &qword_1EDA1BEC8, MEMORY[0x1E6984D78]);
                  if (v8 <= 0x3F)
                  {
                    sub_1BCE1A080();
                    if (v9 <= 0x3F)
                    {
                      swift_cvw_initStructMetadataWithLayoutString();
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

void sub_1BCB379D4()
{
  if (!qword_1EDA1BF90)
  {
    sub_1BC947608(255, qword_1EDA1EFC0);
    v0 = sub_1BCE186B0();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDA1BF90);
    }
  }
}

void sub_1BCB37A3C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1BCE1DB10();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for DailyForecastViewModel.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF1)
  {
    if (a2 + 15 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 15) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 16;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x10;
  v5 = v6 - 16;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for DailyForecastViewModel.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1BCB37BF8()
{
  result = qword_1EBD098D0;
  if (!qword_1EBD098D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD098D0);
  }

  return result;
}

unint64_t sub_1BCB37C50()
{
  result = qword_1EBD098D8;
  if (!qword_1EBD098D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD098D8);
  }

  return result;
}

unint64_t sub_1BCB37CA8()
{
  result = qword_1EBD098E0;
  if (!qword_1EBD098E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD098E0);
  }

  return result;
}

uint64_t sub_1BCB37CFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v92 = a1;
  v93 = a3;
  v90 = a2;
  v5 = sub_1BCE18710();
  v79 = *(v5 - 8);
  v80 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v78 = &v74 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1BCE1DAF0();
  v83 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v82 = &v74 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for NSUnitTemperature.WeatherFormatComponent(0);
  v91 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v87 = &v74 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD098E8);
  v85 = *(v11 - 8);
  v86 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v84 = &v74 - v12;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08288);
  v76 = *(v77 - 8);
  MEMORY[0x1EEE9AC00](v77);
  v74 = &v74 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v75 = &v74 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07CA8);
  v94 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v74 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v74 - v20;
  v22 = sub_1BCE19260();
  v88 = *(v22 - 8);
  v89 = v22;
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v74 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD098F0);
  MEMORY[0x1EEE9AC00](v25 - 8);
  v27 = &v74 - v26;
  v28 = *a4;
  if (*(*a4 + 16) == 1)
  {
    sub_1BC96926C(*a4, v27);
    if (__swift_getEnumTagSinglePayload(v27, 1, v9) == 1)
    {
      sub_1BC94C05C(v27, &qword_1EBD098F0);
    }

    else
    {
      v29 = type metadata accessor for NSUnitTemperature.WeatherFormatUnitConfiguration(0);
      EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v27, 1, v29);
      sub_1BCB38934(v27, type metadata accessor for NSUnitTemperature.WeatherFormatComponent);
      if (EnumTagSinglePayload != 1)
      {
        v31 = type metadata accessor for NSUnitTemperature.BaseWeatherFormatStyle(0);
        sub_1BCE19270();
        v32 = sub_1BCE191C0();
        (*(v88 + 8))(v24, v89);
        if ((v32 & 1) != 0 && (*(a4 + *(v31 + 24)) & 1) == 0)
        {
          sub_1BC947608(0, &qword_1EDA1C0B8);
          sub_1BCE1A3E0();
          v71 = sub_1BCE1A410();
          v72 = [objc_opt_self() fahrenheit];
          v73 = sub_1BCE1DAC0();

          if (v73)
          {
            return 9012450;
          }

          else
          {
            return 8619234;
          }
        }
      }
    }
  }

  v81 = v7;
  v33 = type metadata accessor for NSUnitTemperature.BaseWeatherFormatStyle(0);
  v34 = v33[5];
  sub_1BCE1A3E0();
  v35 = sub_1BCE1A410();
  sub_1BCE18680();

  sub_1BCE185E0();
  sub_1BCE185F0();
  sub_1BCE185E0();
  if (v36 == 0.0)
  {
    sub_1BCE185F0();
  }

  (*(v94 + 32))(v21, v18, v16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07CD8);
  v37 = (*(v91 + 80) + 32) & ~*(v91 + 80);
  v38 = swift_allocObject();
  *(v38 + 16) = xmmword_1BCE3E050;
  v39 = type metadata accessor for NSUnitTemperature.WeatherFormatUnitConfiguration(0);
  __swift_storeEnumTagSinglePayload(v38 + v37, 1, 1, v39);
  sub_1BC9639B4();
  sub_1BC96A034();
  LOBYTE(v37) = v40;

  if (v37 & 1) != 0 || (*(a4 + v33[7]) & 1) != 0 && (sub_1BCE19270(), v54 = sub_1BCE191C0(), (*(v88 + 8))(v24, v89), (v54))
  {
    v41 = 0;
    switch(v90)
    {
      case 1:
        v41 = 11565;
        break;
      case 2:
        v41 = 0x9380E29380E2;
        break;
      case 3:
        break;
      default:
        sub_1BCE185E0();
        v95 = v42;
        v43 = v74;
        sub_1BC96A7B4(a4 + v33[8], v28, v44, v45, v46, v47, v48, v49, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85);
        v50 = a4 + v34;
        v51 = v75;
        v52 = v77;
        MEMORY[0x1BFB2B3D0](v50, v77);
        v53 = *(v76 + 8);
        v53(v43, v52);
        sub_1BC96ABEC();
        sub_1BC957184(&qword_1EDA1EF58, &qword_1EBD08288);
        sub_1BCE1D0F0();
        v53(v51, v52);
LABEL_16:
        (*(v94 + 8))(v21, v16);
        return v97;
    }

    (*(v94 + 8))(v21, v16);
  }

  else
  {
    v55 = v84;
    sub_1BC96C320();
    sub_1BC957184(&qword_1EDA1F680, &qword_1EBD098E8);
    v56 = v86;
    sub_1BCE186A0();
    (*(v85 + 8))(v55, v56);
    v57 = v87;
    __swift_storeEnumTagSinglePayload(v87, 1, 1, v39);
    sub_1BC96D35C();
    v59 = v58;
    sub_1BCB38934(v57, type metadata accessor for NSUnitTemperature.WeatherFormatComponent);
    if (v59)
    {
      v60 = 0xE000000000000000;
      v61 = 0;
      switch(v90)
      {
        case 1:
          v60 = 0xE200000000000000;
          v61 = 11565;
          break;
        case 2:
          v60 = 0xA600000000000000;
          v61 = 0x9380E29380E2;
          break;
        case 3:
          break;
        default:
          goto LABEL_16;
      }

      v68 = v82;
      sub_1BCE1ABF0();
      v95 = v61;
      v96 = v60;
      sub_1BC98C934();
      sub_1BC98CAB4();
      sub_1BCB3898C(&qword_1EDA1C0A8, MEMORY[0x1E6969FD0]);
      v69 = v81;
      sub_1BCE1D790();
      (*(v83 + 8))(v68, v69);
      (*(v94 + 8))(v21, v16);
    }

    else
    {
      v62 = v82;
      sub_1BCE1ABF0();
      v95 = 0;
      v96 = 0xE000000000000000;
      sub_1BC98C934();
      sub_1BC98CAB4();
      sub_1BCB3898C(&qword_1EDA1C0A8, MEMORY[0x1E6969FD0]);
      v63 = v81;
      sub_1BCE1D790();
      (*(v83 + 8))(v62, v63);
      v95 = v97;
      v96 = v98;
      v64 = v78;
      sub_1BCE186C0();
      sub_1BC970820();
      v65 = sub_1BCE1DB70();
      v67 = v66;
      (*(v79 + 8))(v64, v80);
      (*(v94 + 8))(v21, v16);

      v97 = v65;
      v98 = v67;
    }

    return v97;
  }

  return v41;
}

uint64_t sub_1BCB388E0(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_11();
  v4(v3);
  OUTLINED_FUNCTION_0_3();
  v5 = OUTLINED_FUNCTION_10_1();
  v6(v5);
  return a2;
}

uint64_t sub_1BCB38934(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_4();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1BCB3898C(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1BCB389D4(uint64_t a1@<X8>)
{
  v2 = (a1 + 1436);
  sub_1BCA1CB6C();
  v4 = v3;
  sub_1BCA1CB6C();
  *a1 = 0x4006666666666666;
  *(a1 + 8) = 1;
  *(a1 + 16) = 0x3FF0000000000000;
  *(a1 + 24) = 48;
  *(a1 + 32) = xmmword_1BCE3BED0;
  *(a1 + 48) = xmmword_1BCE3BED0;
  *(a1 + 64) = 0x42DC000042480000;
  *(a1 + 72) = 0xC3C8000000000000;
  *(a1 + 80) = xmmword_1BCE3F410;
  *(a1 + 96) = xmmword_1BCE4A9E0;
  *(a1 + 112) = 0x3E8000003E4CCCCCLL;
  *(a1 + 128) = xmmword_1BCE3D880;
  *(a1 + 144) = xmmword_1BCE402F0;
  *(a1 + 160) = xmmword_1BCE3E670;
  *(a1 + 176) = 1167663104;
  *(a1 + 184) = 0x3E47AE143E051EB8;
  *(a1 + 192) = xmmword_1BCE40310;
  *(a1 + 208) = xmmword_1BCE40320;
  *(a1 + 224) = xmmword_1BCE40330;
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
  *(a1 + 712) = 0x3F4CCCCD3F19999ALL;
  *(a1 + 720) = 0x4170000041500000;
  *(a1 + 728) = 1097138248;
  *(a1 + 736) = 1;
  *(a1 + 744) = 4;
  *(a1 + 752) = xmmword_1BCE51040;
  *(a1 + 768) = 0xD000000000000010;
  *(a1 + 776) = 0x80000001BCE79860;
  *(a1 + 784) = 0xD000000000000014;
  *(a1 + 792) = 0x80000001BCE79880;
  *(a1 + 800) = 6;
  *(a1 + 816) = _Q0;
  *(a1 + 832) = 1065353216;
  *(a1 + 840) = 0x3F7333333F400000;
  *(a1 + 848) = 0x4183D70A41300000;
  *(a1 + 856) = 1079592688;
  *(a1 + 864) = 1;
  *(a1 + 872) = 4;
  *(a1 + 880) = xmmword_1BCE51050;
  *(a1 + 896) = 0x2073756C756D7543;
  *(a1 + 904) = 0xEB000000004D202DLL;
  *(a1 + 912) = 0x5F73756C756D7543;
  *(a1 + 920) = 0xEF4D656C676E6953;
  *(a1 + 928) = 10;
  *(a1 + 944) = _Q0;
  *(a1 + 960) = 1065353216;
  *(a1 + 968) = 0x3F8000003F4CCCCDLL;
  *(a1 + 976) = 0x4100000040E00000;
  *(a1 + 984) = 3224468704;
  *(a1 + 992) = 1;
  *(a1 + 1000) = 4;
  *(a1 + 1008) = xmmword_1BCE40350;
  *(a1 + 1024) = 0x2073756C756D7543;
  *(a1 + 1032) = 0xEB000000004D202DLL;
  *(a1 + 1040) = 0x5F73756C756D7543;
  *(a1 + 1048) = 0xEF4D656C676E6953;
  *(a1 + 1056) = 10;
  *(a1 + 1072) = _Q0;
  *(a1 + 1088) = 1065353216;
  *(a1 + 1096) = 0x401999993F800000;
  *(a1 + 1104) = 0x40C0000040800000;
  *(a1 + 1112) = 1088421888;
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
  *(a1 + 1216) = xmmword_1BCE51060;
  *(a1 + 1232) = 0;
  *(a1 + 1236) = 1;
  *(a1 + 1240) = 0xD000000000000010;
  *(a1 + 1248) = 0x80000001BCE798A0;
  *(a1 + 1256) = 0xD000000000000015;
  *(a1 + 1264) = 0x80000001BCE798C0;
  *(a1 + 1272) = 5;
  *(a1 + 1280) = 0;
  *(a1 + 1288) = 0x3FAA3D703F88F5C2;
  *(a1 + 1296) = 0x41A0000042B40000;
  *(a1 + 1304) = 0;
  *(a1 + 1312) = _Q0;
  *(a1 + 1328) = _Q0;
  *(a1 + 1344) = 0;
  *(a1 + 1352) = 0x40000000;
  *(a1 + 1360) = 0;
  *(a1 + 1368) = 2;
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
  __asm { FMOV            V1.2S, #-30.0 }

  *(a1 + 1616) = -_D1;
  *(a1 + 1624) = 0x40000000;
  *(a1 + 1628) = 256;
  *(a1 + 1632) = 257;
  *(a1 + 1634) = 0;
  *(a1 + 1642) = 0x101010100010000;
  *(a1 + 1650) = 0;
  *(a1 + 1652) = 1;
  *(a1 + 1656) = 0;
  *(a1 + 1657) = v12;
  *(a1 + 1659) = v13;
  *(a1 + 1660) = 1061972805;
  *(a1 + 1664) = 0x408800004053D70ALL;
  *(a1 + 1672) = 3;
  *(a1 + 1680) = xmmword_1BCE51070;
  *(a1 + 1696) = xmmword_1BCE40380;
  *(a1 + 1712) = xmmword_1BCE40390;
  *(a1 + 1728) = 0x3F0000003EB33333;
  *(a1 + 1736) = 0x3ECCCCCD47C35000;
  *(a1 + 1744) = 0u;
  *(a1 + 1760) = 10;
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
  *(a1 + 1952) = 1077936128;
  *(a1 + 1960) = 0x420C000041C80000;
  *(a1 + 1968) = xmmword_1BCE3E700;
  *(a1 + 1984) = 0x3F80000000000000;
  *(a1 + 1992) = 1061158912;
  *(a1 + 2000) = 0x3F4CCCCD3E4CCCCDLL;
  *(a1 + 2008) = 0x3F6666663F333333;
  *(a1 + 2016) = xmmword_1BCE3F500;
  *(a1 + 2096) = 0u;
  *(a1 + 2080) = 0u;
  *(a1 + 2064) = 0u;
  *(a1 + 2048) = 0u;
  *(a1 + 2032) = 0u;
  *(a1 + 2112) = 1056964608;
  *(a1 + 2120) = 0x3E28F5C33D851EB8;
  *(a1 + 2128) = 0x400000003F800000;
  *(a1 + 2136) = 0x4060000040400000;
  *(a1 + 2144) = -1046478848;
  *(a1 + 2160) = _Q0;
  *(a1 + 2176) = _Q0;
  *(a1 + 2192) = 1041865114;
  *(a1 + 2200) = 12;
  *(a1 + 2208) = 0x414000003FC00000;
  *(a1 + 2224) = xmmword_1BCE51080;
  *(a1 + 2240) = xmmword_1BCE51090;
  *(a1 + 2256) = _Q0;
  *(a1 + 2304) = 0;
  *(a1 + 2288) = 0u;
  *(a1 + 2272) = 0u;
  *(a1 + 2312) = v4;
  *(a1 + 2320) = v11;
}

void sub_1BCB39178(uint64_t a1@<X8>)
{
  v2 = a1 + 1436;
  sub_1BCA90994();
  v4 = v3;
  sub_1BCA90994();
  *a1 = 0x4006666666666666;
  *(a1 + 8) = 3;
  *(a1 + 16) = 0x3FF0000000000000;
  *(a1 + 24) = 48;
  *(a1 + 32) = xmmword_1BCE3BED0;
  *(a1 + 48) = xmmword_1BCE3BED0;
  *(a1 + 64) = 0x42DC000042480000;
  *(a1 + 72) = 0xC396000000000000;
  *(a1 + 80) = xmmword_1BCE483E0;
  *(a1 + 96) = xmmword_1BCE483F0;
  *(a1 + 112) = 0x3EB333333E23D70ALL;
  *(a1 + 128) = xmmword_1BCE48400;
  *(a1 + 144) = xmmword_1BCE48410;
  *(a1 + 160) = xmmword_1BCE48420;
  *(a1 + 176) = 1169915904;
  *(a1 + 184) = 0x3E23D70A3DA3D70ALL;
  *(a1 + 192) = xmmword_1BCE48430;
  *(a1 + 208) = xmmword_1BCE48440;
  *(a1 + 224) = xmmword_1BCE48450;
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
  *(a1 + 712) = 0x3F0000003E99999ALL;
  *(a1 + 720) = 0x4182A3D74124CCCDLL;
  *(a1 + 728) = 3189922816;
  *(a1 + 736) = 1;
  *(a1 + 744) = 4;
  *(a1 + 752) = xmmword_1BCE3E0A0;
  *(a1 + 768) = 0x617274736F746C41;
  *(a1 + 776) = 0xEF4C202D20737574;
  *(a1 + 784) = 0xD000000000000013;
  *(a1 + 792) = 0x80000001BCE798E0;
  *(a1 + 800) = 6;
  *(a1 + 816) = _Q0;
  *(a1 + 832) = 1065353216;
  *(a1 + 840) = 0x3FB333333F99999ALL;
  *(a1 + 848) = 0x4180000040C00000;
  *(a1 + 856) = 1065353216;
  *(a1 + 864) = 1;
  *(a1 + 872) = 4;
  *(a1 + 880) = xmmword_1BCE42100;
  *(a1 + 896) = 0xD000000000000010;
  *(a1 + 904) = 0x80000001BCE79860;
  *(a1 + 912) = 0xD000000000000014;
  *(a1 + 920) = 0x80000001BCE79880;
  *(a1 + 928) = 10;
  *(a1 + 944) = _Q0;
  *(a1 + 960) = 1065353216;
  *(a1 + 968) = 0x3F8000003F4CCCCDLL;
  *(a1 + 976) = 0x4100000040E00000;
  *(a1 + 984) = 3221225472;
  *(a1 + 992) = 1;
  *(a1 + 1000) = 4;
  *(a1 + 1008) = xmmword_1BCE3C6F0;
  *(a1 + 1024) = 0x2073756C756D7543;
  *(a1 + 1032) = 0xEB0000000053202DLL;
  *(a1 + 1040) = 0x5F73756C756D7543;
  *(a1 + 1048) = 0xEF53656C676E6953;
  *(a1 + 1056) = 5;
  *(a1 + 1072) = _Q0;
  *(a1 + 1088) = 1065353216;
  *(a1 + 1096) = 0x3FD9999A3FCCCCCDLL;
  *(a1 + 1104) = 0x40A0000040800000;
  *(a1 + 1112) = 1090361200;
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
  *(a1 + 1216) = xmmword_1BCE510F0;
  *(a1 + 1232) = 0;
  *(a1 + 1236) = 1;
  *(a1 + 1240) = 0xD000000000000010;
  *(a1 + 1248) = 0x80000001BCE7A1D0;
  *(a1 + 1256) = 0xD000000000000015;
  *(a1 + 1264) = 0x80000001BCE7AD60;
  *(a1 + 1272) = 4;
  *(a1 + 1280) = 0;
  *(a1 + 1288) = 0x3FAA3D703F88F5C2;
  *(a1 + 1296) = 0x41A0000042B40000;
  *(a1 + 1304) = 0;
  *(a1 + 1312) = _Q0;
  *(a1 + 1328) = _Q0;
  *(a1 + 1344) = 0;
  *(a1 + 1352) = 0x40000000;
  *(a1 + 1360) = 0;
  *(a1 + 1368) = 2;
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
  __asm { FMOV            V1.2S, #-30.0 }

  *(a1 + 1616) = -_D1;
  *(a1 + 1624) = 0x40000000;
  *(a1 + 1628) = 256;
  *(a1 + 1632) = 257;
  *(a1 + 1642) = 0;
  *(a1 + 1634) = 0;
  *(v2 + 208) = 0x10001010001;
  *(a1 + 1652) = 1;
  *(a1 + 1656) = 0;
  *(a1 + 1657) = v12;
  *(a1 + 1659) = v13;
  *(a1 + 1660) = 1061980996;
  *(a1 + 1664) = 0x4104F5C240DB3333;
  *(a1 + 1672) = 4;
  *(a1 + 1680) = xmmword_1BCE51100;
  *(a1 + 1696) = xmmword_1BCE48480;
  *(a1 + 1712) = xmmword_1BCE48490;
  *(a1 + 1728) = 0x3F0000003EB33333;
  *(a1 + 1736) = 0x3EDEB85247927C00;
  *(a1 + 1744) = 0u;
  *(a1 + 1760) = 10;
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
  *(a1 + 1952) = 1077936128;
  *(a1 + 1960) = 0x420C000041C80000;
  *(a1 + 1968) = xmmword_1BCE3E110;
  *(a1 + 1984) = 0x3F80000040A00000;
  *(a1 + 1992) = 1061158912;
  *(a1 + 2000) = 0x3F4CCCCD3E4CCCCDLL;
  *(a1 + 2008) = 0x3F6666663F333333;
  *(a1 + 2016) = xmmword_1BCE3C080;
  *(a1 + 2096) = 0u;
  *(a1 + 2080) = 0u;
  *(a1 + 2064) = 0u;
  *(a1 + 2048) = 0u;
  *(a1 + 2032) = 0u;
  *(a1 + 2112) = 1056964608;
  *(a1 + 2120) = 0x3E051EB83D4CCCCDLL;
  *(a1 + 2128) = 0x400000003F800000;
  *(a1 + 2136) = 0x4060000040400000;
  *(a1 + 2144) = -1046478848;
  *(a1 + 2160) = _Q0;
  *(a1 + 2176) = _Q0;
  *(a1 + 2192) = 1061158912;
  *(a1 + 2200) = 18;
  *(a1 + 2208) = 0x41C800003FC00000;
  *(a1 + 2224) = xmmword_1BCE46650;
  *(a1 + 2240) = xmmword_1BCE51110;
  *(a1 + 2256) = _Q0;
  *(a1 + 2304) = 0;
  *(a1 + 2288) = 0u;
  *(a1 + 2272) = 0u;
  *(a1 + 2312) = v4;
  *(a1 + 2320) = v11;
}

uint64_t CompactNextHourPrecipitationChartView.init(model:)(uint64_t a1)
{
  HourPrecipitationChartViewModel = type metadata accessor for NextHourPrecipitationChartViewModel(0);
  MEMORY[0x1EEE9AC00](HourPrecipitationChartViewModel - 8);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  NextHourPrecipitationChartViewModel.ensureFixed60Min()();
  NextHourPrecipitationChartViewModel.limitDataPointsTo(limit:)();
  sub_1BCB3BF5C(a1, type metadata accessor for NextHourPrecipitationChartViewModel);
  return sub_1BCB3BF5C(v4, type metadata accessor for NextHourPrecipitationChartViewModel);
}

uint64_t CompactNextHourPrecipitationChartView.body.getter@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_1BCE1BDF0();
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD09948);
  return sub_1BCB39A5C(v1, a1 + *(v3 + 44));
}

uint64_t sub_1BCB39A5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v35 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD099A0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v34 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD099A8);
  v10 = v9 - 8;
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v34 - v14;
  HourPrecipitationChartContentView = type metadata accessor for CompactNextHourPrecipitationChartContentView(0);
  MEMORY[0x1EEE9AC00](HourPrecipitationChartContentView - 8);
  v18 = &v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v34 - v20;
  v34 = &v34 - v20;
  sub_1BCB3BFB4(a1, &v34 - v20, type metadata accessor for NextHourPrecipitationChartViewModel);
  sub_1BCE1CDE0();
  LODWORD(a1) = sub_1BCE1BFF0();
  *&v15[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD099B0) + 36)] = a1;
  v22 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD099B8) + 36);
  v23 = *MEMORY[0x1E6981DB8];
  v24 = sub_1BCE1CF20();
  (*(*(v24 - 8) + 104))(&v15[v22], v23, v24);
  LOBYTE(v23) = sub_1BCE1C260();
  sub_1BCE1B4A0();
  v25 = &v15[*(v10 + 44)];
  *v25 = v23;
  *(v25 + 1) = v26;
  *(v25 + 2) = v27;
  *(v25 + 3) = v28;
  *(v25 + 4) = v29;
  v25[40] = 0;
  *v8 = sub_1BCE1BC70();
  *(v8 + 1) = 0;
  v8[16] = 1;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD099C0);
  sub_1BCB39E50(&v8[*(v30 + 44)]);
  sub_1BCB3BFB4(v21, v18, type metadata accessor for CompactNextHourPrecipitationChartContentView);
  sub_1BC952ABC(v15, v12, &qword_1EBD099A8);
  sub_1BC952ABC(v8, v5, &qword_1EBD099A0);
  v31 = v35;
  sub_1BCB3BFB4(v18, v35, type metadata accessor for CompactNextHourPrecipitationChartContentView);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD099C8);
  sub_1BC952ABC(v12, v31 + *(v32 + 48), &qword_1EBD099A8);
  sub_1BC952ABC(v5, v31 + *(v32 + 64), &qword_1EBD099A0);
  sub_1BC94C05C(v8, &qword_1EBD099A0);
  sub_1BC94C05C(v15, &qword_1EBD099A8);
  sub_1BCB3BF5C(v34, type metadata accessor for CompactNextHourPrecipitationChartContentView);
  sub_1BC94C05C(v5, &qword_1EBD099A0);
  sub_1BC94C05C(v12, &qword_1EBD099A8);
  return sub_1BCB3BF5C(v18, type metadata accessor for CompactNextHourPrecipitationChartContentView);
}

uint64_t sub_1BCB39E50@<X0>(uint64_t a1@<X8>)
{
  v74 = a1;
  v1 = sub_1BCE1BD20();
  MEMORY[0x1EEE9AC00](v1 - 8);
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD099D0);
  MEMORY[0x1EEE9AC00](v70);
  v73 = &v65 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v72 = &v65 - v4;
  MEMORY[0x1EEE9AC00](v5);
  v71 = &v65 - v6;
  MEMORY[0x1EEE9AC00](v7);
  v75 = &v65 - v8;
  sub_1BCE1BD30();
  if (qword_1EDA1EFB0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v9 = qword_1EDA1EFB8;
  v10 = sub_1BCE1C680();
  v12 = v11;
  v14 = v13;
  sub_1BCE1C460();
  v15 = sub_1BCE1C610();
  v17 = v16;
  v19 = v18;

  sub_1BC998CF4(v10, v12, v14 & 1);

  sub_1BCE1C3C0();
  v20 = sub_1BCE1C530();
  v22 = v21;
  v24 = v23;
  sub_1BC998CF4(v15, v17, v19 & 1);

  LODWORD(v76) = sub_1BCE1BFF0();
  v25 = sub_1BCE1C5D0();
  v27 = v26;
  v29 = v28;
  v31 = v30;
  sub_1BC998CF4(v20, v22, v24 & 1);

  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD099D8);
  v32 = *(v69 + 36);
  v67 = *MEMORY[0x1E6981DB8];
  v33 = v67;
  v65 = sub_1BCE1CF20();
  v34 = *(v65 - 8);
  v66 = *(v34 + 104);
  v68 = v34 + 104;
  v35 = v75;
  v66(v75 + v32, v33, v65);
  *v35 = v25;
  *(v35 + 8) = v27;
  *(v35 + 16) = v29 & 1;
  *(v35 + 24) = v31;
  v36 = v70;
  *(v35 + *(v70 + 36)) = 257;
  sub_1BCE1BD10();
  sub_1BCE1BD00();
  v76 = 60;
  sub_1BCE1BCB0();
  sub_1BCE1BD00();
  sub_1BCE1BD40();
  v37 = qword_1EDA1EFB8;
  v38 = sub_1BCE1C680();
  v40 = v39;
  LOBYTE(v27) = v41;
  sub_1BCE1C460();
  v42 = sub_1BCE1C610();
  v44 = v43;
  v46 = v45;

  sub_1BC998CF4(v38, v40, v27 & 1);

  sub_1BCE1C3C0();
  v47 = sub_1BCE1C530();
  v49 = v48;
  LOBYTE(v27) = v50;
  sub_1BC998CF4(v42, v44, v46 & 1);

  LODWORD(v76) = sub_1BCE1BFF0();
  v51 = sub_1BCE1C5D0();
  v53 = v52;
  LOBYTE(v44) = v54;
  v56 = v55;
  sub_1BC998CF4(v47, v49, v27 & 1);

  v57 = v71;
  v66(&v71[*(v69 + 36)], v67, v65);
  *v57 = v51;
  *(v57 + 8) = v53;
  *(v57 + 16) = v44 & 1;
  *(v57 + 24) = v56;
  *(v57 + *(v36 + 36)) = 257;
  v58 = v75;
  v59 = v72;
  sub_1BC952ABC(v75, v72, &qword_1EBD099D0);
  v60 = v73;
  sub_1BC952ABC(v57, v73, &qword_1EBD099D0);
  v61 = v74;
  sub_1BC952ABC(v59, v74, &qword_1EBD099D0);
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD099E0);
  v63 = v61 + *(v62 + 48);
  *v63 = 0;
  *(v63 + 8) = 1;
  sub_1BC952ABC(v60, v61 + *(v62 + 64), &qword_1EBD099D0);
  sub_1BC94C05C(v57, &qword_1EBD099D0);
  sub_1BC94C05C(v58, &qword_1EBD099D0);
  sub_1BC94C05C(v60, &qword_1EBD099D0);
  return sub_1BC94C05C(v59, &qword_1EBD099D0);
}

uint64_t sub_1BCB3A580@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v27 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD092D8);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v20 - v5;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD092E0);
  v24 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v8 = &v20 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD09970);
  v25 = *(v9 - 8);
  v26 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v21 = &v20 - v10;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD09978);
  MEMORY[0x1EEE9AC00](v23);
  v12 = &v20 - v11;
  v28 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD092F0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD092F8);
  v14 = sub_1BCE1B0F0();
  v15 = sub_1BC957184(&qword_1EBD09300, &qword_1EBD092F8);
  __src[0] = v13;
  __src[1] = v14;
  __src[2] = v15;
  __src[3] = MEMORY[0x1E695B148];
  swift_getOpaqueTypeConformance2();
  sub_1BCE1B2C0();
  v16 = sub_1BC957184(&qword_1EBD09308, &qword_1EBD092D8);
  sub_1BCE1C6D0();
  (*(v4 + 8))(v6, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD09980);
  __src[0] = v3;
  __src[1] = v16;
  swift_getOpaqueTypeConformance2();
  sub_1BC957184(&qword_1EBD09988, &qword_1EBD09980);
  v17 = v21;
  v18 = v22;
  sub_1BCE1C6E0();
  (*(v24 + 8))(v8, v18);
  sub_1BCE1CEE0();
  sub_1BCE1B910();
  (*(v25 + 32))(v12, v17, v26);
  memcpy(&v12[*(v23 + 36)], __src, 0x70uLL);
  sub_1BCB3BD60();
  sub_1BCB3BEF8();
  sub_1BCE1C730();
  return sub_1BC9B21D8(v12);
}

uint64_t sub_1BCB3AA60(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD092F8);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7[-v4];
  v9 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD09358);
  sub_1BCB04E80();
  sub_1BCE1B2B0();
  v8 = a1;
  sub_1BCE1B0F0();
  sub_1BC957184(&qword_1EBD09300, &qword_1EBD092F8);
  sub_1BCE1B080();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_1BCB3ABFC()
{
  swift_getKeyPath();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08EA8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD09388);
  sub_1BC957184(&qword_1EBD09390, &qword_1EBD08EA8);
  sub_1BCB05088();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD09368);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD09370);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD09378);
  sub_1BCE1B2E0();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  sub_1BC970820();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return sub_1BCE1CE00();
}

uint64_t sub_1BCB3AE24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v48 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07EB8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v36[1] = v36 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD09380);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v40 = sub_1BCE1B2E0();
  v38 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v40);
  v7 = v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD09378);
  v39 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41);
  v9 = v36 - v8;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD09370);
  v42 = *(v44 - 8);
  MEMORY[0x1EEE9AC00](v44);
  v37 = v36 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD09368);
  v45 = *(v11 - 8);
  v46 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v43 = v36 - v12;
  sub_1BCE1BD30();
  sub_1BCE19060();
  sub_1BCE1B150();

  sub_1BCE1BD30();
  v13 = *(type metadata accessor for NextHourPrecipitationChartViewModel.Point(0) + 20);
  v47 = a1;
  v14 = *(a1 + v13);
  *v54 = v14;
  sub_1BCE1B150();

  sub_1BCE1B2D0();
  if (qword_1EBD070E8 != -1)
  {
    swift_once();
  }

  sub_1BCE1CFB0();
  sub_1BCE1CF90();
  sub_1BCE1B730();
  v51 = v54[0];
  v52 = v54[1];
  v53 = v55;
  v15 = MEMORY[0x1E697E3F0];
  v16 = MEMORY[0x1E695B230];
  v17 = MEMORY[0x1E697E3E0];
  v18 = v40;
  sub_1BCE1B010();
  sub_1BCA5A2B8(v54);
  (*(v38 + 8))(v7, v18);
  *&v51 = v18;
  *(&v51 + 1) = v15;
  *&v52 = v16;
  *(&v52 + 1) = v17;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v20 = v37;
  v21 = v41;
  sub_1BCE1B070();
  (*(v39 + 8))(v9, v21);
  if (qword_1EBD07070 != -1)
  {
    swift_once();
  }

  v22 = qword_1EBD2A1C0;
  v23 = sub_1BCE18FB0();
  v24 = [v22 stringFromDate_];

  v25 = sub_1BCE1D280();
  v27 = v26;

  *&v51 = v25;
  *(&v51 + 1) = v27;
  v49 = v21;
  v50 = OpaqueTypeConformance2;
  v28 = swift_getOpaqueTypeConformance2();
  v29 = sub_1BC970820();
  v30 = MEMORY[0x1E69E6158];
  v31 = v43;
  v32 = v44;
  sub_1BCE1B030();

  (*(v42 + 8))(v20, v32);
  v49 = static NextHourPrecipitationChartViewModel.Point.accessibilityValueDescription(for:)(v14);
  v50 = v33;
  *&v51 = v32;
  *(&v51 + 1) = v30;
  *&v52 = v28;
  *(&v52 + 1) = v29;
  swift_getOpaqueTypeConformance2();
  v34 = v46;
  sub_1BCE1B040();

  return (*(v45 + 8))(v31, v34);
}

uint64_t sub_1BCB3B554@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v44 = a1;
  v50 = a2;
  v2 = sub_1BCE193E0();
  v48 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v38 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08E70);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v45 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v38 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07868);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v47 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v38 - v13;
  v15 = sub_1BCE19060();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v49 = &v38 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v38 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v38 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD09380);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v46 = &v38 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v51 = &v38 - v27;
  v42 = sub_1BCE1BD30();
  v41 = v28;
  v44 = *v44;
  sub_1BCA13FBC(v44, v9);
  HourPrecipitationChartView = type metadata accessor for NextHourPrecipitationChartViewModel.Point(0);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v9, 1, HourPrecipitationChartView);
  v39 = v4;
  v40 = v2;
  if (EnumTagSinglePayload == 1)
  {
    sub_1BC94C05C(v9, &qword_1EBD08E70);
    __swift_storeEnumTagSinglePayload(v14, 1, 1, v15);
    sub_1BCE197B0();
    Date.zeroSeconds.getter();
    v30 = *(v16 + 8);
    v30(v20, v15);
    if (__swift_getEnumTagSinglePayload(v14, 1, v15) != 1)
    {
      sub_1BC94C05C(v14, &qword_1EBD07868);
    }
  }

  else
  {
    (*(v16 + 16))(v20, v9, v15);
    sub_1BCB3BF5C(v9, type metadata accessor for NextHourPrecipitationChartViewModel.Point);
    sub_1BCE19390();
    sub_1BCE18F20();
    (*(v48 + 8))(v4, v2);
    v30 = *(v16 + 8);
    v30(v20, v15);
    __swift_storeEnumTagSinglePayload(v14, 0, 1, v15);
    (*(v16 + 32))(v23, v14, v15);
  }

  sub_1BCE1B150();

  v30(v23, v15);
  v42 = sub_1BCE1BD30();
  v31 = v45;
  sub_1BCA3F2CC(v44, v45);
  if (__swift_getEnumTagSinglePayload(v31, 1, HourPrecipitationChartView) == 1)
  {
    sub_1BC94C05C(v31, &qword_1EBD08E70);
    v32 = v47;
    __swift_storeEnumTagSinglePayload(v47, 1, 1, v15);
    sub_1BCE197B0();
    v33 = v49;
    Date.zeroSeconds.getter();
    v30(v20, v15);
    if (__swift_getEnumTagSinglePayload(v32, 1, v15) != 1)
    {
      sub_1BC94C05C(v32, &qword_1EBD07868);
    }
  }

  else
  {
    (*(v16 + 16))(v20, v31, v15);
    sub_1BCB3BF5C(v31, type metadata accessor for NextHourPrecipitationChartViewModel.Point);
    v34 = v16;
    v35 = v39;
    sub_1BCE19390();
    v36 = v47;
    sub_1BCE18F20();
    (*(v48 + 8))(v35, v40);
    v30(v20, v15);
    __swift_storeEnumTagSinglePayload(v36, 0, 1, v15);
    v33 = v49;
    (*(v34 + 32))(v49, v36, v15);
  }

  sub_1BCE1B150();

  v30(v33, v15);
  return sub_1BCE1B0E0();
}

uint64_t sub_1BCB3BC38()
{
  v0 = sub_1BCE1B170();
  MEMORY[0x1EEE9AC00](v0 - 8);
  v1 = sub_1BCE1B110();
  MEMORY[0x1EEE9AC00](v1 - 8);
  sub_1BCE1B100();
  sub_1BCE1B160();
  return sub_1BCE1B380();
}

unint64_t sub_1BCB3BD60()
{
  result = qword_1EBD09990;
  if (!qword_1EBD09990)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD09978);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD092E0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD09980);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD092D8);
    sub_1BC957184(&qword_1EBD09308, &qword_1EBD092D8);
    swift_getOpaqueTypeConformance2();
    sub_1BC957184(&qword_1EBD09988, &qword_1EBD09980);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD09990);
  }

  return result;
}

unint64_t sub_1BCB3BEF8()
{
  result = qword_1EBD09998;
  if (!qword_1EBD09998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD09998);
  }

  return result;
}

uint64_t sub_1BCB3BF5C(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_4();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1BCB3BFB4(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_4();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1BCB3C014@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for MoonTimeEvent();
  MEMORY[0x1EEE9AC00](v3 - 8);
  OUTLINED_FUNCTION_1_32(v4, v7);
  sub_1BCE19060();
  OUTLINED_FUNCTION_4();
  return (*(v5 + 32))(a1, v1);
}

uint64_t sub_1BCB3C0A8()
{
  type metadata accessor for MoonTimeEvent();
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_1_32(v2, v6);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  sub_1BCE19060();
  OUTLINED_FUNCTION_4();
  (*(v4 + 8))(v0);
  return 0x20001u >> (8 * EnumCaseMultiPayload);
}

uint64_t static MoonTimeEvent.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v42 = a2;
  v41 = sub_1BCE19060();
  v3 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41);
  v40 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v39 - v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v39 - v9;
  type metadata accessor for MoonTimeEvent();
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v39 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v39 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD099E8);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v22 = &v39 - v21;
  v24 = *(v23 + 56);
  sub_1BCB3C54C(a1, &v39 - v21);
  sub_1BCB3C54C(v42, &v22[v24]);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_1BCB3C54C(v22, v16);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        OUTLINED_FUNCTION_2_31();
        v26 = v41;
        v27(v7);
        v28 = sub_1BCE19010();
        v29 = *(v3 + 8);
        v29(v7, v26);
        v30 = v16;
        v31 = v26;
LABEL_9:
        v29(v30, v31);
LABEL_13:
        sub_1BCB3C618(v22);
        return v28 & 1;
      }

      v13 = v16;
    }

    else
    {
      sub_1BCB3C54C(v22, v13);
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        OUTLINED_FUNCTION_2_31();
        v33 = v40;
        v32 = v41;
        v34(v40);
        v28 = sub_1BCE19010();
        v29 = *(v3 + 8);
        v29(v33, v32);
        v30 = v13;
        v31 = v32;
        goto LABEL_9;
      }
    }
  }

  else
  {
    sub_1BCB3C54C(v22, v19);
    if (!swift_getEnumCaseMultiPayload())
    {
      OUTLINED_FUNCTION_2_31();
      v35 = v41;
      v36(v10);
      v28 = sub_1BCE19010();
      v37 = *(v3 + 8);
      v37(v10, v35);
      v37(v19, v35);
      goto LABEL_13;
    }

    v13 = v19;
  }

  (*(v3 + 8))(v13, v41);
  sub_1BCB3C5B0(v22);
  v28 = 0;
  return v28 & 1;
}

uint64_t type metadata accessor for MoonTimeEvent()
{
  result = qword_1EBD099F0;
  if (!qword_1EBD099F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1BCB3C54C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MoonTimeEvent();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BCB3C5B0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD099E8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1BCB3C618(uint64_t a1)
{
  v2 = type metadata accessor for MoonTimeEvent();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1BCB3C678()
{
  sub_1BCB3C6DC();
  if (v0 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
  }
}

void sub_1BCB3C6DC()
{
  if (!qword_1EDA1EBF0)
  {
    v0 = sub_1BCE19060();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDA1EBF0);
    }
  }
}

__n128 sub_1BCB3C724@<Q0>(uint64_t a1@<X8>)
{
  v2 = a1 + 1436;
  sub_1BCA111D0();
  v4 = v3;
  sub_1BCA111D0();
  *a1 = 0x4006666666666666;
  *(a1 + 8) = 1;
  *(a1 + 16) = 0x3FF0000000000000;
  *(a1 + 24) = 48;
  *(a1 + 32) = xmmword_1BCE3BED0;
  *(a1 + 48) = xmmword_1BCE3BED0;
  *(a1 + 64) = 0x42C8000042480000;
  *(a1 + 72) = 0xC396000000000000;
  *(a1 + 80) = xmmword_1BCE3F410;
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
  *(a1 + 240) = 0x41C8000040E85937;
  *(a1 + 248) = 1137999872;
  *(a1 + 256) = 0x3E6B851F3DF5C28FLL;
  *(a1 + 264) = 0x4000000041200000;
  *(a1 + 272) = 1084227584;
  __asm { FMOV            V0.4S, #1.0 }

  *(a1 + 288) = xmmword_1BCE3C7C0;
  *(a1 + 304) = result;
  *(a1 + 320) = 0x4448000041880000;
  *(a1 + 328) = 0x3E2E147B3DCCCCCDLL;
  *(a1 + 336) = 0x3F80000041000000;
  *(a1 + 352) = xmmword_1BCE3C7C0;
  *(a1 + 368) = xmmword_1BCE3C700;
  *(a1 + 384) = 0;
  *(a1 + 388) = 0x3B449BA63F800000;
  *(a1 + 400) = xmmword_1BCE3C670;
  *(a1 + 416) = 0x3F0000003F000000;
  *(a1 + 424) = 30;
  *(a1 + 432) = xmmword_1BCE3EB70;
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
  *(a1 + 608) = 0x4100000040A00000;
  *(a1 + 624) = xmmword_1BCE3C700;
  *(a1 + 640) = xmmword_1BCE3D880;
  *(a1 + 656) = 0x4220000041200000;
  *(a1 + 664) = 0x3FC000003E99999ALL;
  *(a1 + 672) = 0x40A000003F800000;
  *(a1 + 688) = result;
  *(a1 + 704) = 1065353216;
  *(a1 + 712) = 0x3F6666663E99999ALL;
  *(a1 + 720) = 0x4182A3D741600000;
  *(a1 + 728) = 1066369312;
  *(a1 + 736) = 1;
  *(a1 + 744) = 4;
  *(a1 + 752) = xmmword_1BCE3EB80;
  *(a1 + 768) = 0x617274736F746C41;
  *(a1 + 776) = 0xEF53202D20737574;
  *(a1 + 784) = 0xD000000000000013;
  *(a1 + 792) = 0x80000001BCE792E0;
  *(a1 + 800) = 6;
  *(a1 + 816) = result;
  *(a1 + 832) = 1065353216;
  *(a1 + 840) = 0x3F19999A3F000000;
  *(a1 + 848) = 0x419C000041680000;
  *(a1 + 856) = 1097646976;
  *(a1 + 864) = 1;
  *(a1 + 872) = 6;
  *(a1 + 880) = xmmword_1BCE51330;
  *(a1 + 896) = 0x2073756C756D7543;
  *(a1 + 904) = 0xEB000000004C202DLL;
  *(a1 + 912) = 0x5F73756C756D7543;
  *(a1 + 920) = 0xEF4C656C676E6953;
  *(a1 + 928) = 10;
  *(a1 + 944) = result;
  *(a1 + 960) = 1065353216;
  *(a1 + 968) = 0x3F4CCCCD3E4CCCCDLL;
  *(a1 + 976) = 0x4120000041000000;
  *(a1 + 984) = 1083393800;
  *(a1 + 992) = 1;
  *(a1 + 1000) = 4;
  *(a1 + 1008) = xmmword_1BCE3EBA0;
  *(a1 + 1024) = 0x2073756C756D7543;
  *(a1 + 1032) = 0xEB000000004D202DLL;
  *(a1 + 1040) = 0x5F73756C756D7543;
  *(a1 + 1048) = 0xEF4D656C676E6953;
  *(a1 + 1056) = 10;
  *(a1 + 1072) = result;
  *(a1 + 1088) = 1065353216;
  *(a1 + 1096) = 0x3F8000003F000000;
  *(a1 + 1104) = 0x40A9999940975C29;
  *(a1 + 1112) = 1066171200;
  *(a1 + 1120) = 0;
  *(a1 + 1128) = 6;
  *(a1 + 1136) = xmmword_1BCE3D8A0;
  *(a1 + 1152) = 0x617274736F746C41;
  *(a1 + 1160) = 0xEF4C202D20737574;
  *(a1 + 1168) = 0xD000000000000013;
  *(a1 + 1176) = 0x80000001BCE798E0;
  *(a1 + 1184) = 6;
  *(a1 + 1200) = result;
  *(a1 + 1216) = xmmword_1BCE3E0C0;
  *(a1 + 1232) = 0;
  *(a1 + 1236) = 1;
  *(a1 + 1240) = 0x73757461727453;
  *(a1 + 1248) = 0xE700000000000000;
  *(a1 + 1256) = 0x5F73757461727453;
  *(a1 + 1264) = 0xEF74656B6E616C42;
  *(a1 + 1272) = 8;
  *(a1 + 1280) = 0;
  *(a1 + 1288) = 0x3E9999993E6B851FLL;
  *(a1 + 1296) = 0x4220000041F9999ALL;
  *(a1 + 1304) = 1086001775;
  *(a1 + 1312) = result;
  *(a1 + 1328) = result;
  *(a1 + 1344) = 0x3FCCCCCD40C66666;
  *(a1 + 1352) = 1082130432;
  *(a1 + 1360) = 0;
  *(a1 + 1368) = 5;
  *(a1 + 1408) = 0u;
  *(a1 + 1392) = 0u;
  *(a1 + 1376) = 0u;
  *(a1 + 1424) = 0x3F99999A3ECCCCCDLL;
  *(a1 + 1432) = 1;
  *v2 = xmmword_1BCE3BFC0;
  *(a1 + 1456) = 0x42DC000042B40000;
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
  __asm { FMOV            V1.2S, #-30.0 }

  *(a1 + 1616) = -_D1;
  *(a1 + 1624) = 0x40000000;
  *(a1 + 1628) = 0;
  *(a1 + 1630) = 1;
  *(a1 + 1637) = 0;
  *(a1 + 1631) = 0;
  *(v2 + 209) = 0x300000100000101;
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
  *(a1 + 1760) = 13;
  *(a1 + 1776) = xmmword_1BCE3D8B0;
  *(a1 + 1792) = xmmword_1BCE3D8C0;
  *(a1 + 1808) = xmmword_1BCE3C7A0;
  *(a1 + 1824) = 1;
  *(a1 + 1828) = xmmword_1BCE3EBB0;
  *(a1 + 1844) = 1036831949;
  *(a1 + 1848) = 0x4100000041200000;
  *(a1 + 1856) = 3;
  *(a1 + 1864) = 1056964608;
  *(a1 + 1872) = 0x400AE1483F970A3DLL;
  *(a1 + 1880) = 1110704128;
  *(a1 + 1888) = result;
  *(a1 + 1904) = 0x3E4CCCCD40A00000;
  *(a1 + 1912) = 1101004800;
  *(a1 + 1920) = 0;
  *(a1 + 1928) = 1106247680;
  *(a1 + 1936) = result;
  *(a1 + 1952) = 1077936128;
  *(a1 + 1960) = 0x420C000041C80000;
  *(a1 + 1968) = xmmword_1BCE3EBC0;
  *(a1 + 1984) = 0x3F80000000000000;
  *(a1 + 1992) = 1061158912;
  *(a1 + 2000) = 0x3F6666663E4CCCCDLL;
  *(a1 + 2008) = 0x3F6666663F333333;
  *(a1 + 2016) = xmmword_1BCE3F500;
  *(a1 + 2096) = 0u;
  *(a1 + 2080) = 0u;
  *(a1 + 2064) = 0u;
  *(a1 + 2048) = 0u;
  *(a1 + 2032) = 0u;
  *(a1 + 2112) = 1056964608;
  *(a1 + 2120) = 0x3E23D70A3D8F5C29;
  *(a1 + 2128) = 0x405EB8523FC00000;
  *(a1 + 2136) = 0x4040000040000000;
  *(a1 + 2144) = -1046478848;
  *(a1 + 2160) = result;
  *(a1 + 2176) = result;
  *(a1 + 2192) = 1049582633;
  *(a1 + 2200) = 10;
  *(a1 + 2208) = 0x40A000003FC00000;
  *(a1 + 2224) = xmmword_1BCE3C090;
  *(a1 + 2240) = xmmword_1BCE3C0A0;
  *(a1 + 2256) = result;
  *(a1 + 2304) = 0;
  *(a1 + 2288) = 0u;
  *(a1 + 2272) = 0u;
  *(a1 + 2312) = v4;
  *(a1 + 2320) = v11;
  return result;
}

double NextHourPrecipitationChartViewStyle.init()@<D0>(uint64_t a1@<X8>)
{
  if (qword_1EBD070F0 != -1)
  {
    OUTLINED_FUNCTION_0_35();
  }

  *a1 = MEMORY[0x1BFB2F5B0](v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD09A20);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1BCE43610;
  if (qword_1EBD070F8 != -1)
  {
    OUTLINED_FUNCTION_5_29();
  }

  *(v3 + 32) = sub_1BCE1CAE0();
  if (qword_1EBD07100 != -1)
  {
    OUTLINED_FUNCTION_4_28();
  }

  *(v3 + 40) = sub_1BCE1CAE0();
  if (qword_1EBD07108 != -1)
  {
    OUTLINED_FUNCTION_3_41();
  }

  *(v3 + 48) = sub_1BCE1CAE0();
  *(a1 + 8) = MEMORY[0x1BFB2F5B0](v3);
  *(a1 + 16) = 0;
  sub_1BCE1CAB0();
  v4 = sub_1BCE1CAE0();

  *(a1 + 24) = v4;
  result = 0.0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  return result;
}

uint64_t sub_1BCB3D048@<X0>(uint64_t a1@<X8>)
{
  if (*(v1 + 64))
  {
    v3 = *(v1 + 72);
    v4 = *(v1 + 56);
    v5 = *(v1 + 48);
    v6 = *(v1 + 52);
    v7 = *(v1 + 64);
    v8 = *(v1 + 40);
  }

  else
  {
    sub_1BCE1B520();
    v8 = v10;
    v5 = v11;
    v6 = v12;
    v4 = v13;
    v7 = v14;
    v3 = v15;
    *(v1 + 40) = v10;
    *(v1 + 48) = v11 | (v12 << 32);
    *(v1 + 56) = v13;
    *(v1 + 64) = v14;
    *(v1 + 72) = v15;
  }

  *a1 = v8;
  *(a1 + 8) = v5;
  *(a1 + 12) = v6;
  *(a1 + 16) = v4;
  *(a1 + 24) = v7;
  *(a1 + 32) = v3;
  return result;
}

uint64_t sub_1BCB3D120()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD09A20);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1BCE43610;
  if (qword_1EBD070F8 != -1)
  {
    swift_once();
  }

  *(v0 + 32) = qword_1EBD09A08;
  v1 = qword_1EBD07100;

  if (v1 != -1)
  {
    swift_once();
  }

  *(v0 + 40) = qword_1EBD09A10;
  v2 = qword_1EBD07108;

  if (v2 != -1)
  {
    swift_once();
  }

  *(v0 + 48) = qword_1EBD09A18;
  qword_1EBD09A00 = v0;
}

uint64_t sub_1BCB3D248()
{
  v1 = sub_1BCE1CA30();
  OUTLINED_FUNCTION_2();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_2_0();
  v7 = v6 - v5;
  if (*(v0 + 16))
  {
    v8 = *(v0 + 16);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD09A20);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_1BCE43610;
    if (qword_1EBD070F8 != -1)
    {
      OUTLINED_FUNCTION_5_29();
    }

    Color.rgbaComponents.getter();
    v10 = *(v3 + 104);
    (v10)(v7, *MEMORY[0x1E69814D8], v1);
    *(v9 + 32) = OUTLINED_FUNCTION_2_32();
    if (qword_1EBD07100 != -1)
    {
      OUTLINED_FUNCTION_4_28();
    }

    Color.rgbaComponents.getter();
    v11 = OUTLINED_FUNCTION_6_26();
    v10(v11);
    *(v9 + 40) = OUTLINED_FUNCTION_2_32();
    if (qword_1EBD07108 != -1)
    {
      OUTLINED_FUNCTION_3_41();
    }

    Color.rgbaComponents.getter();
    v12 = OUTLINED_FUNCTION_6_26();
    v10(v12);
    *(v9 + 48) = OUTLINED_FUNCTION_2_32();
    v8 = MEMORY[0x1BFB2F5B0](v9);
    *(v0 + 16) = v8;
  }

  return v8;
}

uint64_t sub_1BCB3D460()
{
  v0 = sub_1BCE1CA30();
  v1 = MEMORY[0x1EEE9AC00](v0);
  (*(v3 + 104))(&v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x1E69814D8], v1);
  result = sub_1BCE1CB30();
  qword_1EBD09A08 = result;
  return result;
}

uint64_t sub_1BCB3D544()
{
  result = sub_1BCE1CA80();
  qword_1EBD09A10 = result;
  return result;
}

uint64_t sub_1BCB3D564()
{
  result = sub_1BCE1CA70();
  qword_1EBD09A18 = result;
  return result;
}

uint64_t sub_1BCB3D584(_BYTE *a1)
{
  v2 = sub_1BCE1CA30();
  OUTLINED_FUNCTION_2();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_2_0();
  v8 = v7 - v6;
  v9 = sub_1BCE1B4E0();
  OUTLINED_FUNCTION_2();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_2_0();
  v15 = v14 - v13;
  if (*a1 == 2)
  {
    (*(v11 + 104))(v15, *MEMORY[0x1E697DBB8], v9);
    v16 = sub_1BCE1B4D0();
    (*(v11 + 8))(v15, v9);
    if (v16)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD09A20);
      v17 = swift_allocObject();
      *(v17 + 16) = xmmword_1BCE43610;
      v18 = objc_opt_self();
      v19 = [v18 systemBlueColor];
      *(v17 + 32) = sub_1BCE1CA20();
      (*(v4 + 104))(v8, *MEMORY[0x1E69814D8], v2);
      *(v17 + 40) = sub_1BCE1CB30();
      v20 = [v18 systemCyanColor];
      *(v17 + 48) = sub_1BCE1CA20();
    }

    else
    {
      if (qword_1EBD070F0 != -1)
      {
        OUTLINED_FUNCTION_0_35();
      }

      return sub_1BCB3D824(v21);
    }
  }

  else
  {
    if (qword_1EBD070F0 != -1)
    {
      OUTLINED_FUNCTION_0_35();
    }

    v17 = qword_1EBD09A00;
  }

  return v17;
}

uint64_t sub_1BCB3D824(uint64_t result)
{
  v1 = result;
  v2 = *(result + 16);
  if (v2 < 2)
  {
    return v1;
  }

  v3 = v2 >> 1;
  v4 = v2 + 3;
  for (i = 4; ; ++i)
  {
    if (i == v4)
    {
      goto LABEL_11;
    }

    v6 = *(v1 + 16);
    if (i - 4 >= v6)
    {
      break;
    }

    if (v4 - 4 >= v6)
    {
      goto LABEL_14;
    }

    v7 = *(v1 + 8 * i);
    v8 = *(v1 + 8 * v4);

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v1 = sub_1BCB3D9D4(v1);
    }

    *(v1 + 8 * i) = v8;

    if (v4 - 4 >= *(v1 + 16))
    {
      goto LABEL_15;
    }

    *(v1 + 8 * v4) = v7;

LABEL_11:
    --v4;
    if (!--v3)
    {
      return v1;
    }
  }

  __break(1u);
LABEL_14:
  __break(1u);
LABEL_15:
  __break(1u);
  return result;
}

uint64_t NextHourPrecipitationChartViewStyle.markDimension(for:)(_BYTE *a1)
{
  if (*a1 == 2)
  {
    return 0x400C000000000000;
  }

  else
  {
    return 0x4008000000000000;
  }
}

uint64_t sub_1BCB3D930(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 80))
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

uint64_t sub_1BCB3D970(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1BCB3D9FC(uint64_t a1@<X8>)
{
  v2 = a1 + 1436;
  sub_1BCB3E1CC();
  v4 = v3;
  sub_1BCB4016C();
  *a1 = 0x4006666666666666;
  *(a1 + 8) = 5;
  *(a1 + 16) = 0x3FF0000000000000;
  *(a1 + 24) = 30;
  *(a1 + 32) = xmmword_1BCE3BED0;
  *(a1 + 48) = xmmword_1BCE3BED0;
  *(a1 + 64) = 0x42D2000042480000;
  *(a1 + 72) = 0xC409800000000000;
  *(a1 + 80) = xmmword_1BCE3E530;
  *(a1 + 96) = xmmword_1BCE3BEF0;
  *(a1 + 112) = 0x3E8000003DF5C28FLL;
  __asm { FMOV            V0.4S, #1.0 }

  *(a1 + 128) = _Q0;
  *(a1 + 144) = _Q0;
  *(a1 + 160) = xmmword_1BCE3BF00;
  *(a1 + 176) = 1153138688;
  *(a1 + 184) = 0x3E4CCCCD3DA3D70ALL;
  *(a1 + 192) = _Q0;
  *(a1 + 208) = _Q0;
  *(a1 + 224) = xmmword_1BCE3C660;
  *(a1 + 240) = 0x4140000040A00000;
  *(a1 + 248) = 1132068864;
  *(a1 + 256) = 0x3E4CCCCD3DE147AELL;
  *(a1 + 264) = 0x40A0000041700000;
  *(a1 + 272) = 1101004800;
  *(a1 + 288) = _Q0;
  *(a1 + 304) = _Q0;
  *(a1 + 320) = 0x4348000040C00000;
  *(a1 + 328) = 0x3E99999A3E19999ALL;
  *(a1 + 336) = 0x3F00000040A00000;
  *(a1 + 352) = _Q0;
  *(a1 + 368) = _Q0;
  *(a1 + 384) = 0;
  *(a1 + 388) = 0x3AC49BA63E4CCCCDLL;
  *(a1 + 400) = xmmword_1BCE423E0;
  *(a1 + 416) = 0x3F0000003F000000;
  *(a1 + 424) = 15;
  *(a1 + 432) = xmmword_1BCE43630;
  *(a1 + 448) = 0x3E4CCCCD3DCCCCCDLL;
  *(a1 + 464) = _Q0;
  *(a1 + 480) = _Q0;
  *(a1 + 496) = 0x43FA000040400000;
  *(a1 + 504) = 1116471296;
  *(a1 + 512) = 0x3E8000003DF5C28FLL;
  *(a1 + 528) = _Q0;
  *(a1 + 544) = _Q0;
  *(a1 + 560) = 0x4248000044BB8000;
  *(a1 + 568) = 0x3E4CCCCD3DA3D70ALL;
  *(a1 + 576) = _Q0;
  *(a1 + 592) = _Q0;
  *(a1 + 608) = 0x40E0000040C00000;
  *(a1 + 624) = xmmword_1BCE3C700;
  *(a1 + 640) = xmmword_1BCE3D880;
  *(a1 + 656) = 0x419DAE1441200000;
  *(a1 + 664) = 0x402000003E99999ALL;
  *(a1 + 672) = 0x40C0000040400000;
  *(a1 + 688) = xmmword_1BCE3C700;
  *(a1 + 704) = 1062836634;
  __asm { FMOV            V2.2S, #1.0 }

  *(a1 + 712) = _D2;
  *(a1 + 720) = 0x41E0000041900000;
  *(a1 + 728) = 1096175111;
  *(a1 + 736) = 1;
  *(a1 + 744) = 4;
  *(a1 + 752) = xmmword_1BCE3BF40;
  *(a1 + 768) = 0xD000000000000010;
  *(a1 + 776) = 0x80000001BCE7A280;
  *(a1 + 784) = 0xD000000000000014;
  *(a1 + 792) = 0x80000001BCE7A2A0;
  *(a1 + 800) = 8;
  *(a1 + 816) = _Q0;
  *(a1 + 832) = 1062836634;
  *(a1 + 840) = 0x3F0000003ECCCCCDLL;
  *(a1 + 848) = 0x41C0000041900000;
  *(a1 + 856) = 1099562024;
  *(a1 + 864) = 1;
  *(a1 + 872) = 4;
  *(a1 + 880) = xmmword_1BCE3D890;
  *(a1 + 896) = 0x2D20737572726943;
  *(a1 + 904) = 0xEA00000000005320;
  strcpy((a1 + 912), "Cirrus_SingleS");
  *(a1 + 927) = -18;
  *(a1 + 928) = 6;
  *(a1 + 944) = _Q0;
  *(a1 + 960) = 1062836634;
  *(a1 + 968) = 0x3F8000003F000000;
  *(a1 + 976) = 0x413074BD411B1CABLL;
  *(a1 + 984) = 1082558462;
  *(a1 + 992) = 1;
  *(a1 + 1000) = 4;
  *(a1 + 1008) = xmmword_1BCE3C6F0;
  *(a1 + 1024) = 0x2073756C756D7543;
  *(a1 + 1032) = 0xEB000000004D202DLL;
  *(a1 + 1040) = 0x5F73756C756D7543;
  *(a1 + 1048) = 0xEF4D656C676E6953;
  *(a1 + 1056) = 10;
  *(a1 + 1072) = xmmword_1BCE43640;
  *(a1 + 1088) = 1062836634;
  *(a1 + 1096) = 0x3F8000003F000000;
  *(a1 + 1104) = 0x401333333FDCCCCDLL;
  *(a1 + 1112) = 0;
  *(a1 + 1120) = 1;
  *(a1 + 1128) = 4;
  *(a1 + 1136) = xmmword_1BCE3D8A0;
  *(a1 + 1152) = 0x617274736F746C41;
  *(a1 + 1160) = 0xEF53202D20737574;
  *(a1 + 1168) = 0xD000000000000013;
  *(a1 + 1176) = 0x80000001BCE792E0;
  *(a1 + 1184) = 6;
  *(a1 + 1200) = xmmword_1BCE43650;
  *(a1 + 1216) = xmmword_1BCE51430;
  *(a1 + 1232) = 0;
  *(a1 + 1236) = 1;
  *(a1 + 1240) = 0x737572726943;
  *(a1 + 1248) = 0xE600000000000000;
  strcpy((a1 + 1256), "Cirrus_Blanket");
  *(a1 + 1271) = -18;
  *(a1 + 1272) = 4;
  *(a1 + 1280) = 0;
  *(a1 + 1288) = 0x400000003F800000;
  *(a1 + 1296) = 0x41C8000042C80000;
  *(a1 + 1304) = 0;
  *(a1 + 1312) = _Q0;
  *(a1 + 1328) = _Q0;
  *(a1 + 1344) = 0;
  *(a1 + 1352) = 0x40000000;
  *(a1 + 1360) = 0;
  *(a1 + 1368) = 1;
  *(a1 + 1376) = xmmword_1BCE43670;
  *(a1 + 1392) = xmmword_1BCE43680;
  *(a1 + 1408) = xmmword_1BCE43690;
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
  *(a1 + 1552) = xmmword_1BCE3C770;
  *(a1 + 1568) = 0x4248000042200000;
  *(a1 + 1584) = _Q0;
  *(a1 + 1600) = _Q0;
  __asm { FMOV            V3.2S, #-30.0 }

  *(a1 + 1616) = -_D3;
  *(a1 + 1624) = 0x40000000;
  *(a1 + 1628) = 0x1000000000000;
  *(a1 + 1636) = 16843009;
  *(a1 + 1644) = 1;
  *(v2 + 210) = 16843009;
  *(a1 + 1650) = 0;
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
  *(a1 + 1776) = xmmword_1BCE3CB30;
  *(a1 + 1792) = xmmword_1BCE436A0;
  *(a1 + 1808) = xmmword_1BCE436B0;
  *(a1 + 1824) = 1;
  *(a1 + 1828) = xmmword_1BCE42400;
  *(a1 + 1844) = 1036831949;
  *(a1 + 1848) = 0x4100000041200000;
  *(a1 + 1856) = 0;
  *(a1 + 1864) = 1041865114;
  *(a1 + 1872) = 0x400AE1483F970A3DLL;
  *(a1 + 1880) = 1109393408;
  *(a1 + 1888) = _Q0;
  *(a1 + 1904) = 0x3E4CCCCD40A00000;
  *(a1 + 1912) = 1101004800;
  *(a1 + 1920) = 0;
  *(a1 + 1928) = 1107820544;
  *(a1 + 1936) = xmmword_1BCE436C0;
  *(a1 + 1952) = 1065353216;
  *(a1 + 1960) = 0x420C000041C80000;
  *(a1 + 1968) = xmmword_1BCE4A260;
  *(a1 + 1984) = 0x3F80000000000000;
  *(a1 + 1992) = 1061158912;
  *(a1 + 2000) = 0x4019999A3F800000;
  *(a1 + 2008) = 0x404000004019999ALL;
  *(a1 + 2016) = xmmword_1BCE3C7E0;
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
  *(a1 + 2160) = _Q0;
  *(a1 + 2176) = _Q0;
  *(a1 + 2192) = 1061997773;
  *(a1 + 2200) = 7;
  *(a1 + 2208) = 0x41A000003F4CCCCDLL;
  *(a1 + 2224) = xmmword_1BCE436D0;
  *(a1 + 2240) = xmmword_1BCE51440;
  *(a1 + 2256) = _Q0;
  *(a1 + 2304) = 0;
  *(a1 + 2288) = 0u;
  *(a1 + 2272) = 0u;
  *(a1 + 2312) = v4;
  *(a1 + 2320) = v12;
}

__n128 sub_1BCB3E1CC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07858);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1BCE3C820;
  *(v0 + 32) = 0xC056800000000000;
  *(v0 + 40) = 0;
  *(v0 + 48) = xmmword_1BCE3C830;
  *(v0 + 64) = 0x432A000043480000;
  *(v0 + 72) = 1040242952;
  *(v0 + 80) = xmmword_1BCE3C840;
  *(v0 + 96) = xmmword_1BCE3C850;
  *(v0 + 112) = xmmword_1BCE3C860;
  *(v0 + 128) = xmmword_1BCE3C870;
  *(v0 + 144) = xmmword_1BCE3C880;
  *(v0 + 160) = xmmword_1BCE3C890;
  __asm { FMOV            V0.2D, #1.0 }

  *(v0 + 176) = result;
  *(v0 + 192) = xmmword_1BCE3C8C0;
  __asm { FMOV            V16.2D, #0.5 }

  *(v0 + 208) = _Q16;
  *(v0 + 224) = xmmword_1BCE3D910;
  *(v0 + 240) = result;
  *(v0 + 256) = result;
  *(v0 + 272) = result;
  *(v0 + 288) = result;
  *(v0 + 304) = result;
  *(v0 + 320) = result;
  *(v0 + 336) = xmmword_1BCE3CCB0;
  *(v0 + 352) = xmmword_1BCE3E320;
  *(v0 + 368) = xmmword_1BCE436F0;
  *(v0 + 384) = 0x3F4CCCCD3F666666;
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
  *(v0 + 1168) = 0x4170000042480000;
  *(v0 + 1176) = 0x3FF0000000000000;
  *(v0 + 1184) = result;
  *(v0 + 1200) = result;
  *(v0 + 1216) = result;
  *(v0 + 1232) = 0x3FF0000000000000;
  *(v0 + 1248) = 0xC04E000000000000;
  *(v0 + 1256) = 0;
  *(v0 + 1257) = *v12;
  *(v0 + 1260) = *&v12[3];
  *(v0 + 1264) = xmmword_1BCE3C830;
  *(v0 + 1280) = 0x432A000043480000;
  *(v0 + 1288) = 1040242952;
  *(v0 + 1296) = xmmword_1BCE3C840;
  *(v0 + 1312) = xmmword_1BCE3C850;
  *(v0 + 1328) = xmmword_1BCE3C860;
  *(v0 + 1344) = xmmword_1BCE3C870;
  *(v0 + 1360) = xmmword_1BCE3C880;
  *(v0 + 1376) = xmmword_1BCE3C890;
  *(v0 + 1392) = result;
  *(v0 + 1408) = xmmword_1BCE3C8C0;
  *(v0 + 1424) = _Q16;
  *(v0 + 1440) = xmmword_1BCE3D910;
  *(v0 + 1456) = result;
  *(v0 + 1472) = result;
  *(v0 + 1488) = result;
  *(v0 + 1504) = result;
  *(v0 + 1520) = result;
  *(v0 + 1536) = result;
  *(v0 + 1552) = xmmword_1BCE3CCB0;
  *(v0 + 1568) = xmmword_1BCE3E320;
  *(v0 + 1584) = xmmword_1BCE436F0;
  *(v0 + 1600) = 0x3F4CCCCD3F666666;
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
  *(v0 + 2384) = 0x4170000042480000;
  *(v0 + 2392) = 0x3FF0000000000000;
  *(v0 + 2400) = result;
  *(v0 + 2416) = result;
  *(v0 + 2432) = result;
  *(v0 + 2448) = 0x3FF0000000000000;
  *(v0 + 2464) = 0xC028000000000000;
  *(v0 + 2472) = 0;
  *(v0 + 2473) = *v13;
  *(v0 + 2476) = *&v13[3];
  *(v0 + 2480) = xmmword_1BCE3DC90;
  *(v0 + 2496) = 0x4396000042C80000;
  *(v0 + 2504) = 1036831949;
  *(v0 + 2512) = xmmword_1BCE3C970;
  *(v0 + 2528) = result;
  *(v0 + 2544) = xmmword_1BCE3DEC0;
  *(v0 + 2560) = xmmword_1BCE3C990;
  *(v0 + 2576) = xmmword_1BCE3C9A0;
  *(v0 + 2592) = result;
  *(v0 + 2608) = result;
  *(v0 + 2624) = xmmword_1BCE3C8C0;
  *(v0 + 2640) = _Q16;
  *(v0 + 2656) = xmmword_1BCE3DCB0;
  *(v0 + 2672) = result;
  *(v0 + 2688) = result;
  *(v0 + 2704) = vdupq_n_s64(0x3FEFEDA5C0000000uLL);
  *(v0 + 2720) = xmmword_1BCE43700;
  *(v0 + 2736) = xmmword_1BCE3C9E0;
  *(v0 + 2752) = xmmword_1BCE3CBC0;
  v7 = vdupq_n_s64(0x3FEF9F9F80000000uLL);
  *(v0 + 2768) = v7;
  *(v0 + 2784) = xmmword_1BCE43710;
  v8 = vdupq_n_s32(0x3F4CCCCDu);
  *(v0 + 2800) = v8;
  *(v0 + 2816) = v8.i64[0];
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
  *(v0 + 3600) = 0x4170000042480000;
  *(v0 + 3608) = 0x3FF0000000000000;
  *(v0 + 3616) = result;
  *(v0 + 3632) = result;
  *(v0 + 3648) = result;
  *(v0 + 3664) = 0x3FF0000000000000;
  *(v0 + 3680) = 0xC018000000000000;
  *(v0 + 3688) = 0;
  *(v0 + 3689) = *v14;
  *(v0 + 3692) = *&v14[3];
  *(v0 + 4656) = result;
  *(v0 + 4848) = result;
  *(v0 + 4864) = result;
  *(v0 + 4672) = result;
  *(v0 + 4816) = 0x4170000042480000;
  *(v0 + 4824) = 0x3FF0000000000000;
  *(v0 + 4832) = result;
  *(v0 + 4752) = xmmword_1BCE3CB20;
  *(v0 + 4768) = xmmword_1BCE3CB10;
  *(v0 + 4784) = result;
  *(v0 + 4800) = result;
  *(v0 + 4688) = result;
  *(v0 + 4704) = result;
  *(v0 + 4720) = xmmword_1BCE3CB00;
  *(v0 + 4736) = xmmword_1BCE3CB10;
  *(v0 + 4560) = result;
  *(v0 + 4576) = result;
  *(v0 + 4592) = result;
  *(v0 + 4608) = result;
  *(v0 + 4624) = result;
  *(v0 + 4640) = result;
  *(v0 + 4464) = result;
  *(v0 + 4480) = result;
  *(v0 + 4496) = result;
  *(v0 + 4512) = result;
  *(v0 + 4528) = result;
  *(v0 + 4544) = result;
  *(v0 + 4368) = result;
  *(v0 + 4384) = result;
  *(v0 + 4400) = result;
  *(v0 + 4416) = result;
  *(v0 + 4432) = result;
  *(v0 + 4448) = result;
  *(v0 + 4272) = result;
  *(v0 + 4288) = result;
  *(v0 + 4304) = result;
  *(v0 + 4320) = result;
  *(v0 + 4336) = result;
  *(v0 + 4352) = result;
  *(v0 + 4192) = result;
  *(v0 + 4208) = result;
  *(v0 + 4224) = result;
  *(v0 + 4240) = result;
  *(v0 + 4256) = result;
  *(v0 + 4112) = result;
  *(v0 + 4128) = result;
  *(v0 + 4144) = result;
  *(v0 + 4160) = result;
  *(v0 + 4176) = result;
  *(v0 + 3696) = xmmword_1BCE3CB30;
  *(v0 + 4072) = 1065353216;
  *(v0 + 4080) = result;
  *(v0 + 4096) = result;
  v9 = vdupq_n_s32(0x3F59999Au);
  *(v0 + 4048) = result;
  *(v0 + 4064) = 0;
  *(v0 + 4000) = xmmword_1BCE3CBB0;
  *(v0 + 4016) = v9;
  *(v0 + 4032) = 1062836634;
  *(v0 + 4040) = 0x3FF0000000000000;
  *(v0 + 3712) = 0x447A000044160000;
  *(v0 + 3936) = xmmword_1BCE3C8C0;
  *(v0 + 3952) = result;
  *(v0 + 3968) = xmmword_1BCE3C8C0;
  *(v0 + 3984) = xmmword_1BCE3CCB0;
  *(v0 + 3904) = result;
  *(v0 + 3920) = result;
  *(v0 + 3856) = vdupq_n_s64(0x3FE88B6D00000000uLL);
  *(v0 + 3872) = xmmword_1BCE3D960;
  *(v0 + 3888) = result;
  *(v0 + 3760) = xmmword_1BCE3CA70;
  *(v0 + 3776) = xmmword_1BCE3CA80;
  *(v0 + 3824) = result;
  *(v0 + 3840) = xmmword_1BCE3C8C0;
  *(v0 + 3792) = xmmword_1BCE43720;
  *(v0 + 3808) = xmmword_1BCE43730;
  *(v0 + 3720) = 1061997773;
  *(v0 + 3728) = xmmword_1BCE3CA60;
  *(v0 + 3744) = result;
  *(v0 + 4880) = 0x3FF0000000000000;
  *(v0 + 4896) = 0;
  *(v0 + 4904) = 0;
  *(v0 + 4905) = *v15;
  *(v0 + 4908) = *&v15[3];
  *(v0 + 4912) = xmmword_1BCE3CB30;
  *(v0 + 4928) = 0x44C8000044160000;
  *(v0 + 4936) = 1061997773;
  *(v0 + 4944) = xmmword_1BCE424C0;
  *(v0 + 4960) = xmmword_1BCE3CB50;
  *(v0 + 4976) = xmmword_1BCE3CB60;
  *(v0 + 4992) = xmmword_1BCE3CB70;
  *(v0 + 5008) = xmmword_1BCE43740;
  *(v0 + 5024) = xmmword_1BCE43750;
  *(v0 + 5040) = result;
  *(v0 + 5056) = xmmword_1BCE3CBB0;
  *(v0 + 5072) = result;
  *(v0 + 5168) = xmmword_1BCE3CBD0;
  *(v0 + 5184) = xmmword_1BCE3CBE0;
  *(v0 + 5936) = xmmword_1BCE3CC10;
  *(v0 + 5968) = xmmword_1BCE3CC30;
  *(v0 + 5952) = xmmword_1BCE3CC20;
  *(v0 + 5984) = xmmword_1BCE3CC20;
  *(v0 + 6128) = xmmword_1BCE3CC40;
  *(v0 + 6160) = xmmword_1BCE43760;
  *(v0 + 6176) = xmmword_1BCE3CC60;
  *(v0 + 6192) = xmmword_1BCE3DAB0;
  *(v0 + 6208) = xmmword_1BCE3CC80;
  *(v0 + 6224) = xmmword_1BCE3CC90;
  *(v0 + 6240) = xmmword_1BCE3CCA0;
  *(v0 + 6368) = xmmword_1BCE43770;
  *(v0 + 6384) = xmmword_1BCE3DAF0;
  *(v0 + 6400) = xmmword_1BCE3DB00;
  *(v0 + 6416) = vdupq_n_s64(0x3FEFA994C0000000uLL);
  *(v0 + 6432) = xmmword_1BCE43780;
  *(v0 + 6480) = xmmword_1BCE3CD00;
  *(v0 + 7152) = xmmword_1BCE3CD10;
  *(v0 + 7184) = xmmword_1BCE3CD30;
  *(v0 + 7168) = xmmword_1BCE3CD20;
  *(v0 + 7200) = xmmword_1BCE3CD20;
  *(v0 + 7344) = xmmword_1BCE3CD40;
  *(v0 + 7408) = xmmword_1BCE3DB20;
  *(v0 + 7424) = xmmword_1BCE3C9D0;
  *(v0 + 7568) = result;
  *(v0 + 7632) = vdupq_n_s64(0x3FEFB389E0000000uLL);
  *(v0 + 7648) = xmmword_1BCE43790;
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
  *(v0 + 7376) = xmmword_1BCE3DB10;
  *(v0 + 9808) = xmmword_1BCE3DB10;
  *(v0 + 11024) = xmmword_1BCE3DB10;
  *(v0 + 9840) = xmmword_1BCE3CE50;
  *(v0 + 11056) = xmmword_1BCE3CE50;
  *(v0 + 9856) = xmmword_1BCE3CE60;
  *(v0 + 11072) = xmmword_1BCE3CE60;
  *(v0 + 9872) = xmmword_1BCE3CE70;
  *(v0 + 11088) = xmmword_1BCE3CE70;
  *(v0 + 9888) = xmmword_1BCE3CE80;
  *(v0 + 11104) = xmmword_1BCE3CE80;
  *(v0 + 5152) = xmmword_1BCE3CE90;
  *(v0 + 10816) = xmmword_1BCE3CE90;
  *(v0 + 12032) = xmmword_1BCE3CE90;
  *(v0 + 9616) = xmmword_1BCE3CE30;
  *(v0 + 12048) = xmmword_1BCE3CE30;
  *(v0 + 12208) = xmmword_1BCE3CEC0;
  *(v0 + 8576) = 0x41A0000044A8C000;
  *(v0 + 12224) = 0x41A0000044A8C000;
  *(v0 + 8592) = xmmword_1BCE3DB30;
  *(v0 + 12240) = xmmword_1BCE3DB30;
  *(v0 + 7392) = xmmword_1BCE3CD50;
  *(v0 + 8608) = xmmword_1BCE3CD50;
  *(v0 + 9824) = xmmword_1BCE3CD50;
  *(v0 + 11040) = xmmword_1BCE3CD50;
  *(v0 + 12256) = xmmword_1BCE3CD50;
  *(v0 + 12272) = xmmword_1BCE3CED0;
  *(v0 + 8800) = xmmword_1BCE3D4B0;
  *(v0 + 12448) = xmmword_1BCE3D4B0;
  *(v0 + 10096) = xmmword_1BCE437A0;
  *(v0 + 11312) = xmmword_1BCE437A0;
  *(v0 + 12528) = xmmword_1BCE437A0;
  *(v0 + 8912) = xmmword_1BCE3CE10;
  *(v0 + 10128) = xmmword_1BCE3CE10;
  *(v0 + 11344) = xmmword_1BCE3CE10;
  *(v0 + 12560) = xmmword_1BCE3CE10;
  *(v0 + 10832) = xmmword_1BCE3CEA0;
  *(v0 + 13264) = xmmword_1BCE3CEA0;
  *(v0 + 13424) = xmmword_1BCE3CF00;
  *(v0 + 7360) = 1147207680;
  *(v0 + 13440) = 1147207680;
  *(v0 + 13456) = xmmword_1BCE3DB50;
  *(v0 + 13472) = xmmword_1BCE3CF10;
  *(v0 + 13488) = xmmword_1BCE3DB60;
  *(v0 + 13504) = xmmword_1BCE3CF30;
  *(v0 + 7440) = xmmword_1BCE3CD70;
  *(v0 + 13520) = xmmword_1BCE3CD70;
  *(v0 + 7456) = xmmword_1BCE3CD80;
  *(v0 + 13536) = xmmword_1BCE3CD80;
  *(v0 + 13776) = xmmword_1BCE3CF80;
  *(v0 + 12016) = xmmword_1BCE3CEB0;
  *(v0 + 13232) = xmmword_1BCE3CEB0;
  *(v0 + 14448) = xmmword_1BCE3CEB0;
  *(v0 + 5088) = xmmword_1BCE3DA70;
  *(v0 + 5104) = result;
  *(v0 + 5120) = result;
  *(v0 + 5136) = result;
  *(v0 + 5200) = v7;
  *(v0 + 5216) = 0x3FEF9F9F80000000;
  *(v0 + 5224) = 0x3FE8000000000000;
  *(v0 + 6272) = xmmword_1BCE3CBB0;
  *(v0 + 8384) = xmmword_1BCE3CBB0;
  *(v0 + 8864) = xmmword_1BCE3CBB0;
  *(v0 + 9600) = xmmword_1BCE3CBB0;
  *(v0 + 12512) = xmmword_1BCE3CBB0;
  *(v0 + 13248) = xmmword_1BCE3CBB0;
  *(v0 + 13568) = xmmword_1BCE3CBB0;
  *(v0 + 14464) = xmmword_1BCE3CBB0;
  *(v0 + 14480) = xmmword_1BCE3CF90;
  *(v0 + 14640) = xmmword_1BCE3CFA0;
  *(v0 + 6144) = 0x44480000443B8000;
  *(v0 + 14656) = 0x44480000443B8000;
  *(v0 + 14672) = xmmword_1BCE3DB70;
  *(v0 + 14688) = xmmword_1BCE3CFC0;
  v10 = vdupq_n_s32(0x3F666666u);
  *(v0 + 5232) = v10;
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
  *(v0 + 6032) = 0x4170000042480000;
  *(v0 + 6040) = 0x3FF0000000000000;
  *(v0 + 6048) = result;
  *(v0 + 6064) = result;
  *(v0 + 6080) = result;
  *(v0 + 6096) = 0x3FF0000000000000;
  *(v0 + 6112) = 0x4017FFFFFFFFFFFALL;
  *(v0 + 6121) = *v16;
  *(v0 + 6120) = 0;
  *(v0 + 6124) = *&v16[3];
  *(v0 + 6152) = 1060739482;
  *(v0 + 6256) = result;
  *(v0 + 6288) = result;
  *(v0 + 6304) = xmmword_1BCE3DAE0;
  *(v0 + 6320) = result;
  *(v0 + 6336) = result;
  *(v0 + 6352) = result;
  *(v0 + 6448) = v10;
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
  *(v0 + 7248) = 0x4170000042480000;
  *(v0 + 7256) = 0x3FF0000000000000;
  *(v0 + 7264) = result;
  *(v0 + 7280) = result;
  *(v0 + 7296) = result;
  *(v0 + 7312) = 0x3FF0000000000000;
  *(v0 + 7328) = 0x4027FFFFFFFFFFFALL;
  *(v0 + 7336) = 0;
  *(v0 + 7337) = *v17;
  *(v0 + 7340) = *&v17[3];
  *(v0 + 7368) = 1059481190;
  *(v0 + 7472) = result;
  *(v0 + 7488) = result;
  *(v0 + 7504) = result;
  *(v0 + 7520) = xmmword_1BCE3DAE0;
  *(v0 + 7536) = result;
  *(v0 + 7552) = result;
  *(v0 + 14704) = xmmword_1BCE3DB80;
  *(v0 + 14720) = xmmword_1BCE3DB90;
  *(v0 + 14736) = xmmword_1BCE437C0;
  *(v0 + 14752) = xmmword_1BCE437D0;
  *(v0 + 8736) = xmmword_1BCE3DAE0;
  *(v0 + 12384) = xmmword_1BCE3DAE0;
  *(v0 + 13600) = xmmword_1BCE3DAE0;
  *(v0 + 14816) = xmmword_1BCE3DAE0;
  *(v0 + 14864) = xmmword_1BCE3D010;
  *(v0 + 14880) = xmmword_1BCE3DD00;
  *(v0 + 14944) = xmmword_1BCE437E0;
  *(v0 + 14992) = xmmword_1BCE3D060;
  *(v0 + 15664) = xmmword_1BCE3D070;
  *(v0 + 15680) = xmmword_1BCE3D080;
  *(v0 + 15696) = xmmword_1BCE3D090;
  *(v0 + 15712) = xmmword_1BCE3D0A0;
  *(v0 + 15856) = xmmword_1BCE3D0B0;
  *(v0 + 15872) = 0x44C8000044160000;
  *(v0 + 15888) = xmmword_1BCE3D0C0;
  *(v0 + 15904) = xmmword_1BCE3D0D0;
  *(v0 + 15920) = xmmword_1BCE3DBF0;
  *(v0 + 15936) = xmmword_1BCE3DC00;
  *(v0 + 15952) = xmmword_1BCE3D100;
  *(v0 + 15968) = xmmword_1BCE3D110;
  *(v0 + 9952) = xmmword_1BCE3DA70;
  *(v0 + 11168) = xmmword_1BCE3DA70;
  *(v0 + 16032) = xmmword_1BCE3DA70;
  *(v0 + 7584) = xmmword_1BCE3CBA0;
  *(v0 + 9920) = xmmword_1BCE3CBA0;
  *(v0 + 11136) = xmmword_1BCE3CBA0;
  *(v0 + 13664) = xmmword_1BCE3CBA0;
  *(v0 + 16096) = xmmword_1BCE3CBA0;
  *(v0 + 7664) = v10;
  *(v0 + 8880) = v10;
  *(v0 + 13744) = v10;
  *(v0 + 14960) = v10;
  *(v0 + 16176) = v10;
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
  *(v0 + 17168) = xmmword_1BCE437F0;
  *(v0 + 17184) = xmmword_1BCE43800;
  *(v0 + 14784) = xmmword_1BCE3E290;
  *(v0 + 16000) = xmmword_1BCE3E290;
  *(v0 + 17216) = xmmword_1BCE3E290;
  *(v0 + 17232) = vdupq_n_s64(0x3FE8F90420000000uLL);
  *(v0 + 17248) = xmmword_1BCE3DC60;
  *(v0 + 17312) = xmmword_1BCE43810;
  *(v0 + 13728) = xmmword_1BCE437B0;
  *(v0 + 17376) = xmmword_1BCE437B0;
  *(v0 + 17392) = v9;
  *(v0 + 17408) = 1062836634;
  *(v0 + 17424) = xmmword_1BCE3D220;
  *(v0 + 18096) = xmmword_1BCE3D230;
  *(v0 + 18112) = xmmword_1BCE3D240;
  *(v0 + 18128) = xmmword_1BCE3D250;
  *(v0 + 18144) = xmmword_1BCE3D260;
  *(v0 + 18288) = xmmword_1BCE3DC90;
  *(v0 + 18304) = 0x4396000042C80000;
  *(v0 + 18320) = xmmword_1BCE3D270;
  *(v0 + 18352) = xmmword_1BCE3E000;
  *(v0 + 18368) = xmmword_1BCE3D290;
  *(v0 + 18384) = xmmword_1BCE3C9A0;
  *(v0 + 18464) = xmmword_1BCE3DCB0;
  *(v0 + 18512) = xmmword_1BCE3D2B0;
  *(v0 + 18528) = xmmword_1BCE3D2C0;
  *(v0 + 18544) = xmmword_1BCE3DDD0;
  *(v0 + 8416) = xmmword_1BCE3CBC0;
  *(v0 + 8704) = xmmword_1BCE3CBC0;
  *(v0 + 9632) = xmmword_1BCE3CBC0;
  *(v0 + 10016) = xmmword_1BCE3CBC0;
  *(v0 + 10080) = xmmword_1BCE3CBC0;
  *(v0 + 10848) = xmmword_1BCE3CBC0;
  *(v0 + 11232) = xmmword_1BCE3CBC0;
  *(v0 + 11296) = xmmword_1BCE3CBC0;
  *(v0 + 12064) = xmmword_1BCE3CBC0;
  *(v0 + 13280) = xmmword_1BCE3CBC0;
  *(v0 + 14496) = xmmword_1BCE3CBC0;
  *(v0 + 18560) = xmmword_1BCE3CBC0;
  *(v0 + 13712) = v7;
  *(v0 + 14928) = v7;
  *(v0 + 16144) = v7;
  *(v0 + 17360) = v7;
  *(v0 + 18576) = v7;
  *(v0 + 18592) = xmmword_1BCE43710;
  *(v0 + 18608) = v8;
  *(v0 + 18624) = v8.i64[0];
  *(v0 + 19312) = xmmword_1BCE3D2E0;
  *(v0 + 19344) = xmmword_1BCE3D2F0;
  __asm { FMOV            V1.2D, #0.25 }

  *(v0 + 20528) = _Q1;
  *(v0 + 20560) = xmmword_1BCE3D300;
  *(v0 + 19504) = xmmword_1BCE3C830;
  *(v0 + 20720) = xmmword_1BCE3C830;
  *(v0 + 19520) = 0x432A000043480000;
  *(v0 + 20736) = 0x432A000043480000;
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
  *(v0 + 7616) = xmmword_1BCE3C8C0;
  *(v0 + 8832) = xmmword_1BCE3C8C0;
  *(v0 + 10048) = xmmword_1BCE3C8C0;
  *(v0 + 11264) = xmmword_1BCE3C8C0;
  *(v0 + 12480) = xmmword_1BCE3C8C0;
  *(v0 + 13696) = xmmword_1BCE3C8C0;
  *(v0 + 14912) = xmmword_1BCE3C8C0;
  *(v0 + 16128) = xmmword_1BCE3C8C0;
  *(v0 + 17344) = xmmword_1BCE3C8C0;
  *(v0 + 18432) = xmmword_1BCE3C8C0;
  *(v0 + 19648) = xmmword_1BCE3C8C0;
  *(v0 + 20864) = xmmword_1BCE3C8C0;
  *(v0 + 18448) = _Q16;
  *(v0 + 19664) = _Q16;
  *(v0 + 20880) = _Q16;
  *(v0 + 19680) = xmmword_1BCE3D910;
  *(v0 + 20896) = xmmword_1BCE3D910;
  *(v0 + 8848) = xmmword_1BCE3CCB0;
  *(v0 + 10032) = xmmword_1BCE3CCB0;
  *(v0 + 10064) = xmmword_1BCE3CCB0;
  *(v0 + 11248) = xmmword_1BCE3CCB0;
  *(v0 + 11280) = xmmword_1BCE3CCB0;
  *(v0 + 16080) = xmmword_1BCE3CCB0;
  *(v0 + 19792) = xmmword_1BCE3CCB0;
  *(v0 + 21008) = xmmword_1BCE3CCB0;
  *(v0 + 19808) = xmmword_1BCE3E320;
  *(v0 + 21024) = xmmword_1BCE3E320;
  *(v0 + 19824) = xmmword_1BCE436F0;
  *(v0 + 21040) = xmmword_1BCE436F0;
  *(v0 + 19840) = 0x3F4CCCCD3F666666;
  *(v0 + 21056) = 0x3F4CCCCD3F666666;
  *(v0 + 21744) = vdupq_n_s64(0x3FCFEB6B80000000uLL);
  *(v0 + 19328) = xmmword_1BCE3C910;
  *(v0 + 19360) = xmmword_1BCE3C910;
  *(v0 + 20544) = xmmword_1BCE3C910;
  *(v0 + 20576) = xmmword_1BCE3C910;
  *(v0 + 21760) = xmmword_1BCE3C910;
  *(v0 + 21776) = xmmword_1BCE3D310;
  *(v0 + 21792) = xmmword_1BCE3D320;
  *(v0 + 8464) = 0x4170000042480000;
  *(v0 + 9680) = 0x4170000042480000;
  *(v0 + 10896) = 0x4170000042480000;
  *(v0 + 12112) = 0x4170000042480000;
  *(v0 + 13328) = 0x4170000042480000;
  *(v0 + 14544) = 0x4170000042480000;
  *(v0 + 15760) = 0x4170000042480000;
  *(v0 + 16976) = 0x4170000042480000;
  *(v0 + 18192) = 0x4170000042480000;
  *(v0 + 19408) = 0x4170000042480000;
  *(v0 + 20624) = 0x4170000042480000;
  *(v0 + 21840) = 0x4170000042480000;
  *(v0 + 7600) = result;
  *(v0 + 7728) = result;
  *(v0 + 7744) = result;
  *(v0 + 7760) = result;
  *(v0 + 18000) = result;
  *(v0 + 18016) = result;
  *(v0 + 18032) = result;
  *(v0 + 18048) = result;
  *(v0 + 18064) = result;
  *(v0 + 18080) = result;
  *(v0 + 17904) = result;
  *(v0 + 17920) = result;
  *(v0 + 17936) = result;
  *(v0 + 17952) = result;
  *(v0 + 17968) = result;
  *(v0 + 17984) = result;
  *(v0 + 17808) = result;
  *(v0 + 17824) = result;
  *(v0 + 17840) = result;
  *(v0 + 17856) = result;
  *(v0 + 17872) = result;
  *(v0 + 17888) = result;
  *(v0 + 17712) = result;
  *(v0 + 17728) = result;
  *(v0 + 17744) = result;
  *(v0 + 17760) = result;
  *(v0 + 17776) = result;
  *(v0 + 17792) = result;
  *(v0 + 17616) = result;
  *(v0 + 17632) = result;
  *(v0 + 17648) = result;
  *(v0 + 17664) = result;
  *(v0 + 17680) = result;
  *(v0 + 17696) = result;
  *(v0 + 17520) = result;
  *(v0 + 17536) = result;
  *(v0 + 17552) = result;
  *(v0 + 17568) = result;
  *(v0 + 17584) = result;
  *(v0 + 17600) = result;
  *(v0 + 7776) = result;
  *(v0 + 7792) = result;
  *(v0 + 17456) = result;
  *(v0 + 17472) = result;
  *(v0 + 17488) = result;
  *(v0 + 17504) = result;
  *(v0 + 7808) = result;
  *(v0 + 7824) = result;
  *(v0 + 17416) = 0x3FEF23CF40000000;
  *(v0 + 17440) = 0;
  *(v0 + 17448) = 1065353216;
  *(v0 + 7840) = result;
  *(v0 + 7856) = result;
  *(v0 + 7872) = result;
  *(v0 + 7888) = result;
  *(v0 + 17296) = result;
  *(v0 + 17328) = result;
  *(v0 + 7904) = result;
  *(v0 + 7920) = result;
  *(v0 + 7936) = result;
  *(v0 + 17200) = result;
  *(v0 + 17264) = result;
  *(v0 + 17280) = result;
  *(v0 + 7952) = result;
  *(v0 + 7968) = result;
  *(v0 + 7984) = result;
  *(v0 + 8000) = result;
  *(v0 + 8016) = result;
  *(v0 + 8032) = result;
  *(v0 + 8048) = result;
  *(v0 + 8064) = result;
  *(v0 + 16992) = result;
  *(v0 + 17065) = *v25;
  *(v0 + 17068) = *&v25[3];
  *(v0 + 17096) = 1050388079;
  *(v0 + 17008) = result;
  *(v0 + 17024) = result;
  *(v0 + 17040) = 0x3FF0000000000000;
  *(v0 + 17056) = 0xC017FFFFFFFFFFE8;
  *(v0 + 17064) = 1;
  *(v0 + 8080) = result;
  *(v0 + 8096) = result;
  *(v0 + 8112) = result;
  *(v0 + 16944) = result;
  *(v0 + 16960) = result;
  *(v0 + 16984) = 0x3FF0000000000000;
  *(v0 + 8128) = result;
  *(v0 + 8144) = result;
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
  *(v0 + 8160) = result;
  *(v0 + 16256) = result;
  *(v0 + 16272) = result;
  *(v0 + 16288) = result;
  *(v0 + 16304) = result;
  *(v0 + 16320) = result;
  *(v0 + 8176) = result;
  *(v0 + 16200) = 0x3FEE6AC340000000;
  *(v0 + 16224) = 0;
  *(v0 + 16232) = 0;
  *(v0 + 16240) = result;
  *(v0 + 0x2000) = result;
  *(v0 + 8208) = result;
  *(v0 + 8224) = result;
  *(v0 + 16112) = result;
  *(v0 + 16160) = 0x3FEF9F9F80000000;
  *(v0 + 16168) = 0x3FE8000000000000;
  *(v0 + 8240) = result;
  *(v0 + 8256) = result;
  *(v0 + 8272) = result;
  *(v0 + 16016) = result;
  *(v0 + 16048) = result;
  *(v0 + 16064) = result;
  *(v0 + 8288) = result;
  *(v0 + 8304) = result;
  *(v0 + 8320) = result;
  *(v0 + 8336) = result;
  *(v0 + 8352) = result;
  *(v0 + 15984) = result;
  *(v0 + 8432) = result;
  *(v0 + 8448) = result;
  *(v0 + 8472) = 0x3FF0000000000000;
  *(v0 + 8480) = result;
  *(v0 + 15848) = 1;
  *(v0 + 15849) = *v24;
  *(v0 + 15852) = *&v24[3];
  *(v0 + 15880) = 1061997773;
  *(v0 + 8496) = result;
  *(v0 + 15776) = result;
  *(v0 + 15792) = result;
  *(v0 + 15808) = result;
  *(v0 + 15824) = 0x3FF0000000000000;
  *(v0 + 15840) = 0;
  *(v0 + 8512) = result;
  *(v0 + 8528) = 0x3FF0000000000000;
  *(v0 + 8544) = 0x4032000000000001;
  *(v0 + 15744) = result;
  *(v0 + 15768) = 0x3FF0000000000000;
  *(v0 + 8553) = *v18;
  *(v0 + 15648) = result;
  *(v0 + 15728) = result;
  *(v0 + 15552) = result;
  *(v0 + 15568) = result;
  *(v0 + 15584) = result;
  *(v0 + 15600) = result;
  *(v0 + 15616) = result;
  *(v0 + 15632) = result;
  *(v0 + 15456) = result;
  *(v0 + 15472) = result;
  *(v0 + 15488) = result;
  *(v0 + 15504) = result;
  *(v0 + 15520) = result;
  *(v0 + 15536) = result;
  *(v0 + 15360) = result;
  *(v0 + 15376) = result;
  *(v0 + 15392) = result;
  *(v0 + 15408) = result;
  *(v0 + 15424) = result;
  *(v0 + 15440) = result;
  *(v0 + 15264) = result;
  *(v0 + 15280) = result;
  *(v0 + 15296) = result;
  *(v0 + 15312) = result;
  *(v0 + 15328) = result;
  *(v0 + 15344) = result;
  *(v0 + 15168) = result;
  *(v0 + 15184) = result;
  *(v0 + 15200) = result;
  *(v0 + 15216) = result;
  *(v0 + 15232) = result;
  *(v0 + 15248) = result;
  *(v0 + 8552) = 0;
  *(v0 + 15104) = result;
  *(v0 + 15120) = result;
  *(v0 + 15136) = result;
  *(v0 + 15152) = result;
  *(v0 + 8556) = *&v18[3];
  *(v0 + 15040) = result;
  *(v0 + 15056) = result;
  *(v0 + 15072) = result;
  *(v0 + 15088) = result;
  *(v0 + 8584) = 1061158912;
  *(v0 + 14984) = 0x3FEDEF5480000000;
  *(v0 + 15008) = 0x3FE0000000000000;
  *(v0 + 15016) = 0;
  *(v0 + 15024) = result;
  *(v0 + 8640) = result;
  *(v0 + 8656) = result;
  *(v0 + 8672) = result;
  *(v0 + 8688) = result;
  *(v0 + 8720) = result;
  *(v0 + 14896) = result;
  *(v0 + 8752) = result;
  *(v0 + 8768) = result;
  *(v0 + 8784) = result;
  *(v0 + 14800) = result;
  *(v0 + 14832) = result;
  *(v0 + 14848) = result;
  *(v0 + 8816) = result;
  *(v0 + 8904) = 0x3FEB9B9BC0000000;
  *(v0 + 8928) = 0x3FF0000000000000;
  *(v0 + 8936) = 0;
  *(v0 + 14768) = result;
  *(v0 + 8944) = result;
  *(v0 + 8960) = result;
  *(v0 + 8976) = result;
  *(v0 + 14552) = 0x3FF0000000000000;
  *(v0 + 14632) = 1;
  *(v0 + 14633) = *v23;
  *(v0 + 14636) = *&v23[3];
  *(v0 + 14664) = 1061158912;
  *(v0 + 14560) = result;
  *(v0 + 14576) = result;
  *(v0 + 14592) = result;
  *(v0 + 14608) = 0x3FF0000000000000;
  *(v0 + 14624) = 0x4018000000000010;
  *(v0 + 8992) = result;
  *(v0 + 9008) = result;
  *(v0 + 9024) = result;
  *(v0 + 9040) = result;
  *(v0 + 14512) = result;
  *(v0 + 14528) = result;
  *(v0 + 9056) = result;
  *(v0 + 14368) = result;
  *(v0 + 14384) = result;
  *(v0 + 14400) = result;
  *(v0 + 14416) = result;
  *(v0 + 14432) = result;
  *(v0 + 14272) = result;
  *(v0 + 14288) = result;
  *(v0 + 14304) = result;
  *(v0 + 14320) = result;
  *(v0 + 14336) = result;
  *(v0 + 14352) = result;
  *(v0 + 14176) = result;
  *(v0 + 14192) = result;
  *(v0 + 14208) = result;
  *(v0 + 14224) = result;
  *(v0 + 14240) = result;
  *(v0 + 14256) = result;
  *(v0 + 14080) = result;
  *(v0 + 14096) = result;
  *(v0 + 14112) = result;
  *(v0 + 14128) = result;
  *(v0 + 14144) = result;
  *(v0 + 14160) = result;
  *(v0 + 13984) = result;
  *(v0 + 14000) = result;
  *(v0 + 14016) = result;
  *(v0 + 14032) = result;
  *(v0 + 14048) = result;
  *(v0 + 14064) = result;
  *(v0 + 13888) = result;
  *(v0 + 13904) = result;
  *(v0 + 13920) = result;
  *(v0 + 13936) = result;
  *(v0 + 13952) = result;
  *(v0 + 13968) = result;
  *(v0 + 9072) = result;
  *(v0 + 13808) = result;
  *(v0 + 13824) = result;
  *(v0 + 13840) = result;
  *(v0 + 13856) = result;
  *(v0 + 13872) = result;
  *(v0 + 9088) = result;
  *(v0 + 9104) = result;
  *(v0 + 13768) = 0x3FED73E5C0000000;
  *(v0 + 13792) = 0x3FF0000000000000;
  *(v0 + 13800) = 0;
  *(v0 + 9120) = result;
  *(v0 + 9136) = result;
  *(v0 + 9152) = result;
  *(v0 + 9168) = result;
  *(v0 + 13648) = result;
  *(v0 + 13680) = result;
  *(v0 + 9184) = result;
  *(v0 + 9200) = result;
  *(v0 + 13552) = result;
  *(v0 + 13584) = result;
  *(v0 + 13616) = result;
  *(v0 + 13632) = result;
  *(v0 + 9216) = result;
  *(v0 + 9232) = result;
  *(v0 + 9248) = result;
  *(v0 + 9264) = result;
  *(v0 + 9280) = result;
  *(v0 + 9296) = result;
  *(v0 + 9312) = result;
  *(v0 + 9328) = result;
  *(v0 + 9344) = result;
  *(v0 + 13344) = result;
  *(v0 + 13417) = *v22;
  *(v0 + 13420) = *&v22[3];
  *(v0 + 13448) = 1060320051;
  *(v0 + 13360) = result;
  *(v0 + 13376) = result;
  *(v0 + 13392) = 0x3FF0000000000000;
  *(v0 + 13408) = 0x4028000000000010;
  *(v0 + 13416) = 1;
  *(v0 + 9360) = result;
  *(v0 + 9376) = result;
  *(v0 + 9392) = result;
  *(v0 + 13296) = result;
  *(v0 + 13312) = result;
  *(v0 + 13336) = 0x3FF0000000000000;
  *(v0 + 9408) = result;
  *(v0 + 9424) = result;
  *(v0 + 13168) = result;
  *(v0 + 13184) = result;
  *(v0 + 13200) = result;
  *(v0 + 13216) = result;
  *(v0 + 13072) = result;
  *(v0 + 13088) = result;
  *(v0 + 13104) = result;
  *(v0 + 13120) = result;
  *(v0 + 13136) = result;
  *(v0 + 13152) = result;
  *(v0 + 12976) = result;
  *(v0 + 12992) = result;
  *(v0 + 13008) = result;
  *(v0 + 13024) = result;
  *(v0 + 13040) = result;
  *(v0 + 13056) = result;
  *(v0 + 12880) = result;
  *(v0 + 12896) = result;
  *(v0 + 12912) = result;
  *(v0 + 12928) = result;
  *(v0 + 12944) = result;
  *(v0 + 12960) = result;
  *(v0 + 12784) = result;
  *(v0 + 12800) = result;
  *(v0 + 12816) = result;
  *(v0 + 12832) = result;
  *(v0 + 12848) = result;
  *(v0 + 12864) = result;
  *(v0 + 12688) = result;
  *(v0 + 12704) = result;
  *(v0 + 12720) = result;
  *(v0 + 12736) = result;
  *(v0 + 12752) = result;
  *(v0 + 12768) = result;
  *(v0 + 12592) = result;
  *(v0 + 12608) = result;
  *(v0 + 12624) = result;
  *(v0 + 12640) = result;
  *(v0 + 12656) = result;
  *(v0 + 12672) = result;
  *(v0 + 9440) = result;
  *(v0 + 9456) = result;
  *(v0 + 9472) = result;
  *(v0 + 12552) = 0x3FEB9B9BC0000000;
  *(v0 + 12576) = 0x3FF0000000000000;
  *(v0 + 12584) = 0;
  *(v0 + 9488) = result;
  *(v0 + 9504) = result;
  *(v0 + 9520) = result;
  *(v0 + 12432) = result;
  *(v0 + 12464) = result;
  *(v0 + 12496) = result;
  *(v0 + 9536) = result;
  *(v0 + 12336) = result;
  *(v0 + 12352) = result;
  *(v0 + 12368) = result;
  *(v0 + 12400) = result;
  *(v0 + 12416) = result;
  *(v0 + 9552) = result;
  *(v0 + 9568) = result;
  *(v0 + 9648) = result;
  *(v0 + 12288) = result;
  *(v0 + 12304) = result;
  *(v0 + 12320) = result;
  *(v0 + 9664) = result;
  *(v0 + 9688) = 0x3FF0000000000000;
  *(v0 + 12192) = 0x4031FFFFFFFFFFF6;
  *(v0 + 12200) = 1;
  *(v0 + 12201) = *v21;
  *(v0 + 12204) = *&v21[3];
  *(v0 + 12232) = 1061158912;
  *(v0 + 9696) = result;
  *(v0 + 12120) = 0x3FF0000000000000;
  *(v0 + 12128) = result;
  *(v0 + 12144) = result;
  *(v0 + 12160) = result;
  *(v0 + 12176) = 0x3FF0000000000000;
  *(v0 + 9712) = result;
  *(v0 + 9728) = result;
  *(v0 + 9744) = 0x3FF0000000000000;
  *(v0 + 12080) = result;
  *(v0 + 12096) = result;
  *(v0 + 9760) = 0x403DFFFFFFFFFFFELL;
  *(v0 + 11936) = result;
  *(v0 + 11952) = result;
  *(v0 + 11968) = result;
  *(v0 + 11984) = result;
  *(v0 + 12000) = result;
  *(v0 + 11840) = result;
  *(v0 + 11856) = result;
  *(v0 + 11872) = result;
  *(v0 + 11888) = result;
  *(v0 + 11904) = result;
  *(v0 + 11920) = result;
  *(v0 + 11744) = result;
  *(v0 + 11760) = result;
  *(v0 + 11776) = result;
  *(v0 + 11792) = result;
  *(v0 + 11808) = result;
  *(v0 + 11824) = result;
  *(v0 + 11648) = result;
  *(v0 + 11664) = result;
  *(v0 + 11680) = result;
  *(v0 + 11696) = result;
  *(v0 + 11712) = result;
  *(v0 + 11728) = result;
  *(v0 + 11552) = result;
  *(v0 + 11568) = result;
  *(v0 + 11584) = result;
  *(v0 + 11600) = result;
  *(v0 + 11616) = result;
  *(v0 + 11632) = result;
  *(v0 + 11456) = result;
  *(v0 + 11472) = result;
  *(v0 + 11488) = result;
  *(v0 + 11504) = result;
  *(v0 + 11520) = result;
  *(v0 + 11536) = result;
  *(v0 + 9768) = 0;
  *(v0 + 11408) = result;
  *(v0 + 11424) = result;
  *(v0 + 11440) = result;
  *(v0 + 9769) = *v19;
  *(v0 + 11360) = 0x3FF0000000000000;
  *(v0 + 11368) = 0;
  *(v0 + 11376) = result;
  *(v0 + 11392) = result;
  *(v0 + 9772) = *&v19[3];
  *(v0 + 9800) = 1061997773;
  *(v0 + 9904) = result;
  *(v0 + 9936) = result;
  *(v0 + 11336) = 0x3FEB9B9BC0000000;
  *(v0 + 9968) = result;
  *(v0 + 9984) = result;
  *(v0 + 10000) = result;
  *(v0 + 11184) = result;
  *(v0 + 11200) = result;
  *(v0 + 11216) = result;
  *(v0 + 10120) = 0x3FEB9B9BC0000000;
  *(v0 + 10144) = 0x3FF0000000000000;
  *(v0 + 10152) = 0;
  *(v0 + 10160) = result;
  *(v0 + 11120) = result;
  *(v0 + 11152) = result;
  *(v0 + 10176) = result;
  *(v0 + 10192) = result;
  *(v0 + 10208) = result;
  *(v0 + 10224) = result;
  *(v0 + 10240) = result;
  *(v0 + 10256) = result;
  *(v0 + 10928) = result;
  *(v0 + 10985) = *v20;
  *(v0 + 11016) = 1061997773;
  *(v0 + 10944) = result;
  *(v0 + 10960) = 0x3FF0000000000000;
  *(v0 + 10976) = 0x403DFFFFFFFFFFFELL;
  *(v0 + 10984) = 1;
  *(v0 + 10988) = *&v20[3];
  *(v0 + 10272) = result;
  *(v0 + 10288) = result;
  *(v0 + 10864) = result;
  *(v0 + 10880) = result;
  *(v0 + 10904) = 0x3FF0000000000000;
  *(v0 + 10912) = result;
  *(v0 + 10304) = result;
  *(v0 + 10320) = result;
  *(v0 + 10336) = result;
  *(v0 + 10752) = result;
  *(v0 + 10768) = result;
  *(v0 + 10784) = result;
  *(v0 + 10656) = result;
  *(v0 + 10672) = result;
  *(v0 + 10688) = result;
  *(v0 + 10704) = result;
  *(v0 + 10720) = result;
  *(v0 + 10736) = result;
  *(v0 + 10560) = result;
  *(v0 + 10576) = result;
  *(v0 + 10592) = result;
  *(v0 + 10608) = result;
  *(v0 + 10624) = result;
  *(v0 + 10640) = result;
  *(v0 + 10464) = result;
  *(v0 + 10480) = result;
  *(v0 + 10496) = result;
  *(v0 + 10512) = result;
  *(v0 + 10528) = result;
  *(v0 + 10544) = result;
  *(v0 + 10368) = result;
  *(v0 + 10384) = result;
  *(v0 + 10400) = result;
  *(v0 + 10416) = result;
  *(v0 + 10432) = result;
  *(v0 + 10448) = result;
  *(v0 + 10352) = result;
  *(v0 + 18160) = result;
  *(v0 + 18176) = result;
  *(v0 + 18208) = result;
  *(v0 + 18224) = result;
  *(v0 + 18240) = result;
  *(v0 + 18336) = result;
  *(v0 + 18400) = result;
  *(v0 + 18416) = result;
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
  *(v0 + 19632) = result;
  *(v0 + 19696) = result;
  *(v0 + 19712) = result;
  *(v0 + 19728) = result;
  *(v0 + 19744) = result;
  *(v0 + 19760) = result;
  *(v0 + 19776) = result;
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
  *(v0 + 20848) = result;
  *(v0 + 20912) = result;
  *(v0 + 20928) = result;
  *(v0 + 20944) = result;
  *(v0 + 20960) = result;
  *(v0 + 20976) = result;
  *(v0 + 20992) = result;
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
  *(v0 + 18281) = *v26;
  *(v0 + 18284) = *&v26[3];
  *(v0 + 18312) = 1036831948;
  *(v0 + 18632) = 0x3FF0000000000000;
  *(v0 + 18656) = 0;
  *(v0 + 18664) = 1065353216;
  *(v0 + 19416) = 0x3FF0000000000000;
  *(v0 + 19472) = 0x3FF0000000000000;
  *(v0 + 19488) = 0xC04E000000000002;
  *(v0 + 19496) = 1;
  *(v0 + 19497) = *v27;
  *(v0 + 19500) = *&v27[3];
  *(v0 + 19528) = 1040242952;
  *(v0 + 19848) = 0x3FF0000000000000;
  *(v0 + 19872) = 0;
  *(v0 + 19880) = 1065353216;
  *(v0 + 20632) = 0x3FF0000000000000;
  *(v0 + 20688) = 0x3FF0000000000000;
  *(v0 + 20704) = 0xC056800000000000;
  *(v0 + 20712) = 1;
  *(v0 + 20713) = *v28;
  *(v0 + 20716) = *&v28[3];
  *(v0 + 20744) = 1040242952;
  *(v0 + 21064) = 0x3FF0000000000000;
  *(v0 + 21088) = 0;
  *(v0 + 21096) = 1065353216;
  *(v0 + 21848) = 0x3FF0000000000000;
  *(v0 + 21904) = 0x3FF0000000000000;
  return result;
}

__n128 sub_1BCB4016C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07858);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1BCE3C820;
  *(v0 + 32) = 0xC056800000000000;
  *(v0 + 40) = 0;
  *(v0 + 48) = xmmword_1BCE3C830;
  *(v0 + 64) = 0x432A000043480000;
  *(v0 + 72) = 1040242952;
  *(v0 + 80) = xmmword_1BCE3C840;
  *(v0 + 96) = xmmword_1BCE3C850;
  *(v0 + 112) = xmmword_1BCE3C860;
  *(v0 + 128) = xmmword_1BCE3C870;
  *(v0 + 144) = xmmword_1BCE3C880;
  *(v0 + 160) = xmmword_1BCE3C890;
  __asm { FMOV            V0.2D, #1.0 }

  *(v0 + 176) = result;
  *(v0 + 192) = xmmword_1BCE3C8C0;
  __asm { FMOV            V16.2D, #0.5 }

  *(v0 + 208) = _Q16;
  *(v0 + 224) = xmmword_1BCE3D910;
  *(v0 + 240) = result;
  *(v0 + 256) = result;
  *(v0 + 272) = result;
  *(v0 + 288) = result;
  *(v0 + 304) = result;
  *(v0 + 320) = result;
  *(v0 + 336) = xmmword_1BCE3CCB0;
  *(v0 + 352) = xmmword_1BCE3E320;
  *(v0 + 368) = xmmword_1BCE436F0;
  *(v0 + 384) = 0x3F4CCCCD3F666666;
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
  *(v0 + 1168) = 0x4170000042480000;
  *(v0 + 1176) = 0x3FF0000000000000;
  *(v0 + 1184) = result;
  *(v0 + 1200) = result;
  *(v0 + 1216) = result;
  *(v0 + 1232) = 0x3FF0000000000000;
  *(v0 + 1248) = 0xC04E000000000000;
  *(v0 + 1256) = 0;
  *(v0 + 1257) = *v12;
  *(v0 + 1260) = *&v12[3];
  *(v0 + 1264) = xmmword_1BCE3C830;
  *(v0 + 1280) = 0x432A000043480000;
  *(v0 + 1288) = 1040242952;
  *(v0 + 1296) = xmmword_1BCE3C840;
  *(v0 + 1312) = xmmword_1BCE3C850;
  *(v0 + 1328) = xmmword_1BCE3C860;
  *(v0 + 1344) = xmmword_1BCE3C870;
  *(v0 + 1360) = xmmword_1BCE3C880;
  *(v0 + 1376) = xmmword_1BCE3C890;
  *(v0 + 1392) = result;
  *(v0 + 1408) = xmmword_1BCE3C8C0;
  *(v0 + 1424) = _Q16;
  *(v0 + 1440) = xmmword_1BCE3D910;
  *(v0 + 1456) = result;
  *(v0 + 1472) = result;
  *(v0 + 1488) = result;
  *(v0 + 1504) = result;
  *(v0 + 1520) = result;
  *(v0 + 1536) = result;
  *(v0 + 1552) = xmmword_1BCE3CCB0;
  *(v0 + 1568) = xmmword_1BCE3E320;
  *(v0 + 1584) = xmmword_1BCE436F0;
  *(v0 + 1600) = 0x3F4CCCCD3F666666;
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
  *(v0 + 2384) = 0x4170000042480000;
  *(v0 + 2392) = 0x3FF0000000000000;
  *(v0 + 2400) = result;
  *(v0 + 2416) = result;
  *(v0 + 2432) = result;
  *(v0 + 2448) = 0x3FF0000000000000;
  *(v0 + 2464) = 0xC028000000000000;
  *(v0 + 2472) = 0;
  *(v0 + 2473) = *v13;
  *(v0 + 2476) = *&v13[3];
  *(v0 + 2480) = xmmword_1BCE3DC90;
  *(v0 + 2496) = 0x4396000042C80000;
  *(v0 + 2504) = 1036831949;
  *(v0 + 2512) = xmmword_1BCE3C970;
  *(v0 + 2528) = result;
  *(v0 + 2544) = xmmword_1BCE3DEC0;
  *(v0 + 2560) = xmmword_1BCE3C990;
  *(v0 + 2576) = xmmword_1BCE3C9A0;
  *(v0 + 2592) = result;
  *(v0 + 2608) = result;
  *(v0 + 2624) = xmmword_1BCE3C8C0;
  *(v0 + 2640) = _Q16;
  *(v0 + 2656) = xmmword_1BCE3DCB0;
  *(v0 + 2672) = result;
  *(v0 + 2688) = result;
  *(v0 + 2704) = vdupq_n_s64(0x3FEFEDA5C0000000uLL);
  *(v0 + 2720) = xmmword_1BCE43700;
  *(v0 + 2736) = xmmword_1BCE3C9E0;
  *(v0 + 2752) = xmmword_1BCE3CBC0;
  v7 = vdupq_n_s64(0x3FEF9F9F80000000uLL);
  *(v0 + 2768) = v7;
  v8 = vdupq_n_s32(0x3F4CCCCDu);
  *(v0 + 2784) = xmmword_1BCE43710;
  *(v0 + 2800) = v8;
  *(v0 + 2816) = v8.i64[0];
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
  *(v0 + 3600) = 0x4170000042480000;
  *(v0 + 3608) = 0x3FF0000000000000;
  *(v0 + 3616) = result;
  *(v0 + 3632) = result;
  *(v0 + 3648) = result;
  *(v0 + 3664) = 0x3FF0000000000000;
  *(v0 + 3680) = 0xC018000000000000;
  *(v0 + 3688) = 0;
  *(v0 + 3689) = *v14;
  *(v0 + 3692) = *&v14[3];
  *(v0 + 4720) = xmmword_1BCE3CB00;
  *(v0 + 4736) = xmmword_1BCE3CB10;
  *(v0 + 4816) = 0x4170000042480000;
  *(v0 + 4824) = 0x3FF0000000000000;
  *(v0 + 4752) = xmmword_1BCE3CB20;
  *(v0 + 4768) = xmmword_1BCE3CB10;
  *(v0 + 4784) = result;
  *(v0 + 4800) = result;
  *(v0 + 4624) = result;
  *(v0 + 4640) = result;
  *(v0 + 4656) = result;
  *(v0 + 4672) = result;
  *(v0 + 4688) = result;
  *(v0 + 4704) = result;
  *(v0 + 4528) = result;
  *(v0 + 4544) = result;
  *(v0 + 4560) = result;
  *(v0 + 4576) = result;
  *(v0 + 4592) = result;
  *(v0 + 4608) = result;
  *(v0 + 4432) = result;
  *(v0 + 4448) = result;
  *(v0 + 4464) = result;
  *(v0 + 4480) = result;
  *(v0 + 4496) = result;
  *(v0 + 4512) = result;
  *(v0 + 4336) = result;
  *(v0 + 4352) = result;
  *(v0 + 4368) = result;
  *(v0 + 4384) = result;
  *(v0 + 4400) = result;
  *(v0 + 4416) = result;
  *(v0 + 4240) = result;
  *(v0 + 4256) = result;
  *(v0 + 4272) = result;
  *(v0 + 4288) = result;
  *(v0 + 4304) = result;
  *(v0 + 4320) = result;
  *(v0 + 4160) = result;
  *(v0 + 4176) = result;
  *(v0 + 4192) = result;
  *(v0 + 4208) = result;
  *(v0 + 4224) = result;
  *(v0 + 4080) = result;
  *(v0 + 4096) = result;
  *(v0 + 4112) = result;
  *(v0 + 4128) = result;
  *(v0 + 4144) = result;
  *(v0 + 3696) = xmmword_1BCE3CB30;
  *(v0 + 4040) = 0x3FF0000000000000;
  *(v0 + 4048) = result;
  *(v0 + 4064) = 0;
  *(v0 + 4072) = 1065353216;
  *(v0 + 3968) = xmmword_1BCE3C8C0;
  *(v0 + 3984) = xmmword_1BCE3CCB0;
  *(v0 + 4032) = 1062836634;
  *(v0 + 4000) = xmmword_1BCE3CBB0;
  v9 = vdupq_n_s32(0x3F59999Au);
  *(v0 + 4016) = v9;
  *(v0 + 3920) = result;
  *(v0 + 3936) = xmmword_1BCE3C8C0;
  *(v0 + 3952) = result;
  *(v0 + 3856) = vdupq_n_s64(0x3FE88B6D00000000uLL);
  *(v0 + 3872) = xmmword_1BCE3D960;
  *(v0 + 3888) = result;
  *(v0 + 3904) = result;
  *(v0 + 3728) = xmmword_1BCE3CA60;
  *(v0 + 3744) = result;
  *(v0 + 3824) = result;
  *(v0 + 3840) = xmmword_1BCE3C8C0;
  *(v0 + 3792) = xmmword_1BCE43720;
  *(v0 + 3808) = xmmword_1BCE43730;
  *(v0 + 3760) = xmmword_1BCE3CA70;
  *(v0 + 3776) = xmmword_1BCE3CA80;
  *(v0 + 3712) = 0x447A000044160000;
  *(v0 + 3720) = 1061997773;
  *(v0 + 4832) = result;
  *(v0 + 4848) = result;
  *(v0 + 4864) = result;
  *(v0 + 4880) = 0x3FF0000000000000;
  *(v0 + 4896) = 0;
  *(v0 + 4905) = *v15;
  *(v0 + 4904) = 0;
  *(v0 + 4908) = *&v15[3];
  *(v0 + 4912) = xmmword_1BCE3CB30;
  *(v0 + 4928) = 0x44C8000044160000;
  *(v0 + 4936) = 1061997773;
  *(v0 + 4944) = xmmword_1BCE424C0;
  *(v0 + 4960) = xmmword_1BCE3CB50;
  *(v0 + 4976) = xmmword_1BCE3CB60;
  *(v0 + 4992) = xmmword_1BCE3CB70;
  *(v0 + 5008) = xmmword_1BCE43740;
  *(v0 + 5024) = xmmword_1BCE43750;
  *(v0 + 5040) = result;
  *(v0 + 5056) = xmmword_1BCE3CBB0;
  *(v0 + 5072) = result;
  *(v0 + 5168) = xmmword_1BCE3CBD0;
  *(v0 + 5184) = xmmword_1BCE3CBE0;
  *(v0 + 5936) = xmmword_1BCE3CC10;
  *(v0 + 5968) = xmmword_1BCE3CC30;
  *(v0 + 5952) = xmmword_1BCE3CC20;
  *(v0 + 5984) = xmmword_1BCE3CC20;
  *(v0 + 6128) = xmmword_1BCE3CC40;
  *(v0 + 6160) = xmmword_1BCE43760;
  *(v0 + 6176) = xmmword_1BCE3CC60;
  *(v0 + 6192) = xmmword_1BCE3DAB0;
  *(v0 + 6208) = xmmword_1BCE3CC80;
  *(v0 + 6224) = xmmword_1BCE3CC90;
  *(v0 + 6240) = xmmword_1BCE3CCA0;
  *(v0 + 6368) = xmmword_1BCE43770;
  *(v0 + 6384) = xmmword_1BCE3DAF0;
  *(v0 + 6400) = xmmword_1BCE3DB00;
  *(v0 + 6416) = vdupq_n_s64(0x3FEFA994C0000000uLL);
  *(v0 + 6432) = xmmword_1BCE43780;
  *(v0 + 6480) = xmmword_1BCE3CD00;
  *(v0 + 7152) = xmmword_1BCE3CD10;
  *(v0 + 7184) = xmmword_1BCE3CD30;
  *(v0 + 7168) = xmmword_1BCE3CD20;
  *(v0 + 7200) = xmmword_1BCE3CD20;
  *(v0 + 7344) = xmmword_1BCE3CD40;
  *(v0 + 7408) = xmmword_1BCE3DB20;
  *(v0 + 7424) = xmmword_1BCE3C9D0;
  *(v0 + 7552) = result;
  *(v0 + 7632) = vdupq_n_s64(0x3FEFB389E0000000uLL);
  *(v0 + 7648) = xmmword_1BCE43790;
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
  *(v0 + 7376) = xmmword_1BCE3DB10;
  *(v0 + 9808) = xmmword_1BCE3DB10;
  *(v0 + 11024) = xmmword_1BCE3DB10;
  *(v0 + 9840) = xmmword_1BCE3CE50;
  *(v0 + 11056) = xmmword_1BCE3CE50;
  *(v0 + 9856) = xmmword_1BCE3CE60;
  *(v0 + 11072) = xmmword_1BCE3CE60;
  *(v0 + 9872) = xmmword_1BCE3CE70;
  *(v0 + 11088) = xmmword_1BCE3CE70;
  *(v0 + 9888) = xmmword_1BCE3CE80;
  *(v0 + 11104) = xmmword_1BCE3CE80;
  *(v0 + 5152) = xmmword_1BCE3CE90;
  *(v0 + 10816) = xmmword_1BCE3CE90;
  *(v0 + 12032) = xmmword_1BCE3CE90;
  *(v0 + 9616) = xmmword_1BCE3CE30;
  *(v0 + 12048) = xmmword_1BCE3CE30;
  *(v0 + 12208) = xmmword_1BCE3CEC0;
  *(v0 + 8576) = 0x41A0000044A8C000;
  *(v0 + 12224) = 0x41A0000044A8C000;
  *(v0 + 8592) = xmmword_1BCE3DB30;
  *(v0 + 12240) = xmmword_1BCE3DB30;
  *(v0 + 7392) = xmmword_1BCE3CD50;
  *(v0 + 8608) = xmmword_1BCE3CD50;
  *(v0 + 9824) = xmmword_1BCE3CD50;
  *(v0 + 11040) = xmmword_1BCE3CD50;
  *(v0 + 12256) = xmmword_1BCE3CD50;
  *(v0 + 12272) = xmmword_1BCE3CED0;
  *(v0 + 8800) = xmmword_1BCE3D4B0;
  *(v0 + 12448) = xmmword_1BCE3D4B0;
  *(v0 + 10096) = xmmword_1BCE437A0;
  *(v0 + 11312) = xmmword_1BCE437A0;
  *(v0 + 12528) = xmmword_1BCE437A0;
  *(v0 + 8912) = xmmword_1BCE3CE10;
  *(v0 + 10128) = xmmword_1BCE3CE10;
  *(v0 + 11344) = xmmword_1BCE3CE10;
  *(v0 + 12560) = xmmword_1BCE3CE10;
  *(v0 + 10832) = xmmword_1BCE3CEA0;
  *(v0 + 13264) = xmmword_1BCE3CEA0;
  *(v0 + 13424) = xmmword_1BCE3CF00;
  *(v0 + 7360) = 1147207680;
  *(v0 + 13440) = 1147207680;
  *(v0 + 13456) = xmmword_1BCE3DB50;
  *(v0 + 13472) = xmmword_1BCE3CF10;
  *(v0 + 13488) = xmmword_1BCE3DB60;
  *(v0 + 13504) = xmmword_1BCE3CF30;
  *(v0 + 7440) = xmmword_1BCE3CD70;
  *(v0 + 13520) = xmmword_1BCE3CD70;
  *(v0 + 7456) = xmmword_1BCE3CD80;
  *(v0 + 13536) = xmmword_1BCE3CD80;
  *(v0 + 13776) = xmmword_1BCE3CF80;
  *(v0 + 12016) = xmmword_1BCE3CEB0;
  *(v0 + 13232) = xmmword_1BCE3CEB0;
  *(v0 + 14448) = xmmword_1BCE3CEB0;
  *(v0 + 5088) = xmmword_1BCE3DA70;
  *(v0 + 5104) = result;
  *(v0 + 5120) = result;
  *(v0 + 5136) = result;
  *(v0 + 5200) = v7;
  *(v0 + 6272) = xmmword_1BCE3CBB0;
  *(v0 + 8384) = xmmword_1BCE3CBB0;
  *(v0 + 8864) = xmmword_1BCE3CBB0;
  *(v0 + 9600) = xmmword_1BCE3CBB0;
  *(v0 + 12512) = xmmword_1BCE3CBB0;
  *(v0 + 13248) = xmmword_1BCE3CBB0;
  *(v0 + 13568) = xmmword_1BCE3CBB0;
  *(v0 + 14464) = xmmword_1BCE3CBB0;
  *(v0 + 14480) = xmmword_1BCE3CF90;
  *(v0 + 14640) = xmmword_1BCE3CFA0;
  *(v0 + 6144) = 0x44480000443B8000;
  *(v0 + 14656) = 0x44480000443B8000;
  *(v0 + 14672) = xmmword_1BCE3DB70;
  *(v0 + 5216) = xmmword_1BCE3C8E0;
  v10 = vdupq_n_s32(0x3F666666u);
  *(v0 + 5232) = v10;
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
  *(v0 + 6032) = 0x4170000042480000;
  *(v0 + 6040) = 0x3FF0000000000000;
  *(v0 + 6048) = result;
  *(v0 + 6064) = result;
  *(v0 + 6080) = result;
  *(v0 + 6096) = 0x3FF0000000000000;
  *(v0 + 6112) = 0x4017FFFFFFFFFFFALL;
  *(v0 + 6120) = 0;
  *(v0 + 6121) = *v16;
  *(v0 + 6124) = *&v16[3];
  *(v0 + 6152) = 1060739482;
  *(v0 + 6256) = result;
  *(v0 + 6288) = result;
  *(v0 + 6304) = xmmword_1BCE3DAE0;
  *(v0 + 6320) = result;
  *(v0 + 6336) = result;
  *(v0 + 6352) = result;
  *(v0 + 6448) = v10;
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
  *(v0 + 7248) = 0x4170000042480000;
  *(v0 + 7256) = 0x3FF0000000000000;
  *(v0 + 7264) = result;
  *(v0 + 7280) = result;
  *(v0 + 7296) = result;
  *(v0 + 7312) = 0x3FF0000000000000;
  *(v0 + 7328) = 0x4027FFFFFFFFFFFALL;
  *(v0 + 7337) = *v17;
  *(v0 + 7336) = 0;
  *(v0 + 7340) = *&v17[3];
  *(v0 + 7368) = 1059481190;
  *(v0 + 7472) = result;
  *(v0 + 7488) = result;
  *(v0 + 7504) = result;
  *(v0 + 7520) = xmmword_1BCE3DAE0;
  *(v0 + 7536) = result;
  *(v0 + 14688) = xmmword_1BCE3CFC0;
  *(v0 + 14704) = xmmword_1BCE3DB80;
  *(v0 + 14720) = xmmword_1BCE3DB90;
  *(v0 + 14736) = xmmword_1BCE437C0;
  *(v0 + 14752) = xmmword_1BCE437D0;
  *(v0 + 8736) = xmmword_1BCE3DAE0;
  *(v0 + 12384) = xmmword_1BCE3DAE0;
  *(v0 + 13600) = xmmword_1BCE3DAE0;
  *(v0 + 14816) = xmmword_1BCE3DAE0;
  *(v0 + 14864) = xmmword_1BCE3D010;
  *(v0 + 14880) = xmmword_1BCE3DD00;
  *(v0 + 14944) = xmmword_1BCE437E0;
  *(v0 + 14992) = xmmword_1BCE3D060;
  *(v0 + 15664) = xmmword_1BCE3D070;
  *(v0 + 15680) = xmmword_1BCE3D080;
  *(v0 + 15696) = xmmword_1BCE3D090;
  *(v0 + 15712) = xmmword_1BCE3D0A0;
  *(v0 + 15856) = xmmword_1BCE3D0B0;
  *(v0 + 15872) = 0x44C8000044160000;
  *(v0 + 15888) = xmmword_1BCE3D0C0;
  *(v0 + 15904) = xmmword_1BCE3D0D0;
  *(v0 + 15920) = xmmword_1BCE3DBF0;
  *(v0 + 15936) = xmmword_1BCE3DC00;
  *(v0 + 15952) = xmmword_1BCE3D100;
  *(v0 + 15968) = xmmword_1BCE3D110;
  *(v0 + 9952) = xmmword_1BCE3DA70;
  *(v0 + 11168) = xmmword_1BCE3DA70;
  *(v0 + 16032) = xmmword_1BCE3DA70;
  *(v0 + 7584) = xmmword_1BCE3CBA0;
  *(v0 + 9920) = xmmword_1BCE3CBA0;
  *(v0 + 11136) = xmmword_1BCE3CBA0;
  *(v0 + 13664) = xmmword_1BCE3CBA0;
  *(v0 + 16096) = xmmword_1BCE3CBA0;
  *(v0 + 16160) = xmmword_1BCE3C8E0;
  *(v0 + 7664) = v10;
  *(v0 + 8880) = v10;
  *(v0 + 13744) = v10;
  *(v0 + 14960) = v10;
  *(v0 + 16176) = v10;
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
  *(v0 + 17168) = xmmword_1BCE437F0;
  *(v0 + 17184) = xmmword_1BCE43800;
  *(v0 + 14784) = xmmword_1BCE3E290;
  *(v0 + 16000) = xmmword_1BCE3E290;
  *(v0 + 17216) = xmmword_1BCE3E290;
  *(v0 + 17232) = vdupq_n_s64(0x3FE8F90420000000uLL);
  *(v0 + 17248) = xmmword_1BCE3DC60;
  *(v0 + 17312) = xmmword_1BCE43810;
  *(v0 + 13728) = xmmword_1BCE437B0;
  *(v0 + 17376) = xmmword_1BCE437B0;
  *(v0 + 17392) = v9;
  *(v0 + 17408) = 1062836634;
  *(v0 + 17424) = xmmword_1BCE3D220;
  *(v0 + 18096) = xmmword_1BCE3D230;
  *(v0 + 18112) = xmmword_1BCE3D240;
  *(v0 + 18128) = xmmword_1BCE3D250;
  *(v0 + 18144) = xmmword_1BCE3D260;
  *(v0 + 18288) = xmmword_1BCE3DC90;
  *(v0 + 18304) = 0x4396000042C80000;
  *(v0 + 18320) = xmmword_1BCE3D270;
  *(v0 + 18352) = xmmword_1BCE3E000;
  *(v0 + 18368) = xmmword_1BCE3D290;
  *(v0 + 18384) = xmmword_1BCE3C9A0;
  *(v0 + 18464) = xmmword_1BCE3DCB0;
  *(v0 + 18512) = xmmword_1BCE3D2B0;
  *(v0 + 18528) = xmmword_1BCE3D2C0;
  *(v0 + 18544) = xmmword_1BCE3DDD0;
  *(v0 + 8416) = xmmword_1BCE3CBC0;
  *(v0 + 8704) = xmmword_1BCE3CBC0;
  *(v0 + 9632) = xmmword_1BCE3CBC0;
  *(v0 + 10016) = xmmword_1BCE3CBC0;
  *(v0 + 10080) = xmmword_1BCE3CBC0;
  *(v0 + 10848) = xmmword_1BCE3CBC0;
  *(v0 + 11232) = xmmword_1BCE3CBC0;
  *(v0 + 11296) = xmmword_1BCE3CBC0;
  *(v0 + 12064) = xmmword_1BCE3CBC0;
  *(v0 + 13280) = xmmword_1BCE3CBC0;
  *(v0 + 14496) = xmmword_1BCE3CBC0;
  *(v0 + 18560) = xmmword_1BCE3CBC0;
  *(v0 + 13712) = v7;
  *(v0 + 14928) = v7;
  *(v0 + 16144) = v7;
  *(v0 + 17360) = v7;
  *(v0 + 18576) = v7;
  *(v0 + 18592) = xmmword_1BCE43710;
  *(v0 + 18608) = v8;
  *(v0 + 18624) = v8.i64[0];
  *(v0 + 19312) = xmmword_1BCE3D2E0;
  *(v0 + 19344) = xmmword_1BCE3D2F0;
  __asm { FMOV            V1.2D, #0.25 }

  *(v0 + 20528) = _Q1;
  *(v0 + 20560) = xmmword_1BCE3D300;
  *(v0 + 19504) = xmmword_1BCE3C830;
  *(v0 + 20720) = xmmword_1BCE3C830;
  *(v0 + 19520) = 0x432A000043480000;
  *(v0 + 20736) = 0x432A000043480000;
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
  *(v0 + 7616) = xmmword_1BCE3C8C0;
  *(v0 + 8832) = xmmword_1BCE3C8C0;
  *(v0 + 10048) = xmmword_1BCE3C8C0;
  *(v0 + 11264) = xmmword_1BCE3C8C0;
  *(v0 + 12480) = xmmword_1BCE3C8C0;
  *(v0 + 13696) = xmmword_1BCE3C8C0;
  *(v0 + 14912) = xmmword_1BCE3C8C0;
  *(v0 + 16128) = xmmword_1BCE3C8C0;
  *(v0 + 17344) = xmmword_1BCE3C8C0;
  *(v0 + 18432) = xmmword_1BCE3C8C0;
  *(v0 + 19648) = xmmword_1BCE3C8C0;
  *(v0 + 20864) = xmmword_1BCE3C8C0;
  *(v0 + 18448) = _Q16;
  *(v0 + 19664) = _Q16;
  *(v0 + 20880) = _Q16;
  *(v0 + 19680) = xmmword_1BCE3D910;
  *(v0 + 20896) = xmmword_1BCE3D910;
  *(v0 + 8848) = xmmword_1BCE3CCB0;
  *(v0 + 10032) = xmmword_1BCE3CCB0;
  *(v0 + 10064) = xmmword_1BCE3CCB0;
  *(v0 + 11248) = xmmword_1BCE3CCB0;
  *(v0 + 11280) = xmmword_1BCE3CCB0;
  *(v0 + 16080) = xmmword_1BCE3CCB0;
  *(v0 + 19792) = xmmword_1BCE3CCB0;
  *(v0 + 21008) = xmmword_1BCE3CCB0;
  *(v0 + 19808) = xmmword_1BCE3E320;
  *(v0 + 21024) = xmmword_1BCE3E320;
  *(v0 + 19824) = xmmword_1BCE436F0;
  *(v0 + 21040) = xmmword_1BCE436F0;
  *(v0 + 19840) = 0x3F4CCCCD3F666666;
  *(v0 + 21056) = 0x3F4CCCCD3F666666;
  *(v0 + 21744) = vdupq_n_s64(0x3FCFEB6B80000000uLL);
  *(v0 + 19328) = xmmword_1BCE3C910;
  *(v0 + 19360) = xmmword_1BCE3C910;
  *(v0 + 20544) = xmmword_1BCE3C910;
  *(v0 + 20576) = xmmword_1BCE3C910;
  *(v0 + 21760) = xmmword_1BCE3C910;
  *(v0 + 21776) = xmmword_1BCE3D310;
  *(v0 + 21792) = xmmword_1BCE3D320;
  *(v0 + 8464) = 0x4170000042480000;
  *(v0 + 9680) = 0x4170000042480000;
  *(v0 + 10896) = 0x4170000042480000;
  *(v0 + 12112) = 0x4170000042480000;
  *(v0 + 13328) = 0x4170000042480000;
  *(v0 + 14544) = 0x4170000042480000;
  *(v0 + 15760) = 0x4170000042480000;
  *(v0 + 16976) = 0x4170000042480000;
  *(v0 + 18192) = 0x4170000042480000;
  *(v0 + 19408) = 0x4170000042480000;
  *(v0 + 20624) = 0x4170000042480000;
  *(v0 + 21840) = 0x4170000042480000;
  *(v0 + 7568) = result;
  *(v0 + 7600) = result;
  *(v0 + 7728) = result;
  *(v0 + 18000) = result;
  *(v0 + 18016) = result;
  *(v0 + 18032) = result;
  *(v0 + 18048) = result;
  *(v0 + 18064) = result;
  *(v0 + 18080) = result;
  *(v0 + 17904) = result;
  *(v0 + 17920) = result;
  *(v0 + 17936) = result;
  *(v0 + 17952) = result;
  *(v0 + 17968) = result;
  *(v0 + 17984) = result;
  *(v0 + 17808) = result;
  *(v0 + 17824) = result;
  *(v0 + 17840) = result;
  *(v0 + 17856) = result;
  *(v0 + 17872) = result;
  *(v0 + 17888) = result;
  *(v0 + 17712) = result;
  *(v0 + 17728) = result;
  *(v0 + 17744) = result;
  *(v0 + 17760) = result;
  *(v0 + 17776) = result;
  *(v0 + 17792) = result;
  *(v0 + 17616) = result;
  *(v0 + 17632) = result;
  *(v0 + 17648) = result;
  *(v0 + 17664) = result;
  *(v0 + 17680) = result;
  *(v0 + 17696) = result;
  *(v0 + 17520) = result;
  *(v0 + 17536) = result;
  *(v0 + 17552) = result;
  *(v0 + 17568) = result;
  *(v0 + 17584) = result;
  *(v0 + 17600) = result;
  *(v0 + 7744) = result;
  *(v0 + 7760) = result;
  *(v0 + 17456) = result;
  *(v0 + 17472) = result;
  *(v0 + 17488) = result;
  *(v0 + 17504) = result;
  *(v0 + 7776) = result;
  *(v0 + 7792) = result;
  *(v0 + 17416) = 0x3FEF23CF40000000;
  *(v0 + 17440) = 0;
  *(v0 + 17448) = 1065353216;
  *(v0 + 7808) = result;
  *(v0 + 7824) = result;
  *(v0 + 7840) = result;
  *(v0 + 7856) = result;
  *(v0 + 17296) = result;
  *(v0 + 17328) = result;
  *(v0 + 7872) = result;
  *(v0 + 7888) = result;
  *(v0 + 7904) = result;
  *(v0 + 17200) = result;
  *(v0 + 17264) = result;
  *(v0 + 17280) = result;
  *(v0 + 7920) = result;
  *(v0 + 7936) = result;
  *(v0 + 7952) = result;
  *(v0 + 7968) = result;
  *(v0 + 7984) = result;
  *(v0 + 8000) = result;
  *(v0 + 8016) = result;
  *(v0 + 8032) = result;
  *(v0 + 16992) = result;
  *(v0 + 17065) = *v25;
  *(v0 + 17068) = *&v25[3];
  *(v0 + 17096) = 1050388079;
  *(v0 + 17008) = result;
  *(v0 + 17024) = result;
  *(v0 + 17040) = 0x3FF0000000000000;
  *(v0 + 17056) = 0xC017FFFFFFFFFFE8;
  *(v0 + 17064) = 1;
  *(v0 + 8048) = result;
  *(v0 + 8064) = result;
  *(v0 + 8080) = result;
  *(v0 + 16944) = result;
  *(v0 + 16960) = result;
  *(v0 + 16984) = 0x3FF0000000000000;
  *(v0 + 8096) = result;
  *(v0 + 8112) = result;
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
  *(v0 + 8128) = result;
  *(v0 + 16256) = result;
  *(v0 + 16272) = result;
  *(v0 + 16288) = result;
  *(v0 + 16304) = result;
  *(v0 + 16320) = result;
  *(v0 + 8144) = result;
  *(v0 + 16200) = 0x3FEE6AC340000000;
  *(v0 + 16224) = 0;
  *(v0 + 16232) = 0;
  *(v0 + 16240) = result;
  *(v0 + 8160) = result;
  *(v0 + 8176) = result;
  *(v0 + 0x2000) = result;
  *(v0 + 8208) = result;
  *(v0 + 8224) = result;
  *(v0 + 16112) = result;
  *(v0 + 8240) = result;
  *(v0 + 8256) = result;
  *(v0 + 8272) = result;
  *(v0 + 16016) = result;
  *(v0 + 16048) = result;
  *(v0 + 16064) = result;
  *(v0 + 8288) = result;
  *(v0 + 8304) = result;
  *(v0 + 8320) = result;
  *(v0 + 8336) = result;
  *(v0 + 8352) = result;
  *(v0 + 15984) = result;
  *(v0 + 8432) = result;
  *(v0 + 8448) = result;
  *(v0 + 8472) = 0x3FF0000000000000;
  *(v0 + 15840) = 0;
  *(v0 + 15848) = 1;
  *(v0 + 15849) = *v24;
  *(v0 + 15852) = *&v24[3];
  *(v0 + 15880) = 1061997773;
  *(v0 + 8480) = result;
  *(v0 + 15768) = 0x3FF0000000000000;
  *(v0 + 15776) = result;
  *(v0 + 15792) = result;
  *(v0 + 15808) = result;
  *(v0 + 15824) = 0x3FF0000000000000;
  *(v0 + 8496) = result;
  *(v0 + 8512) = result;
  *(v0 + 8528) = 0x3FF0000000000000;
  *(v0 + 15728) = result;
  *(v0 + 15744) = result;
  *(v0 + 8544) = 0x4032000000000001;
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
  *(v0 + 8552) = 0;
  *(v0 + 15152) = result;
  *(v0 + 15168) = result;
  *(v0 + 15184) = result;
  *(v0 + 8553) = *v18;
  *(v0 + 15088) = result;
  *(v0 + 15104) = result;
  *(v0 + 15120) = result;
  *(v0 + 15136) = result;
  *(v0 + 8556) = *&v18[3];
  *(v0 + 15024) = result;
  *(v0 + 15040) = result;
  *(v0 + 15056) = result;
  *(v0 + 15072) = result;
  *(v0 + 8584) = 1061158912;
  *(v0 + 14984) = 0x3FEDEF5480000000;
  *(v0 + 15008) = 0x3FE0000000000000;
  *(v0 + 15016) = 0;
  *(v0 + 8640) = result;
  *(v0 + 8656) = result;
  *(v0 + 8672) = result;
  *(v0 + 8688) = result;
  *(v0 + 8720) = result;
  *(v0 + 14896) = result;
  *(v0 + 8752) = result;
  *(v0 + 8768) = result;
  *(v0 + 8784) = result;
  *(v0 + 14800) = result;
  *(v0 + 14832) = result;
  *(v0 + 14848) = result;
  *(v0 + 8816) = result;
  *(v0 + 8904) = 0x3FEB9B9BC0000000;
  *(v0 + 8928) = 0x3FF0000000000000;
  *(v0 + 8936) = 0;
  *(v0 + 14768) = result;
  *(v0 + 8944) = result;
  *(v0 + 8960) = result;
  *(v0 + 14624) = 0x4018000000000010;
  *(v0 + 14632) = 1;
  *(v0 + 14633) = *v23;
  *(v0 + 14636) = *&v23[3];
  *(v0 + 14664) = 1061158912;
  *(v0 + 8976) = result;
  *(v0 + 14552) = 0x3FF0000000000000;
  *(v0 + 14560) = result;
  *(v0 + 14576) = result;
  *(v0 + 14592) = result;
  *(v0 + 14608) = 0x3FF0000000000000;
  *(v0 + 8992) = result;
  *(v0 + 9008) = result;
  *(v0 + 9024) = result;
  *(v0 + 9040) = result;
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
  *(v0 + 9056) = result;
  *(v0 + 13800) = 0;
  *(v0 + 13808) = result;
  *(v0 + 13824) = result;
  *(v0 + 13840) = result;
  *(v0 + 13856) = result;
  *(v0 + 9072) = result;
  *(v0 + 9088) = result;
  *(v0 + 9104) = result;
  *(v0 + 13768) = 0x3FED73E5C0000000;
  *(v0 + 13792) = 0x3FF0000000000000;
  *(v0 + 9120) = result;
  *(v0 + 9136) = result;
  *(v0 + 9152) = result;
  *(v0 + 13632) = result;
  *(v0 + 13648) = result;
  *(v0 + 13680) = result;
  *(v0 + 9168) = result;
  *(v0 + 9184) = result;
  *(v0 + 9200) = result;
  *(v0 + 13552) = result;
  *(v0 + 13584) = result;
  *(v0 + 13616) = result;
  *(v0 + 9216) = result;
  *(v0 + 9232) = result;
  *(v0 + 9248) = result;
  *(v0 + 9264) = result;
  *(v0 + 9280) = result;
  *(v0 + 9296) = result;
  *(v0 + 9312) = result;
  *(v0 + 9328) = result;
  *(v0 + 13336) = 0x3FF0000000000000;
  *(v0 + 13416) = 1;
  *(v0 + 13417) = *v22;
  *(v0 + 13420) = *&v22[3];
  *(v0 + 13448) = 1060320051;
  *(v0 + 13344) = result;
  *(v0 + 13360) = result;
  *(v0 + 13376) = result;
  *(v0 + 13392) = 0x3FF0000000000000;
  *(v0 + 13408) = 0x4028000000000010;
  *(v0 + 9344) = result;
  *(v0 + 9360) = result;
  *(v0 + 9376) = result;
  *(v0 + 9392) = result;
  *(v0 + 13296) = result;
  *(v0 + 13312) = result;
  *(v0 + 9408) = result;
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
  *(v0 + 9424) = result;
  *(v0 + 9440) = result;
  *(v0 + 9456) = result;
  *(v0 + 9472) = result;
  *(v0 + 12552) = 0x3FEB9B9BC0000000;
  *(v0 + 12576) = 0x3FF0000000000000;
  *(v0 + 9488) = result;
  *(v0 + 9504) = result;
  *(v0 + 12416) = result;
  *(v0 + 12432) = result;
  *(v0 + 12464) = result;
  *(v0 + 12496) = result;
  *(v0 + 9520) = result;
  *(v0 + 12320) = result;
  *(v0 + 12336) = result;
  *(v0 + 12352) = result;
  *(v0 + 12368) = result;
  *(v0 + 12400) = result;
  *(v0 + 9536) = result;
  *(v0 + 9552) = result;
  *(v0 + 9568) = result;
  *(v0 + 9648) = result;
  *(v0 + 12288) = result;
  *(v0 + 12304) = result;
  *(v0 + 9664) = result;
  *(v0 + 12201) = *v21;
  *(v0 + 12232) = 1061158912;
  *(v0 + 12176) = 0x3FF0000000000000;
  *(v0 + 12192) = 0x4031FFFFFFFFFFF6;
  *(v0 + 12200) = 1;
  *(v0 + 12204) = *&v21[3];
  *(v0 + 9688) = 0x3FF0000000000000;
  *(v0 + 12096) = result;
  *(v0 + 12120) = 0x3FF0000000000000;
  *(v0 + 12128) = result;
  *(v0 + 12144) = result;
  *(v0 + 12160) = result;
  *(v0 + 9696) = result;
  *(v0 + 9712) = result;
  *(v0 + 9728) = result;
  *(v0 + 9744) = 0x3FF0000000000000;
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
  *(v0 + 11440) = result;
  *(v0 + 11456) = result;
  *(v0 + 11472) = result;
  *(v0 + 11488) = result;
  *(v0 + 11504) = result;
  *(v0 + 9760) = 0x403DFFFFFFFFFFFELL;
  *(v0 + 9768) = 0;
  *(v0 + 11392) = result;
  *(v0 + 11408) = result;
  *(v0 + 11424) = result;
  *(v0 + 9769) = *v19;
  *(v0 + 11360) = 0x3FF0000000000000;
  *(v0 + 11368) = 0;
  *(v0 + 11376) = result;
  *(v0 + 9772) = *&v19[3];
  *(v0 + 9800) = 1061997773;
  *(v0 + 9904) = result;
  *(v0 + 9936) = result;
  *(v0 + 11336) = 0x3FEB9B9BC0000000;
  *(v0 + 9968) = result;
  *(v0 + 9984) = result;
  *(v0 + 10000) = result;
  *(v0 + 11184) = result;
  *(v0 + 11200) = result;
  *(v0 + 11216) = result;
  *(v0 + 10120) = 0x3FEB9B9BC0000000;
  *(v0 + 10144) = 0x3FF0000000000000;
  *(v0 + 10152) = 0;
  *(v0 + 10160) = result;
  *(v0 + 11120) = result;
  *(v0 + 11152) = result;
  *(v0 + 10176) = result;
  *(v0 + 10192) = result;
  *(v0 + 10208) = result;
  *(v0 + 10224) = result;
  *(v0 + 10240) = result;
  *(v0 + 10985) = *v20;
  *(v0 + 10988) = *&v20[3];
  *(v0 + 11016) = 1061997773;
  *(v0 + 10912) = result;
  *(v0 + 10928) = result;
  *(v0 + 10944) = result;
  *(v0 + 10960) = 0x3FF0000000000000;
  *(v0 + 10976) = 0x403DFFFFFFFFFFFELL;
  *(v0 + 10984) = 1;
  *(v0 + 10256) = result;
  *(v0 + 10272) = result;
  *(v0 + 10288) = result;
  *(v0 + 10864) = result;
  *(v0 + 10880) = result;
  *(v0 + 10904) = 0x3FF0000000000000;
  *(v0 + 10304) = result;
  *(v0 + 10320) = result;
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
  *(v0 + 10336) = result;
  *(v0 + 18160) = result;
  *(v0 + 18176) = result;
  *(v0 + 18208) = result;
  *(v0 + 18224) = result;
  *(v0 + 18240) = result;
  *(v0 + 18336) = result;
  *(v0 + 18400) = result;
  *(v0 + 18416) = result;
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
  *(v0 + 19632) = result;
  *(v0 + 19696) = result;
  *(v0 + 19712) = result;
  *(v0 + 19728) = result;
  *(v0 + 19744) = result;
  *(v0 + 19760) = result;
  *(v0 + 19776) = result;
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
  *(v0 + 20848) = result;
  *(v0 + 20912) = result;
  *(v0 + 20928) = result;
  *(v0 + 20944) = result;
  *(v0 + 20960) = result;
  *(v0 + 20976) = result;
  *(v0 + 20992) = result;
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
  *(v0 + 18281) = *v26;
  *(v0 + 18284) = *&v26[3];
  *(v0 + 18312) = 1036831948;
  *(v0 + 18632) = 0x3FF0000000000000;
  *(v0 + 18656) = 0;
  *(v0 + 18664) = 1065353216;
  *(v0 + 19416) = 0x3FF0000000000000;
  *(v0 + 19472) = 0x3FF0000000000000;
  *(v0 + 19488) = 0xC04E000000000002;
  *(v0 + 19496) = 1;
  *(v0 + 19497) = *v27;
  *(v0 + 19500) = *&v27[3];
  *(v0 + 19528) = 1040242952;
  *(v0 + 19848) = 0x3FF0000000000000;
  *(v0 + 19872) = 0;
  *(v0 + 19880) = 1065353216;
  *(v0 + 20632) = 0x3FF0000000000000;
  *(v0 + 20688) = 0x3FF0000000000000;
  *(v0 + 20704) = 0xC056800000000000;
  *(v0 + 20712) = 1;
  *(v0 + 20713) = *v28;
  *(v0 + 20716) = *&v28[3];
  *(v0 + 20744) = 1040242952;
  *(v0 + 21064) = 0x3FF0000000000000;
  *(v0 + 21088) = 0;
  *(v0 + 21096) = 1065353216;
  *(v0 + 21848) = 0x3FF0000000000000;
  *(v0 + 21904) = 0x3FF0000000000000;
  return result;
}

__n128 sub_1BCB42110@<Q0>(uint64_t a1@<X8>)
{
  v2 = (a1 + 1436);
  sub_1BCA0330C();
  v4 = v3;
  sub_1BCA0525C();
  *a1 = 0x4006666666666666;
  *(a1 + 8) = 2;
  *(a1 + 16) = 0x3FF0000000000000;
  *(a1 + 24) = 25;
  *(a1 + 32) = xmmword_1BCE3BED0;
  *(a1 + 48) = xmmword_1BCE3BED0;
  *(a1 + 64) = 0x42D2000042480000;
  *(a1 + 72) = 0xC348000000000000;
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
  *(a1 + 432) = xmmword_1BCE3D860;
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
  *(a1 + 712) = 0x3F8000003F000000;
  *(a1 + 720) = 0x400000003FC00000;
  *(a1 + 728) = 0;
  *(a1 + 736) = 1;
  *(a1 + 744) = 4;
  *(a1 + 752) = xmmword_1BCE3BF40;
  *(a1 + 768) = 0x617274736F746C41;
  *(a1 + 776) = 0xEF53202D20737574;
  *(a1 + 784) = 0xD000000000000013;
  *(a1 + 792) = 0x80000001BCE792E0;
  *(a1 + 800) = 6;
  *(a1 + 816) = result;
  *(a1 + 832) = 1065353216;
  *(a1 + 840) = 0x3F8000003F000000;
  *(a1 + 848) = 0x400000003FC00000;
  *(a1 + 856) = 0;
  *(a1 + 864) = 1;
  *(a1 + 872) = 4;
  *(a1 + 880) = xmmword_1BCE3D890;
  *(a1 + 896) = 0x617274736F746C41;
  *(a1 + 904) = 0xEF53202D20737574;
  *(a1 + 912) = 0xD000000000000013;
  *(a1 + 920) = 0x80000001BCE792E0;
  *(a1 + 928) = 6;
  *(a1 + 944) = result;
  *(a1 + 960) = 1065353216;
  *(a1 + 968) = 0x3F8000003F000000;
  *(a1 + 976) = 0x411970A44106E147;
  *(a1 + 984) = 1083022496;
  *(a1 + 992) = 1;
  *(a1 + 1000) = 4;
  *(a1 + 1008) = xmmword_1BCE3C6F0;
  *(a1 + 1024) = 0x2073756C756D7543;
  *(a1 + 1032) = 0xEB000000004D202DLL;
  *(a1 + 1040) = 0x5F73756C756D7543;
  *(a1 + 1048) = 0xEF4D656C676E6953;
  *(a1 + 1056) = 10;
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
  *(a1 + 1216) = xmmword_1BCE3BFA0;
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
  __asm { FMOV            V3.2S, #-30.0 }

  *(a1 + 1616) = -_D3;
  *(a1 + 1624) = 0x40000000;
  *(a1 + 1632) = 0;
  *(a1 + 1628) = 0;
  *(a1 + 1634) = 16843009;
  *(a1 + 1637) = 16843009;
  *(a1 + 1656) = 0;
  *(a1 + 1641) = 0;
  *(a1 + 1649) = 0;
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
  *(a1 + 1760) = 0;
  *(a1 + 1744) = 0u;
  *(a1 + 1776) = xmmword_1BCE3D8B0;
  *(a1 + 1792) = xmmword_1BCE3D8C0;
  *(a1 + 1808) = xmmword_1BCE3C7A0;
  *(a1 + 1824) = 1;
  *(a1 + 1828) = xmmword_1BCE47CC0;
  *(a1 + 1844) = 1036831949;
  *(a1 + 1848) = 0x4100000041200000;
  *(a1 + 1856) = 3;
  *(a1 + 1864) = 1041865114;
  *(a1 + 1872) = 0x400AE1483F970A3DLL;
  *(a1 + 1880) = 1106247680;
  *(a1 + 1888) = result;
  *(a1 + 1904) = 0x3E4CCCCD40A00000;
  *(a1 + 1912) = 1101004800;
  *(a1 + 1920) = 0;
  *(a1 + 1928) = 1107296256;
  *(a1 + 1936) = result;
  *(a1 + 1952) = 0x40000000;
  *(a1 + 1960) = 0x420C000041C80000;
  *(a1 + 1968) = xmmword_1BCE47CD0;
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
  *(a1 + 2208) = 0x40A000003FC00000;
  *(a1 + 2224) = xmmword_1BCE3C090;
  *(a1 + 2240) = xmmword_1BCE3C0A0;
  *(a1 + 2256) = result;
  *(a1 + 2304) = 0;
  *(a1 + 2288) = 0u;
  *(a1 + 2272) = 0u;
  *(a1 + 2312) = v4;
  *(a1 + 2320) = v11;
  return result;
}

void sub_1BCB4280C(uint64_t a1@<X8>)
{
  v2 = a1 + 1436;
  sub_1BCA93608();
  v4 = v3;
  sub_1BCA93608();
  *a1 = 0x4006666666666666;
  *(a1 + 8) = 2;
  *(a1 + 16) = 0x3FF0000000000000;
  *(a1 + 24) = 48;
  *(a1 + 32) = xmmword_1BCE3BED0;
  *(a1 + 48) = xmmword_1BCE3BED0;
  *(a1 + 64) = 0x42C8000042480000;
  *(a1 + 72) = 0xC37A000000000000;
  *(a1 + 80) = xmmword_1BCE3EB50;
  *(a1 + 96) = xmmword_1BCE49420;
  *(a1 + 112) = 0x3E75C28F3E0A3D71;
  *(a1 + 128) = xmmword_1BCE44E30;
  *(a1 + 144) = xmmword_1BCE3D840;
  *(a1 + 160) = xmmword_1BCE42B00;
  *(a1 + 176) = 1165623296;
  *(a1 + 184) = 0x3E0A3D713DB851ECLL;
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
  *(a1 + 720) = 0x41A8000041880000;
  *(a1 + 728) = 1096810496;
  *(a1 + 736) = 1;
  *(a1 + 744) = 10;
  *(a1 + 752) = xmmword_1BCE3FEC0;
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
  *(a1 + 1216) = xmmword_1BCE514A0;
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
  *(a1 + 2016) = xmmword_1BCE3C080;
  *(a1 + 2096) = 0u;
  *(a1 + 2080) = 0u;
  *(a1 + 2064) = 0u;
  *(a1 + 2048) = 0u;
  *(a1 + 2032) = 0u;
  *(a1 + 2112) = 1056964608;
  *(a1 + 2120) = 0x3DCCCCCD3D4CCCCDLL;
  *(a1 + 2128) = 0x400000003F800000;
  *(a1 + 2136) = 0x4060000040333333;
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

uint64_t Assembly.__allocating_init()()
{
  v0 = swift_allocObject();
  Assembly.init()();
  return v0;
}

uint64_t Assembly.__deallocating_deinit()
{

  return MEMORY[0x1EEE6BDC0](v0, 24, 7);
}

uint64_t static TemporalString.== infix(_:_:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  if (!a3)
  {
    if (!a6)
    {
      goto LABEL_4;
    }

    return 0;
  }

  if (a3 != 1)
  {
    if (a6 == 2)
    {
      goto LABEL_4;
    }

    return 0;
  }

  if (a6 != 1)
  {
    return 0;
  }

LABEL_4:
  if (a1 == a4 && a2 == a5)
  {
    return 1;
  }

  else
  {
    return sub_1BCE1E090();
  }
}

void sub_1BCB43118(uint64_t a1@<X8>)
{
  v2 = (a1 + 1436);
  sub_1BCA1CB6C();
  v4 = v3;
  sub_1BCA1CB6C();
  *a1 = 0x4006666666666666;
  *(a1 + 8) = 3;
  *(a1 + 16) = 0x3FF0000000000000;
  *(a1 + 24) = 48;
  *(a1 + 32) = xmmword_1BCE3BED0;
  *(a1 + 48) = xmmword_1BCE3BED0;
  *(a1 + 64) = 0x42DC000042480000;
  *(a1 + 72) = 0xC37A000000000000;
  *(a1 + 80) = xmmword_1BCE3EB50;
  *(a1 + 96) = xmmword_1BCE515F0;
  *(a1 + 112) = 0x3E4CCCCD3E23D70ALL;
  *(a1 + 128) = xmmword_1BCE3D880;
  *(a1 + 144) = xmmword_1BCE402F0;
  *(a1 + 160) = xmmword_1BCE3E670;
  *(a1 + 176) = 1167663104;
  *(a1 + 184) = 0x3E19999A3DB851ECLL;
  *(a1 + 192) = xmmword_1BCE40310;
  *(a1 + 208) = xmmword_1BCE40320;
  *(a1 + 224) = xmmword_1BCE40330;
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
  *(a1 + 712) = 0x3F4CCCCD3F19999ALL;
  *(a1 + 720) = 0x4170000041500000;
  *(a1 + 728) = 1093664768;
  *(a1 + 736) = 1;
  *(a1 + 744) = 4;
  *(a1 + 752) = xmmword_1BCE51600;
  *(a1 + 768) = 0xD000000000000010;
  *(a1 + 776) = 0x80000001BCE79860;
  *(a1 + 784) = 0xD000000000000014;
  *(a1 + 792) = 0x80000001BCE79880;
  *(a1 + 800) = 6;
  *(a1 + 816) = _Q0;
  *(a1 + 832) = 1065353216;
  *(a1 + 840) = 0x3F6666663F333333;
  *(a1 + 848) = 0x4183D70A40E00000;
  *(a1 + 856) = 1065353216;
  *(a1 + 864) = 1;
  *(a1 + 872) = 4;
  *(a1 + 880) = xmmword_1BCE51610;
  *(a1 + 896) = 0x2073756C756D7543;
  *(a1 + 904) = 0xEB000000004D202DLL;
  *(a1 + 912) = 0x5F73756C756D7543;
  *(a1 + 920) = 0xEF4D656C676E6953;
  *(a1 + 928) = 10;
  *(a1 + 944) = _Q0;
  *(a1 + 960) = 1065353216;
  *(a1 + 968) = 0x3F8000003F4CCCCDLL;
  *(a1 + 976) = 0x4100000040E00000;
  *(a1 + 984) = 3224468704;
  *(a1 + 992) = 1;
  *(a1 + 1000) = 4;
  *(a1 + 1008) = xmmword_1BCE40350;
  *(a1 + 1024) = 0x2073756C756D7543;
  *(a1 + 1032) = 0xEB000000004D202DLL;
  *(a1 + 1040) = 0x5F73756C756D7543;
  *(a1 + 1048) = 0xEF4D656C676E6953;
  *(a1 + 1056) = 10;
  *(a1 + 1072) = _Q0;
  *(a1 + 1088) = 1065353216;
  *(a1 + 1096) = 0x401999993F800000;
  *(a1 + 1104) = 0x40C0000040800000;
  *(a1 + 1112) = 1088421888;
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
  *(a1 + 1216) = xmmword_1BCE51620;
  *(a1 + 1232) = 0;
  *(a1 + 1236) = 1;
  *(a1 + 1240) = 0xD000000000000010;
  *(a1 + 1248) = 0x80000001BCE798A0;
  *(a1 + 1256) = 0xD000000000000015;
  *(a1 + 1264) = 0x80000001BCE798C0;
  *(a1 + 1272) = 5;
  *(a1 + 1280) = 0;
  *(a1 + 1288) = 0x3FAA3D703F88F5C2;
  *(a1 + 1296) = 0x41A0000042B40000;
  *(a1 + 1304) = 0;
  *(a1 + 1312) = _Q0;
  *(a1 + 1328) = _Q0;
  *(a1 + 1344) = 0;
  *(a1 + 1352) = 0x40000000;
  *(a1 + 1360) = 0;
  *(a1 + 1368) = 2;
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
  __asm { FMOV            V1.2S, #-30.0 }

  *(a1 + 1616) = -_D1;
  *(a1 + 1624) = 0x40000000;
  *(a1 + 1628) = 256;
  *(a1 + 1632) = 257;
  *(a1 + 1634) = 0;
  *(a1 + 1642) = 0x101010100010000;
  *(a1 + 1650) = 0;
  *(a1 + 1652) = 1;
  *(a1 + 1656) = 0;
  *(a1 + 1657) = v12;
  *(a1 + 1659) = v13;
  *(a1 + 1660) = 1061972805;
  *(a1 + 1664) = 0x408800004053D70ALL;
  *(a1 + 1672) = 3;
  *(a1 + 1680) = xmmword_1BCE51630;
  *(a1 + 1696) = xmmword_1BCE51640;
  *(a1 + 1712) = xmmword_1BCE40390;
  *(a1 + 1728) = 0x3F0000003EB33333;
  *(a1 + 1736) = 0x3ECCCCCD47C35000;
  *(a1 + 1744) = 0u;
  *(a1 + 1760) = 10;
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
  *(a1 + 1952) = 1077936128;
  *(a1 + 1960) = 0x420C000041C80000;
  *(a1 + 1968) = xmmword_1BCE3E700;
  *(a1 + 1984) = 0x3F80000000000000;
  *(a1 + 1992) = 1061158912;
  *(a1 + 2000) = 0x3F4CCCCD3E4CCCCDLL;
  *(a1 + 2008) = 0x3F6666663F333333;
  *(a1 + 2016) = xmmword_1BCE3C080;
  *(a1 + 2096) = 0u;
  *(a1 + 2080) = 0u;
  *(a1 + 2064) = 0u;
  *(a1 + 2048) = 0u;
  *(a1 + 2032) = 0u;
  *(a1 + 2112) = 1056964608;
  *(a1 + 2120) = 0x3E19999A3D851EB8;
  *(a1 + 2128) = 0x400000003F800000;
  *(a1 + 2136) = 0x4060000040400000;
  *(a1 + 2144) = -1046478848;
  *(a1 + 2160) = _Q0;
  *(a1 + 2176) = _Q0;
  *(a1 + 2192) = 1041865114;
  *(a1 + 2200) = 12;
  *(a1 + 2208) = 0x414000003FC00000;
  *(a1 + 2224) = xmmword_1BCE51650;
  *(a1 + 2240) = xmmword_1BCE51660;
  *(a1 + 2256) = _Q0;
  *(a1 + 2304) = 0;
  *(a1 + 2288) = 0u;
  *(a1 + 2272) = 0u;
  *(a1 + 2312) = v4;
  *(a1 + 2320) = v11;
}

void sub_1BCB438B4(uint64_t a1@<X8>)
{
  v2 = (a1 + 1436);
  sub_1BCB4403C();
  v4 = v3;
  sub_1BCB4403C();
  *a1 = 0x4006666666666666;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0x3FF0000000000000;
  *(a1 + 24) = 48;
  *(a1 + 32) = xmmword_1BCE3BED0;
  *(a1 + 48) = xmmword_1BCE3BED0;
  *(a1 + 64) = 0x42C8000042480000;
  *(a1 + 72) = 0xC409800000000000;
  *(a1 + 80) = xmmword_1BCE51690;
  *(a1 + 96) = xmmword_1BCE516A0;
  *(a1 + 112) = 0x3ECCCCCD3E99999ALL;
  *(a1 + 128) = xmmword_1BCE3C7C0;
  *(a1 + 144) = xmmword_1BCE4FAF0;
  *(a1 + 160) = xmmword_1BCE502E0;
  *(a1 + 176) = 1169915904;
  *(a1 + 184) = 0x3E8F5C293DCCCCCDLL;
  *(a1 + 192) = xmmword_1BCE40310;
  *(a1 + 208) = xmmword_1BCE42B10;
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
  *(a1 + 712) = vdup_n_s32(0x40799999u);
  __asm { FMOV            V1.2S, #18.0 }

  *(a1 + 720) = _D1;
  *(a1 + 728) = 1098373816;
  *(a1 + 736) = 1;
  *(a1 + 744) = 6;
  *(a1 + 752) = xmmword_1BCE3BF80;
  *(a1 + 768) = 0x617274736F746C41;
  *(a1 + 776) = 0xEF4C202D20737574;
  *(a1 + 784) = 0xD000000000000013;
  *(a1 + 792) = 0x80000001BCE798E0;
  *(a1 + 800) = 6;
  *(a1 + 816) = _Q0;
  *(a1 + 832) = 1065353216;
  *(a1 + 840) = vdup_n_s32(0x4099999Au);
  *(a1 + 848) = 0x4180000041400000;
  *(a1 + 856) = 1087928784;
  *(a1 + 864) = 1;
  *(a1 + 872) = 5;
  *(a1 + 880) = xmmword_1BCE4F930;
  *(a1 + 896) = 0x617274736F746C41;
  *(a1 + 904) = 0xEF4C202D20737574;
  *(a1 + 912) = 0xD000000000000013;
  *(a1 + 920) = 0x80000001BCE798E0;
  *(a1 + 928) = 6;
  *(a1 + 944) = _Q0;
  *(a1 + 960) = 1065353216;
  __asm { FMOV            V1.2S, #6.0 }

  *(a1 + 968) = _D1;
  *(a1 + 976) = 0x4180000041600000;
  *(a1 + 984) = 1075851760;
  *(a1 + 992) = 1;
  *(a1 + 1000) = 4;
  *(a1 + 1008) = xmmword_1BCE3C6F0;
  *(a1 + 1024) = 0x617274736F746C41;
  *(a1 + 1032) = 0xEF53202D20737574;
  *(a1 + 1040) = 0xD000000000000013;
  *(a1 + 1048) = 0x80000001BCE792E0;
  *(a1 + 1056) = 6;
  *(a1 + 1072) = _Q0;
  *(a1 + 1088) = 1065353216;
  *(a1 + 1096) = 0;
  __asm { FMOV            V2.2S, #3.25 }

  *(a1 + 1104) = _D2;
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
  *(a1 + 1200) = _Q0;
  *(a1 + 1216) = xmmword_1BCE516B0;
  *(a1 + 1232) = 0;
  *(a1 + 1236) = 1;
  *(a1 + 1240) = 0x73757461727453;
  *(a1 + 1248) = 0xE700000000000000;
  *(a1 + 1256) = 0x5F73757461727453;
  *(a1 + 1264) = 0xEF74656B6E616C42;
  *(a1 + 1272) = 8;
  *(a1 + 1280) = 0;
  *(a1 + 1288) = 0x3FAA3D703F88F5C2;
  *(a1 + 1296) = 0x41A0000042B40000;
  *(a1 + 1304) = 0;
  *(a1 + 1312) = _Q0;
  *(a1 + 1328) = _Q0;
  *(a1 + 1344) = 0;
  *(a1 + 1352) = 0x40000000;
  *(a1 + 1360) = 0;
  *(a1 + 1368) = 2;
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
  *(a1 + 1552) = xmmword_1BCE4FB50;
  *(a1 + 1568) = 0x42B875C2424FCCCCLL;
  *(a1 + 1584) = 0u;
  *(a1 + 1600) = xmmword_1BCE4FB60;
  __asm { FMOV            V2.2S, #-30.0 }

  *(a1 + 1616) = -_D2;
  *(a1 + 1624) = 0x40000000;
  *(a1 + 1628) = 16777472;
  *(a1 + 1638) = 0;
  *(a1 + 1632) = 0;
  *(a1 + 1646) = 16843009;
  *(a1 + 1649) = 16843009;
  *(a1 + 1656) = 0;
  *(a1 + 1657) = v15;
  *(a1 + 1659) = v16;
  *(a1 + 1660) = 1064397920;
  *(a1 + 1664) = 0x40C0000040A00000;
  *(a1 + 1672) = 3;
  *(a1 + 1680) = xmmword_1BCE499B0;
  *(a1 + 1696) = xmmword_1BCE4AA70;
  *(a1 + 1712) = xmmword_1BCE4AA80;
  *(a1 + 1728) = 0x3F0000003EB33333;
  *(a1 + 1736) = 0x3E800000453B8000;
  *(a1 + 1744) = 0u;
  *(a1 + 1760) = 10;
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
  *(a1 + 1888) = _Q0;
  *(a1 + 1904) = 0x3E99999A00000000;
  *(a1 + 1912) = 1101004800;
  *(a1 + 1920) = 0;
  *(a1 + 1928) = 1106247680;
  *(a1 + 1936) = _Q0;
  *(a1 + 1952) = 1077936128;
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
  *(a1 + 2120) = 0x3E23D70A3D75C28FLL;
  *(a1 + 2128) = 0x400000003F800000;
  *(a1 + 2136) = 0x4080000040600000;
  *(a1 + 2144) = -1046478848;
  *(a1 + 2160) = _Q0;
  *(a1 + 2176) = _Q0;
  *(a1 + 2192) = 1063675494;
  *(a1 + 2200) = 10;
  *(a1 + 2208) = 0x40A000003FC00000;
  *(a1 + 2224) = xmmword_1BCE3C090;
  *(a1 + 2240) = xmmword_1BCE3C0A0;
  *(a1 + 2256) = _Q0;
  *(a1 + 2288) = 0u;
  *(a1 + 2272) = 0u;
  *(a1 + 2304) = 3;
  *(a1 + 2312) = v4;
  *(a1 + 2320) = v14;
}

__n128 sub_1BCB4403C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07858);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1BCE3E120;
  *(v0 + 48) = xmmword_1BCE3E8F0;
  *(v0 + 2480) = xmmword_1BCE3CE40;
  *(v0 + 3696) = xmmword_1BCE3CE40;
  *(v0 + 2496) = 0x437A000044BB8000;
  *(v0 + 3712) = 0x437A000044BB8000;
  *(v0 + 2512) = xmmword_1BCE3E930;
  *(v0 + 3728) = xmmword_1BCE3E930;
  *(v0 + 2544) = xmmword_1BCE4FCE0;
  *(v0 + 3760) = xmmword_1BCE4FCE0;
  *(v0 + 2560) = xmmword_1BCE3E950;
  *(v0 + 3776) = xmmword_1BCE3E950;
  *(v0 + 2576) = xmmword_1BCE3E960;
  *(v0 + 3792) = xmmword_1BCE3E960;
  *(v0 + 2672) = xmmword_1BCE4FCF0;
  *(v0 + 3888) = xmmword_1BCE4FCF0;
  *(v0 + 2688) = xmmword_1BCE4FD00;
  *(v0 + 3904) = xmmword_1BCE4FD00;
  *(v0 + 2704) = xmmword_1BCE4FD10;
  *(v0 + 3920) = xmmword_1BCE4FD10;
  *(v0 + 2720) = xmmword_1BCE4FD20;
  *(v0 + 3936) = xmmword_1BCE4FD20;
  *(v0 + 2736) = xmmword_1BCE4FD30;
  *(v0 + 3952) = xmmword_1BCE4FD30;
  *(v0 + 2752) = xmmword_1BCE4FD40;
  *(v0 + 3968) = xmmword_1BCE4FD40;
  *(v0 + 2768) = xmmword_1BCE4FD50;
  *(v0 + 3984) = xmmword_1BCE4FD50;
  *(v0 + 2784) = xmmword_1BCE4FD60;
  *(v0 + 4000) = xmmword_1BCE4FD60;
  *(v0 + 2800) = xmmword_1BCE3FD30;
  *(v0 + 4016) = xmmword_1BCE3FD30;
  *(v0 + 2816) = 1063675494;
  *(v0 + 4032) = 1063675494;
  *(v0 + 2832) = xmmword_1BCE3E9D0;
  *(v0 + 4048) = xmmword_1BCE3E9D0;
  *(v0 + 2864) = xmmword_1BCE4FD70;
  *(v0 + 4080) = xmmword_1BCE4FD70;
  *(v0 + 2880) = xmmword_1BCE4FD80;
  *(v0 + 4096) = xmmword_1BCE4FD80;
  *(v0 + 2896) = xmmword_1BCE4FD90;
  *(v0 + 4112) = xmmword_1BCE4FD90;
  *(v0 + 2912) = xmmword_1BCE4FDA0;
  *(v0 + 4128) = xmmword_1BCE4FDA0;
  *(v0 + 2928) = xmmword_1BCE4FDB0;
  *(v0 + 4144) = xmmword_1BCE4FDB0;
  *(v0 + 2944) = xmmword_1BCE4FDC0;
  *(v0 + 4160) = xmmword_1BCE4FDC0;
  *(v0 + 2960) = xmmword_1BCE4FDD0;
  *(v0 + 4176) = xmmword_1BCE4FDD0;
  *(v0 + 2976) = xmmword_1BCE4FDE0;
  *(v0 + 4192) = xmmword_1BCE4FDE0;
  *(v0 + 2992) = xmmword_1BCE4FDF0;
  *(v0 + 4208) = xmmword_1BCE4FDF0;
  *(v0 + 3008) = xmmword_1BCE41640;
  *(v0 + 4224) = xmmword_1BCE41640;
  *(v0 + 3024) = xmmword_1BCE4FE00;
  *(v0 + 4240) = xmmword_1BCE4FE00;
  *(v0 + 3040) = xmmword_1BCE4FE10;
  *(v0 + 4256) = xmmword_1BCE4FE10;
  *(v0 + 3440) = xmmword_1BCE4FE20;
  *(v0 + 4656) = xmmword_1BCE4FE20;
  *(v0 + 3456) = xmmword_1BCE4FE30;
  *(v0 + 4672) = xmmword_1BCE4FE30;
  *(v0 + 3472) = xmmword_1BCE4FE40;
  *(v0 + 4688) = xmmword_1BCE4FE40;
  *(v0 + 3488) = xmmword_1BCE40080;
  *(v0 + 4704) = xmmword_1BCE40080;
  *(v0 + 64) = 0x4296000043FA0000;
  *(v0 + 1264) = xmmword_1BCE3E8F0;
  *(v0 + 4912) = xmmword_1BCE3E8F0;
  *(v0 + 6128) = xmmword_1BCE3E8F0;
  *(v0 + 1280) = 0x4296000043FA0000;
  *(v0 + 4928) = 0x4296000043FA0000;
  *(v0 + 6144) = 0x4296000043FA0000;
  *(v0 + 80) = xmmword_1BCE3E720;
  *(v0 + 96) = xmmword_1BCE3E730;
  *(v0 + 1296) = xmmword_1BCE3E720;
  *(v0 + 4944) = xmmword_1BCE3E720;
  *(v0 + 6160) = xmmword_1BCE3E720;
  *(v0 + 1312) = xmmword_1BCE3E730;
  *(v0 + 4960) = xmmword_1BCE3E730;
  *(v0 + 6176) = xmmword_1BCE3E730;
  *(v0 + 112) = xmmword_1BCE3E740;
  *(v0 + 128) = xmmword_1BCE3E750;
  *(v0 + 1328) = xmmword_1BCE3E740;
  *(v0 + 4976) = xmmword_1BCE3E740;
  *(v0 + 6192) = xmmword_1BCE3E740;
  *(v0 + 1344) = xmmword_1BCE3E750;
  *(v0 + 4992) = xmmword_1BCE3E750;
  *(v0 + 6208) = xmmword_1BCE3E750;
  *(v0 + 144) = xmmword_1BCE3E760;
  *(v0 + 160) = xmmword_1BCE3E770;
  *(v0 + 1360) = xmmword_1BCE3E760;
  *(v0 + 5008) = xmmword_1BCE3E760;
  *(v0 + 6224) = xmmword_1BCE3E760;
  *(v0 + 1376) = xmmword_1BCE3E770;
  *(v0 + 5024) = xmmword_1BCE3E770;
  *(v0 + 6240) = xmmword_1BCE3E770;
  *(v0 + 240) = xmmword_1BCE4FB70;
  *(v0 + 256) = xmmword_1BCE4FB80;
  *(v0 + 1456) = xmmword_1BCE4FB70;
  *(v0 + 5104) = xmmword_1BCE4FB70;
  *(v0 + 6320) = xmmword_1BCE4FB70;
  *(v0 + 1472) = xmmword_1BCE4FB80;
  *(v0 + 5120) = xmmword_1BCE4FB80;
  *(v0 + 6336) = xmmword_1BCE4FB80;
  *(v0 + 272) = xmmword_1BCE4FB90;
  *(v0 + 288) = xmmword_1BCE3E1D0;
  *(v0 + 1488) = xmmword_1BCE4FB90;
  *(v0 + 5136) = xmmword_1BCE4FB90;
  *(v0 + 6352) = xmmword_1BCE4FB90;
  *(v0 + 1504) = xmmword_1BCE3E1D0;
  *(v0 + 5152) = xmmword_1BCE3E1D0;
  *(v0 + 6368) = xmmword_1BCE3E1D0;
  *(v0 + 304) = xmmword_1BCE4FBA0;
  *(v0 + 320) = xmmword_1BCE4FBB0;
  *(v0 + 1520) = xmmword_1BCE4FBA0;
  *(v0 + 5168) = xmmword_1BCE4FBA0;
  *(v0 + 6384) = xmmword_1BCE4FBA0;
  *(v0 + 1536) = xmmword_1BCE4FBB0;
  *(v0 + 5184) = xmmword_1BCE4FBB0;
  *(v0 + 6400) = xmmword_1BCE4FBB0;
  *(v0 + 336) = xmmword_1BCE4FBC0;
  *(v0 + 352) = xmmword_1BCE4FBD0;
  *(v0 + 1552) = xmmword_1BCE4FBC0;
  *(v0 + 5200) = xmmword_1BCE4FBC0;
  *(v0 + 6416) = xmmword_1BCE4FBC0;
  *(v0 + 368) = xmmword_1BCE3FC10;
  *(v0 + 1568) = xmmword_1BCE4FBD0;
  *(v0 + 5216) = xmmword_1BCE4FBD0;
  *(v0 + 6432) = xmmword_1BCE4FBD0;
  *(v0 + 384) = 0x3F8000003F666666;
  *(v0 + 1584) = xmmword_1BCE3FC10;
  *(v0 + 5232) = xmmword_1BCE3FC10;
  *(v0 + 6448) = xmmword_1BCE3FC10;
  *(v0 + 1600) = 0x3F8000003F666666;
  *(v0 + 5248) = 0x3F8000003F666666;
  *(v0 + 6464) = 0x3F8000003F666666;
  *(v0 + 432) = xmmword_1BCE4FBE0;
  *(v0 + 448) = xmmword_1BCE4FBF0;
  *(v0 + 1648) = xmmword_1BCE4FBE0;
  *(v0 + 5296) = xmmword_1BCE4FBE0;
  *(v0 + 6512) = xmmword_1BCE4FBE0;
  *(v0 + 1664) = xmmword_1BCE4FBF0;
  *(v0 + 5312) = xmmword_1BCE4FBF0;
  *(v0 + 6528) = xmmword_1BCE4FBF0;
  *(v0 + 464) = xmmword_1BCE4FC00;
  *(v0 + 480) = xmmword_1BCE4FC10;
  *(v0 + 1680) = xmmword_1BCE4FC00;
  *(v0 + 5328) = xmmword_1BCE4FC00;
  *(v0 + 6544) = xmmword_1BCE4FC00;
  *(v0 + 1696) = xmmword_1BCE4FC10;
  *(v0 + 5344) = xmmword_1BCE4FC10;
  *(v0 + 6560) = xmmword_1BCE4FC10;
  *(v0 + 496) = xmmword_1BCE4FC20;
  *(v0 + 512) = xmmword_1BCE4FC30;
  *(v0 + 1712) = xmmword_1BCE4FC20;
  *(v0 + 5360) = xmmword_1BCE4FC20;
  *(v0 + 6576) = xmmword_1BCE4FC20;
  *(v0 + 1728) = xmmword_1BCE4FC30;
  *(v0 + 5376) = xmmword_1BCE4FC30;
  *(v0 + 6592) = xmmword_1BCE4FC30;
  *(v0 + 528) = xmmword_1BCE4FC40;
  *(v0 + 544) = xmmword_1BCE4FC50;
  *(v0 + 1744) = xmmword_1BCE4FC40;
  *(v0 + 5392) = xmmword_1BCE4FC40;
  *(v0 + 6608) = xmmword_1BCE4FC40;
  *(v0 + 1760) = xmmword_1BCE4FC50;
  *(v0 + 5408) = xmmword_1BCE4FC50;
  *(v0 + 6624) = xmmword_1BCE4FC50;
  *(v0 + 560) = xmmword_1BCE4FC60;
  *(v0 + 576) = xmmword_1BCE4FC70;
  *(v0 + 1776) = xmmword_1BCE4FC60;
  *(v0 + 5424) = xmmword_1BCE4FC60;
  *(v0 + 6640) = xmmword_1BCE4FC60;
  *(v0 + 1792) = xmmword_1BCE4FC70;
  *(v0 + 5440) = xmmword_1BCE4FC70;
  *(v0 + 6656) = xmmword_1BCE4FC70;
  *(v0 + 592) = xmmword_1BCE4FC80;
  *(v0 + 608) = xmmword_1BCE4FC90;
  *(v0 + 1808) = xmmword_1BCE4FC80;
  *(v0 + 5456) = xmmword_1BCE4FC80;
  *(v0 + 6672) = xmmword_1BCE4FC80;
  *(v0 + 640) = xmmword_1BCE3A880;
  *(v0 + 704) = xmmword_1BCE3A880;
  *(v0 + 1824) = xmmword_1BCE4FC90;
  *(v0 + 5472) = xmmword_1BCE4FC90;
  *(v0 + 6688) = xmmword_1BCE4FC90;
  *(v0 + 800) = xmmword_1BCE3DD90;
  *(v0 + 1856) = xmmword_1BCE3A880;
  *(v0 + 1920) = xmmword_1BCE3A880;
  *(v0 + 3072) = xmmword_1BCE3A880;
  *(v0 + 3136) = xmmword_1BCE3A880;
  *(v0 + 4288) = xmmword_1BCE3A880;
  *(v0 + 4352) = xmmword_1BCE3A880;
  *(v0 + 5504) = xmmword_1BCE3A880;
  *(v0 + 5568) = xmmword_1BCE3A880;
  *(v0 + 6720) = xmmword_1BCE3A880;
  *(v0 + 6784) = xmmword_1BCE3A880;
  *(v0 + 2016) = xmmword_1BCE3DD90;
  *(v0 + 3232) = xmmword_1BCE3DD90;
  *(v0 + 4448) = xmmword_1BCE3DD90;
  *(v0 + 5664) = xmmword_1BCE3DD90;
  *(v0 + 6880) = xmmword_1BCE3DD90;
  *(v0 + 2224) = xmmword_1BCE4FCA0;
  *(v0 + 5872) = xmmword_1BCE4FCA0;
  *(v0 + 7088) = xmmword_1BCE4FCA0;
  *(v0 + 1008) = xmmword_1BCE4FCA0;
  *(v0 + 1024) = xmmword_1BCE4FCB0;
  __asm { FMOV            V0.2D, #1.0 }

  *(v0 + 2240) = xmmword_1BCE4FCB0;
  *(v0 + 5888) = xmmword_1BCE4FCB0;
  *(v0 + 7104) = xmmword_1BCE4FCB0;
  *(v0 + 1040) = xmmword_1BCE4FCC0;
  *(v0 + 2256) = xmmword_1BCE4FCC0;
  *(v0 + 5904) = xmmword_1BCE4FCC0;
  *(v0 + 7120) = xmmword_1BCE4FCC0;
  *(v0 + 1056) = xmmword_1BCE4FCD0;
  *(v0 + 2272) = xmmword_1BCE4FCD0;
  *(v0 + 5920) = xmmword_1BCE4FCD0;
  *(v0 + 7136) = xmmword_1BCE4FCD0;
  *(v0 + 736) = xmmword_1BCE3C8C0;
  *(v0 + 960) = xmmword_1BCE3C8C0;
  *(v0 + 1088) = xmmword_1BCE3C8C0;
  *(v0 + 1952) = xmmword_1BCE3C8C0;
  *(v0 + 2176) = xmmword_1BCE3C8C0;
  *(v0 + 2304) = xmmword_1BCE3C8C0;
  *(v0 + 3168) = xmmword_1BCE3C8C0;
  *(v0 + 3392) = xmmword_1BCE3C8C0;
  *(v0 + 3520) = xmmword_1BCE3C8C0;
  *(v0 + 4384) = xmmword_1BCE3C8C0;
  *(v0 + 4608) = xmmword_1BCE3C8C0;
  *(v0 + 4736) = xmmword_1BCE3C8C0;
  *(v0 + 5600) = xmmword_1BCE3C8C0;
  *(v0 + 5824) = xmmword_1BCE3C8C0;
  *(v0 + 5952) = xmmword_1BCE3C8C0;
  *(v0 + 6816) = xmmword_1BCE3C8C0;
  *(v0 + 7040) = xmmword_1BCE3C8C0;
  *(v0 + 7168) = xmmword_1BCE3C8C0;
  *(v0 + 992) = xmmword_1BCE3DAE0;
  *(v0 + 1120) = xmmword_1BCE3DAE0;
  *(v0 + 2208) = xmmword_1BCE3DAE0;
  *(v0 + 2336) = xmmword_1BCE3DAE0;
  *(v0 + 3424) = xmmword_1BCE3DAE0;
  *(v0 + 3552) = xmmword_1BCE3DAE0;
  *(v0 + 4640) = xmmword_1BCE3DAE0;
  *(v0 + 4768) = xmmword_1BCE3DAE0;
  *(v0 + 5856) = xmmword_1BCE3DAE0;
  *(v0 + 5984) = xmmword_1BCE3DAE0;
  *(v0 + 7072) = xmmword_1BCE3DAE0;
  *(v0 + 7200) = xmmword_1BCE3DAE0;
  *(v0 + 1168) = 0x4170000042480000;
  *(v0 + 2384) = 0x4170000042480000;
  *(v0 + 3504) = result;
  *(v0 + 3264) = result;
  *(v0 + 3280) = result;
  *(v0 + 3296) = result;
  *(v0 + 3360) = result;
  *(v0 + 3376) = result;
  *(v0 + 3408) = result;
  *(v0 + 3312) = result;
  *(v0 + 3328) = result;
  *(v0 + 3344) = result;
  *(v0 + 3600) = 0x4170000042480000;
  *(v0 + 4816) = 0x4170000042480000;
  *(v0 + 6032) = 0x4170000042480000;
  *(v0 + 7248) = 0x4170000042480000;
  *(v0 + 624) = result;
  *(v0 + 3184) = result;
  *(v0 + 3200) = result;
  *(v0 + 3216) = result;
  *(v0 + 3248) = result;
  *(v0 + 688) = result;
  *(v0 + 720) = result;
  *(v0 + 3088) = result;
  *(v0 + 3104) = result;
  *(v0 + 3120) = result;
  *(v0 + 3152) = result;
  *(v0 + 768) = result;
  *(v0 + 784) = result;
  *(v0 + 944) = result;
  *(v0 + 976) = result;
  *(v0 + 3056) = result;
  *(v0 + 176) = result;
  *(v0 + 192) = result;
  *(v0 + 208) = result;
  *(v0 + 224) = result;
  *(v0 + 400) = result;
  *(v0 + 416) = 0x3FF0000000000000;
  *(v0 + 424) = 0;
  *(v0 + 656) = result;
  *(v0 + 672) = result;
  *(v0 + 2824) = 0x3FF0000000000000;
  *(v0 + 2848) = 0x3FF0000000000000;
  *(v0 + 2856) = 0;
  *(v0 + 752) = result;
  *(v0 + 816) = result;
  *(v0 + 832) = result;
  *(v0 + 848) = result;
  *(v0 + 864) = result;
  *(v0 + 880) = result;
  *(v0 + 896) = result;
  *(v0 + 912) = result;
  *(v0 + 928) = result;
  *(v0 + 2640) = result;
  *(v0 + 2656) = result;
  *(v0 + 1072) = result;
  *(v0 + 1104) = result;
  *(v0 + 1136) = result;
  *(v0 + 2592) = result;
  *(v0 + 2608) = result;
  *(v0 + 2624) = result;
  *(v0 + 1152) = result;
  *(v0 + 1176) = 0x3FF0000000000000;
  *(v0 + 1184) = result;
  *(v0 + 2400) = result;
  *(v0 + 2528) = result;
  *(v0 + 2473) = *v7;
  *(v0 + 2476) = *&v7[3];
  *(v0 + 2504) = 1062836634;
  *(v0 + 2416) = result;
  *(v0 + 2432) = result;
  *(v0 + 2448) = 0x3FF0000000000000;
  *(v0 + 2464) = 0x404E000000000000;
  *(v0 + 2472) = 0;
  *(v0 + 1200) = result;
  *(v0 + 1216) = result;
  *(v0 + 1232) = 0x3FF0000000000000;
  *(v0 + 2352) = result;
  *(v0 + 2368) = result;
  *(v0 + 2392) = 0x3FF0000000000000;
  *(v0 + 1248) = 0xC031FFFFFFFFFFFFLL;
  *(v0 + 1256) = 0;
  *(v0 + 2320) = result;
  *(v0 + 1257) = *v6;
  *(v0 + 1260) = *&v6[3];
  *(v0 + 1288) = 1060320051;
  *(v0 + 1392) = result;
  *(v0 + 2288) = result;
  *(v0 + 1408) = result;
  *(v0 + 1424) = result;
  *(v0 + 2128) = result;
  *(v0 + 2144) = result;
  *(v0 + 2160) = result;
  *(v0 + 2192) = result;
  *(v0 + 2032) = result;
  *(v0 + 2048) = result;
  *(v0 + 2064) = result;
  *(v0 + 2080) = result;
  *(v0 + 2096) = result;
  *(v0 + 2112) = result;
  *(v0 + 1440) = result;
  *(v0 + 1608) = 0x3FF0000000000000;
  *(v0 + 1936) = result;
  *(v0 + 1968) = result;
  *(v0 + 1984) = result;
  *(v0 + 2000) = result;
  *(v0 + 1616) = result;
  *(v0 + 1632) = 0x3FF0000000000000;
  *(v0 + 1840) = result;
  *(v0 + 1872) = result;
  *(v0 + 1888) = result;
  *(v0 + 1904) = result;
  *(v0 + 1640) = 0;
  *(v0 + 3536) = result;
  *(v0 + 3568) = result;
  *(v0 + 3584) = result;
  *(v0 + 3616) = result;
  *(v0 + 3632) = result;
  *(v0 + 3648) = result;
  *(v0 + 3744) = result;
  *(v0 + 3808) = result;
  *(v0 + 3824) = result;
  *(v0 + 3840) = result;
  *(v0 + 3856) = result;
  *(v0 + 3872) = result;
  *(v0 + 4272) = result;
  *(v0 + 4304) = result;
  *(v0 + 4320) = result;
  *(v0 + 4336) = result;
  *(v0 + 4368) = result;
  *(v0 + 4400) = result;
  *(v0 + 4416) = result;
  *(v0 + 4432) = result;
  *(v0 + 4464) = result;
  *(v0 + 4480) = result;
  *(v0 + 4496) = result;
  *(v0 + 4512) = result;
  *(v0 + 4528) = result;
  *(v0 + 4544) = result;
  *(v0 + 4560) = result;
  *(v0 + 4576) = result;
  *(v0 + 4592) = result;
  *(v0 + 4624) = result;
  *(v0 + 4720) = result;
  *(v0 + 4752) = result;
  *(v0 + 4784) = result;
  *(v0 + 4800) = result;
  *(v0 + 4832) = result;
  *(v0 + 4848) = result;
  *(v0 + 4864) = result;
  *(v0 + 5040) = result;
  *(v0 + 5056) = result;
  *(v0 + 5072) = result;
  *(v0 + 5088) = result;
  *(v0 + 5264) = result;
  *(v0 + 5488) = result;
  *(v0 + 5520) = result;
  *(v0 + 5536) = result;
  *(v0 + 5552) = result;
  *(v0 + 5584) = result;
  *(v0 + 5616) = result;
  *(v0 + 5632) = result;
  *(v0 + 5648) = result;
  *(v0 + 5680) = result;
  *(v0 + 5696) = result;
  *(v0 + 5712) = result;
  *(v0 + 5728) = result;
  *(v0 + 5744) = result;
  *(v0 + 5760) = result;
  *(v0 + 5776) = result;
  *(v0 + 5792) = result;
  *(v0 + 5808) = result;
  *(v0 + 5840) = result;
  *(v0 + 5936) = result;
  *(v0 + 5968) = result;
  *(v0 + 6000) = result;
  *(v0 + 6016) = result;
  *(v0 + 6048) = result;
  *(v0 + 6064) = result;
  *(v0 + 6080) = result;
  *(v0 + 6256) = result;
  *(v0 + 6272) = result;
  *(v0 + 6288) = result;
  *(v0 + 6304) = result;
  *(v0 + 6480) = result;
  *(v0 + 6704) = result;
  *(v0 + 6736) = result;
  *(v0 + 6752) = result;
  *(v0 + 6768) = result;
  *(v0 + 6800) = result;
  *(v0 + 6832) = result;
  *(v0 + 6848) = result;
  *(v0 + 6864) = result;
  *(v0 + 6896) = result;
  *(v0 + 6912) = result;
  *(v0 + 6928) = result;
  *(v0 + 6944) = result;
  *(v0 + 6960) = result;
  *(v0 + 6976) = result;
  *(v0 + 6992) = result;
  *(v0 + 7008) = result;
  *(v0 + 7024) = result;
  *(v0 + 7056) = result;
  *(v0 + 7152) = result;
  *(v0 + 7184) = result;
  *(v0 + 7216) = result;
  *(v0 + 7232) = result;
  *(v0 + 7264) = result;
  *(v0 + 7280) = result;
  *(v0 + 7296) = result;
  *(v0 + 392) = 0x3FF0000000000000;
  *(v0 + 32) = 0xC056800000000000;
  *(v0 + 40) = 0;
  *(v0 + 72) = 1060320051;
  *(v0 + 3608) = 0x3FF0000000000000;
  *(v0 + 3689) = *v8;
  *(v0 + 3664) = 0x3FF0000000000000;
  *(v0 + 3680) = 0x404E000000000000;
  *(v0 + 3688) = 1;
  *(v0 + 3692) = *&v8[3];
  *(v0 + 3720) = 1062836634;
  *(v0 + 4040) = 0x3FF0000000000000;
  *(v0 + 4064) = 0x3FF0000000000000;
  *(v0 + 4072) = 0;
  *(v0 + 4824) = 0x3FF0000000000000;
  *(v0 + 4880) = 0x3FF0000000000000;
  *(v0 + 4896) = 0xC032000000000004;
  *(v0 + 4905) = *v9;
  *(v0 + 4904) = 1;
  *(v0 + 4908) = *&v9[3];
  *(v0 + 4936) = 1060320051;
  *(v0 + 5256) = 0x3FF0000000000000;
  *(v0 + 5280) = 0x3FF0000000000000;
  *(v0 + 5288) = 0;
  *(v0 + 6040) = 0x3FF0000000000000;
  *(v0 + 6096) = 0x3FF0000000000000;
  *(v0 + 6112) = 0xC056800000000000;
  *(v0 + 6120) = 1;
  *(v0 + 6121) = *v10;
  *(v0 + 6124) = *&v10[3];
  *(v0 + 6152) = 1060320051;
  *(v0 + 6472) = 0x3FF0000000000000;
  *(v0 + 6496) = 0x3FF0000000000000;
  *(v0 + 6504) = 0;
  *(v0 + 7256) = 0x3FF0000000000000;
  *(v0 + 7312) = 0x3FF0000000000000;
  return result;
}

unint64_t sub_1BCB44AA0()
{
  result = qword_1EDA16F98[0];
  if (!qword_1EDA16F98[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDA16F98);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for IsHidden(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFF)
  {
    if (a2 + 65281 <= 0xFFFEFFFF)
    {
      v2 = 2;
    }

    else
    {
      v2 = 4;
    }

    if (a2 + 65281 < 0xFF0000)
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
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = *(a1 + 2);
      if (!*(a1 + 2))
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 16)) - 65282;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v5 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for IsHidden(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65281 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65281 < 0xFF0000)
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
    v6 = ((a2 - 255) >> 16) + 1;
    *result = a2 - 255;
    switch(v5)
    {
      case 1:
        *(result + 2) = v6;
        break;
      case 2:
        *(result + 2) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 2) = v6;
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
        *(result + 2) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 2) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 2) = 0;
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

uint64_t RainInlineContentViewModel.conditionIconName.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t RainInlineContentViewModel.conditionIconAccessibilityString.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t RainInlineContentViewModel.description.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for RainInlineContentViewModel() + 24);
  sub_1BCE18AF0();
  OUTLINED_FUNCTION_4();
  v6 = *(v5 + 16);

  return v6(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for RainInlineContentViewModel()
{
  result = qword_1EDA18FA8;
  if (!qword_1EDA18FA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t RainInlineContentViewModel.fallbackDescription.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for RainInlineContentViewModel() + 28);

  return sub_1BCB44DC0(v3, a1);
}

uint64_t sub_1BCB44DC0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD09A48);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t RainInlineContentViewModel.accessibilityDescription.getter()
{
  v1 = *(v0 + *(type metadata accessor for RainInlineContentViewModel() + 32));

  return v1;
}

uint64_t RainInlineContentViewModel.init(conditionIconName:conditionIconAccessibilityString:description:accessibilityDescription:fallbackDescription:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>)
{
  *a9 = a1;
  *(a9 + 1) = a2;
  *(a9 + 2) = a3;
  *(a9 + 3) = a4;
  v14 = type metadata accessor for RainInlineContentViewModel();
  v15 = v14[6];
  sub_1BCE18AF0();
  OUTLINED_FUNCTION_4();
  (*(v16 + 32))(&a9[v15], a5);
  v17 = &a9[v14[8]];
  *v17 = a6;
  *(v17 + 1) = a7;
  v18 = &a9[v14[7]];

  return sub_1BCB44F2C(a8, v18);
}

uint64_t sub_1BCB44F2C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD09A48);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t RainInlineContentViewModel.init(conditionIconName:description:accessibilityDescription:fallbackDescription:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X8>)
{
  *a7 = a1;
  a7[1] = a2;

  v14 = sub_1BCB45084(a1, a2);
  v16 = v15;

  a7[2] = v14;
  a7[3] = v16;
  v17 = type metadata accessor for RainInlineContentViewModel();
  v18 = v17[6];
  sub_1BCE18AF0();
  OUTLINED_FUNCTION_4();
  (*(v19 + 32))(a7 + v18, a3);
  v20 = (a7 + v17[8]);
  *v20 = a4;
  v20[1] = a5;
  v21 = a7 + v17[7];

  return sub_1BCB44F2C(a6, v21);
}

uint64_t sub_1BCB45084(uint64_t a1, uint64_t a2)
{
  v34 = a1;
  v3 = sub_1BCE19BA0();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v25[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v25[-v8];
  if (!a2)
  {
    return 0;
  }

  v33 = a2;
  v10 = sub_1BCE19B90();
  v11 = v10;
  v38 = *(v10 + 16);
  if (v38)
  {
    v12 = 0;
    v37 = v10 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v36 = v4 + 88;
    v35 = *MEMORY[0x1E6984DB8];
    v32 = *MEMORY[0x1E6984DB0];
    v31 = *MEMORY[0x1E6984DD0];
    v29 = *MEMORY[0x1E6984DC0];
    v28 = *MEMORY[0x1E6984DD8];
    v13 = (v4 + 8);
    v27 = 0x80000001BCE7BEE0;
    v30 = 0xEF6C6C69662E6C69;
    v26 = *MEMORY[0x1E6984DC8];
    while (v12 < *(v11 + 16))
    {
      v14 = *(v4 + 16);
      v14(v9, v37 + *(v4 + 72) * v12, v3);
      v14(v6, v9, v3);
      v15 = (*(v4 + 88))(v6, v3);
      if (v15 != v35)
      {
        v16 = v15;
        if (v15 == v32)
        {
          v17 = 0x61682E64756F6C63;
          v18 = v30;
        }

        else if (v15 == v31)
        {
          v17 = 0x616C6C6572626D75;
          v18 = 0xED00006C6C69662ELL;
        }

        else
        {
          v17 = 0x61722E64756F6C63;
          v18 = 0xEF6C6C69662E6E69;
          if (v16 != v29)
          {
            v17 = 0xD000000000000010;
            v18 = v27;
            if (v16 != v28)
            {
              if (v16 == v26)
              {
                v18 = 0xE900000000000065;
                v17 = 0x6B616C66776F6E73;
              }

              else
              {
                (*v13)(v6, v3);
                v17 = 0x61722E64756F6C63;
                v18 = 0xEF6C6C69662E6E69;
              }
            }
          }
        }

        if (v17 == v34 && v18 == v33)
        {

LABEL_30:

          v23 = sub_1BCE19B80();
          (*v13)(v9, v3);
          return v23;
        }

        v20 = sub_1BCE1E090();

        if (v20)
        {
          goto LABEL_30;
        }
      }

      ++v12;
      (*v13)(v9, v3);
      if (v38 == v12)
      {
        goto LABEL_21;
      }
    }

    __break(1u);
    goto LABEL_33;
  }

LABEL_21:

  v21 = v34 == 0x75732E64756F6C63 && v33 == 0xEE006C6C69662E6ELL;
  if (!v21 && (sub_1BCE1E090() & 1) == 0)
  {
    return 0;
  }

  if (qword_1EDA1EFB0 != -1)
  {
LABEL_33:
    swift_once();
  }

  swift_beginAccess();
  v22 = qword_1EDA1EFB8;
  v23 = sub_1BCE18B60();

  return v23;
}

uint64_t static RainInlineContentViewModel.== infix(_:_:)(void *a1, void *a2)
{
  v4 = sub_1BCE18AF0();
  OUTLINED_FUNCTION_2();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_2_0();
  v10 = v9 - v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD09A48);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v37 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD09A50);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v37 - v16;
  v18 = a1[1];
  v19 = a2[1];
  if (v18)
  {
    if (!v19)
    {
      goto LABEL_29;
    }

    v20 = *a1 == *a2 && v18 == v19;
    if (!v20 && (sub_1BCE1E090() & 1) == 0)
    {
      goto LABEL_29;
    }
  }

  else if (v19)
  {
    goto LABEL_29;
  }

  v21 = a1[3];
  v22 = a2[3];
  if (!v21)
  {
    if (!v22)
    {
      goto LABEL_19;
    }

LABEL_29:
    v28 = 0;
    return v28 & 1;
  }

  if (!v22)
  {
    goto LABEL_29;
  }

  v23 = a1[2] == a2[2] && v21 == v22;
  if (!v23 && (sub_1BCE1E090() & 1) == 0)
  {
    goto LABEL_29;
  }

LABEL_19:
  v24 = type metadata accessor for RainInlineContentViewModel();
  if ((sub_1BCE189F0() & 1) == 0)
  {
    goto LABEL_29;
  }

  v25 = *(v24 + 28);
  v26 = *(v14 + 48);
  sub_1BCB44DC0(a1 + v25, v17);
  sub_1BCB44DC0(a2 + v25, &v17[v26]);
  OUTLINED_FUNCTION_8_0(v17);
  if (v20)
  {
    OUTLINED_FUNCTION_8_0(&v17[v26]);
    if (v20)
    {
      sub_1BC94C05C(v17, &qword_1EBD09A48);
      goto LABEL_32;
    }

    goto LABEL_28;
  }

  sub_1BCB44DC0(v17, v13);
  OUTLINED_FUNCTION_8_0(&v17[v26]);
  if (v27)
  {
    (*(v6 + 8))(v13, v4);
LABEL_28:
    sub_1BC94C05C(v17, &qword_1EBD09A50);
    goto LABEL_29;
  }

  (*(v6 + 32))(v10, &v17[v26], v4);
  sub_1BCB462B8(&qword_1EDA1BF70);
  v30 = sub_1BCE1D210();
  v31 = *(v6 + 8);
  v31(v10, v4);
  v31(v13, v4);
  sub_1BC94C05C(v17, &qword_1EBD09A48);
  if ((v30 & 1) == 0)
  {
    goto LABEL_29;
  }

LABEL_32:
  v32 = *(v24 + 32);
  v33 = *(a1 + v32);
  v34 = *(a1 + v32 + 8);
  v35 = (a2 + v32);
  if (v33 == *v35 && v34 == v35[1])
  {
    v28 = 1;
  }

  else
  {
    v28 = sub_1BCE1E090();
  }

  return v28 & 1;
}

uint64_t sub_1BCB458A4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000011 && 0x80000001BCE7DA80 == a2;
  if (v3 || (sub_1BCE1E090() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000020 && 0x80000001BCE7DAA0 == a2;
    if (v6 || (sub_1BCE1E090() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x7470697263736564 && a2 == 0xEB000000006E6F69;
      if (v7 || (sub_1BCE1E090() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000013 && 0x80000001BCE7DAD0 == a2;
        if (v8 || (sub_1BCE1E090() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 0xD000000000000018 && 0x80000001BCE7DAF0 == a2)
        {

          return 4;
        }

        else
        {
          v10 = sub_1BCE1E090();

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

unint64_t sub_1BCB45A54(char a1)
{
  result = 0x7470697263736564;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000020;
      break;
    case 2:
      return result;
    case 3:
      result = 0xD000000000000013;
      break;
    case 4:
      result = 0xD000000000000018;
      break;
    default:
      result = 0xD000000000000011;
      break;
  }

  return result;
}

uint64_t sub_1BCB45B1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1BCB458A4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1BCB45B44@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1BCB45A4C();
  *a1 = result;
  return result;
}

uint64_t sub_1BCB45B6C(uint64_t a1)
{
  v2 = sub_1BCB45DDC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BCB45BA8(uint64_t a1)
{
  v2 = sub_1BCB45DDC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t RainInlineContentViewModel.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD09A58);
  OUTLINED_FUNCTION_2();
  v5 = v4;
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BCB45DDC();
  sub_1BCE1E170();
  v15 = 0;
  OUTLINED_FUNCTION_3_42();
  sub_1BCE1DFA0();
  if (!v1)
  {
    v14 = 1;
    OUTLINED_FUNCTION_3_42();
    sub_1BCE1DFA0();
    type metadata accessor for RainInlineContentViewModel();
    v13 = 2;
    sub_1BCE18AF0();
    sub_1BCB462B8(&qword_1EBD09A68);
    OUTLINED_FUNCTION_5_30();
    sub_1BCE1E020();
    v12 = 3;
    OUTLINED_FUNCTION_5_30();
    sub_1BCE1DFC0();
    v11 = 4;
    OUTLINED_FUNCTION_3_42();
    sub_1BCE1DFD0();
  }

  return (*(v5 + 8))(v8, v3);
}

unint64_t sub_1BCB45DDC()
{
  result = qword_1EBD09A60;
  if (!qword_1EBD09A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD09A60);
  }

  return result;
}

uint64_t RainInlineContentViewModel.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v36 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD09A48);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v3);
  v37 = v35 - v4;
  sub_1BCE18AF0();
  OUTLINED_FUNCTION_2();
  v38 = v6;
  v39 = v5;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_2_0();
  v9 = v8 - v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD09A70);
  OUTLINED_FUNCTION_2();
  v40 = v11;
  v41 = v10;
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v12);
  v13 = type metadata accessor for RainInlineContentViewModel();
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_2_0();
  v17 = (v16 - v15);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BCB45DDC();
  v18 = v42;
  sub_1BCE1E160();
  if (v18)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v42 = v13;
  v19 = v38;
  v20 = v39;
  v47 = 0;
  *v17 = sub_1BCE1DEF0();
  v17[1] = v21;
  v35[2] = v21;
  v46 = 1;
  v17[2] = sub_1BCE1DEF0();
  v17[3] = v22;
  v45 = 2;
  sub_1BCB462B8(&qword_1EBD09A78);
  v35[1] = 0;
  sub_1BCE1DF70();
  v23 = v19;
  v24 = v42;
  (*(v23 + 32))(v17 + *(v42 + 24), v9, v20);
  v44 = 3;
  v25 = v37;
  sub_1BCE1DF10();
  sub_1BCB44F2C(v25, v17 + *(v24 + 28));
  v43 = 4;
  v26 = sub_1BCE1DF20();
  v37 = v27;
  v28 = v26;
  v29 = OUTLINED_FUNCTION_2_33();
  v30(v29);
  v31 = (v17 + *(v24 + 32));
  v32 = v36;
  v33 = v37;
  *v31 = v28;
  v31[1] = v33;
  sub_1BCB462FC(v17, v32);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_1BCA785BC(v17);
}

uint64_t sub_1BCB462B8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1BCE18AF0();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1BCB462FC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RainInlineContentViewModel();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1BCB463B8()
{
  sub_1BC965D24();
  if (v0 <= 0x3F)
  {
    sub_1BCE18AF0();
    if (v1 <= 0x3F)
    {
      sub_1BCB4645C();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1BCB4645C()
{
  if (!qword_1EDA1BF68)
  {
    sub_1BCE18AF0();
    v0 = sub_1BCE1DB10();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDA1BF68);
    }
  }
}

uint64_t getEnumTagSinglePayload for RainInlineContentViewModel.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

_BYTE *storeEnumTagSinglePayload for RainInlineContentViewModel.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1BCB4661C()
{
  result = qword_1EBD09A80;
  if (!qword_1EBD09A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD09A80);
  }

  return result;
}

unint64_t sub_1BCB46674()
{
  result = qword_1EBD09A88;
  if (!qword_1EBD09A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD09A88);
  }

  return result;
}

unint64_t sub_1BCB466CC()
{
  result = qword_1EBD09A90;
  if (!qword_1EBD09A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD09A90);
  }

  return result;
}

WeatherUI::HazeEffect __swiftcall HazeEffect.init(redIntensity:yellowIntensity:blueIntensity:softBlurIntensity:)(Swift::Float redIntensity, Swift::Float yellowIntensity, Swift::Float blueIntensity, Swift::Float softBlurIntensity)
{
  *v4 = redIntensity;
  v4[1] = yellowIntensity;
  v4[2] = blueIntensity;
  v4[3] = softBlurIntensity;
  result.softBlurIntensity = softBlurIntensity;
  result.blueIntensity = blueIntensity;
  result.yellowIntensity = yellowIntensity;
  result.redIntensity = redIntensity;
  return result;
}

uint64_t sub_1BCB46848(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E65746E49646572 && a2 == 0xEC00000079746973;
  if (v4 || (sub_1BCE1E090() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6E49776F6C6C6579 && a2 == 0xEF797469736E6574;
    if (v6 || (sub_1BCE1E090() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x65746E4965756C62 && a2 == 0xED0000797469736ELL;
      if (v7 || (sub_1BCE1E090() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0xD000000000000011 && 0x80000001BCE7DB70 == a2)
      {

        return 3;
      }

      else
      {
        v9 = sub_1BCE1E090();

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

unint64_t sub_1BCB469C4(char a1)
{
  result = 0x6E65746E49646572;
  switch(a1)
  {
    case 1:
      result = 0x6E49776F6C6C6579;
      break;
    case 2:
      result = 0x65746E4965756C62;
      break;
    case 3:
      result = 0xD000000000000011;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1BCB46A74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1BCB46848(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1BCB46A9C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1BCB469BC();
  *a1 = result;
  return result;
}

uint64_t sub_1BCB46AC4(uint64_t a1)
{
  v2 = sub_1BCB46CC8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BCB46B00(uint64_t a1)
{
  v2 = sub_1BCB46CC8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t HazeEffect.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD09A98);
  OUTLINED_FUNCTION_2();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BCB46CC8();
  sub_1BCE1E170();
  v10[15] = 0;
  OUTLINED_FUNCTION_0_36();
  if (!v1)
  {
    v10[14] = 1;
    OUTLINED_FUNCTION_0_36();
    v10[13] = 2;
    OUTLINED_FUNCTION_0_36();
    v10[12] = 3;
    OUTLINED_FUNCTION_0_36();
  }

  return (*(v5 + 8))(v8, v3);
}

unint64_t sub_1BCB46CC8()
{
  result = qword_1EBD09AA0;
  if (!qword_1EBD09AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD09AA0);
  }

  return result;
}

uint64_t HazeEffect.hash(into:)()
{
  sub_1BCE1E130();
  sub_1BCE1E130();
  sub_1BCE1E130();
  return sub_1BCE1E130();
}

uint64_t HazeEffect.hashValue.getter()
{
  sub_1BCE1E100();
  HazeEffect.hash(into:)();
  return sub_1BCE1E150();
}

uint64_t HazeEffect.init(from:)@<X0>(void *a1@<X0>, _DWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD09AA8);
  OUTLINED_FUNCTION_2();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v20 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BCB46CC8();
  sub_1BCE1E160();
  if (!v2)
  {
    v24 = 0;
    OUTLINED_FUNCTION_1_33();
    v12 = v11;
    v23 = 1;
    OUTLINED_FUNCTION_1_33();
    v14 = v13;
    v22 = 2;
    OUTLINED_FUNCTION_1_33();
    v17 = v16;
    v21 = 3;
    OUTLINED_FUNCTION_1_33();
    v19 = v18;
    (*(v7 + 8))(v10, v5);
    *a2 = v12;
    a2[1] = v14;
    a2[2] = v17;
    a2[3] = v19;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1BCB46FE8()
{
  sub_1BCE1E100();
  HazeEffect.hash(into:)();
  return sub_1BCE1E150();
}

unint64_t sub_1BCB47034()
{
  result = qword_1EBD09AB0;
  if (!qword_1EBD09AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD09AB0);
  }

  return result;
}

__n128 __swift_memcpy16_4(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t getEnumTagSinglePayload for WeatherConditionBackgroundOptions.DisplayLocation(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFD)
  {
    if (a2 + 3 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 3) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 4;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v5 = v6 - 4;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for HazeEffect.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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