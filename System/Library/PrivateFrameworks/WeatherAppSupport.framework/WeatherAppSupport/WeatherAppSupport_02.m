uint64_t sub_220D00BBC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      return 1;
    }

    v3 = (a1 + 32);
    for (i = (a2 + 32); ; i += 72)
    {
      memcpy(__dst, v3, sizeof(__dst));
      memcpy(v9, v3, sizeof(v9));
      memcpy(v11, i, sizeof(v11));
      memcpy(__src, i, sizeof(__src));
      sub_220D01FC0(__dst, v7);
      sub_220D01FC0(v11, v7);
      v5 = static PrecipitationTotalPlatterViewModel.RowModel.== infix(_:_:)(v9, __src);
      memcpy(v12, __src, sizeof(v12));
      sub_220D0201C(v12);
      memcpy(v13, v9, sizeof(v13));
      sub_220D0201C(v13);
      if (!v5)
      {
        break;
      }

      v3 += 72;
      if (!--v2)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t sub_220D00CCC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DetailChartDataElement(0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v11 = &v19 - v10;
  v12 = *(a1 + 16);
  if (v12 == *(a2 + 16))
  {
    if (!v12 || a1 == a2)
    {
      v17 = 1;
    }

    else
    {
      v13 = (*(v9 + 80) + 32) & ~*(v9 + 80);
      v14 = a1 + v13;
      v15 = a2 + v13;
      v16 = *(v9 + 72);
      do
      {
        sub_220D02070(v14, v11, type metadata accessor for DetailChartDataElement);
        sub_220D02070(v15, v8, type metadata accessor for DetailChartDataElement);
        v17 = static DetailChartDataElement.== infix(_:_:)(v11, v8);
        sub_220D020CC(v8, type metadata accessor for DetailChartDataElement);
        sub_220D020CC(v11, type metadata accessor for DetailChartDataElement);
        if ((v17 & 1) == 0)
        {
          break;
        }

        v15 += v16;
        v14 += v16;
        --v12;
      }

      while (v12);
    }
  }

  else
  {
    v17 = 0;
  }

  return v17 & 1;
}

void sub_220D00E74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_25();
  a19 = v20;
  a20 = v21;
  v23 = v22;
  v25 = v24;
  v26 = type metadata accessor for SunriseSunsetDetailChartViewModel.SunEventAccessibilityModel(0);
  v27 = *(*(v26 - 1) + 64);
  v28 = MEMORY[0x28223BE20](v26);
  v30 = &a9 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v33 = &a9 - v32;
  v34 = *(v25 + 16);
  if (v34 == *(v23 + 16) && v34 && v25 != v23)
  {
    v35 = (*(v31 + 80) + 32) & ~*(v31 + 80);
    v36 = v25 + v35;
    v37 = v23 + v35;
    v38 = *(v31 + 72);
    while (1)
    {
      sub_220D02070(v36, v33, type metadata accessor for SunriseSunsetDetailChartViewModel.SunEventAccessibilityModel);
      sub_220D02070(v37, v30, type metadata accessor for SunriseSunsetDetailChartViewModel.SunEventAccessibilityModel);
      if ((sub_220DBE460() & 1) == 0)
      {
        break;
      }

      OUTLINED_FUNCTION_3_6(v26[5]);
      v41 = v41 && v39 == v40;
      if (!v41 && (sub_220DC0CA0() & 1) == 0)
      {
        break;
      }

      OUTLINED_FUNCTION_3_6(v26[6]);
      v44 = v41 && v42 == v43;
      if (!v44 && (sub_220DC0CA0() & 1) == 0)
      {
        break;
      }

      v45 = static DetailChartDataElement.== infix(_:_:)(&v33[v26[7]], &v30[v26[7]]);
      sub_220D020CC(v30, type metadata accessor for SunriseSunsetDetailChartViewModel.SunEventAccessibilityModel);
      sub_220D020CC(v33, type metadata accessor for SunriseSunsetDetailChartViewModel.SunEventAccessibilityModel);
      if (v45)
      {
        v37 += v38;
        v36 += v38;
        if (--v34)
        {
          continue;
        }
      }

      goto LABEL_21;
    }

    sub_220D020CC(v30, type metadata accessor for SunriseSunsetDetailChartViewModel.SunEventAccessibilityModel);
    sub_220D020CC(v33, type metadata accessor for SunriseSunsetDetailChartViewModel.SunEventAccessibilityModel);
  }

LABEL_21:
  OUTLINED_FUNCTION_24();
}

void sub_220D010A4()
{
  OUTLINED_FUNCTION_25();
  v1 = v0;
  v3 = v2;
  v4 = sub_220DBE560();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v25 - v10;
  v12 = *(v3 + 16);
  if (v12 == *(v1 + 16) && v12 && v3 != v1)
  {
    v13 = (*(v5 + 80) + 32) & ~*(v5 + 80);
    v14 = v3 + v13;
    v15 = v1 + v13;
    v17 = *(v5 + 16);
    v16 = v5 + 16;
    v18 = (v16 - 8);
    v25 = *(v16 + 56);
    v26 = v17;
    while (1)
    {
      v19 = v26;
      v26(v11, v14, v4);
      if (!v12)
      {
        break;
      }

      v20 = v16;
      v19(v9, v15, v4);
      sub_220D01F68();
      v21 = sub_220DC05B0();
      v22 = *v18;
      v23 = OUTLINED_FUNCTION_20();
      v22(v23);
      (v22)(v11, v4);
      if (v21)
      {
        v15 += v25;
        v14 += v25;
        v24 = v12-- == 1;
        v16 = v20;
        if (!v24)
        {
          continue;
        }
      }

      goto LABEL_9;
    }

    __break(1u);
  }

  else
  {
LABEL_9:
    OUTLINED_FUNCTION_24();
  }
}

uint64_t sub_220D01274(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OverviewTableValueString();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v37 = &v35[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95348, &qword_220DC22F0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v35[-v9];
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95508, &qword_220DC2658);
  v11 = *(*(v39 - 8) + 64);
  MEMORY[0x28223BE20](v39);
  v13 = &v35[-v12];
  v40 = type metadata accessor for OverviewTableRowViewModel();
  v14 = *(*(v40 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v40);
  v17 = &v35[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v15);
  v20 = &v35[-v19];
  v21 = *(a1 + 16);
  if (v21 != *(a2 + 16))
  {
LABEL_27:
    v33 = 0;
    return v33 & 1;
  }

  if (v21 && a1 != a2)
  {
    v22 = (*(v18 + 80) + 32) & ~*(v18 + 80);
    v23 = a1 + v22;
    v24 = a2 + v22;
    v38 = *(v18 + 72);
    while (1)
    {
      sub_220D02070(v23, v20, type metadata accessor for OverviewTableRowViewModel);
      sub_220D02070(v24, v17, type metadata accessor for OverviewTableRowViewModel);
      v25 = *v20 == *v17 && v20[1] == v17[1];
      if (!v25 && (sub_220DC0CA0() & 1) == 0)
      {
        break;
      }

      v26 = v20[2] == v17[2] && v20[3] == v17[3];
      if (!v26 && (sub_220DC0CA0() & 1) == 0)
      {
        break;
      }

      v27 = *(v40 + 24);
      v28 = *(v39 + 48);
      sub_220D00790(v20 + v27, v13);
      sub_220D00790(v17 + v27, &v13[v28]);
      if (__swift_getEnumTagSinglePayload(v13, 1, v4) == 1)
      {
        if (__swift_getEnumTagSinglePayload(&v13[v28], 1, v4) != 1)
        {
          goto LABEL_25;
        }

        sub_220CDA548(v13, &qword_27CF95348, &qword_220DC22F0);
      }

      else
      {
        sub_220D00790(v13, v10);
        if (__swift_getEnumTagSinglePayload(&v13[v28], 1, v4) == 1)
        {
          sub_220D020CC(v10, type metadata accessor for OverviewTableValueString);
LABEL_25:
          sub_220CDA548(v13, &qword_27CF95508, &qword_220DC2658);
          break;
        }

        v29 = v4;
        v30 = v37;
        sub_220D00800(&v13[v28], v37);
        v36 = static OverviewTableValueString.== infix(_:_:)(v10, v30);
        v31 = v30;
        v4 = v29;
        sub_220D020CC(v31, type metadata accessor for OverviewTableValueString);
        sub_220D020CC(v10, type metadata accessor for OverviewTableValueString);
        sub_220CDA548(v13, &qword_27CF95348, &qword_220DC22F0);
        if ((v36 & 1) == 0)
        {
          break;
        }
      }

      v32 = *(v20 + *(v40 + 28)) ^ *(v17 + *(v40 + 28));
      sub_220D020CC(v17, type metadata accessor for OverviewTableRowViewModel);
      sub_220D020CC(v20, type metadata accessor for OverviewTableRowViewModel);
      if ((v32 & 1) == 0)
      {
        v24 += v38;
        v23 += v38;
        if (--v21)
        {
          continue;
        }
      }

      v33 = v32 ^ 1;
      return v33 & 1;
    }

    sub_220D020CC(v17, type metadata accessor for OverviewTableRowViewModel);
    sub_220D020CC(v20, type metadata accessor for OverviewTableRowViewModel);
    goto LABEL_27;
  }

  v33 = 1;
  return v33 & 1;
}

uint64_t sub_220D016E8(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v5 = *v3++;
    v6 = v5;
    v7 = *v4++;
    result = v6 == v7;
    if (v6 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t OverviewTableRowViewModel.id.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return OUTLINED_FUNCTION_20();
}

uint64_t OverviewTableRowViewModel.title.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return OUTLINED_FUNCTION_20();
}

uint64_t OverviewTableRowViewModel.value.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for OverviewTableRowViewModel() + 24);

  return sub_220D00790(v3, a1);
}

void OverviewTableRowViewModel.init(title:value:shouldDividerHavePadding:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_25();
  a19 = v20;
  a20 = v21;
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v36 = ~v24;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95348, &qword_220DC22F0);
  OUTLINED_FUNCTION_18(v37);
  v39 = *(v38 + 64);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v40);
  v42 = &a9 - v41;
  if (v36)
  {
    *v42 = v29;
    *(v42 + 1) = v27;
    v42[16] = v25;
    v43 = type metadata accessor for OverviewTableValueString();
    swift_storeEnumTagMultiPayload();
    v44 = v42;
    v45 = 0;
    v46 = v43;
  }

  else
  {
    v46 = type metadata accessor for OverviewTableValueString();
    v44 = v42;
    v45 = 1;
  }

  __swift_storeEnumTagSinglePayload(v44, v45, 1, v46);
  *v35 = v33;
  v35[1] = v31;
  v35[2] = v33;
  v35[3] = v31;
  v47 = type metadata accessor for OverviewTableRowViewModel();
  sub_220D01ABC(v42, v35 + *(v47 + 24));
  *(v35 + *(v47 + 28)) = v23 & 1;

  OUTLINED_FUNCTION_24();
}

void OverviewTableRowViewModel.init(id:title:value:shouldDividerHavePadding:)()
{
  OUTLINED_FUNCTION_25();
  v30 = v0;
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v17 = ~v1;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95348, &qword_220DC22F0);
  OUTLINED_FUNCTION_18(v18);
  v20 = *(v19 + 64);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v21);
  v23 = &v29 - v22;
  if (v17)
  {
    *v23 = v6;
    *(v23 + 1) = v4;
    v23[16] = v2;
    v24 = type metadata accessor for OverviewTableValueString();
    swift_storeEnumTagMultiPayload();
    v25 = v23;
    v26 = 0;
    v27 = v24;
  }

  else
  {
    v27 = type metadata accessor for OverviewTableValueString();
    v25 = v23;
    v26 = 1;
  }

  __swift_storeEnumTagSinglePayload(v25, v26, 1, v27);
  *v16 = v14;
  v16[1] = v12;
  v16[2] = v10;
  v16[3] = v8;
  v28 = type metadata accessor for OverviewTableRowViewModel();
  sub_220D01ABC(v23, v16 + *(v28 + 24));
  *(v16 + *(v28 + 28)) = v30 & 1;
  OUTLINED_FUNCTION_24();
}

uint64_t OverviewTableRowViewModel.init(id:title:value:shouldDividerHavePadding:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, void *a7@<X8>)
{
  *a7 = a1;
  a7[1] = a2;
  a7[2] = a3;
  a7[3] = a4;
  v10 = type metadata accessor for OverviewTableRowViewModel();
  result = sub_220D01ABC(a5, a7 + *(v10 + 24));
  *(a7 + *(v10 + 28)) = a6;
  return result;
}

uint64_t sub_220D01ABC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95348, &qword_220DC22F0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void static OverviewTableRowViewModel.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_25();
  a19 = v20;
  a20 = v21;
  v23 = v22;
  v25 = v24;
  v26 = type metadata accessor for OverviewTableValueString();
  v27 = OUTLINED_FUNCTION_6(v26);
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v27);
  v31 = &a9 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95348, &qword_220DC22F0);
  OUTLINED_FUNCTION_18(v32);
  v34 = *(v33 + 64);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v35);
  v37 = &a9 - v36;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95508, &qword_220DC2658);
  OUTLINED_FUNCTION_6(v38);
  v40 = *(v39 + 64);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v41);
  v43 = &a9 - v42;
  v44 = *v25 == *v23 && v25[1] == v23[1];
  if (!v44 && (sub_220DC0CA0() & 1) == 0)
  {
    goto LABEL_23;
  }

  v45 = v25[2] == v23[2] && v25[3] == v23[3];
  if (!v45 && (sub_220DC0CA0() & 1) == 0)
  {
    goto LABEL_23;
  }

  v46 = type metadata accessor for OverviewTableRowViewModel();
  v47 = *(v46 + 24);
  v48 = *(v38 + 48);
  sub_220D00790(v25 + v47, v43);
  sub_220D00790(v23 + v47, &v43[v48]);
  OUTLINED_FUNCTION_8_4(v43);
  if (v44)
  {
    OUTLINED_FUNCTION_8_4(&v43[v48]);
    if (v44)
    {
      sub_220CDA548(v43, &qword_27CF95348, &qword_220DC22F0);
LABEL_22:
      v51 = *(v25 + *(v46 + 28)) ^ *(v23 + *(v46 + 28)) ^ 1u;
      goto LABEL_23;
    }

LABEL_19:
    sub_220CDA548(v43, &qword_27CF95508, &qword_220DC2658);
    goto LABEL_23;
  }

  sub_220D00790(v43, v37);
  OUTLINED_FUNCTION_8_4(&v43[v48]);
  if (v49)
  {
    sub_220D020CC(v37, type metadata accessor for OverviewTableValueString);
    goto LABEL_19;
  }

  sub_220D00800(&v43[v48], v31);
  v50 = static OverviewTableValueString.== infix(_:_:)(v37, v31);
  sub_220D020CC(v31, type metadata accessor for OverviewTableValueString);
  sub_220D020CC(v37, type metadata accessor for OverviewTableValueString);
  sub_220CDA548(v43, &qword_27CF95348, &qword_220DC22F0);
  if (v50)
  {
    goto LABEL_22;
  }

LABEL_23:
  OUTLINED_FUNCTION_24();
}

uint64_t sub_220D01DB4@<X0>(uint64_t *a1@<X8>)
{
  result = OverviewTableRowViewModel.id.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for SevereAlertComponentStringsBuilder(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 8))
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

uint64_t storeEnumTagSinglePayload for SevereAlertComponentStringsBuilder(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_220D01E8C()
{
  sub_220D01F10();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_220D01F10()
{
  if (!qword_27CF95520)
  {
    type metadata accessor for OverviewTableValueString();
    v0 = sub_220DC0AE0();
    if (!v1)
    {
      atomic_store(v0, &qword_27CF95520);
    }
  }
}

unint64_t sub_220D01F68()
{
  result = qword_27CF95528;
  if (!qword_27CF95528)
  {
    sub_220DBE560();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF95528);
  }

  return result;
}

uint64_t sub_220D02070(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3(0);
  OUTLINED_FUNCTION_6(v4);
  v6 = *(v5 + 16);
  v7 = OUTLINED_FUNCTION_20();
  v8(v7);
  return a2;
}

uint64_t sub_220D020CC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_6(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t ConditionUnits.init(temperature:pressure:windSpeed:windGust:precipitationTotal:visibility:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  *a7 = result;
  a7[1] = a2;
  a7[2] = a3;
  a7[3] = a4;
  a7[4] = a5;
  a7[5] = a6;
  return result;
}

id ConditionUnits.overridingTemperature(with:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = v2[1];
  v4 = v2[2];
  v5 = v2[3];
  v6 = v2[4];
  v7 = v2[5];
  *a2 = a1;
  a2[1] = v3;
  a2[2] = v4;
  a2[3] = v5;
  a2[4] = v6;
  a2[5] = v7;
  v8 = v3;
  v9 = v4;
  v10 = v5;
  v11 = v6;
  v12 = v7;

  return a1;
}

uint64_t static ConditionUnits.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v5 = a1[2];
  v4 = a1[3];
  v13 = a1[5];
  v14 = a1[4];
  v7 = *a2;
  v6 = a2[1];
  v9 = a2[2];
  v8 = a2[3];
  v10 = a2[4];
  v12 = a2[5];
  sub_220D022A8();
  if (sub_220DC0AB0() & 1) != 0 && (sub_220DC0AB0() & 1) != 0 && (sub_220DC0AB0() & 1) != 0 && (sub_220DC0AB0() & 1) != 0 && (sub_220DC0AB0())
  {
    return sub_220DC0AB0() & 1;
  }

  else
  {
    return 0;
  }
}

unint64_t sub_220D022A8()
{
  result = qword_27CF95530;
  if (!qword_27CF95530)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27CF95530);
  }

  return result;
}

uint64_t ConditionUnits.hash(into:)()
{
  v1 = v0[1];
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = *v0;
  sub_220DC0AC0();
  sub_220DC0AC0();
  sub_220DC0AC0();
  sub_220DC0AC0();
  sub_220DC0AC0();
  return sub_220DC0AC0();
}

uint64_t ConditionUnits.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  sub_220DC0CE0();
  sub_220DC0AC0();
  sub_220DC0AC0();
  sub_220DC0AC0();
  sub_220DC0AC0();
  sub_220DC0AC0();
  sub_220DC0AC0();
  return sub_220DC0D20();
}

uint64_t sub_220D02420()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = v0[2];
  sub_220DC0CE0();
  ConditionUnits.hash(into:)();
  return sub_220DC0D20();
}

uint64_t UnitManager.conditionUnits(locale:)@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_220DBF090();
  v3 = sub_220DBF0C0();
  v4 = sub_220DBF0F0();
  v5 = sub_220DBF0E0();
  v6 = sub_220DBF0A0();
  v7 = sub_220DC0930();

  v8 = objc_opt_self();
  v9 = &selRef_centimeters;
  if ((v7 & 1) == 0)
  {
    v9 = &selRef_inches;
  }

  v10 = [v8 *v9];
  result = sub_220DBF080();
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v10;
  a1[5] = result;
  return result;
}

unint64_t sub_220D02554()
{
  result = qword_27CF95538;
  if (!qword_27CF95538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF95538);
  }

  return result;
}

id sub_220D025A8()
{
  v0 = objc_allocWithZone(sub_220DC0400());

  return [v0 init];
}

uint64_t sub_220D025E0()
{
  v0 = sub_220DC0330();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  return sub_220DC0320();
}

uint64_t sub_220D02638@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for LocationPeakTimeCalculator();
  v3 = swift_allocObject();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF955E0, &qword_220DC2930);
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  result = sub_220DBF280();
  *(v3 + 16) = result;
  a1[3] = v2;
  a1[4] = &protocol witness table for LocationPeakTimeCalculator;
  *a1 = v3;
  return result;
}

uint64_t sub_220D026B8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95558, &qword_220DC28A8);
  result = sub_220DBF200();
  if (v7)
  {
    v5 = type metadata accessor for SunElevationCalculator();
    swift_allocObject();
    result = SunElevationCalculator.init(locationPeakTimeCalculator:)(&v6);
    a2[3] = v5;
    a2[4] = &protocol witness table for SunElevationCalculator;
    *a2 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_220D02778@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(*(sub_220DC04D0() - 8) + 64);
  MEMORY[0x28223BE20]();
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95568, &qword_220DC28B8);
  result = sub_220DBF200();
  if (v12)
  {
    sub_220DC04C0();
    a2[3] = type metadata accessor for SunriseSunsetTableViewModelFactory();
    a2[4] = &protocol witness table for SunriseSunsetTableViewModelFactory;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a2);
    return SunriseSunsetTableViewModelFactory.init(sunEventViewModelFactory:sunriseSunsetEventCalculator:)(&v11, v6, boxed_opaque_existential_1);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_220D02894@<X0>(uint64_t (*a1)(void)@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v5 = a1(0);
  result = swift_allocObject();
  a3[3] = v5;
  a3[4] = a2;
  *a3 = result;
  return result;
}

uint64_t sub_220D028FC@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95598, &qword_220DC28E8);
  result = sub_220DBF200();
  if (!v19)
  {
    __break(1u);
    goto LABEL_8;
  }

  v6 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95580, &qword_220DC28D0);
  result = sub_220DBF200();
  if (!v17)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95590, &qword_220DC28E0);
  result = sub_220DBF200();
  if (!v15)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220DC0330();
  result = sub_220DBF1F0();
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v9 = result;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF955C0, &qword_220DC2910);
  result = sub_220DBF200();
  if (v13)
  {
    a2[3] = &type metadata for ConditionsPlatterStringBuilder;
    a2[4] = &off_2834734F8;
    v11 = swift_allocObject();
    *a2 = v11;
    sub_220CD570C(&v14, v11 + 96);
    sub_220CD570C(&v16, v11 + 56);
    sub_220CD570C(&v18, v11 + 16);
    *(v11 + 136) = v9;
    return sub_220CD570C(&v12, v11 + 144);
  }

LABEL_11:
  __break(1u);
  return result;
}

uint64_t sub_220D02B38@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95540, &unk_220DC2890);
  result = sub_220DBF200();
  if (v11)
  {
    v6 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95548, &qword_220DC43E0);
    result = sub_220DBF200();
    if (v9)
    {
      a2[3] = &type metadata for PrecipitationPlatterStringBuilder;
      a2[4] = &off_283473060;
      v7 = swift_allocObject();
      *a2 = v7;
      sub_220CD570C(&v10, v7 + 16);
      return sub_220CD570C(&v8, v7 + 56);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_220D02C60@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95598, &qword_220DC28E8);
  result = sub_220DBF200();
  if (!v13)
  {
    __break(1u);
    goto LABEL_6;
  }

  v6 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95590, &qword_220DC28E0);
  result = sub_220DBF200();
  if (!v11)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220DC0330();
  result = sub_220DBF1F0();
  if (result)
  {
    v8 = result;
    a2[3] = &type metadata for TemperaturePlatterStringBuilder;
    a2[4] = &off_283472810;
    v9 = swift_allocObject();
    *a2 = v9;
    sub_220CD570C(&v10, v9 + 56);
    result = sub_220CD570C(&v12, v9 + 16);
    *(v9 + 96) = v8;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_220D02DC4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220DC0400();
  result = sub_220DBF1F0();
  if (result)
  {
    a2[3] = &type metadata for VisibilityPlatterStringBuilder;
    a2[4] = &off_283475C10;
    *a2 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
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

uint64_t DayPhase.uppercaseDescription.getter()
{
  switch(*v0)
  {
    case 1:
      if (qword_280FA6600 != -1)
      {
        OUTLINED_FUNCTION_10();
      }

      OUTLINED_FUNCTION_5_1();
      OUTLINED_FUNCTION_6_0();
      return sub_220DBE240();
    case 2:
      if (qword_280FA6600 != -1)
      {
        OUTLINED_FUNCTION_10();
      }

      OUTLINED_FUNCTION_5_1();
      OUTLINED_FUNCTION_15_2();
      goto LABEL_12;
    case 3:
      if (qword_280FA6600 != -1)
      {
        OUTLINED_FUNCTION_10();
      }

      OUTLINED_FUNCTION_5_1();
      OUTLINED_FUNCTION_17_4();
      goto LABEL_12;
    case 4:
      if (qword_280FA6600 == -1)
      {
        goto LABEL_3;
      }

      goto LABEL_17;
    default:
      if (qword_280FA6600 == -1)
      {
        goto LABEL_3;
      }

LABEL_17:
      OUTLINED_FUNCTION_10();
LABEL_3:
      OUTLINED_FUNCTION_5_1();
LABEL_12:
      OUTLINED_FUNCTION_6_0();
      return sub_220DBE240();
  }
}

uint64_t DayPhase.description.getter()
{
  switch(*v0)
  {
    case 1:
      if (qword_280FA6600 != -1)
      {
        OUTLINED_FUNCTION_10();
      }

      OUTLINED_FUNCTION_5_1();
      OUTLINED_FUNCTION_6_0();
      return sub_220DBE240();
    case 2:
      if (qword_280FA6600 != -1)
      {
        OUTLINED_FUNCTION_10();
      }

      OUTLINED_FUNCTION_5_1();
      OUTLINED_FUNCTION_15_2();
      goto LABEL_12;
    case 3:
      if (qword_280FA6600 != -1)
      {
        OUTLINED_FUNCTION_10();
      }

      OUTLINED_FUNCTION_5_1();
      OUTLINED_FUNCTION_17_4();
      goto LABEL_12;
    case 4:
      if (qword_280FA6600 == -1)
      {
        goto LABEL_3;
      }

      goto LABEL_17;
    default:
      if (qword_280FA6600 == -1)
      {
        goto LABEL_3;
      }

LABEL_17:
      OUTLINED_FUNCTION_10();
LABEL_3:
      OUTLINED_FUNCTION_5_1();
LABEL_12:
      OUTLINED_FUNCTION_6_0();
      return sub_220DBE240();
  }
}

uint64_t DayPhase.hashValue.getter()
{
  v1 = *v0;
  sub_220DC0CE0();
  MEMORY[0x223D98920](v1);
  return sub_220DC0D20();
}

uint64_t DayPhase.init(sunEvents:date:elevation:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>, double a4@<D0>)
{
  v230 = a2;
  v232 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF951E0, &unk_220DC1D80);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  OUTLINED_FUNCTION_9();
  v218 = v8;
  OUTLINED_FUNCTION_23();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_25_0();
  v220 = v10;
  OUTLINED_FUNCTION_23();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_25_0();
  v221 = v13;
  OUTLINED_FUNCTION_23();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_25_0();
  v223 = v16;
  OUTLINED_FUNCTION_23();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_25_0();
  v225 = v19;
  OUTLINED_FUNCTION_23();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_25_0();
  v214 = v21;
  OUTLINED_FUNCTION_23();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_25_0();
  v226 = v23;
  OUTLINED_FUNCTION_23();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_25_0();
  v216 = v25;
  OUTLINED_FUNCTION_23();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_25_0();
  v229 = v27;
  OUTLINED_FUNCTION_23();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_25_0();
  v217 = v29;
  OUTLINED_FUNCTION_23();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_25_0();
  v228 = v31;
  OUTLINED_FUNCTION_23();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_25_0();
  v219 = v33;
  OUTLINED_FUNCTION_23();
  MEMORY[0x28223BE20](v34);
  v36 = v201 - v35;
  v37 = sub_220DBE560();
  v38 = OUTLINED_FUNCTION_0(v37);
  v40 = v39;
  v42 = *(v41 + 64);
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v49);
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v50);
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v51);
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v52);
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v53);
  OUTLINED_FUNCTION_25_0();
  v215 = v54;
  OUTLINED_FUNCTION_23();
  MEMORY[0x28223BE20](v55);
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v56);
  OUTLINED_FUNCTION_25_0();
  v222 = v57;
  OUTLINED_FUNCTION_23();
  v59 = MEMORY[0x28223BE20](v58);
  v61 = v201 - v60;
  MEMORY[0x28223BE20](v59);
  v63 = v201 - v62;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF955F0, &qword_220DC2938);
  v65 = *(*(v64 - 8) + 64);
  MEMORY[0x28223BE20](v64 - 8);
  v67 = v201 - v66;
  v68 = sub_220DBF070();
  v69 = OUTLINED_FUNCTION_0(v68);
  v71 = v70;
  v73 = *(v72 + 64);
  MEMORY[0x28223BE20](v69);
  v75 = v201 - ((v74 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220D045D0(a1, v67);
  if (__swift_getEnumTagSinglePayload(v67, 1, v68) != 1)
  {
    v231 = v40;
    v78 = v232;
    v201[1] = a1;
    v79 = *(v71 + 32);
    v210 = v68;
    v79(v75, v67, v68);
    v80 = v75;
    sub_220DBEFE0();
    OUTLINED_FUNCTION_1_5(v36);
    v224 = v71;
    v227 = v75;
    if (v83)
    {
      sub_220CE1ABC(v36, &qword_27CF951E0, &unk_220DC1D80);
      v81 = v229;
    }

    else
    {
      v82 = v231;
      v68 = *(v231 + 32);
      (v68)(v63, v36, v37);
      v36 = v219;
      v80 = v75;
      sub_220DBF000();
      OUTLINED_FUNCTION_1_5(v36);
      if (v83)
      {
        (*(v82 + 8))(v63, v37);
        sub_220CE1ABC(v36, &qword_27CF951E0, &unk_220DC1D80);
        v78 = v232;
        v81 = v229;
      }

      else
      {
        (v68)(v61, v36, v37);
        v36 = sub_220CD9B24();
        v84 = sub_220DC0580();
        v81 = v229;
        if (v84)
        {
          v80 = v82 + 8;
          v68 = *(v82 + 8);
          v85 = OUTLINED_FUNCTION_24_1();
          v68(v85);
          (v68)(v63, v37);
          v78 = v232;
        }

        else
        {
          OUTLINED_FUNCTION_3_7();
          v80 = sub_220DC0580();
          v68 = (v82 + 8);
          v36 = *(v82 + 8);
          v166 = OUTLINED_FUNCTION_24_1();
          (v36)(v166);
          (v36)(v63, v37);
          v78 = v232;
          v167 = v224;
          if ((v80 & 1) == 0)
          {
            v168 = OUTLINED_FUNCTION_8_5();
            v169 = (v36)(v168);
            OUTLINED_FUNCTION_19_2(v169, &qword_27CF955F0, &qword_220DC2938);
            result = (*(v167 + 8))(v227, v210);
            goto LABEL_90;
          }
        }
      }
    }

    v87 = v227;
    v86 = v228;
    OUTLINED_FUNCTION_28_2();
    sub_220DBF040();
    OUTLINED_FUNCTION_1_5(v86);
    if (v83)
    {
      sub_220CE1ABC(v86, &qword_27CF951E0, &unk_220DC1D80);
    }

    else
    {
      OUTLINED_FUNCTION_25_1();
      v68(v222);
      v88 = v217;
      sub_220DBEFE0();
      v80 = v88;
      OUTLINED_FUNCTION_1_5(v88);
      if (v89)
      {
        v90 = *(v36 + 1);
        v91 = OUTLINED_FUNCTION_8_5();
        v92(v91);
        sub_220CE1ABC(v88, &qword_27CF951E0, &unk_220DC1D80);
        v87 = v227;
      }

      else
      {
        (v68)(v205, v88, v37);
        v93 = sub_220CD9B24();
        v94 = OUTLINED_FUNCTION_9_3();
        if (v94)
        {
          v80 = *(v231 + 8);
          v95 = OUTLINED_FUNCTION_24_1();
          (v80)(v95);
          (v80)(v222, v37);
          v87 = v227;
        }

        else
        {
          OUTLINED_FUNCTION_3_7();
          sub_220DC0580();
          OUTLINED_FUNCTION_5_5();
          v170 = OUTLINED_FUNCTION_24_1();
          v68(v170);
          v171 = OUTLINED_FUNCTION_14_4();
          v68(v171);
          v87 = v227;
          if ((v93 & 1) == 0)
          {
            v172 = OUTLINED_FUNCTION_8_5();
            v173 = (v68)(v172);
            OUTLINED_FUNCTION_19_2(v173, &qword_27CF955F0, &qword_220DC2938);
            v174 = OUTLINED_FUNCTION_13_3();
            goto LABEL_87;
          }
        }
      }
    }

    OUTLINED_FUNCTION_21_2();
    sub_220DBF040();
    OUTLINED_FUNCTION_1_5(v81);
    if (v83)
    {
      sub_220CE1ABC(v81, &qword_27CF951E0, &unk_220DC1D80);
    }

    else
    {
      v80 = v87;
      OUTLINED_FUNCTION_20_2();
      OUTLINED_FUNCTION_16_3();
      (v68)();
      v96 = v216;
      sub_220DBF030();
      OUTLINED_FUNCTION_1_5(v96);
      if (v97)
      {
        OUTLINED_FUNCTION_23_2();
        v98 = OUTLINED_FUNCTION_8_5();
        v99(v98);
        sub_220CE1ABC(v96, &qword_27CF951E0, &unk_220DC1D80);
LABEL_27:
        v78 = v232;
        goto LABEL_28;
      }

      OUTLINED_FUNCTION_16_3();
      (v68)();
      v100 = sub_220CD9B24();
      OUTLINED_FUNCTION_3_7();
      v101 = sub_220DC0580();
      if (v101)
      {
        v102 = OUTLINED_FUNCTION_12_3();
        v87(v102);
        v103 = OUTLINED_FUNCTION_8_5();
        v87(v103);
        goto LABEL_27;
      }

      OUTLINED_FUNCTION_9_3();
      OUTLINED_FUNCTION_5_5();
      v176 = OUTLINED_FUNCTION_14_4();
      v68(v176);
      v177 = OUTLINED_FUNCTION_8_5();
      v68(v177);
      v78 = v232;
      if ((v100 & 1) == 0)
      {
        v178 = OUTLINED_FUNCTION_8_5();
        v179 = (v68)(v178);
        OUTLINED_FUNCTION_19_2(v179, &qword_27CF955F0, &qword_220DC2938);
        v180 = OUTLINED_FUNCTION_13_3();
        goto LABEL_84;
      }
    }

LABEL_28:
    v104 = v226;
    OUTLINED_FUNCTION_21_2();
    sub_220DBF030();
    OUTLINED_FUNCTION_1_5(v104);
    if (v83)
    {
      sub_220CE1ABC(v104, &qword_27CF951E0, &unk_220DC1D80);
    }

    else
    {
      OUTLINED_FUNCTION_20_2();
      OUTLINED_FUNCTION_16_3();
      (v68)();
      v105 = v214;
      OUTLINED_FUNCTION_21_2();
      sub_220DBF020();
      OUTLINED_FUNCTION_1_5(v105);
      if (v106)
      {
        OUTLINED_FUNCTION_23_2();
        v107 = OUTLINED_FUNCTION_8_5();
        v108(v107);
        sub_220CE1ABC(v105, &qword_27CF951E0, &unk_220DC1D80);
      }

      else
      {
        OUTLINED_FUNCTION_16_3();
        (v68)();
        v109 = sub_220CD9B24();
        OUTLINED_FUNCTION_3_7();
        v110 = sub_220DC0580();
        if (v110)
        {
          v111 = OUTLINED_FUNCTION_12_3();
          (v80)(v111);
          v112 = OUTLINED_FUNCTION_8_5();
          (v80)(v112);
        }

        else
        {
          OUTLINED_FUNCTION_9_3();
          OUTLINED_FUNCTION_5_5();
          v182 = OUTLINED_FUNCTION_14_4();
          v68(v182);
          v183 = OUTLINED_FUNCTION_8_5();
          v68(v183);
          if ((v109 & 1) == 0)
          {
            v184 = OUTLINED_FUNCTION_8_5();
            v185 = (v68)(v184);
            OUTLINED_FUNCTION_19_2(v185, &qword_27CF955F0, &qword_220DC2938);
            v186 = OUTLINED_FUNCTION_13_3();
            result = v187(v186);
            v77 = 0;
            goto LABEL_73;
          }
        }
      }
    }

    v113 = v225;
    OUTLINED_FUNCTION_21_2();
    sub_220DBF020();
    OUTLINED_FUNCTION_1_5(v113);
    if (v83)
    {
      sub_220CE1ABC(v113, &qword_27CF951E0, &unk_220DC1D80);
      OUTLINED_FUNCTION_22_3();
LABEL_45:
      v123 = v223;
      OUTLINED_FUNCTION_28_2();
      sub_220DBF050();
      OUTLINED_FUNCTION_1_5(v123);
      if (v83)
      {
        sub_220CE1ABC(v123, &qword_27CF951E0, &unk_220DC1D80);
LABEL_54:
        v132 = v221;
        sub_220DBEFF0();
        OUTLINED_FUNCTION_1_5(v132);
        if (v83)
        {
          sub_220CE1ABC(v132, &qword_27CF951E0, &unk_220DC1D80);
          goto LABEL_63;
        }

        v133 = v132;
        v134 = *(v231 + 32);
        v134(v208, v133, v37);
        v135 = v209;
        OUTLINED_FUNCTION_21_2();
        sub_220DBF010();
        v136 = v135;
        OUTLINED_FUNCTION_1_5(v135);
        if (v137)
        {
          OUTLINED_FUNCTION_23_2();
          v138 = OUTLINED_FUNCTION_18_2();
          v139(v138);
          sub_220CE1ABC(v135, &qword_27CF951E0, &unk_220DC1D80);
LABEL_62:
          OUTLINED_FUNCTION_22_3();
          v78 = v232;
          goto LABEL_63;
        }

        v140 = v202;
        v134(v202, v136, v37);
        v141 = sub_220CD9B24();
        v142 = OUTLINED_FUNCTION_9_3();
        if (v142)
        {
          v143 = *(v231 + 8);
          v143(v140, v37);
          v144 = OUTLINED_FUNCTION_18_2();
          (v143)(v144);
          goto LABEL_62;
        }

        OUTLINED_FUNCTION_3_7();
        sub_220DC0580();
        OUTLINED_FUNCTION_5_5();
        (v134)(v140, v37);
        v195 = OUTLINED_FUNCTION_18_2();
        (v134)(v195);
        OUTLINED_FUNCTION_22_3();
        v78 = v232;
        if (v141)
        {
LABEL_63:
          v145 = v220;
          OUTLINED_FUNCTION_28_2();
          sub_220DBF030();
          OUTLINED_FUNCTION_1_5(v145);
          if (v83)
          {
            sub_220CE1ABC(v145, &qword_27CF951E0, &unk_220DC1D80);
          }

          else
          {
            v146 = v231;
            v147 = v207;
            (*(v231 + 32))(v207, v145, v37);
            v148 = sub_220DBE440();
            v149 = *(v146 + 8);
            v149(v147, v37);
            if (v148)
            {
              v150 = OUTLINED_FUNCTION_8_5();
              v151 = (v149)(v150);
              OUTLINED_FUNCTION_19_2(v151, &qword_27CF955F0, &qword_220DC2938);
              goto LABEL_71;
            }
          }

          v152 = v218;
          OUTLINED_FUNCTION_28_2();
          sub_220DBF020();
          OUTLINED_FUNCTION_1_5(v152);
          if (v83)
          {
            v153 = *(v231 + 8);
            v154 = OUTLINED_FUNCTION_8_5();
            v156 = v155(v154);
            OUTLINED_FUNCTION_19_2(v156, &qword_27CF955F0, &qword_220DC2938);
            v157 = OUTLINED_FUNCTION_10_2();
            v158(v157);
            result = sub_220CE1ABC(v152, &qword_27CF951E0, &unk_220DC1D80);
LABEL_72:
            v77 = a4 < 0.0;
            goto LABEL_73;
          }

          v159 = v231;
          (*(v231 + 32))(v206, v152, v37);
          sub_220DBE430();
          v160 = *(v159 + 8);
          v161 = OUTLINED_FUNCTION_8_5();
          v162 = v160(v161);
          OUTLINED_FUNCTION_19_2(v162, &qword_27CF955F0, &qword_220DC2938);
          v163 = OUTLINED_FUNCTION_14_4();
          v160(v163);
LABEL_71:
          v164 = OUTLINED_FUNCTION_10_2();
          result = v165(v164);
          goto LABEL_72;
        }

        v196 = OUTLINED_FUNCTION_8_5();
        v197 = (v134)(v196);
        OUTLINED_FUNCTION_19_2(v197, &qword_27CF955F0, &qword_220DC2938);
        v198 = OUTLINED_FUNCTION_10_2();
        result = v200(v198, v199);
LABEL_90:
        v77 = 2;
        goto LABEL_73;
      }

      OUTLINED_FUNCTION_25_1();
      v68(v211);
      v124 = v212;
      sub_220DBEFF0();
      OUTLINED_FUNCTION_1_5(v124);
      if (v125)
      {
        OUTLINED_FUNCTION_23_2();
        v126 = OUTLINED_FUNCTION_18_2();
        v127(v126);
        sub_220CE1ABC(v124, &qword_27CF951E0, &unk_220DC1D80);
LABEL_53:
        v78 = v232;
        goto LABEL_54;
      }

      (v68)(v203, v124, v37);
      v128 = sub_220CD9B24();
      v129 = OUTLINED_FUNCTION_9_3();
      if (v129)
      {
        v130 = OUTLINED_FUNCTION_12_3();
        v87(v130);
        v131 = OUTLINED_FUNCTION_18_2();
        v87(v131);
        goto LABEL_53;
      }

      OUTLINED_FUNCTION_3_7();
      sub_220DC0580();
      OUTLINED_FUNCTION_5_5();
      v191 = OUTLINED_FUNCTION_14_4();
      v68(v191);
      v192 = OUTLINED_FUNCTION_18_2();
      v68(v192);
      v78 = v232;
      if (v128)
      {
        goto LABEL_54;
      }

      v193 = OUTLINED_FUNCTION_8_5();
      v194 = (v68)(v193);
      OUTLINED_FUNCTION_19_2(v194, &qword_27CF955F0, &qword_220DC2938);
      v174 = OUTLINED_FUNCTION_10_2();
LABEL_87:
      result = v175(v174);
      v77 = 3;
      goto LABEL_73;
    }

    OUTLINED_FUNCTION_20_2();
    OUTLINED_FUNCTION_16_3();
    (v68)();
    v114 = v213;
    sub_220DBF050();
    OUTLINED_FUNCTION_1_5(v114);
    if (v115)
    {
      OUTLINED_FUNCTION_23_2();
      v116 = OUTLINED_FUNCTION_8_5();
      v117(v116);
      sub_220CE1ABC(v114, &qword_27CF951E0, &unk_220DC1D80);
      OUTLINED_FUNCTION_22_3();
LABEL_44:
      v87 = v227;
      v78 = v232;
      goto LABEL_45;
    }

    v118 = v204;
    OUTLINED_FUNCTION_16_3();
    (v68)();
    v119 = sub_220CD9B24();
    OUTLINED_FUNCTION_3_7();
    sub_220DC0580();
    OUTLINED_FUNCTION_22_3();
    if (v120)
    {
      v121 = *(v231 + 8);
      v121(v118, v37);
      v122 = OUTLINED_FUNCTION_8_5();
      (v121)(v122);
      goto LABEL_44;
    }

    OUTLINED_FUNCTION_9_3();
    OUTLINED_FUNCTION_5_5();
    (v68)(v118, v37);
    v188 = OUTLINED_FUNCTION_8_5();
    v68(v188);
    v87 = v227;
    v78 = v232;
    if (v119)
    {
      goto LABEL_45;
    }

    v189 = OUTLINED_FUNCTION_8_5();
    v190 = (v68)(v189);
    OUTLINED_FUNCTION_19_2(v190, &qword_27CF955F0, &qword_220DC2938);
    v180 = OUTLINED_FUNCTION_10_2();
LABEL_84:
    result = v181(v180);
    v77 = 4;
    goto LABEL_73;
  }

  (*(v40 + 8))(v230, v37);
  sub_220CE1ABC(a1, &qword_27CF955F0, &qword_220DC2938);
  result = sub_220CE1ABC(v67, &qword_27CF955F0, &qword_220DC2938);
  v77 = a4 < 0.0;
  v78 = v232;
LABEL_73:
  *v78 = v77;
  return result;
}

uint64_t sub_220D045D0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF955F0, &qword_220DC2938);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_220D04644()
{
  result = qword_27CF955F8;
  if (!qword_27CF955F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF955F8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DayPhase(unsigned __int8 *a1, unsigned int a2)
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

_BYTE *storeEnumTagSinglePayload for DayPhase(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t Assembly.__allocating_init()()
{
  v0 = swift_allocObject();
  Assembly.init()();
  return v0;
}

uint64_t Assembly.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t Assembly.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

uint64_t DetailChartCondition.id.getter()
{
  result = 0x79746964696D7568;
  switch(*v0)
  {
    case 1:
      result = OUTLINED_FUNCTION_4_5();
      break;
    case 2:
      result = 0xD000000000000012;
      break;
    case 3:
    case 4:
      result = 0x74617265706D6574;
      break;
    case 5:
      result = OUTLINED_FUNCTION_3_8();
      break;
    case 6:
      result = OUTLINED_FUNCTION_2_5();
      break;
    case 7:
      result = OUTLINED_FUNCTION_5_6();
      break;
    case 8:
      result = OUTLINED_FUNCTION_9_4();
      break;
    default:
      return result;
  }

  return result;
}

void DetailChartCondition.rawValue.getter()
{
  switch(*v0)
  {
    case 1:
      OUTLINED_FUNCTION_4_5();
      break;
    case 2:
      OUTLINED_FUNCTION_10_3();
      break;
    case 3:
      OUTLINED_FUNCTION_6_5();
      break;
    case 4:
      OUTLINED_FUNCTION_7_3();
      break;
    case 5:
      OUTLINED_FUNCTION_3_8();
      break;
    case 6:
      OUTLINED_FUNCTION_2_5();
      break;
    case 7:
      OUTLINED_FUNCTION_5_6();
      break;
    case 8:
      OUTLINED_FUNCTION_9_4();
      break;
    default:
      return;
  }
}

WeatherAppSupport::DetailChartCondition_optional __swiftcall DetailChartCondition.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_220DC0BF0();

  v5 = 9;
  if (v3 < 9)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

void sub_220D04A4C(void *a1@<X8>)
{
  DetailChartCondition.rawValue.getter();
  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_220D04B5C()
{
  sub_220DC0CE0();
  sub_220D7B6A0();
  return sub_220DC0D20();
}

uint64_t DetailChartCondition.title.getter()
{
  switch(*v0)
  {
    case 1:
      if (qword_280FA6600 != -1)
      {
        goto LABEL_22;
      }

      goto LABEL_15;
    case 2:
      if (qword_280FA6600 == -1)
      {
        goto LABEL_19;
      }

      goto LABEL_23;
    case 3:
      if (qword_280FA6600 == -1)
      {
        goto LABEL_19;
      }

      goto LABEL_23;
    case 4:
      if (qword_280FA6600 == -1)
      {
        goto LABEL_19;
      }

      goto LABEL_23;
    case 5:
      if (qword_280FA6600 == -1)
      {
        goto LABEL_15;
      }

      goto LABEL_22;
    case 6:
      if (qword_280FA6600 == -1)
      {
        goto LABEL_19;
      }

      goto LABEL_23;
    case 7:
      if (qword_280FA6600 == -1)
      {
        goto LABEL_19;
      }

      goto LABEL_23;
    case 8:
      if (qword_280FA6600 == -1)
      {
        goto LABEL_19;
      }

LABEL_23:
      OUTLINED_FUNCTION_10();
LABEL_19:
      OUTLINED_FUNCTION_1_6();
      break;
    default:
      if (qword_280FA6600 != -1)
      {
LABEL_22:
        OUTLINED_FUNCTION_10();
      }

LABEL_15:
      OUTLINED_FUNCTION_8();
      break;
  }

  OUTLINED_FUNCTION_6_0();
  return sub_220DBE240();
}

void DetailChartCondition.description.getter()
{
  switch(*v0)
  {
    case 1:
      OUTLINED_FUNCTION_4_5();
      break;
    case 2:
      OUTLINED_FUNCTION_10_3();
      break;
    case 3:
      OUTLINED_FUNCTION_6_5();
      break;
    case 4:
      OUTLINED_FUNCTION_7_3();
      break;
    case 5:
      OUTLINED_FUNCTION_3_8();
      break;
    case 6:
      OUTLINED_FUNCTION_2_5();
      break;
    case 7:
      OUTLINED_FUNCTION_5_6();
      break;
    case 8:
      OUTLINED_FUNCTION_9_4();
      break;
    default:
      return;
  }
}

unint64_t sub_220D04FB0()
{
  result = qword_27CF95608;
  if (!qword_27CF95608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF95608);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DetailChartCondition(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF8)
  {
    if (a2 + 8 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 8) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 9;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v5 = v6 - 9;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for DetailChartCondition(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_220D05168()
{
  result = qword_27CF95610;
  if (!qword_27CF95610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF95610);
  }

  return result;
}

uint64_t LocationPeakTimeCalculator.__allocating_init()()
{
  v0 = swift_allocObject();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF955E0, &qword_220DC2930);
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  *(v0 + 16) = sub_220DBF280();
  return v0;
}

uint64_t sub_220D0521C()
{
  if ((sub_220DBF190() & 1) == 0)
  {
    return 0;
  }

  v0 = *(type metadata accessor for LocationPeakTimeCalculator.CacheKey() + 20);

  return sub_220DBE460();
}

uint64_t sub_220D0527C()
{
  sub_220DBF1D0();
  sub_220D05C58(&qword_27CF95630, MEMORY[0x277D7AB60]);
  sub_220DC0560();
  v0 = *(type metadata accessor for LocationPeakTimeCalculator.CacheKey() + 20);
  sub_220DBE560();
  sub_220D05C58(&qword_280FA77A0, MEMORY[0x277CC9578]);
  return sub_220DC0560();
}

uint64_t sub_220D05354()
{
  sub_220DC0CE0();
  sub_220DBF1D0();
  sub_220D05C58(&qword_27CF95630, MEMORY[0x277D7AB60]);
  sub_220DC0560();
  v0 = *(type metadata accessor for LocationPeakTimeCalculator.CacheKey() + 20);
  sub_220DBE560();
  sub_220D05C58(&qword_280FA77A0, MEMORY[0x277CC9578]);
  sub_220DC0560();
  return sub_220DC0D20();
}

uint64_t sub_220D0544C(uint64_t a1, uint64_t a2)
{
  sub_220DC0CE0();
  sub_220DBF1D0();
  sub_220D05C58(&qword_27CF95630, MEMORY[0x277D7AB60]);
  sub_220DC0560();
  v3 = *(a2 + 20);
  sub_220DBE560();
  sub_220D05C58(&qword_280FA77A0, MEMORY[0x277CC9578]);
  sub_220DC0560();
  return sub_220DC0D20();
}

uint64_t LocationPeakTimeCalculator.init()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF955E0, &qword_220DC2930);
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  *(v0 + 16) = sub_220DBF280();
  return v0;
}

uint64_t LocationPeakTimeCalculator.peakTime(for:date:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v54 = a3;
  v6 = sub_220DBE740();
  v7 = OUTLINED_FUNCTION_0(v6);
  v51 = v8;
  v52 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v7);
  v49 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_220DBE560();
  v13 = OUTLINED_FUNCTION_0(v12);
  v15 = v14;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v13);
  v19 = &v47 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF951E0, &unk_220DC1D80);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20 - 8);
  OUTLINED_FUNCTION_9();
  v53 = v22;
  MEMORY[0x28223BE20](v23);
  v25 = &v47 - v24;
  v26 = type metadata accessor for LocationPeakTimeCalculator.CacheKey();
  v27 = v26 - 8;
  v28 = *(*(v26 - 8) + 64);
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_9();
  v50 = v29;
  MEMORY[0x28223BE20](v30);
  v32 = &v47 - v31;
  v33 = sub_220DBF1D0();
  (*(*(v33 - 8) + 16))(v32, a1, v33);
  v34 = &v32[*(v27 + 28)];
  v48 = *(v15 + 16);
  v48(v34, a2, v12);
  v35 = *(v3 + 16);
  sub_220DBF290();
  if (__swift_getEnumTagSinglePayload(v25, 1, v12) == 1)
  {
    sub_220CD8040(v25);
    sub_220DBF180();
    v37 = v36;
    sub_220DBF180();
    v39 = v38;
    v40 = v49;
    sub_220DBF1C0();
    sub_220DBE480();
    (*(v51 + 8))(v40, v52);
    sub_220DBE300();
    v42 = v41;
    (*(v15 + 8))(v19, v12);
    v43 = [objc_allocWithZone(MEMORY[0x277D0ED50]) initWithLocation:v37 time:v39 altitudeInDegrees:v42 accuracy:{*MEMORY[0x277D0E7C0], 60.0}];
    [v43 nextEventOfType_];
    v44 = v54;
    sub_220DBE2F0();
    sub_220D059C4(v32, v50);
    v45 = v53;
    v48(v53, v44, v12);
    __swift_storeEnumTagSinglePayload(v45, 0, 1, v12);
    sub_220DBF2A0();

    return sub_220D05A28(v32);
  }

  else
  {
    sub_220D05A28(v32);
    return (*(v15 + 32))(v54, v25, v12);
  }
}

uint64_t type metadata accessor for LocationPeakTimeCalculator.CacheKey()
{
  result = qword_27CF95618;
  if (!qword_27CF95618)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_220D059C4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LocationPeakTimeCalculator.CacheKey();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_220D05A28(uint64_t a1)
{
  v2 = type metadata accessor for LocationPeakTimeCalculator.CacheKey();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t LocationPeakTimeCalculator.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t LocationPeakTimeCalculator.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

uint64_t sub_220D05B8C()
{
  result = sub_220DBF1D0();
  if (v1 <= 0x3F)
  {
    result = sub_220DBE560();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_220D05C58(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_220D05CA0()
{
  v0 = sub_220DC0620();
  v2 = v1;
  if (v0 == sub_220DC0620() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    OUTLINED_FUNCTION_19_3();
    v5 = sub_220DC0CA0();
  }

  return v5 & 1;
}

uint64_t sub_220D05D68(unsigned __int8 a1, char a2)
{
  v2 = 0x79746964696D7568;
  v3 = 0xE800000000000000;
  v4 = a1;
  v5 = 0x79746964696D7568;
  switch(v4)
  {
    case 1:
      v5 = 0x6572757373657270;
      break;
    case 2:
      v5 = 0xD000000000000012;
      v3 = 0x8000000220DC8A80;
      break;
    case 3:
      v5 = 0x74617265706D6574;
      v3 = 0xEB00000000657275;
      break;
    case 4:
      v3 = 0x8000000220DC8AA0;
      v5 = 0xD000000000000014;
      break;
    case 5:
      v3 = 0xE700000000000000;
      v5 = 0x7865646E497675;
      break;
    case 6:
      v5 = 0x696C696269736976;
      v3 = 0xEA00000000007974;
      break;
    case 7:
      v3 = 0xE400000000000000;
      v5 = 1684957559;
      break;
    case 8:
      v5 = 0x664F65636E616863;
      v3 = 0xEC0000006E696152;
      break;
    default:
      break;
  }

  v6 = 0xE800000000000000;
  switch(a2)
  {
    case 1:
      v2 = 0x6572757373657270;
      break;
    case 2:
      v2 = 0xD000000000000012;
      v6 = 0x8000000220DC8A80;
      break;
    case 3:
      v2 = 0x74617265706D6574;
      v6 = 0xEB00000000657275;
      break;
    case 4:
      v6 = 0x8000000220DC8AA0;
      v2 = 0xD000000000000014;
      break;
    case 5:
      v6 = 0xE700000000000000;
      v2 = 0x7865646E497675;
      break;
    case 6:
      v2 = 0x696C696269736976;
      v6 = 0xEA00000000007974;
      break;
    case 7:
      v6 = 0xE400000000000000;
      v2 = 1684957559;
      break;
    case 8:
      v2 = 0x664F65636E616863;
      v6 = 0xEC0000006E696152;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_220DC0CA0();
  }

  return v8 & 1;
}

void static DetailChartDataPointValueCalculator.CacheKeys.== infix(_:_:)()
{
  OUTLINED_FUNCTION_28_3();
  v298 = v1;
  v299 = v2;
  v267 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95638, &unk_220DC2CE0);
  OUTLINED_FUNCTION_6(v267);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_4_4(v6);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95640, &qword_220DC45A0);
  v8 = OUTLINED_FUNCTION_18(v7);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_57();
  OUTLINED_FUNCTION_4_4(v13);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95258, &unk_220DC2CF0);
  v293 = OUTLINED_FUNCTION_0(v14);
  v294 = v15;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v293);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_57();
  OUTLINED_FUNCTION_4_4(v19);
  v286 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95208, &unk_220DC1E40);
  OUTLINED_FUNCTION_0(v286);
  v284 = v20;
  v22 = *(v21 + 64);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_4_4(v24);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95648, &qword_220DC2D00);
  OUTLINED_FUNCTION_18(v25);
  v27 = *(v26 + 64);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_4_4(v29);
  v271 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95650, &qword_220DC2D08);
  OUTLINED_FUNCTION_6(v271);
  v31 = *(v30 + 64);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_4_4(v33);
  v34 = sub_220DBEC20();
  v35 = OUTLINED_FUNCTION_0(v34);
  v287 = v36;
  v288 = v35;
  v38 = *(v37 + 64);
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_57();
  OUTLINED_FUNCTION_4_4(v40);
  v41 = sub_220DBEC50();
  v42 = OUTLINED_FUNCTION_0(v41);
  v281 = v43;
  v282 = v42;
  v45 = *(v44 + 64);
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_57();
  v292 = v47;
  v295 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95260, &unk_220DC2D10);
  OUTLINED_FUNCTION_0(v295);
  v280 = v48;
  v50 = *(v49 + 64);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v51);
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_4_4(v52);
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94FA0, &unk_220DC17F0);
  v296 = OUTLINED_FUNCTION_0(v53);
  v297 = v54;
  v56 = *(v55 + 64);
  MEMORY[0x28223BE20](v296);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v57);
  OUTLINED_FUNCTION_25_0();
  v283 = v58;
  OUTLINED_FUNCTION_23();
  MEMORY[0x28223BE20](v59);
  OUTLINED_FUNCTION_25_0();
  v285 = v60;
  OUTLINED_FUNCTION_23();
  MEMORY[0x28223BE20](v61);
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v62);
  OUTLINED_FUNCTION_57();
  OUTLINED_FUNCTION_4_4(v63);
  v64 = type metadata accessor for DetailChartDataPointValueCalculator.CacheKeys();
  v65 = OUTLINED_FUNCTION_6(v64);
  v67 = *(v66 + 64);
  MEMORY[0x28223BE20](v65);
  OUTLINED_FUNCTION_9();
  v289 = v68;
  OUTLINED_FUNCTION_23();
  MEMORY[0x28223BE20](v69);
  OUTLINED_FUNCTION_25_0();
  v291 = v70;
  OUTLINED_FUNCTION_23();
  MEMORY[0x28223BE20](v71);
  OUTLINED_FUNCTION_25_0();
  v290 = v72;
  OUTLINED_FUNCTION_23();
  MEMORY[0x28223BE20](v73);
  OUTLINED_FUNCTION_23_3();
  v75 = MEMORY[0x28223BE20](v74);
  v77 = &v262 - v76;
  v78 = MEMORY[0x28223BE20](v75);
  v80 = &v262 - v79;
  v81 = MEMORY[0x28223BE20](v78);
  v83 = &v262 - v82;
  v84 = MEMORY[0x28223BE20](v81);
  v86 = &v262 - v85;
  v87 = MEMORY[0x28223BE20](v84);
  v89 = (&v262 - v88);
  MEMORY[0x28223BE20](v87);
  v91 = &v262 - v90;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95658, &qword_220DC2D20);
  OUTLINED_FUNCTION_18(v92);
  v94 = *(v93 + 64);
  OUTLINED_FUNCTION_34();
  v96 = MEMORY[0x28223BE20](v95);
  v98 = &v262 - v97;
  v99 = (&v262 + *(v96 + 56) - v97);
  sub_220D07834(v298, &v262 - v97);
  v298 = v99;
  sub_220D07834(v299, v99);
  v299 = v98;
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v165 = OUTLINED_FUNCTION_10_4();
      sub_220D07834(v165, v89);
      v115 = v298;
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        goto LABEL_47;
      }

      v116 = *v89;
      goto LABEL_24;
    case 2u:
      v117 = OUTLINED_FUNCTION_10_4();
      sub_220D07834(v117, v86);
      v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF956A8, &qword_220DC2D50);
      v119 = *(v118 + 48);
      v120 = *&v86[v119];
      v121 = *(v118 + 64);
      v122 = v298;
      if (swift_getEnumCaseMultiPayload() != 2)
      {
        (*(v281 + 8))(&v86[v121], v282);

        (*(v280 + 8))(v86, v295);
        goto LABEL_47;
      }

      v123 = *(v122 + v119);
      v296 = v120;
      v297 = v123;
      v124 = v280;
      v125 = v272;
      (*(v280 + 32))(v272, v122, v295);
      v126 = v281;
      v127 = v282;
      v128 = *(v281 + 32);
      v128(v292, &v86[v121], v282);
      v129 = v278;
      v128(v278, (v122 + v121), v127);
      v130 = v125;
      sub_220CD8184(0, &qword_27CF956B0, 0x277CCAE38);
      v131 = OUTLINED_FUNCTION_25_2();
      v132 = *(v124 + 8);
      v132(v86, v295);
      if (v131)
      {
        v133 = v126;
        sub_220CD8184(0, &qword_27CF95530, 0x277D82BB8);
        v134 = v296;
        if (sub_220DC0AB0())
        {
          v135 = v292;
          v136 = v130;
          v137 = v278;
          sub_220CE6AAC(v292, v278, MEMORY[0x277CE33F8], &qword_27CF95768, MEMORY[0x277CE33F8]);

          v138 = *(v133 + 8);
          v138(v137, v127);
          v138(v135, v127);
          v132(v136, v295);
          goto LABEL_33;
        }

        v232 = *(v133 + 8);
        v232(v278, v127);
      }

      else
      {

        v232 = *(v126 + 8);
        v232(v129, v127);
      }

      v232(v292, v127);
      v239 = OUTLINED_FUNCTION_26_0();
      (v132)(v239);
      goto LABEL_87;
    case 3u:
      v139 = OUTLINED_FUNCTION_10_4();
      sub_220D07834(v139, v83);
      v140 = *(v83 + 1);
      v141 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF956A0, &qword_220DC2D48) + 64);
      v142 = v298;
      if (swift_getEnumCaseMultiPayload() != 3)
      {
        (*(v287 + 8))(&v83[v141], v288);

        goto LABEL_47;
      }

      v143 = *v83;
      v144 = *v142;
      v145 = *(v142 + 8);
      v147 = v287;
      v146 = v288;
      v148 = *(v287 + 32);
      v149 = &v83[v141];
      v150 = v275;
      v148(v275, v149, v288);
      v151 = (v142 + v141);
      v152 = v274;
      v148(v274, v151, v146);
      if (v143 == v144)
      {
        if (v140)
        {
          if (v145)
          {
            v153 = v150;
            sub_220CD8184(0, &qword_280FA6618, 0x277CCAE20);
            v154 = v140;
            v145 = v145;
            v155 = sub_220DC0AB0();

            if (v155)
            {
              v150 = v153;
LABEL_73:
              OUTLINED_FUNCTION_15_3();
              sub_220CE6AAC(v150, v152, v250, v251, MEMORY[0x277CE33B8]);

              v252 = *(v147 + 8);
              v253 = OUTLINED_FUNCTION_17_1();
              v252(v253);
              (v252)(v150, v146);
              goto LABEL_33;
            }

            v150 = v153;
          }

          else
          {
            v145 = v140;
          }
        }

        else if (!v145)
        {
          v154 = 0;
          goto LABEL_73;
        }
      }

      else
      {
      }

      v260 = *(v147 + 8);
      v261 = OUTLINED_FUNCTION_17_1();
      v260(v261);
      (v260)(v150, v146);
      goto LABEL_87;
    case 4u:
      v103 = OUTLINED_FUNCTION_10_4();
      sub_220D07834(v103, v80);
      v104 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95698, &qword_220DC2D40) + 48);
      v105 = *&v80[v104];
      v106 = v298;
      OUTLINED_FUNCTION_17_1();
      if (swift_getEnumCaseMultiPayload() != 4)
      {

        (*(v297 + 1))(v80, v296);
        goto LABEL_47;
      }

      v107 = *(v106 + v104);
      v108 = v296;
      v109 = v297;
      v110 = v270;
      (*(v297 + 4))(v270, v106, v296);
      sub_220CD8184(0, &qword_27CF95688, 0x277CCAE48);
      v111 = OUTLINED_FUNCTION_25_2();
      v112 = v109[1];
      v112(v80, v108);
      if (v111)
      {
        sub_220CD8184(0, &qword_27CF95530, 0x277D82BB8);
        OUTLINED_FUNCTION_27_0();
        sub_220DC0AB0();

        v112(v110, v108);
        goto LABEL_33;
      }

      v112(v110, v108);
      goto LABEL_53;
    case 5u:
      v166 = OUTLINED_FUNCTION_10_4();
      sub_220D07834(v166, v77);
      v167 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95680, &qword_220DC2D38);
      v168 = *(v167 + 48);
      v169 = *&v77[v168];
      v170 = *(v167 + 64);
      v171 = v298;
      OUTLINED_FUNCTION_17_1();
      if (swift_getEnumCaseMultiPayload() != 5)
      {
        (*(v297 + 1))(&v77[v170], v296);

        sub_220CDA548(v77, &qword_27CF95648, &qword_220DC2D00);
        goto LABEL_47;
      }

      v295 = *(v171 + v168);
      v172 = v296;
      v173 = *(v297 + 4);
      v173(v285, &v77[v170], v296);
      v173(v283, (v171 + v170), v172);
      v174 = *(v271 + 48);
      v175 = v276;
      OUTLINED_FUNCTION_16_4();
      sub_220D078F4(v176, v177, v178, v179);
      OUTLINED_FUNCTION_16_4();
      sub_220D078F4(v180, v181, v182, v183);
      OUTLINED_FUNCTION_27_1(v175, 1, v172);
      if (!v235)
      {
        v234 = v266;
        sub_220D07944(v175, v266, &qword_27CF95648, &qword_220DC2D00);
        OUTLINED_FUNCTION_27_1(v175 + v174, 1, v172);
        if (!v235)
        {
          v241 = v264;
          v173(v264, (v175 + v174), v172);
          OUTLINED_FUNCTION_12_4(&qword_27CF95690, &qword_27CF94FA0, &unk_220DC17F0);
          v242 = v234;
          v243 = sub_220DC05B0();
          v184 = v297;
          v244 = *(v297 + 1);
          v244(v241, v172);
          v244(v242, v172);
          sub_220CDA548(v175, &qword_27CF95648, &qword_220DC2D00);
          v185 = v295;
          if (v243)
          {
            goto LABEL_66;
          }

LABEL_64:
          v244(v283, v172);
          v244(v285, v172);
          goto LABEL_87;
        }

        v240 = v297;
        (*(v297 + 1))(v234, v172);
LABEL_63:
        sub_220CDA548(v175, &qword_27CF95650, &qword_220DC2D08);
        v244 = v240[1];
        goto LABEL_64;
      }

      OUTLINED_FUNCTION_27_1(v175 + v174, 1, v172);
      if (!v235)
      {

        v240 = v297;
        goto LABEL_63;
      }

      sub_220CDA548(v175, &qword_27CF95648, &qword_220DC2D00);
      v184 = v297;
      v185 = v295;
LABEL_66:
      sub_220CD8184(0, &qword_27CF95530, 0x277D82BB8);
      OUTLINED_FUNCTION_27_0();
      if (sub_220DC0AB0())
      {
        sub_220CD8184(0, &qword_27CF95688, 0x277CCAE48);
        v245 = v285;
        v246 = v283;
        OUTLINED_FUNCTION_25_2();

        v247 = v184[1];
        v247(v246, v172);
        v247(v245, v172);
LABEL_33:
        v188 = v91;
        goto LABEL_88;
      }

      v254 = v184[1];
      v254(v283, v172);
      v254(v285, v172);
LABEL_87:
      v188 = v91;
LABEL_88:
      sub_220D07898(v188);
LABEL_89:
      OUTLINED_FUNCTION_29_0();
      return;
    case 6u:
      v186 = OUTLINED_FUNCTION_10_4();
      sub_220D07834(v186, v0);
      v187 = v298;
      if (swift_getEnumCaseMultiPayload() != 6)
      {
        goto LABEL_47;
      }

      v235 = *v0 == *v187;
      goto LABEL_33;
    case 7u:
      v156 = OUTLINED_FUNCTION_10_4();
      v157 = v290;
      sub_220D07834(v156, v290);
      v158 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95678, &qword_220DC2D30) + 48);
      v105 = *&v157[v158];
      v159 = v298;
      OUTLINED_FUNCTION_17_1();
      if (swift_getEnumCaseMultiPayload() != 7)
      {

        (*(v284 + 8))(v157, v286);
        goto LABEL_47;
      }

      v107 = *(v159 + v158);
      v160 = v284;
      v161 = v286;
      (*(v284 + 32))(v273, v159, v286);
      sub_220CD8184(0, &qword_280FA6618, 0x277CCAE20);
      v162 = OUTLINED_FUNCTION_25_2();
      v163 = *(v160 + 8);
      v163(v157, v161);
      if (v162)
      {
        sub_220CD8184(0, &qword_27CF95530, 0x277D82BB8);
        OUTLINED_FUNCTION_27_0();
        sub_220DC0AB0();

        v164 = OUTLINED_FUNCTION_24_2();
        (v163)(v164);
        goto LABEL_33;
      }

      v233 = OUTLINED_FUNCTION_24_2();
      (v163)(v233);
LABEL_53:

      goto LABEL_87;
    case 8u:
      v189 = OUTLINED_FUNCTION_10_4();
      v190 = v291;
      sub_220D07834(v189, v291);
      v191 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95660, &qword_220DC2D28);
      v192 = v191[12];
      v193 = v191[16];
      v194 = *(v190 + v193);
      v195 = v191[20];
      v196 = *(v190 + v195);
      v197 = v298;
      if (swift_getEnumCaseMultiPayload() != 8)
      {

        sub_220CDA548(v190 + v192, &qword_27CF95640, &qword_220DC45A0);
        (*(v294 + 8))(v190, v293);
        goto LABEL_47;
      }

      v292 = v194;
      v295 = *(v197 + v193);
      v296 = *(v197 + v195);
      v297 = v196;
      v198 = v293;
      v199 = v294;
      v200 = v279;
      v290 = *(v294 + 32);
      (v290)(v279, v197, v293);
      OUTLINED_FUNCTION_16_4();
      sub_220D078F4(v201, v202, v203, v204);
      v205 = v277;
      OUTLINED_FUNCTION_16_4();
      sub_220D078F4(v206, v207, v208, v209);
      sub_220CD8184(0, &qword_27CF95668, 0x277CCAE40);
      v210 = OUTLINED_FUNCTION_25_2();
      v212 = v199 + 8;
      v211 = *(v199 + 8);
      v213 = OUTLINED_FUNCTION_26_0();
      v211(v213);
      if ((v210 & 1) == 0)
      {

        sub_220CDA548(v205, &qword_27CF95640, &qword_220DC45A0);
        v236 = OUTLINED_FUNCTION_27_0();
        sub_220CDA548(v236, v237, &qword_220DC45A0);
        (v211)(v200, v198);
        goto LABEL_60;
      }

      v294 = v212;
      v214 = *(v267 + 48);
      v215 = v269;
      OUTLINED_FUNCTION_16_4();
      sub_220D07944(v216, v217, v218, v219);
      OUTLINED_FUNCTION_16_4();
      sub_220D07944(v220, v221, v222, v223);
      OUTLINED_FUNCTION_27_1(v215, 1, v198);
      if (v235)
      {
        OUTLINED_FUNCTION_27_1(v215 + v214, 1, v198);
        if (v235)
        {
          sub_220CDA548(v215, &qword_27CF95640, &qword_220DC45A0);
          v91 = v299;
          v224 = v295;
          OUTLINED_FUNCTION_11_2();
          v225 = v296;
          goto LABEL_80;
        }

        v91 = v299;
      }

      else
      {
        v248 = v265;
        sub_220D07944(v215, v265, &qword_27CF95640, &qword_220DC45A0);
        OUTLINED_FUNCTION_27_1(v215 + v214, 1, v198);
        if (!v249)
        {
          v256 = v263;
          (v290)(v263, v215 + v214, v198);
          OUTLINED_FUNCTION_12_4(&qword_27CF95670, &qword_27CF95258, &unk_220DC2CF0);
          v257 = sub_220DC05B0();
          (v211)(v256, v198);
          (v211)(v248, v198);
          sub_220CDA548(v215, &qword_27CF95640, &qword_220DC45A0);
          v91 = v299;
          OUTLINED_FUNCTION_11_2();
          v224 = v295;
          v225 = v296;
          if (v257)
          {
LABEL_80:
            sub_220CD8184(0, &qword_27CF95530, 0x277D82BB8);
            v258 = v292;
            if (sub_220DC0AB0())
            {
              v259 = v297;
              sub_220DC0AB0();

              sub_220CDA548(v277, &qword_27CF95640, &qword_220DC45A0);
              sub_220CDA548(v198, &qword_27CF95640, &qword_220DC45A0);
              (v211)(v215, v293);
              goto LABEL_33;
            }

            v255 = v277;
LABEL_86:
            sub_220CDA548(v255, &qword_27CF95640, &qword_220DC45A0);
            sub_220CDA548(v198, &qword_27CF95640, &qword_220DC45A0);
            (v211)(v215, v293);
            goto LABEL_87;
          }

LABEL_78:
          v255 = v205;
          goto LABEL_86;
        }

        (v211)(v248, v198);
        v91 = v299;
      }

      OUTLINED_FUNCTION_11_2();
      sub_220CDA548(v269, &qword_27CF95638, &unk_220DC2CE0);
      goto LABEL_78;
    case 9u:
      v113 = OUTLINED_FUNCTION_10_4();
      v114 = v289;
      sub_220D07834(v113, v289);
      v115 = v298;
      if (swift_getEnumCaseMultiPayload() != 9)
      {
        goto LABEL_47;
      }

      v116 = *v114;
LABEL_24:
      v235 = v116 == *v115;
      goto LABEL_33;
    default:
      sub_220D07834(v299, v91);
      v100 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95698, &qword_220DC2D40) + 48);
      v101 = *&v91[v100];
      v102 = v298;
      OUTLINED_FUNCTION_17_1();
      if (swift_getEnumCaseMultiPayload())
      {

        (*(v297 + 1))(v91, v296);
        v91 = v299;
LABEL_47:
        sub_220CDA548(v91, &qword_27CF95658, &qword_220DC2D20);
        goto LABEL_89;
      }

      v226 = *(v102 + v100);
      v227 = v296;
      v228 = v297;
      (*(v297 + 4))(v268, v102, v296);
      sub_220CD8184(0, &qword_27CF95688, 0x277CCAE48);
      v229 = OUTLINED_FUNCTION_25_2();
      v230 = v228[1];
      v230(v91, v227);
      if (v229)
      {
        sub_220CD8184(0, &qword_27CF95530, 0x277D82BB8);
        OUTLINED_FUNCTION_27_0();
        sub_220DC0AB0();

        v231 = OUTLINED_FUNCTION_24_2();
        (v230)(v231);
        v188 = v299;
      }

      else
      {
        v238 = OUTLINED_FUNCTION_24_2();
        (v230)(v238);

LABEL_60:
        v188 = v299;
      }

      goto LABEL_88;
  }
}

uint64_t type metadata accessor for DetailChartDataPointValueCalculator.CacheKeys()
{
  result = qword_27CF956F0;
  if (!qword_27CF956F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_220D07834(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DetailChartDataPointValueCalculator.CacheKeys();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_220D07898(uint64_t a1)
{
  v2 = type metadata accessor for DetailChartDataPointValueCalculator.CacheKeys();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_220D078F4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = OUTLINED_FUNCTION_30_0(a1, a2, a3, a4);
  OUTLINED_FUNCTION_6(v6);
  (*(v7 + 32))(v4, v5);
  return v4;
}

uint64_t sub_220D07944(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = OUTLINED_FUNCTION_30_0(a1, a2, a3, a4);
  OUTLINED_FUNCTION_6(v6);
  (*(v7 + 16))(v4, v5);
  return v4;
}

void DetailChartDataPointValueCalculator.CacheKeys.hash(into:)()
{
  OUTLINED_FUNCTION_28_3();
  v128 = v1;
  v129 = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95640, &qword_220DC45A0);
  v4 = OUTLINED_FUNCTION_18(v3);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_9();
  v123 = v7;
  OUTLINED_FUNCTION_23();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_57();
  v126 = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95258, &unk_220DC2CF0);
  v11 = OUTLINED_FUNCTION_0(v10);
  v124 = v12;
  v125 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_9();
  v112 = v15;
  OUTLINED_FUNCTION_23();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_57();
  v127 = v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95208, &unk_220DC1E40);
  v19 = OUTLINED_FUNCTION_0(v18);
  v120 = v20;
  v121 = v19;
  v22 = *(v21 + 64);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_22();
  v117 = v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95648, &qword_220DC2D00);
  v26 = OUTLINED_FUNCTION_18(v25);
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_9();
  v115 = v29;
  OUTLINED_FUNCTION_23();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_57();
  v122 = v31;
  v32 = sub_220DBEC20();
  v33 = OUTLINED_FUNCTION_0(v32);
  v118 = v34;
  v119 = v33;
  v36 = *(v35 + 64);
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_1();
  v116 = v38 - v37;
  v39 = sub_220DBEC50();
  v40 = OUTLINED_FUNCTION_0(v39);
  v114 = v41;
  v43 = *(v42 + 64);
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_1();
  v46 = v45 - v44;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95260, &unk_220DC2D10);
  OUTLINED_FUNCTION_0(v47);
  v113 = v48;
  v50 = *(v49 + 64);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v51);
  v53 = &v111 - v52;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94FA0, &unk_220DC17F0);
  v55 = OUTLINED_FUNCTION_0(v54);
  v57 = v56;
  v59 = *(v58 + 64);
  MEMORY[0x28223BE20](v55);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_23_3();
  MEMORY[0x28223BE20](v60);
  v62 = &v111 - v61;
  v63 = type metadata accessor for DetailChartDataPointValueCalculator.CacheKeys();
  v64 = OUTLINED_FUNCTION_6(v63);
  v66 = *(v65 + 64);
  MEMORY[0x28223BE20](v64);
  OUTLINED_FUNCTION_1();
  v69 = v68 - v67;
  sub_220D07834(v128, v68 - v67);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v73 = *v69;
      v74 = 1;
      goto LABEL_12;
    case 2u:
      v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF956A8, &qword_220DC2D50);
      v76 = *(v69 + *(v75 + 48));
      v77 = *(v75 + 64);
      v78 = v113;
      (*(v113 + 32))(v53, v69, v47);
      v79 = v114;
      (*(v114 + 32))(v46, v69 + v77, v39);
      MEMORY[0x223D98920](2);
      OUTLINED_FUNCTION_1_7(&qword_27CF956D8, &qword_27CF95260, &unk_220DC2D10);
      sub_220DC0560();
      sub_220DC0AC0();
      sub_220CE6B84(&qword_27CF956E0, MEMORY[0x277CE33F8]);
      sub_220DC0560();

      (*(v79 + 8))(v46, v39);
      (*(v78 + 8))(v53, v47);
      goto LABEL_25;
    case 3u:
      v80 = *v69;
      v81 = *(v69 + 8);
      v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF956A0, &qword_220DC2D48);
      v83 = v118;
      (*(v118 + 32))(v116, v69 + *(v82 + 64), v119);
      OUTLINED_FUNCTION_31_1();
      v84 = 0.0;
      if (v80 != 0.0)
      {
        v84 = v80;
      }

      MEMORY[0x223D98940](*&v84);
      sub_220DC0D00();
      if (v81)
      {
        v81 = v81;
        sub_220DC0AC0();
      }

      sub_220CE6B84(&qword_27CF956D0, MEMORY[0x277CE33B8]);
      OUTLINED_FUNCTION_19_3();
      sub_220DC0560();

      v108 = *(v83 + 8);
      v109 = OUTLINED_FUNCTION_26_0();
      v110(v109);
      goto LABEL_25;
    case 5u:
      v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95680, &qword_220DC2D38);
      v128 = *(v69 + *(v90 + 48));
      v91 = *(v90 + 64);
      v92 = v122;
      sub_220D078F4(v69, v122, &qword_27CF95648, &qword_220DC2D00);
      v93 = *(v57 + 32);
      v93(v0, v69 + v91, v54);
      OUTLINED_FUNCTION_31_1();
      v94 = v115;
      sub_220D07944(v92, v115, &qword_27CF95648, &qword_220DC2D00);
      OUTLINED_FUNCTION_27_1(v94, 1, v54);
      if (v95)
      {
        sub_220DC0D00();
      }

      else
      {
        v93(v62, v94, v54);
        sub_220DC0D00();
        OUTLINED_FUNCTION_1_7(&qword_27CF956C8, &qword_27CF94FA0, &unk_220DC17F0);
        OUTLINED_FUNCTION_19_3();
        sub_220DC0560();
        (*(v57 + 8))(v62, v54);
      }

      v104 = v128;
      sub_220DC0AC0();
      OUTLINED_FUNCTION_1_7(&qword_27CF956C8, &qword_27CF94FA0, &unk_220DC17F0);
      OUTLINED_FUNCTION_19_3();
      sub_220DC0560();

      (*(v57 + 8))(v0, v54);
      sub_220CDA548(v92, &qword_27CF95648, &qword_220DC2D00);
      goto LABEL_25;
    case 6u:
      v96 = *v69;
      MEMORY[0x223D98920](6);
      MEMORY[0x223D98920](*&v96);
      goto LABEL_25;
    case 7u:
      v0 = *(v69 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95678, &qword_220DC2D30) + 48));
      v85 = v120;
      (*(v120 + 32))(v117, v69, v121);
      OUTLINED_FUNCTION_31_1();
      OUTLINED_FUNCTION_1_7(&qword_27CF956C0, &qword_27CF95208, &unk_220DC1E40);
      OUTLINED_FUNCTION_19_3();
      sub_220DC0560();
      sub_220DC0AC0();
      v86 = *(v85 + 8);
      v87 = OUTLINED_FUNCTION_26_0();
      v88(v87);
      goto LABEL_10;
    case 8u:
      v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95660, &qword_220DC2D28);
      v98 = v97[12];
      v122 = *(v69 + v97[16]);
      v128 = *(v69 + v97[20]);
      v99 = v124;
      v100 = v125;
      v101 = *(v124 + 32);
      v101(v127, v69, v125);
      v102 = v126;
      sub_220D078F4(v69 + v98, v126, &qword_27CF95640, &qword_220DC45A0);
      MEMORY[0x223D98920](8);
      OUTLINED_FUNCTION_1_7(&qword_27CF956B8, &qword_27CF95258, &unk_220DC2CF0);
      sub_220DC0560();
      v103 = v123;
      sub_220D07944(v102, v123, &qword_27CF95640, &qword_220DC45A0);
      OUTLINED_FUNCTION_27_1(v103, 1, v100);
      if (v95)
      {
        sub_220DC0D00();
      }

      else
      {
        v105 = v112;
        v101(v112, v103, v100);
        sub_220DC0D00();
        sub_220DC0560();
        (*(v99 + 8))(v105, v100);
      }

      v106 = v122;
      sub_220DC0AC0();
      v107 = v128;
      sub_220DC0AC0();

      sub_220CDA548(v102, &qword_27CF95640, &qword_220DC45A0);
      (*(v99 + 8))(v127, v100);

      goto LABEL_25;
    case 9u:
      v73 = *v69;
      v74 = 9;
LABEL_12:
      MEMORY[0x223D98920](v74);
      v89 = 0.0;
      if (v73 != 0.0)
      {
        v89 = v73;
      }

      MEMORY[0x223D98940](*&v89);
      goto LABEL_25;
    default:
      v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95698, &qword_220DC2D40);
      v71 = OUTLINED_FUNCTION_14_5(v70);
      v72(v71);
      OUTLINED_FUNCTION_31_1();
      OUTLINED_FUNCTION_1_7(&qword_27CF956C8, &qword_27CF94FA0, &unk_220DC17F0);
      OUTLINED_FUNCTION_19_3();
      sub_220DC0560();
      sub_220DC0AC0();
      (*(v57 + 8))(v62, v54);
LABEL_10:

LABEL_25:
      OUTLINED_FUNCTION_29_0();
      return;
  }
}

uint64_t DetailChartDataPointValueCalculator.CacheKeys.hashValue.getter()
{
  sub_220DC0CE0();
  DetailChartDataPointValueCalculator.CacheKeys.hash(into:)();
  return sub_220DC0D20();
}

uint64_t sub_220D08508()
{
  sub_220DC0CE0();
  DetailChartDataPointValueCalculator.CacheKeys.hash(into:)();
  return sub_220DC0D20();
}

uint64_t DetailChartDataPointValueCalculator.init(precipitationCalculator:accessibilityValueDescriptionCache:)@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = sub_220CD570C(a1, a3);
  *(a3 + 40) = a2;
  return result;
}

void DetailChartDataPointValueCalculator.value(for:)()
{
  OUTLINED_FUNCTION_28_3();
  v109 = v1;
  v3 = v2;
  v94 = sub_220DBF160();
  v4 = OUTLINED_FUNCTION_0(v94);
  v93 = v5;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_4_4(v9 - v8);
  v107 = sub_220DBEF00();
  v10 = OUTLINED_FUNCTION_0(v107);
  v105 = v11;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_1();
  v104 = v15 - v14;
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95258, &unk_220DC2CF0);
  v16 = OUTLINED_FUNCTION_0(v110);
  v108 = v17;
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_57();
  v106 = v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95208, &unk_220DC1E40);
  v23 = OUTLINED_FUNCTION_0(v22);
  v102 = v24;
  v103 = v23;
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_9();
  v100 = v27;
  OUTLINED_FUNCTION_23();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_57();
  v101 = v29;
  v30 = sub_220DBEF70();
  v31 = OUTLINED_FUNCTION_0(v30);
  v98 = v32;
  v99 = v31;
  v34 = *(v33 + 64);
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_1();
  v97 = v36 - v35;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94FA0, &unk_220DC17F0);
  v38 = OUTLINED_FUNCTION_0(v37);
  v112 = v39;
  v113 = v38;
  v41 = *(v40 + 64);
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_4();
  v44 = v42 - v43;
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_57();
  v111 = v46;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95260, &unk_220DC2D10);
  v48 = OUTLINED_FUNCTION_0(v47);
  v96 = v49;
  v51 = *(v50 + 64);
  MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_23_3();
  MEMORY[0x28223BE20](v52);
  v54 = v92 - v53;
  v55 = sub_220DBEE60();
  v56 = OUTLINED_FUNCTION_0(v55);
  v95 = v57;
  v59 = *(v58 + 64);
  MEMORY[0x28223BE20](v56);
  OUTLINED_FUNCTION_1();
  v60 = sub_220DBE960();
  v61 = OUTLINED_FUNCTION_0(v60);
  v63 = *(v62 + 64);
  MEMORY[0x28223BE20](v61);
  OUTLINED_FUNCTION_1();
  v66 = v65 - v64;
  v114 = v67;
  v115 = v68;
  (*(v68 + 16))(v65 - v64, v3);
  v69 = type metadata accessor for WeatherValueCalculationContext();
  v70 = (v3 + *(v69 + 28));
  v71 = *v70;
  v72 = v70[2];
  switch(*(v3 + *(v69 + 24)))
  {
    case 1:
      v84 = v70[1];
      sub_220DBE940();
      sub_220DBE130();
      v85 = *(v96 + 8);
      v85(v0, v47);
      sub_220DBE050();
      v85(v54, v47);
      break;
    case 2:
      v73 = v109[3];
      v74 = v109[4];
      __swift_project_boxed_opaque_existential_1(v109, v73);
      (*(v74 + 72))(v3, v73, v74);
      sub_220DBEE50();
      v75 = *(v95 + 8);
      v76 = OUTLINED_FUNCTION_24_2();
      v77(v76);
      break;
    case 3:
      sub_220DBE850();
      goto LABEL_6;
    case 4:
      sub_220DBE890();
LABEL_6:
      v78 = v111;
      v79 = v113;
      sub_220DBE130();
      v80 = *(v112 + 8);
      v80(v44, v79);
      goto LABEL_12;
    case 5:
      v86 = v97;
      sub_220DBE910();
      sub_220DBEF50();
      (*(v98 + 8))(v86, v99);
      break;
    case 6:
      v87 = v70[5];
      v88 = v100;
      sub_220DBE840();
      v78 = v101;
      v79 = v103;
      sub_220DBE130();
      v80 = *(v102 + 8);
      v80(v88, v79);
LABEL_12:
      sub_220DBE050();
      v80(v78, v79);
      break;
    case 7:
      v81 = v104;
      sub_220DBE900();
      v82 = v106;
      sub_220DBEEF0();
      (*(v105 + 8))(v81, v107);
      if (sub_220DC08F0())
      {
        v83 = v92[1];
        sub_220DBE000();
        sub_220DBF150();
        (*(v93 + 8))(v83, v94);
        (*(v108 + 8))(v82, v110);
      }

      else
      {
        v89 = v92[0];
        v90 = v110;
        sub_220DBE130();
        sub_220DBE050();
        v91 = *(v108 + 8);
        v91(v89, v90);
        v91(v82, v90);
      }

      break;
    case 8:
      sub_220DBE8B0();
      sub_220DC07C0();
      break;
    default:
      sub_220DBE930();
      break;
  }

  (*(v115 + 8))(v66, v114);
  OUTLINED_FUNCTION_29_0();
}

uint64_t DetailChartDataPointValueCalculator.accessibilityValueDescription(for:)(uint64_t a1)
{
  v3 = type metadata accessor for DetailChartDataPointValueCalculator.CacheKeys();
  v4 = OUTLINED_FUNCTION_18(v3);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v7);
  v9 = &v18 - v8;
  sub_220D08E94(a1, (&v18 - v8));
  v10 = *(v1 + 40);
  if (v10 && (v11 = *(v1 + 40), , sub_220DBF290(), , v19))
  {
    v12 = v18;
  }

  else
  {
    v12 = sub_220D095F4(a1);
    v14 = v13;
    if (v10)
    {
      v15 = OUTLINED_FUNCTION_27_0();
      sub_220D07834(v15, v16);
      v18 = v12;
      v19 = v14;

      sub_220DBF2A0();
    }
  }

  sub_220D07898(v9);
  return v12;
}

id sub_220D08E94@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v75 = a2;
  v4 = sub_220DBEF00();
  v72 = *(v4 - 8);
  v73 = v4;
  v5 = *(v72 + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v71 = &v66 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v70 = &v66 - v8;
  v9 = sub_220DBEF70();
  v67 = *(v9 - 8);
  v10 = *(v67 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v66 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_220DBEE60();
  v68 = *(v13 - 8);
  v69 = v13;
  v14 = *(v68 + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v66 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_220DBE960();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v21 = &v66 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for WeatherValueCalculationContext();
  v23 = *(a1 + *(v22 + 24));
  v24 = *(v18 + 16);
  v74 = v17;
  v24(v21, a1, v17);
  v25 = (a1 + *(v22 + 28));
  v26 = *v25;
  switch(v23)
  {
    case 1:
      v54 = v25[1];
      v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF956A8, &qword_220DC2D50);
      v56 = *(v55 + 48);
      v57 = *(v55 + 64);
      v58 = v75;
      sub_220DBE940();
      *(v58 + v56) = v54;
      v59 = v54;
      sub_220DBE870();
      (*(v18 + 8))(v21, v74);
      type metadata accessor for DetailChartDataPointValueCalculator.CacheKeys();
      return swift_storeEnumTagMultiPayload();
    case 2:
      v36 = v2[3];
      v37 = v2[4];
      __swift_project_boxed_opaque_existential_1(v2, v36);
      (*(v37 + 72))(a1, v36, v37);
      LODWORD(v36) = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF956A0, &qword_220DC2D48) + 64);
      sub_220DBEE50();
      v38 = v75;
      *v75 = v39;
      v38[1] = 0;
      sub_220DBE860();
      (*(v68 + 8))(v16, v69);
      (*(v18 + 8))(v21, v74);
      type metadata accessor for DetailChartDataPointValueCalculator.CacheKeys();
      return swift_storeEnumTagMultiPayload();
    case 3:
      v73 = *v25;
      v40 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95698, &qword_220DC2D40) + 48);
      v41 = v75;
      sub_220DBE850();
      (*(v18 + 8))(v21, v74);
      *(v41 + v40) = v73;
      type metadata accessor for DetailChartDataPointValueCalculator.CacheKeys();
      goto LABEL_10;
    case 4:
      v73 = *v25;
      v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95680, &qword_220DC2D38);
      v30 = *(v29 + 48);
      v31 = *(v29 + 64);
      v32 = v75;
      sub_220DBE890();
      v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94FA0, &unk_220DC17F0);
      __swift_storeEnumTagSinglePayload(v32, 0, 1, v33);
      v34 = v73;
      *(v32 + v30) = v73;
      v35 = v34;
      sub_220DBE850();
      (*(v18 + 8))(v21, v74);
      type metadata accessor for DetailChartDataPointValueCalculator.CacheKeys();
      return swift_storeEnumTagMultiPayload();
    case 5:
      sub_220DBE910();
      v60 = sub_220DBEF50();
      (*(v67 + 8))(v12, v9);
      (*(v18 + 8))(v21, v74);
      *v75 = v60;
      type metadata accessor for DetailChartDataPointValueCalculator.CacheKeys();
      return swift_storeEnumTagMultiPayload();
    case 6:
      v73 = v25[5];
      v61 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95678, &qword_220DC2D30) + 48);
      v62 = v75;
      sub_220DBE840();
      (*(v18 + 8))(v21, v74);
      *(v62 + v61) = v73;
      type metadata accessor for DetailChartDataPointValueCalculator.CacheKeys();
LABEL_10:
      swift_storeEnumTagMultiPayload();
      v53 = v73;
      goto LABEL_11;
    case 7:
      v42 = v25[2];
      v69 = v25[3];
      v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95660, &qword_220DC2D28);
      v44 = v43[12];
      v45 = v43[16];
      v67 = v43[20];
      v68 = v45;
      v46 = v70;
      sub_220DBE900();
      v47 = v75;
      sub_220DBEEF0();
      v48 = v73;
      v49 = *(v72 + 8);
      v49(v46, v73);
      v50 = v71;
      sub_220DBE900();
      sub_220DBEEE0();
      v49(v50, v48);
      (*(v18 + 8))(v21, v74);
      v51 = v69;
      *(v47 + v68) = v42;
      *(v47 + v67) = v51;
      type metadata accessor for DetailChartDataPointValueCalculator.CacheKeys();
      swift_storeEnumTagMultiPayload();
      v52 = v42;
      v53 = v69;
LABEL_11:

      return v53;
    case 8:
      sub_220DBE8B0();
      sub_220DC07C0();
      v65 = v64;
      (*(v18 + 8))(v21, v74);
      *v75 = v65;
      type metadata accessor for DetailChartDataPointValueCalculator.CacheKeys();
      return swift_storeEnumTagMultiPayload();
    default:
      sub_220DBE930();
      v28 = v27;
      (*(v18 + 8))(v21, v74);
      *v75 = v28;
      type metadata accessor for DetailChartDataPointValueCalculator.CacheKeys();
      return swift_storeEnumTagMultiPayload();
  }
}

uint64_t sub_220D095F4(uint64_t a1)
{
  v289 = sub_220DC0920();
  v299 = *(v289 - 8);
  v2 = *(v299 + 64);
  MEMORY[0x28223BE20](v289);
  v288 = &v259 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v291 = sub_220DC0910();
  v301 = *(v291 - 8);
  v4 = *(v301 + 64);
  MEMORY[0x28223BE20](v291);
  v290 = &v259 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95640, &qword_220DC45A0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v283 = &v259 - v8;
  v9 = sub_220DBEF00();
  v305 = *(v9 - 8);
  v306 = v9;
  v10 = *(v305 + 64);
  v11 = MEMORY[0x28223BE20](v9);
  v287 = &v259 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v278 = &v259 - v13;
  v300 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95258, &unk_220DC2CF0);
  v308 = *(v300 - 8);
  v14 = *(v308 + 64);
  v15 = MEMORY[0x28223BE20](v300);
  v285 = &v259 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v302 = &v259 - v18;
  MEMORY[0x28223BE20](v17);
  v286 = &v259 - v19;
  v279 = sub_220DC02F0();
  v277 = *(v279 - 8);
  v20 = *(v277 + 64);
  MEMORY[0x28223BE20](v279);
  v274 = &v259 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v276 = sub_220DC0960();
  v275 = *(v276 - 8);
  v22 = *(v275 + 64);
  MEMORY[0x28223BE20](v276);
  v273 = &v259 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v282 = sub_220DC0950();
  v281 = *(v282 - 8);
  v24 = *(v281 + 8);
  v25 = MEMORY[0x28223BE20](v282);
  v280 = &v259 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v272 = &v259 - v27;
  v294 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95208, &unk_220DC1E40);
  v303 = *(v294 - 1);
  v28 = *(v303 + 64);
  v29 = MEMORY[0x28223BE20](v294);
  v269 = &v259 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v293 = &v259 - v31;
  v271 = sub_220DBEF70();
  v270 = *(v271 - 8);
  v32 = *(v270 + 64);
  MEMORY[0x28223BE20](v271);
  v261 = &v259 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v304 = sub_220DC0A40();
  v298 = *(v304 - 1);
  v34 = *(v298 + 64);
  MEMORY[0x28223BE20](v304);
  v296 = &v259 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v297 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94FA0, &unk_220DC17F0);
  v309 = *(v297 - 8);
  v36 = *(v309 + 8);
  v37 = MEMORY[0x28223BE20](v297);
  v292 = &v259 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v37);
  v295 = &v259 - v39;
  v265 = sub_220DBEC20();
  v263 = *(v265 - 8);
  v40 = *(v263 + 64);
  MEMORY[0x28223BE20](v265);
  v42 = &v259 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v264 = sub_220DBEE60();
  v262 = *(v264 - 8);
  v43 = *(v262 + 64);
  MEMORY[0x28223BE20](v264);
  v45 = &v259 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v268 = sub_220DBEC50();
  v267 = *(v268 - 8);
  v46 = *(v267 + 64);
  MEMORY[0x28223BE20](v268);
  v266 = &v259 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  v314 = sub_220DC0300();
  v311 = *(v314 - 8);
  v48 = *(v311 + 64);
  MEMORY[0x28223BE20](v314);
  v310 = &v259 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95228, &unk_220DC1E60);
  v51 = *(*(v50 - 8) + 64);
  MEMORY[0x28223BE20](v50 - 8);
  *&v307 = &v259 - v52;
  v53 = sub_220DC09B0();
  v260 = *(v53 - 8);
  v54 = *(v260 + 64);
  v55 = MEMORY[0x28223BE20](v53);
  v57 = (&v259 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v55);
  v59 = &v259 - v58;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95260, &unk_220DC2D10);
  v61 = *(v60 - 8);
  v62 = *(v61 + 64);
  v63 = MEMORY[0x28223BE20](v60);
  v65 = &v259 - ((v64 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v63);
  v67 = &v259 - v66;
  v68 = sub_220DBE960();
  v69 = *(*(v68 - 8) + 64);
  MEMORY[0x28223BE20](v68);
  v312 = v71;
  v313 = v72;
  v73 = *(v72 + 16);
  v315 = &v259 - ((v70 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73();
  v74 = type metadata accessor for WeatherValueCalculationContext();
  v75 = (a1 + *(v74 + 28));
  v76 = *v75;
  v77 = v75[3];
  switch(*(a1 + *(v74 + 24)))
  {
    case 1:
      v169 = v75[1];
      sub_220DBE940();
      sub_220DBE130();
      v170 = *(v61 + 8);
      v308 = v61 + 8;
      v309 = v170;
      v170(v65, v60);
      v171 = sub_220DBE5E0();
      v172 = v307;
      __swift_storeEnumTagSinglePayload(v307, 1, 1, v171);
      sub_220DC0840();
      sub_220DC02A0();

      sub_220CDA548(v172, &qword_27CF95228, &unk_220DC1E60);
      sub_220DC09A0();
      *&v307 = *(v260 + 8);
      (v307)(v59, v53);
      v173 = v310;
      v174 = v311;
      (*(v311 + 104))(v310, *MEMORY[0x277D7B408], v314);
      sub_220DBF100();
      sub_220DBF0D0();
      sub_220CE6B84(&qword_27CF95760, MEMORY[0x277D7B4E8]);
      v175 = sub_220DBE0B0();
      v177 = v176;

      (*(v174 + 8))(v173, v314);
      (v307)(v57, v53);
      v317 = v175;
      v318 = v177;
      MEMORY[0x223D982B0](8236, 0xE200000000000000);
      v178 = v266;
      v179 = v315;
      sub_220DBE870();
      v180 = sub_220DBEC40();
      v182 = v181;
      (*(v267 + 8))(v178, v268);
      MEMORY[0x223D982B0](v180, v182);

      v119 = v317;
      v309(v67, v60);
      (*(v313 + 8))(v179, v312);
      return v119;
    case 2:
      v120 = v284[3];
      v121 = v284[4];
      __swift_project_boxed_opaque_existential_1(v284, v120);
      (*(v121 + 72))(a1, v120, v121);
      v317 = sub_220DBEE30();
      v318 = v122;
      MEMORY[0x223D982B0](8236, 0xE200000000000000);
      v123 = v315;
      sub_220DBE860();
      v124 = sub_220DBEC10();
      v126 = v125;
      (*(v263 + 8))(v42, v265);
      MEMORY[0x223D982B0](v124, v126);

      v119 = v317;
      (*(v262 + 8))(v45, v264);
      goto LABEL_18;
    case 3:
      v127 = v292;
      sub_220DBE850();
      v128 = v295;
      v129 = v297;
      sub_220DBE130();
      v309 = *(v309 + 1);
      v309(v127, v129);
      v130 = v296;
      sub_220DC02B0();
      v132 = v310;
      v131 = v311;
      v133 = v314;
      (*(v311 + 104))(v310, *MEMORY[0x277D7B408], v314);
      sub_220DBF100();
      sub_220DBF0D0();
      sub_220CE6B84(&qword_280FA6610, MEMORY[0x277D7B508]);
      v134 = v304;
      v308 = sub_220DBE0B0();
      *&v307 = v135;

      (*(v131 + 8))(v132, v133);
      (*(v298 + 8))(v130, v134);
      v309(v128, v129);
      v123 = v315;
      v136 = sub_220DBE8E0();
      v138 = v137;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF952A8, &unk_220DC2E90);
      v139 = swift_allocObject();
      *(v139 + 16) = xmmword_220DC17C0;
      v140 = v307;
      *(v139 + 32) = v308;
      *(v139 + 40) = v140;
      *(v139 + 48) = v136;
      *(v139 + 56) = v138;
      v317 = v139;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95750, &qword_220DC5B30);
      sub_220CE161C(&qword_27CF95758, &qword_27CF95750, &qword_220DC5B30);
      v119 = sub_220DC0570();

      goto LABEL_18;
    case 4:
      goto LABEL_8;
    case 5:
      v183 = v261;
      v123 = v315;
      sub_220DBE910();
      v184 = sub_220DBEF50();
      v185 = *(v270 + 8);
      v186 = v271;
      v185(v183, v271);
      v316 = v184;
      v317 = sub_220DC0C70();
      v318 = v187;
      MEMORY[0x223D982B0](8236, 0xE200000000000000);
      sub_220DBE910();
      sub_220DBEF60();
      v185(v183, v186);
      v188 = sub_220DBEF30();
      MEMORY[0x223D982B0](v188);

      v119 = v317;
LABEL_18:
      (*(v313 + 8))(v123, v312);
      return v119;
    case 6:
      v189 = v75[5];
      v190 = v269;
      sub_220DBE840();
      v191 = v294;
      sub_220DBE130();
      v192 = *(v303 + 8);
      v303 += 8;
      v309 = v192;
      v192(v190, v191);
      v193 = v275;
      v194 = v273;
      v195 = v276;
      (*(v275 + 104))(v273, *MEMORY[0x277D7B4B0], v276);
      v196 = sub_220DBE5E0();
      v197 = v307;
      __swift_storeEnumTagSinglePayload(v307, 1, 1, v196);
      sub_220DC0810();
      v198 = v277;
      v199 = v274;
      v200 = v279;
      (*(v277 + 104))(v274, *MEMORY[0x277D7B3F8], v279);
      v201 = v272;
      sub_220DC0280();

      (*(v198 + 8))(v199, v200);
      sub_220CDA548(v197, &qword_27CF95228, &unk_220DC1E60);
      (*(v193 + 8))(v194, v195);
      v202 = v280;
      sub_220DC0940();
      v308 = *(v281 + 1);
      v203 = v282;
      (v308)(v201, v282);
      v205 = v310;
      v204 = v311;
      (*(v311 + 104))(v310, *MEMORY[0x277D7B408], v314);
      sub_220DBF100();
      sub_220DBF0D0();
      sub_220CE6B84(&qword_280FA6620, MEMORY[0x277D7B4A8]);
      v206 = v294;
      v207 = v293;
      v119 = sub_220DBE0B0();

      (*(v204 + 8))(v205, v314);
      (v308)(v202, v203);
      v309(v207, v206);
      goto LABEL_28;
    case 7:
      v309 = v75[2];
      v303 = v77;
      v141 = v278;
      sub_220DBE900();
      v142 = v283;
      sub_220DBEEE0();
      v143 = v305 + 8;
      v57 = *(v305 + 8);
      v57(v141, v306);
      v78 = v300;
      EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v142, 1, v300);
      v304 = v57;
      v305 = v143;
      if (EnumTagSinglePayload != 1)
      {
        v210 = v308;
        (*(v308 + 32))(v286, v142, v78);
        if (qword_280FA6600 != -1)
        {
          swift_once();
        }

        v298 = sub_220DBE240();
        v297 = v211;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94FB8, &unk_220DC1E30);
        v212 = swift_allocObject();
        *(v212 + 16) = xmmword_220DC1CC0;
        v213 = v287;
        sub_220DBE900();
        v214 = v285;
        sub_220DBEEF0();
        v57(v213, v306);
        sub_220DBE130();
        v215 = *(v210 + 8);
        v308 = v210 + 8;
        v309 = v215;
        v215(v214, v78);
        v216 = *MEMORY[0x277D7B490];
        v217 = v299;
        v218 = *(v299 + 104);
        v295 = (v299 + 104);
        v296 = v218;
        v219 = v288;
        v220 = v289;
        (v218)(v288, v216, v289);
        v294 = sub_220DBE5E0();
        v221 = v307;
        __swift_storeEnumTagSinglePayload(v307, 1, 1, v294);
        sub_220DC07E0();
        v222 = v290;
        sub_220DC0270();

        sub_220CDA548(v221, &qword_27CF95228, &unk_220DC1E60);
        v223 = *(v217 + 8);
        v299 = v217 + 8;
        v293 = v223;
        (v223)(v219, v220);
        LODWORD(v292) = *MEMORY[0x277D7B408];
        v224 = v311;
        v225 = *(v311 + 104);
        v284 = (v311 + 104);
        v285 = v225;
        v226 = v310;
        v227 = v314;
        (v225)(v310);
        v283 = sub_220DBF100();
        sub_220DBF0D0();
        v282 = sub_220CE6B84(&qword_27CF95748, MEMORY[0x277D7B488]);
        v228 = v226;
        v229 = v300;
        v230 = v291;
        v231 = v302;
        v232 = sub_220DBE0B0();
        v278 = v233;

        v234 = *(v224 + 8);
        v311 = v224 + 8;
        v281 = v234;
        v234(v228, v227);
        v235 = *(v301 + 8);
        v301 += 8;
        v280 = v235;
        v236 = v222;
        (v235)(v222, v230);
        v237 = v229;
        v309(v231, v229);
        v238 = MEMORY[0x277D837D0];
        *(v212 + 56) = MEMORY[0x277D837D0];
        v239 = v238;
        v240 = sub_220CEFDB0();
        *(v212 + 64) = v240;
        v241 = v240;
        v279 = v240;
        v242 = v278;
        *(v212 + 32) = v232;
        *(v212 + 40) = v242;
        v243 = v287;
        sub_220DBE900();
        sub_220DBEED0();
        (v304)(v243, v306);
        v244 = sub_220DBEEC0();
        *(v212 + 96) = v239;
        *(v212 + 104) = v241;
        *(v212 + 72) = v244;
        *(v212 + 80) = v245;
        sub_220DBE130();
        v246 = v288;
        v247 = v289;
        (v296)(v288, *MEMORY[0x277D7B498], v289);
        v248 = v307;
        __swift_storeEnumTagSinglePayload(v307, 1, 1, v294);
        sub_220DC07E0();
        sub_220DC0270();

        sub_220CDA548(v248, &qword_27CF95228, &unk_220DC1E60);
        (v293)(v246, v247);
        v249 = v314;
        (v285)(v228, v292, v314);
        sub_220DBF0D0();
        v250 = v228;
        v251 = v291;
        v252 = v302;
        v253 = sub_220DBE0B0();
        v255 = v254;

        v281(v250, v249);
        (v280)(v236, v251);
        v256 = v309;
        v309(v252, v237);
        v257 = v279;
        *(v212 + 136) = MEMORY[0x277D837D0];
        *(v212 + 144) = v257;
        *(v212 + 112) = v253;
        *(v212 + 120) = v255;
        v119 = sub_220DC05F0();

        v256(v286, v237);
LABEL_28:
        (*(v313 + 8))(v315, v312);
        return v119;
      }

      sub_220CDA548(v142, &qword_27CF95640, &qword_220DC45A0);
      v61 = v308;
      if (qword_280FA6600 != -1)
      {
        goto LABEL_36;
      }

      goto LABEL_15;
    case 8:
      if (qword_280FA6600 == -1)
      {
        goto LABEL_21;
      }

      goto LABEL_31;
    default:
      if (qword_280FA6600 != -1)
      {
        swift_once();
      }

      v78 = sub_220DBE240();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94FB8, &unk_220DC1E30);
      v79 = swift_allocObject();
      *(v79 + 16) = xmmword_220DC17A0;
      v80 = v315;
      sub_220DBE930();
      v82 = v81 * 100.0;
      if ((*&v82 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
      {
        if (v82 > -9.22337204e18)
        {
          if (v82 >= 9.22337204e18)
          {
            __break(1u);
LABEL_8:
            v83 = v76;
            if (qword_280FA6600 != -1)
            {
              swift_once();
            }

            v84 = sub_220DBE240();
            v305 = v85;
            v306 = v84;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94FB8, &unk_220DC1E30);
            v86 = swift_allocObject();
            v307 = xmmword_220DC17C0;
            *(v86 + 16) = xmmword_220DC17C0;
            v87 = v292;
            sub_220DBE890();
            v88 = v295;
            v259 = v83;
            v89 = v297;
            sub_220DBE130();
            v308 = *(v309 + 1);
            v309 = (v309 + 8);
            (v308)(v87, v89);
            v90 = v296;
            sub_220DC02B0();
            LODWORD(v301) = *MEMORY[0x277D7B408];
            v91 = v310;
            v92 = v311;
            v93 = *(v311 + 104);
            v302 = (v311 + 104);
            v303 = v93;
            v93(v310);
            v300 = sub_220DBF100();
            sub_220DBF0D0();
            v299 = sub_220CE6B84(&qword_280FA6610, MEMORY[0x277D7B508]);
            v94 = v304;
            v95 = sub_220DBE0B0();
            v291 = v96;

            v97 = *(v92 + 8);
            v311 = v92 + 8;
            v294 = v97;
            (v97)(v91, v314);
            v298 = *(v298 + 8);
            (v298)(v90, v94);
            v98 = v88;
            v99 = v308;
            (v308)(v88, v89);
            *(v86 + 56) = MEMORY[0x277D837D0];
            v293 = sub_220CEFDB0();
            *(v86 + 64) = v293;
            v100 = v291;
            *(v86 + 32) = v95;
            *(v86 + 40) = v100;
            sub_220DBE850();
            sub_220DBE130();
            v99(v87, v89);
            sub_220DC02B0();
            v101 = v91;
            v102 = v91;
            v103 = v314;
            (v303)(v102, v301, v314);
            sub_220DBF0D0();
            v104 = v90;
            v105 = v101;
            v106 = v304;
            v107 = sub_220DBE0B0();
            v303 = v108;

            (v294)(v105, v103);
            (v298)(v104, v106);
            (v308)(v98, v89);
            v109 = v293;
            *(v86 + 96) = MEMORY[0x277D837D0];
            *(v86 + 104) = v109;
            v110 = v303;
            *(v86 + 72) = v107;
            *(v86 + 80) = v110;
            v111 = sub_220DC05F0();
            v113 = v112;

            v114 = v315;
            v115 = sub_220DBE8E0();
            v117 = v116;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF952A8, &unk_220DC2E90);
            v118 = swift_allocObject();
            *(v118 + 16) = v307;
            *(v118 + 32) = v111;
            *(v118 + 40) = v113;
            *(v118 + 48) = v115;
            *(v118 + 56) = v117;
            v317 = v118;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95750, &qword_220DC5B30);
            sub_220CE161C(&qword_27CF95758, &qword_27CF95750, &qword_220DC5B30);
            v119 = sub_220DC0570();

            (*(v313 + 8))(v114, v312);
            return v119;
          }

LABEL_24:
          v209 = MEMORY[0x277D83C10];
          *(v79 + 56) = MEMORY[0x277D83B88];
          *(v79 + 64) = v209;
          *(v79 + 32) = v82;
          v119 = sub_220DC05F0();

          (*(v313 + 8))(v80, v312);
          return v119;
        }

        goto LABEL_33;
      }

      __break(1u);
LABEL_31:
      swift_once();
LABEL_21:
      v78 = sub_220DBE240();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94FB8, &unk_220DC1E30);
      v79 = swift_allocObject();
      *(v79 + 16) = xmmword_220DC17A0;
      v80 = v315;
      sub_220DBE8B0();
      sub_220DC07C0();
      v82 = v208 * 100.0;
      if ((*&v82 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
        __break(1u);
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      if (v82 <= -9.22337204e18)
      {
LABEL_34:
        __break(1u);
        goto LABEL_35;
      }

      if (v82 < 9.22337204e18)
      {
        goto LABEL_24;
      }

LABEL_35:
      __break(1u);
LABEL_36:
      swift_once();
LABEL_15:
      v303 = sub_220DBE240();
      v298 = v145;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94FB8, &unk_220DC1E30);
      v146 = swift_allocObject();
      *(v146 + 16) = xmmword_220DC17C0;
      v147 = v287;
      sub_220DBE900();
      v148 = v285;
      sub_220DBEEF0();
      v57(v147, v306);
      sub_220DBE130();
      v149 = *(v61 + 8);
      v308 = v61 + 8;
      v309 = v149;
      v149(v148, v78);
      v150 = v299;
      v151 = v288;
      v152 = v289;
      (*(v299 + 104))(v288, *MEMORY[0x277D7B490], v289);
      v153 = sub_220DBE5E0();
      v154 = v307;
      __swift_storeEnumTagSinglePayload(v307, 1, 1, v153);
      sub_220DC07E0();
      sub_220DC0270();

      sub_220CDA548(v154, &qword_27CF95228, &unk_220DC1E60);
      (*(v150 + 8))(v151, v152);
      v155 = v310;
      v156 = v311;
      v157 = v314;
      (*(v311 + 104))(v310, *MEMORY[0x277D7B408], v314);
      sub_220DBF100();
      sub_220DBF0D0();
      sub_220CE6B84(&qword_27CF95748, MEMORY[0x277D7B488]);
      v158 = v290;
      v159 = v300;
      v160 = v291;
      v161 = v302;
      *&v307 = sub_220DBE0B0();
      v299 = v162;

      (*(v156 + 8))(v155, v157);
      (*(v301 + 8))(v158, v160);
      v309(v161, v159);
      v163 = MEMORY[0x277D837D0];
      *(v146 + 56) = MEMORY[0x277D837D0];
      v164 = sub_220CEFDB0();
      *(v146 + 64) = v164;
      v165 = v299;
      *(v146 + 32) = v307;
      *(v146 + 40) = v165;
      v166 = v315;
      sub_220DBE900();
      sub_220DBEED0();
      (v304)(v147, v306);
      v167 = sub_220DBEEC0();
      *(v146 + 96) = v163;
      *(v146 + 104) = v164;
      *(v146 + 72) = v167;
      *(v146 + 80) = v168;
      v119 = sub_220DC05F0();

      (*(v313 + 8))(v166, v312);
      return v119;
  }
}

uint64_t sub_220D0BCA0(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_220D0BCE0(uint64_t result, int a2, int a3)
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

uint64_t sub_220D0BD3C()
{
  sub_220D0BE64();
  v1 = v0;
  if (v2 <= 0x3F)
  {
    v3 = sub_220D0BEF4();
    if (v4 > 0x3F)
    {
      return v3;
    }

    else
    {
      sub_220D0BF1C();
      if (v6 > 0x3F)
      {
        return v5;
      }

      sub_220D0BFC4();
      if (v7 > 0x3F)
      {
        return v5;
      }

      else
      {
        sub_220D0C04C();
        v1 = v8;
        if (v9 <= 0x3F)
        {
          v1 = sub_220D0C100();
          if (v10 <= 0x3F)
          {
            sub_220D0C128();
            v1 = v11;
            if (v12 <= 0x3F)
            {
              sub_220D0C1B8();
              v1 = v13;
              if (v14 <= 0x3F)
              {
                swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
                return 0;
              }
            }
          }
        }
      }
    }
  }

  return v1;
}

void sub_220D0BE64()
{
  if (!qword_27CF95700)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF94FA0, &unk_220DC17F0);
    sub_220CD8184(255, &qword_27CF95688, 0x277CCAE48);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27CF95700);
    }
  }
}

uint64_t sub_220D0BEF4()
{
  result = qword_27CF95708;
  if (!qword_27CF95708)
  {
    result = MEMORY[0x277D839F8];
    atomic_store(MEMORY[0x277D839F8], &qword_27CF95708);
  }

  return result;
}

void sub_220D0BF1C()
{
  if (!qword_27CF95710)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF95260, &unk_220DC2D10);
    sub_220CD8184(255, &qword_27CF956B0, 0x277CCAE38);
    sub_220DBEC50();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_27CF95710);
    }
  }
}

void sub_220D0BFC4()
{
  if (!qword_27CF95718)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF95720, &qword_220DC2E60);
    sub_220DBEC20();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_27CF95718);
    }
  }
}

void sub_220D0C04C()
{
  if (!qword_27CF95728)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF95648, &qword_220DC2D00);
    sub_220CD8184(255, &qword_27CF95688, 0x277CCAE48);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF94FA0, &unk_220DC17F0);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_27CF95728);
    }
  }
}

uint64_t sub_220D0C100()
{
  result = qword_27CF95730;
  if (!qword_27CF95730)
  {
    result = MEMORY[0x277D83B88];
    atomic_store(MEMORY[0x277D83B88], &qword_27CF95730);
  }

  return result;
}

void sub_220D0C128()
{
  if (!qword_27CF95738)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF95208, &unk_220DC1E40);
    sub_220CD8184(255, &qword_280FA6618, 0x277CCAE20);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27CF95738);
    }
  }
}

void sub_220D0C1B8()
{
  if (!qword_27CF95740)
  {
    MEMORY[0x28223BE20](0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF95258, &unk_220DC2CF0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF95640, &qword_220DC45A0);
    sub_220CD8184(255, &qword_27CF95668, 0x277CCAE40);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata, &qword_27CF95740);
    }
  }
}

uint64_t sub_220D0C2E8(uint64_t a1)
{
  v2 = sub_220DBE560();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v22 - v8;
  v10 = *(a1 + 16);
  v11 = sub_220CD46CC(&qword_280FA77A0, MEMORY[0x277CC9578]);
  v12 = MEMORY[0x223D98400](v10, v2, v11);
  v23 = v12;
  v13 = *(a1 + 16);
  if (v13)
  {
    v16 = *(v3 + 16);
    v14 = v3 + 16;
    v15 = v16;
    v17 = (*(v14 + 64) + 32) & ~*(v14 + 64);
    v22 = a1;
    v18 = a1 + v17;
    v19 = *(v14 + 56);
    do
    {
      v15(v7, v18, v2);
      sub_220D12390(v9, v7);
      (*(v14 - 8))(v9, v2);
      v18 += v19;
      --v13;
    }

    while (v13);

    return v23;
  }

  else
  {
    v20 = v12;
  }

  return v20;
}

uint64_t sub_220D0C4A8()
{
  v1 = *v0;
  v2 = v0[1];
  sub_220DC0660();
  v3 = *(type metadata accessor for IsSameDayCache.StartOfDayKey() + 20);
  sub_220DBE560();
  sub_220CD46CC(&qword_280FA77A0, MEMORY[0x277CC9578]);
  return sub_220DC0560();
}

uint64_t sub_220D0C538()
{
  sub_220DC0CE0();
  v1 = *v0;
  v2 = v0[1];
  sub_220DC0660();
  v3 = *(type metadata accessor for IsSameDayCache.StartOfDayKey() + 20);
  sub_220DBE560();
  sub_220CD46CC(&qword_280FA77A0, MEMORY[0x277CC9578]);
  sub_220DC0560();
  return sub_220DC0D20();
}

uint64_t IsSameDayCache.__allocating_init()()
{
  v0 = swift_allocObject();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF955E8, &unk_220DC2EA0);
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  *(v0 + 16) = sub_220DBF280();
  return v0;
}

uint64_t IsSameDayCache.preloadCache(_:calendar:)()
{

  v1 = sub_220D0C2E8(v0);
  v2 = sub_220D0C6CC(v1);
  sub_220D0C794();
  v3 = *(v2 + 16);
  sub_220DC0A50();
}

size_t sub_220D0C6CC(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    goto LABEL_4;
  }

  v3 = sub_220D56C70(*(a1 + 16), 0);
  v4 = *(sub_220DBE560() - 8);
  v5 = sub_220D0CB5C(&v7, (v3 + ((*(v4 + 80) + 32) & ~*(v4 + 80))), v2, a1);
  sub_220D0CEDC();
  if (v5 != v2)
  {
    __break(1u);
LABEL_4:

    return MEMORY[0x277D84F90];
  }

  return v3;
}

unint64_t sub_220D0C794()
{
  result = qword_27CF95778;
  if (!qword_27CF95778)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27CF95778);
  }

  return result;
}

void *sub_220D0C7D8(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    goto LABEL_4;
  }

  v3 = sub_220D56C98(*(a1 + 16), 0);
  v4 = sub_220D0CDF4(&v6, v3 + 4, v2, a1);
  sub_220D0CEDC();
  if (v4 != v2)
  {
    __break(1u);
LABEL_4:

    return MEMORY[0x277D84F90];
  }

  return v3;
}

uint64_t sub_220D0C868(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_220DBE560();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  result = MEMORY[0x28223BE20](v7);
  v12 = &v13 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(a3 + 16) > a1)
  {
    IsSameDayCache.startOfDay(_:calendar:)(a3 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * a1, a4, v12);
    return (*(v8 + 8))(v12, v7);
  }

  __break(1u);
  return result;
}

uint64_t IsSameDayCache.isSameDay(_:_:calendar:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_220DBE560();
  v7 = OUTLINED_FUNCTION_0(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_4();
  v14 = v12 - v13;
  MEMORY[0x28223BE20](v15);
  v17 = &v20 - v16;
  IsSameDayCache.startOfDay(_:calendar:)(a1, a3, &v20 - v16);
  IsSameDayCache.startOfDay(_:calendar:)(a2, a3, v14);
  LOBYTE(a3) = sub_220DBE460();
  v18 = *(v9 + 8);
  v18(v14, v6);
  v18(v17, v6);
  return a3 & 1;
}

uint64_t IsSameDayCache.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t IsSameDayCache.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

unint64_t sub_220D0CB5C(void *a1, char *a2, unint64_t a3, uint64_t a4)
{
  v8 = sub_220DBE560();
  v9 = *(v8 - 8);
  v42 = v8;
  v43 = v9;
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v41 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v40 = &v33 - v13;
  v15 = a4 + 56;
  v14 = *(a4 + 56);
  v39 = -1 << *(a4 + 32);
  if (-v39 < 64)
  {
    v16 = ~(-1 << -v39);
  }

  else
  {
    v16 = -1;
  }

  v17 = v16 & v14;
  if (!a2)
  {
    v20 = 0;
    result = 0;
LABEL_22:
    v32 = ~v39;
    *a1 = a4;
    a1[1] = v15;
    a1[2] = v32;
    a1[3] = v20;
    a1[4] = v17;
    return result;
  }

  result = a3;
  if (!a3)
  {
    v20 = 0;
    goto LABEL_22;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v34 = a1;
    v35 = a4 + 56;
    v19 = 0;
    v20 = 0;
    v21 = (63 - v39) >> 6;
    v36 = v43 + 32;
    v37 = v43 + 16;
    v38 = result;
    while (v19 < result)
    {
      if (__OFADD__(v19, 1))
      {
        goto LABEL_26;
      }

      if (!v17)
      {
        v15 = v35;
        while (1)
        {
          v22 = v20 + 1;
          if (__OFADD__(v20, 1))
          {
            break;
          }

          if (v22 >= v21)
          {
            v17 = 0;
            result = v19;
            a1 = v34;
            goto LABEL_22;
          }

          v17 = *(v35 + 8 * v22);
          ++v20;
          if (v17)
          {
            v44 = v19 + 1;
            goto LABEL_17;
          }
        }

        __break(1u);
        break;
      }

      v44 = v19 + 1;
      v22 = v20;
LABEL_17:
      v23 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
      v24 = a4;
      v25 = *(a4 + 48);
      v27 = v42;
      v26 = v43;
      v28 = *(v43 + 72);
      v29 = v41;
      (*(v43 + 16))(v41, v25 + v28 * (v23 | (v22 << 6)), v42);
      v30 = *(v26 + 32);
      v31 = v40;
      v30(v40, v29, v27);
      v30(a2, v31, v27);
      result = v38;
      v19 = v44;
      if (v44 == v38)
      {
        v20 = v22;
        a1 = v34;
        v15 = v35;
        a4 = v24;
        goto LABEL_22;
      }

      a2 += v28;
      v20 = v22;
      a4 = v24;
    }

    __break(1u);
LABEL_26:
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_220D0CDF4(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 + 56;
  v5 = -1;
  v6 = -1 << *(a4 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(a4 + 56);
  if (!a2)
  {
    v9 = 0;
    a3 = 0;
LABEL_18:
    *result = a4;
    result[1] = v4;
    result[2] = ~v6;
    result[3] = v9;
    result[4] = v7;
    return a3;
  }

  if (!a3)
  {
    v9 = 0;
    goto LABEL_18;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v9 = 0;
    while (1)
    {
      v10 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      if (!v7)
      {
        while (1)
        {
          v11 = v9 + 1;
          if (__OFADD__(v9, 1))
          {
            break;
          }

          if (v11 >= ((63 - v6) >> 6))
          {
            v7 = 0;
            a3 = v8;
            goto LABEL_18;
          }

          v7 = *(v4 + 8 * v11);
          ++v9;
          if (v7)
          {
            v9 = v11;
            goto LABEL_13;
          }
        }

        __break(1u);
        break;
      }

LABEL_13:
      v12 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      *a2++ = *(*(a4 + 48) + ((v9 << 9) | (8 * v12)));
      v8 = v10;
      if (v10 == a3)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_220D0CF44(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 80))
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

uint64_t sub_220D0CF84(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

uint64_t sub_220D0CFE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v11 = type metadata accessor for PrecipitationPlatterFutureDaySentence();
  v12 = OUTLINED_FUNCTION_18(v11);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_1();
  v17 = v16 - v15;
  v18 = type metadata accessor for PrecipitationPlatterYesterdaySentence();
  v19 = OUTLINED_FUNCTION_18(v18);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_1();
  v24 = v23 - v22;
  v25 = type metadata accessor for PrecipitationPlatterTodayThirdSentence();
  v26 = OUTLINED_FUNCTION_6(v25);
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_1();
  v72 = v30 - v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95790, &unk_220DC3030);
  v32 = OUTLINED_FUNCTION_18(v31);
  v34 = *(v33 + 64);
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_16_5();
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_18_3();
  v36 = type metadata accessor for PrecipitationPlatterTodaySecondSentence();
  v37 = OUTLINED_FUNCTION_18(v36);
  v39 = *(v38 + 64);
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_1();
  v42 = v41 - v40;
  Sentence = type metadata accessor for PrecipitationPlatterTodayFirstSentence();
  v44 = OUTLINED_FUNCTION_18(Sentence);
  v46 = *(v45 + 64);
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_1();
  v49 = v48 - v47;
  if (sub_220DBE610())
  {
    sub_220D0DEB0(a1, v49);
    sub_220D0D9D8(a2, v42);
    sub_220D0E5AC(a1, a2, a3, a4, a7, v9);
    sub_220D0FE9C(v9, v8);
    if (__swift_getEnumTagSinglePayload(v8, 1, v25) == 1)
    {
      sub_220D0FF0C(v8);
      if (qword_280FA6600 != -1)
      {
        OUTLINED_FUNCTION_10();
      }

      OUTLINED_FUNCTION_27();
      OUTLINED_FUNCTION_6_0();
      sub_220DBE240();
      OUTLINED_FUNCTION_13_4();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94FB8, &unk_220DC1E30);
      v50 = swift_allocObject();
      *(v50 + 16) = xmmword_220DC17C0;
      sub_220D18D04();
      v51 = MEMORY[0x277D837D0];
      *(v50 + 56) = MEMORY[0x277D837D0];
      v52 = sub_220CEFDB0();
      OUTLINED_FUNCTION_17_5(v52);
      v53 = sub_220D16E08();
      *(v50 + 96) = v51;
      *(v50 + 104) = v7;
      *(v50 + 72) = v53;
      *(v50 + 80) = v54;
      OUTLINED_FUNCTION_14_6();
      OUTLINED_FUNCTION_21();

      sub_220D0FF0C(v9);
      OUTLINED_FUNCTION_0_5();
      sub_220D1002C(v42, v55);
      OUTLINED_FUNCTION_2_6();
      v57 = v49;
    }

    else
    {
      OUTLINED_FUNCTION_9_5();
      sub_220D0FFD0(v8, v72, v58);
      if (qword_280FA6600 != -1)
      {
        OUTLINED_FUNCTION_10();
      }

      OUTLINED_FUNCTION_27();
      OUTLINED_FUNCTION_6_0();
      sub_220DBE240();
      OUTLINED_FUNCTION_13_4();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94FB8, &unk_220DC1E30);
      v59 = swift_allocObject();
      *(v59 + 16) = xmmword_220DC1CC0;
      v60 = sub_220D18D04();
      v62 = v61;
      v63 = MEMORY[0x277D837D0];
      *(v59 + 56) = MEMORY[0x277D837D0];
      v64 = sub_220CEFDB0();
      *(v59 + 64) = v64;
      *(v59 + 32) = v60;
      *(v59 + 40) = v62;
      v65 = sub_220D16E08();
      *(v59 + 96) = v63;
      *(v59 + 104) = v64;
      *(v59 + 72) = v65;
      *(v59 + 80) = v66;
      v67 = sub_220D2C9F4();
      *(v59 + 136) = v63;
      *(v59 + 144) = v64;
      *(v59 + 112) = v67;
      *(v59 + 120) = v68;
      OUTLINED_FUNCTION_14_6();
      OUTLINED_FUNCTION_21();

      OUTLINED_FUNCTION_10_5();
      sub_220D1002C(v72, v69);
      sub_220D0FF0C(v9);
      OUTLINED_FUNCTION_0_5();
      sub_220D1002C(v42, v70);
      OUTLINED_FUNCTION_2_6();
      v57 = v49;
    }
  }

  else if (sub_220DBE640())
  {
    sub_220D0F384(v7, a2, v24);
    sub_220D2007C();
    v57 = OUTLINED_FUNCTION_7_4();
  }

  else
  {
    sub_220D0F80C(v7, a2, a5, a7, v17);
    sub_220D21F78();
    OUTLINED_FUNCTION_8_6();
    v57 = v17;
  }

  sub_220D1002C(v57, v56);
  return OUTLINED_FUNCTION_20();
}

uint64_t sub_220D0D4A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v63 = a4;
  v64 = a5;
  v12 = type metadata accessor for PrecipitationPlatterTodayThirdSentence();
  v13 = OUTLINED_FUNCTION_6(v12);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_1();
  v62 = v17 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95790, &unk_220DC3030);
  v19 = OUTLINED_FUNCTION_18(v18);
  v21 = *(v20 + 64);
  v22 = MEMORY[0x28223BE20](v19);
  v24 = &v61 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v26 = &v61 - v25;
  v27 = type metadata accessor for PrecipitationPlatterTodaySecondSentence();
  v28 = OUTLINED_FUNCTION_18(v27);
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_16_5();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_18_3();
  Sentence = type metadata accessor for PrecipitationPlatterTodayFirstSentence();
  v33 = OUTLINED_FUNCTION_18(Sentence);
  v35 = *(v34 + 64);
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_1();
  v38 = v37 - v36;
  if (a6)
  {
    sub_220D0D9D8(a2, v6);
    sub_220D16E08();
    OUTLINED_FUNCTION_21();
    OUTLINED_FUNCTION_0_5();
    v40 = v6;
  }

  else
  {
    v41 = v38;
    sub_220D0DEB0(a1, v38);
    sub_220D0D9D8(a2, v7);
    sub_220D0E5AC(a1, a2, a3, v63, v64, v26);
    sub_220D0FE9C(v26, v24);
    if (__swift_getEnumTagSinglePayload(v24, 1, v12) == 1)
    {
      sub_220D0FF0C(v24);
      if (qword_280FA6600 != -1)
      {
        OUTLINED_FUNCTION_10();
      }

      OUTLINED_FUNCTION_27();
      OUTLINED_FUNCTION_6_0();
      sub_220DBE240();
      OUTLINED_FUNCTION_13_4();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94FB8, &unk_220DC1E30);
      v42 = swift_allocObject();
      *(v42 + 16) = xmmword_220DC17C0;
      v43 = v41;
      sub_220D18D04();
      v44 = MEMORY[0x277D837D0];
      *(v42 + 56) = MEMORY[0x277D837D0];
      v45 = sub_220CEFDB0();
      OUTLINED_FUNCTION_17_5(v45);
      v46 = sub_220D16E08();
      *(v42 + 96) = v44;
      *(v42 + 104) = v12;
      *(v42 + 72) = v46;
      *(v42 + 80) = v47;
      OUTLINED_FUNCTION_14_6();
      OUTLINED_FUNCTION_21();

      v48 = v26;
    }

    else
    {
      v64 = v26;
      OUTLINED_FUNCTION_9_5();
      v49 = v62;
      sub_220D0FFD0(v24, v62, v50);
      if (qword_280FA6600 != -1)
      {
        OUTLINED_FUNCTION_10();
      }

      OUTLINED_FUNCTION_27();
      OUTLINED_FUNCTION_6_0();
      sub_220DBE240();
      OUTLINED_FUNCTION_13_4();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94FB8, &unk_220DC1E30);
      v51 = swift_allocObject();
      *(v51 + 16) = xmmword_220DC1CC0;
      v43 = v41;
      sub_220D18D04();
      v52 = MEMORY[0x277D837D0];
      *(v51 + 56) = MEMORY[0x277D837D0];
      v53 = sub_220CEFDB0();
      OUTLINED_FUNCTION_17_5(v53);
      v54 = sub_220D16E08();
      *(v51 + 96) = v52;
      *(v51 + 104) = v12;
      *(v51 + 72) = v54;
      *(v51 + 80) = v55;
      v56 = sub_220D2C9F4();
      *(v51 + 136) = v52;
      *(v51 + 144) = v12;
      *(v51 + 112) = v56;
      *(v51 + 120) = v57;
      OUTLINED_FUNCTION_14_6();
      OUTLINED_FUNCTION_21();

      OUTLINED_FUNCTION_10_5();
      sub_220D1002C(v49, v58);
      v48 = v64;
    }

    sub_220D0FF0C(v48);
    OUTLINED_FUNCTION_0_5();
    sub_220D1002C(v7, v59);
    OUTLINED_FUNCTION_2_6();
    v40 = v43;
  }

  sub_220D1002C(v40, v39);
  return OUTLINED_FUNCTION_20();
}

uint64_t sub_220D0D8AC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PrecipitationPlatterYesterdaySentence();
  v5 = OUTLINED_FUNCTION_18(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_1();
  sub_220D0F384(v2, a2, v9 - v8);
  sub_220D2007C();
  v10 = OUTLINED_FUNCTION_7_4();
  sub_220D1002C(v10, v11);
  return OUTLINED_FUNCTION_20();
}

uint64_t sub_220D0D934(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for PrecipitationPlatterFutureDaySentence();
  v8 = OUTLINED_FUNCTION_18(v7);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_1();
  v13 = v12 - v11;
  sub_220D0F80C(v3, a2, a1, a3, v12 - v11);
  sub_220D21F78();
  OUTLINED_FUNCTION_8_6();
  sub_220D1002C(v13, v14);
  return OUTLINED_FUNCTION_20();
}

uint64_t sub_220D0D9D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v51 = a2;
  v50 = sub_220DBEC90();
  v46 = *(v50 - 8);
  v4 = *(v46 + 64);
  MEMORY[0x28223BE20](v50);
  v6 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95208, &unk_220DC1E40);
  v44 = *(v49 - 8);
  v7 = *(v44 + 64);
  v8 = MEMORY[0x28223BE20](v49);
  v45 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v41 = &v39 - v11;
  MEMORY[0x28223BE20](v10);
  v13 = &v39 - v12;
  v48 = sub_220DBEE10();
  v43 = *(v48 - 8);
  v14 = *(v43 + 64);
  MEMORY[0x28223BE20](v48);
  v16 = &v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = type metadata accessor for PrecipitationTotalStringAmount(0);
  v17 = *(*(v47 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v47);
  v42 = &v39 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v21 = &v39 - v20;
  v23 = v2[3];
  v22 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v23);
  if ((*(v22 + 56))(a1, v23, v22))
  {
    v24 = v2[3];
    v25 = v2[4];
    __swift_project_boxed_opaque_existential_1(v2, v24);
    (*(v25 + 16))(&v52, a1, v24, v25);
    sub_220DBE7E0();
    sub_220DBEDD0();
    sub_220DBEDC0();
    v26 = v44;
    v27 = v41;
    v28 = v49;
    (*(v44 + 16))(v41, v13, v49);
    v29 = &v21[*(v47 + 20)];
    v40 = v21;
    sub_220CDB1D4();
    v46 = *(v46 + 8);
    (v46)(v6, v50);
    v44 = *(v26 + 8);
    (v44)(v13, v28);
    v30 = v13;
    v31 = *(v43 + 8);
    v31(v16, v48);
    *v21 = 0;
    sub_220DBE7E0();
    sub_220DBEDD0();
    sub_220DBEDC0();
    sub_220DBEC80();
    v32 = v45;
    sub_220DBEC70();
    v33 = v42;
    sub_220CDEE30(v27, v32, &v42[*(v47 + 20)]);
    (v46)(v6, v50);
    (v44)(v30, v49);
    v31(v16, v48);
    *v33 = 1;
    v34 = v51;
    sub_220D15C34(&v52, v40, v33, v51);
    v35 = type metadata accessor for PrecipitationPlatterPrecipitationKind();
    return __swift_storeEnumTagSinglePayload(v34, 0, 1, v35);
  }

  else
  {
    v37 = type metadata accessor for PrecipitationPlatterPrecipitationKind();
    v38 = v51;

    return __swift_storeEnumTagSinglePayload(v38, 1, 1, v37);
  }
}

uint64_t sub_220D0DEB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v80 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95208, &unk_220DC1E40);
  v78 = *(v5 - 8);
  v79 = v5;
  v6 = *(v78 + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v74 = &v69 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v75 = &v69 - v9;
  v73 = type metadata accessor for PrecipitationTotalStringAmount(0);
  v10 = *(*(v73 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v73);
  v77 = &v69 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v76 = &v69 - v13;
  v81 = type metadata accessor for PresentativePastHourRange.PresentativePastHourRangeContext(0);
  v14 = *(*(v81 - 8) + 64);
  MEMORY[0x28223BE20](v81);
  v71 = &v69 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_220DBEE10();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v69 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v19);
  v24 = &v69 - v23;
  MEMORY[0x28223BE20](v22);
  v26 = &v69 - v25;
  v72 = type metadata accessor for PresentativePastHourRange(0);
  v27 = *(*(v72 - 8) + 64);
  MEMORY[0x28223BE20](v72);
  v29 = &v69 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = v3[3];
  v31 = v3[4];
  v69 = v3;
  __swift_project_boxed_opaque_existential_1(v3, v30);
  sub_220DBEA30();
  sub_220DBEA30();
  v70 = a1;
  sub_220DBEA50();
  (*(v31 + 40))(v26, v24, v21, v30, v31);
  v32 = *(v17 + 8);
  v32(v21, v16);
  v33 = v24;
  v34 = v71;
  v32(v33, v16);
  v32(v26, v16);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  sub_220D0FFD0(v29, v34, type metadata accessor for PresentativePastHourRange.PresentativePastHourRangeContext);
  LODWORD(v72) = EnumCaseMultiPayload;
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      BYTE1(v82) = *(v34 + *(v81 + 24));
      v37 = v78;
      v36 = v79;
      v38 = *(v78 + 16);
      v39 = v75;
      v38(v75, v34, v79);
      v40 = v74;
      v38(v74, v39, v36);
      v41 = v73;
      v42 = v76;
      v43 = &v76[*(v73 + 20)];
      sub_220CDB1D4();
      v44 = *(v37 + 8);
      v44(v39, v36);
      *v42 = 0;
      v38(v39, v34 + *(v81 + 20), v36);
      v38(v40, v39, v36);
      v45 = v77;
      v46 = &v77[*(v41 + 20)];
      sub_220CF8B70();
      v44(v39, v36);
      *v45 = 2;
      v47 = (&v82 + 1);
    }

    else
    {
      BYTE2(v82) = *(v34 + *(v81 + 24));
      v60 = v78;
      v59 = v79;
      v61 = *(v78 + 16);
      v62 = v75;
      v61(v75, v34, v79);
      v63 = v74;
      v61(v74, v62, v59);
      v64 = v73;
      v42 = v76;
      v65 = &v76[*(v73 + 20)];
      sub_220CDB1D4();
      v66 = *(v60 + 8);
      v66(v62, v59);
      *v42 = 0;
      v61(v62, v34 + *(v81 + 20), v59);
      v61(v63, v62, v59);
      v45 = v77;
      v67 = &v77[*(v64 + 20)];
      sub_220CF8B70();
      v66(v62, v59);
      *v45 = 2;
      v47 = (&v82 + 2);
    }
  }

  else
  {
    v48 = v69[3];
    v49 = v69[4];
    __swift_project_boxed_opaque_existential_1(v69, v48);
    (*(v49 + 24))(&v82, v70, v48, v49);
    v51 = v78;
    v50 = v79;
    v52 = *(v78 + 16);
    v53 = v75;
    v52(v75, v34, v79);
    v54 = v74;
    v52(v74, v53, v50);
    v55 = v73;
    v42 = v76;
    v56 = &v76[*(v73 + 20)];
    sub_220CDB1D4();
    v57 = *(v51 + 8);
    v57(v53, v50);
    *v42 = 0;
    v52(v53, v34 + *(v81 + 20), v50);
    v52(v54, v53, v50);
    v45 = v77;
    v58 = &v77[*(v55 + 20)];
    sub_220CF8B70();
    v57(v53, v50);
    *v45 = 2;
    v47 = &v82;
  }

  sub_220D15C34(v47, v42, v45, v80);
  sub_220D1002C(v34, type metadata accessor for PresentativePastHourRange.PresentativePastHourRangeContext);
  type metadata accessor for PrecipitationPlatterTodayFirstSentence();
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_220D0E5AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v7 = v6;
  v147 = a3;
  v148 = a4;
  v133 = a2;
  v149 = a6;
  v10 = sub_220DBE6E0();
  v137 = *(v10 - 8);
  v138 = v10;
  v11 = *(v137 + 64);
  MEMORY[0x28223BE20](v10);
  v135 = &v124[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v139 = sub_220DBE560();
  v150 = *(v139 - 8);
  v13 = *(v150 + 64);
  v14 = MEMORY[0x28223BE20](v139);
  v140 = &v124[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = MEMORY[0x28223BE20](v14);
  v132 = &v124[-v17];
  v18 = MEMORY[0x28223BE20](v16);
  v134 = &v124[-v19];
  v20 = MEMORY[0x28223BE20](v18);
  v145 = &v124[-v21];
  MEMORY[0x28223BE20](v20);
  v146 = &v124[-v22];
  v23 = type metadata accessor for PrecipitationPlatterPrecipitationKind();
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v130 = &v124[-((v26 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v25);
  v131 = &v124[-v27];
  v28 = type metadata accessor for PrecipitationTotalStringAmount(0);
  v29 = *(*(v28 - 8) + 64);
  v30 = MEMORY[0x28223BE20](v28 - 8);
  v143 = &v124[-((v31 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v32 = MEMORY[0x28223BE20](v30);
  v144 = &v124[-v33];
  v34 = MEMORY[0x28223BE20](v32);
  v142 = &v124[-v35];
  v36 = MEMORY[0x28223BE20](v34);
  v141 = &v124[-v37];
  v38 = MEMORY[0x28223BE20](v36);
  v40 = &v124[-v39];
  MEMORY[0x28223BE20](v38);
  v42 = &v124[-v41];
  PrecipitationEvent = type metadata accessor for NextPrecipitationEvent();
  v44 = *(*(PrecipitationEvent - 8) + 64);
  v45 = MEMORY[0x28223BE20](PrecipitationEvent);
  v47 = &v124[-((v46 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v45);
  v49 = &v124[-v48];
  v50 = type metadata accessor for PrecipitationComponentDescriptionContext();
  v51 = (v50 - 8);
  v52 = *(*(v50 - 8) + 64);
  MEMORY[0x28223BE20](v50);
  v54 = &v124[-((v53 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v55 = sub_220DBEAD0();
  v56 = *(*(v55 - 8) + 16);
  v136 = a1;
  v56(v54, a1, v55);
  v57 = v51[7];
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95798, &unk_220DC3040);
  (*(*(v58 - 8) + 16))(&v54[v57], v147, v58);
  v59 = v51[8];
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95270, &unk_220DC3AF0);
  (*(*(v60 - 8) + 16))(&v54[v59], v148, v60);
  v61 = v51[9];
  v62 = sub_220DBE740();
  v63 = *(v62 - 8);
  v64 = *(v63 + 16);
  v147 = v62;
  v148 = a5;
  v129 = v64;
  v128 = v63 + 16;
  (v64)(&v54[v61], a5);
  v54[v51[10]] = 6;
  v54[v51[11]] = 1;
  v66 = v7[8];
  v65 = v7[9];
  __swift_project_boxed_opaque_existential_1(v7 + 5, v66);
  v67 = v66;
  v68 = v49;
  (*(v65 + 8))(v54, v67, v65);
  sub_220D0FF74(v49, v47, type metadata accessor for NextPrecipitationEvent);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v96 = *v47;
    v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF957A8, &qword_220DC4FE0);
    v98 = *(v97 + 64);
    sub_220D0FFD0(&v47[*(v97 + 48)], v42, type metadata accessor for PrecipitationTotalStringAmount);
    sub_220D0FFD0(&v47[v98], v40, type metadata accessor for PrecipitationTotalStringAmount);
    v99 = v7[3];
    v100 = v7[4];
    __swift_project_boxed_opaque_existential_1(v7, v99);
    (*(v100 + 16))(&v152, v133, v99, v100);
    v151 = v96;
    v101 = v141;
    sub_220D0FF74(v42, v141, type metadata accessor for PrecipitationTotalStringAmount);
    v102 = v142;
    sub_220D0FF74(v40, v142, type metadata accessor for PrecipitationTotalStringAmount);
    v103 = v131;
    sub_220D15C34(&v151, v101, v102, v131);
    sub_220D1002C(v40, type metadata accessor for PrecipitationTotalStringAmount);
    sub_220D1002C(v42, type metadata accessor for PrecipitationTotalStringAmount);
    sub_220D1002C(v68, type metadata accessor for NextPrecipitationEvent);
    sub_220D1002C(v54, type metadata accessor for PrecipitationComponentDescriptionContext);
    v104 = v149;
    sub_220D0FFD0(v103, v149, type metadata accessor for PrecipitationPlatterPrecipitationKind);
    type metadata accessor for PrecipitationPlatterNextTwentyFourHourSentence();
    swift_storeEnumTagMultiPayload();
    v116 = type metadata accessor for PrecipitationPlatterTodayThirdSentence();
    swift_storeEnumTagMultiPayload();
    v117 = v104;
LABEL_16:
    v115 = 0;
    v114 = v116;
    return __swift_storeEnumTagSinglePayload(v117, v115, 1, v114);
  }

  if (EnumCaseMultiPayload == 1)
  {
    v131 = v54;
    v133 = v49;
    v125 = *v47;
    v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF957A0, &unk_220DC3050);
    v71 = v70[16];
    v72 = v70[20];
    v73 = v150;
    v74 = *(v150 + 32);
    v75 = &v47[v70[12]];
    v76 = v139;
    v127 = v150 + 32;
    v126 = v74;
    v74(v146, v75, v139);
    sub_220D0FFD0(&v47[v71], v144, type metadata accessor for PrecipitationTotalStringAmount);
    sub_220D0FFD0(&v47[v72], v143, type metadata accessor for PrecipitationTotalStringAmount);
    v77 = v132;
    sub_220DBEA60();
    v78 = v134;
    sub_220DBE3E0();
    v79 = *(v73 + 8);
    v79(v77, v76);
    v80 = v135;
    sub_220DBE6A0();
    sub_220DBE390();
    v81 = v138;
    v82 = *(v137 + 8);
    v82(v80, v138);
    v79(v78, v76);
    sub_220DBEA60();
    sub_220DBE6A0();
    v83 = v140;
    sub_220DBE3A0();
    v82(v80, v81);
    v84 = v76;
    v85 = v78;
    v86 = v146;
    v150 = v73 + 8;
    v138 = v79;
    v79(v85, v76);
    if (sub_220DBE430())
    {
      BYTE1(v152) = v125;
      v87 = v144;
      v88 = v141;
      sub_220D0FF74(v144, v141, type metadata accessor for PrecipitationTotalStringAmount);
      v89 = v142;
      v90 = v143;
      sub_220D0FF74(v143, v142, type metadata accessor for PrecipitationTotalStringAmount);
      v91 = v130;
      sub_220D15C34(&v152 + 1, v88, v89, v130);
      if (sub_220DBE430())
      {
        v92 = v145;
        sub_220DBE440();
        v93 = v83;
        v94 = v138;
        v138(v93, v84);
        v94(v92, v84);
      }

      else
      {
        v118 = v138;
        v138(v83, v84);
        v118(v145, v84);
      }

      sub_220D1002C(v90, type metadata accessor for PrecipitationTotalStringAmount);
      sub_220D1002C(v87, type metadata accessor for PrecipitationTotalStringAmount);
      sub_220D1002C(v133, type metadata accessor for NextPrecipitationEvent);
      sub_220D1002C(v131, type metadata accessor for PrecipitationComponentDescriptionContext);
      v95 = v86;
      v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95788, &unk_220DC3A10);
      v120 = *(v119 + 48);
      v121 = *(v119 + 64);
      v122 = v149;
      sub_220D0FFD0(v91, v149, type metadata accessor for PrecipitationPlatterPrecipitationKind);
      v126(v122 + v120, v95, v84);
      v129(v122 + v121, v148, v147);
      v116 = type metadata accessor for PrecipitationPlatterTodayThirdSentence();
      swift_storeEnumTagMultiPayload();
      v117 = v122;
      goto LABEL_16;
    }

    if (qword_27CF94F40 != -1)
    {
      swift_once();
    }

    v106 = sub_220DBF410();
    __swift_project_value_buffer(v106, qword_27CF95F48);
    v107 = sub_220DBF3F0();
    v108 = sub_220DC0980();
    v109 = os_log_type_enabled(v107, v108);
    v110 = v133;
    v54 = v131;
    if (v109)
    {
      v111 = swift_slowAlloc();
      *v111 = 0;
      _os_log_impl(&dword_220CD1000, v107, v108, "precipitation happen in 24 hours but fall into day case", v111, 2u);
      v112 = v111;
      v83 = v140;
      MEMORY[0x223D98FB0](v112, -1, -1);
    }

    v113 = v138;
    v138(v83, v76);
    v113(v145, v76);
    sub_220D1002C(v143, type metadata accessor for PrecipitationTotalStringAmount);
    sub_220D1002C(v144, type metadata accessor for PrecipitationTotalStringAmount);
    v113(v86, v76);
    v105 = v110;
  }

  else
  {
    v105 = v49;
  }

  sub_220D1002C(v105, type metadata accessor for NextPrecipitationEvent);
  sub_220D1002C(v54, type metadata accessor for PrecipitationComponentDescriptionContext);
  v114 = type metadata accessor for PrecipitationPlatterTodayThirdSentence();
  v117 = v149;
  v115 = 1;
  return __swift_storeEnumTagSinglePayload(v117, v115, 1, v114);
}

uint64_t sub_220D0F384@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v52 = a3;
  v5 = sub_220DBEC90();
  v47 = *(v5 - 8);
  v48 = v5;
  v6 = *(v47 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95208, &unk_220DC1E40);
  v45 = *(v9 - 8);
  v46 = v9;
  v10 = *(v45 + 64);
  v11 = MEMORY[0x28223BE20](v9);
  v43 = v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v14 = v41 - v13;
  v49 = sub_220DBEE10();
  v15 = *(v49 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v49);
  v18 = v41 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = type metadata accessor for PrecipitationTotalStringAmount(0);
  v19 = *(*(v51 - 8) + 64);
  v20 = MEMORY[0x28223BE20](v51);
  v44 = v41 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v50 = v41 - v22;
  v23 = a1[3];
  v24 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v23);
  if ((*(v24 + 56))(a2, v23, v24))
  {
    v25 = a1[3];
    v26 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v25);
    v27 = *(v26 + 16);
    v41[1] = a2;
    v27(&v53, a2, v25, v26);
    sub_220DBE7E0();
    sub_220DBEDD0();
    v41[0] = *(v15 + 8);
    (v41[0])(v18, v49);
    v28 = v45;
    v29 = v46;
    v42 = *(v45 + 16);
    v30 = v43;
    v42(v43, v14, v46);
    v31 = &v50[*(v51 + 20)];
    v32 = v50;
    sub_220CDB1D4();
    v33 = *(v28 + 8);
    v33(v14, v29);
    *v32 = 0;
    sub_220DBE7E0();
    sub_220DBEDC0();
    (v41[0])(v18, v49);
    sub_220DBEC60();
    (*(v47 + 8))(v8, v48);
    v42(v30, v14, v29);
    v34 = v44;
    v35 = &v44[*(v51 + 20)];
    sub_220CF8B70();
    v33(v14, v29);
    *v34 = 2;
    v36 = v52;
    sub_220D15C34(&v53, v50, v34, v52);
    v37 = type metadata accessor for PrecipitationPlatterPrecipitationKind();
    return __swift_storeEnumTagSinglePayload(v36, 0, 1, v37);
  }

  else
  {
    v39 = type metadata accessor for PrecipitationPlatterPrecipitationKind();
    v40 = v52;

    return __swift_storeEnumTagSinglePayload(v40, 1, 1, v39);
  }
}

uint64_t sub_220D0F80C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v70 = a3;
  v71 = a4;
  v72 = a5;
  v69 = sub_220DBEC90();
  v66 = *(v69 - 8);
  v7 = *(v66 + 64);
  MEMORY[0x28223BE20](v69);
  v64 = &v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95208, &unk_220DC1E40);
  v9 = *(v68 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v68);
  v65 = &v56 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v59 = &v56 - v14;
  MEMORY[0x28223BE20](v13);
  v16 = &v56 - v15;
  v17 = sub_220DBEE10();
  v62 = *(v17 - 8);
  v63 = v17;
  v18 = *(v62 + 64);
  MEMORY[0x28223BE20](v17);
  v20 = &v56 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = type metadata accessor for PrecipitationTotalStringAmount(0);
  v21 = *(*(v67 - 8) + 64);
  v22 = MEMORY[0x28223BE20](v67);
  v61 = &v56 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v25 = &v56 - v24;
  v26 = type metadata accessor for PrecipitationPlatterPrecipitationKind();
  v27 = *(*(v26 - 8) + 64);
  MEMORY[0x28223BE20](v26 - 8);
  v60 = &v56 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = a1[3];
  v30 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v29);
  if ((*(v30 + 56))(a2, v29, v30))
  {
    v31 = a1[3];
    v32 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v31);
    v33 = *(v32 + 16);
    v56 = a2;
    v33(&v73, a2, v31, v32);
    v34 = v20;
    sub_220DBE7E0();
    v35 = v16;
    sub_220DBEDD0();
    v36 = v64;
    sub_220DBEDC0();
    v37 = v59;
    v38 = v68;
    (*(v9 + 16))(v59, v35, v68);
    v39 = &v25[*(v67 + 20)];
    v58 = v25;
    sub_220CDB1D4();
    v66 = *(v66 + 8);
    (v66)(v36, v69);
    v57 = *(v9 + 8);
    v57(v35, v38);
    v40 = v63;
    v62 = *(v62 + 8);
    (v62)(v34, v63);
    *v25 = 0;
    sub_220DBE7E0();
    sub_220DBEDD0();
    sub_220DBEDC0();
    sub_220DBEC80();
    v41 = v65;
    sub_220DBEC70();
    v42 = v61;
    sub_220CDEE30(v37, v41, &v61[*(v67 + 20)]);
    (v66)(v36, v69);
    v57(v35, v68);
    (v62)(v34, v40);
    *v42 = 1;
    v43 = v60;
    sub_220D15C34(&v73, v58, v42, v60);
    v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95788, &unk_220DC3A10);
    v45 = *(v44 + 48);
    v46 = *(v44 + 64);
    v47 = v43;
    v48 = v72;
    sub_220D0FFD0(v47, v72, type metadata accessor for PrecipitationPlatterPrecipitationKind);
    v49 = sub_220DBE560();
    (*(*(v49 - 8) + 16))(v48 + v45, v70, v49);
    v50 = sub_220DBE740();
    (*(*(v50 - 8) + 16))(v48 + v46, v71, v50);
    type metadata accessor for PrecipitationPlatterFutureDaySentence();
    return swift_storeEnumTagMultiPayload();
  }

  else
  {
    v52 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95780, &unk_220DC3020) + 48);
    v53 = sub_220DBE560();
    v54 = v72;
    (*(*(v53 - 8) + 16))(v72, v70, v53);
    v55 = sub_220DBE740();
    (*(*(v55 - 8) + 16))(v54 + v52, v71, v55);
    type metadata accessor for PrecipitationPlatterFutureDaySentence();

    return swift_storeEnumTagMultiPayload();
  }
}

uint64_t sub_220D0FE9C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95790, &unk_220DC3030);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_220D0FF0C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95790, &unk_220DC3030);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_220D0FF74(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3(0);
  OUTLINED_FUNCTION_6(v4);
  v6 = *(v5 + 16);
  v7 = OUTLINED_FUNCTION_20();
  v8(v7);
  return a2;
}

uint64_t sub_220D0FFD0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3(0);
  OUTLINED_FUNCTION_6(v4);
  v6 = *(v5 + 32);
  v7 = OUTLINED_FUNCTION_20();
  v8(v7);
  return a2;
}

uint64_t sub_220D1002C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_6(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_220D100F4@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t a4@<X8>)
{
  v7 = *(a1 + 16);
  v8 = a2(0);
  v9 = v8;
  if (v7)
  {
    sub_220D149B4(a1 + ((*(*(v8 - 8) + 80) + 32) & ~*(*(v8 - 8) + 80)), a4, a3);
    v10 = 0;
  }

  else
  {
    v10 = 1;
  }

  return __swift_storeEnumTagSinglePayload(a4, v10, 1, v9);
}

uint64_t sub_220D101C4@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a1 + 16);
  v6 = a2(0);
  v7 = v6;
  if (v5)
  {
    (*(*(v6 - 8) + 16))(a3, a1 + ((*(*(v6 - 8) + 80) + 32) & ~*(*(v6 - 8) + 80)), v6);
    v8 = 0;
  }

  else
  {
    v8 = 1;
  }

  return __swift_storeEnumTagSinglePayload(a3, v8, 1, v7);
}

uint64_t sub_220D102A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_220DC0AE0();
  v5 = *(*(v4 - 8) + 16);

  return v5(a2, a1, v4);
}

uint64_t sub_220D10314(uint64_t TupleTypeMetadata, uint64_t a2, uint64_t a3)
{
  v5 = TupleTypeMetadata;
  if (a2 == 1)
  {
    v6 = *(a3 & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    MEMORY[0x28223BE20](TupleTypeMetadata);
    v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    for (i = 0; a2 != i; ++i)
    {
      *&v8[8 * i] = *((a3 & 0xFFFFFFFFFFFFFFFELL) + 8 * i);
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v6 = TupleTypeMetadata;
  }

  v10 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](TupleTypeMetadata);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v13 = (a3 & 0xFFFFFFFFFFFFFFFELL);
    v14 = (v6 + 32);
    v15 = a2;
    do
    {
      if (a2 == 1)
      {
        v16 = 0;
      }

      else
      {
        v16 = *v14;
      }

      v18 = *v13++;
      v17 = v18;
      v19 = *v5++;
      (*(*(v17 - 8) + 16))(&v12[v16], v19);
      v14 += 4;
      --v15;
    }

    while (v15);
  }

  return sub_220DC0170();
}

uint64_t AirQualityNumericScaleView.init(categories:range:onlyExtremes:markView:markHeight:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, double *a7@<X8>, double a8@<D0>)
{
  v53 = a7;
  v54 = a5;
  v51 = a2;
  v52 = a3;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF957B0, &qword_220DC3070);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  OUTLINED_FUNCTION_4();
  v16 = v14 - v15;
  MEMORY[0x28223BE20](v17);
  v19 = v49 - v18;
  v20 = sub_220DBEDB0();
  v21 = OUTLINED_FUNCTION_0(v20);
  v23 = v22;
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_4();
  v28 = v26 - v27;
  v30 = MEMORY[0x28223BE20](v29);
  v32 = v49 - v31;
  MEMORY[0x28223BE20](v30);
  v34 = v49 - v33;
  v56 = MEMORY[0x277D84FA0];
  sub_220D101C4(a1, MEMORY[0x277CE3788], v19);
  if (__swift_getEnumTagSinglePayload(v19, 1, v20) == 1)
  {
    sub_220D1083C(v19);
    if ((a4 & 1) == 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    (*(v23 + 32))(v34, v19, v20);
    v43 = sub_220DBED80();
    sub_220D12624(&v55, v43);
    (*(v23 + 8))(v34, v20);
    if ((a4 & 1) == 0)
    {
LABEL_3:
      v35 = *(a1 + 16);
      if (v35)
      {
        v49[1] = a1;
        v50 = a6;
        v38 = *(v23 + 16);
        v36 = v23 + 16;
        v37 = v38;
        v39 = a1 + ((*(v36 + 64) + 32) & ~*(v36 + 64));
        v40 = *(v36 + 56);
        do
        {
          v37(v28, v39, v20);
          sub_220DBED80();
          v42 = v41;
          (*(v36 - 8))(v28, v20);
          sub_220D12624(&v55, v42);
          v39 += v40;
          --v35;
        }

        while (v35);

        a6 = v50;
      }

      else
      {
      }

      goto LABEL_12;
    }
  }

  sub_220D10998(a1, MEMORY[0x277CE3788], v16);

  if (__swift_getEnumTagSinglePayload(v16, 1, v20) == 1)
  {
    sub_220D1083C(v16);
  }

  else
  {
    (*(v23 + 32))(v32, v16, v20);
    sub_220DBED80();
    sub_220D12624(&v55, v44);
    (*(v23 + 8))(v32, v20);
  }

LABEL_12:
  v55 = sub_220D0C7D8(v56);

  sub_220D13E34(&v55);

  v46 = v53;
  v48 = v51;
  v47 = v52;
  *v53 = v55;
  *(v46 + 1) = v48;
  *(v46 + 2) = v47;
  *(v46 + 3) = v54;
  *(v46 + 4) = a6;
  v46[5] = a8;
  return result;
}

uint64_t sub_220D1083C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF957B0, &qword_220DC3070);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_220D108A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v5 = v3 - 1;
    v6 = *(type metadata accessor for DetailChartDataElement(0) - 8);
    sub_220D149B4(a1 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v5, a2, type metadata accessor for DetailChartDataElement);
    v7 = OUTLINED_FUNCTION_9_6();
  }

  else
  {
    type metadata accessor for DetailChartDataElement(0);
    v7 = OUTLINED_FUNCTION_10_6();
  }

  return __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
}

uint64_t sub_220D10998@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v4 = *(a1 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = a2(0);
    (*(*(v7 - 8) + 16))(a3, a1 + ((*(*(v7 - 8) + 80) + 32) & ~*(*(v7 - 8) + 80)) + *(*(v7 - 8) + 72) * v6, v7);
    v8 = OUTLINED_FUNCTION_9_6();
  }

  else
  {
    a2(0);
    v8 = OUTLINED_FUNCTION_10_6();
  }

  return __swift_storeEnumTagSinglePayload(v8, v9, v10, v11);
}

uint64_t sub_220D10A50(uint64_t a1)
{
  v3 = *(a1 + 16);
  v1 = a1 + 16;
  v2 = v3;
  if (!v3)
  {
    return 0;
  }

  v4 = (v1 + 16 * v2);
  v5 = *v4;
  v6 = v4[1];
}

uint64_t sub_220D10A90(uint64_t result)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  if (v2 != v3)
  {
    if (__OFSUB__(result, v2))
    {
      __break(1u);
    }

    else if (!__OFSUB__(v3, v2))
    {
      return result;
    }

    __break(1u);
  }

  return result;
}

uint64_t AirQualityNumericScaleView.body.getter@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = *(a1 + 16);
  OUTLINED_FUNCTION_7_5();
  sub_220DC0AE0();
  OUTLINED_FUNCTION_11_3();
  OUTLINED_FUNCTION_12_5();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_6_6();
  sub_220DC0030();
  v6 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF957B8, &qword_220DC3078);
  OUTLINED_FUNCTION_7_5();
  sub_220DBF8A0();
  v7 = sub_220DC0AE0();
  v8 = sub_220D13EA0();
  *&v33 = v6;
  *(&v33 + 1) = MEMORY[0x277D83B88];
  *&v34 = v7;
  *(&v34 + 1) = v8;
  *&v35 = MEMORY[0x277D83B98];
  sub_220DC00C0();
  v31 = *(a1 + 24);
  v32 = MEMORY[0x277CDFB28];
  OUTLINED_FUNCTION_5_7();
  WitnessTable = swift_getWitnessTable();
  OUTLINED_FUNCTION_4_6();
  v29 = swift_getWitnessTable();
  OUTLINED_FUNCTION_2();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_6_6();
  sub_220DBF7A0();
  OUTLINED_FUNCTION_1_8();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_6_6();
  sub_220DC0030();
  sub_220DBF8A0();
  OUTLINED_FUNCTION_6_6();
  swift_getTupleTypeMetadata2();
  OUTLINED_FUNCTION_12_5();
  swift_getWitnessTable();
  v9 = sub_220DC0050();
  v10 = OUTLINED_FUNCTION_0(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_4();
  v17 = v15 - v16;
  MEMORY[0x28223BE20](v18);
  v20 = &v25[-v19];
  v21 = v2[1];
  v33 = *v2;
  v34 = v21;
  v35 = v2[2];
  v26 = v5;
  v27 = v31;
  v28 = &v33;
  sub_220DC0120();
  sub_220DC0040();
  OUTLINED_FUNCTION_3_9();
  swift_getWitnessTable();
  v22 = *(v12 + 16);
  v22(v20, v17, v9);
  v23 = *(v12 + 8);
  v23(v17, v9);
  v22(a2, v20, v9);
  return (v23)(v20, v9);
}

uint64_t sub_220D10DC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v41 = a4;
  sub_220DC0AE0();
  swift_getTupleTypeMetadata3();
  sub_220DC0160();
  swift_getWitnessTable();
  v7 = sub_220DC0030();
  v8 = *(v7 - 8);
  v9 = v8[8];
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v32 - v13;
  v37 = &v32 - v13;
  v45 = a2;
  v46 = a3;
  v47 = a1;
  sub_220D91318();
  sub_220DC0020();
  v34 = v7;
  WitnessTable = swift_getWitnessTable();
  v15 = v8[2];
  v35 = v8 + 2;
  v36 = v15;
  v15(v14, v12, v7);
  v16 = v8[1];
  v39 = v8 + 1;
  v40 = v16;
  v16(v12, v7);
  v42 = a2;
  v43 = a3;
  v44 = a1;
  v17 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF957B8, &qword_220DC3078);
  sub_220DBF8A0();
  v18 = sub_220DC0AE0();
  v19 = sub_220D13EA0();
  __src[0] = v17;
  __src[1] = MEMORY[0x277D83B88];
  __src[2] = v18;
  __src[3] = v19;
  __src[4] = MEMORY[0x277D83B98];
  sub_220DC00C0();
  v52[6] = a3;
  v52[7] = MEMORY[0x277CDFB28];
  v52[5] = swift_getWitnessTable();
  v52[4] = swift_getWitnessTable();
  swift_getWitnessTable();
  sub_220DBF7A0();
  swift_getWitnessTable();
  sub_220D91318();
  sub_220DC0020();
  v55[0] = v56[0];
  LOBYTE(v55[1]) = v56[1];
  *(&v55[1] + 1) = *(&v56[1] + 1);
  *&v55[2] = *&v56[2];
  v20 = *(a1 + 40);
  sub_220DC0030();
  v21 = swift_getWitnessTable();
  sub_220DC0120();
  sub_220DBFE10();

  memcpy(v56, __src, 0x58uLL);
  v22 = sub_220DBF8A0();
  v52[2] = v21;
  v52[3] = MEMORY[0x277CDF678];
  v33 = swift_getWitnessTable();
  v23 = *(v22 - 8);
  v24 = *(v23 + 16);
  v24(v53, v56, v22);
  memcpy(v54, v56, sizeof(v54));
  v25 = *(v23 + 8);
  v25(v54, v22);
  v26 = v12;
  v27 = v12;
  v28 = v37;
  v29 = v34;
  v36(v27, v37, v34);
  v52[0] = v26;
  memcpy(v55, v53, 0x58uLL);
  memcpy(v51, v53, sizeof(v51));
  v52[1] = v51;
  v24(__src, v55, v22);
  v50[0] = v29;
  v50[1] = v22;
  v48 = WitnessTable;
  v49 = v33;
  sub_220D10314(v52, 2, v50);
  memcpy(v56, v53, 0x58uLL);
  v25(v56, v22);
  v30 = v40;
  v40(v28, v29);
  memcpy(__src, v51, 0x58uLL);
  v25(__src, v22);
  return v30(v26, v29);
}

uint64_t sub_220D11368@<X0>(void (*a1)(char *, char *, uint64_t)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v62 = a3;
  v60 = a4;
  v57 = *(a2 - 8);
  v6 = *(v57 + 64);
  v7 = MEMORY[0x28223BE20](a1);
  v9 = &v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v56 = &v52 - v10;
  v11 = sub_220DC0AE0();
  v12 = *(v11 - 8);
  v13 = *(v12 + 8);
  v14 = MEMORY[0x28223BE20](v11);
  v59 = &v52 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v58 = &v52 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v52 - v19;
  MEMORY[0x28223BE20](v18);
  v22 = &v52 - v21;
  v23 = *a1;
  v24 = *(*a1 + 16);
  v61 = &v52 - v21;
  v55 = a1;
  if (v24 && (v25 = *(v23 + 32), v25 == *(a1 + 1)))
  {
    v27 = *(a1 + 3);
    v26 = *(a1 + 4);
    v28 = sub_220DC0130();
    v27(v25, v28, v29);
    v30 = v56;
    v31 = v57;
    v54 = *(v57 + 16);
    v54(v56, v9, a2);
    v32 = *(v31 + 8);
    v32(v9, a2);
    v54(v9, v30, a2);
    v22 = v61;
    v32(v30, a2);
    (*(v57 + 32))(v20, v9, a2);
    v33 = 0;
  }

  else
  {
    v33 = 1;
  }

  __swift_storeEnumTagSinglePayload(v20, v33, 1, a2);
  sub_220D102A8(v20, v22);
  v34 = *(v12 + 1);
  v34(v20, v11);
  v35 = *(v23 + 16);
  if (v35 && (v36 = *(v23 + 8 * v35 + 24), v36 == *(v55 + 2)))
  {
    v54 = v12;
    v38 = *(v55 + 3);
    v37 = *(v55 + 4);
    v39 = sub_220DC0140();
    v38(v36, v39, v40);
    v41 = v57;
    v55 = *(v57 + 16);
    v55(v56, v9, a2);
    v42 = *(v41 + 8);
    v53 = v9;
    v42(v9, a2);
    v43 = v9;
    v44 = v56;
    v55(v43, v56, a2);
    v42(v44, a2);
    v12 = v54;
    (*(v41 + 32))(v20, v53, a2);
    v45 = 0;
  }

  else
  {
    v45 = 1;
  }

  __swift_storeEnumTagSinglePayload(v20, v45, 1, a2);
  v46 = v58;
  v47 = v62;
  sub_220D102A8(v20, v58);
  v34(v20, v11);
  v48 = *(v12 + 2);
  v49 = v61;
  v48(v20, v61, v11);
  v68 = 0;
  v69 = 1;
  v70[0] = v20;
  v70[1] = &v68;
  v50 = v59;
  v48(v59, v46, v11);
  v70[2] = v50;
  v67[0] = v11;
  v67[1] = MEMORY[0x277CE1180];
  v67[2] = v11;
  v63 = v47;
  WitnessTable = swift_getWitnessTable();
  v65 = MEMORY[0x277CE1170];
  v66 = WitnessTable;
  sub_220D10314(v70, 3, v67);
  v34(v46, v11);
  v34(v49, v11);
  v34(v50, v11);
  return (v34)(v20, v11);
}

uint64_t sub_220D11894@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a2;
  *(v8 + 24) = a3;
  v9 = a1[1];
  *(v8 + 32) = *a1;
  *(v8 + 48) = v9;
  *(v8 + 64) = a1[2];
  v10 = type metadata accessor for AirQualityNumericScaleView();
  (*(*(v10 - 8) + 16))(&v24, a1, v10);
  v11 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF957B8, &qword_220DC3078);
  sub_220DBF8A0();
  v12 = sub_220DC0AE0();
  v13 = sub_220D13EA0();
  v24 = v11;
  v25 = MEMORY[0x277D83B88];
  v26 = v12;
  v27 = v13;
  v28 = MEMORY[0x277D83B98];
  sub_220DC00C0();
  v22 = a3;
  v23 = MEMORY[0x277CDFB28];
  WitnessTable = swift_getWitnessTable();
  v20 = swift_getWitnessTable();
  swift_getWitnessTable();
  v18 = sub_220DBF790();
  v19 = v14;
  v15 = sub_220DBF7A0();
  swift_getWitnessTable();
  v16 = *(*(v15 - 8) + 16);
  v16(&v24, &v18, v15);

  v18 = v24;
  v19 = v25;
  v16(a4, &v18, v15);
}

uint64_t sub_220D11AF8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v32 = a4;
  v38 = a5;
  v8 = sub_220DBF780();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF957B8, &qword_220DC3078);
  v37 = v11;
  v34 = sub_220DBF8A0();
  v12 = sub_220DC0AE0();
  v35 = v12;
  v36 = sub_220D13EA0();
  v43[0] = v11;
  v43[1] = MEMORY[0x277D83B88];
  v43[2] = v12;
  v43[3] = v36;
  v43[4] = MEMORY[0x277D83B98];
  v13 = sub_220DC00C0();
  v14 = *(v13 - 8);
  v15 = v14[8];
  v16 = MEMORY[0x28223BE20](v13);
  v31 = &KeyPath - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v33 = &KeyPath - v18;
  v44 = *a2;
  v45 = v44;
  KeyPath = swift_getKeyPath();
  (*(v9 + 16))(&KeyPath - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v8);
  v19 = (*(v9 + 80) + 80) & ~*(v9 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = a3;
  v21 = v32;
  *(v20 + 24) = v32;
  v22 = *(a2 + 1);
  *(v20 + 32) = *a2;
  *(v20 + 48) = v22;
  *(v20 + 64) = *(a2 + 2);
  (*(v9 + 32))(v20 + v19, &KeyPath - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v8);
  sub_220D14070(&v45, v43);
  v23 = type metadata accessor for AirQualityNumericScaleView();
  (*(*(v23 - 8) + 16))(v43, a2, v23);
  v41 = v21;
  v42 = MEMORY[0x277CDFB28];
  WitnessTable = swift_getWitnessTable();
  v29 = swift_getWitnessTable();
  v24 = v31;
  sub_220DC00A0();
  v39 = v29;
  swift_getWitnessTable();
  v25 = v14[2];
  v26 = v33;
  v25(v33, v24, v13);
  v27 = v14[1];
  v27(v24, v13);
  v25(v38, v26, v13);
  return (v27)(v26, v13);
}

uint64_t sub_220D11EE4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, void (*a3)(char *, char *, uint64_t)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v48 = a6;
  v49 = a5;
  v43 = a3;
  v45 = *(a4 - 8);
  v9 = *(v45 + 8);
  MEMORY[0x28223BE20](a1);
  v11 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_220DBF8A0();
  v46 = *(v12 - 8);
  v13 = *(v46 + 64);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v44 = &v41 - v17;
  v18 = sub_220DC0AE0();
  v47 = *(v18 - 8);
  v19 = *(v47 + 64);
  v20 = MEMORY[0x28223BE20](v18);
  v22 = &v41 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v24 = &v41 - v23;
  v25 = *a1;
  v26 = MEMORY[0x277CDFB28];
  if (v25 == *(a2 + 8) || v25 == *(a2 + 16))
  {
    __swift_storeEnumTagSinglePayload(v22, 1, 1, v12);
    v27 = v49;
    v50 = v49;
    v51 = v26;
    swift_getWitnessTable();
    v28 = v26;
  }

  else
  {
    v29 = *(a2 + 32);
    v42 = *(a2 + 24);
    v30 = sub_220DC0120();
    v42(v25, v30, v31);
    sub_220DBF770();
    sub_220D10A90(v25);
    v32 = *(a2 + 40) * 0.5;
    v33 = v49;
    sub_220DBFE30();
    (*(v45 + 1))(v11, a4);
    v55 = v33;
    v56 = MEMORY[0x277CDFB28];
    swift_getWitnessTable();
    v34 = v46;
    v43 = *(v46 + 16);
    v35 = v44;
    v43(v44, v16, v12);
    v45 = v24;
    v36 = *(v34 + 8);
    v36(v16, v12);
    v43(v16, v35, v12);
    v36(v35, v12);
    v24 = v45;
    v37 = v16;
    v27 = v49;
    (*(v34 + 32))(v22, v37, v12);
    v28 = MEMORY[0x277CDFB28];
    __swift_storeEnumTagSinglePayload(v22, 0, 1, v12);
  }

  sub_220D102A8(v22, v24);
  v38 = v47;
  v39 = *(v47 + 8);
  v39(v22, v18);
  v53 = v27;
  v54 = v28;
  WitnessTable = swift_getWitnessTable();
  swift_getWitnessTable();
  (*(v38 + 16))(v48, v24, v18);
  return (v39)(v24, v18);
}

BOOL sub_220D12390(char *a1, char *a2)
{
  v28 = a1;
  v4 = sub_220DBE560();
  v5 = OUTLINED_FUNCTION_0(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = v2;
  v12 = *v2;
  v13 = *(*v2 + 40);
  sub_220D14970(&qword_280FA77A0);
  v33 = a2;
  v14 = sub_220DC0550();
  v30 = v12;
  v31 = v12 + 56;
  v15 = ~(-1 << *(v12 + 32));
  v32 = v7 + 16;
  v29 = v7 + 8;
  while (1)
  {
    v16 = v14 & v15;
    v17 = (1 << (v14 & v15)) & *(v31 + (((v14 & v15) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v17)
    {
      v22 = v27;
      v23 = *v27;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v25 = v33;
      (*(v7 + 16))(v11, v33, v4);
      v34 = *v22;
      sub_220D12EA8(v11, v16, isUniquelyReferenced_nonNull_native);
      *v22 = v34;
      (*(v7 + 32))(v28, v25, v4);
      return v17 == 0;
    }

    v18 = *(v7 + 72) * v16;
    v19 = *(v7 + 16);
    v19(v11, *(v30 + 48) + v18, v4);
    sub_220D14970(&qword_27CF95528);
    v20 = sub_220DC05B0();
    v21 = *(v7 + 8);
    v21(v11, v4);
    if (v20)
    {
      break;
    }

    v14 = v16 + 1;
  }

  v21(v33, v4);
  v19(v28, *(v30 + 48) + v18, v4);
  return v17 == 0;
}

BOOL sub_220D12624(uint64_t *a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  v7 = *(v6 + 40);
  v8 = sub_220DC0CD0();
  v9 = ~(-1 << *(v6 + 32));
  while (1)
  {
    v10 = v8 & v9;
    v11 = (1 << (v8 & v9)) & *(v6 + 56 + (((v8 & v9) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v11)
    {
      break;
    }

    if (*(*(v6 + 48) + 8 * v10) == a2)
    {
      goto LABEL_6;
    }

    v8 = v10 + 1;
  }

  v12 = *v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v15 = *v3;
  sub_220D1310C(a2, v10, isUniquelyReferenced_nonNull_native);
  *v3 = v15;
LABEL_6:
  result = v11 == 0;
  *a1 = a2;
  return result;
}

uint64_t sub_220D126F4(uint64_t a1)
{
  v2 = v1;
  v41 = sub_220DBE560();
  v4 = *(v41 - 8);
  v5 = v4[8];
  MEMORY[0x28223BE20](v41);
  v40 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v8 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95858, &qword_220DC3178);
  result = sub_220DC0B50();
  v10 = result;
  if (!*(v7 + 16))
  {
LABEL_29:

    *v2 = v10;
    return result;
  }

  v35 = v2;
  v36 = v7;
  v11 = 0;
  v12 = (v7 + 56);
  v13 = 1 << *(v7 + 32);
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  else
  {
    v14 = -1;
  }

  v15 = v14 & *(v7 + 56);
  v16 = (v13 + 63) >> 6;
  v39 = v4 + 4;
  v17 = result + 56;
  if (!v15)
  {
LABEL_9:
    v19 = v11;
    while (1)
    {
      v11 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v11 >= v16)
      {
        break;
      }

      v20 = v12[v11];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v15 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    v33 = 1 << *(v7 + 32);
    if (v33 >= 64)
    {
      sub_220D13210(0, (v33 + 63) >> 6, v12);
    }

    else
    {
      *v12 = -1 << v33;
    }

    v2 = v35;
    *(v7 + 16) = 0;
    goto LABEL_29;
  }

  while (1)
  {
    v18 = __clz(__rbit64(v15));
    v15 &= v15 - 1;
LABEL_14:
    v21 = *(v7 + 48) + v4[9] * (v18 | (v11 << 6));
    v22 = v4[4];
    v37 = v4[9];
    v38 = v22;
    v22(v40, v21, v41);
    v23 = v10;
    v24 = *(v10 + 40);
    sub_220D14970(&qword_280FA77A0);
    result = sub_220DC0550();
    v10 = v23;
    v25 = -1 << *(v23 + 32);
    v26 = result & ~v25;
    v27 = v26 >> 6;
    if (((-1 << v26) & ~*(v17 + 8 * (v26 >> 6))) == 0)
    {
      break;
    }

    v28 = __clz(__rbit64((-1 << v26) & ~*(v17 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v17 + ((v28 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v28;
    result = v38(*(v23 + 48) + v28 * v37, v40, v41);
    ++*(v23 + 16);
    v7 = v36;
    if (!v15)
    {
      goto LABEL_9;
    }
  }

  v29 = 0;
  v30 = (63 - v25) >> 6;
  while (++v27 != v30 || (v29 & 1) == 0)
  {
    v31 = v27 == v30;
    if (v27 == v30)
    {
      v27 = 0;
    }

    v29 |= v31;
    v32 = *(v17 + 8 * v27);
    if (v32 != -1)
    {
      v28 = __clz(__rbit64(~v32)) + (v27 << 6);
      goto LABEL_23;
    }
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_220D12A38(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95850, &qword_220DC3170);
  result = sub_220DC0B50();
  v6 = result;
  if (!*(v3 + 16))
  {
LABEL_29:

    *v2 = v6;
    return result;
  }

  v7 = 0;
  v9 = (v3 + 56);
  v8 = *(v3 + 56);
  v10 = 1 << *(v3 + 32);
  v27 = v2;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v12 = v11 & v8;
  v13 = result + 56;
  if ((v11 & v8) == 0)
  {
LABEL_9:
    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v7 >= ((v10 + 63) >> 6))
      {
        break;
      }

      v16 = v9[v7];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_14;
      }
    }

    if (v10 >= 64)
    {
      sub_220D13210(0, (v10 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v9 = -1 << v10;
    }

    v2 = v27;
    *(v3 + 16) = 0;
    goto LABEL_29;
  }

  while (1)
  {
    v14 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_14:
    v17 = *(*(v3 + 48) + 8 * (v14 | (v7 << 6)));
    v18 = *(v6 + 40);
    result = sub_220DC0CD0();
    v19 = -1 << *(v6 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v13 + 8 * (v20 >> 6))) == 0)
    {
      break;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v13 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v13 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    *(*(v6 + 48) + 8 * v22) = v17;
    ++*(v6 + 16);
    if (!v12)
    {
      goto LABEL_9;
    }
  }

  v23 = 0;
  v24 = (63 - v19) >> 6;
  while (++v21 != v24 || (v23 & 1) == 0)
  {
    v25 = v21 == v24;
    if (v21 == v24)
    {
      v21 = 0;
    }

    v23 |= v25;
    v26 = *(v13 + 8 * v21);
    if (v26 != -1)
    {
      v22 = __clz(__rbit64(~v26)) + (v21 << 6);
      goto LABEL_23;
    }
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_220D12C5C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95848, &unk_220DC3148);
  result = sub_220DC0B50();
  v6 = result;
  if (!*(v3 + 16))
  {
LABEL_29:

    *v2 = v6;
    return result;
  }

  v28 = v2;
  v7 = 0;
  v8 = (v3 + 56);
  v9 = 1 << *(v3 + 32);
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & *(v3 + 56);
  v12 = (v9 + 63) >> 6;
  v13 = result + 56;
  if (!v11)
  {
LABEL_9:
    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v7 >= v12)
      {
        break;
      }

      v16 = v8[v7];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v11 = (v16 - 1) & v16;
        goto LABEL_14;
      }
    }

    v27 = 1 << *(v3 + 32);
    if (v27 >= 64)
    {
      sub_220D13210(0, (v27 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v8 = -1 << v27;
    }

    v2 = v28;
    *(v3 + 16) = 0;
    goto LABEL_29;
  }

  while (1)
  {
    v14 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
LABEL_14:
    v17 = *(*(v3 + 48) + (v14 | (v7 << 6)));
    v18 = *(v6 + 40);
    sub_220DC0CE0();
    MEMORY[0x223D98920](v17);
    result = sub_220DC0D20();
    v19 = -1 << *(v6 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v13 + 8 * (v20 >> 6))) == 0)
    {
      break;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v13 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v13 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    *(*(v6 + 48) + v22) = v17;
    ++*(v6 + 16);
    if (!v11)
    {
      goto LABEL_9;
    }
  }

  v23 = 0;
  v24 = (63 - v19) >> 6;
  while (++v21 != v24 || (v23 & 1) == 0)
  {
    v25 = v21 == v24;
    if (v21 == v24)
    {
      v21 = 0;
    }

    v23 |= v25;
    v26 = *(v13 + 8 * v21);
    if (v26 != -1)
    {
      v22 = __clz(__rbit64(~v26)) + (v21 << 6);
      goto LABEL_23;
    }
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_220D12EA8(uint64_t a1, unint64_t a2, char a3)
{
  v24 = a1;
  v6 = sub_220DBE560();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  if (v12 <= v11 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_220D126F4(v11 + 1);
      goto LABEL_8;
    }

    if (v12 <= v11)
    {
      sub_220D13728(v11 + 1);
LABEL_8:
      v23 = v3;
      v13 = *v3;
      v14 = *(*v3 + 40);
      sub_220D14970(&qword_280FA77A0);
      v15 = sub_220DC0550();
      v16 = ~(-1 << *(v13 + 32));
      while (1)
      {
        a2 = v15 & v16;
        if (((*(v13 + 56 + (((v15 & v16) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v15 & v16)) & 1) == 0)
        {
          break;
        }

        (*(v7 + 16))(v10, *(v13 + 48) + *(v7 + 72) * a2, v6);
        sub_220D14970(&qword_27CF95528);
        v17 = sub_220DC05B0();
        (*(v7 + 8))(v10, v6);
        if (v17)
        {
          goto LABEL_16;
        }

        v15 = a2 + 1;
      }

      v3 = v23;
      goto LABEL_13;
    }

    sub_220D13274();
  }

LABEL_13:
  v18 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v7 + 32))(*(v18 + 48) + *(v7 + 72) * a2, v24, v6);
  v20 = *(v18 + 16);
  v21 = __OFADD__(v20, 1);
  v22 = v20 + 1;
  if (v21)
  {
    __break(1u);
LABEL_16:
    result = sub_220DC0CB0();
    __break(1u);
  }

  else
  {
    *(v18 + 16) = v22;
  }

  return result;
}

uint64_t sub_220D1310C(uint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 <= v6 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_220D12A38(v6 + 1);
      goto LABEL_10;
    }

    if (v7 <= v6)
    {
      sub_220D13A2C(v6 + 1);
LABEL_10:
      v12 = *v3;
      v13 = *(*v3 + 40);
      result = sub_220DC0CD0();
      v14 = ~(-1 << *(v12 + 32));
      while (1)
      {
        a2 = result & v14;
        if (((*(v12 + 56 + (((result & v14) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (result & v14)) & 1) == 0)
        {
          goto LABEL_7;
        }

        if (*(*(v12 + 48) + 8 * a2) == v5)
        {
          goto LABEL_15;
        }

        result = a2 + 1;
      }
    }

    result = sub_220D134A8();
  }

LABEL_7:
  v8 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v8 + 48) + 8 * a2) = v5;
  v9 = *(v8 + 16);
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
LABEL_15:
    result = sub_220DC0CB0();
    __break(1u);
  }

  else
  {
    *(v8 + 16) = v11;
  }

  return result;
}

uint64_t sub_220D13210(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else if (a2)
  {
    v3 = (a2 + 1) & 0xFFFFFFFFFFFFFFFELL;
    v4 = vdupq_n_s64(a2 - 1);
    v5 = xmmword_220DC3060;
    v6 = (a3 + 8);
    v7 = vdupq_n_s64(2uLL);
    do
    {
      v8 = vmovn_s64(vcgeq_u64(v4, v5));
      if (v8.i8[0])
      {
        *(v6 - 1) = result;
      }

      if (v8.i8[4])
      {
        *v6 = result;
      }

      v5 = vaddq_s64(v5, v7);
      v6 += 2;
      v3 -= 2;
    }

    while (v3);
  }

  return result;
}

void *sub_220D13274()
{
  v1 = v0;
  v2 = sub_220DBE560();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95858, &qword_220DC3178);
  v7 = *v0;
  v8 = sub_220DC0B40();
  v9 = v8;
  if (*(v7 + 16))
  {
    v23 = v1;
    result = (v8 + 56);
    v11 = ((1 << *(v9 + 32)) + 63) >> 6;
    if (v9 != v7 || result >= v7 + 56 + 8 * v11)
    {
      result = memmove(result, (v7 + 56), 8 * v11);
    }

    v13 = 0;
    *(v9 + 16) = *(v7 + 16);
    v14 = 1 << *(v7 + 32);
    v15 = -1;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    v16 = v15 & *(v7 + 56);
    v17 = (v14 + 63) >> 6;
    v24 = v3 + 32;
    for (i = v3 + 16; v16; result = (*(v3 + 32))(*(v9 + 48) + v21, v6, v2))
    {
      v18 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_17:
      v21 = *(v3 + 72) * (v18 | (v13 << 6));
      (*(v3 + 16))(v6, *(v7 + 48) + v21, v2);
    }

    v19 = v13;
    while (1)
    {
      v13 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v13 >= v17)
      {

        v1 = v23;
        goto LABEL_21;
      }

      v20 = *(v7 + 56 + 8 * v13);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v1 = v9;
  }

  return result;
}

void *sub_220D134A8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95850, &qword_220DC3170);
  v2 = *v0;
  v3 = sub_220DC0B40();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_220D135E8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95848, &unk_220DC3148);
  v2 = *v0;
  v3 = sub_220DC0B40();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + v14) = *(*(v2 + 48) + v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_220D13728(uint64_t a1)
{
  v2 = v1;
  v37 = sub_220DBE560();
  v4 = *(v37 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v37);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95858, &qword_220DC3178);
  v10 = sub_220DC0B50();
  result = v8;
  if (*(v8 + 16))
  {
    v32 = v2;
    v12 = 0;
    v13 = v8 + 56;
    v14 = 1 << *(v8 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v8 + 56);
    v17 = (v14 + 63) >> 6;
    v35 = v4 + 16;
    v36 = v4;
    v18 = v10 + 56;
    v33 = (v4 + 32);
    v34 = result;
    if (v16)
    {
      while (1)
      {
        v19 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_14:
        v22 = *(v36 + 72);
        (*(v36 + 16))(v7, *(result + 48) + v22 * (v19 | (v12 << 6)), v37);
        v23 = *(v10 + 40);
        sub_220D14970(&qword_280FA77A0);
        result = sub_220DC0550();
        v24 = -1 << *(v10 + 32);
        v25 = result & ~v24;
        v26 = v25 >> 6;
        if (((-1 << v25) & ~*(v18 + 8 * (v25 >> 6))) == 0)
        {
          break;
        }

        v27 = __clz(__rbit64((-1 << v25) & ~*(v18 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
        *(v18 + ((v27 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v27;
        (*v33)(*(v10 + 48) + v27 * v22, v7, v37);
        ++*(v10 + 16);
        result = v34;
        if (!v16)
        {
          goto LABEL_9;
        }
      }

      v28 = 0;
      v29 = (63 - v24) >> 6;
      while (++v26 != v29 || (v28 & 1) == 0)
      {
        v30 = v26 == v29;
        if (v26 == v29)
        {
          v26 = 0;
        }

        v28 |= v30;
        v31 = *(v18 + 8 * v26);
        if (v31 != -1)
        {
          v27 = __clz(__rbit64(~v31)) + (v26 << 6);
          goto LABEL_23;
        }
      }
    }

    else
    {
LABEL_9:
      v20 = v12;
      while (1)
      {
        v12 = v20 + 1;
        if (__OFADD__(v20, 1))
        {
          break;
        }

        if (v12 >= v17)
        {

          v2 = v32;
          goto LABEL_27;
        }

        v21 = *(v13 + 8 * v12);
        ++v20;
        if (v21)
        {
          v19 = __clz(__rbit64(v21));
          v16 = (v21 - 1) & v21;
          goto LABEL_14;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_27:
    *v2 = v10;
  }

  return result;
}

uint64_t sub_220D13A2C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95850, &qword_220DC3170);
  result = sub_220DC0B50();
  v6 = result;
  if (*(v3 + 16))
  {
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    if (v10)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v10));
        v10 &= v10 - 1;
LABEL_14:
        v16 = *(*(v3 + 48) + 8 * (v13 | (v7 << 6)));
        v17 = *(v6 + 40);
        result = sub_220DC0CD0();
        v18 = -1 << *(v6 + 32);
        v19 = result & ~v18;
        v20 = v19 >> 6;
        if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
        {
          break;
        }

        v21 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
        *(v12 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
        *(*(v6 + 48) + 8 * v21) = v16;
        ++*(v6 + 16);
        if (!v10)
        {
          goto LABEL_9;
        }
      }

      v22 = 0;
      v23 = (63 - v18) >> 6;
      while (++v20 != v23 || (v22 & 1) == 0)
      {
        v24 = v20 == v23;
        if (v20 == v23)
        {
          v20 = 0;
        }

        v22 |= v24;
        v25 = *(v12 + 8 * v20);
        if (v25 != -1)
        {
          v21 = __clz(__rbit64(~v25)) + (v20 << 6);
          goto LABEL_23;
        }
      }
    }

    else
    {
LABEL_9:
      v14 = v7;
      while (1)
      {
        v7 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          break;
        }

        if (v7 >= v11)
        {
          goto LABEL_25;
        }

        v15 = *(v3 + 56 + 8 * v7);
        ++v14;
        if (v15)
        {
          v13 = __clz(__rbit64(v15));
          v10 = (v15 - 1) & v15;
          goto LABEL_14;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {
LABEL_25:

    *v2 = v6;
  }

  return result;
}

uint64_t sub_220D13C18(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95848, &unk_220DC3148);
  result = sub_220DC0B50();
  v6 = result;
  if (*(v3 + 16))
  {
    v26 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    if (v10)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v10));
        v10 &= v10 - 1;
LABEL_14:
        v16 = *(*(v3 + 48) + (v13 | (v7 << 6)));
        v17 = *(v6 + 40);
        sub_220DC0CE0();
        MEMORY[0x223D98920](v16);
        result = sub_220DC0D20();
        v18 = -1 << *(v6 + 32);
        v19 = result & ~v18;
        v20 = v19 >> 6;
        if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
        {
          break;
        }

        v21 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
        *(v12 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
        *(*(v6 + 48) + v21) = v16;
        ++*(v6 + 16);
        if (!v10)
        {
          goto LABEL_9;
        }
      }

      v22 = 0;
      v23 = (63 - v18) >> 6;
      while (++v20 != v23 || (v22 & 1) == 0)
      {
        v24 = v20 == v23;
        if (v20 == v23)
        {
          v20 = 0;
        }

        v22 |= v24;
        v25 = *(v12 + 8 * v20);
        if (v25 != -1)
        {
          v21 = __clz(__rbit64(~v25)) + (v20 << 6);
          goto LABEL_23;
        }
      }
    }

    else
    {
LABEL_9:
      v14 = v7;
      while (1)
      {
        v7 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          break;
        }

        if (v7 >= v11)
        {

          v2 = v26;
          goto LABEL_27;
        }

        v15 = *(v3 + 56 + 8 * v7);
        ++v14;
        if (v15)
        {
          v13 = __clz(__rbit64(v15));
          v10 = (v15 - 1) & v15;
          goto LABEL_14;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_27:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_220D13E34(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_220D81A04(v2);
    v2 = v3;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  result = sub_220D140E0(v6);
  *a1 = v2;
  return result;
}

unint64_t sub_220D13EA0()
{
  result = qword_27CF957C0[0];
  if (!qword_27CF957C0[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF957B8, &qword_220DC3078);
    result = swift_getWitnessTable();
    atomic_store(result, qword_27CF957C0);
  }

  return result;
}

uint64_t sub_220D13F54()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_220D13FD8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  v7 = *(sub_220DBF780() - 8);
  v8 = (v2 + ((*(v7 + 80) + 80) & ~*(v7 + 80)));

  return sub_220D11EE4(a1, v2 + 32, v8, v5, v6, a2);
}

uint64_t sub_220D14070(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF957B8, &qword_220DC3078);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_220D140E0(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_220DC0C60();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        v6 = sub_220DC0760();
        *(v6 + 16) = v5;
      }

      v7[0] = (v6 + 32);
      v7[1] = v5;
      sub_220D14230(v7, v8, a1, v4);
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
    return sub_220D141D4(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_220D141D4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 8 * a3 - 8;
    v6 = result - a3;
    while (2)
    {
      v7 = *(v4 + 8 * a3);
      v8 = v6;
      v9 = v5;
      do
      {
        v10 = *v9;
        if (v7 >= *v9)
        {
          break;
        }

        if (!v4)
        {
          __break(1u);
          return result;
        }

        *v9 = v7;
        v9[1] = v10;
        --v9;
      }

      while (!__CFADD__(v8++, 1));
      ++a3;
      v5 += 8;
      --v6;
      if (a3 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_220D14230(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v78 = MEMORY[0x277D84F90];
  v5 = a3[1];
  if (v5 >= 1)
  {
    v6 = 0;
    v7 = MEMORY[0x277D84F90];
    v73 = a4;
    while (1)
    {
      v8 = v6 + 1;
      if (v6 + 1 < v5)
      {
        v9 = *(*a3 + 8 * v8);
        v10 = *(*a3 + 8 * v6);
        v11 = v6 + 2;
        v12 = v9;
        while (1)
        {
          v13 = v11;
          if (v11 >= v5)
          {
            break;
          }

          v14 = (v9 < v10) ^ (*(*a3 + 8 * v11++) >= v12);
          v12 = *(*a3 + 8 * v13);
          if ((v14 & 1) == 0)
          {
            v8 = v13;
            goto LABEL_9;
          }
        }

        v8 = v5;
LABEL_9:
        if (v9 < v10)
        {
          if (v8 < v6)
          {
            goto LABEL_108;
          }

          if (v6 < v8)
          {
            if (v5 >= v13)
            {
              v5 = v13;
            }

            v15 = v5 - 1;
            v16 = v6;
            do
            {
              if (v16 != v15)
              {
                v17 = *a3;
                if (!*a3)
                {
                  goto LABEL_113;
                }

                v18 = *(v17 + 8 * v16);
                *(v17 + 8 * v16) = *(v17 + 8 * v15);
                *(v17 + 8 * v15) = v18;
              }

              v19 = ++v16 < v15--;
            }

            while (v19);
            v5 = a3[1];
          }
        }
      }

      if (v8 < v5)
      {
        if (__OFSUB__(v8, v6))
        {
          goto LABEL_107;
        }

        if (v8 - v6 < a4)
        {
          if (__OFADD__(v6, a4))
          {
            goto LABEL_109;
          }

          if (v6 + a4 < v5)
          {
            v5 = v6 + a4;
          }

          if (v5 < v6)
          {
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
            return;
          }

          if (v8 != v5)
          {
            v20 = *a3;
            v21 = *a3 + 8 * v8 - 8;
            v22 = v6 - v8;
            do
            {
              v23 = *(v20 + 8 * v8);
              v24 = v22;
              v25 = v21;
              do
              {
                v26 = *v25;
                if (v23 >= *v25)
                {
                  break;
                }

                if (!v20)
                {
                  goto LABEL_111;
                }

                *v25 = v23;
                v25[1] = v26;
                --v25;
              }

              while (!__CFADD__(v24++, 1));
              ++v8;
              v21 += 8;
              --v22;
            }

            while (v8 != v5);
            v8 = v5;
          }
        }
      }

      if (v8 < v6)
      {
        goto LABEL_106;
      }

      v75 = v8;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v70 = v7[2];
        sub_220D562D4();
        v7 = v71;
      }

      v28 = v7[2];
      v29 = v28 + 1;
      if (v28 >= v7[3] >> 1)
      {
        sub_220D562D4();
        v7 = v72;
      }

      v7[2] = v29;
      v30 = v7 + 4;
      v31 = &v7[2 * v28 + 4];
      *v31 = v6;
      v31[1] = v8;
      v76 = *a1;
      if (!*a1)
      {
        goto LABEL_114;
      }

      if (v28)
      {
        while (1)
        {
          v32 = v29 - 1;
          v33 = &v30[2 * v29 - 2];
          v34 = &v7[2 * v29];
          if (v29 >= 4)
          {
            break;
          }

          if (v29 == 3)
          {
            v35 = v7[4];
            v36 = v7[5];
            v45 = __OFSUB__(v36, v35);
            v37 = v36 - v35;
            v38 = v45;
LABEL_56:
            if (v38)
            {
              goto LABEL_96;
            }

            v50 = *v34;
            v49 = v34[1];
            v51 = __OFSUB__(v49, v50);
            v52 = v49 - v50;
            v53 = v51;
            if (v51)
            {
              goto LABEL_99;
            }

            v54 = v33[1];
            v55 = v54 - *v33;
            if (__OFSUB__(v54, *v33))
            {
              goto LABEL_102;
            }

            if (__OFADD__(v52, v55))
            {
              goto LABEL_104;
            }

            if (v52 + v55 >= v37)
            {
              if (v37 < v55)
              {
                v32 = v29 - 2;
              }

              goto LABEL_78;
            }

            goto LABEL_71;
          }

          if (v29 < 2)
          {
            goto LABEL_98;
          }

          v57 = *v34;
          v56 = v34[1];
          v45 = __OFSUB__(v56, v57);
          v52 = v56 - v57;
          v53 = v45;
LABEL_71:
          if (v53)
          {
            goto LABEL_101;
          }

          v59 = *v33;
          v58 = v33[1];
          v45 = __OFSUB__(v58, v59);
          v60 = v58 - v59;
          if (v45)
          {
            goto LABEL_103;
          }

          if (v60 < v52)
          {
            goto LABEL_85;
          }

LABEL_78:
          if (v32 - 1 >= v29)
          {
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
            __break(1u);
LABEL_96:
            __break(1u);
LABEL_97:
            __break(1u);
LABEL_98:
            __break(1u);
LABEL_99:
            __break(1u);
LABEL_100:
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
            goto LABEL_110;
          }

          if (!*a3)
          {
            goto LABEL_112;
          }

          v64 = &v30[2 * v32 - 2];
          v65 = *v64;
          v66 = &v30[2 * v32];
          v67 = v66[1];
          sub_220D147FC((*a3 + 8 * *v64), (*a3 + 8 * *v66), (*a3 + 8 * v67), v76);
          if (v4)
          {
            goto LABEL_89;
          }

          if (v67 < v65)
          {
            goto LABEL_91;
          }

          v68 = v7;
          v69 = v7[2];
          if (v32 > v69)
          {
            goto LABEL_92;
          }

          *v64 = v65;
          v64[1] = v67;
          if (v32 >= v69)
          {
            goto LABEL_93;
          }

          v29 = v69 - 1;
          memmove(&v30[2 * v32], v66 + 2, 16 * (v69 - 1 - v32));
          v68[2] = v69 - 1;
          v19 = v69 > 2;
          v7 = v68;
          if (!v19)
          {
            goto LABEL_85;
          }
        }

        v39 = &v30[2 * v29];
        v40 = *(v39 - 8);
        v41 = *(v39 - 7);
        v45 = __OFSUB__(v41, v40);
        v42 = v41 - v40;
        if (v45)
        {
          goto LABEL_94;
        }

        v44 = *(v39 - 6);
        v43 = *(v39 - 5);
        v45 = __OFSUB__(v43, v44);
        v37 = v43 - v44;
        v38 = v45;
        if (v45)
        {
          goto LABEL_95;
        }

        v46 = v34[1];
        v47 = v46 - *v34;
        if (__OFSUB__(v46, *v34))
        {
          goto LABEL_97;
        }

        v45 = __OFADD__(v37, v47);
        v48 = v37 + v47;
        if (v45)
        {
          goto LABEL_100;
        }

        if (v48 >= v42)
        {
          v62 = *v33;
          v61 = v33[1];
          v45 = __OFSUB__(v61, v62);
          v63 = v61 - v62;
          if (v45)
          {
            goto LABEL_105;
          }

          if (v37 < v63)
          {
            v32 = v29 - 2;
          }

          goto LABEL_78;
        }

        goto LABEL_56;
      }

LABEL_85:
      v5 = a3[1];
      v6 = v75;
      a4 = v73;
      if (v75 >= v5)
      {
        v78 = v7;
        break;
      }
    }
  }

  if (!*a1)
  {
    goto LABEL_115;
  }

  sub_220D146D0(&v78, *a1, a3);
LABEL_89:
}

uint64_t sub_220D146D0(uint64_t *a1, char *a2, void *a3)
{
  v4 = a1;
  v5 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_14:
    result = sub_220D81650(v5);
    v5 = result;
  }

  v14 = v4;
  *v4 = v5;
  v7 = (v5 + 16);
  for (i = *(v5 + 16); ; *v7 = i)
  {
    v4 = (i - 2);
    if (i < 2)
    {
LABEL_10:
      *v14 = v5;
      return 1;
    }

    if (!*a3)
    {
      break;
    }

    v9 = (v5 + 16 * i);
    v10 = *v9;
    v11 = &v7[2 * i];
    v12 = v11[1];
    sub_220D147FC((*a3 + 8 * *v9), (*a3 + 8 * *v11), (*a3 + 8 * v12), a2);
    if (v3)
    {
      goto LABEL_10;
    }

    if (v12 < v10)
    {
      __break(1u);
LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    if (v4 >= *v7)
    {
      goto LABEL_12;
    }

    *v9 = v10;
    v9[1] = v12;
    v13 = *v7 - i;
    if (*v7 < i)
    {
      goto LABEL_13;
    }

    i = *v7 - 1;
    result = memmove(v11, v11 + 2, 16 * v13);
  }

  *v14 = v5;
  __break(1u);
  return result;
}

uint64_t sub_220D147FC(char *a1, char *a2, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = (a2 - a1) / 8;
  v9 = (a3 - a2) / 8;
  if (v8 < v9)
  {
    sub_220CFB4F8(a1, (a2 - a1) / 8, a4);
    v10 = &v4[8 * v8];
    while (1)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_28;
      }

      v12 = *v6;
      if (*v6 >= *v4)
      {
        break;
      }

      v13 = v7 == v6;
      v6 += 8;
      if (!v13)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 8;
    }

    v12 = *v4;
    v13 = v7 == v4;
    v4 += 8;
    if (v13)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = v12;
    goto LABEL_13;
  }

  sub_220CFB4F8(a2, (a3 - a2) / 8, a4);
  v10 = &v4[8 * v9];
LABEL_15:
  v14 = v6 - 8;
  for (v5 -= 8; v10 > v4 && v6 > v7; v5 -= 8)
  {
    v16 = *(v10 - 1);
    if (v16 < *v14)
    {
      v13 = v5 + 8 == v6;
      v6 -= 8;
      if (!v13)
      {
        *v5 = *v14;
        v6 = v14;
      }

      goto LABEL_15;
    }

    if (v10 != v5 + 8)
    {
      *v5 = v16;
    }

    v10 -= 8;
  }

LABEL_28:
  v17 = (v10 - v4) / 8;
  if (v6 != v4 || v6 >= &v4[8 * v17])
  {
    memmove(v6, v4, 8 * v17);
  }

  return 1;
}

uint64_t sub_220D14970(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_220DBE560();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_220D149B4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

Swift::String_optional __swiftcall Double.formatTimeDuration()()
{
  v1 = v0;
  sub_220D14AE0();
  v2 = sub_220DC09C0();
  v3 = [v2 stringFromTimeInterval_];

  if (v3)
  {
    v4 = sub_220DC0620();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  v7 = v4;
  v8 = v6;
  result.value._object = v8;
  result.value._countAndFlagsBits = v7;
  return result;
}

unint64_t sub_220D14AE0()
{
  result = qword_27CF95860;
  if (!qword_27CF95860)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27CF95860);
  }

  return result;
}

uint64_t Double.makeOverviewTableRowViewModel(title:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95348, &qword_220DC22F0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = (&v17 - v8);
  v10 = Double.formatTimeDuration()();
  if (v10.value._object)
  {
    *v9 = v10;
    LOBYTE(v9[1].value._countAndFlagsBits) = 1;
    v11 = type metadata accessor for OverviewTableValueString();
    swift_storeEnumTagMultiPayload();
    v12 = v9;
    v13 = 0;
    v14 = v11;
  }

  else
  {
    v14 = type metadata accessor for OverviewTableValueString();
    v12 = v9;
    v13 = 1;
  }

  __swift_storeEnumTagSinglePayload(v12, v13, 1, v14);
  *a3 = a1;
  a3[1] = a2;
  a3[2] = a1;
  a3[3] = a2;
  v15 = type metadata accessor for OverviewTableRowViewModel();
  sub_220D01ABC(v9, a3 + *(v15 + 24));
  *(a3 + *(v15 + 28)) = 0;
  return swift_bridgeObjectRetain_n();
}

uint64_t DetailChartExtrema.minValue.getter()
{
  result = *v0;
  v2 = *(v0 + 8);
  return result;
}

uint64_t DetailChartExtrema.maxValue.getter()
{
  result = *(v0 + 16);
  v2 = *(v0 + 24);
  return result;
}

uint64_t DetailChartExtrema.minSecondValue.getter()
{
  result = *(v0 + 32);
  v2 = *(v0 + 40);
  return result;
}

uint64_t DetailChartExtrema.maxSecondValue.getter()
{
  result = *(v0 + 48);
  v2 = *(v0 + 56);
  return result;
}

uint64_t DetailChartExtrema.minThirdValue.getter()
{
  result = *(v0 + 64);
  v2 = *(v0 + 72);
  return result;
}

uint64_t DetailChartExtrema.maxThirdValue.getter()
{
  result = *(v0 + 80);
  v2 = *(v0 + 88);
  return result;
}

uint64_t static DetailChartExtrema.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  v8 = *(a1 + 64);
  v9 = *(a1 + 72);
  v10 = *(a1 + 80);
  v11 = *(a1 + 88);
  v12 = *(a2 + 88);
  if (*(a1 + 8))
  {
    if (!*(a2 + 8))
    {
      return 0;
    }
  }

  else
  {
    if (*a1 == *a2)
    {
      v13 = *(a2 + 8);
    }

    else
    {
      v13 = 1;
    }

    if (v13)
    {
      return 0;
    }
  }

  if (v3)
  {
    if (!*(a2 + 24))
    {
      return 0;
    }
  }

  else
  {
    if (v2 == *(a2 + 16))
    {
      v14 = *(a2 + 24);
    }

    else
    {
      v14 = 1;
    }

    if (v14)
    {
      return 0;
    }
  }

  if (v5)
  {
    if (!*(a2 + 40))
    {
      return 0;
    }
  }

  else
  {
    if (v4 == *(a2 + 32))
    {
      v15 = *(a2 + 40);
    }

    else
    {
      v15 = 1;
    }

    if (v15)
    {
      return 0;
    }
  }

  if (v7)
  {
    if (!*(a2 + 56))
    {
      return 0;
    }
  }

  else
  {
    if (v6 == *(a2 + 48))
    {
      v16 = *(a2 + 56);
    }

    else
    {
      v16 = 1;
    }

    if (v16)
    {
      return 0;
    }
  }

  if (v9)
  {
    if (!*(a2 + 72))
    {
      return 0;
    }
  }

  else
  {
    if (v8 == *(a2 + 64))
    {
      v17 = *(a2 + 72);
    }

    else
    {
      v17 = 1;
    }

    if (v17)
    {
      return 0;
    }
  }

  if (v11)
  {
    if ((*(a2 + 88) & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (v10 == *(a2 + 80))
    {
      v19 = *(a2 + 88);
    }

    else
    {
      v19 = 1;
    }

    if (v19)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t DetailChartExtrema.hash(into:)()
{
  v26 = v0[2];
  v1 = *(v0 + 24);
  v2 = v0[4];
  v3 = *(v0 + 40);
  v4 = v0[6];
  v5 = *(v0 + 56);
  v6 = v0[8];
  v7 = *(v0 + 72);
  v8 = v0[10];
  v9 = *(v0 + 88);
  if (*(v0 + 8) == 1)
  {
    sub_220DC0D00();
    if (!v1)
    {
      goto LABEL_3;
    }

LABEL_27:
    sub_220DC0D00();
    if (!v3)
    {
      goto LABEL_7;
    }

LABEL_28:
    sub_220DC0D00();
    if (!v5)
    {
      goto LABEL_11;
    }

LABEL_29:
    sub_220DC0D00();
    if (!v7)
    {
      goto LABEL_15;
    }

    goto LABEL_30;
  }

  v25 = *(v0 + 40);
  v16 = v0[4];
  v17 = *(v0 + 56);
  v18 = v0[6];
  v19 = *(v0 + 72);
  v20 = v0[8];
  v21 = *(v0 + 88);
  v22 = v0[10];
  v23 = *v0;
  sub_220DC0D00();
  if ((v23 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v24 = v23;
  }

  else
  {
    v24 = 0;
  }

  v8 = v22;
  v9 = v21;
  v6 = v20;
  v7 = v19;
  v4 = v18;
  v5 = v17;
  v2 = v16;
  v3 = v25;
  MEMORY[0x223D98940](v24);
  if (v1)
  {
    goto LABEL_27;
  }

LABEL_3:
  sub_220DC0D00();
  if ((v26 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v10 = v26;
  }

  else
  {
    v10 = 0;
  }

  MEMORY[0x223D98940](v10);
  if (v3)
  {
    goto LABEL_28;
  }

LABEL_7:
  sub_220DC0D00();
  if ((v2 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v11 = v2;
  }

  else
  {
    v11 = 0;
  }

  MEMORY[0x223D98940](v11);
  if (v5)
  {
    goto LABEL_29;
  }

LABEL_11:
  sub_220DC0D00();
  if ((v4 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v12 = v4;
  }

  else
  {
    v12 = 0;
  }

  MEMORY[0x223D98940](v12);
  if (!v7)
  {
LABEL_15:
    sub_220DC0D00();
    if ((v6 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v13 = v6;
    }

    else
    {
      v13 = 0;
    }

    MEMORY[0x223D98940](v13);
    if (!v9)
    {
      goto LABEL_19;
    }

    return sub_220DC0D00();
  }

LABEL_30:
  sub_220DC0D00();
  if (v9)
  {
    return sub_220DC0D00();
  }

LABEL_19:
  sub_220DC0D00();
  if ((v8 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v14 = v8;
  }

  else
  {
    v14 = 0;
  }

  return MEMORY[0x223D98940](v14);
}