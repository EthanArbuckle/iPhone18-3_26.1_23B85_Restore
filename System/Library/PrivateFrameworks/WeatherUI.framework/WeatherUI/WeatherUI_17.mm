Swift::Int sub_1BCAB0898()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07CA8);
  OUTLINED_FUNCTION_2();
  v2 = v1;
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v3);
  v5 = v12 - v4;
  if (qword_1EDA18520 != -1)
  {
    OUTLINED_FUNCTION_4_20();
  }

  v6 = off_1EDA18528[0];
  v7 = [objc_opt_self() celsius];
  sub_1BCE18680();

  sub_1BCE185E0();
  v9 = v8;
  (*(v2 + 8))(v5, v0);
  v12[1] = v6;
  v10._rawValue = v6;
  return ColorSpectrum.color(for:in:)(v10, v9);
}

void sub_1BCAB09E0(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v48 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07CA8);
  OUTLINED_FUNCTION_2();
  v8 = v7;
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v47 - v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08890);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1BCE3E050;
  v13 = objc_opt_self();
  v14 = [v13 celsius];
  OUTLINED_FUNCTION_7_23();
  sub_1BCE18680();

  OUTLINED_FUNCTION_12_15();
  v16 = v15;
  v17 = (v8 + 8);
  v53 = *(v8 + 8);
  v53(v11, v6);
  v18 = sub_1BCAB0898();
  *(v12 + 32) = v16;
  *(v12 + 40) = v18;
  v19 = sub_1BCAB2B24();

  v47 = v19;
  v20 = sub_1BCE1DAB0();
  v50 = v12;
  *(v12 + 48) = v20;
  sub_1BC957184(&qword_1EDA1BF98, &qword_1EBD07CA8);
  v51 = a2;
  v52 = a1;
  if (sub_1BCE1D210())
  {
    v21 = &unk_1E7FF9000;
  }

  else
  {
    if (qword_1EDA18520 != -1)
    {
      OUTLINED_FUNCTION_4_20();
    }

    v22 = *(off_1EDA18528[0] + 16);
    v21 = &unk_1E7FF9000;
    if (v22)
    {
      v23 = (off_1EDA18528[0] + 48);
      v49 = v13;
      v54 = v17;
      do
      {
        v24 = *(v23 - 2);
        v26 = *(v23 - 1);
        v25 = *v23;

        v27 = v25;
        v28 = [v13 v21[426]];
        OUTLINED_FUNCTION_7_23();
        v29 = v21;
        sub_1BCE18680();

        v17 = v54;
        OUTLINED_FUNCTION_12_15();
        v30 = OUTLINED_FUNCTION_8_17();
        v31 = v13;
        v32 = v53;
        (v53)(v30);
        if (v16 >= v24)
        {

          v13 = v31;
        }

        else
        {
          v33 = [v31 v29[426]];
          OUTLINED_FUNCTION_7_23();
          sub_1BCE18680();

          v17 = v54;
          OUTLINED_FUNCTION_12_15();
          v34 = OUTLINED_FUNCTION_8_17();
          v32(v34);
          if (v24 >= v16)
          {

            v13 = v49;
          }

          else
          {
            v35 = v50;
            v36 = *(v50 + 16);
            if (v36 >= *(v50 + 24) >> 1)
            {
              sub_1BCB653E4();
              v35 = v38;
            }

            v13 = v49;
            *(v35 + 16) = v36 + 1;
            v50 = v35;
            v37 = v35 + 24 * v36;
            *(v37 + 32) = v24;
            *(v37 + 40) = v26;
            *(v37 + 48) = v27;
            v17 = v54;
          }
        }

        v23 += 3;
        --v22;
        v21 = &unk_1E7FF9000;
      }

      while (v22);
    }
  }

  v39 = [v13 v21[426]];
  sub_1BCE18680();

  OUTLINED_FUNCTION_12_15();
  v40 = OUTLINED_FUNCTION_8_17();
  (v53)(v40);
  v41 = sub_1BCAB0898();

  v42 = sub_1BCE1DAB0();
  v43 = v50;
  v44 = *(v50 + 16);
  if (v44 >= *(v50 + 24) >> 1)
  {
    sub_1BCB653E4();
    v43 = v46;
  }

  *(v43 + 16) = v44 + 1;
  v45 = v43 + 24 * v44;
  *(v45 + 32) = v16;
  *(v45 + 40) = v41;
  *(v45 + 48) = v42;
  *v48 = v43;
}

uint64_t TemperatureCircularContentView.status.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for TemperatureCircularContentView(0);
  v3 = OUTLINED_FUNCTION_1_18(v2);
  return sub_1BCAB2438(v3, a1);
}

uint64_t TemperatureCircularContentView.init(status:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  *a2 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD079D0);
  swift_storeEnumTagMultiPayload();
  v4 = type metadata accessor for TemperatureCircularContentView(0);
  return sub_1BCAB23DC(a1, a2 + *(v4 + 20));
}

uint64_t TemperatureCircularContentView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v32[1] = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08830);
  OUTLINED_FUNCTION_2();
  v3 = v2;
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v4);
  v6 = v32 - v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08838);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v7);
  v9 = v32 - v8;
  v32[0] = type metadata accessor for TemperatureCircularContentView.Content(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_2_0();
  v13 = v12 - v11;
  v14 = type metadata accessor for TemperatureComplicationDataStatus();
  MEMORY[0x1EEE9AC00](v14 - 8);
  OUTLINED_FUNCTION_2_0();
  v17 = v16 - v15;
  v18 = type metadata accessor for TemperatureComplicationViewModel();
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_2_0();
  v22 = v21 - v20;
  v23 = type metadata accessor for TemperatureCircularContentView(0);
  v24 = OUTLINED_FUNCTION_1_18(v23);
  sub_1BCAB2438(v24, v17);
  if (__swift_getEnumTagSinglePayload(v17, 2, v18))
  {
    sub_1BCAB2494(v17, type metadata accessor for TemperatureComplicationDataStatus);
    v25 = sub_1BCAB2388();
    sub_1BCE1C7E0();
    (*(v3 + 16))(v9, v6, v1);
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_2_16();
    sub_1BCAB277C(v26, v27);
    v33 = &type metadata for TemperatureCircularContentView.Placeholder;
    v34 = v25;
    OUTLINED_FUNCTION_3_3();
    OUTLINED_FUNCTION_10();
    sub_1BCE1BF60();
    return (*(v3 + 8))(v6, v1);
  }

  else
  {
    sub_1BCAB23DC(v17, v22);
    sub_1BCAB2438(v22, v13);
    sub_1BCAB2438(v13, v9);
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_2_16();
    sub_1BCAB277C(v29, v30);
    v31 = sub_1BCAB2388();
    v33 = &type metadata for TemperatureCircularContentView.Placeholder;
    v34 = v31;
    OUTLINED_FUNCTION_3_3();
    OUTLINED_FUNCTION_10();
    sub_1BCE1BF60();
    sub_1BCAB2494(v13, type metadata accessor for TemperatureCircularContentView.Content);
    return sub_1BCAB2494(v22, type metadata accessor for TemperatureComplicationViewModel);
  }
}

uint64_t sub_1BCAB125C@<X0>(uint64_t a1@<X8>)
{
  v54 = a1;
  v52 = sub_1BCE1C100();
  v51 = *(v52 - 8);
  MEMORY[0x1EEE9AC00](v52);
  v48 = &v46 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1BCE1C140();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08870);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v46 - v9;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08878);
  MEMORY[0x1EEE9AC00](v47);
  v12 = &v46 - v11;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08880);
  v49 = *(v50 - 8);
  MEMORY[0x1EEE9AC00](v50);
  v14 = &v46 - v13;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08888);
  MEMORY[0x1EEE9AC00](v53);
  v55 = &v46 - v15;
  sub_1BCA2A7D4();
  v60 = v16;
  v58 = v1;
  v57 = v1;
  v56 = v1;
  v59 = xmmword_1BCE3A870;
  sub_1BC96ABEC();
  sub_1BCE1CB70();
  sub_1BCE1C130();
  sub_1BC957184(&qword_1EDA1B628, &qword_1EBD08870);
  sub_1BCAB277C(&qword_1EDA1B6F0, MEMORY[0x1E697CA68]);
  sub_1BCE1C7C0();
  v17 = v6;
  v18 = v47;
  (*(v4 + 8))(v17, v3);
  (*(v8 + 8))(v10, v7);
  v19 = type metadata accessor for TemperatureComplicationViewModel();
  sub_1BCAB09E0(v1 + *(v19 + 28), v1 + *(v19 + 24), &v59);
  v60 = v59;
  ColorSpectrum.gradientStops.getter();

  v20 = sub_1BCE1CE60();
  KeyPath = swift_getKeyPath();
  *&v59 = v20;
  v22 = sub_1BCE1B620();
  v23 = &v12[*(v18 + 36)];
  *v23 = KeyPath;
  v23[1] = v22;
  v24 = v48;
  sub_1BCE1C0D0();
  v25 = sub_1BCAB29AC();
  sub_1BCE1C930();
  (*(v51 + 8))(v24, v52);
  sub_1BC94C05C(v12, &qword_1EBD08878);
  if (qword_1EDA179E8 != -1)
  {
    swift_once();
  }

  v59 = xmmword_1EDA2EEC8;
  v60 = v18;
  v61 = v25;
  swift_getOpaqueTypeConformance2();
  v26 = sub_1BC970820();
  v27 = MEMORY[0x1E69E6158];
  v28 = v50;
  v52 = v26;
  sub_1BCE1C8E0();
  (*(v49 + 8))(v14, v28);
  if (qword_1EDA1EFB0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v29 = qword_1EDA1EFB8;
  sub_1BCE18B60();

  v30 = sub_1BCA2A2E4();
  v32 = v31;
  v33 = sub_1BCA2A43C();
  v35 = v34;
  v36 = sub_1BCA2A594();
  v38 = v37;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07880);
  v39 = swift_allocObject();
  *(v39 + 16) = xmmword_1BCE43610;
  *(v39 + 56) = v27;
  v40 = sub_1BC9804E0();
  *(v39 + 32) = v30;
  *(v39 + 40) = v32;
  *(v39 + 96) = v27;
  *(v39 + 104) = v40;
  *(v39 + 64) = v40;
  *(v39 + 72) = v33;
  *(v39 + 80) = v35;
  *(v39 + 136) = v27;
  *(v39 + 144) = v40;
  *(v39 + 112) = v36;
  *(v39 + 120) = v38;
  v41 = sub_1BCE1D2B0();
  v43 = v42;

  v60 = v41;
  v61 = v43;
  v44 = v55;
  sub_1BCE1B880();

  return sub_1BC94C05C(v44, &qword_1EBD08888);
}

uint64_t sub_1BCAB1A2C@<X0>(uint64_t a1@<X8>)
{
  sub_1BCA2A2E4();
  sub_1BC970820();
  result = sub_1BCE1C6A0();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_1BCAB1A88@<X0>(uint64_t a1@<X8>)
{
  sub_1BCA2A594();
  sub_1BC970820();
  v2 = sub_1BCE1C6A0();
  v4 = v3;
  v6 = v5;
  type metadata accessor for TemperatureComplicationViewModel();
  sub_1BCAB0898();
  v7 = sub_1BCE1C5D0();
  v9 = v8;
  v11 = v10;
  v13 = v12;
  sub_1BC998CF4(v2, v4, v6 & 1);

  *a1 = v7;
  *(a1 + 8) = v9;
  *(a1 + 16) = v11 & 1;
  *(a1 + 24) = v13;
  return result;
}

uint64_t sub_1BCAB1B88@<X0>(uint64_t a1@<X8>)
{
  sub_1BCA2A43C();
  sub_1BC970820();
  v2 = sub_1BCE1C6A0();
  v4 = v3;
  v6 = v5;
  type metadata accessor for TemperatureComplicationViewModel();
  sub_1BCAB0898();
  v7 = sub_1BCE1C5D0();
  v9 = v8;
  v11 = v10;
  v13 = v12;
  sub_1BC998CF4(v2, v4, v6 & 1);

  *a1 = v7;
  *(a1 + 8) = v9;
  *(a1 + 16) = v11 & 1;
  *(a1 + 24) = v13;
  return result;
}

uint64_t sub_1BCAB1C8C@<X0>(uint64_t a1@<X8>)
{
  v34 = a1;
  v1 = sub_1BCE1C100();
  v32 = *(v1 - 8);
  v33 = v1;
  MEMORY[0x1EEE9AC00](v1);
  v31 = &v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1BCE1C140();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08848);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v27 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08850);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v27 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08858);
  v27 = *(v14 - 8);
  v28 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v27 - v15;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08860);
  MEMORY[0x1EEE9AC00](v30);
  v29 = &v27 - v17;
  v35 = 0;
  v37 = xmmword_1BCE3A870;
  sub_1BC96ABEC();
  sub_1BCE1CB80();
  sub_1BCE1C130();
  sub_1BC957184(&qword_1EDA1B630, &qword_1EBD08848);
  sub_1BCAB277C(&qword_1EDA1B6F0, MEMORY[0x1E697CA68]);
  sub_1BCE1C7C0();
  (*(v4 + 8))(v6, v3);
  (*(v8 + 8))(v10, v7);
  if (qword_1EDA18520 != -1)
  {
    swift_once();
  }

  *&v37 = off_1EDA18528[0];
  ColorSpectrum.gradientStops.getter();
  v18 = sub_1BCE1CE60();
  KeyPath = swift_getKeyPath();
  *&v37 = v18;
  v20 = sub_1BCE1B620();
  v21 = &v13[*(v11 + 36)];
  *v21 = KeyPath;
  v21[1] = v20;
  v22 = v31;
  sub_1BCE1C0D0();
  v23 = sub_1BCAB281C();
  sub_1BCE1C930();
  (*(v32 + 8))(v22, v33);
  sub_1BC94C05C(v13, &qword_1EBD08850);
  if (qword_1EDA179E8 != -1)
  {
    swift_once();
  }

  v37 = xmmword_1EDA2EEC8;
  v35 = v11;
  v36 = v23;
  swift_getOpaqueTypeConformance2();
  sub_1BC970820();
  v25 = v28;
  v24 = v29;
  sub_1BCE1C8E0();
  (*(v27 + 8))(v16, v25);
  if (qword_1EDA179E0 != -1)
  {
    swift_once();
  }

  v37 = xmmword_1EDA2EEB8;
  sub_1BCE1B880();
  return sub_1BC94C05C(v24, &qword_1EBD08860);
}

uint64_t sub_1BCAB22C0@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EDA179F8 != -1)
  {
    swift_once();
  }

  sub_1BC970820();

  result = sub_1BCE1C6A0();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

unint64_t sub_1BCAB2388()
{
  result = qword_1EDA18010[0];
  if (!qword_1EDA18010[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDA18010);
  }

  return result;
}

uint64_t sub_1BCAB23DC(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_11();
  v5(v4);
  OUTLINED_FUNCTION_4();
  (*(v6 + 32))(a2, v2);
  return a2;
}

uint64_t sub_1BCAB2438(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_11();
  v5(v4);
  OUTLINED_FUNCTION_4();
  (*(v6 + 16))(a2, v2);
  return a2;
}

uint64_t sub_1BCAB2494(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_4();
  (*(v3 + 8))(a1);
  return a1;
}

void sub_1BCAB2530()
{
  sub_1BCA21B40();
  if (v0 <= 0x3F)
  {
    type metadata accessor for TemperatureComplicationDataStatus();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_1BCAB25B4()
{
  result = qword_1EDA1B868;
  if (!qword_1EDA1B868)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD08840);
    sub_1BCAB277C(qword_1EDA180A8, type metadata accessor for TemperatureCircularContentView.Content);
    sub_1BCAB2388();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA1B868);
  }

  return result;
}

uint64_t sub_1BCAB26C4()
{
  result = type metadata accessor for TemperatureComplicationViewModel();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1BCAB277C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1BCAB27C4@<X0>(uint64_t *a1@<X8>)
{
  result = MEMORY[0x1BFB2E290]();
  *a1 = result;
  return result;
}

unint64_t sub_1BCAB281C()
{
  result = qword_1EDA1BAC8;
  if (!qword_1EDA1BAC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD08850);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD08848);
    sub_1BCE1C140();
    sub_1BC957184(&qword_1EDA1B630, &qword_1EBD08848);
    sub_1BCAB277C(&qword_1EDA1B6F0, MEMORY[0x1E697CA68]);
    swift_getOpaqueTypeConformance2();
    sub_1BC957184(&qword_1EDA1B6D0, &qword_1EBD08868);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA1BAC8);
  }

  return result;
}

unint64_t sub_1BCAB29AC()
{
  result = qword_1EDA1BAC0;
  if (!qword_1EDA1BAC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD08878);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD08870);
    sub_1BCE1C140();
    sub_1BC957184(&qword_1EDA1B628, &qword_1EBD08870);
    sub_1BCAB277C(&qword_1EDA1B6F0, MEMORY[0x1E697CA68]);
    swift_getOpaqueTypeConformance2();
    sub_1BC957184(&qword_1EDA1B6D0, &qword_1EBD08868);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA1BAC0);
  }

  return result;
}

unint64_t sub_1BCAB2B24()
{
  result = qword_1EDA1F698;
  if (!qword_1EDA1F698)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDA1F698);
  }

  return result;
}

unint64_t sub_1BCAB2B68()
{
  result = qword_1EDA1BA20;
  if (!qword_1EDA1BA20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD08860);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD08850);
    sub_1BCAB281C();
    swift_getOpaqueTypeConformance2();
    sub_1BCAB277C(&qword_1EDA1EE68, MEMORY[0x1E697CBE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA1BA20);
  }

  return result;
}

unint64_t sub_1BCAB2C60()
{
  result = qword_1EDA1BA18;
  if (!qword_1EDA1BA18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD08888);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD08878);
    sub_1BCAB29AC();
    swift_getOpaqueTypeConformance2();
    sub_1BCAB277C(&qword_1EDA1EE68, MEMORY[0x1E697CBE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA1BA18);
  }

  return result;
}

void sub_1BCAB2D58(uint64_t a1@<X8>)
{
  v2 = a1 + 1436;
  sub_1BCAB3530();
  v4 = v3;
  sub_1BCAB3530();
  *a1 = 0x4006666666666666;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0x3FF0000000000000;
  *(a1 + 24) = 48;
  *(a1 + 32) = xmmword_1BCE3BED0;
  *(a1 + 48) = xmmword_1BCE3BED0;
  *(a1 + 64) = 0x42C8000042480000;
  *(a1 + 72) = 0xC409800000000000;
  *(a1 + 80) = xmmword_1BCE3E630;
  *(a1 + 96) = xmmword_1BCE3E640;
  *(a1 + 112) = 0x3E8A3D713E800000;
  *(a1 + 128) = xmmword_1BCE3E650;
  *(a1 + 144) = xmmword_1BCE3E660;
  *(a1 + 160) = xmmword_1BCE3E670;
  *(a1 + 176) = 1168891904;
  *(a1 + 184) = 0x3E75C28F3DF5C28FLL;
  *(a1 + 192) = xmmword_1BCE3E680;
  *(a1 + 208) = xmmword_1BCE3E690;
  *(a1 + 224) = xmmword_1BCE3E6A0;
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
  *(a1 + 712) = 0x402CCCCC40066666;
  *(a1 + 720) = vdup_n_s32(0x41827AE1u);
  *(a1 + 728) = 1090519040;
  *(a1 + 736) = 1;
  *(a1 + 744) = 5;
  *(a1 + 752) = xmmword_1BCE3E6B0;
  *(a1 + 768) = 0xD000000000000010;
  *(a1 + 776) = 0x80000001BCE79860;
  *(a1 + 784) = 0xD000000000000014;
  *(a1 + 792) = 0x80000001BCE79880;
  *(a1 + 800) = 10;
  *(a1 + 816) = _Q0;
  *(a1 + 832) = 1065353216;
  *(a1 + 840) = 0x40400000402CCCCCLL;
  *(a1 + 848) = vdup_n_s32(0x40FA3D70u);
  *(a1 + 856) = 1085333800;
  *(a1 + 864) = 1;
  *(a1 + 872) = 4;
  *(a1 + 880) = xmmword_1BCE3E6C0;
  *(a1 + 896) = 0x2073757461727453;
  *(a1 + 904) = 0xEB000000004C202DLL;
  *(a1 + 912) = 0x5F73757461727453;
  *(a1 + 920) = 0xEF4C656C676E6953;
  *(a1 + 928) = 9;
  *(a1 + 944) = _Q0;
  *(a1 + 960) = 1065353216;
  *(a1 + 968) = 0x404000004019999ALL;
  *(a1 + 976) = 0x4100000040E00000;
  *(a1 + 984) = 3221225472;
  *(a1 + 992) = 1;
  *(a1 + 1000) = 4;
  *(a1 + 1008) = xmmword_1BCE3C6F0;
  *(a1 + 1024) = 0x2073756C756D7543;
  *(a1 + 1032) = 0xEB000000004D202DLL;
  *(a1 + 1040) = 0x5F73756C756D7543;
  *(a1 + 1048) = 0xEF4D656C676E6953;
  *(a1 + 1056) = 10;
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
  *(a1 + 1216) = xmmword_1BCE45E80;
  *(a1 + 1232) = 0;
  *(a1 + 1236) = 1;
  *(a1 + 1240) = 0xD000000000000010;
  *(a1 + 1248) = 0x80000001BCE798A0;
  *(a1 + 1256) = 0xD000000000000015;
  *(a1 + 1264) = 0x80000001BCE798C0;
  *(a1 + 1272) = 6;
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
  *(a1 + 1552) = xmmword_1BCE3E6E0;
  *(a1 + 1568) = 0x42CFE66642A8E147;
  *(a1 + 1584) = 0u;
  *(a1 + 1600) = xmmword_1BCE3E6F0;
  __asm { FMOV            V2.2S, #-30.0 }

  *(a1 + 1616) = -_D2;
  *(a1 + 1624) = 0x40000000;
  *(a1 + 1628) = 16777472;
  *(a1 + 1638) = 0;
  *(a1 + 1632) = 0;
  *(v2 + 210) = 16843009;
  *(a1 + 1650) = 256;
  *(a1 + 1652) = 1;
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
  *(a1 + 1872) = 0x40C4CCCD40000000;
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
  *(a1 + 2120) = 0x3E28F5C33D4CCCCDLL;
  *(a1 + 2128) = 0x400000003F800000;
  *(a1 + 2136) = 0x4090000040800000;
  *(a1 + 2144) = -1046478848;
  *(a1 + 2160) = _Q0;
  *(a1 + 2176) = _Q0;
  *(a1 + 2192) = 1051169383;
  *(a1 + 2200) = 10;
  *(a1 + 2208) = 0x40A000003FC00000;
  *(a1 + 2224) = xmmword_1BCE3C090;
  *(a1 + 2240) = xmmword_1BCE3C0A0;
  *(a1 + 2256) = _Q0;
  *(a1 + 2288) = 0u;
  *(a1 + 2272) = 0u;
  *(a1 + 2304) = 3;
  *(a1 + 2312) = v4;
  *(a1 + 2320) = v12;
}

__n128 sub_1BCAB3530()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07858);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1BCE3E120;
  *(v0 + 48) = xmmword_1BCE3E710;
  *(v0 + 528) = xmmword_1BCE3E850;
  *(v0 + 1808) = xmmword_1BCE3E910;
  *(v0 + 1824) = xmmword_1BCE3E920;
  *(v0 + 2960) = xmmword_1BCE3EA40;
  *(v0 + 2480) = xmmword_1BCE3CE40;
  *(v0 + 3696) = xmmword_1BCE3CE40;
  *(v0 + 2496) = 0x437A000044BB8000;
  *(v0 + 3712) = 0x437A000044BB8000;
  *(v0 + 2512) = xmmword_1BCE3E930;
  *(v0 + 3728) = xmmword_1BCE3E930;
  *(v0 + 2544) = xmmword_1BCE3E940;
  *(v0 + 3760) = xmmword_1BCE3E940;
  *(v0 + 2560) = xmmword_1BCE3E950;
  *(v0 + 3776) = xmmword_1BCE3E950;
  *(v0 + 2576) = xmmword_1BCE3E960;
  *(v0 + 3792) = xmmword_1BCE3E960;
  *(v0 + 2704) = xmmword_1BCE3E970;
  *(v0 + 3920) = xmmword_1BCE3E970;
  *(v0 + 2720) = xmmword_1BCE3E980;
  *(v0 + 3936) = xmmword_1BCE3E980;
  *(v0 + 2736) = xmmword_1BCE3E990;
  *(v0 + 3952) = xmmword_1BCE3E990;
  *(v0 + 2752) = xmmword_1BCE3E9A0;
  *(v0 + 3968) = xmmword_1BCE3E9A0;
  *(v0 + 2768) = xmmword_1BCE3E9B0;
  *(v0 + 3984) = xmmword_1BCE3E9B0;
  *(v0 + 2784) = xmmword_1BCE3E9C0;
  *(v0 + 4000) = xmmword_1BCE3E9C0;
  *(v0 + 2800) = xmmword_1BCE3FD30;
  *(v0 + 4016) = xmmword_1BCE3FD30;
  *(v0 + 2816) = 1063675494;
  *(v0 + 4032) = 1063675494;
  *(v0 + 2832) = xmmword_1BCE3E9D0;
  *(v0 + 4048) = xmmword_1BCE3E9D0;
  *(v0 + 2864) = xmmword_1BCE3E9E0;
  *(v0 + 4080) = xmmword_1BCE3E9E0;
  *(v0 + 2880) = xmmword_1BCE3E9F0;
  *(v0 + 4096) = xmmword_1BCE3E9F0;
  *(v0 + 2896) = xmmword_1BCE3EA00;
  *(v0 + 4112) = xmmword_1BCE3EA00;
  *(v0 + 2912) = xmmword_1BCE3EA10;
  *(v0 + 4128) = xmmword_1BCE3EA10;
  *(v0 + 2928) = xmmword_1BCE3EA20;
  *(v0 + 4144) = xmmword_1BCE3EA20;
  *(v0 + 2944) = xmmword_1BCE3EA30;
  *(v0 + 4160) = xmmword_1BCE3EA30;
  *(v0 + 4176) = xmmword_1BCE3EAD0;
  *(v0 + 2976) = xmmword_1BCE3EA50;
  *(v0 + 4192) = xmmword_1BCE3EA50;
  *(v0 + 2992) = xmmword_1BCE3EA60;
  *(v0 + 4208) = xmmword_1BCE3EA60;
  *(v0 + 3008) = xmmword_1BCE3EA70;
  *(v0 + 4224) = xmmword_1BCE3EA70;
  v1 = vdupq_n_s64(0x3FE7F7F800000000uLL);
  *(v0 + 3024) = v1;
  *(v0 + 4240) = v1;
  *(v0 + 3040) = xmmword_1BCE3EA80;
  *(v0 + 4256) = xmmword_1BCE3EA80;
  *(v0 + 3440) = xmmword_1BCE3EA90;
  *(v0 + 4656) = xmmword_1BCE3EA90;
  *(v0 + 3456) = xmmword_1BCE3EAA0;
  *(v0 + 4672) = xmmword_1BCE3EAA0;
  *(v0 + 3472) = xmmword_1BCE3EAB0;
  *(v0 + 4688) = xmmword_1BCE3EAB0;
  *(v0 + 3488) = xmmword_1BCE3EAC0;
  *(v0 + 4704) = xmmword_1BCE3EAC0;
  *(v0 + 1264) = xmmword_1BCE3E8F0;
  *(v0 + 4912) = xmmword_1BCE3E8F0;
  *(v0 + 64) = 0x4296000043FA0000;
  *(v0 + 6128) = xmmword_1BCE3E710;
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
  *(v0 + 240) = xmmword_1BCE3E780;
  *(v0 + 256) = xmmword_1BCE3E790;
  *(v0 + 1456) = xmmword_1BCE3E780;
  *(v0 + 2672) = xmmword_1BCE3E780;
  *(v0 + 3888) = xmmword_1BCE3E780;
  *(v0 + 5104) = xmmword_1BCE3E780;
  *(v0 + 6320) = xmmword_1BCE3E780;
  *(v0 + 1472) = xmmword_1BCE3E790;
  *(v0 + 2688) = xmmword_1BCE3E790;
  *(v0 + 3904) = xmmword_1BCE3E790;
  *(v0 + 5120) = xmmword_1BCE3E790;
  *(v0 + 6336) = xmmword_1BCE3E790;
  *(v0 + 272) = xmmword_1BCE3E7A0;
  *(v0 + 288) = xmmword_1BCE3E7B0;
  *(v0 + 1488) = xmmword_1BCE3E7A0;
  *(v0 + 5136) = xmmword_1BCE3E7A0;
  *(v0 + 6352) = xmmword_1BCE3E7A0;
  *(v0 + 1504) = xmmword_1BCE3E7B0;
  *(v0 + 5152) = xmmword_1BCE3E7B0;
  *(v0 + 6368) = xmmword_1BCE3E7B0;
  *(v0 + 304) = xmmword_1BCE3E7C0;
  *(v0 + 320) = xmmword_1BCE3E1D0;
  *(v0 + 1520) = xmmword_1BCE3E7C0;
  *(v0 + 5168) = xmmword_1BCE3E7C0;
  *(v0 + 6384) = xmmword_1BCE3E7C0;
  *(v0 + 1536) = xmmword_1BCE3E1D0;
  *(v0 + 5184) = xmmword_1BCE3E1D0;
  *(v0 + 6400) = xmmword_1BCE3E1D0;
  *(v0 + 336) = xmmword_1BCE3E7D0;
  *(v0 + 352) = xmmword_1BCE3E7E0;
  *(v0 + 1552) = xmmword_1BCE3E7D0;
  *(v0 + 5200) = xmmword_1BCE3E7D0;
  *(v0 + 6416) = xmmword_1BCE3E7D0;
  *(v0 + 368) = xmmword_1BCE3FC10;
  *(v0 + 1568) = xmmword_1BCE3E7E0;
  *(v0 + 5216) = xmmword_1BCE3E7E0;
  *(v0 + 6432) = xmmword_1BCE3E7E0;
  *(v0 + 384) = 0x3F8000003F666666;
  *(v0 + 1584) = xmmword_1BCE3FC10;
  *(v0 + 5232) = xmmword_1BCE3FC10;
  *(v0 + 6448) = xmmword_1BCE3FC10;
  *(v0 + 1600) = 0x3F8000003F666666;
  *(v0 + 5248) = 0x3F8000003F666666;
  *(v0 + 6464) = 0x3F8000003F666666;
  *(v0 + 432) = xmmword_1BCE3E7F0;
  *(v0 + 448) = xmmword_1BCE3E800;
  *(v0 + 1648) = xmmword_1BCE3E7F0;
  *(v0 + 5296) = xmmword_1BCE3E7F0;
  *(v0 + 6512) = xmmword_1BCE3E7F0;
  *(v0 + 1664) = xmmword_1BCE3E800;
  *(v0 + 5312) = xmmword_1BCE3E800;
  *(v0 + 6528) = xmmword_1BCE3E800;
  *(v0 + 464) = xmmword_1BCE3E810;
  *(v0 + 480) = xmmword_1BCE3E820;
  *(v0 + 1680) = xmmword_1BCE3E810;
  *(v0 + 5328) = xmmword_1BCE3E810;
  *(v0 + 6544) = xmmword_1BCE3E810;
  *(v0 + 1696) = xmmword_1BCE3E820;
  *(v0 + 5344) = xmmword_1BCE3E820;
  *(v0 + 6560) = xmmword_1BCE3E820;
  *(v0 + 1712) = xmmword_1BCE3E830;
  *(v0 + 5360) = xmmword_1BCE3E830;
  *(v0 + 6576) = xmmword_1BCE3E830;
  *(v0 + 496) = xmmword_1BCE3E830;
  *(v0 + 512) = xmmword_1BCE3E840;
  *(v0 + 544) = xmmword_1BCE3E860;
  *(v0 + 1728) = xmmword_1BCE3E840;
  *(v0 + 5376) = xmmword_1BCE3E840;
  *(v0 + 6592) = xmmword_1BCE3E840;
  *(v0 + 1744) = xmmword_1BCE3E900;
  *(v0 + 5392) = xmmword_1BCE3E900;
  *(v0 + 6608) = xmmword_1BCE3E900;
  *(v0 + 1760) = xmmword_1BCE3E860;
  *(v0 + 5408) = xmmword_1BCE3E860;
  *(v0 + 6624) = xmmword_1BCE3E860;
  *(v0 + 560) = xmmword_1BCE3E870;
  *(v0 + 576) = xmmword_1BCE3E880;
  *(v0 + 1776) = xmmword_1BCE3E870;
  *(v0 + 5424) = xmmword_1BCE3E870;
  *(v0 + 6640) = xmmword_1BCE3E870;
  *(v0 + 1792) = xmmword_1BCE3E880;
  *(v0 + 5440) = xmmword_1BCE3E880;
  *(v0 + 6656) = xmmword_1BCE3E880;
  *(v0 + 592) = xmmword_1BCE3E890;
  *(v0 + 608) = xmmword_1BCE3E8A0;
  *(v0 + 5456) = xmmword_1BCE3E890;
  *(v0 + 6672) = xmmword_1BCE3E890;
  *(v0 + 640) = xmmword_1BCE3A880;
  *(v0 + 704) = xmmword_1BCE3A880;
  *(v0 + 5472) = xmmword_1BCE3E8A0;
  *(v0 + 6688) = xmmword_1BCE3E8A0;
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
  *(v0 + 2224) = xmmword_1BCE3E8B0;
  *(v0 + 5872) = xmmword_1BCE3E8B0;
  *(v0 + 7088) = xmmword_1BCE3E8B0;
  *(v0 + 1008) = xmmword_1BCE3E8B0;
  *(v0 + 1024) = xmmword_1BCE3E8C0;
  __asm { FMOV            V0.2D, #1.0 }

  *(v0 + 2240) = xmmword_1BCE3E8C0;
  *(v0 + 5888) = xmmword_1BCE3E8C0;
  *(v0 + 7104) = xmmword_1BCE3E8C0;
  *(v0 + 1040) = xmmword_1BCE3E8D0;
  *(v0 + 2256) = xmmword_1BCE3E8D0;
  *(v0 + 5904) = xmmword_1BCE3E8D0;
  *(v0 + 7120) = xmmword_1BCE3E8D0;
  *(v0 + 1056) = xmmword_1BCE3E8E0;
  *(v0 + 2272) = xmmword_1BCE3E8E0;
  *(v0 + 5920) = xmmword_1BCE3E8E0;
  *(v0 + 7136) = xmmword_1BCE3E8E0;
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
  *(v0 + 2473) = *v8;
  *(v0 + 2476) = *&v8[3];
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
  *(v0 + 1257) = *v7;
  *(v0 + 1260) = *&v7[3];
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
  *(v0 + 3689) = *v9;
  *(v0 + 3664) = 0x3FF0000000000000;
  *(v0 + 3680) = 0x404E000000000000;
  *(v0 + 3688) = 1;
  *(v0 + 3692) = *&v9[3];
  *(v0 + 3720) = 1062836634;
  *(v0 + 4040) = 0x3FF0000000000000;
  *(v0 + 4064) = 0x3FF0000000000000;
  *(v0 + 4072) = 0;
  *(v0 + 4824) = 0x3FF0000000000000;
  *(v0 + 4880) = 0x3FF0000000000000;
  *(v0 + 4896) = 0xC032000000000004;
  *(v0 + 4905) = *v10;
  *(v0 + 4904) = 1;
  *(v0 + 4908) = *&v10[3];
  *(v0 + 4936) = 1060320051;
  *(v0 + 5256) = 0x3FF0000000000000;
  *(v0 + 5280) = 0x3FF0000000000000;
  *(v0 + 5288) = 0;
  *(v0 + 6040) = 0x3FF0000000000000;
  *(v0 + 6096) = 0x3FF0000000000000;
  *(v0 + 6112) = 0xC056800000000000;
  *(v0 + 6120) = 1;
  *(v0 + 6121) = *v11;
  *(v0 + 6124) = *&v11[3];
  *(v0 + 6152) = 1060320051;
  *(v0 + 6472) = 0x3FF0000000000000;
  *(v0 + 6496) = 0x3FF0000000000000;
  *(v0 + 6504) = 0;
  *(v0 + 7256) = 0x3FF0000000000000;
  *(v0 + 7312) = 0x3FF0000000000000;
  return result;
}

double Elevation.init(_:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = *a1;
  v3 = *(a1 + 8);
  *a2 = *a1;
  *(a2 + 8) = v3;
  return result;
}

uint64_t Elevation.init(degrees:isPM:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  *a2 = a3;
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_1BCAB3FE4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x73656572676564 && a2 == 0xE700000000000000;
  if (v4 || (sub_1BCE1E090() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1297118057 && a2 == 0xE400000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_1BCE1E090();

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

uint64_t sub_1BCAB40AC(char a1)
{
  if (a1)
  {
    return 1297118057;
  }

  else
  {
    return 0x73656572676564;
  }
}

uint64_t sub_1BCAB40E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1BCAB3FE4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1BCAB410C(uint64_t a1)
{
  v2 = sub_1BCAB4304();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BCAB4148(uint64_t a1)
{
  v2 = sub_1BCAB4304();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Elevation.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08898);
  OUTLINED_FUNCTION_2();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v12[-v8];
  v10 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BCAB4304();
  sub_1BCE1E170();
  v13 = v10;
  v12[7] = 0;
  sub_1BCA4DCAC();
  sub_1BCE1E020();
  if (!v2)
  {
    v12[6] = 1;
    sub_1BCE1DFE0();
  }

  return (*(v6 + 8))(v9, v4);
}

unint64_t sub_1BCAB4304()
{
  result = qword_1EDA16E00;
  if (!qword_1EDA16E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA16E00);
  }

  return result;
}

uint64_t Elevation.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD088A0);
  OUTLINED_FUNCTION_2();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v14[-v9];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BCAB4304();
  sub_1BCE1E160();
  if (!v2)
  {
    v14[7] = 0;
    sub_1BCA4DD9C();
    sub_1BCE1DF70();
    v11 = v15;
    v14[6] = 1;
    v12 = sub_1BCE1DF30();
    (*(v7 + 8))(v10, v5);
    *a2 = v11;
    *(a2 + 8) = v12 & 1;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

_BYTE *storeEnumTagSinglePayload for Elevation.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1BCAB462C()
{
  result = qword_1EBD088A8;
  if (!qword_1EBD088A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD088A8);
  }

  return result;
}

unint64_t sub_1BCAB4684()
{
  result = qword_1EDA16DF0;
  if (!qword_1EDA16DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA16DF0);
  }

  return result;
}

unint64_t sub_1BCAB46DC()
{
  result = qword_1EDA16DF8;
  if (!qword_1EDA16DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA16DF8);
  }

  return result;
}

void sub_1BCAB4734(uint64_t a1@<X8>)
{
  v2 = a1 + 1436;
  sub_1BCAB4EA8();
  v4 = v3;
  sub_1BCAB4EA8();
  *a1 = 0x4006666666666666;
  *(a1 + 8) = 3;
  *(a1 + 16) = 0x3FF0000000000000;
  *(a1 + 24) = 48;
  *(a1 + 32) = xmmword_1BCE3BED0;
  *(a1 + 48) = xmmword_1BCE3BED0;
  *(a1 + 64) = 0x42C8000042480000;
  *(a1 + 72) = 0xC37A000000000000;
  *(a1 + 80) = xmmword_1BCE4A6F0;
  *(a1 + 96) = xmmword_1BCE3BEF0;
  *(a1 + 112) = 0x3E8000003DF5C28FLL;
  *(a1 + 128) = xmmword_1BCE3C7C0;
  *(a1 + 144) = xmmword_1BCE3D840;
  *(a1 + 160) = xmmword_1BCE3BF00;
  *(a1 + 176) = 1153138688;
  *(a1 + 184) = 0x3E4CCCCD3DA3D70ALL;
  *(a1 + 192) = xmmword_1BCE3C7C0;
  *(a1 + 208) = xmmword_1BCE3C700;
  *(a1 + 224) = xmmword_1BCE4A700;
  *(a1 + 240) = 0x4243000040A00000;
  *(a1 + 248) = 1142292480;
  *(a1 + 256) = 0x3E3851EC3DCCCCCDLL;
  *(a1 + 264) = 0x406D70A441500000;
  *(a1 + 272) = 1084227584;
  __asm { FMOV            V0.4S, #1.0 }

  *(a1 + 288) = xmmword_1BCE3C7C0;
  *(a1 + 304) = _Q0;
  *(a1 + 320) = 0x44160000420F0000;
  *(a1 + 328) = 0x3E4CCCCD3DCCCCCDLL;
  *(a1 + 336) = 0x40A000004115C28FLL;
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
  *(a1 + 712) = 0x400000003F800000;
  *(a1 + 720) = 0x41B770A441900000;
  *(a1 + 728) = 1094713344;
  *(a1 + 736) = 1;
  *(a1 + 744) = 10;
  *(a1 + 752) = xmmword_1BCE4A710;
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
  *(a1 + 1216) = xmmword_1BCE4A720;
  *(a1 + 1232) = 0;
  *(a1 + 1236) = 1;
  *(a1 + 1240) = 0x617274736F746C41;
  *(a1 + 1248) = 0xEB00000000737574;
  *(a1 + 1256) = 0xD000000000000013;
  *(a1 + 1264) = 0x80000001BCE79300;
  *(a1 + 1272) = 8;
  *(a1 + 1280) = 0;
  *(a1 + 1288) = 0x3E8F5C293E0F5C29;
  *(a1 + 1296) = 0x428C000041C80000;
  *(a1 + 1304) = 1099951718;
  *(a1 + 1312) = xmmword_1BCE3C7C0;
  *(a1 + 1328) = xmmword_1BCE3FB70;
  *(a1 + 1344) = 0x4170000041200000;
  *(a1 + 1352) = 1092616192;
  *(a1 + 1360) = 0;
  *(a1 + 1368) = 5;
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
  __asm { FMOV            V4.2S, #-30.0 }

  *(a1 + 1616) = -_D4;
  *(a1 + 1624) = 0x40000000;
  *(a1 + 1628) = 0;
  *(a1 + 1630) = 1;
  *(a1 + 1638) = 0;
  *(a1 + 1631) = 0;
  *(v2 + 210) = 65793;
  *(a1 + 1650) = 0;
  *(a1 + 1652) = 3;
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
  *(a1 + 1952) = 1077936128;
  *(a1 + 1960) = 0x420C000041C80000;
  *(a1 + 1968) = xmmword_1BCE4A730;
  *(a1 + 1984) = 0x3F80000041A00000;
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
  *(a1 + 2120) = 0x3E4CCCCD3DCCCCCDLL;
  *(a1 + 2128) = 0x3F8000003F333333;
  *(a1 + 2136) = 0x4040000040000000;
  *(a1 + 2144) = -1046478848;
  *(a1 + 2160) = _Q0;
  *(a1 + 2176) = _Q0;
  *(a1 + 2192) = 1062803079;
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

double sub_1BCAB4EA8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07858);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1BCE3EBD0;
  *(v0 + 48) = xmmword_1BCE3F510;
  *(v0 + 64) = 0x420C000043480000;
  *(v0 + 80) = xmmword_1BCE3E140;
  *(v0 + 96) = xmmword_1BCE3E150;
  *(v0 + 4912) = xmmword_1BCE3FD40;
  *(v0 + 6128) = xmmword_1BCE3FD40;
  *(v0 + 4928) = 1147207680;
  *(v0 + 6144) = 1147207680;
  *(v0 + 4976) = xmmword_1BCE4A7B0;
  *(v0 + 6192) = xmmword_1BCE4A7B0;
  *(v0 + 4992) = xmmword_1BCE3FD60;
  *(v0 + 6208) = xmmword_1BCE3FD60;
  *(v0 + 5008) = xmmword_1BCE3EEF0;
  *(v0 + 6224) = xmmword_1BCE3EEF0;
  *(v0 + 5024) = xmmword_1BCE3EF00;
  *(v0 + 6240) = xmmword_1BCE3EF00;
  *(v0 + 5088) = xmmword_1BCE3DA70;
  *(v0 + 6304) = xmmword_1BCE3DA70;
  *(v0 + 5264) = xmmword_1BCE3E9D0;
  *(v0 + 6480) = xmmword_1BCE3E9D0;
  *(v0 + 5600) = xmmword_1BCE4A7C0;
  *(v0 + 6816) = xmmword_1BCE4A7C0;
  *(v0 + 3696) = xmmword_1BCE3EE30;
  *(v0 + 7344) = xmmword_1BCE3EE30;
  *(v0 + 3712) = 1143930880;
  *(v0 + 7360) = 1143930880;
  *(v0 + 3760) = xmmword_1BCE3FD00;
  *(v0 + 7408) = xmmword_1BCE3FD00;
  *(v0 + 3776) = xmmword_1BCE3F930;
  *(v0 + 7424) = xmmword_1BCE3F930;
  *(v0 + 3792) = xmmword_1BCE3E180;
  *(v0 + 7440) = xmmword_1BCE3E180;
  *(v0 + 3984) = xmmword_1BCE4A7A0;
  *(v0 + 5200) = xmmword_1BCE4A7A0;
  *(v0 + 6416) = xmmword_1BCE4A7A0;
  *(v0 + 7632) = xmmword_1BCE4A7A0;
  *(v0 + 4000) = xmmword_1BCE3FD20;
  *(v0 + 5216) = xmmword_1BCE3FD20;
  *(v0 + 6432) = xmmword_1BCE3FD20;
  *(v0 + 7648) = xmmword_1BCE3FD20;
  v1 = vdupq_n_s32(0x3F666666u);
  *(v0 + 4016) = v1;
  *(v0 + 5232) = v1;
  *(v0 + 6448) = v1;
  *(v0 + 7664) = v1;
  *(v0 + 4032) = 1063675494;
  *(v0 + 5248) = 1063675494;
  *(v0 + 6464) = 1063675494;
  *(v0 + 7680) = 1063675494;
  *(v0 + 4048) = xmmword_1BCE3CDC0;
  *(v0 + 7696) = xmmword_1BCE3CDC0;
  *(v0 + 4288) = xmmword_1BCE3CBA0;
  *(v0 + 7936) = xmmword_1BCE3CBA0;
  *(v0 + 3968) = xmmword_1BCE3E350;
  *(v0 + 4672) = xmmword_1BCE3E350;
  *(v0 + 5184) = xmmword_1BCE3E350;
  *(v0 + 5888) = xmmword_1BCE3E350;
  *(v0 + 6400) = xmmword_1BCE3E350;
  *(v0 + 7104) = xmmword_1BCE3E350;
  *(v0 + 7616) = xmmword_1BCE3E350;
  *(v0 + 8320) = xmmword_1BCE3E350;
  *(v0 + 2480) = xmmword_1BCE3F7B0;
  *(v0 + 8560) = xmmword_1BCE3F7B0;
  *(v0 + 2496) = 1132068864;
  *(v0 + 8576) = 1132068864;
  *(v0 + 2512) = xmmword_1BCE44F10;
  *(v0 + 8592) = xmmword_1BCE44F10;
  *(v0 + 2528) = xmmword_1BCE43340;
  *(v0 + 8608) = xmmword_1BCE43340;
  *(v0 + 2544) = xmmword_1BCE44F20;
  *(v0 + 8624) = xmmword_1BCE44F20;
  *(v0 + 2560) = xmmword_1BCE43360;
  *(v0 + 8640) = xmmword_1BCE43360;
  *(v0 + 2576) = xmmword_1BCE3E270;
  *(v0 + 8656) = xmmword_1BCE3E270;
  *(v0 + 2592) = xmmword_1BCE3CB90;
  *(v0 + 3808) = xmmword_1BCE3CB90;
  *(v0 + 7456) = xmmword_1BCE3CB90;
  *(v0 + 8672) = xmmword_1BCE3CB90;
  *(v0 + 2656) = xmmword_1BCE3DCB0;
  *(v0 + 8736) = xmmword_1BCE3DCB0;
  *(v0 + 2736) = xmmword_1BCE40010;
  *(v0 + 8816) = xmmword_1BCE40010;
  *(v0 + 2752) = xmmword_1BCE48D60;
  *(v0 + 8832) = xmmword_1BCE48D60;
  *(v0 + 2768) = xmmword_1BCE44F40;
  *(v0 + 8848) = xmmword_1BCE44F40;
  *(v0 + 2816) = 0x3F4CCCCD3F333333;
  *(v0 + 8896) = 0x3F4CCCCD3F333333;
  *(v0 + 3072) = xmmword_1BCE4A790;
  *(v0 + 9152) = xmmword_1BCE4A790;
  *(v0 + 1280) = 0x4120000043480000;
  *(v0 + 9792) = 0x4120000043480000;
  *(v0 + 1328) = xmmword_1BCE4A740;
  *(v0 + 9840) = xmmword_1BCE4A740;
  *(v0 + 1344) = xmmword_1BCE48C50;
  *(v0 + 9856) = xmmword_1BCE48C50;
  *(v0 + 1360) = xmmword_1BCE432E0;
  *(v0 + 9872) = xmmword_1BCE432E0;
  *(v0 + 1376) = xmmword_1BCE432F0;
  *(v0 + 9888) = xmmword_1BCE432F0;
  *(v0 + 1488) = xmmword_1BCE4A750;
  *(v0 + 10000) = xmmword_1BCE4A750;
  *(v0 + 1504) = xmmword_1BCE4A760;
  *(v0 + 10016) = xmmword_1BCE4A760;
  *(v0 + 1520) = xmmword_1BCE4A770;
  *(v0 + 10032) = xmmword_1BCE4A770;
  *(v0 + 1552) = xmmword_1BCE48C80;
  *(v0 + 10064) = xmmword_1BCE48C80;
  *(v0 + 1568) = xmmword_1BCE4A780;
  *(v0 + 10080) = xmmword_1BCE4A780;
  *(v0 + 112) = xmmword_1BCE44EB0;
  *(v0 + 128) = xmmword_1BCE44EC0;
  *(v0 + 1264) = xmmword_1BCE3F510;
  *(v0 + 9776) = xmmword_1BCE3F510;
  *(v0 + 10992) = xmmword_1BCE3F510;
  *(v0 + 11008) = 0x420C000043480000;
  *(v0 + 144) = xmmword_1BCE43250;
  *(v0 + 160) = xmmword_1BCE43260;
  *(v0 + 1296) = xmmword_1BCE3E140;
  *(v0 + 3728) = xmmword_1BCE3E140;
  *(v0 + 4944) = xmmword_1BCE3E140;
  *(v0 + 6160) = xmmword_1BCE3E140;
  *(v0 + 7376) = xmmword_1BCE3E140;
  *(v0 + 9808) = xmmword_1BCE3E140;
  *(v0 + 11024) = xmmword_1BCE3E140;
  __asm { FMOV            V2.2D, #1.0 }

  *(v0 + 1312) = xmmword_1BCE3E150;
  *(v0 + 3744) = xmmword_1BCE3E150;
  *(v0 + 4960) = xmmword_1BCE3E150;
  *(v0 + 6176) = xmmword_1BCE3E150;
  *(v0 + 7392) = xmmword_1BCE3E150;
  *(v0 + 9824) = xmmword_1BCE3E150;
  *(v0 + 11040) = xmmword_1BCE3E150;
  __asm { FMOV            V0.2D, #0.5 }

  *(v0 + 11056) = xmmword_1BCE44EB0;
  *(v0 + 208) = _Q0;
  *(v0 + 224) = xmmword_1BCE3D910;
  *(v0 + 11072) = xmmword_1BCE44EC0;
  *(v0 + 11088) = xmmword_1BCE43250;
  *(v0 + 240) = xmmword_1BCE43270;
  *(v0 + 256) = xmmword_1BCE43280;
  *(v0 + 11104) = xmmword_1BCE43260;
  *(v0 + 1424) = _Q0;
  *(v0 + 2640) = _Q0;
  *(v0 + 8720) = _Q0;
  *(v0 + 9936) = _Q0;
  *(v0 + 11152) = _Q0;
  *(v0 + 272) = xmmword_1BCE3FC60;
  *(v0 + 288) = xmmword_1BCE3FC70;
  *(v0 + 1440) = xmmword_1BCE3D910;
  *(v0 + 9952) = xmmword_1BCE3D910;
  *(v0 + 11168) = xmmword_1BCE3D910;
  *(v0 + 1456) = xmmword_1BCE43270;
  *(v0 + 9968) = xmmword_1BCE43270;
  *(v0 + 11184) = xmmword_1BCE43270;
  *(v0 + 304) = xmmword_1BCE3FC80;
  *(v0 + 320) = xmmword_1BCE3ED10;
  *(v0 + 1472) = xmmword_1BCE43280;
  *(v0 + 9984) = xmmword_1BCE43280;
  *(v0 + 11200) = xmmword_1BCE43280;
  *(v0 + 11216) = xmmword_1BCE3FC60;
  *(v0 + 11232) = xmmword_1BCE3FC70;
  v8 = vdupq_n_s32(0x3F4CCCCDu);
  *(v0 + 336) = xmmword_1BCE3FC90;
  *(v0 + 352) = xmmword_1BCE3FC00;
  *(v0 + 368) = v8;
  *(v0 + 11248) = xmmword_1BCE3FC80;
  *(v0 + 384) = 0x3F8000003F333333;
  *(v0 + 1536) = xmmword_1BCE3ED10;
  *(v0 + 10048) = xmmword_1BCE3ED10;
  *(v0 + 11264) = xmmword_1BCE3ED10;
  *(v0 + 432) = 0u;
  *(v0 + 448) = 0u;
  *(v0 + 11280) = xmmword_1BCE3FC90;
  result = 1.0;
  *(v0 + 2784) = xmmword_1BCE3FC00;
  *(v0 + 8864) = xmmword_1BCE3FC00;
  *(v0 + 11296) = xmmword_1BCE3FC00;
  *(v0 + 512) = xmmword_1BCE3A880;
  *(v0 + 1584) = v8;
  *(v0 + 2800) = v8;
  *(v0 + 8880) = v8;
  *(v0 + 10096) = v8;
  *(v0 + 11312) = v8;
  *(v0 + 544) = xmmword_1BCE3D430;
  *(v0 + 576) = xmmword_1BCE3A880;
  *(v0 + 1600) = 0x3F8000003F333333;
  *(v0 + 10112) = 0x3F8000003F333333;
  *(v0 + 11328) = 0x3F8000003F333333;
  *(v0 + 640) = xmmword_1BCE3A880;
  *(v0 + 1664) = 0u;
  *(v0 + 1648) = 0u;
  *(v0 + 2880) = 0u;
  *(v0 + 2864) = 0u;
  *(v0 + 4096) = 0u;
  *(v0 + 4080) = 0u;
  *(v0 + 5312) = 0u;
  *(v0 + 5296) = 0u;
  *(v0 + 6528) = 0u;
  *(v0 + 6512) = 0u;
  *(v0 + 7744) = 0u;
  *(v0 + 7728) = 0u;
  *(v0 + 8960) = 0u;
  *(v0 + 8944) = 0u;
  *(v0 + 10176) = 0u;
  *(v0 + 10160) = 0u;
  *(v0 + 11392) = 0u;
  *(v0 + 11376) = 0u;
  *(v0 + 704) = xmmword_1BCE3A880;
  *(v0 + 1760) = xmmword_1BCE3D430;
  *(v0 + 2976) = xmmword_1BCE3D430;
  *(v0 + 4192) = xmmword_1BCE3D430;
  *(v0 + 5408) = xmmword_1BCE3D430;
  *(v0 + 6624) = xmmword_1BCE3D430;
  *(v0 + 7840) = xmmword_1BCE3D430;
  *(v0 + 9056) = xmmword_1BCE3D430;
  *(v0 + 10272) = xmmword_1BCE3D430;
  *(v0 + 11488) = xmmword_1BCE3D430;
  *(v0 + 736) = xmmword_1BCE3E1D0;
  *(v0 + 1952) = xmmword_1BCE3E1D0;
  *(v0 + 3168) = xmmword_1BCE3E1D0;
  *(v0 + 9248) = xmmword_1BCE3E1D0;
  *(v0 + 10464) = xmmword_1BCE3E1D0;
  *(v0 + 11680) = xmmword_1BCE3E1D0;
  *(v0 + 800) = xmmword_1BCE3DD90;
  *(v0 + 832) = xmmword_1BCE3A880;
  *(v0 + 2016) = xmmword_1BCE3DD90;
  *(v0 + 3232) = xmmword_1BCE3DD90;
  *(v0 + 4448) = xmmword_1BCE3DD90;
  *(v0 + 5664) = xmmword_1BCE3DD90;
  *(v0 + 6880) = xmmword_1BCE3DD90;
  *(v0 + 8096) = xmmword_1BCE3DD90;
  *(v0 + 9312) = xmmword_1BCE3DD90;
  *(v0 + 10528) = xmmword_1BCE3DD90;
  *(v0 + 11744) = xmmword_1BCE3DD90;
  *(v0 + 864) = xmmword_1BCE3FC20;
  *(v0 + 1024) = xmmword_1BCE3A880;
  *(v0 + 2080) = xmmword_1BCE3FC20;
  *(v0 + 3296) = xmmword_1BCE3FC20;
  *(v0 + 4512) = xmmword_1BCE3FC20;
  *(v0 + 5728) = xmmword_1BCE3FC20;
  *(v0 + 6944) = xmmword_1BCE3FC20;
  *(v0 + 8160) = xmmword_1BCE3FC20;
  *(v0 + 9376) = xmmword_1BCE3FC20;
  *(v0 + 10592) = xmmword_1BCE3FC20;
  *(v0 + 11808) = xmmword_1BCE3FC20;
  *(v0 + 1728) = xmmword_1BCE3A880;
  *(v0 + 1792) = xmmword_1BCE3A880;
  *(v0 + 1856) = xmmword_1BCE3A880;
  *(v0 + 8352) = xmmword_1BCE3CBC0;
  *(v0 + 8368) = _Q2;
  *(v0 + 1920) = xmmword_1BCE3A880;
  *(v0 + 2048) = xmmword_1BCE3A880;
  *(v0 + 8272) = _Q2;
  *(v0 + 8288) = xmmword_1BCE3DAE0;
  *(v0 + 8304) = _Q2;
  *(v0 + 8336) = _Q2;
  *(v0 + 8176) = _Q2;
  *(v0 + 0x2000) = _Q2;
  *(v0 + 8208) = _Q2;
  *(v0 + 8224) = _Q2;
  *(v0 + 8240) = _Q2;
  *(v0 + 8256) = xmmword_1BCE3C8C0;
  *(v0 + 2240) = xmmword_1BCE3A880;
  *(v0 + 2944) = xmmword_1BCE3A880;
  *(v0 + 8080) = _Q2;
  *(v0 + 8112) = _Q2;
  *(v0 + 8128) = xmmword_1BCE3A880;
  *(v0 + 8144) = _Q2;
  *(v0 + 7984) = _Q2;
  *(v0 + 8000) = xmmword_1BCE3A880;
  *(v0 + 8016) = _Q2;
  *(v0 + 8032) = xmmword_1BCE3C8C0;
  *(v0 + 8048) = _Q2;
  *(v0 + 8064) = _Q2;
  *(v0 + 3008) = xmmword_1BCE3A880;
  *(v0 + 7888) = _Q2;
  *(v0 + 7904) = xmmword_1BCE3C8C0;
  *(v0 + 7920) = _Q2;
  *(v0 + 7952) = _Q2;
  *(v0 + 7968) = _Q2;
  *(v0 + 3136) = xmmword_1BCE3A880;
  *(v0 + 7792) = _Q2;
  *(v0 + 7808) = xmmword_1BCE3A880;
  *(v0 + 7824) = _Q2;
  *(v0 + 7856) = _Q2;
  *(v0 + 7872) = xmmword_1BCE3A880;
  *(v0 + 3264) = xmmword_1BCE3A880;
  *(v0 + 3456) = xmmword_1BCE3A880;
  *(v0 + 7760) = _Q2;
  *(v0 + 7776) = xmmword_1BCE3DAE0;
  *(v0 + 4160) = xmmword_1BCE3A880;
  *(v0 + 4224) = xmmword_1BCE3A880;
  *(v0 + 4352) = xmmword_1BCE3A880;
  *(v0 + 7688) = 0x3FEF0AE2E0000000;
  *(v0 + 7712) = 0x3FF0000000000000;
  *(v0 + 7720) = 0;
  *(v0 + 4480) = xmmword_1BCE3A880;
  *(v0 + 5376) = xmmword_1BCE3A880;
  *(v0 + 5440) = xmmword_1BCE3A880;
  *(v0 + 7568) = _Q2;
  *(v0 + 7584) = _Q2;
  *(v0 + 7600) = _Q2;
  *(v0 + 7472) = _Q2;
  *(v0 + 7488) = _Q2;
  *(v0 + 7504) = _Q2;
  *(v0 + 7520) = xmmword_1BCE3DAE0;
  *(v0 + 7536) = _Q2;
  *(v0 + 7552) = _Q2;
  *(v0 + 5568) = xmmword_1BCE3A880;
  *(v0 + 5696) = xmmword_1BCE3A880;
  *(v0 + 6544) = _Q2;
  *(v0 + 6560) = xmmword_1BCE3DAE0;
  *(v0 + 6576) = _Q2;
  *(v0 + 6592) = xmmword_1BCE3A880;
  *(v0 + 6608) = _Q2;
  *(v0 + 6640) = _Q2;
  *(v0 + 6656) = xmmword_1BCE3A880;
  *(v0 + 7368) = 1058642330;
  *(v0 + 6672) = _Q2;
  *(v0 + 6688) = xmmword_1BCE3C8C0;
  *(v0 + 7296) = _Q2;
  *(v0 + 7337) = *v15;
  *(v0 + 7312) = 0x3FF0000000000000;
  *(v0 + 7328) = 0x4028000000000010;
  *(v0 + 7336) = 1;
  *(v0 + 7340) = *&v15[3];
  *(v0 + 7216) = _Q2;
  *(v0 + 7232) = _Q2;
  *(v0 + 7248) = 0x4170000042480000;
  *(v0 + 7256) = 0x3FF0000000000000;
  *(v0 + 7264) = _Q2;
  *(v0 + 7280) = _Q2;
  *(v0 + 7120) = _Q2;
  *(v0 + 7136) = xmmword_1BCE3CBC0;
  *(v0 + 7152) = _Q2;
  *(v0 + 7168) = xmmword_1BCE3C8C0;
  *(v0 + 7184) = _Q2;
  *(v0 + 7200) = xmmword_1BCE3DAE0;
  *(v0 + 6704) = _Q2;
  *(v0 + 7024) = _Q2;
  *(v0 + 7040) = xmmword_1BCE3C8C0;
  *(v0 + 7056) = _Q2;
  *(v0 + 7072) = xmmword_1BCE3DAE0;
  *(v0 + 7088) = _Q2;
  *(v0 + 6720) = xmmword_1BCE3C8C0;
  *(v0 + 6928) = _Q2;
  *(v0 + 6960) = _Q2;
  *(v0 + 6976) = _Q2;
  *(v0 + 6992) = _Q2;
  *(v0 + 7008) = _Q2;
  *(v0 + 6736) = _Q2;
  *(v0 + 6832) = _Q2;
  *(v0 + 6848) = _Q2;
  *(v0 + 6864) = _Q2;
  *(v0 + 6896) = _Q2;
  *(v0 + 6912) = xmmword_1BCE3A880;
  *(v0 + 6752) = _Q2;
  *(v0 + 6768) = _Q2;
  *(v0 + 6784) = xmmword_1BCE3A880;
  *(v0 + 6800) = _Q2;
  *(v0 + 9024) = xmmword_1BCE3A880;
  *(v0 + 9088) = xmmword_1BCE3A880;
  *(v0 + 9216) = xmmword_1BCE3A880;
  *(v0 + 9344) = xmmword_1BCE3A880;
  *(v0 + 9536) = xmmword_1BCE3A880;
  *(v0 + 10240) = xmmword_1BCE3A880;
  *(v0 + 10304) = xmmword_1BCE3A880;
  *(v0 + 10368) = xmmword_1BCE3A880;
  *(v0 + 10432) = xmmword_1BCE3A880;
  *(v0 + 10560) = xmmword_1BCE3A880;
  *(v0 + 10752) = xmmword_1BCE3A880;
  *(v0 + 11456) = xmmword_1BCE3A880;
  *(v0 + 11520) = xmmword_1BCE3A880;
  *(v0 + 11584) = xmmword_1BCE3A880;
  *(v0 + 11648) = xmmword_1BCE3A880;
  *(v0 + 11776) = xmmword_1BCE3A880;
  *(v0 + 11968) = xmmword_1BCE3A880;
  *(v0 + 6472) = 0x3FF0000000000000;
  *(v0 + 6496) = 0x3FF0000000000000;
  *(v0 + 6504) = 0;
  *(v0 + 672) = xmmword_1BCE3CBC0;
  *(v0 + 1056) = xmmword_1BCE3CBC0;
  *(v0 + 1888) = xmmword_1BCE3CBC0;
  *(v0 + 2272) = xmmword_1BCE3CBC0;
  *(v0 + 3104) = xmmword_1BCE3CBC0;
  *(v0 + 6384) = _Q2;
  *(v0 + 3488) = xmmword_1BCE3CBC0;
  *(v0 + 6288) = _Q2;
  *(v0 + 6320) = _Q2;
  *(v0 + 6336) = _Q2;
  *(v0 + 6352) = _Q2;
  *(v0 + 6368) = _Q2;
  *(v0 + 4704) = xmmword_1BCE3CBC0;
  *(v0 + 5920) = xmmword_1BCE3CBC0;
  *(v0 + 6256) = _Q2;
  *(v0 + 6272) = _Q2;
  *(v0 + 9184) = xmmword_1BCE3CBC0;
  *(v0 + 9568) = xmmword_1BCE3CBC0;
  *(v0 + 10400) = xmmword_1BCE3CBC0;
  *(v0 + 10784) = xmmword_1BCE3CBC0;
  *(v0 + 11616) = xmmword_1BCE3CBC0;
  *(v0 + 12000) = xmmword_1BCE3CBC0;
  *(v0 + 6121) = *v14;
  *(v0 + 6124) = *&v14[3];
  *(v0 + 6152) = 1061997773;
  *(v0 + 6048) = _Q2;
  *(v0 + 6064) = _Q2;
  *(v0 + 6080) = _Q2;
  *(v0 + 6096) = 0x3FF0000000000000;
  *(v0 + 6112) = 0x403DFFFFFFFFFFFELL;
  *(v0 + 6120) = 1;
  *(v0 + 5968) = _Q2;
  *(v0 + 5984) = xmmword_1BCE3DAE0;
  *(v0 + 6000) = _Q2;
  *(v0 + 6016) = _Q2;
  *(v0 + 6032) = 0x4170000042480000;
  *(v0 + 6040) = 0x3FF0000000000000;
  *(v0 + 608) = xmmword_1BCE3C8C0;
  *(v0 + 960) = xmmword_1BCE3C8C0;
  *(v0 + 5872) = _Q2;
  *(v0 + 5904) = _Q2;
  *(v0 + 5936) = _Q2;
  *(v0 + 5952) = xmmword_1BCE3C8C0;
  *(v0 + 5776) = _Q2;
  *(v0 + 5792) = _Q2;
  *(v0 + 5808) = _Q2;
  *(v0 + 5824) = xmmword_1BCE3C8C0;
  *(v0 + 5840) = _Q2;
  *(v0 + 5856) = xmmword_1BCE3DAE0;
  *(v0 + 1088) = xmmword_1BCE3C8C0;
  *(v0 + 1824) = xmmword_1BCE3C8C0;
  *(v0 + 5680) = _Q2;
  *(v0 + 5712) = _Q2;
  *(v0 + 5744) = _Q2;
  *(v0 + 5760) = _Q2;
  *(v0 + 2176) = xmmword_1BCE3C8C0;
  *(v0 + 2304) = xmmword_1BCE3C8C0;
  *(v0 + 5584) = _Q2;
  *(v0 + 5616) = _Q2;
  *(v0 + 5632) = _Q2;
  *(v0 + 5648) = _Q2;
  *(v0 + 3040) = xmmword_1BCE3C8C0;
  *(v0 + 5488) = _Q2;
  *(v0 + 5504) = xmmword_1BCE3C8C0;
  *(v0 + 5520) = _Q2;
  *(v0 + 5536) = _Q2;
  *(v0 + 5552) = _Q2;
  *(v0 + 3392) = xmmword_1BCE3C8C0;
  *(v0 + 3520) = xmmword_1BCE3C8C0;
  *(v0 + 5392) = _Q2;
  *(v0 + 5424) = _Q2;
  *(v0 + 5456) = _Q2;
  *(v0 + 5472) = xmmword_1BCE3C8C0;
  *(v0 + 4256) = xmmword_1BCE3C8C0;
  *(v0 + 4384) = xmmword_1BCE3C8C0;
  *(v0 + 4608) = xmmword_1BCE3C8C0;
  *(v0 + 5328) = _Q2;
  *(v0 + 5344) = xmmword_1BCE3DAE0;
  *(v0 + 5360) = _Q2;
  *(v0 + 4736) = xmmword_1BCE3C8C0;
  *(v0 + 5040) = _Q2;
  *(v0 + 5056) = _Q2;
  *(v0 + 5256) = 0x3FF0000000000000;
  *(v0 + 5280) = 0x3FF0000000000000;
  *(v0 + 5288) = 0;
  *(v0 + 5072) = _Q2;
  *(v0 + 5104) = _Q2;
  *(v0 + 5120) = _Q2;
  *(v0 + 5136) = _Q2;
  *(v0 + 5152) = _Q2;
  *(v0 + 5168) = _Q2;
  *(v0 + 8384) = xmmword_1BCE3C8C0;
  *(v0 + 9120) = xmmword_1BCE3C8C0;
  *(v0 + 9472) = xmmword_1BCE3C8C0;
  *(v0 + 9600) = xmmword_1BCE3C8C0;
  *(v0 + 10336) = xmmword_1BCE3C8C0;
  *(v0 + 10688) = xmmword_1BCE3C8C0;
  *(v0 + 10816) = xmmword_1BCE3C8C0;
  *(v0 + 11552) = xmmword_1BCE3C8C0;
  *(v0 + 11904) = xmmword_1BCE3C8C0;
  *(v0 + 12032) = xmmword_1BCE3C8C0;
  *(v0 + 480) = xmmword_1BCE3DAE0;
  *(v0 + 992) = xmmword_1BCE3DAE0;
  *(v0 + 1120) = xmmword_1BCE3DAE0;
  *(v0 + 4905) = *v13;
  *(v0 + 4936) = 1061997773;
  *(v0 + 1696) = xmmword_1BCE3DAE0;
  *(v0 + 4880) = 0x3FF0000000000000;
  *(v0 + 4896) = 0x403DFFFFFFFFFFFELL;
  *(v0 + 4904) = 0;
  *(v0 + 4908) = *&v13[3];
  *(v0 + 4800) = _Q2;
  *(v0 + 4816) = 0x4170000042480000;
  *(v0 + 4824) = 0x3FF0000000000000;
  *(v0 + 4832) = _Q2;
  *(v0 + 4848) = _Q2;
  *(v0 + 4864) = _Q2;
  *(v0 + 2208) = xmmword_1BCE3DAE0;
  *(v0 + 2336) = xmmword_1BCE3DAE0;
  *(v0 + 4720) = _Q2;
  *(v0 + 4752) = _Q2;
  *(v0 + 4768) = xmmword_1BCE3DAE0;
  *(v0 + 4784) = _Q2;
  *(v0 + 2912) = xmmword_1BCE3DAE0;
  *(v0 + 3424) = xmmword_1BCE3DAE0;
  *(v0 + 4624) = _Q2;
  *(v0 + 4640) = xmmword_1BCE3DAE0;
  *(v0 + 4656) = _Q2;
  *(v0 + 4688) = _Q2;
  *(v0 + 3552) = xmmword_1BCE3DAE0;
  *(v0 + 4528) = _Q2;
  *(v0 + 4544) = _Q2;
  *(v0 + 4560) = _Q2;
  *(v0 + 4576) = _Q2;
  *(v0 + 4592) = _Q2;
  *(v0 + 3872) = xmmword_1BCE3DAE0;
  *(v0 + 4128) = xmmword_1BCE3DAE0;
  *(v0 + 4416) = _Q2;
  *(v0 + 4432) = _Q2;
  *(v0 + 4464) = _Q2;
  *(v0 + 4496) = _Q2;
  *(v0 + 4144) = _Q2;
  *(v0 + 4176) = _Q2;
  *(v0 + 4320) = _Q2;
  *(v0 + 4336) = _Q2;
  *(v0 + 4368) = _Q2;
  *(v0 + 4400) = _Q2;
  *(v0 + 4208) = _Q2;
  *(v0 + 4240) = _Q2;
  *(v0 + 4272) = _Q2;
  *(v0 + 4304) = _Q2;
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
  *(v0 + 4064) = 0x3FF0000000000000;
  *(v0 + 4072) = 0;
  *(v0 + 4112) = _Q2;
  *(v0 + 2384) = 0x4170000042480000;
  *(v0 + 3600) = 0x4170000042480000;
  *(v0 + 4040) = 0x3FEF0AE2E0000000;
  *(v0 + 8464) = 0x4170000042480000;
  *(v0 + 9680) = 0x4170000042480000;
  *(v0 + 10896) = 0x4170000042480000;
  *(v0 + 12112) = 0x4170000042480000;
  *(v0 + 3888) = _Q2;
  *(v0 + 3904) = _Q2;
  *(v0 + 3920) = _Q2;
  *(v0 + 3936) = _Q2;
  *(v0 + 3952) = _Q2;
  *(v0 + 464) = _Q2;
  *(v0 + 496) = _Q2;
  *(v0 + 528) = _Q2;
  *(v0 + 3824) = _Q2;
  *(v0 + 3840) = _Q2;
  *(v0 + 3856) = _Q2;
  *(v0 + 560) = _Q2;
  *(v0 + 592) = _Q2;
  *(v0 + 624) = _Q2;
  *(v0 + 656) = _Q2;
  *(v0 + 688) = _Q2;
  *(v0 + 3616) = _Q2;
  *(v0 + 3689) = *v12;
  *(v0 + 3692) = *&v12[3];
  *(v0 + 3720) = 1058642330;
  *(v0 + 3632) = _Q2;
  *(v0 + 3648) = _Q2;
  *(v0 + 3664) = 0x3FF0000000000000;
  *(v0 + 3680) = 0x4027FFFFFFFFFFFALL;
  *(v0 + 3688) = 0;
  *(v0 + 720) = _Q2;
  *(v0 + 784) = _Q2;
  *(v0 + 3536) = _Q2;
  *(v0 + 3568) = _Q2;
  *(v0 + 3584) = _Q2;
  *(v0 + 3608) = 0x3FF0000000000000;
  *(v0 + 816) = _Q2;
  *(v0 + 848) = _Q2;
  *(v0 + 944) = _Q2;
  *(v0 + 3440) = _Q2;
  *(v0 + 3472) = _Q2;
  *(v0 + 3504) = _Q2;
  *(v0 + 976) = _Q2;
  *(v0 + 1008) = _Q2;
  *(v0 + 3344) = _Q2;
  *(v0 + 3360) = _Q2;
  *(v0 + 3376) = _Q2;
  *(v0 + 3408) = _Q2;
  *(v0 + 3248) = _Q2;
  *(v0 + 3280) = _Q2;
  *(v0 + 3312) = _Q2;
  *(v0 + 3328) = _Q2;
  *(v0 + 176) = _Q2;
  *(v0 + 192) = _Q2;
  *(v0 + 400) = _Q2;
  *(v0 + 3152) = _Q2;
  *(v0 + 3184) = _Q2;
  *(v0 + 3200) = _Q2;
  *(v0 + 3216) = _Q2;
  *(v0 + 752) = _Q2;
  *(v0 + 768) = _Q2;
  *(v0 + 3056) = _Q2;
  *(v0 + 3088) = _Q2;
  *(v0 + 3120) = _Q2;
  *(v0 + 880) = _Q2;
  *(v0 + 896) = _Q2;
  *(v0 + 912) = _Q2;
  *(v0 + 928) = _Q2;
  *(v0 + 2960) = _Q2;
  *(v0 + 2992) = _Q2;
  *(v0 + 3024) = _Q2;
  *(v0 + 1040) = _Q2;
  *(v0 + 1072) = _Q2;
  *(v0 + 1104) = _Q2;
  *(v0 + 1136) = _Q2;
  *(v0 + 2896) = _Q2;
  *(v0 + 2928) = _Q2;
  *(v0 + 1152) = _Q2;
  *(v0 + 1176) = 0x3FF0000000000000;
  *(v0 + 2824) = 0x3FF0000000000000;
  *(v0 + 2832) = _Q2;
  *(v0 + 2848) = 0x3FF0000000000000;
  *(v0 + 2856) = 0;
  *(v0 + 1184) = _Q2;
  *(v0 + 1200) = _Q2;
  *(v0 + 1216) = _Q2;
  *(v0 + 1232) = 0x3FF0000000000000;
  *(v0 + 2720) = _Q2;
  *(v0 + 1248) = 0xC04E000000000000;
  *(v0 + 1256) = 0;
  *(v0 + 2688) = _Q2;
  *(v0 + 2704) = _Q2;
  *(v0 + 1257) = *v10;
  *(v0 + 1260) = *&v10[3];
  *(v0 + 2608) = _Q2;
  *(v0 + 2624) = _Q2;
  *(v0 + 2672) = _Q2;
  *(v0 + 1288) = 1036831949;
  *(v0 + 1392) = _Q2;
  *(v0 + 1408) = _Q2;
  *(v0 + 1608) = 0x3FF0000000000000;
  *(v0 + 1616) = _Q2;
  *(v0 + 1632) = 0x3FF0000000000000;
  *(v0 + 1640) = 0;
  *(v0 + 1680) = _Q2;
  *(v0 + 2464) = 0xC031FFFFFFFFFFFFLL;
  *(v0 + 2472) = 0;
  *(v0 + 2473) = *v11;
  *(v0 + 2476) = *&v11[3];
  *(v0 + 2504) = 1050253722;
  *(v0 + 1712) = _Q2;
  *(v0 + 2392) = 0x3FF0000000000000;
  *(v0 + 2400) = _Q2;
  *(v0 + 2416) = _Q2;
  *(v0 + 2432) = _Q2;
  *(v0 + 2448) = 0x3FF0000000000000;
  *(v0 + 1744) = _Q2;
  *(v0 + 1776) = _Q2;
  *(v0 + 2288) = _Q2;
  *(v0 + 2320) = _Q2;
  *(v0 + 2352) = _Q2;
  *(v0 + 2368) = _Q2;
  *(v0 + 1808) = _Q2;
  *(v0 + 1840) = _Q2;
  *(v0 + 1872) = _Q2;
  *(v0 + 2192) = _Q2;
  *(v0 + 2224) = _Q2;
  *(v0 + 2256) = _Q2;
  *(v0 + 1904) = _Q2;
  *(v0 + 2096) = _Q2;
  *(v0 + 2112) = _Q2;
  *(v0 + 2128) = _Q2;
  *(v0 + 2144) = _Q2;
  *(v0 + 2160) = _Q2;
  *(v0 + 1936) = _Q2;
  *(v0 + 1968) = _Q2;
  *(v0 + 1984) = _Q2;
  *(v0 + 2000) = _Q2;
  *(v0 + 2032) = _Q2;
  *(v0 + 2064) = _Q2;
  *(v0 + 8400) = _Q2;
  *(v0 + 8432) = _Q2;
  *(v0 + 8448) = _Q2;
  *(v0 + 8480) = _Q2;
  *(v0 + 8496) = _Q2;
  *(v0 + 8512) = _Q2;
  *(v0 + 8688) = _Q2;
  *(v0 + 8704) = _Q2;
  *(v0 + 8752) = _Q2;
  *(v0 + 8768) = _Q2;
  *(v0 + 8784) = _Q2;
  *(v0 + 8800) = _Q2;
  *(v0 + 8912) = _Q2;
  *(v0 + 8976) = _Q2;
  *(v0 + 9008) = _Q2;
  *(v0 + 9040) = _Q2;
  *(v0 + 9072) = _Q2;
  *(v0 + 9104) = _Q2;
  *(v0 + 9136) = _Q2;
  *(v0 + 9168) = _Q2;
  *(v0 + 9200) = _Q2;
  *(v0 + 9232) = _Q2;
  *(v0 + 9264) = _Q2;
  *(v0 + 9280) = _Q2;
  *(v0 + 9296) = _Q2;
  *(v0 + 9328) = _Q2;
  *(v0 + 9360) = _Q2;
  *(v0 + 9392) = _Q2;
  *(v0 + 9408) = _Q2;
  *(v0 + 9424) = _Q2;
  *(v0 + 9440) = _Q2;
  *(v0 + 9456) = _Q2;
  *(v0 + 9488) = _Q2;
  *(v0 + 9520) = _Q2;
  *(v0 + 9552) = _Q2;
  *(v0 + 9584) = _Q2;
  *(v0 + 9616) = _Q2;
  *(v0 + 9648) = _Q2;
  *(v0 + 9664) = _Q2;
  *(v0 + 9696) = _Q2;
  *(v0 + 9712) = _Q2;
  *(v0 + 9728) = _Q2;
  *(v0 + 9904) = _Q2;
  *(v0 + 9920) = _Q2;
  *(v0 + 10128) = _Q2;
  *(v0 + 10192) = _Q2;
  *(v0 + 10224) = _Q2;
  *(v0 + 10256) = _Q2;
  *(v0 + 10288) = _Q2;
  *(v0 + 10320) = _Q2;
  *(v0 + 10352) = _Q2;
  *(v0 + 10384) = _Q2;
  *(v0 + 10416) = _Q2;
  *(v0 + 10448) = _Q2;
  *(v0 + 10480) = _Q2;
  *(v0 + 10496) = _Q2;
  *(v0 + 10512) = _Q2;
  *(v0 + 10544) = _Q2;
  *(v0 + 10576) = _Q2;
  *(v0 + 10608) = _Q2;
  *(v0 + 10624) = _Q2;
  *(v0 + 10640) = _Q2;
  *(v0 + 10656) = _Q2;
  *(v0 + 10672) = _Q2;
  *(v0 + 10704) = _Q2;
  *(v0 + 10736) = _Q2;
  *(v0 + 10768) = _Q2;
  *(v0 + 10800) = _Q2;
  *(v0 + 10832) = _Q2;
  *(v0 + 10864) = _Q2;
  *(v0 + 10880) = _Q2;
  *(v0 + 10912) = _Q2;
  *(v0 + 10928) = _Q2;
  *(v0 + 10944) = _Q2;
  *(v0 + 11120) = _Q2;
  *(v0 + 11136) = _Q2;
  *(v0 + 11344) = _Q2;
  *(v0 + 11408) = _Q2;
  *(v0 + 11440) = _Q2;
  *(v0 + 11472) = _Q2;
  *(v0 + 11504) = _Q2;
  *(v0 + 11536) = _Q2;
  *(v0 + 11568) = _Q2;
  *(v0 + 11600) = _Q2;
  *(v0 + 11632) = _Q2;
  *(v0 + 11664) = _Q2;
  *(v0 + 11696) = _Q2;
  *(v0 + 11712) = _Q2;
  *(v0 + 11728) = _Q2;
  *(v0 + 11760) = _Q2;
  *(v0 + 11792) = _Q2;
  *(v0 + 11824) = _Q2;
  *(v0 + 11840) = _Q2;
  *(v0 + 11856) = _Q2;
  *(v0 + 11872) = _Q2;
  *(v0 + 11888) = _Q2;
  *(v0 + 11920) = _Q2;
  *(v0 + 11952) = _Q2;
  *(v0 + 11984) = _Q2;
  *(v0 + 12016) = _Q2;
  *(v0 + 12048) = _Q2;
  *(v0 + 12080) = _Q2;
  *(v0 + 12096) = _Q2;
  *(v0 + 12128) = _Q2;
  *(v0 + 12144) = _Q2;
  *(v0 + 12160) = _Q2;
  *(v0 + 416) = 0x3FF0000000000000;
  *(v0 + 424) = 0;
  *(v0 + 32) = 0xC056800000000000;
  *(v0 + 392) = 0x3FF0000000000000;
  *(v0 + 40) = 0;
  *(v0 + 72) = 1036831949;
  *(v0 + 8472) = 0x3FF0000000000000;
  *(v0 + 8553) = *v16;
  *(v0 + 8528) = 0x3FF0000000000000;
  *(v0 + 8544) = 0xC032000000000004;
  *(v0 + 8552) = 1;
  *(v0 + 8556) = *&v16[3];
  *(v0 + 8584) = 1050253722;
  *(v0 + 8904) = 0x3FF0000000000000;
  *(v0 + 8928) = 0x3FF0000000000000;
  *(v0 + 8936) = 0;
  *(v0 + 9688) = 0x3FF0000000000000;
  *(v0 + 9744) = 0x3FF0000000000000;
  *(v0 + 9760) = 0xC04E000000000002;
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

uint64_t sub_1BCAB5F1C()
{
  OUTLINED_FUNCTION_8_18();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_7_0();
  v3 = MEMORY[0x1EEE9AC00](v2);
  (*(*(v0 - 8) + 16))(&v6 - v4, v1, v0, v3);
  swift_storeEnumTagMultiPayload();
  return OUTLINED_FUNCTION_9_14();
}

uint64_t sub_1BCAB5FD4()
{
  OUTLINED_FUNCTION_8_18();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_7_0();
  v3 = MEMORY[0x1EEE9AC00](v2);
  (*(*(v0 - 8) + 16))(&v6 - v4, v1, v0, v3);
  swift_storeEnumTagMultiPayload();
  return OUTLINED_FUNCTION_9_14();
}

uint64_t sub_1BCAB608C()
{
  sub_1BCE1CAA0();
  v0 = sub_1BCE1CA40();

  if (v0)
  {
    v1 = sub_1BCE1CAB0();
  }

  else
  {
    v1 = sub_1BCE1CAA0();
  }

  v2 = v1;
  sub_1BCE1CAA0();
  v3 = sub_1BCE1CA40();

  if (v3)
  {
    sub_1BCE1CAB0();
  }

  else
  {
    sub_1BCE1CAA0();
  }

  sub_1BCE1CAA0();
  v4 = sub_1BCE1CA40();

  if (v4)
  {
    sub_1BCE1CAB0();
  }

  else
  {
    sub_1BCE1CAA0();
  }

  return v2;
}

uint64_t sub_1BCAB6160(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6C616369706F7274 && a2 == 0xED00006D726F7473;
  if (v4 || (OUTLINED_FUNCTION_2_17() & 1) != 0)
  {
    goto LABEL_11;
  }

  v5 = a1 == 0x6E61636972727568 && a2 == 0xE900000000000065;
  if (v5 || (OUTLINED_FUNCTION_2_17() & 1) != 0)
  {
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_5_18();
  v10 = a1 == 0xD000000000000014 && v9 == a2;
  if (v10 || (OUTLINED_FUNCTION_2_17() & 1) != 0)
  {
    goto LABEL_31;
  }

  OUTLINED_FUNCTION_5_18();
  v12 = a1 == 0xD000000000000010 && v11 == a2;
  if (v12 || (OUTLINED_FUNCTION_2_17() & 1) != 0)
  {
    goto LABEL_31;
  }

  OUTLINED_FUNCTION_5_18();
  v14 = a1 == 0xD000000000000012 && v13 == a2;
  if (v14 || (OUTLINED_FUNCTION_2_17() & 1) != 0)
  {
    goto LABEL_31;
  }

  OUTLINED_FUNCTION_5_18();
  v17 = a1 == 0xD000000000000014 && v16 == a2;
  if (v17 || (OUTLINED_FUNCTION_2_17() & 1) != 0)
  {

    v7 = sub_1BCE1CAA0();
    sub_1BCE1CAA0();
LABEL_39:
    sub_1BCE1CAB0();
    return v7;
  }

  OUTLINED_FUNCTION_5_18();
  v19 = a1 == 0xD000000000000013 && v18 == a2;
  if (v19 || (OUTLINED_FUNCTION_2_17() & 1) != 0)
  {

    v20 = sub_1BCE1CAA0();
LABEL_46:
    v7 = v20;
    sub_1BCE1CAB0();
    goto LABEL_39;
  }

  v21 = a1 == (OUTLINED_FUNCTION_0_25() & 0xFFFFFFFFFFFFLL | 0x6172000000000000) && a2 == 0xEF6C6C69662E6E69;
  if (v21 || (OUTLINED_FUNCTION_2_17() & 1) != 0)
  {
LABEL_31:

    v15 = sub_1BCE1CAA0();
LABEL_32:
    v7 = v15;
    sub_1BCE1CAB0();
    goto LABEL_14;
  }

  v22 = a1 == 0x6B616C66776F6E73 && a2 == 0xE900000000000065;
  if (!v22 && (OUTLINED_FUNCTION_2_17() & 1) == 0)
  {
    v23 = a1 == 0x6F6E732E646E6977 && a2 == 0xE900000000000077;
    if (!v23 && (OUTLINED_FUNCTION_2_17() & 1) == 0)
    {
      v24 = a1 == (OUTLINED_FUNCTION_0_25() & 0xFFFFFFFFFFFFLL | 0x6168000000000000) && a2 == 0xEF6C6C69662E6C69;
      if (!v24 && (OUTLINED_FUNCTION_2_17() & 1) == 0)
      {
        v25 = a1 == 0x747375642E6E7573 && a2 == 0xED00006C6C69662ELL;
        if (v25 || (OUTLINED_FUNCTION_2_17() & 1) != 0)
        {
          goto LABEL_31;
        }

        v26 = a1 == (OUTLINED_FUNCTION_0_25() & 0xFFFFFFFFFFFFLL | 0x6F66000000000000) && a2 == 0xEE006C6C69662E67;
        if (!v26 && (OUTLINED_FUNCTION_2_17() & 1) == 0)
        {
          v27 = a1 == 0x657A61682E6E7573 && a2 == 0xED00006C6C69662ELL;
          if (v27 || (OUTLINED_FUNCTION_2_17() & 1) != 0)
          {
            goto LABEL_31;
          }

          v28 = a1 == 0x7A61682E6E6F6F6DLL && a2 == 0xEE006C6C69662E65;
          if (!v28 && (OUTLINED_FUNCTION_2_17() & 1) == 0)
          {
            v29 = a1 == 1684957559 && a2 == 0xE400000000000000;
            if (!v29 && (OUTLINED_FUNCTION_2_17() & 1) == 0)
            {
              v30 = a1 == 0x656D6F6D72656874 && a2 == 0xEB00000000726574;
              if (!v30 && (OUTLINED_FUNCTION_2_17() & 1) == 0)
              {
                OUTLINED_FUNCTION_5_18();
                v32 = a1 == 0xD000000000000015 && v31 == a2;
                if (v32 || (OUTLINED_FUNCTION_2_17() & 1) != 0)
                {
                  goto LABEL_102;
                }

                OUTLINED_FUNCTION_5_18();
                v34 = a1 == 0xD000000000000014 && v33 == a2;
                if (v34 || (OUTLINED_FUNCTION_2_17() & 1) != 0)
                {

                  v15 = sub_1BCE1CAB0();
                  goto LABEL_32;
                }

                v36 = a1 == (OUTLINED_FUNCTION_0_25() & 0xFFFFFFFFFFFFLL | 0x6966000000000000) && a2 == v35;
                if (!v36 && (OUTLINED_FUNCTION_2_17() & 1) == 0)
                {
                  v37 = a1 == (OUTLINED_FUNCTION_0_25() & 0xFFFFFFFFFFFFLL | 0x7573000000000000) && a2 == 0xEE006C6C69662E6ELL;
                  if (v37 || (OUTLINED_FUNCTION_2_17() & 1) != 0)
                  {
                    goto LABEL_31;
                  }

                  v38 = a1 == (OUTLINED_FUNCTION_0_25() & 0xFFFFFFFFFFFFLL | 0x6F6D000000000000) && a2 == 0xEF6C6C69662E6E6FLL;
                  if (!v38 && (OUTLINED_FUNCTION_2_17() & 1) == 0)
                  {
                    v39 = a1 == 0x2E78616D2E6E7573 && a2 == 0xEC0000006C6C6966;
                    if (v39 || (OUTLINED_FUNCTION_2_17() & 1) != 0)
                    {
LABEL_102:

                      v6 = sub_1BCE1CAB0();
                      goto LABEL_13;
                    }

                    v40 = a1 == 0x6174732E6E6F6F6DLL && a2 == 0xEF6C6C69662E7372;
                    if (!v40 && (OUTLINED_FUNCTION_2_17() & 1) == 0)
                    {
                      v41 = a1 == (OUTLINED_FUNCTION_0_25() & 0xFFFFFFFFFFFFLL | 0x6F62000000000000) && a2 == 0xEF6C6C69662E746CLL;
                      if (!v41 && (OUTLINED_FUNCTION_2_17() & 1) == 0)
                      {
                        OUTLINED_FUNCTION_5_18();
                        v43 = a1 == 0xD000000000000014 && v42 == a2;
                        if (!v43 && (OUTLINED_FUNCTION_2_17() & 1) == 0)
                        {
                          OUTLINED_FUNCTION_5_18();
                          v45 = a1 == 0xD000000000000014 && v44 == a2;
                          if (v45 || (OUTLINED_FUNCTION_2_17() & 1) != 0)
                          {
                            goto LABEL_31;
                          }

                          v46 = a1 == (OUTLINED_FUNCTION_0_25() & 0xFFFFFFFFFFFFLL | 0x6E73000000000000) && a2 == 0xEF6C6C69662E776FLL;
                          if (!v46 && (OUTLINED_FUNCTION_2_17() & 1) == 0)
                          {
                            v47 = a1 == 0x2E657369726E7573 && a2 == 0xEC0000006C6C6966;
                            if (!v47 && (OUTLINED_FUNCTION_2_17() & 1) == 0)
                            {
                              v48 = a1 == 0x662E7465736E7573 && a2 == 0xEB000000006C6C69;
                              if (!v48 && (OUTLINED_FUNCTION_2_17() & 1) == 0)
                              {
                                if (a1 == 0x616C6C6572626D75 && a2 == 0xED00006C6C69662ELL)
                                {
                                }

                                else
                                {
                                  v50 = OUTLINED_FUNCTION_2_17();

                                  if ((v50 & 1) == 0)
                                  {
                                    goto LABEL_12;
                                  }
                                }

                                v20 = sub_1BCE1CAB0();
                                goto LABEL_46;
                              }
                            }

                            goto LABEL_31;
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

LABEL_11:

LABEL_12:
  v6 = sub_1BCE1CAA0();
LABEL_13:
  v7 = v6;
  sub_1BCE1CAA0();
LABEL_14:
  sub_1BCE1CAA0();
  return v7;
}

uint64_t sub_1BCAB6764()
{
  if ((sub_1BCE1CA40() & 1) == 0 || (sub_1BCE1CA40() & 1) == 0)
  {
    return 0;
  }

  return sub_1BCE1CA40();
}

uint64_t sub_1BCAB67E0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1BCE1BC20();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08438);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v14 - v9;
  sub_1BCAB7C28(v2, &v14 - v9);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_1BCE1D0D0();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    sub_1BCE1D8C0();
    v13 = sub_1BCE1C1F0();
    sub_1BCE1AC20();

    sub_1BCE1BC10();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_1BCAB69C8(uint64_t a1)
{
  v3 = sub_1BCE1BC20();
  OUTLINED_FUNCTION_3_6();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v13[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = v1 + *(a1 + 36);
  v10 = *v9;
  if (*(v9 + 8) != 1)
  {

    sub_1BCE1D8C0();
    v11 = sub_1BCE1C1F0();
    sub_1BCE1AC20();

    sub_1BCE1BC10();
    swift_getAtKeyPath();
    sub_1BCA21FC4(v10, 0);
    (*(v5 + 8))(v8, v3);
    LOBYTE(v10) = v13[15];
  }

  return v10 & 1;
}

uint64_t sub_1BCAB6B30()
{

  return sub_1BCE1CBA0();
}

uint64_t sub_1BCAB6B78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD088C8);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v14 - v9;
  sub_1BCAB6B30();
  sub_1BCE1BE40();
  v11 = sub_1BCE1BE50();
  __swift_storeEnumTagSinglePayload(v10, 0, 1, v11);
  v12 = sub_1BCE1CBE0();

  sub_1BCAB7910(v10);
  *a4 = v12;
  a4[1] = a1;
  a4[2] = a2;
  a4[3] = a3;
}

uint64_t WidgetAccentableIconView.init(symbol:modifier:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  *a5 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08438);
  swift_storeEnumTagMultiPayload();
  v10 = type metadata accessor for WidgetAccentableIconView();
  v11 = a5 + v10[9];
  *v11 = swift_getKeyPath();
  v11[8] = 0;
  v12 = (a5 + v10[10]);
  *v12 = a1;
  v12[1] = a2;
  v13 = (a5 + v10[11]);
  *v13 = a3;
  v13[1] = a4;

  v14 = sub_1BCAB6160(a1, a2);
  v15 = (a5 + v10[12]);
  *v15 = v14;
  v15[1] = v16;
  v15[2] = v17;

  v18 = sub_1BCAB608C();
  v20 = v19;
  v22 = v21;

  v24 = (a5 + v10[13]);
  *v24 = v18;
  v24[1] = v20;
  v24[2] = v22;
  return result;
}

uint64_t WidgetAccentableIconView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v73 = a2;
  v4 = *(a1 + 16);
  OUTLINED_FUNCTION_3_6();
  v64 = v5;
  MEMORY[0x1EEE9AC00](v6);
  v63 = v61 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v62 = v61 - v9;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD088B0);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v10);
  v65 = (v61 - v11);
  sub_1BCE1D0D0();
  OUTLINED_FUNCTION_3_6();
  v66 = v13;
  v67 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v15 = v61 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = v61 - v17;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD088B8);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v19);
  v21 = v61 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD088C0);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v23);
  v25 = v61 - v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD088C8);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v26);
  v28 = v61 - v27;
  v72 = v4;
  sub_1BCE1BF70();
  OUTLINED_FUNCTION_3_6();
  v70 = v30;
  v71 = v29;
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v31);
  v33 = v61 - v32;
  if (sub_1BCAB69C8(a1))
  {
    sub_1BCAB6B30();
    sub_1BCE1BE20();
    v34 = sub_1BCE1BE50();
    __swift_storeEnumTagSinglePayload(v28, 0, 1, v34);
    v35 = sub_1BCE1CBE0();

    sub_1BCAB7910(v28);
    v36 = sub_1BCE1BFD0();
    *v21 = v35;
    *(v21 + 2) = v36;
    swift_storeEnumTagMultiPayload();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD088D0);
    sub_1BCAB7858();
    OUTLINED_FUNCTION_3_24();
    sub_1BC957184(v37, v38);
    sub_1BCE1BF60();
    sub_1BCAB77A0();
    v39 = *(a1 + 24);
    sub_1BCAB5F1C();

    v40 = &qword_1EBD088C0;
    v41 = v25;
  }

  else
  {
    v61[0] = v21;
    v61[1] = v22;
    sub_1BCAB67E0(v18);
    sub_1BCE1D0B0();
    v42 = sub_1BCE1D0A0();
    v43 = v67;
    v44 = *(v66 + 8);
    v44(v15, v67);
    v44(v18, v43);
    if ((v42 & 1) == 0)
    {
      v51 = *(v2 + *(a1 + 44));
      sub_1BCAB6B30();
      v52 = v63;
      v51();

      v39 = *(a1 + 24);
      v53 = v64;
      v54 = *(v64 + 16);
      v55 = v62;
      v56 = v72;
      v54(v62, v52, v72);
      v57 = *(v53 + 8);
      v57(v52, v56);
      v54(v52, v55, v56);
      sub_1BCAB77A0();
      sub_1BCAB5FD4();
      v57(v52, v56);
      v57(v55, v56);
      goto LABEL_7;
    }

    sub_1BC957184(&qword_1EDA1B488, &qword_1EBD088D8);
    v45 = sub_1BCE1CEE0();
    v46 = v65;
    *v65 = v45;
    *(v46 + 8) = v47;
    v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD088E0);
    v39 = *(a1 + 24);
    sub_1BCAB74E4(v2, (v46 + *(v48 + 44)));
    sub_1BC9AE400(v46, v61[0]);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD088D0);
    sub_1BCAB7858();
    OUTLINED_FUNCTION_3_24();
    sub_1BC957184(v49, v50);
    sub_1BCE1BF60();
    sub_1BCAB77A0();
    sub_1BCAB5F1C();
    sub_1BC94C05C(v25, &qword_1EBD088C0);
    v41 = v46;
    v40 = &qword_1EBD088B0;
  }

  sub_1BC94C05C(v41, v40);
LABEL_7:
  v74 = sub_1BCAB77A0();
  v75 = v39;
  OUTLINED_FUNCTION_4_21();
  v58 = v71;
  swift_getWitnessTable();
  v59 = v70;
  (*(v70 + 16))(v73, v33, v58);
  return (*(v59 + 8))(v33, v58);
}

uint64_t sub_1BCAB74E4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD088F0);
  v4 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v24 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v18 - v7;
  v9 = type metadata accessor for WidgetAccentableIconView();
  sub_1BCAB6B78(*(a1 + *(v9 + 52)), *(a1 + *(v9 + 52) + 8), *(a1 + *(v9 + 52) + 16), &v30);
  v22 = v31;
  v23 = v30;
  v20 = v33;
  v21 = v32;
  sub_1BCAB6B78(*(a1 + *(v9 + 48)), *(a1 + *(v9 + 48) + 8), *(a1 + *(v9 + 48) + 16), &v30);
  v26 = v30;
  v27 = v31;
  v28 = v32;
  v29 = v33;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD088F8);
  sub_1BCAB7B70();
  OUTLINED_FUNCTION_7_10();
  v19 = v8;
  sub_1BCE1C750();

  v10 = *(v4 + 16);
  v11 = v24;
  v12 = v25;
  v10(v24, v8, v25);
  v13 = v22;
  *a2 = v23;
  a2[1] = v13;
  v14 = v20;
  a2[2] = v21;
  a2[3] = v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08908);
  v10(a2 + *(v15 + 48), v11, v12);
  v16 = *(v4 + 8);

  v16(v19, v12);
  v16(v11, v12);
}

unint64_t sub_1BCAB77A0()
{
  result = qword_1EDA1B7E0;
  if (!qword_1EDA1B7E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD088C0);
    sub_1BCAB7858();
    sub_1BC957184(&qword_1EDA1B4D0, &qword_1EBD088B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA1B7E0);
  }

  return result;
}

unint64_t sub_1BCAB7858()
{
  result = qword_1EDA1B9D0;
  if (!qword_1EDA1B9D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD088D0);
    sub_1BC957184(&qword_1EDA1E990, &qword_1EBD08510);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA1B9D0);
  }

  return result;
}

uint64_t sub_1BCAB7910(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD088C8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1BCAB79BC()
{
  sub_1BC99B968();
  if (v0 <= 0x3F)
  {
    sub_1BC95A6B4();
    if (v1 <= 0x3F)
    {
      sub_1BCAB7A98();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_1BCAB7A98()
{
  result = qword_1EDA16808;
  if (!qword_1EDA16808)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_1EDA16808);
  }

  return result;
}

uint64_t sub_1BCAB7AE0(uint64_t *a1, int a2)
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

uint64_t sub_1BCAB7B20(uint64_t result, int a2, int a3)
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

unint64_t sub_1BCAB7B70()
{
  result = qword_1EDA1B9C0;
  if (!qword_1EDA1B9C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD088F8);
    sub_1BC957184(&qword_1EDA1B700, &qword_1EBD08900);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA1B9C0);
  }

  return result;
}

uint64_t sub_1BCAB7C28(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08438);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1BCAB7C9C(uint64_t a1@<X8>)
{
  v2 = (a1 + 1436);
  sub_1BCAB8430();
  v4 = v3;
  sub_1BCAB8430();
  *a1 = 0x4006666666666666;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0x3FF0000000000000;
  *(a1 + 24) = 48;
  *(a1 + 32) = xmmword_1BCE3BED0;
  *(a1 + 48) = xmmword_1BCE3BED0;
  *(a1 + 64) = 0x42C8000042480000;
  *(a1 + 72) = 0xC409800000000000;
  *(a1 + 80) = xmmword_1BCE3E630;
  *(a1 + 96) = xmmword_1BCE4A9E0;
  *(a1 + 112) = 0x3E851EB83E4CCCCCLL;
  *(a1 + 128) = xmmword_1BCE4A9F0;
  *(a1 + 144) = xmmword_1BCE4AA00;
  *(a1 + 160) = xmmword_1BCE4AA10;
  *(a1 + 176) = 1147207680;
  *(a1 + 184) = 0x3E4CCCCC3DF5C28FLL;
  *(a1 + 192) = xmmword_1BCE4AA20;
  *(a1 + 208) = xmmword_1BCE4AA30;
  *(a1 + 224) = xmmword_1BCE3C660;
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
  *(a1 + 712) = 0x404000003FC00000;
  *(a1 + 720) = 0x41860000415DEB85;
  *(a1 + 728) = 1100009177;
  *(a1 + 736) = 1;
  *(a1 + 744) = 4;
  *(a1 + 752) = xmmword_1BCE4AA40;
  *(a1 + 768) = 0xD000000000000010;
  *(a1 + 776) = 0x80000001BCE79860;
  *(a1 + 784) = 0xD000000000000014;
  *(a1 + 792) = 0x80000001BCE79880;
  *(a1 + 800) = 10;
  *(a1 + 816) = _Q0;
  *(a1 + 832) = 1065353216;
  *(a1 + 840) = 0x4019999A3F19999ALL;
  *(a1 + 848) = 0x4100000040E00000;
  *(a1 + 856) = 0x42480000BF800000;
  *(a1 + 864) = 1;
  *(a1 + 872) = 6;
  *(a1 + 880) = xmmword_1BCE4AA50;
  *(a1 + 896) = 0x2073756C756D7543;
  *(a1 + 904) = 0xEB000000004D202DLL;
  *(a1 + 912) = 0x5F73756C756D7543;
  *(a1 + 920) = 0xEF4D656C676E6953;
  *(a1 + 928) = 15;
  *(a1 + 944) = _Q0;
  *(a1 + 960) = 1065353216;
  *(a1 + 968) = 0x400666663FACCCCCLL;
  *(a1 + 976) = 0x406000004009999ALL;
  *(a1 + 984) = 0x42480000BFF04DE0;
  *(a1 + 992) = 0;
  *(a1 + 1000) = 4;
  *(a1 + 1008) = xmmword_1BCE3D8A0;
  *(a1 + 1024) = 0x7970736957;
  *(a1 + 1032) = 0xE500000000000000;
  strcpy((a1 + 1040), "Wispy_Single");
  *(a1 + 1053) = 0;
  *(a1 + 1054) = -5120;
  *(a1 + 1056) = 6;
  *(a1 + 1072) = _Q0;
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
  *(a1 + 1200) = _Q0;
  *(a1 + 1216) = xmmword_1BCE4AA60;
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
  *(a1 + 1552) = xmmword_1BCE3F4F0;
  *(a1 + 1568) = 0x4248000042200000;
  *(a1 + 1584) = 0u;
  *(a1 + 1600) = xmmword_1BCE3D880;
  __asm { FMOV            V1.2S, #-30.0 }

  *(a1 + 1616) = -_D1;
  *(a1 + 1624) = 0x40000000;
  *(a1 + 1628) = 256;
  *(a1 + 1630) = 0u;
  *(a1 + 1649) = 16843009;
  *(a1 + 1646) = 16843009;
  *(a1 + 1656) = 0;
  *(a1 + 1657) = v13;
  *(a1 + 1659) = v14;
  *(a1 + 1660) = 1064397920;
  *(a1 + 1664) = 0x40C0000040A00000;
  *(a1 + 1672) = 3;
  *(a1 + 1680) = xmmword_1BCE499B0;
  *(a1 + 1696) = xmmword_1BCE4AA70;
  *(a1 + 1712) = xmmword_1BCE4AA80;
  *(a1 + 1728) = 0x3F0000003EB33333;
  *(a1 + 1736) = 0x3E800000453B8000;
  *(a1 + 1744) = 0u;
  *(a1 + 1760) = 9;
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
  *(a1 + 2288) = 0u;
  *(a1 + 2272) = 0u;
  *(a1 + 2304) = 3;
  *(a1 + 2312) = v4;
  *(a1 + 2320) = v12;
}

double sub_1BCAB8430()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07858);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1BCE3EBD0;
  *(v0 + 48) = xmmword_1BCE3F510;
  *(v0 + 64) = 0x420C000043480000;
  *(v0 + 80) = xmmword_1BCE3F520;
  *(v0 + 96) = xmmword_1BCE3F530;
  *(v0 + 112) = xmmword_1BCE3F540;
  *(v0 + 128) = xmmword_1BCE3F550;
  *(v0 + 4176) = xmmword_1BCE4AC80;
  *(v0 + 4240) = xmmword_1BCE4ACC0;
  *(v0 + 4912) = xmmword_1BCE3CE40;
  *(v0 + 6128) = xmmword_1BCE3CE40;
  *(v0 + 4928) = 1149861888;
  *(v0 + 6144) = 1149861888;
  *(v0 + 4944) = xmmword_1BCE42DB0;
  *(v0 + 6160) = xmmword_1BCE42DB0;
  *(v0 + 4976) = xmmword_1BCE42DC0;
  *(v0 + 6192) = xmmword_1BCE42DC0;
  *(v0 + 4992) = xmmword_1BCE42DD0;
  *(v0 + 6208) = xmmword_1BCE42DD0;
  *(v0 + 5008) = xmmword_1BCE3EEF0;
  *(v0 + 6224) = xmmword_1BCE3EEF0;
  *(v0 + 5024) = xmmword_1BCE3EF00;
  *(v0 + 6240) = xmmword_1BCE3EF00;
  *(v0 + 5104) = xmmword_1BCE40190;
  *(v0 + 6320) = xmmword_1BCE40190;
  *(v0 + 5120) = xmmword_1BCE401A0;
  *(v0 + 6336) = xmmword_1BCE401A0;
  *(v0 + 5136) = xmmword_1BCE42E00;
  *(v0 + 6352) = xmmword_1BCE42E00;
  *(v0 + 5152) = xmmword_1BCE42E10;
  *(v0 + 6368) = xmmword_1BCE42E10;
  *(v0 + 5168) = xmmword_1BCE42E20;
  *(v0 + 6384) = xmmword_1BCE42E20;
  *(v0 + 5184) = xmmword_1BCE42E30;
  *(v0 + 6400) = xmmword_1BCE42E30;
  *(v0 + 5200) = xmmword_1BCE401B0;
  *(v0 + 6416) = xmmword_1BCE401B0;
  *(v0 + 5232) = xmmword_1BCE4ACF0;
  *(v0 + 6448) = xmmword_1BCE4ACF0;
  *(v0 + 5264) = xmmword_1BCE3E9D0;
  *(v0 + 6480) = xmmword_1BCE3E9D0;
  *(v0 + 5360) = xmmword_1BCE4AD00;
  *(v0 + 6576) = xmmword_1BCE4AD00;
  *(v0 + 5376) = xmmword_1BCE4AD10;
  *(v0 + 6592) = xmmword_1BCE4AD10;
  *(v0 + 5392) = xmmword_1BCE4AD20;
  *(v0 + 6608) = xmmword_1BCE4AD20;
  *(v0 + 5408) = xmmword_1BCE40180;
  *(v0 + 6624) = xmmword_1BCE40180;
  *(v0 + 5424) = xmmword_1BCE4AD30;
  *(v0 + 6640) = xmmword_1BCE4AD30;
  *(v0 + 5440) = xmmword_1BCE3F690;
  *(v0 + 6656) = xmmword_1BCE3F690;
  *(v0 + 5456) = xmmword_1BCE401C0;
  *(v0 + 6672) = xmmword_1BCE401C0;
  *(v0 + 5872) = xmmword_1BCE4AD40;
  *(v0 + 7088) = xmmword_1BCE4AD40;
  *(v0 + 5888) = xmmword_1BCE4AD50;
  *(v0 + 7104) = xmmword_1BCE4AD50;
  *(v0 + 5904) = xmmword_1BCE4AD60;
  *(v0 + 7120) = xmmword_1BCE4AD60;
  *(v0 + 3696) = xmmword_1BCE3EE30;
  *(v0 + 7344) = xmmword_1BCE3EE30;
  *(v0 + 3712) = 1145569280;
  *(v0 + 7360) = 1145569280;
  *(v0 + 3728) = xmmword_1BCE3E140;
  *(v0 + 7376) = xmmword_1BCE3E140;
  *(v0 + 3744) = xmmword_1BCE3E150;
  *(v0 + 7392) = xmmword_1BCE3E150;
  *(v0 + 3760) = xmmword_1BCE3F920;
  *(v0 + 7408) = xmmword_1BCE3F920;
  *(v0 + 3776) = xmmword_1BCE3F930;
  *(v0 + 7424) = xmmword_1BCE3F930;
  *(v0 + 3904) = xmmword_1BCE3F950;
  *(v0 + 7552) = xmmword_1BCE3F950;
  *(v0 + 3920) = xmmword_1BCE42CE0;
  *(v0 + 7568) = xmmword_1BCE42CE0;
  *(v0 + 3952) = xmmword_1BCE3F970;
  *(v0 + 7600) = xmmword_1BCE3F970;
  *(v0 + 3968) = xmmword_1BCE3F980;
  *(v0 + 7616) = xmmword_1BCE3F980;
  *(v0 + 3984) = xmmword_1BCE3F990;
  *(v0 + 7632) = xmmword_1BCE3F990;
  *(v0 + 4000) = xmmword_1BCE3C9D0;
  *(v0 + 5216) = xmmword_1BCE3C9D0;
  *(v0 + 6432) = xmmword_1BCE3C9D0;
  *(v0 + 7648) = xmmword_1BCE3C9D0;
  *(v0 + 4016) = xmmword_1BCE4AC50;
  *(v0 + 7664) = xmmword_1BCE4AC50;
  *(v0 + 4032) = 1063675494;
  *(v0 + 5248) = 1063675494;
  *(v0 + 6464) = 1063675494;
  *(v0 + 7680) = 1063675494;
  *(v0 + 4048) = xmmword_1BCE3CDC0;
  *(v0 + 7696) = xmmword_1BCE3CDC0;
  *(v0 + 4144) = xmmword_1BCE4AC60;
  *(v0 + 7792) = xmmword_1BCE4AC60;
  *(v0 + 4160) = xmmword_1BCE4AC70;
  *(v0 + 7808) = xmmword_1BCE4AC70;
  *(v0 + 7824) = xmmword_1BCE4AD70;
  *(v0 + 4192) = xmmword_1BCE4AC90;
  *(v0 + 7840) = xmmword_1BCE4AC90;
  *(v0 + 4208) = xmmword_1BCE4ACA0;
  *(v0 + 7856) = xmmword_1BCE4ACA0;
  *(v0 + 4224) = xmmword_1BCE4ACB0;
  *(v0 + 7872) = xmmword_1BCE4ACB0;
  *(v0 + 7888) = xmmword_1BCE4AD80;
  *(v0 + 4256) = xmmword_1BCE3E220;
  *(v0 + 5472) = xmmword_1BCE3E220;
  *(v0 + 6688) = xmmword_1BCE3E220;
  *(v0 + 7904) = xmmword_1BCE3E220;
  *(v0 + 4672) = xmmword_1BCE4ACE0;
  *(v0 + 8320) = xmmword_1BCE4ACE0;
  *(v0 + 4656) = xmmword_1BCE4ACD0;
  *(v0 + 4688) = xmmword_1BCE4ACD0;
  *(v0 + 8304) = xmmword_1BCE4ACD0;
  *(v0 + 8336) = xmmword_1BCE4ACD0;
  *(v0 + 4704) = xmmword_1BCE3DA70;
  *(v0 + 5920) = xmmword_1BCE3DA70;
  *(v0 + 7136) = xmmword_1BCE3DA70;
  *(v0 + 8352) = xmmword_1BCE3DA70;
  *(v0 + 2480) = xmmword_1BCE3F7B0;
  *(v0 + 8560) = xmmword_1BCE3F7B0;
  *(v0 + 2496) = 1137180672;
  *(v0 + 8576) = 1137180672;
  *(v0 + 2512) = xmmword_1BCE3F7C0;
  *(v0 + 8592) = xmmword_1BCE3F7C0;
  *(v0 + 2528) = xmmword_1BCE3F7D0;
  *(v0 + 8608) = xmmword_1BCE3F7D0;
  *(v0 + 2544) = xmmword_1BCE3F7E0;
  *(v0 + 8624) = xmmword_1BCE3F7E0;
  *(v0 + 2560) = xmmword_1BCE3F7F0;
  *(v0 + 8640) = xmmword_1BCE3F7F0;
  *(v0 + 2576) = xmmword_1BCE3E180;
  *(v0 + 3792) = xmmword_1BCE3E180;
  *(v0 + 7440) = xmmword_1BCE3E180;
  *(v0 + 8656) = xmmword_1BCE3E180;
  *(v0 + 2592) = xmmword_1BCE3CB90;
  *(v0 + 3808) = xmmword_1BCE3CB90;
  *(v0 + 7456) = xmmword_1BCE3CB90;
  *(v0 + 8672) = xmmword_1BCE3CB90;
  *(v0 + 2672) = xmmword_1BCE3F940;
  *(v0 + 3888) = xmmword_1BCE3F940;
  *(v0 + 7536) = xmmword_1BCE3F940;
  *(v0 + 8752) = xmmword_1BCE3F940;
  *(v0 + 2688) = xmmword_1BCE49460;
  *(v0 + 8768) = xmmword_1BCE49460;
  *(v0 + 2704) = xmmword_1BCE400E0;
  *(v0 + 8784) = xmmword_1BCE400E0;
  *(v0 + 2720) = xmmword_1BCE3F830;
  *(v0 + 8800) = xmmword_1BCE3F830;
  *(v0 + 2736) = xmmword_1BCE3F840;
  *(v0 + 8816) = xmmword_1BCE3F840;
  *(v0 + 2752) = xmmword_1BCE3F850;
  *(v0 + 8832) = xmmword_1BCE3F850;
  *(v0 + 2768) = xmmword_1BCE3F860;
  *(v0 + 8848) = xmmword_1BCE3F860;
  *(v0 + 2784) = xmmword_1BCE3F870;
  *(v0 + 8864) = xmmword_1BCE3F870;
  *(v0 + 2800) = xmmword_1BCE4AB90;
  *(v0 + 8880) = xmmword_1BCE4AB90;
  v1 = vdup_n_s32(0x3F4CCCCDu);
  *(v0 + 2816) = v1;
  *(v0 + 8896) = v1;
  *(v0 + 2928) = xmmword_1BCE4ABA0;
  *(v0 + 9008) = xmmword_1BCE4ABA0;
  *(v0 + 2944) = xmmword_1BCE4ABB0;
  *(v0 + 9024) = xmmword_1BCE4ABB0;
  *(v0 + 2960) = xmmword_1BCE4ABC0;
  *(v0 + 9040) = xmmword_1BCE4ABC0;
  *(v0 + 2976) = xmmword_1BCE4ABD0;
  *(v0 + 9056) = xmmword_1BCE4ABD0;
  *(v0 + 2992) = xmmword_1BCE4ABE0;
  *(v0 + 9072) = xmmword_1BCE4ABE0;
  *(v0 + 3008) = xmmword_1BCE4ABF0;
  *(v0 + 9088) = xmmword_1BCE4ABF0;
  *(v0 + 3024) = xmmword_1BCE4AC00;
  *(v0 + 9104) = xmmword_1BCE4AC00;
  *(v0 + 3040) = xmmword_1BCE4AC10;
  *(v0 + 9120) = xmmword_1BCE4AC10;
  *(v0 + 3440) = xmmword_1BCE4AC20;
  *(v0 + 9520) = xmmword_1BCE4AC20;
  *(v0 + 3456) = xmmword_1BCE42BF0;
  *(v0 + 9536) = xmmword_1BCE42BF0;
  *(v0 + 3472) = xmmword_1BCE4AC30;
  *(v0 + 9552) = xmmword_1BCE4AC30;
  *(v0 + 3488) = xmmword_1BCE4AC40;
  *(v0 + 9568) = xmmword_1BCE4AC40;
  *(v0 + 1712) = xmmword_1BCE4AB50;
  *(v0 + 10224) = xmmword_1BCE4AB50;
  *(v0 + 1728) = xmmword_1BCE4AB60;
  *(v0 + 10240) = xmmword_1BCE4AB60;
  *(v0 + 1744) = xmmword_1BCE4AB70;
  *(v0 + 10256) = xmmword_1BCE4AB70;
  *(v0 + 1808) = xmmword_1BCE4AB80;
  *(v0 + 10320) = xmmword_1BCE4AB80;
  *(v0 + 144) = xmmword_1BCE3F560;
  *(v0 + 160) = xmmword_1BCE3F570;
  *(v0 + 1264) = xmmword_1BCE3F510;
  *(v0 + 9776) = xmmword_1BCE3F510;
  *(v0 + 10992) = xmmword_1BCE3F510;
  __asm { FMOV            V6.2D, #1.0 }

  *(v0 + 1280) = 0x420C000043480000;
  *(v0 + 9792) = 0x420C000043480000;
  *(v0 + 11008) = 0x420C000043480000;
  *(v0 + 1296) = xmmword_1BCE3F520;
  *(v0 + 9808) = xmmword_1BCE3F520;
  *(v0 + 11024) = xmmword_1BCE3F520;
  *(v0 + 240) = xmmword_1BCE4AA90;
  *(v0 + 256) = xmmword_1BCE4AAA0;
  *(v0 + 1312) = xmmword_1BCE3F530;
  *(v0 + 9824) = xmmword_1BCE3F530;
  *(v0 + 11040) = xmmword_1BCE3F530;
  *(v0 + 272) = xmmword_1BCE3F590;
  *(v0 + 1328) = xmmword_1BCE3F540;
  *(v0 + 9840) = xmmword_1BCE3F540;
  *(v0 + 11056) = xmmword_1BCE3F540;
  *(v0 + 1344) = xmmword_1BCE3F550;
  *(v0 + 9856) = xmmword_1BCE3F550;
  *(v0 + 11072) = xmmword_1BCE3F550;
  *(v0 + 304) = xmmword_1BCE3F5B0;
  *(v0 + 320) = xmmword_1BCE3F5C0;
  *(v0 + 1360) = xmmword_1BCE3F560;
  *(v0 + 9872) = xmmword_1BCE3F560;
  *(v0 + 11088) = xmmword_1BCE3F560;
  *(v0 + 1376) = xmmword_1BCE3F570;
  *(v0 + 9888) = xmmword_1BCE3F570;
  *(v0 + 11104) = xmmword_1BCE3F570;
  *(v0 + 336) = xmmword_1BCE3F5D0;
  *(v0 + 352) = xmmword_1BCE3F5E0;
  *(v0 + 1456) = xmmword_1BCE4AA90;
  *(v0 + 9968) = xmmword_1BCE4AA90;
  *(v0 + 11184) = xmmword_1BCE4AA90;
  *(v0 + 368) = xmmword_1BCE4AAB0;
  *(v0 + 1472) = xmmword_1BCE4AAA0;
  *(v0 + 9984) = xmmword_1BCE4AAA0;
  *(v0 + 11200) = xmmword_1BCE4AAA0;
  *(v0 + 384) = 0x3F8000003F4CCCCDLL;
  *(v0 + 1488) = xmmword_1BCE3F590;
  *(v0 + 10000) = xmmword_1BCE3F590;
  *(v0 + 11216) = xmmword_1BCE3F590;
  *(v0 + 1520) = xmmword_1BCE3F5B0;
  *(v0 + 10032) = xmmword_1BCE3F5B0;
  *(v0 + 11248) = xmmword_1BCE3F5B0;
  result = 1.0;
  *(v0 + 1536) = xmmword_1BCE3F5C0;
  *(v0 + 10048) = xmmword_1BCE3F5C0;
  *(v0 + 11264) = xmmword_1BCE3F5C0;
  *(v0 + 1552) = xmmword_1BCE3F5D0;
  *(v0 + 10064) = xmmword_1BCE3F5D0;
  *(v0 + 11280) = xmmword_1BCE3F5D0;
  *(v0 + 8368) = _Q6;
  *(v0 + 1568) = xmmword_1BCE3F5E0;
  *(v0 + 8240) = _Q6;
  *(v0 + 8256) = xmmword_1BCE3C8C0;
  *(v0 + 8272) = _Q6;
  *(v0 + 8288) = xmmword_1BCE3DAE0;
  *(v0 + 10080) = xmmword_1BCE3F5E0;
  *(v0 + 11296) = xmmword_1BCE3F5E0;
  *(v0 + 8176) = _Q6;
  *(v0 + 0x2000) = _Q6;
  *(v0 + 8208) = _Q6;
  *(v0 + 8224) = _Q6;
  *(v0 + 8000) = xmmword_1BCE3A880;
  *(v0 + 8096) = xmmword_1BCE3DD90;
  *(v0 + 8112) = _Q6;
  *(v0 + 8128) = _Q6;
  *(v0 + 8144) = _Q6;
  *(v0 + 8160) = _Q6;
  *(v0 + 8016) = _Q6;
  *(v0 + 8032) = xmmword_1BCE3C8C0;
  *(v0 + 8048) = _Q6;
  *(v0 + 8064) = _Q6;
  *(v0 + 8080) = _Q6;
  *(v0 + 432) = 0u;
  *(v0 + 448) = 0u;
  *(v0 + 7920) = _Q6;
  *(v0 + 7936) = xmmword_1BCE3A880;
  *(v0 + 7952) = _Q6;
  *(v0 + 7968) = _Q6;
  *(v0 + 7984) = _Q6;
  *(v0 + 1584) = xmmword_1BCE4AAB0;
  *(v0 + 10096) = xmmword_1BCE4AAB0;
  *(v0 + 11312) = xmmword_1BCE4AAB0;
  *(v0 + 1600) = 0x3F8000003F4CCCCDLL;
  *(v0 + 10112) = 0x3F8000003F4CCCCDLL;
  *(v0 + 11328) = 0x3F8000003F4CCCCDLL;
  *(v0 + 7776) = xmmword_1BCE3DAE0;
  *(v0 + 496) = xmmword_1BCE4AAC0;
  *(v0 + 512) = xmmword_1BCE4AAD0;
  *(v0 + 7720) = 0;
  *(v0 + 7744) = 0u;
  *(v0 + 7728) = 0u;
  *(v0 + 7760) = _Q6;
  *(v0 + 1664) = 0u;
  *(v0 + 1648) = 0u;
  *(v0 + 2880) = 0u;
  *(v0 + 7688) = 0x3FEF0AE2E0000000;
  *(v0 + 7712) = 0x3FF0000000000000;
  *(v0 + 2864) = 0u;
  *(v0 + 4096) = 0u;
  *(v0 + 4080) = 0u;
  *(v0 + 5312) = 0u;
  *(v0 + 5296) = 0u;
  *(v0 + 7584) = _Q6;
  *(v0 + 6528) = 0u;
  *(v0 + 6512) = 0u;
  *(v0 + 7472) = _Q6;
  *(v0 + 7488) = _Q6;
  *(v0 + 7504) = _Q6;
  *(v0 + 7520) = _Q6;
  *(v0 + 8960) = 0u;
  *(v0 + 8944) = 0u;
  *(v0 + 10176) = 0u;
  *(v0 + 10160) = 0u;
  *(v0 + 11392) = 0u;
  *(v0 + 11376) = 0u;
  *(v0 + 7368) = 1058642330;
  *(v0 + 11440) = xmmword_1BCE4AAC0;
  *(v0 + 7337) = *v13;
  *(v0 + 7312) = 0x3FF0000000000000;
  *(v0 + 7328) = 0x4040800000000000;
  *(v0 + 7336) = 1;
  *(v0 + 7340) = *&v13[3];
  *(v0 + 11456) = xmmword_1BCE4AAD0;
  *(v0 + 7184) = _Q6;
  *(v0 + 7264) = _Q6;
  *(v0 + 7280) = _Q6;
  *(v0 + 7296) = _Q6;
  *(v0 + 7200) = xmmword_1BCE3DAE0;
  *(v0 + 7216) = _Q6;
  *(v0 + 7232) = _Q6;
  *(v0 + 7248) = 0x4170000042480000;
  *(v0 + 7256) = 0x3FF0000000000000;
  *(v0 + 528) = xmmword_1BCE4AAE0;
  *(v0 + 544) = xmmword_1BCE4AAF0;
  *(v0 + 7152) = _Q6;
  *(v0 + 7168) = xmmword_1BCE3C8C0;
  *(v0 + 11472) = xmmword_1BCE4AAE0;
  *(v0 + 7008) = _Q6;
  *(v0 + 7024) = _Q6;
  *(v0 + 7040) = xmmword_1BCE3C8C0;
  *(v0 + 7056) = _Q6;
  *(v0 + 7072) = xmmword_1BCE3DAE0;
  *(v0 + 6912) = _Q6;
  *(v0 + 6928) = _Q6;
  *(v0 + 6944) = _Q6;
  *(v0 + 6960) = _Q6;
  *(v0 + 6976) = _Q6;
  *(v0 + 6992) = _Q6;
  *(v0 + 6816) = xmmword_1BCE3C8C0;
  *(v0 + 6832) = _Q6;
  *(v0 + 6848) = _Q6;
  *(v0 + 6864) = _Q6;
  *(v0 + 6880) = xmmword_1BCE3DD90;
  *(v0 + 6896) = _Q6;
  *(v0 + 1760) = xmmword_1BCE4AAF0;
  *(v0 + 6768) = _Q6;
  *(v0 + 6784) = xmmword_1BCE3A880;
  *(v0 + 6800) = _Q6;
  *(v0 + 10272) = xmmword_1BCE4AAF0;
  *(v0 + 11488) = xmmword_1BCE4AAF0;
  *(v0 + 6704) = _Q6;
  *(v0 + 6720) = xmmword_1BCE3A880;
  *(v0 + 6736) = _Q6;
  *(v0 + 6752) = _Q6;
  *(v0 + 560) = xmmword_1BCE3F630;
  *(v0 + 576) = xmmword_1BCE4AB00;
  *(v0 + 1776) = xmmword_1BCE3F630;
  *(v0 + 10288) = xmmword_1BCE3F630;
  *(v0 + 11504) = xmmword_1BCE3F630;
  *(v0 + 1792) = xmmword_1BCE4AB00;
  *(v0 + 6544) = _Q6;
  *(v0 + 6560) = xmmword_1BCE3DAE0;
  *(v0 + 10304) = xmmword_1BCE4AB00;
  *(v0 + 11520) = xmmword_1BCE4AB00;
  *(v0 + 11536) = xmmword_1BCE4AB10;
  *(v0 + 592) = xmmword_1BCE4AB10;
  *(v0 + 608) = xmmword_1BCE4AB20;
  *(v0 + 6472) = 0x3FF0000000000000;
  *(v0 + 6496) = 0x3FF0000000000000;
  *(v0 + 6504) = 0;
  *(v0 + 1824) = xmmword_1BCE4AB20;
  *(v0 + 10336) = xmmword_1BCE4AB20;
  *(v0 + 11552) = xmmword_1BCE4AB20;
  *(v0 + 640) = xmmword_1BCE3A880;
  *(v0 + 704) = xmmword_1BCE3A880;
  *(v0 + 1856) = xmmword_1BCE3A880;
  *(v0 + 1920) = xmmword_1BCE3A880;
  *(v0 + 3072) = xmmword_1BCE3A880;
  *(v0 + 3136) = xmmword_1BCE3A880;
  *(v0 + 6288) = _Q6;
  *(v0 + 6304) = _Q6;
  *(v0 + 4288) = xmmword_1BCE3A880;
  *(v0 + 4352) = xmmword_1BCE3A880;
  *(v0 + 6256) = _Q6;
  *(v0 + 6272) = _Q6;
  *(v0 + 5504) = xmmword_1BCE3A880;
  *(v0 + 5568) = xmmword_1BCE3A880;
  *(v0 + 5984) = xmmword_1BCE3DAE0;
  *(v0 + 6000) = _Q6;
  *(v0 + 6176) = _Q6;
  *(v0 + 6016) = _Q6;
  *(v0 + 6064) = _Q6;
  *(v0 + 6121) = *v12;
  *(v0 + 6152) = 1062836634;
  *(v0 + 6080) = _Q6;
  *(v0 + 6096) = 0x3FF0000000000000;
  *(v0 + 6112) = 0x404E000000000000;
  *(v0 + 6120) = 1;
  *(v0 + 6124) = *&v12[3];
  *(v0 + 6032) = 0x4170000042480000;
  *(v0 + 6040) = 0x3FF0000000000000;
  *(v0 + 6048) = _Q6;
  *(v0 + 9152) = xmmword_1BCE3A880;
  *(v0 + 9216) = xmmword_1BCE3A880;
  *(v0 + 10368) = xmmword_1BCE3A880;
  *(v0 + 10432) = xmmword_1BCE3A880;
  *(v0 + 11584) = xmmword_1BCE3A880;
  *(v0 + 11648) = xmmword_1BCE3A880;
  *(v0 + 5936) = _Q6;
  *(v0 + 5952) = xmmword_1BCE3C8C0;
  *(v0 + 5968) = _Q6;
  *(v0 + 800) = xmmword_1BCE3DD90;
  *(v0 + 5792) = _Q6;
  *(v0 + 5808) = _Q6;
  *(v0 + 5824) = xmmword_1BCE3C8C0;
  *(v0 + 5840) = _Q6;
  *(v0 + 5856) = xmmword_1BCE3DAE0;
  *(v0 + 5696) = _Q6;
  *(v0 + 5712) = _Q6;
  *(v0 + 5728) = _Q6;
  *(v0 + 5744) = _Q6;
  *(v0 + 5760) = _Q6;
  *(v0 + 5776) = _Q6;
  *(v0 + 5600) = xmmword_1BCE3C8C0;
  *(v0 + 5616) = _Q6;
  *(v0 + 5632) = _Q6;
  *(v0 + 5648) = _Q6;
  *(v0 + 5664) = xmmword_1BCE3DD90;
  *(v0 + 5680) = _Q6;
  *(v0 + 5520) = _Q6;
  *(v0 + 5536) = _Q6;
  *(v0 + 5552) = _Q6;
  *(v0 + 5584) = _Q6;
  *(v0 + 2016) = xmmword_1BCE3DD90;
  *(v0 + 3232) = xmmword_1BCE3DD90;
  *(v0 + 4448) = xmmword_1BCE3DD90;
  *(v0 + 5488) = _Q6;
  *(v0 + 9312) = xmmword_1BCE3DD90;
  *(v0 + 10528) = xmmword_1BCE3DD90;
  *(v0 + 11744) = xmmword_1BCE3DD90;
  *(v0 + 1024) = xmmword_1BCE4AB30;
  *(v0 + 2240) = xmmword_1BCE4AB30;
  *(v0 + 10752) = xmmword_1BCE4AB30;
  *(v0 + 11968) = xmmword_1BCE4AB30;
  *(v0 + 1008) = xmmword_1BCE42D70;
  *(v0 + 1040) = xmmword_1BCE42D70;
  *(v0 + 5288) = 0;
  *(v0 + 5328) = _Q6;
  *(v0 + 5344) = xmmword_1BCE3DAE0;
  *(v0 + 2224) = xmmword_1BCE42D70;
  *(v0 + 2256) = xmmword_1BCE42D70;
  *(v0 + 5256) = 0x3FF0000000000000;
  *(v0 + 5280) = 0x3FF0000000000000;
  *(v0 + 10736) = xmmword_1BCE42D70;
  *(v0 + 10768) = xmmword_1BCE42D70;
  *(v0 + 11952) = xmmword_1BCE42D70;
  *(v0 + 11984) = xmmword_1BCE42D70;
  *(v0 + 1056) = xmmword_1BCE4AB40;
  *(v0 + 2272) = xmmword_1BCE4AB40;
  *(v0 + 10784) = xmmword_1BCE4AB40;
  *(v0 + 12000) = xmmword_1BCE4AB40;
  *(v0 + 736) = xmmword_1BCE3C8C0;
  *(v0 + 5056) = _Q6;
  *(v0 + 5072) = _Q6;
  *(v0 + 5088) = _Q6;
  *(v0 + 960) = xmmword_1BCE3C8C0;
  *(v0 + 1088) = xmmword_1BCE3C8C0;
  *(v0 + 1952) = xmmword_1BCE3C8C0;
  *(v0 + 2176) = xmmword_1BCE3C8C0;
  *(v0 + 4960) = _Q6;
  *(v0 + 5040) = _Q6;
  *(v0 + 2304) = xmmword_1BCE3C8C0;
  *(v0 + 3168) = xmmword_1BCE3C8C0;
  *(v0 + 3392) = xmmword_1BCE3C8C0;
  *(v0 + 4896) = 0x404E000000000000;
  *(v0 + 4904) = 0;
  *(v0 + 4905) = *v11;
  *(v0 + 4908) = *&v11[3];
  *(v0 + 4936) = 1062836634;
  *(v0 + 4816) = 0x4170000042480000;
  *(v0 + 4824) = 0x3FF0000000000000;
  *(v0 + 4832) = _Q6;
  *(v0 + 4848) = _Q6;
  *(v0 + 4864) = _Q6;
  *(v0 + 4880) = 0x3FF0000000000000;
  *(v0 + 4720) = _Q6;
  *(v0 + 4736) = xmmword_1BCE3C8C0;
  *(v0 + 4752) = _Q6;
  *(v0 + 4768) = xmmword_1BCE3DAE0;
  *(v0 + 4784) = _Q6;
  *(v0 + 4800) = _Q6;
  *(v0 + 3520) = xmmword_1BCE3C8C0;
  *(v0 + 4272) = _Q6;
  *(v0 + 4304) = _Q6;
  *(v0 + 4320) = _Q6;
  *(v0 + 4624) = _Q6;
  *(v0 + 4640) = xmmword_1BCE3DAE0;
  *(v0 + 4528) = _Q6;
  *(v0 + 4544) = _Q6;
  *(v0 + 4560) = _Q6;
  *(v0 + 4576) = _Q6;
  *(v0 + 4592) = _Q6;
  *(v0 + 4608) = xmmword_1BCE3C8C0;
  *(v0 + 4336) = _Q6;
  *(v0 + 4432) = _Q6;
  *(v0 + 4464) = _Q6;
  *(v0 + 4480) = _Q6;
  *(v0 + 4496) = _Q6;
  *(v0 + 4512) = _Q6;
  *(v0 + 4368) = _Q6;
  *(v0 + 4384) = xmmword_1BCE3C8C0;
  *(v0 + 4400) = _Q6;
  *(v0 + 4416) = _Q6;
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
  *(v0 + 2208) = xmmword_1BCE3DAE0;
  *(v0 + 2336) = xmmword_1BCE3DAE0;
  *(v0 + 4064) = 0x3FF0000000000000;
  *(v0 + 4072) = 0;
  *(v0 + 4112) = _Q6;
  *(v0 + 4128) = xmmword_1BCE3DAE0;
  *(v0 + 2912) = xmmword_1BCE3DAE0;
  *(v0 + 3424) = xmmword_1BCE3DAE0;
  *(v0 + 3552) = xmmword_1BCE3DAE0;
  *(v0 + 3824) = _Q6;
  *(v0 + 3840) = _Q6;
  *(v0 + 4040) = 0x3FEF0AE2E0000000;
  *(v0 + 3856) = _Q6;
  *(v0 + 3872) = _Q6;
  *(v0 + 3936) = _Q6;
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
  *(v0 + 3600) = 0x4170000042480000;
  *(v0 + 3616) = _Q6;
  *(v0 + 3632) = _Q6;
  *(v0 + 3689) = *v10;
  *(v0 + 3692) = *&v10[3];
  *(v0 + 3720) = 1058642330;
  *(v0 + 3648) = _Q6;
  *(v0 + 3664) = 0x3FF0000000000000;
  *(v0 + 3680) = 0x4040800000000000;
  *(v0 + 3688) = 0;
  *(v0 + 8464) = 0x4170000042480000;
  *(v0 + 9680) = 0x4170000042480000;
  *(v0 + 10896) = 0x4170000042480000;
  *(v0 + 12112) = 0x4170000042480000;
  *(v0 + 3536) = _Q6;
  *(v0 + 3568) = _Q6;
  *(v0 + 3584) = _Q6;
  *(v0 + 3608) = 0x3FF0000000000000;
  *(v0 + 464) = _Q6;
  *(v0 + 624) = _Q6;
  *(v0 + 688) = _Q6;
  *(v0 + 720) = _Q6;
  *(v0 + 784) = _Q6;
  *(v0 + 3504) = _Q6;
  *(v0 + 944) = _Q6;
  *(v0 + 976) = _Q6;
  *(v0 + 3344) = _Q6;
  *(v0 + 3360) = _Q6;
  *(v0 + 3376) = _Q6;
  *(v0 + 3408) = _Q6;
  *(v0 + 3248) = _Q6;
  *(v0 + 3264) = _Q6;
  *(v0 + 3280) = _Q6;
  *(v0 + 3296) = _Q6;
  *(v0 + 3312) = _Q6;
  *(v0 + 3328) = _Q6;
  *(v0 + 3152) = _Q6;
  *(v0 + 3184) = _Q6;
  *(v0 + 3200) = _Q6;
  *(v0 + 3216) = _Q6;
  *(v0 + 176) = _Q6;
  *(v0 + 192) = _Q6;
  *(v0 + 3056) = _Q6;
  *(v0 + 3088) = _Q6;
  *(v0 + 3104) = _Q6;
  *(v0 + 3120) = _Q6;
  *(v0 + 208) = _Q6;
  *(v0 + 224) = _Q6;
  *(v0 + 288) = _Q6;
  *(v0 + 400) = _Q6;
  *(v0 + 656) = _Q6;
  *(v0 + 672) = _Q6;
  *(v0 + 752) = _Q6;
  *(v0 + 768) = _Q6;
  *(v0 + 816) = _Q6;
  *(v0 + 832) = _Q6;
  *(v0 + 848) = _Q6;
  *(v0 + 864) = _Q6;
  *(v0 + 2896) = _Q6;
  *(v0 + 880) = _Q6;
  *(v0 + 896) = _Q6;
  *(v0 + 2824) = 0x3FF0000000000000;
  *(v0 + 2832) = _Q6;
  *(v0 + 2848) = 0x3FF0000000000000;
  *(v0 + 2856) = 0;
  *(v0 + 912) = _Q6;
  *(v0 + 928) = _Q6;
  *(v0 + 1072) = _Q6;
  *(v0 + 1104) = _Q6;
  *(v0 + 1136) = _Q6;
  *(v0 + 1152) = _Q6;
  *(v0 + 1176) = 0x3FF0000000000000;
  *(v0 + 1184) = _Q6;
  *(v0 + 1200) = _Q6;
  *(v0 + 1216) = _Q6;
  *(v0 + 2640) = _Q6;
  *(v0 + 2656) = _Q6;
  *(v0 + 1232) = 0x3FF0000000000000;
  *(v0 + 1257) = *v8;
  *(v0 + 2608) = _Q6;
  *(v0 + 2624) = _Q6;
  *(v0 + 1248) = 0xC031FFFFFFFFFFFFLL;
  *(v0 + 1256) = 0;
  *(v0 + 1260) = *&v8[3];
  *(v0 + 1288) = 1036831949;
  *(v0 + 1392) = _Q6;
  *(v0 + 1408) = _Q6;
  *(v0 + 2464) = 0xC018000000000000;
  *(v0 + 2472) = 0;
  *(v0 + 2473) = *v9;
  *(v0 + 2476) = *&v9[3];
  *(v0 + 2504) = 1053609165;
  *(v0 + 1424) = _Q6;
  *(v0 + 2392) = 0x3FF0000000000000;
  *(v0 + 2400) = _Q6;
  *(v0 + 2416) = _Q6;
  *(v0 + 2432) = _Q6;
  *(v0 + 2448) = 0x3FF0000000000000;
  *(v0 + 1440) = _Q6;
  *(v0 + 1504) = _Q6;
  *(v0 + 2288) = _Q6;
  *(v0 + 2320) = _Q6;
  *(v0 + 2352) = _Q6;
  *(v0 + 2368) = _Q6;
  *(v0 + 1608) = 0x3FF0000000000000;
  *(v0 + 1616) = _Q6;
  *(v0 + 1632) = 0x3FF0000000000000;
  *(v0 + 1640) = 0;
  *(v0 + 1680) = _Q6;
  *(v0 + 2192) = _Q6;
  *(v0 + 1840) = _Q6;
  *(v0 + 2096) = _Q6;
  *(v0 + 2112) = _Q6;
  *(v0 + 2128) = _Q6;
  *(v0 + 2144) = _Q6;
  *(v0 + 2160) = _Q6;
  *(v0 + 1872) = _Q6;
  *(v0 + 2000) = _Q6;
  *(v0 + 2032) = _Q6;
  *(v0 + 2048) = _Q6;
  *(v0 + 2064) = _Q6;
  *(v0 + 2080) = _Q6;
  *(v0 + 1888) = _Q6;
  *(v0 + 1904) = _Q6;
  *(v0 + 1936) = _Q6;
  *(v0 + 1968) = _Q6;
  *(v0 + 1984) = _Q6;
  *(v0 + 8400) = _Q6;
  *(v0 + 8432) = _Q6;
  *(v0 + 8448) = _Q6;
  *(v0 + 8480) = _Q6;
  *(v0 + 8496) = _Q6;
  *(v0 + 8512) = _Q6;
  *(v0 + 8688) = _Q6;
  *(v0 + 8704) = _Q6;
  *(v0 + 8720) = _Q6;
  *(v0 + 8736) = _Q6;
  *(v0 + 8912) = _Q6;
  *(v0 + 8976) = _Q6;
  *(v0 + 9136) = _Q6;
  *(v0 + 9168) = _Q6;
  *(v0 + 9184) = _Q6;
  *(v0 + 9200) = _Q6;
  *(v0 + 9232) = _Q6;
  *(v0 + 9264) = _Q6;
  *(v0 + 9280) = _Q6;
  *(v0 + 9296) = _Q6;
  *(v0 + 9328) = _Q6;
  *(v0 + 9344) = _Q6;
  *(v0 + 9360) = _Q6;
  *(v0 + 9376) = _Q6;
  *(v0 + 9392) = _Q6;
  *(v0 + 9408) = _Q6;
  *(v0 + 9424) = _Q6;
  *(v0 + 9440) = _Q6;
  *(v0 + 9456) = _Q6;
  *(v0 + 9488) = _Q6;
  *(v0 + 9584) = _Q6;
  *(v0 + 9616) = _Q6;
  *(v0 + 9648) = _Q6;
  *(v0 + 9664) = _Q6;
  *(v0 + 9696) = _Q6;
  *(v0 + 9712) = _Q6;
  *(v0 + 9728) = _Q6;
  *(v0 + 9904) = _Q6;
  *(v0 + 9920) = _Q6;
  *(v0 + 9936) = _Q6;
  *(v0 + 9952) = _Q6;
  *(v0 + 10016) = _Q6;
  *(v0 + 10128) = _Q6;
  *(v0 + 10192) = _Q6;
  *(v0 + 10352) = _Q6;
  *(v0 + 10384) = _Q6;
  *(v0 + 10400) = _Q6;
  *(v0 + 10416) = _Q6;
  *(v0 + 10448) = _Q6;
  *(v0 + 10480) = _Q6;
  *(v0 + 10496) = _Q6;
  *(v0 + 10512) = _Q6;
  *(v0 + 10544) = _Q6;
  *(v0 + 10560) = _Q6;
  *(v0 + 10576) = _Q6;
  *(v0 + 10592) = _Q6;
  *(v0 + 10608) = _Q6;
  *(v0 + 10624) = _Q6;
  *(v0 + 10640) = _Q6;
  *(v0 + 10656) = _Q6;
  *(v0 + 10672) = _Q6;
  *(v0 + 10704) = _Q6;
  *(v0 + 10800) = _Q6;
  *(v0 + 10832) = _Q6;
  *(v0 + 10864) = _Q6;
  *(v0 + 10880) = _Q6;
  *(v0 + 10912) = _Q6;
  *(v0 + 10928) = _Q6;
  *(v0 + 10944) = _Q6;
  *(v0 + 11120) = _Q6;
  *(v0 + 11136) = _Q6;
  *(v0 + 11152) = _Q6;
  *(v0 + 11168) = _Q6;
  *(v0 + 11232) = _Q6;
  *(v0 + 11344) = _Q6;
  *(v0 + 11408) = _Q6;
  *(v0 + 11568) = _Q6;
  *(v0 + 11600) = _Q6;
  *(v0 + 11616) = _Q6;
  *(v0 + 11632) = _Q6;
  *(v0 + 11664) = _Q6;
  *(v0 + 11696) = _Q6;
  *(v0 + 11712) = _Q6;
  *(v0 + 11728) = _Q6;
  *(v0 + 11760) = _Q6;
  *(v0 + 11776) = _Q6;
  *(v0 + 11792) = _Q6;
  *(v0 + 11808) = _Q6;
  *(v0 + 11824) = _Q6;
  *(v0 + 11840) = _Q6;
  *(v0 + 11856) = _Q6;
  *(v0 + 11872) = _Q6;
  *(v0 + 11888) = _Q6;
  *(v0 + 11920) = _Q6;
  *(v0 + 12016) = _Q6;
  *(v0 + 12048) = _Q6;
  *(v0 + 12080) = _Q6;
  *(v0 + 12096) = _Q6;
  *(v0 + 12128) = _Q6;
  *(v0 + 12144) = _Q6;
  *(v0 + 12160) = _Q6;
  *(v0 + 416) = 0x3FF0000000000000;
  *(v0 + 424) = 0;
  *(v0 + 32) = 0xC056800000000000;
  *(v0 + 392) = 0x3FF0000000000000;
  *(v0 + 40) = 0;
  *(v0 + 72) = 1036831949;
  *(v0 + 8472) = 0x3FF0000000000000;
  *(v0 + 8553) = *v14;
  *(v0 + 8528) = 0x3FF0000000000000;
  *(v0 + 8544) = 0xC017FFFFFFFFFFE8;
  *(v0 + 8552) = 1;
  *(v0 + 8556) = *&v14[3];
  *(v0 + 8584) = 1053609165;
  *(v0 + 8904) = 0x3FF0000000000000;
  *(v0 + 8928) = 0x3FF0000000000000;
  *(v0 + 8936) = 0;
  *(v0 + 9688) = 0x3FF0000000000000;
  *(v0 + 9744) = 0x3FF0000000000000;
  *(v0 + 9760) = 0xC032000000000004;
  *(v0 + 9769) = *v15;
  *(v0 + 9768) = 1;
  *(v0 + 9772) = *&v15[3];
  *(v0 + 9800) = 1036831949;
  *(v0 + 10120) = 0x3FF0000000000000;
  *(v0 + 10144) = 0x3FF0000000000000;
  *(v0 + 10152) = 0;
  *(v0 + 10904) = 0x3FF0000000000000;
  *(v0 + 10960) = 0x3FF0000000000000;
  *(v0 + 10976) = 0xC056800000000000;
  *(v0 + 10984) = 1;
  *(v0 + 10985) = *v16;
  *(v0 + 10988) = *&v16[3];
  *(v0 + 11016) = 1036831949;
  *(v0 + 11336) = 0x3FF0000000000000;
  *(v0 + 11360) = 0x3FF0000000000000;
  *(v0 + 11368) = 0;
  *(v0 + 12120) = 0x3FF0000000000000;
  *(v0 + 12176) = 0x3FF0000000000000;
  return result;
}

WeatherUI::WeatherConditionGradientConfig __swiftcall WeatherConditionGradientConfig.init(version:elevationGradientStops:)(Swift::Double version, Swift::OpaquePointer elevationGradientStops)
{
  *v2 = version;
  *(v2 + 8) = elevationGradientStops;
  result.version = version;
  result.elevationGradientStops = elevationGradientStops;
  return result;
}

uint64_t WeatherConditionGradientConfig.elevationGradientStops.setter(uint64_t a1)
{

  *(v1 + 8) = a1;
  return result;
}

uint64_t static WeatherConditionGradientConfig.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*a1 == *a2)
  {
    return sub_1BCABA42C(*(a1 + 8), *(a2 + 8));
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1BCAB9688()
{
  v4 = OUTLINED_FUNCTION_6_18();
  type metadata accessor for NextHourPrecipitationChartViewModel.Point(v4);
  OUTLINED_FUNCTION_1_19();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_2_18();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v20 - v7;
  v9 = *(v2 + 16);
  if (v9 != *(v3 + 16))
  {
    return 0;
  }

  if (!v9 || v2 == v3)
  {
    return 1;
  }

  OUTLINED_FUNCTION_3_25();
  v11 = *(v10 + 72);
  while (1)
  {
    v12 = OUTLINED_FUNCTION_10_2();
    result = sub_1BCABB250(v12, v13, v14);
    if (!v9)
    {
      break;
    }

    OUTLINED_FUNCTION_17_9(result, v16, type metadata accessor for NextHourPrecipitationChartViewModel.Point);
    if ((sub_1BCE19010() & 1) == 0)
    {
      sub_1BCABB2B8(v1, type metadata accessor for NextHourPrecipitationChartViewModel.Point);
      OUTLINED_FUNCTION_16_15();
      return 0;
    }

    v17 = *&v8[*(v0 + 20)];
    sub_1BCABB2B8(v8, type metadata accessor for NextHourPrecipitationChartViewModel.Point);
    v18 = *(v1 + *(v0 + 20));
    sub_1BCABB2B8(v1, type metadata accessor for NextHourPrecipitationChartViewModel.Point);
    result = v17 == v18;
    v19 = v17 != v18 || v9-- == 1;
    v3 += v11;
    v2 += v11;
    if (v19)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

void sub_1BCAB9838()
{
  OUTLINED_FUNCTION_20_0();
  v6 = OUTLINED_FUNCTION_6_18();
  type metadata accessor for NextHourPrecipitationChartViewModel.ScaleLabelElement(v6);
  OUTLINED_FUNCTION_1_19();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_2_18();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_4_22();
  if (v18 && v5 && v3 != v4)
  {
    OUTLINED_FUNCTION_3_25();
    v10 = *(v9 + 72);
    while (1)
    {
      v11 = OUTLINED_FUNCTION_10_2();
      v14 = sub_1BCABB250(v11, v12, v13);
      OUTLINED_FUNCTION_17_9(v14, v15, type metadata accessor for NextHourPrecipitationChartViewModel.ScaleLabelElement);
      if ((sub_1BCE19010() & 1) == 0 || *(v2 + *(v0 + 20)) != *(v1 + *(v0 + 20)))
      {
        break;
      }

      OUTLINED_FUNCTION_0_26(*(v0 + 24));
      v18 = v18 && v16 == v17;
      if (v18)
      {
        sub_1BCABB2B8(v1, type metadata accessor for NextHourPrecipitationChartViewModel.ScaleLabelElement);
        sub_1BCABB2B8(v2, type metadata accessor for NextHourPrecipitationChartViewModel.ScaleLabelElement);
      }

      else
      {
        v19 = sub_1BCE1E090();
        sub_1BCABB2B8(v1, type metadata accessor for NextHourPrecipitationChartViewModel.ScaleLabelElement);
        sub_1BCABB2B8(v2, type metadata accessor for NextHourPrecipitationChartViewModel.ScaleLabelElement);
        if ((v19 & 1) == 0)
        {
          goto LABEL_18;
        }
      }

      v4 += v10;
      v3 += v10;
      if (!--v5)
      {
        goto LABEL_18;
      }
    }

    sub_1BCABB2B8(v1, type metadata accessor for NextHourPrecipitationChartViewModel.ScaleLabelElement);
    OUTLINED_FUNCTION_16_15();
  }

LABEL_18:
  OUTLINED_FUNCTION_21();
}

void sub_1BCAB9A08()
{
  OUTLINED_FUNCTION_20_0();
  OUTLINED_FUNCTION_6_18();
  type metadata accessor for HumidityComplicationDailyViewModel();
  OUTLINED_FUNCTION_1_19();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_2_18();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_4_22();
  if (v8 && v5 && v3 != v4)
  {
    OUTLINED_FUNCTION_3_25();
    v10 = *(v9 + 72);
    while (1)
    {
      v11 = OUTLINED_FUNCTION_10_2();
      v14 = sub_1BCABB250(v11, v12, v13);
      OUTLINED_FUNCTION_17_9(v14, v15, type metadata accessor for HumidityComplicationDailyViewModel);
      if ((sub_1BCE19070() & 1) == 0)
      {
        break;
      }

      OUTLINED_FUNCTION_10_15();
      if (v17)
      {
        if (!v16)
        {
          break;
        }
      }

      else
      {
        OUTLINED_FUNCTION_12_4();
        if (v18)
        {
          break;
        }
      }

      OUTLINED_FUNCTION_10_15();
      if (v20)
      {
        if (!v19)
        {
          break;
        }
      }

      else
      {
        OUTLINED_FUNCTION_12_4();
        if (v21)
        {
          break;
        }
      }

      if ((sub_1BCE19010() & 1) == 0)
      {
        break;
      }

      v22 = MEMORY[0x1BFB2BB80](v2 + *(v0 + 32), v1 + *(v0 + 32));
      sub_1BCABB2B8(v1, type metadata accessor for HumidityComplicationDailyViewModel);
      sub_1BCABB2B8(v2, type metadata accessor for HumidityComplicationDailyViewModel);
      if (v22)
      {
        v4 += v10;
        v3 += v10;
        if (--v5)
        {
          continue;
        }
      }

      goto LABEL_21;
    }

    sub_1BCABB2B8(v1, type metadata accessor for HumidityComplicationDailyViewModel);
    OUTLINED_FUNCTION_16_15();
  }

LABEL_21:
  OUTLINED_FUNCTION_21();
}

void sub_1BCAB9BE8()
{
  OUTLINED_FUNCTION_20_0();
  v2 = v1;
  v4 = v3;
  type metadata accessor for HourlyForecastBannerViewModel();
  OUTLINED_FUNCTION_1_19();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v40 - v10;
  v12 = *(v4 + 16);
  if (v12 == *(v2 + 16) && v12 && v4 != v2)
  {
    v13 = (*(v9 + 80) + 32) & ~*(v9 + 80);
    v14 = v4 + v13;
    v15 = v2 + v13;
    v40 = *(v9 + 72);
    while (1)
    {
      sub_1BCABB250(v14, v11, type metadata accessor for HourlyForecastBannerViewModel);
      if (!v12)
      {
        break;
      }

      v42 = v14;
      v43 = v12;
      v41 = v15;
      sub_1BCABB250(v15, v7, type metadata accessor for HourlyForecastBannerViewModel);
      OUTLINED_FUNCTION_10_2();
      if ((sub_1BCE19070() & 1) == 0)
      {
        goto LABEL_64;
      }

      if ((sub_1BCE19010() & 1) == 0)
      {
        goto LABEL_64;
      }

      sub_1BCA301DC();
      if ((sub_1BCE185B0() & 1) == 0)
      {
        goto LABEL_64;
      }

      OUTLINED_FUNCTION_5_19(v0[7]);
      v18 = v18 && v16 == v17;
      if (!v18 && (sub_1BCE1E090() & 1) == 0)
      {
        goto LABEL_64;
      }

      OUTLINED_FUNCTION_5_19(v0[8]);
      v21 = v18 && v19 == v20;
      if (!v21 && (sub_1BCE1E090() & 1) == 0 || (sub_1BCE19070() & 1) == 0)
      {
        goto LABEL_64;
      }

      v22 = type metadata accessor for ConditionViewModel();
      sub_1BCE199D0();
      sub_1BCABB208(&qword_1EDA1EF20, MEMORY[0x1E6984D30]);
      OUTLINED_FUNCTION_11_15();
      sub_1BCE1D520();
      OUTLINED_FUNCTION_11_15();
      sub_1BCE1D520();
      if (v46 == v44 && v47 == v45)
      {
      }

      else
      {
        v24 = sub_1BCE1E090();

        if ((v24 & 1) == 0)
        {
          goto LABEL_64;
        }
      }

      OUTLINED_FUNCTION_9_15(*(v22 + 24));
      v27 = v18 && v25 == v26;
      if (!v27 && (sub_1BCE1E090() & 1) == 0)
      {
        goto LABEL_64;
      }

      OUTLINED_FUNCTION_9_15(*(v22 + 28));
      v30 = v18 && v28 == v29;
      if (!v30 && (sub_1BCE1E090() & 1) == 0)
      {
        goto LABEL_64;
      }

      OUTLINED_FUNCTION_7_24();
      if (!v18)
      {
        goto LABEL_64;
      }

      OUTLINED_FUNCTION_7_24();
      if (!v18)
      {
        goto LABEL_64;
      }

      OUTLINED_FUNCTION_7_24();
      if (!v18 || *&v11[v0[10]] != *&v7[v0[10]])
      {
        goto LABEL_64;
      }

      OUTLINED_FUNCTION_5_19(v0[11]);
      v33 = v18 && v31 == v32;
      if (!v33 && (sub_1BCE1E090() & 1) == 0)
      {
        goto LABEL_64;
      }

      sub_1BCE19BA0();
      sub_1BCABB208(&qword_1EDA1BEC0, MEMORY[0x1E6984DE0]);
      sub_1BCE1D520();
      sub_1BCE1D520();
      if (v46 == v44 && v47 == v45)
      {
      }

      else
      {
        v35 = sub_1BCE1E090();

        if ((v35 & 1) == 0)
        {
          goto LABEL_64;
        }
      }

      if ((sub_1BCE19FD0() & 1) == 0)
      {
LABEL_64:
        sub_1BCABB2B8(v7, type metadata accessor for HourlyForecastBannerViewModel);
        sub_1BCABB2B8(v11, type metadata accessor for HourlyForecastBannerViewModel);
        goto LABEL_65;
      }

      v36 = v0[14];
      v37 = v11[v36];
      v38 = v7[v36];
      sub_1BCABB2B8(v7, type metadata accessor for HourlyForecastBannerViewModel);
      sub_1BCABB2B8(v11, type metadata accessor for HourlyForecastBannerViewModel);
      v39 = v37 != v38 || v43 == 1;
      v12 = v43 - 1;
      v15 = v41 + v40;
      v14 = v42 + v40;
      if (v39)
      {
        goto LABEL_65;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_65:
    OUTLINED_FUNCTION_21();
  }
}

void sub_1BCABA08C()
{
  OUTLINED_FUNCTION_20_0();
  OUTLINED_FUNCTION_6_18();
  type metadata accessor for HourlyForecastViewModel.HourModel();
  OUTLINED_FUNCTION_1_19();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_2_18();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_4_22();
  if (v15 && v5 && v3 != v4)
  {
    OUTLINED_FUNCTION_3_25();
    v9 = *(v8 + 72);
    while (1)
    {
      v10 = OUTLINED_FUNCTION_10_2();
      v13 = sub_1BCABB250(v10, v11, v12);
      OUTLINED_FUNCTION_17_9(v13, v14, type metadata accessor for HourlyForecastViewModel.HourModel);
      v15 = *v2 == *v1 && *(v2 + 8) == *(v1 + 8);
      if (!v15 && (sub_1BCE1E090() & 1) == 0)
      {
        break;
      }

      if (*(v2 + 16) != *(v1 + 16) || (sub_1BCE19010() & 1) == 0)
      {
        break;
      }

      OUTLINED_FUNCTION_0_26(v0[7]);
      v18 = v15 && v16 == v17;
      if (!v18 && (sub_1BCE1E090() & 1) == 0)
      {
        break;
      }

      OUTLINED_FUNCTION_0_26(v0[8]);
      v21 = v15 && v19 == v20;
      if (!v21 && (sub_1BCE1E090() & 1) == 0)
      {
        break;
      }

      OUTLINED_FUNCTION_0_26(v0[9]);
      v24 = v15 && v22 == v23;
      if (!v24 && (sub_1BCE1E090() & 1) == 0)
      {
        break;
      }

      OUTLINED_FUNCTION_0_26(v0[10]);
      v27 = v15 && v25 == v26;
      if (!v27 && (sub_1BCE1E090() & 1) == 0 || *(v2 + v0[11]) != *(v1 + v0[11]))
      {
        break;
      }

      OUTLINED_FUNCTION_0_26(v0[12]);
      if (v15 && v28 == v29)
      {
        sub_1BCABB2B8(v1, type metadata accessor for HourlyForecastViewModel.HourModel);
        sub_1BCABB2B8(v2, type metadata accessor for HourlyForecastViewModel.HourModel);
      }

      else
      {
        v31 = sub_1BCE1E090();
        sub_1BCABB2B8(v1, type metadata accessor for HourlyForecastViewModel.HourModel);
        sub_1BCABB2B8(v2, type metadata accessor for HourlyForecastViewModel.HourModel);
        if ((v31 & 1) == 0)
        {
          goto LABEL_45;
        }
      }

      v4 += v9;
      v3 += v9;
      if (!--v5)
      {
        goto LABEL_45;
      }
    }

    sub_1BCABB2B8(v1, type metadata accessor for HourlyForecastViewModel.HourModel);
    OUTLINED_FUNCTION_16_15();
  }

LABEL_45:
  OUTLINED_FUNCTION_21();
}

uint64_t sub_1BCABA308(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      v8 = 1;
    }

    else
    {
      v3 = (a1 + 32);
      v4 = (a2 + 32);
      do
      {
        v5 = *v3++;
        v6 = v5;
        v7 = *v4++;
        *&v6.f64[0] = vmovn_s64(vceqq_f64(v6, v7));
        v8 = LOBYTE(v6.f64[0]) & BYTE4(v6.f64[0]);
        if ((LOBYTE(v6.f64[0]) & BYTE4(v6.f64[0]) & 1) == 0)
        {
          break;
        }

        --v2;
      }

      while (v2);
    }
  }

  else
  {
    v8 = 0;
  }

  return v8 & 1;
}

uint64_t sub_1BCABA37C(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  if (v4 == *(a2 + 16))
  {
    if (!v4 || a1 == a2)
    {
      v9 = 1;
    }

    else
    {
      v13 = v2;
      v14 = v3;
      v5 = (a1 + 32);
      v6 = (a2 + 32);
      v7 = v4 - 1;
      do
      {
        v8 = v7;
        memcpy(__dst, v5, 0x4B8uLL);
        memcpy(v11, v6, 0x4B8uLL);
        v9 = static WeatherConditionLightingKeyframe.== infix(_:_:)(__dst, v11);
        if ((v9 & 1) == 0)
        {
          break;
        }

        v7 = v8 - 1;
        v6 += 1216;
        v5 += 1216;
      }

      while (v8);
    }
  }

  else
  {
    v9 = 0;
  }

  return v9 & 1;
}

uint64_t sub_1BCABA42C(uint64_t result, uint64_t a2)
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

  v3 = 0;
  while (v2)
  {
    v4.f64[1] = *(result + v3 + 48);
    v5.f64[1] = *(a2 + v3 + 48);
    v4.f64[0] = *(result + v3 + 32);
    v5.f64[0] = *(a2 + v3 + 32);
    v6 = vmovn_s16(vuzp1q_s16(vuzp1q_s32(vceqq_f64(v4, v5), vceqq_f64(*(result + v3 + 56), *(a2 + v3 + 56))), vuzp1q_s32(vceqq_f64(*(result + v3 + 72), *(a2 + v3 + 72)), vceqq_f64(*(result + v3 + 88), *(a2 + v3 + 88)))));
    v6.i8[0] = vminv_u8(v6);
    v7 = v6.i32[0];
    v8 = vmovn_s32(vuzp1q_s32(vceqq_f64(*(result + v3 + 104), *(a2 + v3 + 104)), vceqq_f64(*(result + v3 + 120), *(a2 + v3 + 120))));
    v8.i16[0] = vminv_u16(v8);
    v9 = v7 & v8.i32[0] & (*(result + v3 + 136) == *(a2 + v3 + 136));
    if (*(result + v3 + 144) != *(a2 + v3 + 144))
    {
      v9 = 0;
    }

    v10 = v9 & (*(result + v3 + 40) ^ *(a2 + v3 + 40) ^ 1u);
    v11 = v10 != 1 || v2-- == 1;
    v3 += 120;
    if (v11)
    {
      return v10;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1BCABA53C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      v5 = 1;
    }

    else
    {
      v3 = a1 + 40;
      v4 = a2 + 40;
      do
      {

        v5 = sub_1BCE1CE40();

        if ((v5 & 1) == 0)
        {
          break;
        }

        v3 += 16;
        v4 += 16;
        --v2;
      }

      while (v2);
    }
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

uint64_t sub_1BCABA614(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E6F6973726576 && a2 == 0xE700000000000000;
  if (v4 || (sub_1BCE1E090() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001BCE7BFE0 == a2)
  {

    return 1;
  }

  else
  {
    v7 = sub_1BCE1E090();

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

uint64_t sub_1BCABA6E4(char a1)
{
  if (a1)
  {
    return 0xD000000000000016;
  }

  else
  {
    return 0x6E6F6973726576;
  }
}

uint64_t sub_1BCABA728@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1BCABA614(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1BCABA750(uint64_t a1)
{
  v2 = sub_1BCABA98C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BCABA78C(uint64_t a1)
{
  v2 = sub_1BCABA98C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t WeatherConditionGradientConfig.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08910);
  OUTLINED_FUNCTION_2();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v12[-v8];
  v10 = *(v1 + 8);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BCABA98C();
  sub_1BCE1E170();
  v14 = 0;
  sub_1BCE1DFF0();
  if (!v2)
  {
    v13 = v10;
    v12[15] = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08920);
    sub_1BCABAE74(&qword_1EBD08928, sub_1BCABA9E0);
    sub_1BCE1E020();
  }

  return (*(v6 + 8))(v9, v4);
}

unint64_t sub_1BCABA98C()
{
  result = qword_1EBD08918;
  if (!qword_1EBD08918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD08918);
  }

  return result;
}

unint64_t sub_1BCABA9E0()
{
  result = qword_1EBD08930;
  if (!qword_1EBD08930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD08930);
  }

  return result;
}

void WeatherConditionGradientConfig.hash(into:)(uint64_t a1)
{
  v3 = *v1;
  v4 = *(v1 + 8);
  if (*v1 == 0.0)
  {
    v3 = 0.0;
  }

  MEMORY[0x1BFB30880](*&v3);

  sub_1BCABAE00(a1, v4);
}

uint64_t WeatherConditionGradientConfig.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_1BCE1E100();
  v3 = 0.0;
  if (v1 != 0.0)
  {
    v3 = v1;
  }

  MEMORY[0x1BFB30880](*&v3);
  sub_1BCABAE00(v5, v2);
  return sub_1BCE1E150();
}

uint64_t WeatherConditionGradientConfig.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08938);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v5);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BCABA98C();
  sub_1BCE1E160();
  if (!v2)
  {
    sub_1BCE1DF40();
    v7 = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08920);
    sub_1BCABAE74(&qword_1EBD08940, sub_1BCABAEEC);
    sub_1BCE1DF70();
    v8 = OUTLINED_FUNCTION_11_15();
    v9(v8);
    *a2 = v7;
    a2[1] = v11;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1BCABAD34()
{
  v1 = v0[1];
  v4 = *v0;
  v5 = v1;
  sub_1BCE1E100();
  WeatherConditionGradientConfig.hash(into:)(v3);
  return sub_1BCE1E150();
}

void sub_1BCABAD84(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  MEMORY[0x1BFB30850](v3);
  if (v3)
  {
    v4 = (a2 + 32);
    do
    {
      memcpy(v5, v4, sizeof(v5));
      WeatherConditionLightingKeyframe.hash(into:)();
      v4 += 1216;
      --v3;
    }

    while (v3);
  }
}

void sub_1BCABAE00(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  MEMORY[0x1BFB30850](v3);
  if (v3)
  {
    v4 = (a2 + 32);
    do
    {
      memcpy(__dst, v4, sizeof(__dst));
      SkyElevationGradientStop.hash(into:)();
      v4 += 120;
      --v3;
    }

    while (v3);
  }
}

uint64_t sub_1BCABAE74(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD08920);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1BCABAEEC()
{
  result = qword_1EBD08948;
  if (!qword_1EBD08948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD08948);
  }

  return result;
}

unint64_t sub_1BCABAF44()
{
  result = qword_1EBD08950;
  if (!qword_1EBD08950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD08950);
  }

  return result;
}

uint64_t sub_1BCABAF98(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_1BCABAFD8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for WeatherConditionGradientConfig.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1BCABB104()
{
  result = qword_1EBD08958;
  if (!qword_1EBD08958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD08958);
  }

  return result;
}

unint64_t sub_1BCABB15C()
{
  result = qword_1EBD08960;
  if (!qword_1EBD08960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD08960);
  }

  return result;
}

unint64_t sub_1BCABB1B4()
{
  result = qword_1EBD08968;
  if (!qword_1EBD08968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD08968);
  }

  return result;
}

uint64_t sub_1BCABB208(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1BCABB250(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BCABB2B8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

__n128 sub_1BCABB318@<Q0>(uint64_t a1@<X8>)
{
  v2 = (a1 + 1436);
  sub_1BCABBA14();
  v4 = v3;
  sub_1BCABD910();
  *a1 = 0x4006666666666666;
  *(a1 + 8) = 1;
  *(a1 + 16) = 0x3FF0000000000000;
  *(a1 + 24) = 25;
  *(a1 + 32) = xmmword_1BCE3BED0;
  *(a1 + 48) = xmmword_1BCE3BED0;
  *(a1 + 64) = 0x42D2000042480000;
  *(a1 + 72) = 0xC37A000000000000;
  *(a1 + 80) = xmmword_1BCE4B020;
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
  *(a1 + 664) = 0x401CCCCD3E99999ALL;
  *(a1 + 672) = 0x409800003F800000;
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
  *(a1 + 1828) = xmmword_1BCE3C7B0;
  *(a1 + 1844) = 1036831949;
  *(a1 + 1848) = 0x4100000041200000;
  *(a1 + 1856) = 3;
  *(a1 + 1864) = 1041865114;
  *(a1 + 1872) = 0x400AE1483F970A3DLL;
  *(a1 + 1880) = 1109917696;
  *(a1 + 1888) = result;
  *(a1 + 1904) = 0x3E4CCCCD40A00000;
  *(a1 + 1912) = 1106247680;
  *(a1 + 1920) = 0;
  *(a1 + 1928) = 1107296256;
  *(a1 + 1936) = result;
  *(a1 + 1952) = 1065353216;
  *(a1 + 1960) = 0x420C000041C80000;
  *(a1 + 1968) = xmmword_1BCE4B030;
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

__n128 sub_1BCABBA14()
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
  *(v0 + 192) = result;
  __asm { FMOV            V20.2D, #0.5 }

  *(v0 + 208) = _Q20;
  *(v0 + 224) = xmmword_1BCE3D910;
  *(v0 + 240) = result;
  *(v0 + 256) = result;
  *(v0 + 272) = result;
  *(v0 + 288) = result;
  *(v0 + 304) = result;
  *(v0 + 320) = result;
  *(v0 + 336) = xmmword_1BCE3C8F0;
  *(v0 + 352) = result;
  *(v0 + 368) = xmmword_1BCE3D920;
  *(v0 + 384) = 0x3F4CCCCD3F800000;
  *(v0 + 392) = 0x3FEFC7B640000000;
  *(v0 + 400) = xmmword_1BCE4B040;
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
  *(v0 + 1257) = *v11;
  *(v0 + 1260) = *&v11[3];
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
  *(v0 + 1408) = result;
  *(v0 + 1424) = _Q20;
  *(v0 + 1440) = xmmword_1BCE3D910;
  *(v0 + 1456) = result;
  *(v0 + 1472) = result;
  *(v0 + 1488) = result;
  *(v0 + 1504) = result;
  *(v0 + 1520) = result;
  *(v0 + 1536) = result;
  *(v0 + 1552) = xmmword_1BCE3C8F0;
  *(v0 + 1568) = result;
  *(v0 + 1584) = xmmword_1BCE3D920;
  *(v0 + 1600) = 0x3F4CCCCD3F800000;
  *(v0 + 1608) = 0x3FEFC7B640000000;
  *(v0 + 1616) = xmmword_1BCE4B040;
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
  *(v0 + 2473) = *v12;
  *(v0 + 2476) = *&v12[3];
  *(v0 + 2480) = xmmword_1BCE3DC90;
  *(v0 + 2496) = 0x4396000042C80000;
  *(v0 + 2504) = 1036831949;
  *(v0 + 2512) = xmmword_1BCE3C970;
  *(v0 + 2528) = result;
  *(v0 + 2544) = xmmword_1BCE3DEC0;
  *(v0 + 2560) = xmmword_1BCE3C990;
  *(v0 + 2608) = result;
  *(v0 + 2624) = result;
  *(v0 + 2640) = _Q20;
  *(v0 + 2656) = xmmword_1BCE3DCB0;
  *(v0 + 2672) = result;
  *(v0 + 2688) = result;
  *(v0 + 2704) = xmmword_1BCE3D3C0;
  *(v0 + 2720) = xmmword_1BCE3D3D0;
  *(v0 + 2736) = xmmword_1BCE3C9E0;
  *(v0 + 2752) = xmmword_1BCE3CBC0;
  *(v0 + 2768) = xmmword_1BCE3C9F0;
  *(v0 + 2784) = xmmword_1BCE3CA00;
  v7 = vdupq_n_s32(0x3F4CCCCDu);
  *(v0 + 2800) = v7;
  *(v0 + 2816) = v7.i64[0];
  *(v0 + 2824) = 0x3FEFC7B660000000;
  *(v0 + 2832) = xmmword_1BCE4B040;
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
  *(v0 + 3689) = *v13;
  *(v0 + 3692) = *&v13[3];
  *(v0 + 3696) = xmmword_1BCE3CB30;
  *(v0 + 4656) = result;
  *(v0 + 4672) = result;
  *(v0 + 4688) = result;
  *(v0 + 4704) = result;
  *(v0 + 4720) = xmmword_1BCE3CB00;
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
  *(v0 + 3712) = 0x447A000044160000;
  *(v0 + 3720) = 1061997773;
  *(v0 + 4064) = 0;
  *(v0 + 4072) = 1065353216;
  *(v0 + 4080) = result;
  *(v0 + 4096) = result;
  *(v0 + 3936) = result;
  *(v0 + 4032) = 1062836634;
  *(v0 + 4040) = 0x3FEFC7B640000000;
  *(v0 + 4048) = xmmword_1BCE4B040;
  *(v0 + 3952) = result;
  *(v0 + 4000) = xmmword_1BCE3CA00;
  v10 = vdupq_n_s32(0x3F59999Au);
  *(v0 + 4016) = v10;
  *(v0 + 3968) = xmmword_1BCE3C8C0;
  *(v0 + 3984) = xmmword_1BCE3CAD0;
  *(v0 + 3904) = result;
  *(v0 + 3920) = result;
  *(v0 + 3856) = vdupq_n_s64(0x3FE88B6D00000000uLL);
  *(v0 + 3872) = xmmword_1BCE3D960;
  *(v0 + 3888) = result;
  *(v0 + 3760) = xmmword_1BCE3CA70;
  *(v0 + 3776) = xmmword_1BCE3CA80;
  *(v0 + 3824) = result;
  *(v0 + 3840) = result;
  *(v0 + 3792) = xmmword_1BCE3CA90;
  *(v0 + 3808) = xmmword_1BCE3CAA0;
  *(v0 + 3728) = xmmword_1BCE3CA60;
  *(v0 + 3744) = result;
  *(v0 + 4752) = xmmword_1BCE3CB20;
  *(v0 + 4736) = xmmword_1BCE3CB10;
  *(v0 + 4768) = xmmword_1BCE3CB10;
  *(v0 + 4944) = xmmword_1BCE3DA10;
  *(v0 + 4960) = xmmword_1BCE3DA20;
  *(v0 + 4976) = xmmword_1BCE3CB60;
  *(v0 + 4992) = xmmword_1BCE3CB70;
  *(v0 + 5008) = xmmword_1BCE3DA30;
  *(v0 + 5024) = xmmword_1BCE3DA40;
  *(v0 + 5168) = xmmword_1BCE3DA80;
  *(v0 + 5184) = xmmword_1BCE3CBE0;
  *(v0 + 5936) = xmmword_1BCE3CC10;
  *(v0 + 5968) = xmmword_1BCE3CC30;
  *(v0 + 5952) = xmmword_1BCE3CC20;
  *(v0 + 5984) = xmmword_1BCE3CC20;
  *(v0 + 6128) = xmmword_1BCE3CC40;
  *(v0 + 6160) = xmmword_1BCE3DA90;
  *(v0 + 6176) = xmmword_1BCE3DAA0;
  *(v0 + 6192) = xmmword_1BCE4B050;
  *(v0 + 6208) = xmmword_1BCE4B060;
  *(v0 + 6224) = xmmword_1BCE3CC90;
  *(v0 + 6240) = xmmword_1BCE3CCA0;
  *(v0 + 6384) = xmmword_1BCE3DAF0;
  *(v0 + 6400) = xmmword_1BCE3DB00;
  *(v0 + 6416) = xmmword_1BCE3CCD0;
  *(v0 + 6432) = xmmword_1BCE3CCE0;
  *(v0 + 7152) = xmmword_1BCE3CD10;
  *(v0 + 7184) = xmmword_1BCE3CD30;
  *(v0 + 7168) = xmmword_1BCE3CD20;
  *(v0 + 7200) = xmmword_1BCE3CD20;
  *(v0 + 7344) = xmmword_1BCE3CD40;
  *(v0 + 7408) = xmmword_1BCE4B070;
  *(v0 + 7424) = xmmword_1BCE3CE60;
  *(v0 + 7552) = result;
  *(v0 + 7632) = xmmword_1BCE3CD90;
  *(v0 + 7648) = xmmword_1BCE3CDA0;
  *(v0 + 8368) = xmmword_1BCE3CDD0;
  *(v0 + 8400) = xmmword_1BCE3CDE0;
  *(v0 + 8560) = xmmword_1BCE3CDF0;
  *(v0 + 8624) = xmmword_1BCE4B090;
  *(v0 + 10128) = xmmword_1BCE4B0C0;
  *(v0 + 9584) = xmmword_1BCE3CE20;
  *(v0 + 10800) = xmmword_1BCE3CE20;
  *(v0 + 9776) = xmmword_1BCE3CE40;
  *(v0 + 10992) = xmmword_1BCE3CE40;
  *(v0 + 9792) = 1150681088;
  *(v0 + 11008) = 1150681088;
  *(v0 + 9840) = xmmword_1BCE4B0A0;
  *(v0 + 11056) = xmmword_1BCE4B0A0;
  *(v0 + 9856) = xmmword_1BCE4B0B0;
  *(v0 + 11072) = xmmword_1BCE4B0B0;
  *(v0 + 9872) = xmmword_1BCE3CE70;
  *(v0 + 11088) = xmmword_1BCE3CE70;
  *(v0 + 9888) = xmmword_1BCE3CE80;
  *(v0 + 11104) = xmmword_1BCE3CE80;
  *(v0 + 11344) = xmmword_1BCE4B0D0;
  *(v0 + 10816) = xmmword_1BCE3CE90;
  *(v0 + 12032) = xmmword_1BCE3CE90;
  *(v0 + 9616) = xmmword_1BCE3CE30;
  *(v0 + 12048) = xmmword_1BCE3CE30;
  *(v0 + 12208) = xmmword_1BCE3CEC0;
  *(v0 + 8576) = 0x41A0000044960000;
  *(v0 + 12224) = 0x41A0000044960000;
  *(v0 + 7376) = xmmword_1BCE3DB10;
  *(v0 + 8592) = xmmword_1BCE3DB10;
  *(v0 + 9808) = xmmword_1BCE3DB10;
  *(v0 + 11024) = xmmword_1BCE3DB10;
  *(v0 + 12240) = xmmword_1BCE3DB10;
  *(v0 + 7392) = xmmword_1BCE3CD50;
  *(v0 + 8608) = xmmword_1BCE3CD50;
  *(v0 + 9824) = xmmword_1BCE3CD50;
  *(v0 + 11040) = xmmword_1BCE3CD50;
  *(v0 + 12256) = xmmword_1BCE3CD50;
  *(v0 + 12272) = xmmword_1BCE4B0E0;
  *(v0 + 10832) = xmmword_1BCE3CEA0;
  *(v0 + 13264) = xmmword_1BCE3CEA0;
  *(v0 + 13424) = xmmword_1BCE4B0F0;
  *(v0 + 7360) = 1147207680;
  *(v0 + 13440) = 1147207680;
  *(v0 + 13456) = xmmword_1BCE3DB50;
  *(v0 + 13472) = xmmword_1BCE3CF10;
  *(v0 + 13488) = xmmword_1BCE4B100;
  *(v0 + 13504) = xmmword_1BCE4B110;
  *(v0 + 7440) = xmmword_1BCE3CD70;
  *(v0 + 13520) = xmmword_1BCE3CD70;
  *(v0 + 7456) = xmmword_1BCE3CD80;
  *(v0 + 13536) = xmmword_1BCE3CD80;
  *(v0 + 13712) = xmmword_1BCE3CF60;
  *(v0 + 7696) = xmmword_1BCE4B080;
  *(v0 + 8912) = xmmword_1BCE4B080;
  *(v0 + 12560) = xmmword_1BCE4B080;
  *(v0 + 13776) = xmmword_1BCE4B080;
  *(v0 + 12016) = xmmword_1BCE3CEB0;
  *(v0 + 13232) = xmmword_1BCE3CEB0;
  *(v0 + 14448) = xmmword_1BCE3CEB0;
  *(v0 + 8384) = xmmword_1BCE3CBB0;
  *(v0 + 9600) = xmmword_1BCE3CBB0;
  *(v0 + 13248) = xmmword_1BCE3CBB0;
  *(v0 + 14464) = xmmword_1BCE3CBB0;
  *(v0 + 14480) = xmmword_1BCE3CF90;
  *(v0 + 14640) = xmmword_1BCE4B120;
  *(v0 + 6144) = 0x44480000443B8000;
  *(v0 + 14656) = 0x44480000443B8000;
  *(v0 + 14672) = xmmword_1BCE3DF50;
  *(v0 + 2576) = xmmword_1BCE3C9A0;
  *(v0 + 2592) = result;
  *(v0 + 4784) = result;
  *(v0 + 4800) = result;
  *(v0 + 4816) = 0x4170000000000000;
  *(v0 + 4824) = 0x3FF0000000000000;
  *(v0 + 4832) = result;
  *(v0 + 4848) = result;
  *(v0 + 4864) = result;
  *(v0 + 4880) = 0x3FF0000000000000;
  *(v0 + 4896) = 0;
  *(v0 + 4904) = 0;
  *(v0 + 4905) = *v14;
  *(v0 + 4908) = *&v14[3];
  *(v0 + 4912) = xmmword_1BCE3CB30;
  *(v0 + 4928) = 0x44C8000044160000;
  *(v0 + 4936) = 1061997773;
  *(v0 + 5040) = result;
  *(v0 + 5056) = result;
  *(v0 + 5072) = result;
  *(v0 + 5088) = xmmword_1BCE3DA70;
  *(v0 + 5104) = result;
  *(v0 + 5120) = result;
  *(v0 + 5136) = result;
  *(v0 + 5152) = result;
  *(v0 + 5200) = xmmword_1BCE3CBF0;
  *(v0 + 5216) = xmmword_1BCE3CA00;
  v8 = vdupq_n_s32(0x3F666666u);
  *(v0 + 5232) = v8;
  *(v0 + 5248) = 1063675494;
  *(v0 + 5256) = 0x3FEFC7B640000000;
  *(v0 + 5264) = xmmword_1BCE4B040;
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
  *(v0 + 6096) = 0x3FF0000000000000;
  *(v0 + 6112) = 0x4017FFFFFFFFFFFALL;
  *(v0 + 6120) = 0;
  *(v0 + 6121) = *v15;
  *(v0 + 6124) = *&v15[3];
  *(v0 + 6152) = 1060320052;
  *(v0 + 6256) = result;
  *(v0 + 6272) = result;
  *(v0 + 6288) = result;
  *(v0 + 6304) = xmmword_1BCE3DAE0;
  *(v0 + 6320) = result;
  *(v0 + 6336) = result;
  *(v0 + 6352) = result;
  *(v0 + 6368) = result;
  *(v0 + 6448) = v8;
  *(v0 + 6464) = 1063675494;
  *(v0 + 6472) = 0x3FEFC7B660000000;
  *(v0 + 6480) = xmmword_1BCE4B040;
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
  *(v0 + 7312) = 0x3FF0000000000000;
  *(v0 + 7328) = 0x4028000000000000;
  *(v0 + 7336) = 0;
  *(v0 + 7337) = *v16;
  *(v0 + 7340) = *&v16[3];
  *(v0 + 7368) = 1058642330;
  *(v0 + 7472) = result;
  *(v0 + 7488) = result;
  *(v0 + 7504) = result;
  *(v0 + 7520) = xmmword_1BCE3DAE0;
  *(v0 + 7536) = result;
  *(v0 + 14688) = xmmword_1BCE3DF60;
  *(v0 + 14704) = xmmword_1BCE4B130;
  *(v0 + 14720) = xmmword_1BCE4B140;
  *(v0 + 14736) = xmmword_1BCE3DBA0;
  *(v0 + 14752) = xmmword_1BCE3DBB0;
  *(v0 + 13600) = xmmword_1BCE3DAE0;
  *(v0 + 14816) = xmmword_1BCE3DAE0;
  *(v0 + 14864) = xmmword_1BCE3D010;
  *(v0 + 14880) = xmmword_1BCE3DBE0;
  *(v0 + 14928) = xmmword_1BCE3D040;
  *(v0 + 15664) = xmmword_1BCE3D070;
  *(v0 + 15680) = xmmword_1BCE3D080;
  *(v0 + 15696) = xmmword_1BCE3D090;
  *(v0 + 15712) = xmmword_1BCE3D0A0;
  *(v0 + 15856) = xmmword_1BCE3D0B0;
  *(v0 + 15872) = 0x44C8000044160000;
  *(v0 + 15888) = xmmword_1BCE3DFA0;
  *(v0 + 15904) = xmmword_1BCE3DFB0;
  *(v0 + 15920) = xmmword_1BCE3DFC0;
  *(v0 + 15936) = xmmword_1BCE3DFD0;
  *(v0 + 15952) = xmmword_1BCE3DC10;
  *(v0 + 15968) = xmmword_1BCE3DC20;
  *(v0 + 8736) = xmmword_1BCE3DA70;
  *(v0 + 9952) = xmmword_1BCE3DA70;
  *(v0 + 11168) = xmmword_1BCE3DA70;
  *(v0 + 12384) = xmmword_1BCE3DA70;
  *(v0 + 16032) = xmmword_1BCE3DA70;
  *(v0 + 10032) = xmmword_1BCE3CCB0;
  *(v0 + 10064) = xmmword_1BCE3CCB0;
  *(v0 + 11248) = xmmword_1BCE3CCB0;
  *(v0 + 11280) = xmmword_1BCE3CCB0;
  *(v0 + 16080) = xmmword_1BCE3CCB0;
  *(v0 + 16096) = xmmword_1BCE3DC50;
  *(v0 + 16144) = xmmword_1BCE3CBF0;
  *(v0 + 7664) = v8;
  *(v0 + 8880) = v8;
  *(v0 + 10096) = v8;
  *(v0 + 11312) = v8;
  *(v0 + 12528) = v8;
  *(v0 + 13744) = v8;
  *(v0 + 14960) = v8;
  *(v0 + 16176) = v8;
  *(v0 + 7680) = 1063675494;
  *(v0 + 8896) = 1063675494;
  *(v0 + 10112) = 1063675494;
  *(v0 + 11328) = 1063675494;
  *(v0 + 12544) = 1063675494;
  *(v0 + 13760) = 1063675494;
  *(v0 + 14976) = 1063675494;
  *(v0 + 16192) = 1063675494;
  *(v0 + 16880) = xmmword_1BCE3D160;
  *(v0 + 16896) = xmmword_1BCE3D170;
  *(v0 + 16912) = xmmword_1BCE3D180;
  *(v0 + 16928) = xmmword_1BCE3D190;
  *(v0 + 17072) = xmmword_1BCE3CB30;
  *(v0 + 17088) = 0x447A000044160000;
  *(v0 + 17104) = xmmword_1BCE4B150;
  *(v0 + 17136) = xmmword_1BCE3D1C0;
  *(v0 + 17152) = xmmword_1BCE3D1D0;
  *(v0 + 17168) = xmmword_1BCE4B160;
  *(v0 + 17184) = xmmword_1BCE4B170;
  *(v0 + 17232) = vdupq_n_s64(0x3FE8F90420000000uLL);
  *(v0 + 17248) = xmmword_1BCE3DC60;
  *(v0 + 17312) = xmmword_1BCE3DC70;
  *(v0 + 7616) = xmmword_1BCE3C8C0;
  *(v0 + 8832) = xmmword_1BCE3C8C0;
  *(v0 + 10048) = xmmword_1BCE3C8C0;
  *(v0 + 11264) = xmmword_1BCE3C8C0;
  *(v0 + 12480) = xmmword_1BCE3C8C0;
  *(v0 + 13696) = xmmword_1BCE3C8C0;
  *(v0 + 14912) = xmmword_1BCE3C8C0;
  *(v0 + 16128) = xmmword_1BCE3C8C0;
  *(v0 + 17344) = xmmword_1BCE3C8C0;
  *(v0 + 17360) = xmmword_1BCE3CAD0;
  *(v0 + 17392) = v10;
  *(v0 + 17408) = 1062836634;
  *(v0 + 18096) = xmmword_1BCE3D230;
  *(v0 + 18112) = xmmword_1BCE3D240;
  *(v0 + 18128) = xmmword_1BCE3D250;
  *(v0 + 18144) = xmmword_1BCE3D260;
  *(v0 + 18288) = xmmword_1BCE3DC90;
  *(v0 + 18304) = 0x4396000042C80000;
  *(v0 + 18320) = xmmword_1BCE3D270;
  *(v0 + 18352) = xmmword_1BCE3DEC0;
  *(v0 + 18368) = xmmword_1BCE4B180;
  *(v0 + 18384) = xmmword_1BCE3C9A0;
  *(v0 + 18464) = xmmword_1BCE3DCB0;
  *(v0 + 18512) = xmmword_1BCE3D2B0;
  *(v0 + 18528) = xmmword_1BCE3D2C0;
  *(v0 + 18544) = xmmword_1BCE3DDD0;
  *(v0 + 8416) = xmmword_1BCE3CBC0;
  *(v0 + 9632) = xmmword_1BCE3CBC0;
  *(v0 + 10848) = xmmword_1BCE3CBC0;
  *(v0 + 12064) = xmmword_1BCE3CBC0;
  *(v0 + 13280) = xmmword_1BCE3CBC0;
  *(v0 + 14496) = xmmword_1BCE3CBC0;
  *(v0 + 18560) = xmmword_1BCE3CBC0;
  *(v0 + 18576) = xmmword_1BCE3C9F0;
  *(v0 + 13728) = xmmword_1BCE3CA00;
  *(v0 + 14944) = xmmword_1BCE3CA00;
  *(v0 + 16160) = xmmword_1BCE3CA00;
  *(v0 + 17376) = xmmword_1BCE3CA00;
  *(v0 + 18592) = xmmword_1BCE3CA00;
  *(v0 + 18608) = v7;
  *(v0 + 18624) = v7.i64[0];
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
  *(v0 + 18448) = _Q20;
  *(v0 + 19664) = _Q20;
  *(v0 + 20880) = _Q20;
  *(v0 + 19680) = xmmword_1BCE3D910;
  *(v0 + 20896) = xmmword_1BCE3D910;
  *(v0 + 8848) = xmmword_1BCE3C8F0;
  *(v0 + 19792) = xmmword_1BCE3C8F0;
  *(v0 + 21008) = xmmword_1BCE3C8F0;
  *(v0 + 19824) = xmmword_1BCE3D920;
  *(v0 + 21040) = xmmword_1BCE3D920;
  *(v0 + 14992) = xmmword_1BCE4B040;
  *(v0 + 16208) = xmmword_1BCE4B040;
  *(v0 + 17424) = xmmword_1BCE4B040;
  *(v0 + 18640) = xmmword_1BCE4B040;
  *(v0 + 19840) = 0x3F4CCCCD3F800000;
  *(v0 + 19856) = xmmword_1BCE4B040;
  *(v0 + 21056) = 0x3F4CCCCD3F800000;
  *(v0 + 21072) = xmmword_1BCE4B040;
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
  *(v0 + 7600) = result;
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
  *(v0 + 7888) = result;
  *(v0 + 7904) = result;
  *(v0 + 7920) = result;
  *(v0 + 7936) = result;
  *(v0 + 7952) = result;
  *(v0 + 7968) = result;
  *(v0 + 7984) = result;
  *(v0 + 8000) = result;
  *(v0 + 8016) = result;
  *(v0 + 18064) = result;
  *(v0 + 18080) = result;
  *(v0 + 17968) = result;
  *(v0 + 17984) = result;
  *(v0 + 18000) = result;
  *(v0 + 18016) = result;
  *(v0 + 18032) = result;
  *(v0 + 18048) = result;
  *(v0 + 17872) = result;
  *(v0 + 17888) = result;
  *(v0 + 17904) = result;
  *(v0 + 17920) = result;
  *(v0 + 17936) = result;
  *(v0 + 17952) = result;
  *(v0 + 17776) = result;
  *(v0 + 17792) = result;
  *(v0 + 17808) = result;
  *(v0 + 17824) = result;
  *(v0 + 17840) = result;
  *(v0 + 17856) = result;
  *(v0 + 17680) = result;
  *(v0 + 17696) = result;
  *(v0 + 17712) = result;
  *(v0 + 17728) = result;
  *(v0 + 17744) = result;
  *(v0 + 17760) = result;
  *(v0 + 17584) = result;
  *(v0 + 17600) = result;
  *(v0 + 17616) = result;
  *(v0 + 17632) = result;
  *(v0 + 17648) = result;
  *(v0 + 17664) = result;
  *(v0 + 8032) = result;
  *(v0 + 17504) = result;
  *(v0 + 17520) = result;
  *(v0 + 17536) = result;
  *(v0 + 17552) = result;
  *(v0 + 17568) = result;
  *(v0 + 8048) = result;
  *(v0 + 17440) = 0;
  *(v0 + 17448) = 1065353216;
  *(v0 + 17456) = result;
  *(v0 + 17472) = result;
  *(v0 + 17488) = result;
  *(v0 + 8064) = result;
  *(v0 + 8080) = result;
  *(v0 + 8096) = result;
  *(v0 + 8112) = result;
  *(v0 + 8128) = result;
  *(v0 + 17416) = 0x3FEFC7B660000000;
  *(v0 + 8144) = result;
  *(v0 + 8160) = result;
  *(v0 + 17264) = result;
  *(v0 + 17280) = result;
  *(v0 + 17296) = result;
  *(v0 + 17328) = result;
  *(v0 + 8176) = result;
  *(v0 + 0x2000) = result;
  *(v0 + 8208) = result;
  *(v0 + 8224) = result;
  *(v0 + 17200) = result;
  *(v0 + 17216) = result;
  *(v0 + 8240) = result;
  *(v0 + 8256) = result;
  *(v0 + 8272) = result;
  *(v0 + 8288) = result;
  *(v0 + 17120) = result;
  *(v0 + 17008) = result;
  *(v0 + 17065) = *v24;
  *(v0 + 17096) = 1061997773;
  *(v0 + 17024) = result;
  *(v0 + 17040) = 0x3FF0000000000000;
  *(v0 + 17056) = 0xC018000000000000;
  *(v0 + 17064) = 1;
  *(v0 + 17068) = *&v24[3];
  *(v0 + 8304) = result;
  *(v0 + 8320) = result;
  *(v0 + 16944) = result;
  *(v0 + 16960) = result;
  *(v0 + 16984) = 0x3FF0000000000000;
  *(v0 + 16992) = result;
  *(v0 + 8336) = result;
  *(v0 + 8352) = result;
  *(v0 + 8432) = result;
  *(v0 + 16832) = result;
  *(v0 + 16848) = result;
  *(v0 + 16864) = result;
  *(v0 + 16736) = result;
  *(v0 + 16752) = result;
  *(v0 + 16768) = result;
  *(v0 + 16784) = result;
  *(v0 + 16800) = result;
  *(v0 + 16816) = result;
  *(v0 + 16640) = result;
  *(v0 + 16656) = result;
  *(v0 + 16672) = result;
  *(v0 + 16688) = result;
  *(v0 + 16704) = result;
  *(v0 + 16720) = result;
  *(v0 + 16544) = result;
  *(v0 + 16560) = result;
  *(v0 + 16576) = result;
  *(v0 + 16592) = result;
  *(v0 + 16608) = result;
  *(v0 + 16624) = result;
  *(v0 + 16448) = result;
  *(v0 + 16464) = result;
  *(v0 + 16480) = result;
  *(v0 + 16496) = result;
  *(v0 + 16512) = result;
  *(v0 + 16528) = result;
  *(v0 + 16352) = result;
  *(v0 + 16368) = result;
  *(v0 + 0x4000) = result;
  *(v0 + 16400) = result;
  *(v0 + 16416) = result;
  *(v0 + 16432) = result;
  *(v0 + 16256) = result;
  *(v0 + 16272) = result;
  *(v0 + 16288) = result;
  *(v0 + 16304) = result;
  *(v0 + 16320) = result;
  *(v0 + 16336) = result;
  *(v0 + 8448) = result;
  *(v0 + 8472) = 0x3FF0000000000000;
  *(v0 + 16200) = 0x3FEFC7B640000000;
  *(v0 + 16224) = 0;
  *(v0 + 16232) = 0;
  *(v0 + 16240) = result;
  *(v0 + 8480) = result;
  *(v0 + 8496) = result;
  *(v0 + 8512) = result;
  *(v0 + 8528) = 0x3FF0000000000000;
  *(v0 + 8544) = 0x4032000000000000;
  *(v0 + 8552) = 0;
  *(v0 + 8553) = *v17;
  *(v0 + 16112) = result;
  *(v0 + 8556) = *&v17[3];
  *(v0 + 16000) = result;
  *(v0 + 16016) = result;
  *(v0 + 16048) = result;
  *(v0 + 16064) = result;
  *(v0 + 8584) = 1058642330;
  *(v0 + 8640) = result;
  *(v0 + 8656) = result;
  *(v0 + 8672) = result;
  *(v0 + 8688) = result;
  *(v0 + 15984) = result;
  *(v0 + 8704) = result;
  *(v0 + 8720) = result;
  *(v0 + 8752) = result;
  *(v0 + 15840) = 0;
  *(v0 + 15848) = 1;
  *(v0 + 15849) = *v23;
  *(v0 + 15852) = *&v23[3];
  *(v0 + 15880) = 1061997773;
  *(v0 + 8768) = result;
  *(v0 + 15768) = 0x3FF0000000000000;
  *(v0 + 15776) = result;
  *(v0 + 15792) = result;
  *(v0 + 15808) = result;
  *(v0 + 15824) = 0x3FF0000000000000;
  *(v0 + 8784) = result;
  *(v0 + 8800) = result;
  *(v0 + 8816) = result;
  *(v0 + 8864) = result;
  *(v0 + 15728) = result;
  *(v0 + 15744) = result;
  *(v0 + 8904) = 0x3FEFC7B620000000;
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
  *(v0 + 15016) = 0;
  *(v0 + 15024) = result;
  *(v0 + 15040) = result;
  *(v0 + 15056) = result;
  *(v0 + 15072) = result;
  *(v0 + 15088) = result;
  *(v0 + 8928) = 0x3FF0000000000000;
  *(v0 + 8936) = 0;
  *(v0 + 8944) = result;
  *(v0 + 8960) = result;
  *(v0 + 14984) = 0x3FEFC7B660000000;
  *(v0 + 15008) = 0x3FE0000000000000;
  *(v0 + 8976) = result;
  *(v0 + 8992) = result;
  *(v0 + 9008) = result;
  *(v0 + 9024) = result;
  *(v0 + 14848) = result;
  *(v0 + 14896) = result;
  *(v0 + 9040) = result;
  *(v0 + 9056) = result;
  *(v0 + 14768) = result;
  *(v0 + 14784) = result;
  *(v0 + 14800) = result;
  *(v0 + 14832) = result;
  *(v0 + 9072) = result;
  *(v0 + 9088) = result;
  *(v0 + 9104) = result;
  *(v0 + 9120) = result;
  *(v0 + 9136) = result;
  *(v0 + 9152) = result;
  *(v0 + 14592) = result;
  *(v0 + 14633) = *v22;
  *(v0 + 14664) = 1060320052;
  *(v0 + 14608) = 0x3FF0000000000000;
  *(v0 + 14624) = 0x4018000000000010;
  *(v0 + 14632) = 1;
  *(v0 + 14636) = *&v22[3];
  *(v0 + 9168) = result;
  *(v0 + 14512) = result;
  *(v0 + 14528) = result;
  *(v0 + 14552) = 0x3FF0000000000000;
  *(v0 + 14560) = result;
  *(v0 + 14576) = result;
  *(v0 + 9184) = result;
  *(v0 + 9200) = result;
  *(v0 + 9216) = result;
  *(v0 + 9232) = result;
  *(v0 + 14416) = result;
  *(v0 + 14432) = result;
  *(v0 + 14320) = result;
  *(v0 + 14336) = result;
  *(v0 + 14352) = result;
  *(v0 + 14368) = result;
  *(v0 + 14384) = result;
  *(v0 + 14400) = result;
  *(v0 + 14224) = result;
  *(v0 + 14240) = result;
  *(v0 + 14256) = result;
  *(v0 + 14272) = result;
  *(v0 + 14288) = result;
  *(v0 + 14304) = result;
  *(v0 + 14128) = result;
  *(v0 + 14144) = result;
  *(v0 + 14160) = result;
  *(v0 + 14176) = result;
  *(v0 + 14192) = result;
  *(v0 + 14208) = result;
  *(v0 + 14032) = result;
  *(v0 + 14048) = result;
  *(v0 + 14064) = result;
  *(v0 + 14080) = result;
  *(v0 + 14096) = result;
  *(v0 + 14112) = result;
  *(v0 + 13936) = result;
  *(v0 + 13952) = result;
  *(v0 + 13968) = result;
  *(v0 + 13984) = result;
  *(v0 + 14000) = result;
  *(v0 + 14016) = result;
  *(v0 + 13840) = result;
  *(v0 + 13856) = result;
  *(v0 + 13872) = result;
  *(v0 + 13888) = result;
  *(v0 + 13904) = result;
  *(v0 + 13920) = result;
  *(v0 + 9248) = result;
  *(v0 + 13768) = 0x3FEFC7B620000000;
  *(v0 + 13792) = 0x3FF0000000000000;
  *(v0 + 13800) = 0;
  *(v0 + 13808) = result;
  *(v0 + 13824) = result;
  *(v0 + 9264) = result;
  *(v0 + 9280) = result;
  *(v0 + 9296) = result;
  *(v0 + 9312) = result;
  *(v0 + 9328) = result;
  *(v0 + 13680) = result;
  *(v0 + 9344) = result;
  *(v0 + 13584) = result;
  *(v0 + 13616) = result;
  *(v0 + 13632) = result;
  *(v0 + 13648) = result;
  *(v0 + 13664) = result;
  *(v0 + 9360) = result;
  *(v0 + 9376) = result;
  *(v0 + 9392) = result;
  *(v0 + 9408) = result;
  *(v0 + 13552) = result;
  *(v0 + 13568) = result;
  *(v0 + 9424) = result;
  *(v0 + 9440) = result;
  *(v0 + 9456) = result;
  *(v0 + 9472) = result;
  *(v0 + 9488) = result;
  *(v0 + 13417) = *v21;
  *(v0 + 13420) = *&v21[3];
  *(v0 + 13448) = 1058642330;
  *(v0 + 13344) = result;
  *(v0 + 13360) = result;
  *(v0 + 13376) = result;
  *(v0 + 13392) = 0x3FF0000000000000;
  *(v0 + 13408) = 0x4028000000000000;
  *(v0 + 13416) = 1;
  *(v0 + 9504) = result;
  *(v0 + 9520) = result;
  *(v0 + 9536) = result;
  *(v0 + 13296) = result;
  *(v0 + 13312) = result;
  *(v0 + 13336) = 0x3FF0000000000000;
  *(v0 + 9552) = result;
  *(v0 + 9568) = result;
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
  *(v0 + 9648) = result;
  *(v0 + 9664) = result;
  *(v0 + 9688) = 0x3FF0000000000000;
  *(v0 + 12552) = 0x3FEFC7B620000000;
  *(v0 + 12576) = 0x3FF0000000000000;
  *(v0 + 12584) = 0;
  *(v0 + 9696) = result;
  *(v0 + 12432) = result;
  *(v0 + 12448) = result;
  *(v0 + 12464) = result;
  *(v0 + 12496) = result;
  *(v0 + 12512) = result;
  *(v0 + 9712) = result;
  *(v0 + 9728) = result;
  *(v0 + 12352) = result;
  *(v0 + 12368) = result;
  *(v0 + 12400) = result;
  *(v0 + 12416) = result;
  *(v0 + 9744) = 0x3FF0000000000000;
  *(v0 + 9760) = 0x403DFFFFFFFFFFFELL;
  *(v0 + 12304) = result;
  *(v0 + 12320) = result;
  *(v0 + 12336) = result;
  *(v0 + 9768) = 0;
  *(v0 + 9769) = *v18;
  *(v0 + 12288) = result;
  *(v0 + 12201) = *v20;
  *(v0 + 12232) = 1058642330;
  *(v0 + 9772) = *&v18[3];
  *(v0 + 12176) = 0x3FF0000000000000;
  *(v0 + 12192) = 0x4032000000000000;
  *(v0 + 12200) = 1;
  *(v0 + 12204) = *&v20[3];
  *(v0 + 9800) = 1061997773;
  *(v0 + 12096) = result;
  *(v0 + 12120) = 0x3FF0000000000000;
  *(v0 + 12128) = result;
  *(v0 + 12144) = result;
  *(v0 + 12160) = result;
  *(v0 + 9904) = result;
  *(v0 + 9920) = result;
  *(v0 + 9936) = result;
  *(v0 + 9968) = result;
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
  *(v0 + 9984) = result;
  *(v0 + 11360) = 0x3FF0000000000000;
  *(v0 + 11368) = 0;
  *(v0 + 11376) = result;
  *(v0 + 11392) = result;
  *(v0 + 11408) = result;
  *(v0 + 10000) = result;
  *(v0 + 10016) = result;
  *(v0 + 10080) = result;
  *(v0 + 11296) = result;
  *(v0 + 11336) = 0x3FEFFC6E20000000;
  *(v0 + 10120) = 0x3FF0000000000000;
  *(v0 + 10144) = 0x3FF0000000000000;
  *(v0 + 11184) = result;
  *(v0 + 11200) = result;
  *(v0 + 11216) = result;
  *(v0 + 11232) = result;
  *(v0 + 10152) = 0;
  *(v0 + 10160) = result;
  *(v0 + 10176) = result;
  *(v0 + 11120) = result;
  *(v0 + 11136) = result;
  *(v0 + 11152) = result;
  *(v0 + 10192) = result;
  *(v0 + 10208) = result;
  *(v0 + 10224) = result;
  *(v0 + 10240) = result;
  *(v0 + 10256) = result;
  *(v0 + 10272) = result;
  *(v0 + 10928) = result;
  *(v0 + 10985) = *v19;
  *(v0 + 11016) = 1061997773;
  *(v0 + 10944) = result;
  *(v0 + 10960) = 0x3FF0000000000000;
  *(v0 + 10976) = 0x403DFFFFFFFFFFFELL;
  *(v0 + 10984) = 1;
  *(v0 + 10988) = *&v19[3];
  *(v0 + 10288) = result;
  *(v0 + 10304) = result;
  *(v0 + 10864) = result;
  *(v0 + 10880) = result;
  *(v0 + 10904) = 0x3FF0000000000000;
  *(v0 + 10912) = result;
  *(v0 + 10320) = result;
  *(v0 + 10336) = result;
  *(v0 + 10352) = result;
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
  *(v0 + 18160) = result;
  *(v0 + 18176) = result;
  *(v0 + 18208) = result;
  *(v0 + 18224) = result;
  *(v0 + 18240) = result;
  *(v0 + 18336) = result;
  *(v0 + 18400) = result;
  *(v0 + 18416) = result;
  *(v0 + 18432) = result;
  *(v0 + 18480) = result;
  *(v0 + 18496) = result;
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
  *(v0 + 19648) = result;
  *(v0 + 19696) = result;
  *(v0 + 19712) = result;
  *(v0 + 19728) = result;
  *(v0 + 19744) = result;
  *(v0 + 19760) = result;
  *(v0 + 19776) = result;
  *(v0 + 19808) = result;
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
  *(v0 + 20864) = result;
  *(v0 + 20912) = result;
  *(v0 + 20928) = result;
  *(v0 + 20944) = result;
  *(v0 + 20960) = result;
  *(v0 + 20976) = result;
  *(v0 + 20992) = result;
  *(v0 + 21024) = result;
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
  *(v0 + 7688) = 0x3FEFC7B620000000;
  *(v0 + 7712) = 0x3FF0000000000000;
  *(v0 + 7720) = 0;
  *(v0 + 18200) = 0x3FF0000000000000;
  *(v0 + 18256) = 0x3FF0000000000000;
  *(v0 + 18272) = 0xC028000000000000;
  *(v0 + 18280) = 1;
  *(v0 + 18281) = *v25;
  *(v0 + 18284) = *&v25[3];
  *(v0 + 18312) = 1036831952;
  *(v0 + 18632) = 0x3FEFC7B640000000;
  *(v0 + 18656) = 0;
  *(v0 + 18664) = 1065353216;
  *(v0 + 19416) = 0x3FF0000000000000;
  *(v0 + 19472) = 0x3FF0000000000000;
  *(v0 + 19488) = 0xC04E000000000002;
  *(v0 + 19496) = 1;
  *(v0 + 19497) = *v26;
  *(v0 + 19500) = *&v26[3];
  *(v0 + 19528) = 1040242952;
  *(v0 + 19848) = 0x3FEFC7B640000000;
  *(v0 + 19872) = 0;
  *(v0 + 19880) = 1065353216;
  *(v0 + 20632) = 0x3FF0000000000000;
  *(v0 + 20688) = 0x3FF0000000000000;
  *(v0 + 20704) = 0xC056800000000000;
  *(v0 + 20712) = 1;
  *(v0 + 20713) = *v27;
  *(v0 + 20716) = *&v27[3];
  *(v0 + 20744) = 1040242952;
  *(v0 + 21064) = 0x3FEFC7B640000000;
  *(v0 + 21088) = 0;
  *(v0 + 21096) = 1065353216;
  *(v0 + 21848) = 0x3FF0000000000000;
  *(v0 + 21904) = 0x3FF0000000000000;
  return result;
}

double sub_1BCABD910()
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

  *(v0 + 176) = _Q0;
  *(v0 + 192) = _Q0;
  __asm { FMOV            V23.2D, #0.5 }

  *(v0 + 208) = _Q23;
  *(v0 + 224) = xmmword_1BCE3D910;
  *(v0 + 240) = _Q0;
  *(v0 + 256) = _Q0;
  *(v0 + 272) = _Q0;
  *(v0 + 288) = _Q0;
  *(v0 + 304) = _Q0;
  *(v0 + 320) = _Q0;
  *(v0 + 336) = xmmword_1BCE3C8F0;
  *(v0 + 352) = _Q0;
  *(v0 + 368) = xmmword_1BCE3D920;
  *(v0 + 384) = 0x3F4CCCCD3F800000;
  *(v0 + 392) = 0x3FEFC7B640000000;
  *(v0 + 400) = xmmword_1BCE4B040;
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
  *(v0 + 1257) = *v13;
  *(v0 + 1260) = *&v13[3];
  *(v0 + 1264) = xmmword_1BCE3C830;
  *(v0 + 1280) = 0x432A000043480000;
  *(v0 + 1288) = 1040242952;
  *(v0 + 1296) = xmmword_1BCE3C840;
  *(v0 + 1312) = xmmword_1BCE3C850;
  *(v0 + 1328) = xmmword_1BCE3C860;
  *(v0 + 1344) = xmmword_1BCE3C870;
  *(v0 + 1360) = xmmword_1BCE3C880;
  *(v0 + 1376) = xmmword_1BCE3C890;
  *(v0 + 1392) = _Q0;
  *(v0 + 1408) = _Q0;
  *(v0 + 1424) = _Q23;
  *(v0 + 1440) = xmmword_1BCE3D910;
  *(v0 + 1456) = _Q0;
  *(v0 + 1472) = _Q0;
  *(v0 + 1488) = _Q0;
  *(v0 + 1504) = _Q0;
  *(v0 + 1520) = _Q0;
  *(v0 + 1536) = _Q0;
  *(v0 + 1552) = xmmword_1BCE3C8F0;
  *(v0 + 1568) = _Q0;
  *(v0 + 1584) = xmmword_1BCE3D920;
  *(v0 + 1600) = 0x3F4CCCCD3F800000;
  *(v0 + 1608) = 0x3FEFC7B640000000;
  *(v0 + 1616) = xmmword_1BCE4B040;
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
  *(v0 + 2080) = _Q0;
  *(v0 + 2096) = _Q0;
  *(v0 + 2112) = _Q0;
  *(v0 + 2128) = _Q0;
  *(v0 + 2144) = _Q0;
  *(v0 + 2160) = _Q0;
  *(v0 + 2176) = _Q0;
  *(v0 + 2192) = _Q0;
  *(v0 + 2208) = _Q0;
  *(v0 + 2224) = _Q0;
  *(v0 + 2240) = _Q0;
  *(v0 + 2288) = vdupq_n_s64(0x3FCF6CD7E0000000uLL);
  *(v0 + 2304) = xmmword_1BCE3C940;
  *(v0 + 2320) = xmmword_1BCE3C950;
  *(v0 + 2336) = xmmword_1BCE3C960;
  *(v0 + 2400) = xmmword_1BCE3D380;
  *(v0 + 2432) = xmmword_1BCE3D390;
  *(v0 + 2512) = xmmword_1BCE3C970;
  *(v0 + 2560) = xmmword_1BCE3C990;
  *(v0 + 2704) = xmmword_1BCE3D3C0;
  *(v0 + 2720) = xmmword_1BCE3D3D0;
  *(v0 + 2736) = xmmword_1BCE3C9E0;
  v7 = vdupq_n_s32(0x3F4CCCCDu);
  *(v0 + 2800) = v7;
  *(v0 + 2816) = v7.i64[0];
  *(v0 + 2824) = 0x3FEFC7B660000000;
  *(v0 + 2832) = xmmword_1BCE4B040;
  *(v0 + 2848) = 0;
  *(v0 + 2856) = 1065353216;
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
  *(v0 + 3600) = 0x4120000042B40000;
  *(v0 + 3608) = 0x3FEB439580000000;
  *(v0 + 3616) = xmmword_1BCE3DCF0;
  *(v0 + 3632) = xmmword_1BCE3DD00;
  *(v0 + 3648) = xmmword_1BCE3DD10;
  *(v0 + 3664) = 0x3FF0000000000000;
  *(v0 + 3680) = 0xC018000000000000;
  *(v0 + 3688) = 0;
  *(v0 + 3689) = *v15;
  *(v0 + 3692) = *&v15[3];
  *(v0 + 3696) = xmmword_1BCE3CB30;
  *(v0 + 3712) = 0x447A000044160000;
  *(v0 + 3720) = 1061997773;
  *(v0 + 3728) = xmmword_1BCE3CA60;
  *(v0 + 3744) = _Q0;
  *(v0 + 3760) = xmmword_1BCE3CA70;
  *(v0 + 3776) = xmmword_1BCE3CA80;
  *(v0 + 3792) = xmmword_1BCE3CA90;
  *(v0 + 3808) = xmmword_1BCE3CAA0;
  *(v0 + 3824) = _Q0;
  *(v0 + 3840) = _Q0;
  *(v0 + 3856) = vdupq_n_s64(0x3FE88B6D00000000uLL);
  *(v0 + 3872) = xmmword_1BCE3D960;
  *(v0 + 3888) = _Q0;
  *(v0 + 3904) = _Q0;
  *(v0 + 3920) = _Q0;
  *(v0 + 3936) = _Q0;
  v12 = vdupq_n_s32(0x3F59999Au);
  *(v0 + 4016) = v12;
  *(v0 + 4032) = 1062836634;
  *(v0 + 4040) = 0x3FEFC7B640000000;
  *(v0 + 4048) = xmmword_1BCE4B040;
  *(v0 + 4064) = 0;
  *(v0 + 4072) = 1065353216;
  *(v0 + 4640) = _Q0;
  *(v0 + 4656) = _Q0;
  *(v0 + 4864) = xmmword_1BCE3DD30;
  *(v0 + 4880) = 0x3FF0000000000000;
  *(v0 + 4824) = 0x3FE8000000000000;
  *(v0 + 4832) = xmmword_1BCE3DD20;
  *(v0 + 4848) = xmmword_1BCE3DD00;
  *(v0 + 4736) = xmmword_1BCE3CB10;
  *(v0 + 4800) = _Q0;
  *(v0 + 4816) = 0x41A0000041F00000;
  *(v0 + 4752) = xmmword_1BCE3CB20;
  *(v0 + 4768) = xmmword_1BCE3CB10;
  *(v0 + 4784) = xmmword_1BCE3D410;
  *(v0 + 4672) = _Q0;
  *(v0 + 4688) = _Q0;
  *(v0 + 4704) = _Q0;
  *(v0 + 4720) = xmmword_1BCE3CB00;
  *(v0 + 4544) = _Q0;
  *(v0 + 4560) = _Q0;
  *(v0 + 4576) = _Q0;
  *(v0 + 4592) = _Q0;
  *(v0 + 4608) = _Q0;
  *(v0 + 4624) = _Q0;
  *(v0 + 4448) = _Q0;
  *(v0 + 4464) = _Q0;
  *(v0 + 4480) = _Q0;
  *(v0 + 4496) = _Q0;
  *(v0 + 4512) = _Q0;
  *(v0 + 4528) = _Q0;
  *(v0 + 4352) = _Q0;
  *(v0 + 4368) = _Q0;
  *(v0 + 4384) = _Q0;
  *(v0 + 4400) = _Q0;
  *(v0 + 4416) = _Q0;
  *(v0 + 4432) = _Q0;
  *(v0 + 4256) = _Q0;
  *(v0 + 4272) = _Q0;
  *(v0 + 4288) = _Q0;
  *(v0 + 4304) = _Q0;
  *(v0 + 4320) = _Q0;
  *(v0 + 4336) = _Q0;
  *(v0 + 4160) = _Q0;
  *(v0 + 4176) = _Q0;
  *(v0 + 4192) = _Q0;
  *(v0 + 4208) = _Q0;
  *(v0 + 4224) = _Q0;
  *(v0 + 4240) = _Q0;
  *(v0 + 4080) = _Q0;
  *(v0 + 4096) = _Q0;
  *(v0 + 4112) = _Q0;
  *(v0 + 4128) = _Q0;
  *(v0 + 4144) = _Q0;
  *(v0 + 4944) = xmmword_1BCE3DA10;
  *(v0 + 4960) = xmmword_1BCE3DA20;
  *(v0 + 4976) = xmmword_1BCE3CB60;
  *(v0 + 4992) = xmmword_1BCE3CB70;
  *(v0 + 5008) = xmmword_1BCE3DA30;
  *(v0 + 5024) = xmmword_1BCE3DA40;
  *(v0 + 5168) = xmmword_1BCE3DA80;
  *(v0 + 5184) = xmmword_1BCE3CBE0;
  *(v0 + 5936) = xmmword_1BCE3CC10;
  *(v0 + 5968) = xmmword_1BCE3CC30;
  *(v0 + 5952) = xmmword_1BCE3CC20;
  *(v0 + 5984) = xmmword_1BCE3CC20;
  *(v0 + 3984) = xmmword_1BCE3CAD0;
  *(v0 + 4000) = xmmword_1BCE3CA00;
  *(v0 + 6000) = xmmword_1BCE3D410;
  *(v0 + 6032) = 0x4170000041A00000;
  *(v0 + 3968) = xmmword_1BCE3C8C0;
  *(v0 + 3952) = _Q0;
  *(v0 + 6048) = xmmword_1BCE3DD20;
  *(v0 + 6080) = xmmword_1BCE3D460;
  *(v0 + 6128) = xmmword_1BCE3CC40;
  *(v0 + 6160) = xmmword_1BCE3DA90;
  *(v0 + 6176) = xmmword_1BCE3DAA0;
  *(v0 + 6192) = xmmword_1BCE4B050;
  *(v0 + 6208) = xmmword_1BCE4B060;
  *(v0 + 6224) = xmmword_1BCE3CC90;
  *(v0 + 6240) = xmmword_1BCE3CCA0;
  *(v0 + 6384) = xmmword_1BCE3DAF0;
  *(v0 + 6400) = xmmword_1BCE3DB00;
  *(v0 + 6416) = xmmword_1BCE3CCD0;
  *(v0 + 6432) = xmmword_1BCE3CCE0;
  *(v0 + 7152) = xmmword_1BCE3CD10;
  *(v0 + 7184) = xmmword_1BCE3CD30;
  *(v0 + 7168) = xmmword_1BCE3CD20;
  *(v0 + 7200) = xmmword_1BCE3CD20;
  *(v0 + 7264) = xmmword_1BCE3DD40;
  *(v0 + 7280) = xmmword_1BCE3D480;
  *(v0 + 7296) = xmmword_1BCE3D490;
  *(v0 + 7344) = xmmword_1BCE3CD40;
  *(v0 + 7408) = xmmword_1BCE4B070;
  *(v0 + 7424) = xmmword_1BCE3CE60;
  *(v0 + 7552) = _Q0;
  *(v0 + 7632) = xmmword_1BCE3CD90;
  *(v0 + 7648) = xmmword_1BCE3CDA0;
  *(v0 + 8368) = xmmword_1BCE3CDD0;
  *(v0 + 8400) = xmmword_1BCE3CDE0;
  *(v0 + 8480) = xmmword_1BCE3DD50;
  *(v0 + 8512) = xmmword_1BCE3D4C0;
  *(v0 + 8560) = xmmword_1BCE3CDF0;
  *(v0 + 8624) = xmmword_1BCE4B090;
  *(v0 + 9696) = xmmword_1BCE3D4D0;
  *(v0 + 9728) = xmmword_1BCE3D4F0;
  *(v0 + 10128) = xmmword_1BCE4B0C0;
  *(v0 + 9584) = xmmword_1BCE3CE20;
  *(v0 + 10800) = xmmword_1BCE3CE20;
  *(v0 + 10944) = xmmword_1BCE3D500;
  *(v0 + 9776) = xmmword_1BCE3CE40;
  *(v0 + 10992) = xmmword_1BCE3CE40;
  *(v0 + 9792) = 1150681088;
  *(v0 + 11008) = 1150681088;
  *(v0 + 9840) = xmmword_1BCE4B0A0;
  *(v0 + 11056) = xmmword_1BCE4B0A0;
  *(v0 + 9856) = xmmword_1BCE4B0B0;
  *(v0 + 11072) = xmmword_1BCE4B0B0;
  *(v0 + 9872) = xmmword_1BCE3CE70;
  *(v0 + 11088) = xmmword_1BCE3CE70;
  *(v0 + 9888) = xmmword_1BCE3CE80;
  *(v0 + 11104) = xmmword_1BCE3CE80;
  *(v0 + 11344) = xmmword_1BCE4B0D0;
  *(v0 + 10816) = xmmword_1BCE3CE90;
  *(v0 + 12032) = xmmword_1BCE3CE90;
  *(v0 + 9616) = xmmword_1BCE3CE30;
  *(v0 + 12048) = xmmword_1BCE3CE30;
  *(v0 + 12160) = xmmword_1BCE3D510;
  *(v0 + 12208) = xmmword_1BCE3CEC0;
  *(v0 + 8576) = 0x41A0000044960000;
  *(v0 + 12224) = 0x41A0000044960000;
  *(v0 + 7376) = xmmword_1BCE3DB10;
  *(v0 + 8592) = xmmword_1BCE3DB10;
  *(v0 + 9808) = xmmword_1BCE3DB10;
  *(v0 + 11024) = xmmword_1BCE3DB10;
  *(v0 + 12240) = xmmword_1BCE3DB10;
  *(v0 + 7392) = xmmword_1BCE3CD50;
  *(v0 + 8608) = xmmword_1BCE3CD50;
  *(v0 + 9824) = xmmword_1BCE3CD50;
  *(v0 + 11040) = xmmword_1BCE3CD50;
  *(v0 + 12256) = xmmword_1BCE3CD50;
  *(v0 + 12272) = xmmword_1BCE4B0E0;
  *(v0 + 10832) = xmmword_1BCE3CEA0;
  *(v0 + 13264) = xmmword_1BCE3CEA0;
  *(v0 + 13376) = xmmword_1BCE3D520;
  *(v0 + 13424) = xmmword_1BCE4B0F0;
  *(v0 + 7360) = 1147207680;
  *(v0 + 13440) = 1147207680;
  *(v0 + 13456) = xmmword_1BCE3DB50;
  *(v0 + 13472) = xmmword_1BCE3CF10;
  *(v0 + 13488) = xmmword_1BCE4B100;
  *(v0 + 13504) = xmmword_1BCE4B110;
  *(v0 + 7440) = xmmword_1BCE3CD70;
  *(v0 + 13520) = xmmword_1BCE3CD70;
  *(v0 + 7456) = xmmword_1BCE3CD80;
  *(v0 + 13536) = xmmword_1BCE3CD80;
  *(v0 + 13712) = xmmword_1BCE3CF60;
  *(v0 + 7696) = xmmword_1BCE4B080;
  *(v0 + 8912) = xmmword_1BCE4B080;
  *(v0 + 12560) = xmmword_1BCE4B080;
  *(v0 + 13776) = xmmword_1BCE4B080;
  *(v0 + 12016) = xmmword_1BCE3CEB0;
  *(v0 + 13232) = xmmword_1BCE3CEB0;
  *(v0 + 14448) = xmmword_1BCE3CEB0;
  *(v0 + 8384) = xmmword_1BCE3CBB0;
  *(v0 + 9600) = xmmword_1BCE3CBB0;
  *(v0 + 13248) = xmmword_1BCE3CBB0;
  *(v0 + 14464) = xmmword_1BCE3CBB0;
  *(v0 + 14480) = xmmword_1BCE3CF90;
  *(v0 + 14560) = xmmword_1BCE3DD60;
  *(v0 + 8496) = xmmword_1BCE3D4B0;
  *(v0 + 14576) = xmmword_1BCE3D4B0;
  *(v0 + 14592) = xmmword_1BCE3D540;
  *(v0 + 14640) = xmmword_1BCE4B120;
  *(v0 + 6144) = 0x44480000443B8000;
  *(v0 + 14656) = 0x44480000443B8000;
  *(v0 + 14672) = xmmword_1BCE3DF50;
  *(v0 + 2752) = xmmword_1BCE3CBC0;
  *(v0 + 2768) = xmmword_1BCE3C9F0;
  *(v0 + 2784) = xmmword_1BCE3CA00;
  *(v0 + 2640) = _Q23;
  *(v0 + 2656) = xmmword_1BCE3DCB0;
  *(v0 + 2672) = _Q0;
  *(v0 + 2688) = _Q0;
  *(v0 + 2256) = _Q0;
  *(v0 + 2272) = _Q0;
  *(v0 + 2352) = xmmword_1BCE3D350;
  *(v0 + 2608) = _Q0;
  *(v0 + 2624) = _Q0;
  *(v0 + 2496) = 0x4396000042C80000;
  *(v0 + 2576) = xmmword_1BCE3C9A0;
  *(v0 + 2592) = _Q0;
  *(v0 + 2504) = 1036831949;
  *(v0 + 2528) = _Q0;
  *(v0 + 2544) = xmmword_1BCE3DEC0;
  *(v0 + 2448) = 0x3FF0000000000000;
  *(v0 + 2464) = 0xC028000000000000;
  *(v0 + 2472) = 0;
  *(v0 + 2473) = *v14;
  *(v0 + 2476) = *&v14[3];
  *(v0 + 2480) = xmmword_1BCE3DC90;
  *(v0 + 2368) = _Q0;
  *(v0 + 2384) = 0x4120000042FA0000;
  *(v0 + 2392) = 0x3FEBA9FBE0000000;
  *(v0 + 2416) = _Q0;
  *(v0 + 4896) = 0;
  *(v0 + 4904) = 0;
  *(v0 + 4905) = *v16;
  *(v0 + 4908) = *&v16[3];
  *(v0 + 4912) = xmmword_1BCE3CB30;
  *(v0 + 4928) = 0x44C8000044160000;
  *(v0 + 4936) = 1061997773;
  *(v0 + 5040) = _Q0;
  *(v0 + 5056) = _Q0;
  *(v0 + 5072) = _Q0;
  *(v0 + 5088) = xmmword_1BCE3DA70;
  *(v0 + 5104) = _Q0;
  *(v0 + 5120) = _Q0;
  *(v0 + 5136) = _Q0;
  *(v0 + 5152) = _Q0;
  *(v0 + 5200) = xmmword_1BCE3CBF0;
  *(v0 + 5216) = xmmword_1BCE3CA00;
  v8 = vdupq_n_s32(0x3F666666u);
  *(v0 + 5232) = v8;
  *(v0 + 5248) = 1063675494;
  *(v0 + 5256) = 0x3FEFC7B640000000;
  *(v0 + 5264) = xmmword_1BCE4B040;
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
  *(v0 + 6040) = 0x3FE7333340000000;
  *(v0 + 6064) = _Q0;
  *(v0 + 6096) = 0x3FF0000000000000;
  *(v0 + 6112) = 0x4017FFFFFFFFFFFALL;
  *(v0 + 6120) = 0;
  *(v0 + 6121) = *v17;
  *(v0 + 6124) = *&v17[3];
  *(v0 + 6152) = 1060320052;
  *(v0 + 6256) = _Q0;
  *(v0 + 6272) = _Q0;
  *(v0 + 6288) = _Q0;
  *(v0 + 6304) = xmmword_1BCE3DAE0;
  *(v0 + 6320) = _Q0;
  *(v0 + 6336) = _Q0;
  *(v0 + 6352) = _Q0;
  *(v0 + 6368) = _Q0;
  *(v0 + 6448) = v8;
  *(v0 + 6464) = 1063675494;
  *(v0 + 6472) = 0x3FEFC7B660000000;
  *(v0 + 6480) = xmmword_1BCE4B040;
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
  *(v0 + 7256) = 0x3FE369D020000000;
  *(v0 + 7312) = 0x3FF0000000000000;
  *(v0 + 7328) = 0x4028000000000000;
  *(v0 + 7336) = 0;
  *(v0 + 7337) = *v18;
  *(v0 + 7340) = *&v18[3];
  *(v0 + 7368) = 1058642330;
  *(v0 + 7472) = _Q0;
  *(v0 + 7488) = _Q0;
  *(v0 + 7504) = _Q0;
  *(v0 + 7520) = xmmword_1BCE3DAE0;
  *(v0 + 7536) = _Q0;
  *(v0 + 14688) = xmmword_1BCE3DF60;
  *(v0 + 14704) = xmmword_1BCE4B130;
  *(v0 + 14720) = xmmword_1BCE4B140;
  *(v0 + 14736) = xmmword_1BCE3DBA0;
  *(v0 + 14752) = xmmword_1BCE3DBB0;
  *(v0 + 13600) = xmmword_1BCE3DAE0;
  *(v0 + 14816) = xmmword_1BCE3DAE0;
  *(v0 + 14864) = xmmword_1BCE3D010;
  *(v0 + 14880) = xmmword_1BCE3DBE0;
  *(v0 + 14928) = xmmword_1BCE3D040;
  *(v0 + 15664) = xmmword_1BCE3D070;
  *(v0 + 15680) = xmmword_1BCE3D080;
  *(v0 + 15696) = xmmword_1BCE3D090;
  *(v0 + 15712) = xmmword_1BCE3D0A0;
  *(v0 + 15776) = xmmword_1BCE3DD70;
  *(v0 + 15808) = xmmword_1BCE3D560;
  *(v0 + 15856) = xmmword_1BCE3D0B0;
  *(v0 + 15872) = 0x44C8000044160000;
  *(v0 + 15888) = xmmword_1BCE3DFA0;
  *(v0 + 15904) = xmmword_1BCE3DFB0;
  *(v0 + 15920) = xmmword_1BCE3DFC0;
  *(v0 + 15936) = xmmword_1BCE3DFD0;
  *(v0 + 15952) = xmmword_1BCE3DC10;
  *(v0 + 15968) = xmmword_1BCE3DC20;
  *(v0 + 8736) = xmmword_1BCE3DA70;
  *(v0 + 9952) = xmmword_1BCE3DA70;
  *(v0 + 11168) = xmmword_1BCE3DA70;
  *(v0 + 12384) = xmmword_1BCE3DA70;
  *(v0 + 16032) = xmmword_1BCE3DA70;
  *(v0 + 10032) = xmmword_1BCE3CCB0;
  *(v0 + 10064) = xmmword_1BCE3CCB0;
  *(v0 + 11248) = xmmword_1BCE3CCB0;
  *(v0 + 11280) = xmmword_1BCE3CCB0;
  *(v0 + 16080) = xmmword_1BCE3CCB0;
  *(v0 + 16096) = xmmword_1BCE3DC50;
  *(v0 + 16144) = xmmword_1BCE3CBF0;
  *(v0 + 7664) = v8;
  *(v0 + 8880) = v8;
  *(v0 + 10096) = v8;
  *(v0 + 11312) = v8;
  *(v0 + 12528) = v8;
  *(v0 + 13744) = v8;
  *(v0 + 14960) = v8;
  *(v0 + 16176) = v8;
  *(v0 + 7680) = 1063675494;
  *(v0 + 8896) = 1063675494;
  *(v0 + 10112) = 1063675494;
  *(v0 + 11328) = 1063675494;
  *(v0 + 12544) = 1063675494;
  *(v0 + 13760) = 1063675494;
  *(v0 + 14976) = 1063675494;
  *(v0 + 16192) = 1063675494;
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
  *(v0 + 16992) = xmmword_1BCE3DD80;
  *(v0 + 17008) = xmmword_1BCE3DD90;
  *(v0 + 17024) = xmmword_1BCE3DDA0;
  *(v0 + 17072) = xmmword_1BCE3CB30;
  *(v0 + 17088) = 0x447A000044160000;
  *(v0 + 17104) = xmmword_1BCE4B150;
  *(v0 + 17136) = xmmword_1BCE3D1C0;
  *(v0 + 17152) = xmmword_1BCE3D1D0;
  *(v0 + 17168) = xmmword_1BCE4B160;
  *(v0 + 17184) = xmmword_1BCE4B170;
  *(v0 + 17232) = vdupq_n_s64(0x3FE8F90420000000uLL);
  *(v0 + 17248) = xmmword_1BCE3DC60;
  *(v0 + 17312) = xmmword_1BCE3DC70;
  *(v0 + 7616) = xmmword_1BCE3C8C0;
  *(v0 + 8832) = xmmword_1BCE3C8C0;
  *(v0 + 10048) = xmmword_1BCE3C8C0;
  *(v0 + 11264) = xmmword_1BCE3C8C0;
  *(v0 + 12480) = xmmword_1BCE3C8C0;
  *(v0 + 13696) = xmmword_1BCE3C8C0;
  *(v0 + 14912) = xmmword_1BCE3C8C0;
  *(v0 + 16128) = xmmword_1BCE3C8C0;
  *(v0 + 17344) = xmmword_1BCE3C8C0;
  *(v0 + 17360) = xmmword_1BCE3CAD0;
  *(v0 + 17392) = v12;
  *(v0 + 17408) = 1062836634;
  *(v0 + 18096) = xmmword_1BCE3D230;
  *(v0 + 18112) = xmmword_1BCE3D240;
  *(v0 + 18128) = xmmword_1BCE3D250;
  *(v0 + 18144) = xmmword_1BCE3D260;
  *(v0 + 18160) = xmmword_1BCE3D5C0;
  *(v0 + 18176) = xmmword_1BCE3D5D0;
  __asm { FMOV            V1.2S, #20.0 }

  *(v0 + 18192) = _D1;
  *(v0 + 18208) = xmmword_1BCE3DDB0;
  *(v0 + 9712) = xmmword_1BCE3D4E0;
  *(v0 + 10928) = xmmword_1BCE3D4E0;
  *(v0 + 12144) = xmmword_1BCE3D4E0;
  *(v0 + 13360) = xmmword_1BCE3D4E0;
  *(v0 + 15792) = xmmword_1BCE3D4E0;
  *(v0 + 18224) = xmmword_1BCE3D4E0;
  *(v0 + 18240) = xmmword_1BCE3DDC0;
  *(v0 + 18288) = xmmword_1BCE3DC90;
  *(v0 + 18304) = 0x4396000042C80000;
  *(v0 + 18320) = xmmword_1BCE3D270;
  *(v0 + 18352) = xmmword_1BCE3DEC0;
  *(v0 + 18368) = xmmword_1BCE4B180;
  *(v0 + 18384) = xmmword_1BCE3C9A0;
  *(v0 + 18464) = xmmword_1BCE3DCB0;
  *(v0 + 18512) = xmmword_1BCE3D2B0;
  *(v0 + 18528) = xmmword_1BCE3D2C0;
  *(v0 + 18544) = xmmword_1BCE3DDD0;
  *(v0 + 8416) = xmmword_1BCE3CBC0;
  *(v0 + 9632) = xmmword_1BCE3CBC0;
  *(v0 + 10848) = xmmword_1BCE3CBC0;
  *(v0 + 12064) = xmmword_1BCE3CBC0;
  *(v0 + 13280) = xmmword_1BCE3CBC0;
  *(v0 + 14496) = xmmword_1BCE3CBC0;
  *(v0 + 18560) = xmmword_1BCE3CBC0;
  *(v0 + 18576) = xmmword_1BCE3C9F0;
  *(v0 + 13728) = xmmword_1BCE3CA00;
  *(v0 + 14944) = xmmword_1BCE3CA00;
  *(v0 + 16160) = xmmword_1BCE3CA00;
  *(v0 + 17376) = xmmword_1BCE3CA00;
  *(v0 + 18592) = xmmword_1BCE3CA00;
  *(v0 + 18608) = v7;
  *(v0 + 18624) = v7.i64[0];
  *(v0 + 19312) = xmmword_1BCE3D2E0;
  *(v0 + 19344) = xmmword_1BCE3D2F0;
  *(v0 + 19376) = xmmword_1BCE3D600;
  *(v0 + 19408) = 0x4120000042B40000;
  *(v0 + 19424) = xmmword_1BCE3DCF0;
  *(v0 + 19440) = xmmword_1BCE3DD00;
  *(v0 + 19456) = xmmword_1BCE3DDE0;
  __asm { FMOV            V1.2D, #0.25 }

  *(v0 + 20528) = _Q1;
  *(v0 + 20560) = xmmword_1BCE3D300;
  *(v0 + 20640) = xmmword_1BCE3D630;
  *(v0 + 20672) = xmmword_1BCE3D640;
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
  *(v0 + 10912) = _Q23;
  *(v0 + 12128) = _Q23;
  *(v0 + 13344) = _Q23;
  *(v0 + 18448) = _Q23;
  *(v0 + 19664) = _Q23;
  *(v0 + 20880) = _Q23;
  *(v0 + 19680) = xmmword_1BCE3D910;
  *(v0 + 20896) = xmmword_1BCE3D910;
  *(v0 + 8848) = xmmword_1BCE3C8F0;
  *(v0 + 19792) = xmmword_1BCE3C8F0;
  *(v0 + 21008) = xmmword_1BCE3C8F0;
  *(v0 + 19824) = xmmword_1BCE3D920;
  *(v0 + 21040) = xmmword_1BCE3D920;
  *(v0 + 19840) = 0x3F4CCCCD3F800000;
  *(v0 + 21056) = 0x3F4CCCCD3F800000;
  *(v0 + 14992) = xmmword_1BCE4B040;
  *(v0 + 16208) = xmmword_1BCE4B040;
  *(v0 + 17424) = xmmword_1BCE4B040;
  *(v0 + 17448) = 1065353216;
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
  *(v0 + 17456) = _Q0;
  *(v0 + 17472) = _Q0;
  *(v0 + 18640) = xmmword_1BCE4B040;
  *(v0 + 19856) = xmmword_1BCE4B040;
  *(v0 + 21072) = xmmword_1BCE4B040;
  *(v0 + 21744) = vdupq_n_s64(0x3FCFEB6B80000000uLL);
  *(v0 + 17264) = _Q0;
  *(v0 + 17416) = 0x3FEFC7B660000000;
  *(v0 + 17440) = 0;
  *(v0 + 17280) = _Q0;
  *(v0 + 17296) = _Q0;
  *(v0 + 17328) = _Q0;
  *(v0 + 19328) = xmmword_1BCE3C910;
  *(v0 + 19360) = xmmword_1BCE3C910;
  *(v0 + 20544) = xmmword_1BCE3C910;
  *(v0 + 20576) = xmmword_1BCE3C910;
  *(v0 + 21760) = xmmword_1BCE3C910;
  *(v0 + 21776) = xmmword_1BCE3D310;
  *(v0 + 21792) = xmmword_1BCE3D320;
  *(v0 + 20592) = xmmword_1BCE3D350;
  *(v0 + 21808) = xmmword_1BCE3D350;
  *(v0 + 17200) = _Q0;
  *(v0 + 17216) = _Q0;
  *(v0 + 20624) = 0x4120000042FA0000;
  *(v0 + 21840) = 0x4120000042FA0000;
  *(v0 + 21856) = xmmword_1BCE3D360;
  *(v0 + 17120) = _Q0;
  *(v0 + 7568) = _Q0;
  *(v0 + 17065) = *v26;
  *(v0 + 17096) = 1061997773;
  *(v0 + 17040) = 0x3FF0000000000000;
  *(v0 + 17056) = 0xC018000000000000;
  *(v0 + 17064) = 1;
  *(v0 + 17068) = *&v26[3];
  *(v0 + 7584) = _Q0;
  *(v0 + 7600) = _Q0;
  *(v0 + 7728) = _Q0;
  *(v0 + 7744) = _Q0;
  *(v0 + 16984) = 0x3FE8000000000000;
  *(v0 + 7760) = _Q0;
  *(v0 + 7776) = _Q0;
  *(v0 + 7792) = _Q0;
  *(v0 + 7808) = _Q0;
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
  *(v0 + 7824) = _Q0;
  *(v0 + 16200) = 0x3FEFC7B640000000;
  *(v0 + 16224) = 0;
  *(v0 + 16232) = 0;
  *(v0 + 16240) = _Q0;
  *(v0 + 16256) = _Q0;
  *(v0 + 7840) = _Q0;
  *(v0 + 7856) = _Q0;
  *(v0 + 7872) = _Q0;
  *(v0 + 7888) = _Q0;
  *(v0 + 7904) = _Q0;
  *(v0 + 16112) = _Q0;
  *(v0 + 7920) = _Q0;
  *(v0 + 7936) = _Q0;
  *(v0 + 7952) = _Q0;
  *(v0 + 16016) = _Q0;
  *(v0 + 16048) = _Q0;
  *(v0 + 16064) = _Q0;
  *(v0 + 7968) = _Q0;
  *(v0 + 7984) = _Q0;
  *(v0 + 8000) = _Q0;
  *(v0 + 8016) = _Q0;
  *(v0 + 15984) = _Q0;
  *(v0 + 16000) = _Q0;
  *(v0 + 8032) = _Q0;
  *(v0 + 8048) = _Q0;
  *(v0 + 8064) = _Q0;
  *(v0 + 8080) = _Q0;
  *(v0 + 15848) = 1;
  *(v0 + 15849) = *v25;
  *(v0 + 15852) = *&v25[3];
  *(v0 + 15880) = 1061997773;
  *(v0 + 8096) = _Q0;
  *(v0 + 8112) = _Q0;
  *(v0 + 8128) = _Q0;
  *(v0 + 8144) = _Q0;
  *(v0 + 15824) = 0x3FF0000000000000;
  *(v0 + 15840) = 0;
  *(v0 + 8160) = _Q0;
  *(v0 + 8176) = _Q0;
  *(v0 + 15728) = _Q0;
  *(v0 + 15744) = _Q0;
  *(v0 + 15768) = 0x3FE4CCCCC0000000;
  *(v0 + 0x2000) = _Q0;
  *(v0 + 8208) = _Q0;
  *(v0 + 15600) = _Q0;
  *(v0 + 15616) = _Q0;
  *(v0 + 15632) = _Q0;
  *(v0 + 15648) = _Q0;
  *(v0 + 15504) = _Q0;
  *(v0 + 15520) = _Q0;
  *(v0 + 15536) = _Q0;
  *(v0 + 15552) = _Q0;
  *(v0 + 15568) = _Q0;
  *(v0 + 15584) = _Q0;
  *(v0 + 15408) = _Q0;
  *(v0 + 15424) = _Q0;
  *(v0 + 15440) = _Q0;
  *(v0 + 15456) = _Q0;
  *(v0 + 15472) = _Q0;
  *(v0 + 15488) = _Q0;
  *(v0 + 15312) = _Q0;
  *(v0 + 15328) = _Q0;
  *(v0 + 15344) = _Q0;
  *(v0 + 15360) = _Q0;
  *(v0 + 15376) = _Q0;
  *(v0 + 15392) = _Q0;
  *(v0 + 15216) = _Q0;
  *(v0 + 15232) = _Q0;
  *(v0 + 15248) = _Q0;
  *(v0 + 15264) = _Q0;
  *(v0 + 15280) = _Q0;
  *(v0 + 15296) = _Q0;
  *(v0 + 15120) = _Q0;
  *(v0 + 15136) = _Q0;
  *(v0 + 15152) = _Q0;
  *(v0 + 15168) = _Q0;
  *(v0 + 15184) = _Q0;
  *(v0 + 15200) = _Q0;
  *(v0 + 15024) = _Q0;
  *(v0 + 15040) = _Q0;
  *(v0 + 15056) = _Q0;
  *(v0 + 15072) = _Q0;
  *(v0 + 15088) = _Q0;
  *(v0 + 15104) = _Q0;
  *(v0 + 8224) = _Q0;
  *(v0 + 8240) = _Q0;
  *(v0 + 8256) = _Q0;
  *(v0 + 14984) = 0x3FEFC7B660000000;
  *(v0 + 15008) = 0x3FE0000000000000;
  *(v0 + 15016) = 0;
  *(v0 + 8272) = _Q0;
  *(v0 + 8288) = _Q0;
  *(v0 + 8304) = _Q0;
  *(v0 + 8320) = _Q0;
  *(v0 + 8336) = _Q0;
  *(v0 + 14896) = _Q0;
  *(v0 + 8352) = _Q0;
  *(v0 + 8432) = _Q0;
  *(v0 + 14784) = _Q0;
  *(v0 + 14800) = _Q0;
  *(v0 + 14832) = _Q0;
  *(v0 + 14848) = _Q0;
  *(v0 + 8448) = _Q0;
  *(v0 + 8472) = 0x3FE0000000000000;
  *(v0 + 8528) = 0x3FF0000000000000;
  *(v0 + 8544) = 0x4032000000000000;
  *(v0 + 14768) = _Q0;
  *(v0 + 8552) = 0;
  *(v0 + 8553) = *v19;
  *(v0 + 8556) = *&v19[3];
  *(v0 + 14633) = *v24;
  *(v0 + 14664) = 1060320052;
  *(v0 + 14608) = 0x3FF0000000000000;
  *(v0 + 14624) = 0x4018000000000010;
  *(v0 + 14632) = 1;
  *(v0 + 14636) = *&v24[3];
  *(v0 + 8584) = 1058642330;
  *(v0 + 8640) = _Q0;
  *(v0 + 8656) = _Q0;
  *(v0 + 8672) = _Q0;
  *(v0 + 14528) = _Q0;
  *(v0 + 14552) = 0x3FE0000000000000;
  *(v0 + 8688) = _Q0;
  *(v0 + 8704) = _Q0;
  *(v0 + 8720) = _Q0;
  *(v0 + 8752) = _Q0;
  *(v0 + 14432) = _Q0;
  *(v0 + 14512) = _Q0;
  *(v0 + 14336) = _Q0;
  *(v0 + 14352) = _Q0;
  *(v0 + 14368) = _Q0;
  *(v0 + 14384) = _Q0;
  *(v0 + 14400) = _Q0;
  *(v0 + 14416) = _Q0;
  *(v0 + 14240) = _Q0;
  *(v0 + 14256) = _Q0;
  *(v0 + 14272) = _Q0;
  *(v0 + 14288) = _Q0;
  *(v0 + 14304) = _Q0;
  *(v0 + 14320) = _Q0;
  *(v0 + 14144) = _Q0;
  *(v0 + 14160) = _Q0;
  *(v0 + 14176) = _Q0;
  *(v0 + 14192) = _Q0;
  *(v0 + 14208) = _Q0;
  *(v0 + 14224) = _Q0;
  *(v0 + 14048) = _Q0;
  *(v0 + 14064) = _Q0;
  *(v0 + 14080) = _Q0;
  *(v0 + 14096) = _Q0;
  *(v0 + 14112) = _Q0;
  *(v0 + 14128) = _Q0;
  *(v0 + 13952) = _Q0;
  *(v0 + 13968) = _Q0;
  *(v0 + 13984) = _Q0;
  *(v0 + 14000) = _Q0;
  *(v0 + 14016) = _Q0;
  *(v0 + 14032) = _Q0;
  *(v0 + 13856) = _Q0;
  *(v0 + 13872) = _Q0;
  *(v0 + 13888) = _Q0;
  *(v0 + 13904) = _Q0;
  *(v0 + 13920) = _Q0;
  *(v0 + 13936) = _Q0;
  *(v0 + 8768) = _Q0;
  *(v0 + 13792) = 0x3FF0000000000000;
  *(v0 + 13800) = 0;
  *(v0 + 13808) = _Q0;
  *(v0 + 13824) = _Q0;
  *(v0 + 13840) = _Q0;
  *(v0 + 8784) = _Q0;
  *(v0 + 8800) = _Q0;
  *(v0 + 8816) = _Q0;
  *(v0 + 8864) = _Q0;
  *(v0 + 8904) = 0x3FEFC7B620000000;
  *(v0 + 13768) = 0x3FEFC7B620000000;
  *(v0 + 8928) = 0x3FF0000000000000;
  *(v0 + 13616) = _Q0;
  *(v0 + 13632) = _Q0;
  *(v0 + 13648) = _Q0;
  *(v0 + 13664) = _Q0;
  *(v0 + 13680) = _Q0;
  *(v0 + 8936) = 0;
  *(v0 + 8944) = _Q0;
  *(v0 + 8960) = _Q0;
  *(v0 + 13552) = _Q0;
  *(v0 + 13568) = _Q0;
  *(v0 + 13584) = _Q0;
  *(v0 + 8976) = _Q0;
  *(v0 + 8992) = _Q0;
  *(v0 + 9008) = _Q0;
  *(v0 + 9024) = _Q0;
  *(v0 + 9040) = _Q0;
  *(v0 + 9056) = _Q0;
  *(v0 + 9072) = _Q0;
  *(v0 + 13417) = *v23;
  *(v0 + 13448) = 1058642330;
  *(v0 + 9088) = _Q0;
  *(v0 + 13392) = 0x3FF0000000000000;
  *(v0 + 13408) = 0x4028000000000000;
  *(v0 + 13416) = 1;
  *(v0 + 13420) = *&v23[3];
  *(v0 + 9104) = _Q0;
  *(v0 + 9120) = _Q0;
  *(v0 + 9136) = _Q0;
  *(v0 + 13296) = _Q0;
  *(v0 + 13312) = _Q0;
  *(v0 + 13336) = 0x3FE0000000000000;
  *(v0 + 9152) = _Q0;
  *(v0 + 9168) = _Q0;
  *(v0 + 9184) = _Q0;
  *(v0 + 9200) = _Q0;
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
  *(v0 + 9216) = _Q0;
  *(v0 + 12552) = 0x3FEFC7B620000000;
  *(v0 + 12576) = 0x3FF0000000000000;
  *(v0 + 12584) = 0;
  *(v0 + 12592) = _Q0;
  *(v0 + 12608) = _Q0;
  *(v0 + 9232) = _Q0;
  *(v0 + 9248) = _Q0;
  *(v0 + 9264) = _Q0;
  *(v0 + 12464) = _Q0;
  *(v0 + 12496) = _Q0;
  *(v0 + 12512) = _Q0;
  *(v0 + 9280) = _Q0;
  *(v0 + 12368) = _Q0;
  *(v0 + 12400) = _Q0;
  *(v0 + 12416) = _Q0;
  *(v0 + 12432) = _Q0;
  *(v0 + 12448) = _Q0;
  *(v0 + 9296) = _Q0;
  *(v0 + 12288) = _Q0;
  *(v0 + 12304) = _Q0;
  *(v0 + 12320) = _Q0;
  *(v0 + 12336) = _Q0;
  *(v0 + 12352) = _Q0;
  *(v0 + 9312) = _Q0;
  *(v0 + 9328) = _Q0;
  *(v0 + 9344) = _Q0;
  *(v0 + 9360) = _Q0;
  *(v0 + 12200) = 1;
  *(v0 + 12201) = *v22;
  *(v0 + 12204) = *&v22[3];
  *(v0 + 12232) = 1058642330;
  *(v0 + 9376) = _Q0;
  *(v0 + 9392) = _Q0;
  *(v0 + 9408) = _Q0;
  *(v0 + 12120) = 0x3FE0000000000000;
  *(v0 + 12176) = 0x3FF0000000000000;
  *(v0 + 12192) = 0x4032000000000000;
  *(v0 + 9424) = _Q0;
  *(v0 + 9440) = _Q0;
  *(v0 + 9456) = _Q0;
  *(v0 + 9472) = _Q0;
  *(v0 + 12080) = _Q0;
  *(v0 + 12096) = _Q0;
  *(v0 + 9488) = _Q0;
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
  *(v0 + 9504) = _Q0;
  *(v0 + 11376) = _Q0;
  *(v0 + 11392) = _Q0;
  *(v0 + 11408) = _Q0;
  *(v0 + 11424) = _Q0;
  *(v0 + 11440) = _Q0;
  *(v0 + 9520) = _Q0;
  *(v0 + 9536) = _Q0;
  *(v0 + 11336) = 0x3FEFFC6E20000000;
  *(v0 + 11360) = 0x3FF0000000000000;
  *(v0 + 11368) = 0;
  *(v0 + 9552) = _Q0;
  *(v0 + 9568) = _Q0;
  *(v0 + 9648) = _Q0;
  *(v0 + 9664) = _Q0;
  *(v0 + 11232) = _Q0;
  *(v0 + 11296) = _Q0;
  *(v0 + 9688) = 0x3FD9999980000000;
  *(v0 + 11152) = _Q0;
  *(v0 + 11184) = _Q0;
  *(v0 + 11200) = _Q0;
  *(v0 + 11216) = _Q0;
  *(v0 + 9744) = 0x3FF0000000000000;
  *(v0 + 9760) = 0x403DFFFFFFFFFFFELL;
  *(v0 + 9768) = 0;
  *(v0 + 11136) = _Q0;
  *(v0 + 9769) = *v20;
  *(v0 + 9772) = *&v20[3];
  *(v0 + 11120) = _Q0;
  *(v0 + 9800) = 1061997773;
  *(v0 + 9904) = _Q0;
  *(v0 + 9920) = _Q0;
  *(v0 + 10976) = 0x403DFFFFFFFFFFFELL;
  *(v0 + 10984) = 1;
  *(v0 + 10985) = *v21;
  *(v0 + 10988) = *&v21[3];
  *(v0 + 11016) = 1061997773;
  *(v0 + 9936) = _Q0;
  *(v0 + 9968) = _Q0;
  *(v0 + 9984) = _Q0;
  *(v0 + 10000) = _Q0;
  *(v0 + 10904) = 0x3FE0000000000000;
  *(v0 + 10960) = 0x3FF0000000000000;
  *(v0 + 10016) = _Q0;
  *(v0 + 10080) = _Q0;
  *(v0 + 10120) = 0x3FF0000000000000;
  *(v0 + 10144) = 0x3FF0000000000000;
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
  *(v0 + 10152) = 0;
  *(v0 + 10160) = _Q0;
  *(v0 + 10176) = _Q0;
  *(v0 + 10192) = _Q0;
  *(v0 + 10208) = _Q0;
  *(v0 + 18336) = _Q0;
  *(v0 + 18400) = _Q0;
  *(v0 + 18416) = _Q0;
  *(v0 + 18432) = _Q0;
  *(v0 + 18480) = _Q0;
  *(v0 + 18496) = _Q0;
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
  *(v0 + 19632) = _Q0;
  *(v0 + 19648) = _Q0;
  *(v0 + 19696) = _Q0;
  *(v0 + 19712) = _Q0;
  *(v0 + 19728) = _Q0;
  *(v0 + 19744) = _Q0;
  *(v0 + 19760) = _Q0;
  *(v0 + 19776) = _Q0;
  *(v0 + 19808) = _Q0;
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
  *(v0 + 20848) = _Q0;
  *(v0 + 20864) = _Q0;
  *(v0 + 20912) = _Q0;
  *(v0 + 20928) = _Q0;
  *(v0 + 20944) = _Q0;
  *(v0 + 20960) = _Q0;
  *(v0 + 20976) = _Q0;
  *(v0 + 20992) = _Q0;
  *(v0 + 21024) = _Q0;
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
  *(v0 + 7688) = 0x3FEFC7B620000000;
  *(v0 + 7712) = 0x3FF0000000000000;
  *(v0 + 7720) = 0;
  *(v0 + 18200) = 0x3FE99999A0000000;
  *(v0 + 18256) = 0x3FF0000000000000;
  *(v0 + 18272) = 0xC028000000000000;
  *(v0 + 18280) = 1;
  *(v0 + 18281) = *v27;
  *(v0 + 18284) = *&v27[3];
  *(v0 + 18312) = 1036831952;
  *(v0 + 18632) = 0x3FEFC7B640000000;
  *(v0 + 18656) = 0;
  *(v0 + 18664) = 1065353216;
  *(v0 + 19416) = 0x3FEAE14760000000;
  *(v0 + 19472) = 0x3FF0000000000000;
  *(v0 + 19488) = 0xC04E000000000002;
  *(v0 + 19496) = 1;
  *(v0 + 19497) = *v28;
  *(v0 + 19500) = *&v28[3];
  *(v0 + 19528) = 1040242952;
  *(v0 + 19848) = 0x3FEFC7B640000000;
  *(v0 + 19872) = 0;
  *(v0 + 19880) = 1065353216;
  *(v0 + 20632) = 0x3FEB89F0C0000000;
  *(v0 + 20688) = 0x3FF0000000000000;
  *(v0 + 20704) = 0xC056800000000000;
  *(v0 + 20712) = 1;
  *(v0 + 20713) = *v29;
  *(v0 + 20716) = *&v29[3];
  *(v0 + 20744) = 1040242952;
  *(v0 + 21064) = 0x3FEFC7B640000000;
  *(v0 + 21088) = 0;
  *(v0 + 21096) = 1065353216;
  *(v0 + 21848) = 0x3FEB89F080000000;
  *(v0 + 21904) = 0x3FF0000000000000;
  return result;
}

void sub_1BCABFA4C(uint64_t a1@<X8>)
{
  v2 = a1 + 1436;
  sub_1BCA93608();
  v4 = v3;
  sub_1BCA93608();
  *a1 = 0x4006666666666666;
  *(a1 + 8) = 3;
  *(a1 + 16) = 0x3FF0000000000000;
  *(a1 + 24) = 48;
  *(a1 + 32) = xmmword_1BCE3BED0;
  *(a1 + 48) = xmmword_1BCE3BED0;
  *(a1 + 64) = 0x42C8000042480000;
  *(a1 + 72) = 0xC37A000000000000;
  *(a1 + 80) = xmmword_1BCE3EB50;
  *(a1 + 96) = xmmword_1BCE49420;
  *(a1 + 112) = 0x3E4CCCCD3DF5C28FLL;
  *(a1 + 128) = xmmword_1BCE44E30;
  *(a1 + 144) = xmmword_1BCE3D840;
  *(a1 + 160) = xmmword_1BCE42B00;
  *(a1 + 176) = 1165623296;
  *(a1 + 184) = 0x3DF5C28F3D8F5C29;
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
  *(a1 + 728) = 1093664768;
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
  *(a1 + 1216) = xmmword_1BCE4B1B0;
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

double sub_1BCAC01D4@<D0>(uint64_t a1@<X8>)
{
  v2 = (a1 + 1436);
  sub_1BCA9E01C();
  v4 = v3;
  sub_1BCA9E01C();
  *a1 = 0x4006666666666666;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0x3FF0000000000000;
  *(a1 + 24) = 30;
  *(a1 + 32) = xmmword_1BCE3BED0;
  *(a1 + 48) = xmmword_1BCE3BED0;
  *(a1 + 64) = 0x42DC000042480000;
  *(a1 + 72) = 0xC422800000000000;
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
  *(a1 + 388) = 0x3B449BA63F4CCCCDLL;
  *(a1 + 400) = xmmword_1BCE3C670;
  *(a1 + 416) = 0x3F0000003F000000;
  *(a1 + 424) = 30;
  *(a1 + 432) = xmmword_1BCE3EB70;
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
  *(a1 + 608) = 0x40C0000040800000;
  *(a1 + 624) = xmmword_1BCE497C0;
  *(a1 + 640) = xmmword_1BCE497D0;
  *(a1 + 656) = 0x419DAE1441200000;
  *(a1 + 664) = 0x402000003E99999ALL;
  *(a1 + 672) = 0x40A000003F800000;
  *(a1 + 688) = xmmword_1BCE4B1E0;
  *(a1 + 704) = 1061997773;
  *(a1 + 712) = 0x3F6666663E99999ALL;
  *(a1 + 720) = 0x4198000041700000;
  *(a1 + 728) = 1066369312;
  *(a1 + 736) = 1;
  *(a1 + 744) = 6;
  *(a1 + 752) = xmmword_1BCE3EB80;
  *(a1 + 768) = 0x617274736F746C41;
  *(a1 + 776) = 0xEF4C202D20737574;
  *(a1 + 784) = 0xD000000000000013;
  *(a1 + 792) = 0x80000001BCE798E0;
  *(a1 + 800) = 9;
  *(a1 + 816) = _Q0;
  *(a1 + 832) = 1061997773;
  *(a1 + 840) = 0x3F19999A3E4CCCCDLL;
  *(a1 + 848) = 0x41A0000041700000;
  *(a1 + 856) = 1092107296;
  *(a1 + 864) = 1;
  *(a1 + 872) = 6;
  *(a1 + 880) = xmmword_1BCE44850;
  *(a1 + 896) = 0xD000000000000010;
  *(a1 + 904) = 0x80000001BCE79320;
  *(a1 + 912) = 0xD000000000000014;
  *(a1 + 920) = 0x80000001BCE79340;
  *(a1 + 928) = 9;
  *(a1 + 944) = xmmword_1BCE497F0;
  *(a1 + 960) = 1063675494;
  *(a1 + 968) = 0x3F4CCCCD3E4CCCCDLL;
  *(a1 + 976) = 0x4170000041200000;
  *(a1 + 984) = 1083393800;
  *(a1 + 992) = 1;
  *(a1 + 1000) = 4;
  *(a1 + 1008) = xmmword_1BCE3EBA0;
  *(a1 + 1024) = 0x2D20737572726943;
  *(a1 + 1032) = 0xEA00000000005320;
  strcpy((a1 + 1040), "Cirrus_SingleS");
  *(a1 + 1055) = -18;
  *(a1 + 1056) = 6;
  *(a1 + 1072) = xmmword_1BCE4B1F0;
  *(a1 + 1088) = 1082130432;
  *(a1 + 1096) = 0x3F8000003F000000;
  *(a1 + 1104) = 0x4080000040400000;
  *(a1 + 1112) = 1085783552;
  *(a1 + 1120) = 0;
  *(a1 + 1128) = 6;
  *(a1 + 1136) = xmmword_1BCE44860;
  *(a1 + 1152) = 0x7970736957;
  *(a1 + 1160) = 0xE500000000000000;
  strcpy((a1 + 1168), "Wispy_Single");
  *(a1 + 1181) = 0;
  *(a1 + 1182) = -5120;
  *(a1 + 1184) = 6;
  *(a1 + 1200) = _Q0;
  *(a1 + 1216) = xmmword_1BCE49810;
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
  *(a1 + 1312) = _Q0;
  *(a1 + 1328) = _Q0;
  *(a1 + 1344) = 0;
  *(a1 + 1352) = 0x40000000;
  *(a1 + 1360) = 0;
  *(a1 + 1368) = 1;
  *(a1 + 1376) = xmmword_1BCE4B200;
  *(a1 + 1392) = xmmword_1BCE4B210;
  *(a1 + 1408) = xmmword_1BCE49840;
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
  *(a1 + 1628) = 0u;
  *(a1 + 1644) = 1;
  *(a1 + 1646) = 16843009;
  *(a1 + 1650) = 257;
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
  *(a1 + 1744) = 0u;
  *(a1 + 1760) = 8;
  *(a1 + 1776) = xmmword_1BCE3EDA0;
  *(a1 + 1792) = xmmword_1BCE49850;
  *(a1 + 1808) = xmmword_1BCE3C7A0;
  *(a1 + 1824) = 1;
  *(a1 + 1828) = xmmword_1BCE3EBB0;
  *(a1 + 1844) = 1036831949;
  *(a1 + 1848) = 0x4100000041200000;
  *(a1 + 1856) = 3;
  *(a1 + 1864) = 1056964608;
  *(a1 + 1872) = 0x400AE1483F970A3DLL;
  *(a1 + 1880) = 1110704128;
  *(a1 + 1888) = _Q0;
  *(a1 + 1904) = 0x3E4CCCCD40A00000;
  *(a1 + 1912) = 1101004800;
  *(a1 + 1920) = 0;
  *(a1 + 1928) = 1106247680;
  *(a1 + 1936) = _Q0;
  *(a1 + 1952) = 1077936128;
  *(a1 + 1960) = 0x420C000041C80000;
  *(a1 + 1968) = xmmword_1BCE3EBC0;
  *(a1 + 1984) = 0x3F80000000000000;
  *(a1 + 1992) = 1061158912;
  *(a1 + 2000) = 0x3F6666663E4CCCCDLL;
  *(a1 + 2008) = 0x3F6666663F333333;
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
  *(a1 + 2200) = 10;
  *(a1 + 2208) = 0x417000003F4CCCCDLL;
  *(a1 + 2224) = xmmword_1BCE42410;
  *(a1 + 2240) = xmmword_1BCE44880;
  result = 0.00781250185;
  *(a1 + 2256) = xmmword_1BCE3C700;
  *(a1 + 2304) = 0;
  *(a1 + 2288) = 0u;
  *(a1 + 2272) = 0u;
  *(a1 + 2312) = v4;
  *(a1 + 2320) = v12;
  return result;
}

uint64_t sub_1BCAC0994(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WindComplicationDataStatus();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t WindCircularContentView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v67 = a1;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08970);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v1);
  v66 = v61 - v2;
  v3 = sub_1BCE1C100();
  OUTLINED_FUNCTION_2();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_2_0();
  v9 = v8 - v7;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07860);
  OUTLINED_FUNCTION_2();
  v12 = v11;
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v13);
  v15 = (v61 - v14);
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08978);
  OUTLINED_FUNCTION_2();
  v61[3] = v16;
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v17);
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08980);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v18);
  v61[2] = v61 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v63 = v61 - v21;
  v22 = type metadata accessor for WindComplicationViewModel();
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_2_0();
  v26 = v25 - v24;
  v27 = type metadata accessor for WindComplicationDataStatus();
  MEMORY[0x1EEE9AC00](v27 - 8);
  OUTLINED_FUNCTION_2_0();
  v30 = v29 - v28;
  sub_1BCAC0994(v61[1], v29 - v28);
  if (__swift_getEnumTagSinglePayload(v30, 2, v22))
  {
    sub_1BCE1A3E0();
    sub_1BCE1A3A0();
    sub_1BCE1A3D0();

    sub_1BC949AE8();
    sub_1BCE185D0();
    v31 = sub_1BCE1CBA0();
    if (qword_1EBD06FC0 != -1)
    {
      swift_once();
    }

    v32 = qword_1EBD2A0E0;
    v33 = *algn_1EBD2A0E8;

    sub_1BCAC11D0(v15, v31, 0, 1, v32, v33, &v70);
    sub_1BCE1C0D0();
    v34 = sub_1BCAC1C3C();
    sub_1BCE1C930();
    (*(v5 + 8))(v9, v3);
    OUTLINED_FUNCTION_4_23();
    if (qword_1EDA191A0 != -1)
    {
      OUTLINED_FUNCTION_3_26();
    }

    v70 = qword_1EDA2EF30;
    v71 = *algn_1EDA2EF38;
    v68 = &type metadata for SizedWindCircularContentView;
    v69 = v34;
    OUTLINED_FUNCTION_0_1();
    swift_getOpaqueTypeConformance2();
    sub_1BC970820();
    v35 = v62;
    sub_1BCE1C8E0();
    v36 = OUTLINED_FUNCTION_7_25();
    v37(v36, v35);
    if (qword_1EBD06FB8 != -1)
    {
      swift_once();
    }

    v70 = qword_1EBD2A0D0;
    v71 = *algn_1EBD2A0D8;
    v38 = v63;
    sub_1BCE1B880();
    OUTLINED_FUNCTION_15_1();
    sub_1BC94C05C(v39, v40);
    OUTLINED_FUNCTION_11_16(v38);
    swift_storeEnumTagMultiPayload();
    sub_1BCAC1CC0();
    sub_1BCE1BF60();
    OUTLINED_FUNCTION_15_1();
    return sub_1BC94C05C(v41, v42);
  }

  else
  {
    sub_1BCAC3B54(v30, v26, type metadata accessor for WindComplicationViewModel);
    (*(v12 + 16))(v15, v26 + *(v22 + 36), v10);
    v44 = sub_1BCE19F90();
    v46 = v45;
    sub_1BCA08980();
    sub_1BCAC11D0(v15, v44, v46, 0, v47, v48, &v70);
    sub_1BCE1C0D0();
    v49 = sub_1BCAC1C3C();
    sub_1BCE1C930();
    (*(v5 + 8))(v9, v3);
    OUTLINED_FUNCTION_4_23();
    if (qword_1EDA191A0 != -1)
    {
      OUTLINED_FUNCTION_3_26();
    }

    v70 = qword_1EDA2EF30;
    v71 = *algn_1EDA2EF38;
    v68 = &type metadata for SizedWindCircularContentView;
    v69 = v49;
    OUTLINED_FUNCTION_0_1();
    swift_getOpaqueTypeConformance2();
    sub_1BC970820();
    v50 = v62;
    sub_1BCE1C8E0();
    v51 = OUTLINED_FUNCTION_7_25();
    v53 = v52(v51, v50);
    v70 = sub_1BCA07590(v53, v54);
    v71 = v55;
    v56 = v63;
    sub_1BCE1B880();

    OUTLINED_FUNCTION_15_1();
    sub_1BC94C05C(v57, v58);
    OUTLINED_FUNCTION_11_16(v56);
    swift_storeEnumTagMultiPayload();
    sub_1BCAC1CC0();
    sub_1BCE1BF60();
    OUTLINED_FUNCTION_15_1();
    sub_1BC94C05C(v59, v60);
    return sub_1BCAC3BB0(v26, type metadata accessor for WindComplicationViewModel);
  }
}

uint64_t sub_1BCAC11D0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  v101 = a5;
  v102 = a6;
  v98 = a2;
  v99 = a3;
  v97 = a1;
  v100 = a7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08270);
  v88 = *(v8 - 8);
  v89 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v87 = &v81 - v9;
  v10 = sub_1BCE19280();
  v104 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v93 = &v81 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v96 = &v81 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07890);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v92 = &v81 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v94 = &v81 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v95 = &v81 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v81 - v21;
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v81 - v24;
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v81 - v27;
  v103 = type metadata accessor for NSUnitSpeed.BaseWeatherFormatStyle(0);
  MEMORY[0x1EEE9AC00](v103);
  v90 = (&v81 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v30);
  v91 = &v81 - v31;
  MEMORY[0x1EEE9AC00](v32);
  v34 = &v81 - v33;
  MEMORY[0x1EEE9AC00](v35);
  v37 = &v81 - v36;
  v105 = a4 & 1;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD078A8);
  v39 = *(type metadata accessor for NSUnitSpeed.WeatherFormatComponent(0) - 8);
  v40 = *(v39 + 80);
  v41 = (v40 + 32) & ~v40;
  v85 = *(v39 + 72);
  v84 = v40;
  v86 = v38;
  v42 = swift_allocObject();
  v83 = xmmword_1BCE3E050;
  *(v42 + 16) = xmmword_1BCE3E050;
  v81 = sub_1BC949AE8();
  sub_1BCE18630();
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD078B0);
  __swift_storeEnumTagSinglePayload(v42 + v41, 0, 1, v82);
  sub_1BC9795A8();
  v44 = v43;
  __swift_storeEnumTagSinglePayload(v28, 1, 1, v10);
  sub_1BC9660CC(v28, v25, &qword_1EBD07890);
  *v34 = v44;
  v34[8] = 0;
  sub_1BC9660CC(v25, v22, &qword_1EBD07890);
  if (__swift_getEnumTagSinglePayload(v22, 1, v10) == 1)
  {
    v45 = v96;
    if (qword_1EDA1F658 != -1)
    {
      swift_once();
    }

    sub_1BCE1A9F0();

    sub_1BC94C05C(v25, &qword_1EBD07890);
    sub_1BC94C05C(v28, &qword_1EBD07890);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v22, 1, v10);
    v47 = v104;
    if (EnumTagSinglePayload != 1)
    {
      sub_1BC94C05C(v22, &qword_1EBD07890);
    }
  }

  else
  {
    sub_1BC94C05C(v25, &qword_1EBD07890);
    sub_1BC94C05C(v28, &qword_1EBD07890);
    v47 = v104;
    v45 = v96;
    (*(v104 + 32))(v96, v22, v10);
  }

  v48 = v103;
  v49 = *(v47 + 32);
  v50 = &v34[*(v103 + 24)];
  v104 = v47 + 32;
  v49(v50, v45, v10);
  v34[*(v48 + 28)] = 0;
  v34[*(v48 + 32)] = 1;
  sub_1BCAC3B54(v34, v37, type metadata accessor for NSUnitSpeed.BaseWeatherFormatStyle);
  sub_1BCE1A3E0();
  v51 = sub_1BCE1A3A0();
  v52 = v97;
  sub_1BC979F64(v37, 0, v51, v97);
  v53 = v10;

  sub_1BCAC3BB0(v37, type metadata accessor for NSUnitSpeed.BaseWeatherFormatStyle);
  v54 = sub_1BCE1D310();
  v56 = v55;

  v57 = [objc_opt_self() systemFontOfSize:13.0 weight:*MEMORY[0x1E69DB978]];
  v58 = String.width(with:)(v57);

  if (v58 >= 57.0)
  {

    v59 = v87;
    sub_1BCE18660();
    v60 = swift_allocObject();
    *(v60 + 16) = v83;
    v62 = v88;
    v61 = v89;
    (*(v88 + 16))(v60 + v41, v59, v89);
    __swift_storeEnumTagSinglePayload(v60 + v41, 0, 1, v82);
    sub_1BC9795A8();
    v64 = v63;
    (*(v62 + 8))(v59, v61);
    v65 = v95;
    __swift_storeEnumTagSinglePayload(v95, 1, 1, v53);
    v66 = v94;
    sub_1BC9660CC(v65, v94, &qword_1EBD07890);
    v67 = v90;
    *v90 = v64;
    v68 = v66;
    *(v67 + 8) = 0;
    v69 = v66;
    v70 = v92;
    sub_1BC9660CC(v69, v92, &qword_1EBD07890);
    if (__swift_getEnumTagSinglePayload(v70, 1, v53) == 1)
    {
      if (qword_1EDA1F658 != -1)
      {
        swift_once();
      }

      v71 = v93;
      sub_1BCE1A9F0();

      sub_1BC94C05C(v94, &qword_1EBD07890);
      sub_1BC94C05C(v95, &qword_1EBD07890);
      if (__swift_getEnumTagSinglePayload(v70, 1, v53) != 1)
      {
        sub_1BC94C05C(v70, &qword_1EBD07890);
      }
    }

    else
    {
      sub_1BC94C05C(v68, &qword_1EBD07890);
      sub_1BC94C05C(v65, &qword_1EBD07890);
      v71 = v93;
      v49(v93, v70, v53);
    }

    v72 = v103;
    v49((v67 + *(v103 + 24)), v71, v53);
    *(v67 + *(v72 + 28)) = 0;
    *(v67 + *(v72 + 32)) = 1;
    v73 = v91;
    sub_1BCAC3B54(v67, v91, type metadata accessor for NSUnitSpeed.BaseWeatherFormatStyle);
    v74 = sub_1BCE1A3A0();
    sub_1BC979F64(v73, 0, v74, v52);

    sub_1BCAC3BB0(v73, type metadata accessor for NSUnitSpeed.BaseWeatherFormatStyle);
    v54 = sub_1BCE1D310();
    v56 = v75;
  }

  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07860);
  result = (*(*(v76 - 8) + 8))(v52, v76);
  v78 = v105;
  v79 = v100;
  *v100 = v98;
  v79[1] = v99;
  *(v79 + 16) = v78;
  v80 = v102;
  v79[3] = v101;
  v79[4] = v80;
  v79[5] = v54;
  v79[6] = v56;
  *(v79 + 56) = v58 >= 40.0;
  return result;
}

unint64_t sub_1BCAC1C3C()
{
  result = qword_1EDA18790[0];
  if (!qword_1EDA18790[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDA18790);
  }

  return result;
}

unint64_t sub_1BCAC1CC0()
{
  result = qword_1EDA1BA98;
  if (!qword_1EDA1BA98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD08980);
    sub_1BCAC1C3C();
    swift_getOpaqueTypeConformance2();
    sub_1BC99B7FC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA1BA98);
  }

  return result;
}

uint64_t type metadata accessor for WindCircularContentView()
{
  result = qword_1EDA19770;
  if (!qword_1EDA19770)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1BCAC1E0C()
{
  result = type metadata accessor for WindComplicationDataStatus();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1BCAC1E78()
{
  result = qword_1EDA1B828;
  if (!qword_1EDA1B828)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD08988);
    sub_1BCAC1CC0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA1B828);
  }

  return result;
}

__n128 __swift_memcpy57_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 41) = *(a2 + 41);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_1BCAC1F24(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 57))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 32);
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

uint64_t sub_1BCAC1F64(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 57) = 1;
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
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 57) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}