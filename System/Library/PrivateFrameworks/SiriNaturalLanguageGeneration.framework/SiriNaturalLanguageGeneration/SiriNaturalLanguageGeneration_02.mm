uint64_t sub_2680DD9C0()
{
  v1 = OBJC_IVAR____TtC29SiriNaturalLanguageGeneration16MorphunTokenizer_locale;
  v2 = sub_2680E17BC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v3, v4);
}

uint64_t type metadata accessor for MorphunTokenizer()
{
  result = qword_28024A418;
  if (!qword_28024A418)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2680DDAB0()
{
  result = sub_2680E17BC();
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

uint64_t sub_2680DDB40(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024A430, &qword_2680E42B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

BOOL sub_2680DDBA8(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v5 = (a3 + 40);
  v6 = *(a3 + 16) + 1;
  do
  {
    if (!--v6)
    {
      break;
    }

    v7 = *v5;
    v11[0] = *(v5 - 1);
    v11[1] = v7;

    v8 = a1(v11);
    if (v3)
    {

      return v6 != 0;
    }

    v9 = v8;
    v5 += 2;
  }

  while ((v9 & 1) == 0);
  return v6 != 0;
}

uint64_t sub_2680DDC58(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_2680E17CC();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2680DDCB4@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for DefaultDialogProvider();
  result = swift_allocObject();
  *(result + 16) = sub_2680D64B8;
  *(result + 24) = 0;
  a1[3] = v2;
  a1[4] = &off_2878F4228;
  *a1 = result;
  return result;
}

void *sub_2680DDD9C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024A458, &qword_2680E43C0);
  v6 = OUTLINED_FUNCTION_0_1(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6, v9);
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2680DFF44();
  sub_2680E202C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  LOBYTE(v30) = 0;
  v12 = sub_2680E1F0C();
  v14 = v13;
  LOBYTE(__src[0]) = 2;
  sub_2680DFF98();
  OUTLINED_FUNCTION_7_4(&type metadata for SemanticVersion);
  v27 = v31;
  v28 = v30;
  v26 = v32;
  LOBYTE(v30) = 1;
  v15 = sub_2680E1F2C();
  if (v15)
  {
    LOBYTE(__src[0]) = 1;
    OUTLINED_FUNCTION_7_4(&type metadata for SemanticVersion);
    v16 = OUTLINED_FUNCTION_1_10();
    v17(v16);
    v19 = v30;
    v18 = v31;
    v20 = v32;
    v39 = 0;
  }

  else
  {
    v21 = OUTLINED_FUNCTION_1_10();
    v22(v21);
    v19 = 0;
    v18 = 0;
    v20 = 0;
    v39 = 1;
  }

  v24 = v18;
  v25 = v20;
  __src[0] = v12;
  __src[1] = v14;
  __src[2] = v19;
  __src[3] = v18;
  __src[4] = v20;
  v23 = v39;
  LOBYTE(__src[5]) = v39;
  __src[6] = v28;
  __src[7] = v31;
  __src[8] = v32;
  sub_2680DF8DC(__src, &v30);
  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  v30 = v12;
  v31 = v14;
  v32 = v19;
  v33 = v24;
  v34 = v25;
  v35 = v23;
  v36 = v28;
  v37 = v27;
  v38 = v26;
  sub_2680DF914(&v30);
  return memcpy(a2, __src, 0x48uLL);
}

uint64_t sub_2680DE054()
{
  v0 = sub_2680E1EFC();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_2680DE0B4(char a1)
{
  if (!a1)
  {
    return 0x726F74636146;
  }

  if (a1 == 1)
  {
    return 0xD000000000000023;
  }

  return 0x6E6F6973726556;
}

uint64_t sub_2680DE130@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_2680DE054();
  *a2 = result;
  return result;
}

uint64_t sub_2680DE160@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2680DE0B4(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_2680DE194@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2680DE054();
  *a1 = result;
  return result;
}

uint64_t sub_2680DE1DC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2680DE0A0();
  *a1 = result;
  return result;
}

uint64_t sub_2680DE204(uint64_t a1)
{
  v2 = sub_2680DFF44();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2680DE240(uint64_t a1)
{
  v2 = sub_2680DFF44();

  return MEMORY[0x2821FE720](a1, v2);
}

void *sub_2680DE27C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = sub_2680DDD9C(a1, __src);
  if (!v2)
  {
    return memcpy(a2, __src, 0x48uLL);
  }

  return result;
}

void *sub_2680DE2C8()
{
  type metadata accessor for DialogEngineAssetClient();
  v0 = swift_allocObject();
  result = sub_2680DE308(0);
  qword_28024C870 = v0;
  return result;
}

void *sub_2680DE308(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  v1[2] = 0;
  if (a1)
  {
    v1[2] = a1;
  }

  else
  {
    v4 = v3;
    v5 = objc_opt_self();
    v6 = [v5 sharedManager];
    OUTLINED_FUNCTION_17_2();
    v7 = sub_2680E1BCC();
    v8 = [v6 retrieveAssetSet:v7 usages:0];

    if (v8)
    {
      v9 = v2[2];
      v2[2] = v8;
      v10 = v8;

      if (qword_280249E70 != -1)
      {
        OUTLINED_FUNCTION_6_0();
      }

      v11 = sub_2680E1B3C();
      __swift_project_value_buffer(v11, qword_28024C7A8);
      v12 = sub_2680E1B1C();
      v13 = sub_2680E1DAC();
      if (os_log_type_enabled(v12, v13))
      {
        v14 = OUTLINED_FUNCTION_8_3();
        v15 = OUTLINED_FUNCTION_10_3();
        v33[0] = v15;
        *v14 = 136315138;
        v16 = OUTLINED_FUNCTION_17_2();
        *(v14 + 4) = sub_2680DF818(v16, v17, v18);
        _os_log_impl(&dword_2680BC000, v12, v13, "Initialized asset set for %s", v14, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v15);
        OUTLINED_FUNCTION_12();
        OUTLINED_FUNCTION_12();
      }

      v19 = [v5 sharedManager];
      OUTLINED_FUNCTION_17_2();
      v20 = sub_2680E1BCC();
      v21 = swift_allocObject();
      *(v21 + 16) = v2;
      *(v21 + 24) = v4;
      v33[4] = sub_2680DFE0C;
      v33[5] = v21;
      v33[0] = MEMORY[0x277D85DD0];
      v33[1] = 1107296256;
      v33[2] = sub_2680DE7B4;
      v33[3] = &block_descriptor;
      v22 = _Block_copy(v33);

      v23 = [v19 observeAssetSet:v20 queue:0 handler:v22];
      _Block_release(v22);

      swift_unknownObjectRelease();
    }

    else
    {
      if (qword_280249E70 != -1)
      {
        OUTLINED_FUNCTION_6_0();
      }

      v24 = sub_2680E1B3C();
      __swift_project_value_buffer(v24, qword_28024C7A8);
      v25 = sub_2680E1B1C();
      v26 = sub_2680E1DBC();
      if (os_log_type_enabled(v25, v26))
      {
        v27 = OUTLINED_FUNCTION_8_3();
        v28 = OUTLINED_FUNCTION_10_3();
        v33[0] = v28;
        *v27 = 136315138;
        v29 = OUTLINED_FUNCTION_17_2();
        *(v27 + 4) = sub_2680DF818(v29, v30, v31);
        _os_log_impl(&dword_2680BC000, v25, v26, "Unable to initialize asset set for %s", v27, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v28);
        OUTLINED_FUNCTION_4_9();
        OUTLINED_FUNCTION_12();
      }
    }
  }

  return v2;
}

void sub_2680DE6A8(uint64_t a1)
{
  if (*(a1 + 16))
  {
    v2 = [objc_opt_self() sharedManager];
    v3 = sub_2680E1BCC();
    v4 = *(a1 + 16);
    if (v4 && sub_2680DFE2C(v4))
    {
      v5 = sub_2680E1B4C();
    }

    else
    {
      v5 = 0;
    }

    v6 = [v2 retrieveAssetSet:v3 usages:v5];

    v7 = *(a1 + 16);
    *(a1 + 16) = v6;
  }
}

uint64_t sub_2680DE7B4(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t sub_2680DE7F8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v123 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024A080, &unk_2680E2B00);
  v4 = *(*(v3 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v3 - 8, v5);
  v8 = (v113 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v6, v9);
  v11 = v113 - v10;
  v122 = sub_2680E167C();
  v12 = OUTLINED_FUNCTION_0_1(v122);
  v121 = v13;
  v15 = *(v14 + 64);
  v17 = MEMORY[0x28223BE20](v12, v16);
  v19 = v113 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v17, v20);
  v23 = MEMORY[0x28223BE20](v21, v22);
  v25 = v113 - v24;
  v27 = MEMORY[0x28223BE20](v23, v26);
  v29 = (v113 - v28);
  MEMORY[0x28223BE20](v27, v30);
  v32 = v113 - v31;
  sub_2680DF5E8(v125);
  v118 = v29;
  v119 = v19;
  v117 = v25;
  v120 = v32;
  v33 = *(v2 + 16);
  if (!v33 || (v34 = v33, v35 = sub_2680E1BCC(), v36 = [v34 assetNamed_], v34, v35, !v36))
  {
    v38 = v122;
    __swift_storeEnumTagSinglePayload(v11, 1, 1, v122);
    goto LABEL_8;
  }

  v37 = [v36 location];

  v38 = v122;
  if (v37)
  {
    sub_2680E163C();

    v39 = 0;
  }

  else
  {
    v39 = 1;
  }

  v40 = v120;
  __swift_storeEnumTagSinglePayload(v8, v39, 1, v38);
  sub_2680C8F9C(v8, v11);
  if (__swift_getEnumTagSinglePayload(v11, 1, v38) == 1)
  {
LABEL_8:
    sub_2680C900C(v11);
    if (qword_280249E70 != -1)
    {
      OUTLINED_FUNCTION_6_0();
    }

    v41 = sub_2680E1B3C();
    __swift_project_value_buffer(v41, qword_28024C7A8);
    sub_2680DF8DC(v125, v129);
    v42 = sub_2680E1B1C();
    v43 = sub_2680E1DAC();
    sub_2680DF914(v125);
    if (os_log_type_enabled(v42, v43))
    {
      v44 = OUTLINED_FUNCTION_8_3();
      v45 = OUTLINED_FUNCTION_10_3();
      v129[0] = v45;
      *v44 = 136315138;
      v46 = sub_2680DF818(v125[0], v125[1], v129);
      sub_2680DF914(v125);
      *(v44 + 4) = v46;
      OUTLINED_FUNCTION_14_2(&dword_2680BC000, v47, v43, "No updated directory for '%s'");
      __swift_destroy_boxed_opaque_existential_0Tm(v45);
      OUTLINED_FUNCTION_4_9();
      OUTLINED_FUNCTION_12();
    }

    else
    {

      sub_2680DF914(v125);
    }

    goto LABEL_13;
  }

  v51 = *(v121 + 32);
  (v51)(v40, v11, v38);
  sub_2680DF5E8(v129);
  v116 = v51;
  if (qword_280249E70 != -1)
  {
    OUTLINED_FUNCTION_6_0();
  }

  v52 = sub_2680E1B3C();
  __swift_project_value_buffer(v52, qword_28024C7A8);
  OUTLINED_FUNCTION_12_3();
  OUTLINED_FUNCTION_12_0();
  v115 = v53;
  v114 = v54;
  v54();
  v119 = v11;
  v55 = sub_2680E1B1C();
  v56 = sub_2680E1DAC();
  if (OUTLINED_FUNCTION_20_1(v56))
  {
    v57 = OUTLINED_FUNCTION_8_3();
    v58 = OUTLINED_FUNCTION_10_3();
    OUTLINED_FUNCTION_6_5(v58);
    *v57 = 136315138;
    sub_2680D8844();
    v59 = sub_2680E1F4C();
    v61 = v60;
    v62 = OUTLINED_FUNCTION_16_2();
    v8(v62);
    v63 = sub_2680DF818(v59, v61, v124);

    *(v57 + 4) = v63;
    OUTLINED_FUNCTION_14_2(&dword_2680BC000, v64, v56, "Found asset config in %s");
    __swift_destroy_boxed_opaque_existential_0Tm(v58);
    OUTLINED_FUNCTION_12();
    OUTLINED_FUNCTION_12();
  }

  else
  {

    v65 = OUTLINED_FUNCTION_16_2();
    v8(v65);
  }

  if (v130)
  {
    sub_2680DF914(v129);
    sub_2680DF914(v125);
    OUTLINED_FUNCTION_11_3();
    v66 = sub_2680E1B1C();
    v67 = sub_2680E1DAC();
    if (OUTLINED_FUNCTION_20_1(v67))
    {
      v68 = OUTLINED_FUNCTION_8_3();
      v69 = OUTLINED_FUNCTION_10_3();
      OUTLINED_FUNCTION_6_5(v69);
      *v68 = 136315138;
      *(v68 + 4) = sub_2680DF818(0xD000000000000019, 0x80000002680E52E0, v124);
      OUTLINED_FUNCTION_14_2(&dword_2680BC000, v70, v67, "Updated %s missing min diff update version");
      __swift_destroy_boxed_opaque_existential_0Tm(v69);
      OUTLINED_FUNCTION_4_9();
      OUTLINED_FUNCTION_12();
    }

    OUTLINED_FUNCTION_3_10();
    (v8)(v120, v38);
    goto LABEL_13;
  }

  v118 = v8;
  v71 = v129[2];
  v72 = v129[3];
  v74 = v126;
  v73 = v127;
  v75 = v128;
  v76 = v129[4];
  v113[3] = v132;
  v77 = sub_2680C964C(v131, v132, v133, v126, v127, v128);
  v113[4] = v75;
  if ((v77 & 1) == 0)
  {
    sub_2680DF8DC(v125, v124);
    OUTLINED_FUNCTION_11_3();
    v92 = sub_2680E1B1C();
    v93 = sub_2680E1DAC();
    sub_2680DF914(v129);
    sub_2680DF914(v125);
    if (os_log_type_enabled(v92, v93))
    {
      v94 = swift_slowAlloc();
      v95 = swift_slowAlloc();
      OUTLINED_FUNCTION_6_5(v95);
      *v94 = 136315394;
      v96 = OUTLINED_FUNCTION_19_1();
      v98 = sub_2680DF818(v96, v97, v124);

      *(v94 + 4) = v98;
      *(v94 + 12) = 2080;
      sub_2680DF914(v125);
      v99 = sub_2680C94A4();
      v101 = sub_2680DF818(v99, v100, v124);

      *(v94 + 14) = v101;
      _os_log_impl(&dword_2680BC000, v92, v93, "Updated asset has older version %s <= %s", v94, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_12();
LABEL_32:
      OUTLINED_FUNCTION_12();
LABEL_34:

      OUTLINED_FUNCTION_3_10();
      OUTLINED_FUNCTION_8_5();
      v111();
LABEL_13:
      v48 = 1;
      v49 = v123;
      return __swift_storeEnumTagSinglePayload(v49, v48, 1, v38);
    }

LABEL_33:
    sub_2680DF914(v125);
    goto LABEL_34;
  }

  v113[1] = v74;
  v113[2] = v73;
  if ((sub_2680C9610(v74, v73, v75, v71, v72, v76) & 1) == 0)
  {
    sub_2680DF914(v129);
    sub_2680DF8DC(v125, v124);
    OUTLINED_FUNCTION_11_3();
    v92 = sub_2680E1B1C();
    v102 = sub_2680E1DAC();
    sub_2680DF914(v125);
    if (os_log_type_enabled(v92, v102))
    {
      v103 = swift_slowAlloc();
      v104 = swift_slowAlloc();
      OUTLINED_FUNCTION_6_5(v104);
      *v103 = 136315394;
      v105 = sub_2680C94A4();
      v107 = sub_2680DF818(v105, v106, v124);

      *(v103 + 4) = v107;
      *(v103 + 12) = 2080;
      sub_2680DF914(v125);
      v108 = OUTLINED_FUNCTION_9_4();
      v110 = sub_2680DF818(v108, v109, v124);

      *(v103 + 14) = v110;
      _os_log_impl(&dword_2680BC000, v92, v102, "Updated asset has newer minimum version %s > %s", v103, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_12();
      goto LABEL_32;
    }

    goto LABEL_33;
  }

  OUTLINED_FUNCTION_12_0();
  v114();
  sub_2680DF8DC(v125, v124);
  OUTLINED_FUNCTION_11_3();
  v78 = sub_2680E1B1C();
  v79 = sub_2680E1DAC();
  sub_2680DF914(v129);
  sub_2680DF914(v125);
  if (os_log_type_enabled(v78, v79))
  {
    v80 = OUTLINED_FUNCTION_10_3();
    v119 = swift_slowAlloc();
    OUTLINED_FUNCTION_6_5(v119);
    *v80 = 136315650;
    sub_2680D8844();
    LODWORD(v115) = v79;
    v81 = sub_2680E1F4C();
    v83 = v82;
    OUTLINED_FUNCTION_3_10();
    OUTLINED_FUNCTION_8_5();
    v84();
    v85 = sub_2680DF818(v81, v83, v124);

    *(v80 + 4) = v85;
    *(v80 + 12) = 2080;
    v86 = OUTLINED_FUNCTION_19_1();
    v88 = sub_2680DF818(v86, v87, v124);

    *(v80 + 14) = v88;
    *(v80 + 22) = 2080;
    sub_2680DF914(v125);
    v89 = OUTLINED_FUNCTION_9_4();
    v91 = sub_2680DF818(v89, v90, v124);

    *(v80 + 24) = v91;
    _os_log_impl(&dword_2680BC000, v78, v115, "Returning %s (%s > %s)", v80, 0x20u);
    OUTLINED_FUNCTION_11_3();
    swift_arrayDestroy();
    OUTLINED_FUNCTION_12();
    OUTLINED_FUNCTION_12();
  }

  else
  {
    sub_2680DF914(v125);

    OUTLINED_FUNCTION_3_10();
    OUTLINED_FUNCTION_8_5();
    v112();
  }

  v49 = v123;
  OUTLINED_FUNCTION_12_0();
  v116();
  v48 = 0;
  return __swift_storeEnumTagSinglePayload(v49, v48, 1, v38);
}

void *sub_2680DF5E8@<X0>(void *a1@<X8>)
{
  v3 = sub_2680E167C();
  v4 = OUTLINED_FUNCTION_0_1(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4, v9);
  v11 = &__src[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  sub_2680E162C();
  v12 = sub_2680E168C();
  if (v1)
  {
    return (*(v6 + 8))(v11, v3);
  }

  v15 = v12;
  v16 = v13;
  v17 = sub_2680E15FC();
  v18 = *(v17 + 48);
  v19 = *(v17 + 52);
  swift_allocObject();
  sub_2680E15EC();
  sub_2680DFD80();
  sub_2680E15DC();
  (*(v6 + 8))(v11, v3);

  sub_2680DCAC4(v15, v16);
  return memcpy(a1, __src, 0x48uLL);
}

uint64_t sub_2680DF7BC()
{

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

uint64_t sub_2680DF818(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_2680DF944(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (v6)
  {
    v8 = v6;

    ObjectType = swift_getObjectType();
    v11[0] = v8;
  }

  else
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
  }

  v9 = *a3;
  if (*a3)
  {
    sub_2680D4E84(v11, *a3);
    *a3 = v9 + 32;
  }

  __swift_destroy_boxed_opaque_existential_0Tm(v11);
  return v7;
}

unint64_t sub_2680DF944(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v11 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v11)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v11) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_2680DFA44(a5, a6);
    *a1 = v9;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    result = sub_2680E1E8C();
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t sub_2680DFA44(uint64_t a1, unint64_t a2)
{
  v4 = sub_2680DFA90(a1, a2);
  sub_2680DFBA8(&unk_2878F35E8);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_2680DFA90(uint64_t a1, unint64_t a2)
{
  v4 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_19;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  for (; v5; v5 = sub_2680E1C9C())
  {
    result = sub_2680C9824(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = sub_2680E1E6C();
      if (v11)
      {
        goto LABEL_23;
      }

      v4 = result;
    }

    else
    {
      if ((a2 & 0x2000000000000000) != 0)
      {
        v13[0] = a1;
        v13[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        if (v5 < v4)
        {
          goto LABEL_23;
        }

        v9 = (result + 32);
        v10 = v13;
      }

      else
      {
        if ((a1 & 0x1000000000000000) != 0)
        {
          v8 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
          v4 = a1 & 0xFFFFFFFFFFFFLL;
        }

        else
        {
          result = sub_2680E1E8C();
          v8 = result;
          v4 = v12;
        }

        if (v5 < v4)
        {
LABEL_23:
          __break(1u);
          return result;
        }

        v9 = (v7 + 32);
        v10 = v8;
      }

      memcpy(v9, v10, v4);
    }

    if (v4 == v5)
    {
      return v7;
    }

    __break(1u);
LABEL_19:
    ;
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_2680DFBA8(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (!result || v5 > *(v3 + 24) >> 1)
  {
    if (v4 <= v5)
    {
      v8 = v4 + v2;
    }

    else
    {
      v8 = v4;
    }

    result = sub_2680DFC8C(result, v8, 1, v3);
    v3 = result;
  }

  if (!*(v6 + 16))
  {

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

  v9 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v9 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v9 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v10 = *(v3 + 16);
  v11 = __OFADD__(v10, v2);
  v12 = v10 + v2;
  if (!v11)
  {
    *(v3 + 16) = v12;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

char *sub_2680DFC8C(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024A0B0, &qword_2680E4350);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[v8] <= v12)
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

unint64_t sub_2680DFD80()
{
  result = qword_28024A450;
  if (!qword_28024A450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024A450);
  }

  return result;
}

uint64_t sub_2680DFDD4()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_2680DFE2C(void *a1)
{
  v2 = [a1 usages];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_2680E1B5C();

  return v3;
}

uint64_t sub_2680DFEA4(uint64_t a1, int a2)
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

uint64_t sub_2680DFEE4(uint64_t result, int a2, int a3)
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

unint64_t sub_2680DFF44()
{
  result = qword_28024A460;
  if (!qword_28024A460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024A460);
  }

  return result;
}

unint64_t sub_2680DFF98()
{
  result = qword_28024A468;
  if (!qword_28024A468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024A468);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for DialogAssetDelivery.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x2680E00B8);
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

unint64_t sub_2680E00F4()
{
  result = qword_28024A470;
  if (!qword_28024A470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024A470);
  }

  return result;
}

unint64_t sub_2680E014C()
{
  result = qword_28024A478;
  if (!qword_28024A478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024A478);
  }

  return result;
}

unint64_t sub_2680E01A4()
{
  result = qword_28024A480;
  if (!qword_28024A480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024A480);
  }

  return result;
}

void OUTLINED_FUNCTION_4_9()
{

  JUMPOUT(0x26D611870);
}

uint64_t OUTLINED_FUNCTION_7_4(uint64_t a1)
{

  return MEMORY[0x2821FDA28](a1, v3 - 232, v1, a1, v2);
}

uint64_t OUTLINED_FUNCTION_9_4()
{
  v2 = *(v0 - 424);
  v3 = *(v0 - 416);
  v4 = *(v0 - 400);

  return sub_2680C94A4();
}

uint64_t OUTLINED_FUNCTION_10_3()
{

  return swift_slowAlloc();
}

void OUTLINED_FUNCTION_14_2(void *a1, uint64_t a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, v4, a3, a4, v5, 0xCu);
}

void OUTLINED_FUNCTION_18_1(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0xCu);
}

uint64_t OUTLINED_FUNCTION_19_1()
{
  v2 = *(v0 - 408);

  return sub_2680C94A4();
}

BOOL OUTLINED_FUNCTION_20_1(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t sub_2680E0374(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v20 = MEMORY[0x277D84F90];
    sub_2680D7A84(0, v1, 0);
    v2 = v20;
    v4 = (a1 + 32);
    do
    {
      v5 = v4[1];
      v16 = *v4;
      v17 = v5;
      v6 = v4[3];
      v18 = v4[2];
      v19 = v6;
      sub_2680E1208(&v16, &v13);
      v20 = v2;
      v8 = *(v2 + 16);
      v7 = *(v2 + 24);
      if (v8 >= v7 >> 1)
      {
        sub_2680D7A84((v7 > 1), v8 + 1, 1);
        v2 = v20;
      }

      v14 = &type metadata for UserDefaultsDialogHistoryEntry;
      v15 = &off_2878F42C8;
      v9 = swift_allocObject();
      *&v13 = v9;
      v10 = v17;
      v9[1] = v16;
      v9[2] = v10;
      v11 = v19;
      v9[3] = v18;
      v9[4] = v11;
      *(v2 + 16) = v8 + 1;
      sub_2680C2CD8(&v13, v2 + 40 * v8 + 32);
      v4 += 4;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_2680E04A8(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v12 = MEMORY[0x277D84F90];
    sub_2680D7AE4(0, v1, 0);
    v2 = v12;
    v4 = a1 + 32;
    do
    {
      sub_2680D5D2C(v4, v11);
      v12 = v2;
      v6 = *(v2 + 16);
      v5 = *(v2 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_2680D7AE4((v5 > 1), v6 + 1, 1);
        v2 = v12;
      }

      v9 = &unk_2878F46F8;
      v10 = &off_2878F4820;
      *&v8 = swift_allocObject();
      sub_2680D5D2C(v11, v8 + 16);
      *(v2 + 16) = v6 + 1;
      sub_2680C2CD8(&v8, v2 + 40 * v6 + 32);
      sub_2680D5D88(v11);
      v4 += 48;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_2680E05D4(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v14 = MEMORY[0x277D84F90];
    sub_2680D7B84(0, v1, 0);
    v2 = v14;
    v4 = a1 + 32;
    do
    {
      sub_2680E12EC(v4, v11);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024A490, &qword_2680E4608);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024A360, &unk_2680E4610);
      swift_dynamicCast();
      v14 = v2;
      v6 = *(v2 + 16);
      v5 = *(v2 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_2680D7B84((v5 > 1), v6 + 1, 1);
        v2 = v14;
      }

      *(v2 + 16) = v6 + 1;
      v7 = (v2 + 48 * v6);
      v8 = v12;
      v9 = v13[0];
      *(v7 + 60) = *(v13 + 12);
      v7[2] = v8;
      v7[3] = v9;
      v4 += 48;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t NLGDialogScorerType.hashValue.getter()
{
  v1 = *v0;
  sub_2680E1FEC();
  MEMORY[0x26D611340](v1);
  return sub_2680E200C();
}

uint64_t static NLGDialogScorers.createTFIDFScorer(query:localeIdentifier:stopWords:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X4>, uint64_t *a4@<X8>)
{
  v8 = sub_2680E17BC();
  OUTLINED_FUNCTION_0_10();
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v13, v14);
  OUTLINED_FUNCTION_1_1();
  v17 = v16 - v15;

  sub_2680E170C();
  v18 = type metadata accessor for MorphunTokenizer();
  v19 = *(v18 + 48);
  v20 = *(v18 + 52);
  v21 = swift_allocObject();
  (*(v10 + 32))(v21 + OBJC_IVAR____TtC29SiriNaturalLanguageGeneration16MorphunTokenizer_locale, v17, v8);
  type metadata accessor for CosineSimilarity();
  v22 = swift_allocObject();

  v23 = sub_2680E0DA4(a1, a2, a3, v21, v22);
  v24 = type metadata accessor for TFIDFScorer();
  v37[3] = v24;
  v37[4] = &off_2878F3760;
  v37[0] = v23;
  v25 = type metadata accessor for DialogScorer();
  v26 = swift_allocObject();
  __swift_mutable_project_boxed_opaque_existential_1(v37, v24);
  OUTLINED_FUNCTION_0_10();
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v29, v30);
  OUTLINED_FUNCTION_1_1();
  v33 = (v32 - v31);
  (*(v34 + 16))(v32 - v31);
  v35 = *v33;
  *(v26 + 40) = v24;
  *(v26 + 48) = &off_2878F3760;
  *(v26 + 16) = v35;
  *(v26 + 56) = sub_2680E0A1C;
  *(v26 + 64) = 0;
  *(v26 + 72) = 0;

  __swift_destroy_boxed_opaque_existential_0Tm(v37);
  a4[3] = v25;
  a4[4] = &off_2878F4218;

  *a4 = v26;
  return result;
}

uint64_t sub_2680E0A1C(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v1);
  (*(v2 + 16))(v7, v1, v2);
  v3 = v8;
  v4 = v9;
  __swift_project_boxed_opaque_existential_1(v7, v8);
  v5 = (*(v4 + 8))(v3, v4);
  __swift_destroy_boxed_opaque_existential_0Tm(v7);
  return v5;
}

uint64_t static NLGDialogScorers.createTFIDFScorer(query:localeIdentifier:stopWords:using:overwriteSimilarityScore:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X6>, char a6@<W7>, uint64_t *a7@<X8>)
{
  v12 = sub_2680E17BC();
  OUTLINED_FUNCTION_0_10();
  v14 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v17, v18);
  OUTLINED_FUNCTION_1_1();
  v21 = v20 - v19;

  sub_2680E170C();
  v22 = type metadata accessor for MorphunTokenizer();
  v23 = *(v22 + 48);
  v24 = *(v22 + 52);
  v25 = swift_allocObject();
  (*(v14 + 32))(v25 + OBJC_IVAR____TtC29SiriNaturalLanguageGeneration16MorphunTokenizer_locale, v21, v12);
  type metadata accessor for CosineSimilarity();
  v26 = swift_allocObject();

  v27 = sub_2680E0DA4(a1, a2, a3, v25, v26);
  v28 = type metadata accessor for TFIDFScorer();
  v43[3] = v28;
  v43[4] = &off_2878F3760;
  v43[0] = v27;
  v29 = type metadata accessor for DialogScorer();
  v30 = swift_allocObject();
  __swift_mutable_project_boxed_opaque_existential_1(v43, v28);
  OUTLINED_FUNCTION_0_10();
  v32 = *(v31 + 64);
  MEMORY[0x28223BE20](v33, v34);
  OUTLINED_FUNCTION_1_1();
  v37 = (v36 - v35);
  (*(v38 + 16))(v36 - v35);
  v39 = *v37;
  *(v30 + 40) = v28;
  *(v30 + 48) = &off_2878F3760;
  *(v30 + 16) = v39;
  *(v30 + 56) = a4;
  *(v30 + 64) = a5;
  *(v30 + 72) = a6;

  __swift_destroy_boxed_opaque_existential_0Tm(v43);
  a7[3] = v29;
  a7[4] = &off_2878F4218;

  *a7 = v30;
  return result;
}

uint64_t static NLGDialogScorers.createWeightedScorer(adding:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for WeightedDialogScorer();
  v5 = swift_allocObject();
  result = sub_2680E05D4(a1);
  *(v5 + 16) = result;
  a2[3] = v4;
  a2[4] = &off_2878F4208;
  *a2 = v5;
  return result;
}

void *sub_2680E0DA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = type metadata accessor for MorphunTokenizer();
  v30[3] = v10;
  v30[4] = &off_2878F43A0;
  v30[0] = a4;
  v11 = type metadata accessor for CosineSimilarity();
  v28 = v11;
  v29 = &off_2878F3750;
  v27[0] = a5;
  type metadata accessor for TFIDFScorer();
  v12 = swift_allocObject();
  v13 = __swift_mutable_project_boxed_opaque_existential_1(v30, v10);
  v14 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v13, v13);
  v16 = (v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v17 + 16))(v16);
  v18 = v28;
  v19 = __swift_mutable_project_boxed_opaque_existential_1(v27, v28);
  v20 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v19, v19);
  v22 = (v27 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v23 + 16))(v22);
  v24 = *v16;
  v25 = *v22;
  v12[8] = v10;
  v12[9] = &off_2878F43A0;
  v12[10] = v25;
  v12[13] = v11;
  v12[14] = &off_2878F3750;
  v12[2] = a1;
  v12[3] = a2;
  v12[4] = a3;
  v12[5] = v24;
  __swift_destroy_boxed_opaque_existential_0Tm(v27);
  __swift_destroy_boxed_opaque_existential_0Tm(v30);
  return v12;
}

unint64_t sub_2680E0FB4()
{
  result = qword_28024A488;
  if (!qword_28024A488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024A488);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for NLGDialogScorerType(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x2680E10FCLL);
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

_BYTE *storeEnumTagSinglePayload for NLGDialogScorers(_BYTE *result, int a2, int a3)
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
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

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
      JUMPOUT(0x2680E11D0);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_2680E1264()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  v4 = v0[9];

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_2680E12B4()
{
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 60, 7);
}

uint64_t sub_2680E12EC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024A490, &qword_2680E4608);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

__n128 __swift_memcpy44_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 28) = *(a2 + 28);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_2680E1380(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 44))
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

uint64_t sub_2680E13C0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 44) = 1;
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

    *(result + 44) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_29SiriNaturalLanguageGeneration15NLGDialogSourceOSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_2680E1438(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 104))
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

uint64_t sub_2680E1478(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 104) = 1;
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

    *(result + 104) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2680E14E8()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t sub_2680E1538@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[7];
  v3 = v1[8];
  v4 = v1[9];
  v5 = v1[10];
  v6 = v1[11];
  v7 = v1[12];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
  a1[5] = v7;
  return sub_2680D4518(v2, v3);
}

uint64_t sub_2680E1554()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t sub_2680E1584()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}