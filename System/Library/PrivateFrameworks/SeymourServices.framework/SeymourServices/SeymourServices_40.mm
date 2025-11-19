uint64_t sub_22727227C(uint64_t a1, uint64_t a2, void *a3, double a4)
{
  v134 = a2;
  v133 = a1;
  v6 = sub_227667780();
  v7 = *(v6 - 8);
  v131 = v6;
  v132 = v7;
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v115 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v115 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC4C0, qword_22767DB58);
  v130 = *(v14 - 8);
  v15 = *(v130 + 64);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v115 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v115 - v19;
  v21 = sub_227664530();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21);
  v25 = &v115 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = v135;
  result = sub_227270D9C(v133, v134, a3);
  if (v26)
  {
    return result;
  }

  v128 = 0;
  v129 = v21;
  v134 = v25;
  v135 = result;
  v133 = v22;
  v125 = v20;
  v121 = v18;
  v122 = v14;
  v123 = v13;
  v124 = v11;
  v28 = __swift_project_boxed_opaque_existential_0(a3, a3[3]);
  v29 = *v28;
  v30 = v28[1];
  v31 = *(v28 + 16);
  v32 = v28[3];
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9190, qword_227673CB0);
  v34 = *(v33 + 48);
  v35 = *(v33 + 52);
  v36 = swift_allocObject();
  v37 = v29;
  v38 = v30;

  sub_22766A070();
  *(v36 + 16) = v37;
  *(v36 + 24) = v38;
  *(v36 + 32) = v31;
  *(v36 + 40) = v32;
  swift_getKeyPath();
  v139 = MEMORY[0x277D839F8];
  *v138 = a4;
  v39 = sub_226E99364(0, &qword_281398B40, 0x277CCA9C0);

  v126 = v39;
  v40 = sub_22766C820();
  sub_226E93170(v138, v136, &unk_27D7BC990, &qword_227670A30);
  v41 = v137;
  if (v137)
  {
    v42 = __swift_project_boxed_opaque_existential_0(v136, v137);
    v43 = *(v41 - 8);
    v44 = *(v43 + 64);
    MEMORY[0x28223BE20](v42);
    v46 = &v115 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v43 + 16))(v46);
    v47 = sub_22766D170();
    (*(v43 + 8))(v46, v41);
    __swift_destroy_boxed_opaque_existential_0(v136);
  }

  else
  {
    v47 = 0;
  }

  v48 = objc_opt_self();
  v49 = [v48 expressionForConstantValue_];
  swift_unknownObjectRelease();
  i = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB950, &unk_227670BB0);
  v50 = [objc_allocWithZone(i) initWithLeftExpression:v40 rightExpression:v49 modifier:0 type:2 options:0];

  sub_226E97D1C(v138, &unk_27D7BC990, &qword_227670A30);
  swift_beginAccess();
  v51 = v50;
  v52 = sub_22766A080();
  v54 = v53;
  MEMORY[0x22AA985C0]();
  if (*((*v54 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v54 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    goto LABEL_41;
  }

  while (1)
  {
    sub_22766C3A0();
    v52(v138, 0);
    swift_endAccess();

    swift_getKeyPath();
    KeyPath = swift_getKeyPath();

    v56 = v128;
    v57 = sub_22726DB2C(v135, sub_226F92188, KeyPath);
    v128 = v56;

    v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8470, qword_227677CA0);
    v138[0] = v57;

    v58 = sub_22766C820();
    sub_226E93170(v138, v136, &unk_27D7BC990, &qword_227670A30);
    v59 = v137;
    if (v137)
    {
      v60 = __swift_project_boxed_opaque_existential_0(v136, v137);
      v126 = &v115;
      v61 = v48;
      v62 = *(v59 - 8);
      v63 = *(v62 + 64);
      MEMORY[0x28223BE20](v60);
      v65 = &v115 - ((v64 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v62 + 16))(v65);
      v66 = sub_22766D170();
      (*(v62 + 8))(v65, v59);
      v48 = v61;
      __swift_destroy_boxed_opaque_existential_0(v136);
    }

    else
    {
      v66 = 0;
    }

    v67 = [v48 expressionForConstantValue_];
    swift_unknownObjectRelease();
    [objc_allocWithZone(i) initWithLeftExpression:v58 rightExpression:v67 modifier:0 type:10 options:0];

    sub_226E97D1C(v138, &unk_27D7BC990, &qword_227670A30);
    swift_beginAccess();
    v68 = sub_22766A080();
    v70 = v69;
    MEMORY[0x22AA985C0]();
    if (*((*v70 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v70 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v114 = *((*v70 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_22766C360();
    }

    sub_22766C3A0();
    v68(v138, 0);
    swift_endAccess();

    v71 = v128;
    v72 = sub_227232EB8(100);
    if (v71)
    {

      swift_setDeallocating();

      v73 = *(v36 + 40);

      v74 = qword_2813B2078;
      v75 = sub_22766A100();
      (*(*(v75 - 8) + 8))(v36 + v74, v75);
      v76 = *(*v36 + 48);
      v77 = *(*v36 + 52);
      return swift_deallocClassInstance();
    }

    v78 = v72;
    swift_setDeallocating();

    v79 = *(v36 + 40);

    v80 = qword_2813B2078;
    v81 = sub_22766A100();
    (*(*(v81 - 8) + 8))(v36 + v80, v81);
    v82 = *(*v36 + 48);
    v83 = *(*v36 + 52);
    swift_deallocClassInstance();
    v48 = sub_22722F80C(v135);

    if (v48[2])
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B97B8, &qword_227674C10);
      v84 = sub_22766D010();
    }

    else
    {
      v84 = MEMORY[0x277D84F98];
    }

    v52 = v129;
    v85 = v134;
    v138[0] = v84;

    sub_22726D218(v86, 1, v138);
    v126 = 0;

    v88 = v78 + 56;
    v87 = *(v78 + 7);
    v89 = 1 << v78[32];
    v90 = -1;
    v135 = v138[0];
    if (v89 < 64)
    {
      v90 = ~(-1 << v89);
    }

    v36 = v90 & v87;
    v51 = ((v89 + 63) >> 6);
    v91 = v133;
    v128 = v133 + 16;
    v120 = v132 + 16;
    v119 = v132 + 32;
    v118 = v132 + 8;
    v117 = (v133 + 32);
    v92 = (v133 + 8);

    v93 = 0;
    for (i = MEMORY[0x277D84F90]; v36; v78 = v48)
    {
LABEL_27:
      while (1)
      {
        v95 = __clz(__rbit64(v36));
        v36 &= v36 - 1;
        v48 = v78;
        (*(v91 + 16))(v85, *(v78 + 6) + *(v91 + 72) * (v95 | (v93 << 6)), v52);
        v96 = sub_2276644D0();
        if (*(v135 + 16))
        {
          break;
        }

LABEL_22:
        v85 = v134;
        (*v92)(v134, v52);
        v91 = v133;
        v78 = v48;
        if (!v36)
        {
          goto LABEL_23;
        }
      }

      v98 = sub_226E92000(v96, v97);
      v100 = v99;
      v52 = v129;

      if ((v100 & 1) == 0)
      {
        goto LABEL_22;
      }

      v101 = v132;
      (*(v132 + 16))(v124, *(v135 + 56) + *(v132 + 72) * v98, v131);
      v102 = v123;
      (*(v101 + 32))(v123, v124, v131);
      v116 = *(v122 + 48);
      v103 = v121;
      sub_227667770();
      (*(v101 + 8))(v102, v131);
      (*v117)(v103 + v116, v134, v129);
      sub_226E95D18(v103, v125, &qword_27D7BC4C0, qword_22767DB58);
      v104 = i;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v104 = sub_2273A4F50(0, *(v104 + 2) + 1, 1, v104);
      }

      v52 = v129;
      v105 = v130;
      v107 = *(v104 + 2);
      v106 = *(v104 + 3);
      i = v104;
      v108 = v125;
      if (v107 >= v106 >> 1)
      {
        v110 = sub_2273A4F50(v106 > 1, v107 + 1, 1, i);
        v105 = v130;
        i = v110;
        v108 = v125;
      }

      v109 = i;
      *(i + 2) = v107 + 1;
      sub_226E95D18(v108, v109 + ((*(v105 + 80) + 32) & ~*(v105 + 80)) + *(v105 + 72) * v107, &qword_27D7BC4C0, qword_22767DB58);
      v91 = v133;
      v85 = v134;
    }

LABEL_23:
    v94 = v93 + 1;
    if (!__OFADD__(v93, 1))
    {
      break;
    }

    __break(1u);
LABEL_41:
    sub_22766C360();
  }

  if (v94 < v51)
  {
    v36 = *&v88[8 * v94];
    ++v93;
    if (v36)
    {
      v93 = v94;
      goto LABEL_27;
    }

    goto LABEL_23;
  }

  v111 = i;
  if (*(i + 2))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B97B0, &unk_22767DC10);
    v112 = sub_22766D010();
  }

  else
  {
    v112 = MEMORY[0x277D84F98];
  }

  v138[0] = v112;
  v113 = v126;
  sub_227271C20(v111, 1, v138);

  if (!v113)
  {
    return v138[0];
  }

  __break(1u);
  return result;
}

uint64_t sub_227273014(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = sub_22766BFD0();
  v4 = [v2 entityForName:v3 inManagedObjectContext:a1];

  if (v4)
  {
    v5 = [v4 relationshipsByName];

    sub_226E99364(0, &qword_281398A78, 0x277CBE500);
    v6 = sub_22766BEB0();
  }

  else
  {
    v6 = sub_2271480A0(MEMORY[0x277D84F90]);
  }

  v7 = 1 << *(v6 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(v6 + 64);
  v10 = (v7 + 63) >> 6;

  v12 = 0;
  v30 = MEMORY[0x277D84F90];
  while (v9)
  {
LABEL_14:
    v14 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
    v15 = v14 | (v12 << 6);
    v16 = (*(v6 + 48) + 16 * v15);
    v17 = *v16;
    v18 = v16[1];
    v19 = *(*(v6 + 56) + 8 * v15);

    v20 = v19;
    v21 = [v20 userInfo];
    if (!v21)
    {

      v32 = 0u;
      v33 = 0u;
      goto LABEL_8;
    }

    v22 = v21;
    v23 = sub_22766BEB0();

    sub_22766CDA0();
    if (!*(v23 + 16) || (v24 = sub_226E9BF6C(&v31), (v25 & 1) == 0))
    {

      sub_226E9B62C(&v31);
      v32 = 0u;
      v33 = 0u;
      goto LABEL_26;
    }

    sub_226E97CC0(*(v23 + 56) + 32 * v24, &v32);
    sub_226E9B62C(&v31);

    if (*(&v33 + 1))
    {
      if (swift_dynamicCast())
      {
        v26 = sub_226EB5278();

        if ((v26 & 1) == 0)
        {
          goto LABEL_28;
        }

        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_226EB3F78(0, *(v30 + 16) + 1, 1, v30);
          v30 = result;
        }

        v28 = *(v30 + 16);
        v27 = *(v30 + 24);
        if (v28 >= v27 >> 1)
        {
          result = sub_226EB3F78((v27 > 1), v28 + 1, 1, v30);
          v30 = result;
        }

        *(v30 + 16) = v28 + 1;
        v29 = v30 + 16 * v28;
        *(v29 + 32) = v17;
        *(v29 + 40) = v18;
      }

      else
      {

LABEL_28:
      }
    }

    else
    {
LABEL_26:

LABEL_8:
      result = sub_226E97D1C(&v32, &unk_27D7BC990, &qword_227670A30);
    }
  }

  while (1)
  {
    v13 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v13 >= v10)
    {

      return v30;
    }

    v9 = *(v6 + 64 + 8 * v13);
    ++v12;
    if (v9)
    {
      v12 = v13;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2272733BC(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = sub_22766BFD0();
  v4 = [v2 entityForName:v3 inManagedObjectContext:a1];

  if (v4)
  {
    v5 = [v4 relationshipsByName];

    sub_226E99364(0, &qword_281398A78, 0x277CBE500);
    v6 = sub_22766BEB0();
  }

  else
  {
    v6 = sub_2271480A0(MEMORY[0x277D84F90]);
  }

  v7 = 1 << *(v6 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(v6 + 64);
  v10 = (v7 + 63) >> 6;

  v12 = 0;
  v30 = MEMORY[0x277D84F90];
  while (v9)
  {
LABEL_14:
    v14 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
    v15 = v14 | (v12 << 6);
    v16 = (*(v6 + 48) + 16 * v15);
    v17 = *v16;
    v18 = v16[1];
    v19 = *(*(v6 + 56) + 8 * v15);

    v20 = v19;
    v21 = [v20 userInfo];
    if (!v21)
    {

      v32 = 0u;
      v33 = 0u;
      goto LABEL_8;
    }

    v22 = v21;
    v23 = sub_22766BEB0();

    sub_22766CDA0();
    if (!*(v23 + 16) || (v24 = sub_226E9BF6C(&v31), (v25 & 1) == 0))
    {

      sub_226E9B62C(&v31);
      v32 = 0u;
      v33 = 0u;
      goto LABEL_26;
    }

    sub_226E97CC0(*(v23 + 56) + 32 * v24, &v32);
    sub_226E9B62C(&v31);

    if (*(&v33 + 1))
    {
      if (swift_dynamicCast())
      {
        v26 = sub_226EB5278();

        if ((v26 & 1) == 0)
        {
          goto LABEL_28;
        }

        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_226EB3F78(0, *(v30 + 16) + 1, 1, v30);
          v30 = result;
        }

        v28 = *(v30 + 16);
        v27 = *(v30 + 24);
        if (v28 >= v27 >> 1)
        {
          result = sub_226EB3F78((v27 > 1), v28 + 1, 1, v30);
          v30 = result;
        }

        *(v30 + 16) = v28 + 1;
        v29 = v30 + 16 * v28;
        *(v29 + 32) = v17;
        *(v29 + 40) = v18;
      }

      else
      {

LABEL_28:
      }
    }

    else
    {
LABEL_26:

LABEL_8:
      result = sub_226E97D1C(&v32, &unk_27D7BC990, &qword_227670A30);
    }
  }

  while (1)
  {
    v13 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v13 >= v10)
    {

      return v30;
    }

    v9 = *(v6 + 64 + 8 * v13);
    ++v12;
    if (v9)
    {
      v12 = v13;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_227273764(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = sub_22766BFD0();
  v4 = [v2 entityForName:v3 inManagedObjectContext:a1];

  if (v4)
  {
    v5 = [v4 relationshipsByName];

    sub_226E99364(0, &qword_281398A78, 0x277CBE500);
    v6 = sub_22766BEB0();
  }

  else
  {
    v6 = sub_2271480A0(MEMORY[0x277D84F90]);
  }

  v7 = 1 << *(v6 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(v6 + 64);
  v10 = (v7 + 63) >> 6;

  v12 = 0;
  v30 = MEMORY[0x277D84F90];
  while (v9)
  {
LABEL_14:
    v14 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
    v15 = v14 | (v12 << 6);
    v16 = (*(v6 + 48) + 16 * v15);
    v17 = *v16;
    v18 = v16[1];
    v19 = *(*(v6 + 56) + 8 * v15);

    v20 = v19;
    v21 = [v20 userInfo];
    if (!v21)
    {

      v32 = 0u;
      v33 = 0u;
      goto LABEL_8;
    }

    v22 = v21;
    v23 = sub_22766BEB0();

    sub_22766CDA0();
    if (!*(v23 + 16) || (v24 = sub_226E9BF6C(&v31), (v25 & 1) == 0))
    {

      sub_226E9B62C(&v31);
      v32 = 0u;
      v33 = 0u;
      goto LABEL_26;
    }

    sub_226E97CC0(*(v23 + 56) + 32 * v24, &v32);
    sub_226E9B62C(&v31);

    if (*(&v33 + 1))
    {
      if (swift_dynamicCast())
      {
        v26 = sub_226EB5278();

        if ((v26 & 1) == 0)
        {
          goto LABEL_28;
        }

        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_226EB3F78(0, *(v30 + 16) + 1, 1, v30);
          v30 = result;
        }

        v28 = *(v30 + 16);
        v27 = *(v30 + 24);
        if (v28 >= v27 >> 1)
        {
          result = sub_226EB3F78((v27 > 1), v28 + 1, 1, v30);
          v30 = result;
        }

        *(v30 + 16) = v28 + 1;
        v29 = v30 + 16 * v28;
        *(v29 + 32) = v17;
        *(v29 + 40) = v18;
      }

      else
      {

LABEL_28:
      }
    }

    else
    {
LABEL_26:

LABEL_8:
      result = sub_226E97D1C(&v32, &unk_27D7BC990, &qword_227670A30);
    }
  }

  while (1)
  {
    v13 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v13 >= v10)
    {

      return v30;
    }

    v9 = *(v6 + 64 + 8 * v13);
    ++v12;
    if (v9)
    {
      v12 = v13;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

char *sub_227273B0C(uint64_t a1, void *a2)
{
  v4 = __swift_project_boxed_opaque_existential_0(a2, a2[3]);
  v5 = *v4;
  v6 = v4[1];
  v7 = *(v4 + 16);
  v8 = v4[3];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC228, qword_22767CFB0);
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  v12 = swift_allocObject();
  v13 = v5;
  v14 = v6;

  sub_22766A070();
  *(v12 + 16) = v13;
  *(v12 + 24) = v14;
  *(v12 + 32) = v7;
  *(v12 + 40) = v8;
  swift_getKeyPath();
  v15 = sub_227230964(a1);
  v45[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC4E0, &qword_22767DD90);
  v45[0] = v15;
  sub_226E99364(0, &qword_281398B40, 0x277CCA9C0);

  v16 = sub_22766C820();
  sub_226E93170(v45, v43, &unk_27D7BC990, &qword_227670A30);
  v17 = v44;
  if (v44)
  {
    v18 = __swift_project_boxed_opaque_existential_0(v43, v44);
    v19 = *(v17 - 8);
    v20 = *(v19 + 64);
    MEMORY[0x28223BE20](v18);
    v22 = v43 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v19 + 16))(v22);
    v23 = sub_22766D170();
    (*(v19 + 8))(v22, v17);
    __swift_destroy_boxed_opaque_existential_0(v43);
  }

  else
  {
    v23 = 0;
  }

  v24 = [objc_opt_self() expressionForConstantValue_];
  swift_unknownObjectRelease();
  [objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC230 qword_22767D000))];

  sub_226E97D1C(v45, &unk_27D7BC990, &qword_227670A30);
  swift_beginAccess();
  v25 = sub_22766A080();
  v27 = v26;
  MEMORY[0x22AA985C0]();
  if (*((*v27 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v27 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v42 = *((*v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_22766C360();
  }

  sub_22766C3A0();
  v25(v45, 0);
  swift_endAccess();

  v28 = sub_226E9AABC(100);
  if (v2)
  {
    swift_setDeallocating();

    v29 = *(v12 + 40);

    v30 = qword_2813B2078;
    v31 = sub_22766A100();
    (*(*(v31 - 8) + 8))(v12 + v30, v31);
    v32 = *(*v12 + 48);
    v33 = *(*v12 + 52);
    swift_deallocClassInstance();
  }

  else
  {
    swift_setDeallocating();

    v34 = *(v12 + 40);

    v35 = qword_2813B2078;
    v36 = sub_22766A100();
    (*(*(v36 - 8) + 8))(v12 + v35, v36);
    v37 = *(*v12 + 48);
    v38 = *(*v12 + 52);
    swift_deallocClassInstance();
    if (!*(v28 + 2))
    {

      v39 = sub_227664EC0();
      sub_226E9CF88(&qword_28139B898, MEMORY[0x277D51210]);
      swift_allocError();
      (*(*(v39 - 8) + 104))(v40, *MEMORY[0x277D51188], v39);
      swift_willThrow();
    }
  }

  return v28;
}

uint64_t sub_227274068(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = sub_22766BFD0();
  v4 = [v2 entityForName:v3 inManagedObjectContext:a1];

  if (v4)
  {
    v5 = [v4 relationshipsByName];

    sub_226E99364(0, &qword_281398A78, 0x277CBE500);
    v6 = sub_22766BEB0();
  }

  else
  {
    v6 = sub_2271480A0(MEMORY[0x277D84F90]);
  }

  v7 = 1 << *(v6 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(v6 + 64);
  v10 = (v7 + 63) >> 6;

  v12 = 0;
  v30 = MEMORY[0x277D84F90];
  while (v9)
  {
LABEL_14:
    v14 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
    v15 = v14 | (v12 << 6);
    v16 = (*(v6 + 48) + 16 * v15);
    v17 = *v16;
    v18 = v16[1];
    v19 = *(*(v6 + 56) + 8 * v15);

    v20 = v19;
    v21 = [v20 userInfo];
    if (!v21)
    {

      v32 = 0u;
      v33 = 0u;
      goto LABEL_8;
    }

    v22 = v21;
    v23 = sub_22766BEB0();

    sub_22766CDA0();
    if (!*(v23 + 16) || (v24 = sub_226E9BF6C(&v31), (v25 & 1) == 0))
    {

      sub_226E9B62C(&v31);
      v32 = 0u;
      v33 = 0u;
      goto LABEL_26;
    }

    sub_226E97CC0(*(v23 + 56) + 32 * v24, &v32);
    sub_226E9B62C(&v31);

    if (*(&v33 + 1))
    {
      if (swift_dynamicCast())
      {
        v26 = sub_226EB5278();

        if ((v26 & 1) == 0)
        {
          goto LABEL_28;
        }

        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_226EB3F78(0, *(v30 + 16) + 1, 1, v30);
          v30 = result;
        }

        v28 = *(v30 + 16);
        v27 = *(v30 + 24);
        if (v28 >= v27 >> 1)
        {
          result = sub_226EB3F78((v27 > 1), v28 + 1, 1, v30);
          v30 = result;
        }

        *(v30 + 16) = v28 + 1;
        v29 = v30 + 16 * v28;
        *(v29 + 32) = v17;
        *(v29 + 40) = v18;
      }

      else
      {

LABEL_28:
      }
    }

    else
    {
LABEL_26:

LABEL_8:
      result = sub_226E97D1C(&v32, &unk_27D7BC990, &qword_227670A30);
    }
  }

  while (1)
  {
    v13 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v13 >= v10)
    {

      return v30;
    }

    v9 = *(v6 + 64 + 8 * v13);
    ++v12;
    if (v9)
    {
      v12 = v13;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_227274410(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = sub_22766BFD0();
  v4 = [v2 entityForName:v3 inManagedObjectContext:a1];

  if (v4)
  {
    v5 = [v4 relationshipsByName];

    sub_226E99364(0, &qword_281398A78, 0x277CBE500);
    v6 = sub_22766BEB0();
  }

  else
  {
    v6 = sub_2271480A0(MEMORY[0x277D84F90]);
  }

  v7 = 1 << *(v6 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(v6 + 64);
  v10 = (v7 + 63) >> 6;

  v12 = 0;
  v30 = MEMORY[0x277D84F90];
  while (v9)
  {
LABEL_14:
    v14 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
    v15 = v14 | (v12 << 6);
    v16 = (*(v6 + 48) + 16 * v15);
    v17 = *v16;
    v18 = v16[1];
    v19 = *(*(v6 + 56) + 8 * v15);

    v20 = v19;
    v21 = [v20 userInfo];
    if (!v21)
    {

      v32 = 0u;
      v33 = 0u;
      goto LABEL_8;
    }

    v22 = v21;
    v23 = sub_22766BEB0();

    sub_22766CDA0();
    if (!*(v23 + 16) || (v24 = sub_226E9BF6C(&v31), (v25 & 1) == 0))
    {

      sub_226E9B62C(&v31);
      v32 = 0u;
      v33 = 0u;
      goto LABEL_26;
    }

    sub_226E97CC0(*(v23 + 56) + 32 * v24, &v32);
    sub_226E9B62C(&v31);

    if (*(&v33 + 1))
    {
      if (swift_dynamicCast())
      {
        v26 = sub_226EB5278();

        if ((v26 & 1) == 0)
        {
          goto LABEL_28;
        }

        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_226EB3F78(0, *(v30 + 16) + 1, 1, v30);
          v30 = result;
        }

        v28 = *(v30 + 16);
        v27 = *(v30 + 24);
        if (v28 >= v27 >> 1)
        {
          result = sub_226EB3F78((v27 > 1), v28 + 1, 1, v30);
          v30 = result;
        }

        *(v30 + 16) = v28 + 1;
        v29 = v30 + 16 * v28;
        *(v29 + 32) = v17;
        *(v29 + 40) = v18;
      }

      else
      {

LABEL_28:
      }
    }

    else
    {
LABEL_26:

LABEL_8:
      result = sub_226E97D1C(&v32, &unk_27D7BC990, &qword_227670A30);
    }
  }

  while (1)
  {
    v13 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v13 >= v10)
    {

      return v30;
    }

    v9 = *(v6 + 64 + 8 * v13);
    ++v12;
    if (v9)
    {
      v12 = v13;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2272747B8(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = sub_22766BFD0();
  v4 = [v2 entityForName:v3 inManagedObjectContext:a1];

  if (v4)
  {
    v5 = [v4 relationshipsByName];

    sub_226E99364(0, &qword_281398A78, 0x277CBE500);
    v6 = sub_22766BEB0();
  }

  else
  {
    v6 = sub_2271480A0(MEMORY[0x277D84F90]);
  }

  v7 = 1 << *(v6 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(v6 + 64);
  v10 = (v7 + 63) >> 6;

  v12 = 0;
  v30 = MEMORY[0x277D84F90];
  while (v9)
  {
LABEL_14:
    v14 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
    v15 = v14 | (v12 << 6);
    v16 = (*(v6 + 48) + 16 * v15);
    v17 = *v16;
    v18 = v16[1];
    v19 = *(*(v6 + 56) + 8 * v15);

    v20 = v19;
    v21 = [v20 userInfo];
    if (!v21)
    {

      v32 = 0u;
      v33 = 0u;
      goto LABEL_8;
    }

    v22 = v21;
    v23 = sub_22766BEB0();

    sub_22766CDA0();
    if (!*(v23 + 16) || (v24 = sub_226E9BF6C(&v31), (v25 & 1) == 0))
    {

      sub_226E9B62C(&v31);
      v32 = 0u;
      v33 = 0u;
      goto LABEL_26;
    }

    sub_226E97CC0(*(v23 + 56) + 32 * v24, &v32);
    sub_226E9B62C(&v31);

    if (*(&v33 + 1))
    {
      if (swift_dynamicCast())
      {
        v26 = sub_226EB5278();

        if ((v26 & 1) == 0)
        {
          goto LABEL_28;
        }

        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_226EB3F78(0, *(v30 + 16) + 1, 1, v30);
          v30 = result;
        }

        v28 = *(v30 + 16);
        v27 = *(v30 + 24);
        if (v28 >= v27 >> 1)
        {
          result = sub_226EB3F78((v27 > 1), v28 + 1, 1, v30);
          v30 = result;
        }

        *(v30 + 16) = v28 + 1;
        v29 = v30 + 16 * v28;
        *(v29 + 32) = v17;
        *(v29 + 40) = v18;
      }

      else
      {

LABEL_28:
      }
    }

    else
    {
LABEL_26:

LABEL_8:
      result = sub_226E97D1C(&v32, &unk_27D7BC990, &qword_227670A30);
    }
  }

  while (1)
  {
    v13 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v13 >= v10)
    {

      return v30;
    }

    v9 = *(v6 + 64 + 8 * v13);
    ++v12;
    if (v9)
    {
      v12 = v13;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_227274B60(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = sub_22766BFD0();
  v4 = [v2 entityForName:v3 inManagedObjectContext:a1];

  if (v4)
  {
    v5 = [v4 relationshipsByName];

    sub_226E99364(0, &qword_281398A78, 0x277CBE500);
    v6 = sub_22766BEB0();
  }

  else
  {
    v6 = sub_2271480A0(MEMORY[0x277D84F90]);
  }

  v7 = 1 << *(v6 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(v6 + 64);
  v10 = (v7 + 63) >> 6;

  v12 = 0;
  v30 = MEMORY[0x277D84F90];
  while (v9)
  {
LABEL_14:
    v14 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
    v15 = v14 | (v12 << 6);
    v16 = (*(v6 + 48) + 16 * v15);
    v17 = *v16;
    v18 = v16[1];
    v19 = *(*(v6 + 56) + 8 * v15);

    v20 = v19;
    v21 = [v20 userInfo];
    if (!v21)
    {

      v32 = 0u;
      v33 = 0u;
      goto LABEL_8;
    }

    v22 = v21;
    v23 = sub_22766BEB0();

    sub_22766CDA0();
    if (!*(v23 + 16) || (v24 = sub_226E9BF6C(&v31), (v25 & 1) == 0))
    {

      sub_226E9B62C(&v31);
      v32 = 0u;
      v33 = 0u;
      goto LABEL_26;
    }

    sub_226E97CC0(*(v23 + 56) + 32 * v24, &v32);
    sub_226E9B62C(&v31);

    if (*(&v33 + 1))
    {
      if (swift_dynamicCast())
      {
        v26 = sub_226EB5278();

        if ((v26 & 1) == 0)
        {
          goto LABEL_28;
        }

        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_226EB3F78(0, *(v30 + 16) + 1, 1, v30);
          v30 = result;
        }

        v28 = *(v30 + 16);
        v27 = *(v30 + 24);
        if (v28 >= v27 >> 1)
        {
          result = sub_226EB3F78((v27 > 1), v28 + 1, 1, v30);
          v30 = result;
        }

        *(v30 + 16) = v28 + 1;
        v29 = v30 + 16 * v28;
        *(v29 + 32) = v17;
        *(v29 + 40) = v18;
      }

      else
      {

LABEL_28:
      }
    }

    else
    {
LABEL_26:

LABEL_8:
      result = sub_226E97D1C(&v32, &unk_27D7BC990, &qword_227670A30);
    }
  }

  while (1)
  {
    v13 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v13 >= v10)
    {

      return v30;
    }

    v9 = *(v6 + 64 + 8 * v13);
    ++v12;
    if (v9)
    {
      v12 = v13;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_227274F08(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = sub_22766BFD0();
  v4 = [v2 entityForName:v3 inManagedObjectContext:a1];

  if (v4)
  {
    v5 = [v4 relationshipsByName];

    sub_226E99364(0, &qword_281398A78, 0x277CBE500);
    v6 = sub_22766BEB0();
  }

  else
  {
    v6 = sub_2271480A0(MEMORY[0x277D84F90]);
  }

  v7 = 1 << *(v6 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(v6 + 64);
  v10 = (v7 + 63) >> 6;

  v12 = 0;
  v30 = MEMORY[0x277D84F90];
  while (v9)
  {
LABEL_14:
    v14 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
    v15 = v14 | (v12 << 6);
    v16 = (*(v6 + 48) + 16 * v15);
    v17 = *v16;
    v18 = v16[1];
    v19 = *(*(v6 + 56) + 8 * v15);

    v20 = v19;
    v21 = [v20 userInfo];
    if (!v21)
    {

      v32 = 0u;
      v33 = 0u;
      goto LABEL_8;
    }

    v22 = v21;
    v23 = sub_22766BEB0();

    sub_22766CDA0();
    if (!*(v23 + 16) || (v24 = sub_226E9BF6C(&v31), (v25 & 1) == 0))
    {

      sub_226E9B62C(&v31);
      v32 = 0u;
      v33 = 0u;
      goto LABEL_26;
    }

    sub_226E97CC0(*(v23 + 56) + 32 * v24, &v32);
    sub_226E9B62C(&v31);

    if (*(&v33 + 1))
    {
      if (swift_dynamicCast())
      {
        v26 = sub_226EB5278();

        if ((v26 & 1) == 0)
        {
          goto LABEL_28;
        }

        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_226EB3F78(0, *(v30 + 16) + 1, 1, v30);
          v30 = result;
        }

        v28 = *(v30 + 16);
        v27 = *(v30 + 24);
        if (v28 >= v27 >> 1)
        {
          result = sub_226EB3F78((v27 > 1), v28 + 1, 1, v30);
          v30 = result;
        }

        *(v30 + 16) = v28 + 1;
        v29 = v30 + 16 * v28;
        *(v29 + 32) = v17;
        *(v29 + 40) = v18;
      }

      else
      {

LABEL_28:
      }
    }

    else
    {
LABEL_26:

LABEL_8:
      result = sub_226E97D1C(&v32, &unk_27D7BC990, &qword_227670A30);
    }
  }

  while (1)
  {
    v13 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v13 >= v10)
    {

      return v30;
    }

    v9 = *(v6 + 64 + 8 * v13);
    ++v12;
    if (v9)
    {
      v12 = v13;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2272752B0(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = sub_22766BFD0();
  v4 = [v2 entityForName:v3 inManagedObjectContext:a1];

  if (v4)
  {
    v5 = [v4 relationshipsByName];

    sub_226E99364(0, &qword_281398A78, 0x277CBE500);
    v6 = sub_22766BEB0();
  }

  else
  {
    v6 = sub_2271480A0(MEMORY[0x277D84F90]);
  }

  v7 = 1 << *(v6 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(v6 + 64);
  v10 = (v7 + 63) >> 6;

  v12 = 0;
  v30 = MEMORY[0x277D84F90];
  while (v9)
  {
LABEL_14:
    v14 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
    v15 = v14 | (v12 << 6);
    v16 = (*(v6 + 48) + 16 * v15);
    v17 = *v16;
    v18 = v16[1];
    v19 = *(*(v6 + 56) + 8 * v15);

    v20 = v19;
    v21 = [v20 userInfo];
    if (!v21)
    {

      v32 = 0u;
      v33 = 0u;
      goto LABEL_8;
    }

    v22 = v21;
    v23 = sub_22766BEB0();

    sub_22766CDA0();
    if (!*(v23 + 16) || (v24 = sub_226E9BF6C(&v31), (v25 & 1) == 0))
    {

      sub_226E9B62C(&v31);
      v32 = 0u;
      v33 = 0u;
      goto LABEL_26;
    }

    sub_226E97CC0(*(v23 + 56) + 32 * v24, &v32);
    sub_226E9B62C(&v31);

    if (*(&v33 + 1))
    {
      if (swift_dynamicCast())
      {
        v26 = sub_226EB5278();

        if ((v26 & 1) == 0)
        {
          goto LABEL_28;
        }

        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_226EB3F78(0, *(v30 + 16) + 1, 1, v30);
          v30 = result;
        }

        v28 = *(v30 + 16);
        v27 = *(v30 + 24);
        if (v28 >= v27 >> 1)
        {
          result = sub_226EB3F78((v27 > 1), v28 + 1, 1, v30);
          v30 = result;
        }

        *(v30 + 16) = v28 + 1;
        v29 = v30 + 16 * v28;
        *(v29 + 32) = v17;
        *(v29 + 40) = v18;
      }

      else
      {

LABEL_28:
      }
    }

    else
    {
LABEL_26:

LABEL_8:
      result = sub_226E97D1C(&v32, &unk_27D7BC990, &qword_227670A30);
    }
  }

  while (1)
  {
    v13 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v13 >= v10)
    {

      return v30;
    }

    v9 = *(v6 + 64 + 8 * v13);
    ++v12;
    if (v9)
    {
      v12 = v13;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_227275658(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = sub_22766BFD0();
  v4 = [v2 entityForName:v3 inManagedObjectContext:a1];

  if (v4)
  {
    v5 = [v4 relationshipsByName];

    sub_226E99364(0, &qword_281398A78, 0x277CBE500);
    v6 = sub_22766BEB0();
  }

  else
  {
    v6 = sub_2271480A0(MEMORY[0x277D84F90]);
  }

  v7 = 1 << *(v6 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(v6 + 64);
  v10 = (v7 + 63) >> 6;

  v12 = 0;
  v30 = MEMORY[0x277D84F90];
  while (v9)
  {
LABEL_14:
    v14 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
    v15 = v14 | (v12 << 6);
    v16 = (*(v6 + 48) + 16 * v15);
    v17 = *v16;
    v18 = v16[1];
    v19 = *(*(v6 + 56) + 8 * v15);

    v20 = v19;
    v21 = [v20 userInfo];
    if (!v21)
    {

      v32 = 0u;
      v33 = 0u;
      goto LABEL_8;
    }

    v22 = v21;
    v23 = sub_22766BEB0();

    sub_22766CDA0();
    if (!*(v23 + 16) || (v24 = sub_226E9BF6C(&v31), (v25 & 1) == 0))
    {

      sub_226E9B62C(&v31);
      v32 = 0u;
      v33 = 0u;
      goto LABEL_26;
    }

    sub_226E97CC0(*(v23 + 56) + 32 * v24, &v32);
    sub_226E9B62C(&v31);

    if (*(&v33 + 1))
    {
      if (swift_dynamicCast())
      {
        v26 = sub_226EB5278();

        if ((v26 & 1) == 0)
        {
          goto LABEL_28;
        }

        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_226EB3F78(0, *(v30 + 16) + 1, 1, v30);
          v30 = result;
        }

        v28 = *(v30 + 16);
        v27 = *(v30 + 24);
        if (v28 >= v27 >> 1)
        {
          result = sub_226EB3F78((v27 > 1), v28 + 1, 1, v30);
          v30 = result;
        }

        *(v30 + 16) = v28 + 1;
        v29 = v30 + 16 * v28;
        *(v29 + 32) = v17;
        *(v29 + 40) = v18;
      }

      else
      {

LABEL_28:
      }
    }

    else
    {
LABEL_26:

LABEL_8:
      result = sub_226E97D1C(&v32, &unk_27D7BC990, &qword_227670A30);
    }
  }

  while (1)
  {
    v13 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v13 >= v10)
    {

      return v30;
    }

    v9 = *(v6 + 64 + 8 * v13);
    ++v12;
    if (v9)
    {
      v12 = v13;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_227275A00(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = sub_22766BFD0();
  v4 = [v2 entityForName:v3 inManagedObjectContext:a1];

  if (v4)
  {
    v5 = [v4 relationshipsByName];

    sub_226E99364(0, &qword_281398A78, 0x277CBE500);
    v6 = sub_22766BEB0();
  }

  else
  {
    v6 = sub_2271480A0(MEMORY[0x277D84F90]);
  }

  v7 = 1 << *(v6 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(v6 + 64);
  v10 = (v7 + 63) >> 6;

  v12 = 0;
  v30 = MEMORY[0x277D84F90];
  while (v9)
  {
LABEL_14:
    v14 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
    v15 = v14 | (v12 << 6);
    v16 = (*(v6 + 48) + 16 * v15);
    v17 = *v16;
    v18 = v16[1];
    v19 = *(*(v6 + 56) + 8 * v15);

    v20 = v19;
    v21 = [v20 userInfo];
    if (!v21)
    {

      v32 = 0u;
      v33 = 0u;
      goto LABEL_8;
    }

    v22 = v21;
    v23 = sub_22766BEB0();

    sub_22766CDA0();
    if (!*(v23 + 16) || (v24 = sub_226E9BF6C(&v31), (v25 & 1) == 0))
    {

      sub_226E9B62C(&v31);
      v32 = 0u;
      v33 = 0u;
      goto LABEL_26;
    }

    sub_226E97CC0(*(v23 + 56) + 32 * v24, &v32);
    sub_226E9B62C(&v31);

    if (*(&v33 + 1))
    {
      if (swift_dynamicCast())
      {
        v26 = sub_226EB5278();

        if ((v26 & 1) == 0)
        {
          goto LABEL_28;
        }

        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_226EB3F78(0, *(v30 + 16) + 1, 1, v30);
          v30 = result;
        }

        v28 = *(v30 + 16);
        v27 = *(v30 + 24);
        if (v28 >= v27 >> 1)
        {
          result = sub_226EB3F78((v27 > 1), v28 + 1, 1, v30);
          v30 = result;
        }

        *(v30 + 16) = v28 + 1;
        v29 = v30 + 16 * v28;
        *(v29 + 32) = v17;
        *(v29 + 40) = v18;
      }

      else
      {

LABEL_28:
      }
    }

    else
    {
LABEL_26:

LABEL_8:
      result = sub_226E97D1C(&v32, &unk_27D7BC990, &qword_227670A30);
    }
  }

  while (1)
  {
    v13 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v13 >= v10)
    {

      return v30;
    }

    v9 = *(v6 + 64 + 8 * v13);
    ++v12;
    if (v9)
    {
      v12 = v13;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_227275DA8(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = sub_22766BFD0();
  v4 = [v2 entityForName:v3 inManagedObjectContext:a1];

  if (v4)
  {
    v5 = [v4 relationshipsByName];

    sub_226E99364(0, &qword_281398A78, 0x277CBE500);
    v6 = sub_22766BEB0();
  }

  else
  {
    v6 = sub_2271480A0(MEMORY[0x277D84F90]);
  }

  v7 = 1 << *(v6 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(v6 + 64);
  v10 = (v7 + 63) >> 6;

  v12 = 0;
  v30 = MEMORY[0x277D84F90];
  while (v9)
  {
LABEL_14:
    v14 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
    v15 = v14 | (v12 << 6);
    v16 = (*(v6 + 48) + 16 * v15);
    v17 = *v16;
    v18 = v16[1];
    v19 = *(*(v6 + 56) + 8 * v15);

    v20 = v19;
    v21 = [v20 userInfo];
    if (!v21)
    {

      v32 = 0u;
      v33 = 0u;
      goto LABEL_8;
    }

    v22 = v21;
    v23 = sub_22766BEB0();

    sub_22766CDA0();
    if (!*(v23 + 16) || (v24 = sub_226E9BF6C(&v31), (v25 & 1) == 0))
    {

      sub_226E9B62C(&v31);
      v32 = 0u;
      v33 = 0u;
      goto LABEL_26;
    }

    sub_226E97CC0(*(v23 + 56) + 32 * v24, &v32);
    sub_226E9B62C(&v31);

    if (*(&v33 + 1))
    {
      if (swift_dynamicCast())
      {
        v26 = sub_226EB5278();

        if ((v26 & 1) == 0)
        {
          goto LABEL_28;
        }

        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_226EB3F78(0, *(v30 + 16) + 1, 1, v30);
          v30 = result;
        }

        v28 = *(v30 + 16);
        v27 = *(v30 + 24);
        if (v28 >= v27 >> 1)
        {
          result = sub_226EB3F78((v27 > 1), v28 + 1, 1, v30);
          v30 = result;
        }

        *(v30 + 16) = v28 + 1;
        v29 = v30 + 16 * v28;
        *(v29 + 32) = v17;
        *(v29 + 40) = v18;
      }

      else
      {

LABEL_28:
      }
    }

    else
    {
LABEL_26:

LABEL_8:
      result = sub_226E97D1C(&v32, &unk_27D7BC990, &qword_227670A30);
    }
  }

  while (1)
  {
    v13 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v13 >= v10)
    {

      return v30;
    }

    v9 = *(v6 + 64 + 8 * v13);
    ++v12;
    if (v9)
    {
      v12 = v13;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_227276150(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = sub_22766BFD0();
  v4 = [v2 entityForName:v3 inManagedObjectContext:a1];

  if (v4)
  {
    v5 = [v4 relationshipsByName];

    sub_226E99364(0, &qword_281398A78, 0x277CBE500);
    v6 = sub_22766BEB0();
  }

  else
  {
    v6 = sub_2271480A0(MEMORY[0x277D84F90]);
  }

  v7 = 1 << *(v6 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(v6 + 64);
  v10 = (v7 + 63) >> 6;

  v12 = 0;
  v30 = MEMORY[0x277D84F90];
  while (v9)
  {
LABEL_14:
    v14 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
    v15 = v14 | (v12 << 6);
    v16 = (*(v6 + 48) + 16 * v15);
    v17 = *v16;
    v18 = v16[1];
    v19 = *(*(v6 + 56) + 8 * v15);

    v20 = v19;
    v21 = [v20 userInfo];
    if (!v21)
    {

      v32 = 0u;
      v33 = 0u;
      goto LABEL_8;
    }

    v22 = v21;
    v23 = sub_22766BEB0();

    sub_22766CDA0();
    if (!*(v23 + 16) || (v24 = sub_226E9BF6C(&v31), (v25 & 1) == 0))
    {

      sub_226E9B62C(&v31);
      v32 = 0u;
      v33 = 0u;
      goto LABEL_26;
    }

    sub_226E97CC0(*(v23 + 56) + 32 * v24, &v32);
    sub_226E9B62C(&v31);

    if (*(&v33 + 1))
    {
      if (swift_dynamicCast())
      {
        v26 = sub_226EB5278();

        if ((v26 & 1) == 0)
        {
          goto LABEL_28;
        }

        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_226EB3F78(0, *(v30 + 16) + 1, 1, v30);
          v30 = result;
        }

        v28 = *(v30 + 16);
        v27 = *(v30 + 24);
        if (v28 >= v27 >> 1)
        {
          result = sub_226EB3F78((v27 > 1), v28 + 1, 1, v30);
          v30 = result;
        }

        *(v30 + 16) = v28 + 1;
        v29 = v30 + 16 * v28;
        *(v29 + 32) = v17;
        *(v29 + 40) = v18;
      }

      else
      {

LABEL_28:
      }
    }

    else
    {
LABEL_26:

LABEL_8:
      result = sub_226E97D1C(&v32, &unk_27D7BC990, &qword_227670A30);
    }
  }

  while (1)
  {
    v13 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v13 >= v10)
    {

      return v30;
    }

    v9 = *(v6 + 64 + 8 * v13);
    ++v12;
    if (v9)
    {
      v12 = v13;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2272764F8(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = sub_22766BFD0();
  v4 = [v2 entityForName:v3 inManagedObjectContext:a1];

  if (v4)
  {
    v5 = [v4 relationshipsByName];

    sub_226E99364(0, &qword_281398A78, 0x277CBE500);
    v6 = sub_22766BEB0();
  }

  else
  {
    v6 = sub_2271480A0(MEMORY[0x277D84F90]);
  }

  v7 = 1 << *(v6 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(v6 + 64);
  v10 = (v7 + 63) >> 6;

  v12 = 0;
  v30 = MEMORY[0x277D84F90];
  while (v9)
  {
LABEL_14:
    v14 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
    v15 = v14 | (v12 << 6);
    v16 = (*(v6 + 48) + 16 * v15);
    v17 = *v16;
    v18 = v16[1];
    v19 = *(*(v6 + 56) + 8 * v15);

    v20 = v19;
    v21 = [v20 userInfo];
    if (!v21)
    {

      v32 = 0u;
      v33 = 0u;
      goto LABEL_8;
    }

    v22 = v21;
    v23 = sub_22766BEB0();

    sub_22766CDA0();
    if (!*(v23 + 16) || (v24 = sub_226E9BF6C(&v31), (v25 & 1) == 0))
    {

      sub_226E9B62C(&v31);
      v32 = 0u;
      v33 = 0u;
      goto LABEL_26;
    }

    sub_226E97CC0(*(v23 + 56) + 32 * v24, &v32);
    sub_226E9B62C(&v31);

    if (*(&v33 + 1))
    {
      if (swift_dynamicCast())
      {
        v26 = sub_226EB5278();

        if ((v26 & 1) == 0)
        {
          goto LABEL_28;
        }

        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_226EB3F78(0, *(v30 + 16) + 1, 1, v30);
          v30 = result;
        }

        v28 = *(v30 + 16);
        v27 = *(v30 + 24);
        if (v28 >= v27 >> 1)
        {
          result = sub_226EB3F78((v27 > 1), v28 + 1, 1, v30);
          v30 = result;
        }

        *(v30 + 16) = v28 + 1;
        v29 = v30 + 16 * v28;
        *(v29 + 32) = v17;
        *(v29 + 40) = v18;
      }

      else
      {

LABEL_28:
      }
    }

    else
    {
LABEL_26:

LABEL_8:
      result = sub_226E97D1C(&v32, &unk_27D7BC990, &qword_227670A30);
    }
  }

  while (1)
  {
    v13 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v13 >= v10)
    {

      return v30;
    }

    v9 = *(v6 + 64 + 8 * v13);
    ++v12;
    if (v9)
    {
      v12 = v13;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2272768A0(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = sub_22766BFD0();
  v4 = [v2 entityForName:v3 inManagedObjectContext:a1];

  if (v4)
  {
    v5 = [v4 relationshipsByName];

    sub_226E99364(0, &qword_281398A78, 0x277CBE500);
    v6 = sub_22766BEB0();
  }

  else
  {
    v6 = sub_2271480A0(MEMORY[0x277D84F90]);
  }

  v7 = 1 << *(v6 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(v6 + 64);
  v10 = (v7 + 63) >> 6;

  v12 = 0;
  v30 = MEMORY[0x277D84F90];
  while (v9)
  {
LABEL_14:
    v14 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
    v15 = v14 | (v12 << 6);
    v16 = (*(v6 + 48) + 16 * v15);
    v17 = *v16;
    v18 = v16[1];
    v19 = *(*(v6 + 56) + 8 * v15);

    v20 = v19;
    v21 = [v20 userInfo];
    if (!v21)
    {

      v32 = 0u;
      v33 = 0u;
      goto LABEL_8;
    }

    v22 = v21;
    v23 = sub_22766BEB0();

    sub_22766CDA0();
    if (!*(v23 + 16) || (v24 = sub_226E9BF6C(&v31), (v25 & 1) == 0))
    {

      sub_226E9B62C(&v31);
      v32 = 0u;
      v33 = 0u;
      goto LABEL_26;
    }

    sub_226E97CC0(*(v23 + 56) + 32 * v24, &v32);
    sub_226E9B62C(&v31);

    if (*(&v33 + 1))
    {
      if (swift_dynamicCast())
      {
        v26 = sub_226EB5278();

        if ((v26 & 1) == 0)
        {
          goto LABEL_28;
        }

        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_226EB3F78(0, *(v30 + 16) + 1, 1, v30);
          v30 = result;
        }

        v28 = *(v30 + 16);
        v27 = *(v30 + 24);
        if (v28 >= v27 >> 1)
        {
          result = sub_226EB3F78((v27 > 1), v28 + 1, 1, v30);
          v30 = result;
        }

        *(v30 + 16) = v28 + 1;
        v29 = v30 + 16 * v28;
        *(v29 + 32) = v17;
        *(v29 + 40) = v18;
      }

      else
      {

LABEL_28:
      }
    }

    else
    {
LABEL_26:

LABEL_8:
      result = sub_226E97D1C(&v32, &unk_27D7BC990, &qword_227670A30);
    }
  }

  while (1)
  {
    v13 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v13 >= v10)
    {

      return v30;
    }

    v9 = *(v6 + 64 + 8 * v13);
    ++v12;
    if (v9)
    {
      v12 = v13;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_227276C48(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = sub_22766BFD0();
  v4 = [v2 entityForName:v3 inManagedObjectContext:a1];

  if (v4)
  {
    v5 = [v4 relationshipsByName];

    sub_226E99364(0, &qword_281398A78, 0x277CBE500);
    v6 = sub_22766BEB0();
  }

  else
  {
    v6 = sub_2271480A0(MEMORY[0x277D84F90]);
  }

  v7 = 1 << *(v6 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(v6 + 64);
  v10 = (v7 + 63) >> 6;

  v12 = 0;
  v30 = MEMORY[0x277D84F90];
  while (v9)
  {
LABEL_14:
    v14 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
    v15 = v14 | (v12 << 6);
    v16 = (*(v6 + 48) + 16 * v15);
    v17 = *v16;
    v18 = v16[1];
    v19 = *(*(v6 + 56) + 8 * v15);

    v20 = v19;
    v21 = [v20 userInfo];
    if (!v21)
    {

      v32 = 0u;
      v33 = 0u;
      goto LABEL_8;
    }

    v22 = v21;
    v23 = sub_22766BEB0();

    sub_22766CDA0();
    if (!*(v23 + 16) || (v24 = sub_226E9BF6C(&v31), (v25 & 1) == 0))
    {

      sub_226E9B62C(&v31);
      v32 = 0u;
      v33 = 0u;
      goto LABEL_26;
    }

    sub_226E97CC0(*(v23 + 56) + 32 * v24, &v32);
    sub_226E9B62C(&v31);

    if (*(&v33 + 1))
    {
      if (swift_dynamicCast())
      {
        v26 = sub_226EB5278();

        if ((v26 & 1) == 0)
        {
          goto LABEL_28;
        }

        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_226EB3F78(0, *(v30 + 16) + 1, 1, v30);
          v30 = result;
        }

        v28 = *(v30 + 16);
        v27 = *(v30 + 24);
        if (v28 >= v27 >> 1)
        {
          result = sub_226EB3F78((v27 > 1), v28 + 1, 1, v30);
          v30 = result;
        }

        *(v30 + 16) = v28 + 1;
        v29 = v30 + 16 * v28;
        *(v29 + 32) = v17;
        *(v29 + 40) = v18;
      }

      else
      {

LABEL_28:
      }
    }

    else
    {
LABEL_26:

LABEL_8:
      result = sub_226E97D1C(&v32, &unk_27D7BC990, &qword_227670A30);
    }
  }

  while (1)
  {
    v13 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v13 >= v10)
    {

      return v30;
    }

    v9 = *(v6 + 64 + 8 * v13);
    ++v12;
    if (v9)
    {
      v12 = v13;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_227276FF0(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = sub_22766BFD0();
  v4 = [v2 entityForName:v3 inManagedObjectContext:a1];

  if (v4)
  {
    v5 = [v4 relationshipsByName];

    sub_226E99364(0, &qword_281398A78, 0x277CBE500);
    v6 = sub_22766BEB0();
  }

  else
  {
    v6 = sub_2271480A0(MEMORY[0x277D84F90]);
  }

  v7 = 1 << *(v6 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(v6 + 64);
  v10 = (v7 + 63) >> 6;

  v12 = 0;
  v30 = MEMORY[0x277D84F90];
  while (v9)
  {
LABEL_14:
    v14 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
    v15 = v14 | (v12 << 6);
    v16 = (*(v6 + 48) + 16 * v15);
    v17 = *v16;
    v18 = v16[1];
    v19 = *(*(v6 + 56) + 8 * v15);

    v20 = v19;
    v21 = [v20 userInfo];
    if (!v21)
    {

      v32 = 0u;
      v33 = 0u;
      goto LABEL_8;
    }

    v22 = v21;
    v23 = sub_22766BEB0();

    sub_22766CDA0();
    if (!*(v23 + 16) || (v24 = sub_226E9BF6C(&v31), (v25 & 1) == 0))
    {

      sub_226E9B62C(&v31);
      v32 = 0u;
      v33 = 0u;
      goto LABEL_26;
    }

    sub_226E97CC0(*(v23 + 56) + 32 * v24, &v32);
    sub_226E9B62C(&v31);

    if (*(&v33 + 1))
    {
      if (swift_dynamicCast())
      {
        v26 = sub_226EB5278();

        if ((v26 & 1) == 0)
        {
          goto LABEL_28;
        }

        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_226EB3F78(0, *(v30 + 16) + 1, 1, v30);
          v30 = result;
        }

        v28 = *(v30 + 16);
        v27 = *(v30 + 24);
        if (v28 >= v27 >> 1)
        {
          result = sub_226EB3F78((v27 > 1), v28 + 1, 1, v30);
          v30 = result;
        }

        *(v30 + 16) = v28 + 1;
        v29 = v30 + 16 * v28;
        *(v29 + 32) = v17;
        *(v29 + 40) = v18;
      }

      else
      {

LABEL_28:
      }
    }

    else
    {
LABEL_26:

LABEL_8:
      result = sub_226E97D1C(&v32, &unk_27D7BC990, &qword_227670A30);
    }
  }

  while (1)
  {
    v13 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v13 >= v10)
    {

      return v30;
    }

    v9 = *(v6 + 64 + 8 * v13);
    ++v12;
    if (v9)
    {
      v12 = v13;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_227277398(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = sub_22766BFD0();
  v4 = [v2 entityForName:v3 inManagedObjectContext:a1];

  if (v4)
  {
    v5 = [v4 relationshipsByName];

    sub_226E99364(0, &qword_281398A78, 0x277CBE500);
    v6 = sub_22766BEB0();
  }

  else
  {
    v6 = sub_2271480A0(MEMORY[0x277D84F90]);
  }

  v7 = 1 << *(v6 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(v6 + 64);
  v10 = (v7 + 63) >> 6;

  v12 = 0;
  v30 = MEMORY[0x277D84F90];
  while (v9)
  {
LABEL_14:
    v14 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
    v15 = v14 | (v12 << 6);
    v16 = (*(v6 + 48) + 16 * v15);
    v17 = *v16;
    v18 = v16[1];
    v19 = *(*(v6 + 56) + 8 * v15);

    v20 = v19;
    v21 = [v20 userInfo];
    if (!v21)
    {

      v32 = 0u;
      v33 = 0u;
      goto LABEL_8;
    }

    v22 = v21;
    v23 = sub_22766BEB0();

    sub_22766CDA0();
    if (!*(v23 + 16) || (v24 = sub_226E9BF6C(&v31), (v25 & 1) == 0))
    {

      sub_226E9B62C(&v31);
      v32 = 0u;
      v33 = 0u;
      goto LABEL_26;
    }

    sub_226E97CC0(*(v23 + 56) + 32 * v24, &v32);
    sub_226E9B62C(&v31);

    if (*(&v33 + 1))
    {
      if (swift_dynamicCast())
      {
        v26 = sub_226EB5278();

        if ((v26 & 1) == 0)
        {
          goto LABEL_28;
        }

        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_226EB3F78(0, *(v30 + 16) + 1, 1, v30);
          v30 = result;
        }

        v28 = *(v30 + 16);
        v27 = *(v30 + 24);
        if (v28 >= v27 >> 1)
        {
          result = sub_226EB3F78((v27 > 1), v28 + 1, 1, v30);
          v30 = result;
        }

        *(v30 + 16) = v28 + 1;
        v29 = v30 + 16 * v28;
        *(v29 + 32) = v17;
        *(v29 + 40) = v18;
      }

      else
      {

LABEL_28:
      }
    }

    else
    {
LABEL_26:

LABEL_8:
      result = sub_226E97D1C(&v32, &unk_27D7BC990, &qword_227670A30);
    }
  }

  while (1)
  {
    v13 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v13 >= v10)
    {

      return v30;
    }

    v9 = *(v6 + 64 + 8 * v13);
    ++v12;
    if (v9)
    {
      v12 = v13;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_227277EAC(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = sub_22766BFD0();
  v4 = [v2 entityForName:v3 inManagedObjectContext:a1];

  if (v4)
  {
    v5 = [v4 relationshipsByName];

    sub_226E99364(0, &qword_281398A78, 0x277CBE500);
    v6 = sub_22766BEB0();
  }

  else
  {
    v6 = sub_2271480A0(MEMORY[0x277D84F90]);
  }

  v7 = 1 << *(v6 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(v6 + 64);
  v10 = (v7 + 63) >> 6;

  v12 = 0;
  v30 = MEMORY[0x277D84F90];
  while (v9)
  {
LABEL_14:
    v14 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
    v15 = v14 | (v12 << 6);
    v16 = (*(v6 + 48) + 16 * v15);
    v17 = *v16;
    v18 = v16[1];
    v19 = *(*(v6 + 56) + 8 * v15);

    v20 = v19;
    v21 = [v20 userInfo];
    if (!v21)
    {

      v32 = 0u;
      v33 = 0u;
      goto LABEL_8;
    }

    v22 = v21;
    v23 = sub_22766BEB0();

    sub_22766CDA0();
    if (!*(v23 + 16) || (v24 = sub_226E9BF6C(&v31), (v25 & 1) == 0))
    {

      sub_226E9B62C(&v31);
      v32 = 0u;
      v33 = 0u;
      goto LABEL_26;
    }

    sub_226E97CC0(*(v23 + 56) + 32 * v24, &v32);
    sub_226E9B62C(&v31);

    if (*(&v33 + 1))
    {
      if (swift_dynamicCast())
      {
        v26 = sub_226EB5278();

        if ((v26 & 1) == 0)
        {
          goto LABEL_28;
        }

        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_226EB3F78(0, *(v30 + 16) + 1, 1, v30);
          v30 = result;
        }

        v28 = *(v30 + 16);
        v27 = *(v30 + 24);
        if (v28 >= v27 >> 1)
        {
          result = sub_226EB3F78((v27 > 1), v28 + 1, 1, v30);
          v30 = result;
        }

        *(v30 + 16) = v28 + 1;
        v29 = v30 + 16 * v28;
        *(v29 + 32) = v17;
        *(v29 + 40) = v18;
      }

      else
      {

LABEL_28:
      }
    }

    else
    {
LABEL_26:

LABEL_8:
      result = sub_226E97D1C(&v32, &unk_27D7BC990, &qword_227670A30);
    }
  }

  while (1)
  {
    v13 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v13 >= v10)
    {

      return v30;
    }

    v9 = *(v6 + 64 + 8 * v13);
    ++v12;
    if (v9)
    {
      v12 = v13;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_227278254(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = sub_22766BFD0();
  v4 = [v2 entityForName:v3 inManagedObjectContext:a1];

  if (v4)
  {
    v5 = [v4 relationshipsByName];

    sub_226E99364(0, &qword_281398A78, 0x277CBE500);
    v6 = sub_22766BEB0();
  }

  else
  {
    v6 = sub_2271480A0(MEMORY[0x277D84F90]);
  }

  v7 = 1 << *(v6 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(v6 + 64);
  v10 = (v7 + 63) >> 6;

  v12 = 0;
  v13 = MEMORY[0x277D84F90];
  while (v9)
  {
LABEL_14:
    v15 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
    v16 = v15 | (v12 << 6);
    v17 = (*(v6 + 48) + 16 * v16);
    v18 = *v17;
    v19 = v17[1];
    v20 = *(*(v6 + 56) + 8 * v16);

    v21 = v20;
    v22 = [v21 userInfo];
    if (!v22)
    {

      v36 = 0u;
      v37 = 0u;
      goto LABEL_8;
    }

    v34 = v18;
    v23 = v22;
    v24 = sub_22766BEB0();

    sub_22766CDA0();
    if (!*(v24 + 16) || (v25 = sub_226E9BF6C(&v35), (v26 & 1) == 0))
    {

      sub_226E9B62C(&v35);
      v36 = 0u;
      v37 = 0u;
      goto LABEL_36;
    }

    sub_226E97CC0(*(v24 + 56) + 32 * v25, &v36);
    sub_226E9B62C(&v35);

    if (*(&v37 + 1))
    {
      if ((swift_dynamicCast() & 1) == 0)
      {

        goto LABEL_38;
      }

      v27 = sub_22766C070();
      v29 = v28;

      if (v27 == 121 && v29 == 0xE100000000000000 || (sub_22766D190() & 1) != 0 || v27 == 7562617 && v29 == 0xE300000000000000 || (sub_22766D190() & 1) != 0 || v27 == 116 && v29 == 0xE100000000000000 || (sub_22766D190() & 1) != 0 || v27 == 1702195828 && v29 == 0xE400000000000000 || (sub_22766D190() & 1) != 0 || v27 == 49 && v29 == 0xE100000000000000)
      {

        goto LABEL_40;
      }

      v30 = sub_22766D190();

      if (v30)
      {
LABEL_40:
        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_226EB3F78(0, *(v13 + 16) + 1, 1, v13);
          v13 = result;
        }

        v32 = *(v13 + 16);
        v31 = *(v13 + 24);
        if (v32 >= v31 >> 1)
        {
          result = sub_226EB3F78((v31 > 1), v32 + 1, 1, v13);
          v13 = result;
        }

        *(v13 + 16) = v32 + 1;
        v33 = v13 + 16 * v32;
        *(v33 + 32) = v34;
        *(v33 + 40) = v19;
      }

      else
      {
LABEL_38:
      }
    }

    else
    {
LABEL_36:

LABEL_8:
      result = sub_226E97D1C(&v36, &unk_27D7BC990, &qword_227670A30);
    }
  }

  while (1)
  {
    v14 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v14 >= v10)
    {

      return v13;
    }

    v9 = *(v6 + 64 + 8 * v14);
    ++v12;
    if (v9)
    {
      v12 = v14;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_227278738(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = sub_22766BFD0();
  v4 = [v2 entityForName:v3 inManagedObjectContext:a1];

  if (v4)
  {
    v5 = [v4 relationshipsByName];

    sub_226E99364(0, &qword_281398A78, 0x277CBE500);
    v6 = sub_22766BEB0();
  }

  else
  {
    v6 = sub_2271480A0(MEMORY[0x277D84F90]);
  }

  v7 = 1 << *(v6 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(v6 + 64);
  v10 = (v7 + 63) >> 6;

  v12 = 0;
  v13 = MEMORY[0x277D84F90];
  while (v9)
  {
LABEL_14:
    v15 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
    v16 = v15 | (v12 << 6);
    v17 = (*(v6 + 48) + 16 * v16);
    v18 = *v17;
    v19 = v17[1];
    v20 = *(*(v6 + 56) + 8 * v16);

    v21 = v20;
    v22 = [v21 userInfo];
    if (!v22)
    {

      v36 = 0u;
      v37 = 0u;
      goto LABEL_8;
    }

    v34 = v18;
    v23 = v22;
    v24 = sub_22766BEB0();

    sub_22766CDA0();
    if (!*(v24 + 16) || (v25 = sub_226E9BF6C(&v35), (v26 & 1) == 0))
    {

      sub_226E9B62C(&v35);
      v36 = 0u;
      v37 = 0u;
      goto LABEL_36;
    }

    sub_226E97CC0(*(v24 + 56) + 32 * v25, &v36);
    sub_226E9B62C(&v35);

    if (*(&v37 + 1))
    {
      if ((swift_dynamicCast() & 1) == 0)
      {

        goto LABEL_38;
      }

      v27 = sub_22766C070();
      v29 = v28;

      if (v27 == 121 && v29 == 0xE100000000000000 || (sub_22766D190() & 1) != 0 || v27 == 7562617 && v29 == 0xE300000000000000 || (sub_22766D190() & 1) != 0 || v27 == 116 && v29 == 0xE100000000000000 || (sub_22766D190() & 1) != 0 || v27 == 1702195828 && v29 == 0xE400000000000000 || (sub_22766D190() & 1) != 0 || v27 == 49 && v29 == 0xE100000000000000)
      {

        goto LABEL_40;
      }

      v30 = sub_22766D190();

      if (v30)
      {
LABEL_40:
        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_226EB3F78(0, *(v13 + 16) + 1, 1, v13);
          v13 = result;
        }

        v32 = *(v13 + 16);
        v31 = *(v13 + 24);
        if (v32 >= v31 >> 1)
        {
          result = sub_226EB3F78((v31 > 1), v32 + 1, 1, v13);
          v13 = result;
        }

        *(v13 + 16) = v32 + 1;
        v33 = v13 + 16 * v32;
        *(v33 + 32) = v34;
        *(v33 + 40) = v19;
      }

      else
      {
LABEL_38:
      }
    }

    else
    {
LABEL_36:

LABEL_8:
      result = sub_226E97D1C(&v36, &unk_27D7BC990, &qword_227670A30);
    }
  }

  while (1)
  {
    v14 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v14 >= v10)
    {

      return v13;
    }

    v9 = *(v6 + 64 + 8 * v14);
    ++v12;
    if (v9)
    {
      v12 = v14;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_227278C1C(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = sub_22766BFD0();
  v4 = [v2 entityForName:v3 inManagedObjectContext:a1];

  if (v4)
  {
    v5 = [v4 relationshipsByName];

    sub_226E99364(0, &qword_281398A78, 0x277CBE500);
    v6 = sub_22766BEB0();
  }

  else
  {
    v6 = sub_2271480A0(MEMORY[0x277D84F90]);
  }

  v7 = 1 << *(v6 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(v6 + 64);
  v10 = (v7 + 63) >> 6;

  v12 = 0;
  v13 = MEMORY[0x277D84F90];
  while (v9)
  {
LABEL_14:
    v15 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
    v16 = v15 | (v12 << 6);
    v17 = (*(v6 + 48) + 16 * v16);
    v18 = *v17;
    v19 = v17[1];
    v20 = *(*(v6 + 56) + 8 * v16);

    v21 = v20;
    v22 = [v21 userInfo];
    if (!v22)
    {

      v36 = 0u;
      v37 = 0u;
      goto LABEL_8;
    }

    v34 = v18;
    v23 = v22;
    v24 = sub_22766BEB0();

    sub_22766CDA0();
    if (!*(v24 + 16) || (v25 = sub_226E9BF6C(&v35), (v26 & 1) == 0))
    {

      sub_226E9B62C(&v35);
      v36 = 0u;
      v37 = 0u;
      goto LABEL_36;
    }

    sub_226E97CC0(*(v24 + 56) + 32 * v25, &v36);
    sub_226E9B62C(&v35);

    if (*(&v37 + 1))
    {
      if ((swift_dynamicCast() & 1) == 0)
      {

        goto LABEL_38;
      }

      v27 = sub_22766C070();
      v29 = v28;

      if (v27 == 121 && v29 == 0xE100000000000000 || (sub_22766D190() & 1) != 0 || v27 == 7562617 && v29 == 0xE300000000000000 || (sub_22766D190() & 1) != 0 || v27 == 116 && v29 == 0xE100000000000000 || (sub_22766D190() & 1) != 0 || v27 == 1702195828 && v29 == 0xE400000000000000 || (sub_22766D190() & 1) != 0 || v27 == 49 && v29 == 0xE100000000000000)
      {

        goto LABEL_40;
      }

      v30 = sub_22766D190();

      if (v30)
      {
LABEL_40:
        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_226EB3F78(0, *(v13 + 16) + 1, 1, v13);
          v13 = result;
        }

        v32 = *(v13 + 16);
        v31 = *(v13 + 24);
        if (v32 >= v31 >> 1)
        {
          result = sub_226EB3F78((v31 > 1), v32 + 1, 1, v13);
          v13 = result;
        }

        *(v13 + 16) = v32 + 1;
        v33 = v13 + 16 * v32;
        *(v33 + 32) = v34;
        *(v33 + 40) = v19;
      }

      else
      {
LABEL_38:
      }
    }

    else
    {
LABEL_36:

LABEL_8:
      result = sub_226E97D1C(&v36, &unk_27D7BC990, &qword_227670A30);
    }
  }

  while (1)
  {
    v14 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v14 >= v10)
    {

      return v13;
    }

    v9 = *(v6 + 64 + 8 * v14);
    ++v12;
    if (v9)
    {
      v12 = v14;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_227279100(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = sub_22766BFD0();
  v4 = [v2 entityForName:v3 inManagedObjectContext:a1];

  if (v4)
  {
    v5 = [v4 relationshipsByName];

    sub_226E99364(0, &qword_281398A78, 0x277CBE500);
    v6 = sub_22766BEB0();
  }

  else
  {
    v6 = sub_2271480A0(MEMORY[0x277D84F90]);
  }

  v7 = 1 << *(v6 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(v6 + 64);
  v10 = (v7 + 63) >> 6;

  v12 = 0;
  v13 = MEMORY[0x277D84F90];
  while (v9)
  {
LABEL_14:
    v15 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
    v16 = v15 | (v12 << 6);
    v17 = (*(v6 + 48) + 16 * v16);
    v18 = *v17;
    v19 = v17[1];
    v20 = *(*(v6 + 56) + 8 * v16);

    v21 = v20;
    v22 = [v21 userInfo];
    if (!v22)
    {

      v36 = 0u;
      v37 = 0u;
      goto LABEL_8;
    }

    v34 = v18;
    v23 = v22;
    v24 = sub_22766BEB0();

    sub_22766CDA0();
    if (!*(v24 + 16) || (v25 = sub_226E9BF6C(&v35), (v26 & 1) == 0))
    {

      sub_226E9B62C(&v35);
      v36 = 0u;
      v37 = 0u;
      goto LABEL_36;
    }

    sub_226E97CC0(*(v24 + 56) + 32 * v25, &v36);
    sub_226E9B62C(&v35);

    if (*(&v37 + 1))
    {
      if ((swift_dynamicCast() & 1) == 0)
      {

        goto LABEL_38;
      }

      v27 = sub_22766C070();
      v29 = v28;

      if (v27 == 121 && v29 == 0xE100000000000000 || (sub_22766D190() & 1) != 0 || v27 == 7562617 && v29 == 0xE300000000000000 || (sub_22766D190() & 1) != 0 || v27 == 116 && v29 == 0xE100000000000000 || (sub_22766D190() & 1) != 0 || v27 == 1702195828 && v29 == 0xE400000000000000 || (sub_22766D190() & 1) != 0 || v27 == 49 && v29 == 0xE100000000000000)
      {

        goto LABEL_40;
      }

      v30 = sub_22766D190();

      if (v30)
      {
LABEL_40:
        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_226EB3F78(0, *(v13 + 16) + 1, 1, v13);
          v13 = result;
        }

        v32 = *(v13 + 16);
        v31 = *(v13 + 24);
        if (v32 >= v31 >> 1)
        {
          result = sub_226EB3F78((v31 > 1), v32 + 1, 1, v13);
          v13 = result;
        }

        *(v13 + 16) = v32 + 1;
        v33 = v13 + 16 * v32;
        *(v33 + 32) = v34;
        *(v33 + 40) = v19;
      }

      else
      {
LABEL_38:
      }
    }

    else
    {
LABEL_36:

LABEL_8:
      result = sub_226E97D1C(&v36, &unk_27D7BC990, &qword_227670A30);
    }
  }

  while (1)
  {
    v14 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v14 >= v10)
    {

      return v13;
    }

    v9 = *(v6 + 64 + 8 * v14);
    ++v12;
    if (v9)
    {
      v12 = v14;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2272795E4(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = sub_22766BFD0();
  v4 = [v2 entityForName:v3 inManagedObjectContext:a1];

  if (v4)
  {
    v5 = [v4 relationshipsByName];

    sub_226E99364(0, &qword_281398A78, 0x277CBE500);
    v6 = sub_22766BEB0();
  }

  else
  {
    v6 = sub_2271480A0(MEMORY[0x277D84F90]);
  }

  v7 = 1 << *(v6 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(v6 + 64);
  v10 = (v7 + 63) >> 6;

  v12 = 0;
  v13 = MEMORY[0x277D84F90];
  while (v9)
  {
LABEL_14:
    v15 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
    v16 = v15 | (v12 << 6);
    v17 = (*(v6 + 48) + 16 * v16);
    v18 = *v17;
    v19 = v17[1];
    v20 = *(*(v6 + 56) + 8 * v16);

    v21 = v20;
    v22 = [v21 userInfo];
    if (!v22)
    {

      v36 = 0u;
      v37 = 0u;
      goto LABEL_8;
    }

    v34 = v18;
    v23 = v22;
    v24 = sub_22766BEB0();

    sub_22766CDA0();
    if (!*(v24 + 16) || (v25 = sub_226E9BF6C(&v35), (v26 & 1) == 0))
    {

      sub_226E9B62C(&v35);
      v36 = 0u;
      v37 = 0u;
      goto LABEL_36;
    }

    sub_226E97CC0(*(v24 + 56) + 32 * v25, &v36);
    sub_226E9B62C(&v35);

    if (*(&v37 + 1))
    {
      if ((swift_dynamicCast() & 1) == 0)
      {

        goto LABEL_38;
      }

      v27 = sub_22766C070();
      v29 = v28;

      if (v27 == 121 && v29 == 0xE100000000000000 || (sub_22766D190() & 1) != 0 || v27 == 7562617 && v29 == 0xE300000000000000 || (sub_22766D190() & 1) != 0 || v27 == 116 && v29 == 0xE100000000000000 || (sub_22766D190() & 1) != 0 || v27 == 1702195828 && v29 == 0xE400000000000000 || (sub_22766D190() & 1) != 0 || v27 == 49 && v29 == 0xE100000000000000)
      {

        goto LABEL_40;
      }

      v30 = sub_22766D190();

      if (v30)
      {
LABEL_40:
        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_226EB3F78(0, *(v13 + 16) + 1, 1, v13);
          v13 = result;
        }

        v32 = *(v13 + 16);
        v31 = *(v13 + 24);
        if (v32 >= v31 >> 1)
        {
          result = sub_226EB3F78((v31 > 1), v32 + 1, 1, v13);
          v13 = result;
        }

        *(v13 + 16) = v32 + 1;
        v33 = v13 + 16 * v32;
        *(v33 + 32) = v34;
        *(v33 + 40) = v19;
      }

      else
      {
LABEL_38:
      }
    }

    else
    {
LABEL_36:

LABEL_8:
      result = sub_226E97D1C(&v36, &unk_27D7BC990, &qword_227670A30);
    }
  }

  while (1)
  {
    v14 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v14 >= v10)
    {

      return v13;
    }

    v9 = *(v6 + 64 + 8 * v14);
    ++v12;
    if (v9)
    {
      v12 = v14;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_227279AC8(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = sub_22766BFD0();
  v4 = [v2 entityForName:v3 inManagedObjectContext:a1];

  if (v4)
  {
    v5 = [v4 relationshipsByName];

    sub_226E99364(0, &qword_281398A78, 0x277CBE500);
    v6 = sub_22766BEB0();
  }

  else
  {
    v6 = sub_2271480A0(MEMORY[0x277D84F90]);
  }

  v7 = 1 << *(v6 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(v6 + 64);
  v10 = (v7 + 63) >> 6;

  v12 = 0;
  v13 = MEMORY[0x277D84F90];
  while (v9)
  {
LABEL_14:
    v15 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
    v16 = v15 | (v12 << 6);
    v17 = (*(v6 + 48) + 16 * v16);
    v18 = *v17;
    v19 = v17[1];
    v20 = *(*(v6 + 56) + 8 * v16);

    v21 = v20;
    v22 = [v21 userInfo];
    if (!v22)
    {

      v36 = 0u;
      v37 = 0u;
      goto LABEL_8;
    }

    v34 = v18;
    v23 = v22;
    v24 = sub_22766BEB0();

    sub_22766CDA0();
    if (!*(v24 + 16) || (v25 = sub_226E9BF6C(&v35), (v26 & 1) == 0))
    {

      sub_226E9B62C(&v35);
      v36 = 0u;
      v37 = 0u;
      goto LABEL_36;
    }

    sub_226E97CC0(*(v24 + 56) + 32 * v25, &v36);
    sub_226E9B62C(&v35);

    if (*(&v37 + 1))
    {
      if ((swift_dynamicCast() & 1) == 0)
      {

        goto LABEL_38;
      }

      v27 = sub_22766C070();
      v29 = v28;

      if (v27 == 121 && v29 == 0xE100000000000000 || (sub_22766D190() & 1) != 0 || v27 == 7562617 && v29 == 0xE300000000000000 || (sub_22766D190() & 1) != 0 || v27 == 116 && v29 == 0xE100000000000000 || (sub_22766D190() & 1) != 0 || v27 == 1702195828 && v29 == 0xE400000000000000 || (sub_22766D190() & 1) != 0 || v27 == 49 && v29 == 0xE100000000000000)
      {

        goto LABEL_40;
      }

      v30 = sub_22766D190();

      if (v30)
      {
LABEL_40:
        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_226EB3F78(0, *(v13 + 16) + 1, 1, v13);
          v13 = result;
        }

        v32 = *(v13 + 16);
        v31 = *(v13 + 24);
        if (v32 >= v31 >> 1)
        {
          result = sub_226EB3F78((v31 > 1), v32 + 1, 1, v13);
          v13 = result;
        }

        *(v13 + 16) = v32 + 1;
        v33 = v13 + 16 * v32;
        *(v33 + 32) = v34;
        *(v33 + 40) = v19;
      }

      else
      {
LABEL_38:
      }
    }

    else
    {
LABEL_36:

LABEL_8:
      result = sub_226E97D1C(&v36, &unk_27D7BC990, &qword_227670A30);
    }
  }

  while (1)
  {
    v14 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v14 >= v10)
    {

      return v13;
    }

    v9 = *(v6 + 64 + 8 * v14);
    ++v12;
    if (v9)
    {
      v12 = v14;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_227279FAC(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = sub_22766BFD0();
  v4 = [v2 entityForName:v3 inManagedObjectContext:a1];

  if (v4)
  {
    v5 = [v4 relationshipsByName];

    sub_226E99364(0, &qword_281398A78, 0x277CBE500);
    v6 = sub_22766BEB0();
  }

  else
  {
    v6 = sub_2271480A0(MEMORY[0x277D84F90]);
  }

  v7 = 1 << *(v6 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(v6 + 64);
  v10 = (v7 + 63) >> 6;

  v12 = 0;
  v13 = MEMORY[0x277D84F90];
  while (v9)
  {
LABEL_14:
    v15 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
    v16 = v15 | (v12 << 6);
    v17 = (*(v6 + 48) + 16 * v16);
    v18 = *v17;
    v19 = v17[1];
    v20 = *(*(v6 + 56) + 8 * v16);

    v21 = v20;
    v22 = [v21 userInfo];
    if (!v22)
    {

      v36 = 0u;
      v37 = 0u;
      goto LABEL_8;
    }

    v34 = v18;
    v23 = v22;
    v24 = sub_22766BEB0();

    sub_22766CDA0();
    if (!*(v24 + 16) || (v25 = sub_226E9BF6C(&v35), (v26 & 1) == 0))
    {

      sub_226E9B62C(&v35);
      v36 = 0u;
      v37 = 0u;
      goto LABEL_36;
    }

    sub_226E97CC0(*(v24 + 56) + 32 * v25, &v36);
    sub_226E9B62C(&v35);

    if (*(&v37 + 1))
    {
      if ((swift_dynamicCast() & 1) == 0)
      {

        goto LABEL_38;
      }

      v27 = sub_22766C070();
      v29 = v28;

      if (v27 == 121 && v29 == 0xE100000000000000 || (sub_22766D190() & 1) != 0 || v27 == 7562617 && v29 == 0xE300000000000000 || (sub_22766D190() & 1) != 0 || v27 == 116 && v29 == 0xE100000000000000 || (sub_22766D190() & 1) != 0 || v27 == 1702195828 && v29 == 0xE400000000000000 || (sub_22766D190() & 1) != 0 || v27 == 49 && v29 == 0xE100000000000000)
      {

        goto LABEL_40;
      }

      v30 = sub_22766D190();

      if (v30)
      {
LABEL_40:
        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_226EB3F78(0, *(v13 + 16) + 1, 1, v13);
          v13 = result;
        }

        v32 = *(v13 + 16);
        v31 = *(v13 + 24);
        if (v32 >= v31 >> 1)
        {
          result = sub_226EB3F78((v31 > 1), v32 + 1, 1, v13);
          v13 = result;
        }

        *(v13 + 16) = v32 + 1;
        v33 = v13 + 16 * v32;
        *(v33 + 32) = v34;
        *(v33 + 40) = v19;
      }

      else
      {
LABEL_38:
      }
    }

    else
    {
LABEL_36:

LABEL_8:
      result = sub_226E97D1C(&v36, &unk_27D7BC990, &qword_227670A30);
    }
  }

  while (1)
  {
    v14 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v14 >= v10)
    {

      return v13;
    }

    v9 = *(v6 + 64 + 8 * v14);
    ++v12;
    if (v9)
    {
      v12 = v14;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22727A490(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = sub_22766BFD0();
  v4 = [v2 entityForName:v3 inManagedObjectContext:a1];

  if (v4)
  {
    v5 = [v4 relationshipsByName];

    sub_226E99364(0, &qword_281398A78, 0x277CBE500);
    v6 = sub_22766BEB0();
  }

  else
  {
    v6 = sub_2271480A0(MEMORY[0x277D84F90]);
  }

  v7 = 1 << *(v6 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(v6 + 64);
  v10 = (v7 + 63) >> 6;

  v12 = 0;
  v13 = MEMORY[0x277D84F90];
  while (v9)
  {
LABEL_14:
    v15 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
    v16 = v15 | (v12 << 6);
    v17 = (*(v6 + 48) + 16 * v16);
    v18 = *v17;
    v19 = v17[1];
    v20 = *(*(v6 + 56) + 8 * v16);

    v21 = v20;
    v22 = [v21 userInfo];
    if (!v22)
    {

      v36 = 0u;
      v37 = 0u;
      goto LABEL_8;
    }

    v34 = v18;
    v23 = v22;
    v24 = sub_22766BEB0();

    sub_22766CDA0();
    if (!*(v24 + 16) || (v25 = sub_226E9BF6C(&v35), (v26 & 1) == 0))
    {

      sub_226E9B62C(&v35);
      v36 = 0u;
      v37 = 0u;
      goto LABEL_36;
    }

    sub_226E97CC0(*(v24 + 56) + 32 * v25, &v36);
    sub_226E9B62C(&v35);

    if (*(&v37 + 1))
    {
      if ((swift_dynamicCast() & 1) == 0)
      {

        goto LABEL_38;
      }

      v27 = sub_22766C070();
      v29 = v28;

      if (v27 == 121 && v29 == 0xE100000000000000 || (sub_22766D190() & 1) != 0 || v27 == 7562617 && v29 == 0xE300000000000000 || (sub_22766D190() & 1) != 0 || v27 == 116 && v29 == 0xE100000000000000 || (sub_22766D190() & 1) != 0 || v27 == 1702195828 && v29 == 0xE400000000000000 || (sub_22766D190() & 1) != 0 || v27 == 49 && v29 == 0xE100000000000000)
      {

        goto LABEL_40;
      }

      v30 = sub_22766D190();

      if (v30)
      {
LABEL_40:
        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_226EB3F78(0, *(v13 + 16) + 1, 1, v13);
          v13 = result;
        }

        v32 = *(v13 + 16);
        v31 = *(v13 + 24);
        if (v32 >= v31 >> 1)
        {
          result = sub_226EB3F78((v31 > 1), v32 + 1, 1, v13);
          v13 = result;
        }

        *(v13 + 16) = v32 + 1;
        v33 = v13 + 16 * v32;
        *(v33 + 32) = v34;
        *(v33 + 40) = v19;
      }

      else
      {
LABEL_38:
      }
    }

    else
    {
LABEL_36:

LABEL_8:
      result = sub_226E97D1C(&v36, &unk_27D7BC990, &qword_227670A30);
    }
  }

  while (1)
  {
    v14 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v14 >= v10)
    {

      return v13;
    }

    v9 = *(v6 + 64 + 8 * v14);
    ++v12;
    if (v9)
    {
      v12 = v14;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22727A974(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = sub_22766BFD0();
  v4 = [v2 entityForName:v3 inManagedObjectContext:a1];

  if (v4)
  {
    v5 = [v4 relationshipsByName];

    sub_226E99364(0, &qword_281398A78, 0x277CBE500);
    v6 = sub_22766BEB0();
  }

  else
  {
    v6 = sub_2271480A0(MEMORY[0x277D84F90]);
  }

  v7 = 1 << *(v6 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(v6 + 64);
  v10 = (v7 + 63) >> 6;

  v12 = 0;
  v13 = MEMORY[0x277D84F90];
  while (v9)
  {
LABEL_14:
    v15 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
    v16 = v15 | (v12 << 6);
    v17 = (*(v6 + 48) + 16 * v16);
    v18 = *v17;
    v19 = v17[1];
    v20 = *(*(v6 + 56) + 8 * v16);

    v21 = v20;
    v22 = [v21 userInfo];
    if (!v22)
    {

      v36 = 0u;
      v37 = 0u;
      goto LABEL_8;
    }

    v34 = v18;
    v23 = v22;
    v24 = sub_22766BEB0();

    sub_22766CDA0();
    if (!*(v24 + 16) || (v25 = sub_226E9BF6C(&v35), (v26 & 1) == 0))
    {

      sub_226E9B62C(&v35);
      v36 = 0u;
      v37 = 0u;
      goto LABEL_36;
    }

    sub_226E97CC0(*(v24 + 56) + 32 * v25, &v36);
    sub_226E9B62C(&v35);

    if (*(&v37 + 1))
    {
      if ((swift_dynamicCast() & 1) == 0)
      {

        goto LABEL_38;
      }

      v27 = sub_22766C070();
      v29 = v28;

      if (v27 == 121 && v29 == 0xE100000000000000 || (sub_22766D190() & 1) != 0 || v27 == 7562617 && v29 == 0xE300000000000000 || (sub_22766D190() & 1) != 0 || v27 == 116 && v29 == 0xE100000000000000 || (sub_22766D190() & 1) != 0 || v27 == 1702195828 && v29 == 0xE400000000000000 || (sub_22766D190() & 1) != 0 || v27 == 49 && v29 == 0xE100000000000000)
      {

        goto LABEL_40;
      }

      v30 = sub_22766D190();

      if (v30)
      {
LABEL_40:
        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_226EB3F78(0, *(v13 + 16) + 1, 1, v13);
          v13 = result;
        }

        v32 = *(v13 + 16);
        v31 = *(v13 + 24);
        if (v32 >= v31 >> 1)
        {
          result = sub_226EB3F78((v31 > 1), v32 + 1, 1, v13);
          v13 = result;
        }

        *(v13 + 16) = v32 + 1;
        v33 = v13 + 16 * v32;
        *(v33 + 32) = v34;
        *(v33 + 40) = v19;
      }

      else
      {
LABEL_38:
      }
    }

    else
    {
LABEL_36:

LABEL_8:
      result = sub_226E97D1C(&v36, &unk_27D7BC990, &qword_227670A30);
    }
  }

  while (1)
  {
    v14 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v14 >= v10)
    {

      return v13;
    }

    v9 = *(v6 + 64 + 8 * v14);
    ++v12;
    if (v9)
    {
      v12 = v14;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22727AE58(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = sub_22766BFD0();
  v4 = [v2 entityForName:v3 inManagedObjectContext:a1];

  if (v4)
  {
    v5 = [v4 relationshipsByName];

    sub_226E99364(0, &qword_281398A78, 0x277CBE500);
    v6 = sub_22766BEB0();
  }

  else
  {
    v6 = sub_2271480A0(MEMORY[0x277D84F90]);
  }

  v7 = 1 << *(v6 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(v6 + 64);
  v10 = (v7 + 63) >> 6;

  v12 = 0;
  v13 = MEMORY[0x277D84F90];
  while (v9)
  {
LABEL_14:
    v15 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
    v16 = v15 | (v12 << 6);
    v17 = (*(v6 + 48) + 16 * v16);
    v18 = *v17;
    v19 = v17[1];
    v20 = *(*(v6 + 56) + 8 * v16);

    v21 = v20;
    v22 = [v21 userInfo];
    if (!v22)
    {

      v36 = 0u;
      v37 = 0u;
      goto LABEL_8;
    }

    v34 = v18;
    v23 = v22;
    v24 = sub_22766BEB0();

    sub_22766CDA0();
    if (!*(v24 + 16) || (v25 = sub_226E9BF6C(&v35), (v26 & 1) == 0))
    {

      sub_226E9B62C(&v35);
      v36 = 0u;
      v37 = 0u;
      goto LABEL_36;
    }

    sub_226E97CC0(*(v24 + 56) + 32 * v25, &v36);
    sub_226E9B62C(&v35);

    if (*(&v37 + 1))
    {
      if ((swift_dynamicCast() & 1) == 0)
      {

        goto LABEL_38;
      }

      v27 = sub_22766C070();
      v29 = v28;

      if (v27 == 121 && v29 == 0xE100000000000000 || (sub_22766D190() & 1) != 0 || v27 == 7562617 && v29 == 0xE300000000000000 || (sub_22766D190() & 1) != 0 || v27 == 116 && v29 == 0xE100000000000000 || (sub_22766D190() & 1) != 0 || v27 == 1702195828 && v29 == 0xE400000000000000 || (sub_22766D190() & 1) != 0 || v27 == 49 && v29 == 0xE100000000000000)
      {

        goto LABEL_40;
      }

      v30 = sub_22766D190();

      if (v30)
      {
LABEL_40:
        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_226EB3F78(0, *(v13 + 16) + 1, 1, v13);
          v13 = result;
        }

        v32 = *(v13 + 16);
        v31 = *(v13 + 24);
        if (v32 >= v31 >> 1)
        {
          result = sub_226EB3F78((v31 > 1), v32 + 1, 1, v13);
          v13 = result;
        }

        *(v13 + 16) = v32 + 1;
        v33 = v13 + 16 * v32;
        *(v33 + 32) = v34;
        *(v33 + 40) = v19;
      }

      else
      {
LABEL_38:
      }
    }

    else
    {
LABEL_36:

LABEL_8:
      result = sub_226E97D1C(&v36, &unk_27D7BC990, &qword_227670A30);
    }
  }

  while (1)
  {
    v14 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v14 >= v10)
    {

      return v13;
    }

    v9 = *(v6 + 64 + 8 * v14);
    ++v12;
    if (v9)
    {
      v12 = v14;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22727B33C(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = sub_22766BFD0();
  v4 = [v2 entityForName:v3 inManagedObjectContext:a1];

  if (v4)
  {
    v5 = [v4 relationshipsByName];

    sub_226E99364(0, &qword_281398A78, 0x277CBE500);
    v6 = sub_22766BEB0();
  }

  else
  {
    v6 = sub_2271480A0(MEMORY[0x277D84F90]);
  }

  v7 = 1 << *(v6 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(v6 + 64);
  v10 = (v7 + 63) >> 6;

  v12 = 0;
  v13 = MEMORY[0x277D84F90];
  while (v9)
  {
LABEL_14:
    v15 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
    v16 = v15 | (v12 << 6);
    v17 = (*(v6 + 48) + 16 * v16);
    v18 = *v17;
    v19 = v17[1];
    v20 = *(*(v6 + 56) + 8 * v16);

    v21 = v20;
    v22 = [v21 userInfo];
    if (!v22)
    {

      v36 = 0u;
      v37 = 0u;
      goto LABEL_8;
    }

    v34 = v18;
    v23 = v22;
    v24 = sub_22766BEB0();

    sub_22766CDA0();
    if (!*(v24 + 16) || (v25 = sub_226E9BF6C(&v35), (v26 & 1) == 0))
    {

      sub_226E9B62C(&v35);
      v36 = 0u;
      v37 = 0u;
      goto LABEL_36;
    }

    sub_226E97CC0(*(v24 + 56) + 32 * v25, &v36);
    sub_226E9B62C(&v35);

    if (*(&v37 + 1))
    {
      if ((swift_dynamicCast() & 1) == 0)
      {

        goto LABEL_38;
      }

      v27 = sub_22766C070();
      v29 = v28;

      if (v27 == 121 && v29 == 0xE100000000000000 || (sub_22766D190() & 1) != 0 || v27 == 7562617 && v29 == 0xE300000000000000 || (sub_22766D190() & 1) != 0 || v27 == 116 && v29 == 0xE100000000000000 || (sub_22766D190() & 1) != 0 || v27 == 1702195828 && v29 == 0xE400000000000000 || (sub_22766D190() & 1) != 0 || v27 == 49 && v29 == 0xE100000000000000)
      {

        goto LABEL_40;
      }

      v30 = sub_22766D190();

      if (v30)
      {
LABEL_40:
        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_226EB3F78(0, *(v13 + 16) + 1, 1, v13);
          v13 = result;
        }

        v32 = *(v13 + 16);
        v31 = *(v13 + 24);
        if (v32 >= v31 >> 1)
        {
          result = sub_226EB3F78((v31 > 1), v32 + 1, 1, v13);
          v13 = result;
        }

        *(v13 + 16) = v32 + 1;
        v33 = v13 + 16 * v32;
        *(v33 + 32) = v34;
        *(v33 + 40) = v19;
      }

      else
      {
LABEL_38:
      }
    }

    else
    {
LABEL_36:

LABEL_8:
      result = sub_226E97D1C(&v36, &unk_27D7BC990, &qword_227670A30);
    }
  }

  while (1)
  {
    v14 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v14 >= v10)
    {

      return v13;
    }

    v9 = *(v6 + 64 + 8 * v14);
    ++v12;
    if (v9)
    {
      v12 = v14;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22727B820(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = sub_22766BFD0();
  v4 = [v2 entityForName:v3 inManagedObjectContext:a1];

  if (v4)
  {
    v5 = [v4 relationshipsByName];

    sub_226E99364(0, &qword_281398A78, 0x277CBE500);
    v6 = sub_22766BEB0();
  }

  else
  {
    v6 = sub_2271480A0(MEMORY[0x277D84F90]);
  }

  v7 = 1 << *(v6 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(v6 + 64);
  v10 = (v7 + 63) >> 6;

  v12 = 0;
  v13 = MEMORY[0x277D84F90];
  while (v9)
  {
LABEL_14:
    v15 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
    v16 = v15 | (v12 << 6);
    v17 = (*(v6 + 48) + 16 * v16);
    v18 = *v17;
    v19 = v17[1];
    v20 = *(*(v6 + 56) + 8 * v16);

    v21 = v20;
    v22 = [v21 userInfo];
    if (!v22)
    {

      v36 = 0u;
      v37 = 0u;
      goto LABEL_8;
    }

    v34 = v18;
    v23 = v22;
    v24 = sub_22766BEB0();

    sub_22766CDA0();
    if (!*(v24 + 16) || (v25 = sub_226E9BF6C(&v35), (v26 & 1) == 0))
    {

      sub_226E9B62C(&v35);
      v36 = 0u;
      v37 = 0u;
      goto LABEL_36;
    }

    sub_226E97CC0(*(v24 + 56) + 32 * v25, &v36);
    sub_226E9B62C(&v35);

    if (*(&v37 + 1))
    {
      if ((swift_dynamicCast() & 1) == 0)
      {

        goto LABEL_38;
      }

      v27 = sub_22766C070();
      v29 = v28;

      if (v27 == 121 && v29 == 0xE100000000000000 || (sub_22766D190() & 1) != 0 || v27 == 7562617 && v29 == 0xE300000000000000 || (sub_22766D190() & 1) != 0 || v27 == 116 && v29 == 0xE100000000000000 || (sub_22766D190() & 1) != 0 || v27 == 1702195828 && v29 == 0xE400000000000000 || (sub_22766D190() & 1) != 0 || v27 == 49 && v29 == 0xE100000000000000)
      {

        goto LABEL_40;
      }

      v30 = sub_22766D190();

      if (v30)
      {
LABEL_40:
        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_226EB3F78(0, *(v13 + 16) + 1, 1, v13);
          v13 = result;
        }

        v32 = *(v13 + 16);
        v31 = *(v13 + 24);
        if (v32 >= v31 >> 1)
        {
          result = sub_226EB3F78((v31 > 1), v32 + 1, 1, v13);
          v13 = result;
        }

        *(v13 + 16) = v32 + 1;
        v33 = v13 + 16 * v32;
        *(v33 + 32) = v34;
        *(v33 + 40) = v19;
      }

      else
      {
LABEL_38:
      }
    }

    else
    {
LABEL_36:

LABEL_8:
      result = sub_226E97D1C(&v36, &unk_27D7BC990, &qword_227670A30);
    }
  }

  while (1)
  {
    v14 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v14 >= v10)
    {

      return v13;
    }

    v9 = *(v6 + 64 + 8 * v14);
    ++v12;
    if (v9)
    {
      v12 = v14;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22727BD04(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = sub_22766BFD0();
  v4 = [v2 entityForName:v3 inManagedObjectContext:a1];

  if (v4)
  {
    v5 = [v4 relationshipsByName];

    sub_226E99364(0, &qword_281398A78, 0x277CBE500);
    v6 = sub_22766BEB0();
  }

  else
  {
    v6 = sub_2271480A0(MEMORY[0x277D84F90]);
  }

  v7 = 1 << *(v6 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(v6 + 64);
  v10 = (v7 + 63) >> 6;

  v12 = 0;
  v13 = MEMORY[0x277D84F90];
  while (v9)
  {
LABEL_14:
    v15 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
    v16 = v15 | (v12 << 6);
    v17 = (*(v6 + 48) + 16 * v16);
    v18 = *v17;
    v19 = v17[1];
    v20 = *(*(v6 + 56) + 8 * v16);

    v21 = v20;
    v22 = [v21 userInfo];
    if (!v22)
    {

      v36 = 0u;
      v37 = 0u;
      goto LABEL_8;
    }

    v34 = v18;
    v23 = v22;
    v24 = sub_22766BEB0();

    sub_22766CDA0();
    if (!*(v24 + 16) || (v25 = sub_226E9BF6C(&v35), (v26 & 1) == 0))
    {

      sub_226E9B62C(&v35);
      v36 = 0u;
      v37 = 0u;
      goto LABEL_36;
    }

    sub_226E97CC0(*(v24 + 56) + 32 * v25, &v36);
    sub_226E9B62C(&v35);

    if (*(&v37 + 1))
    {
      if ((swift_dynamicCast() & 1) == 0)
      {

        goto LABEL_38;
      }

      v27 = sub_22766C070();
      v29 = v28;

      if (v27 == 121 && v29 == 0xE100000000000000 || (sub_22766D190() & 1) != 0 || v27 == 7562617 && v29 == 0xE300000000000000 || (sub_22766D190() & 1) != 0 || v27 == 116 && v29 == 0xE100000000000000 || (sub_22766D190() & 1) != 0 || v27 == 1702195828 && v29 == 0xE400000000000000 || (sub_22766D190() & 1) != 0 || v27 == 49 && v29 == 0xE100000000000000)
      {

        goto LABEL_40;
      }

      v30 = sub_22766D190();

      if (v30)
      {
LABEL_40:
        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_226EB3F78(0, *(v13 + 16) + 1, 1, v13);
          v13 = result;
        }

        v32 = *(v13 + 16);
        v31 = *(v13 + 24);
        if (v32 >= v31 >> 1)
        {
          result = sub_226EB3F78((v31 > 1), v32 + 1, 1, v13);
          v13 = result;
        }

        *(v13 + 16) = v32 + 1;
        v33 = v13 + 16 * v32;
        *(v33 + 32) = v34;
        *(v33 + 40) = v19;
      }

      else
      {
LABEL_38:
      }
    }

    else
    {
LABEL_36:

LABEL_8:
      result = sub_226E97D1C(&v36, &unk_27D7BC990, &qword_227670A30);
    }
  }

  while (1)
  {
    v14 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v14 >= v10)
    {

      return v13;
    }

    v9 = *(v6 + 64 + 8 * v14);
    ++v12;
    if (v9)
    {
      v12 = v14;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22727C1E8(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = sub_22766BFD0();
  v4 = [v2 entityForName:v3 inManagedObjectContext:a1];

  if (v4)
  {
    v5 = [v4 relationshipsByName];

    sub_226E99364(0, &qword_281398A78, 0x277CBE500);
    v6 = sub_22766BEB0();
  }

  else
  {
    v6 = sub_2271480A0(MEMORY[0x277D84F90]);
  }

  v7 = 1 << *(v6 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(v6 + 64);
  v10 = (v7 + 63) >> 6;

  v12 = 0;
  v13 = MEMORY[0x277D84F90];
  while (v9)
  {
LABEL_14:
    v15 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
    v16 = v15 | (v12 << 6);
    v17 = (*(v6 + 48) + 16 * v16);
    v18 = *v17;
    v19 = v17[1];
    v20 = *(*(v6 + 56) + 8 * v16);

    v21 = v20;
    v22 = [v21 userInfo];
    if (!v22)
    {

      v36 = 0u;
      v37 = 0u;
      goto LABEL_8;
    }

    v34 = v18;
    v23 = v22;
    v24 = sub_22766BEB0();

    sub_22766CDA0();
    if (!*(v24 + 16) || (v25 = sub_226E9BF6C(&v35), (v26 & 1) == 0))
    {

      sub_226E9B62C(&v35);
      v36 = 0u;
      v37 = 0u;
      goto LABEL_36;
    }

    sub_226E97CC0(*(v24 + 56) + 32 * v25, &v36);
    sub_226E9B62C(&v35);

    if (*(&v37 + 1))
    {
      if ((swift_dynamicCast() & 1) == 0)
      {

        goto LABEL_38;
      }

      v27 = sub_22766C070();
      v29 = v28;

      if (v27 == 121 && v29 == 0xE100000000000000 || (sub_22766D190() & 1) != 0 || v27 == 7562617 && v29 == 0xE300000000000000 || (sub_22766D190() & 1) != 0 || v27 == 116 && v29 == 0xE100000000000000 || (sub_22766D190() & 1) != 0 || v27 == 1702195828 && v29 == 0xE400000000000000 || (sub_22766D190() & 1) != 0 || v27 == 49 && v29 == 0xE100000000000000)
      {

        goto LABEL_40;
      }

      v30 = sub_22766D190();

      if (v30)
      {
LABEL_40:
        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_226EB3F78(0, *(v13 + 16) + 1, 1, v13);
          v13 = result;
        }

        v32 = *(v13 + 16);
        v31 = *(v13 + 24);
        if (v32 >= v31 >> 1)
        {
          result = sub_226EB3F78((v31 > 1), v32 + 1, 1, v13);
          v13 = result;
        }

        *(v13 + 16) = v32 + 1;
        v33 = v13 + 16 * v32;
        *(v33 + 32) = v34;
        *(v33 + 40) = v19;
      }

      else
      {
LABEL_38:
      }
    }

    else
    {
LABEL_36:

LABEL_8:
      result = sub_226E97D1C(&v36, &unk_27D7BC990, &qword_227670A30);
    }
  }

  while (1)
  {
    v14 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v14 >= v10)
    {

      return v13;
    }

    v9 = *(v6 + 64 + 8 * v14);
    ++v12;
    if (v9)
    {
      v12 = v14;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22727C6CC(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = sub_22766BFD0();
  v4 = [v2 entityForName:v3 inManagedObjectContext:a1];

  if (v4)
  {
    v5 = [v4 relationshipsByName];

    sub_226E99364(0, &qword_281398A78, 0x277CBE500);
    v6 = sub_22766BEB0();
  }

  else
  {
    v6 = sub_2271480A0(MEMORY[0x277D84F90]);
  }

  v7 = 1 << *(v6 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(v6 + 64);
  v10 = (v7 + 63) >> 6;

  v12 = 0;
  v13 = MEMORY[0x277D84F90];
  while (v9)
  {
LABEL_14:
    v15 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
    v16 = v15 | (v12 << 6);
    v17 = (*(v6 + 48) + 16 * v16);
    v18 = *v17;
    v19 = v17[1];
    v20 = *(*(v6 + 56) + 8 * v16);

    v21 = v20;
    v22 = [v21 userInfo];
    if (!v22)
    {

      v36 = 0u;
      v37 = 0u;
      goto LABEL_8;
    }

    v34 = v18;
    v23 = v22;
    v24 = sub_22766BEB0();

    sub_22766CDA0();
    if (!*(v24 + 16) || (v25 = sub_226E9BF6C(&v35), (v26 & 1) == 0))
    {

      sub_226E9B62C(&v35);
      v36 = 0u;
      v37 = 0u;
      goto LABEL_36;
    }

    sub_226E97CC0(*(v24 + 56) + 32 * v25, &v36);
    sub_226E9B62C(&v35);

    if (*(&v37 + 1))
    {
      if ((swift_dynamicCast() & 1) == 0)
      {

        goto LABEL_38;
      }

      v27 = sub_22766C070();
      v29 = v28;

      if (v27 == 121 && v29 == 0xE100000000000000 || (sub_22766D190() & 1) != 0 || v27 == 7562617 && v29 == 0xE300000000000000 || (sub_22766D190() & 1) != 0 || v27 == 116 && v29 == 0xE100000000000000 || (sub_22766D190() & 1) != 0 || v27 == 1702195828 && v29 == 0xE400000000000000 || (sub_22766D190() & 1) != 0 || v27 == 49 && v29 == 0xE100000000000000)
      {

        goto LABEL_40;
      }

      v30 = sub_22766D190();

      if (v30)
      {
LABEL_40:
        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_226EB3F78(0, *(v13 + 16) + 1, 1, v13);
          v13 = result;
        }

        v32 = *(v13 + 16);
        v31 = *(v13 + 24);
        if (v32 >= v31 >> 1)
        {
          result = sub_226EB3F78((v31 > 1), v32 + 1, 1, v13);
          v13 = result;
        }

        *(v13 + 16) = v32 + 1;
        v33 = v13 + 16 * v32;
        *(v33 + 32) = v34;
        *(v33 + 40) = v19;
      }

      else
      {
LABEL_38:
      }
    }

    else
    {
LABEL_36:

LABEL_8:
      result = sub_226E97D1C(&v36, &unk_27D7BC990, &qword_227670A30);
    }
  }

  while (1)
  {
    v14 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v14 >= v10)
    {

      return v13;
    }

    v9 = *(v6 + 64 + 8 * v14);
    ++v12;
    if (v9)
    {
      v12 = v14;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22727CBB0(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = sub_22766BFD0();
  v4 = [v2 entityForName:v3 inManagedObjectContext:a1];

  if (v4)
  {
    v5 = [v4 relationshipsByName];

    sub_226E99364(0, &qword_281398A78, 0x277CBE500);
    v6 = sub_22766BEB0();
  }

  else
  {
    v6 = sub_2271480A0(MEMORY[0x277D84F90]);
  }

  v7 = 1 << *(v6 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(v6 + 64);
  v10 = (v7 + 63) >> 6;

  v12 = 0;
  v13 = MEMORY[0x277D84F90];
  while (v9)
  {
LABEL_14:
    v15 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
    v16 = v15 | (v12 << 6);
    v17 = (*(v6 + 48) + 16 * v16);
    v18 = *v17;
    v19 = v17[1];
    v20 = *(*(v6 + 56) + 8 * v16);

    v21 = v20;
    v22 = [v21 userInfo];
    if (!v22)
    {

      v36 = 0u;
      v37 = 0u;
      goto LABEL_8;
    }

    v34 = v18;
    v23 = v22;
    v24 = sub_22766BEB0();

    sub_22766CDA0();
    if (!*(v24 + 16) || (v25 = sub_226E9BF6C(&v35), (v26 & 1) == 0))
    {

      sub_226E9B62C(&v35);
      v36 = 0u;
      v37 = 0u;
      goto LABEL_36;
    }

    sub_226E97CC0(*(v24 + 56) + 32 * v25, &v36);
    sub_226E9B62C(&v35);

    if (*(&v37 + 1))
    {
      if ((swift_dynamicCast() & 1) == 0)
      {

        goto LABEL_38;
      }

      v27 = sub_22766C070();
      v29 = v28;

      if (v27 == 121 && v29 == 0xE100000000000000 || (sub_22766D190() & 1) != 0 || v27 == 7562617 && v29 == 0xE300000000000000 || (sub_22766D190() & 1) != 0 || v27 == 116 && v29 == 0xE100000000000000 || (sub_22766D190() & 1) != 0 || v27 == 1702195828 && v29 == 0xE400000000000000 || (sub_22766D190() & 1) != 0 || v27 == 49 && v29 == 0xE100000000000000)
      {

        goto LABEL_40;
      }

      v30 = sub_22766D190();

      if (v30)
      {
LABEL_40:
        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_226EB3F78(0, *(v13 + 16) + 1, 1, v13);
          v13 = result;
        }

        v32 = *(v13 + 16);
        v31 = *(v13 + 24);
        if (v32 >= v31 >> 1)
        {
          result = sub_226EB3F78((v31 > 1), v32 + 1, 1, v13);
          v13 = result;
        }

        *(v13 + 16) = v32 + 1;
        v33 = v13 + 16 * v32;
        *(v33 + 32) = v34;
        *(v33 + 40) = v19;
      }

      else
      {
LABEL_38:
      }
    }

    else
    {
LABEL_36:

LABEL_8:
      result = sub_226E97D1C(&v36, &unk_27D7BC990, &qword_227670A30);
    }
  }

  while (1)
  {
    v14 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v14 >= v10)
    {

      return v13;
    }

    v9 = *(v6 + 64 + 8 * v14);
    ++v12;
    if (v9)
    {
      v12 = v14;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22727D094(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = sub_22766BFD0();
  v4 = [v2 entityForName:v3 inManagedObjectContext:a1];

  if (v4)
  {
    v5 = [v4 relationshipsByName];

    sub_226E99364(0, &qword_281398A78, 0x277CBE500);
    v6 = sub_22766BEB0();
  }

  else
  {
    v6 = sub_2271480A0(MEMORY[0x277D84F90]);
  }

  v7 = 1 << *(v6 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(v6 + 64);
  v10 = (v7 + 63) >> 6;

  v12 = 0;
  v13 = MEMORY[0x277D84F90];
  while (v9)
  {
LABEL_14:
    v15 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
    v16 = v15 | (v12 << 6);
    v17 = (*(v6 + 48) + 16 * v16);
    v18 = *v17;
    v19 = v17[1];
    v20 = *(*(v6 + 56) + 8 * v16);

    v21 = v20;
    v22 = [v21 userInfo];
    if (!v22)
    {

      v36 = 0u;
      v37 = 0u;
      goto LABEL_8;
    }

    v34 = v18;
    v23 = v22;
    v24 = sub_22766BEB0();

    sub_22766CDA0();
    if (!*(v24 + 16) || (v25 = sub_226E9BF6C(&v35), (v26 & 1) == 0))
    {

      sub_226E9B62C(&v35);
      v36 = 0u;
      v37 = 0u;
      goto LABEL_36;
    }

    sub_226E97CC0(*(v24 + 56) + 32 * v25, &v36);
    sub_226E9B62C(&v35);

    if (*(&v37 + 1))
    {
      if ((swift_dynamicCast() & 1) == 0)
      {

        goto LABEL_38;
      }

      v27 = sub_22766C070();
      v29 = v28;

      if (v27 == 121 && v29 == 0xE100000000000000 || (sub_22766D190() & 1) != 0 || v27 == 7562617 && v29 == 0xE300000000000000 || (sub_22766D190() & 1) != 0 || v27 == 116 && v29 == 0xE100000000000000 || (sub_22766D190() & 1) != 0 || v27 == 1702195828 && v29 == 0xE400000000000000 || (sub_22766D190() & 1) != 0 || v27 == 49 && v29 == 0xE100000000000000)
      {

        goto LABEL_40;
      }

      v30 = sub_22766D190();

      if (v30)
      {
LABEL_40:
        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_226EB3F78(0, *(v13 + 16) + 1, 1, v13);
          v13 = result;
        }

        v32 = *(v13 + 16);
        v31 = *(v13 + 24);
        if (v32 >= v31 >> 1)
        {
          result = sub_226EB3F78((v31 > 1), v32 + 1, 1, v13);
          v13 = result;
        }

        *(v13 + 16) = v32 + 1;
        v33 = v13 + 16 * v32;
        *(v33 + 32) = v34;
        *(v33 + 40) = v19;
      }

      else
      {
LABEL_38:
      }
    }

    else
    {
LABEL_36:

LABEL_8:
      result = sub_226E97D1C(&v36, &unk_27D7BC990, &qword_227670A30);
    }
  }

  while (1)
  {
    v14 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v14 >= v10)
    {

      return v13;
    }

    v9 = *(v6 + 64 + 8 * v14);
    ++v12;
    if (v9)
    {
      v12 = v14;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22727D578(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = sub_22766BFD0();
  v4 = [v2 entityForName:v3 inManagedObjectContext:a1];

  if (v4)
  {
    v5 = [v4 relationshipsByName];

    sub_226E99364(0, &qword_281398A78, 0x277CBE500);
    v6 = sub_22766BEB0();
  }

  else
  {
    v6 = sub_2271480A0(MEMORY[0x277D84F90]);
  }

  v7 = 1 << *(v6 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(v6 + 64);
  v10 = (v7 + 63) >> 6;

  v12 = 0;
  v13 = MEMORY[0x277D84F90];
  while (v9)
  {
LABEL_14:
    v15 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
    v16 = v15 | (v12 << 6);
    v17 = (*(v6 + 48) + 16 * v16);
    v18 = *v17;
    v19 = v17[1];
    v20 = *(*(v6 + 56) + 8 * v16);

    v21 = v20;
    v22 = [v21 userInfo];
    if (!v22)
    {

      v36 = 0u;
      v37 = 0u;
      goto LABEL_8;
    }

    v34 = v18;
    v23 = v22;
    v24 = sub_22766BEB0();

    sub_22766CDA0();
    if (!*(v24 + 16) || (v25 = sub_226E9BF6C(&v35), (v26 & 1) == 0))
    {

      sub_226E9B62C(&v35);
      v36 = 0u;
      v37 = 0u;
      goto LABEL_36;
    }

    sub_226E97CC0(*(v24 + 56) + 32 * v25, &v36);
    sub_226E9B62C(&v35);

    if (*(&v37 + 1))
    {
      if ((swift_dynamicCast() & 1) == 0)
      {

        goto LABEL_38;
      }

      v27 = sub_22766C070();
      v29 = v28;

      if (v27 == 121 && v29 == 0xE100000000000000 || (sub_22766D190() & 1) != 0 || v27 == 7562617 && v29 == 0xE300000000000000 || (sub_22766D190() & 1) != 0 || v27 == 116 && v29 == 0xE100000000000000 || (sub_22766D190() & 1) != 0 || v27 == 1702195828 && v29 == 0xE400000000000000 || (sub_22766D190() & 1) != 0 || v27 == 49 && v29 == 0xE100000000000000)
      {

        goto LABEL_40;
      }

      v30 = sub_22766D190();

      if (v30)
      {
LABEL_40:
        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_226EB3F78(0, *(v13 + 16) + 1, 1, v13);
          v13 = result;
        }

        v32 = *(v13 + 16);
        v31 = *(v13 + 24);
        if (v32 >= v31 >> 1)
        {
          result = sub_226EB3F78((v31 > 1), v32 + 1, 1, v13);
          v13 = result;
        }

        *(v13 + 16) = v32 + 1;
        v33 = v13 + 16 * v32;
        *(v33 + 32) = v34;
        *(v33 + 40) = v19;
      }

      else
      {
LABEL_38:
      }
    }

    else
    {
LABEL_36:

LABEL_8:
      result = sub_226E97D1C(&v36, &unk_27D7BC990, &qword_227670A30);
    }
  }

  while (1)
  {
    v14 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v14 >= v10)
    {

      return v13;
    }

    v9 = *(v6 + 64 + 8 * v14);
    ++v12;
    if (v9)
    {
      v12 = v14;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22727DCBC(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = sub_22766BFD0();
  v4 = [v2 entityForName:v3 inManagedObjectContext:a1];

  if (v4)
  {
    v5 = [v4 relationshipsByName];

    sub_226E99364(0, &qword_281398A78, 0x277CBE500);
    v6 = sub_22766BEB0();
  }

  else
  {
    v6 = sub_2271480A0(MEMORY[0x277D84F90]);
  }

  v7 = 1 << *(v6 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(v6 + 64);
  v10 = (v7 + 63) >> 6;

  v12 = 0;
  v13 = MEMORY[0x277D84F90];
  while (v9)
  {
LABEL_14:
    v15 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
    v16 = v15 | (v12 << 6);
    v17 = (*(v6 + 48) + 16 * v16);
    v18 = *v17;
    v19 = v17[1];
    v20 = *(*(v6 + 56) + 8 * v16);

    v21 = v20;
    v22 = [v21 userInfo];
    if (!v22)
    {

      v36 = 0u;
      v37 = 0u;
      goto LABEL_8;
    }

    v34 = v18;
    v23 = v22;
    v24 = sub_22766BEB0();

    sub_22766CDA0();
    if (!*(v24 + 16) || (v25 = sub_226E9BF6C(&v35), (v26 & 1) == 0))
    {

      sub_226E9B62C(&v35);
      v36 = 0u;
      v37 = 0u;
      goto LABEL_36;
    }

    sub_226E97CC0(*(v24 + 56) + 32 * v25, &v36);
    sub_226E9B62C(&v35);

    if (*(&v37 + 1))
    {
      if ((swift_dynamicCast() & 1) == 0)
      {

        goto LABEL_38;
      }

      v27 = sub_22766C070();
      v29 = v28;

      if (v27 == 121 && v29 == 0xE100000000000000 || (sub_22766D190() & 1) != 0 || v27 == 7562617 && v29 == 0xE300000000000000 || (sub_22766D190() & 1) != 0 || v27 == 116 && v29 == 0xE100000000000000 || (sub_22766D190() & 1) != 0 || v27 == 1702195828 && v29 == 0xE400000000000000 || (sub_22766D190() & 1) != 0 || v27 == 49 && v29 == 0xE100000000000000)
      {

        goto LABEL_40;
      }

      v30 = sub_22766D190();

      if (v30)
      {
LABEL_40:
        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_226EB3F78(0, *(v13 + 16) + 1, 1, v13);
          v13 = result;
        }

        v32 = *(v13 + 16);
        v31 = *(v13 + 24);
        if (v32 >= v31 >> 1)
        {
          result = sub_226EB3F78((v31 > 1), v32 + 1, 1, v13);
          v13 = result;
        }

        *(v13 + 16) = v32 + 1;
        v33 = v13 + 16 * v32;
        *(v33 + 32) = v34;
        *(v33 + 40) = v19;
      }

      else
      {
LABEL_38:
      }
    }

    else
    {
LABEL_36:

LABEL_8:
      result = sub_226E97D1C(&v36, &unk_27D7BC990, &qword_227670A30);
    }
  }

  while (1)
  {
    v14 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v14 >= v10)
    {

      return v13;
    }

    v9 = *(v6 + 64 + 8 * v14);
    ++v12;
    if (v9)
    {
      v12 = v14;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22727E1A0(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = sub_22766BFD0();
  v4 = [v2 entityForName:v3 inManagedObjectContext:a1];

  if (v4)
  {
    v5 = [v4 relationshipsByName];

    sub_226E99364(0, &qword_281398A78, 0x277CBE500);
    v6 = sub_22766BEB0();
  }

  else
  {
    v6 = sub_2271480A0(MEMORY[0x277D84F90]);
  }

  v7 = 1 << *(v6 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(v6 + 64);
  v10 = (v7 + 63) >> 6;

  v12 = 0;
  v13 = MEMORY[0x277D84F90];
  while (v9)
  {
LABEL_14:
    v15 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
    v16 = v15 | (v12 << 6);
    v17 = (*(v6 + 48) + 16 * v16);
    v18 = *v17;
    v19 = v17[1];
    v20 = *(*(v6 + 56) + 8 * v16);

    v21 = v20;
    v22 = [v21 userInfo];
    if (!v22)
    {

      v36 = 0u;
      v37 = 0u;
      goto LABEL_8;
    }

    v34 = v18;
    v23 = v22;
    v24 = sub_22766BEB0();

    sub_22766CDA0();
    if (!*(v24 + 16) || (v25 = sub_226E9BF6C(&v35), (v26 & 1) == 0))
    {

      sub_226E9B62C(&v35);
      v36 = 0u;
      v37 = 0u;
      goto LABEL_36;
    }

    sub_226E97CC0(*(v24 + 56) + 32 * v25, &v36);
    sub_226E9B62C(&v35);

    if (*(&v37 + 1))
    {
      if ((swift_dynamicCast() & 1) == 0)
      {

        goto LABEL_38;
      }

      v27 = sub_22766C070();
      v29 = v28;

      if (v27 == 121 && v29 == 0xE100000000000000 || (sub_22766D190() & 1) != 0 || v27 == 7562617 && v29 == 0xE300000000000000 || (sub_22766D190() & 1) != 0 || v27 == 116 && v29 == 0xE100000000000000 || (sub_22766D190() & 1) != 0 || v27 == 1702195828 && v29 == 0xE400000000000000 || (sub_22766D190() & 1) != 0 || v27 == 49 && v29 == 0xE100000000000000)
      {

        goto LABEL_40;
      }

      v30 = sub_22766D190();

      if (v30)
      {
LABEL_40:
        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_226EB3F78(0, *(v13 + 16) + 1, 1, v13);
          v13 = result;
        }

        v32 = *(v13 + 16);
        v31 = *(v13 + 24);
        if (v32 >= v31 >> 1)
        {
          result = sub_226EB3F78((v31 > 1), v32 + 1, 1, v13);
          v13 = result;
        }

        *(v13 + 16) = v32 + 1;
        v33 = v13 + 16 * v32;
        *(v33 + 32) = v34;
        *(v33 + 40) = v19;
      }

      else
      {
LABEL_38:
      }
    }

    else
    {
LABEL_36:

LABEL_8:
      result = sub_226E97D1C(&v36, &unk_27D7BC990, &qword_227670A30);
    }
  }

  while (1)
  {
    v14 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v14 >= v10)
    {

      return v13;
    }

    v9 = *(v6 + 64 + 8 * v14);
    ++v12;
    if (v9)
    {
      v12 = v14;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

BOOL sub_22727E684(void *a1)
{
  v2 = v1;
  v3 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  v4 = *v3;
  v5 = v3[1];
  v6 = *(v3 + 16);
  v7 = v3[3];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC228, qword_22767CFB0);
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  v11 = swift_allocObject();
  v12 = v4;
  v13 = v5;

  sub_22766A070();
  v45 = v12;
  *(v11 + 16) = v12;
  *(v11 + 24) = v13;
  v41[0] = v13;
  v41[1] = v7;
  *(v11 + 32) = v6;
  *(v11 + 40) = v7;
  swift_getKeyPath();
  v14 = sub_227664ED0();
  v44[3] = MEMORY[0x277D83B88];
  v44[0] = v14;
  sub_226E99364(0, &qword_281398B40, 0x277CCA9C0);

  v15 = sub_22766C820();
  sub_226E93170(v44, v42, &unk_27D7BC990, &qword_227670A30);
  v16 = v43;
  if (v43)
  {
    v17 = __swift_project_boxed_opaque_existential_0(v42, v43);
    v18 = *(v16 - 8);
    v19 = *(v18 + 64);
    v20 = MEMORY[0x28223BE20](v17);
    v22 = v41 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v18 + 16))(v22, v20);
    v23 = sub_22766D170();
    (*(v18 + 8))(v22, v16);
    v2 = v1;
    __swift_destroy_boxed_opaque_existential_0(v42);
  }

  else
  {
    v23 = 0;
  }

  v24 = [objc_opt_self() expressionForConstantValue_];
  swift_unknownObjectRelease();
  v25 = [objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC230 qword_22767D000))];

  sub_226E97D1C(v44, &unk_27D7BC990, &qword_227670A30);
  swift_beginAccess();
  v26 = v25;
  v27 = sub_22766A080();
  v29 = v28;
  MEMORY[0x22AA985C0]();
  if (*((*v29 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v29 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v40 = *((*v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_22766C360();
  }

  sub_22766C3A0();
  v27(v44, 0);
  swift_endAccess();

  v30 = sub_226E9CA64(0);
  if (v2)
  {
  }

  else
  {
    v32 = v30;
    [v30 setResultType_];
    [v32 setFetchLimit_];
    [v32 setFetchOffset_];
    [v32 setIncludesSubentities_];
    [v32 setFetchLimit_];
    sub_226E99364(0, &qword_28139D220, 0x277CCABB0);
    v33 = v45;
    v35 = sub_22766C9D0();

    swift_setDeallocating();
    v36 = qword_2813B2078;
    v37 = sub_22766A100();
    (*(*(v37 - 8) + 8))(v11 + v36, v37);
    v38 = *(*v11 + 48);
    v39 = *(*v11 + 52);
    swift_deallocClassInstance();
    return v35 > 0;
  }

  return v31;
}

void sub_22727EB5C(uint64_t a1, void *a2)
{
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BB9D0, &qword_227671550);
  v4 = *(*(v56 - 8) + 64);
  MEMORY[0x28223BE20](v56);
  v6 = &v50 - v5;
  v7 = a2[3];
  v53 = a2;
  v8 = __swift_project_boxed_opaque_existential_0(a2, v7);
  v9 = *v8;
  v10 = v8[1];
  v11 = *(v8 + 16);
  v12 = v8[3];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC228, qword_22767CFB0);
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  v16 = swift_allocObject();
  v17 = v9;
  v18 = v10;

  sub_22766A070();
  v51 = v18;
  v52 = v17;
  *(v16 + 16) = v17;
  *(v16 + 24) = v18;
  v61 = v11;
  *(v16 + 32) = v11;
  v57 = v12;
  *(v16 + 40) = v12;
  v19 = v6;
  swift_getKeyPath();
  v54 = a1;
  sub_2276637C0();
  v20 = sub_2276627D0();
  (*(*(v20 - 8) + 56))(v6, 0, 1, v20);
  v60[3] = v56;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v60);
  sub_226E93170(v6, boxed_opaque_existential_0, &unk_27D7BB9D0, &qword_227671550);
  sub_226E99364(0, &qword_281398B40, 0x277CCA9C0);

  v22 = sub_22766C820();
  sub_226E93170(v60, v58, &unk_27D7BC990, &qword_227670A30);
  v23 = v59;
  if (v59)
  {
    v24 = __swift_project_boxed_opaque_existential_0(v58, v59);
    v25 = *(v23 - 8);
    v26 = *(v25 + 64);
    MEMORY[0x28223BE20](v24);
    v28 = &v50 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v25 + 16))(v28);
    v29 = sub_22766D170();
    (*(v25 + 8))(v28, v23);
    __swift_destroy_boxed_opaque_existential_0(v58);
  }

  else
  {
    v29 = 0;
  }

  v30 = [objc_opt_self() expressionForConstantValue_];
  swift_unknownObjectRelease();
  v31 = [objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC230 qword_22767D000))];

  sub_226E97D1C(v19, &unk_27D7BB9D0, &qword_227671550);
  sub_226E97D1C(v60, &unk_27D7BC990, &qword_227670A30);
  v32 = qword_2813B2078;
  swift_beginAccess();
  v33 = v31;
  v34 = sub_22766A080();
  v36 = v35;
  MEMORY[0x22AA985C0]();
  if (*((*v36 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v36 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v49 = *((*v36 & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_22766C360();
  }

  sub_22766C3A0();
  v34(v60, 0);
  swift_endAccess();

  v37 = sub_227543200(v16 + v32, v61, v57);
  if (v37)
  {
    if (v37 == 1)
    {

LABEL_9:
      v38 = __swift_project_boxed_opaque_existential_0(v53, v53[3]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BAF30, &qword_22767CC30);
      v39 = sub_2276638D0();
      v40 = *(v39 - 8);
      v41 = *(v40 + 72);
      v42 = (*(v40 + 80) + 32) & ~*(v40 + 80);
      v43 = swift_allocObject();
      *(v43 + 16) = xmmword_227670CD0;
      (*(v40 + 16))(v43 + v42, v54, v39);
      sub_22756601C(v43, v38[1], *(v38 + 16), v38[3]);

      return;
    }

    swift_willThrow();
  }

  else
  {
    v44 = v55;
    v45 = sub_226E9CA64(0);
    if (!v44)
    {
      v46 = v45;
      [v45 setResultType_];
      sub_226E99364(0, &qword_281398AE0, 0x277CBE448);
      v47 = sub_22766C9E0();
      v55 = 0;
      v48 = sub_226EDAB24(v47);

      sub_226EDAB78(v48, v51);

      goto LABEL_9;
    }
  }
}

char *sub_22727F174(uint64_t a1, void *a2)
{
  v50 = a1;
  v46 = sub_227666E60();
  v54 = *(v46 - 8);
  v3 = *(v54 + 64);
  MEMORY[0x28223BE20](v46);
  v45 = v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = sub_2276653E0();
  v5 = *(v51 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v51);
  v8 = v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_project_boxed_opaque_existential_0(a2, a2[3]);
  v10 = *v9;
  v11 = v9[1];
  LODWORD(v49) = *(v9 + 16);
  v12 = v9[3];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC228, qword_22767CFB0);
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  v16 = swift_allocObject();
  v17 = v10;
  v18 = v11;

  sub_22766A070();
  *(v16 + 16) = v17;
  *(v16 + 24) = v18;
  *(v16 + 32) = v49;
  *(v16 + 40) = v12;
  sub_227666E10();
  v19 = sub_227253A6C();
  (*(v5 + 8))(v8, v51);
  v20 = qword_2813B2078;
  swift_beginAccess();
  v21 = sub_22766A080();
  v23 = v22;
  v24 = v19;
  MEMORY[0x22AA985C0]();
  if (*((*v23 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v23 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v43 = *((*v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_22766C360();
  }

  sub_22766C3A0();
  v21(v53, 0);
  swift_endAccess();

  sub_227666E00();
  swift_beginAccess();
  sub_22766A0D0();
  swift_endAccess();
  sub_227666E20();
  swift_beginAccess();
  sub_22766A0F0();
  swift_endAccess();
  v25 = sub_227666DF0();
  v26 = *(v25 + 16);
  if (v26)
  {
    v27 = sub_226E99364(0, &qword_281398AF8, 0x277CCAC98);
    v49 = *(v54 + 16);
    v50 = v27;
    v28 = (*(v54 + 80) + 32) & ~*(v54 + 80);
    v44[1] = v25;
    v29 = v25 + v28;
    v30 = *(v54 + 72);
    v54 += 16;
    v47 = (v54 - 8);
    v48 = v30;
    v31 = v45;
    v32 = v46;
    v51 = v20;
    v52 = v16;
    do
    {
      v49(v31, v29, v32);
      sub_227666E50();
      swift_getKeyPath();
      sub_227666E40();
      sub_2276629E0();

      sub_22766C900();
      swift_beginAccess();
      v33 = sub_22766A0A0();
      v35 = v34;
      MEMORY[0x22AA985C0]();
      if (*((*v35 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v35 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_22766C360();
      }

      sub_22766C3A0();
      v33(v53, 0);
      swift_endAccess();

      (*v47)(v31, v32);
      v29 += v48;
      --v26;
      v16 = v52;
    }

    while (v26);
  }

  v36 = sub_226E9AABC(100);
  swift_setDeallocating();

  v37 = *(v16 + 40);

  v38 = qword_2813B2078;
  v39 = sub_22766A100();
  (*(*(v39 - 8) + 8))(v16 + v38, v39);
  v40 = *(*v16 + 48);
  v41 = *(*v16 + 52);
  swift_deallocClassInstance();
  return v36;
}

void sub_22727F6E8(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v41 = a2;
  v42 = a1;
  v6 = sub_227667780();
  v7 = *(*(v6 - 8) + 64);
  v10.n128_f64[0] = MEMORY[0x28223BE20](v6);
  v12 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = 0;
  v50 = a3;
  v16 = *(a3 + 56);
  v15 = a3 + 56;
  v14 = v16;
  v17 = 1 << *(v15 - 24);
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  else
  {
    v18 = -1;
  }

  v19 = v18 & v14;
  v20 = (v17 + 63) >> 6;
  v43 = 0;
  v44 = v9 + 16;
  v51 = a4 + 56;
  v45 = v9;
  v46 = (v9 + 8);
  v47 = v12;
  v48 = v8;
  while (v19)
  {
    v21 = __clz(__rbit64(v19));
    v19 &= v19 - 1;
LABEL_13:
    v24 = v21 | (v13 << 6);
    v25 = *(v50 + 48);
    v26 = *(v45 + 72);
    v49 = v24;
    (*(v45 + 16))(v12, v25 + v26 * v24, v6, v10);
    v27 = sub_227667760();
    v29 = v28;
    if (*(a4 + 16) && (v30 = v27, v31 = *(a4 + 40), sub_22766D370(), sub_22766C100(), v32 = sub_22766D3F0(), v33 = -1 << *(a4 + 32), v34 = v32 & ~v33, ((*(v51 + ((v34 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v34) & 1) != 0))
    {
      v35 = ~v33;
      while (1)
      {
        v36 = (*(a4 + 48) + 16 * v34);
        v37 = *v36 == v30 && v36[1] == v29;
        if (v37 || (sub_22766D190() & 1) != 0)
        {
          break;
        }

        v34 = (v34 + 1) & v35;
        if (((*(v51 + ((v34 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v34) & 1) == 0)
        {
          goto LABEL_5;
        }
      }

      v12 = v47;
      v6 = v48;
      (*v46)(v47, v48);
      *(v42 + ((v49 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v49;
      if (__OFADD__(v43++, 1))
      {
        __break(1u);
LABEL_26:
        v39 = v50;

        sub_227269BC0(v42, v41, v43, v39);
        return;
      }
    }

    else
    {
LABEL_5:

      v12 = v47;
      v6 = v48;
      (*v46)(v47, v48);
    }
  }

  v22 = v13;
  while (1)
  {
    v13 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      break;
    }

    if (v13 >= v20)
    {
      goto LABEL_26;
    }

    v23 = *(v15 + 8 * v13);
    ++v22;
    if (v23)
    {
      v21 = __clz(__rbit64(v23));
      v19 = (v23 - 1) & v23;
      goto LABEL_13;
    }
  }

  __break(1u);
}

uint64_t sub_22727F9EC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v56 = *MEMORY[0x277D85DE8];
  v6 = sub_227667780();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v54 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(v9) = *(a1 + 32);
  v10 = v9 & 0x3F;
  v11 = ((1 << v9) + 63) >> 6;
  v12 = 8 * v11;

  v55 = a2;
  if (v10 > 0xD)
  {
    goto LABEL_30;
  }

  while (1)
  {
    v44 = v11;
    v45 = v3;
    v43 = &v43;
    MEMORY[0x28223BE20](v13);
    v46 = &v43 - ((v12 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v46, v12);
    v11 = 0;
    v14 = a1 + 56;
    v15 = 1 << *(a1 + 32);
    v16 = v15 < 64 ? ~(-1 << v15) : -1;
    v17 = v16 & *(a1 + 56);
    v12 = (v15 + 63) >> 6;
    v18 = v7 + 16;
    v19 = v7;
    v7 = a2 + 56;
    v51 = v18;
    v52 = v19;
    v47 = 0;
    v48 = (v19 + 8);
    v49 = v6;
    v50 = a1;
    while (v17)
    {
      v20 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_14:
      v23 = v20 | (v11 << 6);
      v24 = *(a1 + 48);
      v25 = *(v52 + 72);
      v53 = v23;
      (*(v52 + 16))(v54, v24 + v25 * v23, v6);
      v26 = sub_227667760();
      v28 = v27;
      if (!*(v55 + 16))
      {
        goto LABEL_6;
      }

      v29 = v26;
      v30 = *(v55 + 40);
      sub_22766D370();
      sub_22766C100();
      v31 = sub_22766D3F0();
      v32 = v55;
      v33 = -1 << *(v55 + 32);
      v34 = v31 & ~v33;
      if ((*(v7 + ((v34 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v34))
      {
        v3 = ~v33;
        while (1)
        {
          v35 = (*(v32 + 48) + 16 * v34);
          v36 = *v35 == v29 && v35[1] == v28;
          if (v36 || (sub_22766D190() & 1) != 0)
          {
            break;
          }

          v34 = (v34 + 1) & v3;
          v32 = v55;
          if (((*(v7 + ((v34 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v34) & 1) == 0)
          {
            goto LABEL_6;
          }
        }

        v6 = v49;
        (*v48)(v54, v49);
        *&v46[(v53 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v53;
        v37 = __OFADD__(v47++, 1);
        a1 = v50;
        if (v37)
        {
          __break(1u);
LABEL_27:
          v38 = sub_227269BC0(v46, v44, v47, a1);

          goto LABEL_28;
        }
      }

      else
      {
LABEL_6:

        v6 = v49;
        (*v48)(v54, v49);
        a1 = v50;
      }
    }

    v21 = v11;
    while (1)
    {
      v11 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v11 >= v12)
      {
        goto LABEL_27;
      }

      v22 = *(v14 + 8 * v11);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v17 = (v22 - 1) & v22;
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_30:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }

    a2 = v55;
  }

  v41 = swift_slowAlloc();
  v42 = v55;

  v38 = sub_227268F28(v41, v11, a1, v42, sub_22727F6E8);

  MEMORY[0x22AA9A450](v41, -1, -1);

LABEL_28:
  v39 = *MEMORY[0x277D85DE8];
  return v38;
}

uint64_t sub_22727FE50(uint64_t a1, uint64_t a2, void *a3, double a4)
{
  v6 = a2;
  v8 = sub_227270D9C(a1, a2, a3);
  if (!v4)
  {
    v76 = v6;
    v79 = v8;
    v9 = sub_22722FE2C(v8);
    v78 = 0;
    sub_226F44880(v9);

    v10 = __swift_project_boxed_opaque_existential_0(a3, a3[3]);
    v11 = *v10;
    v12 = v10[1];
    v13 = *(v10 + 16);
    v14 = v10[3];
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9190, qword_227673CB0);
    v16 = *(v15 + 48);
    v17 = *(v15 + 52);
    v18 = swift_allocObject();
    v19 = v11;
    v20 = v12;

    sub_22766A070();
    *(v18 + 16) = v19;
    *(v18 + 24) = v20;
    *(v18 + 32) = v13;
    *(v18 + 40) = v14;
    swift_getKeyPath();
    v83 = MEMORY[0x277D839F8];
    *v82 = a4;
    v21 = sub_226E99364(0, &qword_281398B40, 0x277CCA9C0);

    v77 = v21;
    v22 = sub_22766C820();
    sub_226E93170(v82, v80, &unk_27D7BC990, &qword_227670A30);
    v23 = v81;
    if (v81)
    {
      v24 = __swift_project_boxed_opaque_existential_0(v80, v81);
      v25 = *(v23 - 8);
      v26 = *(v25 + 64);
      v27 = MEMORY[0x28223BE20](v24);
      v29 = v75 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v25 + 16))(v29, v27);
      v30 = sub_22766D170();
      (*(v25 + 8))(v29, v23);
      __swift_destroy_boxed_opaque_existential_0(v80);
    }

    else
    {
      v30 = 0;
    }

    v31 = objc_opt_self();
    v32 = [v31 expressionForConstantValue_];
    swift_unknownObjectRelease();
    v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB950, &unk_227670BB0);
    v34 = [objc_allocWithZone(v33) initWithLeftExpression:v22 rightExpression:v32 modifier:0 type:2 options:0];

    sub_226E97D1C(v82, &unk_27D7BC990, &qword_227670A30);
    swift_beginAccess();
    v35 = v34;
    v36 = sub_22766A080();
    v38 = v37;
    MEMORY[0x22AA985C0]();
    if (*((*v38 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v38 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_22766C360();
    }

    sub_22766C3A0();
    v36(v82, 0);
    swift_endAccess();

    swift_getKeyPath();
    KeyPath = swift_getKeyPath();

    v40 = v78;
    v41 = sub_22726DB2C(v79, sub_226F921B4, KeyPath);
    v78 = v40;

    v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8470, qword_227677CA0);
    v82[0] = v41;

    v42 = sub_22766C820();
    sub_226E93170(v82, v80, &unk_27D7BC990, &qword_227670A30);
    v43 = v81;
    if (v81)
    {
      v44 = __swift_project_boxed_opaque_existential_0(v80, v81);
      v77 = v31;
      v75[1] = v75;
      v45 = v33;
      v46 = *(v43 - 8);
      v47 = *(v46 + 64);
      v48 = MEMORY[0x28223BE20](v44);
      v50 = v75 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v46 + 16))(v50, v48);
      v51 = sub_22766D170();
      (*(v46 + 8))(v50, v43);
      v33 = v45;
      v31 = v77;
      __swift_destroy_boxed_opaque_existential_0(v80);
    }

    else
    {
      v51 = 0;
    }

    v52 = [v31 expressionForConstantValue_];
    swift_unknownObjectRelease();
    [objc_allocWithZone(v33) initWithLeftExpression:v42 rightExpression:v52 modifier:0 type:10 options:0];

    sub_226E97D1C(v82, &unk_27D7BC990, &qword_227670A30);
    swift_beginAccess();
    v53 = sub_22766A080();
    v55 = v54;
    MEMORY[0x22AA985C0]();
    if (*((*v55 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v55 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v74 = *((*v55 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_22766C360();
    }

    sub_22766C3A0();
    v53(v82, 0);
    swift_endAccess();

    v56 = swift_getKeyPath();
    v57 = v78;
    v58 = sub_2273FC7CC(v56);
    if (v57)
    {

      swift_setDeallocating();

      v59 = *(v18 + 40);

      v6 = qword_2813B2078;
      v60 = sub_22766A100();
      (*(*(v60 - 8) + 8))(v18 + v6, v60);
      v61 = *(*v18 + 48);
      v62 = *(*v18 + 52);
      swift_deallocClassInstance();
    }

    else
    {
      v64 = sub_226F3E6A8(v58);

      swift_setDeallocating();

      v65 = *(v18 + 40);

      v66 = qword_2813B2078;
      v67 = sub_22766A100();
      (*(*(v67 - 8) + 8))(v18 + v66, v67);
      v68 = *(*v18 + 48);
      v69 = *(*v18 + 52);
      swift_deallocClassInstance();
      v70 = sub_22727F9EC(v79, v64);

      v71 = sub_22722FE2C(v70);

      v72 = sub_226F44880(v71);

      v73 = v76;
      if (*(v72 + 16) <= *(v76 + 16) >> 3)
      {
        v82[0] = v76;

        sub_22700626C(v72);

        return v82[0];
      }

      else
      {

        v6 = sub_2270094C4(v72, v73);
      }
    }
  }

  return v6;
}

uint64_t sub_2272806D8(uint64_t a1, void *a2)
{
  v59 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BB9D0, &qword_227671550);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v58 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BB920, &unk_227672480);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v58 = &v58 - v9;
  v10 = __swift_project_boxed_opaque_existential_0(a2, a2[3]);
  v11 = *v10;
  v12 = v10[1];
  v13 = *(v10 + 16);
  v14 = v10[3];
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC228, qword_22767CFB0);
  v16 = *(v15 + 48);
  v17 = *(v15 + 52);
  v18 = swift_allocObject();
  v19 = v11;
  v20 = v12;

  sub_22766A070();
  *(v18 + 16) = v19;
  *(v18 + 24) = v20;
  *(v18 + 32) = v13;
  *(v18 + 40) = v14;
  swift_getKeyPath();
  v21 = sub_2276627D0();
  v22 = *(v21 - 8);
  (*(v22 + 16))(v6, v59, v21);
  (*(v22 + 56))(v6, 0, 1, v21);
  v62[3] = v3;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v62);
  sub_226E93170(v6, boxed_opaque_existential_0, &unk_27D7BB9D0, &qword_227671550);
  sub_226E99364(0, &qword_281398B40, 0x277CCA9C0);

  v24 = sub_22766C820();
  sub_226E93170(v62, v60, &unk_27D7BC990, &qword_227670A30);
  v25 = v61;
  if (v61)
  {
    v26 = __swift_project_boxed_opaque_existential_0(v60, v61);
    v27 = *(v25 - 8);
    v28 = *(v27 + 64);
    v29 = MEMORY[0x28223BE20](v26);
    v31 = &v58 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v27 + 16))(v31, v29);
    v32 = sub_22766D170();
    (*(v27 + 8))(v31, v25);
    __swift_destroy_boxed_opaque_existential_0(v60);
  }

  else
  {
    v32 = 0;
  }

  v33 = [objc_opt_self() expressionForConstantValue_];
  swift_unknownObjectRelease();
  v34 = [objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC230 qword_22767D000))];

  sub_226E97D1C(v6, &unk_27D7BB9D0, &qword_227671550);
  sub_226E97D1C(v62, &unk_27D7BC990, &qword_227670A30);
  swift_beginAccess();
  v35 = v34;
  v36 = sub_22766A080();
  v38 = v37;
  MEMORY[0x22AA985C0]();
  if (*((*v38 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v38 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v57 = *((*v38 & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_22766C360();
  }

  sub_22766C3A0();
  v36(v62, 0);
  swift_endAccess();

  swift_beginAccess();
  sub_22766A0D0();
  swift_endAccess();
  v39 = v62[5];
  v40 = sub_2272F9F90(0x64);
  if (v39)
  {
    swift_setDeallocating();

    v41 = *(v18 + 40);

    v42 = qword_2813B2078;
    v43 = sub_22766A100();
    (*(*(v43 - 8) + 8))(v18 + v42, v43);
    v44 = *(*v18 + 48);
    v45 = *(*v18 + 52);
    return swift_deallocClassInstance();
  }

  else
  {
    v47 = v40;
    swift_setDeallocating();

    v48 = *(v18 + 40);

    v49 = qword_2813B2078;
    v50 = sub_22766A100();
    (*(*(v50 - 8) + 8))(v18 + v49, v50);
    v51 = *(*v18 + 48);
    v52 = *(*v18 + 52);
    swift_deallocClassInstance();
    v53 = v58;
    sub_22722AEAC(v47, v58);

    v54 = sub_2276638D0();
    if ((*(*(v54 - 8) + 48))(v53, 1, v54) == 1)
    {
      v55 = sub_227664EC0();
      sub_226E9CF88(&qword_28139B898, MEMORY[0x277D51210]);
      swift_allocError();
      (*(*(v55 - 8) + 104))(v56, *MEMORY[0x277D51188], v55);
      swift_willThrow();
    }

    return sub_226E97D1C(v53, &unk_27D7BB920, &unk_227672480);
  }
}

void sub_227280E00(void **a1, void *a2)
{
  v106 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BB9D0, &qword_227671550);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v99 = v88 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = v88 - v7;
  v9 = a2[3];
  v96 = a2;
  v10 = __swift_project_boxed_opaque_existential_0(a2, v9);
  v11 = *v10;
  v12 = v10[1];
  v13 = *(v10 + 16);
  v14 = v10[3];
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC1A0, &qword_22767DEA0);
  v16 = *(v15 + 48);
  v17 = *(v15 + 52);
  v18 = swift_allocObject();
  v19 = v11;
  v20 = v12;

  sub_22766A070();
  v88[1] = v19;
  *(v18 + 16) = v19;
  *(v18 + 24) = v20;
  v88[0] = v20;
  LODWORD(v101) = v13;
  *(v18 + 32) = v13;
  v100 = v14;
  *(v18 + 40) = v14;
  v21 = v8;
  swift_getKeyPath();
  v22 = sub_2276627D0();
  v23 = *(v22 - 8);
  v92 = *(v23 + 16);
  v93 = v23 + 16;
  v92(v8, v106, v22);
  v24 = *(v23 + 56);
  v94 = v23 + 56;
  v95 = v22;
  v91 = v24;
  v24(v8, 0, 1, v22);
  v97 = v3;
  v105 = v3;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v104);
  sub_226E93170(v8, boxed_opaque_existential_0, &unk_27D7BB9D0, &qword_227671550);
  v26 = sub_226E99364(0, &qword_281398B40, 0x277CCA9C0);

  v90 = v26;
  v27 = sub_22766C820();
  sub_226E93170(v104, v102, &unk_27D7BC990, &qword_227670A30);
  v28 = v103;
  if (v103)
  {
    v29 = __swift_project_boxed_opaque_existential_0(v102, v103);
    v30 = *(v28 - 8);
    v31 = *(v30 + 64);
    v32 = MEMORY[0x28223BE20](v29);
    v34 = v88 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v30 + 16))(v34, v32);
    v35 = sub_22766D170();
    (*(v30 + 8))(v34, v28);
    __swift_destroy_boxed_opaque_existential_0(v102);
  }

  else
  {
    v35 = 0;
  }

  v89 = objc_opt_self();
  v36 = [v89 expressionForConstantValue_];
  swift_unknownObjectRelease();
  v37 = [objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC528 &qword_22767DED0))];

  sub_226E97D1C(v21, &unk_27D7BB9D0, &qword_227671550);
  sub_226E97D1C(v104, &unk_27D7BC990, &qword_227670A30);
  v38 = qword_2813B2078;
  swift_beginAccess();
  v39 = v37;
  v40 = sub_22766A080();
  v42 = v41;
  MEMORY[0x22AA985C0]();
  if (*((*v42 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v42 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v87 = *((*v42 & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_22766C360();
  }

  sub_22766C3A0();
  v40(v104, 0);
  swift_endAccess();

  v43 = sub_227543248(v18 + v38, v101, v100);
  if (v43)
  {
    if (v43 != 1)
    {
      goto LABEL_19;
    }
  }

  else
  {
    v69 = v98;
    v70 = sub_22724AE30(0);
    if (v69)
    {
      goto LABEL_18;
    }

    v71 = v70;
    [v70 setResultType_];
    sub_226E99364(0, &qword_281398AE0, 0x277CBE448);
    v72 = sub_22766C9E0();
    v98 = 0;
    v85 = sub_226EDAB24(v72);

    sub_226EDAB78(v85, v88[0]);
  }

  v44 = __swift_project_boxed_opaque_existential_0(v96, v96[3]);
  v45 = *v44;
  v46 = v44[1];
  v47 = *(v44 + 16);
  v48 = v44[3];
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC228, qword_22767CFB0);
  v50 = *(v49 + 48);
  v51 = *(v49 + 52);
  v52 = swift_allocObject();
  v53 = v45;
  v54 = v46;

  sub_22766A070();
  v100 = v54;
  v101 = v53;
  *(v52 + 16) = v53;
  *(v52 + 24) = v54;
  *(v52 + 32) = v47;
  *(v52 + 40) = v48;
  swift_getKeyPath();
  v55 = v99;
  v56 = v95;
  v92(v99, v106, v95);
  v91(v55, 0, 1, v56);
  v105 = v97;
  v57 = __swift_allocate_boxed_opaque_existential_0(v104);
  sub_226E93170(v55, v57, &unk_27D7BB9D0, &qword_227671550);

  v58 = sub_22766C820();
  sub_226E93170(v104, v102, &unk_27D7BC990, &qword_227670A30);
  v59 = v103;
  if (v103)
  {
    v60 = __swift_project_boxed_opaque_existential_0(v102, v103);
    v106 = v88;
    v61 = v48;
    v62 = v47;
    v63 = *(v59 - 8);
    v64 = *(v63 + 64);
    v65 = MEMORY[0x28223BE20](v60);
    v67 = v88 - ((v66 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v63 + 16))(v67, v65);
    v68 = sub_22766D170();
    (*(v63 + 8))(v67, v59);
    v47 = v62;
    v48 = v61;
    __swift_destroy_boxed_opaque_existential_0(v102);
  }

  else
  {
    v68 = 0;
  }

  v73 = [v89 expressionForConstantValue_];
  swift_unknownObjectRelease();
  v74 = [objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC230 qword_22767D000))];

  sub_226E97D1C(v99, &unk_27D7BB9D0, &qword_227671550);
  sub_226E97D1C(v104, &unk_27D7BC990, &qword_227670A30);
  v75 = qword_2813B2078;
  swift_beginAccess();
  v76 = v74;
  v77 = sub_22766A080();
  v79 = v78;
  MEMORY[0x22AA985C0]();
  if (*((*v79 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v79 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v106 = *((*v79 & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_22766C360();
  }

  sub_22766C3A0();
  v77(v104, 0);
  swift_endAccess();

  v80 = sub_227543200(v52 + v75, v47, v48);
  if (v80)
  {
    if (v80 == 1)
    {
LABEL_18:

      return;
    }

LABEL_19:
    swift_willThrow();
    goto LABEL_18;
  }

  v81 = v98;
  v82 = sub_226E9CA64(0);
  if (v81)
  {
    goto LABEL_18;
  }

  v83 = v82;
  [v82 setResultType_];
  sub_226E99364(0, &qword_281398AE0, 0x277CBE448);
  v84 = sub_22766C9E0();
  v86 = sub_226EDAB24(v84);

  sub_226EDAB78(v86, v100);
}

char *sub_227281800(uint64_t a1, void *a2)
{
  v3 = __swift_project_boxed_opaque_existential_0(a2, a2[3]);
  v4 = *v3;
  v5 = v3[1];
  v6 = *(v3 + 16);
  v7 = v3[3];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC1A0, &qword_22767DEA0);
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  v11 = swift_allocObject();
  v12 = v4;
  v13 = v5;

  sub_22766A070();
  *(v11 + 16) = v12;
  *(v11 + 24) = v13;
  *(v11 + 32) = v6;
  *(v11 + 40) = v7;
  swift_getKeyPath();
  v14 = sub_227230964(a1);
  v37[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC4E0, &qword_22767DD90);
  v37[0] = v14;
  sub_226E99364(0, &qword_281398B40, 0x277CCA9C0);

  v15 = sub_22766C820();
  sub_226E93170(v37, v35, &unk_27D7BC990, &qword_227670A30);
  v16 = v36;
  if (v36)
  {
    v17 = __swift_project_boxed_opaque_existential_0(v35, v36);
    v18 = *(v16 - 8);
    v19 = *(v18 + 64);
    MEMORY[0x28223BE20](v17);
    v21 = v35 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v18 + 16))(v21);
    v22 = sub_22766D170();
    (*(v18 + 8))(v21, v16);
    __swift_destroy_boxed_opaque_existential_0(v35);
  }

  else
  {
    v22 = 0;
  }

  v23 = [objc_opt_self() expressionForConstantValue_];
  swift_unknownObjectRelease();
  [objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC528 &qword_22767DED0))];

  sub_226E97D1C(v37, &unk_27D7BC990, &qword_227670A30);
  swift_beginAccess();
  v24 = sub_22766A080();
  v26 = v25;
  MEMORY[0x22AA985C0]();
  if (*((*v26 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v26 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v34 = *((*v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_22766C360();
  }

  sub_22766C3A0();
  v24(v37, 0);
  swift_endAccess();

  v27 = sub_2272382B8(100);
  swift_setDeallocating();

  v28 = *(v11 + 40);

  v29 = qword_2813B2078;
  v30 = sub_22766A100();
  (*(*(v30 - 8) + 8))(v11 + v29, v30);
  v31 = *(*v11 + 48);
  v32 = *(*v11 + 52);
  swift_deallocClassInstance();
  return v27;
}

uint64_t sub_227281C1C(void *a1)
{
  v2 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  v3 = *v2;
  v4 = v2[1];
  v5 = *(v2 + 16);
  v6 = v2[3];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC1A0, &qword_22767DEA0);
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  v10 = swift_allocObject();
  v11 = v3;
  v12 = v4;

  sub_22766A070();
  *(v10 + 16) = v11;
  *(v10 + 24) = v12;
  *(v10 + 32) = v5;
  *(v10 + 40) = v6;
  v13 = v10;
  v14 = sub_22724AE30(0);
  if (v1)
  {
  }

  else
  {
    v15 = v14;
    [v14 setResultType_];
    [v15 setFetchLimit_];
    [v15 setFetchOffset_];
    [v15 setIncludesSubentities_];
    sub_226E99364(0, &qword_28139D220, 0x277CCABB0);
    v13 = sub_22766C9D0();

    swift_setDeallocating();
    v17 = qword_2813B2078;
    v18 = sub_22766A100();
    (*(*(v18 - 8) + 8))(v10 + v17, v18);
    v19 = *(*v10 + 48);
    v20 = *(*v10 + 52);
    swift_deallocClassInstance();
  }

  return v13;
}

char *sub_227281E38(uint64_t a1, void *a2)
{
  v45 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BB9D0, &qword_227671550);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v44 - v5;
  v7 = __swift_project_boxed_opaque_existential_0(a2, a2[3]);
  v9 = *v7;
  v8 = v7[1];
  v10 = *(v7 + 16);
  v11 = v7[3];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC228, qword_22767CFB0);
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  v15 = swift_allocObject();
  v16 = v9;
  v17 = v8;

  sub_22766A070();
  *(v15 + 16) = v16;
  *(v15 + 24) = v17;
  *(v15 + 32) = v10;
  *(v15 + 40) = v11;
  swift_getKeyPath();
  v18 = sub_2276627D0();
  v19 = *(v18 - 8);
  (*(v19 + 16))(v6, v45, v18);
  (*(v19 + 56))(v6, 0, 1, v18);
  v48[3] = v3;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v48);
  sub_226E93170(v6, boxed_opaque_existential_0, &unk_27D7BB9D0, &qword_227671550);
  sub_226E99364(0, &qword_281398B40, 0x277CCA9C0);

  v21 = sub_22766C820();
  sub_226E93170(v48, v46, &unk_27D7BC990, &qword_227670A30);
  v22 = v47;
  if (v47)
  {
    v23 = __swift_project_boxed_opaque_existential_0(v46, v47);
    v24 = *(v22 - 8);
    v25 = *(v24 + 64);
    v26 = MEMORY[0x28223BE20](v23);
    v28 = &v44 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v24 + 16))(v28, v26);
    v29 = sub_22766D170();
    (*(v24 + 8))(v28, v22);
    __swift_destroy_boxed_opaque_existential_0(v46);
  }

  else
  {
    v29 = 0;
  }

  v30 = [objc_opt_self() expressionForConstantValue_];
  swift_unknownObjectRelease();
  v31 = [objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC230 qword_22767D000))];

  sub_226E97D1C(v6, &unk_27D7BB9D0, &qword_227671550);
  sub_226E97D1C(v48, &unk_27D7BC990, &qword_227670A30);
  swift_beginAccess();
  v32 = v31;
  v33 = sub_22766A080();
  v35 = v34;
  MEMORY[0x22AA985C0]();
  if (*((*v35 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v35 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v43 = *((*v35 & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_22766C360();
  }

  sub_22766C3A0();
  v33(v48, 0);
  swift_endAccess();

  v36 = sub_226E9AABC(100);
  swift_setDeallocating();

  v37 = *(v15 + 40);

  v38 = qword_2813B2078;
  v39 = sub_22766A100();
  (*(*(v39 - 8) + 8))(v15 + v38, v39);
  v40 = *(*v15 + 48);
  v41 = *(*v15 + 52);
  swift_deallocClassInstance();
  return v36;
}

void sub_227282340(uint64_t a1, void *a2)
{
  v3 = __swift_project_boxed_opaque_existential_0(a2, a2[3]);
  v4 = *v3;
  v5 = v3[1];
  v6 = *(v3 + 16);
  v7 = v3[3];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC228, qword_22767CFB0);
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  v11 = swift_allocObject();
  v12 = v4;
  v13 = v5;

  sub_22766A070();
  v35 = v13;
  v36 = v12;
  *(v11 + 16) = v12;
  *(v11 + 24) = v13;
  v37 = v6;
  *(v11 + 32) = v6;
  *(v11 + 40) = v7;
  swift_getKeyPath();
  v14 = sub_227230964(a1);
  v40[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC4E0, &qword_22767DD90);
  v40[0] = v14;
  sub_226E99364(0, &qword_281398B40, 0x277CCA9C0);

  v15 = sub_22766C820();
  sub_226E93170(v40, v38, &unk_27D7BC990, &qword_227670A30);
  v16 = v39;
  if (v39)
  {
    v17 = __swift_project_boxed_opaque_existential_0(v38, v39);
    v18 = *(v16 - 8);
    v19 = *(v18 + 64);
    MEMORY[0x28223BE20](v17);
    v21 = &v34 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v18 + 16))(v21);
    v22 = sub_22766D170();
    (*(v18 + 8))(v21, v16);
    __swift_destroy_boxed_opaque_existential_0(v38);
  }

  else
  {
    v22 = 0;
  }

  v23 = [objc_opt_self() expressionForConstantValue_];
  swift_unknownObjectRelease();
  [objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC230 qword_22767D000))];

  sub_226E97D1C(v40, &unk_27D7BC990, &qword_227670A30);
  v24 = qword_2813B2078;
  swift_beginAccess();
  v25 = sub_22766A080();
  v27 = v26;
  MEMORY[0x22AA985C0]();
  if (*((*v27 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v27 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_22766C360();
  }

  sub_22766C3A0();
  v25(v40, 0);
  swift_endAccess();

  v28 = sub_227543200(v11 + v24, v37, v7);
  if (v28)
  {
    if (v28 != 1)
    {
      swift_willThrow();
    }

    goto LABEL_10;
  }

  v29 = v40[5];
  v30 = sub_226E9CA64(0);
  if (v29)
  {
LABEL_10:

    return;
  }

  v31 = v30;
  [v30 setResultType_];
  sub_226E99364(0, &qword_281398AE0, 0x277CBE448);
  v32 = sub_22766C9E0();
  v33 = sub_226EDAB24(v32);

  sub_226EDAB78(v33, v35);
}

char *sub_22728278C(uint64_t a1, char a2, uint64_t a3, void *a4)
{
  v35 = a3;
  v6 = __swift_project_boxed_opaque_existential_0(a4, a4[3]);
  v7 = *v6;
  v8 = v6[1];
  v9 = *(v6 + 16);
  v10 = v6[3];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC228, qword_22767CFB0);
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  v14 = swift_allocObject();
  v15 = v7;
  v16 = v8;

  sub_22766A070();
  *(v14 + 16) = v15;
  *(v14 + 24) = v16;
  *(v14 + 32) = v9;
  *(v14 + 40) = v10;
  swift_getKeyPath();
  v38[4] = a1;
  v39 = a2 & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC408, &qword_22767DA98);
  sub_227663AD0();
  v38[3] = MEMORY[0x277D83B88];
  v38[0] = v40;
  sub_226E99364(0, &qword_281398B40, 0x277CCA9C0);

  v17 = sub_22766C820();
  sub_226E93170(v38, v36, &unk_27D7BC990, &qword_227670A30);
  v18 = v37;
  if (v37)
  {
    v19 = __swift_project_boxed_opaque_existential_0(v36, v37);
    v20 = *(v18 - 8);
    v21 = *(v20 + 64);
    v22 = MEMORY[0x28223BE20](v19);
    v24 = v36 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v20 + 16))(v24, v22);
    v25 = sub_22766D170();
    (*(v20 + 8))(v24, v18);
    __swift_destroy_boxed_opaque_existential_0(v36);
  }

  else
  {
    v25 = 0;
  }

  v26 = [objc_opt_self() expressionForConstantValue_];
  swift_unknownObjectRelease();
  v27 = [objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC230 qword_22767D000))];

  sub_226E97D1C(v38, &unk_27D7BC990, &qword_227670A30);
  swift_beginAccess();
  v28 = v27;
  v29 = sub_22766A080();
  v31 = v30;
  MEMORY[0x22AA985C0]();
  if (*((*v31 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v31 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v34 = *((*v31 & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_22766C360();
  }

  sub_22766C3A0();
  v29(v38, 0);
  swift_endAccess();

  swift_getKeyPath();
  sub_227397FC8();

  swift_beginAccess();
  sub_22766A0D0();
  swift_endAccess();
  v32 = sub_226E9AABC(100);

  return v32;
}

char *sub_227282BA0(uint64_t a1, void *a2)
{
  v2 = __swift_project_boxed_opaque_existential_0(a2, a2[3]);
  v3 = *v2;
  v4 = v2[1];
  v5 = *(v2 + 16);
  v6 = v2[3];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC1E8, &qword_22767CEB8);
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  v10 = swift_allocObject();
  v11 = v3;
  v12 = v4;

  sub_22766A070();
  *(v10 + 16) = v11;
  *(v10 + 24) = v12;
  *(v10 + 32) = v5;
  *(v10 + 40) = v6;
  swift_getKeyPath();
  sub_227397FC8();

  swift_beginAccess();
  sub_22766A0D0();
  swift_endAccess();
  v13 = sub_227237FB8(100);

  return v13;
}

uint64_t sub_2272838E4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_22728394C(uint64_t a1)
{
  v2 = sub_227667730();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2272839A8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t SQLiteValue.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  if (a4 > 2u)
  {
    if (a4 == 3)
    {
      MEMORY[0x22AA996B0](4);

      return sub_22766C100();
    }

    else if (a4 == 4)
    {
      MEMORY[0x22AA996B0](5);

      return sub_2276625A0();
    }

    else
    {
      return MEMORY[0x22AA996B0](0);
    }
  }

  else
  {
    if (a4)
    {
      if (a4 == 1)
      {
        MEMORY[0x22AA996B0](2);
        return sub_22766D3C0();
      }

      MEMORY[0x22AA996B0](3);
      v6 = a2;
    }

    else
    {
      MEMORY[0x22AA996B0](1);
      if ((a2 & 0x7FFFFFFFFFFFFFFFLL) != 0)
      {
        v6 = a2;
      }

      else
      {
        v6 = 0;
      }
    }

    return MEMORY[0x22AA996F0](v6);
  }
}

uint64_t SQLiteValue.hashValue.getter(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  sub_22766D370();
  SQLiteValue.hash(into:)(v7, a1, a2, a3);
  return sub_22766D3F0();
}

uint64_t sub_227284C08()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  sub_22766D370();
  SQLiteValue.hash(into:)(v5, v1, v2, v3);
  return sub_22766D3F0();
}

uint64_t sub_227284C70()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  sub_22766D370();
  SQLiteValue.hash(into:)(v5, v1, v2, v3);
  return sub_22766D3F0();
}

uint64_t _s15SeymourServices11SQLiteValueO2eeoiySbAC_ACtFZ_0(uint64_t a1, unint64_t a2, unsigned __int8 a3, uint64_t a4, unint64_t a5, char a6)
{
  if (a3 <= 2u)
  {
    if (a3)
    {
      if (a3 == 1)
      {
        if (a6 == 1)
        {
          return a1 == a4;
        }
      }

      else if (a6 == 2)
      {
        return a1 == a4;
      }
    }

    else if (!a6)
    {
      return *&a1 == *&a4;
    }

    return 0;
  }

  if (a3 != 3)
  {
    if (a3 == 4)
    {
      if (a6 == 4)
      {
        return sub_227130B5C(a1, a2, a4, a5);
      }
    }

    else if (a6 == 5 && !(a5 | a4))
    {
      return 1;
    }

    return 0;
  }

  if (a6 != 3)
  {
    return 0;
  }

  if (a1 == a4 && a2 == a5)
  {
    return 1;
  }

  else
  {
    return sub_22766D190();
  }
}

unint64_t sub_227284DD0()
{
  result = qword_27D7BC638;
  if (!qword_27D7BC638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BC638);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataV15_RepresentationO(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

uint64_t get_enum_tag_for_layout_string_15SeymourServices11SQLiteValueO(uint64_t a1)
{
  if ((*(a1 + 16) & 7u) <= 4)
  {
    return *(a1 + 16) & 7;
  }

  else
  {
    return (*a1 + 5);
  }
}

uint64_t sub_227284E5C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFB && *(a1 + 17))
  {
    return (*a1 + 251);
  }

  v3 = *(a1 + 16);
  if (v3 <= 5)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_227284EA4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFA)
  {
    *(result + 16) = 0;
    *result = a2 - 251;
    *(result + 8) = 0;
    if (a3 >= 0xFB)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFB)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_227284EE8(uint64_t result, unsigned int a2)
{
  if (a2 >= 5)
  {
    *result = a2 - 5;
    *(result + 8) = 0;
    LOBYTE(a2) = 5;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t sub_227284F10(uint64_t a1, uint64_t a2, char a3, uint64_t (*a4)(void *))
{
  v5[0] = a1;
  v5[1] = a2;
  v6 = a3 & 1;
  return a4(v5);
}

uint64_t sub_227284F74@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v25 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BB570, &unk_227670FC0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v25 - v5;
  v7 = sub_2276624A0();
  v8 = *(*(v7 - 8) + 64);
  result = MEMORY[0x28223BE20](v7);
  v12 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *a1;
  v30 = *(*a1 + 16);
  if (v30)
  {
    v14 = 0;
    v15 = (v11 + 48);
    v28 = v11;
    v29 = (v11 + 32);
    v16 = (v13 + 40);
    v17 = MEMORY[0x277D84F90];
    v26 = v13;
    v27 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
    while (v14 < *(v13 + 16))
    {
      v19 = *(v16 - 1);
      v18 = *v16;

      sub_227662470();

      if ((*v15)(v6, 1, v7) == 1)
      {
        result = sub_226E97D1C(v6, &unk_27D7BB570, &unk_227670FC0);
      }

      else
      {
        v20 = *v29;
        (*v29)(v12, v6, v7);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v17 = sub_2273A4ECC(0, v17[2] + 1, 1, v17);
        }

        v22 = v17[2];
        v21 = v17[3];
        if (v22 >= v21 >> 1)
        {
          v17 = sub_2273A4ECC(v21 > 1, v22 + 1, 1, v17);
        }

        v17[2] = v22 + 1;
        v23 = v17 + ((*(v28 + 80) + 32) & ~*(v28 + 80)) + *(v28 + 72) * v22;
        v12 = v27;
        result = (v20)(v23, v27, v7);
        v13 = v26;
      }

      ++v14;
      v16 += 2;
      if (v30 == v14)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  else
  {
    v17 = MEMORY[0x277D84F90];
LABEL_13:
    v24 = sub_226F40798(v17);

    *v25 = v24;
  }

  return result;
}

uint64_t sub_227285220@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v24 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BB570, &unk_227670FC0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v24 - v5;
  v7 = sub_2276624A0();
  v8 = *(*(v7 - 8) + 64);
  result = MEMORY[0x28223BE20](v7);
  v12 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *a1;
  v29 = *(*a1 + 16);
  if (v29)
  {
    v14 = 0;
    v15 = (v11 + 48);
    v27 = v11;
    v28 = (v11 + 32);
    v16 = (v13 + 40);
    v17 = MEMORY[0x277D84F90];
    v25 = v13;
    v26 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
    while (v14 < *(v13 + 16))
    {
      v19 = *(v16 - 1);
      v18 = *v16;

      sub_227662470();

      if ((*v15)(v6, 1, v7) == 1)
      {
        result = sub_226E97D1C(v6, &unk_27D7BB570, &unk_227670FC0);
      }

      else
      {
        v20 = *v28;
        (*v28)(v12, v6, v7);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v17 = sub_2273A4ECC(0, v17[2] + 1, 1, v17);
        }

        v22 = v17[2];
        v21 = v17[3];
        if (v22 >= v21 >> 1)
        {
          v17 = sub_2273A4ECC(v21 > 1, v22 + 1, 1, v17);
        }

        v17[2] = v22 + 1;
        v23 = v17 + ((*(v27 + 80) + 32) & ~*(v27 + 80)) + *(v27 + 72) * v22;
        v12 = v26;
        result = (v20)(v23, v26, v7);
        v13 = v25;
      }

      ++v14;
      v16 += 2;
      if (v29 == v14)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  else
  {
    v17 = MEMORY[0x277D84F90];
LABEL_13:
    *v24 = v17;
  }

  return result;
}

uint64_t sub_2272854B8(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD3A0, &unk_22767A2A0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v7 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = &v17 - v8;
  v10 = *__swift_project_boxed_opaque_existential_0((*v1 + 16), *(*v1 + 40));
  sub_2272B0DE0(16, a1, v9);
  v11 = swift_allocObject();
  *(v11 + 16) = sub_227284F74;
  *(v11 + 24) = 0;
  (*(v4 + 16))(v7, v9, v3);
  v12 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v13 = (v5 + v12 + 7) & 0xFFFFFFFFFFFFFFF8;
  v14 = swift_allocObject();
  (*(v4 + 32))(v14 + v12, v7, v3);
  v15 = (v14 + v13);
  *v15 = sub_2272B4374;
  v15[1] = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9370, qword_227685C90);
  sub_227669270();
  return (*(v4 + 8))(v9, v3);
}

uint64_t sub_2272856CC(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD3A0, &unk_22767A2A0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v7 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = &v17 - v8;
  v10 = *__swift_project_boxed_opaque_existential_0((*v1 + 16), *(*v1 + 40));
  sub_2272B0A2C(15, a1, v9);
  v11 = swift_allocObject();
  *(v11 + 16) = sub_227285220;
  *(v11 + 24) = 0;
  (*(v4 + 16))(v7, v9, v3);
  v12 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v13 = (v5 + v12 + 7) & 0xFFFFFFFFFFFFFFF8;
  v14 = swift_allocObject();
  (*(v4 + 32))(v14 + v12, v7, v3);
  v15 = (v14 + v13);
  *v15 = sub_2272B3988;
  v15[1] = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B90F8, &qword_227679D10);
  sub_227669270();
  return (*(v4 + 8))(v9, v3);
}

uint64_t sub_2272858E0@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v52 = a1;
  v62 = a4;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD3B0, &unk_227684AF0);
  v8 = *(v51 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v51);
  MEMORY[0x28223BE20](v10);
  v12 = &v49 - v11;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9500, &unk_227671CA0);
  v13 = *(v57 - 8);
  v53 = *(v13 + 64);
  v14 = MEMORY[0x28223BE20](v57);
  v54 = &v49 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v50 = &v49 - v16;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA340, &unk_22767E480);
  v58 = *(v61 - 8);
  v60 = *(v58 + 64);
  v17 = MEMORY[0x28223BE20](v61);
  v59 = &v49 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v56 = &v49 - v19;
  *(swift_allocObject() + 16) = v5;
  sub_22766BDB0();
  v55 = v5;
  sub_227669270();
  v20 = swift_allocObject();
  *(v20 + 16) = v52;
  *(v20 + 24) = a2;
  *(v20 + 32) = a3;
  v21 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = v51;
  (*(v8 + 16))(v21, v12, v51);
  v23 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v24 = (v9 + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
  v25 = swift_allocObject();
  (*(v8 + 32))(v25 + v23, v21, v22);
  v26 = (v25 + v24);
  *v26 = sub_2272B4E2C;
  v26[1] = v20;

  v27 = v50;
  sub_227669270();
  (*(v8 + 8))(v12, v22);
  v28 = swift_allocObject();
  *(v28 + 16) = sub_2272B3310;
  *(v28 + 24) = 0;
  v29 = v54;
  v30 = v27;
  v31 = v57;
  (*(v13 + 16))(v54, v27, v57);
  v32 = (*(v13 + 80) + 16) & ~*(v13 + 80);
  v33 = (v53 + v32 + 7) & 0xFFFFFFFFFFFFFFF8;
  v34 = swift_allocObject();
  (*(v13 + 32))(v34 + v32, v29, v31);
  v35 = (v34 + v33);
  *v35 = sub_2272B4E68;
  v35[1] = v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC6A8, &unk_227680630);
  v36 = v56;
  sub_227669270();
  (*(v13 + 8))(v30, v31);
  v37 = swift_allocObject();
  v38 = v55;
  *(v37 + 16) = v55;
  v39 = v58;
  v40 = v59;
  v41 = v61;
  (*(v58 + 16))(v59, v36, v61);
  v42 = v39;
  v43 = (*(v39 + 80) + 16) & ~*(v39 + 80);
  v44 = (v60 + v43 + 7) & 0xFFFFFFFFFFFFFFF8;
  v45 = swift_allocObject();
  (*(v42 + 32))(v45 + v43, v40, v41);
  v46 = (v45 + v44);
  *v46 = sub_2272B8408;
  v46[1] = v37;
  v47 = v38;
  sub_227669270();
  return (*(v42 + 8))(v36, v41);
}

uint64_t sub_227285EA4@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v52 = a1;
  v62 = a4;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD3B0, &unk_227684AF0);
  v8 = *(v51 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v51);
  MEMORY[0x28223BE20](v10);
  v12 = &v49 - v11;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9500, &unk_227671CA0);
  v13 = *(v57 - 8);
  v53 = *(v13 + 64);
  MEMORY[0x28223BE20](v57);
  v54 = &v49 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v50 = &v49 - v16;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA328, &unk_227684D30);
  v58 = *(v61 - 8);
  v60 = *(v58 + 64);
  MEMORY[0x28223BE20](v61);
  v59 = &v49 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v56 = &v49 - v19;
  *(swift_allocObject() + 16) = v5;
  sub_22766BDB0();
  v55 = v5;
  sub_227669270();
  v20 = swift_allocObject();
  *(v20 + 16) = v52;
  *(v20 + 24) = a2;
  *(v20 + 32) = a3;
  v21 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = v51;
  (*(v8 + 16))(v21, v12, v51);
  v23 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v24 = (v9 + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
  v25 = swift_allocObject();
  (*(v8 + 32))(v25 + v23, v21, v22);
  v26 = (v25 + v24);
  *v26 = sub_2272B4CA4;
  v26[1] = v20;

  v27 = v50;
  sub_227669270();
  (*(v8 + 8))(v12, v22);
  v28 = swift_allocObject();
  *(v28 + 16) = sub_2272B336C;
  *(v28 + 24) = 0;
  v29 = v54;
  v30 = v27;
  v31 = v57;
  (*(v13 + 16))(v54, v27, v57);
  v32 = (*(v13 + 80) + 16) & ~*(v13 + 80);
  v33 = (v53 + v32 + 7) & 0xFFFFFFFFFFFFFFF8;
  v34 = swift_allocObject();
  (*(v13 + 32))(v34 + v32, v29, v31);
  v35 = (v34 + v33);
  *v35 = sub_2272B4CE0;
  v35[1] = v28;
  sub_227664420();
  v36 = v56;
  sub_227669270();
  (*(v13 + 8))(v30, v31);
  v37 = swift_allocObject();
  v38 = v55;
  *(v37 + 16) = v55;
  v39 = v58;
  v40 = v59;
  v41 = v61;
  (*(v58 + 16))(v59, v36, v61);
  v42 = v39;
  v43 = (*(v39 + 80) + 16) & ~*(v39 + 80);
  v44 = (v60 + v43 + 7) & 0xFFFFFFFFFFFFFFF8;
  v45 = swift_allocObject();
  (*(v42 + 32))(v45 + v43, v40, v41);
  v46 = (v45 + v44);
  *v46 = sub_2272B8408;
  v46[1] = v37;
  v47 = v38;
  sub_227669270();
  return (*(v42 + 8))(v36, v41);
}

uint64_t sub_22728645C@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v52 = a1;
  v62 = a4;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD3B0, &unk_227684AF0);
  v8 = *(v51 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v51);
  MEMORY[0x28223BE20](v10);
  v12 = &v49 - v11;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9500, &unk_227671CA0);
  v13 = *(v57 - 8);
  v53 = *(v13 + 64);
  MEMORY[0x28223BE20](v57);
  v54 = &v49 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v50 = &v49 - v16;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BA310, &unk_22767E470);
  v58 = *(v61 - 8);
  v60 = *(v58 + 64);
  MEMORY[0x28223BE20](v61);
  v59 = &v49 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v56 = &v49 - v19;
  *(swift_allocObject() + 16) = v5;
  sub_22766BDB0();
  v55 = v5;
  sub_227669270();
  v20 = swift_allocObject();
  *(v20 + 16) = v52;
  *(v20 + 24) = a2;
  *(v20 + 32) = a3;
  v21 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = v51;
  (*(v8 + 16))(v21, v12, v51);
  v23 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v24 = (v9 + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
  v25 = swift_allocObject();
  (*(v8 + 32))(v25 + v23, v21, v22);
  v26 = (v25 + v24);
  *v26 = sub_2272B4B1C;
  v26[1] = v20;

  v27 = v50;
  sub_227669270();
  (*(v8 + 8))(v12, v22);
  v28 = swift_allocObject();
  *(v28 + 16) = sub_2272B33A0;
  *(v28 + 24) = 0;
  v29 = v54;
  v30 = v27;
  v31 = v57;
  (*(v13 + 16))(v54, v27, v57);
  v32 = (*(v13 + 80) + 16) & ~*(v13 + 80);
  v33 = (v53 + v32 + 7) & 0xFFFFFFFFFFFFFFF8;
  v34 = swift_allocObject();
  (*(v13 + 32))(v34 + v32, v29, v31);
  v35 = (v34 + v33);
  *v35 = sub_2272B4B58;
  v35[1] = v28;
  sub_2276676E0();
  v36 = v56;
  sub_227669270();
  (*(v13 + 8))(v30, v31);
  v37 = swift_allocObject();
  v38 = v55;
  *(v37 + 16) = v55;
  v39 = v58;
  v40 = v59;
  v41 = v61;
  (*(v58 + 16))(v59, v36, v61);
  v42 = v39;
  v43 = (*(v39 + 80) + 16) & ~*(v39 + 80);
  v44 = (v60 + v43 + 7) & 0xFFFFFFFFFFFFFFF8;
  v45 = swift_allocObject();
  (*(v42 + 32))(v45 + v43, v40, v41);
  v46 = (v45 + v44);
  *v46 = sub_2272B8408;
  v46[1] = v37;
  v47 = v38;
  sub_227669270();
  return (*(v42 + 8))(v36, v41);
}

uint64_t sub_227286A14@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v51 = a1;
  v61 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD3B0, &unk_227684AF0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  MEMORY[0x28223BE20](v10);
  v12 = &v50 - v11;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9500, &unk_227671CA0);
  v13 = *(v56 - 8);
  v55 = *(v13 + 64);
  v14 = MEMORY[0x28223BE20](v56);
  v53 = &v50 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v50 = &v50 - v16;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8C50, &qword_227684D00);
  v52 = *(v60 - 8);
  v58 = *(v52 + 64);
  v17 = MEMORY[0x28223BE20](v60);
  v57 = &v50 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v54 = &v50 - v19;
  sub_22766BDB0();
  v59 = v4;

  sub_227669270();
  v20 = swift_allocObject();
  *(v20 + 16) = v51;
  *(v20 + 24) = a2;
  *(v20 + 32) = a3;
  v21 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = v7;
  (*(v8 + 16))(v21, v12, v7);
  v23 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v24 = (v9 + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
  v25 = swift_allocObject();
  v26 = v25 + v23;
  v27 = v22;
  (*(v8 + 32))(v26, v21, v22);
  v28 = (v25 + v24);
  *v28 = sub_2272B47D4;
  v28[1] = v20;

  v29 = v50;
  sub_227669270();
  (*(v8 + 8))(v12, v27);
  v30 = swift_allocObject();
  *(v30 + 16) = sub_2272B33D4;
  *(v30 + 24) = 0;
  v31 = v53;
  v32 = v29;
  v33 = v56;
  (*(v13 + 16))(v53, v29, v56);
  v34 = (*(v13 + 80) + 16) & ~*(v13 + 80);
  v35 = (v55 + v34 + 7) & 0xFFFFFFFFFFFFFFF8;
  v36 = swift_allocObject();
  (*(v13 + 32))(v36 + v34, v31, v33);
  v37 = (v36 + v35);
  *v37 = sub_2272B4810;
  v37[1] = v30;
  sub_227664700();
  v38 = v54;
  sub_227669270();
  (*(v13 + 8))(v32, v33);
  v39 = v52;
  v40 = v57;
  v41 = v38;
  v42 = v60;
  (*(v52 + 16))(v57, v38, v60);
  v43 = v39;
  v44 = (*(v39 + 80) + 16) & ~*(v39 + 80);
  v45 = (v58 + v44 + 7) & 0xFFFFFFFFFFFFFFF8;
  v46 = swift_allocObject();
  (*(v43 + 32))(v46 + v44, v40, v42);
  v47 = (v46 + v45);
  v48 = v59;
  *v47 = sub_226ED4484;
  v47[1] = v48;

  sub_227669270();
  return (*(v43 + 8))(v41, v42);
}

uint64_t sub_227286FA0@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v48 = a1;
  v58 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD3B0, &unk_227684AF0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  MEMORY[0x28223BE20](v10);
  v12 = &v47 - v11;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9500, &unk_227671CA0);
  v13 = *(v53 - 8);
  v52 = *(v13 + 64);
  v14 = MEMORY[0x28223BE20](v53);
  v50 = &v47 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v47 = &v47 - v16;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD7A0, &unk_22767E4D0);
  v49 = *(v57 - 8);
  v55 = *(v49 + 64);
  v17 = MEMORY[0x28223BE20](v57);
  v54 = &v47 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v51 = &v47 - v19;
  sub_22766BDB0();
  v56 = v4;

  sub_227669270();
  v20 = swift_allocObject();
  *(v20 + 16) = v48;
  *(v20 + 24) = a2;
  *(v20 + 32) = a3;
  v21 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = v7;
  (*(v8 + 16))(v21, v12, v7);
  v23 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v24 = (v9 + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
  v25 = swift_allocObject();
  (*(v8 + 32))(v25 + v23, v21, v22);
  v26 = (v25 + v24);
  *v26 = sub_2272B5C80;
  v26[1] = v20;

  v27 = v47;
  sub_227669270();
  (*(v8 + 8))(v12, v22);
  v28 = swift_allocObject();
  *(v28 + 16) = sub_2272B3408;
  *(v28 + 24) = 0;
  v29 = v50;
  v30 = v53;
  (*(v13 + 16))(v50, v27, v53);
  v31 = (*(v13 + 80) + 16) & ~*(v13 + 80);
  v32 = (v52 + v31 + 7) & 0xFFFFFFFFFFFFFFF8;
  v33 = swift_allocObject();
  (*(v13 + 32))(v33 + v31, v29, v30);
  v34 = (v33 + v32);
  *v34 = sub_2272B5CBC;
  v34[1] = v28;
  v35 = v51;
  sub_227669270();
  (*(v13 + 8))(v27, v30);
  v36 = v49;
  v37 = v54;
  v38 = v35;
  v39 = v57;
  (*(v49 + 16))(v54, v35, v57);
  v40 = v36;
  v41 = (*(v36 + 80) + 16) & ~*(v36 + 80);
  v42 = (v55 + v41 + 7) & 0xFFFFFFFFFFFFFFF8;
  v43 = swift_allocObject();
  (*(v40 + 32))(v43 + v41, v37, v39);
  v44 = (v43 + v42);
  v45 = v56;
  *v44 = sub_226ED4480;
  v44[1] = v45;

  sub_227669270();
  return (*(v40 + 8))(v38, v39);
}

uint64_t sub_227287520@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  LODWORD(v46) = a1;
  v49 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD3B0, &unk_227684AF0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v11 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = &v44 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9500, &unk_227671CA0);
  v51 = *(v14 - 8);
  v52 = v14;
  v15 = v51[8];
  v16 = MEMORY[0x28223BE20](v14);
  v47 = &v44 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v16);
  v50 = &v44 - v18;
  MEMORY[0x28223BE20](v17);
  v53 = &v44 - v19;
  sub_22766BDB0();
  v48 = v4;

  sub_227669270();
  v20 = swift_allocObject();
  *(v20 + 16) = v46;
  *(v20 + 24) = a2;
  *(v20 + 32) = a3;
  (*(v8 + 16))(v11, v13, v7);
  v21 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v22 = swift_allocObject();
  (*(v8 + 32))(v22 + v21, v11, v7);
  v23 = (v22 + ((v9 + v21 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v23 = sub_2272B5B84;
  v23[1] = v20;

  v24 = v50;
  sub_227669270();
  (*(v8 + 8))(v13, v7);
  v25 = swift_allocObject();
  *(v25 + 16) = sub_2272B81E4;
  *(v25 + 24) = 0;
  v27 = v51;
  v26 = v52;
  v46 = v51[2];
  v28 = v47;
  v46(v47, v24, v52);
  v29 = *(v27 + 80);
  v45 = (v29 + 16) & ~v29;
  v30 = (v15 + v45 + 7) & 0xFFFFFFFFFFFFFFF8;
  v31 = swift_allocObject();
  v32 = v27[4];
  v32(v31 + ((v29 + 16) & ~v29), v28, v26);
  v33 = (v31 + v30);
  *v33 = sub_2272B81D8;
  v33[1] = v25;
  v34 = v53;
  sub_227669270();
  v35 = v50;
  v36 = v51[1];
  v37 = v52;
  v36(v50, v52);
  v38 = v34;
  v39 = v37;
  v46(v35, v38, v37);
  v40 = swift_allocObject();
  v32(v40 + v45, v35, v39);
  v41 = (v40 + v30);
  v42 = v48;
  *v41 = sub_226ED4484;
  v41[1] = v42;

  sub_227669270();
  return (v36)(v53, v39);
}

uint64_t sub_2272879E0@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v47 = a3;
  LODWORD(v48) = a1;
  v52 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD3B0, &unk_227684AF0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v10 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = &v46 - v11;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9500, &unk_227671CA0);
  v55 = *(v50 - 8);
  v13 = v55[8];
  v14 = MEMORY[0x28223BE20](v50);
  v49 = &v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v14);
  v53 = &v46 - v16;
  MEMORY[0x28223BE20](v15);
  v54 = &v46 - v17;
  *(swift_allocObject() + 16) = v4;
  sub_22766BDB0();
  v51 = v4;
  sub_227669270();
  v18 = swift_allocObject();
  *(v18 + 16) = v48;
  v19 = v47;
  *(v18 + 24) = a2;
  *(v18 + 32) = v19;
  (*(v7 + 16))(v10, v12, v6);
  v20 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v21 = (v8 + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
  v22 = swift_allocObject();
  (*(v7 + 32))(v22 + v20, v10, v6);
  v23 = (v22 + v21);
  *v23 = sub_2272B598C;
  v23[1] = v18;

  v24 = v53;
  sub_227669270();
  (*(v7 + 8))(v12, v6);
  v25 = swift_allocObject();
  *(v25 + 16) = sub_2272B81E4;
  *(v25 + 24) = 0;
  v26 = v55;
  v48 = v55[2];
  v27 = v49;
  v28 = v50;
  v48(v49, v24, v50);
  v29 = *(v26 + 80);
  v47 = (v29 + 16) & ~v29;
  v30 = (v13 + v47 + 7) & 0xFFFFFFFFFFFFFFF8;
  v31 = swift_allocObject();
  v32 = v26[4];
  v33 = v28;
  v32(v31 + ((v29 + 16) & ~v29), v27, v28);
  v34 = (v31 + v30);
  *v34 = sub_2272B59C8;
  v34[1] = v25;
  v35 = v54;
  sub_227669270();
  v49 = v55[1];
  ++v55;
  v36 = v53;
  v37 = v33;
  (v49)(v53, v33);
  v38 = swift_allocObject();
  v39 = v51;
  *(v38 + 16) = v51;
  v40 = v35;
  v41 = v37;
  v48(v36, v40, v37);
  v42 = swift_allocObject();
  v32(v42 + v47, v36, v41);
  v43 = (v42 + v30);
  *v43 = sub_2272B5A30;
  v43[1] = v38;
  v44 = v39;
  sub_227669270();
  return (v49)(v54, v41);
}

uint64_t sub_227287EEC@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v52 = a1;
  v62 = a4;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD3B0, &unk_227684AF0);
  v8 = *(v51 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v51);
  MEMORY[0x28223BE20](v10);
  v12 = &v49 - v11;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9500, &unk_227671CA0);
  v13 = *(v57 - 8);
  v53 = *(v13 + 64);
  v14 = MEMORY[0x28223BE20](v57);
  v54 = &v49 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v50 = &v49 - v16;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC6C8, &unk_227684DC0);
  v58 = *(v61 - 8);
  v60 = *(v58 + 64);
  v17 = MEMORY[0x28223BE20](v61);
  v59 = &v49 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v56 = &v49 - v19;
  *(swift_allocObject() + 16) = v5;
  sub_22766BDB0();
  v55 = v5;
  sub_227669270();
  v20 = swift_allocObject();
  *(v20 + 16) = v52;
  *(v20 + 24) = a2;
  *(v20 + 32) = a3;
  v21 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = v51;
  (*(v8 + 16))(v21, v12, v51);
  v23 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v24 = (v9 + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
  v25 = swift_allocObject();
  (*(v8 + 32))(v25 + v23, v21, v22);
  v26 = (v25 + v24);
  *v26 = sub_2272B58AC;
  v26[1] = v20;

  v27 = v50;
  sub_227669270();
  (*(v8 + 8))(v12, v22);
  v28 = swift_allocObject();
  *(v28 + 16) = sub_2272B36B0;
  *(v28 + 24) = 0;
  v29 = v54;
  v30 = v27;
  v31 = v57;
  (*(v13 + 16))(v54, v27, v57);
  v32 = (*(v13 + 80) + 16) & ~*(v13 + 80);
  v33 = (v53 + v32 + 7) & 0xFFFFFFFFFFFFFFF8;
  v34 = swift_allocObject();
  (*(v13 + 32))(v34 + v32, v29, v31);
  v35 = (v34 + v33);
  *v35 = sub_2272B58E8;
  v35[1] = v28;
  sub_227667D20();
  v36 = v56;
  sub_227669270();
  (*(v13 + 8))(v30, v31);
  v37 = swift_allocObject();
  v38 = v55;
  *(v37 + 16) = v55;
  v39 = v58;
  v40 = v59;
  v41 = v61;
  (*(v58 + 16))(v59, v36, v61);
  v42 = v39;
  v43 = (*(v39 + 80) + 16) & ~*(v39 + 80);
  v44 = (v60 + v43 + 7) & 0xFFFFFFFFFFFFFFF8;
  v45 = swift_allocObject();
  (*(v42 + 32))(v45 + v43, v40, v41);
  v46 = (v45 + v44);
  *v46 = sub_2272B8408;
  v46[1] = v37;
  v47 = v38;
  sub_227669270();
  return (*(v42 + 8))(v36, v41);
}

uint64_t sub_2272884A4@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v51 = a1;
  v61 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD3B0, &unk_227684AF0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  MEMORY[0x28223BE20](v10);
  v12 = &v50 - v11;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9500, &unk_227671CA0);
  v13 = *(v56 - 8);
  v55 = *(v13 + 64);
  v14 = MEMORY[0x28223BE20](v56);
  v53 = &v50 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v50 = &v50 - v16;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC6B8, &qword_227684DB0);
  v52 = *(v60 - 8);
  v58 = *(v52 + 64);
  v17 = MEMORY[0x28223BE20](v60);
  v57 = &v50 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v54 = &v50 - v19;
  sub_22766BDB0();
  v59 = v4;

  sub_227669270();
  v20 = swift_allocObject();
  *(v20 + 16) = v51;
  *(v20 + 24) = a2;
  *(v20 + 32) = a3;
  v21 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = v7;
  (*(v8 + 16))(v21, v12, v7);
  v23 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v24 = (v9 + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
  v25 = swift_allocObject();
  v26 = v25 + v23;
  v27 = v22;
  (*(v8 + 32))(v26, v21, v22);
  v28 = (v25 + v24);
  *v28 = sub_2272B5724;
  v28[1] = v20;

  v29 = v50;
  sub_227669270();
  (*(v8 + 8))(v12, v27);
  v30 = swift_allocObject();
  *(v30 + 16) = sub_2272B36E4;
  *(v30 + 24) = 0;
  v31 = v53;
  v32 = v29;
  v33 = v56;
  (*(v13 + 16))(v53, v29, v56);
  v34 = (*(v13 + 80) + 16) & ~*(v13 + 80);
  v35 = (v55 + v34 + 7) & 0xFFFFFFFFFFFFFFF8;
  v36 = swift_allocObject();
  (*(v13 + 32))(v36 + v34, v31, v33);
  v37 = (v36 + v35);
  *v37 = sub_2272B5760;
  v37[1] = v30;
  sub_2276631A0();
  v38 = v54;
  sub_227669270();
  (*(v13 + 8))(v32, v33);
  v39 = v52;
  v40 = v57;
  v41 = v38;
  v42 = v60;
  (*(v52 + 16))(v57, v38, v60);
  v43 = v39;
  v44 = (*(v39 + 80) + 16) & ~*(v39 + 80);
  v45 = (v58 + v44 + 7) & 0xFFFFFFFFFFFFFFF8;
  v46 = swift_allocObject();
  (*(v43 + 32))(v46 + v44, v40, v42);
  v47 = (v46 + v45);
  v48 = v59;
  *v47 = sub_226ED4480;
  v47[1] = v48;

  sub_227669270();
  return (*(v43 + 8))(v41, v42);
}

uint64_t sub_227288A30@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v51 = a1;
  v61 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD3B0, &unk_227684AF0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  MEMORY[0x28223BE20](v10);
  v12 = &v50 - v11;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9500, &unk_227671CA0);
  v13 = *(v56 - 8);
  v55 = *(v13 + 64);
  v14 = MEMORY[0x28223BE20](v56);
  v53 = &v50 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v50 = &v50 - v16;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC6B0, &unk_22767E4B0);
  v52 = *(v60 - 8);
  v58 = *(v52 + 64);
  v17 = MEMORY[0x28223BE20](v60);
  v57 = &v50 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v54 = &v50 - v19;
  sub_22766BDB0();
  v59 = v4;

  sub_227669270();
  v20 = swift_allocObject();
  *(v20 + 16) = v51;
  *(v20 + 24) = a2;
  *(v20 + 32) = a3;
  v21 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = v7;
  (*(v8 + 16))(v21, v12, v7);
  v23 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v24 = (v9 + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
  v25 = swift_allocObject();
  v26 = v25 + v23;
  v27 = v22;
  (*(v8 + 32))(v26, v21, v22);
  v28 = (v25 + v24);
  *v28 = sub_2272B559C;
  v28[1] = v20;

  v29 = v50;
  sub_227669270();
  (*(v8 + 8))(v12, v27);
  v30 = swift_allocObject();
  *(v30 + 16) = sub_2272B3718;
  *(v30 + 24) = 0;
  v31 = v53;
  v32 = v29;
  v33 = v56;
  (*(v13 + 16))(v53, v29, v56);
  v34 = (*(v13 + 80) + 16) & ~*(v13 + 80);
  v35 = (v55 + v34 + 7) & 0xFFFFFFFFFFFFFFF8;
  v36 = swift_allocObject();
  (*(v13 + 32))(v36 + v34, v31, v33);
  v37 = (v36 + v35);
  *v37 = sub_2272B55D8;
  v37[1] = v30;
  sub_227664170();
  v38 = v54;
  sub_227669270();
  (*(v13 + 8))(v32, v33);
  v39 = v52;
  v40 = v57;
  v41 = v38;
  v42 = v60;
  (*(v52 + 16))(v57, v38, v60);
  v43 = v39;
  v44 = (*(v39 + 80) + 16) & ~*(v39 + 80);
  v45 = (v58 + v44 + 7) & 0xFFFFFFFFFFFFFFF8;
  v46 = swift_allocObject();
  (*(v43 + 32))(v46 + v44, v40, v42);
  v47 = (v46 + v45);
  v48 = v59;
  *v47 = sub_226ED4484;
  v47[1] = v48;

  sub_227669270();
  return (*(v43 + 8))(v41, v42);
}

uint64_t sub_227288FBC@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v51 = a1;
  v61 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD3B0, &unk_227684AF0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  MEMORY[0x28223BE20](v10);
  v12 = &v50 - v11;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9500, &unk_227671CA0);
  v13 = *(v56 - 8);
  v54 = *(v13 + 64);
  v14 = MEMORY[0x28223BE20](v56);
  v53 = &v50 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v50 = &v50 - v16;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD3A0, &unk_22767A2A0);
  v52 = *(v60 - 8);
  v58 = *(v52 + 64);
  v17 = MEMORY[0x28223BE20](v60);
  v57 = &v50 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v55 = &v50 - v19;
  sub_22766BDB0();
  v59 = v4;

  sub_227669270();
  v20 = swift_allocObject();
  *(v20 + 16) = v51;
  *(v20 + 24) = a2;
  *(v20 + 32) = a3;
  v21 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = v7;
  (*(v8 + 16))(v21, v12, v7);
  v23 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v24 = (v9 + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
  v25 = swift_allocObject();
  v26 = v25 + v23;
  v27 = v22;
  (*(v8 + 32))(v26, v21, v22);
  v28 = (v25 + v24);
  *v28 = sub_2272B4298;
  v28[1] = v20;

  v29 = v50;
  sub_227669270();
  (*(v8 + 8))(v12, v27);
  v30 = swift_allocObject();
  *(v30 + 16) = sub_2272B374C;
  *(v30 + 24) = 0;
  v31 = v53;
  v32 = v29;
  v33 = v56;
  (*(v13 + 16))(v53, v29, v56);
  v34 = (*(v13 + 80) + 16) & ~*(v13 + 80);
  v35 = (v54 + v34 + 7) & 0xFFFFFFFFFFFFFFF8;
  v36 = swift_allocObject();
  (*(v13 + 32))(v36 + v34, v31, v33);
  v37 = (v36 + v35);
  *v37 = sub_2272B42D4;
  v37[1] = v30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B84E0, &qword_22767C6B0);
  v38 = v55;
  sub_227669270();
  (*(v13 + 8))(v32, v33);
  v39 = v52;
  v40 = v57;
  v41 = v38;
  v42 = v60;
  (*(v52 + 16))(v57, v38, v60);
  v43 = v39;
  v44 = (*(v39 + 80) + 16) & ~*(v39 + 80);
  v45 = (v58 + v44 + 7) & 0xFFFFFFFFFFFFFFF8;
  v46 = swift_allocObject();
  (*(v43 + 32))(v46 + v44, v40, v42);
  v47 = (v46 + v45);
  v48 = v59;
  *v47 = sub_226ED4484;
  v47[1] = v48;

  sub_227669270();
  return (*(v43 + 8))(v41, v42);
}

uint64_t sub_227289554@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v52 = a1;
  v62 = a4;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD3B0, &unk_227684AF0);
  v8 = *(v51 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v51);
  MEMORY[0x28223BE20](v10);
  v12 = &v49 - v11;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9500, &unk_227671CA0);
  v13 = *(v57 - 8);
  v53 = *(v13 + 64);
  v14 = MEMORY[0x28223BE20](v57);
  v54 = &v49 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v50 = &v49 - v16;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BA360, &qword_2276720F0);
  v58 = *(v61 - 8);
  v60 = *(v58 + 64);
  v17 = MEMORY[0x28223BE20](v61);
  v59 = &v49 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v56 = &v49 - v19;
  *(swift_allocObject() + 16) = v5;
  sub_22766BDB0();
  v55 = v5;
  sub_227669270();
  v20 = swift_allocObject();
  *(v20 + 16) = v52;
  *(v20 + 24) = a2;
  *(v20 + 32) = a3;
  v21 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = v51;
  (*(v8 + 16))(v21, v12, v51);
  v23 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v24 = (v9 + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
  v25 = swift_allocObject();
  (*(v8 + 32))(v25 + v23, v21, v22);
  v26 = (v25 + v24);
  *v26 = sub_2272B5104;
  v26[1] = v20;

  v27 = v50;
  sub_227669270();
  (*(v8 + 8))(v12, v22);
  v28 = swift_allocObject();
  *(v28 + 16) = sub_2272B3840;
  *(v28 + 24) = 0;
  v29 = v54;
  v30 = v27;
  v31 = v57;
  (*(v13 + 16))(v54, v27, v57);
  v32 = (*(v13 + 80) + 16) & ~*(v13 + 80);
  v33 = (v53 + v32 + 7) & 0xFFFFFFFFFFFFFFF8;
  v34 = swift_allocObject();
  (*(v13 + 32))(v34 + v32, v29, v31);
  v35 = (v34 + v33);
  *v35 = sub_2272B5140;
  v35[1] = v28;
  sub_227666190();
  v36 = v56;
  sub_227669270();
  (*(v13 + 8))(v30, v31);
  v37 = swift_allocObject();
  v38 = v55;
  *(v37 + 16) = v55;
  v39 = v58;
  v40 = v59;
  v41 = v61;
  (*(v58 + 16))(v59, v36, v61);
  v42 = v39;
  v43 = (*(v39 + 80) + 16) & ~*(v39 + 80);
  v44 = (v60 + v43 + 7) & 0xFFFFFFFFFFFFFFF8;
  v45 = swift_allocObject();
  (*(v42 + 32))(v45 + v43, v40, v41);
  v46 = (v45 + v44);
  *v46 = sub_2272B8408;
  v46[1] = v37;
  v47 = v38;
  sub_227669270();
  return (*(v42 + 8))(v36, v41);
}

uint64_t sub_227289B0C@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v52 = a1;
  v62 = a4;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD3B0, &unk_227684AF0);
  v8 = *(v51 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v51);
  MEMORY[0x28223BE20](v10);
  v12 = &v49 - v11;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9500, &unk_227671CA0);
  v13 = *(v57 - 8);
  v53 = *(v13 + 64);
  v14 = MEMORY[0x28223BE20](v57);
  v54 = &v49 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v50 = &v49 - v16;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BBA00, &qword_227684DA0);
  v58 = *(v61 - 8);
  v60 = *(v58 + 64);
  v17 = MEMORY[0x28223BE20](v61);
  v59 = &v49 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v56 = &v49 - v19;
  *(swift_allocObject() + 16) = v5;
  sub_22766BDB0();
  v55 = v5;
  sub_227669270();
  v20 = swift_allocObject();
  *(v20 + 16) = v52;
  *(v20 + 24) = a2;
  *(v20 + 32) = a3;
  v21 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = v51;
  (*(v8 + 16))(v21, v12, v51);
  v23 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v24 = (v9 + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
  v25 = swift_allocObject();
  (*(v8 + 32))(v25 + v23, v21, v22);
  v26 = (v25 + v24);
  *v26 = sub_2272B5414;
  v26[1] = v20;

  v27 = v50;
  sub_227669270();
  (*(v8 + 8))(v12, v22);
  v28 = swift_allocObject();
  *(v28 + 16) = sub_2272B3874;
  *(v28 + 24) = 0;
  v29 = v54;
  v30 = v27;
  v31 = v57;
  (*(v13 + 16))(v54, v27, v57);
  v32 = (*(v13 + 80) + 16) & ~*(v13 + 80);
  v33 = (v53 + v32 + 7) & 0xFFFFFFFFFFFFFFF8;
  v34 = swift_allocObject();
  (*(v13 + 32))(v34 + v32, v29, v31);
  v35 = (v34 + v33);
  *v35 = sub_2272B5450;
  v35[1] = v28;
  sub_227664DC0();
  v36 = v56;
  sub_227669270();
  (*(v13 + 8))(v30, v31);
  v37 = swift_allocObject();
  v38 = v55;
  *(v37 + 16) = v55;
  v39 = v58;
  v40 = v59;
  v41 = v61;
  (*(v58 + 16))(v59, v36, v61);
  v42 = v39;
  v43 = (*(v39 + 80) + 16) & ~*(v39 + 80);
  v44 = (v60 + v43 + 7) & 0xFFFFFFFFFFFFFFF8;
  v45 = swift_allocObject();
  (*(v42 + 32))(v45 + v43, v40, v41);
  v46 = (v45 + v44);
  *v46 = sub_2272B8408;
  v46[1] = v37;
  v47 = v38;
  sub_227669270();
  return (*(v42 + 8))(v36, v41);
}

uint64_t sub_22728A0C4@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v51 = a1;
  v61 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD3B0, &unk_227684AF0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  MEMORY[0x28223BE20](v10);
  v12 = &v50 - v11;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9500, &unk_227671CA0);
  v13 = *(v56 - 8);
  v54 = *(v13 + 64);
  v14 = MEMORY[0x28223BE20](v56);
  v53 = &v50 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v50 = &v50 - v16;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8D90, &unk_22767B290);
  v52 = *(v60 - 8);
  v58 = *(v52 + 64);
  v17 = MEMORY[0x28223BE20](v60);
  v57 = &v50 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v55 = &v50 - v19;
  sub_22766BDB0();
  v59 = v4;

  sub_227669270();
  v20 = swift_allocObject();
  *(v20 + 16) = v51;
  *(v20 + 24) = a2;
  *(v20 + 32) = a3;
  v21 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = v7;
  (*(v8 + 16))(v21, v12, v7);
  v23 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v24 = (v9 + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
  v25 = swift_allocObject();
  v26 = v25 + v23;
  v27 = v22;
  (*(v8 + 32))(v26, v21, v22);
  v28 = (v25 + v24);
  *v28 = sub_2272B4F98;
  v28[1] = v20;

  v29 = v50;
  sub_227669270();
  (*(v8 + 8))(v12, v27);
  v30 = swift_allocObject();
  *(v30 + 16) = sub_2272B81FC;
  *(v30 + 24) = 0;
  v31 = v53;
  v32 = v29;
  v33 = v56;
  (*(v13 + 16))(v53, v29, v56);
  v34 = (*(v13 + 80) + 16) & ~*(v13 + 80);
  v35 = (v54 + v34 + 7) & 0xFFFFFFFFFFFFFFF8;
  v36 = swift_allocObject();
  (*(v13 + 32))(v36 + v34, v31, v33);
  v37 = (v36 + v35);
  *v37 = sub_2272B4FD4;
  v37[1] = v30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BB8B0, &unk_22767E490);
  v38 = v55;
  sub_227669270();
  (*(v13 + 8))(v32, v33);
  v39 = v52;
  v40 = v57;
  v41 = v38;
  v42 = v60;
  (*(v52 + 16))(v57, v38, v60);
  v43 = v39;
  v44 = (*(v39 + 80) + 16) & ~*(v39 + 80);
  v45 = (v58 + v44 + 7) & 0xFFFFFFFFFFFFFFF8;
  v46 = swift_allocObject();
  (*(v43 + 32))(v46 + v44, v40, v42);
  v47 = (v46 + v45);
  v48 = v59;
  *v47 = sub_226ED4484;
  v47[1] = v48;

  sub_227669270();
  return (*(v43 + 8))(v41, v42);
}

uint64_t sub_22728A65C@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v51 = a1;
  v61 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD3B0, &unk_227684AF0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  MEMORY[0x28223BE20](v10);
  v12 = &v50 - v11;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9500, &unk_227671CA0);
  v13 = *(v56 - 8);
  v55 = *(v13 + 64);
  v14 = MEMORY[0x28223BE20](v56);
  v53 = &v50 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v50 = &v50 - v16;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD6B0, &qword_22767D9D8);
  v52 = *(v60 - 8);
  v58 = *(v52 + 64);
  v17 = MEMORY[0x28223BE20](v60);
  v57 = &v50 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v54 = &v50 - v19;
  sub_22766BDB0();
  v59 = v4;

  sub_227669270();
  v20 = swift_allocObject();
  *(v20 + 16) = v51;
  *(v20 + 24) = a2;
  *(v20 + 32) = a3;
  v21 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = v7;
  (*(v8 + 16))(v21, v12, v7);
  v23 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v24 = (v9 + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
  v25 = swift_allocObject();
  v26 = v25 + v23;
  v27 = v22;
  (*(v8 + 32))(v26, v21, v22);
  v28 = (v25 + v24);
  *v28 = sub_2272B49BC;
  v28[1] = v20;

  v29 = v50;
  sub_227669270();
  (*(v8 + 8))(v12, v27);
  v30 = swift_allocObject();
  *(v30 + 16) = sub_2272B3940;
  *(v30 + 24) = 0;
  v31 = v53;
  v32 = v29;
  v33 = v56;
  (*(v13 + 16))(v53, v29, v56);
  v34 = (*(v13 + 80) + 16) & ~*(v13 + 80);
  v35 = (v55 + v34 + 7) & 0xFFFFFFFFFFFFFFF8;
  v36 = swift_allocObject();
  (*(v13 + 32))(v36 + v34, v31, v33);
  v37 = (v36 + v35);
  *v37 = sub_2272B49F8;
  v37[1] = v30;
  sub_227667210();
  v38 = v54;
  sub_227669270();
  (*(v13 + 8))(v32, v33);
  v39 = v52;
  v40 = v57;
  v41 = v38;
  v42 = v60;
  (*(v52 + 16))(v57, v38, v60);
  v43 = v39;
  v44 = (*(v39 + 80) + 16) & ~*(v39 + 80);
  v45 = (v58 + v44 + 7) & 0xFFFFFFFFFFFFFFF8;
  v46 = swift_allocObject();
  (*(v43 + 32))(v46 + v44, v40, v42);
  v47 = (v46 + v45);
  v48 = v59;
  *v47 = sub_226ED4484;
  v47[1] = v48;

  sub_227669270();
  return (*(v43 + 8))(v41, v42);
}

uint64_t sub_22728ABE8@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v52 = a1;
  v62 = a4;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD3B0, &unk_227684AF0);
  v8 = *(v51 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v51);
  MEMORY[0x28223BE20](v10);
  v12 = &v49 - v11;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9500, &unk_227671CA0);
  v13 = *(v57 - 8);
  v53 = *(v13 + 64);
  v14 = MEMORY[0x28223BE20](v57);
  v54 = &v49 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v50 = &v49 - v16;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BA410, &qword_227678AB0);
  v58 = *(v61 - 8);
  v60 = *(v58 + 64);
  v17 = MEMORY[0x28223BE20](v61);
  v59 = &v49 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v56 = &v49 - v19;
  *(swift_allocObject() + 16) = v5;
  sub_22766BDB0();
  v55 = v5;
  sub_227669270();
  v20 = swift_allocObject();
  *(v20 + 16) = v52;
  *(v20 + 24) = a2;
  *(v20 + 32) = a3;
  v21 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = v51;
  (*(v8 + 16))(v21, v12, v51);
  v23 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v24 = (v9 + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
  v25 = swift_allocObject();
  (*(v8 + 32))(v25 + v23, v21, v22);
  v26 = (v25 + v24);
  *v26 = sub_2272B6010;
  v26[1] = v20;

  v27 = v50;
  sub_227669270();
  (*(v8 + 8))(v12, v22);
  v28 = swift_allocObject();
  *(v28 + 16) = sub_2272B3B48;
  *(v28 + 24) = 0;
  v29 = v54;
  v30 = v27;
  v31 = v57;
  (*(v13 + 16))(v54, v27, v57);
  v32 = (*(v13 + 80) + 16) & ~*(v13 + 80);
  v33 = (v53 + v32 + 7) & 0xFFFFFFFFFFFFFFF8;
  v34 = swift_allocObject();
  (*(v13 + 32))(v34 + v32, v29, v31);
  v35 = (v34 + v33);
  *v35 = sub_2272B604C;
  v35[1] = v28;
  sub_227668CE0();
  v36 = v56;
  sub_227669270();
  (*(v13 + 8))(v30, v31);
  v37 = swift_allocObject();
  v38 = v55;
  *(v37 + 16) = v55;
  v39 = v58;
  v40 = v59;
  v41 = v61;
  (*(v58 + 16))(v59, v36, v61);
  v42 = v39;
  v43 = (*(v39 + 80) + 16) & ~*(v39 + 80);
  v44 = (v60 + v43 + 7) & 0xFFFFFFFFFFFFFFF8;
  v45 = swift_allocObject();
  (*(v42 + 32))(v45 + v43, v40, v41);
  v46 = (v45 + v44);
  *v46 = sub_2272B5A30;
  v46[1] = v37;
  v47 = v38;
  sub_227669270();
  return (*(v42 + 8))(v36, v41);
}

uint64_t sub_22728B1A0@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v51 = a1;
  v61 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD3B0, &unk_227684AF0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  MEMORY[0x28223BE20](v10);
  v12 = &v50 - v11;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9500, &unk_227671CA0);
  v13 = *(v56 - 8);
  v54 = *(v13 + 64);
  v14 = MEMORY[0x28223BE20](v56);
  v53 = &v50 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v50 = &v50 - v16;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BBA10, &unk_2276720E0);
  v52 = *(v60 - 8);
  v58 = *(v52 + 64);
  v17 = MEMORY[0x28223BE20](v60);
  v57 = &v50 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v55 = &v50 - v19;
  sub_22766BDB0();
  v59 = v4;

  sub_227669270();
  v20 = swift_allocObject();
  *(v20 + 16) = v51;
  *(v20 + 24) = a2;
  *(v20 + 32) = a3;
  v21 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = v7;
  (*(v8 + 16))(v21, v12, v7);
  v23 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v24 = (v9 + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
  v25 = swift_allocObject();
  v26 = v25 + v23;
  v27 = v22;
  (*(v8 + 32))(v26, v21, v22);
  v28 = (v25 + v24);
  *v28 = sub_2272B45AC;
  v28[1] = v20;

  v29 = v50;
  sub_227669270();
  (*(v8 + 8))(v12, v27);
  v30 = swift_allocObject();
  *(v30 + 16) = sub_2272B3B7C;
  *(v30 + 24) = 0;
  v31 = v53;
  v32 = v29;
  v33 = v56;
  (*(v13 + 16))(v53, v29, v56);
  v34 = (*(v13 + 80) + 16) & ~*(v13 + 80);
  v35 = (v54 + v34 + 7) & 0xFFFFFFFFFFFFFFF8;
  v36 = swift_allocObject();
  (*(v13 + 32))(v36 + v34, v31, v33);
  v37 = (v36 + v35);
  *v37 = sub_2272B45E8;
  v37[1] = v30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBA20, &qword_22767B6C0);
  v38 = v55;
  sub_227669270();
  (*(v13 + 8))(v32, v33);
  v39 = v52;
  v40 = v57;
  v41 = v38;
  v42 = v60;
  (*(v52 + 16))(v57, v38, v60);
  v43 = v39;
  v44 = (*(v39 + 80) + 16) & ~*(v39 + 80);
  v45 = (v58 + v44 + 7) & 0xFFFFFFFFFFFFFFF8;
  v46 = swift_allocObject();
  (*(v43 + 32))(v46 + v44, v40, v42);
  v47 = (v46 + v45);
  v48 = v59;
  *v47 = sub_226ED4484;
  v47[1] = v48;

  sub_227669270();
  return (*(v43 + 8))(v41, v42);
}