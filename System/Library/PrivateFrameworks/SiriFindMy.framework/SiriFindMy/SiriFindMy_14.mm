uint64_t sub_266D46F90()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

uint64_t sub_266D47010(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_266C29DCC;

  return sub_266D46E08(a1);
}

uint64_t sub_266D470AC()
{
  type metadata accessor for EachFlow();

  return sub_266DA79FC();
}

char *sub_266D470E4(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[32 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_71(a3, result);
  }

  return result;
}

char *sub_266D47104(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[16 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_71(a3, result);
  }

  return result;
}

char *sub_266D47124(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[64 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_71(a3, result);
  }

  return result;
}

char *sub_266D47144(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[48 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_71(a3, result);
  }

  return result;
}

char *sub_266D4716C(char *__src, size_t __len, char *__dst)
{
  if (__dst != __src || &__src[__len] <= __dst)
  {
    return memmove(__dst, __src, __len);
  }

  return __src;
}

char *sub_266D47208(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[104 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_71(a3, result);
  }

  return result;
}

char *sub_266D47230(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[24 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_71(a3, result);
  }

  return result;
}

char *sub_266D47298(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[192 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_71(a3, result);
  }

  return result;
}

char *sub_266D472BC(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[160 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_71(a3, result);
  }

  return result;
}

char *sub_266D472E0(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[8 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_71(a3, result);
  }

  return result;
}

uint64_t sub_266D4732C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  OUTLINED_FUNCTION_2_58();
  if (v10 && (result = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5), v6 + *(*(result - 8) + 72) * v5 > v7))
  {
    if (v7 != v6)
    {
      v12 = OUTLINED_FUNCTION_1_53();

      return MEMORY[0x2821FE820](v12);
    }
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
    v13 = OUTLINED_FUNCTION_1_53();

    return MEMORY[0x2821FE828](v13);
  }

  return result;
}

char *sub_266D473FC(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[40 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_71(a3, result);
  }

  return result;
}

char *sub_266D47424(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[280 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_71(a3, result);
  }

  return result;
}

uint64_t sub_266D47464(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  OUTLINED_FUNCTION_2_58();
  if (v8 && (result = (a4)(0), v5 + *(*(result - 8) + 72) * v4 > v6))
  {
    if (v6 != v5)
    {
      v10 = OUTLINED_FUNCTION_1_53();

      return MEMORY[0x2821FE820](v10);
    }
  }

  else
  {
    a4(0);
    v11 = OUTLINED_FUNCTION_1_53();

    return MEMORY[0x2821FE828](v11);
  }

  return result;
}

char *sub_266D47520(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[72 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_71(a3, result);
  }

  return result;
}

uint64_t sub_266D475D4(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v1 = v3;
  if (result)
  {
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      v5 = v3 & 0xFFFFFFFFFFFFFF8;
      if (a1 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }

LABEL_10:
    sub_266DAAD5C();
    goto LABEL_11;
  }

  if (v3 < 0 || (v3 & 0x4000000000000000) != 0)
  {
    goto LABEL_10;
  }

  v5 = v3 & 0xFFFFFFFFFFFFFF8;
LABEL_9:
  v6 = *(v5 + 16);
LABEL_11:
  result = sub_266DAAE2C();
  *v1 = result;
  return result;
}

uint64_t sub_266D476D4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
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

uint64_t sub_266D4774C(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  v4 = result;
  v5 = *v2;
  result = sub_266C36780(*v2);
  if (result < a2)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (__OFSUB__(a2, v4))
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v8 = v4 - a2;
  if (__OFSUB__(0, a2 - v4))
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v9 = sub_266C3A14C(v5, v6, v7);
  v10 = __OFADD__(v9, v8);
  result = v9 + v8;
  if (v10)
  {
LABEL_13:
    __break(1u);
    return result;
  }

  sub_266D475D4(result);

  return sub_266D477F0(v4, a2, 0);
}

uint64_t sub_266D477F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v3 = a3;
  v6 = a2;
  v10 = *v4;
  v4 = (*v4 & 0xFFFFFFFFFFFFFF8);
  v7 = v4 + 4;
  v5 = &v4[a1 + 4];
  sub_266DA782C();
  result = swift_arrayDestroy();
  v12 = __OFSUB__(v3, v9);
  v9 = v3 - v9;
  if (v12)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v9)
  {
    goto LABEL_17;
  }

  v8 = v10 >> 62;
  if (!(v10 >> 62))
  {
    result = v4[2];
    goto LABEL_6;
  }

LABEL_21:
  result = sub_266DAAD5C();
LABEL_6:
  v13 = result - v6;
  if (__OFSUB__(result, v6))
  {
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v14 = (v5 + 8 * v3);
  v15 = &v7[v6];
  if (v14 != v15 || &v15[8 * v13] <= v14)
  {
    memmove(v14, v15, 8 * v13);
  }

  if (v8)
  {
    result = sub_266DAAD5C();
  }

  else
  {
    result = v4[2];
  }

  if (__OFADD__(result, v9))
  {
    goto LABEL_23;
  }

  v4[2] = result + v9;
LABEL_17:
  if (v3 > 0)
  {
LABEL_24:
    __break(1u);
  }

  return result;
}

unint64_t sub_266D478EC()
{
  result = qword_2800CB820;
  if (!qword_2800CB820)
  {
    type metadata accessor for EachFlow();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CB820);
  }

  return result;
}

void sub_266D4797C()
{
  OUTLINED_FUNCTION_6();
  v1 = v0;
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA8B8, &qword_266DB30F0);
  OUTLINED_FUNCTION_4_3(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v7);
  v9 = v157 - v8;
  v10 = sub_266DA957C();
  v11 = OUTLINED_FUNCTION_0_2(v10);
  v164 = v12;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_0_5();
  v17 = v15 - v16;
  MEMORY[0x28223BE20](v18);
  v163 = v157 - v19;
  v20 = sub_266DA8D0C();
  v21 = OUTLINED_FUNCTION_0_2(v20);
  v167 = v22;
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_0_5();
  v27 = v25 - v26;
  v29 = MEMORY[0x28223BE20](v28);
  v31 = v157 - v30;
  v32 = MEMORY[0x28223BE20](v29);
  v34 = v157 - v33;
  v35 = MEMORY[0x28223BE20](v32);
  MEMORY[0x28223BE20](v35);
  if (*v1)
  {
    v159 = v37;
    v161 = v10;
    v162 = v3;
    v165 = v20;
    v38 = v157 - v36;

    v39 = sub_266DA853C();
    v166 = v38;
    sub_266DA877C();
    sub_266DA942C();
    v40 = sub_266DA941C();
    LOBYTE(v38) = sub_266DA940C();

    if (v38)
    {

      sub_266CA1A78(v41, v1 + 2, v9);

      v42 = v161;
      if (__swift_getEnumTagSinglePayload(v9, 1, v161) == 1)
      {
        sub_266D48AFC(v9);
        v43 = v162;
        if (qword_2800C9438 != -1)
        {
          OUTLINED_FUNCTION_0_72();
        }

        v44 = sub_266DA94AC();
        OUTLINED_FUNCTION_94(v44, qword_2800CD620);
        v45 = sub_266DA948C();
        v46 = sub_266DAAB0C();
        v47 = OUTLINED_FUNCTION_12_0(v46);
        v48 = v167;
        if (v47)
        {
          *OUTLINED_FUNCTION_11() = 0;
          OUTLINED_FUNCTION_21_16();
          _os_log_impl(v49, v50, v51, v52, v53, 2u);
          OUTLINED_FUNCTION_6_1();
        }

        else
        {
        }

        v105 = v165;
        (*(v48 + 8))(v166, v165);
        v102 = v43;
        v103 = 1;
        v104 = v105;
      }

      else
      {
        v160 = v39;
        v89 = v163;
        v88 = v164;
        (*(v164 + 32))(v163, v9, v42);
        if (qword_2800C9438 != -1)
        {
          OUTLINED_FUNCTION_0_72();
        }

        v90 = sub_266DA94AC();
        OUTLINED_FUNCTION_94(v90, qword_2800CD620);
        (*(v88 + 16))(v17, v89, v42);
        v158 = v40;
        v91 = sub_266DA948C();
        v92 = sub_266DAAB0C();
        if (os_log_type_enabled(v91, v92))
        {
          OUTLINED_FUNCTION_14_0();
          v157[0] = OUTLINED_FUNCTION_11_26();
          v169 = v157[0];
          *v88 = 136315138;
          OUTLINED_FUNCTION_1_54();
          sub_266D492A4(v93, v94);
          sub_266DAB13C();
          v96 = v95;
          v97 = OUTLINED_FUNCTION_25_13(v164);
          v98(v97);
          v99 = OUTLINED_FUNCTION_9_21();
          v101 = sub_266C22A3C(v99, v96, v100);
          v89 = v163;

          *(v88 + 4) = v101;
          _os_log_impl(&dword_266C08000, v91, v92, "FindFriendNLv4IntentWrapper findFriendContactQuery resolved entity: %s", v88, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v157[0]);
          OUTLINED_FUNCTION_6_1();
          OUTLINED_FUNCTION_6_34();
        }

        else
        {

          v106 = OUTLINED_FUNCTION_25_13(v88);
          v107(v106);
        }

        v108 = v162;
        v109 = v165;
        sub_266DA956C();
        sub_266DA87BC();
        sub_266DA888C();

        v110 = v169;
        if (v169)
        {

          v111 = sub_266DA948C();
          v112 = sub_266DAAB0C();

          if (os_log_type_enabled(v111, v112))
          {
            OUTLINED_FUNCTION_14_0();
            v113 = OUTLINED_FUNCTION_11_26();
            v168 = v110;
            v169 = v113;
            *v110 = 136315138;

            v114 = sub_266DAA72C();
            v116 = v108;
            v117 = sub_266C22A3C(v114, v115, &v169);

            *(v110 + 4) = v117;
            v108 = v116;
            v109 = v165;
            OUTLINED_FUNCTION_27_12(&dword_266C08000, v118, v119, "FindFriendNLv4IntentWrapper findFriendContactQuery resolved common person entity: %s");
            __swift_destroy_boxed_opaque_existential_0(v113);
            OUTLINED_FUNCTION_6_1();
            v89 = v163;
            OUTLINED_FUNCTION_6_1();
          }

          v120 = v167;
          v121 = v159;
          sub_266DA877C();
          (*(v120 + 16))(v34, v121, v109);
          v122 = sub_266DA948C();
          v123 = v110;
          v124 = sub_266DAAB0C();
          if (os_log_type_enabled(v122, v124))
          {
            v125 = OUTLINED_FUNCTION_14_0();
            v126 = OUTLINED_FUNCTION_13_0();
            v169 = v126;
            *v125 = 136315138;
            OUTLINED_FUNCTION_2_59();
            sub_266D492A4(v127, v128);
            v157[0] = v123;
            sub_266DAB13C();
            v130 = v129;
            v158 = *(v167 + 8);
            v158(v34, v165);
            v131 = OUTLINED_FUNCTION_9_21();
            v133 = sub_266C22A3C(v131, v130, v132);
            v109 = v165;

            *(v125 + 4) = v133;
            _os_log_impl(&dword_266C08000, v122, v124, "FindFriendNLv4IntentWrapper findFriendContactQuery resolved common person contact query: %s", v125, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v126);
            v120 = v167;
            OUTLINED_FUNCTION_6_1();
            OUTLINED_FUNCTION_6_1();

            v134 = OUTLINED_FUNCTION_18_18();
            v135(v134);
            v158(v166, v109);
            v108 = v162;
          }

          else
          {

            v154 = *(v120 + 8);
            v154(v34, v109);
            (v157[1])(v89, v161);
            v154(v166, v109);
          }

          (*(v120 + 32))(v108, v159, v109);
        }

        else
        {
          v136 = v167;
          (*(v167 + 16))(v31, v166, v109);
          v137 = sub_266DA948C();
          v138 = sub_266DAAB0C();
          if (os_log_type_enabled(v137, v138))
          {
            v139 = OUTLINED_FUNCTION_14_0();
            v140 = OUTLINED_FUNCTION_13_0();
            v169 = v140;
            *v139 = 136315138;
            OUTLINED_FUNCTION_2_59();
            sub_266D492A4(v141, v142);
            sub_266DAB13C();
            v143 = v108;
            v145 = v144;
            (*(v136 + 8))(v31, v165);
            v146 = OUTLINED_FUNCTION_9_21();
            v148 = sub_266C22A3C(v146, v145, v147);
            v108 = v143;
            v109 = v165;

            *(v139 + 4) = v148;
            OUTLINED_FUNCTION_21_16();
            _os_log_impl(v149, v150, v151, v152, v153, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v140);
            OUTLINED_FUNCTION_6_34();
            OUTLINED_FUNCTION_6_1();
          }

          else
          {

            (*(v136 + 8))(v31, v109);
          }

          v155 = OUTLINED_FUNCTION_18_18();
          v156(v155);
          (*(v136 + 32))(v108, v166, v109);
        }

        v102 = v108;
        v103 = 0;
        v104 = v109;
      }
    }

    else
    {
      v160 = v39;
      if (qword_2800C9438 != -1)
      {
        OUTLINED_FUNCTION_0_72();
      }

      v67 = sub_266DA94AC();
      OUTLINED_FUNCTION_94(v67, qword_2800CD620);
      v68 = v167;
      v69 = v165;
      (*(v167 + 16))(v27, v166, v165);
      v70 = sub_266DA948C();
      v71 = sub_266DAAB0C();
      v72 = os_log_type_enabled(v70, v71);
      v73 = v162;
      if (v72)
      {
        v74 = OUTLINED_FUNCTION_14_0();
        v75 = OUTLINED_FUNCTION_13_0();
        v169 = v75;
        *v74 = 136315138;
        OUTLINED_FUNCTION_2_59();
        sub_266D492A4(v76, v77);
        sub_266DAB13C();
        v79 = v78;
        (*(v167 + 8))(v27, v69);
        v80 = OUTLINED_FUNCTION_9_21();
        v82 = sub_266C22A3C(v80, v79, v81);
        v68 = v167;

        *(v74 + 4) = v82;
        OUTLINED_FUNCTION_21_16();
        _os_log_impl(v83, v84, v85, v86, v87, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v75);
        OUTLINED_FUNCTION_6_34();
        OUTLINED_FUNCTION_6_1();
      }

      else
      {

        (*(v68 + 8))(v27, v69);
      }

      (*(v68 + 32))(v73, v166, v69);
      v102 = v73;
      v103 = 0;
      v104 = v69;
    }

    __swift_storeEnumTagSinglePayload(v102, v103, 1, v104);
    OUTLINED_FUNCTION_5();
  }

  else
  {
    if (qword_2800C9438 != -1)
    {
      OUTLINED_FUNCTION_0_72();
    }

    v54 = sub_266DA94AC();
    OUTLINED_FUNCTION_94(v54, qword_2800CD620);
    v55 = sub_266DA948C();
    v56 = sub_266DAAB0C();
    if (OUTLINED_FUNCTION_12_0(v56))
    {
      *OUTLINED_FUNCTION_11() = 0;
      OUTLINED_FUNCTION_21_16();
      _os_log_impl(v57, v58, v59, v60, v61, 2u);
      OUTLINED_FUNCTION_6_1();
    }

    OUTLINED_FUNCTION_5();

    __swift_storeEnumTagSinglePayload(v62, v63, v64, v65);
  }
}

uint64_t sub_266D485AC()
{
  v0 = sub_266DA94AC();
  __swift_allocate_value_buffer(v0, qword_2800CD620);
  v1 = __swift_project_value_buffer(v0, qword_2800CD620);
  if (qword_28156F870 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, &unk_28156FCA8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void sub_266D48674()
{
  OUTLINED_FUNCTION_6();
  v2 = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA8B8, &qword_266DB30F0);
  OUTLINED_FUNCTION_4_3(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v6);
  v7 = OUTLINED_FUNCTION_26_11();
  v8 = OUTLINED_FUNCTION_0_2(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_0_5();
  MEMORY[0x28223BE20](v13);
  v14 = *v0;
  if (v14)
  {
    v14 = sub_266DA853C();
  }

  sub_266CA1A78(v14, v2 + 2, v1);

  OUTLINED_FUNCTION_4_13(v1);
  if (v15)
  {
    sub_266D48AFC(v1);
    if (qword_2800C9438 != -1)
    {
      OUTLINED_FUNCTION_0_72();
    }

    v16 = sub_266DA94AC();
    OUTLINED_FUNCTION_94(v16, qword_2800CD620);
    v17 = sub_266DA948C();
    v18 = sub_266DAAB0C();
    if (OUTLINED_FUNCTION_12_0(v18))
    {
      *OUTLINED_FUNCTION_11() = 0;
      OUTLINED_FUNCTION_7_0(&dword_266C08000, v19, v20, "FindFriendNLv4IntentWrapper findFriendContactId unable to obtain resolved entity");
      OUTLINED_FUNCTION_6_1();
    }
  }

  else
  {
    v21 = OUTLINED_FUNCTION_22_15(v10);
    v22(v21);
    if (qword_2800C9438 != -1)
    {
      OUTLINED_FUNCTION_0_72();
    }

    v23 = sub_266DA94AC();
    __swift_project_value_buffer(v23, qword_2800CD620);
    v24 = OUTLINED_FUNCTION_23_17(v10);
    v25(v24);
    v26 = sub_266DA948C();
    v27 = sub_266DAAB0C();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = OUTLINED_FUNCTION_14_0();
      v60 = v10;
      v29 = OUTLINED_FUNCTION_13_0();
      v61 = v29;
      *v28 = 136315138;
      OUTLINED_FUNCTION_1_54();
      sub_266D492A4(v30, v31);
      sub_266DAB13C();
      v33 = v32;
      v34 = *(v60 + 8);
      v35 = OUTLINED_FUNCTION_26_8();
      v36(v35);
      v37 = OUTLINED_FUNCTION_9_21();
      v39 = sub_266C22A3C(v37, v33, v38);

      *(v28 + 4) = v39;
      _os_log_impl(&dword_266C08000, v26, v27, "FindFriendNLv4IntentWrapper findFriendContactId resolved entity: %s", v28, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v29);
      OUTLINED_FUNCTION_6_1();
      OUTLINED_FUNCTION_6_1();
    }

    else
    {

      v40 = *(v10 + 8);
      v41 = OUTLINED_FUNCTION_26_8();
      v42(v41);
    }

    v43 = sub_266D4E468();
    v44 = sub_266DA948C();
    v45 = sub_266DAAB0C();

    if (os_log_type_enabled(v44, v45))
    {
      OUTLINED_FUNCTION_14_0();
      v46 = OUTLINED_FUNCTION_11_26();
      v61 = v46;
      *v26 = 136315138;
      v47 = v43;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA8B0, &unk_266DB1FA0);
      v48 = sub_266DAA72C();
      v50 = sub_266C22A3C(v48, v49, &v61);

      *(v26 + 4) = v50;
      OUTLINED_FUNCTION_27_12(&dword_266C08000, v51, v52, "FindFriendNLv4IntentWrapper findFriendContactId inPerson: %s");
      __swift_destroy_boxed_opaque_existential_0(v46);
      OUTLINED_FUNCTION_6_1();
      OUTLINED_FUNCTION_6_34();
    }

    v53 = sub_266D4E468();
    v54 = v53;
    if (v53 && (v55 = [v53 contactIdentifier], v54, v55))
    {
      sub_266DAA70C();

      v56 = OUTLINED_FUNCTION_5_39();
      v57(v56);
    }

    else
    {
      v58 = OUTLINED_FUNCTION_5_39();
      v59(v58);
    }
  }

  OUTLINED_FUNCTION_5();
}

uint64_t sub_266D48AFC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA8B8, &qword_266DB30F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_266D48B64()
{
  OUTLINED_FUNCTION_6();
  v2 = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA8B8, &qword_266DB30F0);
  OUTLINED_FUNCTION_4_3(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v6);
  v7 = OUTLINED_FUNCTION_26_11();
  v8 = OUTLINED_FUNCTION_0_2(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_0_5();
  MEMORY[0x28223BE20](v13);
  v15 = v45 - v14;
  v16 = *(v0 + 8);
  if (v16)
  {
    if (sub_266DA890C())
    {
      v16 = sub_266DA853C();
    }

    else
    {
      v16 = 0;
    }
  }

  sub_266CA1A78(v16, (v2 + 16), v1);

  OUTLINED_FUNCTION_4_13(v1);
  if (v17)
  {
    sub_266D48AFC(v1);
    if (qword_2800C9438 != -1)
    {
      OUTLINED_FUNCTION_0_72();
    }

    v18 = sub_266DA94AC();
    OUTLINED_FUNCTION_94(v18, qword_2800CD620);
    v19 = sub_266DA948C();
    v20 = sub_266DAAB0C();
    if (OUTLINED_FUNCTION_12_0(v20))
    {
      *OUTLINED_FUNCTION_11() = 0;
      OUTLINED_FUNCTION_7_0(&dword_266C08000, v21, v22, "FindFriendNLv4IntentWrapper enableNotificationContactId unable to obtain resolved entity");
      OUTLINED_FUNCTION_6_1();
    }
  }

  else
  {
    v23 = OUTLINED_FUNCTION_22_15(v10);
    v24(v23);
    if (qword_2800C9438 != -1)
    {
      OUTLINED_FUNCTION_0_72();
    }

    v25 = sub_266DA94AC();
    OUTLINED_FUNCTION_94(v25, qword_2800CD620);
    v26 = OUTLINED_FUNCTION_23_17(v10);
    v27(v26);
    v28 = sub_266DA948C();
    v29 = sub_266DAAB0C();
    v30 = os_log_type_enabled(v28, v29);
    v45[0] = v10;
    if (v30)
    {
      OUTLINED_FUNCTION_14_0();
      v31 = OUTLINED_FUNCTION_11_26();
      v45[1] = v31;
      *v2 = 136315138;
      OUTLINED_FUNCTION_1_54();
      sub_266D492A4(v32, v33);
      sub_266DAB13C();
      v35 = v34;
      v36 = *(v10 + 8);
      v37 = OUTLINED_FUNCTION_26_8();
      v36(v37);
      v38 = OUTLINED_FUNCTION_9_21();
      v40 = sub_266C22A3C(v38, v35, v39);

      *(v2 + 4) = v40;
      _os_log_impl(&dword_266C08000, v28, v29, "FindFriendNLv4IntentWrapper enableNotificationContactId resolved entity: %s", v2, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v31);
      OUTLINED_FUNCTION_6_1();
      OUTLINED_FUNCTION_6_34();
    }

    else
    {

      v36 = *(v10 + 8);
      v41 = OUTLINED_FUNCTION_26_8();
      v36(v41);
    }

    v42 = sub_266D4E468();
    v43 = v42;
    if (v42)
    {
      v44 = [v42 contactIdentifier];

      if (v44)
      {
        sub_266DAA70C();
      }
    }

    (v36)(v15, v7);
  }

  OUTLINED_FUNCTION_5();
}

void sub_266D48F10()
{
  OUTLINED_FUNCTION_6();
  v2 = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA8B8, &qword_266DB30F0);
  OUTLINED_FUNCTION_4_3(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v6);
  v8 = &v42 - v7;
  v9 = sub_266DA957C();
  v10 = OUTLINED_FUNCTION_0_2(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_0_5();
  v17 = v15 - v16;
  MEMORY[0x28223BE20](v18);
  v20 = &v42 - v19;
  v21 = *(v0 + 8);
  if (v21)
  {
    v21 = sub_266DA88FC();
    if (v21)
    {
      v22 = sub_266DA87AC();

      if (v22)
      {
        v21 = sub_266DA853C();
      }

      else
      {
        v21 = 0;
      }
    }
  }

  sub_266CA1A78(v21, (v2 + 16), v8);

  OUTLINED_FUNCTION_4_13(v8);
  if (v23)
  {
    sub_266D48AFC(v8);
    if (qword_2800C9438 != -1)
    {
      OUTLINED_FUNCTION_0_72();
    }

    v24 = sub_266DA94AC();
    OUTLINED_FUNCTION_94(v24, qword_2800CD620);
    v25 = sub_266DA948C();
    v26 = sub_266DAAB0C();
    if (OUTLINED_FUNCTION_12_0(v26))
    {
      *OUTLINED_FUNCTION_11() = 0;
      OUTLINED_FUNCTION_7_0(&dword_266C08000, v27, v28, "FindFriendNLv4IntentWrapper enableNotificationLocationId unable to obtain resolved entity");
      OUTLINED_FUNCTION_6_1();
    }
  }

  else
  {
    (*(v12 + 32))(v20, v8, v9);
    if (qword_2800C9438 != -1)
    {
      OUTLINED_FUNCTION_0_72();
    }

    v29 = sub_266DA94AC();
    OUTLINED_FUNCTION_94(v29, qword_2800CD620);
    (*(v12 + 16))(v17, v20, v9);
    v30 = sub_266DA948C();
    v31 = sub_266DAAB0C();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = OUTLINED_FUNCTION_14_0();
      v43 = OUTLINED_FUNCTION_13_0();
      v45 = v43;
      *v32 = 136315138;
      OUTLINED_FUNCTION_1_54();
      sub_266D492A4(v33, v34);
      sub_266DAB13C();
      v44 = v20;
      v36 = v35;
      v37 = OUTLINED_FUNCTION_14_28();
      v1(v37);
      v38 = OUTLINED_FUNCTION_9_21();
      v40 = sub_266C22A3C(v38, v36, v39);
      v20 = v44;

      *(v32 + 4) = v40;
      _os_log_impl(&dword_266C08000, v30, v31, "FindFriendNLv4IntentWrapper enableNotificationLocationId resolved entity: %s", v32, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v43);
      OUTLINED_FUNCTION_6_1();
      OUTLINED_FUNCTION_6_1();
    }

    else
    {

      v41 = OUTLINED_FUNCTION_14_28();
      v1(v41);
    }

    sub_266DA954C();
    (v1)(v20, v9);
  }

  OUTLINED_FUNCTION_5();
}

uint64_t sub_266D492A4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_266D492EC(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 56))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 40);
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

uint64_t sub_266D4932C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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
      *(result + 40) = (a2 - 1);
      return result;
    }

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_0_72()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_5_39()
{
  result = v0;
  v3 = *(v1 - 104);
  return result;
}

void OUTLINED_FUNCTION_6_34()
{

  JUMPOUT(0x26D5F2480);
}

uint64_t OUTLINED_FUNCTION_11_26()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_18_18()
{
  result = *(v0 - 136);
  v2 = *(v0 - 128) + 8;
  v3 = *(v0 - 152);
  v4 = *(v0 - 184);
  return result;
}

uint64_t OUTLINED_FUNCTION_25_13@<X0>(uint64_t a1@<X8>)
{
  result = v1;
  *(v2 - 184) = *(a1 + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_26_11()
{

  return sub_266DA957C();
}

void OUTLINED_FUNCTION_27_12(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t sub_266D494F4()
{
  v1 = sub_266DA81AC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v17[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = __swift_project_boxed_opaque_existential_1((v0 + 136), *(v0 + 160));
  sub_266DA816C();
  v7 = sub_266C5DE2C(v5, *v6);
  (*(v2 + 8))(v5, v1);
  if (qword_2800C93D8 != -1)
  {
    OUTLINED_FUNCTION_1_11();
  }

  v8 = sub_266DA94AC();
  __swift_project_value_buffer(v8, qword_2800E6498);
  v9 = sub_266DA948C();
  v10 = sub_266DAAB0C();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v18 = v12;
    *v11 = 136315138;
    v17[7] = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CD650, &qword_266DBB728);
    v13 = sub_266DAA72C();
    v15 = sub_266C22A3C(v13, v14, &v18);

    *(v11 + 4) = v15;
    _os_log_impl(&dword_266C08000, v9, v10, "FindDevice.ConfirmIntentStrategy parsed task as %s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v12);
    MEMORY[0x26D5F2480](v12, -1, -1);
    OUTLINED_FUNCTION_33_6();
  }

  if (v7 < 2u)
  {
    return sub_266DA7CBC();
  }

  if (v7 == 2)
  {
    return sub_266DA7CAC();
  }

  return sub_266DA7CCC();
}

uint64_t sub_266D4972C()
{
  OUTLINED_FUNCTION_22_0();
  v1[4] = v2;
  v1[5] = v0;
  v1[2] = v3;
  v1[3] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CB458, &unk_266DB4F10);
  OUTLINED_FUNCTION_4_3(v5);
  v7 = *(v6 + 64);
  v1[6] = OUTLINED_FUNCTION_62();
  v8 = sub_266DA81AC();
  v1[7] = v8;
  OUTLINED_FUNCTION_11_3(v8);
  v1[8] = v9;
  v11 = *(v10 + 64);
  v1[9] = OUTLINED_FUNCTION_62();
  v12 = OUTLINED_FUNCTION_14_3();

  return MEMORY[0x2822009F8](v12, v13, v14);
}

uint64_t sub_266D49800()
{
  if (qword_2800C93D8 != -1)
  {
    OUTLINED_FUNCTION_1_11();
  }

  v2 = sub_266DA94AC();
  v3 = __swift_project_value_buffer(v2, qword_2800E6498);
  v4 = sub_266DA948C();
  v5 = sub_266DAAB0C();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_40_4(v6);
    _os_log_impl(&dword_266C08000, v4, v5, "FindDevice.ConfirmIntentStrategy parsing confirmation response", v1, 2u);
    OUTLINED_FUNCTION_33_6();
  }

  v8 = v0[8];
  v7 = v0[9];
  v9 = v0[7];
  v10 = v0[4];
  v11 = v0[5];
  v12 = v0[3];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9B90, &qword_266DBB6E0);
  v13 = sub_266DA7FCC();
  v14 = __swift_project_boxed_opaque_existential_1((v11 + 136), *(v11 + 160));
  sub_266DA816C();
  v15 = sub_266C5DE2C(v7, *v14);
  (*(v8 + 8))(v7, v9);
  v16 = sub_266DA948C();
  if (v15 != 3)
  {
    if (v15)
    {
      v29 = sub_266DAAB0C();
      v30 = OUTLINED_FUNCTION_95(v29);
      v19 = MEMORY[0x277D5BED0];
      if (v30)
      {
        v20 = "FindDevice.ConfirmIntentStrategy user did NOT confirm task, returning ConfirmIntentAnswer with rejected confirmation response";
        goto LABEL_14;
      }
    }

    else
    {
      v17 = sub_266DAAB0C();
      v18 = OUTLINED_FUNCTION_95(v17);
      v19 = MEMORY[0x277D5BED8];
      if (v18)
      {
        v20 = "FindDevice.ConfirmIntentStrategy user confirmed task, returning ConfirmIntentAnswer with confirmed confirmation response";
LABEL_14:
        v31 = OUTLINED_FUNCTION_11();
        *v31 = 0;
        _os_log_impl(&dword_266C08000, v16, v3, v20, v31, 2u);
        MEMORY[0x26D5F2480](v31, -1, -1);
      }
    }

    v32 = v0[9];
    v33 = v0[6];
    v34 = v0[2];

    v35 = *v19;
    v36 = sub_266DA7F5C();
    OUTLINED_FUNCTION_9_3(v36);
    (*(v37 + 104))(v33, v35, v36);
    OUTLINED_FUNCTION_50_5(v33);
    type metadata accessor for FindDeviceAndPlaySoundIntent();
    sub_266DA7F1C();

    OUTLINED_FUNCTION_15_4();
    goto LABEL_16;
  }

  v21 = sub_266DAAAEC();
  if (OUTLINED_FUNCTION_95(v21))
  {
    v22 = OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_40_4(v22);
    OUTLINED_FUNCTION_45_0(&dword_266C08000, v23, v24, "FindDevice.ConfirmIntentStrategy unable to make task from parse");
    OUTLINED_FUNCTION_33_6();
  }

  v25 = v0[9];
  v26 = v0[6];

  sub_266C488FC();
  swift_allocError();
  *v27 = 1;
  swift_willThrow();

  OUTLINED_FUNCTION_28();
LABEL_16:

  return v28();
}

uint64_t sub_266D49B10()
{
  OUTLINED_FUNCTION_22_0();
  v1[23] = v2;
  v1[24] = v0;
  v1[22] = v3;
  v4 = type metadata accessor for Snippets();
  v1[25] = v4;
  OUTLINED_FUNCTION_4_3(v4);
  v6 = *(v5 + 64);
  v1[26] = OUTLINED_FUNCTION_64();
  v1[27] = swift_task_alloc();
  v1[28] = swift_task_alloc();
  v1[29] = swift_task_alloc();
  v7 = sub_266DA80AC();
  v1[30] = v7;
  OUTLINED_FUNCTION_11_3(v7);
  v1[31] = v8;
  v10 = *(v9 + 64);
  v1[32] = OUTLINED_FUNCTION_62();
  v11 = sub_266DA7C0C();
  v1[33] = v11;
  OUTLINED_FUNCTION_11_3(v11);
  v1[34] = v12;
  v14 = *(v13 + 64);
  v1[35] = OUTLINED_FUNCTION_64();
  v1[36] = swift_task_alloc();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA040, &unk_266DB0070);
  OUTLINED_FUNCTION_4_3(v15);
  v17 = *(v16 + 64);
  v1[37] = OUTLINED_FUNCTION_62();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA048, &unk_266DAFC00);
  OUTLINED_FUNCTION_4_3(v18);
  v20 = *(v19 + 64);
  v1[38] = OUTLINED_FUNCTION_62();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA050, &qword_266DB0080);
  OUTLINED_FUNCTION_11_3(v21);
  v1[39] = v22;
  v1[40] = *(v23 + 64);
  v1[41] = OUTLINED_FUNCTION_64();
  v1[42] = swift_task_alloc();
  v1[43] = swift_task_alloc();
  v1[44] = swift_task_alloc();
  v1[45] = swift_task_alloc();
  v1[46] = swift_task_alloc();
  v1[47] = swift_task_alloc();
  v1[48] = swift_task_alloc();
  v24 = OUTLINED_FUNCTION_14_3();

  return MEMORY[0x2822009F8](v24, v25, v26);
}

uint64_t sub_266D49D60()
{
  OUTLINED_FUNCTION_84();
  if (qword_2800C93D8 != -1)
  {
    OUTLINED_FUNCTION_1_11();
  }

  v1 = sub_266DA94AC();
  __swift_project_value_buffer(v1, qword_2800E6498);
  v2 = sub_266DA948C();
  v3 = sub_266DAAB0C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = OUTLINED_FUNCTION_11();
    *v4 = 0;
    _os_log_impl(&dword_266C08000, v2, v3, "FindDevice.ConfirmIntentStrategy.makeFlowCancelledResponse() called", v4, 2u);
    MEMORY[0x26D5F2480](v4, -1, -1);
  }

  v5 = *(v0 + 384);
  v7 = *(v0 + 192);
  v6 = *(v0 + 200);
  v8 = *(v0 + 184);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9B90, &qword_266DBB6E0);
  v9 = sub_266DA7FCC();
  *(v0 + 392) = v9;
  *(v0 + 400) = *(v7 + 88);
  v10 = OUTLINED_FUNCTION_55();
  __swift_storeEnumTagSinglePayload(v10, v11, 1, v6);
  v12 = sub_266D14B44(v9);
  v15 = v12;
  if (v12)
  {
    if (sub_266C3A14C(v12, v13, v14))
    {
      v16 = OUTLINED_FUNCTION_63();
      sub_266CB9F54(v16, v17, v15);
      if ((v15 & 0xC000000000000001) != 0)
      {
        v18 = MEMORY[0x26D5F1780](0, v15);
      }

      else
      {
        v18 = *(v15 + 32);
      }

      v19 = v18;

      v20 = sub_266C1CEB4(v19);
      v22 = v21;
      LOBYTE(v15) = sub_266CC7C44();

      goto LABEL_12;
    }

    LOBYTE(v15) = 0;
  }

  v20 = 0;
  v22 = 0;
LABEL_12:
  v23 = *(v0 + 376);
  v25 = *(v0 + 192);
  v24 = *(v0 + 200);
  *v23 = 4;
  *(v23 + 8) = v20;
  *(v23 + 16) = v22;
  *(v23 + 24) = v15 & 1;
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_50_5(v23);
  *(v0 + 488) = 1;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA058, &unk_266DB30D0);
  v27 = *(v26 + 48);
  v28 = *(v26 + 52);
  swift_allocObject();
  *(v0 + 408) = sub_266DA93CC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC460, &unk_266DAFC20);
  v29 = swift_allocObject();
  *(v0 + 416) = v29;
  *(v29 + 16) = xmmword_266DAE3B0;
  v30 = *(v25 + 80);
  *(v0 + 489) = 1;
  v31 = sub_266CAA15C();
  swift_task_alloc();
  OUTLINED_FUNCTION_24_1();
  *(v0 + 424) = v32;
  *v32 = v33;
  v32[1] = sub_266D4A028;

  return sub_266D945C8((v0 + 489), v31 & 1);
}

uint64_t sub_266D4A028()
{
  OUTLINED_FUNCTION_34();
  v3 = v2;
  OUTLINED_FUNCTION_23_0();
  v5 = v4;
  OUTLINED_FUNCTION_10_3();
  *v6 = v5;
  v8 = *(v7 + 424);
  v9 = *v1;
  OUTLINED_FUNCTION_9_2();
  *v10 = v9;
  v5[54] = v0;

  if (v0)
  {
    v11 = v5[48];
    sub_266C47654(v5[47], &qword_2800CA050, &qword_266DB0080);
    v12 = OUTLINED_FUNCTION_32();
    sub_266C47654(v12, v13, &qword_266DB0080);
    v14 = sub_266D1C708;
  }

  else
  {
    v5[55] = v3;
    v14 = sub_266D4A160;
  }

  return MEMORY[0x2822009F8](v14, 0, 0);
}

uint64_t sub_266D4A6A4()
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_23_0();
  v2 = v1;
  OUTLINED_FUNCTION_10_3();
  *v3 = v2;
  v5 = *(v4 + 456);
  v6 = *(v4 + 416);
  v7 = *v0;
  OUTLINED_FUNCTION_9_2();
  *v8 = v7;

  __swift_destroy_boxed_opaque_existential_0((v2 + 136));
  __swift_destroy_boxed_opaque_existential_0((v2 + 96));
  v9 = OUTLINED_FUNCTION_14_3();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_266D4A7AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_73_1();
  v27 = *(v23 + 224);
  v26 = *(v23 + 232);

  sub_266C477B4(v27);
  sub_266C477B4(v26);
  v28 = OUTLINED_FUNCTION_6_28();
  v29(v28);
  v30 = OUTLINED_FUNCTION_18_3();
  v31(v30);
  OUTLINED_FUNCTION_17_5();
  OUTLINED_FUNCTION_37();
  sub_266C47654(v24, &qword_2800CA040, &unk_266DB0070);
  sub_266C47654(v25, &qword_2800CA048, &unk_266DAFC00);

  OUTLINED_FUNCTION_15_4();
  OUTLINED_FUNCTION_25_0();

  return v33(v32, v33, v34, v35, v36, v37, v38, v39, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22);
}

uint64_t sub_266D4A91C()
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_23_0();
  v2 = v1;
  OUTLINED_FUNCTION_10_3();
  *v3 = v2;
  v5 = *(v4 + 464);
  v6 = *(v4 + 416);
  v7 = *v0;
  OUTLINED_FUNCTION_9_2();
  *v8 = v7;

  __swift_destroy_boxed_opaque_existential_0((v2 + 56));
  v9 = OUTLINED_FUNCTION_14_3();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_266D4AA1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_73_1();
  v26 = *(v23 + 216);

  sub_266C477B4(v26);
  v27 = OUTLINED_FUNCTION_6_28();
  v28(v27);
  v29 = OUTLINED_FUNCTION_18_3();
  v30(v29);
  OUTLINED_FUNCTION_17_5();
  OUTLINED_FUNCTION_37();
  sub_266C47654(v24, &qword_2800CA040, &unk_266DB0070);
  sub_266C47654(v25, &qword_2800CA048, &unk_266DAFC00);

  OUTLINED_FUNCTION_15_4();
  OUTLINED_FUNCTION_25_0();

  return v32(v31, v32, v33, v34, v35, v36, v37, v38, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22);
}

uint64_t sub_266D4AB84()
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_23_0();
  v2 = v1;
  OUTLINED_FUNCTION_10_3();
  *v3 = v2;
  v5 = *(v4 + 472);
  v6 = *(v4 + 416);
  v7 = *v0;
  OUTLINED_FUNCTION_9_2();
  *v8 = v7;

  __swift_destroy_boxed_opaque_existential_0((v2 + 16));
  v9 = OUTLINED_FUNCTION_14_3();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_266D4AC84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_73_1();
  v26 = *(v23 + 208);

  sub_266C477B4(v26);
  v27 = OUTLINED_FUNCTION_6_28();
  v28(v27);
  v29 = OUTLINED_FUNCTION_18_3();
  v30(v29);
  OUTLINED_FUNCTION_17_5();
  OUTLINED_FUNCTION_37();
  sub_266C47654(v24, &qword_2800CA040, &unk_266DB0070);
  sub_266C47654(v25, &qword_2800CA048, &unk_266DAFC00);

  OUTLINED_FUNCTION_15_4();
  OUTLINED_FUNCTION_25_0();

  return v32(v31, v32, v33, v34, v35, v36, v37, v38, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22);
}

uint64_t sub_266D4ADEC()
{
  OUTLINED_FUNCTION_22_0();
  v1[283] = v0;
  v1[282] = v2;
  v1[281] = v3;
  v4 = type metadata accessor for Snippets();
  v1[284] = v4;
  OUTLINED_FUNCTION_4_3(v4);
  v6 = *(v5 + 64);
  v1[285] = OUTLINED_FUNCTION_64();
  v1[286] = swift_task_alloc();
  v1[287] = swift_task_alloc();
  v1[288] = swift_task_alloc();
  v7 = sub_266DA80AC();
  v1[289] = v7;
  OUTLINED_FUNCTION_11_3(v7);
  v1[290] = v8;
  v10 = *(v9 + 64);
  v1[291] = OUTLINED_FUNCTION_62();
  v11 = sub_266DA7C0C();
  v1[292] = v11;
  OUTLINED_FUNCTION_11_3(v11);
  v1[293] = v12;
  v14 = *(v13 + 64);
  v1[294] = OUTLINED_FUNCTION_64();
  v1[295] = swift_task_alloc();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA040, &unk_266DB0070);
  OUTLINED_FUNCTION_4_3(v15);
  v17 = *(v16 + 64);
  v1[296] = OUTLINED_FUNCTION_62();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA048, &unk_266DAFC00);
  OUTLINED_FUNCTION_4_3(v18);
  v20 = *(v19 + 64);
  v1[297] = OUTLINED_FUNCTION_62();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA050, &qword_266DB0080);
  OUTLINED_FUNCTION_11_3(v21);
  v1[298] = v22;
  v1[299] = *(v23 + 64);
  v1[300] = OUTLINED_FUNCTION_64();
  v1[301] = swift_task_alloc();
  v1[302] = swift_task_alloc();
  v1[303] = swift_task_alloc();
  v1[304] = swift_task_alloc();
  v1[305] = swift_task_alloc();
  v1[306] = swift_task_alloc();
  v1[307] = swift_task_alloc();
  v24 = sub_266DA74AC();
  v1[308] = v24;
  OUTLINED_FUNCTION_11_3(v24);
  v1[309] = v25;
  v27 = *(v26 + 64);
  v1[310] = OUTLINED_FUNCTION_62();
  v28 = OUTLINED_FUNCTION_14_3();

  return MEMORY[0x2822009F8](v28, v29, v30);
}

uint64_t sub_266D4B08C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_36();
  if (qword_2800C93D8 != -1)
  {
    OUTLINED_FUNCTION_1_11();
  }

  v24 = sub_266DA94AC();
  __swift_project_value_buffer(v24, qword_2800E6498);
  v25 = sub_266DA948C();
  v26 = sub_266DAAB0C();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_40_4(v27);
    _os_log_impl(&dword_266C08000, v25, v26, "FindDevice.ConfirmIntentStrategy.makePromptForConfirmation() called", v23, 2u);
    OUTLINED_FUNCTION_33_6();
  }

  v28 = v22[282];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9B90, &qword_266DBB6E0);
  v29 = sub_266DA7FCC();
  v22[311] = v29;
  v30 = sub_266D14B44(v29);
  if (v30)
  {
    v33 = v30;
    if (sub_266C3A14C(v30, v31, v32))
    {
      v34 = OUTLINED_FUNCTION_63();
      sub_266CB9F54(v34, v35, v33);
      if ((v33 & 0xC000000000000001) != 0)
      {
        v36 = MEMORY[0x26D5F1780](0, v33);
      }

      else
      {
        v36 = *(v33 + 32);
      }

      v37 = v36;
      v22[312] = v36;

      v38 = sub_266D14B44(v29);
      if (v38)
      {
        v41 = sub_266C3A14C(v38, v39, v40);

        if (v41 == 1)
        {
          v42 = v22[283];
          sub_266C26ACC(v42, (v22 + 167));
          v43 = swift_allocObject();
          v22[313] = v43;
          memcpy((v43 + 16), v22 + 167, 0xB0uLL);
          *(v43 + 192) = v37;
          v44 = v37;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA088, &qword_266DAFC60);
          swift_asyncLet_begin();
          sub_266C26ACC(v42, (v22 + 189));
          v45 = swift_allocObject();
          v22[314] = v45;
          memcpy((v45 + 16), v22 + 189, 0xB0uLL);
          *(v45 + 192) = v44;
          v46 = v44;
          sub_266CA8EC8();
          swift_asyncLet_begin();
          v47 = v46;
          OUTLINED_FUNCTION_25_0();

          return MEMORY[0x282200928](v48);
        }
      }
    }

    else
    {
    }
  }

  v50 = sub_266DA948C();
  v51 = sub_266DAAAEC();
  if (OUTLINED_FUNCTION_95(v51))
  {
    v52 = OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_40_4(v52);
    OUTLINED_FUNCTION_45_0(&dword_266C08000, v53, v54, "SiriFindMy does not support pinging multiple devices. Devices parameter expected to have exactly one device.");
    OUTLINED_FUNCTION_33_6();
  }

  sub_266C488FC();
  v77 = swift_allocError();
  *v55 = 6;
  swift_willThrow();

  OUTLINED_FUNCTION_34_7();
  v56 = v22[302];
  v57 = v22[301];
  v58 = v22[300];
  v59 = v22[297];
  v69 = v22[296];
  v70 = v22[295];
  v71 = v22[294];
  v72 = v22[291];
  v73 = v22[288];
  v74 = v22[287];
  v75 = v22[286];
  v76 = v22[285];

  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_25_0();

  return v61(v60, v61, v62, v63, v64, v65, v66, v67, a9, v69, v70, v71, v72, v73, v74, v75, v76, v77, a19, a20, a21, a22);
}

uint64_t sub_266D4B4BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v15 = (v14 + 2584);
  v16 = *(v14 + 2224);
  v17 = *(v14 + 2232);
  v18 = *(v14 + 2496);
  v50 = v17;
  sub_266C2BA84(v16, v17);
  v19 = sub_266C22F3C(v18);
  if (v20)
  {
    v21 = v19;
  }

  else
  {
    v21 = 0;
  }

  if (v20)
  {
    v22 = v20;
  }

  else
  {
    v22 = 0xE000000000000000;
  }

  v49 = sub_266CAB3DC(v18);
  v24 = v23;
  v25 = sub_266CC7C44();

  sub_266C2BAF0(0, 0xF000000000000000);
  v26 = HIBYTE(v22) & 0xF;
  if ((v22 & 0x2000000000000000) == 0)
  {
    v26 = v21 & 0xFFFFFFFFFFFFLL;
  }

  v27 = *(v14 + 2496);
  if (v26)
  {

    v28 = v21;
    v29 = v22;
  }

  else
  {
    v48 = v16;
    v30 = *(v14 + 2480);
    v31 = *(v14 + 2472);
    v47 = *(v14 + 2464);

    sub_266DA749C();
    v28 = sub_266DA747C();
    v29 = v32;

    v33 = v30;
    v15 = (v14 + 2584);
    (*(v31 + 8))(v33, v47);
    v16 = v48;
  }

  v34 = v25 & 1;
  v35 = *(v14 + 2456);
  v36 = 0xE000000000000000;
  if (v24)
  {
    v36 = v24;
  }

  v37 = v49;
  if (!v24)
  {
    v37 = 0;
  }

  v38 = *(v14 + 2448);
  v39 = *(v14 + 2272);
  v40 = *(v14 + 2264);
  *(v14 + 1688) = v21;
  *(v14 + 1696) = v22;
  *(v14 + 1704) = v37;
  *(v14 + 1712) = v36;
  *(v14 + 1720) = v34;
  *(v14 + 1721) = *v15;
  *(v14 + 1724) = *(v15 + 3);
  *(v14 + 1728) = v16;
  *(v14 + 1736) = v50;
  *(v14 + 1744) = v28;
  *(v14 + 1752) = v29;
  *(v14 + 1760) = 1701736302;
  *(v14 + 1768) = 0xE400000000000000;
  *(v14 + 2520) = *(v40 + 88);
  memcpy(v35, (v14 + 1688), 0x58uLL);
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_50_5(v35);
  __swift_storeEnumTagSinglePayload(v38, 1, 1, v39);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC460, &unk_266DAFC20);
  v41 = swift_allocObject();
  *(v14 + 2528) = v41;
  *(v41 + 16) = xmmword_266DAE3B0;
  sub_266C2AAC4(v14 + 1688, v14 + 1816);

  return MEMORY[0x282200930](v14 + 656, v14 + 2240, sub_266D4B720, v14 + 1776, v42, v43, v44, v45, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_266D4B720()
{
  OUTLINED_FUNCTION_34();
  v1[317] = v0;
  if (v0)
  {
    v2 = v1[307];
    sub_266C47654(v1[306], &qword_2800CA050, &qword_266DB0080);
    v3 = OUTLINED_FUNCTION_32();
    sub_266C47654(v3, v4, &qword_266DB0080);
    v5 = sub_266D4C65C;
  }

  else
  {
    v5 = sub_266D4B7CC;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_266D4BD2C()
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_23_0();
  v2 = v1;
  OUTLINED_FUNCTION_10_3();
  *v3 = v2;
  v5 = *(v4 + 2552);
  v6 = *(v4 + 2528);
  v7 = *v0;
  OUTLINED_FUNCTION_9_2();
  *v8 = v7;

  __swift_destroy_boxed_opaque_existential_0((v2 + 2184));
  __swift_destroy_boxed_opaque_existential_0((v2 + 2104));
  v9 = OUTLINED_FUNCTION_14_3();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_266D4BE34()
{
  OUTLINED_FUNCTION_61_3();
  OUTLINED_FUNCTION_84();
  v3 = v1[318];
  v4 = v1[288];
  v5 = v1[287];

  sub_266C477B4(v5);
  sub_266C477B4(v4);
  v6 = OUTLINED_FUNCTION_3_49();
  v7(v6);
  v8 = OUTLINED_FUNCTION_6_14();
  v9(v8);
  OUTLINED_FUNCTION_18_6();
  OUTLINED_FUNCTION_19_5();
  sub_266C47654(v2, &qword_2800CA040, &unk_266DB0070);
  sub_266C47654(v0, &qword_2800CA048, &unk_266DAFC00);
  sub_266C2AB6C((v1 + 211));
  OUTLINED_FUNCTION_2_60();
  OUTLINED_FUNCTION_82_2();

  return MEMORY[0x282200920](v10, v11, v12, v13);
}

uint64_t sub_266D4BF5C()
{
  v1 = *(v0 + 2512);
  v2 = *(v0 + 2504);
  v3 = *(v0 + 2488);
  v4 = *(v0 + 2480);
  v5 = *(v0 + 2456);
  v6 = *(v0 + 2448);
  v7 = *(v0 + 2440);
  v8 = *(v0 + 2432);
  v9 = *(v0 + 2424);
  v12 = *(v0 + 2416);
  v13 = *(v0 + 2408);
  v14 = *(v0 + 2400);
  v15 = *(v0 + 2376);
  v16 = *(v0 + 2368);
  v17 = *(v0 + 2360);
  v18 = *(v0 + 2352);
  v19 = *(v0 + 2328);
  v20 = *(v0 + 2304);
  v21 = *(v0 + 2296);
  v22 = *(v0 + 2288);
  v23 = *(v0 + 2280);

  OUTLINED_FUNCTION_15_4();

  return v10();
}

uint64_t sub_266D4C0EC()
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_23_0();
  v2 = v1;
  OUTLINED_FUNCTION_10_3();
  *v3 = v2;
  v5 = *(v4 + 2560);
  v6 = *(v4 + 2528);
  v7 = *v0;
  OUTLINED_FUNCTION_9_2();
  *v8 = v7;

  __swift_destroy_boxed_opaque_existential_0((v2 + 2024));
  v9 = OUTLINED_FUNCTION_14_3();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_266D4C1EC()
{
  OUTLINED_FUNCTION_61_3();
  OUTLINED_FUNCTION_84();
  v3 = *(v1 + 2544);
  v4 = *(v1 + 2288);

  sub_266C477B4(v4);
  v5 = OUTLINED_FUNCTION_3_49();
  v6(v5);
  v7 = OUTLINED_FUNCTION_6_14();
  v8(v7);
  OUTLINED_FUNCTION_18_6();
  OUTLINED_FUNCTION_19_5();
  sub_266C47654(v2, &qword_2800CA040, &unk_266DB0070);
  sub_266C47654(v0, &qword_2800CA048, &unk_266DAFC00);
  sub_266C2AB6C(v1 + 1688);
  OUTLINED_FUNCTION_2_60();
  OUTLINED_FUNCTION_82_2();

  return MEMORY[0x282200920](v9, v10, v11, v12);
}

uint64_t sub_266D4C2C0()
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_23_0();
  v2 = v1;
  OUTLINED_FUNCTION_10_3();
  *v3 = v2;
  v5 = *(v4 + 2568);
  v6 = *(v4 + 2528);
  v7 = *v0;
  OUTLINED_FUNCTION_9_2();
  *v8 = v7;

  __swift_destroy_boxed_opaque_existential_0((v2 + 1944));
  v9 = OUTLINED_FUNCTION_14_3();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_266D4C3C0()
{
  OUTLINED_FUNCTION_61_3();
  OUTLINED_FUNCTION_84();
  v3 = *(v1 + 2544);
  v4 = *(v1 + 2280);

  sub_266C477B4(v4);
  v5 = OUTLINED_FUNCTION_3_49();
  v6(v5);
  v7 = OUTLINED_FUNCTION_6_14();
  v8(v7);
  OUTLINED_FUNCTION_18_6();
  OUTLINED_FUNCTION_19_5();
  sub_266C47654(v2, &qword_2800CA040, &unk_266DB0070);
  sub_266C47654(v0, &qword_2800CA048, &unk_266DAFC00);
  sub_266C2AB6C(v1 + 1688);
  OUTLINED_FUNCTION_2_60();
  OUTLINED_FUNCTION_82_2();

  return MEMORY[0x282200920](v9, v10, v11, v12);
}

uint64_t sub_266D4C494()
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_23_0();
  v2 = *(v1 + 2576);
  v3 = *(v1 + 2528);
  v4 = *v0;
  OUTLINED_FUNCTION_9_2();
  *v5 = v4;

  v6 = OUTLINED_FUNCTION_14_3();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_266D4C594()
{
  OUTLINED_FUNCTION_61_3();
  OUTLINED_FUNCTION_84();
  v3 = *(v1 + 2544);

  v4 = OUTLINED_FUNCTION_3_49();
  v5(v4);
  v6 = OUTLINED_FUNCTION_6_14();
  v7(v6);
  OUTLINED_FUNCTION_18_6();
  OUTLINED_FUNCTION_19_5();
  sub_266C47654(v2, &qword_2800CA040, &unk_266DB0070);
  sub_266C47654(v0, &qword_2800CA048, &unk_266DAFC00);
  sub_266C2AB6C(v1 + 1688);
  OUTLINED_FUNCTION_2_60();
  OUTLINED_FUNCTION_82_2();

  return MEMORY[0x282200920](v8, v9, v10, v11);
}

uint64_t sub_266D4C65C()
{
  OUTLINED_FUNCTION_22_0();
  v1 = *(v0 + 2528);
  sub_266C2AB6C(v0 + 1688);
  *(v1 + 16) = 0;

  return MEMORY[0x282200920](v0 + 656, v0 + 2240, sub_266D4C6D4, v0 + 1904);
}

uint64_t sub_266D4C71C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_46();
  v21 = *(v20 + 2512);
  v22 = *(v20 + 2504);
  v23 = *(v20 + 2488);

  v45 = *(v20 + 2536);
  OUTLINED_FUNCTION_34_7();
  v24 = *(v20 + 2416);
  v25 = *(v20 + 2408);
  v26 = *(v20 + 2400);
  v27 = *(v20 + 2376);
  v37 = *(v20 + 2368);
  v38 = *(v20 + 2360);
  v39 = *(v20 + 2352);
  v40 = *(v20 + 2328);
  v41 = *(v20 + 2304);
  v42 = *(v20 + 2296);
  v43 = *(v20 + 2288);
  v44 = *(v20 + 2280);

  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_39();

  return v29(v28, v29, v30, v31, v32, v33, v34, v35, v37, v38, v39, v40, v41, v42, v43, v44, v45, a18, a19, a20);
}

uint64_t sub_266D4C87C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_266D4C8A0, 0, 0);
}

uint64_t sub_266D4C8A0()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v1[15];
  v4 = v1[16];
  __swift_project_boxed_opaque_existential_1(v1 + 12, v3);
  v5 = *(v4 + 8);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  v0[5] = v7;
  *v7 = v0;
  v7[1] = sub_266D4C9D8;

  return v9(v2, v3, v4);
}

uint64_t sub_266D4C9D8()
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_23_0();
  v2 = v1;
  v3 = *(v1 + 40);
  v10 = *v0;
  *(v2 + 48) = v4;
  *(v2 + 56) = v5;

  v6 = OUTLINED_FUNCTION_14_3();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_266D4CAD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_266D4CAFC, 0, 0);
}

uint64_t sub_266D4CAFC()
{
  OUTLINED_FUNCTION_22_0();
  v1 = v0[3];
  v2 = v0[4];
  v3 = *(v1 + 80);
  v4 = sub_266CC7CC0((v1 + 40));
  v0[5] = v4;
  v5 = swift_task_alloc();
  v0[6] = v5;
  *v5 = v0;
  v5[1] = sub_266D4CBA4;

  return sub_266D43DD4(v4);
}

uint64_t sub_266D4CBA4()
{
  OUTLINED_FUNCTION_34();
  v3 = v2;
  OUTLINED_FUNCTION_23_0();
  v5 = v4;
  OUTLINED_FUNCTION_10_3();
  *v6 = v5;
  v8 = *(v7 + 48);
  v9 = *v1;
  OUTLINED_FUNCTION_9_2();
  *v10 = v9;
  v5[7] = v0;

  if (v0)
  {
    v11 = sub_266D4CCCC;
  }

  else
  {
    v12 = v5[5];

    v5[8] = v3;
    v11 = sub_266D4CCBC;
  }

  return MEMORY[0x2822009F8](v11, 0, 0);
}

uint64_t sub_266D4CCCC()
{
  OUTLINED_FUNCTION_22_0();
  v1 = *(v0 + 40);

  OUTLINED_FUNCTION_28();
  v3 = *(v0 + 56);

  return v2();
}

uint64_t sub_266D4CD2C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_266C48BB4;

  return sub_266D4972C();
}

uint64_t sub_266D4CDDC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_266C48BB4;

  return sub_266D4ADEC();
}

uint64_t sub_266D4CE84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(MEMORY[0x277D5B440] + 4);
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_266C48BB4;

  return MEMORY[0x2821B9D18](a1, a2, a3, a4);
}

uint64_t sub_266D4CF48()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_266C48BB4;

  return sub_266D49B10();
}

uint64_t sub_266D4CFF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(MEMORY[0x277D5B3F8] + 4);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_266C48BB4;

  return MEMORY[0x2821B9CD8](a1, a2, a3);
}

uint64_t sub_266D4D0A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(MEMORY[0x277D5B6C8] + 4);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_266C4716C;

  return MEMORY[0x2821BA0B8](a1, a2, a3);
}

unint64_t sub_266D4D15C(void *a1)
{
  a1[1] = sub_266C26A78();
  a1[2] = sub_266D4D194();
  result = sub_266D4D1E8();
  a1[3] = result;
  return result;
}

unint64_t sub_266D4D194()
{
  result = qword_2800CD640;
  if (!qword_2800CD640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CD640);
  }

  return result;
}

unint64_t sub_266D4D1E8()
{
  result = qword_2800CD648;
  if (!qword_2800CD648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CD648);
  }

  return result;
}

uint64_t sub_266D4D23C()
{
  OUTLINED_FUNCTION_34();
  v2 = *(v0 + 192);
  swift_task_alloc();
  OUTLINED_FUNCTION_24_1();
  *(v1 + 16) = v3;
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_45_7(v3);

  return sub_266D4C87C(v5, v6, v7);
}

uint64_t objectdestroy_20Tm()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  __swift_destroy_boxed_opaque_existential_0((v0 + 56));
  v1 = *(v0 + 96);

  v2 = *(v0 + 104);

  __swift_destroy_boxed_opaque_existential_0((v0 + 112));
  __swift_destroy_boxed_opaque_existential_0((v0 + 152));

  return MEMORY[0x2821FE8E8](v0, 200, 7);
}

uint64_t sub_266D4D338()
{
  OUTLINED_FUNCTION_34();
  v2 = *(v0 + 192);
  swift_task_alloc();
  OUTLINED_FUNCTION_24_1();
  *(v1 + 16) = v3;
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_45_7(v3);

  return sub_266D4CAD8(v5, v6, v7);
}

uint64_t objectdestroyTm_11()
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA050, &qword_266DB0080);
  OUTLINED_FUNCTION_11_3(v4);
  v6 = *(v5 + 80);
  v8 = *(v7 + 64);
  v9 = (v6 + 24) & ~v6;
  v10 = (v8 + v6 + v9) & ~v6;
  v11 = *(v0 + 16);

  v12 = (v0 + v9);
  v13 = type metadata accessor for Snippets();
  v14 = OUTLINED_FUNCTION_55();
  if (!__swift_getEnumTagSinglePayload(v14, v15, v13))
  {
    switch(swift_getEnumCaseMultiPayload())
    {
      case 0u:
        v35 = v12[1];

        v36 = v12[3];

        v37 = type metadata accessor for Snippets.Contact();
        v38 = OUTLINED_FUNCTION_98(v37);
        OUTLINED_FUNCTION_8_0(v38);
        (*(v39 + 8))(&v2[v12]);
        v34 = v1[7];
        goto LABEL_35;
      case 1u:
      case 2u:
      case 3u:
        v16 = *v12;
        goto LABEL_36;
      case 4u:
        v21 = v12[1];

        v22 = v12[3];

        v23 = v12[5];

        v24 = v12[6];

        v12 = (v12 + *(type metadata accessor for Friend() + 40));
        v1 = type metadata accessor for FriendLocation();
        v25 = OUTLINED_FUNCTION_55();
        if (__swift_getEnumTagSinglePayload(v25, v26, v1))
        {
          break;
        }

        v27 = v12[1];

        v28 = v1[8];
LABEL_23:
        v73 = v12 + v28;
        v1 = type metadata accessor for Location();
        v74 = OUTLINED_FUNCTION_55();
        if (!__swift_getEnumTagSinglePayload(v74, v75, v1))
        {
          v76 = v1[7];
          v77 = sub_266DA746C();
          OUTLINED_FUNCTION_8_0(v77);
          (*(v78 + 8))(&v73[v76]);
          OUTLINED_FUNCTION_48(v1[8]);

          v2 = &v73[v1[11]];
          v79 = type metadata accessor for Address();
          v80 = OUTLINED_FUNCTION_109();
          if (!__swift_getEnumTagSinglePayload(v80, v81, v79))
          {
            sub_266DA919C();
            v82 = OUTLINED_FUNCTION_109();
            v242 = v83;
            EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v82, v84, v83);
            if (!EnumTagSinglePayload)
            {
              OUTLINED_FUNCTION_20_2(EnumTagSinglePayload, v86, v87, v88, v89, v90, v91, v92, v239, v242);
              (*(v93 + 8))(v2);
            }

            OUTLINED_FUNCTION_70(v79[5]);
            OUTLINED_FUNCTION_70(v79[6]);
            v94 = OUTLINED_FUNCTION_70(v79[7]);
            v102 = OUTLINED_FUNCTION_115(v94, v95, v96, v97, v98, v99, v100, v101, v239, v242);
            if (!v102)
            {
              OUTLINED_FUNCTION_20_2(v102, v103, v104, v105, v106, v107, v108, v109, v239, v243);
              (*(v110 + 8))(v3 + v2);
            }

            OUTLINED_FUNCTION_70(v79[9]);
            OUTLINED_FUNCTION_70(v79[10]);
            OUTLINED_FUNCTION_70(v79[11]);
            v111 = *&v2[v79[12]];
          }

          v34 = v1[12];
LABEL_35:
          OUTLINED_FUNCTION_48(v34);
LABEL_36:
        }

        break;
      case 5u:
        v48 = v12[1];

        v49 = v12[3];

        v50 = v12[5];

        v51 = v12[6];

        v52 = v12 + *(type metadata accessor for Friend() + 40);
        v53 = type metadata accessor for FriendLocation();
        if (!OUTLINED_FUNCTION_66(v53))
        {
          v54 = *(v52 + 1);

          v55 = &v52[*(v2 + 8)];
          v56 = type metadata accessor for Location();
          if (!OUTLINED_FUNCTION_66(v56))
          {
            v57 = *(v2 + 7);
            v58 = sub_266DA746C();
            OUTLINED_FUNCTION_8_0(v58);
            (*(v59 + 8))(&v55[v57]);
            OUTLINED_FUNCTION_21_0(*(v2 + 8));
            v60 = &v55[*(v2 + 11)];
            v3 = type metadata accessor for Address();
            if (!__swift_getEnumTagSinglePayload(v60, 1, v3))
            {
              v241 = sub_266DA919C();
              v61 = __swift_getEnumTagSinglePayload(v60, 1, v241);
              if (!v61)
              {
                OUTLINED_FUNCTION_20_2(v61, v62, v63, v64, v65, v66, v67, v68, v239, v241);
                (*(v69 + 8))(v60);
              }

              OUTLINED_FUNCTION_89(v3[5]);
              OUTLINED_FUNCTION_89(v3[6]);
              OUTLINED_FUNCTION_89(v3[7]);
              v239 = v3[8];
              if (!__swift_getEnumTagSinglePayload(v60 + v239, 1, v241))
              {
                OUTLINED_FUNCTION_9_3(v241);
                (*(v70 + 8))(v60 + v71);
              }

              OUTLINED_FUNCTION_89(v3[9]);
              OUTLINED_FUNCTION_89(v3[10]);
              OUTLINED_FUNCTION_89(v3[11]);
              v72 = *(v60 + v3[12]);
            }

            OUTLINED_FUNCTION_21_0(*(v2 + 12));
          }
        }

        v28 = *(type metadata accessor for Snippets.CarPlayFriendLocation() + 20);
        goto LABEL_23;
      case 6u:
        v112 = v12[1];

        v113 = v12[3];

        OUTLINED_FUNCTION_52();
        if (!(!v44 & v43))
        {
          sub_266C2BB04(v12[5], v114);
        }

        v115 = v12[8];

        v116 = v12[10];
        goto LABEL_36;
      case 7u:
        v40 = v12[1];

        v41 = v12[3];

        OUTLINED_FUNCTION_52();
        if (!(!v44 & v43))
        {
          sub_266C2BB04(v12[5], v42);
        }

        v45 = v12[8];

        v46 = v12[10];

        v47 = v12[12];
        goto LABEL_36;
      case 8u:
        if ((v12[2] - 1) < 7)
        {
          break;
        }

        goto LABEL_36;
      case 9u:
        v29 = v12[1];

        v30 = v12[3];

        v31 = type metadata accessor for Snippets.Contact();
        v32 = OUTLINED_FUNCTION_98(v31);
        OUTLINED_FUNCTION_8_0(v32);
        (*(v33 + 8))(&v2[v12]);
        OUTLINED_FUNCTION_48(v1[7]);

        v1 = type metadata accessor for Snippets.SetGeoFenceConfirmation();
        OUTLINED_FUNCTION_48(v1[5]);

        v34 = v1[6];
        goto LABEL_35;
      case 0xAu:
        v117 = v12[1];

        v118 = v12[3];

        v119 = type metadata accessor for Snippets.Contact();
        v120 = OUTLINED_FUNCTION_98(v119);
        OUTLINED_FUNCTION_8_0(v120);
        (*(v121 + 8))(&v2[v12]);
        OUTLINED_FUNCTION_48(v1[7]);

        v1 = type metadata accessor for Snippets.SetGeoFenceResult();
        OUTLINED_FUNCTION_48(v1[7]);

        v34 = v1[8];
        goto LABEL_35;
      case 0xBu:
        v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA060, &unk_266DB1040);
        OUTLINED_FUNCTION_8_0(v17);
        (*(v18 + 8))(v12);
        v1 = type metadata accessor for Snippets.SetSharedLocationVisibilityResult();
        v2 = v1[5];
        v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA068, &qword_266DAFC30);
        OUTLINED_FUNCTION_8_0(v19);
        (*(v20 + 8))(&v2[v12]);
        if (*(v12 + v1[6] + 16) == 1)
        {
          break;
        }

        goto LABEL_36;
      default:
        break;
    }
  }

  v122 = (v0 + v10);
  v123 = OUTLINED_FUNCTION_55();
  if (!__swift_getEnumTagSinglePayload(v123, v124, v13))
  {
    switch(swift_getEnumCaseMultiPayload())
    {
      case 0u:
        v149 = *(v122 + 1);

        v150 = *(v122 + 3);

        v151 = type metadata accessor for Snippets.Contact();
        v152 = OUTLINED_FUNCTION_96(v151);
        OUTLINED_FUNCTION_8_0(v152);
        (*(v153 + 8))(v1 + v122);
        v148 = *(v13 + 28);
        goto LABEL_71;
      case 1u:
      case 2u:
      case 3u:
        v125 = *v122;
        goto LABEL_73;
      case 4u:
        v132 = *(v122 + 1);

        v133 = *(v122 + 3);

        v134 = *(v122 + 5);

        v135 = *(v122 + 6);

        v136 = &v122[*(type metadata accessor for Friend() + 40)];
        v137 = type metadata accessor for FriendLocation();
        v138 = OUTLINED_FUNCTION_31();
        if (__swift_getEnumTagSinglePayload(v138, v139, v137))
        {
          break;
        }

        v140 = *(v136 + 1);

        v141 = &v136[*(v137 + 32)];
LABEL_59:
        v211 = type metadata accessor for Location();
        v212 = OUTLINED_FUNCTION_31();
        if (__swift_getEnumTagSinglePayload(v212, v213, v211))
        {
          break;
        }

        v214 = v211[7];
        v215 = sub_266DA746C();
        OUTLINED_FUNCTION_8_0(v215);
        (*(v216 + 8))(&v141[v214]);
        v217 = *&v141[v211[8] + 8];

        v218 = &v141[v211[11]];
        v219 = type metadata accessor for Address();
        if (!OUTLINED_FUNCTION_66(v219))
        {
          v220 = sub_266DA919C();
          if (!__swift_getEnumTagSinglePayload(v218, 1, v220))
          {
            OUTLINED_FUNCTION_9_3(v220);
            (*(v221 + 8))(v218, v220);
          }

          OUTLINED_FUNCTION_21_0(*(v2 + 5));
          OUTLINED_FUNCTION_21_0(*(v2 + 6));
          OUTLINED_FUNCTION_21_0(*(v2 + 7));
          v222 = *(v2 + 8);
          if (!__swift_getEnumTagSinglePayload(v218 + v222, 1, v220))
          {
            OUTLINED_FUNCTION_9_3(v220);
            (*(v223 + 8))(v218 + v222, v220);
          }

          OUTLINED_FUNCTION_21_0(*(v2 + 9));
          OUTLINED_FUNCTION_21_0(*(v2 + 10));
          OUTLINED_FUNCTION_21_0(*(v2 + 11));
          v224 = *(v218 + *(v2 + 12));
        }

        v225 = &v141[v211[12]];
LABEL_72:
        v237 = *(v225 + 1);
LABEL_73:

        break;
      case 5u:
        v160 = *(v122 + 1);

        v161 = *(v122 + 3);

        v162 = *(v122 + 5);

        v163 = *(v122 + 6);

        v164 = &v122[*(type metadata accessor for Friend() + 40)];
        v165 = type metadata accessor for FriendLocation();
        v166 = OUTLINED_FUNCTION_31();
        if (!__swift_getEnumTagSinglePayload(v166, v167, v165))
        {
          v168 = *(v164 + 1);

          v169 = &v164[*(v165 + 32)];
          v170 = type metadata accessor for Location();
          v171 = OUTLINED_FUNCTION_31();
          if (!__swift_getEnumTagSinglePayload(v171, v172, v170))
          {
            v173 = v170[7];
            v174 = sub_266DA746C();
            OUTLINED_FUNCTION_8_0(v174);
            (*(v175 + 8))(&v169[v173]);
            v176 = *&v169[v170[8] + 8];

            v2 = &v169[v170[11]];
            v177 = type metadata accessor for Address();
            v178 = OUTLINED_FUNCTION_109();
            if (!__swift_getEnumTagSinglePayload(v178, v179, v177))
            {
              sub_266DA919C();
              v180 = OUTLINED_FUNCTION_109();
              v244 = v181;
              v183 = __swift_getEnumTagSinglePayload(v180, v182, v181);
              if (!v183)
              {
                OUTLINED_FUNCTION_20_2(v183, v184, v185, v186, v187, v188, v189, v190, v239, v244);
                (*(v191 + 8))(v2);
              }

              OUTLINED_FUNCTION_70(v177[5]);
              OUTLINED_FUNCTION_70(v177[6]);
              v192 = OUTLINED_FUNCTION_70(v177[7]);
              v200 = OUTLINED_FUNCTION_115(v192, v193, v194, v195, v196, v197, v198, v199, v239, v244);
              if (!v200)
              {
                OUTLINED_FUNCTION_20_2(v200, v201, v202, v203, v204, v205, v206, v207, v240, v245);
                (*(v208 + 8))(v3 + v2);
              }

              OUTLINED_FUNCTION_70(v177[9]);
              OUTLINED_FUNCTION_70(v177[10]);
              OUTLINED_FUNCTION_70(v177[11]);
              v209 = *&v2[v177[12]];
            }

            v210 = *&v169[v170[12] + 8];
          }
        }

        v141 = &v122[*(type metadata accessor for Snippets.CarPlayFriendLocation() + 20)];
        goto LABEL_59;
      case 6u:
        v226 = *(v122 + 1);

        v227 = *(v122 + 3);

        OUTLINED_FUNCTION_52();
        if (!(!v44 & v43))
        {
          sub_266C2BB04(*(v122 + 5), v228);
        }

        v229 = *(v122 + 8);

        v230 = *(v122 + 10);
        goto LABEL_73;
      case 7u:
        v154 = *(v122 + 1);

        v155 = *(v122 + 3);

        OUTLINED_FUNCTION_52();
        if (!(!v44 & v43))
        {
          sub_266C2BB04(*(v122 + 5), v156);
        }

        v157 = *(v122 + 8);

        v158 = *(v122 + 10);

        v159 = *(v122 + 12);
        goto LABEL_73;
      case 8u:
        if ((*(v122 + 2) - 1) < 7)
        {
          break;
        }

        goto LABEL_73;
      case 9u:
        v142 = *(v122 + 1);

        v143 = *(v122 + 3);

        v144 = type metadata accessor for Snippets.Contact();
        v145 = OUTLINED_FUNCTION_96(v144);
        OUTLINED_FUNCTION_8_0(v145);
        (*(v146 + 8))(v1 + v122);
        OUTLINED_FUNCTION_48(*(v13 + 28));

        v147 = type metadata accessor for Snippets.SetGeoFenceConfirmation();
        OUTLINED_FUNCTION_48(*(v147 + 20));

        v148 = *(v147 + 24);
        goto LABEL_71;
      case 0xAu:
        v231 = *(v122 + 1);

        v232 = *(v122 + 3);

        v233 = type metadata accessor for Snippets.Contact();
        v234 = OUTLINED_FUNCTION_96(v233);
        OUTLINED_FUNCTION_8_0(v234);
        (*(v235 + 8))(v1 + v122);
        OUTLINED_FUNCTION_48(*(v13 + 28));

        v236 = type metadata accessor for Snippets.SetGeoFenceResult();
        OUTLINED_FUNCTION_48(*(v236 + 28));

        v148 = *(v236 + 32);
LABEL_71:
        v225 = &v122[v148];
        goto LABEL_72;
      case 0xBu:
        v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA060, &unk_266DB1040);
        OUTLINED_FUNCTION_8_0(v126);
        (*(v127 + 8))(v0 + v10);
        v128 = type metadata accessor for Snippets.SetSharedLocationVisibilityResult();
        v129 = *(v128 + 20);
        v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA068, &qword_266DAFC30);
        OUTLINED_FUNCTION_8_0(v130);
        (*(v131 + 8))(&v122[v129]);
        if (*&v122[*(v128 + 24) + 16] == 1)
        {
          break;
        }

        goto LABEL_73;
      default:
        break;
    }
  }

  return MEMORY[0x2821FE8E8](v0, v10 + v8, v6 | 7);
}

uint64_t OUTLINED_FUNCTION_3_49()
{
  v1 = v0[307];
  v2 = v0[306];
  v3 = v0[297];
  v4 = v0[296];
  v5 = v0[295];
  v6 = v0[293];
  v7 = v0[292];
  result = v0[291];
  v9 = v0[289];
  v10 = *(v0[290] + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_34_7()
{
  result = v0[310];
  v2 = v0[307];
  v3 = v0[306];
  v4 = v0[305];
  v5 = v0[304];
  v6 = v0[303];
  return result;
}

uint64_t OUTLINED_FUNCTION_44_7(uint64_t a1)
{
  *(a1 + 8) = v1;
  v3 = v2[316];
  v4 = v2[315];
  v5 = v2[291];
  return v2[281];
}

uint64_t OUTLINED_FUNCTION_50_5(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(a1, 0, 1, v1);
}

uint64_t sub_266D4E120@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CAE10, &qword_266DB30E8);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v25 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA8B8, &qword_266DB30F0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = v25 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9F70, &qword_266DAF970);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = v25 - v15;
  sub_266DA8E0C();
  v17 = sub_266DA8E1C();
  (*(v13 + 8))(v16, v12);
  v25[0] = a1;
  v17(&v26, v25);

  v25[0] = sub_266C39CB4(a1);
  v25[1] = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9BE0, &qword_266DAE760);
  sub_266DAA72C();

  sub_266DA853C();

  v19 = sub_266DA94FC();
  __swift_storeEnumTagSinglePayload(v7, 1, 1, v19);
  sub_266C9A2C4();
  sub_266DA952C();

  v20 = sub_266DA957C();
  __swift_storeEnumTagSinglePayload(v11, 0, 1, v20);
  if (__swift_getEnumTagSinglePayload(v11, 1, v20))
  {
    sub_266C3A088(v11, &qword_2800CA8B8, &qword_266DB30F0);
    v21 = sub_266DA957C();
    v22 = a2;
    v23 = 1;
  }

  else
  {
    (*(*(v20 - 8) + 32))(a2, v11, v20);
    v22 = a2;
    v23 = 0;
    v21 = v20;
  }

  return __swift_storeEnumTagSinglePayload(v22, v23, 1, v21);
}

uint64_t sub_266D4E5EC()
{
  v0 = sub_266DA94AC();
  __swift_allocate_value_buffer(v0, qword_2800CD658);
  v1 = __swift_project_value_buffer(v0, qword_2800CD658);
  if (qword_28156F870 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, &unk_28156FCA8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void sub_266D4E6B4()
{
  v0 = sub_266DAA6FC();
  AceObjectSetBoolForProperty();
}

void sub_266D4E724(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4(a2);
}

id sub_266D4E790(char a1)
{
  v14 = sub_266DAAB7C();
  v1 = *(v14 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_0_6();
  v5 = v4 - v3;
  v6 = sub_266DAAB6C();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_0_6();
  v8 = sub_266DA9FDC();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  OUTLINED_FUNCTION_0_6();
  v10 = [objc_allocWithZone(MEMORY[0x277D54C68]) init];
  sub_266C29814(0, &qword_28156EFC0, 0x277D85C78);
  v11 = v10;
  sub_266DA9FBC();
  sub_266C3601C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC440, &qword_266DAF890);
  sub_266C5D904();
  sub_266DAAD0C();
  (*(v1 + 104))(v5, *MEMORY[0x277D85260], v14);
  v12 = sub_266DAABBC();
  [v11 setDiscoveryFlags_];
  [v11 setRssiThreshold_];
  [v11 setChangeFlags_];
  [v11 setScanRate_];
  [v11 setOverrideScreenOff_];
  [v11 setDispatchQueue_];

  return v11;
}

uint64_t sub_266D4EA50()
{
  v0 = sub_266DA94AC();
  __swift_allocate_value_buffer(v0, qword_28156F268);
  v1 = __swift_project_value_buffer(v0, qword_28156F268);
  if (qword_2800C90F0 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, &unk_28156FC80);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void sub_266D4EB18()
{
  OUTLINED_FUNCTION_16_18();
  v3 = v0;
  v4 = sub_266D4EF18();
  i = MEMORY[0x277D84FA0];
  if (!v5)
  {
    goto LABEL_29;
  }

  v1 = v4;
  v7 = v5;
  OUTLINED_FUNCTION_29_4();
  MEMORY[0x26D5F1C20](1);
  sub_266DAA7BC();
  sub_266DAB2DC();
  OUTLINED_FUNCTION_11_27();
  v2 = v9 & ~v8;
  if ((*(i + ((v2 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v2))
  {
    v10 = ~v8;
    v11 = i[6];
    do
    {
      v12 = v11 + 24 * v2;
      if (!*(v12 + 16))
      {
        v13 = *v12 == v1 && *(v12 + 8) == v7;
        if (v13 || (sub_266DAB17C() & 1) != 0)
        {

          i = MEMORY[0x277D84FA0];
          goto LABEL_29;
        }
      }

      v2 = (v2 + 1) & v10;
    }

    while (((*(i + ((v2 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v2) & 1) != 0);
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v53 = i;
  v15 = i[2];
  if (i[3] <= v15)
  {
    if (isUniquelyReferenced_nonNull_native)
    {
      v16 = OUTLINED_FUNCTION_25_14(v15);
      sub_266D4FF88(v16);
    }

    else
    {
      v17 = OUTLINED_FUNCTION_25_14(v15);
      sub_266D507C8(v17);
    }

    OUTLINED_FUNCTION_29_4();
    MEMORY[0x26D5F1C20](1);
    sub_266DAA7BC();
    sub_266DAB2DC();
    OUTLINED_FUNCTION_11_27();
    v2 = v19 & ~v18;
    if (((*(i + ((v2 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v2) & 1) == 0)
    {
      goto LABEL_27;
    }

    v20 = ~v18;
    v21 = i[6];
    while (1)
    {
      v22 = v21 + 24 * v2;
      if (!*(v22 + 16))
      {
        v23 = *v22 == v1 && *(v22 + 8) == v7;
        if (v23 || (sub_266DAB17C() & 1) != 0)
        {
          goto LABEL_61;
        }
      }

      v2 = (v2 + 1) & v20;
      if (((*(i + ((v2 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v2) & 1) == 0)
      {
        goto LABEL_27;
      }
    }
  }

  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_60;
  }

  for (i = MEMORY[0x277D84FA0]; ; i = v53)
  {
LABEL_27:
    *(i + ((v2 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) |= 1 << v2;
    v24 = i[6] + 24 * v2;
    *v24 = v1;
    *(v24 + 8) = v7;
    *(v24 + 16) = 0;
    v25 = i[2];
    v26 = __OFADD__(v25, 1);
    v27 = v25 + 1;
    if (v26)
    {
      __break(1u);
      goto LABEL_59;
    }

    i[2] = v27;
LABEL_29:
    v28 = sub_266D50990(v3);
    if (!v29)
    {
      goto LABEL_57;
    }

    v7 = v28;
    v3 = v29;
    OUTLINED_FUNCTION_29_4();
    MEMORY[0x26D5F1C20](2);
    sub_266DAA7BC();
    sub_266DAB2DC();
    OUTLINED_FUNCTION_11_27();
    OUTLINED_FUNCTION_20_14(v30, v31);
    if (v33)
    {
      v2 = ~v32;
      v34 = i[6];
      while (1)
      {
        v35 = v34 + 24 * v1;
        if (*(v35 + 16) == 1)
        {
          v36 = *v35 == v7 && *(v35 + 8) == v3;
          if (v36 || (sub_266DAB17C() & 1) != 0)
          {
            break;
          }
        }

        OUTLINED_FUNCTION_18_19();
        if ((v37 & 1) == 0)
        {
          goto LABEL_39;
        }
      }

      goto LABEL_57;
    }

LABEL_39:
    v38 = swift_isUniquelyReferenced_nonNull_native();
    v53 = i;
    v39 = i[2];
    if (i[3] > v39)
    {
      if ((v38 & 1) == 0)
      {
        sub_266D503C8();
      }

      goto LABEL_55;
    }

    if (v38)
    {
      v40 = OUTLINED_FUNCTION_25_14(v39);
      sub_266D4FF88(v40);
    }

    else
    {
      v41 = OUTLINED_FUNCTION_25_14(v39);
      sub_266D507C8(v41);
    }

    OUTLINED_FUNCTION_29_4();
    MEMORY[0x26D5F1C20](2);
    sub_266DAA7BC();
    sub_266DAB2DC();
    OUTLINED_FUNCTION_11_27();
    OUTLINED_FUNCTION_20_14(v42, v43);
    if (v45)
    {
      break;
    }

LABEL_55:
    *(i + ((v1 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) |= 1 << v1;
    v50 = i[6] + 24 * v1;
    *v50 = v7;
    *(v50 + 8) = v3;
    *(v50 + 16) = 1;
    v51 = i[2];
    v26 = __OFADD__(v51, 1);
    v52 = v51 + 1;
    if (!v26)
    {
      i[2] = v52;
LABEL_57:
      OUTLINED_FUNCTION_17_23();
      return;
    }

LABEL_59:
    __break(1u);
LABEL_60:
    sub_266D503C8();
  }

  v2 = ~v44;
  v46 = i[6];
  while (1)
  {
    v47 = v46 + 24 * v1;
    if (*(v47 + 16) == 1)
    {
      v48 = *v47 == v7 && *(v47 + 8) == v3;
      if (v48 || (sub_266DAB17C() & 1) != 0)
      {
        break;
      }
    }

    OUTLINED_FUNCTION_18_19();
    if ((v49 & 1) == 0)
    {
      goto LABEL_55;
    }
  }

LABEL_61:
  sub_266DAB1EC();
  __break(1u);
}

uint64_t sub_266D4EF18()
{
  v1 = [v0 bleDevice];
  if (!v1)
  {
    return 0;
  }

  v2 = sub_266D50920(v1);
  if (v3 >> 60 == 15)
  {
    return 0;
  }

  v5 = v2;
  v6 = v3;
  v7 = sub_266DA739C();
  sub_266C2BAF0(v5, v6);
  v8 = [v7 fm_MACAddressString];
  v4 = sub_266DAA70C();

  return v4;
}

void sub_266D4EFEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6, char a7)
{
  v13 = swift_allocObject();
  *(v13 + 16) = a5;
  *(v13 + 24) = a6;
  v14 = a7 & 1;
  *(v13 + 32) = a7 & 1;
  v36 = sub_266D50A9C;
  v37 = v13;
  aBlock = MEMORY[0x277D85DD0];
  v33 = 1107296256;
  v34 = sub_266C73FC4;
  v35 = &block_descriptor_4;
  v15 = _Block_copy(&aBlock);
  v16 = a5;
  v17 = a6;

  [v16 setInterruptionHandler_];
  _Block_release(v15);
  OUTLINED_FUNCTION_1_51();
  v18 = swift_allocObject();
  *(v18 + 16) = v16;
  *(v18 + 24) = v17;
  *(v18 + 32) = v14;
  v19 = a3;
  *(v18 + 40) = a3;
  *(v18 + 48) = a4;
  v36 = sub_266D50AC0;
  v37 = v18;
  aBlock = MEMORY[0x277D85DD0];
  v33 = 1107296256;
  v34 = sub_266C73FC4;
  v35 = &block_descriptor_6_0;
  v20 = _Block_copy(&aBlock);
  v21 = v16;
  v22 = v17;

  [v21 setInvalidationHandler_];
  _Block_release(v20);
  OUTLINED_FUNCTION_1_51();
  v23 = swift_allocObject();
  *(v23 + 16) = v21;
  *(v23 + 24) = v22;
  *(v23 + 32) = v14;
  *(v23 + 40) = a1;
  *(v23 + 48) = a2;
  v36 = sub_266D50AD0;
  v37 = v23;
  aBlock = MEMORY[0x277D85DD0];
  v33 = 1107296256;
  v34 = sub_266C5D6BC;
  v35 = &block_descriptor_12;
  v24 = _Block_copy(&aBlock);
  v25 = v21;
  v26 = v22;

  [v25 setDeviceFoundHandler_];
  _Block_release(v24);
  OUTLINED_FUNCTION_1_51();
  v27 = swift_allocObject();
  *(v27 + 16) = v25;
  *(v27 + 24) = v26;
  *(v27 + 32) = v14;
  *(v27 + 40) = v19;
  *(v27 + 48) = a4;
  v36 = sub_266D50B2C;
  v37 = v27;
  aBlock = MEMORY[0x277D85DD0];
  v33 = 1107296256;
  v34 = sub_266D4E724;
  v35 = &block_descriptor_18;
  v28 = _Block_copy(&aBlock);
  v29 = v25;
  v30 = v26;

  [v29 activateWithCompletion_];
  _Block_release(v28);
}

void sub_266D4F32C(void *a1, void *a2)
{
  if (qword_2800C9448 != -1)
  {
    swift_once();
  }

  v4 = sub_266DA94AC();
  __swift_project_value_buffer(v4, qword_28156F268);
  v5 = a1;
  v6 = a2;
  oslog = sub_266DA948C();
  v7 = sub_266DAAAEC();

  if (os_log_type_enabled(oslog, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v14 = v9;
    *v8 = 136315138;
    v10 = sub_266DAA72C();
    v12 = sub_266C22A3C(v10, v11, &v14);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_266C08000, oslog, v7, "Discovery %s Interrupted", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x26D5F2480](v9, -1, -1);
    MEMORY[0x26D5F2480](v8, -1, -1);
  }

  else
  {
  }
}

uint64_t sub_266D4F4D4(void *a1, void *a2, uint64_t a3, uint64_t (*a4)(char *))
{
  if (qword_2800C9448 != -1)
  {
    swift_once();
  }

  v7 = sub_266DA94AC();
  __swift_project_value_buffer(v7, qword_28156F268);
  v8 = a1;
  v9 = a2;
  v10 = sub_266DA948C();
  v11 = sub_266DAAB0C();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v18 = v13;
    *v12 = 136315138;
    v14 = sub_266DAA72C();
    v16 = sub_266C22A3C(v14, v15, &v18);

    *(v12 + 4) = v16;
    _os_log_impl(&dword_266C08000, v10, v11, "Discovery %s Invalidated", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v13);
    MEMORY[0x26D5F2480](v13, -1, -1);
    MEMORY[0x26D5F2480](v12, -1, -1);
  }

  v19 = 1;
  return a4(&v19);
}

uint64_t sub_266D4F674(void *a1, void *a2, void *a3, int a4, void (*a5)(void))
{
  LODWORD(v34) = a4;
  v9 = 0x656C62206F6ELL;
  v10 = sub_266D50990(a1);
  v12 = 0x736469206F6ELL;
  if (v11)
  {
    v12 = v10;
  }

  v36 = v12;
  v13 = 0xE600000000000000;
  if (v11)
  {
    v14 = v11;
  }

  else
  {
    v14 = 0xE600000000000000;
  }

  v15 = [a1 bleDevice];
  if (v15 && sub_266D50B5C(v15))
  {
    v9 = sub_266DAA6BC();
    v13 = v16;
  }

  v37 = v9;
  if (qword_2800C9448 != -1)
  {
    swift_once();
  }

  v17 = sub_266DA94AC();
  __swift_project_value_buffer(v17, qword_28156F268);
  v18 = a2;
  v19 = a3;
  v20 = a1;

  v21 = sub_266DA948C();
  v22 = sub_266DAAB0C();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v38[0] = v25;
    *v23 = 136315906;
    v26 = sub_266DAA72C();
    v35 = a5;
    v28 = sub_266C22A3C(v26, v27, v38);

    *(v23 + 4) = v28;
    *(v23 + 12) = 2112;
    *(v23 + 14) = v20;
    *v24 = v20;
    *(v23 + 22) = 2080;
    v29 = v20;
    v30 = sub_266C22A3C(v36, v14, v38);

    *(v23 + 24) = v30;
    *(v23 + 32) = 2080;
    v31 = sub_266C22A3C(v37, v13, v38);

    *(v23 + 34) = v31;
    a5 = v35;
    _os_log_impl(&dword_266C08000, v21, v22, "Discovery %s device found: %@ %s %s", v23, 0x2Au);
    sub_266C5DA24(v24);
    MEMORY[0x26D5F2480](v24, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x26D5F2480](v25, -1, -1);
    MEMORY[0x26D5F2480](v23, -1, -1);
  }

  else
  {
  }

  v38[3] = sub_266C29814(0, &qword_28156EFA0, 0x277D54C48);
  v38[4] = &off_287866430;
  v38[0] = v20;
  v32 = v20;
  a5(v38);
  return __swift_destroy_boxed_opaque_existential_0(v38);
}

void sub_266D4F9BC(void *a1, void *a2, void *a3, uint64_t a4, void (*a5)(void))
{
  if (qword_2800C9448 != -1)
  {
    swift_once();
  }

  v9 = sub_266DA94AC();
  __swift_project_value_buffer(v9, qword_28156F268);
  v10 = a2;
  v11 = a3;
  v12 = sub_266DA948C();
  v13 = sub_266DAAB0C();

  if (os_log_type_enabled(v12, v13))
  {
    v35 = a1;
    v14 = swift_slowAlloc();
    v34 = v10;
    v15 = swift_slowAlloc();
    v36 = v15;
    *v14 = 136315138;
    v16 = sub_266DAA72C();
    v18 = a5;
    v19 = sub_266C22A3C(v16, v17, &v36);

    *(v14 + 4) = v19;
    a5 = v18;
    _os_log_impl(&dword_266C08000, v12, v13, "Discovery %s activate completion", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v15);
    v20 = v15;
    v10 = v34;
    MEMORY[0x26D5F2480](v20, -1, -1);
    v21 = v14;
    a1 = v35;
    MEMORY[0x26D5F2480](v21, -1, -1);
  }

  if (a1)
  {
    v22 = v10;
    v23 = v11;
    v24 = a1;
    v25 = sub_266DA948C();
    v26 = sub_266DAAAEC();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v36 = v29;
      *v27 = 136315394;
      v30 = sub_266DAA72C();
      v32 = sub_266C22A3C(v30, v31, &v36);

      *(v27 + 4) = v32;
      *(v27 + 12) = 2112;
      v33 = sub_266DA72EC();
      *(v27 + 14) = v33;
      *v28 = v33;
      _os_log_impl(&dword_266C08000, v25, v26, "Discovery %s activate error: %@", v27, 0x16u);
      sub_266C5DA24(v28);
      MEMORY[0x26D5F2480](v28, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v29);
      MEMORY[0x26D5F2480](v29, -1, -1);
      MEMORY[0x26D5F2480](v27, -1, -1);
    }

    LOBYTE(v36) = 0;
    a5(&v36);
  }
}

void sub_266D4FCD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9)
{
  OUTLINED_FUNCTION_16_18();
  OUTLINED_FUNCTION_3_50(v15);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CD670, &qword_266DBB758);
  OUTLINED_FUNCTION_12_23();
  sub_266DAADBC();
  OUTLINED_FUNCTION_24_11();
  if (!v16)
  {
LABEL_27:

    *v9 = v11;
    OUTLINED_FUNCTION_17_23();
    return;
  }

  OUTLINED_FUNCTION_26_12();
  v18 = (v10 + 56);
  v17 = *(v10 + 56);
  v19 = *(v10 + 32);
  OUTLINED_FUNCTION_0_73();
  if (!v14)
  {
LABEL_4:
    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v12 >= v13)
      {
        break;
      }

      ++v21;
      if (v18[v12])
      {
        OUTLINED_FUNCTION_4_47();
        v14 = v23 & v22;
        goto LABEL_9;
      }
    }

    OUTLINED_FUNCTION_10_18();
    if (v35 != v36)
    {
      *v18 = -1 << v34;
    }

    else
    {
      OUTLINED_FUNCTION_28_10(v34);
    }

    v9 = a9;
    *(v10 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    OUTLINED_FUNCTION_5_40();
LABEL_9:
    OUTLINED_FUNCTION_15_22(v20);
    v26 = *v24;
    v25 = v24[1];
    OUTLINED_FUNCTION_30_12();
    sub_266DAB2CC();
    if (v25)
    {
      sub_266DAA7BC();
    }

    v27 = sub_266DAB2DC();
    OUTLINED_FUNCTION_2_61(v27);
    if (v28)
    {
      break;
    }

    OUTLINED_FUNCTION_14_26();
LABEL_21:
    OUTLINED_FUNCTION_1_55(v29);
    *v33 = v26;
    v33[1] = v25;
    OUTLINED_FUNCTION_10_20();
    if (!v14)
    {
      goto LABEL_4;
    }
  }

  OUTLINED_FUNCTION_13_19();
  while (1)
  {
    OUTLINED_FUNCTION_21_17();
    if (v28)
    {
      if (v31)
      {
        break;
      }
    }

    if (v30 == v32)
    {
      v30 = 0;
    }

    OUTLINED_FUNCTION_13_20(v30);
    if (!v28)
    {
      OUTLINED_FUNCTION_12_20();
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
}

void sub_266D4FE3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9)
{
  OUTLINED_FUNCTION_16_18();
  OUTLINED_FUNCTION_3_50(v15);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA7A0, &unk_266DB1B50);
  OUTLINED_FUNCTION_12_23();
  sub_266DAADBC();
  OUTLINED_FUNCTION_24_11();
  if (!v16)
  {
LABEL_25:

    *v9 = v11;
    OUTLINED_FUNCTION_17_23();
    return;
  }

  OUTLINED_FUNCTION_26_12();
  v18 = (v10 + 56);
  v17 = *(v10 + 56);
  v19 = *(v10 + 32);
  OUTLINED_FUNCTION_0_73();
  if (!v14)
  {
LABEL_4:
    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v12 >= v13)
      {
        break;
      }

      ++v21;
      if (v18[v12])
      {
        OUTLINED_FUNCTION_4_47();
        v14 = v23 & v22;
        goto LABEL_9;
      }
    }

    OUTLINED_FUNCTION_10_18();
    if (v35 != v36)
    {
      *v18 = -1 << v34;
    }

    else
    {
      OUTLINED_FUNCTION_28_10(v34);
    }

    v9 = a9;
    *(v10 + 16) = 0;
    goto LABEL_25;
  }

  while (1)
  {
    OUTLINED_FUNCTION_5_40();
LABEL_9:
    OUTLINED_FUNCTION_15_22(v20);
    v25 = *v24;
    v26 = v24[1];
    OUTLINED_FUNCTION_30_12();
    sub_266DAA7BC();
    v27 = sub_266DAB2DC();
    OUTLINED_FUNCTION_2_61(v27);
    if (v28)
    {
      break;
    }

    OUTLINED_FUNCTION_14_26();
LABEL_19:
    OUTLINED_FUNCTION_1_55(v29);
    *v33 = v25;
    v33[1] = v26;
    OUTLINED_FUNCTION_10_20();
    if (!v14)
    {
      goto LABEL_4;
    }
  }

  OUTLINED_FUNCTION_13_19();
  while (1)
  {
    OUTLINED_FUNCTION_21_17();
    if (v28)
    {
      if (v31)
      {
        break;
      }
    }

    if (v30 == v32)
    {
      v30 = 0;
    }

    OUTLINED_FUNCTION_13_20(v30);
    if (!v28)
    {
      OUTLINED_FUNCTION_12_20();
      goto LABEL_19;
    }
  }

LABEL_27:
  __break(1u);
}

unint64_t sub_266D4FF88(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA798, &qword_266DB1B48);
  result = sub_266DAADBC();
  v6 = result;
  if (*(v3 + 16))
  {
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v3 + 56);
    for (i = (v9 + 63) >> 6; v11; result = sub_266D500F8(*v16, *(v16 + 8), *(v16 + 16), v6))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_13:
      v16 = *(v3 + 48) + 24 * (v13 | (v7 << 6));
    }

    v14 = v7;
    while (1)
    {
      v7 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        return result;
      }

      if (v7 >= i)
      {
        break;
      }

      v15 = v8[v7];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v11 = (v15 - 1) & v15;
        goto LABEL_13;
      }
    }

    v17 = 1 << *(v3 + 32);
    if (v17 >= 64)
    {
      sub_266D2EA1C(0, (v17 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v8 = -1 << v17;
    }

    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

unint64_t sub_266D500F8(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v8 = *(a4 + 40);
  sub_266DAB2AC();
  if (a3)
  {
    if (a3 != 1)
    {
      MEMORY[0x26D5F1C20](0);
      goto LABEL_7;
    }

    v9 = 2;
  }

  else
  {
    v9 = 1;
  }

  MEMORY[0x26D5F1C20](v9);
  sub_266DAA7BC();
LABEL_7:
  sub_266DAB2DC();
  v10 = -1 << *(a4 + 32);
  result = sub_266DAAD3C();
  *(a4 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  v12 = *(a4 + 48) + 24 * result;
  *v12 = a1;
  *(v12 + 8) = a2;
  *(v12 + 16) = a3;
  ++*(a4 + 16);
  return result;
}

void sub_266D501EC()
{
  v5 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CD670, &qword_266DBB758);
  v6 = *v0;
  v7 = sub_266DAADAC();
  if (*(v6 + 16))
  {
    v8 = OUTLINED_FUNCTION_14_30();
    if (v11)
    {
      v12 = v8 >= v10;
    }

    else
    {
      v12 = 1;
    }

    if (v12)
    {
      memmove(v8, v1, 8 * v9);
    }

    OUTLINED_FUNCTION_9_22();
    while (v4)
    {
      OUTLINED_FUNCTION_23_18();
LABEL_15:
      *(*(v7 + 48) + 16 * (v13 | (v2 << 6))) = *(*(v6 + 48) + 16 * (v13 | (v2 << 6)));
    }

    v14 = v2;
    while (1)
    {
      v2 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v2 >= v3)
      {
        goto LABEL_17;
      }

      ++v14;
      if (*(v1 + v2))
      {
        OUTLINED_FUNCTION_4_47();
        v4 = v16 & v15;
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_17:

    *v5 = v7;
  }
}

void sub_266D502D8()
{
  v5 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA7A0, &unk_266DB1B50);
  v6 = *v0;
  v7 = sub_266DAADAC();
  if (*(v6 + 16))
  {
    v8 = OUTLINED_FUNCTION_14_30();
    if (v11)
    {
      v12 = v8 >= v10;
    }

    else
    {
      v12 = 1;
    }

    if (v12)
    {
      memmove(v8, v1, 8 * v9);
    }

    OUTLINED_FUNCTION_9_22();
    while (v4)
    {
      OUTLINED_FUNCTION_23_18();
LABEL_15:
      v17 = v13 | (v2 << 6);
      v18 = (*(v6 + 48) + 16 * v17);
      v19 = v18[1];
      v20 = (*(v7 + 48) + 16 * v17);
      *v20 = *v18;
      v20[1] = v19;
    }

    v14 = v2;
    while (1)
    {
      v2 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v2 >= v3)
      {
        goto LABEL_17;
      }

      ++v14;
      if (*(v1 + v2))
      {
        OUTLINED_FUNCTION_4_47();
        v4 = v16 & v15;
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_17:

    *v5 = v7;
  }
}

void *sub_266D503C8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA798, &qword_266DB1B48);
  v2 = *v0;
  v3 = sub_266DAADAC();
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
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 3 * (v14 | (v8 << 6));
        v18 = *(v2 + 48) + 8 * v17;
        v19 = *v18;
        v20 = *(v18 + 8);
        v21 = *(v18 + 16);
        v22 = *(v4 + 48) + 8 * v17;
        *v22 = *v18;
        *(v22 + 8) = v20;
        *(v22 + 16) = v21;
        result = sub_266D509F4(v19, v20, v21);
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
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

void sub_266D5052C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9)
{
  OUTLINED_FUNCTION_16_18();
  OUTLINED_FUNCTION_3_50(v15);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CD670, &qword_266DBB758);
  OUTLINED_FUNCTION_12_23();
  sub_266DAADBC();
  OUTLINED_FUNCTION_24_11();
  if (v16)
  {
    OUTLINED_FUNCTION_26_12();
    v17 = *(v10 + 56);
    v18 = *(v10 + 32);
    OUTLINED_FUNCTION_0_73();
    if (v14)
    {
      while (1)
      {
        OUTLINED_FUNCTION_5_40();
LABEL_9:
        OUTLINED_FUNCTION_15_22(v19);
        v25 = *v23;
        v24 = v23[1];
        OUTLINED_FUNCTION_30_12();
        sub_266DAB2CC();
        if (v24)
        {

          sub_266DAA7BC();
        }

        v26 = sub_266DAB2DC();
        OUTLINED_FUNCTION_2_61(v26);
        if (v27)
        {
          break;
        }

        OUTLINED_FUNCTION_14_26();
LABEL_21:
        OUTLINED_FUNCTION_1_55(v28);
        *v32 = v25;
        v32[1] = v24;
        OUTLINED_FUNCTION_10_20();
        if (!v14)
        {
          goto LABEL_4;
        }
      }

      OUTLINED_FUNCTION_13_19();
      while (1)
      {
        OUTLINED_FUNCTION_21_17();
        if (v27)
        {
          if (v30)
          {
            break;
          }
        }

        if (v29 == v31)
        {
          v29 = 0;
        }

        OUTLINED_FUNCTION_13_20(v29);
        if (!v27)
        {
          OUTLINED_FUNCTION_12_20();
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_4:
      v20 = v12;
      while (1)
      {
        v12 = v20 + 1;
        if (__OFADD__(v20, 1))
        {
          break;
        }

        if (v12 >= v13)
        {

          v9 = a9;
          goto LABEL_25;
        }

        ++v20;
        if (*(v10 + 56 + 8 * v12))
        {
          OUTLINED_FUNCTION_4_47();
          v14 = v22 & v21;
          goto LABEL_9;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_25:
    *v9 = v11;
    OUTLINED_FUNCTION_17_23();
  }
}

void sub_266D50688(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9)
{
  OUTLINED_FUNCTION_16_18();
  OUTLINED_FUNCTION_3_50(v15);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA7A0, &unk_266DB1B50);
  OUTLINED_FUNCTION_12_23();
  sub_266DAADBC();
  OUTLINED_FUNCTION_24_11();
  if (v16)
  {
    OUTLINED_FUNCTION_26_12();
    v17 = *(v10 + 56);
    v18 = *(v10 + 32);
    OUTLINED_FUNCTION_0_73();
    if (v14)
    {
      while (1)
      {
        OUTLINED_FUNCTION_5_40();
LABEL_9:
        OUTLINED_FUNCTION_15_22(v19);
        v24 = *v23;
        v25 = v23[1];
        OUTLINED_FUNCTION_30_12();

        sub_266DAA7BC();
        v26 = sub_266DAB2DC();
        OUTLINED_FUNCTION_2_61(v26);
        if (v27)
        {
          break;
        }

        OUTLINED_FUNCTION_14_26();
LABEL_19:
        OUTLINED_FUNCTION_1_55(v28);
        *v32 = v24;
        v32[1] = v25;
        OUTLINED_FUNCTION_10_20();
        if (!v14)
        {
          goto LABEL_4;
        }
      }

      OUTLINED_FUNCTION_13_19();
      while (1)
      {
        OUTLINED_FUNCTION_21_17();
        if (v27)
        {
          if (v30)
          {
            break;
          }
        }

        if (v29 == v31)
        {
          v29 = 0;
        }

        OUTLINED_FUNCTION_13_20(v29);
        if (!v27)
        {
          OUTLINED_FUNCTION_12_20();
          goto LABEL_19;
        }
      }
    }

    else
    {
LABEL_4:
      v20 = v12;
      while (1)
      {
        v12 = v20 + 1;
        if (__OFADD__(v20, 1))
        {
          break;
        }

        if (v12 >= v13)
        {

          v9 = a9;
          goto LABEL_23;
        }

        ++v20;
        if (*(v10 + 56 + 8 * v12))
        {
          OUTLINED_FUNCTION_4_47();
          v14 = v22 & v21;
          goto LABEL_9;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_23:
    *v9 = v11;
    OUTLINED_FUNCTION_17_23();
  }
}

unint64_t sub_266D507C8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA798, &qword_266DB1B48);
  result = sub_266DAADBC();
  v6 = result;
  if (*(v3 + 16))
  {
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    v9 = -1;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    v10 = v9 & *(v3 + 56);
    for (i = (v8 + 63) >> 6; v10; result = sub_266D500F8(v16, v17, v18, v6))
    {
      v12 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_13:
      v15 = *(v3 + 48) + 24 * (v12 | (v7 << 6));
      v16 = *v15;
      v17 = *(v15 + 8);
      v18 = *(v15 + 16);
      sub_266D509F4(*v15, v17, v18);
    }

    v13 = v7;
    while (1)
    {
      v7 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v7 >= i)
      {
        goto LABEL_15;
      }

      v14 = *(v3 + 56 + 8 * v7);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v10 = (v14 - 1) & v14;
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_15:

    *v2 = v6;
  }

  return result;
}

uint64_t sub_266D50920(void *a1)
{
  v2 = [a1 bluetoothAddress];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_266DA73CC();

  return v3;
}

uint64_t sub_266D50990(void *a1)
{
  v1 = [a1 idsIdentifier];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_266DAA70C();

  return v3;
}

uint64_t sub_266D509F4(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 1u)
  {
  }

  return result;
}

uint64_t sub_266D50A0C(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 17))
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

uint64_t sub_266D50A4C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
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

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t objectdestroy_2Tm_0()
{
  v1 = *(v0 + 48);

  OUTLINED_FUNCTION_1_51();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

uint64_t sub_266D50B5C(void *a1)
{
  v2 = [a1 advertisementFields];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_266DAA6AC();

  return v3;
}

_BYTE *storeEnumTagSinglePayload for DeviceDiscovery.Mode(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_266D50CB4()
{
  result = qword_2800CD678;
  if (!qword_2800CD678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CD678);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_2_61(uint64_t result)
{
  v3 = result & ~(-1 << *(v2 + 32));
  v4 = (-1 << v3) & ~*(v1 + 8 * (v3 >> 6));
  return result;
}

uint64_t OUTLINED_FUNCTION_3_50(uint64_t result)
{
  if (*(*v1 + 24) > result)
  {
    v2 = *(*v1 + 24);
  }

  return result;
}

void OUTLINED_FUNCTION_9_22()
{
  *(v0 + 16) = *(v1 + 16);
  v2 = 1 << *(v1 + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  v4 = v3 & *(v1 + 56);
}

uint64_t OUTLINED_FUNCTION_14_30()
{
  result = v0 + 56;
  v3 = v1 + 56 + 8 * (((1 << *(v0 + 32)) + 63) >> 6);
  return result;
}

uint64_t OUTLINED_FUNCTION_28_10@<X0>(uint64_t a1@<X8>)
{

  return sub_266D2EA1C(0, (a1 + 63) >> 6, v1);
}

uint64_t OUTLINED_FUNCTION_29_4()
{
  v2 = *(v0 + 40);

  return sub_266DAB2AC();
}

uint64_t OUTLINED_FUNCTION_30_12()
{
  v2 = *(v0 + 40);

  return sub_266DAB2AC();
}

uint64_t sub_266D50FB4()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  v4 = qword_2800E6528;
  v5 = sub_266DA919C();
  __swift_storeEnumTagSinglePayload(v3 + v4, 1, 1, v5);
  __swift_storeEnumTagSinglePayload(v3 + qword_2800E6530, 1, 1, v5);
  return sub_266DA8FCC();
}

uint64_t sub_266D51034()
{
  v0 = type metadata accessor for FindmyVisualPerson(0);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();

  return sub_266D510D0(v3);
}

uint64_t sub_266D510D0(uint64_t a1)
{
  sub_266C64D14(a1 + qword_2800E6528, v1 + qword_2800E6508);
  sub_266C64D14(a1 + qword_2800E6530, v1 + qword_2800E6510);

  return MEMORY[0x2821B7AE0](a1);
}

uint64_t sub_266D5113C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA038, &unk_266DAFBF0);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v25 - v13;
  MEMORY[0x28223BE20](v12);
  v16 = &v25 - v15;
  v17 = a1 == 0x49746361746E6F63 && a2 == 0xE900000000000064;
  if (v17 || (OUTLINED_FUNCTION_13_6() & 1) != 0)
  {
    sub_266C64D14(v3 + qword_2800E6508, v16);
    v18 = sub_266DA919C();
    OUTLINED_FUNCTION_1_46(v16);
    if (!v17)
    {
      goto LABEL_24;
    }

    v19 = v16;
    goto LABEL_9;
  }

  v21 = a1 == 0x63417463656C6573 && a2 == 0xEC0000006E6F6974;
  if (v21 || (OUTLINED_FUNCTION_13_6() & 1) != 0)
  {
    sub_266C64D14(v3 + qword_2800E6510, v14);
    v18 = sub_266DA919C();
    OUTLINED_FUNCTION_1_46(v14);
    if (!v17)
    {
      goto LABEL_24;
    }

    v19 = v14;
    goto LABEL_9;
  }

  v22 = a1 == 0x676E697274536F74 && a2 == 0xE800000000000000;
  if (v22 || (OUTLINED_FUNCTION_13_6() & 1) != 0)
  {
    sub_266DA8FFC();
    v18 = sub_266DA919C();
    OUTLINED_FUNCTION_1_46(v11);
    if (!v17)
    {
LABEL_24:
      *(a3 + 24) = v18;
      __swift_allocate_boxed_opaque_existential_1(a3);
      OUTLINED_FUNCTION_0_65();
      return (*(v23 + 32))();
    }

    v19 = v11;
LABEL_9:
    result = sub_266C55ECC(v19);
    *a3 = 0u;
    *(a3 + 16) = 0u;
    return result;
  }

  sub_266DA900C();
  v24 = sub_266DA901C();

  return v24(a1, a2);
}

uint64_t sub_266D51430()
{
  v0 = sub_266DAAF8C();

  if (v0 == 1)
  {
    v1 = 1;
  }

  else
  {
    v1 = 2;
  }

  if (v0)
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_266D51484(char a1)
{
  if (a1)
  {
    return 0x63417463656C6573;
  }

  else
  {
    return 0x49746361746E6F63;
  }
}

uint64_t sub_266D514EC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_266D51430();
  *a2 = result;
  return result;
}

uint64_t sub_266D5151C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_266D51484(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_266D51550@<X0>(_BYTE *a1@<X8>)
{
  result = sub_266D51430();
  *a1 = result;
  return result;
}

uint64_t sub_266D51578(uint64_t a1)
{
  v2 = sub_266D51D50();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_266D515B4(uint64_t a1)
{
  v2 = sub_266D51D50();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_266D515F0(uint64_t *a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  swift_allocObject();
  return sub_266D5163C(a1);
}

uint64_t sub_266D5163C(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA038, &unk_266DAFBF0);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  v7 = v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = v26 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CD6B0, &qword_266DBB8B0);
  v11 = OUTLINED_FUNCTION_0_2(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v11);
  v16 = a1[3];
  v17 = a1[4];
  v29 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v16);
  sub_266D51D50();
  sub_266DAB34C();
  if (v1)
  {
    v18 = 0;
    __swift_destroy_boxed_opaque_existential_0(v29);
    v19 = v27;
    type metadata accessor for FindmyVisualPerson(0);
    v20 = *(*v19 + 48);
    v21 = *(*v19 + 52);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v26[1] = v13;
    sub_266DA919C();
    v28[0] = 0;
    sub_266D51DA4(&qword_2800CA6B8);
    OUTLINED_FUNCTION_2_62();
    sub_266C64C34(v9, v27 + qword_2800E6508);
    v28[0] = 1;
    OUTLINED_FUNCTION_2_62();
    sub_266C64C34(v7, v27 + qword_2800E6510);
    v23 = v29;
    sub_266C233D0(v29, v28);
    v18 = sub_266DA8FAC();
    v24 = OUTLINED_FUNCTION_0_74();
    v25(v24);
    __swift_destroy_boxed_opaque_existential_0(v23);
  }

  return v18;
}

uint64_t sub_266D51974(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CD6A0, &qword_266DBB8A8);
  v4 = OUTLINED_FUNCTION_0_2(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  v10 = &v14 - v9;
  sub_266DA900C();
  v11 = sub_266DA901C();
  result = v11(a1);
  if (!v1)
  {
    v13 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_266D51D50();
    sub_266DAB36C();
    v16 = 0;
    sub_266DA919C();
    sub_266D51DA4(&qword_2800CA6D0);
    OUTLINED_FUNCTION_4_48();
    v15 = 1;
    OUTLINED_FUNCTION_4_48();
    return (*(v6 + 8))(v10, v3);
  }

  return result;
}

uint64_t sub_266D51B78(void *a1, void *a2)
{
  sub_266C55ECC(v2 + *a1);
  v4 = v2 + *a2;

  return sub_266C55ECC(v4);
}

uint64_t sub_266D51BE4(uint64_t (*a1)(void), uint64_t *a2, void *a3)
{
  v5 = a1();
  v6 = *a2;

  sub_266C55ECC(v7 + v6);
  sub_266C55ECC(v5 + *a3);

  v8 = *(*v5 + 48);
  v9 = *(*v5 + 52);

  return MEMORY[0x2821FE8D8](v5, v8, v9);
}

void sub_266D51CB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v4 = *a4;
  sub_266C63E94();
  if (v6 <= 0x3F)
  {
    v7 = *(v5 - 8) + 64;
    swift_initClassMetadata2();
  }
}

unint64_t sub_266D51D50()
{
  result = qword_2800CD6A8;
  if (!qword_2800CD6A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CD6A8);
  }

  return result;
}

uint64_t sub_266D51DA4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_266DA919C();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for FindmyVisualPerson.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_266D51EC8()
{
  result = qword_2800CD6B8;
  if (!qword_2800CD6B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CD6B8);
  }

  return result;
}

unint64_t sub_266D51F20()
{
  result = qword_2800CD6C0;
  if (!qword_2800CD6C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CD6C0);
  }

  return result;
}

unint64_t sub_266D51F78()
{
  result = qword_2800CD6C8;
  if (!qword_2800CD6C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CD6C8);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_2_62()
{

  return sub_266DAB00C();
}

uint64_t OUTLINED_FUNCTION_4_48()
{

  return sub_266DAB0DC();
}

void sub_266D52030()
{
  qword_2800CD6D0 = 0xD000000000000027;
  *algn_2800CD6D8 = 0x8000000266DC37F0;
  qword_2800CD6E0 = 0x6156676E69727473;
  unk_2800CD6E8 = 0xEB0000000065756CLL;
}

uint64_t static DIDisambiguationResponse.identifier.getter@<X0>(void *a1@<X8>)
{
  if (qword_2800C9450 != -1)
  {
    swift_once();
  }

  v2 = *algn_2800CD6D8;
  v3 = qword_2800CD6E0;
  v4 = unk_2800CD6E8;
  *a1 = qword_2800CD6D0;
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = v4;
}

uint64_t DIDisambiguationResponse.value.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t DIDisambiguationResponse.value.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t static DIDisambiguationResponse.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_266DAB17C();
  }
}

uint64_t sub_266D521B0(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x65756C6176 && a2 == 0xE500000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_266DAB17C();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_266D5223C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_266D521B0(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_266D52268(uint64_t a1)
{
  v2 = sub_266D5240C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_266D522A4(uint64_t a1)
{
  v2 = sub_266D5240C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t DIDisambiguationResponse.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CD6F0, &qword_266DBBA10);
  v5 = OUTLINED_FUNCTION_0_75(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  v11 = &v16 - v10;
  v12 = *v1;
  v13 = v1[1];
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_266D5240C();
  sub_266DAB36C();
  sub_266DAB0EC();
  return (*(v7 + 8))(v11, v2);
}

unint64_t sub_266D5240C()
{
  result = qword_2800CD6F8;
  if (!qword_2800CD6F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CD6F8);
  }

  return result;
}

uint64_t DIDisambiguationResponse.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CD700, &qword_266DBBA18);
  v7 = OUTLINED_FUNCTION_0_75(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v7);
  v13 = &v19 - v12;
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_266D5240C();
  sub_266DAB34C();
  if (!v2)
  {
    v15 = sub_266DAB01C();
    v17 = v16;
    (*(v9 + 8))(v13, v3);
    *a2 = v15;
    a2[1] = v17;
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

unint64_t sub_266D525C8(void *a1)
{
  a1[1] = sub_266D52600();
  a1[2] = sub_266D52654();
  result = sub_266D526A8();
  a1[3] = result;
  return result;
}

unint64_t sub_266D52600()
{
  result = qword_2800CD708;
  if (!qword_2800CD708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CD708);
  }

  return result;
}

unint64_t sub_266D52654()
{
  result = qword_2800CD710;
  if (!qword_2800CD710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CD710);
  }

  return result;
}

unint64_t sub_266D526A8()
{
  result = qword_2800CD718;
  if (!qword_2800CD718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CD718);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for DIDisambiguationResponse.CodingKeys(_BYTE *result, int a2, int a3)
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

unint64_t sub_266D527F0()
{
  result = qword_2800CD720;
  if (!qword_2800CD720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CD720);
  }

  return result;
}

unint64_t sub_266D52848()
{
  result = qword_2800CD728;
  if (!qword_2800CD728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CD728);
  }

  return result;
}

unint64_t sub_266D528A0()
{
  result = qword_2800CD730;
  if (!qword_2800CD730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CD730);
  }

  return result;
}

uint64_t sub_266D5290C(uint64_t a1, uint64_t a2)
{
  v4 = sub_266DA74DC();
  sub_266D52BA8(a1, v4 & 1);
  v5 = sub_266D529E8();
  v6 = sub_266DA750C();
  OUTLINED_FUNCTION_8_0(v6);
  (*(v7 + 8))(a2);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CCC08, &unk_266DB86A0);
  OUTLINED_FUNCTION_8_0(v8);
  (*(v9 + 8))(a1);
  return v5;
}

uint64_t sub_266D529E8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA038, &unk_266DAFBF0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v10 - v2;
  v4 = sub_266DA8F8C();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  sub_266DA8F7C();
  sub_266DA8F5C();

  sub_266DAA77C();

  v7 = sub_266DA919C();
  __swift_storeEnumTagSinglePayload(v3, 0, 1, v7);
  sub_266DA8F4C();

  sub_266C55ECC(v3);

  v8 = sub_266DA8F6C();

  sub_266DA8F3C();

  return v8;
}

uint64_t sub_266D52BA8(uint64_t a1, char a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CCC08, &unk_266DB86A0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v17 - v7;
  if (a2)
  {
    v9 = 2;
  }

  else
  {
    v9 = 0;
  }

  if (a2)
  {
    v10 = 3;
  }

  else
  {
    v10 = 1;
  }

  v11 = sub_266D52D0C(v9);
  OUTLINED_FUNCTION_1_56(v11);

  sub_266DA705C();
  v12 = *(v5 + 8);
  v12(v8, v4);
  v13 = sub_266D52D0C(v10);
  OUTLINED_FUNCTION_1_56(v13);

  sub_266DA705C();
  v15 = v14;
  v12(v8, v4);
  if (v15 >= 0.35)
  {
    return v10;
  }

  else
  {
    return v9;
  }
}

id sub_266D52D0C(char a1)
{
  v1 = [objc_opt_self() *off_279C03640[a1]];

  return v1;
}

uint64_t OUTLINED_FUNCTION_1_56(uint64_t a1)
{

  return MEMORY[0x28211B788](a1, v1);
}

_BYTE *storeEnumTagSinglePayload for FMFStateError(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_266D52E68(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 160))
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

uint64_t sub_266D52EA8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 152) = 0;
    *(result + 136) = 0u;
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
      *(result + 160) = 1;
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

    *(result + 160) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

id sub_266D52F20@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 aa_fmfAccount];
  *a2 = result;
  return result;
}

unint64_t sub_266D52F60()
{
  result = qword_2800CD738;
  if (!qword_2800CD738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CD738);
  }

  return result;
}

uint64_t sub_266D52FB4()
{
  v1 = v0;
  if (sub_266D530C4())
  {
    return 4;
  }

  v3 = *__swift_project_boxed_opaque_existential_1(v0 + 5, v0[8]);
  if ((sub_266D1E118() & 1) == 0)
  {
    return 3;
  }

  v4 = sub_266DAA6FC();
  v5 = MGGetBoolAnswer();

  if (!v5)
  {
    return 1;
  }

  v6 = __swift_project_boxed_opaque_existential_1(v1, v1[3]);
  v8 = *v6;
  v7 = v6[1];
  v9 = v6[2];
  if (sub_266C68774())
  {
    return 2;
  }

  v10 = __swift_project_boxed_opaque_existential_1(v1, v1[3]);
  v11 = *v10;
  v12 = v10[1];
  v13 = v10[2];
  KeyPath = swift_getKeyPath();
  LOBYTE(v11) = sub_266C68428(KeyPath, 4607302, 0xE300000000000000, v11);

  if (v11)
  {
    return 5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_266D530C4()
{
  v1 = v0[19];
  __swift_project_boxed_opaque_existential_1(v0 + 15, v0[18]);
  if (sub_266DA7B9C() & 1) != 0 || (v2 = v0[19], __swift_project_boxed_opaque_existential_1(v0 + 15, v0[18]), (sub_266C6A310()))
  {
    v3 = v0[13];
    v4 = v0[14];
    __swift_project_boxed_opaque_existential_1(v0 + 10, v3);
    v5 = (*(v4 + 8))(v3, v4) ^ 1;
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

uint64_t sub_266D53184()
{
  v0 = sub_266DA94AC();
  __swift_allocate_value_buffer(v0, qword_2800CD740);
  v1 = __swift_project_value_buffer(v0, qword_2800CD740);
  if (qword_28156F1D8 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, &unk_28156F1E0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

id sub_266D5324C(uint64_t *a1, uint64_t a2)
{
  sub_266C233D0(a1, v2 + OBJC_IVAR____TtC10SiriFindMy40SetSharedLocationVisibilityIntentHandler_deviceState);
  sub_266C6F3B0(a2, v2 + OBJC_IVAR____TtC10SiriFindMy40SetSharedLocationVisibilityIntentHandler_sessionManager);
  v7.receiver = v2;
  v7.super_class = type metadata accessor for SetSharedLocationVisibilityIntentHandler();
  v5 = objc_msgSendSuper2(&v7, sel_init);
  sub_266D543BC(a2);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return v5;
}

void sub_266D532D8(uint64_t a1, uint64_t a2, void (**a3)(void, void))
{
  v4 = objc_allocWithZone(type metadata accessor for SetSharedLocationVisibilityIntentResponse());
  v5 = SetSharedLocationVisibilityIntentResponse.init(code:userActivity:)(1, 0);
  (a3)[2](a3, v5);

  _Block_release(a3);
}

void sub_266D53344(uint64_t a1, void (*a2)(void))
{
  v3 = objc_allocWithZone(type metadata accessor for SetSharedLocationVisibilityIntentResponse());
  v4 = SetSharedLocationVisibilityIntentResponse.init(code:userActivity:)(1, 0);
  a2();
}

void sub_266D533D0(void *a1, uint64_t a2, void (**a3)(void, void))
{
  v6 = sub_266DA7F0C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = swift_allocObject();
  *(v11 + 16) = a3;
  _Block_copy(a3);
  if ([a1 visibility])
  {
    v27[1] = a2;
    v12 = *(a2 + OBJC_IVAR____TtC10SiriFindMy40SetSharedLocationVisibilityIntentHandler_deviceState + 32);
    __swift_project_boxed_opaque_existential_1((a2 + OBJC_IVAR____TtC10SiriFindMy40SetSharedLocationVisibilityIntentHandler_deviceState), *(a2 + OBJC_IVAR____TtC10SiriFindMy40SetSharedLocationVisibilityIntentHandler_deviceState + 24));
    sub_266DA7EFC();
    v13 = sub_266DA7B1C();
    (*(v7 + 8))(v10, v6);
    if (v13)
    {
      [a1 visibility];
      v14 = swift_allocObject();
      v14[2] = a1;
      v14[3] = sub_266C23320;
      v14[4] = v11;
      v15 = a1;

      sub_266C358C4();
    }

    else
    {
      if (qword_2800C9458 != -1)
      {
        swift_once();
      }

      v22 = sub_266DA94AC();
      __swift_project_value_buffer(v22, qword_2800CD740);
      v23 = sub_266DA948C();
      v24 = sub_266DAAB0C();
      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        *v25 = 0;
        _os_log_impl(&dword_266C08000, v23, v24, "Device is not authenticated, attempting to unlock before handling the request.", v25, 2u);
        MEMORY[0x26D5F2480](v25, -1, -1);
      }

      v26 = [objc_allocWithZone(type metadata accessor for SetSharedLocationVisibilityIntentResponse()) init];
      [v26 _setRequiresAuthentication_];
      (a3)[2](a3, v26);
    }
  }

  else
  {
    if (qword_2800C9458 != -1)
    {
      swift_once();
    }

    v16 = sub_266DA94AC();
    __swift_project_value_buffer(v16, qword_2800CD740);
    v17 = sub_266DA948C();
    v18 = sub_266DAAAFC();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_266C08000, v17, v18, "SetSharedLocationVisibilityIntent visibility is unknown, cannot handle intent.", v19, 2u);
      MEMORY[0x26D5F2480](v19, -1, -1);
    }

    v20 = objc_allocWithZone(type metadata accessor for SetSharedLocationVisibilityIntentResponse());
    v21 = SetSharedLocationVisibilityIntentResponse.init(code:userActivity:)(5, 0);
    (a3)[2](a3, v21);
  }

  _Block_release(a3);
}

void sub_266D537F0(void *a1, void (*a2)(void), char *a3)
{
  v7 = sub_266DA7F0C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([a1 visibility])
  {
    v28 = a3;
    v12 = *(v3 + OBJC_IVAR____TtC10SiriFindMy40SetSharedLocationVisibilityIntentHandler_deviceState + 32);
    __swift_project_boxed_opaque_existential_1((v3 + OBJC_IVAR____TtC10SiriFindMy40SetSharedLocationVisibilityIntentHandler_deviceState), *(v3 + OBJC_IVAR____TtC10SiriFindMy40SetSharedLocationVisibilityIntentHandler_deviceState + 24));
    sub_266DA7EFC();
    v13 = sub_266DA7B1C();
    (*(v8 + 8))(v11, v7);
    if (v13)
    {
      [a1 visibility];
      v14 = swift_allocObject();
      v14[2] = a1;
      v14[3] = a2;
      v14[4] = v28;
      v15 = a1;

      sub_266C358C4();
    }

    else
    {
      if (qword_2800C9458 != -1)
      {
        OUTLINED_FUNCTION_0_76();
      }

      v22 = sub_266DA94AC();
      __swift_project_value_buffer(v22, qword_2800CD740);
      v23 = sub_266DA948C();
      v24 = sub_266DAAB0C();
      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        *v25 = 0;
        _os_log_impl(&dword_266C08000, v23, v24, "Device is not authenticated, attempting to unlock before handling the request.", v25, 2u);
        MEMORY[0x26D5F2480](v25, -1, -1);
      }

      v26 = [objc_allocWithZone(type metadata accessor for SetSharedLocationVisibilityIntentResponse()) init];
      [v26 _setRequiresAuthentication_];
      (a2)(v26);
    }
  }

  else
  {
    if (qword_2800C9458 != -1)
    {
      OUTLINED_FUNCTION_0_76();
    }

    v16 = sub_266DA94AC();
    __swift_project_value_buffer(v16, qword_2800CD740);
    v17 = sub_266DA948C();
    v18 = sub_266DAAAFC();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_266C08000, v17, v18, "SetSharedLocationVisibilityIntent visibility is unknown, cannot handle intent.", v19, 2u);
      MEMORY[0x26D5F2480](v19, -1, -1);
    }

    v20 = objc_allocWithZone(type metadata accessor for SetSharedLocationVisibilityIntentResponse());
    v28 = SetSharedLocationVisibilityIntentResponse.init(code:userActivity:)(5, 0);
    a2();
    v21 = v28;
  }
}

void sub_266D53B90(__int16 a1, void *a2, void (*a3)(void))
{
  if ((a1 & 0x100) == 0)
  {
    if (qword_2800C9458 != -1)
    {
      swift_once();
    }

    v5 = sub_266DA94AC();
    __swift_project_value_buffer(v5, qword_2800CD740);
    v6 = a2;
    v7 = sub_266DA948C();
    v8 = sub_266DAAB0C();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v41 = v10;
      *v9 = 136315138;
      v11 = sub_266CE02F0([v6 visibility]);
      v13 = sub_266C22A3C(v11, v12, &v41);

      *(v9 + 4) = v13;
      _os_log_impl(&dword_266C08000, v7, v8, "Visibility successfully set to %s", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v10);
      MEMORY[0x26D5F2480](v10, -1, -1);
      MEMORY[0x26D5F2480](v9, -1, -1);
    }

    v14 = objc_allocWithZone(type metadata accessor for SetSharedLocationVisibilityIntentResponse());
    v15 = 4;
LABEL_13:
    v40 = SetSharedLocationVisibilityIntentResponse.init(code:userActivity:)(v15, 0);
    a3();

    return;
  }

  if (a1 == 2)
  {
    if (qword_2800C9458 != -1)
    {
      swift_once();
    }

    v16 = sub_266DA94AC();
    __swift_project_value_buffer(v16, qword_2800CD740);
    v17 = a2;
    v18 = sub_266DA948C();
    v19 = sub_266DAAB0C();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v41 = v21;
      *v20 = 136315138;
      v22 = sub_266CE02F0([v17 visibility]);
      v24 = sub_266C22A3C(v22, v23, &v41);

      *(v20 + 4) = v24;
      _os_log_impl(&dword_266C08000, v18, v19, "Visibility is already set to  %s", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v21);
      MEMORY[0x26D5F2480](v21, -1, -1);
      MEMORY[0x26D5F2480](v20, -1, -1);
    }

    v25 = objc_allocWithZone(type metadata accessor for SetSharedLocationVisibilityIntentResponse());
    v15 = 100;
    goto LABEL_13;
  }

  if (qword_2800C9458 != -1)
  {
    swift_once();
  }

  v26 = sub_266DA94AC();
  __swift_project_value_buffer(v26, qword_2800CD740);
  v27 = a2;
  v28 = sub_266DA948C();
  v29 = sub_266DAAAEC();

  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v41 = v31;
    *v30 = 136315394;
    v32 = SharedLocationVisibility.description.getter([v27 visibility]);
    v34 = sub_266C22A3C(v32, v33, &v41);

    *(v30 + 4) = v34;
    *(v30 + 12) = 2080;
    v35 = sub_266DAA72C();
    v37 = sub_266C22A3C(v35, v36, &v41);

    *(v30 + 14) = v37;
    _os_log_impl(&dword_266C08000, v28, v29, "Error when attempting to set shared location visibility to %s: %s", v30, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26D5F2480](v31, -1, -1);
    MEMORY[0x26D5F2480](v30, -1, -1);
  }

  v38 = objc_allocWithZone(type metadata accessor for SetSharedLocationVisibilityIntentResponse());
  v39 = SetSharedLocationVisibilityIntentResponse.init(code:userActivity:)(5, 0);
  a3();
}

void sub_266D5406C(void *a1, int a2, void *a3, void *aBlock, void (*a5)(id, id, void *))
{
  v8 = _Block_copy(aBlock);
  _Block_copy(v8);
  v9 = a3;
  v10 = a1;
  a5(v9, v10, v8);
  _Block_release(v8);
}

id SetSharedLocationVisibilityIntentHandler.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SetSharedLocationVisibilityIntentHandler.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SetSharedLocationVisibilityIntentHandler();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for SetSharedLocationVisibilityIntentHandler()
{
  result = qword_2800CD760;
  if (!qword_2800CD760)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_266D54248()
{
  result = type metadata accessor for FindFriendSessionManager();
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

uint64_t objectdestroyTm_12()
{
  v1 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_266D543BC(uint64_t a1)
{
  FriendSessionManager = type metadata accessor for FindFriendSessionManager();
  (*(*(FriendSessionManager - 8) + 8))(a1, FriendSessionManager);
  return a1;
}

uint64_t OUTLINED_FUNCTION_0_76()
{

  return swift_once();
}

uint64_t sub_266D5443C(uint64_t a1)
{
  v2 = type metadata accessor for ContactNLIntent();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_28156F6C0 != -1)
  {
    swift_once();
  }

  sub_266D54868();
  sub_266DA873C();
  if (v19 == 6)
  {
    sub_266C180F8(a1);
    return 1;
  }

  else if (v19 == 7)
  {
    sub_266C180F8(a1);
    return 2;
  }

  else
  {
    if (qword_2800C9460 != -1)
    {
      swift_once();
    }

    v7 = sub_266DA94AC();
    __swift_project_value_buffer(v7, qword_2800CD770);
    sub_266C1805C(a1, v5);
    v8 = sub_266DA948C();
    v9 = sub_266DAAAEC();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v18 = v11;
      *v10 = 136315138;
      sub_266DA873C();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CD788, &qword_266DBBDE8);
      v12 = sub_266DAA72C();
      v14 = v13;
      sub_266C180F8(v5);
      v15 = sub_266C22A3C(v12, v14, &v18);

      *(v10 + 4) = v15;
      _os_log_impl(&dword_266C08000, v8, v9, "Unexpected contact verb of %s", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v11);
      MEMORY[0x26D5F2480](v11, -1, -1);
      MEMORY[0x26D5F2480](v10, -1, -1);

      v16 = a1;
    }

    else
    {

      sub_266C180F8(a1);
      v16 = v5;
    }

    sub_266C180F8(v16);
    return 0;
  }
}

uint64_t sub_266D546D8(uint64_t a1)
{
  if (qword_28156F710 != -1)
  {
LABEL_22:
    swift_once();
  }

  type metadata accessor for ContactNLIntent();
  sub_266D54868();
  v3 = OUTLINED_FUNCTION_0_77();
  v4 = 0;
  v5 = *(v3 + 16);
  v6 = 1;
  while (v5 != v4)
  {
    if (v4 >= *(v3 + 16))
    {
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

    OUTLINED_FUNCTION_1_57(v4);
    v4 = v1;
    if (v7)
    {
      goto LABEL_18;
    }
  }

  v8 = OUTLINED_FUNCTION_0_77();
  v9 = 0;
  v10 = *(v8 + 16);
  v6 = 2;
  while (v10 != v9)
  {
    if (v9 >= *(v8 + 16))
    {
      goto LABEL_20;
    }

    OUTLINED_FUNCTION_1_57(v9);
    v9 = v1;
    if (v11)
    {
      goto LABEL_18;
    }
  }

  v12 = OUTLINED_FUNCTION_0_77();
  v13 = 0;
  v14 = *(v12 + 16);
  v6 = 3;
  while (v14 != v13)
  {
    if (v13 >= *(v12 + 16))
    {
      goto LABEL_21;
    }

    v15 = v13 + 1;
    v16 = *(v12 + v13 + 32);
    sub_266C175B0();
    v13 = v15;
    if (v17)
    {
      goto LABEL_18;
    }
  }

  v6 = 0;
LABEL_18:

  sub_266C180F8(a1);
  return v6;
}

unint64_t sub_266D54868()
{
  result = qword_28156F668;
  if (!qword_28156F668)
  {
    type metadata accessor for ContactNLIntent();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28156F668);
  }

  return result;
}

uint64_t sub_266D548C0()
{
  v0 = sub_266DA94AC();
  __swift_allocate_value_buffer(v0, qword_2800CD770);
  v1 = __swift_project_value_buffer(v0, qword_2800CD770);
  if (qword_28156F1D8 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, &unk_28156F1E0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t OUTLINED_FUNCTION_0_77()
{

  return sub_266DA874C();
}

void OUTLINED_FUNCTION_1_57(uint64_t a1@<X8>)
{
  v3 = *(v1 + a1 + 32);

  sub_266C175B0();
}

uint64_t sub_266D549C4(uint64_t a1, uint64_t a2)
{
  result = (*(a2 + 16))();
  v3 = result;
  v4 = 0;
  v5 = 0;
  v6 = 0;
  v7 = 0;
  v8 = 1 << *(result + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = result + 56;
  v11 = v9 & *(result + 56);
  v12 = (v8 + 63) >> 6;
  while (v11)
  {
LABEL_9:
    v14 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    v15 = *(v3 + 48) + 24 * (v14 | (v7 << 6));
    if (*(v15 + 16) != 2)
    {
      if (*(v15 + 16))
      {
        v18 = v6;
        v4 = *v15;
        v17 = *(v15 + 8);

        v5 = v17;
      }

      else
      {
        v16 = *(v15 + 8);
        v18 = *v15;
      }

      v6 = v18;
    }
  }

  while (1)
  {
    v13 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      __break(1u);
      return result;
    }

    if (v13 >= v12)
    {
      break;
    }

    v11 = *(v10 + 8 * v13);
    ++v7;
    if (v11)
    {
      v7 = v13;
      goto LABEL_9;
    }
  }

  if (!v5)
  {
    return v6;
  }

  return v4;
}

uint64_t sub_266D54B2C(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a3)
  {
    if (a3 != 1)
    {
      return a6 == 2 && !(a5 | a4);
    }

    if (a6 != 1)
    {
      return 0;
    }

LABEL_6:
    if (a1 != a4 || a2 != a5)
    {
      return sub_266DAB17C();
    }

    return 1;
  }

  if (!a6)
  {
    goto LABEL_6;
  }

  return 0;
}

uint64_t sub_266D54B94(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
    if (a4 != 1)
    {
      return MEMORY[0x26D5F1C20](0);
    }

    v4 = 2;
  }

  else
  {
    v4 = 1;
  }

  MEMORY[0x26D5F1C20](v4);

  return sub_266DAA7BC();
}

uint64_t sub_266D54C18(uint64_t a1, uint64_t a2, char a3)
{
  sub_266DAB2AC();
  if (a3)
  {
    if (a3 != 1)
    {
      MEMORY[0x26D5F1C20](0);
      return sub_266DAB2DC();
    }

    v4 = 2;
  }

  else
  {
    v4 = 1;
  }

  MEMORY[0x26D5F1C20](v4);
  sub_266DAA7BC();
  return sub_266DAB2DC();
}

uint64_t sub_266D54CDC()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  sub_266DAB2AC();
  if (v3)
  {
    if (v3 != 1)
    {
      MEMORY[0x26D5F1C20](0);
      return sub_266DAB2DC();
    }

    v4 = 2;
  }

  else
  {
    v4 = 1;
  }

  MEMORY[0x26D5F1C20](v4);
  sub_266DAA7BC();
  return sub_266DAB2DC();
}

uint64_t get_enum_tag_for_layout_string_10SiriFindMy16TransportAddressO(uint64_t a1)
{
  if ((*(a1 + 16) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

unint64_t sub_266D54D94()
{
  result = qword_2800CD790;
  if (!qword_2800CD790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CD790);
  }

  return result;
}

uint64_t sub_266D54DE8(unint64_t a1, void *a2)
{
  v4 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  if (sub_266DA7B1C())
  {
    return 0;
  }

  Array<A>.hasNonNearbyDevices.getter(a1);
  if ((v6 & 1) == 0)
  {
    Array<A>.hasItems.getter(a1);
    if ((v7 & 1) == 0)
    {
      return 0;
    }
  }

  v8 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  return sub_266C6A2A0() & 1;
}

uint64_t SpeakableString.hash(into:)()
{
  sub_266DA917C();
  sub_266DAA7BC();

  sub_266DA918C();
  sub_266DAA7BC();
}

uint64_t SpeakableString.hashValue.getter()
{
  sub_266DAB2AC();
  sub_266DA917C();
  OUTLINED_FUNCTION_9_19();

  sub_266DA918C();
  OUTLINED_FUNCTION_9_19();

  return sub_266DAB2DC();
}

uint64_t sub_266D54F70()
{
  sub_266DAB2AC();
  sub_266DA917C();
  sub_266DAA7BC();

  sub_266DA918C();
  sub_266DAA7BC();

  return sub_266DAB2DC();
}

unint64_t sub_266D54FF0()
{
  result = qword_2800CCC28;
  if (!qword_2800CCC28)
  {
    sub_266DA919C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CCC28);
  }

  return result;
}

uint64_t sub_266D55048(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_266D55088(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_266D550E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return MEMORY[0x2822009F8](sub_266D5510C, 0, 0);
}

uint64_t sub_266D5510C()
{
  OUTLINED_FUNCTION_34();
  v2 = *(v0 + 24);
  v1 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v0 + 56) = v3;
  *(v3 + 16) = *(v0 + 40);
  *(v3 + 32) = v2;
  *(v3 + 40) = v1;
  *(v3 + 48) = &unk_266DBBFD0;
  *(v3 + 56) = 0;
  v4 = *(MEMORY[0x277D859B8] + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_24_1();
  *(v0 + 64) = v5;
  *v5 = v6;
  v5[1] = sub_266D55210;
  v7 = *(v0 + 16);

  return MEMORY[0x282200740](v7, &type metadata for MeDeviceInfo, &type metadata for MeDeviceInfo, 0, 0, &unk_266DBBFD8, v3, &type metadata for MeDeviceInfo);
}

uint64_t sub_266D55210()
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_23_0();
  v3 = v2;
  v4 = *(v2 + 64);
  v5 = *v1;
  OUTLINED_FUNCTION_9_2();
  *v6 = v5;
  *(v3 + 72) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_266D55338, 0, 0);
  }

  else
  {
    v7 = *(v3 + 56);

    OUTLINED_FUNCTION_28();

    return v8();
  }
}

uint64_t sub_266D55338()
{
  OUTLINED_FUNCTION_22_0();
  v1 = *(v0 + 56);

  OUTLINED_FUNCTION_28();
  v3 = *(v0 + 72);

  return v2();
}

uint64_t sub_266D553B4()
{
  OUTLINED_FUNCTION_34();
  v1 = *(v0 + 16);
  swift_willThrow();
  v2 = v1;
  OUTLINED_FUNCTION_28();
  v4 = *(v0 + 16);

  return v3();
}

uint64_t sub_266D55424(uint64_t a1)
{
  *(v2 + 72) = a1;
  *(v2 + 80) = v1;
  return MEMORY[0x2822009F8](sub_266D55444, 0, 0);
}

uint64_t sub_266D55444()
{
  OUTLINED_FUNCTION_34();
  v1 = *(v0 + 80);
  v3 = *(v1 + 40);
  v2 = *(v1 + 48);
  sub_266D403B8(v1, v0 + 16);
  v4 = swift_allocObject();
  *(v0 + 88) = v4;
  v5 = *(v0 + 32);
  *(v4 + 16) = *(v0 + 16);
  *(v4 + 32) = v5;
  *(v4 + 48) = *(v0 + 48);
  *(v4 + 64) = *(v0 + 64);
  OUTLINED_FUNCTION_6_35(&unk_266DBBFC8);
  OUTLINED_FUNCTION_24_1();
  *(v0 + 96) = v6;
  *v6 = v7;
  v6[1] = sub_266D55558;
  v8 = *(v0 + 72);

  return v10(v8, v3, v2, &unk_266DBBFB8, v4, &unk_266DBBFC0, 0);
}

uint64_t sub_266D55558()
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_23_0();
  v3 = v2;
  v4 = *(v2 + 96);
  v5 = *v1;
  OUTLINED_FUNCTION_9_2();
  *v6 = v5;
  *(v3 + 104) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_266D55680, 0, 0);
  }

  else
  {
    v7 = *(v3 + 88);

    OUTLINED_FUNCTION_28();

    return v8();
  }
}

uint64_t sub_266D55680()
{
  OUTLINED_FUNCTION_22_0();
  v1 = *(v0 + 88);

  OUTLINED_FUNCTION_28();
  v3 = *(v0 + 104);

  return v2();
}

uint64_t sub_266D556DC(uint64_t a1, uint64_t a2)
{
  v2[7] = a1;
  v2[8] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC6E8, &qword_266DB64B0);
  v2[9] = v3;
  v4 = *(v3 - 8);
  v2[10] = v4;
  v5 = *(v4 + 64) + 15;
  v2[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_266D557A8, 0, 0);
}

uint64_t sub_266D557A8()
{
  OUTLINED_FUNCTION_34();
  v1 = *(v0 + 88);
  *(v0 + 48) = *(*__swift_project_boxed_opaque_existential_1(*(v0 + 64), *(*(v0 + 64) + 24)) + 40);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC168, &qword_266DB5CB8);
  v3 = sub_266D55E60();
  MEMORY[0x26D5F02C0](v2, v3);
  OUTLINED_FUNCTION_6_35(&unk_266DB64A8);
  OUTLINED_FUNCTION_24_1();
  *(v0 + 96) = v4;
  *v4 = v5;
  v4[1] = sub_266D55890;
  v6 = *(v0 + 88);

  return v8(v0 + 16);
}

uint64_t sub_266D55890()
{
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_23_0();
  v2 = v1[12];
  v3 = v1[11];
  v4 = v1[10];
  v5 = v1[9];
  v6 = *v0;
  OUTLINED_FUNCTION_9_2();
  *v7 = v6;

  (*(v4 + 8))(v3, v5);

  return MEMORY[0x2822009F8](sub_266D559D8, 0, 0);
}

uint64_t sub_266D559D8()
{
  OUTLINED_FUNCTION_34();
  v1 = *(v0 + 32);
  v2 = *(v0 + 88);
  if (v1 == 1)
  {
    sub_266D55E0C();
    swift_allocError();
    *v3 = 0;
    swift_willThrow();
  }

  else
  {
    v5 = *(v0 + 56);
    v6 = *(v0 + 40);
    v7 = *(v0 + 24);
    *v5 = *(v0 + 16) & 1;
    *(v5 + 8) = v7;
    *(v5 + 16) = v1;
    *(v5 + 24) = v6 & 1;
  }

  OUTLINED_FUNCTION_28();

  return v4();
}

uint64_t sub_266D55ACC()
{
  OUTLINED_FUNCTION_34();
  if (qword_28156F1D8 != -1)
  {
    swift_once();
  }

  v0 = sub_266DA94AC();
  __swift_project_value_buffer(v0, &unk_28156F1E0);
  v1 = sub_266DA948C();
  v2 = sub_266DAAB0C();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_266C08000, v1, v2, "Timed out waiting on MeDeviceInfo", v3, 2u);
    MEMORY[0x26D5F2480](v3, -1, -1);
  }

  sub_266D55E0C();
  swift_allocError();
  *v4 = 1;
  swift_willThrow();
  OUTLINED_FUNCTION_28();

  return v5();
}

uint64_t sub_266D55C08(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_266C4716C;

  return sub_266D55424(a1);
}

uint64_t sub_266D55CA0()
{
  OUTLINED_FUNCTION_22_0();
  v3 = v2;
  swift_task_alloc();
  OUTLINED_FUNCTION_24_1();
  *(v1 + 16) = v4;
  *v4 = v5;
  v4[1] = sub_266C48BB4;

  return sub_266D556DC(v3, v0 + 16);
}

uint64_t sub_266D55D34()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v7 = v0[6];
  v6 = v0[7];
  swift_task_alloc();
  OUTLINED_FUNCTION_24_1();
  *(v1 + 16) = v8;
  *v8 = v9;
  v8[1] = sub_266C4716C;

  return sub_266D1F220();
}

unint64_t sub_266D55E0C()
{
  result = qword_2800CD798;
  if (!qword_2800CD798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CD798);
  }

  return result;
}

unint64_t sub_266D55E60()
{
  result = qword_2800CC170;
  if (!qword_2800CC170)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2800CC168, &qword_266DB5CB8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CC170);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for FMFCoreMeDeviceInfoProvider.MeDeviceError(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_266D55FA4()
{
  result = qword_2800CD7A0;
  if (!qword_2800CD7A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CD7A0);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_6_35@<X0>(int *a1@<X8>)
{
  v2 = a1[1];
  v4 = a1 + *a1;

  return swift_task_alloc();
}

uint64_t sub_266D56020(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 264))
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

uint64_t sub_266D56060(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 248) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 264) = 1;
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

    *(result + 264) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_266D560F0()
{
  OUTLINED_FUNCTION_22_0();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v4 = sub_266DA7A4C();
  v1[5] = v4;
  OUTLINED_FUNCTION_11_3(v4);
  v1[6] = v5;
  v7 = *(v6 + 64);
  v1[7] = OUTLINED_FUNCTION_62();
  v8 = OUTLINED_FUNCTION_14_3();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_266D56198()
{
  if (qword_2800C93D8 != -1)
  {
    OUTLINED_FUNCTION_1_11();
  }

  v1 = sub_266DA94AC();
  __swift_project_value_buffer(v1, qword_2800E6498);
  v2 = sub_266DA948C();
  v3 = sub_266DAAB0C();
  if (OUTLINED_FUNCTION_16_0(v3))
  {
    *OUTLINED_FUNCTION_11() = 0;
    OUTLINED_FUNCTION_32_1(&dword_266C08000, v4, v5, "FindDevice.HandleIntentStrategy.makeIntentExecutionBehavior() called");
    OUTLINED_FUNCTION_6_1();
  }

  v7 = v0[6];
  v6 = v0[7];
  v9 = v0[4];
  v8 = v0[5];
  v10 = v0[2];
  v11 = v0[3];

  v12 = *(v9 + 80);
  type metadata accessor for FindDeviceAndPlaySoundIntent();

  v13 = v12;
  v14 = v11;
  sub_266DA7A3C();
  sub_266DA7A9C();
  sub_266DA7A8C();
  (*(v7 + 8))(v6, v8);

  v15 = OUTLINED_FUNCTION_15_5();

  return v16(v15);
}

uint64_t sub_266D56300(void *a1, uint64_t a2)
{
  v3 = sub_266D14B44(a1);
  if (!v3)
  {
    goto LABEL_19;
  }

  v6 = v3;
  if (!sub_266C3A14C(v3, v4, v5))
  {

LABEL_19:
    v19 = 0;
    return v19 & 1;
  }

  sub_266CB9F54(0, (v6 & 0xC000000000000001) == 0, v6);
  if ((v6 & 0xC000000000000001) != 0)
  {
    v7 = MEMORY[0x26D5F1780](0, v6);
  }

  else
  {
    v7 = *(v6 + 32);
  }

  v8 = v7;

  v9 = OBJC_IVAR___FindDeviceAndPlaySoundIntentResponse_code;
  swift_beginAccess();
  v10 = *(a2 + v9);
  if (v10 != 4 && v10 != 1)
  {
LABEL_18:

    goto LABEL_19;
  }

  v12 = [v8 isEarbuds];
  if (v12)
  {
    v13 = v12;
    v14 = [v12 BOOLValue];
  }

  else
  {
    v14 = 0;
  }

  v15 = [v8 isHeadphones];
  if (v15)
  {
    v16 = v15;
    v17 = [v15 BOOLValue];

    if (((v14 | v17) & 1) == 0)
    {
      goto LABEL_18;
    }
  }

  else if ((v14 & 1) == 0)
  {
    goto LABEL_18;
  }

  v18 = sub_266CC7C44();

  v19 = v18 ^ 1;
  return v19 & 1;
}

uint64_t sub_266D56454(uint64_t a1, uint64_t a2)
{
  v3[6] = a2;
  v3[7] = v2;
  v3[5] = a1;
  v4 = OUTLINED_FUNCTION_14_3();
  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_266D56480(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_27_3();
  a19 = v21;
  a20 = v22;
  OUTLINED_FUNCTION_30_2();
  a18 = v20;
  v23 = v20[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9B90, &qword_266DBB6E0);
  v24 = sub_266DA7FCC();
  v20[8] = v24;
  v25 = sub_266DA7FBC();
  v20[9] = v25;
  if (qword_2800C93D8 != -1)
  {
    OUTLINED_FUNCTION_1_11();
  }

  v26 = sub_266DA94AC();
  __swift_project_value_buffer(v26, qword_2800E6498);
  v27 = v25;
  v28 = sub_266DA948C();
  v29 = sub_266DAAB0C();

  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    a9 = v31;
    *v30 = 136315138;
    v32 = OBJC_IVAR___FindDeviceAndPlaySoundIntentResponse_code;
    OUTLINED_FUNCTION_150();
    DeviceAndPlaySoundIntentResponse = FindDeviceAndPlaySoundIntentResponseCode.description.getter(*&v27[v32]);
    v35 = sub_266C22A3C(DeviceAndPlaySoundIntentResponse, v34, &a9);

    *(v30 + 4) = v35;
    _os_log_impl(&dword_266C08000, v28, v29, "FindDevice.HandleIntentStrategy.makeIntentHandledResponse() called with code: %s", v30, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v31);
    OUTLINED_FUNCTION_6_1();
    OUTLINED_FUNCTION_6_1();
  }

  v36 = v20[7];
  if (sub_266D56300(v24, v27))
  {
    v37 = sub_266DA948C();
    v38 = sub_266DAAB0C();
    if (OUTLINED_FUNCTION_16_0(v38))
    {
      v39 = OUTLINED_FUNCTION_11();
      *v39 = 0;
      _os_log_impl(&dword_266C08000, v37, v38, "Ping is interruptible by speech, skipping final success dialog.", v39, 2u);
      OUTLINED_FUNCTION_6_1();
    }

    v40 = v20[5];

    sub_266DA7C4C();
    sub_266DA7C3C();

    OUTLINED_FUNCTION_15_4();
    OUTLINED_FUNCTION_26_4();

    return v42(v41, v42, v43, v44, v45, v46, v47, v48, a9, a10, a11, a12);
  }

  else
  {
    swift_task_alloc();
    OUTLINED_FUNCTION_24_1();
    v20[10] = v50;
    *v50 = v51;
    v50[1] = sub_266D56720;
    v52 = v20[6];
    v53 = v20[7];
    v54 = v20[5];
    OUTLINED_FUNCTION_26_4();

    return sub_266D568D8();
  }
}

uint64_t sub_266D56720()
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_21_1();
  *v3 = v2;
  v5 = *(v4 + 80);
  v6 = *v1;
  OUTLINED_FUNCTION_9_2();
  *v7 = v6;
  *(v8 + 88) = v0;

  OUTLINED_FUNCTION_49();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_266D5681C()
{
  OUTLINED_FUNCTION_22_0();
  v1 = *(v0 + 64);

  OUTLINED_FUNCTION_15_4();

  return v2();
}

uint64_t sub_266D56878()
{
  OUTLINED_FUNCTION_22_0();
  v1 = *(v0 + 64);

  OUTLINED_FUNCTION_28();
  v3 = *(v0 + 88);

  return v2();
}

uint64_t sub_266D568D8()
{
  OUTLINED_FUNCTION_22_0();
  v1[23] = v2;
  v1[24] = v0;
  v1[22] = v3;
  v4 = type metadata accessor for Snippets();
  v1[25] = v4;
  OUTLINED_FUNCTION_4_3(v4);
  v6 = *(v5 + 64);
  v1[26] = OUTLINED_FUNCTION_64();
  v1[27] = swift_task_alloc();
  v1[28] = swift_task_alloc();
  v1[29] = swift_task_alloc();
  v7 = sub_266DA80AC();
  v1[30] = v7;
  OUTLINED_FUNCTION_11_3(v7);
  v1[31] = v8;
  v10 = *(v9 + 64);
  v1[32] = OUTLINED_FUNCTION_62();
  v11 = sub_266DA7C0C();
  v1[33] = v11;
  OUTLINED_FUNCTION_11_3(v11);
  v1[34] = v12;
  v14 = *(v13 + 64);
  v1[35] = OUTLINED_FUNCTION_64();
  v1[36] = swift_task_alloc();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA040, &unk_266DB0070);
  OUTLINED_FUNCTION_4_3(v15);
  v17 = *(v16 + 64);
  v1[37] = OUTLINED_FUNCTION_62();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA048, &unk_266DAFC00);
  OUTLINED_FUNCTION_4_3(v18);
  v20 = *(v19 + 64);
  v1[38] = OUTLINED_FUNCTION_62();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA050, &qword_266DB0080);
  OUTLINED_FUNCTION_11_3(v21);
  v1[39] = v22;
  v1[40] = *(v23 + 64);
  v1[41] = OUTLINED_FUNCTION_64();
  v1[42] = swift_task_alloc();
  v1[43] = swift_task_alloc();
  v1[44] = swift_task_alloc();
  v1[45] = swift_task_alloc();
  v1[46] = swift_task_alloc();
  v1[47] = swift_task_alloc();
  v1[48] = swift_task_alloc();
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CB488, &qword_266DB3B68);
  OUTLINED_FUNCTION_4_3(v24);
  v26 = *(v25 + 64);
  v1[49] = OUTLINED_FUNCTION_62();
  v27 = sub_266DA750C();
  OUTLINED_FUNCTION_4_3(v27);
  v29 = *(v28 + 64);
  v1[50] = OUTLINED_FUNCTION_62();
  v30 = OUTLINED_FUNCTION_14_3();

  return MEMORY[0x2822009F8](v30, v31, v32);
}

uint64_t sub_266D56B74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_36();
  v23 = v22[23];
  v22[51] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9B90, &qword_266DBB6E0);
  v24 = sub_266DA7FCC();
  v22[52] = v24;
  v25 = sub_266D14B44(v24);
  if (v25)
  {
    v28 = v25;
    if (sub_266C3A14C(v25, v26, v27))
    {
      v29 = OUTLINED_FUNCTION_63();
      sub_266CB9F54(v29, v30, v28);
      if ((v28 & 0xC000000000000001) != 0)
      {
        v31 = MEMORY[0x26D5F1780](0, v28);
      }

      else
      {
        v31 = *(v28 + 32);
      }

      v32 = v31;
      v22[53] = v31;

      v33 = sub_266D9BD18(v32);
      if (!v34)
      {
        goto LABEL_22;
      }

      if (v33 == 1296389193 && v34 == 0xE400000000000000)
      {
      }

      else
      {
        v36 = sub_266DAB17C();

        if ((v36 & 1) == 0)
        {
          goto LABEL_22;
        }
      }

      [v32 setDeviceLocality_];
LABEL_22:
      v61 = v22[50];
      v62 = v22[24];
      type metadata accessor for FindmyDevice(0);
      v63 = v62[9];
      __swift_project_boxed_opaque_existential_1(v62 + 5, v62[8]);
      v64 = v32;
      sub_266DA7AFC();
      v65 = sub_266D9AF54(v64, v61, 0, 0xF000000000000000, 0, 0, 0, 0);
      v22[54] = v65;
      v66 = v62[16];
      v22[55] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC460, &unk_266DAFC20);
      v67 = OUTLINED_FUNCTION_101();
      v22[56] = v67;
      *(v67 + 16) = xmmword_266DAE3B0;
      *(v67 + 32) = v65;

      sub_266CAA15C();
      v68 = swift_task_alloc();
      v22[57] = v68;
      *v68 = v22;
      v68[1] = sub_266D56F84;
      OUTLINED_FUNCTION_25_0();

      return sub_266D43ED8(v69, v70);
    }
  }

  if (qword_2800C93D8 != -1)
  {
    OUTLINED_FUNCTION_1_11();
  }

  v37 = sub_266DA94AC();
  __swift_project_value_buffer(v37, qword_2800E6498);
  v38 = sub_266DA948C();
  v39 = sub_266DAAAFC();
  if (OUTLINED_FUNCTION_16_0(v39))
  {
    v40 = OUTLINED_FUNCTION_11();
    *v40 = 0;
    _os_log_impl(&dword_266C08000, v38, v39, "Devices slot is nil or empty: cannot create handle intent output.", v40, 2u);
    OUTLINED_FUNCTION_6_1();
  }

  sub_266C488FC();
  v81 = swift_allocError();
  *v41 = 6;
  swift_willThrow();

  v43 = v22[49];
  v42 = v22[50];
  v44 = v22[47];
  v45 = v22[48];
  v47 = v22[45];
  v46 = v22[46];
  v49 = v22[43];
  v48 = v22[44];
  v51 = v22[41];
  v50 = v22[42];
  v72 = v22[38];
  v73 = v22[37];
  v74 = v22[36];
  v75 = v22[35];
  v76 = v22[32];
  v77 = v22[29];
  v78 = v22[28];
  v79 = v22[27];
  v80 = v22[26];

  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_25_0();

  return v53(v52, v53, v54, v55, v56, v57, v58, v59, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, a19, a20, a21, a22);
}

uint64_t sub_266D56F84()
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_23_0();
  v3 = v2;
  OUTLINED_FUNCTION_10_3();
  *v4 = v3;
  v6 = *(v5 + 456);
  *v4 = *v1;
  v3[58] = v7;
  v3[59] = v0;

  if (!v0)
  {
    v8 = v3[56];
  }

  OUTLINED_FUNCTION_49();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

void sub_266D5708C()
{
  v1 = v0[58];
  v2 = v0[55];
  v3 = v0[53];
  v4 = v0[51];
  v5 = v0[48];
  v6 = v0[49];
  v7 = v0[47];
  v145 = v0[38];
  v146 = v0[52];
  v148 = v0[37];
  v150 = v0[36];
  v8 = v0[24];
  v9 = v0[25];
  v10 = v0[23];
  v11 = sub_266DA7FBC();
  sub_266CAFC70(v6);

  v151 = *(v8 + 136);
  OUTLINED_FUNCTION_43();
  __swift_storeEnumTagSinglePayload(v12, v13, v14, v9);
  v15 = v3;
  v16 = sub_266C1CEB4(v15);
  v18 = v17;
  LOBYTE(v3) = sub_266CC7C44();

  *v7 = 4;
  *(v7 + 8) = v16;
  *(v7 + 16) = v18;
  *(v7 + 24) = v3 & 1;
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v7, 0, 1, v9);
  v19 = OUTLINED_FUNCTION_101();
  v0[60] = v19;
  *(v19 + 16) = xmmword_266DAE3B0;
  *(v19 + 32) = v1;
  v20 = v1;
  sub_266D14B44(v146);
  sub_266CC2614();

  sub_266DA7C7C();
  OUTLINED_FUNCTION_43();
  __swift_storeEnumTagSinglePayload(v21, v22, v23, v24);
  sub_266DA7BCC();
  if (sub_266C3A14C(v19, v25, v26))
  {
    v27 = OUTLINED_FUNCTION_63();
    sub_266CB9F54(v27, v28, v19);
    if ((v19 & 0xC000000000000001) != 0)
    {
      v29 = MEMORY[0x26D5F1780](0, v19);
    }

    else
    {
      v29 = *(v19 + 32);
    }

    v30 = v29;
    v31 = [v29 catId];

    sub_266DAA70C();
    OUTLINED_FUNCTION_114_1();
  }

  else
  {
    OUTLINED_FUNCTION_92_1();
  }

  v32 = v0[47];
  v34 = v0[45];
  v33 = v0[46];
  v36 = v0[39];
  v35 = v0[40];
  v137 = v0[38];
  v139 = v0[37];
  v37 = v0[35];
  v38 = v0[34];
  v133 = v0[33];
  v135 = v0[36];
  v141 = v0[32];
  v143 = v0[48];
  v147 = v0[25];
  v149 = v0[44];
  OUTLINED_FUNCTION_128();
  sub_266C67BE8(v39, v40, v41, &qword_266DB0080);
  OUTLINED_FUNCTION_143();
  v42 = (v35 + *(v36 + 80) + ((*(v36 + 80) + 24) & ~*(v36 + 80))) & ~*(v36 + 80);
  v43 = swift_allocObject();
  v0[61] = v43;
  OUTLINED_FUNCTION_142(v43);
  sub_266C475DC(v34, v43 + v42);
  (*(v38 + 16))(v37, v135, v133);
  v44 = swift_task_alloc();
  *(v44 + 16) = 0;
  *(v44 + 24) = 0;
  *(v44 + 32) = 0;
  *(v44 + 40) = v145;
  *(v44 + 48) = v150;
  *(v44 + 56) = v137;
  *(v44 + 64) = 514;
  *(v44 + 72) = sub_266C48BBC;
  *(v44 + 80) = v43;
  *(v44 + 88) = v139;

  sub_266DA800C();

  v53 = OUTLINED_FUNCTION_45_8(v45, v46, v47, v48, v49, v50, v51, v52, v131, v133, v135, v137, v139, v141, v143);
  v55 = sub_266C67BE8(v53, v54, &qword_2800CA050, &qword_266DB0080);
  OUTLINED_FUNCTION_33_9(v55, v56, v57, v58, v59, v60, v61, v62, v132, v134, v136, v138, v140, v142, v144, v145, v147);
  if (v71)
  {
    v63 = v0 + 44;
  }

  else
  {
    v64 = v0[47];
    v65 = v0[43];
    v66 = v0[25];
    OUTLINED_FUNCTION_9_23(v0[44], v0[29]);
    v67 = OUTLINED_FUNCTION_32();
    sub_266C67BE8(v67, v68, v69, v70);
    OUTLINED_FUNCTION_19_2();
    if (!v71)
    {
      v101 = v0[43];
      v102 = v0[28];
      v103 = v0[29];
      v104 = v0[25];
      OUTLINED_FUNCTION_2_63();
      sub_266D63620(v105, v102, v106);
      v0[15] = v104;
      v107 = sub_266C4DB4C();
      OUTLINED_FUNCTION_95_1(v107);
      v108 = OUTLINED_FUNCTION_41();
      sub_266D6367C(v108, v109, v66);
      v110 = OUTLINED_FUNCTION_148();
      OUTLINED_FUNCTION_54_6(v110);
      OUTLINED_FUNCTION_17_11(MEMORY[0x277D5BD30]);
      OUTLINED_FUNCTION_24_1();
      v0[62] = v111;
      *v111 = v112;
      v111[1] = sub_266D576A8;
      v113 = v0[32];
      v114 = v0[22];
      OUTLINED_FUNCTION_77();
      OUTLINED_FUNCTION_112();

      __asm { BR              X5 }
    }

    v63 = v0 + 43;
    v72 = v0[29];
    OUTLINED_FUNCTION_1_58();
    sub_266D636D8(v73, v74);
  }

  v75 = *v63;
  v76 = v0[48];
  v77 = v0[42];
  v78 = v0[25];
  OUTLINED_FUNCTION_77_2(v75);
  OUTLINED_FUNCTION_41_4();
  OUTLINED_FUNCTION_29();
  v79 = v0[25];
  if (v80 == 1)
  {
    v81 = v0[47];
    v82 = v0[41];
    OUTLINED_FUNCTION_77_2(v0[42]);
    v83 = OUTLINED_FUNCTION_34_5();
    sub_266C67BE8(v83, v84, v85, &qword_266DB0080);
    OUTLINED_FUNCTION_30_13();
    if (v71)
    {
      sub_266C47654(v0[41], &qword_2800CA050, &qword_266DB0080);
      OUTLINED_FUNCTION_17_11(MEMORY[0x277D5BD50]);
      OUTLINED_FUNCTION_24_1();
      v0[65] = v86;
      *v86 = v87;
      v86[1] = sub_266D57EF8;
      v88 = v0[32];
      v89 = v0[22];
      OUTLINED_FUNCTION_112();

      __asm { BR              X3 }
    }

    v117 = v0[41];
    v119 = v0[25];
    v118 = v0[26];
    OUTLINED_FUNCTION_5_41();
    sub_266D63620(v120, v118, v121);
    v0[5] = v119;
    v122 = sub_266C4DB4C();
    OUTLINED_FUNCTION_147(v122);
    v123 = OUTLINED_FUNCTION_41();
    sub_266D6367C(v123, v124, v81);
    OUTLINED_FUNCTION_17_11(MEMORY[0x277D5BD40]);
    OUTLINED_FUNCTION_24_1();
    v0[64] = v125;
    *v125 = v126;
    v125[1] = sub_266D57C48;
    v127 = v0[32];
    v128 = v0[22];
  }

  else
  {
    v92 = v0[27];
    OUTLINED_FUNCTION_2_63();
    sub_266D63620(v93, v92, v94);
    v0[10] = v79;
    v95 = sub_266C4DB4C();
    v96 = OUTLINED_FUNCTION_117(v95);
    OUTLINED_FUNCTION_54_6(v96);
    OUTLINED_FUNCTION_17_11(MEMORY[0x277D5BD38]);
    OUTLINED_FUNCTION_24_1();
    v0[63] = v97;
    *v97 = v98;
    v97[1] = sub_266D57998;
    v99 = v0[32];
    v100 = v0[22];
  }

  OUTLINED_FUNCTION_112();

  __asm { BR              X4 }
}

uint64_t sub_266D576A8()
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_23_0();
  v2 = v1;
  OUTLINED_FUNCTION_10_3();
  *v3 = v2;
  v5 = *(v4 + 496);
  v6 = *(v4 + 480);
  v7 = *v0;
  OUTLINED_FUNCTION_9_2();
  *v8 = v7;

  OUTLINED_FUNCTION_138();
  v9 = OUTLINED_FUNCTION_14_3();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_266D577A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_67();
  OUTLINED_FUNCTION_85();
  v27 = v26[61];
  v54 = v26[47];
  v55 = v26[48];
  v28 = v26[36];
  v30 = v26[33];
  v29 = v26[34];
  v31 = v26[31];
  v32 = v26[32];
  v34 = v26[29];
  v33 = v26[30];
  v35 = v26[28];

  sub_266D636D8(v35, type metadata accessor for Snippets);
  sub_266D636D8(v34, type metadata accessor for Snippets);
  (*(v31 + 8))(v32, v33);
  v36 = *(v29 + 8);
  v37 = OUTLINED_FUNCTION_38();
  v38(v37);
  OUTLINED_FUNCTION_54();
  sub_266C47654(v39, v40, v41);
  OUTLINED_FUNCTION_54();
  sub_266C47654(v42, v43, v44);
  OUTLINED_FUNCTION_10_21();
  sub_266C47654(v35, &qword_2800CA040, &unk_266DB0070);
  sub_266C47654(type metadata accessor for Snippets, &qword_2800CA048, &unk_266DAFC00);

  sub_266C47654(v31 + 8, &qword_2800CB488, &qword_266DB3B68);

  OUTLINED_FUNCTION_15_4();
  OUTLINED_FUNCTION_65();

  return v46(v45, v46, v47, v48, v49, v50, v51, v52, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, v54, v55, a24, a25, a26);
}

uint64_t sub_266D57998()
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_23_0();
  v2 = v1;
  OUTLINED_FUNCTION_10_3();
  *v3 = v2;
  v5 = *(v4 + 504);
  v6 = *(v4 + 480);
  v7 = *v0;
  OUTLINED_FUNCTION_9_2();
  *v8 = v7;

  __swift_destroy_boxed_opaque_existential_0((v2 + 56));
  v9 = OUTLINED_FUNCTION_14_3();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_266D57A98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_67();
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_96_3();
  v32 = *(v27 + 216);

  OUTLINED_FUNCTION_1_58();
  sub_266D636D8(v32, v33);
  v34 = OUTLINED_FUNCTION_22_5();
  v35(v34);
  v36 = *(v30 + 8);
  v37 = OUTLINED_FUNCTION_38();
  v38(v37);
  v39 = OUTLINED_FUNCTION_34_5();
  sub_266C47654(v39, v40, v41);
  OUTLINED_FUNCTION_54();
  sub_266C47654(v42, v43, v44);
  OUTLINED_FUNCTION_10_21();
  sub_266C47654(v30 + 8, &qword_2800CA040, &unk_266DB0070);
  sub_266C47654(v31, &qword_2800CA048, &unk_266DAFC00);

  sub_266C47654(v26, &qword_2800CB488, &qword_266DB3B68);

  OUTLINED_FUNCTION_15_4();
  OUTLINED_FUNCTION_65();

  return v46(v45, v46, v47, v48, v49, v50, v51, v52, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26);
}

uint64_t sub_266D57C48()
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_23_0();
  v2 = v1;
  OUTLINED_FUNCTION_10_3();
  *v3 = v2;
  v5 = *(v4 + 512);
  v6 = *(v4 + 480);
  v7 = *v0;
  OUTLINED_FUNCTION_9_2();
  *v8 = v7;

  __swift_destroy_boxed_opaque_existential_0((v2 + 16));
  v9 = OUTLINED_FUNCTION_14_3();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_266D57D48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_67();
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_96_3();
  v32 = *(v27 + 208);

  OUTLINED_FUNCTION_1_58();
  sub_266D636D8(v32, v33);
  v34 = OUTLINED_FUNCTION_22_5();
  v35(v34);
  v36 = *(v30 + 8);
  v37 = OUTLINED_FUNCTION_38();
  v38(v37);
  v39 = OUTLINED_FUNCTION_34_5();
  sub_266C47654(v39, v40, v41);
  OUTLINED_FUNCTION_54();
  sub_266C47654(v42, v43, v44);
  OUTLINED_FUNCTION_10_21();
  sub_266C47654(v30 + 8, &qword_2800CA040, &unk_266DB0070);
  sub_266C47654(v31, &qword_2800CA048, &unk_266DAFC00);

  sub_266C47654(v26, &qword_2800CB488, &qword_266DB3B68);

  OUTLINED_FUNCTION_15_4();
  OUTLINED_FUNCTION_65();

  return v46(v45, v46, v47, v48, v49, v50, v51, v52, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26);
}

uint64_t sub_266D57EF8()
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_23_0();
  v2 = *(v1 + 520);
  v3 = *(v1 + 480);
  v4 = *v0;
  OUTLINED_FUNCTION_9_2();
  *v5 = v4;

  v6 = OUTLINED_FUNCTION_14_3();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_266D57FF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_67();
  OUTLINED_FUNCTION_85();
  v28 = v26[61];
  v29 = v26[47];
  v30 = v26[48];
  v31 = v26[36];
  v32 = v26[33];
  v33 = v26[34];
  v35 = v26[31];
  v34 = v26[32];
  v36 = v26[30];

  v37 = OUTLINED_FUNCTION_48_3();
  v38(v37);
  v39 = *(v33 + 8);
  v40 = OUTLINED_FUNCTION_38();
  v41(v40);
  v42 = OUTLINED_FUNCTION_34_5();
  sub_266C47654(v42, v43, v44);
  OUTLINED_FUNCTION_54();
  sub_266C47654(v45, v46, v47);
  OUTLINED_FUNCTION_10_21();
  sub_266C47654(v35, &qword_2800CA040, &unk_266DB0070);
  sub_266C47654(v27, &qword_2800CA048, &unk_266DAFC00);

  sub_266C47654(v29, &qword_2800CB488, &qword_266DB3B68);

  OUTLINED_FUNCTION_15_4();
  OUTLINED_FUNCTION_65();

  return v49(v48, v49, v50, v51, v52, v53, v54, v55, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26);
}

uint64_t sub_266D581AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_36();
  v23 = v22[56];
  v24 = v22[53];
  v25 = v22[54];
  v26 = v22[52];

  v55 = v22[59];
  v28 = v22[49];
  v27 = v22[50];
  v29 = v22[47];
  v30 = v22[48];
  v32 = v22[45];
  v31 = v22[46];
  v34 = v22[43];
  v33 = v22[44];
  v36 = v22[41];
  v35 = v22[42];
  v46 = v22[38];
  v47 = v22[37];
  v48 = v22[36];
  v49 = v22[35];
  v50 = v22[32];
  v51 = v22[29];
  v52 = v22[28];
  v53 = v22[27];
  v54 = v22[26];

  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_25_0();

  return v38(v37, v38, v39, v40, v41, v42, v43, v44, a9, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, a20, a21, a22);
}

uint64_t sub_266D58300()
{
  OUTLINED_FUNCTION_22_0();
  v1[26] = v2;
  v1[27] = v0;
  v1[25] = v3;
  v4 = type metadata accessor for Snippets();
  v1[28] = v4;
  OUTLINED_FUNCTION_4_3(v4);
  v6 = *(v5 + 64);
  v1[29] = OUTLINED_FUNCTION_64();
  v1[30] = swift_task_alloc();
  v1[31] = swift_task_alloc();
  v1[32] = swift_task_alloc();
  v7 = sub_266DA80AC();
  v1[33] = v7;
  OUTLINED_FUNCTION_11_3(v7);
  v1[34] = v8;
  v10 = *(v9 + 64);
  v1[35] = OUTLINED_FUNCTION_62();
  v11 = sub_266DA7C0C();
  v1[36] = v11;
  OUTLINED_FUNCTION_11_3(v11);
  v1[37] = v12;
  v14 = *(v13 + 64);
  v1[38] = OUTLINED_FUNCTION_64();
  v1[39] = swift_task_alloc();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA040, &unk_266DB0070);
  OUTLINED_FUNCTION_4_3(v15);
  v17 = *(v16 + 64);
  v1[40] = OUTLINED_FUNCTION_62();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA048, &unk_266DAFC00);
  OUTLINED_FUNCTION_4_3(v18);
  v20 = *(v19 + 64);
  v1[41] = OUTLINED_FUNCTION_62();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA050, &qword_266DB0080);
  OUTLINED_FUNCTION_11_3(v21);
  v1[42] = v22;
  v1[43] = *(v23 + 64);
  v1[44] = OUTLINED_FUNCTION_64();
  v1[45] = swift_task_alloc();
  v1[46] = swift_task_alloc();
  v1[47] = swift_task_alloc();
  v1[48] = swift_task_alloc();
  v1[49] = swift_task_alloc();
  v1[50] = swift_task_alloc();
  v1[51] = swift_task_alloc();
  v24 = OUTLINED_FUNCTION_14_3();

  return MEMORY[0x2822009F8](v24, v25, v26);
}

uint64_t sub_266D58550(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_114();
  OUTLINED_FUNCTION_94_0();
  if (qword_2800C93D8 != -1)
  {
    OUTLINED_FUNCTION_1_11();
  }

  v19 = sub_266DA94AC();
  __swift_project_value_buffer(v19, qword_2800E6498);
  v20 = sub_266DA948C();
  v21 = sub_266DAAB0C();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = OUTLINED_FUNCTION_11();
    *v22 = 0;
    _os_log_impl(&dword_266C08000, v20, v21, "FindDevice.HandleIntentStrategy.makePreHandleIntentOutput() called", v22, 2u);
    OUTLINED_FUNCTION_6_1();
  }

  v23 = v18[26];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9B90, &qword_266DBB6E0);
  v24 = sub_266DA7FCC();
  v18[52] = v24;
  v25 = sub_266DA7FBC();
  v18[53] = v25;
  v26 = OBJC_IVAR___FindDeviceAndPlaySoundIntentResponse_code;
  OUTLINED_FUNCTION_150();
  if (*&v25[v26] == 2)
  {
    v27 = sub_266DA948C();
    v28 = sub_266DAAB0C();
    if (OUTLINED_FUNCTION_16_0(v28))
    {
      v29 = OUTLINED_FUNCTION_11();
      *v29 = 0;
      _os_log_impl(&dword_266C08000, v27, v28, "Skipping pre-handle output because our status is .continueInApp", v29, 2u);
      OUTLINED_FUNCTION_6_1();
    }

    v30 = v18[25];

    sub_266DA7C4C();
    sub_266DA7C3C();

    OUTLINED_FUNCTION_7_34();

    OUTLINED_FUNCTION_15_4();
    OUTLINED_FUNCTION_60();

    return v32(v31, v32, v33, v34, v35, v36, v37, v38, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
  }

  v40 = sub_266D14B44(v24);
  if (v40)
  {
    v43 = v40;
    if (sub_266C3A14C(v40, v41, v42))
    {
      v44 = OUTLINED_FUNCTION_63();
      sub_266CB9F54(v44, v45, v43);
      if ((v43 & 0xC000000000000001) != 0)
      {
        v46 = MEMORY[0x26D5F1780](0, v43);
      }

      else
      {
        v46 = *(v43 + 32);
      }

      v47 = v46;

      v48 = sub_266CC7C44();

      if (v48)
      {
        v49 = v18[27];
        v51 = v49[14];
        v50 = v49[15];
        __swift_project_boxed_opaque_existential_1(v49 + 11, v51);
        (*(*(v50 + 8) + 16))(v51);
      }
    }

    else
    {
    }
  }

  v52 = v18[27];
  if (sub_266D56300(v24, v25))
  {
    v53 = sub_266DA948C();
    v54 = sub_266DAAB0C();
    if (OUTLINED_FUNCTION_16_0(v54))
    {
      *OUTLINED_FUNCTION_11() = 0;
      OUTLINED_FUNCTION_32_1(&dword_266C08000, v55, v56, "Ping is interruptible by speech, sending success dialog in pre-handle.");
      OUTLINED_FUNCTION_6_1();
    }

    swift_task_alloc();
    OUTLINED_FUNCTION_24_1();
    v18[64] = v57;
    *v57 = v58;
    v57[1] = sub_266D59AF0;
    v59 = v18[26];
    v60 = v18[27];
    v61 = v18[25];
    OUTLINED_FUNCTION_60();

    return sub_266D568D8();
  }

  v63 = sub_266D14B44(v24);
  if (v63)
  {
    v66 = v63;
    if (sub_266C3A14C(v63, v64, v65))
    {
      v67 = OUTLINED_FUNCTION_63();
      sub_266CB9F54(v67, v68, v66);
      if ((v66 & 0xC000000000000001) != 0)
      {
        v69 = MEMORY[0x26D5F1780](0, v66);
      }

      else
      {
        v69 = *(v66 + 32);
      }

      v70 = v69;
      v71 = v18[27];

      v72 = sub_266CC7CC0((v71 + 40));

      goto LABEL_31;
    }
  }

  v72 = 0;
LABEL_31:
  v18[54] = v72;
  v73 = *(v18[27] + 128);
  sub_266CAA15C();
  v74 = swift_task_alloc();
  v18[55] = v74;
  *v74 = v18;
  v74[1] = sub_266D58A0C;
  OUTLINED_FUNCTION_60();

  return sub_266D43FFC(v75, v76);
}

uint64_t sub_266D58A0C()
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_21_1();
  *v3 = v2;
  v5 = *(v4 + 440);
  *v3 = *v1;
  *(v2 + 448) = v6;
  *(v2 + 456) = v0;

  OUTLINED_FUNCTION_49();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

void sub_266D58B10()
{
  v1 = v0[56];
  v2 = v0[54];
  v4 = v0[50];
  v3 = v0[51];
  v5 = v0[41];
  v6 = v0[28];
  v125 = *(v0[27] + 136);
  OUTLINED_FUNCTION_43();
  __swift_storeEnumTagSinglePayload(v7, v8, v9, v6);
  OUTLINED_FUNCTION_43();
  __swift_storeEnumTagSinglePayload(v10, v11, v12, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC460, &unk_266DAFC20);
  v13 = OUTLINED_FUNCTION_101();
  v0[58] = v13;
  *(v13 + 16) = xmmword_266DAE3B0;
  *(v13 + 32) = v1;
  sub_266DA7E5C();
  v14 = OUTLINED_FUNCTION_31();
  __swift_storeEnumTagSinglePayload(v14, v15, 1, v16);
  if (v2)
  {
    v124 = *(v0[54] + OBJC_IVAR____TtC10SiriFindMy12FindmyDevice_ownerIsMe);
  }

  else
  {
    v124 = 0;
  }

  v17 = v0[56];
  v18 = v0[39];
  v19 = v0[40];
  sub_266DA7C7C();
  OUTLINED_FUNCTION_43();
  __swift_storeEnumTagSinglePayload(v20, v21, v22, v23);
  v24 = v17;
  sub_266DA7BCC();
  if (sub_266C3A14C(v13, v25, v26))
  {
    v27 = OUTLINED_FUNCTION_63();
    sub_266CB9F54(v27, v28, v13);
    if ((v13 & 0xC000000000000001) != 0)
    {
      v29 = MEMORY[0x26D5F1780](0, v13);
    }

    else
    {
      v29 = *(v13 + 32);
    }

    v30 = v29;
    v31 = [v29 catId];

    v120 = sub_266DAA70C();
    v123 = v32;
  }

  else
  {
    v120 = 0;
    v123 = 0;
  }

  v33 = v0[50];
  v35 = v0[48];
  v34 = v0[49];
  v37 = v0[42];
  v36 = v0[43];
  v116 = v0[41];
  v117 = v0[40];
  v38 = v0[38];
  v39 = v0[37];
  v114 = v0[36];
  v115 = v0[39];
  v118 = v0[35];
  v119 = v0[51];
  v121 = v0[28];
  v122 = v0[47];
  OUTLINED_FUNCTION_128();
  sub_266C67BE8(v40, v41, v42, &qword_266DB0080);
  OUTLINED_FUNCTION_143();
  v43 = (v36 + *(v37 + 80) + ((*(v37 + 80) + 24) & ~*(v37 + 80))) & ~*(v37 + 80);
  v44 = swift_allocObject();
  v0[59] = v44;
  OUTLINED_FUNCTION_142(v44);
  sub_266C475DC(v35, v44 + v43);
  (*(v39 + 16))(v38, v115, v114);
  v45 = swift_task_alloc();
  *(v45 + 16) = v124;
  *(v45 + 24) = 0;
  *(v45 + 32) = 0;
  *(v45 + 40) = v120;
  *(v45 + 48) = v123;
  *(v45 + 56) = v116;
  *(v45 + 64) = 514;
  *(v45 + 72) = sub_266C48BBC;
  *(v45 + 80) = v44;
  *(v45 + 88) = v117;

  sub_266DA800C();

  sub_266C67BE8(v119, v122, &qword_2800CA050, &qword_266DB0080);
  if (__swift_getEnumTagSinglePayload(v122, 1, v121) == 1)
  {
    v46 = v0 + 47;
  }

  else
  {
    v47 = v0[50];
    v48 = v0[46];
    v49 = v0[28];
    OUTLINED_FUNCTION_9_23(v0[47], v0[32]);
    v50 = OUTLINED_FUNCTION_32();
    sub_266C67BE8(v50, v51, v52, v53);
    OUTLINED_FUNCTION_19_2();
    if (!v54)
    {
      v84 = v0[46];
      v85 = v0[31];
      v86 = v0[32];
      v87 = v0[28];
      OUTLINED_FUNCTION_2_63();
      sub_266D63620(v88, v85, v89);
      v0[15] = v87;
      v90 = sub_266C4DB4C();
      OUTLINED_FUNCTION_95_1(v90);
      v91 = OUTLINED_FUNCTION_41();
      sub_266D6367C(v91, v92, v49);
      v93 = OUTLINED_FUNCTION_148();
      OUTLINED_FUNCTION_54_6(v93);
      OUTLINED_FUNCTION_17_11(MEMORY[0x277D5BD30]);
      OUTLINED_FUNCTION_24_1();
      v0[60] = v94;
      *v94 = v95;
      v94[1] = sub_266D59124;
      v96 = v0[35];
      v97 = v0[25];
      OUTLINED_FUNCTION_77();
      OUTLINED_FUNCTION_112();

      __asm { BR              X5 }
    }

    v46 = v0 + 46;
    v55 = v0[32];
    OUTLINED_FUNCTION_1_58();
    sub_266D636D8(v56, v57);
  }

  v58 = *v46;
  v59 = v0[51];
  v60 = v0[45];
  v61 = v0[28];
  OUTLINED_FUNCTION_77_2(v58);
  OUTLINED_FUNCTION_41_4();
  OUTLINED_FUNCTION_29();
  v62 = v0[28];
  if (v63 == 1)
  {
    v64 = v0[50];
    v65 = v0[44];
    OUTLINED_FUNCTION_77_2(v0[45]);
    v66 = OUTLINED_FUNCTION_34_5();
    sub_266C67BE8(v66, v67, v68, &qword_266DB0080);
    OUTLINED_FUNCTION_30_13();
    if (v54)
    {
      sub_266C47654(v0[44], &qword_2800CA050, &qword_266DB0080);
      OUTLINED_FUNCTION_17_11(MEMORY[0x277D5BD50]);
      OUTLINED_FUNCTION_24_1();
      v0[63] = v69;
      *v69 = v70;
      v69[1] = sub_266D5988C;
      v71 = v0[35];
      v72 = v0[25];
      OUTLINED_FUNCTION_112();

      __asm { BR              X3 }
    }

    v100 = v0[44];
    v102 = v0[28];
    v101 = v0[29];
    OUTLINED_FUNCTION_5_41();
    sub_266D63620(v103, v101, v104);
    v0[5] = v102;
    v105 = sub_266C4DB4C();
    OUTLINED_FUNCTION_147(v105);
    v106 = OUTLINED_FUNCTION_41();
    sub_266D6367C(v106, v107, v64);
    OUTLINED_FUNCTION_17_11(MEMORY[0x277D5BD40]);
    OUTLINED_FUNCTION_24_1();
    v0[62] = v108;
    *v108 = v109;
    v108[1] = sub_266D59618;
    v110 = v0[35];
    v111 = v0[25];
  }

  else
  {
    v75 = v0[30];
    OUTLINED_FUNCTION_2_63();
    sub_266D63620(v76, v75, v77);
    v0[10] = v62;
    v78 = sub_266C4DB4C();
    v79 = OUTLINED_FUNCTION_117(v78);
    OUTLINED_FUNCTION_54_6(v79);
    OUTLINED_FUNCTION_17_11(MEMORY[0x277D5BD38]);
    OUTLINED_FUNCTION_24_1();
    v0[61] = v80;
    *v80 = v81;
    v80[1] = sub_266D593A4;
    v82 = v0[35];
    v83 = v0[25];
  }

  OUTLINED_FUNCTION_112();

  __asm { BR              X4 }
}

uint64_t sub_266D59124()
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_23_0();
  v2 = v1;
  OUTLINED_FUNCTION_10_3();
  *v3 = v2;
  v5 = *(v4 + 480);
  v6 = *(v4 + 464);
  v7 = *v0;
  OUTLINED_FUNCTION_9_2();
  *v8 = v7;

  OUTLINED_FUNCTION_138();
  v9 = OUTLINED_FUNCTION_14_3();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_266D59220(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_114();
  OUTLINED_FUNCTION_94_0();
  v23 = v19[59];
  v24 = v19[31];
  v25 = v19[32];

  OUTLINED_FUNCTION_2_63();
  sub_266D636D8(v24, v26);
  sub_266D636D8(v25, v18);
  v27 = OUTLINED_FUNCTION_18_20();
  v28(v27);
  v29 = OUTLINED_FUNCTION_24_4();
  v30(v29);
  OUTLINED_FUNCTION_46_1();
  OUTLINED_FUNCTION_45_2();
  sub_266C47654(v21, &qword_2800CA040, &unk_266DB0070);
  sub_266C47654(v20, &qword_2800CA048, &unk_266DAFC00);

  OUTLINED_FUNCTION_7_34();

  OUTLINED_FUNCTION_15_4();
  OUTLINED_FUNCTION_60();

  return v32(v31, v32, v33, v34, v35, v36, v37, v38, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
}

uint64_t sub_266D593A4()
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_23_0();
  v2 = v1;
  OUTLINED_FUNCTION_10_3();
  *v3 = v2;
  v5 = *(v4 + 488);
  v6 = *(v4 + 464);
  v7 = *v0;
  OUTLINED_FUNCTION_9_2();
  *v8 = v7;

  __swift_destroy_boxed_opaque_existential_0((v2 + 56));
  v9 = OUTLINED_FUNCTION_14_3();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_266D594A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_114();
  OUTLINED_FUNCTION_94_0();
  v22 = *(v18 + 472);
  v23 = *(v18 + 240);

  OUTLINED_FUNCTION_1_58();
  sub_266D636D8(v23, v24);
  v25 = OUTLINED_FUNCTION_18_20();
  v26(v25);
  v27 = OUTLINED_FUNCTION_24_4();
  v28(v27);
  OUTLINED_FUNCTION_46_1();
  OUTLINED_FUNCTION_45_2();
  sub_266C47654(v20, &qword_2800CA040, &unk_266DB0070);
  sub_266C47654(v19, &qword_2800CA048, &unk_266DAFC00);

  OUTLINED_FUNCTION_7_34();

  OUTLINED_FUNCTION_15_4();
  OUTLINED_FUNCTION_60();

  return v30(v29, v30, v31, v32, v33, v34, v35, v36, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
}

uint64_t sub_266D59618()
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_23_0();
  v2 = v1;
  OUTLINED_FUNCTION_10_3();
  *v3 = v2;
  v5 = *(v4 + 496);
  v6 = *(v4 + 464);
  v7 = *v0;
  OUTLINED_FUNCTION_9_2();
  *v8 = v7;

  __swift_destroy_boxed_opaque_existential_0((v2 + 16));
  v9 = OUTLINED_FUNCTION_14_3();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_266D59718(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_114();
  OUTLINED_FUNCTION_94_0();
  v22 = *(v18 + 472);
  v23 = *(v18 + 232);

  OUTLINED_FUNCTION_1_58();
  sub_266D636D8(v23, v24);
  v25 = OUTLINED_FUNCTION_18_20();
  v26(v25);
  v27 = OUTLINED_FUNCTION_24_4();
  v28(v27);
  OUTLINED_FUNCTION_46_1();
  OUTLINED_FUNCTION_45_2();
  sub_266C47654(v20, &qword_2800CA040, &unk_266DB0070);
  sub_266C47654(v19, &qword_2800CA048, &unk_266DAFC00);

  OUTLINED_FUNCTION_7_34();

  OUTLINED_FUNCTION_15_4();
  OUTLINED_FUNCTION_60();

  return v30(v29, v30, v31, v32, v33, v34, v35, v36, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
}

uint64_t sub_266D5988C()
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_23_0();
  v2 = *(v1 + 504);
  v3 = *(v1 + 464);
  v4 = *v0;
  OUTLINED_FUNCTION_9_2();
  *v5 = v4;

  v6 = OUTLINED_FUNCTION_14_3();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_266D5998C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_114();
  OUTLINED_FUNCTION_94_0();
  v23 = *(v19 + 472);

  v24 = OUTLINED_FUNCTION_18_20();
  v25(v24);
  v26 = OUTLINED_FUNCTION_24_4();
  v27(v26);
  OUTLINED_FUNCTION_46_1();
  OUTLINED_FUNCTION_45_2();
  sub_266C47654(v21, &qword_2800CA040, &unk_266DB0070);
  sub_266C47654(v20, &qword_2800CA048, &unk_266DAFC00);

  OUTLINED_FUNCTION_7_34();

  OUTLINED_FUNCTION_15_4();
  OUTLINED_FUNCTION_60();

  return v29(v28, v29, v30, v31, v32, v33, v34, v35, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
}

uint64_t sub_266D59AF0()
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_21_1();
  *v3 = v2;
  v5 = *(v4 + 512);
  v6 = *v1;
  OUTLINED_FUNCTION_9_2();
  *v7 = v6;
  *(v8 + 520) = v0;

  OUTLINED_FUNCTION_49();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_266D59BEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_114();
  OUTLINED_FUNCTION_94_0();
  v19 = *(v18 + 416);

  OUTLINED_FUNCTION_7_34();

  OUTLINED_FUNCTION_15_4();
  OUTLINED_FUNCTION_60();

  return v21(v20, v21, v22, v23, v24, v25, v26, v27, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
}

uint64_t sub_266D59CD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_46();
  v21 = *(v20 + 416);

  v22 = *(v20 + 520);
  OUTLINED_FUNCTION_64_1();

  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_39();

  return v24(v23, v24, v25, v26, v27, v28, v29, v30, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
}

uint64_t sub_266D59DC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_46();
  v21 = *(v20 + 432);
  v22 = *(v20 + 416);

  v23 = *(v20 + 456);
  OUTLINED_FUNCTION_64_1();

  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_39();

  return v25(v24, v25, v26, v27, v28, v29, v30, v31, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
}

uint64_t sub_266D59EC8()
{
  OUTLINED_FUNCTION_22_0();
  v1[90] = v0;
  v1[89] = v2;
  v1[88] = v3;
  v4 = type metadata accessor for Snippets();
  v1[91] = v4;
  OUTLINED_FUNCTION_4_3(v4);
  v6 = *(v5 + 64);
  v1[92] = OUTLINED_FUNCTION_64();
  v1[93] = swift_task_alloc();
  v1[94] = swift_task_alloc();
  v1[95] = swift_task_alloc();
  v1[96] = swift_task_alloc();
  v1[97] = swift_task_alloc();
  v1[98] = swift_task_alloc();
  v1[99] = swift_task_alloc();
  v1[100] = swift_task_alloc();
  v1[101] = swift_task_alloc();
  v1[102] = swift_task_alloc();
  v1[103] = swift_task_alloc();
  v1[104] = swift_task_alloc();
  v1[105] = swift_task_alloc();
  v1[106] = swift_task_alloc();
  v1[107] = swift_task_alloc();
  v7 = sub_266DA80AC();
  v1[108] = v7;
  OUTLINED_FUNCTION_11_3(v7);
  v1[109] = v8;
  v10 = *(v9 + 64);
  v1[110] = OUTLINED_FUNCTION_64();
  v1[111] = swift_task_alloc();
  v1[112] = swift_task_alloc();
  v1[113] = swift_task_alloc();
  v11 = sub_266DA7C0C();
  v1[114] = v11;
  OUTLINED_FUNCTION_11_3(v11);
  v1[115] = v12;
  v14 = *(v13 + 64);
  v1[116] = OUTLINED_FUNCTION_64();
  v1[117] = swift_task_alloc();
  v1[118] = swift_task_alloc();
  v1[119] = swift_task_alloc();
  v1[120] = swift_task_alloc();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA040, &unk_266DB0070);
  OUTLINED_FUNCTION_4_3(v15);
  v17 = *(v16 + 64);
  v1[121] = OUTLINED_FUNCTION_64();
  v1[122] = swift_task_alloc();
  v1[123] = swift_task_alloc();
  v1[124] = swift_task_alloc();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA048, &unk_266DAFC00);
  OUTLINED_FUNCTION_4_3(v18);
  v20 = *(v19 + 64);
  v1[125] = OUTLINED_FUNCTION_64();
  v1[126] = swift_task_alloc();
  v1[127] = swift_task_alloc();
  v1[128] = swift_task_alloc();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA050, &qword_266DB0080);
  OUTLINED_FUNCTION_11_3(v21);
  v1[129] = v22;
  v1[130] = *(v23 + 64);
  v1[131] = OUTLINED_FUNCTION_64();
  v1[132] = swift_task_alloc();
  v1[133] = swift_task_alloc();
  v1[134] = swift_task_alloc();
  v1[135] = swift_task_alloc();
  v1[136] = swift_task_alloc();
  v1[137] = swift_task_alloc();
  v1[138] = swift_task_alloc();
  v1[139] = swift_task_alloc();
  v1[140] = swift_task_alloc();
  v1[141] = swift_task_alloc();
  v1[142] = swift_task_alloc();
  v1[143] = swift_task_alloc();
  v1[144] = swift_task_alloc();
  v1[145] = swift_task_alloc();
  v1[146] = swift_task_alloc();
  v1[147] = swift_task_alloc();
  v1[148] = swift_task_alloc();
  v1[149] = swift_task_alloc();
  v1[150] = swift_task_alloc();
  v1[151] = swift_task_alloc();
  v1[152] = swift_task_alloc();
  v1[153] = swift_task_alloc();
  v1[154] = swift_task_alloc();
  v1[155] = swift_task_alloc();
  v1[156] = swift_task_alloc();
  v24 = OUTLINED_FUNCTION_14_3();

  return MEMORY[0x2822009F8](v24, v25, v26);
}

uint64_t sub_266D5A314(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_27_3();
  a19 = v21;
  a20 = v22;
  OUTLINED_FUNCTION_30_2();
  a18 = v20;
  v23 = *(v20 + 712);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9B90, &qword_266DBB6E0);
  v24 = sub_266DA7FBC();
  *(v20 + 1256) = v24;
  if (qword_2800C93D8 != -1)
  {
    OUTLINED_FUNCTION_1_11();
  }

  v25 = sub_266DA94AC();
  __swift_project_value_buffer(v25, qword_2800E6498);
  v26 = v24;
  v27 = sub_266DA948C();
  v28 = sub_266DAAB0C();

  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    a9 = v30;
    *v29 = 136315138;
    v31 = OBJC_IVAR___FindDeviceAndPlaySoundIntentResponse_code;
    OUTLINED_FUNCTION_150();
    DeviceAndPlaySoundIntentResponse = FindDeviceAndPlaySoundIntentResponseCode.description.getter(*&v26[v31]);
    v34 = sub_266C22A3C(DeviceAndPlaySoundIntentResponse, v33, &a9);

    *(v29 + 4) = v34;
    _os_log_impl(&dword_266C08000, v27, v28, "FindDevice.HandleIntentStrategy.makeFailureHandlingIntentResponse() called with response code: %s", v29, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v30);
    OUTLINED_FUNCTION_6_1();
    OUTLINED_FUNCTION_6_1();
  }

  v35 = OBJC_IVAR___FindDeviceAndPlaySoundIntentResponse_code;
  OUTLINED_FUNCTION_150();
  switch(*&v26[v35])
  {
    case 'd':
      v72 = *(v20 + 1248);
      v73 = *(v20 + 1240);
      v74 = *(v20 + 728);
      v75 = *(v20 + 720);
      *(v20 + 1264) = *(v75 + 136);
      OUTLINED_FUNCTION_43();
      __swift_storeEnumTagSinglePayload(v76, v77, v78, v74);
      *v73 = 5;
      *(v73 + 8) = xmmword_266DB27B0;
      *(v73 + 24) = 0;
      OUTLINED_FUNCTION_32();
      swift_storeEnumTagMultiPayload();
      v79 = OUTLINED_FUNCTION_57_1();
      __swift_storeEnumTagSinglePayload(v79, v80, v81, v74);
      *(v20 + 1668) = 1;
      v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA058, &unk_266DB30D0);
      OUTLINED_FUNCTION_7_7(v82);
      *(v20 + 1272) = sub_266DA93CC();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC460, &unk_266DAFC20);
      v83 = OUTLINED_FUNCTION_101();
      *(v20 + 1280) = v83;
      *(v83 + 16) = xmmword_266DAE3B0;
      v84 = *(v75 + 128);
      v85 = swift_task_alloc();
      *(v20 + 1288) = v85;
      *v85 = v20;
      OUTLINED_FUNCTION_88_0(v85);
      OUTLINED_FUNCTION_26_4();

      return sub_266D44CAC();
    case 'e':
      v87 = *(v20 + 1184);
      v88 = *(v20 + 1176);
      v89 = *(v20 + 728);
      v90 = *(v20 + 720);
      *(v20 + 1352) = *(v90 + 136);
      OUTLINED_FUNCTION_43();
      __swift_storeEnumTagSinglePayload(v91, v92, v93, v89);
      *v88 = 5;
      *(v88 + 8) = xmmword_266DB27A0;
      *(v88 + 24) = 0;
      OUTLINED_FUNCTION_32();
      swift_storeEnumTagMultiPayload();
      v94 = OUTLINED_FUNCTION_57_1();
      __swift_storeEnumTagSinglePayload(v94, v95, v96, v89);
      *(v20 + 1667) = 1;
      v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA058, &unk_266DB30D0);
      OUTLINED_FUNCTION_7_7(v97);
      *(v20 + 1360) = sub_266DA93CC();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC460, &unk_266DAFC20);
      v98 = OUTLINED_FUNCTION_101();
      *(v20 + 1368) = v98;
      *(v98 + 16) = xmmword_266DAE3B0;
      v99 = *(v90 + 128);
      v100 = swift_task_alloc();
      *(v20 + 1376) = v100;
      *v100 = v20;
      OUTLINED_FUNCTION_88_0(v100);
      OUTLINED_FUNCTION_26_4();

      return sub_266D44C04();
    case 'f':
      v52 = [v26 &selRef__mapItemByStrippingOptionalData];
      if (!v52)
      {
        goto LABEL_19;
      }

      v53 = v52;
      v54 = sub_266CC7C44();

      if ((v54 & 1) == 0)
      {
        goto LABEL_19;
      }

      *(v20 + 1440) = [v26 &selRef__mapItemByStrippingOptionalData];
      swift_task_alloc();
      OUTLINED_FUNCTION_24_1();
      *(v20 + 1448) = v55;
      *v55 = v56;
      v55[1] = sub_266D5D56C;
      v57 = *(v20 + 720);
      v58 = *(v20 + 704);
      OUTLINED_FUNCTION_26_4();

      return sub_266D61118();
    case 'i':
    case 'j':
      v36 = __swift_project_boxed_opaque_existential_1((*(v20 + 720) + 224), *(*(v20 + 720) + 248));
      v37 = *v36;
      v38 = v36[1];
      swift_task_alloc();
      OUTLINED_FUNCTION_24_1();
      *(v20 + 1464) = v39;
      *v39 = v40;
      v39[1] = sub_266D5D8A0;
      v41 = *(v20 + 704);
      OUTLINED_FUNCTION_26_4();

      return sub_266CA23EC();
    case 'k':
      v44 = *(v20 + 712);
      v45 = sub_266DA7FCC();
      v46 = sub_266D63580(v45);
      if (!v46)
      {
        goto LABEL_32;
      }

      v49 = v46;
      if (sub_266C3A14C(v46, v47, v48))
      {
        sub_266CB9F54(0, (v49 & 0xC000000000000001) == 0, v49);
        if ((v49 & 0xC000000000000001) != 0)
        {
          v50 = MEMORY[0x26D5F1780](0, v49);
        }

        else
        {
          v50 = *(v49 + 32);
        }

        v51 = v50;
      }

      else
      {

LABEL_32:
        v51 = 0;
      }

      *(v20 + 1480) = v51;
      v115 = *(v20 + 1136);
      v116 = *(v20 + 728);
      *(v20 + 1488) = *(*(v20 + 720) + 136);
      OUTLINED_FUNCTION_43();
      __swift_storeEnumTagSinglePayload(v117, v118, v119, v120);
      if (v51)
      {
        v121 = sub_266C1CEB4(v51);
        v123 = v122;
        v124 = sub_266CC7C44();
      }

      else
      {
        v124 = 0;
        v121 = 0;
        v123 = 0;
      }

      v125 = *(v20 + 1128);
      v126 = *(v20 + 728);
      v127 = *(v20 + 720);
      *v125 = 4;
      *(v125 + 8) = v121;
      *(v125 + 16) = v123;
      *(v125 + 24) = v124 & 1;
      OUTLINED_FUNCTION_32();
      swift_storeEnumTagMultiPayload();
      v128 = OUTLINED_FUNCTION_57_1();
      __swift_storeEnumTagSinglePayload(v128, v129, v130, v126);
      *(v20 + 1666) = 1;
      v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA058, &unk_266DB30D0);
      OUTLINED_FUNCTION_7_7(v131);
      *(v20 + 1496) = sub_266DA93CC();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC460, &unk_266DAFC20);
      v132 = OUTLINED_FUNCTION_101();
      *(v20 + 1504) = v132;
      *(v132 + 16) = xmmword_266DAE3B0;
      v133 = *(v127 + 128);
      v134 = swift_task_alloc();
      *(v20 + 1512) = v134;
      *v134 = v20;
      OUTLINED_FUNCTION_88_0(v134);
      OUTLINED_FUNCTION_26_4();

      return sub_266D44B5C();
    default:
LABEL_19:
      v60 = *(v20 + 1088);
      v61 = *(v20 + 728);
      *(v20 + 1576) = *(*(v20 + 720) + 136);
      OUTLINED_FUNCTION_43();
      __swift_storeEnumTagSinglePayload(v62, v63, v64, v65);
      v66 = [v26 device];
      if (v66)
      {
        v67 = v66;
        v68 = sub_266C1CEB4(v66);
        v70 = v69;
        v71 = sub_266CC7C44();
      }

      else
      {
        v71 = 0;
        v68 = 0;
        v70 = 0;
      }

      v102 = *(v20 + 1080);
      v103 = *(v20 + 728);
      v104 = *(v20 + 720);
      v105 = *(v20 + 712);
      *v102 = 4;
      *(v102 + 8) = v68;
      *(v102 + 16) = v70;
      *(v102 + 24) = v71 & 1;
      swift_storeEnumTagMultiPayload();
      __swift_storeEnumTagSinglePayload(v102, 0, 1, v103);
      *(v20 + 1664) = 1;
      v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA058, &unk_266DB30D0);
      OUTLINED_FUNCTION_7_7(v106);
      *(v20 + 1584) = sub_266DA93CC();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC460, &unk_266DAFC20);
      v107 = OUTLINED_FUNCTION_101();
      *(v20 + 1592) = v107;
      *(v107 + 16) = xmmword_266DAE3B0;
      v108 = *(v104 + 128);
      *(v20 + 1665) = 3;
      v109 = sub_266DA7FCC();
      sub_266CAA15C();

      swift_task_alloc();
      OUTLINED_FUNCTION_24_1();
      *(v20 + 1600) = v110;
      *v110 = v111;
      v110[1] = sub_266D5F0D4;
      OUTLINED_FUNCTION_26_4();

      return sub_266D945C8(v112, v113);
  }
}

uint64_t sub_266D5AB84()
{
  OUTLINED_FUNCTION_34();
  v3 = v2;
  OUTLINED_FUNCTION_23_0();
  v5 = v4;
  OUTLINED_FUNCTION_10_3();
  *v6 = v5;
  v8 = *(v7 + 1288);
  v9 = *v1;
  OUTLINED_FUNCTION_9_2();
  *v10 = v9;
  v5[162] = v0;

  if (v0)
  {
    v11 = v5[156];
    OUTLINED_FUNCTION_84_0(v5[155]);
    v12 = OUTLINED_FUNCTION_32();
    sub_266C47654(v12, v13, &qword_266DB0080);
  }

  else
  {
    v5[163] = v3;
  }

  OUTLINED_FUNCTION_49();

  return MEMORY[0x2822009F8](v14, v15, v16);
}

uint64_t sub_266D5B198()
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_23_0();
  v2 = v1;
  OUTLINED_FUNCTION_10_3();
  *v3 = v2;
  v5 = *(v4 + 1320);
  v6 = *(v4 + 1280);
  v7 = *v0;
  OUTLINED_FUNCTION_9_2();
  *v8 = v7;

  __swift_destroy_boxed_opaque_existential_0((v2 + 616));
  __swift_destroy_boxed_opaque_existential_0((v2 + 576));
  v9 = OUTLINED_FUNCTION_14_3();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_266D5B2A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62)
{
  OUTLINED_FUNCTION_53_5();
  OUTLINED_FUNCTION_56_4();
  OUTLINED_FUNCTION_129();
  v65 = *(v62 + 856);
  v66 = *(v62 + 848);

  OUTLINED_FUNCTION_6_36();
  sub_266D636D8(v66, v67);
  v68 = OUTLINED_FUNCTION_4_4();
  sub_266D636D8(v68, v69);
  v70 = OUTLINED_FUNCTION_16_19();
  v71(v70);
  v72 = OUTLINED_FUNCTION_48_3();
  v73(v72);
  OUTLINED_FUNCTION_18_6();
  OUTLINED_FUNCTION_19_5();
  sub_266C47654(v63, &qword_2800CA040, &unk_266DB0070);
  sub_266C47654(v66, &qword_2800CA048, &unk_266DAFC00);

  OUTLINED_FUNCTION_0_78();

  OUTLINED_FUNCTION_15_4();
  OUTLINED_FUNCTION_52_6();

  return v75(v74, v75, v76, v77, v78, v79, v80, v81, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54, a55, a56, a57, a58, a59, a60, a61, a62);
}

uint64_t sub_266D5B568()
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_23_0();
  v2 = v1;
  OUTLINED_FUNCTION_10_3();
  *v3 = v2;
  v5 = *(v4 + 1328);
  v6 = *(v4 + 1280);
  v7 = *v0;
  OUTLINED_FUNCTION_9_2();
  *v8 = v7;

  __swift_destroy_boxed_opaque_existential_0((v2 + 536));
  v9 = OUTLINED_FUNCTION_14_3();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_266D5B668(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62)
{
  OUTLINED_FUNCTION_53_5();
  OUTLINED_FUNCTION_56_4();
  OUTLINED_FUNCTION_129();
  v66 = *(v63 + 840);

  OUTLINED_FUNCTION_1_58();
  sub_266D636D8(v66, v67);
  v68 = OUTLINED_FUNCTION_16_19();
  v69(v68);
  v70 = OUTLINED_FUNCTION_48_3();
  v71(v70);
  OUTLINED_FUNCTION_18_6();
  OUTLINED_FUNCTION_19_5();
  sub_266C47654(v64, &qword_2800CA040, &unk_266DB0070);
  sub_266C47654(v62, &qword_2800CA048, &unk_266DAFC00);

  OUTLINED_FUNCTION_0_78();

  OUTLINED_FUNCTION_15_4();
  OUTLINED_FUNCTION_52_6();

  return v73(v72, v73, v74, v75, v76, v77, v78, v79, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54, a55, a56, a57, a58, a59, a60, a61, a62);
}

uint64_t sub_266D5B920()
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_23_0();
  v2 = v1;
  OUTLINED_FUNCTION_10_3();
  *v3 = v2;
  v5 = *(v4 + 1336);
  v6 = *(v4 + 1280);
  v7 = *v0;
  OUTLINED_FUNCTION_9_2();
  *v8 = v7;

  __swift_destroy_boxed_opaque_existential_0((v2 + 496));
  v9 = OUTLINED_FUNCTION_14_3();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_266D5BA20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62)
{
  OUTLINED_FUNCTION_53_5();
  OUTLINED_FUNCTION_56_4();
  OUTLINED_FUNCTION_129();
  v66 = *(v63 + 832);

  OUTLINED_FUNCTION_1_58();
  sub_266D636D8(v66, v67);
  v68 = OUTLINED_FUNCTION_16_19();
  v69(v68);
  v70 = OUTLINED_FUNCTION_48_3();
  v71(v70);
  OUTLINED_FUNCTION_18_6();
  OUTLINED_FUNCTION_19_5();
  sub_266C47654(v64, &qword_2800CA040, &unk_266DB0070);
  sub_266C47654(v62, &qword_2800CA048, &unk_266DAFC00);

  OUTLINED_FUNCTION_0_78();

  OUTLINED_FUNCTION_15_4();
  OUTLINED_FUNCTION_52_6();

  return v73(v72, v73, v74, v75, v76, v77, v78, v79, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54, a55, a56, a57, a58, a59, a60, a61, a62);
}

uint64_t sub_266D5BCD8()
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_23_0();
  v2 = *(v1 + 1344);
  v3 = *(v1 + 1280);
  v4 = *v0;
  OUTLINED_FUNCTION_9_2();
  *v5 = v4;

  v6 = OUTLINED_FUNCTION_14_3();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_266D5BDD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62)
{
  OUTLINED_FUNCTION_53_5();
  OUTLINED_FUNCTION_56_4();
  OUTLINED_FUNCTION_129();

  v65 = OUTLINED_FUNCTION_16_19();
  v66(v65);
  v67 = OUTLINED_FUNCTION_48_3();
  v68(v67);
  OUTLINED_FUNCTION_18_6();
  OUTLINED_FUNCTION_19_5();
  sub_266C47654(v63, &qword_2800CA040, &unk_266DB0070);
  sub_266C47654(v62, &qword_2800CA048, &unk_266DAFC00);

  OUTLINED_FUNCTION_0_78();

  OUTLINED_FUNCTION_15_4();
  OUTLINED_FUNCTION_52_6();

  return v70(v69, v70, v71, v72, v73, v74, v75, v76, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54, a55, a56, a57, a58, a59, a60, a61, a62);
}

uint64_t sub_266D5C080()
{
  OUTLINED_FUNCTION_34();
  v3 = v2;
  OUTLINED_FUNCTION_23_0();
  v5 = v4;
  OUTLINED_FUNCTION_10_3();
  *v6 = v5;
  v8 = *(v7 + 1376);
  v9 = *v1;
  OUTLINED_FUNCTION_9_2();
  *v10 = v9;
  v5[173] = v0;

  if (v0)
  {
    v11 = v5[148];
    OUTLINED_FUNCTION_84_0(v5[147]);
    v12 = OUTLINED_FUNCTION_32();
    sub_266C47654(v12, v13, &qword_266DB0080);
  }

  else
  {
    v5[174] = v3;
  }

  OUTLINED_FUNCTION_49();

  return MEMORY[0x2822009F8](v14, v15, v16);
}

uint64_t sub_266D5C684()
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_23_0();
  v2 = v1;
  OUTLINED_FUNCTION_10_3();
  *v3 = v2;
  v5 = *(v4 + 1408);
  v6 = *(v4 + 1368);
  v7 = *v0;
  OUTLINED_FUNCTION_9_2();
  *v8 = v7;

  __swift_destroy_boxed_opaque_existential_0((v2 + 456));
  __swift_destroy_boxed_opaque_existential_0((v2 + 416));
  v9 = OUTLINED_FUNCTION_14_3();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_266D5C78C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62)
{
  OUTLINED_FUNCTION_53_5();
  OUTLINED_FUNCTION_56_4();
  OUTLINED_FUNCTION_125();
  v65 = *(v62 + 824);
  v66 = *(v62 + 816);

  OUTLINED_FUNCTION_6_36();
  sub_266D636D8(v66, v67);
  v68 = OUTLINED_FUNCTION_4_4();
  sub_266D636D8(v68, v69);
  v70 = OUTLINED_FUNCTION_17_24();
  v71(v70);
  v72 = OUTLINED_FUNCTION_48_3();
  v73(v72);
  OUTLINED_FUNCTION_18_6();
  OUTLINED_FUNCTION_19_5();
  sub_266C47654(v63, &qword_2800CA040, &unk_266DB0070);
  sub_266C47654(v66, &qword_2800CA048, &unk_266DAFC00);

  OUTLINED_FUNCTION_0_78();

  OUTLINED_FUNCTION_15_4();
  OUTLINED_FUNCTION_52_6();

  return v75(v74, v75, v76, v77, v78, v79, v80, v81, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54, a55, a56, a57, a58, a59, a60, a61, a62);
}