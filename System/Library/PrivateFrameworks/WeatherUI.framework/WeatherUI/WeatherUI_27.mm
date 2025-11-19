uint64_t sub_1BCB70170(uint64_t (*a1)(void))
{
  OUTLINED_FUNCTION_19_1();
  v5 = sub_1BCE1BC20();
  OUTLINED_FUNCTION_2();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_2_0();
  v11 = v10 - v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08378);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_77();
  v13 = a1(0);
  sub_1BC9660CC(v2 + *(v13 + 20), v3, &qword_1EBD08378);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1BCE1C410();
    OUTLINED_FUNCTION_4();
    return (*(v14 + 32))(v1, v3);
  }

  else
  {
    sub_1BCE1D8C0();
    v16 = sub_1BCE1C1F0();
    sub_1BCE1AC20();

    sub_1BCE1BC10();
    swift_getAtKeyPath();

    return (*(v7 + 8))(v11, v5);
  }
}

uint64_t sub_1BCB70350@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v29 = a1;
  v26 = sub_1BCE1C100();
  v3 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0A028);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v24 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0A030);
  v10 = *(v9 - 8);
  v27 = v9;
  v28 = v10;
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v24 - v11;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0A038);
  MEMORY[0x1EEE9AC00](v25);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v24 - v16;
  *v8 = sub_1BCE1BC90();
  *(v8 + 1) = 0;
  v8[16] = 0;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0A040);
  sub_1BCB70730(v2, &v8[*(v18 + 44)]);
  sub_1BCE1C0E0();
  v19 = sub_1BCB7A3DC(&unk_1EDA1B590);
  sub_1BCE1C930();
  (*(v3 + 8))(v5, v26);
  sub_1BCA5B44C(v8, &qword_1EBD0A028);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD0C550);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_1BCE3E050;
  type metadata accessor for CurrentObservationViewAttributes();
  *(v20 + 32) = sub_1BCE1A6D0();
  *(v20 + 40) = v21;
  v30 = v6;
  v31 = v19;
  swift_getOpaqueTypeConformance2();
  sub_1BC970820();
  v22 = v27;
  sub_1BCE1C940();

  (*(v28 + 8))(v12, v22);
  sub_1BCE1B8A0();
  sub_1BCA5B44C(v14, &qword_1EBD0A038);
  sub_1BCB79CEC();
  sub_1BCE1C750();
  return sub_1BCA5B44C(v17, &qword_1EBD0A038);
}

uint64_t sub_1BCB70730@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v114 = a2;
  v105 = sub_1BCE1C100();
  v104 = *(v105 - 8);
  MEMORY[0x1EEE9AC00](v105);
  v103 = &v89 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = sub_1BCE1CC00();
  v96 = *(v97 - 8);
  MEMORY[0x1EEE9AC00](v97);
  v94 = &v89 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0A048);
  v92 = *(v93 - 8);
  MEMORY[0x1EEE9AC00](v93);
  v115 = &v89 - v5;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0A050);
  MEMORY[0x1EEE9AC00](v90);
  v91 = &v89 - v6;
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0A058);
  MEMORY[0x1EEE9AC00](v99);
  v95 = &v89 - v7;
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0A060);
  v101 = *(v102 - 8);
  MEMORY[0x1EEE9AC00](v102);
  v100 = &v89 - v8;
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0A068);
  MEMORY[0x1EEE9AC00](v112);
  v98 = &v89 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0A070);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v113 = &v89 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v116 = &v89 - v13;
  v109 = sub_1BCE1C410();
  v108 = *(v109 - 8);
  MEMORY[0x1EEE9AC00](v109);
  v107 = &v89 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for CurrentObservationViewAttributes();
  v16 = a1;
  v118 = sub_1BCE1A6D0();
  v119 = v17;
  v89 = sub_1BC970820();
  v18 = sub_1BCE1C6A0();
  v20 = v19;
  v22 = v21;
  v23 = v16;
  v24 = sub_1BCE1C5C0();
  v26 = v25;
  LOBYTE(v16) = v27;
  sub_1BC998CF4(v18, v20, v22 & 1);

  v106 = *(v23 + *(v15 + 100));
  v28 = sub_1BCE1C610();
  v30 = v29;
  v32 = v31;
  sub_1BC998CF4(v24, v26, v16 & 1);

  v111 = sub_1BCE1C530();
  v110 = v33;
  LOBYTE(v26) = v34;
  v36 = v35;
  v37 = v32 & 1;
  v38 = v15;
  sub_1BC998CF4(v28, v30, v37);

  v39 = v107;
  v40 = v23;
  sub_1BCB70170(type metadata accessor for LocationView);
  v41 = sub_1BCE1C2A0();
  CTFontGetCapHeight(v41);

  (*(v108 + 8))(v39, v109);
  sub_1BCE1CEE0();
  v42 = 1;
  sub_1BCE1B610();
  LODWORD(v109) = v26 & 1;
  v43 = v38[9];
  v44 = v23;
  v45 = *(v23 + v43);
  if (v45 == 2)
  {
    if (qword_1EBD07240 != -1)
    {
      swift_once();
    }

    v108 = v36;
    v47 = qword_1EBD0B838;
  }

  else
  {
    v46 = v116;
    if (v45 == 3)
    {
      goto LABEL_11;
    }

    v108 = v36;
    v47 = sub_1BCE1CBA0();
  }

  v107 = v47;
  v48 = *(v40 + v38[12]);
  KeyPath = swift_getKeyPath();
  v50 = *(v44 + v38[13]);
  v51 = swift_getKeyPath();
  v118 = v47;
  v119 = KeyPath;
  v120 = v48;
  v121 = v51;
  *&v122 = v50;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0A080);
  sub_1BCB79E18();
  sub_1BCE1C7B0();

  v52 = v96;
  if (*(v44 + v43) == 2)
  {
    v53 = MEMORY[0x1E69816E0];
  }

  else
  {
    v53 = MEMORY[0x1E69816C8];
  }

  v54 = v94;
  v55 = v97;
  (*(v96 + 104))(v94, *v53, v97);
  v56 = swift_getKeyPath();
  v57 = v91;
  v58 = &v91[*(v90 + 36)];
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD09430);
  (*(v52 + 32))(v58 + *(v59 + 28), v54, v55);
  *v58 = v56;
  (*(v92 + 32))(v57, v115, v93);
  LOBYTE(v56) = sub_1BCE1C280();
  sub_1BCE1B4A0();
  v61 = v60;
  v63 = v62;
  v65 = v64;
  v67 = v66;
  v68 = v95;
  sub_1BC999734(v57, v95, &qword_1EBD0A050);
  v69 = v99;
  v70 = v68 + *(v99 + 36);
  *v70 = v56;
  *(v70 + 8) = v61;
  *(v70 + 16) = v63;
  *(v70 + 24) = v65;
  *(v70 + 32) = v67;
  *(v70 + 40) = 0;
  v71 = v103;
  sub_1BCE1C0D0();
  v72 = sub_1BCB79F88();
  v73 = v100;
  sub_1BCE1C930();
  (*(v104 + 8))(v71, v105);
  sub_1BCA5B44C(v68, &qword_1EBD0A058);
  LOBYTE(__src[0]) = *(v44 + v43);
  v118 = CurrentObservationViewAttributes.LocationStyle.accessibilityLabel.getter();
  v119 = v74;
  v75 = sub_1BCE1C6A0();
  v77 = v76;
  LOBYTE(v54) = v78;
  v118 = v69;
  v119 = v72;
  swift_getOpaqueTypeConformance2();
  v79 = v98;
  v80 = v102;
  sub_1BCE1C8D0();
  sub_1BC998CF4(v75, v77, v54 & 1);

  (*(v101 + 8))(v73, v80);
  v46 = v116;
  sub_1BC999734(v79, v116, &qword_1EBD0A068);
  v42 = 0;
  v36 = v108;
LABEL_11:
  __swift_storeEnumTagSinglePayload(v46, v42, 1, v112);
  v81 = v113;
  sub_1BC9660CC(v46, v113, &qword_1EBD0A070);
  v82 = v111;
  *&__src[0] = v111;
  v83 = v110;
  *(&__src[0] + 1) = v110;
  v84 = v109;
  LOBYTE(__src[1]) = v109;
  *(&__src[1] + 1) = *v125;
  DWORD1(__src[1]) = *&v125[3];
  v85 = v36;
  *(&__src[1] + 1) = v36;
  __src[2] = v126;
  __src[3] = v127;
  __src[4] = v128;
  v86 = v114;
  memcpy(v114, __src, 0x50uLL);
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0A078);
  sub_1BC9660CC(v81, v86 + *(v87 + 48), &qword_1EBD0A070);
  sub_1BC9660CC(__src, &v118, &qword_1EBD09068);
  sub_1BCA5B44C(v46, &qword_1EBD0A070);
  sub_1BCA5B44C(v81, &qword_1EBD0A070);
  v118 = v82;
  v119 = v83;
  LOBYTE(v120) = v84;
  *(&v120 + 1) = *v125;
  HIDWORD(v120) = *&v125[3];
  v121 = v85;
  v122 = v126;
  v123 = v127;
  v124 = v128;
  return sub_1BCA5B44C(&v118, &qword_1EBD09068);
}

uint64_t DegreesConditionView.init(viewAttributes:)@<X0>(uint64_t a1@<X8>)
{
  v2 = *(type metadata accessor for DegreesConditionView(0) + 20);
  *(a1 + v2) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08378);
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_5_33();
  v3 = OUTLINED_FUNCTION_10_1();
  return sub_1BCB6D31C(v3, v4, v5);
}

double DegreesConditionView.body.getter()
{
  OUTLINED_FUNCTION_19_1();
  v3 = sub_1BCE1C410();
  OUTLINED_FUNCTION_2();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_2_0();
  v9 = v8 - v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD09DE0);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_66();
  sub_1BCB7163C(v1);
  sub_1BCB784BC();
  sub_1BCE1C960();
  sub_1BCA5B44C(v2, &qword_1EBD09DE0);
  type metadata accessor for CurrentObservationViewAttributes();
  v11 = OUTLINED_FUNCTION_9_26();
  sub_1BCB70170(v11);
  v12 = sub_1BCE1C2A0();
  CTFontGetCapHeight(v12);

  (*(v5 + 8))(v9, v3);
  sub_1BCE1CEE0();
  sub_1BCE1B610();
  v13 = (v0 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD09E00) + 36));
  *v13 = v15;
  v13[1] = v16;
  result = *&v17;
  v13[2] = v17;
  return result;
}

uint64_t sub_1BCB7163C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD09DF8);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v18 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0A100);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v18 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD09DF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v18 - v9;
  v11 = *(a1 + *(type metadata accessor for CurrentObservationViewAttributes() + 108));
  v12 = sub_1BCE1C200();
  if (v11 == 1)
  {
    *v10 = v12;
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0A110);
    sub_1BCB7194C(a1, &v10[*(v13 + 44)]);
    sub_1BC9660CC(v10, v7, &qword_1EBD09DF0);
    swift_storeEnumTagMultiPayload();
    sub_1BCB7A3DC(&unk_1EDA1BBC8);
    sub_1BCB7A3DC(&unk_1EDA1BBC0);
    sub_1BCE1BF60();
    v14 = v10;
    v15 = &qword_1EBD09DF0;
  }

  else
  {
    *v4 = v12;
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0A108);
    sub_1BCB72068(a1, &v4[*(v16 + 44)]);
    sub_1BC9660CC(v4, v7, &qword_1EBD09DF8);
    swift_storeEnumTagMultiPayload();
    sub_1BCB7A3DC(&unk_1EDA1BBC8);
    sub_1BCB7A3DC(&unk_1EDA1BBC0);
    sub_1BCE1BF60();
    v14 = v4;
    v15 = &qword_1EBD09DF8;
  }

  return sub_1BCA5B44C(v14, v15);
}

uint64_t sub_1BCB7194C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a2;
  v3 = type metadata accessor for DegreesView(0);
  v4 = v3 - 8;
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v28 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0A118);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v28 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0A120);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v28 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v28 - v20;
  *v21 = sub_1BCE1BC90();
  *(v21 + 1) = 0;
  v21[16] = 1;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0A128);
  sub_1BCB724DC(a1, 2u, &v21[*(v22 + 44)]);
  *v15 = sub_1BCE1BC90();
  *(v15 + 1) = 0;
  v15[16] = 1;
  v23 = &v15[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0A130) + 44)];
  sub_1BCB797A8(a1, v9, type metadata accessor for CurrentObservationViewAttributes);
  *&v9[*(v4 + 28)] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08378);
  swift_storeEnumTagMultiPayload();
  sub_1BCB797A8(v9, v6, type metadata accessor for DegreesView);
  sub_1BCB797A8(v6, v23, type metadata accessor for DegreesView);
  v24 = v23 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0A138) + 48);
  *v24 = 0;
  *(v24 + 8) = 1;
  sub_1BCB79750(v9, type metadata accessor for DegreesView);
  sub_1BCB79750(v6, type metadata accessor for DegreesView);
  sub_1BC9660CC(v21, v18, &qword_1EBD0A120);
  sub_1BC9660CC(v15, v12, &qword_1EBD0A118);
  v25 = v29;
  sub_1BC9660CC(v18, v29, &qword_1EBD0A120);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0A140);
  sub_1BC9660CC(v12, v25 + *(v26 + 48), &qword_1EBD0A118);
  sub_1BCA5B44C(v15, &qword_1EBD0A118);
  sub_1BCA5B44C(v21, &qword_1EBD0A120);
  sub_1BCA5B44C(v12, &qword_1EBD0A118);
  return sub_1BCA5B44C(v18, &qword_1EBD0A120);
}

uint64_t sub_1BCB71CE8(unsigned __int8 *a1)
{
  OUTLINED_FUNCTION_19_1();
  sub_1BCE1C410();
  OUTLINED_FUNCTION_2();
  v55 = v6;
  v56 = v5;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_2_0();
  v53 = v8 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07890);
  OUTLINED_FUNCTION_14(v9);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_66();
  v11 = type metadata accessor for NSUnitTemperature.BaseWeatherFormatStyle(0);
  v12 = OUTLINED_FUNCTION_14(v11);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_3();
  v15 = v13 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v47 - v17;
  v54 = *a1;
  v19 = type metadata accessor for CurrentObservationViewAttributes();
  v48 = v2 + *(v19 + 20);
  v20 = v48;
  v49 = v19;
  v21 = type metadata accessor for DailyForecastViewModel();
  v52 = *(v21 + 24);
  static Set<>.full.getter();
  sub_1BCE19280();
  OUTLINED_FUNCTION_28_5();

  sub_1BCA5B44C(v3, &qword_1EBD07890);
  NSUnitTemperature.BaseWeatherFormatStyle.secondary.getter();
  sub_1BCB79750(v18, type metadata accessor for NSUnitTemperature.BaseWeatherFormatStyle);
  sub_1BCE1A3E0();
  v22 = sub_1BCE1A3A0();
  v25 = OUTLINED_FUNCTION_13_21(v22, v23, v24, v20 + v52);
  v51 = v26;
  v52 = v25;

  sub_1BCB79750(v15, type metadata accessor for NSUnitTemperature.BaseWeatherFormatStyle);
  v27 = *(v21 + 28);
  static Set<>.full.getter();
  OUTLINED_FUNCTION_28_5();

  sub_1BCA5B44C(v3, &qword_1EBD07890);
  NSUnitTemperature.BaseWeatherFormatStyle.secondary.getter();
  sub_1BCB79750(v18, type metadata accessor for NSUnitTemperature.BaseWeatherFormatStyle);
  v28 = sub_1BCE1A3A0();
  v31 = OUTLINED_FUNCTION_13_21(v28, v29, v30, v48 + v27);
  v33 = v32;

  sub_1BCB79750(v15, type metadata accessor for NSUnitTemperature.BaseWeatherFormatStyle);
  v34 = *(v50 + *(v49 + 92));

  v35 = sub_1BCE1CEC0();
  v37 = v36;
  v38 = OUTLINED_FUNCTION_9_26();
  v39 = v53;
  sub_1BCB70170(v38);
  v40 = sub_1BCE1C2A0();
  CapHeight = CTFontGetCapHeight(v40);

  (*(v55 + 8))(v39, v56);
  v42 = sub_1BCE1CAB0();
  v43 = sub_1BCE1CAB0();
  v44 = *(type metadata accessor for TemperatureHighLowText() + 52);
  *(v1 + v44) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08430);
  result = swift_storeEnumTagMultiPayload();
  v46 = v51;
  *v1 = v52;
  *(v1 + 8) = v46;
  *(v1 + 16) = v31;
  *(v1 + 24) = v33;
  *(v1 + 40) = v43;
  *(v1 + 48) = v42;
  *(v1 + 56) = v54;
  *(v1 + 64) = v35;
  *(v1 + 72) = v37;
  *(v1 + 80) = 1;
  *(v1 + 88) = CapHeight;
  *(v1 + 32) = v34;
  return result;
}

uint64_t sub_1BCB72068@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v37 = a2;
  v3 = type metadata accessor for DegreesView(0);
  v4 = v3 - 8;
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v34 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0A118);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v36 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v34 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0A120);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v35 = &v34 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v34 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v34 - v21;
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v34 - v24;
  *v25 = sub_1BCE1BC90();
  *(v25 + 1) = 0;
  v25[16] = 1;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0A128);
  sub_1BCB724DC(a1, 1u, &v25[*(v26 + 44)]);
  *v22 = sub_1BCE1BC90();
  *(v22 + 1) = 0;
  v22[16] = 1;
  sub_1BCB724DC(a1, 2u, &v22[*(v26 + 44)]);
  *v14 = sub_1BCE1BC90();
  *(v14 + 1) = 0;
  v14[16] = 1;
  v27 = &v14[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0A130) + 44)];
  sub_1BCB797A8(a1, v9, type metadata accessor for CurrentObservationViewAttributes);
  *&v9[*(v4 + 28)] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08378);
  swift_storeEnumTagMultiPayload();
  sub_1BCB797A8(v9, v6, type metadata accessor for DegreesView);
  sub_1BCB797A8(v6, v27, type metadata accessor for DegreesView);
  v28 = v27 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0A138) + 48);
  *v28 = 0;
  *(v28 + 8) = 1;
  sub_1BCB79750(v9, type metadata accessor for DegreesView);
  sub_1BCB79750(v6, type metadata accessor for DegreesView);
  v34 = v19;
  sub_1BC9660CC(v25, v19, &qword_1EBD0A120);
  v29 = v35;
  sub_1BC9660CC(v22, v35, &qword_1EBD0A120);
  v30 = v36;
  sub_1BC9660CC(v14, v36, &qword_1EBD0A118);
  v31 = v37;
  sub_1BC9660CC(v19, v37, &qword_1EBD0A120);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0A150);
  sub_1BC9660CC(v29, v31 + *(v32 + 48), &qword_1EBD0A120);
  sub_1BC9660CC(v30, v31 + *(v32 + 64), &qword_1EBD0A118);
  sub_1BCA5B44C(v14, &qword_1EBD0A118);
  sub_1BCA5B44C(v22, &qword_1EBD0A120);
  sub_1BCA5B44C(v25, &qword_1EBD0A120);
  sub_1BCA5B44C(v30, &qword_1EBD0A118);
  sub_1BCA5B44C(v29, &qword_1EBD0A120);
  return sub_1BCA5B44C(v34, &qword_1EBD0A120);
}

uint64_t sub_1BCB724DC@<X0>(uint64_t a1@<X0>, unsigned __int8 a2@<W1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for TemperatureHighLowText();
  v7 = OUTLINED_FUNCTION_14(v6);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_3();
  v10 = v8 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v27[-v12];
  v14 = type metadata accessor for DegreesView(0);
  v15 = v14 - 8;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_3();
  v18 = v16 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v27[-v20];
  sub_1BCB797A8(a1, &v27[-v20], type metadata accessor for CurrentObservationViewAttributes);
  *&v21[*(v15 + 28)] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08378);
  swift_storeEnumTagMultiPayload();
  v28 = a2;
  sub_1BCB71CE8(&v28);
  sub_1BCB797A8(v21, v18, type metadata accessor for DegreesView);
  sub_1BCB797A8(v13, v10, type metadata accessor for TemperatureHighLowText);
  sub_1BCB797A8(v18, a3, type metadata accessor for DegreesView);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0A148);
  v23 = a3 + *(v22 + 48);
  *v23 = 0;
  *(v23 + 8) = 1;
  sub_1BCB797A8(v10, a3 + *(v22 + 64), type metadata accessor for TemperatureHighLowText);
  sub_1BCB79750(v13, type metadata accessor for TemperatureHighLowText);
  sub_1BCB79750(v21, type metadata accessor for DegreesView);
  v24 = OUTLINED_FUNCTION_10_1();
  sub_1BCB79750(v24, v25);
  return sub_1BCB79750(v18, type metadata accessor for DegreesView);
}

uint64_t LocationIconView.body.getter()
{
  v2 = sub_1BCE1C100();
  OUTLINED_FUNCTION_2();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_2_0();
  v8 = v7 - v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD09E08);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_66();
  *v1 = sub_1BCE1BC90();
  *(v1 + 8) = 0;
  *(v1 + 16) = 0;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD09E10);
  sub_1BCB728E4(v0, v1 + *(v10 + 44));
  sub_1BCE1C0E0();
  sub_1BCB7A3DC(&unk_1EDA1B598);
  sub_1BCE1C930();
  (*(v4 + 8))(v8, v2);
  return sub_1BCA5B44C(v1, &qword_1EBD09E08);
}

uint64_t sub_1BCB728E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v39 = a2;
  v35 = sub_1BCE1C100();
  v3 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v5 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = type metadata accessor for IconView(0);
  MEMORY[0x1EEE9AC00](v33);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0A0E8);
  v9 = *(v8 - 8);
  v37 = v8;
  v38 = v9;
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v32 - v10;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0A0F0);
  MEMORY[0x1EEE9AC00](v36);
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v32 - v15;
  v17 = type metadata accessor for LocationView(0);
  v18 = v17 - 8;
  MEMORY[0x1EEE9AC00](v17);
  v34 = &v32 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v32 - v21;
  sub_1BCB797A8(a1, &v32 - v21, type metadata accessor for CurrentObservationViewAttributes);
  *&v22[*(v18 + 28)] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08378);
  swift_storeEnumTagMultiPayload();
  sub_1BCB797A8(a1, v7, type metadata accessor for CurrentObservationViewAttributes);
  sub_1BCE1C0D0();
  v23 = sub_1BCB7970C(&unk_1EDA17030);
  v24 = v33;
  sub_1BCE1C930();
  (*(v3 + 8))(v5, v35);
  sub_1BCB79750(v7, type metadata accessor for IconView);
  type metadata accessor for CurrentObservationViewModel();
  type metadata accessor for ConditionViewModel();
  v42 = sub_1BCE19930();
  v43 = v25;
  v40 = v24;
  v41 = v23;
  swift_getOpaqueTypeConformance2();
  sub_1BC970820();
  v26 = v37;
  sub_1BCE1C8E0();

  (*(v38 + 8))(v11, v26);
  sub_1BCE1B8A0();
  sub_1BCA5B44C(v13, &qword_1EBD0A0F0);
  v27 = v34;
  sub_1BCB797A8(v22, v34, type metadata accessor for LocationView);
  sub_1BC9660CC(v16, v13, &qword_1EBD0A0F0);
  v28 = v39;
  sub_1BCB797A8(v27, v39, type metadata accessor for LocationView);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0A0F8);
  v30 = v28 + *(v29 + 48);
  *v30 = 0x4010000000000000;
  *(v30 + 8) = 0;
  sub_1BC9660CC(v13, v28 + *(v29 + 64), &qword_1EBD0A0F0);
  sub_1BCA5B44C(v16, &qword_1EBD0A0F0);
  sub_1BCB79750(v22, type metadata accessor for LocationView);
  sub_1BCA5B44C(v13, &qword_1EBD0A0F0);
  return sub_1BCB79750(v27, type metadata accessor for LocationView);
}

uint64_t LocationDegreesView.body.getter@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_1BCE1BE00();
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD09E18);
  return sub_1BCB72E64(v1, a1 + *(v3 + 44));
}

uint64_t sub_1BCB72E64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v39 = type metadata accessor for DegreesView(0);
  MEMORY[0x1EEE9AC00](v39);
  v40 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v26 - v6;
  v8 = type metadata accessor for LocationView(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v26 - v12;
  if (*(a1 + *(type metadata accessor for CurrentObservationViewAttributes() + 136)) == 0.0)
  {
    v38 = 0;
    v36 = 0;
    v35 = 0;
    v34 = 0;
    v33 = 0;
    v32 = 0;
    v31 = 0;
    v37 = 1;
  }

  else
  {
    sub_1BCE1CEE0();
    sub_1BCE1B610();
    v37 = 0;
    v38 = v44;
    v36 = v46;
    v35 = v48;
    v34 = v49;
    v43 = 1;
    v42 = v45;
    v41 = v47;
    v31 = 1;
    v32 = v45;
    v33 = v47;
    LOBYTE(v50) = 0;
  }

  sub_1BCB797A8(a1, v13, type metadata accessor for CurrentObservationViewAttributes);
  *&v13[*(v8 + 20)] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08378);
  swift_storeEnumTagMultiPayload();
  sub_1BCE1CEE0();
  sub_1BCE1B610();
  v30 = v50;
  v29 = v52;
  v28 = v54;
  v27 = v55;
  v43 = 1;
  v42 = v51;
  v41 = v53;
  sub_1BCB797A8(a1, v7, type metadata accessor for CurrentObservationViewAttributes);
  *&v7[*(v39 + 5)] = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  sub_1BCB797A8(v13, v10, type metadata accessor for LocationView);
  v14 = v43;
  v15 = v42;
  v39 = v13;
  v16 = v41;
  v17 = v40;
  sub_1BCB797A8(v7, v40, type metadata accessor for DegreesView);
  v18 = v31;
  *a2 = 0;
  *(a2 + 8) = v18;
  v19 = v32;
  *(a2 + 16) = v38;
  *(a2 + 24) = v19;
  v20 = v33;
  *(a2 + 32) = v36;
  *(a2 + 40) = v20;
  v21 = v34;
  *(a2 + 48) = v35;
  *(a2 + 56) = v21;
  *(a2 + 64) = v37;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0A0E0);
  sub_1BCB797A8(v10, a2 + v22[12], type metadata accessor for LocationView);
  v23 = a2 + v22[16];
  *v23 = 0;
  *(v23 + 8) = v14;
  *(v23 + 16) = v30;
  *(v23 + 24) = v15;
  *(v23 + 32) = v29;
  *(v23 + 40) = v16;
  v24 = v27;
  *(v23 + 48) = v28;
  *(v23 + 56) = v24;
  sub_1BCB797A8(v17, a2 + v22[20], type metadata accessor for DegreesView);
  sub_1BCB79750(v7, type metadata accessor for DegreesView);
  sub_1BCB79750(v39, type metadata accessor for LocationView);
  sub_1BCB79750(v17, type metadata accessor for DegreesView);
  return sub_1BCB79750(v10, type metadata accessor for LocationView);
}

uint64_t sub_1BCB73304@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1BCE1BC20();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08378);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for ConditionDescriptionView(0);
  sub_1BC9660CC(v1 + *(v10 + 24), v9, &qword_1EBD08378);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_1BCE1C410();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_1BCE1D8C0();
    v13 = sub_1BCE1C1F0();
    sub_1BCE1AC20();

    sub_1BCE1BC10();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_1BCB73510()
{
  v1 = sub_1BCE1C410();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD09E50);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v12 - v6;
  sub_1BCB736C4(v0, &v12 - v6);
  type metadata accessor for CurrentObservationViewAttributes();
  sub_1BCB73304(v4);
  v8 = sub_1BCE1C2A0();
  Descent = CTFontGetDescent(v8);

  (*(v2 + 8))(v4, v1);
  v10 = &v7[*(v5 + 36)];
  *v10 = 0.0;
  v10[1] = Descent;
  sub_1BCB7917C();
  sub_1BCE1C960();
  return sub_1BCA5B44C(v7, &qword_1EBD09E50);
}

uint64_t sub_1BCB736C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v251 = a2;
  v252 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD09E68);
  MEMORY[0x1EEE9AC00](v252);
  v247 = (&v188 - v3);
  v262 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD09E70);
  MEMORY[0x1EEE9AC00](v262);
  v5 = &v188 - v4;
  v241 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD09E78);
  MEMORY[0x1EEE9AC00](v241);
  v221 = &v188 - v6;
  v220 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD09E80);
  MEMORY[0x1EEE9AC00](v220);
  v207 = (&v188 - v7);
  v216 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD09E88);
  MEMORY[0x1EEE9AC00](v216);
  v218 = &v188 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07890);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v205 = &v188 - v10;
  v11 = type metadata accessor for NSUnitTemperature.BaseWeatherFormatStyle(0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v206 = (&v188 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v13);
  v204 = &v188 - v14;
  v208 = type metadata accessor for TemperatureHighLowTextVertical();
  MEMORY[0x1EEE9AC00](v208);
  v209 = &v188 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v233 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD09E90);
  MEMORY[0x1EEE9AC00](v233);
  v210 = &v188 - v16;
  v215 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD09E98);
  v196 = *(v215 - 8);
  MEMORY[0x1EEE9AC00](v215);
  v195 = &v188 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD09EA0);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v217 = &v188 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v219 = &v188 - v21;
  v232 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD09EA8);
  MEMORY[0x1EEE9AC00](v232);
  v202 = &v188 - v22;
  v199 = sub_1BCE1C410();
  v198 = *(v199 - 8);
  MEMORY[0x1EEE9AC00](v199);
  v197 = &v188 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD09EB0);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v201 = &v188 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v200 = (&v188 - v27);
  v239 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD09EB8);
  MEMORY[0x1EEE9AC00](v239);
  v240 = &v188 - v28;
  v235 = sub_1BCE1B7E0();
  v234 = *(v235 - 8);
  MEMORY[0x1EEE9AC00](v235);
  v231 = &v188 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD09EC0);
  MEMORY[0x1EEE9AC00](v30);
  v203 = &v188 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32);
  v213 = &v188 - v33;
  v228 = sub_1BCE1C100();
  v226 = *(v228 - 8);
  MEMORY[0x1EEE9AC00](v228);
  v223 = &v188 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v225 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD09EC8);
  MEMORY[0x1EEE9AC00](v225);
  v222 = (&v188 - v35);
  v229 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD09ED0);
  v227 = *(v229 - 8);
  MEMORY[0x1EEE9AC00](v229);
  v224 = &v188 - v36;
  v236 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD09ED8);
  MEMORY[0x1EEE9AC00](v236);
  v230 = &v188 - v37;
  v238 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD09EE0);
  v212 = *(v238 - 8);
  MEMORY[0x1EEE9AC00](v238);
  v211 = &v188 - v38;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD09EE8);
  MEMORY[0x1EEE9AC00](v39 - 8);
  v214 = &v188 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v41);
  v243 = &v188 - v42;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08328);
  MEMORY[0x1EEE9AC00](v43 - 8);
  v244 = &v188 - v44;
  v245 = type metadata accessor for RainInlineContentViewModel();
  MEMORY[0x1EEE9AC00](v245);
  v242 = &v188 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD09EF0);
  MEMORY[0x1EEE9AC00](v46);
  v237 = &v188 - v47;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD09EF8);
  MEMORY[0x1EEE9AC00](v48 - 8);
  v250 = &v188 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v50);
  v261 = &v188 - v51;
  v258 = sub_1BCE19260();
  v257 = *(v258 - 8);
  MEMORY[0x1EEE9AC00](v258);
  v256 = &v188 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  v260 = sub_1BCE19280();
  v255 = *(v260 - 8);
  MEMORY[0x1EEE9AC00](v260);
  v254 = &v188 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  v253 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD09F00);
  MEMORY[0x1EEE9AC00](v253);
  v55 = &v188 - v54;
  v56 = type metadata accessor for IconView(0);
  MEMORY[0x1EEE9AC00](v56 - 8);
  v58 = &v188 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v59);
  v61 = &v188 - v60;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD09F08);
  MEMORY[0x1EEE9AC00](v62 - 8);
  v64 = &v188 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v65);
  v67 = &v188 - v66;
  v259 = type metadata accessor for CurrentObservationViewAttributes();
  v68 = *(a1 + *(v259 + 120)) == 1;
  v246 = v30;
  v249 = v46;
  if (v68)
  {
    sub_1BCB797A8(a1, v61, type metadata accessor for CurrentObservationViewAttributes);
    sub_1BCE1CEE0();
    v248 = v5;
    sub_1BCE1B610();
    v194 = v269;
    v193 = v271;
    v192 = v273;
    v191 = v274;
    LOBYTE(v275) = 1;
    LOBYTE(v265) = v270;
    v264 = v272;
    sub_1BCB797A8(v61, v58, type metadata accessor for IconView);
    v69 = v275;
    v70 = v265;
    v71 = v264;
    sub_1BCB797A8(v58, v55, type metadata accessor for IconView);
    v72 = &v55[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD09F60) + 48)];
    *v72 = 0;
    v72[8] = v69;
    *(v72 + 2) = v194;
    v72[24] = v70;
    *(v72 + 4) = v193;
    v72[40] = v71;
    v73 = v191;
    *(v72 + 6) = v192;
    *(v72 + 7) = v73;
    sub_1BCB79750(v61, type metadata accessor for IconView);
    v5 = v248;
    sub_1BCB79750(v58, type metadata accessor for IconView);
    sub_1BC999734(v55, v67, &qword_1EBD09F00);
    v74 = v67;
    v75 = 0;
  }

  else
  {
    v74 = v67;
    v75 = 1;
  }

  __swift_storeEnumTagSinglePayload(v74, v75, 1, v253);
  v76 = v254;
  sub_1BCE191B0();
  v77 = v256;
  sub_1BCE19270();
  (*(v255 + 8))(v76, v260);
  v78 = sub_1BCE191E0();
  (*(v257 + 8))(v77, v258);
  v79 = v259;
  v80 = (a1 + *(v259 + 32));
  v82 = *v80;
  v81 = v80[1];
  v83 = v82 & 0xFFFFFFFFFFFFLL;
  if ((v81 & 0x2000000000000000) != 0)
  {
    v84 = HIBYTE(v81) & 0xF;
  }

  else
  {
    v84 = v83;
  }

  v85 = v261;
  v86 = a1;
  if (v84)
  {
    v87 = sub_1BCE1BDF0();
    v88 = v247;
    *v247 = v87;
    *(v88 + 8) = 0;
    *(v88 + 16) = 1;
    v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD09F10);
    sub_1BCB77010(a1, (v88 + *(v89 + 44)));
    sub_1BC9660CC(v88, v5, &qword_1EBD09E68);
    swift_storeEnumTagMultiPayload();
    sub_1BCB7925C();
    sub_1BCB7A3DC(&unk_1EDA1B528);
    sub_1BCE1BF60();
    sub_1BCA5B44C(v88, &qword_1EBD09E68);
    v90 = v251;
LABEL_24:
    sub_1BC9660CC(v67, v64, &qword_1EBD09F08);
    v186 = v250;
    sub_1BC9660CC(v85, v250, &qword_1EBD09EF8);
    sub_1BC9660CC(v64, v90, &qword_1EBD09F08);
    v187 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD09F18);
    sub_1BC9660CC(v186, v90 + *(v187 + 48), &qword_1EBD09EF8);
    sub_1BCA5B44C(v85, &qword_1EBD09EF8);
    sub_1BCA5B44C(v67, &qword_1EBD09F08);
    sub_1BCA5B44C(v186, &qword_1EBD09EF8);
    return sub_1BCA5B44C(v64, &qword_1EBD09F08);
  }

  v91 = v244;
  sub_1BC9660CC(a1 + *(v259 + 24), v244, &qword_1EBD08328);
  v92 = v79;
  v93 = v245;
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v91, 1, v245);
  v248 = v5;
  v190 = v64;
  v189 = v67;
  if (EnumTagSinglePayload == 1)
  {
    sub_1BCA5B44C(v91, &qword_1EBD08328);
    if (*(v86 + v79[29]))
    {
      v95 = sub_1BCE1BDF0();
      v96 = v200;
      *v200 = v95;
      *(v96 + 8) = 0;
      v97 = v86;
      *(v96 + 16) = 1;
      v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD09F48);
      sub_1BCB76470(v86, (v96 + *(v98 + 44)));
      v99 = v197;
      sub_1BCB73304(v197);
      v100 = sub_1BCE1C2A0();
      CTFontGetDescent(v100);

      (*(v198 + 8))(v99, v199);
      sub_1BCE1CEE0();
      sub_1BCE1B610();
      v258 = v275;
      v257 = v277;
      v101 = v280;
      v256 = v279;
      LOBYTE(v265) = 1;
      v264 = v276;
      v263 = v278;
      v102 = v201;
      sub_1BC9660CC(v96, v201, &qword_1EBD09EB0);
      v103 = v265;
      v104 = v264;
      v105 = v263;
      v106 = v202;
      sub_1BC9660CC(v102, v202, &qword_1EBD09EB0);
      v107 = v106 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD09F50) + 48);
      *v107 = 0;
      *(v107 + 8) = v103;
      v86 = v97;
      *(v107 + 16) = v258;
      *(v107 + 24) = v104;
      *(v107 + 32) = v257;
      *(v107 + 40) = v105;
      *(v107 + 48) = v256;
      *(v107 + 56) = v101;
      sub_1BCA5B44C(v96, &qword_1EBD09EB0);
      sub_1BCA5B44C(v102, &qword_1EBD09EB0);
      v108 = v243;
      sub_1BC999734(v106, v243, &qword_1EBD09EA8);
      v109 = v108;
      v92 = v259;
      v110 = 0;
    }

    else
    {
      v109 = v243;
      v110 = 1;
    }

    __swift_storeEnumTagSinglePayload(v109, v110, 1, v232);
    v142 = v260;
    if (*(v86 + v92[28]) != 1)
    {
      v173 = sub_1BCE1BDF0();
      v174 = v207;
      *v207 = v173;
      *(v174 + 8) = 0;
      *(v174 + 16) = 1;
      v175 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD09F20);
      sub_1BCB76A10(v86, (v174 + *(v175 + 44)));
      sub_1BC9660CC(v174, v218, &qword_1EBD09E80);
      swift_storeEnumTagMultiPayload();
      v176 = sub_1BCB794DC();
      v177 = sub_1BCB7A3DC(&unk_1EDA16820);
      v265 = v233;
      v266 = v246;
      v267 = v176;
      v268 = v177;
      swift_getOpaqueTypeConformance2();
      sub_1BCB7A3DC(&unk_1EDA1B530);
      v172 = v219;
      sub_1BCE1BF60();
      sub_1BCA5B44C(v174, &qword_1EBD09E80);
      goto LABEL_22;
    }

    v257 = v86 + v92[5];
    v143 = type metadata accessor for DailyForecastViewModel();
    v260 = v86;
    v259 = *(v143 + 24);
    static Set<>.full.getter();
    v144 = v205;
    __swift_storeEnumTagSinglePayload(v205, 1, 1, v142);
    v145 = v204;
    static WeatherFormatStyle<>.weather(_:locale:)();

    sub_1BCA5B44C(v144, &qword_1EBD07890);
    v146 = v206;
    NSUnitTemperature.BaseWeatherFormatStyle.secondary.getter();
    sub_1BCB79750(v145, type metadata accessor for NSUnitTemperature.BaseWeatherFormatStyle);
    sub_1BCE1A3E0();
    v147 = sub_1BCE1A3A0();
    v148 = v257;
    v259 = sub_1BCB37580(v146, 0, v147, v257 + v259);
    v258 = v149;

    sub_1BCB79750(v146, type metadata accessor for NSUnitTemperature.BaseWeatherFormatStyle);
    v150 = *(v143 + 28);
    static Set<>.full.getter();
    __swift_storeEnumTagSinglePayload(v144, 1, 1, v142);
    static WeatherFormatStyle<>.weather(_:locale:)();

    sub_1BCA5B44C(v144, &qword_1EBD07890);
    NSUnitTemperature.BaseWeatherFormatStyle.secondary.getter();
    sub_1BCB79750(v145, type metadata accessor for NSUnitTemperature.BaseWeatherFormatStyle);
    v151 = sub_1BCE1A3A0();
    v152 = sub_1BCB37580(v146, 0, v151, v148 + v150);
    v154 = v153;

    sub_1BCB79750(v146, type metadata accessor for NSUnitTemperature.BaseWeatherFormatStyle);
    v155 = v260;
    v156 = *(v260 + v92[27]);
    KeyPath = swift_getKeyPath();
    v158 = v209;
    *(v209 + 7) = KeyPath;
    *(v158 + 64) = 0;
    v265 = 0x4008000000000000;
    sub_1BC97CA84();
    sub_1BCE1B570();
    v265 = 0x4024000000000000;
    sub_1BCE1B570();
    v265 = 0x4039000000000000;
    sub_1BCE1B570();
    v265 = 0x4018000000000000;
    sub_1BCE1B570();
    v159 = v258;
    *v158 = v259;
    *(v158 + 8) = v159;
    *(v158 + 16) = v152;
    *(v158 + 24) = v154;
    *(v158 + 32) = v156;
    *(v158 + 40) = xmmword_1BCE3A880;
    v160 = v210;
    TemperatureHighLowTextVertical.defaultAccessibilityLabel()();
    sub_1BCB79750(v158, type metadata accessor for TemperatureHighLowTextVertical);
    *(v160 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD09F28) + 36)) = xmmword_1BCE52D70;
    v161 = *(v155 + v92[12]);
    v162 = swift_getKeyPath();
    v163 = v233;
    v164 = (v160 + *(v233 + 36));
    *v164 = v162;
    v164[1] = v161;
    v165 = v203;
    (*(v234 + 104))(v203, *MEMORY[0x1E697E6E8], v235);
    sub_1BCB7970C(&unk_1EBD09F40);

    result = sub_1BCE1D210();
    if (result)
    {
      v166 = sub_1BCB794DC();
      v167 = sub_1BCB7A3DC(&unk_1EDA16820);
      v168 = v195;
      v169 = v246;
      sub_1BCE1C880();
      sub_1BCA5B44C(v165, &qword_1EBD09EC0);
      sub_1BCA5B44C(v160, &qword_1EBD09E90);
      v170 = v196;
      v171 = v215;
      (*(v196 + 16))(v218, v168, v215);
      swift_storeEnumTagMultiPayload();
      v265 = v163;
      v266 = v169;
      v267 = v166;
      v268 = v167;
      swift_getOpaqueTypeConformance2();
      sub_1BCB7A3DC(&unk_1EDA1B530);
      v172 = v219;
      sub_1BCE1BF60();
      (*(v170 + 8))(v168, v171);
LABEL_22:
      v141 = v248;
      v178 = v243;
      v179 = v214;
      sub_1BC9660CC(v243, v214, &qword_1EBD09EE8);
      v180 = v217;
      sub_1BC9660CC(v172, v217, &qword_1EBD09EA0);
      v181 = v221;
      sub_1BC9660CC(v179, v221, &qword_1EBD09EE8);
      v182 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD09F38);
      sub_1BC9660CC(v180, v181 + *(v182 + 48), &qword_1EBD09EA0);
      sub_1BCA5B44C(v180, &qword_1EBD09EA0);
      sub_1BCA5B44C(v179, &qword_1EBD09EE8);
      sub_1BC9660CC(v181, v240, &qword_1EBD09E78);
      swift_storeEnumTagMultiPayload();
      v183 = v172;
      v184 = sub_1BCB793B0();
      v185 = sub_1BCB7A3DC(&unk_1EDA16820);
      v265 = v236;
      v266 = v246;
      v267 = v184;
      v268 = v185;
      swift_getOpaqueTypeConformance2();
      sub_1BCB7A3DC(&unk_1EDA1B460);
      v140 = v237;
      sub_1BCE1BF60();
      sub_1BCA5B44C(v181, &qword_1EBD09E78);
      sub_1BCA5B44C(v183, &qword_1EBD09EA0);
      sub_1BCA5B44C(v178, &qword_1EBD09EE8);
      v90 = v251;
      goto LABEL_23;
    }
  }

  else
  {
    v111 = v91;
    v112 = v242;
    sub_1BCB6D31C(v111, v242, type metadata accessor for RainInlineContentViewModel);
    v113 = sub_1BCE1BE00();
    v114 = v93;
    v115 = v222;
    *v222 = v113;
    *(v115 + 8) = 0;
    *(v115 + 16) = 1;
    v116 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD09F58) + 44);
    v117 = v78 & 1;
    if (v78)
    {
      v118 = MEMORY[0x1E697E708];
    }

    else
    {
      v118 = MEMORY[0x1E697E728];
    }

    sub_1BCB75998(v117, v86, v112, (v115 + v116));
    v119 = v223;
    sub_1BCE1C0D0();
    v120 = sub_1BCB7A3DC(&unk_1EDA1B538);
    v121 = v224;
    v122 = v225;
    sub_1BCE1C930();
    (*(v226 + 8))(v119, v228);
    sub_1BCA5B44C(v115, &qword_1EBD09EC8);
    v123 = (v112 + *(v114 + 32));
    v125 = *v123;
    v124 = v123[1];
    v275 = v125;
    v276 = v124;
    v265 = v122;
    v266 = v120;
    swift_getOpaqueTypeConformance2();
    sub_1BC970820();
    v126 = v230;
    v127 = v229;
    sub_1BCE1C8F0();
    (*(v227 + 8))(v121, v127);
    v128 = v234;
    v129 = v231;
    v130 = v235;
    (*(v234 + 104))(v231, *v118, v235);
    sub_1BCB7970C(&unk_1EBD09F40);
    result = sub_1BCE1D210();
    if (result)
    {
      v132 = v213;
      (*(v128 + 32))(v213, v129, v130);
      v133 = sub_1BCB793B0();
      v134 = sub_1BCB7A3DC(&unk_1EDA16820);
      v135 = v211;
      v136 = v236;
      v137 = v246;
      sub_1BCE1C880();
      sub_1BCA5B44C(v132, &qword_1EBD09EC0);
      sub_1BCA5B44C(v126, &qword_1EBD09ED8);
      v138 = v212;
      v139 = v238;
      (*(v212 + 16))(v240, v135, v238);
      swift_storeEnumTagMultiPayload();
      v275 = v136;
      v276 = v137;
      v277 = v133;
      v278 = v134;
      swift_getOpaqueTypeConformance2();
      sub_1BCB7A3DC(&unk_1EDA1B460);
      v140 = v237;
      sub_1BCE1BF60();
      (*(v138 + 8))(v135, v139);
      sub_1BCB79750(v242, type metadata accessor for RainInlineContentViewModel);
      v90 = v251;
      v141 = v248;
LABEL_23:
      v85 = v261;
      sub_1BC9660CC(v140, v141, &qword_1EBD09EF0);
      swift_storeEnumTagMultiPayload();
      sub_1BCB7925C();
      sub_1BCB7A3DC(&unk_1EDA1B528);
      sub_1BCE1BF60();
      sub_1BCA5B44C(v140, &qword_1EBD09EF0);
      v64 = v190;
      v67 = v189;
      goto LABEL_24;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1BCB75998@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v122 = a3;
  v128 = a4;
  v6 = sub_1BCE18AF0();
  v120 = *(v6 - 8);
  v121 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v119 = &v100 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD09F68);
  v126 = *(v8 - 8);
  v127 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v125 = &v100 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v124 = &v100 - v11;
  v12 = sub_1BCE1C420();
  v106 = *(v12 - 8);
  v107 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v105 = &v100 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD09F70);
  MEMORY[0x1EEE9AC00](v109);
  v123 = &v100 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v130 = &v100 - v16;
  v17 = sub_1BCE1C410();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v100 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  LODWORD(v110) = a1;
  v102 = v18;
  v103 = v21;
  v101 = v20;
  if (a1)
  {
    v118 = 0;
    v115 = 0;
    v116 = 0;
    v113 = 0;
    v114 = 0;
    v111 = 0;
    v112 = 0;
    v117 = 1;
  }

  else
  {
    type metadata accessor for CurrentObservationViewAttributes();
    sub_1BCB73304(v20);
    v22 = sub_1BCE1C2A0();
    CTFontGetCapHeight(v22);

    (*(v18 + 8))(v20, v17);
    sub_1BCE1CEE0();
    sub_1BCE1B610();
    v117 = 0;
    v118 = v139;
    v115 = v143;
    v116 = v141;
    LOBYTE(v137[0]) = 1;
    LOBYTE(v151) = v140;
    LOBYTE(v145) = v142;
    v111 = 1;
    v112 = v140;
    v113 = v142;
    v114 = v144;
    v138[0] = 0;
  }

  sub_1BCE1BD30();
  v23 = sub_1BCE1C680();
  v25 = v24;
  v27 = v26;
  v28 = type metadata accessor for CurrentObservationViewAttributes();
  v29 = sub_1BCE1C5C0();
  v31 = v30;
  v33 = v32;
  v104 = v34;
  sub_1BC998CF4(v23, v25, v27 & 1);

  v129 = v28;
  v35 = *(v28 + 52);
  v108 = a2;
  v36 = *(a2 + v35);
  v38 = v105;
  v37 = v106;
  v39 = v107;
  (*(v106 + 104))(v105, *MEMORY[0x1E6980EA8], v107);
  v100 = v36;
  sub_1BCE1C450();
  (*(v37 + 8))(v38, v39);
  v40 = sub_1BCE1C610();
  v42 = v41;
  LOBYTE(v39) = v43;

  sub_1BC998CF4(v29, v31, v33 & 1);

  sub_1BCE1C3A0();
  v44 = sub_1BCE1C530();
  v46 = v45;
  v48 = v47;
  v50 = v49;
  sub_1BC998CF4(v40, v42, v39 & 1);

  KeyPath = swift_getKeyPath();
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD09F78);
  v53 = v130;
  v54 = (v130 + *(v52 + 36));
  v55 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD09F80) + 28);
  v56 = *MEMORY[0x1E6980FA8];
  v57 = sub_1BCE1C5B0();
  (*(*(v57 - 8) + 104))(v54 + v55, v56, v57);
  *v54 = swift_getKeyPath();
  *v53 = v44;
  *(v53 + 8) = v46;
  *(v53 + 16) = v48 & 1;
  *(v53 + 24) = v50;
  *(v53 + 32) = KeyPath;
  *(v53 + 40) = 0;
  v58 = swift_getKeyPath();
  v59 = v53 + *(v109 + 36);
  *v59 = v58;
  *(v59 + 8) = 2;
  *(v59 + 16) = 0;
  if (v110)
  {
    sub_1BCB798C4(v138);
  }

  else
  {
    v60 = v101;
    sub_1BCB73304(v101);
    v61 = sub_1BCE1C2A0();
    CTFontGetDescent(v61);

    v62 = v103;
    v63 = *(v102 + 8);
    v63(v60, v103);
    sub_1BCE1CEE0();
    sub_1BCE1B610();
    v109 = v147;
    v110 = v145;
    v64 = v149;
    v65 = v150;
    v133 = 1;
    v132 = v146;
    v131 = v148;
    sub_1BCB73304(v60);
    v66 = sub_1BCE1C2A0();
    CTFontGetCapHeight(v66);

    v63(v60, v62);
    sub_1BCE1CEE0();
    sub_1BCE1B610();
    v136 = 1;
    v135 = v152;
    v134 = v154;
    *&v137[0] = 0;
    BYTE8(v137[0]) = v133;
    *&v137[1] = v110;
    BYTE8(v137[1]) = v132;
    *&v137[2] = v109;
    BYTE8(v137[2]) = v131;
    *&v137[3] = v64;
    *(&v137[3] + 1) = v65;
    *&v137[4] = 0;
    BYTE8(v137[4]) = 1;
    *&v137[5] = v151;
    BYTE8(v137[5]) = v152;
    *&v137[6] = v153;
    BYTE8(v137[6]) = v154;
    v137[7] = v155;
    sub_1BCB79804(v137);
    memcpy(v138, v137, 0x81uLL);
  }

  v67 = type metadata accessor for RainInlineContentViewModel();
  (*(v120 + 16))(v119, v122 + *(v67 + 24), v121);
  v68 = sub_1BCE1C690();
  v70 = v69;
  v72 = v71;
  v73 = sub_1BCE1C5C0();
  v75 = v74;
  v77 = v76;
  v122 = v78;
  sub_1BC998CF4(v68, v70, v72 & 1);

  v79 = sub_1BCE1C610();
  v81 = v80;
  LOBYTE(v68) = v82;
  v84 = v83;
  sub_1BC998CF4(v73, v75, v77 & 1);

  v85 = swift_getKeyPath();
  *&v137[0] = v79;
  *(&v137[0] + 1) = v81;
  LOBYTE(v137[1]) = v68 & 1;
  *(&v137[1] + 1) = v84;
  *&v137[2] = v85;
  BYTE8(v137[2]) = 0;
  sub_1BCE1C3A0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD09F88);
  sub_1BCB7980C();
  v86 = v124;
  sub_1BCE1C7B0();
  sub_1BC998CF4(v79, v81, v68 & 1);

  v87 = v123;
  sub_1BC9660CC(v130, v123, &qword_1EBD09F70);
  memcpy(v137, v138, 0x81uLL);
  v89 = v125;
  v88 = v126;
  v90 = *(v126 + 16);
  v91 = v127;
  v90(v125, v86, v127);
  v92 = v128;
  v93 = v111;
  *v128 = 0;
  v92[1] = v93;
  v94 = v112;
  v92[2] = v118;
  v92[3] = v94;
  v95 = v113;
  v92[4] = v116;
  v92[5] = v95;
  v96 = v114;
  v92[6] = v115;
  v92[7] = v96;
  *(v92 + 64) = v117;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD09FA8);
  sub_1BC9660CC(v87, v92 + v97[12], &qword_1EBD09F70);
  memcpy(v92 + v97[16], v137, 0x81uLL);
  v90(v92 + v97[20], v89, v91);
  v98 = *(v88 + 8);
  v98(v86, v91);
  sub_1BCA5B44C(v130, &qword_1EBD09F70);
  v98(v89, v91);
  return sub_1BCA5B44C(v87, &qword_1EBD09F70);
}

uint64_t sub_1BCB76470@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v61 = a2;
  v54 = sub_1BCE1C420();
  v3 = *(v54 - 8);
  MEMORY[0x1EEE9AC00](v54);
  v53 = v52 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD09F70) - 8;
  MEMORY[0x1EEE9AC00](v59);
  v60 = v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = v52 - v7;
  v9 = sub_1BCE1C410();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52[1] = *(a1 + *(type metadata accessor for CurrentObservationViewAttributes() + 52));
  sub_1BCB73304(v12);
  v13 = sub_1BCE1C2A0();
  CTFontGetCapHeight(v13);

  (*(v10 + 8))(v12, v9);
  sub_1BCE1CEE0();
  sub_1BCE1B610();
  v57 = v66;
  v58 = v64;
  v56 = v68;
  v55 = v69;
  v72 = 1;
  v71 = v65;
  v70 = v67;
  v14 = a1 + *(type metadata accessor for CurrentObservationViewModel() + 48);
  v15 = (v14 + *(type metadata accessor for ConditionViewModel() + 28));
  v16 = v15[1];
  v62 = *v15;
  v63 = v16;
  sub_1BC970820();

  v17 = sub_1BCE1C6A0();
  v19 = v18;
  v21 = v20;
  v22 = sub_1BCE1C5C0();
  v24 = v23;
  LOBYTE(v12) = v25;
  sub_1BC998CF4(v17, v19, v21 & 1);

  v26 = v53;
  v27 = v54;
  (*(v3 + 104))(v53, *MEMORY[0x1E6980EA8], v54);
  sub_1BCE1C450();
  (*(v3 + 8))(v26, v27);
  v28 = sub_1BCE1C610();
  v30 = v29;
  LOBYTE(v26) = v31;

  sub_1BC998CF4(v22, v24, v12 & 1);

  sub_1BCE1C3A0();
  v32 = sub_1BCE1C530();
  v34 = v33;
  LOBYTE(v12) = v35;
  v37 = v36;
  sub_1BC998CF4(v28, v30, v26 & 1);

  KeyPath = swift_getKeyPath();
  v39 = &v8[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD09F78) + 36)];
  v40 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD09F80) + 28);
  v41 = *MEMORY[0x1E6980FA8];
  v42 = sub_1BCE1C5B0();
  (*(*(v42 - 8) + 104))(v39 + v40, v41, v42);
  *v39 = swift_getKeyPath();
  *v8 = v32;
  *(v8 + 1) = v34;
  v8[16] = v12 & 1;
  *(v8 + 3) = v37;
  *(v8 + 4) = KeyPath;
  v8[40] = 0;
  v43 = swift_getKeyPath();
  v44 = v60;
  v45 = &v8[*(v59 + 44)];
  *v45 = v43;
  *(v45 + 1) = 2;
  v45[16] = 0;
  LOBYTE(KeyPath) = v72;
  LOBYTE(v37) = v71;
  LOBYTE(v32) = v70;
  sub_1BC9660CC(v8, v44, &qword_1EBD09F70);
  v46 = v61;
  *v61 = 0;
  *(v46 + 8) = KeyPath;
  v47 = v57;
  v46[2] = v58;
  *(v46 + 24) = v37;
  v46[4] = v47;
  *(v46 + 40) = v32;
  v48 = v55;
  v46[6] = v56;
  v46[7] = v48;
  v49 = v46;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD09FB0);
  sub_1BC9660CC(v44, v49 + *(v50 + 48), &qword_1EBD09F70);
  sub_1BCA5B44C(v8, &qword_1EBD09F70);
  return sub_1BCA5B44C(v44, &qword_1EBD09F70);
}

uint64_t sub_1BCB76A10@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v70 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07890);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v57 - v4;
  v6 = type metadata accessor for NSUnitTemperature.BaseWeatherFormatStyle(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v61 = (&v57 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v57 - v9;
  v67 = type metadata accessor for TemperatureHighLowText() - 8;
  MEMORY[0x1EEE9AC00](v67);
  v69 = &v57 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v57 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v68 = &v57 - v16;
  v17 = sub_1BCE1C410();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v57 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for CurrentObservationViewAttributes();
  v22 = *(v21 + 92);
  v60 = v21;
  v62 = *(a1 + v22);
  v23 = a1;
  v59 = a1;
  sub_1BCB73304(v20);
  v24 = sub_1BCE1C2A0();
  CTFontGetCapHeight(v24);

  (*(v18 + 8))(v20, v17);
  sub_1BCE1CEE0();
  sub_1BCE1B610();
  v65 = v73;
  v66 = v71;
  v63 = v76;
  v64 = v75;
  v79 = 1;
  v78 = v72;
  v77 = v74;
  v25 = v23 + *(v21 + 20);
  v26 = type metadata accessor for DailyForecastViewModel();
  v58 = *(v26 + 24);
  static Set<>.full.getter();
  v27 = sub_1BCE19280();
  __swift_storeEnumTagSinglePayload(v5, 1, 1, v27);
  static WeatherFormatStyle<>.weather(_:locale:)();

  sub_1BCA5B44C(v5, &qword_1EBD07890);
  v28 = v61;
  NSUnitTemperature.BaseWeatherFormatStyle.secondary.getter();
  sub_1BCB79750(v10, type metadata accessor for NSUnitTemperature.BaseWeatherFormatStyle);
  sub_1BCE1A3E0();
  v29 = sub_1BCE1A3A0();
  v58 = sub_1BCB37580(v28, 0, v29, v25 + v58);
  v57 = v30;

  sub_1BCB79750(v28, type metadata accessor for NSUnitTemperature.BaseWeatherFormatStyle);
  v31 = *(v26 + 28);
  static Set<>.full.getter();
  __swift_storeEnumTagSinglePayload(v5, 1, 1, v27);
  static WeatherFormatStyle<>.weather(_:locale:)();

  sub_1BCA5B44C(v5, &qword_1EBD07890);
  NSUnitTemperature.BaseWeatherFormatStyle.secondary.getter();
  sub_1BCB79750(v10, type metadata accessor for NSUnitTemperature.BaseWeatherFormatStyle);
  v32 = sub_1BCE1A3A0();
  v33 = sub_1BCB37580(v28, 0, v32, v25 + v31);
  v35 = v34;

  sub_1BCB79750(v28, type metadata accessor for NSUnitTemperature.BaseWeatherFormatStyle);
  if (*(v59 + *(v60 + 108)))
  {
    v36 = 2;
  }

  else
  {
    v36 = 0;
  }

  v37 = v62;

  v38 = sub_1BCE1CEF0();
  v40 = v39;
  v41 = sub_1BCE1CAB0();
  v42 = sub_1BCE1CAB0();
  v43 = *(v67 + 60);
  *&v14[v43] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08430);
  swift_storeEnumTagMultiPayload();
  v44 = v57;
  *v14 = v58;
  *(v14 + 1) = v44;
  *(v14 + 2) = v33;
  *(v14 + 3) = v35;
  *(v14 + 5) = v42;
  *(v14 + 6) = v41;
  v14[56] = v36;
  *(v14 + 8) = v38;
  *(v14 + 9) = v40;
  v14[80] = 0;
  *(v14 + 11) = 0;
  *(v14 + 4) = v37;
  v45 = v14;
  v46 = v68;
  sub_1BCB6D31C(v45, v68, type metadata accessor for TemperatureHighLowText);
  v47 = v79;
  v48 = v78;
  v49 = v77;
  v50 = v69;
  sub_1BCB797A8(v46, v69, type metadata accessor for TemperatureHighLowText);
  v51 = v70;
  *v70 = 0;
  *(v51 + 8) = v47;
  v52 = v65;
  v51[2] = v66;
  *(v51 + 24) = v48;
  v51[4] = v52;
  *(v51 + 40) = v49;
  v53 = v63;
  v51[6] = v64;
  v51[7] = v53;
  v54 = v51;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD09FB8);
  sub_1BCB797A8(v50, v54 + *(v55 + 48), type metadata accessor for TemperatureHighLowText);
  sub_1BCB79750(v46, type metadata accessor for TemperatureHighLowText);
  return sub_1BCB79750(v50, type metadata accessor for TemperatureHighLowText);
}

uint64_t sub_1BCB77010@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v77 = a2;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD09EC0);
  MEMORY[0x1EEE9AC00](v73);
  v89 = &v69 - v3;
  v4 = sub_1BCE1C420();
  v83 = *(v4 - 8);
  v84 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v82 = &v69 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD09FC0);
  v75 = *(v6 - 8);
  v76 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v74 = &v69 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v90 = &v69 - v9;
  v10 = sub_1BCE1C410();
  v85 = v10;
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v69 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for CurrentObservationViewAttributes();
  v88 = *(a1 + *(v14 + 52));
  sub_1BCB73304(v13);
  v80 = v13;
  v15 = sub_1BCE1C2A0();
  CTFontGetCapHeight(v15);

  v16 = *(v11 + 8);
  v86 = v11 + 8;
  v87 = v16;
  v16(v13, v10);
  sub_1BCE1CEE0();
  sub_1BCE1B610();
  v71 = v95;
  v72 = v93;
  v69 = v98;
  v70 = v97;
  v101 = 1;
  v100 = v94;
  v99 = v96;
  v17 = (a1 + *(v14 + 32));
  v18 = v17[1];
  __dst[0] = *v17;
  __dst[1] = v18;
  sub_1BC970820();

  v19 = sub_1BCE1C6A0();
  v21 = v20;
  LOBYTE(v10) = v22;
  v81 = a1;
  v23 = sub_1BCE1C5C0();
  v78 = v25;
  v79 = v24;
  v27 = v26;
  sub_1BC998CF4(v19, v21, v10 & 1);

  v29 = v82;
  v28 = v83;
  v30 = v84;
  (*(v83 + 104))(v82, *MEMORY[0x1E6980EA8], v84);
  sub_1BCE1C450();
  (*(v28 + 8))(v29, v30);
  v31 = v79;
  v32 = sub_1BCE1C610();
  v34 = v33;
  LOBYTE(v28) = v35;

  sub_1BC998CF4(v23, v31, v27 & 1);

  sub_1BCE1C3A0();
  v36 = sub_1BCE1C530();
  v83 = v38;
  v84 = v37;
  v40 = v39;
  sub_1BC998CF4(v32, v34, v28 & 1);

  KeyPath = swift_getKeyPath();
  v42 = v80;
  sub_1BCB73304(v80);
  v43 = sub_1BCE1C2A0();
  Size = CTFontGetSize(v43);

  v45 = v85;
  v46 = v87;
  v87(v42, v85);
  v47 = Size + -1.0;
  sub_1BCB73304(v42);
  v48 = sub_1BCE1C2A0();
  v49 = CTFontGetSize(v48);

  v46(v42, v45);
  v50 = swift_getKeyPath();
  LOBYTE(__dst[0]) = v40 & 1;
  v51 = swift_getKeyPath();
  v92 = 0;
  v91[0] = v36;
  v52 = v89;
  v91[1] = v84;
  LOBYTE(v91[2]) = v40 & 1;
  v91[3] = v83;
  v91[4] = KeyPath;
  LOBYTE(v91[5]) = 0;
  v91[6] = v50;
  *&v91[7] = v47 / v49;
  v91[8] = v51;
  v91[9] = 3;
  LOBYTE(v91[10]) = 0;
  v53 = *MEMORY[0x1E697E6E8];
  v54 = sub_1BCE1B7E0();
  (*(*(v54 - 8) + 104))(v52, v53, v54);
  sub_1BCB7970C(&unk_1EBD09F40);
  result = sub_1BCE1D210();
  if (result)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD09FC8);
    sub_1BCB798E4();
    sub_1BCB7A3DC(&unk_1EDA16820);
    v56 = v90;
    sub_1BCE1C880();
    sub_1BCA5B44C(v52, &qword_1EBD09EC0);
    memcpy(__dst, v91, 0x51uLL);
    sub_1BCA5B44C(__dst, &qword_1EBD09FC8);
    v57 = v101;
    v58 = v100;
    v59 = v99;
    v61 = v74;
    v60 = v75;
    v62 = *(v75 + 16);
    v63 = v76;
    v62(v74, v56, v76);
    v64 = v77;
    *v77 = 0;
    *(v64 + 8) = v57;
    v65 = v71;
    v64[2] = v72;
    *(v64 + 24) = v58;
    v64[4] = v65;
    *(v64 + 40) = v59;
    v66 = v69;
    v64[6] = v70;
    v64[7] = v66;
    v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD09FF8);
    v62(v64 + *(v67 + 48), v61, v63);
    v68 = *(v60 + 8);
    v68(v90, v63);
    return (v68)(v61, v63);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t CurrentObservationAccessibilityModifier.body(content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v146 = a1;
  v152 = a2;
  sub_1BCE1BDA0();
  OUTLINED_FUNCTION_2();
  v150 = v5;
  v151 = v4;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_2_0();
  v149 = v7 - v6;
  v140 = sub_1BCE1C100();
  OUTLINED_FUNCTION_2();
  v139 = v8;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_2_0();
  v138 = v11 - v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD09E20);
  OUTLINED_FUNCTION_2();
  v144 = v13;
  v145 = v12;
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v14);
  v141 = &v128 - v15;
  v148 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD09E28);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_3();
  v142 = v17 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v143 = &v128 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v147 = &v128 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07890);
  OUTLINED_FUNCTION_14(v23);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_77();
  v25 = type metadata accessor for NSUnitTemperature.BaseWeatherFormatStyle(0);
  v26 = OUTLINED_FUNCTION_14(v25);
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_2_0();
  v29 = (v28 - v27);
  v30 = sub_1BCE1BD20();
  v31 = OUTLINED_FUNCTION_14(v30);
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_2_0();
  v32 = type metadata accessor for CurrentObservationAccessibilityModifier(0);
  v157 = *(v2 + v32[7]);
  v33 = CurrentObservationViewAttributes.LocationStyle.accessibilityLabel.getter();
  v35 = HIBYTE(v34) & 0xF;
  if ((v34 & 0x2000000000000000) == 0)
  {
    v35 = v33 & 0xFFFFFFFFFFFFLL;
  }

  if (v35)
  {
    OUTLINED_FUNCTION_20_14();
    sub_1BCB78438();
  }

  v36 = sub_1BCE1A6D0();
  v154 = v37;
  v38 = v32[8];
  v136 = v2;
  v39 = (v2 + v38);
  v41 = *v39;
  v40 = v39[1];
  v137 = v36;
  if (!v41 && v40 == 0xE000000000000000 || (sub_1BCE1E090() & 1) != 0)
  {
    sub_1BCE1BD10();
    OUTLINED_FUNCTION_6_0();
    sub_1BCE1BD00();
    sub_1BCE1BCF0();
    OUTLINED_FUNCTION_20_14();
    sub_1BCE1BD00();
    sub_1BCE1BCF0();

    OUTLINED_FUNCTION_6_0();
    sub_1BCE1BD00();
    v42 = *(type metadata accessor for CurrentObservationViewModel() + 28);
    static Set<>.full.getter();
    v135 = sub_1BCE19280();
    v43 = OUTLINED_FUNCTION_4_33();
    __swift_storeEnumTagSinglePayload(v43, v44, v45, v46);
    static WeatherFormatStyle<>.weather(_:locale:)();

    sub_1BCA5B44C(v3, &qword_1EBD07890);
    v134 = sub_1BCE1A3E0();
    v47 = sub_1BCE1A3A0();
    v48 = v29;
    v49 = v136;
    sub_1BCB37580(v48, 0, v47, v136 + v42);

    OUTLINED_FUNCTION_8_30();
    v133 = v50;
    sub_1BCB79750(v48, v51);
    sub_1BCE1BCF0();

    OUTLINED_FUNCTION_29_9();
    v52 = v49 + v32[5];
    v53 = type metadata accessor for DailyForecastViewModel();
    v54 = (v52 + v53[12]);
    v131 = v52;
    v55 = v54[1];
    v132 = *v54;
    v153 = v55;
    sub_1BCE1BCF0();
    OUTLINED_FUNCTION_20_14();
    sub_1BCE1BD00();
    type metadata accessor for ConditionViewModel();
    OUTLINED_FUNCTION_39_5();
    OUTLINED_FUNCTION_26_9();
    v56 = v53[6];
    static Set<>.full.getter();
    v57 = OUTLINED_FUNCTION_4_33();
    v58 = v135;
    __swift_storeEnumTagSinglePayload(v57, v59, v60, v135);
    OUTLINED_FUNCTION_22_14();

    sub_1BCA5B44C(v3, &qword_1EBD07890);
    v61 = sub_1BCE1A3A0();
    OUTLINED_FUNCTION_13_21(v61, v62, v63, v52 + v56);

    v64 = v133;
    sub_1BCB79750(v48, v133);
    sub_1BCE1BCF0();

    OUTLINED_FUNCTION_29_9();
    sub_1BCE1BCF0();
    OUTLINED_FUNCTION_25_8();
    v65 = v53[7];
    static Set<>.full.getter();
    v66 = OUTLINED_FUNCTION_4_33();
    __swift_storeEnumTagSinglePayload(v66, v67, v68, v58);
    OUTLINED_FUNCTION_22_14();

    sub_1BCA5B44C(v3, &qword_1EBD07890);
    v69 = sub_1BCE1A3A0();
    OUTLINED_FUNCTION_13_21(v69, v70, v71, v131 + v65);

    sub_1BCB79750(v48, v64);
    sub_1BCE1BCF0();

    OUTLINED_FUNCTION_29_9();
    sub_1BCE1BCF0();
    OUTLINED_FUNCTION_6_0();
    sub_1BCE1BD00();
    sub_1BCE1BD40();
    OUTLINED_FUNCTION_31();
    if (qword_1EDA1EFB0 == -1)
    {
      goto LABEL_11;
    }

    goto LABEL_12;
  }

  sub_1BCE1BD10();
  OUTLINED_FUNCTION_6_0();
  sub_1BCE1BD00();
  sub_1BCE1BCF0();
  OUTLINED_FUNCTION_20_14();
  sub_1BCE1BD00();
  sub_1BCE1BCF0();

  OUTLINED_FUNCTION_6_0();
  sub_1BCE1BD00();
  v131 = type metadata accessor for CurrentObservationViewModel();
  v72 = *(v131 + 28);
  static Set<>.full.getter();
  v153 = sub_1BCE19280();
  v73 = OUTLINED_FUNCTION_4_33();
  __swift_storeEnumTagSinglePayload(v73, v74, v75, v76);
  static WeatherFormatStyle<>.weather(_:locale:)();

  sub_1BCA5B44C(v3, &qword_1EBD07890);
  v135 = sub_1BCE1A3E0();
  v77 = sub_1BCE1A3A0();
  v78 = v29;
  v79 = v136;
  v130 = v78;
  sub_1BCB37580(v78, 0, v77, v136 + v72);

  OUTLINED_FUNCTION_8_30();
  v134 = v80;
  sub_1BCB79750(v78, v81);
  sub_1BCE1BCF0();

  OUTLINED_FUNCTION_29_9();
  v82 = v79 + v32[5];
  v83 = type metadata accessor for DailyForecastViewModel();
  v84 = *(v83 + 48);
  v85 = v83;
  v128 = v83;
  v86 = v82 + v84;
  v129 = v82;
  v87 = *(v86 + 8);
  v133 = *v86;
  v132 = v87;
  sub_1BCE1BCF0();
  OUTLINED_FUNCTION_20_14();
  sub_1BCE1BD00();
  type metadata accessor for ConditionViewModel();
  OUTLINED_FUNCTION_39_5();
  OUTLINED_FUNCTION_20_14();
  sub_1BCE1BD00();
  sub_1BCE1BCF0();
  OUTLINED_FUNCTION_26_9();
  v88 = *(v85 + 24);
  static Set<>.full.getter();
  v89 = OUTLINED_FUNCTION_4_33();
  v90 = v153;
  __swift_storeEnumTagSinglePayload(v89, v91, v92, v153);
  v93 = v130;
  OUTLINED_FUNCTION_22_14();

  sub_1BCA5B44C(v3, &qword_1EBD07890);
  v94 = sub_1BCE1A3A0();
  OUTLINED_FUNCTION_13_21(v94, v95, v96, v82 + v88);

  v97 = v134;
  sub_1BCB79750(v93, v134);
  sub_1BCE1BCF0();

  OUTLINED_FUNCTION_29_9();
  sub_1BCE1BCF0();
  OUTLINED_FUNCTION_25_8();
  v98 = *(v128 + 28);
  static Set<>.full.getter();
  v99 = OUTLINED_FUNCTION_4_33();
  __swift_storeEnumTagSinglePayload(v99, v100, v101, v90);
  OUTLINED_FUNCTION_22_14();

  sub_1BCA5B44C(v3, &qword_1EBD07890);
  v102 = sub_1BCE1A3A0();
  OUTLINED_FUNCTION_13_21(v102, v103, v104, v129 + v98);

  sub_1BCB79750(v93, v97);
  OUTLINED_FUNCTION_36_5();
  sub_1BCE1BCF0();

  OUTLINED_FUNCTION_29_9();
  sub_1BCE1BCF0();
  OUTLINED_FUNCTION_6_0();
  sub_1BCE1BD00();
  sub_1BCE1BD40();
  OUTLINED_FUNCTION_31();
  if (qword_1EDA1EFB0 != -1)
  {
LABEL_12:
    OUTLINED_FUNCTION_0();
  }

LABEL_11:
  OUTLINED_FUNCTION_37_5();
  v105 = qword_1EDA1EFB8;
  OUTLINED_FUNCTION_10_1();
  v106 = sub_1BCE1C680();
  sub_1BCA81D10(v106, v108, v107 & 1);

  v109 = v138;
  sub_1BCE1C0E0();
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD09E30);
  OUTLINED_FUNCTION_7_35();
  v112 = sub_1BCB7A3DC(v111);
  v113 = v141;
  sub_1BCE1C930();
  (*(v139 + 8))(v109, v140);
  v155 = v110;
  v156 = v112;
  OUTLINED_FUNCTION_0_1();
  swift_getOpaqueTypeConformance2();
  v114 = v142;
  OUTLINED_FUNCTION_36_5();
  v115 = v145;
  sub_1BCE1C830();
  v116 = OUTLINED_FUNCTION_36_5();
  sub_1BC998CF4(v116, v117, v118);

  (*(v144 + 8))(v113, v115);
  v119 = v149;
  sub_1BCE1BD90();
  v120 = v143;
  sub_1BCE1B860();
  (*(v150 + 8))(v119, v151);
  sub_1BCA5B44C(v114, &qword_1EBD09E28);
  v121 = v147;
  sub_1BCE1B8A0();
  sub_1BCA5B44C(v120, &qword_1EBD09E28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD0C550);
  v122 = swift_allocObject();
  *(v122 + 16) = xmmword_1BCE3E050;
  v123 = v154;
  *(v122 + 32) = v137;
  *(v122 + 40) = v123;
  sub_1BC970820();
  sub_1BCE1B890();

  v124 = OUTLINED_FUNCTION_36_5();
  sub_1BC998CF4(v124, v125, v126);

  return sub_1BCA5B44C(v121, &qword_1EBD09E28);
}

uint64_t sub_1BCB78438()
{

  v1 = sub_1BCE1D490();
  sub_1BCE1D3B0();
  return v1;
}

unint64_t sub_1BCB784BC()
{
  result = qword_1EDA1B620;
  if (!qword_1EDA1B620)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD09DE0);
    sub_1BCB78540();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA1B620);
  }

  return result;
}

unint64_t sub_1BCB78540()
{
  result = qword_1EDA1B7D0;
  if (!qword_1EDA1B7D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD09DE8);
    sub_1BCB7A3DC(&unk_1EDA1BBC8);
    sub_1BCB7A3DC(&unk_1EDA1BBC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA1B7D0);
  }

  return result;
}

uint64_t sub_1BCB78620(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void), uint64_t (*a6)(uint64_t))
{
  a5(0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_77();
  (*(v10 + 16))(v6, a1);
  return a6(v6);
}

_BYTE *storeEnumTagSinglePayload for CurrentObservationContainerAccessibilityModifier(_BYTE *result, int a2, int a3)
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

void sub_1BCB7887C()
{
  if (!qword_1EDA1BBF0)
  {
    sub_1BCE1C410();
    v0 = sub_1BCE1B4F0();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDA1BBF0);
    }
  }
}

uint64_t sub_1BCB7898C()
{
  result = type metadata accessor for CurrentObservationViewModel();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for DailyForecastViewModel();
    if (v2 <= 0x3F)
    {
      result = sub_1BCE1A6F0();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

unint64_t sub_1BCB78A40()
{
  result = qword_1EDA1B908;
  if (!qword_1EDA1B908)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD09E00);
    sub_1BCB78AF8(&unk_1EDA1B9F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA1B908);
  }

  return result;
}

unint64_t sub_1BCB78AF8(uint64_t a1)
{
  result = OUTLINED_FUNCTION_32_5(a1);
  if (!result)
  {
    v5 = v4;
    v6 = OUTLINED_FUNCTION_14_2(0, v3);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v6);
    v5();
    sub_1BCB7970C(&qword_1EDA1EE68);
    result = OUTLINED_FUNCTION_10_25();
    atomic_store(result, v1);
  }

  return result;
}

uint64_t get_witness_table_qd__7SwiftUI4ViewHD2_AaBPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA01_C16Modifier_ContentVy07WeatherB0027CurrentObservationContainergJ0VG_Qo_HOTm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = OUTLINED_FUNCTION_14_2(a1, a2);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v5);
  sub_1BCB7A3DC(a4);
  OUTLINED_FUNCTION_0_1();
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_1BCB78C00()
{
  result = qword_1EDA1BA80;
  if (!qword_1EDA1BA80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD09E28);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD09E30);
    sub_1BCB7A3DC(&unk_1EDA1B728);
    swift_getOpaqueTypeConformance2();
    sub_1BCB7970C(&qword_1EDA1EE68);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA1BA80);
  }

  return result;
}

void sub_1BCB78D74()
{
  type metadata accessor for CurrentObservationViewAttributes();
  if (v0 <= 0x3F)
  {
    type metadata accessor for CGSize(319);
    if (v1 <= 0x3F)
    {
      sub_1BCB7887C();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1BCB78E58()
{
  result = type metadata accessor for CurrentObservationViewAttributes();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_index_13Tm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_12_0();
  type metadata accessor for CurrentObservationViewAttributes();
  OUTLINED_FUNCTION_1();
  if (*(v6 + 84) == v3)
  {
    v7 = OUTLINED_FUNCTION_33_6();
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08388);
    v7 = v4 + *(a3 + 20);
  }

  return __swift_getEnumTagSinglePayload(v7, v3, v8);
}

uint64_t __swift_store_extra_inhabitant_index_14Tm(uint64_t a1, uint64_t a2, int a3)
{
  OUTLINED_FUNCTION_12_0();
  type metadata accessor for CurrentObservationViewAttributes();
  OUTLINED_FUNCTION_1();
  if (*(v4 + 84) == a3)
  {
    OUTLINED_FUNCTION_30_4();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08388);
  }

  OUTLINED_FUNCTION_34_4();

  return __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
}

void sub_1BCB79088()
{
  type metadata accessor for CurrentObservationViewAttributes();
  if (v0 <= 0x3F)
  {
    sub_1BCB7887C();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_1BCB791AC()
{
  result = qword_1EDA1B608;
  if (!qword_1EDA1B608)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD09E58);
    sub_1BCB7A3DC(&unk_1EDA1B468);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA1B608);
  }

  return result;
}

unint64_t sub_1BCB7925C()
{
  result = qword_1EDA1B7C0;
  if (!qword_1EDA1B7C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD09EF0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD09ED8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD09EC0);
    sub_1BCB793B0();
    sub_1BCB7A3DC(&unk_1EDA16820);
    swift_getOpaqueTypeConformance2();
    sub_1BCB7A3DC(&unk_1EDA1B460);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA1B7C0);
  }

  return result;
}

unint64_t sub_1BCB793B0()
{
  result = qword_1EDA1BA40;
  if (!qword_1EDA1BA40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD09ED8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD09EC8);
    sub_1BCB7A3DC(&unk_1EDA1B538);
    swift_getOpaqueTypeConformance2();
    sub_1BCB7970C(&qword_1EDA1EE68);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA1BA40);
  }

  return result;
}

unint64_t sub_1BCB794DC()
{
  result = qword_1EDA1B8D0;
  if (!qword_1EDA1B8D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD09E90);
    sub_1BCB795C0(&unk_1EDA1B960);
    sub_1BCB7A3DC(&qword_1EDA1B6A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA1B8D0);
  }

  return result;
}

unint64_t sub_1BCB795C0(uint64_t a1)
{
  result = OUTLINED_FUNCTION_32_5(a1);
  if (!result)
  {
    v5 = v4;
    v6 = OUTLINED_FUNCTION_14_2(0, v3);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v6);
    v5();
    result = OUTLINED_FUNCTION_10_25();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1BCB79620()
{
  result = qword_1EDA1BB70;
  if (!qword_1EDA1BB70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD09F30);
    sub_1BCB7970C(&unk_1EDA17F78);
    sub_1BCB7970C(&qword_1EDA1EE68);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA1BB70);
  }

  return result;
}

unint64_t sub_1BCB7970C(uint64_t a1)
{
  result = OUTLINED_FUNCTION_32_5(a1);
  if (!result)
  {
    v3(255);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

uint64_t sub_1BCB79750(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_4();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1BCB797A8(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_4();
  v4 = OUTLINED_FUNCTION_10_1();
  v5(v4);
  return a2;
}

unint64_t sub_1BCB7980C()
{
  result = qword_1EBD09F90;
  if (!qword_1EBD09F90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD09F88);
    sub_1BCB7A3DC(&unk_1EBD09F98);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD09F90);
  }

  return result;
}

double sub_1BCB798C4(uint64_t a1)
{
  result = 0.0;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 128) = 1;
  return result;
}

unint64_t sub_1BCB798E4()
{
  result = qword_1EBD09FD0;
  if (!qword_1EBD09FD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD09FC8);
    sub_1BCB7999C();
    sub_1BCB7A3DC(&unk_1EDA1B688);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD09FD0);
  }

  return result;
}

unint64_t sub_1BCB7999C()
{
  result = qword_1EBD09FD8;
  if (!qword_1EBD09FD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD09FE0);
    sub_1BCB7980C();
    sub_1BCB7A3DC(&unk_1EDA1B6D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD09FD8);
  }

  return result;
}

unint64_t sub_1BCB79A54()
{
  result = qword_1EDA1B970;
  if (!qword_1EDA1B970)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD0A008);
    sub_1BCB79B0C();
    sub_1BCB7A3DC(&qword_1EDA1B6B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA1B970);
  }

  return result;
}

unint64_t sub_1BCB79B0C()
{
  result = qword_1EDA1BB90;
  if (!qword_1EDA1BB90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD0A020);
    sub_1BCB7970C(qword_1EDA1AB98);
    sub_1BCB7A3DC(&qword_1EDA1B6A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA1BB90);
  }

  return result;
}

unint64_t sub_1BCB79BF4()
{
  result = qword_1EDA1BAA0;
  if (!qword_1EDA1BAA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD0A018);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD0A008);
    sub_1BCB79A54();
    swift_getOpaqueTypeConformance2();
    sub_1BCB7970C(&qword_1EDA1EE68);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA1BAA0);
  }

  return result;
}

unint64_t sub_1BCB79CEC()
{
  result = qword_1EDA1BA58;
  if (!qword_1EDA1BA58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD0A038);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD0A028);
    sub_1BCB7A3DC(&unk_1EDA1B590);
    swift_getOpaqueTypeConformance2();
    sub_1BCB7970C(&qword_1EDA1EE68);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA1BA58);
  }

  return result;
}

unint64_t sub_1BCB79E18()
{
  result = qword_1EDA1B8E8;
  if (!qword_1EDA1B8E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD0A080);
    sub_1BCB79ED0();
    sub_1BCB7A3DC(&qword_1EDA1B6B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA1B8E8);
  }

  return result;
}

unint64_t sub_1BCB79ED0()
{
  result = qword_1EDA1B9B8;
  if (!qword_1EDA1B9B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD0A088);
    sub_1BCB7A3DC(&qword_1EDA1B6A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA1B9B8);
  }

  return result;
}

unint64_t sub_1BCB79F88()
{
  result = qword_1EDA1B910;
  if (!qword_1EDA1B910)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD0A058);
    sub_1BCB7A014();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA1B910);
  }

  return result;
}

unint64_t sub_1BCB7A014()
{
  result = qword_1EDA1BAE0;
  if (!qword_1EDA1BAE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD0A050);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD0A080);
    sub_1BCB79E18();
    swift_getOpaqueTypeConformance2();
    sub_1BCB7A3DC(&qword_1EDA1B698);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA1BAE0);
  }

  return result;
}

unint64_t sub_1BCB7A108()
{
  result = qword_1EDA1EC48;
  if (!qword_1EDA1EC48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA1EC48);
  }

  return result;
}

unint64_t sub_1BCB7A15C()
{
  result = qword_1EDA1B830;
  if (!qword_1EDA1B830)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD0A180);
    sub_1BCB79BF4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA1B830);
  }

  return result;
}

unint64_t sub_1BCB7A1E0()
{
  result = qword_1EDA1B8B0;
  if (!qword_1EDA1B8B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD0A0B0);
    sub_1BCB7A298();
    sub_1BCB7A3DC(&unk_1EDA1B6D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA1B8B0);
  }

  return result;
}

unint64_t sub_1BCB7A298()
{
  result = qword_1EDA1B8C0;
  if (!qword_1EDA1B8C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD0A090);
    sub_1BCB7A324();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA1B8C0);
  }

  return result;
}

unint64_t sub_1BCB7A324()
{
  result = qword_1EDA1B928;
  if (!qword_1EDA1B928)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD0A0A0);
    sub_1BCAF9940();
    sub_1BCB7A3DC(&unk_1EDA1B6C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA1B928);
  }

  return result;
}

unint64_t sub_1BCB7A3DC(uint64_t a1)
{
  result = OUTLINED_FUNCTION_32_5(a1);
  if (!result)
  {
    v4 = OUTLINED_FUNCTION_14_2(0, v3);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v4);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

void sub_1BCB7A430(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_20_0();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v25 = sub_1BCE1BC20();
  OUTLINED_FUNCTION_2();
  v27 = v26;
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_2_0();
  v31 = v30 - v29;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0A188);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v32);
  v34 = &a9 - v33;
  v35 = type metadata accessor for MoonRectangularContentView();
  sub_1BC9660CC(v20 + *(v35 + 28), v34, &qword_1EBD0A188);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1BCE1B4E0();
    OUTLINED_FUNCTION_4();
    (*(v36 + 32))(v24, v34);
  }

  else
  {
    sub_1BCE1D8C0();
    v37 = sub_1BCE1C1F0();
    sub_1BCE1AC20();

    sub_1BCE1BC10();
    swift_getAtKeyPath();

    (*(v27 + 8))(v31, v25);
  }

  OUTLINED_FUNCTION_21();
}

uint64_t MoonRectangularContentView.init(status:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for MoonRectangularContentView();
  v5 = v4[5];
  type metadata accessor for WidgetDateFormatter();
  *(a2 + v5) = WidgetDateFormatter.__allocating_init()();
  v6 = v4[6];
  type metadata accessor for NextMoonEventEvaluationManager();
  *(a2 + v6) = swift_allocObject();
  v7 = v4[7];
  *(a2 + v7) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0A188);
  swift_storeEnumTagMultiPayload();
  return sub_1BCB7CF58(a1, a2, type metadata accessor for MoonComplicationDataStatus);
}

uint64_t type metadata accessor for MoonRectangularContentView()
{
  result = qword_1EDA19040;
  if (!qword_1EDA19040)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void MoonRectangularContentView.body.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_20_0();
  a19 = v21;
  a20 = v22;
  v23 = sub_1BCE1C100();
  OUTLINED_FUNCTION_2();
  v25 = v24;
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_2_0();
  v29 = v28 - v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0A190);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v30);
  v32 = &a9 - v31;
  *v32 = sub_1BCE1BC90();
  *(v32 + 1) = 0;
  v32[16] = 1;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0A198);
  sub_1BCB7A8A0(v20, &v32[*(v33 + 44)]);
  sub_1BCE1C0E0();
  OUTLINED_FUNCTION_3_44();
  sub_1BCA5B4A0(v34, &qword_1EBD0A190);
  sub_1BCE1C930();
  (*(v25 + 8))(v29, v23);
  sub_1BCA5B44C(v32, &qword_1EBD0A190);
  OUTLINED_FUNCTION_21();
}

uint64_t sub_1BCB7A8A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v172 = a2;
  v169 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0A1A8);
  MEMORY[0x1EEE9AC00](v169);
  v171 = &v126 - v3;
  v164 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0A1B0);
  MEMORY[0x1EEE9AC00](v164);
  v165 = &v126 - v4;
  v170 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0A1B8);
  MEMORY[0x1EEE9AC00](v170);
  v166 = &v126 - v5;
  v158 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0A1C0);
  MEMORY[0x1EEE9AC00](v158);
  v160 = &v126 - v6;
  v146 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0A1C8);
  MEMORY[0x1EEE9AC00](v146);
  v147 = &v126 - v7;
  v159 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0A1D0);
  MEMORY[0x1EEE9AC00](v159);
  v149 = &v126 - v8;
  v145 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0A1D8);
  MEMORY[0x1EEE9AC00](v145);
  v148 = (&v126 - v9);
  v142 = sub_1BCE19260();
  v141 = *(v142 - 8);
  MEMORY[0x1EEE9AC00](v142);
  v140 = &v126 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v139 = sub_1BCE19280();
  v138 = *(v139 - 8);
  MEMORY[0x1EEE9AC00](v139);
  v137 = &v126 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v144 = sub_1BCE19470();
  v151 = *(v144 - 8);
  MEMORY[0x1EEE9AC00](v144);
  v136 = &v126 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v143 = &v126 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v135 = &v126 - v16;
  v157 = sub_1BCE19060();
  v156 = *(v157 - 8);
  MEMORY[0x1EEE9AC00](v157);
  v153 = &v126 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v152 = &v126 - v19;
  v150 = type metadata accessor for MoonEvent();
  MEMORY[0x1EEE9AC00](v150);
  v155 = &v126 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v162 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0A1E0);
  MEMORY[0x1EEE9AC00](v162);
  v154 = &v126 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0A1E8);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v126 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD09858);
  MEMORY[0x1EEE9AC00](v25 - 8);
  v27 = &v126 - v26;
  v28 = sub_1BCE19AD0();
  v161 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v126 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v163 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0A1F0);
  MEMORY[0x1EEE9AC00](v163);
  v32 = &v126 - v31;
  v33 = type metadata accessor for MoonComplicationViewModel();
  MEMORY[0x1EEE9AC00](v33);
  v35 = &v126 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = type metadata accessor for MoonComplicationDataStatus();
  MEMORY[0x1EEE9AC00](v36 - 8);
  v38 = &v126 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0A1F8);
  MEMORY[0x1EEE9AC00](v39 - 8);
  v168 = &v126 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v41);
  v167 = &v126 - v42;
  sub_1BCB7CD10(a1, v38);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v38, 2, v33);
  if (EnumTagSinglePayload)
  {
    if (EnumTagSinglePayload == 1)
    {
      swift_storeEnumTagMultiPayload();
      sub_1BCB7CD74();
      sub_1BCB7CF04();
      v44 = v166;
      sub_1BCE1BF60();
      sub_1BC9660CC(v44, v171, &qword_1EBD0A1B8);
      swift_storeEnumTagMultiPayload();
      sub_1BCB7CDD4(&qword_1EDA1B760, &qword_1EBD0A1B8, &unk_1BCE538F0, sub_1BCB7CD74);
      v45 = v167;
      sub_1BCE1BF60();
      sub_1BCA5B44C(v44, &qword_1EBD0A1B8);
    }

    else
    {
      swift_storeEnumTagMultiPayload();
      sub_1BCB7CDD4(&qword_1EDA1B760, &qword_1EBD0A1B8, &unk_1BCE538F0, sub_1BCB7CD74);
      sub_1BCB7CF04();
      v45 = v167;
      sub_1BCE1BF60();
    }

    v48 = v172;
  }

  else
  {
    v134 = v30;
    v130 = v22;
    v129 = a1;
    v132 = v24;
    v133 = v32;
    sub_1BCB7CF58(v38, v35, type metadata accessor for MoonComplicationViewModel);
    sub_1BC9660CC(v35, v27, &qword_1EBD09858);
    v46 = __swift_getEnumTagSinglePayload(v27, 1, v28);
    v131 = v35;
    if (v46 == 1)
    {
      sub_1BCA5B44C(v27, &qword_1EBD09858);
      swift_storeEnumTagMultiPayload();
      sub_1BCB7CDA4();
      sub_1BCB7CF04();
      v47 = v133;
      sub_1BCE1BF60();
      v49 = v171;
      v48 = v172;
    }

    else
    {
      (*(v161 + 32))(v134, v27, v28);
      v50 = sub_1BCE19AA0();
      LOBYTE(v177) = v35[*(v33 + 20)];
      v51 = MoonPhase.symbolName(for:)(&v177, v50);
      v53 = v52;
      v54 = type metadata accessor for MoonRectangularContentView();
      v55 = v129;
      v56 = v155;
      sub_1BCB2AC34(v155);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v128 = v28;
      v127 = v54;
      if (EnumCaseMultiPayload)
      {
        v58 = v151;
        if (EnumCaseMultiPayload == 1)
        {
          v150 = v53;
          (*(v156 + 32))(v153, v155, v157);
          v59 = v136;
          sub_1BCE19460();
          if (qword_1EDA1EBE8 != -1)
          {
            swift_once();
          }

          v126 = v51;
          v60 = v137;
          sub_1BCE191B0();
          v61 = v140;
          sub_1BCE19270();
          (*(v138 + 8))(v60, v139);
          LOBYTE(v60) = sub_1BCE19240();
          (*(v141 + 8))(v61, v142);
          v62 = sub_1BC9600B0();
          if (v60)
          {
            v177 = v62;
            v178 = v63;
            v175 = 11501794;
            v176 = 0xA300000000000000;
            v173 = 0;
            v174 = 0xE000000000000000;
            v125 = sub_1BC970820();
            sub_1BCE1DB90();
            v64 = *(v58 + 8);
            v65 = v59;
            v66 = v144;
            v64(v65, v144);
          }

          else
          {
            v64 = *(v58 + 8);
            v77 = v59;
            v66 = v144;
            v64(v77, v144);
          }

          sub_1BCAE2864();
          static NSDateFormatter.timeSymbols.getter();
          sub_1BCE1C320();
          TimeStyle.formatTimeAllowingIntermediateTimeSymbols(_:periodSymbols:font:)();
          v155 = v78;
          v152 = v79;
          v81 = v80;
          LODWORD(v141) = v80;
          v144 = v82;

          LOBYTE(v177) = 1;
          v83 = v143;
          sub_1BCE19460();
          WidgetDateFormatter.format(date:dateType:timeZone:)(v153, &v177);
          v64(v83, v66);
          static NSDateFormatter.timeSymbols.getter();
          sub_1BCE1C320();
          TimeStyle.formatTimeAllowingIntermediateTimeSymbols(_:periodSymbols:font:)();
          v85 = v84;
          v142 = v84;
          v87 = v86;
          v143 = v86;
          v89 = v88;
          v91 = v90;
          v151 = v90;

          v92 = sub_1BCE1BE00();
          v93 = v148;
          *v148 = v92;
          *(v93 + 8) = 0;
          *(v93 + 16) = 1;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0A208);
          v123 = v91;
          LOBYTE(v122) = v89 & 1;
          v94 = v155;
          v95 = v152;
          sub_1BCB7C20C(v55, v126, v150, v134, v155, v152, v81 & 1, v144, v85, v87, v122, v123, 8, 0x207465736E6F6F4DLL, 0xE800000000000000, v125, v126, v127, v128, v129, v130, v131, v132, v133, v134, v135, v136);

          sub_1BC9660CC(v93, v147, &qword_1EBD0A1D8);
          swift_storeEnumTagMultiPayload();
          sub_1BCA5B4A0(&qword_1EDA1B540, &qword_1EBD0A1D8);
          v96 = v149;
          sub_1BCE1BF60();
          sub_1BC9660CC(v96, v160, &qword_1EBD0A1D0);
          swift_storeEnumTagMultiPayload();
          sub_1BCB7CE54();
          sub_1BCB7CF04();
          v76 = v154;
          sub_1BCE1BF60();
          sub_1BC998CF4(v94, v95, v141 & 1);

          sub_1BC998CF4(v142, v143, v89 & 1);

          sub_1BCA5B44C(v96, &qword_1EBD0A1D0);
          sub_1BCA5B44C(v93, &qword_1EBD0A1D8);
          (*(v156 + 8))(v153, v157);
        }

        else
        {

          swift_storeEnumTagMultiPayload();
          sub_1BCB7CE54();
          sub_1BCB7CF04();
          v76 = v154;
          sub_1BCE1BF60();
        }
      }

      else
      {
        v126 = v51;
        v150 = v53;
        (*(v156 + 32))(v152, v56, v157);
        v67 = v135;
        sub_1BCE19460();
        v68 = v151;
        if (qword_1EDA1EBE8 != -1)
        {
          swift_once();
        }

        v69 = v137;
        sub_1BCE191B0();
        v70 = v140;
        sub_1BCE19270();
        (*(v138 + 8))(v69, v139);
        LOBYTE(v69) = sub_1BCE19240();
        (*(v141 + 8))(v70, v142);
        v71 = sub_1BC9600B0();
        if (v69)
        {
          v177 = v71;
          v178 = v72;
          v175 = 11501794;
          v176 = 0xA300000000000000;
          v173 = 0;
          v174 = 0xE000000000000000;
          v125 = sub_1BC970820();
          sub_1BCE1DB90();
          v73 = *(v68 + 8);
          v74 = v67;
          v75 = v144;
          v73(v74, v144);
        }

        else
        {
          v73 = *(v68 + 8);
          v97 = v67;
          v75 = v144;
          v73(v97, v144);
        }

        sub_1BCAE2864();
        static NSDateFormatter.timeSymbols.getter();
        sub_1BCE1C320();
        TimeStyle.formatTimeAllowingIntermediateTimeSymbols(_:periodSymbols:font:)();
        v155 = v98;
        v153 = v99;
        v101 = v100;
        LODWORD(v141) = v100;
        v142 = v102;

        LOBYTE(v177) = 1;
        v103 = v143;
        sub_1BCE19460();
        WidgetDateFormatter.format(date:dateType:timeZone:)(v152, &v177);
        v73(v103, v75);
        static NSDateFormatter.timeSymbols.getter();
        sub_1BCE1C320();
        TimeStyle.formatTimeAllowingIntermediateTimeSymbols(_:periodSymbols:font:)();
        v105 = v104;
        v143 = v104;
        v107 = v106;
        v144 = v106;
        v109 = v108;
        v111 = v110;
        v151 = v110;

        v112 = sub_1BCE1BE00();
        v113 = v148;
        *v148 = v112;
        *(v113 + 8) = 0;
        *(v113 + 16) = 1;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0A208);
        v124 = v111;
        v114 = v109 & 1;
        LOBYTE(v122) = v109 & 1;
        v115 = v155;
        v116 = v153;
        sub_1BCB7C20C(v55, v126, v150, v134, v155, v153, v101 & 1, v142, v105, v107, v122, v124, 9, 0x657369726E6F6F4DLL, 0xE900000000000020, v125, v126, v127, v128, v129, v130, v131, v132, v133, v134, v135, v136);

        sub_1BC9660CC(v113, v147, &qword_1EBD0A1D8);
        swift_storeEnumTagMultiPayload();
        sub_1BCA5B4A0(&qword_1EDA1B540, &qword_1EBD0A1D8);
        v117 = v149;
        sub_1BCE1BF60();
        sub_1BC9660CC(v117, v160, &qword_1EBD0A1D0);
        swift_storeEnumTagMultiPayload();
        sub_1BCB7CE54();
        sub_1BCB7CF04();
        v76 = v154;
        sub_1BCE1BF60();
        sub_1BC998CF4(v115, v116, v141 & 1);

        sub_1BC998CF4(v143, v144, v114);

        sub_1BCA5B44C(v117, &qword_1EBD0A1D0);
        sub_1BCA5B44C(v113, &qword_1EBD0A1D8);
        (*(v156 + 8))(v152, v157);
      }

      v49 = v171;
      v48 = v172;
      v47 = v133;
      sub_1BC9660CC(v76, v132, &qword_1EBD0A1E0);
      swift_storeEnumTagMultiPayload();
      sub_1BCB7CDA4();
      sub_1BCB7CF04();
      sub_1BCE1BF60();
      sub_1BCA5B44C(v76, &qword_1EBD0A1E0);
      (*(v161 + 8))(v134, v128);
    }

    sub_1BC9660CC(v47, v165, &qword_1EBD0A1F0);
    swift_storeEnumTagMultiPayload();
    sub_1BCB7CD74();
    sub_1BCB7CF04();
    v118 = v166;
    sub_1BCE1BF60();
    sub_1BC9660CC(v118, v49, &qword_1EBD0A1B8);
    swift_storeEnumTagMultiPayload();
    sub_1BCB7CDD4(&qword_1EDA1B760, &qword_1EBD0A1B8, &unk_1BCE538F0, sub_1BCB7CD74);
    v45 = v167;
    sub_1BCE1BF60();
    sub_1BCA5B44C(v118, &qword_1EBD0A1B8);
    sub_1BCA5B44C(v47, &qword_1EBD0A1F0);
    sub_1BCB7CFB4(v131);
  }

  v119 = v168;
  sub_1BC9660CC(v45, v168, &qword_1EBD0A1F8);
  sub_1BC9660CC(v119, v48, &qword_1EBD0A1F8);
  v120 = v48 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0A200) + 48);
  *v120 = 0;
  *(v120 + 8) = 1;
  sub_1BCA5B44C(v45, &qword_1EBD0A1F8);
  return sub_1BCA5B44C(v119, &qword_1EBD0A1F8);
}

void sub_1BCB7C20C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, unsigned __int8 a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  OUTLINED_FUNCTION_20_0();
  v122 = v28;
  v123 = v27;
  LODWORD(v115) = v29;
  v116 = v30;
  v114 = v31;
  v104 = v32;
  v34 = v33;
  v36 = v35;
  v112 = a27;
  v111 = a26;
  v110 = a25;
  v120 = a24;
  v118 = a23;
  v119 = a22;
  v117 = a21;
  v37 = sub_1BCE1BD20();
  MEMORY[0x1EEE9AC00](v37 - 8);
  OUTLINED_FUNCTION_2_0();
  sub_1BCE1C100();
  OUTLINED_FUNCTION_2();
  v105 = v39;
  v106 = v38;
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_2_0();
  v42 = v41 - v40;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0A210);
  OUTLINED_FUNCTION_2();
  v108 = v44;
  v109 = v43;
  MEMORY[0x1EEE9AC00](v43);
  v46 = &v103 - v45;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0A218);
  MEMORY[0x1EEE9AC00](v47 - 8);
  v121 = &v103 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v49);
  v124 = &v103 - v50;
  v51 = sub_1BCE1B4E0();
  OUTLINED_FUNCTION_2();
  v53 = v52;
  MEMORY[0x1EEE9AC00](v54);
  OUTLINED_FUNCTION_2_0();
  v57 = v56 - v55;
  sub_1BCB7A430(v58, v59, v60, v61, v62, v63, v64, v65, v103, v104, v105, v106, v107, v108, v109, v110, v111, v112, v113, v114);
  sub_1BCDC0C0C(v36, v34);
  (*(v53 + 8))(v57, v51);
  v66 = sub_1BCE1CBA0();
  v67 = sub_1BCE1C200();
  v113 = v66;
  sub_1BCB7C9D0();
  memcpy(v129, v131, sizeof(v129));
  memcpy(v130, v131, sizeof(v130));
  sub_1BC9660CC(v129, v127, &qword_1EBD0A220);
  sub_1BCA5B44C(v130, &qword_1EBD0A220);
  memcpy(&v128[7], v129, 0x48uLL);
  sub_1BCE1C480();
  v68 = sub_1BCE1C330();

  KeyPath = swift_getKeyPath();
  LOBYTE(v127[0]) = v67;
  memcpy(v127 + 1, v128, 0x4FuLL);
  v127[10] = KeyPath;
  v127[11] = v68;
  sub_1BCE1C0D0();
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0A228);
  v71 = sub_1BCB7D010();
  v107 = v46;
  sub_1BCE1C930();
  (*(v105 + 8))(v42, v106);
  memcpy(v131, v127, 0x60uLL);
  sub_1BCA5B44C(v131, &qword_1EBD0A228);
  sub_1BCE1BD10();
  sub_1BCE1BD00();
  sub_1BCE19AA0();
  sub_1BCE1A120();
  sub_1BCE1BCF0();

  OUTLINED_FUNCTION_6_0();
  sub_1BCE1BD00();
  sub_1BCE1BD40();
  if (qword_1EDA1EFB0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v72 = qword_1EDA1EFB8;
  OUTLINED_FUNCTION_7_2();
  v73 = sub_1BCE1C680();
  v75 = v74;
  v77 = v76;
  v125 = v70;
  v126 = v71;
  OUTLINED_FUNCTION_0_1();
  swift_getOpaqueTypeConformance2();
  v78 = v109;
  v79 = v107;
  sub_1BCE1C8D0();
  sub_1BC998CF4(v73, v75, v77 & 1);

  (*(v108 + 8))(v79, v78);
  sub_1BCE1BD10();
  sub_1BCE1BD00();
  sub_1BCE1BCD0();
  OUTLINED_FUNCTION_6_0();
  sub_1BCE1BD00();
  sub_1BCE1BD40();
  v80 = qword_1EDA1EFB8;
  OUTLINED_FUNCTION_7_2();
  v81 = sub_1BCE1C680();
  v83 = v82;
  LOBYTE(v73) = v84;
  sub_1BCE1C320();
  v115 = sub_1BCE1C610();
  v116 = v85;
  v123 = v86;
  LOBYTE(v79) = v87;

  sub_1BC998CF4(v81, v83, v73 & 1);

  sub_1BCE1CB20();
  v88 = sub_1BCE1C5C0();
  v90 = v89;
  LODWORD(v120) = v91;
  v93 = v92;

  v94 = v124;
  v95 = v121;
  sub_1BC9660CC(v124, v121, &qword_1EBD0A218);
  LOBYTE(v79) = v79 & 1;
  LOBYTE(v125) = v79;
  v96 = v122;
  sub_1BC9660CC(v95, v122, &qword_1EBD0A218);
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0A238);
  v98 = v96 + *(v97 + 48);
  v100 = v115;
  v99 = v116;
  v101 = v123;
  *v98 = v115;
  *(v98 + 8) = v101;
  *(v98 + 16) = v79;
  *(v98 + 24) = v99;
  v102 = v96 + *(v97 + 64);
  sub_1BCA81D10(v100, v101, v79);

  LOBYTE(v79) = v120 & 1;
  sub_1BCA81D10(v88, v90, v120 & 1);

  *v102 = v88;
  *(v102 + 8) = v90;
  *(v102 + 16) = v79;
  *(v102 + 24) = v93;
  sub_1BCA5B44C(v94, &qword_1EBD0A218);
  sub_1BC998CF4(v88, v90, v79);

  sub_1BC998CF4(v100, v123, v125);

  sub_1BCA5B44C(v95, &qword_1EBD0A218);
  OUTLINED_FUNCTION_21();
}

void sub_1BCB7C9D0()
{
  OUTLINED_FUNCTION_20_0();
  v1 = v0;
  v2 = sub_1BCE1BD20();
  MEMORY[0x1EEE9AC00](v2 - 8);
  OUTLINED_FUNCTION_2_0();
  sub_1BCE1BD10();
  OUTLINED_FUNCTION_6_0();
  sub_1BCE1BD00();
  sub_1BCE1BCE0();
  sub_1BCE1BD00();
  sub_1BCE19AA0();
  sub_1BCE1A120();
  sub_1BCE1BCF0();

  OUTLINED_FUNCTION_6_0();
  sub_1BCE1BD00();
  sub_1BCE1BD40();
  v3 = OUTLINED_FUNCTION_6_30();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  sub_1BCE1BD10();
  OUTLINED_FUNCTION_6_0();
  sub_1BCE1BD00();
  sub_1BCE1BCE0();
  sub_1BCE1BD00();
  v10 = sub_1BCE19AA0();
  MoonPhase.abbreviatedDescription.getter(v10);
  sub_1BCE1BCF0();

  OUTLINED_FUNCTION_6_0();
  sub_1BCE1BD00();
  sub_1BCE1BD40();
  v11 = OUTLINED_FUNCTION_6_30();
  v13 = v12;
  v15 = v14 & 1;
  *v1 = v3;
  *(v1 + 8) = v5;
  *(v1 + 16) = v7 & 1;
  *(v1 + 24) = v9;
  *(v1 + 32) = 257;
  *(v1 + 40) = v11;
  *(v1 + 48) = v12;
  *(v1 + 56) = v14 & 1;
  *(v1 + 64) = v16;
  sub_1BCA81D10(v3, v5, v7 & 1);

  sub_1BCA81D10(v11, v13, v15);

  sub_1BC998CF4(v11, v13, v15);

  sub_1BC998CF4(v3, v5, v7 & 1);

  OUTLINED_FUNCTION_21();
}

void sub_1BCB7CC04()
{
  type metadata accessor for MoonComplicationDataStatus();
  if (v0 <= 0x3F)
  {
    type metadata accessor for WidgetDateFormatter();
    if (v1 <= 0x3F)
    {
      type metadata accessor for NextMoonEventEvaluationManager();
      if (v2 <= 0x3F)
      {
        sub_1BCB7CCB8();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1BCB7CCB8()
{
  if (!qword_1EDA1BC18)
  {
    sub_1BCE1B4E0();
    v0 = sub_1BCE1B4F0();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDA1BC18);
    }
  }
}

uint64_t sub_1BCB7CD10(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MoonComplicationDataStatus();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BCB7CDD4(unint64_t *a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    v7 = OUTLINED_FUNCTION_14_2(0, a2);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v7);
    a4();
    sub_1BCB7CF04();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1BCB7CE54()
{
  result = qword_1EDA1B7B0;
  if (!qword_1EDA1B7B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD0A1D0);
    sub_1BCA5B4A0(&qword_1EDA1B540, &unk_1EBD0A1D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA1B7B0);
  }

  return result;
}

unint64_t sub_1BCB7CF04()
{
  result = qword_1EDA1B458;
  if (!qword_1EDA1B458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA1B458);
  }

  return result;
}

uint64_t sub_1BCB7CF58(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_4();
  v4 = OUTLINED_FUNCTION_10_1();
  v5(v4);
  return a2;
}

uint64_t sub_1BCB7CFB4(uint64_t a1)
{
  v2 = type metadata accessor for MoonComplicationViewModel();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1BCB7D010()
{
  result = qword_1EDA1BB10;
  if (!qword_1EDA1BB10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD0A228);
    sub_1BCA5B4A0(&qword_1EDA1BBD0, &qword_1EBD0A230);
    sub_1BCA5B4A0(&qword_1EDA1B6B0, &qword_1EBD08400);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA1BB10);
  }

  return result;
}

uint64_t MoonInterpolationProvider.interpolate(for:startOfDay:endOfDay:coordinate:dayMoonPhase:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, char a3@<W3>, uint64_t a4@<X8>, double a5@<D0>, double a6@<D1>)
{
  v13 = v6[5];
  v14 = v6[6];
  __swift_project_boxed_opaque_existential_1(v6 + 2, v13);
  result = (*(v14 + 16))(a1, v13, v14, a5, a6);
  if (result)
  {
    v16 = result;
    v17 = v6[5];
    v18 = v6[6];
    __swift_project_boxed_opaque_existential_1(v6 + 2, v17);
    v19 = (*(v18 + 16))(a2, v17, v18, a5, a6);
    if (v19)
    {
      v20 = v19;
      sub_1BCE19030();
      v22 = v21;
      sub_1BCE19030();
      v24 = v22 / v23;
      GEOCelestialEphemeris.moonPhaseAngle.getter();
      v26 = v25;
      GEOCelestialEphemeris.moonPhaseAngle.getter();
      v28 = OUTLINED_FUNCTION_0_40(v27 - v26);
      v30 = v28 + v29;
      v31 = CelestialEphemeris.radiusVector.getter();
      v32 = CelestialEphemeris.radiusVector.getter();
      v33 = OUTLINED_FUNCTION_0_40(v32 - v31);
      v35 = v33 + v34;
      v36 = CelestialEphemeris.librationPositionAngle.getter();
      v37 = CelestialEphemeris.librationPositionAngle.getter();
      v38 = OUTLINED_FUNCTION_0_40(v37 - v36);
      v40 = v38 + v39;
      [*(v16 + 16) illuminatedFraction];
      v42 = v41;
      [*(v20 + 16) illuminatedFraction];
      v44 = sub_1BCB7D4DC(a3, v24, v42, v43);

      *a4 = v44;
      *(a4 + 8) = v30;
      *(a4 + 16) = v35;
      *(a4 + 24) = v40;
      *(a4 + 32) = 0;
      return result;
    }
  }

  *a4 = 0u;
  *(a4 + 16) = 0u;
  *(a4 + 32) = 1;
  return result;
}

double sub_1BCB7D37C(double a1, double a2, double a3, double a4, double a5)
{
  v8 = a2;
  if (a1 != a3)
  {
    return (a4 - a2) / (a3 - a1) * a5 + a2 - (a4 - a2) / (a3 - a1) * a1;
  }

  if (qword_1EBD070D0 != -1)
  {
    swift_once();
  }

  v10 = sub_1BCE1ACC0();
  __swift_project_value_buffer(v10, qword_1EBD09510);
  v11 = sub_1BCE1ACA0();
  v12 = sub_1BCE1D8B0();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 134350080;
    *(v13 + 4) = a1;
    *(v13 + 12) = 2050;
    *(v13 + 14) = v8;
    *(v13 + 22) = 2050;
    *(v13 + 24) = a3;
    *(v13 + 32) = 2050;
    *(v13 + 34) = a4;
    *(v13 + 42) = 2050;
    *(v13 + 44) = a5;
    _os_log_impl(&dword_1BC940000, v11, v12, "Cannot linearly interpolate moon data between points with no slope; ax=%{public}f, ay=%{public}f, bx=%{public}f, by=%{public}f, x=%{public}f", v13, 0x34u);
    MEMORY[0x1BFB31B10](v13, -1, -1);
  }

  return v8;
}

double sub_1BCB7D4DC(char a1, double a2, double a3, double a4)
{
  if (a1 == 8)
  {
    return (a4 - a3) * a2 + a3 + (a4 - a3) * -0.0;
  }

  v8 = sub_1BCE1A130();
  v10 = v9;
  if (v8 == sub_1BCE1A130() && v10 == v11)
  {
    goto LABEL_14;
  }

  v13 = OUTLINED_FUNCTION_1_40();

  if (v13)
  {
    goto LABEL_15;
  }

  v14 = sub_1BCE1A130();
  v16 = v15;
  if (v14 == sub_1BCE1A130() && v16 == v17)
  {
LABEL_14:

    goto LABEL_15;
  }

  v19 = OUTLINED_FUNCTION_1_40();

  if ((v19 & 1) == 0)
  {
    return (a4 - a3) * a2 + a3 + (a4 - a3) * -0.0;
  }

LABEL_15:
  v20 = sub_1BCE1A130();
  v22 = v21;
  if (v20 == sub_1BCE1A130() && v22 == v23)
  {

    v26 = 1.0;
  }

  else
  {
    v25 = sub_1BCE1E090();

    if (v25)
    {
      v26 = 1.0;
    }

    else
    {
      v26 = 0.0;
    }
  }

  v27 = vabdd_f64(v26, a3);
  v28 = vabdd_f64(v26, a4);
  v29 = v27 / (v27 + v28);
  if (v29 >= a2)
  {
    v31 = 0.0;
    v32 = a3;
    v30 = v29;
  }

  else
  {
    v30 = 1.0;
    v31 = v27 / (v27 + v28);
    v32 = v26;
    v26 = a4;
  }

  return sub_1BCB7D37C(v31, v32, v30, v26, a2);
}

uint64_t MoonInterpolationProvider.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return MEMORY[0x1EEE6BDC0](v0, 56, 7);
}

void sub_1BCB7D7A8(uint64_t a1@<X8>)
{
  v2 = a1 + 1436;
  sub_1BCA74794();
  v4 = v3;
  sub_1BCA74794();
  *a1 = 0x4006666666666666;
  *(a1 + 8) = 5;
  *(a1 + 16) = 0x3FF0000000000000;
  *(a1 + 24) = 30;
  *(a1 + 32) = xmmword_1BCE3BED0;
  *(a1 + 48) = xmmword_1BCE3BED0;
  *(a1 + 64) = 0x42DC000042480000;
  *(a1 + 72) = 0xC416000000000000;
  *(a1 + 80) = xmmword_1BCE43900;
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
  *(a1 + 388) = 0x3CA3D70A3EC1C9A8;
  *(a1 + 400) = xmmword_1BCE3BF20;
  *(a1 + 416) = 0x3F0000003F000000;
  *(a1 + 424) = 10;
  *(a1 + 432) = xmmword_1BCE3BF30;
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
  *(a1 + 624) = _Q0;
  *(a1 + 640) = _Q0;
  *(a1 + 656) = 0x4220000041200000;
  *(a1 + 664) = 0x3FC000003E99999ALL;
  *(a1 + 672) = 0x40C0000040400000;
  *(a1 + 688) = _Q0;
  *(a1 + 704) = 1065353216;
  *(a1 + 712) = 0x3F8000003F000000;
  *(a1 + 720) = 0x401333333FDCCCCDLL;
  *(a1 + 728) = 0;
  *(a1 + 736) = 1;
  *(a1 + 744) = 4;
  *(a1 + 752) = xmmword_1BCE3BF40;
  *(a1 + 768) = 0x617274736F746C41;
  *(a1 + 776) = 0xEF53202D20737574;
  *(a1 + 784) = 0xD000000000000013;
  *(a1 + 792) = 0x80000001BCE792E0;
  *(a1 + 800) = 6;
  *(a1 + 816) = xmmword_1BCE3F000;
  *(a1 + 832) = 1080033280;
  *(a1 + 840) = vdup_n_s32(0x3F333333u);
  *(a1 + 848) = 0x4208000041F80000;
  *(a1 + 856) = 3226386068;
  *(a1 + 864) = 0;
  *(a1 + 872) = 4;
  *(a1 + 880) = xmmword_1BCE48800;
  *(a1 + 896) = 0x7970736957;
  *(a1 + 904) = 0xE500000000000000;
  strcpy((a1 + 912), "Wispy_Single");
  *(a1 + 925) = 0;
  *(a1 + 926) = -5120;
  *(a1 + 928) = 6;
  *(a1 + 944) = xmmword_1BCE3F010;
  *(a1 + 960) = 1080662426;
  *(a1 + 968) = vdup_n_s32(0x3F666666u);
  *(a1 + 976) = 0x41B70A3D41800000;
  *(a1 + 984) = 3229171802;
  *(a1 + 992) = 0;
  *(a1 + 1000) = 4;
  *(a1 + 1008) = xmmword_1BCE48810;
  *(a1 + 1024) = 0x7970736957;
  *(a1 + 1032) = 0xE500000000000000;
  strcpy((a1 + 1040), "Wispy_Single");
  *(a1 + 1053) = 0;
  *(a1 + 1054) = -5120;
  *(a1 + 1056) = 6;
  *(a1 + 1072) = xmmword_1BCE3F030;
  *(a1 + 1088) = 1081081856;
  *(a1 + 1096) = vdup_n_s32(0x3F933333u);
  *(a1 + 1104) = 0x413F333341100000;
  *(a1 + 1112) = 1063004406;
  *(a1 + 1120) = 0;
  *(a1 + 1128) = 3;
  *(a1 + 1136) = xmmword_1BCE48820;
  *(a1 + 1152) = 0x7970736957;
  *(a1 + 1160) = 0xE500000000000000;
  strcpy((a1 + 1168), "Wispy_Single");
  *(a1 + 1181) = 0;
  *(a1 + 1182) = -5120;
  *(a1 + 1184) = 6;
  *(a1 + 1200) = _Q0;
  *(a1 + 1216) = xmmword_1BCE48830;
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
  *(a1 + 1376) = _Q0;
  *(a1 + 1392) = xmmword_1BCE3BFB0;
  *(a1 + 1408) = _Q0;
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
  *(a1 + 1552) = xmmword_1BCE53AB0;
  *(a1 + 1568) = 0x4225999A42220000;
  *(a1 + 1584) = xmmword_1BCE3BFE0;
  *(a1 + 1600) = xmmword_1BCE3BFF0;
  *(a1 + 1616) = 0x4100000040C00000;
  *(a1 + 1624) = 0x40000000;
  *(a1 + 1628) = 0x1000000;
  *(a1 + 1636) = 256;
  *(a1 + 1632) = 0;
  *(v2 + 202) = 0;
  *(v2 + 210) = 16777217;
  *(a1 + 1650) = 257;
  *(a1 + 1652) = 0;
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
  *(a1 + 1744) = 0u;
  *(a1 + 1760) = 11;
  *(a1 + 1776) = xmmword_1BCE3C030;
  *(a1 + 1792) = xmmword_1BCE3F050;
  *(a1 + 1808) = xmmword_1BCE3F060;
  *(a1 + 1824) = 1;
  *(a1 + 1828) = xmmword_1BCE3F070;
  *(a1 + 1844) = 1040187392;
  *(a1 + 1848) = 0x41C8000041700000;
  *(a1 + 1856) = 3;
  *(a1 + 1864) = 0x40000000;
  *(a1 + 1872) = 0x408000003F400000;
  *(a1 + 1880) = 1104388555;
  *(a1 + 1888) = xmmword_1BCE3F080;
  *(a1 + 1904) = 0x3DCCCCCD00000000;
  *(a1 + 1912) = 1101004800;
  *(a1 + 1920) = 1;
  *(a1 + 1928) = 1107820544;
  *(a1 + 1936) = xmmword_1BCE3F090;
  *(a1 + 1952) = 1077936128;
  *(a1 + 1960) = 0x420C000041C80000;
  *(a1 + 1968) = xmmword_1BCE403A0;
  *(a1 + 1984) = 0x3F80000000000000;
  *(a1 + 1992) = 1061158912;
  *(a1 + 2000) = 0x407333333FB33333;
  *(a1 + 2008) = 0x408000004019999ALL;
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
  *(a1 + 2208) = 0x40A000003FC00000;
  *(a1 + 2224) = xmmword_1BCE3C090;
  *(a1 + 2240) = xmmword_1BCE3C0A0;
  *(a1 + 2256) = _Q0;
  *(a1 + 2304) = 0;
  *(a1 + 2288) = 0u;
  *(a1 + 2272) = 0u;
  *(a1 + 2312) = v4;
  *(a1 + 2320) = v10;
}

double sub_1BCB7DF04@<D0>(uint64_t a1@<X8>)
{
  v2 = a1 + 1436;
  sub_1BCB7E700();
  v4 = v3;
  sub_1BCB806C8();
  *a1 = 0x4006666666666666;
  *(a1 + 8) = 3;
  *(a1 + 16) = 0x3FF0000000000000;
  *(a1 + 24) = 30;
  *(a1 + 32) = xmmword_1BCE3BED0;
  *(a1 + 48) = xmmword_1BCE3BED0;
  *(a1 + 64) = 0x42D2000042480000;
  *(a1 + 72) = 0xC3AF000000000000;
  *(a1 + 80) = xmmword_1BCE53AF0;
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
  *(a1 + 388) = 0x3AC49BA63F333333;
  *(a1 + 400) = xmmword_1BCE3C670;
  *(a1 + 416) = 0x3F0000003F000000;
  *(a1 + 424) = 30;
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
  *(a1 + 608) = 0x40C0000040800000;
  *(a1 + 624) = xmmword_1BCE53B00;
  *(a1 + 640) = xmmword_1BCE53B10;
  *(a1 + 656) = 0x4190000041200000;
  *(a1 + 664) = 0x400CCCCD3E99999ALL;
  *(a1 + 672) = 0x408000003F800000;
  *(a1 + 688) = xmmword_1BCE3C700;
  *(a1 + 704) = 1056964608;
  __asm { FMOV            V2.2S, #1.0 }

  *(a1 + 712) = _D2;
  *(a1 + 720) = 0x41300000410170A4;
  *(a1 + 728) = 1084227584;
  *(a1 + 736) = 1;
  *(a1 + 744) = 4;
  *(a1 + 752) = xmmword_1BCE53B20;
  *(a1 + 768) = 0xD000000000000010;
  *(a1 + 776) = 0x80000001BCE7A280;
  *(a1 + 784) = 0xD000000000000014;
  *(a1 + 792) = 0x80000001BCE7A2A0;
  *(a1 + 800) = 8;
  *(a1 + 816) = _Q0;
  *(a1 + 832) = 1060320051;
  *(a1 + 840) = 0x3EE666663EB33333;
  *(a1 + 848) = 0x4110000040E00000;
  *(a1 + 856) = 1075838976;
  *(a1 + 864) = 1;
  *(a1 + 872) = 4;
  *(a1 + 880) = xmmword_1BCE53B30;
  *(a1 + 896) = 0x2D20737572726943;
  *(a1 + 904) = 0xEA00000000005320;
  strcpy((a1 + 912), "Cirrus_SingleS");
  *(a1 + 927) = -18;
  *(a1 + 928) = 6;
  *(a1 + 944) = _Q0;
  *(a1 + 960) = 1061997773;
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
  *(a1 + 1072) = xmmword_1BCE45B10;
  *(a1 + 1088) = 1061997773;
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
  *(a1 + 1200) = xmmword_1BCE53B40;
  *(a1 + 1216) = xmmword_1BCE53B50;
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
  *(a1 + 1376) = xmmword_1BCE45B30;
  *(a1 + 1392) = xmmword_1BCE53B60;
  *(a1 + 1408) = xmmword_1BCE45B50;
  *(a1 + 1424) = 0x3F99999A3ECCCCCDLL;
  *(a1 + 1432) = 1;
  *v2 = xmmword_1BCE3BFC0;
  *(a1 + 1456) = 0x41D3333341BD3333;
  *(a1 + 1472) = xmmword_1BCE53B70;
  *(a1 + 1488) = xmmword_1BCE53B80;
  *(a1 + 1504) = 1092616192;
  *(a1 + 1512) = 0x736168506E6F6F6DLL;
  *(a1 + 1520) = 0xEA00000000003065;
  *(a1 + 1528) = 1142292480;
  *(a1 + 1536) = xmmword_1BCE53B90;
  *(a1 + 1552) = xmmword_1BCE3C770;
  *(a1 + 1568) = 0x4248000042200000;
  *(a1 + 1584) = _Q0;
  *(a1 + 1600) = _Q0;
  __asm { FMOV            V3.2S, #-30.0 }

  *(a1 + 1616) = -_D3;
  *(a1 + 1624) = 0x40000000;
  *(a1 + 1628) = 0x1000000000000;
  *(a1 + 1636) = 16843009;
  *(a1 + 1640) = 1;
  *(v2 + 205) = 0x1000000;
  *(a1 + 1645) = 0;
  *(v2 + 210) = 16843009;
  *(a1 + 1650) = 0;
  *(a1 + 1652) = 0;
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
  *(a1 + 1760) = 0;
  *(a1 + 1744) = 0u;
  *(a1 + 1776) = xmmword_1BCE3D330;
  *(a1 + 1792) = xmmword_1BCE53BA0;
  *(a1 + 1808) = xmmword_1BCE436B0;
  *(a1 + 1824) = 1;
  *(a1 + 1828) = xmmword_1BCE3D8D0;
  *(a1 + 1844) = 1036831949;
  *(a1 + 1848) = 0x4100000041200000;
  *(a1 + 1856) = 0;
  *(a1 + 1864) = 1041865114;
  *(a1 + 1872) = 0x400AE1483F970A3DLL;
  *(a1 + 1880) = 1109393408;
  *(a1 + 1888) = xmmword_1BCE3C7C0;
  *(a1 + 1904) = 0x3E4CCCCD40A00000;
  *(a1 + 1912) = 1101004800;
  *(a1 + 1920) = 0;
  *(a1 + 1928) = 1107296256;
  *(a1 + 1936) = xmmword_1BCE436C0;
  *(a1 + 1952) = 1065353216;
  *(a1 + 1960) = 0x420C000041C80000;
  *(a1 + 1968) = xmmword_1BCE3C7D0;
  *(a1 + 1984) = 0x3F80000000000000;
  *(a1 + 1992) = 1061158912;
  *(a1 + 2000) = 0x3F3333333E4CCCCDLL;
  *(a1 + 2008) = 0x3F4CCCCD3F19999ALL;
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
  *(a1 + 2160) = _Q0;
  *(a1 + 2176) = _Q0;
  *(a1 + 2192) = 1061997773;
  *(a1 + 2200) = 10;
  *(a1 + 2208) = 0x41A000003F4CCCCDLL;
  *(a1 + 2224) = xmmword_1BCE53BB0;
  *(a1 + 2240) = xmmword_1BCE53BC0;
  result = 0.00781250185;
  *(a1 + 2256) = xmmword_1BCE44E30;
  *(a1 + 2304) = 0;
  *(a1 + 2288) = 0u;
  *(a1 + 2272) = 0u;
  *(a1 + 2312) = v4;
  *(a1 + 2320) = v13;
  return result;
}

__n128 sub_1BCB7E700()
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
  *(v0 + 192) = xmmword_1BCE3E220;
  __asm { FMOV            V21.2D, #0.5 }

  *(v0 + 208) = _Q21;
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
  *(v0 + 1168) = 0x4170000000000000;
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
  *(v0 + 1408) = xmmword_1BCE3E220;
  *(v0 + 1424) = _Q21;
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
  *(v0 + 2384) = 0x4170000000000000;
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
  *(v0 + 2624) = xmmword_1BCE3CCC0;
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
  *(v0 + 3600) = 0x4170000000000000;
  *(v0 + 3608) = 0x3FF0000000000000;
  *(v0 + 3616) = result;
  *(v0 + 3632) = result;
  *(v0 + 3648) = result;
  *(v0 + 3664) = 0x3FF0000000000000;
  *(v0 + 3680) = 0xC018000000000000;
  *(v0 + 3688) = 0;
  *(v0 + 3689) = *v14;
  *(v0 + 3692) = *&v14[3];
  *(v0 + 3696) = xmmword_1BCE3CB30;
  *(v0 + 3712) = 0x447A000044160000;
  *(v0 + 3720) = 1061997773;
  *(v0 + 4704) = result;
  *(v0 + 4720) = xmmword_1BCE3CB00;
  *(v0 + 4800) = result;
  *(v0 + 4816) = 0x4170000000000000;
  *(v0 + 4824) = 0x3FF0000000000000;
  *(v0 + 4736) = xmmword_1BCE3CB10;
  *(v0 + 4752) = xmmword_1BCE3CB20;
  *(v0 + 4768) = xmmword_1BCE3CB10;
  *(v0 + 4784) = result;
  *(v0 + 4608) = result;
  *(v0 + 4624) = result;
  *(v0 + 4640) = result;
  *(v0 + 4656) = result;
  *(v0 + 4672) = result;
  *(v0 + 4688) = result;
  *(v0 + 4512) = result;
  *(v0 + 4528) = result;
  *(v0 + 4544) = result;
  *(v0 + 4560) = result;
  *(v0 + 4576) = result;
  *(v0 + 4592) = result;
  *(v0 + 4416) = result;
  *(v0 + 4432) = result;
  *(v0 + 4448) = result;
  *(v0 + 4464) = result;
  *(v0 + 4480) = result;
  *(v0 + 4496) = result;
  *(v0 + 4320) = result;
  *(v0 + 4336) = result;
  *(v0 + 4352) = result;
  *(v0 + 4368) = result;
  *(v0 + 4384) = result;
  *(v0 + 4400) = result;
  *(v0 + 4240) = result;
  *(v0 + 4256) = result;
  *(v0 + 4272) = result;
  *(v0 + 4288) = result;
  *(v0 + 4304) = result;
  *(v0 + 4160) = result;
  *(v0 + 4176) = result;
  *(v0 + 4192) = result;
  *(v0 + 4208) = result;
  *(v0 + 4224) = result;
  *(v0 + 3728) = xmmword_1BCE3CA60;
  *(v0 + 4096) = result;
  *(v0 + 4112) = result;
  *(v0 + 4128) = result;
  *(v0 + 4144) = result;
  *(v0 + 3968) = xmmword_1BCE3C8C0;
  *(v0 + 4048) = result;
  *(v0 + 4064) = 0;
  *(v0 + 4072) = 1065353216;
  *(v0 + 4080) = result;
  *(v0 + 3984) = xmmword_1BCE3CCB0;
  *(v0 + 4000) = xmmword_1BCE3CBB0;
  *(v0 + 4040) = 0x3FF0000000000000;
  v11 = vdupq_n_s32(0x3F59999Au);
  *(v0 + 4016) = v11;
  *(v0 + 4032) = 1062836634;
  *(v0 + 3744) = result;
  *(v0 + 3920) = result;
  *(v0 + 3936) = xmmword_1BCE3C8C0;
  *(v0 + 3952) = result;
  *(v0 + 3760) = xmmword_1BCE3CA70;
  *(v0 + 3872) = xmmword_1BCE3D960;
  *(v0 + 3888) = result;
  *(v0 + 3904) = result;
  *(v0 + 3840) = xmmword_1BCE3C8C0;
  *(v0 + 3856) = vdupq_n_s64(0x3FE88B6D00000000uLL);
  *(v0 + 3776) = xmmword_1BCE3CA80;
  *(v0 + 3808) = xmmword_1BCE43730;
  *(v0 + 3824) = result;
  *(v0 + 3792) = xmmword_1BCE43720;
  *(v0 + 4944) = xmmword_1BCE424C0;
  *(v0 + 4960) = xmmword_1BCE3CB50;
  *(v0 + 4976) = xmmword_1BCE3CB60;
  *(v0 + 4992) = xmmword_1BCE3CB70;
  *(v0 + 5008) = xmmword_1BCE43740;
  *(v0 + 5024) = xmmword_1BCE43750;
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
  *(v0 + 2656) = xmmword_1BCE3DCB0;
  *(v0 + 2672) = result;
  *(v0 + 2688) = result;
  *(v0 + 2640) = _Q21;
  *(v0 + 4832) = result;
  *(v0 + 4848) = result;
  *(v0 + 4864) = result;
  *(v0 + 4880) = 0x3FF0000000000000;
  *(v0 + 4896) = 0;
  *(v0 + 4904) = 0;
  *(v0 + 4905) = *v15;
  *(v0 + 4908) = *&v15[3];
  *(v0 + 4912) = xmmword_1BCE3CB30;
  *(v0 + 5056) = xmmword_1BCE3CBB0;
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
  *(v0 + 4928) = 0x44C8000044160000;
  *(v0 + 4936) = 1061997773;
  *(v0 + 5040) = result;
  *(v0 + 5072) = result;
  *(v0 + 5088) = xmmword_1BCE3DA70;
  *(v0 + 5104) = result;
  *(v0 + 5120) = result;
  *(v0 + 5136) = result;
  *(v0 + 5200) = v7;
  v9 = vdupq_n_s32(0x3F666666u);
  *(v0 + 5216) = xmmword_1BCE3C8E0;
  *(v0 + 5232) = v9;
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
  *(v0 + 6121) = *v16;
  *(v0 + 6096) = 0x3FF0000000000000;
  *(v0 + 6112) = 0x4017FFFFFFFFFFFALL;
  *(v0 + 6120) = 0;
  *(v0 + 6124) = *&v16[3];
  *(v0 + 6152) = 1060739482;
  *(v0 + 6256) = result;
  *(v0 + 6288) = result;
  *(v0 + 6304) = xmmword_1BCE3DAE0;
  *(v0 + 6320) = result;
  *(v0 + 6336) = result;
  *(v0 + 6352) = result;
  *(v0 + 6448) = v9;
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
  *(v0 + 7664) = v9;
  *(v0 + 8880) = v9;
  *(v0 + 13744) = v9;
  *(v0 + 14960) = v9;
  *(v0 + 16176) = v9;
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
  *(v0 + 7616) = xmmword_1BCE3C8C0;
  *(v0 + 8832) = xmmword_1BCE3C8C0;
  *(v0 + 10048) = xmmword_1BCE3C8C0;
  *(v0 + 11264) = xmmword_1BCE3C8C0;
  *(v0 + 12480) = xmmword_1BCE3C8C0;
  *(v0 + 13696) = xmmword_1BCE3C8C0;
  *(v0 + 14912) = xmmword_1BCE3C8C0;
  *(v0 + 16128) = xmmword_1BCE3C8C0;
  *(v0 + 17344) = xmmword_1BCE3C8C0;
  *(v0 + 13728) = xmmword_1BCE437B0;
  *(v0 + 17376) = xmmword_1BCE437B0;
  *(v0 + 17392) = v11;
  *(v0 + 17408) = 1062836634;
  *(v0 + 17424) = xmmword_1BCE3D220;
  *(v0 + 18096) = xmmword_1BCE3D230;
  *(v0 + 18112) = xmmword_1BCE3D240;
  *(v0 + 18128) = xmmword_1BCE3D250;
  *(v0 + 18144) = xmmword_1BCE3D260;
  *(v0 + 18288) = xmmword_1BCE3DC90;
  *(v0 + 18304) = 0x4396000042C80000;
  *(v0 + 18320) = xmmword_1BCE3C970;
  *(v0 + 18352) = xmmword_1BCE3DCA0;
  *(v0 + 18368) = xmmword_1BCE3D290;
  *(v0 + 18384) = xmmword_1BCE3C9A0;
  *(v0 + 18432) = xmmword_1BCE3CCC0;
  *(v0 + 18464) = xmmword_1BCE3DCB0;
  *(v0 + 18512) = xmmword_1BCE3D3C0;
  *(v0 + 18528) = xmmword_1BCE3D3D0;
  *(v0 + 18544) = xmmword_1BCE3D2D0;
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
  *(v0 + 18592) = xmmword_1BCE4F960;
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
  *(v0 + 19648) = xmmword_1BCE3E220;
  *(v0 + 20864) = xmmword_1BCE3E220;
  *(v0 + 18448) = _Q21;
  *(v0 + 19664) = _Q21;
  *(v0 + 20880) = _Q21;
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
  *(v0 + 7600) = result;
  *(v0 + 7728) = result;
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
  *(v0 + 7744) = result;
  *(v0 + 17520) = result;
  *(v0 + 17536) = result;
  *(v0 + 17552) = result;
  *(v0 + 17568) = result;
  *(v0 + 17584) = result;
  *(v0 + 7760) = result;
  *(v0 + 17448) = 1065353216;
  *(v0 + 17456) = result;
  *(v0 + 17472) = result;
  *(v0 + 17488) = result;
  *(v0 + 17504) = result;
  *(v0 + 7776) = result;
  *(v0 + 7792) = result;
  *(v0 + 7808) = result;
  *(v0 + 17416) = 0x3FEF23CF40000000;
  *(v0 + 17440) = 0;
  *(v0 + 7824) = result;
  *(v0 + 7840) = result;
  *(v0 + 7856) = result;
  *(v0 + 17280) = result;
  *(v0 + 17296) = result;
  *(v0 + 17328) = result;
  *(v0 + 7872) = result;
  *(v0 + 7888) = result;
  *(v0 + 7904) = result;
  *(v0 + 7920) = result;
  *(v0 + 17200) = result;
  *(v0 + 17264) = result;
  *(v0 + 7936) = result;
  *(v0 + 7952) = result;
  *(v0 + 7968) = result;
  *(v0 + 7984) = result;
  *(v0 + 8000) = result;
  *(v0 + 8016) = result;
  *(v0 + 8032) = result;
  *(v0 + 16984) = 0x3FF0000000000000;
  *(v0 + 17064) = 1;
  *(v0 + 17065) = *v25;
  *(v0 + 17068) = *&v25[3];
  *(v0 + 17096) = 1050388079;
  *(v0 + 16992) = result;
  *(v0 + 17008) = result;
  *(v0 + 17024) = result;
  *(v0 + 17040) = 0x3FF0000000000000;
  *(v0 + 17056) = 0xC017FFFFFFFFFFE8;
  *(v0 + 8048) = result;
  *(v0 + 8064) = result;
  *(v0 + 8080) = result;
  *(v0 + 8096) = result;
  *(v0 + 16944) = result;
  *(v0 + 16960) = result;
  *(v0 + 8112) = result;
  *(v0 + 16800) = result;
  *(v0 + 16816) = result;
  *(v0 + 16832) = result;
  *(v0 + 16848) = result;
  *(v0 + 16864) = result;
  *(v0 + 16704) = result;
  *(v0 + 16720) = result;
  *(v0 + 16736) = result;
  *(v0 + 16752) = result;
  *(v0 + 16768) = result;
  *(v0 + 16784) = result;
  *(v0 + 16608) = result;
  *(v0 + 16624) = result;
  *(v0 + 16640) = result;
  *(v0 + 16656) = result;
  *(v0 + 16672) = result;
  *(v0 + 16688) = result;
  *(v0 + 16512) = result;
  *(v0 + 16528) = result;
  *(v0 + 16544) = result;
  *(v0 + 16560) = result;
  *(v0 + 16576) = result;
  *(v0 + 16592) = result;
  *(v0 + 16416) = result;
  *(v0 + 16432) = result;
  *(v0 + 16448) = result;
  *(v0 + 16464) = result;
  *(v0 + 16480) = result;
  *(v0 + 16496) = result;
  *(v0 + 16320) = result;
  *(v0 + 16336) = result;
  *(v0 + 16352) = result;
  *(v0 + 16368) = result;
  *(v0 + 0x4000) = result;
  *(v0 + 16400) = result;
  *(v0 + 8128) = result;
  *(v0 + 16240) = result;
  *(v0 + 16256) = result;
  *(v0 + 16272) = result;
  *(v0 + 16288) = result;
  *(v0 + 16304) = result;
  *(v0 + 8144) = result;
  *(v0 + 8160) = result;
  *(v0 + 16200) = 0x3FEE6AC340000000;
  *(v0 + 16224) = 0;
  *(v0 + 16232) = 0;
  *(v0 + 8176) = result;
  *(v0 + 0x2000) = result;
  *(v0 + 8208) = result;
  *(v0 + 8224) = result;
  *(v0 + 8240) = result;
  *(v0 + 16112) = result;
  *(v0 + 8256) = result;
  *(v0 + 8272) = result;
  *(v0 + 15984) = result;
  *(v0 + 16016) = result;
  *(v0 + 16048) = result;
  *(v0 + 16064) = result;
  *(v0 + 8288) = result;
  *(v0 + 8304) = result;
  *(v0 + 8320) = result;
  *(v0 + 8336) = result;
  *(v0 + 8352) = result;
  *(v0 + 8432) = result;
  *(v0 + 8448) = result;
  *(v0 + 15849) = *v24;
  *(v0 + 15880) = 1061997773;
  *(v0 + 8472) = 0x3FF0000000000000;
  *(v0 + 15824) = 0x3FF0000000000000;
  *(v0 + 15840) = 0;
  *(v0 + 15848) = 1;
  *(v0 + 15852) = *&v24[3];
  *(v0 + 8480) = result;
  *(v0 + 8496) = result;
  *(v0 + 15768) = 0x3FF0000000000000;
  *(v0 + 15776) = result;
  *(v0 + 15792) = result;
  *(v0 + 15808) = result;
  *(v0 + 8512) = result;
  *(v0 + 8528) = 0x3FF0000000000000;
  *(v0 + 8544) = 0x4032000000000001;
  *(v0 + 15728) = result;
  *(v0 + 15744) = result;
  *(v0 + 15568) = result;
  *(v0 + 15584) = result;
  *(v0 + 15600) = result;
  *(v0 + 15616) = result;
  *(v0 + 15632) = result;
  *(v0 + 15648) = result;
  *(v0 + 15472) = result;
  *(v0 + 15488) = result;
  *(v0 + 15504) = result;
  *(v0 + 15520) = result;
  *(v0 + 15536) = result;
  *(v0 + 15552) = result;
  *(v0 + 15376) = result;
  *(v0 + 15392) = result;
  *(v0 + 15408) = result;
  *(v0 + 15424) = result;
  *(v0 + 15440) = result;
  *(v0 + 15456) = result;
  *(v0 + 15280) = result;
  *(v0 + 15296) = result;
  *(v0 + 15312) = result;
  *(v0 + 15328) = result;
  *(v0 + 15344) = result;
  *(v0 + 15360) = result;
  *(v0 + 15184) = result;
  *(v0 + 15200) = result;
  *(v0 + 15216) = result;
  *(v0 + 15232) = result;
  *(v0 + 15248) = result;
  *(v0 + 15264) = result;
  *(v0 + 8552) = 0;
  *(v0 + 15136) = result;
  *(v0 + 15152) = result;
  *(v0 + 15168) = result;
  *(v0 + 8553) = *v18;
  *(v0 + 15072) = result;
  *(v0 + 15088) = result;
  *(v0 + 15104) = result;
  *(v0 + 15120) = result;
  *(v0 + 8556) = *&v18[3];
  *(v0 + 15016) = 0;
  *(v0 + 15024) = result;
  *(v0 + 15040) = result;
  *(v0 + 15056) = result;
  *(v0 + 8584) = 1061158912;
  *(v0 + 8640) = result;
  *(v0 + 14984) = 0x3FEDEF5480000000;
  *(v0 + 15008) = 0x3FE0000000000000;
  *(v0 + 8656) = result;
  *(v0 + 8672) = result;
  *(v0 + 8688) = result;
  *(v0 + 8720) = result;
  *(v0 + 14848) = result;
  *(v0 + 14896) = result;
  *(v0 + 8752) = result;
  *(v0 + 8768) = result;
  *(v0 + 8784) = result;
  *(v0 + 14768) = result;
  *(v0 + 14800) = result;
  *(v0 + 14832) = result;
  *(v0 + 8816) = result;
  *(v0 + 8904) = 0x3FEB9B9BC0000000;
  *(v0 + 8928) = 0x3FF0000000000000;
  *(v0 + 8936) = 0;
  *(v0 + 8944) = result;
  *(v0 + 8960) = result;
  *(v0 + 14633) = *v23;
  *(v0 + 14664) = 1061158912;
  *(v0 + 14608) = 0x3FF0000000000000;
  *(v0 + 14624) = 0x4018000000000010;
  *(v0 + 14632) = 1;
  *(v0 + 14636) = *&v23[3];
  *(v0 + 8976) = result;
  *(v0 + 14528) = result;
  *(v0 + 14552) = 0x3FF0000000000000;
  *(v0 + 14560) = result;
  *(v0 + 14576) = result;
  *(v0 + 14592) = result;
  *(v0 + 8992) = result;
  *(v0 + 9008) = result;
  *(v0 + 9024) = result;
  *(v0 + 9040) = result;
  *(v0 + 14432) = result;
  *(v0 + 14512) = result;
  *(v0 + 14336) = result;
  *(v0 + 14352) = result;
  *(v0 + 14368) = result;
  *(v0 + 14384) = result;
  *(v0 + 14400) = result;
  *(v0 + 14416) = result;
  *(v0 + 14240) = result;
  *(v0 + 14256) = result;
  *(v0 + 14272) = result;
  *(v0 + 14288) = result;
  *(v0 + 14304) = result;
  *(v0 + 14320) = result;
  *(v0 + 14144) = result;
  *(v0 + 14160) = result;
  *(v0 + 14176) = result;
  *(v0 + 14192) = result;
  *(v0 + 14208) = result;
  *(v0 + 14224) = result;
  *(v0 + 14048) = result;
  *(v0 + 14064) = result;
  *(v0 + 14080) = result;
  *(v0 + 14096) = result;
  *(v0 + 14112) = result;
  *(v0 + 14128) = result;
  *(v0 + 13952) = result;
  *(v0 + 13968) = result;
  *(v0 + 13984) = result;
  *(v0 + 14000) = result;
  *(v0 + 14016) = result;
  *(v0 + 14032) = result;
  *(v0 + 13856) = result;
  *(v0 + 13872) = result;
  *(v0 + 13888) = result;
  *(v0 + 13904) = result;
  *(v0 + 13920) = result;
  *(v0 + 13936) = result;
  *(v0 + 9056) = result;
  *(v0 + 13792) = 0x3FF0000000000000;
  *(v0 + 13800) = 0;
  *(v0 + 13808) = result;
  *(v0 + 13824) = result;
  *(v0 + 13840) = result;
  *(v0 + 9072) = result;
  *(v0 + 9088) = result;
  *(v0 + 9104) = result;
  *(v0 + 9120) = result;
  *(v0 + 13768) = 0x3FED73E5C0000000;
  *(v0 + 9136) = result;
  *(v0 + 9152) = result;
  *(v0 + 13616) = result;
  *(v0 + 13632) = result;
  *(v0 + 13648) = result;
  *(v0 + 13680) = result;
  *(v0 + 9168) = result;
  *(v0 + 9184) = result;
  *(v0 + 9200) = result;
  *(v0 + 9216) = result;
  *(v0 + 13552) = result;
  *(v0 + 13584) = result;
  *(v0 + 9232) = result;
  *(v0 + 9248) = result;
  *(v0 + 9264) = result;
  *(v0 + 9280) = result;
  *(v0 + 9296) = result;
  *(v0 + 9312) = result;
  *(v0 + 9328) = result;
  *(v0 + 13408) = 0x4028000000000010;
  *(v0 + 13416) = 1;
  *(v0 + 13417) = *v22;
  *(v0 + 13420) = *&v22[3];
  *(v0 + 13448) = 1060320051;
  *(v0 + 9344) = result;
  *(v0 + 13336) = 0x3FF0000000000000;
  *(v0 + 13344) = result;
  *(v0 + 13360) = result;
  *(v0 + 13376) = result;
  *(v0 + 13392) = 0x3FF0000000000000;
  *(v0 + 9360) = result;
  *(v0 + 9376) = result;
  *(v0 + 9392) = result;
  *(v0 + 9408) = result;
  *(v0 + 13296) = result;
  *(v0 + 13312) = result;
  *(v0 + 13136) = result;
  *(v0 + 13152) = result;
  *(v0 + 13168) = result;
  *(v0 + 13184) = result;
  *(v0 + 13200) = result;
  *(v0 + 13216) = result;
  *(v0 + 13040) = result;
  *(v0 + 13056) = result;
  *(v0 + 13072) = result;
  *(v0 + 13088) = result;
  *(v0 + 13104) = result;
  *(v0 + 13120) = result;
  *(v0 + 12944) = result;
  *(v0 + 12960) = result;
  *(v0 + 12976) = result;
  *(v0 + 12992) = result;
  *(v0 + 13008) = result;
  *(v0 + 13024) = result;
  *(v0 + 12848) = result;
  *(v0 + 12864) = result;
  *(v0 + 12880) = result;
  *(v0 + 12896) = result;
  *(v0 + 12912) = result;
  *(v0 + 12928) = result;
  *(v0 + 12752) = result;
  *(v0 + 12768) = result;
  *(v0 + 12784) = result;
  *(v0 + 12800) = result;
  *(v0 + 12816) = result;
  *(v0 + 12832) = result;
  *(v0 + 12656) = result;
  *(v0 + 12672) = result;
  *(v0 + 12688) = result;
  *(v0 + 12704) = result;
  *(v0 + 12720) = result;
  *(v0 + 12736) = result;
  *(v0 + 12576) = 0x3FF0000000000000;
  *(v0 + 12584) = 0;
  *(v0 + 12592) = result;
  *(v0 + 12608) = result;
  *(v0 + 12624) = result;
  *(v0 + 12640) = result;
  *(v0 + 9424) = result;
  *(v0 + 9440) = result;
  *(v0 + 9456) = result;
  *(v0 + 9472) = result;
  *(v0 + 12496) = result;
  *(v0 + 12552) = 0x3FEB9B9BC0000000;
  *(v0 + 9488) = result;
  *(v0 + 9504) = result;
  *(v0 + 12400) = result;
  *(v0 + 12416) = result;
  *(v0 + 12432) = result;
  *(v0 + 12464) = result;
  *(v0 + 9520) = result;
  *(v0 + 12304) = result;
  *(v0 + 12320) = result;
  *(v0 + 12336) = result;
  *(v0 + 12352) = result;
  *(v0 + 12368) = result;
  *(v0 + 9536) = result;
  *(v0 + 9552) = result;
  *(v0 + 9568) = result;
  *(v0 + 9648) = result;
  *(v0 + 9664) = result;
  *(v0 + 12288) = result;
  *(v0 + 12160) = result;
  *(v0 + 12201) = *v21;
  *(v0 + 12232) = 1061158912;
  *(v0 + 12176) = 0x3FF0000000000000;
  *(v0 + 12192) = 0x4031FFFFFFFFFFF6;
  *(v0 + 12200) = 1;
  *(v0 + 12204) = *&v21[3];
  *(v0 + 9688) = 0x3FF0000000000000;
  *(v0 + 12080) = result;
  *(v0 + 12096) = result;
  *(v0 + 12120) = 0x3FF0000000000000;
  *(v0 + 12128) = result;
  *(v0 + 12144) = result;
  *(v0 + 9696) = result;
  *(v0 + 9712) = result;
  *(v0 + 9728) = result;
  *(v0 + 9744) = 0x3FF0000000000000;
  *(v0 + 11984) = result;
  *(v0 + 12000) = result;
  *(v0 + 11888) = result;
  *(v0 + 11904) = result;
  *(v0 + 11920) = result;
  *(v0 + 11936) = result;
  *(v0 + 11952) = result;
  *(v0 + 11968) = result;
  *(v0 + 11792) = result;
  *(v0 + 11808) = result;
  *(v0 + 11824) = result;
  *(v0 + 11840) = result;
  *(v0 + 11856) = result;
  *(v0 + 11872) = result;
  *(v0 + 11696) = result;
  *(v0 + 11712) = result;
  *(v0 + 11728) = result;
  *(v0 + 11744) = result;
  *(v0 + 11760) = result;
  *(v0 + 11776) = result;
  *(v0 + 11600) = result;
  *(v0 + 11616) = result;
  *(v0 + 11632) = result;
  *(v0 + 11648) = result;
  *(v0 + 11664) = result;
  *(v0 + 11680) = result;
  *(v0 + 11504) = result;
  *(v0 + 11520) = result;
  *(v0 + 11536) = result;
  *(v0 + 11552) = result;
  *(v0 + 11568) = result;
  *(v0 + 11584) = result;
  *(v0 + 11424) = result;
  *(v0 + 11440) = result;
  *(v0 + 11456) = result;
  *(v0 + 11472) = result;
  *(v0 + 11488) = result;
  *(v0 + 9760) = 0x403DFFFFFFFFFFFELL;
  *(v0 + 9768) = 0;
  *(v0 + 11376) = result;
  *(v0 + 11392) = result;
  *(v0 + 11408) = result;
  *(v0 + 9769) = *v19;
  *(v0 + 11336) = 0x3FEB9B9BC0000000;
  *(v0 + 11360) = 0x3FF0000000000000;
  *(v0 + 11368) = 0;
  *(v0 + 9772) = *&v19[3];
  *(v0 + 9800) = 1061997773;
  *(v0 + 9904) = result;
  *(v0 + 9936) = result;
  *(v0 + 9968) = result;
  *(v0 + 9984) = result;
  *(v0 + 10000) = result;
  *(v0 + 11152) = result;
  *(v0 + 11184) = result;
  *(v0 + 11200) = result;
  *(v0 + 11216) = result;
  *(v0 + 10120) = 0x3FEB9B9BC0000000;
  *(v0 + 10144) = 0x3FF0000000000000;
  *(v0 + 10152) = 0;
  *(v0 + 10160) = result;
  *(v0 + 10176) = result;
  *(v0 + 11120) = result;
  *(v0 + 10192) = result;
  *(v0 + 10208) = result;
  *(v0 + 10224) = result;
  *(v0 + 10240) = result;
  *(v0 + 10984) = 1;
  *(v0 + 10985) = *v20;
  *(v0 + 10988) = *&v20[3];
  *(v0 + 11016) = 1061997773;
  *(v0 + 10904) = 0x3FF0000000000000;
  *(v0 + 10912) = result;
  *(v0 + 10928) = result;
  *(v0 + 10944) = result;
  *(v0 + 10960) = 0x3FF0000000000000;
  *(v0 + 10976) = 0x403DFFFFFFFFFFFELL;
  *(v0 + 10256) = result;
  *(v0 + 10272) = result;
  *(v0 + 10288) = result;
  *(v0 + 10304) = result;
  *(v0 + 10864) = result;
  *(v0 + 10880) = result;
  *(v0 + 10320) = result;
  *(v0 + 10720) = result;
  *(v0 + 10736) = result;
  *(v0 + 10752) = result;
  *(v0 + 10768) = result;
  *(v0 + 10784) = result;
  *(v0 + 10624) = result;
  *(v0 + 10640) = result;
  *(v0 + 10656) = result;
  *(v0 + 10672) = result;
  *(v0 + 10688) = result;
  *(v0 + 10704) = result;
  *(v0 + 10528) = result;
  *(v0 + 10544) = result;
  *(v0 + 10560) = result;
  *(v0 + 10576) = result;
  *(v0 + 10592) = result;
  *(v0 + 10608) = result;
  *(v0 + 10432) = result;
  *(v0 + 10448) = result;
  *(v0 + 10464) = result;
  *(v0 + 10480) = result;
  *(v0 + 10496) = result;
  *(v0 + 10512) = result;
  *(v0 + 10336) = result;
  *(v0 + 10352) = result;
  *(v0 + 10368) = result;
  *(v0 + 10384) = result;
  *(v0 + 10400) = result;
  *(v0 + 10416) = result;
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
  *(v0 + 18272) = 0xC028000000000015;
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

double sub_1BCB806C8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07858);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1BCE3C820;
  *(v0 + 32) = 0xC056800000000000;
  *(v0 + 40) = 0;
  *(v0 + 48) = xmmword_1BCE3D330;
  *(v0 + 64) = 0x432A000043480000;
  *(v0 + 72) = 1040242952;
  *(v0 + 80) = xmmword_1BCE3DCE0;
  *(v0 + 96) = xmmword_1BCE3C850;
  *(v0 + 112) = xmmword_1BCE3C860;
  *(v0 + 128) = xmmword_1BCE3C870;
  *(v0 + 144) = xmmword_1BCE3C880;
  *(v0 + 160) = xmmword_1BCE3C890;
  __asm { FMOV            V0.2D, #1.0 }

  *(v0 + 176) = _Q0;
  *(v0 + 192) = xmmword_1BCE3E220;
  __asm { FMOV            V31.2D, #0.5 }

  *(v0 + 208) = _Q31;
  *(v0 + 224) = xmmword_1BCE3D910;
  *(v0 + 240) = _Q0;
  *(v0 + 256) = _Q0;
  *(v0 + 272) = _Q0;
  *(v0 + 288) = _Q0;
  *(v0 + 304) = _Q0;
  *(v0 + 320) = xmmword_1BCE3C8C0;
  *(v0 + 336) = xmmword_1BCE3C9D0;
  *(v0 + 352) = _Q0;
  *(v0 + 368) = xmmword_1BCE3C900;
  *(v0 + 384) = 0x3F3333333F666666;
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
  v7 = vdupq_n_s64(0x3FCF82F740000000uLL);
  *(v0 + 1072) = v7;
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
  *(v0 + 1257) = *v16;
  *(v0 + 1260) = *&v16[3];
  *(v0 + 1264) = xmmword_1BCE3D330;
  *(v0 + 1280) = 0x432A000043480000;
  *(v0 + 1288) = 1040242952;
  *(v0 + 1296) = xmmword_1BCE3DCE0;
  *(v0 + 1312) = xmmword_1BCE3C850;
  *(v0 + 1328) = xmmword_1BCE3C860;
  *(v0 + 1344) = xmmword_1BCE3C870;
  *(v0 + 1360) = xmmword_1BCE3C880;
  *(v0 + 1376) = xmmword_1BCE3C890;
  *(v0 + 1392) = _Q0;
  *(v0 + 1408) = xmmword_1BCE3E220;
  *(v0 + 1424) = _Q31;
  *(v0 + 1440) = xmmword_1BCE3D910;
  *(v0 + 1456) = _Q0;
  *(v0 + 1472) = _Q0;
  *(v0 + 1488) = _Q0;
  *(v0 + 1504) = _Q0;
  *(v0 + 1520) = _Q0;
  *(v0 + 1536) = xmmword_1BCE3C8C0;
  *(v0 + 1552) = xmmword_1BCE3C9D0;
  *(v0 + 1568) = _Q0;
  *(v0 + 1584) = xmmword_1BCE3C900;
  *(v0 + 1600) = 0x3F3333333F666666;
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
  *(v0 + 2400) = xmmword_1BCE3D380;
  *(v0 + 2432) = xmmword_1BCE3D390;
  *(v0 + 2473) = *v17;
  *(v0 + 2476) = *&v17[3];
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
  v15 = vdupq_n_s64(0x3FCF992720000000uLL);
  *(v0 + 3504) = v15;
  *(v0 + 3520) = xmmword_1BCE3CA20;
  *(v0 + 3536) = xmmword_1BCE3CA30;
  *(v0 + 3552) = xmmword_1BCE3CA40;
  *(v0 + 3568) = xmmword_1BCE3D3E0;
  *(v0 + 3584) = _Q0;
  *(v0 + 3600) = 0x4120000042B40000;
  *(v0 + 3608) = 0x3FE87AE120000000;
  *(v0 + 3616) = xmmword_1BCE3D3F0;
  *(v0 + 3632) = xmmword_1BCE3CBC0;
  *(v0 + 3648) = xmmword_1BCE3D400;
  *(v0 + 3664) = 0x3FF0000000000000;
  *(v0 + 3680) = 0xC018000000000000;
  *(v0 + 3688) = 0;
  *(v0 + 3689) = *v18;
  *(v0 + 3692) = *&v18[3];
  *(v0 + 3696) = xmmword_1BCE3CA50;
  *(v0 + 3712) = 0x447A000044480000;
  *(v0 + 3720) = 1061997773;
  *(v0 + 3728) = xmmword_1BCE3CA60;
  *(v0 + 3744) = _Q0;
  *(v0 + 3760) = xmmword_1BCE3CA70;
  *(v0 + 3776) = xmmword_1BCE3CA80;
  *(v0 + 3792) = xmmword_1BCE3CA90;
  *(v0 + 3808) = xmmword_1BCE3CAA0;
  *(v0 + 3824) = _Q0;
  *(v0 + 3840) = xmmword_1BCE3C8C0;
  *(v0 + 3856) = vdupq_n_s64(0x3FE88B6D00000000uLL);
  *(v0 + 3872) = xmmword_1BCE3D960;
  *(v0 + 3888) = _Q0;
  *(v0 + 3904) = _Q0;
  *(v0 + 3920) = _Q0;
  *(v0 + 3936) = _Q0;
  *(v0 + 3952) = _Q0;
  *(v0 + 3968) = xmmword_1BCE3C8C0;
  *(v0 + 3984) = xmmword_1BCE3DB40;
  *(v0 + 4000) = _Q0;
  *(v0 + 4016) = xmmword_1BCE53BD0;
  *(v0 + 4032) = 1062836634;
  *(v0 + 4040) = 0x3FF0000000000000;
  *(v0 + 4048) = _Q0;
  *(v0 + 4064) = 0;
  *(v0 + 4072) = 0;
  *(v0 + 4080) = _Q0;
  *(v0 + 4720) = xmmword_1BCE3CB00;
  *(v0 + 4752) = xmmword_1BCE3CB20;
  *(v0 + 4736) = xmmword_1BCE3CB10;
  *(v0 + 4768) = xmmword_1BCE3CB10;
  *(v0 + 4816) = 0x41A0000041F00000;
  *(v0 + 4832) = xmmword_1BCE3D420;
  *(v0 + 4848) = xmmword_1BCE3D430;
  *(v0 + 4864) = xmmword_1BCE3D440;
  *(v0 + 4880) = 0x3FF0000000000000;
  *(v0 + 4896) = 0;
  *(v0 + 4904) = 0;
  *(v0 + 4905) = *v19;
  *(v0 + 4908) = *&v19[3];
  *(v0 + 4928) = 0x44C8000044160000;
  *(v0 + 4944) = xmmword_1BCE3CB40;
  *(v0 + 4960) = xmmword_1BCE3CB50;
  *(v0 + 4976) = xmmword_1BCE3CB60;
  *(v0 + 4992) = xmmword_1BCE3CB70;
  *(v0 + 5008) = xmmword_1BCE3CB80;
  *(v0 + 5024) = xmmword_1BCE3CB90;
  *(v0 + 5168) = xmmword_1BCE3CBD0;
  *(v0 + 5184) = xmmword_1BCE3CBE0;
  *(v0 + 5936) = xmmword_1BCE3CC10;
  *(v0 + 5968) = xmmword_1BCE3CC30;
  *(v0 + 5952) = xmmword_1BCE3CC20;
  *(v0 + 5984) = xmmword_1BCE3CC20;
  *(v0 + 4784) = xmmword_1BCE3D410;
  *(v0 + 4800) = _Q0;
  *(v0 + 4824) = 0x3FE6666660000000;
  *(v0 + 4096) = _Q0;
  *(v0 + 4112) = _Q0;
  *(v0 + 4656) = _Q0;
  *(v0 + 4672) = _Q0;
  *(v0 + 4688) = _Q0;
  *(v0 + 4704) = _Q0;
  *(v0 + 4560) = _Q0;
  *(v0 + 4576) = _Q0;
  *(v0 + 4592) = _Q0;
  *(v0 + 4608) = _Q0;
  *(v0 + 4624) = _Q0;
  *(v0 + 4640) = _Q0;
  *(v0 + 4464) = _Q0;
  *(v0 + 4480) = _Q0;
  *(v0 + 4496) = _Q0;
  *(v0 + 4512) = _Q0;
  *(v0 + 4528) = _Q0;
  *(v0 + 4544) = _Q0;
  *(v0 + 4368) = _Q0;
  *(v0 + 4384) = _Q0;
  *(v0 + 4400) = _Q0;
  *(v0 + 4416) = _Q0;
  *(v0 + 4432) = _Q0;
  *(v0 + 4448) = _Q0;
  *(v0 + 4272) = _Q0;
  *(v0 + 4288) = _Q0;
  *(v0 + 4304) = _Q0;
  *(v0 + 4320) = _Q0;
  *(v0 + 4336) = _Q0;
  *(v0 + 4352) = _Q0;
  *(v0 + 4176) = _Q0;
  *(v0 + 4192) = _Q0;
  *(v0 + 4208) = _Q0;
  *(v0 + 4224) = _Q0;
  *(v0 + 4240) = _Q0;
  *(v0 + 4256) = _Q0;
  *(v0 + 4128) = _Q0;
  *(v0 + 4144) = _Q0;
  *(v0 + 4160) = _Q0;
  *(v0 + 6000) = xmmword_1BCE3D410;
  *(v0 + 6032) = 0x4170000041A00000;
  *(v0 + 6048) = xmmword_1BCE3D450;
  *(v0 + 6080) = xmmword_1BCE3D460;
  *(v0 + 6128) = xmmword_1BCE3CC40;
  *(v0 + 6144) = 0x44480000443B8000;
  *(v0 + 6160) = xmmword_1BCE3CC50;
  *(v0 + 6176) = xmmword_1BCE3CC60;
  *(v0 + 6192) = xmmword_1BCE3CC70;
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
  *(v0 + 7264) = xmmword_1BCE3D470;
  *(v0 + 7280) = xmmword_1BCE3D480;
  *(v0 + 7296) = xmmword_1BCE3D490;
  *(v0 + 7344) = xmmword_1BCE3CD40;
  *(v0 + 7408) = xmmword_1BCE3CD60;
  *(v0 + 7440) = xmmword_1BCE3CD70;
  *(v0 + 7456) = xmmword_1BCE3CD80;
  *(v0 + 7552) = _Q0;
  *(v0 + 7632) = vdupq_n_s64(0x3FEFB389E0000000uLL);
  *(v0 + 7648) = xmmword_1BCE43790;
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
  *(v0 + 5152) = xmmword_1BCE3CE90;
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
  *(v0 + 10096) = xmmword_1BCE437A0;
  *(v0 + 11312) = xmmword_1BCE437A0;
  *(v0 + 12528) = xmmword_1BCE437A0;
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
  *(v0 + 13776) = xmmword_1BCE3CF80;
  *(v0 + 12016) = xmmword_1BCE3CEB0;
  *(v0 + 13232) = xmmword_1BCE3CEB0;
  *(v0 + 14448) = xmmword_1BCE3CEB0;
  *(v0 + 5056) = xmmword_1BCE3CBB0;
  *(v0 + 6272) = xmmword_1BCE3CBB0;
  *(v0 + 8384) = xmmword_1BCE3CBB0;
  *(v0 + 8864) = xmmword_1BCE3CBB0;
  *(v0 + 9600) = xmmword_1BCE3CBB0;
  *(v0 + 12512) = xmmword_1BCE3CBB0;
  *(v0 + 13248) = xmmword_1BCE3CBB0;
  *(v0 + 13568) = xmmword_1BCE3CBB0;
  *(v0 + 14464) = xmmword_1BCE3CBB0;
  *(v0 + 14480) = xmmword_1BCE3CF90;
  *(v0 + 14560) = xmmword_1BCE3D530;
  *(v0 + 14592) = xmmword_1BCE3D540;
  *(v0 + 14640) = xmmword_1BCE3CFA0;
  *(v0 + 14656) = 0x441EC000443B8000;
  *(v0 + 14672) = xmmword_1BCE3CFB0;
  v9 = vdup_n_s32(0x3F4CCCCDu);
  *(v0 + 2848) = 0;
  *(v0 + 2856) = 1065353216;
  *(v0 + 2864) = _Q0;
  *(v0 + 2816) = v9;
  *(v0 + 2824) = 0x3FF0000000000000;
  *(v0 + 2832) = _Q0;
  v10 = vdupq_n_s64(0x3FEFEDA5C0000000uLL);
  *(v0 + 2704) = v10;
  *(v0 + 2800) = xmmword_1BCE3CA10;
  v11 = vdupq_n_s64(0x3FEF9F9FA0000000uLL);
  *(v0 + 2768) = v11;
  *(v0 + 2784) = xmmword_1BCE3DCD0;
  *(v0 + 2720) = xmmword_1BCE3D3D0;
  *(v0 + 2736) = xmmword_1BCE43150;
  *(v0 + 2752) = xmmword_1BCE3C8C0;
  *(v0 + 2640) = _Q31;
  *(v0 + 2656) = xmmword_1BCE3DCB0;
  *(v0 + 2672) = _Q0;
  *(v0 + 2688) = _Q0;
  *(v0 + 2480) = xmmword_1BCE3D330;
  *(v0 + 2608) = _Q0;
  *(v0 + 2624) = xmmword_1BCE3CCC0;
  *(v0 + 2560) = xmmword_1BCE3C990;
  *(v0 + 2576) = xmmword_1BCE3C9A0;
  *(v0 + 2592) = _Q0;
  *(v0 + 2528) = _Q0;
  *(v0 + 2544) = xmmword_1BCE3C980;
  *(v0 + 2496) = 0x4396000043480000;
  *(v0 + 2504) = 1036831949;
  *(v0 + 2512) = xmmword_1BCE3C970;
  *(v0 + 2256) = _Q0;
  *(v0 + 2416) = _Q0;
  *(v0 + 2448) = 0x3FF0000000000000;
  *(v0 + 2464) = 0xC028000000000000;
  *(v0 + 2472) = 0;
  *(v0 + 2272) = _Q0;
  *(v0 + 2352) = xmmword_1BCE3D350;
  *(v0 + 2368) = _Q0;
  *(v0 + 2384) = 0x4120000042FA0000;
  *(v0 + 2392) = 0x3FEBA9FBE0000000;
  *(v0 + 2288) = v7;
  *(v0 + 2304) = xmmword_1BCE3C910;
  *(v0 + 2320) = xmmword_1BCE3C920;
  *(v0 + 2336) = xmmword_1BCE3C930;
  *(v0 + 4912) = xmmword_1BCE3CB30;
  *(v0 + 4936) = 1061997773;
  *(v0 + 5040) = _Q0;
  *(v0 + 5072) = _Q0;
  *(v0 + 5088) = xmmword_1BCE3DA70;
  *(v0 + 5104) = _Q0;
  *(v0 + 5120) = _Q0;
  v12 = vdupq_n_s64(0x3FEF9F9F80000000uLL);
  *(v0 + 5136) = _Q0;
  *(v0 + 5200) = v12;
  *(v0 + 5216) = xmmword_1BCE3C8E0;
  v13 = vdupq_n_s32(0x3F666666u);
  *(v0 + 5232) = v13;
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
  *(v0 + 6040) = 0x3FE6CCCCE0000000;
  *(v0 + 6064) = _Q0;
  *(v0 + 6096) = 0x3FF0000000000000;
  *(v0 + 6112) = 0x4017FFFFFFFFFFFALL;
  *(v0 + 6120) = 0;
  *(v0 + 6121) = *v20;
  *(v0 + 6124) = *&v20[3];
  *(v0 + 6152) = 1060739482;
  *(v0 + 6256) = _Q0;
  *(v0 + 6288) = _Q0;
  *(v0 + 6304) = xmmword_1BCE3DAE0;
  *(v0 + 6320) = _Q0;
  *(v0 + 6336) = _Q0;
  *(v0 + 6352) = _Q0;
  *(v0 + 6448) = v13;
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
  *(v0 + 7256) = 0x3FE0A3D6C0000000;
  *(v0 + 7337) = *v21;
  *(v0 + 7312) = 0x3FF0000000000000;
  *(v0 + 7328) = 0x4027FFFFFFFFFFFALL;
  *(v0 + 7336) = 0;
  *(v0 + 7340) = *&v21[3];
  *(v0 + 7368) = 1059481190;
  *(v0 + 7424) = xmmword_1BCE3C9D0;
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
  *(v0 + 14880) = xmmword_1BCE3DD00;
  *(v0 + 14944) = xmmword_1BCE437E0;
  *(v0 + 14992) = xmmword_1BCE3D060;
  *(v0 + 15664) = xmmword_1BCE3D070;
  *(v0 + 15680) = xmmword_1BCE3D080;
  *(v0 + 15696) = xmmword_1BCE3D090;
  *(v0 + 15712) = xmmword_1BCE3D0A0;
  *(v0 + 15776) = xmmword_1BCE3D550;
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
  *(v0 + 9952) = xmmword_1BCE3DA70;
  *(v0 + 11168) = xmmword_1BCE3DA70;
  *(v0 + 16032) = xmmword_1BCE3DA70;
  *(v0 + 8848) = xmmword_1BCE3CCB0;
  *(v0 + 10032) = xmmword_1BCE3CCB0;
  *(v0 + 10064) = xmmword_1BCE3CCB0;
  *(v0 + 11248) = xmmword_1BCE3CCB0;
  *(v0 + 11280) = xmmword_1BCE3CCB0;
  *(v0 + 16080) = xmmword_1BCE3CCB0;
  *(v0 + 7584) = xmmword_1BCE3CBA0;
  *(v0 + 9920) = xmmword_1BCE3CBA0;
  *(v0 + 11136) = xmmword_1BCE3CBA0;
  *(v0 + 13664) = xmmword_1BCE3CBA0;
  *(v0 + 16096) = xmmword_1BCE3CBA0;
  *(v0 + 16160) = xmmword_1BCE3C8E0;
  *(v0 + 7664) = v13;
  *(v0 + 8880) = v13;
  *(v0 + 13744) = v13;
  *(v0 + 14960) = v13;
  *(v0 + 16176) = v13;
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
  *(v0 + 16992) = xmmword_1BCE3D590;
  *(v0 + 17024) = xmmword_1BCE3D5A0;
  *(v0 + 17072) = xmmword_1BCE3CB30;
  *(v0 + 17088) = 0x4483CC9D44160000;
  *(v0 + 17104) = xmmword_1BCE3D5B0;
  *(v0 + 17136) = xmmword_1BCE3D1C0;
  *(v0 + 17152) = xmmword_1BCE3D1D0;
  *(v0 + 17168) = xmmword_1BCE3D1E0;
  *(v0 + 17184) = xmmword_1BCE3D1F0;
  *(v0 + 14784) = xmmword_1BCE3E290;
  *(v0 + 16000) = xmmword_1BCE3E290;
  *(v0 + 17216) = xmmword_1BCE3E290;
  *(v0 + 17232) = vdupq_n_s64(0x3FE8F90420000000uLL);
  *(v0 + 17248) = xmmword_1BCE3DC60;
  *(v0 + 17312) = xmmword_1BCE43810;
  *(v0 + 13712) = v12;
  *(v0 + 14928) = v12;
  *(v0 + 16144) = v12;
  *(v0 + 17360) = v12;
  *(v0 + 13728) = xmmword_1BCE437B0;
  *(v0 + 17376) = xmmword_1BCE437B0;
  *(v0 + 17392) = vdupq_n_s32(0x3F59999Au);
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
  *(v0 + 18208) = xmmword_1BCE3D5E0;
  *(v0 + 8496) = xmmword_1BCE3D4B0;
  *(v0 + 8800) = xmmword_1BCE3D4B0;
  *(v0 + 12448) = xmmword_1BCE3D4B0;
  *(v0 + 14576) = xmmword_1BCE3D4B0;
  *(v0 + 18224) = xmmword_1BCE3D4B0;
  *(v0 + 18240) = xmmword_1BCE3D5F0;
  *(v0 + 18304) = 0x4396000043480000;
  *(v0 + 18320) = xmmword_1BCE3C970;
  *(v0 + 18352) = xmmword_1BCE3C980;
  *(v0 + 18368) = xmmword_1BCE3C990;
  *(v0 + 18384) = xmmword_1BCE3C9A0;
  *(v0 + 18432) = xmmword_1BCE3CCC0;
  *(v0 + 18464) = xmmword_1BCE3DCB0;
  *(v0 + 18512) = v10;
  *(v0 + 18528) = xmmword_1BCE3D3D0;
  *(v0 + 18544) = xmmword_1BCE43150;
  *(v0 + 18576) = v11;
  *(v0 + 18592) = xmmword_1BCE3DCD0;
  *(v0 + 18608) = xmmword_1BCE3CA10;
  *(v0 + 18624) = v9;
  *(v0 + 19312) = v15;
  *(v0 + 19328) = xmmword_1BCE3CA20;
  *(v0 + 19344) = xmmword_1BCE3CA30;
  *(v0 + 19360) = xmmword_1BCE3CA40;
  *(v0 + 19376) = xmmword_1BCE3D600;
  *(v0 + 19408) = 0x4120000042B40000;
  *(v0 + 19424) = xmmword_1BCE3D610;
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
  *(v0 + 17008) = xmmword_1BCE3CBC0;
  *(v0 + 19440) = xmmword_1BCE3CBC0;
  *(v0 + 19456) = xmmword_1BCE3D620;
  *(v0 + 20640) = xmmword_1BCE3D630;
  *(v0 + 20672) = xmmword_1BCE3D640;
  *(v0 + 18288) = xmmword_1BCE3D330;
  *(v0 + 19504) = xmmword_1BCE3D330;
  *(v0 + 20720) = xmmword_1BCE3D330;
  *(v0 + 19520) = 0x432A000043480000;
  *(v0 + 20736) = 0x432A000043480000;
  *(v0 + 19536) = xmmword_1BCE3DCE0;
  *(v0 + 20752) = xmmword_1BCE3DCE0;
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
  *(v0 + 19648) = xmmword_1BCE3E220;
  *(v0 + 20864) = xmmword_1BCE3E220;
  *(v0 + 10912) = _Q31;
  *(v0 + 12128) = _Q31;
  *(v0 + 13344) = _Q31;
  *(v0 + 17568) = _Q0;
  *(v0 + 17584) = _Q0;
  *(v0 + 18048) = _Q0;
  *(v0 + 18064) = _Q0;
  *(v0 + 18080) = _Q0;
  *(v0 + 17952) = _Q0;
  *(v0 + 17968) = _Q0;
  *(v0 + 17984) = _Q0;
  *(v0 + 18000) = _Q0;
  *(v0 + 18016) = _Q0;
  *(v0 + 18032) = _Q0;
  *(v0 + 17856) = _Q0;
  *(v0 + 17872) = _Q0;
  *(v0 + 17888) = _Q0;
  *(v0 + 17904) = _Q0;
  *(v0 + 17920) = _Q0;
  *(v0 + 17936) = _Q0;
  *(v0 + 17760) = _Q0;
  *(v0 + 17776) = _Q0;
  *(v0 + 17792) = _Q0;
  *(v0 + 17808) = _Q0;
  *(v0 + 17824) = _Q0;
  *(v0 + 17840) = _Q0;
  *(v0 + 17664) = _Q0;
  *(v0 + 17680) = _Q0;
  *(v0 + 17696) = _Q0;
  *(v0 + 17712) = _Q0;
  *(v0 + 17728) = _Q0;
  *(v0 + 17744) = _Q0;
  *(v0 + 17600) = _Q0;
  *(v0 + 17616) = _Q0;
  *(v0 + 17632) = _Q0;
  *(v0 + 17648) = _Q0;
  *(v0 + 18448) = _Q31;
  *(v0 + 19664) = _Q31;
  *(v0 + 20880) = _Q31;
  *(v0 + 17504) = _Q0;
  *(v0 + 17520) = _Q0;
  *(v0 + 17536) = _Q0;
  *(v0 + 17552) = _Q0;
  *(v0 + 17440) = 0;
  *(v0 + 17448) = 1065353216;
  *(v0 + 17456) = _Q0;
  *(v0 + 17472) = _Q0;
  *(v0 + 17488) = _Q0;
  *(v0 + 19680) = xmmword_1BCE3D910;
  *(v0 + 20896) = xmmword_1BCE3D910;
  *(v0 + 7616) = xmmword_1BCE3C8C0;
  *(v0 + 8832) = xmmword_1BCE3C8C0;
  *(v0 + 17416) = 0x3FEF23CF40000000;
  *(v0 + 10048) = xmmword_1BCE3C8C0;
  *(v0 + 17264) = _Q0;
  *(v0 + 17280) = _Q0;
  *(v0 + 17296) = _Q0;
  *(v0 + 17328) = _Q0;
  *(v0 + 17344) = xmmword_1BCE3C8C0;
  *(v0 + 11264) = xmmword_1BCE3C8C0;
  *(v0 + 12480) = xmmword_1BCE3C8C0;
  *(v0 + 13696) = xmmword_1BCE3C8C0;
  *(v0 + 14912) = xmmword_1BCE3C8C0;
  *(v0 + 16128) = xmmword_1BCE3C8C0;
  *(v0 + 17200) = _Q0;
  *(v0 + 18560) = xmmword_1BCE3C8C0;
  *(v0 + 19776) = xmmword_1BCE3C8C0;
  *(v0 + 20992) = xmmword_1BCE3C8C0;
  *(v0 + 19792) = xmmword_1BCE3C9D0;
  *(v0 + 21008) = xmmword_1BCE3C9D0;
  *(v0 + 17065) = *v29;
  *(v0 + 17096) = 1050388079;
  *(v0 + 17120) = _Q0;
  *(v0 + 19824) = xmmword_1BCE3C900;
  *(v0 + 21040) = xmmword_1BCE3C900;
  *(v0 + 17064) = 1;
  *(v0 + 17068) = *&v29[3];
  *(v0 + 16984) = 0x3FE8000000000000;
  *(v0 + 17040) = 0x3FF0000000000000;
  *(v0 + 17056) = 0xC017FFFFFFFFFFE8;
  *(v0 + 19840) = 0x3F3333333F666666;
  *(v0 + 21056) = 0x3F3333333F666666;
  *(v0 + 20528) = v7;
  *(v0 + 21744) = v7;
  *(v0 + 20544) = xmmword_1BCE3C910;
  *(v0 + 21760) = xmmword_1BCE3C910;
  *(v0 + 20560) = xmmword_1BCE3C920;
  *(v0 + 21776) = xmmword_1BCE3C920;
  *(v0 + 16800) = _Q0;
  *(v0 + 16816) = _Q0;
  *(v0 + 16832) = _Q0;
  *(v0 + 16848) = _Q0;
  *(v0 + 16864) = _Q0;
  *(v0 + 16704) = _Q0;
  *(v0 + 16720) = _Q0;
  *(v0 + 16736) = _Q0;
  *(v0 + 16752) = _Q0;
  *(v0 + 16768) = _Q0;
  *(v0 + 16784) = _Q0;
  *(v0 + 16608) = _Q0;
  *(v0 + 16624) = _Q0;
  *(v0 + 16640) = _Q0;
  *(v0 + 16656) = _Q0;
  *(v0 + 16672) = _Q0;
  *(v0 + 16688) = _Q0;
  *(v0 + 16512) = _Q0;
  *(v0 + 16528) = _Q0;
  *(v0 + 16544) = _Q0;
  *(v0 + 16560) = _Q0;
  *(v0 + 16576) = _Q0;
  *(v0 + 16592) = _Q0;
  *(v0 + 16416) = _Q0;
  *(v0 + 16432) = _Q0;
  *(v0 + 16448) = _Q0;
  *(v0 + 16464) = _Q0;
  *(v0 + 16480) = _Q0;
  *(v0 + 16496) = _Q0;
  *(v0 + 16320) = _Q0;
  *(v0 + 16336) = _Q0;
  *(v0 + 16352) = _Q0;
  *(v0 + 16368) = _Q0;
  *(v0 + 0x4000) = _Q0;
  *(v0 + 16400) = _Q0;
  *(v0 + 16240) = _Q0;
  *(v0 + 16256) = _Q0;
  *(v0 + 16272) = _Q0;
  *(v0 + 16288) = _Q0;
  *(v0 + 16304) = _Q0;
  *(v0 + 20576) = xmmword_1BCE3C930;
  *(v0 + 21792) = xmmword_1BCE3C930;
  *(v0 + 16200) = 0x3FEE6AC340000000;
  *(v0 + 16224) = 0;
  *(v0 + 16232) = 0;
  *(v0 + 20592) = xmmword_1BCE3D350;
  *(v0 + 21808) = xmmword_1BCE3D350;
  *(v0 + 20624) = 0x4120000042FA0000;
  *(v0 + 21840) = 0x4120000042FA0000;
  *(v0 + 21856) = xmmword_1BCE3D360;
  *(v0 + 16112) = _Q0;
  *(v0 + 7568) = _Q0;
  *(v0 + 7600) = _Q0;
  *(v0 + 16016) = _Q0;
  *(v0 + 16048) = _Q0;
  *(v0 + 16064) = _Q0;
  *(v0 + 7728) = _Q0;
  *(v0 + 7744) = _Q0;
  *(v0 + 7760) = _Q0;
  *(v0 + 7776) = _Q0;
  *(v0 + 7792) = _Q0;
  *(v0 + 15984) = _Q0;
  *(v0 + 7808) = _Q0;
  *(v0 + 7824) = _Q0;
  *(v0 + 7840) = _Q0;
  *(v0 + 7856) = _Q0;
  *(v0 + 15848) = 1;
  *(v0 + 15849) = *v28;
  *(v0 + 15852) = *&v28[3];
  *(v0 + 15880) = 1061997773;
  *(v0 + 7872) = _Q0;
  *(v0 + 7888) = _Q0;
  *(v0 + 15768) = 0x3FE3333340000000;
  *(v0 + 15824) = 0x3FF0000000000000;
  *(v0 + 15840) = 0;
  *(v0 + 7904) = _Q0;
  *(v0 + 7920) = _Q0;
  *(v0 + 7936) = _Q0;
  *(v0 + 7952) = _Q0;
  *(v0 + 15728) = _Q0;
  *(v0 + 15744) = _Q0;
  *(v0 + 7968) = _Q0;
  *(v0 + 15584) = _Q0;
  *(v0 + 15600) = _Q0;
  *(v0 + 15616) = _Q0;
  *(v0 + 15632) = _Q0;
  *(v0 + 15648) = _Q0;
  *(v0 + 15488) = _Q0;
  *(v0 + 15504) = _Q0;
  *(v0 + 15520) = _Q0;
  *(v0 + 15536) = _Q0;
  *(v0 + 15552) = _Q0;
  *(v0 + 15568) = _Q0;
  *(v0 + 15392) = _Q0;
  *(v0 + 15408) = _Q0;
  *(v0 + 15424) = _Q0;
  *(v0 + 15440) = _Q0;
  *(v0 + 15456) = _Q0;
  *(v0 + 15472) = _Q0;
  *(v0 + 15296) = _Q0;
  *(v0 + 15312) = _Q0;
  *(v0 + 15328) = _Q0;
  *(v0 + 15344) = _Q0;
  *(v0 + 15360) = _Q0;
  *(v0 + 15376) = _Q0;
  *(v0 + 15200) = _Q0;
  *(v0 + 15216) = _Q0;
  *(v0 + 15232) = _Q0;
  *(v0 + 15248) = _Q0;
  *(v0 + 15264) = _Q0;
  *(v0 + 15280) = _Q0;
  *(v0 + 15104) = _Q0;
  *(v0 + 15120) = _Q0;
  *(v0 + 15136) = _Q0;
  *(v0 + 15152) = _Q0;
  *(v0 + 15168) = _Q0;
  *(v0 + 15184) = _Q0;
  *(v0 + 7984) = _Q0;
  *(v0 + 15024) = _Q0;
  *(v0 + 15040) = _Q0;
  *(v0 + 15056) = _Q0;
  *(v0 + 15072) = _Q0;
  *(v0 + 15088) = _Q0;
  *(v0 + 8000) = _Q0;
  *(v0 + 8016) = _Q0;
  *(v0 + 14984) = 0x3FEDEF5480000000;
  *(v0 + 15008) = 0x3FE0000000000000;
  *(v0 + 15016) = 0;
  *(v0 + 8032) = _Q0;
  *(v0 + 8048) = _Q0;
  *(v0 + 8064) = _Q0;
  *(v0 + 8080) = _Q0;
  *(v0 + 8096) = _Q0;
  *(v0 + 14896) = _Q0;
  *(v0 + 8112) = _Q0;
  *(v0 + 8128) = _Q0;
  *(v0 + 14768) = _Q0;
  *(v0 + 14800) = _Q0;
  *(v0 + 14832) = _Q0;
  *(v0 + 14848) = _Q0;
  *(v0 + 8144) = _Q0;
  *(v0 + 8160) = _Q0;
  *(v0 + 8176) = _Q0;
  *(v0 + 0x2000) = _Q0;
  *(v0 + 8208) = _Q0;
  *(v0 + 8224) = _Q0;
  *(v0 + 14633) = *v27;
  *(v0 + 14664) = 1061158912;
  *(v0 + 8240) = _Q0;
  *(v0 + 8256) = _Q0;
  *(v0 + 8272) = _Q0;
  *(v0 + 14632) = 1;
  *(v0 + 14636) = *&v27[3];
  *(v0 + 8288) = _Q0;
  *(v0 + 14552) = 0x3FDCCCCCC0000000;
  *(v0 + 14608) = 0x3FF0000000000000;
  *(v0 + 14624) = 0x4018000000000010;
  *(v0 + 8304) = _Q0;
  *(v0 + 8320) = _Q0;
  *(v0 + 8336) = _Q0;
  *(v0 + 8352) = _Q0;
  *(v0 + 14512) = _Q0;
  *(v0 + 14528) = _Q0;
  *(v0 + 8432) = _Q0;
  *(v0 + 14368) = _Q0;
  *(v0 + 14384) = _Q0;
  *(v0 + 14400) = _Q0;
  *(v0 + 14416) = _Q0;
  *(v0 + 14432) = _Q0;
  *(v0 + 14272) = _Q0;
  *(v0 + 14288) = _Q0;
  *(v0 + 14304) = _Q0;
  *(v0 + 14320) = _Q0;
  *(v0 + 14336) = _Q0;
  *(v0 + 14352) = _Q0;
  *(v0 + 14176) = _Q0;
  *(v0 + 14192) = _Q0;
  *(v0 + 14208) = _Q0;
  *(v0 + 14224) = _Q0;
  *(v0 + 14240) = _Q0;
  *(v0 + 14256) = _Q0;
  *(v0 + 14080) = _Q0;
  *(v0 + 14096) = _Q0;
  *(v0 + 14112) = _Q0;
  *(v0 + 14128) = _Q0;
  *(v0 + 14144) = _Q0;
  *(v0 + 14160) = _Q0;
  *(v0 + 13984) = _Q0;
  *(v0 + 14000) = _Q0;
  *(v0 + 14016) = _Q0;
  *(v0 + 14032) = _Q0;
  *(v0 + 14048) = _Q0;
  *(v0 + 14064) = _Q0;
  *(v0 + 13888) = _Q0;
  *(v0 + 13904) = _Q0;
  *(v0 + 13920) = _Q0;
  *(v0 + 13936) = _Q0;
  *(v0 + 13952) = _Q0;
  *(v0 + 13968) = _Q0;
  *(v0 + 8448) = _Q0;
  *(v0 + 13808) = _Q0;
  *(v0 + 13824) = _Q0;
  *(v0 + 13840) = _Q0;
  *(v0 + 13856) = _Q0;
  *(v0 + 13872) = _Q0;
  *(v0 + 8472) = 0x3FE0000000000000;
  *(v0 + 8528) = 0x3FF0000000000000;
  *(v0 + 8544) = 0x4032000000000001;
  *(v0 + 13792) = 0x3FF0000000000000;
  *(v0 + 13800) = 0;
  *(v0 + 8553) = *v22;
  *(v0 + 13768) = 0x3FED73E5C0000000;
  *(v0 + 8552) = 0;
  *(v0 + 8556) = *&v22[3];
  *(v0 + 8584) = 1061158912;
  *(v0 + 13648) = _Q0;
  *(v0 + 13680) = _Q0;
  *(v0 + 8640) = _Q0;
  *(v0 + 8656) = _Q0;
  *(v0 + 13552) = _Q0;
  *(v0 + 13584) = _Q0;
  *(v0 + 13616) = _Q0;
  *(v0 + 13632) = _Q0;
  *(v0 + 8672) = _Q0;
  *(v0 + 8688) = _Q0;
  *(v0 + 8720) = _Q0;
  *(v0 + 8752) = _Q0;
  *(v0 + 8768) = _Q0;
  *(v0 + 8784) = _Q0;
  *(v0 + 8816) = _Q0;
  *(v0 + 8904) = 0x3FEB9B9BC0000000;
  *(v0 + 13448) = 1060320051;
  *(v0 + 8928) = 0x3FF0000000000000;
  *(v0 + 8936) = 0;
  *(v0 + 8944) = _Q0;
  *(v0 + 13417) = *v26;
  *(v0 + 13392) = 0x3FF0000000000000;
  *(v0 + 13408) = 0x4028000000000010;
  *(v0 + 13416) = 1;
  *(v0 + 13420) = *&v26[3];
  *(v0 + 8960) = _Q0;
  *(v0 + 8976) = _Q0;
  *(v0 + 8992) = _Q0;
  *(v0 + 13296) = _Q0;
  *(v0 + 13312) = _Q0;
  *(v0 + 13336) = 0x3FE0000000000000;
  *(v0 + 9008) = _Q0;
  *(v0 + 9024) = _Q0;
  *(v0 + 9040) = _Q0;
  *(v0 + 13184) = _Q0;
  *(v0 + 13200) = _Q0;
  *(v0 + 13216) = _Q0;
  *(v0 + 13088) = _Q0;
  *(v0 + 13104) = _Q0;
  *(v0 + 13120) = _Q0;
  *(v0 + 13136) = _Q0;
  *(v0 + 13152) = _Q0;
  *(v0 + 13168) = _Q0;
  *(v0 + 12992) = _Q0;
  *(v0 + 13008) = _Q0;
  *(v0 + 13024) = _Q0;
  *(v0 + 13040) = _Q0;
  *(v0 + 13056) = _Q0;
  *(v0 + 13072) = _Q0;
  *(v0 + 12896) = _Q0;
  *(v0 + 12912) = _Q0;
  *(v0 + 12928) = _Q0;
  *(v0 + 12944) = _Q0;
  *(v0 + 12960) = _Q0;
  *(v0 + 12976) = _Q0;
  *(v0 + 12800) = _Q0;
  *(v0 + 12816) = _Q0;
  *(v0 + 12832) = _Q0;
  *(v0 + 12848) = _Q0;
  *(v0 + 12864) = _Q0;
  *(v0 + 12880) = _Q0;
  *(v0 + 12704) = _Q0;
  *(v0 + 12720) = _Q0;
  *(v0 + 12736) = _Q0;
  *(v0 + 12752) = _Q0;
  *(v0 + 12768) = _Q0;
  *(v0 + 12784) = _Q0;
  *(v0 + 12608) = _Q0;
  *(v0 + 12624) = _Q0;
  *(v0 + 12640) = _Q0;
  *(v0 + 12656) = _Q0;
  *(v0 + 12672) = _Q0;
  *(v0 + 12688) = _Q0;
  *(v0 + 9056) = _Q0;
  *(v0 + 9072) = _Q0;
  *(v0 + 12552) = 0x3FEB9B9BC0000000;
  *(v0 + 12576) = 0x3FF0000000000000;
  *(v0 + 12584) = 0;
  *(v0 + 12592) = _Q0;
  *(v0 + 9088) = _Q0;
  *(v0 + 9104) = _Q0;
  *(v0 + 9120) = _Q0;
  *(v0 + 9136) = _Q0;
  *(v0 + 12464) = _Q0;
  *(v0 + 12496) = _Q0;
  *(v0 + 9152) = _Q0;
  *(v0 + 12352) = _Q0;
  *(v0 + 12368) = _Q0;
  *(v0 + 12400) = _Q0;
  *(v0 + 12416) = _Q0;
  *(v0 + 12432) = _Q0;
  *(v0 + 9168) = _Q0;
  *(v0 + 9184) = _Q0;
  *(v0 + 12288) = _Q0;
  *(v0 + 12304) = _Q0;
  *(v0 + 12320) = _Q0;
  *(v0 + 12336) = _Q0;
  *(v0 + 9200) = _Q0;
  *(v0 + 9216) = _Q0;
  *(v0 + 9232) = _Q0;
  *(v0 + 9248) = _Q0;
  *(v0 + 12200) = 1;
  *(v0 + 12201) = *v25;
  *(v0 + 12204) = *&v25[3];
  *(v0 + 12232) = 1061158912;
  *(v0 + 9264) = _Q0;
  *(v0 + 9280) = _Q0;
  *(v0 + 12120) = 0x3FE0000000000000;
  *(v0 + 12176) = 0x3FF0000000000000;
  *(v0 + 12192) = 0x4031FFFFFFFFFFF6;
  *(v0 + 9296) = _Q0;
  *(v0 + 9312) = _Q0;
  *(v0 + 9328) = _Q0;
  *(v0 + 9344) = _Q0;
  *(v0 + 12080) = _Q0;
  *(v0 + 12096) = _Q0;
  *(v0 + 9360) = _Q0;
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
  *(v0 + 9376) = _Q0;
  *(v0 + 9392) = _Q0;
  *(v0 + 9408) = _Q0;
  *(v0 + 9424) = _Q0;
  *(v0 + 11336) = 0x3FEB9B9BC0000000;
  *(v0 + 11360) = 0x3FF0000000000000;
  *(v0 + 9440) = _Q0;
  *(v0 + 9456) = _Q0;
  *(v0 + 9472) = _Q0;
  *(v0 + 9488) = _Q0;
  *(v0 + 11200) = _Q0;
  *(v0 + 11216) = _Q0;
  *(v0 + 9504) = _Q0;
  *(v0 + 9520) = _Q0;
  *(v0 + 9536) = _Q0;
  *(v0 + 11120) = _Q0;
  *(v0 + 11152) = _Q0;
  *(v0 + 11184) = _Q0;
  *(v0 + 9552) = _Q0;
  *(v0 + 9568) = _Q0;
  *(v0 + 9648) = _Q0;
  *(v0 + 9664) = _Q0;
  *(v0 + 9688) = 0x3FD9999980000000;
  *(v0 + 9744) = 0x3FF0000000000000;
  *(v0 + 9769) = *v23;
  *(v0 + 9760) = 0x403DFFFFFFFFFFFELL;
  *(v0 + 10985) = *v24;
  *(v0 + 11016) = 1061997773;
  *(v0 + 9768) = 0;
  *(v0 + 10960) = 0x3FF0000000000000;
  *(v0 + 10976) = 0x403DFFFFFFFFFFFELL;
  *(v0 + 10984) = 1;
  *(v0 + 10988) = *&v24[3];
  *(v0 + 9772) = *&v23[3];
  *(v0 + 9800) = 1061997773;
  *(v0 + 9904) = _Q0;
  *(v0 + 10880) = _Q0;
  *(v0 + 10904) = 0x3FE0000000000000;
  *(v0 + 9936) = _Q0;
  *(v0 + 9968) = _Q0;
  *(v0 + 9984) = _Q0;
  *(v0 + 10000) = _Q0;
  *(v0 + 10784) = _Q0;
  *(v0 + 10864) = _Q0;
  *(v0 + 10688) = _Q0;
  *(v0 + 10704) = _Q0;
  *(v0 + 10720) = _Q0;
  *(v0 + 10736) = _Q0;
  *(v0 + 10752) = _Q0;
  *(v0 + 10768) = _Q0;
  *(v0 + 10592) = _Q0;
  *(v0 + 10608) = _Q0;
  *(v0 + 10624) = _Q0;
  *(v0 + 10640) = _Q0;
  *(v0 + 10656) = _Q0;
  *(v0 + 10672) = _Q0;
  *(v0 + 10496) = _Q0;
  *(v0 + 10512) = _Q0;
  *(v0 + 10528) = _Q0;
  *(v0 + 10544) = _Q0;
  *(v0 + 10560) = _Q0;
  *(v0 + 10576) = _Q0;
  *(v0 + 10400) = _Q0;
  *(v0 + 10416) = _Q0;
  *(v0 + 10432) = _Q0;
  *(v0 + 10448) = _Q0;
  *(v0 + 10464) = _Q0;
  *(v0 + 10480) = _Q0;
  *(v0 + 10304) = _Q0;
  *(v0 + 10320) = _Q0;
  *(v0 + 10336) = _Q0;
  *(v0 + 10352) = _Q0;
  *(v0 + 10368) = _Q0;
  *(v0 + 10384) = _Q0;
  *(v0 + 10208) = _Q0;
  *(v0 + 10224) = _Q0;
  *(v0 + 10240) = _Q0;
  *(v0 + 10256) = _Q0;
  *(v0 + 10272) = _Q0;
  *(v0 + 10288) = _Q0;
  *(v0 + 10120) = 0x3FEB9B9BC0000000;
  *(v0 + 10144) = 0x3FF0000000000000;
  *(v0 + 10152) = 0;
  *(v0 + 10160) = _Q0;
  *(v0 + 10176) = _Q0;
  *(v0 + 10192) = _Q0;
  *(v0 + 18336) = _Q0;
  *(v0 + 18400) = _Q0;
  *(v0 + 18416) = _Q0;
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
  *(v0 + 19632) = _Q0;
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
  *(v0 + 20848) = _Q0;
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
  *(v0 + 18272) = 0xC028000000000015;
  *(v0 + 18280) = 1;
  *(v0 + 18281) = *v30;
  *(v0 + 18284) = *&v30[3];
  *(v0 + 18312) = 1036831949;
  *(v0 + 18632) = 0x3FF0000000000000;
  *(v0 + 18656) = 0;
  *(v0 + 18664) = 1065353216;
  *(v0 + 19416) = 0x3FE93332E0000000;
  *(v0 + 19472) = 0x3FF0000000000000;
  *(v0 + 19488) = 0xC04E000000000002;
  *(v0 + 19496) = 1;
  *(v0 + 19497) = *v31;
  *(v0 + 19500) = *&v31[3];
  *(v0 + 19528) = 1040242952;
  *(v0 + 19848) = 0x3FF0000000000000;
  *(v0 + 19872) = 0;
  *(v0 + 19880) = 1065353216;
  *(v0 + 20632) = 0x3FEB89F0C0000000;
  *(v0 + 20688) = 0x3FF0000000000000;
  *(v0 + 20704) = 0xC056800000000000;
  *(v0 + 20712) = 1;
  *(v0 + 20713) = *v32;
  *(v0 + 20716) = *&v32[3];
  *(v0 + 20744) = 1040242952;
  *(v0 + 21064) = 0x3FF0000000000000;
  *(v0 + 21088) = 0;
  *(v0 + 21096) = 1065353216;
  *(v0 + 21848) = 0x3FEB89F080000000;
  *(v0 + 21904) = 0x3FF0000000000000;
  return result;
}

uint64_t HourlyForecastBannerViewModel.id.getter()
{
  OUTLINED_FUNCTION_19_1();
  sub_1BCE19090();
  OUTLINED_FUNCTION_4();
  v0 = OUTLINED_FUNCTION_10_1();

  return v1(v0);
}

uint64_t HourlyForecastBannerViewModel.date.getter()
{
  OUTLINED_FUNCTION_19_1();
  type metadata accessor for HourlyForecastBannerViewModel();
  sub_1BCE19060();
  OUTLINED_FUNCTION_4();
  v0 = OUTLINED_FUNCTION_8();

  return v1(v0);
}

uint64_t type metadata accessor for HourlyForecastBannerViewModel()
{
  result = qword_1EDA18478;
  if (!qword_1EDA18478)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t HourlyForecastBannerViewModel.temperature.getter()
{
  OUTLINED_FUNCTION_19_1();
  type metadata accessor for HourlyForecastBannerViewModel();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07CA8);
  OUTLINED_FUNCTION_4();
  v0 = OUTLINED_FUNCTION_8();

  return v1(v0);
}

uint64_t HourlyForecastBannerViewModel.hourString.getter()
{
  type metadata accessor for HourlyForecastBannerViewModel();
  OUTLINED_FUNCTION_32();
  return OUTLINED_FUNCTION_10_1();
}

uint64_t HourlyForecastBannerViewModel.accessibilityHourString.getter()
{
  type metadata accessor for HourlyForecastBannerViewModel();
  OUTLINED_FUNCTION_32();
  return OUTLINED_FUNCTION_10_1();
}

uint64_t HourlyForecastBannerViewModel.condition.getter()
{
  OUTLINED_FUNCTION_19_1();
  v2 = type metadata accessor for HourlyForecastBannerViewModel();
  return sub_1BCB855B0(v1 + *(v2 + 36), v0, type metadata accessor for ConditionViewModel);
}

uint64_t HourlyForecastBannerViewModel.temperatureUnitString.getter()
{
  type metadata accessor for HourlyForecastBannerViewModel();
  OUTLINED_FUNCTION_32();
  return OUTLINED_FUNCTION_10_1();
}

uint64_t HourlyForecastBannerViewModel.precipitation.getter()
{
  OUTLINED_FUNCTION_19_1();
  type metadata accessor for HourlyForecastBannerViewModel();
  sub_1BCE19BA0();
  OUTLINED_FUNCTION_4();
  v0 = OUTLINED_FUNCTION_8();

  return v1(v0);
}

uint64_t HourlyForecastBannerViewModel.wind.getter()
{
  OUTLINED_FUNCTION_19_1();
  type metadata accessor for HourlyForecastBannerViewModel();
  sub_1BCE1A000();
  OUTLINED_FUNCTION_4();
  v0 = OUTLINED_FUNCTION_8();

  return v1(v0);
}

uint64_t HourlyForecastBannerViewModel.hourlyType.getter()
{
  OUTLINED_FUNCTION_19_1();
  result = type metadata accessor for HourlyForecastBannerViewModel();
  *v0 = *(v1 + *(result + 56));
  return result;
}

uint64_t sub_1BCB82C6C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x657369726E7573 && a2 == 0xE700000000000000;
  if (v4 || (sub_1BCE1E090() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x7465736E7573 && a2 == 0xE600000000000000;
    if (v6 || (sub_1BCE1E090() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 1920298856 && a2 == 0xE400000000000000)
    {

      return 2;
    }

    else
    {
      v8 = sub_1BCE1E090();

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

uint64_t sub_1BCB82D78(char a1)
{
  if (!a1)
  {
    return 0x657369726E7573;
  }

  if (a1 == 1)
  {
    return 0x7465736E7573;
  }

  return 1920298856;
}

uint64_t sub_1BCB82DCC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1BCB82C6C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1BCB82DF4(uint64_t a1)
{
  v2 = sub_1BCB832CC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BCB82E30(uint64_t a1)
{
  v2 = sub_1BCB832CC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BCB82E6C(uint64_t a1)
{
  v2 = sub_1BCB83320();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BCB82EA8(uint64_t a1)
{
  v2 = sub_1BCB83320();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BCB82EE4(uint64_t a1)
{
  v2 = sub_1BCB833C8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BCB82F20(uint64_t a1)
{
  v2 = sub_1BCB833C8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BCB82F5C(uint64_t a1)
{
  v2 = sub_1BCB83374();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BCB82F98(uint64_t a1)
{
  v2 = sub_1BCB83374();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t HourlyForecastBannerViewModel.HourlyType.encode(to:)(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0A240);
  OUTLINED_FUNCTION_2();
  v33 = v4;
  v34 = v3;
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v5);
  v32 = &v26 - v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0A248);
  OUTLINED_FUNCTION_2();
  v30 = v8;
  v31 = v7;
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v9);
  v29 = &v26 - v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0A250);
  OUTLINED_FUNCTION_2();
  v27 = v12;
  v28 = v11;
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v26 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0A258);
  OUTLINED_FUNCTION_2();
  v18 = v17;
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v26 - v20;
  v22 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BCB832CC();
  sub_1BCE1E170();
  if (v22)
  {
    if (v22 == 1)
    {
      OUTLINED_FUNCTION_29_1();
      sub_1BCB83374();
      v15 = v29;
      OUTLINED_FUNCTION_3_8();
      v24 = v30;
      v23 = v31;
    }

    else
    {
      v36 = 2;
      sub_1BCB83320();
      v15 = v32;
      OUTLINED_FUNCTION_3_8();
      v24 = v33;
      v23 = v34;
    }
  }

  else
  {
    v35 = 0;
    sub_1BCB833C8();
    OUTLINED_FUNCTION_3_8();
    v24 = v27;
    v23 = v28;
  }

  (*(v24 + 8))(v15, v23);
  return (*(v18 + 8))(v21, v16);
}

unint64_t sub_1BCB832CC()
{
  result = qword_1EBD0A260;
  if (!qword_1EBD0A260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD0A260);
  }

  return result;
}

unint64_t sub_1BCB83320()
{
  result = qword_1EBD0A268;
  if (!qword_1EBD0A268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD0A268);
  }

  return result;
}

unint64_t sub_1BCB83374()
{
  result = qword_1EBD0A270;
  if (!qword_1EBD0A270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD0A270);
  }

  return result;
}

unint64_t sub_1BCB833C8()
{
  result = qword_1EBD0A278;
  if (!qword_1EBD0A278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD0A278);
  }

  return result;
}

uint64_t HourlyForecastBannerViewModel.HourlyType.hashValue.getter()
{
  v1 = *v0;
  sub_1BCE1E100();
  MEMORY[0x1BFB30850](v1);
  return sub_1BCE1E150();
}

uint64_t HourlyForecastBannerViewModel.HourlyType.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v56 = a2;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0A280);
  OUTLINED_FUNCTION_2();
  v57 = v3;
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v4);
  v59 = &v48 - v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0A288);
  OUTLINED_FUNCTION_2();
  v54 = v7;
  v55 = v6;
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v48 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0A290);
  OUTLINED_FUNCTION_2();
  v53 = v12;
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v48 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0A298);
  OUTLINED_FUNCTION_2();
  v58 = v17;
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v48 - v19;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BCB832CC();
  v21 = v61;
  sub_1BCE1E160();
  if (v21)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v50 = v11;
  v51 = v15;
  v52 = v10;
  v23 = v59;
  v22 = v60;
  v61 = a1;
  v24 = sub_1BCE1DF80();
  result = sub_1BCA24D28(v24, 0);
  if (v27 == v28 >> 1)
  {
    goto LABEL_9;
  }

  v49 = 0;
  if (v27 >= (v28 >> 1))
  {
    __break(1u);
  }

  else
  {
    LODWORD(v29) = *(v26 + v27);
    sub_1BCA24D24(v27 + 1, v28 >> 1, result, v26, v27, v28);
    v31 = v30;
    v33 = v32;
    swift_unknownObjectRelease();
    v34 = v31 == v33 >> 1;
    v35 = v57;
    if (!v34)
    {
LABEL_9:
      v40 = sub_1BCE1DD90();
      swift_allocError();
      v42 = v41;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07C50);
      *v42 = &type metadata for HourlyForecastBannerViewModel.HourlyType;
      sub_1BCE1DEE0();
      sub_1BCE1DD80();
      (*(*(v40 - 8) + 104))(v42, *MEMORY[0x1E69E6AF8], v40);
      swift_willThrow();
      swift_unknownObjectRelease();
      (*(v58 + 8))(v20, v16);
      a1 = v61;
      return __swift_destroy_boxed_opaque_existential_1(a1);
    }

    if (v29)
    {
      if (v29 == 1)
      {
        OUTLINED_FUNCTION_29_1();
        sub_1BCB83374();
        v36 = v52;
        OUTLINED_FUNCTION_5_5();
        v37 = v56;
        v38 = v16;
        v39 = v58;
        swift_unknownObjectRelease();
        (*(v54 + 8))(v36, v55);
        (*(v39 + 8))(v20, v38);
      }

      else
      {
        LODWORD(v55) = v29;
        v63 = 2;
        sub_1BCB83320();
        v44 = v49;
        sub_1BCE1DED0();
        v37 = v56;
        v29 = v16;
        v45 = v58;
        if (v44)
        {
          (*(v58 + 8))(v20, v29);
          swift_unknownObjectRelease();
          a1 = v61;
          return __swift_destroy_boxed_opaque_existential_1(a1);
        }

        swift_unknownObjectRelease();
        (*(v35 + 8))(v23, v22);
        (*(v45 + 8))(v20, v29);
        LOBYTE(v29) = v55;
      }
    }

    else
    {
      v62 = 0;
      sub_1BCB833C8();
      v43 = v51;
      OUTLINED_FUNCTION_5_5();
      swift_unknownObjectRelease();
      (*(v53 + 8))(v43, v50);
      v46 = OUTLINED_FUNCTION_4_0();
      v47(v46);
      v37 = v56;
    }

    *v37 = v29;
    return __swift_destroy_boxed_opaque_existential_1(v61);
  }

  return result;
}

double HourlyForecastBannerViewModel.relevantPrecipitationChance.getter()
{
  v1 = sub_1BCE1E060();
  OUTLINED_FUNCTION_2();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_2_0();
  v7 = v6 - v5;
  v8 = type metadata accessor for HourlyForecastBannerViewModel();
  v9 = v0 + *(v8 + 36);
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

uint64_t HourlyForecastBannerViewModel.init(id:date:temperature:hourString:hourlyType:accessibilityHourString:condition:precipitationChance:temperatureUnitString:precipitation:wind:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v36 = *a6;
  sub_1BCE19090();
  OUTLINED_FUNCTION_0_3();
  (*(v20 + 32))(a9, a1);
  v21 = type metadata accessor for HourlyForecastBannerViewModel();
  v22 = v21[5];
  sub_1BCE19060();
  OUTLINED_FUNCTION_0_3();
  (*(v23 + 32))(a9 + v22, a2);
  v24 = v21[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07CA8);
  OUTLINED_FUNCTION_0_3();
  (*(v25 + 32))(a9 + v24, a3);
  v26 = (a9 + v21[7]);
  *v26 = a4;
  v26[1] = a5;
  v27 = (a9 + v21[8]);
  *v27 = a7;
  v27[1] = a8;
  sub_1BCAFEA84(a10, a9 + v21[9]);
  OUTLINED_FUNCTION_30_5();
  *v28 = a11;
  v28[1] = a12;
  v29 = v21[12];
  sub_1BCE19BA0();
  OUTLINED_FUNCTION_0_3();
  (*(v30 + 32))(a9 + v29, a13);
  v31 = v21[13];
  sub_1BCE1A000();
  OUTLINED_FUNCTION_0_3();
  result = (*(v32 + 32))(a9 + v31, a14);
  *(a9 + v21[14]) = v36;
  return result;
}

BOOL static HourlyForecastBannerViewModel.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (sub_1BCE19070() & 1) != 0 && (v4 = type metadata accessor for HourlyForecastBannerViewModel(), OUTLINED_FUNCTION_104(v4[5]), (sub_1BCE19010()) && (sub_1BCA301DC(), (sub_1BCE185B0()) && ((OUTLINED_FUNCTION_7_3(v4[7]), v7) ? (v7 = v5 == v6) : (v7 = 0), (v7 || (sub_1BCE1E090()) && ((OUTLINED_FUNCTION_7_3(v4[8]), v7) ? (v10 = v8 == v9) : (v10 = 0), (v10 || (sub_1BCE1E090()) && (v11 = OUTLINED_FUNCTION_104(v4[9]), (static ConditionViewModel.== infix(_:_:)(v11, v12)) && *(a1 + v4[10]) == *(a2 + v4[10]) && ((OUTLINED_FUNCTION_7_3(v4[11]), v7) ? (v15 = v13 == v14) : (v15 = 0), (v15 || (sub_1BCE1E090()) && (v16 = OUTLINED_FUNCTION_104(v4[12]), (sub_1BCA68720(v16, v17)) && (OUTLINED_FUNCTION_104(v4[13]), (sub_1BCE19FD0())))))
  {
    return *(a1 + v4[14]) == *(a2 + v4[14]);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1BCB83EBC(uint64_t a1, uint64_t a2)
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
      v7 = a1 == 0x74617265706D6574 && a2 == 0xEB00000000657275;
      if (v7 || (sub_1BCE1E090() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x6972745372756F68 && a2 == 0xEA0000000000676ELL;
        if (v8 || (sub_1BCE1E090() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0xD000000000000017 && 0x80000001BCE7E9F0 == a2;
          if (v9 || (sub_1BCE1E090() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x6F697469646E6F63 && a2 == 0xE90000000000006ELL;
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
                v12 = a1 == 0xD000000000000015 && 0x80000001BCE7CFC0 == a2;
                if (v12 || (sub_1BCE1E090() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0x7469706963657270 && a2 == 0xED00006E6F697461;
                  if (v13 || (sub_1BCE1E090() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 1684957559 && a2 == 0xE400000000000000;
                    if (v14 || (sub_1BCE1E090() & 1) != 0)
                    {

                      return 9;
                    }

                    else if (a1 == 0x7954796C72756F68 && a2 == 0xEA00000000006570)
                    {

                      return 10;
                    }

                    else
                    {
                      v16 = sub_1BCE1E090();

                      if (v16)
                      {
                        return 10;
                      }

                      else
                      {
                        return 11;
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

unint64_t sub_1BCB84228(char a1)
{
  result = 25705;
  switch(a1)
  {
    case 1:
      result = 1702125924;
      break;
    case 2:
      result = 0x74617265706D6574;
      break;
    case 3:
      result = 0x6972745372756F68;
      break;
    case 4:
      result = 0xD000000000000017;
      break;
    case 5:
      result = 0x6F697469646E6F63;
      break;
    case 6:
      result = 0xD000000000000013;
      break;
    case 7:
      result = 0xD000000000000015;
      break;
    case 8:
      result = 0x7469706963657270;
      break;
    case 9:
      result = 1684957559;
      break;
    case 10:
      result = 0x7954796C72756F68;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1BCB84378@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1BCB83EBC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1BCB843A0(uint64_t a1)
{
  v2 = sub_1BCB854B4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BCB843DC(uint64_t a1)
{
  v2 = sub_1BCB854B4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t HourlyForecastBannerViewModel.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0A2A0);
  OUTLINED_FUNCTION_2();
  v7 = v6;
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v23[-v9];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BCB854B4();
  sub_1BCE1E170();
  v23[15] = 0;
  sub_1BCE19090();
  OUTLINED_FUNCTION_11_23();
  sub_1BCB85700(v11, v12);
  OUTLINED_FUNCTION_4_2();
  if (!v2)
  {
    v13 = type metadata accessor for HourlyForecastBannerViewModel();
    OUTLINED_FUNCTION_29_1();
    sub_1BCE19060();
    OUTLINED_FUNCTION_9_27();
    sub_1BCB85700(v14, v15);
    OUTLINED_FUNCTION_23_15();
    OUTLINED_FUNCTION_4_2();
    v23[13] = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07CA8);
    sub_1BCAFEB90(&qword_1EBD09188);
    OUTLINED_FUNCTION_23_15();
    OUTLINED_FUNCTION_4_2();
    v23[12] = 3;
    OUTLINED_FUNCTION_17();
    sub_1BCE1DFD0();
    v23[11] = 4;
    OUTLINED_FUNCTION_17();
    sub_1BCE1DFD0();
    v23[10] = 5;
    type metadata accessor for ConditionViewModel();
    OUTLINED_FUNCTION_8_31();
    sub_1BCB85700(v16, v17);
    OUTLINED_FUNCTION_23_15();
    OUTLINED_FUNCTION_4_2();
    v23[9] = 6;
    OUTLINED_FUNCTION_17();
    sub_1BCE1DFF0();
    v23[8] = 7;
    OUTLINED_FUNCTION_17();
    sub_1BCE1DFD0();
    v23[7] = 8;
    sub_1BCE19BA0();
    OUTLINED_FUNCTION_13_22();
    sub_1BCB85700(v18, v19);
    OUTLINED_FUNCTION_23_15();
    OUTLINED_FUNCTION_4_2();
    v23[6] = 9;
    sub_1BCE1A000();
    OUTLINED_FUNCTION_12_24();
    sub_1BCB85700(v20, v21);
    OUTLINED_FUNCTION_23_15();
    OUTLINED_FUNCTION_4_2();
    v23[5] = *(v3 + *(v13 + 56));
    v23[4] = 10;
    sub_1BCB85508();
    OUTLINED_FUNCTION_17();
    sub_1BCE1E020();
  }

  return (*(v7 + 8))(v10, v5);
}

uint64_t HourlyForecastBannerViewModel.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v74 = a2;
  v82 = sub_1BCE1A000();
  OUTLINED_FUNCTION_2();
  v80 = v3;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_2_0();
  v75 = v6 - v5;
  v84 = sub_1BCE19BA0();
  OUTLINED_FUNCTION_2();
  v81 = v7;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_2_0();
  v76 = v10 - v9;
  v77 = type metadata accessor for ConditionViewModel();
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_2_0();
  v78 = v13 - v12;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07CA8);
  OUTLINED_FUNCTION_2();
  v85 = v14;
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v73 - v16;
  v89 = sub_1BCE19060();
  OUTLINED_FUNCTION_2();
  v86 = v18;
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_2_0();
  v22 = v21 - v20;
  v23 = sub_1BCE19090();
  OUTLINED_FUNCTION_2();
  v90 = v24;
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_2_0();
  v28 = v27 - v26;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0A2B8);
  OUTLINED_FUNCTION_2();
  v30 = v29;
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v73 - v32;
  v94 = type metadata accessor for HourlyForecastBannerViewModel();
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_2_0();
  v92 = a1;
  v93 = v36 - v35;
  v37 = a1[3];
  __swift_project_boxed_opaque_existential_1(a1, v37);
  sub_1BCB854B4();
  v88 = v33;
  v38 = v91;
  sub_1BCE1E160();
  v83 = v23;
  if (!v38)
  {
    v73 = v30;
    v105 = 0;
    OUTLINED_FUNCTION_11_23();
    sub_1BCB85700(v39, v40);
    OUTLINED_FUNCTION_20_15();
    sub_1BCE1DF70();
    v43 = v23;
    v44 = v93;
    (*(v90 + 32))(v93, v28, v43);
    OUTLINED_FUNCTION_29_1();
    OUTLINED_FUNCTION_9_27();
    sub_1BCB85700(v45, v46);
    v47 = v89;
    sub_1BCE1DF70();
    (*(v86 + 32))(v44 + v94[5], v22, v47);
    v104 = 2;
    sub_1BCAFEB90(&qword_1EBD091C0);
    v48 = v17;
    v49 = v87;
    sub_1BCE1DF70();
    v50 = v94;
    (*(v85 + 32))(v44 + v94[6], v48, v49);
    v103 = 3;
    OUTLINED_FUNCTION_17_17();
    v51 = sub_1BCE1DF20();
    v52 = (v44 + v50[7]);
    *v52 = v51;
    v52[1] = v53;
    v102 = 4;
    OUTLINED_FUNCTION_17_17();
    v54 = sub_1BCE1DF20();
    v55 = (v44 + v50[8]);
    *v55 = v54;
    v55[1] = v56;
    v101 = 5;
    OUTLINED_FUNCTION_8_31();
    sub_1BCB85700(v57, v58);
    v59 = v78;
    OUTLINED_FUNCTION_20_15();
    sub_1BCE1DF70();
    sub_1BCAFEA84(v59, v44 + v50[9]);
    v100 = 6;
    OUTLINED_FUNCTION_17_17();
    sub_1BCE1DF40();
    *(v44 + v50[10]) = v60;
    v99 = 7;
    OUTLINED_FUNCTION_17_17();
    v61 = sub_1BCE1DF20();
    LODWORD(v91) = 1;
    v62 = (v44 + v50[11]);
    *v62 = v61;
    v62[1] = v63;
    v98 = 8;
    OUTLINED_FUNCTION_13_22();
    sub_1BCB85700(v64, v65);
    v66 = v76;
    OUTLINED_FUNCTION_20_15();
    sub_1BCE1DF70();
    (*(v81 + 32))(v44 + v50[12], v66, v84);
    v97 = 9;
    OUTLINED_FUNCTION_12_24();
    sub_1BCB85700(v67, v68);
    OUTLINED_FUNCTION_20_15();
    sub_1BCE1DF70();
    (*(v80 + 32))(v93 + v94[13], v75, v82);
    v95 = 10;
    sub_1BCB8555C();
    OUTLINED_FUNCTION_20_15();
    sub_1BCE1DF70();
    v69 = OUTLINED_FUNCTION_19_16();
    v70(v69);
    v71 = v93;
    *(v93 + v94[14]) = v96;
    sub_1BCB855B0(v71, v74, type metadata accessor for HourlyForecastBannerViewModel);
    __swift_destroy_boxed_opaque_existential_1(v92);
    return sub_1BCB85608(v71, type metadata accessor for HourlyForecastBannerViewModel);
  }

  OUTLINED_FUNCTION_18_16();
  v41 = v93;
  result = __swift_destroy_boxed_opaque_existential_1(v92);
  LODWORD(v91) = 0;
  v42 = v94;
  if (v37)
  {

    if ((v28 & 1) == 0)
    {
      goto LABEL_5;
    }
  }

  else if (!v28)
  {
LABEL_5:
    if (v22)
    {
      goto LABEL_6;
    }

    goto LABEL_10;
  }

  if (v22)
  {
LABEL_6:
    result = sub_1BCB85608(v41 + v42[9], type metadata accessor for ConditionViewModel);
    if ((v91 & 1) == 0)
    {
      return result;
    }
  }

LABEL_10:
  if (v91)
  {
  }

  return result;
}

uint64_t HourlyForecastBannerViewModel.init(id:date:temperature:hourString:accessibilityHourString:condition:precipitationChance:temperatureUnitString:precipitation:wind:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  sub_1BCE19090();
  OUTLINED_FUNCTION_0_3();
  (*(v21 + 32))(a9, a1);
  v22 = type metadata accessor for HourlyForecastBannerViewModel();
  v23 = v22[5];
  sub_1BCE19060();
  OUTLINED_FUNCTION_0_3();
  (*(v24 + 32))(a9 + v23, a2);
  v25 = v22[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07CA8);
  OUTLINED_FUNCTION_0_3();
  (*(v26 + 32))(a9 + v25, a3);
  v27 = (a9 + v22[7]);
  *v27 = a4;
  v27[1] = a5;
  v28 = (a9 + v22[8]);
  *v28 = a6;
  v28[1] = a7;
  sub_1BCAFEA84(a8, a9 + v22[9]);
  OUTLINED_FUNCTION_30_5();
  *v29 = a10;
  v29[1] = a11;
  v30 = v22[12];
  sub_1BCE19BA0();
  OUTLINED_FUNCTION_0_3();
  (*(v31 + 32))(a9 + v30, a12);
  v32 = v22[13];
  sub_1BCE1A000();
  OUTLINED_FUNCTION_0_3();
  result = (*(v33 + 32))(a9 + v32, a13);
  *(a9 + v22[14]) = 2;
  return result;
}

unint64_t sub_1BCB854B4()
{
  result = qword_1EBD0A2A8;
  if (!qword_1EBD0A2A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD0A2A8);
  }

  return result;
}

unint64_t sub_1BCB85508()
{
  result = qword_1EBD0A2B0;
  if (!qword_1EBD0A2B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD0A2B0);
  }

  return result;
}

unint64_t sub_1BCB8555C()
{
  result = qword_1EBD0A2C0;
  if (!qword_1EBD0A2C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD0A2C0);
  }

  return result;
}

uint64_t sub_1BCB855B0(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_0_3();
  v4 = OUTLINED_FUNCTION_10_1();
  v5(v4);
  return a2;
}

uint64_t sub_1BCB85608(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_4();
  (*(v3 + 8))(a1);
  return a1;
}

unint64_t sub_1BCB85664()
{
  result = qword_1EBD0A2C8;
  if (!qword_1EBD0A2C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD0A2C8);
  }

  return result;
}

uint64_t sub_1BCB85700(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1BCB85770()
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
            sub_1BCE1A000();
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

_BYTE *storeEnumTagSinglePayload for HourlyForecastBannerViewModel.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 10 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 10) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF6)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF5)
  {
    v6 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
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
          *result = a2 + 10;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_1BCB85968(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1BCB85A78()
{
  result = qword_1EBD0A2D0;
  if (!qword_1EBD0A2D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD0A2D0);
  }

  return result;
}

unint64_t sub_1BCB85AD0()
{
  result = qword_1EBD0A2D8;
  if (!qword_1EBD0A2D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD0A2D8);
  }

  return result;
}

unint64_t sub_1BCB85B28()
{
  result = qword_1EBD0A2E0;
  if (!qword_1EBD0A2E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD0A2E0);
  }

  return result;
}

unint64_t sub_1BCB85B80()
{
  result = qword_1EBD0A2E8;
  if (!qword_1EBD0A2E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD0A2E8);
  }

  return result;
}

unint64_t sub_1BCB85BD8()
{
  result = qword_1EBD0A2F0;
  if (!qword_1EBD0A2F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD0A2F0);
  }

  return result;
}

unint64_t sub_1BCB85C30()
{
  result = qword_1EBD0A2F8;
  if (!qword_1EBD0A2F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD0A2F8);
  }

  return result;
}

unint64_t sub_1BCB85C88()
{
  result = qword_1EBD0A300;
  if (!qword_1EBD0A300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD0A300);
  }

  return result;
}

unint64_t sub_1BCB85CE0()
{
  result = qword_1EBD0A308;
  if (!qword_1EBD0A308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD0A308);
  }

  return result;
}

unint64_t sub_1BCB85D38()
{
  result = qword_1EBD0A310;
  if (!qword_1EBD0A310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD0A310);
  }

  return result;
}

unint64_t sub_1BCB85D90()
{
  result = qword_1EBD0A318;
  if (!qword_1EBD0A318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD0A318);
  }

  return result;
}

unint64_t sub_1BCB85DE8()
{
  result = qword_1EBD0A320;
  if (!qword_1EBD0A320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD0A320);
  }

  return result;
}

unint64_t sub_1BCB85E40()
{
  result = qword_1EBD0A328;
  if (!qword_1EBD0A328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD0A328);
  }

  return result;
}

double sub_1BCB85E98@<D0>(uint64_t a1@<X8>)
{
  v2 = (a1 + 1436);
  __asm { FMOV            V0.2D, #1.0 }

  sub_1BCB86664(_Q0, xmmword_1BCE542B0);
  v9 = v8;
  sub_1BCB86664(xmmword_1BCE3D4E0, xmmword_1BCE44960);
  *a1 = 0x4006666666666666;
  *(a1 + 8) = 5;
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
  *(a1 + 388) = 0x3B449BA600000000;
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
  *(a1 + 608) = 0x40E0000040C00000;
  *(a1 + 624) = xmmword_1BCE542C0;
  *(a1 + 640) = xmmword_1BCE542D0;
  *(a1 + 656) = 0x419DAE1441200000;
  *(a1 + 664) = 0x402000003E99999ALL;
  *(a1 + 672) = 0x40C0000040400000;
  *(a1 + 688) = xmmword_1BCE542E0;
  *(a1 + 704) = 1063675494;
  *(a1 + 712) = 0x3F6666663E99999ALL;
  *(a1 + 720) = 0x41D0000041A00000;
  *(a1 + 728) = 1075601536;
  *(a1 + 736) = 1;
  *(a1 + 744) = 3;
  *(a1 + 752) = xmmword_1BCE542F0;
  *(a1 + 768) = 0x617274736F746C41;
  *(a1 + 776) = 0xEF4C202D20737574;
  *(a1 + 784) = 0xD000000000000013;
  *(a1 + 792) = 0x80000001BCE798E0;
  *(a1 + 800) = 9;
  *(a1 + 816) = _Q0;
  *(a1 + 832) = 1061997773;
  *(a1 + 840) = 0x3F19999A3E4CCCCDLL;
  *(a1 + 848) = 0x41D0000041980000;
  *(a1 + 856) = 1093550340;
  *(a1 + 864) = 1;
  *(a1 + 872) = 3;
  *(a1 + 880) = xmmword_1BCE54300;
  *(a1 + 896) = 0xD000000000000010;
  *(a1 + 904) = 0x80000001BCE79320;
  *(a1 + 912) = 0xD000000000000014;
  *(a1 + 920) = 0x80000001BCE79340;
  *(a1 + 928) = 9;
  *(a1 + 944) = xmmword_1BCE54310;
  *(a1 + 960) = 1065353216;
  *(a1 + 968) = 0x3F4CCCCD3E4CCCCDLL;
  *(a1 + 976) = 0x41B0000041700000;
  *(a1 + 984) = 1086892600;
  *(a1 + 992) = 1;
  *(a1 + 1000) = 2;
  *(a1 + 1008) = xmmword_1BCE54320;
  *(a1 + 1024) = 0x2D20737572726943;
  *(a1 + 1032) = 0xEA00000000005320;
  strcpy((a1 + 1040), "Cirrus_SingleS");
  *(a1 + 1055) = -18;
  *(a1 + 1056) = 6;
  *(a1 + 1072) = xmmword_1BCE3C700;
  *(a1 + 1088) = 0x40000000;
  *(a1 + 1096) = 0x3F8000003F000000;
  *(a1 + 1104) = 0x4160000040C00000;
  *(a1 + 1112) = 1090519040;
  *(a1 + 1120) = 0;
  *(a1 + 1128) = 3;
  *(a1 + 1136) = xmmword_1BCE54330;
  *(a1 + 1152) = 0x7970736957;
  *(a1 + 1160) = 0xE500000000000000;
  strcpy((a1 + 1168), "Wispy_Single");
  *(a1 + 1181) = 0;
  *(a1 + 1182) = -5120;
  *(a1 + 1184) = 6;
  *(a1 + 1200) = _Q0;
  *(a1 + 1216) = xmmword_1BCE54340;
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
  *(a1 + 1376) = xmmword_1BCE54350;
  *(a1 + 1392) = _Q0;
  *(a1 + 1408) = xmmword_1BCE54360;
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
  *(a1 + 1760) = 8;
  *(a1 + 1776) = xmmword_1BCE3EED0;
  *(a1 + 1792) = xmmword_1BCE54370;
  *(a1 + 1808) = xmmword_1BCE3C7A0;
  *(a1 + 1824) = 1;
  *(a1 + 1828) = xmmword_1BCE3EBB0;
  *(a1 + 1844) = 1036831949;
  *(a1 + 1848) = 0x4100000041200000;
  *(a1 + 1856) = 3;
  *(a1 + 1864) = 1056964608;
  *(a1 + 1872) = 0x400AE1483F970A3DLL;
  *(a1 + 1880) = 1110704128;
  *(a1 + 1888) = xmmword_1BCE54380;
  *(a1 + 1904) = 0x3E4CCCCD40A00000;
  *(a1 + 1912) = 1101004800;
  *(a1 + 1920) = 0;
  *(a1 + 1928) = 1107820544;
  *(a1 + 1936) = _Q0;
  *(a1 + 1952) = 1077936128;
  *(a1 + 1960) = 0x420C000041C80000;
  *(a1 + 1968) = xmmword_1BCE403A0;
  *(a1 + 1984) = 0x3F80000000000000;
  *(a1 + 1992) = 1061158912;
  *(a1 + 2000) = 0x407333333FB33333;
  *(a1 + 2008) = 0x408000004019999ALL;
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
  *(a1 + 2208) = 0x419000003F4CCCCDLL;
  *(a1 + 2224) = xmmword_1BCE42410;
  *(a1 + 2240) = xmmword_1BCE49610;
  result = 0.00781250185;
  *(a1 + 2256) = xmmword_1BCE54390;
  *(a1 + 2304) = 0;
  *(a1 + 2288) = 0u;
  *(a1 + 2272) = 0u;
  *(a1 + 2312) = v9;
  *(a1 + 2320) = v13;
  return result;
}

__n128 sub_1BCB86664(__n128 a1, __n128 a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07858);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1BCE3EBD0;
  *(v2 + 80) = xmmword_1BCE41330;
  *(v2 + 96) = xmmword_1BCE41340;
  *(v2 + 144) = xmmword_1BCE3EC10;
  *(v2 + 160) = xmmword_1BCE3EC20;
  __asm { FMOV            V0.2D, #0.5 }

  *(v2 + 304) = _Q0;
  *(v2 + 320) = xmmword_1BCE3EC60;
  *(v2 + 2512) = xmmword_1BCE44920;
  *(v2 + 2528) = xmmword_1BCE3EDB0;
  *(v2 + 2576) = xmmword_1BCE3E180;
  *(v2 + 2592) = xmmword_1BCE3CB90;
  *(v2 + 2736) = vdupq_n_s64(0x3FE0ECE8A0000000uLL);
  *(v2 + 2752) = xmmword_1BCE3EDF0;
  *(v2 + 3936) = a1;
  *(v2 + 4912) = xmmword_1BCE3EED0;
  *(v2 + 6128) = xmmword_1BCE3EED0;
  *(v2 + 4928) = 1147207680;
  *(v2 + 6144) = 1147207680;
  *(v2 + 4976) = xmmword_1BCE49930;
  *(v2 + 6192) = xmmword_1BCE49930;
  *(v2 + 4992) = xmmword_1BCE49940;
  *(v2 + 6208) = xmmword_1BCE49940;
  *(v2 + 5008) = xmmword_1BCE3EEF0;
  *(v2 + 6224) = xmmword_1BCE3EEF0;
  *(v2 + 5024) = xmmword_1BCE3EF00;
  *(v2 + 6240) = xmmword_1BCE3EF00;
  *(v2 + 2624) = xmmword_1BCE3C8C0;
  *(v2 + 5088) = xmmword_1BCE3C8C0;
  *(v2 + 6304) = xmmword_1BCE3C8C0;
  *(v2 + 5232) = xmmword_1BCE543B0;
  *(v2 + 6448) = xmmword_1BCE543B0;
  *(v2 + 5264) = xmmword_1BCE3E9D0;
  *(v2 + 6480) = xmmword_1BCE3E9D0;
  *(v2 + 5952) = xmmword_1BCE49950;
  *(v2 + 7168) = xmmword_1BCE49950;
  v8 = vdupq_n_s64(0x3FEBBBBBBBBBBBBCuLL);
  *(v2 + 5936) = v8;
  *(v2 + 5968) = v8;
  *(v2 + 7152) = v8;
  *(v2 + 7184) = v8;
  *(v2 + 5984) = xmmword_1BCE49960;
  *(v2 + 7200) = xmmword_1BCE49960;
  *(v2 + 3696) = xmmword_1BCE3EE30;
  *(v2 + 7344) = xmmword_1BCE3EE30;
  *(v2 + 3712) = 1145569280;
  *(v2 + 7360) = 1145569280;
  *(v2 + 3728) = xmmword_1BCE498D0;
  *(v2 + 7376) = xmmword_1BCE498D0;
  *(v2 + 3744) = xmmword_1BCE498E0;
  *(v2 + 7392) = xmmword_1BCE498E0;
  *(v2 + 3760) = xmmword_1BCE498F0;
  *(v2 + 7408) = xmmword_1BCE498F0;
  *(v2 + 3776) = xmmword_1BCE49900;
  *(v2 + 7424) = xmmword_1BCE49900;
  *(v2 + 3792) = xmmword_1BCE3EE80;
  *(v2 + 7440) = xmmword_1BCE3EE80;
  *(v2 + 3808) = xmmword_1BCE49320;
  *(v2 + 7456) = xmmword_1BCE49320;
  *(v2 + 3840) = xmmword_1BCE449B0;
  *(v2 + 5056) = xmmword_1BCE449B0;
  *(v2 + 6272) = xmmword_1BCE449B0;
  *(v2 + 7488) = xmmword_1BCE449B0;
  *(v2 + 3872) = xmmword_1BCE3CCC0;
  *(v2 + 7520) = xmmword_1BCE3CCC0;
  *(v2 + 3904) = xmmword_1BCE3D4E0;
  *(v2 + 5120) = xmmword_1BCE3D4E0;
  *(v2 + 6336) = xmmword_1BCE3D4E0;
  *(v2 + 7552) = xmmword_1BCE3D4E0;
  *(v2 + 3968) = xmmword_1BCE3E1D0;
  *(v2 + 5184) = xmmword_1BCE3E1D0;
  *(v2 + 6400) = xmmword_1BCE3E1D0;
  *(v2 + 7616) = xmmword_1BCE3E1D0;
  *(v2 + 4016) = xmmword_1BCE543A0;
  *(v2 + 7664) = xmmword_1BCE543A0;
  *(v2 + 4032) = 1063675494;
  *(v2 + 5248) = 1063675494;
  *(v2 + 6464) = 1063675494;
  *(v2 + 7680) = 1063675494;
  *(v2 + 4048) = xmmword_1BCE3CF80;
  *(v2 + 7696) = xmmword_1BCE3CF80;
  v9 = vdupq_n_s64(0x3FEAFAFAFAFAFAFBuLL);
  *(v2 + 4720) = v9;
  *(v2 + 4752) = v9;
  *(v2 + 8368) = v9;
  *(v2 + 8400) = v9;
  *(v2 + 4736) = xmmword_1BCE49920;
  *(v2 + 4768) = xmmword_1BCE49920;
  *(v2 + 8384) = xmmword_1BCE49920;
  *(v2 + 8416) = xmmword_1BCE49920;
  *(v2 + 2480) = xmmword_1BCE3EDA0;
  *(v2 + 8560) = xmmword_1BCE3EDA0;
  *(v2 + 2496) = 1135542272;
  *(v2 + 8576) = 1135542272;
  *(v2 + 8592) = xmmword_1BCE3E140;
  *(v2 + 8608) = xmmword_1BCE3E150;
  *(v2 + 2544) = xmmword_1BCE41540;
  *(v2 + 8624) = xmmword_1BCE41540;
  *(v2 + 2560) = xmmword_1BCE3EDD0;
  *(v2 + 8640) = xmmword_1BCE3EDD0;
  *(v2 + 8656) = xmmword_1BCE49330;
  *(v2 + 8672) = xmmword_1BCE49340;
  *(v2 + 8704) = xmmword_1BCE3CBB0;
  *(v2 + 8720) = xmmword_1BCE49350;
  *(v2 + 2656) = xmmword_1BCE44950;
  *(v2 + 8736) = xmmword_1BCE44950;
  *(v2 + 2672) = xmmword_1BCE49890;
  *(v2 + 8752) = xmmword_1BCE49890;
  *(v2 + 2688) = xmmword_1BCE498A0;
  *(v2 + 8768) = xmmword_1BCE498A0;
  *(v2 + 8816) = vdupq_n_s64(0x3FE147AE20000000uLL);
  *(v2 + 8832) = xmmword_1BCE49360;
  *(v2 + 48) = xmmword_1BCE41320;
  *(v2 + 8880) = a2;
  v10 = vdup_n_s32(0x3F4CCCCDu);
  *(v2 + 2816) = v10;
  *(v2 + 8896) = v10;
  *(v2 + 3520) = xmmword_1BCE498B0;
  *(v2 + 9600) = xmmword_1BCE498B0;
  v11 = vdupq_n_s64(0x3FE5D5D5D5D5D5D6uLL);
  *(v2 + 3504) = v11;
  *(v2 + 3536) = v11;
  *(v2 + 9584) = v11;
  *(v2 + 9616) = v11;
  *(v2 + 3552) = xmmword_1BCE498C0;
  *(v2 + 9632) = xmmword_1BCE498C0;
  *(v2 + 1264) = xmmword_1BCE3EBE0;
  *(v2 + 9776) = xmmword_1BCE3EBE0;
  *(v2 + 1280) = 0x41C8000043480000;
  *(v2 + 9792) = 0x41C8000043480000;
  *(v2 + 1296) = xmmword_1BCE49870;
  *(v2 + 9808) = xmmword_1BCE49870;
  *(v2 + 1312) = xmmword_1BCE49880;
  *(v2 + 9824) = xmmword_1BCE49880;
  *(v2 + 1328) = xmmword_1BCE3ECE0;
  *(v2 + 9840) = xmmword_1BCE3ECE0;
  *(v2 + 1360) = xmmword_1BCE3ECF0;
  *(v2 + 9872) = xmmword_1BCE3ECF0;
  *(v2 + 1376) = xmmword_1BCE3ED00;
  *(v2 + 9888) = xmmword_1BCE3ED00;
  *(v2 + 1536) = xmmword_1BCE3ED40;
  *(v2 + 10048) = xmmword_1BCE3ED40;
  *(v2 + 64) = 0x41A0000042C80000;
  *(v2 + 10992) = xmmword_1BCE41320;
  *(v2 + 11008) = 0x41A0000042C80000;
  *(v2 + 11024) = xmmword_1BCE493A0;
  *(v2 + 11040) = xmmword_1BCE49380;
  *(v2 + 112) = xmmword_1BCE3EBF0;
  *(v2 + 128) = xmmword_1BCE3EC00;
  *(v2 + 11056) = xmmword_1BCE3EBF0;
  *(v2 + 192) = xmmword_1BCE40200;
  *(v2 + 1344) = xmmword_1BCE3EC00;
  *(v2 + 9856) = xmmword_1BCE3EC00;
  *(v2 + 11072) = xmmword_1BCE3EC00;
  *(v2 + 11088) = xmmword_1BCE493B0;
  *(v2 + 11104) = xmmword_1BCE3F570;
  *(v2 + 1408) = xmmword_1BCE40200;
  *(v2 + 9920) = xmmword_1BCE40200;
  *(v2 + 11136) = xmmword_1BCE40200;
  *(v2 + 11152) = xmmword_1BCE493C0;
  *(v2 + 1424) = xmmword_1BCE448B0;
  *(v2 + 2640) = xmmword_1BCE448B0;
  *(v2 + 9936) = xmmword_1BCE448B0;
  *(v2 + 208) = xmmword_1BCE448B0;
  *(v2 + 224) = xmmword_1BCE448C0;
  *(v2 + 1440) = xmmword_1BCE448C0;
  *(v2 + 9952) = xmmword_1BCE448C0;
  *(v2 + 11168) = xmmword_1BCE448C0;
  *(v2 + 11248) = vdupq_n_s64(0x3FDEB85200000000uLL);
  *(v2 + 11264) = xmmword_1BCE493D0;
  *(v2 + 368) = xmmword_1BCE44960;
  *(v2 + 1584) = xmmword_1BCE44960;
  *(v2 + 2800) = xmmword_1BCE44960;
  *(v2 + 10096) = xmmword_1BCE44960;
  *(v2 + 11312) = xmmword_1BCE44960;
  *(v2 + 384) = 0x3F8000003F4CCCCDLL;
  *(v2 + 1600) = 0x3F8000003F4CCCCDLL;
  *(v2 + 10112) = 0x3F8000003F4CCCCDLL;
  *(v2 + 11328) = 0x3F8000003F4CCCCDLL;
  *(v2 + 1088) = xmmword_1BCE44900;
  *(v2 + 2304) = xmmword_1BCE44900;
  *(v2 + 10816) = xmmword_1BCE44900;
  *(v2 + 12032) = xmmword_1BCE44900;
  v12 = vdupq_n_s64(0x3FDFDFDFDFDFDFE0uLL);
  *(v2 + 1072) = v12;
  *(v2 + 1104) = v12;
  *(v2 + 2288) = v12;
  *(v2 + 2320) = v12;
  *(v2 + 10800) = v12;
  *(v2 + 10832) = v12;
  *(v2 + 12016) = v12;
  *(v2 + 12048) = v12;
  *(v2 + 1120) = xmmword_1BCE44910;
  *(v2 + 2336) = xmmword_1BCE44910;
  *(v2 + 10848) = xmmword_1BCE44910;
  *(v2 + 12064) = xmmword_1BCE44910;
  *(v2 + 1168) = 0x4170000042480000;
  *(v2 + 2384) = 0x4170000042480000;
  *(v2 + 3600) = 0x4170000042480000;
  *(v2 + 4816) = 0x4170000042480000;
  *(v2 + 6032) = 0x4170000042480000;
  *(v2 + 7248) = 0x4170000042480000;
  *(v2 + 8464) = 0x4170000042480000;
  *(v2 + 9680) = 0x4170000042480000;
  *(v2 + 10896) = 0x4170000042480000;
  *(v2 + 12112) = 0x4170000042480000;
  __asm { FMOV            V0.2D, #1.0 }

  *(v2 + 176) = result;
  *(v2 + 240) = result;
  *(v2 + 256) = result;
  *(v2 + 272) = result;
  *(v2 + 288) = result;
  *(v2 + 336) = result;
  *(v2 + 352) = result;
  *(v2 + 400) = result;
  *(v2 + 432) = result;
  *(v2 + 448) = result;
  *(v2 + 464) = result;
  *(v2 + 480) = result;
  *(v2 + 496) = result;
  *(v2 + 512) = result;
  *(v2 + 528) = result;
  *(v2 + 544) = result;
  *(v2 + 560) = result;
  *(v2 + 576) = result;
  *(v2 + 592) = result;
  *(v2 + 608) = result;
  *(v2 + 624) = result;
  *(v2 + 640) = result;
  *(v2 + 656) = result;
  *(v2 + 672) = result;
  *(v2 + 688) = result;
  *(v2 + 704) = result;
  *(v2 + 720) = result;
  *(v2 + 736) = result;
  *(v2 + 752) = result;
  *(v2 + 768) = result;
  *(v2 + 784) = result;
  *(v2 + 800) = result;
  *(v2 + 816) = result;
  *(v2 + 832) = result;
  *(v2 + 848) = result;
  *(v2 + 864) = result;
  *(v2 + 880) = result;
  *(v2 + 896) = result;
  *(v2 + 912) = result;
  *(v2 + 928) = result;
  *(v2 + 944) = result;
  *(v2 + 960) = result;
  *(v2 + 976) = result;
  *(v2 + 992) = result;
  *(v2 + 1008) = result;
  *(v2 + 1024) = result;
  *(v2 + 1040) = result;
  *(v2 + 1056) = result;
  *(v2 + 8288) = result;
  *(v2 + 8304) = result;
  *(v2 + 8320) = result;
  *(v2 + 8336) = result;
  *(v2 + 8352) = result;
  *(v2 + 0x2000) = result;
  *(v2 + 8208) = result;
  *(v2 + 8224) = result;
  *(v2 + 8240) = result;
  *(v2 + 8256) = result;
  *(v2 + 8272) = result;
  *(v2 + 8096) = result;
  *(v2 + 8112) = result;
  *(v2 + 8128) = result;
  *(v2 + 8144) = result;
  *(v2 + 8160) = result;
  *(v2 + 8176) = result;
  *(v2 + 8000) = result;
  *(v2 + 8016) = result;
  *(v2 + 8032) = result;
  *(v2 + 8048) = result;
  *(v2 + 8064) = result;
  *(v2 + 8080) = result;
  *(v2 + 7904) = result;
  *(v2 + 7920) = result;
  *(v2 + 7936) = result;
  *(v2 + 7952) = result;
  *(v2 + 7968) = result;
  *(v2 + 7984) = result;
  *(v2 + 7808) = result;
  *(v2 + 7824) = result;
  *(v2 + 7840) = result;
  *(v2 + 7856) = result;
  *(v2 + 7872) = result;
  *(v2 + 7888) = result;
  *(v2 + 1136) = result;
  *(v2 + 1152) = result;
  *(v2 + 7744) = result;
  *(v2 + 7760) = result;
  *(v2 + 7776) = result;
  *(v2 + 7792) = result;
  *(v2 + 1176) = 0x3FF0000000000000;
  *(v2 + 7688) = 0x3FED73E5C0000000;
  *(v2 + 7712) = 0x3FF0000000000000;
  *(v2 + 7720) = 0;
  *(v2 + 7728) = result;
  *(v2 + 1184) = result;
  *(v2 + 1200) = result;
  *(v2 + 1216) = result;
  *(v2 + 7600) = result;
  *(v2 + 7632) = result;
  *(v2 + 7648) = result;
  *(v2 + 1232) = 0x3FF0000000000000;
  *(v2 + 1248) = 0xC031FFFFFFFFFFFFLL;
  *(v2 + 7536) = result;
  *(v2 + 7568) = result;
  *(v2 + 7584) = result;
  *(v2 + 1256) = 0;
  *(v2 + 1257) = *v16;
  *(v2 + 7504) = result;
  *(v2 + 1260) = *&v16[3];
  *(v2 + 1288) = 1036831949;
  *(v2 + 1392) = result;
  *(v2 + 1456) = result;
  *(v2 + 1472) = result;
  *(v2 + 7472) = result;
  *(v2 + 1488) = result;
  *(v2 + 1504) = result;
  *(v2 + 1520) = result;
  *(v2 + 7368) = 1063675494;
  *(v2 + 1552) = result;
  *(v2 + 7337) = *v21;
  *(v2 + 7296) = result;
  *(v2 + 7312) = 0x3FF0000000000000;
  *(v2 + 7328) = 0x4040800000000000;
  *(v2 + 7336) = 1;
  *(v2 + 7340) = *&v21[3];
  *(v2 + 1568) = result;
  *(v2 + 7216) = result;
  *(v2 + 7232) = result;
  *(v2 + 7256) = 0x3FF0000000000000;
  *(v2 + 7264) = result;
  *(v2 + 7280) = result;
  *(v2 + 1608) = 0x3FF0000000000000;
  *(v2 + 1616) = result;
  *(v2 + 1632) = 0x3FF0000000000000;
  *(v2 + 1640) = 0;
  *(v2 + 7120) = result;
  *(v2 + 7136) = result;
  *(v2 + 7024) = result;
  *(v2 + 7040) = result;
  *(v2 + 7056) = result;
  *(v2 + 7072) = result;
  *(v2 + 7088) = result;
  *(v2 + 7104) = result;
  *(v2 + 6928) = result;
  *(v2 + 6944) = result;
  *(v2 + 6960) = result;
  *(v2 + 6976) = result;
  *(v2 + 6992) = result;
  *(v2 + 7008) = result;
  *(v2 + 6832) = result;
  *(v2 + 6848) = result;
  *(v2 + 6864) = result;
  *(v2 + 6880) = result;
  *(v2 + 6896) = result;
  *(v2 + 6912) = result;
  *(v2 + 6736) = result;
  *(v2 + 6752) = result;
  *(v2 + 6768) = result;
  *(v2 + 6784) = result;
  *(v2 + 6800) = result;
  *(v2 + 6816) = result;
  *(v2 + 6640) = result;
  *(v2 + 6656) = result;
  *(v2 + 6672) = result;
  *(v2 + 6688) = result;
  *(v2 + 6704) = result;
  *(v2 + 6720) = result;
  *(v2 + 6544) = result;
  *(v2 + 6560) = result;
  *(v2 + 6576) = result;
  *(v2 + 6592) = result;
  *(v2 + 6608) = result;
  *(v2 + 6624) = result;
  *(v2 + 1648) = result;
  *(v2 + 6472) = 0x3FF0000000000000;
  *(v2 + 6496) = 0x3FF0000000000000;
  *(v2 + 6504) = 0;
  *(v2 + 6512) = result;
  *(v2 + 6528) = result;
  *(v2 + 1664) = result;
  *(v2 + 1680) = result;
  *(v2 + 1696) = result;
  *(v2 + 6384) = result;
  *(v2 + 6416) = result;
  *(v2 + 6432) = result;
  *(v2 + 1712) = result;
  *(v2 + 1728) = result;
  *(v2 + 6288) = result;
  *(v2 + 6320) = result;
  *(v2 + 6352) = result;
  *(v2 + 6368) = result;
  *(v2 + 1744) = result;
  *(v2 + 1760) = result;
  *(v2 + 1776) = result;
  *(v2 + 1792) = result;
  *(v2 + 1808) = result;
  *(v2 + 6256) = result;
  *(v2 + 1824) = result;
  *(v2 + 1840) = result;
  *(v2 + 6160) = result;
  *(v2 + 6176) = result;
  *(v2 + 6064) = result;
  *(v2 + 6121) = *v20;
  *(v2 + 6152) = 1065353216;
  *(v2 + 6080) = result;
  *(v2 + 6096) = 0x3FF0000000000000;
  *(v2 + 6112) = 0x404E000000000000;
  *(v2 + 6120) = 1;
  *(v2 + 6124) = *&v20[3];
  *(v2 + 1856) = result;
  *(v2 + 1872) = result;
  *(v2 + 6000) = result;
  *(v2 + 6016) = result;
  *(v2 + 6040) = 0x3FF0000000000000;
  *(v2 + 6048) = result;
  *(v2 + 1888) = result;
  *(v2 + 1904) = result;
  *(v2 + 1920) = result;
  *(v2 + 5888) = result;
  *(v2 + 5904) = result;
  *(v2 + 5920) = result;
  *(v2 + 5792) = result;
  *(v2 + 5808) = result;
  *(v2 + 5824) = result;
  *(v2 + 5840) = result;
  *(v2 + 5856) = result;
  *(v2 + 5872) = result;
  *(v2 + 5696) = result;
  *(v2 + 5712) = result;
  *(v2 + 5728) = result;
  *(v2 + 5744) = result;
  *(v2 + 5760) = result;
  *(v2 + 5776) = result;
  *(v2 + 5600) = result;
  *(v2 + 5616) = result;
  *(v2 + 5632) = result;
  *(v2 + 5648) = result;
  *(v2 + 5664) = result;
  *(v2 + 5680) = result;
  *(v2 + 5504) = result;
  *(v2 + 5520) = result;
  *(v2 + 5536) = result;
  *(v2 + 5552) = result;
  *(v2 + 5568) = result;
  *(v2 + 5584) = result;
  *(v2 + 5408) = result;
  *(v2 + 5424) = result;
  *(v2 + 5440) = result;
  *(v2 + 5456) = result;
  *(v2 + 5472) = result;
  *(v2 + 5488) = result;
  *(v2 + 5312) = result;
  *(v2 + 5328) = result;
  *(v2 + 5344) = result;
  *(v2 + 5360) = result;
  *(v2 + 5376) = result;
  *(v2 + 5392) = result;
  *(v2 + 1936) = result;
  *(v2 + 1952) = result;
  *(v2 + 5256) = 0x3FF0000000000000;
  *(v2 + 5280) = 0x3FF0000000000000;
  *(v2 + 5288) = 0;
  *(v2 + 5296) = result;
  *(v2 + 1968) = result;
  *(v2 + 1984) = result;
  *(v2 + 5152) = result;
  *(v2 + 5168) = result;
  *(v2 + 5200) = result;
  *(v2 + 5216) = result;
  *(v2 + 2000) = result;
  *(v2 + 2016) = result;
  *(v2 + 2032) = result;
  *(v2 + 5072) = result;
  *(v2 + 5104) = result;
  *(v2 + 5136) = result;
  *(v2 + 2048) = result;
  *(v2 + 2064) = result;
  *(v2 + 2080) = result;
  *(v2 + 2096) = result;
  *(v2 + 4960) = result;
  *(v2 + 5040) = result;
  *(v2 + 2112) = result;
  *(v2 + 2128) = result;
  *(v2 + 4896) = 0x404E000000000000;
  *(v2 + 4904) = 0;
  *(v2 + 4944) = result;
  *(v2 + 4905) = *v19;
  *(v2 + 4908) = *&v19[3];
  *(v2 + 4936) = 1065353216;
  *(v2 + 2144) = result;
  *(v2 + 4824) = 0x3FF0000000000000;
  *(v2 + 4832) = result;
  *(v2 + 4848) = result;
  *(v2 + 4864) = result;
  *(v2 + 4880) = 0x3FF0000000000000;
  *(v2 + 2160) = result;
  *(v2 + 2176) = result;
  *(v2 + 2192) = result;
  *(v2 + 2208) = result;
  *(v2 + 4784) = result;
  *(v2 + 4800) = result;
  *(v2 + 4624) = result;
  *(v2 + 4640) = result;
  *(v2 + 4656) = result;
  *(v2 + 4672) = result;
  *(v2 + 4688) = result;
  *(v2 + 4704) = result;
  *(v2 + 4528) = result;
  *(v2 + 4544) = result;
  *(v2 + 4560) = result;
  *(v2 + 4576) = result;
  *(v2 + 4592) = result;
  *(v2 + 4608) = result;
  *(v2 + 4432) = result;
  *(v2 + 4448) = result;
  *(v2 + 4464) = result;
  *(v2 + 4480) = result;
  *(v2 + 4496) = result;
  *(v2 + 4512) = result;
  *(v2 + 4336) = result;
  *(v2 + 4352) = result;
  *(v2 + 4368) = result;
  *(v2 + 4384) = result;
  *(v2 + 4400) = result;
  *(v2 + 4416) = result;
  *(v2 + 4240) = result;
  *(v2 + 4256) = result;
  *(v2 + 4272) = result;
  *(v2 + 4288) = result;
  *(v2 + 4304) = result;
  *(v2 + 4320) = result;
  *(v2 + 4144) = result;
  *(v2 + 4160) = result;
  *(v2 + 4176) = result;
  *(v2 + 4192) = result;
  *(v2 + 4208) = result;
  *(v2 + 4224) = result;
  *(v2 + 4064) = 0x3FF0000000000000;
  *(v2 + 4072) = 0;
  *(v2 + 4080) = result;
  *(v2 + 4096) = result;
  *(v2 + 4112) = result;
  *(v2 + 4128) = result;
  *(v2 + 2224) = result;
  *(v2 + 2240) = result;
  *(v2 + 2256) = result;
  *(v2 + 3984) = result;
  *(v2 + 4000) = result;
  *(v2 + 4040) = 0x3FED73E5C0000000;
  *(v2 + 2272) = result;
  *(v2 + 2352) = result;
  *(v2 + 2368) = result;
  *(v2 + 3888) = result;
  *(v2 + 3920) = result;
  *(v2 + 3952) = result;
  *(v2 + 2392) = 0x3FF0000000000000;
  *(v2 + 2400) = result;
  *(v2 + 2416) = result;
  *(v2 + 2432) = result;
  *(v2 + 3824) = result;
  *(v2 + 3856) = result;
  *(v2 + 2448) = 0x3FF0000000000000;
  *(v2 + 2464) = 0xC018000000000000;
  *(v2 + 2472) = 0;
  *(v2 + 2473) = *v17;
  *(v2 + 2476) = *&v17[3];
  *(v2 + 2504) = 1053609165;
  *(v2 + 2608) = result;
  *(v2 + 3689) = *v18;
  *(v2 + 3692) = *&v18[3];
  *(v2 + 3720) = 1063675494;
  *(v2 + 3616) = result;
  *(v2 + 3632) = result;
  *(v2 + 3648) = result;
  *(v2 + 3664) = 0x3FF0000000000000;
  *(v2 + 3680) = 0x4040800000000000;
  *(v2 + 3688) = 0;
  *(v2 + 2704) = result;
  *(v2 + 2720) = result;
  *(v2 + 2768) = result;
  *(v2 + 3568) = result;
  *(v2 + 3584) = result;
  *(v2 + 3608) = 0x3FF0000000000000;
  *(v2 + 2784) = result;
  *(v2 + 2824) = 0x3FF0000000000000;
  *(v2 + 3440) = result;
  *(v2 + 3456) = result;
  *(v2 + 3472) = result;
  *(v2 + 3488) = result;
  *(v2 + 3344) = result;
  *(v2 + 3360) = result;
  *(v2 + 3376) = result;
  *(v2 + 3392) = result;
  *(v2 + 3408) = result;
  *(v2 + 3424) = result;
  *(v2 + 3248) = result;
  *(v2 + 3264) = result;
  *(v2 + 3280) = result;
  *(v2 + 3296) = result;
  *(v2 + 3312) = result;
  *(v2 + 3328) = result;
  *(v2 + 3152) = result;
  *(v2 + 3168) = result;
  *(v2 + 3184) = result;
  *(v2 + 3200) = result;
  *(v2 + 3216) = result;
  *(v2 + 3232) = result;
  *(v2 + 3056) = result;
  *(v2 + 3072) = result;
  *(v2 + 3088) = result;
  *(v2 + 3104) = result;
  *(v2 + 3120) = result;
  *(v2 + 3136) = result;
  *(v2 + 2960) = result;
  *(v2 + 2976) = result;
  *(v2 + 2992) = result;
  *(v2 + 3008) = result;
  *(v2 + 3024) = result;
  *(v2 + 3040) = result;
  *(v2 + 2864) = result;
  *(v2 + 2880) = result;
  *(v2 + 2896) = result;
  *(v2 + 2912) = result;
  *(v2 + 2928) = result;
  *(v2 + 2944) = result;
  *(v2 + 2832) = result;
  *(v2 + 2848) = 0x3FF0000000000000;
  *(v2 + 2856) = 0;
  *(v2 + 8432) = result;
  *(v2 + 8448) = result;
  *(v2 + 8480) = result;
  *(v2 + 8496) = result;
  *(v2 + 8512) = result;
  *(v2 + 8688) = result;
  *(v2 + 8784) = result;
  *(v2 + 8800) = result;
  *(v2 + 8848) = result;
  *(v2 + 8864) = result;
  *(v2 + 8912) = result;
  *(v2 + 8944) = result;
  *(v2 + 8960) = result;
  *(v2 + 8976) = result;
  *(v2 + 8992) = result;
  *(v2 + 9008) = result;
  *(v2 + 9024) = result;
  *(v2 + 9040) = result;
  *(v2 + 9056) = result;
  *(v2 + 9072) = result;
  *(v2 + 9088) = result;
  *(v2 + 9104) = result;
  *(v2 + 9120) = result;
  *(v2 + 9136) = result;
  *(v2 + 9152) = result;
  *(v2 + 9168) = result;
  *(v2 + 9184) = result;
  *(v2 + 9200) = result;
  *(v2 + 9216) = result;
  *(v2 + 9232) = result;
  *(v2 + 9248) = result;
  *(v2 + 9264) = result;
  *(v2 + 9280) = result;
  *(v2 + 9296) = result;
  *(v2 + 9312) = result;
  *(v2 + 9328) = result;
  *(v2 + 9344) = result;
  *(v2 + 9360) = result;
  *(v2 + 9376) = result;
  *(v2 + 9392) = result;
  *(v2 + 9408) = result;
  *(v2 + 9424) = result;
  *(v2 + 9440) = result;
  *(v2 + 9456) = result;
  *(v2 + 9472) = result;
  *(v2 + 9488) = result;
  *(v2 + 9504) = result;
  *(v2 + 9520) = result;
  *(v2 + 9536) = result;
  *(v2 + 9552) = result;
  *(v2 + 9568) = result;
  *(v2 + 9648) = result;
  *(v2 + 9664) = result;
  *(v2 + 9696) = result;
  *(v2 + 9712) = result;
  *(v2 + 9728) = result;
  *(v2 + 9904) = result;
  *(v2 + 9968) = result;
  *(v2 + 9984) = result;
  *(v2 + 10000) = result;
  *(v2 + 10016) = result;
  *(v2 + 10032) = result;
  *(v2 + 10064) = result;
  *(v2 + 10080) = result;
  *(v2 + 10128) = result;
  *(v2 + 10160) = result;
  *(v2 + 10176) = result;
  *(v2 + 10192) = result;
  *(v2 + 10208) = result;
  *(v2 + 10224) = result;
  *(v2 + 10240) = result;
  *(v2 + 10256) = result;
  *(v2 + 10272) = result;
  *(v2 + 10288) = result;
  *(v2 + 10304) = result;
  *(v2 + 10320) = result;
  *(v2 + 10336) = result;
  *(v2 + 10352) = result;
  *(v2 + 10368) = result;
  *(v2 + 10384) = result;
  *(v2 + 10400) = result;
  *(v2 + 10416) = result;
  *(v2 + 10432) = result;
  *(v2 + 10448) = result;
  *(v2 + 10464) = result;
  *(v2 + 10480) = result;
  *(v2 + 10496) = result;
  *(v2 + 10512) = result;
  *(v2 + 10528) = result;
  *(v2 + 10544) = result;
  *(v2 + 10560) = result;
  *(v2 + 10576) = result;
  *(v2 + 10592) = result;
  *(v2 + 10608) = result;
  *(v2 + 10624) = result;
  *(v2 + 10640) = result;
  *(v2 + 10656) = result;
  *(v2 + 10672) = result;
  *(v2 + 10688) = result;
  *(v2 + 10704) = result;
  *(v2 + 10720) = result;
  *(v2 + 10736) = result;
  *(v2 + 10752) = result;
  *(v2 + 10768) = result;
  *(v2 + 10784) = result;
  *(v2 + 10864) = result;
  *(v2 + 10880) = result;
  *(v2 + 10912) = result;
  *(v2 + 10928) = result;
  *(v2 + 10944) = result;
  *(v2 + 11120) = result;
  *(v2 + 11184) = result;
  *(v2 + 11200) = result;
  *(v2 + 11216) = result;
  *(v2 + 11232) = result;
  *(v2 + 11280) = result;
  *(v2 + 11296) = result;
  *(v2 + 11344) = result;
  *(v2 + 11376) = result;
  *(v2 + 11392) = result;
  *(v2 + 11408) = result;
  *(v2 + 11424) = result;
  *(v2 + 11440) = result;
  *(v2 + 11456) = result;
  *(v2 + 11472) = result;
  *(v2 + 11488) = result;
  *(v2 + 11504) = result;
  *(v2 + 11520) = result;
  *(v2 + 11536) = result;
  *(v2 + 11552) = result;
  *(v2 + 11568) = result;
  *(v2 + 11584) = result;
  *(v2 + 11600) = result;
  *(v2 + 11616) = result;
  *(v2 + 11632) = result;
  *(v2 + 11648) = result;
  *(v2 + 11664) = result;
  *(v2 + 11680) = result;
  *(v2 + 11696) = result;
  *(v2 + 11712) = result;
  *(v2 + 11728) = result;
  *(v2 + 11744) = result;
  *(v2 + 11760) = result;
  *(v2 + 11776) = result;
  *(v2 + 11792) = result;
  *(v2 + 11808) = result;
  *(v2 + 11824) = result;
  *(v2 + 11840) = result;
  *(v2 + 11856) = result;
  *(v2 + 11872) = result;
  *(v2 + 11888) = result;
  *(v2 + 11904) = result;
  *(v2 + 11920) = result;
  *(v2 + 11936) = result;
  *(v2 + 11952) = result;
  *(v2 + 11968) = result;
  *(v2 + 11984) = result;
  *(v2 + 12000) = result;
  *(v2 + 12080) = result;
  *(v2 + 12096) = result;
  *(v2 + 12128) = result;
  *(v2 + 12144) = result;
  *(v2 + 12160) = result;
  *(v2 + 416) = 0x3FF0000000000000;
  *(v2 + 424) = 0;
  *(v2 + 32) = 0xC056800000000000;
  *(v2 + 392) = 0x3FF0000000000000;
  *(v2 + 40) = 0;
  *(v2 + 72) = 1036831949;
  *(v2 + 8472) = 0x3FF0000000000000;
  *(v2 + 8553) = *v22;
  *(v2 + 8528) = 0x3FF0000000000000;
  *(v2 + 8544) = 0xC017FFFFFFFFFFE8;
  *(v2 + 8552) = 1;
  *(v2 + 8556) = *&v22[3];
  *(v2 + 8584) = 1053609165;
  *(v2 + 8904) = 0x3FF0000000000000;
  *(v2 + 8928) = 0x3FF0000000000000;
  *(v2 + 8936) = 0;
  *(v2 + 9688) = 0x3FF0000000000000;
  *(v2 + 9744) = 0x3FF0000000000000;
  *(v2 + 9760) = 0xC032000000000004;
  *(v2 + 9769) = *v23;
  *(v2 + 9768) = 1;
  *(v2 + 9772) = *&v23[3];
  *(v2 + 9800) = 1036831949;
  *(v2 + 10120) = 0x3FF0000000000000;
  *(v2 + 10144) = 0x3FF0000000000000;
  *(v2 + 10152) = 0;
  *(v2 + 10904) = 0x3FF0000000000000;
  *(v2 + 10960) = 0x3FF0000000000000;
  *(v2 + 10976) = 0xC056800000000000;
  *(v2 + 10984) = 1;
  *(v2 + 10985) = *v24;
  *(v2 + 10988) = *&v24[3];
  *(v2 + 11016) = 1036831949;
  *(v2 + 11336) = 0x3FF0000000000000;
  *(v2 + 11360) = 0x3FF0000000000000;
  *(v2 + 11368) = 0;
  *(v2 + 12120) = 0x3FF0000000000000;
  *(v2 + 12176) = 0x3FF0000000000000;
  return result;
}