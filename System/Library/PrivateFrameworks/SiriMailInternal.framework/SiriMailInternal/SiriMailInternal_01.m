uint64_t sub_2675EDBE4(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 120);
  v6 = *v2;
  v4[16] = v1;

  (*(v4[12] + 8))(v4[13], v4[11]);
  if (v1)
  {

    return MEMORY[0x2822009F8](sub_2675EDD9C, 0, 0);
  }

  else
  {
    v7 = v4[13];
    v8 = v4[10];

    v9 = *(v6 + 8);

    return v9(a1);
  }
}

uint64_t sub_2675EDD9C()
{
  v23 = v0;
  v1 = v0[16];
  v2 = v0[14];
  v3 = v1;
  v4 = sub_2676CBE2C();
  v5 = sub_2676CC24C();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[16];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v22 = v8;
    *v7 = 136315138;
    swift_getErrorValue();
    v10 = v0[2];
    v9 = v0[3];
    v11 = v0[4];
    v12 = sub_2676CC5FC();
    v14 = sub_2676B0B84(v12, v13, &v22);

    *(v7 + 4) = v14;
    _os_log_impl(&dword_2675D4000, v4, v5, "#ContactResolver.mailAddresseeEntities threw error: %s, returning empty array", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v8);
    MEMORY[0x26D5FEA80](v8, -1, -1);
    MEMORY[0x26D5FEA80](v7, -1, -1);

    v15 = v6;
  }

  else
  {
    v16 = v0[16];

    v15 = v16;
  }

  v17 = v0[13];
  v18 = v0[10];

  v19 = v0[1];
  v20 = MEMORY[0x277D84F90];

  return v19(v20);
}

unint64_t sub_2675EDF34()
{
  result = qword_2801CC1A0;
  if (!qword_2801CC1A0)
  {
    sub_2676C8C8C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2801CC1A0);
  }

  return result;
}

uint64_t sub_2675EDF8C()
{
  v70 = sub_2676CAABC();
  v0 = OUTLINED_FUNCTION_3(v70);
  v2 = v1;
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v0);
  OUTLINED_FUNCTION_1_7();
  v73 = v5 - v6;
  MEMORY[0x28223BE20](v7);
  v72 = &v57 - v8;
  v9 = sub_2676CAB1C();
  v10 = OUTLINED_FUNCTION_3(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_1_7();
  v62 = (v15 - v16);
  MEMORY[0x28223BE20](v17);
  v19 = &v57 - v18;
  v20 = sub_2676CAECC();
  v21 = OUTLINED_FUNCTION_3(v20);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21);
  v58 = &v57 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = v25;
  v26 = *(v25 + 16);
  v60 = v27;
  v26();
  result = sub_2676CAE5C();
  v29 = result;
  v30 = 0;
  v74 = *(result + 16);
  v69 = v12 + 16;
  v68 = *MEMORY[0x277D56008];
  v66 = (v2 + 8);
  v67 = (v2 + 104);
  v64 = (v12 + 8);
  v71 = v12;
  v61 = (v12 + 32);
  v63 = MEMORY[0x277D84F90];
  v65 = result;
  while (v74 != v30)
  {
    if (v30 >= *(v29 + 16))
    {
      __break(1u);
      return result;
    }

    v31 = (*(v71 + 80) + 32) & ~*(v71 + 80);
    v32 = *(v71 + 72);
    (*(v71 + 16))(v19, v29 + v31 + v32 * v30, v9);
    v33 = v72;
    sub_2676CAAEC();
    v34 = v9;
    v35 = v73;
    v36 = v30;
    v37 = v70;
    (*v67)(v73, v68, v70);
    sub_2675EEE08(&qword_2801CC140, MEMORY[0x277D56020]);
    sub_2676CC0CC();
    sub_2676CC0CC();
    v38 = *v66;
    (*v66)(v35, v37);
    v38(v33, v37);
    if (v76 == v75)
    {
      v39 = v36;
      v40 = *v61;
      (*v61)(v62, v19, v34);
      v41 = v63;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v77 = v41;
      v9 = v34;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_2676C2848(0, *(v41 + 16) + 1, 1);
        v41 = v77;
      }

      v29 = v65;
      v44 = *(v41 + 16);
      v43 = *(v41 + 24);
      if (v44 >= v43 >> 1)
      {
        sub_2676C2848(v43 > 1, v44 + 1, 1);
        v41 = v77;
      }

      v30 = v39 + 1;
      *(v41 + 16) = v44 + 1;
      v63 = v41;
      result = v40(v41 + v31 + v44 * v32, v62, v34);
    }

    else
    {
      result = (*v64)(v19, v34);
      v30 = v36 + 1;
      v9 = v34;
      v29 = v65;
    }
  }

  v45 = v58;
  sub_2676CAE6C();
  v46 = *(sub_2676CAE5C() + 16);

  if (v46)
  {
    if (v46 == 1)
    {
      sub_2676C8C8C();
      v46 = swift_allocBox();
      sub_2675E38E4(v47);
      (*(v59 + 8))(v45, v60);
      v48 = 0xC000000000000000;
    }

    else
    {
      v53 = swift_allocBox();
      v55 = OUTLINED_FUNCTION_2_8(v53, v54);
      v56(v55);
      v48 = 0xA000000000000000;
    }
  }

  else
  {
    v49 = swift_allocBox();
    v51 = OUTLINED_FUNCTION_2_8(v49, v50);
    v52(v51);
    v48 = 0x6000000000000000;
  }

  return v48 | v46;
}

uint64_t sub_2675EE48C(uint64_t a1, unint64_t a2)
{
  v105 = a2;
  v2 = sub_2676C8C8C();
  v3 = OUTLINED_FUNCTION_3(v2);
  v97 = v4;
  v98 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_1_7();
  v9 = (v7 - v8);
  MEMORY[0x28223BE20](v10);
  v12 = &v96 - v11;
  v13 = sub_2676CAECC();
  v14 = OUTLINED_FUNCTION_3(v13);
  v103 = v15;
  v104 = v14;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_1_7();
  v20 = (v18 - v19);
  MEMORY[0x28223BE20](v21);
  v23 = &v96 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CBF78, &qword_2676CDF00);
  v25 = OUTLINED_FUNCTION_3(v24);
  v101 = v26;
  v102 = v25;
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_1_7();
  v99 = (v29 - v30);
  MEMORY[0x28223BE20](v31);
  v100 = &v96 - v32;
  v33 = sub_2676CAA9C();
  v34 = OUTLINED_FUNCTION_3(v33);
  v36 = *(v35 + 64);
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_1_7();
  v39 = (v37 - v38);
  v41 = MEMORY[0x28223BE20](v40);
  v43 = &v96 - v42;
  v44 = MEMORY[0x28223BE20](v41);
  v46 = &v96 - v45;
  MEMORY[0x28223BE20](v44);
  v50 = &v96 - v49;
  v51 = 0;
  switch(v47 >> 61)
  {
    case 1uLL:
      if (v105 >> 61 != 1)
      {
        goto LABEL_28;
      }

      v60 = v48;
      v61 = swift_projectBox();
      v62 = swift_projectBox();
      v63 = *(v60 + 16);
      v63(v43, v61, v33);
      v63(v39, v62, v33);
      v51 = sub_2676CA9FC();
      v64 = *(v60 + 8);
      v64(v39, v33);
      v64(v43, v33);
      return v51 & 1;
    case 2uLL:
      if (v105 >> 61 != 2)
      {
        goto LABEL_28;
      }

      v65 = swift_projectBox();
      v66 = swift_projectBox();
      v67 = v100;
      v68 = *(v101 + 16);
      v69 = v102;
      v68(v100, v65, v102);
      v68(v99, v66, v69);
      swift_getKeyPath();
      sub_2675EEE08(&qword_2801CBF70, MEMORY[0x277D5C6D0]);
      v70 = sub_2676CA89C();
      v72 = v71;

      swift_getKeyPath();
      v73 = sub_2676CA89C();
      v75 = v74;

      if (v72)
      {
        if (v75)
        {
          if (v70 == v73 && v72 == v75)
          {
            v51 = 1;
          }

          else
          {
            v51 = sub_2676CC59C();
          }

          v95 = OUTLINED_FUNCTION_3_6();
          v72(v95);
          (v72)(v67, v69);
          return v51 & 1;
        }

        v94 = OUTLINED_FUNCTION_3_6();
        v72(v94);
        (v72)(v67, v69);
LABEL_28:
        v51 = 0;
        return v51 & 1;
      }

      v93 = OUTLINED_FUNCTION_3_6();
      MEMORY[0](v93);
      MEMORY[0](v67, v69);
      if (v75)
      {

        goto LABEL_28;
      }

      v51 = 1;
      return v51 & 1;
    case 3uLL:
      if (v105 >> 61 != 3)
      {
        goto LABEL_28;
      }

      goto LABEL_22;
    case 4uLL:
      if (v105 >> 61 != 4)
      {
        goto LABEL_28;
      }

      v83 = *((v47 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v84 = *((v105 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);

      LOBYTE(v83) = sub_267683F64(v83, v84);

      return v83 & 1;
    case 5uLL:
      if (v105 >> 61 != 5)
      {
        goto LABEL_28;
      }

LABEL_22:
      v86 = swift_projectBox();
      v87 = swift_projectBox();
      v89 = v103;
      v88 = v104;
      v90 = *(v103 + 16);
      v90(v23, v86, v104);
      v90(v20, v87, v88);
      v51 = sub_2676CADEC();
      v91 = *(v89 + 8);
      v91(v20, v88);
      v91(v23, v88);
      return v51 & 1;
    case 6uLL:
      if (v105 >> 61 != 6)
      {
        goto LABEL_28;
      }

      v77 = swift_projectBox();
      v78 = swift_projectBox();
      v80 = v97;
      v79 = v98;
      v81 = *(v97 + 16);
      v81(v12, v77, v98);
      v81(v9, v78, v79);
      v51 = sub_26760C8B4();
      v82 = *(v80 + 8);
      v82(v9, v79);
      v82(v12, v79);
      return v51 & 1;
    case 7uLL:
      return v51 & 1;
    default:
      v52 = v48;
      v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC1A8, &qword_2676CDF38);
      v54 = swift_projectBox();
      if (v105 >> 61)
      {
        goto LABEL_28;
      }

      v55 = *(v53 + 48);
      v56 = *(v54 + v55);
      v57 = swift_projectBox();
      v58 = *(v57 + v55);
      v59 = *(v52 + 16);
      v59(v50, v54, v33);
      v59(v46, v57, v33);

      if (sub_2676CA9FC())
      {
        v51 = sub_2675EE48C(v56, v58);
      }

      else
      {
        v51 = 0;
      }

      v92 = *(v52 + 8);
      v92(v46, v33);
      v92(v50, v33);
      return v51 & 1;
  }
}

uint64_t sub_2675EEC78@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2676CB84C();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_2675EECA4(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_2676CB85C();
}

unint64_t sub_2675EECE4(unint64_t a1)
{
  v1 = a1 >> 61;
  result = 0x707041736465656ELL;
  switch(v1)
  {
    case 1uLL:
      result = 0x6C6156736465656ELL;
      break;
    case 2uLL:
      result = 0x766C6F7365726E75;
      break;
    case 3uLL:
      result = 0xD00000000000001ELL;
      break;
    case 4uLL:
      result = 0xD000000000000016;
      break;
    case 5uLL:
      result = 0xD000000000000015;
      break;
    case 6uLL:
      result = 0x6465766C6F736572;
      break;
    case 7uLL:
      result = 0xD000000000000011;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_2675EEE08(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2675EEE70(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x79 && *(a1 + 8))
    {
      v2 = *a1 + 120;
    }

    else
    {
      v2 = (((*a1 >> 57) >> 4) | (8 * ((*a1 >> 57) & 8 | *a1 & 7))) ^ 0x7F;
      if (v2 >= 0x78)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return v2 + 1;
}

uint64_t sub_2675EEEC4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x78)
  {
    *result = a2 - 121;
    if (a3 >= 0x79)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x79)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 3) & 0xF | (16 * (-a2 & 0x7F));
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_2_8(uint64_t a1, uint64_t a2)
{
  result = a2;
  v4 = *(*(v2 - 240) + 32);
  return result;
}

uint64_t sub_2675EEF84(uint64_t a1)
{
  v2 = sub_2676C8C8C();
  v3 = OUTLINED_FUNCTION_3(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_3_2();
  v10 = v9 - v8;
  v11 = *(a1 + 16);

  v12 = 0;
  v13 = MEMORY[0x277D84F90];
  while (v11 != v12)
  {
    v14 = *(a1 + 8 * v12++ + 32);
    if (v14 >> 61 == 6)
    {
      v15 = swift_projectBox();
      (*(v5 + 16))(v10, v15, v2);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v17 = *(v13 + 16);
        sub_267606D84();
        v13 = v18;
      }

      v16 = *(v13 + 16);
      if (v16 >= *(v13 + 24) >> 1)
      {
        sub_267606D84();
        v13 = v19;
      }

      *(v13 + 16) = v16 + 1;
      (*(v5 + 32))(v13 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v16, v10, v2);
    }
  }

  if (*(v13 + 16) == v11)
  {

    if (qword_2801CBAA0 != -1)
    {
      OUTLINED_FUNCTION_1_8();
      swift_once();
    }

    v20 = sub_2676CBE4C();
    __swift_project_value_buffer(v20, qword_2801CDC90);
    v21 = sub_2676CBE2C();
    v22 = sub_2676CC23C();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_2675D4000, v21, v22, "#ContactStateManager all contacts are resolved", v23, 2u);
      v24 = OUTLINED_FUNCTION_2_9();
      MEMORY[0x26D5FEA80](v24);
    }
  }

  else
  {

    return a1;
  }

  return v13;
}

int64_t sub_2675EF208(void *a1, unint64_t a2)
{
  v211 = a2;
  v210 = a1;
  v209 = sub_2676CAECC();
  v4 = OUTLINED_FUNCTION_3(v209);
  v198 = v5;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_3_2();
  v214 = v9 - v8;
  v205 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC1B0, &qword_2676CE0A0);
  v10 = OUTLINED_FUNCTION_3(v205);
  v218 = v11;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_4();
  v202 = v14;
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x28223BE20](v15);
  v222 = v194 - v16;
  v216 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC1B8, &qword_2676CE0A8);
  v17 = *(*(v216 - 8) + 64);
  MEMORY[0x28223BE20](v216);
  v215 = v194 - v18;
  v212 = sub_2676CAA9C();
  v19 = OUTLINED_FUNCTION_3(v212);
  v231 = v20;
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_3_2();
  v207 = (v24 - v23);
  v229 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CBF78, &qword_2676CDF00);
  v25 = OUTLINED_FUNCTION_3(v229);
  v27 = v26;
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_4();
  v228 = v30;
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x28223BE20](v31);
  v227 = v194 - v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC1C0, &qword_2676CE0B0);
  v34 = *(*(v33 - 8) + 64);
  MEMORY[0x28223BE20](v33 - 8);
  v36 = (v194 - v35);
  v37 = type metadata accessor for UnresolvedContactInfo();
  v38 = OUTLINED_FUNCTION_3(v37);
  v219 = v39;
  v41 = *(v40 + 64);
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_4();
  v204 = v42;
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_10_4();
  v220 = v44;
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_10_4();
  v223 = v46;
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_10_4();
  v230 = v48;
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x28223BE20](v49);
  OUTLINED_FUNCTION_10_4();
  v208 = v50;
  OUTLINED_FUNCTION_12_0();
  v52 = MEMORY[0x28223BE20](v51);
  v206 = v194 - v53;
  v54 = 0;
  v217 = v3;
  v55 = *v3;
  v56 = *(v55 + 16);
  v226 = (v27 + 16);
  v224 = (v27 + 8);
  v221 = MEMORY[0x277D84F90];
  v235 = v52;
  v232 = v55;
  v225 = v56;
  while (v56 != v54)
  {
    if (v54 >= *(v55 + 16))
    {
      __break(1u);
LABEL_62:
      __break(1u);
LABEL_63:
      __break(1u);
LABEL_64:
      __break(1u);
LABEL_65:
      __break(1u);
      goto LABEL_66;
    }

    if (*(v55 + 8 * v54 + 32) >> 61 == 2)
    {
      v57 = swift_projectBox();
      v58 = v227;
      v59 = *v226;
      v60 = v229;
      (*v226)(v227, v57, v229);
      v2 = v228;
      v59(v228, v58, v60);
      v61 = *(v37 + 20);

      sub_2675EB96C(v2, v36 + v61);
      v62 = sub_2676CA7EC();
      v64 = v63;
      v65 = v60;
      v56 = v225;
      (*v224)(v58, v65);
      *v36 = v54;
      v66 = (v36 + *(v235 + 24));
      *v66 = v62;
      v66[1] = v64;
      v55 = v232;
      v37 = v235;
      __swift_storeEnumTagSinglePayload(v36, 0, 1, v235);

      if (__swift_getEnumTagSinglePayload(v36, 1, v37) == 1)
      {
        goto LABEL_12;
      }

      v67 = v206;
      sub_2675F03FC(v36, v206);
      sub_2675F03FC(v67, v208);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v72 = *(v221 + 16);
        sub_267606F20();
        v221 = v73;
      }

      v68 = *(v221 + 16);
      if (v68 >= *(v221 + 24) >> 1)
      {
        sub_267606F20();
        v221 = v74;
      }

      ++v54;
      *(v221 + 16) = v68 + 1;
      OUTLINED_FUNCTION_4_5();
      sub_2675F03FC(v208, v70 + v69 + *(v71 + 72) * v68);
      v55 = v232;
    }

    else
    {
      __swift_storeEnumTagSinglePayload(v36, 1, 1, v37);
LABEL_12:
      sub_2675F0394(v36);
      ++v54;
    }
  }

  v75 = v221;
  v76 = *(v221 + 16);
  v2 = MEMORY[0x277D84F90];
  v200 = v76;
  if (v76)
  {
    v233 = MEMORY[0x277D84F90];
    sub_2676C28A0(0, v76, 0);
    v2 = v233;
    OUTLINED_FUNCTION_4_5();
    v78 = v75 + v77;
    v229 = *(v79 + 72);
    v80 = (v231 + 2);
    v81 = v212;
    v82 = v207;
    do
    {
      v83 = v230;
      sub_2675F0460(v78, v230);
      (*v80)(v82, v83 + *(v235 + 20), v81);
      sub_2675F04C4(v83);
      v233 = v2;
      isa = v2[2].isa;
      v84 = v2[3].isa;
      if (isa >= v84 >> 1)
      {
        sub_2676C28A0(v84 > 1, isa + 1, 1);
        v81 = v212;
        v2 = v233;
      }

      v2[2].isa = (isa + 1);
      OUTLINED_FUNCTION_4_5();
      (*(v87 + 32))(v2 + v86 + *(v87 + 72) * isa, v82, v81);
      v78 += v229;
      --v76;
    }

    while (v76);
  }

  v54 = v220;
  if (qword_2801CBAA0 != -1)
  {
LABEL_66:
    OUTLINED_FUNCTION_1_8();
    swift_once();
  }

  v88 = sub_2676CBE4C();
  v89 = __swift_project_value_buffer(v88, qword_2801CDC90);

  v201 = v89;
  v90 = sub_2676CBE2C();
  v91 = sub_2676CC23C();

  if (os_log_type_enabled(v90, v91))
  {
    v92 = swift_slowAlloc();
    v93 = swift_slowAlloc();
    v233 = v93;
    *v92 = 136315138;
    v94 = MEMORY[0x26D5FDDD0](v2, v212);
    v96 = sub_2676B0B84(v94, v95, &v233);

    *(v92 + 4) = v96;
    _os_log_impl(&dword_2675D4000, v90, v91, "#ContactStateManager running makeRecommendations for: %s", v92, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v93);
    v97 = OUTLINED_FUNCTION_2_9();
    MEMORY[0x26D5FEA80](v97);
    MEMORY[0x26D5FEA80](v92, -1, -1);
  }

  v98 = v221;
  v99 = v213;
  v100 = *__swift_project_boxed_opaque_existential_1(v210, v210[3]);
  v101 = sub_2676CAB3C();
  if (v99)
  {

    return v200;
  }

  v103 = v101;

  v2 = sub_2676CBE2C();
  v104 = sub_2676CC23C();

  v105 = os_log_type_enabled(v2, v104);
  v230 = v103;
  if (v105)
  {
    v106 = swift_slowAlloc();
    v107 = swift_slowAlloc();
    v233 = v107;
    *v106 = 136315138;
    v108 = MEMORY[0x26D5FDDD0](v230, v205);
    v110 = sub_2676B0B84(v108, v109, &v233);

    *(v106 + 4) = v110;
    _os_log_impl(&dword_2675D4000, v2, v104, "#ContactStateManager makeRecommendations result: %s", v106, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v107);
    v111 = OUTLINED_FUNCTION_2_9();
    MEMORY[0x26D5FEA80](v111);
    v112 = v106;
    v103 = v230;
    v98 = v221;
    MEMORY[0x26D5FEA80](v112, -1, -1);
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v194[1] = 0;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_2675E096C(v232);
    v232 = v193;
  }

  v115 = 0;
  v229 = *(v98 + 16);
  v116 = v232;
  *v217 = v232;
  v211 = v54 + 8;
  v227 = (v218 + 32);
  v228 = (v218 + 16);
  v226 = (v218 + 88);
  LODWORD(v225) = *MEMORY[0x277D56080];
  LODWORD(v224) = *MEMORY[0x277D56068];
  LODWORD(v208) = *MEMORY[0x277D56070];
  v199 = *MEMORY[0x277D56078];
  v203 = (v231 + 2);
  v210 = (v218 + 96);
  v207 = (v198 + 32);
  v206 = v198 + 8;
  v231 = (v218 + 8);
  v213 = v116 + 32;
  *&v114 = 136315138;
  v195 = v114;
  v117 = v205;
  v118 = v202;
  while (2)
  {
    if (v229 == v115)
    {

      return v200;
    }

    if (v115 >= *(v98 + 16))
    {
      goto LABEL_62;
    }

    OUTLINED_FUNCTION_4_5();
    sub_2675F0460(v98 + v119 + *(v120 + 72) * v115, v223);
    v121 = *(v103 + 16);
    if (v115 != v121)
    {
      if (v115 >= v121)
      {
        goto LABEL_63;
      }

      v122 = v218;
      v123 = v103 + ((*(v122 + 80) + 32) & ~*(v122 + 80)) + *(v218 + 72) * v115;
      v124 = *(v216 + 48);
      v125 = v54;
      v126 = v215;
      sub_2675F03FC(v223, v215);
      v127 = *(v122 + 16);
      v128 = v123;
      v2 = v228;
      v127(v126 + v124, v128, v117);
      sub_2675F03FC(v126, v125);
      v129 = v126 + v124;
      v130 = v222;
      (*(v122 + 32))(v222, v129, v117);
      v127(v118, v130, v117);
      v131 = (*(v122 + 88))(v118, v117);
      if (v131 == v225 || v131 == v224)
      {
        v133 = OUTLINED_FUNCTION_8_5();
        v134(v133);
        v135 = v214;
        v136 = v209;
        (*v207)(v214, v118, v209);
        OUTLINED_FUNCTION_7_5();
        v137 = v232;
        if (!v138)
        {
          v160 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC1A8, &qword_2676CDF38);
          v161 = swift_allocBox();
          v163 = v162;
          v164 = *(v160 + 48);
          OUTLINED_FUNCTION_9_2();
          v165 = v220;
          v167(v163, v220 + v166, v212);
          sub_2675EDF8C();
          OUTLINED_FUNCTION_11_4();
          v168 = v136;
          v54 = v165;
          v169(v214, v168);
          *(v163 + v164) = v160;
          goto LABEL_50;
        }

        sub_2675EDF8C();
        OUTLINED_FUNCTION_11_4();
        v139(v135, v136);
      }

      else
      {
        if (v131 == v208)
        {
          v140 = OUTLINED_FUNCTION_8_5();
          v141(v140);
          v142 = *v118;
          OUTLINED_FUNCTION_7_5();
          v54 = v220;
          v137 = v232;
          if (v143)
          {
            v144 = swift_allocObject();
            *(v144 + 16) = v142;
            v2 = (v144 | 0x8000000000000000);
LABEL_55:

            v185 = *v54;

            (*v231)(v222, v117);
            if ((v185 & 0x8000000000000000) != 0)
            {
              goto LABEL_64;
            }

            if (v185 >= *(v137 + 16))
            {
              goto LABEL_65;
            }

            v186 = *(v213 + 8 * v185);
            *(v213 + 8 * v185) = v2;

            *v217 = v137;
            sub_2675F04C4(v54);
            ++v115;
            v98 = v221;
            v103 = v230;
            continue;
          }

          v170 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC1A8, &qword_2676CDF38);
          v161 = swift_allocBox();
          v172 = v171;
          v173 = *(v170 + 48);
          OUTLINED_FUNCTION_9_2();
          v175(v172, v54 + v174, v212);
          v176 = swift_allocObject();
          *(v176 + 16) = v142;
          *(v172 + v173) = v176 | 0x8000000000000000;
LABEL_50:
          v137 = v232;
          v2 = v161;
          goto LABEL_55;
        }

        v145 = v220;
        v146 = v204;
        if (v131 != v199)
        {

          v233 = 0;
          v234 = 0xE000000000000000;
          sub_2676CC3FC();
          MEMORY[0x26D5FDD00](0xD000000000000035, 0x80000002676D64B0);
          sub_2675F0564();
          v187 = v222;
          v188 = sub_2676CC56C();
          MEMORY[0x26D5FDD00](v188);

          v189 = v233;
          v190 = v234;
          sub_2675F05C8();
          swift_allocError();
          *v191 = v189;
          *(v191 + 8) = v190;
          *(v191 + 16) = 0;
          swift_willThrow();
          v192 = *v231;
          (*v231)(v187, v117);
          sub_2675F04C4(v145);
          v192(v118, v117);
          return v200;
        }

        v147 = v235;
        v148 = (v220 + *(v235 + 24));
        v149 = v148[1];
        if (!v149)
        {
          v177 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC1A8, &qword_2676CDF38);
          v178 = swift_allocBox();
          v197 = v179;
          v198 = *(v177 + 48);
          v180 = *(v147 + 20);
          v181 = *v203;
          v182 = v212;
          (*v203)(v179, v145 + v180, v212);
          v196 = swift_allocBox();
          v181(v183, v145 + v180, v182);
          *(v197 + v198) = v196 | 0x2000000000000000;
          v2 = v178;
          v54 = v145;
          v137 = v232;
          goto LABEL_55;
        }

        v198 = *v148;
        sub_2675F0460(v220, v204);

        v150 = sub_2676CBE2C();
        v151 = sub_2676CC23C();
        if (os_log_type_enabled(v150, v151))
        {
          v152 = swift_slowAlloc();
          v153 = swift_slowAlloc();
          v233 = v153;
          *v152 = v195;
          v154 = *(v147 + 20);
          sub_2675F061C();
          v155 = sub_2676CC56C();
          v157 = v156;
          sub_2675F04C4(v146);
          v158 = sub_2676B0B84(v155, v157, &v233);

          *(v152 + 4) = v158;
          _os_log_impl(&dword_2675D4000, v150, v151, "ContactResolver unable to resolve relationship-based query, will require pushing unset relationship flow; query: %s", v152, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v153);
          v159 = OUTLINED_FUNCTION_2_9();
          MEMORY[0x26D5FEA80](v159);
          MEMORY[0x26D5FEA80](v152, -1, -1);
        }

        else
        {

          sub_2675F04C4(v146);
        }

        v117 = v205;
        v137 = v232;
        v184 = swift_allocObject();
        *(v184 + 16) = v198;
        *(v184 + 24) = v149;
        v2 = (v184 | 0xE000000000000000);
        v118 = v202;
      }

      v54 = v220;
      goto LABEL_55;
    }

    break;
  }

  sub_2675F04C4(v223);
  return v200;
}

uint64_t sub_2675F0394(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC1C0, &qword_2676CE0B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2675F03FC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UnresolvedContactInfo();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2675F0460(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UnresolvedContactInfo();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2675F04C4(uint64_t a1)
{
  v2 = type metadata accessor for UnresolvedContactInfo();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_2675F0564()
{
  result = qword_2801CC1C8;
  if (!qword_2801CC1C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2801CC1B0, &qword_2676CE0A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2801CC1C8);
  }

  return result;
}

unint64_t sub_2675F05C8()
{
  result = qword_2801CC1D0;
  if (!qword_2801CC1D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2801CC1D0);
  }

  return result;
}

unint64_t sub_2675F061C()
{
  result = qword_2801CC1D8;
  if (!qword_2801CC1D8)
  {
    sub_2676CAA9C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2801CC1D8);
  }

  return result;
}

uint64_t sub_2675F070C()
{
  OUTLINED_FUNCTION_3_0();
  v1[4] = v2;
  v1[5] = v0;
  v1[2] = v3;
  v1[3] = v4;
  v5 = sub_2676CAC2C();
  v1[6] = v5;
  OUTLINED_FUNCTION_1_0(v5);
  v1[7] = v6;
  v8 = *(v7 + 64);
  v1[8] = OUTLINED_FUNCTION_2_0();
  v9 = sub_2676CAC3C();
  v1[9] = v9;
  OUTLINED_FUNCTION_1_0(v9);
  v1[10] = v10;
  v12 = *(v11 + 64);
  v1[11] = OUTLINED_FUNCTION_2_0();
  v13 = sub_2676CAC5C();
  v1[12] = v13;
  OUTLINED_FUNCTION_1_0(v13);
  v1[13] = v14;
  v16 = *(v15 + 64);
  v1[14] = OUTLINED_FUNCTION_2_0();
  v17 = sub_2676C911C();
  v1[15] = v17;
  OUTLINED_FUNCTION_1_0(v17);
  v1[16] = v18;
  v20 = *(v19 + 64);
  v1[17] = OUTLINED_FUNCTION_2_0();
  v21 = sub_2676CAC9C();
  v1[18] = v21;
  OUTLINED_FUNCTION_1_0(v21);
  v1[19] = v22;
  v24 = *(v23 + 64) + 15;
  v1[20] = swift_task_alloc();
  v25 = swift_task_alloc();
  v1[21] = v25;
  swift_task_alloc();
  OUTLINED_FUNCTION_15_3();
  v1[22] = v26;
  *v26 = v27;
  v26[1] = sub_2675F0934;

  return sub_2675F0D64(v25);
}

uint64_t sub_2675F0934()
{
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_9_3();
  OUTLINED_FUNCTION_8_6();
  *v3 = v2;
  v5 = *(v4 + 176);
  v6 = *v1;
  OUTLINED_FUNCTION_0_1();
  *v7 = v6;
  *(v8 + 184) = v0;

  OUTLINED_FUNCTION_21();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_2675F0A30()
{
  v1 = v0[20];
  v2 = v0[19];
  v17 = v0[18];
  v18 = v0[21];
  v3 = v0[16];
  v4 = v0[17];
  v5 = v0[15];
  v24 = v0[14];
  v27 = v0[23];
  v28 = v0[13];
  v29 = v0[12];
  v6 = v0[10];
  v19 = v0[11];
  v20 = v0[9];
  v7 = v0[7];
  v21 = v0[8];
  v22 = v0[6];
  v8 = v0[4];
  v25 = v0[3];
  v26 = v0[5];
  v23 = v0[2];
  sub_2676CACBC();
  (*(v3 + 16))(v4, v8, v5);
  (*(v2 + 16))(v1, v18, v17);
  sub_2675F11A4(v4, v1);
  (*(v6 + 104))(v19, *MEMORY[0x277D56138], v20);
  (*(v7 + 104))(v21, *MEMORY[0x277D56120], v22);
  sub_2676CAEDC();
  sub_2676CAEFC();
  sub_2675F2DE8(&qword_2801CC218, MEMORY[0x277D563F8]);
  sub_2676CBEFC();
  sub_2676CAC4C();
  sub_2676CAB7C();

  (*(v28 + 8))(v24, v29);
  (*(v2 + 8))(v18, v17);
  v10 = v0[20];
  v9 = v0[21];
  v11 = v0[17];
  v12 = v0[14];
  v13 = v0[11];
  v14 = v0[8];

  OUTLINED_FUNCTION_15_0();

  return v15();
}

uint64_t sub_2675F0CC0()
{
  OUTLINED_FUNCTION_16_2();
  v1 = v0[23];
  v3 = v0[20];
  v2 = v0[21];
  v4 = v0[17];
  v5 = v0[14];
  v6 = v0[11];
  v7 = v0[8];

  OUTLINED_FUNCTION_15_0();

  return v8();
}

uint64_t sub_2675F0D64(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC220, &qword_2676CE128) - 8) + 64) + 15;
  v2[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2675F0E00, 0, 0);
}

uint64_t sub_2675F0E00()
{
  OUTLINED_FUNCTION_3_0();
  sub_2676C977C();
  swift_task_alloc();
  OUTLINED_FUNCTION_15_3();
  *(v0 + 80) = v1;
  *v1 = v2;
  v1[1] = sub_2675F0E98;
  v3 = *(v0 + 64);

  return sub_2675F28E0(v0 + 16);
}

uint64_t sub_2675F0E98(uint64_t a1, uint64_t a2, char a3)
{
  OUTLINED_FUNCTION_9_3();
  v7 = v6;
  OUTLINED_FUNCTION_8_6();
  *v8 = v7;
  v10 = *(v9 + 80);
  *v8 = *v4;
  *(v7 + 88) = v11;
  *(v7 + 96) = v3;

  if (!v3)
  {
    *(v7 + 104) = a3;
  }

  __swift_destroy_boxed_opaque_existential_1((v7 + 16));
  OUTLINED_FUNCTION_21();

  return MEMORY[0x2822009F8](v12, v13, v14);
}

uint64_t sub_2675F0FC4()
{
  OUTLINED_FUNCTION_16_2();
  if (*(v0 + 104))
  {
    v1 = *(v0 + 72);
    v2 = *(v0 + 56);
    v3 = sub_2676CAC9C();
    __swift_storeEnumTagSinglePayload(v1, 1, 1, v3);
    (*(*(v3 - 8) + 104))(v2, *MEMORY[0x277D56150], v3);
  }

  else
  {
    v4 = *(v0 + 88);
    v5 = *(v0 + 72);
    v6 = *(v0 + 56);
    v7 = sub_2676CAC9C();
    v8 = *(v7 - 8);
    v9 = MEMORY[0x277D56158];
    if (v4 >= 0.0)
    {
      v9 = MEMORY[0x277D56150];
    }

    (*(*(v7 - 8) + 104))(v5, *v9, v7);
    __swift_storeEnumTagSinglePayload(v5, 0, 1, v7);
    (*(v8 + 32))(v6, v5, v7);
  }

  v10 = *(v0 + 72);

  OUTLINED_FUNCTION_15_0();

  return v11();
}

uint64_t sub_2675F1148()
{
  OUTLINED_FUNCTION_3_0();
  v1 = *(v0 + 72);

  OUTLINED_FUNCTION_15_0();
  v3 = *(v0 + 96);

  return v2();
}

uint64_t sub_2675F11A4(uint64_t a1, uint64_t a2)
{
  v52 = a2;
  v3 = sub_2676C90CC();
  v4 = OUTLINED_FUNCTION_4_1(v3);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_3_2();
  v51 = v8 - v7;
  v9 = sub_2676C913C();
  v10 = OUTLINED_FUNCTION_4_1(v9);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_3_2();
  v50 = v14 - v13;
  v49 = sub_2676CAC9C();
  v15 = OUTLINED_FUNCTION_3(v49);
  v17 = v16;
  v45 = v16;
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_3_2();
  v48 = v21 - v20;
  v22 = sub_2676C915C();
  v23 = OUTLINED_FUNCTION_4_1(v22);
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_3_2();
  v26 = sub_2676C911C();
  v27 = OUTLINED_FUNCTION_3(v26);
  v29 = v28;
  v47 = v28;
  v31 = *(v30 + 64);
  v32 = MEMORY[0x28223BE20](v27);
  v34 = &v44 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = MEMORY[0x28223BE20](v32);
  v37 = &v44 - v36;
  MEMORY[0x28223BE20](v35);
  v38 = *(v29 + 16);
  v46 = a1;
  v38(&v44 - v39, a1, v26);
  v38(v37, a1, v26);
  v38(v34, a1, v26);
  sub_2676C914C();
  v40 = v49;
  v41 = v52;
  (*(v17 + 16))(v48, v52, v49);
  sub_2676C912C();
  sub_2676C90AC();
  v42 = sub_2676CACAC();
  (*(v45 + 8))(v41, v40);
  (*(v47 + 8))(v46, v26);
  return v42;
}

uint64_t sub_2675F14B4()
{
  OUTLINED_FUNCTION_3_0();
  v1[9] = v2;
  v1[10] = v0;
  v1[8] = v3;
  v4 = sub_2676C915C();
  v1[11] = v4;
  OUTLINED_FUNCTION_1_0(v4);
  v1[12] = v5;
  v7 = *(v6 + 64);
  v1[13] = OUTLINED_FUNCTION_2_0();
  v8 = sub_2676C913C();
  v1[14] = v8;
  OUTLINED_FUNCTION_1_0(v8);
  v1[15] = v9;
  v11 = *(v10 + 64);
  v1[16] = OUTLINED_FUNCTION_2_0();
  v12 = sub_2676C911C();
  v1[17] = v12;
  OUTLINED_FUNCTION_1_0(v12);
  v1[18] = v13;
  v15 = *(v14 + 64);
  v1[19] = OUTLINED_FUNCTION_2_0();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC1E0, &unk_2676CE0F0);
  v1[20] = v16;
  OUTLINED_FUNCTION_1_0(v16);
  v1[21] = v17;
  v19 = *(v18 + 64) + 15;
  v1[22] = swift_task_alloc();
  v1[23] = swift_task_alloc();
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC1E8, &qword_2676CF570);
  OUTLINED_FUNCTION_4_1(v20);
  v22 = *(v21 + 64);
  v1[24] = OUTLINED_FUNCTION_2_0();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC1F0, &unk_2676CE100);
  v1[25] = v23;
  OUTLINED_FUNCTION_1_0(v23);
  v1[26] = v24;
  v26 = *(v25 + 64) + 15;
  v1[27] = swift_task_alloc();
  v1[28] = swift_task_alloc();
  v1[29] = swift_task_alloc();
  OUTLINED_FUNCTION_21();

  return MEMORY[0x2822009F8](v27, v28, v29);
}

uint64_t sub_2675F1708()
{
  v53 = v0;
  v1 = v0[24];
  v2 = v0[25];
  sub_2675F2C3C(v0[9], v1);
  if (__swift_getEnumTagSinglePayload(v1, 1, v2) == 1)
  {
    sub_2675F2CAC(v0[24]);
    if (qword_2801CBAA0 != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v3 = sub_2676CBE4C();
    __swift_project_value_buffer(v3, qword_2801CDC90);
    v4 = sub_2676CBE2C();
    v5 = sub_2676CC23C();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_2675D4000, v4, v5, "#DateTimeResolver no date time to resolve, returning nil", v6, 2u);
      OUTLINED_FUNCTION_2_5();
    }

    v7 = v0[8];

    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC1F8, &qword_2676CEBA0);
    __swift_storeEnumTagSinglePayload(v7, 1, 1, v8);
    OUTLINED_FUNCTION_1_9();

    OUTLINED_FUNCTION_15_0();
    OUTLINED_FUNCTION_18_2();

    __asm { BRAA            X1, X16 }
  }

  (*(v0[26] + 32))(v0[29], v0[24], v0[25]);
  if (qword_2801CBAA0 != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v11 = v0[28];
  v12 = v0[29];
  v13 = v0[25];
  v14 = v0[26];
  v15 = sub_2676CBE4C();
  v0[30] = __swift_project_value_buffer(v15, qword_2801CDC90);
  v16 = *(v14 + 16);
  v16(v11, v12, v13);
  v17 = sub_2676CBE2C();
  v18 = sub_2676CC23C();
  v19 = os_log_type_enabled(v17, v18);
  v20 = v0[28];
  if (v19)
  {
    v21 = v0[26];
    v22 = v0[27];
    v23 = v0[25];
    v24 = swift_slowAlloc();
    v51 = swift_slowAlloc();
    v52 = v51;
    *v24 = 136315138;
    v16(v22, v20, v23);
    v25 = sub_2676CBFBC();
    v27 = v26;
    v28 = *(v21 + 8);
    v28(v20, v23);
    v29 = sub_2676B0B84(v25, v27, &v52);

    *(v24 + 4) = v29;
    _os_log_impl(&dword_2675D4000, v17, v18, "#DateTimeResolver date time input: %s", v24, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v51);
    OUTLINED_FUNCTION_2_5();
    OUTLINED_FUNCTION_2_5();
  }

  else
  {
    v30 = v0[25];
    v31 = v0[26];

    v28 = *(v31 + 8);
    v28(v20, v30);
  }

  v0[31] = v28;
  v32 = v0[29];
  v33 = sub_2676CA81C();
  v0[32] = v33;

  v34 = sub_2676CBE2C();
  v35 = sub_2676CC23C();

  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v52 = v37;
    *v36 = 136315138;
    v0[7] = v33;
    sub_2676CAEFC();
    OUTLINED_FUNCTION_2_10();
    sub_2675F2DE8(v38, v39);
    v40 = sub_2676CC56C();
    v42 = sub_2676B0B84(v40, v41, &v52);

    *(v36 + 4) = v42;
    _os_log_impl(&dword_2675D4000, v34, v35, "#DateTimeResolver date time query: %s", v36, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v37);
    OUTLINED_FUNCTION_2_5();
    OUTLINED_FUNCTION_2_5();
  }

  v43 = v0[19];
  sub_2676C910C();
  swift_task_alloc();
  OUTLINED_FUNCTION_15_3();
  v0[33] = v44;
  *v44 = v45;
  v44[1] = sub_2675F1BF0;
  v46 = v0[23];
  v47 = v0[19];
  v48 = v0[10];
  OUTLINED_FUNCTION_18_2();

  return sub_2675F070C();
}

uint64_t sub_2675F1BF0()
{
  OUTLINED_FUNCTION_9_3();
  OUTLINED_FUNCTION_8_6();
  *v3 = v2;
  v5 = v4[33];
  v6 = v4[19];
  v7 = v4[18];
  v8 = v4[17];
  v9 = *v1;
  OUTLINED_FUNCTION_0_1();
  *v10 = v9;
  *(v11 + 272) = v0;

  (*(v7 + 8))(v6, v8);
  OUTLINED_FUNCTION_21();

  return MEMORY[0x2822009F8](v12, v13, v14);
}

void sub_2675F1D4C()
{
  v1 = v0[30];
  (*(v0[21] + 16))(v0[22], v0[23], v0[20]);
  v2 = sub_2676CBE2C();
  v3 = sub_2676CC23C();
  v4 = os_log_type_enabled(v2, v3);
  v6 = v0[21];
  v5 = v0[22];
  v7 = v0[20];
  if (v4)
  {
    v8 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v29 = v27;
    *v8 = 136315138;
    sub_2675F2D14();
    v9 = sub_2676CC56C();
    v11 = v10;
    v12 = OUTLINED_FUNCTION_10_5();
    v13(v12);
    v14 = sub_2676B0B84(v9, v11, &v29);

    *(v8 + 4) = v14;
    _os_log_impl(&dword_2675D4000, v2, v3, "#DateTimeResolver date time recommendation: %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v27);
    OUTLINED_FUNCTION_2_5();
    OUTLINED_FUNCTION_2_5();
  }

  else
  {

    v15 = OUTLINED_FUNCTION_10_5();
    v16(v15);
  }

  v18 = v0[31];
  v17 = v0[32];
  v19 = v0[29];
  v20 = v0[25];
  v21 = v0[26];
  v22 = v0[23];
  v23 = v0[20];
  v24 = v0[10];
  sub_2675F2278(v22, v0[8]);

  v28(v22, v23);
  v18(v19, v20);
  OUTLINED_FUNCTION_1_9();

  OUTLINED_FUNCTION_15_0();
  OUTLINED_FUNCTION_18_2();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_2675F1F64()
{
  v39 = v0;
  v1 = v0[34];
  v2 = v0[32];
  v3 = v0[30];

  v4 = v1;
  v5 = sub_2676CBE2C();
  v6 = sub_2676CC24C();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[34];
    v8 = v0[32];
    v9 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    *v9 = 136315394;
    swift_getErrorValue();
    v11 = v0[2];
    v10 = v0[3];
    v12 = v0[4];
    v13 = sub_2676CC5FC();
    v15 = sub_2676B0B84(v13, v14, &v38);

    *(v9 + 4) = v15;
    *(v9 + 12) = 2080;
    v0[6] = v8;
    sub_2676CAEFC();
    OUTLINED_FUNCTION_2_10();
    sub_2675F2DE8(v16, v17);
    v18 = sub_2676CC56C();
    v20 = sub_2676B0B84(v18, v19, &v38);

    *(v9 + 14) = v20;
    _os_log_impl(&dword_2675D4000, v5, v6, "#DateTimeResolver makeRecommendation threw error: %s, returning %s as tuple", v9, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_2_5();
    OUTLINED_FUNCTION_2_5();
  }

  v21 = v0[32];
  v36 = v0[29];
  v37 = v0[31];
  v33 = v0[34];
  v34 = v0[26];
  v35 = v0[25];
  v22 = v0[15];
  v23 = v0[16];
  v25 = v0[13];
  v24 = v0[14];
  v26 = v0[11];
  v27 = v0[12];
  v28 = v0[8];
  sub_2676C912C();
  sub_2676C914C();
  v29 = sub_2676CAEEC();
  (*(v27 + 8))(v25, v26);
  (*(v22 + 8))(v23, v24);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC1F8, &qword_2676CEBA0);
  sub_2675F27AC(v28, v28 + *(v30 + 48));

  v37(v36, v35);
  __swift_storeEnumTagSinglePayload(v28, 0, 1, v30);
  OUTLINED_FUNCTION_1_9();

  OUTLINED_FUNCTION_15_0();

  return v31();
}

uint64_t sub_2675F2278@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v38 = a2;
  v3 = sub_2676C915C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2676C913C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC1E0, &unk_2676CE0F0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = (&v37 - v16);
  (*(v14 + 16))(&v37 - v16, a1, v13);
  v18 = (*(v14 + 88))(v17, v13);
  if (v18 == *MEMORY[0x277D56080])
  {
    (*(v14 + 96))(v17, v13);
    v19 = *v17;
    sub_2676C912C();
    sub_2676C914C();
    v20 = sub_2676CAEEC();
    (*(v4 + 8))(v7, v3);
    (*(v9 + 8))(v12, v8);
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC1F8, &qword_2676CEBA0);
    v22 = v38;
    sub_2675F27AC(v38, v38 + *(v21 + 48));

    v23 = v22;
    goto LABEL_12;
  }

  if (v18 == *MEMORY[0x277D56068])
  {
    (*(v14 + 96))(v17, v13);
    v24 = *v17;
    sub_2676C912C();
    sub_2676C914C();
    v25 = sub_2676CAEEC();
    (*(v4 + 8))(v7, v3);
    (*(v9 + 8))(v12, v8);
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC1F8, &qword_2676CEBA0);
    v26 = v38;
    sub_2675F27AC(v38, v38 + *(v21 + 48));

    v23 = v26;
    goto LABEL_12;
  }

  if (v18 == *MEMORY[0x277D56070])
  {
    (*(v14 + 96))(v17, v13);
    v27 = *v17;
    if (*v17 >> 62)
    {
      if (v27 < 0)
      {
        v36 = *v17;
      }

      v28 = sub_2676CC4EC();
    }

    else
    {
      v28 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v29 = v38;
    if (!v28)
    {

      v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC1F8, &qword_2676CEBA0);
      v23 = v29;
      v32 = 1;
      return __swift_storeEnumTagSinglePayload(v23, v32, 1, v33);
    }

    sub_267692C1C(0, (v27 & 0xC000000000000001) == 0, v27);
    if ((v27 & 0xC000000000000001) != 0)
    {
      MEMORY[0x26D5FE0E0](0, v27);
    }

    else
    {
      v30 = *(v27 + 32);
    }

    sub_2676C912C();
    sub_2676C914C();
    v31 = sub_2676CAEEC();

    (*(v4 + 8))(v7, v3);
    (*(v9 + 8))(v12, v8);
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC1F8, &qword_2676CEBA0);
    sub_2675F27AC(v29, v29 + *(v21 + 48));

    v23 = v29;
LABEL_12:
    v32 = 0;
    v33 = v21;
    return __swift_storeEnumTagSinglePayload(v23, v32, 1, v33);
  }

  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC1F8, &qword_2676CEBA0);
  __swift_storeEnumTagSinglePayload(v38, 1, 1, v35);
  return (*(v14 + 8))(v17, v13);
}

uint64_t sub_2675F27AC(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC210, &qword_2676CEDC0);
  v6 = OUTLINED_FUNCTION_4_1(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v20 - v9;
  v11 = [v2 startDate];
  if (v11)
  {
    v12 = v11;
    sub_2676C909C();

    v13 = sub_2676C90CC();
    v14 = 0;
  }

  else
  {
    v13 = sub_2676C90CC();
    v14 = 1;
  }

  v15 = 1;
  __swift_storeEnumTagSinglePayload(v10, v14, 1, v13);
  sub_2675F2D78(v10, a1);
  v16 = [v2 endDate];
  if (v16)
  {
    v17 = v16;
    sub_2676C909C();

    v15 = 0;
  }

  v18 = sub_2676C90CC();
  return __swift_storeEnumTagSinglePayload(a2, v15, 1, v18);
}

uint64_t sub_2675F2900()
{
  OUTLINED_FUNCTION_16_2();
  v1 = v0[2];
  v3 = v1[3];
  v2 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v3);
  v4 = [objc_allocWithZone(MEMORY[0x277D47310]) init];
  v0[3] = v4;
  v5 = *(MEMORY[0x277D5BFB8] + 4);
  v6 = swift_task_alloc();
  v0[4] = v6;
  v7 = sub_2675F2E30();
  *v6 = v0;
  v6[1] = sub_2675F29F0;

  return MEMORY[0x2821BB6A0](v4, v3, v7, v2);
}

uint64_t sub_2675F29F0()
{
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_9_3();
  v3 = v2;
  OUTLINED_FUNCTION_8_6();
  *v4 = v3;
  v6 = *(v5 + 32);
  *v4 = *v1;
  *(v3 + 40) = v7;
  *(v3 + 48) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_21();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_2675F2AFC()
{
  OUTLINED_FUNCTION_16_2();
  [*(v0 + 40) latitude];
  if (v1 == 0.0 && ([*(v0 + 40) longitude], v2 == 0.0))
  {

    v3 = 0;
    v4 = 0;
    v5 = 1;
  }

  else
  {
    v6 = *(v0 + 40);
    [v6 latitude];
    v8 = v7;
    [v6 longitude];
    v10 = v9;

    v5 = 0;
    v3 = v8;
    v4 = v10;
  }

  v11 = *(v0 + 8);

  return v11(v3, v4, v5);
}

uint64_t sub_2675F2BE0()
{
  OUTLINED_FUNCTION_3_0();

  OUTLINED_FUNCTION_15_0();
  v2 = *(v0 + 48);

  return v1();
}

uint64_t sub_2675F2C3C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC1E8, &qword_2676CF570);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2675F2CAC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC1E8, &qword_2676CF570);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_2675F2D14()
{
  result = qword_2801CC208;
  if (!qword_2801CC208)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2801CC1E0, &unk_2676CE0F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2801CC208);
  }

  return result;
}

uint64_t sub_2675F2D78(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC210, &qword_2676CEDC0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2675F2DE8(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_2675F2E30()
{
  result = qword_2801CC228;
  if (!qword_2801CC228)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2801CC228);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_1_9()
{
  v3 = v0[28];
  v2 = v0[29];
  v4 = v0[27];
  v6 = v0[23];
  v5 = v0[24];
  v7 = v0[22];
  v8 = v0[19];
  v9 = v0[16];
  v10 = v0[13];
}

uint64_t OUTLINED_FUNCTION_10_5()
{
  result = v0;
  v3 = *(v1 + 8);
  return result;
}

uint64_t sub_2675F2F94()
{
  v1 = *(v0 + 16);
  v2 = type metadata accessor for DeleteMessage(0);
  v3 = (v1 + *(v2 + 24));
  v4 = v3[3];
  v5 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v4);
  v6 = *(v2 + 20);
  v7 = *(v5 + 40);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v0 + 24) = v9;
  *v9 = v0;
  v9[1] = sub_2675F30E4;

  return v11(v1 + v6, v4, v5);
}

uint64_t sub_2675F30E4(char a1)
{
  v4 = *(*v2 + 24);
  v8 = *v2;

  v5 = *(v8 + 8);
  if (v1)
  {
    v6 = 0;
  }

  else
  {
    v6 = a1 & 1;
  }

  return v5(v6);
}

uint64_t sub_2675F31F4(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_2675F3284;

  return sub_2675F2F74();
}

uint64_t sub_2675F3284(char a1)
{
  v4 = *v2;
  v5 = *(*v2 + 24);
  v6 = *v2;

  if (!v1)
  {
    **(v4 + 16) = a1 & 1;
  }

  v7 = *(v6 + 8);

  return v7();
}

uint64_t sub_2675F3420(uint64_t a1)
{
  v3 = sub_2676CBBFC();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v1 + 48);
  v9 = *(v1 + 52);
  swift_allocObject();
  (*(v4 + 16))(v7, a1, v3);
  v10 = sub_2676CBC5C();
  (*(v4 + 8))(a1, v3);
  return v10;
}

uint64_t sub_2675F3528()
{
  v0 = sub_2676CBC4C();

  return MEMORY[0x2821FE8D8](v0, 16, 7);
}

uint64_t sub_2675F3624(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28213DE00](a1, a2, WitnessTable);
}

uint64_t sub_2675F3684(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28213DB58](a1, WitnessTable);
}

uint64_t sub_2675F36FC(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28213DDE8](a1, a2, WitnessTable);
}

uint64_t sub_2675F375C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2676CBC1C();
  *a1 = result;
  return result;
}

uint64_t sub_2675F3838(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for MailMessageEntity(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2675F39FC()
{
  result = sub_2676C8BFC();
  if (v1 <= 0x3F)
  {
    result = sub_2675F3A90();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_2675F3A90()
{
  result = qword_2801CC298;
  if (!qword_2801CC298)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_2801CC298);
  }

  return result;
}

uint64_t sub_2675F3B14()
{
  OUTLINED_FUNCTION_3_0();
  v0[2] = v1;
  v2 = sub_2676C90FC();
  v0[3] = v2;
  OUTLINED_FUNCTION_1_0(v2);
  v0[4] = v3;
  v5 = *(v4 + 64);
  v0[5] = OUTLINED_FUNCTION_2_0();
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_2801CCB20, &qword_2676CDA80) - 8) + 64);
  v0[6] = OUTLINED_FUNCTION_2_0();
  v7 = *(*(sub_2676CAF8C() - 8) + 64);
  v0[7] = OUTLINED_FUNCTION_2_0();
  v8 = sub_2676C99CC();
  v0[8] = v8;
  OUTLINED_FUNCTION_1_0(v8);
  v0[9] = v9;
  v11 = *(v10 + 64) + 15;
  v0[10] = swift_task_alloc();
  v0[11] = swift_task_alloc();
  v12 = sub_2676C9DDC();
  v0[12] = v12;
  OUTLINED_FUNCTION_1_0(v12);
  v0[13] = v13;
  v15 = *(v14 + 64);
  v0[14] = OUTLINED_FUNCTION_2_0();
  v16 = *(*(sub_2676CB48C() - 8) + 64);
  v0[15] = OUTLINED_FUNCTION_2_0();

  return MEMORY[0x2822009F8](sub_2675F3CE4, 0, 0);
}

uint64_t sub_2675F3CE4()
{
  OUTLINED_FUNCTION_3_0();
  v1 = v0[15];
  type metadata accessor for MailCommonCATsSimple();
  sub_2676CB47C();
  v0[16] = sub_2676CB42C();
  v2 = swift_task_alloc();
  v0[17] = v2;
  *v2 = v0;
  v2[1] = sub_2675F3D9C;

  return sub_26760D3F8();
}

uint64_t sub_2675F3D9C()
{
  OUTLINED_FUNCTION_3_0();
  v2 = *v1;
  v3 = *(*v1 + 136);
  v8 = *v1;
  v2[18] = v4;
  v2[19] = v0;

  if (v0)
  {
    v5 = sub_2675F440C;
  }

  else
  {
    v6 = v2[16];

    v5 = sub_2675F3EB4;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

void sub_2675F3EB4()
{
  v1 = [*(v0 + 144) dialog];
  sub_2675E16F4();
  v2 = sub_2676CC0FC();

  v3 = sub_267630B8C(v2);
  for (i = 0; v3 != i; ++i)
  {
    if ((v2 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x26D5FE0E0](i, v2);
    }

    else
    {
      if (i >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_13;
      }

      v5 = *(v2 + 8 * i + 32);
    }

    v6 = v5;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_13:
      __break(1u);
      return;
    }

    [v5 setSpokenOnly_];
  }

  v7 = *(v0 + 112);
  v9 = *(v0 + 80);
  v8 = *(v0 + 88);
  v10 = *(v0 + 64);
  v11 = *(v0 + 72);
  v12 = *(v0 + 56);
  v25 = *(v0 + 48);
  v13 = *(v0 + 32);
  v14 = *(v0 + 40);
  v26 = *(v0 + 24);
  v28 = *(v0 + 144);

  sub_2676C997C();
  (*(v11 + 16))(v9, v8, v10);
  sub_2676C9D2C();
  sub_2676C9D6C();
  sub_26762D4C8(v12);
  sub_2676C9D3C();
  sub_2676C9D7C();
  sub_2676C9DBC();
  sub_2676C9DAC();
  v15 = sub_2676C9B3C();
  __swift_storeEnumTagSinglePayload(v25, 1, 1, v15);
  sub_2676C9D8C();
  sub_2676C9D9C();
  sub_2676C90EC();
  sub_2676C90DC();
  (*(v13 + 8))(v14, v26);
  sub_2676C9D5C();
  (*(v11 + 8))(v8, v10);
  v16 = sub_2676C9B9C();
  v17 = *(v16 + 48);
  v18 = *(v16 + 52);
  swift_allocObject();
  *(v0 + 160) = sub_2676C9B8C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC5A0, &qword_2676CD620);
  v19 = swift_allocObject();
  *(v0 + 168) = v19;
  *(v19 + 16) = xmmword_2676CD5C0;
  *(v19 + 32) = v28;
  v20 = *(MEMORY[0x277D5BD50] + 4);
  v27 = (*MEMORY[0x277D5BD50] + MEMORY[0x277D5BD50]);
  v21 = v28;
  v22 = swift_task_alloc();
  *(v0 + 176) = v22;
  *v22 = v0;
  v22[1] = sub_2675F41F4;
  v23 = *(v0 + 112);
  v24 = *(v0 + 16);

  v27(v24, v19, v23);
}

uint64_t sub_2675F41F4()
{
  OUTLINED_FUNCTION_3_0();
  v1 = *(*v0 + 176);
  v2 = *(*v0 + 168);
  v3 = *(*v0 + 160);
  v5 = *v0;

  return MEMORY[0x2822009F8](sub_2675F4324, 0, 0);
}

uint64_t sub_2675F4324()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 120);
  v3 = *(v0 + 96);
  v4 = *(v0 + 104);
  v6 = *(v0 + 80);
  v5 = *(v0 + 88);
  v8 = *(v0 + 48);
  v7 = *(v0 + 56);
  v9 = *(v0 + 40);

  (*(v4 + 8))(v1, v3);

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_2675F440C()
{
  v2 = v0[15];
  v1 = v0[16];
  v3 = v0[14];
  v5 = v0[10];
  v4 = v0[11];
  v7 = v0[6];
  v6 = v0[7];
  v8 = v0[5];

  v9 = v0[1];
  v10 = v0[19];

  return v9();
}

uint64_t sub_2675F44D0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2675E1604;

  return sub_2675F3B14();
}

uint64_t sub_2675F4588()
{
  v1 = *(v0[19] + 16);
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_2675F46A8;
  v2 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC2A0, &qword_2676CE500);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_2675F47A0;
  v0[13] = &block_descriptor;
  v0[14] = v2;
  [v1 fetchSiriKitAppIdentifiersWithNotificationPreviewRestrictionsWithCompletion_];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_2675F46A8()
{
  v1 = *v0;
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_2675F4788, 0, 0);
}

uint64_t sub_2675F47A0(uint64_t a1, uint64_t a2)
{
  v3 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a2)
  {
    v4 = sub_2676CC0FC();
  }

  else
  {
    v4 = 0;
  }

  return sub_2675F4804(v3, v4);
}

uint64_t sub_2675F4824()
{

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

uint64_t sub_2675F4898(uint64_t a1, uint64_t a2)
{
  if (sub_2676C995C() & 1) != 0 || (sub_2676C994C() & 1) != 0 || (sub_2676C996C())
  {
    return 1;
  }

  return MEMORY[0x2821BAB98](a1, a2);
}

uint64_t sub_2675F4940(_DWORD *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC168, &unk_2676CF510);
  OUTLINED_FUNCTION_4_1(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v5);
  v7 = &v89 - v6;
  v8 = sub_2676CAECC();
  v9 = OUTLINED_FUNCTION_3(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_1_7();
  v16 = v14 - v15;
  MEMORY[0x28223BE20](v17);
  v19 = &v89 - v18;
  v20 = OUTLINED_FUNCTION_16_3();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(v20, v21);
  OUTLINED_FUNCTION_3(v22);
  v24 = v23;
  v26 = *(v25 + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v27);
  v29 = (&v89 - v28);
  (*(v24 + 16))(&v89 - v28, a1, v22);
  v30 = *(v24 + 88);
  v31 = OUTLINED_FUNCTION_16_3();
  v33 = v32(v31);
  if (v33 != *MEMORY[0x277D5BF18])
  {
    if (v33 == *MEMORY[0x277D5BF28])
    {
      v45 = *(v24 + 96);
      v46 = OUTLINED_FUNCTION_16_3();
      v47(v46);
      v48 = *v29;
      if (qword_2801CBAA0 != -1)
      {
        OUTLINED_FUNCTION_0();
      }

      v49 = sub_2676CBE4C();
      __swift_project_value_buffer(v49, qword_2801CDC90);

      v50 = sub_2676CBE2C();
      v51 = sub_2676CC23C();

      if (os_log_type_enabled(v50, v51))
      {
        v52 = OUTLINED_FUNCTION_5_3();
        v53 = swift_slowAlloc();
        v92 = v53;
        *v52 = 136315138;
        v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CBF78, &qword_2676CDF00);
        v55 = MEMORY[0x26D5FDDD0](v48, v54);
        v57 = sub_2676B0B84(v55, v56, &v92);

        *(v52 + 4) = v57;
        _os_log_impl(&dword_2675D4000, v50, v51, "#ResolveRecipientsFlow received raw USO response: %s while attempting to disambiguate contacts", v52, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v53);
        OUTLINED_FUNCTION_2_5();
        OUTLINED_FUNCTION_2_5();
      }

      sub_267698E74(v48);

      v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CBF78, &qword_2676CDF00);
      if (__swift_getEnumTagSinglePayload(v7, 1, v58) == 1)
      {
        sub_2675ED6C0(v7, &qword_2801CC168, &unk_2676CF510);
      }

      else
      {
        swift_getKeyPath();
        OUTLINED_FUNCTION_2_11();
        sub_2675F668C(v64, v65);
        v60 = sub_2676CA89C();
        v67 = v66;

        OUTLINED_FUNCTION_14_2(v58);
        (*(v68 + 8))(v7, v58);
        if (v67)
        {
          return v60;
        }
      }

      v62 = sub_2676CBE2C();
      v69 = sub_2676CC24C();
      if (!OUTLINED_FUNCTION_5_5(v69))
      {
        goto LABEL_23;
      }
    }

    else
    {
      if (v33 != *MEMORY[0x277D5BF20])
      {
        if (qword_2801CBAA0 != -1)
        {
          OUTLINED_FUNCTION_0();
        }

        v76 = sub_2676CBE4C();
        OUTLINED_FUNCTION_24_2(v76, qword_2801CDC90);
        v77 = sub_2676CBE2C();
        v78 = sub_2676CC24C();
        if (OUTLINED_FUNCTION_5_5(v78))
        {
          v79 = OUTLINED_FUNCTION_17_3();
          OUTLINED_FUNCTION_9_4(v79);
          OUTLINED_FUNCTION_3_7();
          _os_log_impl(v80, v81, v82, v83, v84, 2u);
          OUTLINED_FUNCTION_4_6();
        }

        v85 = *(v24 + 8);
        v86 = OUTLINED_FUNCTION_16_3();
        v87(v86);
        return 0;
      }

      if (qword_2801CBAA0 != -1)
      {
        OUTLINED_FUNCTION_0();
      }

      v61 = sub_2676CBE4C();
      OUTLINED_FUNCTION_24_2(v61, qword_2801CDC90);
      v62 = sub_2676CBE2C();
      v63 = sub_2676CC24C();
      if (!OUTLINED_FUNCTION_5_5(v63))
      {
LABEL_23:

        return 0;
      }
    }

    v70 = OUTLINED_FUNCTION_17_3();
    OUTLINED_FUNCTION_9_4(v70);
    OUTLINED_FUNCTION_3_7();
    _os_log_impl(v71, v72, v73, v74, v75, 2u);
    OUTLINED_FUNCTION_4_6();
    goto LABEL_23;
  }

  v35 = *(v24 + 96);
  v34 = (v24 + 96);
  v36 = OUTLINED_FUNCTION_16_3();
  v37(v36);
  (*(v11 + 32))(v19, v29, v8);
  if (qword_2801CBAA0 != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v38 = sub_2676CBE4C();
  OUTLINED_FUNCTION_24_2(v38, qword_2801CDC90);
  (*(v11 + 16))(v16, v19, v8);
  v39 = sub_2676CBE2C();
  v40 = sub_2676CC23C();
  if (os_log_type_enabled(v39, v40))
  {
    v41 = OUTLINED_FUNCTION_5_3();
    v91 = OUTLINED_FUNCTION_15_4(v41);
    v92 = v91;
    *a1 = 136315138;
    sub_2675F668C(&qword_2801CC2B0, MEMORY[0x277D56178]);
    sub_2676CC56C();
    v42 = OUTLINED_FUNCTION_21_2();
    v34(v42);
    v43 = OUTLINED_FUNCTION_23_2();

    v44 = v90;
    *(v90 + 4) = v43;
    _os_log_impl(&dword_2675D4000, v39, v40, "#ResolveRecipientsFlow contact disambiguation confirmed with contact=%s", v44, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v91);
    OUTLINED_FUNCTION_2_5();
    OUTLINED_FUNCTION_2_5();
  }

  else
  {

    v59 = OUTLINED_FUNCTION_21_2();
    v34(v59);
  }

  v60 = sub_2676CADFC();
  (v34)(v19, v8);
  return v60;
}

uint64_t sub_2675F5064@<X0>(uint64_t *a1@<X8>)
{
  result = MEMORY[0x26D5FD400]();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_2675F5090(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return MEMORY[0x26D5FD410](v1, v2);
}

uint64_t sub_2675F50E4(_DWORD *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC168, &unk_2676CF510);
  OUTLINED_FUNCTION_4_1(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v5);
  v7 = &v127 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC068, &unk_2676D4E00);
  OUTLINED_FUNCTION_4_1(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v11);
  v13 = &v127 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC0D8, &qword_2676D1490);
  v15 = OUTLINED_FUNCTION_3(v14);
  v128 = v16;
  v129 = v15;
  v18 = *(v17 + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_27_1(v20, v127);
  v21 = sub_2676CAB1C();
  v22 = OUTLINED_FUNCTION_3(v21);
  v24 = v23;
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_1_7();
  v29 = v27 - v28;
  MEMORY[0x28223BE20](v30);
  v32 = &v127 - v31;
  v33 = OUTLINED_FUNCTION_22_2();
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(v33, v34);
  OUTLINED_FUNCTION_3(v35);
  v37 = v36;
  v39 = *(v38 + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v40);
  v42 = (&v127 - v41);
  (*(v37 + 16))(&v127 - v41, a1, v35);
  v43 = *(v37 + 88);
  v44 = OUTLINED_FUNCTION_22_2();
  v46 = v45(v44);
  if (v46 != *MEMORY[0x277D5BF18])
  {
    if (v46 == *MEMORY[0x277D5BF28])
    {
      v60 = *(v37 + 96);
      v61 = OUTLINED_FUNCTION_22_2();
      v62(v61);
      v63 = *v42;
      if (qword_2801CBAA0 != -1)
      {
        OUTLINED_FUNCTION_0();
      }

      v64 = sub_2676CBE4C();
      __swift_project_value_buffer(v64, qword_2801CDC90);

      v65 = sub_2676CBE2C();
      v66 = sub_2676CC23C();

      if (os_log_type_enabled(v65, v66))
      {
        v67 = OUTLINED_FUNCTION_5_3();
        v68 = swift_slowAlloc();
        v130 = v68;
        *v67 = 136315138;
        v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CBF78, &qword_2676CDF00);
        v70 = MEMORY[0x26D5FDDD0](v63, v69);
        v72 = sub_2676B0B84(v70, v71, &v130);

        *(v67 + 4) = v72;
        _os_log_impl(&dword_2675D4000, v65, v66, "#ResolveRecipientsFlow received raw USO response: %s", v67, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v68);
        OUTLINED_FUNCTION_2_5();
        OUTLINED_FUNCTION_2_5();
      }

      sub_267698E74(v63);

      v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CBF78, &qword_2676CDF00);
      if (__swift_getEnumTagSinglePayload(v7, 1, v73) == 1)
      {
        sub_2675ED6C0(v7, &qword_2801CC168, &unk_2676CF510);
        v74 = OUTLINED_FUNCTION_30_0();
        __swift_storeEnumTagSinglePayload(v74, v75, 1, v129);
      }

      else
      {
        KeyPath = swift_getKeyPath();
        OUTLINED_FUNCTION_2_11();
        sub_2675F668C(v83, v84);
        OUTLINED_FUNCTION_7_6();
        sub_2675F668C(v85, v86);
        sub_2676CA87C();

        OUTLINED_FUNCTION_14_2(v73);
        (*(v87 + 8))(v7, v73);
        v88 = OUTLINED_FUNCTION_30_0();
        if (__swift_getEnumTagSinglePayload(v88, v89, v129) != 1)
        {
          (*(v128 + 32))();
          swift_getKeyPath();
          v77 = OUTLINED_FUNCTION_33_0();
          v106 = v105;

          if (v106)
          {

            v107 = sub_2676CBE2C();
            v108 = sub_2676CC23C();

            if (os_log_type_enabled(v107, v108))
            {
              OUTLINED_FUNCTION_5_3();
              v109 = OUTLINED_FUNCTION_12_2();
              v130 = v109;
              OUTLINED_FUNCTION_26_1(4.8149e-34);
              *(KeyPath + 4) = sub_2676B0B84(v77, v106, v110);
              OUTLINED_FUNCTION_31_0(&dword_2675D4000, v111, v112, "#ResolveRecipientsFlow Disambiguated response with address label=%s");
              __swift_destroy_boxed_opaque_existential_1(v109);
              OUTLINED_FUNCTION_2_5();
              OUTLINED_FUNCTION_4_6();
            }
          }

          else
          {
            swift_getKeyPath();
            v77 = OUTLINED_FUNCTION_33_0();
            v116 = v115;

            if (!v116)
            {
              v122 = sub_2676CBE2C();
              v123 = sub_2676CC24C();
              if (os_log_type_enabled(v122, v123))
              {
                v124 = OUTLINED_FUNCTION_17_3();
                OUTLINED_FUNCTION_9_4(v124);
                _os_log_impl(&dword_2675D4000, v122, v123, "#ResolveRecipientsFlow Entity in USO response doesn't have a specifyingContactAddress label or value", KeyPath, 2u);
                OUTLINED_FUNCTION_4_6();
              }

              v125 = OUTLINED_FUNCTION_8_7();
              v126(v125);
              return 0;
            }

            v107 = sub_2676CBE2C();
            v117 = sub_2676CC23C();

            if (os_log_type_enabled(v107, v117))
            {
              OUTLINED_FUNCTION_5_3();
              v118 = OUTLINED_FUNCTION_12_2();
              v130 = v118;
              OUTLINED_FUNCTION_26_1(4.8149e-34);
              *(KeyPath + 4) = sub_2676B0B84(v77, v116, v119);
              OUTLINED_FUNCTION_31_0(&dword_2675D4000, v120, v121, "#ResolveRecipientsFlow Disambiguated response with address value=%s");
              __swift_destroy_boxed_opaque_existential_1(v118);
              OUTLINED_FUNCTION_2_5();
              OUTLINED_FUNCTION_4_6();
            }
          }

          v113 = OUTLINED_FUNCTION_8_7();
          v114(v113);
          return v77;
        }
      }

      sub_2675ED6C0(v13, &qword_2801CC068, &unk_2676D4E00);
      v80 = sub_2676CBE2C();
      v90 = sub_2676CC24C();
      if (!OUTLINED_FUNCTION_5_5(v90))
      {
LABEL_23:

        return 0;
      }
    }

    else
    {
      if (v46 != *MEMORY[0x277D5BF20])
      {
        if (qword_2801CBAA0 != -1)
        {
          OUTLINED_FUNCTION_0();
        }

        v97 = sub_2676CBE4C();
        OUTLINED_FUNCTION_24_2(v97, qword_2801CDC90);
        v98 = sub_2676CBE2C();
        v99 = sub_2676CC24C();
        if (OUTLINED_FUNCTION_5_5(v99))
        {
          v100 = OUTLINED_FUNCTION_17_3();
          *v100 = 0;
          _os_log_impl(&dword_2675D4000, v98, a1, "#ResolveRecipientsFlow programmer error, received a unexpected/unhandled response from the DisambiguationPrompt", v100, 2u);
          OUTLINED_FUNCTION_2_5();
        }

        v101 = *(v37 + 8);
        v102 = OUTLINED_FUNCTION_22_2();
        v103(v102);
        return 0;
      }

      if (qword_2801CBAA0 != -1)
      {
        OUTLINED_FUNCTION_0();
      }

      v79 = sub_2676CBE4C();
      OUTLINED_FUNCTION_24_2(v79, qword_2801CDC90);
      v80 = sub_2676CBE2C();
      v81 = sub_2676CC24C();
      if (!OUTLINED_FUNCTION_5_5(v81))
      {
        goto LABEL_23;
      }
    }

    v91 = OUTLINED_FUNCTION_17_3();
    OUTLINED_FUNCTION_9_4(v91);
    OUTLINED_FUNCTION_3_7();
    _os_log_impl(v92, v93, v94, v95, v96, 2u);
    OUTLINED_FUNCTION_4_6();
    goto LABEL_23;
  }

  v47 = *(v37 + 96);
  v48 = OUTLINED_FUNCTION_22_2();
  v49(v48);
  (*(v24 + 32))(v32, v42, v21);
  if (qword_2801CBAA0 != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v50 = sub_2676CBE4C();
  OUTLINED_FUNCTION_24_2(v50, qword_2801CDC90);
  (*(v24 + 16))(v29, v32, v21);
  v51 = sub_2676CBE2C();
  v52 = sub_2676CC23C();
  if (os_log_type_enabled(v51, v52))
  {
    v53 = OUTLINED_FUNCTION_5_3();
    v129 = OUTLINED_FUNCTION_15_4(v53);
    v130 = v129;
    *a1 = 136315138;
    OUTLINED_FUNCTION_6_4();
    sub_2675F668C(v54, v55);
    sub_2676CC56C();
    v56 = *(v24 + 8);
    v57 = OUTLINED_FUNCTION_14_3();
    v56(v57);
    v58 = OUTLINED_FUNCTION_23_2();

    v59 = v128;
    *(v128 + 4) = v58;
    _os_log_impl(&dword_2675D4000, v51, v52, "#ResolveRecipientsFlow Confirmed contact handle=%s", v59, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v129);
    OUTLINED_FUNCTION_4_6();
    OUTLINED_FUNCTION_2_5();
  }

  else
  {

    v56 = *(v24 + 8);
    v76 = OUTLINED_FUNCTION_14_3();
    v56(v76);
  }

  v77 = sub_2676CAB0C();
  v78 = OUTLINED_FUNCTION_16_3();
  v56(v78);
  return v77;
}

uint64_t sub_2675F5B2C(_DWORD *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC068, &unk_2676D4E00);
  OUTLINED_FUNCTION_4_1(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v5);
  v168 = &v165 - v6;
  v169 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC0D8, &qword_2676D1490);
  OUTLINED_FUNCTION_3(v169);
  v165 = v7;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_27_1(v11, v165);
  v166 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC168, &unk_2676CF510);
  OUTLINED_FUNCTION_14_2(v166);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_1_7();
  v167 = v15 - v16;
  v18 = MEMORY[0x28223BE20](v17);
  v20 = &v165 - v19;
  v21 = MEMORY[0x28223BE20](v18);
  v23 = (&v165 - v22);
  MEMORY[0x28223BE20](v21);
  v170 = (&v165 - v24);
  v25 = sub_2676CAB1C();
  v26 = OUTLINED_FUNCTION_3(v25);
  v28 = v27;
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_1_7();
  v33 = v31 - v32;
  MEMORY[0x28223BE20](v34);
  v36 = &v165 - v35;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC2E8, &qword_2676CE5F0);
  OUTLINED_FUNCTION_3(v37);
  v39 = v38;
  v41 = *(v40 + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v42);
  v44 = &v165 - v43;
  (*(v39 + 16))(&v165 - v43, a1, v37);
  v45 = *(v39 + 88);
  v46 = OUTLINED_FUNCTION_29_0();
  v48 = v47(v46);
  if (v48 != *MEMORY[0x277D5BF18])
  {
    if (v48 != *MEMORY[0x277D5BF28])
    {
      if (v48 == *MEMORY[0x277D5BF20])
      {
        if (qword_2801CBAA0 != -1)
        {
          OUTLINED_FUNCTION_0();
        }

        v82 = sub_2676CBE4C();
        OUTLINED_FUNCTION_24_2(v82, qword_2801CDC90);
        v83 = sub_2676CBE2C();
        v84 = sub_2676CC24C();
        if (OUTLINED_FUNCTION_5_5(v84))
        {
          v85 = OUTLINED_FUNCTION_17_3();
          OUTLINED_FUNCTION_9_4(v85);
          OUTLINED_FUNCTION_3_7();
          _os_log_impl(v86, v87, v88, v89, v90, 2u);
          OUTLINED_FUNCTION_4_6();
        }
      }

      else
      {
        if (qword_2801CBAA0 != -1)
        {
          OUTLINED_FUNCTION_0();
        }

        v97 = sub_2676CBE4C();
        OUTLINED_FUNCTION_24_2(v97, qword_2801CDC90);
        v98 = sub_2676CBE2C();
        v99 = sub_2676CC24C();
        if (os_log_type_enabled(v98, v99))
        {
          v100 = OUTLINED_FUNCTION_17_3();
          *v100 = 0;
          _os_log_impl(&dword_2675D4000, v98, v99, "#ResolveRecipientsFlow programmer error, received a unexpected/unhandled response from the DisambiguationPrompt", v100, 2u);
          OUTLINED_FUNCTION_2_5();
        }

        v101 = *(v39 + 8);
        v102 = OUTLINED_FUNCTION_29_0();
        v103(v102);
      }

      return 0;
    }

    v63 = *(v39 + 96);
    v64 = OUTLINED_FUNCTION_29_0();
    v65(v64);
    v66 = v170;
    sub_2675F66D4(v44, v170);
    if (qword_2801CBAA0 != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v67 = sub_2676CBE4C();
    __swift_project_value_buffer(v67, qword_2801CDC90);
    sub_2675F6744(v66, v23);
    v68 = sub_2676CBE2C();
    v69 = sub_2676CC23C();
    if (OUTLINED_FUNCTION_5_5(v69))
    {
      OUTLINED_FUNCTION_5_3();
      v70 = OUTLINED_FUNCTION_12_2();
      v171 = v70;
      *v33 = 136315138;
      sub_2675F6744(v23, v20);
      v71 = sub_2676CBFBC();
      v73 = v72;
      sub_2675ED6C0(v23, &qword_2801CC168, &unk_2676CF510);
      v74 = sub_2676B0B84(v71, v73, &v171);

      *(v33 + 4) = v74;
      OUTLINED_FUNCTION_3_7();
      _os_log_impl(v75, v76, v77, v78, v79, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v70);
      OUTLINED_FUNCTION_2_5();
      OUTLINED_FUNCTION_4_6();
    }

    else
    {

      sub_2675ED6C0(v23, &qword_2801CC168, &unk_2676CF510);
    }

    v91 = v169;
    v93 = v167;
    v92 = v168;
    sub_2675F6744(v66, v167);
    v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CBF78, &qword_2676CDF00);
    if (__swift_getEnumTagSinglePayload(v93, 1, v94) == 1)
    {
      sub_2675ED6C0(v93, &qword_2801CC168, &unk_2676CF510);
      v95 = OUTLINED_FUNCTION_30_0();
      __swift_storeEnumTagSinglePayload(v95, v96, 1, v91);
    }

    else
    {
      swift_getKeyPath();
      OUTLINED_FUNCTION_2_11();
      sub_2675F668C(v104, v105);
      OUTLINED_FUNCTION_7_6();
      sub_2675F668C(v106, v107);
      sub_2676CA87C();

      OUTLINED_FUNCTION_14_2(v94);
      (*(v108 + 8))(v93, v94);
      v109 = OUTLINED_FUNCTION_30_0();
      if (__swift_getEnumTagSinglePayload(v109, v110, v91) != 1)
      {
        v121 = v165;
        v122 = OUTLINED_FUNCTION_25_1();
        v123(v122);
        swift_getKeyPath();
        v81 = OUTLINED_FUNCTION_32_0();
        v125 = v124;

        if (v125)
        {

          v126 = sub_2676CBE2C();
          v127 = sub_2676CC23C();

          if (os_log_type_enabled(v126, v127))
          {
            OUTLINED_FUNCTION_5_3();
            v128 = v121;
            v129 = OUTLINED_FUNCTION_12_2();
            v171 = v129;
            OUTLINED_FUNCTION_26_1(4.8149e-34);
            *(v94 + 4) = sub_2676B0B84(v81, v125, v130);
            OUTLINED_FUNCTION_3_7();
            _os_log_impl(v131, v132, v133, v134, v135, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v129);
            OUTLINED_FUNCTION_2_5();
            OUTLINED_FUNCTION_4_6();

            v136 = *(v128 + 8);
          }

          else
          {

            v152 = *(v121 + 8);
          }
        }

        else
        {
          swift_getKeyPath();
          v81 = OUTLINED_FUNCTION_32_0();
          v140 = v139;

          if (!v140)
          {
            v153 = sub_2676CBE2C();
            v154 = sub_2676CC24C();
            if (OUTLINED_FUNCTION_5_5(v154))
            {
              v155 = OUTLINED_FUNCTION_17_3();
              OUTLINED_FUNCTION_9_4(v155);
              OUTLINED_FUNCTION_3_7();
              _os_log_impl(v156, v157, v158, v159, v160, 2u);
              OUTLINED_FUNCTION_4_6();
            }

            v161 = *(v121 + 8);
            v162 = OUTLINED_FUNCTION_14_3();
            v163(v162);
            v119 = v170;
            goto LABEL_31;
          }

          v141 = sub_2676CBE2C();
          v142 = sub_2676CC23C();

          if (os_log_type_enabled(v141, v142))
          {
            OUTLINED_FUNCTION_5_3();
            v143 = v121;
            v144 = OUTLINED_FUNCTION_12_2();
            v171 = v144;
            OUTLINED_FUNCTION_26_1(4.8149e-34);
            *(v94 + 4) = sub_2676B0B84(v81, v140, v145);
            OUTLINED_FUNCTION_3_7();
            _os_log_impl(v146, v147, v148, v149, v150, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v144);
            OUTLINED_FUNCTION_2_5();
            OUTLINED_FUNCTION_4_6();

            v151 = *(v143 + 8);
          }

          else
          {

            v164 = *(v121 + 8);
          }
        }

        v137 = OUTLINED_FUNCTION_14_3();
        v138(v137);
        sub_2675ED6C0(v170, &qword_2801CC168, &unk_2676CF510);
        return v81;
      }
    }

    sub_2675ED6C0(v92, &qword_2801CC068, &unk_2676D4E00);
    v111 = sub_2676CBE2C();
    v112 = sub_2676CC24C();
    if (OUTLINED_FUNCTION_5_5(v112))
    {
      v113 = OUTLINED_FUNCTION_17_3();
      OUTLINED_FUNCTION_9_4(v113);
      OUTLINED_FUNCTION_3_7();
      _os_log_impl(v114, v115, v116, v117, v118, 2u);
      OUTLINED_FUNCTION_4_6();
    }

    v119 = v66;
LABEL_31:
    sub_2675ED6C0(v119, &qword_2801CC168, &unk_2676CF510);
    return 0;
  }

  v49 = *(v39 + 96);
  v50 = OUTLINED_FUNCTION_29_0();
  v51(v50);
  v52 = OUTLINED_FUNCTION_25_1();
  v53(v52);
  if (qword_2801CBAA0 != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v54 = sub_2676CBE4C();
  OUTLINED_FUNCTION_24_2(v54, qword_2801CDC90);
  (*(v28 + 16))(v33, v36, v25);
  v55 = sub_2676CBE2C();
  v56 = sub_2676CC23C();
  if (os_log_type_enabled(v55, v56))
  {
    v57 = OUTLINED_FUNCTION_5_3();
    v170 = OUTLINED_FUNCTION_15_4(v57);
    v171 = v170;
    *a1 = 136315138;
    OUTLINED_FUNCTION_6_4();
    sub_2675F668C(v58, v59);
    sub_2676CC56C();
    v60 = OUTLINED_FUNCTION_20_2();
    v23(v60);
    v61 = OUTLINED_FUNCTION_23_2();

    v62 = v169;
    *(v169 + 4) = v61;
    _os_log_impl(&dword_2675D4000, v55, v56, "#ResolveRecipientsFlow Confirmed contact handle=%s", v62, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v170);
    OUTLINED_FUNCTION_4_6();
    OUTLINED_FUNCTION_2_5();
  }

  else
  {

    v80 = OUTLINED_FUNCTION_20_2();
    v23(v80);
  }

  v81 = sub_2676CAB0C();
  (v23)(v36, v25);
  return v81;
}

uint64_t sub_2675F668C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2675F66D4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC168, &unk_2676CF510);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2675F6744(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC168, &unk_2676CF510);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void OUTLINED_FUNCTION_4_6()
{

  JUMPOUT(0x26D5FEA80);
}

BOOL OUTLINED_FUNCTION_5_5(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_12_2()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_15_4(uint64_t a1)
{
  *(v1 - 104) = a1;

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_17_3()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_23_2()
{

  return sub_2676B0B84(v0, v1, (v2 - 88));
}

void OUTLINED_FUNCTION_31_0(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0xCu);
}

uint64_t OUTLINED_FUNCTION_32_0()
{

  return sub_2676CA89C();
}

uint64_t OUTLINED_FUNCTION_33_0()
{

  return sub_2676CA89C();
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_2675F6A0C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFC && *(a1 + 17))
    {
      v2 = *a1 + 251;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 <= 4)
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

uint64_t sub_2675F6A4C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 16) = 0;
    *result = a2 - 252;
    *(result + 8) = 0;
    if (a3 >= 0xFC)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
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

uint64_t sub_2675F6B40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(char *))
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  OUTLINED_FUNCTION_4_1(v11);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20]();
  v15 = &v17 - v14;
  sub_2675F95E4(a1, &v17 - v14, a5, a6);
  return a7(v15);
}

uint64_t sub_2675F6BE4()
{
  OUTLINED_FUNCTION_5_6();
  result = sub_2676CB55C();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_2675F6C24()
{
  OUTLINED_FUNCTION_5_6();
  result = MEMORY[0x26D5FD230]();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_2675F6C64()
{
  OUTLINED_FUNCTION_5_6();
  result = sub_2676CB57C();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_2675F6CA4()
{
  OUTLINED_FUNCTION_5_6();
  result = sub_2676CB54C();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_2675F6CE4()
{
  OUTLINED_FUNCTION_5_6();
  result = sub_2676CB58C();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_2675F6D24()
{
  OUTLINED_FUNCTION_5_6();
  result = sub_2676CB59C();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_2675F6DB0()
{
  OUTLINED_FUNCTION_5_6();
  result = sub_2676CB8DC();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_2675F6DF0@<X0>(uint64_t a1@<X8>)
{
  v198 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC098, &qword_2676CDAD8);
  OUTLINED_FUNCTION_4_1(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_9_1();
  v197 = v6;
  v201 = sub_2676CB87C();
  v7 = OUTLINED_FUNCTION_3(v201);
  v183 = v8;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_4();
  v181 = v11;
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_11_5(v13);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC2F8, &qword_2676CE758);
  OUTLINED_FUNCTION_4_1(v14);
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_11_5(v18);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC068, &unk_2676D4E00);
  OUTLINED_FUNCTION_4_1(v19);
  v21 = *(v20 + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_9_1();
  v194 = v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC0D8, &qword_2676D1490);
  OUTLINED_FUNCTION_3(v24);
  v179 = v25;
  v27 = *(v26 + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_11_5(v29);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC038, &qword_2676D5A40);
  v31 = OUTLINED_FUNCTION_4_1(v30);
  v33 = *(v32 + 64);
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_4();
  v176 = v34;
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_24_1();
  v193 = v36;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC300, &unk_2676D09B0);
  OUTLINED_FUNCTION_4_1(v37);
  v39 = *(v38 + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_11_5(v41);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC308, &qword_2676CE760);
  OUTLINED_FUNCTION_4_1(v42);
  v44 = *(v43 + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_11_5(v46);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC078, &unk_2676D3680);
  OUTLINED_FUNCTION_4_1(v47);
  v49 = *(v48 + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v50);
  OUTLINED_FUNCTION_9_1();
  v189 = v51;
  v199 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC0C8, &qword_2676CDB00);
  OUTLINED_FUNCTION_3(v199);
  v191 = v52;
  v54 = *(v53 + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v55);
  OUTLINED_FUNCTION_9_1();
  v190 = v56;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC0A0, &qword_2676CDAE0);
  OUTLINED_FUNCTION_4_1(v57);
  v59 = *(v58 + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v60);
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_11_5(v61);
  v188 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC0A8, &qword_2676D5AB0);
  OUTLINED_FUNCTION_3(v188);
  v175 = v62;
  v64 = *(v63 + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v65);
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_11_5(v66);
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC080, &unk_2676D3580);
  OUTLINED_FUNCTION_4_1(v67);
  v69 = *(v68 + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v70);
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_11_5(v71);
  v72 = sub_2676CABDC();
  v73 = OUTLINED_FUNCTION_3(v72);
  v186 = v74;
  v76 = *(v75 + 64);
  MEMORY[0x28223BE20](v73);
  OUTLINED_FUNCTION_3_2();
  OUTLINED_FUNCTION_11_5(v78 - v77);
  v200 = sub_2676CAA9C();
  v79 = OUTLINED_FUNCTION_3(v200);
  v196 = v80;
  v82 = *(v81 + 64);
  MEMORY[0x28223BE20](v79);
  OUTLINED_FUNCTION_3_2();
  v203 = v84 - v83;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC108, &qword_2676D3590);
  v86 = OUTLINED_FUNCTION_3(v85);
  v88 = v87;
  v90 = *(v89 + 64);
  MEMORY[0x28223BE20](v86);
  OUTLINED_FUNCTION_4();
  v184 = v91;
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x28223BE20](v92);
  v94 = v172 - v93;
  if (qword_2801CBAA0 != -1)
  {
    swift_once();
  }

  v95 = sub_2676CBE4C();
  v96 = __swift_project_value_buffer(v95, qword_2801CDC90);
  v97 = *(v88 + 16);
  v202 = v1;
  v97(v94, v1, v85);
  v192 = v96;
  v98 = sub_2676CBE2C();
  v99 = sub_2676CC23C();
  v100 = os_log_type_enabled(v98, v99);
  v195 = v24;
  v173 = v88;
  if (v100)
  {
    v101 = swift_slowAlloc();
    v102 = swift_slowAlloc();
    v172[0] = v72;
    v103 = v102;
    v204 = v102;
    *v101 = 136315138;
    v97(v184, v94, v85);
    v104 = sub_2676CBFBC();
    v106 = v105;
    v107 = OUTLINED_FUNCTION_23_3();
    v108(v107);
    v109 = sub_2676B0B84(v104, v106, &v204);

    *(v101 + 4) = v109;
    _os_log_impl(&dword_2675D4000, v98, v99, "Converting Common.Person to ContactQuery: %s", v101, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v103);
    v72 = v172[0];
    OUTLINED_FUNCTION_2_5();
    OUTLINED_FUNCTION_2_5();
  }

  else
  {

    v110 = OUTLINED_FUNCTION_23_3();
    v111(v110);
  }

  v112 = v85;
  v113 = v203;
  sub_2676CAA8C();
  (*(v186 + 104))(v185, *MEMORY[0x277D56118], v72);
  sub_2676CA9DC();
  swift_getKeyPath();
  OUTLINED_FUNCTION_9_5();
  v116 = sub_2675F9644(v114, v115);
  sub_2676CA89C();
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_20_3();
  sub_2676CAA3C();
  swift_getKeyPath();
  sub_2675F9644(&qword_2801CC120, MEMORY[0x277D5C558]);
  v117 = v187;
  sub_2676CA87C();

  v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC0C0, &qword_2676CDAF8);
  v119 = OUTLINED_FUNCTION_26_2();
  OUTLINED_FUNCTION_21_3(v119, v120, v118);
  if (v137)
  {
    sub_2675EB7EC(v117, &qword_2801CC080, &unk_2676D3580);
    OUTLINED_FUNCTION_25_2();
  }

  else
  {
    swift_getKeyPath();
    sub_2676CA89C();
    v122 = v121;

    (*(*(v118 - 8) + 8))(v117, v118);
    OUTLINED_FUNCTION_25_2();
    if (v122)
    {
      goto LABEL_11;
    }
  }

LABEL_11:
  sub_2676CA9EC();
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_6();
  sub_2675F9644(v123, v124);
  OUTLINED_FUNCTION_24_3();
  sub_2676CA87C();

  OUTLINED_FUNCTION_21_3(v118, 1, v113);
  if (v137)
  {
    sub_2675EB7EC(v118, &qword_2801CC0A0, &qword_2676CDAE0);
  }

  else
  {
    v188 = v116;
    v125 = v175;
    v126 = v174;
    (*(v175 + 32))(v174, v118, v113);
    swift_getKeyPath();
    OUTLINED_FUNCTION_3_8();
    OUTLINED_FUNCTION_13_3();
    OUTLINED_FUNCTION_20_3();
    sub_2676CA99C();
    swift_getKeyPath();
    OUTLINED_FUNCTION_3_8();
    OUTLINED_FUNCTION_13_3();
    OUTLINED_FUNCTION_20_3();
    sub_2676CAA7C();
    swift_getKeyPath();
    OUTLINED_FUNCTION_3_8();
    OUTLINED_FUNCTION_13_3();
    OUTLINED_FUNCTION_20_3();
    sub_2676CA97C();
    swift_getKeyPath();
    OUTLINED_FUNCTION_3_8();
    OUTLINED_FUNCTION_13_3();
    OUTLINED_FUNCTION_20_3();
    sub_2676CA95C();
    swift_getKeyPath();
    OUTLINED_FUNCTION_3_8();
    OUTLINED_FUNCTION_13_3();
    OUTLINED_FUNCTION_20_3();
    sub_2676CA9BC();
    swift_getKeyPath();
    OUTLINED_FUNCTION_3_8();

    sub_2676CAA5C();
    (*(v125 + 8))(v126, v113);
  }

  v127 = v201;
  v128 = v189;
  swift_getKeyPath();
  OUTLINED_FUNCTION_8_8();
  sub_2675F9644(v129, v130);
  OUTLINED_FUNCTION_24_3();
  sub_2676CA87C();

  v131 = v199;
  OUTLINED_FUNCTION_21_3(v128, 1, v199);
  if (v137)
  {
    sub_2675EB7EC(v128, &qword_2801CC078, &unk_2676D3680);
    v132 = v195;
    v133 = v200;
  }

  else
  {
    (*(v191 + 32))(v190, v128, v131);
    swift_getKeyPath();
    sub_2676CA89C();

    swift_getKeyPath();
    v134 = v193;
    sub_2676CA87C();

    v135 = v176;
    sub_2675F95E4(v134, v176, &qword_2801CC038, &qword_2676D5A40);
    v136 = 1;
    OUTLINED_FUNCTION_18_3(v135);
    v138 = v177;
    if (!v137)
    {
      v139 = v184;
      v140 = (*(v173 + 32))(v184, v135, v112);
      sub_2675F6DF0(v140);
      (v172[1])(v139, v112);
      v136 = 0;
    }

    sub_2675EB7EC(v193, &qword_2801CC038, &qword_2676D5A40);
    v133 = v200;
    __swift_storeEnumTagSinglePayload(v138, v136, 1, v200);
    sub_2676CAC7C();
    sub_2676CAC8C();
    OUTLINED_FUNCTION_17_2();
    __swift_storeEnumTagSinglePayload(v141, v142, v143, v144);
    sub_2676CA9CC();
    (*(v191 + 8))(v190, v199);
    v127 = v201;
    v132 = v195;
  }

  swift_getKeyPath();
  OUTLINED_FUNCTION_1_10();
  sub_2675F9644(v145, v146);
  v147 = v194;
  OUTLINED_FUNCTION_24_3();
  sub_2676CA87C();
  v148 = v147;

  OUTLINED_FUNCTION_21_3(v147, 1, v132);
  if (v137)
  {
    sub_2675EB7EC(v147, &qword_2801CC068, &unk_2676D4E00);
  }

  else
  {
    v149 = v179;
    v150 = v178;
    (*(v179 + 32))(v178, v148, v132);
    sub_2675F8040(v180);
    sub_2676CABCC();
    OUTLINED_FUNCTION_17_2();
    __swift_storeEnumTagSinglePayload(v151, v152, v153, v154);
    sub_2676CAA1C();
    v155 = v150;
    v133 = v200;
    (*(v149 + 8))(v155, v132);
  }

  swift_getKeyPath();
  v156 = v197;
  OUTLINED_FUNCTION_24_3();
  sub_2676CA84C();

  OUTLINED_FUNCTION_18_3(v156);
  if (v137)
  {
    sub_2675EB7EC(v156, &qword_2801CC098, &qword_2676CDAD8);
  }

  else
  {
    v157 = v183;
    v158 = v182;
    (*(v183 + 32))(v182, v156, v127);
    v159 = v181;
    (*(v157 + 104))(v181, *MEMORY[0x277D5C6E0], v127);
    v160 = sub_26768D3D0();
    v161 = *(v157 + 8);
    v161(v159, v127);
    if (v160)
    {
      v162 = v203;
      sub_2676CAA0C();
      v161(v158, v127);
      goto LABEL_30;
    }

    v161(v158, v127);
  }

  v162 = v203;
LABEL_30:
  v163 = sub_2676CBE2C();
  v164 = sub_2676CC23C();
  if (os_log_type_enabled(v163, v164))
  {
    v165 = swift_slowAlloc();
    v166 = swift_slowAlloc();
    v204 = v166;
    *v165 = 136315138;
    swift_beginAccess();
    sub_2675F9644(&qword_2801CC1D8, MEMORY[0x277D55FF8]);
    v167 = sub_2676CC56C();
    v169 = sub_2676B0B84(v167, v168, &v204);

    *(v165 + 4) = v169;
    _os_log_impl(&dword_2675D4000, v163, v164, "Converted Common.Person to ContactQuery %s", v165, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v166);
    OUTLINED_FUNCTION_2_5();
    OUTLINED_FUNCTION_2_5();
  }

  swift_beginAccess();
  v170 = v196;
  (*(v196 + 16))(v198, v162, v133);
  return (*(v170 + 8))(v162, v133);
}

uint64_t sub_2675F7FB8()
{
  OUTLINED_FUNCTION_5_6();
  result = sub_2676CB7FC();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_2675F7FF8(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v6 = *a1;
  v7 = a1[1];

  return a5(v6, v7);
}

uint64_t sub_2675F8040@<X0>(uint64_t a1@<X8>)
{
  v71 = a1;
  v82 = sub_2676CAABC();
  v1 = OUTLINED_FUNCTION_3(v82);
  v72 = v2;
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_4();
  v79 = v5;
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_24_1();
  v81 = v7;
  v8 = sub_2676CA46C();
  v9 = OUTLINED_FUNCTION_3(v8);
  v80 = v10;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_3_2();
  v15 = v14 - v13;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC320, &qword_2676CEA40);
  OUTLINED_FUNCTION_4_1(v16);
  v18 = *(v17 + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v19);
  v21 = &v68 - v20;
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC0D8, &qword_2676D1490);
  OUTLINED_FUNCTION_1_10();
  sub_2675F9644(v22, v23);
  v24 = sub_2676CA89C();
  v26 = v25;

  if (v26)
  {
    v27 = HIBYTE(v26) & 0xF;
    if ((v26 & 0x2000000000000000) == 0)
    {
      v27 = v24 & 0xFFFFFFFFFFFFLL;
    }

    if (v27)
    {
      v28 = *MEMORY[0x277CFBCE0];
      v29 = sub_2676CBF3C();

      v30 = (*(v28 + 16))(v28, v29);

      v31 = sub_2676CBF6C();
      v69 = v32;
      v70 = v31;

      goto LABEL_8;
    }
  }

  v69 = 0xE000000000000000;
  v70 = 0;
LABEL_8:
  swift_getKeyPath();
  v33 = sub_2676CA89C();
  v35 = v34;

  if (v35)
  {
    v36 = v33;
  }

  else
  {
    v36 = 0;
  }

  v73 = v36;
  if (v35)
  {
    v37 = v35;
  }

  else
  {
    v37 = 0xE000000000000000;
  }

  v38 = MEMORY[0x277D84FA0];
  v86 = MEMORY[0x277D84FA0];
  swift_getKeyPath();
  sub_2676CA86C();

  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC328, &qword_2676CEAD8);
  v40 = OUTLINED_FUNCTION_26_2();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v40, v41, v39);
  v43 = MEMORY[0x277D56008];
  if (EnumTagSinglePayload == 1)
  {
    sub_2675EB7EC(v21, &qword_2801CC320, &qword_2676CEA40);
    goto LABEL_42;
  }

  v44 = sub_2676CA92C();
  (*(*(v39 - 8) + 8))(v21, v39);
  v85 = v38;
  v45 = *(v44 + 16);
  if (v45)
  {
    v74 = v37;
    v46 = 0xEB00000000657079;
    v47 = 0x54746361746E6F63;
    v48 = *(v80 + 16);
    v49 = (*(v80 + 80) + 32) & ~*(v80 + 80);
    v68 = v44;
    v50 = v44 + v49;
    v83 = *(v80 + 72);
    v84 = v48;
    v51 = (v80 + 8);
    v77 = *v43;
    v75 = (v72 + 8);
    v76 = (v72 + 104);
    v80 += 16;
    v78 = v8;
    while (1)
    {
      v84(v15, v50, v8);
      v52 = sub_2676CA45C();
      if (v53)
      {
        break;
      }

LABEL_38:
      (*v51)(v15, v8);
      v50 += v83;
      if (!--v45)
      {

        v43 = MEMORY[0x277D56008];
        goto LABEL_41;
      }
    }

    if (v52 == v47 && v53 == v46)
    {
    }

    else
    {
      v55 = sub_2676CC59C();

      if ((v55 & 1) == 0)
      {
        goto LABEL_38;
      }
    }

    v56 = v47;
    v57 = v46;
    v58 = sub_2676CA44C();
    v60 = v59;
    if (sub_2676CC06C())
    {
      v61 = sub_2676CC00C();
      v62 = sub_2675F9050(v61);
      MEMORY[0x26D5FDCA0](v62);

      sub_2676ACEBC();
    }

    else
    {
      if (v58 == 0x6C69616D65 && v60 == 0xE500000000000000)
      {
      }

      else
      {
        v64 = sub_2676CC59C();

        if ((v64 & 1) == 0)
        {
LABEL_37:
          v46 = v57;
          v47 = v56;
          v8 = v78;
          goto LABEL_38;
        }
      }

      v73 = 0;
      v74 = 0xE000000000000000;
    }

    v65 = v82;
    (*v76)(v79, v77, v82);
    v66 = v81;
    sub_2676ACC44();
    (*v75)(v66, v65);
    goto LABEL_37;
  }

LABEL_41:

  sub_2675F91A0(0, 0xE000000000000000);

LABEL_42:
  (*(v72 + 104))(v81, *v43, v82);
  sub_2676CABBC();
  sub_2675F9110(v86);
  return sub_2676CABAC();
}

uint64_t sub_2675F8690()
{
  v108 = sub_2676CB87C();
  v0 = OUTLINED_FUNCTION_3(v108);
  v102 = v1;
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v0);
  OUTLINED_FUNCTION_3_2();
  v107 = v5 - v4;
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC358, &unk_2676D3670);
  OUTLINED_FUNCTION_2_6(v104);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_9_1();
  v103 = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC098, &qword_2676CDAD8);
  v11 = OUTLINED_FUNCTION_4_1(v10);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_4();
  v101 = v14;
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x28223BE20](v15);
  v105 = &v97 - v16;
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_24_1();
  v106 = v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC068, &unk_2676D4E00);
  v20 = OUTLINED_FUNCTION_4_1(v19);
  v22 = *(v21 + 64);
  v23 = MEMORY[0x28223BE20](v20);
  v25 = &v97 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v27 = &v97 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC360, &unk_2676D3660);
  OUTLINED_FUNCTION_4_1(v28);
  v30 = *(v29 + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v31);
  v33 = &v97 - v32;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC078, &unk_2676D3680);
  OUTLINED_FUNCTION_4_1(v34);
  v36 = *(v35 + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v37);
  v39 = &v97 - v38;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC0A0, &qword_2676CDAE0);
  OUTLINED_FUNCTION_4_1(v40);
  v42 = *(v41 + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v43);
  v45 = &v97 - v44;
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC108, &qword_2676D3590);
  OUTLINED_FUNCTION_9_5();
  v48 = sub_2675F9644(v46, v47);
  sub_2676CA89C();
  v50 = v49;

  if (v50)
  {

LABEL_3:
    v51 = 1;
    return v51 & 1;
  }

  v99 = v33;
  v100 = v39;
  v97 = v25;
  v98 = v27;
  v52 = v108;
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_6();
  sub_2675F9644(v53, v54);
  sub_2676CA87C();

  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC0A8, &qword_2676D5AB0);
  v51 = 1;
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v45, 1, v55);
  sub_2675EB7EC(v45, &qword_2801CC0A0, &qword_2676CDAE0);
  if (EnumTagSinglePayload == 1)
  {
    swift_getKeyPath();
    OUTLINED_FUNCTION_8_8();
    sub_2675F9644(v57, v58);
    v59 = v100;
    sub_2676CA87C();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC0C8, &qword_2676CDB00);
    v60 = OUTLINED_FUNCTION_26_2();
    v63 = __swift_getEnumTagSinglePayload(v60, v61, v62);
    sub_2675EB7EC(v59, &qword_2801CC078, &unk_2676D3680);
    if (v63 == 1)
    {
      swift_getKeyPath();
      OUTLINED_FUNCTION_1_10();
      sub_2675F9644(v64, v65);
      v66 = v98;
      v100 = v48;
      sub_2676CA87C();

      v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC0D8, &qword_2676D1490);
      v68 = OUTLINED_FUNCTION_26_2();
      OUTLINED_FUNCTION_21_3(v68, v69, v67);
      if (v81)
      {
        sub_2675EB7EC(v66, &qword_2801CC068, &unk_2676D4E00);
        v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC368, &unk_2676CEB00);
        v79 = v99;
        __swift_storeEnumTagSinglePayload(v99, 1, 1, v70);
        v72 = v106;
        v71 = v107;
        v73 = v104;
        v74 = v105;
      }

      else
      {
        v75 = *(v67 - 8);
        (*(v75 + 16))(v97, v66, v67);
        OUTLINED_FUNCTION_17_2();
        __swift_storeEnumTagSinglePayload(v76, v77, v78, v67);
        sub_2676CB61C();
        sub_2676CB78C();
        sub_2675F9644(&qword_2801CC378, MEMORY[0x277D5C4C8]);
        v79 = v99;
        sub_2676CA8EC();
        (*(v75 + 8))(v66, v67);
        v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC368, &unk_2676CEB00);
        OUTLINED_FUNCTION_21_3(v79, 1, v80);
        v72 = v106;
        v71 = v107;
        v73 = v104;
        v74 = v105;
        if (!v81)
        {
          v91 = &qword_2801CC360;
          v92 = &unk_2676D3660;
          v93 = v79;
LABEL_20:
          sub_2675EB7EC(v93, v91, v92);
          goto LABEL_3;
        }
      }

      sub_2675EB7EC(v79, &qword_2801CC360, &unk_2676D3660);
      swift_getKeyPath();
      sub_2676CA84C();

      v82 = v102;
      v83 = v52;
      (*(v102 + 104))(v74, *MEMORY[0x277D5C6E0], v52);
      OUTLINED_FUNCTION_17_2();
      __swift_storeEnumTagSinglePayload(v84, v85, v86, v52);
      v87 = *(v73 + 48);
      v88 = v103;
      sub_2675F95E4(v72, v103, &qword_2801CC098, &qword_2676CDAD8);
      sub_2675F95E4(v74, v88 + v87, &qword_2801CC098, &qword_2676CDAD8);
      OUTLINED_FUNCTION_21_3(v88, 1, v52);
      if (v81)
      {
        OUTLINED_FUNCTION_30_1(v74);
        OUTLINED_FUNCTION_30_1(v72);
        OUTLINED_FUNCTION_18_3(v88 + v87);
        if (v81)
        {
          v91 = &qword_2801CC098;
          v92 = &qword_2676CDAD8;
          v93 = v88;
          goto LABEL_20;
        }
      }

      else
      {
        v89 = v101;
        sub_2675F95E4(v88, v101, &qword_2801CC098, &qword_2676CDAD8);
        OUTLINED_FUNCTION_18_3(v88 + v87);
        if (!v90)
        {
          (*(v82 + 32))(v71, v88 + v87, v83);
          sub_2675F9644(&qword_2801CC370, MEMORY[0x277D5C6E8]);
          v94 = v74;
          v51 = sub_2676CBF1C();
          v95 = *(v82 + 8);
          v95(v71, v83);
          sub_2675EB7EC(v94, &qword_2801CC098, &qword_2676CDAD8);
          sub_2675EB7EC(v72, &qword_2801CC098, &qword_2676CDAD8);
          v95(v89, v83);
          sub_2675EB7EC(v88, &qword_2801CC098, &qword_2676CDAD8);
          return v51 & 1;
        }

        OUTLINED_FUNCTION_30_1(v74);
        OUTLINED_FUNCTION_30_1(v72);
        (*(v82 + 8))(v89, v83);
      }

      sub_2675EB7EC(v88, &qword_2801CC358, &unk_2676D3670);
      v51 = 0;
    }
  }

  return v51 & 1;
}

uint64_t sub_2675F8F80(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC330, &qword_2676CEAE0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  (*(v5 + 16))(&v7 - v4, a1);
  return sub_2676CB77C();
}

uint64_t sub_2675F9050(uint64_t result)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    sub_2676CC01C();
    v1 = sub_2676CC0AC();

    return v1;
  }

  return result;
}

void *sub_2675F9110(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    goto LABEL_4;
  }

  v3 = sub_267607880(*(a1 + 16), 0);
  v4 = sub_2675F9480(&v6, v3 + 4, v2, a1);
  sub_2675F95DC();
  if (v4 != v2)
  {
    __break(1u);
LABEL_4:

    return MEMORY[0x277D84F90];
  }

  return v3;
}

uint64_t sub_2675F91A0(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(*v2 + 40);
  sub_2676CC64C();
  sub_2676CBFFC();
  v7 = sub_2676CC67C();
  v8 = ~(-1 << *(v5 + 32));
  while (1)
  {
    v9 = v7 & v8;
    if (((*(v5 + 56 + (((v7 & v8) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v7 & v8)) & 1) == 0)
    {
      return 0;
    }

    v10 = (*(v5 + 48) + 16 * v9);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (sub_2676CC59C() & 1) != 0)
    {
      break;
    }

    v7 = v9 + 1;
  }

  v12 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *v2;
  v19 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_2676AEB94();
    v14 = v19;
  }

  v15 = (*(v14 + 48) + 16 * v9);
  v16 = *v15;
  v17 = v15[1];
  sub_2675F92C8(v9);
  *v2 = v19;
  return v16;
}

unint64_t sub_2675F92C8(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;
    v8 = *v1;

    v9 = sub_2676CC3BC();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v10 = (v9 + 1) & v7;
      do
      {
        v11 = *(v3 + 40);
        v12 = (*(v3 + 48) + 16 * v6);
        v13 = *v12;
        v14 = v12[1];
        sub_2676CC64C();

        sub_2676CBFFC();
        v15 = sub_2676CC67C();

        v16 = v15 & v7;
        if (v2 >= v10)
        {
          if (v16 >= v10 && v2 >= v16)
          {
LABEL_15:
            v19 = *(v3 + 48);
            v20 = (v19 + 16 * v2);
            v21 = (v19 + 16 * v6);
            if (v2 != v6 || v20 >= v21 + 1)
            {
              *v20 = *v21;
              v2 = v6;
            }
          }
        }

        else if (v16 >= v10 || v2 >= v16)
        {
          goto LABEL_15;
        }

        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v23 = *(v3 + 16);
  v24 = __OFSUB__(v23, 1);
  v25 = v23 - 1;
  if (v24)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v25;
    ++*(v3 + 36);
  }

  return result;
}

uint64_t sub_2675F9480(uint64_t result, void *a2, unint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  if (!a2)
  {
    v13 = 0;
    v10 = 0;
LABEL_20:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v13;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v13 = 0;
    goto LABEL_20;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    v12 = 0;
    v13 = 0;
    while (v12 < v10)
    {
      v14 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        goto LABEL_24;
      }

      if (!v9)
      {
        while (1)
        {
          v15 = v13 + 1;
          if (__OFADD__(v13, 1))
          {
            break;
          }

          if (v15 >= ((63 - v7) >> 6))
          {
            v9 = 0;
            v10 = v12;
            goto LABEL_20;
          }

          v9 = *(v6 + 8 * v15);
          ++v13;
          if (v9)
          {
            goto LABEL_15;
          }
        }

        __break(1u);
        break;
      }

      v15 = v13;
LABEL_15:
      v16 = (*(a4 + 48) + ((v15 << 10) | (16 * __clz(__rbit64(v9)))));
      v17 = v16[1];
      v9 &= v9 - 1;
      *v11 = *v16;
      v11[1] = v17;
      if (v14 == v10)
      {

        v13 = v15;
        goto LABEL_20;
      }

      v11 += 2;

      v12 = v14;
      v13 = v15;
    }

    __break(1u);
LABEL_24:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_2675F95E4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_2_6(v6);
  (*(v7 + 16))(a2, a1);
  return a2;
}

uint64_t sub_2675F9644(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t OUTLINED_FUNCTION_3_8()
{

  return sub_2676CA89C();
}

uint64_t OUTLINED_FUNCTION_13_3()
{
}

uint64_t OUTLINED_FUNCTION_20_3()
{
  if (v1)
  {
    return v0;
  }

  else
  {
    return 0;
  }
}

uint64_t OUTLINED_FUNCTION_23_3()
{
  result = v0;
  *(v2 - 408) = *(v1 + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_30_1(uint64_t a1)
{

  return sub_2675EB7EC(a1, v1, v2);
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_2675F9854(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_2675F9894(uint64_t result, int a2, int a3)
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
      *(result + 32) = (a2 - 1);
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

uint64_t sub_2675F9910()
{
  v1 = *__swift_project_boxed_opaque_existential_1((*(v0 + 16) + 8), *(*(v0 + 16) + 32));
  v2 = swift_task_alloc();
  *(v0 + 24) = v2;
  *v2 = v0;
  v2[1] = sub_2675F99B0;

  return sub_2676432A8();
}

uint64_t sub_2675F99B0(uint64_t a1)
{
  v4 = *(*v2 + 24);
  v8 = *v2;

  v6 = *(v8 + 8);
  if (!v1)
  {
    v5 = a1;
  }

  return v6(v5);
}

uint64_t sub_2675F9AB0(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_2675F9B40;

  return sub_2675F98F0();
}

uint64_t sub_2675F9B40(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 24);
  v6 = *v2;

  if (!v1)
  {
    **(v4 + 16) = a1;
  }

  v7 = *(v6 + 8);

  return v7();
}

uint64_t type metadata accessor for GetMail()
{
  result = qword_2801CC388;
  if (!qword_2801CC388)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2675F9CC4()
{
  sub_2675F9E64(319, &qword_2801CC398);
  v1 = v0;
  if (v2 <= 0x3F)
  {
    sub_2675F9E64(319, &qword_2801CC3A0);
    v1 = v3;
    if (v4 <= 0x3F)
    {
      sub_2675F9EB0();
      if (v6 > 0x3F)
      {
        return v5;
      }

      sub_2675F9F08(319, &qword_2801CC3B0, &qword_2801CC1F8, &qword_2676CEBA0);
      if (v7 > 0x3F)
      {
        return v5;
      }

      else
      {
        sub_2675F9F08(319, &qword_2801CC3B8, &qword_2801CC3C0, &unk_2676CEBA8);
        v1 = v8;
        if (v9 <= 0x3F)
        {
          v1 = sub_2675F9F5C(319, &qword_2801CC3C8);
          if (v10 <= 0x3F)
          {
            v1 = sub_2675F9F5C(319, &qword_2801CC298);
            if (v11 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
              return 0;
            }
          }
        }
      }
    }
  }

  return v1;
}

void sub_2675F9E64(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_2676CC2FC();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

void sub_2675F9EB0()
{
  if (!qword_2801CC3A8)
  {
    sub_2676C8C8C();
    v0 = sub_2676CC2FC();
    if (!v1)
    {
      atomic_store(v0, &qword_2801CC3A8);
    }
  }
}

void sub_2675F9F08(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v5 = sub_2676CC2FC();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_2675F9F5C(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_2675F9FB0()
{
  v1[2] = v0;
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC3D0, &qword_2676D1D80) - 8) + 64) + 15;
  v1[3] = swift_task_alloc();
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CBFE8, &unk_2676CD9E0) - 8) + 64) + 15;
  v1[4] = swift_task_alloc();
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC380, &unk_2676CEF40) - 8) + 64) + 15;
  v1[5] = swift_task_alloc();
  v1[6] = swift_task_alloc();
  v1[7] = swift_task_alloc();
  v5 = sub_2676C8BFC();
  v1[8] = v5;
  v6 = *(v5 - 8);
  OUTLINED_FUNCTION_10_7();
  v1[9] = v7;
  v9 = *(v8 + 64) + 15;
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();
  v1[13] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC3D8, &unk_2676CEC00);
  v1[14] = v10;
  v11 = *(v10 - 8);
  OUTLINED_FUNCTION_10_7();
  v1[15] = v12;
  v14 = *(v13 + 64) + 15;
  v1[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2675FA1B4, 0, 0);
}

uint64_t sub_2675FA1B4()
{
  v1 = *(v0 + 16);
  Mail = type metadata accessor for GetMail();
  v3 = Mail;
  *(v0 + 136) = Mail;
  if (*(v1 + Mail[10]) == 2)
  {
    v4 = *(v0 + 48);
    v5 = Mail[7];
    sub_2675FBC80(v1 + v5, *(v0 + 56), &qword_2801CC380, &unk_2676CEF40);
    sub_2675FBC80(v1 + v5, v4, &qword_2801CC380, &unk_2676CEF40);
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC1F8, &qword_2676CEBA0);
    __swift_getEnumTagSinglePayload(v4, 1, v6);
    OUTLINED_FUNCTION_16_5();
    v7 = *(v0 + 16);
    if (v5 == 1 && !v7[1])
    {
      v8 = *(v0 + 32);
      sub_2675FBC80(v7 + v3[6], v8, &qword_2801CBFE8, &unk_2676CD9E0);
      v9 = sub_2676C8C8C();
      __swift_getEnumTagSinglePayload(v8, 1, v9);
      OUTLINED_FUNCTION_16_5();
      v7 = *(v0 + 16);
      if (*(v7 + v3[8]) == 2)
      {
        if (qword_2801CBAA0 != -1)
        {
          OUTLINED_FUNCTION_0();
        }

        v10 = sub_2676CBE4C();
        __swift_project_value_buffer(v10, qword_2801CDC90);
        v11 = sub_2676CBE2C();
        v12 = sub_2676CC23C();
        if (OUTLINED_FUNCTION_5_7(v12))
        {
          v13 = OUTLINED_FUNCTION_17_3();
          *v13 = 0;
          _os_log_impl(&dword_2675D4000, v11, v12, "#GetMail applying date time range of past month", v13, 2u);
          OUTLINED_FUNCTION_2_5();
        }

        v14 = *(v0 + 56);
        v15 = *(v0 + 40);

        v16 = *(v6 + 48);
        sub_2676C907C();
        v17 = sub_2676C90CC();
        __swift_storeEnumTagSinglePayload(v15, 0, 1, v17);
        sub_2676C90AC();
        sub_2675EB7EC(v14, &qword_2801CC380, &unk_2676CEF40);
        __swift_storeEnumTagSinglePayload(v15 + v16, 0, 1, v17);
        __swift_storeEnumTagSinglePayload(v15, 0, 1, v6);
        sub_2675FBC30(v15, v14, &qword_2801CC380, &unk_2676CEF40);
        v7 = *(v0 + 16);
      }
    }

    v18 = (v7 + v3[14]);
    v19 = v18[3];
    v20 = v18[4];
    __swift_project_boxed_opaque_existential_1(v18, v19);
    v21 = *v7;
    v22 = v7[1];
    v23 = *(v7 + 16);
    *(v0 + 184) = v23;
    v24 = *(v7 + v3[8]);
    *(v0 + 185) = v24;
    v25 = v3[6];
    v26 = *(v20 + 32);
    OUTLINED_FUNCTION_10_7();
    v41 = (v27 + *v27);
    v29 = *(v28 + 4);
    v30 = swift_task_alloc();
    *(v0 + 160) = v30;
    *v30 = v0;
    v30[1] = sub_2675FAA30;
    v31 = *(v0 + 56);

    return v41(v21, v22, v23, v24, v7 + v25, v31, v19, v20);
  }

  else
  {
    v33 = (v1 + Mail[14]);
    v34 = v33[3];
    v35 = v33[4];
    __swift_project_boxed_opaque_existential_1(v33, v34);
    v36 = *(v35 + 48);
    OUTLINED_FUNCTION_10_7();
    v42 = (v37 + *v37);
    v39 = *(v38 + 4);
    v40 = swift_task_alloc();
    *(v0 + 144) = v40;
    *v40 = v0;
    v40[1] = sub_2675FA65C;

    return v42(v34, v35);
  }
}

uint64_t sub_2675FA65C()
{
  v1 = *v0;
  OUTLINED_FUNCTION_8_6();
  *v3 = v2;
  v5 = *(v4 + 144);
  *v3 = *v0;
  *(v2 + 152) = v6;

  return MEMORY[0x2822009F8](sub_2675FA758, 0, 0);
}

uint64_t sub_2675FA758()
{
  v1 = v0[19];
  v2 = *(v1 + 16);
  if (v2)
  {
    v31 = v0[14];
    v32 = v0[15];
    v3 = v0[9];
    v34 = MEMORY[0x277D84F90];
    sub_2676C2998(0, v2, 0);
    v4 = 0;
    v5 = v34;
    v30 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v29 = v2;
    v33 = v1;
    while (v4 < *(v1 + 16))
    {
      v6 = v0[16];
      v7 = v0[13];
      v8 = v0[8];
      v9 = *(v3 + 16);
      v9(v7, v30 + *(v3 + 72) * v4, v8);
      v10 = (v6 + *(v31 + 48));
      v9(v6, v7, v8);
      *v10 = 0;
      v10[1] = 0;
      (*(v3 + 8))(v7, v8);
      v12 = *(v34 + 16);
      v11 = *(v34 + 24);
      if (v12 >= v11 >> 1)
      {
        v18 = OUTLINED_FUNCTION_23_1(v11);
        sub_2676C2998(v18, v12 + 1, 1);
      }

      v13 = v0[16];
      ++v4;
      *(v34 + 16) = v12 + 1;
      v14 = *(v32 + 80);
      OUTLINED_FUNCTION_2_12();
      sub_2675FBC30(v17, v34 + v15 + *(v16 + 72) * v12, &qword_2801CC3D8, &unk_2676CEC00);
      v1 = v33;
      if (v29 == v4)
      {
        v19 = v0[19];

        goto LABEL_12;
      }
    }

    __break(1u);
    goto LABEL_16;
  }

  v20 = v0[19];

  if (qword_2801CBAA0 != -1)
  {
LABEL_16:
    OUTLINED_FUNCTION_0();
  }

  v21 = sub_2676CBE4C();
  __swift_project_value_buffer(v21, qword_2801CDC90);
  v22 = sub_2676CBE2C();
  v23 = sub_2676CC23C();
  if (OUTLINED_FUNCTION_5_7(v23))
  {
    *OUTLINED_FUNCTION_17_3() = 0;
    OUTLINED_FUNCTION_15_6(&dword_2675D4000, v24, v25, "#GetMail user is referring to something onscreen that we couldn't resolve, returning empty array");
    OUTLINED_FUNCTION_2_5();
  }

  v5 = MEMORY[0x277D84F90];
LABEL_12:
  v26 = v0[16];
  OUTLINED_FUNCTION_6_5();

  v27 = v0[1];

  return v27(v5);
}

uint64_t sub_2675FAA30()
{
  v2 = *v1;
  OUTLINED_FUNCTION_8_6();
  *v4 = v3;
  v6 = *(v5 + 160);
  *v4 = *v1;
  *(v3 + 168) = v7;
  *(v3 + 176) = v0;

  if (v0)
  {
    v8 = sub_2675FB2EC;
  }

  else
  {
    v8 = sub_2675FAB40;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_2675FAB40()
{
  v1 = *(*(v0 + 16) + *(*(v0 + 136) + 36));
  if (v1 != 2 && (v1 & 1) != 0)
  {
    v2 = *(v0 + 64);
    v3 = *(v0 + 24);
    sub_267698E88(*(v0 + 168));
    if (__swift_getEnumTagSinglePayload(v3, 1, v2) != 1)
    {
      v44 = *(v0 + 168);
      v45 = *(v0 + 96);
      v46 = *(v0 + 64);
      v47 = *(v0 + 72);
      v48 = *(v0 + 56);
      v49 = *(v0 + 16);
      v50 = *(v0 + 24);

      (*(v47 + 32))(v45, v50, v46);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC3E0, &qword_2676CF2E0);
      v51 = *(v47 + 72);
      v52 = (*(v47 + 80) + 32) & ~*(v47 + 80);
      v53 = swift_allocObject();
      *(v53 + 16) = xmmword_2676CDE20;
      (*(v47 + 16))(v53 + v52, v45, v46);
      v89 = sub_2675FB3DC(v53);
      swift_setDeallocating();
      sub_2675FBB3C();
      (*(v47 + 8))(v45, v46);
      goto LABEL_45;
    }

    sub_2675EB7EC(*(v0 + 24), &qword_2801CC3D0, &qword_2676D1D80);
  }

  v4 = *(v0 + 185);
  if (v4 != 2 && (v4 & 1) != 0)
  {
    v5 = *(v0 + 168);
    v6 = *(v5 + 16);
    if (!v6)
    {
      v56 = *(v0 + 168);

      if (qword_2801CBAA0 != -1)
      {
        OUTLINED_FUNCTION_0();
      }

      v57 = sub_2676CBE4C();
      __swift_project_value_buffer(v57, qword_2801CDC90);
      v58 = sub_2676CBE2C();
      v59 = sub_2676CC23C();
      if (OUTLINED_FUNCTION_5_7(v59))
      {
        *OUTLINED_FUNCTION_17_3() = 0;
        OUTLINED_FUNCTION_15_6(&dword_2675D4000, v60, v61, "#GetMail didn't find any new emails, returning nothing");
        OUTLINED_FUNCTION_2_5();
      }

      v48 = *(v0 + 56);

      v89 = MEMORY[0x277D84F90];
      goto LABEL_45;
    }

    if (qword_2801CBAA0 != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v7 = sub_2676CBE4C();
    __swift_project_value_buffer(v7, qword_2801CDC90);
    v8 = sub_2676CBE2C();
    v9 = sub_2676CC23C();
    if (OUTLINED_FUNCTION_5_7(v9))
    {
      *OUTLINED_FUNCTION_17_3() = 0;
      OUTLINED_FUNCTION_17_5(&dword_2675D4000, v10, v11, "#GetMail returning some new emails");
      OUTLINED_FUNCTION_2_5();
    }

    v12 = *(v0 + 72);

    for (i = 0; ; ++i)
    {
      if (v6 == i)
      {
        goto LABEL_36;
      }

      if (i >= *(v5 + 16))
      {
        break;
      }

      v14 = *(v0 + 104);
      v15 = *(v0 + 64);
      (*(v12 + 16))(v14, *(v0 + 168) + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * i, v15);
      v16 = sub_2676C8B2C();
      (*(v12 + 8))(v14, v15);
      if (v16)
      {
        v74 = sub_267651810(0, i + 1, *(v0 + 168));
        v76 = v75;
        v78 = v77;
        v80 = v79;

        if ((v80 & 1) == 0)
        {
          goto LABEL_49;
        }

        sub_2676CC5BC();
        swift_unknownObjectRetain_n();
        v82 = swift_dynamicCastClass();
        if (!v82)
        {
          swift_unknownObjectRelease();
          v82 = MEMORY[0x277D84F90];
        }

        v83 = *(v82 + 16);

        if (__OFSUB__(v80 >> 1, v78))
        {
          __break(1u);
        }

        else if (v83 == (v80 >> 1) - v78)
        {
          v39 = swift_dynamicCastClass();
          swift_unknownObjectRelease_n();
          if (v39)
          {
            goto LABEL_39;
          }

          v39 = MEMORY[0x277D84F90];
          goto LABEL_56;
        }

        swift_unknownObjectRelease_n();
LABEL_49:
        sub_267651540(v74, v76, v78, v80);
        v39 = v81;
LABEL_56:
        swift_unknownObjectRelease();
        goto LABEL_39;
      }
    }

LABEL_58:
    __break(1u);
LABEL_59:
    OUTLINED_FUNCTION_0();
    goto LABEL_19;
  }

  if (*(v0 + 184) != 2)
  {
LABEL_36:
    v48 = *(v0 + 56);
    v54 = *(v0 + 16);
    v89 = sub_2675FB3DC(*(v0 + 168));

    goto LABEL_45;
  }

  if (qword_2801CBAA0 != -1)
  {
    goto LABEL_59;
  }

LABEL_19:
  v17 = sub_2676CBE4C();
  __swift_project_value_buffer(v17, qword_2801CDC90);
  v18 = sub_2676CBE2C();
  v19 = sub_2676CC23C();
  if (OUTLINED_FUNCTION_5_7(v19))
  {
    *OUTLINED_FUNCTION_17_3() = 0;
    OUTLINED_FUNCTION_17_5(&dword_2675D4000, v20, v21, "#GetMail filtering for implicit unread since there are unreads but the user did not specify");
    OUTLINED_FUNCTION_2_5();
  }

  v22 = *(v0 + 168);
  v23 = *(v0 + 72);

  v24 = 0;
  v25 = *(v22 + 16);
  v88 = (v23 + 32);
  v86 = MEMORY[0x277D84F90];
  while (v25 != v24)
  {
    if (v24 >= *(v22 + 16))
    {
      __break(1u);
      goto LABEL_58;
    }

    v26 = (*(v23 + 80) + 32) & ~*(v23 + 80);
    v27 = *(v23 + 72);
    (*(v23 + 16))(*(v0 + 88), *(v0 + 168) + v26 + v27 * v24, *(v0 + 64));
    v28 = sub_2676C8B2C();
    v29 = *(v0 + 88);
    if (v28)
    {
      (*(v23 + 8))(*(v0 + 88), *(v0 + 64));
      ++v24;
    }

    else
    {
      v85 = *v88;
      (*v88)(*(v0 + 80), *(v0 + 88), *(v0 + 64));
      v30 = v86;
      v90 = v86;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v31 = *(v86 + 16);
        sub_2676C2950();
        v30 = v86;
      }

      v33 = *(v30 + 16);
      v32 = *(v30 + 24);
      v34 = v33 + 1;
      if (v33 >= v32 >> 1)
      {
        OUTLINED_FUNCTION_23_1(v32);
        v87 = v37;
        v84 = v38;
        sub_2676C2950();
        v34 = v84;
        v33 = v87;
        v30 = v90;
      }

      ++v24;
      v35 = *(v0 + 80);
      v36 = *(v0 + 64);
      *(v30 + 16) = v34;
      v86 = v30;
      v85(v30 + v26 + v33 * v27, v35, v36);
    }
  }

  v39 = v86;
  if (!*(v86 + 16))
  {

    goto LABEL_36;
  }

  v40 = *(v0 + 168);

  v41 = sub_2676CBE2C();
  v42 = sub_2676CC23C();
  if (OUTLINED_FUNCTION_5_7(v42))
  {
    v43 = swift_slowAlloc();
    *v43 = 134217984;
    *(v43 + 4) = *(v86 + 16);

    _os_log_impl(&dword_2675D4000, v41, v42, "#GetMail found %ld unread emails, returning those", v43, 0xCu);
    OUTLINED_FUNCTION_2_5();
  }

  else
  {
  }

LABEL_39:
  v48 = *(v0 + 56);
  v55 = *(v0 + 16);
  v89 = sub_2675FB3DC(v39);

LABEL_45:
  sub_2675EB7EC(v48, &qword_2801CC380, &unk_2676CEF40);
  v62 = *(v0 + 128);
  v63 = *(v0 + 96);
  v64 = *(v0 + 104);
  v66 = *(v0 + 80);
  v65 = *(v0 + 88);
  v68 = *(v0 + 48);
  v67 = *(v0 + 56);
  v70 = *(v0 + 32);
  v69 = *(v0 + 40);
  v71 = *(v0 + 24);

  v72 = *(v0 + 8);

  return v72(v89);
}

uint64_t sub_2675FB2EC()
{
  v2 = v0[16];
  OUTLINED_FUNCTION_6_5();
  sub_2675EB7EC(v1, &qword_2801CC380, &unk_2676CEF40);

  v3 = v0[1];
  v4 = v0[22];

  return v3();
}

uint64_t sub_2675FB3DC(uint64_t a1)
{
  v74 = sub_2676C8BFC();
  v3 = OUTLINED_FUNCTION_3(v74);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  v73 = &v66 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC3D8, &unk_2676CEC00);
  v10 = OUTLINED_FUNCTION_3(v9);
  v71 = v11;
  v72 = v10;
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v10);
  v16 = &v66 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v66 - v17;
  Mail = type metadata accessor for GetMail();
  sub_2675FBC80(v1 + *(Mail + 44), &v75, &qword_2801CC3E8, &qword_2676CEC10);
  if (v76)
  {
    sub_2675DD73C(&v75, v77);
    __swift_project_boxed_opaque_existential_1((v1 + *(Mail + 48)), *(v1 + *(Mail + 48) + 24));
    if (sub_267616C5C())
    {
      if (qword_2801CBAA0 != -1)
      {
        OUTLINED_FUNCTION_0();
      }

      v20 = sub_2676CBE4C();
      __swift_project_value_buffer(v20, qword_2801CDC90);

      v21 = sub_2676CBE2C();
      v22 = sub_2676CC23C();
      if (OUTLINED_FUNCTION_5_7(v22))
      {
        v23 = swift_slowAlloc();
        OUTLINED_FUNCTION_14_5(v23, 3.852e-34);
        _os_log_impl(&dword_2675D4000, v21, v22, "#GetMail CatchUp is enabled, fetch email summaries for %ld messages", v23, 0xCu);
        OUTLINED_FUNCTION_2_5();
      }

      else
      {
      }

      v45 = *(a1 + 16);
      v29 = MEMORY[0x277D84F90];
      if (v45)
      {
        *&v75 = MEMORY[0x277D84F90];
        sub_2676C2998(0, v45, 0);
        v29 = v75;
        v47 = *(v5 + 16);
        v46 = v5 + 16;
        v48 = *(v46 + 64);
        OUTLINED_FUNCTION_2_12();
        v50 = (a1 + v49);
        v68 = *(v46 + 56);
        v69 = v51;
        v70 = v46;
        v66 = v18;
        v67 = (v46 - 8);
        do
        {
          v53 = v73;
          v52 = v74;
          v54 = v69;
          v69(v73, v50, v74);
          v55 = &v18[*(v72 + 48)];
          v54(v18, v53, v52);
          v56 = *__swift_project_boxed_opaque_existential_1(v77, v77[3]);
          sub_2676C8ABC();
          sub_2676CBFAC();

          v57 = sub_267642F84();
          v59 = v58;

          *v55 = v57;
          *(v55 + 1) = v59;
          (*v67)(v53, v52);
          *&v75 = v29;
          v61 = *(v29 + 16);
          v60 = *(v29 + 24);
          if (v61 >= v60 >> 1)
          {
            v64 = OUTLINED_FUNCTION_23_1(v60);
            sub_2676C2998(v64, v61 + 1, 1);
            v29 = v75;
          }

          *(v29 + 16) = v61 + 1;
          OUTLINED_FUNCTION_1_11();
          v18 = v66;
          sub_2675FBC30(v66, v62 + v63 * v61, &qword_2801CC3D8, &unk_2676CEC00);
          v50 += v68;
          --v45;
        }

        while (v45);
      }

      __swift_destroy_boxed_opaque_existential_1(v77);
      return v29;
    }

    __swift_destroy_boxed_opaque_existential_1(v77);
  }

  else
  {
    sub_2675EB7EC(&v75, &qword_2801CC3E8, &qword_2676CEC10);
  }

  if (qword_2801CBAA0 != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v24 = sub_2676CBE4C();
  __swift_project_value_buffer(v24, qword_2801CDC90);

  v25 = sub_2676CBE2C();
  v26 = sub_2676CC23C();
  if (OUTLINED_FUNCTION_5_7(v26))
  {
    v27 = swift_slowAlloc();
    OUTLINED_FUNCTION_14_5(v27, 3.852e-34);
    _os_log_impl(&dword_2675D4000, v25, v26, "#GetMail CatchUp is disabled, not fetching email summaries for %ld messages", v27, 0xCu);
    OUTLINED_FUNCTION_2_5();
  }

  else
  {
  }

  v28 = *(a1 + 16);
  v29 = MEMORY[0x277D84F90];
  if (v28)
  {
    v77[0] = MEMORY[0x277D84F90];
    sub_2676C2998(0, v28, 0);
    v29 = v77[0];
    v32 = *(v5 + 16);
    v30 = v5 + 16;
    v31 = v32;
    v33 = *(v30 + 64);
    OUTLINED_FUNCTION_2_12();
    v35 = a1 + v34;
    v69 = *(v30 + 56);
    v70 = v30;
    v36 = (v30 - 8);
    do
    {
      v38 = v73;
      v37 = v74;
      v31(v73, v35, v74);
      v39 = &v16[*(v72 + 48)];
      v31(v16, v38, v37);
      *v39 = 0;
      *(v39 + 1) = 0;
      (*v36)(v38, v37);
      v77[0] = v29;
      v41 = *(v29 + 16);
      v40 = *(v29 + 24);
      if (v41 >= v40 >> 1)
      {
        v44 = OUTLINED_FUNCTION_23_1(v40);
        sub_2676C2998(v44, v41 + 1, 1);
        v29 = v77[0];
      }

      *(v29 + 16) = v41 + 1;
      OUTLINED_FUNCTION_1_11();
      sub_2675FBC30(v16, v42 + v43 * v41, &qword_2801CC3D8, &unk_2676CEC00);
      v35 += v69;
      --v28;
    }

    while (v28);
  }

  return v29;
}

uint64_t sub_2675FB9A4(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_2675FBA34;

  return sub_2675F9FB0();
}

uint64_t sub_2675FBA34(uint64_t a1)
{
  v4 = *v2;
  OUTLINED_FUNCTION_8_6();
  *v5 = v4;
  v7 = *(v6 + 24);
  v8 = *v2;
  OUTLINED_FUNCTION_8_6();
  *v9 = v8;

  if (!v1)
  {
    **(v4 + 16) = a1;
  }

  v10 = *(v8 + 8);

  return v10();
}

uint64_t sub_2675FBB3C()
{
  v1 = *(*(sub_2676C8BFC() - 8) + 80);
  v2 = *(v0 + 16);
  swift_arrayDestroy();

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

uint64_t sub_2675FBBB4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC3F0, &qword_2676CEC18);
  OUTLINED_FUNCTION_7_7(v1);
  v3 = *(v2 + 80);
  OUTLINED_FUNCTION_2_12();
  v4 = *(v0 + 16);
  swift_arrayDestroy();

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

uint64_t sub_2675FBC30(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = OUTLINED_FUNCTION_13_4(a1, a2, a3, a4);
  OUTLINED_FUNCTION_2_6(v6);
  (*(v7 + 32))(v4, v5);
  return v4;
}

uint64_t sub_2675FBC80(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = OUTLINED_FUNCTION_13_4(a1, a2, a3, a4);
  OUTLINED_FUNCTION_2_6(v6);
  (*(v7 + 16))(v4, v5);
  return v4;
}

void OUTLINED_FUNCTION_1_11()
{
  v2 = *(v1 - 200);
  v3 = v0 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v4 = *(v2 + 72);
}

BOOL OUTLINED_FUNCTION_5_7(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

void OUTLINED_FUNCTION_6_5()
{
  v2 = v0[12];
  v1 = v0[13];
  v4 = v0[10];
  v3 = v0[11];
  v6 = v0[6];
  v5 = v0[7];
  v8 = v0[4];
  v7 = v0[5];
  v9 = v0[3];
}

uint64_t OUTLINED_FUNCTION_13_4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
}

uint64_t OUTLINED_FUNCTION_14_5(uint64_t a1, float a2)
{
  *a1 = a2;
  *(a1 + 4) = *(v2 + 16);
}

void OUTLINED_FUNCTION_15_6(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v4, a4, v6, 2u);
}

uint64_t OUTLINED_FUNCTION_16_5()
{

  return sub_2675EB7EC(v0, v1, v2);
}

void OUTLINED_FUNCTION_17_5(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t type metadata accessor for HandleDisambiguationProducer()
{
  result = qword_2801CC3F8;
  if (!qword_2801CC3F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2675FBE54()
{
  result = type metadata accessor for ContactResolutionCATsSimple();
  if (v1 <= 0x3F)
  {
    result = sub_2676CAECC();
    if (v2 <= 0x3F)
    {
      result = sub_2676CB38C();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_2675FBEF0(uint64_t a1, uint64_t a2)
{
  v12[1] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CBFD0, &qword_2676CDEA0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = v12 - v5;
  result = sub_267630B8C(a1);
  v8 = result;
  v9 = 0;
  v13 = a1 & 0xC000000000000001;
  while (v8 != v9)
  {
    if (v13)
    {
      result = MEMORY[0x26D5FE0E0](v9, a1);
    }

    else
    {
      if (v9 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_16;
      }

      v10 = *(a1 + 8 * v9 + 32);
    }

    if (__OFADD__(v9, 1))
    {
      __break(1u);
LABEL_16:
      __break(1u);
      return result;
    }

    if (sub_2676CB29C())
    {
      sub_2676CB19C();

      v11 = sub_2676CB3FC();
      if (__swift_getEnumTagSinglePayload(v6, 1, v11) == 1)
      {
        sub_2675E3BB8(v6);
      }

      else
      {
        sub_2676CB3EC();
        (*(*(v11 - 8) + 8))(v6, v11);
      }
    }

    sub_2676ACFD0();

    ++v9;
  }

  return result;
}

uint64_t sub_2675FC0C4(uint64_t a1)
{
  v2[22] = a1;
  v2[23] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CBFC8, &unk_2676CD9B0);
  OUTLINED_FUNCTION_4_1(v3);
  v5 = *(v4 + 64);
  v2[24] = OUTLINED_FUNCTION_2_0();
  v6 = sub_2676C9A6C();
  v2[25] = v6;
  OUTLINED_FUNCTION_1_0(v6);
  v2[26] = v7;
  v9 = *(v8 + 64);
  v2[27] = OUTLINED_FUNCTION_2_0();
  v10 = sub_2676C90FC();
  v2[28] = v10;
  OUTLINED_FUNCTION_1_0(v10);
  v2[29] = v11;
  v13 = *(v12 + 64);
  v2[30] = OUTLINED_FUNCTION_2_0();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2801CCB20, &qword_2676CDA80);
  OUTLINED_FUNCTION_4_1(v14);
  v16 = *(v15 + 64);
  v2[31] = OUTLINED_FUNCTION_2_0();
  v17 = sub_2676CAF8C();
  OUTLINED_FUNCTION_4_1(v17);
  v19 = *(v18 + 64);
  v2[32] = OUTLINED_FUNCTION_2_0();
  v20 = sub_2676C99CC();
  v2[33] = v20;
  OUTLINED_FUNCTION_1_0(v20);
  v2[34] = v21;
  v23 = *(v22 + 64) + 15;
  v2[35] = swift_task_alloc();
  v2[36] = swift_task_alloc();
  v24 = sub_2676C9DDC();
  v2[37] = v24;
  OUTLINED_FUNCTION_1_0(v24);
  v2[38] = v25;
  v27 = *(v26 + 64);
  v2[39] = OUTLINED_FUNCTION_2_0();
  v28 = sub_2676CAECC();
  v2[40] = v28;
  OUTLINED_FUNCTION_1_0(v28);
  v2[41] = v29;
  v31 = *(v30 + 64);
  v2[42] = OUTLINED_FUNCTION_2_0();
  v32 = sub_2676C91DC();
  OUTLINED_FUNCTION_4_1(v32);
  v34 = *(v33 + 64);
  v2[43] = OUTLINED_FUNCTION_2_0();
  v35 = sub_2676CADCC();
  v2[44] = v35;
  OUTLINED_FUNCTION_1_0(v35);
  v2[45] = v36;
  v38 = *(v37 + 64);
  v2[46] = OUTLINED_FUNCTION_2_0();
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CBFD0, &qword_2676CDEA0);
  OUTLINED_FUNCTION_4_1(v39);
  v41 = *(v40 + 64) + 15;
  v2[47] = swift_task_alloc();
  v2[48] = swift_task_alloc();
  v42 = sub_2676CB3FC();
  v2[49] = v42;
  OUTLINED_FUNCTION_1_0(v42);
  v2[50] = v43;
  v45 = *(v44 + 64) + 15;
  v2[51] = swift_task_alloc();
  v2[52] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2675FC43C, 0, 0);
}

uint64_t sub_2675FC43C()
{
  if (qword_2801CBAA0 != -1)
  {
    swift_once();
  }

  v1 = sub_2676CBE4C();
  *(v0 + 424) = __swift_project_value_buffer(v1, qword_2801CDC90);
  v2 = sub_2676CBE2C();
  v3 = sub_2676CC23C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_2675D4000, v2, v3, "#HandleDisambiguationProducer producing contact handle disambiguation", v4, 2u);
    MEMORY[0x26D5FEA80](v4, -1, -1);
  }

  v5 = *(v0 + 184);

  v6 = type metadata accessor for HandleDisambiguationProducer();
  *(v0 + 432) = v6;
  *(v0 + 488) = *(v6 + 20);
  v7 = sub_2675E3C20();
  *(v0 + 440) = v7;
  *(v0 + 492) = sub_2675FD400(v7) & 1;
  if (!sub_267630B8C(v7))
  {
    v12 = *(v0 + 384);
    v11 = *(v0 + 392);

    __swift_storeEnumTagSinglePayload(v12, 1, 1, v11);
LABEL_11:
    sub_2675E3BB8(*(v0 + 384));
    sub_2675FD730();
    swift_allocError();
    *v13 = xmmword_2676CEC20;
    swift_willThrow();
    OUTLINED_FUNCTION_2_13();
    v27 = *(v0 + 256);
    v28 = *(v0 + 248);
    v29 = *(v0 + 240);
    v30 = *(v0 + 216);
    v31 = *(v0 + 192);

    OUTLINED_FUNCTION_15_0();
    OUTLINED_FUNCTION_5_8();

    __asm { BRAA            X1, X16 }
  }

  sub_267692C1C(0, (v7 & 0xC000000000000001) == 0, v7);
  if ((v7 & 0xC000000000000001) != 0)
  {
    MEMORY[0x26D5FE0E0](0, v7);
  }

  else
  {
    v8 = *(v7 + 32);
  }

  v10 = *(v0 + 384);
  v9 = *(v0 + 392);
  sub_2676CB34C();

  if (__swift_getEnumTagSinglePayload(v10, 1, v9) == 1)
  {

    goto LABEL_11;
  }

  v16 = *(v0 + 416);
  v17 = *(v0 + 392);
  v18 = *(v0 + 400);
  v19 = *(v0 + 376);
  v20 = *(v0 + 184);
  (*(v18 + 32))(v16, *(v0 + 384), v17);
  v21 = *v20;
  v22 = *(v18 + 16);
  *(v0 + 448) = v22;
  *(v0 + 456) = (v18 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v22(v19, v16, v17);
  __swift_storeEnumTagSinglePayload(v19, 0, 1, v17);
  v23 = swift_task_alloc();
  *(v0 + 464) = v23;
  *v23 = v0;
  v23[1] = sub_2675FC7EC;
  v24 = *(v0 + 376);
  OUTLINED_FUNCTION_5_8();

  return sub_2675ECB18();
}

uint64_t sub_2675FC7EC(uint64_t a1)
{
  v3 = *v2;
  v4 = (*v2)[58];
  v8 = *v2;
  v3[59] = a1;
  v3[60] = v1;

  if (v1)
  {
    v5 = v3[55];
    sub_2675E3BB8(v3[47]);

    v6 = sub_2675FD2E4;
  }

  else
  {
    sub_2675E3BB8(v3[47]);
    v6 = sub_2675FC91C;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_2675FC91C()
{
  v102 = v0;
  v1 = *(v0 + 456);
  v2 = *(v0 + 440);
  v3 = *(v0 + 424);
  (*(v0 + 448))(*(v0 + 408), *(v0 + 416), *(v0 + 392));

  v4 = sub_2676CBE2C();
  v5 = sub_2676CC23C();
  if (os_log_type_enabled(v4, v5))
  {
    v97 = *(v0 + 492);
    v6 = *(v0 + 440);
    v8 = *(v0 + 400);
    v7 = *(v0 + 408);
    v9 = *(v0 + 392);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v101[0] = v11;
    *v10 = 134218498;
    *(v10 + 4) = sub_267630B8C(v6);

    *(v10 + 12) = 2080;
    v12 = sub_2676CB3EC();
    v14 = v13;
    v93 = *(v8 + 8);
    v93(v7, v9);
    v15 = sub_2676B0B84(v12, v14, v101);

    *(v10 + 14) = v15;
    *(v10 + 22) = 1024;
    *(v10 + 24) = v97;
    _os_log_impl(&dword_2675D4000, v4, v5, "#HandleDisambiguationProducer Dialog: emailList: %ld name: %s isSameLabels: %{BOOL}d", v10, 0x1Cu);
    __swift_destroy_boxed_opaque_existential_1(v11);
    MEMORY[0x26D5FEA80](v11, -1, -1);
    MEMORY[0x26D5FEA80](v10, -1, -1);
  }

  else
  {
    v16 = *(v0 + 440);
    v18 = *(v0 + 400);
    v17 = *(v0 + 408);
    v19 = *(v0 + 392);

    v93 = *(v18 + 8);
    v93(v17, v19);
  }

  sub_2676C919C();
  if ((sub_2676C917C() & 1) == 0)
  {
    v40 = *(v0 + 440);
    v41 = *(v0 + 488);
    v42 = *(v0 + 336);
    v43 = *(v0 + 344);
    v44 = *(v0 + 320);
    v45 = *(v0 + 328);
    v46 = *(v0 + 184);

    (*(v45 + 16))(v42, v46 + v41, v44);
    sub_2676C91CC();
    *(v0 + 40) = sub_2676C916C();
    *(v0 + 48) = sub_2675E5DE8(&qword_2801CBFF8, MEMORY[0x277D5C900]);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 16));
    sub_2675FD784(v43, boxed_opaque_existential_1);
    swift_storeEnumTagMultiPayload();
    sub_2675FD7E8(v43);
LABEL_17:
    v79 = *(v0 + 472);
    v82 = *(v0 + 416);
    v83 = *(v0 + 408);
    v80 = *(v0 + 400);
    v81 = *(v0 + 392);
    v84 = *(v0 + 384);
    v85 = *(v0 + 376);
    v87 = *(v0 + 368);
    v89 = *(v0 + 344);
    v92 = *(v0 + 336);
    v61 = *(v0 + 312);
    v75 = *(v0 + 304);
    v62 = *(v0 + 288);
    v77 = *(v0 + 296);
    v63 = *(v0 + 272);
    v64 = *(v0 + 280);
    v66 = *(v0 + 256);
    v65 = *(v0 + 264);
    v96 = *(v0 + 240);
    v100 = *(v0 + 248);
    v67 = *(v0 + 232);
    v72 = *(v0 + 224);
    v68 = *(v0 + 208);
    v73 = *(v0 + 216);
    v74 = *(v0 + 200);
    v76 = *(v0 + 192);
    v78 = *(v0 + 176);
    sub_2676C999C();
    (*(v63 + 16))(v64, v62, v65);
    sub_2676C9D2C();
    sub_2676C9D6C();
    sub_26762D4C8(v66);
    sub_2676C9D3C();
    sub_2676C9D7C();
    sub_2676C9DBC();
    sub_2676C9DAC();
    v69 = sub_2676C9B3C();
    __swift_storeEnumTagSinglePayload(v100, 1, 1, v69);
    sub_2676C9D8C();
    sub_2676C9D9C();
    sub_2676C90EC();
    sub_2676C90DC();
    (*(v67 + 8))(v96, v72);
    sub_2676C9D5C();
    sub_2676C9DAC();
    (*(v68 + 104))(v73, *MEMORY[0x277D5BC50], v74);
    sub_2676C9D4C();
    (*(v63 + 8))(v62, v65);
    sub_2675E5D38(v0 + 16, v0 + 56);
    memset(v101, 0, 40);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC5A0, &qword_2676CD620);
    v70 = swift_allocObject();
    *(v70 + 16) = xmmword_2676CD5C0;
    *(v70 + 32) = v79;
    (*(v75 + 16))(v76, v61, v77);
    __swift_storeEnumTagSinglePayload(v76, 0, 1, v77);
    sub_2676C9AAC();
    (*(v75 + 8))(v61, v77);
    v93(v82, v81);
    __swift_destroy_boxed_opaque_existential_1((v0 + 16));

    OUTLINED_FUNCTION_15_0();
    goto LABEL_18;
  }

  v20 = *(v0 + 488);
  v21 = *(v0 + 432);
  v22 = *(v0 + 184);
  v23 = sub_2676CBB7C();
  *(v0 + 120) = v23;
  *(v0 + 128) = sub_2675E5DE8(&qword_2801CC000, MEMORY[0x277D565C0]);
  v98 = __swift_allocate_boxed_opaque_existential_1((v0 + 96));
  sub_2676CAD7C();
  v24 = *(v22 + *(v21 + 24));
  v25 = sub_2675ED7F4();

  if (!sub_267630B8C(v25))
  {

    __break(1u);
    return result;
  }

  v26 = *(v0 + 440);

  sub_267692C1C(0, (v25 & 0xC000000000000001) == 0, v25);
  v90 = v23;
  if ((v25 & 0xC000000000000001) != 0)
  {
    MEMORY[0x26D5FE0E0](0, v25);
  }

  else
  {
    v27 = *(v25 + 32);
  }

  v28 = *(v0 + 472);
  v29 = *(v0 + 488);
  v31 = *(v0 + 360);
  v30 = *(v0 + 368);
  v32 = *(v0 + 352);
  v33 = *(v0 + 184);

  sub_2676CADDC();
  sub_2676CADBC();
  (*(v31 + 8))(v30, v32);
  sub_2675ED7F4();

  sub_2676C9ECC();
  v34 = *(v0 + 168);
  __swift_project_boxed_opaque_existential_1((v0 + 136), *(v0 + 160));
  sub_2676C991C();
  sub_2676C96AC();
  sub_2676C969C();
  v35 = [v28 dialog];
  sub_2675E16F4();
  v36 = sub_2676CC0FC();

  if (sub_267630B8C(v36))
  {
    sub_267692C1C(0, (v36 & 0xC000000000000001) == 0, v36);
    if ((v36 & 0xC000000000000001) != 0)
    {
      v37 = MEMORY[0x26D5FE0E0](0, v36);
    }

    else
    {
      v37 = *(v36 + 32);
    }

    v38 = v37;

    v39 = [v38 fullPrint];

    sub_2676CBF6C();
  }

  else
  {
  }

  v48 = *(v0 + 480);
  sub_2676CBB6C();
  if (!v48)
  {
    __swift_destroy_boxed_opaque_existential_1((v0 + 136));
    (*(*(v90 - 8) + 104))(v98, *MEMORY[0x277D565A8]);
    sub_2675DD73C((v0 + 96), v0 + 16);
    goto LABEL_17;
  }

  v49 = *(v0 + 472);
  v50 = *(v0 + 400) + 8;
  v93(*(v0 + 416), *(v0 + 392));

  __swift_destroy_boxed_opaque_existential_1((v0 + 136));
  __swift_deallocate_boxed_opaque_existential_1((v0 + 96));
  v52 = *(v0 + 408);
  v51 = *(v0 + 416);
  v54 = *(v0 + 376);
  v53 = *(v0 + 384);
  v55 = *(v0 + 368);
  v57 = *(v0 + 336);
  v56 = *(v0 + 344);
  v58 = *(v0 + 312);
  v59 = *(v0 + 288);
  v86 = *(v0 + 280);
  v88 = *(v0 + 256);
  v91 = *(v0 + 248);
  v94 = *(v0 + 240);
  v95 = *(v0 + 216);
  v99 = *(v0 + 192);

  OUTLINED_FUNCTION_15_0();
LABEL_18:

  return v60();
}

void sub_2675FD2E4()
{
  (*(v0[50] + 8))(v0[52], v0[49]);
  v1 = v0[60];
  OUTLINED_FUNCTION_2_13();
  v4 = v0[32];
  v5 = v0[31];
  v6 = v0[30];
  v7 = v0[27];
  v8 = v0[24];

  OUTLINED_FUNCTION_15_0();
  OUTLINED_FUNCTION_5_8();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_2675FD400(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CBFD0, &qword_2676CDEA0);
  v3 = OUTLINED_FUNCTION_4_1(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v25 - v6;
  v26 = MEMORY[0x277D84F90];
  result = sub_267630B8C(a1);
  v9 = result;
  for (i = 0; v9 != i; ++i)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      result = MEMORY[0x26D5FE0E0](i, a1);
    }

    else
    {
      if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_28;
      }

      v11 = *(a1 + 8 * i + 32);
    }

    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_28:
      __break(1u);
      return result;
    }

    if (sub_2676CB29C())
    {
      sub_2676CB1AC();

      v12 = sub_2676CB3FC();
      if (__swift_getEnumTagSinglePayload(v7, 1, v12) == 1)
      {

        result = sub_2675E3BB8(v7);
      }

      else
      {
        sub_2675E3BB8(v7);
        sub_2676CC44C();
        v13 = *(v26 + 16);
        sub_2676CC47C();
        sub_2676CC48C();
        result = sub_2676CC45C();
      }
    }

    else
    {
    }
  }

  v14 = v26;
  v15 = sub_267630B8C(v26);
  if (v15 == sub_267630B8C(a1))
  {
    v27 = MEMORY[0x277D84FA0];
    sub_2675FBEF0(v14, &v27);

    v16 = v27;
    v17 = *(v27 + 16);
    if (v17 == v15)
    {
      v18 = 0;
    }

    else if (v17 && (v19 = *(v27 + 40), sub_2676CC64C(), sub_2676CC66C(), v20 = sub_2676CC67C(), v21 = -1 << *(v16 + 32), v22 = v20 & ~v21, ((*(v16 + 56 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22) & 1) != 0))
    {
      v23 = ~v21;
      do
      {
        v24 = *(*(v16 + 48) + 16 * v22 + 8);
        v18 = v24 != 0;
        if (!v24)
        {
          break;
        }

        v22 = (v22 + 1) & v23;
      }

      while (((*(v16 + 56 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22) & 1) != 0);
    }

    else
    {
      v18 = 1;
    }
  }

  else
  {

    return 1;
  }

  return v18;
}

uint64_t sub_2675FD698(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2675E5BE8;

  return sub_2675FC0C4(a1);
}

unint64_t sub_2675FD730()
{
  result = qword_2801CC408;
  if (!qword_2801CC408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2801CC408);
  }

  return result;
}

uint64_t sub_2675FD784(uint64_t a1, uint64_t a2)
{
  v4 = sub_2676C91DC();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2675FD7E8(uint64_t a1)
{
  v2 = sub_2676C91DC();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t OUTLINED_FUNCTION_2_13()
{
  v2 = v0[51];
  result = v0[52];
  v4 = v0[47];
  v3 = v0[48];
  v5 = v0[46];
  v7 = v0[42];
  v6 = v0[43];
  v8 = v0[39];
  v9 = v0[35];
  v10 = v0[36];
  return result;
}

__n128 __swift_memcpy42_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 26) = *(a2 + 26);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_2675FD890(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 42))
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

uint64_t sub_2675FD8D0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 42) = 1;
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

    *(result + 42) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2675FD92C(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_2676C90FC();
  v2[4] = v3;
  OUTLINED_FUNCTION_1_0(v3);
  v2[5] = v4;
  v6 = *(v5 + 64);
  v2[6] = OUTLINED_FUNCTION_2_0();
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_2801CCB20, &qword_2676CDA80) - 8) + 64);
  v2[7] = OUTLINED_FUNCTION_2_0();
  v8 = *(*(sub_2676CAF8C() - 8) + 64);
  v2[8] = OUTLINED_FUNCTION_2_0();
  v9 = sub_2676C99CC();
  v2[9] = v9;
  OUTLINED_FUNCTION_1_0(v9);
  v2[10] = v10;
  v12 = *(v11 + 64) + 15;
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();
  v13 = sub_2676C9DDC();
  v2[13] = v13;
  OUTLINED_FUNCTION_1_0(v13);
  v2[14] = v14;
  v16 = *(v15 + 64);
  v2[15] = OUTLINED_FUNCTION_2_0();
  v17 = *(*(sub_2676CB48C() - 8) + 64);
  v2[16] = OUTLINED_FUNCTION_2_0();

  return MEMORY[0x2822009F8](sub_2675FDB00, 0, 0);
}

uint64_t sub_2675FDB00()
{
  v1 = v0[16];
  v2 = v0[3];
  type metadata accessor for ReadMailCATsSimple();
  sub_2676CB47C();
  v0[17] = sub_2676CB42C();
  v3 = *(v2 + 40);
  v4 = *(v2 + 41);
  v5 = swift_task_alloc();
  v0[18] = v5;
  *v5 = v0;
  v5[1] = sub_2675FDBD8;

  return sub_267653178(v3, v4);
}

uint64_t sub_2675FDBD8(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 144);
  v6 = *v2;
  OUTLINED_FUNCTION_0_1();
  *v7 = v6;
  v4[19] = v1;

  if (v1)
  {
    v8 = sub_2675FE118;
  }

  else
  {
    v9 = v4[17];

    v4[20] = a1;
    v8 = sub_2675FDD00;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

void sub_2675FDD00()
{
  v1 = v0[15];
  v2 = v0[11];
  v3 = v0[12];
  v4 = v0[9];
  v5 = v0[10];
  v6 = v0[8];
  v8 = v0[5];
  v7 = v0[6];
  v15 = v0[7];
  v16 = v0[4];
  sub_2676C99BC();
  (*(v5 + 16))(v2, v3, v4);
  sub_2676C9D2C();
  sub_2676C9D6C();
  sub_26762D4C8(v6);
  sub_2676C9D3C();
  sub_2676C9D7C();
  sub_2676C9DBC();
  sub_2676C9DAC();
  v9 = sub_2676C9B3C();
  __swift_storeEnumTagSinglePayload(v15, 1, 1, v9);
  sub_2676C9D8C();
  sub_2676C9D9C();
  sub_2676C90EC();
  sub_2676C90DC();
  (*(v8 + 8))(v7, v16);
  sub_2676C9D5C();
  sub_2676CAF6C();
  sub_2676C9D3C();
  (*(v5 + 8))(v3, v4);
  v10 = swift_task_alloc();
  v0[21] = v10;
  *v10 = v0;
  v10[1] = sub_2675FDF3C;
  v11 = v0[20];
  v12 = v0[15];
  v13 = v0[2];
  v14 = v0[3];

  JUMPOUT(0x2676BE6B4);
}

uint64_t sub_2675FDF3C()
{
  v1 = *(*v0 + 168);
  v2 = *v0;
  OUTLINED_FUNCTION_0_1();
  *v3 = v2;

  return MEMORY[0x2822009F8](sub_2675FE030, 0, 0);
}

uint64_t sub_2675FE030()
{
  v1 = *(v0 + 120);
  v2 = *(v0 + 128);
  v3 = *(v0 + 104);
  v4 = *(v0 + 112);
  v6 = *(v0 + 88);
  v5 = *(v0 + 96);
  v8 = *(v0 + 56);
  v7 = *(v0 + 64);
  v9 = *(v0 + 48);

  (*(v4 + 8))(v1, v3);

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_2675FE118()
{
  v2 = v0[16];
  v1 = v0[17];
  v3 = v0[15];
  v5 = v0[11];
  v4 = v0[12];
  v7 = v0[7];
  v6 = v0[8];
  v8 = v0[6];

  v9 = v0[1];
  v10 = v0[19];

  return v9();
}

uint64_t sub_2675FE1DC(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2675FE274;

  return sub_2675FD92C(a1);
}

uint64_t sub_2675FE274()
{
  v1 = *(*v0 + 16);
  v2 = *v0;
  OUTLINED_FUNCTION_0_1();
  *v3 = v2;

  v4 = *(v2 + 8);

  return v4();
}

uint64_t sub_2675FE360(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_2675FE3A0(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

uint64_t sub_2675FE3FC()
{
  OUTLINED_FUNCTION_3_0();
  v1[5] = v2;
  v1[6] = v0;
  v3 = sub_2676C90FC();
  v1[7] = v3;
  OUTLINED_FUNCTION_1_0(v3);
  v1[8] = v4;
  v6 = *(v5 + 64);
  v1[9] = OUTLINED_FUNCTION_2_0();
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_2801CCB20, &qword_2676CDA80) - 8) + 64);
  v1[10] = OUTLINED_FUNCTION_2_0();
  v8 = *(*(sub_2676CAF8C() - 8) + 64);
  v1[11] = OUTLINED_FUNCTION_2_0();
  v9 = sub_2676C99CC();
  v1[12] = v9;
  OUTLINED_FUNCTION_1_0(v9);
  v1[13] = v10;
  v12 = *(v11 + 64) + 15;
  v1[14] = swift_task_alloc();
  v1[15] = swift_task_alloc();
  v13 = sub_2676C9DDC();
  v1[16] = v13;
  OUTLINED_FUNCTION_1_0(v13);
  v1[17] = v14;
  v16 = *(v15 + 64);
  v1[18] = OUTLINED_FUNCTION_2_0();
  v17 = *(*(sub_2676CB48C() - 8) + 64);
  v1[19] = OUTLINED_FUNCTION_2_0();

  return MEMORY[0x2822009F8](sub_2675FE5CC, 0, 0);
}

uint64_t sub_2675FE5CC()
{
  OUTLINED_FUNCTION_3_0();
  v1 = v0[19];
  type metadata accessor for ReadMailCATsSimple();
  sub_2676CB47C();
  v0[20] = sub_2676CB42C();
  v2 = swift_task_alloc();
  v0[21] = v2;
  *v2 = v0;
  v2[1] = sub_2675FE684;

  return sub_267653464();
}

uint64_t sub_2675FE684()
{
  OUTLINED_FUNCTION_3_0();
  v2 = *v1;
  v3 = *v1;
  v3[2] = v1;
  v3[3] = v4;
  v3[4] = v0;
  v5 = v2[21];
  v6 = *v1;
  OUTLINED_FUNCTION_0_1();
  *v7 = v6;
  v3[22] = v0;

  if (v0)
  {
    v8 = sub_2675FEBC8;
  }

  else
  {
    v9 = v3[20];

    v8 = sub_2675FE79C;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

void sub_2675FE79C()
{
  v1 = v0[18];
  v3 = v0[14];
  v2 = v0[15];
  v5 = v0[12];
  v4 = v0[13];
  v6 = v0[11];
  v8 = v0[8];
  v7 = v0[9];
  v17 = v0[10];
  v18 = v0[7];
  v20 = v0[6];
  sub_2676C99BC();
  (*(v4 + 16))(v3, v2, v5);
  sub_2676C9D2C();
  sub_2676C9D6C();
  sub_26762D4C8(v6);
  sub_2676C9D3C();
  sub_2676C9D7C();
  sub_2676C9DBC();
  sub_2676C9DAC();
  v9 = sub_2676C9B3C();
  __swift_storeEnumTagSinglePayload(v17, 1, 1, v9);
  sub_2676C9D8C();
  sub_2676C9D9C();
  sub_2676C90EC();
  sub_2676C90DC();
  (*(v8 + 8))(v7, v18);
  sub_2676C9D5C();
  if ((*(v20 + 40) & 0x80) != 0)
  {
    v10 = v0[18];
    v11 = v0[11];
    sub_2676CAF6C();
    sub_2676C9D3C();
  }

  v12 = v0[3];
  (*(v0[13] + 8))(v0[15], v0[12]);
  v0[23] = v12;
  v13 = swift_task_alloc();
  v0[24] = v13;
  *v13 = v0;
  v13[1] = sub_2675FE9F0;
  v14 = v0[18];
  v15 = v0[5];
  v16 = v0[6];

  JUMPOUT(0x2676BE6B4);
}

uint64_t sub_2675FE9F0()
{
  OUTLINED_FUNCTION_3_0();
  v1 = *(*v0 + 192);
  v2 = *v0;
  OUTLINED_FUNCTION_0_1();
  *v3 = v2;

  return MEMORY[0x2822009F8](sub_2675FEAE0, 0, 0);
}

uint64_t sub_2675FEAE0()
{
  v1 = *(v0 + 144);
  v2 = *(v0 + 152);
  v3 = *(v0 + 128);
  v4 = *(v0 + 136);
  v6 = *(v0 + 112);
  v5 = *(v0 + 120);
  v8 = *(v0 + 80);
  v7 = *(v0 + 88);
  v9 = *(v0 + 72);

  (*(v4 + 8))(v1, v3);

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_2675FEBC8()
{
  v2 = v0[19];
  v1 = v0[20];
  v3 = v0[18];
  v5 = v0[14];
  v4 = v0[15];
  v7 = v0[10];
  v6 = v0[11];
  v8 = v0[9];

  v9 = v0[1];
  v10 = v0[22];

  return v9();
}

uint64_t sub_2675FEC8C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2675DFCCC;

  return sub_2675FE3FC();
}

uint64_t type metadata accessor for Intro()
{
  result = qword_2801CC410;
  if (!qword_2801CC410)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2675FED98()
{
  sub_2675FEE64();
  if (v0 <= 0x3F)
  {
    sub_2675F9EB0();
    if (v1 <= 0x3F)
    {
      sub_2675FEEB4();
      if (v2 <= 0x3F)
      {
        sub_2675FEF18();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_2675FEE64()
{
  if (!qword_2801CC398)
  {
    v0 = sub_2676CC2FC();
    if (!v1)
    {
      atomic_store(v0, &qword_2801CC398);
    }
  }
}

void sub_2675FEEB4()
{
  if (!qword_2801CC3B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2801CC1F8, &qword_2676CEBA0);
    v0 = sub_2676CC2FC();
    if (!v1)
    {
      atomic_store(v0, &qword_2801CC3B0);
    }
  }
}

unint64_t sub_2675FEF18()
{
  result = qword_2801CC420;
  if (!qword_2801CC420)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_2801CC420);
  }

  return result;
}

uint64_t sub_2675FEF74(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  v3 = sub_2676C90FC();
  v2[9] = v3;
  OUTLINED_FUNCTION_1_0(v3);
  v2[10] = v4;
  v6 = *(v5 + 64);
  v2[11] = OUTLINED_FUNCTION_2_0();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2801CCB20, &qword_2676CDA80);
  OUTLINED_FUNCTION_4_1(v7);
  v9 = *(v8 + 64);
  v2[12] = OUTLINED_FUNCTION_2_0();
  v10 = sub_2676CAF8C();
  OUTLINED_FUNCTION_4_1(v10);
  v12 = *(v11 + 64);
  v2[13] = OUTLINED_FUNCTION_2_0();
  v13 = sub_2676C99CC();
  v2[14] = v13;
  OUTLINED_FUNCTION_1_0(v13);
  v2[15] = v14;
  v16 = *(v15 + 64) + 15;
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();
  v17 = sub_2676C9DDC();
  v2[18] = v17;
  OUTLINED_FUNCTION_1_0(v17);
  v2[19] = v18;
  v20 = *(v19 + 64);
  v2[20] = OUTLINED_FUNCTION_2_0();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CBFE8, &unk_2676CD9E0);
  OUTLINED_FUNCTION_4_1(v21);
  v23 = *(v22 + 64);
  v2[21] = OUTLINED_FUNCTION_2_0();
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CBFD0, &qword_2676CDEA0);
  OUTLINED_FUNCTION_4_1(v24);
  v26 = *(v25 + 64);
  v2[22] = OUTLINED_FUNCTION_2_0();
  v27 = sub_2676CB48C();
  OUTLINED_FUNCTION_4_1(v27);
  v29 = *(v28 + 64);
  v2[23] = OUTLINED_FUNCTION_2_0();

  return MEMORY[0x2822009F8](sub_2675FF194, 0, 0);
}

uint64_t sub_2675FF194()
{
  v1 = v0[23];
  v2 = v0[8];
  sub_2676CB28C();
  v3 = type metadata accessor for Intro();
  v0[24] = v3;
  v4 = sub_2675FFBC4(v2 + *(v3 + 32));
  v0[25] = v4;
  sub_2676C9ECC();
  v5 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  sub_2676C992C();
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  type metadata accessor for ReadMailCATsSimple();
  sub_2676CB47C();
  v0[26] = sub_2676CB42C();
  v6 = *v2;
  if (v2[3])
  {
    v7 = v0[22];
    v8 = *(v0[8] + 16);
    sub_2676CBFEC();
    v9 = 0;
  }

  else
  {
    v9 = 1;
  }

  v11 = v0[21];
  v10 = v0[22];
  v12 = v0[8];
  v13 = sub_2676CB3FC();
  __swift_storeEnumTagSinglePayload(v10, v9, 1, v13);
  sub_2675ED65C(v12 + *(v3 + 28), v11, &qword_2801CBFE8, &unk_2676CD9E0);
  v14 = sub_2676C8C8C();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v11, 1, v14);
  v16 = v0[21];
  if (EnumTagSinglePayload == 1)
  {
    sub_2675ED6C0(v0[21], &qword_2801CBFE8, &unk_2676CD9E0);
    v17 = 0;
  }

  else
  {
    v18 = v0[21];
    v17 = sub_267626550();
    OUTLINED_FUNCTION_14_2(v14);
    (*(v19 + 8))(v16, v14);
  }

  v0[27] = v17;
  if ((*(v0[8] + 8) & 0x40) != 0)
  {
    v4 = 0;
  }

  else
  {
  }

  v0[28] = v4;
  v20 = swift_task_alloc();
  v0[29] = v20;
  *v20 = v0;
  v20[1] = sub_2675FF414;
  v21 = v0[22];

  return sub_267652CEC();
}

uint64_t sub_2675FF414()
{
  v2 = *(*v1 + 232);
  v3 = *(*v1 + 224);
  v4 = *(*v1 + 216);
  v5 = *(*v1 + 208);
  v6 = *(*v1 + 176);
  v7 = *v1;
  OUTLINED_FUNCTION_0_1();
  *v8 = v7;
  *(v10 + 240) = v9;
  *(v10 + 248) = v0;

  sub_2675ED6C0(v6, &qword_2801CBFD0, &qword_2676CDEA0);

  if (v0)
  {
    v11 = sub_2675FFAE4;
  }

  else
  {
    v11 = sub_2675FF5B4;
  }

  return MEMORY[0x2822009F8](v11, 0, 0);
}

void sub_2675FF5B4()
{
  v1 = [*(v0 + 240) dialog];
  sub_2675E16F4();
  v2 = sub_2676CC0FC();

  v3 = sub_267630B8C(v2);
  for (i = 0; ; ++i)
  {
    if (v3 == i)
    {
      v25 = *(v0 + 192);
      v7 = *(v0 + 160);
      v9 = *(v0 + 128);
      v8 = *(v0 + 136);
      v11 = *(v0 + 112);
      v10 = *(v0 + 120);
      v12 = *(v0 + 104);
      v13 = *(v0 + 80);
      v14 = *(v0 + 88);
      v21 = *(v0 + 96);
      v22 = *(v0 + 72);
      v23 = *(v0 + 64);

      sub_2676C99BC();
      (*(v10 + 16))(v9, v8, v11);
      sub_2676C9D2C();
      sub_2676C9D6C();
      sub_26762D4C8(v12);
      sub_2676C9D3C();
      sub_2676C9D7C();
      sub_2676C9DBC();
      sub_2676C9DAC();
      v15 = sub_2676C9B3C();
      __swift_storeEnumTagSinglePayload(v21, 1, 1, v15);
      sub_2676C9D8C();
      sub_2676C9D9C();
      sub_2676C90EC();
      sub_2676C90DC();
      (*(v13 + 8))(v14, v22);
      sub_2676C9D5C();
      sub_2675FFF4C(v7, v23);
      (*(v10 + 8))(v8, v11);
      v16 = *(v25 + 36);
      v17 = swift_task_alloc();
      *(v0 + 256) = v17;
      *v17 = v0;
      v17[1] = sub_2675FF8E0;
      v18 = *(v0 + 240);
      v19 = *(v0 + 160);
      v20 = *(v0 + 56);

      JUMPOUT(0x2676BE6B4);
    }

    if ((v2 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x26D5FE0E0](i, v2);
    }

    else
    {
      if (i >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_13;
      }

      v5 = *(v2 + 8 * i + 32);
    }

    v6 = v5;
    if (__OFADD__(i, 1))
    {
      break;
    }

    [v5 setSpokenOnly_];
    [v6 setSpokenOnlyDefined_];
  }

  __break(1u);
LABEL_13:
  __break(1u);
}

uint64_t sub_2675FF8E0()
{
  v1 = *(*v0 + 256);
  v2 = *v0;
  OUTLINED_FUNCTION_0_1();
  *v3 = v2;

  return MEMORY[0x2822009F8](sub_2675FF9D4, 0, 0);
}

uint64_t sub_2675FF9D4()
{
  v1 = *(v0 + 200);
  v3 = *(v0 + 176);
  v2 = *(v0 + 184);
  v5 = *(v0 + 160);
  v4 = *(v0 + 168);
  v6 = *(v0 + 144);
  v7 = *(v0 + 152);
  v9 = *(v0 + 128);
  v8 = *(v0 + 136);
  v12 = *(v0 + 104);
  v13 = *(v0 + 96);
  v14 = *(v0 + 88);

  (*(v7 + 8))(v5, v6);

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_2675FFAE4()
{
  v1 = v0[25];
  v2 = v0[22];
  v3 = v0[23];
  v5 = v0[20];
  v4 = v0[21];
  v7 = v0[16];
  v6 = v0[17];
  v9 = v0[12];
  v8 = v0[13];
  v10 = v0[11];

  v11 = v0[1];
  v12 = v0[31];

  return v11();
}

uint64_t sub_2675FFBC4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC380, &unk_2676CEF40);
  v3 = OUTLINED_FUNCTION_4_1(v2);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v36 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC210, &qword_2676CEDC0);
  v12 = OUTLINED_FUNCTION_4_1(v11);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v36 - v18;
  sub_2675ED65C(a1, v10, &qword_2801CC380, &unk_2676CEF40);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC1F8, &qword_2676CEBA0);
  if (__swift_getEnumTagSinglePayload(v10, 1, v20) != 1)
  {
    v24 = *(v20 + 48);
    sub_2675F2D78(v10, v19);
    v25 = sub_2676C90CC();
    if (__swift_getEnumTagSinglePayload(v19, 1, v25) == 1)
    {
      sub_2675ED6C0(&v10[v24], &qword_2801CC210, &qword_2676CEDC0);
      v23 = v19;
      v21 = &qword_2801CC210;
      v22 = &qword_2676CEDC0;
      goto LABEL_5;
    }

    sub_2676C908C();
    OUTLINED_FUNCTION_14_2(v25);
    v28 = *(v27 + 8);
    v28(v19, v25);
    sub_2675ED6C0(&v10[v24], &qword_2801CC210, &qword_2676CEDC0);
    v29 = sub_2676CB27C();
    v30 = *(v29 + 48);
    v31 = *(v29 + 52);
    swift_allocObject();
    sub_2676CB26C();
    sub_2676CB24C();

    sub_2675ED65C(a1, v8, &qword_2801CC380, &unk_2676CEF40);
    if (__swift_getEnumTagSinglePayload(v8, 1, v20) == 1)
    {
      v32 = &qword_2801CC380;
      v33 = &unk_2676CEF40;
      v34 = v8;
    }

    else
    {
      sub_2675F2D78(&v8[*(v20 + 48)], v17);
      if (__swift_getEnumTagSinglePayload(v17, 1, v25) != 1)
      {
        sub_2676C908C();
        v28(v17, v25);
        sub_2675ED6C0(v8, &qword_2801CC210, &qword_2676CEDC0);
        goto LABEL_12;
      }

      sub_2675ED6C0(v8, &qword_2801CC210, &qword_2676CEDC0);
      v34 = v17;
      v32 = &qword_2801CC210;
      v33 = &qword_2676CEDC0;
    }

    sub_2675ED6C0(v34, v32, v33);
LABEL_12:
    sub_2676CB23C();

    v26 = sub_2676CB25C();

    return v26;
  }

  v21 = &qword_2801CC380;
  v22 = &unk_2676CEF40;
  v23 = v10;
LABEL_5:
  sub_2675ED6C0(v23, v21, v22);
  return 0;
}

uint64_t sub_2675FFF4C(uint64_t a1, uint64_t a2)
{
  v3 = sub_2676CAF8C();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC428, &unk_2676CEDD0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v21 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC430, &unk_2676D0440);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v21 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2801CCB20, &qword_2676CDA80);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v21 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CBF60, &unk_2676CEDE0);
  __swift_storeEnumTagSinglePayload(v8, 1, 1, v18);
  sub_2676CA3AC();
  sub_2676299B8();
  (*(v10 + 8))(v13, v9);
  v19 = sub_2676C9B3C();
  __swift_storeEnumTagSinglePayload(v17, 0, 1, v19);
  result = sub_2676C9D8C();
  if ((*(a2 + 8) & 0x80) != 0)
  {
    sub_2676CAF6C();
    return sub_2676C9D3C();
  }

  return result;
}

uint64_t sub_267600184(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2675FE274;

  return sub_2675FEF74(a1);
}

void *sub_26760021C()
{
  type metadata accessor for UILabels();
  swift_allocObject();
  result = sub_2676002E4();
  qword_2801D3CD0 = result;
  return result;
}

uint64_t sub_267600258()
{
  v0 = *(*(sub_2676CB48C() - 8) + 64);
  MEMORY[0x28223BE20]();
  type metadata accessor for MailLabelCATs();
  sub_2676CB47C();
  result = sub_2676CB3BC();
  qword_2801CC438 = result;
  return result;
}

void *sub_2676002E4()
{
  v1 = v0;
  v241 = type metadata accessor for Signpost.OpenSignpost();
  v2 = *(*(v241 - 8) + 64);
  (MEMORY[0x28223BE20])();
  v242 = &v216 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC440, &qword_2676CEEF0) - 8) + 64);
  v5 = (MEMORY[0x28223BE20])();
  v240 = &v216 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v239 = &v216 - v8;
  v9 = MEMORY[0x28223BE20](v7);
  v238 = &v216 - v10;
  v11 = MEMORY[0x28223BE20](v9);
  v237 = &v216 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v236 = &v216 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v235 = &v216 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v234 = &v216 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v233 = &v216 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v232 = &v216 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v231 = &v216 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v230 = &v216 - v26;
  v27 = MEMORY[0x28223BE20](v25);
  v229 = &v216 - v28;
  v29 = MEMORY[0x28223BE20](v27);
  v228 = &v216 - v30;
  v31 = MEMORY[0x28223BE20](v29);
  v227 = &v216 - v32;
  v33 = MEMORY[0x28223BE20](v31);
  v226 = &v216 - v34;
  v35 = MEMORY[0x28223BE20](v33);
  v225 = &v216 - v36;
  v37 = MEMORY[0x28223BE20](v35);
  v224 = &v216 - v38;
  v39 = MEMORY[0x28223BE20](v37);
  v223 = &v216 - v40;
  v41 = MEMORY[0x28223BE20](v39);
  v222 = &v216 - v42;
  v43 = MEMORY[0x28223BE20](v41);
  v221 = &v216 - v44;
  v45 = MEMORY[0x28223BE20](v43);
  v220 = &v216 - v46;
  v47 = MEMORY[0x28223BE20](v45);
  v219 = &v216 - v48;
  v49 = MEMORY[0x28223BE20](v47);
  v218 = &v216 - v50;
  v51 = MEMORY[0x28223BE20](v49);
  v217 = &v216 - v52;
  v53 = MEMORY[0x28223BE20](v51);
  v216 = &v216 - v54;
  v55 = MEMORY[0x28223BE20](v53);
  v57 = &v216 - v56;
  v58 = MEMORY[0x28223BE20](v55);
  v60 = &v216 - v59;
  v61 = MEMORY[0x28223BE20](v58);
  v63 = &v216 - v62;
  MEMORY[0x28223BE20](v61);
  v65 = &v216 - v64;
  if (qword_2801CBA78 != -1)
  {
    swift_once();
  }

  sub_2676CB3AC();
  v66 = sub_2676CC68C();
  if (v67)
  {
    v68 = v66;
  }

  else
  {
    v68 = 0;
  }

  if (v67)
  {
    v69 = v67;
  }

  else
  {
    v69 = 0xE000000000000000;
  }

  sub_2676011FC(v65);
  v1[2] = v68;
  v1[3] = v69;
  sub_2676CB3AC();
  v70 = sub_2676CC68C();
  if (v71)
  {
    v72 = v70;
  }

  else
  {
    v72 = 0;
  }

  if (v71)
  {
    v73 = v71;
  }

  else
  {
    v73 = 0xE000000000000000;
  }

  sub_2676011FC(v63);
  v1[4] = v72;
  v1[5] = v73;
  sub_26761A0EC();
  v74 = sub_2676CC68C();
  if (v75)
  {
    v76 = v74;
  }

  else
  {
    v76 = 0;
  }

  if (v75)
  {
    v77 = v75;
  }

  else
  {
    v77 = 0xE000000000000000;
  }

  sub_2676011FC(v60);
  v1[6] = v76;
  v1[7] = v77;
  v78 = MEMORY[0x277D84F90];
  sub_2676CB3AC();
  v79 = sub_2676CC68C();
  if (v80)
  {
    v81 = v79;
  }

  else
  {
    v81 = 0;
  }

  if (v80)
  {
    v82 = v80;
  }

  else
  {
    v82 = 0xE000000000000000;
  }

  sub_2676011FC(v57);
  v1[8] = v81;
  v1[9] = v82;
  v83 = v216;
  sub_26761A10C();
  v84 = sub_2676CC68C();
  if (v85)
  {
    v86 = v84;
  }

  else
  {
    v86 = 0;
  }

  if (v85)
  {
    v87 = v85;
  }

  else
  {
    v87 = 0xE000000000000000;
  }

  sub_2676011FC(v83);
  v1[10] = v86;
  v1[11] = v87;
  v88 = v217;
  sub_26761A1AC(v78);
  v89 = sub_2676CC68C();
  if (v90)
  {
    v91 = v89;
  }

  else
  {
    v91 = 0;
  }

  if (v90)
  {
    v92 = v90;
  }

  else
  {
    v92 = 0xE000000000000000;
  }

  sub_2676011FC(v88);
  v1[12] = v91;
  v1[13] = v92;
  v93 = v218;
  sub_26761A28C();
  v94 = sub_2676CC68C();
  if (v95)
  {
    v96 = v94;
  }

  else
  {
    v96 = 0;
  }

  if (v95)
  {
    v97 = v95;
  }

  else
  {
    v97 = 0xE000000000000000;
  }

  sub_2676011FC(v93);
  v1[14] = v96;
  v1[15] = v97;
  v98 = v219;
  sub_26761A2AC();
  v99 = sub_2676CC68C();
  if (v100)
  {
    v101 = v99;
  }

  else
  {
    v101 = 0;
  }

  if (v100)
  {
    v102 = v100;
  }

  else
  {
    v102 = 0xE000000000000000;
  }

  sub_2676011FC(v98);
  v1[16] = v101;
  v1[17] = v102;
  v103 = v220;
  sub_26761A18C();
  v104 = sub_2676CC68C();
  if (v105)
  {
    v106 = v104;
  }

  else
  {
    v106 = 0;
  }

  if (v105)
  {
    v107 = v105;
  }

  else
  {
    v107 = 0xE000000000000000;
  }

  sub_2676011FC(v103);
  v1[18] = v106;
  v1[19] = v107;
  v108 = v221;
  sub_26761A12C();
  v109 = sub_2676CC68C();
  if (v110)
  {
    v111 = v109;
  }

  else
  {
    v111 = 0;
  }

  if (v110)
  {
    v112 = v110;
  }

  else
  {
    v112 = 0xE000000000000000;
  }

  sub_2676011FC(v108);
  v1[20] = v111;
  v1[21] = v112;
  v113 = v222;
  sub_26761A14C();
  v114 = sub_2676CC68C();
  if (v115)
  {
    v116 = v114;
  }

  else
  {
    v116 = 0;
  }

  if (v115)
  {
    v117 = v115;
  }

  else
  {
    v117 = 0xE000000000000000;
  }

  sub_2676011FC(v113);
  v1[22] = v116;
  v1[23] = v117;
  v118 = v223;
  sub_26761A16C();
  v119 = sub_2676CC68C();
  if (v120)
  {
    v121 = v119;
  }

  else
  {
    v121 = 0;
  }

  if (v120)
  {
    v122 = v120;
  }

  else
  {
    v122 = 0xE000000000000000;
  }

  sub_2676011FC(v118);
  v1[24] = v121;
  v1[25] = v122;
  v123 = v224;
  sub_2676CB3AC();
  v124 = sub_2676CC68C();
  if (v125)
  {
    v126 = v124;
  }

  else
  {
    v126 = 0;
  }

  if (v125)
  {
    v127 = v125;
  }

  else
  {
    v127 = 0xE000000000000000;
  }

  sub_2676011FC(v123);
  v1[26] = v126;
  v1[27] = v127;
  v128 = v225;
  sub_26761A2CC();
  v129 = sub_2676CC68C();
  if (v130)
  {
    v131 = v129;
  }

  else
  {
    v131 = 0;
  }

  if (v130)
  {
    v132 = v130;
  }

  else
  {
    v132 = 0xE000000000000000;
  }

  sub_2676011FC(v128);
  v1[28] = v131;
  v1[29] = v132;
  v133 = v226;
  sub_26761A4EC();
  v134 = sub_2676CC68C();
  if (v135)
  {
    v136 = v134;
  }

  else
  {
    v136 = 0;
  }

  if (v135)
  {
    v137 = v135;
  }

  else
  {
    v137 = 0xE000000000000000;
  }

  sub_2676011FC(v133);
  v1[30] = v136;
  v1[31] = v137;
  v138 = v227;
  sub_26761A48C();
  v139 = sub_2676CC68C();
  if (v140)
  {
    v141 = v139;
  }

  else
  {
    v141 = 0;
  }

  if (v140)
  {
    v142 = v140;
  }

  else
  {
    v142 = 0xE000000000000000;
  }

  sub_2676011FC(v138);
  v1[32] = v141;
  v1[33] = v142;
  v143 = v228;
  sub_2676CB3AC();
  v144 = sub_2676CC68C();
  if (v145)
  {
    v146 = v144;
  }

  else
  {
    v146 = 0;
  }

  if (v145)
  {
    v147 = v145;
  }

  else
  {
    v147 = 0xE000000000000000;
  }

  sub_2676011FC(v143);
  v1[34] = v146;
  v1[35] = v147;
  v148 = v229;
  sub_2676CB3AC();
  v149 = sub_2676CC68C();
  if (v150)
  {
    v151 = v149;
  }

  else
  {
    v151 = 0;
  }

  if (v150)
  {
    v152 = v150;
  }

  else
  {
    v152 = 0xE000000000000000;
  }

  sub_2676011FC(v148);
  v1[36] = v151;
  v1[37] = v152;
  v153 = v230;
  sub_26761A4AC();
  v154 = sub_2676CC68C();
  if (v155)
  {
    v156 = v154;
  }

  else
  {
    v156 = 0;
  }

  if (v155)
  {
    v157 = v155;
  }

  else
  {
    v157 = 0xE000000000000000;
  }

  sub_2676011FC(v153);
  v1[38] = v156;
  v1[39] = v157;
  v158 = v231;
  sub_26761A4CC();
  v159 = sub_2676CC68C();
  if (v160)
  {
    v161 = v159;
  }

  else
  {
    v161 = 0;
  }

  if (v160)
  {
    v162 = v160;
  }

  else
  {
    v162 = 0xE000000000000000;
  }

  sub_2676011FC(v158);
  v1[40] = v161;
  v1[41] = v162;
  v163 = v232;
  sub_2676CB3AC();
  v164 = sub_2676CC68C();
  if (v165)
  {
    v166 = v164;
  }

  else
  {
    v166 = 0;
  }

  if (v165)
  {
    v167 = v165;
  }

  else
  {
    v167 = 0xE000000000000000;
  }

  sub_2676011FC(v163);
  v1[42] = v166;
  v1[43] = v167;
  v168 = v233;
  sub_26761A50C();
  v169 = sub_2676CC68C();
  if (v170)
  {
    v171 = v169;
  }

  else
  {
    v171 = 0;
  }

  if (v170)
  {
    v172 = v170;
  }

  else
  {
    v172 = 0xE000000000000000;
  }

  sub_2676011FC(v168);
  v1[44] = v171;
  v1[45] = v172;
  v173 = v234;
  sub_2676CB3AC();
  v174 = sub_2676CC68C();
  if (v175)
  {
    v176 = v174;
  }

  else
  {
    v176 = 0;
  }

  if (v175)
  {
    v177 = v175;
  }

  else
  {
    v177 = 0xE000000000000000;
  }

  sub_2676011FC(v173);
  v1[46] = v176;
  v1[47] = v177;
  v178 = v235;
  sub_26761A52C();
  v179 = sub_2676CC68C();
  if (v180)
  {
    v181 = v179;
  }

  else
  {
    v181 = 0;
  }

  if (v180)
  {
    v182 = v180;
  }

  else
  {
    v182 = 0xE000000000000000;
  }

  sub_2676011FC(v178);
  v1[48] = v181;
  v1[49] = v182;
  v183 = v236;
  sub_26761A54C();
  v184 = sub_2676CC68C();
  if (v185)
  {
    v186 = v184;
  }

  else
  {
    v186 = 0;
  }

  if (v185)
  {
    v187 = v185;
  }

  else
  {
    v187 = 0xE000000000000000;
  }

  sub_2676011FC(v183);
  v1[50] = v186;
  v1[51] = v187;
  v188 = v237;
  sub_2676CB3AC();
  v189 = sub_2676CC68C();
  if (v190)
  {
    v191 = v189;
  }

  else
  {
    v191 = 0;
  }

  if (v190)
  {
    v192 = v190;
  }

  else
  {
    v192 = 0xE000000000000000;
  }

  sub_2676011FC(v188);
  v1[52] = v191;
  v1[53] = v192;
  v193 = v238;
  sub_26761A58C();
  v194 = sub_2676CC68C();
  if (v195)
  {
    v196 = v194;
  }

  else
  {
    v196 = 0;
  }

  if (v195)
  {
    v197 = v195;
  }

  else
  {
    v197 = 0xE000000000000000;
  }

  sub_2676011FC(v193);
  v1[54] = v196;
  v1[55] = v197;
  v198 = v239;
  sub_26761A56C();
  v199 = sub_2676CC68C();
  if (v200)
  {
    v201 = v199;
  }

  else
  {
    v201 = 0;
  }

  if (v200)
  {
    v202 = v200;
  }

  else
  {
    v202 = 0xE000000000000000;
  }

  sub_2676011FC(v198);
  v1[56] = v201;
  v1[57] = v202;
  v203 = v240;
  sub_26761A5AC();
  v204 = sub_2676CC68C();
  if (v205)
  {
    v206 = v204;
  }

  else
  {
    v206 = 0;
  }

  if (v205)
  {
    v207 = v205;
  }

  else
  {
    v207 = 0xE000000000000000;
  }

  sub_2676011FC(v203);
  v1[58] = v206;
  v1[59] = v207;
  if (qword_2801CBAA8 != -1)
  {
    swift_once();
  }

  v208 = qword_2801D3F18;
  v209 = v242;
  sub_2676CBE0C();
  sub_2676CC29C();
  sub_2676CBDFC();
  v210 = v209 + *(v241 + 20);
  *v210 = "UILabelsInit";
  *(v210 + 8) = 12;
  *(v210 + 16) = 2;
  if (qword_2801CBAA0 != -1)
  {
    swift_once();
  }

  v211 = sub_2676CBE4C();
  __swift_project_value_buffer(v211, qword_2801CDC90);
  v212 = sub_2676CBE2C();
  v213 = sub_2676CC23C();
  if (os_log_type_enabled(v212, v213))
  {
    v214 = swift_slowAlloc();
    *v214 = 0;
    _os_log_impl(&dword_2675D4000, v212, v213, "#UILabels initialized now", v214, 2u);
    MEMORY[0x26D5FEA80](v214, -1, -1);
  }

  sub_2676CC28C();
  sub_2676CBDFC();
  sub_2675DE628(v209);
  return v1;
}

uint64_t Result<>.dialog.getter()
{
  result = sub_2676CC68C();
  if (!v1)
  {
    return 0;
  }

  return result;
}

void *sub_2676010A4()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  v4 = v0[9];

  v5 = v0[11];

  v6 = v0[13];

  v7 = v0[15];

  v8 = v0[17];

  v9 = v0[19];

  v10 = v0[21];

  v11 = v0[23];

  v12 = v0[25];

  v13 = v0[27];

  v14 = v0[29];

  v15 = v0[31];

  v16 = v0[33];

  v17 = v0[35];

  v18 = v0[37];

  v19 = v0[39];

  v20 = v0[41];

  v21 = v0[43];

  v22 = v0[45];

  v23 = v0[47];

  v24 = v0[49];

  v25 = v0[51];

  v26 = v0[53];

  v27 = v0[55];

  v28 = v0[57];

  v29 = v0[59];

  return v0;
}

uint64_t sub_2676011A4()
{
  sub_2676010A4();

  return MEMORY[0x2821FE8D8](v0, 480, 7);
}

uint64_t sub_2676011FC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC440, &qword_2676CEEF0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t static MailAddresseePrototype.from(name:email:)@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  v20 = a1;
  v3 = sub_2676C89DC();
  v4 = OUTLINED_FUNCTION_3(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_3_2();
  v11 = v10 - v9;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CBFE8, &unk_2676CD9E0);
  v13 = OUTLINED_FUNCTION_4_1(v12);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v20 - v16;
  v18 = sub_2676C8C8C();
  sub_2676C89CC();
  sub_267609608(&qword_2801CC1A0, MEMORY[0x277CBA2E0]);
  sub_2676C899C();
  (*(v6 + 8))(v11, v3);
  if (__swift_getEnumTagSinglePayload(v17, 1, v18) == 1)
  {
    sub_2675E35CC(v17, &qword_2801CBFE8, &unk_2676CD9E0);

    sub_2676C8C0C();
  }

  else
  {
    (*(*(v18 - 8) + 32))(a2, v17, v18);

    sub_2676C8C2C();

    sub_2676C8C5C();
  }

  return sub_2676C8C3C();
}

id sub_267601604()
{
  result = [objc_allocWithZone(MEMORY[0x277CBDAB8]) init];
  qword_2801D3CD8 = result;
  return result;
}

uint64_t sub_267601638()
{
  sub_2676CBDEC();
  result = sub_2676CBDDC();
  qword_2801D3CE0 = result;
  return result;
}

uint64_t LinkServicesProvider.markMessageAsRead(message:)()
{
  OUTLINED_FUNCTION_3_0();
  v0[7] = v1;
  v2 = sub_2676C89DC();
  v0[8] = v2;
  OUTLINED_FUNCTION_1_0(v2);
  v0[9] = v3;
  v5 = *(v4 + 64);
  v0[10] = OUTLINED_FUNCTION_2_0();
  v6 = sub_2676C8BFC();
  v0[11] = v6;
  OUTLINED_FUNCTION_1_0(v6);
  v0[12] = v7;
  v9 = *(v8 + 64);
  v0[13] = OUTLINED_FUNCTION_2_0();
  v10 = sub_2676C8DAC();
  v0[14] = v10;
  OUTLINED_FUNCTION_1_0(v10);
  v0[15] = v11;
  v13 = *(v12 + 64);
  v0[16] = OUTLINED_FUNCTION_2_0();
  v14 = OUTLINED_FUNCTION_13_5();

  return MEMORY[0x2822009F8](v14, v15, v16);
}

uint64_t sub_2676017AC()
{
  OUTLINED_FUNCTION_12_1();
  v1 = v0[16];
  v2 = v0[10];
  (*(v0[12] + 16))(v0[13], v0[7], v0[11]);
  sub_2676C8D9C();
  OUTLINED_FUNCTION_66();
  v3 = *(MEMORY[0x277CB9BC0] + 4);
  v4 = swift_task_alloc();
  v0[17] = v4;
  v5 = sub_267609608(&qword_2801CC450, MEMORY[0x277CBA4C0]);
  *v4 = v0;
  v4[1] = sub_2676018F0;
  v6 = v0[16];
  v7 = v0[14];
  v8 = v0[10];

  return MEMORY[0x28210B3C8](v0 + 2, v8, 0xD000000000000014, 0x80000002676D6780, v7, v5);
}

uint64_t sub_2676018F0()
{
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_9_3();
  OUTLINED_FUNCTION_8_6();
  *v3 = v2;
  v5 = v4[17];
  v6 = v4[16];
  v7 = v4[15];
  v8 = v4[14];
  v9 = v4[10];
  v10 = v4[9];
  v11 = v4[8];
  v12 = *v1;
  OUTLINED_FUNCTION_0_1();
  *v13 = v12;
  *(v14 + 144) = v0;

  (*(v10 + 8))(v9, v11);
  v15 = *(v7 + 8);
  v16 = OUTLINED_FUNCTION_45();
  v17(v16);
  OUTLINED_FUNCTION_21();

  return MEMORY[0x2822009F8](v18, v19, v20);
}

uint64_t sub_267601AA8()
{
  OUTLINED_FUNCTION_12_1();
  sub_2675E5E30(0, &qword_2801CC458, 0x277D23CA8);
  v1 = swift_dynamicCast();
  if (v1)
  {
  }

  v2 = *(v0 + 128);
  v3 = *(v0 + 104);
  v4 = *(v0 + 80);

  OUTLINED_FUNCTION_17_6();

  return v5(v1);
}

uint64_t sub_267601B70()
{
  OUTLINED_FUNCTION_3_0();
  v1 = v0[16];
  v2 = v0[13];
  v3 = v0[10];

  OUTLINED_FUNCTION_17_6();
  v5 = v0[18];

  return v4(0);
}

uint64_t LinkServicesProvider.performSendMail(intent:)()
{
  OUTLINED_FUNCTION_3_0();
  v0[7] = v1;
  v0[8] = v2;
  v3 = sub_2676C89DC();
  v0[9] = v3;
  OUTLINED_FUNCTION_1_0(v3);
  v0[10] = v4;
  v6 = *(v5 + 64);
  v0[11] = OUTLINED_FUNCTION_2_0();
  v7 = sub_2676C8D8C();
  v0[12] = v7;
  OUTLINED_FUNCTION_1_0(v7);
  v0[13] = v8;
  v10 = *(v9 + 64);
  v0[14] = OUTLINED_FUNCTION_2_0();
  v11 = OUTLINED_FUNCTION_13_5();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_267601CD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_33_1();
  a19 = v21;
  a20 = v22;
  OUTLINED_FUNCTION_44();
  a18 = v20;
  if (qword_2801CBAA0 != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v24 = v20[13];
  v23 = v20[14];
  v25 = v20[12];
  v26 = v20[8];
  v27 = sub_2676CBE4C();
  v28 = __swift_project_value_buffer(v27, qword_2801CDC90);
  (*(v24 + 16))(v23, v26, v25);
  v29 = sub_2676CBE2C();
  LOBYTE(v26) = sub_2676CC23C();
  v30 = os_log_type_enabled(v29, v26);
  v32 = v20[13];
  v31 = v20[14];
  v33 = v20[12];
  if (v30)
  {
    OUTLINED_FUNCTION_5_3();
    v34 = OUTLINED_FUNCTION_36_0();
    a9 = v34;
    *v28 = 136315138;
    v35 = SendMailIntentPrototype.debugDescription.getter();
    v37 = v36;
    (*(v32 + 8))(v31, v33);
    v38 = sub_2676B0B84(v35, v37, &a9);

    *(v28 + 4) = v38;
    OUTLINED_FUNCTION_65(&dword_2675D4000, v39, v40, "#LinkServicesProvider.performSendMail: performing SendMail intent %s");
    __swift_destroy_boxed_opaque_existential_1(v34);
    OUTLINED_FUNCTION_2_5();
    OUTLINED_FUNCTION_19_2();
  }

  else
  {

    (*(v32 + 8))(v31, v33);
  }

  v41 = v20[11];
  OUTLINED_FUNCTION_66();
  v42 = *(MEMORY[0x277CB9BC0] + 4);
  v43 = swift_task_alloc();
  v20[15] = v43;
  sub_267609608(&qword_2801CC460, MEMORY[0x277CBA350]);
  *v43 = v20;
  v43[1] = sub_267601F18;
  v44 = v20[11];
  v45 = v20[12];
  v46 = v20[8];
  OUTLINED_FUNCTION_32_1();

  return MEMORY[0x28210B3C8](v47, v48, v49, v50, v51, v52);
}

uint64_t sub_267601F18()
{
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_9_3();
  OUTLINED_FUNCTION_8_6();
  *v3 = v2;
  v5 = v4[15];
  v6 = v4[11];
  v7 = v4[10];
  v8 = v4[9];
  v9 = *v1;
  OUTLINED_FUNCTION_0_1();
  *v10 = v9;
  *(v11 + 128) = v0;

  v12 = *(v7 + 8);
  v13 = OUTLINED_FUNCTION_45();
  v14(v13);
  OUTLINED_FUNCTION_21();

  return MEMORY[0x2822009F8](v15, v16, v17);
}

uint64_t sub_26760206C()
{
  OUTLINED_FUNCTION_3_0();
  sub_2675E5E30(0, &qword_2801CC458, 0x277D23CA8);
  swift_dynamicCast();
  v1 = v0[6];
  v2 = [v1 output];

  v3 = v0[14];
  v4 = v0[11];
  v5 = v0[7];
  *v5 = v2;
  *(v5 + 8) = 0;

  OUTLINED_FUNCTION_15_0();

  return v6();
}

uint64_t sub_267602138()
{
  OUTLINED_FUNCTION_3_0();
  v1 = v0[14];
  v2 = v0[11];
  v3 = v0[7];
  *v3 = v0[16];
  *(v3 + 8) = 1;

  OUTLINED_FUNCTION_15_0();

  return v4();
}

uint64_t LinkServicesProvider.performGetMail(subject:isRead:isNew:fromAddressee:dateTimeRange:)()
{
  OUTLINED_FUNCTION_3_0();
  *(v0 + 48) = v1;
  *(v0 + 56) = v2;
  *(v0 + 427) = v3;
  *(v0 + 426) = v4;
  *(v0 + 32) = v5;
  *(v0 + 40) = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC468, &qword_2676CEF28);
  *(v0 + 64) = v7;
  OUTLINED_FUNCTION_1_0(v7);
  *(v0 + 72) = v8;
  v10 = *(v9 + 64);
  *(v0 + 80) = OUTLINED_FUNCTION_2_0();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC470, &qword_2676CEF30);
  *(v0 + 88) = v11;
  OUTLINED_FUNCTION_1_0(v11);
  *(v0 + 96) = v12;
  v14 = *(v13 + 64);
  *(v0 + 104) = OUTLINED_FUNCTION_2_0();
  v15 = sub_2676C89DC();
  *(v0 + 112) = v15;
  OUTLINED_FUNCTION_1_0(v15);
  *(v0 + 120) = v16;
  v18 = *(v17 + 64);
  *(v0 + 128) = OUTLINED_FUNCTION_2_0();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC478, &qword_2676CEF38);
  *(v0 + 136) = v19;
  OUTLINED_FUNCTION_1_0(v19);
  *(v0 + 144) = v20;
  v22 = *(v21 + 64);
  *(v0 + 152) = OUTLINED_FUNCTION_2_0();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CBFE8, &unk_2676CD9E0);
  OUTLINED_FUNCTION_4_1(v23);
  v25 = *(v24 + 64);
  *(v0 + 160) = OUTLINED_FUNCTION_2_0();
  v26 = sub_2676C8C8C();
  *(v0 + 168) = v26;
  OUTLINED_FUNCTION_1_0(v26);
  *(v0 + 176) = v27;
  v29 = *(v28 + 64);
  *(v0 + 184) = OUTLINED_FUNCTION_19();
  *(v0 + 192) = swift_task_alloc();
  *(v0 + 200) = swift_task_alloc();
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC380, &unk_2676CEF40);
  OUTLINED_FUNCTION_4_1(v30);
  v32 = *(v31 + 64);
  *(v0 + 208) = OUTLINED_FUNCTION_19();
  *(v0 + 216) = swift_task_alloc();
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC210, &qword_2676CEDC0);
  OUTLINED_FUNCTION_4_1(v33);
  v35 = *(v34 + 64);
  *(v0 + 224) = OUTLINED_FUNCTION_19();
  *(v0 + 232) = swift_task_alloc();
  v36 = sub_2676C90CC();
  *(v0 + 240) = v36;
  OUTLINED_FUNCTION_1_0(v36);
  *(v0 + 248) = v37;
  v39 = *(v38 + 64);
  *(v0 + 256) = OUTLINED_FUNCTION_19();
  *(v0 + 264) = swift_task_alloc();
  *(v0 + 272) = swift_task_alloc();
  *(v0 + 280) = swift_task_alloc();
  *(v0 + 288) = swift_task_alloc();
  *(v0 + 296) = swift_task_alloc();
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC480, &qword_2676CEF50);
  *(v0 + 304) = v40;
  OUTLINED_FUNCTION_1_0(v40);
  *(v0 + 312) = v41;
  v43 = *(v42 + 64);
  *(v0 + 320) = OUTLINED_FUNCTION_2_0();
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC488, &unk_2676CEF58);
  *(v0 + 328) = v44;
  OUTLINED_FUNCTION_1_0(v44);
  *(v0 + 336) = v45;
  v47 = *(v46 + 64);
  *(v0 + 344) = OUTLINED_FUNCTION_19();
  *(v0 + 352) = swift_task_alloc();
  *(v0 + 360) = swift_task_alloc();
  *(v0 + 368) = swift_task_alloc();
  *(v0 + 376) = swift_task_alloc();
  v48 = OUTLINED_FUNCTION_13_5();

  return MEMORY[0x2822009F8](v48, v49, v50);
}

uint64_t sub_2676025D0()
{
  v237 = v0;
  v2 = &off_2676CD000;
  if (*(v0 + 40))
  {
    v3 = qword_2801CBAA0;
    v4 = *(v0 + 40);

    if (v3 != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v5 = sub_2676CBE4C();
    OUTLINED_FUNCTION_24_2(v5, qword_2801CDC90);

    v6 = sub_2676CBE2C();
    v7 = sub_2676CC23C();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = *(v0 + 32);
      OUTLINED_FUNCTION_5_3();
      v9 = OUTLINED_FUNCTION_36_0();
      v236 = v9;
      *v1 = 136315138;
      v10 = objc_opt_self();
      v11 = sub_2676CBF3C();
      v12 = [v10 ec:v11 partiallyRedactedStringForSubjectOrSummary:?];

      v13 = sub_2676CBF6C();
      v15 = v14;

      v16 = sub_2676B0B84(v13, v15, &v236);

      *(v1 + 4) = v16;
      OUTLINED_FUNCTION_12_3();
      _os_log_impl(v17, v18, v19, v20, v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v9);
      OUTLINED_FUNCTION_2_5();
      OUTLINED_FUNCTION_19_2();
    }

    v22 = *(v0 + 376);
    v24 = *(v0 + 312);
    v23 = *(v0 + 320);
    v25 = *(v0 + 304);
    v27 = *(v0 + 32);
    v26 = *(v0 + 40);
    swift_getKeyPath();
    (*(v24 + 104))(v23, *MEMORY[0x277CBA020], v25);
    *(v0 + 16) = v27;
    *(v0 + 24) = v26;
    OUTLINED_FUNCTION_0_11();
    sub_267609608(v28, v29);
    sub_2676C89FC();
    v30 = sub_26760735C(0, 1, 1, MEMORY[0x277D84F90]);
    v31 = *(v30 + 24);
    if (*(v30 + 16) >= v31 >> 1)
    {
      v30 = OUTLINED_FUNCTION_41(v31 > 1);
    }

    v32 = *(v0 + 376);
    v33 = *(v0 + 328);
    v34 = OUTLINED_FUNCTION_9_6(*(v0 + 336));
    v35(v34);
  }

  else
  {
    v30 = MEMORY[0x277D84F90];
  }

  sub_267607B28(*(v0 + 56), *(v0 + 216), &qword_2801CC380, &unk_2676CEF40);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC1F8, &qword_2676CEBA0);
  v37 = OUTLINED_FUNCTION_57();
  v39 = *(v0 + 232);
  v38 = *(v0 + 240);
  v40 = *(v0 + 216);
  if (v37 == 1)
  {
    sub_2675E35CC(*(v0 + 216), &qword_2801CC380, &unk_2676CEF40);
    __swift_storeEnumTagSinglePayload(v39, 1, 1, v38);
LABEL_13:
    v42 = *(v0 + 232);
LABEL_14:
    sub_2675E35CC(v42, &qword_2801CC210, &qword_2676CEDC0);
    goto LABEL_15;
  }

  v41 = *(v36 + 48);
  sub_2675F2D78(*(v0 + 216), *(v0 + 232));
  sub_2675E35CC(v40 + v41, &qword_2801CC210, &qword_2676CEDC0);
  if (__swift_getEnumTagSinglePayload(v39, 1, v38) == 1)
  {
    goto LABEL_13;
  }

  v68 = *(v0 + 208);
  v69 = *(v0 + 56);
  v70 = *(*(v0 + 248) + 32);
  v70(*(v0 + 296), *(v0 + 232), *(v0 + 240));
  sub_267607B28(v69, v68, &qword_2801CC380, &unk_2676CEF40);
  if (OUTLINED_FUNCTION_57() == 1)
  {
    v71 = *(v0 + 240);
    v72 = *(v0 + 224);
    v39 = *(v0 + 208);
    (*(*(v0 + 248) + 8))(*(v0 + 296), v71);
    sub_2675E35CC(v39, &qword_2801CC380, &unk_2676CEF40);
    __swift_storeEnumTagSinglePayload(v72, 1, 1, v71);
LABEL_65:
    v42 = *(v0 + 224);
    goto LABEL_14;
  }

  v163 = *(v0 + 240);
  v39 = *(v0 + 224);
  v164 = *(v0 + 208);
  sub_2675F2D78(v164 + *(v36 + 48), v39);
  sub_2675E35CC(v164, &qword_2801CC210, &qword_2676CEDC0);
  if (__swift_getEnumTagSinglePayload(v39, 1, v163) == 1)
  {
    (*(*(v0 + 248) + 8))(*(v0 + 296), *(v0 + 240));
    goto LABEL_65;
  }

  v235 = v30;
  v70(*(v0 + 288), *(v0 + 224), *(v0 + 240));
  OUTLINED_FUNCTION_54();
  if (!v44)
  {
    OUTLINED_FUNCTION_0();
  }

  v166 = *(v0 + 288);
  v165 = *(v0 + 296);
  v168 = *(v0 + 272);
  v167 = *(v0 + 280);
  v170 = *(v0 + 240);
  v169 = *(v0 + 248);
  v171 = sub_2676CBE4C();
  __swift_project_value_buffer(v171, qword_2801CDC90);
  v172 = *(v169 + 16);
  v172(v167, v165, v170);
  v232 = v172;
  v172(v168, v166, v170);
  v173 = sub_2676CBE2C();
  v174 = sub_2676CC23C();
  v175 = os_log_type_enabled(v173, v174);
  v177 = *(v0 + 272);
  v176 = *(v0 + 280);
  v179 = *(v0 + 240);
  v178 = *(v0 + 248);
  if (v175)
  {
    v223 = swift_slowAlloc();
    v236 = swift_slowAlloc();
    *v223 = 136315394;
    sub_267609608(&qword_2801CC4A8, MEMORY[0x277CC9578]);
    v180 = sub_2676CC56C();
    log = v173;
    v182 = v181;
    v183 = *(v178 + 8);
    v183(v176, v179);
    v184 = sub_2676B0B84(v180, v182, &v236);

    *(v223 + 4) = v184;
    *(v223 + 12) = 2080;
    v185 = sub_2676CC56C();
    v187 = v186;
    v188 = OUTLINED_FUNCTION_61();
    v229 = v183;
    (v183)(v188);
    v189 = sub_2676B0B84(v185, v187, &v236);

    *(v223 + 14) = v189;
    _os_log_impl(&dword_2675D4000, log, v174, "#LinkServicesProvider.performGetMail: getting mail for date range: %s - %s", v223, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_2_5();
    OUTLINED_FUNCTION_2_5();
  }

  else
  {

    v190 = *(v178 + 8);
    v190(v177, v179);
    v229 = v190;
    v190(v176, v179);
  }

  v191 = *(v0 + 368);
  v193 = *(v0 + 288);
  v192 = *(v0 + 296);
  v195 = *(v0 + 256);
  v194 = *(v0 + 264);
  v196 = *(v0 + 240);
  swift_getKeyPath();
  v232(v194, v192, v196);
  v232(v195, v193, v196);
  OUTLINED_FUNCTION_0_11();
  sub_267609608(v197, v198);
  sub_2676C89EC();
  v199 = v235;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v218 = *(v235 + 16);
    v219 = OUTLINED_FUNCTION_18_4();
    v199 = sub_26760735C(v219, v220, v221, v235);
  }

  v201 = *(v199 + 16);
  v200 = *(v199 + 24);
  if (v201 >= v200 >> 1)
  {
    v199 = sub_26760735C(v200 > 1, v201 + 1, 1, v199);
  }

  v202 = *(v0 + 368);
  v39 = *(v0 + 328);
  v203 = *(v0 + 336);
  v204 = *(v0 + 296);
  v205 = *(v0 + 240);
  v229(*(v0 + 288), v205);
  v229(v204, v205);
  v30 = v199;
  *(v199 + 16) = v201 + 1;
  (*(v203 + 32))(v199 + ((*(v203 + 80) + 32) & ~*(v203 + 80)) + *(v203 + 72) * v201, v202, v39);
  v2 = &off_2676CD000;
LABEL_15:
  v43 = *(v0 + 168);
  sub_267607B28(*(v0 + 48), *(v0 + 160), &qword_2801CBFE8, &unk_2676CD9E0);
  if (OUTLINED_FUNCTION_57() == 1)
  {
    sub_2675E35CC(*(v0 + 160), &qword_2801CBFE8, &unk_2676CD9E0);
  }

  else
  {
    (*(*(v0 + 176) + 32))(*(v0 + 200), *(v0 + 160), *(v0 + 168));
    OUTLINED_FUNCTION_54();
    if (!v44)
    {
      OUTLINED_FUNCTION_0();
    }

    v233 = v30;
    v46 = *(v0 + 192);
    v45 = *(v0 + 200);
    v48 = *(v0 + 168);
    v47 = *(v0 + 176);
    v49 = sub_2676CBE4C();
    __swift_project_value_buffer(v49, qword_2801CDC90);
    v51 = *(v47 + 16);
    v50 = v47 + 16;
    v230 = v51;
    v51(v46, v45, v48);
    v52 = sub_2676CBE2C();
    v53 = sub_2676CC23C();
    v54 = OUTLINED_FUNCTION_35_0(v53);
    v55 = *(v0 + 192);
    if (v54)
    {
      v56 = *(v0 + 176);
      v57 = *(v0 + 184);
      v58 = *(v0 + 168);
      OUTLINED_FUNCTION_5_3();
      v225 = OUTLINED_FUNCTION_36_0();
      v236 = v225;
      *v48 = *(v2 + 420);
      v230(v57, v55, v58);
      v59 = sub_2676CBFBC();
      v61 = v60;
      v227 = *(v56 + 8);
      v227(v55, v58);
      v62 = sub_2676B0B84(v59, v61, &v236);

      *(v48 + 4) = v62;
      OUTLINED_FUNCTION_12_3();
      _os_log_impl(v63, v64, v65, v66, v67, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v225);
      OUTLINED_FUNCTION_2_5();
      OUTLINED_FUNCTION_19_2();
    }

    else
    {
      v73 = *(v0 + 168);
      v74 = *(v0 + 176);

      v227 = *(v74 + 8);
      v227(v55, v73);
    }

    v75 = *(v0 + 360);
    v77 = *(v0 + 312);
    v76 = *(v0 + 320);
    v78 = *(v0 + 304);
    v79 = *(v0 + 200);
    v80 = *(v0 + 184);
    v81 = *(v0 + 168);
    swift_getKeyPath();
    (*(v77 + 104))(v76, *MEMORY[0x277CBA020], v78);
    v230(v80, v79, v81);
    OUTLINED_FUNCTION_0_11();
    sub_267609608(v82, v83);
    sub_2676C89FC();
    v30 = v233;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v206 = *(v233 + 16);
      v207 = OUTLINED_FUNCTION_18_4();
      v30 = sub_26760735C(v207, v208, v209, v233);
    }

    v2 = &off_2676CD000;
    OUTLINED_FUNCTION_51();
    if (v85)
    {
      v30 = OUTLINED_FUNCTION_41(v84 > 1);
    }

    v86 = *(v0 + 360);
    v39 = *(v0 + 328);
    v87 = *(v0 + 336);
    v88 = *(v0 + 176) + 8;
    v227(*(v0 + 200), *(v0 + 168));
    *(v30 + 16) = v75;
    (*(v87 + 32))(v30 + ((*(v87 + 80) + 32) & ~*(v87 + 80)) + *(v87 + 72) * v50, v86, v39);
  }

  v89 = *(v0 + 426);
  if (v89 != 2)
  {
    OUTLINED_FUNCTION_54();
    if (!v44)
    {
      OUTLINED_FUNCTION_0();
    }

    v90 = sub_2676CBE4C();
    OUTLINED_FUNCTION_24_2(v90, qword_2801CDC90);
    v91 = sub_2676CBE2C();
    v92 = sub_2676CC23C();
    if (os_log_type_enabled(v91, v92))
    {
      v93 = OUTLINED_FUNCTION_5_3();
      v94 = swift_slowAlloc();
      v236 = v94;
      *v93 = *(v2 + 420);
      if (v89)
      {
        v95 = 1684104562;
      }

      else
      {
        v95 = 0x646165726E75;
      }

      if (v89)
      {
        v96 = 0xE400000000000000;
      }

      else
      {
        v96 = 0xE600000000000000;
      }

      v97 = sub_2676B0B84(v95, v96, &v236);

      *(v93 + 4) = v97;
      _os_log_impl(&dword_2675D4000, v91, v92, "#LinkServicesProvider.performGetMail: getting %s mail", v93, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v94);
      OUTLINED_FUNCTION_2_5();
      OUTLINED_FUNCTION_2_5();
    }

    v98 = *(v0 + 352);
    v99 = *(v0 + 312);
    v100 = *(v0 + 320);
    v39 = *(v0 + 304);
    v101 = *(v0 + 426);
    swift_getKeyPath();
    (*(v99 + 104))(v100, *MEMORY[0x277CBA020], v39);
    *(v0 + 425) = v101 & 1;
    OUTLINED_FUNCTION_0_11();
    sub_267609608(v102, v103);
    sub_2676C89FC();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v210 = *(v30 + 16);
      v211 = OUTLINED_FUNCTION_18_4();
      v30 = sub_26760735C(v211, v212, v213, v30);
    }

    OUTLINED_FUNCTION_51();
    if (v85)
    {
      v30 = OUTLINED_FUNCTION_41(v104 > 1);
    }

    v105 = *(v0 + 352);
    v106 = *(v0 + 328);
    v107 = OUTLINED_FUNCTION_9_6(*(v0 + 336));
    v108(v107);
  }

  v109 = *(v0 + 427);
  if (v109 != 2 && (v109 & 1) != 0)
  {
    OUTLINED_FUNCTION_54();
    if (!v44)
    {
      OUTLINED_FUNCTION_0();
    }

    v110 = sub_2676CBE4C();
    OUTLINED_FUNCTION_24_2(v110, qword_2801CDC90);
    v111 = sub_2676CBE2C();
    v112 = sub_2676CC23C();
    if (OUTLINED_FUNCTION_35_0(v112))
    {
      *OUTLINED_FUNCTION_17_3() = 0;
      OUTLINED_FUNCTION_12_3();
      _os_log_impl(v113, v114, v115, v116, v117, 2u);
      OUTLINED_FUNCTION_19_2();
    }

    v118 = *(v0 + 344);
    v119 = *(v0 + 312);
    v39 = *(v0 + 320);
    v120 = *(v0 + 304);

    swift_getKeyPath();
    (*(v119 + 104))(v39, *MEMORY[0x277CBA020], v120);
    *(v0 + 424) = 0;
    OUTLINED_FUNCTION_0_11();
    sub_267609608(v121, v122);
    sub_2676C89FC();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v214 = *(v30 + 16);
      v215 = OUTLINED_FUNCTION_18_4();
      v30 = sub_26760735C(v215, v216, v217, v30);
    }

    OUTLINED_FUNCTION_51();
    if (v85)
    {
      v30 = OUTLINED_FUNCTION_41(v123 > 1);
    }

    v124 = *(v0 + 344);
    v125 = *(v0 + 328);
    v126 = OUTLINED_FUNCTION_9_6(*(v0 + 336));
    v127(v126);
  }

  *(v0 + 384) = v30;
  OUTLINED_FUNCTION_54();
  if (!v44)
  {
    OUTLINED_FUNCTION_0();
  }

  v128 = sub_2676CBE4C();
  OUTLINED_FUNCTION_24_2(v128, qword_2801CDC90);
  v129 = sub_2676CBE2C();
  v130 = sub_2676CC23C();
  v234 = v30;
  if (OUTLINED_FUNCTION_35_0(v130))
  {
    v131 = *(v0 + 328);
    OUTLINED_FUNCTION_5_3();
    v132 = OUTLINED_FUNCTION_36_0();
    v236 = v132;
    *v39 = *(v2 + 420);

    MEMORY[0x26D5FDDD0](v133, v131);

    v134 = OUTLINED_FUNCTION_61();
    v137 = sub_2676B0B84(v134, v135, v136);

    *(v39 + 4) = v137;
    OUTLINED_FUNCTION_12_3();
    _os_log_impl(v138, v139, v140, v141, v142, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v132);
    OUTLINED_FUNCTION_2_5();
    OUTLINED_FUNCTION_19_2();
  }

  v143 = *(v0 + 152);
  v144 = *(v0 + 120);
  v145 = *(v0 + 128);
  v146 = *(v0 + 112);
  v148 = *(v0 + 88);
  v147 = *(v0 + 96);
  v149 = *(v0 + 72);
  v226 = *(v0 + 104);
  v228 = *(v0 + 80);
  v231 = *(v0 + 64);
  sub_2676C8BFC();
  OUTLINED_FUNCTION_66();
  OUTLINED_FUNCTION_0_11();
  sub_267609608(v150, v151);
  OUTLINED_FUNCTION_39();
  sub_2676C89AC();
  (*(v144 + 8))(v145, v146);
  (*(v147 + 104))(v226, *MEMORY[0x277CBA018], v148);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC498, &qword_2676CEF68);
  v152 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC4A0, &qword_2676CEF70);
  OUTLINED_FUNCTION_1_0(v152);
  v154 = *(v153 + 72);
  v156 = (*(v155 + 80) + 32) & ~*(v155 + 80);
  v157 = swift_allocObject();
  *(v0 + 392) = v157;
  *(v157 + 16) = xmmword_2676CDE20;
  swift_getKeyPath();
  (*(v149 + 104))(v228, *MEMORY[0x277CBA040], v231);

  sub_2676C8A0C();
  v158 = *(MEMORY[0x277CBA030] + 4);
  v159 = swift_task_alloc();
  *(v0 + 400) = v159;
  *v159 = v0;
  v159[1] = sub_26760374C;
  v160 = *(v0 + 152);
  v161 = *(v0 + 136);
  v162 = *(v0 + 104);

  return MEMORY[0x28210BD80](v234, v162, 0, 1, v157, v161);
}

uint64_t sub_26760374C()
{
  OUTLINED_FUNCTION_33_1();
  OUTLINED_FUNCTION_44();
  v2 = *v1;
  OUTLINED_FUNCTION_8_6();
  *v4 = v3;
  v5 = v2[50];
  v6 = *v1;
  OUTLINED_FUNCTION_8_6();
  *v7 = v6;
  *(v9 + 408) = v8;
  *(v9 + 416) = v0;

  v10 = v2[49];
  v11 = v2[48];
  v12 = v2[19];
  v13 = v2[18];
  v14 = v2[17];
  v15 = v2[13];
  v16 = v2[12];
  v17 = v2[11];

  (*(v16 + 8))(v15, v17);
  (*(v13 + 8))(v12, v14);
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_32_1();

  return MEMORY[0x2822009F8](v18, v19, v20);
}

uint64_t sub_26760393C()
{
  v34 = v0;
  if (qword_2801CBA80 != -1)
  {
    swift_once();
  }

  v1 = v0[51];
  v2 = v0[52];
  v3 = qword_2801D3CD8;
  v4 = sub_26760A344(v3, v1);

  v33[0] = v4;

  sub_267607B90(v33);
  if (v2)
  {
  }

  else
  {
    v6 = v0[47];
    v7 = v0[48];
    v9 = v0[45];
    v8 = v0[46];
    v11 = v0[43];
    v10 = v0[44];
    v12 = v0[40];
    v13 = v0[37];
    v16 = v0[36];
    v17 = v0[35];
    v18 = v0[34];
    v19 = v0[33];
    v20 = v0[32];
    v21 = v0[29];
    v22 = v0[28];
    v23 = v0[27];
    v24 = v0[26];
    v25 = v0[25];
    v26 = v0[24];
    v27 = v0[23];
    v28 = v0[20];
    v29 = v0[19];
    v30 = v0[16];
    v31 = v0[13];
    v32 = v0[10];

    v14 = v33[0];

    OUTLINED_FUNCTION_17_6();

    return v15(v14);
  }
}

uint64_t sub_267603B9C()
{
  v2 = v0[47];
  v1 = v0[48];
  v4 = v0[45];
  v3 = v0[46];
  v5 = v0[43];
  v6 = v0[44];
  v7 = v0[40];
  v9 = v0[36];
  v8 = v0[37];
  v10 = v0[35];
  v14 = v0[34];
  v15 = v0[33];
  v16 = v0[32];
  v17 = v0[29];
  v18 = v0[28];
  v19 = v0[27];
  v20 = v0[26];
  v21 = v0[25];
  v22 = v0[24];
  v23 = v0[23];
  v24 = v0[20];
  v25 = v0[19];
  v26 = v0[16];
  v27 = v0[13];
  v28 = v0[10];

  OUTLINED_FUNCTION_15_0();
  v12 = v0[52];

  return v11();
}

uint64_t LinkServicesProvider.performGetMail(identifiers:)()
{
  OUTLINED_FUNCTION_3_0();
  v0[2] = v1;
  v2 = sub_2676C89DC();
  v0[3] = v2;
  OUTLINED_FUNCTION_1_0(v2);
  v0[4] = v3;
  v5 = *(v4 + 64);
  v0[5] = OUTLINED_FUNCTION_2_0();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC478, &qword_2676CEF38);
  v0[6] = v6;
  OUTLINED_FUNCTION_1_0(v6);
  v0[7] = v7;
  v9 = *(v8 + 64);
  v0[8] = OUTLINED_FUNCTION_2_0();
  v10 = type metadata accessor for Signpost.OpenSignpost();
  v0[9] = v10;
  OUTLINED_FUNCTION_4_1(v10);
  v12 = *(v11 + 64);
  v0[10] = OUTLINED_FUNCTION_2_0();
  v13 = OUTLINED_FUNCTION_13_5();

  return MEMORY[0x2822009F8](v13, v14, v15);
}

uint64_t sub_267603E54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_33_1();
  OUTLINED_FUNCTION_44();
  if (qword_2801CBAA8 != -1)
  {
    OUTLINED_FUNCTION_27_2();
  }

  v14 = v12[9];
  v13 = v12[10];
  v15 = v12[8];
  v17 = v12[4];
  v16 = v12[5];
  v36 = v12[3];
  v18 = qword_2801D3F18;
  v12[11] = qword_2801D3F18;
  v18;
  sub_2676CBE0C();
  sub_2676CC29C();
  sub_2676CBDFC();
  v19 = v13 + *(v14 + 20);
  *v19 = "FetchMailMessages";
  *(v19 + 8) = 17;
  *(v19 + 16) = 2;
  sub_2676C8BFC();
  OUTLINED_FUNCTION_66();
  OUTLINED_FUNCTION_0_11();
  sub_267609608(v20, v21);
  OUTLINED_FUNCTION_39();
  sub_2676C89AC();
  (*(v17 + 8))(v16, v36);
  v22 = *(MEMORY[0x277CBA028] + 4);
  v23 = swift_task_alloc();
  v12[12] = v23;
  *v23 = v12;
  v23[1] = sub_267604008;
  v24 = v12[8];
  v25 = v12[6];
  v26 = v12[2];
  OUTLINED_FUNCTION_32_1();

  return MEMORY[0x28210BD78](v27, v28, v29, v30, v31, v32, v33, v34, v36, a10, a11, a12);
}

uint64_t sub_267604008()
{
  OUTLINED_FUNCTION_16_2();
  v3 = v2;
  v4 = *v1;
  v5 = *v1;
  OUTLINED_FUNCTION_0_1();
  *v6 = v5;
  v7 = v4[12];
  *v6 = *v1;
  v5[13] = v0;

  v8 = v4[8];
  v9 = v4[7];
  v10 = v4[6];
  if (!v0)
  {
    v5[14] = v3;
  }

  (*(v9 + 8))(v8, v10);
  OUTLINED_FUNCTION_21();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_267604180()
{
  OUTLINED_FUNCTION_12_1();
  v1 = v0[10];
  v2 = v0[11];
  v3 = v0[8];
  v4 = v0[5];
  sub_2676CC28C();
  OUTLINED_FUNCTION_23_4();
  sub_2675DE628(v1);

  OUTLINED_FUNCTION_17_6();
  v6 = v0[14];

  return v5(v6);
}

uint64_t sub_267604224()
{
  OUTLINED_FUNCTION_12_1();
  v1 = v0[10];
  v2 = v0[11];
  v3 = v0[8];
  v4 = v0[5];
  sub_2676CC28C();
  OUTLINED_FUNCTION_23_4();
  sub_2675DE628(v1);

  OUTLINED_FUNCTION_15_0();
  v6 = v0[13];

  return v5();
}

uint64_t LinkServicesProvider.deleteMessage(message:)()
{
  OUTLINED_FUNCTION_3_0();
  v0[11] = v1;
  v2 = sub_2676CBCCC();
  v0[12] = v2;
  OUTLINED_FUNCTION_1_0(v2);
  v0[13] = v3;
  v5 = *(v4 + 64);
  v0[14] = OUTLINED_FUNCTION_2_0();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC4B0, &qword_2676CF078);
  v0[15] = v6;
  OUTLINED_FUNCTION_1_0(v6);
  v0[16] = v7;
  v9 = *(v8 + 64);
  v0[17] = OUTLINED_FUNCTION_2_0();
  v10 = sub_2676CBD7C();
  v0[18] = v10;
  OUTLINED_FUNCTION_1_0(v10);
  v0[19] = v11;
  v13 = *(v12 + 64);
  v0[20] = OUTLINED_FUNCTION_2_0();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC4B8, &qword_2676CF080);
  v0[21] = v14;
  OUTLINED_FUNCTION_1_0(v14);
  v0[22] = v15;
  v17 = *(v16 + 64);
  v0[23] = OUTLINED_FUNCTION_2_0();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC4C0, &qword_2676CF088);
  v0[24] = v18;
  OUTLINED_FUNCTION_1_0(v18);
  v0[25] = v19;
  v21 = *(v20 + 64);
  v0[26] = OUTLINED_FUNCTION_2_0();
  v22 = sub_2676C924C();
  v0[27] = v22;
  OUTLINED_FUNCTION_1_0(v22);
  v0[28] = v23;
  v25 = *(v24 + 64);
  v0[29] = OUTLINED_FUNCTION_2_0();
  v26 = sub_2676C8DDC();
  v0[30] = v26;
  OUTLINED_FUNCTION_1_0(v26);
  v0[31] = v27;
  v29 = *(v28 + 64);
  v0[32] = OUTLINED_FUNCTION_2_0();
  v30 = sub_2676CBCFC();
  v0[33] = v30;
  OUTLINED_FUNCTION_1_0(v30);
  v0[34] = v31;
  v33 = *(v32 + 64);
  v0[35] = OUTLINED_FUNCTION_2_0();
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC4C8, &unk_2676CF090);
  OUTLINED_FUNCTION_4_1(v34);
  v36 = *(v35 + 64);
  v0[36] = OUTLINED_FUNCTION_2_0();
  v37 = sub_2676CBD2C();
  v0[37] = v37;
  OUTLINED_FUNCTION_1_0(v37);
  v0[38] = v38;
  v40 = *(v39 + 64);
  v0[39] = OUTLINED_FUNCTION_2_0();
  v41 = OUTLINED_FUNCTION_13_5();

  return MEMORY[0x2822009F8](v41, v42, v43);
}

uint64_t sub_267604618()
{
  v2 = v0[38];
  v1 = v0[39];
  v3 = v0[36];
  v4 = v0[34];
  v5 = v0[35];
  v6 = v0[32];
  v7 = v0[31];
  v54 = v0[37];
  v55 = v0[30];
  v51 = v0[33];
  v52 = v0[11];
  v8 = [objc_opt_self() defaultEnvironment];
  v9 = sub_2675E5E30(0, &qword_2801CC4D0, 0x277D23C08);
  v10 = MEMORY[0x277CEB188];
  v0[5] = v9;
  v0[6] = v10;
  v0[2] = v8;
  sub_2676CBCEC();
  (*(v4 + 104))(v5, *MEMORY[0x277CEB068], v51);
  OUTLINED_FUNCTION_45();
  sub_2676CBD1C();
  v11 = sub_2676CBD0C();
  v13 = v12;
  v0[40] = v11;
  v0[41] = v12;
  (*(v2 + 8))(v1, v54);
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v0[7] = sub_2676C8ABC();
  v0[8] = v14;
  sub_2676C8DBC();
  sub_2675E69E4();
  v15 = sub_2676CC30C();
  (*(v7 + 8))(v6, v55);

  if (v15[2] == 2 && (v17 = v15[4], v16 = v15[5], sub_2676052B4(v15), v19 = v18, , , v19))
  {
    if (qword_2801CBAA0 != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v20 = sub_2676CBE4C();
    v0[42] = __swift_project_value_buffer(v20, qword_2801CDC90);
    v21 = sub_2676CBE2C();
    v22 = sub_2676CC23C();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = OUTLINED_FUNCTION_17_3();
      *v23 = 0;
      _os_log_impl(&dword_2675D4000, v21, v22, "#DeleteMessage Deleting message now...", v23, 2u);
      OUTLINED_FUNCTION_2_5();
    }

    v25 = v0[28];
    v24 = v0[29];
    v27 = v0[26];
    v26 = v0[27];
    v53 = v0[20];

    v28 = *MEMORY[0x277CCA1A0];
    sub_2676C91FC();
    v29 = sub_2676C921C();
    v31 = v30;
    (*(v25 + 8))(v24, v26);
    v32 = type metadata accessor for MailMessageEntity(0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CBB78, &qword_2676CD280);
    v33 = swift_allocObject();
    *(v33 + 16) = xmmword_2676CDE20;
    *(v33 + 32) = v29;
    *(v33 + 40) = v31;
    v34 = sub_267609608(&qword_2801CC4D8, type metadata accessor for MailMessageEntity);
    sub_2676CBB8C();

    ObjectType = swift_getObjectType();
    v0[43] = ObjectType;
    sub_2676052FC();
    v36 = *(MEMORY[0x277CEAFF0] + 4);
    v37 = swift_task_alloc();
    v0[44] = v37;
    *v37 = v0;
    v37[1] = sub_267604B58;
    v38 = v0[26];
    v39 = v0[23];
    v40 = v0[20];

    return MEMORY[0x28213DA88](v39, v38, v40, ObjectType, v32, v13, v34);
  }

  else
  {

    if (qword_2801CBAA0 != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v41 = sub_2676CBE4C();
    OUTLINED_FUNCTION_24_2(v41, qword_2801CDC90);
    v42 = sub_2676CBE2C();
    v43 = sub_2676CC24C();
    if (OUTLINED_FUNCTION_35_0(v43))
    {
      *OUTLINED_FUNCTION_17_3() = 0;
      OUTLINED_FUNCTION_12_3();
      _os_log_impl(v44, v45, v46, v47, v48, 2u);
      OUTLINED_FUNCTION_19_2();
    }

    swift_unknownObjectRelease();
    OUTLINED_FUNCTION_34_0();

    OUTLINED_FUNCTION_17_6();

    return v49(0);
  }
}