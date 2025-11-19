uint64_t sub_2696CAAE8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323320, &qword_26985A4C8);
  OUTLINED_FUNCTION_8_9(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_16_0();
  MEMORY[0x28223BE20](v3);
  v5 = &v56 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323328, &qword_26985A4D0);
  OUTLINED_FUNCTION_8_9(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_16_0();
  MEMORY[0x28223BE20](v9);
  v11 = &v56 - v10;
  v12 = sub_269853CC4();
  v13 = OUTLINED_FUNCTION_8(v12);
  v58 = v14;
  v59 = v13;
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v13);
  v57 = &v56 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v20 = &v56 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323330, qword_26985B080);
  OUTLINED_FUNCTION_8_9(v21);
  v23 = *(v22 + 64);
  OUTLINED_FUNCTION_16_0();
  MEMORY[0x28223BE20](v24);
  v26 = &v56 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323338, &qword_26985A4D8);
  OUTLINED_FUNCTION_8_9(v27);
  v29 = *(v28 + 64);
  OUTLINED_FUNCTION_16_0();
  MEMORY[0x28223BE20](v30);
  v32 = &v56 - v31;
  v33 = sub_269853D14();
  v34 = OUTLINED_FUNCTION_8(v33);
  v36 = v35;
  v38 = *(v37 + 64);
  MEMORY[0x28223BE20](v34);
  v40 = &v56 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2696CA970(v26);
  v41 = sub_269853D94();
  if (__swift_getEnumTagSinglePayload(v26, 1, v41) == 1)
  {
    sub_2696CB05C(v26, &qword_280323330, qword_26985B080);
    v60 = 0u;
    v61 = 0u;
    v62 = 0;
LABEL_7:
    sub_2696CB05C(&v60, &qword_280323340, &qword_26985A4E0);
    __swift_storeEnumTagSinglePayload(v32, 1, 1, v33);
    goto LABEL_8;
  }

  sub_2696CB0DC(0xD000000000000016, 0x800000026987CBD0, &v60);
  OUTLINED_FUNCTION_3_14(v41);
  (*(v42 + 8))(v26, v41);
  if (!*(&v61 + 1))
  {
    goto LABEL_7;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323348, qword_26985A4E8);
  v43 = swift_dynamicCast();
  __swift_storeEnumTagSinglePayload(v32, v43 ^ 1u, 1, v33);
  if (__swift_getEnumTagSinglePayload(v32, 1, v33) == 1)
  {
LABEL_8:
    v46 = &qword_280323338;
    v47 = &qword_26985A4D8;
    v48 = v32;
LABEL_9:
    sub_2696CB05C(v48, v46, v47);
    return 0;
  }

  (*(v36 + 32))(v40, v32, v33);
  v44 = sub_269853D04();
  sub_2697ACD18(v44, v5);

  v45 = sub_269853CE4();
  if (__swift_getEnumTagSinglePayload(v5, 1, v45) == 1)
  {
    (*(v36 + 8))(v40, v33);
    sub_2696CB05C(v5, &qword_280323320, &qword_26985A4C8);
    __swift_storeEnumTagSinglePayload(v11, 1, 1, v59);
LABEL_12:
    v46 = &qword_280323328;
    v47 = &qword_26985A4D0;
    v48 = v11;
    goto LABEL_9;
  }

  sub_269853CD4();
  (*(v36 + 8))(v40, v33);
  OUTLINED_FUNCTION_3_14(v45);
  (*(v50 + 8))(v5, v45);
  v51 = v59;
  if (__swift_getEnumTagSinglePayload(v11, 1, v59) == 1)
  {
    goto LABEL_12;
  }

  v52 = v58;
  v53 = *(v58 + 32);
  v53(v20, v11, v51);
  v54 = v57;
  v53(v57, v20, v51);
  if ((*(v52 + 88))(v54, v51) != *MEMORY[0x277D5E5C8])
  {
    (*(v52 + 8))(v54, v51);
    return 0;
  }

  (*(v52 + 96))(v54, v51);
  result = *v54;
  v55 = v54[1];
  return result;
}

uint64_t sub_2696CB05C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_3_14(v4);
  (*(v5 + 8))(a1);
  return a1;
}

uint64_t OUTLINED_FUNCTION_4_12(uint64_t a1, uint64_t a2)
{

  return __swift_storeEnumTagSinglePayload(a1, a2, 1, v2);
}

uint64_t sub_2696CB0DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = sub_269853D84();
  v7 = result;
  v8 = 0;
  v9 = *(result + 16);
  for (i = result + 32; ; i += 40)
  {
    if (v9 == v8)
    {

      *(a3 + 32) = 0;
      *a3 = 0u;
      *(a3 + 16) = 0u;
      return result;
    }

    if (v8 >= *(v7 + 16))
    {
      break;
    }

    sub_2696A73F8(i, &v14);
    __swift_project_boxed_opaque_existential_1(&v14, v15);
    if (sub_269853BD4() == a1 && v11 == a2)
    {

LABEL_12:

      return sub_26968E5D4(&v14, a3);
    }

    v13 = sub_269855584();

    if (v13)
    {
      goto LABEL_12;
    }

    result = __swift_destroy_boxed_opaque_existential_0(&v14);
    ++v8;
  }

  __break(1u);
  return result;
}

uint64_t static TerminalElement.SemanticValue.fromIntentNodeValue(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_269853CC4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, a1, v4);
  if ((*(v5 + 88))(v8, v4) == *MEMORY[0x277D5E5D8])
  {
    (*(v5 + 96))(v8, v4);
    v9 = sub_269853CB4();
    (*(*(v9 - 8) + 32))(a2, v8, v9);
    v10 = a2;
    v11 = 0;
    v12 = v9;
  }

  else
  {
    (*(v5 + 8))(v8, v4);
    v12 = sub_269853CB4();
    v10 = a2;
    v11 = 1;
  }

  return __swift_storeEnumTagSinglePayload(v10, v11, 1, v12);
}

unint64_t sub_2696CB3AC()
{
  result = qword_280323350;
  if (!qword_280323350)
  {
    sub_269853CB4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280323350);
  }

  return result;
}

uint64_t sub_2696CB408()
{
  v0 = sub_2698543F4();
  if (v1)
  {
    sub_2696CB4B8();
    v2 = sub_2696CB4FC();
    v3 = [v2 localizedName];

    v0 = sub_269854A94();
  }

  return v0;
}

unint64_t sub_2696CB4B8()
{
  result = qword_280323358;
  if (!qword_280323358)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280323358);
  }

  return result;
}

id sub_2696CB4FC()
{
  v6[1] = *MEMORY[0x277D85DE8];
  v0 = sub_269854A64();

  v6[0] = 0;
  v1 = [swift_getObjCClassFromMetadata() bundleRecordWithApplicationIdentifier:v0 error:v6];

  if (v1)
  {
    v2 = v6[0];
  }

  else
  {
    v3 = v6[0];
    sub_269851BD4();

    swift_willThrow();
  }

  v4 = *MEMORY[0x277D85DE8];
  return v1;
}

uint64_t sub_2696CB5D4(uint64_t a1, uint64_t a2)
{
  if (sub_269852CD4() & 1) != 0 || (sub_269852CB4())
  {
    return 1;
  }

  return MEMORY[0x2821BABA8](a1, a2);
}

uint64_t sub_2696CB644@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v3 = sub_269851EF4();
  v4 = OUTLINED_FUNCTION_8(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_3_1();
  v11 = v10 - v9;
  v12 = sub_269853874();
  v13 = OUTLINED_FUNCTION_8(v12);
  v15 = v14;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_3_1();
  v20 = v19 - v18;
  v21 = sub_2698538B4();
  v22 = OUTLINED_FUNCTION_8(v21);
  v24 = v23;
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_3_1();
  v29 = (v28 - v27);
  (*(v24 + 16))(v28 - v27, v2, v21);
  v30 = *(v24 + 88);
  v31 = OUTLINED_FUNCTION_5_11();
  v33 = v32(v31);
  if (v33 == *MEMORY[0x277D5C140])
  {
    v34 = *(v24 + 96);
    v35 = OUTLINED_FUNCTION_5_11();
    v36(v35);
    (*(v15 + 32))(v20, v29, v12);
    sub_269853864();
    sub_2696D3C74();
    (*(v6 + 8))(v11, v3);
    return (*(v15 + 8))(v20, v12);
  }

  else if (v33 == *MEMORY[0x277D5C148])
  {
    v38 = *(v24 + 96);
    v39 = OUTLINED_FUNCTION_5_11();
    v40(v39);
    v41 = *v29;
    sub_2696D6C54();
    if (v42)
    {
      v43 = v42;
      sub_269854544();

      v44 = sub_269852474();
      v45 = a1;
      v46 = 0;
    }

    else
    {

      v44 = sub_269852474();
      v45 = a1;
      v46 = 1;
    }

    return __swift_storeEnumTagSinglePayload(v45, v46, 1, v44);
  }

  else
  {
    v47 = sub_269852474();
    __swift_storeEnumTagSinglePayload(a1, 1, 1, v47);
    v48 = *(v24 + 8);
    v49 = OUTLINED_FUNCTION_5_11();
    return v50(v49);
  }
}

id sub_2696CB944()
{
  v132[5] = *MEMORY[0x277D85DE8];
  v0 = sub_2698538A4();
  v1 = OUTLINED_FUNCTION_8(v0);
  v126 = v2;
  v127 = v1;
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_3_1();
  v128 = v6 - v5;
  OUTLINED_FUNCTION_2_13();
  v125 = sub_269852474();
  v7 = OUTLINED_FUNCTION_8(v125);
  v115 = v8;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_3_1();
  v112 = v12 - v11;
  OUTLINED_FUNCTION_2_13();
  v117 = sub_2698523C4();
  v13 = OUTLINED_FUNCTION_8(v117);
  v116 = v14;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_3_1();
  v114 = v18 - v17;
  OUTLINED_FUNCTION_2_13();
  v19 = sub_269851EF4();
  v20 = OUTLINED_FUNCTION_8(v19);
  v121 = v21;
  v122 = v20;
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_3_1();
  v118 = v25 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323360, &unk_26985AB80);
  v27 = *(*(v26 - 8) + 64);
  MEMORY[0x28223BE20](v26 - 8);
  v120 = &v112 - v28;
  OUTLINED_FUNCTION_2_13();
  v29 = sub_269853874();
  v30 = OUTLINED_FUNCTION_8(v29);
  v123 = v31;
  v124 = v30;
  v33 = *(v32 + 64);
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_3_1();
  v119 = v35 - v34;
  OUTLINED_FUNCTION_2_13();
  v36 = type metadata accessor for MediaNLIntent();
  v37 = *(*(v36 - 8) + 64);
  MEMORY[0x28223BE20](v36 - 8);
  OUTLINED_FUNCTION_3_1();
  v40 = v39 - v38;
  v41 = sub_269853F44();
  v42 = OUTLINED_FUNCTION_8(v41);
  v129 = v43;
  v130 = v42;
  v45 = *(v44 + 64);
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_3_1();
  v48 = v47 - v46;
  v49 = sub_2698538B4();
  v50 = OUTLINED_FUNCTION_8(v49);
  v52 = v51;
  v54 = *(v53 + 64);
  v55 = MEMORY[0x28223BE20](v50);
  v57 = &v112 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = MEMORY[0x28223BE20](v55);
  v113 = (&v112 - v59);
  v60 = MEMORY[0x28223BE20](v58);
  v62 = &v112 - v61;
  v63 = MEMORY[0x28223BE20](v60);
  v65 = &v112 - v64;
  MEMORY[0x28223BE20](v63);
  v67 = &v112 - v66;
  v68 = *(v52 + 16);
  v68(&v112 - v66, v131, v49);
  v69 = (*(v52 + 88))(v67, v49);
  if (v69 == *MEMORY[0x277D5C128])
  {
    v68(v65, v67, v49);
    OUTLINED_FUNCTION_4_13();
    v70(v65, v49);
    v72 = v129;
    v71 = v130;
    (*(v129 + 32))(v48, v65, v130);
    (*(v72 + 16))(v40, v48, v71);
    v73 = sub_2697A6488();
    sub_2696CC460(v40);
    (*(v72 + 8))(v48, v71);
LABEL_3:
    v74 = v67;
    goto LABEL_27;
  }

  if (v69 != *MEMORY[0x277D5C150])
  {
    if (v69 == *MEMORY[0x277D5C140])
    {
      v74 = v67;
      v68(v62, v67, v49);
      OUTLINED_FUNCTION_4_13();
      v82(v62, v49);
      v84 = v123;
      v83 = v124;
      v85 = v119;
      (*(v123 + 32))(v119, v62, v124);
      v86 = v118;
      sub_269853864();
      v87 = v120;
      sub_2696D3C74();
      (*(v121 + 8))(v86, v122);
      v88 = v125;
      if (__swift_getEnumTagSinglePayload(v87, 1, v125) != 1)
      {
        v105 = v114;
        sub_269852424();
        OUTLINED_FUNCTION_3_15(&v133);
        v106(v87, v88);
        v73 = sub_269851FD4();
        OUTLINED_FUNCTION_3_15(&v134);
        v107(v105, v117);
        (*(v84 + 8))(v85, v83);
        goto LABEL_27;
      }

      (*(v84 + 8))(v85, v83);
      sub_2696CC3F8(v87);
    }

    else
    {
      v74 = v67;
      if (v69 == *MEMORY[0x277D5C148])
      {
        v96 = v113;
        v68(v113, v67, v49);
        OUTLINED_FUNCTION_4_13();
        v97(v96, v49);
        v98 = *v96;
        sub_2696D6C54();
        if (v99)
        {
          v100 = v99;
          v101 = v112;
          sub_269854544();

          v102 = v114;
          sub_269852424();
          OUTLINED_FUNCTION_3_15(&v133);
          v103(v101, v125);
          v73 = sub_269851FD4();

          OUTLINED_FUNCTION_3_15(&v134);
          v104(v102, v117);
          goto LABEL_27;
        }
      }
    }

LABEL_26:
    v73 = 0;
    goto LABEL_27;
  }

  v68(v57, v67, v49);
  OUTLINED_FUNCTION_4_13();
  v75(v57, v49);
  v77 = v126;
  v76 = v127;
  v78 = v128;
  (*(v126 + 32))(v128, v57, v127);
  if (sub_269853884() == 0xD00000000000002DLL && 0x800000026987A0A0 == v79)
  {
  }

  else
  {
    v81 = sub_269855584();

    if ((v81 & 1) == 0)
    {
      (*(v77 + 8))(v78, v76);
      v73 = 0;
      goto LABEL_3;
    }
  }

  v74 = v67;
  if (!sub_269853894())
  {
LABEL_25:
    (*(v77 + 8))(v78, v76);
    goto LABEL_26;
  }

  v89 = objc_opt_self();
  v90 = sub_2698549D4();
  v132[0] = 0;
  v91 = [v89 dataWithJSONObject:v90 options:0 error:v132];

  v92 = v132[0];
  if (!v91)
  {
    v108 = v92;
    v109 = sub_269851BD4();

    swift_willThrow();

    goto LABEL_25;
  }

  v93 = sub_269851C94();
  v95 = v94;

  if (qword_280322440 != -1)
  {
    swift_once();
  }

  sub_2696CC3A4();
  sub_269851A84();
  sub_2696C1F3C(v93, v95);

  (*(v77 + 8))(v128, v76);
  if (v132[1])
  {
    v73 = v132[0];
  }

  else
  {
    v73 = 0;
  }

LABEL_27:
  (*(v52 + 8))(v74, v49);
  v110 = *MEMORY[0x277D85DE8];
  return v73;
}

unint64_t sub_2696CC3A4()
{
  result = qword_280323368;
  if (!qword_280323368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280323368);
  }

  return result;
}

uint64_t sub_2696CC3F8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323360, &unk_26985AB80);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2696CC460(uint64_t a1)
{
  v2 = type metadata accessor for MediaNLIntent();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_2696CC4EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v10 = [objc_allocWithZone(MEMORY[0x277D4BFE0]) init];
  sub_2696BAF34(a1, a2, v10);
  v11 = [objc_allocWithZone(MEMORY[0x277D4C168]) init];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323020, qword_26985AEC0);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_2698590C0;
  *(v12 + 32) = v10;
  v13 = v10;
  sub_2696CC814(v12, v11, &qword_280323370, 0x277D4BFE0, &selRef_setFormatted_text_);
  if (a4)
  {

    MEMORY[0x26D645A60](32, 0xE100000000000000);

    sub_2696CC898(a1, a2, v13);
    v14 = [objc_allocWithZone(MEMORY[0x277D4BFE0]) init];
    sub_2696CC898(a3, a4, v14);
    v15 = [objc_allocWithZone(MEMORY[0x277D4C170]) init];
    [v15 setStyle_];
    [v14 setText:v15 encapsulation:?];
    v24 = sub_2696CC8FC(v11);
    if (v24)
    {
      v16 = v14;
      MEMORY[0x26D645B90]();
      if (*((v24 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v24 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_269854CD4();
      }

      sub_269854CF4();
      sub_26969329C(0, &qword_280323370, 0x277D4BFE0);
      v17 = sub_269854CA4();

      [v11 setFormatted:v17 text:?];
    }

    else
    {
      [v11 setFormatted:0 text:?];
    }
  }

  else
  {
  }

  if ((a6 & 1) == 0)
  {
    v18 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
    [v11 setLine:v18 limit:?];
  }

  v19 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_2698590C0;
  *(v20 + 32) = v11;
  sub_2696CC814(v20, v19, &qword_280323378, 0x277D4C168, &selRef_setText_elements_);

  return v19;
}

void sub_2696CC814(uint64_t a1, void *a2, unint64_t *a3, uint64_t *a4, SEL *a5)
{
  sub_26969329C(0, a3, a4);
  v7 = sub_269854CA4();

  [a2 *a5];
}

void sub_2696CC898(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_269854A64();

  [a3 setText_];
}

uint64_t sub_2696CC8FC(void *a1)
{
  v1 = [a1 formatted_text];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  sub_26969329C(0, &qword_280323370, 0x277D4BFE0);
  v3 = sub_269854CB4();

  return v3;
}

id sub_2696CC96C(uint64_t a1, uint64_t a2, char a3)
{
  v6 = [objc_allocWithZone(MEMORY[0x277D4C180]) init];
  sub_2696CCBC4(a1, a2, v6);
  if (a3)
  {
    v7 = [objc_allocWithZone(MEMORY[0x277D4BF60]) init];
    sub_26969329C(0, &qword_2815718C0, 0x277CCABB0);
    v8 = sub_269855044();
    [v7 setWidth_];

    v9 = sub_269855044();
    [v7 setHeight_];

    [v6 setAspect:v7 ratio:?];
    [v6 setSizing:2 mode:?];
  }

  v10 = [objc_allocWithZone(MEMORY[0x277D4BFF8]) init];
  [v10 setUrl_];
  v11 = [objc_allocWithZone(MEMORY[0x277D4BFF0]) init];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323020, qword_26985AEC0);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_2698590C0;
  *(v12 + 32) = v10;
  v13 = v10;
  sub_2696CC814(v12, v11, &qword_280323388, 0x277D4BFF8, &selRef_setSources_);
  v14 = [objc_allocWithZone(MEMORY[0x277D4C188]) init];
  [v14 setImage:v11 element:?];
  v15 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_2698590C0;
  *(v16 + 32) = v14;
  sub_2696CC814(v16, v15, &qword_280323380, 0x277D4C188, &selRef_setVisual_elements_);

  return v15;
}

void sub_2696CCBC4(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_269854A64();

  [a3 setUrl_];
}

uint64_t sub_2696CCC28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[8] = a2;
  v4[9] = a4;
  v4[7] = a1;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323030, &qword_26985BAE0) - 8) + 64) + 15;
  v4[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2696CCCC8, 0, 0);
}

uint64_t sub_2696CCCC8()
{
  v2 = *(v0 + 56);
  v1 = *(v0 + 64);
  v3 = [objc_allocWithZone(MEMORY[0x277D4C130]) init];
  *(v0 + 88) = v3;
  sub_26977E46C(v2);
  *(v0 + 96) = sub_26969329C(0, &qword_280323390, 0x277D4C178);
  OUTLINED_FUNCTION_0_15();
  v8 = sub_2696CC4EC(v4, v5, v6, v7, 0, 1);
  [v3 setText:v8 1:?];

  *(v0 + 48) = 0;
  *(v0 + 32) = 0u;
  *(v0 + 16) = 0u;
  v9 = swift_task_alloc();
  *(v0 + 104) = v9;
  *v9 = v0;
  v9[1] = sub_2696CCE14;
  v10 = *(v0 + 72);
  v11 = *(v0 + 56);

  return sub_2696CE508(v0 + 16, v1);
}

uint64_t sub_2696CCE14(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(*v2 + 104);
  v6 = *v2;
  *(v3 + 112) = a1;
  *(v3 + 120) = a2;

  sub_2696CD4FC(v3 + 16);

  return MEMORY[0x2822009F8](sub_2696CCF1C, 0, 0);
}

uint64_t sub_2696CCF1C()
{
  v1 = *(v0 + 120);
  if (v1)
  {
    v2 = sub_269831FBC(*(v0 + 56));
    v4 = *(v0 + 112);
    v5 = *(v0 + 96);
    if (v3)
    {
      v6 = v2;
      v7 = v3;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323020, qword_26985AEC0);
      v8 = swift_allocObject();
      *(v8 + 16) = xmmword_2698590C0;
      v9 = v4;
      v10 = v1;
      v11 = v6;
      v12 = v7;
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323020, qword_26985AEC0);
      v8 = swift_allocObject();
      *(v8 + 16) = xmmword_2698590C0;
      OUTLINED_FUNCTION_0_15();
    }

    *(v8 + 32) = sub_2696CC4EC(v9, v10, v11, v12, 0, 1);
    sub_2696CD5DC(v8, *(v0 + 88));
  }

  v13 = *(v0 + 56);
  sub_2696CEF80();
  if (v15)
  {
    v16 = v14;
    v17 = v15;
    v18 = *(v0 + 88);
    sub_26969329C(0, &qword_2803233A8, 0x277D4C190);
    v19 = sub_2696CC96C(v16, v17, 1);
    [v18 setThumbnail_];
  }

  sub_2696CD57C(*(v0 + 56), &selRef_entityExperienceUrl);
  if (v20)
  {
    v21 = *(v0 + 56);
    v22 = [objc_allocWithZone(MEMORY[0x277D4C230]) init];
    sub_26977E46C(v21);
    if (v23)
    {
      v24 = sub_269854A64();
    }

    else
    {
      v24 = 0;
    }

    v25 = *(v0 + 80);
    [v22 setTitle_];

    sub_269851C64();

    v26 = sub_269851C74();
    v27 = 0;
    if (__swift_getEnumTagSinglePayload(v25, 1, v26) != 1)
    {
      v28 = *(v0 + 80);
      v27 = sub_269851C24();
      (*(*(v26 - 8) + 8))(v28, v26);
    }

    v29 = *(v0 + 88);
    [v22 setUrlValue_];

    [v22 setSource_];
    [v22 setType_];
    v30 = [objc_allocWithZone(MEMORY[0x277D4C648]) init];
    [v30 setCard_];
    [v29 setCommand_];
  }

  v31 = *(v0 + 56);
  v32 = [objc_allocWithZone(MEMORY[0x277D4C700]) init];
  sub_26977E470(v31);
  if (v33)
  {
    v34 = sub_269854A64();
  }

  else
  {
    v34 = 0;
  }

  v35 = *(v0 + 56);
  [v32 setWatchListIdentifier_];

  if ([v35 type] == 4)
  {
    v36 = 4;
  }

  else
  {
    if ([*(v0 + 56) type] != 1)
    {
      goto LABEL_23;
    }

    v36 = 3;
  }

  [v32 setType_];
LABEL_23:
  v37 = *(v0 + 88);
  v38 = *(v0 + 56);
  v39 = [objc_allocWithZone(MEMORY[0x277D4C708]) init];
  [v39 setWatchListItem_];
  v40 = v39;
  sub_2696C97B8(0x775F6F745F776F68, 0xEC00000068637461, v40, &selRef_setCardSectionDetail_);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323020, qword_26985AEC0);
  v41 = swift_allocObject();
  *(v41 + 16) = xmmword_26985A540;
  *(v41 + 32) = v37;
  *(v41 + 40) = v40;
  v61 = v41;
  v42 = v37;
  sub_2696CD57C(v38, &selRef_summary);
  if (v43)
  {
    v44 = *(v0 + 96);
    v45 = [objc_allocWithZone(MEMORY[0x277D4C000]) init];
    OUTLINED_FUNCTION_0_15();
    v50 = sub_2696CC4EC(v46, v47, v48, v49, 4, 0);
    [v45 setText:v50 1:?];

    MEMORY[0x26D645B90]();
    if (*((v61 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v61 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_269854CD4();
    }

    sub_269854CF4();
  }

  v51 = *(v0 + 80);
  v52 = *(v0 + 88);
  sub_26969329C(0, &qword_2803233A0, 0x277D47200);
  OUTLINED_FUNCTION_0_15();
  v53 = sub_269854EF4();

  v54 = *MEMORY[0x277D47C68];
  v55 = sub_269854A94();
  v57 = v56;
  v58 = v53;
  sub_2696C97B8(v55, v57, v58, &selRef_setItemType_);
  sub_2696C97B8(0xD000000000000019, 0x800000026987AF00, v58, &selRef_setResponseViewId_);

  v59 = *(v0 + 8);

  return v59(v58);
}

uint64_t sub_2696CD4FC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323398, &unk_26985BAF0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2696CD57C(void *a1, SEL *a2)
{
  v2 = [a1 *a2];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = sub_269854A94();

  return v4;
}

void sub_2696CD5DC(uint64_t a1, void *a2)
{
  sub_26969329C(0, &qword_280323390, 0x277D4C178);
  v3 = sub_269854CA4();

  [a2 setText:v3 2:?];
}

id sub_2696CD66C(char a1)
{
  v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  if (a1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280322F90, &qword_269858E10);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_2698580D0;
    v4 = *MEMORY[0x277D48B28];
    v5 = sub_269854A94();
    v6 = MEMORY[0x277D837D0];
    *(v3 + 56) = MEMORY[0x277D837D0];
    *(v3 + 32) = v5;
    *(v3 + 40) = v7;
    v8 = *MEMORY[0x277D48B20];
    v9 = sub_269854A94();
    *(v3 + 88) = v6;
    *(v3 + 64) = v9;
    *(v3 + 72) = v10;
    sub_2696CD72C(v3, v2);
  }

  return v2;
}

void sub_2696CD72C(uint64_t a1, void *a2)
{
  v3 = sub_269854CA4();

  [a2 setLaunchOptions_];
}

void sub_2696CD79C(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323030, &qword_26985BAE0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = v20 - v4;
  v6 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v7 = sub_2697C6B44(a1);
  if (v7)
  {
    v8 = v7;
    v9 = sub_26975004C(v7);
    for (i = 0; ; ++i)
    {
      if (v9 == i)
      {

        return;
      }

      if ((v8 & 0xC000000000000001) != 0)
      {
        v11 = MEMORY[0x26D646120](i, v8);
      }

      else
      {
        if (i >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_21;
        }

        v11 = *(v8 + 8 * i + 32);
      }

      v12 = v11;
      if (__OFADD__(i, 1))
      {
        __break(1u);
LABEL_21:
        __break(1u);
        goto LABEL_22;
      }

      if ([v11 type] == 2)
      {
        break;
      }
    }

    [v6 setPixelWidth_];
    [v6 setPixelHeight_];
    [v6 setScaleFactor_];
    v13 = sub_2696D2734(v12);
    if (v14)
    {
      v20[4] = v13;
      v20[5] = v14;
      v20[2] = 8218235;
      v20[3] = 0xE300000000000000;
      v15 = sub_2696D2728(v12);
      if (v16)
      {
        v20[0] = v15;
        v20[1] = v16;
        sub_269693054();
        sub_269855104();

        v17 = sub_269854A64();

        goto LABEL_17;
      }

LABEL_22:
      __break(1u);
      return;
    }

    v17 = 0;
LABEL_17:
    [v6 setUrlFormatString_];

    sub_2696D2010(0, 0, v5, 711.0, 400.0);
    v18 = sub_269851C74();
    v19 = 0;
    if (__swift_getEnumTagSinglePayload(v5, 1, v18) != 1)
    {
      v19 = sub_269851C24();
      (*(*(v18 - 8) + 8))(v5, v18);
    }

    [v6 setResourceUrl_];
  }

  else
  {
  }
}

id sub_2696CDACC(void *a1)
{
  v2 = sub_269851C74();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  sub_2696CDCFC();
  v8 = v7;
  v9 = a1;
  sub_2696CD79C(v9);
  v11 = v10;
  OUTLINED_FUNCTION_0_16(v10, sel_setImage_);

  v12 = sub_26977E46C(v9);
  if (v13)
  {
    v14 = sub_269854A64();
  }

  else
  {
    v14 = 0;
  }

  OUTLINED_FUNCTION_0_16(v12, sel_setLoadingText_);

  v15 = sub_26977E470(v9);
  if (v16)
  {
    v17 = sub_269854A64();
  }

  else
  {
    v17 = 0;
  }

  OUTLINED_FUNCTION_0_16(v15, sel_setUtsId_);

  v18 = [v9 detailsUrl];
  v19 = v18;
  if (v18)
  {
    sub_269851C44();

    v19 = sub_269851C24();
    v18 = (*(v3 + 8))(v6, v2);
  }

  OUTLINED_FUNCTION_0_16(v18, sel_setUrl_);

  [v8 setUserDriven_];
  [v8 setIsEvod_];
  v20 = sub_2696CF28C([v9 type]);
  sub_2696CDD40(v20, v21, v8);

  return v8;
}

unint64_t sub_2696CDCFC()
{
  result = qword_2803233B0;
  if (!qword_2803233B0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2803233B0);
  }

  return result;
}

void sub_2696CDD40(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_269854A64();

  [a3 setContentType_];
}

id OUTLINED_FUNCTION_0_16(uint64_t a1, const char *a2)
{

  return [v2 a2];
}

id sub_2696CDDBC(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, char a5)
{
  v10 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  if (a2)
  {
    v11 = [objc_allocWithZone(MEMORY[0x277D4C598]) init];
    sub_2696CC898(a1, a2, v11);
    [v10 setTitle_];
  }

  if (a3)
  {
    v12 = a3;
    [v12 setCornerRoundingStyle_];
    [v12 setScale_];
    [v10 setThumbnail_];
  }

  if ((a5 & 1) == 0)
  {
    v13 = [objc_allocWithZone(MEMORY[0x277D4C598]) init];
    sub_2696D386C(a4);
    v14 = v13;
    OUTLINED_FUNCTION_0_17();
    sub_269830114();
    v16 = v15;

    if (v16)
    {
      v17 = sub_269854A64();
    }

    else
    {
      v17 = 0;
    }

    [v14 setText_];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323020, qword_26985AEC0);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_2698590C0;
    *(v18 + 32) = v14;
    sub_2696CE37C(v18, v10);
  }

  [v10 setSeparatorStyle_];

  return v10;
}

id sub_2696CDFA4(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323030, &qword_26985BAE0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v30 - v4;
  v6 = sub_269851C74();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v30 - v12;
  sub_2696CE400(a1);
  if (v14 >> 60 == 15)
  {
    v15 = [a1 _uri];
    if (!v15)
    {
      return 0;
    }

    v16 = v15;
    sub_269851C44();

    (*(v7 + 32))(v13, v11, v6);
    (*(v7 + 16))(v5, v13, v6);
    __swift_storeEnumTagSinglePayload(v5, 0, 1, v6);
    v17 = objc_allocWithZone(MEMORY[0x277D4C6B8]);
    v18 = sub_2696CE2D0(v5);
    (*(v7 + 8))(v13, v6);
    if (!v18)
    {
      return 0;
    }

LABEL_7:
    v19 = v18;
    sub_26969329C(0, &qword_2803233B8, 0x277D4C3B0);
    [a1 _imageSize];
    v28 = v27;
    [a1 _imageSize];
    [v19 setSize_];

    return v19;
  }

  sub_26969329C(0, &qword_2803233B8, 0x277D4C3B0);
  v20 = OUTLINED_FUNCTION_0_17();
  sub_2696CE464(v20, v21);
  v22 = OUTLINED_FUNCTION_0_17();
  result = sub_2696CE250(v22, v23);
  if (result)
  {
    v18 = result;
    v25 = OUTLINED_FUNCTION_0_17();
    sub_2696CE4BC(v25, v26);
    goto LABEL_7;
  }

  __break(1u);
  return result;
}

id sub_2696CE250(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 == 15)
  {
    v2 = 0;
  }

  else
  {
    v2 = sub_269851C84();
    sub_2696CE4BC(a1, a2);
  }

  v5 = [swift_getObjCClassFromMetadata() imageWithData_];

  return v5;
}

id sub_2696CE2D0(uint64_t a1)
{
  v2 = v1;
  v4 = sub_269851C74();
  v5 = 0;
  if (__swift_getEnumTagSinglePayload(a1, 1, v4) != 1)
  {
    v5 = sub_269851C24();
    (*(*(v4 - 8) + 8))(a1, v4);
  }

  v6 = [v2 initWithURL_];

  return v6;
}

void sub_2696CE37C(uint64_t a1, void *a2)
{
  sub_26969329C(0, &qword_2803233C0, 0x277D4C598);
  v3 = sub_269854CA4();

  [a2 setDescriptions_];
}

uint64_t sub_2696CE400(void *a1)
{
  v1 = [a1 _imageData];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_269851C94();

  return v3;
}

uint64_t sub_2696CE464(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_2696CE4BC(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_2696C1F3C(a1, a2);
  }

  return a1;
}

double sub_2696CE4DC(double a1, double a2)
{
  v2 = 624.0 / a2;
  if (531.0 / a1 < 624.0 / a2)
  {
    v2 = 531.0 / a1;
  }

  return v2 * a1;
}

uint64_t sub_2696CE508(uint64_t a1, uint64_t a2)
{
  v3[20] = a2;
  v3[21] = v2;
  v3[19] = a1;
  v4 = sub_2698548D4();
  v3[22] = v4;
  OUTLINED_FUNCTION_5_12(v4);
  v3[23] = v5;
  v7 = *(v6 + 64);
  v3[24] = OUTLINED_FUNCTION_4_7();
  v8 = sub_269851E84();
  v3[25] = v8;
  OUTLINED_FUNCTION_5_12(v8);
  v3[26] = v9;
  v11 = *(v10 + 64);
  v3[27] = OUTLINED_FUNCTION_4_7();
  v12 = sub_269851B94();
  v3[28] = v12;
  OUTLINED_FUNCTION_5_12(v12);
  v3[29] = v13;
  v15 = *(v14 + 64);
  v3[30] = OUTLINED_FUNCTION_4_7();
  v16 = sub_269851D34();
  v3[31] = v16;
  OUTLINED_FUNCTION_5_12(v16);
  v3[32] = v17;
  v19 = *(v18 + 64);
  v3[33] = OUTLINED_FUNCTION_4_7();

  return MEMORY[0x2822009F8](sub_2696CE6A0, 0, 0);
}

uint64_t sub_2696CE6A0()
{
  if ([*(v0 + 168) type] == 4)
  {
    if (*(v0 + 160))
    {
      v1 = *(v0 + 168);
      v2 = *(v0 + 160);

      sub_269830930(v1);
    }

    goto LABEL_8;
  }

  sub_2696ADDE8(*(v0 + 152), v0 + 112, &qword_280323398, &unk_26985BAF0);
  if (!*(v0 + 136))
  {
    sub_269698048(v0 + 112, &qword_280323398, &unk_26985BAF0);
LABEL_8:
    OUTLINED_FUNCTION_12_8();

    v21 = OUTLINED_FUNCTION_10_7();

    return v22(v21);
  }

  v3 = *(v0 + 168);
  v4 = *(v0 + 128);
  *(v0 + 72) = *(v0 + 112);
  *(v0 + 88) = v4;
  *(v0 + 104) = *(v0 + 144);
  v5 = [v3 releaseDate];
  if (v5)
  {
    v6 = v5;
    v7 = *(v0 + 264);
    v8 = *(v0 + 240);
    v40 = *(v0 + 256);
    v41 = *(v0 + 248);
    v9 = *(v0 + 232);
    v39 = *(v0 + 224);
    v10 = *(v0 + 208);
    v11 = *(v0 + 216);
    v42 = *(v0 + 200);
    sub_269851D14();

    sub_269851E54();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803232E8, &unk_26985A3A0);
    v12 = sub_269851E64();
    OUTLINED_FUNCTION_8(v12);
    v14 = v13;
    v16 = *(v15 + 72);
    v17 = (*(v13 + 80) + 32) & ~*(v13 + 80);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_269857710;
    (*(v14 + 104))(v18 + v17, *MEMORY[0x277CC9988], v12);
    sub_2698318AC();
    sub_269851E34();

    (*(v10 + 8))(v11, v42);
    v43 = sub_269851B84();
    v20 = v19;
    (*(v9 + 8))(v8, v39);
    (*(v40 + 8))(v7, v41);
  }

  else
  {
    v43 = 0;
    v20 = 1;
  }

  v24 = [*(v0 + 168) seasonCount];
  v25 = v24;
  if (v24)
  {
    v26 = [v24 integerValue];
  }

  else
  {
    v26 = 0;
  }

  v27 = *(v0 + 168);
  v28 = sub_269831F5C(v27);
  v30 = v29;
  *(v0 + 272) = v29;
  sub_269831FBC(v27);
  if (v31 && (v32 = *(v0 + 168), , sub_269831FC8(v32), v33))
  {

    v34 = 1;
  }

  else
  {
    v34 = 0;
  }

  v35 = *(v0 + 168);
  v36 = [v35 type];
  v37 = [v35 type] == 2 || objc_msgSend(*(v0 + 168), sel_type) == 3;
  *(v0 + 304) = v20 & 1;
  *(v0 + 312) = v25 == 0;
  *(v0 + 16) = v43;
  *(v0 + 24) = *(v0 + 304);
  *(v0 + 32) = v26;
  *(v0 + 40) = *(v0 + 312);
  *(v0 + 48) = v28;
  *(v0 + 56) = v30;
  *(v0 + 64) = v34;
  *(v0 + 65) = v36 == 1;
  *(v0 + 66) = v37;
  v38 = swift_task_alloc();
  *(v0 + 280) = v38;
  *v38 = v0;
  v38[1] = sub_2696CEAF8;

  return sub_2696C0164();
}

uint64_t sub_2696CEAF8(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 280);
  v6 = *v2;
  *(*v2 + 288) = v1;

  if (v1)
  {
    v7 = sub_2696CED88;
  }

  else
  {
    v8 = *(v4 + 272);
    *(v4 + 296) = a1;

    v7 = sub_2696CEC28;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_2696CEC28()
{
  v1 = *(v0 + 296);
  v2 = [v1 dialog];

  sub_2696D1EC4();
  v3 = sub_269854CB4();

  if (sub_26975004C(v3))
  {
    sub_269750050(0);
    if ((v3 & 0xC000000000000001) != 0)
    {
      v4 = MEMORY[0x26D646120](0, v3);
    }

    else
    {
      v4 = *(v3 + 32);
    }

    v5 = v4;

    v6 = [v5 fullPrint];

    sub_269854A94();
    sub_2696D1E70(v0 + 72);
  }

  else
  {
    sub_2696D1E70(v0 + 72);
  }

  OUTLINED_FUNCTION_12_8();

  v7 = OUTLINED_FUNCTION_10_7();

  return v8(v7);
}

uint64_t sub_2696CED88()
{
  v1 = v0[34];

  if (qword_280322700 != -1)
  {
    OUTLINED_FUNCTION_0_4();
  }

  v2 = v0[36];
  v4 = v0[23];
  v3 = v0[24];
  v5 = v0[22];
  v6 = __swift_project_value_buffer(v5, qword_281571B38);
  (*(v4 + 16))(v3, v6, v5);
  v7 = v2;
  v8 = sub_2698548B4();
  v9 = sub_269854F14();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = v0[36];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v11 = 138412290;
    v13 = v10;
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 4) = v14;
    *v12 = v14;
    _os_log_impl(&dword_269684000, v8, v9, "Unable to craft metadata: %@", v11, 0xCu);
    sub_269698048(v12, &qword_280324D50, &qword_26985D530);
    OUTLINED_FUNCTION_10();
    OUTLINED_FUNCTION_10();
  }

  v15 = v0[36];
  v17 = v0[23];
  v16 = v0[24];
  v18 = v0[22];

  (*(v17 + 8))(v16, v18);
  sub_2696D1E70((v0 + 9));
  v19 = v0[33];
  v20 = v0[30];
  v21 = v0[27];
  v22 = v0[24];

  v23 = v0[1];

  return v23(0, 0);
}

void sub_2696CEF80()
{
  v1 = sub_2697C6B44(v0);
  v2 = v1;
  if (v1)
  {
    v3 = sub_26975004C(v1);
    for (i = 0; ; ++i)
    {
      if (v3 == i)
      {

        return;
      }

      if ((v2 & 0xC000000000000001) != 0)
      {
        v5 = MEMORY[0x26D646120](i, v2);
      }

      else
      {
        if (i >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_24;
        }

        v5 = *(v2 + 8 * i + 32);
      }

      v6 = v5;
      if (__OFADD__(i, 1))
      {
        __break(1u);
LABEL_24:
        __break(1u);
        return;
      }

      if ([v5 type] == 2)
      {
        break;
      }
    }

    v7 = [v6 width];
    if (v7)
    {
      v8 = v7;
      v9 = [v6 height];
      if (v9)
      {
        v10 = v9;
        v11 = sub_2696D2728(v6);
        if (v12)
        {
          v13 = v11;
          v14 = v12;
          sub_2696D2734(v6);
          if (v15)
          {
            v16 = [v8 stringValue];
            v17 = sub_269854A94();
            v54 = v13;
            v19 = v18;

            v57 = v17;
            v20 = sub_269693054();
            v21 = MEMORY[0x277D837D0];
            OUTLINED_FUNCTION_7_14(v20, v22, v23, v24, v25, v26, v27, v28, MEMORY[0x277D837D0], v20, v20, v20, v51, v54, v57, v19, 123);
            OUTLINED_FUNCTION_4_14();
            sub_269855104();

            v29 = [v10 stringValue];
            v30 = sub_269854A94();
            v32 = v31;

            OUTLINED_FUNCTION_7_14(v33, v34, v35, v36, v37, v38, v39, v40, v49, v50, v20, v20, v52, v55, v30, v32, 123);
            OUTLINED_FUNCTION_4_14();
            sub_269855104();

            OUTLINED_FUNCTION_7_14(v41, v42, v43, v44, v45, v46, v47, v48, v21, v20, v20, v20, v53, v56, v56, v14, 123);
            OUTLINED_FUNCTION_4_14();
            sub_269855104();
          }
        }

        else
        {
        }
      }

      else
      {
      }
    }

    else
    {
    }
  }
}

uint64_t sub_2696CF28C(unint64_t a1)
{
  if (a1 >= 5)
  {
    result = sub_2698555D4();
    __break(1u);
  }

  else
  {
    v2 = **(&unk_279C6F170 + a1);

    return sub_269854A94();
  }

  return result;
}

id sub_2696CF2E8(char *a1)
{
  v142 = sub_269852084();
  v2 = OUTLINED_FUNCTION_8(v142);
  v140 = v3;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v2);
  v135 = &v124 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  OUTLINED_FUNCTION_2_13();
  v138 = sub_2698548D4();
  v7 = OUTLINED_FUNCTION_8(v138);
  v136 = v8;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_12();
  v137 = v11 - v12;
  MEMORY[0x28223BE20](v13);
  v124 = &v124 - v14;
  OUTLINED_FUNCTION_2_13();
  v15 = sub_269852304();
  v16 = OUTLINED_FUNCTION_8(v15);
  v127 = v17;
  v128 = v16;
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_12();
  v125 = v20 - v21;
  MEMORY[0x28223BE20](v22);
  v126 = &v124 - v23;
  OUTLINED_FUNCTION_2_13();
  v24 = sub_269852234();
  v25 = OUTLINED_FUNCTION_8(v24);
  v131 = v26;
  v132 = v25;
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_12();
  v129 = v29 - v30;
  MEMORY[0x28223BE20](v31);
  v130 = &v124 - v32;
  OUTLINED_FUNCTION_2_13();
  v33 = sub_2698521B4();
  v34 = OUTLINED_FUNCTION_8(v33);
  v133 = v35;
  v134 = v34;
  v37 = *(v36 + 64);
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_12();
  v40 = v38 - v39;
  MEMORY[0x28223BE20](v41);
  v43 = &v124 - v42;
  v44 = sub_269852004();
  v45 = OUTLINED_FUNCTION_8(v44);
  v47 = v46;
  v49 = *(v48 + 64);
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_12();
  v52 = v50 - v51;
  MEMORY[0x28223BE20](v53);
  v55 = &v124 - v54;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803233C8, &unk_26985E990);
  v57 = *(*(v56 - 8) + 64);
  MEMORY[0x28223BE20](v56 - 8);
  OUTLINED_FUNCTION_12();
  v60 = v58 - v59;
  MEMORY[0x28223BE20](v61);
  v63 = &v124 - v62;
  v141 = a1;
  sub_269852064();
  v64 = sub_269852024();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v63, 1, v64);
  v66 = v142;
  v139 = v63;
  if (EnumTagSinglePayload == 1)
  {
    goto LABEL_2;
  }

  sub_2696ADDE8(v63, v60, &qword_2803233C8, &unk_26985E990);
  v84 = *(v64 - 8);
  v85 = (*(v84 + 88))(v60, v64);
  if (v85 == *MEMORY[0x277D393A0])
  {
    v86 = OUTLINED_FUNCTION_6_12();
    v87(v86);
    (*(v47 + 32))(v55, v60, v44);
    (*(v47 + 16))(v52, v55, v44);
    v88 = sub_2696CFCF8(v52);
    (*(v47 + 8))(v55, v44);
LABEL_17:
    v90 = v88;
    sub_269698048(v139, &qword_2803233C8, &unk_26985E990);
    v109 = v141;
    v110 = sub_269852034();
    sub_2696C97B8(v110, v111, v90, &selRef_setSummary_);
    v112 = sub_269852044();
    sub_2696C97B8(v112, v113, v90, &selRef_setEntityExperienceUrl_);
    v114 = sub_269852054();
    sub_2696C97B8(v114, v115, v90, &selRef_setMachineGeneratedUtterance_);

    (*(v140 + 8))(v109, v142);
    return v90;
  }

  if (v85 == *MEMORY[0x277D393B0])
  {
    v91 = OUTLINED_FUNCTION_6_12();
    v92(v91);
    v94 = v133;
    v93 = v134;
    (*(v133 + 32))(v43, v60, v134);
    (*(v94 + 16))(v40, v43, v93);
    v88 = sub_2696D02A4(v40);
    (*(v94 + 8))(v43, v93);
    goto LABEL_17;
  }

  if (v85 == *MEMORY[0x277D393B8])
  {
    v95 = OUTLINED_FUNCTION_6_12();
    v96(v95);
    v98 = v130;
    v97 = v131;
    v99 = OUTLINED_FUNCTION_11_8();
    v100 = v132;
    v101(v99);
    v102 = v129;
    (*(v97 + 16))(v129, v98, v100);
    v103 = sub_2696D08F4(v102);
LABEL_16:
    v88 = v103;
    (*(v97 + 8))(v98, v100);
    goto LABEL_17;
  }

  if (v85 == *MEMORY[0x277D393C0])
  {
    v104 = OUTLINED_FUNCTION_6_12();
    v105(v104);
    v98 = v126;
    v97 = v127;
    v106 = OUTLINED_FUNCTION_11_8();
    v100 = v128;
    v107(v106);
    v108 = v125;
    (*(v97 + 16))(v125, v98, v100);
    v103 = sub_2696D0F80(v108);
    goto LABEL_16;
  }

  if (v85 == *MEMORY[0x277D393A8])
  {
    v117 = v138;
    v118 = v136;
    if (qword_2803226E0 != -1)
    {
      OUTLINED_FUNCTION_0_10();
    }

    v119 = __swift_project_value_buffer(v117, qword_28033D910);
    v120 = v124;
    (*(v118 + 16))(v124, v119, v117);
    v121 = sub_2698548B4();
    v122 = sub_269854F14();
    if (os_log_type_enabled(v121, v122))
    {
      v123 = swift_slowAlloc();
      *v123 = 0;
      _os_log_impl(&dword_269684000, v121, v122, "Received a Person result. Will not attempt to convert to a Content type. Returning nil", v123, 2u);
      OUTLINED_FUNCTION_10();
    }

    (*(v140 + 8))(v141, v142);
    (*(v118 + 8))(v120, v117);
    (*(v84 + 8))(v60, v64);
    goto LABEL_9;
  }

  (*(v84 + 8))(v60, v64);
  v66 = v142;
LABEL_2:
  v67 = v66;
  if (qword_2803226E0 != -1)
  {
    OUTLINED_FUNCTION_0_10();
  }

  v68 = v138;
  v69 = __swift_project_value_buffer(v138, qword_28033D910);
  v71 = v136;
  v70 = v137;
  (*(v136 + 16))(v137, v69, v68);
  v73 = v140;
  v72 = v141;
  v74 = v135;
  (*(v140 + 16))(v135, v141, v67);
  v75 = sub_2698548B4();
  v76 = sub_269854F24();
  if (os_log_type_enabled(v75, v76))
  {
    v77 = swift_slowAlloc();
    v78 = swift_slowAlloc();
    v143 = v78;
    *v77 = 136315138;
    sub_2696D1D94();
    v79 = sub_2698544D4();
    v81 = v80;
    v82 = *(v73 + 8);
    v82(v74, v67);
    v83 = sub_26974F520(v79, v81, &v143);

    *(v77 + 4) = v83;
    _os_log_impl(&dword_269684000, v75, v76, "Unexpected VideoResult type in PegasusResponse: %s", v77, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v78);
    OUTLINED_FUNCTION_10();
    OUTLINED_FUNCTION_10();

    v82(v141, v67);
    (*(v71 + 8))(v137, v138);
  }

  else
  {

    v89 = *(v73 + 8);
    v89(v72, v67);
    v89(v74, v67);
    (*(v71 + 8))(v70, v68);
  }

LABEL_9:
  sub_269698048(v139, &qword_2803233C8, &unk_26985E990);
  return 0;
}

id sub_2696CFCF8(uint64_t a1)
{
  v65 = sub_269851F64();
  v3 = *(v65 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v65);
  v64 = &v61 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v66 = &v61 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323030, &qword_26985BAE0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v61 - v10;
  v12 = sub_269851D34();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v61 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = objc_allocWithZone(v1);
  v18 = sub_269854A64();
  v19 = [v17 initWithIdentifier:0 displayString:v18];

  v20 = v19;
  v21 = sub_269851FD4();
  sub_2696C97B8(v21, v22, v20, &selRef_setName_);
  v23 = sub_269851F24();
  sub_2696C97B8(v23, v24, v20, &selRef_setUmcId_);
  [v20 setType_];
  v25 = sub_269851FE4();
  if (v25[2])
  {
    v26 = v12;
    v28 = v25[4];
    v27 = v25[5];

    v29 = sub_269854A64();
    v12 = v26;
  }

  else
  {

    v29 = 0;
  }

  [v20 setGenre_];

  if (sub_269851FB4() >= 1)
  {
    sub_269851FB4();
    sub_269851CF4();
    v30 = sub_269851CD4();
    (*(v13 + 8))(v16, v12);
    [v20 setReleaseDate_];
  }

  sub_269851F94();
  sub_269851C64();

  v31 = sub_269851C74();
  v32 = 0;
  if (__swift_getEnumTagSinglePayload(v11, 1, v31) != 1)
  {
    v32 = sub_269851C24();
    (*(*(v31 - 8) + 8))(v11, v31);
  }

  [v20 setDetailsUrl_];

  v33 = sub_269851FF4();
  v34 = *(v33 + 16);
  if (v34)
  {
    v62 = v20;
    v63 = a1;
    v70 = MEMORY[0x277D84F90];
    sub_2698552A4();
    v35 = type metadata accessor for ContentImage();
    v37 = *(v3 + 16);
    v36 = v3 + 16;
    v68 = v37;
    v69 = v35;
    v38 = *(v36 + 64);
    v61 = v33;
    v39 = v33 + ((v38 + 32) & ~v38);
    v41 = v64;
    v40 = v65;
    v67 = *(v36 + 56);
    v42 = v66;
    do
    {
      v43 = v68;
      v68(v42, v39, v40);
      v43(v41, v42, v40);
      sub_2696D22A0(v41);
      (*(v36 - 8))(v42, v40);
      sub_269855284();
      v44 = *(v70 + 16);
      sub_2698552B4();
      sub_2698552C4();
      sub_269855294();
      v39 += v67;
      --v34;
    }

    while (v34);

    v45 = v70;
    v20 = v62;
    a1 = v63;
  }

  else
  {

    v45 = MEMORY[0x277D84F90];
  }

  sub_2697C6BA4(v45, v20);
  v46 = sub_269851FA4();
  v48 = v47;

  v49 = HIBYTE(v48) & 0xF;
  if ((v48 & 0x2000000000000000) == 0)
  {
    v49 = v46 & 0xFFFFFFFFFFFFLL;
  }

  if (v49)
  {
    v50 = sub_269851FA4();
    sub_2696C97B8(v50, v51, v20, &selRef_setRatingValue_);
  }

  v52 = sub_269851FC4();
  v54 = v53;

  v55 = HIBYTE(v54) & 0xF;
  if ((v54 & 0x2000000000000000) == 0)
  {
    v55 = v52 & 0xFFFFFFFFFFFFLL;
  }

  if (v55)
  {
    v56 = sub_269851FC4();
    sub_2696C97B8(v56, v57, v20, &selRef_setRatingSystem_);
  }

  sub_269851F84();
  v58 = sub_269855644();
  [v20 setRuntimeInMinutes_];

  v59 = sub_269852004();
  (*(*(v59 - 8) + 8))(a1, v59);
  return v20;
}

id sub_2696D02A4(uint64_t a1)
{
  v64 = sub_269851F64();
  v3 = *(v64 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v64);
  v63 = &v60 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v65 = &v60 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323030, &qword_26985BAE0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v60 - v10;
  v12 = sub_269851D34();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v60 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = objc_allocWithZone(v1);
  v18 = sub_269854A64();
  v19 = [v17 initWithIdentifier:0 displayString:v18];

  v20 = v19;
  v21 = sub_269851FD4();
  sub_2696C97B8(v21, v22, v20, &selRef_setName_);
  v23 = sub_269851F24();
  sub_2696C97B8(v23, v24, v20, &selRef_setUmcId_);
  [v20 setType_];
  v25 = sub_269851FE4();
  if (v25[2])
  {
    v26 = v12;
    v28 = v25[4];
    v27 = v25[5];

    v29 = sub_269854A64();
    v12 = v26;
  }

  else
  {

    v29 = 0;
  }

  [v20 setGenre_];

  if (sub_269851FB4() >= 1)
  {
    sub_269851FB4();
    sub_269851CF4();
    v30 = sub_269851CD4();
    (*(v13 + 8))(v16, v12);
    [v20 setReleaseDate_];
  }

  if (sub_269852134() >= 1)
  {
    sub_269852134();
    sub_269851CF4();
    v31 = sub_269851CD4();
    (*(v13 + 8))(v16, v12);
    [v20 setFinaleDate_];
  }

  sub_269852144();
  sub_269851C64();

  v32 = sub_269851C74();
  v33 = 0;
  if (__swift_getEnumTagSinglePayload(v11, 1, v32) != 1)
  {
    v33 = sub_269851C24();
    (*(*(v32 - 8) + 8))(v11, v32);
  }

  [v20 setDetailsUrl_];

  v34 = sub_2698521A4();
  v35 = *(v34 + 16);
  if (v35)
  {
    v61 = v20;
    v62 = a1;
    v69 = MEMORY[0x277D84F90];
    sub_2698552A4();
    v36 = type metadata accessor for ContentImage();
    v38 = *(v3 + 16);
    v37 = v3 + 16;
    v67 = v38;
    v68 = v36;
    v39 = *(v37 + 64);
    v60 = v34;
    v40 = v34 + ((v39 + 32) & ~v39);
    v42 = v63;
    v41 = v64;
    v66 = *(v37 + 56);
    v43 = v65;
    do
    {
      v44 = v67;
      v67(v43, v40, v41);
      v44(v42, v43, v41);
      sub_2696D22A0(v42);
      (*(v37 - 8))(v43, v41);
      sub_269855284();
      v45 = *(v69 + 16);
      sub_2698552B4();
      sub_2698552C4();
      sub_269855294();
      v40 += v66;
      --v35;
    }

    while (v35);

    v46 = v69;
    v20 = v61;
    a1 = v62;
  }

  else
  {

    v46 = MEMORY[0x277D84F90];
  }

  sub_2697C6BA4(v46, v20);
  if (sub_269852124() > 0)
  {
    sub_269852124();
    v47 = sub_269855644();
    [v20 setSeasonCount_];
  }

  v48 = sub_269851FC4();
  sub_2696D16F4(v48, v49);
  v51 = v50;

  if (v51)
  {
    v52 = sub_269854A64();
  }

  else
  {
    v52 = 0;
  }

  [v20 setRatingValue_];

  v53 = sub_269852164();
  sub_2696D16F4(v53, v54);
  v56 = v55;

  if (v56)
  {
    v57 = sub_269854A64();
  }

  else
  {
    v57 = 0;
  }

  [v20 setRatingSystem_];

  v58 = sub_2698521B4();
  (*(*(v58 - 8) + 8))(a1, v58);
  return v20;
}

id sub_2696D08F4(uint64_t a1)
{
  v67 = sub_269851F64();
  v3 = *(v67 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v67);
  v69 = v63 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v68 = v63 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323030, &qword_26985BAE0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = v63 - v10;
  v12 = sub_269851D34();
  v71 = *(v12 - 8);
  v72 = v12;
  v13 = *(v71 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = v63 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_2698521B4();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = v63 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = objc_allocWithZone(v1);
  v22 = sub_269854A64();
  v23 = [v21 initWithIdentifier:0 displayString:v22];

  v24 = v23;
  sub_269852204();
  v25 = sub_269851FD4();
  v27 = v26;
  v28 = *(v17 + 8);
  v66 = v20;
  v28(v20, v16);
  sub_2696C97B8(v25, v27, v24, &selRef_setName_);
  v29 = sub_269851F24();
  sub_2696C97B8(v29, v30, v24, &selRef_setUmcId_);
  [v24 setType_];

  if (sub_2698521F4() >= 1)
  {
    sub_2698521F4();
    sub_269851CF4();
    v31 = sub_269851CD4();
    (*(v71 + 8))(v15, v72);
    [v24 setReleaseDate_];
  }

  sub_2698521E4();
  sub_269851C64();

  v32 = sub_269851C74();
  v33 = 0;
  if (__swift_getEnumTagSinglePayload(v11, 1, v32) != 1)
  {
    v33 = sub_269851C24();
    (*(*(v32 - 8) + 8))(v11, v32);
  }

  [v24 setDetailsUrl_];

  v34 = sub_269852214();
  v35 = *(v34 + 16);
  if (v35)
  {
    v64 = v24;
    v65 = a1;
    v73 = MEMORY[0x277D84F90];
    sub_2698552A4();
    v36 = type metadata accessor for ContentImage();
    v38 = *(v3 + 16);
    v37 = v3 + 16;
    v71 = v38;
    v72 = v36;
    v39 = *(v37 + 64);
    v63[1] = v34;
    v40 = v34 + ((v39 + 32) & ~v39);
    v42 = v67;
    v41 = v68;
    v70 = *(v37 + 56);
    v43 = v69;
    do
    {
      v44 = v71;
      (v71)(v41, v40, v42);
      v44(v43, v41, v42);
      sub_2696D22A0(v43);
      (*(v37 - 8))(v41, v42);
      sub_269855284();
      v45 = *(v73 + 16);
      sub_2698552B4();
      sub_2698552C4();
      sub_269855294();
      v40 += v70;
      --v35;
    }

    while (v35);

    v46 = v73;
    v24 = v64;
    a1 = v65;
  }

  else
  {

    v46 = MEMORY[0x277D84F90];
  }

  sub_2697C6BA4(v46, v24);
  v47 = sub_269852144();
  v49 = v48;

  v50 = HIBYTE(v49) & 0xF;
  if ((v49 & 0x2000000000000000) == 0)
  {
    v50 = v47 & 0xFFFFFFFFFFFFLL;
  }

  if (v50)
  {
    v51 = sub_269852144();
    sub_2696C97B8(v51, v52, v24, &selRef_setSeasonNumber_);
  }

  if (sub_269852224())
  {
    type metadata accessor for Content();
    v53 = v66;
    sub_269852204();
    v54 = sub_2696D02A4(v53);
    [v24 setShow_];
  }

  v55 = [v24 show];
  if (v55 && (sub_2696D1E04(v55, &selRef_ratingValue), v56))
  {
    v57 = sub_269854A64();
  }

  else
  {
    v57 = 0;
  }

  [v24 setRatingValue_];

  v58 = [v24 show];
  if (v58 && (sub_2696D1E04(v58, &selRef_ratingSystem), v59))
  {
    v60 = sub_269854A64();
  }

  else
  {
    v60 = 0;
  }

  [v24 setRatingSystem_];

  v61 = sub_269852234();
  (*(*(v61 - 8) + 8))(a1, v61);
  return v24;
}

id sub_2696D0F80(uint64_t a1)
{
  v3 = sub_269852234();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v79 = &v72 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = sub_269851F64();
  v81 = *(v78 - 8);
  v6 = *(v81 + 64);
  v7 = MEMORY[0x28223BE20](v78);
  v77 = &v72 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v76 = &v72 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323030, &qword_26985BAE0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v72 - v12;
  v82 = sub_269851D34();
  v14 = *(v82 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v82);
  v17 = &v72 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_2698521B4();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  v22 = &v72 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = objc_allocWithZone(v1);
  v24 = sub_269854A64();
  v25 = [v23 initWithIdentifier:0 displayString:v24];

  v26 = v25;
  sub_2698522B4();
  v27 = sub_269851FD4();
  v29 = v28;
  v30 = *(v19 + 8);
  v75 = v22;
  v30(v22, v18);
  sub_2696C97B8(v27, v29, v26, &selRef_setName_);
  v31 = sub_269852264();
  sub_2696C97B8(v31, v32, v26, &selRef_setUmcId_);
  [v26 setType_];

  if (sub_2698522A4() >= 1)
  {
    sub_2698522A4();
    sub_269851CF4();
    v33 = sub_269851CD4();
    (*(v14 + 8))(v17, v82);
    [v26 setReleaseDate_];
  }

  sub_269852294();
  sub_269851C64();

  v34 = sub_269851C74();
  v35 = 0;
  if (__swift_getEnumTagSinglePayload(v13, 1, v34) != 1)
  {
    v35 = sub_269851C24();
    (*(*(v34 - 8) + 8))(v13, v34);
  }

  [v26 setDetailsUrl_];

  v36 = sub_2698522C4();
  v37 = *(v36 + 16);
  v38 = v79;
  if (v37)
  {
    v73 = v26;
    v74 = a1;
    v83 = MEMORY[0x277D84F90];
    sub_2698552A4();
    v39 = type metadata accessor for ContentImage();
    v40 = v81 + 16;
    v81 = *(v81 + 16);
    v82 = v39;
    v41 = *(v40 + 64);
    v72 = v36;
    v42 = v36 + ((v41 + 32) & ~v41);
    v80 = *(v40 + 56);
    v43 = v77;
    v44 = v78;
    v45 = v76;
    do
    {
      v46 = v81;
      (v81)(v45, v42, v44);
      v46(v43, v45, v44);
      sub_2696D22A0(v43);
      (*(v40 - 8))(v45, v44);
      sub_269855284();
      v47 = *(v83 + 16);
      sub_2698552B4();
      sub_2698552C4();
      sub_269855294();
      v42 += v80;
      --v37;
    }

    while (v37);

    v48 = v83;
    v26 = v73;
    a1 = v74;
    v38 = v79;
  }

  else
  {

    v48 = MEMORY[0x277D84F90];
  }

  sub_2697C6BA4(v48, v26);
  v49 = sub_269852274();
  v51 = v50;

  v52 = HIBYTE(v51) & 0xF;
  if ((v51 & 0x2000000000000000) == 0)
  {
    v52 = v49 & 0xFFFFFFFFFFFFLL;
  }

  if (v52)
  {
    v53 = sub_269852274();
    sub_2696C97B8(v53, v54, v26, &selRef_setSeasonNumber_);
  }

  v55 = sub_269852284();
  v57 = v56;

  v58 = HIBYTE(v57) & 0xF;
  if ((v57 & 0x2000000000000000) == 0)
  {
    v58 = v55 & 0xFFFFFFFFFFFFLL;
  }

  if (v58)
  {
    v59 = sub_269852284();
    sub_2696C97B8(v59, v60, v26, &selRef_setEpisodeNumber_);
  }

  if (sub_2698522E4())
  {
    type metadata accessor for Content();
    v61 = v75;
    sub_2698522B4();
    v62 = sub_2696D02A4(v61);
    [v26 setShow_];
  }

  if (sub_2698522F4())
  {
    type metadata accessor for Content();
    sub_2698522D4();
    v63 = sub_2696D08F4(v38);
    [v26 setSeason_];
  }

  v64 = [v26 show];
  if (v64 && (sub_2696D1E04(v64, &selRef_ratingValue), v65))
  {
    v66 = sub_269854A64();
  }

  else
  {
    v66 = 0;
  }

  [v26 setRatingValue_];

  v67 = [v26 show];
  if (v67 && (sub_2696D1E04(v67, &selRef_ratingSystem), v68))
  {
    v69 = sub_269854A64();
  }

  else
  {
    v69 = 0;
  }

  [v26 setRatingSystem_];

  v70 = sub_269852304();
  (*(*(v70 - 8) + 8))(a1, v70);
  return v26;
}

uint64_t sub_2696D16F4(uint64_t a1, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v2)
  {
    return 0;
  }

  v3 = a1;

  return v3;
}

void sub_2696D1748()
{
  v1 = sub_2697C6B44(v0);
  if (v1)
  {
    v2 = v1;
    v3 = sub_26975004C(v1);
    v4 = 0;
    v18 = MEMORY[0x277D84F90];
    while (1)
    {
      if (v3 == v4)
      {

        return;
      }

      if ((v2 & 0xC000000000000001) != 0)
      {
        v5 = MEMORY[0x26D646120](v4, v2);
      }

      else
      {
        if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_18;
        }

        v5 = *(v2 + 8 * v4 + 32);
      }

      v6 = v5;
      v7 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      sub_2696D24E4(v20);
      v9 = v20[0];
      v8 = v20[1];
      v10 = v21;
      v19 = v22;

      ++v4;
      if (v8)
      {
        v11 = v18;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v15 = *(v18 + 16);
          sub_26977C1C0();
          v11 = v16;
        }

        v12 = *(v11 + 16);
        v18 = v11;
        v13 = v19;
        if (v12 >= *(v11 + 24) >> 1)
        {
          sub_26977C1C0();
          v13 = v19;
          v18 = v17;
        }

        *(v18 + 16) = v12 + 1;
        v14 = v18 + 40 * v12;
        *(v14 + 32) = v9;
        *(v14 + 40) = v8;
        *(v14 + 48) = v10;
        *(v14 + 56) = v13;
        v4 = v7;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
  }
}

unint64_t sub_2696D18D0(uint64_t a1, unint64_t a2)
{
  v4 = sub_2698548D4();
  v5 = OUTLINED_FUNCTION_8(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1 || (v28 = 0, v29 = 1, sub_269854E94(), (v29 & 1) != 0) || (v12 = v28, v12 >= sub_26975004C(a2)))
  {

    return a2;
  }

  if (qword_280322700 != -1)
  {
    OUTLINED_FUNCTION_0_4();
  }

  v13 = __swift_project_value_buffer(v4, qword_281571B38);
  (*(v7 + 16))(v11, v13, v4);
  v14 = sub_2698548B4();
  v15 = sub_269854F14();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 134217984;
    *(v16 + 4) = v12;
    _os_log_impl(&dword_269684000, v14, v15, "Filtering to %ld items due to VOX", v16, 0xCu);
    OUTLINED_FUNCTION_10();
  }

  (*(v7 + 8))(v11, v4);

  v17 = sub_269771B1C(v12, a2);
  v19 = v18;
  v21 = v20;
  v23 = v22;
  if ((v22 & 1) == 0)
  {
    goto LABEL_9;
  }

  sub_2698555A4();
  swift_unknownObjectRetain_n();
  v26 = swift_dynamicCastClass();
  if (!v26)
  {
    swift_unknownObjectRelease();
    v26 = MEMORY[0x277D84F90];
  }

  v27 = *(v26 + 16);

  if (__OFSUB__(v23 >> 1, v21))
  {
    __break(1u);
    goto LABEL_19;
  }

  if (v27 != (v23 >> 1) - v21)
  {
LABEL_19:
    swift_unknownObjectRelease();
LABEL_9:
    sub_2697E0BB4(v17, v19, v21, v23);
    a2 = v24;
    swift_unknownObjectRelease();
    return a2;
  }

  a2 = swift_dynamicCastClass();
  swift_unknownObjectRelease();
  if (!a2)
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84F90];
  }

  return a2;
}

uint64_t sub_2696D1B74(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280322EA0, &unk_2698577C0);
  sub_2696D1F08();
  v2 = sub_269854A04();
  v3 = sub_26975004C(a1);
  for (i = 0; ; ++i)
  {
    if (v3 == i)
    {
      return v2;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x26D646120](i, a1);
    }

    else
    {
      if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_20;
      }

      v5 = *(a1 + 8 * i + 32);
    }

    v6 = v5;
    if (__OFADD__(i, 1))
    {
      break;
    }

    v7 = sub_26977E46C(v5);
    v9 = v8;
    swift_isUniquelyReferenced_nonNull_native();
    v10 = sub_26973CFEC(v7, v9);
    if (__OFADD__(v2[2], (v11 & 1) == 0))
    {
      goto LABEL_21;
    }

    v12 = v10;
    v13 = v11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803233E8, &qword_26985A578);
    if (sub_2698552E4())
    {
      v14 = sub_26973CFEC(v7, v9);
      if ((v13 & 1) != (v15 & 1))
      {
        goto LABEL_24;
      }

      v12 = v14;
    }

    if (v13)
    {
    }

    else
    {
      v2[(v12 >> 6) + 8] |= 1 << v12;
      v16 = (v2[6] + 16 * v12);
      *v16 = v7;
      v16[1] = v9;
      *(v2[7] + 8 * v12) = 0;
      v17 = v2[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_23;
      }

      v2[2] = v19;
    }

    v20 = v2[7];
    v21 = *(v20 + 8 * v12);
    v18 = __OFADD__(v21, 1);
    v22 = v21 + 1;
    if (v18)
    {
      goto LABEL_22;
    }

    *(v20 + 8 * v12) = v22;
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  result = sub_2698555F4();
  __break(1u);
  return result;
}

unint64_t sub_2696D1D94()
{
  result = qword_2803233D0;
  if (!qword_2803233D0)
  {
    sub_269852084();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803233D0);
  }

  return result;
}

uint64_t sub_2696D1E04(void *a1, SEL *a2)
{
  v3 = [a1 *a2];

  if (!v3)
  {
    return 0;
  }

  v4 = sub_269854A94();

  return v4;
}

unint64_t sub_2696D1EC4()
{
  result = qword_2803233D8;
  if (!qword_2803233D8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2803233D8);
  }

  return result;
}

unint64_t sub_2696D1F08()
{
  result = qword_2803233E0;
  if (!qword_2803233E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280322EA0, &unk_2698577C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803233E0);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_12_8()
{
  v2 = v0[33];
  v3 = v0[30];
  v4 = v0[27];
  v5 = v0[24];
}

uint64_t sub_2696D2010@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>)
{
  v6 = v5;
  sub_2696CD57C(v6, &selRef_templateUrl);
  if (v12)
  {
    v13 = a2;
    if (a2)
    {
LABEL_5:
      v56 = v13;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803233F0, &unk_26985A580);
      v15 = swift_allocObject();
      *(v15 + 16) = xmmword_269857710;
      *(v15 + 56) = MEMORY[0x277D85048];
      v16 = sub_2696D27A4();
      *(v15 + 64) = v16;
      *(v15 + 32) = a4;

      v59 = sub_269854AB4();
      v60 = v17;
      v18 = sub_269693054();
      v19 = MEMORY[0x277D837D0];
      OUTLINED_FUNCTION_1_11(v18, v20, v21, v22, v23, v24, v25, v26, MEMORY[0x277D837D0], v18, v18, v18, 1, 2, a3, v56, v59, v60, 123);
      OUTLINED_FUNCTION_0_18();

      v27 = swift_allocObject();
      *(v27 + 16) = v51;
      *(v27 + 56) = MEMORY[0x277D85048];
      *(v27 + 64) = v16;
      *(v27 + 32) = a5;
      v28 = sub_269854AB4();
      OUTLINED_FUNCTION_1_11(v28, v29, v30, v31, v32, v33, v34, v35, v49, v50, v18, v18, v51, *(&v51 + 1), v54, v57, v28, v29, 123);
      OUTLINED_FUNCTION_0_18();

      OUTLINED_FUNCTION_1_11(v36, v37, v38, v39, v40, v41, v42, v43, v19, v18, v18, v18, v52, v53, v55, v58, a1, v58, 123);
      OUTLINED_FUNCTION_0_18();

      sub_269851C64();
    }

    v14 = sub_2696CD57C(v6, &selRef_format);
    if (v13)
    {
      a1 = v14;
      goto LABEL_5;
    }
  }

  sub_269851C74();
  v45 = OUTLINED_FUNCTION_3_0();

  return __swift_storeEnumTagSinglePayload(v45, v46, v47, v48);
}

id sub_2696D22A0(uint64_t a1)
{
  v2 = v1;
  v4 = sub_269851F14();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = objc_allocWithZone(v2);
  v10 = sub_269854A64();
  v11 = [v9 initWithIdentifier:0 displayString:v10];

  v12 = v11;
  sub_269851F54();
  v13 = sub_269855644();
  [v12 setHeight_];

  sub_269851F44();
  v14 = sub_269855644();
  [v12 setWidth_];

  v15 = sub_269851F24();
  sub_2696D2740(v15, v16, v12);

  sub_269851F34();
  v17 = (*(v5 + 88))(v8, v4);
  if (v17 == *MEMORY[0x277D392D0])
  {
    [v12 setType_];
  }

  else
  {
    v18 = v17;
    v19 = *MEMORY[0x277D392C8];
    v20 = v12;
    if (v18 == v19)
    {
      [v20 setType_];
    }

    else
    {
      [v20 setType_];
      (*(v5 + 8))(v8, v4);
    }
  }

  sub_2697C6C18(6778986, 0xE300000000000000, v12);

  v21 = sub_269851F64();
  (*(*(v21 - 8) + 8))(a1, v21);
  return v12;
}

void sub_2696D24E4(uint64_t *a1@<X8>)
{
  v2 = v1;
  v4 = sub_2696CD57C(v1, &selRef_templateUrl);
  v6 = v5;
  if (!v5)
  {
    v7 = 0;
LABEL_11:
    v15 = 0;
    v13 = 0;
    v14 = 0;
    goto LABEL_12;
  }

  v7 = v4;
  v8 = [v2 width];
  if (!v8)
  {

LABEL_10:
    v7 = 0;
    v6 = 0;
    goto LABEL_11;
  }

  v9 = v8;
  v10 = [v2 height];
  if (!v10)
  {

    goto LABEL_10;
  }

  v11 = v10;
  v12 = [v2 type];
  v13 = [v9 integerValue];
  v14 = [v11 integerValue];

  if (v12 == 1)
  {
    v15 = 1;
  }

  else
  {
    v15 = 2 * (v12 == 2);
  }

LABEL_12:
  *a1 = v7;
  a1[1] = v6;
  a1[2] = v15;
  a1[3] = v13;
  a1[4] = v14;
}

uint64_t sub_2696D261C@<X0>(uint64_t a1@<X8>)
{
  v3 = [v1 height];
  if (v3 && (v4 = v3, [v3 doubleValue], v6 = v5, v4, (v7 = objc_msgSend(v1, sel_width)) != 0))
  {
    v8 = v7;
    [v7 doubleValue];
    v10 = v9;

    v11 = 531.0 / v10;
    if (531.0 / v10 >= 624.0 / v6)
    {
      v11 = 624.0 / v6;
    }

    v12 = v10 * v11;
    v13 = v6 * v11;

    return sub_2696D2010(6778986, 0xE300000000000000, a1, v12, v13);
  }

  else
  {
    sub_269851C74();
    v15 = OUTLINED_FUNCTION_3_0();

    return __swift_storeEnumTagSinglePayload(v15, v16, v17, v18);
  }
}

void sub_2696D2740(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_269854A64();

  [a3 setTemplateUrl_];
}

unint64_t sub_2696D27A4()
{
  result = qword_2803233F8;
  if (!qword_2803233F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803233F8);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_0_18()
{

  return sub_269855104();
}

unint64_t SKIDirectInvocation.Video.rawValue.getter(char a1)
{
  result = 0xD00000000000002ALL;
  switch(a1)
  {
    case 1:
      result = 0xD00000000000002CLL;
      break;
    case 2:
      result = 0xD00000000000002DLL;
      break;
    case 3:
      result = 0xD000000000000027;
      break;
    case 4:
      result = 0xD00000000000001CLL;
      break;
    default:
      return result;
  }

  return result;
}

id SKIDirectInvocation.Video.newPayload(userData:)(uint64_t a1, char a2)
{
  sub_2696D2930();
  SKIDirectInvocation.Video.rawValue.getter(a2);
  v4 = sub_2696D2974();
  if (a1)
  {
    sub_2696D319C(a1, v4);
  }

  return v4;
}

unint64_t sub_2696D2930()
{
  result = qword_280323400;
  if (!qword_280323400)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280323400);
  }

  return result;
}

id sub_2696D2974()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v1 = sub_269854A64();

  v2 = [v0 initWithIdentifier_];

  return v2;
}

uint64_t SKIDirectInvocation.Video.init(rawValue:)()
{
  v0 = sub_2698553E4();

  if (v0 >= 5)
  {
    return 5;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_2696D2A64@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = SKIDirectInvocation.Video.init(rawValue:)();
  *a2 = result;
  return result;
}

unint64_t sub_2696D2A94@<X0>(unint64_t *a1@<X8>)
{
  result = SKIDirectInvocation.Video.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_2696D2AD0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6554686372616573 && a2 == 0xEA00000000006D72;
  if (v4 || (sub_269855584() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6449656C646E7562 && a2 == 0xE800000000000000;
    if (v6 || (sub_269855584() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x6449636D556C6C61 && a2 == 0xE900000000000073)
    {

      return 2;
    }

    else
    {
      v8 = sub_269855584();

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

uint64_t sub_2696D2BF0(char a1)
{
  if (!a1)
  {
    return 0x6554686372616573;
  }

  if (a1 == 1)
  {
    return 0x6449656C646E7562;
  }

  return 0x6449636D556C6C61;
}

uint64_t sub_2696D2C60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2696D2AD0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2696D2C88(uint64_t a1)
{
  v2 = sub_2696D3210();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2696D2CC4(uint64_t a1)
{
  v2 = sub_2696D3210();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SKIDirectInvocation.ReformSearchToThirdPartyPayload.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323408, &unk_26985A5E0);
  v6 = OUTLINED_FUNCTION_8(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  v12 = &v19[-v11];
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2696D3210();
  sub_2698556F4();
  v14 = *v3;
  v15 = v3[1];
  v22 = 0;
  sub_2698554E4();
  if (!v2)
  {
    v16 = v3[2];
    v17 = v3[3];
    v21 = 1;
    sub_2698554C4();
    v20 = v3[4];
    v19[15] = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280322878, &qword_2698587A0);
    sub_2696D3264(&qword_280323418);
    sub_269855514();
  }

  return (*(v8 + 8))(v12, v5);
}

uint64_t SKIDirectInvocation.ReformSearchToThirdPartyPayload.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323420, &qword_26985A5F0);
  v6 = OUTLINED_FUNCTION_8(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2696D3210();
  sub_2698556E4();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v10 = sub_269855464();
  v12 = v11;
  v19 = v10;
  v17 = sub_269855414();
  v18 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280322878, &qword_2698587A0);
  sub_2696D3264(&qword_280323428);
  sub_269855494();
  v14 = OUTLINED_FUNCTION_0_19();
  v15(v14);
  result = __swift_destroy_boxed_opaque_existential_0(a1);
  *a2 = v19;
  a2[1] = v12;
  a2[2] = v17;
  a2[3] = v18;
  a2[4] = v20;
  return result;
}

double sub_2696D313C@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  SKIDirectInvocation.ReformSearchToThirdPartyPayload.init(from:)(a1, v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = v5;
    *(a2 + 32) = v7;
  }

  return result;
}

void sub_2696D319C(uint64_t a1, void *a2)
{
  v3 = sub_2698549D4();
  [a2 setUserData_];
}

unint64_t sub_2696D3210()
{
  result = qword_280323410;
  if (!qword_280323410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280323410);
  }

  return result;
}

uint64_t sub_2696D3264(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280322878, &qword_2698587A0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2696D32D4()
{
  result = qword_280323430;
  if (!qword_280323430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280323430);
  }

  return result;
}

unint64_t sub_2696D332C()
{
  result = qword_280323438;
  if (!qword_280323438)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280323440, &qword_26985A698);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280323438);
  }

  return result;
}

uint64_t _s5VideoOwet(unsigned __int8 *a1, unsigned int a2)
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

_BYTE *_s5VideoOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_2696D34F4(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_2696D3534(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

_BYTE *_s31ReformSearchToThirdPartyPayloadV10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_2696D366C()
{
  result = qword_280323448;
  if (!qword_280323448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280323448);
  }

  return result;
}

unint64_t sub_2696D36C4()
{
  result = qword_280323450;
  if (!qword_280323450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280323450);
  }

  return result;
}

unint64_t sub_2696D371C()
{
  result = qword_280323458;
  if (!qword_280323458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280323458);
  }

  return result;
}

void sub_2696D3780()
{
  v1 = [objc_allocWithZone(MEMORY[0x277CD4350]) init];
  if (v1)
  {
    v4 = v1;
    v2 = sub_269854A64();
    [v4 setSystemExtensionBundleId_];

    v3 = sub_269854A64();
    [v4 setLaunchId_];

    [v0 _setMetadata_];
  }
}

uint64_t sub_2696D386C(uint64_t a1)
{
  switch(a1)
  {
    case 1:
      return 1196314451;
    case 2:
      return 0x4D55424C41;
    case 3:
      return 0x545349545241;
    case 4:
      v4 = 1380861255;
      return v4 & 0xFFFF0000FFFFFFFFLL | 0x4500000000;
    case 5:
      return 0x5453494C59414C50;
    case 6:
    case 15:
      return 0x5F54534143444F50;
    case 7:
      return 0x5F54534143444F50;
    case 8:
      return 0xD000000000000010;
    case 9:
      v3 = 0x5F434953554DLL;
      return v3 & 0xFFFFFFFFFFFFLL | 0x5453000000000000;
    case 10:
      return 0x4F425F4F49445541;
    case 11:
      v4 = 1230393165;
      return v4 & 0xFFFF0000FFFFFFFFLL | 0x4500000000;
    case 12:
      return 0x574F48535F5654;
    case 13:
      return 0x5F574F48535F5654;
    case 14:
      return 0x49565F434953554DLL;
    case 16:
      v3 = 0x5F4F49444152;
      return v3 & 0xFFFFFFFFFFFFLL | 0x5453000000000000;
    case 17:
      v2 = 0x4F4954415453;
      return v2 & 0xFFFFFFFFFFFFLL | 0x4E000000000000;
    case 18:
      return 0x434953554DLL;
    case 19:
      return 0xD000000000000019;
    case 20:
      return 1398228302;
    default:
      v2 = 0x574F4E4B4E55;
      return v2 & 0xFFFFFFFFFFFFLL | 0x4E000000000000;
  }
}

uint64_t sub_2696D3A90()
{
  v1 = [v0 modelDescription];
  v2 = [v1 metadata];

  type metadata accessor for MLModelMetadataKey(0);
  sub_2696D3B90();
  v3 = sub_2698549E4();

  v4 = *MEMORY[0x277CBFEA8];
  sub_26981D0E8(v3, &v7);

  if (v8)
  {
    if (swift_dynamicCast())
    {
      return v6;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_2696D3BE8(&v7);
    return 0;
  }
}

unint64_t sub_2696D3B90()
{
  result = qword_2803229A0;
  if (!qword_2803229A0)
  {
    type metadata accessor for MLModelMetadataKey(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803229A0);
  }

  return result;
}

uint64_t sub_2696D3BE8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280322F88, qword_26985AB90);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_2696D3C74()
{
  OUTLINED_FUNCTION_19_1();
  v38 = v1;
  v37 = sub_269852564();
  v2 = OUTLINED_FUNCTION_8(v37);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_3_1();
  v9 = v8 - v7;
  v10 = sub_269852584();
  v11 = OUTLINED_FUNCTION_8(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_3_1();
  v18 = v17 - v16;
  v19 = sub_269851ED4();
  v20 = OUTLINED_FUNCTION_8(v19);
  v22 = v21;
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_3_1();
  v27 = v26 - v25;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323460, &qword_26985A8B8);
  v29 = OUTLINED_FUNCTION_8_9(v28);
  v31 = *(v30 + 64);
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_12_9();
  sub_269851EE4();
  sub_269851EC4();
  (*(v22 + 8))(v27, v19);
  v32 = sub_269852574();
  (*(v13 + 8))(v18, v10);
  sub_269771CD0(v32);

  v33 = sub_269852254();
  if (__swift_getEnumTagSinglePayload(v0, 1, v33) == 1)
  {
    sub_26969B0C0(v0, &qword_280323460, &qword_26985A8B8);
    v34 = 1;
    v35 = v38;
  }

  else
  {
    sub_269852244();
    (*(*(v33 - 8) + 8))(v0, v33);
    v35 = v38;
    sub_269852554();
    (*(v4 + 8))(v9, v37);
    v34 = 0;
  }

  v36 = sub_269852474();
  __swift_storeEnumTagSinglePayload(v35, v34, 1, v36);
  OUTLINED_FUNCTION_21_0();
}

void sub_2696D3F48()
{
  OUTLINED_FUNCTION_19_1();
  v4 = v3;
  v83 = sub_2698520B4();
  v5 = OUTLINED_FUNCTION_8(v83);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_12();
  v81 = v10 - v11;
  OUTLINED_FUNCTION_22_0();
  MEMORY[0x28223BE20](v12);
  v80 = v77 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323468, &qword_26985A8C0);
  v15 = OUTLINED_FUNCTION_8_9(v14);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_12_9();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803242F0, &qword_26985F360);
  v19 = OUTLINED_FUNCTION_8(v18);
  v84 = v20;
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_12();
  v86 = v23 - v24;
  OUTLINED_FUNCTION_22_0();
  MEMORY[0x28223BE20](v25);
  v82 = v77 - v26;
  v85 = sub_269852084();
  v27 = OUTLINED_FUNCTION_8(v85);
  v89 = v28;
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_12();
  v88 = (v31 - v32);
  OUTLINED_FUNCTION_22_0();
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_10_8();
  v34 = 0;
  v35 = *(v4 + 16);
  v87 = MEMORY[0x277D84F90];
  while (v35 != v34)
  {
    v36 = *(v7 + 80);
    OUTLINED_FUNCTION_18_5();
    sub_2696D4538((v4 + v37 + *(v7 + 72) * v34), v1);
    if (__swift_getEnumTagSinglePayload(v1, 1, v18) == 1)
    {
      sub_26969B0C0(v1, &qword_280323468, &qword_26985A8C0);
      ++v34;
    }

    else
    {
      v38 = v82;
      sub_2696D4D04(v1, v82);
      sub_2696D4D04(v38, v86);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v79 = v0;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v47 = *(v87 + 16);
        sub_26977C290();
        v87 = v48;
      }

      v40 = *(v87 + 16);
      v41 = v40 + 1;
      if (v40 >= *(v87 + 24) >> 1)
      {
        v78 = v40 + 1;
        sub_26977C290();
        v41 = v78;
        v87 = v49;
      }

      ++v34;
      *(v87 + 16) = v41;
      v42 = *(v84 + 80);
      OUTLINED_FUNCTION_18_5();
      sub_2696D4D04(v46, v44 + v43 + *(v45 + 72) * v40);
      v0 = v79;
    }
  }

  v50 = sub_2696D4D74(v87);
  v51 = sub_269852464();
  v90 = MEMORY[0x277D84F90];
  v77[0] = v51;
  v52 = *(v51 + 16);
  if (v52)
  {
    v84 = v50;
    v53 = type metadata accessor for Content();
    v54 = *(v89 + 16);
    v55 = v77[0] + ((*(v89 + 80) + 32) & ~*(v89 + 80));
    v86 = *(v89 + 72);
    v87 = v53;
    v78 = v7 + 32;
    v79 = v7 + 16;
    v77[1] = v7 + 8;
    v89 += 16;
    v56 = (v89 - 8);
    v57 = v85;
    do
    {
      v54(v2, v55, v57);
      v58 = v88;
      v54(v88, v2, v57);
      v59 = sub_2696CF2E8(v58);
      if (v59)
      {
        v60 = v59;
        v61 = sub_26977E470(v59);
        if (v62)
        {
          if (*(v84 + 16))
          {
            v63 = sub_26973CEF8(v61, v62);
            v65 = v64;

            if (v65)
            {
              v66 = v83;
              v67 = *(v84 + 56) + *(v7 + 72) * v63;
              v68 = v81;
              (*(v7 + 16))(v81, v67, v83);
              v69 = v80;
              (*(v7 + 32))(v80, v68, v66);
              type metadata accessor for ResultEntity();
              v70 = sub_2698520A4();
              v82 = v71;
              v72 = objc_allocWithZone(swift_getObjCClassFromMetadata());
              v73 = sub_2697C01B0(v70, v82);
              v74 = sub_269852094();
              sub_2696D66F8(v74, v75, v73);
              [v60 setResultEntity_];

              (*(v7 + 8))(v69, v83);
            }
          }

          else
          {
          }
        }

        v57 = v85;
        v76 = (*v56)(v2, v85);
        MEMORY[0x26D645B90](v76);
        if (*((v90 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v90 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_269854CD4();
        }

        sub_269854CF4();
      }

      else
      {
        (*v56)(v2, v57);
      }

      v55 += v86;
      --v52;
    }

    while (v52);
  }

  OUTLINED_FUNCTION_21_0();
}

uint64_t sub_2696D4538@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v75 = a2;
  v73 = sub_269853C34();
  v71 = *(v73 - 8);
  v3 = *(v71 + 64);
  v4 = MEMORY[0x28223BE20](v73);
  v70 = v63 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v72 = v63 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323480, &qword_26985A8D8);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v11 = v63 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = v63 - v12;
  v14 = sub_2698544B4();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323488, &qword_26986AAD0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v19 = v63 - v18;
  v20 = sub_269853B44();
  v74 = *(v20 - 8);
  v21 = *(v74 + 64);
  MEMORY[0x28223BE20](v20);
  v23 = v63 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269852094();
  v79 = 0;
  v77 = 0u;
  v78 = 0u;
  sub_2698544A4();
  sub_2696D683C(&qword_280323490, MEMORY[0x277D5DAD8]);
  v24 = v76;
  sub_2698544C4();
  if (v24)
  {

    __swift_storeEnumTagSinglePayload(v19, 1, 1, v20);
    sub_26969B0C0(v19, &qword_280323488, &qword_26986AAD0);
    goto LABEL_4;
  }

  v69 = v11;
  v26 = v72;
  v25 = v73;
  v76 = a1;
  __swift_storeEnumTagSinglePayload(v19, 0, 1, v20);
  v27 = v74;
  (*(v74 + 32))(v23, v19, v20);
  v32 = sub_269853B54();
  v33 = sub_269853D24();
  if (!v33)
  {
    (*(v27 + 8))(v23, v20);
LABEL_23:

    goto LABEL_4;
  }

  v34 = v33;
  sub_269853DB4();
  if (!*(&v78 + 1))
  {
    (*(v27 + 8))(v23, v20);

    sub_26969B0C0(&v77, &qword_280322F88, qword_26985AB90);
    goto LABEL_4;
  }

  sub_269853DC4();
  if ((swift_dynamicCast() & 1) == 0)
  {
    (*(v27 + 8))(v23, v20);

    goto LABEL_23;
  }

  v63[1] = v34;
  v63[2] = v32;
  v64 = v20;
  v65 = v23;
  v35 = v80;

  v36 = sub_269853BF4();
  v63[0] = v35;

  v37 = *(v36 + 16);
  v38 = v25;
  v39 = v71;
  v66 = v13;
  v40 = v26;
  v41 = v36;
  if (!v37)
  {
LABEL_19:

    v49 = 1;
LABEL_26:
    v50 = v76;
    v51 = v70;
    v52 = v66;
    __swift_storeEnumTagSinglePayload(v66, v49, 1, v38);
    v53 = v69;
    sub_26969B138(v52, v69, &qword_280323480, &qword_26985A8D8);
    if (__swift_getEnumTagSinglePayload(v53, 1, v38) != 1)
    {
      (*(v39 + 32))(v51, v53, v38);
      v54 = v39;
      v55 = v38;
      v56 = sub_269853C14();
      v58 = v57;

      (*(v54 + 8))(v51, v55);
      sub_26969B0C0(v66, &qword_280323480, &qword_26985A8D8);
      (*(v74 + 8))(v65, v64);
      v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803242F0, &qword_26985F360);
      v60 = *(v59 + 48);
      v61 = v75;
      *v75 = v56;
      v61[1] = v58;
      v62 = sub_2698520B4();
      (*(*(v62 - 8) + 16))(v61 + v60, v50, v62);
      v29 = v61;
      v30 = 0;
      v28 = v59;
      return __swift_storeEnumTagSinglePayload(v29, v30, 1, v28);
    }

    sub_26969B0C0(v66, &qword_280323480, &qword_26985A8D8);
    (*(v74 + 8))(v65, v64);
LABEL_4:
    v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803242F0, &qword_26985F360);
    v29 = v75;
    v30 = 1;
    return __swift_storeEnumTagSinglePayload(v29, v30, 1, v28);
  }

  v42 = v37;
  v43 = 0;
  v68 = v36 + ((*(v71 + 80) + 32) & ~*(v71 + 80));
  v67 = v71 + 16;
  v44 = (v71 + 8);
  while (v43 < *(v41 + 16))
  {
    (*(v39 + 16))(v40, v68 + *(v39 + 72) * v43, v38);
    v45 = sub_269853C24();
    if (v46)
    {
      if (v45 == 6516085 && v46 == 0xE300000000000000)
      {

LABEL_25:

        v39 = v71;
        v38 = v25;
        (*(v71 + 32))(v66, v40, v25);
        v49 = 0;
        goto LABEL_26;
      }

      v48 = sub_269855584();

      if (v48)
      {
        goto LABEL_25;
      }
    }

    ++v43;
    v38 = v25;
    result = (*v44)(v40, v25);
    v39 = v71;
    if (v42 == v43)
    {
      goto LABEL_19;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2696D4D04(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803242F0, &qword_26985F360);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2696D4D74(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323470, &qword_26985A8C8);
    v3 = sub_2698553C4();
  }

  else
  {
    v3 = MEMORY[0x277D84F98];
  }

  v6 = v3;
  sub_2696D62F8(a1, 1, &v6);
  v4 = v6;
  if (v1)
  {
  }

  return v4;
}

void sub_2696D4E0C()
{
  OUTLINED_FUNCTION_19_1();
  v0 = sub_2698523F4();
  v1 = OUTLINED_FUNCTION_8(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_3_1();
  v8 = v7 - v6;
  v9 = sub_269852444();
  v10 = *(v9 + 16);
  if (v10)
  {
    v26 = MEMORY[0x277D84F90];
    sub_2698552A4();
    type metadata accessor for UtsSearchParam();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v24 = *(v3 + 16);
    v25 = ObjCClassFromMetadata;
    v12 = *(v3 + 80);
    OUTLINED_FUNCTION_18_5();
    v14 = v9 + v13;
    v16 = *(v15 + 56);
    v17 = (v15 - 8);
    do
    {
      v24(v8, v14, v0);
      v18 = objc_allocWithZone(v25);
      v19 = sub_2697C01B0(0, 0);
      v20 = sub_269851F24();
      sub_2696D676C(v20, v21, v19);
      v22 = sub_2698523E4();
      sub_2696D67D0(v22, v19);
      (*v17)(v8, v0);
      sub_269855284();
      v23 = *(v26 + 16);
      sub_2698552B4();
      sub_2698552C4();
      sub_269855294();
      v14 += v16;
      --v10;
    }

    while (v10);
  }

  OUTLINED_FUNCTION_21_0();
}

void sub_2696D4FC8()
{
  OUTLINED_FUNCTION_19_1();
  v0 = sub_269852534();
  v1 = OUTLINED_FUNCTION_8(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_3_1();
  v8 = (v7 - v6);
  v9 = [objc_allocWithZone(MEMORY[0x277D052B8]) init];
  v10 = [objc_allocWithZone(MEMORY[0x277D052B0]) init];
  OUTLINED_FUNCTION_7_15();
  v11 = sub_269851F24();
  v12 = *(v3 + 8);
  v13 = OUTLINED_FUNCTION_4_15();
  v12(v13);
  OUTLINED_FUNCTION_5_13();
  sub_269854A64();
  v14 = OUTLINED_FUNCTION_15_5();
  OUTLINED_FUNCTION_13_5(v14, sel_setFullPrint_);

  OUTLINED_FUNCTION_7_15();
  sub_269851FD4();
  v15 = OUTLINED_FUNCTION_1_12();
  v12(v15);
  OUTLINED_FUNCTION_5_13();
  sub_269854A64();
  v16 = OUTLINED_FUNCTION_15_5();
  OUTLINED_FUNCTION_13_5(v16, sel_setFullSpeak_);

  OUTLINED_FUNCTION_7_15();
  sub_2698524B4();
  v17 = OUTLINED_FUNCTION_1_12();
  v12(v17);
  OUTLINED_FUNCTION_5_13();
  sub_269854A64();
  v18 = OUTLINED_FUNCTION_15_5();
  OUTLINED_FUNCTION_13_5(v18, sel_setRedactedFullPrint_);

  OUTLINED_FUNCTION_7_15();
  sub_2698524C4();
  v19 = OUTLINED_FUNCTION_1_12();
  v12(v19);
  OUTLINED_FUNCTION_5_13();
  sub_269854A64();
  v20 = OUTLINED_FUNCTION_15_5();
  OUTLINED_FUNCTION_13_5(v20, sel_setRedactedFullSpeak_);

  OUTLINED_FUNCTION_7_15();
  sub_2698521E4();
  v21 = OUTLINED_FUNCTION_1_12();
  v12(v21);
  OUTLINED_FUNCTION_5_13();
  sub_269854A64();
  v22 = OUTLINED_FUNCTION_15_5();
  OUTLINED_FUNCTION_13_5(v22, sel_setSupportingPrint_);

  OUTLINED_FUNCTION_7_15();
  sub_269852144();
  v23 = OUTLINED_FUNCTION_1_12();
  v12(v23);
  OUTLINED_FUNCTION_5_13();
  sub_269854A64();
  v24 = OUTLINED_FUNCTION_15_5();
  OUTLINED_FUNCTION_13_5(v24, sel_setSupportingSpeak_);

  OUTLINED_FUNCTION_7_15();
  sub_2698524E4();
  v25 = OUTLINED_FUNCTION_1_12();
  v12(v25);
  OUTLINED_FUNCTION_5_13();
  sub_269854A64();
  v26 = OUTLINED_FUNCTION_15_5();
  OUTLINED_FUNCTION_13_5(v26, sel_setRedactedSupportingPrint_);

  OUTLINED_FUNCTION_7_15();
  sub_2698524F4();
  v27 = OUTLINED_FUNCTION_1_12();
  v12(v27);
  OUTLINED_FUNCTION_5_13();
  sub_269854A64();
  v28 = OUTLINED_FUNCTION_15_5();
  OUTLINED_FUNCTION_13_5(v28, sel_setRedactedSupportingSpeak_);

  OUTLINED_FUNCTION_7_15();
  sub_2698520D4();
  v29 = OUTLINED_FUNCTION_1_12();
  v12(v29);
  OUTLINED_FUNCTION_5_13();
  sub_269854A64();
  v30 = OUTLINED_FUNCTION_15_5();
  OUTLINED_FUNCTION_13_5(v30, sel_setId_);

  OUTLINED_FUNCTION_7_15();
  LOBYTE(v11) = sub_2698524D4();
  v31 = OUTLINED_FUNCTION_4_15();
  v12(v31);
  [v10 setIsApprovedForGrading_];
  OUTLINED_FUNCTION_7_15();
  LOBYTE(v11) = sub_269852484();
  v32 = OUTLINED_FUNCTION_4_15();
  v12(v32);
  [v10 setSpokenOnly_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323020, qword_26985AEC0);
  v33 = swift_allocObject();
  *(v33 + 16) = xmmword_2698590C0;
  *(v33 + 32) = v10;
  sub_2696D1EC4();
  v34 = v10;
  OUTLINED_FUNCTION_5_13();
  v35 = sub_269854CA4();

  [v9 setDialog_];

  OUTLINED_FUNCTION_7_15();
  sub_2698520D4();
  v36 = OUTLINED_FUNCTION_4_15();
  v12(v36);
  v37 = sub_269854A64();

  [v9 setCatId_];

  OUTLINED_FUNCTION_21_0();
}

void sub_2696D53D0()
{
  OUTLINED_FUNCTION_19_1();
  v69 = v1;
  v2 = sub_269853464();
  v3 = OUTLINED_FUNCTION_8(v2);
  v67 = v4;
  v68 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_3_1();
  v66 = v8 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323498, &qword_26985A8E0);
  v10 = OUTLINED_FUNCTION_8_9(v9);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_12();
  v65 = v13 - v14;
  OUTLINED_FUNCTION_22_0();
  MEMORY[0x28223BE20](v15);
  v64 = v57 - v16;
  OUTLINED_FUNCTION_22_0();
  MEMORY[0x28223BE20](v17);
  v73 = v57 - v18;
  OUTLINED_FUNCTION_22_0();
  MEMORY[0x28223BE20](v19);
  v72 = v57 - v20;
  OUTLINED_FUNCTION_22_0();
  MEMORY[0x28223BE20](v21);
  v70 = v57 - v22;
  v23 = sub_269853094();
  v24 = OUTLINED_FUNCTION_4_3(v23);
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_3_1();
  v71 = v28 - v27;
  v29 = sub_269852534();
  v30 = OUTLINED_FUNCTION_8(v29);
  v32 = v31;
  v34 = *(v33 + 64);
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_12();
  v37 = v35 - v36;
  v39 = MEMORY[0x28223BE20](v38);
  v41 = v57 - v40;
  v42 = MEMORY[0x28223BE20](v39);
  v44 = v57 - v43;
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_10_8();
  sub_269852404();
  v45 = sub_2698520D4();
  v62 = v46;
  v63 = v45;
  v47 = *(v32 + 8);
  v47(v0, v29);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803234A0, &unk_26985D8D0);
  v48 = *(sub_269853324() - 8);
  v49 = *(v48 + 72);
  v61 = (*(v48 + 80) + 32) & ~*(v48 + 80);
  v60 = swift_allocObject();
  *(v60 + 16) = xmmword_269857710;
  sub_269852404();
  v50 = sub_2698520D4();
  v58 = v51;
  v59 = v50;
  v47(v44, v29);
  sub_269852404();
  sub_269851FD4();
  OUTLINED_FUNCTION_19_3();
  v47(v41, v29);
  OUTLINED_FUNCTION_24_1();
  sub_269852404();
  sub_269851F24();
  OUTLINED_FUNCTION_19_3();
  v47(v41, v29);
  v52 = v70;
  OUTLINED_FUNCTION_24_1();
  __swift_storeEnumTagSinglePayload(v52, 0, 1, v23);
  sub_269852404();
  v57[3] = sub_269852484();
  v47(v41, v29);
  __swift_storeEnumTagSinglePayload(v72, 1, 1, v23);
  OUTLINED_FUNCTION_11_9(v73, 1);
  sub_2698524C4();
  v53 = OUTLINED_FUNCTION_17_5();
  (v47)(v53);
  v54 = v64;
  OUTLINED_FUNCTION_21_4();
  OUTLINED_FUNCTION_11_9(v54, 0);
  sub_2698524B4();
  v55 = OUTLINED_FUNCTION_17_5();
  (v47)(v55);
  v56 = v65;
  OUTLINED_FUNCTION_21_4();
  OUTLINED_FUNCTION_11_9(v56, 0);
  sub_2698524D4();
  v47(v37, v29);
  sub_2698532F4();
  (*(v67 + 104))(v66, *MEMORY[0x277D5BF60], v68);
  sub_269853284();
  OUTLINED_FUNCTION_21_0();
}

void sub_2696D58DC()
{
  OUTLINED_FUNCTION_19_1();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803233C8, &unk_26985E990);
  v5 = OUTLINED_FUNCTION_8_9(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_12_9();
  v8 = sub_269852084();
  v9 = OUTLINED_FUNCTION_8(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_3_1();
  v16 = v15 - v14;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803234A8, &unk_26985A8E8);
  v18 = OUTLINED_FUNCTION_8_9(v17);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_12();
  v23 = v21 - v22;
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_10_8();
  v25 = sub_269852464();
  v44 = v11;
  v45 = *(v25 + 16);
  if (v45)
  {
    v40 = v1;
    v41 = v23;
    v42 = v3;
    v26 = 0;
    v27 = *(v11 + 80);
    OUTLINED_FUNCTION_18_5();
    v29 = v25 + v28;
    v30 = v11 + 16;
    v43 = *MEMORY[0x277D393A8];
    v31 = (v11 + 8);
    while (v26 < *(v25 + 16))
    {
      (*(v11 + 16))(v16, v29 + *(v11 + 72) * v26, v8);
      sub_269852064();
      v32 = sub_269852024();
      if (__swift_getEnumTagSinglePayload(v0, 1, v32) == 1)
      {
        sub_26969B0C0(v0, &qword_2803233C8, &unk_26985E990);
      }

      else
      {
        v33 = v8;
        v34 = v30;
        v35 = v29;
        v36 = *(v32 - 8);
        if ((*(v36 + 88))(v0, v32) == v43)
        {

          (*(v36 + 8))(v0, v32);
          v1 = v40;
          v8 = v33;
          (*(v44 + 32))(v40, v16, v33);
          v37 = 0;
          v23 = v41;
          v3 = v42;
          goto LABEL_12;
        }

        (*(v36 + 8))(v0, v32);
        v29 = v35;
        v30 = v34;
        v8 = v33;
        v11 = v44;
      }

      ++v26;
      (*v31)(v16, v8);
      if (v45 == v26)
      {

        v37 = 1;
        v23 = v41;
        v3 = v42;
        v1 = v40;
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  else
  {

    v37 = 1;
LABEL_12:
    __swift_storeEnumTagSinglePayload(v1, v37, 1, v8);
    sub_26969B138(v1, v23, &qword_2803234A8, &unk_26985A8E8);
    if (__swift_getEnumTagSinglePayload(v23, 1, v8) == 1)
    {
      sub_26969B0C0(v1, &qword_2803234A8, &unk_26985A8E8);
      sub_26969B0C0(v23, &qword_2803234A8, &unk_26985A8E8);
      v38 = 1;
    }

    else
    {
      sub_269852074();
      sub_26969B0C0(v1, &qword_2803234A8, &unk_26985A8E8);
      (*(v44 + 8))(v23, v8);
      v38 = 0;
    }

    v39 = sub_269852104();
    __swift_storeEnumTagSinglePayload(v3, v38, 1, v39);
    OUTLINED_FUNCTION_21_0();
  }
}

void sub_2696D5CEC()
{
  OUTLINED_FUNCTION_19_1();
  v0 = sub_2698525A4();
  v1 = OUTLINED_FUNCTION_8(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_12();
  v8 = v6 - v7;
  MEMORY[0x28223BE20](v9);
  v11 = v16 - v10;
  sub_269851FD4();
  OUTLINED_FUNCTION_19_3();

  OUTLINED_FUNCTION_20_3();
  if (!v12)
  {
    sub_269851F24();
    OUTLINED_FUNCTION_19_3();

    OUTLINED_FUNCTION_20_3();
    if (!v13)
    {
      sub_2698525C4();
      v14 = *(v3 + 104);
      v14(v8, *MEMORY[0x277D39C40], v0);
      sub_2696D683C(&qword_2803234B0, MEMORY[0x277D39C50]);
      OUTLINED_FUNCTION_23_1();
      OUTLINED_FUNCTION_22_2();
      v15 = *(v3 + 8);
      v15(v8, v0);
      v15(v11, v0);
      if (v16[1] != v16[0])
      {
        sub_2698525C4();
        v14(v8, *MEMORY[0x277D39C28], v0);
        OUTLINED_FUNCTION_23_1();
        OUTLINED_FUNCTION_22_2();
        v15(v8, v0);
        v15(v11, v0);
      }
    }
  }

  OUTLINED_FUNCTION_21_0();
}

uint64_t sub_2696D5F00()
{
  v0 = sub_2698525A4();
  v1 = OUTLINED_FUNCTION_8(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_3_1();
  v8 = v7 - v6;
  sub_269855204();

  v9 = sub_269851FD4();
  MEMORY[0x26D645A60](v9);

  MEMORY[0x26D645A60](0x69746E656469202CLL, 0xEE00203A72656966);
  v10 = sub_269851F24();
  MEMORY[0x26D645A60](v10);

  MEMORY[0x26D645A60](0x203A65707974202CLL, 0xE800000000000000);
  sub_2698525C4();
  v11 = sub_2696D6094();
  v13 = v12;
  (*(v3 + 8))(v8, v0);
  MEMORY[0x26D645A60](v11, v13);

  return 0x203A797469746E65;
}

uint64_t sub_2696D6094()
{
  v1 = v0;
  v2 = sub_2698525A4();
  v3 = OUTLINED_FUNCTION_8(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_3_1();
  v10 = (v9 - v8);
  (*(v5 + 16))(v9 - v8, v1, v2);
  v11 = (*(v5 + 88))(v10, v2);
  if (v11 == *MEMORY[0x277D39C38])
  {
    (*(v5 + 96))(v10, v2);
    v12 = *v10;
    sub_269855204();

    v13 = sub_269855544();
    MEMORY[0x26D645A60](v13);

    return 0xD000000000000017;
  }

  else if (v11 == *MEMORY[0x277D39C48])
  {
    return 0x6E776F6E6B6E75;
  }

  else if (v11 == *MEMORY[0x277D39C30])
  {
    return 0x6669636570736E75;
  }

  else if (v11 == *MEMORY[0x277D39C40])
  {
    return 0x767420656C707061;
  }

  else if (v11 == *MEMORY[0x277D39C28])
  {
    return 0x69736976656C6574;
  }

  else
  {
    (*(v5 + 8))(v10, v2);
    return 0x206E776F6E6B6E75;
  }
}

uint64_t sub_2696D62F8(uint64_t a1, char a2, uint64_t *a3)
{
  v57 = a3;
  v5 = sub_2698520B4();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v47 = v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = v46 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803242F0, &qword_26985F360);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12);
  v55 = (v46 - v16);
  v54 = *(a1 + 16);
  if (!v54)
  {
  }

  v17 = 0;
  v53 = a1 + ((*(v15 + 80) + 32) & ~*(v15 + 80));
  v18 = *(v14 + 48);
  v51 = v11;
  v52 = v18;
  v56 = (v6 + 32);
  v46[2] = v6 + 8;
  v46[3] = v6 + 16;
  v46[1] = v6 + 40;
  v48 = v15;
  v49 = a1;
  v50 = v6;
  while (v17 < *(a1 + 16))
  {
    v19 = v55;
    sub_26969B138(v53 + *(v15 + 72) * v17, v55, &qword_2803242F0, &qword_26985F360);
    v21 = *v19;
    v20 = v19[1];
    v22 = *v56;
    v23 = v19 + v52;
    v24 = v5;
    (*v56)(v11, v23, v5);
    v25 = *v57;
    v27 = sub_26973CEF8(v21, v20);
    v28 = *(v25 + 16);
    v29 = (v26 & 1) == 0;
    v30 = v28 + v29;
    if (__OFADD__(v28, v29))
    {
      goto LABEL_18;
    }

    v31 = v26;
    if (*(v25 + 24) >= v30)
    {
      if ((a2 & 1) == 0)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323478, &qword_26985A8D0);
        sub_2698552F4();
      }
    }

    else
    {
      v32 = v57;
      sub_26980E34C(v30, a2 & 1);
      v33 = *v32;
      v34 = sub_26973CEF8(v21, v20);
      if ((v31 & 1) != (v35 & 1))
      {
        goto LABEL_20;
      }

      v27 = v34;
    }

    v36 = *v57;
    if (v31)
    {
      v37 = v50;
      v38 = *(v50 + 72) * v27;
      v39 = v47;
      v5 = v24;
      (*(v50 + 16))(v47, v36[7] + v38, v24);
      v11 = v51;
      (*(v37 + 8))(v51, v24);

      (*(v37 + 40))(v36[7] + v38, v39, v24);
    }

    else
    {
      v36[(v27 >> 6) + 8] |= 1 << v27;
      v40 = (v36[6] + 16 * v27);
      *v40 = v21;
      v40[1] = v20;
      v41 = v36[7] + *(v50 + 72) * v27;
      v11 = v51;
      v5 = v24;
      v22(v41, v51, v24);
      v42 = v36[2];
      v43 = __OFADD__(v42, 1);
      v44 = v42 + 1;
      if (v43)
      {
        goto LABEL_19;
      }

      v36[2] = v44;
    }

    ++v17;
    a2 = 1;
    v15 = v48;
    a1 = v49;
    if (v54 == v17)
    {
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  result = sub_2698555F4();
  __break(1u);
  return result;
}

void sub_2696D66F8(uint64_t a1, unint64_t a2, void *a3)
{
  v6 = sub_269851C84();
  sub_2696C1F3C(a1, a2);
  [a3 setUsoEntity_];
}

void sub_2696D676C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_269854A64();

  [a3 setKey_];
}

void sub_2696D67D0(uint64_t a1, void *a2)
{
  v3 = sub_269854CA4();

  [a2 setValues_];
}

uint64_t sub_2696D683C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t OUTLINED_FUNCTION_7_15()
{

  return sub_269852404();
}

uint64_t OUTLINED_FUNCTION_11_9(uint64_t a1, uint64_t a2)
{
  __swift_storeEnumTagSinglePayload(a1, a2, 1, v2);

  return sub_269852404();
}

id OUTLINED_FUNCTION_13_5(uint64_t a1, const char *a2)
{

  return [v3 a2];
}

uint64_t OUTLINED_FUNCTION_15_5()
{
}

uint64_t OUTLINED_FUNCTION_21_4()
{

  return sub_269853074();
}

uint64_t OUTLINED_FUNCTION_22_2()
{

  return sub_269854C44();
}

uint64_t OUTLINED_FUNCTION_23_1()
{

  return sub_269854C44();
}

uint64_t OUTLINED_FUNCTION_24_1()
{

  return sub_269853074();
}

id sub_2696D6A0C(uint64_t a1, uint64_t a2)
{
  v4 = sub_269851DA4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v10 = objc_allocWithZone(MEMORY[0x277D47948]);
  v11 = v9;
  v12 = [v10 init];
  v13 = *MEMORY[0x277D48400];
  v14 = sub_269854A94();
  sub_2696C97B8(v14, v15, v12, &selRef_setOrigin_);
  sub_2696C97B8(a1, a2, v12, &selRef_setUtterance_);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323020, qword_26985AEC0);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_2698590C0;
  *(v16 + 32) = v12;
  v17 = v12;
  sub_2696D6BD4(v16, v11);
  sub_269851D94();
  v18 = sub_269851D54();
  v20 = v19;
  (*(v5 + 8))(v8, v4);
  sub_2697336C8(v18, v20, v11);

  return v11;
}

void sub_2696D6BD4(uint64_t a1, void *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_2803234B8, &qword_26985A8F8);
  v3 = sub_269854CA4();

  [a2 setCommands_];
}

void sub_2696D6C54()
{
  v0 = sub_269854534();
  v1 = sub_26975004C(v0);
  for (i = 0; ; ++i)
  {
    if (v1 == i)
    {
LABEL_10:

      return;
    }

    if ((v0 & 0xC000000000000001) != 0)
    {
      v3 = MEMORY[0x26D646120](i, v0);
    }

    else
    {
      if (i >= *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_12;
      }

      v3 = *(v0 + 8 * i + 32);
    }

    v4 = v3;
    if (__OFADD__(i, 1))
    {
      break;
    }

    sub_269854554();
    if (swift_dynamicCastClass())
    {
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_12:
  __break(1u);
}

void sub_2696D6D30(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = v3;
  v8 = sub_2698548D4();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_269854A64();
  v14 = [v4 experimentIdentifiersWithNamespaceName_];

  if (v14)
  {
    v15 = [v14 experimentId];
    v16 = sub_269854A94();
    v18 = v17;

    v31[1] = [v14 deploymentId];
    v19 = sub_269855544();
    v21 = v20;
    v22 = [v14 treatmentId];
    v23 = sub_269854A94();
    v25 = v24;
  }

  else
  {
    if (qword_2803226F0 != -1)
    {
      swift_once();
    }

    v26 = __swift_project_value_buffer(v8, qword_28033D940);
    (*(v9 + 16))(v12, v26, v8);

    v27 = sub_2698548B4();
    v28 = sub_269854F24();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v32 = v30;
      *v29 = 136315138;
      *(v29 + 4) = sub_26974F520(a1, a2, &v32);
      _os_log_impl(&dword_269684000, v27, v28, "Unable to read TRIClient experimentIdentifiers for %s", v29, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v30);
      MEMORY[0x26D647170](v30, -1, -1);
      MEMORY[0x26D647170](v29, -1, -1);
    }

    (*(v9 + 8))(v12, v8);
    v16 = 0;
    v18 = 0;
    v19 = 0;
    v21 = 0;
    v23 = 0;
    v25 = 0;
  }

  *a3 = v16;
  a3[1] = v18;
  a3[2] = v19;
  a3[3] = v21;
  a3[4] = v23;
  a3[5] = v25;
}

double sub_2696D7028@<D0>(uint64_t a1@<X0>, unint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v5 = *v3;
  sub_2696D6D30(a1, a2, v8);
  v6 = v8[1];
  *a3 = v8[0];
  a3[1] = v6;
  result = *&v9;
  a3[2] = v9;
  return result;
}

uint64_t sub_2696D706C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = sub_269854404();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();

  return sub_2698543D4();
}

uint64_t sub_2696D70E0@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277D553D8];
  v3 = sub_269854414();
  (*(*(v3 - 8) + 104))(a1, v2, v3);

  return __swift_storeEnumTagSinglePayload(a1, 0, 1, v3);
}

uint64_t sub_2696D7174()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

uint64_t sub_2696D7290@<X0>(uint64_t a1@<X8>)
{
  v108 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323360, &unk_26985AB80);
  v2 = OUTLINED_FUNCTION_8_9(v1);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v94 = &v94 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v101 = &v94 - v7;
  OUTLINED_FUNCTION_2_13();
  v100 = sub_269851EF4();
  v8 = OUTLINED_FUNCTION_8(v100);
  v98 = v9;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_3_1();
  v96 = v13 - v12;
  OUTLINED_FUNCTION_2_13();
  v99 = sub_269853874();
  v14 = OUTLINED_FUNCTION_8(v99);
  v97 = v15;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_3_1();
  v95 = v19 - v18;
  OUTLINED_FUNCTION_2_13();
  v20 = sub_2698538A4();
  v21 = OUTLINED_FUNCTION_8(v20);
  v103 = v22;
  v104 = v21;
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_3_1();
  v102 = v26 - v25;
  OUTLINED_FUNCTION_2_13();
  v107 = type metadata accessor for MediaNLIntent();
  v27 = OUTLINED_FUNCTION_4_3(v107);
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_3_1();
  v106 = v31 - v30;
  OUTLINED_FUNCTION_2_13();
  v32 = sub_269853F44();
  v33 = OUTLINED_FUNCTION_8(v32);
  v105 = v34;
  v36 = *(v35 + 64);
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_3_1();
  v39 = v38 - v37;
  v40 = sub_2698538B4();
  v41 = OUTLINED_FUNCTION_8(v40);
  v43 = v42;
  v45 = *(v44 + 64);
  v46 = MEMORY[0x28223BE20](v41);
  v48 = (&v94 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0));
  v49 = MEMORY[0x28223BE20](v46);
  v51 = &v94 - v50;
  v52 = MEMORY[0x28223BE20](v49);
  v54 = &v94 - v53;
  v55 = MEMORY[0x28223BE20](v52);
  v57 = &v94 - v56;
  MEMORY[0x28223BE20](v55);
  v59 = &v94 - v58;
  sub_269853844();
  v60 = (*(v43 + 88))(v59, v40);
  if (v60 != *MEMORY[0x277D5C128])
  {
    if (v60 == *MEMORY[0x277D5C150])
    {
      OUTLINED_FUNCTION_25_1();
      v65 = v40;
      v66(v54, v59, v40);
      OUTLINED_FUNCTION_4_13();
      v67(v54, v40);
      v68 = v103;
      v69 = *(v103 + 32);
      v70 = OUTLINED_FUNCTION_27_1();
      v71(v70);
      if (sub_269853884() == 0xD00000000000002ALL && 0x800000026987A040 == v72)
      {
      }

      else
      {
        v74 = sub_269855584();

        if ((v74 & 1) == 0)
        {
          v75 = *(v68 + 8);
          v76 = OUTLINED_FUNCTION_27_1();
          v77(v76);
          goto LABEL_25;
        }
      }

      sub_269853004();
    }

    else
    {
      if (v60 != *MEMORY[0x277D5C140])
      {
        v65 = v40;
        if (v60 == *MEMORY[0x277D5C148])
        {
          OUTLINED_FUNCTION_25_1();
          v85(v48, v59, v40);
          OUTLINED_FUNCTION_4_13();
          v86(v48, v40);
          v87 = *v48;
          sub_2696D6C54();
          if (v88)
          {
            v89 = v88;
            v90 = v94;
            sub_269854544();

            v91 = 0;
          }

          else
          {
            v91 = 1;
            v90 = v94;
          }

          v92 = sub_269852474();
          __swift_storeEnumTagSinglePayload(v90, v91, 1, v92);
          sub_2696D7A24(v90, v108);

          sub_26969B0C0(v90, &qword_280323360, &unk_26985AB80);
          return (*(v43 + 8))(v59, v65);
        }

LABEL_25:
        sub_269853014();
        return (*(v43 + 8))(v59, v65);
      }

      OUTLINED_FUNCTION_25_1();
      v65 = v40;
      v78(v51, v59, v40);
      OUTLINED_FUNCTION_4_13();
      v79(v51, v40);
      v68 = v97;
      (*(v97 + 32))(v95, v51, v99);
      v80 = v96;
      sub_269853864();
      v81 = v101;
      sub_2696D3C74();
      (*(v98 + 8))(v80, v100);
      sub_2696D7A24(v81, v108);
      sub_26969B0C0(v81, &qword_280323360, &unk_26985AB80);
    }

    v82 = *(v68 + 8);
    v83 = OUTLINED_FUNCTION_27_1();
    v84(v83);
    return (*(v43 + 8))(v59, v65);
  }

  OUTLINED_FUNCTION_25_1();
  v61(v57, v59, v40);
  OUTLINED_FUNCTION_4_13();
  v62(v57, v40);
  v63 = v105;
  (*(v105 + 32))(v39, v57, v32);
  v64 = v106;
  (*(v63 + 16))(v106, v39, v32);
  v65 = v40;
  if (qword_280322628 != -1)
  {
    OUTLINED_FUNCTION_12_10();
  }

  sub_2696DAEF8();
  sub_269853D54();
  if (v109 < 2u)
  {
    sub_269853004();
  }

  else if (v109 == 2)
  {
    sub_269852FF4();
  }

  else
  {
    sub_269853014();
  }

  sub_2696CC460(v64);
  (*(v63 + 8))(v39, v32);
  return (*(v43 + 8))(v59, v65);
}

uint64_t sub_2696D7A24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v40[1] = a2;
  v3 = sub_269852594();
  v4 = OUTLINED_FUNCTION_8(v3);
  v40[0] = v5;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_3_1();
  v10 = v9 - v8;
  v11 = sub_2698523C4();
  v12 = OUTLINED_FUNCTION_8(v11);
  v14 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_3_1();
  v19 = v18 - v17;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323360, &unk_26985AB80);
  v21 = OUTLINED_FUNCTION_8_9(v20);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21);
  v25 = v40 - v24;
  v26 = sub_269852474();
  v27 = OUTLINED_FUNCTION_8(v26);
  v29 = v28;
  v31 = *(v30 + 64);
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_3_1();
  v34 = v33 - v32;
  sub_2696DAE88(a1, v25);
  if (__swift_getEnumTagSinglePayload(v25, 1, v26) == 1)
  {
    sub_26969B0C0(v25, &qword_280323360, &unk_26985AB80);
    return sub_269853014();
  }

  else
  {
    (*(v29 + 32))(v34, v25, v26);
    sub_269852424();
    sub_269852364();
    (*(v14 + 8))(v19, v11);
    v36 = v40[0];
    v37 = (*(v40[0] + 88))(v10, v3);
    if (v37 == *MEMORY[0x277D39B10] || v37 == *MEMORY[0x277D39B08])
    {
      sub_269853004();
      return (*(v29 + 8))(v34, v26);
    }

    else
    {
      v39 = (v29 + 8);
      if (v37 == *MEMORY[0x277D39B18])
      {
        sub_269852FF4();
        return (*v39)(v34, v26);
      }

      else
      {
        sub_269853014();
        (*v39)(v34, v26);
        return (*(v36 + 8))(v10, v3);
      }
    }
  }
}

uint64_t sub_2696D7D40()
{
  OUTLINED_FUNCTION_2_7();
  v1[9] = v2;
  v1[10] = v0;
  v1[8] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323540, &qword_26985B830);
  OUTLINED_FUNCTION_8_9(v4);
  v6 = *(v5 + 64);
  v1[11] = OUTLINED_FUNCTION_4_7();
  v7 = sub_2698548D4();
  v1[12] = v7;
  OUTLINED_FUNCTION_5_12(v7);
  v1[13] = v8;
  v10 = *(v9 + 64);
  v1[14] = OUTLINED_FUNCTION_4_7();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323360, &unk_26985AB80);
  OUTLINED_FUNCTION_8_9(v11);
  v13 = *(v12 + 64);
  v1[15] = OUTLINED_FUNCTION_37_0();
  v1[16] = swift_task_alloc();
  v14 = sub_269851EF4();
  v1[17] = v14;
  OUTLINED_FUNCTION_5_12(v14);
  v1[18] = v15;
  v17 = *(v16 + 64);
  v1[19] = OUTLINED_FUNCTION_4_7();
  v18 = sub_269853874();
  v1[20] = v18;
  OUTLINED_FUNCTION_5_12(v18);
  v1[21] = v19;
  v21 = *(v20 + 64);
  v1[22] = OUTLINED_FUNCTION_4_7();
  v22 = sub_2698538A4();
  v1[23] = v22;
  OUTLINED_FUNCTION_5_12(v22);
  v1[24] = v23;
  v25 = *(v24 + 64);
  v1[25] = OUTLINED_FUNCTION_4_7();
  v26 = type metadata accessor for MediaNLIntent();
  v1[26] = v26;
  OUTLINED_FUNCTION_8_9(v26);
  v28 = *(v27 + 64);
  v1[27] = OUTLINED_FUNCTION_4_7();
  v29 = sub_269853F44();
  v1[28] = v29;
  OUTLINED_FUNCTION_5_12(v29);
  v1[29] = v30;
  v32 = *(v31 + 64);
  v1[30] = OUTLINED_FUNCTION_4_7();
  v33 = sub_2698538B4();
  v1[31] = v33;
  OUTLINED_FUNCTION_5_12(v33);
  v1[32] = v34;
  v36 = *(v35 + 64);
  v1[33] = OUTLINED_FUNCTION_37_0();
  v1[34] = swift_task_alloc();
  v1[35] = swift_task_alloc();
  v1[36] = swift_task_alloc();
  v1[37] = swift_task_alloc();
  v37 = sub_269853414();
  v1[38] = v37;
  OUTLINED_FUNCTION_5_12(v37);
  v1[39] = v38;
  v40 = *(v39 + 64);
  v1[40] = OUTLINED_FUNCTION_37_0();
  v1[41] = swift_task_alloc();
  v1[42] = swift_task_alloc();
  v1[43] = swift_task_alloc();
  v41 = OUTLINED_FUNCTION_3_16();

  return MEMORY[0x2822009F8](v41, v42, v43);
}

uint64_t sub_2696D808C()
{
  v1 = *(v0 + 296);
  v2 = *(v0 + 248);
  v3 = *(v0 + 256);
  v4 = *(v0 + 72);
  sub_269853844();
  v5 = *(v3 + 88);
  v6 = OUTLINED_FUNCTION_22_3();
  v8 = v7(v6);
  if (v8 == *MEMORY[0x277D5C128])
  {
    v10 = *(v0 + 288);
    v9 = *(v0 + 296);
    v11 = *(v0 + 256);
    v13 = *(v0 + 232);
    v12 = *(v0 + 240);
    v15 = *(v0 + 216);
    v14 = *(v0 + 224);
    v16 = OUTLINED_FUNCTION_18_6(v11);
    v17(v16);
    v18 = *(v11 + 96);
    v19 = OUTLINED_FUNCTION_7_16();
    v20(v19);
    (*(v13 + 32))(v12, v10, v14);
    v21 = *(v13 + 16);
    v22 = OUTLINED_FUNCTION_27_1();
    v23(v22);
    if (qword_280322628 != -1)
    {
      OUTLINED_FUNCTION_12_10();
    }

    v24 = *(v0 + 208);
    v25 = *(v0 + 216);
    sub_2696DAEF8();
    sub_269853D54();
    v26 = *(v0 + 352);
    if (v26 == 7)
    {
      v28 = *(v0 + 232);
      v27 = *(v0 + 240);
      v29 = *(v0 + 224);
      sub_2696CC460(*(v0 + 216));
      v30 = *(v28 + 8);
      v31 = OUTLINED_FUNCTION_7_16();
      v32(v31);
LABEL_6:
      v33 = MEMORY[0x277D5BED0];
LABEL_31:
      v79 = *(v0 + 344);
      v80 = *(v0 + 312);
      (*(v80 + 104))(*(v0 + 336), *v33, *(v0 + 304));
      v81 = *(v80 + 32);
      v82 = OUTLINED_FUNCTION_7_16();
      v83(v82);
      goto LABEL_32;
    }

    v48 = sub_2697A9738(v26);
    v51 = *(v0 + 232);
    v50 = *(v0 + 240);
    v53 = *(v0 + 216);
    v52 = *(v0 + 224);
    if (v48 == 7562617 && v49 == 0xE300000000000000)
    {

      sub_2696CC460(v53);
      v76 = *(v51 + 8);
      v77 = OUTLINED_FUNCTION_7_16();
      v78(v77);
    }

    else
    {
      v55 = sub_269855584();

      sub_2696CC460(v53);
      v56 = *(v51 + 8);
      v57 = OUTLINED_FUNCTION_7_16();
      v58(v57);
      if ((v55 & 1) == 0)
      {
        goto LABEL_6;
      }
    }

    v33 = MEMORY[0x277D5BED8];
    goto LABEL_31;
  }

  if (v8 != *MEMORY[0x277D5C150])
  {
    if (v8 == *MEMORY[0x277D5C140])
    {
      v59 = *(v0 + 272);
      v60 = *(v0 + 248);
      v61 = *(v0 + 256);
      v62 = *(v0 + 168);
      v63 = *(v0 + 176);
      v65 = *(v0 + 152);
      v64 = *(v0 + 160);
      v66 = *(v0 + 144);
      v176 = *(v0 + 136);
      v179 = *(v0 + 328);
      v67 = *(v0 + 128);
      (*(v61 + 16))(v59, *(v0 + 296), v60);
      (*(v61 + 96))(v59, v60);
      (*(v62 + 32))(v63, v59, v64);
      sub_269853864();
      sub_2696D3C74();
      (*(v66 + 8))(v65, v176);
      sub_2696D8AD8(v67, v179);
      v143 = *(v0 + 344);
      v144 = *(v0 + 328);
      v145 = *(v0 + 304);
      v146 = *(v0 + 312);
      v148 = *(v0 + 168);
      v147 = *(v0 + 176);
      v149 = *(v0 + 160);
      sub_26969B0C0(*(v0 + 128), &qword_280323360, &unk_26985AB80);
      (*(v148 + 8))(v147, v149);
      v150 = *(v146 + 32);
      v151 = OUTLINED_FUNCTION_7_16();
      v152(v151);
LABEL_32:
      v85 = *(v0 + 336);
      v84 = *(v0 + 344);
      v86 = *(v0 + 320);
      v87 = *(v0 + 328);
      v88 = *(v0 + 304);
      v89 = *(v0 + 312);
      v160 = *(v0 + 288);
      v161 = *(v0 + 280);
      v162 = *(v0 + 272);
      v164 = *(v0 + 264);
      v166 = *(v0 + 240);
      v168 = *(v0 + 216);
      v170 = *(v0 + 200);
      v172 = *(v0 + 176);
      v90 = *(v0 + 152);
      v175 = *(v0 + 128);
      v177 = *(v0 + 120);
      v180 = *(v0 + 112);
      v91 = *(v0 + 88);
      v92 = *(v0 + 64);
      (*(*(v0 + 256) + 8))(*(v0 + 296), *(v0 + 248));
      v93 = *(v89 + 16);
      v94 = OUTLINED_FUNCTION_7_16();
      v95(v94);
      __swift_storeEnumTagSinglePayload(v91, 0, 1, v88);
      sub_269853834();
      v96 = *(v89 + 8);
      v97 = OUTLINED_FUNCTION_22_3();
      v98(v97);

      OUTLINED_FUNCTION_7_7();
      goto LABEL_45;
    }

    if (v8 == *MEMORY[0x277D5C148])
    {
      v100 = *(v0 + 296);
      v102 = *(v0 + 256);
      v101 = *(v0 + 264);
      v103 = *(v0 + 248);
      v104 = OUTLINED_FUNCTION_18_6(v102);
      v105(v104);
      v106 = *(v102 + 96);
      v107 = OUTLINED_FUNCTION_7_16();
      v108(v107);
      v109 = *v101;
      sub_2696D6C54();
      if (v110)
      {
        v111 = v110;
        v112 = *(v0 + 120);
        sub_269854544();

        v113 = 0;
      }

      else
      {
        v113 = 1;
      }

      v153 = *(v0 + 320);
      v154 = *(v0 + 120);
      v155 = sub_269852474();
      __swift_storeEnumTagSinglePayload(v154, v113, 1, v155);
      sub_2696D8AD8(v154, v153);
      v156 = *(v0 + 344);
      v158 = *(v0 + 312);
      v157 = *(v0 + 320);
      v159 = *(v0 + 304);
      sub_26969B0C0(*(v0 + 120), &qword_280323360, &unk_26985AB80);

      (*(v158 + 32))(v156, v157, v159);
      goto LABEL_32;
    }

    goto LABEL_36;
  }

  v34 = *(v0 + 296);
  v35 = *(v0 + 280);
  v36 = *(v0 + 256);
  v38 = *(v0 + 192);
  v37 = *(v0 + 200);
  v39 = *(v0 + 184);
  v40 = OUTLINED_FUNCTION_18_6(v36);
  v41(v40);
  v42 = *(v36 + 96);
  v43 = OUTLINED_FUNCTION_7_16();
  v44(v43);
  (*(v38 + 32))(v37, v35, v39);
  if (sub_269853884() == 0xD00000000000002ALL && 0x800000026987A040 == v45)
  {
  }

  else
  {
    v47 = sub_269855584();

    if ((v47 & 1) == 0)
    {
      (*(*(v0 + 192) + 8))(*(v0 + 200), *(v0 + 184));
LABEL_36:
      if (qword_2803226E0 != -1)
      {
        OUTLINED_FUNCTION_0_10();
      }

      v115 = *(v0 + 104);
      v114 = *(v0 + 112);
      v116 = *(v0 + 96);
      v117 = __swift_project_value_buffer(v116, qword_28033D910);
      (*(v115 + 16))(v114, v117, v116);
      v118 = sub_2698548B4();
      v119 = sub_269854F24();
      if (os_log_type_enabled(v118, v119))
      {
        *swift_slowAlloc() = 0;
        OUTLINED_FUNCTION_31_0(&dword_269684000, v120, v121, "Unsupported parse type");
        OUTLINED_FUNCTION_10();
      }

      v123 = *(v0 + 104);
      v122 = *(v0 + 112);
      v124 = *(v0 + 96);

      v125 = *(v123 + 8);
      v126 = OUTLINED_FUNCTION_22_3();
      v127(v126);
      sub_2696BAE9C();
      OUTLINED_FUNCTION_20_4();
      swift_allocError();
      OUTLINED_FUNCTION_5_14(v128, 13);
      swift_willThrow();
      goto LABEL_44;
    }
  }

  v68 = *(v0 + 200);
  v69 = sub_269853894();
  if (v69)
  {
    sub_26981CFD4(0xD000000000000011, 0x800000026987CD50, v69);

    if (*(v0 + 40))
    {
      if (swift_dynamicCast())
      {
        v70 = *(v0 + 48);
        v71 = *(v0 + 56);
        v72 = sub_2696F4A14();
        if (v72 != 2)
        {
          v73 = v72;
          v74 = *(v0 + 312);
          (*(*(v0 + 192) + 8))(*(v0 + 200), *(v0 + 184));
          if (v73)
          {
            v75 = MEMORY[0x277D5BED0];
          }

          else
          {
            v75 = MEMORY[0x277D5BED8];
          }

          (*(v74 + 104))(*(v0 + 344), *v75, *(v0 + 304));
          goto LABEL_32;
        }
      }

      goto LABEL_43;
    }
  }

  else
  {
    *(v0 + 16) = 0u;
    *(v0 + 32) = 0u;
  }

  sub_26969B0C0(v0 + 16, &qword_280322F88, qword_26985AB90);
LABEL_43:
  v130 = *(v0 + 192);
  v129 = *(v0 + 200);
  v131 = *(v0 + 184);
  sub_2696BAE9C();
  OUTLINED_FUNCTION_20_4();
  swift_allocError();
  OUTLINED_FUNCTION_5_14(v132, 4);
  swift_willThrow();
  (*(v130 + 8))(v129, v131);
LABEL_44:
  v133 = *(v0 + 336);
  v134 = *(v0 + 344);
  v136 = *(v0 + 320);
  v135 = *(v0 + 328);
  v137 = *(v0 + 288);
  v139 = *(v0 + 272);
  v138 = *(v0 + 280);
  v140 = *(v0 + 264);
  v163 = *(v0 + 240);
  v165 = *(v0 + 216);
  v167 = *(v0 + 200);
  v169 = *(v0 + 176);
  v171 = *(v0 + 152);
  v173 = *(v0 + 128);
  v174 = *(v0 + 120);
  v141 = *(v0 + 112);
  v178 = *(v0 + 88);
  (*(*(v0 + 256) + 8))(*(v0 + 296), *(v0 + 248));

  OUTLINED_FUNCTION_7_7();
LABEL_45:

  return v99();
}

uint64_t sub_2696D8AD8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v45 = a2;
  v47 = sub_269852594();
  v3 = OUTLINED_FUNCTION_8(v47);
  v46 = v4;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_3_1();
  v9 = v8 - v7;
  v10 = sub_2698523C4();
  v11 = OUTLINED_FUNCTION_8(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_3_1();
  v18 = v17 - v16;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323360, &unk_26985AB80);
  v20 = OUTLINED_FUNCTION_8_9(v19);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  v24 = &v44 - v23;
  v25 = sub_269852474();
  v26 = OUTLINED_FUNCTION_8(v25);
  v28 = v27;
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_3_1();
  v33 = v32 - v31;
  sub_2696DAE88(a1, v24);
  if (__swift_getEnumTagSinglePayload(v24, 1, v25) == 1)
  {
    sub_26969B0C0(v24, &qword_280323360, &unk_26985AB80);
    sub_2696BAE9C();
    OUTLINED_FUNCTION_20_4();
    swift_allocError();
    OUTLINED_FUNCTION_5_14(v34, 11);
    return swift_willThrow();
  }

  (*(v28 + 32))(v33, v24, v25);
  sub_269852424();
  sub_269852364();
  (*(v13 + 8))(v18, v10);
  v36 = v46;
  v37 = v47;
  v38 = (*(v46 + 88))(v9, v47);
  if (v38 == *MEMORY[0x277D39B10])
  {
    v39 = MEMORY[0x277D5BED8];
LABEL_7:
    (*(v28 + 8))(v33, v25);
    v40 = *v39;
    v41 = sub_269853414();
    OUTLINED_FUNCTION_4_3(v41);
    return (*(v42 + 104))(v45, v40);
  }

  if (v38 == *MEMORY[0x277D39B08])
  {
    v39 = MEMORY[0x277D5BED0];
    goto LABEL_7;
  }

  sub_2696BAE9C();
  OUTLINED_FUNCTION_20_4();
  swift_allocError();
  *v43 = 0xD00000000000001FLL;
  *(v43 + 8) = 0x800000026987CD30;
  *(v43 + 16) = 0;
  *(v43 + 24) = 1;
  swift_willThrow();
  (*(v28 + 8))(v33, v25);
  return (*(v36 + 8))(v9, v37);
}

uint64_t sub_2696D8E8C()
{
  OUTLINED_FUNCTION_2_7();
  v1[2] = v2;
  v1[3] = v0;
  v3 = sub_269852EB4();
  OUTLINED_FUNCTION_8_9(v3);
  v5 = *(v4 + 64);
  v1[4] = OUTLINED_FUNCTION_4_7();
  v6 = sub_269853634();
  v1[5] = v6;
  OUTLINED_FUNCTION_5_12(v6);
  v1[6] = v7;
  v9 = *(v8 + 64);
  v1[7] = OUTLINED_FUNCTION_4_7();
  v10 = OUTLINED_FUNCTION_3_16();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_2696D8F50()
{
  OUTLINED_FUNCTION_8_5();
  v1 = *__swift_project_boxed_opaque_existential_1((*(v0 + 24) + 56), *(*(v0 + 24) + 80));
  v2 = OUTLINED_FUNCTION_30_0(&dword_26985F698);
  *(v0 + 64) = v2;
  *v2 = v0;
  v3 = OUTLINED_FUNCTION_16_5(v2);

  return v4(v3);
}

uint64_t sub_2696D8FF8()
{
  OUTLINED_FUNCTION_8_5();
  v3 = v2;
  OUTLINED_FUNCTION_14_6();
  v5 = v4;
  OUTLINED_FUNCTION_6_13();
  *v6 = v5;
  v8 = *(v7 + 64);
  v9 = *v1;
  OUTLINED_FUNCTION_1_6();
  *v10 = v9;

  if (v0)
  {
    v11 = v5[7];
    v12 = v5[4];

    v13 = *(v9 + 8);

    return v13();
  }

  else
  {
    v5[9] = v3;
    v15 = OUTLINED_FUNCTION_24_2();

    return MEMORY[0x2822009F8](v15, v16, v17);
  }
}

uint64_t sub_2696D9138()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_32_0();
  v3 = v1[16];
  v4 = v1[17];
  OUTLINED_FUNCTION_36_0(v1 + 13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323020, qword_26985AEC0);
  v5 = OUTLINED_FUNCTION_35_0();
  v0[10] = v5;
  *(v5 + 16) = xmmword_2698590C0;
  *(v5 + 32) = v2;
  v6 = *(MEMORY[0x277D5BE58] + 4);
  v7 = v2;
  swift_task_alloc();
  OUTLINED_FUNCTION_23_2();
  v0[11] = v8;
  *v8 = v9;
  v8[1] = sub_2696D923C;
  v10 = v0[7];
  v11 = v0[2];
  OUTLINED_FUNCTION_9_10();

  return MEMORY[0x2821BB488]();
}

uint64_t sub_2696D923C()
{
  OUTLINED_FUNCTION_2_7();
  OUTLINED_FUNCTION_14_6();
  v2 = *(v1 + 88);
  v3 = *(v1 + 80);
  v4 = *v0;
  OUTLINED_FUNCTION_1_6();
  *v5 = v4;

  v6 = OUTLINED_FUNCTION_3_16();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_2696D933C()
{
  OUTLINED_FUNCTION_8_5();
  v2 = *(v0 + 48);
  v1 = *(v0 + 56);
  v4 = *(v0 + 32);
  v3 = *(v0 + 40);

  v5 = *(v2 + 8);
  v6 = OUTLINED_FUNCTION_7_16();
  v7(v6);

  OUTLINED_FUNCTION_7_7();

  return v8();
}

uint64_t sub_2696D93CC()
{
  OUTLINED_FUNCTION_2_7();
  v1[2] = v2;
  v1[3] = v0;
  v3 = sub_269852EB4();
  OUTLINED_FUNCTION_8_9(v3);
  v5 = *(v4 + 64);
  v1[4] = OUTLINED_FUNCTION_4_7();
  v6 = sub_269853634();
  v1[5] = v6;
  OUTLINED_FUNCTION_5_12(v6);
  v1[6] = v7;
  v9 = *(v8 + 64);
  v1[7] = OUTLINED_FUNCTION_4_7();
  v10 = OUTLINED_FUNCTION_3_16();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_2696D9490()
{
  OUTLINED_FUNCTION_8_5();
  v1 = *__swift_project_boxed_opaque_existential_1((*(v0 + 24) + 56), *(*(v0 + 24) + 80));
  v2 = OUTLINED_FUNCTION_30_0(&dword_26985F698);
  *(v0 + 64) = v2;
  *v2 = v0;
  v3 = OUTLINED_FUNCTION_16_5(v2);

  return v4(v3);
}

uint64_t sub_2696D9538()
{
  OUTLINED_FUNCTION_8_5();
  v3 = v2;
  OUTLINED_FUNCTION_14_6();
  v5 = v4;
  OUTLINED_FUNCTION_6_13();
  *v6 = v5;
  v8 = *(v7 + 64);
  v9 = *v1;
  OUTLINED_FUNCTION_1_6();
  *v10 = v9;

  if (v0)
  {
    v11 = v5[7];
    v12 = v5[4];

    v13 = *(v9 + 8);

    return v13();
  }

  else
  {
    v5[9] = v3;
    v15 = OUTLINED_FUNCTION_24_2();

    return MEMORY[0x2822009F8](v15, v16, v17);
  }
}

uint64_t sub_2696D9678()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_32_0();
  v3 = v1[16];
  v4 = v1[17];
  OUTLINED_FUNCTION_36_0(v1 + 13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323020, qword_26985AEC0);
  v5 = OUTLINED_FUNCTION_35_0();
  v0[10] = v5;
  *(v5 + 16) = xmmword_2698590C0;
  *(v5 + 32) = v2;
  v6 = *(MEMORY[0x277D5BE58] + 4);
  v7 = v2;
  swift_task_alloc();
  OUTLINED_FUNCTION_23_2();
  v0[11] = v8;
  *v8 = v9;
  v8[1] = sub_2696D977C;
  v10 = v0[7];
  v11 = v0[2];
  OUTLINED_FUNCTION_9_10();

  return MEMORY[0x2821BB488]();
}

uint64_t sub_2696D977C()
{
  OUTLINED_FUNCTION_2_7();
  OUTLINED_FUNCTION_14_6();
  v2 = *(v1 + 88);
  v3 = *(v1 + 80);
  v4 = *v0;
  OUTLINED_FUNCTION_1_6();
  *v5 = v4;

  v6 = OUTLINED_FUNCTION_3_16();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_2696D987C()
{
  OUTLINED_FUNCTION_2_7();
  v1[13] = v2;
  v1[14] = v0;
  v1[12] = v3;
  v4 = sub_269852EB4();
  OUTLINED_FUNCTION_8_9(v4);
  v6 = *(v5 + 64);
  v1[15] = OUTLINED_FUNCTION_4_7();
  v7 = sub_269853634();
  v1[16] = v7;
  OUTLINED_FUNCTION_5_12(v7);
  v1[17] = v8;
  v10 = *(v9 + 64);
  v1[18] = OUTLINED_FUNCTION_4_7();
  v11 = sub_269853234();
  v1[19] = v11;
  OUTLINED_FUNCTION_5_12(v11);
  v1[20] = v12;
  v14 = *(v13 + 64);
  v1[21] = OUTLINED_FUNCTION_4_7();
  v15 = sub_2698548D4();
  v1[22] = v15;
  OUTLINED_FUNCTION_5_12(v15);
  v1[23] = v16;
  v18 = *(v17 + 64);
  v1[24] = OUTLINED_FUNCTION_37_0();
  v1[25] = swift_task_alloc();
  v19 = OUTLINED_FUNCTION_3_16();

  return MEMORY[0x2822009F8](v19, v20, v21);
}

uint64_t sub_2696D99E8()
{
  v49 = v0;
  if (qword_2803226E0 != -1)
  {
    OUTLINED_FUNCTION_0_10();
  }

  v1 = v0[25];
  v2 = v0[22];
  v3 = v0[23];
  v4 = __swift_project_value_buffer(v2, qword_28033D910);
  v5 = *(v3 + 16);
  v5(v1, v4, v2);
  v6 = sub_2698548B4();
  v7 = sub_269854F14();
  if (os_log_type_enabled(v6, v7))
  {
    *swift_slowAlloc() = 0;
    OUTLINED_FUNCTION_31_0(&dword_269684000, v8, v9, "INPlayMedia.RequestTCCAcceptanceStrategy.makePromptForTCCAcceptance() called");
    OUTLINED_FUNCTION_10();
  }

  v10 = v0[25];
  v11 = v0[22];
  v12 = v0[23];
  v13 = v0[13];

  v14 = *(v12 + 8);
  v15 = OUTLINED_FUNCTION_22_3();
  v14(v15);
  v16 = sub_269853274();
  if (v16 && (v17 = v16, v18 = [v16 displayAppName], v17, v18))
  {
    v47 = v14;
    v19 = v0[24];
    v20 = v0[22];
    v21 = v0[13];
    v22 = sub_269854A94();
    v24 = v23;

    v46 = v24;
    v0[26] = v24;
    v5(v19, v4, v20);

    v25 = sub_2698548B4();
    v26 = sub_269854F14();

    v27 = os_log_type_enabled(v25, v26);
    v29 = v0[23];
    v28 = v0[24];
    v30 = v0[22];
    if (v27)
    {
      v45 = v0[24];
      v31 = v0[13];
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v48 = v33;
      *v32 = 136315138;
      v34 = sub_2698543F4();
      if (v35)
      {
        v36 = v35;
      }

      else
      {
        v34 = 0;
        v36 = 0xE000000000000000;
      }

      v37 = v22;
      v38 = sub_26974F520(v34, v36, &v48);

      *(v32 + 4) = v38;
      v22 = v37;
      _os_log_impl(&dword_269684000, v25, v26, "INPlayMedia.RequestTCCAcceptanceStrategy.makePromptForTCCAcceptance() app identifier: %s", v32, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v33);
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_10();

      v39 = v45;
    }

    else
    {

      v39 = v28;
    }

    v47(v39, v30);
    v43 = v0[14];
    v44 = swift_task_alloc();
    v0[27] = v44;
    *v44 = v0;
    v44[1] = sub_2696D9D88;

    return sub_2696BDDBC(v22, v46);
  }

  else
  {
    sub_2696BAE9C();
    OUTLINED_FUNCTION_20_4();
    swift_allocError();
    OUTLINED_FUNCTION_5_14(v40, 7);
    swift_willThrow();
    OUTLINED_FUNCTION_29_1();

    OUTLINED_FUNCTION_7_7();

    return v41();
  }
}

uint64_t sub_2696D9D88()
{
  OUTLINED_FUNCTION_2_7();
  OUTLINED_FUNCTION_14_6();
  v3 = v2;
  OUTLINED_FUNCTION_6_13();
  *v4 = v3;
  v6 = *(v5 + 216);
  *v4 = *v1;
  v3[28] = v7;
  v3[29] = v0;

  if (v0)
  {
    v8 = sub_2696DA528;
  }

  else
  {
    v9 = v3[26];

    v8 = sub_2696D9E98;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_2696D9E98()
{
  v1 = v0[21];
  v2 = v0[13];
  v3 = v0[14];
  v4 = v3[12];
  sub_2696A73F8((v3 + 13), (v0 + 2));
  sub_2698543F4();
  sub_269835724();

  v5 = v3[5];
  v6 = v3[6];
  __swift_project_boxed_opaque_existential_1(v3 + 2, v5);
  if (sub_2696CB5D4(v5, v6))
  {
    v7 = 1;
  }

  else
  {
    v8 = v3[6];
    __swift_project_boxed_opaque_existential_1(v3 + 2, v3[5]);
    v7 = sub_269852CF4();
  }

  v9 = v0[21];
  v10 = v0[18];
  v11 = v0[15];
  sub_269852E74();
  v12 = swift_task_alloc();
  v12[2] = v9;
  v12[3] = 0xD000000000000014;
  v12[4] = 0x800000026987AFD0;
  sub_2698535C4();

  if (v7)
  {
    v13 = v0[29];
    v14 = sub_2696F4BA0();
    if (v13)
    {
      v18 = v0[28];
      v20 = v0[20];
      v19 = v0[21];
      v21 = v0[19];
      (*(v0[17] + 8))(v0[18], v0[16]);
      v22 = *(v20 + 8);
      v23 = OUTLINED_FUNCTION_7_16();
      v24(v23);
      __swift_destroy_boxed_opaque_existential_0(v0 + 2);

      v26 = v0[24];
      v25 = v0[25];
      v27 = v0[21];
      v28 = v0[18];
      v29 = v0[15];

      OUTLINED_FUNCTION_7_7();
      OUTLINED_FUNCTION_28_1();

      __asm { BRAA            X1, X16 }
    }

    v43 = v14;
    v44 = v15;
    v45 = v16;
    v46 = v17;
    v47 = v0[28];
    v48 = v0[5];
    v49 = v0[6];
    OUTLINED_FUNCTION_36_0(v0 + 2);
    sub_2696F4DC4(v43, v44, v45, v46, v0 + 7);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323020, qword_26985AEC0);
    v50 = OUTLINED_FUNCTION_35_0();
    v0[32] = v50;
    *(v50 + 16) = xmmword_2698590C0;
    *(v50 + 32) = v47;
    v51 = *(MEMORY[0x277D5BE48] + 4);
    v52 = v47;
    swift_task_alloc();
    OUTLINED_FUNCTION_23_2();
    v0[33] = v53;
    *v53 = v54;
    v53[1] = sub_2696DA424;
    v55 = v0[18];
    v56 = v0[12];
    OUTLINED_FUNCTION_28_1();

    return MEMORY[0x2821BB478]();
  }

  else
  {
    v32 = v0[28];
    v33 = v0[5];
    v34 = v0[6];
    OUTLINED_FUNCTION_36_0(v0 + 2);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323020, qword_26985AEC0);
    v35 = OUTLINED_FUNCTION_35_0();
    v0[30] = v35;
    *(v35 + 16) = xmmword_2698590C0;
    *(v35 + 32) = v32;
    v36 = *(MEMORY[0x277D5BE58] + 4);
    v37 = v32;
    swift_task_alloc();
    OUTLINED_FUNCTION_23_2();
    v0[31] = v38;
    *v38 = v39;
    v38[1] = sub_2696DA23C;
    v40 = v0[18];
    v41 = v0[12];
    OUTLINED_FUNCTION_9_10();
    OUTLINED_FUNCTION_28_1();

    return MEMORY[0x2821BB488]();
  }
}

uint64_t sub_2696DA23C()
{
  OUTLINED_FUNCTION_2_7();
  OUTLINED_FUNCTION_14_6();
  v2 = *(v1 + 248);
  v3 = *(v1 + 240);
  v4 = *v0;
  OUTLINED_FUNCTION_1_6();
  *v5 = v4;

  v6 = OUTLINED_FUNCTION_3_16();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_2696DA33C()
{
  v1 = v0[28];
  v2 = v0[24];
  v3 = v0[25];
  v5 = v0[20];
  v4 = v0[21];
  v6 = v0[19];
  v7 = v0[15];
  (*(v0[17] + 8))(v0[18], v0[16]);
  (*(v5 + 8))(v4, v6);
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);

  OUTLINED_FUNCTION_7_7();

  return v8();
}

uint64_t sub_2696DA424()
{
  OUTLINED_FUNCTION_2_7();
  OUTLINED_FUNCTION_14_6();
  v2 = v1;
  OUTLINED_FUNCTION_6_13();
  *v3 = v2;
  v5 = *(v4 + 264);
  v6 = *(v4 + 256);
  v7 = *v0;
  OUTLINED_FUNCTION_1_6();
  *v8 = v7;

  __swift_destroy_boxed_opaque_existential_0((v2 + 56));
  v9 = OUTLINED_FUNCTION_3_16();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_2696DA528()
{
  v1 = *(v0 + 208);

  v2 = *(v0 + 232);
  OUTLINED_FUNCTION_29_1();

  OUTLINED_FUNCTION_7_7();

  return v3();
}

uint64_t *sub_2696DA5BC()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  sub_2696D1E70((v0 + 7));
  v1 = v0[12];

  __swift_destroy_boxed_opaque_existential_0(v0 + 13);
  return v0;
}

uint64_t sub_2696DA5F4()
{
  sub_2696DA5BC();

  return MEMORY[0x2821FE8D8](v0, 144, 7);
}

uint64_t sub_2696DA668()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2696DAF80;

  return sub_2696D7D40();
}

uint64_t sub_2696DA714()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2696DAF80;

  return sub_2696D93CC();
}

uint64_t sub_2696DA7B0()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2696DAF80;

  return sub_2696D8E8C();
}

uint64_t sub_2696DA84C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v13 = *(MEMORY[0x277D5B740] + 4);
  v14 = swift_task_alloc();
  *(v6 + 16) = v14;
  v15 = a5[10];
  v16 = a5[11];
  v17 = a5[12];
  v18 = type metadata accessor for CommonIntentClientHandledRequestTCCStrategyAsync();
  *v14 = v6;
  v14[1] = sub_2696DA938;

  return MEMORY[0x2821BA180](a1, a2, a3, a4, v18, a6);
}

uint64_t sub_2696DA938()
{
  OUTLINED_FUNCTION_2_7();
  OUTLINED_FUNCTION_14_6();
  v2 = *(v1 + 16);
  v3 = *v0;
  OUTLINED_FUNCTION_1_6();
  *v4 = v3;

  OUTLINED_FUNCTION_7_7();

  return v5();
}

uint64_t sub_2696DAA18()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2696DAF80;

  return sub_2696D987C();
}

uint64_t sub_2696DAAC4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v11 = *(MEMORY[0x277D5B600] + 4);
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  v13 = a4[10];
  v14 = a4[11];
  v15 = a4[12];
  v16 = type metadata accessor for CommonIntentClientHandledRequestTCCStrategyAsync();
  *v12 = v5;
  v12[1] = sub_2696DAF80;

  return MEMORY[0x2821B9FE0](a1, a2, a3, v16, a5);
}

uint64_t sub_2696DABA8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v11 = *(MEMORY[0x277D5B610] + 4);
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  v13 = a4[10];
  v14 = a4[11];
  v15 = a4[12];
  v16 = type metadata accessor for CommonIntentClientHandledRequestTCCStrategyAsync();
  *v12 = v5;
  v12[1] = sub_2696DAF80;

  return MEMORY[0x2821B9FF0](a1, a2, a3, v16, a5);
}

uint64_t sub_2696DAC8C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v11 = *(MEMORY[0x277D5B608] + 4);
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  v13 = a4[10];
  v14 = a4[11];
  v15 = a4[12];
  v16 = type metadata accessor for CommonIntentClientHandledRequestTCCStrategyAsync();
  *v12 = v5;
  v12[1] = sub_2696DAF80;

  return MEMORY[0x2821B9FE8](a1, a2, a3, v16, a5);
}

uint64_t sub_2696DAD70(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v11 = *(MEMORY[0x277D5B618] + 4);
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  v13 = a4[10];
  v14 = a4[11];
  v15 = a4[12];
  v16 = type metadata accessor for CommonIntentClientHandledRequestTCCStrategyAsync();
  *v12 = v5;
  v12[1] = sub_2696DAF80;

  return MEMORY[0x2821B9FF8](a1, a2, a3, v16, a5);
}

uint64_t sub_2696DAE7C(uint64_t a1)
{
  v2 = v1[3];
  v3 = v1[4];
  return sub_2696F4A9C(a1, v1[2]);
}

uint64_t sub_2696DAE88(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323360, &unk_26985AB80);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_2696DAEF8()
{
  result = qword_280323548[0];
  if (!qword_280323548[0])
  {
    type metadata accessor for MediaNLIntent();
    result = swift_getWitnessTable();
    atomic_store(result, qword_280323548);
  }

  return result;
}

void OUTLINED_FUNCTION_5_14(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = a2;
  *(a1 + 24) = 3;
}

uint64_t OUTLINED_FUNCTION_12_10()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_29_1()
{
  v3 = v0[24];
  v2 = v0[25];
  v4 = v0[21];
  v5 = v0[18];
  v6 = v0[15];
}

uint64_t OUTLINED_FUNCTION_30_0@<X0>(int *a1@<X8>)
{
  v2 = a1[1];
  v4 = a1 + *a1;

  return swift_task_alloc();
}

void OUTLINED_FUNCTION_31_0(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v4, a4, v6, 2u);
}

uint64_t OUTLINED_FUNCTION_32_0()
{

  return sub_2698535C4();
}

uint64_t OUTLINED_FUNCTION_33()
{
  v2 = v0[9];
  v3 = v0[7];
  v5 = v0[3];
  v4 = v0[4];

  return sub_269852EA4();
}

uint64_t OUTLINED_FUNCTION_35_0()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_37_0()
{

  return swift_task_alloc();
}

uint64_t sub_2696DB190(uint64_t a1)
{
  v1 = *(a1 + 96);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_2696DB230()
{
  OUTLINED_FUNCTION_2_7();
  v1[8] = v2;
  v1[9] = v0;
  v1[7] = v3;
  v1[10] = *v0;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323010, &unk_26985B640) - 8) + 64) + 15;
  v1[11] = swift_task_alloc();
  v5 = sub_2698532A4();
  v1[12] = v5;
  v6 = *(v5 - 8);
  v1[13] = v6;
  v7 = *(v6 + 64) + 15;
  v1[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2696DB350, 0, 0);
}

uint64_t sub_2696DB350()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 64);
  v3 = *(**(v0 + 72) + 120);
  v4 = v1[10];
  v5 = v1[11];
  sub_269853514();
  v6 = sub_2698534F4();
  *(v0 + 120) = v6;
  v7 = sub_2698534E4();
  *(v0 + 128) = v7;
  v10 = v1 + 12;
  v9 = v1[12];
  v8 = v10[1];
  v15 = (*(v8 + 24) + **(v8 + 24));
  v11 = *(*(v8 + 24) + 4);
  v12 = swift_task_alloc();
  *(v0 + 136) = v12;
  *v12 = v0;
  v12[1] = sub_2696DB4D0;
  v13 = *(v0 + 112);

  return v15(v13, v6, v7, v9, v8);
}

uint64_t sub_2696DB4D0()
{
  OUTLINED_FUNCTION_2_7();
  OUTLINED_FUNCTION_14_6();
  v3 = v2;
  v4 = *(v2 + 136);
  v5 = *v1;
  OUTLINED_FUNCTION_1_6();
  *v6 = v5;
  *(v3 + 144) = v0;

  if (v0)
  {
    v7 = sub_2696DB764;
  }

  else
  {
    v8 = *(v3 + 120);

    v7 = sub_2696DB5E4;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_2696DB5E4()
{
  v2 = *(v0 + 104);
  v1 = *(v0 + 112);
  v3 = *(v0 + 88);
  v4 = *(v0 + 96);
  v5 = *(v0 + 72);
  v6 = *(v0 + 56);
  v7 = v5[6];
  __swift_project_boxed_opaque_existential_1(v5 + 2, v5[5]);
  sub_269852CA4();
  v8 = sub_269853234();
  __swift_storeEnumTagSinglePayload(v3, 1, 1, v8);
  v9 = sub_2698538F4();
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0;
  *(v0 + 16) = 0u;
  v10 = MEMORY[0x277D5C1D8];
  v6[3] = v9;
  v6[4] = v10;
  __swift_allocate_boxed_opaque_existential_1(v6);
  sub_2698530B4();
  sub_269698048(v0 + 16, &qword_280323028, qword_26985AD20);
  sub_269698048(v3, &qword_280323010, &unk_26985B640);
  (*(v2 + 8))(v1, v4);

  OUTLINED_FUNCTION_7_7();

  return v11();
}

uint64_t sub_2696DB764()
{
  v1 = *(v0 + 120);
  v2 = *(v0 + 112);
  v3 = *(v0 + 88);

  OUTLINED_FUNCTION_7_7();
  v5 = *(v0 + 144);

  return v4();
}

uint64_t *sub_2696DB7EC()
{
  v1 = *v0;
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  (*(*(*(v1 + 96) - 8) + 8))(v0 + *(*v0 + 120));
  return v0;
}

uint64_t sub_2696DB86C()
{
  sub_2696DB7EC();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_2696DB8E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(MEMORY[0x277D5B3C8] + 4);
  v10 = swift_task_alloc();
  *(v4 + 48) = v10;
  v11 = *(a3 + 96);
  *(v4 + 16) = *(a3 + 80);
  *(v4 + 32) = v11;
  v12 = type metadata accessor for CommonHandleIntentStrategy();
  *v10 = v4;
  v10[1] = sub_2696DC178;

  return MEMORY[0x2821B9C68](a1, a2, v12, a4);
}

uint64_t sub_2696DB9BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(MEMORY[0x277D5B3D0] + 4);
  v10 = swift_task_alloc();
  *(v4 + 48) = v10;
  v11 = *(a3 + 96);
  *(v4 + 16) = *(a3 + 80);
  *(v4 + 32) = v11;
  v12 = type metadata accessor for CommonHandleIntentStrategy();
  *v10 = v4;
  v10[1] = sub_2696DC178;

  return MEMORY[0x2821B9C70](a1, a2, v12, a4);
}

uint64_t sub_2696DBA98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(MEMORY[0x277D5B3B0] + 4);
  v10 = swift_task_alloc();
  *(v4 + 48) = v10;
  v11 = *(a3 + 96);
  *(v4 + 16) = *(a3 + 80);
  *(v4 + 32) = v11;
  v12 = type metadata accessor for CommonHandleIntentStrategy();
  *v10 = v4;
  v10[1] = sub_2696DC178;

  return MEMORY[0x2821B9C48](a1, a2, v12, a4);
}

uint64_t sub_2696DBB74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(MEMORY[0x277D5B3A8] + 4);
  v10 = swift_task_alloc();
  *(v4 + 48) = v10;
  v11 = *(a3 + 96);
  *(v4 + 16) = *(a3 + 80);
  *(v4 + 32) = v11;
  v12 = type metadata accessor for CommonHandleIntentStrategy();
  *v10 = v4;
  v10[1] = sub_2696DBC50;

  return MEMORY[0x2821B9C40](a1, a2, v12, a4);
}

uint64_t sub_2696DBC50()
{
  OUTLINED_FUNCTION_2_7();
  OUTLINED_FUNCTION_14_6();
  v2 = *(v1 + 48);
  v3 = *v0;
  OUTLINED_FUNCTION_1_6();
  *v4 = v3;

  OUTLINED_FUNCTION_7_7();

  return v5();
}

uint64_t sub_2696DBD30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(MEMORY[0x277D5B3C0] + 4);
  v10 = swift_task_alloc();
  *(v4 + 48) = v10;
  v11 = *(a3 + 96);
  *(v4 + 16) = *(a3 + 80);
  *(v4 + 32) = v11;
  v12 = type metadata accessor for CommonHandleIntentStrategy();
  *v10 = v4;
  v10[1] = sub_2696DC178;

  return MEMORY[0x2821B9C60](a1, a2, v12, a4);
}

uint64_t sub_2696DBE0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(MEMORY[0x277D5B3B8] + 4);
  v10 = swift_task_alloc();
  *(v4 + 48) = v10;
  v11 = *(a3 + 96);
  *(v4 + 16) = *(a3 + 80);
  *(v4 + 32) = v11;
  v12 = type metadata accessor for CommonHandleIntentStrategy();
  *v10 = v4;
  v10[1] = sub_2696DC178;

  return MEMORY[0x2821B9C58](a1, a2, v12, a4);
}

uint64_t sub_2696DBEE8()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2696DA938;

  return sub_2696DB230();
}

uint64_t sub_2696DBF94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(MEMORY[0x277D5C0D0] + 4);
  v10 = swift_task_alloc();
  *(v4 + 48) = v10;
  v11 = *(a3 + 96);
  *(v4 + 16) = *(a3 + 80);
  *(v4 + 32) = v11;
  v12 = type metadata accessor for CommonHandleIntentStrategy();
  *v10 = v4;
  v10[1] = sub_2696DC070;

  return MEMORY[0x2821BBB48](a1, a2, v12, a4);
}

uint64_t sub_2696DC070()
{
  OUTLINED_FUNCTION_2_7();
  v2 = v1;
  OUTLINED_FUNCTION_14_6();
  v4 = *(v3 + 48);
  v5 = *v0;
  OUTLINED_FUNCTION_1_6();
  *v6 = v5;

  v7 = *(v5 + 8);

  return v7(v2);
}

uint64_t sub_2696DC1C0(uint64_t a1, uint64_t a2)
{
  v3[2] = a1;
  v3[3] = a2;
  v3[4] = *v2;
  return MEMORY[0x2822009F8](sub_2696DC208, 0, 0);
}

uint64_t sub_2696DC208()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[2];
  sub_2696DC634();
  v4 = *(v2 + 80);
  v5 = *(v2 + 88);
  sub_269853514();
  sub_2698534F4();
  v6 = sub_269853504();
  v7 = sub_269855004();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323020, qword_26985AEC0);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_2698590C0;
  *(v8 + 32) = v7;
  v9 = sub_2698538F4();
  v10 = MEMORY[0x277D5C1D8];
  v3[3] = v9;
  v3[4] = v10;
  __swift_allocate_boxed_opaque_existential_1(v3);
  sub_2698538E4();
  v11 = v0[1];

  return v11();
}

uint64_t sub_2696DC33C()
{
  v1 = *(v0 + 24);

  return v0;
}

uint64_t sub_2696DC35C()
{
  sub_2696DC33C();

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

uint64_t sub_2696DC3A8(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_2696DC678;

  return sub_2696DC1C0(a1, a2);
}

uint64_t sub_2696DC454(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(MEMORY[0x277D5B578] + 4);
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  v11 = *(a3 + 80);
  v12 = *(a3 + 88);
  v13 = type metadata accessor for CommonIntentContinueInAppStrategy();
  *v10 = v4;
  v10[1] = sub_2696DC678;

  return MEMORY[0x2821B9F10](a1, a2, v13, a4);
}

uint64_t sub_2696DC52C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(MEMORY[0x277D5B3F8] + 4);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_2696C995C;

  return MEMORY[0x2821B9CD8](a1, a2, a3);
}

unint64_t sub_2696DC634()
{
  result = qword_280323650[0];
  if (!qword_280323650[0])
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, qword_280323650);
  }

  return result;
}

void sub_2696DC6B4(uint8_t *a1@<X0>, uint64_t a2@<X8>)
{
  v157 = a1;
  v159 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323360, &unk_26985AB80);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v144 = v139 - v4;
  OUTLINED_FUNCTION_2_13();
  v5 = sub_269851EF4();
  v6 = OUTLINED_FUNCTION_8(v5);
  v141 = v7;
  v142 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_3_1();
  v140 = v11 - v10;
  OUTLINED_FUNCTION_2_13();
  v12 = sub_269853874();
  v13 = OUTLINED_FUNCTION_8(v12);
  v146 = v14;
  v147 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_3_1();
  v145 = v18 - v17;
  OUTLINED_FUNCTION_2_13();
  v19 = sub_2698538A4();
  v20 = OUTLINED_FUNCTION_8(v19);
  v148 = v21;
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_24_3();
  v143 = v24;
  MEMORY[0x28223BE20](v25);
  v149 = v139 - v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323330, qword_26985B080);
  v28 = *(*(v27 - 8) + 64);
  MEMORY[0x28223BE20](v27 - 8);
  v151 = v139 - v29;
  OUTLINED_FUNCTION_2_13();
  v152 = sub_269853F44();
  v30 = OUTLINED_FUNCTION_8(v152);
  v32 = v31;
  v34 = *(v33 + 64);
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_3_1();
  v158 = (v36 - v35);
  OUTLINED_FUNCTION_2_13();
  v156 = sub_2698538B4();
  v37 = OUTLINED_FUNCTION_8(v156);
  v39 = v38;
  v41 = *(v40 + 64);
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_3_1();
  v44 = (v43 - v42);
  v45 = sub_2698548D4();
  v46 = OUTLINED_FUNCTION_8(v45);
  v48 = v47;
  v50 = *(v49 + 64);
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_24_3();
  OUTLINED_FUNCTION_3_13();
  MEMORY[0x28223BE20](v51);
  OUTLINED_FUNCTION_23_3();
  OUTLINED_FUNCTION_3_13();
  MEMORY[0x28223BE20](v52);
  OUTLINED_FUNCTION_23_3();
  OUTLINED_FUNCTION_3_13();
  MEMORY[0x28223BE20](v53);
  OUTLINED_FUNCTION_23_3();
  OUTLINED_FUNCTION_3_13();
  MEMORY[0x28223BE20](v54);
  OUTLINED_FUNCTION_23_3();
  v150 = v55;
  MEMORY[0x28223BE20](v56);
  v58 = v139 - v57;
  if (qword_2803226E0 != -1)
  {
    OUTLINED_FUNCTION_0_10();
  }

  v59 = __swift_project_value_buffer(v45, qword_28033D910);
  v60 = *(v48 + 16);
  v153 = v59;
  v154 = v60;
  v155 = v48 + 16;
  v60(v58);
  v61 = sub_2698548B4();
  v62 = sub_269854F14();
  if (os_log_type_enabled(v61, v62))
  {
    v63 = OUTLINED_FUNCTION_16_2();
    OUTLINED_FUNCTION_21_5(v63);
    _os_log_impl(&dword_269684000, v61, v62, "CommonIntentFlowStrategy.actionForInput() called", v45, 2u);
    v45 = v48;
    v48 = v19;
    OUTLINED_FUNCTION_10();
  }

  v66 = *(v48 + 8);
  v64 = (v48 + 8);
  v65 = v66;
  v66(v58, v45);
  sub_269853844();
  v67 = v156;
  v68 = (*(v39 + 88))(v44, v156);
  if (v68 == *MEMORY[0x277D5C128])
  {
    v157 = v64;
    v69 = OUTLINED_FUNCTION_8_10();
    v70(v69);
    v71 = v44;
    v72 = v152;
    (*(v32 + 32))(v158, v71, v152);
    v73 = v151;
    sub_269853F24();
    v74 = sub_269853D94();
    if (__swift_getEnumTagSinglePayload(v73, 1, v74) == 1)
    {
      sub_269698048(v73, &qword_280323330, qword_26985B080);
      v75 = 0;
      v76 = 0;
    }

    else
    {
      v75 = sub_269853D74();
      v76 = v109;
      (*(*(v74 - 8) + 8))(v73, v74);
      v110 = v75 == 0x616964656DLL && v76 == 0xE500000000000000;
      if (v110 || (sub_269855584() & 1) != 0)
      {

        sub_269853004();
        (*(v32 + 8))(v158, v72);
        return;
      }
    }

    v77 = v32;
    v78 = v150;
    OUTLINED_FUNCTION_5_15();
    v79();

    v80 = sub_2698548B4();
    v81 = v45;
    v82 = sub_269854F14();

    if (os_log_type_enabled(v80, v82))
    {
      v83 = OUTLINED_FUNCTION_27_2();
      v84 = OUTLINED_FUNCTION_9_3();
      v160[0] = v84;
      *v83 = 136315138;
      if (v76)
      {
        v85 = v75;
      }

      else
      {
        v85 = 7104878;
      }

      if (!v76)
      {
        v76 = 0xE300000000000000;
      }

      v86 = sub_26974F520(v85, v76, v160);

      *(v83 + 4) = v86;
      _os_log_impl(&dword_269684000, v80, v82, "CommonIntentFlowStrategy.actionForInput() ignoring NLv3 non-media domain %s", v83, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v84);
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_10();

      v87 = v150;
    }

    else
    {

      v87 = v78;
    }

    v65(v87, v81);
    sub_269853014();
    (*(v77 + 8))(v158, v72);
  }

  else if (v68 == *MEMORY[0x277D5C150])
  {
    v88 = OUTLINED_FUNCTION_8_10();
    v89(v88);
    v91 = v148;
    v90 = v149;
    (*(v148 + 32))(v149, v44, v19);
    sub_269853884();
    if (SKIDirectInvocation.Video.init(rawValue:)() == 5)
    {
      v158 = v65;
      v92 = v139[3];
      OUTLINED_FUNCTION_5_15();
      v93();
      v94 = v143;
      (*(v91 + 16))(v143, v90, v19);
      v95 = v19;
      v96 = sub_2698548B4();
      v97 = v45;
      v98 = sub_269854F14();
      if (os_log_type_enabled(v96, v98))
      {
        v99 = OUTLINED_FUNCTION_27_2();
        v100 = OUTLINED_FUNCTION_9_3();
        v157 = v64;
        v101 = v100;
        v160[0] = v100;
        *v99 = 136315138;
        v156 = v97;
        v102 = sub_269853884();
        v103 = v91;
        v105 = v104;
        v106 = v94;
        v107 = *(v103 + 8);
        v107(v106, v95);
        v108 = sub_26974F520(v102, v105, v160);

        *(v99 + 4) = v108;
        _os_log_impl(&dword_269684000, v96, v98, "CommonIntentFlowStrategy.actionForInput() ignoring directInvocation %s", v99, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v101);
        OUTLINED_FUNCTION_10();
        v90 = v149;
        OUTLINED_FUNCTION_10();

        v158(v92, v156);
      }

      else
      {

        v128 = v94;
        v107 = *(v91 + 8);
        v107(v128, v95);
        v158(v92, v97);
      }

      sub_269853014();
      v107(v90, v95);
    }

    else
    {
      sub_269853004();
      (*(v91 + 8))(v90, v19);
    }
  }

  else if (v68 == *MEMORY[0x277D5C140])
  {
    v111 = OUTLINED_FUNCTION_8_10();
    v112(v111);
    v114 = v145;
    v113 = v146;
    v115 = v147;
    (*(v146 + 32))(v145, v44, v147);
    v116 = v140;
    sub_269853864();
    v117 = v144;
    sub_2696D3C74();
    (*(v141 + 8))(v116, v142);
    v118 = sub_269852474();
    LODWORD(v116) = __swift_getEnumTagSinglePayload(v117, 1, v118);
    sub_269698048(v117, &qword_280323360, &unk_26985AB80);
    if (v116 == 1)
    {
      v119 = v139[2];
      OUTLINED_FUNCTION_5_15();
      v120();
      v121 = sub_2698548B4();
      v122 = sub_269854F14();
      if (os_log_type_enabled(v121, v122))
      {
        v123 = OUTLINED_FUNCTION_16_2();
        *v123 = 0;
        _os_log_impl(&dword_269684000, v121, v122, "CommonIntentFlowStrategy.actionForInput() ignoring pegasusResults with no videoClientComponent", v123, 2u);
        OUTLINED_FUNCTION_10();
      }

      v65(v119, v45);
      sub_269853014();
    }

    else
    {
      sub_269853004();
    }

    (*(v113 + 8))(v114, v115);
  }

  else if (v68 == *MEMORY[0x277D5C148])
  {
    v124 = OUTLINED_FUNCTION_8_10();
    v125(v124);
    v126 = *v44;
    sub_2696D6C54();
    if (v127)
    {

      sub_269853004();
    }

    else
    {
      v134 = v139[0];
      v135 = v45;
      v154(v139[0], v153, v45);
      v136 = sub_2698548B4();
      v137 = sub_269854F14();
      if (OUTLINED_FUNCTION_19_4(v137))
      {
        v138 = OUTLINED_FUNCTION_16_2();
        *v138 = 0;
        _os_log_impl(&dword_269684000, v136, v137, "CommonIntentFlowStrategy.actionForInput() ignoring pommesResponse with no firstVideoExperience", v138, 2u);
        OUTLINED_FUNCTION_10();
      }

      v65(v134, v135);
      sub_269853014();
    }
  }

  else
  {
    v129 = v139[1];
    OUTLINED_FUNCTION_5_15();
    v130();
    v131 = sub_2698548B4();
    v132 = sub_269854F14();
    if (OUTLINED_FUNCTION_19_4(v132))
    {
      v133 = OUTLINED_FUNCTION_16_2();
      OUTLINED_FUNCTION_21_5(v133);
      _os_log_impl(&dword_269684000, v131, v132, "CommonIntentFlowStrategy.actionForInput(), unsupported parse is ignored", v45, 2u);
      v45 = v64;
      OUTLINED_FUNCTION_10();
    }

    v65(v129, v45);
    sub_269853014();
    (*(v39 + 8))(v44, v67);
  }
}

uint64_t sub_2696DD360()
{
  OUTLINED_FUNCTION_2_7();
  v35 = *MEMORY[0x277D85DE8];
  v1[10] = v2;
  v1[11] = v3;
  v1[12] = *v0;
  v4 = sub_2698538A4();
  v1[13] = v4;
  OUTLINED_FUNCTION_5_12(v4);
  v1[14] = v5;
  v7 = *(v6 + 64);
  v1[15] = OUTLINED_FUNCTION_4_7();
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323360, &unk_26985AB80) - 8) + 64);
  v1[16] = OUTLINED_FUNCTION_4_7();
  v9 = sub_269851EF4();
  v1[17] = v9;
  OUTLINED_FUNCTION_5_12(v9);
  v1[18] = v10;
  v12 = *(v11 + 64);
  v1[19] = OUTLINED_FUNCTION_4_7();
  v13 = sub_269852474();
  v1[20] = v13;
  OUTLINED_FUNCTION_5_12(v13);
  v1[21] = v14;
  v16 = *(v15 + 64);
  v1[22] = OUTLINED_FUNCTION_37_0();
  v1[23] = swift_task_alloc();
  v17 = sub_269853874();
  v1[24] = v17;
  OUTLINED_FUNCTION_5_12(v17);
  v1[25] = v18;
  v20 = *(v19 + 64);
  v1[26] = OUTLINED_FUNCTION_4_7();
  v21 = sub_2698548D4();
  v1[27] = v21;
  OUTLINED_FUNCTION_5_12(v21);
  v1[28] = v22;
  v24 = *(v23 + 64);
  v1[29] = OUTLINED_FUNCTION_37_0();
  v1[30] = swift_task_alloc();
  v1[31] = swift_task_alloc();
  v1[32] = swift_task_alloc();
  v1[33] = swift_task_alloc();
  v1[34] = swift_task_alloc();
  v1[35] = swift_task_alloc();
  v1[36] = swift_task_alloc();
  v25 = sub_269853F44();
  v1[37] = v25;
  OUTLINED_FUNCTION_5_12(v25);
  v1[38] = v26;
  v28 = *(v27 + 64);
  v1[39] = OUTLINED_FUNCTION_37_0();
  v1[40] = swift_task_alloc();
  v29 = sub_2698538B4();
  v1[41] = v29;
  OUTLINED_FUNCTION_5_12(v29);
  v1[42] = v30;
  v32 = *(v31 + 64);
  v1[43] = OUTLINED_FUNCTION_37_0();
  v1[44] = swift_task_alloc();
  v1[45] = swift_task_alloc();
  v1[46] = swift_task_alloc();
  v1[47] = swift_task_alloc();
  v33 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_2696DD6F4, 0, 0);
}

uint64_t sub_2696DD6F4()
{
  v329 = v0;
  v328[1] = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 88);
  if (!v1)
  {
    v2 = *(*(v0 + 96) + 80);
    v1 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  }

  v3 = *(v0 + 336);
  v4 = *(v3 + 16);
  (v4)(*(v0 + 376), *(v0 + 80), *(v0 + 328));
  v5 = *(v3 + 88);
  v6 = OUTLINED_FUNCTION_25_2();
  v8 = v7(v6);
  v9 = 0x280322000uLL;
  if (v8 == *MEMORY[0x277D5C128])
  {
    v322 = v1;
    v10 = *(v0 + 368);
    v11 = *(v0 + 336);
    v12 = *(v0 + 320);
    v13 = *(v0 + 296);
    v14 = *(v0 + 304);
    v15 = *(v0 + 88);
    (v4)(v10, *(v0 + 376), *(v0 + 328));
    v16 = *(v11 + 96);
    v17 = OUTLINED_FUNCTION_25_2();
    v18(v17);
    (*(v14 + 32))(v12, v10, v13);
    v19 = qword_2803226E0;
    v20 = v15;
    if (v19 != -1)
    {
      OUTLINED_FUNCTION_0_10();
    }

    v22 = *(v0 + 312);
    v21 = *(v0 + 320);
    v24 = *(v0 + 296);
    v23 = *(v0 + 304);
    v25 = *(v0 + 288);
    v26 = *(v0 + 216);
    v27 = *(v0 + 224);
    v28 = __swift_project_value_buffer(v26, qword_28033D910);
    v318 = *(v27 + 16);
    v318(v25, v28, v26);
    v29 = *(v23 + 16);
    v30 = OUTLINED_FUNCTION_15_6();
    v31(v30);
    v32 = sub_2698548B4();
    v33 = sub_269854F44();
    v34 = os_log_type_enabled(v32, v33);
    v36 = *(v0 + 304);
    v35 = *(v0 + 312);
    v37 = *(v0 + 288);
    v38 = *(v0 + 296);
    v39 = *(v0 + 216);
    v40 = *(v0 + 224);
    if (v34)
    {
      v306 = v33;
      v41 = OUTLINED_FUNCTION_27_2();
      v302 = OUTLINED_FUNCTION_9_3();
      v328[0] = v302;
      *v41 = 136315138;
      sub_2696DF35C();
      v309 = v39;
      v299 = sub_269855544();
      v43 = v42;
      v44 = *(v36 + 8);
      v45 = OUTLINED_FUNCTION_22_4();
      v44(v45);
      v46 = sub_26974F520(v299, v43, v328);

      *(v41 + 4) = v46;
      _os_log_impl(&dword_269684000, v32, v306, "Creating intent from NLv3Intent. nlIntent=%s", v41, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v302);
      OUTLINED_FUNCTION_10();
      v47 = v44;
      OUTLINED_FUNCTION_10();

      v48 = *(v40 + 8);
      v50 = v309;
      v49 = v37;
    }

    else
    {

      v47 = *(v36 + 8);
      v71 = OUTLINED_FUNCTION_22_4();
      v47(v71);
      v72 = *(v40 + 8);
      v49 = OUTLINED_FUNCTION_22_3();
    }

    v315 = v48;
    v48(v49, v50);
    v73 = *(v0 + 296);
    v74 = *(v0 + 96);
    v75 = *(v74 + 80);
    v76 = *(v74 + 96);
    v1 = v322;
    sub_2697A1D3C(*(v0 + 320), v75, v76);
    v77 = OUTLINED_FUNCTION_22_3();
    v47(v77);
    goto LABEL_17;
  }

  if (v8 != *MEMORY[0x277D5C150])
  {
    if (v8 != *MEMORY[0x277D5C140])
    {
      if (v8 != *MEMORY[0x277D5C148])
      {
        v70 = *(v0 + 88);
        goto LABEL_49;
      }

      v170 = *(v0 + 376);
      v171 = *(v0 + 352);
      v172 = *(v0 + 328);
      v173 = *(v0 + 336);
      v174 = *(v0 + 88);
      v175 = OUTLINED_FUNCTION_12_11();
      v4(v175);
      v176 = *(v173 + 96);
      v177 = OUTLINED_FUNCTION_7_16();
      v178(v177);
      v179 = *v171;
      v180 = qword_2803226E0;
      v181 = v174;
      if (v180 != -1)
      {
        OUTLINED_FUNCTION_0_10();
      }

      v182 = *(v0 + 264);
      v183 = *(v0 + 216);
      v184 = *(v0 + 224);
      __swift_project_value_buffer(v183, qword_28033D910);
      v185 = *(v184 + 16);
      v186 = OUTLINED_FUNCTION_25_2();
      v318 = v187;
      (v187)(v186);
      v188 = sub_2698548B4();
      v189 = sub_269854F44();
      if (OUTLINED_FUNCTION_19_4(v189))
      {
        v190 = OUTLINED_FUNCTION_16_2();
        OUTLINED_FUNCTION_16_6(v190);
        _os_log_impl(&dword_269684000, v188, v189, "Creating intent from pommesResponse.", v183, 2u);
        OUTLINED_FUNCTION_4_16();
      }

      v191 = *(v0 + 264);
      v192 = *(v0 + 216);
      v193 = *(v0 + 224);

      v315 = *(v193 + 8);
      v315(v191, v192);
      sub_2696D6C54();
      if (!v194)
      {
        v269 = *(v0 + 256);
        v270 = *(v0 + 216);
        v271 = OUTLINED_FUNCTION_25_2();
        (v318)(v271);
        v272 = sub_2698548B4();
        v273 = sub_269854F14();
        if (OUTLINED_FUNCTION_19_4(v273))
        {
          v274 = OUTLINED_FUNCTION_16_2();
          OUTLINED_FUNCTION_16_6(v274);
          OUTLINED_FUNCTION_10_9(&dword_269684000, v275, v276, "failed to make intent due to missing firstVideoExperience");
          OUTLINED_FUNCTION_4_16();
        }

        v277 = *(v0 + 256);
        v278 = *(v0 + 216);
        v279 = *(v0 + 224);

        v280 = OUTLINED_FUNCTION_22_3();
        (v315)(v280);
        sub_2696BAE9C();
        OUTLINED_FUNCTION_30_1();
        OUTLINED_FUNCTION_3_17(v281, 11);

        goto LABEL_56;
      }

      v195 = v194;
      v197 = *(v0 + 168);
      v196 = *(v0 + 176);
      v326 = *(v0 + 160);
      v198 = *(v0 + 96);
      sub_269854544();
      v199 = v179;
      v200 = *(v198 + 80);
      v201 = *(v198 + 96);
      sub_2697A1D54(v196, v200, v201);

      v76 = v201;
      (*(v197 + 8))(v196, v326);
      v75 = v200;
LABEL_17:
      v78 = (*(*(v0 + 336) + 8))(*(v0 + 376), *(v0 + 328));
      if (qword_2803226E0 != -1)
      {
        v78 = OUTLINED_FUNCTION_0_10();
      }

      v80 = *(v0 + 224);
      v79 = *(v0 + 232);
      v81 = *(v0 + 216);
      OUTLINED_FUNCTION_29_2(v78, qword_28033D910);
      v82 = OUTLINED_FUNCTION_12_11();
      (v318)(v82);
      v83 = v1;
      v84 = sub_2698548B4();
      v85 = sub_269854F44();

      v86 = os_log_type_enabled(v84, v85);
      v88 = *(v0 + 224);
      v87 = *(v0 + 232);
      v89 = *(v0 + 216);
      v289 = v83;
      if (v86)
      {
        v90 = swift_slowAlloc();
        v328[0] = swift_slowAlloc();
        *v90 = 136315394;
        swift_getObjectType();
        v91 = sub_269855724();
        v319 = v87;
        v310 = v89;
        v93 = v75;
        v94 = sub_26974F520(v91, v92, v328);

        *(v90 + 4) = v94;
        *(v90 + 12) = 2080;
        *(v0 + 64) = v83;
        v95 = (*(*(v76 + 8) + 16))(v93);
        *(v0 + 72) = v95;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803236D8, &unk_26985CEF0);
        v96 = sub_269855094();
        v98 = v97;

        v99 = sub_26974F520(v96, v98, v328);

        *(v90 + 14) = v99;
        _os_log_impl(&dword_269684000, v84, v85, "Finished creating %s from parse. mediaSearch=%s", v90, 0x16u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_10();
        OUTLINED_FUNCTION_10();

        v100 = v319;
        v101 = v310;
      }

      else
      {

        v100 = OUTLINED_FUNCTION_7_16();
      }

      v315(v100, v101);
      v103 = *(v0 + 368);
      v102 = *(v0 + 376);
      v105 = *(v0 + 352);
      v104 = *(v0 + 360);
      v106 = *(v0 + 344);
      v108 = *(v0 + 312);
      v107 = *(v0 + 320);
      v110 = *(v0 + 280);
      v109 = *(v0 + 288);
      v111 = *(v0 + 272);
      v291 = *(v0 + 264);
      v293 = *(v0 + 256);
      v295 = *(v0 + 248);
      v297 = *(v0 + 240);
      v300 = *(v0 + 232);
      v303 = *(v0 + 208);
      v307 = *(v0 + 184);
      v311 = *(v0 + 176);
      v316 = *(v0 + 152);
      v320 = *(v0 + 128);
      v324 = *(v0 + 120);

      v112 = *(v0 + 8);
      v113 = *MEMORY[0x277D85DE8];

      return v112(v289);
    }

    v325 = v1;
    v115 = *(v0 + 376);
    v116 = *(v0 + 360);
    v117 = *(v0 + 328);
    v118 = *(v0 + 336);
    v120 = *(v0 + 200);
    v119 = *(v0 + 208);
    v121 = *(v0 + 192);
    v122 = *(v0 + 88);
    v123 = OUTLINED_FUNCTION_12_11();
    v4(v123);
    v124 = *(v118 + 96);
    v125 = OUTLINED_FUNCTION_7_16();
    v126(v125);
    v127 = *(v120 + 32);
    v128 = OUTLINED_FUNCTION_15_6();
    v129(v128);
    v130 = qword_2803226E0;
    v131 = v122;
    if (v130 != -1)
    {
      v131 = OUTLINED_FUNCTION_0_10();
    }

    v132 = *(v0 + 280);
    v133 = *(v0 + 216);
    v134 = *(v0 + 224);
    OUTLINED_FUNCTION_29_2(v131, qword_28033D910);
    v304 = v135;
    v318 = *(v134 + 16);
    (v318)(v132);
    v136 = sub_2698548B4();
    v137 = sub_269854F44();
    if (os_log_type_enabled(v136, v137))
    {
      v138 = OUTLINED_FUNCTION_16_2();
      OUTLINED_FUNCTION_16_6(v138);
      _os_log_impl(&dword_269684000, v136, v137, "Creating intent from PegasusResult.", v133, 2u);
      OUTLINED_FUNCTION_4_16();
    }

    v139 = *(v0 + 280);
    v141 = *(v0 + 216);
    v140 = *(v0 + 224);
    v142 = *(v0 + 208);
    v143 = *(v0 + 152);
    v312 = *(v0 + 160);
    v145 = *(v0 + 136);
    v144 = *(v0 + 144);
    v146 = *(v0 + 128);

    v315 = *(v140 + 8);
    v315(v139, v141);
    sub_269853864();
    sub_2696D3C74();
    (*(v144 + 8))(v143, v145);
    if (__swift_getEnumTagSinglePayload(v146, 1, v312) == 1)
    {
      v147 = *(v0 + 272);
      v148 = *(v0 + 216);
      sub_269698048(*(v0 + 128), &qword_280323360, &unk_26985AB80);
      v318(v147, v304, v148);
      v149 = sub_2698548B4();
      v150 = sub_269854F14();
      if (OUTLINED_FUNCTION_19_4(v150))
      {
        v151 = OUTLINED_FUNCTION_16_2();
        OUTLINED_FUNCTION_16_6(v151);
        OUTLINED_FUNCTION_10_9(&dword_269684000, v152, v153, "failed to make intent due to missing videoClientComponent");
        OUTLINED_FUNCTION_4_16();
      }

      v154 = *(v0 + 272);
      v155 = *(v0 + 216);
      v156 = *(v0 + 224);
      v158 = *(v0 + 200);
      v157 = *(v0 + 208);
      v159 = *(v0 + 192);

      v160 = OUTLINED_FUNCTION_22_3();
      (v315)(v160);
      sub_2696BAE9C();
      OUTLINED_FUNCTION_30_1();
      OUTLINED_FUNCTION_3_17(v161, 11);

      (*(v158 + 8))(v157, v159);
      goto LABEL_56;
    }

    v202 = *(v0 + 200);
    v313 = *(v0 + 208);
    v204 = *(v0 + 184);
    v203 = *(v0 + 192);
    v205 = *(v0 + 160);
    v206 = *(v0 + 168);
    v207 = *(v0 + 96);
    (*(v206 + 32))(v204, *(v0 + 128), v205);
    v208 = *(v207 + 80);
    v76 = *(v207 + 96);
    v1 = v325;
    sub_2697A1D54(v204, v208, v76);
    (*(v206 + 8))(v204, v205);
    (*(v202 + 8))(v313, v203);
LABEL_69:
    v75 = v208;
    goto LABEL_17;
  }

  v323 = v1;
  v51 = *(v0 + 376);
  v53 = *(v0 + 336);
  v52 = *(v0 + 344);
  v54 = *(v0 + 328);
  v56 = *(v0 + 112);
  v55 = *(v0 + 120);
  v57 = *(v0 + 104);
  v58 = *(v0 + 88);
  v59 = OUTLINED_FUNCTION_12_11();
  v4(v59);
  v60 = *(v53 + 96);
  v61 = OUTLINED_FUNCTION_7_16();
  v62(v61);
  v63 = *(v56 + 32);
  v64 = OUTLINED_FUNCTION_15_6();
  v65(v64);
  v66 = v58;
  if (sub_269853884() == 0xD00000000000002DLL && 0x800000026987A0A0 == v67)
  {

    v1 = v323;
    v9 = 0x280322000uLL;
  }

  else
  {
    v69 = sub_269855584();

    v1 = v323;
    v9 = 0x280322000;
    if ((v69 & 1) == 0)
    {
      v70 = (*(*(v0 + 112) + 8))(*(v0 + 120), *(v0 + 104));
LABEL_49:
      if (*(v9 + 1760) != -1)
      {
        v70 = OUTLINED_FUNCTION_0_10();
      }

      v209 = *(v0 + 240);
      v210 = *(v0 + 216);
      v211 = *(v0 + 224);
      OUTLINED_FUNCTION_29_2(v70, qword_28033D910);
      v212 = *(v211 + 16);
      v213 = OUTLINED_FUNCTION_12_11();
      v214(v213);
      v215 = sub_2698548B4();
      v216 = sub_269854F24();
      if (OUTLINED_FUNCTION_19_4(v216))
      {
        v217 = OUTLINED_FUNCTION_16_2();
        OUTLINED_FUNCTION_16_6(v217);
        OUTLINED_FUNCTION_10_9(&dword_269684000, v218, v219, "failed to make intent - no matching NLv3IntentOnly or directInvocation in Parse");
        OUTLINED_FUNCTION_4_16();
      }

      v220 = *(v0 + 240);
      v221 = *(v0 + 216);
      v222 = *(v0 + 224);

      v223 = *(v222 + 8);
      v224 = OUTLINED_FUNCTION_22_3();
      v225(v224);
      sub_2696BAE9C();
      OUTLINED_FUNCTION_30_1();
      OUTLINED_FUNCTION_3_17(v226, 13);

      goto LABEL_56;
    }
  }

  v162 = *(v0 + 120);
  if (sub_269853894())
  {
    v163 = objc_opt_self();
    v164 = sub_2698549D4();

    *(v0 + 56) = 0;
    v165 = [v163 dataWithJSONObject:v164 options:0 error:v0 + 56];

    v166 = *(v0 + 56);
    if (v165)
    {
      v167 = sub_269851C94();
      v169 = v168;

      if (qword_280322440 != -1)
      {
        swift_once();
      }

      sub_2696CC3A4();
      sub_269851A84();
      v247 = sub_2696C1F3C(v167, v169);
      v248 = *(v0 + 24);
      if (v248)
      {
        v249 = *(v0 + 16);
        v250 = *(v0 + 40);
        v251 = *(v0 + 48);
        if (*(v9 + 1760) != -1)
        {
          v247 = OUTLINED_FUNCTION_0_10();
        }

        v252 = *(v0 + 248);
        v253 = *(v0 + 216);
        v254 = *(v0 + 224);
        OUTLINED_FUNCTION_29_2(v247, qword_28033D910);
        v255 = *(v254 + 16);
        v256 = OUTLINED_FUNCTION_12_11();
        v318 = v257;
        (v257)(v256);

        v258 = sub_2698548B4();
        v259 = sub_269854F44();

        v260 = os_log_type_enabled(v258, v259);
        v261 = *(v0 + 216);
        v262 = *(v0 + 224);
        if (v260)
        {
          v317 = *(v0 + 248);
          v263 = OUTLINED_FUNCTION_27_2();
          v264 = OUTLINED_FUNCTION_9_3();
          v328[0] = v264;
          *v263 = 136315138;

          v265 = sub_26974F520(v249, v248, v328);
          v266 = v261;
          v267 = v265;

          *(v263 + 4) = v267;
          _os_log_impl(&dword_269684000, v258, v259, "Creating intent from com.apple.siri.video.ReformSearchToThirdParty. mediaName=%s", v263, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v264);
          v1 = v323;
          OUTLINED_FUNCTION_10();
          OUTLINED_FUNCTION_4_16();

          v268 = *(v262 + 8);
          v268(v317, v266);
        }

        else
        {

          v282 = *(v262 + 8);
          v283 = OUTLINED_FUNCTION_22_3();
          v268 = v284;
          (v284)(v283);
        }

        v315 = v268;
        v286 = *(v0 + 112);
        v285 = *(v0 + 120);
        v287 = *(v0 + 96);
        v288 = *(v0 + 104);
        v208 = *(v287 + 80);
        v76 = *(v287 + 96);
        sub_2697A1E44();

        (*(v286 + 8))(v285, v288);
        goto LABEL_69;
      }
    }

    else
    {
      v227 = v166;
      v228 = sub_269851BD4();

      swift_willThrow();
    }
  }

  v230 = *(v0 + 112);
  v229 = *(v0 + 120);
  v231 = *(v0 + 104);
  sub_2696BAE9C();
  OUTLINED_FUNCTION_30_1();
  OUTLINED_FUNCTION_3_17(v232, 4);

  v233 = *(v230 + 8);
  v234 = OUTLINED_FUNCTION_7_16();
  v235(v234);
LABEL_56:
  v236 = *(v0 + 368);
  v238 = *(v0 + 352);
  v237 = *(v0 + 360);
  v239 = *(v0 + 344);
  v240 = *(v0 + 320);
  v241 = *(v0 + 312);
  v243 = *(v0 + 280);
  v242 = *(v0 + 288);
  v290 = *(v0 + 272);
  v292 = *(v0 + 264);
  v294 = *(v0 + 256);
  v296 = *(v0 + 248);
  v298 = *(v0 + 240);
  v301 = *(v0 + 232);
  v305 = *(v0 + 208);
  v308 = *(v0 + 184);
  v314 = *(v0 + 176);
  v244 = *(v0 + 152);
  v321 = *(v0 + 128);
  v327 = *(v0 + 120);
  (*(*(v0 + 336) + 8))(*(v0 + 376), *(v0 + 328));

  v245 = *(v0 + 8);
  v246 = *MEMORY[0x277D85DE8];

  return v245();
}

uint64_t sub_2696DE91C()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2696DE9C4;

  return sub_2696DD360();
}

uint64_t sub_2696DE9C4()
{
  OUTLINED_FUNCTION_2_7();
  v3 = v2;
  v4 = *(*v1 + 16);
  v5 = *v1;
  OUTLINED_FUNCTION_1_6();
  *v6 = v5;

  v8 = *(v5 + 8);
  if (!v0)
  {
    v7 = v3;
  }

  return v8(v7);
}

uint64_t sub_2696DEAB8(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = a2[10];
  v5 = a2[11];
  v7 = a2[12];
  v8 = type metadata accessor for CommonIntentFlowStrategy();

  return MEMORY[0x2821BB5E0](a1, v8, a3);
}

uint64_t sub_2696DEB14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(MEMORY[0x277D5BF48] + 4);
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_2696DEBD8;

  return MEMORY[0x2821BB5D8](a1, a2, a3, a4);
}

uint64_t sub_2696DEBD8()
{
  OUTLINED_FUNCTION_2_7();
  v1 = *(*v0 + 16);
  v2 = *v0;
  OUTLINED_FUNCTION_1_6();
  *v3 = v2;

  v4 = *(v2 + 8);

  return v4();
}

uint64_t sub_2696DECC0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v11 = *(MEMORY[0x277D5B498] + 4);
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  v13 = a4[10];
  v14 = a4[11];
  v15 = a4[12];
  v16 = type metadata accessor for CommonIntentFlowStrategy();
  *v12 = v5;
  v12[1] = sub_2696DF3B4;

  return MEMORY[0x2821B9D90](a1, a2, a3, v16, a5);
}

uint64_t sub_2696DEDA4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v11 = *(MEMORY[0x277D5B490] + 4);
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  v13 = a4[10];
  v14 = a4[11];
  v15 = a4[12];
  v16 = type metadata accessor for CommonIntentFlowStrategy();
  *v12 = v5;
  v12[1] = sub_2696DF3B4;

  return MEMORY[0x2821B9D88](a1, a2, a3, v16, a5);
}

uint64_t sub_2696DEE88(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v11 = *(MEMORY[0x277D5B488] + 4);
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  v13 = a4[10];
  v14 = a4[11];
  v15 = a4[12];
  v16 = type metadata accessor for CommonIntentFlowStrategy();
  *v12 = v5;
  v12[1] = sub_2696DF3B4;

  return MEMORY[0x2821B9D80](a1, a2, a3, v16, a5);
}

uint64_t sub_2696DEF6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v13 = *(MEMORY[0x277D5B480] + 4);
  v14 = swift_task_alloc();
  *(v6 + 16) = v14;
  v15 = a5[10];
  v16 = a5[11];
  v17 = a5[12];
  v18 = type metadata accessor for CommonIntentFlowStrategy();
  *v14 = v6;
  v14[1] = sub_2696DF3B4;

  return MEMORY[0x2821B9D78](a1, a2, a3, a4, v18, a6);
}

uint64_t sub_2696DF058(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v13 = *(MEMORY[0x277D5B6D8] + 4);
  v14 = swift_task_alloc();
  *(v6 + 16) = v14;
  v15 = a5[10];
  v16 = a5[11];
  v17 = a5[12];
  v18 = type metadata accessor for CommonIntentFlowStrategy();
  *v14 = v6;
  v14[1] = sub_2696DF3B4;

  return MEMORY[0x2821BA0D8](a1, a2, a3, a4, v18, a6);
}

uint64_t sub_2696DF144(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v9 = *(MEMORY[0x277D5C0D0] + 4);
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  v11 = a3[10];
  v12 = a3[11];
  v13 = a3[12];
  v14 = type metadata accessor for CommonIntentFlowStrategy();
  *v10 = v4;
  v10[1] = sub_2696DF218;

  return MEMORY[0x2821BBB48](a1, a2, v14, a4);
}

uint64_t sub_2696DF218()
{
  OUTLINED_FUNCTION_2_7();
  v2 = v1;
  v3 = *(*v0 + 16);
  v4 = *v0;
  OUTLINED_FUNCTION_1_6();
  *v5 = v4;

  v6 = *(v4 + 8);

  return v6(v2);
}

unint64_t sub_2696DF35C()
{
  result = qword_2803236E0;
  if (!qword_2803236E0)
  {
    sub_269853F44();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803236E0);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_3_17@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = a2;
  *(a1 + 24) = 3;

  return swift_willThrow();
}

void OUTLINED_FUNCTION_4_16()
{

  JUMPOUT(0x26D647170);
}

void OUTLINED_FUNCTION_5_15()
{
  v1 = *(v0 - 152);
  v2 = *(v0 - 144);
  v3 = *(v0 - 136);
}

void OUTLINED_FUNCTION_10_9(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v6, a4, v4, 2u);
}

BOOL OUTLINED_FUNCTION_19_4(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_27_2()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_30_1()
{

  return swift_allocError();
}

uint64_t sub_2696DF51C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323700, qword_26985B120);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v11 - v2;
  if (qword_2803225D0 != -1)
  {
    swift_once();
  }

  type metadata accessor for MediaNLIntent();
  v4 = _s10MediaNLAppVMa(0);
  OUTLINED_FUNCTION_0_20();
  sub_2696DFA64(v5, v6);
  sub_2696DFA64(qword_280323708, _s10MediaNLAppVMa);
  sub_269853D44();
  if (__swift_getEnumTagSinglePayload(v3, 1, v4) == 1)
  {
    sub_2696DFAAC(v3);
  }

  else
  {
    sub_2697A5220();
    sub_2696DFB14(v3, _s10MediaNLAppVMa);
  }

  v7 = sub_269854404();
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  swift_allocObject();
  return sub_2698543D4();
}

uint64_t sub_2696DF710@<X0>(uint64_t a1@<X8>)
{
  if (qword_280322628 != -1)
  {
    swift_once();
  }

  type metadata accessor for MediaNLIntent();
  OUTLINED_FUNCTION_0_20();
  sub_2696DFA64(v2, v3);
  sub_269853D54();
  if (v11 == 7)
  {
    goto LABEL_4;
  }

  if (sub_2697A9738(v11) == 0x6C65636E6163 && v5 == 0xE600000000000000)
  {

LABEL_12:
    v4 = MEMORY[0x277D553D0];
    goto LABEL_13;
  }

  v7 = sub_269855584();

  if (v7)
  {
    goto LABEL_12;
  }

LABEL_4:
  v4 = MEMORY[0x277D553D8];
LABEL_13:
  v8 = *v4;
  v9 = sub_269854414();
  (*(*(v9 - 8) + 104))(a1, v8, v9);
  return __swift_storeEnumTagSinglePayload(a1, 0, 1, v9);
}

uint64_t sub_2696DF89C()
{
  sub_2696DFB14(v0 + OBJC_IVAR____TtC16SiriVideoIntents35CommonIntentThirdPartyAppResolution_intent, type metadata accessor for MediaNLIntent);
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t type metadata accessor for CommonIntentThirdPartyAppResolution()
{
  result = qword_2803236F0;
  if (!qword_2803236F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2696DF968()
{
  result = sub_269853F44();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_2696DFA64(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2696DFAAC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323700, qword_26985B120);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2696DFB14(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2696DFC18()
{
  OUTLINED_FUNCTION_2_7();
  v1[53] = v2;
  v1[54] = v0;
  v1[55] = *v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323798, &unk_26985C770);
  OUTLINED_FUNCTION_8_9(v3);
  v5 = *(v4 + 64);
  v1[56] = OUTLINED_FUNCTION_4_7();
  v6 = type metadata accessor for ThirdPartyAppResolutionUtil.ResolveResponse.Action(0);
  v1[57] = v6;
  OUTLINED_FUNCTION_8_9(v6);
  v8 = *(v7 + 64);
  v1[58] = OUTLINED_FUNCTION_4_7();
  v9 = type metadata accessor for ThirdPartyAppResolutionUtil.ResolveResponse(0);
  v1[59] = v9;
  OUTLINED_FUNCTION_8_9(v9);
  v11 = *(v10 + 64);
  v1[60] = OUTLINED_FUNCTION_4_7();
  v12 = OUTLINED_FUNCTION_3_16();

  return MEMORY[0x2822009F8](v12, v13, v14);
}

uint64_t sub_2696DFD0C()
{
  v2 = *(v0 + 432);
  v1 = *(v0 + 440);
  *(v0 + 488) = *(v2 + 16);
  v3 = *(v1 + 88);
  *(v0 + 496) = v3;
  v4 = *(v3 + 16);
  *(v0 + 504) = *(v1 + 80);
  v5 = v4();
  sub_2696A73F8(v2 + 72, v0 + 24);
  sub_2696A73F8(v2 + 112, v0 + 64);
  v11 = *(v2 + 152);
  sub_2696A73F8(v2 + 168, v0 + 120);
  sub_2696A73F8(v2 + 208, v0 + 160);
  sub_2696A73F8(v2 + 248, v0 + 200);
  sub_2696A73F8(v2 + 32, v0 + 240);
  sub_2696A73F8(v2 + 288, v0 + 280);
  sub_2696A73F8(v2 + 328, v0 + 320);
  sub_2696A73F8(v2 + 368, v0 + 360);
  *(v0 + 16) = v5 & 1;
  *(v0 + 104) = v11;
  swift_unknownObjectRetain();
  swift_task_alloc();
  OUTLINED_FUNCTION_23_2();
  *(v0 + 512) = v6;
  *v6 = v7;
  v6[1] = sub_2696DFE70;
  v8 = *(v0 + 480);
  v9 = *(v0 + 424);

  return sub_2697118DC(v8, v9);
}

uint64_t sub_2696DFE70()
{
  OUTLINED_FUNCTION_2_7();
  OUTLINED_FUNCTION_14_6();
  v2 = *(v1 + 512);
  v3 = *v0;
  OUTLINED_FUNCTION_1_6();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_3_16();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_2696DFF54()
{
  v2 = v0[59];
  v1 = v0[60];
  v4 = v0[57];
  v3 = v0[58];
  v5 = v0[54];
  v6 = (v1 + *(v2 + 20));
  v8 = *v6;
  v7 = v6[1];
  *(v5 + 425) = v7 != 0;
  v9 = *(v5 + 416);
  *(v5 + 408) = v8;
  *(v5 + 416) = v7;

  *(v5 + 424) = *(v1 + *(v2 + 24));
  v10 = OUTLINED_FUNCTION_7_16();
  sub_2696E2244(v10, v11);
  OUTLINED_FUNCTION_22_3();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v23 = v0[58];
      v24 = v0[56];
      v25 = v0[54];
      v26 = *v23;
      v27 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_2803237A0, qword_26985B440);
      sub_2696E2358(v23 + *(v27 + 48), v24);
      v28 = *(v25 + 24);
      v29 = OBJC_IVAR____TtC16SiriVideoIntents35ThirdPartyAppDisambiguationStrategy_appDisambiguationContext;
      swift_beginAccess();
      sub_2696E23C8(v24, v28 + v29);
      swift_endAccess();
      v30 = *(v26 + 16);
      if (!v30)
      {
        goto LABEL_12;
      }

      v43 = MEMORY[0x277D84F90];
      sub_2698552A4();
      result = sub_269854404();
      v32 = 0;
      v33 = (v26 + 40);
      while (v32 < *(v26 + 16))
      {
        ++v32;
        v34 = *(v33 - 1);
        v35 = *v33;

        sub_2698543E4();
        sub_269855284();
        v36 = *(v43 + 16);
        sub_2698552B4();
        sub_2698552C4();
        result = sub_269855294();
        v33 += 2;
        if (v30 == v32)
        {
LABEL_12:

          v37 = v0[60];
          v38 = v0[56];
          sub_2698533E4();
          v17 = sub_2698533A4();

          sub_269698048(v38, &qword_280323798, &unk_26985C770);
          sub_2696E22A8((v0 + 2));
          v18 = v37;
          goto LABEL_13;
        }
      }

      __break(1u);
      return result;
    case 2u:
      v19 = v0[60];
      v20 = v0[58];
      v21 = *v20;
      v22 = v20[1];
      sub_2698533E4();
      sub_269854404();
      sub_2698543E4();
      v17 = sub_2698533B4();

      goto LABEL_7;
    case 3u:
      v19 = v0[60];
      sub_2698533E4();
      v17 = sub_269853394();
LABEL_7:
      sub_2696E22A8((v0 + 2));
      v18 = v19;
      goto LABEL_13;
    default:
      v12 = v0[58];
      v13 = *v12;
      v14 = v12[1];
      if (*(v12 + 16) == 1)
      {
        v15 = v0[61];
        (*(v0[62] + 24))(v0[63]);
      }

      v16 = v0[60];
      sub_2698533E4();
      sub_269854404();
      OUTLINED_FUNCTION_22_3();
      sub_2698543E4();
      v17 = sub_2698533D4();

      sub_2696E22A8((v0 + 2));
      v18 = v16;
LABEL_13:
      sub_2696E22FC(v18);
      v39 = v0[60];
      v40 = v0[58];
      v41 = v0[56];

      v42 = v0[1];

      return v42(v17);
  }
}

uint64_t sub_2696E02E0()
{
  OUTLINED_FUNCTION_2_7();
  v0[2] = v1;
  v2 = sub_2698548D4();
  v0[3] = v2;
  OUTLINED_FUNCTION_5_12(v2);
  v0[4] = v3;
  v5 = *(v4 + 64);
  v0[5] = OUTLINED_FUNCTION_4_7();
  v6 = OUTLINED_FUNCTION_3_16();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_2696E0384()
{
  if (qword_2803226E0 != -1)
  {
    OUTLINED_FUNCTION_0_10();
  }

  v2 = v0[4];
  v1 = v0[5];
  __swift_project_value_buffer(v0[3], qword_28033D910);
  v3 = OUTLINED_FUNCTION_2_8();
  v4(v3);
  v5 = sub_2698548B4();
  v6 = sub_269854F14();
  if (os_log_type_enabled(v5, v6))
  {
    *OUTLINED_FUNCTION_16_2() = 0;
    OUTLINED_FUNCTION_31_0(&dword_269684000, v7, v8, "CommonIntentThirdPartyAppResolutionStrategy#makeAppResolutionSuccessfulResponse");
    OUTLINED_FUNCTION_10();
  }

  v10 = v0[4];
  v9 = v0[5];
  v12 = v0[2];
  v11 = v0[3];

  v13 = *(v10 + 8);
  v14 = OUTLINED_FUNCTION_22_3();
  v15(v14);
  v16 = sub_2698538F4();
  v17 = MEMORY[0x277D5C1D8];
  v12[3] = v16;
  v12[4] = v17;
  __swift_allocate_boxed_opaque_existential_1(v12);
  sub_2698538E4();

  OUTLINED_FUNCTION_4_17();

  return v18();
}

uint64_t sub_2696E04E0()
{
  OUTLINED_FUNCTION_2_7();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v4 = sub_269854454();
  v1[5] = v4;
  OUTLINED_FUNCTION_5_12(v4);
  v1[6] = v5;
  v7 = *(v6 + 64);
  v1[7] = OUTLINED_FUNCTION_4_7();
  v8 = sub_269854444();
  v1[8] = v8;
  OUTLINED_FUNCTION_5_12(v8);
  v1[9] = v9;
  v11 = *(v10 + 64) + 15;
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();
  v12 = sub_2698548D4();
  v1[12] = v12;
  OUTLINED_FUNCTION_5_12(v12);
  v1[13] = v13;
  v15 = *(v14 + 64);
  v1[14] = OUTLINED_FUNCTION_4_7();
  v16 = OUTLINED_FUNCTION_3_16();

  return MEMORY[0x2822009F8](v16, v17, v18);
}

uint64_t sub_2696E0634()
{
  if (qword_2803226E0 != -1)
  {
    OUTLINED_FUNCTION_0_10();
  }

  v2 = v0[13];
  v1 = v0[14];
  __swift_project_value_buffer(v0[12], qword_28033D910);
  v3 = OUTLINED_FUNCTION_2_8();
  v4(v3);
  v5 = sub_2698548B4();
  v6 = sub_269854F14();
  if (os_log_type_enabled(v5, v6))
  {
    *OUTLINED_FUNCTION_16_2() = 0;
    OUTLINED_FUNCTION_31_0(&dword_269684000, v7, v8, "CommonIntentThirdPartyAppResolutionStrategy#makeAppResolutionUnsuccessfulResponse");
    OUTLINED_FUNCTION_10();
  }

  v10 = v0[13];
  v9 = v0[14];
  v11 = v0[12];
  v12 = v0[4];

  v13 = *(v10 + 8);
  v14 = OUTLINED_FUNCTION_22_3();
  v15(v14);
  v16 = v0[4];
  if (*(v12 + 425) == 1)
  {
    v17 = *(v16 + 416);
    if (v17)
    {
      v18 = v0[2];
      v19 = *(v16 + 408);
      sub_2696E2200();

      sub_269855204();
      MEMORY[0x26D645A60](0xD000000000000027, 0x800000026987CF80);
      MEMORY[0x26D645A60](v19, v17);

      MEMORY[0x26D645A60](0xD000000000000019, 0x800000026987CFB0);
      v20 = sub_2696D6A0C(0, 0xE000000000000000);
      v21 = *(v16 + 64);
      __swift_project_boxed_opaque_existential_1((v16 + 32), *(v16 + 56));
      sub_269853494();
      v22 = sub_2698538F4();
      v23 = MEMORY[0x277D5C1D8];
      v18[3] = v22;
      v18[4] = v23;
      __swift_allocate_boxed_opaque_existential_1(v18);
      sub_2698538E4();

      v24 = v0[14];
      v25 = v0[10];
      v26 = v0[11];
      v27 = v0[7];

      OUTLINED_FUNCTION_4_17();
LABEL_20:

      return v28();
    }
  }

  if (*(v16 + 424) == 1)
  {
    v29 = *(MEMORY[0x277D5C040] + 4);
    swift_task_alloc();
    OUTLINED_FUNCTION_23_2();
    v0[15] = v30;
    *v30 = v31;
    v30[1] = sub_2696E0B58;
    v32 = v0[2];

    return MEMORY[0x2821BB9F8](v32, 0, 0);
  }

  v33 = v0[7];
  v34 = v0[6];
  v35 = v0[5];
  v36 = v0[3];
  sub_2698533C4();
  v37 = *(v34 + 88);
  v38 = OUTLINED_FUNCTION_22_3();
  if (v39(v38) != *MEMORY[0x277D55410])
  {
    (*(v0[6] + 8))(v0[7], v0[5]);
LABEL_19:
    sub_2696BAE9C();
    swift_allocError();
    *(v58 + 8) = 0;
    *(v58 + 16) = 0;
    *v58 = 1;
    *(v58 + 24) = 3;
    swift_willThrow();
    v59 = v0[14];
    v61 = v0[10];
    v60 = v0[11];
    v62 = v0[7];

    OUTLINED_FUNCTION_7_7();
    goto LABEL_20;
  }

  v41 = v0[10];
  v40 = v0[11];
  v42 = v0[8];
  v43 = v0[9];
  v44 = v0[7];
  (*(v0[6] + 96))(v44, v0[5]);
  (*(v43 + 32))(v40, v44, v42);
  v45 = *(v43 + 16);
  v46 = OUTLINED_FUNCTION_7_16();
  v47(v46);
  v48 = (*(v43 + 88))(v41, v42);
  v49 = v0[9];
  v50 = v0[8];
  if (v48 != *MEMORY[0x277D553F0])
  {
    v57 = *(v49 + 8);
    v57(v0[11], v50);
    v57(v0[10], v0[8]);
    goto LABEL_19;
  }

  v51 = v0[10];
  (*(v49 + 96))(v51, v50);
  v52 = *v51;
  v0[16] = v52;
  v53 = *(MEMORY[0x277D5C048] + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_23_2();
  v0[17] = v54;
  *v54 = v55;
  v54[1] = sub_2696E0CC4;
  v56 = v0[2];

  return MEMORY[0x2821BBA00](v56, v52);
}

uint64_t sub_2696E0B58()
{
  v1 = *v0;
  v2 = *(*v0 + 120);
  v3 = *v0;
  OUTLINED_FUNCTION_1_6();
  *v4 = v3;

  v5 = v1[14];
  v6 = v1[11];
  v7 = v1[10];
  v8 = v1[7];

  v9 = *(v3 + 8);

  return v9();
}

uint64_t sub_2696E0CC4()
{
  OUTLINED_FUNCTION_2_7();
  OUTLINED_FUNCTION_14_6();
  v3 = *(v2 + 136);
  v4 = *v1;
  OUTLINED_FUNCTION_1_6();
  *v5 = v4;
  *(v6 + 144) = v0;

  if (v0)
  {
    v7 = sub_2696E0E70;
  }

  else
  {
    v7 = sub_2696E0DC8;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_2696E0DC8()
{
  v1 = v0[16];
  v2 = v0[11];
  v3 = v0[8];
  v4 = v0[9];

  v5 = *(v4 + 8);
  v6 = OUTLINED_FUNCTION_7_16();
  v7(v6);
  v8 = v0[14];
  v9 = v0[10];
  v10 = v0[11];
  v11 = v0[7];

  OUTLINED_FUNCTION_4_17();

  return v12();
}

uint64_t sub_2696E0E70()
{
  v1 = v0[16];
  v2 = v0[11];
  v3 = v0[8];
  v4 = v0[9];

  v5 = *(v4 + 8);
  v6 = OUTLINED_FUNCTION_7_16();
  v7(v6);
  v8 = v0[18];
  v9 = v0[14];
  v11 = v0[10];
  v10 = v0[11];
  v12 = v0[7];

  OUTLINED_FUNCTION_7_7();

  return v13();
}

uint64_t sub_2696E0F1C()
{
  v0 = sub_2698548D4();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2803226E0 != -1)
  {
    OUTLINED_FUNCTION_0_10();
  }

  v5 = __swift_project_value_buffer(v0, qword_28033D910);
  (*(v1 + 16))(v4, v5, v0);
  v6 = sub_2698548B4();
  v7 = sub_269854F14();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = OUTLINED_FUNCTION_16_2();
    *v8 = 0;
    _os_log_impl(&dword_269684000, v6, v7, "CommonIntentThirdPartyAppResolutionStrategy#parseConfirmationResponse", v8, 2u);
    OUTLINED_FUNCTION_10();
  }

  v9 = *(v1 + 8);
  v10 = OUTLINED_FUNCTION_7_16();
  v11(v10);
  sub_269853564();
  return sub_269853554();
}

uint64_t sub_2696E10B8()
{
  OUTLINED_FUNCTION_2_7();
  v0[7] = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323010, &unk_26985B640);
  OUTLINED_FUNCTION_8_9(v2);
  v4 = *(v3 + 64);
  v0[8] = OUTLINED_FUNCTION_4_7();
  v5 = sub_2698548D4();
  v0[9] = v5;
  OUTLINED_FUNCTION_5_12(v5);
  v0[10] = v6;
  v8 = *(v7 + 64);
  v0[11] = OUTLINED_FUNCTION_4_7();
  v9 = OUTLINED_FUNCTION_3_16();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_2696E1188()
{
  if (qword_2803226E0 != -1)
  {
    OUTLINED_FUNCTION_0_10();
  }

  v2 = *(v0 + 80);
  v1 = *(v0 + 88);
  __swift_project_value_buffer(*(v0 + 72), qword_28033D910);
  v3 = OUTLINED_FUNCTION_2_8();
  v4(v3);
  v5 = sub_2698548B4();
  v6 = sub_269854F14();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = OUTLINED_FUNCTION_16_2();
    *v7 = 0;
    _os_log_impl(&dword_269684000, v5, v6, "CommonIntentThirdPartyAppResolutionStrategy#makeConfirmationPrompt", v7, 2u);
    OUTLINED_FUNCTION_10();
  }

  v9 = *(v0 + 80);
  v8 = *(v0 + 88);
  v10 = *(v0 + 64);
  v11 = *(v0 + 72);
  v12 = *(v0 + 56);

  (*(v9 + 8))(v8, v11);
  v13 = sub_269853234();
  __swift_storeEnumTagSinglePayload(v10, 1, 1, v13);
  v14 = sub_2698538F4();
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0;
  *(v0 + 16) = 0u;
  v15 = MEMORY[0x277D5C1D8];
  v12[3] = v14;
  v12[4] = v15;
  __swift_allocate_boxed_opaque_existential_1(v12);
  MEMORY[0x26D643FF0](MEMORY[0x277D84F90], v10, MEMORY[0x277D84F90], v0 + 16);
  sub_269698048(v0 + 16, &qword_280323028, qword_26985AD20);
  sub_269698048(v10, &qword_280323010, &unk_26985B640);

  OUTLINED_FUNCTION_4_17();

  return v16();
}

uint64_t sub_2696E135C(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = OUTLINED_FUNCTION_3_16();
  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_2696E1388()
{
  OUTLINED_FUNCTION_2_7();
  v1 = *(v0[4] + 24);
  swift_task_alloc();
  OUTLINED_FUNCTION_23_2();
  v0[5] = v2;
  *v2 = v3;
  v2[1] = sub_2696E141C;
  v4 = v0[2];
  v5 = v0[3];

  return sub_26970C514();
}

uint64_t sub_2696E141C()
{
  OUTLINED_FUNCTION_2_7();
  OUTLINED_FUNCTION_14_6();
  v2 = *(v1 + 40);
  v3 = *v0;
  OUTLINED_FUNCTION_1_6();
  *v4 = v3;

  OUTLINED_FUNCTION_7_7();

  return v5();
}

uint64_t sub_2696E14FC()
{
  v1 = *(v0 + 24);

  __swift_destroy_boxed_opaque_existential_0((v0 + 32));
  __swift_destroy_boxed_opaque_existential_0((v0 + 72));
  __swift_destroy_boxed_opaque_existential_0((v0 + 112));
  v2 = *(v0 + 152);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0((v0 + 168));
  __swift_destroy_boxed_opaque_existential_0((v0 + 208));
  __swift_destroy_boxed_opaque_existential_0((v0 + 248));
  __swift_destroy_boxed_opaque_existential_0((v0 + 288));
  __swift_destroy_boxed_opaque_existential_0((v0 + 328));
  __swift_destroy_boxed_opaque_existential_0((v0 + 368));
  v3 = *(v0 + 416);

  return v0;
}

uint64_t sub_2696E157C()
{
  sub_2696E14FC();

  return MEMORY[0x2821FE8D8](v0, 426, 7);
}

uint64_t sub_2696E15C8()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2696E1660;

  return sub_2696DFC18();
}

uint64_t sub_2696E1660()
{
  OUTLINED_FUNCTION_2_7();
  v2 = v1;
  OUTLINED_FUNCTION_14_6();
  v4 = *(v3 + 16);
  v5 = *v0;
  OUTLINED_FUNCTION_1_6();
  *v6 = v5;

  v7 = *(v5 + 8);

  return v7(v2);
}

uint64_t sub_2696E174C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2696DAF80;

  return sub_2696E02E0();
}

uint64_t sub_2696E17E4()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2696DAF80;

  return sub_2696E04E0();
}

uint64_t sub_2696E1890(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(MEMORY[0x277D5B630] + 4);
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_2696DAF80;

  return MEMORY[0x2821BA010](a1, a2, a3, a4);
}

uint64_t sub_2696E196C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2696DAF80;

  return sub_2696E10B8();
}

uint64_t sub_2696E1A04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(MEMORY[0x277D5C030] + 4);
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_2696DAF80;

  return MEMORY[0x2821BB9E8](a1, a2, a3, a4);
}

uint64_t sub_2696E1AC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(MEMORY[0x277D5C038] + 4);
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_2696DAF80;

  return MEMORY[0x2821BB9F0](a1, a2, a3, a4);
}

uint64_t sub_2696E1B8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(MEMORY[0x277D5C020] + 4);
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_2696DAF80;

  return MEMORY[0x2821BB9D8](a1, a2, a3, a4);
}

uint64_t sub_2696E1C50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(MEMORY[0x277D5C028] + 4);
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_2696DAF80;

  return MEMORY[0x2821BB9E0](a1, a2, a3, a4);
}

uint64_t sub_2696E1D14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(MEMORY[0x277D5C018] + 4);
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = sub_2696DA938;

  return MEMORY[0x2821BB9D0](a1, a2, a3, a4, a5);
}

uint64_t sub_2696E1E04(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_2696DAF80;

  return sub_2696E135C(a1, a2);
}

uint64_t sub_2696E1EB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(MEMORY[0x277D5C078] + 4);
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_2696DAF80;

  return MEMORY[0x2821BBAB0](a1, a2, a3, a4);
}

uint64_t sub_2696E1F74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(MEMORY[0x277D5C080] + 4);
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_2696DAF80;

  return MEMORY[0x2821BBAB8](a1, a2, a3, a4);
}

uint64_t sub_2696E2038(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(MEMORY[0x277D5C070] + 4);
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_2696DAF80;

  return MEMORY[0x2821BBAA8](a1, a2, a3, a4);
}

uint64_t sub_2696E20FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(MEMORY[0x277D5C068] + 4);
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = sub_2696DAF80;

  return MEMORY[0x2821BBAA0](a1, a2, a3, a4, a5);
}

unint64_t sub_2696E2200()
{
  result = qword_280323790;
  if (!qword_280323790)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280323790);
  }

  return result;
}

uint64_t sub_2696E2244(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ThirdPartyAppResolutionUtil.ResolveResponse.Action(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2696E22FC(uint64_t a1)
{
  v2 = type metadata accessor for ThirdPartyAppResolutionUtil.ResolveResponse(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2696E2358(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323798, &unk_26985C770);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2696E23C8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323798, &unk_26985C770);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t OUTLINED_FUNCTION_4_17()
{
  result = v0 + 8;
  v2 = *(v0 + 8);
  return result;
}

void sub_2696E249C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v171 = a1;
  v176 = a3;
  v172 = *v3;
  v173 = a2;
  v151 = sub_2698523C4();
  v4 = OUTLINED_FUNCTION_8(v151);
  v150[6] = v5;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_24_3();
  OUTLINED_FUNCTION_3_13();
  MEMORY[0x28223BE20](v8);
  v150[3] = v150 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323360, &unk_26985AB80);
  v11 = OUTLINED_FUNCTION_8_9(v10);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v155 = v150 - v14;
  OUTLINED_FUNCTION_2_13();
  v154 = sub_269851EF4();
  v15 = OUTLINED_FUNCTION_8(v154);
  v153 = v16;
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_3_1();
  v152 = v20 - v19;
  OUTLINED_FUNCTION_2_13();
  v159 = sub_269852474();
  v21 = OUTLINED_FUNCTION_8(v159);
  v175 = v22;
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_24_3();
  OUTLINED_FUNCTION_3_13();
  MEMORY[0x28223BE20](v25);
  v174 = v150 - v26;
  OUTLINED_FUNCTION_2_13();
  v158 = sub_269853874();
  v27 = OUTLINED_FUNCTION_8(v158);
  v157 = v28;
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_3_1();
  v156 = v32 - v31;
  OUTLINED_FUNCTION_2_13();
  v163 = type metadata accessor for MediaNLIntent();
  v33 = *(*(v163 - 8) + 64);
  MEMORY[0x28223BE20](v163);
  OUTLINED_FUNCTION_3_1();
  v164 = v35 - v34;
  OUTLINED_FUNCTION_2_13();
  v36 = sub_269853F44();
  v37 = OUTLINED_FUNCTION_8(v36);
  v166 = v38;
  v167 = v37;
  v40 = *(v39 + 64);
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_3_1();
  v165 = v42 - v41;
  OUTLINED_FUNCTION_2_13();
  v43 = sub_2698538B4();
  v44 = OUTLINED_FUNCTION_8(v43);
  v169 = v45;
  v170 = v44;
  v47 = *(v46 + 64);
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_3_1();
  v50 = (v49 - v48);
  v51 = sub_269853404();
  v52 = OUTLINED_FUNCTION_8(v51);
  v54 = v53;
  v56 = *(v55 + 64);
  MEMORY[0x28223BE20](v52);
  OUTLINED_FUNCTION_3_1();
  v59 = (v58 - v57);
  v60 = sub_2698548D4();
  v61 = OUTLINED_FUNCTION_8(v60);
  v63 = v62;
  v65 = *(v64 + 64);
  MEMORY[0x28223BE20](v61);
  OUTLINED_FUNCTION_24_3();
  OUTLINED_FUNCTION_3_13();
  MEMORY[0x28223BE20](v66);
  OUTLINED_FUNCTION_3_13();
  MEMORY[0x28223BE20](v67);
  OUTLINED_FUNCTION_3_13();
  MEMORY[0x28223BE20](v68);
  v70 = v150 - v69;
  if (qword_2803226E0 != -1)
  {
    OUTLINED_FUNCTION_0_10();
  }

  v71 = __swift_project_value_buffer(v60, qword_28033D910);
  v72 = v63;
  v73 = v63 + 16;
  v74 = *(v63 + 16);
  v160 = v71;
  v75 = v60;
  v162 = v73;
  v161 = v74;
  v74(v70);
  v76 = sub_2698548B4();
  v77 = sub_269854F14();
  if (os_log_type_enabled(v76, v77))
  {
    v78 = OUTLINED_FUNCTION_16_2();
    *v78 = 0;
    _os_log_impl(&dword_269684000, v76, v77, "CommonMediaItemDisambiguationFlowStrategy.actionForInput() called", v78, 2u);
    OUTLINED_FUNCTION_10();
  }

  v79 = *(v72 + 8);
  v168 = v72 + 8;
  v79(v70, v75);
  v80 = v79;
  v81 = *(v172 + 80);
  sub_2698536E4();
  sub_2698536D4();
  v82 = sub_2698533F4();
  v84 = v83;
  (*(v54 + 8))(v59, v51);
  if (v82 == 0x657449616964656DLL && v84 == 0xEA0000000000736DLL)
  {

    v87 = v174;
    v88 = v175;
  }

  else
  {
    v86 = sub_269855584();

    v87 = v174;
    v88 = v175;
    if ((v86 & 1) == 0)
    {
      sub_269853014();
      return;
    }
  }

  sub_269853844();
  v90 = v169;
  v89 = v170;
  v91 = (*(v169 + 88))(v50, v170);
  if (v91 == *MEMORY[0x277D5C128])
  {
    v92 = OUTLINED_FUNCTION_14_7();
    v93(v92);
    v95 = v165;
    v94 = v166;
    v96 = v167;
    (*(v166 + 32))(v165, v50, v167);
    v97 = v164;
    (*(v94 + 16))(v164, v95, v96);
    if (qword_280322580 != -1)
    {
      OUTLINED_FUNCTION_7_17();
    }

    sub_2696DAEF8();
    sub_269853D54();
    if (v184)
    {
      v181 = v183;
      v182 = v184;
      OUTLINED_FUNCTION_20_5();
      v179 = v98;
      v180 = v99;
      v177 = 0;
      v178 = 0xE000000000000000;
      sub_269693054();
      OUTLINED_FUNCTION_23_4();

      sub_2696CC460(v97);

      sub_269853004();
    }

    else
    {
      sub_2696CC460(v97);
      OUTLINED_FUNCTION_5_16();
      v121();
      v122 = sub_2698548B4();
      v123 = sub_269854F14();
      if (os_log_type_enabled(v122, v123))
      {
        v124 = OUTLINED_FUNCTION_16_2();
        OUTLINED_FUNCTION_24(v124);
        OUTLINED_FUNCTION_29_3(&dword_269684000, v125, v126, "CommonMediaItemDisambiguationFlowStrategy.actionForInput, MediaNLIntent canonical ID is nil");
        OUTLINED_FUNCTION_12_1();
      }

      v127 = OUTLINED_FUNCTION_0_17();
      (v80)(v127);
      sub_269853014();
    }

    (*(v94 + 8))(v95, v96);
    return;
  }

  v100 = v75;
  if (v91 == *MEMORY[0x277D5C140])
  {
    v175 = v80;
    v101 = OUTLINED_FUNCTION_14_7();
    v102(v101);
    v103 = v157;
    v104 = v156;
    v105 = v50;
    v106 = v158;
    (*(v157 + 32))(v156, v105, v158);
    v107 = v152;
    sub_269853864();
    v108 = v155;
    sub_2696D3C74();
    (*(v153 + 8))(v107, v154);
    v109 = v159;
    if (__swift_getEnumTagSinglePayload(v108, 1, v159) == 1)
    {
      sub_269698048(v108, &qword_280323360, &unk_26985AB80);
    }

    else
    {
      v88[4](v87, v108, v109);
      sub_269852424();
      v128 = sub_2698520D4();
      v130 = v129;
      v131 = OUTLINED_FUNCTION_12_12();
      v132(v131);

      v133 = HIBYTE(v130) & 0xF;
      if ((v130 & 0x2000000000000000) == 0)
      {
        v133 = v128 & 0xFFFFFFFFFFFFLL;
      }

      if (v133)
      {
        sub_269853004();
        v134 = OUTLINED_FUNCTION_17_6();
        v135(v134);
LABEL_39:
        (*(v103 + 8))(v104, v106);
        return;
      }

      v136 = OUTLINED_FUNCTION_17_6();
      v137(v136);
    }

    v138 = v150[4];
    OUTLINED_FUNCTION_5_16();
    v139();
    v140 = sub_2698548B4();
    v141 = sub_269854F14();
    if (os_log_type_enabled(v140, v141))
    {
      v142 = OUTLINED_FUNCTION_16_2();
      OUTLINED_FUNCTION_24(v142);
      OUTLINED_FUNCTION_29_3(&dword_269684000, v143, v144, "CommonMediaItemDisambiguationFlowStrategy.actionForInput, pegasusResults missing videoClientComponent or no selectedItemIdentifier");
      OUTLINED_FUNCTION_12_1();
    }

    (v175)(v138, v100);
    sub_269853014();
    goto LABEL_39;
  }

  if (v91 == *MEMORY[0x277D5C148])
  {
    v110 = OUTLINED_FUNCTION_14_7();
    v111(v110);
    v112 = *v50;
    sub_2696D6C54();
    if (v113)
    {
      v114 = v113;
      v115 = v150[1];
      sub_269854544();
      sub_269852424();
      (v88[1])(v115, v159);
      v116 = sub_2698520D4();
      v59 = v117;
      v118 = OUTLINED_FUNCTION_12_12();
      v119(v118);

      v120 = (v59 >> 56) & 0xF;
      if ((v59 & 0x2000000000000000) == 0)
      {
        v120 = v116 & 0xFFFFFFFFFFFFLL;
      }

      if (v120)
      {
        sub_269853004();

        return;
      }
    }

    v145 = v150[0];
    OUTLINED_FUNCTION_5_16();
    v146();
    v147 = sub_2698548B4();
    v148 = sub_269854F14();
    if (os_log_type_enabled(v147, v148))
    {
      v149 = OUTLINED_FUNCTION_16_2();
      OUTLINED_FUNCTION_24(v149);
      _os_log_impl(&dword_269684000, v147, v148, "CommonMediaItemDisambiguationFlowStrategy.actionForInput, no firstVideoExperience or no selectedItemIdentifier", v59, 2u);
      OUTLINED_FUNCTION_12_1();
    }

    (v80)(v145, v75);
    sub_269853014();
  }

  else
  {
    sub_269853014();
    (*(v90 + 8))(v50, v89);
  }
}