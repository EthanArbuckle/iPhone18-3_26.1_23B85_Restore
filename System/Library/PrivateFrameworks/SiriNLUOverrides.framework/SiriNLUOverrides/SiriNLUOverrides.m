void *sub_2680878A8@<X0>(uint64_t a1@<X0>, void *(*a2)(uint64_t *__return_ptr)@<X1>, void *a3@<X8>)
{
  result = sub_2680878F0(a1, a2);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

void *sub_2680878F0(uint64_t a1, void *(*a2)(uint64_t *__return_ptr))
{
  result = a2(&v4);
  if (!v2)
  {
    return v4;
  }

  return result;
}

uint64_t static SiriNLOverridePrimaryStore.sharedTrieStore.getter()
{
  if (qword_281319248 != -1)
  {
    OUTLINED_FUNCTION_9_2();
  }

  v0 = qword_281319250;
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_17_1();
  MEMORY[0x28223BE20]();
  os_unfair_lock_lock(v0 + 4);
  sub_268087B04(v1, &v3);
  os_unfair_lock_unlock(v0 + 4);
  return v3;
}

uint64_t sub_2680879E4@<X0>(uint64_t *a1@<X8>)
{
  if (qword_281319230 != -1)
  {
    swift_once();
  }

  result = swift_weakLoadStrong();
  v3 = result;
  if (!result)
  {
    type metadata accessor for SiriNLOverridePrimaryStore();
    v3 = swift_allocObject();
    *(v3 + 16) = 0;
    result = swift_weakAssign();
  }

  *a1 = v3;
  return result;
}

void OUTLINED_FUNCTION_16_2()
{
  *(v3 - 120) = v1;
  *(v3 - 112) = v0;
  *(v3 - 128) = v2;
}

BOOL sub_268087B20()
{
  sub_268087C68(0, &qword_281318F40, &off_279C327C0);

  v1 = sub_268087CF4();
  v2 = v1;
  if (v1)
  {
    v3 = *(v0 + 16);
    *(v0 + 16) = v1;
    v4 = v1;

    sub_2680B424C();
    if (qword_2813194A0 != -1)
    {
      OUTLINED_FUNCTION_0_0();
      swift_once();
    }

    sub_2680B406C();
  }

  else
  {
    sub_2680B425C();
    if (qword_2813194A0 != -1)
    {
      OUTLINED_FUNCTION_0_0();
      swift_once();
    }

    sub_2680B406C();
  }

  return v2 != 0;
}

uint64_t sub_268087C68(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

id sub_268087CF4()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v1 = sub_2680B40BC();

  v2 = [v0 init_];

  return v2;
}

void sub_268087DC0()
{
  OUTLINED_FUNCTION_54();
  v128 = sub_2680B37BC();
  v1 = OUTLINED_FUNCTION_4(v128);
  v131 = v2;
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_6();
  v127 = v6 - v5;
  OUTLINED_FUNCTION_21();
  v126 = sub_2680B386C();
  v7 = OUTLINED_FUNCTION_4(v126);
  v130 = v8;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_14_1();
  v11 = sub_2680B38AC();
  v12 = OUTLINED_FUNCTION_4(v11);
  v105 = v13;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_6();
  v104 = v17 - v16;
  OUTLINED_FUNCTION_21();
  v18 = sub_2680B403C();
  v19 = OUTLINED_FUNCTION_7(v18);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_6();
  v103 = v23 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802492A8, &unk_2680B5680);
  v25 = OUTLINED_FUNCTION_7(v24);
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_3();
  v111 = v28;
  MEMORY[0x28223BE20](v29);
  v31 = &v103 - v30;
  v107 = sub_2680B3E9C();
  v32 = OUTLINED_FUNCTION_4(v107);
  v129 = v33;
  v35 = *(v34 + 64);
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_3();
  v106 = v36;
  MEMORY[0x28223BE20](v37);
  v120 = &v103 - v38;
  OUTLINED_FUNCTION_21();
  v39 = type metadata accessor for SiriNLOverride();
  v40 = OUTLINED_FUNCTION_4(v39);
  v42 = v41;
  v44 = *(v43 + 64);
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_6();
  v118 = v46 - v45;
  OUTLINED_FUNCTION_21();
  v47 = sub_2680B3B8C();
  v48 = OUTLINED_FUNCTION_4(v47);
  v50 = v49;
  v52 = *(v51 + 64);
  MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_6();
  v55 = v54 - v53;
  (*(v50 + 104))(v54 - v53, *MEMORY[0x277D5DCD0], v47);
  sub_268088E4C();
  v57 = v56;
  (*(v50 + 8))(v55, v47);
  v117 = *(v57 + 16);
  if (!v117)
  {
LABEL_16:

    OUTLINED_FUNCTION_53();
    return;
  }

  v58 = v42;
  v59 = *(v42 + 80);
  OUTLINED_FUNCTION_33();
  v115 = *(v39 + 60);
  v114 = v60 + v61;
  v119 = (v129 + 32);
  v124 = (v131 + 8);
  v125 = v105 + 16;
  v122 = v105 + 8;
  v123 = v130 + 8;
  v108 = (v129 + 8);
  v62 = v111;
  OUTLINED_FUNCTION_13_1();
  *(v65 - 256) = v39;
  v113 = v42;
  v66 = v118;
  v109 = v31;
  v116 = v63;
  while (v64 < *(v63 + 16))
  {
    v67 = *(v58 + 72);
    v121 = v64;
    OUTLINED_FUNCTION_6_3();
    sub_2680898A4(v68, v66, v69);
    sub_26808B53C(v66 + v115, v62);
    if (__swift_getEnumTagSinglePayload(v62, 1, v42) != 1)
    {
      v102 = *v119;
      v78 = v106;
      (*v119)(v106, v62, v42);
      v102(v31, v78, v42);
      __swift_storeEnumTagSinglePayload(v31, 0, 1, v42);
      goto LABEL_9;
    }

    sub_26808C18C(v62, &qword_2802492A8, &unk_2680B5680);
    v70 = (v66 + *(v39 + 56));
    if (v70[1] >> 60 != 15)
    {
      v71 = v42;
      v72 = *v70;
      v134 = 0;
      v132 = 0u;
      v133 = 0u;
      v73 = OUTLINED_FUNCTION_15_1();
      sub_2680A155C(v73, v74);
      v75 = OUTLINED_FUNCTION_15_1();
      sub_26808A6DC(v75, v76);
      sub_2680B402C();
      sub_26808A748();
      OUTLINED_FUNCTION_15_1();
      sub_2680B404C();
      v100 = OUTLINED_FUNCTION_15_1();
      sub_26808A734(v100, v101);
      __swift_storeEnumTagSinglePayload(v31, 0, 1, v71);
      v102 = *v119;
      v42 = v71;
      v39 = v110;
LABEL_9:
      v102(v120, v31, v42);
      v79 = sub_2680B36FC();
      v80 = *(v79 + 16);
      if (v80)
      {
        v131 = sub_268087C68(0, &unk_281318F50, 0x277CCAC68);
        v81 = v105;
        v82 = *(v105 + 80);
        OUTLINED_FUNCTION_33();
        v112 = v79;
        v42 = v79 + v83;
        v84 = *(v81 + 72);
        v129 = *(v81 + 16);
        v130 = v84;
        v85 = v104;
        do
        {
          (v129)(v85, v42, v11);
          sub_2680B387C();
          v86 = v0;
          v87 = sub_2680B385C();
          v89 = v88;
          v90 = v11;
          v91 = v127;
          sub_2680B37DC();
          v92 = sub_2680B378C();
          (*v124)(v91, v128);
          v93 = sub_268089678(v87, v89, v92 & 1, 0);

          v94 = OUTLINED_FUNCTION_21_1();
          v95(v94);
          v96 = OUTLINED_FUNCTION_20_1();
          v97(v96);
          v0 = v86;
          v11 = v90;
          v42 += v130;
          --v80;
        }

        while (v80);

        v62 = v111;
        OUTLINED_FUNCTION_13_1();
        v39 = *(v98 - 256);
      }

      else
      {

        v62 = v111;
      }

      (*v108)(v120, v42);
      OUTLINED_FUNCTION_4_4();
      v66 = v118;
      sub_26808984C(v118, v99);
      v31 = v109;
      v58 = v113;
      goto LABEL_15;
    }

    OUTLINED_FUNCTION_4_4();
    v66 = v118;
    sub_26808984C(v118, v77);
    __swift_storeEnumTagSinglePayload(v31, 1, 1, v42);
    sub_26808C18C(v31, &qword_2802492A8, &unk_2680B5680);
LABEL_15:
    v64 = v121 + 1;
    v63 = v116;
    if (v121 + 1 == v117)
    {
      goto LABEL_16;
    }
  }

  __break(1u);
}

uint64_t OUTLINED_FUNCTION_2()
{

  return swift_allocObject();
}

uint64_t SiriNLOverridePrimaryStore.__deallocating_deinit()
{
  SiriNLOverridePrimaryStore.deinit();

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

uint64_t SiriNLOverridePrimaryStore.deinit()
{
  sub_2680B423C();
  if (qword_2813194A0 != -1)
  {
    OUTLINED_FUNCTION_0_0();
    swift_once();
  }

  sub_2680B406C();

  return v0;
}

uint64_t *marisa::scoped_array<marisa::scoped_array<char>>::~scoped_array(uint64_t *a1)
{
  v2 = *a1;
  if (*a1)
  {
    v5 = *(v2 - 8);
    v4 = v2 - 8;
    v3 = v5;
    if (v5)
    {
      v6 = 8 * v3;
      do
      {
        v7 = *(v4 + v6);
        if (v7)
        {
          MEMORY[0x26D610280](v7, 0x1000C8077774924);
        }

        v6 -= 8;
      }

      while (v6);
    }

    MEMORY[0x26D610280](v4 - 8, 0x10C80436913F5);
  }

  return a1;
}

uint64_t type metadata accessor for SiriNLOverride()
{
  result = qword_281319630;
  if (!qword_281319630)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_0()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_2_4()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_5()
{
  v2 = *(v0 - 68);

  return sub_2680B406C();
}

uint64_t OUTLINED_FUNCTION_5_2()
{

  return swift_arrayInitWithCopy();
}

uint64_t OUTLINED_FUNCTION_5_3()
{

  return __swift_storeEnumTagSinglePayload(v0, 0, 1, v1);
}

uint64_t OUTLINED_FUNCTION_5_5()
{
  v2 = *(v0 - 120);
  v3 = *(v0 - 200);

  return sub_2680915A8(v2, v3, type metadata accessor for SiriNLOverride);
}

uint64_t OUTLINED_FUNCTION_3_1()
{
  v1 = **(v0 - 160);
  v2 = *(v0 - 184);
  return *(v0 - 192);
}

uint64_t OUTLINED_FUNCTION_3_2()
{

  return sub_2680B2F5C();
}

uint64_t OUTLINED_FUNCTION_3_4()
{
  v2 = *(v1 - 160);
  v3 = *(*(v1 - 168) + 8);
  return v0;
}

uint64_t sub_268088C60@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  if (qword_281319160 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v4 = off_281319168;
  if (*(off_281319168 + 2) && (v5 = sub_26808CAC0(a1), (v6 & 1) != 0))
  {
    v7 = *(v4[7] + 8 * v5);
  }

  else
  {
    v8 = 0;
  }

  *a2 = v8;
  return swift_endAccess();
}

uint64_t OUTLINED_FUNCTION_8_0(uint64_t a1)
{
  *(v2 - 96) = a1;
  v3 = *(v2 - 112);
  v4 = *(*(v2 - 104) + 8);
  return v1;
}

uint64_t OUTLINED_FUNCTION_8_2()
{

  return sub_2680A3D04(v0, type metadata accessor for OverrideMatchResult);
}

uint64_t OUTLINED_FUNCTION_8_3()
{
  result = v0;
  v3 = *(v1 - 112);
  *(v1 - 120) = *(*(v1 - 120) + 8);
  return result;
}

uint64_t sub_268088DF0(uint64_t a1)
{
  v2 = type metadata accessor for CacheKey();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_268088E4C()
{
  OUTLINED_FUNCTION_54();
  v59 = v0;
  v3 = v2;
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802492C0, &unk_2680B56F0);
  OUTLINED_FUNCTION_7(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v9);
  v11 = &v51 - v10;
  v12 = sub_2680B2F3C();
  v13 = OUTLINED_FUNCTION_4(v12);
  v58 = v14;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_14_1();
  v17 = sub_2680B2EFC();
  v18 = OUTLINED_FUNCTION_4(v17);
  v20 = v19;
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_6();
  v25 = v24 - v23;
  v26 = type metadata accessor for RegexOverrideCache();
  v27 = sub_268089390(v5, v3);
  if (v27)
  {
    v28 = v27;
    sub_2680B423C();
    if (qword_2813194A0 != -1)
    {
      OUTLINED_FUNCTION_0_0();
      swift_once();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280249100, &qword_2680B4FF0);
    OUTLINED_FUNCTION_12_0();
    v29 = swift_allocObject();
    *(v29 + 16) = xmmword_2680B4FE0;
    v30 = *(v28 + 16);
    v31 = MEMORY[0x277D83C10];
    *(v29 + 56) = MEMORY[0x277D83B88];
    *(v29 + 64) = v31;
    *(v29 + 32) = v30;
    sub_2680B406C();
  }

  else
  {
    v54 = v11;
    v55 = v12;
    v52 = v25;
    v53 = v20;
    v56 = v26;
    v57 = v3;
    v32 = *(v59 + 16);
    if (v32)
    {
      v33 = v5;
      sub_2680B2EDC();
      v34 = v32;
      v35 = sub_2680B40BC();

      v36 = [v34 fetchRegexRuleIds:v35 overrideNamespace:sub_2680B3B4C()];

      v37 = sub_2680B41DC();
      v60 = v37;
      sub_2680B2F4C();
      v38 = v54;
      sub_2680B2F2C();
      (*(v58 + 8))(v1, v55);
      v39 = v17;
      EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v38, 1, v17);
      v51 = v34;
      if (EnumTagSinglePayload == 1)
      {
        sub_26808C18C(v38, &qword_2802492C0, &unk_2680B56F0);
      }

      else
      {
        v42 = v52;
        v41 = v53;
        (*(v53 + 32))(v52, v38, v39);
        sub_2680B2EEC();
        v43 = sub_2680B40BC();

        v44 = [v34 fetchRegexRuleIds:v43 overrideNamespace:{sub_2680B3B4C(), v51}];

        v45 = sub_2680B41DC();
        sub_26808ADB0(v45);
        (*(v41 + 8))(v42, v39);
      }

      v46 = v60;

      v47 = sub_26808AFEC(v46);

      sub_2680B423C();
      if (qword_2813194A0 != -1)
      {
        OUTLINED_FUNCTION_0_0();
        swift_once();
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280249100, &qword_2680B4FF0);
      OUTLINED_FUNCTION_12_0();
      v48 = swift_allocObject();
      *(v48 + 16) = xmmword_2680B4FE0;
      v49 = *(v47 + 16);
      v50 = MEMORY[0x277D83C10];
      *(v48 + 56) = MEMORY[0x277D83B88];
      *(v48 + 64) = v50;
      *(v48 + 32) = v49;
      sub_2680B406C();

      sub_26808EE0C(v33, v57);
    }

    else
    {
      sub_2680B425C();
      if (qword_2813194A0 != -1)
      {
        OUTLINED_FUNCTION_0_0();
        swift_once();
      }

      sub_2680B406C();
    }
  }

  OUTLINED_FUNCTION_53();
}

uint64_t sub_268089390(uint64_t a1, uint64_t a2)
{
  v5 = (type metadata accessor for CacheKey() - 8);
  v6 = *(*v5 + 64);
  (MEMORY[0x28223BE20])();
  v7 = OUTLINED_FUNCTION_3_2();
  OUTLINED_FUNCTION_1_1(v7);
  (*(v8 + 16))(v2, a1);
  v9 = v5[7];
  v10 = sub_2680B3B8C();
  OUTLINED_FUNCTION_1_1(v10);
  (*(v11 + 16))(v2 + v9, a2);
  if (qword_281319218 != -1)
  {
    OUTLINED_FUNCTION_0_1();
  }

  v12 = qword_281319220;
  v13 = (MEMORY[0x28223BE20])();
  MEMORY[0x28223BE20](v13);
  os_unfair_lock_lock(v12 + 4);
  sub_268087B04(v14, &v17);
  os_unfair_lock_unlock(v12 + 4);
  v15 = v17;
  sub_268088DF0(v2);
  return v15;
}

uint64_t type metadata accessor for CacheKey()
{
  result = qword_281319000;
  if (!qword_281319000)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_1_3(uint64_t result, uint64_t *a2)
{
  v3 = *(result + 8);
  v4 = *a2;
  return result;
}

uint64_t OUTLINED_FUNCTION_1_5()
{

  return sub_2680A28B4();
}

size_t OUTLINED_FUNCTION_21_0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return sub_26808B1B8(v5, a2, a3, a4, v4);
}

uint64_t OUTLINED_FUNCTION_21_1()
{
  v2 = **(v1 - 208);
  result = v0;
  v4 = *(v1 - 184);
  return result;
}

id sub_268089678(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
    v8 = 0;
  }

  else
  {
    v8 = a3;
  }

  if (qword_281319330 != -1)
  {
    OUTLINED_FUNCTION_1_4();
    swift_once();
  }

  OUTLINED_FUNCTION_2_4();
  os_unfair_lock_lock(&dword_281318FA0);
  swift_endAccess();
  if (qword_281319348 != -1)
  {
    OUTLINED_FUNCTION_0_3();
    swift_once();
  }

  swift_beginAccess();
  v9 = sub_26808B4F4(a1, a2, v8, qword_281319350);
  if (v9)
  {
    v5 = v9;
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    v10 = objc_allocWithZone(MEMORY[0x277CCAC68]);

    v11 = sub_26808B680(a1, a2, v8);
    if (!v4)
    {
      v13 = v11;
      swift_beginAccess();
      v5 = v13;
      swift_isUniquelyReferenced_nonNull_native();
      v14 = qword_281319350;
      sub_268089994(v5, a1, a2, v8);
      qword_281319350 = v14;
      swift_endAccess();
    }
  }

  OUTLINED_FUNCTION_2_4();
  os_unfair_lock_unlock(&dword_281318FA0);
  swift_endAccess();
  return v5;
}

uint64_t sub_26808984C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_9(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_2680898A4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  OUTLINED_FUNCTION_9(v5);
  (*(v6 + 16))(a2, a1);
  return a2;
}

unint64_t sub_268089904(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(v3 + 40);
  sub_2680B452C();
  sub_2680B410C();
  MEMORY[0x26D6100D0](a3);
  sub_2680B454C();
  v6 = OUTLINED_FUNCTION_24();

  return sub_26808B75C(v6, v7, a3, v8);
}

void sub_268089994(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_268089904(a2, a3, a4);
  if (__OFADD__(*(v10 + 16), (v12 & 1) == 0))
  {
    __break(1u);
    goto LABEL_13;
  }

  v13 = v11;
  v14 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280249288, &qword_2680B55B8);
  if ((sub_2680B43AC() & 1) == 0)
  {
    goto LABEL_5;
  }

  v15 = *v5;
  v16 = sub_268089904(a2, a3, a4);
  if ((v14 & 1) != (v17 & 1))
  {
LABEL_13:
    sub_2680B44AC();
    __break(1u);
    return;
  }

  v13 = v16;
LABEL_5:
  v18 = *v5;
  if (v14)
  {
    v19 = v18[7];
    v20 = *(v19 + 8 * v13);
    *(v19 + 8 * v13) = a1;
  }

  else
  {
    sub_26808B838(v13, a2, a3, a4, a1, v18);
  }
}

unint64_t OUTLINED_FUNCTION_12()
{
  v4 = *(v3 - 520);
  *(v4 + 16) = v0;
  return v4 + ((*(v1 + 80) + 32) & ~*(v1 + 80)) + *(v1 + 72) * v2;
}

uint64_t OUTLINED_FUNCTION_6_4()
{
  v2 = *(v0 - 424);
  v3 = *(v0 - 416);

  return sub_26808A734(v2, v3);
}

uint64_t static NSRegularExpression.resetCache()()
{
  if (qword_281319330 != -1)
  {
    OUTLINED_FUNCTION_1_4();
    swift_once();
  }

  swift_beginAccess();
  os_unfair_lock_lock(&dword_281318FA0);
  swift_endAccess();
  if (qword_281319348 != -1)
  {
    OUTLINED_FUNCTION_0_3();
    swift_once();
  }

  swift_beginAccess();
  qword_281319350 = MEMORY[0x277D84F98];

  swift_beginAccess();
  os_unfair_lock_unlock(&dword_281318FA0);
  return swift_endAccess();
}

void static RegexOverrideCache.reset()()
{
  if (qword_281319218 != -1)
  {
    OUTLINED_FUNCTION_0_1();
  }

  v0 = qword_281319220;
  os_unfair_lock_lock((qword_281319220 + 16));
  if (qword_281319160 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  off_281319168 = MEMORY[0x277D84F98];

  os_unfair_lock_unlock(v0 + 4);
}

uint64_t sub_268089E88@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v83 = a6;
  v79 = a5;
  v72 = a3;
  v73 = a4;
  v8 = sub_2680B403C();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v74 = &v65 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802492A8, &unk_2680B5680);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v75 = &v65 - v13;
  v84 = type metadata accessor for SiriNLOverride();
  v14 = *(*(v84 - 1) + 64);
  MEMORY[0x28223BE20](v84);
  v16 = &v65 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_2680B3B5C();
  v76 = *(v17 - 8);
  v77 = v17;
  v18 = *(v76 + 64);
  MEMORY[0x28223BE20](v17);
  v20 = &v65 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_2680B3B8C();
  v78 = *(v21 - 8);
  v22 = v78[8];
  MEMORY[0x28223BE20](v21);
  v24 = &v65 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = *a1;
  v26 = a1[1];
  v27 = sub_2680B40BC();
  v28 = [a2 fetchSerializedNluRequestRule_];

  if (!v28)
  {
    sub_2680B425C();
    if (qword_2813194A0 != -1)
    {
      swift_once();
    }

    sub_2680B406C();
    return __swift_storeEnumTagSinglePayload(v83, 1, 1, v84);
  }

  v80 = sub_2680B2E4C();
  v81 = v29;

  v30 = sub_2680B40BC();
  v31 = [a2 fetchOverrideId_];

  if (!v31)
  {
    sub_2680B425C();
    if (qword_2813194A0 == -1)
    {
      goto LABEL_18;
    }

    goto LABEL_26;
  }

  v71 = v25;
  v70 = sub_2680B40CC();
  v33 = v32;
  v34 = [a2 fetchSerializedUserParse_];
  if (!v34)
  {

    sub_2680B425C();
    if (qword_2813194A0 == -1)
    {
LABEL_18:
      sub_2680B406C();
      sub_26808A810(v80, v81);
      return __swift_storeEnumTagSinglePayload(v83, 1, 1, v84);
    }

LABEL_26:
    swift_once();
    goto LABEL_18;
  }

  v35 = v34;
  v69 = v33;
  v68 = sub_2680B2E4C();
  v67 = v36;

  v37 = [a2 fetchOverrideTimeStamp_];
  v79 = sub_2680B2EDC();
  v66 = v38;
  v39 = v78;
  (v78[13])(v24, *MEMORY[0x277D5DCD0], v21);

  v40 = sub_2680B3B4C();
  (v39[1])(v24, v21);
  if (v40 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_23;
  }

  v78 = v37;
  v41 = v71;
  if (v40 > 0x7FFFFFFF)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v43 = v76;
  v42 = v77;
  (*(v76 + 104))(v20, *MEMORY[0x277D5DCA8], v77);
  v44 = sub_2680B3B4C();
  (*(v43 + 8))(v20, v42);
  if (v44 < 0xFFFFFFFF80000000)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (v44 > 0x7FFFFFFF)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v45 = v84;
  v46 = &v16[v84[14]];
  *v46 = xmmword_2680B5660;
  v47 = v45[15];
  v48 = sub_2680B3E9C();
  v77 = v47;
  __swift_storeEnumTagSinglePayload(&v16[v47], 1, 1, v48);
  v49 = v73;
  *(v16 + 2) = v72;
  *(v16 + 3) = v49;
  *v16 = v41;
  *(v16 + 1) = v26;
  v50 = v66;
  *(v16 + 4) = v79;
  *(v16 + 5) = v50;
  *(v16 + 12) = v40;
  *(v16 + 13) = v44;
  v51 = v45[9];

  sub_2680B2E6C();
  v52 = sub_2680B2E9C();
  __swift_storeEnumTagSinglePayload(&v16[v51], 0, 1, v52);
  v16[v45[10]] = 1;
  v53 = &v16[v45[11]];
  v54 = v69;
  *v53 = v70;
  v53[1] = v54;
  v55 = &v16[v45[12]];
  v56 = v67;
  *v55 = v68;
  v55[1] = v56;
  *&v16[v45[13]] = 1;
  v57 = *v46;
  v58 = *(v46 + 1);
  v60 = v80;
  v59 = v81;
  sub_26808A6DC(v80, v81);
  sub_26808A734(v57, v58);
  *v46 = v60;
  *(v46 + 1) = v59;
  v87 = 0;
  v85 = 0u;
  v86 = 0u;
  sub_26808A6DC(v60, v59);
  sub_2680B402C();
  sub_26808A748();
  v61 = v75;
  v62 = v82;
  sub_2680B404C();
  if (v62)
  {
    sub_2680B425C();
    if (qword_2813194A0 != -1)
    {
      swift_once();
    }

    sub_2680B406C();
    sub_26808A810(v60, v59);
  }

  else
  {
    sub_26808A810(v60, v59);
    __swift_storeEnumTagSinglePayload(v61, 0, 1, v48);
    sub_26808A7A0(v61, &v16[v77]);
  }

  v64 = v83;
  sub_26808A868(v16, v83, type metadata accessor for SiriNLOverride);
  return __swift_storeEnumTagSinglePayload(v64, 0, 1, v84);
}

uint64_t OUTLINED_FUNCTION_31_0()
{
  result = v0;
  v3 = *(v1 - 168);
  return result;
}

uint64_t OUTLINED_FUNCTION_31_1(uint64_t a1)
{

  return sub_26808C12C(a1, v1, v2);
}

uint64_t sub_26808A6DC(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_26808A734(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_26808A810(a1, a2);
  }

  return a1;
}

unint64_t sub_26808A748()
{
  result = qword_281319640[0];
  if (!qword_281319640[0])
  {
    sub_2680B3E9C();
    result = swift_getWitnessTable();
    atomic_store(result, qword_281319640);
  }

  return result;
}

uint64_t sub_26808A7A0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802492A8, &unk_2680B5680);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_26808A810(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_26808A868(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  OUTLINED_FUNCTION_9(v5);
  (*(v6 + 32))(a2, a1);
  return a2;
}

uint64_t sub_26808A8DC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280249250, &qword_2680B54D8);
    if (*(*(v8 - 8) + 84) == a3)
    {
      v9 = v8;
      v10 = *(a4 + 36);
    }

    else
    {
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802492A8, &unk_2680B5680);
      v10 = *(a4 + 60);
    }

    return __swift_storeEnumTagSinglePayload(v5 + v10, a2, a2, v9);
  }

  return result;
}

void sub_26808A9BC()
{
  OUTLINED_FUNCTION_27_1();
  v2 = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280249300, &unk_2680B58A0);
  OUTLINED_FUNCTION_7(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v8);
  v10 = &v32 - v9;
  v37 = type metadata accessor for SiriNLOverride();
  v11 = OUTLINED_FUNCTION_4(v37);
  v33 = v12;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_3();
  v35 = v15;
  OUTLINED_FUNCTION_5_4();
  MEMORY[0x28223BE20](v16);
  v18 = &v32 - v17;
  v19 = *(v2 + 16);
  v20 = (v2 + 40);
  v21 = MEMORY[0x277D84F90];
  v34 = v4;
  if (v19)
  {
    while (1)
    {
      v22 = *v20;
      v36[0] = *(v20 - 1);
      v36[1] = v22;

      v4(v36);
      if (v0)
      {
        break;
      }

      OUTLINED_FUNCTION_17_3(v10, 1, v37);
      if (v23)
      {
        sub_26808C18C(v10, &qword_280249300, &unk_2680B58A0);
      }

      else
      {
        sub_26808AC2C(v10, v18);
        sub_26808AC2C(v18, v35);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v29 = *(v21 + 16);
          OUTLINED_FUNCTION_18();
          sub_26808B2B0();
          v21 = v30;
        }

        v25 = *(v21 + 16);
        if (v25 >= *(v21 + 24) >> 1)
        {
          sub_26808B2B0();
          v21 = v31;
        }

        *(v21 + 16) = v25 + 1;
        v26 = *(v33 + 80);
        OUTLINED_FUNCTION_33();
        sub_26808AC2C(v35, v21 + v27 + *(v28 + 72) * v25);
        v4 = v34;
      }

      v20 += 2;
      if (!--v19)
      {
        goto LABEL_14;
      }
    }
  }

LABEL_14:
  OUTLINED_FUNCTION_26_2();
}

uint64_t sub_26808AC2C(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_52();
  v6 = v5(v4);
  OUTLINED_FUNCTION_9(v6);
  (*(v7 + 32))(a2, v2);
  return a2;
}

uint64_t sub_26808AC9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280249250, &qword_2680B54D8);
    if (*(*(v8 - 8) + 84) == a2)
    {
      v9 = v8;
      v10 = *(a3 + 36);
    }

    else
    {
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802492A8, &unk_2680B5680);
      v10 = *(a3 + 60);
    }

    return __swift_getEnumTagSinglePayload(a1 + v10, a2, v9);
  }
}

uint64_t sub_26808ADB0(uint64_t a1)
{
  result = OUTLINED_FUNCTION_39_0(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  result = sub_26808AE98(result, 1, sub_26808AF10);
  v6 = *v2;
  if (!*(v3 + 16))
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  if ((*(v6 + 24) >> 1) - *(v6 + 16) < v1)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  swift_arrayInitWithCopy();

  if (!v1)
  {
LABEL_8:
    *v2 = v6;
    return result;
  }

  v7 = *(v6 + 16);
  v5 = __OFADD__(v7, v1);
  v8 = v7 + v1;
  if (!v5)
  {
    *(v6 + 16) = v8;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_26808AE98(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = *v3;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v6;
  if (!result || a1 > *(v6 + 24) >> 1)
  {
    if (*(v6 + 16) > a1)
    {
      v8 = *(v6 + 16);
    }

    result = a3();
    *v3 = result;
  }

  return result;
}

void sub_26808AF10()
{
  OUTLINED_FUNCTION_28_0();
  if (v3)
  {
    OUTLINED_FUNCTION_17();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_25_0();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_15();
    }
  }

  else
  {
    v4 = v2;
  }

  v7 = *(v0 + 2);
  if (v4 <= v7)
  {
    v8 = *(v0 + 2);
  }

  else
  {
    v8 = v4;
  }

  if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802491C0, &qword_2680B5418);
    v9 = OUTLINED_FUNCTION_32_0();
    _swift_stdlib_malloc_size(v9);
    OUTLINED_FUNCTION_14_0();
    *(v9 + 2) = v7;
    *(v9 + 3) = v10;
  }

  else
  {
    v9 = MEMORY[0x277D84F90];
  }

  v11 = v9 + 32;
  v12 = v0 + 32;
  if (v1)
  {
    if (v9 != v0 || &v12[16 * v7] <= v11)
    {
      memmove(v11, v12, 16 * v7);
    }

    *(v0 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

uint64_t sub_26808AFEC(uint64_t a1)
{
  if (*(v1 + 16))
  {
    MEMORY[0x28223BE20](a1);
    v3 = v2;
    sub_26808A9BC();
    v5 = v4;
  }

  else
  {
    sub_2680B425C();
    if (qword_2813194A0 != -1)
    {
      OUTLINED_FUNCTION_0_0();
      swift_once();
    }

    v5 = MEMORY[0x277D84F90];
    sub_2680B406C();
  }

  return v5;
}

uint64_t OUTLINED_FUNCTION_23_1()
{

  return sub_2680B406C();
}

void OUTLINED_FUNCTION_17_0()
{
  v2 = *(v0 - 520);

  sub_26809F080();
}

uint64_t OUTLINED_FUNCTION_17_2@<X0>(int a1@<W8>)
{
  v1 = a1 - 1;
  if (v1 < 0)
  {
    v1 = -1;
  }

  return (v1 + 1);
}

size_t sub_26808B1B8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t))
{
  if (a2 <= a1)
  {
    v5 = a1;
  }

  else
  {
    v5 = a2;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v8 = OUTLINED_FUNCTION_11_0();
  v9 = *(a5(v8) - 8);
  v10 = *(v9 + 72);
  v11 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v12 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v12);
  if (v10)
  {
    if (result - v11 != 0x8000000000000000 || v10 != -1)
    {
      v12[2] = a1;
      v12[3] = 2 * ((result - v11) / v10);
      return v12;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_26808B2B0()
{
  OUTLINED_FUNCTION_3_3();
  if (v4)
  {
    OUTLINED_FUNCTION_2_3();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_16_0();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_4_2();
    }
  }

  else
  {
    v5 = v3;
  }

  v8 = *(v0 + 16);
  OUTLINED_FUNCTION_21_0(v2, v5, &qword_2802491B0, "0%");
  OUTLINED_FUNCTION_11_0();
  v9 = type metadata accessor for SiriNLOverride();
  OUTLINED_FUNCTION_13_0(v9);
  v11 = *(v10 + 80);
  OUTLINED_FUNCTION_33();
  if (v1)
  {
    v13 = OUTLINED_FUNCTION_1_2(v12);
    sub_26808B38C(v13, v14, v15, v16);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_5_2();
  }
}

uint64_t sub_26808B38C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  OUTLINED_FUNCTION_26_1();
  if (v8 && (v9 = (a4)(0), result = OUTLINED_FUNCTION_9(v9), v5 + *(v11 + 72) * v4 > v6))
  {
    if (v6 != v5)
    {
      OUTLINED_FUNCTION_6_2();

      return swift_arrayInitWithTakeBackToFront();
    }
  }

  else
  {
    a4(0);
    OUTLINED_FUNCTION_6_2();

    return swift_arrayInitWithTakeFrontToBack();
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_10_2()
{
  result = v0;
  v3 = *(v1 - 136);
  return result;
}

uint64_t OUTLINED_FUNCTION_10_3()
{
  result = v0;
  v3 = *(v1 - 120);
  return result;
}

uint64_t OUTLINED_FUNCTION_10_4()
{

  return sub_2680B410C();
}

void *sub_26808B4F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!*(a4 + 16))
  {
    return 0;
  }

  v5 = sub_268089904(a1, a2, a3);
  if ((v6 & 1) == 0)
  {
    return 0;
  }

  v7 = *(*(a4 + 56) + 8 * v5);
  v8 = v7;
  return v7;
}

uint64_t sub_26808B53C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802492A8, &unk_2680B5680);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void OUTLINED_FUNCTION_20_0()
{
  v2 = *(v0 + 16) + 1;

  sub_26809F080();
}

uint64_t OUTLINED_FUNCTION_4_0(uint64_t a1)
{

  return MEMORY[0x28217E408](0, v1, a1);
}

uint64_t OUTLINED_FUNCTION_4_3()
{
  v3 = v0 + *(*(v1 - 128) + 20);

  return sub_2680B384C();
}

id sub_26808B680(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v11[1] = *MEMORY[0x277D85DE8];
  v5 = sub_2680B40BC();

  v11[0] = 0;
  v6 = [v3 initWithPattern:v5 options:a3 error:v11];

  if (v6)
  {
    v7 = v11[0];
  }

  else
  {
    v8 = v11[0];
    sub_2680B2E1C();

    swift_willThrow();
  }

  v9 = *MEMORY[0x277D85DE8];
  return v6;
}

unint64_t sub_26808B75C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4 + 64;
  v6 = -1 << *(v4 + 32);
  v7 = a4 & ~v6;
  if ((*(v4 + 64 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v11 = ~v6;
    v12 = *(v4 + 48);
    do
    {
      v13 = (v12 + 24 * v7);
      v14 = v13[2];
      v15 = *v13 == a1 && v13[1] == a2;
      if (v15 || (sub_2680B447C()) && v14 == a3)
      {
        break;
      }

      v7 = (v7 + 1) & v11;
    }

    while (((*(v5 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  }

  return v7;
}

unint64_t sub_26808B838(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  a6[(result >> 6) + 8] |= 1 << result;
  v6 = (a6[6] + 24 * result);
  *v6 = a2;
  v6[1] = a3;
  v6[2] = a4;
  *(a6[7] + 8 * result) = a5;
  v7 = a6[2];
  v8 = __OFADD__(v7, 1);
  v9 = v7 + 1;
  if (v8)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v9;
  }

  return result;
}

uint64_t sub_26808B888()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_2680B452C();
  sub_2680B410C();
  MEMORY[0x26D6100D0](v3);
  return sub_2680B454C();
}

BOOL sub_26808B904(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a1 == a4 && a2 == a5)
  {
    return a3 == a6;
  }

  v9 = sub_2680B447C();
  result = 0;
  if (v9)
  {
    return a3 == a6;
  }

  return result;
}

uint64_t Siri_Nlu_Internal_Overrides_TurnInputAndPreprocessing.locale.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_2680B31FC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_2680B3DEC() & 1) != 0 && (sub_2680B3DDC(), v7 = sub_2680B31EC(), v8 = *(v3 + 8), v8(v6, v2), (v7))
  {
    sub_2680B3DDC();
    sub_2680B31CC();
    v8(v6, v2);
    sub_2680B2ECC();
    v9 = 0;
  }

  else
  {
    v9 = 1;
  }

  v10 = sub_2680B2F5C();
  return __swift_storeEnumTagSinglePayload(a1, v9, 1, v10);
}

uint64_t sub_26808BAD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v76 = a4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802492C0, &unk_2680B56F0);
  OUTLINED_FUNCTION_7(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_14_1();
  v14 = sub_2680B2F3C();
  v15 = OUTLINED_FUNCTION_4(v14);
  v73 = v16;
  v74 = v15;
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_6();
  v21 = v20 - v19;
  v75 = sub_2680B2EFC();
  v22 = OUTLINED_FUNCTION_4(v75);
  v71 = v23;
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_6();
  v70 = v27 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280249258, &qword_2680B54E8);
  OUTLINED_FUNCTION_7(v28);
  v30 = *(v29 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v31);
  v33 = v69 - v32;
  v34 = *(v4 + 16);
  if (v34)
  {
    v69[3] = v4;
    v69[4] = v5;
    v69[1] = a2;
    v69[2] = a3;
    v77 = a2;
    v78 = a3;
    v35 = sub_2680B2F5C();
    OUTLINED_FUNCTION_9(v35);
    (*(v36 + 16))(v33, a1, v35);
    __swift_storeEnumTagSinglePayload(v33, 0, 1, v35);
    sub_26808CA6C();
    v37 = v34;
    v69[0] = v6;
    v38 = v37;
    v39 = sub_2680B42EC();
    v41 = v40;
    sub_26808C18C(v33, &qword_280249258, &qword_2680B54E8);
    v77 = v39;
    v78 = v41;
    sub_2680B42CC();

    v42 = sub_2680B40BC();
    sub_2680B2EDC();
    v43 = sub_2680B40BC();

    v44 = sub_2680B3B4C();
    v72 = v38;
    v45 = v38;
    v46 = v69[0];
    v47 = [v45 fetchRuleId:v42 locale:v43 overrideNamespace:v44];

    v48 = sub_2680B41DC();
    v79 = v48;
    sub_2680B2F4C();
    sub_2680B2F2C();
    (*(v73 + 8))(v21, v74);
    v49 = v75;
    if (__swift_getEnumTagSinglePayload(v46, 1, v75) == 1)
    {

      sub_26808C18C(v46, &qword_2802492C0, &unk_2680B56F0);
    }

    else
    {
      v52 = v70;
      v51 = v71;
      (*(v71 + 32))(v70, v46, v49);
      v53 = sub_2680B40BC();

      sub_2680B2EEC();
      v54 = sub_2680B40BC();

      v55 = [v72 fetchRuleId:v53 locale:v54 overrideNamespace:sub_2680B3B4C()];

      v56 = sub_2680B41DC();
      sub_26808ADB0(v56);
      (*(v51 + 8))(v52, v49);
    }

    v57 = sub_26808AFEC(v79);

    sub_2680B423C();
    if (qword_2813194A0 != -1)
    {
      OUTLINED_FUNCTION_0_0();
      swift_once();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280249100, &qword_2680B4FF0);
    v58 = swift_allocObject();
    *(v58 + 16) = xmmword_2680B5350;
    v59 = *(v57 + 16);
    v60 = MEMORY[0x277D83C10];
    *(v58 + 56) = MEMORY[0x277D83B88];
    *(v58 + 64) = v60;
    *(v58 + 32) = v59;
    v61 = type metadata accessor for SiriNLOverride();
    v62 = MEMORY[0x26D60FD80](v57, v61);
    v64 = v63;
    *(v58 + 96) = MEMORY[0x277D837D0];
    *(v58 + 104) = sub_26808C1E4();
    *(v58 + 72) = v62;
    *(v58 + 80) = v64;
    sub_2680B406C();

    sub_268088E4C();
    v77 = v57;
    sub_26808CEB8(v65);
    sub_2680B423C();
    OUTLINED_FUNCTION_12_0();
    v66 = swift_allocObject();
    *(v66 + 16) = xmmword_2680B4FE0;
    v50 = v77;
    v67 = *(v77 + 16);
    *(v66 + 56) = MEMORY[0x277D83B88];
    *(v66 + 64) = MEMORY[0x277D83C10];
    *(v66 + 32) = v67;
    sub_2680B406C();
  }

  else
  {
    sub_2680B425C();
    if (qword_2813194A0 != -1)
    {
      OUTLINED_FUNCTION_0_0();
      swift_once();
    }

    v50 = MEMORY[0x277D84F90];
    sub_2680B406C();
  }

  return v50;
}

uint64_t sub_26808C12C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_26808C18C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_9(v4);
  (*(v5 + 8))(a1);
  return a1;
}

unint64_t sub_26808C1E4()
{
  result = qword_281319320;
  if (!qword_281319320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281319320);
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

uint64_t sub_26808C24C(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_26808C284()
{
  OUTLINED_FUNCTION_54();
  v79 = v1;
  v80 = v0;
  v3 = v2;
  v4 = type metadata accessor for SiriNLOverride();
  v5 = OUTLINED_FUNCTION_4(v4);
  v77 = v6;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_6();
  v11 = v10 - v9;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280249258, &qword_2680B54E8);
  OUTLINED_FUNCTION_7(v12);
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v15);
  v17 = v73 - v16;
  v18 = sub_2680B2F5C();
  v19 = OUTLINED_FUNCTION_4(v18);
  v81 = v20;
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_6();
  v25 = v24 - v23;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802492B0, &unk_2680B5690);
  OUTLINED_FUNCTION_7(v26);
  v28 = *(v27 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v29);
  v30 = OUTLINED_FUNCTION_22_1();
  v31 = OUTLINED_FUNCTION_4(v30);
  v33 = v32;
  v35 = *(v34 + 64);
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_6();
  v38 = v37 - v36;
  v78 = v3;
  Array<A>.currentTurn.getter(v3, v0);
  if (__swift_getEnumTagSinglePayload(v0, 1, v30) == 1)
  {
    v39 = &qword_2802492B0;
    v40 = &unk_2680B5690;
    v41 = v0;
LABEL_5:
    sub_26808C18C(v41, v39, v40);
    sub_2680B425C();
    if (qword_2813194A0 != -1)
    {
      OUTLINED_FUNCTION_0_0();
      swift_once();
    }

    OUTLINED_FUNCTION_23_1();
    goto LABEL_21;
  }

  (*(v33 + 32))(v38, v0, v30);
  Siri_Nlu_Internal_Overrides_TurnInputAndPreprocessing.locale.getter(v17);
  if (__swift_getEnumTagSinglePayload(v17, 1, v18) == 1)
  {
    (*(v33 + 8))(v38, v30);
    v39 = &qword_280249258;
    v40 = &qword_2680B54E8;
    v41 = v17;
    goto LABEL_5;
  }

  v76 = v33;
  (*(v81 + 32))(v25, v17, v18);
  v74 = v38;
  v42 = sub_2680B3E0C();
  v43 = v25;
  v44 = v42;
  v46 = v45;
  v75 = v43;
  v47 = sub_26808BAD4(v43, v42, v45, v79);
  v48 = v76;
  if (v47)
  {

    v49 = *(v47 + 16);
    if (v49)
    {
      v79 = v30;
      v80 = v18;
      v82 = MEMORY[0x277D84F90];
      sub_26808D0A8(0, v49, 0);
      v50 = v82;
      v51 = *(v77 + 80);
      OUTLINED_FUNCTION_33();
      v73[1] = v47;
      v53 = v47 + v52;
      v55 = *(v54 + 72);
      v77 = v49;
      do
      {
        OUTLINED_FUNCTION_6_3();
        sub_2680898A4(v53, v11, v56);
        v57 = (v11 + *(v4 + 44));
        if (v57[1])
        {
          v58 = *v57;
          v59 = v57[1];
        }

        else
        {
          v59 = 0xE500000000000000;
          v58 = 0x296C696E28;
        }

        OUTLINED_FUNCTION_4_4();
        sub_26808984C(v11, v60);
        v82 = v50;
        v62 = *(v50 + 16);
        v61 = *(v50 + 24);
        if (v62 >= v61 >> 1)
        {
          sub_26808D0A8(v61 > 1, v62 + 1, 1);
          v50 = v82;
        }

        *(v50 + 16) = v62 + 1;
        v63 = v50 + 16 * v62;
        *(v63 + 32) = v58;
        *(v63 + 40) = v59;
        v53 += v55;
        --v49;
      }

      while (v49);

      v30 = v79;
      v48 = v76;
      v49 = v77;
    }

    sub_2680B424C();
    if (qword_2813194A0 != -1)
    {
      OUTLINED_FUNCTION_0_0();
      swift_once();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280249100, &qword_2680B4FF0);
    OUTLINED_FUNCTION_12_0();
    v64 = swift_allocObject();
    v65 = MEMORY[0x277D83B88];
    *(v64 + 16) = xmmword_2680B4FE0;
    v66 = MEMORY[0x277D83C10];
    *(v64 + 56) = v65;
    *(v64 + 64) = v66;
    *(v64 + 32) = v49;
    sub_2680B406C();

    sub_26808D0C8();

    v67 = OUTLINED_FUNCTION_10_0();
    v68(v67);
    (*(v48 + 8))(v74, v30);
  }

  else
  {
    sub_2680B423C();
    v69 = v74;
    if (qword_2813194A0 != -1)
    {
      OUTLINED_FUNCTION_0_0();
      swift_once();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280249100, &qword_2680B4FF0);
    OUTLINED_FUNCTION_12_0();
    v70 = swift_allocObject();
    *(v70 + 16) = xmmword_2680B4FE0;
    *(v70 + 56) = MEMORY[0x277D837D0];
    *(v70 + 64) = sub_26808C1E4();
    *(v70 + 32) = v44;
    *(v70 + 40) = v46;
    sub_2680B406C();

    v71 = OUTLINED_FUNCTION_10_0();
    v72(v71);
    (*(v48 + 8))(v69, v30);
  }

LABEL_21:
  OUTLINED_FUNCTION_53();
}

uint64_t Array<A>.currentTurn.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  v5 = sub_2680B3E1C();
  v6 = v5;
  if (v4)
  {
    (*(*(v5 - 8) + 16))(a2, a1 + ((*(*(v5 - 8) + 80) + 32) & ~*(*(v5 - 8) + 80)), v5);
    v7 = 0;
  }

  else
  {
    v7 = 1;
  }

  return __swift_storeEnumTagSinglePayload(a2, v7, 1, v6);
}

unint64_t sub_26808CA6C()
{
  result = qword_281319328;
  if (!qword_281319328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281319328);
  }

  return result;
}

unint64_t sub_26808CAC0(uint64_t a1)
{
  v3 = *(v1 + 40);
  sub_2680B452C();
  sub_2680B2F5C();
  sub_26808CB90(&qword_2813192F0, MEMORY[0x277CC9788]);
  sub_2680B408C();
  v4 = a1 + *(type metadata accessor for CacheKey() + 20);
  v5 = sub_2680B3B4C();
  MEMORY[0x26D6100D0](v5);
  v6 = sub_2680B454C();

  return sub_26808CBD8(a1, v6);
}

uint64_t sub_26808CB90(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_26808CBD8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v18 = type metadata accessor for CacheKey();
  v6 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20]();
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = v3 + 64;
  v11 = -1 << *(v3 + 32);
  v12 = a2 & ~v11;
  if ((*(v3 + 64 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v13 = ~v11;
    v14 = *(v7 + 72);
    v17 = v3;
    do
    {
      sub_26808CDD4(*(v3 + 48) + v14 * v12, v9, type metadata accessor for CacheKey);
      if (MEMORY[0x26D60EAB0](v9, a1))
      {
        v15 = *(v18 + 20);
        sub_2680B3B8C();
        sub_26808CB90(qword_2813192B8, MEMORY[0x277D5DCD8]);
        sub_2680B41CC();
        v3 = v17;
        sub_2680B41CC();
        sub_268088DF0(v9);
        if (v20 == v19)
        {
          return v12;
        }
      }

      else
      {
        sub_268088DF0(v9);
      }

      v12 = (v12 + 1) & v13;
    }

    while (((*(v10 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) != 0);
  }

  return v12;
}

uint64_t sub_26808CDD4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  OUTLINED_FUNCTION_9(v5);
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t OUTLINED_FUNCTION_55()
{
  v3 = *(*(v1 - 128) + 20);
  v4 = *v0;

  return sub_2680B37CC();
}

uint64_t OUTLINED_FUNCTION_22_1()
{

  return sub_2680B3E1C();
}

uint64_t OUTLINED_FUNCTION_22_2()
{
  v2 = (*(v0 + 80) + 32) & ~*(v0 + 80);

  return swift_allocObject();
}

uint64_t sub_26808CEB8(uint64_t a1)
{
  result = OUTLINED_FUNCTION_39_0(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_26808AE98(result, 1, sub_26808B2B0);
  v6 = *v2;
  if (!*(v3 + 16))
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  v7 = (*(v6 + 24) >> 1) - *(v6 + 16);
  result = type metadata accessor for SiriNLOverride();
  v8 = *(result - 8);
  if (v7 < v1)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v9 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v10 = *(v8 + 72);
  swift_arrayInitWithCopy();

  if (!v1)
  {
LABEL_8:
    *v2 = v6;
    return result;
  }

  v11 = *(v6 + 16);
  v5 = __OFADD__(v11, v1);
  v12 = v11 + v1;
  if (!v5)
  {
    *(v6 + 16) = v12;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
  return result;
}

void sub_26808CFBC(char a1, uint64_t a2, char a3, uint64_t a4)
{
  if ((a3 & 1) == 0)
  {
    v6 = a2;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_17();
  if (v7 == v8)
  {
LABEL_7:
    v9 = *(a4 + 16);
    if (v6 <= v9)
    {
      v10 = *(a4 + 16);
    }

    else
    {
      v10 = v6;
    }

    if (v10)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802491C0, &qword_2680B5418);
      v11 = swift_allocObject();
      v12 = _swift_stdlib_malloc_size(v11);
      *(v11 + 16) = v9;
      *(v11 + 24) = 2 * ((v12 - 32) / 16);
      if (a1)
      {
LABEL_12:
        sub_26809E9D0((a4 + 32), v9, (v11 + 32));
        *(a4 + 16) = 0;
LABEL_15:

        return;
      }
    }

    else
    {
      v11 = MEMORY[0x277D84F90];
      if (a1)
      {
        goto LABEL_12;
      }
    }

    swift_arrayInitWithCopy();
    goto LABEL_15;
  }

  OUTLINED_FUNCTION_25_0();
  if (!v7)
  {
    OUTLINED_FUNCTION_15();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_26808D0C8()
{
  OUTLINED_FUNCTION_54();
  v87 = v1;
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802492B8, &qword_2680B56A0);
  OUTLINED_FUNCTION_7(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v7);
  v9 = &v82 - v8;
  matched = type metadata accessor for OverrideMatchResult(0);
  v10 = OUTLINED_FUNCTION_4(matched);
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_3();
  v88 = v15;
  v17 = MEMORY[0x28223BE20](v16);
  v19 = &v82 - v18;
  MEMORY[0x28223BE20](v17);
  v94 = &v82 - v20;
  OUTLINED_FUNCTION_21();
  v21 = type metadata accessor for SiriNLOverride();
  v86 = *(v21 - 8);
  v22 = *(v86 + 64);
  MEMORY[0x28223BE20](v21 - 8);
  OUTLINED_FUNCTION_6();
  v25 = v24 - v23;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280249258, &qword_2680B54E8);
  OUTLINED_FUNCTION_7(v26);
  v28 = *(v27 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v29);
  v31 = &v82 - v30;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802492B0, &unk_2680B5690);
  OUTLINED_FUNCTION_7(v32);
  v34 = *(v33 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v35);
  v36 = OUTLINED_FUNCTION_22_1();
  v37 = OUTLINED_FUNCTION_4(v36);
  v39 = v38;
  v41 = *(v40 + 64);
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_6();
  v44 = v43 - v42;
  v95 = v3;
  Array<A>.currentTurn.getter(v3, v0);
  if (__swift_getEnumTagSinglePayload(v0, 1, v36) == 1)
  {
    v45 = &qword_2802492B0;
    v46 = &unk_2680B5690;
    v47 = v0;
LABEL_5:
    sub_26808C18C(v47, v45, v46);
    sub_2680B425C();
    if (qword_2813194A0 != -1)
    {
LABEL_39:
      OUTLINED_FUNCTION_0_0();
      swift_once();
    }

    OUTLINED_FUNCTION_23_1();
    goto LABEL_37;
  }

  (*(v39 + 32))(v44, v0, v36);
  Siri_Nlu_Internal_Overrides_TurnInputAndPreprocessing.locale.getter(v31);
  v48 = sub_2680B2F5C();
  if (__swift_getEnumTagSinglePayload(v31, 1, v48) == 1)
  {
    (*(v39 + 8))(v44, v36);
    v45 = &qword_280249258;
    v46 = &qword_2680B54E8;
    v47 = v31;
    goto LABEL_5;
  }

  v85 = v39;
  sub_26808C18C(v31, &qword_280249258, &qword_2680B54E8);
  v83 = v44;
  sub_2680B3DFC();
  static MatchingSpanUtils.getSpanLabelDict(_:)();
  v93 = v49;

  if (qword_2813194D8 != -1)
  {
    swift_once();
  }

  v84 = v36;
  v90 = sub_26808DCA4(byte_281319958);
  v92 = v50;
  v89 = sub_26808DC84();
  v91 = v51;
  v52 = *(v87 + 16);
  if (v52)
  {
    v53 = *(v86 + 80);
    OUTLINED_FUNCTION_33();
    v56 = v55 + v54;
    v58 = *(v57 + 72);
    v59 = MEMORY[0x277D84F90];
    do
    {
      sub_2680898A4(v56, v25, type metadata accessor for SiriNLOverride);
      SiriNLOverride.matches(inputs:spanDict:deviceType:userInterfaceIdiom:)();
      sub_26808984C(v25, type metadata accessor for SiriNLOverride);
      if (__swift_getEnumTagSinglePayload(v9, 1, matched) == 1)
      {
        sub_26808C18C(v9, &qword_2802492B8, &qword_2680B56A0);
      }

      else
      {
        OUTLINED_FUNCTION_2_5();
        sub_26808A868(v9, v94, v60);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v66 = *(v59 + 16);
          sub_2680917A4();
          v59 = v67;
        }

        v61 = *(v59 + 16);
        if (v61 >= *(v59 + 24) >> 1)
        {
          sub_2680917A4();
          v59 = v68;
        }

        *(v59 + 16) = v61 + 1;
        v62 = *(v12 + 80);
        OUTLINED_FUNCTION_33();
        v63 = *(v12 + 72);
        OUTLINED_FUNCTION_2_5();
        sub_26808A868(v94, v64, v65);
      }

      v56 += v58;
      --v52;
    }

    while (v52);
  }

  else
  {
    v59 = MEMORY[0x277D84F90];
  }

  v69 = 0;
  v70 = *(v59 + 16);
  v71 = MEMORY[0x277D84F90];
LABEL_22:
  v72 = v85;
  while (v70 != v69)
  {
    if (v69 >= *(v59 + 16))
    {
      __break(1u);
      goto LABEL_39;
    }

    sub_2680898A4(v59 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v69, v19, type metadata accessor for OverrideMatchResult);
    if (v19[*(matched + 20)] == 1)
    {
      OUTLINED_FUNCTION_2_5();
      sub_26808A868(v19, v88, v73);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v97 = v71;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_2680A1474(0, *(v71 + 16) + 1, 1);
        v71 = v97;
      }

      v76 = *(v71 + 16);
      v75 = *(v71 + 24);
      if (v76 >= v75 >> 1)
      {
        sub_2680A1474(v75 > 1, v76 + 1, 1);
        v71 = v97;
      }

      ++v69;
      *(v71 + 16) = v76 + 1;
      OUTLINED_FUNCTION_2_5();
      sub_26808A868(v88, v77, v78);
      goto LABEL_22;
    }

    sub_26808984C(v19, type metadata accessor for OverrideMatchResult);
    ++v69;
  }

  sub_2680B424C();
  if (qword_2813194A0 != -1)
  {
    OUTLINED_FUNCTION_0_0();
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280249100, &qword_2680B4FF0);
  OUTLINED_FUNCTION_12_0();
  v79 = swift_allocObject();
  *(v79 + 16) = xmmword_2680B4FE0;
  v80 = *(v71 + 16);
  v81 = MEMORY[0x277D83C10];
  *(v79 + 56) = MEMORY[0x277D83B88];
  *(v79 + 64) = v81;
  *(v79 + 32) = v80;
  sub_2680B406C();

  if (!*(v71 + 16))
  {
    sub_2680B424C();
    sub_2680B406C();
  }

  (*(v72 + 8))(v83, v84);
LABEL_37:
  OUTLINED_FUNCTION_53();
}

void static MatchingSpanUtils.getSpanLabelDict(_:)()
{
  OUTLINED_FUNCTION_54();
  v1 = v0;
  v2 = sub_2680B33EC();
  v3 = OUTLINED_FUNCTION_4(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_20();
  v63 = (v8 - v9);
  MEMORY[0x28223BE20](v10);
  v12 = &v55 - v11;
  v13 = *(v1 + 16);
  if (!v13)
  {
LABEL_22:
    OUTLINED_FUNCTION_53();
    return;
  }

  v14 = 0;
  v17 = *(v5 + 16);
  v15 = v5 + 16;
  v16 = v17;
  v18 = *(v15 + 64);
  OUTLINED_FUNCTION_33();
  v57 = v19;
  v20 = v1 + v19;
  v21 = *(v15 + 56);
  v61 = (v15 - 8);
  v22 = MEMORY[0x277D84F98];
  v56 = (v15 + 16);
  v59 = v15;
  v60 = v2;
  v58 = v12;
  v62 = v21;
  while (1)
  {
    v16(v12, v20, v2);
    v23 = sub_2680B339C();
    v25 = v24;

    v26 = HIBYTE(v25) & 0xF;
    if ((v25 & 0x2000000000000000) == 0)
    {
      v26 = v23 & 0xFFFFFFFFFFFFLL;
    }

    if (!v26)
    {
      (*v61)(v12, v2);
      v39 = v62;
      goto LABEL_20;
    }

    v27 = sub_2680B339C();
    v28 = v16;
    v30 = v29;
    v31 = v12;
    v32 = v28;
    v28(v63, v31, v2);
    sub_268093C70(v14);
    swift_isUniquelyReferenced_nonNull_native();
    v64 = v22;
    v33 = sub_26809EB44(v27, v30);
    if (__OFADD__(v22[2], (v34 & 1) == 0))
    {
      break;
    }

    v35 = v33;
    v36 = v34;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802491A8, &qword_2680B53E8);
    if (sub_2680B43AC())
    {
      v37 = sub_26809EB44(v27, v30);
      if ((v36 & 1) != (v38 & 1))
      {
        goto LABEL_25;
      }

      v35 = v37;
    }

    v22 = v64;
    if (v36)
    {
    }

    else
    {
      OUTLINED_FUNCTION_22_0(&v64[v35 >> 6]);
      v40 = (v22[6] + 16 * v35);
      *v40 = v27;
      v40[1] = v30;
      *(v22[7] + 8 * v35) = MEMORY[0x277D84F90];
      v41 = v22[2];
      v42 = __OFADD__(v41, 1);
      v43 = v41 + 1;
      if (v42)
      {
        goto LABEL_24;
      }

      v22[2] = v43;
    }

    v44 = v22[7];
    v45 = *(v44 + 8 * v35);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v44 + 8 * v35) = v45;
    v16 = v32;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v52 = *(v45 + 16);
      OUTLINED_FUNCTION_18();
      sub_26809EDEC();
      v45 = v53;
      *(v44 + 8 * v35) = v53;
    }

    v12 = v58;
    v48 = *(v45 + 16);
    v47 = *(v45 + 24);
    if (v48 >= v47 >> 1)
    {
      OUTLINED_FUNCTION_27(v47);
      OUTLINED_FUNCTION_23_0();
      sub_26809EDEC();
      *(v44 + 8 * v35) = v54;
    }

    v49 = v60;
    (*v61)(v12, v60);
    v50 = *(v44 + 8 * v35);
    *(v50 + 16) = v48 + 1;
    v39 = v62;
    v51 = v50 + v57 + v48 * v62;
    v2 = v49;
    (*v56)(v51, v63, v49);
    v14 = sub_26809674C;
LABEL_20:
    v20 += v39;
    if (!--v13)
    {
      sub_268093C70(v14);
      goto LABEL_22;
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  sub_2680B44AC();
  __break(1u);
}

uint64_t sub_26808DC18(uint64_t a1, uint64_t a2)
{
  sub_26808DD9C(a1, a2, v4);
  if (v5)
  {
    if (swift_dynamicCast())
    {
      return v3;
    }
  }

  else
  {
    sub_2680A61E0(v4);
  }

  return 0;
}

uint64_t sub_26808DCA4(char a1)
{
  result = 0x454E4F4850;
  switch(a1)
  {
    case 1:
      result = 4473168;
      break;
    case 2:
      result = 0x4E414D4553524F48;
      break;
    case 3:
      result = 1398097242;
      break;
    case 4:
      result = 0x4F454D4143;
      break;
    case 5:
      result = 0x4843544157;
      break;
    case 6:
      result = 5390659;
      break;
    case 7:
      result = 0x544952414752414DLL;
      break;
    case 8:
      result = 0x6E776F6E6B6E75;
      break;
    default:
      return result;
  }

  return result;
}

void sub_26808DD9C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v15 = *MEMORY[0x277D85DE8];
  v6 = sub_2680B40BC();
  v7 = MGCopyAnswerWithError();

  if (v7)
  {
    *(a3 + 24) = swift_getObjectType();
    *a3 = v7;
  }

  else
  {
    sub_2680B425C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280249100, &qword_2680B4FF0);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_2680B5350;
    v9 = MEMORY[0x277D837D0];
    *(v8 + 56) = MEMORY[0x277D837D0];
    v10 = sub_26808C1E4();
    *(v8 + 64) = v10;
    *(v8 + 32) = a1;
    *(v8 + 40) = a2;

    v11 = sub_2680B445C();
    *(v8 + 96) = v9;
    *(v8 + 104) = v10;
    *(v8 + 72) = v11;
    *(v8 + 80) = v12;
    sub_26809F900();
    v13 = sub_2680B428C();
    sub_2680B406C();

    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  v14 = *MEMORY[0x277D85DE8];
}

void SiriNLOverride.matches(inputs:spanDict:deviceType:userInterfaceIdiom:)()
{
  OUTLINED_FUNCTION_54();
  v122 = v2;
  v123 = v3;
  v124 = v4;
  v125 = v5;
  v121 = v6;
  v130 = v7;
  v9 = v8;
  matched = type metadata accessor for TurnInputRuleMatchResult(0);
  v119 = *(matched - 8);
  v11 = *(v119 + 64);
  MEMORY[0x28223BE20](matched - 8);
  OUTLINED_FUNCTION_6();
  v120 = (v13 - v12);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280249258, &qword_2680B54E8);
  OUTLINED_FUNCTION_7(v14);
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v17);
  v19 = &v115 - v18;
  v20 = sub_2680B2F5C();
  v21 = OUTLINED_FUNCTION_4(v20);
  v126 = v22;
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_6();
  v27 = v26 - v25;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802492B0, &unk_2680B5690);
  OUTLINED_FUNCTION_7(v28);
  v30 = *(v29 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v31);
  v33 = &v115 - v32;
  v131 = sub_2680B3E1C();
  v34 = OUTLINED_FUNCTION_4(v131);
  v127 = v35;
  v37 = *(v36 + 64);
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_6();
  v129 = v39 - v38;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802492A8, &unk_2680B5680);
  OUTLINED_FUNCTION_7(v40);
  v42 = *(v41 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_45_0();
  v44 = sub_2680B3E9C();
  v45 = OUTLINED_FUNCTION_4(v44);
  v47 = v46;
  v49 = *(v48 + 64);
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_6();
  v52 = v51 - v50;
  v128 = v0;
  SiriNLOverride.nluRequestRule.getter(v1);
  OUTLINED_FUNCTION_17_3(v1, 1, v44);
  if (v62)
  {
    sub_26808C12C(v1, &qword_2802492A8, &unk_2680B5680);
    type metadata accessor for OverrideMatchResult(0);
  }

  else
  {
    v118 = v9;
    (*(v47 + 32))(v52, v1, v44);
    v117 = v52;
    v53 = *(sub_2680B36FC() + 16);

    v54 = v47;
    if (v53)
    {
      Array<A>.currentTurn.getter(v130, v33);
      v55 = v131;
      OUTLINED_FUNCTION_17_3(v33, 1, v131);
      if (v62)
      {
        sub_26808C12C(v33, &qword_2802492B0, &unk_2680B5690);
      }

      else
      {
        v116 = v54;
        v59 = v127;
        v60 = v129;
        (*(v127 + 32))(v129, v33, v55);
        Siri_Nlu_Internal_Overrides_TurnInputAndPreprocessing.locale.getter(v19);
        v61 = v20;
        OUTLINED_FUNCTION_17_3(v19, 1, v20);
        if (v62)
        {
          (*(v59 + 8))(v60, v55);
          sub_26808C12C(v19, &qword_280249258, &qword_2680B54E8);
          v54 = v116;
        }

        else
        {
          v63 = v126;
          v64 = *(v126 + 32);
          v65 = OUTLINED_FUNCTION_42_0();
          v66(v65);
          v67 = sub_26808F308();
          if (v67)
          {
            if (sub_2680B3E4C())
            {
              if (sub_2680B3E2C() == v124 && v68 == v125)
              {
              }

              else
              {
                v70 = sub_2680B447C();

                if ((v70 & 1) == 0)
                {
                  v71 = sub_2680B424C();
                  if (qword_2813194A0 != -1)
                  {
                    OUTLINED_FUNCTION_0();
                  }

                  v72 = MEMORY[0x277D84F90];
                  sub_2680B406C();
                  OUTLINED_FUNCTION_5_5();
                  (*(v59 + 8))(v129, v131);
                  goto LABEL_51;
                }
              }
            }

            if ((sub_2680B3E7C() & 1) == 0)
            {
              goto LABEL_46;
            }

            sub_2680B3E6C();
            v80 = sub_2680956CC();

            v81 = sub_2680956CC();
            v82 = v81;
            if (v80 == 9)
            {
              if (v81 == 9)
              {
                goto LABEL_46;
              }
            }

            else if (v81 != 9)
            {
              v83 = sub_26808DCA4(v80);
              v85 = v84;
              if (v83 == sub_26808DCA4(v82) && v85 == v86)
              {

LABEL_46:
                v89 = *(v130 + 16);
                v90 = *(sub_2680B36FC() + 16);

                if (v89 >= v90)
                {
                  v99 = sub_2680B36FC();
                  v124 = &v115;
                  MEMORY[0x28223BE20](v99);
                  v125 = v27;
                  v100 = v121;
                  *(&v115 - 2) = v27;
                  *(&v115 - 1) = v100;

                  sub_26808F45C(v101, v99, sub_2680906C0, (&v115 - 4));
                  v103 = v102;

                  v130 = v103;
                  v104 = *(v103 + 16);
                  if (v104)
                  {
                    v105 = v120;
                    v106 = v130 + ((*(v119 + 80) + 32) & ~*(v119 + 80));
                    v107 = *(v119 + 72);
                    v108 = 1;
                    do
                    {
                      sub_2680915A8(v106, v105, type metadata accessor for TurnInputRuleMatchResult);
                      if (v108)
                      {
                        v108 = *v105;
                      }

                      else
                      {
                        v108 = 0;
                      }

                      sub_26809170C(v105);
                      v106 += v107;
                      --v104;
                    }

                    while (v104);
                  }

                  else
                  {
                    v108 = 1;
                  }

                  (*(v127 + 8))(v129, v55);
                  v109 = *(v116 + 8);
                  v110 = OUTLINED_FUNCTION_28_1();
                  v111(v110);
                  OUTLINED_FUNCTION_5_5();
                  v112 = type metadata accessor for OverrideMatchResult(0);
                  *(v55 + *(v112 + 20)) = v108;
                  *(v55 + *(v112 + 24)) = v130;
                  OUTLINED_FUNCTION_51_0(v112, v113, v114, v112);
                  v98 = v125;
                  goto LABEL_61;
                }

                v71 = sub_2680B424C();
                if (qword_2813194A0 != -1)
                {
                  OUTLINED_FUNCTION_0();
                }

                v72 = MEMORY[0x277D84F90];
                goto LABEL_50;
              }

              OUTLINED_FUNCTION_49_0();
              v88 = sub_2680B447C();

              if (v88)
              {
                goto LABEL_46;
              }
            }

            v71 = sub_2680B424C();
            if (qword_2813194A0 != -1)
            {
              OUTLINED_FUNCTION_0();
            }

            v72 = MEMORY[0x277D84F90];
LABEL_50:
            sub_2680B406C();
            OUTLINED_FUNCTION_5_5();
            (*(v127 + 8))(v129, v131);
LABEL_51:
            v91 = *(v116 + 8);
            v92 = OUTLINED_FUNCTION_28_1();
            v93(v92);
            v94 = type metadata accessor for OverrideMatchResult(0);
            *(v71 + *(v94 + 20)) = 0;
            *(v71 + *(v94 + 24)) = v72;
            OUTLINED_FUNCTION_51_0(v94, v95, v96, v94);
            v98 = v27;
LABEL_61:
            v97(v98, v61);
            goto LABEL_29;
          }

          (*(v59 + 8))(v129, v55);
          (*(v63 + 8))(v27, v61);
          v54 = v116;
        }
      }

      sub_2680B425C();
      if (qword_2813194A0 != -1)
      {
        OUTLINED_FUNCTION_0();
      }

      sub_2680B406C();
      v73 = *(v54 + 8);
      v74 = OUTLINED_FUNCTION_28_1();
      v75(v74);
      type metadata accessor for OverrideMatchResult(0);
    }

    else
    {
      sub_2680B425C();
      if (qword_2813194A0 != -1)
      {
        OUTLINED_FUNCTION_0();
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280249100, &qword_2680B4FF0);
      v56 = swift_allocObject();
      *(v56 + 16) = xmmword_2680B4FE0;
      v58 = *v128;
      v57 = v128[1];
      *(v56 + 56) = MEMORY[0x277D837D0];
      *(v56 + 64) = sub_26808C1E4();
      *(v56 + 32) = v58;
      *(v56 + 40) = v57;

      sub_2680B406C();

      (*(v47 + 8))(v117, v44);
      type metadata accessor for OverrideMatchResult(0);
    }
  }

  OUTLINED_FUNCTION_23_3();
  __swift_storeEnumTagSinglePayload(v76, v77, v78, v79);
LABEL_29:
  OUTLINED_FUNCTION_53();
}

uint64_t OUTLINED_FUNCTION_48()
{
  v2 = *(v0 - 544);
}

uint64_t SiriNLOverride.nluRequestRule.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_2680B403C();
  v4 = OUTLINED_FUNCTION_7(v3);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_6();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802492A8, &unk_2680B5680);
  OUTLINED_FUNCTION_7(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v10);
  v12 = &v37[-v11];
  v13 = sub_2680B3E9C();
  v14 = OUTLINED_FUNCTION_4(v13);
  v16 = v15;
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_6();
  v21 = v20 - v19;
  v22 = type metadata accessor for SiriNLOverride();
  sub_26808ED8C(v1 + *(v22 + 60), v12, &qword_2802492A8, &unk_2680B5680);
  if (__swift_getEnumTagSinglePayload(v12, 1, v13) != 1)
  {
    v32 = *(v16 + 32);
    v33 = OUTLINED_FUNCTION_24();
    v32(v33);
    (v32)(a1, v21, v13);
    goto LABEL_6;
  }

  sub_26808C18C(v12, &qword_2802492A8, &unk_2680B5680);
  v23 = (v1 + *(v22 + 56));
  if (v23[1] >> 60 != 15)
  {
    v24 = *v23;
    v38 = 0;
    memset(&v37[16], 0, 32);
    v25 = OUTLINED_FUNCTION_24();
    sub_2680A155C(v25, v26);
    v27 = OUTLINED_FUNCTION_24();
    sub_26808A6DC(v27, v28);
    sub_2680B402C();
    OUTLINED_FUNCTION_2_6();
    sub_2680AFD28(v29, v30);
    OUTLINED_FUNCTION_24();
    sub_2680B404C();
    v35 = OUTLINED_FUNCTION_24();
    sub_26808A734(v35, v36);
LABEL_6:
    v31 = 0;
    return __swift_storeEnumTagSinglePayload(a1, v31, 1, v13);
  }

  v31 = 1;
  return __swift_storeEnumTagSinglePayload(a1, v31, 1, v13);
}

uint64_t sub_26808ECF4()
{
  OUTLINED_FUNCTION_8_1();
  v4 = type metadata accessor for SiriNLOverride();
  result = OUTLINED_FUNCTION_13_0(v4);
  if (*(v6 + 84) == v3)
  {

    return __swift_storeEnumTagSinglePayload(v1, v0, v0, result);
  }

  else
  {
    *(v1 + *(v2 + 24)) = (v0 - 1);
  }

  return result;
}

uint64_t sub_26808ED8C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_9(v5);
  v7 = *(v6 + 16);
  v8 = OUTLINED_FUNCTION_3_6();
  v9(v8);
  return a2;
}

uint64_t OUTLINED_FUNCTION_45()
{
  v2 = *(v0 - 192);
}

uint64_t sub_26808EE0C(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for CacheKey();
  v6 = v5 - 8;
  v7 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v8 = OUTLINED_FUNCTION_3_2();
  OUTLINED_FUNCTION_1_1(v8);
  (*(v9 + 16))(v2, a1);
  v10 = *(v6 + 28);
  v11 = sub_2680B3B8C();
  OUTLINED_FUNCTION_1_1(v11);
  v13 = (*(v12 + 16))(v2 + v10, a2);
  if (qword_281319218 != -1)
  {
    v13 = OUTLINED_FUNCTION_0_1();
  }

  v14 = qword_281319220;
  v15 = MEMORY[0x28223BE20](v13);
  MEMORY[0x28223BE20](v15);
  os_unfair_lock_lock(v14 + 4);
  sub_26808F2E0();
  os_unfair_lock_unlock(v14 + 4);
  return sub_268088DF0(v2);
}

uint64_t sub_26808EF9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_10_1();
  v6 = type metadata accessor for SiriNLOverride();
  v7 = OUTLINED_FUNCTION_13_0(v6);
  if (*(v8 + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(v3, a2, v7);
  }

  else
  {
    OUTLINED_FUNCTION_9_3(*(a3 + 24));
    return (v10 + 1);
  }
}

uint64_t sub_26808F034(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for CacheKey();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  v11 = sub_26808CAC0(a2);
  if (__OFADD__(*(v10 + 16), (v12 & 1) == 0))
  {
    __break(1u);
    goto LABEL_11;
  }

  v13 = v11;
  v14 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280249290, &qword_2680B55C0);
  if ((sub_2680B43AC() & 1) == 0)
  {
    goto LABEL_5;
  }

  v15 = *v3;
  v16 = sub_26808CAC0(a2);
  if ((v14 & 1) != (v17 & 1))
  {
LABEL_11:
    result = sub_2680B44AC();
    __break(1u);
    return result;
  }

  v13 = v16;
LABEL_5:
  v18 = *v3;
  if (v14)
  {
    v19 = v18[7];
    v20 = *(v19 + 8 * v13);
    *(v19 + 8 * v13) = a1;
  }

  else
  {
    sub_26808FCAC(a2, v9);
    return sub_26808FDC4(v13, v9, a1, v18);
  }
}

void OUTLINED_FUNCTION_24_0()
{
  *(v1 - 520) = v0;
  v2 = *(v0 + 24);
  v3 = *(v0 + 16) + 1;
}

uint64_t sub_26808F214(uint64_t a1, uint64_t a2)
{
  if (qword_281319160 != -1)
  {
    swift_once();
  }

  swift_beginAccess();

  swift_isUniquelyReferenced_nonNull_native();
  v5 = off_281319168;
  sub_26808F034(a2, a1);
  off_281319168 = v5;
  return swift_endAccess();
}

uint64_t sub_26808F2E0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_26808F308()
{
  if (sub_2680B3E3C())
  {
    v0 = sub_2680B3E8C();
    v2 = v1;

    v3 = HIBYTE(v2) & 0xF;
    if ((v2 & 0x2000000000000000) == 0)
    {
      v3 = v0 & 0xFFFFFFFFFFFFLL;
    }

    if (v3)
    {
      v4 = sub_2680B3E8C();
      v6 = v5;
      if (v4 == sub_2680B2EDC() && v6 == v7)
      {
LABEL_16:

        return 1;
      }

      v9 = sub_2680B447C();

      if (v9)
      {
        return 1;
      }

      v10 = sub_2680B3E8C();
      v12 = v11;
      v13 = sub_2680B2F0C();
      if (v14)
      {
        if (v10 != v13 || v14 != v12)
        {
          v16 = sub_2680B447C();

          return v16 & 1;
        }

        goto LABEL_16;
      }
    }
  }

  return 0;
}

void sub_26808F45C(uint64_t a1, uint64_t a2, void (*a3)(char *, char *), uint64_t a4)
{
  v74 = a3;
  v75 = a4;
  matched = type metadata accessor for TurnInputRuleMatchResult(0);
  v72 = *(matched - 8);
  v7 = *(v72 + 64);
  v8 = MEMORY[0x28223BE20](matched - 8);
  v65 = &v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v61 = &v58 - v10;
  v11 = sub_2680B3E1C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = (&v58 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v14);
  v67 = &v58 - v17;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280249330, &qword_2680B59B8);
  v18 = *(*(v70 - 8) + 64);
  v19 = MEMORY[0x28223BE20](v70);
  v21 = &v58 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v19);
  v60 = &v58 - v23;
  MEMORY[0x28223BE20](v22);
  v59 = &v58 - v24;
  v76 = a1;
  v25 = *(a1 + 16);
  v73 = a2;
  v26 = *(a2 + 16);
  if (v26 >= v25)
  {
    v27 = v25;
  }

  else
  {
    v27 = v26;
  }

  v77 = MEMORY[0x277D84F90];
  sub_26808FC8C(0, v27, 0);
  v28 = v77;
  v71 = v11;
  v68 = v26;
  v69 = v25;
  v66 = v27;
  if (v27)
  {
    v29 = 0;
    v63 = v12 + 16;
    v64 = v16;
    v62 = (v12 + 32);
    v30 = v12;
    while (v25 != v29)
    {
      v31 = v76 + ((*(v30 + 80) + 32) & ~*(v30 + 80)) + *(v30 + 72) * v29;
      v32 = v30;
      v33 = *(v30 + 16);
      v34 = v64;
      v33(v64, v31, v11);
      if (v26 == v29)
      {
        goto LABEL_25;
      }

      v35 = sub_2680B38AC();
      v36 = *(v35 - 8);
      v37 = v73 + ((*(v36 + 80) + 32) & ~*(v36 + 80)) + *(v36 + 72) * v29;
      v38 = v11;
      v39 = *(v70 + 48);
      (*v62)(v21, v34, v38);
      (*(v36 + 16))(&v21[v39], v37, v35);
      v40 = &v21[v39];
      v41 = v65;
      v74(v21, v40);
      sub_26808C12C(v21, &qword_280249330, &qword_2680B59B8);
      v77 = v28;
      v43 = *(v28 + 16);
      v42 = *(v28 + 24);
      if (v43 >= v42 >> 1)
      {
        sub_26808FC8C(v42 > 1, v43 + 1, 1);
        v28 = v77;
      }

      ++v29;
      *(v28 + 16) = v43 + 1;
      sub_268091544(v41, v28 + ((*(v72 + 80) + 32) & ~*(v72 + 80)) + *(v72 + 72) * v43);
      v11 = v71;
      v26 = v68;
      v25 = v69;
      v30 = v32;
      if (v66 == v29)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {
    v30 = v12;
LABEL_13:
    v64 = (v30 + 32);
    v65 = (v30 + 16);
    v44 = v66;
    while (v25 != v44)
    {
      if (v44 >= v25)
      {
        goto LABEL_26;
      }

      (*(v30 + 16))(v67, v76 + ((*(v30 + 80) + 32) & ~*(v30 + 80)) + *(v30 + 72) * v44, v11);
      if (__OFADD__(v44, 1))
      {
        goto LABEL_27;
      }

      if (v26 == v44)
      {
        (*(v30 + 8))(v67, v11);
        return;
      }

      if (v44 >= v26)
      {
        goto LABEL_28;
      }

      v45 = sub_2680B38AC();
      v46 = v11;
      v47 = *(v45 - 8);
      v48 = v73 + ((*(v47 + 80) + 32) & ~*(v47 + 80)) + *(v47 + 72) * v44;
      v49 = v70;
      v50 = *(v70 + 48);
      v51 = v60;
      (*v64)(v60, v67, v46);
      v52 = &v51[v50];
      v53 = v61;
      (*(v47 + 16))(v52, v48, v45);
      v54 = v51;
      v55 = v59;
      sub_2680ADF74(v54, v59, &qword_280249330, &qword_2680B59B8);
      v74(v55, (v55 + *(v49 + 48)));
      sub_26808C12C(v55, &qword_280249330, &qword_2680B59B8);
      v77 = v28;
      v57 = *(v28 + 16);
      v56 = *(v28 + 24);
      if (v57 >= v56 >> 1)
      {
        sub_26808FC8C(v56 > 1, v57 + 1, 1);
        v28 = v77;
      }

      *(v28 + 16) = v57 + 1;
      sub_268091544(v53, v28 + ((*(v72 + 80) + 32) & ~*(v72 + 80)) + *(v72 + 72) * v57);
      ++v44;
      v11 = v71;
      v26 = v68;
      v25 = v69;
    }
  }
}

void sub_26808FAAC(char a1, uint64_t a2, char a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void), void (*a8)(uint64_t, uint64_t, char *))
{
  if (a3)
  {
    OUTLINED_FUNCTION_17();
    if (v13 != v14)
    {
      OUTLINED_FUNCTION_25_0();
      if (v13)
      {
LABEL_24:
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_15();
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
    v22 = MEMORY[0x277D84F90];
    goto LABEL_18;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v17 = a7(0);
  OUTLINED_FUNCTION_19_2(v17);
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
  v25 = a7(0);
  OUTLINED_FUNCTION_13_0(v25);
  v27 = *(v26 + 80);
  OUTLINED_FUNCTION_33();
  if (a1)
  {
    a8(a4 + v28, v15, v22 + v28);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

uint64_t sub_26808FCAC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CacheKey();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26808FD60(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CacheKey();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_26808FDC4(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = type metadata accessor for CacheKey();
  result = sub_26808FD60(a2, v8 + *(*(v9 - 8) + 72) * a1);
  *(a4[7] + 8 * a1) = a3;
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

uint64_t sub_26808FE64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v94 = a3;
  v98 = a1;
  v109 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280249258, &qword_2680B54E8);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v95 = &v92 - v8;
  v9 = sub_2680B37BC();
  v10 = OUTLINED_FUNCTION_4(v9);
  v96 = v11;
  v97 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_6();
  v16 = v15 - v14;
  v17 = sub_2680B37CC();
  v18 = OUTLINED_FUNCTION_4(v17);
  v20 = v19;
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_6();
  v25 = v24 - v23;
  v26 = sub_2680B31FC();
  v27 = OUTLINED_FUNCTION_4(v26);
  v105 = v28;
  v106 = v27;
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_6();
  v33 = v32 - v31;
  v34 = sub_2680B386C();
  v35 = OUTLINED_FUNCTION_4(v34);
  v103 = v36;
  v104 = v35;
  v38 = *(v37 + 64);
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_6();
  matched = type metadata accessor for UtteranceRuleMatchResult(0);
  v39 = *(*(matched - 8) + 64);
  v40 = MEMORY[0x28223BE20](matched);
  v42 = &v92 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v40);
  v107 = &v92 - v43;
  v100 = v4;
  sub_2680B387C();
  v99 = sub_2680B3E0C();
  v45 = v44;
  v101 = a2;
  v102 = v33;
  sub_2680B3DDC();
  sub_2680B384C();
  v46 = (*(v20 + 88))(v25, v17);
  v51 = &qword_281319000;
  v52 = &qword_281319000;
  if (v46 == *MEMORY[0x277D5DB98])
  {

    sub_2680B423C();
    if (qword_2813194A0 != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    sub_2680B406C();
    OUTLINED_FUNCTION_4_3();
    (*(v105 + 8))(v102, v106);
    v53 = OUTLINED_FUNCTION_3_4();
    v54(v53);
    v55 = *(v45 + 24);
    *v42 = 0;
    *&v42[v55] = 0;
    *&v42[*(v45 + 28)] = 0;
    goto LABEL_14;
  }

  v93 = v45;
  if (v46 == *MEMORY[0x277D5DBA0])
  {
    sub_2680B37DC();
    sub_2680B378C();
    v56 = v97;
    v57 = *(v96 + 8);
    v57(v16, v97);
    sub_2680B37DC();
    sub_2680B37AC();
    v57(v16, v56);
    sub_2680B37DC();
    sub_2680B379C();
    v57(v16, v56);
    v110 = sub_2680B385C();
    v111 = v58;
    v59 = sub_2680B2F5C();
    v96 = *(*(v59 - 8) + 16);
    v60 = v95;
    v61 = v98;
    (v96)(v95, v98, v59);
    OUTLINED_FUNCTION_5_3();
    sub_26808CA6C();
    v97 = sub_2680B42EC();
    v94 = v62;
    sub_2680A0460(v60);

    v45 = v93;
    v110 = v99;
    v111 = v93;
    (v96)(v60, v61, v59);
    OUTLINED_FUNCTION_5_3();
    v63 = 1;
    v64 = sub_2680B42EC();
    v66 = v65;
    v67 = v60;
    v68 = v94;
    sub_2680A0460(v67);

    if (v97 != v64 || v68 != v66)
    {
      v63 = sub_2680B447C();
    }

    OUTLINED_FUNCTION_4_3();
    (*(v105 + 8))(v102, v106);
    v70 = OUTLINED_FUNCTION_3_4();
    v71(v70);
    v72 = *(v45 + 24);
    *v42 = v63 & 1;
    *&v42[v72] = 0;
    *&v42[*(v45 + 28)] = 0;
    v51 = &qword_281319000;
    v52 = &qword_281319000;
LABEL_14:
    v76 = v107;
    sub_268091440(v42, v107);
    if (*v76 != 1)
    {
LABEL_28:
      v85 = 0;
      goto LABEL_29;
    }

    v77 = *(sub_2680B36FC() + 16);

    if (v77)
    {
      v78 = sub_2680B36FC();
      MEMORY[0x28223BE20](v78);
      v79 = v101;
      *(&v92 - 2) = v101;
      v80 = sub_268093CB0(sub_268093FA4, (&v92 - 4), v78);

      if (!v80)
      {
        sub_2680B424C();
        if (v51[148] != -1)
        {
          OUTLINED_FUNCTION_0();
        }

        v81 = v52[149];
LABEL_27:
        sub_2680B406C();
        goto LABEL_28;
      }
    }

    else
    {
      v79 = v101;
    }

    v82 = *(sub_2680B388C() + 16);

    if (!v82 || (v83 = sub_2680B388C(), MEMORY[0x28223BE20](v83), *(&v92 - 2) = v79, v84 = sub_2680983F0(sub_2680A0440, (&v92 - 4), v83), , v84))
    {
      v85 = 1;
LABEL_29:
      v87 = type metadata accessor for TurnInputRuleMatchResult(0);
      v88 = *(v87 + 20);
      v89 = v109;
      sub_268091440(v76, &v109[v88]);
      result = __swift_storeEnumTagSinglePayload(&v89[v88], 0, 1, v45);
      v91 = *(v87 + 24);
      *v89 = v85;
      *&v89[v91] = 0;
      return result;
    }

    sub_2680B424C();
    if (v51[148] != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v86 = v52[149];
    goto LABEL_27;
  }

  if (v46 == *MEMORY[0x277D5DBA8])
  {
    v73 = v102;
    sub_268090710(v99, v93, v102, v94, v47, v48, v49, v50, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102, v103);

    (*(v105 + 8))(v73, v106);
    v74 = OUTLINED_FUNCTION_3_4();
    v75(v74);
    v45 = matched;
    goto LABEL_14;
  }

  result = sub_2680B446C();
  __break(1u);
  return result;
}

void sub_268090710(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_54();
  a19 = v20;
  a20 = v21;
  v152 = v22;
  v159 = v23;
  v160 = v24;
  v155 = v25;
  v156 = v26;
  v27 = sub_2680B377C();
  v28 = OUTLINED_FUNCTION_4(v27);
  v153 = v29;
  v154 = v28;
  v31 = *(v30 + 64);
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_6();
  v34 = v33 - v32;
  matched = type metadata accessor for UtteranceRuleMatchResult(0);
  v35 = *(*(matched - 1) + 64);
  MEMORY[0x28223BE20](matched);
  OUTLINED_FUNCTION_6();
  v38 = (v37 - v36);
  v39 = sub_2680B37BC();
  v40 = OUTLINED_FUNCTION_4(v39);
  v42 = v41;
  v44 = *(v43 + 64);
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_6();
  v47 = v46 - v45;
  v48 = sub_2680B385C();
  v50 = v49;
  sub_2680B37DC();
  v51 = sub_2680B378C();
  (*(v42 + 8))(v47, v39);
  v52 = sub_268087C68(0, &unk_281318F50, 0x277CCAC68);
  v53 = 0;
  v54 = sub_268089678(v48, v50, v51 & 1, 0);
  v55 = MEMORY[0x277D5DBA8];
  v61 = v54;
  v150 = v34;
  v151 = v38;

  v62 = v61;
  v63 = sub_2680B40BC();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280249170, &qword_2680B53B0);
  sub_268091340();
  sub_26808CA6C();
  v64 = MEMORY[0x277D837D0];
  v65 = sub_2680B427C();
  v67 = [v62 matchesInString:v63 options:0 range:{v65, v66}];

  sub_268087C68(0, &qword_281319310, 0x277CCACC0);
  v68 = sub_2680B41DC();

  v69 = sub_2680913FC(v68);
  if (v69 != 1)
  {
    v126 = v69;

    if (v126 >= 2)
    {
      v68 = sub_2680B425C();
      if (qword_2813194A0 != -1)
      {
        OUTLINED_FUNCTION_0();
      }

      v53 = off_2813194A8;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280249100, &qword_2680B4FF0);
      v127 = swift_allocObject();
      *(v127 + 16) = xmmword_2680B5350;
      *(v127 + 56) = v52;
      *(v127 + 64) = sub_26809DC0C();
      *(v127 + 32) = v62;
      *(v127 + 96) = v64;
      *(v127 + 104) = sub_26808C1E4();
      *(v127 + 72) = v155;
      *(v127 + 80) = v156;
      v128 = v62;

      OUTLINED_FUNCTION_57();
    }

    v129 = OUTLINED_FUNCTION_55();
    OUTLINED_FUNCTION_1_1(v129);
    (*(v130 + 104))(&v160[v52], v68);
    v131 = v53[6];
    *v160 = 0;
    *&v160[v131] = 0;
    *&v160[v53[7]] = 0;
    goto LABEL_57;
  }

  v70 = v160;
  if (!sub_2680913FC(v68))
  {

    v132 = OUTLINED_FUNCTION_55();
    OUTLINED_FUNCTION_1_1(v132);
    (*(v133 + 104))(&v160[v52], v68);
    v134 = MEMORY[0x18];
    *v160 = 0;
    *&v160[v134] = 0;
    *&v160[MEMORY[0x1C]] = 0;
LABEL_57:
    OUTLINED_FUNCTION_53();
    return;
  }

  v146 = 0;
  sub_268091880(0, (v68 & 0xC000000000000001) == 0, v68);
  if ((v68 & 0xC000000000000001) != 0)
  {
    v71 = MEMORY[0x26D60FED0](0, v68);
  }

  else
  {
    v71 = *(v68 + 32);
  }

  v72 = v71;
  v73 = v150;
  v74 = v159;

  v75 = matched[5];
  v76 = *v55;
  v77 = sub_2680B37CC();
  OUTLINED_FUNCTION_1_1(v77);
  v79 = &v151[v75];
  v80 = v151;
  (*(v78 + 104))(v79, v76);
  v81 = matched[6];
  *v151 = 0;
  v147 = v81;
  *&v151[v81] = 0;
  *&v151[matched[7]] = v72;
  v149 = v72;
  v82 = sub_2680B36FC();
  isUniquelyReferenced_nonNull_native = 0;
  v84 = 0;
  v148 = *(v82 + 16);
  v85 = v153;
  v165 = MEMORY[0x277D84F98];
  v86 = v154;
LABEL_6:
  if (v84 == v148)
  {

    OUTLINED_FUNCTION_59();

    *v80 = 1;
    *(v80 + v147) = v165;
LABEL_50:
    OUTLINED_FUNCTION_27_0();
    sub_2680931D0(v80, v70);
    v136 = v80;
LABEL_56:
    sub_268093BF8(v136, v84);
    sub_268093C70(isUniquelyReferenced_nonNull_native);
    goto LABEL_57;
  }

  if (v84 >= *(v82 + 16))
  {
LABEL_65:
    __break(1u);
    OUTLINED_FUNCTION_0();
    sub_2680B406C();

    v56 = *(v165 + 20);
    v57 = *v55;
    v58 = sub_2680B37CC();
    OUTLINED_FUNCTION_1_1(v58);
    (*(v59 + 104))(&v160[v56], v57);
    v60 = *(v165 + 24);
    *v160 = 0;
    *&v160[v60] = 0;
    *&v160[*(v165 + 28)] = 0;
    goto LABEL_57;
  }

  v87 = *(v85 + 80);
  OUTLINED_FUNCTION_33();
  (*(v90 + 16))(v73, v88 + v89 + *(v90 + 72) * v84, v86);
  if ((sub_2680B375C() & 1) == 0)
  {

    OUTLINED_FUNCTION_49();

    v84 = sub_2680B425C();
    if (qword_2813194A0 != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    sub_2680B406C();
    OUTLINED_FUNCTION_59();
    OUTLINED_FUNCTION_19(&a17);
    v135(v73, v86);
    goto LABEL_50;
  }

  v161 = v84;
  v91 = v70;
  v92 = v80;
  sub_2680B374C();
  v80 = sub_2680B40BC();

  v84 = [v149 rangeWithName_];
  v94 = v93;

  if (v84 == sub_2680B2DAC())
  {

    OUTLINED_FUNCTION_49();

    sub_2680B424C();
    if (qword_2813194A0 != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280249100, &qword_2680B4FF0);
    v137 = swift_allocObject();
    *(v137 + 16) = xmmword_2680B5350;
    v138 = sub_2680B374C();
    v140 = v139;
    v84 = MEMORY[0x277D837D0];
    *(v137 + 56) = MEMORY[0x277D837D0];
    v141 = sub_26808C1E4();
    *(v137 + 64) = v141;
    *(v137 + 32) = v138;
    *(v137 + 40) = v140;
    v142 = sub_2680B385C();
    *(v137 + 96) = v84;
    *(v137 + 104) = v141;
    *(v137 + 72) = v142;
    *(v137 + 80) = v143;
    OUTLINED_FUNCTION_57();
    OUTLINED_FUNCTION_59();

    OUTLINED_FUNCTION_19(&a17);
    v144(v73, v86);
    goto LABEL_55;
  }

  v95 = sub_268091888(v73, v84, v94, v74, v152, v155, v156);
  if (!v95)
  {
    OUTLINED_FUNCTION_59();
    OUTLINED_FUNCTION_49();

    OUTLINED_FUNCTION_19(&a17);
    v145(v73, v86);

LABEL_55:
    OUTLINED_FUNCTION_27_0();
    sub_2680931D0(v92, v91);
    v136 = v92;
    goto LABEL_56;
  }

  v96 = v95;
  v55 = 0;
  v162 = v161 + 1;
  v163 = v95;
  v158 = v95 + 64;
  v97 = 1 << *(v95 + 32);
  if (v97 < 64)
  {
    v98 = ~(-1 << v97);
  }

  else
  {
    v98 = -1;
  }

  v99 = v98 & *(v95 + 64);
  v157 = (v97 + 63) >> 6;
  while (1)
  {
    if (!v99)
    {
      v74 = v159;
      while (1)
      {
        v100 = v55 + 1;
        if (__OFADD__(v55, 1))
        {
          break;
        }

        if (v100 >= v157)
        {
          OUTLINED_FUNCTION_19(&a17);
          v73 = v150;
          v86 = v154;
          v125(v150, v154);

          v70 = v160;
          v84 = v162;
          v80 = v151;
          v82 = OUTLINED_FUNCTION_49();
          goto LABEL_6;
        }

        v99 = *(v158 + 8 * v100);
        ++v55;
        if (v99)
        {
          v55 = v100;
          goto LABEL_21;
        }
      }

      __break(1u);
LABEL_59:
      __break(1u);
LABEL_60:
      __break(1u);
LABEL_61:
      __break(1u);
LABEL_62:
      __break(1u);
LABEL_63:
      __break(1u);
LABEL_64:
      __break(1u);
      goto LABEL_65;
    }

LABEL_21:
    v101 = (v55 << 9) | (8 * __clz(__rbit64(v99)));
    v80 = *(*(v96 + 48) + v101);
    v102 = *(*(v96 + 56) + v101);

    sub_268093C70(isUniquelyReferenced_nonNull_native);
    swift_isUniquelyReferenced_nonNull_native();
    v103 = sub_268093DAC(v80);
    if (__OFADD__(*(v165 + 16), (v104 & 1) == 0))
    {
      goto LABEL_59;
    }

    v105 = v103;
    v106 = v104;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280249180, &qword_2680B53B8);
    if (sub_2680B43AC())
    {
      break;
    }

LABEL_25:
    if ((v106 & 1) == 0)
    {
      *(v165 + 8 * (v105 >> 6) + 64) |= 1 << v105;
      *(*(v165 + 48) + 8 * v105) = v80;
      *(*(v165 + 56) + 8 * v105) = MEMORY[0x277D84F90];
      v109 = *(v165 + 16);
      v110 = __OFADD__(v109, 1);
      v111 = v109 + 1;
      if (v110)
      {
        goto LABEL_63;
      }

      *(v165 + 16) = v111;
    }

    v112 = *(v165 + 56);
    v113 = *(v102 + 16);
    v80 = *(v112 + 8 * v105);
    v114 = v80[2];
    if (__OFADD__(v114, v113))
    {
      goto LABEL_60;
    }

    v115 = *(v112 + 8 * v105);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v112 + 8 * v105) = v80;
    if (!isUniquelyReferenced_nonNull_native || v114 + v113 > v80[3] >> 1)
    {

      sub_268095454();
      v116 = *(v112 + 8 * v105);
      *(v112 + 8 * v105) = v117;

      v80 = *(v112 + 8 * v105);
    }

    v99 &= v99 - 1;
    if (*(v102 + 16))
    {
      isUniquelyReferenced_nonNull_native = v80[2];
      v118 = (v80[3] >> 1) - isUniquelyReferenced_nonNull_native;
      v119 = *(type metadata accessor for Siri_Nlu_Internal_TurnInputRule.UtteranceRule.SpanForNode() - 8);
      if (v118 < v113)
      {
        goto LABEL_62;
      }

      v120 = (*(v119 + 80) + 32) & ~*(v119 + 80);
      v121 = *(v119 + 72);
      swift_arrayInitWithCopy();

      OUTLINED_FUNCTION_10();
      v96 = v163;
      if (v113)
      {
        v122 = *(v112 + 8 * v105);
        v123 = *(v122 + 16);
        v110 = __OFADD__(v123, v113);
        v124 = v123 + v113;
        if (v110)
        {
          goto LABEL_64;
        }

        *(v122 + 16) = v124;
        OUTLINED_FUNCTION_10();
      }
    }

    else
    {

      OUTLINED_FUNCTION_10();
      v96 = v163;
      if (v113)
      {
        goto LABEL_61;
      }
    }
  }

  v107 = sub_268093DAC(v80);
  if ((v106 & 1) == (v108 & 1))
  {
    v105 = v107;
    goto LABEL_25;
  }

  sub_2680B44AC();
  __break(1u);
}

unint64_t sub_268091340()
{
  result = qword_281319300;
  if (!qword_281319300)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280249170, &qword_2680B53B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281319300);
  }

  return result;
}

unint64_t sub_2680913A4()
{
  result = qword_280249280;
  if (!qword_280249280)
  {
    sub_2680B32DC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280249280);
  }

  return result;
}

uint64_t sub_268091404(unint64_t a1)
{
  if (a1 >> 62)
  {
    return sub_2680B43CC();
  }

  else
  {
    return *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }
}

uint64_t OUTLINED_FUNCTION_57()
{

  return sub_2680B406C();
}

uint64_t sub_268091440(uint64_t a1, uint64_t a2)
{
  matched = type metadata accessor for UtteranceRuleMatchResult(0);
  (*(*(matched - 8) + 32))(a2, a1, matched);
  return a2;
}

uint64_t sub_2680914B8()
{
  OUTLINED_FUNCTION_8_1();
  v4 = sub_2680B37CC();
  result = OUTLINED_FUNCTION_13_0(v4);
  if (*(v6 + 84) == v3)
  {
    v7 = OUTLINED_FUNCTION_14_2();

    return __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
  }

  else
  {
    *(v1 + *(v2 + 24)) = v0;
  }

  return result;
}

uint64_t sub_268091544(uint64_t a1, uint64_t a2)
{
  matched = type metadata accessor for TurnInputRuleMatchResult(0);
  (*(*(matched - 8) + 32))(a2, a1, matched);
  return a2;
}

uint64_t sub_2680915A8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  OUTLINED_FUNCTION_1_1(v5);
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t sub_268091618(uint64_t a1, int a2, uint64_t a3)
{
  OUTLINED_FUNCTION_10_1();
  v5 = sub_2680B37CC();
  OUTLINED_FUNCTION_13_0(v5);
  if (*(v6 + 84) == a2)
  {
    v7 = OUTLINED_FUNCTION_15_2();

    return __swift_getEnumTagSinglePayload(v7, v8, v9);
  }

  else
  {
    OUTLINED_FUNCTION_9_3(*(a3 + 24));
    return OUTLINED_FUNCTION_17_2(v11);
  }
}

uint64_t OUTLINED_FUNCTION_9_0()
{

  return sub_2680B447C();
}

uint64_t OUTLINED_FUNCTION_9_2()
{

  return swift_once();
}

uint64_t sub_26809170C(uint64_t a1)
{
  matched = type metadata accessor for TurnInputRuleMatchResult(0);
  (*(*(matched - 8) + 8))(a1, matched);
  return a1;
}

uint64_t OUTLINED_FUNCTION_37_0(uint64_t a1)
{

  return sub_2680A5EF0(a1, v1);
}

uint64_t OUTLINED_FUNCTION_37_1()
{
  v2 = *(v1 - 112);
  v3 = *(*(v1 - 120) + 8);
  return v0;
}

void sub_2680917A4()
{
  OUTLINED_FUNCTION_3_3();
  if (v4)
  {
    OUTLINED_FUNCTION_2_3();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_16_0();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_4_2();
    }
  }

  else
  {
    v5 = v3;
  }

  v8 = *(v0 + 16);
  OUTLINED_FUNCTION_21_0(v2, v5, &qword_280249220, &qword_2680B5478);
  v9 = OUTLINED_FUNCTION_11_0();
  matched = type metadata accessor for OverrideMatchResult(v9);
  OUTLINED_FUNCTION_13_0(matched);
  v12 = *(v11 + 80);
  OUTLINED_FUNCTION_33();
  if (v1)
  {
    v14 = OUTLINED_FUNCTION_1_2(v13);
    sub_26808B38C(v14, v15, v16, v17);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_5_2();
  }
}

uint64_t sub_268091888(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v184 = a7;
  v183 = a6;
  v179 = a5;
  v212 = a4;
  v170 = type metadata accessor for Siri_Nlu_Internal_TurnInputRule.UtteranceRule.SpanForNode();
  v169 = *(v170 - 8);
  v10 = *(v169 + 64);
  MEMORY[0x28223BE20](v170);
  v175 = &v168 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_2680B2FCC();
  v13 = *(v12 - 8);
  v204 = v12;
  v205 = v13;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v203 = &v168 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v208 = sub_2680B33EC();
  v194 = *(v208 - 8);
  v16 = *(v194 + 64);
  v17 = MEMORY[0x28223BE20](v208);
  v195 = &v168 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v20 = &v168 - v19;
  v21 = sub_2680B383C();
  v186 = *(v21 - 8);
  v22 = *(v186 + 64);
  v23 = MEMORY[0x28223BE20](v21);
  v188 = &v168 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v26 = &v168 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280249188, &qword_2680B53C0);
  v28 = *(*(v27 - 8) + 64);
  MEMORY[0x28223BE20](v27);
  v181 = (&v168 - v29);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280249190, &qword_2680B53C8);
  v31 = *(*(v30 - 8) + 64);
  v32 = MEMORY[0x28223BE20](v30 - 8);
  v177 = &v168 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = MEMORY[0x28223BE20](v32);
  v171 = &v168 - v35;
  v36 = MEMORY[0x28223BE20](v34);
  v38 = &v168 - v37;
  MEMORY[0x28223BE20](v36);
  v190 = &v168 - v39;
  v40 = *(sub_2680B36FC() + 16);

  if (!v40)
  {
    sub_2680B424C();
    if (qword_2813194A0 == -1)
    {
LABEL_67:
      sub_2680B406C();
      return MEMORY[0x277D84F98];
    }

LABEL_123:
    swift_once();
    goto LABEL_67;
  }

  v178 = a3;
  v41 = __OFADD__(a2, a3);
  v42 = a2 + a3;
  if (v41)
  {
LABEL_122:
    __break(1u);
    goto LABEL_123;
  }

  v209 = a2;
  v196 = sub_2680B36FC();
  v43 = 0;
  v176 = v186 + 16;
  v193 = (v186 + 32);
  v211 = v194 + 16;
  v201 = v205 + 8;
  v202 = v205 + 16;
  v207 = (v194 + 8);
  v180 = (v194 + 32);
  v192 = (v186 + 8);
  v199 = v42;
  v173 = v42 - 1;
  v44 = MEMORY[0x277D84F90];
  v45 = __OFSUB__(v42, 1);
  v174 = v45;
  v172 = xmmword_2680B4FE0;
  v191 = v21;
  v189 = v27;
  v200 = a1;
  v185 = v26;
  v187 = v38;
  while (1)
  {
    v46 = *(v196 + 16);
    if (v43 == v46)
    {
      v197 = v43;
      v47 = 1;
    }

    else
    {
      if (v43 >= v46)
      {
        goto LABEL_115;
      }

      v48 = v43 + 1;
      v49 = v186;
      v50 = v196 + ((*(v49 + 80) + 32) & ~*(v49 + 80)) + *(v49 + 72) * v43;
      v51 = *(v27 + 48);
      v52 = v181;
      *v181 = v43;
      (*(v49 + 16))(v52 + v51, v50, v21);
      sub_26809315C(v52, v38, &qword_280249188, &qword_2680B53C0);
      v47 = 0;
      v197 = v48;
    }

    __swift_storeEnumTagSinglePayload(v38, v47, 1, v27);
    v53 = v190;
    sub_26809315C(v38, v190, &qword_280249190, &qword_2680B53C8);
    if (__swift_getEnumTagSinglePayload(v53, 1, v27) == 1)
    {
      break;
    }

    v206 = *v53;
    (*v193)(v26, &v53[*(v27 + 48)], v21);
    v54 = sub_2680B382C();
    v198 = v44;
    if ((v54 & 1) == 0)
    {
      goto LABEL_51;
    }

    v55 = sub_2680B381C();
    v57 = v56;

    v58 = HIBYTE(v57) & 0xF;
    if ((v57 & 0x2000000000000000) == 0)
    {
      v58 = v55 & 0xFFFFFFFFFFFFLL;
    }

    if (v58)
    {
      v59 = sub_2680B381C();
      if (!*(v179 + 16) || (v61 = sub_26809EB44(v59, v60), (v62 & 1) == 0))
      {

        (*v192)(v26, v21);
        goto LABEL_107;
      }

      v63 = *(*(v179 + 56) + 8 * v61);

      v64 = *(v63 + 16);
      if (v64)
      {
        v65 = (*(v194 + 80) + 32) & ~*(v194 + 80);
        v168 = v63;
        v182 = v65;
        v66 = v63 + v65;
        v210 = *(v194 + 72);
        v67 = *(v194 + 16);
        v68 = MEMORY[0x277D84F90];
        v69 = v208;
        v70 = v199;
        while (1)
        {
          v67(v20, v66, v69);
          v71 = sub_2680B332C();
          v72 = *(sub_2680B31DC() + 16);

          if (v72 <= v71)
          {
            v79 = -1;
          }

          else
          {
            v73 = sub_2680B31DC();
            if (*(v73 + 16) <= v71)
            {
              __break(1u);
LABEL_112:
              __break(1u);
LABEL_113:
              __break(1u);
LABEL_114:
              __break(1u);
LABEL_115:
              __break(1u);
LABEL_116:
              __break(1u);
              goto LABEL_117;
            }

            v74 = v205;
            v75 = v73 + ((*(v74 + 80) + 32) & ~*(v74 + 80)) + *(v74 + 72) * v71;
            v77 = v203;
            v76 = v204;
            (*(v205 + 16))(v203, v75, v204);

            v78 = sub_2680B2FBC();
            (*(v74 + 8))(v77, v76);
            v79 = v78;
          }

          v80 = sub_2680B32FC();
          if (v80 && (v81 = v80, v82 = *(sub_2680B31DC() + 16), , v82 >= v81))
          {
            v86 = sub_2680B31DC();
            if (*(v86 + 16) < v81)
            {
              goto LABEL_112;
            }

            v87 = v81 - 1;
            v89 = v204;
            v88 = v205;
            v90 = v203;
            (*(v205 + 16))(v203, v86 + ((*(v88 + 80) + 32) & ~*(v88 + 80)) + *(v205 + 72) * v87, v204);

            v91 = sub_2680B2FAC();
            v92 = v90;
            v70 = v199;
            (*(v88 + 8))(v92, v89);
            v85 = v91;
            v83 = v209;
            if (v79 < v209 || v70 < v91)
            {
              goto LABEL_48;
            }
          }

          else
          {
            v83 = v209;
            if (v79 < v209 || v70 < -1)
            {
              goto LABEL_48;
            }

            v85 = -1;
          }

          if (v206 || v79 == v83)
          {
            v94 = *(sub_2680B36FC() + 16);

            if (v206 != v94 - 1 || v85 == v70)
            {
              v69 = v208;
              v67(v195, v20, v208);
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v97 = *(v68 + 16);
                sub_26809EDEC();
                v68 = v98;
              }

              v96 = *(v68 + 16);
              if (v96 >= *(v68 + 24) >> 1)
              {
                sub_26809EDEC();
                v68 = v99;
              }

              (*v207)(v20, v69);
              *(v68 + 16) = v96 + 1;
              (*v180)(v68 + v182 + v96 * v210, v195, v69);
              goto LABEL_49;
            }
          }

LABEL_48:
          v69 = v208;
          (*v207)(v20, v208);
LABEL_49:
          v66 += v210;
          if (!--v64)
          {

            v21 = v191;
            v27 = v189;
            v26 = v185;
            goto LABEL_60;
          }
        }
      }

      v68 = MEMORY[0x277D84F90];
LABEL_60:
      v44 = v198;
      if (!*(v68 + 16))
      {
        (*v192)(v26, v21);

LABEL_107:

LABEL_108:

        return 0;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v119 = *(v44 + 16);
        sub_26809304C();
        v44 = v120;
      }
    }

    else
    {
LABEL_51:
      v100 = v183;
      v101 = v184;
      sub_2680B422C();
      if (v102)
      {

LABEL_97:
        sub_2680B424C();
        v163 = v199;
        if (qword_2813194A0 != -1)
        {
          swift_once();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280249100, &qword_2680B4FF0);
        v164 = swift_allocObject();
        v165 = MEMORY[0x277D83B88];
        *(v164 + 16) = xmmword_2680B5360;
        v166 = MEMORY[0x277D83C10];
        *(v164 + 56) = v165;
        *(v164 + 64) = v166;
        *(v164 + 32) = v209;
        *(v164 + 96) = v165;
        *(v164 + 104) = v166;
        *(v164 + 72) = v163;
        *(v164 + 136) = MEMORY[0x277D837D0];
        *(v164 + 144) = sub_26808C1E4();
        *(v164 + 112) = v100;
        *(v164 + 120) = v101;

        sub_2680B406C();

        (*v192)(v26, v21);
        return 0;
      }

      v103 = sub_2680B41BC();
      v105 = v104;
      v107 = v106;
      v109 = v108;
      sub_268092C24();
      if ((v110 & 0x100000000) != 0)
      {
        goto LABEL_68;
      }

      if (v174)
      {
        goto LABEL_113;
      }

      sub_268092C24();
      if ((v111 & 0x100000000) != 0)
      {
LABEL_68:

        v21 = v191;
        v101 = v184;
        v100 = v183;
        v26 = v185;
        goto LABEL_97;
      }

      v112 = v111;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280249198, &unk_2680B53D0);
      v113 = *(v194 + 72);
      v114 = (*(v194 + 80) + 32) & ~*(v194 + 80);
      v68 = swift_allocObject();
      *(v68 + 16) = v172;
      sub_2680B33DC();
      sub_2680B33AC();
      sub_2680B333C();
      if (v112 == -1)
      {
        goto LABEL_114;
      }

      sub_2680B330C();
      MEMORY[0x26D60FC80](v103, v105, v107, v109);

      sub_2680B338C();
      v44 = v198;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v117 = *(v44 + 16);
        sub_26809304C();
        v44 = v118;
      }

      v21 = v191;
      v27 = v189;
      v26 = v185;
    }

    v115 = *(v44 + 16);
    if (v115 >= *(v44 + 24) >> 1)
    {
      sub_26809304C();
      v44 = v116;
    }

    (*v192)(v26, v21);
    *(v44 + 16) = v115 + 1;
    *(v44 + 8 * v115 + 32) = v68;
    v38 = v187;
    v43 = v197;
  }

  static MatchingSpanUtils.getAdjacentSpanLists(from:usingTokens:)();
  v123 = v122;

  v124 = *(v123 + 16);
  if (v124 >= 2)
  {
    sub_2680B424C();
    if (qword_2813194A0 != -1)
    {
      swift_once();
    }

    sub_2680B406C();
    v124 = *(v123 + 16);
  }

  if (!v124)
  {
    goto LABEL_108;
  }

  v125 = *(v123 + 32);

  v126 = *(v125 + 16);
  v127 = *(sub_2680B36FC() + 16);

  if (v126 != v127)
  {

    sub_2680B425C();
    if (qword_2813194A0 != -1)
    {
      swift_once();
    }

    sub_2680B406C();
    return 0;
  }

  v128 = sub_2680B36FC();
  v129 = 0;
  v130 = 0;
  v121 = MEMORY[0x277D84F98];
  v131 = *(v128 + 16);
  while (1)
  {
    v132 = v177;
    if (v130 == v131)
    {
      v133 = 1;
      v130 = v131;
    }

    else
    {
      if ((v130 & 0x8000000000000000) != 0)
      {
        goto LABEL_119;
      }

      if (v130 >= *(v128 + 16))
      {
        goto LABEL_120;
      }

      v134 = v186;
      v135 = v128 + ((*(v134 + 80) + 32) & ~*(v134 + 80)) + *(v134 + 72) * v130;
      v136 = *(v27 + 48);
      v137 = v181;
      *v181 = v130;
      (*(v134 + 16))(v137 + v136, v135, v21);
      sub_26809315C(v137, v177, &qword_280249188, &qword_2680B53C0);
      v133 = 0;
      ++v130;
      v132 = v177;
    }

    __swift_storeEnumTagSinglePayload(v132, v133, 1, v27);
    v138 = v132;
    v139 = v171;
    sub_26809315C(v138, v171, &qword_280249190, &qword_2680B53C8);
    if (__swift_getEnumTagSinglePayload(v139, 1, v27) == 1)
    {

      sub_268093C70(v129);
      return v121;
    }

    v140 = *v139;
    (*v193)(v188, &v139[*(v27 + 48)], v21);
    v141 = sub_2680B37FC();
    if ((v140 & 0x8000000000000000) != 0)
    {
      goto LABEL_116;
    }

    if (v140 >= *(v125 + 16))
    {
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
      goto LABEL_122;
    }

    v142 = v141;
    v143 = v125 + ((*(v194 + 80) + 32) & ~*(v194 + 80)) + *(v194 + 72) * v140;
    v144 = v175;
    (*(v194 + 16))(v175, v143, v208);
    *(v144 + *(v170 + 20)) = sub_2680B380C();
    sub_268093C70(v129);
    swift_isUniquelyReferenced_nonNull_native();
    v213 = v121;
    v145 = sub_268093DAC(v142);
    if (__OFADD__(v121[2], (v146 & 1) == 0))
    {
      goto LABEL_118;
    }

    v147 = v145;
    v148 = v146;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280249180, &qword_2680B53B8);
    v149 = sub_2680B43AC();
    v121 = v213;
    if (v149)
    {
      break;
    }

LABEL_88:
    if ((v148 & 1) == 0)
    {
      v121[(v147 >> 6) + 8] |= 1 << v147;
      *(v121[6] + 8 * v147) = v142;
      *(v121[7] + 8 * v147) = MEMORY[0x277D84F90];
      v152 = v121[2];
      v41 = __OFADD__(v152, 1);
      v153 = v152 + 1;
      if (v41)
      {
        goto LABEL_121;
      }

      v121[2] = v153;
    }

    v154 = v121[7];
    v155 = *(v154 + 8 * v147);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v154 + 8 * v147) = v155;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v160 = *(v155 + 16);
      sub_268095454();
      v155 = v161;
      *(v154 + 8 * v147) = v161;
    }

    v157 = *(v155 + 16);
    if (v157 >= *(v155 + 24) >> 1)
    {
      sub_268095454();
      *(v154 + 8 * v147) = v162;
    }

    v158 = v191;
    (*v192)(v188, v191);
    v159 = *(v154 + 8 * v147);
    *(v159 + 16) = v157 + 1;
    v21 = v158;
    sub_268095638(v175, v159 + ((*(v169 + 80) + 32) & ~*(v169 + 80)) + *(v169 + 72) * v157);
    v129 = sub_26809DC74;
    v27 = v189;
  }

  v150 = sub_268093DAC(v142);
  if ((v148 & 1) == (v151 & 1))
  {
    v147 = v150;
    goto LABEL_88;
  }

  result = sub_2680B44AC();
  __break(1u);
  return result;
}

unint64_t sub_268092BCC(unint64_t result, char a2, uint64_t a3)
{
  if (a2)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > result)
    {
      return result;
    }

    __break(1u);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_50()
{
  result = *(v0 - 424);
  v2 = *(v0 - 568);
  return result;
}

uint64_t OUTLINED_FUNCTION_50_0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
}

void sub_268092C24()
{
  OUTLINED_FUNCTION_54();
  v1 = v0;
  v2 = sub_2680B2FCC();
  v3 = OUTLINED_FUNCTION_4(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_6();
  v10 = v9 - v8;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802491F0, &qword_2680B5448);
  v12 = OUTLINED_FUNCTION_9(v11);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v50 = &v49 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802491F8, &unk_2680B5450);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  OUTLINED_FUNCTION_20();
  v20 = v18 - v19;
  MEMORY[0x28223BE20](v21);
  v23 = &v49 - v22;
  v24 = sub_2680B31DC();
  v25 = v1;
  v26 = 0;
  v51 = v5;
  v52 = v24;
  v27 = *(v24 + 16);
  v49 = v5 + 16;
  v53 = (v5 + 8);
  v54 = (v5 + 32);
  v55 = v27;
  do
  {
    while (1)
    {
      if (v26 == v27)
      {
        v28 = 1;
        v26 = v27;
      }

      else
      {
        if ((v26 & 0x8000000000000000) != 0)
        {
          __break(1u);
LABEL_17:
          __break(1u);
          goto LABEL_18;
        }

        if (v26 >= *(v52 + 16))
        {
          goto LABEL_17;
        }

        v29 = v50;
        v30 = *(v51 + 80);
        OUTLINED_FUNCTION_33();
        v34 = v32 + v31 + *(v33 + 72) * v26;
        v35 = *(v11 + 48);
        *v29 = v26;
        (*(v33 + 16))(&v29[v35], v34, v2);
        sub_268092F64(v29, v20, &qword_2802491F0, &qword_2680B5448);
        v28 = 0;
        ++v26;
      }

      __swift_storeEnumTagSinglePayload(v20, v28, 1, v11);
      sub_268092F64(v20, v23, &qword_2802491F8, &unk_2680B5450);
      EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v23, 1, v11);
      if (EnumTagSinglePayload == 1)
      {
        goto LABEL_14;
      }

      v37 = *v23;
      (*v54)(v10, &v23[*(v11 + 48)], v2);
      v38 = v2;
      v39 = v25;
      if (sub_2680B2FBC() <= v25)
      {
        break;
      }

      v40 = *v53;
      v41 = OUTLINED_FUNCTION_24();
      v42(v41);
      v2 = v38;
      v27 = v55;
    }

    v43 = sub_2680B2FAC();
    v44 = *v53;
    v45 = OUTLINED_FUNCTION_24();
    v46(v45);
    v47 = v43;
    v25 = v39;
    v48 = v47 <= v39;
    v2 = v38;
    v27 = v55;
  }

  while (v48);

  if ((v37 & 0x8000000000000000) == 0)
  {
    if (HIDWORD(v37))
    {
      __break(1u);
LABEL_14:
    }

    v56 = EnumTagSinglePayload == 1;
    OUTLINED_FUNCTION_53();
    return;
  }

LABEL_18:
  __break(1u);
}

uint64_t sub_268092F64(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_9(v6);
  (*(v7 + 32))(a2, a1);
  return a2;
}

uint64_t type metadata accessor for Siri_Nlu_Internal_TurnInputRule.UtteranceRule.SpanForNode()
{
  result = qword_2813196A0;
  if (!qword_2813196A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_26809304C()
{
  OUTLINED_FUNCTION_28_0();
  if (v3)
  {
    OUTLINED_FUNCTION_17();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_25_0();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_15();
    }
  }

  else
  {
    v4 = v2;
  }

  v7 = v0[2];
  if (v4 <= v7)
  {
    v8 = v0[2];
  }

  else
  {
    v8 = v4;
  }

  if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280249238, &qword_2680B5490);
    v9 = OUTLINED_FUNCTION_32_0();
    v10 = _swift_stdlib_malloc_size(v9);
    v9[2] = v7;
    v9[3] = 2 * ((v10 - 32) / 8);
  }

  else
  {
    v9 = MEMORY[0x277D84F90];
  }

  if (v1)
  {
    if (v9 != v0 || &v0[v7 + 4] <= v9 + 4)
    {
      memmove(v9 + 4, v0 + 4, 8 * v7);
    }

    v0[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280249230, &qword_2680B5488);
    swift_arrayInitWithCopy();
  }
}

uint64_t sub_26809315C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_1_1(v6);
  (*(v7 + 32))(a2, a1);
  return a2;
}

uint64_t sub_2680931D0(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_52();
  v6 = v5(v4);
  OUTLINED_FUNCTION_1_1(v6);
  (*(v7 + 16))(a2, v2);
  return a2;
}

void static MatchingSpanUtils.getAdjacentSpanLists(from:usingTokens:)()
{
  OUTLINED_FUNCTION_54();
  v106 = v0;
  v2 = v1;
  v96 = sub_2680B2FCC();
  v3 = OUTLINED_FUNCTION_4(v96);
  v98 = v4;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_6();
  v95 = v8 - v7;
  v9 = sub_2680B33EC();
  v10 = OUTLINED_FUNCTION_4(v9);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_20();
  v14 = MEMORY[0x28223BE20](v13);
  v16 = &v81 - v15;
  MEMORY[0x28223BE20](v14);
  if (!*(v2 + 16))
  {
    goto LABEL_59;
  }

  v97 = &v81 - v17;
  v104 = *(v2 + 32);
  v20 = *(v104 + 16);
  if (!v20)
  {
    goto LABEL_59;
  }

  v102 = v2;
  v103 = v18;
  v21 = *(v19 + 80);
  v100 = v19;
  v101 = (v21 + 32) & ~v21;
  v22 = v104 + v101;
  v23 = *(v19 + 72);
  v109 = (v19 + 16);

  v24 = MEMORY[0x277D84F90];
  v105 = xmmword_2680B4FE0;
  v107 = v23;
  do
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280249198, &unk_2680B53D0);
    v25 = v101;
    v26 = swift_allocObject();
    *(v26 + 16) = v105;
    v108 = *v109;
    v108(v26 + v25, v22, v9);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v32 = *(v24 + 16);
      OUTLINED_FUNCTION_18();
      sub_26809304C();
      v24 = v33;
    }

    v27 = v24;
    v28 = *(v24 + 16);
    v29 = v27;
    v30 = *(v27 + 24);
    if (v28 >= v30 >> 1)
    {
      OUTLINED_FUNCTION_27(v30);
      sub_26809304C();
      v29 = v34;
    }

    *(v29 + 16) = v28 + 1;
    v31 = v29 + 8 * v28;
    v24 = v29;
    *(v31 + 32) = v26;
    v22 += v107;
    --v20;
  }

  while (v20);

  v110 = v102;
  if (!sub_268093C80(v102))
  {
    goto LABEL_62;
  }

  sub_268093AF8(0, 1);

  v35 = v110;
  v36 = *(v110 + 16);
  v37 = v97;
  v38 = v107;
  if (!v36)
  {
LABEL_55:

    goto LABEL_59;
  }

  v39 = 0;
  v84 = v110 + 32;
  v93 = v98 + 8;
  v94 = v98 + 16;
  *&v105 = v100 + 8;
  v99 = (v100 + 32);
  v89 = xmmword_2680B5360;
  v83 = v110;
  v82 = v36;
  while (1)
  {
    if (v39 >= *(v35 + 16))
    {
      goto LABEL_61;
    }

    v88 = *(v24 + 16);
    v85 = v39;
    if (v88)
    {
      break;
    }

    v24 = MEMORY[0x277D84F90];
LABEL_53:
    if (!*(v24 + 16))
    {
      goto LABEL_58;
    }

    v39 = v85 + 1;
    if (v85 + 1 == v36)
    {
      goto LABEL_55;
    }
  }

  v40 = *(v84 + 8 * v39);
  v87 = v24 + 32;
  v102 = v40 + v101;

  v41 = 0;
  v42 = MEMORY[0x277D84F90];
  v91 = v40;
  v86 = v24;
  while (1)
  {
    if (v41 >= *(v24 + 16))
    {
      __break(1u);
LABEL_61:
      __break(1u);
LABEL_62:
      __break(1u);
      return;
    }

    v43 = *(v87 + 8 * v41);
    v44 = *(v43 + 16);
    if (v44)
    {
      break;
    }

LABEL_50:
    if (++v41 == v88)
    {

      v24 = v42;
      v35 = v83;
      v36 = v82;
      goto LABEL_53;
    }
  }

  v90 = v41;
  v108(v37, v43 + v101 + (v44 - 1) * v38, v9);
  v104 = *(v40 + 16);
  if (!v104)
  {
    v51 = *v105;
LABEL_49:
    (v51)(v37, v9);
    v41 = v90;
    goto LABEL_50;
  }

  v100 = v43;

  v45 = 0;
  while (v45 < *(v40 + 16))
  {
    v108(v16, v102 + v45 * v38, v9);
    v46 = sub_2680B31DC();
    v47 = sub_2680B32FC();
    if (v47 == sub_2680B332C())
    {

LABEL_22:
      v108(v103, v16, v9);
      v48 = v100;

      v49 = v48;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v75 = *(v48 + 16);
        OUTLINED_FUNCTION_18();
        sub_26809EDEC();
        v49 = v76;
      }

      v51 = *(v49 + 16);
      v50 = *(v49 + 24);
      if (v51 >= v50 >> 1)
      {
        OUTLINED_FUNCTION_27(v50);
        OUTLINED_FUNCTION_23_0();
        sub_26809EDEC();
        v49 = v77;
      }

      *(v49 + 16) = v51 + 1;
      (*v99)(v49 + v101 + v51 * v38, v103, v9);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v78 = *(v42 + 16);
        OUTLINED_FUNCTION_18();
        sub_26809304C();
        v42 = v79;
      }

      v53 = *(v42 + 16);
      v52 = *(v42 + 24);
      if (v53 >= v52 >> 1)
      {
        OUTLINED_FUNCTION_27(v52);
        sub_26809304C();
        v42 = v80;
      }

      v54 = OUTLINED_FUNCTION_7_3();
      (v51)(v54);
      *(v42 + 16) = v53 + 1;
      *(v42 + 8 * v53 + 32) = v49;
      v38 = v107;
      goto LABEL_45;
    }

    v51 = sub_2680B32FC();
    if (sub_2680B332C() >= v51)
    {
      v55 = sub_2680B32FC();
      v51 = *(v46 + 16);
      if (v51 != v55)
      {
        if (v51 < sub_2680B32FC() || v51 <= sub_2680B332C())
        {

          v92 = sub_2680B425C();
          if (qword_2813194A0 != -1)
          {
            OUTLINED_FUNCTION_0_0();
            swift_once();
          }

          v51 = off_2813194A8;
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280249100, &qword_2680B4FF0);
          v66 = swift_allocObject();
          *(v66 + 16) = v89;
          v67 = sub_2680B31BC();
          v69 = v68;
          *(v66 + 56) = MEMORY[0x277D837D0];
          *(v66 + 64) = sub_26808C1E4();
          *(v66 + 32) = v67;
          *(v66 + 40) = v69;
          v70 = sub_2680B32FC();
          v71 = MEMORY[0x277D84CC0];
          *(v66 + 96) = MEMORY[0x277D84CC0];
          v72 = MEMORY[0x277D84D30];
          *(v66 + 104) = MEMORY[0x277D84D30];
          *(v66 + 72) = v70;
          v73 = sub_2680B332C();
          *(v66 + 136) = v71;
          *(v66 + 144) = v72;
          *(v66 + 112) = v73;
          sub_2680B406C();

          v74 = OUTLINED_FUNCTION_7_3();
          (v51)(v74);
          v38 = v107;
LABEL_44:
          v40 = v91;
          goto LABEL_45;
        }

        v51 = sub_2680B32FC();
        while (v51 < sub_2680B332C())
        {
          if (v51 >= *(v46 + 16))
          {
            goto LABEL_57;
          }

          v57 = v98;
          v58 = *(v98 + 80);
          OUTLINED_FUNCTION_33();
          v60 = v95;
          v61 = v96;
          (*(v57 + 16))(v95, v46 + v59 + *(v57 + 72) * v51, v96);
          v62 = sub_2680B2F9C();
          v63 = *(v57 + 8);
          v37 = v97;
          v64 = v61;
          v38 = v107;
          v63(v60, v64);
          ++v51;
          if (v62)
          {
            v65 = OUTLINED_FUNCTION_7_3();
            (v51)(v65);

            goto LABEL_44;
          }
        }

        v40 = v91;
        goto LABEL_22;
      }
    }

    v56 = OUTLINED_FUNCTION_7_3();
    (v51)(v56);

LABEL_45:
    if (++v45 == v104)
    {

      v24 = v86;
      goto LABEL_49;
    }
  }

  __break(1u);
LABEL_57:
  __break(1u);
LABEL_58:

LABEL_59:
  OUTLINED_FUNCTION_53();
}

uint64_t sub_268093AF8(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_17;
  }

  v4 = *(*v2 + 16);
  if (v4 < a2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v5 = result;
  v6 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v7 = result - a2;
  if (__OFSUB__(0, v6))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  result = v4 - v6;
  if (__OFADD__(v4, v7))
  {
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  sub_268093C58(result, 1);
  v8 = *v2;
  v9 = *v2 + 32;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280249230, &qword_2680B5488);
  result = swift_arrayDestroy();
  if (!v6)
  {
LABEL_15:
    *v2 = v8;
    return result;
  }

  v10 = *(v8 + 16);
  v11 = v10 - a2;
  if (__OFSUB__(v10, a2))
  {
    goto LABEL_21;
  }

  v12 = (v9 + 8 * a2);
  if (v5 != a2 || v12 + 8 * v11 <= v9 + 8 * v5)
  {
    result = memmove((v9 + 8 * v5), v12, 8 * v11);
    v10 = *(v8 + 16);
  }

  v14 = __OFADD__(v10, v7);
  v15 = v10 - v6;
  if (!v14)
  {
    *(v8 + 16) = v15;
    goto LABEL_15;
  }

LABEL_22:
  __break(1u);
  return result;
}

uint64_t sub_268093BF8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_268093C70(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_268093C80(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    return 0;
  }

  v1 = *(a1 + 32);
}

BOOL sub_268093CE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_1_0(a1, a2, a3);
  do
  {
    v9 = v8;
    if (v7 == v8)
    {
      break;
    }

    v10 = *(v4(0) - 8);
    v11 = v6(v5 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v9);
    if (v3)
    {
      break;
    }

    v8 = v9 + 1;
  }

  while ((v11 & 1) == 0);
  return v7 != v9;
}

unint64_t sub_268093DAC(uint64_t a1)
{
  v3 = *(v1 + 40);
  v4 = sub_2680B451C();

  return sub_268093FC4(a1, v4);
}

uint64_t sub_268093DF0()
{
  v0 = sub_2680B324C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2680B313C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2680B3DCC();
  sub_2680B312C();
  (*(v6 + 8))(v9, v5);
  sub_2680B3DFC();
  sub_268094024();
  v11 = v10;

  (*(v1 + 8))(v4, v0);
  return v11 & 1;
}

unint64_t sub_268093FC4(uint64_t a1, uint64_t a2)
{
  v3 = ~(-1 << *(v2 + 32));
    ;
  }

  return i;
}

void sub_268094024()
{
  OUTLINED_FUNCTION_54();
  v85 = v1;
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280249258, &qword_2680B54E8);
  OUTLINED_FUNCTION_7(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v7);
  v84 = v75 - v8;
  OUTLINED_FUNCTION_21();
  v9 = sub_2680B33EC();
  v10 = OUTLINED_FUNCTION_4(v9);
  v86 = v11;
  v87 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_6();
  v16 = v15 - v14;
  v17 = sub_2680B372C();
  v18 = OUTLINED_FUNCTION_4(v17);
  v20 = v19;
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_6();
  v25 = v24 - v23;
  v26 = sub_2680B324C();
  v27 = OUTLINED_FUNCTION_4(v26);
  v29 = v28;
  v31 = *(v30 + 64);
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_45_0();
  if (sub_2680B36DC())
  {
    sub_2680B36EC();
    sub_2680B370C();
    v32 = sub_268094734(v3, v25);
    (*(v20 + 8))(v25, v17);
    (*(v29 + 8))(v0, v26);
    if ((v32 & 1) == 0)
    {
      sub_2680B424C();
      if (qword_2813194A0 == -1)
      {
        goto LABEL_48;
      }

      goto LABEL_53;
    }
  }

  if (sub_2680B373C())
  {
    v33 = sub_2680B371C() & 1;
    if (v33 != (sub_2680A6EA0() & 1))
    {
      sub_2680B424C();
      if (qword_2813194A0 == -1)
      {
        goto LABEL_48;
      }

LABEL_53:
      OUTLINED_FUNCTION_0();
      goto LABEL_48;
    }
  }

  v34 = *(sub_2680B36FC() + 16);

  if (!v34)
  {
    goto LABEL_50;
  }

  v35 = sub_2680B36FC();
  v36 = 0;
  v37 = *(v35 + 16);
  v79 = v86 + 8;
  v80 = v35;
  v75[1] = v86 + 16;
  v76 = v37;
LABEL_9:
  if (v36 == v37)
  {

    goto LABEL_50;
  }

  if (v36 >= *(v35 + 16))
  {
    __break(1u);
    goto LABEL_52;
  }

  v38 = (*(v86 + 80) + 32) & ~*(v86 + 80);
  v39 = *(v86 + 72);
  (*(v86 + 16))(v16, v35 + v38 + v39 * v36, v87);
  v77 = v36 + 1;
  v40 = *(v85 + 16);
  for (i = v85 + v38; v40; --v40)
  {
    if ((sub_2680B33CC() & 1) == 0)
    {
      goto LABEL_42;
    }

    if ((sub_2680B33CC() & 1) == 0)
    {
      goto LABEL_42;
    }

    if ((sub_2680B336C() & 1) == 0)
    {
      goto LABEL_42;
    }

    if ((sub_2680B334C() & 1) == 0)
    {
      goto LABEL_42;
    }

    v42 = *(sub_2680B32EC() + 16);

    if (!v42)
    {
      goto LABEL_42;
    }

    if (sub_2680B336C())
    {
      v43 = sub_2680B332C();
      v83 = v43 != sub_2680B332C();
    }

    else
    {
      v83 = 0;
    }

    if (sub_2680B334C())
    {
      v44 = sub_2680B32FC();
      v82 = v44 != sub_2680B32FC();
    }

    else
    {
      v82 = 0;
    }

    if (sub_2680B33BC())
    {
      v90 = sub_2680B337C();
      v91 = v45;
      v88 = sub_2680B337C();
      v89 = v46;
      sub_2680B2F5C();
      v47 = v84;
      OUTLINED_FUNCTION_23_3();
      __swift_storeEnumTagSinglePayload(v48, v49, v50, v51);
      v73 = sub_26808CA6C();
      v74 = v73;
      v52 = sub_2680B42DC();
      sub_26808C12C(v47, &qword_280249258, &qword_2680B54E8);

      v81 = v52 != 0;
    }

    else
    {
      v81 = 0;
    }

    if (sub_2680B335C())
    {
      v53 = sub_2680B331C();
      v55 = v54;
      if (v53 != sub_2680B331C() || v55 != v56)
      {
        v58 = sub_2680B447C();

        v59 = v58 ^ 1;
        goto LABEL_34;
      }
    }

    v59 = 0;
LABEL_34:
    v60 = sub_2680B32EC();
    MEMORY[0x28223BE20](v60);
    v73 = i;
    v78 = sub_268098420(sub_2680ACA14, &v75[-4], v60);

    v61 = sub_2680B339C();
    v63 = v62;
    if (v61 == sub_2680B339C() && v63 == v64)
    {

      v67 = v83 || v82;
      v68 = v81;
    }

    else
    {
      v66 = sub_2680B447C();

      v67 = v83 | ~v66;
      v68 = v82 || v81;
    }

    if (((v67 | v68 | v59) & 1) == 0 && v78)
    {
      v69 = OUTLINED_FUNCTION_46_0();
      v70(v69);
      v35 = v80;
      v37 = v76;
      v36 = v77;
      goto LABEL_9;
    }

LABEL_42:
    i += v39;
  }

  v71 = OUTLINED_FUNCTION_46_0();
  v72(v71);

  sub_2680B424C();
  if (qword_2813194A0 == -1)
  {
    goto LABEL_48;
  }

LABEL_52:
  OUTLINED_FUNCTION_0();
LABEL_48:
  sub_2680B406C();
LABEL_50:
  OUTLINED_FUNCTION_53();
}

uint64_t sub_268094734(uint64_t a1, uint64_t a2)
{
  v107 = a1;
  v93 = sub_2680B3A1C();
  v92 = *(v93 - 8);
  v4 = *(v92 + 64);
  v5 = MEMORY[0x28223BE20](v93);
  v91 = &v88 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v90 = &v88 - v7;
  v108 = sub_2680B30CC();
  v97 = *(v108 - 8);
  v8 = *(v97 + 64);
  v9 = MEMORY[0x28223BE20](v108);
  v96 = &v88 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v110 = &v88 - v11;
  v111 = sub_2680B395C();
  v98 = *(v111 - 8);
  v12 = *(v98 + 64);
  v13 = MEMORY[0x28223BE20](v111);
  v109 = &v88 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v99 = &v88 - v15;
  v16 = sub_2680B311C();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x28223BE20](v16);
  v95 = &v88 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v19);
  v106 = (&v88 - v22);
  MEMORY[0x28223BE20](v21);
  v24 = &v88 - v23;
  v25 = sub_2680B372C();
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v25);
  v29 = &v88 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v26 + 16))(v29, a2, v25);
  LODWORD(a2) = (*(v26 + 88))(v29, v25);
  v30 = *MEMORY[0x277D5DB88];
  v101 = v2;
  sub_2680B321C();
  v31 = sub_2680B310C();
  v32 = *(v17 + 8);
  v102 = v16;
  v100 = v17 + 8;
  v32(v24, v16);
  v113 = v107;
  if (a2 == v30)
  {
    v33 = sub_268095608(sub_268095718, v112, v31);

    if (!v33)
    {
      return 0;
    }
  }

  else
  {
    v34 = sub_268095608(sub_2680ACA34, v112, v31);

    (*(v26 + 8))(v29, v25);
    if (!v34)
    {
      return 0;
    }
  }

  sub_2680B321C();
  v35 = sub_2680B30DC();
  v36 = v102;
  v37 = (v32)(v24, v102);
  MEMORY[0x28223BE20](v37);
  v38 = v107;
  *(&v88 - 2) = v107;
  v39 = sub_26809569C(sub_2680ACA7C, (&v88 - 4), v35);

  if (!v39)
  {
    return 0;
  }

  sub_2680B321C();
  v40 = sub_2680B30EC();
  v41 = (v32)(v24, v36);
  MEMORY[0x28223BE20](v41);
  *(&v88 - 2) = v38;
  v42 = sub_26809569C(sub_2680ACAD8, (&v88 - 4), v40);

  if (!v42)
  {
    return 0;
  }

  sub_2680B321C();
  v43 = sub_2680B30FC();
  v32(v24, v36);
  v44 = *(v43 + 16);

  if (!v44)
  {
LABEL_53:
    if ((sub_2680B320C() & 1) == 0)
    {
      return 1;
    }

    if (sub_2680B320C())
    {
      v82 = v90;
      sub_2680B323C();
      v83 = v91;
      sub_2680B323C();
      v84 = sub_2680AC54C();
      v85 = *(v92 + 8);
      v86 = v83;
      v87 = v93;
      v85(v86, v93);
      v85(v82, v87);
      return v84;
    }

    return 0;
  }

  v45 = v106;
  sub_2680B321C();
  v46 = sub_2680B30FC();
  v89 = v32;
  v32(v45, v36);
  v47 = *(v46 + 16);
  if (v47)
  {
    v114 = MEMORY[0x277D84F90];
    sub_26808D0A8(0, v47, 0);
    v48 = v114;
    v105 = *(v98 + 16);
    v49 = (*(v98 + 80) + 32) & ~*(v98 + 80);
    v88 = v46;
    v50 = v46 + v49;
    v104 = *(v98 + 72);
    v94 = 0x80000002680B5FC0;
    v103 = (v97 + 8);
    v106 = (v98 + 16);
    v51 = (v98 + 8);
    while (1)
    {
      (v105)(v109, v50, v111);
      sub_2680B394C();
      sub_2680B3EBC();

      v53 = MEMORY[0x26D60FA70](v52);

      if (v53 >> 62)
      {
        result = sub_2680B43CC();
        if (result)
        {
LABEL_12:
          if ((v53 & 0xC000000000000001) != 0)
          {
            MEMORY[0x26D60FED0](0, v53);
          }

          else
          {
            if (!*((v53 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              __break(1u);
              goto LABEL_60;
            }

            v55 = *(v53 + 32);
          }

          v56 = sub_2680B3FAC();
          v58 = v57;

          goto LABEL_19;
        }
      }

      else
      {
        result = *((v53 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (result)
        {
          goto LABEL_12;
        }
      }

      if (!sub_2680B3EFC())
      {

        v56 = 0x69746E65206F6E5BLL;
        v58 = 0xEB000000005D7974;
        goto LABEL_20;
      }

      v56 = sub_2680B3F9C();
      v58 = v59;

LABEL_19:

LABEL_20:
      (*v103)(v110, v108);
      (*v51)(v109, v111);
      v114 = v48;
      v61 = *(v48 + 16);
      v60 = *(v48 + 24);
      if (v61 >= v60 >> 1)
      {
        sub_26808D0A8(v60 > 1, v61 + 1, 1);
        v48 = v114;
      }

      *(v48 + 16) = v61 + 1;
      v62 = v48 + 16 * v61;
      *(v62 + 32) = v56;
      *(v62 + 40) = v58;
      v50 += v104;
      if (!--v47)
      {

        goto LABEL_27;
      }
    }
  }

  v48 = MEMORY[0x277D84F90];
LABEL_27:
  v63 = sub_2680A8654(v48);
  v64 = v95;
  sub_2680B321C();
  v65 = sub_2680B30FC();
  result = v89(v64, v102);
  v104 = *(v65 + 16);
  if (!v104)
  {
LABEL_52:

    goto LABEL_53;
  }

  v66 = 0;
  v110 = (v65 + ((*(v98 + 80) + 32) & ~*(v98 + 80)));
  v109 = (v98 + 16);
  v103 = 0x80000002680B5FC0;
  v105 = (v97 + 8);
  v106 = (v98 + 8);
  v67 = v96;
LABEL_29:
  if (v66 >= *(v65 + 16))
  {
LABEL_60:
    __break(1u);
    goto LABEL_61;
  }

  (*(v98 + 16))(v99, &v110[*(v98 + 72) * v66], v111);
  sub_2680B394C();
  sub_2680B3EBC();

  v69 = MEMORY[0x26D60FA70](v68);

  if (v69 >> 62)
  {
    result = sub_2680B43CC();
    if (result)
    {
      goto LABEL_32;
    }

LABEL_37:

    if (sub_2680B3EFC())
    {
      v71 = sub_2680B3F9C();
      v73 = v74;
    }

    else
    {

      v71 = 0x69746E65206F6E5BLL;
      v73 = 0xEB000000005D7974;
    }

    goto LABEL_40;
  }

  result = *((v69 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
    goto LABEL_37;
  }

LABEL_32:
  if ((v69 & 0xC000000000000001) != 0)
  {
    MEMORY[0x26D60FED0](0, v69);
    goto LABEL_35;
  }

  if (*((v69 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v70 = *(v69 + 32);

LABEL_35:

    v71 = sub_2680B3FAC();
    v73 = v72;

    v67 = v96;
LABEL_40:
    (*v105)(v67, v108);
    if (*(v63 + 16))
    {
      ++v66;
      v75 = *(v63 + 40);
      sub_2680B452C();
      sub_2680B410C();
      v76 = sub_2680B454C();
      v77 = ~(-1 << *(v63 + 32));
      while (1)
      {
        v78 = v76 & v77;
        if (((*(v63 + 56 + (((v76 & v77) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v76 & v77)) & 1) == 0)
        {
          break;
        }

        v79 = (*(v63 + 48) + 16 * v78);
        if (*v79 != v71 || v79[1] != v73)
        {
          v81 = sub_2680B447C();
          v76 = v78 + 1;
          if ((v81 & 1) == 0)
          {
            continue;
          }
        }

        result = (*v106)(v99, v111);
        if (v66 != v104)
        {
          goto LABEL_29;
        }

        goto LABEL_52;
      }
    }

    (*v106)(v99, v111);

    return 0;
  }

LABEL_61:
  __break(1u);
  return result;
}

void sub_268095454()
{
  OUTLINED_FUNCTION_3_3();
  if (v4)
  {
    OUTLINED_FUNCTION_2_3();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_16_0();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_4_2();
    }
  }

  else
  {
    v5 = v3;
  }

  v8 = *(v0 + 16);
  OUTLINED_FUNCTION_21_0(v2, v5, &qword_2802491E8, &qword_2680B5440);
  OUTLINED_FUNCTION_11_0();
  v9 = type metadata accessor for Siri_Nlu_Internal_TurnInputRule.UtteranceRule.SpanForNode();
  OUTLINED_FUNCTION_13_0(v9);
  v11 = *(v10 + 80);
  OUTLINED_FUNCTION_33();
  if (v1)
  {
    v13 = OUTLINED_FUNCTION_1_2(v12);
    sub_26808B38C(v13, v14, v15, v16);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_5_2();
  }
}

BOOL sub_26809553C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_1_0(a1, a2, a3);
  do
  {
    v9 = v8;
    if (v7 == v8)
    {
      break;
    }

    v10 = *(v4(0) - 8);
    v11 = v6(v5 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v9);
    if (v3)
    {
      break;
    }

    v8 = v9 + 1;
  }

  while ((v11 & 1) != 0);
  return v7 == v9;
}

uint64_t sub_268095638(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Siri_Nlu_Internal_TurnInputRule.UtteranceRule.SpanForNode();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2680956CC()
{
  v0 = sub_2680B43EC();

  if (v0 >= 9)
  {
    return 9;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_268095760(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t (*a5)(uint64_t, _BYTE *, uint64_t))
{
  v9 = sub_2680B311C();
  v10 = OUTLINED_FUNCTION_4(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_6();
  v17 = v16 - v15;
  v18 = sub_2680B321C();
  v19 = a3(v18);
  (*(v12 + 8))(v17, v9);
  v22 = a1;
  LOBYTE(a5) = a5(a4, v21, v19);

  return a5 & 1;
}

uint64_t OverrideResult.init(matches:turnInputAndPreprocessing:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X8>)
{
  v98 = sub_2680B31AC();
  v7 = OUTLINED_FUNCTION_4(v98);
  v103 = v8;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_6();
  v94[0] = v12 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802492F0, &unk_2680B5830);
  OUTLINED_FUNCTION_7(v13);
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v16);
  v99 = v94 - v17;
  v18 = OUTLINED_FUNCTION_21();
  matched = type metadata accessor for OverrideMatchResultAndParse(v18);
  v19 = OUTLINED_FUNCTION_4(matched);
  v21 = v20;
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_3();
  v102 = v24;
  OUTLINED_FUNCTION_5_4();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_51();
  v104 = v26;
  OUTLINED_FUNCTION_5_4();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_51();
  v101 = v28;
  OUTLINED_FUNCTION_5_4();
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_51();
  v100 = v30;
  OUTLINED_FUNCTION_5_4();
  MEMORY[0x28223BE20](v31);
  v33 = v94 - v32;
  v34 = type metadata accessor for OverrideResult(0);
  v35 = OUTLINED_FUNCTION_9(v34);
  v37 = *(v36 + 64);
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_3();
  v95 = v38;
  OUTLINED_FUNCTION_5_4();
  MEMORY[0x28223BE20](v39);
  v41 = v94 - v40;
  v108 = a2;
  v42 = sub_268096204(sub_2680A3320, v107, a1);

  v43 = *(v42 + 16);
  if (v43)
  {
    v94[1] = v34;
    v96 = a3;
    v97 = a2;
    a3 = 0;
    v105 = MEMORY[0x277D84F90];
    while (v43 != a3)
    {
      if (a3 >= *(v42 + 16))
      {
        __break(1u);
LABEL_43:
        OUTLINED_FUNCTION_0();
LABEL_25:
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280249100, &qword_2680B4FF0);
        v72 = swift_allocObject();
        *(v72 + 16) = xmmword_2680B4FE0;
        *(v72 + 56) = MEMORY[0x277D837D0];
        *(v72 + 64) = sub_26808C1E4();
        *(v72 + 32) = v3;
        *(v72 + 40) = v34;
        sub_2680B406C();

        goto LABEL_26;
      }

      a2 = (*(v21 + 80) + 32) & ~*(v21 + 80);
      v3 = *(v21 + 72);
      sub_2680A5EF0(v42 + a2 + v3 * a3, v33);
      v44 = &v33[*(matched + 20)];
      if (sub_2680B315C())
      {
        OUTLINED_FUNCTION_7_5();
        sub_2680A3D04(v33, v45);
        ++a3;
      }

      else
      {
        OUTLINED_FUNCTION_3_5();
        sub_26808AC2C(v33, v101);
        v46 = v105;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v48 = v46;
        v109 = v46;
        v34 = v41;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_2680A14B4(0, *(v48 + 16) + 1, 1);
          v48 = v109;
        }

        v50 = *(v48 + 16);
        v49 = *(v48 + 24);
        v51 = v50 + 1;
        if (v50 >= v49 >> 1)
        {
          v105 = v50 + 1;
          sub_2680A14B4(v49 > 1, v50 + 1, 1);
          v51 = v105;
          v48 = v109;
        }

        ++a3;
        *(v48 + 16) = v51;
        v105 = v48;
        OUTLINED_FUNCTION_3_5();
        sub_26808AC2C(v101, v52);
        v41 = v34;
      }
    }

    v53 = v99;
    sub_2680A367C(v105, sub_2680A3D5C, sub_26809DE28);

    if (__swift_getEnumTagSinglePayload(v53, 1, matched) != 1)
    {

      OUTLINED_FUNCTION_3_5();
      v68 = v53;
      v69 = v100;
      sub_26808AC2C(v68, v100);
      v70 = (v69 + *(type metadata accessor for SiriNLOverride() + 44));
      v34 = v70[1];
      a3 = v96;
      a2 = v97;
      v21 = v98;
      if (v34)
      {
        v3 = *v70;
        v71 = v70[1];

        sub_2680B423C();
        if (qword_2813194A0 != -1)
        {
          goto LABEL_43;
        }

        goto LABEL_25;
      }

LABEL_26:
      v73 = v100;
      (*(v103 + 16))(v41, v100 + *(matched + 20), v21);
      sub_2680B314C();
      OUTLINED_FUNCTION_7_5();
      sub_2680A3D04(v73, v74);
      goto LABEL_27;
    }

    v101 = v41;
    sub_26808C18C(v53, &qword_2802492F0, &unk_2680B5830);
    v54 = (v104 + *(type metadata accessor for SiriNLOverride() + 44));
    v55 = *(v21 + 80);
    OUTLINED_FUNCTION_33();
    v57 = v42 + v56;
    v105 = *(v21 + 72);
    v58 = MEMORY[0x277D84F90];
    v59 = v42 + v56;
    do
    {
      v60 = v104;
      sub_2680A5EF0(v59, v104);
      v62 = *v54;
      v61 = v54[1];

      sub_2680A3D04(v60, type metadata accessor for OverrideMatchResultAndParse);
      if (v61)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v65 = *(v58 + 16);
          OUTLINED_FUNCTION_18();
          sub_26808AF10();
          v58 = v66;
        }

        v63 = *(v58 + 16);
        if (v63 >= *(v58 + 24) >> 1)
        {
          sub_26808AF10();
          v58 = v67;
        }

        *(v58 + 16) = v63 + 1;
        v64 = v58 + 16 * v63;
        *(v64 + 32) = v62;
        *(v64 + 40) = v61;
      }

      v59 += v105;
      --v43;
    }

    while (v43);
    if (*(v58 + 16))
    {
      sub_2680B424C();
      a3 = v96;
      a2 = v97;
      if (qword_2813194A0 != -1)
      {
        OUTLINED_FUNCTION_0();
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280249100, &qword_2680B4FF0);
      v75 = swift_allocObject();
      *(v75 + 16) = xmmword_2680B4FE0;
      v109 = v58;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280249120, &qword_2680B5840);
      sub_268099CC4();
      v76 = sub_2680B409C();
      v78 = v77;

      *(v75 + 56) = MEMORY[0x277D837D0];
      *(v75 + 64) = sub_26808C1E4();
      *(v75 + 32) = v76;
      *(v75 + 40) = v78;
      sub_2680B406C();
    }

    else
    {

      a3 = v96;
      a2 = v97;
    }

    v79 = *(v42 + 16);
    if (v79)
    {
      v109 = MEMORY[0x277D84F90];
      sub_2680A1494(0, v79, 0);
      v80 = v109;
      v81 = (v103 + 16);
      v104 = v103 + 32;
      v82 = v94[0];
      v83 = v98;
      do
      {
        v84 = v102;
        sub_2680A5EF0(v57, v102);
        (*v81)(v82, v84 + *(matched + 20), v83);
        sub_2680A3D04(v84, type metadata accessor for OverrideMatchResultAndParse);
        v109 = v80;
        v86 = *(v80 + 16);
        v85 = *(v80 + 24);
        if (v86 >= v85 >> 1)
        {
          sub_2680A1494(v85 > 1, v86 + 1, 1);
          v80 = v109;
        }

        *(v80 + 16) = v86 + 1;
        v87 = *(v103 + 80);
        OUTLINED_FUNCTION_33();
        (*(v89 + 32))(v80 + v88 + *(v89 + 72) * v86, v82, v83);
        v57 += v105;
        --v79;
      }

      while (v79);

      a3 = v96;
      a2 = v97;
    }

    else
    {

      v80 = MEMORY[0x277D84F90];
    }

    v90 = v95;
    *v95 = v80;
    swift_storeEnumTagMultiPayload();
    v41 = v101;
    sub_26808AC2C(v90, v101);
  }

  else
  {

LABEL_27:
    swift_storeEnumTagMultiPayload();
  }

  sub_26808AC2C(v41, a3);
  v91 = sub_2680B3E1C();
  OUTLINED_FUNCTION_9(v91);
  return (*(v92 + 8))(a2);
}

uint64_t sub_268096204(void (*a1)(unint64_t), uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802492F0, &unk_2680B5830);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v29 - v8;
  matched = type metadata accessor for OverrideMatchResultAndParse(0);
  v31 = *(matched - 8);
  v11 = *(v31 + 64);
  v12 = MEMORY[0x28223BE20](matched);
  v32 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v30 = &v29 - v14;
  v15 = 0;
  v16 = *(a3 + 16);
  v33 = MEMORY[0x277D84F90];
  while (1)
  {
    if (v16 == v15)
    {
      return v33;
    }

    v17 = *(type metadata accessor for OverrideMatchResult(0) - 8);
    a1(a3 + ((*(v17 + 80) + 32) & ~*(v17 + 80)) + *(v17 + 72) * v15);
    if (v3)
    {
      break;
    }

    if (__swift_getEnumTagSinglePayload(v9, 1, matched) == 1)
    {
      sub_26808C18C(v9, &qword_2802492F0, &unk_2680B5830);
      ++v15;
    }

    else
    {
      v29 = type metadata accessor for OverrideMatchResultAndParse;
      v18 = v30;
      sub_26808AC2C(v9, v30);
      sub_26808AC2C(v18, v32);
      v19 = v33;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v24 = *(v19 + 16);
        sub_26809F15C();
        v19 = v25;
      }

      v20 = v19;
      v21 = *(v19 + 16);
      v33 = v20;
      v22 = (v21 + 1);
      if (v21 >= *(v20 + 24) >> 1)
      {
        v29 = (v21 + 1);
        sub_26809F15C();
        v22 = v29;
        v33 = v26;
      }

      ++v15;
      v23 = v33;
      *(v33 + 16) = v22;
      sub_26808AC2C(v32, v23 + ((*(v31 + 80) + 32) & ~*(v31 + 80)) + *(v31 + 72) * v21);
    }
  }

  v27 = v33;

  return v27;
}

uint64_t sub_268096580(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2680B2F5C();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1;
  }

  else
  {
    v7 = sub_2680B3B8C();
    v8 = a1 + *(a3 + 20);
  }

  return __swift_getEnumTagSinglePayload(v8, a2, v7);
}

uint64_t sub_26809661C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_2680B2F5C();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = a1;
  }

  else
  {
    v9 = sub_2680B3B8C();
    v10 = a1 + *(a4 + 20);
  }

  return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
}

uint64_t sub_2680966C0(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_52();
  v4 = sub_2680B33EC();

  return __swift_getEnumTagSinglePayload(v2, a2, v4);
}

uint64_t sub_268096704(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_52();
  v4 = sub_2680B33EC();

  return __swift_storeEnumTagSinglePayload(v2, a2, a2, v4);
}

id sub_2680967CC(uint64_t a1)
{
  result = [OUTLINED_FUNCTION_0_2(a1) enabled];
  *v1 = result;
  return result;
}

id sub_2680968D0(uint64_t a1)
{
  result = [OUTLINED_FUNCTION_0_2(a1) namespace];
  *v1 = result;
  return result;
}

id sub_268096954(uint64_t a1)
{
  result = [OUTLINED_FUNCTION_0_2(a1) source];
  *v1 = result;
  return result;
}

id sub_2680969D8(uint64_t a1)
{
  result = [OUTLINED_FUNCTION_0_2(a1) utteranceComparisonType];
  *v1 = result;
  return result;
}

BOOL sub_268096A24(void *a1, uint64_t a2)
{
  v3 = *v2 & a2;
  if (v3 != a2)
  {
    *v2 |= a2;
  }

  *a1 = a2;
  return v3 != a2;
}

uint64_t sub_268096A70(uint64_t a1, int a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802492C8, &qword_2680B5710);
  OUTLINED_FUNCTION_13_0(v5);
  if (*(v6 + 84) == a2)
  {
    v7 = OUTLINED_FUNCTION_15_2();

    return __swift_getEnumTagSinglePayload(v7, v8, v9);
  }

  else
  {
    OUTLINED_FUNCTION_9_3(*(a3 + 24));
    return OUTLINED_FUNCTION_17_2(v11);
  }
}

uint64_t sub_268096B10()
{
  OUTLINED_FUNCTION_8_1();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802492C8, &qword_2680B5710);
  result = OUTLINED_FUNCTION_13_0(v4);
  if (*(v6 + 84) == v3)
  {
    v7 = OUTLINED_FUNCTION_14_2();

    return __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
  }

  else
  {
    *(v1 + *(v2 + 24)) = v0;
  }

  return result;
}

uint64_t sub_268096BA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = OUTLINED_FUNCTION_52();
  matched = type metadata accessor for OverrideMatchResult(v6);
  v8 = OUTLINED_FUNCTION_13_0(matched);
  if (*(v9 + 84) == a2)
  {
    v10 = v8;
    v11 = v3;
  }

  else
  {
    v10 = sub_2680B31AC();
    v11 = v3 + *(a3 + 20);
  }

  return __swift_getEnumTagSinglePayload(v11, a2, v10);
}

uint64_t sub_268096C3C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = OUTLINED_FUNCTION_52();
  matched = type metadata accessor for OverrideMatchResult(v8);
  v10 = OUTLINED_FUNCTION_13_0(matched);
  if (*(v11 + 84) == a3)
  {
    v12 = v10;
    v13 = v4;
  }

  else
  {
    v12 = sub_2680B31AC();
    v13 = v4 + *(a4 + 20);
  }

  return __swift_storeEnumTagSinglePayload(v13, a2, a2, v12);
}

uint64_t Siri_Nlu_Internal_ComponentOverride.serializedOverrideValue.getter()
{
  v1 = sub_2680B3BFC();
  v2 = OUTLINED_FUNCTION_2_0(v1);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_3_0();
  if (sub_2680B3C8C() & 1) != 0 && (sub_2680B3C3C())
  {
    sub_2680B425C();
    if (qword_2813194A0 != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280249100, &qword_2680B4FF0);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_2680B4FE0;
    v6 = sub_2680B3C4C();
    v8 = v7;
    *(v5 + 56) = MEMORY[0x277D837D0];
    *(v5 + 64) = sub_26808C1E4();
    *(v5 + 32) = v6;
    *(v5 + 40) = v8;
    OUTLINED_FUNCTION_5();
  }

  if (sub_2680B3C3C())
  {
    sub_2680B3C1C();
    OUTLINED_FUNCTION_7_0();
  }

  else
  {
    sub_2680B3C6C();
    v9 = sub_26809735C(&qword_2813192B0, MEMORY[0x277D5DD18]);
    OUTLINED_FUNCTION_4_0(v9);
    if (!v0)
    {
      OUTLINED_FUNCTION_7_0();
    }

    v10 = OUTLINED_FUNCTION_1();
    v11(v10);
  }

  return OUTLINED_FUNCTION_6_0();
}

uint64_t Siri_Nlu_Internal_ParseOverride.namespace.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277D5DCD0];
  v3 = sub_2680B3B8C();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t Siri_Nlu_Internal_ParseOverride.serializedOverrideValue.getter()
{
  v1 = sub_2680B31AC();
  v2 = OUTLINED_FUNCTION_2_0(v1);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_3_0();
  if (sub_2680B367C() & 1) != 0 && (sub_2680B366C())
  {
    sub_2680B425C();
    if (qword_2813194A0 != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280249100, &qword_2680B4FF0);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_2680B4FE0;
    v6 = sub_2680B369C();
    v8 = v7;
    *(v5 + 56) = MEMORY[0x277D837D0];
    *(v5 + 64) = sub_26808C1E4();
    *(v5 + 32) = v6;
    *(v5 + 40) = v8;
    OUTLINED_FUNCTION_5();
  }

  if (sub_2680B366C())
  {
    sub_2680B365C();
    OUTLINED_FUNCTION_7_0();
  }

  else
  {
    sub_2680B36BC();
    v9 = sub_26809735C(&qword_2813192E8, MEMORY[0x277D5DB08]);
    OUTLINED_FUNCTION_4_0(v9);
    if (!v0)
    {
      OUTLINED_FUNCTION_7_0();
    }

    v10 = OUTLINED_FUNCTION_1();
    v11(v10);
  }

  return OUTLINED_FUNCTION_6_0();
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_26809735C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_268097440(uint64_t a1)
{
  result = *v1 & a1;
  if (result)
  {
    *v1 &= ~a1;
  }

  return result;
}

uint64_t sub_268097464(uint64_t a1)
{
  v2 = *v1;
  *v1 |= a1;
  return v2 & a1;
}

uint64_t sub_2680974C8@<X0>(uint64_t *a1@<X8>)
{
  result = j__OUTLINED_FUNCTION_19_1();
  *a1 = result;
  return result;
}

uint64_t sub_2680974F0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_268097430(*a1, *v2);
  *a2 = result;
  return result;
}

uint64_t sub_268097520@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_2680A15E4(*a1, *v2);
  *a2 = result;
  return result;
}

uint64_t sub_268097550@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_268097438(*a1, *v2);
  *a2 = result;
  return result;
}

uint64_t sub_268097588@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_268097440(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_2680975BC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_268097464(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_268097608@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_26809748C(*a1, *v2);
  *a2 = result;
  return result;
}

void *sub_268097678@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_2680976A4(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2680976C4(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
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

  *(result + 4) = v3;
  return result;
}

void sub_268097714(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t sub_268097760@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_2680978A8(a1);
  *a2 = result;
  return result;
}

uint64_t sub_2680978A8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = 0;
    v3 = (a1 + 32);
    do
    {
      v5 = *v3++;
      v4 = v5;
      if ((v5 & ~v2) == 0)
      {
        v4 = 0;
      }

      v2 |= v4;
      --v1;
    }

    while (v1);
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

void static SiriNLOverride.overrideValuesNilOrEqual(overrideValues:otherValues:)(unint64_t a1, unint64_t a2)
{
  if (a1)
  {
    v3 = a1;
    v4 = a1 & 0xFFFFFFFFFFFFFF8;
    if (a1 >> 62)
    {
      goto LABEL_54;
    }

    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_4:
    v6 = a2 >> 62 ? sub_2680B43CC() : *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5 == v6)
    {
      if (v5 < 0)
      {
LABEL_59:
        __break(1u);
        return;
      }

      if (!v5)
      {
        return;
      }

      v50 = a2 & 0xC000000000000001;
      v51 = v3 & 0xC000000000000001;
      v46 = a2 & 0xFFFFFFFFFFFFFF8;
      v47 = v4;
      v7 = 4;
      v48 = v3;
      v49 = a2;
      do
      {
        v4 = v7 - 4;
        if (v51)
        {
          v3 = MEMORY[0x26D60FED0](v7 - 4, v3);
        }

        else
        {
          if (v4 >= *(v47 + 16))
          {
            __break(1u);
LABEL_53:
            __break(1u);
LABEL_54:
            v5 = sub_2680B43CC();
            goto LABEL_4;
          }

          v3 = *(v3 + 8 * v7);
          swift_unknownObjectRetain();
        }

        v52 = v5;
        if (v50)
        {
          v8 = MEMORY[0x26D60FED0](v7 - 4, a2);
        }

        else
        {
          if (v4 >= *(v46 + 16))
          {
            goto LABEL_53;
          }

          v8 = *(a2 + 8 * v7);
          swift_unknownObjectRetain();
        }

        v9 = objc_allocWithZone(MEMORY[0x277CCAAB0]);
        swift_unknownObjectRetain();
        v10 = [v9 initRequiringSecureCoding_];
        [v10 encodeObject_];
        v53 = v10;
        v11 = [v10 encodedData];
        v12 = sub_2680B2E4C();
        v14 = v13;

        v15 = [objc_allocWithZone(MEMORY[0x277CCAAB0]) initRequiringSecureCoding_];
        [v15 encodeObject_];
        v16 = [v15 encodedData];
        v17 = sub_2680B2E4C();
        v19 = v18;

        v20 = v14 >> 62;
        if (v14 >> 62 == 3)
        {
          v21 = 0;
          if (!v12 && v14 == 0xC000000000000000 && v19 >> 62 == 3)
          {
            v21 = 0;
            if (!v17 && v19 == 0xC000000000000000)
            {
LABEL_47:
              swift_unknownObjectRelease();
              swift_unknownObjectRelease();
              v38 = OUTLINED_FUNCTION_7_1();
              sub_26808A810(v38, v39);

              v40 = OUTLINED_FUNCTION_5_0();
              sub_26808A810(v40, v41);
              swift_unknownObjectRelease();

              goto LABEL_48;
            }
          }
        }

        else if (v20)
        {
          if (v20 == 1)
          {
            LODWORD(v21) = HIDWORD(v12) - v12;
            if (__OFSUB__(HIDWORD(v12), v12))
            {
              goto LABEL_58;
            }

            v21 = v21;
          }

          else
          {
            v24 = *(v12 + 16);
            v23 = *(v12 + 24);
            v25 = __OFSUB__(v23, v24);
            v21 = v23 - v24;
            if (v25)
            {
LABEL_57:
              __break(1u);
LABEL_58:
              __break(1u);
              goto LABEL_59;
            }
          }
        }

        else
        {
          v21 = BYTE6(v14);
        }

        switch(v19 >> 62)
        {
          case 1uLL:
            LODWORD(v26) = HIDWORD(v17) - v17;
            if (__OFSUB__(HIDWORD(v17), v17))
            {
              goto LABEL_56;
            }

            v26 = v26;
            goto LABEL_43;
          case 2uLL:
            v28 = *(v17 + 16);
            v27 = *(v17 + 24);
            v25 = __OFSUB__(v27, v28);
            v26 = v27 - v28;
            if (!v25)
            {
              goto LABEL_43;
            }

            __break(1u);
LABEL_56:
            __break(1u);
            goto LABEL_57;
          case 3uLL:
            if (!v21)
            {
              goto LABEL_47;
            }

            goto LABEL_50;
          default:
            v26 = BYTE6(v19);
LABEL_43:
            if (v21 != v26)
            {
LABEL_50:
              swift_unknownObjectRelease();
              swift_unknownObjectRelease();
              v42 = OUTLINED_FUNCTION_7_1();
              sub_26808A810(v42, v43);

              v44 = OUTLINED_FUNCTION_5_0();
              sub_26808A810(v44, v45);
              swift_unknownObjectRelease();

              return;
            }

            if (v21 < 1)
            {
              goto LABEL_47;
            }

            v29 = OUTLINED_FUNCTION_7_1();
            sub_26808A6DC(v29, v30);
            v31 = OUTLINED_FUNCTION_5_0();
            v33 = sub_268099858(v31, v32, v17, v19);
            swift_unknownObjectRelease();
            swift_unknownObjectRelease();
            v34 = OUTLINED_FUNCTION_7_1();
            sub_26808A810(v34, v35);

            v36 = OUTLINED_FUNCTION_5_0();
            sub_26808A810(v36, v37);
            swift_unknownObjectRelease();

            if ((v33 & 1) == 0)
            {
              return;
            }

            break;
        }

LABEL_48:
        ++v7;
        v5 = v52 - 1;
        v3 = v48;
        a2 = v49;
      }

      while (v52 != 1);
    }
  }
}

uint64_t static SiriNLOverride.overrideValueNilOrEqual(overrideValue:otherValue:)(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    return 1;
  }

  v4 = objc_allocWithZone(MEMORY[0x277CCAAB0]);
  swift_unknownObjectRetain();
  v5 = [v4 initRequiringSecureCoding_];
  [v5 encodeObject_];
  v6 = [v5 encodedData];
  v7 = sub_2680B2E4C();
  v9 = v8;

  v10 = [objc_allocWithZone(MEMORY[0x277CCAAB0]) initRequiringSecureCoding_];
  [v10 encodeObject_];
  v11 = [v10 encodedData];
  v12 = sub_2680B2E4C();
  v14 = v13;

  LOBYTE(v11) = MEMORY[0x26D60E9D0](v7, v9, v12, v14);
  sub_26808A810(v12, v14);

  sub_26808A810(v7, v9);
  swift_unknownObjectRelease();

  return v11 & 1;
}

uint64_t static SiriNLOverride.subsetOfOther(subset:other:)(unint64_t a1, unint64_t a2)
{
  if (!a1)
  {
    return 1;
  }

  v3 = a1;
  if (a1 >> 62)
  {
    goto LABEL_32;
  }

  v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v4)
  {
    return 1;
  }

  while (1)
  {
    v5 = sub_268091404(v3);
    if (sub_268091404(a2) < v5)
    {
      return 0;
    }

    v6 = 0;
    v27 = v3 + 32;
    v28 = v3 & 0xC000000000000001;
    v31 = a2 & 0xFFFFFFFFFFFFFF8;
    v32 = a2 & 0xC000000000000001;
    v30 = a2;
    v25 = v4;
    v26 = v3;
LABEL_6:
    if (v6 == v4)
    {
      return 1;
    }

    sub_268092BCC(v6, v28 == 0, v3);
    if (v28)
    {
      result = MEMORY[0x26D60FED0](v6, v3);
    }

    else
    {
      v7 = *(v27 + 8 * v6);
      result = swift_unknownObjectRetain();
    }

    v9 = __OFADD__(v6, 1);
    v10 = v6 + 1;
    if (v9)
    {
      break;
    }

    v29 = v10;
    v33 = sub_268091404(a2);
    v11 = 0;
    while (1)
    {
      if (v33 == v11)
      {
        swift_unknownObjectRelease();
        return 0;
      }

      if (v32)
      {
        MEMORY[0x26D60FED0](v11, a2);
      }

      else
      {
        if (v11 >= *(v31 + 16))
        {
          goto LABEL_31;
        }

        v12 = *(a2 + 8 * v11 + 32);
        swift_unknownObjectRetain();
      }

      if (__OFADD__(v11, 1))
      {
        break;
      }

      swift_getObjectType();
      swift_unknownObjectRetain();
      sub_268098BD8();
      v3 = v13;
      v15 = v14;
      swift_getObjectType();
      sub_268098BD8();
      v17 = v16;
      v19 = v18;
      sub_2680B424C();
      if (qword_2813194A0 != -1)
      {
        OUTLINED_FUNCTION_0_0();
        swift_once();
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280249100, &qword_2680B4FF0);
      v20 = OUTLINED_FUNCTION_2();
      *(v20 + 16) = xmmword_2680B4FE0;
      *(v20 + 56) = MEMORY[0x277D837D0];
      v21 = sub_26808C1E4();
      *(v20 + 64) = v21;
      *(v20 + 32) = v3;
      *(v20 + 40) = v15;

      OUTLINED_FUNCTION_8();
      sub_2680B406C();

      sub_2680B424C();
      v22 = OUTLINED_FUNCTION_2();
      *(v22 + 16) = xmmword_2680B4FE0;
      *(v22 + 56) = MEMORY[0x277D837D0];
      *(v22 + 64) = v21;
      *(v22 + 32) = v17;
      *(v22 + 40) = v19;

      OUTLINED_FUNCTION_6_1();
      sub_2680B406C();

      if (v3 == v17 && v15 == v19)
      {
        swift_unknownObjectRelease();

        swift_unknownObjectRelease();
        a2 = v30;
LABEL_26:
        swift_unknownObjectRelease();
        v4 = v25;
        v3 = v26;
        v6 = v29;
        goto LABEL_6;
      }

      v24 = OUTLINED_FUNCTION_9_0();
      swift_unknownObjectRelease();

      swift_unknownObjectRelease();
      ++v11;
      a2 = v30;
      if (v24)
      {
        goto LABEL_26;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    v4 = sub_2680B43CC();
    if (!v4)
    {
      return 1;
    }
  }

  __break(1u);
  return result;
}

uint64_t static SiriNLOverride.sdaNilOrEqual(override:other:)(uint64_t a1)
{
  if (a1)
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    sub_268098BD8();
    v2 = v1;
    v4 = v3;
    swift_getObjectType();
    sub_268098BD8();
    v6 = v5;
    v8 = v7;
    sub_2680B424C();
    if (qword_2813194A0 != -1)
    {
      OUTLINED_FUNCTION_0_0();
      swift_once();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280249100, &qword_2680B4FF0);
    v9 = OUTLINED_FUNCTION_2();
    *(v9 + 16) = xmmword_2680B4FE0;
    *(v9 + 56) = MEMORY[0x277D837D0];
    v10 = sub_26808C1E4();
    *(v9 + 64) = v10;
    *(v9 + 32) = v2;
    *(v9 + 40) = v4;

    OUTLINED_FUNCTION_8();
    sub_2680B406C();

    sub_2680B424C();
    v11 = OUTLINED_FUNCTION_2();
    *(v11 + 16) = xmmword_2680B4FE0;
    *(v11 + 56) = MEMORY[0x277D837D0];
    *(v11 + 64) = v10;
    *(v11 + 32) = v6;
    *(v11 + 40) = v8;

    OUTLINED_FUNCTION_6_1();
    sub_2680B406C();

    if (v2 == v6 && v4 == v8)
    {
      v13 = 1;
    }

    else
    {
      v13 = OUTLINED_FUNCTION_9_0();
    }

    swift_unknownObjectRelease();
  }

  else
  {
    v13 = 1;
  }

  return v13 & 1;
}

{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280249110, &unk_2680B5288);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v28 - v4;
  v6 = sub_2680B3AEC();
  v7 = OUTLINED_FUNCTION_4(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v7);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_268099978(a1, v5);
  if (__swift_getEnumTagSinglePayload(v5, 1, v6) == 1)
  {
    sub_2680999E8(v5);
    v14 = 1;
  }

  else
  {
    v31 = v9;
    (*(v9 + 32))(v13, v5, v6);
    sub_2680A64F0();
    v30 = v15;
    v17 = v16;
    sub_2680A64F0();
    v29 = v18;
    v20 = v19;
    sub_2680B424C();
    if (qword_2813194A0 != -1)
    {
      OUTLINED_FUNCTION_0_0();
      swift_once();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280249100, &qword_2680B4FF0);
    v21 = OUTLINED_FUNCTION_2();
    v28 = xmmword_2680B4FE0;
    *(v21 + 16) = xmmword_2680B4FE0;
    *(v21 + 56) = MEMORY[0x277D837D0];
    v22 = sub_26808C1E4();
    *(v21 + 64) = v22;
    v23 = v30;
    *(v21 + 32) = v30;
    *(v21 + 40) = v17;

    OUTLINED_FUNCTION_8();
    sub_2680B406C();

    sub_2680B424C();
    v24 = OUTLINED_FUNCTION_2();
    *(v24 + 16) = v28;
    *(v24 + 56) = MEMORY[0x277D837D0];
    *(v24 + 64) = v22;
    v25 = v29;
    *(v24 + 32) = v29;
    *(v24 + 40) = v20;

    OUTLINED_FUNCTION_6_1();
    sub_2680B406C();

    if (v23 == v25 && v17 == v20)
    {
      v14 = 1;
    }

    else
    {
      v14 = OUTLINED_FUNCTION_9_0();
    }

    (*(v31 + 8))(v13, v6);
  }

  return v14 & 1;
}

uint64_t static SiriNLOverride.subsetOfOther(subset:other:)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280249110, &unk_2680B5288);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = v44 - v9;
  v11 = sub_2680B3AEC();
  v12 = OUTLINED_FUNCTION_4(v11);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = v44 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v59 = v44 - v19;
  if (!a1)
  {
    return 1;
  }

  v20 = *(a1 + 16);
  if (!v20)
  {
    return 1;
  }

  v21 = *(a2 + 16);
  if (v21 >= v20)
  {
    v22 = 0;
    v57 = *(v18 + 16);
    v58 = v18 + 16;
    v23 = (*(v18 + 80) + 32) & ~*(v18 + 80);
    v47 = a2 + v23;
    v48 = a1 + v23;
    v24 = *(v18 + 72);
    v50 = (v18 + 32);
    v46 = v21 + 1;
    v55 = (v18 + 8);
    v56 = v24;
    v44[1] = (v18 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v61 = xmmword_2680B4FE0;
    v53 = v10;
    v54 = v8;
    v51 = v17;
    v52 = v11;
    v45 = v20;
LABEL_5:
    if (v22 != v20)
    {
      v57(v59, v48 + v56 * v22, v11);
      v49 = v22 + 1;
      v25 = v46;
      v26 = v47;
      while (1)
      {
        v27 = v25 - 1;
        if (!v27)
        {
          break;
        }

        v57(v10, v59, v11);
        __swift_storeEnumTagSinglePayload(v10, 0, 1, v11);
        sub_268099978(v10, v8);
        if (__swift_getEnumTagSinglePayload(v8, 1, v11) == 1)
        {
          sub_2680999E8(v8);
          sub_2680999E8(v10);
          v35 = *v55;
LABEL_19:
          v22 = v49;
          v35(v59, v11);
          v20 = v45;
          goto LABEL_5;
        }

        v60 = v27;
        (*v50)(v17, v8, v11);
        sub_2680A64F0();
        v29 = v28;
        v31 = v30;
        sub_2680A64F0();
        v33 = v32;
        v35 = v34;
        sub_2680B424C();
        if (qword_2813194A0 != -1)
        {
          OUTLINED_FUNCTION_0_0();
          swift_once();
        }

        v17 = off_2813194A8;
        v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280249100, &qword_2680B4FF0);
        v36 = OUTLINED_FUNCTION_2();
        *(v36 + 16) = v61;
        *(v36 + 56) = MEMORY[0x277D837D0];
        v37 = sub_26808C1E4();
        *(v36 + 64) = v37;
        *(v36 + 32) = v29;
        *(v36 + 40) = v31;

        OUTLINED_FUNCTION_8();
        sub_2680B406C();

        sub_2680B424C();
        v38 = OUTLINED_FUNCTION_2();
        *(v38 + 16) = v61;
        *(v38 + 56) = MEMORY[0x277D837D0];
        *(v38 + 64) = v37;
        *(v38 + 32) = v33;
        *(v38 + 40) = v35;

        OUTLINED_FUNCTION_6_1();
        sub_2680B406C();

        if (v29 == v33 && v31 == v35)
        {

          v42 = OUTLINED_FUNCTION_3_1();
          (v35)(v42);
          v10 = v53;
          sub_2680999E8(v53);
          v8 = v54;
          goto LABEL_19;
        }

        v26 += v56;
        v40 = OUTLINED_FUNCTION_9_0();

        v41 = OUTLINED_FUNCTION_3_1();
        (v35)(v41);
        v10 = v53;
        sub_2680999E8(v53);
        v8 = v54;
        v25 = v60;
        if (v40)
        {
          goto LABEL_19;
        }
      }

      (*v55)(v59, v11);
      return 0;
    }

    return 1;
  }

  return 0;
}

void sub_268098BD8()
{
  objc_opt_self();
  v0 = swift_dynamicCastObjCClass();
  if (v0)
  {
    v1 = v0;
    swift_unknownObjectRetain();
    sub_2680B432C();

    v2 = [v1 reference];
    sub_268099500();
    v4 = v3;
    v6 = v5;

LABEL_3:
    MEMORY[0x26D60FCB0](v4, v6);
LABEL_18:

    MEMORY[0x26D60FCB0](93, 0xE100000000000000);
    swift_unknownObjectRelease();
    return;
  }

  objc_opt_self();
  v7 = swift_dynamicCastObjCClass();
  if (v7)
  {
    v8 = v7;
    swift_unknownObjectRetain();
    v9 = [v8 choices];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280249130, &qword_2680B5298);
    v10 = sub_2680B41DC();

    v11 = sub_268091404(v10);
    if (v11)
    {
      v12 = v11;
      v64 = MEMORY[0x277D84F90];
      sub_26808D0A8(0, v11 & ~(v11 >> 63), 0);
      if ((v12 & 0x8000000000000000) == 0)
      {
        v13 = 0;
        do
        {
          if ((v10 & 0xC000000000000001) != 0)
          {
            MEMORY[0x26D60FED0](v13, v10);
          }

          else
          {
            v14 = *(v10 + 8 * v13 + 32);
            swift_unknownObjectRetain();
          }

          swift_getObjectType();
          sub_26809931C();
          v16 = v15;
          v18 = v17;
          swift_unknownObjectRelease();
          v20 = *(v64 + 16);
          v19 = *(v64 + 24);
          if (v20 >= v19 >> 1)
          {
            sub_26808D0A8(v19 > 1, v20 + 1, 1);
          }

          ++v13;
          *(v64 + 16) = v20 + 1;
          v21 = v64 + 16 * v20;
          *(v21 + 32) = v16;
          *(v21 + 40) = v18;
        }

        while (v12 != v13);
        goto LABEL_17;
      }

      __break(1u);
      goto LABEL_44;
    }

LABEL_17:

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280249120, &qword_2680B5840);
    sub_268099CC4();
    v27 = sub_2680B409C();
    v29 = v28;

    sub_2680B432C();

    MEMORY[0x26D60FCB0](v27, v29);
    goto LABEL_18;
  }

  objc_opt_self();
  v22 = swift_dynamicCastObjCClass();
  if (v22)
  {
    v23 = v22;
    swift_unknownObjectRetain();
    sub_2680B432C();

    v24 = [v23 offeredAct];
    swift_getObjectType();
    sub_26809931C();
    v4 = v25;
    v6 = v26;
    swift_unknownObjectRelease();
    goto LABEL_3;
  }

  objc_opt_self();
  v30 = swift_dynamicCastObjCClass();
  if (!v30)
  {
    objc_opt_self();
    v46 = swift_dynamicCastObjCClass();
    if (v46)
    {
      v47 = v46;
      swift_unknownObjectRetain();
      v48 = [v47 task];
      if (v48)
      {
        v49 = v48;
        sub_268099500();
        v51 = v50;
        v53 = v52;
      }

      else
      {
        v51 = 0x296C696E28;
        v53 = 0xE500000000000000;
      }

      sub_2680B432C();
    }

    else
    {
      objc_opt_self();
      v54 = swift_dynamicCastObjCClass();
      if (!v54)
      {
        swift_unknownObjectRetain();
        sub_2680B40DC();
        return;
      }

      v55 = v54;
      swift_unknownObjectRetain();
      v56 = [v55 task];
      if (v56)
      {
        v57 = v56;
        sub_268099500();
        v51 = v58;
        v53 = v59;
      }

      else
      {
        v51 = 0x296C696E28;
        v53 = 0xE500000000000000;
      }

      sub_2680B432C();

      v60 = [v55 description];
      v61 = sub_2680B40CC();
      v63 = v62;

      MEMORY[0x26D60FCB0](v61, v63);
    }

    MEMORY[0x26D60FCB0](v51, v53);
    goto LABEL_18;
  }

  v31 = v30;
  swift_unknownObjectRetain();
  v32 = [v31 entities];
  sub_268099A50();
  v33 = sub_2680B41DC();

  v34 = sub_268091404(v33);
  if (!v34)
  {
    goto LABEL_17;
  }

  v35 = v34;
  v65 = MEMORY[0x277D84F90];
  sub_26808D0A8(0, v34 & ~(v34 >> 63), 0);
  if ((v35 & 0x8000000000000000) == 0)
  {
    v36 = 0;
    do
    {
      if ((v33 & 0xC000000000000001) != 0)
      {
        v37 = MEMORY[0x26D60FED0](v36, v33);
      }

      else
      {
        v37 = *(v33 + 8 * v36 + 32);
      }

      v38 = v37;
      sub_268099500();
      v40 = v39;
      v42 = v41;

      v44 = *(v65 + 16);
      v43 = *(v65 + 24);
      if (v44 >= v43 >> 1)
      {
        sub_26808D0A8(v43 > 1, v44 + 1, 1);
      }

      ++v36;
      *(v65 + 16) = v44 + 1;
      v45 = v65 + 16 * v44;
      *(v45 + 32) = v40;
      *(v45 + 40) = v42;
    }

    while (v35 != v36);
    goto LABEL_17;
  }

LABEL_44:
  __break(1u);
}

void sub_26809931C()
{
  v0 = sub_2680B3EEC();
  v1 = sub_268091404(v0);
  if (!v1)
  {
LABEL_10:

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280249120, &qword_2680B5840);
    sub_268099CC4();
    sub_2680B409C();

    return;
  }

  v2 = v1;
  v12 = MEMORY[0x277D84F90];
  sub_26808D0A8(0, v1 & ~(v1 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = 0;
    do
    {
      if ((v0 & 0xC000000000000001) != 0)
      {
        MEMORY[0x26D60FED0](v3, v0);
      }

      else
      {
        v4 = *(v0 + 8 * v3 + 32);
      }

      v10 = sub_2680B3F9C();
      v11 = v5;
      MEMORY[0x26D60FCB0](14906, 0xE200000000000000);
      v6 = sub_2680B3FAC();
      MEMORY[0x26D60FCB0](v6);

      v8 = *(v12 + 16);
      v7 = *(v12 + 24);
      if (v8 >= v7 >> 1)
      {
        sub_26808D0A8(v7 > 1, v8 + 1, 1);
      }

      ++v3;
      *(v12 + 16) = v8 + 1;
      v9 = v12 + 16 * v8;
      *(v9 + 32) = v10;
      *(v9 + 40) = v11;
    }

    while (v2 != v3);
    goto LABEL_10;
  }

  __break(1u);
}

void sub_268099500()
{
  if (sub_2680B426C())
  {
    v0 = MEMORY[0x26D60FA70]();
    v1 = sub_268091404(v0);
    if (!v1)
    {
LABEL_13:

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280249120, &qword_2680B5840);
      sub_268099CC4();
      sub_2680B409C();

      return;
    }

    v2 = v1;
    v12 = MEMORY[0x277D84F90];
    sub_26808D0A8(0, v1 & ~(v1 >> 63), 0);
    if ((v2 & 0x8000000000000000) == 0)
    {
      v3 = 0;
      do
      {
        if ((v0 & 0xC000000000000001) != 0)
        {
          MEMORY[0x26D60FED0](v3, v0);
        }

        else
        {
          v4 = *(v0 + 8 * v3 + 32);
        }

        v10 = sub_2680B3F9C();
        v11 = v5;
        MEMORY[0x26D60FCB0](14906, 0xE200000000000000);
        v6 = sub_2680B3FAC();
        MEMORY[0x26D60FCB0](v6);

        v8 = *(v12 + 16);
        v7 = *(v12 + 24);
        if (v8 >= v7 >> 1)
        {
          sub_26808D0A8(v7 > 1, v8 + 1, 1);
        }

        ++v3;
        *(v12 + 16) = v8 + 1;
        v9 = v12 + 16 * v8;
        *(v9 + 32) = v10;
        *(v9 + 40) = v11;
      }

      while (v2 != v3);
      goto LABEL_13;
    }

    __break(1u);
  }
}

void sub_2680996EC(char *__s1@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, _BYTE *a4@<X8>)
{
  v17 = *MEMORY[0x277D85DE8];
  switch(a3 >> 62)
  {
    case 1uLL:
      v9 = a2 >> 32;
      if (a2 >> 32 < a2)
      {
        __break(1u);
      }

      v8 = a2;
      goto LABEL_9;
    case 2uLL:
      v8 = *(a2 + 16);
      v9 = *(a2 + 24);
LABEL_9:
      v7 = sub_268099B60(v8, v9, a3 & 0x3FFFFFFFFFFFFFFFLL, __s1);
      if (!v4)
      {
        goto LABEL_10;
      }

      goto LABEL_14;
    case 3uLL:
      if (__s1)
      {
        v7 = 1;
LABEL_10:
        *a4 = v7 & 1;
        v10 = *MEMORY[0x277D85DE8];
      }

      else
      {
        __break(1u);
LABEL_13:
        __break(1u);
LABEL_14:

        __break(1u);
      }

      return;
    default:
      __s2 = a2;
      v12 = a3;
      v13 = BYTE2(a3);
      v14 = BYTE3(a3);
      v15 = BYTE4(a3);
      v16 = BYTE5(a3);
      if (!__s1)
      {
        goto LABEL_13;
      }

      v7 = memcmp(__s1, &__s2, BYTE6(a3)) == 0;
      goto LABEL_10;
  }
}

uint64_t sub_268099858(uint64_t result, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v7 = result;
  switch(a2 >> 62)
  {
    case 1uLL:
      v16 = result >> 32;
      if (result >> 32 >= result)
      {
        v17 = result;
        sub_26808A6DC(a3, a4);
        v12 = a2 & 0x3FFFFFFFFFFFFFFFLL;
        v13 = v17;
        v14 = v16;
        goto LABEL_8;
      }

      __break(1u);
      return result;
    case 2uLL:
      v11 = *(result + 16);
      v10 = *(result + 24);
      sub_26808A6DC(a3, a4);
      v12 = a2 & 0x3FFFFFFFFFFFFFFFLL;
      v13 = v11;
      v14 = v10;
LABEL_8:
      v15 = sub_268099A94(v13, v14, v12, a3, a4);
      goto LABEL_9;
    case 3uLL:
      sub_26808A6DC(a3, a4);
      v9 = 0;
      v8 = 0;
      goto LABEL_5;
    default:
      sub_26808A6DC(a3, a4);
      v8 = a2 & 0xFFFFFFFFFFFFFFLL;
      v9 = v7;
LABEL_5:
      v15 = sub_268099C18(v9, v8, a3, a4);
LABEL_9:
      v18 = v15;
      sub_26808A810(a3, a4);
      return v18 & 1;
  }
}

uint64_t sub_268099978(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280249110, &unk_2680B5288);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2680999E8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280249110, &unk_2680B5288);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_268099A50()
{
  result = qword_280249118;
  if (!qword_280249118)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280249118);
  }

  return result;
}

uint64_t sub_268099A94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  result = sub_2680B2DBC();
  v11 = result;
  if (result)
  {
    result = sub_2680B2DDC();
    if (__OFSUB__(a1, result))
    {
LABEL_9:
      __break(1u);
      return result;
    }

    v11 += a1 - result;
  }

  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_9;
  }

  sub_2680B2DCC();
  sub_2680996EC(v11, a4, a5, &v13);
  sub_26808A810(a4, a5);
  if (!v5)
  {
    v12 = v13;
  }

  return v12 & 1;
}

uint64_t sub_268099B60(uint64_t a1, uint64_t a2, uint64_t a3, char *a4)
{
  result = sub_2680B2DBC();
  v8 = result;
  if (result)
  {
    result = sub_2680B2DDC();
    if (__OFSUB__(a1, result))
    {
LABEL_14:
      __break(1u);
LABEL_15:
      __break(1u);
      goto LABEL_16;
    }

    v8 += a1 - result;
  }

  v9 = __OFSUB__(a2, a1);
  v10 = a2 - a1;
  if (v9)
  {
    __break(1u);
    goto LABEL_14;
  }

  result = sub_2680B2DCC();
  if (result >= v10)
  {
    v11 = v10;
  }

  else
  {
    v11 = result;
  }

  if (!a4)
  {
    goto LABEL_15;
  }

  if (!v8)
  {
LABEL_16:
    __break(1u);
    return result;
  }

  return v8 == a4 || memcmp(a4, v8, v11) == 0;
}

uint64_t sub_268099C18(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v14 = *MEMORY[0x277D85DE8];
  __s1 = a1;
  v13 = WORD2(a2);
  v12 = a2;
  sub_2680996EC(&__s1, a3, a4, &v10);
  sub_26808A810(a3, a4);
  if (!v4)
  {
    v7 = v10;
  }

  v8 = *MEMORY[0x277D85DE8];
  return v7 & 1;
}

unint64_t sub_268099CC4()
{
  result = qword_281318F78;
  if (!qword_281318F78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_280249120, &qword_2680B5840);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281318F78);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_268099D84()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280249140, &qword_2680B52C8);
  result = swift_allocObject();
  *(result + 16) = 0;
  qword_281319220 = result;
  return result;
}

uint64_t sub_268099DC4()
{
  sub_2680B2F5C();
  OUTLINED_FUNCTION_2_1();
  sub_26809A228(v1, v2);
  sub_2680B408C();
  v3 = v0 + *(type metadata accessor for CacheKey() + 20);
  v4 = sub_2680B3B4C();
  return MEMORY[0x26D6100D0](v4);
}

BOOL sub_268099E48()
{
  if ((MEMORY[0x26D60EAB0]() & 1) == 0)
  {
    return 0;
  }

  v0 = *(type metadata accessor for CacheKey() + 20);
  sub_2680B3B8C();
  sub_26809A228(qword_2813192B8, MEMORY[0x277D5DCD8]);
  sub_2680B41CC();
  sub_2680B41CC();
  return v3 == v2;
}

uint64_t sub_268099F18()
{
  sub_2680B452C();
  sub_2680B2F5C();
  sub_26809A228(&qword_2813192F0, MEMORY[0x277CC9788]);
  sub_2680B408C();
  v1 = v0 + *(type metadata accessor for CacheKey() + 20);
  v2 = sub_2680B3B4C();
  MEMORY[0x26D6100D0](v2);
  return sub_2680B454C();
}

uint64_t sub_268099FC4(uint64_t a1, uint64_t a2)
{
  sub_2680B452C();
  sub_2680B2F5C();
  OUTLINED_FUNCTION_2_1();
  sub_26809A228(v4, v5);
  sub_2680B408C();
  v6 = v2 + *(a2 + 20);
  v7 = sub_2680B3B4C();
  MEMORY[0x26D6100D0](v7);
  return sub_2680B454C();
}

id RegexOverrideCache.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id RegexOverrideCache.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RegexOverrideCache();
  return objc_msgSendSuper2(&v2, sel_init);
}

id RegexOverrideCache.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RegexOverrideCache();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_26809A15C()
{
  result = sub_2680B2F5C();
  if (v1 <= 0x3F)
  {
    result = sub_2680B3B8C();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_26809A228(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t OUTLINED_FUNCTION_0_1()
{

  return swift_once();
}

uint64_t sub_26809A2B8()
{
  result = sub_2680B33EC();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_26809A32C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_54();
  a19 = v22;
  a20 = v23;
  OUTLINED_FUNCTION_52();
  v132 = sub_2680B3BEC();
  v24 = OUTLINED_FUNCTION_4(v132);
  v131 = v25;
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_26_0();
  OUTLINED_FUNCTION_14(v29);
  v134 = sub_2680B3D5C();
  v30 = OUTLINED_FUNCTION_4(v134);
  v138 = v31;
  v33 = *(v32 + 64);
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_26_0();
  v133 = v35;
  OUTLINED_FUNCTION_21();
  v137 = sub_2680B3B2C();
  v36 = OUTLINED_FUNCTION_4(v137);
  v141 = v37;
  v39 = *(v38 + 64);
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_26_0();
  v136 = v41;
  OUTLINED_FUNCTION_21();
  v140 = sub_2680B3CCC();
  v42 = OUTLINED_FUNCTION_4(v140);
  v144 = v43;
  v45 = *(v44 + 64);
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_26_0();
  v139 = v47;
  OUTLINED_FUNCTION_21();
  v143 = sub_2680B345C();
  v48 = OUTLINED_FUNCTION_4(v143);
  v147 = v49;
  v51 = *(v50 + 64);
  MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v52);
  OUTLINED_FUNCTION_26_0();
  v142 = v53;
  OUTLINED_FUNCTION_21();
  v146 = sub_2680B32CC();
  v54 = OUTLINED_FUNCTION_4(v146);
  v153 = v55;
  v57 = *(v56 + 64);
  MEMORY[0x28223BE20](v54);
  OUTLINED_FUNCTION_3();
  v135 = v58;
  MEMORY[0x28223BE20](v59);
  v61 = v130 - v60;
  v148 = sub_2680B328C();
  v62 = OUTLINED_FUNCTION_4(v148);
  v145 = v63;
  v65 = *(v64 + 64);
  v66 = MEMORY[0x28223BE20](v62);
  v68 = v130 - ((v67 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v66);
  v70 = v130 - v69;
  v71 = sub_2680B30CC();
  v151 = OUTLINED_FUNCTION_4(v71);
  v152 = v72;
  v74 = *(v73 + 64);
  MEMORY[0x28223BE20](v151);
  OUTLINED_FUNCTION_3();
  v150 = v75;
  MEMORY[0x28223BE20](v76);
  OUTLINED_FUNCTION_26_0();
  v149 = v77;
  OUTLINED_FUNCTION_21();
  v78 = sub_2680B393C();
  v79 = OUTLINED_FUNCTION_4(v78);
  v81 = v80;
  v83 = *(v82 + 64);
  v84 = MEMORY[0x28223BE20](v79);
  v86 = v130 - ((v85 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v84);
  v88 = v130 - v87;
  v89 = v21;
  if ((sub_2680B346C() & 1) == 0 || (sub_2680B34FC(), v90 = sub_2680B390C(), v20 = *(v81 + 8), v20(v88, v78), (v90 & 1) == 0))
  {
    if (sub_2680B347C())
    {
      sub_2680B359C();
      v94 = sub_2680B325C();
      v20 = *(v145 + 8);
      v20(v70, v148);
      if (v94)
      {
        sub_2680B359C();
        v95 = v149;
        sub_2680B327C();
        v96 = v148;
        v20(v70, v148);
        v153 = sub_2680B30AC();
        v97 = v151;
        v98 = *(v152 + 8);
        v98(v95, v151);
        OUTLINED_FUNCTION_28();
        sub_2680B359C();
        OUTLINED_FUNCTION_39();
        sub_2680B327C();
        v20(v68, v96);
        sub_2680B308C();
        v98(v89, v97);
        goto LABEL_25;
      }
    }

    v99 = sub_2680B348C();
    v100 = v153;
    if (v99)
    {
      sub_2680B35BC();
      v101 = sub_2680B329C();
      v20 = *(v100 + 8);
      v20(v61, v146);
      if (v101)
      {
        sub_2680B35BC();
        v102 = v149;
        sub_2680B32BC();
        v103 = v61;
        v104 = v146;
        v20(v103, v146);
        v153 = sub_2680B30AC();
        v105 = *(v152 + 8);
        v106 = v102;
        v86 = v151;
        v105(v106, v151);
        v107 = v135;
        sub_2680B35BC();
        OUTLINED_FUNCTION_39();
        sub_2680B32BC();
        v20(v107, v104);
LABEL_24:
        sub_2680B308C();
        v105(v89, v86);
        goto LABEL_25;
      }
    }

    if (sub_2680B34BC() & 1) != 0 && (v108 = v142, OUTLINED_FUNCTION_28(), sub_2680B35DC(), sub_2680B342C(), v109 = OUTLINED_FUNCTION_31(), v20(v109, v143), (v108))
    {
      v105 = v142;
      OUTLINED_FUNCTION_28();
      sub_2680B35DC();
      OUTLINED_FUNCTION_23();
      sub_2680B344C();
      v110 = v143;
      v20(v105, v143);
      v111 = sub_2680B30AC();
      v112 = OUTLINED_FUNCTION_8_0(v111);
      (v105)(v112);
      OUTLINED_FUNCTION_36(&a18);
      sub_2680B35DC();
      OUTLINED_FUNCTION_38();
      sub_2680B344C();
    }

    else if (sub_2680B356C() & 1) != 0 && (v113 = v139, OUTLINED_FUNCTION_28(), sub_2680B351C(), sub_2680B3C9C(), v114 = OUTLINED_FUNCTION_31(), v20(v114, v140), (v113))
    {
      v105 = v139;
      OUTLINED_FUNCTION_28();
      sub_2680B351C();
      OUTLINED_FUNCTION_23();
      sub_2680B3CBC();
      v110 = v140;
      v20(v105, v140);
      v115 = sub_2680B30AC();
      v116 = OUTLINED_FUNCTION_8_0(v115);
      (v105)(v116);
      OUTLINED_FUNCTION_36(&a17);
      sub_2680B351C();
      OUTLINED_FUNCTION_38();
      sub_2680B3CBC();
    }

    else if (sub_2680B352C() & 1) != 0 && (v117 = v136, OUTLINED_FUNCTION_28(), sub_2680B34AC(), sub_2680B3AFC(), v118 = OUTLINED_FUNCTION_31(), v20(v118, v137), (v117))
    {
      v105 = v136;
      OUTLINED_FUNCTION_28();
      sub_2680B34AC();
      OUTLINED_FUNCTION_23();
      sub_2680B3B1C();
      v110 = v137;
      v20(v105, v137);
      v119 = sub_2680B30AC();
      v120 = OUTLINED_FUNCTION_8_0(v119);
      (v105)(v120);
      OUTLINED_FUNCTION_36(&a13);
      sub_2680B34AC();
      OUTLINED_FUNCTION_38();
      sub_2680B3B1C();
    }

    else
    {
      if ((sub_2680B357C() & 1) == 0 || (v121 = v133, OUTLINED_FUNCTION_28(), sub_2680B354C(), sub_2680B3D2C(), v122 = OUTLINED_FUNCTION_31(), v20(v122, v134), (v121 & 1) == 0))
      {
        if ((sub_2680B355C() & 1) == 0 || (v105 = v130[3], OUTLINED_FUNCTION_28(), sub_2680B34DC(), v126 = sub_2680B3BBC(), v20 = *(v131 + 8), v110 = v132, v20(v105, v132), (v126 & 1) == 0))
        {
          v153 = 0;
          goto LABEL_25;
        }

        OUTLINED_FUNCTION_28();
        sub_2680B34DC();
        OUTLINED_FUNCTION_23();
        sub_2680B3BDC();
        v20(v105, v110);
        v127 = sub_2680B30AC();
        v128 = OUTLINED_FUNCTION_8_0(v127);
        (v105)(v128);
        v129 = v130[0];
        sub_2680B34DC();
        OUTLINED_FUNCTION_39();
        sub_2680B3BDC();
        v125 = v129;
        goto LABEL_23;
      }

      v105 = v133;
      OUTLINED_FUNCTION_28();
      sub_2680B354C();
      OUTLINED_FUNCTION_23();
      sub_2680B3D4C();
      v110 = v134;
      v20(v105, v134);
      v123 = sub_2680B30AC();
      v124 = OUTLINED_FUNCTION_8_0(v123);
      (v105)(v124);
      OUTLINED_FUNCTION_36(&a12);
      sub_2680B354C();
      OUTLINED_FUNCTION_38();
      sub_2680B3D4C();
    }

    v125 = v61;
LABEL_23:
    v20(v125, v110);
    goto LABEL_24;
  }

  sub_2680B34FC();
  v91 = v149;
  sub_2680B392C();
  v20(v88, v78);
  v153 = sub_2680B30AC();
  v92 = v151;
  v93 = *(v152 + 8);
  v93(v91, v151);
  sub_2680B34FC();
  OUTLINED_FUNCTION_39();
  sub_2680B392C();
  v20(v86, v78);
  sub_2680B308C();
  v93(v89, v92);
LABEL_25:
  OUTLINED_FUNCTION_53();
}

void sub_26809ADF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_54();
  a19 = v20;
  a20 = v21;
  v23 = v22;
  v125 = v24;
  v113 = sub_2680B3BEC();
  v25 = OUTLINED_FUNCTION_4(v113);
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_14(v28);
  v114 = sub_2680B3D5C();
  v29 = OUTLINED_FUNCTION_4(v114);
  v31 = *(v30 + 64);
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_14(v32);
  v115 = sub_2680B3B2C();
  v33 = OUTLINED_FUNCTION_4(v115);
  v35 = *(v34 + 64);
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_14(v36);
  v37 = sub_2680B3CCC();
  v38 = OUTLINED_FUNCTION_4(v37);
  v117 = v39;
  v118 = v38;
  v41 = *(v40 + 64);
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_4_1();
  v116 = v42;
  OUTLINED_FUNCTION_21();
  v43 = sub_2680B345C();
  v44 = OUTLINED_FUNCTION_4(v43);
  v120 = v45;
  v121 = v44;
  v47 = *(v46 + 64);
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_4_1();
  v119 = v48;
  OUTLINED_FUNCTION_21();
  v49 = sub_2680B32CC();
  v50 = OUTLINED_FUNCTION_4(v49);
  v122 = v51;
  v53 = *(v52 + 64);
  MEMORY[0x28223BE20](v50);
  OUTLINED_FUNCTION_6();
  v56 = v55 - v54;
  v57 = sub_2680B328C();
  v58 = OUTLINED_FUNCTION_4(v57);
  v60 = v59;
  v62 = *(v61 + 64);
  MEMORY[0x28223BE20](v58);
  OUTLINED_FUNCTION_6();
  v65 = v64 - v63;
  v66 = sub_2680B393C();
  v67 = OUTLINED_FUNCTION_4(v66);
  v69 = v68;
  v71 = *(v70 + 64);
  MEMORY[0x28223BE20](v67);
  OUTLINED_FUNCTION_6();
  v74 = v73 - v72;
  v75 = sub_2680B35EC();
  v76 = OUTLINED_FUNCTION_4(v75);
  v78 = *(v77 + 64);
  MEMORY[0x28223BE20](v76);
  OUTLINED_FUNCTION_6();
  v81 = v80 - v79;
  v123 = v83;
  v124 = v82;
  (*(v83 + 16))(v80 - v79, v23);
  if (sub_2680B346C())
  {
    sub_2680B34FC();
    v84 = sub_2680B390C();
    (*(v69 + 8))(v74, v66);
    if (v84)
    {
      OUTLINED_FUNCTION_45();
      OUTLINED_FUNCTION_15_0();
      sub_2680B34EC();
      OUTLINED_FUNCTION_5_1();
      sub_2680B391C();
      OUTLINED_FUNCTION_13();
      sub_2680B30BC();
      v85 = OUTLINED_FUNCTION_29();
      v49(v85);
      v86 = OUTLINED_FUNCTION_30();
      (v57)(v86);
      OUTLINED_FUNCTION_44();
      OUTLINED_FUNCTION_22();
      sub_2680B34EC();
      OUTLINED_FUNCTION_16();
      sub_2680B391C();
LABEL_25:
      OUTLINED_FUNCTION_13();
      sub_2680B309C();
      v108 = OUTLINED_FUNCTION_29();
      v49(v108);
      v109 = OUTLINED_FUNCTION_30();
      (v57)(v109);
      v110 = v124;
      v111 = v125;
      (*(v123 + 32))(v125, v81, v124);
      v112 = 0;
      goto LABEL_26;
    }
  }

  if (sub_2680B347C())
  {
    sub_2680B359C();
    v87 = sub_2680B325C();
    (*(v60 + 8))(v65, v57);
    if (v87)
    {
      OUTLINED_FUNCTION_45();
      OUTLINED_FUNCTION_15_0();
      sub_2680B358C();
      OUTLINED_FUNCTION_5_1();
      sub_2680B326C();
      OUTLINED_FUNCTION_13();
      sub_2680B30BC();
      v88 = OUTLINED_FUNCTION_29();
      v49(v88);
      v89 = OUTLINED_FUNCTION_30();
      (v57)(v89);
      OUTLINED_FUNCTION_44();
      OUTLINED_FUNCTION_22();
      sub_2680B358C();
      OUTLINED_FUNCTION_16();
      sub_2680B326C();
      goto LABEL_25;
    }
  }

  if (sub_2680B348C())
  {
    sub_2680B35BC();
    v57 = sub_2680B329C();
    (*(v122 + 8))(v56, v49);
    if (v57)
    {
      OUTLINED_FUNCTION_45();
      OUTLINED_FUNCTION_15_0();
      sub_2680B35AC();
      OUTLINED_FUNCTION_5_1();
      sub_2680B32AC();
      OUTLINED_FUNCTION_13();
      sub_2680B30BC();
      v90 = OUTLINED_FUNCTION_29();
      v49(v90);
      v91 = OUTLINED_FUNCTION_30();
      (v57)(v91);
      OUTLINED_FUNCTION_44();
      OUTLINED_FUNCTION_22();
      sub_2680B35AC();
      OUTLINED_FUNCTION_16();
      sub_2680B32AC();
      goto LABEL_25;
    }
  }

  if (sub_2680B34BC())
  {
    v49 = v119;
    sub_2680B35DC();
    v57 = sub_2680B342C();
    (*(v120 + 8))(v119, v121);
    if (v57)
    {
      OUTLINED_FUNCTION_45();
      OUTLINED_FUNCTION_15_0();
      sub_2680B35CC();
      OUTLINED_FUNCTION_5_1();
      sub_2680B343C();
      OUTLINED_FUNCTION_13();
      sub_2680B30BC();
      v92 = OUTLINED_FUNCTION_29();
      v119(v92);
      v93 = OUTLINED_FUNCTION_30();
      (v57)(v93);
      OUTLINED_FUNCTION_44();
      OUTLINED_FUNCTION_22();
      sub_2680B35CC();
      OUTLINED_FUNCTION_16();
      sub_2680B343C();
      goto LABEL_25;
    }
  }

  if (sub_2680B356C())
  {
    v49 = v116;
    sub_2680B351C();
    v57 = sub_2680B3C9C();
    (*(v117 + 8))(v116, v118);
    if (v57)
    {
      OUTLINED_FUNCTION_45();
      OUTLINED_FUNCTION_15_0();
      sub_2680B350C();
      OUTLINED_FUNCTION_5_1();
      sub_2680B3CAC();
      OUTLINED_FUNCTION_13();
      sub_2680B30BC();
      v94 = OUTLINED_FUNCTION_29();
      v116(v94);
      v95 = OUTLINED_FUNCTION_30();
      (v57)(v95);
      OUTLINED_FUNCTION_44();
      OUTLINED_FUNCTION_22();
      sub_2680B350C();
      OUTLINED_FUNCTION_16();
      sub_2680B3CAC();
      goto LABEL_25;
    }
  }

  if (sub_2680B352C())
  {
    OUTLINED_FUNCTION_43(&a17);
    sub_2680B34AC();
    v57 = sub_2680B3AFC();
    v96 = OUTLINED_FUNCTION_42(&a18);
    v97(v96, v115);
    if (v57)
    {
      OUTLINED_FUNCTION_45();
      OUTLINED_FUNCTION_15_0();
      sub_2680B349C();
      OUTLINED_FUNCTION_5_1();
      sub_2680B3B0C();
      OUTLINED_FUNCTION_13();
      sub_2680B30BC();
      v98 = OUTLINED_FUNCTION_29();
      v49(v98);
      v99 = OUTLINED_FUNCTION_30();
      (v57)(v99);
      OUTLINED_FUNCTION_44();
      OUTLINED_FUNCTION_22();
      sub_2680B349C();
      OUTLINED_FUNCTION_16();
      sub_2680B3B0C();
      goto LABEL_25;
    }
  }

  if (sub_2680B357C())
  {
    OUTLINED_FUNCTION_43(&a14);
    sub_2680B354C();
    v57 = sub_2680B3D2C();
    v100 = OUTLINED_FUNCTION_42(&a15);
    v101(v100, v114);
    if (v57)
    {
      OUTLINED_FUNCTION_45();
      OUTLINED_FUNCTION_15_0();
      sub_2680B353C();
      OUTLINED_FUNCTION_5_1();
      sub_2680B3D3C();
      OUTLINED_FUNCTION_13();
      sub_2680B30BC();
      v102 = OUTLINED_FUNCTION_29();
      v49(v102);
      v103 = OUTLINED_FUNCTION_30();
      (v57)(v103);
      OUTLINED_FUNCTION_44();
      OUTLINED_FUNCTION_22();
      sub_2680B353C();
      OUTLINED_FUNCTION_16();
      sub_2680B3D3C();
      goto LABEL_25;
    }
  }

  if (sub_2680B355C())
  {
    OUTLINED_FUNCTION_43(&a11);
    sub_2680B34DC();
    v57 = sub_2680B3BBC();
    v104 = OUTLINED_FUNCTION_42(&a12);
    v105(v104, v113);
    if (v57)
    {
      OUTLINED_FUNCTION_45();
      OUTLINED_FUNCTION_15_0();
      sub_2680B34CC();
      OUTLINED_FUNCTION_5_1();
      sub_2680B3BCC();
      OUTLINED_FUNCTION_13();
      sub_2680B30BC();
      v106 = OUTLINED_FUNCTION_29();
      v49(v106);
      v107 = OUTLINED_FUNCTION_30();
      (v57)(v107);
      OUTLINED_FUNCTION_44();
      OUTLINED_FUNCTION_22();
      sub_2680B34CC();
      OUTLINED_FUNCTION_16();
      sub_2680B3BCC();
      goto LABEL_25;
    }
  }

  sub_2680B425C();
  if (qword_2813194A0 != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  sub_2680B406C();
  v110 = v124;
  (*(v123 + 8))(v81, v124);
  v112 = 1;
  v111 = v125;
LABEL_26:
  __swift_storeEnumTagSinglePayload(v111, v112, 1, v110);
  OUTLINED_FUNCTION_53();
}

void sub_26809B764(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_54();
  a19 = v20;
  a20 = v21;
  v347 = v22;
  v308 = v23;
  v356 = v24;
  v354 = v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280249148, &qword_2680B5380);
  v27 = *(*(v26 - 8) + 64);
  MEMORY[0x28223BE20](v26 - 8);
  OUTLINED_FUNCTION_14(&v294 - v28);
  v352 = sub_2680B364C();
  v29 = OUTLINED_FUNCTION_4(v352);
  v31 = v30;
  v33 = *(v32 + 64);
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_14(v34);
  v351 = sub_2680B3D1C();
  v35 = OUTLINED_FUNCTION_4(v351);
  v37 = v36;
  v39 = *(v38 + 64);
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_3();
  v350 = v40;
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_26_0();
  v353 = v42;
  OUTLINED_FUNCTION_21();
  v319 = sub_2680B3FEC();
  v43 = OUTLINED_FUNCTION_4(v319);
  v45 = v44;
  v47 = *(v46 + 64);
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_26_0();
  OUTLINED_FUNCTION_14(v49);
  v324 = sub_2680B401C();
  v50 = OUTLINED_FUNCTION_4(v324);
  v52 = v51;
  v54 = *(v53 + 64);
  MEMORY[0x28223BE20](v50);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v55);
  OUTLINED_FUNCTION_26_0();
  OUTLINED_FUNCTION_14(v56);
  v346 = sub_2680B307C();
  v57 = *(v346 - 8);
  v58 = *(v57 + 64);
  MEMORY[0x28223BE20](v346 - 8);
  OUTLINED_FUNCTION_4_1();
  v355 = v59;
  OUTLINED_FUNCTION_21();
  v330[0] = sub_2680B2FCC();
  v60 = OUTLINED_FUNCTION_4(v330[0]);
  v62 = v61;
  v64 = *(v63 + 64);
  MEMORY[0x28223BE20](v60);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_14(v65);
  v339 = type metadata accessor for Siri_Nlu_Internal_TurnInputRule.UtteranceRule.SpanForNode();
  v66 = OUTLINED_FUNCTION_4(v339);
  v343 = v67;
  v69 = *(v68 + 64);
  MEMORY[0x28223BE20](v66);
  OUTLINED_FUNCTION_6();
  v72 = v71 - v70;
  v73 = sub_2680B35EC();
  v74 = OUTLINED_FUNCTION_4(v73);
  v76 = v75;
  v78 = *(v77 + 64);
  MEMORY[0x28223BE20](v74);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v79);
  OUTLINED_FUNCTION_51();
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v80);
  OUTLINED_FUNCTION_51();
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v81);
  OUTLINED_FUNCTION_51();
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v82);
  OUTLINED_FUNCTION_51();
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v83);
  OUTLINED_FUNCTION_26_0();
  v325 = v84;
  v312 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280249150, &qword_2680B5388);
  v85 = *(*(v312 - 8) + 64);
  MEMORY[0x28223BE20](v312);
  v302 = &v294 - v86;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280249158, &unk_2680B5390);
  v88 = *(*(v87 - 8) + 64);
  MEMORY[0x28223BE20](v87 - 8);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v89);
  OUTLINED_FUNCTION_26_0();
  v311 = v90;
  v91 = sub_2680B30DC();
  v345 = static MatchingSpanUtils.utf16CodeUnitsToCodePointsMapping(_:)();
  v92 = v91;
  v93 = 0;
  v94 = *(v91 + 16);
  v304 = v76 + 16;
  v314 = (v76 + 32);
  v327 = v62 + 16;
  v329 = v62;
  v326 = v62 + 8;
  v336 = v57 + 16;
  v306 = &v358 + 1;
  v316 = v45 + 16;
  v315 = v45 + 8;
  v322 = v52 + 16;
  v321 = v52 + 8;
  v334 = (v57 + 24);
  v330[5] = v31 + 16;
  v330[4] = v37 + 16;
  v332 = v31;
  v95 = v308;
  v330[3] = v31 + 8;
  v330[2] = v37 + 8;
  v337 = v57;
  v96 = v57 + 8;
  v97 = v347;
  v335 = v96;
  v331 = v37;
  v330[1] = v37 + 32;
  v305 = v76;
  v309 = v76 + 8;
  v313 = MEMORY[0x277D84F90];
  v341 = xmmword_2680B4FE0;
  v357 = v72;
  v307 = v73;
  v310 = v92;
  v300 = v94;
  while (1)
  {
LABEL_2:
    v98 = v320;
LABEL_3:
    if (v93 == v94)
    {
      v99 = 1;
      v303 = v94;
      v100 = v312;
    }

    else
    {
      v100 = v312;
      if ((v93 & 0x8000000000000000) != 0)
      {
        goto LABEL_175;
      }

      if (v93 >= *(v92 + 16))
      {
        goto LABEL_176;
      }

      v101 = v93 + 1;
      v102 = *(v305 + 80);
      OUTLINED_FUNCTION_33();
      v107 = v104 + v103 + *(v105 + 72) * v106;
      v108 = *(v100 + 48);
      v109 = v97;
      v110 = v302;
      *v302 = v106;
      (*(v105 + 16))(&v110[v108], v107, v73);
      v111 = v110;
      v97 = v109;
      sub_26809315C(v111, v320, &qword_280249150, &qword_2680B5388);
      v99 = 0;
      v303 = v101;
      v98 = v320;
    }

    __swift_storeEnumTagSinglePayload(v98, v99, 1, v100);
    v112 = v98;
    v113 = v311;
    sub_26809315C(v112, v311, &qword_280249158, &unk_2680B5390);
    if (__swift_getEnumTagSinglePayload(v113, 1, v100) == 1)
    {

      OUTLINED_FUNCTION_48();
      OUTLINED_FUNCTION_40();
      goto LABEL_153;
    }

    v114 = v113;
    v115 = *v113;
    v116 = v114 + *(v100 + 48);
    v301 = *v314;
    v301(v325, v116, v73);
    if (*(v95 + 16))
    {
      v117 = sub_268093DAC(v115);
      if (v118)
      {
        break;
      }
    }

    OUTLINED_FUNCTION_19(&v331);
    v236 = OUTLINED_FUNCTION_35();
    v237(v236);
    if ((OUTLINED_FUNCTION_41() & 1) == 0)
    {
      OUTLINED_FUNCTION_20_0();
    }

    OUTLINED_FUNCTION_24_0();
    v238 = v97;
    if (v181)
    {
      OUTLINED_FUNCTION_17_0();
      OUTLINED_FUNCTION_34(v258);
    }

    OUTLINED_FUNCTION_18_0();
    v239();
    OUTLINED_FUNCTION_12();
    v240 = v330;
LABEL_138:
    v247 = *(v240 - 32);
    OUTLINED_FUNCTION_32();
    v248();
    OUTLINED_FUNCTION_37();
    v97 = v238;
  }

  v119 = *(*(v95 + 56) + 8 * v117);
  v344 = *(v119 + 16);
  if (!v344)
  {
    OUTLINED_FUNCTION_19(&v331);
    v241 = OUTLINED_FUNCTION_35();
    v242(v241);
    if ((OUTLINED_FUNCTION_41() & 1) == 0)
    {
      OUTLINED_FUNCTION_20_0();
    }

    OUTLINED_FUNCTION_24_0();
    v238 = v97;
    if (v181)
    {
      OUTLINED_FUNCTION_17_0();
      OUTLINED_FUNCTION_34(v259);
    }

    OUTLINED_FUNCTION_18_0();
    v243();
    OUTLINED_FUNCTION_12();
    v240 = &v329;
    goto LABEL_138;
  }

  sub_26809A32C(v325, v120, v121, v122, v123, v124, v125, v126, v294, v295, v296, v297, v298, v299, v300, v301, v302, v303, v304, v305);
  v354 = v128;
  if (!v128)
  {

    OUTLINED_FUNCTION_19(&v331);
    v244 = OUTLINED_FUNCTION_35();
    v245(v244);
    if ((OUTLINED_FUNCTION_41() & 1) == 0)
    {
      OUTLINED_FUNCTION_20_0();
    }

    OUTLINED_FUNCTION_24_0();
    v238 = v97;
    if (v181)
    {
      OUTLINED_FUNCTION_17_0();
      OUTLINED_FUNCTION_34(v260);
    }

    OUTLINED_FUNCTION_18_0();
    v246();
    OUTLINED_FUNCTION_12();
    v240 = &v328;
    goto LABEL_138;
  }

  v129 = v127;
  v356 = 0;
  v340 = v119;
  while (1)
  {
    if (v356 == v344)
    {
      v62 = v97;

      v227 = v299;
      v228 = v325;
      sub_26809ADF8(v325, v354, v129, v229, v230, v231, v232, v233, v294, v295, v296, v297, v298, v299, v300, v301, v302, v303, v304, v305);

      v73 = v307;
      EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v227, 1, v307);
      v95 = v308;
      if (EnumTagSinglePayload == 1)
      {
        OUTLINED_FUNCTION_19(&v336);
        v235(v228, v73);
        sub_26809D6A8(v227);

        v98 = v320;
        OUTLINED_FUNCTION_37();
        goto LABEL_3;
      }

      v249 = v294;
      OUTLINED_FUNCTION_32();
      v250();
      OUTLINED_FUNCTION_19(&v331);
      v251(v295, v249, v73);
      if ((OUTLINED_FUNCTION_41() & 1) == 0)
      {
        OUTLINED_FUNCTION_20_0();
        v227 = v261;
      }

      v313 = v227;
      v31 = *(v227 + 16);
      if (v31 >= *(v227 + 24) >> 1)
      {
        OUTLINED_FUNCTION_17_0();
        v313 = v262;
      }

      v252 = v305;
      v253 = *(v305 + 8);
      v254 = v307;
      v253(v294, v307);
      v253(v325, v254);
      v73 = v254;
      *(v313 + 16) = v31 + 1;
      v255 = *(v252 + 80);
      OUTLINED_FUNCTION_33();
      v256 = *(v252 + 72);
      OUTLINED_FUNCTION_32();
      v257();

      OUTLINED_FUNCTION_37();
      v97 = v62;
      goto LABEL_2;
    }

    if (v356 >= *(v119 + 16))
    {
      __break(1u);
LABEL_163:
      __break(1u);
LABEL_164:
      __break(1u);
LABEL_165:
      __break(1u);
LABEL_166:
      __break(1u);
LABEL_167:
      __break(1u);
LABEL_168:
      __break(1u);
LABEL_169:
      __break(1u);
LABEL_170:
      __break(1u);
LABEL_171:
      __break(1u);
LABEL_172:
      __break(1u);
LABEL_173:
      OUTLINED_FUNCTION_40();

      OUTLINED_FUNCTION_48();

      OUTLINED_FUNCTION_58();
      goto LABEL_158;
    }

    v130 = *(v343 + 80);
    OUTLINED_FUNCTION_33();
    sub_2680931D0(v119 + v131 + *(v132 + 72) * v356, v357);
    if ((sub_2680B33BC() & 1) == 0)
    {
      OUTLINED_FUNCTION_40();

      OUTLINED_FUNCTION_48();
      sub_2680B425C();
      if (qword_2813194A0 == -1)
      {
        goto LABEL_149;
      }

LABEL_182:
      OUTLINED_FUNCTION_0();
LABEL_149:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280249100, &qword_2680B4FF0);
      v269 = OUTLINED_FUNCTION_2();
      OUTLINED_FUNCTION_47(v269);
      v270 = v357;
      v271 = sub_2680B339C();
      v273 = v272;
      v269[3].n128_u64[1] = MEMORY[0x277D837D0];
      v269[4].n128_u64[0] = sub_26808C1E4();
      v269[2].n128_u64[0] = v271;
      v269[2].n128_u64[1] = v273;
      OUTLINED_FUNCTION_57();

      OUTLINED_FUNCTION_2_2();
      v268 = v270;
      goto LABEL_150;
    }

    v133 = static MatchingSpanUtils.getUnicodeScalarIndexes(_:_:_:)(v357, v97, v345);
    if (v135)
    {
      OUTLINED_FUNCTION_40();

      OUTLINED_FUNCTION_48();
      sub_2680B425C();
      if (qword_2813194A0 != -1)
      {
        goto LABEL_182;
      }

      goto LABEL_149;
    }

    v62 = *(v357 + *(v339 + 20));
    if (v62 < 1 || v62 >= *(v354 + 16))
    {
      break;
    }

    v136 = v133;
    v137 = v134;
    v138 = sub_2680B332C();
    v139 = *(sub_2680B31DC() + 16);

    if (v139 <= v138)
    {
      v150 = -1;
    }

    else
    {
      if (*(sub_2680B31DC() + 16) <= v138)
      {
        goto LABEL_172;
      }

      v140 = v329;
      v141 = *(v329 + 80);
      OUTLINED_FUNCTION_33();
      v144 = v142 + v143 + *(v140 + 72) * v138;
      v145 = v129;
      v146 = v328;
      v147 = v330[0];
      (*(v140 + 16))(v328, v144, v330[0]);

      v148 = sub_2680B2FBC();
      v149 = v146;
      v129 = v145;
      (*(v140 + 8))(v149, v147);
      v150 = v148;
    }

    v151 = sub_2680B32FC();
    v152 = v338;
    v349 = v129;
    if (v151 && (v153 = v151, v154 = *(sub_2680B31DC() + 16), , v154 >= v153))
    {
      v156 = sub_2680B31DC();
      if (*(v156 + 16) < v153)
      {
        __break(1u);
LABEL_175:
        __break(1u);
LABEL_176:
        __break(1u);
LABEL_177:
        __break(1u);
LABEL_178:
        __break(1u);
LABEL_179:
        __break(1u);
LABEL_180:
        __break(1u);
LABEL_181:
        OUTLINED_FUNCTION_0();
        goto LABEL_145;
      }

      v157 = v329;
      v158 = v156 + ((*(v157 + 80) + 32) & ~*(v157 + 80)) + *(v329 + 72) * (v153 - 1);
      v159 = v150;
      v160 = v328;
      v161 = v330[0];
      (*(v329 + 16))(v328, v158, v330[0]);

      v162 = sub_2680B2FAC();
      v163 = v160;
      v150 = v159;
      (*(v157 + 8))(v163, v161);
      v155 = v162;
    }

    else
    {
      v155 = -1;
    }

    v164 = v354;
    v31 = v346;
    if (v62 >= *(v354 + 16))
    {
      goto LABEL_163;
    }

    v165 = (*(v337 + 80) + 32) & ~*(v337 + 80);
    v166 = *(v337 + 16);
    v348 = *(v337 + 72) * v62;
    v166(v355, v354 + v165 + v348, v346);
    if ((sub_2680B305C() & 1) == 0)
    {
      if ((sub_2680B306C() & 1) == 0)
      {
        OUTLINED_FUNCTION_40();

        OUTLINED_FUNCTION_58();

        OUTLINED_FUNCTION_48();
        sub_2680B425C();
        if (qword_2813194A0 != -1)
        {
          OUTLINED_FUNCTION_0();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280249100, &qword_2680B4FF0);
        v276 = OUTLINED_FUNCTION_2();
        OUTLINED_FUNCTION_47(v276);
        v277 = MEMORY[0x277D83C10];
        v278[7] = v279;
        v278[8] = v277;
        v278[4] = v62;
        sub_2680B406C();

        OUTLINED_FUNCTION_19(&a13);
        v280(v355, v31);
        OUTLINED_FUNCTION_2_2();
        sub_268093BF8(v357, v281);
        OUTLINED_FUNCTION_19(&v336);
        v282 = OUTLINED_FUNCTION_50();
        v283(v282);
        goto LABEL_152;
      }

      v173 = sub_2680B337C();
      v175 = v174;
      v176 = HIBYTE(v174) & 0xF;
      v177 = v173 & 0xFFFFFFFFFFFFLL;
      if ((v175 & 0x2000000000000000) != 0)
      {
        v178 = v176;
      }

      else
      {
        v178 = v173 & 0xFFFFFFFFFFFFLL;
      }

      if (!v178)
      {
        goto LABEL_173;
      }

      if ((v175 & 0x1000000000000000) != 0)
      {
        v197 = v165;
        v360 = 0;
        sub_26809D10C(v173, v175, 10);
        v198 = v226;
        goto LABEL_102;
      }

      if ((v175 & 0x2000000000000000) != 0)
      {
        v358 = v173;
        v359 = v175 & 0xFFFFFFFFFFFFFFLL;
        if (v173 == 43)
        {
          if (!v176)
          {
            goto LABEL_179;
          }

          if (v176 != 1)
          {
            while (1)
            {
              OUTLINED_FUNCTION_25();
              if (!v182 & v181)
              {
                break;
              }

              OUTLINED_FUNCTION_9_1();
              if (!v182 || __OFADD__(v191, v190))
              {
                break;
              }

              OUTLINED_FUNCTION_46();
              if (v182)
              {
                goto LABEL_101;
              }
            }
          }
        }

        else if (v173 == 45)
        {
          if (!v176)
          {
            goto LABEL_180;
          }

          if (v176 != 1)
          {
            while (1)
            {
              OUTLINED_FUNCTION_25();
              if (!v182 & v181)
              {
                break;
              }

              OUTLINED_FUNCTION_9_1();
              if (!v182 || __OFSUB__(v187, v186))
              {
                break;
              }

              OUTLINED_FUNCTION_46();
              if (v182)
              {
                goto LABEL_101;
              }
            }
          }
        }

        else if (v176)
        {
          while (1)
          {
            OUTLINED_FUNCTION_25();
            if (!v182 & v181)
            {
              break;
            }

            OUTLINED_FUNCTION_9_1();
            if (!v182 || __OFADD__(v196, v195))
            {
              break;
            }

            OUTLINED_FUNCTION_46();
            if (v182)
            {
              goto LABEL_101;
            }
          }
        }
      }

      else
      {
        if ((v173 & 0x1000000000000000) != 0)
        {
          v179 = ((v175 & 0xFFFFFFFFFFFFFFFLL) + 32);
        }

        else
        {
          v179 = sub_2680B434C();
        }

        v180 = *v179;
        if (v180 == 43)
        {
          if (v177 < 1)
          {
            goto LABEL_178;
          }

          if (v177 != 1)
          {
            if (!v179)
            {
              goto LABEL_91;
            }

            while (1)
            {
              OUTLINED_FUNCTION_25();
              if (!v182 & v181)
              {
                break;
              }

              OUTLINED_FUNCTION_9_1();
              if (!v182 || __OFADD__(v189, v188))
              {
                break;
              }

              OUTLINED_FUNCTION_46();
              if (v182)
              {
                goto LABEL_101;
              }
            }
          }
        }

        else if (v180 == 45)
        {
          if (v177 < 1)
          {
            goto LABEL_177;
          }

          if (v177 != 1)
          {
            if (v179)
            {
              while (1)
              {
                OUTLINED_FUNCTION_25();
                if (!v182 & v181)
                {
                  goto LABEL_100;
                }

                OUTLINED_FUNCTION_9_1();
                if (!v182 || __OFSUB__(v184, v183))
                {
                  goto LABEL_100;
                }

                OUTLINED_FUNCTION_46();
                if (v182)
                {
                  goto LABEL_101;
                }
              }
            }

LABEL_91:
            v185 = 0;
LABEL_101:
            v197 = v165;
            v360 = v185;
            v198 = v185;
LABEL_102:

            if ((v198 & 1) == 0)
            {
              v200 = v317;
              MEMORY[0x26D60FB70](v199);
              sub_2680B3FCC();
              OUTLINED_FUNCTION_19(&v342);
              v201 = v319;
              v202(v318, v200, v319);
              sub_2680B304C();
              OUTLINED_FUNCTION_19(&v341 + 8);
              v203(v200, v201);
              v31 = v346;
              v165 = v197;
              goto LABEL_104;
            }

            OUTLINED_FUNCTION_40();

            OUTLINED_FUNCTION_48();

            OUTLINED_FUNCTION_58();
            v31 = v346;
LABEL_158:
            sub_2680B425C();
            v284 = v355;
            if (qword_2813194A0 != -1)
            {
              OUTLINED_FUNCTION_0();
            }

            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280249100, &qword_2680B4FF0);
            v285 = swift_allocObject();
            *(v285 + 16) = xmmword_2680B5350;
            v286 = v357;
            v287 = sub_2680B337C();
            v289 = v288;
            *(v285 + 56) = MEMORY[0x277D837D0];
            v290 = sub_26808C1E4();
            *(v285 + 32) = v287;
            *(v285 + 40) = v289;
            v291 = MEMORY[0x277D83C10];
            *(v285 + 96) = MEMORY[0x277D83B88];
            *(v285 + 104) = v291;
            *(v285 + 64) = v290;
            *(v285 + 72) = v62;
            OUTLINED_FUNCTION_57();

            OUTLINED_FUNCTION_19(&a13);
            v292(v284, v31);
            OUTLINED_FUNCTION_2_2();
            sub_268093BF8(v286, v293);
            OUTLINED_FUNCTION_19(&v336);
            v274 = v325;
            goto LABEL_151;
          }
        }

        else
        {
          if (!v177)
          {
            goto LABEL_100;
          }

          v192 = 0;
          if (!v179)
          {
            goto LABEL_91;
          }

          while (1)
          {
            v193 = *v179 - 48;
            if (v193 > 9)
            {
              break;
            }

            v194 = 10 * v192;
            if ((v192 * 10) >> 64 != (10 * v192) >> 63)
            {
              break;
            }

            v192 = v194 + v193;
            if (__OFADD__(v194, v193))
            {
              break;
            }

            ++v179;
            if (!--v177)
            {
              goto LABEL_91;
            }
          }
        }
      }

LABEL_100:
      v185 = 1;
      goto LABEL_101;
    }

    sub_2680B400C();
    sub_26809E574(v150, v155);
    if (!v167)
    {
      sub_2680B337C();
    }

    sub_2680B3FFC();
    OUTLINED_FUNCTION_19(&v348);
    v168 = v152;
    v169 = v152;
    v170 = v324;
    v171(v323, v168, v324);
    sub_2680B303C();
    OUTLINED_FUNCTION_19(&v347);
    v172(v169, v170);
    v164 = v354;
LABEL_104:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_26809D694(v164);
      v164 = v222;
    }

    if (v62 >= *(v164 + 16))
    {
      goto LABEL_164;
    }

    (*v334)(v164 + v165 + v348, v355, v31);
    sub_2680B3D0C();
    if (v62 > 0xFFFFFFFFLL)
    {
      goto LABEL_165;
    }

    sub_2680B3CFC();
    sub_2680B3CDC();
    v62 = v333;
    sub_2680B363C();
    if (v150 < 0)
    {
      goto LABEL_166;
    }

    sub_2680B35FC();
    if (v155 < 0)
    {
      goto LABEL_167;
    }

    sub_2680B362C();
    if ((v136 & 0x8000000000000000) != 0)
    {
      goto LABEL_168;
    }

    if (HIDWORD(v136))
    {
      goto LABEL_169;
    }

    sub_2680B361C();
    if ((v137 & 0x8000000000000000) != 0)
    {
      goto LABEL_170;
    }

    if (HIDWORD(v137))
    {
      goto LABEL_171;
    }

    v354 = v164;
    sub_2680B360C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280249160, &qword_2680B53A0);
    v204 = v332;
    v205 = *(v332 + 72);
    v206 = (*(v332 + 80) + 32) & ~*(v332 + 80);
    v207 = swift_allocObject();
    v208 = OUTLINED_FUNCTION_47(v207);
    (*(v204 + 16))(v209 + v206, v62, v352, v208);
    v210 = v353;
    sub_2680B3CEC();
    OUTLINED_FUNCTION_19(&v360);
    v211(v350, v210, v351);
    v129 = v349;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v223 = *(v129 + 16);
      sub_26809EEC8();
      v129 = v224;
    }

    v212 = v355;
    v213 = v347;
    v214 = *(v129 + 16);
    if (v214 >= *(v129 + 24) >> 1)
    {
      sub_26809EEC8();
      v129 = v225;
    }

    ++v356;
    OUTLINED_FUNCTION_19(&v359);
    v215(v62, v352);
    v62 = v331;
    v216 = v210;
    v217 = v351;
    (*(v331 + 8))(v216, v351);
    OUTLINED_FUNCTION_19(&a13);
    v218(v212, v31);
    OUTLINED_FUNCTION_2_2();
    sub_268093BF8(v357, v219);
    *(v129 + 16) = v214 + 1;
    v220 = *(v62 + 80);
    OUTLINED_FUNCTION_33();
    (*(v62 + 32))(v129 + v221 + *(v62 + 72) * v214, v350, v217);
    v119 = v340;
    v97 = v213;
  }

  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_58();
  OUTLINED_FUNCTION_40();

  sub_2680B425C();
  if (qword_2813194A0 != -1)
  {
    goto LABEL_181;
  }

LABEL_145:
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280249100, &qword_2680B4FF0);
  v263 = OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_47(v263);
  v264 = MEMORY[0x277D83C10];
  v265[7] = v266;
  v265[8] = v264;
  v265[4] = v62;
  sub_2680B406C();

  OUTLINED_FUNCTION_2_2();
  v268 = v357;
LABEL_150:
  sub_268093BF8(v268, v267);
  OUTLINED_FUNCTION_19(&v336);
  v274 = OUTLINED_FUNCTION_50();
LABEL_151:
  v275(v274);
LABEL_152:

LABEL_153:
  OUTLINED_FUNCTION_53();
}