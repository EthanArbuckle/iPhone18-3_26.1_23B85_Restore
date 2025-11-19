uint64_t sub_2301A7044(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  v5 = *(a3 + 24);
  v6 = sub_23030EB58();
  (*(*(v6 - 8) + 32))(a1 + v5, a2 + v5, v6);
  return a1;
}

char *sub_2301A70C4(char *a1, char *a2, uint64_t a3)
{
  v6 = *(a2 + 1);
  *a1 = *a2;
  *(a1 + 1) = v6;

  *(a1 + 2) = *(a2 + 2);
  v7 = *(a3 + 24);
  v8 = sub_23030EB58();
  (*(*(v8 - 8) + 40))(&a1[v7], &a2[v7], v8);
  return a1;
}

uint64_t sub_2301A7178()
{
  result = sub_23030EB58();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t *sub_2301A726C(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v9 = *a2;
    *a1 = *a2;
    a1 = (v9 + ((v5 + 16) & ~v5));
  }

  else
  {
    v7 = sub_23030E9B8();
    (*(*(v7 - 8) + 16))(a1, a2, v7);
    v8 = *(a3 + 24);
    *(a1 + *(a3 + 20)) = *(a2 + *(a3 + 20));
    *(a1 + v8) = *(a2 + v8);
  }

  return a1;
}

uint64_t sub_2301A733C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_23030E9B8();
  (*(*(v6 - 8) + 16))(a1, a2, v6);
  v7 = *(a3 + 24);
  *(a1 + *(a3 + 20)) = *(a2 + *(a3 + 20));
  *(a1 + v7) = *(a2 + v7);
  return a1;
}

uint64_t sub_2301A73C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_23030E9B8();
  (*(*(v6 - 8) + 24))(a1, a2, v6);
  *(a1 + *(a3 + 20)) = *(a2 + *(a3 + 20));
  *(a1 + *(a3 + 24)) = *(a2 + *(a3 + 24));
  return a1;
}

uint64_t sub_2301A7448(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_23030E9B8();
  (*(*(v6 - 8) + 32))(a1, a2, v6);
  v7 = *(a3 + 24);
  *(a1 + *(a3 + 20)) = *(a2 + *(a3 + 20));
  *(a1 + v7) = *(a2 + v7);
  return a1;
}

uint64_t sub_2301A74CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_23030E9B8();
  (*(*(v6 - 8) + 40))(a1, a2, v6);
  v7 = *(a3 + 24);
  *(a1 + *(a3 + 20)) = *(a2 + *(a3 + 20));
  *(a1 + v7) = *(a2 + v7);
  return a1;
}

uint64_t __swift_get_extra_inhabitant_index_100Tm(uint64_t a1, uint64_t a2)
{
  v4 = sub_23030E9B8();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t __swift_store_extra_inhabitant_index_101Tm(uint64_t a1, uint64_t a2)
{
  v4 = sub_23030E9B8();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_2301A7654()
{
  result = sub_23030E9B8();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t destroy for REMTestStorePopulator.StoreContents(uint64_t a1)
{
}

void *initializeWithCopy for REMTestStorePopulator.StoreContents(void *a1, void *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;
  v4 = a2[3];
  a1[2] = a2[2];
  a1[3] = v4;
  v5 = a2[5];
  a1[4] = a2[4];
  a1[5] = v5;
  v6 = a2[7];
  a1[6] = a2[6];
  a1[7] = v6;
  v7 = a2[9];
  a1[8] = a2[8];
  a1[9] = v7;

  v8 = v3;

  return a1;
}

void *assignWithCopy for REMTestStorePopulator.StoreContents(void *a1, void *a2)
{
  *a1 = *a2;

  v4 = a2[1];
  v5 = a1[1];
  a1[1] = v4;
  v6 = v4;

  a1[2] = a2[2];

  a1[3] = a2[3];

  a1[4] = a2[4];

  a1[5] = a2[5];

  a1[6] = a2[6];

  a1[7] = a2[7];

  a1[8] = a2[8];

  a1[9] = a2[9];

  return a1;
}

uint64_t assignWithTake for REMTestStorePopulator.StoreContents(uint64_t a1, _OWORD *a2)
{

  v4 = *(a1 + 8);
  *a1 = *a2;

  *(a1 + 16) = a2[1];

  *(a1 + 32) = a2[2];

  *(a1 + 48) = a2[3];

  *(a1 + 64) = a2[4];

  return a1;
}

uint64_t getEnumTagSinglePayload for REMTestStorePopulator.StoreContents(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for REMTestStorePopulator.StoreContents(uint64_t result, int a2, int a3)
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

unint64_t sub_2301A7B38()
{
  result = qword_27DB16578;
  if (!qword_27DB16578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB16578);
  }

  return result;
}

uint64_t objectdestroy_3Tm()
{

  return swift_deallocObject();
}

unint64_t sub_2301A7D5C()
{
  result = qword_27DB165B8;
  if (!qword_27DB165B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB165B8);
  }

  return result;
}

void **assignWithCopy for REMTestStorePopulator.ContentsParseError(void **a1, void **a2)
{
  v3 = *a1;
  v4 = *a2;
  if (*a1 < 0xFFFFFFFF)
  {
    if (v4 >= 0xFFFFFFFF)
    {
      *a1 = v4;
      v6 = v4;
      return a1;
    }

LABEL_7:
    *a1 = v4;
    return a1;
  }

  if (v4 < 0xFFFFFFFF)
  {

    v4 = *a2;
    goto LABEL_7;
  }

  *a1 = v4;
  v5 = v4;

  return a1;
}

void **assignWithTake for REMTestStorePopulator.ContentsParseError(void **result, unint64_t *a2)
{
  v2 = *result;
  v3 = *a2;
  if (*result < 0xFFFFFFFF)
  {
    *result = v3;
  }

  else if (v3 < 0xFFFFFFFF)
  {
    v5 = result;

    result = v5;
    *v5 = v3;
  }

  else
  {
    *result = v3;
    v4 = result;

    return v4;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for REMTestStorePopulator.ContentsParseError(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFE9 && *(a1 + 8))
  {
    return (*a1 + 2147483626);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 21;
  if (v4 >= 0x17)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for REMTestStorePopulator.ContentsParseError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFEA)
  {
    *result = 0;
    *result = a2 - 2147483626;
    if (a3 >= 0x7FFFFFEA)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFEA)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 21;
    }
  }

  return result;
}

void *sub_2301A801C(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2 - 1;
  }

  *result = v2;
  return result;
}

unint64_t sub_2301A8060()
{
  result = qword_27DB16620;
  if (!qword_27DB16620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB16620);
  }

  return result;
}

uint64_t REMAnalyticsManager.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_2301A8188(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for REMAnalyticsEvent();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

Swift::UInt64 __swiftcall UInt64.init(nanosecondsFromSeconds:)(Swift::Double nanosecondsFromSeconds)
{
  v1 = nanosecondsFromSeconds * 1000000000.0;
  if ((*&v1 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v1 <= -1.0)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v1 < 1.84467441e19)
  {
    return v1;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t DoubleStacksQueue.init()@<X0>(uint64_t *a1@<X8>)
{
  *a1 = sub_23030F608();
  result = sub_23030F608();
  a1[1] = result;
  return result;
}

uint64_t DoubleStacksQueue.isEmpty.getter()
{
  sub_23030FDE8();
  swift_getWitnessTable();
  if (sub_2303100E8())
  {
    v0 = sub_2303100E8();
  }

  else
  {
    v0 = 0;
  }

  return v0 & 1;
}

uint64_t DoubleStacksQueue.peek.getter()
{
  sub_23030FDE8();
  swift_getWitnessTable();
  if (sub_2303100E8())
  {
    return sub_2303100D8();
  }

  swift_getWitnessTable();
  return sub_23030F7A8();
}

uint64_t DoubleStacksQueue.enqueue(_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  MEMORY[0x28223BE20](a1);
  (*(v4 + 16))(&v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v5, v2);
  sub_23030FDE8();
  return sub_23030FD98();
}

uint64_t DoubleStacksQueue.dequeue()()
{
  v1 = v0;
  v2 = sub_23030FDE8();
  swift_getWitnessTable();
  if (sub_2303100E8())
  {

    swift_getWitnessTable();
    v3 = sub_23030FC18();

    *(v1 + 8) = v3;
    sub_23030FDD8();
  }

  WitnessTable = swift_getWitnessTable();
  v5 = swift_getWitnessTable();
  return MEMORY[0x231911F20](v2, WitnessTable, v5);
}

Swift::Void __swiftcall DoubleStacksQueue.reset()()
{
  sub_23030FDE8();
  sub_23030FDD8();
  sub_23030FDD8();
}

uint64_t sub_2301A8660()
{
  v0 = sub_23030EF48();
  __swift_allocate_value_buffer(v0, qword_27DB16628);
  v1 = __swift_project_value_buffer(v0, qword_27DB16628);
  if (qword_280C9C490 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280CB17C8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t REMNavigationSpecifier.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v227 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14800);
  MEMORY[0x28223BE20](v3 - 8);
  v214 = &v208 - v4;
  v5 = sub_23030EBB8();
  v217 = *(v5 - 8);
  v218 = v5;
  MEMORY[0x28223BE20](v5);
  v211 = &v208 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_23030E9B8();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v208 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v213 = &v208 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v210 = &v208 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v212 = &v208 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v220 = &v208 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v219 = &v208 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v209 = &v208 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v216 = &v208 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v215 = &v208 - v27;
  v28 = MEMORY[0x28223BE20](v26);
  v208 = &v208 - v29;
  MEMORY[0x28223BE20](v28);
  v31 = (&v208 - v30);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB16640);
  MEMORY[0x28223BE20](v32 - 8);
  v34 = &v208 - v33;
  v35 = type metadata accessor for URLParseResult(0);
  v36 = *(v35 - 8);
  v37 = MEMORY[0x28223BE20](v35);
  v222 = &v208 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v37);
  v40 = (&v208 - v39);
  v41 = type metadata accessor for REMNavigationSpecifier(0);
  v225 = *(v41 - 8);
  v226 = v41;
  MEMORY[0x28223BE20](v41);
  v221 = (&v208 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0));
  v223 = v7;
  v224 = v8;
  v43 = a1;
  v44 = v7;
  v45 = *(v8 + 16);
  v45(v31, a1, v44);
  sub_2301AA428(v31, v34);
  if ((*(v36 + 48))(v34, 1, v35) == 1)
  {
    sub_230061918(v34, &qword_27DB16640);
    if (qword_27DB13C00 != -1)
    {
      swift_once();
    }

    v46 = sub_23030EF48();
    __swift_project_value_buffer(v46, qword_27DB16628);
    v47 = a1;
    v48 = v223;
    v45(v11, a1, v223);
    v49 = sub_23030EF38();
    v50 = sub_230310288();
    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      v228 = v52;
      *v51 = 136315138;
      v53 = sub_23030E888();
      v222 = v47;
      v55 = v54;
      v56 = *(v224 + 8);
      v56(v11, v48);
      v57 = sub_23004E30C(v53, v55, &v228);

      *(v51 + 4) = v57;
      _os_log_impl(&dword_230044000, v49, v50, "Could not parse url. Failed to create navigation specifier {url: %s}", v51, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v52);
      MEMORY[0x231914180](v52, -1, -1);
      MEMORY[0x231914180](v51, -1, -1);

      v56(v222, v48);
    }

    else
    {

      v65 = *(v224 + 8);
      v65(a1, v48);
      v65(v11, v48);
    }
  }

  else
  {
    sub_2301B752C(v34, v40, type metadata accessor for URLParseResult);
    v58 = v40;
    v59 = a1;
    switch(*v40)
    {
      case 1:
        v112 = *(v40 + *(v35 + 28));
        v83 = v223;
        v85 = v215;
        if (v112)
        {
          v113 = v222;
          sub_2301B75B4(v58, v222, type metadata accessor for URLParseResult);
          v98 = v112;
          sub_2301AC170(v113, &v228);
          v99 = v229;
          if (v229 != 255)
          {
            goto LABEL_28;
          }
        }

        if (qword_27DB13C00 != -1)
        {
          swift_once();
        }

        v194 = sub_23030EF48();
        __swift_project_value_buffer(v194, qword_27DB16628);
        v45(v85, v59, v83);
        v117 = sub_23030EF38();
        v195 = sub_230310288();
        if (!os_log_type_enabled(v117, v195))
        {
          goto LABEL_89;
        }

        v196 = v85;
        v197 = swift_slowAlloc();
        v198 = swift_slowAlloc();
        v222 = v59;
        v199 = v198;
        v228 = v198;
        *v197 = 136315138;
        v200 = sub_23030E888();
        v221 = v58;
        v202 = v201;
        v203 = *(v224 + 8);
        v203(v196, v83);
        v204 = sub_23004E30C(v200, v202, &v228);

        *(v197 + 4) = v204;
        _os_log_impl(&dword_230044000, v117, v195, "Missing ObjectID. Failed to create navigation specifier for list {url: %s}", v197, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v199);
        MEMORY[0x231914180](v199, -1, -1);
        MEMORY[0x231914180](v197, -1, -1);

        v203(v222, v83);
        goto LABEL_83;
      case 2:
        v96 = *(v40 + *(v35 + 28));
        v83 = v223;
        v85 = v216;
        if (!v96)
        {
          goto LABEL_78;
        }

        v97 = v222;
        sub_2301B75B4(v58, v222, type metadata accessor for URLParseResult);
        v98 = v96;
        sub_2301AC170(v97, &v228);
        v99 = v229;
        if (v229 != 255)
        {
LABEL_28:
          v100 = v228;
          (*(v224 + 8))(v59, v83);
          sub_2301B761C(v58, type metadata accessor for URLParseResult);
          v63 = v221;
          *v221 = v98;
          v63[1] = v100;
          *(v63 + 16) = v99;
          v64 = v226;
          goto LABEL_75;
        }

LABEL_78:
        if (qword_27DB13C00 != -1)
        {
          swift_once();
        }

        v188 = sub_23030EF48();
        __swift_project_value_buffer(v188, qword_27DB16628);
        v45(v85, v59, v83);
        v117 = sub_23030EF38();
        v118 = sub_230310288();
        if (!os_log_type_enabled(v117, v118))
        {
          goto LABEL_89;
        }

        v189 = v85;
        v120 = swift_slowAlloc();
        v121 = swift_slowAlloc();
        v228 = v121;
        *v120 = 136315138;
        v190 = sub_23030E888();
        v221 = v58;
        v222 = v59;
        v192 = v191;
        v125 = *(v224 + 8);
        v125(v189, v83);
        v193 = sub_23004E30C(v190, v192, &v228);

        *(v120 + 4) = v193;
        v127 = "Missing ObjectID. Failed to create navigation specifier for list {url: %s}";
        goto LABEL_82;
      case 3:
        v104 = *(v40 + *(v35 + 28));
        if (v104)
        {
          v105 = v222;
          sub_2301B75B4(v58, v222, type metadata accessor for URLParseResult);
          v106 = v104;
          sub_2301AC6BC(v105, &v228);
          (*(v224 + 8))(v43, v223);
          sub_2301B761C(v58, type metadata accessor for URLParseResult);
          v107 = v228;
          v108 = BYTE2(v228);
          v63 = v221;
          *v221 = v106;
          *(v63 + 4) = v107;
          *(v63 + 10) = v108;
          v64 = v226;
          goto LABEL_75;
        }

        if (qword_27DB13C00 != -1)
        {
          swift_once();
        }

        v160 = sub_23030EF48();
        __swift_project_value_buffer(v160, qword_27DB16628);
        v161 = v209;
        v162 = v223;
        v45(v209, a1, v223);
        v163 = sub_23030EF38();
        v164 = sub_230310288();
        if (os_log_type_enabled(v163, v164))
        {
          v165 = swift_slowAlloc();
          v166 = swift_slowAlloc();
          v228 = v166;
          *v165 = 136315138;
          v167 = sub_23030E888();
          v168 = v161;
          v169 = v59;
          v171 = v170;
          v221 = v58;
          v172 = *(v224 + 8);
          v172(v168, v162);
          v173 = sub_23004E30C(v167, v171, &v228);

          *(v165 + 4) = v173;
          _os_log_impl(&dword_230044000, v163, v164, "Missing ObjectID. Failed to create navigation specifier for reminder {url: %s}", v165, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v166);
          MEMORY[0x231914180](v166, -1, -1);
          MEMORY[0x231914180](v165, -1, -1);

          v172(v169, v162);
          goto LABEL_83;
        }

        v206 = *(v224 + 8);
        v206(a1, v162);
        v206(v161, v162);
        goto LABEL_90;
      case 4:
        v86 = *(v40 + *(v35 + 28));
        v83 = v223;
        v85 = v219;
        if (!v86)
        {
          goto LABEL_41;
        }

        v87 = v222;
        sub_2301B75B4(v58, v222, type metadata accessor for URLParseResult);
        v88 = v86;
        sub_2301AC834(v87, &v228);
        v89 = v228;
        if (v228 != 2)
        {
          goto LABEL_74;
        }

        goto LABEL_40;
      case 5:
        v114 = *(v40 + *(v35 + 28));
        v83 = v223;
        v85 = v220;
        if (!v114)
        {
          goto LABEL_41;
        }

        v115 = v222;
        sub_2301B75B4(v58, v222, type metadata accessor for URLParseResult);
        v88 = v114;
        sub_2301AC834(v115, &v228);
        v89 = v228;
        if (v228 != 2)
        {
LABEL_74:
          (*(v224 + 8))(v59, v83);
          sub_2301B761C(v58, type metadata accessor for URLParseResult);
          v63 = v221;
          *v221 = v88;
          *(v63 + 8) = v89 & 1;
          v64 = v226;
          goto LABEL_75;
        }

LABEL_40:

LABEL_41:
        if (qword_27DB13C00 != -1)
        {
          swift_once();
        }

        v116 = sub_23030EF48();
        __swift_project_value_buffer(v116, qword_27DB16628);
        v45(v85, v59, v83);
        v117 = sub_23030EF38();
        v118 = sub_230310288();
        if (os_log_type_enabled(v117, v118))
        {
          v119 = v85;
          v120 = swift_slowAlloc();
          v121 = swift_slowAlloc();
          v228 = v121;
          *v120 = 136315138;
          v122 = sub_23030E888();
          v221 = v58;
          v222 = v59;
          v124 = v123;
          v125 = *(v224 + 8);
          v125(v119, v83);
          v126 = sub_23004E30C(v122, v124, &v228);

          *(v120 + 4) = v126;
          v127 = "Missing ObjectID. Failed to create navigation specifier for section {url: %s}";
          goto LABEL_82;
        }

        goto LABEL_89;
      case 6:
      case 0x11:
      case 0x12:
        (*(v224 + 8))(a1, v223);
        sub_2301B761C(v40, type metadata accessor for URLParseResult);
        v63 = v221;
        v64 = v226;
        goto LABEL_75;
      case 7:
        v109 = v40;
        v110 = v222;
        sub_2301B75B4(v109, v222, type metadata accessor for URLParseResult);
        sub_2301AC920(v110, &v228);
        (*(v224 + 8))(a1, v223);
        sub_2301B761C(v58, type metadata accessor for URLParseResult);
        v111 = v229;
        if (v229 == 255)
        {
          break;
        }

        v63 = v221;
        *v221 = v228;
        *(v63 + 8) = v111;
        v64 = v226;
        goto LABEL_75;
      case 8:
        v134 = v40;
        v135 = v222;
        sub_2301B75B4(v134, v222, type metadata accessor for URLParseResult);
        sub_2301AC920(v135, &v228);
        (*(v224 + 8))(a1, v223);
        sub_2301B761C(v58, type metadata accessor for URLParseResult);
        v136 = v229;
        if (v229 == 255)
        {
          break;
        }

        v63 = v221;
        *v221 = v228;
        *(v63 + 8) = v136;
        v64 = v226;
        goto LABEL_75;
      case 9:
        v93 = v40;
        v94 = v222;
        sub_2301B75B4(v93, v222, type metadata accessor for URLParseResult);
        sub_2301AC920(v94, &v228);
        (*(v224 + 8))(a1, v223);
        sub_2301B761C(v58, type metadata accessor for URLParseResult);
        v95 = v229;
        if (v229 == 255)
        {
          break;
        }

        v63 = v221;
        *v221 = v228;
        *(v63 + 8) = v95;
        v64 = v226;
        goto LABEL_75;
      case 0xA:
        v131 = v40;
        v132 = v222;
        sub_2301B75B4(v131, v222, type metadata accessor for URLParseResult);
        sub_2301AC920(v132, &v228);
        (*(v224 + 8))(a1, v223);
        sub_2301B761C(v58, type metadata accessor for URLParseResult);
        v133 = v229;
        if (v229 == 255)
        {
          break;
        }

        v63 = v221;
        *v221 = v228;
        *(v63 + 8) = v133;
        v64 = v226;
        goto LABEL_75;
      case 0xB:
        v79 = v40;
        v80 = v222;
        sub_2301B75B4(v79, v222, type metadata accessor for URLParseResult);
        v81 = sub_2301ACD70(v80, &v228);
        v82 = v229;
        if (v229 != 1)
        {
          v147 = v228;
          (*(v224 + 8))(v43, v223, v81);
          sub_2301B761C(v58, type metadata accessor for URLParseResult);
          v63 = v221;
          *v221 = v147;
          v63[1] = v82;
          v64 = v226;
          goto LABEL_75;
        }

        v83 = v223;
        if (qword_27DB13C00 != -1)
        {
          swift_once();
        }

        v84 = sub_23030EF48();
        __swift_project_value_buffer(v84, qword_27DB16628);
        v85 = v212;
        goto LABEL_64;
      case 0xC:
        v90 = v40;
        v91 = v222;
        sub_2301B75B4(v90, v222, type metadata accessor for URLParseResult);
        sub_2301AC920(v91, &v228);
        (*(v224 + 8))(a1, v223);
        sub_2301B761C(v58, type metadata accessor for URLParseResult);
        v92 = v229;
        if (v229 == 255)
        {
          break;
        }

        v63 = v221;
        *v221 = v228;
        *(v63 + 8) = v92;
        v64 = v226;
        goto LABEL_75;
      case 0xD:
        v128 = v40;
        v129 = v222;
        sub_2301B75B4(v128, v222, type metadata accessor for URLParseResult);
        sub_2301AC920(v129, &v228);
        (*(v224 + 8))(a1, v223);
        sub_2301B761C(v58, type metadata accessor for URLParseResult);
        v130 = v229;
        if (v229 == 255)
        {
          break;
        }

        v63 = v221;
        *v221 = v228;
        *(v63 + 8) = v130;
        v64 = v226;
        goto LABEL_75;
      case 0xE:
        v75 = v40;
        v76 = v222;
        sub_2301B75B4(v75, v222, type metadata accessor for URLParseResult);
        sub_2301AD084(v76, &v228);
        (*(v224 + 8))(a1, v223);
        sub_2301B761C(v58, type metadata accessor for URLParseResult);
        if (v228 == 3)
        {
          break;
        }

        v77 = v230;
        v78 = v229;
        v63 = v221;
        *v221 = v228;
        v63[1] = v78;
        *(v63 + 16) = v77;
        v64 = v226;
        goto LABEL_75;
      case 0xF:
        v101 = v40;
        v102 = v222;
        sub_2301B75B4(v101, v222, type metadata accessor for URLParseResult);
        sub_2301AC920(v102, &v228);
        (*(v224 + 8))(a1, v223);
        sub_2301B761C(v58, type metadata accessor for URLParseResult);
        v103 = v229;
        if (v229 == 255)
        {
          break;
        }

        v63 = v221;
        *v221 = v228;
        *(v63 + 8) = v103;
        v64 = v226;
        goto LABEL_75;
      case 0x10:
        v70 = v40;
        v71 = v222;
        sub_2301B75B4(v70, v222, type metadata accessor for URLParseResult);
        sub_2301ACF54(v71, &v228);
        v72 = v230;
        if (v230 != 255)
        {
          v74 = v228;
          v73 = v229;
          (*(v224 + 8))(v43, v223);
          sub_2301B761C(v58, type metadata accessor for URLParseResult);
          v63 = v221;
          *v221 = v74;
          v63[1] = v73;
          *(v63 + 16) = v72;
          v64 = v226;
          goto LABEL_75;
        }

        v83 = v223;
        if (qword_27DB13C00 != -1)
        {
          swift_once();
        }

        v154 = sub_23030EF48();
        __swift_project_value_buffer(v154, qword_27DB16628);
        v85 = v210;
LABEL_64:
        v45(v85, a1, v83);
        v117 = sub_23030EF38();
        v118 = sub_230310288();
        if (!os_log_type_enabled(v117, v118))
        {
          goto LABEL_89;
        }

        v155 = v85;
        v120 = swift_slowAlloc();
        v121 = swift_slowAlloc();
        v228 = v121;
        *v120 = 136315138;
        v156 = sub_23030E888();
        v221 = v58;
        v222 = v59;
        v158 = v157;
        v125 = *(v224 + 8);
        v125(v155, v83);
        v159 = sub_23004E30C(v156, v158, &v228);

        *(v120 + 4) = v159;
        v127 = "nil seach path specifier. Failed to create url {%s}";
        goto LABEL_82;
      case 0x13:
        v137 = v40 + *(v35 + 24);
        v138 = v214;
        sub_2300BB860(v137, v214);
        v140 = v217;
        v139 = v218;
        if ((*(v217 + 48))(v138, 1, v218) != 1)
        {
          v148 = *(v140 + 32);
          v149 = v211;
          v148(v211, v138, v139);
          v150 = sub_2301AE120();
          v152 = v151;
          (*(v224 + 8))(v59, v223);
          sub_2301B761C(v58, type metadata accessor for URLParseResult);
          if (v152 == 1)
          {
            v150 = 0;
            v152 = 0;
          }

          v63 = v221;
          v148(v221, v149, v139);
          v153 = (v63 + *(type metadata accessor for REMiCloudSharedItemSpecifier.PublicTemplate(0) + 20));
          *v153 = v150;
          v153[1] = v152;
          v64 = v226;
          goto LABEL_75;
        }

        sub_230061918(v138, &qword_27DB14800);
        v83 = v223;
        if (qword_27DB13C00 != -1)
        {
          swift_once();
        }

        v141 = sub_23030EF48();
        __swift_project_value_buffer(v141, qword_27DB16628);
        v85 = v213;
        v45(v213, a1, v83);
        v117 = sub_23030EF38();
        v118 = sub_230310288();
        if (!os_log_type_enabled(v117, v118))
        {
LABEL_89:

          v205 = *(v224 + 8);
          v205(v59, v83);
          v205(v85, v83);
          goto LABEL_90;
        }

        v142 = v85;
        v120 = swift_slowAlloc();
        v121 = swift_slowAlloc();
        v228 = v121;
        *v120 = 136315138;
        v143 = sub_23030E888();
        v221 = v58;
        v222 = v59;
        v145 = v144;
        v125 = *(v224 + 8);
        v125(v142, v83);
        v146 = sub_23004E30C(v143, v145, &v228);

        *(v120 + 4) = v146;
        v127 = "Missing UUID. Failed to create navigation specifier for shared template {url: %s}";
LABEL_82:
        _os_log_impl(&dword_230044000, v117, v118, v127, v120, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v121);
        MEMORY[0x231914180](v121, -1, -1);
        MEMORY[0x231914180](v120, -1, -1);

        v125(v222, v83);
        goto LABEL_83;
      default:
        v60 = *(v40 + *(v35 + 28));
        if (v60)
        {
          v61 = *(v224 + 8);
          v62 = v60;
          v61(v43, v223);
          sub_2301B761C(v58, type metadata accessor for URLParseResult);
          v63 = v221;
          *v221 = v62;
          v64 = v226;
LABEL_75:
          swift_storeEnumTagMultiPayload();
          v68 = v227;
          v69 = v225;
          sub_2301B752C(v63, v227, type metadata accessor for REMNavigationSpecifier);
          v66 = 0;
          v67 = v64;
          return (*(v69 + 56))(v68, v66, 1, v67);
        }

        v174 = v223;
        if (qword_27DB13C00 != -1)
        {
          swift_once();
        }

        v175 = sub_23030EF48();
        __swift_project_value_buffer(v175, qword_27DB16628);
        v176 = v208;
        v45(v208, a1, v174);
        v177 = sub_23030EF38();
        v178 = sub_230310288();
        if (os_log_type_enabled(v177, v178))
        {
          v179 = swift_slowAlloc();
          v180 = swift_slowAlloc();
          v222 = a1;
          v181 = v180;
          v228 = v180;
          *v179 = 136315138;
          v182 = sub_23030E888();
          v221 = v40;
          v184 = v183;
          v185 = *(v224 + 8);
          v185(v176, v174);
          v186 = sub_23004E30C(v182, v184, &v228);

          *(v179 + 4) = v186;
          _os_log_impl(&dword_230044000, v177, v178, "Missing ObjectID. Failed to create navigation specifier for account {url: %s}", v179, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v181);
          MEMORY[0x231914180](v181, -1, -1);
          MEMORY[0x231914180](v179, -1, -1);

          v185(v222, v174);
LABEL_83:
          sub_2301B761C(v221, type metadata accessor for URLParseResult);
        }

        else
        {

          v207 = *(v224 + 8);
          v207(v59, v174);
          v207(v176, v174);
LABEL_90:
          sub_2301B761C(v58, type metadata accessor for URLParseResult);
        }

        break;
    }
  }

  v66 = 1;
  v67 = v226;
  v68 = v227;
  v69 = v225;
  return (*(v69 + 56))(v68, v66, 1, v67);
}

uint64_t sub_2301AA428@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v251 = sub_23030E9B8();
  v254 = *(v251 - 8);
  v4 = MEMORY[0x28223BE20](v251);
  v6 = &v234[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v234[-v8];
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v234[-v11];
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v234[-v14];
  v16 = MEMORY[0x28223BE20](v13);
  v240 = &v234[-v17];
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v234[-v19];
  v21 = MEMORY[0x28223BE20](v18);
  v237 = &v234[-v22];
  v23 = MEMORY[0x28223BE20](v21);
  v238 = &v234[-v24];
  MEMORY[0x28223BE20](v23);
  v236 = &v234[-v25];
  v26 = sub_23030EBB8();
  v243 = *(v26 - 1);
  v244 = v26;
  MEMORY[0x28223BE20](v26);
  v239 = &v234[-((v27 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14800);
  v29 = MEMORY[0x28223BE20](v28 - 8);
  v241 = &v234[-((v30 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v29);
  v245 = &v234[-v31];
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB149F8);
  MEMORY[0x28223BE20](v32 - 8);
  v34 = &v234[-v33];
  v35 = sub_23030E578();
  v247 = *(v35 - 8);
  v248 = v35;
  MEMORY[0x28223BE20](v35);
  v246 = &v234[-((v36 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v37 = type metadata accessor for URLParseResult(0);
  v249 = *(v37 - 8);
  v250 = v37;
  MEMORY[0x28223BE20](v37);
  v242 = &v234[-((v38 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v39 = sub_23030E978();
  v252 = a2;
  if (!v40)
  {
    goto LABEL_12;
  }

  v41 = v40;
  v253 = a1;
  if (v39 == _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0() && v41 == v42)
  {

    a1 = v253;
    goto LABEL_6;
  }

  v43 = sub_230311048();

  a1 = v253;
  if ((v43 & 1) == 0)
  {
LABEL_12:
    if (qword_27DB13C00 != -1)
    {
LABEL_99:
      swift_once();
    }

    v60 = sub_23030EF48();
    __swift_project_value_buffer(v60, qword_27DB16628);
    v61 = v254;
    v62 = v251;
    (*(v254 + 16))(v6, a1, v251);
    v63 = sub_23030EF38();
    v64 = sub_230310288();
    if (!os_log_type_enabled(v63, v64))
    {

      v74 = *(v61 + 8);
      v74(a1, v62);
      v74(v6, v62);
LABEL_22:
      v86 = 1;
      v88 = v249;
      v87 = v250;
LABEL_23:
      v89 = v252;
      return (*(v88 + 56))(v89, v86, 1, v87);
    }

    v65 = swift_slowAlloc();
    v66 = swift_slowAlloc();
    v256[0] = v66;
    *v65 = 136315138;
    v67 = sub_23030E888();
    v69 = v68;
    v253 = a1;
    v70 = v62;
    v71 = *(v61 + 8);
    v71(v6, v70);
    v72 = sub_23004E30C(v67, v69, v256);

    *(v65 + 4) = v72;
    _os_log_impl(&dword_230044000, v63, v64, "url has unexpected scheme -- failed to parse url {url: %s}", v65, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v66);
    v73 = v66;
    goto LABEL_15;
  }

LABEL_6:
  sub_23030E958();
  if (!v44)
  {
    if (qword_27DB13C00 != -1)
    {
      swift_once();
    }

    v75 = sub_23030EF48();
    __swift_project_value_buffer(v75, qword_27DB16628);
    v76 = v254;
    v77 = v251;
    (*(v254 + 16))(v9, a1, v251);
    v78 = sub_23030EF38();
    v79 = sub_230310288();
    if (!os_log_type_enabled(v78, v79))
    {

      v105 = *(v76 + 8);
      v105(a1, v77);
      v105(v9, v77);
      goto LABEL_22;
    }

    v80 = swift_slowAlloc();
    v81 = swift_slowAlloc();
    v256[0] = v81;
    *v80 = 136315138;
    v82 = sub_23030E888();
    v84 = v83;
    v70 = v77;
    v71 = *(v76 + 8);
    v71(v9, v70);
    v85 = sub_23004E30C(v82, v84, v256);

    *(v80 + 4) = v85;
    _os_log_impl(&dword_230044000, v78, v79, "url has nil host -- failed to parse url {url: %s}", v80, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v81);
    MEMORY[0x231914180](v81, -1, -1);
    MEMORY[0x231914180](v80, -1, -1);

    goto LABEL_21;
  }

  sub_23030F958();

  v45 = sub_2301B9D68();
  if (v45 == 20)
  {

    if (qword_27DB13C00 != -1)
    {
      swift_once();
    }

    v46 = sub_23030EF48();
    __swift_project_value_buffer(v46, qword_27DB16628);
    v47 = v254;
    v48 = a1;
    v49 = a1;
    v50 = v251;
    (*(v254 + 16))(v12, v48, v251);
    v51 = sub_23030EF38();
    v52 = sub_230310288();
    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      v256[0] = v54;
      *v53 = 136315138;
      v55 = sub_23030E888();
      v57 = v56;
      v58 = *(v47 + 8);
      v58(v12, v50);
      v59 = sub_23004E30C(v55, v57, v256);

      *(v53 + 4) = v59;
      _os_log_impl(&dword_230044000, v51, v52, "url has unknown host -- failed to parse url {url: %s}", v53, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v54);
      MEMORY[0x231914180](v54, -1, -1);
      MEMORY[0x231914180](v53, -1, -1);

      v58(v253, v50);
    }

    else
    {

      v106 = *(v47 + 8);
      v106(v49, v50);
      v106(v12, v50);
    }

    goto LABEL_22;
  }

  v91 = v45;
  sub_23030E538();
  v93 = v247;
  v92 = v248;
  v94 = (*(v247 + 48))(v34, 1, v248);
  v95 = v254;
  if (v94 == 1)
  {

    sub_230061918(v34, &qword_27DB149F8);
    if (qword_27DB13C00 != -1)
    {
      swift_once();
    }

    v96 = sub_23030EF48();
    __swift_project_value_buffer(v96, qword_27DB16628);
    v97 = v251;
    (*(v95 + 16))(v15, a1, v251);
    v63 = sub_23030EF38();
    v98 = sub_230310288();
    if (!os_log_type_enabled(v63, v98))
    {

      v118 = *(v95 + 8);
      v118(a1, v97);
      v118(v15, v97);
      goto LABEL_22;
    }

    v99 = v95;
    v65 = swift_slowAlloc();
    v100 = swift_slowAlloc();
    v256[0] = v100;
    *v65 = 136315138;
    v101 = sub_23030E888();
    v103 = v102;
    v70 = v97;
    v71 = *(v99 + 8);
    v71(v15, v70);
    v104 = sub_23004E30C(v101, v103, v256);

    *(v65 + 4) = v104;
    _os_log_impl(&dword_230044000, v63, v98, "Failed to get url components -- failed to parse url {url: %s}", v65, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v100);
    v73 = v100;
LABEL_15:
    MEMORY[0x231914180](v73, -1, -1);
    MEMORY[0x231914180](v65, -1, -1);

LABEL_21:
    v71(v253, v70);
    goto LABEL_22;
  }

  (*(v93 + 32))(v246, v34, v92);
  v107 = v91;
  v235 = v91;
  if (v91 - 6 >= 0xD)
  {
    v119 = v95;
    v120 = v107 >= 6;
    v121 = sub_23030E898();
    v122 = v121;
    v123 = *(v121 + 2);
    if (v123 < 2)
    {

      if (qword_27DB13C00 != -1)
      {
        swift_once();
      }

      v124 = sub_23030EF48();
      __swift_project_value_buffer(v124, qword_27DB16628);
      v125 = v119;
      v126 = *(v119 + 16);
      v127 = v251;
      v126(v20, a1, v251);
      v128 = sub_23030EF38();
      v129 = sub_230310288();
      if (os_log_type_enabled(v128, v129))
      {
        v130 = swift_slowAlloc();
        v131 = swift_slowAlloc();
        v255 = v131;
        *v130 = 136315138;
        v132 = sub_23030E888();
        v134 = v133;
        v135 = *(v254 + 8);
        v135(v20);
        v136 = sub_23004E30C(v132, v134, &v255);

        *(v130 + 4) = v136;
        _os_log_impl(&dword_230044000, v128, v129, "url path is too short -- failed to parse url {url: %s}", v130, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v131);
        MEMORY[0x231914180](v131, -1, -1);
        MEMORY[0x231914180](v130, -1, -1);

        (v135)(v253, v127);
      }

      else
      {

        v180 = *(v125 + 8);
        v180(a1, v127);
        v180(v20, v127);
      }

LABEL_74:
      (*(v93 + 8))(v246, v248);
      v88 = v249;
      v87 = v250;
      v89 = v252;
      v86 = 1;
      return (*(v88 + 56))(v89, v86, 1, v87);
    }

    v138 = *(v121 + 4);
    v137 = *(v121 + 5);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v256[0] = v122;
    if (!isUniquelyReferenced_nonNull_native || v123 - 1 > *(v122 + 3) >> 1)
    {
      v122 = sub_23007E928(isUniquelyReferenced_nonNull_native, v123, 1, v122);
      v256[0] = v122;
    }

    sub_2300AE764(0, 1, 0);
    if (v138 == 47 && v137 == 0xE100000000000000)
    {
    }

    else
    {
      v157 = sub_230311048();

      if ((v157 & 1) == 0)
      {

        if (qword_27DB13C00 != -1)
        {
          swift_once();
        }

        v186 = sub_23030EF48();
        __swift_project_value_buffer(v186, qword_27DB16628);
        v187 = v119;
        v188 = *(v119 + 16);
        v189 = v237;
        v190 = v251;
        v188(v237, a1, v251);
        v191 = sub_23030EF38();
        v192 = sub_230310288();
        if (os_log_type_enabled(v191, v192))
        {
          v193 = swift_slowAlloc();
          v194 = swift_slowAlloc();
          v255 = v194;
          *v193 = 136315138;
          v245 = sub_23030E888();
          v195 = v189;
          v197 = v196;
          v198 = *(v187 + 8);
          v254 = v187 + 8;
          v198(v195, v190);
          v199 = v198;
          v200 = sub_23004E30C(v245, v197, &v255);

          *(v193 + 4) = v200;
          _os_log_impl(&dword_230044000, v191, v192, "unexpected path component structure -- failed to parse url {url: %s}", v193, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v194);
          MEMORY[0x231914180](v194, -1, -1);
          MEMORY[0x231914180](v193, -1, -1);

          v199(a1, v190);
        }

        else
        {

          v216 = *(v187 + 8);
          v216(a1, v190);
          v216(v189, v190);
        }

        goto LABEL_74;
      }
    }

    v158 = *(v122 + 2);
    if (v158)
    {
      v256[0] = v122;
      v159 = *(v122 + 3);
      v237 = v122;

      if (v158 - 1 <= v159 >> 1)
      {
        goto LABEL_68;
      }
    }

    else
    {
      __break(1u);
    }

    v237 = sub_23007E928(1, v158, 1, v237);
    v256[0] = v237;
LABEL_68:
    v161 = v243;
    v160 = v244;
    sub_2300AE764(0, 1, 0);
    v162 = v241;
    sub_23030EB68();

    if ((*(v161 + 48))(v162, 1, v160) == 1)
    {

      sub_230061918(v162, &qword_27DB14800);
      if (qword_27DB13C00 != -1)
      {
        swift_once();
      }

      v163 = sub_23030EF48();
      __swift_project_value_buffer(v163, qword_27DB16628);
      v164 = v119;
      v165 = *(v119 + 16);
      v166 = v238;
      v167 = v253;
      v168 = v251;
      v165(v238, v253, v251);
      v169 = sub_23030EF38();
      v170 = sub_230310288();
      if (os_log_type_enabled(v169, v170))
      {
        v171 = swift_slowAlloc();
        v172 = v164;
        v173 = swift_slowAlloc();
        v255 = v173;
        *v171 = 136315138;
        v174 = sub_23030E888();
        v175 = v166;
        v177 = v176;
        v178 = *(v172 + 8);
        v178(v175, v168);
        v179 = sub_23004E30C(v174, v177, &v255);

        *(v171 + 4) = v179;
        _os_log_impl(&dword_230044000, v169, v170, "failed to get object uuid -- failed to parse url {url: %s}", v171, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v173);
        MEMORY[0x231914180](v173, -1, -1);
        MEMORY[0x231914180](v171, -1, -1);

        v178(v253, v168);
      }

      else
      {

        v201 = *(v164 + 8);
        v201(v167, v168);
        v201(v166, v168);
      }

      (*(v93 + 8))(v246, v248);
      v88 = v249;
      v87 = v250;
      v86 = 1;
      goto LABEL_23;
    }

    v181 = *(v161 + 32);
    v182 = v239;
    v181(v239, v162, v160);
    if (v120)
    {

      v183 = v245;
      v181(v245, v182, v160);
      v184 = 0;
      v244 = 0;
      goto LABEL_90;
    }

    v202 = sub_23030F958();
    v204 = v203;

    if (v202 == 0x63636164636D6572 && v204 == 0xEC000000746E756FLL || (sub_230311048() & 1) != 0 || v202 == 0x73696C64636D6572 && v204 == 0xE900000000000074 || (sub_230311048() & 1) != 0 || v202 == 0x616D7364636D6572 && v204 == 0xEE007473696C7472)
    {
    }

    else
    {
      if ((sub_230311048() & 1) == 0)
      {
        if (v202 == 0x6D657264636D6572 && v204 == 0xED00007265646E69 || (sub_230311048() & 1) != 0)
        {

          ObjCClassFromMetadata = objc_opt_self();
        }

        else
        {
          if (v202 == 0xD000000000000010 && 0x800000023033EE10 == v204 || (sub_230311048() & 1) != 0)
          {

            v217 = &qword_27DB165C8;
          }

          else
          {
            if (v202 == 0xD000000000000015 && 0x800000023033EE30 == v204)
            {
            }

            else
            {
              v218 = sub_230311048();

              if ((v218 & 1) == 0)
              {

                if (qword_27DB13C00 != -1)
                {
                  swift_once();
                }

                v219 = sub_23030EF48();
                __swift_project_value_buffer(v219, qword_27DB16628);
                (*(v254 + 16))(v236, v253, v251);
                v220 = sub_23030EF38();
                v221 = sub_230310288();
                if (os_log_type_enabled(v220, v221))
                {
                  v222 = swift_slowAlloc();
                  v223 = swift_slowAlloc();
                  v255 = v223;
                  *v222 = 136315138;
                  v224 = v236;
                  v225 = sub_23030E888();
                  v227 = v226;
                  v228 = *(v254 + 8);
                  v229 = v224;
                  v230 = v251;
                  v228(v229, v251);
                  v231 = sub_23004E30C(v225, v227, &v255);

                  *(v222 + 4) = v231;
                  _os_log_impl(&dword_230044000, v220, v221, "unexpected entity name in url objectID -- failed to parse url {url: %s}", v222, 0xCu);
                  __swift_destroy_boxed_opaque_existential_1(v223);
                  MEMORY[0x231914180](v223, -1, -1);
                  MEMORY[0x231914180](v222, -1, -1);

                  v228(v253, v230);
                }

                else
                {

                  v232 = *(v254 + 8);
                  v233 = v251;
                  v232(v253, v251);
                  v232(v236, v233);
                }

                (*(v243 + 8))(v239, v244);
                (*(v247 + 8))(v246, v248);
                v86 = 1;
                v89 = v252;
LABEL_64:
                v88 = v249;
                v87 = v250;
                return (*(v88 + 56))(v89, v86, 1, v87);
              }
            }

            v217 = &qword_280C96EB0;
          }

          sub_23004CBA4(0, v217);
          ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
        }

        v161 = v243;
        v160 = v244;
        v182 = v239;
        goto LABEL_89;
      }

      v161 = v243;
      v160 = v244;
      v182 = v239;
    }

    ObjCClassFromMetadata = objc_opt_self();
LABEL_89:
    v206 = [ObjCClassFromMetadata cdEntityName];
    _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0();

    v207 = objc_allocWithZone(MEMORY[0x277D44700]);
    v208 = sub_23030EB88();
    v209 = sub_23030F8B8();

    v244 = [v207 initWithUUID:v208 entityName:v209];

    (*(v161 + 8))(v182, v160);
    v184 = 1;
    v183 = v245;
LABEL_90:
    (*(v161 + 56))(v183, v184, 1, v160);
    v108 = v237;
    v6 = *(v237 + 2);
    if (v6)
    {
      goto LABEL_34;
    }

LABEL_91:
    v110 = MEMORY[0x277D84F90];
LABEL_92:

    v210 = v242;
    *v242 = v235;
    v211 = v250;
    v212 = v245;
    sub_2300BB860(v245, v210 + *(v250 + 24));
    *(v210 + *(v211 + 28)) = v244;
    *(v210 + 8) = v110;
    v213 = v246;
    v214 = sub_23030E518();
    (*(v254 + 8))(v253, v251);
    sub_230061918(v212, &qword_27DB14800);
    (*(v247 + 8))(v213, v248);
    *(v210 + *(v211 + 32)) = v214;
    v215 = v252;
    sub_2301B752C(v210, v252, type metadata accessor for URLParseResult);
    v89 = v215;
    v87 = v211;
    v86 = 0;
    v88 = v249;
    return (*(v88 + 56))(v89, v86, 1, v87);
  }

  (*(v243 + 56))(v245, 1, 1, v244);
  v108 = sub_23030E898();
  v244 = 0;
  v6 = *(v108 + 2);
  if (!v6)
  {
    goto LABEL_91;
  }

LABEL_34:
  v109 = 0;
  a1 = (v108 + 40);
  v110 = MEMORY[0x277D84F90];
  while (1)
  {
    if (v109 >= *(v108 + 2))
    {
      __break(1u);
      goto LABEL_99;
    }

    v112 = *(a1 - 1);
    v111 = *a1;
    v113 = v112 == 47 && v111 == 0xE100000000000000;
    if (!v113 && (sub_230311048() & 1) == 0)
    {
      break;
    }

LABEL_36:
    v109 = (v109 + 1);
    a1 += 2;
    if (v6 == v109)
    {
      goto LABEL_92;
    }
  }

  sub_23030F958();

  v114 = sub_2301B9DBC();
  if (v114 != 19)
  {
    v115 = v114;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v110 = sub_23007FBE0(0, *(v110 + 2) + 1, 1, v110);
    }

    v117 = *(v110 + 2);
    v116 = *(v110 + 3);
    if (v117 >= v116 >> 1)
    {
      v110 = sub_23007FBE0((v116 > 1), v117 + 1, 1, v110);
    }

    *(v110 + 2) = v117 + 1;
    v110[v117 + 32] = v115;
    goto LABEL_36;
  }

  v140 = v240;
  if (qword_27DB13C00 != -1)
  {
    swift_once();
  }

  v141 = sub_23030EF48();
  __swift_project_value_buffer(v141, qword_27DB16628);
  v142 = v253;
  v143 = v254;
  v144 = v251;
  (*(v254 + 16))(v140, v253, v251);

  v145 = sub_23030EF38();
  v146 = sub_230310288();

  v147 = os_log_type_enabled(v145, v146);
  v148 = v252;
  if (v147)
  {
    v149 = swift_slowAlloc();
    v150 = swift_slowAlloc();
    v256[0] = v150;
    *v149 = 136315394;
    v151 = sub_23004E30C(v112, v111, v256);

    *(v149 + 4) = v151;
    *(v149 + 12) = 2080;
    v152 = sub_23030E888();
    v154 = v153;
    v155 = *(v143 + 8);
    v155(v140, v144);
    v156 = sub_23004E30C(v152, v154, v256);

    *(v149 + 14) = v156;
    _os_log_impl(&dword_230044000, v145, v146, "unexpected url path component -- failed to parse url {component: %s, url: %s}", v149, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x231914180](v150, -1, -1);
    MEMORY[0x231914180](v149, -1, -1);

    v155(v253, v144);
    sub_230061918(v245, &qword_27DB14800);
    (*(v247 + 8))(v246, v248);
    v89 = v252;
    v86 = 1;
    goto LABEL_64;
  }

  v185 = *(v143 + 8);
  v185(v142, v144);
  v185(v140, v144);
  sub_230061918(v245, &qword_27DB14800);
  (*(v247 + 8))(v246, v248);
  v86 = 1;
  v88 = v249;
  v87 = v250;
  v89 = v148;
  return (*(v88 + 56))(v89, v86, 1, v87);
}

uint64_t sub_2301AC170@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB16748);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v26 - v5;
  v7 = *(a1 + 8);
  v8 = *(v7 + 2);
  if (!v8)
  {
    goto LABEL_24;
  }

  v9 = v7[32];

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v27 = v7;
  if (!isUniquelyReferenced_nonNull_native || (v8 - 1) > *(v7 + 3) >> 1)
  {
    v7 = sub_23007FBE0(isUniquelyReferenced_nonNull_native, v8, 1, v7);
    v27 = v7;
  }

  sub_2300AE824(0, 1, 0);
  if (v9 > 3)
  {
    if (v9 > 14)
    {
      if (v9 == 15)
      {

        result = sub_2301B761C(a1, type metadata accessor for URLParseResult);
        *a2 = 3;
        *(a2 + 8) = 3;
        return result;
      }

      if (v9 == 18)
      {

        v19 = sub_2301AD63C();
        if (v19)
        {
          v20 = sub_2301B1B20(v19);

          result = sub_2301B761C(a1, type metadata accessor for URLParseResult);
          *a2 = v20;
          *(a2 + 8) = 2;
          return result;
        }

        if (qword_27DB13C00 != -1)
        {
          swift_once();
        }

        v25 = sub_23030EF48();
        __swift_project_value_buffer(v25, qword_27DB16628);
        v13 = sub_23030EF38();
        v14 = sub_230310288();
        if (!os_log_type_enabled(v13, v14))
        {
          goto LABEL_38;
        }

        v15 = swift_slowAlloc();
        *v15 = 0;
        v16 = "Missing query items for edits. Failed to create ListPathSpecifier";
LABEL_37:
        _os_log_impl(&dword_230044000, v13, v14, v16, v15, 2u);
        MEMORY[0x231914180](v15, -1, -1);
LABEL_38:

        result = sub_2301B761C(a1, type metadata accessor for URLParseResult);
        *a2 = 0;
        *(a2 + 8) = -1;
        return result;
      }

      goto LABEL_23;
    }

    if (v9 != 4)
    {
      if (v9 == 14)
      {

        sub_2301AD308(v6);
        v11 = type metadata accessor for ReminderIDQuery(0);
        if ((*(*(v11 - 8) + 48))(v6, 1, v11) != 1)
        {
          v22 = objc_opt_self();
          v23 = sub_23030EB88();
          v24 = [v22 objectIDWithUUID_];

          sub_2301B761C(v6, type metadata accessor for ReminderIDQuery);
          result = sub_2301B761C(a1, type metadata accessor for URLParseResult);
          *a2 = v24;
          *(a2 + 8) = 1;
          return result;
        }

        sub_230061918(v6, &qword_27DB16748);
        if (qword_27DB13C00 != -1)
        {
          swift_once();
        }

        v12 = sub_23030EF48();
        __swift_project_value_buffer(v12, qword_27DB16628);
        v13 = sub_23030EF38();
        v14 = sub_230310288();
        if (!os_log_type_enabled(v13, v14))
        {
          goto LABEL_38;
        }

        v15 = swift_slowAlloc();
        *v15 = 0;
        v16 = "Missing query items for select. Failed to create ListPathSpecifier";
        goto LABEL_37;
      }

      goto LABEL_23;
    }

    result = sub_2301B761C(a1, type metadata accessor for URLParseResult);
    v18 = 2;
    goto LABEL_26;
  }

  if (v9 == 1)
  {

    result = sub_2301B761C(a1, type metadata accessor for URLParseResult);
    v18 = 1;
    goto LABEL_26;
  }

  if (v9 != 2)
  {
    if (v9 != 3)
    {
LABEL_23:

LABEL_24:
      result = sub_2301B761C(a1, type metadata accessor for URLParseResult);
      *a2 = 0;
LABEL_27:
      *(a2 + 8) = 3;
      return result;
    }

    result = sub_2301B761C(a1, type metadata accessor for URLParseResult);
    v18 = 4;
LABEL_26:
    *a2 = v18;
    goto LABEL_27;
  }

  if (!*(v7 + 2))
  {

    result = sub_2301B761C(a1, type metadata accessor for URLParseResult);
    goto LABEL_40;
  }

  v21 = v7[32];

  result = sub_2301B761C(a1, type metadata accessor for URLParseResult);
  if (v21 != 5)
  {
LABEL_40:
    *a2 = 0;
    goto LABEL_41;
  }

  *a2 = 1;
LABEL_41:
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_2301AC6BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 8);
  v4 = *(v3 + 2);
  if (!v4)
  {
    goto LABEL_14;
  }

  v5 = a1;
  v6 = v3[32];

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = v3;
  if (!isUniquelyReferenced_nonNull_native || (v4 - 1) > *(v3 + 3) >> 1)
  {
    v3 = sub_23007FBE0(isUniquelyReferenced_nonNull_native, v4, 1, v3);
    v16 = v3;
  }

  sub_2300AE824(0, 1, 0);
  if (v6 == 2)
  {
    sub_2301B1CD8(v3, &v15);
    result = sub_2301B761C(v5, type metadata accessor for URLParseResult);
    v14 = v15;
    v13 = 1;
    goto LABEL_15;
  }

  if (v6 != 12)
  {

    a1 = v5;
LABEL_14:
    result = sub_2301B761C(a1, type metadata accessor for URLParseResult);
    v13 = 0;
    v14 = 2;
    goto LABEL_15;
  }

  v8 = v5;
  v9 = sub_2301AD840();
  if (v9 == 2)
  {
    v10 = 0;
  }

  else
  {
    v10 = v9 & 0x100;
  }

  v11 = (v9 != 2) & v9;
  result = sub_2301B761C(v8, type metadata accessor for URLParseResult);
  v13 = 0;
  v14 = v10 | v11;
LABEL_15:
  *a2 = v14;
  *(a2 + 2) = v13;
  return result;
}

uint64_t sub_2301AC834@<X0>(uint64_t a1@<X0>, BOOL *a2@<X8>)
{
  v3 = *(a1 + 8);
  v4 = *(v3 + 16);
  if (v4)
  {
    v6 = *(v3 + 32);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (!isUniquelyReferenced_nonNull_native || (v4 - 1) > *(v3 + 24) >> 1)
    {
      sub_23007FBE0(isUniquelyReferenced_nonNull_native, v4, 1, v3);
    }

    sub_2300AE824(0, 1, 0);

    result = sub_2301B761C(a1, type metadata accessor for URLParseResult);
    v9 = v6 == 1;
  }

  else
  {
    result = sub_2301B761C(a1, type metadata accessor for URLParseResult);
    v9 = 0;
  }

  *a2 = v9;
  return result;
}

uint64_t sub_2301AC920@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB16748);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v23 - v5;
  v7 = *(a1 + 8);
  v8 = *(v7 + 16);
  if (!v8)
  {
    result = sub_2301B761C(a1, type metadata accessor for URLParseResult);
    v12 = 2;
    goto LABEL_28;
  }

  v9 = *(v7 + 32);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v24 = v7;
  if (!isUniquelyReferenced_nonNull_native || (v8 - 1) > *(v7 + 24) >> 1)
  {
    v24 = sub_23007FBE0(isUniquelyReferenced_nonNull_native, v8, 1, v7);
  }

  sub_2300AE824(0, 1, 0);

  if (v9 > 13)
  {
    if (v9 == 14)
    {
      sub_2301AD308(v6);
      v14 = type metadata accessor for ReminderIDQuery(0);
      if ((*(*(v14 - 8) + 48))(v6, 1, v14) != 1)
      {
        v20 = objc_opt_self();
        v21 = sub_23030EB88();
        v8 = [v20 objectIDWithUUID_];

        sub_2301B761C(v6, type metadata accessor for ReminderIDQuery);
        result = sub_2301B761C(a1, type metadata accessor for URLParseResult);
        v12 = 0;
        goto LABEL_28;
      }

      sub_230061918(v6, &qword_27DB16748);
      if (qword_27DB13C00 != -1)
      {
        swift_once();
      }

      v15 = sub_23030EF48();
      __swift_project_value_buffer(v15, qword_27DB16628);
      v16 = sub_23030EF38();
      v17 = sub_230310288();
      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        *v18 = 0;
        v19 = "Missing query items for select. Failed to create SmartListPathSpecifier";
LABEL_26:
        _os_log_impl(&dword_230044000, v16, v17, v19, v18, 2u);
        MEMORY[0x231914180](v18, -1, -1);
      }
    }

    else
    {
      if (v9 != 18)
      {
LABEL_14:
        result = sub_2301B761C(a1, type metadata accessor for URLParseResult);
        v8 = 0;
        v12 = 2;
        goto LABEL_28;
      }

      v13 = sub_2301AD63C();
      if (v13)
      {
        v8 = sub_2301B1B20(v13);

        result = sub_2301B761C(a1, type metadata accessor for URLParseResult);
        v12 = 1;
        goto LABEL_28;
      }

      if (qword_27DB13C00 != -1)
      {
        swift_once();
      }

      v22 = sub_23030EF48();
      __swift_project_value_buffer(v22, qword_27DB16628);
      v16 = sub_23030EF38();
      v17 = sub_230310288();
      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        *v18 = 0;
        v19 = "Missing query items for edits. Failed to create SmartListPathSpecifier";
        goto LABEL_26;
      }
    }

    result = sub_2301B761C(a1, type metadata accessor for URLParseResult);
    v8 = 0;
    v12 = -1;
    goto LABEL_28;
  }

  if (v9 == 1)
  {
    result = sub_2301B761C(a1, type metadata accessor for URLParseResult);
    v12 = 2;
    v8 = 1;
    goto LABEL_28;
  }

  if (v9 != 4)
  {
    goto LABEL_14;
  }

  result = sub_2301B761C(a1, type metadata accessor for URLParseResult);
  v8 = 2;
  v12 = 2;
LABEL_28:
  *a2 = v8;
  *(a2 + 8) = v12;
  return result;
}

double sub_2301ACD70@<D0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(a1 + 8);
  v5 = *(v4 + 16);
  if (!v5)
  {
    goto LABEL_8;
  }

  v6 = *(v4 + 32);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || (v5 - 1) > *(v4 + 24) >> 1)
  {
    sub_23007FBE0(isUniquelyReferenced_nonNull_native, v5, 1, v4);
  }

  sub_2300AE824(0, 1, 0);

  if (v6 == 1)
  {
    v8 = sub_2301ADAD4();
    if (v9)
    {
      v10 = v8;
      v11 = v9;
      sub_2301B761C(a1, type metadata accessor for URLParseResult);
      *a2 = v10;
      a2[1] = v11;
    }

    else
    {
      if (qword_27DB13C00 != -1)
      {
        swift_once();
      }

      v13 = sub_23030EF48();
      __swift_project_value_buffer(v13, qword_27DB16628);
      v14 = sub_23030EF38();
      v15 = sub_230310288();
      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        *v16 = 0;
        _os_log_impl(&dword_230044000, v14, v15, "Missing query items. Failed to create SearchPathSpecifier", v16, 2u);
        MEMORY[0x231914180](v16, -1, -1);
      }

      sub_2301B761C(a1, type metadata accessor for URLParseResult);
      result = 0.0;
      *a2 = xmmword_23031C020;
    }
  }

  else
  {
LABEL_8:
    sub_2301B761C(a1, type metadata accessor for URLParseResult);
    *a2 = 0;
    a2[1] = 0;
  }

  return result;
}

uint64_t sub_2301ACF54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 8);

  v5 = sub_2301ADCE4();
  v7 = v6;
  v8 = *(v4 + 16);
  if (v8)
  {
    v9 = *(v4 + 32);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (!isUniquelyReferenced_nonNull_native || (v8 - 1) > *(v4 + 24) >> 1)
    {
      sub_23007FBE0(isUniquelyReferenced_nonNull_native, v8, 1, v4);
    }

    sub_2300AE824(0, 1, 0);

    result = sub_2301B761C(a1, type metadata accessor for URLParseResult);
    v12 = v9 == 17;
    if (v9 == 16)
    {
      v12 = 2;
    }
  }

  else
  {

    result = sub_2301B761C(a1, type metadata accessor for URLParseResult);
    v12 = 0;
  }

  if (v7 == 1)
  {
    v13 = 0;
  }

  else
  {
    v13 = v7;
  }

  if (v7 == 1)
  {
    v14 = 0;
  }

  else
  {
    v14 = v5;
  }

  *a2 = v14;
  *(a2 + 8) = v13;
  *(a2 + 16) = v12;
  return result;
}

uint64_t sub_2301AD084@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 8);
  v5 = *(v4 + 16);
  if (!v5)
  {
    goto LABEL_12;
  }

  v6 = *(v4 + 32);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || (v5 - 1) > *(v4 + 24) >> 1)
  {
    sub_23007FBE0(isUniquelyReferenced_nonNull_native, v5, 1, v4);
  }

  sub_2300AE824(0, 1, 0);

  if (v6 != 1)
  {
LABEL_12:
    result = sub_2301B761C(a1, type metadata accessor for URLParseResult);
    v15 = xmmword_2303167F0;
LABEL_13:
    *a2 = v15;
LABEL_14:
    *(a2 + 16) = 0;
    return result;
  }

  v8 = sub_2301ADF10();
  if (v9 == 1)
  {
LABEL_7:
    if (qword_27DB13C00 != -1)
    {
      swift_once();
    }

    v10 = sub_23030EF48();
    __swift_project_value_buffer(v10, qword_27DB16628);
    v11 = sub_23030EF38();
    v12 = sub_230310288();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_230044000, v11, v12, "Missing query items. Failed to create TagsPathSpecifier", v13, 2u);
      MEMORY[0x231914180](v13, -1, -1);
    }

    result = sub_2301B761C(a1, type metadata accessor for URLParseResult);
    v15 = xmmword_230320C20;
    goto LABEL_13;
  }

  if (v8 != 2 && (v8 & 1) != 0)
  {
    sub_2301BCB00(v8, v9);
    result = sub_2301B761C(a1, type metadata accessor for URLParseResult);
    *a2 = 0;
    *(a2 + 8) = 0;
    goto LABEL_14;
  }

  if ((v8 & 0x100) != 0)
  {
    sub_2301BCB00(v8, v9);
    result = sub_2301B761C(a1, type metadata accessor for URLParseResult);
    v15 = xmmword_230316800;
    goto LABEL_13;
  }

  if (!v9)
  {
    goto LABEL_7;
  }

  v16 = v8;
  v17 = v9;
  v18 = sub_2300B38E4(v9);
  sub_2301BCB00(v16, v17);
  result = sub_2301B761C(a1, type metadata accessor for URLParseResult);
  v19 = MEMORY[0x277D84FA0];
  *a2 = v18;
  *(a2 + 8) = v19;
  *(a2 + 16) = 1;
  return result;
}

uint64_t sub_2301AD308@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for URLParseResult(0) + 32);
  v4 = MEMORY[0x277D84F90];
  if (*(v1 + v3))
  {
    v5 = *(v1 + v3);
  }

  else
  {
    v5 = MEMORY[0x277D84F90];
  }

  type metadata accessor for QueryItems();
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  v7 = type metadata accessor for InternalDecoder();
  v8 = swift_allocObject();
  v9 = MEMORY[0x277D84F98];
  v8[2] = v4;
  v8[3] = v9;
  v8[4] = v6;
  v13[3] = v7;
  v13[4] = sub_2301BC6D4(&qword_27DB15658, type metadata accessor for InternalDecoder);
  v13[0] = v8;

  sub_2301B2C5C(v13, a1);

  v10 = type metadata accessor for ReminderIDQuery(0);
  v11 = *(*(v10 - 8) + 56);

  return v11(a1, 0, 1, v10);
}

void *sub_2301AD63C()
{
  v1 = *(v0 + *(type metadata accessor for URLParseResult(0) + 32));
  if (v1)
  {
    v2 = v1;
  }

  else
  {
    v2 = MEMORY[0x277D84F90];
  }

  v3 = sub_2301B9534(v2);

  return v3;
}

uint64_t sub_2301AD840()
{
  v1 = *(type metadata accessor for URLParseResult(0) + 32);
  v2 = MEMORY[0x277D84F90];
  if (*(v0 + v1))
  {
    v3 = *(v0 + v1);
  }

  else
  {
    v3 = MEMORY[0x277D84F90];
  }

  type metadata accessor for QueryItems();
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  v5 = type metadata accessor for InternalDecoder();
  v6 = swift_allocObject();
  v7 = MEMORY[0x277D84F98];
  v6[2] = v2;
  v6[3] = v7;
  v6[4] = v4;
  v9[3] = v5;
  v9[4] = sub_2301BC6D4(&qword_27DB15658, type metadata accessor for InternalDecoder);
  v9[0] = v6;

  return sub_2301B9BC0(v9) & 0xFFFFFF01;
}

uint64_t sub_2301ADAD4()
{
  v1 = *(v0 + *(type metadata accessor for URLParseResult(0) + 32));
  if (v1)
  {
    v2 = v1;
  }

  else
  {
    v2 = MEMORY[0x277D84F90];
  }

  v3 = sub_2301B9658(v2);

  return v3;
}

uint64_t sub_2301ADCE4()
{
  v1 = *(v0 + *(type metadata accessor for URLParseResult(0) + 32));
  if (v1)
  {
    v2 = v1;
  }

  else
  {
    v2 = MEMORY[0x277D84F90];
  }

  v3 = sub_2301B9AAC(v2, sub_2301BCAAC);

  return v3;
}

uint64_t sub_2301ADF10()
{
  v1 = *(v0 + *(type metadata accessor for URLParseResult(0) + 32));
  if (v1)
  {
    v2 = v1;
  }

  else
  {
    v2 = MEMORY[0x277D84F90];
  }

  v3 = sub_2301B9980(v2);

  return v3;
}

uint64_t sub_2301AE120()
{
  v1 = *(v0 + *(type metadata accessor for URLParseResult(0) + 32));
  if (v1)
  {
    v2 = v1;
  }

  else
  {
    v2 = MEMORY[0x277D84F90];
  }

  v3 = sub_2301B9AAC(v2, sub_2301BCB14);

  return v3;
}

uint64_t REMNavigationSpecifier.init(_:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for REMNavigationSpecifier(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0();
  v10 = v9;
  if (v8 == _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0() && v10 == v11)
  {

    goto LABEL_8;
  }

  v13 = sub_230311048();

  if (v13)
  {

LABEL_8:
    *v7 = 1;
LABEL_9:
    v7[8] = 2;
    swift_storeEnumTagMultiPayload();
    sub_2301B752C(v7, a2, type metadata accessor for REMNavigationSpecifier);
    v14 = 0;
    return (*(v5 + 56))(a2, v14, 1, v4);
  }

  v16 = _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0();
  v18 = v17;
  if (v16 == _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0() && v18 == v19)
  {

    goto LABEL_18;
  }

  v21 = sub_230311048();

  if (v21)
  {

LABEL_18:
    *v7 = 1;
    goto LABEL_9;
  }

  v22 = _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0();
  v24 = v23;
  if (v22 == _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0() && v24 == v25)
  {

LABEL_24:
    *v7 = 1;
    goto LABEL_9;
  }

  v26 = sub_230311048();

  if (v26)
  {

    goto LABEL_24;
  }

  v27 = _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0();
  v29 = v28;
  if (v27 == _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0() && v29 == v30)
  {

LABEL_30:
    *v7 = 1;
    goto LABEL_9;
  }

  v31 = sub_230311048();

  if (v31)
  {

    goto LABEL_30;
  }

  v32 = _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0();
  v34 = v33;
  if (v32 == _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0() && v34 == v35)
  {

LABEL_36:
    *v7 = 1;
    goto LABEL_9;
  }

  v36 = sub_230311048();

  if (v36)
  {

    goto LABEL_36;
  }

  v37 = _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0();
  v39 = v38;
  if (v37 == _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0() && v39 == v40)
  {

LABEL_42:
    *v7 = 1;
    goto LABEL_9;
  }

  v41 = sub_230311048();

  if (v41)
  {

    goto LABEL_42;
  }

  if (qword_27DB13C00 != -1)
  {
    swift_once();
  }

  v42 = sub_23030EF48();
  __swift_project_value_buffer(v42, qword_27DB16628);
  v43 = a1;
  v44 = sub_23030EF38();
  v45 = sub_230310298();

  if (os_log_type_enabled(v44, v45))
  {
    v46 = v43;
    v47 = swift_slowAlloc();
    v48 = swift_slowAlloc();
    v53 = v46;
    v54 = v48;
    *v47 = 136315138;
    type metadata accessor for REMSmartListType(0);
    v49 = v46;
    v50 = sub_23030F948();
    v52 = sub_23004E30C(v50, v51, &v54);

    *(v47 + 4) = v52;
    _os_log_impl(&dword_230044000, v44, v45, "Attempt to create URL for smart list type %s", v47, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v48);
    MEMORY[0x231914180](v48, -1, -1);
    MEMORY[0x231914180](v47, -1, -1);
  }

  else
  {
  }

  v14 = 1;
  return (*(v5 + 56))(a2, v14, 1, v4);
}

void REMNavigationSpecifier.url.getter(uint64_t a1@<X8>)
{
  v242 = a1;
  v1 = sub_23030EBB8();
  v233 = *(v1 - 8);
  v234 = v1;
  MEMORY[0x28223BE20](v1);
  v235 = &v192 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v232 = type metadata accessor for REMiCloudSharedItemSpecifier.PublicTemplate(0);
  MEMORY[0x28223BE20](v232);
  v236 = &v192 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for ReminderIDQuery(0);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v239 = &v192 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v227 = &v192 - v8;
  MEMORY[0x28223BE20](v7);
  v226 = &v192 - v9;
  v10 = sub_23030E9B8();
  v11 = *(v10 - 8);
  v237 = v10;
  v238 = v11;
  v12 = MEMORY[0x28223BE20](v10);
  v229 = &v192 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v230 = &v192 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v221 = &v192 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v228 = &v192 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v231 = &v192 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v209 = &v192 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v210 = &v192 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v207 = &v192 - v27;
  v28 = MEMORY[0x28223BE20](v26);
  v208 = &v192 - v29;
  v30 = MEMORY[0x28223BE20](v28);
  v205 = &v192 - v31;
  v32 = MEMORY[0x28223BE20](v30);
  v206 = &v192 - v33;
  v34 = MEMORY[0x28223BE20](v32);
  v203 = &v192 - v35;
  v36 = MEMORY[0x28223BE20](v34);
  v204 = &v192 - v37;
  v38 = MEMORY[0x28223BE20](v36);
  v201 = &v192 - v39;
  v40 = MEMORY[0x28223BE20](v38);
  v202 = &v192 - v41;
  v42 = MEMORY[0x28223BE20](v40);
  v199 = &v192 - v43;
  v44 = MEMORY[0x28223BE20](v42);
  v200 = &v192 - v45;
  v46 = MEMORY[0x28223BE20](v44);
  v197 = &v192 - v47;
  v48 = MEMORY[0x28223BE20](v46);
  v198 = &v192 - v49;
  v50 = MEMORY[0x28223BE20](v48);
  v195 = &v192 - v51;
  v52 = MEMORY[0x28223BE20](v50);
  v196 = &v192 - v53;
  v54 = MEMORY[0x28223BE20](v52);
  v193 = &v192 - v55;
  v56 = MEMORY[0x28223BE20](v54);
  v194 = &v192 - v57;
  v58 = MEMORY[0x28223BE20](v56);
  v219 = &v192 - v59;
  v60 = MEMORY[0x28223BE20](v58);
  v220 = &v192 - v61;
  v62 = MEMORY[0x28223BE20](v60);
  v223 = &v192 - v63;
  v64 = MEMORY[0x28223BE20](v62);
  v225 = &v192 - v65;
  v66 = MEMORY[0x28223BE20](v64);
  v213 = &v192 - v67;
  v68 = MEMORY[0x28223BE20](v66);
  v214 = &v192 - v69;
  v70 = MEMORY[0x28223BE20](v68);
  v222 = &v192 - v71;
  v72 = MEMORY[0x28223BE20](v70);
  v224 = &v192 - v73;
  v74 = MEMORY[0x28223BE20](v72);
  v211 = &v192 - v75;
  v76 = MEMORY[0x28223BE20](v74);
  v212 = &v192 - v77;
  v78 = MEMORY[0x28223BE20](v76);
  v217 = &v192 - v79;
  v80 = MEMORY[0x28223BE20](v78);
  v218 = &v192 - v81;
  v82 = MEMORY[0x28223BE20](v80);
  v215 = &v192 - v83;
  v84 = MEMORY[0x28223BE20](v82);
  v216 = &v192 - v85;
  v86 = MEMORY[0x28223BE20](v84);
  v88 = &v192 - v87;
  v89 = MEMORY[0x28223BE20](v86);
  v91 = &v192 - v90;
  v92 = MEMORY[0x28223BE20](v89);
  v94 = &v192 - v93;
  v95 = MEMORY[0x28223BE20](v92);
  v97 = &v192 - v96;
  v98 = MEMORY[0x28223BE20](v95);
  v100 = &v192 - v99;
  v101 = MEMORY[0x28223BE20](v98);
  v103 = &v192 - v102;
  v104 = MEMORY[0x28223BE20](v101);
  v106 = &v192 - v105;
  MEMORY[0x28223BE20](v104);
  v108 = &v192 - v107;
  v109 = type metadata accessor for REMNavigationSpecifier(0);
  v110 = MEMORY[0x28223BE20](v109);
  v240[0] = &v192 - ((v111 + 15) & 0xFFFFFFFFFFFFFFF0);
  v112 = MEMORY[0x28223BE20](v110);
  v241 = &v192 - v113;
  MEMORY[0x28223BE20](v112);
  v115 = &v192 - v114;
  sub_2301B75B4(v243, &v192 - v114, type metadata accessor for REMNavigationSpecifier);
  v240[1] = v109;
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
    case 2u:
      v132 = *v115;
      v131 = *(v115 + 1);
      if (v115[16] <= 1u)
      {
        if (!v115[16])
        {
          v133 = [*v115 urlRepresentation];
          v134 = v242;
          v135 = v217;
          sub_23030E938();

          v136 = v218;
          sub_2301B4DD8(v135, &unk_2844EBE90, v218);
          goto LABEL_65;
        }

        v165 = *(v115 + 1);
        v166 = [v165 uuid];
        v167 = v226;
        sub_23030EBA8();

        v168 = [v132 urlRepresentation];
        v169 = v222;
        sub_23030E938();

        v170 = v227;
        sub_2301B75B4(v167, v227, type metadata accessor for ReminderIDQuery);
        v103 = v224;
        sub_2301B669C(v169, &unk_2844EBEE0, v170, v224);
        v171 = v242;

        sub_2301BA1A8(v165, 1);
        sub_2301B761C(v167, type metadata accessor for ReminderIDQuery);
        v185 = *(v238 + 32);
        v186 = v171;
        goto LABEL_51;
      }

      if (v115[16] == 2)
      {
        sub_2301BA188(*(v115 + 1), 2);
        v137 = v131;
        v138 = sub_2301B9E10(v131);
        v139 = [v132 urlRepresentation];
        v140 = v223;
        sub_23030E938();

        v136 = v225;
        sub_2301B60B4(v140, &unk_2844EBF08, v138, v225);
        sub_2301BA1A8(v137, 2);

        v185 = *(v238 + 32);
        v186 = v242;
        goto LABEL_66;
      }

      if (v131 <= 1)
      {
        if (!v131)
        {
          v184 = [*v115 urlRepresentation];
          sub_23030E938();

          sub_2301B4DD8(v100, MEMORY[0x277D84F90], v103);
          v185 = *(v238 + 32);
          v186 = v242;
LABEL_51:
          v187 = v103;
          goto LABEL_67;
        }

        v191 = [*v115 urlRepresentation];
        sub_23030E938();

        sub_2301B4DD8(v94, &unk_2844EBE18, v97);
        (*(v238 + 32))(v242, v97, v237);
      }

      else if (v131 == 2)
      {
        v188 = [*v115 urlRepresentation];
        sub_23030E938();

        sub_2301B4DD8(v88, &unk_2844EBE40, v91);
        v189 = v242;

        (*(v238 + 32))(v189, v91, v237);
      }

      else
      {
        v134 = v242;
        if (v131 == 3)
        {
          v172 = [*v115 urlRepresentation];
          v148 = v213;
          sub_23030E938();

          v149 = MEMORY[0x277D84F90];
          v150 = &v245;
        }

        else
        {
          v190 = [*v115 urlRepresentation];
          v148 = v211;
          sub_23030E938();

          v149 = &unk_2844EBEB8;
          v150 = &v243;
        }

LABEL_64:
        v136 = *(v150 - 32);
        sub_2301B4DD8(v148, v149, v136);
LABEL_65:

        v185 = *(v238 + 32);
        v186 = v134;
LABEL_66:
        v187 = v136;
LABEL_67:
        v185(v186, v187, v237);
      }

      return;
    case 3u:
      v152 = *v115;
      v151 = *(v115 + 1);
      v153 = v115[16];

      v154 = sub_2301B0338();
      if (v153)
      {
        if (v153 == 1)
        {
          sub_2301B177C(v154, &unk_2844EC200, v152, v151, v242);
          sub_230052D78(v152, v151, 1u);
        }

        else
        {
          sub_2301B177C(v154, &unk_2844EC1D8, v152, v151, v242);
          sub_230052D78(v152, v151, 2u);
        }
      }

      else
      {
        sub_2301B177C(v154, MEMORY[0x277D84F90], v152, v151, v242);
        sub_230052D78(v152, v151, 0);
      }

      return;
    case 4u:
      v132 = *v115;
      v146 = *(v115 + 4);
      if (v115[10] == 1)
      {
        v147 = [*v115 urlRepresentation];
        if (v146 <= 3u)
        {
          if (v146 > 1u)
          {
            v134 = v242;
            if (v146 == 2)
            {
              v148 = v199;
              sub_23030E938();

              v149 = &unk_2844EBFD0;
              v150 = &v232;
            }

            else
            {
              v148 = v193;
              sub_23030E938();

              v149 = &unk_2844EBF58;
              v150 = &v226;
            }
          }

          else
          {
            v134 = v242;
            if (v146)
            {
              v148 = v197;
              sub_23030E938();

              v149 = &unk_2844EBFA8;
              v150 = &v230;
            }

            else
            {
              v148 = v195;
              sub_23030E938();

              v149 = &unk_2844EBF80;
              v150 = &v228;
            }
          }
        }

        else if (v146 <= 5u)
        {
          v134 = v242;
          if (v146 == 4)
          {
            v148 = v201;
            sub_23030E938();

            v149 = &unk_2844EBFF8;
            v150 = &v234;
          }

          else
          {
            v148 = v203;
            sub_23030E938();

            v149 = &unk_2844EC020;
            v150 = &v236;
          }
        }

        else
        {
          v134 = v242;
          if (v146 == 6)
          {
            v148 = v205;
            sub_23030E938();

            v149 = &unk_2844EC048;
            v150 = &v238;
          }

          else if (v146 == 7)
          {
            v148 = v207;
            sub_23030E938();

            v149 = &unk_2844EC070;
            v150 = v240;
          }

          else
          {
            v148 = v209;
            sub_23030E938();

            v149 = &unk_2844EC098;
            v150 = &v241;
          }
        }

        goto LABEL_64;
      }

      v179 = [v132 urlRepresentation];
      if (v146 == 2)
      {
        sub_23030E938();

        return;
      }

      v183 = v219;
      sub_23030E938();

      v136 = v220;
      sub_2301B6BA8(v183, &unk_2844EBF30, v146 & 0x1010101, v220);
      v134 = v242;
      goto LABEL_65;
    case 5u:
    case 6u:
      v125 = v115[8];
      v126 = *v115;
      v127 = [v126 urlRepresentation];
      if (v125)
      {
        v128 = v229;
        sub_23030E938();

        v129 = v230;
        sub_2301B4DD8(v128, &unk_2844EC1B0, v230);
        v130 = v242;

        (*(v238 + 32))(v130, v129, v237);
      }

      else
      {

        sub_23030E938();
      }

      return;
    case 7u:
    case 0x12u:
    case 0x13u:
      goto LABEL_20;
    case 8u:
    case 9u:
    case 0xAu:
    case 0xBu:
    case 0xDu:
    case 0xEu:
    case 0x10u:
      v116 = *v115;
      if (v115[8])
      {
        v117 = v242;
        if (v115[8] == 1)
        {

          v118 = sub_2301B0338();
          v119 = sub_2301B9E10(v116);
          sub_2301B0D94(v118, &unk_2844EC138, v119, v117);
          sub_230050F40(v116, 1);
        }

        else
        {
          if (v116)
          {
            v123 = sub_2301B0338();
            if (v116 == 1)
            {
              v124 = &unk_2844EC0C0;
            }

            else
            {
              v124 = &unk_2844EC0E8;
            }
          }

          else
          {
            v123 = sub_2301B0338();
            v124 = MEMORY[0x277D84F90];
          }

          sub_2301B0674(v123, v124, v117);
        }
      }

      else
      {
        v120 = sub_2301B0338();
        v121 = [v116 uuid];
        v122 = v239;
        sub_23030EBA8();

        sub_2301B09B0(v120, &unk_2844EC110, v122, v242);
        sub_230050F40(v116, 0);
      }

      return;
    case 0xCu:
      v141 = *(v115 + 1);
      if (!v141)
      {
        goto LABEL_20;
      }

      v142 = *v115;

      v143 = sub_2301B0338();
      sub_2301B10DC(v143, &unk_2844EC160, v142, v141, v242);

      return;
    case 0xFu:
      v144 = *v115;
      if (*v115 == 2)
      {
LABEL_20:
        v145 = sub_2301B0338();
        sub_2301B0674(v145, MEMORY[0x277D84F90], v242);
      }

      else
      {
        v173 = *(v115 + 1);
        v174 = v115[16];
        v244 = *v115;
        v245 = v173;
        v246 = v174;
        sub_230145624(v144);
        v175 = sub_2301BA010(&v244);
        v177 = v176;
        v178 = sub_2301B0338();
        sub_2301B1428(v178, &unk_2844EC188, v175, v177, v242);
        sub_2301BA178(v144);
      }

      return;
    case 0x11u:
      v155 = v236;
      sub_2301B752C(v115, v236, type metadata accessor for REMiCloudSharedItemSpecifier.PublicTemplate);
      v156 = sub_2301B0338();
      v158 = v233;
      v157 = v234;
      (*(v233 + 16))(v235, v155, v234);
      v159 = (v155 + *(v232 + 20));
      v161 = *v159;
      v160 = v159[1];

      v162 = v231;
      sub_2301B0674(v156, MEMORY[0x277D84F90], v231);
      sub_23030EB78();
      sub_23030E8E8();

      v181 = v237;
      v180 = v238;
      v182 = v221;
      (*(v238 + 16))(v221, v162, v237);
      sub_2301B52A4(v182, MEMORY[0x277D84F90], v161, v160, sub_2301BC8C0, &type metadata for PublicTemplateQuery, v228);
      (*(v180 + 8))(v162, v181);
      (*(v158 + 8))(v235, v157);
      sub_2301B761C(v236, type metadata accessor for REMiCloudSharedItemSpecifier.PublicTemplate);
      (*(v180 + 32))(v242, v228, v181);
      return;
    default:
      v163 = *v115;
      v164 = [v163 urlRepresentation];
      sub_23030E938();

      sub_2301B4DD8(v106, MEMORY[0x277D84F90], v108);
      (*(v238 + 32))(v242, v108, v237);
      return;
  }
}

uint64_t sub_2301B0338()
{
  v1 = type metadata accessor for REMNavigationSpecifier(0);
  MEMORY[0x28223BE20](v1);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2301B75B4(v0, v3, type metadata accessor for REMNavigationSpecifier);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  result = 6;
  switch(EnumCaseMultiPayload)
  {
    case 1:
      sub_2301B761C(v3, type metadata accessor for REMNavigationSpecifier);
      result = 1;
      break;
    case 2:
      sub_2301B761C(v3, type metadata accessor for REMNavigationSpecifier);
      result = 2;
      break;
    case 3:
      sub_2301B761C(v3, type metadata accessor for REMNavigationSpecifier);
      result = 16;
      break;
    case 4:
      sub_2301B761C(v3, type metadata accessor for REMNavigationSpecifier);
      result = 3;
      break;
    case 5:
      sub_2301B761C(v3, type metadata accessor for REMNavigationSpecifier);
      result = 4;
      break;
    case 6:
      sub_2301B761C(v3, type metadata accessor for REMNavigationSpecifier);
      result = 5;
      break;
    case 7:
      return result;
    case 8:
      sub_2301B761C(v3, type metadata accessor for REMNavigationSpecifier);
      result = 7;
      break;
    case 9:
      sub_2301B761C(v3, type metadata accessor for REMNavigationSpecifier);
      result = 8;
      break;
    case 10:
      sub_2301B761C(v3, type metadata accessor for REMNavigationSpecifier);
      result = 9;
      break;
    case 11:
      sub_2301B761C(v3, type metadata accessor for REMNavigationSpecifier);
      result = 10;
      break;
    case 12:
      sub_2301B761C(v3, type metadata accessor for REMNavigationSpecifier);
      result = 11;
      break;
    case 13:
      sub_2301B761C(v3, type metadata accessor for REMNavigationSpecifier);
      result = 12;
      break;
    case 14:
      sub_2301B761C(v3, type metadata accessor for REMNavigationSpecifier);
      result = 13;
      break;
    case 15:
      sub_2301B761C(v3, type metadata accessor for REMNavigationSpecifier);
      result = 14;
      break;
    case 16:
      sub_2301B761C(v3, type metadata accessor for REMNavigationSpecifier);
      result = 15;
      break;
    case 17:
      sub_2301B761C(v3, type metadata accessor for REMNavigationSpecifier);
      result = 19;
      break;
    case 18:
      result = 17;
      break;
    case 19:
      result = 18;
      break;
    default:
      sub_2301B761C(v3, type metadata accessor for REMNavigationSpecifier);
      result = 0;
      break;
  }

  return result;
}

uint64_t sub_2301B0674@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v21 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB17070);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v21 - v6;
  v8 = sub_23030E9B8();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v21 - v13;
  v22 = _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0();
  v23 = v15;
  MEMORY[0x231911790](3092282, 0xE300000000000000);
  v24 = a1;
  v16 = sub_2301B1FAC(a1);
  MEMORY[0x231911790](v16);

  sub_23030E988();

  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {

    sub_230061918(v7, &unk_27DB17070);
    v17 = objc_opt_self();
    v22 = 0;
    v23 = 0xE000000000000000;
    sub_230310848();
    MEMORY[0x231911790](0xD000000000000024, 0x80000002303430C0);
    v18 = _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0();
    MEMORY[0x231911790](v18);

    MEMORY[0x231911790](0x736F6820646E6120, 0xEA00000000002074);
    v25 = v24;
    sub_230310A28();
    v19 = sub_23030F8B8();

    [v17 internalErrorWithDebugDescription_];

    return swift_willThrow();
  }

  else
  {
    (*(v9 + 32))(v14, v7, v8);
    (*(v9 + 16))(v12, v14, v8);
    sub_2301B4DD8(v12, a2, v21);
    return (*(v9 + 8))(v14, v8);
  }
}

uint64_t sub_2301B09B0@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v26 = a2;
  v27 = a3;
  v25 = a4;
  v5 = type metadata accessor for ReminderIDQuery(0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB17070);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v25 - v9;
  v11 = sub_23030E9B8();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v25 - v16;
  v28 = _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0();
  v29 = v18;
  MEMORY[0x231911790](3092282, 0xE300000000000000);
  v30 = a1;
  v19 = sub_2301B1FAC(a1);
  MEMORY[0x231911790](v19);

  sub_23030E988();

  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {

    sub_230061918(v10, &unk_27DB17070);
    v20 = objc_opt_self();
    v28 = 0;
    v29 = 0xE000000000000000;
    sub_230310848();
    MEMORY[0x231911790](0xD000000000000024, 0x80000002303430C0);
    v21 = _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0();
    MEMORY[0x231911790](v21);

    MEMORY[0x231911790](0x736F6820646E6120, 0xEA00000000002074);
    v31 = v30;
    sub_230310A28();
    v22 = sub_23030F8B8();

    [v20 internalErrorWithDebugDescription_];

    swift_willThrow();
    return sub_2301B761C(v27, type metadata accessor for ReminderIDQuery);
  }

  else
  {
    (*(v12 + 32))(v17, v10, v11);
    (*(v12 + 16))(v15, v17, v11);
    v24 = v27;
    sub_2301B75B4(v27, v7, type metadata accessor for ReminderIDQuery);
    sub_2301B669C(v15, v26, v7, v25);
    sub_2301B761C(v24, type metadata accessor for ReminderIDQuery);
    return (*(v12 + 8))(v17, v11);
  }
}

uint64_t sub_2301B0D94@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v24 = a3;
  v23 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB17070);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v22 - v7;
  v9 = sub_23030E9B8();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v22 - v14;
  v25 = _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0();
  v26 = v16;
  MEMORY[0x231911790](3092282, 0xE300000000000000);
  v27 = a1;
  v17 = sub_2301B1FAC(a1);
  MEMORY[0x231911790](v17);

  sub_23030E988();

  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {

    sub_230061918(v8, &unk_27DB17070);
    v18 = objc_opt_self();
    v25 = 0;
    v26 = 0xE000000000000000;
    sub_230310848();
    MEMORY[0x231911790](0xD000000000000024, 0x80000002303430C0);
    v19 = _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0();
    MEMORY[0x231911790](v19);

    MEMORY[0x231911790](0x736F6820646E6120, 0xEA00000000002074);
    v28 = v27;
    sub_230310A28();
    v20 = sub_23030F8B8();

    [v18 internalErrorWithDebugDescription_];

    return swift_willThrow();
  }

  else
  {
    (*(v10 + 32))(v15, v8, v9);
    (*(v10 + 16))(v13, v15, v9);
    sub_2301B60B4(v13, a2, v24, v23);
    return (*(v10 + 8))(v15, v9);
  }
}

uint64_t sub_2301B10DC@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v25 = a4;
  v23 = a5;
  v24 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB17070);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v23 - v8;
  v10 = sub_23030E9B8();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v23 - v15;
  v26 = _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0();
  v27 = v17;
  MEMORY[0x231911790](3092282, 0xE300000000000000);
  v28 = a1;
  v18 = sub_2301B1FAC(a1);
  MEMORY[0x231911790](v18);

  sub_23030E988();

  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {

    sub_230061918(v9, &unk_27DB17070);
    v19 = objc_opt_self();
    v26 = 0;
    v27 = 0xE000000000000000;
    sub_230310848();
    MEMORY[0x231911790](0xD000000000000024, 0x80000002303430C0);
    v20 = _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0();
    MEMORY[0x231911790](v20);

    MEMORY[0x231911790](0x736F6820646E6120, 0xEA00000000002074);
    v29 = v28;
    sub_230310A28();
    v21 = sub_23030F8B8();

    [v19 internalErrorWithDebugDescription_];

    return swift_willThrow();
  }

  else
  {
    (*(v11 + 32))(v16, v9, v10);
    (*(v11 + 16))(v14, v16, v10);
    sub_2301B5BFC(v14, a2, v24, v25, v23);
    return (*(v11 + 8))(v16, v10);
  }
}

uint64_t sub_2301B1428@<X0>(int a1@<W0>, uint64_t a2@<X1>, unsigned int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v25 = a4;
  v24 = a3;
  v23 = a5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB17070);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v23 - v8;
  v10 = sub_23030E9B8();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v23 - v15;
  v26 = _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0();
  v27 = v17;
  MEMORY[0x231911790](3092282, 0xE300000000000000);
  v28 = a1;
  v18 = sub_2301B1FAC(a1);
  MEMORY[0x231911790](v18);

  sub_23030E988();

  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {

    sub_230061918(v9, &unk_27DB17070);
    v19 = objc_opt_self();
    v26 = 0;
    v27 = 0xE000000000000000;
    sub_230310848();
    MEMORY[0x231911790](0xD000000000000024, 0x80000002303430C0);
    v20 = _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0();
    MEMORY[0x231911790](v20);

    MEMORY[0x231911790](0x736F6820646E6120, 0xEA00000000002074);
    v29 = v28;
    sub_230310A28();
    v21 = sub_23030F8B8();

    [v19 internalErrorWithDebugDescription_];

    return swift_willThrow();
  }

  else
  {
    (*(v11 + 32))(v16, v9, v10);
    (*(v11 + 16))(v14, v16, v10);
    sub_2301B5760(v14, a2, v24, v25, v23);
    return (*(v11 + 8))(v16, v10);
  }
}

uint64_t sub_2301B177C@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v25 = a4;
  v23 = a5;
  v24 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB17070);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v23 - v8;
  v10 = sub_23030E9B8();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v23 - v15;
  v26 = _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0();
  v27 = v17;
  MEMORY[0x231911790](3092282, 0xE300000000000000);
  v28 = a1;
  v18 = sub_2301B1FAC(a1);
  MEMORY[0x231911790](v18);

  sub_23030E988();

  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {

    sub_230061918(v9, &unk_27DB17070);
    v19 = objc_opt_self();
    v26 = 0;
    v27 = 0xE000000000000000;
    sub_230310848();
    MEMORY[0x231911790](0xD000000000000024, 0x80000002303430C0);
    v20 = _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0();
    MEMORY[0x231911790](v20);

    MEMORY[0x231911790](0x736F6820646E6120, 0xEA00000000002074);
    v29 = v28;
    sub_230310A28();
    v21 = sub_23030F8B8();

    [v19 internalErrorWithDebugDescription_];

    return swift_willThrow();
  }

  else
  {
    (*(v11 + 32))(v16, v9, v10);
    (*(v11 + 16))(v14, v16, v10);
    sub_2301B52A4(v14, a2, v24, v25, sub_2301BC968, &type metadata for NewListQuery, v23);
    return (*(v11 + 8))(v16, v10);
  }
}

uint64_t sub_2301B1B20(uint64_t a1)
{
  v2 = type metadata accessor for ReminderUUID(0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v6)
  {
    v14 = MEMORY[0x277D84F90];
    sub_2303109B8();
    v8 = objc_opt_self();
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);
    do
    {
      sub_2301B75B4(v9, v5, type metadata accessor for ReminderUUID);
      v11 = sub_23030EB88();
      v12 = [v8 objectIDWithUUID_];

      sub_2301B761C(v5, type metadata accessor for ReminderUUID);
      sub_230310988();
      sub_2303109C8();
      sub_2303109D8();
      sub_230310998();
      v9 += v10;
      --v6;
    }

    while (v6);
    return v14;
  }

  return result;
}

uint64_t sub_2301B1CD8@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  if (*(a1 + 16))
  {
    v3 = *(a1 + 32);

    v5 = 0x807060504020001uLL >> (8 * ((v3 - 6) & 0x1Fu));
    if ((v3 - 6) >= 8u)
    {
      LOBYTE(v5) = 3;
    }
  }

  else
  {

    LOBYTE(v5) = 3;
  }

  *a2 = v5;
  return result;
}

uint64_t static REMNavigationSpecifier.ReminderPathSpecifier.ShowInListPathSpecifier.== infix(_:_:)(__int16 *a1, __int16 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*a1 == 2)
  {
    return *a2 == 2;
  }

  if (*a2 == 2)
  {
    return 0;
  }

  v5 = v3 ^ v2;
  v6 = ((v3 & 0x100) == 0) ^ ((v2 & 0x100) >> 8);
  if (v5)
  {
    return 0;
  }

  else
  {
    return v6;
  }
}

uint64_t sub_2301B1DA0(__int16 *a1, __int16 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*a1 == 2)
  {
    return *a2 == 2;
  }

  if (*a2 == 2)
  {
    return 0;
  }

  v5 = v3 ^ v2;
  v6 = ((v3 & 0x100) == 0) ^ ((v2 & 0x100) >> 8);
  if (v5)
  {
    return 0;
  }

  else
  {
    return v6;
  }
}

uint64_t REMNavigationSpecifier.ReminderPathSpecifier.DateVisibleSection.hashValue.getter()
{
  v1 = *v0;
  sub_230311358();
  MEMORY[0x2319130E0](v1);
  return sub_2303113A8();
}

uint64_t *REMNavigationSpecifier.CommonListPathSpecifier.init(listPathSpecifier:)@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  if (*(result + 8) > 1u)
  {
    if (*(result + 8) == 2)
    {
      LOBYTE(v3) = 1;
    }

    else
    {
      v4 = 8 * v2;
      v2 = qword_2303223D8[v2];
      v3 = 0x2020202FFuLL >> (v4 & 0xF8);
    }
  }

  else if (*(result + 8))
  {
    LOBYTE(v3) = 0;
  }

  else
  {
    v2 = 0;
    LOBYTE(v3) = -1;
  }

  *a2 = v2;
  *(a2 + 8) = v3;
  return result;
}

uint64_t *REMNavigationSpecifier.CommonListPathSpecifier.init(smartListPathSpecifier:)@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  v3 = *(result + 8);
  if (v3 >= 2)
  {
    v3 = 0x202FFu >> (8 * v2);
    v2 = qword_230322400[v2];
  }

  *a2 = v2;
  *(a2 + 8) = v3;
  return result;
}

uint64_t sub_2301B1FAC(char a1)
{
  result = 0x63636164636D6572;
  switch(a1)
  {
    case 1:
      result = 0x73696C64636D6572;
      break;
    case 2:
      result = 0x616D7364636D6572;
      break;
    case 3:
      result = 0x6D657264636D6572;
      break;
    case 4:
      result = 0xD000000000000010;
      break;
    case 5:
      result = 0xD000000000000015;
      break;
    case 6:
      result = 1953460082;
      break;
    case 7:
      result = 0x7961646F74;
      break;
    case 8:
      result = 0x656C756465686373;
      break;
    case 9:
      v3 = 1919708257;
      goto LABEL_14;
    case 10:
      result = 0x64656767616C66;
      break;
    case 11:
      result = 0x686372616573;
      break;
    case 12:
      result = 0x64656E6769737361;
      break;
    case 13:
      result = 0x6E756F6669726973;
      break;
    case 14:
      result = 0x646567676174;
      break;
    case 15:
      result = 0x6574656C706D6F63;
      break;
    case 16:
      result = 0x7473696C77656ELL;
      break;
    case 17:
      v3 = 1920427374;
LABEL_14:
      result = v3 | 0x6E696D6500000000;
      break;
    case 18:
      result = 0xD00000000000001CLL;
      break;
    case 19:
      result = 0x657463696C627570;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_2301B21FC(unint64_t result)
{
  result = result;
  switch(result)
  {
    case 1:
      result = 0x73746E65746E6F63;
      break;
    case 2:
      result = 0x736C6961746564;
      break;
    case 3:
      result = 0xD000000000000010;
      break;
    case 4:
      result = 0x6E696D657277656ELL;
      break;
    case 5:
      result = 0x6E61726165707061;
      break;
    case 6:
      result = 0x5F65746164657564;
      break;
    case 7:
      result = 0x65746164657564;
      break;
    case 8:
      result = 0x7465735F656D6974;
      break;
    case 9:
      result = 1936154996;
      break;
    case 10:
      result = 0x6E6F697461636F6CLL;
      break;
    case 11:
      result = 0x6165706572646E65;
      break;
    case 12:
      result = 0x736B736174627573;
      break;
    case 13:
      result = 0x656D6E6769737361;
      break;
    case 14:
      result = 0x7463656C6573;
      break;
    case 15:
      result = 0xD000000000000013;
      break;
    case 16:
      result = 0x6D736D6F74737563;
      break;
    case 17:
      result = 0x6C797265636F7267;
      break;
    case 18:
      result = 0x7374696465;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_2301B246C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2301B9D68();
  *a1 = result;
  return result;
}

uint64_t sub_2301B249C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2301B1FAC(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_2301B24F0(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  v6 = *a2;
  v7 = a5(*a1);
  v9 = v8;
  if (v7 == a5(v6) && v9 == v10)
  {
    v12 = 1;
  }

  else
  {
    v12 = sub_230311048();
  }

  return v12 & 1;
}

uint64_t sub_2301B259C(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  v5 = *v3;
  sub_230311358();
  a3(v5);
  sub_23030F9C8();

  return sub_2303113A8();
}

uint64_t sub_2301B2620(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  a4(*v4);
  sub_23030F9C8();
}

uint64_t sub_2301B2690(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  v6 = *v4;
  sub_230311358();
  a4(v6);
  sub_23030F9C8();

  return sub_2303113A8();
}

uint64_t sub_2301B26F8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2301B9DBC();
  *a1 = result;
  return result;
}

unint64_t sub_2301B2728@<X0>(unint64_t *a1@<X8>)
{
  result = sub_2301B21FC(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_2301B2764@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14800);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v16 - v3;
  v5 = sub_23030EBB8();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for ReminderUUID(0);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23030EB68();

  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_230061918(v4, &qword_27DB14800);
    v13 = 1;
  }

  else
  {
    v14 = *(v6 + 32);
    v14(v8, v4, v5);
    v14(v12, v8, v5);
    sub_2301B752C(v12, a1, type metadata accessor for ReminderUUID);
    v13 = 0;
  }

  return (*(v10 + 56))(a1, v13, 1, v9);
}

uint64_t sub_2301B29C0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v18 = a2;
  v4 = sub_23030EBB8();
  v16 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v19 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB16698);
  v17 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v15 - v7;
  v9 = type metadata accessor for ReminderUUID(0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2301BC71C();
  sub_230311428();
  if (!v2)
  {
    v12 = v16;
    v13 = v18;
    sub_2301BC6D4(&unk_280C9C5F0, MEMORY[0x277CC95F0]);
    sub_230310CE8();
    (*(v17 + 8))(v8, v6);
    (*(v12 + 32))(v11, v19, v4);
    sub_2301B752C(v11, v13, type metadata accessor for ReminderUUID);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_2301B2C5C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v15 = a2;
  v4 = type metadata accessor for ReminderUUID(0);
  MEMORY[0x28223BE20](v4);
  v17 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB16670);
  v16 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v15 - v7;
  v9 = type metadata accessor for ReminderIDQuery(0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2301BC680();
  sub_230311428();
  if (!v2)
  {
    v12 = v15;
    sub_2301BC6D4(&qword_27DB16680, type metadata accessor for ReminderUUID);
    v13 = v17;
    sub_230310CE8();
    (*(v16 + 8))(v8, v6);
    sub_2301B752C(v13, v11, type metadata accessor for ReminderUUID);
    sub_2301B752C(v11, v12, type metadata accessor for ReminderIDQuery);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_2301B2EE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 1684632949 && a2 == 0xE400000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_230311048();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_2301B2F68(uint64_t a1)
{
  v2 = sub_2301BC71C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2301B2FA4(uint64_t a1)
{
  v2 = sub_2301BC71C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2301B2FF8(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB166A8);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2301BC71C();
  sub_230311448();
  sub_23030EBB8();
  sub_2301BC6D4(&unk_280C9C408, MEMORY[0x277CC95F0]);
  sub_230310DF8();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_2301B319C(uint64_t a1)
{
  v2 = sub_2301BC914();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2301B31D8(uint64_t a1)
{
  v2 = sub_2301BC914();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2301B3214(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB16728);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2301BC914();
  sub_230311448();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_2301B3374@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_230310C08();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_2301B33CC(uint64_t a1)
{
  v2 = sub_2301BD768();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2301B3408(uint64_t a1)
{
  v2 = sub_2301BD768();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2301B3444@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB16860);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v13 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2301BD768();
  sub_230311428();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v9 = sub_230310C98();
  v11 = v10;
  (*(v6 + 8))(v8, v5);
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  *a2 = v9;
  a2[1] = v11;
  return result;
}

uint64_t sub_2301B35C0(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB16830);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2301BD768();
  sub_230311448();
  sub_230310DA8();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_2301B3784@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_230310C08();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_2301B37DC(uint64_t a1)
{
  v2 = sub_2301BC680();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2301B3818(uint64_t a1)
{
  v2 = sub_2301BC680();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2301B386C(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB16688);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2301BC680();
  sub_230311448();
  type metadata accessor for ReminderUUID(0);
  sub_2301BC6D4(&qword_27DB16690, type metadata accessor for ReminderUUID);
  sub_230310DF8();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_2301B39E4(void *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB166C8);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v9 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2301BC770();
  sub_230311448();
  v9[1] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB166E0);
  sub_2301BC9BC(&qword_27DB166E8, &qword_27DB16690);
  sub_230310DF8();
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_2301B3C14@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_230310C08();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_2301B3C6C(uint64_t a1)
{
  v2 = sub_2301BC770();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2301B3CA8(uint64_t a1)
{
  v2 = sub_2301BC770();

  return MEMORY[0x2821FE720](a1, v2);
}

void *sub_2301B3CE4@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = sub_2301B9378(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_2301B3D2C(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB16710);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2301BC86C();
  sub_230311448();
  v14 = 0;
  sub_230310D68();
  if (!v3)
  {
    v13 = 1;
    sub_230310D68();
    v11[1] = a3;
    v12 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB13DE0);
    sub_230059F7C(&qword_280C96EE8);
    sub_230310D98();
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_2301B3F4C(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB166F8);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2301BC7C4();
  sub_230311448();
  v8[15] = 0;
  sub_230310DB8();
  if (!v1)
  {
    v8[14] = 1;
    sub_230310D68();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_2301B40CC()
{
  v1 = 1701736302;
  if (*v0 != 1)
  {
    v1 = 0x736C6562616CLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 7105633;
  }
}

uint64_t sub_2301B4114@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2301BD7BC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2301B413C(uint64_t a1)
{
  v2 = sub_2301BC86C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2301B4178(uint64_t a1)
{
  v2 = sub_2301BC86C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2301B41B4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_2301B9760(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5;
  }

  return result;
}

uint64_t sub_2301B420C()
{
  sub_230311358();
  sub_23030F9C8();
  return sub_2303113A8();
}

uint64_t sub_2301B4280()
{
  sub_230311358();
  sub_23030F9C8();
  return sub_2303113A8();
}

uint64_t sub_2301B431C@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_230310C08();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_2301B4374(uint64_t a1)
{
  v2 = sub_2301BD8D0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2301B43B0(uint64_t a1)
{
  v2 = sub_2301BD8D0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2301B4474(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, void (*a6)(void))
{
  v14 = a6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(a4);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v13 - v10;
  v13 = *v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v14();
  sub_230311448();
  sub_230310D58();
  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_2301B4680@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_230310C08();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_2301B46D8(uint64_t a1)
{
  v2 = sub_2301BD924();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2301B4714(uint64_t a1)
{
  v2 = sub_2301BD924();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2301B4794@<X0>(void *a1@<X0>, uint64_t *a2@<X3>, void (*a3)(void)@<X5>, uint64_t *a4@<X8>)
{
  v18 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  v17 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v16 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  a3();
  sub_230311428();
  if (v4)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v10 = v17;
  v11 = v18;
  v12 = sub_230310C48();
  v14 = v13;
  (*(v10 + 8))(v9, v7);
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  *v11 = v12;
  v11[1] = v14;
  return result;
}

uint64_t sub_2301B4960(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x79616C5F7473696CLL;
  }

  else
  {
    v3 = 0x6574656C706D6F63;
  }

  if (v2)
  {
    v4 = 0xE900000000000064;
  }

  else
  {
    v4 = 0xEB0000000074756FLL;
  }

  if (*a2)
  {
    v5 = 0x79616C5F7473696CLL;
  }

  else
  {
    v5 = 0x6574656C706D6F63;
  }

  if (*a2)
  {
    v6 = 0xEB0000000074756FLL;
  }

  else
  {
    v6 = 0xE900000000000064;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_230311048();
  }

  return v8 & 1;
}

uint64_t sub_2301B4A14()
{
  sub_230311358();
  sub_23030F9C8();

  return sub_2303113A8();
}

uint64_t sub_2301B4AA4()
{
  sub_23030F9C8();
}

uint64_t sub_2301B4B20()
{
  sub_230311358();
  sub_23030F9C8();

  return sub_2303113A8();
}

uint64_t sub_2301B4BAC@<X0>(char *a1@<X8>)
{
  v2 = sub_230310C08();

  if (v2 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v2)
  {
    v4 = 0;
  }

  *a1 = v4;
  return result;
}

void sub_2301B4C0C(uint64_t *a1@<X8>)
{
  v2 = 0x6574656C706D6F63;
  if (*v1)
  {
    v2 = 0x79616C5F7473696CLL;
  }

  v3 = 0xE900000000000064;
  if (*v1)
  {
    v3 = 0xEB0000000074756FLL;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_2301B4C58()
{
  if (*v0)
  {
    return 0x79616C5F7473696CLL;
  }

  else
  {
    return 0x6574656C706D6F63;
  }
}

uint64_t sub_2301B4CA0@<X0>(char *a1@<X8>)
{
  v2 = sub_230310C08();

  if (v2 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v2)
  {
    v4 = 0;
  }

  *a1 = v4;
  return result;
}

uint64_t sub_2301B4D04(uint64_t a1)
{
  v2 = sub_2301BC7C4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2301B4D40(uint64_t a1)
{
  v2 = sub_2301BC7C4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2301B4D7C@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_2301B9BC0(a1);
  if (!v2)
  {
    *a2 = result & 1;
    a2[1] = BYTE1(result);
  }

  return result;
}

uint64_t sub_2301B4DD8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v23 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB16728);
  v21 = *(v5 - 8);
  v22 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v20 - v6;
  v8 = sub_23030E9B8();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v9 + 16);
  v25 = a1;
  v12(v11, a1, v8);
  v13 = *(a2 + 16);
  if (v13)
  {
    v14 = a2 + 32;
    v20 = 0x800000023033EF50;
    do
    {
      ++v14;
      sub_23030E8E8();

      --v13;
    }

    while (v13);
  }

  type metadata accessor for InternalEncoder();
  v15 = swift_allocObject();
  *(v15 + 16) = MEMORY[0x277D84F90];
  v16 = (v15 + 16);
  v24 = v15;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB16730);
  sub_23005F108(qword_280C9B2F8, &qword_27DB16730);
  sub_230310E28();
  (*(v21 + 8))(v7, v22);
  swift_beginAccess();
  v17 = *v16;

  sub_2301B702C(v17, v23);

  v18 = *(v9 + 8);
  v18(v25, v8);
  return (v18)(v11, v8);
}

uint64_t sub_2301B52A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void (*a5)(void)@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v28 = a6;
  v25 = a3;
  v26 = a5;
  v24[0] = a7;
  v10 = sub_23030E9B8();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v11 + 16);
  v30 = a1;
  v14(v13, a1, v10);
  v15 = *(a2 + 16);
  if (v15)
  {
    v16 = a2 + 32;
    v24[1] = 0x800000023033EEF0;
    v24[2] = 0x800000023033EF50;
    do
    {
      ++v16;
      sub_23030E8E8();

      --v15;
    }

    while (v15);
  }

  v29[5] = v25;
  v29[6] = a4;
  v17 = type metadata accessor for InternalEncoder();
  v18 = swift_allocObject();
  *(v18 + 16) = MEMORY[0x277D84F90];
  v29[3] = v17;
  v29[4] = sub_2301BC6D4(&qword_27DB15708, type metadata accessor for InternalEncoder);
  v29[0] = v18;
  v26();

  v19 = v27;
  sub_23030F748();
  if (v19)
  {

    v20 = *(v11 + 8);
    v20(v30, v10);
    v20(v13, v10);

    return __swift_destroy_boxed_opaque_existential_1(v29);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1(v29);
    swift_beginAccess();
    v22 = *(v18 + 16);

    sub_2301B702C(v22, v24[0]);

    v23 = *(v11 + 8);
    v23(v30, v10);
    return (v23)(v13, v10);
  }
}

uint64_t sub_2301B5760@<X0>(char *a1@<X0>, uint64_t a2@<X1>, unsigned int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v25 = a3;
  v23 = a5;
  v8 = sub_23030E9B8();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v9 + 16);
  v28 = a1;
  v12(v11, a1, v8);
  v13 = *(a2 + 16);
  if (v13)
  {
    v14 = a2 + 32;
    v24 = 0x800000023033EF50;
    do
    {
      ++v14;
      sub_23030E8E8();

      --v13;
    }

    while (v13);
  }

  v15 = type metadata accessor for InternalEncoder();
  v16 = swift_allocObject();
  *(v16 + 16) = MEMORY[0x277D84F90];
  v27[3] = v15;
  v27[4] = sub_2301BC6D4(&qword_27DB15708, type metadata accessor for InternalEncoder);
  v27[0] = v16;

  v17 = v26;
  sub_2301B3D2C(v27, v25, a4);
  if (v17)
  {

    v18 = *(v9 + 8);
    v18(v28, v8);
    v18(v11, v8);
    return __swift_destroy_boxed_opaque_existential_1(v27);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1(v27);
    swift_beginAccess();
    v20 = *(v16 + 16);

    sub_2301B702C(v20, v23);

    v21 = *(v9 + 8);
    v21(v28, v8);
    return v21(v11, v8);
  }
}

uint64_t sub_2301B5BFC@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v23 = a3;
  v22[0] = a5;
  v8 = sub_23030E9B8();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v9 + 16);
  v26 = a1;
  v12(v11, a1, v8);
  v13 = *(a2 + 16);
  if (v13)
  {
    v14 = a2 + 32;
    v22[1] = 0x800000023033EEF0;
    v22[2] = 0x800000023033EF50;
    do
    {
      ++v14;
      sub_23030E8E8();

      --v13;
    }

    while (v13);
  }

  v25[5] = v23;
  v25[6] = a4;
  v15 = type metadata accessor for InternalEncoder();
  v16 = swift_allocObject();
  *(v16 + 16) = MEMORY[0x277D84F90];
  v25[3] = v15;
  v25[4] = sub_2301BC6D4(&qword_27DB15708, type metadata accessor for InternalEncoder);
  v25[0] = v16;
  sub_2301BC818();

  v17 = v24;
  sub_23030F748();
  if (v17)
  {

    v18 = *(v9 + 8);
    v18(v26, v8);
    v18(v11, v8);

    return __swift_destroy_boxed_opaque_existential_1(v25);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1(v25);
    swift_beginAccess();
    v20 = *(v16 + 16);

    sub_2301B702C(v20, v22[0]);

    v21 = *(v9 + 8);
    v21(v26, v8);
    return v21(v11, v8);
  }
}

uint64_t sub_2301B60B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v28 = a3;
  v25[0] = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB166C8);
  v26 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = v25 - v7;
  v9 = sub_23030E9B8();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v10 + 16);
  v30 = a1;
  v27 = v14;
  v13(v12, a1);
  v15 = *(a2 + 16);
  if (v15)
  {
    v16 = a2 + 32;
    v25[1] = 0x800000023033EEF0;
    v25[2] = 0x800000023033EF50;
    do
    {
      ++v16;
      sub_23030E8E8();

      --v15;
    }

    while (v15);
  }

  type metadata accessor for InternalEncoder();
  v17 = swift_allocObject();
  *(v17 + 16) = MEMORY[0x277D84F90];
  v29 = v17;
  swift_retain_n();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB166D0);
  sub_23005F108(&qword_27DB166D8, &qword_27DB166D0);
  sub_230310E28();
  v29 = v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB166E0);
  sub_2301BC9BC(&qword_27DB166E8, &qword_27DB16690);
  v18 = v25[3];
  sub_230310DF8();
  (*(v26 + 8))(v8, v6);

  if (v18)
  {
    v19 = *(v10 + 8);
    v20 = v27;
    v19(v30, v27);
    v19(v12, v20);
  }

  else
  {
    swift_beginAccess();
    v22 = *(v17 + 16);

    sub_2301B702C(v22, v25[0]);

    v23 = *(v10 + 8);
    v24 = v27;
    v23(v30, v27);
    return (v23)(v12, v24);
  }
}

uint64_t sub_2301B669C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v25 = a3;
  v22 = a4;
  v6 = sub_23030E9B8();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v7 + 16);
  v27 = a1;
  v10(v9, a1, v6);
  v11 = *(a2 + 16);
  if (v11)
  {
    v12 = a2 + 32;
    v23 = 0x800000023033EF50;
    do
    {
      ++v12;
      sub_23030E8E8();

      --v11;
    }

    while (v11);
  }

  v13 = type metadata accessor for InternalEncoder();
  v14 = swift_allocObject();
  *(v14 + 16) = MEMORY[0x277D84F90];
  v26[3] = v13;
  v26[4] = sub_2301BC6D4(&qword_27DB15708, type metadata accessor for InternalEncoder);
  v26[0] = v14;
  type metadata accessor for ReminderIDQuery(0);
  sub_2301BC6D4(&qword_27DB166B8, type metadata accessor for ReminderIDQuery);

  v15 = v24;
  v16 = v25;
  sub_23030F748();
  if (v15)
  {

    sub_2301B761C(v16, type metadata accessor for ReminderIDQuery);
    v17 = *(v7 + 8);
    v17(v27, v6);
    v17(v9, v6);
    return __swift_destroy_boxed_opaque_existential_1(v26);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v26);
    swift_beginAccess();
    v19 = *(v14 + 16);

    sub_2301B702C(v19, v22);

    sub_2301B761C(v16, type metadata accessor for ReminderIDQuery);
    v20 = *(v7 + 8);
    v20(v27, v6);
    return (v20)(v9, v6);
  }
}

uint64_t sub_2301B6BA8@<X0>(char *a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v21 = a3;
  v20 = a4;
  v6 = sub_23030E9B8();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v7 + 16);
  v24 = a1;
  v10(v9, a1, v6);
  v11 = *(a2 + 16);
  if (v11)
  {
    v12 = a2 + 32;
    do
    {
      ++v12;
      sub_23030E8E8();

      --v11;
    }

    while (v11);
  }

  v13 = type metadata accessor for InternalEncoder();
  v14 = swift_allocObject();
  *(v14 + 16) = MEMORY[0x277D84F90];
  v23[3] = v13;
  v23[4] = sub_2301BC6D4(&qword_27DB15708, type metadata accessor for InternalEncoder);
  v23[0] = v14;

  v15 = v22;
  sub_2301B3F4C(v23);
  if (v15)
  {

    v16 = *(v7 + 8);
    v16(v24, v6);
    v16(v9, v6);
    return __swift_destroy_boxed_opaque_existential_1(v23);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v23);
    swift_beginAccess();
    v18 = *(v14 + 16);

    sub_2301B702C(v18, v20);

    v19 = *(v7 + 8);
    v19(v24, v6);
    return v19(v9, v6);
  }
}

uint64_t sub_2301B702C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB17070);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v28 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB149F8);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v28 - v9;
  v11 = sub_23030E578();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + 16))
  {
    sub_23030E538();
    if ((*(v12 + 48))(v10, 1, v11) == 1)
    {
      sub_230061918(v10, &qword_27DB149F8);
      v15 = objc_opt_self();
      v28 = 0;
      v29 = 0xE000000000000000;
      sub_230310848();

      v28 = 0xD000000000000028;
      v29 = 0x8000000230343060;
      sub_23030E9B8();
      sub_2301BC6D4(&qword_27DB164E0, MEMORY[0x277CC9260]);
      v16 = sub_230310E58();
      MEMORY[0x231911790](v16);

      v17 = sub_23030F8B8();

      [v15 internalErrorWithDebugDescription_];

      return swift_willThrow();
    }

    else
    {
      (*(v12 + 32))(v14, v10, v11);
      v20 = sub_23030E518();
      v21 = MEMORY[0x277D84F90];
      if (v20)
      {
        v21 = v20;
      }

      v28 = v21;

      sub_23009CF38(v22);
      sub_23030E528();
      sub_23030E548();
      v23 = sub_23030E9B8();
      v24 = *(v23 - 8);
      if ((*(v24 + 48))(v7, 1, v23) == 1)
      {
        sub_230061918(v7, &unk_27DB17070);
        v25 = objc_opt_self();
        v28 = 0;
        v29 = 0xE000000000000000;
        sub_230310848();

        v28 = 0xD000000000000025;
        v29 = 0x8000000230343090;
        sub_2301BC6D4(&qword_27DB166C0, MEMORY[0x277CC8958]);
        v26 = sub_230310E58();
        MEMORY[0x231911790](v26);

        v27 = sub_23030F8B8();

        [v25 internalErrorWithDebugDescription_];

        swift_willThrow();
        return (*(v12 + 8))(v14, v11);
      }

      else
      {
        (*(v12 + 8))(v14, v11);
        return (*(v24 + 32))(a2, v7, v23);
      }
    }
  }

  else
  {
    v19 = sub_23030E9B8();
    return (*(*(v19 - 8) + 16))(a2, v2, v19);
  }
}

uint64_t sub_2301B752C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_2301B75B4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2301B761C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t _s19ReminderKitInternal22REMNavigationSpecifierO010SearchPathE0O2eeoiySbAE_AEtFZ_0(void *a1, void *a2)
{
  v4 = a1[1];
  v5 = a2[1];
  if (!v4)
  {
    if (!v5)
    {
      swift_bridgeObjectRelease_n();
      return 1;
    }

    return 0;
  }

  if (!v5)
  {
    return 0;
  }

  if (*a1 == *a2 && v4 == v5)
  {
    return 1;
  }

  return sub_230311048();
}

uint64_t _s19ReminderKitInternal22REMNavigationSpecifierO010TaggedPathE0O2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v4 = *(a1 + 16);
  v6 = *a2;
  v5 = *(a2 + 8);
  v7 = *(a2 + 16);
  if (*a1 != 2)
  {
    if (v6 != 2)
    {
      v12[0] = *a1;
      v12[1] = v2;
      v13 = v4;
      v10[0] = v6;
      v10[1] = v5;
      v11 = v7;
      sub_230145624(v6);
      sub_230145624(v3);
      sub_230145624(v6);
      sub_230145624(v3);
      v8 = _s19ReminderKitInternal24REMHashtagLabelSpecifierO2eeoiySbAC_ACtFZ_0(v12, v10);
      sub_2301BA178(v3);
      sub_2301BA178(v6);
      sub_2301BA178(v6);
      sub_2301BA178(v3);
      return v8 & 1;
    }

    goto LABEL_5;
  }

  if (v6 != 2)
  {
LABEL_5:
    sub_230145624(*a2);
    sub_230145624(v3);
    sub_2301BA178(v3);
    sub_2301BA178(v6);
    v8 = 0;
    return v8 & 1;
  }

  sub_2301BA178(2uLL);
  sub_2301BA178(2uLL);
  v8 = 1;
  return v8 & 1;
}

BOOL _s19ReminderKitInternal22REMNavigationSpecifierO011NewListPathE0O2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *a2;
  v6 = *(a2 + 8);
  v7 = *(a2 + 16);
  if (!*(a1 + 16))
  {
    if (!*(a2 + 16))
    {
      if (v3)
      {
        if (v6)
        {
          if (v2 == v5 && v3 == v6)
          {
            sub_23014FFB8(*a1, v3, 0);
            sub_23014FFB8(v2, v3, 0);
            sub_230052D78(v2, v3, 0);
            v8 = v2;
            v9 = v3;
            v10 = 0;
            goto LABEL_21;
          }

          v17 = sub_230311048();
          sub_23014FFB8(v5, v6, 0);
          sub_23014FFB8(v2, v3, 0);
          sub_230052D78(v2, v3, 0);
          sub_230052D78(v5, v6, 0);
          return (v17 & 1) != 0;
        }

        sub_23014FFB8(*a2, 0, 0);
        sub_23014FFB8(v5, 0, 0);
        sub_23014FFB8(v2, v3, 0);
        sub_230052D78(v2, v3, 0);
      }

      else
      {

        sub_23014FFB8(v5, v6, 0);
        sub_23014FFB8(v2, 0, 0);
        sub_230052D78(v2, 0, 0);
        sub_230052D78(v5, v6, 0);
        if (!v6)
        {
          return 1;
        }
      }

      v12 = v5;
      v13 = v6;
      v14 = 0;
      goto LABEL_23;
    }

    goto LABEL_22;
  }

  if (v4 != 1)
  {
    if (v7 == 2)
    {
      if (v3)
      {
        if (v6)
        {
          if (v2 == v5 && v3 == v6)
          {
            sub_23014FFB8(*a1, v3, 2u);
            sub_23014FFB8(v2, v3, 2u);
            sub_230052D78(v2, v3, 2u);
            v8 = v2;
            v9 = v3;
            v10 = 2;
            goto LABEL_21;
          }

          v16 = sub_230311048();
          sub_23014FFB8(v5, v6, 2u);
          sub_23014FFB8(v2, v3, 2u);
          sub_230052D78(v2, v3, 2u);
          sub_230052D78(v5, v6, 2u);
          return (v16 & 1) != 0;
        }

        sub_23014FFB8(*a2, 0, 2u);
        sub_23014FFB8(v5, 0, 2u);
        sub_23014FFB8(v2, v3, 2u);
        sub_230052D78(v2, v3, 2u);
      }

      else
      {

        sub_23014FFB8(v5, v6, 2u);
        sub_23014FFB8(v2, 0, 2u);
        sub_230052D78(v2, 0, 2u);
        sub_230052D78(v5, v6, 2u);
        if (!v6)
        {
          return 1;
        }
      }

      v12 = v5;
      v13 = v6;
      v14 = 2;
      goto LABEL_23;
    }

LABEL_22:
    sub_23014FFB8(*a2, *(a2 + 8), v7);
    sub_23014FFB8(v2, v3, v4);
    sub_230052D78(v2, v3, v4);
    v12 = v5;
    v13 = v6;
    v14 = v7;
LABEL_23:
    sub_230052D78(v12, v13, v14);
    return 0;
  }

  if (v7 != 1)
  {
    goto LABEL_22;
  }

  if (!v3)
  {

    sub_23014FFB8(v5, v6, 1u);
    sub_23014FFB8(v2, 0, 1u);
    sub_230052D78(v2, 0, 1u);
    sub_230052D78(v5, v6, 1u);
    if (v6)
    {
LABEL_32:
      v12 = v5;
      v13 = v6;
      v14 = 1;
      goto LABEL_23;
    }

    return 1;
  }

  if (!v6)
  {
    sub_23014FFB8(*a2, 0, 1u);
    sub_23014FFB8(v5, 0, 1u);
    sub_23014FFB8(v2, v3, 1u);
    sub_230052D78(v2, v3, 1u);
    goto LABEL_32;
  }

  if (v2 == v5 && v3 == v6)
  {
    sub_23014FFB8(*a1, v3, 1u);
    sub_23014FFB8(v2, v3, 1u);
    sub_230052D78(v2, v3, 1u);
    v8 = v2;
    v9 = v3;
    v10 = 1;
LABEL_21:
    sub_230052D78(v8, v9, v10);
    return 1;
  }

  v15 = sub_230311048();
  sub_23014FFB8(v5, v6, 1u);
  sub_23014FFB8(v2, v3, 1u);
  sub_230052D78(v2, v3, 1u);
  sub_230052D78(v5, v6, 1u);
  result = 1;
  if ((v15 & 1) == 0)
  {
    return 0;
  }

  return result;
}

uint64_t _s19ReminderKitInternal22REMNavigationSpecifierO013SmartListPathE0O2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a2;
  v5 = *(a2 + 8);
  if (!*(a1 + 8))
  {
    if (!*(a2 + 8))
    {
      sub_23004CBA4(0, &qword_280C9B980);
      sub_230050BA4(v4, 0);
      sub_230050BA4(v2, 0);
      v6 = sub_230310448();
      sub_230050F40(v2, 0);
      v7 = v4;
      v8 = 0;
      goto LABEL_7;
    }

    goto LABEL_23;
  }

  if (v3 == 1)
  {
    if (v5 == 1)
    {
      sub_230050BA4(*a2, 1);
      sub_230050BA4(v2, 1);
      LOBYTE(v6) = sub_2300A7E50(v2, v4);
      sub_230050F40(v2, 1);
      v7 = v4;
      v8 = 1;
LABEL_7:
      sub_230050F40(v7, v8);
      return v6 & 1;
    }

    goto LABEL_23;
  }

  if (!v2)
  {
    if (v5 != 2 || v4 != 0)
    {
      goto LABEL_23;
    }

    sub_230050F40(0, 2);
    v11 = 0;
    goto LABEL_22;
  }

  if (v2 != 1)
  {
    if (v5 != 2 || v4 != 2)
    {
      goto LABEL_23;
    }

    sub_230050F40(2, 2);
    v11 = 2;
LABEL_22:
    sub_230050F40(v11, 2);
    return 1;
  }

  if (v5 != 2 || v4 != 1)
  {
LABEL_23:
    sub_230050BA4(*a2, *(a2 + 8));
    sub_230050BA4(v2, v3);
    sub_230050F40(v2, v3);
    sub_230050F40(v4, v5);
    return 0;
  }

  sub_230050F40(1, 2);
  sub_230050F40(1, 2);
  return v4;
}

uint64_t _s19ReminderKitInternal22REMNavigationSpecifierO014CommonListPathE0O2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a2;
  v5 = *(a2 + 8);
  if (!*(a1 + 8))
  {
    if (!*(a2 + 8))
    {
      sub_23004CBA4(0, &qword_280C9B980);
      sub_230050BA4(v4, 0);
      sub_230050BA4(v2, 0);
      v6 = sub_230310448();
      sub_230050F40(v2, 0);
      v7 = v4;
      v8 = 0;
      goto LABEL_18;
    }

    goto LABEL_6;
  }

  if (v3 != 1)
  {
    if (v2 > 1)
    {
      if (v2 == 2)
      {
        if (v5 != 2 || v4 != 2)
        {
          goto LABEL_6;
        }

        sub_230050F40(2, 2);
        v10 = 2;
      }

      else
      {
        if (v5 != 2 || v4 != 3)
        {
          goto LABEL_6;
        }

        sub_230050F40(3, 2);
        v10 = 3;
      }
    }

    else
    {
      if (v2)
      {
        if (v5 == 2 && v4 == 1)
        {
          sub_230050F40(1, 2);
          sub_230050F40(1, 2);
          return v4;
        }

LABEL_6:
        sub_230050BA4(*a2, *(a2 + 8));
        sub_230050BA4(v2, v3);
        sub_230050F40(v2, v3);
        sub_230050F40(v4, v5);
        return 0;
      }

      if (v5 != 2 || v4)
      {
        goto LABEL_6;
      }

      sub_230050F40(0, 2);
      v10 = 0;
    }

    sub_230050F40(v10, 2);
    return 1;
  }

  if (v5 != 1)
  {
    goto LABEL_6;
  }

  sub_230050BA4(*a2, 1);
  sub_230050BA4(v2, 1);
  LOBYTE(v6) = sub_2300A7E50(v2, v4);
  sub_230050F40(v2, 1);
  v7 = v4;
  v8 = 1;
LABEL_18:
  sub_230050F40(v7, v8);
  return v6 & 1;
}

BOOL _s19ReminderKitInternal22REMNavigationSpecifierO08ListPathE0O2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a2;
  v5 = *(a2 + 8);
  if (v3 > 1)
  {
    if (v3 != 2)
    {
      if (v2 <= 1)
      {
        if (v2)
        {
          if (v5 == 3 && v4 == 1)
          {
            sub_2301BA1A8(1, 3);
            sub_2301BA1A8(1, 3);
            return v4;
          }

          goto LABEL_19;
        }

        if (v5 != 3 || v4)
        {
LABEL_19:
          sub_2301BA188(v4, v5);
          sub_2301BA1A8(v2, v3);
          sub_2301BA1A8(v4, v5);
          return 0;
        }

        sub_2301BA1A8(0, 3);
        v10 = 0;
      }

      else if (v2 == 2)
      {
        if (v5 != 3 || v4 != 2)
        {
          goto LABEL_19;
        }

        sub_2301BA1A8(2, 3);
        v10 = 2;
      }

      else if (v2 == 3)
      {
        if (v5 != 3 || v4 != 3)
        {
          goto LABEL_19;
        }

        sub_2301BA1A8(3, 3);
        v10 = 3;
      }

      else
      {
        if (v5 != 3 || v4 != 4)
        {
          goto LABEL_19;
        }

        sub_2301BA1A8(4, 3);
        v10 = 4;
      }

      sub_2301BA1A8(v10, 3);
      return 1;
    }

    if (v5 != 2)
    {

      goto LABEL_19;
    }

    sub_2301BA188(*a2, 2);
    sub_2301BA188(v2, 2);
    v6 = sub_2300A7E50(v2, v4);
    sub_2301BA1A8(v2, 2);
    v7 = v4;
    v8 = 2;
LABEL_10:
    sub_2301BA1A8(v7, v8);
    return v6 & 1;
  }

  if (*(a1 + 8))
  {
    if (v5 != 1)
    {
      v11 = v2;
      goto LABEL_19;
    }

    sub_23004CBA4(0, &qword_280C9B980);
    sub_2301BA188(v4, 1);
    sub_2301BA188(v2, 1);
    v6 = sub_230310448();
    sub_2301BA1A8(v2, 1);
    v7 = v4;
    v8 = 1;
    goto LABEL_10;
  }

  if (*(a2 + 8))
  {
    goto LABEL_19;
  }

  sub_2301BA1A8(*a1, 0);
  sub_2301BA1A8(v4, 0);
  return ((v4 ^ v2) & 1) == 0;
}

BOOL _s19ReminderKitInternal22REMNavigationSpecifierO0a4PathE0O13DetailSectionO2eeoiySbAG_AGtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 <= 5)
  {
    switch(v2)
    {
      case 3u:
        return v3 == 3;
      case 4u:
        return v3 == 4;
      case 5u:
        return v3 == 5;
    }

LABEL_16:
    if ((v3 - 3) >= 6)
    {
      return v2 == v3;
    }

    return 0;
  }

  if (v2 == 6)
  {
    return v3 == 6;
  }

  if (v2 != 7)
  {
    if (v2 == 8)
    {
      return v3 == 8;
    }

    goto LABEL_16;
  }

  return v3 == 7;
}

uint64_t _s19ReminderKitInternal22REMNavigationSpecifierO0a4PathE0O2eeoiySbAE_AEtFZ_0(unsigned __int16 *a1, unsigned __int16 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*(a1 + 2) != 1)
  {
    if ((a2[1] & 1) == 0)
    {
      v6 = *a2;
      if (*a1 == 2)
      {
        if (v6 == 2)
        {
          return 1;
        }
      }

      else if (v6 != 2)
      {
        v7 = v3 ^ v2;
        if ((v7 & 1) == 0 && ((v7 >> 8) & 1) == 0)
        {
          return 1;
        }
      }
    }

    return 0;
  }

  if ((a2[1] & 1) == 0)
  {
    return 0;
  }

  v4 = *a1;
  if (v4 > 5)
  {
    if (v4 == 6)
    {
      return *a2 == 6;
    }

    if (v4 != 7)
    {
      if (v4 == 8)
      {
        return *a2 == 8;
      }

      return (v3 - 3) >= 6u && v3 == v2;
    }

    return *a2 == 7;
  }

  else
  {
    if (v4 == 3)
    {
      return *a2 == 3;
    }

    if (v4 != 4)
    {
      if (v4 == 5)
      {
        return *a2 == 5;
      }

      return (v3 - 3) >= 6u && v3 == v2;
    }

    return *a2 == 4;
  }
}

uint64_t _s19ReminderKitInternal22REMNavigationSpecifierO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v145 = a1;
  v146 = a2;
  v132 = type metadata accessor for REMiCloudSharedItemSpecifier.PublicTemplate(0);
  MEMORY[0x28223BE20](v132);
  v133 = &v132 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v144 = type metadata accessor for REMNavigationSpecifier(0);
  v3 = MEMORY[0x28223BE20](v144);
  v143 = &v132 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v3);
  v142 = &v132 - v6;
  v7 = MEMORY[0x28223BE20](v5);
  v141 = &v132 - v8;
  v9 = MEMORY[0x28223BE20](v7);
  v140 = &v132 - v10;
  v11 = MEMORY[0x28223BE20](v9);
  v139 = &v132 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v138 = (&v132 - v14);
  v15 = MEMORY[0x28223BE20](v13);
  v137 = &v132 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v136 = &v132 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v135 = &v132 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v134 = &v132 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v25 = &v132 - v24;
  v26 = MEMORY[0x28223BE20](v23);
  v28 = &v132 - v27;
  v29 = MEMORY[0x28223BE20](v26);
  v31 = &v132 - v30;
  v32 = MEMORY[0x28223BE20](v29);
  v34 = &v132 - v33;
  v35 = MEMORY[0x28223BE20](v32);
  v37 = &v132 - v36;
  v38 = MEMORY[0x28223BE20](v35);
  v40 = &v132 - v39;
  MEMORY[0x28223BE20](v38);
  v42 = (&v132 - v41);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB166B0);
  v44 = MEMORY[0x28223BE20](v43 - 8);
  v46 = &v132 - v45;
  v47 = &v132 + *(v44 + 56) - v45;
  sub_2301B75B4(v145, &v132 - v45, type metadata accessor for REMNavigationSpecifier);
  v145 = v47;
  sub_2301B75B4(v146, v47, type metadata accessor for REMNavigationSpecifier);
  v146 = v46;
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v48 = v146;
      sub_2301B75B4(v146, v40, type metadata accessor for REMNavigationSpecifier);
      v77 = *v40;
      v76 = *(v40 + 1);
      v78 = v40[16];
      v79 = v145;
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        goto LABEL_25;
      }

      goto LABEL_34;
    case 2u:
      v48 = v146;
      sub_2301B75B4(v146, v37, type metadata accessor for REMNavigationSpecifier);
      v77 = *v37;
      v76 = *(v37 + 1);
      v78 = v37[16];
      v79 = v145;
      if (swift_getEnumCaseMultiPayload() != 2)
      {
LABEL_34:
        sub_2301BA1A8(v76, v78);

        goto LABEL_67;
      }

LABEL_25:
      v81 = *v79;
      v80 = *(v79 + 8);
      v82 = *(v79 + 16);
      sub_23004CBA4(0, &qword_280C9B980);
      v83 = sub_230310448();

      if (v83)
      {
        v150 = v76;
        LOBYTE(v151) = v78;
        v147 = v80;
        LOBYTE(v148) = v82;
        v52 = _s19ReminderKitInternal22REMNavigationSpecifierO08ListPathE0O2eeoiySbAE_AEtFZ_0(&v150, &v147);
        sub_2301BA1A8(v80, v82);
        sub_2301BA1A8(v76, v78);
        goto LABEL_7;
      }

      sub_2301BA1A8(v80, v82);
      sub_2301BA1A8(v76, v78);
      goto LABEL_80;
    case 3u:
      v48 = v146;
      sub_2301B75B4(v146, v34, type metadata accessor for REMNavigationSpecifier);
      v93 = *v34;
      v92 = *(v34 + 1);
      v94 = v34[16];
      v95 = v145;
      if (swift_getEnumCaseMultiPayload() == 3)
      {
        v96 = *v95;
        v97 = *(v95 + 8);
        v98 = *(v95 + 16);
        v150 = v93;
        v151 = v92;
        v152 = v94;
        v147 = v96;
        v148 = v97;
        v149 = v98;
        v52 = _s19ReminderKitInternal22REMNavigationSpecifierO011NewListPathE0O2eeoiySbAE_AEtFZ_0(&v150, &v147);
        sub_230052D78(v96, v97, v98);
        sub_230052D78(v93, v92, v94);
        goto LABEL_7;
      }

      sub_230052D78(v93, v92, v94);
      goto LABEL_67;
    case 4u:
      v48 = v146;
      sub_2301B75B4(v146, v31, type metadata accessor for REMNavigationSpecifier);
      v49 = *v31;
      v63 = *(v31 + 4);
      v64 = v31[10];
      v65 = v145;
      if (swift_getEnumCaseMultiPayload() != 4)
      {
        goto LABEL_46;
      }

      v66 = *v65;
      v67 = *(v65 + 8);
      v68 = *(v65 + 10);
      sub_23004CBA4(0, &qword_280C9B980);
      v69 = sub_230310448();

      if ((v69 & 1) == 0)
      {
        goto LABEL_80;
      }

      LOWORD(v150) = v63;
      BYTE2(v150) = v64;
      LOWORD(v147) = v67;
      BYTE2(v147) = v68;
      v52 = _s19ReminderKitInternal22REMNavigationSpecifierO0a4PathE0O2eeoiySbAE_AEtFZ_0(&v150, &v147);
      goto LABEL_7;
    case 5u:
      v48 = v146;
      sub_2301B75B4(v146, v28, type metadata accessor for REMNavigationSpecifier);
      v49 = *v28;
      v108 = v28[8];
      v109 = v145;
      if (swift_getEnumCaseMultiPayload() != 5)
      {
        goto LABEL_46;
      }

      v110 = *v109;
      v111 = *(v109 + 8);
      sub_23004CBA4(0, &qword_280C9B980);
      v112 = sub_230310448();

      if ((v112 & 1) == 0)
      {
        goto LABEL_80;
      }

      v113 = v108 ^ v111;
      v114 = v48;
      goto LABEL_52;
    case 6u:
      sub_2301B75B4(v146, v25, type metadata accessor for REMNavigationSpecifier);
      v116 = *v25;
      v117 = v25[8];
      v118 = v145;
      if (swift_getEnumCaseMultiPayload() != 6)
      {

        v48 = v146;
        goto LABEL_67;
      }

      v119 = *v118;
      v120 = *(v118 + 8);
      sub_23004CBA4(0, &qword_280C9B980);
      v121 = sub_230310448();

      if ((v121 & 1) == 0)
      {
        sub_2301B761C(v146, type metadata accessor for REMNavigationSpecifier);
        goto LABEL_68;
      }

      v113 = v117 ^ v120;
      v114 = v146;
LABEL_52:
      sub_2301B761C(v114, type metadata accessor for REMNavigationSpecifier);
      v52 = v113 ^ 1;
      return v52 & 1;
    case 7u:
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v48 = v146;
      if (EnumCaseMultiPayload != 7)
      {
        goto LABEL_67;
      }

      goto LABEL_60;
    case 8u:
      v48 = v146;
      v128 = v134;
      sub_2301B75B4(v146, v134, type metadata accessor for REMNavigationSpecifier);
      v54 = *v128;
      v55 = *(v128 + 8);
      v56 = v145;
      if (swift_getEnumCaseMultiPayload() != 8)
      {
        goto LABEL_9;
      }

      goto LABEL_5;
    case 9u:
      v48 = v146;
      v75 = v135;
      sub_2301B75B4(v146, v135, type metadata accessor for REMNavigationSpecifier);
      v54 = *v75;
      v55 = *(v75 + 8);
      v56 = v145;
      if (swift_getEnumCaseMultiPayload() != 9)
      {
        goto LABEL_9;
      }

      goto LABEL_5;
    case 0xAu:
      v48 = v146;
      v123 = v136;
      sub_2301B75B4(v146, v136, type metadata accessor for REMNavigationSpecifier);
      v124 = *v123;
      v55 = *(v123 + 8);
      v125 = v145;
      if (swift_getEnumCaseMultiPayload() == 10)
      {
        v126 = *v125;
        v127 = *(v125 + 8);
        v150 = v124;
        LOBYTE(v151) = v55;
        v147 = v126;
        LOBYTE(v148) = v127;
        v52 = _s19ReminderKitInternal22REMNavigationSpecifierO013SmartListPathE0O2eeoiySbAE_AEtFZ_0(&v150, &v147);
        sub_230050F40(v126, v127);
        v59 = v124;
        goto LABEL_6;
      }

      v61 = v124;
      goto LABEL_10;
    case 0xBu:
      v48 = v146;
      v62 = v137;
      sub_2301B75B4(v146, v137, type metadata accessor for REMNavigationSpecifier);
      v54 = *v62;
      v55 = *(v62 + 8);
      v56 = v145;
      if (swift_getEnumCaseMultiPayload() != 11)
      {
        goto LABEL_9;
      }

      goto LABEL_5;
    case 0xCu:
      v48 = v146;
      v70 = v138;
      sub_2301B75B4(v146, v138, type metadata accessor for REMNavigationSpecifier);
      v72 = *v70;
      v71 = v70[1];
      v73 = v145;
      if (swift_getEnumCaseMultiPayload() != 12)
      {

        goto LABEL_67;
      }

      v74 = v73[1];
      if (!v71)
      {

        if (!v74)
        {

          goto LABEL_60;
        }

        goto LABEL_75;
      }

      if (!v74)
      {

LABEL_75:

        goto LABEL_80;
      }

      if (v72 == *v73 && v71 == v74)
      {

        goto LABEL_60;
      }

      v131 = sub_230311048();

      if ((v131 & 1) == 0)
      {
        goto LABEL_80;
      }

LABEL_60:
      sub_2301B761C(v48, type metadata accessor for REMNavigationSpecifier);
      v52 = 1;
      return v52 & 1;
    case 0xDu:
      v48 = v146;
      v115 = v139;
      sub_2301B75B4(v146, v139, type metadata accessor for REMNavigationSpecifier);
      v54 = *v115;
      v55 = *(v115 + 8);
      v56 = v145;
      if (swift_getEnumCaseMultiPayload() != 13)
      {
        goto LABEL_9;
      }

      goto LABEL_5;
    case 0xEu:
      v48 = v146;
      v60 = v140;
      sub_2301B75B4(v146, v140, type metadata accessor for REMNavigationSpecifier);
      v54 = *v60;
      v55 = *(v60 + 8);
      v56 = v145;
      if (swift_getEnumCaseMultiPayload() != 14)
      {
        goto LABEL_9;
      }

      goto LABEL_5;
    case 0xFu:
      v48 = v146;
      v84 = v141;
      sub_2301B75B4(v146, v141, type metadata accessor for REMNavigationSpecifier);
      v86 = *v84;
      v85 = *(v84 + 8);
      v87 = *(v84 + 16);
      v88 = v145;
      if (swift_getEnumCaseMultiPayload() == 15)
      {
        v89 = *v88;
        v90 = *(v88 + 8);
        v91 = *(v88 + 16);
        v150 = v86;
        v151 = v85;
        v152 = v87;
        v147 = v89;
        v148 = v90;
        v149 = v91;
        v52 = _s19ReminderKitInternal22REMNavigationSpecifierO010TaggedPathE0O2eeoiySbAE_AEtFZ_0(&v150, &v147);
        sub_2301BA178(v89);
        sub_2301BA178(v86);
        goto LABEL_7;
      }

      sub_2301BA178(v86);
      goto LABEL_67;
    case 0x10u:
      v48 = v146;
      v53 = v142;
      sub_2301B75B4(v146, v142, type metadata accessor for REMNavigationSpecifier);
      v54 = *v53;
      v55 = *(v53 + 8);
      v56 = v145;
      if (swift_getEnumCaseMultiPayload() == 16)
      {
LABEL_5:
        v57 = *v56;
        v58 = *(v56 + 8);
        v150 = v54;
        LOBYTE(v151) = v55;
        v147 = v57;
        LOBYTE(v148) = v58;
        v52 = _s19ReminderKitInternal22REMNavigationSpecifierO013SmartListPathE0O2eeoiySbAE_AEtFZ_0(&v150, &v147);
        sub_230050F40(v57, v58);
        v59 = v54;
LABEL_6:
        sub_230050F40(v59, v55);
        goto LABEL_7;
      }

LABEL_9:
      v61 = v54;
LABEL_10:
      sub_230050F40(v61, v55);
      goto LABEL_67;
    case 0x11u:
      v48 = v146;
      v100 = v143;
      sub_2301B75B4(v146, v143, type metadata accessor for REMNavigationSpecifier);
      v101 = v145;
      if (swift_getEnumCaseMultiPayload() != 17)
      {
        sub_2301B761C(v100, type metadata accessor for REMiCloudSharedItemSpecifier.PublicTemplate);
LABEL_67:
        sub_230061918(v48, &qword_27DB166B0);
        goto LABEL_68;
      }

      v102 = v133;
      sub_2301B752C(v101, v133, type metadata accessor for REMiCloudSharedItemSpecifier.PublicTemplate);
      if ((sub_23030EB98() & 1) == 0)
      {
        goto LABEL_79;
      }

      v103 = *(v132 + 20);
      v104 = (v100 + v103);
      v105 = *(v100 + v103 + 8);
      v106 = (v102 + v103);
      v107 = v106[1];
      if (v105)
      {
        if (v107 && (*v104 == *v106 && v105 == v107 || (sub_230311048() & 1) != 0))
        {
          goto LABEL_42;
        }
      }

      else if (!v107)
      {
LABEL_42:
        sub_2301B761C(v102, type metadata accessor for REMiCloudSharedItemSpecifier.PublicTemplate);
        sub_2301B761C(v100, type metadata accessor for REMiCloudSharedItemSpecifier.PublicTemplate);
        goto LABEL_60;
      }

LABEL_79:
      sub_2301B761C(v102, type metadata accessor for REMiCloudSharedItemSpecifier.PublicTemplate);
      sub_2301B761C(v100, type metadata accessor for REMiCloudSharedItemSpecifier.PublicTemplate);
LABEL_80:
      sub_2301B761C(v48, type metadata accessor for REMNavigationSpecifier);
LABEL_68:
      v52 = 0;
      return v52 & 1;
    case 0x12u:
      v122 = swift_getEnumCaseMultiPayload();
      v48 = v146;
      if (v122 != 18)
      {
        goto LABEL_67;
      }

      goto LABEL_60;
    case 0x13u:
      v129 = swift_getEnumCaseMultiPayload();
      v48 = v146;
      if (v129 == 19)
      {
        goto LABEL_60;
      }

      goto LABEL_67;
    default:
      v48 = v146;
      sub_2301B75B4(v146, v42, type metadata accessor for REMNavigationSpecifier);
      v49 = *v42;
      v50 = v145;
      if (swift_getEnumCaseMultiPayload())
      {
LABEL_46:

        goto LABEL_67;
      }

      v51 = *v50;
      sub_23004CBA4(0, &qword_280C9B980);
      v52 = sub_230310448();

LABEL_7:
      sub_2301B761C(v48, type metadata accessor for REMNavigationSpecifier);
      return v52 & 1;
  }
}

void *sub_2301B9378(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB16750);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v9 - v5;
  v7 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2301BC770();
  sub_230311428();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB166E0);
    sub_2301BC9BC(&qword_27DB16758, &qword_27DB16680);
    sub_230310CE8();
    (*(v4 + 8))(v6, v3);
    v7 = v9[1];
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return v7;
}

void *sub_2301B9534(uint64_t a1)
{
  type metadata accessor for QueryItems();
  v2 = swift_allocObject();
  *(v2 + 16) = a1;
  v3 = type metadata accessor for InternalDecoder();
  v4 = swift_allocObject();
  v5 = MEMORY[0x277D84F98];
  v4[2] = MEMORY[0x277D84F90];
  v4[3] = v5;
  v4[4] = v2;
  v8[3] = v3;
  v8[4] = sub_2301BC6D4(&qword_27DB15658, type metadata accessor for InternalDecoder);
  v8[0] = v4;

  v6 = sub_2301B9378(v8);

  return v6;
}

uint64_t sub_2301B9658(uint64_t a1)
{
  type metadata accessor for QueryItems();
  v3 = swift_allocObject();
  *(v3 + 16) = a1;
  type metadata accessor for InternalDecoder();
  v4 = swift_allocObject();
  v5 = MEMORY[0x277D84F98];
  v4[2] = MEMORY[0x277D84F90];
  v4[3] = v5;
  v4[4] = v3;
  sub_2301BC6D4(&qword_27DB15658, type metadata accessor for InternalDecoder);
  sub_2301BCA58();

  result = sub_23030FEF8();
  if (!v1)
  {
    return v7;
  }

  return result;
}

uint64_t sub_2301B9760(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB16778);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v11[-v5];
  v7 = a1[3];
  __swift_project_boxed_opaque_existential_1(a1, v7);
  sub_2301BC86C();
  sub_230311428();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v11[31] = 0;
    v8 = sub_230310C58();
    v11[30] = 1;
    v10 = sub_230310C58();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB13DE0);
    v11[15] = 2;
    sub_230059F7C(&qword_280C98850);
    sub_230310C88();
    (*(v4 + 8))(v6, v3);
    __swift_destroy_boxed_opaque_existential_1(a1);
    return v8 | (v10 << 8);
  }

  return v7;
}

uint64_t sub_2301B9980(uint64_t a1)
{
  type metadata accessor for QueryItems();
  v2 = swift_allocObject();
  *(v2 + 16) = a1;
  v3 = type metadata accessor for InternalDecoder();
  v4 = swift_allocObject();
  v5 = MEMORY[0x277D84F98];
  v4[2] = MEMORY[0x277D84F90];
  v4[3] = v5;
  v4[4] = v2;
  v8[3] = v3;
  v8[4] = sub_2301BC6D4(&qword_27DB15658, type metadata accessor for InternalDecoder);
  v8[0] = v4;

  v6 = sub_2301B9760(v8);

  return v6;
}

uint64_t sub_2301B9AAC(uint64_t a1, void (*a2)(void))
{
  type metadata accessor for QueryItems();
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  type metadata accessor for InternalDecoder();
  v6 = swift_allocObject();
  v7 = MEMORY[0x277D84F98];
  v6[2] = MEMORY[0x277D84F90];
  v6[3] = v7;
  v6[4] = v5;
  sub_2301BC6D4(&qword_27DB15658, type metadata accessor for InternalDecoder);
  a2();

  result = sub_23030FEF8();
  if (!v2)
  {
    return v9;
  }

  return result;
}

uint64_t sub_2301B9BC0(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB16760);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v10[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2301BC7C4();
  sub_230311428();
  if (v1)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v10[15] = 0;
  v7 = sub_230310CA8();
  v10[14] = 1;
  v8 = sub_230310C58();
  (*(v4 + 8))(v6, v3);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v7 & 1 | (v8 << 8);
}

uint64_t sub_2301B9D68()
{
  v0 = sub_230311228();

  if (v0 >= 0x14)
  {
    return 20;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_2301B9DBC()
{
  v0 = sub_230311228();

  if (v0 >= 0x13)
  {
    return 19;
  }

  else
  {
    return v0;
  }
}

size_t sub_2301B9E10(unint64_t a1)
{
  v2 = type metadata accessor for ReminderUUID(0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!(a1 >> 62))
  {
    v6 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v6)
    {
      goto LABEL_3;
    }

LABEL_13:

    return MEMORY[0x277D84F90];
  }

  v6 = sub_2303106D8();
  if (!v6)
  {
    goto LABEL_13;
  }

LABEL_3:
  v16 = MEMORY[0x277D84F90];
  result = sub_23009EE2C(0, v6 & ~(v6 >> 63), 0);
  if ((v6 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v9 = v16;
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v10 = MEMORY[0x231912650](v8, a1);
      }

      else
      {
        v10 = *(a1 + 8 * v8 + 32);
      }

      v11 = v10;
      v12 = [v10 uuid];
      sub_23030EBA8();

      v16 = v9;
      v14 = *(v9 + 16);
      v13 = *(v9 + 24);
      if (v14 >= v13 >> 1)
      {
        sub_23009EE2C(v13 > 1, v14 + 1, 1);
        v9 = v16;
      }

      ++v8;
      *(v9 + 16) = v14 + 1;
      sub_2301B752C(v5, v9 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v14, type metadata accessor for ReminderUUID);
    }

    while (v6 != v8);

    return v9;
  }

  __break(1u);
  return result;
}

uint64_t sub_2301BA010(unint64_t *a1)
{
  v1 = *a1;
  if (!*a1)
  {
    v2 = 2;
    v3 = 1;
    return v3 | (v2 << 8);
  }

  if (v1 == 1)
  {
    v2 = 1;
    v3 = 2;
    return v3 | (v2 << 8);
  }

  v5 = sub_23015BDB4(v4, v1);
  v6 = *(v5 + 16);
  if (!v6)
  {
    v7 = MEMORY[0x277D84F90];
LABEL_9:
    v10 = v7;
    sub_230121784(&v10);

    sub_230122CDC(v1);
    v3 = 2;
    v2 = 2;
    return v3 | (v2 << 8);
  }

  v7 = sub_23009D850(v6, 0);
  v9 = sub_23009DE30(&v10, v7 + 4, v6, v5);

  sub_2300F525C();
  if (v9 == v6)
  {
    goto LABEL_9;
  }

  __break(1u);

  __break(1u);
  return result;
}

unint64_t sub_2301BA178(unint64_t result)
{
  if (result != 2)
  {
    return sub_230122CDC(result);
  }

  return result;
}

id sub_2301BA188(id result, char a2)
{
  if (a2 == 2)
  {
  }

  if (a2 == 1)
  {
    return result;
  }

  return result;
}

void sub_2301BA1A8(id a1, char a2)
{
  if (a2 == 2)
  {
  }

  else if (a2 == 1)
  {
  }
}

unint64_t sub_2301BA1CC()
{
  result = qword_27DB16648;
  if (!qword_27DB16648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB16648);
  }

  return result;
}

unint64_t sub_2301BA224()
{
  result = qword_27DB16650;
  if (!qword_27DB16650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB16650);
  }

  return result;
}

unint64_t sub_2301BA27C()
{
  result = qword_27DB16658;
  if (!qword_27DB16658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB16658);
  }

  return result;
}

unint64_t sub_2301BA2D4()
{
  result = qword_27DB16660;
  if (!qword_27DB16660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB16660);
  }

  return result;
}

unint64_t sub_2301BA32C()
{
  result = qword_27DB16668;
  if (!qword_27DB16668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB16668);
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for REMNavigationSpecifier(uint64_t *a1, char *a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) == 0)
  {
    v6 = *(a3 - 8);
    switch(swift_getEnumCaseMultiPayload())
    {
      case 0u:
        v7 = *a2;
        *a1 = *a2;
        v8 = v7;
        goto LABEL_18;
      case 1u:
      case 2u:
        v12 = *a2;
        v13 = *(a2 + 1);
        *a1 = *a2;
        v14 = a2[16];
        v15 = v12;
        sub_2301BA188(v13, v14);
        a1[1] = v13;
        *(a1 + 16) = v14;
        goto LABEL_18;
      case 3u:
        v19 = *a2;
        v20 = *(a2 + 1);
        v21 = a2[16];
        sub_23014FFB8(v19, v20, v21);
        *a1 = v19;
        a1[1] = v20;
        *(a1 + 16) = v21;
        goto LABEL_18;
      case 4u:
        v10 = *a2;
        *a1 = *a2;
        *(a1 + 4) = *(a2 + 4);
        *(a1 + 10) = a2[10];
        v11 = v10;
        goto LABEL_18;
      case 5u:
      case 6u:
        v16 = *a2;
        *a1 = *a2;
        *(a1 + 8) = a2[8];
        v17 = v16;
        goto LABEL_18;
      case 8u:
      case 9u:
      case 0xAu:
      case 0xBu:
      case 0xDu:
      case 0xEu:
      case 0x10u:
        v24 = *a2;
        v25 = a2[8];
        sub_230050BA4(v24, v25);
        *a1 = v24;
        *(a1 + 8) = v25;
        goto LABEL_18;
      case 0xCu:
        v18 = *(a2 + 1);
        *a1 = *a2;
        a1[1] = v18;

        goto LABEL_18;
      case 0xFu:
        if (*a2 <= 2uLL)
        {
          *a1 = *a2;
          *(a1 + 16) = a2[16];
        }

        else
        {
          v31 = *(a2 + 1);
          *a1 = *a2;
          a1[1] = v31;
          *(a1 + 16) = a2[16];
        }

        goto LABEL_18;
      case 0x11u:
        v26 = sub_23030EBB8();
        (*(*(v26 - 8) + 16))(a1, a2, v26);
        v27 = *(type metadata accessor for REMiCloudSharedItemSpecifier.PublicTemplate(0) + 20);
        v28 = (a1 + v27);
        v29 = &a2[v27];
        v30 = *(v29 + 1);
        *v28 = *v29;
        v28[1] = v30;

LABEL_18:
        swift_storeEnumTagMultiPayload();
        return a1;
      default:
        v22 = *(v6 + 64);

        return memcpy(a1, a2, v22);
    }
  }

  v9 = *a2;
  *a1 = *a2;
  a1 = (v9 + ((v5 + 16) & ~v5));

  return a1;
}

uint64_t *assignWithCopy for REMNavigationSpecifier(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  if (a1 != a2)
  {
    sub_2301B761C(a1, type metadata accessor for REMNavigationSpecifier);
    switch(swift_getEnumCaseMultiPayload())
    {
      case 0u:
        v6 = *a2;
        *a1 = *a2;
        v7 = v6;
        goto LABEL_17;
      case 1u:
      case 2u:
        v11 = *a2;
        *a1 = *a2;
        v12 = a2[1];
        v13 = *(a2 + 16);
        v14 = v11;
        sub_2301BA188(v12, v13);
        a1[1] = v12;
        *(a1 + 16) = v13;
        goto LABEL_17;
      case 3u:
        v17 = *a2;
        v18 = a2[1];
        v19 = *(a2 + 16);
        sub_23014FFB8(v17, v18, v19);
        *a1 = v17;
        a1[1] = v18;
        *(a1 + 16) = v19;
        goto LABEL_17;
      case 4u:
        v8 = *a2;
        *a1 = *a2;
        v9 = *(a2 + 4);
        *(a1 + 10) = *(a2 + 10);
        *(a1 + 4) = v9;
        v10 = v8;
        goto LABEL_17;
      case 5u:
      case 6u:
        v15 = *a2;
        *a1 = *a2;
        *(a1 + 8) = *(a2 + 8);
        v16 = v15;
        goto LABEL_17;
      case 8u:
      case 9u:
      case 0xAu:
      case 0xBu:
      case 0xDu:
      case 0xEu:
      case 0x10u:
        v23 = *a2;
        v24 = *(a2 + 8);
        sub_230050BA4(v23, v24);
        *a1 = v23;
        *(a1 + 8) = v24;
        goto LABEL_17;
      case 0xCu:
        *a1 = *a2;
        a1[1] = a2[1];

        goto LABEL_17;
      case 0xFu:
        if (*a2 <= 2)
        {
          v22 = *a2;
          *(a1 + 16) = *(a2 + 16);
          *a1 = v22;
        }

        else
        {
          *a1 = *a2;
          a1[1] = a2[1];
          *(a1 + 16) = *(a2 + 16);
        }

        goto LABEL_17;
      case 0x11u:
        v25 = sub_23030EBB8();
        (*(*(v25 - 8) + 16))(a1, a2, v25);
        v26 = *(type metadata accessor for REMiCloudSharedItemSpecifier.PublicTemplate(0) + 20);
        v27 = (a1 + v26);
        v28 = a2 + v26;
        *v27 = *v28;
        v27[1] = *(v28 + 1);

LABEL_17:
        swift_storeEnumTagMultiPayload();
        return a1;
      default:
        v20 = *(*(a3 - 8) + 64);

        return memcpy(a1, a2, v20);
    }
  }

  return a1;
}

char *initializeWithTake for REMNavigationSpecifier(char *a1, char *a2, uint64_t a3)
{
  if (swift_getEnumCaseMultiPayload() == 17)
  {
    v6 = sub_23030EBB8();
    (*(*(v6 - 8) + 32))(a1, a2, v6);
    v7 = type metadata accessor for REMiCloudSharedItemSpecifier.PublicTemplate(0);
    *&a1[*(v7 + 20)] = *&a2[*(v7 + 20)];
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  else
  {
    v9 = *(*(a3 - 8) + 64);

    return memcpy(a1, a2, v9);
  }
}

char *assignWithTake for REMNavigationSpecifier(char *a1, char *a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return a1;
  }

  sub_2301B761C(a1, type metadata accessor for REMNavigationSpecifier);
  if (swift_getEnumCaseMultiPayload() == 17)
  {
    v6 = sub_23030EBB8();
    (*(*(v6 - 8) + 32))(a1, a2, v6);
    v7 = type metadata accessor for REMiCloudSharedItemSpecifier.PublicTemplate(0);
    *&a1[*(v7 + 20)] = *&a2[*(v7 + 20)];
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  v9 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v9);
}

uint64_t assignWithTake for REMNavigationSpecifier.ListPathSpecifier(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  v4 = *a1;
  *a1 = *a2;
  v5 = *(a1 + 8);
  *(a1 + 8) = v3;
  sub_2301BA1A8(v4, v5);
  return a1;
}

uint64_t getEnumTagSinglePayload for REMNavigationSpecifier.ListPathSpecifier(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 9))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 8);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for REMNavigationSpecifier.ListPathSpecifier(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 8) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_2301BAEC4(uint64_t a1)
{
  if (*(a1 + 8) <= 2u)
  {
    return *(a1 + 8);
  }

  else
  {
    return (*a1 + 3);
  }
}

uint64_t sub_2301BAEDC(uint64_t result, unsigned int a2)
{
  if (a2 >= 3)
  {
    *result = a2 - 3;
    LOBYTE(a2) = 3;
  }

  *(result + 8) = a2;
  return result;
}

uint64_t __swift_memcpy3_1(uint64_t result, __int16 *a2)
{
  v2 = *a2;
  *(result + 2) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for REMNavigationSpecifier.ReminderPathSpecifier(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF)
  {
    if ((a2 + 33554177) >> 24)
    {
      v2 = *(a1 + 3);
      if (*(a1 + 3))
      {
        return (*a1 | (*(a1 + 2) << 16) | (v2 << 24)) - 16776961;
      }
    }

    else
    {
      v2 = *(a1 + 3);
      if (*(a1 + 3))
      {
        return (*a1 | (*(a1 + 2) << 16) | (v2 << 24)) - 16776961;
      }
    }
  }

  v4 = *(a1 + 2);
  if (v4 <= 1)
  {
    v5 = -1;
  }

  else
  {
    v5 = v4 ^ 0xFF;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for REMNavigationSpecifier.ReminderPathSpecifier(uint64_t result, unsigned int a2, unsigned int a3)
{
  if ((a3 + 33554177) >> 24)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  if (a3 <= 0xFE)
  {
    v3 = 0;
  }

  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    *(result + 2) = (a2 - 255) >> 16;
    if (v3)
    {
      v4 = ((a2 - 255) >> 24) + 1;
      if (v3 == 2)
      {
        *(result + 3) = v4;
      }

      else
      {
        *(result + 3) = v4;
      }
    }
  }

  else
  {
    if (!v3)
    {
      goto LABEL_10;
    }

    if (v3 == 2)
    {
      *(result + 3) = 0;
LABEL_10:
      if (!a2)
      {
        return result;
      }

LABEL_16:
      *(result + 2) = -a2;
      return result;
    }

    *(result + 3) = 0;
    if (a2)
    {
      goto LABEL_16;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for REMNavigationSpecifier.ReminderPathSpecifier.ShowInListPathSpecifier(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_20;
  }

  v2 = a2 + 65282;
  if (a2 + 65282 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (v2 < 0xFF0000)
  {
    v3 = 1;
  }

  if (v2 >= 0x10000)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4 <= 1)
  {
    if (!v4)
    {
      goto LABEL_20;
    }

    v5 = *(a1 + 2);
    if (!*(a1 + 2))
    {
      goto LABEL_20;
    }

    return (*a1 | (v5 << 16)) - 65282;
  }

  if (v4 == 2)
  {
    v5 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v5 << 16)) - 65282;
    }
  }

  else
  {
    v5 = *(a1 + 1);
    if (v5)
    {
      return (*a1 | (v5 << 16)) - 65282;
    }
  }

LABEL_20:
  v7 = *a1;
  v8 = v7 >= 2;
  v9 = (v7 + 2147483646) & 0x7FFFFFFF;
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

_WORD *storeEnumTagSinglePayload for REMNavigationSpecifier.ReminderPathSpecifier.ShowInListPathSpecifier(_WORD *result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 65282;
  if (a3 + 65282 <= 0xFFFEFFFF)
  {
    v4 = 2;
  }

  else
  {
    v4 = 4;
  }

  if (v3 < 0xFF0000)
  {
    v4 = 1;
  }

  if (v3 >= 0x10000)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 < 0xFE)
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 16) + 1;
    *result = a2 - 254;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        result[1] = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 2) = v6;
    }

    return result;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_22;
      }

      return result;
    }

    result[1] = 0;
  }

  else if (v5)
  {
    *(result + 2) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_22:
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_2301BB1A0(unsigned __int8 *a1)
{
  v1 = *a1;
  v2 = v1 >= 2;
  v3 = (v1 + 2147483646) & 0x7FFFFFFF;
  if (v2)
  {
    return (v3 + 1);
  }

  else
  {
    return 0;
  }
}

_WORD *sub_2301BB1BC(_WORD *result, unsigned int a2)
{
  if (a2 > 0xFE)
  {
    *result = a2 - 255;
  }

  else if (a2)
  {
    *result = a2 + 1;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for REMNavigationSpecifier.ReminderPathSpecifier.DetailSection(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF8)
  {
    goto LABEL_20;
  }

  v2 = a2 + 8;
  if (a2 + 8 >= 0xFFFF00)
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

  if (v4 > 1)
  {
    if (v4 == 2)
    {
      v5 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_20;
      }
    }

    else
    {
      v5 = *(a1 + 1);
      if (!v5)
      {
        goto LABEL_20;
      }
    }

    return (*a1 | (v5 << 8)) - 8;
  }

  if (v4)
  {
    v5 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v5 << 8)) - 8;
    }
  }

LABEL_20:
  v7 = *a1;
  if (v7 >= 3)
  {
    v8 = v7 - 2;
  }

  else
  {
    v8 = 0;
  }

  if (v8 >= 7)
  {
    return v8 - 6;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for REMNavigationSpecifier.ReminderPathSpecifier.DetailSection(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 8;
  if (a3 + 8 >= 0xFFFF00)
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

  if (a3 < 0xF8)
  {
    v5 = 0;
  }

  if (a2 > 0xF7)
  {
    v6 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(result + 1) = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 1) = v6;
    }

    return result;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_22;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v5)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_22:
    *result = a2 + 8;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_2301BB358(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 >= 3)
  {
    return v1 - 2;
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_2301BB36C(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 2;
  }

  return result;
}

uint64_t *sub_2301BB3C8(uint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void, void), void (*a5)(uint64_t, uint64_t))
{
  v7 = *a2;
  v8 = *(a2 + 8);
  a4(*a2, v8);
  v9 = *a1;
  *a1 = v7;
  v10 = *(a1 + 8);
  *(a1 + 8) = v8;
  a5(v9, v10);
  return a1;
}

uint64_t getEnumTagSinglePayload for REMNavigationSpecifier.SearchPathSpecifier(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for REMNavigationSpecifier.SearchPathSpecifier(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_2301BB4DC(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *sub_2301BB4F4(void *result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

uint64_t sub_2301BB514(uint64_t result, unint64_t *a2)
{
  v2 = *a2;
  LODWORD(v3) = -1;
  if (*a2 < 0xFFFFFFFF)
  {
    v3 = *a2;
  }

  v4 = v3 + 1;
  v5 = v2 != 1 && v4 > 2;
  if (v5 || v4)
  {
    *result = *a2;
    *(result + 16) = *(a2 + 16);
  }

  else
  {
    v6 = a2[1];
    *result = v2;
    *(result + 8) = v6;
    *(result + 16) = *(a2 + 16);
    v7 = result;

    return v7;
  }

  return result;
}

uint64_t *assignWithCopy for REMNavigationSpecifier.TaggedPathSpecifier(uint64_t *result, unint64_t *a2)
{
  LODWORD(v2) = -1;
  if (*result >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  else
  {
    v3 = *result;
  }

  v4 = v3 + 1;
  v5 = *a2;
  if (*a2 < 0xFFFFFFFF)
  {
    v2 = *a2;
  }

  v6 = v2 + 1;
  v8 = v5 == 1 || v6 < 3;
  if (*result != 1 && v4 > 2)
  {
    if (v8)
    {
LABEL_21:
      if (!v6)
      {
        *result = v5;
        result[1] = a2[1];
        *(result + 16) = *(a2 + 16);
        v11 = result;

        return v11;
      }
    }

LABEL_26:
    v15 = *a2;
    *(result + 16) = *(a2 + 16);
    *result = v15;
    return result;
  }

  if (!v8)
  {
    if (!v4)
    {
      v13 = result;
      v14 = a2;

      a2 = v14;
      result = v13;
    }

    goto LABEL_26;
  }

  if (v4)
  {
    goto LABEL_21;
  }

  v10 = a2;
  if (v6)
  {
    v11 = result;

    v12 = *v10;
    *(v11 + 16) = *(v10 + 16);
    *v11 = v12;
    return v11;
  }

  *result = v5;
  v16 = result;

  v16[1] = *(v10 + 1);

  result = v16;
  *(v16 + 16) = *(v10 + 16);
  return result;
}

uint64_t *assignWithTake for REMNavigationSpecifier.TaggedPathSpecifier(uint64_t *result, unint64_t *a2)
{
  LODWORD(v2) = -1;
  if (*result >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  else
  {
    v3 = *result;
  }

  v4 = v3 + 1;
  v5 = *a2;
  if (*a2 < 0xFFFFFFFF)
  {
    v2 = *a2;
  }

  if (*result != 1 && v4 > 2)
  {
    goto LABEL_19;
  }

  v7 = v2 + 1;
  if (v5 != 1 && v7 > 2)
  {
    if (!v4)
    {
      v11 = result;
      v12 = a2;

      a2 = v12;
      result = v11;
    }

    goto LABEL_19;
  }

  if (v4)
  {
LABEL_19:
    *result = *a2;
    *(result + 16) = *(a2 + 16);
    return result;
  }

  v9 = a2;
  if (v7)
  {
    v10 = result;

    *v10 = *v9;
  }

  else
  {
    *result = v5;
    v10 = result;

    v10[1] = v9[1];
  }

  *(v10 + 16) = *(v9 + 16);
  return v10;
}

uint64_t getEnumTagSinglePayload for REMNavigationSpecifier.TaggedPathSpecifier(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFD && *(a1 + 17))
  {
    return (*a1 + 2147483645);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 < 3)
  {
    v5 = 0;
  }

  if (v5 >= 2)
  {
    return v5 - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for REMNavigationSpecifier.TaggedPathSpecifier(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 2147483645;
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *result = a2 + 2;
    }
  }

  return result;
}

uint64_t sub_2301BB878(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 + 1;
  v3 = v1 - 1;
  if (v2 >= 3)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2301BB89C(uint64_t result, unsigned int a2)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 2147483646;
  }

  else if (a2)
  {
    *result = a2 + 1;
  }

  return result;
}

uint64_t sub_2301BB920(uint64_t a1, uint64_t a2)
{
  v4 = sub_23030EBB8();
  v5 = **(v4 - 8);

  return v5(a1, a2, v4);
}

uint64_t sub_2301BB98C(uint64_t a1)
{
  v2 = sub_23030EBB8();
  v3 = *(*(v2 - 8) + 8);

  return v3(a1, v2);
}

uint64_t sub_2301BB9F0(uint64_t a1, uint64_t a2)
{
  v4 = sub_23030EBB8();
  (*(*(v4 - 8) + 16))(a1, a2, v4);
  return a1;
}

uint64_t sub_2301BBA54(uint64_t a1, uint64_t a2)
{
  v4 = sub_23030EBB8();
  (*(*(v4 - 8) + 24))(a1, a2, v4);
  return a1;
}

uint64_t sub_2301BBAB8(uint64_t a1, uint64_t a2)
{
  v4 = sub_23030EBB8();
  (*(*(v4 - 8) + 32))(a1, a2, v4);
  return a1;
}

uint64_t sub_2301BBB1C(uint64_t a1, uint64_t a2)
{
  v4 = sub_23030EBB8();
  (*(*(v4 - 8) + 40))(a1, a2, v4);
  return a1;
}

uint64_t __swift_get_extra_inhabitant_indexTm_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = a4(0);
  v7 = *(*(v6 - 8) + 48);

  return v7(a1, a2, v6);
}

uint64_t __swift_store_extra_inhabitant_indexTm_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v7 = a5(0);
  v8 = *(*(v7 - 8) + 56);

  return v8(a1, a2, a2, v7);
}

uint64_t sub_2301BBC8C()
{
  result = sub_23030EBB8();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

char *sub_2301BBD18(char *a1, char *a2, int *a3)
{
  v4 = a1;
  v5 = *(*(a3 - 1) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v12 = *a2;
    *v4 = *a2;
    v4 = (v12 + ((v5 + 16) & ~v5));
  }

  else
  {
    *a1 = *a2;
    *(a1 + 1) = *(a2 + 1);
    v7 = a3[6];
    v8 = sub_23030EBB8();
    v9 = *(v8 - 8);
    v10 = *(v9 + 48);

    if (v10(&a2[v7], 1, v8))
    {
      v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14800);
      memcpy(&v4[v7], &a2[v7], *(*(v11 - 8) + 64));
    }

    else
    {
      (*(v9 + 16))(&v4[v7], &a2[v7], v8);
      (*(v9 + 56))(&v4[v7], 0, 1, v8);
    }

    v13 = a3[7];
    v14 = a3[8];
    v15 = *&a2[v13];
    *&v4[v13] = v15;
    *&v4[v14] = *&a2[v14];
    v16 = v15;
  }

  return v4;
}

uint64_t sub_2301BBEBC(uint64_t a1, uint64_t a2)
{

  v4 = *(a2 + 24);
  v5 = sub_23030EBB8();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(a1 + v4, 1, v5))
  {
    (*(v6 + 8))(a1 + v4, v5);
  }
}

uint64_t sub_2301BBF90(uint64_t a1, uint64_t a2, int *a3)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  v6 = a3[6];
  v7 = sub_23030EBB8();
  v8 = *(v7 - 8);
  v9 = *(v8 + 48);

  if (v9(a2 + v6, 1, v7))
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14800);
    memcpy((a1 + v6), (a2 + v6), *(*(v10 - 8) + 64));
  }

  else
  {
    (*(v8 + 16))(a1 + v6, a2 + v6, v7);
    (*(v8 + 56))(a1 + v6, 0, 1, v7);
  }

  v11 = a3[7];
  v12 = a3[8];
  v13 = *(a2 + v11);
  *(a1 + v11) = v13;
  *(a1 + v12) = *(a2 + v12);
  v14 = v13;

  return a1;
}

uint64_t sub_2301BC0E8(uint64_t a1, uint64_t a2, int *a3)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  v6 = a3[6];
  v7 = sub_23030EBB8();
  v8 = *(v7 - 8);
  v9 = *(v8 + 48);
  v10 = v9(a1 + v6, 1, v7);
  v11 = v9(a2 + v6, 1, v7);
  if (!v10)
  {
    if (!v11)
    {
      (*(v8 + 24))(a1 + v6, a2 + v6, v7);
      goto LABEL_7;
    }

    (*(v8 + 8))(a1 + v6, v7);
    goto LABEL_6;
  }

  if (v11)
  {
LABEL_6:
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14800);
    memcpy((a1 + v6), (a2 + v6), *(*(v12 - 8) + 64));
    goto LABEL_7;
  }

  (*(v8 + 16))(a1 + v6, a2 + v6, v7);
  (*(v8 + 56))(a1 + v6, 0, 1, v7);
LABEL_7:
  v13 = a3[7];
  v14 = *(a1 + v13);
  v15 = *(a2 + v13);
  *(a1 + v13) = v15;
  v16 = v15;

  *(a1 + a3[8]) = *(a2 + a3[8]);

  return a1;
}

uint64_t sub_2301BC2B8(uint64_t a1, uint64_t a2, int *a3)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  v6 = a3[6];
  v7 = sub_23030EBB8();
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(a2 + v6, 1, v7))
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14800);
    memcpy((a1 + v6), (a2 + v6), *(*(v9 - 8) + 64));
  }

  else
  {
    (*(v8 + 32))(a1 + v6, a2 + v6, v7);
    (*(v8 + 56))(a1 + v6, 0, 1, v7);
  }

  v10 = a3[8];
  *(a1 + a3[7]) = *(a2 + a3[7]);
  *(a1 + v10) = *(a2 + v10);
  return a1;
}

uint64_t sub_2301BC3EC(uint64_t a1, uint64_t a2, int *a3)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  v6 = a3[6];
  v7 = sub_23030EBB8();
  v8 = *(v7 - 8);
  v9 = *(v8 + 48);
  v10 = v9(a1 + v6, 1, v7);
  v11 = v9(a2 + v6, 1, v7);
  if (!v10)
  {
    if (!v11)
    {
      (*(v8 + 40))(a1 + v6, a2 + v6, v7);
      goto LABEL_7;
    }

    (*(v8 + 8))(a1 + v6, v7);
    goto LABEL_6;
  }

  if (v11)
  {
LABEL_6:
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14800);
    memcpy((a1 + v6), (a2 + v6), *(*(v12 - 8) + 64));
    goto LABEL_7;
  }

  (*(v8 + 32))(a1 + v6, a2 + v6, v7);
  (*(v8 + 56))(a1 + v6, 0, 1, v7);
LABEL_7:
  v13 = a3[7];
  v14 = *(a1 + v13);
  *(a1 + v13) = *(a2 + v13);

  *(a1 + a3[8]) = *(a2 + a3[8]);

  return a1;
}

void sub_2301BC5D0()
{
  sub_2301072D4();
  if (v0 <= 0x3F)
  {
    swift_initStructMetadata();
  }
}

unint64_t sub_2301BC680()
{
  result = qword_27DB16678;
  if (!qword_27DB16678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB16678);
  }

  return result;
}

uint64_t sub_2301BC6D4(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_2301BC71C()
{
  result = qword_27DB166A0;
  if (!qword_27DB166A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB166A0);
  }

  return result;
}

unint64_t sub_2301BC770()
{
  result = qword_27DB166F0;
  if (!qword_27DB166F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB166F0);
  }

  return result;
}

unint64_t sub_2301BC7C4()
{
  result = qword_27DB16700;
  if (!qword_27DB16700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB16700);
  }

  return result;
}

unint64_t sub_2301BC818()
{
  result = qword_27DB16708;
  if (!qword_27DB16708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB16708);
  }

  return result;
}

unint64_t sub_2301BC86C()
{
  result = qword_27DB16718;
  if (!qword_27DB16718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB16718);
  }

  return result;
}

unint64_t sub_2301BC8C0()
{
  result = qword_27DB16720;
  if (!qword_27DB16720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB16720);
  }

  return result;
}

unint64_t sub_2301BC914()
{
  result = qword_27DB16738;
  if (!qword_27DB16738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB16738);
  }

  return result;
}

unint64_t sub_2301BC968()
{
  result = qword_27DB16740;
  if (!qword_27DB16740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB16740);
  }

  return result;
}

uint64_t sub_2301BC9BC(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DB166E0);
    sub_2301BC6D4(a2, type metadata accessor for ReminderUUID);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2301BCA58()
{
  result = qword_27DB16768;
  if (!qword_27DB16768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB16768);
  }

  return result;
}

unint64_t sub_2301BCAAC()
{
  result = qword_27DB16770;
  if (!qword_27DB16770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB16770);
  }

  return result;
}

uint64_t sub_2301BCB00(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

unint64_t sub_2301BCB14()
{
  result = qword_27DB16780;
  if (!qword_27DB16780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB16780);
  }

  return result;
}

uint64_t sub_2301BCBA8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  return a1;
}

uint64_t assignWithCopy for HashtagSpecifierQuery(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 1) = *(a2 + 1);
  *(a1 + 8) = *(a2 + 8);

  return a1;
}

uint64_t assignWithTake for HashtagSpecifierQuery(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  return a1;
}

uint64_t getEnumTagSinglePayload for REMReminderDetailDataView.CheckUpdateResult(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for REMReminderDetailDataView.CheckUpdateResult(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SubtaskQuery(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 16)) - 65281;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 16)) - 65281;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 65281;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

_WORD *storeEnumTagSinglePayload for SubtaskQuery(_WORD *result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 16) + 1;
    *result = a2 - 255;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        result[1] = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 2) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    result[1] = 0;
  }

  else if (v4)
  {
    *(result + 2) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for REMAccountSnapshotSummary.SummaryKey(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xED)
  {
    goto LABEL_17;
  }

  if (a2 + 19 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 19) >> 8 < 0xFF)
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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 19;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 19;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 19;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x14;
  v8 = v6 - 20;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for REMAccountSnapshotSummary.SummaryKey(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 19 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 19) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xED)
  {
    v4 = 0;
  }

  if (a2 > 0xEC)
  {
    v5 = ((a2 - 237) >> 8) + 1;
    *result = a2 + 19;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 19;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_2301BD0A0()
{
  result = qword_27DB16798;
  if (!qword_27DB16798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB16798);
  }

  return result;
}

unint64_t sub_2301BD13C()
{
  result = qword_27DB167B0;
  if (!qword_27DB167B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB167B0);
  }

  return result;
}

unint64_t sub_2301BD194()
{
  result = qword_27DB167B8;
  if (!qword_27DB167B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB167B8);
  }

  return result;
}

unint64_t sub_2301BD1EC()
{
  result = qword_27DB167C0;
  if (!qword_27DB167C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB167C0);
  }

  return result;
}

unint64_t sub_2301BD244()
{
  result = qword_27DB167C8;
  if (!qword_27DB167C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB167C8);
  }

  return result;
}

unint64_t sub_2301BD29C()
{
  result = qword_27DB167D0;
  if (!qword_27DB167D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB167D0);
  }

  return result;
}

unint64_t sub_2301BD2F4()
{
  result = qword_27DB167D8;
  if (!qword_27DB167D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB167D8);
  }

  return result;
}

unint64_t sub_2301BD34C()
{
  result = qword_280C9B248;
  if (!qword_280C9B248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C9B248);
  }

  return result;
}

unint64_t sub_2301BD3A4()
{
  result = qword_280C9B250;
  if (!qword_280C9B250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C9B250);
  }

  return result;
}

unint64_t sub_2301BD3FC()
{
  result = qword_27DB167E0;
  if (!qword_27DB167E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB167E0);
  }

  return result;
}

unint64_t sub_2301BD454()
{
  result = qword_27DB167E8;
  if (!qword_27DB167E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB167E8);
  }

  return result;
}

unint64_t sub_2301BD4AC()
{
  result = qword_27DB167F0;
  if (!qword_27DB167F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB167F0);
  }

  return result;
}

unint64_t sub_2301BD504()
{
  result = qword_27DB167F8;
  if (!qword_27DB167F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB167F8);
  }

  return result;
}

unint64_t sub_2301BD55C()
{
  result = qword_27DB16800;
  if (!qword_27DB16800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB16800);
  }

  return result;
}

unint64_t sub_2301BD5B4()
{
  result = qword_27DB16808;
  if (!qword_27DB16808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB16808);
  }

  return result;
}

unint64_t sub_2301BD60C()
{
  result = qword_27DB16810;
  if (!qword_27DB16810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB16810);
  }

  return result;
}

unint64_t sub_2301BD664()
{
  result = qword_27DB16818;
  if (!qword_27DB16818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB16818);
  }

  return result;
}

unint64_t sub_2301BD6BC()
{
  result = qword_27DB16820;
  if (!qword_27DB16820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB16820);
  }

  return result;
}

unint64_t sub_2301BD714()
{
  result = qword_27DB16828;
  if (!qword_27DB16828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB16828);
  }

  return result;
}

unint64_t sub_2301BD768()
{
  result = qword_27DB16838;
  if (!qword_27DB16838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB16838);
  }

  return result;
}

uint64_t sub_2301BD7BC(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 7105633 && a2 == 0xE300000000000000;
  if (v3 || (sub_230311048() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1701736302 && a2 == 0xE400000000000000 || (sub_230311048() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x736C6562616CLL && a2 == 0xE600000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_230311048();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

unint64_t sub_2301BD8D0()
{
  result = qword_27DB16848;
  if (!qword_27DB16848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB16848);
  }

  return result;
}

unint64_t sub_2301BD924()
{
  result = qword_27DB16858;
  if (!qword_27DB16858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB16858);
  }

  return result;
}

unint64_t sub_2301BD9AC()
{
  result = qword_27DB16878;
  if (!qword_27DB16878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB16878);
  }

  return result;
}

unint64_t sub_2301BDA04()
{
  result = qword_27DB16880;
  if (!qword_27DB16880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB16880);
  }

  return result;
}

unint64_t sub_2301BDA5C()
{
  result = qword_27DB16888;
  if (!qword_27DB16888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB16888);
  }

  return result;
}

unint64_t sub_2301BDAB4()
{
  result = qword_27DB16890;
  if (!qword_27DB16890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB16890);
  }

  return result;
}

unint64_t sub_2301BDB0C()
{
  result = qword_27DB16898;
  if (!qword_27DB16898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB16898);
  }

  return result;
}

unint64_t sub_2301BDB64()
{
  result = qword_27DB168A0;
  if (!qword_27DB168A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB168A0);
  }

  return result;
}

unint64_t sub_2301BDBBC()
{
  result = qword_27DB168A8;
  if (!qword_27DB168A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB168A8);
  }

  return result;
}

unint64_t sub_2301BDC14()
{
  result = qword_27DB168B0;
  if (!qword_27DB168B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB168B0);
  }

  return result;
}

unint64_t sub_2301BDC6C()
{
  result = qword_27DB168B8;
  if (!qword_27DB168B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB168B8);
  }

  return result;
}

void *REMRegExTextClassifier.__allocating_init(modelURL:numOfClasses:labels:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_23030E9C8();
  if (v3)
  {
    v9 = sub_23030E9B8();
    (*(*(v9 - 8) + 8))(a1, v9);
  }

  else
  {
    v10 = v7;
    v11 = v8;
    sub_23030E408();
    swift_allocObject();
    sub_23030E3F8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB168C0);
    sub_2301BDF04();
    sub_23030E3E8();
    v13 = sub_23030E9B8();
    (*(*(v13 - 8) + 8))(a1, v13);

    sub_23005FE3C(v10, v11);
    result = swift_allocObject();
    result[3] = v14;
    result[4] = a2;
    result[2] = a3;
  }

  return result;
}

unint64_t sub_2301BDF04()
{
  result = qword_27DB168C8;
  if (!qword_27DB168C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DB168C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB168C8);
  }

  return result;
}

void REMRegExTextClassifier.predict(_:)(uint64_t a1, uint64_t a2)
{
  REMRegExTextClassifier.predictIndices(_:)(a1, a2);
  if (!v3)
  {
    v5 = *(v4 + 16);
    if (v5)
    {
      v6 = *(v2 + 16);
      v7 = *(v6 + 16);
      v8 = (v4 + 32);
      v9 = MEMORY[0x277D84F90];
      do
      {
        v12 = *v8++;
        v11 = v12;
        if ((v12 & 0x8000000000000000) == 0 && v11 < v7)
        {
          if (v11 >= *(v6 + 16))
          {
            __break(1u);
            return;
          }

          v13 = (v6 + 32 + 16 * v11);
          v14 = *v13;
          v15 = v13[1];

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v9 = sub_23007E928(0, *(v9 + 2) + 1, 1, v9);
          }

          v17 = *(v9 + 2);
          v16 = *(v9 + 3);
          if (v17 >= v16 >> 1)
          {
            v9 = sub_23007E928((v16 > 1), v17 + 1, 1, v9);
          }

          *(v9 + 2) = v17 + 1;
          v10 = &v9[16 * v17];
          *(v10 + 4) = v14;
          *(v10 + 5) = v15;
        }

        --v5;
      }

      while (v5);
    }
  }
}