unint64_t sub_220D8E000()
{
  result = qword_27CF96168;
  if (!qword_27CF96168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF96168);
  }

  return result;
}

unint64_t sub_220D8E058()
{
  result = qword_27CF96170;
  if (!qword_27CF96170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF96170);
  }

  return result;
}

unint64_t sub_220D8E0B0()
{
  result = qword_27CF96178;
  if (!qword_27CF96178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF96178);
  }

  return result;
}

unint64_t sub_220D8E108()
{
  result = qword_27CF96180;
  if (!qword_27CF96180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF96180);
  }

  return result;
}

unint64_t sub_220D8E160()
{
  result = qword_27CF96188;
  if (!qword_27CF96188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF96188);
  }

  return result;
}

unint64_t sub_220D8E1B8()
{
  result = qword_27CF96190;
  if (!qword_27CF96190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF96190);
  }

  return result;
}

unint64_t sub_220D8E210()
{
  result = qword_27CF96198;
  if (!qword_27CF96198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF96198);
  }

  return result;
}

unint64_t sub_220D8E268()
{
  result = qword_27CF961A0;
  if (!qword_27CF961A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF961A0);
  }

  return result;
}

unint64_t sub_220D8E2C0()
{
  result = qword_27CF961A8;
  if (!qword_27CF961A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF961A8);
  }

  return result;
}

unint64_t sub_220D8E318()
{
  result = qword_27CF961B0;
  if (!qword_27CF961B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF961B0);
  }

  return result;
}

unint64_t sub_220D8E370()
{
  result = qword_27CF961B8;
  if (!qword_27CF961B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF961B8);
  }

  return result;
}

unint64_t sub_220D8E3C8()
{
  result = qword_27CF961C0;
  if (!qword_27CF961C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF961C0);
  }

  return result;
}

unint64_t sub_220D8E420()
{
  result = qword_27CF961C8;
  if (!qword_27CF961C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF961C8);
  }

  return result;
}

unint64_t sub_220D8E478()
{
  result = qword_27CF961D0;
  if (!qword_27CF961D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF961D0);
  }

  return result;
}

unint64_t sub_220D8E4D0()
{
  result = qword_27CF961D8;
  if (!qword_27CF961D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF961D8);
  }

  return result;
}

unint64_t sub_220D8E528()
{
  result = qword_27CF961E0;
  if (!qword_27CF961E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF961E0);
  }

  return result;
}

unint64_t sub_220D8E580()
{
  result = qword_27CF961E8;
  if (!qword_27CF961E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF961E8);
  }

  return result;
}

unint64_t sub_220D8E5D8()
{
  result = qword_27CF961F0;
  if (!qword_27CF961F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF961F0);
  }

  return result;
}

uint64_t sub_220D8E630(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  if (result < a5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if ((a6 >> 1) < result || (a6 >> 1) < a2)
  {
    goto LABEL_10;
  }

  if (a2 < a5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
    return swift_unknownObjectRetain();
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t PrecipitationComponentDescriptionContext.currentWeather.getter()
{
  OUTLINED_FUNCTION_3();
  v2 = sub_220DBEAD0();
  v3 = OUTLINED_FUNCTION_6(v2);
  v5 = *(v4 + 16);

  return v5(v0, v1, v3);
}

uint64_t PrecipitationComponentDescriptionContext.dailyForecast.getter()
{
  OUTLINED_FUNCTION_3();
  v0 = *(type metadata accessor for PrecipitationComponentDescriptionContext() + 20);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95798, &unk_220DC3040);
  OUTLINED_FUNCTION_6(v1);
  v3 = *(v2 + 16);
  v4 = OUTLINED_FUNCTION_2_10();

  return v5(v4);
}

uint64_t PrecipitationComponentDescriptionContext.hourlyForecast.getter()
{
  OUTLINED_FUNCTION_3();
  v0 = *(type metadata accessor for PrecipitationComponentDescriptionContext() + 24);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95270, &unk_220DC3AF0);
  OUTLINED_FUNCTION_6(v1);
  v3 = *(v2 + 16);
  v4 = OUTLINED_FUNCTION_2_10();

  return v5(v4);
}

uint64_t PrecipitationComponentDescriptionContext.timeZone.getter()
{
  OUTLINED_FUNCTION_3();
  v0 = *(type metadata accessor for PrecipitationComponentDescriptionContext() + 28);
  v1 = sub_220DBE740();
  OUTLINED_FUNCTION_6(v1);
  v3 = *(v2 + 16);
  v4 = OUTLINED_FUNCTION_2_10();

  return v5(v4);
}

uint64_t PrecipitationComponentDescriptionContext.heroStringPrecipitationType.getter()
{
  OUTLINED_FUNCTION_3();
  result = type metadata accessor for PrecipitationComponentDescriptionContext();
  *v0 = *(v1 + *(result + 32));
  return result;
}

uint64_t SunriseSunsetPolarSunEventStringBuilder.makeString(for:currentDate:nextEvent:timeZone:)(unsigned __int8 *a1, uint64_t a2, unsigned __int8 *a3, uint64_t a4)
{
  v81 = a4;
  v88 = a1;
  v89 = a2;
  v5 = sub_220DBF410();
  v6 = OUTLINED_FUNCTION_0(v5);
  v79 = v7;
  v80 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_1();
  v78 = v11 - v10;
  v12 = sub_220DC03C0();
  v13 = OUTLINED_FUNCTION_0(v12);
  v84 = v14;
  v85 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_1();
  v83 = v18 - v17;
  v87 = sub_220DBE6E0();
  v19 = OUTLINED_FUNCTION_0(v87);
  v21 = v20;
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_1();
  v26 = v25 - v24;
  v27 = sub_220DBE740();
  v28 = OUTLINED_FUNCTION_0(v27);
  v30 = v29;
  v32 = *(v31 + 64);
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_1();
  v35 = v34 - v33;
  v36 = sub_220DBE560();
  v37 = OUTLINED_FUNCTION_0(v36);
  v86 = v38;
  v40 = *(v39 + 64);
  v41 = MEMORY[0x28223BE20](v37);
  v43 = &v78 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = MEMORY[0x28223BE20](v41);
  v46 = &v78 - v45;
  MEMORY[0x28223BE20](v44);
  v48 = &v78 - v47;
  v82 = *v88;
  v88 = a3;
  sub_220DC03B0();
  sub_220DBE730();
  sub_220DBE3E0();
  v49 = v27;
  v50 = v86;
  (*(v30 + 8))(v35, v49);
  sub_220DBE6A0();
  sub_220DBE390();
  (*(v21 + 8))(v26, v87);
  v51 = *(v50 + 8);
  v51(v43, v36);
  v52 = sub_220DBE440();
  v51(v46, v36);
  v51(v48, v36);
  if ((v52 & 1) == 0)
  {
    if (v82)
    {
      v52 = "cloud.sun.moon.fill";
      if (qword_280FA6600 == -1)
      {
        goto LABEL_12;
      }
    }

    else if (qword_280FA6600 == -1)
    {
LABEL_12:
      OUTLINED_FUNCTION_2_0();
      OUTLINED_FUNCTION_6_0();
      sub_220DBE240();
      OUTLINED_FUNCTION_6_22();
      return v52;
    }

    OUTLINED_FUNCTION_10();
    goto LABEL_12;
  }

  v53 = v84;
  v54 = v85;
  (*(v84 + 16))(v83, v88, v85);
  v55 = v53[11];
  v56 = OUTLINED_FUNCTION_26_0();
  v58 = v57(v56);
  if (v58 == *MEMORY[0x277D7B448])
  {
    v59 = v53[12];
    v60 = OUTLINED_FUNCTION_26_0();
    v61(v60);
    v62 = OUTLINED_FUNCTION_7_22();
    v63(v62);
    v52 = v48;
    sub_220DBE4D0();
    OUTLINED_FUNCTION_6_22();
    if (qword_280FA6600 == -1)
    {
      goto LABEL_10;
    }

    goto LABEL_19;
  }

  if (v58 == *MEMORY[0x277D7B440])
  {
    v64 = v53[12];
    v65 = OUTLINED_FUNCTION_26_0();
    v66(v65);
    v67 = OUTLINED_FUNCTION_7_22();
    v68(v67);
    v52 = v48;
    sub_220DBE4D0();
    OUTLINED_FUNCTION_6_22();
    if (qword_280FA6600 == -1)
    {
LABEL_10:
      OUTLINED_FUNCTION_5_28();
      OUTLINED_FUNCTION_6_0();
      sub_220DBE240();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94FB8, &unk_220DC1E30);
      v69 = swift_allocObject();
      *(v69 + 16) = xmmword_220DC17A0;
      *(v69 + 56) = MEMORY[0x277D837D0];
      *(v69 + 64) = sub_220CEFDB0();
      *(v69 + 32) = v52;
      *(v69 + 40) = v54;
      sub_220DC05F0();
      OUTLINED_FUNCTION_6_22();

      v51(v48, v36);
      return v52;
    }

LABEL_19:
    OUTLINED_FUNCTION_10();
    goto LABEL_10;
  }

  v71 = v78;
  sub_220DBF3D0();
  v72 = sub_220DBF3F0();
  v73 = sub_220DC0980();
  if (os_log_type_enabled(v72, v73))
  {
    v74 = swift_slowAlloc();
    *v74 = 0;
    _os_log_impl(&dword_220CD1000, v72, v73, "SunriseSunsetPolarSunEventStringBuilder unhandled case", v74, 2u);
    MEMORY[0x223D98FB0](v74, -1, -1);
  }

  (*(v79 + 8))(v71, v80);
  v75 = v53[1];
  v76 = OUTLINED_FUNCTION_26_0();
  v77(v76);
  return 0;
}

uint64_t SunriseSunsetPolarSunEventStringBuilder.makeTitle(currentDate:nextEvent:timeZone:)(uint64_t a1, uint64_t a2)
{
  v75 = a1;
  v74 = sub_220DBE1A0();
  v3 = OUTLINED_FUNCTION_0(v74);
  v76 = v4;
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v3);
  v73 = &v64 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = &v64 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF951E0, &unk_220DC1D80);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v64 - v13;
  v15 = sub_220DBE560();
  v16 = OUTLINED_FUNCTION_0(v15);
  v18 = v17;
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_1();
  v23 = v22 - v21;
  v24 = sub_220DBE6E0();
  v25 = OUTLINED_FUNCTION_0(v24);
  v27 = v26;
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_1();
  v32 = v31 - v30;
  sub_220DBE600();
  sub_220D56F0C(a2, v14);
  if (__swift_getEnumTagSinglePayload(v14, 1, v15) != 1)
  {
    v70 = v27;
    v71 = v24;
    v68 = v18;
    v69 = v15;
    (*(v18 + 32))(v23, v14, v15);
    v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF952F8, &unk_220DC5420);
    v38 = sub_220DBE6C0();
    OUTLINED_FUNCTION_0(v38);
    v40 = v39;
    v42 = *(v41 + 72);
    v43 = (*(v39 + 80) + 32) & ~*(v39 + 80);
    v66 = v37;
    v44 = swift_allocObject();
    v72 = xmmword_220DC17A0;
    *(v44 + 16) = xmmword_220DC17A0;
    v45 = *MEMORY[0x277CC9980];
    v65 = *(v40 + 104);
    v65(v44 + v43, v45, v38);
    sub_220CE05C8(v44);
    v46 = v23;
    v67 = v32;
    sub_220DBE620();

    v47 = sub_220DBE160();
    v49 = v48;
    v50 = *(v76 + 8);
    v51 = v10;
    v52 = v74;
    v76 += 8;
    v50(v51, v74);
    if (v49)
    {
      v47 = 0;
    }

    if (v47 <= 48)
    {
      v59 = v46;
      v32 = v67;
      if (qword_280FA6600 == -1)
      {
LABEL_14:
        OUTLINED_FUNCTION_2_0();
        OUTLINED_FUNCTION_6_0();
        sub_220DBE240();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94FB8, &unk_220DC1E30);
        v60 = swift_allocObject();
        v61 = MEMORY[0x277D83B88];
        *(v60 + 16) = v72;
        v62 = MEMORY[0x277D83C10];
        *(v60 + 56) = v61;
        *(v60 + 64) = v62;
        *(v60 + 32) = v47;
        v36 = sub_220DC05F0();

        (*(v68 + 8))(v59, v69);
        v27 = v70;
        v24 = v71;
        goto LABEL_15;
      }
    }

    else
    {
      v53 = swift_allocObject();
      *(v53 + 16) = v72;
      v65(v53 + v43, *MEMORY[0x277CC9968], v38);
      sub_220CE05C8(v53);
      v54 = v73;
      v55 = v67;
      sub_220DBE620();

      v56 = sub_220DBE150();
      v58 = v57;
      v50(v54, v52);
      if (v58)
      {
        v47 = 0;
      }

      else
      {
        v47 = v56;
      }

      v32 = v55;
      v59 = v46;
      if (qword_280FA6600 == -1)
      {
        goto LABEL_14;
      }
    }

    OUTLINED_FUNCTION_10();
    goto LABEL_14;
  }

  sub_220CD8040(v14);
  if (qword_280FA6600 != -1)
  {
    OUTLINED_FUNCTION_10();
  }

  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_6_0();
  sub_220DBE240();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94FB8, &unk_220DC1E30);
  v33 = swift_allocObject();
  v34 = MEMORY[0x277D83B88];
  *(v33 + 16) = xmmword_220DC17A0;
  v35 = MEMORY[0x277D83C10];
  *(v33 + 56) = v34;
  *(v33 + 64) = v35;
  *(v33 + 32) = 7;
  v36 = sub_220DC05F0();

LABEL_15:
  (*(v27 + 8))(v32, v24);
  return v36;
}

_BYTE *storeEnumTagSinglePayload for SunriseSunsetPolarSunEventStringBuilder(_BYTE *result, int a2, int a3)
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

BOOL static DetailChartGradientModel.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  v5 = *(a2 + 8);
  v4 = *(a2 + 16);
  v6 = MEMORY[0x223D97D10](*a1, *a2);
  result = 0;
  if ((v6 & 1) != 0 && v3 == v5)
  {
    return v2 == v4;
  }

  return result;
}

void DetailChartGradientModel.linearGradient(minValue:maxValue:colorSchemeContrast:)(uint64_t a1@<X8>)
{
  v3 = v1[1];
  v4 = v1[2];
  OUTLINED_FUNCTION_1_35();
  if (v9 != v10 || v7 > v8)
  {
    __break(1u);
  }

  else
  {
    v12 = *v1;
    if (v7 >= v8)
    {
    }

    else
    {
      OUTLINED_FUNCTION_0_21(v5, v6, v7, v8);
      sub_220DC00D0();
    }

    sub_220DC0190();
    sub_220DC0180();
    sub_220DBF7B0();
    *a1 = v13;
    *(a1 + 16) = v14;
    *(a1 + 32) = v15;
  }
}

uint64_t DetailChartGradientModel.init(gradient:startValue:endValue:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>)
{
  *a2 = result;
  *(a2 + 8) = a3;
  *(a2 + 16) = a4;
  return result;
}

void DetailChartGradientModel.fadingLinearGradient(minValue:maxValue:colorSchemeContrast:fadingFromMinimumValueOpacity:toMaximumValueOpacity:)(uint64_t a1@<X8>)
{
  v3 = v1[1];
  v4 = v1[2];
  OUTLINED_FUNCTION_1_35();
  if (v9 == v10 && v7 <= v8)
  {
    v12 = *v1;
    if (v7 >= v8)
    {
      v13 = *v1;
    }

    else
    {
      OUTLINED_FUNCTION_0_21(v5, v6, v7, v8);
      v12 = sub_220DC00D0();
    }

    sub_220D8FB58();

    v14 = sub_220DC0750();
    v15 = *(v12 + 16);
    if (v15 >= 2 && v14[2])
    {
      v16 = v14[4];
      v17 = v14[5];
      v18 = sub_220D10A50(v14);

      if (v18)
      {

        v32 = MEMORY[0x277D84F90];
        sub_220CFB854(0, v15, 0);
        v19 = v32;
        v20 = (v12 + 40);
        do
        {
          v21 = *(v20 - 1);
          v22 = *v20;

          sub_220DBFF10();
          v23 = sub_220DC00F0();
          v25 = v24;

          v27 = *(v32 + 16);
          v26 = *(v32 + 24);
          if (v27 >= v26 >> 1)
          {
            sub_220CFB854((v26 > 1), v27 + 1, 1);
          }

          *(v32 + 16) = v27 + 1;
          v28 = v32 + 16 * v27;
          *(v28 + 32) = v23;
          *(v28 + 40) = v25;
          v20 += 2;
          --v15;
        }

        while (v15);

        sub_220DC0100();
        sub_220DC0190();
        sub_220DC0180();
        sub_220DBF7B0();

        v30 = v33;
        v29 = v34;
        goto LABEL_18;
      }
    }

    else
    {
    }

    sub_220DC0190();
    sub_220DC0180();
    sub_220DBF7B0();
    v19 = v31;
    v30 = v33;
    v29 = v34;
LABEL_18:
    *a1 = v19;
    *(a1 + 24) = v29;
    *(a1 + 8) = v30;
    return;
  }

  __break(1u);
}

double sub_220D8FB4C@<D0>(uint64_t a1@<X0>, double *a2@<X8>)
{
  result = *(a1 + 8);
  *a2 = result;
  return result;
}

unint64_t sub_220D8FB58()
{
  result = qword_27CF961F8;
  if (!qword_27CF961F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF961F8);
  }

  return result;
}

uint64_t static DetailChartGradientModel.windGradientModel(startValue:windSpeedUnit:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>, double a3@<D0>)
{
  v30[1] = a1;
  v31 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95258, &unk_220DC2CF0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = v30 - v10;
  v32 = MEMORY[0x277D84F90];
  v12 = 12;
  result = sub_220CFB854(0, 12, 0);
  v14 = 0;
  v15 = 0;
  v16 = v32;
  while (!v15)
  {
    sub_220DBF140();
    result = sub_220DC00F0();
    v17 = result;
    v19 = v18;
    v32 = v16;
    v21 = *(v16 + 16);
    v20 = *(v16 + 24);
    if (v21 >= v20 >> 1)
    {
      result = sub_220CFB854((v20 > 1), v21 + 1, 1);
      v16 = v32;
    }

    *(v16 + 16) = v21 + 1;
    v22 = v16 + 16 * v21;
    *(v22 + 32) = v17;
    *(v22 + 40) = v19;
    v15 = v14 == 11;
    if (v14 == 11)
    {
      v14 = 0;
    }

    else if (__OFADD__(v14++, 1))
    {
      __break(1u);
      break;
    }

    if (!--v12)
    {
      v24 = sub_220DC0100();
      v25 = [objc_opt_self() milesPerHour];
      sub_220D3A5F8();
      sub_220DBE040();
      sub_220DBE130();
      v26 = *(v5 + 8);
      v26(v9, v4);
      sub_220DBE050();
      v28 = v27;
      result = (v26)(v11, v4);
      v29 = v31;
      *v31 = v24;
      *(v29 + 1) = a3;
      v29[2] = v28;
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_220D8FE20(uint64_t *a1, int a2)
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

uint64_t sub_220D8FE60(uint64_t result, int a2, int a3)
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

uint64_t TemperatureChartKind.title.getter()
{
  if (*v0)
  {
    OUTLINED_FUNCTION_29();
    if (!v1)
    {
      OUTLINED_FUNCTION_10();
    }
  }

  else
  {
    OUTLINED_FUNCTION_29();
    if (!v1)
    {
      OUTLINED_FUNCTION_10();
    }
  }

  OUTLINED_FUNCTION_8();
  return sub_220DBE240();
}

uint64_t TemperatureChartKind.summary.getter()
{
  if (*v0)
  {
    OUTLINED_FUNCTION_29();
    if (!v1)
    {
      OUTLINED_FUNCTION_10();
    }
  }

  else
  {
    OUTLINED_FUNCTION_29();
    if (!v1)
    {
      OUTLINED_FUNCTION_10();
    }
  }

  OUTLINED_FUNCTION_8();
  return sub_220DBE240();
}

uint64_t sub_220D900A4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6C6175746361 && a2 == 0xE600000000000000;
  if (v4 || (sub_220DC0CA0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6B694C736C656566 && a2 == 0xE900000000000065)
  {

    return 1;
  }

  else
  {
    v7 = sub_220DC0CA0();

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

uint64_t sub_220D901B0(char a1)
{
  sub_220DC0CE0();
  MEMORY[0x223D98920](a1 & 1);
  return sub_220DC0D20();
}

uint64_t sub_220D901F8(char a1)
{
  if (a1)
  {
    return 0x6B694C736C656566;
  }

  else
  {
    return 0x6C6175746361;
  }
}

uint64_t sub_220D90230(uint64_t a1)
{
  v2 = sub_220D90CA0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_220D9026C(uint64_t a1)
{
  v2 = sub_220D90CA0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_220D902CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_220D900A4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_220D902F4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_220D90170();
  *a1 = result;
  return result;
}

uint64_t sub_220D9031C(uint64_t a1)
{
  v2 = sub_220D90BF8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_220D90358(uint64_t a1)
{
  v2 = sub_220D90BF8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_220D90394(uint64_t a1)
{
  v2 = sub_220D90C4C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_220D903D0(uint64_t a1)
{
  v2 = sub_220D90C4C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t TemperatureChartKind.hashValue.getter()
{
  v1 = *v0;
  sub_220DC0CE0();
  MEMORY[0x223D98920](v1);
  return sub_220DC0D20();
}

uint64_t TemperatureChartKind.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF96200, &qword_220DC6B40);
  v4 = OUTLINED_FUNCTION_0(v3);
  v34 = v5;
  v35 = v4;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v8);
  v33 = &v31 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF96208, &qword_220DC6B48);
  v11 = OUTLINED_FUNCTION_0(v10);
  v31 = v12;
  v32 = v11;
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v15);
  v17 = &v31 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF96210, &qword_220DC6B50);
  OUTLINED_FUNCTION_0(v18);
  v20 = v19;
  v22 = *(v21 + 64);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v23);
  v25 = &v31 - v24;
  v26 = *v1;
  v27 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220D90BF8();
  sub_220DC0D40();
  v28 = (v20 + 8);
  if (v26)
  {
    v37 = 1;
    sub_220D90C4C();
    v29 = v33;
    sub_220DC0C40();
    (*(v34 + 8))(v29, v35);
  }

  else
  {
    v36 = 0;
    sub_220D90CA0();
    sub_220DC0C40();
    (*(v31 + 8))(v17, v32);
  }

  return (*v28)(v25, v18);
}

uint64_t TemperatureChartKind.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v50 = a2;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF96230, &qword_220DC6B58);
  OUTLINED_FUNCTION_0(v52);
  v49 = v3;
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v6);
  v8 = v45 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF96238, &qword_220DC6B60);
  OUTLINED_FUNCTION_0(v9);
  v48 = v10;
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v13);
  v15 = v45 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF96240, &unk_220DC6B68);
  OUTLINED_FUNCTION_0(v16);
  v51 = v17;
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v20);
  v22 = v45 - v21;
  v23 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220D90BF8();
  v24 = v53;
  sub_220DC0D30();
  if (v24)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v46 = v9;
  v47 = v15;
  v53 = a1;
  v25 = v52;
  v26 = sub_220DC0C30();
  result = sub_220D8DAA8(v26, 0);
  if (v29 == v30 >> 1)
  {
    v52 = result;
LABEL_9:
    v40 = sub_220DC0BA0();
    swift_allocError();
    v42 = v41;
    v43 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF96140, &qword_220DC6140) + 48);
    *v42 = &type metadata for TemperatureChartKind;
    sub_220DC0C10();
    sub_220DC0B90();
    (*(*(v40 - 8) + 104))(v42, *MEMORY[0x277D84160], v40);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v51 + 8))(v22, v16);
    a1 = v53;
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v45[1] = 0;
  if (v29 >= (v30 >> 1))
  {
    __break(1u);
  }

  else
  {
    v31 = *(v28 + v29);
    v32 = sub_220D8E62C(v29 + 1);
    v34 = v33;
    v36 = v35;
    swift_unknownObjectRelease();
    if (v34 != v36 >> 1)
    {
      v52 = v32;
      goto LABEL_9;
    }

    v54 = v31;
    if (v31)
    {
      v56 = 1;
      sub_220D90C4C();
      v37 = v8;
      OUTLINED_FUNCTION_4_23(&type metadata for TemperatureChartKind.FeelsLikeCodingKeys, &v56);
      v38 = v50;
      v39 = v51;
      swift_unknownObjectRelease();
      (*(v49 + 8))(v37, v25);
    }

    else
    {
      v55 = 0;
      sub_220D90CA0();
      v44 = v47;
      OUTLINED_FUNCTION_4_23(&type metadata for TemperatureChartKind.ActualCodingKeys, &v55);
      v38 = v50;
      v39 = v51;
      swift_unknownObjectRelease();
      (*(v48 + 8))(v44, v46);
    }

    (*(v39 + 8))(v22, v34);
    *v38 = v54;
    return __swift_destroy_boxed_opaque_existential_1(v53);
  }

  return result;
}

unint64_t sub_220D90BF8()
{
  result = qword_27CF96218;
  if (!qword_27CF96218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF96218);
  }

  return result;
}

unint64_t sub_220D90C4C()
{
  result = qword_27CF96220;
  if (!qword_27CF96220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF96220);
  }

  return result;
}

unint64_t sub_220D90CA0()
{
  result = qword_27CF96228;
  if (!qword_27CF96228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF96228);
  }

  return result;
}

unint64_t sub_220D90CF8()
{
  result = qword_27CF96248;
  if (!qword_27CF96248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF96248);
  }

  return result;
}

unint64_t sub_220D90D50()
{
  result = qword_27CF96250;
  if (!qword_27CF96250)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF96258, &qword_220DC6BB8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF96250);
  }

  return result;
}

_BYTE *sub_220D90DB4(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_220D90EB4()
{
  result = qword_27CF96260;
  if (!qword_27CF96260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF96260);
  }

  return result;
}

unint64_t sub_220D90F0C()
{
  result = qword_27CF96268;
  if (!qword_27CF96268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF96268);
  }

  return result;
}

unint64_t sub_220D90F64()
{
  result = qword_27CF96270;
  if (!qword_27CF96270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF96270);
  }

  return result;
}

unint64_t sub_220D90FBC()
{
  result = qword_27CF96278;
  if (!qword_27CF96278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF96278);
  }

  return result;
}

unint64_t sub_220D91014()
{
  result = qword_27CF96280;
  if (!qword_27CF96280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF96280);
  }

  return result;
}

unint64_t sub_220D9106C()
{
  result = qword_27CF96288;
  if (!qword_27CF96288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF96288);
  }

  return result;
}

unint64_t sub_220D910C4()
{
  result = qword_27CF96290;
  if (!qword_27CF96290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF96290);
  }

  return result;
}

uint64_t sub_220D91128(uint64_t a1, uint64_t a2)
{
  v4 = sub_220DBFB00();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  (*(*(a2 - 8) + 16))(&v8 - v6, a1, a2);
  swift_storeEnumTagMultiPayload();
  return sub_220DBFB10();
}

uint64_t sub_220D91220(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_220DBFB00();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  (*(*(a3 - 8) + 16))(&v9 - v7, a1, a3);
  swift_storeEnumTagMultiPayload();
  return sub_220DBFB10();
}

uint64_t AirQualityNonNumericScaleView.init(index:categories:spacing:pillView:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  *a7 = result;
  *(a7 + 8) = a2;
  *(a7 + 16) = a3;
  *(a7 + 24) = a4 & 1;
  *(a7 + 32) = a5;
  *(a7 + 40) = a6;
  return result;
}

uint64_t AirQualityNonNumericScaleView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v23 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF96298, &qword_220DC6F80);
  v4 = *(a1 + 16);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF962A0, &qword_220DC6F88);
  OUTLINED_FUNCTION_6_6();
  v24 = v4;
  sub_220DBF8A0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF962A8, &qword_220DC6F90);
  OUTLINED_FUNCTION_6_6();
  sub_220DBF8A0();
  sub_220DBFB20();
  v5 = *(a1 + 24);
  v34 = v5;
  v35 = sub_220CE161C(&qword_27CF962B0, &qword_27CF962A0, &qword_220DC6F88);
  WitnessTable = swift_getWitnessTable();
  v32 = v5;
  v33 = sub_220CE161C(&qword_280FA66B0, &qword_27CF962A8, &qword_220DC6F90);
  v30 = WitnessTable;
  v31 = swift_getWitnessTable();
  OUTLINED_FUNCTION_2_32();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_6_6();
  v7 = sub_220DC0030();
  OUTLINED_FUNCTION_0_22();
  v9 = sub_220CE161C(v8, &qword_27CF96298, &qword_220DC6F80);
  *&v36 = v23;
  *(&v36 + 1) = MEMORY[0x277D83B88];
  *&v37 = v7;
  *(&v37 + 1) = v9;
  *&v38 = MEMORY[0x277D83B98];
  sub_220DC00C0();
  v29 = swift_getWitnessTable();
  OUTLINED_FUNCTION_2();
  swift_getWitnessTable();
  v10 = sub_220DC0030();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v22 - v16;
  v18 = v2[1];
  v36 = *v2;
  v37 = v18;
  v38 = v2[2];
  v26 = v24;
  v27 = v5;
  v28 = &v36;
  sub_220DBF9E0();
  sub_220DC0020();
  v19 = swift_getWitnessTable();
  sub_220D14A4C(v15, v10, v19);
  v20 = *(v11 + 8);
  v20(v15, v10);
  sub_220D14A4C(v17, v10, v19);
  return (v20)(v17, v10);
}

uint64_t sub_220D916A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v24[1] = a4;
  v25 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF96298, &qword_220DC6F80);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF962A0, &qword_220DC6F88);
  sub_220DBF8A0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF962A8, &qword_220DC6F90);
  sub_220DBF8A0();
  sub_220DBFB20();
  v27[11] = a3;
  v27[12] = sub_220CE161C(&qword_27CF962B0, &qword_27CF962A0, &qword_220DC6F88);
  WitnessTable = swift_getWitnessTable();
  v27[9] = a3;
  v27[10] = sub_220CE161C(&qword_280FA66B0, &qword_27CF962A8, &qword_220DC6F90);
  v27[7] = WitnessTable;
  v27[8] = swift_getWitnessTable();
  swift_getWitnessTable();
  v8 = sub_220DC0030();
  v24[0] = sub_220CE161C(qword_27CF962B8, &qword_27CF96298, &qword_220DC6F80);
  v27[0] = v25;
  v27[1] = MEMORY[0x277D83B88];
  v27[2] = v8;
  v27[3] = v24[0];
  v27[4] = MEMORY[0x277D83B98];
  v9 = sub_220DC00C0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = v24 - v15;
  v28 = *(a1 + 8);
  v27[6] = v28;
  swift_getKeyPath();
  v17 = swift_allocObject();
  *(v17 + 16) = a2;
  *(v17 + 24) = a3;
  v18 = *(a1 + 16);
  *(v17 + 32) = *a1;
  *(v17 + 48) = v18;
  *(v17 + 64) = *(a1 + 32);
  sub_220D925AC(&v28, v27);
  v19 = type metadata accessor for AirQualityNonNumericScaleView();
  (*(*(v19 - 8) + 16))(v27, a1, v19);
  v23 = swift_getWitnessTable();
  sub_220DC00A0();
  v26 = v23;
  v20 = swift_getWitnessTable();
  sub_220D14A4C(v14, v9, v20);
  v21 = *(v10 + 8);
  v21(v14, v9);
  sub_220D14A4C(v16, v9, v20);
  return (v21)(v16, v9);
}

uint64_t sub_220D91AFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v20 = a2;
  v21 = a1;
  v22 = a5;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF962A0, &qword_220DC6F88);
  sub_220DBF8A0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF962A8, &qword_220DC6F90);
  sub_220DBF8A0();
  sub_220DBFB20();
  v31 = a4;
  v32 = sub_220CE161C(&qword_27CF962B0, &qword_27CF962A0, &qword_220DC6F88);
  WitnessTable = swift_getWitnessTable();
  v29 = a4;
  v30 = sub_220CE161C(&qword_280FA66B0, &qword_27CF962A8, &qword_220DC6F90);
  v27 = WitnessTable;
  v28 = swift_getWitnessTable();
  swift_getWitnessTable();
  v8 = sub_220DC0030();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v19 - v14;
  v23 = a3;
  v24 = a4;
  v25 = v20;
  v26 = v21;
  sub_220DBF9E0();
  sub_220DC0020();
  v16 = swift_getWitnessTable();
  sub_220D14A4C(v13, v8, v16);
  v17 = *(v9 + 8);
  v17(v13, v8);
  sub_220D14A4C(v15, v8, v16);
  return (v17)(v15, v8);
}

uint64_t sub_220D91DC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v59 = a3;
  v60 = a4;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF962A8, &qword_220DC6F90);
  v6 = sub_220DBF8A0();
  v54 = *(v6 - 8);
  v7 = *(v54 + 64);
  v8 = MEMORY[0x28223BE20](v6);
  v50 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v53 = &v49 - v11;
  v12 = *(a2 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v10);
  v15 = &v49 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF962A0, &qword_220DC6F88);
  v16 = sub_220DBF8A0();
  v52 = *(v16 - 8);
  v17 = *(v52 + 64);
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v49 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v51 = &v49 - v21;
  v58 = v6;
  v22 = sub_220DBFB20();
  v56 = *(v22 - 8);
  v57 = v22;
  v23 = *(v56 + 64);
  MEMORY[0x28223BE20](v22);
  v55 = &v49 - v24;
  v25 = *a1;
  v26 = sub_220DBED80();
  v27 = *(a1 + 40);
  (*(a1 + 32))();
  if (v25 >= v26)
  {
    sub_220DBED70();
    v75 = sub_220DBFE70();
    v29 = v59;
    sub_220DBFDB0();

    (*(v12 + 8))(v15, a2);
    v37 = sub_220CE161C(&qword_27CF962B0, &qword_27CF962A0, &qword_220DC6F88);
    v73 = v29;
    v74 = v37;
    WitnessTable = swift_getWitnessTable();
    v39 = v51;
    sub_220D14A4C(v20, v16, WitnessTable);
    v40 = *(v52 + 8);
    v40(v20, v16);
    sub_220D14A4C(v39, v16, WitnessTable);
    v41 = sub_220CE161C(&qword_280FA66B0, &qword_27CF962A8, &qword_220DC6F90);
    v71 = v29;
    v72 = v41;
    swift_getWitnessTable();
    v36 = v55;
    sub_220D91128(v20, v16);
    v40(v20, v16);
    v40(v39, v16);
  }

  else
  {
    LODWORD(v75) = sub_220DBFB30();
    v28 = v50;
    v29 = v59;
    sub_220DBFDB0();
    (*(v12 + 8))(v15, a2);
    v30 = sub_220CE161C(&qword_280FA66B0, &qword_27CF962A8, &qword_220DC6F90);
    v63 = v29;
    v64 = v30;
    v31 = v58;
    v32 = swift_getWitnessTable();
    v33 = v53;
    sub_220D14A4C(v28, v31, v32);
    v34 = *(v54 + 8);
    v34(v28, v31);
    sub_220D14A4C(v33, v31, v32);
    v35 = sub_220CE161C(&qword_27CF962B0, &qword_27CF962A0, &qword_220DC6F88);
    v61 = v29;
    v62 = v35;
    swift_getWitnessTable();
    v36 = v55;
    sub_220D91220(v28, v16, v31);
    v34(v28, v31);
    v34(v33, v31);
  }

  v42 = sub_220CE161C(&qword_27CF962B0, &qword_27CF962A0, &qword_220DC6F88);
  v69 = v29;
  v70 = v42;
  v43 = swift_getWitnessTable();
  v44 = sub_220CE161C(&qword_280FA66B0, &qword_27CF962A8, &qword_220DC6F90);
  v67 = v29;
  v68 = v44;
  v45 = swift_getWitnessTable();
  v65 = v43;
  v66 = v45;
  v46 = v57;
  v47 = swift_getWitnessTable();
  sub_220D14A4C(v36, v46, v47);
  return (*(v56 + 8))(v36, v46);
}

uint64_t sub_220D924C0()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_220D924FC(uint64_t a1, int a2)
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

uint64_t sub_220D9253C(uint64_t result, int a2, int a3)
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

uint64_t sub_220D925AC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF96298, &qword_220DC6F80);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t ChartPointMarkSeries.init(markers:markStyle:symbolSize:labelFont:fallbackLabelColor:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>, double a6@<D0>)
{
  v6 = *(a2 + 16);
  *(a5 + 8) = *a2;
  v7 = *(a2 + 32);
  *(a5 + 24) = v6;
  *(a5 + 40) = v7;
  *a5 = result;
  *(a5 + 56) = a3;
  *(a5 + 64) = a4;
  *(a5 + 48) = a6;
  return result;
}

uint64_t ChartPointMarkSeries.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF96340, &qword_220DC70A0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v64 = &v55 - v5;
  v6 = type metadata accessor for ChartPointMarkSeriesContent(0);
  v7 = OUTLINED_FUNCTION_6(v6);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v55 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = (&v55 - v13);
  v15 = type metadata accessor for ChartPointMarkBorderAndAnnotationSeriesContent(0);
  v16 = OUTLINED_FUNCTION_6(v15);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x28223BE20](v16);
  MEMORY[0x28223BE20](v19);
  v22 = &v55 - v21;
  v23 = v1[1];
  v24 = *(v1 + 40);
  v25 = v1[6];
  v26 = *(v1 + 7);
  v27 = *(v1 + 8);
  v65 = *v1;
  v66 = v26;
  if (v24)
  {
    v28 = *(v1 + 3);
    v59 = *(v1 + 4);
    v56 = *(v1 + 2);
    v29 = v23;
    v61 = v12;
    v30 = v6[5];
    v60 = v27;
    v31 = *MEMORY[0x277CE13C8];
    v62 = v20;
    v32 = *&v23;
    v33 = sub_220DC0150();
    v63 = a1;
    v34 = v33;
    OUTLINED_FUNCTION_6(v33);
    v57 = *(v35 + 104);
    v58 = v35 + 104;
    v57(v14 + v30, v31, v34);
    v36 = v65;

    v37 = v56;
    v38 = v28;
    v39 = v28;
    v40 = v59;
    sub_220D92AE8(v32, v56, v39, v59, 1);
    v41 = sqrt(v25);
    *v14 = v36;
    *(v14 + v6[6]) = (v41 - v29) * (v41 - v29);
    v42 = (v14 + v6[7]);
    *v42 = v37;
    v42[1] = v38;
    v42[2] = v40;
    v57(&v22[v15[5]], *MEMORY[0x277CE13C0], v34);
    *v22 = v36;
    *&v22[v15[6]] = v66;
    OUTLINED_FUNCTION_2_33(v15[7]);
    *&v22[v43] = v32;
    v44 = v61;
    sub_220D92AF8(v14, v61, type metadata accessor for ChartPointMarkSeriesContent);
    v67[0] = v44;
    v45 = v62;
    sub_220D92AF8(v22, v62, type metadata accessor for ChartPointMarkBorderAndAnnotationSeriesContent);
    v67[1] = v45;
    v46 = v64;
    sub_220D77318(v67, v64);

    sub_220D92B58(v22, type metadata accessor for ChartPointMarkBorderAndAnnotationSeriesContent);
    sub_220D92B58(v14, type metadata accessor for ChartPointMarkSeriesContent);
    sub_220D92B58(v45, type metadata accessor for ChartPointMarkBorderAndAnnotationSeriesContent);
    sub_220D92B58(v44, type metadata accessor for ChartPointMarkSeriesContent);
    sub_220D92BB0(v46, v63);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF96348, &qword_220DC70A8);
    return swift_storeEnumTagMultiPayload();
  }

  else
  {
    v48 = v15[5];
    v49 = *MEMORY[0x277CE13C0];
    v50 = v23;
    v51 = sub_220DC0150();
    OUTLINED_FUNCTION_6(v51);
    (*(v52 + 104))(&v22[v48], v49);
    v53 = v66;
    *v22 = v65;
    *&v22[v15[6]] = v53;
    OUTLINED_FUNCTION_2_33(v15[7]);
    *&v22[v54] = v50;
    sub_220D95040(v22, a1, type metadata accessor for ChartPointMarkBorderAndAnnotationSeriesContent);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF96348, &qword_220DC70A8);
    swift_storeEnumTagMultiPayload();
  }
}

uint64_t sub_220D92AE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5)
  {
  }

  return result;
}

uint64_t sub_220D92AF8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  OUTLINED_FUNCTION_6(v5);
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t sub_220D92B58(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_6(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_220D92BB0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF96340, &qword_220DC70A0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_220D92C40(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 72))
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

uint64_t sub_220D92C80(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_220D92CE0()
{
  result = qword_27CF96350;
  if (!qword_27CF96350)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF96358, &qword_220DC71B8);
    sub_220D92E90(&qword_27CF95EA0, type metadata accessor for ChartPointMarkBorderAndAnnotationSeriesContent);
    sub_220D92D9C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF96350);
  }

  return result;
}

unint64_t sub_220D92D9C()
{
  result = qword_27CF96360;
  if (!qword_27CF96360)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF96340, &qword_220DC70A0);
    sub_220D92E90(&qword_27CF95E98, type metadata accessor for ChartPointMarkSeriesContent);
    sub_220D92E90(&qword_27CF95EA0, type metadata accessor for ChartPointMarkBorderAndAnnotationSeriesContent);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF96360);
  }

  return result;
}

uint64_t sub_220D92E90(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_220D92F00()
{
  sub_220D8B17C();
  if (v0 <= 0x3F)
  {
    sub_220DC0150();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t __swift_get_extra_inhabitant_indexTm(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_220DC0150();
    v9 = a1 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

void *__swift_store_extra_inhabitant_indexTm(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_220DC0150();
    v8 = v5 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

void sub_220D930D8()
{
  sub_220D8B17C();
  if (v0 <= 0x3F)
  {
    sub_220DC0150();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_220D93190@<X0>(uint64_t a1@<X8>)
{
  v26 = a1;
  v2 = type metadata accessor for ChartPointMarkBorderAndAnnotationSeriesContent(0);
  v3 = v2 - 8;
  v4 = *(v2 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v2);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF96388, &unk_220DC72D0);
  v6 = *(v25 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v25);
  v9 = v24 - v8;
  v31 = *v1;
  v24[4] = swift_getKeyPath();
  sub_220D92AF8(v1, v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ChartPointMarkBorderAndAnnotationSeriesContent);
  v10 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v11 = swift_allocObject();
  sub_220D95040(v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v11 + v10, type metadata accessor for ChartPointMarkBorderAndAnnotationSeriesContent);

  v24[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95EE0, &qword_220DC85D0);
  v24[2] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF96390, &qword_220DC7300);
  v24[1] = sub_220CE161C(&qword_27CF95EE8, &qword_27CF95EE0, &qword_220DC85D0);
  v24[0] = sub_220D92E90(&qword_27CF96040, type metadata accessor for DetailChartDataElement);
  v12 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF96398, &qword_220DC7308);
  v13 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF963A0, &qword_220DC7310);
  v14 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF963A8, &qword_220DC7318);
  v15 = sub_220DBF6F0();
  v16 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF963B0, &qword_220DC7320);
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v27 = v15;
  v28 = v16;
  v29 = MEMORY[0x277CBB468];
  v30 = OpaqueTypeConformance2;
  v18 = swift_getOpaqueTypeConformance2();
  v19 = sub_220D94DC8();
  v27 = v13;
  v28 = v14;
  v29 = v18;
  v30 = v19;
  v20 = swift_getOpaqueTypeConformance2();
  v27 = v12;
  v28 = MEMORY[0x277CE0BD8];
  v29 = v20;
  v30 = MEMORY[0x277CE0BC8];
  swift_getOpaqueTypeConformance2();
  sub_220DC0090();
  v21 = *(v1 + *(v3 + 40));
  sub_220D94E80();
  v22 = v25;
  sub_220DBF490();
  return (*(v6 + 8))(v9, v22);
}

uint64_t sub_220D93588@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v68 = a2;
  v80 = a3;
  v4 = sub_220DBF630();
  v74 = *(v4 - 8);
  v75 = v4;
  v5 = *(v74 + 64);
  MEMORY[0x28223BE20](v4);
  v72 = &v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_220DBF650();
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v73 = &v55 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v70 = &v55 - v11;
  v12 = sub_220DBF660();
  v78 = *(v12 - 8);
  v79 = v12;
  v13 = *(v78 + 64);
  MEMORY[0x28223BE20](v12);
  v71 = &v55 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_220DBF5E0();
  v76 = *(v15 - 8);
  v77 = v15;
  v16 = *(v76 + 64);
  MEMORY[0x28223BE20](v15);
  v69 = &v55 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = sub_220DBF600();
  v63 = *(v65 - 8);
  v18 = *(v63 + 64);
  MEMORY[0x28223BE20](v65);
  v60 = &v55 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF963B0, &qword_220DC7320);
  v64 = *(v62 - 8);
  v20 = *(v64 + 64);
  MEMORY[0x28223BE20](v62);
  v59 = &v55 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95EB0, &unk_220DC7330);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22 - 8);
  v55 = &v55 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95EB8, &qword_220DC59C0);
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x28223BE20](v25 - 8);
  v57 = sub_220DBF6F0();
  v58 = *(v57 - 8);
  v27 = *(v58 + 64);
  MEMORY[0x28223BE20](v57);
  v29 = &v55 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF963A0, &qword_220DC7310);
  v61 = *(v81 - 8);
  v30 = *(v61 + 64);
  MEMORY[0x28223BE20](v81);
  v32 = &v55 - v31;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF96398, &qword_220DC7308);
  v67 = *(v66 - 8);
  v33 = *(v67 + 64);
  MEMORY[0x28223BE20](v66);
  v82 = &v55 - v34;
  sub_220DBFA00();
  sub_220DBE560();
  v56 = a1;
  sub_220DBF5A0();

  sub_220DBFA00();
  v86 = *(a1 + *(type metadata accessor for DetailChartDataElement(0) + 20));
  sub_220DBF5A0();

  sub_220DBF6E0();
  v35 = v60;
  sub_220DBF5B0();
  v36 = type metadata accessor for ChartPointMarkBorderAndAnnotationSeriesContent(0);
  v37 = v68;
  v38 = *(v68 + *(v36 + 36));
  v39 = v59;
  sub_220DBF5F0();
  (*(v63 + 8))(v35, v65);
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v41 = MEMORY[0x277CBB468];
  v42 = v57;
  v43 = v62;
  sub_220DBF540();
  (*(v64 + 8))(v39, v43);
  (*(v58 + 8))(v29, v42);
  v85 = v37;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF963A8, &qword_220DC7318);
  v86 = v42;
  v87 = v43;
  v88 = v41;
  v89 = OpaqueTypeConformance2;
  v44 = swift_getOpaqueTypeConformance2();
  v45 = sub_220D94DC8();
  v46 = v81;
  sub_220DBF4B0();
  (*(v61 + 8))(v32, v46);
  v47 = v69;
  sub_220DBF5C0();
  v48 = v72;
  sub_220DBF620();
  sub_220DBF640();
  v49 = v75;
  v50 = *(v74 + 8);
  v50(v48, v75);
  sub_220DBF620();
  sub_220DBF640();
  v50(v48, v49);
  v51 = v71;
  sub_220DBF610();
  v83 = v56;
  v84 = v37;
  sub_220DC0120();
  v86 = v81;
  v87 = v65;
  v88 = v44;
  v89 = v45;
  swift_getOpaqueTypeConformance2();
  v52 = v66;
  v53 = v82;
  sub_220DBF470();
  (*(v78 + 8))(v51, v79);
  (*(v76 + 8))(v47, v77);
  return (*(v67 + 8))(v53, v52);
}

uint64_t sub_220D93F58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(type metadata accessor for ChartPointMarkBorderAndAnnotationSeriesContent(0) + 20);
  v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF963A8, &qword_220DC7318) + 36);
  v8 = sub_220DC0150();
  (*(*(v8 - 8) + 16))(a3 + v7, a2 + v6, v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF963C8, &qword_220DC7328);
  v10 = *(*(v9 - 8) + 16);

  return v10(a3, a1, v9);
}

uint64_t sub_220D94044@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for DetailChartDataElement(0);
  v7 = static ChartValueLabel.with(label:)(a1 + *(v6 + 32));
  v9 = v8;
  v11 = v10;
  v12 = type metadata accessor for ChartPointMarkBorderAndAnnotationSeriesContent(0);
  v29 = a2;
  v13 = *(a2 + *(v12 + 24));
  v30 = sub_220DBFD10();
  v15 = v14;
  v17 = v16;
  sub_220CF0978(v7, v9, v11 & 1);

  v18 = *(v6 + 44);
  if (*(a1 + v18))
  {
    v19 = *(a1 + v18);
  }

  else
  {
    v20 = *(v29 + *(v12 + 28));
  }

  v21 = sub_220DBFCF0();
  v23 = v22;
  v25 = v24;
  v27 = v26;
  sub_220CF0978(v30, v15, v17 & 1);

  *a3 = v21;
  *(a3 + 8) = v23;
  *(a3 + 16) = v25 & 1;
  *(a3 + 24) = v27;
  return result;
}

uint64_t sub_220D941B0@<X0>(uint64_t a1@<X8>)
{
  v26 = a1;
  v2 = type metadata accessor for ChartPointMarkSeriesContent(0);
  v3 = v2 - 8;
  v4 = *(v2 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v2);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF963D8, &qword_220DC7340);
  v6 = *(v25 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v25);
  v9 = v24 - v8;
  v31 = *v1;
  v24[4] = swift_getKeyPath();
  sub_220D92AF8(v1, v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ChartPointMarkSeriesContent);
  v10 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v11 = swift_allocObject();
  sub_220D95040(v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v11 + v10, type metadata accessor for ChartPointMarkSeriesContent);

  v24[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95EE0, &qword_220DC85D0);
  v24[2] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF963E0, &qword_220DC7348);
  v24[1] = sub_220CE161C(&qword_27CF95EE8, &qword_27CF95EE0, &qword_220DC85D0);
  v24[0] = sub_220D92E90(&qword_27CF96040, type metadata accessor for DetailChartDataElement);
  v12 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF963E8, &qword_220DC7350);
  v13 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF963F0, &qword_220DC7358);
  v14 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF963F8, &qword_220DC7360);
  v15 = sub_220DBF6F0();
  v16 = sub_220DBF600();
  v17 = sub_220D92E90(&qword_27CF95DA0, MEMORY[0x277CBB3B8]);
  v27 = v15;
  v28 = v16;
  v29 = MEMORY[0x277CBB468];
  v30 = v17;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v19 = sub_220D95164();
  v27 = v13;
  v28 = v14;
  v29 = OpaqueTypeConformance2;
  v30 = v19;
  v20 = swift_getOpaqueTypeConformance2();
  v27 = v12;
  v28 = MEMORY[0x277CDF838];
  v29 = v20;
  v30 = MEMORY[0x277CDF828];
  swift_getOpaqueTypeConformance2();
  sub_220DC0090();
  v21 = *(v1 + *(v3 + 32));
  sub_220D9521C();
  v22 = v25;
  sub_220DBF490();
  return (*(v6 + 8))(v9, v22);
}

uint64_t sub_220D945B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v54 = a2;
  v44 = a3;
  v52 = sub_220DBF600();
  v53 = *(v52 - 8);
  v4 = *(v53 + 64);
  MEMORY[0x28223BE20](v52);
  v50 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95EB0, &unk_220DC7330);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v47 = &v41 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95EB8, &qword_220DC59C0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v48 = sub_220DBF6F0();
  v49 = *(v48 - 8);
  v11 = *(v49 + 64);
  MEMORY[0x28223BE20](v48);
  v13 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF963F0, &qword_220DC7358);
  v51 = *(v45 - 8);
  v14 = *(v51 + 64);
  MEMORY[0x28223BE20](v45);
  v46 = &v41 - v15;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF963E8, &qword_220DC7350);
  v42 = *(v43 - 8);
  v16 = *(v42 + 64);
  MEMORY[0x28223BE20](v43);
  v18 = &v41 - v17;
  sub_220DBFA00();
  sub_220DBE560();
  sub_220DBF5A0();

  sub_220DBFA00();
  v19 = *(a1 + *(type metadata accessor for DetailChartDataElement(0) + 20));
  *&v63 = v19;
  v20 = v18;
  sub_220DBF5A0();

  v21 = v45;

  sub_220DBF6E0();
  v22 = v50;
  sub_220DBF5B0();
  v23 = sub_220D92E90(&qword_27CF95DA0, MEMORY[0x277CBB3B8]);
  v24 = MEMORY[0x277CBB468];
  v25 = v46;
  v26 = v48;
  v27 = v52;
  sub_220DBF540();
  v28 = v27;
  (*(v53 + 8))(v22, v27);
  (*(v49 + 8))(v13, v26);
  v29 = v54;
  v55 = v54;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF963F8, &qword_220DC7360);
  *&v63 = v26;
  *(&v63 + 1) = v28;
  *&v64 = v24;
  *(&v64 + 1) = v23;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v32 = sub_220D95164();
  sub_220DBF4B0();
  (*(v51 + 8))(v25, v21);
  result = type metadata accessor for ChartPointMarkSeriesContent(0);
  v34 = (v29 + *(result + 28));
  v36 = v34[1];
  v35 = v34[2];
  v37 = v19 + 0.01;
  if (v19 > v19 + 0.01)
  {
    v37 = v19;
  }

  if (v19 > v37 || v36 > v35)
  {
    __break(1u);
  }

  else
  {
    v39 = *v34;
    if (v36 >= v35)
    {
    }

    else
    {
      sub_220DC00D0();
    }

    sub_220DC0190();
    sub_220DC0180();
    sub_220DBF7B0();
    v60 = v63;
    v61 = v64;
    v62 = v65;
    v56 = v21;
    v57 = v30;
    v58 = OpaqueTypeConformance2;
    v59 = v32;
    swift_getOpaqueTypeConformance2();
    v40 = v43;
    sub_220DBF4A0();
    sub_220D7AE00(&v63);
    return (*(v42 + 8))(v20, v40);
  }

  return result;
}

uint64_t sub_220D94C90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(type metadata accessor for ChartPointMarkSeriesContent(0) + 20);
  v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF963F8, &qword_220DC7360) + 36);
  v8 = sub_220DC0150();
  (*(*(v8 - 8) + 16))(a3 + v7, a2 + v6, v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF96410, &unk_220DC7368);
  v10 = *(*(v9 - 8) + 16);

  return v10(a3, a1, v9);
}

unint64_t sub_220D94DC8()
{
  result = qword_27CF963B8;
  if (!qword_27CF963B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF963A8, &qword_220DC7318);
    sub_220CE161C(&qword_27CF963C0, &qword_27CF963C8, &qword_220DC7328);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF963B8);
  }

  return result;
}

unint64_t sub_220D94E80()
{
  result = qword_27CF963D0;
  if (!qword_27CF963D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF96388, &unk_220DC72D0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF96398, &qword_220DC7308);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF963A0, &qword_220DC7310);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF963A8, &qword_220DC7318);
    sub_220DBF6F0();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF963B0, &qword_220DC7320);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_220D94DC8();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF963D0);
  }

  return result;
}

uint64_t sub_220D95040(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  OUTLINED_FUNCTION_6(v5);
  (*(v6 + 32))(a2, a1);
  return a2;
}

uint64_t sub_220D950CC(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(uint64_t, uint64_t))
{
  v5 = *(a2(0) - 8);
  v6 = v3 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return a3(a1, v6);
}

unint64_t sub_220D95164()
{
  result = qword_27CF96400;
  if (!qword_27CF96400)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF963F8, &qword_220DC7360);
    sub_220CE161C(&qword_27CF96408, &qword_27CF96410, &unk_220DC7368);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF96400);
  }

  return result;
}

unint64_t sub_220D9521C()
{
  result = qword_27CF96418;
  if (!qword_27CF96418)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF963D8, &qword_220DC7340);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF963E8, &qword_220DC7350);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF963F0, &qword_220DC7358);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF963F8, &qword_220DC7360);
    sub_220DBF6F0();
    sub_220DBF600();
    sub_220D92E90(&qword_27CF95DA0, MEMORY[0x277CBB3B8]);
    swift_getOpaqueTypeConformance2();
    sub_220D95164();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF96418);
  }

  return result;
}

uint64_t get_witness_table_qd__6Charts12ChartContentHD2_AaBPAAE10symbolSizeyQr12CoreGraphics7CGFloatVFQOy7SwiftUI7ForEachVySay17WeatherAppSupport06DetailB11DataElementVGAmcAE10annotation8position9alignment7spacing18overflowResolution7contentQrAA18AnnotationPositionV_AH9AlignmentVAGSgAA0z8OverflowX0Vqd__yXEtAH4ViewRd__lFQOyAcAE16compositingLayer5styleQrqd__AH011PlaceholderC4ViewVyxGXE_tAHA0_Rd__lFQOyAcAE0D0yQrqd__AA0B11SymbolShapeRd__lFQOyAA9PointMarkV_AA05BasicB11SymbolShapeV12strokeBorder9lineWidthQrAG_tFQOy_Qo_Qo__AH08ModifiedC0VyA4_yA15_GAH16_BlendModeEffectVGQo__AH4TextVQo_G_Qo_HOTm(uint64_t a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
  a4();
  return swift_getOpaqueTypeConformance2();
}

__n128 ConditionDetailChartHeaderStringModel.init(title1:title2:title3:subtitle:subtitleTruncationAlternative:symbolName:titleOrder:accessibilityDescription:accessibilityIdentifiers:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, char *a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  v21 = *a12;
  v22 = sub_220DBE210();
  OUTLINED_FUNCTION_6(v22);
  (*(v23 + 32))(a9, a1);
  v24 = type metadata accessor for ConditionDetailChartHeaderStringModel();
  sub_220CEFF68(a2, a9 + v24[5]);
  v25 = (a9 + v24[6]);
  *v25 = a3;
  v25[1] = a4;
  v26 = (a9 + v24[7]);
  *v26 = a5;
  v26[1] = a6;
  v27 = (a9 + v24[8]);
  *v27 = a7;
  v27[1] = a8;
  v28 = (a9 + v24[11]);
  *v28 = a10;
  v28[1] = a11;
  *(a9 + v24[9]) = v21;
  v29 = (a9 + v24[10]);
  *v29 = a13;
  v29[1] = a14;
  v30 = a9 + v24[12];
  v31 = *(a15 + 16);
  *v30 = *a15;
  *(v30 + 16) = v31;
  result = *(a15 + 32);
  v33 = *(a15 + 48);
  *(v30 + 32) = result;
  *(v30 + 48) = v33;
  return result;
}

uint64_t type metadata accessor for ConditionDetailChartHeaderStringModel()
{
  result = qword_27CF96438;
  if (!qword_27CF96438)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void __swiftcall ConditionDetailChartHeaderStringModel.AccessibilityIdentifiers.init(title1:title2:title3:subtitle:)(WeatherAppSupport::ConditionDetailChartHeaderStringModel::AccessibilityIdentifiers *__return_ptr retstr, Swift::String_optional title1, Swift::String_optional title2, Swift::String_optional title3, Swift::String_optional subtitle)
{
  retstr->title1 = title1;
  retstr->title2 = title2;
  retstr->title3 = title3;
  retstr->subtitle = subtitle;
}

double ConditionDetailChartHeaderStringModel.init(title1:title2:title3:subtitle:subtitleTruncationAlternative:symbolName:titleOrder:accessibilityDescription:accessibilityIdentifiers:)@<D0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char *a13, uint64_t a14, uint64_t a15, __int128 *a16)
{
  v56 = a4;
  v57 = a5;
  v53[0] = a2;
  v53[1] = a1;
  v60 = a12;
  v61 = a6;
  v54 = a9;
  v55 = a10;
  v62 = a15;
  v63 = a7;
  v58 = a11;
  v59 = a14;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95030, &qword_220DC17E0);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v22 = v53 - v21;
  v23 = sub_220DBE260();
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23 - 8);
  OUTLINED_FUNCTION_1();
  v25 = sub_220DBE210();
  v26 = OUTLINED_FUNCTION_6_23(v25);
  v28 = v27;
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_1();
  v33 = v32 - v31;
  v34 = *a13;
  v35 = a16[1];
  v64 = *a16;
  v65 = v35;
  v36 = a16[3];
  v66 = a16[2];
  v67 = v36;
  sub_220DBE250();
  sub_220DBE220();
  if (a3)
  {

    sub_220DBE250();
    sub_220DBE220();

    v37 = 0;
  }

  else
  {
    v37 = 1;
  }

  __swift_storeEnumTagSinglePayload(v22, v37, 1, v16);
  (*(v28 + 32))(a8, v33, v16);
  v38 = type metadata accessor for ConditionDetailChartHeaderStringModel();
  sub_220CEFF68(v22, a8 + v38[5]);
  v39 = (a8 + v38[6]);
  v40 = v57;
  *v39 = v56;
  v39[1] = v40;
  v41 = (a8 + v38[7]);
  v42 = v63;
  *v41 = v61;
  v41[1] = v42;
  v43 = (a8 + v38[8]);
  v44 = v55;
  *v43 = v54;
  v43[1] = v44;
  v45 = (a8 + v38[11]);
  v46 = v59;
  v47 = v60;
  *v45 = v58;
  v45[1] = v47;
  *(a8 + v38[9]) = v34;
  v48 = (a8 + v38[10]);
  *v48 = v46;
  v48[1] = v62;
  v49 = (a8 + v38[12]);
  v50 = v65;
  *v49 = v64;
  v49[1] = v50;
  result = *&v66;
  v52 = v67;
  v49[2] = v66;
  v49[3] = v52;
  return result;
}

uint64_t ConditionDetailChartHeaderStringModel.TitleOrder.hashValue.getter()
{
  v1 = *v0;
  sub_220DC0CE0();
  MEMORY[0x223D98920](v1);
  return sub_220DC0D20();
}

uint64_t ConditionDetailChartHeaderStringModel.AccessibilityIdentifiers.title1.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return OUTLINED_FUNCTION_20();
}

uint64_t ConditionDetailChartHeaderStringModel.AccessibilityIdentifiers.title2.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return OUTLINED_FUNCTION_20();
}

uint64_t ConditionDetailChartHeaderStringModel.AccessibilityIdentifiers.title3.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return OUTLINED_FUNCTION_20();
}

uint64_t ConditionDetailChartHeaderStringModel.AccessibilityIdentifiers.subtitle.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return OUTLINED_FUNCTION_20();
}

uint64_t static ConditionDetailChartHeaderStringModel.AccessibilityIdentifiers.== infix(_:_:)(void *a1, void *a2)
{
  v3 = a1[1];
  v4 = a1[2];
  v6 = a1[3];
  v5 = a1[4];
  v8 = a1[5];
  v7 = a1[6];
  v9 = a1[7];
  v10 = a2[1];
  v11 = a2[2];
  v13 = a2[3];
  v12 = a2[4];
  v15 = a2[5];
  v14 = a2[6];
  v16 = a2[7];
  if (v3)
  {
    if (!v10)
    {
      return 0;
    }

    if (*a1 != *a2 || v3 != v10)
    {
      v34 = a1[5];
      v35 = a2[5];
      v18 = a1[4];
      v19 = a2[6];
      v20 = a2[7];
      v21 = a1[7];
      v22 = a1[6];
      v23 = a2[4];
      v24 = sub_220DC0CA0();
      v12 = v23;
      v7 = v22;
      v9 = v21;
      v16 = v20;
      v14 = v19;
      v5 = v18;
      v8 = v34;
      v15 = v35;
      if ((v24 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v10)
  {
    return 0;
  }

  if (v6)
  {
    if (!v13)
    {
      return 0;
    }

    if (v4 != v11 || v6 != v13)
    {
      v26 = v7;
      v27 = v12;
      v28 = sub_220DC0CA0();
      v12 = v27;
      v7 = v26;
      if ((v28 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v13)
  {
    return 0;
  }

  if (v8)
  {
    if (!v15)
    {
      return 0;
    }

    if (v5 != v12 || v8 != v15)
    {
      v30 = v7;
      v31 = sub_220DC0CA0();
      v7 = v30;
      if ((v31 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v15)
  {
    return 0;
  }

  if (v9)
  {
    if (v16)
    {
      v32 = v7 == v14 && v9 == v16;
      if (v32 || (sub_220DC0CA0() & 1) != 0)
      {
        return 1;
      }
    }
  }

  else if (!v16)
  {
    return 1;
  }

  return 0;
}

uint64_t ConditionDetailChartHeaderStringModel.title1.getter()
{
  OUTLINED_FUNCTION_3();
  v0 = sub_220DBE210();
  OUTLINED_FUNCTION_6(v0);
  v2 = *(v1 + 16);
  v3 = OUTLINED_FUNCTION_20();

  return v4(v3);
}

uint64_t ConditionDetailChartHeaderStringModel.title2.getter()
{
  OUTLINED_FUNCTION_3();
  v2 = v1 + *(type metadata accessor for ConditionDetailChartHeaderStringModel() + 20);

  return sub_220CF16F4(v2, v0);
}

uint64_t ConditionDetailChartHeaderStringModel.title3.getter()
{
  v0 = type metadata accessor for ConditionDetailChartHeaderStringModel();
  OUTLINED_FUNCTION_4_24(*(v0 + 24));
  return OUTLINED_FUNCTION_20();
}

uint64_t ConditionDetailChartHeaderStringModel.subtitle.getter()
{
  v0 = type metadata accessor for ConditionDetailChartHeaderStringModel();
  OUTLINED_FUNCTION_4_24(*(v0 + 28));
  return OUTLINED_FUNCTION_20();
}

uint64_t ConditionDetailChartHeaderStringModel.subtitleTruncationAlternative.getter()
{
  v0 = type metadata accessor for ConditionDetailChartHeaderStringModel();
  OUTLINED_FUNCTION_4_24(*(v0 + 32));
  return OUTLINED_FUNCTION_20();
}

uint64_t ConditionDetailChartHeaderStringModel.titleOrder.getter()
{
  OUTLINED_FUNCTION_3();
  result = type metadata accessor for ConditionDetailChartHeaderStringModel();
  *v0 = *(v1 + *(result + 36));
  return result;
}

uint64_t ConditionDetailChartHeaderStringModel.accessibilityDescription.getter()
{
  v0 = type metadata accessor for ConditionDetailChartHeaderStringModel();
  OUTLINED_FUNCTION_4_24(*(v0 + 40));
  return OUTLINED_FUNCTION_20();
}

uint64_t ConditionDetailChartHeaderStringModel.symbolName.getter()
{
  v0 = type metadata accessor for ConditionDetailChartHeaderStringModel();
  OUTLINED_FUNCTION_4_24(*(v0 + 44));
  return OUTLINED_FUNCTION_20();
}

uint64_t ConditionDetailChartHeaderStringModel.accessibilityIdentifiers.getter()
{
  OUTLINED_FUNCTION_3();
  v2 = (v1 + *(type metadata accessor for ConditionDetailChartHeaderStringModel() + 48));
  v3 = v2[1];
  v8[0] = *v2;
  v8[1] = v3;
  v4 = v2[3];
  v9 = v2[2];
  v5 = v9;
  v10 = v4;
  *v0 = v8[0];
  v0[1] = v3;
  v0[2] = v5;
  v0[3] = v4;
  return sub_220D95D7C(v8, &v7);
}

uint64_t static ConditionDetailChartHeaderStringModel.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v5 = sub_220DBE210();
  v6 = OUTLINED_FUNCTION_6_23(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_1();
  v13 = v12 - v11;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95030, &qword_220DC17E0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v80 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF96420, &qword_220DC7378);
  v19 = OUTLINED_FUNCTION_6(v18);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  v23 = &v80 - v22;
  if ((sub_220DBE1E0() & 1) == 0)
  {
    goto LABEL_11;
  }

  v81 = type metadata accessor for ConditionDetailChartHeaderStringModel();
  v24 = *(v81 + 20);
  v25 = *(v18 + 48);
  sub_220CF16F4(a1 + v24, v23);
  sub_220CF16F4(a2 + v24, &v23[v25]);
  OUTLINED_FUNCTION_9_22(v23);
  if (!v26)
  {
    sub_220CF16F4(v23, v17);
    OUTLINED_FUNCTION_9_22(&v23[v25]);
    if (!v26)
    {
      (*(v8 + 32))(v13, &v23[v25], v2);
      sub_220D96224();
      v29 = sub_220DC05B0();
      v30 = *(v8 + 8);
      v30(v13, v2);
      v30(v17, v2);
      sub_220CDA548(v23, &qword_27CF95030, &qword_220DC17E0);
      if ((v29 & 1) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_14;
    }

    (*(v8 + 8))(v17, v2);
LABEL_10:
    sub_220CDA548(v23, &qword_27CF96420, &qword_220DC7378);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_9_22(&v23[v25]);
  if (!v26)
  {
    goto LABEL_10;
  }

  sub_220CDA548(v23, &qword_27CF95030, &qword_220DC17E0);
LABEL_14:
  v31 = v81;
  v32 = *(v81 + 24);
  OUTLINED_FUNCTION_0_23();
  if (v35)
  {
    if (!v33)
    {
      goto LABEL_11;
    }

    OUTLINED_FUNCTION_2_34(v34);
    v38 = v26 && v36 == v37;
    if (!v38 && (sub_220DC0CA0() & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  else if (v33)
  {
    goto LABEL_11;
  }

  v39 = v31[7];
  OUTLINED_FUNCTION_0_23();
  if (v42)
  {
    if (!v40)
    {
      goto LABEL_11;
    }

    OUTLINED_FUNCTION_2_34(v41);
    v45 = v26 && v43 == v44;
    if (!v45 && (sub_220DC0CA0() & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  else if (v40)
  {
    goto LABEL_11;
  }

  v46 = v31[8];
  OUTLINED_FUNCTION_0_23();
  if (v49)
  {
    if (!v47)
    {
      goto LABEL_11;
    }

    OUTLINED_FUNCTION_2_34(v48);
    v52 = v26 && v50 == v51;
    if (!v52 && (sub_220DC0CA0() & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  else if (v47)
  {
    goto LABEL_11;
  }

  if (*(a1 + v31[9]) == *(a2 + v31[9]))
  {
    v53 = v31[10];
    v54 = *(a1 + v53);
    v55 = *(a1 + v53 + 8);
    v56 = (a2 + v53);
    v57 = v54 == *v56 && v55 == v56[1];
    if (v57 || (sub_220DC0CA0() & 1) != 0)
    {
      v58 = v31[11];
      OUTLINED_FUNCTION_0_23();
      if (v61)
      {
        if (v59)
        {
          OUTLINED_FUNCTION_2_34(v60);
          v64 = v26 && v62 == v63;
          if (v64 || (sub_220DC0CA0() & 1) != 0)
          {
            goto LABEL_56;
          }
        }
      }

      else if (!v59)
      {
LABEL_56:
        v65 = (a1 + v31[12]);
        v66 = v65[1];
        v90[0] = *v65;
        v90[1] = v66;
        v67 = v65[3];
        v69 = *v65;
        v68 = v65[1];
        v90[2] = v65[2];
        v90[3] = v67;
        v71 = v65[2];
        v70 = v65[3];
        v86 = v69;
        v87 = v68;
        v88 = v71;
        v89 = v70;
        v72 = (a2 + v31[12]);
        v73 = *v72;
        v74 = v72[1];
        v75 = v72[3];
        v91[2] = v72[2];
        v91[3] = v75;
        v76 = v72[1];
        v77 = v72[2];
        v78 = *v72;
        v91[0] = v73;
        v91[1] = v76;
        v82 = v78;
        v83 = v74;
        v79 = v72[3];
        v84 = v77;
        v85 = v79;
        v27 = static ConditionDetailChartHeaderStringModel.AccessibilityIdentifiers.== infix(_:_:)(&v86, &v82);
        v92[0] = v82;
        v92[1] = v83;
        v92[2] = v84;
        v92[3] = v85;
        sub_220D95D7C(v90, v93);
        sub_220D95D7C(v91, v93);
        sub_220D961F4(v92);
        v93[0] = v86;
        v93[1] = v87;
        v93[2] = v88;
        v93[3] = v89;
        sub_220D961F4(v93);
        return v27 & 1;
      }
    }
  }

LABEL_11:
  v27 = 0;
  return v27 & 1;
}

unint64_t sub_220D96224()
{
  result = qword_27CF96428;
  if (!qword_27CF96428)
  {
    sub_220DBE210();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF96428);
  }

  return result;
}

unint64_t sub_220D96280()
{
  result = qword_27CF96430;
  if (!qword_27CF96430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF96430);
  }

  return result;
}

void sub_220D96300()
{
  sub_220DBE210();
  if (v0 <= 0x3F)
  {
    sub_220CF0AB4();
    if (v1 <= 0x3F)
    {
      sub_220D963C8();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_220D963C8()
{
  if (!qword_27CF96448)
  {
    v0 = sub_220DC0AE0();
    if (!v1)
    {
      atomic_store(v0, &qword_27CF96448);
    }
  }
}

_BYTE *storeEnumTagSinglePayload for ConditionDetailChartHeaderStringModel.TitleOrder(_BYTE *result, unsigned int a2, unsigned int a3)
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

__n128 __swift_memcpy64_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_220D96508(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 64))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 8);
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

uint64_t sub_220D9655C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 64) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 64) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_220D96618(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6)
{
  v103 = a5;
  v114 = a4;
  v99 = a2;
  v105 = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95648, &qword_220DC2D00);
  v9 = OUTLINED_FUNCTION_18(v8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v110 = &v96 - v12;
  v13 = sub_220DBE6E0();
  v14 = OUTLINED_FUNCTION_0(v13);
  v100 = v15;
  v101 = v14;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_1_21();
  OUTLINED_FUNCTION_4_4(v18);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF951E0, &unk_220DC1D80);
  v20 = OUTLINED_FUNCTION_18(v19);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v23);
  v25 = &v96 - v24;
  v26 = sub_220DBE560();
  v27 = OUTLINED_FUNCTION_0(v26);
  v104 = v28;
  v30 = *(v29 + 64);
  v31 = MEMORY[0x28223BE20](v27);
  v33 = &v96 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v34);
  v36 = &v96 - v35;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94FA0, &unk_220DC17F0);
  v38 = OUTLINED_FUNCTION_0(v37);
  v40 = v39;
  v42 = *(v41 + 64);
  v43 = MEMORY[0x28223BE20](v38);
  v45 = &v96 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v43);
  v47 = &v96 - v46;
  v48 = a6[1];
  v111 = *a6;
  v112 = v48;
  v49 = a6[2];
  v113 = a6[3];
  v51 = a6[4];
  v50 = a6[5];
  v107 = v49;
  v108 = v51;
  v109 = v50;
  v102 = a3;
  sub_220DBE110();
  sub_220DBE110();
  sub_220D287C0();
  v52 = sub_220DBE020();
  v106 = v40;
  v53 = *(v40 + 8);
  v53(v45, v37);
  v54 = v47;
  v55 = v37;
  v53(v54, v37);
  if (v52)
  {
    sub_220CF6B14(v103, v25, &qword_27CF951E0, &unk_220DC1D80);
    OUTLINED_FUNCTION_3_0(v25);
    if (v56)
    {
      v57 = v96;
      OUTLINED_FUNCTION_32_5();
      OUTLINED_FUNCTION_23_12(&v120);
      sub_220DBE6A0();
      v52 = v57;
      sub_220DBE390();
      (*(v100 + 8))(v33, v101);
      OUTLINED_FUNCTION_30_7();
      (*(v58 + 8))(v57, v26);
      OUTLINED_FUNCTION_3_0(v25);
      if (!v56)
      {
        sub_220CE1ABC(v25, &qword_27CF951E0, &unk_220DC1D80);
      }
    }

    else
    {
      OUTLINED_FUNCTION_30_7();
      (*(v63 + 32))(v36, v25, v26);
    }

    v64 = sub_220DBE440();
    (*(v52 + 8))(v36, v26);
    if (v64)
    {
      OUTLINED_FUNCTION_19();
      if (!v56)
      {
        OUTLINED_FUNCTION_10();
      }
    }

    else
    {
      OUTLINED_FUNCTION_19();
      if (!v56)
      {
        OUTLINED_FUNCTION_10();
      }
    }

    OUTLINED_FUNCTION_6_24();
    OUTLINED_FUNCTION_33();
    OUTLINED_FUNCTION_6_0();
    sub_220DBE240();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94FB8, &unk_220DC1E30);
    v67 = swift_allocObject();
    *(v67 + 16) = xmmword_220DC17A0;
    v68 = v110;
    (*(v106 + 16))(v110, v114, v55);
    OUTLINED_FUNCTION_7();
    OUTLINED_FUNCTION_35_3(v69, v70, v71);
    v116 = v107;
    v117 = v113;
    v118 = v108;
    v119 = v109;
    v72 = sub_220D96EB4(v68, v115);
    v74 = v73;
    sub_220CE1ABC(v68, &qword_27CF95648, &qword_220DC2D00);
    *(v67 + 56) = MEMORY[0x277D837D0];
    *(v67 + 64) = sub_220CEFDB0();
    *(v67 + 32) = v72;
    *(v67 + 40) = v74;
  }

  else
  {
    v59 = v97;
    sub_220CF6B14(v103, v97, &qword_27CF951E0, &unk_220DC1D80);
    OUTLINED_FUNCTION_3_0(v59);
    if (v56)
    {
      v60 = v96;
      OUTLINED_FUNCTION_32_5();
      v61 = v98;
      sub_220DBE6A0();
      v52 = v60;
      sub_220DBE390();
      (*(v100 + 8))(v61, v101);
      OUTLINED_FUNCTION_30_7();
      (*(v62 + 8))(v60, v26);
      OUTLINED_FUNCTION_3_0(v59);
      if (!v56)
      {
        sub_220CE1ABC(v59, &qword_27CF951E0, &unk_220DC1D80);
      }
    }

    else
    {
      OUTLINED_FUNCTION_30_7();
      (*(v65 + 32))(v33, v59, v26);
    }

    v66 = sub_220DBE440();
    (*(v52 + 8))(v33, v26);
    if (v66)
    {
      OUTLINED_FUNCTION_19();
      if (!v56)
      {
        OUTLINED_FUNCTION_10();
      }
    }

    else
    {
      OUTLINED_FUNCTION_19();
      if (!v56)
      {
        OUTLINED_FUNCTION_10();
      }
    }

    OUTLINED_FUNCTION_6_24();
    OUTLINED_FUNCTION_33();
    OUTLINED_FUNCTION_6_0();
    v104 = sub_220DBE240();
    v105 = v75;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94FB8, &unk_220DC1E30);
    v76 = swift_allocObject();
    *(v76 + 16) = xmmword_220DC17C0;
    v106 = *(v106 + 16);
    v77 = v110;
    (v106)(v110, v102, v55);
    OUTLINED_FUNCTION_7();
    OUTLINED_FUNCTION_35_3(v78, v79, v80);
    v81 = v107;
    v82 = v108;
    v116 = v107;
    v117 = v113;
    v83 = v109;
    v118 = v108;
    v119 = v109;
    v84 = sub_220D96EB4(v77, v115);
    v86 = v85;
    sub_220CE1ABC(v77, &qword_27CF95648, &qword_220DC2D00);
    *(v76 + 56) = MEMORY[0x277D837D0];
    v87 = sub_220CEFDB0();
    *(v76 + 64) = v87;
    *(v76 + 32) = v84;
    *(v76 + 40) = v86;
    (v106)(v77, v114, v55);
    OUTLINED_FUNCTION_7();
    OUTLINED_FUNCTION_35_3(v88, v89, v90);
    v116 = v81;
    v117 = v113;
    v118 = v82;
    v119 = v83;
    v91 = sub_220D96EB4(v77, v115);
    v93 = v92;
    sub_220CE1ABC(v77, &qword_27CF95648, &qword_220DC2D00);
    *(v76 + 96) = MEMORY[0x277D837D0];
    *(v76 + 104) = v87;
    *(v76 + 72) = v91;
    *(v76 + 80) = v93;
  }

  v94 = sub_220DC05F0();

  return v94;
}

uint64_t sub_220D96EB4(uint64_t a1, void **a2)
{
  v29 = sub_220DC0300();
  v4 = *(v29 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v29);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_220DC0A40();
  v30 = *(v28 - 8);
  v8 = *(v30 + 64);
  MEMORY[0x28223BE20](v28);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95648, &qword_220DC2D00);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v27 - v13;
  v15 = *a2;
  sub_220CF6B14(a1, &v27 - v13, &qword_27CF95648, &qword_220DC2D00);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94FA0, &unk_220DC17F0);
  if (__swift_getEnumTagSinglePayload(v14, 1, v16) == 1)
  {
    sub_220CE1ABC(v14, &qword_27CF95648, &qword_220DC2D00);
    return 0;
  }

  else
  {
    v18 = v10;
    sub_220DC02B0();
    v19 = sub_220DBF130();
    v20 = *(v19 + 48);
    v21 = *(v19 + 52);
    swift_allocObject();
    v27 = v16;
    v22 = v15;
    sub_220DBF120();
    v23 = [v22 symbol];
    sub_220DC0620();

    v24 = v29;
    (*(v4 + 104))(v7, *MEMORY[0x277D7B408], v29);
    sub_220CF6ABC();
    v25 = v28;
    v17 = sub_220DBE090();

    (*(v4 + 8))(v7, v24);
    (*(v30 + 8))(v18, v25);
    (*(*(v27 - 8) + 8))(v14);
  }

  return v17;
}

uint64_t sub_220D97208@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void (*a3)(void)@<X2>, void (*a4)(void)@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v244 = a8;
  v263 = a7;
  v264 = a4;
  v270 = a6;
  v258 = a5;
  v259 = a2;
  v272 = a3;
  v260 = a1;
  v261 = a9;
  v249 = sub_220DBE6E0();
  v10 = OUTLINED_FUNCTION_0(v249);
  v247 = v11;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_1_21();
  OUTLINED_FUNCTION_4_4(v14);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF951E0, &unk_220DC1D80);
  v16 = OUTLINED_FUNCTION_18(v15);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_4_4(&v239 - v20);
  v248 = sub_220DBE560();
  v21 = OUTLINED_FUNCTION_0(v248);
  v242 = v22;
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_4_4(&v239 - v27);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94FA0, &unk_220DC17F0);
  v29 = OUTLINED_FUNCTION_0(v28);
  v31 = v30;
  v33 = *(v32 + 64);
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_4_4(&v239 - v37);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95648, &qword_220DC2D00);
  v39 = OUTLINED_FUNCTION_18(v38);
  v41 = *(v40 + 64);
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_13();
  v43 = MEMORY[0x28223BE20](v42);
  v45 = &v239 - v44;
  MEMORY[0x28223BE20](v43);
  v47 = &v239 - v46;
  v49 = *a10;
  v48 = *(a10 + 8);
  v51 = *(a10 + 16);
  v50 = *(a10 + 24);
  v52 = *(a10 + 32);
  v53 = *(a10 + 40);
  v254 = v31;
  v54 = *(v31 + 16);
  v262 = v31 + 16;
  v257 = v54;
  v54(&v239 - v46, v272, v28);
  OUTLINED_FUNCTION_7();
  v271 = v28;
  v55 = v28;
  v56 = v53;
  __swift_storeEnumTagSinglePayload(v57, v58, v59, v55);
  v273 = v49;
  v274 = v48;
  v275 = v51;
  v276 = v50;
  v277 = v52;
  v278 = v53;
  v60 = sub_220D96EB4(v47, &v273);
  v62 = v61;
  v256 = v47;
  sub_220CE1ABC(v47, &qword_27CF95648, &qword_220DC2D00);
  v267 = v49;
  v268 = v48;
  v273 = v49;
  v274 = v48;
  v265 = v51;
  v266 = v52;
  v275 = v51;
  v276 = v50;
  v269 = v50;
  v277 = v52;
  v278 = v56;
  v64 = v60 == sub_220D96EB4(v270, &v273) && v62 == v63;
  if (v64)
  {
  }

  else
  {
    v65 = sub_220DC0CA0();

    if ((v65 & 1) == 0)
    {
      v66 = 1;
      goto LABEL_14;
    }
  }

  v67 = v256;
  v68 = v271;
  v257(v256, v264, v271);
  OUTLINED_FUNCTION_7();
  __swift_storeEnumTagSinglePayload(v69, v70, v71, v68);
  v72 = v267;
  v73 = v268;
  v273 = v267;
  v274 = v268;
  v75 = v265;
  v74 = v266;
  v76 = v269;
  v275 = v265;
  v276 = v269;
  v277 = v266;
  v278 = v56;
  v77 = sub_220D96EB4(v67, &v273);
  v79 = v78;
  sub_220CE1ABC(v67, &qword_27CF95648, &qword_220DC2D00);
  v273 = v72;
  v274 = v73;
  v275 = v75;
  v276 = v76;
  v277 = v74;
  v278 = v56;
  if (v77 == sub_220D96EB4(v263, &v273) && v79 == v80)
  {

    v66 = 0;
  }

  else
  {
    v82 = sub_220DC0CA0();

    v66 = v82 ^ 1;
  }

LABEL_14:
  sub_220CF6B14(v270, v45, &qword_27CF95648, &qword_220DC2D00);
  v83 = v271;
  if (__swift_getEnumTagSinglePayload(v45, 1, v271) == 1)
  {
LABEL_17:
    sub_220CE1ABC(v45, &qword_27CF95648, &qword_220DC2D00);
LABEL_18:
    OUTLINED_FUNCTION_14_17();
    v275 = v265;
    v276 = v269;
    v277 = v266;
    v278 = v56;
    sub_220D96618(v260, v259, v272, v264, v258, &v273);
    sub_220DC0240();
  }

  v84 = v254;
  v85 = *(v254 + 32);
  v86 = v255;
  v85(v255, v45, v83);
  v45 = v252;
  sub_220CF6B14(v263, v252, &qword_27CF95648, &qword_220DC2D00);
  if (__swift_getEnumTagSinglePayload(v45, 1, v83) == 1)
  {
    (*(v84 + 8))(v86, v83);
    goto LABEL_17;
  }

  v270 = v56;
  v88 = v253;
  v85(v253, v45, v83);
  if ((v66 & 1) == 0)
  {
    v97 = *(v84 + 8);
    v97(v88, v83);
    v97(v86, v83);
    v56 = v270;
    goto LABEL_18;
  }

  v89 = v241;
  sub_220CF6B14(v258, v241, &qword_27CF951E0, &unk_220DC1D80);
  v90 = v248;
  if (__swift_getEnumTagSinglePayload(v89, 1, v248) == 1)
  {
    v91 = v243;
    sub_220DBE3E0();
    OUTLINED_FUNCTION_23_12(&v277);
    sub_220DBE6A0();
    v92 = v240;
    sub_220DBE390();
    (*(v247 + 8))(v86, v249);
    OUTLINED_FUNCTION_23_12(&v273);
    v94 = v91;
    v95 = v92;
    (*(v93 + 8))(v94, v90);
    OUTLINED_FUNCTION_5_21(v89);
    v96 = v246;
    if (!v64)
    {
      sub_220CE1ABC(v89, &qword_27CF951E0, &unk_220DC1D80);
    }
  }

  else
  {
    OUTLINED_FUNCTION_23_12(&v273);
    v95 = v240;
    (*(v98 + 32))(v240, v89, v90);
    v96 = v246;
  }

  LODWORD(v263) = sub_220DBE440();
  v99 = *(v86 + 8);
  v99(v95, v90);
  sub_220CF6B14(v244, v96, &qword_27CF951E0, &unk_220DC1D80);
  OUTLINED_FUNCTION_5_21(v96);
  if (v64)
  {
    v100 = v243;
    sub_220DBE3E0();
    OUTLINED_FUNCTION_23_12(&v277);
    sub_220DBE6A0();
    v101 = v245;
    sub_220DBE390();
    v102 = v101;
    (*(v247 + 8))(v86, v249);
    v99(v100, v90);
    OUTLINED_FUNCTION_5_21(v96);
    if (!v64)
    {
      sub_220CE1ABC(v96, &qword_27CF951E0, &unk_220DC1D80);
    }
  }

  else
  {
    v102 = v245;
    (*(v86 + 32))(v245, v96, v90);
  }

  v103 = sub_220DBE440();
  v99(v102, v90);
  v104 = v263 & v103;
  v105 = v250;
  sub_220DBE110();
  v106 = v251;
  sub_220DBE110();
  sub_220D287C0();
  v107 = OUTLINED_FUNCTION_25_10();
  v108 = *(v84 + 8);
  v109 = v271;
  v108(v106, v271);
  v108(v105, v109);
  sub_220DBE110();
  v110 = v253;
  sub_220DBE110();
  v111 = OUTLINED_FUNCTION_25_10();
  v108(v106, v109);
  v254 = v84 + 8;
  v263 = v108;
  v108(v105, v109);
  if ((v107 & 1) == 0)
  {
    if ((v111 & 1) == 0)
    {
      if (v104)
      {
        OUTLINED_FUNCTION_19();
        if (!v64)
        {
          OUTLINED_FUNCTION_10();
        }
      }

      else
      {
        OUTLINED_FUNCTION_19();
        if (!v64)
        {
          OUTLINED_FUNCTION_10();
        }
      }

      OUTLINED_FUNCTION_5_1();
      OUTLINED_FUNCTION_33();
      OUTLINED_FUNCTION_6_0();
      v250 = sub_220DBE240();
      v249 = v195;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF951E8, &qword_220DC1D90);
      v259 = OUTLINED_FUNCTION_41();
      OUTLINED_FUNCTION_0(v259);
      v197 = v196;
      v199 = (*(v196 + 80) + 32) & ~*(v196 + 80);
      v258 = *(v198 + 72);
      v200 = v258;
      v201 = swift_allocObject();
      v248 = v201;
      *(v201 + 16) = xmmword_220DC1CE0;
      v260 = (v201 + v199);
      v202 = v256;
      v203 = v271;
      OUTLINED_FUNCTION_10_22();
      v106();
      v204 = OUTLINED_FUNCTION_3_29();
      __swift_storeEnumTagSinglePayload(v204, v205, v206, v203);
      v207 = v267;
      v208 = v268;
      v273 = v267;
      v274 = v268;
      v275 = v265;
      v276 = v269;
      v209 = OUTLINED_FUNCTION_11_17();
      v211 = v210;
      sub_220CE1ABC(v202, &qword_27CF95648, &qword_220DC2D00);
      v212 = v260;
      *v260 = v209;
      v212[1] = v211;
      LODWORD(v252) = *MEMORY[0x277D7B3C8];
      v213 = *(v197 + 104);
      v251 = (v197 + 104);
      v272 = v213;
      (v213)(v212);
      v214 = (v212 + v200);
      (v106)(v202, v264, v203);
      v215 = OUTLINED_FUNCTION_3_29();
      __swift_storeEnumTagSinglePayload(v215, v216, v217, v203);
      v273 = v207;
      v274 = v208;
      v218 = v265;
      v219 = v266;
      v220 = v269;
      v275 = v265;
      v276 = v269;
      v277 = v266;
      v278 = v270;
      sub_220D96EB4(v202, &v273);
      v221 = OUTLINED_FUNCTION_20_7();
      sub_220CE1ABC(v221, &qword_27CF95648, &qword_220DC2D00);
      *v214 = v208;
      v214[1] = v212;
      (v272)(v212 + v200, v252, v259);
      v222 = (v260 + 2 * v258);
      v223 = v271;
      (v106)(v202, v255, v271);
      v224 = OUTLINED_FUNCTION_3_29();
      v225 = v223;
      __swift_storeEnumTagSinglePayload(v224, v226, v227, v223);
      OUTLINED_FUNCTION_14_17();
      v275 = v218;
      v276 = v220;
      v228 = v270;
      v277 = v219;
      v278 = v270;
      v229 = sub_220D96EB4(v202, &v273);
      v231 = v230;
      sub_220CE1ABC(v202, &qword_27CF95648, &qword_220DC2D00);
      *v222 = v229;
      v222[1] = v231;
      v232 = v252;
      v233 = v259;
      v110 = v272;
      (v272)(v222, v252, v259);
      v234 = (v260 + 3 * v258);
      v257(v202, v253, v225);
      v235 = OUTLINED_FUNCTION_3_29();
      __swift_storeEnumTagSinglePayload(v235, v236, v237, v225);
      OUTLINED_FUNCTION_14_17();
      v275 = v218;
      v276 = v269;
      v277 = v266;
      v278 = v228;
      sub_220D96EB4(v202, &v273);
      v238 = OUTLINED_FUNCTION_21_10();
      sub_220CE1ABC(v238, &qword_27CF95648, &qword_220DC2D00);
      *v234 = v218;
      v234[1] = v229;
      (v110)(v234, v232, v233);
      sub_220DC0220();
      OUTLINED_FUNCTION_22_10();
      v110();
      v193 = v255;
      v194 = v225;
      return (v110)(v193, v194);
    }

    if (v104)
    {
      OUTLINED_FUNCTION_19();
      if (!v64)
      {
        OUTLINED_FUNCTION_10();
      }
    }

    else
    {
      OUTLINED_FUNCTION_19();
      if (!v64)
      {
        OUTLINED_FUNCTION_10();
      }
    }

    OUTLINED_FUNCTION_5_1();
    OUTLINED_FUNCTION_33();
    OUTLINED_FUNCTION_6_0();
    v252 = sub_220DBE240();
    v251 = v140;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF951E8, &qword_220DC1D90);
    v260 = OUTLINED_FUNCTION_41();
    OUTLINED_FUNCTION_0(v260);
    v142 = v141;
    v144 = *(v143 + 72);
    v145 = OUTLINED_FUNCTION_15_14(&v279);
    OUTLINED_FUNCTION_18_14(v145, &v280, xmmword_220DC1CC0);
    v146 = v271;
    OUTLINED_FUNCTION_10_22();
    v106();
    v147 = OUTLINED_FUNCTION_3_29();
    __swift_storeEnumTagSinglePayload(v147, v148, v149, v146);
    v150 = OUTLINED_FUNCTION_12_22();
    v152 = v151;
    sub_220CE1ABC(v108, &qword_27CF95648, &qword_220DC2D00);
    *v105 = v150;
    *(v105 + 1) = v152;
    LODWORD(v258) = *MEMORY[0x277D7B3C8];
    v153 = *(v142 + 104);
    v259 = v142 + 104;
    v272 = v153;
    (v153)(v105);
    v154 = v249;
    v155 = (v105 + v249);
    (v106)(v108, v264, v146);
    v156 = OUTLINED_FUNCTION_3_29();
    __swift_storeEnumTagSinglePayload(v156, v157, v158, v146);
    OUTLINED_FUNCTION_17_11();
    v159 = OUTLINED_FUNCTION_20_7();
    sub_220CE1ABC(v159, &qword_27CF95648, &qword_220DC2D00);
    *v155 = v104;
    v155[1] = v111;
    v160 = v260;
    (v272)(v105 + v154, v258, v260);
    v161 = OUTLINED_FUNCTION_19_12();
    (v106)(v161);
    v162 = OUTLINED_FUNCTION_3_29();
    __swift_storeEnumTagSinglePayload(v162, v163, v164, v146);
    OUTLINED_FUNCTION_14_17();
    v275 = v110;
    v276 = v269;
    OUTLINED_FUNCTION_11_17();
    v165 = OUTLINED_FUNCTION_21_10();
    sub_220CE1ABC(v165, &qword_27CF95648, &qword_220DC2D00);
    *v111 = v105;
    *(v111 + 8) = v155;
    (v272)(v111, v258, v160);
    v166 = &v280;
LABEL_57:
    v192 = *(v166 - 32);
    sub_220DC0220();
    OUTLINED_FUNCTION_22_10();
    v110();
    v193 = v255;
    v194 = v146;
    return (v110)(v193, v194);
  }

  if ((v111 & 1) == 0)
  {
    if (v104)
    {
      OUTLINED_FUNCTION_19();
      if (!v64)
      {
        OUTLINED_FUNCTION_10();
      }
    }

    else
    {
      OUTLINED_FUNCTION_19();
      if (!v64)
      {
        OUTLINED_FUNCTION_10();
      }
    }

    OUTLINED_FUNCTION_5_1();
    OUTLINED_FUNCTION_33();
    OUTLINED_FUNCTION_6_0();
    v258 = sub_220DBE240();
    v252 = v167;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF951E8, &qword_220DC1D90);
    v272 = OUTLINED_FUNCTION_41();
    OUTLINED_FUNCTION_0(v272);
    v169 = v168;
    v171 = *(v170 + 72);
    v172 = OUTLINED_FUNCTION_15_14(&v280);
    OUTLINED_FUNCTION_18_14(v172, &v281, xmmword_220DC1CC0);
    v146 = v271;
    OUTLINED_FUNCTION_10_22();
    v106();
    v173 = OUTLINED_FUNCTION_3_29();
    __swift_storeEnumTagSinglePayload(v173, v174, v175, v146);
    v176 = OUTLINED_FUNCTION_12_22();
    v178 = v177;
    sub_220CE1ABC(v108, &qword_27CF95648, &qword_220DC2D00);
    *v105 = v176;
    *(v105 + 1) = v178;
    LODWORD(v259) = *MEMORY[0x277D7B3C8];
    v179 = *(v169 + 104);
    v260 = (v169 + 104);
    v264 = v179;
    v179(v105);
    v180 = v250;
    v181 = (v105 + v250);
    (v106)(v108, v255, v146);
    v182 = OUTLINED_FUNCTION_3_29();
    __swift_storeEnumTagSinglePayload(v182, v183, v184, v146);
    OUTLINED_FUNCTION_17_11();
    v185 = OUTLINED_FUNCTION_20_7();
    sub_220CE1ABC(v185, &qword_27CF95648, &qword_220DC2D00);
    *v181 = v104;
    v181[1] = v111;
    v186 = v272;
    (v264)(v105 + v180, v259, v272);
    v187 = OUTLINED_FUNCTION_19_12();
    (v106)(v187);
    v188 = OUTLINED_FUNCTION_3_29();
    __swift_storeEnumTagSinglePayload(v188, v189, v190, v146);
    OUTLINED_FUNCTION_14_17();
    v275 = v110;
    v276 = v269;
    OUTLINED_FUNCTION_11_17();
    v191 = OUTLINED_FUNCTION_21_10();
    sub_220CE1ABC(v191, &qword_27CF95648, &qword_220DC2D00);
    *v111 = v105;
    *(v111 + 8) = v181;
    (v264)(v111, v259, v186);
    v166 = &v281;
    goto LABEL_57;
  }

  if (v104)
  {
    v112 = v256;
    OUTLINED_FUNCTION_19();
    if (!v64)
    {
      OUTLINED_FUNCTION_10();
    }
  }

  else
  {
    v112 = v256;
    OUTLINED_FUNCTION_19();
    if (!v64)
    {
      OUTLINED_FUNCTION_10();
    }
  }

  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_6_0();
  v272 = sub_220DBE240();
  v260 = v113;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF951E8, &qword_220DC1D90);
  v258 = OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_0(v258);
  v115 = v114;
  v117 = *(v116 + 72);
  v118 = (*(v114 + 80) + 32) & ~*(v114 + 80);
  v119 = swift_allocObject();
  v259 = v119;
  *(v119 + 16) = xmmword_220DC17C0;
  v120 = (v119 + v118);
  v121 = v271;
  OUTLINED_FUNCTION_31_6();
  v122();
  OUTLINED_FUNCTION_7();
  __swift_storeEnumTagSinglePayload(v123, v124, v125, v121);
  OUTLINED_FUNCTION_14_17();
  v126 = OUTLINED_FUNCTION_26_8();
  v128 = v127;
  sub_220CE1ABC(v112, &qword_27CF95648, &qword_220DC2D00);
  *v120 = v126;
  v120[1] = v128;
  v129 = *MEMORY[0x277D7B3C8];
  v130 = *(v115 + 104);
  v115 += 104;
  v131 = v258;
  v130(v120, v129, v258);
  v132 = (v120 + v117);
  OUTLINED_FUNCTION_31_6();
  v133();
  OUTLINED_FUNCTION_7();
  __swift_storeEnumTagSinglePayload(v134, v135, v136, v121);
  OUTLINED_FUNCTION_14_17();
  v137 = OUTLINED_FUNCTION_26_8();
  v139 = v138;
  sub_220CE1ABC(v112, &qword_27CF95648, &qword_220DC2D00);
  *v132 = v137;
  v132[1] = v139;
  v130(v132, v129, v131);
  sub_220DC0220();
  OUTLINED_FUNCTION_22_10();
  (v115)();
  return (v115)(v255, v121);
}

uint64_t ChartViewModelInterpolationMode.hashValue.getter()
{
  v1 = *v0;
  sub_220DC0CE0();
  MEMORY[0x223D98920](v1);
  return sub_220DC0D20();
}

unint64_t sub_220D9882C()
{
  result = qword_27CF96450;
  if (!qword_27CF96450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF96450);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ChartViewModelInterpolationMode(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for FeelsLikeDifferenceRule(_BYTE *result, int a2, int a3)
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

uint64_t FeelsLikeNoDifferenceRule.description(for:data:)()
{
  if (qword_280FA6600 != -1)
  {
    swift_once();
  }

  return sub_220DBE240();
}

_BYTE *storeEnumTagSinglePayload for FeelsLikeNoDifferenceRule(_BYTE *result, int a2, int a3)
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

uint64_t static ConditionDetailChartHeaderInput.HeaderKind.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v78 = a1;
  v79 = a2;
  v77 = sub_220DBE830();
  v2 = OUTLINED_FUNCTION_0(v77);
  v80 = v3;
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v2);
  v75 = &v73 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v74 = &v73 - v9;
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v73 - v11;
  MEMORY[0x28223BE20](v10);
  v14 = &v73 - v13;
  v15 = sub_220DBEAD0();
  v16 = OUTLINED_FUNCTION_0(v15);
  v76 = v17;
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_1();
  v22 = (v21 - v20);
  v23 = type metadata accessor for ConditionDetailChartHeaderInput.HeaderKind(0);
  v24 = OUTLINED_FUNCTION_6(v23);
  v26 = *(v25 + 64);
  v27 = MEMORY[0x28223BE20](v24);
  v29 = &v73 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x28223BE20](v27);
  v32 = &v73 - v31;
  MEMORY[0x28223BE20](v30);
  v34 = &v73 - v33;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF96458, &unk_220DC7740);
  v36 = *(*(v35 - 8) + 64);
  v37 = MEMORY[0x28223BE20](v35 - 8);
  v39 = &v73 - v38;
  v40 = &v73 + *(v37 + 56) - v38;
  sub_220D34C0C(v78, &v73 - v38);
  sub_220D34C0C(v79, v40);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_220D34C0C(v39, v32);
      v42 = swift_getEnumCaseMultiPayload();
      v43 = v80;
      if (v42 == 1)
      {
        v44 = v74;
        v45 = v77;
        (*(v80 + 32))(v74, v40, v77);
        v46 = sub_220DBE7F0();
        v47 = *(v43 + 8);
        v47(v44, v45);
        v47(v32, v45);
LABEL_15:
        sub_220D9914C(v39);
        return v46 & 1;
      }

      (*(v80 + 8))(v32, v77);
    }

    else
    {
      sub_220D34C0C(v39, v29);
      v51 = swift_getEnumCaseMultiPayload();
      v52 = v80;
      if (v51 == 2)
      {
        v53 = v75;
        v54 = v40;
        v55 = v77;
        (*(v80 + 32))(v75, v54, v77);
        v46 = sub_220DBE7F0();
        v56 = *(v52 + 8);
        v56(v53, v55);
        v56(v29, v55);
        goto LABEL_15;
      }

      (*(v80 + 8))(v29, v77);
    }

    goto LABEL_11;
  }

  v48 = v22;
  v79 = v12;
  v49 = v76;
  sub_220D34C0C(v39, v34);
  v50 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94FC8, &qword_220DC1800) + 48);
  if (swift_getEnumCaseMultiPayload())
  {
    (*(v80 + 8))(&v34[v50], v77);
    (*(v49 + 1))(v34, v15);
LABEL_11:
    sub_220CDA548(v39, &qword_27CF96458, &unk_220DC7740);
    goto LABEL_12;
  }

  v57 = *(v49 + 4);
  v58 = v48;
  v73 = v15;
  v57(v48, v40, v15);
  v59 = v80;
  v60 = *(v80 + 32);
  v78 = v14;
  v61 = v14;
  v62 = v77;
  v60(v61, &v34[v50], v77);
  v63 = &v40[v50];
  v64 = v79;
  v60(v79, v63, v62);
  v65 = sub_220DBEA00();
  v66 = *(v49 + 1);
  v67 = v34;
  v68 = v73;
  v66(v67, v73);
  if (v65)
  {
    v76 = v58;
    v69 = v78;
    v46 = sub_220DBE7F0();
    v70 = *(v59 + 8);
    v70(v64, v62);
    v70(v69, v62);
    v66(v76, v68);
    goto LABEL_15;
  }

  v72 = *(v59 + 8);
  v72(v64, v62);
  v72(v78, v62);
  v66(v58, v68);
  sub_220D9914C(v39);
LABEL_12:
  v46 = 0;
  return v46 & 1;
}

uint64_t sub_220D9914C(uint64_t a1)
{
  v2 = type metadata accessor for ConditionDetailChartHeaderInput.HeaderKind(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t ConditionDetailChartHeaderInput.condition.getter()
{
  result = OUTLINED_FUNCTION_5_29();
  *v0 = *(v1 + *(result + 20));
  return result;
}

uint64_t ConditionDetailChartHeaderInput.hourlyForecast.getter()
{
  v0 = *(OUTLINED_FUNCTION_5_29() + 24);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95270, &unk_220DC3AF0);
  OUTLINED_FUNCTION_6(v1);
  v3 = *(v2 + 16);
  v4 = OUTLINED_FUNCTION_2_10();

  return v5(v4);
}

uint64_t ConditionDetailChartHeaderInput.selectedDate.getter()
{
  v0 = *(OUTLINED_FUNCTION_5_29() + 28);
  v1 = sub_220DBE560();
  OUTLINED_FUNCTION_6(v1);
  v3 = *(v2 + 16);
  v4 = OUTLINED_FUNCTION_2_10();

  return v5(v4);
}

uint64_t ConditionDetailChartHeaderInput.timeZone.getter()
{
  v0 = *(OUTLINED_FUNCTION_5_29() + 32);
  v1 = sub_220DBE740();
  OUTLINED_FUNCTION_6(v1);
  v3 = *(v2 + 16);
  v4 = OUTLINED_FUNCTION_2_10();

  return v5(v4);
}

uint64_t ConditionDetailChartHeaderInput.init(kind:condition:hourlyForecast:selectedDate:timeZone:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v10 = *a2;
  sub_220D99458(a1, a6);
  v11 = type metadata accessor for ConditionDetailChartHeaderInput(0);
  *(a6 + v11[5]) = v10;
  v12 = v11[6];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95270, &unk_220DC3AF0);
  OUTLINED_FUNCTION_6(v13);
  (*(v14 + 32))(a6 + v12, a3);
  v15 = v11[7];
  v16 = sub_220DBE560();
  OUTLINED_FUNCTION_6(v16);
  (*(v17 + 32))(a6 + v15, a4);
  v18 = v11[8];
  v19 = sub_220DBE740();
  OUTLINED_FUNCTION_6(v19);
  v21 = *(v20 + 32);

  return v21(a6 + v18, a5);
}

uint64_t sub_220D99458(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ConditionDetailChartHeaderInput.HeaderKind(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t ConditionDetailChartHeaderInput.with(selectedDate:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v37 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF951E0, &unk_220DC1D80);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v35[-v6];
  v8 = sub_220DBE560();
  v9 = OUTLINED_FUNCTION_0(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_1();
  v38 = v15 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95270, &unk_220DC3AF0);
  v17 = OUTLINED_FUNCTION_0(v16);
  v19 = v18;
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v17);
  v23 = &v35[-v22];
  v24 = type metadata accessor for ConditionDetailChartHeaderInput.HeaderKind(0);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x28223BE20](v24 - 8);
  OUTLINED_FUNCTION_1();
  v28 = v27 - v26;
  sub_220D34C0C(v2, v27 - v26);
  v29 = type metadata accessor for ConditionDetailChartHeaderInput(0);
  v30 = v29[6];
  v36 = *(v2 + v29[5]);
  (*(v19 + 16))(v23, v2 + v30, v16);
  sub_220D56F0C(v37, v7);
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    (*(v11 + 16))(v38, v2 + v29[7], v8);
    if (__swift_getEnumTagSinglePayload(v7, 1, v8) != 1)
    {
      sub_220CDA548(v7, &qword_27CF951E0, &unk_220DC1D80);
    }
  }

  else
  {
    (*(v11 + 32))(v38, v7, v8);
  }

  v31 = v29[8];
  v32 = sub_220DBE740();
  OUTLINED_FUNCTION_6(v32);
  (*(v33 + 16))(a2 + v31, v2 + v31);
  sub_220D99458(v28, a2);
  *(a2 + v29[5]) = v36;
  (*(v19 + 32))(a2 + v29[6], v23, v16);
  return (*(v11 + 32))(a2 + v29[7], v38, v8);
}

uint64_t static ConditionDetailChartHeaderInput.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (static ConditionDetailChartHeaderInput.HeaderKind.== infix(_:_:)(a1, a2))
  {
    v4 = type metadata accessor for ConditionDetailChartHeaderInput(0);
    if (sub_220D05D68(*(a1 + v4[5]), *(a2 + v4[5])))
    {
      v5 = v4[6];
      sub_220DBE960();
      sub_220D99924(&qword_280FA7758);
      sub_220D99924(&qword_280FA7768);
      sub_220D99924(&qword_280FA7760);
      if (sub_220DBEF80())
      {
        v6 = v4[7];
        if (sub_220DBE460())
        {
          v7 = v4[8];

          JUMPOUT(0x223D96350);
        }
      }
    }
  }

  return 0;
}

uint64_t sub_220D99924(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_220DBE960();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_220D99994()
{
  type metadata accessor for ConditionDetailChartHeaderInput.HeaderKind(319);
  if (v0 <= 0x3F)
  {
    sub_220CD431C();
    if (v1 <= 0x3F)
    {
      sub_220DBE560();
      if (v2 <= 0x3F)
      {
        sub_220DBE740();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_220D99A50()
{
  sub_220D99AC4();
  if (v0 <= 0x3F)
  {
    sub_220D99B38();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_220D99AC4()
{
  if (!qword_27CF96480)
  {
    sub_220DBEAD0();
    sub_220DBE830();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27CF96480);
    }
  }
}

void sub_220D99B38()
{
  if (!qword_27CF96488)
  {
    v0 = sub_220DBE830();
    if (!v1)
    {
      atomic_store(v0, &qword_27CF96488);
    }
  }
}

uint64_t HumidityTitleStringBuilder.makeAttributedHumidityString(_:symbolFont:symbolColor:symbolSpacing:)@<X0>(double a1@<X2>, double a2@<X3>, uint64_t a3@<X8>, double a4@<D0>)
{
  v58 = a2;
  v56 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95228, &unk_220DC1E60);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = v54 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF96490, &qword_220DC7808);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  OUTLINED_FUNCTION_9();
  v59 = v12;
  MEMORY[0x28223BE20](v13);
  v15 = v54 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF96498, &qword_220DC7810);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_9();
  v55 = v18;
  MEMORY[0x28223BE20](v19);
  v60 = (v54 - v20);
  v21 = sub_220DBE260();
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21 - 8);
  v23 = sub_220DBE210();
  v61 = *(v23 - 8);
  v24 = *(v61 + 64);
  MEMORY[0x28223BE20](v23);
  v26 = v54 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);

  sub_220DBE250();
  sub_220DBE220();
  sub_220CEFE04();
  v27 = sub_220DC09F0();
  v28 = v23;
  v29 = sub_220CEFE48(v27);
  if (v30)
  {
    v31 = v29;
    v32 = v30;
    v57 = a3;
    v64 = v29;
    v65 = v30;
    sub_220DBE5E0();
    OUTLINED_FUNCTION_3_30();
    v33 = sub_220D9A174();
    v54[2] = sub_220CEFF14();
    sub_220DBE280();
    sub_220CE1ABC(v9, &qword_27CF95228, &unk_220DC1E60);
    if (__swift_getEnumTagSinglePayload(v15, 1, v16) == 1)
    {

      sub_220CE1ABC(v15, &qword_27CF96490, &qword_220DC7808);
      a3 = v57;
    }

    else
    {
      v34 = v15;
      v35 = v60;
      sub_220D9A1CC(v34, v60);
      v54[0] = v33;
      v36 = v58;

      v54[1] = sub_220D9A23C();
      sub_220DBE230();
      OUTLINED_FUNCTION_21();
      v62 = v36;
      v37 = sub_220D9A2A0();
      OUTLINED_FUNCTION_4_25(v37, MEMORY[0x277CDF230]);
      v38 = OUTLINED_FUNCTION_1_37();
      v35(v38);
      v64 = 0x3D3F28645CLL;
      v65 = 0xE500000000000000;
      MEMORY[0x223D982B0](v31, v32);

      MEMORY[0x223D982B0](41, 0xE100000000000000);
      v39 = v65;
      OUTLINED_FUNCTION_3_30();
      v40 = v59;
      v41 = v28;
      sub_220DBE280();
      sub_220CE1ABC(v9, &qword_27CF95228, &unk_220DC1E60);

      if (__swift_getEnumTagSinglePayload(v40, 1, v16) == 1)
      {
        sub_220CE1ABC(v40, &qword_27CF96490, &qword_220DC7808);
        v42 = v60;
        sub_220DBE230();
        OUTLINED_FUNCTION_21();
        v62 = a4;
        v63 = 0;
        v43 = sub_220D9A2F4();
        OUTLINED_FUNCTION_4_25(v43, MEMORY[0x277CDF278]);
        v44 = OUTLINED_FUNCTION_1_37();
        v39(v44);
        a3 = v57;
        v45 = v42;
      }

      else
      {
        v46 = v55;
        sub_220D9A1CC(v40, v55);
        sub_220DBE230();
        OUTLINED_FUNCTION_21();
        v62 = a4;
        v63 = 0;
        v47 = sub_220D9A2F4();
        OUTLINED_FUNCTION_4_25(v47, MEMORY[0x277CDF278]);
        v48 = OUTLINED_FUNCTION_1_37();
        v39(v48);
        v49 = v56;

        v50 = v60;
        sub_220DBE230();
        OUTLINED_FUNCTION_21();
        v62 = v49;
        v51 = sub_220D9A348();
        OUTLINED_FUNCTION_4_25(v51, MEMORY[0x277CDF260]);
        v52 = OUTLINED_FUNCTION_1_37();
        v39(v52);
        sub_220CE1ABC(v46, &qword_27CF96498, &qword_220DC7810);
        a3 = v57;
        v45 = v50;
      }

      sub_220CE1ABC(v45, &qword_27CF96498, &qword_220DC7810);
      v28 = v41;
    }
  }

  return (*(v61 + 32))(a3, v26, v28);
}

unint64_t sub_220D9A174()
{
  result = qword_27CF964A0;
  if (!qword_27CF964A0)
  {
    sub_220DBE210();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF964A0);
  }

  return result;
}

uint64_t sub_220D9A1CC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF96498, &qword_220DC7810);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_220D9A23C()
{
  result = qword_27CF964A8;
  if (!qword_27CF964A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF96498, &qword_220DC7810);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF964A8);
  }

  return result;
}

unint64_t sub_220D9A2A0()
{
  result = qword_27CF964B0;
  if (!qword_27CF964B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF964B0);
  }

  return result;
}

unint64_t sub_220D9A2F4()
{
  result = qword_27CF964B8;
  if (!qword_27CF964B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF964B8);
  }

  return result;
}

unint64_t sub_220D9A348()
{
  result = qword_27CF964C0;
  if (!qword_27CF964C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF964C0);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for HumidityTitleStringBuilder(_BYTE *result, int a2, int a3)
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

uint64_t ChartSeriesValues.interpolationElements.getter()
{
  OUTLINED_FUNCTION_11_18();
  v1 = *(v0 + 16);
}

uint64_t ChartSeriesValues.interpolationElements.setter(uint64_t a1)
{
  OUTLINED_FUNCTION_10_23();
  v3 = *(v1 + 16);
  *(v1 + 16) = a1;
}

uint64_t ChartSeriesValues.seriesMinValue.getter()
{
  OUTLINED_FUNCTION_11_18();
  result = *(v0 + 24);
  v2 = *(v0 + 32);
  return result;
}

uint64_t ChartSeriesValues.seriesMinValue.setter()
{
  OUTLINED_FUNCTION_21_11();
  result = OUTLINED_FUNCTION_10_23();
  *(v1 + 24) = v2;
  *(v1 + 32) = v0 & 1;
  return result;
}

uint64_t ChartSeriesValues.seriesMaxValue.getter()
{
  OUTLINED_FUNCTION_11_18();
  result = *(v0 + 40);
  v2 = *(v0 + 48);
  return result;
}

uint64_t ChartSeriesValues.seriesMaxValue.setter()
{
  OUTLINED_FUNCTION_21_11();
  result = OUTLINED_FUNCTION_10_23();
  *(v1 + 40) = v2;
  *(v1 + 48) = v0 & 1;
  return result;
}

uint64_t ChartSeriesValues.seriesMinSecondValue.getter()
{
  OUTLINED_FUNCTION_11_18();
  result = *(v0 + 56);
  v2 = *(v0 + 64);
  return result;
}

uint64_t ChartSeriesValues.seriesMinSecondValue.setter()
{
  OUTLINED_FUNCTION_21_11();
  result = OUTLINED_FUNCTION_10_23();
  *(v1 + 56) = v2;
  *(v1 + 64) = v0 & 1;
  return result;
}

uint64_t ChartSeriesValues.seriesMaxSecondValue.getter()
{
  OUTLINED_FUNCTION_11_18();
  result = *(v0 + 72);
  v2 = *(v0 + 80);
  return result;
}

uint64_t ChartSeriesValues.seriesMaxSecondValue.setter()
{
  OUTLINED_FUNCTION_21_11();
  result = OUTLINED_FUNCTION_10_23();
  *(v1 + 72) = v2;
  *(v1 + 80) = v0 & 1;
  return result;
}

uint64_t ChartSeriesValues.seriesMinThirdValue.getter()
{
  OUTLINED_FUNCTION_11_18();
  result = *(v0 + 88);
  v2 = *(v0 + 96);
  return result;
}

uint64_t ChartSeriesValues.seriesMinThirdValue.setter()
{
  OUTLINED_FUNCTION_21_11();
  result = OUTLINED_FUNCTION_10_23();
  *(v1 + 88) = v2;
  *(v1 + 96) = v0 & 1;
  return result;
}

uint64_t ChartSeriesValues.seriesMaxThirdValue.getter()
{
  OUTLINED_FUNCTION_11_18();
  result = *(v0 + 104);
  v2 = *(v0 + 112);
  return result;
}

uint64_t ChartSeriesValues.seriesMaxThirdValue.setter()
{
  OUTLINED_FUNCTION_21_11();
  result = OUTLINED_FUNCTION_10_23();
  *(v1 + 104) = v2;
  *(v1 + 112) = v0 & 1;
  return result;
}

uint64_t ChartSeriesValues.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t ChartSeriesValues.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8D8](v0, 113, 7);
}

uint64_t sub_220D9AA10()
{
  result = v0;
  *(v0 + 16) = MEMORY[0x277D84F90];
  *(v0 + 24) = 0;
  *(v0 + 32) = 1;
  *(v0 + 40) = 0;
  *(v0 + 48) = 1;
  *(v0 + 56) = 0;
  *(v0 + 64) = 1;
  *(v0 + 72) = 0;
  *(v0 + 80) = 1;
  *(v0 + 88) = 0;
  *(v0 + 96) = 1;
  *(v0 + 104) = 0;
  *(v0 + 112) = 1;
  return result;
}

void sub_220D9AA54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void **a8, uint64_t a9)
{
  v200 = a7;
  v233 = a6;
  v232 = a5;
  v199 = a4;
  v230 = a2;
  v198 = a9;
  v197 = type metadata accessor for WeatherValueCalculationContext();
  v12 = OUTLINED_FUNCTION_6(v197);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_1_21();
  OUTLINED_FUNCTION_14(v15);
  v16 = sub_220DBE960();
  v17 = OUTLINED_FUNCTION_0_24(v16, &v245);
  v224 = v18;
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_57();
  OUTLINED_FUNCTION_4_4(v22);
  v227 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF959D8, &unk_220DC3B00);
  v23 = OUTLINED_FUNCTION_6(v227);
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_14(&v187 - v26);
  v27 = sub_220DBF3B0();
  v28 = OUTLINED_FUNCTION_0_24(v27, &v220);
  v188 = v29;
  v31 = *(v30 + 64);
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_1_21();
  OUTLINED_FUNCTION_14(v32);
  v33 = sub_220DBE560();
  v34 = OUTLINED_FUNCTION_0_24(v33, &v251);
  v36 = v35;
  v38 = *(v37 + 64);
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_1_21();
  OUTLINED_FUNCTION_14(v39);
  v40 = sub_220DBF340();
  v41 = OUTLINED_FUNCTION_0_24(v40, v250);
  v43 = v42;
  v45 = *(v44 + 64);
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_57();
  OUTLINED_FUNCTION_4_4(v49);
  v50 = a8[1];
  v196 = *a8;
  v195 = v50;
  v51 = a8[3];
  v212 = a8[2];
  v211 = v51;
  v52 = a8[5];
  v210 = a8[4];
  v209 = v52;
  sub_220D9D99C();
  v223 = sub_220DC0AD0();
  v53 = a1 + 56;
  v54 = 1 << *(a1 + 32);
  v55 = -1;
  if (v54 < 64)
  {
    v55 = ~(-1 << v54);
  }

  v56 = v55 & *(a1 + 56);
  v57 = (v54 + 63) >> 6;
  v203 = 0x8000000220DC8AA0;
  v202 = 0x8000000220DC8A80;
  v226 = v36;
  v229 = v36 + 2;
  v231 = v43;
  v201 = v43 + 32;
  v239 = a1;

  v58 = 0;
  v221 = MEMORY[0x277D84F98];
  v205 = a3;
  v236 = v57;
  if (v56)
  {
LABEL_8:
    while (2)
    {
      v60 = *(*(v239 + 48) + (__clz(__rbit64(v56)) | (v58 << 6)));
      type metadata accessor for ChartSeriesValues();
      v61 = swift_allocObject();
      sub_220D9AA10();

      v62 = v221;
      swift_isUniquelyReferenced_nonNull_native();
      v244[0] = v62;
      v63 = sub_220D7FF10(v60);
      if (__OFADD__(*(v62 + 16), (v64 & 1) == 0))
      {
        goto LABEL_95;
      }

      v65 = v63;
      v66 = v64;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF964E0, &qword_220DC7980);
      if (sub_220DC0BD0())
      {
        v67 = sub_220D7FF10(v60);
        a3 = v205;
        if ((v66 & 1) != (v68 & 1))
        {
          goto LABEL_98;
        }

        v65 = v67;
      }

      else
      {
        a3 = v205;
      }

      v69 = v244[0];
      v221 = v244[0];
      if (v66)
      {
        v70 = *(v244[0] + 56);
        v71 = *(v70 + 8 * v65);
        *(v70 + 8 * v65) = v61;
      }

      else
      {
        *(v244[0] + 8 * (v65 >> 6) + 64) |= 1 << v65;
        *(v69[6] + v65) = v60;
        *(v69[7] + 8 * v65) = v61;
        v72 = v69[2];
        v73 = __OFADD__(v72, 1);
        v74 = v72 + 1;
        if (v73)
        {
          goto LABEL_97;
        }

        v69[2] = v74;
      }

      v56 &= v56 - 1;
      switch(v60)
      {
        case 1:
          OUTLINED_FUNCTION_4_5();
          goto LABEL_24;
        case 2:
          OUTLINED_FUNCTION_29_6();
          goto LABEL_24;
        case 3:
          OUTLINED_FUNCTION_12_23();
          goto LABEL_24;
        case 4:
          OUTLINED_FUNCTION_24_10();
          goto LABEL_24;
        case 5:
          OUTLINED_FUNCTION_15_15();
          goto LABEL_24;
        case 6:
          OUTLINED_FUNCTION_14_18();
          goto LABEL_24;
        case 8:

          goto LABEL_25;
        default:
LABEL_24:
          v75 = OUTLINED_FUNCTION_18_15();

          if (v75)
          {
LABEL_25:
            sub_220D9BE34(a3, v230, v232, v233);
            if ((v76 & 1) == 0)
            {
              OUTLINED_FUNCTION_22_11(v249);
              v77(v238, a3, v241);
              sub_220DBF320();
              OUTLINED_FUNCTION_19_13();
              v78 = *(v61 + 16);
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              *(v61 + 16) = v78;
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                v83 = *(v78 + 16);
                OUTLINED_FUNCTION_25_11();
                sub_220D56AA0();
                v78 = v84;
                *(v61 + 16) = v84;
              }

              if (*(v78 + 16) >= *(v78 + 24) >> 1)
              {
                OUTLINED_FUNCTION_25_11();
                sub_220D56AA0();
                v78 = v85;
              }

              OUTLINED_FUNCTION_17_12();
              v81 = *(v80 + 32);
              OUTLINED_FUNCTION_27_8();
              v82();
              *(v61 + 16) = v78;
            }
          }

          v57 = v236;
          if (!v56)
          {
            goto LABEL_4;
          }

          continue;
      }
    }
  }

  while (1)
  {
LABEL_4:
    v59 = v58 + 1;
    if (__OFADD__(v58, 1))
    {
      goto LABEL_93;
    }

    if (v59 >= v57)
    {
      break;
    }

    v56 = *(v53 + 8 * v59);
    ++v58;
    if (v56)
    {
      v58 = v59;
      goto LABEL_8;
    }
  }

  v86 = v223;
  OUTLINED_FUNCTION_38_3(&v221);
  sub_220DBF3A0();
  sub_220DC0A90();
  v187 = v86;
  sub_220DBF390();
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95270, &unk_220DC3AF0);
  OUTLINED_FUNCTION_6(v87);
  v89 = v220;
  (*(v88 + 16))(v220, v233, v87);
  v90 = *(v227 + 36);
  v91 = sub_220D9D8E0();
  sub_220DC0880();
  v223 = v224 + 16;
  v218 = v224 + 32;
  OUTLINED_FUNCTION_30_8(v246);
  v239 = v92;
  v228 = v231 + 16;
  v227 = v231 + 24;
  v226 = (v231 + 8);
  v213 = v93 + 8;
  v236 = v221;
  v94 = v240;
  v216 = v87;
  v215 = v90;
  v214 = v91;
LABEL_35:
  sub_220DC08B0();
  if (*(v89 + v90) == v244[0])
  {
    sub_220CDA548(v89, &qword_27CF959D8, &unk_220DC3B00);
    sub_220DC0A80();
    v185 = v187;
    v186 = v190;
    sub_220DBF390();

    (*(v188 + 8))(v186, v189);
    OUTLINED_FUNCTION_32_6();
    OUTLINED_FUNCTION_29_0();
    return;
  }

  v95 = sub_220DC08E0();
  v96 = v219;
  v97 = v225;
  v222 = *v223;
  v222(v219);
  v95(v244, 0);
  sub_220DC08C0();
  OUTLINED_FUNCTION_22_11(v242);
  v98(v94, v96, v97);
  v99 = OUTLINED_FUNCTION_32_6();
  v100 = v99 + 64;
  v101 = 1 << *(v99 + 32);
  if (v101 < 64)
  {
    v102 = ~(-1 << v101);
  }

  else
  {
    v102 = -1;
  }

  v89 = v102 & *(v99 + 64);
  v103 = (v101 + 63) >> 6;
  v104 = 0;

  v232 = v103;
  while (2)
  {
    v105 = v104;
    if (!v89)
    {
      goto LABEL_42;
    }

LABEL_41:
    v104 = v105;
LABEL_45:
    v106 = __clz(__rbit64(v89));
    v89 &= v89 - 1;
    v107 = v106 | (v104 << 6);
    v108 = *(*(v236 + 48) + v107);
    v94 = *(*(v236 + 56) + 8 * v107);
    v233 = v108;
    switch(v108)
    {
      case 1:
        OUTLINED_FUNCTION_4_5();
        goto LABEL_52;
      case 2:
        OUTLINED_FUNCTION_29_6();
        goto LABEL_52;
      case 3:
        OUTLINED_FUNCTION_12_23();
        goto LABEL_52;
      case 4:
        OUTLINED_FUNCTION_24_10();
        goto LABEL_52;
      case 5:
        OUTLINED_FUNCTION_15_15();
        goto LABEL_52;
      case 6:
        OUTLINED_FUNCTION_14_18();
        goto LABEL_52;
      case 8:

        OUTLINED_FUNCTION_26_9();
        goto LABEL_53;
      default:
LABEL_52:
        v109 = OUTLINED_FUNCTION_18_15();

        OUTLINED_FUNCTION_26_9();
        if ((v109 & 1) == 0)
        {
          goto LABEL_62;
        }

LABEL_53:
        sub_220DBE8F0();
        sub_220DBE470();
        v111 = v110;
        v112 = *v239;
        (*v239)(v90, v241);
        if (fabs(v111) > 600.0 || (sub_220DBE8F0(), v113 = sub_220DBE670(), v112(v90, v241), (v113 & 1) == 0))
        {
LABEL_62:
          v124 = v217;
          (v222)(v217, a3, v225);
          v125 = v197;
          v126 = v197[5];
          v127 = sub_220DBE830();
          OUTLINED_FUNCTION_6(v127);
          (*(v128 + 16))(v124 + v126, v200, v127);
          OUTLINED_FUNCTION_25_11();
          __swift_storeEnumTagSinglePayload(v129, v130, v131, v132);
          v133 = v125[8];
          v134 = sub_220DBEAD0();
          OUTLINED_FUNCTION_6(v134);
          (*(v135 + 16))(v124 + v133, v199);
          v136 = v125[9];
          v137 = sub_220DBE740();
          OUTLINED_FUNCTION_6(v137);
          (*(v138 + 16))(v124 + v136, v198);
          *(v124 + v125[6]) = v233;
          v139 = (v124 + v125[7]);
          v140 = v196;
          v141 = v195;
          *v139 = v196;
          v139[1] = v141;
          v142 = v211;
          v139[2] = v212;
          v139[3] = v142;
          v143 = v209;
          v139[4] = v210;
          v139[5] = v143;
          v144 = v204[6];
          v208 = v204[5];
          v206 = __swift_project_boxed_opaque_existential_1(v204 + 2, v208);
          v207 = *(v144 + 8);
          v224 = v140;
          v145 = v141;
          v194 = v212;
          v193 = v211;
          v192 = v210;
          v191 = v209;
          v146 = v207(v217, v208, v144);
          sub_220DBE8F0();
          sub_220DBF320();
          OUTLINED_FUNCTION_19_13();
          v147 = *(v94 + 16);
          v148 = swift_isUniquelyReferenced_nonNull_native();
          *(v94 + 16) = v147;
          v149 = v224;
          if ((v148 & 1) == 0)
          {
            v178 = *(v147 + 16);
            OUTLINED_FUNCTION_25_11();
            sub_220D56AA0();
            v147 = v179;
            *(v94 + 16) = v179;
          }

          v150 = v233;
          if (*(v147 + 16) >= *(v147 + 24) >> 1)
          {
            OUTLINED_FUNCTION_25_11();
            sub_220D56AA0();
            v147 = v180;
          }

          OUTLINED_FUNCTION_17_12();
          v152 = *(v151 + 32);
          OUTLINED_FUNCTION_27_8();
          v153();
          *(v94 + 16) = v147;
          OUTLINED_FUNCTION_19_13();
          v154 = *(v94 + 24);
          v155 = OUTLINED_FUNCTION_28_6(*(v94 + 32));
          if (v146 < v155)
          {
            v155 = v146;
          }

          *(v94 + 24) = v155;
          *(v94 + 32) = 0;
          OUTLINED_FUNCTION_19_13();
          v156 = *(v94 + 40);
          v157 = OUTLINED_FUNCTION_28_6(*(v94 + 48));
          if (v157 <= v146)
          {
            v157 = v146;
          }

          *(v94 + 40) = v157;
          *(v94 + 48) = 0;
          if (v150 > 8 || ((1 << v150) & 0x167) == 0)
          {
            v247 = v150;
            v244[0] = v149;
            v244[1] = v145;
            v244[2] = v194;
            v244[3] = v193;
            v244[4] = v192;
            v245 = v191;
            v243 = 0;
            v173 = HourWeather.secondValue(for:units:useCase:)(&v247, v244, &v243);
            OUTLINED_FUNCTION_19_13();
            v174 = *(v94 + 56);
            v175 = OUTLINED_FUNCTION_28_6(*(v94 + 64));
            if (v173 < v175)
            {
              v175 = v173;
            }

            *(v94 + 56) = v175;
            *(v94 + 64) = 0;
            OUTLINED_FUNCTION_19_13();
            v176 = *(v94 + 72);
            v177 = OUTLINED_FUNCTION_28_6(*(v94 + 80));
            if (v177 <= v173)
            {
              v177 = v173;
            }

            *(v94 + 72) = v177;
            *(v94 + 80) = 0;
          }

          v158 = v221;
          swift_isUniquelyReferenced_nonNull_native();
          v244[0] = v158;
          v159 = sub_220D7FF10(v150);
          v161 = *(v158 + 16);
          v162 = (v160 & 1) == 0;
          v90 = v161 + v162;
          if (__OFADD__(v161, v162))
          {
            goto LABEL_94;
          }

          v163 = v159;
          v164 = v160;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF964E0, &qword_220DC7980);
          if (sub_220DC0BD0())
          {
            v165 = v233;
            v166 = sub_220D7FF10(v233);
            a3 = v205;
            if ((v164 & 1) != (v167 & 1))
            {
              goto LABEL_98;
            }

            v163 = v166;
          }

          else
          {
            a3 = v205;
            v165 = v233;
          }

          v221 = v244[0];
          if (v164)
          {
            v168 = v244[0];
            v169 = *(v244[0] + 56);
            v170 = *(v169 + 8 * v163);
            *(v169 + 8 * v163) = v94;

            sub_220D47338(v217);
          }

          else
          {
            v168 = v244[0];
            *(v244[0] + 8 * (v163 >> 6) + 64) |= 1 << v163;
            *(*(v168 + 6) + v163) = v165;
            *(*(v168 + 7) + 8 * v163) = v94;

            sub_220D47338(v217);
            v171 = *(v168 + 2);
            v73 = __OFADD__(v171, 1);
            v172 = v171 + 1;
            if (v73)
            {
              goto LABEL_96;
            }

            *(v168 + 2) = v172;
          }

          v224 = v168;
          v103 = v232;
          continue;
        }

        swift_beginAccess();
        v114 = *(v94 + 16);
        if (!*(v114 + 16))
        {

          OUTLINED_FUNCTION_32_6();

          v183 = OUTLINED_FUNCTION_16_18();
          v184(v183);
          OUTLINED_FUNCTION_20_8();
LABEL_88:
          v90 = v215;
          goto LABEL_35;
        }

        v115 = (*(v231 + 80) + 32) & ~*(v231 + 80);
        (*(v231 + 16))(v234, v114 + v115, v237);
        sub_220DBF330();
        sub_220DBE8B0();
        sub_220DC07C0();
        OUTLINED_FUNCTION_22_11(v249);
        v116(v238, a3, v241);
        sub_220DBF320();
        swift_beginAccess();
        v117 = *(v94 + 16);
        v118 = swift_isUniquelyReferenced_nonNull_native();
        *(v94 + 16) = v117;
        if ((v118 & 1) == 0)
        {
          sub_220D9D9E0(v117);
          v117 = v123;
          *(v94 + 16) = v123;
        }

        if (!*(v117 + 16))
        {
          goto LABEL_92;
        }

        OUTLINED_FUNCTION_22_11(v248);
        v119 = v117 + v115;
        v90 = v235;
        v120 = v237;
        v121(v119, v235, v237);
        *(v94 + 16) = v117;
        swift_endAccess();
        v122 = *v226;
        (*v226)(v90, v120);
        v122(v234, v120);

        v105 = v104;
        v103 = v232;
        if (v89)
        {
          goto LABEL_41;
        }

LABEL_42:
        while (1)
        {
          v104 = v105 + 1;
          if (__OFADD__(v105, 1))
          {
            break;
          }

          if (v104 >= v103)
          {
            v181 = OUTLINED_FUNCTION_16_18();
            v182(v181);
            OUTLINED_FUNCTION_32_6();

            OUTLINED_FUNCTION_20_8();
            goto LABEL_88;
          }

          v89 = *(v100 + 8 * v104);
          ++v105;
          if (v89)
          {
            goto LABEL_45;
          }
        }

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
        sub_220DC0CC0();
        __break(1u);
        return;
    }
  }
}

uint64_t sub_220D9BE34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v70 = a4;
  v73 = a1;
  v74 = 0;
  v6 = sub_220DBE560();
  v67 = *(v6 - 8);
  v68 = v6;
  v7 = *(v67 + 64);
  v8 = MEMORY[0x28223BE20](v6);
  v61 = &v60 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v64 = &v60 - v10;
  v11 = sub_220DBE960();
  v65 = *(v11 - 8);
  v66 = v11;
  v12 = *(v65 + 64);
  v13 = MEMORY[0x28223BE20](v11);
  v63 = &v60 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v62 = &v60 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95270, &unk_220DC3AF0);
  v71 = *(v16 - 8);
  v72 = v16;
  v17 = *(v71 + 64);
  MEMORY[0x28223BE20](v16);
  v75 = &v60 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF964E8, &qword_220DC7988);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v22 = &v60 - v21;
  v69 = sub_220DBE980();
  v60 = *(v69 - 8);
  v23 = *(v60 + 64);
  MEMORY[0x28223BE20](v69);
  v25 = &v60 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95CA8, &unk_220DC5430);
  v27 = *(*(v26 - 8) + 64);
  MEMORY[0x28223BE20](v26 - 8);
  v29 = &v60 - v28;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF959E8, &qword_220DC3C78);
  v31 = *(v30 - 8);
  v32 = *(v31 + 64);
  MEMORY[0x28223BE20](v30);
  v34 = &v60 - v33;
  sub_220CFD2D8(a3, v29, &qword_27CF95CA8, &unk_220DC5430);
  if (__swift_getEnumTagSinglePayload(v29, 1, v30) == 1)
  {
    v35 = a2;
    v36 = v73;
    sub_220CDA548(v29, &qword_27CF95CA8, &unk_220DC5430);
  }

  else
  {
    v37 = (*(v31 + 32))(v34, v29, v30);
    MEMORY[0x28223BE20](v37);
    v35 = a2;
    *(&v60 - 2) = a2;
    v36 = v73;
    *(&v60 - 1) = v73;
    sub_220D292D8();
    v38 = v69;
    if (__swift_getEnumTagSinglePayload(v22, 1, v69) != 1)
    {
      goto LABEL_13;
    }

    (*(v31 + 8))(v34, v30);
    sub_220CDA548(v22, &qword_27CF964E8, &qword_220DC7988);
  }

  v38 = v71;
  v25 = v75;
  v31 = v72;
  v39 = (*(v71 + 16))(v75, v70, v72);
  MEMORY[0x28223BE20](v39);
  *(&v60 - 2) = v35;
  *(&v60 - 1) = v36;
  v40 = sub_220D9D618(sub_220D9D9F4, (&v60 - 4));
  if (v41)
  {
    (*(v38 + 8))(v25, v31);
    return 0;
  }

  v43 = v40;
  sub_220D9D8E0();
  sub_220DC0880();
  sub_220DC08B0();
  result = sub_220DC08A0();
  if (__OFSUB__(result, 1))
  {
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (result - 1 == v43)
  {
    sub_220DC0880();
    sub_220DC08B0();
    result = sub_220DC08A0();
    v22 = (result - 1);
    if (!__OFSUB__(result, 1))
    {
      if (!__OFSUB__(v22, 1))
      {
        goto LABEL_15;
      }

      __break(1u);
LABEL_13:
      v44 = v60;
      (*(v60 + 32))(v25, v22, v38);
      sub_220DBE970();
      sub_220DC07C0();
      v46 = v45;
      (*(v44 + 8))(v25, v38);
      (*(v31 + 8))(v34, v30);
      return v46;
    }

    goto LABEL_19;
  }

  if (__OFADD__(v43, 1))
  {
LABEL_20:
    __break(1u);
    return result;
  }

LABEL_15:
  v47 = v38;
  v48 = v62;
  sub_220DBEFD0();
  v49 = v63;
  sub_220DBEFD0();
  sub_220DBE8B0();
  sub_220DBE8B0();
  v50 = v64;
  sub_220DBE8F0();
  v51 = v61;
  sub_220DBE8F0();
  sub_220DBE470();
  v52 = *(v67 + 8);
  v53 = v51;
  v54 = v68;
  v52(v53, v68);
  v52(v50, v54);
  sub_220DBE8F0();
  sub_220DBE470();
  v52(v50, v54);
  sub_220DC07C0();
  v56 = v55;
  v57 = v66;
  v58 = *(v65 + 8);
  v58(v49, v66);
  v58(v48, v57);
  (*(v47 + 8))(v75, v31);
  v59 = 0.0;
  if (v56 > 0.0)
  {
    v59 = v56;
  }

  return *&v59;
}

void sub_220D9C630(unsigned __int8 *a1@<X0>, unsigned __int8 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v136 = a6;
  v161 = a4;
  v155 = a3;
  v135 = a7;
  v10 = sub_220DBEF00();
  v11 = OUTLINED_FUNCTION_0_24(v10, &v171);
  v142 = v12;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_57();
  OUTLINED_FUNCTION_4_4(v16);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95640, &qword_220DC45A0);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  OUTLINED_FUNCTION_4_4(v128 - v19);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95258, &unk_220DC2CF0);
  v21 = OUTLINED_FUNCTION_0_24(v20, &v170);
  v141 = v22;
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_57();
  OUTLINED_FUNCTION_4_4(v27);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94FA0, &unk_220DC17F0);
  v29 = OUTLINED_FUNCTION_0_24(v28, &v172);
  v148 = v30;
  v32 = *(v31 + 64);
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_9();
  v151 = v33;
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_57();
  v150 = v35;
  v152 = sub_220DBE960();
  v36 = OUTLINED_FUNCTION_0(v152);
  v140 = v37;
  v39 = *(v38 + 64);
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_1_21();
  v162 = v40;
  v157 = sub_220DBF340();
  v41 = OUTLINED_FUNCTION_0(v157);
  v159 = v42;
  v44 = *(v43 + 64);
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_1_21();
  v158 = v45;
  v46 = sub_220DBE6E0();
  v47 = OUTLINED_FUNCTION_0_24(v46, &v161);
  v131 = v48;
  v50 = *(v49 + 64);
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_1_21();
  OUTLINED_FUNCTION_14(v51);
  v52 = sub_220DBE560();
  v53 = OUTLINED_FUNCTION_0_24(v52, v164);
  v133 = v54;
  v56 = *(v55 + 64);
  MEMORY[0x28223BE20](v53);
  OUTLINED_FUNCTION_9();
  v156 = v57;
  MEMORY[0x28223BE20](v58);
  OUTLINED_FUNCTION_57();
  OUTLINED_FUNCTION_14(v59);
  v60 = sub_220DBF350();
  v61 = OUTLINED_FUNCTION_0(v60);
  v63 = v62;
  v65 = *(v64 + 64);
  MEMORY[0x28223BE20](v61);
  OUTLINED_FUNCTION_1();
  v68 = v67 - v66;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF964C8, &unk_220DC7970);
  v70 = OUTLINED_FUNCTION_6(v69);
  v72 = *(v71 + 64);
  MEMORY[0x28223BE20](v70);
  v74 = v128 - v73;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95B10, &qword_220DC4A50);
  v76 = *(*(v75 - 8) + 64);
  MEMORY[0x28223BE20](v75 - 8);
  OUTLINED_FUNCTION_9();
  v78 = v77;
  MEMORY[0x28223BE20](v79);
  v81 = v128 - v80;
  v82 = *a1;
  v83 = *a2;
  v149 = *a5;
  v143 = a5[3];
  v160 = v83;
  if (v82 != 7)
  {
    switch(v83)
    {
      case 1:
        OUTLINED_FUNCTION_4_5();
        break;
      case 3:
        OUTLINED_FUNCTION_12_23();
        break;
      case 4:

        goto LABEL_9;
      case 5:
        OUTLINED_FUNCTION_15_15();
        break;
      case 6:
        OUTLINED_FUNCTION_14_18();
        break;
      default:
        break;
    }

    v84 = sub_220DC0CA0();

    if ((v84 & 1) == 0)
    {
      sub_220DBF310();
      OUTLINED_FUNCTION_29_0();

      __swift_storeEnumTagSinglePayload(v91, v92, v93, v94);
      return;
    }
  }

LABEL_9:
  (*(v63 + 104))(v81, *MEMORY[0x277D7B0B0], v60);
  __swift_storeEnumTagSinglePayload(v81, 0, 1, v60);
  v85 = *(v69 + 48);
  sub_220CFD2D8(v155, v74, &qword_27CF95B10, &qword_220DC4A50);
  sub_220CFD2D8(v81, &v74[v85], &qword_27CF95B10, &qword_220DC4A50);
  OUTLINED_FUNCTION_35_4(v74);
  if (!v89)
  {
    v88 = v78;
    sub_220CFD2D8(v74, v78, &qword_27CF95B10, &qword_220DC4A50);
    OUTLINED_FUNCTION_35_4(&v74[v85]);
    if (!v89)
    {
      v87 = v136;
      (*(v63 + 32))(v68, &v74[v85], v60);
      sub_220D9D944();
      v129 = sub_220DC05B0();
      v96 = *(v63 + 8);
      v63 += 8;
      v96(v68, v60);
      sub_220CDA548(v81, &qword_27CF95B10, &qword_220DC4A50);
      v96(v88, v60);
      sub_220CDA548(v74, &qword_27CF95B10, &qword_220DC4A50);
      OUTLINED_FUNCTION_31_7();
      v86 = v154;
      goto LABEL_22;
    }

    sub_220CDA548(v81, &qword_27CF95B10, &qword_220DC4A50);
    v90 = *(v63 + 8);
    v63 += 8;
    v90(v78, v60);
    v86 = v154;
    goto LABEL_17;
  }

  sub_220CDA548(v81, &qword_27CF95B10, &qword_220DC4A50);
  OUTLINED_FUNCTION_35_4(&v74[v85]);
  v86 = v154;
  if (!v89)
  {
LABEL_17:
    v87 = v136;
    sub_220CDA548(v74, &qword_27CF964C8, &unk_220DC7970);
    v129 = 0;
    goto LABEL_18;
  }

  v87 = v136;
  sub_220CDA548(v74, &qword_27CF95B10, &qword_220DC4A50);
  v129 = 1;
LABEL_18:
  OUTLINED_FUNCTION_31_7();
LABEL_22:
  v128[1] = *(v86 + 56);
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95270, &unk_220DC3AF0);
  v98 = sub_220D9D8E0();
  v99 = sub_220DC0890();
  if (v99)
  {
    v100 = v99;
    v165 = MEMORY[0x277D84F90];
    sub_220CFB724();
    v101 = v165;
    v155 = v98;
    sub_220DC0880();
    if ((v100 & 0x8000000000000000) == 0)
    {
      v153 = (v140 + 16);
      OUTLINED_FUNCTION_30_8(&v173);
      v148 = v102;
      OUTLINED_FUNCTION_30_8(&v168);
      v142 = v103;
      OUTLINED_FUNCTION_30_8(&v167);
      v141 = v104;
      v106 = (v105 + 8);
      v154 = v97;
      v87 = v155;
      v140 = v159 + 32;
      while (1)
      {
        v107 = sub_220DC08E0();
        v108 = v162;
        (*v153)(v162);
        v107(v163, 0);
        if (v160 == 3)
        {
          break;
        }

        if (v160 == 7)
        {
          OUTLINED_FUNCTION_38_3(&v169);
          sub_220DBE900();
          v110 = v145;
          sub_220DBEEE0();
          v111 = *v142;
          v112 = v108;
          v113 = v146;
          (*v142)(v87, v146);
          v114 = v144;
          if (__swift_getEnumTagSinglePayload(v110, 1, v144) == 1)
          {
            sub_220CDA548(v110, &qword_27CF95640, &qword_220DC45A0);
            OUTLINED_FUNCTION_38_3(&v166);
            sub_220DBE900();
            v115 = v139;
            sub_220DBEEF0();
            v111(v87, v113);
            v116 = v138;
            sub_220DBE130();
            v117 = *v141;
            v118 = v115;
            v63 = v147;
            (*v141)(v118, v114);
            sub_220DBE050();
            v117(v116, v114);
            v81 = v152;
            v108 = v162;
          }

          else
          {
            v124 = v110;
            v125 = v137;
            sub_220DBE130();
            v126 = *v141;
            (*v141)(v124, v114);
            sub_220DBE050();
            v126(v125, v114);
            v81 = v152;
            v108 = v112;
            v63 = v147;
          }
        }

        else if (v160 == 4)
        {
          v109 = v151;
          sub_220DBE850();
LABEL_32:
          v119 = v150;
          sub_220DBE130();
          v120 = *v148;
          v121 = v109;
          v81 = v152;
          (*v148)(v121, v63);
          sub_220DBE050();
          v120(v119, v63);
          v108 = v162;
        }

        sub_220DBE8F0();
        v122 = v158;
        sub_220DBF320();
        (*v106)(v108, v81);
        v165 = v101;
        v123 = *(v101 + 16);
        if (v123 >= *(v101 + 24) >> 1)
        {
          sub_220CFB724();
          v122 = v158;
          v101 = v165;
        }

        *(v101 + 16) = v123 + 1;
        (*(v159 + 32))(v101 + ((*(v159 + 80) + 32) & ~*(v159 + 80)) + *(v159 + 72) * v123, v122, v157);
        v87 = v155;
        sub_220DC08C0();
        if (!--v100)
        {
          goto LABEL_38;
        }
      }

      v109 = v151;
      sub_220DBE890();
      goto LABEL_32;
    }

    __break(1u);
  }

  else
  {
LABEL_38:
    v127 = v130;
    sub_220DBE6A0();
    OUTLINED_FUNCTION_38_3(&v162);
    sub_220DBE3A0();
    (*(v131 + 8))(v127, v132);
    sub_220DBF2C0();

    (*(v133 + 8))(v87, v134);
    OUTLINED_FUNCTION_29_0();
  }
}

uint64_t sub_220D9D480(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void), unsigned int *a5)
{
  v7 = sub_220DBE6C0();
  v8 = OUTLINED_FUNCTION_0(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_1();
  v15 = v14 - v13;
  v16 = sub_220DBE560();
  v17 = OUTLINED_FUNCTION_0(v16);
  v19 = v18;
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_1();
  v24 = v23 - v22;
  a4();
  (*(v10 + 104))(v15, *a5, v7);
  v25 = sub_220DBE680();
  (*(v10 + 8))(v15, v7);
  (*(v19 + 8))(v24, v16);
  return v25 & 1;
}

uint64_t sub_220D9D618(uint64_t (*a1)(char *), uint64_t a2)
{
  v17 = a1;
  v18 = a2;
  v16 = sub_220DBE960();
  v3 = *(v16 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v16);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95270, &unk_220DC3AF0);
  sub_220D9D8E0();
  sub_220DC0880();
  v14 = (v3 + 16);
  v15 = (v3 + 8);
  while (1)
  {
    sub_220DC08B0();
    v7 = v20;
    if (v20 == v19[0])
    {
      return 0;
    }

    v8 = sub_220DC08E0();
    v9 = v16;
    (*v14)(v6);
    v8(v19, 0);
    v10 = v17(v6);
    if (v2)
    {
      return (*v15)(v6, v9);
    }

    v11 = v10;
    (*v15)(v6, v9);
    if (v11)
    {
      break;
    }

    sub_220DC08C0();
  }

  return v7;
}

uint64_t sub_220D9D824()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  v1 = *(v0 + 56);

  return MEMORY[0x2821FE8D8](v0, 64, 7);
}

unint64_t sub_220D9D8E0()
{
  result = qword_280FA7720;
  if (!qword_280FA7720)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF95270, &unk_220DC3AF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FA7720);
  }

  return result;
}

unint64_t sub_220D9D944()
{
  result = qword_27CF964D0;
  if (!qword_27CF964D0)
  {
    sub_220DBF350();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF964D0);
  }

  return result;
}

unint64_t sub_220D9D99C()
{
  result = qword_27CF964D8;
  if (!qword_27CF964D8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27CF964D8);
  }

  return result;
}

uint64_t sub_220D9DB2C(void (*a1)(char *, uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6)
{
  v10 = *a6;
  v9 = a6[1];
  v12 = a6[2];
  v11 = a6[3];
  v14 = a6[4];
  v13 = a6[5];
  if (sub_220DBE610())
  {
    v15 = sub_220DA0A68(a3, a5, a1);
    v38 = sub_220DA0E58(v15);
    v17 = v16;
    v18 = OUTLINED_FUNCTION_12_24();
    v21 = sub_220D9FE48(v18, v19, a5, v20);
    v23 = sub_220DA090C(v38, v17, v21, v22);
  }

  else
  {
    v24 = sub_220DBE640();
    v25 = sub_220DA0A68(a3, a5, a1);
    if (v24)
    {
      sub_220DA10D8(v25);
      v26 = OUTLINED_FUNCTION_7_23();
      v30 = sub_220D9F23C(v26, v27, v28, v29);
    }

    else
    {
      sub_220DA1354(v25);
      v32 = OUTLINED_FUNCTION_7_23();
      v30 = sub_220D9E778(v32, v33, v34, v35);
    }

    v23 = sub_220D9FD08(v24, v13, v30, v31);
  }

  v36 = v23;

  return v36;
}

uint64_t sub_220D9DC74(uint64_t a1, void (*a2)(char *, uint64_t, uint64_t), uint64_t a3, uint64_t a4)
{
  v4 = sub_220DA0A68(a1, a4, a2);
  sub_220DA0E58(v4);
  v5 = OUTLINED_FUNCTION_1_39();
  sub_220D9FE48(v5, v6, v7, v8);
  v9 = OUTLINED_FUNCTION_6_25();
  sub_220DA090C(v9, v10, v11, v12);
  OUTLINED_FUNCTION_9_15();

  return OUTLINED_FUNCTION_3_1();
}

uint64_t sub_220D9DCF0()
{
  OUTLINED_FUNCTION_5_30();
  v3 = sub_220DA0A68(v1, v2, v0);
  sub_220DA10D8(v3);
  v4 = OUTLINED_FUNCTION_1_39();
  sub_220D9F23C(v4, v5, v6, v7);
  v8 = OUTLINED_FUNCTION_6_25();
  sub_220D9FD08(v8, v9, v10, v11);
  OUTLINED_FUNCTION_9_15();

  return OUTLINED_FUNCTION_3_1();
}

uint64_t sub_220D9DD60()
{
  OUTLINED_FUNCTION_5_30();
  v3 = sub_220DA0A68(v1, v2, v0);
  sub_220DA1354(v3);
  v4 = OUTLINED_FUNCTION_1_39();
  sub_220D9E778(v4, v5, v6, v7);
  v8 = OUTLINED_FUNCTION_6_25();
  sub_220D9FD08(v8, v9, v10, v11);
  OUTLINED_FUNCTION_9_15();

  return OUTLINED_FUNCTION_3_1();
}

void sub_220D9DDD8()
{
  OUTLINED_FUNCTION_28_3();
  v2 = v1;
  v69 = v3;
  v70 = v4;
  v68 = v5;
  v71 = v6;
  v7 = sub_220DBE5E0();
  v8 = OUTLINED_FUNCTION_18(v7);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_1();
  v63 = v12 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94F98, &qword_220DC17E8);
  v14 = OUTLINED_FUNCTION_0(v13);
  v65 = v15;
  v66 = v14;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v14);
  v64 = v59 - v18;
  v67 = sub_220DBECB0();
  v19 = OUTLINED_FUNCTION_0(v67);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_1();
  v23 = *v2;
  v22 = v2[1];
  v24 = v2[2];
  v25 = v2[3];
  v27 = v2[4];
  v26 = v2[5];
  v28 = v68;
  if (sub_220DBE610())
  {
    sub_220DBE7A0();
    sub_220DBECA0();
    v29 = OUTLINED_FUNCTION_21_12();
    v30(v29);
    v31 = sub_220DA0E58(v0);
    v33 = v32;
    v73 = v23;
    v74 = v22;
    v75 = v24;
    v76 = v25;
    v77 = v27;
    v78 = v26;
    sub_220D9FE48(v28, v71, v70, &v73);
    OUTLINED_FUNCTION_11_19();
    sub_220DA090C(v31, v33, v34, v24);
  }

  else
  {
    v59[1] = v23;
    v59[2] = v22;
    v59[3] = v24;
    v60 = v25;
    v61 = v27;
    v62 = v26;
    v35 = v70;
    v36 = v28;
    v37 = sub_220DBE640();
    sub_220DBE7A0();
    sub_220DBECA0();
    v38 = OUTLINED_FUNCTION_21_12();
    v39(v38);
    if (v37)
    {
      v40 = v36;
      v72 = v0;
      sub_220DBE570();
      sub_220CEFCB0();
      sub_220DBE290();
      sub_220CEFD04();
      sub_220DC0520();
      v41 = *(v65 + 8);
      v42 = OUTLINED_FUNCTION_12_24();
      v43(v42);
      v45 = v73;
      v44 = v74;
      v46 = v35;
      v35 = v71;
      v48 = v60;
      v47 = v61;
      if (qword_280FA6600 != -1)
      {
        OUTLINED_FUNCTION_10();
      }

      OUTLINED_FUNCTION_6_0();
      sub_220DBE240();
      OUTLINED_FUNCTION_9_15();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94FB8, &unk_220DC1E30);
      v49 = swift_allocObject();
      *(v49 + 16) = xmmword_220DC17A0;
      *(v49 + 56) = MEMORY[0x277D837D0];
      *(v49 + 64) = sub_220CEFDB0();
      *(v49 + 32) = v45;
      *(v49 + 40) = v44;
      OUTLINED_FUNCTION_3_1();
      v50 = sub_220DC05F0();
      v52 = v51;

      OUTLINED_FUNCTION_16_19();
      v75 = *(v53 - 256);
      v76 = v48;
      v77 = v47;
      v78 = v62;
      sub_220D9F23C(v40, v35, v46, &v73);
      OUTLINED_FUNCTION_11_19();
      v55 = v50;
    }

    else
    {
      v56 = sub_220DA1354(v0);
      v52 = v57;
      OUTLINED_FUNCTION_16_19();
      v75 = *(v58 - 256);
      v76 = v60;
      v77 = v61;
      v78 = v62;
      sub_220D9E778(v36, v71, v35, &v73);
      OUTLINED_FUNCTION_11_19();
      v55 = v56;
    }

    sub_220D9FD08(v55, v52, v54, v35);
  }

  OUTLINED_FUNCTION_29_0();
}

uint64_t sub_220D9E228(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_5_30();
  v8 = sub_220DBECB0();
  v9 = OUTLINED_FUNCTION_0(v8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_1();
  v14 = v13 - v12;
  sub_220DBE7A0();
  sub_220DBECA0();
  v15 = OUTLINED_FUNCTION_13_15();
  v16(v15);
  sub_220DA0E58(v6);
  v17 = OUTLINED_FUNCTION_8_17();
  sub_220D9FE48(v17, v18, v19, v20);
  OUTLINED_FUNCTION_11_19();
  sub_220DA090C(v14, a5, v21, v5);
  OUTLINED_FUNCTION_9_15();

  return OUTLINED_FUNCTION_3_1();
}

void sub_220D9E334()
{
  OUTLINED_FUNCTION_28_3();
  v1 = v0;
  v39 = v2;
  v40 = v3;
  v5 = v4;
  v6 = sub_220DBE5E0();
  v7 = OUTLINED_FUNCTION_18(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_1();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94F98, &qword_220DC17E8);
  v11 = OUTLINED_FUNCTION_0(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v11);
  v17 = &v36 - v16;
  v18 = sub_220DBECB0();
  v19 = OUTLINED_FUNCTION_0(v18);
  v21 = v20;
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_1();
  v26 = v25 - v24;
  v27 = *v1;
  v37 = v1[1];
  v38 = v27;
  v36 = v1[2];
  sub_220DBE7A0();
  sub_220DBECA0();
  v29 = v28;
  (*(v21 + 8))(v26, v18);
  v42 = v29;
  sub_220DBE570();
  sub_220CEFCB0();
  sub_220DBE290();
  sub_220CEFD04();
  sub_220DC0520();
  (*(v13 + 8))(v17, v10);
  v30 = v41[0];
  if (qword_280FA6600 != -1)
  {
    OUTLINED_FUNCTION_10();
  }

  OUTLINED_FUNCTION_6_0();
  sub_220DBE240();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94FB8, &unk_220DC1E30);
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_220DC17A0;
  *(v31 + 56) = MEMORY[0x277D837D0];
  *(v31 + 64) = sub_220CEFDB0();
  *(v31 + 32) = v30;
  v32 = sub_220DC05F0();
  v34 = v33;

  v41[0] = v38;
  v41[1] = v37;
  v41[2] = v36;
  sub_220D9F23C(v5, v39, v40, v41);
  OUTLINED_FUNCTION_11_19();
  sub_220D9FD08(v32, v34, v35, v30);
  OUTLINED_FUNCTION_9_15();

  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_29_0();
}

uint64_t sub_220D9E664(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_5_30();
  v8 = sub_220DBECB0();
  v9 = OUTLINED_FUNCTION_0(v8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_1();
  v14 = v13 - v12;
  sub_220DBE7A0();
  sub_220DBECA0();
  v15 = OUTLINED_FUNCTION_13_15();
  v16(v15);
  sub_220DA1354(v6);
  v17 = OUTLINED_FUNCTION_8_17();
  sub_220D9E778(v17, v18, v19, v20);
  OUTLINED_FUNCTION_11_19();
  sub_220D9FD08(v14, a5, v21, v5);
  OUTLINED_FUNCTION_9_15();

  return OUTLINED_FUNCTION_3_1();
}

uint64_t sub_220D9E778(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v99 = a3;
  v100 = a2;
  v98 = a1;
  v5 = sub_220DC0300();
  v91 = *(v5 - 8);
  v92 = v5;
  v6 = *(v91 + 64);
  MEMORY[0x28223BE20](v5);
  v88 = &v84 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = sub_220DC0A40();
  v89 = *(v90 - 8);
  v8 = *(v89 + 64);
  MEMORY[0x28223BE20](v90);
  v87 = &v84 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94FA0, &unk_220DC17F0);
  v103 = *(v10 - 8);
  v104 = v10;
  v11 = v103[8];
  v12 = MEMORY[0x28223BE20](v10);
  v86 = &v84 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v102 = &v84 - v14;
  v15 = sub_220DBE740();
  v96 = *(v15 - 8);
  v97 = v15;
  v16 = *(v96 + 64);
  MEMORY[0x28223BE20](v15);
  v95 = &v84 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = sub_220DBE560();
  v18 = *(v94 - 1);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v94);
  v21 = &v84 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF964F0, &qword_220DC7A00);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22 - 8);
  v25 = &v84 - v24;
  v26 = type metadata accessor for HumidityPlatterStringBuilder.SecondSentenceKind();
  v27 = *(*(v26 - 8) + 64);
  v28 = MEMORY[0x28223BE20](v26);
  v85 = &v84 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v101 = &v84 - v30;
  v31 = *a4;
  v32 = *(a4 + 8);
  v33 = *(a4 + 16);
  v34 = *(a4 + 24);
  v36 = *(a4 + 32);
  v35 = *(a4 + 40);
  (*(v18 + 16))(v21, v98, v94);
  (*(v96 + 16))(v95, v99, v97);
  v105 = v31;
  v106 = v32;
  v107 = v33;
  v108 = v34;
  v109 = v36;
  v110 = v35;

  v37 = v31;
  v38 = v32;
  v39 = v33;
  v40 = v34;
  v41 = v36;
  v42 = v35;
  sub_220DA1824();
  if (__swift_getEnumTagSinglePayload(v25, 1, v26) == 1)
  {
    sub_220D3DD1C(v25, &qword_27CF964F0, &qword_220DC7A00);
    if (qword_27CF94F40 != -1)
    {
      swift_once();
    }

    v43 = sub_220DBF410();
    __swift_project_value_buffer(v43, qword_27CF95F48);
    v44 = sub_220DBF3F0();
    v45 = sub_220DC0980();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      *v46 = 0;
      _os_log_impl(&dword_220CD1000, v44, v45, "Failed to create future day platter string for Humidity due to missing dew point", v46, 2u);
      MEMORY[0x223D98FB0](v46, -1, -1);
    }

    return 0;
  }

  else
  {
    v48 = v101;
    sub_220DA27C8(v25, v101);
    v49 = v85;
    sub_220DA282C(v48, v85);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v50 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF964F8, &qword_220DC7A08) + 48);
      v51 = v103[4];
      v52 = v104;
      v51(v102, v49, v104);
      v51(v86, v49 + v50, v52);
      if (qword_280FA6600 != -1)
      {
        swift_once();
      }

      v53 = sub_220DBE240();
      v99 = v54;
      v100 = v53;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94FB8, &unk_220DC1E30);
      v55 = swift_allocObject();
      *(v55 + 16) = xmmword_220DC17C0;
      v56 = v87;
      sub_220DC02B0();
      LODWORD(v98) = *MEMORY[0x277D7B408];
      v58 = v91;
      v57 = v92;
      v97 = *(v91 + 104);
      v59 = v88;
      v97(v88);
      v96 = sub_220DBF100();
      sub_220DBF0D0();
      v95 = sub_220CF6ABC();
      v60 = v90;
      v85 = sub_220DBE0B0();
      v84 = v61;

      v94 = *(v58 + 8);
      v94(v59, v57);
      v93 = *(v89 + 8);
      (v93)(v56, v60);
      *(v55 + 56) = MEMORY[0x277D837D0];
      v91 = sub_220CEFDB0();
      *(v55 + 64) = v91;
      v62 = v84;
      *(v55 + 32) = v85;
      *(v55 + 40) = v62;
      sub_220DC02B0();
      (v97)(v59, v98, v57);
      sub_220DBF0D0();
      v63 = v86;
      v64 = sub_220DBE0B0();
      v66 = v65;

      v94(v59, v92);
      (v93)(v56, v60);
      v67 = v91;
      *(v55 + 96) = MEMORY[0x277D837D0];
      *(v55 + 104) = v67;
      *(v55 + 72) = v64;
      *(v55 + 80) = v66;
      v47 = sub_220DC05F0();

      v68 = v104;
      v69 = v103[1];
      v69(v63, v104);
      v69(v102, v68);
    }

    else
    {
      v70 = v102;
      (v103[4])(v102, v49, v104);
      if (qword_280FA6600 != -1)
      {
        swift_once();
      }

      v71 = sub_220DBE240();
      v99 = v72;
      v100 = v71;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94FB8, &unk_220DC1E30);
      v73 = swift_allocObject();
      *(v73 + 16) = xmmword_220DC17A0;
      v74 = v87;
      sub_220DC02B0();
      v75 = v91;
      v76 = v92;
      v77 = v88;
      (*(v91 + 104))(v88, *MEMORY[0x277D7B408], v92);
      sub_220DBF100();
      sub_220DBF0D0();
      sub_220CF6ABC();
      v78 = v90;
      v79 = sub_220DBE0B0();
      v80 = v70;
      v82 = v81;

      (*(v75 + 8))(v77, v76);
      (*(v89 + 8))(v74, v78);
      *(v73 + 56) = MEMORY[0x277D837D0];
      *(v73 + 64) = sub_220CEFDB0();
      *(v73 + 32) = v79;
      *(v73 + 40) = v82;
      v47 = sub_220DC05F0();

      (v103[1])(v80, v104);
    }

    sub_220DA2890(v101);
  }

  return v47;
}

uint64_t sub_220D9F23C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v100 = a3;
  v101 = a2;
  v99 = a1;
  v5 = sub_220DC0300();
  v92 = *(v5 - 8);
  v93 = v5;
  v6 = *(v92 + 64);
  MEMORY[0x28223BE20](v5);
  v89 = &v85 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = sub_220DC0A40();
  v90 = *(v91 - 8);
  v8 = *(v90 + 64);
  MEMORY[0x28223BE20](v91);
  v88 = &v85 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94FA0, &unk_220DC17F0);
  v104 = *(v10 - 8);
  v105 = v10;
  v11 = v104[8];
  v12 = MEMORY[0x28223BE20](v10);
  v87 = &v85 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v103 = &v85 - v14;
  v15 = sub_220DBE740();
  v97 = *(v15 - 8);
  v98 = v15;
  v16 = *(v97 + 64);
  MEMORY[0x28223BE20](v15);
  v96 = &v85 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = sub_220DBE560();
  v18 = *(v95 - 1);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v95);
  v21 = &v85 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF964F0, &qword_220DC7A00);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22 - 8);
  v25 = &v85 - v24;
  v26 = type metadata accessor for HumidityPlatterStringBuilder.SecondSentenceKind();
  v27 = *(*(v26 - 8) + 64);
  v28 = MEMORY[0x28223BE20](v26);
  v86 = &v85 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v102 = &v85 - v30;
  v31 = *a4;
  v32 = *(a4 + 8);
  v33 = *(a4 + 16);
  v34 = *(a4 + 24);
  v36 = *(a4 + 32);
  v35 = *(a4 + 40);
  (*(v18 + 16))(v21, v99, v95);
  (*(v97 + 16))(v96, v100, v98);
  v106 = v31;
  v107 = v32;
  v108 = v33;
  v109 = v34;
  v110 = v36;
  v111 = v35;

  v37 = v31;
  v38 = v32;
  v39 = v33;
  v40 = v34;
  v41 = v36;
  v42 = v35;
  sub_220DA1824();
  if (__swift_getEnumTagSinglePayload(v25, 1, v26) == 1)
  {
    sub_220D3DD1C(v25, &qword_27CF964F0, &qword_220DC7A00);
    if (qword_27CF94F40 != -1)
    {
      swift_once();
    }

    v43 = sub_220DBF410();
    __swift_project_value_buffer(v43, qword_27CF95F48);
    v44 = sub_220DBF3F0();
    v45 = sub_220DC0980();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      *v46 = 0;
      _os_log_impl(&dword_220CD1000, v44, v45, "Failed to create yesterday platter string for Humidity due to missing dew point", v46, 2u);
      MEMORY[0x223D98FB0](v46, -1, -1);
    }

    return 0;
  }

  else
  {
    v48 = v102;
    sub_220DA27C8(v25, v102);
    v49 = v48;
    v50 = v86;
    sub_220DA282C(v49, v86);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v51 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF964F8, &qword_220DC7A08) + 48);
      v52 = v104[4];
      v53 = v105;
      v52(v103, v50, v105);
      v52(v87, v50 + v51, v53);
      if (qword_280FA6600 != -1)
      {
        swift_once();
      }

      v54 = sub_220DBE240();
      v100 = v55;
      v101 = v54;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94FB8, &unk_220DC1E30);
      v56 = swift_allocObject();
      *(v56 + 16) = xmmword_220DC17C0;
      v57 = v88;
      sub_220DC02B0();
      LODWORD(v99) = *MEMORY[0x277D7B408];
      v59 = v92;
      v58 = v93;
      v98 = *(v92 + 104);
      v60 = v89;
      v98(v89);
      v97 = sub_220DBF100();
      sub_220DBF0D0();
      v96 = sub_220CF6ABC();
      v61 = v91;
      v86 = sub_220DBE0B0();
      v85 = v62;

      v95 = *(v59 + 8);
      v95(v60, v58);
      v94 = *(v90 + 8);
      (v94)(v57, v61);
      *(v56 + 56) = MEMORY[0x277D837D0];
      v92 = sub_220CEFDB0();
      *(v56 + 64) = v92;
      v63 = v85;
      *(v56 + 32) = v86;
      *(v56 + 40) = v63;
      sub_220DC02B0();
      (v98)(v60, v99, v58);
      sub_220DBF0D0();
      v64 = v87;
      v65 = sub_220DBE0B0();
      v67 = v66;

      v95(v60, v93);
      (v94)(v57, v61);
      v68 = v92;
      *(v56 + 96) = MEMORY[0x277D837D0];
      *(v56 + 104) = v68;
      *(v56 + 72) = v65;
      *(v56 + 80) = v67;
      v47 = sub_220DC05F0();

      v69 = v105;
      v70 = v104[1];
      v70(v64, v105);
      v70(v103, v69);
    }

    else
    {
      v71 = v103;
      (v104[4])(v103, v50, v105);
      if (qword_280FA6600 != -1)
      {
        swift_once();
      }

      v72 = sub_220DBE240();
      v100 = v73;
      v101 = v72;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94FB8, &unk_220DC1E30);
      v74 = swift_allocObject();
      *(v74 + 16) = xmmword_220DC17A0;
      v75 = v88;
      sub_220DC02B0();
      v76 = v92;
      v77 = v93;
      v78 = v89;
      (*(v92 + 104))(v89, *MEMORY[0x277D7B408], v93);
      sub_220DBF100();
      sub_220DBF0D0();
      sub_220CF6ABC();
      v79 = v91;
      v80 = sub_220DBE0B0();
      v81 = v71;
      v83 = v82;

      (*(v76 + 8))(v78, v77);
      (*(v90 + 8))(v75, v79);
      *(v74 + 56) = MEMORY[0x277D837D0];
      *(v74 + 64) = sub_220CEFDB0();
      *(v74 + 32) = v80;
      *(v74 + 40) = v83;
      v47 = sub_220DC05F0();

      (v104[1])(v81, v105);
    }

    sub_220DA2890(v102);
  }

  return v47;
}

uint64_t sub_220D9FD08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (qword_280FA6600 != -1)
  {
    OUTLINED_FUNCTION_10();
  }

  OUTLINED_FUNCTION_6_0();
  sub_220DBE240();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94FB8, &unk_220DC1E30);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_220DC17C0;
  v9 = MEMORY[0x277D837D0];
  *(v8 + 56) = MEMORY[0x277D837D0];
  v10 = sub_220CEFDB0();
  *(v8 + 32) = a1;
  *(v8 + 40) = a2;
  *(v8 + 96) = v9;
  *(v8 + 104) = v10;
  *(v8 + 64) = v10;
  *(v8 + 72) = a3;
  *(v8 + 80) = a4;

  v11 = sub_220DC05F0();

  return v11;
}

uint64_t sub_220D9FE48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v99 = a3;
  v100 = a2;
  v98 = a1;
  v5 = sub_220DC0300();
  v91 = *(v5 - 8);
  v92 = v5;
  v6 = *(v91 + 64);
  MEMORY[0x28223BE20](v5);
  v88 = &v84 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = sub_220DC0A40();
  v89 = *(v90 - 8);
  v8 = *(v89 + 64);
  MEMORY[0x28223BE20](v90);
  v87 = &v84 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94FA0, &unk_220DC17F0);
  v103 = *(v10 - 8);
  v104 = v10;
  v11 = v103[8];
  v12 = MEMORY[0x28223BE20](v10);
  v86 = &v84 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v102 = &v84 - v14;
  v15 = sub_220DBE740();
  v96 = *(v15 - 8);
  v97 = v15;
  v16 = *(v96 + 64);
  MEMORY[0x28223BE20](v15);
  v95 = &v84 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = sub_220DBE560();
  v18 = *(v94 - 1);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v94);
  v21 = &v84 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF964F0, &qword_220DC7A00);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22 - 8);
  v25 = &v84 - v24;
  v26 = type metadata accessor for HumidityPlatterStringBuilder.SecondSentenceKind();
  v27 = *(*(v26 - 8) + 64);
  v28 = MEMORY[0x28223BE20](v26);
  v85 = &v84 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v101 = &v84 - v30;
  v31 = *a4;
  v32 = *(a4 + 8);
  v33 = *(a4 + 16);
  v34 = *(a4 + 24);
  v36 = *(a4 + 32);
  v35 = *(a4 + 40);
  (*(v18 + 16))(v21, v98, v94);
  (*(v96 + 16))(v95, v99, v97);
  v105 = v31;
  v106 = v32;
  v107 = v33;
  v108 = v34;
  v109 = v36;
  v110 = v35;

  v37 = v31;
  v38 = v32;
  v39 = v33;
  v40 = v34;
  v41 = v36;
  v42 = v35;
  sub_220DA1824();
  if (__swift_getEnumTagSinglePayload(v25, 1, v26) == 1)
  {
    sub_220D3DD1C(v25, &qword_27CF964F0, &qword_220DC7A00);
    if (qword_27CF94F40 != -1)
    {
      swift_once();
    }

    v43 = sub_220DBF410();
    __swift_project_value_buffer(v43, qword_27CF95F48);
    v44 = sub_220DBF3F0();
    v45 = sub_220DC0980();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      *v46 = 0;
      _os_log_impl(&dword_220CD1000, v44, v45, "Failed to create today platter string for Humidity due to missing dew point", v46, 2u);
      MEMORY[0x223D98FB0](v46, -1, -1);
    }

    return 0;
  }

  else
  {
    v48 = v101;
    sub_220DA27C8(v25, v101);
    v49 = v85;
    sub_220DA282C(v48, v85);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v50 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF964F8, &qword_220DC7A08) + 48);
      v51 = v103[4];
      v52 = v104;
      v51(v102, v49, v104);
      v51(v86, v49 + v50, v52);
      if (qword_280FA6600 != -1)
      {
        swift_once();
      }

      v53 = sub_220DBE240();
      v99 = v54;
      v100 = v53;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94FB8, &unk_220DC1E30);
      v55 = swift_allocObject();
      *(v55 + 16) = xmmword_220DC17C0;
      v56 = v87;
      sub_220DC02B0();
      LODWORD(v98) = *MEMORY[0x277D7B408];
      v58 = v91;
      v57 = v92;
      v97 = *(v91 + 104);
      v59 = v88;
      v97(v88);
      v96 = sub_220DBF100();
      sub_220DBF0D0();
      v95 = sub_220CF6ABC();
      v60 = v90;
      v85 = sub_220DBE0B0();
      v84 = v61;

      v94 = *(v58 + 8);
      v94(v59, v57);
      v93 = *(v89 + 8);
      (v93)(v56, v60);
      *(v55 + 56) = MEMORY[0x277D837D0];
      v91 = sub_220CEFDB0();
      *(v55 + 64) = v91;
      v62 = v84;
      *(v55 + 32) = v85;
      *(v55 + 40) = v62;
      sub_220DC02B0();
      (v97)(v59, v98, v57);
      sub_220DBF0D0();
      v63 = v86;
      v64 = sub_220DBE0B0();
      v66 = v65;

      v94(v59, v92);
      (v93)(v56, v60);
      v67 = v91;
      *(v55 + 96) = MEMORY[0x277D837D0];
      *(v55 + 104) = v67;
      *(v55 + 72) = v64;
      *(v55 + 80) = v66;
      v47 = sub_220DC05F0();

      v68 = v104;
      v69 = v103[1];
      v69(v63, v104);
      v69(v102, v68);
    }

    else
    {
      v70 = v102;
      (v103[4])(v102, v49, v104);
      if (qword_280FA6600 != -1)
      {
        swift_once();
      }

      v71 = sub_220DBE240();
      v99 = v72;
      v100 = v71;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94FB8, &unk_220DC1E30);
      v73 = swift_allocObject();
      *(v73 + 16) = xmmword_220DC17A0;
      v74 = v87;
      sub_220DC02B0();
      v75 = v91;
      v76 = v92;
      v77 = v88;
      (*(v91 + 104))(v88, *MEMORY[0x277D7B408], v92);
      sub_220DBF100();
      sub_220DBF0D0();
      sub_220CF6ABC();
      v78 = v90;
      v79 = sub_220DBE0B0();
      v80 = v70;
      v82 = v81;

      (*(v75 + 8))(v77, v76);
      (*(v89 + 8))(v74, v78);
      *(v73 + 56) = MEMORY[0x277D837D0];
      *(v73 + 64) = sub_220CEFDB0();
      *(v73 + 32) = v79;
      *(v73 + 40) = v82;
      v47 = sub_220DC05F0();

      (v103[1])(v80, v104);
    }

    sub_220DA2890(v101);
  }

  return v47;
}

uint64_t sub_220DA090C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (qword_280FA6600 != -1)
  {
    swift_once();
  }

  sub_220DBE240();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94FB8, &unk_220DC1E30);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_220DC17C0;
  v9 = MEMORY[0x277D837D0];
  *(v8 + 56) = MEMORY[0x277D837D0];
  v10 = sub_220CEFDB0();
  *(v8 + 32) = a1;
  *(v8 + 40) = a2;
  *(v8 + 96) = v9;
  *(v8 + 104) = v10;
  *(v8 + 64) = v10;
  *(v8 + 72) = a3;
  *(v8 + 80) = a4;

  v11 = sub_220DC05F0();

  return v11;
}

double sub_220DA0A68(uint64_t a1, uint64_t a2, void (*a3)(char *, uint64_t, uint64_t))
{
  v48 = a3;
  v49 = sub_220DBE960();
  v46 = *(v49 - 8);
  v3 = *(v46 + 64);
  MEMORY[0x28223BE20](v49);
  v5 = &v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_220DBE6E0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_220DBE560();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v42 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v42 - v17;
  sub_220DBE480();
  sub_220DBE600();
  sub_220DBE320();
  (*(v7 + 8))(v10, v6);
  v47 = v18;
  v51 = v18;
  v52 = v16;
  v19 = v48;

  v20 = sub_220D28868(sub_220D3727C, v50, v19);
  v21 = *(v20 + 16);
  if (v21)
  {
    v43 = v16;
    v44 = v12;
    v45 = v11;
    v53 = MEMORY[0x277D84F90];
    sub_220CFB704(0, v21, 0);
    v22 = v53;
    v23 = v46 + 16;
    v48 = *(v46 + 16);
    v24 = *(v46 + 80);
    v42 = v20;
    v25 = v20 + ((v24 + 32) & ~v24);
    v26 = *(v46 + 72);
    v27 = (v46 + 8);
    v46 = v21;
    v28 = v21;
    v29 = v23;
    do
    {
      v30 = v49;
      v31 = v29;
      v48(v5, v25, v49);
      sub_220DBE930();
      v33 = v32;
      (*v27)(v5, v30);
      v53 = v22;
      v35 = *(v22 + 16);
      v34 = *(v22 + 24);
      if (v35 >= v34 >> 1)
      {
        sub_220CFB704((v34 > 1), v35 + 1, 1);
        v22 = v53;
      }

      *(v22 + 16) = v35 + 1;
      *(v22 + 8 * v35 + 32) = v33;
      v25 += v26;
      --v28;
      v29 = v31;
    }

    while (v28);

    v12 = v44;
    v11 = v45;
    v16 = v43;
    v21 = v46;
  }

  else
  {

    v22 = MEMORY[0x277D84F90];
  }

  v36 = *(v22 + 16);
  if (v36)
  {
    v37 = (v22 + 32);
    v38 = 0.0;
    do
    {
      v39 = *v37++;
      v38 = v38 + v39;
      --v36;
    }

    while (v36);
  }

  else
  {
    v38 = 0.0;
  }

  v40 = *(v12 + 8);
  v40(v16, v11);
  v40(v47, v11);
  return v38 / v21;
}

uint64_t sub_220DA0E58(double a1)
{
  v2 = sub_220DBE5E0();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94F98, &qword_220DC17E8);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v14 - v7;
  *&v14[1] = a1;
  sub_220DBE570();
  sub_220CEFCB0();
  sub_220DBE290();
  sub_220CEFD04();
  sub_220DC0520();
  (*(v5 + 8))(v8, v4);
  v9 = v14[2];
  v10 = v14[3];
  if (qword_280FA6600 != -1)
  {
    swift_once();
  }

  sub_220DBE240();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94FB8, &unk_220DC1E30);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_220DC17A0;
  *(v11 + 56) = MEMORY[0x277D837D0];
  *(v11 + 64) = sub_220CEFDB0();
  *(v11 + 32) = v9;
  *(v11 + 40) = v10;
  v12 = sub_220DC05F0();

  return v12;
}

uint64_t sub_220DA10D8(double a1)
{
  v2 = sub_220DBE5E0();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94F98, &qword_220DC17E8);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v14 - v7;
  *&v14[1] = a1;
  sub_220DBE570();
  sub_220CEFCB0();
  sub_220DBE290();
  sub_220CEFD04();
  sub_220DC0520();
  (*(v5 + 8))(v8, v4);
  v9 = v14[2];
  v10 = v14[3];
  if (qword_280FA6600 != -1)
  {
    swift_once();
  }

  sub_220DBE240();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94FB8, &unk_220DC1E30);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_220DC17A0;
  *(v11 + 56) = MEMORY[0x277D837D0];
  *(v11 + 64) = sub_220CEFDB0();
  *(v11 + 32) = v9;
  *(v11 + 40) = v10;
  v12 = sub_220DC05F0();

  return v12;
}

uint64_t sub_220DA1354(double a1)
{
  v2 = sub_220DBE5E0();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94F98, &qword_220DC17E8);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v15 - v7;
  v9 = sub_220DBE520();
  *&v15[1] = a1;
  sub_220DBE570();
  sub_220CEFCB0();
  sub_220DBE290();
  sub_220CEFD04();
  sub_220DC0520();
  (*(v5 + 8))(v8, v4);
  v10 = v15[2];
  v11 = v15[3];
  switch(v9)
  {
    case 1:
      if (qword_280FA6600 != -1)
      {
        goto LABEL_16;
      }

      break;
    case 2:
      if (qword_280FA6600 != -1)
      {
        goto LABEL_16;
      }

      break;
    case 3:
      if (qword_280FA6600 != -1)
      {
        goto LABEL_16;
      }

      break;
    case 4:
      if (qword_280FA6600 != -1)
      {
        goto LABEL_16;
      }

      break;
    case 5:
      if (qword_280FA6600 != -1)
      {
        goto LABEL_16;
      }

      break;
    case 6:
      if (qword_280FA6600 != -1)
      {
        goto LABEL_16;
      }

      break;
    default:
      if (qword_280FA6600 != -1)
      {
LABEL_16:
        swift_once();
      }

      break;
  }

  sub_220DBE240();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94FB8, &unk_220DC1E30);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_220DC17A0;
  *(v12 + 56) = MEMORY[0x277D837D0];
  *(v12 + 64) = sub_220CEFDB0();
  *(v12 + 32) = v10;
  *(v12 + 40) = v11;
  v13 = sub_220DC05F0();

  return v13;
}

void sub_220DA1824()
{
  OUTLINED_FUNCTION_28_3();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF959E0, &unk_220DC3C00);
  v9 = OUTLINED_FUNCTION_18(v8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_4();
  v14 = v12 - v13;
  MEMORY[0x28223BE20](v15);
  v17 = &v77 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94FA0, &unk_220DC17F0);
  v19 = OUTLINED_FUNCTION_0(v18);
  v92 = v20;
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_4();
  v25 = v23 - v24;
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_25_0();
  v81 = v27;
  OUTLINED_FUNCTION_23();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_25_0();
  v83 = v29;
  OUTLINED_FUNCTION_23();
  v31 = MEMORY[0x28223BE20](v30);
  v33 = &v77 - v32;
  MEMORY[0x28223BE20](v31);
  v90 = &v77 - v34;
  v91 = type metadata accessor for HumidityPlatterStringBuilder.SecondSentenceKind();
  v35 = *(*(v91 - 8) + 64);
  MEMORY[0x28223BE20](v91);
  OUTLINED_FUNCTION_1();
  v82 = (v37 - v36);
  v38 = *v1;
  v88 = *(v1 + 8);
  v89 = v38;
  v39 = *(v1 + 16);
  v86 = *(v1 + 24);
  v87 = v39;
  v40 = *(v1 + 32);
  v84 = *(v1 + 40);
  v85 = v40;
  v93 = v3;
  v94 = v5;
  v95 = sub_220CFACFC();

  sub_220DA290C(&v95);

  v41 = v95;
  sub_220D101AC(v95, v17);
  v42 = sub_220DBE960();
  if (__swift_getEnumTagSinglePayload(v17, 1, v42) == 1)
  {
  }

  else
  {
    v78 = v7;
    v79 = v3;
    v80 = v5;
    sub_220DBE920();
    v43 = *(*(v42 - 8) + 8);
    v43(v17, v42);
    v44 = v92;
    v45 = v33;
    v46 = *(v92 + 32);
    v46(v90, v45, v18);
    sub_220D10980(v41, v14);

    if (__swift_getEnumTagSinglePayload(v14, 1, v42) != 1)
    {
      v55 = v81;
      sub_220DBE920();
      v43(v14, v42);
      v56 = v83;
      v46(v83, v55, v18);
      v57 = v89;
      v58 = v90;
      sub_220DBE130();
      sub_220DBE050();
      v60 = v59;
      v61 = *(v92 + 8);
      v92 += 8;
      v61(v25, v18);
      v62 = round(v60);
      sub_220DBE130();

      sub_220DBE050();
      v64 = v63;
      v61(v25, v18);
      if (v62 == round(v64))
      {
        v61(v58, v18);
        v65 = v82;
      }

      else
      {
        v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF964F8, &qword_220DC7A08);
        v65 = &v82[*(v66 + 48)];
        v67 = OUTLINED_FUNCTION_12_24();
        (v46)(v67);
      }

      v68 = v80;
      v69 = v78;
      v46(v65, v56, v18);
      v70 = v91;
      swift_storeEnumTagMultiPayload();
      v71 = OUTLINED_FUNCTION_12_24();
      sub_220DA27C8(v71, v72);
      __swift_storeEnumTagSinglePayload(v69, 0, 1, v70);
      v73 = sub_220DBE740();
      OUTLINED_FUNCTION_1_0(v73);
      (*(v74 + 8))(v79);
      v75 = sub_220DBE560();
      OUTLINED_FUNCTION_1_0(v75);
      (*(v76 + 8))(v68);
      goto LABEL_14;
    }

    (*(v44 + 8))(v90, v18);

    v17 = v14;
    v5 = v80;
    v3 = v79;
    v7 = v78;
  }

  sub_220D3DD1C(v17, &qword_27CF959E0, &unk_220DC3C00);
  if (qword_27CF94F40 != -1)
  {
    swift_once();
  }

  v47 = sub_220DBF410();
  __swift_project_value_buffer(v47, qword_27CF95F48);
  v48 = sub_220DBF3F0();
  v49 = sub_220DC0980();
  if (os_log_type_enabled(v48, v49))
  {
    v50 = swift_slowAlloc();
    *v50 = 0;
    _os_log_impl(&dword_220CD1000, v48, v49, "Failed determine the Humidity second sentence kind due to missing dew point", v50, 2u);
    MEMORY[0x223D98FB0](v50, -1, -1);
  }

  v51 = sub_220DBE740();
  OUTLINED_FUNCTION_1_0(v51);
  (*(v52 + 8))(v3);
  v53 = sub_220DBE560();
  OUTLINED_FUNCTION_1_0(v53);
  (*(v54 + 8))(v5);
  __swift_storeEnumTagSinglePayload(v7, 1, 1, v91);
LABEL_14:
  OUTLINED_FUNCTION_29_0();
}

uint64_t sub_220DA1F5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v21 = a3;
  v19[1] = a1;
  v3 = sub_220DBE6C0();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_220DBE560();
  v8 = *(v20 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v20);
  v11 = v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_220DBE6E0();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = v19 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220DBE600();
  sub_220DBE8F0();
  (*(v4 + 104))(v7, *MEMORY[0x277CC9968], v3);
  v17 = sub_220DBE680();
  (*(v4 + 8))(v7, v3);
  (*(v8 + 8))(v11, v20);
  (*(v13 + 8))(v16, v12);
  return v17 & 1;
}

BOOL sub_220DA21C0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94FA0, &unk_220DC17F0);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x28223BE20](v0);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v14 - v6;
  sub_220DBE920();
  sub_220DBE050();
  v9 = v8;
  v10 = *(v1 + 8);
  v10(v7, v0);
  sub_220DBE920();
  sub_220DBE050();
  v12 = v11;
  v10(v5, v0);
  return v9 < v12;
}

uint64_t sub_220DA231C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94FA0, &unk_220DC17F0);
  v5 = OUTLINED_FUNCTION_0(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_4();
  v52 = v10 - v11;
  OUTLINED_FUNCTION_23();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_25_0();
  v54 = v13;
  OUTLINED_FUNCTION_23();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_25_0();
  v53 = v15;
  OUTLINED_FUNCTION_23();
  MEMORY[0x28223BE20](v16);
  v18 = &v51 - v17;
  v19 = type metadata accessor for HumidityPlatterStringBuilder.SecondSentenceKind();
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_4();
  v23 = v21 - v22;
  MEMORY[0x28223BE20](v24);
  v26 = &v51 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF96528, &unk_220DC7A50);
  v28 = OUTLINED_FUNCTION_18(v27);
  v30 = *(v29 + 64);
  v31 = MEMORY[0x28223BE20](v28);
  v33 = &v51 - v32;
  v34 = &v51 + *(v31 + 56) - v32;
  sub_220DA282C(a1, &v51 - v32);
  sub_220DA282C(a2, v34);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_220DA282C(v33, v26);
    OUTLINED_FUNCTION_12_24();
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      (*(v7 + 32))(v18, v34, v4);
      sub_220D287C0();
      v41 = sub_220DBE020();
      v47 = *(v7 + 8);
      v47(v18, v4);
      v48 = OUTLINED_FUNCTION_30();
      (v47)(v48);
      goto LABEL_11;
    }

    v43 = *(v7 + 8);
    v44 = OUTLINED_FUNCTION_30();
    v45(v44);
    goto LABEL_8;
  }

  sub_220DA282C(v33, v23);
  v35 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF964F8, &qword_220DC7A08) + 48);
  OUTLINED_FUNCTION_12_24();
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v46 = *(v7 + 8);
    v46(v23 + v35, v4);
    v46(v23, v4);
LABEL_8:
    sub_220D3DD1C(v33, &qword_27CF96528, &unk_220DC7A50);
    goto LABEL_9;
  }

  v36 = *(v7 + 32);
  v36(v53, v34, v4);
  v36(v54, (v23 + v35), v4);
  v37 = v52;
  v36(v52, &v34[v35], v4);
  sub_220D287C0();
  v38 = sub_220DBE020();
  v39 = *(v7 + 8);
  v39(v23, v4);
  if (v38)
  {
    v40 = v54;
    v41 = sub_220DBE020();
    v39(v37, v4);
    v39(v40, v4);
    v42 = OUTLINED_FUNCTION_30();
    (v39)(v42);
LABEL_11:
    sub_220DA2890(v33);
    return v41 & 1;
  }

  v39(v37, v4);
  v39(v54, v4);
  v50 = OUTLINED_FUNCTION_30();
  (v39)(v50);
  sub_220DA2890(v33);
LABEL_9:
  v41 = 0;
  return v41 & 1;
}

uint64_t type metadata accessor for HumidityPlatterStringBuilder.SecondSentenceKind()
{
  result = qword_27CF96500;
  if (!qword_27CF96500)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_220DA27C8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HumidityPlatterStringBuilder.SecondSentenceKind();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_220DA282C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HumidityPlatterStringBuilder.SecondSentenceKind();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_220DA2890(uint64_t a1)
{
  v2 = type metadata accessor for HumidityPlatterStringBuilder.SecondSentenceKind();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_220DA290C(uint64_t *a1)
{
  v2 = *(sub_220DBE960() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_220D81A78(v3);
    v3 = v4;
  }

  v5 = *(v3 + 16);
  v7[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v7[1] = v5;
  result = sub_220DA29B4(v7);
  *a1 = v3;
  return result;
}

uint64_t sub_220DA29B4(uint64_t *a1)
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
        sub_220DBE960();
        v6 = sub_220DC0760();
        *(v6 + 16) = v5;
      }

      v7 = *(sub_220DBE960() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_220DA2EB4(v8, v9, a1, v4);
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
    return sub_220DA2AE4(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_220DA2AE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94FA0, &unk_220DC17F0);
  v8 = *(v64 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v64);
  v63 = &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v62 = &v44 - v12;
  v13 = sub_220DBE960();
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  v54 = &v44 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v61 = &v44 - v18;
  result = MEMORY[0x28223BE20](v17);
  v60 = &v44 - v21;
  v46 = a2;
  if (a3 != a2)
  {
    v22 = *a4;
    v24 = *(v20 + 16);
    v23 = v20 + 16;
    v25 = *(v23 + 56);
    v56 = (v8 + 8);
    v57 = v24;
    v55 = (v23 - 8);
    v59 = v23;
    v26 = v22 + v25 * (a3 - 1);
    v51 = -v25;
    v52 = (v23 + 16);
    v27 = a1 - a3;
    v53 = v22;
    v45 = v25;
    v28 = v22 + v25 * a3;
    v58 = v13;
    while (2)
    {
      v49 = v26;
      v50 = a3;
      v47 = v28;
      v48 = v27;
      v65 = v27;
      do
      {
        v29 = v60;
        v30 = v57;
        v57(v60, v28, v13);
        v31 = v61;
        v30(v61, v26, v13);
        v32 = v62;
        sub_220DBE920();
        v33 = v64;
        sub_220DBE050();
        v35 = v34;
        v36 = *v56;
        (*v56)(v32, v33);
        v37 = v63;
        sub_220DBE920();
        sub_220DBE050();
        v39 = v38;
        v36(v37, v33);
        v13 = v58;
        v40 = *v55;
        (*v55)(v31, v58);
        result = v40(v29, v13);
        if (v35 >= v39)
        {
          break;
        }

        if (!v53)
        {
          __break(1u);
          return result;
        }

        v41 = *v52;
        v42 = v54;
        (*v52)(v54, v28, v13);
        swift_arrayInitWithTakeFrontToBack();
        result = (v41)(v26, v42, v13);
        v26 += v51;
        v28 += v51;
      }

      while (!__CFADD__(v65++, 1));
      a3 = v50 + 1;
      v26 = v49 + v45;
      v27 = v48 - 1;
      v28 = v47 + v45;
      if (v50 + 1 != v46)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_220DA2EB4(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v146 = a1;
  v168 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94FA0, &unk_220DC17F0);
  v6 = *(v168 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v168);
  v167 = &v140 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v166 = &v140 - v10;
  v11 = a3;
  v12 = sub_220DBE960();
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12);
  v149 = &v140 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v159 = &v140 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v165 = &v140 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v164 = &v140 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  MEMORY[0x28223BE20](v22);
  v26 = *(a3 + 8);
  v153 = v24;
  v154 = a3;
  if (v26 < 1)
  {
    v28 = MEMORY[0x277D84F90];
LABEL_102:
    v171 = *v146;
    if (!v171)
    {
      goto LABEL_145;
    }

    v6 = v11;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = v155;
    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_104;
    }

    goto LABEL_139;
  }

  v141 = &v140 - v23;
  v142 = v25;
  v27 = 0;
  v169 = v24 + 16;
  v170 = (v24 + 8);
  v161 = (v24 + 32);
  v162 = (v6 + 8);
  v28 = MEMORY[0x277D84F90];
  v145 = a4;
  v163 = v12;
  while (1)
  {
    v29 = v27;
    v30 = v27 + 1;
    if (v27 + 1 < v26)
    {
      v158 = v26;
      v31 = *v11;
      v32 = *(v153 + 72);
      v156 = v27 + 1;
      v6 = v31 + v32 * v30;
      v33 = *(v153 + 16);
      v34 = v27;
      v35 = v141;
      v33(v141, v6, v12);
      v171 = v31;
      v36 = v31 + v32 * v34;
      v37 = v142;
      v152 = v33;
      v33(v142, v36, v12);
      v38 = v155;
      LODWORD(v157) = sub_220DA21C0();
      v11 = v38;
      if (v38)
      {
        v139 = *v170;
        (*v170)(v37, v12);
        (v139)(v35, v12);
LABEL_114:

        return;
      }

      v155 = 0;
      v143 = v28;
      v28 = *v170;
      (*v170)(v37, v12);
      v151 = v28;
      (v28)(v35, v12);
      v144 = v34;
      v39 = v34 + 2;
      v40 = v171 + v32 * (v34 + 2);
      v41 = v32;
      v160 = v32;
      v42 = v158;
      while (1)
      {
        v43 = v39;
        if (++v156 >= v42)
        {
          break;
        }

        v44 = v164;
        v45 = v152;
        v171 = v39;
        (v152)(v164, v40, v12);
        v46 = v165;
        v45(v165, v6, v12);
        v47 = v166;
        sub_220DBE920();
        v48 = v168;
        sub_220DBE050();
        v50 = v49;
        v28 = v162;
        v11 = *v162;
        (*v162)(v47, v48);
        v51 = v167;
        sub_220DBE920();
        sub_220DBE050();
        v53 = v52;
        v54 = v48;
        v12 = v163;
        v11(v51, v54);
        v55 = v151;
        (v151)(v46, v12);
        (v55)(v44, v12);
        v43 = v171;
        v42 = v158;
        v41 = v160;
        v40 += v160;
        v6 += v160;
        v39 = v171 + 1;
        if (((v157 ^ (v50 >= v53)) & 1) == 0)
        {
          goto LABEL_10;
        }
      }

      v156 = v42;
LABEL_10:
      a4 = v145;
      if (v157)
      {
        v30 = v156;
        v29 = v144;
        if (v156 < v144)
        {
          goto LABEL_138;
        }

        v11 = v154;
        if (v144 >= v156)
        {
          v28 = v143;
          goto LABEL_33;
        }

        if (v42 >= v43)
        {
          v56 = v43;
        }

        else
        {
          v56 = v42;
        }

        v57 = v41 * (v56 - 1);
        v58 = v41 * v56;
        v59 = v144;
        v60 = v144 * v41;
        do
        {
          if (v59 != --v30)
          {
            v61 = *v11;
            if (!v61)
            {
              goto LABEL_143;
            }

            v6 = v61 + v60;
            v62 = *v161;
            (*v161)(v149, v61 + v60, v12);
            v63 = v60 < v57 || v6 >= v61 + v58;
            if (v63)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v60 != v57)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            v62((v61 + v57), v149, v12);
            v11 = v154;
            v41 = v160;
          }

          ++v59;
          v57 -= v41;
          v58 -= v41;
          v60 += v41;
        }

        while (v59 < v30);
        a4 = v145;
      }

      else
      {
        v11 = v154;
      }

      v28 = v143;
      v30 = v156;
      v29 = v144;
    }

LABEL_33:
    v64 = *(v11 + 1);
    if (v30 < v64)
    {
      if (__OFSUB__(v30, v29))
      {
        goto LABEL_135;
      }

      if (v30 - v29 < a4)
      {
        break;
      }
    }

LABEL_49:
    if (v30 < v29)
    {
      goto LABEL_134;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v127 = *(v28 + 2);
      sub_220D562D4();
      v28 = v128;
    }

    v6 = *(v28 + 2);
    v86 = v6 + 1;
    v11 = v154;
    if (v6 >= *(v28 + 3) >> 1)
    {
      sub_220D562D4();
      v11 = v154;
      v28 = v129;
    }

    *(v28 + 2) = v86;
    v87 = v28 + 32;
    v88 = &v28[16 * v6 + 32];
    *v88 = v29;
    *(v88 + 1) = v30;
    v171 = *v146;
    if (!v171)
    {
      goto LABEL_144;
    }

    v156 = v30;
    if (v6)
    {
      while (1)
      {
        v89 = v86 - 1;
        v90 = &v87[16 * v86 - 16];
        v91 = &v28[16 * v86];
        if (v86 >= 4)
        {
          break;
        }

        if (v86 == 3)
        {
          v92 = *(v28 + 4);
          v93 = *(v28 + 5);
          v102 = __OFSUB__(v93, v92);
          v94 = v93 - v92;
          v95 = v102;
LABEL_69:
          if (v95)
          {
            goto LABEL_121;
          }

          v107 = *v91;
          v106 = *(v91 + 1);
          v108 = __OFSUB__(v106, v107);
          v109 = v106 - v107;
          v110 = v108;
          if (v108)
          {
            goto LABEL_124;
          }

          v111 = *(v90 + 1);
          v112 = v111 - *v90;
          if (__OFSUB__(v111, *v90))
          {
            goto LABEL_127;
          }

          if (__OFADD__(v109, v112))
          {
            goto LABEL_129;
          }

          if (v109 + v112 >= v94)
          {
            if (v94 < v112)
            {
              v89 = v86 - 2;
            }

            goto LABEL_91;
          }

          goto LABEL_84;
        }

        if (v86 < 2)
        {
          goto LABEL_123;
        }

        v114 = *v91;
        v113 = *(v91 + 1);
        v102 = __OFSUB__(v113, v114);
        v109 = v113 - v114;
        v110 = v102;
LABEL_84:
        if (v110)
        {
          goto LABEL_126;
        }

        v116 = *v90;
        v115 = *(v90 + 1);
        v102 = __OFSUB__(v115, v116);
        v117 = v115 - v116;
        if (v102)
        {
          goto LABEL_128;
        }

        if (v117 < v109)
        {
          goto LABEL_98;
        }

LABEL_91:
        if (v89 - 1 >= v86)
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
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
          goto LABEL_137;
        }

        if (!*v11)
        {
          goto LABEL_141;
        }

        v121 = &v87[16 * v89 - 16];
        v122 = *v121;
        v123 = v87;
        v6 = &v87[16 * v89];
        v124 = *(v6 + 8);
        v125 = v155;
        sub_220DA3B04(*v11 + *(v153 + 72) * *v121, *v11 + *(v153 + 72) * *v6, *v11 + *(v153 + 72) * v124, v171);
        v155 = v125;
        if (v125)
        {
          goto LABEL_114;
        }

        if (v124 < v122)
        {
          goto LABEL_116;
        }

        v11 = v28;
        v28 = *(v28 + 2);
        if (v89 > v28)
        {
          goto LABEL_117;
        }

        *v121 = v122;
        *(v121 + 1) = v124;
        if (v89 >= v28)
        {
          goto LABEL_118;
        }

        v86 = (v28 - 1);
        sub_220D81848((v6 + 16), &v28[-v89 - 1], v6);
        *(v11 + 2) = v28 - 1;
        v126 = v28 > 2;
        v28 = v11;
        v11 = v154;
        v87 = v123;
        if (!v126)
        {
          goto LABEL_98;
        }
      }

      v96 = &v87[16 * v86];
      v97 = *(v96 - 8);
      v98 = *(v96 - 7);
      v102 = __OFSUB__(v98, v97);
      v99 = v98 - v97;
      if (v102)
      {
        goto LABEL_119;
      }

      v101 = *(v96 - 6);
      v100 = *(v96 - 5);
      v102 = __OFSUB__(v100, v101);
      v94 = v100 - v101;
      v95 = v102;
      if (v102)
      {
        goto LABEL_120;
      }

      v103 = *(v91 + 1);
      v104 = v103 - *v91;
      if (__OFSUB__(v103, *v91))
      {
        goto LABEL_122;
      }

      v102 = __OFADD__(v94, v104);
      v105 = v94 + v104;
      if (v102)
      {
        goto LABEL_125;
      }

      if (v105 >= v99)
      {
        v119 = *v90;
        v118 = *(v90 + 1);
        v102 = __OFSUB__(v118, v119);
        v120 = v118 - v119;
        if (v102)
        {
          goto LABEL_133;
        }

        if (v94 < v120)
        {
          v89 = v86 - 2;
        }

        goto LABEL_91;
      }

      goto LABEL_69;
    }

LABEL_98:
    v26 = *(v11 + 1);
    v27 = v156;
    a4 = v145;
    if (v156 >= v26)
    {
      goto LABEL_102;
    }
  }

  v65 = v29 + a4;
  if (__OFADD__(v29, a4))
  {
    goto LABEL_136;
  }

  if (v65 >= v64)
  {
    v65 = *(v11 + 1);
  }

  if (v65 < v29)
  {
LABEL_137:
    __break(1u);
LABEL_138:
    __break(1u);
LABEL_139:
    v28 = sub_220D81650(v28);
LABEL_104:
    v131 = v6;
    v132 = v28 + 16;
    v133 = *(v28 + 2);
    while (v133 >= 2)
    {
      v134 = *v131;
      if (!v134)
      {
        goto LABEL_142;
      }

      v6 = v28;
      v135 = &v28[16 * v133];
      v28 = *v135;
      v136 = &v132[2 * v133];
      v137 = *(v136 + 1);
      sub_220DA3B04(v134 + *(v153 + 72) * *v135, v134 + *(v153 + 72) * *v136, v134 + *(v153 + 72) * v137, v171);
      if (v11)
      {
        break;
      }

      if (v137 < v28)
      {
        goto LABEL_130;
      }

      if (v133 - 2 >= *v132)
      {
        goto LABEL_131;
      }

      *v135 = v28;
      *(v135 + 1) = v137;
      v138 = *v132 - v133;
      if (*v132 < v133)
      {
        goto LABEL_132;
      }

      v133 = *v132 - 1;
      sub_220D81848(v136 + 16, v138, v136);
      *v132 = v133;
      v131 = v154;
      v28 = v6;
    }

    goto LABEL_114;
  }

  if (v30 == v65)
  {
    goto LABEL_49;
  }

  v143 = v28;
  v66 = *v11;
  v67 = *(v153 + 72);
  v160 = *(v153 + 16);
  v68 = (v66 + v67 * (v30 - 1));
  v157 = -v67;
  v144 = v29;
  v69 = (v29 - v30);
  v158 = v66;
  v147 = v67;
  v6 = v66 + v30 * v67;
  v148 = v65;
LABEL_42:
  v156 = v30;
  v150 = v6;
  v151 = v69;
  v70 = v69;
  v152 = v68;
  v71 = v68;
  while (1)
  {
    v171 = v70;
    v72 = v164;
    v73 = v160;
    (v160)(v164, v6, v12);
    v74 = v165;
    v73(v165, v71, v12);
    v75 = v166;
    sub_220DBE920();
    v11 = v168;
    sub_220DBE050();
    v77 = v76;
    v78 = *v162;
    (*v162)(v75, v11);
    v79 = v167;
    sub_220DBE920();
    sub_220DBE050();
    v81 = v80;
    v78(v79, v11);
    v12 = v163;
    v82 = *v170;
    (*v170)(v74, v163);
    (v82)(v72, v12);
    if (v77 >= v81)
    {
LABEL_47:
      v30 = v156 + 1;
      v68 = &v152[v147];
      v69 = v151 - 1;
      v6 = v150 + v147;
      if (v156 + 1 == v148)
      {
        v30 = v148;
        v28 = v143;
        v29 = v144;
        goto LABEL_49;
      }

      goto LABEL_42;
    }

    v83 = v171;
    if (!v158)
    {
      break;
    }

    v84 = *v161;
    v85 = v159;
    (*v161)(v159, v6, v12);
    swift_arrayInitWithTakeFrontToBack();
    v84(v71, v85, v12);
    v71 += v157;
    v6 += v157;
    v63 = __CFADD__(v83, 1);
    v70 = v83 + 1;
    if (v63)
    {
      goto LABEL_47;
    }
  }

  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
LABEL_144:
  __break(1u);
LABEL_145:
  __break(1u);
}

uint64_t sub_220DA3B04(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v91 = a4;
  v88 = a3;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94FA0, &unk_220DC17F0);
  v6 = *(v83 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v83);
  v86 = v74 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v85 = v74 - v10;
  v90 = sub_220DBE960();
  v11 = *(*(v90 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v90);
  v84 = v74 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v12);
  v87 = v74 - v16;
  v18 = *(v17 + 72);
  if (!v18)
  {
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
    return result;
  }

  v19 = a2 - a1 == 0x8000000000000000 && v18 == -1;
  if (v19)
  {
    goto LABEL_60;
  }

  v20 = v88 - a2;
  if (v88 - a2 == 0x8000000000000000 && v18 == -1)
  {
    goto LABEL_61;
  }

  v22 = (a2 - a1) / v18;
  v94 = a1;
  v93 = v91;
  v81 = (v6 + 8);
  v82 = (v15 + 16);
  v80 = (v15 + 8);
  v23 = v20 / v18;
  if (v22 >= v20 / v18)
  {
    v46 = v91;
    sub_220CFB4E0(a2, v20 / v18, v91);
    v47 = v46 + v23 * v18;
    v48 = -v18;
    v49 = v47;
    v50 = v88;
    v89 = a1;
    v76 = -v18;
LABEL_36:
    v51 = a2 + v48;
    v52 = v50;
    v74[0] = v49;
    v53 = v49;
    v77 = a2 + v48;
    v78 = a2;
    while (1)
    {
      if (v47 <= v91)
      {
        v94 = a2;
        v92 = v53;
        goto LABEL_58;
      }

      if (a2 <= a1)
      {
        break;
      }

      v75 = v53;
      v88 = v52 + v48;
      v54 = v47 + v48;
      v55 = v47;
      v56 = *v82;
      v57 = v90;
      v79 = v52;
      v56();
      v58 = v84;
      (v56)(v84, v51, v57);
      v59 = v85;
      sub_220DBE920();
      v60 = v83;
      sub_220DBE050();
      v62 = v61;
      v63 = *v81;
      (*v81)(v59, v60);
      v64 = v60;
      v65 = v86;
      sub_220DBE920();
      sub_220DBE050();
      v67 = v66;
      v63(v65, v64);
      v68 = *v80;
      (*v80)(v58, v57);
      v68(v87, v57);
      if (v62 < v67)
      {
        v47 = v55;
        v50 = v88;
        if (v79 < v78 || v88 >= v78)
        {
          a2 = v77;
          swift_arrayInitWithTakeFrontToBack();
          v49 = v75;
          v48 = v76;
          a1 = v89;
        }

        else
        {
          v72 = v75;
          v48 = v76;
          v49 = v75;
          v73 = v77;
          a2 = v77;
          a1 = v89;
          if (v79 != v78)
          {
            swift_arrayInitWithTakeBackToFront();
            a2 = v73;
            v49 = v72;
          }
        }

        goto LABEL_36;
      }

      v69 = v88;
      if (v79 < v55 || v88 >= v55)
      {
        swift_arrayInitWithTakeFrontToBack();
        v52 = v69;
        v47 = v54;
        v53 = v54;
        a1 = v89;
        v51 = v77;
        a2 = v78;
        v48 = v76;
      }

      else
      {
        v53 = v54;
        v19 = v55 == v79;
        v52 = v88;
        v47 = v54;
        a1 = v89;
        v51 = v77;
        a2 = v78;
        v48 = v76;
        if (!v19)
        {
          swift_arrayInitWithTakeBackToFront();
          v52 = v69;
          v47 = v54;
          v53 = v54;
        }
      }
    }

    v94 = a2;
    v92 = v74[0];
  }

  else
  {
    v24 = v91;
    sub_220CFB4E0(a1, (a2 - a1) / v18, v91);
    v78 = v18;
    v79 = v24 + v22 * v18;
    v92 = v79;
    v25 = v88;
    v26 = v84;
    while (v91 < v79 && a2 < v25)
    {
      v89 = a1;
      v28 = *v82;
      v29 = v87;
      v30 = v90;
      (*v82)(v87, a2, v90);
      (v28)(v26, v91, v30);
      v31 = v85;
      sub_220DBE920();
      v32 = v83;
      sub_220DBE050();
      v34 = v33;
      v35 = *v81;
      (*v81)(v31, v32);
      v36 = a2;
      v37 = v86;
      sub_220DBE920();
      sub_220DBE050();
      v39 = v38;
      v35(v37, v32);
      v40 = *v80;
      (*v80)(v26, v30);
      v40(v29, v30);
      if (v34 >= v39)
      {
        v41 = v78;
        v44 = v91 + v78;
        v42 = v89;
        if (v89 < v91 || v89 >= v44)
        {
          swift_arrayInitWithTakeFrontToBack();
          a2 = v36;
        }

        else
        {
          a2 = v36;
          if (v89 != v91)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v93 = v44;
        v91 = v44;
      }

      else
      {
        v41 = v78;
        a2 = v36 + v78;
        v42 = v89;
        if (v89 < v36 || v89 >= a2)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (v89 != v36)
        {
          swift_arrayInitWithTakeBackToFront();
        }
      }

      a1 = v42 + v41;
      v94 = a1;
      v25 = v88;
    }
  }

LABEL_58:
  sub_220D81768(&v94, &v93, &v92);
  return 1;
}

void sub_220DA41B8()
{
  sub_220DA422C();
  if (v0 <= 0x3F)
  {
    sub_220DA42CC();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_220DA422C()
{
  if (!qword_27CF96510)
  {
    sub_220DA4274();
    if (!v1)
    {
      atomic_store(v0, &qword_27CF96510);
    }
  }
}

void sub_220DA4274()
{
  if (!qword_27CF96518)
  {
    sub_220D287C0();
    v0 = sub_220DBE140();
    if (!v1)
    {
      atomic_store(v0, &qword_27CF96518);
    }
  }
}

void sub_220DA42CC()
{
  if (!qword_27CF96520)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF94FA0, &unk_220DC17F0);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27CF96520);
    }
  }
}

id static NSBundle.weatherAppSupport.getter()
{
  if (qword_280FA6600 != -1)
  {
    swift_once();
  }

  v1 = qword_280FA6608;

  return v1;
}

uint64_t SunriseSunsetNextEventFutureDayCountdown.init(date:location:timeZone:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v77 = sub_220DBE560();
  v7 = OUTLINED_FUNCTION_0(v77);
  v81 = v8;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_1();
  v13 = v12 - v11;
  v78 = sub_220DBE1A0();
  v14 = OUTLINED_FUNCTION_0(v78);
  v76 = v15;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_1();
  v20 = v19 - v18;
  v87 = sub_220DC03C0();
  v21 = OUTLINED_FUNCTION_0(v87);
  v85 = v22;
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_1();
  v27 = v26 - v25;
  v84 = sub_220DC04D0();
  v28 = OUTLINED_FUNCTION_0(v84);
  v80 = v29;
  v31 = *(v30 + 64);
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_1();
  v34 = v33 - v32;
  v35 = sub_220DBE6E0();
  v36 = OUTLINED_FUNCTION_0(v35);
  v38 = *(v37 + 64);
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_1();
  v41 = v40 - v39;
  sub_220DBE600();
  sub_220DC04C0();
  v83 = a2;
  sub_220DBF180();
  v82 = a3;
  sub_220DC04B0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF952F8, &unk_220DC5420);
  v42 = sub_220DBE6C0();
  OUTLINED_FUNCTION_0(v42);
  v44 = v43;
  v46 = *(v45 + 72);
  v47 = (*(v43 + 80) + 32) & ~*(v43 + 80);
  v48 = swift_allocObject();
  *(v48 + 16) = xmmword_220DC17A0;
  (*(v44 + 104))(v48 + v47, *MEMORY[0x277CC9980], v42);
  sub_220CE05C8(v48);
  v49 = v27;
  sub_220DC03B0();
  v50 = a1;
  sub_220DBE620();

  v51 = *(v81 + 8);
  v51(v13, v77);
  v52 = sub_220DBE160();
  LOBYTE(v42) = v53;
  (*(v76 + 8))(v20, v78);
  if (v42)
  {
    v52 = 0;
  }

  v88 = 0;
  v89 = 1;
  if (v52 <= 48)
  {
    v61 = sub_220DBE740();
    OUTLINED_FUNCTION_1_0(v61);
    (*(v62 + 8))(v82);
    v63 = sub_220DBF1D0();
    OUTLINED_FUNCTION_1_0(v63);
    (*(v64 + 8))(v83);
    v51(a1, v77);
    (*(v80 + 8))(v34, v84);
    v65 = OUTLINED_FUNCTION_14_19();
    v66(v65);
    v67 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF96530, &unk_220DC7A78) + 48);
    *a4 = v52;
    (*(v85 + 32))(a4 + v67, v49, v87);
    type metadata accessor for SunriseSunsetNextEventFutureDayCountdown();
  }

  else
  {
    v54 = v49;
    if (sub_220DA573C(&v88, v41, v50, v49) < 8)
    {
      v79 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF96530, &unk_220DC7A78) + 48);
      v68 = v88;
      v69 = sub_220DBE740();
      OUTLINED_FUNCTION_1_0(v69);
      (*(v70 + 8))(v82);
      v71 = sub_220DBF1D0();
      OUTLINED_FUNCTION_1_0(v71);
      (*(v72 + 8))(v83);
      v51(v50, v77);
      (*(v80 + 8))(v34, v84);
      v73 = OUTLINED_FUNCTION_14_19();
      v74(v73);
      *a4 = v68;
      (*(v85 + 32))(a4 + v79, v54, v87);
    }

    else
    {
      v55 = sub_220DBE740();
      OUTLINED_FUNCTION_1_0(v55);
      (*(v56 + 8))(v82);
      v57 = sub_220DBF1D0();
      OUTLINED_FUNCTION_1_0(v57);
      (*(v58 + 8))(v83);
      v51(v50, v77);
      (*(v80 + 8))(v34, v84);
      v59 = OUTLINED_FUNCTION_14_19();
      v60(v59);
      (*(v85 + 32))(a4, v49, v87);
    }

    type metadata accessor for SunriseSunsetNextEventFutureDayCountdown();
  }

  return swift_storeEnumTagMultiPayload();
}

char *SunriseSunsetNextEventFutureDayCountdown.description.getter()
{
  v1 = sub_220DBF410();
  v2 = OUTLINED_FUNCTION_0(v1);
  v150 = v3;
  v151 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_4();
  v148 = v6 - v7;
  OUTLINED_FUNCTION_23();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_25_0();
  v149 = v9;
  OUTLINED_FUNCTION_23();
  MEMORY[0x28223BE20](v10);
  v12 = &v146 - v11;
  v156 = sub_220DC03C0();
  v13 = OUTLINED_FUNCTION_0(v156);
  v15 = v14;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_4();
  v20 = v18 - v19;
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_25_0();
  v152 = v22;
  OUTLINED_FUNCTION_23();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_25_0();
  v154 = v24;
  OUTLINED_FUNCTION_23();
  v26 = MEMORY[0x28223BE20](v25);
  v28 = &v146 - v27;
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_25_0();
  v155 = v29;
  OUTLINED_FUNCTION_23();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_25_0();
  v153 = v31;
  OUTLINED_FUNCTION_23();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_25_0();
  v147 = v33;
  OUTLINED_FUNCTION_23();
  v35 = MEMORY[0x28223BE20](v34);
  v37 = &v146 - v36;
  v38 = MEMORY[0x28223BE20](v35);
  v40 = &v146 - v39;
  MEMORY[0x28223BE20](v38);
  v42 = &v146 - v41;
  EventFutureDayCountdown = type metadata accessor for SunriseSunsetNextEventFutureDayCountdown();
  v44 = *(*(EventFutureDayCountdown - 8) + 64);
  MEMORY[0x28223BE20](EventFutureDayCountdown);
  OUTLINED_FUNCTION_1();
  v47 = (v46 - v45);
  sub_220DA5CF8(v0, v46 - v45);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v63 = *v47;
    v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF96530, &unk_220DC7A78);
    OUTLINED_FUNCTION_23_13(v64);
    v65 = v156;
    v66(v42);
    v67 = v15[2];
    v67(v40, v42, v65);
    v68 = v15[11];
    v69 = OUTLINED_FUNCTION_9_24();
    v71 = v70(v69);
    if (v71 == *MEMORY[0x277D7B448])
    {
      OUTLINED_FUNCTION_11_20();
      v72 = OUTLINED_FUNCTION_9_24();
      v73(v72);
      v62 = "of hours until next sunset";
      if (qword_280FA6600 != -1)
      {
        OUTLINED_FUNCTION_10();
      }

      OUTLINED_FUNCTION_5_1();
      OUTLINED_FUNCTION_8_18();
    }

    else
    {
      if (v71 != *MEMORY[0x277D7B440])
      {
        v155 = v40;
        sub_220DBF3D0();
        v154 = v42;
        v67(v37, v42, v65);
        v123 = sub_220DBF3F0();
        v124 = sub_220DC0980();
        if (os_log_type_enabled(v123, v124))
        {
          v125 = swift_slowAlloc();
          v153 = swift_slowAlloc();
          v157 = v153;
          *v125 = 136446210;
          v67(v147, v37, v65);
          OUTLINED_FUNCTION_9_24();
          v126 = sub_220DC0630();
          v128 = v127;
          v129 = v15[1];
          v129(v37, v156);
          v130 = sub_220D3F210(v126, v128, &v157);
          v65 = v156;

          *(v125 + 4) = v130;
          _os_log_impl(&dword_220CD1000, v123, v124, "Unexpected sunEvent type: %{public}s", v125, 0xCu);
          OUTLINED_FUNCTION_16_20();
          MEMORY[0x223D98FB0](v125, -1, -1);
        }

        else
        {

          v129 = v15[1];
          v142 = OUTLINED_FUNCTION_17_13();
          (v129)(v142);
        }

        (*(v150 + 8))(v12, v151);
        v129(v154, v65);
        v129(v155, v65);
        return 0;
      }

      OUTLINED_FUNCTION_11_20();
      v96 = OUTLINED_FUNCTION_9_24();
      v97(v96);
      v62 = "of days until next sunrise";
      if (qword_280FA6600 != -1)
      {
        OUTLINED_FUNCTION_10();
      }

      OUTLINED_FUNCTION_5_31();
    }

    OUTLINED_FUNCTION_6_0();
    sub_220DBE240();
    OUTLINED_FUNCTION_13_4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94FB8, &unk_220DC1E30);
    v98 = OUTLINED_FUNCTION_24_3();
    v99 = MEMORY[0x277D83B88];
    *(v98 + 16) = xmmword_220DC17A0;
    OUTLINED_FUNCTION_7_24(v98, v99);
    OUTLINED_FUNCTION_17_0();

    v100 = v15[1];
    v101 = OUTLINED_FUNCTION_17_13();
    v102(v101);
    v103 = sub_220DBE560();
    OUTLINED_FUNCTION_1_0(v103);
    (*(v104 + 8))(v40);
    return v62;
  }

  if (EnumCaseMultiPayload != 1)
  {
    v74 = v15[4];
    v75 = v154;
    v76 = OUTLINED_FUNCTION_9_24();
    v77 = v156;
    v78(v76);
    v79 = v15[2];
    v80 = v152;
    OUTLINED_FUNCTION_22_12();
    v79();
    v81 = v15[11];
    v82 = OUTLINED_FUNCTION_24_8();
    v84 = v83(v82);
    if (v84 == *MEMORY[0x277D7B448])
    {
      OUTLINED_FUNCTION_11_20();
      v85 = OUTLINED_FUNCTION_24_8();
      v86(v85);
      v62 = "than 7 days in the future";
      if (qword_280FA6600 == -1)
      {
        goto LABEL_26;
      }
    }

    else
    {
      if (v84 != *MEMORY[0x277D7B440])
      {
        v131 = v148;
        sub_220DBF3D0();
        OUTLINED_FUNCTION_22_12();
        v79();
        v132 = sub_220DBF3F0();
        v133 = sub_220DC0980();
        if (os_log_type_enabled(v132, v133))
        {
          v134 = swift_slowAlloc();
          v153 = v134;
          v155 = swift_slowAlloc();
          v157 = v155;
          *v134 = 136446210;
          (v79)(v147, v20, v77);
          v135 = sub_220DC0630();
          v137 = v136;
          v138 = OUTLINED_FUNCTION_18_16();
          v75(v138);
          v139 = sub_220D3F210(v135, v137, &v157);

          v140 = v153;
          *(v153 + 4) = v139;
          _os_log_impl(&dword_220CD1000, v132, v133, "Unexpected sunEvent type: %{public}s", v140, 0xCu);
          OUTLINED_FUNCTION_16_20();
          MEMORY[0x223D98FB0](v140, -1, -1);

          (*(v150 + 8))(v148, v151);
        }

        else
        {

          v143 = OUTLINED_FUNCTION_18_16();
          v75(v143);
          (*(v150 + 8))(v131, v151);
        }

        (v75)(v154, v77);
        v144 = OUTLINED_FUNCTION_24_8();
        v75(v144);
        return 0;
      }

      OUTLINED_FUNCTION_11_20();
      v105 = OUTLINED_FUNCTION_24_8();
      v106(v105);
      v62 = "D750A44512BundleLookup";
      if (qword_280FA6600 == -1)
      {
LABEL_26:
        OUTLINED_FUNCTION_5_31();
        OUTLINED_FUNCTION_6_0();
        sub_220DBE240();
        OUTLINED_FUNCTION_13_4();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94FB8, &unk_220DC1E30);
        v107 = OUTLINED_FUNCTION_24_3();
        v108 = MEMORY[0x277D83B88];
        *(v107 + 16) = xmmword_220DC17A0;
        OUTLINED_FUNCTION_7_24(v107, v108);
        OUTLINED_FUNCTION_17_0();

        v109 = v15[1];
        v110 = OUTLINED_FUNCTION_9_24();
        v111(v110);
        v112 = sub_220DBE560();
        OUTLINED_FUNCTION_1_0(v112);
        (*(v113 + 8))(v80);
        return v62;
      }
    }

    OUTLINED_FUNCTION_10();
    goto LABEL_26;
  }

  v49 = *v47;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF96530, &unk_220DC7A78);
  OUTLINED_FUNCTION_23_13(v50);
  v51 = v153;
  v52 = v156;
  v53(v153);
  v54 = v15[2];
  v55 = v155;
  OUTLINED_FUNCTION_22_12();
  v54();
  v56 = v15[11];
  v57 = OUTLINED_FUNCTION_17_13();
  v59 = v58(v57);
  if (v59 != *MEMORY[0x277D7B448])
  {
    if (v59 == *MEMORY[0x277D7B440])
    {
      OUTLINED_FUNCTION_11_20();
      v87 = OUTLINED_FUNCTION_17_13();
      v88(v87);
      v62 = " than 7 days in the future";
      if (qword_280FA6600 != -1)
      {
        OUTLINED_FUNCTION_10();
      }

      OUTLINED_FUNCTION_5_1();
      OUTLINED_FUNCTION_8_18();
      goto LABEL_18;
    }

    v114 = v149;
    sub_220DBF3D0();
    OUTLINED_FUNCTION_22_12();
    v54();
    v115 = sub_220DBF3F0();
    v116 = sub_220DC0980();
    if (os_log_type_enabled(v115, v116))
    {
      v117 = swift_slowAlloc();
      v154 = swift_slowAlloc();
      v157 = v154;
      *v117 = 136446210;
      (v54)(v147, v28, v52);
      sub_220DC0630();
      v118 = OUTLINED_FUNCTION_21_13();
      v51(v118, v156);
      v119 = OUTLINED_FUNCTION_24_8();
      v122 = sub_220D3F210(v119, v120, v121);
      v52 = v156;

      *(v117 + 4) = v122;
      _os_log_impl(&dword_220CD1000, v115, v116, "Unexpected sunEvent type: %{public}s", v117, 0xCu);
      OUTLINED_FUNCTION_16_20();
      MEMORY[0x223D98FB0](v117, -1, -1);

      (*(v150 + 8))(v149, v151);
    }

    else
    {

      v141 = OUTLINED_FUNCTION_21_13();
      v51(v141, v52);
      (*(v150 + 8))(v114, v151);
    }

    v51(v153, v52);
    v51(v155, v52);
    return 0;
  }

  OUTLINED_FUNCTION_11_20();
  v60 = OUTLINED_FUNCTION_17_13();
  v61(v60);
  v62 = "of days until next sunset";
  if (qword_280FA6600 != -1)
  {
    OUTLINED_FUNCTION_10();
  }

  OUTLINED_FUNCTION_5_31();
LABEL_18:
  OUTLINED_FUNCTION_6_0();
  sub_220DBE240();
  OUTLINED_FUNCTION_13_4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94FB8, &unk_220DC1E30);
  v89 = OUTLINED_FUNCTION_24_3();
  v90 = MEMORY[0x277D83B88];
  *(v89 + 16) = xmmword_220DC17A0;
  OUTLINED_FUNCTION_7_24(v89, v90);
  OUTLINED_FUNCTION_17_0();

  v91 = v15[1];
  v92 = OUTLINED_FUNCTION_9_24();
  v93(v92);
  v94 = sub_220DBE560();
  OUTLINED_FUNCTION_1_0(v94);
  (*(v95 + 8))(v55);
  return v62;
}