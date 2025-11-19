uint64_t DetailChartExtrema.hashValue.getter()
{
  sub_220DC0CE0();
  DetailChartExtrema.hash(into:)();
  return sub_220DC0D20();
}

uint64_t sub_220D14FFC()
{
  sub_220DC0CE0();
  DetailChartExtrema.hash(into:)();
  return sub_220DC0D20();
}

unint64_t sub_220D1503C()
{
  result = qword_27CF95868;
  if (!qword_27CF95868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF95868);
  }

  return result;
}

uint64_t sub_220D1509C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 89))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_220D150BC(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 88) = 0;
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

  *(result + 89) = v3;
  return result;
}

uint64_t PrecipitationTotalHeroString.timeframe.getter()
{
  v0 = *(type metadata accessor for PrecipitationTotalHeroString(0) + 24);
  OUTLINED_FUNCTION_1_9();
  return OUTLINED_FUNCTION_25_3(v1);
}

uint64_t PrecipitationTotalHeroString.init(amount:type:timeframe:hasSnow:)@<X0>(char *a1@<X1>, uint64_t a2@<X2>, char a3@<W3>, uint64_t a4@<X8>)
{
  v7 = *a1;
  OUTLINED_FUNCTION_4_7();
  sub_220D151E0(v8, v9);
  v10 = type metadata accessor for PrecipitationTotalHeroString(0);
  *(a4 + v10[5]) = v7;
  v11 = v10[6];
  OUTLINED_FUNCTION_1_9();
  result = sub_220D151E0(a2, a4 + v12);
  *(a4 + v10[7]) = a3;
  return result;
}

uint64_t sub_220D151E0(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_11_0();
  v6 = v5(v4);
  OUTLINED_FUNCTION_0_2(v6);
  (*(v7 + 32))(a2, v2);
  return a2;
}

uint64_t static PrecipitationTotalHeroString.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 == *a2)
  {
    v4 = OUTLINED_FUNCTION_11_0();
    v5 = *(type metadata accessor for PrecipitationTotalStringAmount(v4) + 20);
    static PrecipitationTotalStringAmount.Format.== infix(_:_:)();
    if (v6 & 1) != 0 && (v7 = type metadata accessor for PrecipitationTotalHeroString(0), *(v2 + *(v7 + 20)) == a2[*(v7 + 20)]) && (static PrecipitationTotalHeroStringTimeframe.== infix(_:_:)(v2 + *(v7 + 24), &a2[*(v7 + 24)]))
    {
      OUTLINED_FUNCTION_18_4();
      v10 = v9 ^ a2[v8] ^ 1;
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10 & 1;
}

uint64_t static PrecipitationTotalHeroStringTimeframe.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_220DBE560();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_1();
  v9 = v8 - v7;
  v10 = OUTLINED_FUNCTION_13_5();
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_1();
  v15 = v14 - v13;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95870, &unk_220DC3240);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  v20 = &v25 - v19;
  v21 = *(v18 + 56);
  sub_220CDDBBC(a1, &v25 - v19);
  sub_220CDDBBC(a2, &v20[v21]);
  switch(__swift_getEnumTagSinglePayload(v20, 3, v4))
  {
    case 1u:
      if (OUTLINED_FUNCTION_12_6() == 1)
      {
        goto LABEL_5;
      }

      goto LABEL_7;
    case 2u:
      if (OUTLINED_FUNCTION_12_6() == 2)
      {
        goto LABEL_5;
      }

      goto LABEL_7;
    case 3u:
      if (OUTLINED_FUNCTION_12_6() != 3)
      {
        goto LABEL_7;
      }

LABEL_5:
      sub_220CDDDE8(v20);
      v22 = 1;
      break;
    default:
      OUTLINED_FUNCTION_1_9();
      sub_220CDDBBC(v20, v15);
      if (OUTLINED_FUNCTION_12_6())
      {
        (*(v5 + 8))(v15, v4);
LABEL_7:
        sub_220D1556C(v20);
        v22 = 0;
      }

      else
      {
        (*(v5 + 32))(v9, &v20[v21], v4);
        v22 = sub_220DBE460();
        v24 = *(v5 + 8);
        v24(v9, v4);
        v24(v15, v4);
        sub_220CDDDE8(v20);
      }

      break;
  }

  return v22 & 1;
}

uint64_t sub_220D1556C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95870, &unk_220DC3240);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

char *PrecipitationTotalHeroString.longSubtitle.getter()
{
  v2 = OUTLINED_FUNCTION_13_5();
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_1();
  v5 = OUTLINED_FUNCTION_20_3();
  v6 = *(v5 + 24);
  OUTLINED_FUNCTION_1_9();
  OUTLINED_FUNCTION_25_3(v7);
  v8 = sub_220DBE560();
  switch(OUTLINED_FUNCTION_19_4(v8))
  {
    case 1u:
      OUTLINED_FUNCTION_17_6();
      if (v9)
      {
        v1 = "c precip and snowfall";
        if (qword_280FA6600 == -1)
        {
          goto LABEL_46;
        }
      }

      else
      {
        OUTLINED_FUNCTION_18_4();
        if (v13 == 1)
        {
          OUTLINED_FUNCTION_29();
          if (!v9)
          {
            OUTLINED_FUNCTION_10();
          }

LABEL_46:
          OUTLINED_FUNCTION_5_1();
          OUTLINED_FUNCTION_32();
          OUTLINED_FUNCTION_11();
          sub_220DBE240();
          OUTLINED_FUNCTION_7_6();
          return v1;
        }

        OUTLINED_FUNCTION_29();
        if (v9)
        {
          goto LABEL_46;
        }
      }

      OUTLINED_FUNCTION_10();
      goto LABEL_46;
    case 2u:
      OUTLINED_FUNCTION_17_6();
      if (v9)
      {
        if (qword_280FA6600 == -1)
        {
          goto LABEL_35;
        }
      }

      else
      {
        OUTLINED_FUNCTION_18_4();
        if (v10 == 1)
        {
          OUTLINED_FUNCTION_29();
          if (!v9)
          {
            OUTLINED_FUNCTION_10();
          }

          goto LABEL_35;
        }

        OUTLINED_FUNCTION_29();
        if (v9)
        {
LABEL_35:
          OUTLINED_FUNCTION_14_0();
          OUTLINED_FUNCTION_15_4();
          OUTLINED_FUNCTION_11();
          sub_220DBE240();
          OUTLINED_FUNCTION_6_7();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94FB8, &unk_220DC1E30);
          v14 = OUTLINED_FUNCTION_24_3();
          *(v14 + 16) = xmmword_220DC17A0;
          v15 = MEMORY[0x277D83C10];
          *(v14 + 56) = MEMORY[0x277D83B88];
          *(v14 + 64) = v15;
          v16 = 6;
          goto LABEL_39;
        }
      }

      OUTLINED_FUNCTION_10();
      goto LABEL_35;
    case 3u:
      OUTLINED_FUNCTION_17_6();
      if (v9)
      {
        if (qword_280FA6600 == -1)
        {
          goto LABEL_38;
        }
      }

      else
      {
        OUTLINED_FUNCTION_18_4();
        if (v11 == 1)
        {
          OUTLINED_FUNCTION_29();
          if (!v9)
          {
            OUTLINED_FUNCTION_10();
          }

LABEL_38:
          OUTLINED_FUNCTION_14_0();
          OUTLINED_FUNCTION_15_4();
          OUTLINED_FUNCTION_11();
          sub_220DBE240();
          OUTLINED_FUNCTION_6_7();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94FB8, &unk_220DC1E30);
          v14 = OUTLINED_FUNCTION_24_3();
          *(v14 + 16) = xmmword_220DC17A0;
          v17 = MEMORY[0x277D83C10];
          *(v14 + 56) = MEMORY[0x277D83B88];
          *(v14 + 64) = v17;
          v16 = 24;
LABEL_39:
          v1 = OUTLINED_FUNCTION_23_4(v14, v16);

          return v1;
        }

        OUTLINED_FUNCTION_29();
        if (v9)
        {
          goto LABEL_38;
        }
      }

      OUTLINED_FUNCTION_10();
      goto LABEL_38;
    default:
      if (v1[*(v5 + 20)] == 2)
      {
        v1 = "l precipitation with some snow";
        if (qword_280FA6600 == -1)
        {
          goto LABEL_42;
        }

        goto LABEL_41;
      }

      OUTLINED_FUNCTION_18_4();
      if (v12 != 1)
      {
        OUTLINED_FUNCTION_29();
        if (v9)
        {
LABEL_42:
          OUTLINED_FUNCTION_5_1();
          OUTLINED_FUNCTION_32();
          goto LABEL_43;
        }

LABEL_41:
        OUTLINED_FUNCTION_10();
        goto LABEL_42;
      }

      OUTLINED_FUNCTION_29();
      if (!v9)
      {
        OUTLINED_FUNCTION_10();
      }

      OUTLINED_FUNCTION_32();
LABEL_43:
      OUTLINED_FUNCTION_11();
      sub_220DBE240();
      OUTLINED_FUNCTION_7_6();
      sub_220CDDDE8(v0);
      return v1;
  }
}

uint64_t sub_220D15C34@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v55 = a4;
  v53 = type metadata accessor for PrecipitationTotalStringAmount(0);
  v8 = OUTLINED_FUNCTION_6(v53);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = type metadata accessor for PrecipitationTotalStringAmount.Format(0);
  v13 = OUTLINED_FUNCTION_6(v54);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_10_8();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_25_0();
  v52 = v17;
  OUTLINED_FUNCTION_23();
  MEMORY[0x28223BE20](v18);
  v20 = &v50 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95208, &unk_220DC1E40);
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21);
  v25 = &v50 - v24;
  if (*a1 == 2)
  {
LABEL_4:
    OUTLINED_FUNCTION_0_7();
    sub_220D16918(v30, v31);
    sub_220D15FF4(a3, v12);
    v32 = *(v53 + 20);
    OUTLINED_FUNCTION_4_8();
    sub_220D16850(&v12[v33], v4, v34);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      (*(v22 + 8))(v4, v21);
    }

    else
    {
      OUTLINED_FUNCTION_3_10();
      sub_220D16918(v4, v36);
    }

    v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF958A8, &unk_220DC33A0);
    OUTLINED_FUNCTION_12_7(v35);
    type metadata accessor for PrecipitationPlatterPrecipitationKind();
    return swift_storeEnumTagMultiPayload();
  }

  v51 = a2;
  PrecipitationTotalStringAmount.maxAmount.getter(&v50 - v24);
  sub_220DBE050();
  v27 = v26;
  v28 = v22 + 8;
  v29 = *(v22 + 8);
  v50 = v21;
  v29(v25, v21);
  if (v27 == 0.0)
  {
    v21 = v50;
    a3 = v51;
    goto LABEL_4;
  }

  v37 = v53;
  v38 = *(v53 + 20);
  OUTLINED_FUNCTION_4_8();
  sub_220D16850(v51 + v39, v20, v40);
  v41 = v54;
  if (swift_getEnumCaseMultiPayload() == 1 || (OUTLINED_FUNCTION_3_10(), sub_220D16918(v20, v42), v43 = *(v37 + 20), OUTLINED_FUNCTION_4_8(), v20 = v52, sub_220D16850(a3 + v44, v52, v45), swift_getEnumCaseMultiPayload() == 1))
  {
    v29(v20, v50);
    v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF958A0, &unk_220DC35E0);
    OUTLINED_FUNCTION_13_6(v46);
    sub_220D15FF4(a3, v28 + v41);
    type metadata accessor for PrecipitationPlatterPrecipitationKind();
  }

  else
  {
    OUTLINED_FUNCTION_3_10();
    sub_220D16918(v20, v47);
    v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF958A0, &unk_220DC35E0);
    OUTLINED_FUNCTION_13_6(v48);
    sub_220D15FF4(a3, v28 + v41);
    type metadata accessor for PrecipitationPlatterPrecipitationKind();
  }

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_220D15FF4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PrecipitationTotalStringAmount(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for PrecipitationPlatterPrecipitationKind()
{
  result = qword_27CF958B0;
  if (!qword_27CF958B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_220D160A4()
{
  sub_220D16118();
  if (v0 <= 0x3F)
  {
    sub_220D16184();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_220D16118()
{
  if (!qword_27CF958C0)
  {
    type metadata accessor for PrecipitationTotalStringAmount(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27CF958C0);
    }
  }
}

void sub_220D16184()
{
  if (!qword_27CF958C8)
  {
    type metadata accessor for PrecipitationTotalStringAmount(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27CF958C8);
    }
  }
}

uint64_t sub_220D161EC(uint64_t a1, uint64_t a2)
{
  v100 = a1;
  v101 = a2;
  v99 = type metadata accessor for PrecipitationTotalStringAmount(0);
  v3 = OUTLINED_FUNCTION_6(v99);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v96 = &v90 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  OUTLINED_FUNCTION_23();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_25_0();
  v97 = v8;
  OUTLINED_FUNCTION_23();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_25_0();
  v98 = v10;
  OUTLINED_FUNCTION_23();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_25_0();
  v93 = v12;
  OUTLINED_FUNCTION_23();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_25_0();
  v94 = v14;
  OUTLINED_FUNCTION_23();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_25_0();
  v95 = v16;
  OUTLINED_FUNCTION_23();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_25_0();
  v91 = v18;
  OUTLINED_FUNCTION_23();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_25_0();
  v92 = v20;
  OUTLINED_FUNCTION_23();
  v22 = MEMORY[0x28223BE20](v21);
  v24 = &v90 - v23;
  MEMORY[0x28223BE20](v22);
  v26 = &v90 - v25;
  v27 = type metadata accessor for PrecipitationPlatterPrecipitationKind();
  v28 = OUTLINED_FUNCTION_6(v27);
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_10_8();
  v32 = MEMORY[0x28223BE20](v31);
  v34 = &v90 - v33;
  v35 = MEMORY[0x28223BE20](v32);
  v37 = &v90 - v36;
  MEMORY[0x28223BE20](v35);
  v39 = &v90 - v38;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF958D0, &unk_220DC3400);
  v41 = *(*(v40 - 8) + 64);
  v42 = MEMORY[0x28223BE20](v40 - 8);
  v44 = &v90 - v43;
  v45 = &v90 + *(v42 + 56) - v43;
  sub_220D16850(v100, &v90 - v43, type metadata accessor for PrecipitationPlatterPrecipitationKind);
  sub_220D16850(v101, v45, type metadata accessor for PrecipitationPlatterPrecipitationKind);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v72 = OUTLINED_FUNCTION_1_10();
      sub_220D16850(v72, v37, v73);
      v48 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF958A8, &unk_220DC33A0) + 48);
      v2 = &v37[v48];
      if (OUTLINED_FUNCTION_14_7() != 1)
      {
        goto LABEL_25;
      }

      v74 = *v37;
      v75 = *v45;
      v57 = v92;
      sub_220D15FF4(&v37[v48], v92);
      v76 = &v45[v48];
      v77 = v91;
      sub_220D15FF4(v76, v91);
      if (v74 == v75 && *v57 == *v77)
      {
        OUTLINED_FUNCTION_11_4();
        static PrecipitationTotalStringAmount.Format.== infix(_:_:)();
        OUTLINED_FUNCTION_2_7();
        v52 = v78;
        v70 = v77;
        v71 = v78;
        goto LABEL_20;
      }

      v48 = type metadata accessor for PrecipitationTotalStringAmount;
      v85 = v77;
      v86 = type metadata accessor for PrecipitationTotalStringAmount;
      goto LABEL_31;
    case 2u:
      v54 = OUTLINED_FUNCTION_1_10();
      sub_220D16850(v54, v34, v55);
      v56 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF958A0, &unk_220DC35E0) + 48);
      v48 = &v34[v56];
      if (OUTLINED_FUNCTION_14_7() != 2)
      {
        v2 = v34;
LABEL_24:
        OUTLINED_FUNCTION_0_7();
        sub_220D16918(v48, v80);
LABEL_25:
        OUTLINED_FUNCTION_0_7();
        sub_220D16918(v2, v81);
        sub_220D168B0(v44);
        return 0;
      }

      v57 = v95;
      sub_220D15FF4(v45, v95);
      v58 = v94;
      sub_220D15FF4(&v34[v56], v94);
      v59 = &v45[v56];
      v60 = v93;
      sub_220D15FF4(v59, v93);
      if (*v34 == *v57)
      {
        OUTLINED_FUNCTION_11_4();
        static PrecipitationTotalStringAmount.Format.== infix(_:_:)();
        if (v61)
        {
          OUTLINED_FUNCTION_0_7();
          v63 = v34;
          goto LABEL_14;
        }
      }

      v48 = type metadata accessor for PrecipitationTotalStringAmount;
      v82 = v34;
      goto LABEL_28;
    case 3u:
      v64 = OUTLINED_FUNCTION_1_10();
      sub_220D16850(v64, v2, v65);
      v66 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF958A0, &unk_220DC35E0) + 48);
      v48 = &v2[v66];
      if (OUTLINED_FUNCTION_14_7() != 3)
      {
        goto LABEL_24;
      }

      v57 = v98;
      sub_220D15FF4(v45, v98);
      v58 = v97;
      sub_220D15FF4(&v2[v66], v97);
      v67 = &v45[v66];
      v60 = v96;
      sub_220D15FF4(v67, v96);
      if (*v2 == *v57 && (OUTLINED_FUNCTION_11_4(), static PrecipitationTotalStringAmount.Format.== infix(_:_:)(), (v68 & 1) != 0))
      {
        OUTLINED_FUNCTION_0_7();
        v63 = v2;
LABEL_14:
        sub_220D16918(v63, v62);
        if (*v58 == *v60)
        {
          OUTLINED_FUNCTION_11_4();
          static PrecipitationTotalStringAmount.Format.== infix(_:_:)();
          OUTLINED_FUNCTION_2_7();
          v52 = v69;
          sub_220D16918(v60, v69);
          v70 = v58;
          v71 = v52;
LABEL_20:
          sub_220D16918(v70, v71);
          v53 = v57;
          goto LABEL_21;
        }

        OUTLINED_FUNCTION_6_8();
        v83 = v60;
        v84 = v89;
      }

      else
      {
        v48 = type metadata accessor for PrecipitationTotalStringAmount;
        v82 = v2;
LABEL_28:
        sub_220D16918(v82, type metadata accessor for PrecipitationTotalStringAmount);
        v83 = v60;
        v84 = type metadata accessor for PrecipitationTotalStringAmount;
      }

      sub_220D16918(v83, v84);
      v85 = v58;
      v86 = v48;
LABEL_31:
      sub_220D16918(v85, v86);
      v87 = v57;
      goto LABEL_32;
    default:
      v46 = OUTLINED_FUNCTION_1_10();
      sub_220D16850(v46, v39, v47);
      v48 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF958A8, &unk_220DC33A0) + 48);
      v2 = &v39[v48];
      if (OUTLINED_FUNCTION_14_7())
      {
        goto LABEL_25;
      }

      v49 = *v39;
      v50 = *v45;
      sub_220D15FF4(v2, v26);
      sub_220D15FF4(&v45[v48], v24);
      if (v49 == v50 && *v26 == *v24)
      {
        OUTLINED_FUNCTION_11_4();
        static PrecipitationTotalStringAmount.Format.== infix(_:_:)();
        OUTLINED_FUNCTION_2_7();
        v52 = v51;
        sub_220D16918(v24, v51);
        v53 = v26;
LABEL_21:
        sub_220D16918(v53, v52);
        if (v48)
        {
          OUTLINED_FUNCTION_7_7();
          return 1;
        }
      }

      else
      {
        OUTLINED_FUNCTION_6_8();
        sub_220D16918(v24, v88);
        v87 = v26;
LABEL_32:
        sub_220D16918(v87, v48);
      }

      OUTLINED_FUNCTION_7_7();
      return 0;
  }
}

uint64_t sub_220D16850(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  OUTLINED_FUNCTION_6(v5);
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t sub_220D168B0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF958D0, &unk_220DC3400);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_220D16918(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_6(v3);
  (*(v4 + 8))(a1);
  return a1;
}

unint64_t sub_220D169C4()
{
  result = qword_27CF958D8;
  if (!qword_27CF958D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF958D8);
  }

  return result;
}

unint64_t sub_220D16A1C()
{
  result = qword_27CF958E0;
  if (!qword_27CF958E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF958E0);
  }

  return result;
}

unint64_t sub_220D16A7C()
{
  result = qword_27CF958E8;
  if (!qword_27CF958E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF958E8);
  }

  return result;
}

unint64_t sub_220D16AD4()
{
  result = qword_27CF958F0;
  if (!qword_27CF958F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF958F0);
  }

  return result;
}

BOOL sub_220D16B84(void *a1, uint64_t a2)
{
  v3 = *v2 & a2;
  if (v3 != a2)
  {
    *v2 |= a2;
  }

  *a1 = a2;
  return v3 != a2;
}

uint64_t sub_220D16BB8@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & result;
  if (v3)
  {
    *v2 &= ~result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t sub_220D16BE8@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2;
  *v2 |= result;
  v4 = v3 & result;
  *a2 = v4;
  *(a2 + 8) = v4 == 0;
  return result;
}

WeatherAppSupport::ChartDarkeningScrim sub_220D16CDC@<X0>(Swift::Int *a1@<X0>, uint64_t a2@<X8>)
{
  result.rawValue = ChartDarkeningScrim.init(rawValue:)(*a1).rawValue;
  *a2 = v4;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_220D16D1C@<X0>(uint64_t *a1@<X8>)
{
  result = ChartDarkeningScrim.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for ChartDarkeningScrim(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for ChartDarkeningScrim(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 8) = v3;
  return result;
}

uint64_t sub_220D16DAC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = (a1 + 32);
    do
    {
      v7 = *v5++;
      v6 = v7;
      if ((v7 & ~v4) == 0)
      {
        v6 = 0;
      }

      v4 |= v6;
      --v3;
    }

    while (v3);
  }

  else
  {
    v4 = 0;
  }

  *a2 = v4;
  return result;
}

uint64_t sub_220D16E08()
{
  v1 = type metadata accessor for PrecipitationPlatterPrecipitationKind();
  v2 = OUTLINED_FUNCTION_6(v1);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for PrecipitationPlatterTodaySecondSentence();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220D18BBC(v0, v10, type metadata accessor for PrecipitationPlatterTodaySecondSentence);
  if (__swift_getEnumTagSinglePayload(v10, 1, v1) == 1)
  {
    return sub_220D16FA0();
  }

  sub_220D18B04(v10, v6, type metadata accessor for PrecipitationPlatterPrecipitationKind);
  v11 = sub_220D17344(v6);
  sub_220D18B64(v6, type metadata accessor for PrecipitationPlatterPrecipitationKind);
  return v11;
}

uint64_t type metadata accessor for PrecipitationPlatterTodaySecondSentence()
{
  result = qword_27CF958F8;
  if (!qword_27CF958F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_220D16FA0()
{
  v0 = sub_220DBE5E0();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95208, &unk_220DC1E40);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v21 - v8;
  v22 = sub_220DC0460();
  v10 = *(v22 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v22);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = [objc_opt_self() millimeters];
  sub_220CDB190();
  sub_220DBE040();
  sub_220DBF100();
  sub_220DBF0D0();
  sub_220DBE580();
  sub_220DBE0F0();

  (*(v1 + 8))(v4, v0);
  (*(v6 + 8))(v9, v5);
  if (qword_280FA6600 != -1)
  {
    swift_once();
  }

  sub_220DBE240();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94FB8, &unk_220DC1E30);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_220DC17A0;
  v16 = sub_220DC0440();
  v18 = v17;
  *(v15 + 56) = MEMORY[0x277D837D0];
  *(v15 + 64) = sub_220CEFDB0();
  *(v15 + 32) = v16;
  *(v15 + 40) = v18;
  v19 = sub_220DC05F0();

  (*(v10 + 8))(v13, v22);
  return v19;
}

uint64_t sub_220D17344(uint64_t a1)
{
  v2 = type metadata accessor for PrecipitationTotalStringAmount(0);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v6 = &v56 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v56 - v7;
  v9 = type metadata accessor for PrecipitationPlatterPrecipitationKind();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v56 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220D18BBC(a1, v12, type metadata accessor for PrecipitationPlatterPrecipitationKind);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v53 = *v12;
      v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF958A8, &unk_220DC33A0);
      sub_220D18B04(&v12[*(v54 + 48)], v8, type metadata accessor for PrecipitationTotalStringAmount);
      HIBYTE(v57) = v53;
      v26 = sub_220D17AA0(&v57 + 7, v8);
      goto LABEL_9;
    case 2u:
      v27 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF958A0, &unk_220DC35E0) + 48);
      sub_220D18B04(v12, v8, type metadata accessor for PrecipitationTotalStringAmount);
      sub_220D18B04(&v12[v27], v6, type metadata accessor for PrecipitationTotalStringAmount);
      if (qword_280FA6600 != -1)
      {
        swift_once();
      }

      sub_220DBE240();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94FB8, &unk_220DC1E30);
      v28 = swift_allocObject();
      *(v28 + 16) = xmmword_220DC17C0;
      v29 = sub_220DC0810();
      PrecipitationTotalStringAmount.formatted(_:accessible:shouldAddLessThanSymbol:)(v29, 0, 1, v30, v31, v32, v33, v34, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67);
      v36 = v35;
      v38 = v37;

      v39 = MEMORY[0x277D837D0];
      *(v28 + 56) = MEMORY[0x277D837D0];
      v40 = sub_220CEFDB0();
      *(v28 + 64) = v40;
      *(v28 + 32) = v36;
      *(v28 + 40) = v38;
      v41 = sub_220DC0810();
      PrecipitationTotalStringAmount.formatted(_:accessible:shouldAddLessThanSymbol:)(v41, 0, 1, v42, v43, v44, v45, v46, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67);
      v48 = v47;
      v50 = v49;

      *(v28 + 96) = v39;
      *(v28 + 104) = v40;
      *(v28 + 72) = v48;
      *(v28 + 80) = v50;
      v26 = sub_220DC05F0();

      goto LABEL_7;
    case 3u:
      v51 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF958A0, &unk_220DC35E0) + 48);
      sub_220D18B04(v12, v8, type metadata accessor for PrecipitationTotalStringAmount);
      sub_220D18B04(&v12[v51], v6, type metadata accessor for PrecipitationTotalStringAmount);
      v26 = sub_220D17F34(v6, v8);
LABEL_7:
      sub_220D18B64(v6, type metadata accessor for PrecipitationTotalStringAmount);
      v52 = v8;
      break;
    default:
      v13 = *v12;
      v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF958A8, &unk_220DC33A0);
      sub_220D18B04(&v12[*(v14 + 48)], v8, type metadata accessor for PrecipitationTotalStringAmount);
      BYTE6(v57) = v13;
      sub_220D1782C();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94FB8, &unk_220DC1E30);
      v15 = swift_allocObject();
      *(v15 + 16) = xmmword_220DC17A0;
      v16 = sub_220DC0810();
      PrecipitationTotalStringAmount.formatted(_:accessible:shouldAddLessThanSymbol:)(v16, 0, 1, v17, v18, v19, v20, v21, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67);
      v23 = v22;
      v25 = v24;

      *(v15 + 56) = MEMORY[0x277D837D0];
      *(v15 + 64) = sub_220CEFDB0();
      *(v15 + 32) = v23;
      *(v15 + 40) = v25;
      v26 = sub_220DC05F0();

LABEL_9:
      v52 = v8;
      break;
  }

  sub_220D18B64(v52, type metadata accessor for PrecipitationTotalStringAmount);
  return v26;
}

uint64_t sub_220D1782C()
{
  switch(*v0)
  {
    case 1:
      if (qword_280FA6600 != -1)
      {
        goto LABEL_12;
      }

      break;
    case 2:
      if (qword_280FA6600 != -1)
      {
        goto LABEL_12;
      }

      break;
    case 3:
      if (qword_280FA6600 != -1)
      {
        goto LABEL_12;
      }

      break;
    case 4:
      if (qword_280FA6600 != -1)
      {
        goto LABEL_12;
      }

      break;
    default:
      if (qword_280FA6600 != -1)
      {
LABEL_12:
        swift_once();
      }

      break;
  }

  return sub_220DBE240();
}

uint64_t sub_220D17AA0(char *a1, uint64_t a2)
{
  v4 = type metadata accessor for PrecipitationTotalStringAmount(0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v46[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v46[-1] - v9;
  v11 = type metadata accessor for PrecipitationTotalStringAmount.Format(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v46[-1] - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95208, &unk_220DC1E40);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v46[-1] - v18;
  v20 = *a1;
  sub_220D18BBC(a2 + *(v4 + 20), v14, type metadata accessor for PrecipitationTotalStringAmount.Format);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v16 + 32))(v19, v14, v15);
    HIBYTE(v45) = v20;
    sub_220D1887C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94FB8, &unk_220DC1E30);
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_220DC17C0;
    sub_220DBE050();
    v22 = MEMORY[0x277D83A80];
    *(v21 + 56) = MEMORY[0x277D839F8];
    *(v21 + 64) = v22;
    *(v21 + 32) = v23;
    v24 = sub_220DC0810();
    PrecipitationTotalStringAmount.formatted(_:accessible:shouldAddLessThanSymbol:)(v24, 0, 0, v25, v26, v27, v28, v29, v45, v46[0], v46[1], v46[2], v46[3], v46[4], v46[5], v46[6], v46[7], v46[8], v46[9], v46[10]);
    v31 = v30;
    v33 = v32;

    *(v21 + 96) = MEMORY[0x277D837D0];
    *(v21 + 104) = sub_220CEFDB0();
    *(v21 + 72) = v31;
    *(v21 + 80) = v33;
    v34 = sub_220DC05F0();

    (*(v16 + 8))(v19, v15);
  }

  else
  {
    sub_220D18B64(v14, type metadata accessor for PrecipitationTotalStringAmount.Format);
    if (qword_27CF94F40 != -1)
    {
      swift_once();
    }

    v35 = sub_220DBF410();
    __swift_project_value_buffer(v35, qword_27CF95F48);
    sub_220D18BBC(a2, v10, type metadata accessor for PrecipitationTotalStringAmount);
    v36 = sub_220DBF3F0();
    v37 = sub_220DC0980();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v46[0] = v39;
      *v38 = 136446210;
      sub_220D18BBC(v10, v8, type metadata accessor for PrecipitationTotalStringAmount);
      v40 = sub_220DC0630();
      v42 = v41;
      sub_220D18B64(v10, type metadata accessor for PrecipitationTotalStringAmount);
      v43 = sub_220D3F210(v40, v42, v46);

      *(v38 + 4) = v43;
      _os_log_impl(&dword_220CD1000, v36, v37, "Trying to format string for 'less than' precipitation, but the format is not 'less than'; amount=%{public}s", v38, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v39);
      MEMORY[0x223D98FB0](v39, -1, -1);
      MEMORY[0x223D98FB0](v38, -1, -1);
    }

    else
    {

      sub_220D18B64(v10, type metadata accessor for PrecipitationTotalStringAmount);
    }

    return 0;
  }

  return v34;
}

uint64_t sub_220D17F34(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PrecipitationTotalStringAmount(0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v82 = &v82 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v84 = &v82 - v9;
  MEMORY[0x28223BE20](v8);
  v83 = &v82 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95208, &unk_220DC1E40);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v82 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95210, &unk_220DC35F0);
  v17 = v16 - 8;
  v18 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16);
  v20 = &v82 - v19;
  v21 = sub_220DC0810();
  PrecipitationTotalStringAmount.formatted(_:accessible:shouldAddLessThanSymbol:)(v21, 0, 0, v22, v23, v24, v25, v26, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91, v92, v93);
  v86 = v27;
  v88 = v28;

  v29 = sub_220DC0810();
  PrecipitationTotalStringAmount.formatted(_:accessible:shouldAddLessThanSymbol:)(v29, 0, 0, v30, v31, v32, v33, v34, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91, v92, v93);
  v85 = v35;
  v87 = v36;

  v37 = *(v4 + 20);
  v38 = *(v17 + 56);
  sub_220D18BBC(a1 + v37, v20, type metadata accessor for PrecipitationTotalStringAmount.Format);
  sub_220D18BBC(a2 + v37, &v20[v38], type metadata accessor for PrecipitationTotalStringAmount.Format);
  type metadata accessor for PrecipitationTotalStringAmount.Format(0);
  LODWORD(v37) = swift_getEnumCaseMultiPayload();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v40 = EnumCaseMultiPayload;
  if (v37 == 1)
  {
    (*(v12 + 32))(v15, v20, v11);
    v41 = v38;
    if (v40 == 1)
    {
      if (qword_280FA6600 != -1)
      {
        swift_once();
      }

      sub_220DBE240();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94FB8, &unk_220DC1E30);
      v42 = swift_allocObject();
      *(v42 + 16) = xmmword_220DC1CC0;
      sub_220DBE050();
      v43 = MEMORY[0x277D83A80];
      *(v42 + 56) = MEMORY[0x277D839F8];
      *(v42 + 64) = v43;
      *(v42 + 32) = v44;
      v45 = MEMORY[0x277D837D0];
      *(v42 + 96) = MEMORY[0x277D837D0];
      v46 = sub_220CEFDB0();
      v47 = v88;
      *(v42 + 72) = v86;
      *(v42 + 80) = v47;
      *(v42 + 136) = v45;
      *(v42 + 144) = v46;
      v48 = v85;
      *(v42 + 104) = v46;
      *(v42 + 112) = v48;
      *(v42 + 120) = v87;
      v49 = sub_220DC05F0();

      v50 = *(v12 + 8);
      v50(v15, v11);
      v50(&v20[v41], v11);
      return v49;
    }

    if (qword_280FA6600 != -1)
    {
      swift_once();
    }

    sub_220DBE240();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94FB8, &unk_220DC1E30);
    v57 = swift_allocObject();
    *(v57 + 16) = xmmword_220DC1CC0;
    sub_220DBE050();
    v58 = MEMORY[0x277D83A80];
    *(v57 + 56) = MEMORY[0x277D839F8];
    *(v57 + 64) = v58;
    *(v57 + 32) = v59;
    v60 = MEMORY[0x277D837D0];
    *(v57 + 96) = MEMORY[0x277D837D0];
    v61 = sub_220CEFDB0();
    v62 = v88;
    *(v57 + 72) = v86;
    *(v57 + 80) = v62;
    *(v57 + 136) = v60;
    *(v57 + 144) = v61;
    v63 = v85;
    *(v57 + 104) = v61;
    *(v57 + 112) = v63;
    *(v57 + 120) = v87;
    v49 = sub_220DC05F0();

    (*(v12 + 8))(v15, v11);
    v56 = &v20[v41];
LABEL_13:
    sub_220D18B64(v56, type metadata accessor for PrecipitationTotalStringAmount.Format);
    return v49;
  }

  if (EnumCaseMultiPayload == 1)
  {
    if (qword_280FA6600 != -1)
    {
      swift_once();
    }

    sub_220DBE240();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94FB8, &unk_220DC1E30);
    v51 = swift_allocObject();
    *(v51 + 16) = xmmword_220DC17C0;
    v52 = MEMORY[0x277D837D0];
    *(v51 + 56) = MEMORY[0x277D837D0];
    v53 = sub_220CEFDB0();
    v54 = v88;
    *(v51 + 32) = v86;
    *(v51 + 40) = v54;
    *(v51 + 96) = v52;
    *(v51 + 104) = v53;
    v55 = v85;
    *(v51 + 64) = v53;
    *(v51 + 72) = v55;
    *(v51 + 80) = v87;
    v49 = sub_220DC05F0();

    (*(v12 + 8))(&v20[v38], v11);
    v56 = v20;
    goto LABEL_13;
  }

  if (qword_27CF94F40 != -1)
  {
    swift_once();
  }

  v64 = sub_220DBF410();
  __swift_project_value_buffer(v64, qword_27CF95F48);
  v65 = v83;
  sub_220D18BBC(a1, v83, type metadata accessor for PrecipitationTotalStringAmount);
  v66 = v84;
  sub_220D18BBC(a2, v84, type metadata accessor for PrecipitationTotalStringAmount);
  v67 = sub_220DBF3F0();
  v68 = sub_220DC0980();
  if (os_log_type_enabled(v67, v68))
  {
    v69 = swift_slowAlloc();
    LODWORD(v87) = v68;
    v70 = v69;
    v88 = swift_slowAlloc();
    v89 = v88;
    *v70 = 136446466;
    v71 = v82;
    sub_220D18BBC(v65, v82, type metadata accessor for PrecipitationTotalStringAmount);
    v72 = sub_220DC0630();
    v74 = v73;
    sub_220D18B64(v65, type metadata accessor for PrecipitationTotalStringAmount);
    v75 = sub_220D3F210(v72, v74, &v89);

    *(v70 + 4) = v75;
    *(v70 + 12) = 2082;
    sub_220D18BBC(v66, v71, type metadata accessor for PrecipitationTotalStringAmount);
    v76 = sub_220DC0630();
    v78 = v77;
    sub_220D18B64(v66, type metadata accessor for PrecipitationTotalStringAmount);
    v79 = sub_220D3F210(v76, v78, &v89);

    *(v70 + 14) = v79;
    _os_log_impl(&dword_220CD1000, v67, v87, "Trying to format string for 'less than' precipitation, but the format is not 'less than'; snowfallAmount=%{public}s, precipitationAmount=%{public}s", v70, 0x16u);
    v80 = v88;
    swift_arrayDestroy();
    MEMORY[0x223D98FB0](v80, -1, -1);
    MEMORY[0x223D98FB0](v70, -1, -1);
  }

  else
  {

    sub_220D18B64(v66, type metadata accessor for PrecipitationTotalStringAmount);
    sub_220D18B64(v65, type metadata accessor for PrecipitationTotalStringAmount);
  }

  sub_220D18C1C(v20);
  return 0;
}

uint64_t sub_220D1887C()
{
  switch(*v0)
  {
    case 1:
      if (qword_280FA6600 != -1)
      {
        goto LABEL_12;
      }

      break;
    case 2:
      if (qword_280FA6600 != -1)
      {
        goto LABEL_12;
      }

      break;
    case 3:
      if (qword_280FA6600 != -1)
      {
        goto LABEL_12;
      }

      break;
    case 4:
      if (qword_280FA6600 != -1)
      {
        goto LABEL_12;
      }

      break;
    default:
      if (qword_280FA6600 != -1)
      {
LABEL_12:
        swift_once();
      }

      break;
  }

  return sub_220DBE240();
}

uint64_t sub_220D18B04(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  OUTLINED_FUNCTION_6(v5);
  (*(v6 + 32))(a2, a1);
  return a2;
}

uint64_t sub_220D18B64(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_6(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_220D18BBC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  OUTLINED_FUNCTION_6(v5);
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t sub_220D18C1C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95210, &unk_220DC35F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_220D18CAC()
{
  v0 = type metadata accessor for PrecipitationPlatterPrecipitationKind();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v0;
}

uint64_t sub_220D18D04()
{
  v0 = type metadata accessor for PrecipitationPlatterPrecipitationKind();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  OUTLINED_FUNCTION_1();
  v4 = v3 - v2;
  Sentence = type metadata accessor for PrecipitationPlatterTodayFirstSentence();
  v6 = OUTLINED_FUNCTION_6(Sentence);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_1();
  sub_220D1C1EC();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  sub_220D19DE0();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v10 = sub_220D19378();
    }

    else
    {
      v10 = sub_220D198AC();
    }
  }

  else
  {
    v10 = sub_220D18E90();
  }

  v11 = v10;
  sub_220D18B64(v4, type metadata accessor for PrecipitationPlatterPrecipitationKind);
  return v11;
}

uint64_t type metadata accessor for PrecipitationPlatterTodayFirstSentence()
{
  result = qword_27CF95908;
  if (!qword_27CF95908)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_220D18E90()
{
  v0 = type metadata accessor for PrecipitationTotalStringAmount(0);
  v1 = *(*(v0 - 8) + 64);
  v2 = MEMORY[0x28223BE20](v0 - 8);
  v4 = &v54 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = &v54 - v5;
  v7 = type metadata accessor for PrecipitationPlatterPrecipitationKind();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220D1C1EC();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v51 = *v10;
      v52 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF958A8, &unk_220DC33A0) + 48);
      sub_220D19DE0();
      HIBYTE(v55) = v51;
      v24 = sub_220D1A0C8(&v55 + 7);
      goto LABEL_9;
    case 2u:
      v25 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF958A0, &unk_220DC35E0) + 48);
      sub_220D19DE0();
      sub_220D19DE0();
      if (qword_280FA6600 != -1)
      {
        swift_once();
      }

      sub_220DBE240();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94FB8, &unk_220DC1E30);
      v26 = swift_allocObject();
      *(v26 + 16) = xmmword_220DC17C0;
      v27 = sub_220DC0810();
      PrecipitationTotalStringAmount.formatted(_:accessible:shouldAddLessThanSymbol:)(v27, 0, 1, v28, v29, v30, v31, v32, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65);
      v34 = v33;
      v36 = v35;

      v37 = MEMORY[0x277D837D0];
      *(v26 + 56) = MEMORY[0x277D837D0];
      v38 = sub_220CEFDB0();
      *(v26 + 64) = v38;
      *(v26 + 32) = v34;
      *(v26 + 40) = v36;
      v39 = sub_220DC0810();
      PrecipitationTotalStringAmount.formatted(_:accessible:shouldAddLessThanSymbol:)(v39, 0, 1, v40, v41, v42, v43, v44, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65);
      v46 = v45;
      v48 = v47;

      *(v26 + 96) = v37;
      *(v26 + 104) = v38;
      *(v26 + 72) = v46;
      *(v26 + 80) = v48;
      v24 = sub_220DC05F0();

      goto LABEL_7;
    case 3u:
      v49 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF958A0, &unk_220DC35E0) + 48);
      sub_220D19DE0();
      sub_220D19DE0();
      v24 = sub_220D1A55C(1);
LABEL_7:
      sub_220D18B64(v4, type metadata accessor for PrecipitationTotalStringAmount);
      v50 = v6;
      break;
    default:
      v11 = *v10;
      v12 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF958A8, &unk_220DC33A0) + 48);
      sub_220D19DE0();
      BYTE6(v55) = v11;
      sub_220D19E38();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94FB8, &unk_220DC1E30);
      v13 = swift_allocObject();
      *(v13 + 16) = xmmword_220DC17A0;
      v14 = sub_220DC0810();
      PrecipitationTotalStringAmount.formatted(_:accessible:shouldAddLessThanSymbol:)(v14, 0, 1, v15, v16, v17, v18, v19, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65);
      v21 = v20;
      v23 = v22;

      *(v13 + 56) = MEMORY[0x277D837D0];
      *(v13 + 64) = sub_220CEFDB0();
      *(v13 + 32) = v21;
      *(v13 + 40) = v23;
      v24 = sub_220DC05F0();

LABEL_9:
      v50 = v6;
      break;
  }

  sub_220D18B64(v50, type metadata accessor for PrecipitationTotalStringAmount);
  return v24;
}

uint64_t sub_220D19378()
{
  v0 = type metadata accessor for PrecipitationTotalStringAmount(0);
  v1 = *(*(v0 - 8) + 64);
  v2 = MEMORY[0x28223BE20](v0 - 8);
  v4 = &v58 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = &v58 - v5;
  v7 = type metadata accessor for PrecipitationPlatterPrecipitationKind();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220D1C1EC();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v55 = *v10;
      v56 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF958A8, &unk_220DC33A0) + 48);
      sub_220D19DE0();
      HIBYTE(v59) = v55;
      v27 = sub_220D1BB10(&v59 + 7, v6, sub_220D1B59C, 6);
      goto LABEL_9;
    case 2u:
      v28 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF958A0, &unk_220DC35E0) + 48);
      sub_220D19DE0();
      sub_220D19DE0();
      if (qword_280FA6600 != -1)
      {
        swift_once();
      }

      sub_220DBE240();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94FB8, &unk_220DC1E30);
      v29 = swift_allocObject();
      *(v29 + 16) = xmmword_220DC1CC0;
      v30 = MEMORY[0x277D83C10];
      *(v29 + 56) = MEMORY[0x277D83B88];
      *(v29 + 64) = v30;
      *(v29 + 32) = 6;
      v31 = sub_220DC0810();
      PrecipitationTotalStringAmount.formatted(_:accessible:shouldAddLessThanSymbol:)(v31, 0, 1, v32, v33, v34, v35, v36, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69);
      v38 = v37;
      v40 = v39;

      v41 = MEMORY[0x277D837D0];
      *(v29 + 96) = MEMORY[0x277D837D0];
      v42 = sub_220CEFDB0();
      *(v29 + 104) = v42;
      *(v29 + 72) = v38;
      *(v29 + 80) = v40;
      v43 = sub_220DC0810();
      PrecipitationTotalStringAmount.formatted(_:accessible:shouldAddLessThanSymbol:)(v43, 0, 1, v44, v45, v46, v47, v48, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69);
      v50 = v49;
      v52 = v51;

      *(v29 + 136) = v41;
      *(v29 + 144) = v42;
      *(v29 + 112) = v50;
      *(v29 + 120) = v52;
      v27 = sub_220DC05F0();

      goto LABEL_7;
    case 3u:
      v53 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF958A0, &unk_220DC35E0) + 48);
      sub_220D19DE0();
      sub_220D19DE0();
      v27 = sub_220D1A55C(6);
LABEL_7:
      sub_220D18B64(v4, type metadata accessor for PrecipitationTotalStringAmount);
      v54 = v6;
      break;
    default:
      v11 = *v10;
      v12 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF958A8, &unk_220DC33A0) + 48);
      sub_220D19DE0();
      BYTE6(v59) = v11;
      sub_220D1B2B8();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94FB8, &unk_220DC1E30);
      v13 = swift_allocObject();
      *(v13 + 16) = xmmword_220DC17C0;
      v14 = sub_220DC0810();
      PrecipitationTotalStringAmount.formatted(_:accessible:shouldAddLessThanSymbol:)(v14, 0, 1, v15, v16, v17, v18, v19, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69);
      v21 = v20;
      v23 = v22;

      *(v13 + 56) = MEMORY[0x277D837D0];
      v24 = sub_220CEFDB0();
      v25 = MEMORY[0x277D83B88];
      v26 = MEMORY[0x277D83C10];
      *(v13 + 32) = v21;
      *(v13 + 40) = v23;
      *(v13 + 96) = v25;
      *(v13 + 104) = v26;
      *(v13 + 64) = v24;
      *(v13 + 72) = 6;
      v27 = sub_220DC05F0();

LABEL_9:
      v54 = v6;
      break;
  }

  sub_220D18B64(v54, type metadata accessor for PrecipitationTotalStringAmount);
  return v27;
}

uint64_t sub_220D198AC()
{
  v0 = type metadata accessor for PrecipitationTotalStringAmount(0);
  v1 = *(*(v0 - 8) + 64);
  v2 = MEMORY[0x28223BE20](v0 - 8);
  v4 = &v58 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = &v58 - v5;
  v7 = type metadata accessor for PrecipitationPlatterPrecipitationKind();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220D1C1EC();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v55 = *v10;
      v56 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF958A8, &unk_220DC33A0) + 48);
      sub_220D19DE0();
      HIBYTE(v59) = v55;
      v27 = sub_220D1BB10(&v59 + 7, v6, sub_220D1BF58, 24);
      goto LABEL_9;
    case 2u:
      v28 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF958A0, &unk_220DC35E0) + 48);
      sub_220D19DE0();
      sub_220D19DE0();
      if (qword_280FA6600 != -1)
      {
        swift_once();
      }

      sub_220DBE240();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94FB8, &unk_220DC1E30);
      v29 = swift_allocObject();
      *(v29 + 16) = xmmword_220DC1CC0;
      v30 = MEMORY[0x277D83C10];
      *(v29 + 56) = MEMORY[0x277D83B88];
      *(v29 + 64) = v30;
      *(v29 + 32) = 24;
      v31 = sub_220DC0810();
      PrecipitationTotalStringAmount.formatted(_:accessible:shouldAddLessThanSymbol:)(v31, 0, 1, v32, v33, v34, v35, v36, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69);
      v38 = v37;
      v40 = v39;

      v41 = MEMORY[0x277D837D0];
      *(v29 + 96) = MEMORY[0x277D837D0];
      v42 = sub_220CEFDB0();
      *(v29 + 104) = v42;
      *(v29 + 72) = v38;
      *(v29 + 80) = v40;
      v43 = sub_220DC0810();
      PrecipitationTotalStringAmount.formatted(_:accessible:shouldAddLessThanSymbol:)(v43, 0, 1, v44, v45, v46, v47, v48, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69);
      v50 = v49;
      v52 = v51;

      *(v29 + 136) = v41;
      *(v29 + 144) = v42;
      *(v29 + 112) = v50;
      *(v29 + 120) = v52;
      v27 = sub_220DC05F0();

      goto LABEL_7;
    case 3u:
      v53 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF958A0, &unk_220DC35E0) + 48);
      sub_220D19DE0();
      sub_220D19DE0();
      v27 = sub_220D1A55C(24);
LABEL_7:
      sub_220D18B64(v4, type metadata accessor for PrecipitationTotalStringAmount);
      v54 = v6;
      break;
    default:
      v11 = *v10;
      v12 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF958A8, &unk_220DC33A0) + 48);
      sub_220D19DE0();
      BYTE6(v59) = v11;
      sub_220D1B82C();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94FB8, &unk_220DC1E30);
      v13 = swift_allocObject();
      *(v13 + 16) = xmmword_220DC17C0;
      v14 = sub_220DC0810();
      PrecipitationTotalStringAmount.formatted(_:accessible:shouldAddLessThanSymbol:)(v14, 0, 1, v15, v16, v17, v18, v19, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69);
      v21 = v20;
      v23 = v22;

      *(v13 + 56) = MEMORY[0x277D837D0];
      v24 = sub_220CEFDB0();
      v25 = MEMORY[0x277D83B88];
      v26 = MEMORY[0x277D83C10];
      *(v13 + 32) = v21;
      *(v13 + 40) = v23;
      *(v13 + 96) = v25;
      *(v13 + 104) = v26;
      *(v13 + 64) = v24;
      *(v13 + 72) = 24;
      v27 = sub_220DC05F0();

LABEL_9:
      v54 = v6;
      break;
  }

  sub_220D18B64(v54, type metadata accessor for PrecipitationTotalStringAmount);
  return v27;
}

uint64_t sub_220D19DE0()
{
  v2 = OUTLINED_FUNCTION_3_11();
  v4 = v3(v2);
  OUTLINED_FUNCTION_6(v4);
  (*(v5 + 32))(v0, v1);
  return v0;
}

uint64_t sub_220D19E38()
{
  switch(*v0)
  {
    case 1:
      if (qword_280FA6600 != -1)
      {
        goto LABEL_12;
      }

      break;
    case 2:
      if (qword_280FA6600 != -1)
      {
        goto LABEL_12;
      }

      break;
    case 3:
      if (qword_280FA6600 != -1)
      {
        goto LABEL_12;
      }

      break;
    case 4:
      if (qword_280FA6600 != -1)
      {
        goto LABEL_12;
      }

      break;
    default:
      if (qword_280FA6600 != -1)
      {
LABEL_12:
        swift_once();
      }

      break;
  }

  return sub_220DBE240();
}

uint64_t sub_220D1A0C8(char *a1)
{
  v2 = type metadata accessor for PrecipitationTotalStringAmount(0);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2);
  MEMORY[0x28223BE20](v4);
  v6 = &v43[-1] - v5;
  v7 = type metadata accessor for PrecipitationTotalStringAmount.Format(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v43[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95208, &unk_220DC1E40);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v43[-1] - v14;
  v16 = *a1;
  v17 = *(v2 + 20);
  sub_220D1C1EC();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v12 + 32))(v15, v10, v11);
    HIBYTE(v42) = v16;
    sub_220D1B028();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94FB8, &unk_220DC1E30);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_220DC17C0;
    sub_220DBE050();
    v19 = MEMORY[0x277D83A80];
    *(v18 + 56) = MEMORY[0x277D839F8];
    *(v18 + 64) = v19;
    *(v18 + 32) = v20;
    v21 = sub_220DC0810();
    PrecipitationTotalStringAmount.formatted(_:accessible:shouldAddLessThanSymbol:)(v21, 0, 0, v22, v23, v24, v25, v26, v42, v43[0], v43[1], v43[2], v43[3], v43[4], v43[5], v43[6], v43[7], v43[8], v43[9], v43[10]);
    v28 = v27;
    v30 = v29;

    *(v18 + 96) = MEMORY[0x277D837D0];
    *(v18 + 104) = sub_220CEFDB0();
    *(v18 + 72) = v28;
    *(v18 + 80) = v30;
    v31 = sub_220DC05F0();

    (*(v12 + 8))(v15, v11);
  }

  else
  {
    sub_220D18B64(v10, type metadata accessor for PrecipitationTotalStringAmount.Format);
    if (qword_27CF94F40 != -1)
    {
      swift_once();
    }

    v32 = sub_220DBF410();
    __swift_project_value_buffer(v32, qword_27CF95F48);
    sub_220D1C1EC();
    v33 = sub_220DBF3F0();
    v34 = sub_220DC0980();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v43[0] = v36;
      *v35 = 136446210;
      sub_220D1C1EC();
      v37 = sub_220DC0630();
      v39 = v38;
      sub_220D18B64(v6, type metadata accessor for PrecipitationTotalStringAmount);
      v40 = sub_220D3F210(v37, v39, v43);

      *(v35 + 4) = v40;
      _os_log_impl(&dword_220CD1000, v33, v34, "Trying to format string for 'less than' precipitation, but the format is not 'less than'; amount=%{public}s", v35, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v36);
      MEMORY[0x223D98FB0](v36, -1, -1);
      MEMORY[0x223D98FB0](v35, -1, -1);
    }

    else
    {

      sub_220D18B64(v6, type metadata accessor for PrecipitationTotalStringAmount);
    }

    return 0;
  }

  return v31;
}

uint64_t sub_220D1A55C(uint64_t a1)
{
  v102 = a1;
  v1 = type metadata accessor for PrecipitationTotalStringAmount(0);
  v2 = *(*(v1 - 8) + 64);
  v3 = MEMORY[0x28223BE20](v1);
  v98 = &v97 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v3);
  v107 = &v97 - v6;
  MEMORY[0x28223BE20](v5);
  v103 = &v97 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95208, &unk_220DC1E40);
  v105 = *(v8 - 8);
  v106 = v8;
  v9 = *(v105 + 64);
  MEMORY[0x28223BE20](v8);
  v104 = &v97 - v10;
  v11 = type metadata accessor for PrecipitationTotalStringAmount.Format(0);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v97 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v97 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95210, &unk_220DC35F0);
  v19 = v18 - 8;
  v20 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18);
  v22 = &v97 - v21;
  v23 = sub_220DC0810();
  PrecipitationTotalStringAmount.formatted(_:accessible:shouldAddLessThanSymbol:)(v23, 0, 0, v24, v25, v26, v27, v28, v97, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107, v108);
  v101 = v29;
  v109 = v30;

  v31 = sub_220DC0810();
  PrecipitationTotalStringAmount.formatted(_:accessible:shouldAddLessThanSymbol:)(v31, 0, 0, v32, v33, v34, v35, v36, v97, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107, v108);
  v100 = v37;
  v108 = v38;

  v99 = v1;
  v39 = *(v1 + 20);
  v40 = *(v19 + 56);
  sub_220D1C1EC();
  v41 = v40;
  sub_220D1C1EC();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_220D1C1EC();
      v43 = swift_getEnumCaseMultiPayload();
      v45 = v104;
      v44 = v105;
      v46 = v106;
      (*(v105 + 32))(v104, v17, v106);
      if (v43 != 1)
      {
        if (qword_280FA6600 != -1)
        {
          swift_once();
        }

        sub_220DBE240();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94FB8, &unk_220DC1E30);
        v70 = swift_allocObject();
        v71 = MEMORY[0x277D83B88];
        *(v70 + 16) = xmmword_220DC1CE0;
        v72 = MEMORY[0x277D83C10];
        *(v70 + 56) = v71;
        *(v70 + 64) = v72;
        *(v70 + 32) = v102;
        sub_220DBE050();
        v73 = MEMORY[0x277D83A80];
        *(v70 + 96) = MEMORY[0x277D839F8];
        *(v70 + 104) = v73;
        *(v70 + 72) = v74;
        v75 = MEMORY[0x277D837D0];
        *(v70 + 136) = MEMORY[0x277D837D0];
        v76 = sub_220CEFDB0();
        v77 = v109;
        *(v70 + 112) = v101;
        *(v70 + 120) = v77;
        *(v70 + 176) = v75;
        *(v70 + 184) = v76;
        v78 = v100;
        *(v70 + 144) = v76;
        *(v70 + 152) = v78;
        *(v70 + 160) = v108;
        v56 = sub_220DC05F0();

        (*(v44 + 8))(v45, v46);
        sub_220D18B64(&v22[v41], type metadata accessor for PrecipitationTotalStringAmount.Format);
        v69 = v22;
        goto LABEL_16;
      }

      if (qword_280FA6600 != -1)
      {
        swift_once();
      }

      sub_220DBE240();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94FB8, &unk_220DC1E30);
      v47 = swift_allocObject();
      v48 = MEMORY[0x277D83B88];
      *(v47 + 16) = xmmword_220DC1CE0;
      v49 = MEMORY[0x277D83C10];
      *(v47 + 56) = v48;
      *(v47 + 64) = v49;
      *(v47 + 32) = v102;
      sub_220DBE050();
      v50 = MEMORY[0x277D83A80];
      *(v47 + 96) = MEMORY[0x277D839F8];
      *(v47 + 104) = v50;
      *(v47 + 72) = v51;
      v52 = MEMORY[0x277D837D0];
      *(v47 + 136) = MEMORY[0x277D837D0];
      v53 = sub_220CEFDB0();
      v54 = v109;
      *(v47 + 112) = v101;
      *(v47 + 120) = v54;
      *(v47 + 176) = v52;
      *(v47 + 184) = v53;
      v55 = v100;
      *(v47 + 144) = v53;
      *(v47 + 152) = v55;
      *(v47 + 160) = v108;
      v56 = sub_220DC05F0();

      v57 = *(v44 + 8);
      v57(v45, v46);
LABEL_11:
      v57(&v22[v41], v46);
      v69 = v22;
LABEL_16:
      sub_220D18B64(v69, type metadata accessor for PrecipitationTotalStringAmount.Format);
      return v56;
    }
  }

  else
  {
    sub_220D1C1EC();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v59 = v104;
      v58 = v105;
      v46 = v106;
      (*(v105 + 32))(v104, v15, v106);
      if (qword_280FA6600 != -1)
      {
        swift_once();
      }

      sub_220DBE240();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94FB8, &unk_220DC1E30);
      v60 = swift_allocObject();
      v61 = MEMORY[0x277D83B88];
      *(v60 + 16) = xmmword_220DC1CE0;
      v62 = MEMORY[0x277D83C10];
      *(v60 + 56) = v61;
      *(v60 + 64) = v62;
      *(v60 + 32) = v102;
      sub_220DBE050();
      v63 = MEMORY[0x277D83A80];
      *(v60 + 96) = MEMORY[0x277D839F8];
      *(v60 + 104) = v63;
      *(v60 + 72) = v64;
      v65 = MEMORY[0x277D837D0];
      *(v60 + 136) = MEMORY[0x277D837D0];
      v66 = sub_220CEFDB0();
      v67 = v109;
      *(v60 + 112) = v101;
      *(v60 + 120) = v67;
      *(v60 + 176) = v65;
      *(v60 + 184) = v66;
      v68 = v100;
      *(v60 + 144) = v66;
      *(v60 + 152) = v68;
      *(v60 + 160) = v108;
      v56 = sub_220DC05F0();

      v57 = *(v58 + 8);
      v57(v59, v46);
      goto LABEL_11;
    }

    (*(v105 + 8))(v15, v106);
  }

  v79 = v107;
  v80 = v103;
  if (qword_27CF94F40 != -1)
  {
    swift_once();
  }

  v81 = sub_220DBF410();
  __swift_project_value_buffer(v81, qword_27CF95F48);
  sub_220D1C1EC();
  sub_220D1C1EC();
  v82 = sub_220DBF3F0();
  v83 = sub_220DC0980();
  if (os_log_type_enabled(v82, v83))
  {
    v84 = swift_slowAlloc();
    LODWORD(v108) = v83;
    v85 = v84;
    v109 = swift_slowAlloc();
    v110 = v109;
    *v85 = 136446466;
    sub_220D1C1EC();
    v86 = sub_220DC0630();
    v88 = v87;
    sub_220D18B64(v80, type metadata accessor for PrecipitationTotalStringAmount);
    v89 = sub_220D3F210(v86, v88, &v110);

    *(v85 + 4) = v89;
    *(v85 + 12) = 2082;
    v90 = v107;
    sub_220D1C1EC();
    v91 = sub_220DC0630();
    v93 = v92;
    sub_220D18B64(v90, type metadata accessor for PrecipitationTotalStringAmount);
    v94 = sub_220D3F210(v91, v93, &v110);

    *(v85 + 14) = v94;
    _os_log_impl(&dword_220CD1000, v82, v108, "Trying to format string for 'less than' precipitation, but the format is not 'less than'; snowfallAmount=%{public}s, precipitationAmount=%{public}s", v85, 0x16u);
    v95 = v109;
    swift_arrayDestroy();
    MEMORY[0x223D98FB0](v95, -1, -1);
    MEMORY[0x223D98FB0](v85, -1, -1);
  }

  else
  {

    sub_220D18B64(v79, type metadata accessor for PrecipitationTotalStringAmount);
    sub_220D18B64(v80, type metadata accessor for PrecipitationTotalStringAmount);
  }

  sub_220D18C1C(v22);
  return 0;
}

uint64_t sub_220D1B028()
{
  switch(*v0)
  {
    case 1:
      if (qword_280FA6600 != -1)
      {
        goto LABEL_12;
      }

      break;
    case 2:
      if (qword_280FA6600 != -1)
      {
        goto LABEL_12;
      }

      break;
    case 3:
      if (qword_280FA6600 != -1)
      {
        goto LABEL_12;
      }

      break;
    case 4:
      if (qword_280FA6600 != -1)
      {
        goto LABEL_12;
      }

      break;
    default:
      if (qword_280FA6600 != -1)
      {
LABEL_12:
        swift_once();
      }

      break;
  }

  return sub_220DBE240();
}

uint64_t sub_220D1B2B8()
{
  switch(*v0)
  {
    case 1:
      if (qword_280FA6600 != -1)
      {
        goto LABEL_12;
      }

      break;
    case 2:
      if (qword_280FA6600 != -1)
      {
        goto LABEL_12;
      }

      break;
    case 3:
      if (qword_280FA6600 != -1)
      {
        goto LABEL_12;
      }

      break;
    case 4:
      if (qword_280FA6600 != -1)
      {
        goto LABEL_12;
      }

      break;
    default:
      if (qword_280FA6600 != -1)
      {
LABEL_12:
        swift_once();
      }

      break;
  }

  return sub_220DBE240();
}

uint64_t sub_220D1B59C()
{
  switch(*v0)
  {
    case 1:
      if (qword_280FA6600 != -1)
      {
        goto LABEL_12;
      }

      break;
    case 2:
      if (qword_280FA6600 != -1)
      {
        goto LABEL_12;
      }

      break;
    case 3:
      if (qword_280FA6600 != -1)
      {
        goto LABEL_12;
      }

      break;
    case 4:
      if (qword_280FA6600 != -1)
      {
        goto LABEL_12;
      }

      break;
    default:
      if (qword_280FA6600 != -1)
      {
LABEL_12:
        swift_once();
      }

      break;
  }

  return sub_220DBE240();
}

uint64_t sub_220D1B82C()
{
  switch(*v0)
  {
    case 1:
      if (qword_280FA6600 != -1)
      {
        goto LABEL_12;
      }

      break;
    case 2:
      if (qword_280FA6600 != -1)
      {
        goto LABEL_12;
      }

      break;
    case 3:
      if (qword_280FA6600 != -1)
      {
        goto LABEL_12;
      }

      break;
    case 4:
      if (qword_280FA6600 != -1)
      {
        goto LABEL_12;
      }

      break;
    default:
      if (qword_280FA6600 != -1)
      {
LABEL_12:
        swift_once();
      }

      break;
  }

  return sub_220DBE240();
}

uint64_t sub_220D1BB10(uint64_t a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4)
{
  v53 = a3;
  v54 = a4;
  v5 = OUTLINED_FUNCTION_3_11();
  v6 = type metadata accessor for PrecipitationTotalStringAmount(v5);
  v7 = OUTLINED_FUNCTION_6(v6);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  MEMORY[0x28223BE20](v10);
  v11 = type metadata accessor for PrecipitationTotalStringAmount.Format(0);
  v12 = OUTLINED_FUNCTION_6(v11);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_1();
  v17 = v16 - v15;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95208, &unk_220DC1E40);
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  v22 = &v53 - v21;
  v23 = *v4;
  v24 = *(v6 + 20);
  sub_220D1C1EC();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v25 = (*(v19 + 32))(v22, v17, v18);
    HIBYTE(v55) = v23;
    v53(v25);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94FB8, &unk_220DC1E30);
    v26 = swift_allocObject();
    *(v26 + 16) = xmmword_220DC1CC0;
    sub_220DBE050();
    v27 = MEMORY[0x277D83A80];
    *(v26 + 56) = MEMORY[0x277D839F8];
    *(v26 + 64) = v27;
    *(v26 + 32) = v28;
    v29 = sub_220DC0810();
    PrecipitationTotalStringAmount.formatted(_:accessible:shouldAddLessThanSymbol:)(v29, 0, 0, v30, v31, v32, v33, v34, v53, v54, v55, v56[0], v56[1], v56[2], v56[3], v56[4], v56[5], v56[6], v56[7], v56[8]);
    v36 = v35;
    v38 = v37;

    *(v26 + 96) = MEMORY[0x277D837D0];
    v39 = sub_220CEFDB0();
    *(v26 + 72) = v36;
    *(v26 + 80) = v38;
    v40 = MEMORY[0x277D83C10];
    *(v26 + 136) = MEMORY[0x277D83B88];
    *(v26 + 144) = v40;
    v41 = v54;
    *(v26 + 104) = v39;
    *(v26 + 112) = v41;
    v42 = sub_220DC05F0();

    (*(v19 + 8))(v22, v18);
  }

  else
  {
    sub_220D18B64(v17, type metadata accessor for PrecipitationTotalStringAmount.Format);
    if (qword_27CF94F40 != -1)
    {
      swift_once();
    }

    v43 = sub_220DBF410();
    __swift_project_value_buffer(v43, qword_27CF95F48);
    OUTLINED_FUNCTION_1_11();
    sub_220D1C1EC();
    v44 = sub_220DBF3F0();
    v45 = sub_220DC0980();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v56[0] = v47;
      *v46 = 136446210;
      OUTLINED_FUNCTION_1_11();
      sub_220D1C1EC();
      v48 = sub_220DC0630();
      v50 = v49;
      OUTLINED_FUNCTION_2_8();
      v51 = sub_220D3F210(v48, v50, v56);

      *(v46 + 4) = v51;
      _os_log_impl(&dword_220CD1000, v44, v45, "Trying to format string for 'less than' precipitation, but the format is not 'less than'; amount=%{public}s", v46, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v47);
      MEMORY[0x223D98FB0](v47, -1, -1);
      MEMORY[0x223D98FB0](v46, -1, -1);
    }

    else
    {

      OUTLINED_FUNCTION_2_8();
    }

    return 0;
  }

  return v42;
}

uint64_t sub_220D1BF58()
{
  switch(*v0)
  {
    case 1:
      if (qword_280FA6600 != -1)
      {
        goto LABEL_12;
      }

      break;
    case 2:
      if (qword_280FA6600 != -1)
      {
        goto LABEL_12;
      }

      break;
    case 3:
      if (qword_280FA6600 != -1)
      {
        goto LABEL_12;
      }

      break;
    case 4:
      if (qword_280FA6600 != -1)
      {
        goto LABEL_12;
      }

      break;
    default:
      if (qword_280FA6600 != -1)
      {
LABEL_12:
        swift_once();
      }

      break;
  }

  return sub_220DBE240();
}

uint64_t sub_220D1C1EC()
{
  v2 = OUTLINED_FUNCTION_3_11();
  v4 = v3(v2);
  OUTLINED_FUNCTION_6(v4);
  (*(v5 + 16))(v0, v1);
  return v0;
}

uint64_t sub_220D1C244()
{
  result = type metadata accessor for PrecipitationPlatterPrecipitationKind();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_220D1C2A8()
{
  v1 = type metadata accessor for PrecipitationPlatterPrecipitationKind();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  TwentyFourHourSentence = type metadata accessor for PrecipitationPlatterNextTwentyFourHourSentence();
  v6 = OUTLINED_FUNCTION_6(TwentyFourHourSentence);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220D1E6A0(v0, v10, type metadata accessor for PrecipitationPlatterNextTwentyFourHourSentence);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  sub_220D18B04(v10, v4, type metadata accessor for PrecipitationPlatterPrecipitationKind);
  if (EnumCaseMultiPayload == 1)
  {
    v12 = sub_220D1CBA8(v4);
  }

  else
  {
    v12 = sub_220D1C438(v4);
  }

  v13 = v12;
  sub_220D18B64(v4, type metadata accessor for PrecipitationPlatterPrecipitationKind);
  return v13;
}

uint64_t type metadata accessor for PrecipitationPlatterNextTwentyFourHourSentence()
{
  result = qword_27CF95918;
  if (!qword_27CF95918)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_220D1C438(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95208, &unk_220DC1E40);
  v65 = *(v2 - 8);
  v66 = v2;
  v3 = *(v65 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v65 - v4;
  v6 = type metadata accessor for PrecipitationTotalStringAmount.Format(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v65 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for PrecipitationTotalStringAmount(0);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v65 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v65 - v16;
  MEMORY[0x28223BE20](v15);
  v19 = &v65 - v18;
  v20 = type metadata accessor for PrecipitationPlatterPrecipitationKind();
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20);
  v23 = &v65 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220D1E6A0(a1, v23, type metadata accessor for PrecipitationPlatterPrecipitationKind);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF958A8, &unk_220DC33A0);
      sub_220D18B04(&v23[*(v48 + 48)], v17, type metadata accessor for PrecipitationTotalStringAmount);
      HIBYTE(v68) = 6;
      v43 = sub_220D1D2A0(v17, &v68 + 7);
      v47 = v17;
      break;
    case 2u:
      v44 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF958A0, &unk_220DC35E0) + 48);
      sub_220D18B04(v23, v17, type metadata accessor for PrecipitationTotalStringAmount);
      sub_220D18B04(&v23[v44], v14, type metadata accessor for PrecipitationTotalStringAmount);
      v45 = sub_220D1D7E0();
      goto LABEL_8;
    case 3u:
      v46 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF958A0, &unk_220DC35E0) + 48);
      sub_220D18B04(v23, v17, type metadata accessor for PrecipitationTotalStringAmount);
      sub_220D18B04(&v23[v46], v14, type metadata accessor for PrecipitationTotalStringAmount);
      v45 = sub_220D1D9A0(v17, v14);
LABEL_8:
      v43 = v45;
      sub_220D18B64(v14, type metadata accessor for PrecipitationTotalStringAmount);
      v47 = v17;
      break;
    default:
      v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF958A8, &unk_220DC33A0);
      v25 = v19;
      sub_220D18B04(&v23[*(v24 + 48)], v19, type metadata accessor for PrecipitationTotalStringAmount);
      sub_220D1E6A0(&v19[*(v10 + 20)], v9, type metadata accessor for PrecipitationTotalStringAmount.Format);
      if (swift_getEnumCaseMultiPayload() > 1)
      {
        v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95218, &qword_220DC1E50);
        v50 = v66;
        v51 = *(v65 + 8);
        v51(&v9[*(v49 + 48)], v66);
        v51(v9, v50);
        if (qword_280FA6600 != -1)
        {
          swift_once();
        }

        sub_220DBE240();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94FB8, &unk_220DC1E30);
        v52 = swift_allocObject();
        *(v52 + 16) = xmmword_220DC17C0;
        v53 = MEMORY[0x277D83C10];
        *(v52 + 56) = MEMORY[0x277D83B88];
        *(v52 + 64) = v53;
        *(v52 + 32) = 24;
        v54 = sub_220DC0810();
        PrecipitationTotalStringAmount.formatted(_:accessible:shouldAddLessThanSymbol:)(v54, 0, 1, v55, v56, v57, v58, v59, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76);
        v61 = v60;
        v63 = v62;

        *(v52 + 96) = MEMORY[0x277D837D0];
        *(v52 + 104) = sub_220CEFDB0();
        *(v52 + 72) = v61;
        *(v52 + 80) = v63;
        v43 = sub_220DC05F0();
      }

      else
      {
        v27 = v65;
        v26 = v66;
        (*(v65 + 32))(v5, v9, v66);
        sub_220DBE050();
        v29 = Double.pluralRuleInteger.getter(v28);
        (*(v27 + 8))(v5, v26);
        if (qword_280FA6600 != -1)
        {
          swift_once();
        }

        sub_220DBE240();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94FB8, &unk_220DC1E30);
        v30 = swift_allocObject();
        *(v30 + 16) = xmmword_220DC1CC0;
        v31 = MEMORY[0x277D83B88];
        v32 = MEMORY[0x277D83C10];
        *(v30 + 56) = MEMORY[0x277D83B88];
        *(v30 + 64) = v32;
        *(v30 + 32) = 24;
        *(v30 + 96) = v31;
        *(v30 + 104) = v32;
        *(v30 + 72) = v29;
        v33 = sub_220DC0810();
        PrecipitationTotalStringAmount.formatted(_:accessible:shouldAddLessThanSymbol:)(v33, 0, 1, v34, v35, v36, v37, v38, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76);
        v40 = v39;
        v42 = v41;

        *(v30 + 136) = MEMORY[0x277D837D0];
        *(v30 + 144) = sub_220CEFDB0();
        *(v30 + 112) = v40;
        *(v30 + 120) = v42;
        v43 = sub_220DC05F0();
      }

      v47 = v25;
      break;
  }

  sub_220D18B64(v47, type metadata accessor for PrecipitationTotalStringAmount);
  return v43;
}

uint64_t sub_220D1CBA8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95208, &unk_220DC1E40);
  v67 = *(v2 - 8);
  v68 = v2;
  v3 = *(v67 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v67 - v4;
  v6 = type metadata accessor for PrecipitationTotalStringAmount.Format(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v67 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for PrecipitationTotalStringAmount(0);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v67 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v67 - v16;
  MEMORY[0x28223BE20](v15);
  v19 = &v67 - v18;
  v20 = type metadata accessor for PrecipitationPlatterPrecipitationKind();
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20);
  v23 = &v67 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220D1E6A0(a1, v23, type metadata accessor for PrecipitationPlatterPrecipitationKind);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v49 = *v23;
      v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF958A8, &unk_220DC33A0);
      sub_220D18B04(&v23[*(v50 + 48)], v17, type metadata accessor for PrecipitationTotalStringAmount);
      HIBYTE(v70) = v49;
      v44 = sub_220D1D2A0(v17, &v70 + 7);
      v48 = v17;
      break;
    case 2u:
      v45 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF958A0, &unk_220DC35E0) + 48);
      sub_220D18B04(v23, v17, type metadata accessor for PrecipitationTotalStringAmount);
      sub_220D18B04(&v23[v45], v14, type metadata accessor for PrecipitationTotalStringAmount);
      v46 = sub_220D1D7E0();
      goto LABEL_6;
    case 3u:
      v47 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF958A0, &unk_220DC35E0) + 48);
      sub_220D18B04(v23, v17, type metadata accessor for PrecipitationTotalStringAmount);
      sub_220D18B04(&v23[v47], v14, type metadata accessor for PrecipitationTotalStringAmount);
      v46 = sub_220D1D9A0(v17, v14);
LABEL_6:
      v44 = v46;
      sub_220D18B64(v14, type metadata accessor for PrecipitationTotalStringAmount);
      v48 = v17;
      break;
    default:
      v24 = *v23;
      v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF958A8, &unk_220DC33A0);
      v26 = v19;
      sub_220D18B04(&v23[*(v25 + 48)], v19, type metadata accessor for PrecipitationTotalStringAmount);
      sub_220D1E6A0(&v19[*(v10 + 20)], v9, type metadata accessor for PrecipitationTotalStringAmount.Format);
      if (swift_getEnumCaseMultiPayload() > 1)
      {
        v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95218, &qword_220DC1E50);
        v52 = v68;
        v53 = *(v67 + 8);
        v53(&v9[*(v51 + 48)], v68);
        v53(v9, v52);
        if (qword_280FA6600 != -1)
        {
          swift_once();
        }

        sub_220DBE240();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94FB8, &unk_220DC1E30);
        v54 = swift_allocObject();
        *(v54 + 16) = xmmword_220DC17C0;
        v55 = MEMORY[0x277D83C10];
        *(v54 + 56) = MEMORY[0x277D83B88];
        *(v54 + 64) = v55;
        *(v54 + 32) = 24;
        v56 = sub_220DC0810();
        PrecipitationTotalStringAmount.formatted(_:accessible:shouldAddLessThanSymbol:)(v56, 0, 1, v57, v58, v59, v60, v61, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78);
        v63 = v62;
        v65 = v64;

        *(v54 + 96) = MEMORY[0x277D837D0];
        *(v54 + 104) = sub_220CEFDB0();
        *(v54 + 72) = v63;
        *(v54 + 80) = v65;
        v44 = sub_220DC05F0();
      }

      else
      {
        v28 = v67;
        v27 = v68;
        (*(v67 + 32))(v5, v9, v68);
        sub_220DBE050();
        v30 = Double.pluralRuleInteger.getter(v29);
        (*(v28 + 8))(v5, v27);
        BYTE6(v70) = v24;
        sub_220D1E164();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94FB8, &unk_220DC1E30);
        v31 = swift_allocObject();
        *(v31 + 16) = xmmword_220DC1CC0;
        v32 = MEMORY[0x277D83B88];
        v33 = MEMORY[0x277D83C10];
        *(v31 + 56) = MEMORY[0x277D83B88];
        *(v31 + 64) = v33;
        *(v31 + 32) = v30;
        *(v31 + 96) = v32;
        *(v31 + 104) = v33;
        *(v31 + 72) = 24;
        v34 = sub_220DC0810();
        PrecipitationTotalStringAmount.formatted(_:accessible:shouldAddLessThanSymbol:)(v34, 0, 1, v35, v36, v37, v38, v39, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78);
        v41 = v40;
        v43 = v42;

        *(v31 + 136) = MEMORY[0x277D837D0];
        *(v31 + 144) = sub_220CEFDB0();
        *(v31 + 112) = v41;
        *(v31 + 120) = v43;
        v44 = sub_220DC05F0();
      }

      v48 = v26;
      break;
  }

  sub_220D18B64(v48, type metadata accessor for PrecipitationTotalStringAmount);
  return v44;
}

uint64_t sub_220D1D2A0(uint64_t a1, unsigned __int8 *a2)
{
  v4 = type metadata accessor for PrecipitationTotalStringAmount(0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v47[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v47[-1] - v9;
  v11 = type metadata accessor for PrecipitationTotalStringAmount.Format(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v47[-1] - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95208, &unk_220DC1E40);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v47[-1] - v18;
  v20 = *a2;
  sub_220D1E6A0(a1 + *(v4 + 20), v14, type metadata accessor for PrecipitationTotalStringAmount.Format);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v16 + 32))(v19, v14, v15);
    if (v20 == 6)
    {
      if (qword_280FA6600 != -1)
      {
        swift_once();
      }

      sub_220DBE240();
    }

    else
    {
      HIBYTE(v46) = v20;
      sub_220D1E3F4();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94FB8, &unk_220DC1E30);
    v30 = swift_allocObject();
    *(v30 + 16) = xmmword_220DC1CC0;
    sub_220DBE050();
    v31 = MEMORY[0x277D83A80];
    *(v30 + 56) = MEMORY[0x277D839F8];
    *(v30 + 64) = v31;
    *(v30 + 32) = v32;
    v33 = MEMORY[0x277D83C10];
    *(v30 + 96) = MEMORY[0x277D83B88];
    *(v30 + 104) = v33;
    *(v30 + 72) = 24;
    v34 = sub_220DC0810();
    PrecipitationTotalStringAmount.formatted(_:accessible:shouldAddLessThanSymbol:)(v34, 0, 0, v35, v36, v37, v38, v39, v46, v47[0], v47[1], v47[2], v47[3], v47[4], v47[5], v47[6], v47[7], v47[8], v47[9], v47[10]);
    v41 = v40;
    v43 = v42;

    *(v30 + 136) = MEMORY[0x277D837D0];
    *(v30 + 144) = sub_220CEFDB0();
    *(v30 + 112) = v41;
    *(v30 + 120) = v43;
    v44 = sub_220DC05F0();

    (*(v16 + 8))(v19, v15);
  }

  else
  {
    sub_220D18B64(v14, type metadata accessor for PrecipitationTotalStringAmount.Format);
    if (qword_27CF94F40 != -1)
    {
      swift_once();
    }

    v21 = sub_220DBF410();
    __swift_project_value_buffer(v21, qword_27CF95F48);
    sub_220D1E6A0(a1, v10, type metadata accessor for PrecipitationTotalStringAmount);
    v22 = sub_220DBF3F0();
    v23 = sub_220DC0980();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v47[0] = v25;
      *v24 = 136446210;
      sub_220D1E6A0(v10, v8, type metadata accessor for PrecipitationTotalStringAmount);
      v26 = sub_220DC0630();
      v28 = v27;
      sub_220D18B64(v10, type metadata accessor for PrecipitationTotalStringAmount);
      v29 = sub_220D3F210(v26, v28, v47);

      *(v24 + 4) = v29;
      _os_log_impl(&dword_220CD1000, v22, v23, "Trying to format string for 'less than' precipitation, but the format is not 'less than'; amount=%{public}s", v24, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v25);
      MEMORY[0x223D98FB0](v25, -1, -1);
      MEMORY[0x223D98FB0](v24, -1, -1);
    }

    else
    {

      sub_220D18B64(v10, type metadata accessor for PrecipitationTotalStringAmount);
    }

    return 0;
  }

  return v44;
}

uint64_t sub_220D1D7E0()
{
  if (qword_280FA6600 != -1)
  {
    swift_once();
  }

  sub_220DBE240();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94FB8, &unk_220DC1E30);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_220DC1CC0;
  v1 = MEMORY[0x277D83C10];
  *(v0 + 56) = MEMORY[0x277D83B88];
  *(v0 + 64) = v1;
  *(v0 + 32) = 24;
  v2 = sub_220DC0810();
  PrecipitationTotalStringAmount.formatted(_:accessible:shouldAddLessThanSymbol:)(v2, 0, 1, v3, v4, v5, v6, v7, 0x8000000220DD7C90, v27, v29, v31, v33, v35, v37, v39, v41, v43, vars0, vars8);
  v9 = v8;
  v11 = v10;

  v12 = MEMORY[0x277D837D0];
  *(v0 + 96) = MEMORY[0x277D837D0];
  v13 = sub_220CEFDB0();
  *(v0 + 104) = v13;
  *(v0 + 72) = v9;
  *(v0 + 80) = v11;
  v14 = sub_220DC0810();
  PrecipitationTotalStringAmount.formatted(_:accessible:shouldAddLessThanSymbol:)(v14, 0, 1, v15, v16, v17, v18, v19, v26, v28, v30, v32, v34, v36, v38, v40, v42, v44, vars0a, vars8a);
  v21 = v20;
  v23 = v22;

  *(v0 + 136) = v12;
  *(v0 + 144) = v13;
  *(v0 + 112) = v21;
  *(v0 + 120) = v23;
  v24 = sub_220DC05F0();

  return v24;
}

uint64_t sub_220D1D9A0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PrecipitationTotalStringAmount(0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v68 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v68 - v10;
  MEMORY[0x28223BE20](v9);
  v13 = &v68 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95210, &unk_220DC35F0);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v14 - 8);
  v18 = &v68 - v17;
  v19 = *(v4 + 20);
  v20 = *(v16 + 56);
  sub_220D1E6A0(a2 + v19, &v68 - v17, type metadata accessor for PrecipitationTotalStringAmount.Format);
  sub_220D1E6A0(a1 + v19, &v18[v20], type metadata accessor for PrecipitationTotalStringAmount.Format);
  type metadata accessor for PrecipitationTotalStringAmount.Format(0);
  LODWORD(v19) = swift_getEnumCaseMultiPayload();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (v19 == 1)
  {
    if (EnumCaseMultiPayload == 1)
    {
      if (qword_280FA6600 != -1)
      {
        swift_once();
      }

      sub_220DBE240();
      v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95208, &unk_220DC1E40);
      v23 = *(*(v22 - 8) + 8);
      v23(&v18[v20], v22);
      v23(v18, v22);
      goto LABEL_14;
    }

    if (qword_280FA6600 != -1)
    {
      swift_once();
    }

    sub_220DBE240();
    v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95208, &unk_220DC1E40);
    (*(*(v26 - 8) + 8))(v18, v26);
    v25 = &v18[v20];
LABEL_13:
    sub_220D18B64(v25, type metadata accessor for PrecipitationTotalStringAmount.Format);
LABEL_14:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94FB8, &unk_220DC1E30);
    v27 = swift_allocObject();
    *(v27 + 16) = xmmword_220DC1CC0;
    v28 = MEMORY[0x277D83C10];
    *(v27 + 56) = MEMORY[0x277D83B88];
    *(v27 + 64) = v28;
    *(v27 + 32) = 24;
    v29 = sub_220DC0810();
    PrecipitationTotalStringAmount.formatted(_:accessible:shouldAddLessThanSymbol:)(v29, 0, 0, v30, v31, v32, v33, v34, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79);
    v36 = v35;
    v38 = v37;

    v39 = MEMORY[0x277D837D0];
    *(v27 + 96) = MEMORY[0x277D837D0];
    v40 = sub_220CEFDB0();
    *(v27 + 104) = v40;
    *(v27 + 72) = v36;
    *(v27 + 80) = v38;
    v41 = sub_220DC0810();
    PrecipitationTotalStringAmount.formatted(_:accessible:shouldAddLessThanSymbol:)(v41, 0, 0, v42, v43, v44, v45, v46, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79);
    v48 = v47;
    v50 = v49;

    *(v27 + 136) = v39;
    *(v27 + 144) = v40;
    *(v27 + 112) = v48;
    *(v27 + 120) = v50;
    v51 = sub_220DC05F0();

    return v51;
  }

  if (EnumCaseMultiPayload == 1)
  {
    if (qword_280FA6600 != -1)
    {
      swift_once();
    }

    sub_220DBE240();
    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95208, &unk_220DC1E40);
    (*(*(v24 - 8) + 8))(&v18[v20], v24);
    v25 = v18;
    goto LABEL_13;
  }

  if (qword_27CF94F40 != -1)
  {
    swift_once();
  }

  v52 = sub_220DBF410();
  __swift_project_value_buffer(v52, qword_27CF95F48);
  sub_220D1E6A0(a2, v13, type metadata accessor for PrecipitationTotalStringAmount);
  sub_220D1E6A0(a1, v11, type metadata accessor for PrecipitationTotalStringAmount);
  v53 = sub_220DBF3F0();
  v54 = sub_220DC0980();
  if (os_log_type_enabled(v53, v54))
  {
    v55 = swift_slowAlloc();
    HIDWORD(v69) = v54;
    v56 = v55;
    v70 = swift_slowAlloc();
    v71 = v70;
    *v56 = 136446466;
    sub_220D1E6A0(v13, v8, type metadata accessor for PrecipitationTotalStringAmount);
    v57 = sub_220DC0630();
    v59 = v58;
    v68 = v53;
    sub_220D18B64(v13, type metadata accessor for PrecipitationTotalStringAmount);
    v60 = sub_220D3F210(v57, v59, &v71);

    *(v56 + 4) = v60;
    *(v56 + 12) = 2082;
    sub_220D1E6A0(v11, v8, type metadata accessor for PrecipitationTotalStringAmount);
    v61 = sub_220DC0630();
    v63 = v62;
    sub_220D18B64(v11, type metadata accessor for PrecipitationTotalStringAmount);
    v64 = sub_220D3F210(v61, v63, &v71);

    *(v56 + 14) = v64;
    v65 = v68;
    _os_log_impl(&dword_220CD1000, v68, BYTE4(v69), "Trying to format string for 'less than' precipitation, but the format is not 'less than'; snowfallAmount=%{public}s, precipitationAmount=%{public}s", v56, 0x16u);
    v66 = v70;
    swift_arrayDestroy();
    MEMORY[0x223D98FB0](v66, -1, -1);
    MEMORY[0x223D98FB0](v56, -1, -1);
  }

  else
  {

    sub_220D18B64(v11, type metadata accessor for PrecipitationTotalStringAmount);
    sub_220D18B64(v13, type metadata accessor for PrecipitationTotalStringAmount);
  }

  sub_220D18C1C(v18);
  return 0;
}

uint64_t sub_220D1E164()
{
  switch(*v0)
  {
    case 1:
      if (qword_280FA6600 != -1)
      {
        goto LABEL_12;
      }

      break;
    case 2:
      if (qword_280FA6600 != -1)
      {
        goto LABEL_12;
      }

      break;
    case 3:
      if (qword_280FA6600 != -1)
      {
        goto LABEL_12;
      }

      break;
    case 4:
      if (qword_280FA6600 != -1)
      {
        goto LABEL_12;
      }

      break;
    default:
      if (qword_280FA6600 != -1)
      {
LABEL_12:
        swift_once();
      }

      break;
  }

  return sub_220DBE240();
}

uint64_t sub_220D1E3F4()
{
  switch(*v0)
  {
    case 1:
      if (qword_280FA6600 != -1)
      {
        goto LABEL_12;
      }

      break;
    case 2:
      if (qword_280FA6600 != -1)
      {
        goto LABEL_12;
      }

      break;
    case 3:
      if (qword_280FA6600 != -1)
      {
        goto LABEL_12;
      }

      break;
    case 4:
      if (qword_280FA6600 != -1)
      {
        goto LABEL_12;
      }

      break;
    default:
      if (qword_280FA6600 != -1)
      {
LABEL_12:
        swift_once();
      }

      break;
  }

  return sub_220DBE240();
}

uint64_t sub_220D1E6A0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  OUTLINED_FUNCTION_6(v5);
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t sub_220D1E700()
{
  result = type metadata accessor for PrecipitationPlatterPrecipitationKind();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
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

uint64_t sub_220D1E780(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 33))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 32);
      if (v3 <= 1)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_220D1E7C0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

uint64_t sub_220D1E824()
{
  result = sub_220DBFEE0();
  qword_27CF95928 = result;
  unk_27CF95930 = 0;
  qword_27CF95938 = 0;
  unk_27CF95940 = 0;
  return result;
}

uint64_t ShadowModel.init(color:radius:x:y:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>, double a5@<D2>)
{
  *a2 = result;
  *(a2 + 8) = a3;
  *(a2 + 16) = a4;
  *(a2 + 24) = a5;
  return result;
}

uint64_t static ShadowModel.clear.getter()
{
  if (qword_27CF94F30 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_0_8(&qword_27CF95928);
}

double sub_220D1E8C8()
{
  sub_220DBFED0();
  v0 = sub_220DBFF10();

  qword_27CF95948 = v0;
  result = 5.0;
  *algn_27CF95950 = xmmword_220DC3730;
  qword_27CF95960 = 0x4000000000000000;
  return result;
}

uint64_t static ShadowModel.text.getter()
{
  if (qword_27CF94F38 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_0_8(&qword_27CF95948);
}

BOOL static ShadowModel.== infix(_:_:)(double *a1, double *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = *a2;
  v7 = a2[1];
  v8 = a2[2];
  v9 = a2[3];
  v10 = sub_220DBFE90();
  result = 0;
  if ((v10 & 1) != 0 && v3 == v7 && v4 == v8)
  {
    return v5 == v9;
  }

  return result;
}

uint64_t sub_220D1EA54(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ChartLineStrokeStyle(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_220D1EAE0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ChartLineStrokeStyle(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t ChartLineStyle.lineThickness.setter(double a1)
{
  result = OUTLINED_FUNCTION_3_12();
  *(v1 + v4) = a1;
  return result;
}

uint64_t ChartLineStyle.lineThickness.modify()
{
  v0 = OUTLINED_FUNCTION_2_9();
  v1 = *(type metadata accessor for ChartLineStyle(v0) + 20);
  return OUTLINED_FUNCTION_7_8();
}

uint64_t ChartLineStyle.lineColor.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for ChartLineStyle(0) + 24);
  v4 = *v3;
  v5 = *(v3 + 8);
  v6 = *(v3 + 16);
  v7 = *(v3 + 24);
  *a1 = *v3;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;

  return sub_220D1EC60(v4, v5, v6, v7);
}

uint64_t sub_220D1EC60(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
  }

  else
  {
  }
}

__n128 ChartLineStyle.lineColor.setter(__n128 *a1)
{
  v6 = *a1;
  v2 = a1[1].n128_u64[0];
  v3 = a1[1].n128_u8[8];
  v4 = v1 + *(type metadata accessor for ChartLineStyle(0) + 24);
  sub_220D1ECD8(*v4, *(v4 + 8), *(v4 + 16), *(v4 + 24));
  result = v6;
  *v4 = v6;
  *(v4 + 16) = v2;
  *(v4 + 24) = v3;
  return result;
}

uint64_t sub_220D1ECD8(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
  }

  else
  {
  }
}

uint64_t ChartLineStyle.lineColor.modify()
{
  v0 = OUTLINED_FUNCTION_2_9();
  v1 = *(type metadata accessor for ChartLineStyle(v0) + 24);
  return OUTLINED_FUNCTION_7_8();
}

uint64_t ChartLineStyle.lineDash.getter()
{
  v1 = *(v0 + *(type metadata accessor for ChartLineStyle(0) + 28));
}

uint64_t ChartLineStyle.lineDash.setter()
{
  v2 = OUTLINED_FUNCTION_2_9();
  v3 = *(type metadata accessor for ChartLineStyle(v2) + 28);
  v4 = *(v1 + v3);

  *(v1 + v3) = v0;
  return result;
}

uint64_t ChartLineStyle.lineDash.modify()
{
  v0 = OUTLINED_FUNCTION_2_9();
  v1 = *(type metadata accessor for ChartLineStyle(v0) + 28);
  return OUTLINED_FUNCTION_7_8();
}

uint64_t ChartLineStyle.areaStyle.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for ChartLineStyle(0) + 32));
  v4 = v3[1];
  *a1 = *v3;
  a1[1] = v4;
}

__n128 ChartLineStyle.areaStyle.setter()
{
  v2 = OUTLINED_FUNCTION_2_9();
  v3 = (v1 + *(type metadata accessor for ChartLineStyle(v2) + 32));
  v4 = *v3;

  result = *v0;
  v6 = *(v0 + 16);
  *v3 = *v0;
  *(v3 + 1) = v6;
  return result;
}

uint64_t ChartLineStyle.areaStyle.modify()
{
  v0 = OUTLINED_FUNCTION_2_9();
  v1 = *(type metadata accessor for ChartLineStyle(v0) + 32);
  return OUTLINED_FUNCTION_7_8();
}

__n128 ChartLineStyle.init(strokeStyle:lineThickness:lineColor:lineDash:opacity:opacityIncreasedContrast:areaStyle:)@<Q0>(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X8>, double a8@<D0>, double a9@<D1>)
{
  v25 = *a2;
  v16 = *(a2 + 2);
  v17 = *(a2 + 24);
  v18 = type metadata accessor for ChartLineStyle(0);
  v19 = (a7 + v18[8]);
  *v19 = 0u;
  v19[1] = 0u;
  v20 = a7 + v18[10];
  sub_220D1EFBC(a1, a7);
  *(a7 + v18[5]) = a8;
  v21 = a7 + v18[6];
  *v21 = v25;
  *(v21 + 16) = v16;
  *(v21 + 24) = v17;
  *(a7 + v18[7]) = a3;
  *(a7 + v18[9]) = a9;
  *v20 = a4;
  *(v20 + 8) = a5 & 1;
  v22 = *v19;

  result = *a6;
  v24 = *(a6 + 16);
  *v19 = *a6;
  v19[1] = v24;
  return result;
}

uint64_t sub_220D1EFBC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ChartLineStrokeStyle(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

double ChartLineStyle.opacity(for:)(uint64_t a1)
{
  v3 = sub_220DBFA30();
  v4 = OUTLINED_FUNCTION_0(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v10, a1, v3);
  v11 = (*(v6 + 88))(v10, v3);
  if (v11 == *MEMORY[0x277CE0210])
  {
    v12 = type metadata accessor for ChartLineStyle(0);
  }

  else
  {
    v14 = v11;
    v15 = *MEMORY[0x277CE0220];
    v12 = type metadata accessor for ChartLineStyle(0);
    if (v14 != v15)
    {
      v13 = *(v1 + *(v12 + 36));
      (*(v6 + 8))(v10, v3);
      return v13;
    }

    v16 = (v1 + *(v12 + 40));
    if ((v16[8] & 1) == 0)
    {
      return *v16;
    }
  }

  return *(v1 + *(v12 + 36));
}

__n128 ChartLineStyle.with(lineThickness:lineDash:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  sub_220D1EA54(v3, a2);
  v7 = type metadata accessor for ChartLineStyle(0);
  v8 = v3 + v7[6];
  v10 = *v8;
  v9 = *(v8 + 8);
  v11 = *(v8 + 16);
  v12 = *(v8 + 24);
  v13 = v7[8];
  v14 = *(v3 + v7[9]);
  v15 = v3 + v7[10];
  v16 = *v15;
  LOBYTE(v15) = *(v15 + 8);
  v17 = (v3 + v13);
  v18 = (a2 + v13);
  *v18 = 0u;
  v18[1] = 0u;
  v19 = v7[10];
  *(a2 + v7[5]) = a3;
  v20 = a2 + v7[6];
  *v20 = v10;
  *(v20 + 8) = v9;
  *(v20 + 16) = v11;
  *(v20 + 24) = v12;
  *(a2 + v7[7]) = a1;
  *(a2 + v7[9]) = v14;
  v21 = a2 + v19;
  *v21 = v16;
  *(v21 + 8) = v15;
  v22 = v18->n128_u64[0];
  v24 = v17[1];
  v25 = *v17;
  sub_220D1EC60(v10, v9, v11, v12);

  result = v25;
  *v18 = v25;
  v18[1] = v24;
  return result;
}

uint64_t static ChartLineStyle.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((static ChartLineStrokeStyle.== infix(_:_:)(a1, a2) & 1) == 0)
  {
    return 0;
  }

  v4 = OUTLINED_FUNCTION_3_12();
  if (*(a1 + v5) != *(a2 + v5))
  {
    return 0;
  }

  v6 = a1 + *(v4 + 24);
  v7 = *(v6 + 8);
  v8 = *(v6 + 16);
  v9 = *(v6 + 24);
  v55[0] = *v6;
  v55[1] = v7;
  v55[2] = v8;
  v56 = v9;
  v10 = a2 + *(v4 + 24);
  v51 = v4;
  v11 = *(v10 + 8);
  v12 = *(v10 + 16);
  v13 = *(v10 + 24);
  v53[0] = *v10;
  v53[1] = v11;
  v53[2] = v12;
  v54 = v13;
  v14 = OUTLINED_FUNCTION_5_8();
  sub_220D1EC60(v14, v15, v16, v17);
  v18 = OUTLINED_FUNCTION_4_9();
  sub_220D1EC60(v18, v19, v20, v21);
  v52 = static ChartLineColor.== infix(_:_:)(v55, v53);
  v22 = OUTLINED_FUNCTION_4_9();
  sub_220D1ECD8(v22, v23, v24, v25);
  v26 = OUTLINED_FUNCTION_5_8();
  sub_220D1ECD8(v26, v27, v28, v29);
  if ((v52 & 1) == 0 || (sub_220D016E8(*(a1 + v51[7]), *(a2 + v51[7])) & 1) == 0)
  {
    return 0;
  }

  v30 = v51[8];
  v31 = (a1 + v30);
  v32 = *(a1 + v30);
  v33 = (a2 + v30);
  v34 = *v33;
  if (!v32)
  {
    if (v34 == 0.0)
    {

      goto LABEL_20;
    }

    v45 = *v33;
LABEL_18:

    return 0;
  }

  if (v34 == 0.0)
  {
    goto LABEL_18;
  }

  v35 = v31[1];
  v36 = v31[2];
  v37 = v31[3];
  v38 = v33[1];
  v39 = v33[2];
  v40 = v33[3];
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();
  v41 = MEMORY[0x223D97D10](v32, *&v34);
  swift_bridgeObjectRelease_n();
  swift_bridgeObjectRelease_n();
  result = 0;
  if (v41)
  {
    v43 = v35 == v38 && v36 == v39;
    if (v43 && v37 == v40)
    {
LABEL_20:
      if (*(a1 + v51[9]) == *(a2 + v51[9]))
      {
        v46 = v51[10];
        v47 = (a1 + v46);
        v48 = *(a1 + v46 + 8);
        v49 = (a2 + v46);
        v50 = *(a2 + v46 + 8);
        if (v48)
        {
          if ((v50 & 1) == 0)
          {
            return 0;
          }
        }

        else
        {
          if (*v47 != *v49)
          {
            v50 = 1;
          }

          if (v50)
          {
            return 0;
          }
        }

        return 1;
      }

      return 0;
    }
  }

  return result;
}

uint64_t static ChartLineStrokeStyle.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v36 = sub_220DBE560();
  v4 = OUTLINED_FUNCTION_0(v36);
  v6 = v5;
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v4);
  v11 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v35 - v12;
  v14 = type metadata accessor for ChartLineStrokeStyle(0);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v35 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v35 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95968, &qword_220DC37B0);
  v22 = *(*(v21 - 8) + 64);
  v23 = MEMORY[0x28223BE20](v21 - 8);
  v25 = &v35 - v24;
  v26 = *(v23 + 56);
  sub_220D1EA54(a1, &v35 - v24);
  sub_220D1EA54(a2, &v25[v26]);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    sub_220D1EA54(v25, v20);
    if (!swift_getEnumCaseMultiPayload())
    {
      v33 = v36;
      (*(v6 + 32))(v13, &v25[v26], v36);
      v29 = sub_220DBE460();
      v30 = *(v6 + 8);
      v30(v13, v33);
      v31 = v20;
      v32 = v33;
      goto LABEL_12;
    }

    v18 = v20;
    goto LABEL_7;
  }

  if (EnumCaseMultiPayload == 1)
  {
    sub_220D1EA54(v25, v18);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v28 = v36;
      (*(v6 + 32))(v11, &v25[v26], v36);
      v29 = sub_220DBE460();
      v30 = *(v6 + 8);
      v30(v11, v28);
      v31 = v18;
      v32 = v28;
LABEL_12:
      v30(v31, v32);
      sub_220D1FB10(v25);
      return v29 & 1;
    }

LABEL_7:
    (*(v6 + 8))(v18, v36);
LABEL_10:
    sub_220D1FAA8(v25);
    v29 = 0;
    return v29 & 1;
  }

  if (swift_getEnumCaseMultiPayload() != 2)
  {
    goto LABEL_10;
  }

  sub_220D1FB10(v25);
  v29 = 1;
  return v29 & 1;
}

uint64_t static ChartLineColor.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = *(a1 + 1);
  v5 = *(a1 + 24);
  v7 = *a2;
  v6 = *(a2 + 1);
  v8 = *(a2 + 2);
  v9 = *(a2 + 24);
  if (v5)
  {
    if (a2[3])
    {
      v10 = OUTLINED_FUNCTION_1_12();
      sub_220D1EC60(v10, v11, v12, 1);
      v13 = OUTLINED_FUNCTION_0_9();
      sub_220D1EC60(v13, v14, v15, 1);
      v16 = sub_220DBFE90();
      v17 = OUTLINED_FUNCTION_1_12();
      sub_220D1ECD8(v17, v18, v19, 1);
      v20 = OUTLINED_FUNCTION_0_9();
      sub_220D1ECD8(v20, v21, v22, 1);
      return v16 & 1;
    }

    goto LABEL_5;
  }

  if (a2[3])
  {
LABEL_5:
    v24 = OUTLINED_FUNCTION_1_12();
    sub_220D1EC60(v24, v25, v26, v5);
    v27 = OUTLINED_FUNCTION_0_9();
    sub_220D1EC60(v27, v28, v29, v9);
    v30 = OUTLINED_FUNCTION_1_12();
    sub_220D1ECD8(v30, v31, v32, v5);
    v33 = OUTLINED_FUNCTION_0_9();
    sub_220D1ECD8(v33, v34, v35, v9);
    return 0;
  }

  v4 = *(a1 + 2);
  v36 = a1[1];
  v37 = a2[1];
  v38 = a2[2];
  v39 = OUTLINED_FUNCTION_0_9();
  sub_220D1EC60(v39, v40, v41, 0);
  v42 = OUTLINED_FUNCTION_1_12();
  sub_220D1EC60(v42, v43, v44, 0);
  v45 = OUTLINED_FUNCTION_1_12();
  sub_220D1EC60(v45, v46, v47, 0);
  v48 = OUTLINED_FUNCTION_0_9();
  sub_220D1EC60(v48, v49, v50, 0);
  v51 = MEMORY[0x223D97D10](*&v3, *&v7);
  v52 = OUTLINED_FUNCTION_1_12();
  sub_220D1ECD8(v52, v53, v54, 0);
  v55 = OUTLINED_FUNCTION_0_9();
  sub_220D1ECD8(v55, v56, v57, 0);
  v58 = OUTLINED_FUNCTION_0_9();
  sub_220D1ECD8(v58, v59, v60, 0);
  v61 = OUTLINED_FUNCTION_1_12();
  sub_220D1ECD8(v61, v62, v63, 0);
  if (v4 == v8)
  {
    return v51 & (v2 == v6);
  }

  else
  {
    return 0;
  }
}

uint64_t ChartAreaStyle.gradient.getter@<X0>(uint64_t a1@<X8>)
{
  *a1 = *v1;
  *(a1 + 8) = *(v1 + 8);
}

uint64_t ChartAreaStyle.gradient.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = *v1;

  *v1 = v2;
  v1[1] = v3;
  v1[2] = v4;
  return result;
}

uint64_t ChartAreaStyle.init(gradient:opacity:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  *a2 = *result;
  *(a2 + 8) = *(result + 8);
  *(a2 + 24) = a3;
  return result;
}

BOOL static ChartAreaStyle.== infix(_:_:)(double *a1, double *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = *a2;
  v7 = a2[1];
  v8 = a2[2];
  v9 = a2[3];

  v10 = MEMORY[0x223D97D10](*&v2, *&v6);

  result = 0;
  if ((v10 & 1) != 0 && v3 == v7 && v4 == v8)
  {
    return v5 == v9;
  }

  return result;
}

uint64_t sub_220D1FAA8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95968, &qword_220DC37B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_220D1FB10(uint64_t a1)
{
  v2 = type metadata accessor for ChartLineStrokeStyle(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_220D1FB98()
{
  type metadata accessor for ChartLineStrokeStyle(319);
  if (v0 <= 0x3F)
  {
    sub_220D1FCC8(319, &qword_27CF95980, MEMORY[0x277D85048], MEMORY[0x277D83940]);
    if (v1 <= 0x3F)
    {
      sub_220D1FCC8(319, &qword_27CF95988, &type metadata for ChartAreaStyle, MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        sub_220D1FCC8(319, &qword_280FA77C8, MEMORY[0x277D839F8], MEMORY[0x277D83D88]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_220D1FCC8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_220D1FD18()
{
  sub_220D1FD8C();
  if (v0 <= 0x3F)
  {
    sub_220DBE560();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_220D1FD8C()
{
  if (!qword_27CF959A0)
  {
    v0 = sub_220DBE560();
    if (!v1)
    {
      atomic_store(v0, &qword_27CF959A0);
    }
  }
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_220D1FDF4(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 25))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 24);
      if (v3 <= 1)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_220D1FE34(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 24) = -a2;
    }
  }

  return result;
}

uint64_t UVIndexComponentDescriptionContext.currentWeather.getter()
{
  OUTLINED_FUNCTION_3();
  v2 = sub_220DBEAD0();
  v3 = OUTLINED_FUNCTION_6(v2);
  v5 = *(v4 + 16);

  return v5(v0, v1, v3);
}

uint64_t UVIndexComponentDescriptionContext.dailyForecast.getter()
{
  OUTLINED_FUNCTION_3();
  v0 = *(type metadata accessor for UVIndexComponentDescriptionContext() + 20);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95798, &unk_220DC3040);
  OUTLINED_FUNCTION_6(v1);
  v3 = *(v2 + 16);
  v4 = OUTLINED_FUNCTION_2_10();

  return v5(v4);
}

uint64_t UVIndexComponentDescriptionContext.hourlyForecast.getter()
{
  OUTLINED_FUNCTION_3();
  v0 = *(type metadata accessor for UVIndexComponentDescriptionContext() + 24);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95270, &unk_220DC3AF0);
  OUTLINED_FUNCTION_6(v1);
  v3 = *(v2 + 16);
  v4 = OUTLINED_FUNCTION_2_10();

  return v5(v4);
}

uint64_t UVIndexComponentDescriptionContext.timeZone.getter()
{
  OUTLINED_FUNCTION_3();
  v0 = *(type metadata accessor for UVIndexComponentDescriptionContext() + 28);
  v1 = sub_220DBE740();
  OUTLINED_FUNCTION_6(v1);
  v3 = *(v2 + 16);
  v4 = OUTLINED_FUNCTION_2_10();

  return v5(v4);
}

uint64_t sub_220D2007C()
{
  v1 = type metadata accessor for PrecipitationTotalStringAmount(0);
  v2 = *(*(v1 - 8) + 64);
  v3 = MEMORY[0x28223BE20](v1 - 8);
  v5 = &v35[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v3);
  v7 = &v35[-v6];
  v8 = type metadata accessor for PrecipitationPlatterPrecipitationKind();
  v9 = OUTLINED_FUNCTION_6(v8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v35[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v12);
  v16 = &v35[-v15];
  v17 = type metadata accessor for PrecipitationPlatterYesterdaySentence();
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v20 = &v35[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_220D21EF0(v0, v20, type metadata accessor for PrecipitationPlatterYesterdaySentence);
  if (__swift_getEnumTagSinglePayload(v20, 1, v8) == 1)
  {
    return sub_220D20404();
  }

  sub_220D18B04(v20, v16, type metadata accessor for PrecipitationPlatterPrecipitationKind);
  sub_220D21EF0(v16, v14, type metadata accessor for PrecipitationPlatterPrecipitationKind);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v31 = *v14;
      v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF958A8, &unk_220DC33A0);
      OUTLINED_FUNCTION_2_11(v32);
      v37 = v31;
      sub_220D20B34(&v37, v7);
      goto LABEL_9;
    case 2u:
      v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF958A0, &unk_220DC35E0);
      OUTLINED_FUNCTION_1_13(v23);
      sub_220D18B04(v14, v7, v24);
      sub_220D18B04(&v20[v14], v5, v8);
      sub_220D21270();
      goto LABEL_7;
    case 3u:
      v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF958A0, &unk_220DC35E0);
      OUTLINED_FUNCTION_1_13(v25);
      sub_220D18B04(v14, v7, v26);
      sub_220D18B04(&v20[v14], v5, v8);
      sub_220D21410(v7, v5);
LABEL_7:
      OUTLINED_FUNCTION_0_10();
      v28 = v27;
      sub_220D21E98(v5, v27);
      v29 = v7;
      v30 = v28;
      break;
    default:
      v21 = *v14;
      v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF958A8, &unk_220DC33A0);
      OUTLINED_FUNCTION_2_11(v22);
      v36 = v21;
      sub_220D20794(&v36, v7);
LABEL_9:
      OUTLINED_FUNCTION_0_10();
      v30 = v33;
      v29 = v7;
      break;
  }

  sub_220D21E98(v29, v30);
  sub_220D21E98(v16, type metadata accessor for PrecipitationPlatterPrecipitationKind);
  return v0;
}

uint64_t type metadata accessor for PrecipitationPlatterYesterdaySentence()
{
  result = qword_27CF959A8;
  if (!qword_27CF959A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_220D20404()
{
  v0 = sub_220DBE5E0();
  v21 = *(v0 - 8);
  v22 = v0;
  v1 = *(v21 + 64);
  MEMORY[0x28223BE20](v0);
  v3 = &v19 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_220DC0460();
  v4 = *(v19 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v19);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95208, &unk_220DC1E40);
  v8 = *(v20 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v20);
  v11 = &v19 - v10;
  v12 = [objc_opt_self() centimeters];
  sub_220CDB190();
  sub_220DBE040();
  if (qword_280FA6600 != -1)
  {
    swift_once();
  }

  sub_220DBE240();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94FB8, &unk_220DC1E30);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_220DC17A0;
  sub_220DBF100();
  sub_220DBF0D0();
  sub_220DBE580();
  sub_220DBE0F0();

  (*(v21 + 8))(v3, v22);
  v14 = sub_220DC0440();
  v16 = v15;
  (*(v4 + 8))(v7, v19);
  *(v13 + 56) = MEMORY[0x277D837D0];
  *(v13 + 64) = sub_220CEFDB0();
  *(v13 + 32) = v14;
  *(v13 + 40) = v16;
  v17 = sub_220DC05F0();

  (*(v8 + 8))(v11, v20);
  return v17;
}

uint64_t sub_220D20B34(unsigned __int8 *a1, uint64_t a2)
{
  v4 = type metadata accessor for PrecipitationTotalStringAmount(0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v47 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = &v46 - v8;
  v10 = type metadata accessor for PrecipitationTotalStringAmount.Format(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95208, &unk_220DC1E40);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v46 - v17;
  v19 = *a1;
  v20 = *(v4 + 20);
  v48 = a2;
  sub_220D21EF0(a2 + v20, v13, type metadata accessor for PrecipitationTotalStringAmount.Format);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v15 + 32))(v18, v13, v14);
    v21 = v15;
    switch(v19)
    {
      case 1:
        if (qword_280FA6600 != -1)
        {
          goto LABEL_22;
        }

        goto LABEL_19;
      case 2:
        if (qword_280FA6600 == -1)
        {
          goto LABEL_19;
        }

        goto LABEL_22;
      case 3:
        if (qword_280FA6600 == -1)
        {
          goto LABEL_19;
        }

        goto LABEL_22;
      case 4:
        if (qword_280FA6600 == -1)
        {
          goto LABEL_19;
        }

        goto LABEL_22;
      case 5:
        if (qword_280FA6600 == -1)
        {
          goto LABEL_19;
        }

LABEL_22:
        swift_once();
LABEL_19:
        sub_220DBE240();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94FB8, &unk_220DC1E30);
        v32 = swift_allocObject();
        *(v32 + 16) = xmmword_220DC17C0;
        sub_220DBE050();
        v33 = MEMORY[0x277D83A80];
        *(v32 + 56) = MEMORY[0x277D839F8];
        *(v32 + 64) = v33;
        *(v32 + 32) = v34;
        v35 = sub_220DC0810();
        PrecipitationTotalStringAmount.formatted(_:accessible:shouldAddLessThanSymbol:)(v35, 0, 0, v36, v37, v38, v39, v40, v46, v47, v48, v49[0], v49[1], v49[2], v49[3], v49[4], v49[5], v49[6], v49[7], v49[8]);
        v42 = v41;
        v44 = v43;

        *(v32 + 96) = MEMORY[0x277D837D0];
        *(v32 + 104) = sub_220CEFDB0();
        *(v32 + 72) = v42;
        *(v32 + 80) = v44;
        v22 = sub_220DC05F0();

        break;
      default:
        v22 = sub_220D20404();
        break;
    }

    (*(v21 + 8))(v18, v14);
  }

  else
  {
    sub_220D21E98(v13, type metadata accessor for PrecipitationTotalStringAmount.Format);
    if (qword_27CF94F40 != -1)
    {
      swift_once();
    }

    v23 = sub_220DBF410();
    __swift_project_value_buffer(v23, qword_27CF95F48);
    sub_220D21EF0(v48, v9, type metadata accessor for PrecipitationTotalStringAmount);
    v24 = sub_220DBF3F0();
    v25 = sub_220DC0980();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v49[0] = v27;
      *v26 = 136446210;
      sub_220D21EF0(v9, v47, type metadata accessor for PrecipitationTotalStringAmount);
      v28 = sub_220DC0630();
      v30 = v29;
      sub_220D21E98(v9, type metadata accessor for PrecipitationTotalStringAmount);
      v31 = sub_220D3F210(v28, v30, v49);

      *(v26 + 4) = v31;
      _os_log_impl(&dword_220CD1000, v24, v25, "Trying to format string for 'less than' precipitation, but the format is not 'less than'; amount=%{public}s", v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v27);
      MEMORY[0x223D98FB0](v27, -1, -1);
      MEMORY[0x223D98FB0](v26, -1, -1);
    }

    else
    {

      sub_220D21E98(v9, type metadata accessor for PrecipitationTotalStringAmount);
    }

    return 0;
  }

  return v22;
}

uint64_t sub_220D21270()
{
  if (qword_280FA6600 != -1)
  {
    swift_once();
  }

  sub_220DBE240();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94FB8, &unk_220DC1E30);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_220DC17C0;
  v1 = sub_220DC0810();
  PrecipitationTotalStringAmount.formatted(_:accessible:shouldAddLessThanSymbol:)(v1, 0, 1, v2, v3, v4, v5, v6, 0x8000000220DD9360, v26, v28, v30, v32, v34, v36, v38, v40, v42, vars0, vars8);
  v8 = v7;
  v10 = v9;

  v11 = MEMORY[0x277D837D0];
  *(v0 + 56) = MEMORY[0x277D837D0];
  v12 = sub_220CEFDB0();
  *(v0 + 64) = v12;
  *(v0 + 32) = v8;
  *(v0 + 40) = v10;
  v13 = sub_220DC0810();
  PrecipitationTotalStringAmount.formatted(_:accessible:shouldAddLessThanSymbol:)(v13, 0, 1, v14, v15, v16, v17, v18, v25, v27, v29, v31, v33, v35, v37, v39, v41, v43, vars0a, vars8a);
  v20 = v19;
  v22 = v21;

  *(v0 + 96) = v11;
  *(v0 + 104) = v12;
  *(v0 + 72) = v20;
  *(v0 + 80) = v22;
  v23 = sub_220DC05F0();

  return v23;
}

uint64_t sub_220D21410(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PrecipitationTotalStringAmount(0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v98 = &v98 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v106 = &v98 - v9;
  MEMORY[0x28223BE20](v8);
  v102 = &v98 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95208, &unk_220DC1E40);
  v104 = *(v11 - 8);
  v105 = v11;
  v12 = *(v104 + 64);
  MEMORY[0x28223BE20](v11);
  v103 = &v98 - v13;
  v14 = type metadata accessor for PrecipitationTotalStringAmount.Format(0);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v98 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v98 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95210, &unk_220DC35F0);
  v22 = v21 - 8;
  v23 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21);
  v25 = &v98 - v24;
  v26 = sub_220DC0810();
  PrecipitationTotalStringAmount.formatted(_:accessible:shouldAddLessThanSymbol:)(v26, 0, 0, v27, v28, v29, v30, v31, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109);
  v101 = v32;
  v108 = v33;

  v34 = sub_220DC0810();
  PrecipitationTotalStringAmount.formatted(_:accessible:shouldAddLessThanSymbol:)(v34, 0, 0, v35, v36, v37, v38, v39, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109);
  v100 = v40;
  v107 = v41;

  v99 = v4;
  v42 = *(v4 + 20);
  v43 = *(v22 + 56);
  sub_220D21EF0(a2 + v42, v25, type metadata accessor for PrecipitationTotalStringAmount.Format);
  sub_220D21EF0(a1 + v42, &v25[v43], type metadata accessor for PrecipitationTotalStringAmount.Format);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_220D21EF0(v25, v20, type metadata accessor for PrecipitationTotalStringAmount.Format);
      v45 = swift_getEnumCaseMultiPayload();
      v47 = v103;
      v46 = v104;
      v48 = v105;
      (*(v104 + 32))(v103, v20, v105);
      if (v45 != 1)
      {
        if (qword_280FA6600 != -1)
        {
          swift_once();
        }

        sub_220DBE240();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94FB8, &unk_220DC1E30);
        v70 = swift_allocObject();
        *(v70 + 16) = xmmword_220DC1CC0;
        sub_220DBE050();
        v71 = MEMORY[0x277D83A80];
        *(v70 + 56) = MEMORY[0x277D839F8];
        *(v70 + 64) = v71;
        *(v70 + 32) = v72;
        v73 = MEMORY[0x277D837D0];
        *(v70 + 96) = MEMORY[0x277D837D0];
        v74 = sub_220CEFDB0();
        v75 = v108;
        *(v70 + 72) = v101;
        *(v70 + 80) = v75;
        *(v70 + 136) = v73;
        *(v70 + 144) = v74;
        v76 = v100;
        *(v70 + 104) = v74;
        *(v70 + 112) = v76;
        *(v70 + 120) = v107;
        v56 = sub_220DC05F0();

        (*(v46 + 8))(v47, v48);
        sub_220D21E98(&v25[v43], type metadata accessor for PrecipitationTotalStringAmount.Format);
        v69 = v25;
        goto LABEL_16;
      }

      if (qword_280FA6600 != -1)
      {
        swift_once();
      }

      sub_220DBE240();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94FB8, &unk_220DC1E30);
      v49 = swift_allocObject();
      *(v49 + 16) = xmmword_220DC1CC0;
      sub_220DBE050();
      v50 = MEMORY[0x277D83A80];
      *(v49 + 56) = MEMORY[0x277D839F8];
      *(v49 + 64) = v50;
      *(v49 + 32) = v51;
      v52 = MEMORY[0x277D837D0];
      *(v49 + 96) = MEMORY[0x277D837D0];
      v53 = sub_220CEFDB0();
      v54 = v108;
      *(v49 + 72) = v101;
      *(v49 + 80) = v54;
      *(v49 + 136) = v52;
      *(v49 + 144) = v53;
      v55 = v100;
      *(v49 + 104) = v53;
      *(v49 + 112) = v55;
      *(v49 + 120) = v107;
      v56 = sub_220DC05F0();

      v57 = *(v46 + 8);
      v57(v47, v48);
      v57(&v25[v43], v48);
LABEL_11:
      v69 = v25;
LABEL_16:
      sub_220D21E98(v69, type metadata accessor for PrecipitationTotalStringAmount.Format);
      return v56;
    }
  }

  else
  {
    sub_220D21EF0(v25, v18, type metadata accessor for PrecipitationTotalStringAmount.Format);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v59 = v103;
      v58 = v104;
      v60 = v105;
      (*(v104 + 32))(v103, v18, v105);
      if (qword_280FA6600 != -1)
      {
        swift_once();
      }

      sub_220DBE240();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94FB8, &unk_220DC1E30);
      v61 = swift_allocObject();
      *(v61 + 16) = xmmword_220DC1CC0;
      sub_220DBE050();
      v62 = MEMORY[0x277D83A80];
      *(v61 + 56) = MEMORY[0x277D839F8];
      *(v61 + 64) = v62;
      *(v61 + 32) = v63;
      v64 = MEMORY[0x277D837D0];
      *(v61 + 96) = MEMORY[0x277D837D0];
      v65 = sub_220CEFDB0();
      v66 = v108;
      *(v61 + 72) = v101;
      *(v61 + 80) = v66;
      *(v61 + 136) = v64;
      *(v61 + 144) = v65;
      v67 = v100;
      *(v61 + 104) = v65;
      *(v61 + 112) = v67;
      *(v61 + 120) = v107;
      v56 = sub_220DC05F0();

      v68 = *(v58 + 8);
      v68(v59, v60);
      v68(&v25[v43], v60);
      goto LABEL_11;
    }

    (*(v104 + 8))(v18, v105);
  }

  v77 = v102;
  if (qword_27CF94F40 != -1)
  {
    swift_once();
  }

  v78 = sub_220DBF410();
  __swift_project_value_buffer(v78, qword_27CF95F48);
  sub_220D21EF0(a2, v77, type metadata accessor for PrecipitationTotalStringAmount);
  v79 = a1;
  v80 = v106;
  sub_220D21EF0(v79, v106, type metadata accessor for PrecipitationTotalStringAmount);
  v81 = sub_220DBF3F0();
  v82 = sub_220DC0980();
  if (os_log_type_enabled(v81, v82))
  {
    v83 = swift_slowAlloc();
    v108 = swift_slowAlloc();
    v109 = v108;
    *v83 = 136446466;
    v84 = v98;
    sub_220D21EF0(v77, v98, type metadata accessor for PrecipitationTotalStringAmount);
    v85 = sub_220DC0630();
    v86 = v77;
    v87 = v85;
    v89 = v88;
    sub_220D21E98(v86, type metadata accessor for PrecipitationTotalStringAmount);
    v90 = sub_220D3F210(v87, v89, &v109);

    *(v83 + 4) = v90;
    *(v83 + 12) = 2082;
    v91 = v106;
    sub_220D21EF0(v106, v84, type metadata accessor for PrecipitationTotalStringAmount);
    v92 = sub_220DC0630();
    v94 = v93;
    sub_220D21E98(v91, type metadata accessor for PrecipitationTotalStringAmount);
    v95 = sub_220D3F210(v92, v94, &v109);

    *(v83 + 14) = v95;
    _os_log_impl(&dword_220CD1000, v81, v82, "Trying to format string for 'less than' precipitation, but the format is not 'less than'; snowfallAmount=%{public}s, precipitationAmount=%{public}s", v83, 0x16u);
    v96 = v108;
    swift_arrayDestroy();
    MEMORY[0x223D98FB0](v96, -1, -1);
    MEMORY[0x223D98FB0](v83, -1, -1);
  }

  else
  {

    sub_220D21E98(v80, type metadata accessor for PrecipitationTotalStringAmount);
    sub_220D21E98(v77, type metadata accessor for PrecipitationTotalStringAmount);
  }

  sub_220D18C1C(v25);
  return 0;
}

uint64_t sub_220D21E98(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_6(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_220D21EF0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  OUTLINED_FUNCTION_6(v5);
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t sub_220D21F78()
{
  v0 = type metadata accessor for PrecipitationPlatterPrecipitationKind();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  OUTLINED_FUNCTION_1();
  v4 = v3 - v2;
  v5 = sub_220DBE740();
  v6 = OUTLINED_FUNCTION_0(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_1();
  v13 = v12 - v11;
  v14 = sub_220DBE560();
  v15 = OUTLINED_FUNCTION_0(v14);
  v17 = v16;
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_1();
  v22 = v21 - v20;
  v23 = type metadata accessor for PrecipitationPlatterFutureDaySentence();
  v24 = OUTLINED_FUNCTION_6(v23);
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_1();
  v29 = v28 - v27;
  v30 = OUTLINED_FUNCTION_20();
  sub_220D26078(v30, v31, v32);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95788, &unk_220DC3A10);
    v34 = *(v33 + 48);
    v35 = *(v33 + 64);
    sub_220D2601C(v29, v4, type metadata accessor for PrecipitationPlatterPrecipitationKind);
    (*(v17 + 32))(v22, v29 + v34, v14);
    (*(v8 + 32))(v13, v29 + v35, v5);
    sub_220D22900(v4);
    v36 = OUTLINED_FUNCTION_2_12();
    v37(v36);
    (*(v17 + 8))(v22, v14);
    sub_220D18B64(v4, type metadata accessor for PrecipitationPlatterPrecipitationKind);
  }

  else
  {
    v38 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95780, &unk_220DC3020) + 48);
    (*(v17 + 32))(v22, v29, v14);
    (*(v8 + 32))(v13, v29 + v38, v5);
    v39 = sub_220DBE520();
    sub_220D222F0(v39);
    v40 = OUTLINED_FUNCTION_2_12();
    v41(v40);
    (*(v17 + 8))(v22, v14);
  }

  return OUTLINED_FUNCTION_20();
}

uint64_t type metadata accessor for PrecipitationPlatterFutureDaySentence()
{
  result = qword_27CF959B8;
  if (!qword_27CF959B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_220D222F0(char a1)
{
  v2 = sub_220DBE5E0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_220DC0460();
  v25 = *(v7 - 8);
  v8 = *(v25 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95208, &unk_220DC1E40);
  v11 = *(v24 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v24);
  v14 = &v24 - v13;
  v15 = [objc_opt_self() centimeters];
  sub_220CDB190();
  sub_220DBE040();
  sub_220DBF100();
  sub_220DBF0D0();
  sub_220DBE580();
  sub_220DBE0F0();

  (*(v3 + 8))(v6, v2);
  switch(a1)
  {
    case 1:
      v16 = v7;
      if (qword_280FA6600 != -1)
      {
        goto LABEL_16;
      }

      break;
    case 2:
      v16 = v7;
      if (qword_280FA6600 != -1)
      {
        goto LABEL_16;
      }

      break;
    case 3:
      v16 = v7;
      if (qword_280FA6600 != -1)
      {
        goto LABEL_16;
      }

      break;
    case 4:
      v16 = v7;
      if (qword_280FA6600 != -1)
      {
        goto LABEL_16;
      }

      break;
    case 5:
      v16 = v7;
      if (qword_280FA6600 != -1)
      {
        goto LABEL_16;
      }

      break;
    case 6:
      v16 = v7;
      if (qword_280FA6600 != -1)
      {
        goto LABEL_16;
      }

      break;
    default:
      v16 = v7;
      if (qword_280FA6600 != -1)
      {
LABEL_16:
        swift_once();
      }

      break;
  }

  sub_220DBE240();
  v17 = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94FB8, &unk_220DC1E30);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_220DC17A0;
  v19 = sub_220DC0440();
  v21 = v20;
  *(v18 + 56) = MEMORY[0x277D837D0];
  *(v18 + 64) = sub_220CEFDB0();
  *(v18 + 32) = v19;
  *(v18 + 40) = v21;
  v22 = sub_220DC05F0();

  (*(v17 + 8))(v10, v16);
  (*(v11 + 8))(v14, v24);
  return v22;
}

uint64_t sub_220D22900(uint64_t a1)
{
  v2 = type metadata accessor for PrecipitationTotalStringAmount(0);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v6 = &v25[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v4);
  v8 = &v25[-v7];
  v9 = type metadata accessor for PrecipitationPlatterPrecipitationKind();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v25[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = sub_220DBE520();
  sub_220D26078(a1, v12, type metadata accessor for PrecipitationPlatterPrecipitationKind);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v22 = *v12;
      v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF958A8, &unk_220DC33A0);
      sub_220D2601C(&v12[*(v23 + 48)], v8, type metadata accessor for PrecipitationTotalStringAmount);
      v27 = v22;
      v16 = sub_220D23A58(&v27, v8, v13);
      goto LABEL_7;
    case 2u:
      v17 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF958A0, &unk_220DC35E0) + 48);
      sub_220D2601C(v12, v8, type metadata accessor for PrecipitationTotalStringAmount);
      sub_220D2601C(&v12[v17], v6, type metadata accessor for PrecipitationTotalStringAmount);
      v18 = sub_220D23F8C(v8, v6, v13);
      goto LABEL_5;
    case 3u:
      v19 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF958A0, &unk_220DC35E0) + 48);
      sub_220D2601C(v12, v8, type metadata accessor for PrecipitationTotalStringAmount);
      sub_220D2601C(&v12[v19], v6, type metadata accessor for PrecipitationTotalStringAmount);
      v18 = sub_220D24384(v8, v6, v13);
LABEL_5:
      v20 = v18;
      sub_220D18B64(v6, type metadata accessor for PrecipitationTotalStringAmount);
      v21 = v8;
      break;
    default:
      v14 = *v12;
      v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF958A8, &unk_220DC33A0);
      sub_220D2601C(&v12[*(v15 + 48)], v8, type metadata accessor for PrecipitationTotalStringAmount);
      v26 = v14;
      v16 = sub_220D22C2C(&v26, v8, v13);
LABEL_7:
      v20 = v16;
      v21 = v8;
      break;
  }

  sub_220D18B64(v21, type metadata accessor for PrecipitationTotalStringAmount);
  return v20;
}

uint64_t sub_220D23A58(unsigned __int8 *a1, uint64_t a2, int a3)
{
  HIDWORD(v48) = a3;
  v5 = type metadata accessor for PrecipitationTotalStringAmount(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = v47 - v10;
  v12 = type metadata accessor for PrecipitationTotalStringAmount.Format(0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v15 = v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95208, &unk_220DC1E40);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = v47 - v19;
  v21 = *a1;
  sub_220D26078(a2 + *(v5 + 20), v15, type metadata accessor for PrecipitationTotalStringAmount.Format);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v17 + 32))(v20, v15, v16);
    switch(v21)
    {
      case 1:
        v32 = v17;
        sub_220D24B54(SBYTE4(v48));
        goto LABEL_15;
      case 2:
        v32 = v17;
        sub_220D24FA4(SBYTE4(v48));
        goto LABEL_15;
      case 3:
        v32 = v17;
        sub_220D24D7C(SBYTE4(v48));
        goto LABEL_15;
      case 4:
        v32 = v17;
        sub_220D251CC(SBYTE4(v48));
        goto LABEL_15;
      case 5:
        v32 = v17;
        sub_220D253F4(SBYTE4(v48));
LABEL_15:
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94FB8, &unk_220DC1E30);
        v33 = swift_allocObject();
        *(v33 + 16) = xmmword_220DC17C0;
        sub_220DBE050();
        v34 = MEMORY[0x277D83A80];
        *(v33 + 56) = MEMORY[0x277D839F8];
        *(v33 + 64) = v34;
        *(v33 + 32) = v35;
        v36 = sub_220DC0810();
        PrecipitationTotalStringAmount.formatted(_:accessible:shouldAddLessThanSymbol:)(v36, 0, 0, v37, v38, v39, v40, v41, v47[0], v47[1], v48, v49[0], v49[1], v49[2], v49[3], v49[4], v49[5], v49[6], v49[7], v49[8]);
        v43 = v42;
        v45 = v44;

        *(v33 + 96) = MEMORY[0x277D837D0];
        *(v33 + 104) = sub_220CEFDB0();
        *(v33 + 72) = v43;
        *(v33 + 80) = v45;
        v22 = sub_220DC05F0();

        (*(v32 + 8))(v20, v16);
        break;
      default:
        v22 = sub_220D222F0(SBYTE4(v48));
        (*(v17 + 8))(v20, v16);
        break;
    }
  }

  else
  {
    sub_220D18B64(v15, type metadata accessor for PrecipitationTotalStringAmount.Format);
    if (qword_27CF94F40 != -1)
    {
      swift_once();
    }

    v23 = sub_220DBF410();
    __swift_project_value_buffer(v23, qword_27CF95F48);
    sub_220D26078(a2, v11, type metadata accessor for PrecipitationTotalStringAmount);
    v24 = sub_220DBF3F0();
    v25 = sub_220DC0980();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v49[0] = v27;
      *v26 = 136446210;
      sub_220D26078(v11, v9, type metadata accessor for PrecipitationTotalStringAmount);
      v28 = sub_220DC0630();
      v30 = v29;
      sub_220D18B64(v11, type metadata accessor for PrecipitationTotalStringAmount);
      v31 = sub_220D3F210(v28, v30, v49);

      *(v26 + 4) = v31;
      _os_log_impl(&dword_220CD1000, v24, v25, "Trying to format string for 'less than' precipitation, but the format is not 'less than'; amount=%{public}s", v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v27);
      MEMORY[0x223D98FB0](v27, -1, -1);
      MEMORY[0x223D98FB0](v26, -1, -1);
    }

    else
    {

      sub_220D18B64(v11, type metadata accessor for PrecipitationTotalStringAmount);
    }

    return 0;
  }

  return v22;
}

uint64_t sub_220D23F8C(uint64_t a1, uint64_t a2, char a3)
{
  switch(a3)
  {
    case 1:
      if (qword_280FA6600 != -1)
      {
        swift_once();
      }

      v3 = "Description of Precipitation in L2 descriptor for future day with mixed precipitation, where snow is the dominant precipitation. ex: On Monday, there will be .25” of snowfall with a total of 2” of liquid equivalent precipitation.";
      goto LABEL_20;
    case 2:
      if (qword_280FA6600 != -1)
      {
        swift_once();
      }

      v30 = 0x8000000220DDC250;
      break;
    case 3:
      if (qword_280FA6600 != -1)
      {
        swift_once();
      }

      v30 = 0x8000000220DDC100;
      break;
    case 4:
      if (qword_280FA6600 != -1)
      {
        swift_once();
      }

      v4 = "Description of Precipitation in L2 descriptor for future day with mixed precipitation, where snow is the dominant precipitation. ex: On Thursday, there will be .25” of snowfall with a total of 2” of liquid equivalent precipitation.";
      goto LABEL_24;
    case 5:
      if (qword_280FA6600 != -1)
      {
        swift_once();
      }

      v3 = "Description of Precipitation in L2 descriptor for future day with mixed precipitation, where snow is the dominant precipitation. ex: On Friday, there will be .25” of snowfall with a total of 2” of liquid equivalent precipitation.";
      goto LABEL_20;
    case 6:
      if (qword_280FA6600 != -1)
      {
        swift_once();
      }

      v4 = "Description of Precipitation in L2 descriptor for future day with mixed precipitation, where snow is the dominant precipitation. ex: On Saturday, there will be .25” of snowfall with a total of 2” of liquid equivalent precipitation.";
LABEL_24:
      v30 = (v4 - 32) | 0x8000000000000000;
      break;
    default:
      if (qword_280FA6600 != -1)
      {
        swift_once();
      }

      v3 = "Description of Precipitation in L2 descriptor for future day with mixed precipitation, where snow is the dominant precipitation. ex: On Sunday, there will be .25” of snowfall with a total of 2” of liquid equivalent precipitation.";
LABEL_20:
      v30 = (v3 - 32) | 0x8000000000000000;
      break;
  }

  sub_220DBE240();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94FB8, &unk_220DC1E30);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_220DC17C0;
  v6 = sub_220DC0810();
  PrecipitationTotalStringAmount.formatted(_:accessible:shouldAddLessThanSymbol:)(v6, 0, 1, v7, v8, v9, v10, v11, v30, v32, v34, v36, v38, v40, v42, v44, v46, v48, vars0, vars8);
  v13 = v12;
  v15 = v14;

  v16 = MEMORY[0x277D837D0];
  *(v5 + 56) = MEMORY[0x277D837D0];
  v17 = sub_220CEFDB0();
  *(v5 + 64) = v17;
  *(v5 + 32) = v13;
  *(v5 + 40) = v15;
  v18 = sub_220DC0810();
  PrecipitationTotalStringAmount.formatted(_:accessible:shouldAddLessThanSymbol:)(v18, 0, 1, v19, v20, v21, v22, v23, v31, v33, v35, v37, v39, v41, v43, v45, v47, v49, vars0a, vars8a);
  v25 = v24;
  v27 = v26;

  *(v5 + 96) = v16;
  *(v5 + 104) = v17;
  *(v5 + 72) = v25;
  *(v5 + 80) = v27;
  v28 = sub_220DC05F0();

  return v28;
}

uint64_t sub_220D24384(uint64_t a1, uint64_t a2, int a3)
{
  HIDWORD(v87) = a3;
  v5 = type metadata accessor for PrecipitationTotalStringAmount(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v84 = &v83 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v86 = &v83 - v10;
  MEMORY[0x28223BE20](v9);
  v85 = &v83 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95208, &unk_220DC1E40);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v83 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95210, &unk_220DC35F0);
  v18 = v17 - 8;
  v19 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17);
  v21 = &v83 - v20;
  v22 = sub_220DC0810();
  PrecipitationTotalStringAmount.formatted(_:accessible:shouldAddLessThanSymbol:)(v22, 0, 0, v23, v24, v25, v26, v27, v83, v84, v85, v86, v87, v88, v89, v90, v91, v92, v93, v94);
  v89 = v28;
  v91 = v29;

  v30 = sub_220DC0810();
  PrecipitationTotalStringAmount.formatted(_:accessible:shouldAddLessThanSymbol:)(v30, 0, 0, v31, v32, v33, v34, v35, v83, v84, v85, v86, v87, v88, v89, v90, v91, v92, v93, v94);
  v88 = v36;
  v90 = v37;

  v38 = *(v5 + 20);
  v39 = *(v18 + 56);
  sub_220D26078(a2 + v38, v21, type metadata accessor for PrecipitationTotalStringAmount.Format);
  sub_220D26078(a1 + v38, &v21[v39], type metadata accessor for PrecipitationTotalStringAmount.Format);
  type metadata accessor for PrecipitationTotalStringAmount.Format(0);
  LODWORD(v38) = swift_getEnumCaseMultiPayload();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v41 = EnumCaseMultiPayload;
  if (v38 == 1)
  {
    (*(v13 + 32))(v16, v21, v12);
    if (v41 == 1)
    {
      sub_220D2561C(SBYTE4(v87));
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94FB8, &unk_220DC1E30);
      v42 = swift_allocObject();
      *(v42 + 16) = xmmword_220DC1CC0;
      sub_220DBE050();
      v43 = MEMORY[0x277D83A80];
      *(v42 + 56) = MEMORY[0x277D839F8];
      *(v42 + 64) = v43;
      *(v42 + 32) = v44;
      v45 = MEMORY[0x277D837D0];
      *(v42 + 96) = MEMORY[0x277D837D0];
      v46 = sub_220CEFDB0();
      v47 = v91;
      *(v42 + 72) = v89;
      *(v42 + 80) = v47;
      *(v42 + 136) = v45;
      *(v42 + 144) = v46;
      v48 = v88;
      *(v42 + 104) = v46;
      *(v42 + 112) = v48;
      *(v42 + 120) = v90;
      v49 = sub_220DC05F0();

      v50 = *(v13 + 8);
      v50(v16, v12);
      v50(&v21[v39], v12);
      return v49;
    }

    sub_220D2594C(SBYTE4(v87));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94FB8, &unk_220DC1E30);
    v57 = swift_allocObject();
    *(v57 + 16) = xmmword_220DC1CC0;
    sub_220DBE050();
    v58 = MEMORY[0x277D83A80];
    *(v57 + 56) = MEMORY[0x277D839F8];
    *(v57 + 64) = v58;
    *(v57 + 32) = v59;
    v60 = MEMORY[0x277D837D0];
    *(v57 + 96) = MEMORY[0x277D837D0];
    v61 = sub_220CEFDB0();
    v62 = v91;
    *(v57 + 72) = v89;
    *(v57 + 80) = v62;
    *(v57 + 136) = v60;
    *(v57 + 144) = v61;
    v63 = v88;
    *(v57 + 104) = v61;
    *(v57 + 112) = v63;
    *(v57 + 120) = v90;
    v49 = sub_220DC05F0();

    (*(v13 + 8))(v16, v12);
    v56 = &v21[v39];
LABEL_7:
    sub_220D18B64(v56, type metadata accessor for PrecipitationTotalStringAmount.Format);
    return v49;
  }

  if (EnumCaseMultiPayload == 1)
  {
    sub_220D25C7C(SBYTE4(v87));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94FB8, &unk_220DC1E30);
    v51 = swift_allocObject();
    *(v51 + 16) = xmmword_220DC17C0;
    v52 = MEMORY[0x277D837D0];
    *(v51 + 56) = MEMORY[0x277D837D0];
    v53 = sub_220CEFDB0();
    v54 = v91;
    *(v51 + 32) = v89;
    *(v51 + 40) = v54;
    *(v51 + 96) = v52;
    *(v51 + 104) = v53;
    v55 = v88;
    *(v51 + 64) = v53;
    *(v51 + 72) = v55;
    *(v51 + 80) = v90;
    v49 = sub_220DC05F0();

    (*(v13 + 8))(&v21[v39], v12);
    v56 = v21;
    goto LABEL_7;
  }

  if (qword_27CF94F40 != -1)
  {
    swift_once();
  }

  v64 = sub_220DBF410();
  __swift_project_value_buffer(v64, qword_27CF95F48);
  v65 = v85;
  sub_220D26078(a2, v85, type metadata accessor for PrecipitationTotalStringAmount);
  v66 = v86;
  sub_220D26078(a1, v86, type metadata accessor for PrecipitationTotalStringAmount);
  v67 = sub_220DBF3F0();
  v68 = sub_220DC0980();
  v91 = v67;
  if (os_log_type_enabled(v67, v68))
  {
    v69 = swift_slowAlloc();
    LODWORD(v89) = v68;
    v70 = v69;
    v90 = swift_slowAlloc();
    v92 = v90;
    *v70 = 136446466;
    v71 = v84;
    sub_220D26078(v65, v84, type metadata accessor for PrecipitationTotalStringAmount);
    v72 = sub_220DC0630();
    v74 = v73;
    sub_220D18B64(v65, type metadata accessor for PrecipitationTotalStringAmount);
    v75 = sub_220D3F210(v72, v74, &v92);

    *(v70 + 4) = v75;
    *(v70 + 12) = 2082;
    sub_220D26078(v66, v71, type metadata accessor for PrecipitationTotalStringAmount);
    v76 = sub_220DC0630();
    v78 = v77;
    sub_220D18B64(v66, type metadata accessor for PrecipitationTotalStringAmount);
    v79 = sub_220D3F210(v76, v78, &v92);

    *(v70 + 14) = v79;
    v80 = v91;
    _os_log_impl(&dword_220CD1000, v91, v89, "Trying to format string for 'less than' precipitation, but the format is not 'less than'; snowfallAmount=%{public}s, precipitationAmount=%{public}s", v70, 0x16u);
    v81 = v90;
    swift_arrayDestroy();
    MEMORY[0x223D98FB0](v81, -1, -1);
    MEMORY[0x223D98FB0](v70, -1, -1);
  }

  else
  {

    sub_220D18B64(v66, type metadata accessor for PrecipitationTotalStringAmount);
    sub_220D18B64(v65, type metadata accessor for PrecipitationTotalStringAmount);
  }

  sub_220D18C1C(v21);
  return 0;
}

uint64_t sub_220D24B54(char a1)
{
  switch(a1)
  {
    case 2:
      if (qword_280FA6600 != -1)
      {
        goto LABEL_10;
      }

      break;
    case 3:
      if (qword_280FA6600 != -1)
      {
        goto LABEL_10;
      }

      break;
    case 4:
    case 6:
      if (qword_280FA6600 != -1)
      {
        goto LABEL_10;
      }

      break;
    default:
      if (qword_280FA6600 != -1)
      {
LABEL_10:
        swift_once();
      }

      break;
  }

  return sub_220DBE240();
}

uint64_t sub_220D24D7C(char a1)
{
  switch(a1)
  {
    case 2:
      if (qword_280FA6600 != -1)
      {
        goto LABEL_10;
      }

      break;
    case 3:
      if (qword_280FA6600 != -1)
      {
        goto LABEL_10;
      }

      break;
    case 4:
    case 6:
      if (qword_280FA6600 != -1)
      {
        goto LABEL_10;
      }

      break;
    default:
      if (qword_280FA6600 != -1)
      {
LABEL_10:
        swift_once();
      }

      break;
  }

  return sub_220DBE240();
}

uint64_t sub_220D24FA4(char a1)
{
  switch(a1)
  {
    case 2:
      if (qword_280FA6600 != -1)
      {
        goto LABEL_10;
      }

      break;
    case 3:
      if (qword_280FA6600 != -1)
      {
        goto LABEL_10;
      }

      break;
    case 4:
    case 6:
      if (qword_280FA6600 != -1)
      {
        goto LABEL_10;
      }

      break;
    default:
      if (qword_280FA6600 != -1)
      {
LABEL_10:
        swift_once();
      }

      break;
  }

  return sub_220DBE240();
}

uint64_t sub_220D251CC(char a1)
{
  switch(a1)
  {
    case 2:
      if (qword_280FA6600 != -1)
      {
        goto LABEL_10;
      }

      break;
    case 3:
      if (qword_280FA6600 != -1)
      {
        goto LABEL_10;
      }

      break;
    case 4:
    case 6:
      if (qword_280FA6600 != -1)
      {
        goto LABEL_10;
      }

      break;
    default:
      if (qword_280FA6600 != -1)
      {
LABEL_10:
        swift_once();
      }

      break;
  }

  return sub_220DBE240();
}

uint64_t sub_220D253F4(char a1)
{
  switch(a1)
  {
    case 2:
      if (qword_280FA6600 != -1)
      {
        goto LABEL_10;
      }

      break;
    case 3:
      if (qword_280FA6600 != -1)
      {
        goto LABEL_10;
      }

      break;
    case 4:
    case 6:
      if (qword_280FA6600 != -1)
      {
        goto LABEL_10;
      }

      break;
    default:
      if (qword_280FA6600 != -1)
      {
LABEL_10:
        swift_once();
      }

      break;
  }

  return sub_220DBE240();
}

uint64_t sub_220D2561C(char a1)
{
  switch(a1)
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

  return sub_220DBE240();
}

uint64_t sub_220D2594C(char a1)
{
  switch(a1)
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

  return sub_220DBE240();
}

uint64_t sub_220D25C7C(char a1)
{
  switch(a1)
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

  return sub_220DBE240();
}

uint64_t sub_220D2601C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3(0);
  OUTLINED_FUNCTION_6(v4);
  v6 = *(v5 + 32);
  v7 = OUTLINED_FUNCTION_20();
  v8(v7);
  return a2;
}

uint64_t sub_220D26078(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3(0);
  OUTLINED_FUNCTION_6(v4);
  v6 = *(v5 + 16);
  v7 = OUTLINED_FUNCTION_20();
  v8(v7);
  return a2;
}

void sub_220D260D4()
{
  sub_220D26148();
  if (v0 <= 0x3F)
  {
    sub_220D261B8();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_220D26148()
{
  if (!qword_27CF959C8)
  {
    sub_220DBE560();
    sub_220DBE740();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27CF959C8);
    }
  }
}

void sub_220D261B8()
{
  if (!qword_27CF959D0)
  {
    type metadata accessor for PrecipitationPlatterPrecipitationKind();
    sub_220DBE560();
    sub_220DBE740();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_27CF959D0);
    }
  }
}

uint64_t sub_220D26278(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 168))
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

uint64_t sub_220D262B8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0u;
    *(result + 152) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 168) = 1;
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

    *(result + 168) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_220D26330@<X0>(__n128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v10 = v9;
  v191 = a7;
  v190 = a6;
  v189 = a5;
  v205 = a4;
  v207 = a3;
  v217 = a2;
  v211 = a1;
  v200 = a9;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95648, &qword_220DC2D00);
  v13 = OUTLINED_FUNCTION_18(v12);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_57();
  v197 = v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF951E0, &unk_220DC1D80);
  v19 = OUTLINED_FUNCTION_18(v18);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_57();
  v210 = v23;
  v216 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94FA0, &unk_220DC17F0);
  OUTLINED_FUNCTION_5_9();
  v198 = v24;
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_57();
  v206 = v29;
  v201 = sub_220DC0260();
  OUTLINED_FUNCTION_5_9();
  v202 = v30;
  v32 = *(v31 + 64);
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_57();
  v213 = v37;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF951F0, &qword_220DC1D98);
  v39 = OUTLINED_FUNCTION_18(v38);
  v41 = *(v40 + 64);
  MEMORY[0x28223BE20](v39);
  v187 = &v178 - v42;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF951F8, &qword_220DC1DA0);
  v44 = OUTLINED_FUNCTION_18(v43);
  v46 = *(v45 + 64);
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v49);
  OUTLINED_FUNCTION_25_0();
  v215 = v50;
  OUTLINED_FUNCTION_23();
  MEMORY[0x28223BE20](v51);
  OUTLINED_FUNCTION_57();
  v214 = v52;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94F90, &unk_220DC4410);
  v54 = OUTLINED_FUNCTION_18(v53);
  v56 = *(v55 + 64);
  MEMORY[0x28223BE20](v54);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v57);
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v58);
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v59);
  OUTLINED_FUNCTION_57();
  v212 = v60;
  v62 = *a8;
  v208 = *(a8 + 8);
  v61 = v208;
  v63 = *(a8 + 16);
  v64 = *(a8 + 24);
  v66 = *(a8 + 32);
  v65 = *(a8 + 40);
  v67 = v9[3];
  v68 = v9[4];
  __swift_project_boxed_opaque_existential_1(v9, v67);
  v221 = v62;
  v222 = v61;
  v223 = v63;
  v224 = v64;
  v225 = v66;
  v226 = v65;
  v184 = (*(v68 + 8))(v211, v207, v205, &v221, v67, v68);
  v204 = v69;
  v70 = v62;
  v71 = v212;
  sub_220D275EC(v189, v70, v212);
  __swift_project_boxed_opaque_existential_1(v10 + 5, v10[8]);
  v221 = v70;
  v222 = v208;
  v196 = v63;
  v223 = v63;
  v224 = v64;
  v195 = v64;
  v194 = v66;
  v225 = v66;
  v226 = v65;
  v193 = v65;
  v72 = v71;
  v73 = v70;
  sub_220DB0CEC(&v221, v214);
  v74 = v9[15];
  sub_220DBECC0();
  v75 = v187;
  v76 = OUTLINED_FUNCTION_18_5();
  __swift_storeEnumTagSinglePayload(v76, v77, 1, v78);
  sub_220DC0310();
  sub_220CE1ABC(v75, &qword_27CF951F0, &qword_220DC1D98);
  sub_220D28804((v10 + 10), &v218);
  v80 = v219;
  v79 = v220;
  v205 = __swift_project_boxed_opaque_existential_1(&v218, v219);
  sub_220DBE780();
  sub_220DBE7B0();
  v81 = v186;
  sub_220DBE7D0();
  sub_220CF6B14(v72, v81, &qword_27CF94F90, &unk_220DC4410);
  v82 = sub_220DBF310();
  OUTLINED_FUNCTION_27_1(v81, 1, v82);
  if (v125)
  {

    sub_220CE1ABC(v81, &qword_27CF94F90, &unk_220DC4410);
    v85 = 1;
    v84 = v197;
  }

  else
  {
    sub_220DBF300();
    OUTLINED_FUNCTION_15_5();
    (*(v83 + 8))(v81, v82);
    sub_220D287C0();
    v84 = v197;
    sub_220DBE040();
    v85 = 0;
  }

  __swift_storeEnumTagSinglePayload(v84, v85, 1, v216);
  v86 = v188;
  sub_220CF6B14(v72, v188, &qword_27CF94F90, &unk_220DC4410);
  OUTLINED_FUNCTION_27_1(v86, 1, v82);
  v87 = v199;
  if (v125)
  {

    sub_220CE1ABC(v86, &qword_27CF94F90, &unk_220DC4410);
    v89 = 1;
  }

  else
  {
    sub_220DBF2F0();
    OUTLINED_FUNCTION_15_5();
    (*(v88 + 8))(v86, v82);
    sub_220D287C0();
    sub_220DBE040();
    v89 = 0;
  }

  v90 = v203;
  __swift_storeEnumTagSinglePayload(v87, v89, 1, v216);
  v91 = v192;
  sub_220CF6B14(v72, v192, &qword_27CF94F90, &unk_220DC4410);
  OUTLINED_FUNCTION_27_1(v91, 1, v82);
  v92 = v201;
  if (v125)
  {
    sub_220CE1ABC(v91, &qword_27CF94F90, &unk_220DC4410);
    v94 = 1;
  }

  else
  {
    sub_220DBF2D0();
    v90 = v203;
    OUTLINED_FUNCTION_15_5();
    (*(v93 + 8))(v91, v82);
    v94 = 0;
  }

  v95 = sub_220DBE560();
  __swift_storeEnumTagSinglePayload(v90, v94, 1, v95);
  v221 = v73;
  v222 = v208;
  v223 = v196;
  v224 = v195;
  v225 = v194;
  v226 = v193;
  v177 = v80;
  v96 = v210;
  v97 = v206;
  v98 = v209;
  (*(v79 + 16))(v211, v217, v206, v209, v210, v84, v87, v90, &v221, v177, v79);
  OUTLINED_FUNCTION_50(v90);
  sub_220CE1ABC(v87, &qword_27CF95648, &qword_220DC2D00);
  sub_220CE1ABC(v84, &qword_27CF95648, &qword_220DC2D00);
  OUTLINED_FUNCTION_50(v96);
  v99 = *(v198 + 8);
  v100 = v216;
  v99(v98, v216);
  v99(v97, v100);
  __swift_destroy_boxed_opaque_existential_1(&v218);
  if (v204)
  {
    v101 = v183;
    sub_220CF6B14(v215, v183, &qword_27CF951F8, &qword_220DC1DA0);
    v102 = OUTLINED_FUNCTION_18_5();
    v103 = v92;
    OUTLINED_FUNCTION_27_1(v102, v104, v92);
    if (v125)
    {
      sub_220CE1ABC(v101, &qword_27CF951F8, &qword_220DC1DA0);
      if (qword_280FA6600 != -1)
      {
        OUTLINED_FUNCTION_10();
      }

      OUTLINED_FUNCTION_5_1();
      OUTLINED_FUNCTION_1_14();
      v217 = sub_220DBE240();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF951E8, &qword_220DC1D90);
      v105 = OUTLINED_FUNCTION_23_5();
      OUTLINED_FUNCTION_5_9();
      v107 = v106;
      v109 = *(v108 + 72);
      v110 = (*(v106 + 80) + 32) & ~*(v106 + 80);
      v111 = OUTLINED_FUNCTION_22_4();
      OUTLINED_FUNCTION_6_9(v111, xmmword_220DC17C0);
      v112 = *(v107 + 104);
      v112(v110, *MEMORY[0x277D7B3D8], v105);
      v113 = v202;
      v114 = v213;
      (*(v202 + 16))(v110 + v109, v213, v103);
      v112(v110 + v109, *MEMORY[0x277D7B3C0], v105);
      OUTLINED_FUNCTION_19_5();
      sub_220DC0220();
      (*(v113 + 8))(v114, v103);
    }

    else
    {
      v121 = *(v202 + 32);
      v121(v185, v101, v92);
      v122 = v179;
      sub_220CF6B14(v214, v179, &qword_27CF951F8, &qword_220DC1DA0);
      v123 = OUTLINED_FUNCTION_18_5();
      OUTLINED_FUNCTION_27_1(v123, v124, v92);
      if (v125)
      {
        sub_220CE1ABC(v122, &qword_27CF951F8, &qword_220DC1DA0);
        if (qword_280FA6600 != -1)
        {
          OUTLINED_FUNCTION_10();
        }

        OUTLINED_FUNCTION_5_1();
        OUTLINED_FUNCTION_6_0();
        v126 = sub_220DBE240();
        v216 = v127;
        v217 = v126;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF951E8, &qword_220DC1D90);
        v128 = sub_220DC0250();
        OUTLINED_FUNCTION_5_9();
        v130 = v129;
        v132 = *(v131 + 72);
        OUTLINED_FUNCTION_21_0();
        v211 = swift_allocObject();
        OUTLINED_FUNCTION_6_9(v211, xmmword_220DC1CC0);
        v133 = *(v130 + 104);
        v133(v84, *MEMORY[0x277D7B3D8], v128);
        v134 = v202;
        v135 = *(v202 + 16);
        v136 = v201;
        v135(v84 + v132, v185, v201);
        v137 = *MEMORY[0x277D7B3C0];
        v133(v84 + v132, v137, v128);
        v138 = v84 + 2 * v132;
        v139 = v213;
        v135(v138, v213, v136);
        v133(v138, v137, v128);
        OUTLINED_FUNCTION_19_5();
        sub_220DC0220();
        v140 = *(v134 + 8);
        v140(v185, v136);
        v140(v139, v136);
      }

      else
      {
        v157 = v180;
        v121(v180, v122, v92);
        v158 = v92;
        if (qword_280FA6600 != -1)
        {
          OUTLINED_FUNCTION_10();
        }

        OUTLINED_FUNCTION_5_1();
        OUTLINED_FUNCTION_6_0();
        v216 = sub_220DBE240();
        v211 = v159;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF951E8, &qword_220DC1D90);
        v160 = sub_220DC0250();
        v217 = v160;
        OUTLINED_FUNCTION_5_9();
        v162 = v161;
        v164 = *(v163 + 72);
        v165 = (*(v161 + 80) + 32) & ~*(v161 + 80);
        v210 = swift_allocObject();
        OUTLINED_FUNCTION_6_9(v210, xmmword_220DC1CE0);
        v166 = *(v162 + 104);
        v166(v165, *MEMORY[0x277D7B3D8], v160);
        v209 = v166;
        v167 = v202;
        v168 = *(v202 + 16);
        v168(v165 + v164, v157, v158);
        v169 = *MEMORY[0x277D7B3C0];
        v170 = v217;
        v166(v165 + v164, v169, v217);
        v168(v165 + 2 * v164, v185, v158);
        v171 = v170;
        v172 = v209;
        v209(v165 + 2 * v164, v169, v171);
        v173 = 3 * v164;
        v174 = v165 + 3 * v164;
        v175 = v213;
        v168(v174, v213, v158);
        v172(v165 + v173, v169, v217);
        OUTLINED_FUNCTION_19_5();
        sub_220DC0220();
        v176 = *(v167 + 8);
        v176(v180, v158);
        v176(v185, v158);
        v176(v175, v158);
      }
    }
  }

  else
  {
    v115 = v215;
    v116 = v181;
    sub_220CF6B14(v215, v181, &qword_27CF951F8, &qword_220DC1DA0);
    v117 = OUTLINED_FUNCTION_18_5();
    v118 = v92;
    OUTLINED_FUNCTION_27_1(v117, v119, v92);
    if (v125)
    {
      OUTLINED_FUNCTION_50(v115);
      OUTLINED_FUNCTION_50(v214);
      sub_220CE1ABC(v212, &qword_27CF94F90, &unk_220DC4410);
      OUTLINED_FUNCTION_50(v116);
      return (*(v202 + 32))(v200, v213, v92);
    }

    v141 = v202;
    v142 = v182;
    (*(v202 + 32))(v182, v116, v118);
    v143 = v118;
    if (qword_280FA6600 != -1)
    {
      OUTLINED_FUNCTION_10();
    }

    OUTLINED_FUNCTION_5_1();
    OUTLINED_FUNCTION_1_14();
    v144 = sub_220DBE240();
    v216 = v145;
    v217 = v144;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF951E8, &qword_220DC1D90);
    v210 = OUTLINED_FUNCTION_23_5();
    OUTLINED_FUNCTION_5_9();
    v147 = v146;
    v211 = *(v148 + 72);
    OUTLINED_FUNCTION_21_0();
    v149 = OUTLINED_FUNCTION_22_4();
    *(v149 + 16) = xmmword_220DC17C0;
    v150 = v149 + v118;
    v151 = *(v141 + 16);
    v151(v150, v142, v143);
    v152 = *MEMORY[0x277D7B3C0];
    v153 = *(v147 + 104);
    v154 = OUTLINED_FUNCTION_14_8();
    v153(v154);
    v155 = v211;
    v151(v211 + v150, v213, v143);
    (v153)(v155 + v150, v152, v210);
    OUTLINED_FUNCTION_19_5();
    sub_220DC0220();
    v156 = *(v141 + 8);
    v156(v182, v143);
    v156(v213, v143);
  }

  OUTLINED_FUNCTION_50(v215);
  OUTLINED_FUNCTION_50(v214);
  return sub_220CE1ABC(v212, &qword_27CF94F90, &unk_220DC4410);
}

uint64_t sub_220D275EC@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v101 = a2;
  v124 = a1;
  v111 = a3;
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94FA0, &unk_220DC17F0);
  v118 = *(v123 - 8);
  v3 = *(v118 + 64);
  v4 = MEMORY[0x28223BE20](v123);
  v100 = v97 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = v97 - v7;
  MEMORY[0x28223BE20](v6);
  v122 = v97 - v9;
  v125 = sub_220DBE960();
  v106 = *(v125 - 8);
  v10 = *(v106 + 64);
  v11 = MEMORY[0x28223BE20](v125);
  v114 = v97 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v103 = v97 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v98 = v97 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v99 = v97 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v105 = v97 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v104 = v97 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v102 = v97 - v24;
  MEMORY[0x28223BE20](v23);
  v112 = v97 - v25;
  v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95270, &unk_220DC3AF0);
  v26 = *(v121 - 8);
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v121);
  v29 = v97 - v28;
  v30 = sub_220DBE6E0();
  v31 = *(v30 - 8);
  v32 = *(v31 + 64);
  MEMORY[0x28223BE20](v30);
  v34 = v97 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = sub_220DBE560();
  v109 = *(v110 - 8);
  v35 = *(v109 + 64);
  v36 = MEMORY[0x28223BE20](v110);
  v97[1] = v97 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = MEMORY[0x28223BE20](v36);
  v97[0] = v97 - v39;
  v40 = MEMORY[0x28223BE20](v38);
  v42 = v97 - v41;
  MEMORY[0x28223BE20](v40);
  v44 = v97 - v43;
  sub_220DBE3E0();
  sub_220DBE600();
  sub_220DBE320();
  (*(v31 + 8))(v34, v30);
  (*(v26 + 16))(v29, v124, v121);
  v107 = v44;
  v127 = v44;
  v128 = v42;
  v108 = v42;
  v45 = sub_220CE5008(sub_220D287A0, v126);
  v46 = v45;
  v124 = *(v45 + 16);
  if (v124)
  {
    v47 = v106;
    v49 = v106 + 16;
    v48 = *(v106 + 16);
    v50 = v104;
    v119 = v45 + ((*(v106 + 80) + 32) & ~*(v106 + 80));
    v120 = v48;
    result = (v48)(v104);
    v117 = (v118 + 8);
    v118 = v49 - 8;
    v121 = v49;
    v115 = (v49 + 16);
    v52 = 1;
    v53 = v114;
    v54 = v105;
    v116 = v46;
    v113 = v8;
    v55 = v122;
    v56 = v117;
    while (v124 != v52)
    {
      if (v52 >= *(v46 + 16))
      {
        __break(1u);
LABEL_20:
        __break(1u);
        return result;
      }

      v57 = v125;
      v120(v54, v119 + *(v47 + 72) * v52, v125);
      sub_220DBE890();
      sub_220DBE890();
      sub_220D287C0();
      v58 = sub_220DBE010();
      v59 = v50;
      v60 = *v56;
      v61 = v8;
      v62 = v54;
      v63 = v47;
      v64 = v123;
      (*v56)(v61, v123);
      v65 = v64;
      v47 = v63;
      v60(v55, v65);
      v66 = *(v63 + 8);
      if (v58)
      {
        v66(v59, v57);
        result = (*v115)(v59, v62, v57);
      }

      else
      {
        result = (v66)(v62, v57);
      }

      v50 = v59;
      v54 = v62;
      ++v52;
      v8 = v113;
      v53 = v114;
      v46 = v116;
    }

    v67 = *v115;
    v68 = v102;
    v69 = v125;
    (*v115)(v102, v50, v125);
    v114 = v67;
    (v67)(v112, v68, v69);
    v70 = v103;
    result = (v120)(v103, v119, v69);
    v71 = 1;
    v72 = v122;
    v73 = v117;
    while (v124 != v71)
    {
      if (v71 >= *(v46 + 16))
      {
        goto LABEL_20;
      }

      v120(v53, v119 + *(v47 + 72) * v71, v125);
      v74 = v53;
      sub_220DBE890();
      sub_220DBE890();
      sub_220D287C0();
      v75 = v70;
      v76 = sub_220DBE010();
      v77 = *v73;
      v78 = v123;
      (*v73)(v8, v123);
      v77(v72, v78);
      v79 = *(v47 + 8);
      if (v76)
      {
        v80 = v125;
        v79(v75, v125);
        result = (v114)(v75, v74, v80);
      }

      else
      {
        result = (v79)(v74, v125);
      }

      v70 = v75;
      v53 = v74;
      ++v71;
      v46 = v116;
    }

    v81 = v98;
    v82 = v125;
    v83 = v114;
    (v114)(v98, v70, v125);
    v84 = v99;
    v83(v99, v81, v82);
    v85 = v112;
    sub_220DBE890();
    v87 = v122;
    v86 = v123;
    sub_220DBE130();
    v88 = *v117;
    (*v117)(v8, v86);
    sub_220DBE050();
    v88(v87, v86);
    sub_220DBE8F0();
    v89 = v100;
    sub_220DBE890();
    sub_220DBE130();
    v88(v89, v86);
    sub_220DBE050();
    v88(v8, v86);
    sub_220DBE8F0();
    v90 = v111;
    sub_220DBF2E0();
    v91 = *v118;
    v92 = v125;
    (*v118)(v84, v125);
    v91(v85, v92);
    v93 = 0;
  }

  else
  {

    v93 = 1;
    v90 = v111;
  }

  v94 = sub_220DBF310();
  __swift_storeEnumTagSinglePayload(v90, v93, 1, v94);
  v95 = *(v109 + 8);
  v96 = v110;
  v95(v108, v110);
  return (v95)(v107, v96);
}

uint64_t sub_220D280A4@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, int a4@<W4>, uint64_t *a5@<X5>, uint64_t a6@<X8>)
{
  v7 = v6;
  LODWORD(v82) = a4;
  v80 = a1;
  v81 = a3;
  v83 = a2;
  v85 = a6;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF951F8, &qword_220DC1DA0);
  v10 = OUTLINED_FUNCTION_18(v9);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_9();
  v74 = v13;
  OUTLINED_FUNCTION_23();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_57();
  v73 = v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94F90, &unk_220DC4410);
  v17 = OUTLINED_FUNCTION_18(v16);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v21 = &v73 - v20;
  v86 = sub_220DC0260();
  OUTLINED_FUNCTION_5_9();
  v84 = v22;
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_9();
  v76 = v26;
  OUTLINED_FUNCTION_23();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_25_0();
  v75 = v28;
  OUTLINED_FUNCTION_23();
  MEMORY[0x28223BE20](v29);
  v31 = &v73 - v30;
  v32 = *a5;
  v33 = a5[1];
  v34 = a5[2];
  v36 = a5[4];
  v35 = a5[5];
  v77 = a5[3];
  v78 = v36;
  v79 = v35;
  v37 = v7[20];
  __swift_project_boxed_opaque_existential_1(v7 + 16, v7[19]);
  v38 = *(v37 + 16);
  v87 = v31;
  v39 = v81;
  v40 = v82;
  v41 = v21;
  v42 = v80;
  v38();
  v43 = v7;
  sub_220D275EC(v83, v32, v41);
  __swift_project_boxed_opaque_existential_1(v7 + 5, v7[8]);
  if ((v40 & 1) == 0)
  {
    OUTLINED_FUNCTION_16_6();
    v44 = v74;
    sub_220DAD0B8(v39, v41, v88, v74);
    v45 = v86;
    OUTLINED_FUNCTION_27_1(v44, 1, v86);
    if (!v46)
    {
      OUTLINED_FUNCTION_21_3();
      v62(v76, v44, v45);
      if (qword_280FA6600 != -1)
      {
        OUTLINED_FUNCTION_10();
      }

      OUTLINED_FUNCTION_5_1();
      OUTLINED_FUNCTION_1_14();
      v63 = sub_220DBE240();
      v81 = v64;
      v82 = v63;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF951E8, &qword_220DC1D90);
      v79 = OUTLINED_FUNCTION_23_5();
      OUTLINED_FUNCTION_5_9();
      v66 = v65;
      v53 = *(v67 + 72);
      OUTLINED_FUNCTION_21_0();
      v68 = OUTLINED_FUNCTION_22_4();
      v69 = OUTLINED_FUNCTION_10_9(v68, xmmword_220DC17C0);
      (v40)(v69);
      v56 = *MEMORY[0x277D7B3C0];
      v57 = *(v66 + 104);
      v70 = OUTLINED_FUNCTION_14_8();
      v57(v70);
      v59 = v42 + v53;
      v60 = v76;
      goto LABEL_12;
    }

LABEL_8:
    sub_220CE1ABC(v41, &qword_27CF94F90, &unk_220DC4410);
    sub_220CE1ABC(v44, &qword_27CF951F8, &qword_220DC1DA0);
    return (*(v84 + 32))(v85, v87, v45);
  }

  OUTLINED_FUNCTION_16_6();
  v44 = v73;
  sub_220DAEED4(v39, v41, v88, v73);
  v45 = v86;
  OUTLINED_FUNCTION_27_1(v44, 1, v86);
  if (v46)
  {
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_21_3();
  v47(v75, v44, v45);
  if (qword_280FA6600 != -1)
  {
    OUTLINED_FUNCTION_10();
  }

  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_1_14();
  v48 = sub_220DBE240();
  v81 = v49;
  v82 = v48;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF951E8, &qword_220DC1D90);
  v79 = OUTLINED_FUNCTION_23_5();
  OUTLINED_FUNCTION_5_9();
  v51 = v50;
  v53 = *(v52 + 72);
  OUTLINED_FUNCTION_21_0();
  v54 = OUTLINED_FUNCTION_22_4();
  v55 = OUTLINED_FUNCTION_10_9(v54, xmmword_220DC17C0);
  (v40)(v55);
  v56 = *MEMORY[0x277D7B3C0];
  v57 = *(v51 + 104);
  v58 = OUTLINED_FUNCTION_14_8();
  v57(v58);
  v59 = v42 + v53;
  v60 = v75;
LABEL_12:
  (v40)(v59, v60, v45);
  (v57)(v42 + v53, v56, v79);
  sub_220DC0220();
  v71 = v43[1];
  v72 = v86;
  v71(v60, v86);
  sub_220CE1ABC(v83, &qword_27CF94F90, &unk_220DC4410);
  return (v71)(v87, v72);
}

uint64_t sub_220D28650()
{
  v0 = sub_220DBE560();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220DBE8F0();
  sub_220CD9B24();
  v5 = sub_220DC0580();
  v6 = *(v1 + 8);
  v6(v4, v0);
  if (v5)
  {
    v7 = 0;
  }

  else
  {
    sub_220DBE8F0();
    v7 = sub_220DBE440();
    v6(v4, v0);
  }

  return v7 & 1;
}

uint64_t sub_220D287A0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_220D28650() & 1;
}

unint64_t sub_220D287C0()
{
  result = qword_27CF95688;
  if (!qword_27CF95688)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27CF95688);
  }

  return result;
}

uint64_t sub_220D28804(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_220D28868(uint64_t (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v34 = a1;
  v35 = a2;
  v37 = sub_220DBE960();
  v5 = OUTLINED_FUNCTION_0(v37);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_4();
  v31 = v10 - v11;
  OUTLINED_FUNCTION_23();
  result = MEMORY[0x28223BE20](v12);
  v15 = &v28 - v14;
  v16 = 0;
  v36 = *(a3 + 16);
  v33 = v7 + 16;
  v17 = (v7 + 8);
  v30 = (v7 + 32);
  v32 = MEMORY[0x277D84F90];
  while (1)
  {
    if (v36 == v16)
    {

      return v32;
    }

    if (v16 >= *(a3 + 16))
    {
      break;
    }

    v18 = (*(v7 + 80) + 32) & ~*(v7 + 80);
    v19 = *(v7 + 72);
    v20 = a3;
    (*(v7 + 16))(v15, a3 + v18 + v19 * v16, v37);
    v21 = v34(v15);
    if (v3)
    {
      (*v17)(v15, v37);
      v27 = v32;

      return v27;
    }

    if (v21)
    {
      v29 = *v30;
      v29(v31, v15, v37);
      v22 = v32;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v38 = v22;
      if (isUniquelyReferenced_nonNull_native)
      {
        v24 = v22;
      }

      else
      {
        OUTLINED_FUNCTION_5_10();
        v24 = v38;
      }

      a3 = v20;
      v25 = *(v24 + 16);
      v26 = v25 + 1;
      if (v25 >= *(v24 + 24) >> 1)
      {
        v32 = v25 + 1;
        v28 = v25;
        sub_220CE5648();
        v26 = v32;
        v25 = v28;
        a3 = v20;
        v24 = v38;
      }

      ++v16;
      *(v24 + 16) = v26;
      v32 = v24;
      result = (v29)(v24 + v18 + v25 * v19, v31, v37);
    }

    else
    {
      result = (*v17)(v15, v37);
      ++v16;
    }
  }

  __break(1u);
  return result;
}

_BYTE *storeEnumTagSinglePayload for UVIndexPolarEdgeCaseRule(_BYTE *result, int a2, int a3)
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

uint64_t UVIndexSteadyBeforeNoonRule.description(for:data:)()
{
  if (qword_280FA6600 != -1)
  {
    swift_once();
  }

  return sub_220DBE240();
}

_BYTE *storeEnumTagSinglePayload for UVIndexSteadyBeforeNoonRule(_BYTE *result, int a2, int a3)
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

uint64_t sub_220D28D10@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v17 = a3;
  v18 = a1;
  v5 = sub_220DBE960();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = 0;
  v19 = a2;
  v11 = *(a2 + 16);
  v12 = (v6 + 8);
  while (1)
  {
    if (v11 == v10)
    {
      v14 = 1;
      v15 = v17;
      return __swift_storeEnumTagSinglePayload(v15, v14, 1, v5);
    }

    (*(v6 + 16))(v9, v19 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v10, v5);
    v13 = v18(v9);
    if (v3)
    {
      return (*v12)(v9, v5);
    }

    if (v13)
    {
      break;
    }

    (*v12)(v9, v5);
    ++v10;
  }

  v15 = v17;
  (*(v6 + 32))(v17, v9, v5);
  v14 = 0;
  return __swift_storeEnumTagSinglePayload(v15, v14, 1, v5);
}

void sub_220D28ECC()
{
  OUTLINED_FUNCTION_26_2();
  OUTLINED_FUNCTION_12_8(v4, v5, v6);
  v7 = sub_220DBE960();
  v8 = OUTLINED_FUNCTION_0(v7);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_5_11(v11, v47);
  v13 = MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_11_5(v13, v14, v15, v16, v17, v18, v19, v20, v48);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95270, &unk_220DC3AF0);
  OUTLINED_FUNCTION_0(v21);
  v23 = *(v22 + 64);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_13_7();
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF959D8, &unk_220DC3B00);
  OUTLINED_FUNCTION_18_6(v25);
  v27 = *(v26 + 64);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v28);
  v29 = OUTLINED_FUNCTION_4_10();
  v30(v29);
  OUTLINED_FUNCTION_1_16(&qword_280FA7728);
  OUTLINED_FUNCTION_24_4();
  v31 = *(v3 + 44);
  OUTLINED_FUNCTION_2_14(&qword_280FA7720);
  OUTLINED_FUNCTION_7_9();
  while (1)
  {
    OUTLINED_FUNCTION_16_7();
    OUTLINED_FUNCTION_19_6();
    if (v32)
    {
      sub_220CE1ABC(v2, &qword_27CF959D8, &unk_220DC3B00);
      OUTLINED_FUNCTION_20_4();
      goto LABEL_9;
    }

    OUTLINED_FUNCTION_14_9();
    v33 = OUTLINED_FUNCTION_10_10();
    v34(v33);
    v35 = OUTLINED_FUNCTION_23_6();
    v0(v35);
    OUTLINED_FUNCTION_17_7();
    v36 = OUTLINED_FUNCTION_3_13();
    v7(v36);
    v37 = OUTLINED_FUNCTION_22_5();
    v39 = v38(v37);
    v0 = v1;
    if (v1)
    {
      v44 = OUTLINED_FUNCTION_21_4();
      v45(v44);
      sub_220CE1ABC(v2, &qword_27CF959D8, &unk_220DC3B00);
      goto LABEL_10;
    }

    if (v39)
    {
      break;
    }

    v40 = OUTLINED_FUNCTION_9_7();
    v41(v40);
  }

  sub_220CE1ABC(v2, &qword_27CF959D8, &unk_220DC3B00);
  v46 = OUTLINED_FUNCTION_8_8();
  v42 = (v7)(v46);
  v43 = 0;
LABEL_9:
  OUTLINED_FUNCTION_25_4(v42, v43);
LABEL_10:
  OUTLINED_FUNCTION_27_2();
}

void sub_220D29144()
{
  OUTLINED_FUNCTION_26_2();
  v2 = v1;
  v4 = v3;
  v24 = v5;
  v22 = v7;
  v23 = v6;
  v8 = sub_220DBE830();
  v9 = OUTLINED_FUNCTION_0(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_1();
  v16 = v15 - v14;
  v17 = v2 >> 1;
  v18 = (v11 + 8);
  while (1)
  {
    if (v17 == v4)
    {
      v20 = 1;
      v21 = v22;
      goto LABEL_10;
    }

    if (v4 >= v17)
    {
      break;
    }

    (*(v11 + 16))(v16, v24 + *(v11 + 72) * v4, v8);
    v19 = v23(v16);
    if (v0)
    {
      (*v18)(v16, v8);
      goto LABEL_11;
    }

    if (v19)
    {
      v21 = v22;
      (*(v11 + 32))(v22, v16, v8);
      v20 = 0;
LABEL_10:
      __swift_storeEnumTagSinglePayload(v21, v20, 1, v8);
LABEL_11:
      OUTLINED_FUNCTION_27_2();
      return;
    }

    (*v18)(v16, v8);
    ++v4;
  }

  __break(1u);
}

void sub_220D292D8()
{
  OUTLINED_FUNCTION_26_2();
  OUTLINED_FUNCTION_12_8(v4, v5, v6);
  v7 = sub_220DBE980();
  v8 = OUTLINED_FUNCTION_0(v7);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_5_11(v11, v47);
  v13 = MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_11_5(v13, v14, v15, v16, v17, v18, v19, v20, v48);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF959E8, &qword_220DC3C78);
  OUTLINED_FUNCTION_0(v21);
  v23 = *(v22 + 64);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_13_7();
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF959F0, &qword_220DC3C80);
  OUTLINED_FUNCTION_18_6(v25);
  v27 = *(v26 + 64);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v28);
  v29 = OUTLINED_FUNCTION_4_10();
  v30(v29);
  OUTLINED_FUNCTION_1_16(&qword_27CF959F8);
  OUTLINED_FUNCTION_24_4();
  v31 = *(v3 + 44);
  OUTLINED_FUNCTION_2_14(&qword_27CF95A00);
  OUTLINED_FUNCTION_7_9();
  while (1)
  {
    OUTLINED_FUNCTION_16_7();
    OUTLINED_FUNCTION_19_6();
    if (v32)
    {
      sub_220CE1ABC(v2, &qword_27CF959F0, &qword_220DC3C80);
      OUTLINED_FUNCTION_20_4();
      goto LABEL_9;
    }

    OUTLINED_FUNCTION_14_9();
    v33 = OUTLINED_FUNCTION_10_10();
    v34(v33);
    v35 = OUTLINED_FUNCTION_23_6();
    v0(v35);
    OUTLINED_FUNCTION_17_7();
    v36 = OUTLINED_FUNCTION_3_13();
    v7(v36);
    v37 = OUTLINED_FUNCTION_22_5();
    v39 = v38(v37);
    v0 = v1;
    if (v1)
    {
      v44 = OUTLINED_FUNCTION_21_4();
      v45(v44);
      sub_220CE1ABC(v2, &qword_27CF959F0, &qword_220DC3C80);
      goto LABEL_10;
    }

    if (v39)
    {
      break;
    }

    v40 = OUTLINED_FUNCTION_9_7();
    v41(v40);
  }

  sub_220CE1ABC(v2, &qword_27CF959F0, &qword_220DC3C80);
  v46 = OUTLINED_FUNCTION_8_8();
  v42 = (v7)(v46);
  v43 = 0;
LABEL_9:
  OUTLINED_FUNCTION_25_4(v42, v43);
LABEL_10:
  OUTLINED_FUNCTION_27_2();
}

uint64_t sub_220D29574@<X0>(uint64_t a1@<X1>, int a2@<W2>, uint64_t a3@<X8>)
{
  LODWORD(v105) = a2;
  v120 = a3;
  v4 = sub_220DBE380();
  v110 = *(v4 - 8);
  v111 = v4;
  v5 = *(v110 + 64);
  MEMORY[0x28223BE20](v4);
  v109 = v100 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = sub_220DBE560();
  v113 = *(v115 - 8);
  v7 = *(v113 + 64);
  MEMORY[0x28223BE20](v115);
  v112 = v100 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF959E0, &unk_220DC3C00);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v108 = (v100 - v11);
  v12 = sub_220DBEF70();
  v13 = *(v12 - 8);
  v123 = v12;
  i = v13;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = v100 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_220DBE960();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v20 = MEMORY[0x28223BE20](v17);
  v114 = v100 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v20);
  v24 = v100 - v23;
  v25 = MEMORY[0x28223BE20](v22);
  v107 = v100 - v26;
  MEMORY[0x28223BE20](v25);
  v122 = v100 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95270, &unk_220DC3AF0);
  v29 = *(v28 - 8);
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v28);
  v32 = v100 - v31;
  v33 = sub_220DBE6E0();
  v118 = *(v33 - 8);
  v119 = v33;
  v34 = *(v118 + 64);
  MEMORY[0x28223BE20](v33);
  v36 = v100 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = type metadata accessor for UVIndexComponentDescriptionContext();
  v121 = *(v37 + 28);
  sub_220DBE600();
  v38 = *(v37 + 24);
  v39 = *(v29 + 16);
  v116 = a1;
  v39(v32, a1 + v38, v28);
  v117 = v36;
  v126 = v36;
  v40 = v32;
  v41 = v17;
  v42 = sub_220CE5008(sub_220D2A7C8, v125);
  v106 = 0;
  v43 = 0;
  v44 = *(v42 + 16);
  v45 = i + 1;
  for (i = (v18 + 8); ; (*i)(v24, v41))
  {
    if (v44 == v43)
    {

      v40 = v119;
      if (qword_280FA6600 == -1)
      {
LABEL_7:
        sub_220DBE240();
        sub_220DC0240();

        return (*(v118 + 8))(v117, v40);
      }

LABEL_20:
      swift_once();
      goto LABEL_7;
    }

    if (v43 >= *(v42 + 16))
    {
      __break(1u);
      goto LABEL_20;
    }

    (*(v18 + 16))(v24, v42 + ((*(v18 + 80) + 32) & ~*(v18 + 80)) + *(v18 + 72) * v43, v41);
    sub_220DBE910();
    v40 = sub_220DBEF60();
    (*v45)(v16, v123);
    if (sub_220DBEF20())
    {
      break;
    }

    ++v43;
  }

  v46 = *(v18 + 32);
  v47 = v107;
  v46(v107, v24, v41);
  v48 = (v46)(v122, v47, v41);
  MEMORY[0x28223BE20](v48);
  v49 = v108;
  sub_220D28D10(sub_220D2A7A8, v42, v108);

  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v49, 1, v41);
  v104 = v41;
  if (EnumTagSinglePayload == 1)
  {
    sub_220CE1ABC(v49, &qword_27CF959E0, &unk_220DC3C00);
    if (qword_280FA6600 != -1)
    {
      swift_once();
    }

    v123 = sub_220DBE240();
    v114 = v51;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF951E8, &qword_220DC1D90);
    v52 = sub_220DC0250();
    v106 = v52;
    v53 = *(v52 - 8);
    v107 = *(v53 + 72);
    v54 = (*(v53 + 80) + 32) & ~*(v53 + 80);
    v55 = swift_allocObject();
    v108 = v55;
    *(v55 + 16) = xmmword_220DC17C0;
    v56 = (v55 + v54);
    v57 = v112;
    sub_220DBEA60();
    v58 = v109;
    sub_220D2B7CC();
    v59 = sub_220DBE3C0();
    (*(v110 + 8))(v58, v111);
    v60 = *(v113 + 8);
    v61 = v115;
    v60(v57, v115);
    *v56 = v59;
    v62 = *(v53 + 104);
    v62(v56, *MEMORY[0x277D7B3B8], v52);
    v63 = &v107[v56];
    v64 = v122;
    sub_220DBE8F0();
    v65 = sub_220DBE4F0();
    v67 = v66;
    v60(v57, v61);
    *v63 = v65;
    v63[1] = v67;
    v62(v63, *MEMORY[0x277D7B3D0], v106);
    sub_220DC0220();
    (*i)(v64, v104);
    goto LABEL_17;
  }

  v46(v114, v49, v41);
  if (v105)
  {
    if (qword_280FA6600 == -1)
    {
      goto LABEL_16;
    }

LABEL_21:
    swift_once();
  }

  else if (qword_280FA6600 != -1)
  {
    goto LABEL_21;
  }

LABEL_16:
  v106 = sub_220DBE240();
  v107 = v68;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF951E8, &qword_220DC1D90);
  v101 = sub_220DC0250();
  v69 = *(v101 - 8);
  v123 = *(v69 + 72);
  v70 = (*(v69 + 80) + 32) & ~*(v69 + 80);
  v71 = swift_allocObject();
  v105 = v71;
  *(v71 + 16) = xmmword_220DC1CE0;
  v72 = (v71 + v70);
  v73 = v112;
  sub_220DBE8F0();
  v74 = v109;
  sub_220D2B7CC();
  v75 = sub_220DBE3C0();
  v103 = *(v110 + 8);
  v76 = v111;
  v103(v74, v111);
  v110 = *(v113 + 8);
  (v110)(v73, v115);
  v108 = v72;
  *v72 = v75;
  v102 = *MEMORY[0x277D7B3B8];
  v113 = *(v69 + 104);
  (v113)(v72);
  v100[1] = v69 + 104;
  sub_220DBE8F0();
  sub_220D2B7CC();
  v77 = sub_220DBE3C0();
  v103(v74, v76);
  v78 = v115;
  v79 = v110;
  (v110)(v73, v115);
  v80 = v123;
  v81 = v108;
  *(v108 + v123) = v77;
  v82 = v81;
  v83 = v101;
  (v113)(v81 + v80, v102, v101);
  v84 = (v82 + 2 * v80);
  sub_220DBE8F0();
  v85 = sub_220DBE4F0();
  v87 = v86;
  v79(v73, v78);
  *v84 = v85;
  v84[1] = v87;
  v88 = *MEMORY[0x277D7B3D0];
  v89 = v83;
  v90 = v83;
  v91 = v113;
  (v113)(v84, v88, v89);
  v92 = (v108 + 3 * v123);
  v93 = v114;
  sub_220DBE8F0();
  v94 = sub_220DBE4F0();
  v96 = v95;
  (v110)(v73, v115);
  *v92 = v94;
  v92[1] = v96;
  v91(v92, v88, v90);
  sub_220DC0220();
  v97 = *i;
  v98 = v104;
  (*i)(v93, v104);
  v97(v122, v98);
LABEL_17:
  v40 = v119;
  return (*(v118 + 8))(v117, v40);
}

uint64_t sub_220D2A374(uint64_t a1, uint64_t a2, int a3)
{
  v5 = sub_220DC0260();
  v6 = OUTLINED_FUNCTION_0(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_1();
  v13 = v12 - v11;
  sub_220D29574(a2, a3, v12 - v11);
  v14 = sub_220DC0230();
  (*(v8 + 8))(v13, v5);
  return v14;
}

uint64_t sub_220D2A458(uint64_t a1, uint64_t a2)
{
  v24[1] = a2;
  v2 = sub_220DBE560();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = v24 - v8;
  v10 = sub_220DBEF70();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220DBE910();
  sub_220DBEF60();
  (*(v11 + 8))(v14, v10);
  v15 = sub_220DBEF40();
  v17 = v16;
  if (v15 == sub_220DBEF40() && v17 == v18)
  {
  }

  else
  {
    v20 = sub_220DC0CA0();

    v21 = 0;
    if ((v20 & 1) == 0)
    {
      return v21 & 1;
    }
  }

  sub_220DBE8F0();
  sub_220DBE8F0();
  v21 = sub_220DBE430();
  v22 = *(v3 + 8);
  v22(v7, v2);
  v22(v9, v2);
  return v21 & 1;
}

_BYTE *storeEnumTagSinglePayload for UVIndexIncreasingRule(_BYTE *result, int a2, int a3)
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

uint64_t UVIndexNightRule.description(for:data:)()
{
  if (qword_280FA6600 != -1)
  {
    swift_once();
  }

  return sub_220DBE240();
}

_BYTE *storeEnumTagSinglePayload for UVIndexNightRule(_BYTE *result, int a2, int a3)
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

uint64_t PrecipitationTotalPlatterViewModel.SectionModel.title.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return OUTLINED_FUNCTION_20();
}

WeatherAppSupport::PrecipitationTotalPlatterViewModel::SectionModel __swiftcall PrecipitationTotalPlatterViewModel.SectionModel.init(title:rows:)(Swift::String_optional title, Swift::OpaquePointer rows)
{
  *v2 = title;
  *(v2 + 16) = rows;
  result.title = title;
  result.rows = rows;
  return result;
}

uint64_t static PrecipitationTotalPlatterViewModel.SectionModel.== infix(_:_:)(void *a1, void *a2)
{
  v3 = a1[1];
  v4 = a1[2];
  v5 = a2[1];
  v6 = a2[2];
  if (v3)
  {
    if (v5)
    {
      v7 = *a1 == *a2 && v3 == v5;
      if (v7 || (sub_220DC0CA0() & 1) != 0)
      {
        goto LABEL_8;
      }
    }

    return 0;
  }

  if (v5)
  {
    return 0;
  }

LABEL_8:
  v8 = OUTLINED_FUNCTION_20();

  return sub_220D00BBC(v8, v9);
}

uint64_t PrecipitationTotalPlatterViewModel.SectionModel.hash(into:)(uint64_t a1)
{
  v3 = v1[2];
  if (v1[1])
  {
    v4 = *v1;
    sub_220DC0D00();
    sub_220DC0660();
  }

  else
  {
    sub_220DC0D00();
  }

  return sub_220D2B334(a1, v3);
}

uint64_t PrecipitationTotalPlatterViewModel.SectionModel.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_220DC0CE0();
  sub_220DC0D00();
  if (v2)
  {
    sub_220DC0660();
  }

  sub_220D2B334(v5, v3);
  return sub_220DC0D20();
}

uint64_t sub_220D2AB0C()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_220DC0CE0();
  sub_220DC0D00();
  if (v2)
  {
    sub_220DC0660();
  }

  sub_220D2B334(v5, v3);
  return sub_220DC0D20();
}

uint64_t PrecipitationTotalPlatterViewModel.RowModel.label.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return OUTLINED_FUNCTION_20();
}

uint64_t PrecipitationTotalPlatterViewModel.RowModel.amount.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return OUTLINED_FUNCTION_20();
}

uint64_t PrecipitationTotalPlatterViewModel.RowModel.accessibilityLabel.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return OUTLINED_FUNCTION_20();
}

uint64_t PrecipitationTotalPlatterViewModel.RowModel.accessibilityAmount.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return OUTLINED_FUNCTION_20();
}

uint64_t PrecipitationTotalPlatterViewModel.RowModel.init(label:amount:accessibilityLabel:accessibilityAmount:colorModel:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, uint64_t *a10)
{
  v10 = *a10;
  *a9 = result;
  a9[1] = a2;
  a9[4] = a5;
  a9[5] = a6;
  a9[2] = a3;
  a9[3] = a4;
  a9[6] = a7;
  a9[7] = a8;
  a9[8] = v10;
  return result;
}

BOOL static PrecipitationTotalPlatterViewModel.RowModel.== infix(_:_:)(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  v5 = a1[5];
  v20 = a1[7];
  v21 = a1[6];
  v6 = a2[2];
  v7 = a2[3];
  v8 = a2[4];
  v9 = a2[5];
  v10 = a2[6];
  v11 = a2[7];
  v12 = *a1 == *a2 && a1[1] == a2[1];
  v18 = a2[8];
  v19 = a1[8];
  if (!v12 && (sub_220DC0CA0() & 1) == 0)
  {
    return 0;
  }

  if (v2 != v6 || v3 != v7)
  {
    OUTLINED_FUNCTION_20();
    if ((sub_220DC0CA0() & 1) == 0)
    {
      return 0;
    }
  }

  v14 = v4 == v8 && v5 == v9;
  if (!v14 && (sub_220DC0CA0() & 1) == 0)
  {
    return 0;
  }

  v15 = v21 == v10 && v20 == v11;
  if (!v15 && (sub_220DC0CA0() & 1) == 0)
  {
    return 0;
  }

  if (v19)
  {
    if (v18)
    {
      swift_retain_n();

      v16 = sub_220DBFE90();

      return (v16 & 1) != 0;
    }
  }

  else if (!v18)
  {
    return 1;
  }

  return 0;
}

uint64_t PrecipitationTotalPlatterViewModel.RowModel.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v7 = v0[6];
  v8 = v0[7];
  v9 = v0[8];
  sub_220DC0660();
  sub_220DC0660();
  sub_220DC0660();
  sub_220DC0660();
  if (!v9)
  {
    return sub_220DC0D00();
  }

  sub_220DC0D00();

  return sub_220DBFEC0();
}

uint64_t PrecipitationTotalPlatterViewModel.RowModel.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v7 = v0[6];
  v8 = v0[7];
  v9 = v0[8];
  sub_220DC0CE0();
  sub_220DC0660();
  sub_220DC0660();
  sub_220DC0660();
  sub_220DC0660();
  sub_220DC0D00();
  if (v9)
  {
    sub_220DBFEC0();
  }

  return sub_220DC0D20();
}

uint64_t sub_220D2AFAC()
{
  sub_220DC0CE0();
  PrecipitationTotalPlatterViewModel.RowModel.hash(into:)();
  return sub_220DC0D20();
}

uint64_t static PrecipitationTotalPlatterViewModel.ColorModel.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  return sub_220DBFE90();
}

uint64_t sub_220D2B084(void (*a1)(_BYTE *, uint64_t))
{
  v3 = *v1;
  sub_220DC0CE0();
  a1(v5, v3);
  return sub_220DC0D20();
}

uint64_t sub_220D2B0F8(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *, uint64_t))
{
  v6 = *v4;
  sub_220DC0CE0();
  a4(v8, v6);
  return sub_220DC0D20();
}

uint64_t sub_220D2B144(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x223D98920](v3);
  if (v3)
  {
    v5 = 0;
    v18 = a2 + 32;
    do
    {
      v6 = (v18 + 24 * v5);
      v7 = v6[2];
      v19 = v5;
      if (v6[1])
      {
        v8 = *v6;
        sub_220DC0D00();

        sub_220DC0660();
      }

      else
      {
        sub_220DC0D00();
      }

      MEMORY[0x223D98920](*(v7 + 16));
      v9 = *(v7 + 16);
      if (v9)
      {
        v10 = (v7 + 48);
        do
        {
          v12 = *(v10 - 2);
          v11 = *(v10 - 1);
          v13 = *v10;
          v14 = v10[1];
          v15 = v10[3];
          v16 = v10[5];
          v20 = v10[2];
          v21 = v10[4];
          v17 = v10[6];

          sub_220DC0660();
          sub_220DC0660();
          sub_220DC0660();
          sub_220DC0660();
          sub_220DC0D00();
          if (v17)
          {
            sub_220DBFEC0();
          }

          v10 += 9;
          --v9;
        }

        while (v9);
      }

      v5 = v19 + 1;
    }

    while (v19 + 1 != v3);
  }

  return result;
}

uint64_t sub_220D2B334(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x223D98920](v3);
  if (v3)
  {
    v5 = (a2 + 48);
    do
    {
      v7 = *(v5 - 2);
      v6 = *(v5 - 1);
      v9 = *v5;
      v8 = v5[1];
      v10 = v5[3];
      v11 = v5[5];
      v13 = v5[2];
      v14 = v5[4];
      v12 = v5[6];

      sub_220DC0660();
      sub_220DC0660();
      sub_220DC0660();
      sub_220DC0660();
      sub_220DC0D00();
      if (v12)
      {
        sub_220DBFEC0();
      }

      v5 += 9;
      --v3;
    }

    while (v3);
  }

  return result;
}

unint64_t sub_220D2B470()
{
  result = qword_27CF95A18;
  if (!qword_27CF95A18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF95A18);
  }

  return result;
}

unint64_t sub_220D2B4C8()
{
  result = qword_27CF95A20;
  if (!qword_27CF95A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF95A20);
  }

  return result;
}

unint64_t sub_220D2B520()
{
  result = qword_27CF95A28;
  if (!qword_27CF95A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF95A28);
  }

  return result;
}

unint64_t sub_220D2B578()
{
  result = qword_27CF95A30;
  if (!qword_27CF95A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF95A30);
  }

  return result;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_220D2B5E0(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_220D2B620(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

uint64_t sub_220D2B674(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 72))
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

uint64_t sub_220D2B6B4(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

void *__swift_initWithCopy_strong(void *a1, void *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t *__swift_assignWithCopy_strong(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  *a1 = *a2;

  return a1;
}

uint64_t *__swift_assignWithTake_strong(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  *a1 = *a2;

  return a1;
}

uint64_t sub_220D2B7CC()
{
  v0 = sub_220DBE2B0();
  v1 = OUTLINED_FUNCTION_18(v0);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_1();
  v4 = sub_220DBE740();
  v5 = OUTLINED_FUNCTION_18(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_1();
  v8 = sub_220DBE6E0();
  v9 = OUTLINED_FUNCTION_18(v8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_5_12();
  v12 = sub_220DBE5E0();
  v13 = OUTLINED_FUNCTION_18(v12);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_1();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95A38, "8");
  OUTLINED_FUNCTION_18(v16);
  v18 = *(v17 + 64);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v19);
  v21 = &v31 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95A40, &unk_220DC4068);
  OUTLINED_FUNCTION_18(v22);
  v24 = *(v23 + 64);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v25);
  v27 = &v31 - v26;
  v28 = sub_220DBE350();
  __swift_storeEnumTagSinglePayload(v27, 1, 1, v28);
  v29 = sub_220DBE340();
  __swift_storeEnumTagSinglePayload(v21, 1, 1, v29);
  sub_220DBE570();
  sub_220DBE650();
  sub_220DBE710();
  sub_220DBE2A0();
  return sub_220DBE370();
}

uint64_t UVIndexNotLowNotIncreasingBeforeSunsetRule.description(for:data:)(uint64_t a1, uint64_t a2)
{
  v3 = sub_220DC0260();
  v4 = OUTLINED_FUNCTION_0(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_1();
  v11 = v10 - v9;
  UVIndexNotLowNotIncreasingBeforeSunsetRule.weatherDescription(for:data:)(a2, v10 - v9);
  v12 = sub_220DC0230();
  (*(v6 + 8))(v11, v3);
  return v12;
}

uint64_t UVIndexNotLowNotIncreasingBeforeSunsetRule.weatherDescription(for:data:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v68 = a2;
  v4 = sub_220DBE380();
  v5 = OUTLINED_FUNCTION_0(v4);
  v66 = v6;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_1();
  v64 = v10 - v9;
  v11 = sub_220DBE560();
  v12 = OUTLINED_FUNCTION_0(v11);
  v14 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_1();
  v65 = v18 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF959E0, &unk_220DC3C00);
  OUTLINED_FUNCTION_18(v19);
  v21 = *(v20 + 64);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v22);
  v24 = &v55 - v23;
  v25 = sub_220DBE960();
  v26 = OUTLINED_FUNCTION_0(v25);
  v67 = v27;
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_5_12();
  v30 = type metadata accessor for UVIndexComponentDescriptionContext();
  v31 = *(v30 + 24);
  v69 = a1;
  sub_220D28ECC();
  if (__swift_getEnumTagSinglePayload(v24, 1, v25) == 1)
  {
    sub_220CE1ABC(v24, &qword_27CF959E0, &unk_220DC3C00);
    if (qword_280FA6600 != -1)
    {
      OUTLINED_FUNCTION_10();
    }

    sub_220DBE240();
    sub_220DC0240();
  }

  else
  {
    v33 = v4;
    v63 = v11;
    (*(v67 + 32))(v2, v24, v25);
    v62 = v25;
    if (qword_280FA6600 != -1)
    {
      OUTLINED_FUNCTION_10();
    }

    v34 = sub_220DBE240();
    v60 = v35;
    v61 = v34;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF951E8, &qword_220DC1D90);
    v58 = sub_220DC0250();
    OUTLINED_FUNCTION_0(v58);
    v37 = v36;
    v57 = *(v38 + 72);
    v39 = (*(v36 + 80) + 32) & ~*(v36 + 80);
    v40 = swift_allocObject();
    v59 = v40;
    *(v40 + 16) = xmmword_220DC17C0;
    v41 = (v40 + v39);
    v42 = v65;
    sub_220DBE8F0();
    v56 = v2;
    v43 = *(v30 + 28);
    v44 = v64;
    sub_220D2B7CC();
    v45 = sub_220DBE3C0();
    (*(v66 + 8))(v44, v33);
    v64 = a1;
    v46 = *(v14 + 8);
    v47 = v63;
    v46(v42, v63);
    *v41 = v45;
    v48 = *MEMORY[0x277D7B3B8];
    v66 = *(v37 + 104);
    v49 = v58;
    (v66)(v41, v48, v58);
    v50 = (v41 + v57);
    v51 = v56;
    sub_220DBE8F0();
    v52 = sub_220DBE4F0();
    v54 = v53;
    v46(v42, v47);
    *v50 = v52;
    v50[1] = v54;
    (v66)(v50, *MEMORY[0x277D7B3D0], v49);
    sub_220DC0220();
    return (*(v67 + 8))(v51, v62);
  }
}

uint64_t sub_220D2C00C(uint64_t a1, uint64_t a2)
{
  v31[1] = a2;
  v2 = sub_220DBE560();
  v3 = OUTLINED_FUNCTION_0(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v3);
  v10 = v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = v31 - v11;
  v13 = sub_220DBEF70();
  v14 = OUTLINED_FUNCTION_0(v13);
  v16 = v15;
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_1();
  v21 = v20 - v19;
  sub_220DBE910();
  sub_220DBEF60();
  (*(v16 + 8))(v21, v13);
  v22 = sub_220DBEF40();
  v24 = v23;
  if (v22 == sub_220DBEF40() && v24 == v25)
  {
  }

  else
  {
    v27 = sub_220DC0CA0();

    v28 = 0;
    if ((v27 & 1) == 0)
    {
      return v28 & 1;
    }
  }

  sub_220DBE8F0();
  sub_220DBEA60();
  v28 = sub_220DBE430();
  v29 = *(v5 + 8);
  v29(v10, v2);
  v29(v12, v2);
  return v28 & 1;
}

_BYTE *storeEnumTagSinglePayload for UVIndexNotLowNotIncreasingBeforeSunsetRule(_BYTE *result, int a2, int a3)
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

uint64_t UVIndexSteadyBetweenNoonAndMidnightRule.description(for:data:)()
{
  if (qword_280FA6600 != -1)
  {
    swift_once();
  }

  return sub_220DBE240();
}

_BYTE *storeEnumTagSinglePayload for UVIndexSteadyBetweenNoonAndMidnightRule(_BYTE *result, int a2, int a3)
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

uint64_t MidpointInterpolator.InterpolationMode.init(_:)@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_220DBF350();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a1)
  {
    v9 = MEMORY[0x277D7B0B8];
    if (*a1 == 1)
    {
      v9 = MEMORY[0x277D7B0B0];
    }

    (*(v5 + 104))(v8, *v9, v4);
    (*(v5 + 32))(a2, v8, v4);
    return __swift_storeEnumTagSinglePayload(a2, 0, 1, v4);
  }

  else
  {

    return __swift_storeEnumTagSinglePayload(a2, 1, 1, v4);
  }
}

uint64_t *static ChartValueLabel.with(label:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95A48, &unk_220DC4100);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = v22 - v4;
  v6 = type metadata accessor for DetailChartDataElement.ValueLabel(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = (v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_220D2C80C(a1, v9);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v11 = *v9;
      sub_220DBFF70();
      sub_220DBFFB0();

      v12 = sub_220DBFD50();
      v14 = v13;
      v16 = v15;
      sub_220DBFC10();
      sub_220DBFCD0();
      OUTLINED_FUNCTION_0_11();
      sub_220CF0978(v12, v14, v16 & 1);
    }

    else
    {
      v20 = v9[1];
      v22[2] = *v9;
      v22[3] = v20;
      sub_220CEFF14();
      sub_220DBFD40();
      OUTLINED_FUNCTION_0_11();
    }
  }

  else
  {
    v17 = *v9;
    v18 = v9[1];
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95A50, &unk_220DC5A00);
    sub_220D2C870(v9 + *(v19 + 48), v5);
    v9 = sub_220DBFF80();
    sub_220DBFFA0();

    sub_220DBFD50();
    OUTLINED_FUNCTION_0_11();
    sub_220D2C8E0(v5);
  }

  return v9;
}

uint64_t sub_220D2C80C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DetailChartDataElement.ValueLabel(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_220D2C870(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95A48, &unk_220DC4100);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_220D2C8E0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95A48, &unk_220DC4100);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

_BYTE *storeEnumTagSinglePayload for ChartValueLabel(_BYTE *result, int a2, int a3)
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

uint64_t sub_220D2C9F4()
{
  v51 = sub_220DBE740();
  v1 = OUTLINED_FUNCTION_0(v51);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_1();
  v8 = v7 - v6;
  v9 = sub_220DBE560();
  v10 = OUTLINED_FUNCTION_0(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_1();
  v17 = v16 - v15;
  v18 = type metadata accessor for PrecipitationPlatterPrecipitationKind();
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  OUTLINED_FUNCTION_1();
  v22 = v21 - v20;
  TwentyFourHourSentence = type metadata accessor for PrecipitationPlatterNextTwentyFourHourSentence();
  v24 = *(*(TwentyFourHourSentence - 8) + 64);
  MEMORY[0x28223BE20](TwentyFourHourSentence - 8);
  OUTLINED_FUNCTION_1();
  v27 = v26 - v25;
  v28 = type metadata accessor for PrecipitationPlatterTodayThirdSentence();
  v29 = OUTLINED_FUNCTION_6(v28);
  v31 = *(v30 + 64);
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_1();
  v34 = v33 - v32;
  sub_220D32614(v0, v33 - v32, type metadata accessor for PrecipitationPlatterTodayThirdSentence);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95788, &unk_220DC3A10);
      OUTLINED_FUNCTION_1_18(v36);
      v37 = OUTLINED_FUNCTION_4_11();
      v38(v37);
      v39 = OUTLINED_FUNCTION_3_14();
      v40(v39);
      v41 = sub_220D2CD74(v22);
    }

    else
    {
      v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95788, &unk_220DC3A10);
      OUTLINED_FUNCTION_1_18(v45);
      v46 = OUTLINED_FUNCTION_4_11();
      v47(v46);
      v48 = OUTLINED_FUNCTION_3_14();
      v49(v48);
      v41 = sub_220D2D20C(v22, v17, v8);
    }

    v42 = v41;
    (*(v3 + 8))(v8, v27);
    (*(v12 + 8))(v17, v9);
    v43 = type metadata accessor for PrecipitationPlatterPrecipitationKind;
    v44 = v22;
  }

  else
  {
    sub_220D2D7A4(v34, v27, type metadata accessor for PrecipitationPlatterNextTwentyFourHourSentence);
    v42 = sub_220D1C2A8();
    v43 = type metadata accessor for PrecipitationPlatterNextTwentyFourHourSentence;
    v44 = v27;
  }

  sub_220D325BC(v44, v43);
  return v42;
}

uint64_t type metadata accessor for PrecipitationPlatterTodayThirdSentence()
{
  result = qword_27CF95A58;
  if (!qword_27CF95A58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_220D2CD74(uint64_t a1)
{
  v2 = type metadata accessor for PrecipitationTotalStringAmount(0);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v6 = &v57 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v57 - v7;
  v9 = type metadata accessor for PrecipitationPlatterPrecipitationKind();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v57 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_220DBE520();
  sub_220D32614(a1, v12, type metadata accessor for PrecipitationPlatterPrecipitationKind);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v54 = *v12;
      v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF958A8, &unk_220DC33A0);
      sub_220D2D7A4(&v12[*(v55 + 48)], v8, type metadata accessor for PrecipitationTotalStringAmount);
      HIBYTE(v58) = v54;
      v27 = sub_220D2E758(&v58 + 7, v8, v13);
      goto LABEL_7;
    case 2u:
      v28 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF958A0, &unk_220DC35E0) + 48);
      sub_220D2D7A4(v12, v8, type metadata accessor for PrecipitationTotalStringAmount);
      sub_220D2D7A4(&v12[v28], v6, type metadata accessor for PrecipitationTotalStringAmount);
      sub_220D2EC44(v13);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94FB8, &unk_220DC1E30);
      v29 = swift_allocObject();
      *(v29 + 16) = xmmword_220DC17C0;
      v30 = sub_220DC0810();
      PrecipitationTotalStringAmount.formatted(_:accessible:shouldAddLessThanSymbol:)(v30, 0, 1, v31, v32, v33, v34, v35, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68);
      v37 = v36;
      v39 = v38;

      v40 = MEMORY[0x277D837D0];
      *(v29 + 56) = MEMORY[0x277D837D0];
      v41 = sub_220CEFDB0();
      *(v29 + 64) = v41;
      *(v29 + 32) = v37;
      *(v29 + 40) = v39;
      v42 = sub_220DC0810();
      PrecipitationTotalStringAmount.formatted(_:accessible:shouldAddLessThanSymbol:)(v42, 0, 1, v43, v44, v45, v46, v47, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68);
      v49 = v48;
      v51 = v50;

      *(v29 + 96) = v40;
      *(v29 + 104) = v41;
      *(v29 + 72) = v49;
      *(v29 + 80) = v51;
      v27 = sub_220DC05F0();

      goto LABEL_5;
    case 3u:
      v52 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF958A0, &unk_220DC35E0) + 48);
      sub_220D2D7A4(v12, v8, type metadata accessor for PrecipitationTotalStringAmount);
      sub_220D2D7A4(&v12[v52], v6, type metadata accessor for PrecipitationTotalStringAmount);
      v27 = sub_220D2EFB0(v8, v6, v13);
LABEL_5:
      sub_220D325BC(v6, type metadata accessor for PrecipitationTotalStringAmount);
      v53 = v8;
      break;
    default:
      v14 = *v12;
      v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF958A8, &unk_220DC33A0);
      sub_220D2D7A4(&v12[*(v15 + 48)], v8, type metadata accessor for PrecipitationTotalStringAmount);
      BYTE6(v58) = v14;
      sub_220D2D804(v13);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94FB8, &unk_220DC1E30);
      v16 = swift_allocObject();
      *(v16 + 16) = xmmword_220DC17A0;
      v17 = sub_220DC0810();
      PrecipitationTotalStringAmount.formatted(_:accessible:shouldAddLessThanSymbol:)(v17, 0, 1, v18, v19, v20, v21, v22, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68);
      v24 = v23;
      v26 = v25;

      *(v16 + 56) = MEMORY[0x277D837D0];
      *(v16 + 64) = sub_220CEFDB0();
      *(v16 + 32) = v24;
      *(v16 + 40) = v26;
      v27 = sub_220DC05F0();

LABEL_7:
      v53 = v8;
      break;
  }

  sub_220D325BC(v53, type metadata accessor for PrecipitationTotalStringAmount);
  return v27;
}

uint64_t sub_220D2D20C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for PrecipitationTotalStringAmount(0);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v10 = &v71 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v71 - v11;
  v13 = type metadata accessor for PrecipitationPlatterPrecipitationKind();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v71 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = swift_allocObject();
  *(v17 + 16) = 0;
  *(v17 + 24) = 0;
  sub_220D32614(a1, v16, type metadata accessor for PrecipitationPlatterPrecipitationKind);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v66 = *v16;
      v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF958A8, &unk_220DC33A0);
      sub_220D2D7A4(&v16[*(v67 + 48)], v12, type metadata accessor for PrecipitationTotalStringAmount);
      HIBYTE(v74) = v66;
      v68 = sub_220D2F780(v17);
      v35 = sub_220D2FB04(&v74 + 7, v12, v68, v69);
      goto LABEL_9;
    case 2u:
      v72 = a2;
      v73 = a3;
      v36 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF958A0, &unk_220DC35E0) + 48);
      sub_220D2D7A4(v16, v12, type metadata accessor for PrecipitationTotalStringAmount);
      sub_220D2D7A4(&v16[v36], v10, type metadata accessor for PrecipitationTotalStringAmount);
      if (qword_280FA6600 != -1)
      {
        swift_once();
      }

      v71 = sub_220DBE240();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94FB8, &unk_220DC1E30);
      v37 = swift_allocObject();
      *(v37 + 16) = xmmword_220DC1CC0;
      v38 = sub_220DC0810();
      PrecipitationTotalStringAmount.formatted(_:accessible:shouldAddLessThanSymbol:)(v38, 0, 1, v39, v40, v41, v42, v43, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82);
      v45 = v44;
      v47 = v46;

      v48 = MEMORY[0x277D837D0];
      *(v37 + 56) = MEMORY[0x277D837D0];
      v49 = sub_220CEFDB0();
      *(v37 + 64) = v49;
      *(v37 + 32) = v45;
      *(v37 + 40) = v47;
      v50 = sub_220DC0810();
      PrecipitationTotalStringAmount.formatted(_:accessible:shouldAddLessThanSymbol:)(v50, 0, 1, v51, v52, v53, v54, v55, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82);
      v57 = v56;
      v59 = v58;

      *(v37 + 96) = v48;
      *(v37 + 104) = v49;
      *(v37 + 72) = v57;
      *(v37 + 80) = v59;
      v60 = sub_220D2F780(v17);
      *(v37 + 136) = v48;
      *(v37 + 144) = v49;
      *(v37 + 112) = v60;
      *(v37 + 120) = v61;
      v35 = sub_220DC05F0();

      goto LABEL_7;
    case 3u:
      v62 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF958A0, &unk_220DC35E0) + 48);
      sub_220D2D7A4(v16, v12, type metadata accessor for PrecipitationTotalStringAmount);
      sub_220D2D7A4(&v16[v62], v10, type metadata accessor for PrecipitationTotalStringAmount);
      v63 = sub_220D2F780(v17);
      v35 = sub_220D2FFB0(v12, v10, v63, v64);
LABEL_7:

      sub_220D325BC(v10, type metadata accessor for PrecipitationTotalStringAmount);
      v65 = v12;
      break;
    default:
      v18 = *v16;
      v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF958A8, &unk_220DC33A0);
      sub_220D2D7A4(&v16[*(v19 + 48)], v12, type metadata accessor for PrecipitationTotalStringAmount);
      BYTE6(v74) = v18;
      v73 = sub_220D2F814();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94FB8, &unk_220DC1E30);
      v20 = swift_allocObject();
      *(v20 + 16) = xmmword_220DC17C0;
      v21 = sub_220DC0810();
      PrecipitationTotalStringAmount.formatted(_:accessible:shouldAddLessThanSymbol:)(v21, 0, 1, v22, v23, v24, v25, v26, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82);
      v28 = v27;
      v30 = v29;

      v31 = MEMORY[0x277D837D0];
      *(v20 + 56) = MEMORY[0x277D837D0];
      v32 = sub_220CEFDB0();
      *(v20 + 64) = v32;
      *(v20 + 32) = v28;
      *(v20 + 40) = v30;
      v33 = sub_220D2F780(v17);
      *(v20 + 96) = v31;
      *(v20 + 104) = v32;
      *(v20 + 72) = v33;
      *(v20 + 80) = v34;
      v35 = sub_220DC05F0();

LABEL_9:

      v65 = v12;
      break;
  }

  sub_220D325BC(v65, type metadata accessor for PrecipitationTotalStringAmount);

  return v35;
}

uint64_t sub_220D2D7A4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  OUTLINED_FUNCTION_6(v5);
  (*(v6 + 32))(a2, a1);
  return a2;
}

uint64_t sub_220D2D804(char a1)
{
  switch(*v1)
  {
    case 1:
      switch(a1)
      {
        case 1:
          if (qword_280FA6600 != -1)
          {
            goto LABEL_77;
          }

          break;
        case 2:
          if (qword_280FA6600 != -1)
          {
            goto LABEL_77;
          }

          break;
        case 3:
          if (qword_280FA6600 != -1)
          {
            goto LABEL_77;
          }

          break;
        case 4:
          if (qword_280FA6600 != -1)
          {
            goto LABEL_77;
          }

          break;
        case 5:
          if (qword_280FA6600 != -1)
          {
            goto LABEL_77;
          }

          break;
        case 6:
          if (qword_280FA6600 != -1)
          {
            goto LABEL_77;
          }

          break;
        default:
          if (qword_280FA6600 != -1)
          {
            goto LABEL_77;
          }

          break;
      }

      break;
    case 2:
      switch(a1)
      {
        case 1:
          if (qword_280FA6600 != -1)
          {
            goto LABEL_77;
          }

          break;
        case 2:
          if (qword_280FA6600 != -1)
          {
            goto LABEL_77;
          }

          break;
        case 3:
          if (qword_280FA6600 != -1)
          {
            goto LABEL_77;
          }

          break;
        case 4:
          if (qword_280FA6600 != -1)
          {
            goto LABEL_77;
          }

          break;
        case 5:
          if (qword_280FA6600 != -1)
          {
            goto LABEL_77;
          }

          break;
        case 6:
          if (qword_280FA6600 != -1)
          {
            goto LABEL_77;
          }

          break;
        default:
          if (qword_280FA6600 != -1)
          {
            goto LABEL_77;
          }

          break;
      }

      break;
    case 3:
      switch(a1)
      {
        case 1:
          if (qword_280FA6600 != -1)
          {
            goto LABEL_77;
          }

          break;
        case 2:
          if (qword_280FA6600 != -1)
          {
            goto LABEL_77;
          }

          break;
        case 3:
          if (qword_280FA6600 != -1)
          {
            goto LABEL_77;
          }

          break;
        case 4:
          if (qword_280FA6600 != -1)
          {
            goto LABEL_77;
          }

          break;
        case 5:
          if (qword_280FA6600 != -1)
          {
            goto LABEL_77;
          }

          break;
        case 6:
          if (qword_280FA6600 != -1)
          {
            goto LABEL_77;
          }

          break;
        default:
          if (qword_280FA6600 != -1)
          {
            goto LABEL_77;
          }

          break;
      }

      break;
    case 4:
      switch(a1)
      {
        case 1:
          if (qword_280FA6600 != -1)
          {
            goto LABEL_77;
          }

          break;
        case 2:
          if (qword_280FA6600 != -1)
          {
            goto LABEL_77;
          }

          break;
        case 3:
          if (qword_280FA6600 != -1)
          {
            goto LABEL_77;
          }

          break;
        case 4:
          if (qword_280FA6600 != -1)
          {
            goto LABEL_77;
          }

          break;
        case 5:
          if (qword_280FA6600 != -1)
          {
            goto LABEL_77;
          }

          break;
        case 6:
          if (qword_280FA6600 != -1)
          {
            goto LABEL_77;
          }

          break;
        default:
          if (qword_280FA6600 != -1)
          {
            goto LABEL_77;
          }

          break;
      }

      break;
    default:
      switch(a1)
      {
        case 1:
          if (qword_280FA6600 != -1)
          {
            goto LABEL_77;
          }

          break;
        case 2:
          if (qword_280FA6600 != -1)
          {
            goto LABEL_77;
          }

          break;
        case 3:
          if (qword_280FA6600 != -1)
          {
            goto LABEL_77;
          }

          break;
        case 4:
          if (qword_280FA6600 != -1)
          {
            goto LABEL_77;
          }

          break;
        case 5:
          if (qword_280FA6600 != -1)
          {
            goto LABEL_77;
          }

          break;
        case 6:
          if (qword_280FA6600 != -1)
          {
            goto LABEL_77;
          }

          break;
        default:
          if (qword_280FA6600 != -1)
          {
LABEL_77:
            swift_once();
          }

          break;
      }

      break;
  }

  return sub_220DBE240();
}

uint64_t sub_220D2E758(unsigned __int8 *a1, uint64_t a2, int a3)
{
  HIDWORD(v47) = a3;
  v5 = type metadata accessor for PrecipitationTotalStringAmount(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v48[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v48[-1] - v10;
  v12 = type metadata accessor for PrecipitationTotalStringAmount.Format(0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v48[-1] - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95208, &unk_220DC1E40);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = &v48[-1] - v19;
  v21 = *a1;
  sub_220D32614(a2 + *(v5 + 20), v15, type metadata accessor for PrecipitationTotalStringAmount.Format);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v17 + 32))(v20, v15, v16);
    v22 = v17;
    switch(v21)
    {
      case 1:
        sub_220D315CC(SBYTE4(v47));
        break;
      case 2:
        sub_220D31C2C(SBYTE4(v47));
        break;
      case 3:
        sub_220D318FC(SBYTE4(v47));
        break;
      case 4:
        sub_220D31F5C(SBYTE4(v47));
        break;
      default:
        sub_220D3228C(SBYTE4(v47));
        break;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94FB8, &unk_220DC1E30);
    v33 = swift_allocObject();
    *(v33 + 16) = xmmword_220DC17C0;
    sub_220DBE050();
    v34 = MEMORY[0x277D83A80];
    *(v33 + 56) = MEMORY[0x277D839F8];
    *(v33 + 64) = v34;
    *(v33 + 32) = v35;
    v36 = sub_220DC0810();
    PrecipitationTotalStringAmount.formatted(_:accessible:shouldAddLessThanSymbol:)(v36, 0, 0, v37, v38, v39, v40, v41, v47, v48[0], v48[1], v48[2], v48[3], v48[4], v48[5], v48[6], v48[7], v48[8], v48[9], v48[10]);
    v43 = v42;
    v45 = v44;

    *(v33 + 96) = MEMORY[0x277D837D0];
    *(v33 + 104) = sub_220CEFDB0();
    *(v33 + 72) = v43;
    *(v33 + 80) = v45;
    v32 = sub_220DC05F0();

    (*(v22 + 8))(v20, v16);
  }

  else
  {
    sub_220D325BC(v15, type metadata accessor for PrecipitationTotalStringAmount.Format);
    if (qword_27CF94F40 != -1)
    {
      swift_once();
    }

    v23 = sub_220DBF410();
    __swift_project_value_buffer(v23, qword_27CF95F48);
    sub_220D32614(a2, v11, type metadata accessor for PrecipitationTotalStringAmount);
    v24 = sub_220DBF3F0();
    v25 = sub_220DC0980();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v48[0] = v27;
      *v26 = 136446210;
      sub_220D32614(v11, v9, type metadata accessor for PrecipitationTotalStringAmount);
      v28 = sub_220DC0630();
      v30 = v29;
      sub_220D325BC(v11, type metadata accessor for PrecipitationTotalStringAmount);
      v31 = sub_220D3F210(v28, v30, v48);

      *(v26 + 4) = v31;
      _os_log_impl(&dword_220CD1000, v24, v25, "Trying to format string for 'less than' precipitation, but the format is not 'less than'; amount=%{public}s", v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v27);
      MEMORY[0x223D98FB0](v27, -1, -1);
      MEMORY[0x223D98FB0](v26, -1, -1);
    }

    else
    {

      sub_220D325BC(v11, type metadata accessor for PrecipitationTotalStringAmount);
    }

    return 0;
  }

  return v32;
}

uint64_t sub_220D2EC44(char a1)
{
  switch(a1)
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

  return sub_220DBE240();
}

uint64_t sub_220D2EFB0(uint64_t a1, uint64_t a2, int a3)
{
  HIDWORD(v87) = a3;
  v5 = type metadata accessor for PrecipitationTotalStringAmount(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v84 = &v83 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v86 = &v83 - v10;
  MEMORY[0x28223BE20](v9);
  v85 = &v83 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95208, &unk_220DC1E40);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v83 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95210, &unk_220DC35F0);
  v18 = v17 - 8;
  v19 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17);
  v21 = &v83 - v20;
  v22 = sub_220DC0810();
  PrecipitationTotalStringAmount.formatted(_:accessible:shouldAddLessThanSymbol:)(v22, 0, 0, v23, v24, v25, v26, v27, v83, v84, v85, v86, v87, v88, v89, v90, v91, v92, v93, v94);
  v89 = v28;
  v91 = v29;

  v30 = sub_220DC0810();
  PrecipitationTotalStringAmount.formatted(_:accessible:shouldAddLessThanSymbol:)(v30, 0, 0, v31, v32, v33, v34, v35, v83, v84, v85, v86, v87, v88, v89, v90, v91, v92, v93, v94);
  v88 = v36;
  v90 = v37;

  v38 = *(v5 + 20);
  v39 = *(v18 + 56);
  sub_220D32614(a2 + v38, v21, type metadata accessor for PrecipitationTotalStringAmount.Format);
  sub_220D32614(a1 + v38, &v21[v39], type metadata accessor for PrecipitationTotalStringAmount.Format);
  type metadata accessor for PrecipitationTotalStringAmount.Format(0);
  LODWORD(v38) = swift_getEnumCaseMultiPayload();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v41 = EnumCaseMultiPayload;
  if (v38 == 1)
  {
    (*(v13 + 32))(v16, v21, v12);
    if (v41 == 1)
    {
      sub_220D30BD0(SBYTE4(v87));
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94FB8, &unk_220DC1E30);
      v42 = swift_allocObject();
      *(v42 + 16) = xmmword_220DC1CC0;
      sub_220DBE050();
      v43 = MEMORY[0x277D83A80];
      *(v42 + 56) = MEMORY[0x277D839F8];
      *(v42 + 64) = v43;
      *(v42 + 32) = v44;
      v45 = MEMORY[0x277D837D0];
      *(v42 + 96) = MEMORY[0x277D837D0];
      v46 = sub_220CEFDB0();
      v47 = v91;
      *(v42 + 72) = v89;
      *(v42 + 80) = v47;
      *(v42 + 136) = v45;
      *(v42 + 144) = v46;
      v48 = v88;
      *(v42 + 104) = v46;
      *(v42 + 112) = v48;
      *(v42 + 120) = v90;
      v49 = sub_220DC05F0();

      v50 = *(v13 + 8);
      v50(v16, v12);
      v50(&v21[v39], v12);
      return v49;
    }

    sub_220D30F00(SBYTE4(v87));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94FB8, &unk_220DC1E30);
    v57 = swift_allocObject();
    *(v57 + 16) = xmmword_220DC1CC0;
    sub_220DBE050();
    v58 = MEMORY[0x277D83A80];
    *(v57 + 56) = MEMORY[0x277D839F8];
    *(v57 + 64) = v58;
    *(v57 + 32) = v59;
    v60 = MEMORY[0x277D837D0];
    *(v57 + 96) = MEMORY[0x277D837D0];
    v61 = sub_220CEFDB0();
    v62 = v91;
    *(v57 + 72) = v89;
    *(v57 + 80) = v62;
    *(v57 + 136) = v60;
    *(v57 + 144) = v61;
    v63 = v88;
    *(v57 + 104) = v61;
    *(v57 + 112) = v63;
    *(v57 + 120) = v90;
    v49 = sub_220DC05F0();

    (*(v13 + 8))(v16, v12);
    v56 = &v21[v39];
LABEL_7:
    sub_220D325BC(v56, type metadata accessor for PrecipitationTotalStringAmount.Format);
    return v49;
  }

  if (EnumCaseMultiPayload == 1)
  {
    sub_220D31230(SBYTE4(v87));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94FB8, &unk_220DC1E30);
    v51 = swift_allocObject();
    *(v51 + 16) = xmmword_220DC17C0;
    v52 = MEMORY[0x277D837D0];
    *(v51 + 56) = MEMORY[0x277D837D0];
    v53 = sub_220CEFDB0();
    v54 = v91;
    *(v51 + 32) = v89;
    *(v51 + 40) = v54;
    *(v51 + 96) = v52;
    *(v51 + 104) = v53;
    v55 = v88;
    *(v51 + 64) = v53;
    *(v51 + 72) = v55;
    *(v51 + 80) = v90;
    v49 = sub_220DC05F0();

    (*(v13 + 8))(&v21[v39], v12);
    v56 = v21;
    goto LABEL_7;
  }

  if (qword_27CF94F40 != -1)
  {
    swift_once();
  }

  v64 = sub_220DBF410();
  __swift_project_value_buffer(v64, qword_27CF95F48);
  v65 = v85;
  sub_220D32614(a2, v85, type metadata accessor for PrecipitationTotalStringAmount);
  v66 = v86;
  sub_220D32614(a1, v86, type metadata accessor for PrecipitationTotalStringAmount);
  v67 = sub_220DBF3F0();
  v68 = sub_220DC0980();
  v91 = v67;
  if (os_log_type_enabled(v67, v68))
  {
    v69 = swift_slowAlloc();
    LODWORD(v89) = v68;
    v70 = v69;
    v90 = swift_slowAlloc();
    v92 = v90;
    *v70 = 136446466;
    v71 = v84;
    sub_220D32614(v65, v84, type metadata accessor for PrecipitationTotalStringAmount);
    v72 = sub_220DC0630();
    v74 = v73;
    sub_220D325BC(v65, type metadata accessor for PrecipitationTotalStringAmount);
    v75 = sub_220D3F210(v72, v74, &v92);

    *(v70 + 4) = v75;
    *(v70 + 12) = 2082;
    sub_220D32614(v66, v71, type metadata accessor for PrecipitationTotalStringAmount);
    v76 = sub_220DC0630();
    v78 = v77;
    sub_220D325BC(v66, type metadata accessor for PrecipitationTotalStringAmount);
    v79 = sub_220D3F210(v76, v78, &v92);

    *(v70 + 14) = v79;
    v80 = v91;
    _os_log_impl(&dword_220CD1000, v91, v89, "Trying to format string for 'less than' precipitation, but the format is not 'less than'; snowfallAmount=%{public}s, precipitationAmount=%{public}s", v70, 0x16u);
    v81 = v90;
    swift_arrayDestroy();
    MEMORY[0x223D98FB0](v81, -1, -1);
    MEMORY[0x223D98FB0](v70, -1, -1);
  }

  else
  {

    sub_220D325BC(v66, type metadata accessor for PrecipitationTotalStringAmount);
    sub_220D325BC(v65, type metadata accessor for PrecipitationTotalStringAmount);
  }

  sub_220D18C1C(v21);
  return 0;
}