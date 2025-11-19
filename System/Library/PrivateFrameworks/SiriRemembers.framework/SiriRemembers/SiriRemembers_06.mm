uint64_t sub_23144FAD8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 7955819 && a2 == 0xE300000000000000;
  if (v3 || (sub_2314787C8() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 28783 && a2 == 0xE200000000000000;
    if (v6 || (sub_2314787C8() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 1936159329 && a2 == 0xE400000000000000)
    {

      return 2;
    }

    else
    {
      v8 = sub_2314787C8();

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

uint64_t sub_23144FBE0(char a1)
{
  if (!a1)
  {
    return 7955819;
  }

  if (a1 == 1)
  {
    return 28783;
  }

  return 1936159329;
}

uint64_t sub_23144FC24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_23144FAD8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_23144FC4C(uint64_t a1)
{
  v2 = sub_23144FED4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23144FC88(uint64_t a1)
{
  v2 = sub_23144FED4();

  return MEMORY[0x2821FE720](a1, v2);
}

void QueryExpression.encode(to:)()
{
  OUTLINED_FUNCTION_64();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4E240, &qword_23147D4D0);
  OUTLINED_FUNCTION_4(v4);
  v6 = v5;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_61();
  MEMORY[0x28223BE20](v9);
  v11 = &v20 - v10;
  v12 = *v0;
  v13 = *(v0 + 8);
  v24 = *(v0 + 16);
  v21 = *(v0 + 24);
  v14 = v3[3];
  v15 = v3[4];
  v16 = v3;
  v18 = v17;
  __swift_project_boxed_opaque_existential_1(v16, v14);
  sub_2313E8ABC(v12, v13);
  sub_23144FED4();
  sub_231478968();
  v22 = v12;
  v23 = v13;
  sub_23144FF28();
  OUTLINED_FUNCTION_19_9();
  sub_231478748();
  sub_2313ED930(v12, v13);
  if (!v1)
  {
    v19 = v21;
    LOBYTE(v22) = v24;
    OUTLINED_FUNCTION_122();
    sub_23144FF7C();
    OUTLINED_FUNCTION_19_9();
    sub_231478748();
    v22 = v19;
    OUTLINED_FUNCTION_24_3();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4E260, &qword_23147D4D8);
    sub_2314502DC(&qword_27DD4E268, &qword_27DD4E270);
    OUTLINED_FUNCTION_19_9();
    sub_231478748();
  }

  (*(v6 + 8))(v11, v18);
  OUTLINED_FUNCTION_62();
}

unint64_t sub_23144FED4()
{
  result = qword_27DD4E248;
  if (!qword_27DD4E248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD4E248);
  }

  return result;
}

unint64_t sub_23144FF28()
{
  result = qword_27DD4E250;
  if (!qword_27DD4E250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD4E250);
  }

  return result;
}

unint64_t sub_23144FF7C()
{
  result = qword_27DD4E258;
  if (!qword_27DD4E258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD4E258);
  }

  return result;
}

void QueryExpression.init(from:)()
{
  OUTLINED_FUNCTION_64();
  v2 = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4E278, &qword_23147D4E0);
  OUTLINED_FUNCTION_4(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_61();
  MEMORY[0x28223BE20](v8);
  v9 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  sub_23144FED4();
  sub_231478948();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_0(v2);
  }

  else
  {
    sub_231450234();
    OUTLINED_FUNCTION_21_7();
    OUTLINED_FUNCTION_122();
    sub_231450288();
    OUTLINED_FUNCTION_21_7();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4E260, &qword_23147D4D8);
    OUTLINED_FUNCTION_24_3();
    sub_2314502DC(&qword_27DD4E290, &qword_27DD4E298);
    sub_2314786B8();
    v10 = OUTLINED_FUNCTION_20_6();
    v11(v10);
    *v4 = v12;
    *(v4 + 8) = v13;
    *(v4 + 16) = v12;
    *(v4 + 24) = v12;
    sub_2313E8ABC(v12, v13);

    __swift_destroy_boxed_opaque_existential_0(v2);
    sub_2313ED930(v12, v13);
  }

  OUTLINED_FUNCTION_62();
}

unint64_t sub_231450234()
{
  result = qword_27DD4E280;
  if (!qword_27DD4E280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD4E280);
  }

  return result;
}

unint64_t sub_231450288()
{
  result = qword_27DD4E288;
  if (!qword_27DD4E288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD4E288);
  }

  return result;
}

uint64_t sub_2314502DC(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DD4E260, &qword_23147D4D8);
    sub_231450364(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_231450364(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for QueryValue();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2314503A8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_2314787C8() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6449656369766564 && a2 == 0xE800000000000000;
    if (v6 || (sub_2314787C8() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6E69616D6F64 && a2 == 0xE600000000000000;
      if (v7 || (sub_2314787C8() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x6449656C646E7562 && a2 == 0xE800000000000000;
        if (v8 || (sub_2314787C8() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 1701869940 && a2 == 0xE400000000000000;
          if (v9 || (sub_2314787C8() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x6574616E6F447369 && a2 == 0xEF69726953794264;
            if (v10 || (sub_2314787C8() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x676E696C646E6168 && a2 == 0xEE00737574617453;
              if (v11 || (sub_2314787C8() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x6F69746365726964 && a2 == 0xE90000000000006ELL;
                if (v12 || (sub_2314787C8() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0x7461447472617473 && a2 == 0xE900000000000065;
                  if (v13 || (sub_2314787C8() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0x6E6F697461727564 && a2 == 0xEF73646E6F636553;
                    if (v14 || (sub_2314787C8() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v15 = a1 == 0x727453726F6E6F64 && a2 == 0xEB000000006D6165;
                      if (v15 || (sub_2314787C8() & 1) != 0)
                      {

                        return 10;
                      }

                      else
                      {
                        v16 = a1 == 0x48746E65746E6F63 && a2 == 0xEB00000000687361;
                        if (v16 || (sub_2314787C8() & 1) != 0)
                        {

                          return 11;
                        }

                        else
                        {
                          v17 = a1 == 0x646C656966 && a2 == 0xE500000000000000;
                          if (v17 || (sub_2314787C8() & 1) != 0)
                          {

                            return 12;
                          }

                          else
                          {
                            v18 = a1 == 0x6449797469746E65 && a2 == 0xE800000000000000;
                            if (v18 || (sub_2314787C8() & 1) != 0)
                            {

                              return 13;
                            }

                            else
                            {
                              v19 = a1 == 0x7954797469746E65 && a2 == 0xEA00000000006570;
                              if (v19 || (sub_2314787C8() & 1) != 0)
                              {

                                return 14;
                              }

                              else
                              {
                                v20 = a1 == 0x7355646572616873 && a2 == 0xEC00000064497265;
                                if (v20 || (sub_2314787C8() & 1) != 0)
                                {

                                  return 15;
                                }

                                else
                                {
                                  v21 = a1 == 0x6C61636F4C7369 && a2 == 0xE700000000000000;
                                  if (v21 || (sub_2314787C8() & 1) != 0)
                                  {

                                    return 16;
                                  }

                                  else
                                  {
                                    v22 = a1 == 0x6C50656369766564 && a2 == 0xEE006D726F667461;
                                    if (v22 || (sub_2314787C8() & 1) != 0)
                                    {

                                      return 17;
                                    }

                                    else if (a1 == 0x616E6F4472657375 && a2 == 0xEF65707954726F74)
                                    {

                                      return 18;
                                    }

                                    else
                                    {
                                      v24 = sub_2314787C8();

                                      if (v24)
                                      {
                                        return 18;
                                      }

                                      else
                                      {
                                        return 19;
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
            }
          }
        }
      }
    }
  }
}

uint64_t sub_231450978(char a1)
{
  result = 25705;
  switch(a1)
  {
    case 1:
      v3 = 0x656369766564;
      goto LABEL_16;
    case 2:
      return 0x6E69616D6F64;
    case 3:
      v3 = 0x656C646E7562;
      goto LABEL_16;
    case 4:
      return 1701869940;
    case 5:
      return 0x6574616E6F447369;
    case 6:
      return 0x676E696C646E6168;
    case 7:
      return 0x6F69746365726964;
    case 8:
      return 0x7461447472617473;
    case 9:
      return 0x6E6F697461727564;
    case 10:
      return 0x727453726F6E6F64;
    case 11:
      return 0x48746E65746E6F63;
    case 12:
      return 0x646C656966;
    case 13:
      v3 = 0x797469746E65;
LABEL_16:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x6449000000000000;
      break;
    case 14:
      result = 0x7954797469746E65;
      break;
    case 15:
      result = 0x7355646572616873;
      break;
    case 16:
      result = 0x6C61636F4C7369;
      break;
    case 17:
      result = 0x6C50656369766564;
      break;
    case 18:
      result = 0x616E6F4472657375;
      break;
    default:
      return result;
  }

  return result;
}

void sub_231450BA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_64();
  a19 = v21;
  a20 = v22;
  v201 = v20;
  v196 = v23;
  v197 = v24;
  v26 = v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4E2B8, &qword_23147D750);
  v28 = OUTLINED_FUNCTION_4(v27);
  v194 = v29;
  v195 = v28;
  v31 = *(v30 + 64);
  OUTLINED_FUNCTION_61();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_13();
  v193 = v33;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4E2C0, &qword_23147D758);
  v35 = OUTLINED_FUNCTION_4(v34);
  v191 = v36;
  v192 = v35;
  v38 = *(v37 + 64);
  OUTLINED_FUNCTION_61();
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_13();
  v190 = v40;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4E2C8, &qword_23147D760);
  v42 = OUTLINED_FUNCTION_4(v41);
  v188 = v43;
  v189 = v42;
  v45 = *(v44 + 64);
  OUTLINED_FUNCTION_61();
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_13();
  v187 = v47;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4E2D0, &qword_23147D768);
  v49 = OUTLINED_FUNCTION_4(v48);
  v185 = v50;
  v186 = v49;
  v52 = *(v51 + 64);
  OUTLINED_FUNCTION_61();
  MEMORY[0x28223BE20](v53);
  OUTLINED_FUNCTION_13();
  v184 = v54;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4E2D8, &qword_23147D770);
  v56 = OUTLINED_FUNCTION_4(v55);
  v182 = v57;
  v183 = v56;
  v59 = *(v58 + 64);
  OUTLINED_FUNCTION_61();
  MEMORY[0x28223BE20](v60);
  OUTLINED_FUNCTION_13();
  v181 = v61;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4E2E0, &qword_23147D778);
  OUTLINED_FUNCTION_0_0(v62, &a18);
  v179 = v63;
  v65 = *(v64 + 64);
  OUTLINED_FUNCTION_61();
  MEMORY[0x28223BE20](v66);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_47_0(v67);
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4E2E8, &qword_23147D780);
  OUTLINED_FUNCTION_0_0(v68, &a15);
  v176 = v69;
  v71 = *(v70 + 64);
  OUTLINED_FUNCTION_61();
  MEMORY[0x28223BE20](v72);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_47_0(v73);
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4E2F0, &qword_23147D788);
  OUTLINED_FUNCTION_0_0(v74, &a12);
  v175[30] = v75;
  v77 = *(v76 + 64);
  OUTLINED_FUNCTION_61();
  MEMORY[0x28223BE20](v78);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_47_0(v79);
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4E2F8, &qword_23147D790);
  OUTLINED_FUNCTION_0_0(v80, &a9);
  v175[27] = v81;
  v83 = *(v82 + 64);
  OUTLINED_FUNCTION_61();
  MEMORY[0x28223BE20](v84);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_47_0(v85);
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4E300, &qword_23147D798);
  OUTLINED_FUNCTION_0_0(v86, &v200);
  v175[24] = v87;
  v89 = *(v88 + 64);
  OUTLINED_FUNCTION_61();
  MEMORY[0x28223BE20](v90);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_47_0(v91);
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4E308, &qword_23147D7A0);
  OUTLINED_FUNCTION_0_0(v92, &v197);
  v175[21] = v93;
  v95 = *(v94 + 64);
  OUTLINED_FUNCTION_61();
  MEMORY[0x28223BE20](v96);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_47_0(v97);
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4E310, &qword_23147D7A8);
  OUTLINED_FUNCTION_0_0(v98, &v194);
  v175[18] = v99;
  v101 = *(v100 + 64);
  OUTLINED_FUNCTION_61();
  MEMORY[0x28223BE20](v102);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_47_0(v103);
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4E318, &qword_23147D7B0);
  OUTLINED_FUNCTION_0_0(v104, &v191);
  v175[15] = v105;
  v107 = *(v106 + 64);
  OUTLINED_FUNCTION_61();
  MEMORY[0x28223BE20](v108);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_47_0(v109);
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4E320, &qword_23147D7B8);
  OUTLINED_FUNCTION_0_0(v110, &v188);
  v175[12] = v111;
  v113 = *(v112 + 64);
  OUTLINED_FUNCTION_61();
  MEMORY[0x28223BE20](v114);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_47_0(v115);
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4E328, &qword_23147D7C0);
  OUTLINED_FUNCTION_0_0(v116, &v185);
  v175[9] = v117;
  v119 = *(v118 + 64);
  OUTLINED_FUNCTION_61();
  MEMORY[0x28223BE20](v120);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_47_0(v121);
  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4E330, &qword_23147D7C8);
  OUTLINED_FUNCTION_0_0(v122, &v182);
  v175[6] = v123;
  v125 = *(v124 + 64);
  OUTLINED_FUNCTION_61();
  MEMORY[0x28223BE20](v126);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_47_0(v127);
  v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4E338, &qword_23147D7D0);
  OUTLINED_FUNCTION_0_0(v128, &v179);
  v175[3] = v129;
  v131 = *(v130 + 64);
  OUTLINED_FUNCTION_61();
  MEMORY[0x28223BE20](v132);
  v134 = v175 - v133;
  v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4E340, &qword_23147D7D8);
  OUTLINED_FUNCTION_4(v135);
  v175[2] = v136;
  v138 = *(v137 + 64);
  OUTLINED_FUNCTION_61();
  MEMORY[0x28223BE20](v139);
  v141 = v175 - v140;
  v142 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4E348, &qword_23147D7E0);
  OUTLINED_FUNCTION_4(v142);
  v175[1] = v143;
  v145 = *(v144 + 64);
  OUTLINED_FUNCTION_61();
  MEMORY[0x28223BE20](v146);
  v148 = v175 - v147;
  v149 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4E350, &qword_23147D7E8);
  v199 = OUTLINED_FUNCTION_4(v149);
  v200 = v150;
  v152 = *(v151 + 64);
  OUTLINED_FUNCTION_61();
  MEMORY[0x28223BE20](v153);
  v155 = v175 - v154;
  v156 = v26[4];
  v157 = __swift_project_boxed_opaque_existential_1(v26, v26[3]);
  sub_231453AC4();
  v198 = v155;
  v158 = v197;
  sub_231478968();
  switch(v158)
  {
    case 0:
      HIBYTE(a10) = 0;
      sub_231454100();
      v159 = v198;
      v160 = v199;
      sub_2314786F8();
      v161 = OUTLINED_FUNCTION_7_11(&v176);
      v162(v161, v142);
      (*(v200 + 8))(v159, v160);
      break;
    case 1:
      OUTLINED_FUNCTION_122();
      sub_2314540AC();
      v157 = v198;
      v148 = v199;
      sub_2314786F8();
      OUTLINED_FUNCTION_13_1(&v177);
      v166 = v141;
      v169 = v135;
      goto LABEL_23;
    case 2:
      OUTLINED_FUNCTION_24_3();
      sub_231454058();
      v157 = v198;
      v148 = v199;
      sub_2314786F8();
      OUTLINED_FUNCTION_13_1(&v178);
      v166 = v134;
      v168 = &v179;
      goto LABEL_22;
    case 3:
      HIBYTE(a10) = 3;
      sub_231454004();
      OUTLINED_FUNCTION_8_14(&v180);
      v166 = OUTLINED_FUNCTION_10_15(&v181);
      v168 = &v182;
      goto LABEL_22;
    case 4:
      HIBYTE(a10) = 4;
      sub_231453FB0();
      OUTLINED_FUNCTION_8_14(&v183);
      v166 = OUTLINED_FUNCTION_10_15(&v184);
      v168 = &v185;
      goto LABEL_22;
    case 5:
      HIBYTE(a10) = 5;
      sub_231453F5C();
      OUTLINED_FUNCTION_8_14(&v186);
      v166 = OUTLINED_FUNCTION_10_15(&v187);
      v168 = &v188;
      goto LABEL_22;
    case 6:
      HIBYTE(a10) = 6;
      sub_231453F08();
      OUTLINED_FUNCTION_8_14(&v189);
      v166 = OUTLINED_FUNCTION_10_15(&v190);
      v168 = &v191;
      goto LABEL_22;
    case 7:
      HIBYTE(a10) = 7;
      sub_231453EB4();
      OUTLINED_FUNCTION_8_14(&v192);
      v166 = OUTLINED_FUNCTION_10_15(&v193);
      v168 = &v194;
      goto LABEL_22;
    case 8:
      HIBYTE(a10) = 8;
      sub_231453E60();
      OUTLINED_FUNCTION_8_14(&v195);
      v166 = OUTLINED_FUNCTION_10_15(&v196);
      v168 = &v197;
      goto LABEL_22;
    case 9:
      HIBYTE(a10) = 9;
      sub_231453E0C();
      OUTLINED_FUNCTION_8_14(&v198);
      v166 = OUTLINED_FUNCTION_10_15(&v199);
      v168 = &v200;
      goto LABEL_22;
    case 10:
      HIBYTE(a10) = 10;
      sub_231453DB8();
      OUTLINED_FUNCTION_8_14(&v201);
      v166 = OUTLINED_FUNCTION_10_15(&v202);
      v168 = &a9;
      goto LABEL_22;
    case 11:
      HIBYTE(a10) = 11;
      sub_231453D64();
      OUTLINED_FUNCTION_8_14(&a10);
      v166 = OUTLINED_FUNCTION_10_15(&a11);
      v168 = &a12;
      goto LABEL_22;
    case 12:
      HIBYTE(a10) = 13;
      sub_231453CBC();
      OUTLINED_FUNCTION_8_14(&a16);
      v166 = OUTLINED_FUNCTION_10_15(&a17);
      v168 = &a18;
LABEL_22:
      v169 = *(v168 - 32);
LABEL_23:
      v167(v166, v169);
      goto LABEL_24;
    case 13:
      HIBYTE(a10) = 14;
      sub_231453C68();
      v163 = v181;
      OUTLINED_FUNCTION_11_15();
      v165 = v182;
      v164 = v183;
      goto LABEL_17;
    case 14:
      HIBYTE(a10) = 15;
      sub_231453C14();
      v163 = v184;
      OUTLINED_FUNCTION_11_15();
      v165 = v185;
      v164 = v186;
      goto LABEL_17;
    case 15:
      HIBYTE(a10) = 16;
      sub_231453BC0();
      v163 = v187;
      OUTLINED_FUNCTION_11_15();
      v165 = v188;
      v164 = v189;
      goto LABEL_17;
    case 16:
      HIBYTE(a10) = 17;
      sub_231453B6C();
      v163 = v190;
      OUTLINED_FUNCTION_11_15();
      v165 = v191;
      v164 = v192;
      goto LABEL_17;
    case 17:
      HIBYTE(a10) = 18;
      sub_231453B18();
      v163 = v193;
      OUTLINED_FUNCTION_11_15();
      v165 = v194;
      v164 = v195;
LABEL_17:
      (*(v165 + 8))(v163, v164);
LABEL_24:
      (*(v200 + 8))(v157, v148);
      break;
    default:
      HIBYTE(a10) = 12;
      sub_231453D10();
      v170 = v175[32];
      v172 = v198;
      v171 = v199;
      sub_2314786F8();
      v173 = v177;
      sub_231478718();
      OUTLINED_FUNCTION_13_1(&a14);
      v174(v170, v173);
      (*(v200 + 8))(v172, v171);
      break;
  }

  OUTLINED_FUNCTION_62();
}

void sub_2314519C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_64();
  a19 = v21;
  a20 = v22;
  v299 = v20;
  v24 = v23;
  v294 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4E3F8, &qword_23147D7F0);
  OUTLINED_FUNCTION_4(v294);
  v279 = v25;
  v27 = *(v26 + 64);
  OUTLINED_FUNCTION_61();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_13();
  v292 = v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4E400, &qword_23147D7F8);
  OUTLINED_FUNCTION_0_0(v30, &a18);
  v277 = v31;
  v33 = *(v32 + 64);
  OUTLINED_FUNCTION_61();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_13();
  v291 = v35;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4E408, &qword_23147D800);
  OUTLINED_FUNCTION_0_0(v36, &a16);
  v275 = v37;
  v39 = *(v38 + 64);
  OUTLINED_FUNCTION_61();
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_13();
  v290 = v41;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4E410, &qword_23147D808);
  OUTLINED_FUNCTION_0_0(v42, &a14);
  v273 = v43;
  v45 = *(v44 + 64);
  OUTLINED_FUNCTION_61();
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_13();
  v289 = v47;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4E418, &qword_23147D810);
  OUTLINED_FUNCTION_0_0(v48, &a12);
  v271 = v49;
  v51 = *(v50 + 64);
  OUTLINED_FUNCTION_61();
  MEMORY[0x28223BE20](v52);
  OUTLINED_FUNCTION_13();
  v288 = v53;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4E420, &qword_23147D818);
  OUTLINED_FUNCTION_0_0(v54, &a9);
  v267 = v55;
  v57 = *(v56 + 64);
  OUTLINED_FUNCTION_61();
  MEMORY[0x28223BE20](v58);
  OUTLINED_FUNCTION_13();
  v287 = v59;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4E428, &qword_23147D820);
  OUTLINED_FUNCTION_0_0(v60, &a10);
  v268 = v61;
  v63 = *(v62 + 64);
  OUTLINED_FUNCTION_61();
  MEMORY[0x28223BE20](v64);
  OUTLINED_FUNCTION_13();
  v293 = v65;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4E430, &qword_23147D828);
  OUTLINED_FUNCTION_0_0(v66, &v298);
  v265 = v67;
  v69 = *(v68 + 64);
  OUTLINED_FUNCTION_61();
  MEMORY[0x28223BE20](v70);
  OUTLINED_FUNCTION_13();
  v286 = v71;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4E438, &qword_23147D830);
  OUTLINED_FUNCTION_0_0(v72, &v296);
  v263 = v73;
  v75 = *(v74 + 64);
  OUTLINED_FUNCTION_61();
  MEMORY[0x28223BE20](v76);
  OUTLINED_FUNCTION_13();
  v285 = v77;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4E440, &qword_23147D838);
  OUTLINED_FUNCTION_0_0(v78, &v294);
  v261 = v79;
  v81 = *(v80 + 64);
  OUTLINED_FUNCTION_61();
  MEMORY[0x28223BE20](v82);
  OUTLINED_FUNCTION_13();
  v284 = v83;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4E448, &qword_23147D840);
  OUTLINED_FUNCTION_0_0(v84, &v292);
  v259 = v85;
  v87 = *(v86 + 64);
  OUTLINED_FUNCTION_61();
  MEMORY[0x28223BE20](v88);
  OUTLINED_FUNCTION_13();
  v281 = v89;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4E450, &qword_23147D848);
  OUTLINED_FUNCTION_0_0(v90, &v289);
  v258 = v91;
  v93 = *(v92 + 64);
  OUTLINED_FUNCTION_61();
  MEMORY[0x28223BE20](v94);
  OUTLINED_FUNCTION_13();
  v297 = v95;
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4E458, &qword_23147D850);
  OUTLINED_FUNCTION_0_0(v96, &v288);
  v255 = v97;
  v99 = *(v98 + 64);
  OUTLINED_FUNCTION_61();
  MEMORY[0x28223BE20](v100);
  OUTLINED_FUNCTION_13();
  v296 = v101;
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4E460, &qword_23147D858);
  OUTLINED_FUNCTION_0_0(v102, &v286);
  v253 = v103;
  v105 = *(v104 + 64);
  OUTLINED_FUNCTION_61();
  MEMORY[0x28223BE20](v106);
  OUTLINED_FUNCTION_13();
  v283 = v107;
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4E468, &qword_23147D860);
  OUTLINED_FUNCTION_0_0(v108, &v284);
  v251 = v109;
  v111 = *(v110 + 64);
  OUTLINED_FUNCTION_61();
  MEMORY[0x28223BE20](v112);
  OUTLINED_FUNCTION_13();
  v282 = v113;
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4E470, &qword_23147D868);
  OUTLINED_FUNCTION_0_0(v114, &v282);
  v249 = v115;
  v117 = *(v116 + 64);
  OUTLINED_FUNCTION_61();
  MEMORY[0x28223BE20](v118);
  OUTLINED_FUNCTION_13();
  v295 = v119;
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4E478, &qword_23147D870);
  OUTLINED_FUNCTION_0_0(v120, &v280);
  v247 = v121;
  v123 = *(v122 + 64);
  OUTLINED_FUNCTION_61();
  MEMORY[0x28223BE20](v124);
  OUTLINED_FUNCTION_13();
  v280 = v125;
  v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4E480, &qword_23147D878);
  OUTLINED_FUNCTION_0_0(v126, &v278);
  v245 = v127;
  v129 = *(v128 + 64);
  OUTLINED_FUNCTION_61();
  MEMORY[0x28223BE20](v130);
  v132 = v240 - v131;
  v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4E488, &qword_23147D880);
  OUTLINED_FUNCTION_4(v133);
  v244 = v134;
  v136 = *(v135 + 64);
  OUTLINED_FUNCTION_61();
  MEMORY[0x28223BE20](v137);
  v139 = v240 - v138;
  v140 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4E490, &qword_23147D888);
  OUTLINED_FUNCTION_4(v140);
  v142 = v141;
  v144 = *(v143 + 64);
  OUTLINED_FUNCTION_61();
  MEMORY[0x28223BE20](v145);
  v147 = v240 - v146;
  v148 = v24[3];
  v149 = v24[4];
  v298 = v24;
  __swift_project_boxed_opaque_existential_1(v24, v148);
  sub_231453AC4();
  v150 = v299;
  sub_231478948();
  if (v150)
  {
    goto LABEL_9;
  }

  v242 = v139;
  v241 = v133;
  v243 = v132;
  v151 = v295;
  v299 = v142;
  v152 = v147;
  v153 = sub_2314786D8();
  sub_2313F8D60(v153, 0);
  if (v155 == v156 >> 1)
  {
LABEL_8:
    v166 = sub_231478548();
    swift_allocError();
    v168 = v167;
    v169 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4D7B0, &qword_23147A870) + 48);
    *v168 = &type metadata for QueryKey;
    sub_231478658();
    sub_231478538();
    (*(*(v166 - 8) + 104))(v168, *MEMORY[0x277D84160], v166);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v299 + 8))(v152, v140);
LABEL_9:
    __swift_destroy_boxed_opaque_existential_0(v298);
LABEL_10:
    OUTLINED_FUNCTION_62();
    return;
  }

  v240[1] = 0;
  if (v155 < (v156 >> 1))
  {
    v240[0] = *(v154 + v155);
    sub_2313F8D58(v155 + 1);
    v158 = v157;
    v160 = v159;
    swift_unknownObjectRelease();
    if (v158 == v160 >> 1)
    {
      v161 = v294;
      switch(v240[0])
      {
        case 1:
          OUTLINED_FUNCTION_122();
          sub_2314540AC();
          OUTLINED_FUNCTION_6_11();
          swift_unknownObjectRelease();
          v208 = OUTLINED_FUNCTION_7_11(&v277);
          v209(v208, v246);
          v210 = OUTLINED_FUNCTION_3_8();
          v211(v210);
          goto LABEL_29;
        case 2:
          OUTLINED_FUNCTION_24_3();
          sub_231454058();
          OUTLINED_FUNCTION_6_11();
          swift_unknownObjectRelease();
          v193 = OUTLINED_FUNCTION_7_11(&v279);
          v194(v193, v248);
          v195 = OUTLINED_FUNCTION_3_8();
          v196(v195);
          goto LABEL_29;
        case 3:
          HIBYTE(a10) = 3;
          sub_231454004();
          OUTLINED_FUNCTION_9_15();
          swift_unknownObjectRelease();
          OUTLINED_FUNCTION_13_1(&v281);
          v201(v151, v250);
          v202 = OUTLINED_FUNCTION_3_8();
          v203(v202);
          goto LABEL_29;
        case 4:
          HIBYTE(a10) = 4;
          sub_231453FB0();
          OUTLINED_FUNCTION_6_11();
          swift_unknownObjectRelease();
          v182 = OUTLINED_FUNCTION_7_11(&v283);
          v183(v182, v252);
          v184 = OUTLINED_FUNCTION_3_8();
          v185(v184);
          goto LABEL_29;
        case 5:
          HIBYTE(a10) = 5;
          sub_231453F5C();
          OUTLINED_FUNCTION_6_11();
          swift_unknownObjectRelease();
          v216 = OUTLINED_FUNCTION_7_11(&v285);
          v217(v216, v254);
          v218 = OUTLINED_FUNCTION_3_8();
          v219(v218);
          goto LABEL_29;
        case 6:
          HIBYTE(a10) = 6;
          sub_231453F08();
          OUTLINED_FUNCTION_9_15();
          swift_unknownObjectRelease();
          v224 = OUTLINED_FUNCTION_7_11(&v287);
          v225(v224, v256);
          v226 = OUTLINED_FUNCTION_3_8();
          v227(v226);
          goto LABEL_29;
        case 7:
          HIBYTE(a10) = 7;
          sub_231453EB4();
          OUTLINED_FUNCTION_9_15();
          swift_unknownObjectRelease();
          v204 = OUTLINED_FUNCTION_10_15(&v290);
          v205(v204, v257);
          v206 = OUTLINED_FUNCTION_3_8();
          v207(v206);
          goto LABEL_29;
        case 8:
          HIBYTE(a10) = 8;
          sub_231453E60();
          OUTLINED_FUNCTION_6_11();
          swift_unknownObjectRelease();
          v235 = OUTLINED_FUNCTION_7_11(&v291);
          v236(v235, v260);
          v237 = OUTLINED_FUNCTION_3_8();
          v238(v237);
          goto LABEL_29;
        case 9:
          HIBYTE(a10) = 9;
          sub_231453E0C();
          OUTLINED_FUNCTION_6_11();
          swift_unknownObjectRelease();
          v189 = OUTLINED_FUNCTION_7_11(&v293);
          v190(v189, v262);
          v191 = OUTLINED_FUNCTION_3_8();
          v192(v191);
          goto LABEL_29;
        case 0xALL:
          HIBYTE(a10) = 10;
          sub_231453DB8();
          OUTLINED_FUNCTION_6_11();
          swift_unknownObjectRelease();
          v231 = OUTLINED_FUNCTION_7_11(&v295);
          v232(v231, v264);
          v233 = OUTLINED_FUNCTION_3_8();
          v234(v233);
          goto LABEL_29;
        case 0xBLL:
          HIBYTE(a10) = 11;
          sub_231453D64();
          OUTLINED_FUNCTION_6_11();
          swift_unknownObjectRelease();
          v178 = OUTLINED_FUNCTION_7_11(&v297);
          v179(v178, v266);
          v180 = OUTLINED_FUNCTION_3_8();
          v181(v180);
          goto LABEL_29;
        case 0xCLL:
          HIBYTE(a10) = 12;
          sub_231453D10();
          OUTLINED_FUNCTION_6_11();
          v186 = v270;
          sub_231478688();
          v187 = v298;
          v188 = v299;
          swift_unknownObjectRelease();
          OUTLINED_FUNCTION_13_1(&v300);
          v239(v293, v186);
          (*(v188 + 8))(v147, v140);
          goto LABEL_30;
        case 0xDLL:
          HIBYTE(a10) = 13;
          sub_231453CBC();
          OUTLINED_FUNCTION_6_11();
          swift_unknownObjectRelease();
          v220 = OUTLINED_FUNCTION_7_11(&v299);
          v221(v220, v269);
          v222 = OUTLINED_FUNCTION_3_8();
          v223(v222);
          goto LABEL_29;
        case 0xELL:
          HIBYTE(a10) = 14;
          sub_231453C68();
          OUTLINED_FUNCTION_6_11();
          swift_unknownObjectRelease();
          v174 = OUTLINED_FUNCTION_7_11(&a11);
          v175(v174, v272);
          v176 = OUTLINED_FUNCTION_3_8();
          v177(v176);
          goto LABEL_29;
        case 0xFLL:
          HIBYTE(a10) = 15;
          sub_231453C14();
          OUTLINED_FUNCTION_6_11();
          swift_unknownObjectRelease();
          v197 = OUTLINED_FUNCTION_7_11(&a13);
          v198(v197, v274);
          v199 = OUTLINED_FUNCTION_3_8();
          v200(v199);
          goto LABEL_29;
        case 0x10:
          HIBYTE(a10) = 16;
          sub_231453BC0();
          OUTLINED_FUNCTION_6_11();
          swift_unknownObjectRelease();
          v170 = OUTLINED_FUNCTION_7_11(&a15);
          v171(v170, v276);
          v172 = OUTLINED_FUNCTION_3_8();
          v173(v172);
          goto LABEL_29;
        case 0x11:
          HIBYTE(a10) = 17;
          sub_231453B6C();
          OUTLINED_FUNCTION_6_11();
          swift_unknownObjectRelease();
          v212 = OUTLINED_FUNCTION_7_11(&a17);
          v213(v212, v278);
          v214 = OUTLINED_FUNCTION_3_8();
          v215(v214);
          goto LABEL_29;
        case 0x12:
          HIBYTE(a10) = 18;
          sub_231453B18();
          v228 = v292;
          OUTLINED_FUNCTION_9_15();
          swift_unknownObjectRelease();
          (*(v279 + 8))(v228, v161);
          v229 = OUTLINED_FUNCTION_3_8();
          v230(v229);
          goto LABEL_29;
        default:
          HIBYTE(a10) = 0;
          sub_231454100();
          OUTLINED_FUNCTION_6_11();
          swift_unknownObjectRelease();
          v162 = OUTLINED_FUNCTION_7_11(&v276);
          v163(v162, v241);
          v164 = OUTLINED_FUNCTION_3_8();
          v165(v164);
LABEL_29:
          v187 = v298;
LABEL_30:
          __swift_destroy_boxed_opaque_existential_0(v187);
          break;
      }

      goto LABEL_10;
    }

    v152 = v147;
    goto LABEL_8;
  }

  __break(1u);
}

uint64_t sub_231452E08(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFED && *(a1 + 16))
  {
    return (*a1 + 2147483630);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 17;
  if (v4 >= 0x13)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_231452E60(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFEE)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483630;
    if (a3 >= 0x7FFFFFEE)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFEE)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 17;
    }
  }

  return result;
}

void *sub_231452EB0(void *result, int a2)
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

_BYTE *storeEnumTagSinglePayload for QueryExpression.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_231452FC0()
{
  result = qword_27DD4E2A0;
  if (!qword_27DD4E2A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD4E2A0);
  }

  return result;
}

uint64_t sub_231453014(uint64_t a1)
{
  v2 = sub_231454004();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_231453050(uint64_t a1)
{
  v2 = sub_231454004();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_231453094@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2314503A8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2314530BC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_231450970();
  *a1 = result;
  return result;
}

uint64_t sub_2314530E4(uint64_t a1)
{
  v2 = sub_231453AC4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_231453120(uint64_t a1)
{
  v2 = sub_231453AC4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23145315C(uint64_t a1)
{
  v2 = sub_231453D64();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_231453198(uint64_t a1)
{
  v2 = sub_231453D64();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2314531D4(uint64_t a1)
{
  v2 = sub_2314540AC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_231453210(uint64_t a1)
{
  v2 = sub_2314540AC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23145324C(uint64_t a1)
{
  v2 = sub_231453B6C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_231453288(uint64_t a1)
{
  v2 = sub_231453B6C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2314532C4(uint64_t a1)
{
  v2 = sub_231453EB4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_231453300(uint64_t a1)
{
  v2 = sub_231453EB4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23145333C(uint64_t a1)
{
  v2 = sub_231454058();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_231453378(uint64_t a1)
{
  v2 = sub_231454058();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2314533B4(uint64_t a1)
{
  v2 = sub_231453DB8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2314533F0(uint64_t a1)
{
  v2 = sub_231453DB8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23145342C(uint64_t a1)
{
  v2 = sub_231453E0C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_231453468(uint64_t a1)
{
  v2 = sub_231453E0C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2314534A4(uint64_t a1)
{
  v2 = sub_231453CBC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2314534E0(uint64_t a1)
{
  v2 = sub_231453CBC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23145351C(uint64_t a1)
{
  v2 = sub_231453C68();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_231453558(uint64_t a1)
{
  v2 = sub_231453C68();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_231453594(uint64_t a1)
{
  v2 = sub_231453D10();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2314535D0(uint64_t a1)
{
  v2 = sub_231453D10();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23145360C(uint64_t a1)
{
  v2 = sub_231453F08();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_231453648(uint64_t a1)
{
  v2 = sub_231453F08();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_231453684(uint64_t a1)
{
  v2 = sub_231454100();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2314536C0(uint64_t a1)
{
  v2 = sub_231454100();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2314536FC(uint64_t a1)
{
  v2 = sub_231453F5C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_231453738(uint64_t a1)
{
  v2 = sub_231453F5C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_231453774(uint64_t a1)
{
  v2 = sub_231453BC0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2314537B0(uint64_t a1)
{
  v2 = sub_231453BC0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2314537EC(uint64_t a1)
{
  v2 = sub_231453C14();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_231453828(uint64_t a1)
{
  v2 = sub_231453C14();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_231453864(uint64_t a1)
{
  v2 = sub_231453E60();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2314538A0(uint64_t a1)
{
  v2 = sub_231453E60();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2314538DC(uint64_t a1)
{
  v2 = sub_231453FB0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_231453918(uint64_t a1)
{
  v2 = sub_231453FB0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_231453954(uint64_t a1)
{
  v2 = sub_231453B18();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_231453990(uint64_t a1)
{
  v2 = sub_231453B18();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_231453A18()
{
  result = qword_27DD4E2A8;
  if (!qword_27DD4E2A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD4E2A8);
  }

  return result;
}

unint64_t sub_231453A70()
{
  result = qword_27DD4E2B0;
  if (!qword_27DD4E2B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD4E2B0);
  }

  return result;
}

unint64_t sub_231453AC4()
{
  result = qword_27DD4E358;
  if (!qword_27DD4E358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD4E358);
  }

  return result;
}

unint64_t sub_231453B18()
{
  result = qword_27DD4E360;
  if (!qword_27DD4E360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD4E360);
  }

  return result;
}

unint64_t sub_231453B6C()
{
  result = qword_27DD4E368;
  if (!qword_27DD4E368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD4E368);
  }

  return result;
}

unint64_t sub_231453BC0()
{
  result = qword_27DD4E370;
  if (!qword_27DD4E370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD4E370);
  }

  return result;
}

unint64_t sub_231453C14()
{
  result = qword_27DD4E378;
  if (!qword_27DD4E378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD4E378);
  }

  return result;
}

unint64_t sub_231453C68()
{
  result = qword_27DD4E380;
  if (!qword_27DD4E380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD4E380);
  }

  return result;
}

unint64_t sub_231453CBC()
{
  result = qword_27DD4E388;
  if (!qword_27DD4E388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD4E388);
  }

  return result;
}

unint64_t sub_231453D10()
{
  result = qword_27DD4E390;
  if (!qword_27DD4E390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD4E390);
  }

  return result;
}

unint64_t sub_231453D64()
{
  result = qword_27DD4E398;
  if (!qword_27DD4E398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD4E398);
  }

  return result;
}

unint64_t sub_231453DB8()
{
  result = qword_27DD4E3A0;
  if (!qword_27DD4E3A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD4E3A0);
  }

  return result;
}

unint64_t sub_231453E0C()
{
  result = qword_27DD4E3A8;
  if (!qword_27DD4E3A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD4E3A8);
  }

  return result;
}

unint64_t sub_231453E60()
{
  result = qword_27DD4E3B0;
  if (!qword_27DD4E3B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD4E3B0);
  }

  return result;
}

unint64_t sub_231453EB4()
{
  result = qword_27DD4E3B8;
  if (!qword_27DD4E3B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD4E3B8);
  }

  return result;
}

unint64_t sub_231453F08()
{
  result = qword_27DD4E3C0;
  if (!qword_27DD4E3C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD4E3C0);
  }

  return result;
}

unint64_t sub_231453F5C()
{
  result = qword_27DD4E3C8;
  if (!qword_27DD4E3C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD4E3C8);
  }

  return result;
}

unint64_t sub_231453FB0()
{
  result = qword_27DD4E3D0;
  if (!qword_27DD4E3D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD4E3D0);
  }

  return result;
}

unint64_t sub_231454004()
{
  result = qword_27DD4E3D8;
  if (!qword_27DD4E3D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD4E3D8);
  }

  return result;
}

unint64_t sub_231454058()
{
  result = qword_27DD4E3E0;
  if (!qword_27DD4E3E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD4E3E0);
  }

  return result;
}

unint64_t sub_2314540AC()
{
  result = qword_27DD4E3E8;
  if (!qword_27DD4E3E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD4E3E8);
  }

  return result;
}

unint64_t sub_231454100()
{
  result = qword_27DD4E3F0;
  if (!qword_27DD4E3F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD4E3F0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for QueryKey.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xEE)
  {
    if (a2 + 18 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 18) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 19;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x13;
  v5 = v6 - 19;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for QueryKey.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 18 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 18) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xEE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xED)
  {
    v6 = ((a2 - 238) >> 8) + 1;
    *result = a2 + 18;
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
          *result = a2 + 18;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for QueryKey.FieldCodingKeys(_BYTE *result, int a2, int a3)
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

unint64_t sub_231454488()
{
  result = qword_27DD4E498;
  if (!qword_27DD4E498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD4E498);
  }

  return result;
}

unint64_t sub_2314544E0()
{
  result = qword_27DD4E4A0;
  if (!qword_27DD4E4A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD4E4A0);
  }

  return result;
}

unint64_t sub_231454538()
{
  result = qword_27DD4E4A8;
  if (!qword_27DD4E4A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD4E4A8);
  }

  return result;
}

unint64_t sub_231454590()
{
  result = qword_27DD4E4B0;
  if (!qword_27DD4E4B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD4E4B0);
  }

  return result;
}

unint64_t sub_2314545E8()
{
  result = qword_27DD4E4B8;
  if (!qword_27DD4E4B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD4E4B8);
  }

  return result;
}

unint64_t sub_231454640()
{
  result = qword_27DD4E4C0;
  if (!qword_27DD4E4C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD4E4C0);
  }

  return result;
}

unint64_t sub_231454698()
{
  result = qword_27DD4E4C8;
  if (!qword_27DD4E4C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD4E4C8);
  }

  return result;
}

unint64_t sub_2314546F0()
{
  result = qword_27DD4E4D0;
  if (!qword_27DD4E4D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD4E4D0);
  }

  return result;
}

unint64_t sub_231454748()
{
  result = qword_27DD4E4D8;
  if (!qword_27DD4E4D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD4E4D8);
  }

  return result;
}

unint64_t sub_2314547A0()
{
  result = qword_27DD4E4E0;
  if (!qword_27DD4E4E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD4E4E0);
  }

  return result;
}

unint64_t sub_2314547F8()
{
  result = qword_27DD4E4E8;
  if (!qword_27DD4E4E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD4E4E8);
  }

  return result;
}

unint64_t sub_231454850()
{
  result = qword_27DD4E4F0;
  if (!qword_27DD4E4F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD4E4F0);
  }

  return result;
}

unint64_t sub_2314548A8()
{
  result = qword_27DD4E4F8;
  if (!qword_27DD4E4F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD4E4F8);
  }

  return result;
}

unint64_t sub_231454900()
{
  result = qword_27DD4E500;
  if (!qword_27DD4E500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD4E500);
  }

  return result;
}

unint64_t sub_231454958()
{
  result = qword_27DD4E508;
  if (!qword_27DD4E508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD4E508);
  }

  return result;
}

unint64_t sub_2314549B0()
{
  result = qword_27DD4E510;
  if (!qword_27DD4E510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD4E510);
  }

  return result;
}

unint64_t sub_231454A08()
{
  result = qword_27DD4E518;
  if (!qword_27DD4E518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD4E518);
  }

  return result;
}

unint64_t sub_231454A60()
{
  result = qword_27DD4E520;
  if (!qword_27DD4E520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD4E520);
  }

  return result;
}

unint64_t sub_231454AB8()
{
  result = qword_27DD4E528;
  if (!qword_27DD4E528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD4E528);
  }

  return result;
}

unint64_t sub_231454B10()
{
  result = qword_27DD4E530;
  if (!qword_27DD4E530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD4E530);
  }

  return result;
}

unint64_t sub_231454B68()
{
  result = qword_27DD4E538;
  if (!qword_27DD4E538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD4E538);
  }

  return result;
}

unint64_t sub_231454BC0()
{
  result = qword_27DD4E540;
  if (!qword_27DD4E540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD4E540);
  }

  return result;
}

unint64_t sub_231454C18()
{
  result = qword_27DD4E548;
  if (!qword_27DD4E548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD4E548);
  }

  return result;
}

unint64_t sub_231454C70()
{
  result = qword_27DD4E550;
  if (!qword_27DD4E550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD4E550);
  }

  return result;
}

unint64_t sub_231454CC8()
{
  result = qword_27DD4E558;
  if (!qword_27DD4E558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD4E558);
  }

  return result;
}

unint64_t sub_231454D20()
{
  result = qword_27DD4E560;
  if (!qword_27DD4E560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD4E560);
  }

  return result;
}

unint64_t sub_231454D78()
{
  result = qword_27DD4E568;
  if (!qword_27DD4E568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD4E568);
  }

  return result;
}

unint64_t sub_231454DD0()
{
  result = qword_27DD4E570;
  if (!qword_27DD4E570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD4E570);
  }

  return result;
}

unint64_t sub_231454E28()
{
  result = qword_27DD4E578;
  if (!qword_27DD4E578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD4E578);
  }

  return result;
}

unint64_t sub_231454E80()
{
  result = qword_27DD4E580;
  if (!qword_27DD4E580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD4E580);
  }

  return result;
}

unint64_t sub_231454ED8()
{
  result = qword_27DD4E588;
  if (!qword_27DD4E588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD4E588);
  }

  return result;
}

unint64_t sub_231454F30()
{
  result = qword_27DD4E590;
  if (!qword_27DD4E590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD4E590);
  }

  return result;
}

unint64_t sub_231454F88()
{
  result = qword_27DD4E598;
  if (!qword_27DD4E598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD4E598);
  }

  return result;
}

unint64_t sub_231454FE0()
{
  result = qword_27DD4E5A0;
  if (!qword_27DD4E5A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD4E5A0);
  }

  return result;
}

unint64_t sub_231455038()
{
  result = qword_27DD4E5A8;
  if (!qword_27DD4E5A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD4E5A8);
  }

  return result;
}

unint64_t sub_231455090()
{
  result = qword_27DD4E5B0;
  if (!qword_27DD4E5B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD4E5B0);
  }

  return result;
}

unint64_t sub_2314550E8()
{
  result = qword_27DD4E5B8;
  if (!qword_27DD4E5B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD4E5B8);
  }

  return result;
}

unint64_t sub_231455140()
{
  result = qword_27DD4E5C0;
  if (!qword_27DD4E5C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD4E5C0);
  }

  return result;
}

unint64_t sub_231455198()
{
  result = qword_27DD4E5C8;
  if (!qword_27DD4E5C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD4E5C8);
  }

  return result;
}

unint64_t sub_2314551F0()
{
  result = qword_27DD4E5D0;
  if (!qword_27DD4E5D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD4E5D0);
  }

  return result;
}

unint64_t sub_231455248()
{
  result = qword_27DD4E5D8;
  if (!qword_27DD4E5D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD4E5D8);
  }

  return result;
}

unint64_t sub_2314552A0()
{
  result = qword_27DD4E5E0[0];
  if (!qword_27DD4E5E0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DD4E5E0);
  }

  return result;
}

uint64_t sub_2314552F4(void (*a1)(char *, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v49 = a8;
  v58 = a1;
  v59 = a2;
  OUTLINED_FUNCTION_6_12();
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_2();
  v60 = v17 - v16;
  v19 = *(v18 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_4(AssociatedTypeWitness);
  v62 = v20;
  v22 = *(v21 + 64);
  OUTLINED_FUNCTION_61();
  v24 = MEMORY[0x28223BE20](v23);
  v26 = &v47 - v25;
  v27 = *(*(a4 - 8) + 64);
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_2();
  v56 = v29 - v28;
  v30 = swift_getAssociatedTypeWitness();
  v31 = OUTLINED_FUNCTION_4(v30);
  v50 = v32;
  v51 = v31;
  v34 = *(v33 + 64);
  OUTLINED_FUNCTION_61();
  MEMORY[0x28223BE20](v35);
  v37 = &v47 - v36;
  v38 = sub_231478248();
  if (!v38)
  {
    return sub_231478168();
  }

  v61 = v38;
  v65 = sub_2314785D8();
  v52 = sub_2314785E8();
  sub_231478588();
  result = sub_231478238();
  if ((v61 & 0x8000000000000000) == 0)
  {
    v47 = v12;
    v48 = a5;
    v40 = 0;
    v53 = (v62 + 16);
    v54 = v62 + 8;
    v55 = v8;
    while (!__OFADD__(v40, 1))
    {
      v62 = v40 + 1;
      v41 = sub_231478288();
      (*v53)(v26);
      v41(v64, 0);
      v42 = v63;
      v58(v26, v60);
      if (v42)
      {
        v45 = OUTLINED_FUNCTION_49_1();
        v46(v45);
        (*(v50 + 8))(v37, v51);

        return (*(v47 + 32))(v49, v60, v48);
      }

      v63 = 0;
      v43 = OUTLINED_FUNCTION_49_1();
      v44(v43);
      sub_2314785C8();
      result = sub_231478258();
      ++v40;
      if (v62 == v61)
      {
        (*(v50 + 8))(v37, v51);
        return v65;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t QueryFilter.asFilter.getter@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(a1 + 16);
  OUTLINED_FUNCTION_6_12();
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_2();
  v9 = OUTLINED_FUNCTION_4(v8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_2();
  v14 = (v13 - v12);
  (*(v15 + 16))(v13 - v12);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  switch(EnumCaseMultiPayload)
  {
    case 6:
      v32[1] = *v14;
      MEMORY[0x28223BE20](EnumCaseMultiPayload);
      v23 = *(a1 + 24);
      v32[-2] = v4;
      v32[-1] = v23;
      KeyPath = swift_getKeyPath();
      v25 = MEMORY[0x28223BE20](KeyPath);
      v32[-2] = v23;
      v32[-1] = v25;
      v26 = sub_231478198();
      Value = type metadata accessor for QueryValue();
      WitnessTable = swift_getWitnessTable();
      v30 = sub_2314552F4(sub_231448528, &v32[-4], v26, Value, MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v29);

      *a2 = v30;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD4D680, &qword_2314795C0);
      OUTLINED_FUNCTION_35();
      break;
    default:
      v17 = OUTLINED_FUNCTION_4_11();
      v18(v17);
      v19 = OUTLINED_FUNCTION_3_9();
      v20(v19);
      v21 = OUTLINED_FUNCTION_10_16();
      v22(v21);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD4D680, &qword_2314795C0);
      OUTLINED_FUNCTION_35();
      break;
  }

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_231455B88(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 29029 && a2 == 0xE200000000000000;
  if (v3 || (sub_2314787C8() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 7431534 && a2 == 0xE300000000000000;
    if (v6 || (sub_2314787C8() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 29804 && a2 == 0xE200000000000000;
      if (v7 || (sub_2314787C8() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 6648940 && a2 == 0xE300000000000000;
        if (v8 || (sub_2314787C8() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 29799 && a2 == 0xE200000000000000;
          if (v9 || (sub_2314787C8() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 6648935 && a2 == 0xE300000000000000;
            if (v10 || (sub_2314787C8() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 1852404585 && a2 == 0xE400000000000000;
              if (v11 || (sub_2314787C8() & 1) != 0)
              {

                return 6;
              }

              else if (a1 == 1701538156 && a2 == 0xE400000000000000)
              {

                return 7;
              }

              else
              {
                v13 = sub_2314787C8();

                if (v13)
                {
                  return 7;
                }

                else
                {
                  return 8;
                }
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_231455DEC(char a1)
{
  result = 29029;
  switch(a1)
  {
    case 1:
      result = 7431534;
      break;
    case 2:
      result = 29804;
      break;
    case 3:
      result = 6648940;
      break;
    case 4:
      result = 29799;
      break;
    case 5:
      result = 6648935;
      break;
    case 6:
      result = 1852404585;
      break;
    case 7:
      result = 1701538156;
      break;
    default:
      return result;
  }

  return result;
}

BOOL sub_231455E80(char *a1, char *a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v3 = *(a3 + 24);
  return sub_231407AD4(*a1, *a2);
}

uint64_t sub_231455E94(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  return sub_23141B4EC(*v1);
}

uint64_t sub_231455EA0(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(a2 + 24);
  return sub_23140A34C(a1, *v2);
}

uint64_t sub_231455EAC(uint64_t a1, uint64_t a2)
{
  sub_2314788E8();
  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  sub_23140A34C(v7, *v2);
  return sub_231478918();
}

uint64_t sub_231455EF4(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  return sub_231455DEC(*v1);
}

uint64_t sub_231455F00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  v6 = *(a3 + 16);
  v5 = *(a3 + 24);
  result = sub_231455B88(a1, a2);
  *a4 = result;
  return result;
}

uint64_t sub_231455F30(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *v1;
  return sub_23141B534();
}

uint64_t sub_231455F54@<X0>(uint64_t a1@<X1>, _BYTE *a2@<X8>)
{
  v4 = *(a1 + 16);
  v3 = *(a1 + 24);
  result = sub_231455DE4();
  *a2 = result;
  return result;
}

uint64_t sub_231455F84(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_231455FD8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t sub_23145602C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 16);
  v4 = *(a3 + 24);
  return OUTLINED_FUNCTION_41_0();
}

uint64_t sub_23145604C(uint64_t a1)
{
  v2 = *(a1 + 16);
  v1 = *(a1 + 24);
  return sub_231423DF4();
}

uint64_t sub_231456070@<X0>(uint64_t a1@<X1>, _BYTE *a2@<X8>)
{
  v4 = *(a1 + 16);
  v3 = *(a1 + 24);
  result = OUTLINED_FUNCTION_41_0();
  *a2 = result & 1;
  return result;
}

uint64_t sub_2314560A4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_2314560F8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t sub_23145614C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_2314561A0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t sub_2314561F4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_231456248(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t sub_23145629C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_2314562F0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t sub_231456344(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_231456398(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t sub_2314563EC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_231456440(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t sub_231456494(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_2314564E8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t sub_23145653C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *, void, void))
{
  sub_2314788E8();
  a4(v7, *(a2 + 16), *(a2 + 24));
  return sub_231478918();
}

uint64_t sub_2314565B0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_231456604(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t QueryFilter<>.encode(to:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v146 = a4;
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  v8 = type metadata accessor for QueryFilter.LikeCodingKeys();
  OUTLINED_FUNCTION_24_4();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_19_10();
  v138[0] = v9;
  v138[1] = v8;
  v10 = sub_231478778();
  v11 = OUTLINED_FUNCTION_4(v10);
  v139 = v12;
  v140 = v11;
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_61();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_13();
  v137 = v16;
  OUTLINED_FUNCTION_7_12();
  v17 = type metadata accessor for QueryFilter.IsinCodingKeys();
  OUTLINED_FUNCTION_23_8();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_19_10();
  v132 = v18;
  v133 = v17;
  v19 = sub_231478778();
  v20 = OUTLINED_FUNCTION_4(v19);
  v135 = v21;
  v136 = v20;
  v23 = *(v22 + 64);
  OUTLINED_FUNCTION_61();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_13();
  v134 = v25;
  OUTLINED_FUNCTION_7_12();
  v26 = type metadata accessor for QueryFilter.GteCodingKeys();
  OUTLINED_FUNCTION_30_4();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_19_10();
  v129[34] = v26;
  v129[32] = v27;
  v28 = sub_231478778();
  v29 = OUTLINED_FUNCTION_4(v28);
  v130 = v30;
  v131 = v29;
  v32 = *(v31 + 64);
  OUTLINED_FUNCTION_61();
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_13();
  v129[33] = v34;
  OUTLINED_FUNCTION_7_12();
  type metadata accessor for QueryFilter.GtCodingKeys();
  OUTLINED_FUNCTION_29_3();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_19_10();
  OUTLINED_FUNCTION_46_1(&v153);
  v129[27] = v35;
  v36 = sub_231478778();
  OUTLINED_FUNCTION_0_0(v36, &v155);
  v129[30] = v37;
  v39 = *(v38 + 64);
  OUTLINED_FUNCTION_61();
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_13();
  v129[28] = v41;
  OUTLINED_FUNCTION_7_12();
  type metadata accessor for QueryFilter.LteCodingKeys();
  OUTLINED_FUNCTION_28_5();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_19_10();
  OUTLINED_FUNCTION_46_1(&v149);
  v129[22] = v42;
  v43 = sub_231478778();
  OUTLINED_FUNCTION_0_0(v43, &v151);
  v129[25] = v44;
  v46 = *(v45 + 64);
  OUTLINED_FUNCTION_61();
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_13();
  v129[23] = v48;
  OUTLINED_FUNCTION_7_12();
  type metadata accessor for QueryFilter.LtCodingKeys();
  OUTLINED_FUNCTION_27_5();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_19_10();
  OUTLINED_FUNCTION_46_1(&v145);
  v129[17] = v49;
  v50 = sub_231478778();
  OUTLINED_FUNCTION_0_0(v50, v147);
  v129[20] = v51;
  v53 = *(v52 + 64);
  OUTLINED_FUNCTION_61();
  MEMORY[0x28223BE20](v54);
  OUTLINED_FUNCTION_13();
  v129[18] = v55;
  OUTLINED_FUNCTION_7_12();
  type metadata accessor for QueryFilter.NeqCodingKeys();
  OUTLINED_FUNCTION_26_7();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_19_10();
  OUTLINED_FUNCTION_46_1(&v140);
  v129[12] = v56;
  v57 = sub_231478778();
  OUTLINED_FUNCTION_0_0(v57, &v142);
  v129[15] = v58;
  v60 = *(v59 + 64);
  OUTLINED_FUNCTION_61();
  MEMORY[0x28223BE20](v61);
  OUTLINED_FUNCTION_13();
  v129[13] = v62;
  OUTLINED_FUNCTION_7_12();
  type metadata accessor for QueryFilter.EqCodingKeys();
  OUTLINED_FUNCTION_25_5();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_19_10();
  OUTLINED_FUNCTION_46_1(&v136);
  v129[7] = v63;
  v64 = sub_231478778();
  OUTLINED_FUNCTION_0_0(v64, v138);
  v129[10] = v65;
  v67 = *(v66 + 64);
  OUTLINED_FUNCTION_61();
  MEMORY[0x28223BE20](v68);
  OUTLINED_FUNCTION_13();
  v129[8] = v69;
  OUTLINED_FUNCTION_6_12();
  v141 = v70;
  v72 = *(v71 + 64);
  MEMORY[0x28223BE20](v73);
  OUTLINED_FUNCTION_17_0();
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v74);
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v75);
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v76);
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v77);
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v78);
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v79);
  v129[0] = v129 - v80;
  OUTLINED_FUNCTION_6_12();
  v82 = v81;
  v84 = *(v83 + 64);
  MEMORY[0x28223BE20](v85);
  OUTLINED_FUNCTION_2();
  v88 = (v87 - v86);
  v89 = type metadata accessor for QueryFilter.CodingKeys();
  OUTLINED_FUNCTION_31_1();
  swift_getWitnessTable();
  v90 = sub_231478778();
  v144 = OUTLINED_FUNCTION_4(v90);
  v145 = v91;
  v93 = *(v92 + 64);
  OUTLINED_FUNCTION_61();
  MEMORY[0x28223BE20](v94);
  v96 = v129 - v95;
  v97 = a1;
  v98 = a1[3];
  v99 = v97[4];
  __swift_project_boxed_opaque_existential_1(v97, v98);
  v143 = v96;
  sub_231478968();
  v101 = *(v82 + 16);
  v100 = v82 + 16;
  v101(v88, v142, a2);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      OUTLINED_FUNCTION_15_9();
      v120 = OUTLINED_FUNCTION_8_15();
      v121(v120);
      OUTLINED_FUNCTION_39_1(1);
      OUTLINED_FUNCTION_144_0(&v139);
      OUTLINED_FUNCTION_14_9();
      OUTLINED_FUNCTION_48_1();
      OUTLINED_FUNCTION_12_17(&v142);
      v112 = &v141;
      goto LABEL_8;
    case 2u:
      OUTLINED_FUNCTION_15_9();
      v113 = OUTLINED_FUNCTION_8_15();
      v114(v113);
      OUTLINED_FUNCTION_39_1(2);
      OUTLINED_FUNCTION_144_0(&v144);
      OUTLINED_FUNCTION_14_9();
      OUTLINED_FUNCTION_48_1();
      OUTLINED_FUNCTION_12_17(v147);
      v112 = &v146;
      goto LABEL_8;
    case 3u:
      OUTLINED_FUNCTION_15_9();
      v115 = OUTLINED_FUNCTION_8_15();
      v116(v115);
      OUTLINED_FUNCTION_39_1(3);
      OUTLINED_FUNCTION_144_0(v148);
      OUTLINED_FUNCTION_14_9();
      OUTLINED_FUNCTION_48_1();
      OUTLINED_FUNCTION_12_17(&v151);
      v112 = &v150;
      goto LABEL_8;
    case 4u:
      OUTLINED_FUNCTION_15_9();
      v110 = OUTLINED_FUNCTION_8_15();
      v111(v110);
      OUTLINED_FUNCTION_39_1(4);
      OUTLINED_FUNCTION_144_0(&v152);
      OUTLINED_FUNCTION_14_9();
      OUTLINED_FUNCTION_48_1();
      OUTLINED_FUNCTION_12_17(&v155);
      v112 = &v154;
LABEL_8:
      v119 = *(v112 - 32);
      goto LABEL_9;
    case 5u:
      OUTLINED_FUNCTION_15_9();
      v122 = OUTLINED_FUNCTION_8_15();
      v123(v122);
      OUTLINED_FUNCTION_39_1(5);
      OUTLINED_FUNCTION_144_0(&v156);
      OUTLINED_FUNCTION_14_9();
      OUTLINED_FUNCTION_48_1();
      v98 = v131;
      OUTLINED_FUNCTION_13_13();
      v119 = v130;
      goto LABEL_9;
    case 6u:
      v124 = *v88;
      OUTLINED_FUNCTION_39_1(6);
      v125 = v134;
      v127 = v143;
      v126 = v144;
      sub_2314786F8();
      v150 = v124;
      sub_231478198();
      v147[1] = v146;
      swift_getWitnessTable();
      v128 = v136;
      sub_231478748();
      (*(v135 + 8))(v125, v128);
      (*(v145 + 8))(v127, v126);

    case 7u:
      OUTLINED_FUNCTION_15_9();
      v117 = OUTLINED_FUNCTION_8_15();
      v118(v117);
      OUTLINED_FUNCTION_39_1(7);
      v88 = v137;
      OUTLINED_FUNCTION_14_9();
      sub_2314786F8();
      v98 = v140;
      OUTLINED_FUNCTION_13_13();
      v119 = v139;
LABEL_9:
      (*(v119 + 8))(v88, v98);
      (*(v89 + 8))(v100, v6);
      result = (*(v145 + 8))(v96, a2);
      break;
    default:
      v102 = v141;
      v103 = *(v141 + 32);
      v104 = OUTLINED_FUNCTION_8_15();
      v105(v104);
      LOBYTE(v150) = 0;
      OUTLINED_FUNCTION_144_0(&v135);
      v106 = v143;
      v107 = v144;
      sub_2314786F8();
      OUTLINED_FUNCTION_12_17(v138);
      OUTLINED_FUNCTION_13_1(&v137);
      v108(v88, v98);
      (*(v102 + 8))(v100, v6);
      result = (*(v145 + 8))(v106, v107);
      break;
  }

  return result;
}

uint64_t QueryFilter<>.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v185 = a3;
  v166 = a4;
  type metadata accessor for QueryFilter.LikeCodingKeys();
  OUTLINED_FUNCTION_24_4();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_19_10();
  OUTLINED_FUNCTION_38_2(&v205);
  v182 = v6;
  v7 = sub_2314786E8();
  OUTLINED_FUNCTION_0_0(v7, &v206);
  v163 = v8;
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_61();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_15(v12);
  type metadata accessor for QueryFilter.IsinCodingKeys();
  OUTLINED_FUNCTION_23_8();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_19_10();
  OUTLINED_FUNCTION_38_2(&v204);
  v180 = v13;
  v14 = sub_2314786E8();
  OUTLINED_FUNCTION_0_0(v14, &v187);
  v162 = v15;
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_61();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_15(v19);
  type metadata accessor for QueryFilter.GteCodingKeys();
  OUTLINED_FUNCTION_30_4();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_19_10();
  OUTLINED_FUNCTION_38_2(&v202);
  v177 = v20;
  v21 = sub_2314786E8();
  OUTLINED_FUNCTION_0_0(v21, &v203);
  v161 = v22;
  v24 = *(v23 + 64);
  OUTLINED_FUNCTION_61();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_15(v26);
  type metadata accessor for QueryFilter.GtCodingKeys();
  OUTLINED_FUNCTION_29_3();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_19_10();
  OUTLINED_FUNCTION_38_2(&v201);
  v175 = v27;
  v28 = sub_2314786E8();
  OUTLINED_FUNCTION_0_0(v28, v184);
  v160 = v29;
  v31 = *(v30 + 64);
  OUTLINED_FUNCTION_61();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_15(v33);
  type metadata accessor for QueryFilter.LteCodingKeys();
  OUTLINED_FUNCTION_28_5();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_19_10();
  OUTLINED_FUNCTION_38_2(v200);
  v173 = v34;
  v35 = sub_2314786E8();
  OUTLINED_FUNCTION_0_0(v35, &v182);
  v159 = v36;
  v38 = *(v37 + 64);
  OUTLINED_FUNCTION_61();
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_15(v40);
  type metadata accessor for QueryFilter.LtCodingKeys();
  OUTLINED_FUNCTION_27_5();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_19_10();
  OUTLINED_FUNCTION_38_2(&v199 + 8);
  v171[1] = v41;
  v42 = sub_2314786E8();
  OUTLINED_FUNCTION_0_0(v42, &v180);
  v158 = v43;
  v45 = *(v44 + 64);
  OUTLINED_FUNCTION_61();
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_15(v47);
  v48 = type metadata accessor for QueryFilter.NeqCodingKeys();
  OUTLINED_FUNCTION_26_7();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_19_10();
  v189 = v48;
  v170 = v49;
  v50 = sub_2314786E8();
  OUTLINED_FUNCTION_0_0(v50, v178);
  v157 = v51;
  v53 = *(v52 + 64);
  OUTLINED_FUNCTION_61();
  MEMORY[0x28223BE20](v54);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_15(v55);
  type metadata accessor for QueryFilter.EqCodingKeys();
  OUTLINED_FUNCTION_25_5();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_19_10();
  OUTLINED_FUNCTION_38_2(&v197 + 8);
  v168 = v56;
  v57 = sub_2314786E8();
  OUTLINED_FUNCTION_0_0(v57, v176);
  v155 = v58;
  v60 = *(v59 + 64);
  OUTLINED_FUNCTION_61();
  MEMORY[0x28223BE20](v61);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_15(v62);
  *&v191 = type metadata accessor for QueryFilter.CodingKeys();
  OUTLINED_FUNCTION_31_1();
  WitnessTable = swift_getWitnessTable();
  v188 = sub_2314786E8();
  OUTLINED_FUNCTION_4(v188);
  v190 = v63;
  v65 = *(v64 + 64);
  OUTLINED_FUNCTION_61();
  MEMORY[0x28223BE20](v66);
  v68 = &v150 - v67;
  v171[0] = a2;
  Filter = type metadata accessor for QueryFilter();
  v69 = OUTLINED_FUNCTION_4(Filter);
  v167 = v70;
  v72 = *(v71 + 64);
  MEMORY[0x28223BE20](v69);
  OUTLINED_FUNCTION_17_0();
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v73);
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v74);
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v75);
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_11();
  v77 = MEMORY[0x28223BE20](v76);
  v79 = &v150 - v78;
  v80 = MEMORY[0x28223BE20](v77);
  v82 = &v150 - v81;
  v83 = MEMORY[0x28223BE20](v80);
  v85 = &v150 - v84;
  v86 = MEMORY[0x28223BE20](v83);
  v88 = &v150 - v87;
  MEMORY[0x28223BE20](v86);
  v90 = &v150 - v89;
  v91 = a1;
  v92 = a1[3];
  v93 = v91[4];
  v195 = v91;
  __swift_project_boxed_opaque_existential_1(v91, v92);
  v187 = v68;
  v94 = v194;
  sub_231478948();
  if (v94)
  {
    goto LABEL_8;
  }

  v151 = v88;
  v152 = v85;
  v153 = v82;
  WitnessTable = v79;
  v194 = v90;
  v95 = v188;
  v96 = v189;
  v97 = v187;
  *&v196 = sub_2314786D8();
  sub_231478198();
  swift_getWitnessTable();
  *&v198 = sub_231478488();
  *(&v198 + 1) = v98;
  *&v199 = v99;
  *(&v199 + 1) = v100;
  sub_231478478();
  swift_getWitnessTable();
  sub_231478268();
  if (v196 == 8 || (v191 = v198, v196 = v198, v197 = v199, (sub_231478278() & 1) == 0))
  {
    v107 = sub_231478548();
    swift_allocError();
    v108 = v95;
    v110 = v109;
    v111 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4D7B0, &qword_23147A870) + 48);
    *v110 = Filter;
    sub_231478658();
    sub_231478538();
    (*(*(v107 - 8) + 104))(v110, *MEMORY[0x277D84160], v107);
    swift_willThrow();
    (*(v190 + 8))(v97, v108);
    swift_unknownObjectRelease();
LABEL_8:
    v105 = v195;
    return __swift_destroy_boxed_opaque_existential_0(v105);
  }

  v101 = v97;
  v102 = v179;
  v103 = v170;
  v104 = v169;
  v105 = v168;
  switch(v168)
  {
    case 1:
      OUTLINED_FUNCTION_37_2(1);
      OUTLINED_FUNCTION_144_0(&v190);
      OUTLINED_FUNCTION_43_2();
      v105 = v195;
      v121 = v167;
      if (v103)
      {
        goto LABEL_24;
      }

      OUTLINED_FUNCTION_138_0(&v170);
      OUTLINED_FUNCTION_51_1();
      sub_2314786B8();
      OUTLINED_FUNCTION_13_1(&v177);
      v138(v97, v102);
      v139 = OUTLINED_FUNCTION_33_2();
      v140(v139);
      OUTLINED_FUNCTION_42_0();
      OUTLINED_FUNCTION_16_9();
      swift_storeEnumTagMultiPayload();
      v104 = *(v121 + 32);
      v141 = OUTLINED_FUNCTION_32_2();
      v104(v141);
      goto LABEL_27;
    case 2:
      OUTLINED_FUNCTION_37_2(2);
      OUTLINED_FUNCTION_139(&v191);
      OUTLINED_FUNCTION_43_2();
      v105 = v195;
      v116 = v166;
      if (v103)
      {
        goto LABEL_24;
      }

      OUTLINED_FUNCTION_138_0(v171);
      OUTLINED_FUNCTION_36_2();
      OUTLINED_FUNCTION_22_7();
      OUTLINED_FUNCTION_13_1(&v179);
      v125();
      v126 = OUTLINED_FUNCTION_11_16();
      v127(v126);
      OUTLINED_FUNCTION_42_0();
      OUTLINED_FUNCTION_16_9();
      swift_storeEnumTagMultiPayload();
      v104 = *(v167 + 32);
      v128 = OUTLINED_FUNCTION_32_2();
      v104(v128);
      v129 = v116;
      goto LABEL_28;
    case 3:
      OUTLINED_FUNCTION_37_2(3);
      OUTLINED_FUNCTION_139(&v191 + 8);
      OUTLINED_FUNCTION_43_2();
      OUTLINED_FUNCTION_5_14();
      if (v103)
      {
        goto LABEL_24;
      }

      v96 = WitnessTable;
      OUTLINED_FUNCTION_51_1();
      OUTLINED_FUNCTION_36_2();
      OUTLINED_FUNCTION_22_7();
      OUTLINED_FUNCTION_13_1(v181);
      v117();
      v118 = OUTLINED_FUNCTION_11_16();
      v119(v118);
      OUTLINED_FUNCTION_42_0();
      OUTLINED_FUNCTION_16_9();
      goto LABEL_25;
    case 4:
      OUTLINED_FUNCTION_37_2(4);
      OUTLINED_FUNCTION_139(v192);
      OUTLINED_FUNCTION_43_2();
      OUTLINED_FUNCTION_5_14();
      if (v103)
      {
        goto LABEL_24;
      }

      OUTLINED_FUNCTION_138_0(v172);
      OUTLINED_FUNCTION_51_1();
      OUTLINED_FUNCTION_36_2();
      OUTLINED_FUNCTION_22_7();
      OUTLINED_FUNCTION_13_1(v183);
      v113();
      v114 = OUTLINED_FUNCTION_11_16();
      v115(v114);
      OUTLINED_FUNCTION_42_0();
      OUTLINED_FUNCTION_16_9();
      goto LABEL_25;
    case 5:
      OUTLINED_FUNCTION_37_2(5);
      OUTLINED_FUNCTION_139(&WitnessTable);
      OUTLINED_FUNCTION_43_2();
      OUTLINED_FUNCTION_5_14();
      if (v103)
      {
        goto LABEL_24;
      }

      OUTLINED_FUNCTION_138_0(&v173);
      OUTLINED_FUNCTION_36_2();
      OUTLINED_FUNCTION_22_7();
      OUTLINED_FUNCTION_13_1(&v185);
      v142();
      v143 = OUTLINED_FUNCTION_11_16();
      v144(v143);
      OUTLINED_FUNCTION_42_0();
      OUTLINED_FUNCTION_16_9();
      goto LABEL_25;
    case 6:
      OUTLINED_FUNCTION_37_2(6);
      OUTLINED_FUNCTION_43_2();
      v105 = v195;
      v122 = v185;
      if (v103)
      {
        goto LABEL_24;
      }

      sub_231478198();
      v201 = v122;
      swift_getWitnessTable();
      OUTLINED_FUNCTION_51_1();
      v104 = v165;
      sub_2314786B8();
      OUTLINED_FUNCTION_13_1(&Filter);
      v145(v104, v102);
      v146 = OUTLINED_FUNCTION_33_2();
      v147(v146);
      OUTLINED_FUNCTION_42_0();
      v148 = v154;
      *v154 = v196;
      v101 = Filter;
      swift_storeEnumTagMultiPayload();
      v149 = OUTLINED_FUNCTION_45_1();
      (v104)(v149, v148, v101);
      goto LABEL_27;
    case 7:
      OUTLINED_FUNCTION_37_2(7);
      v120 = v164;
      OUTLINED_FUNCTION_43_2();
      OUTLINED_FUNCTION_5_14();
      if (v103)
      {
        goto LABEL_24;
      }

      OUTLINED_FUNCTION_138_0(v174);
      sub_2314786B8();
      OUTLINED_FUNCTION_13_1(&v188);
      v130(v120);
      v131 = OUTLINED_FUNCTION_11_16();
      v132(v131);
      OUTLINED_FUNCTION_42_0();
      OUTLINED_FUNCTION_16_9();
LABEL_25:
      swift_storeEnumTagMultiPayload();
      v104 = *(v97 + 32);
      v136 = OUTLINED_FUNCTION_32_2();
      goto LABEL_26;
    default:
      LOBYTE(v196) = 0;
      OUTLINED_FUNCTION_139(&v189);
      OUTLINED_FUNCTION_43_2();
      OUTLINED_FUNCTION_5_14();
      if (v103)
      {
LABEL_24:
        v123 = OUTLINED_FUNCTION_33_2();
        v124(v123);
        OUTLINED_FUNCTION_42_0();
      }

      else
      {
        v106 = v151;
        v96 = v156;
        OUTLINED_FUNCTION_36_2();
        OUTLINED_FUNCTION_22_7();
        OUTLINED_FUNCTION_13_1(&v175);
        v133();
        v134 = OUTLINED_FUNCTION_11_16();
        v135(v134);
        OUTLINED_FUNCTION_42_0();
        v101 = Filter;
        swift_storeEnumTagMultiPayload();
        v136 = OUTLINED_FUNCTION_45_1();
        v137 = v106;
LABEL_26:
        (v104)(v136, v137, v101);
LABEL_27:
        v129 = v166;
LABEL_28:
        (v104)(v129, v96, v101);
      }

      break;
  }

  return __swift_destroy_boxed_opaque_existential_0(v105);
}

uint64_t sub_2314581B0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *(a3 - 8);
  v5 = *(a2 + 24);
  return QueryFilter<>.init(from:)(a1, *(a2 + 16), v4, a4);
}

uint64_t sub_2314581F8(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    v4 = sub_231478198();
    if (v5 > 0x3F)
    {
      return v4;
    }

    else
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return v2;
}

uint64_t sub_231458290(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(a3 + 16) - 8);
  v4 = 8;
  if (*(v3 + 64) > 8uLL)
  {
    v4 = *(v3 + 64);
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_22;
  }

  v5 = v4 + 1;
  v6 = 8 * (v4 + 1);
  if ((v4 + 1) <= 3)
  {
    v9 = ((a2 + ~(-1 << v6) - 248) >> v6) + 1;
    if (HIWORD(v9))
    {
      v7 = *(a1 + v5);
      if (!v7)
      {
        goto LABEL_22;
      }

      goto LABEL_14;
    }

    if (v9 > 0xFF)
    {
      v7 = *(a1 + v5);
      if (!*(a1 + v5))
      {
        goto LABEL_22;
      }

      goto LABEL_14;
    }

    if (v9 < 2)
    {
LABEL_22:
      v11 = *(a1 + v4);
      if (v11 >= 8)
      {
        return (v11 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v7 = *(a1 + v5);
  if (!*(a1 + v5))
  {
    goto LABEL_22;
  }

LABEL_14:
  v10 = (v7 - 1) << v6;
  if (v5 > 3)
  {
    v10 = 0;
  }

  if (v5)
  {
    if (v5 > 3)
    {
      LODWORD(v5) = 4;
    }

    switch(v5)
    {
      case 2:
        LODWORD(v5) = *a1;
        break;
      case 3:
        LODWORD(v5) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v5) = *a1;
        break;
      default:
        LODWORD(v5) = *a1;
        break;
    }
  }

  return (v5 | v10) + 249;
}

void sub_2314583B4(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 64);
  if (v5 <= 8)
  {
    v5 = 8;
  }

  v6 = v5 + 1;
  v7 = 8 * (v5 + 1);
  if (a3 < 0xF9)
  {
    v8 = 0;
  }

  else if (v6 <= 3)
  {
    v11 = ((a3 + ~(-1 << v7) - 248) >> v7) + 1;
    if (HIWORD(v11))
    {
      v8 = 4;
    }

    else
    {
      if (v11 < 0x100)
      {
        v12 = 1;
      }

      else
      {
        v12 = 2;
      }

      if (v11 >= 2)
      {
        v8 = v12;
      }

      else
      {
        v8 = 0;
      }
    }
  }

  else
  {
    v8 = 1;
  }

  if (a2 > 0xF8)
  {
    v9 = a2 - 249;
    if (v6 < 4)
    {
      v10 = (v9 >> v7) + 1;
      if (v5 != -1)
      {
        v13 = v9 & ~(-1 << v7);
        bzero(a1, v6);
        if (v6 == 3)
        {
          *a1 = v13;
          a1[2] = BYTE2(v13);
        }

        else if (v6 == 2)
        {
          *a1 = v13;
        }

        else
        {
          *a1 = v9;
        }
      }
    }

    else
    {
      bzero(a1, v5 + 1);
      *a1 = v9;
      v10 = 1;
    }

    switch(v8)
    {
      case 1:
        a1[v6] = v10;
        break;
      case 2:
        *&a1[v6] = v10;
        break;
      case 3:
LABEL_37:
        __break(1u);
        break;
      case 4:
        *&a1[v6] = v10;
        break;
      default:
        return;
    }
  }

  else
  {
    switch(v8)
    {
      case 1:
        a1[v6] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_26;
      case 2:
        *&a1[v6] = 0;
        goto LABEL_25;
      case 3:
        goto LABEL_37;
      case 4:
        *&a1[v6] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_26;
      default:
LABEL_25:
        if (a2)
        {
LABEL_26:
          a1[v5] = -a2;
        }

        break;
    }
  }
}

_BYTE *sub_231458578(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF9)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF8)
  {
    v6 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
          *result = a2 + 7;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_231458644(_BYTE *result, int a2, int a3)
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

uint64_t OUTLINED_FUNCTION_43_2()
{

  return sub_231478648();
}

uint64_t QueryGroupByKey.rawValue.getter()
{
  result = 0x6449656369766564;
  switch(*v0)
  {
    case 1:
      result = 0x6E69616D6F64;
      break;
    case 2:
      v2 = 0x656C646E7562;
      goto LABEL_8;
    case 3:
      result = 1701869940;
      break;
    case 4:
      result = 0x676E696C646E6168;
      break;
    case 5:
      result = 0x6F69746365726964;
      break;
    case 6:
      result = 0x6574616E6F447369;
      break;
    case 7:
      v2 = 0x797469746E65;
LABEL_8:
      result = v2 & 0xFFFFFFFFFFFFLL | 0x6449000000000000;
      break;
    case 8:
      result = 0x7954797469746E65;
      break;
    case 9:
      result = 0x6C61636F4C7369;
      break;
    default:
      return result;
  }

  return result;
}

SiriRemembers::QueryGroupByKey_optional __swiftcall QueryGroupByKey.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_231478638();

  v5 = 10;
  if (v3 < 0xA)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t sub_231458BE4()
{
  result = qword_27DD4EA68;
  if (!qword_27DD4EA68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD4EA68);
  }

  return result;
}

uint64_t sub_231458C5C@<X0>(uint64_t *a1@<X8>)
{
  result = QueryGroupByKey.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for QueryGroupByKey(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF7)
  {
    if (a2 + 9 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 9) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 10;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v5 = v6 - 10;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for QueryGroupByKey(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF7)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF6)
  {
    v6 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
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
          *result = a2 + 9;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for QueryOperator(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF9)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF8)
  {
    v6 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
          *result = a2 + 7;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_231458F24(uint64_t a1, void (*a2)(_BYTE *, uint64_t))
{
  OUTLINED_FUNCTION_2_16();
  a2(v5, a1);
  return sub_231478918();
}

uint64_t sub_231458F6C(uint64_t a1, void (*a2)(uint64_t))
{
  OUTLINED_FUNCTION_2_16();
  a2(a1);
  OUTLINED_FUNCTION_1_17();

  return sub_231478918();
}

uint64_t sub_231458FC8(char a1)
{
  OUTLINED_FUNCTION_2_16();
  MEMORY[0x23192E9B0](a1 & 1);
  return sub_231478918();
}

uint64_t sub_231459008(unsigned __int8 a1)
{
  OUTLINED_FUNCTION_2_16();
  MEMORY[0x23192E9B0](a1);
  return sub_231478918();
}

uint64_t sub_231459048()
{
  OUTLINED_FUNCTION_2_16();
  OUTLINED_FUNCTION_0_16();
  sub_231477F38();
  return sub_231478918();
}

uint64_t sub_231459084()
{
  sub_231477F38();
}

uint64_t sub_2314590F8()
{
  sub_231477F38();
}

uint64_t sub_2314591D0()
{
  sub_231477F38();
}

uint64_t sub_231459278()
{
  sub_231477F38();
}

uint64_t sub_2314593C8()
{
  sub_231477F38();
}

uint64_t sub_23145947C()
{
  sub_231477F38();
}

uint64_t sub_231459598(uint64_t a1, char a2)
{
  sub_2314788E8();
  MEMORY[0x23192E9B0](a2 & 1);
  return sub_231478918();
}

uint64_t sub_2314595DC()
{
  sub_2314788E8();
  OUTLINED_FUNCTION_0_16();
  sub_231477F38();
  return sub_231478918();
}

uint64_t sub_231459634(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  sub_2314788E8();
  a3(a2);
  OUTLINED_FUNCTION_1_17();

  return sub_231478918();
}

uint64_t sub_2314596D0(uint64_t a1, uint64_t a2, void (*a3)(_BYTE *, uint64_t))
{
  sub_2314788E8();
  a3(v6, a2);
  return sub_231478918();
}

uint64_t sub_23145971C(uint64_t a1, unsigned __int8 a2)
{
  sub_2314788E8();
  MEMORY[0x23192E9B0](a2);
  return sub_231478918();
}

uint64_t sub_231459760()
{
  sub_2314788E8();
  sub_231477F38();

  return sub_231478918();
}

uint64_t sub_2314597E8(char a1)
{
  result = 61;
  switch(a1)
  {
    case 1:
      result = 15649;
      break;
    case 2:
      result = 60;
      break;
    case 3:
      result = 15676;
      break;
    case 4:
      result = 62;
      break;
    case 5:
      result = 15678;
      break;
    case 6:
      result = 20041;
      break;
    case 7:
      result = 1162561868;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_231459868()
{
  v0 = sub_231478638();

  if (v0 >= 8)
  {
    return 8;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_231459928@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_231459868();
  *a2 = result;
  return result;
}

uint64_t sub_231459958@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2314597E8(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_231459988()
{
  result = qword_27DD4EA70;
  if (!qword_27DD4EA70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD4EA70);
  }

  return result;
}

unint64_t sub_231459A8C()
{
  result = qword_27DD4EA78;
  if (!qword_27DD4EA78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD4EA78);
  }

  return result;
}

uint64_t String.queryValue.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = a1;
  a3[1] = a2;
  type metadata accessor for QueryValue();
  swift_storeEnumTagMultiPayload();
}

uint64_t Bool.queryValue.getter@<X0>(char a1@<W0>, _BYTE *a2@<X8>)
{
  *a2 = a1;
  type metadata accessor for QueryValue();
  OUTLINED_FUNCTION_35();

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_231459B88()
{
  OUTLINED_FUNCTION_10_17(*v0);
  OUTLINED_FUNCTION_1_18();

  return swift_storeEnumTagMultiPayload();
}

uint64_t Int.queryValue.getter@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = a1;
  type metadata accessor for QueryValue();
  OUTLINED_FUNCTION_1_18();

  return swift_storeEnumTagMultiPayload();
}

uint64_t QueryValue.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = sub_231476CA8();
  v5 = OUTLINED_FUNCTION_4(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_2();
  v12 = v11 - v10;
  Value = type metadata accessor for QueryValue();
  v14 = OUTLINED_FUNCTION_3(Value);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_2();
  v19 = (v18 - v17);
  v20 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_231478958();
  sub_231459EB4(v2, v19);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v29 = *v19;
      v30 = OUTLINED_FUNCTION_6_13();
      __swift_mutable_project_boxed_opaque_existential_1(v30, v31);
      OUTLINED_FUNCTION_9_16();
      sub_231478858();
      break;
    case 2u:
      v24 = *v19;
      v25 = OUTLINED_FUNCTION_6_13();
      __swift_mutable_project_boxed_opaque_existential_1(v25, v26);
      sub_231478848();
      break;
    case 3u:
      v27 = *v19;
      v28 = v19[1];
      __swift_mutable_project_boxed_opaque_existential_1(v33, v34);
      sub_231478828();

      break;
    case 4u:
      (*(v7 + 32))(v12, v19, v4);
      __swift_mutable_project_boxed_opaque_existential_1(v33, v34);
      sub_2313F8198(&qword_280C3CB70);
      sub_231478868();
      (*(v7 + 8))(v12, v4);
      break;
    default:
      v21 = *v19;
      v22 = OUTLINED_FUNCTION_6_13();
      __swift_mutable_project_boxed_opaque_existential_1(v22, v23);
      OUTLINED_FUNCTION_9_16();
      sub_231478838();
      break;
  }

  return __swift_destroy_boxed_opaque_existential_0(v33);
}

uint64_t sub_231459EB4(uint64_t a1, uint64_t a2)
{
  Value = type metadata accessor for QueryValue();
  (*(*(Value - 8) + 16))(a2, a1, Value);
  return a2;
}

uint64_t QueryValue.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v35 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4DEC0, &qword_23147F580);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v32 = v28 - v6;
  v33 = sub_231476CA8();
  v7 = OUTLINED_FUNCTION_4(v33);
  v31 = v8;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_2();
  v13 = v12 - v11;
  Value = type metadata accessor for QueryValue();
  v15 = OUTLINED_FUNCTION_3(Value);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = v28 - v21;
  v23 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  OUTLINED_FUNCTION_8_16();
  sub_231478938();
  if (!v2)
  {
    v28[0] = v20;
    v28[1] = v13;
    v29 = v22;
    v30 = Value;
    v24 = v35;
    __swift_project_boxed_opaque_existential_1(v34, v34[3]);
    OUTLINED_FUNCTION_8_16();
    v25 = sub_2314787E8();
    v26 = v29;
    *v29 = v25 & 1;
    swift_storeEnumTagMultiPayload();
    __swift_destroy_boxed_opaque_existential_0(v34);
    sub_23145A2CC(v26, v24);
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t sub_23145A2CC(uint64_t a1, uint64_t a2)
{
  Value = type metadata accessor for QueryValue();
  (*(*(Value - 8) + 32))(a2, a1, Value);
  return a2;
}

uint64_t static QueryValue.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_231476CA8();
  v5 = OUTLINED_FUNCTION_4(v4);
  v51 = v6;
  v52 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_2();
  v50 = v10 - v9;
  Value = type metadata accessor for QueryValue();
  v12 = OUTLINED_FUNCTION_3(Value);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v49 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = (&v49 - v19);
  v21 = MEMORY[0x28223BE20](v18);
  v23 = (&v49 - v22);
  v24 = MEMORY[0x28223BE20](v21);
  v26 = (&v49 - v25);
  MEMORY[0x28223BE20](v24);
  v28 = &v49 - v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD4EA80, &qword_23147F588);
  v30 = *(*(v29 - 8) + 64);
  v31 = MEMORY[0x28223BE20](v29 - 8);
  v33 = &v49 - v32;
  v34 = (&v49 + *(v31 + 56) - v32);
  sub_231459EB4(a1, &v49 - v32);
  sub_231459EB4(a2, v34);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_231459EB4(v33, v26);
      if (OUTLINED_FUNCTION_7_13() != 1)
      {
        goto LABEL_23;
      }

      v41 = *v26 == *v34;
      goto LABEL_17;
    case 2u:
      sub_231459EB4(v33, v23);
      if (OUTLINED_FUNCTION_7_13() != 2)
      {
        goto LABEL_23;
      }

      v41 = *v23 == *v34;
LABEL_17:
      v36 = v41;
      goto LABEL_20;
    case 3u:
      sub_231459EB4(v33, v20);
      v43 = *v20;
      v42 = v20[1];
      if (OUTLINED_FUNCTION_7_13() != 3)
      {

        goto LABEL_23;
      }

      if (v43 == *v34 && v42 == *(v34 + 1))
      {
        v48 = *(v34 + 1);
      }

      else
      {
        v45 = *(v34 + 1);
        v46 = sub_2314787C8();

        if ((v46 & 1) == 0)
        {
          sub_23145A714(v33);
          goto LABEL_24;
        }
      }

      sub_23145A714(v33);
      v36 = 1;
      break;
    case 4u:
      sub_231459EB4(v33, v17);
      if (OUTLINED_FUNCTION_7_13() == 4)
      {
        v38 = v50;
        v37 = v51;
        v39 = v52;
        (*(v51 + 32))(v50, v34, v52);
        v36 = sub_231476C68();
        v40 = *(v37 + 8);
        v40(v38, v39);
        v40(v17, v39);
LABEL_20:
        sub_23145A714(v33);
      }

      else
      {
        (*(v51 + 8))(v17, v52);
LABEL_23:
        sub_2313E937C(v33, &unk_27DD4EA80, &qword_23147F588);
LABEL_24:
        v36 = 0;
      }

      break;
    default:
      sub_231459EB4(v33, v28);
      if (OUTLINED_FUNCTION_7_13())
      {
        goto LABEL_23;
      }

      v35 = *v28 ^ *v34;
      sub_23145A714(v33);
      v36 = v35 ^ 1;
      return v36 & 1;
  }

  return v36 & 1;
}

uint64_t sub_23145A714(uint64_t a1)
{
  Value = type metadata accessor for QueryValue();
  (*(*(Value - 8) + 8))(a1, Value);
  return a1;
}

uint64_t Int8.queryValue.getter(char a1)
{
  OUTLINED_FUNCTION_10_17(a1);
  OUTLINED_FUNCTION_1_18();

  return swift_storeEnumTagMultiPayload();
}

uint64_t Int16.queryValue.getter(__int16 a1)
{
  OUTLINED_FUNCTION_10_17(a1);
  OUTLINED_FUNCTION_1_18();

  return swift_storeEnumTagMultiPayload();
}

uint64_t Int32.queryValue.getter(int a1)
{
  OUTLINED_FUNCTION_10_17(a1);
  OUTLINED_FUNCTION_1_18();

  return swift_storeEnumTagMultiPayload();
}

uint64_t Double.queryValue.getter@<X0>(double *a1@<X8>, double a2@<D0>)
{
  *a1 = a2;
  type metadata accessor for QueryValue();
  OUTLINED_FUNCTION_35();

  return swift_storeEnumTagMultiPayload();
}

uint64_t Float.queryValue.getter@<X0>(double *a1@<X8>, float a2@<S0>)
{
  *a1 = a2;
  type metadata accessor for QueryValue();
  OUTLINED_FUNCTION_35();

  return swift_storeEnumTagMultiPayload();
}

uint64_t Substring.queryValue.getter@<X0>(void *a1@<X8>)
{
  *a1 = MEMORY[0x23192DFC0]();
  a1[1] = v2;
  type metadata accessor for QueryValue();
  OUTLINED_FUNCTION_35();

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_23145A974@<X0>(void *a1@<X8>)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  v5 = v1[3];
  return Substring.queryValue.getter(a1);
}

uint64_t Date.queryValue.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_231476CA8();
  OUTLINED_FUNCTION_3(v3);
  (*(v4 + 16))(a1, v1);
  type metadata accessor for QueryValue();
  OUTLINED_FUNCTION_35();

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_23145A9F8()
{
  result = sub_231476CA8();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_23145AAB0()
{
  v10 = sub_231478308();
  v0 = *(v10 - 8);
  v1 = *(v0 + 64);
  MEMORY[0x28223BE20](v10);
  v3 = v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_2314782F8();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v6 = sub_231477D08();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9[1] = sub_23145C018();
  sub_231477CE8();
  v11 = MEMORY[0x277D84F90];
  sub_23145C05C(&qword_280C3CEA0, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD4EAA0, qword_23147F920);
  sub_2313ED944(&qword_280C3CEB0, &unk_27DD4EAA0, qword_23147F920);
  sub_231478498();
  (*(v0 + 104))(v3, *MEMORY[0x277D85260], v10);
  result = sub_231478338();
  qword_280C3BD00 = result;
  return result;
}

uint64_t sub_23145AD14()
{
  v10 = sub_231478308();
  v0 = *(v10 - 8);
  v1 = *(v0 + 64);
  MEMORY[0x28223BE20](v10);
  v3 = v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_2314782F8();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v6 = sub_231477D08();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9[1] = sub_23145C018();
  sub_231477CF8();
  v11 = MEMORY[0x277D84F90];
  sub_23145C05C(&qword_280C3CEA0, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD4EAA0, qword_23147F920);
  sub_2313ED944(&qword_280C3CEB0, &unk_27DD4EAA0, qword_23147F920);
  sub_231478498();
  (*(v0 + 104))(v3, *MEMORY[0x277D85260], v10);
  result = sub_231478338();
  qword_280C3BCE8 = result;
  return result;
}

uint64_t static ScrubInteractionStore.register()()
{
  if (qword_280C3BCF8 != -1)
  {
    swift_once();
  }

  v0 = qword_280C3BD00;
  v3[4] = sub_23145AAAC;
  v3[5] = 0;
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 1107296256;
  v3[2] = sub_2313E340C;
  v3[3] = &block_descriptor_2;
  v1 = _Block_copy(v3);

  dispatch_sync(v0, v1);
  _Block_release(v1);
  result = swift_isEscapingClosureAtFileLocation();
  if (result)
  {
    __break(1u);
  }

  return result;
}

__n128 __swift_memcpy49_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_23145B098(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 49))
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

uint64_t sub_23145B0D8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 49) = 1;
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

    *(result + 49) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_23145B138()
{
  if ((byte_280C3BD10 & 1) == 0)
  {
    empty = xpc_dictionary_create_empty();
    xpc_dictionary_set_BOOL(empty, *MEMORY[0x277D86230], 1);
    xpc_dictionary_set_BOOL(empty, *MEMORY[0x277D86360], 1);
    xpc_dictionary_set_int64(empty, *MEMORY[0x277D86288], *MEMORY[0x277D86298]);
    xpc_dictionary_set_string(empty, *MEMORY[0x277D86340], *MEMORY[0x277D86350]);
    v6[4] = sub_23145B330;
    v6[5] = 0;
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 1107296256;
    v6[2] = sub_2314620E8;
    v6[3] = &block_descriptor_3;
    v1 = _Block_copy(v6);
    xpc_activity_register("com.apple.siri.remembers.ScrubInteractionStore", empty, v1);
    _Block_release(v1);
    if (qword_280C3CF50 != -1)
    {
      swift_once();
    }

    v2 = sub_231477B68();
    __swift_project_value_buffer(v2, qword_280C3D970);
    v3 = sub_231477B58();
    v4 = sub_2314782A8();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_2313E1000, v3, v4, "registered XPC activity: com.apple.siri.remembers.ScrubInteractionStore", v5, 2u);
      MEMORY[0x23192F1F0](v5, -1, -1);
    }

    swift_unknownObjectRelease();
    byte_280C3BD10 = 1;
  }
}

uint64_t sub_23145B330(uint64_t a1)
{
  v2 = sub_231477CB8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_231477D08();
  v7 = *(v15 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v15);
  v10 = v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280C3BCE0 != -1)
  {
    swift_once();
  }

  v14[1] = qword_280C3BCE8;
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  aBlock[4] = sub_23145BFBC;
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2313FD2B8;
  aBlock[3] = &block_descriptor_6;
  v12 = _Block_copy(aBlock);
  swift_unknownObjectRetain();
  sub_231477CC8();
  v16 = MEMORY[0x277D84F90];
  sub_23145C05C(&qword_280C3C180, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD4EA90, &unk_23147F7E0);
  sub_2313ED944(&qword_280C3C140, &unk_27DD4EA90, &unk_23147F7E0);
  sub_231478498();
  MEMORY[0x23192E3E0](0, v10, v6, v12);
  _Block_release(v12);
  (*(v3 + 8))(v6, v2);
  (*(v7 + 8))(v10, v15);
}

uint64_t sub_23145B634(_xpc_activity_s *a1)
{
  result = xpc_activity_should_defer(a1);
  if ((result & 1) == 0)
  {
    swift_unknownObjectRetain();
    static InteractionStore.writable()(&v6);
    *&v5[8] = v6;
    *&v5[24] = v7[0];
    *&v5[33] = *(v7 + 9);
    *v5 = a1;
    sub_23145B860();
    v3[0] = *v5;
    v3[1] = *&v5[16];
    v3[2] = *&v5[32];
    v4 = v5[48];
    return sub_23145BFC4(v3);
  }

  return result;
}

uint64_t sub_23145B860()
{
  v2 = sub_231476CA8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v0 + 16);
  v19[0] = *v0;
  v19[1] = v7;
  v19[2] = *(v0 + 32);
  v20 = *(v0 + 48);
  if (qword_280C3CF50 != -1)
  {
    OUTLINED_FUNCTION_5();
  }

  v8 = sub_231477B68();
  __swift_project_value_buffer(v8, qword_280C3D970);
  v9 = sub_231477B58();
  v10 = sub_2314782A8();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_2313E1000, v9, v10, "scrubbing InteractionStore", v11, 2u);
    MEMORY[0x23192F1F0](v11, -1, -1);
  }

  sub_231476C28();
  sub_231476BC8();
  v13 = v12;
  (*(v3 + 8))(v6, v2);
  v14 = sub_23145BAB4(v13);
  if (!v1)
  {
    v15 = sub_231477B58();
    v16 = sub_2314782A8();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 134217984;
      *(v17 + 4) = v14;
      _os_log_impl(&dword_2313E1000, v15, v16, "scrubbed %ld interactions from InteractionStore", v17, 0xCu);
      MEMORY[0x23192F1F0](v17, -1, -1);
    }
  }

  return v14;
}

uint64_t sub_23145BAB4(double a1)
{
  v4 = *(v1 + 16);
  v14[2] = *v1;
  v14[3] = v4;
  v14[4] = *(v1 + 32);
  v15 = *(v1 + 48);
  v18 = 0;
  v5 = *(v1 + 24);
  v16 = *(v1 + 8);
  v17[0] = v5;
  *(v17 + 9) = *(v1 + 33);
  v6 = *(v1 + 24);
  v13[3] = *(v1 + 8);
  v14[0] = v6;
  *(v14 + 9) = *(v1 + 33);
  sub_2313F4F84(&v16, v13);
  sub_2313F4D04();
  if (v2)
  {
    return OUTLINED_FUNCTION_1_19();
  }

  v8 = OUTLINED_FUNCTION_1_19();
  MEMORY[0x28223BE20](v8);
  sub_2314770A8();
  sub_2314770F8();

  if (qword_280C3CF50 != -1)
  {
    OUTLINED_FUNCTION_5();
  }

  v9 = sub_231477B68();
  __swift_project_value_buffer(v9, qword_280C3D970);
  v10 = sub_231477B58();
  v11 = sub_2314782A8();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 134218240;
    swift_beginAccess();
    *(v12 + 4) = v18;
    *(v12 + 12) = 2048;
    *(v12 + 14) = a1;
    _os_log_impl(&dword_2313E1000, v10, v11, "scrubbed %ld interactions from InteractionStore with %f", v12, 0x16u);
    MEMORY[0x23192F1F0](v12, -1, -1);
  }

  swift_beginAccess();
  return v18;
}

uint64_t sub_23145BCF0(uint64_t a1, _xpc_activity_s **a2, void *a3, double a4)
{
  v21 = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD4D890, qword_23147F7F0);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v22[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v22[-1] - v13;
  v15 = *a2;
  v17 = (v16 + 8);
  if (*a2)
  {
LABEL_2:
    result = xpc_activity_should_defer(v15);
    if ((result & 1) == 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
LABEL_3:
    while (1)
    {
      type metadata accessor for _Interaction(0);
      v23[3] = sub_2314776A8();
      v23[4] = MEMORY[0x277D0B7F8];
      __swift_allocate_boxed_opaque_existential_1(v23);
      sub_2314776B8();
      v22[3] = MEMORY[0x277D839F8];
      v22[4] = MEMORY[0x277D0B858];
      *v22 = a4;
      v24[3] = sub_2314770D8();
      v24[4] = MEMORY[0x277D0B730];
      __swift_allocate_boxed_opaque_existential_1(v24);
      sub_2314774A8();
      __swift_destroy_boxed_opaque_existential_0(v22);
      __swift_destroy_boxed_opaque_existential_0(v23);
      sub_23145C05C(&qword_280C3C5E0, type metadata accessor for _Interaction);
      sub_231476EF8();
      __swift_destroy_boxed_opaque_existential_0(v24);
      sub_2313ED944(&qword_280C3C0D8, &unk_27DD4D890, qword_23147F7F0);
      sub_231477358();
      v19 = *v17;
      (*v17)(v12, v8);
      v20 = sub_2314774E8();
      result = (v19)(v14, v8);
      if (v4 || !v20)
      {
        break;
      }

      if (__OFADD__(*a3, v20))
      {
        __break(1u);
        return result;
      }

      *a3 += v20;
      if (v15)
      {
        goto LABEL_2;
      }
    }
  }

  return result;
}

unint64_t sub_23145C018()
{
  result = qword_280C3CE90;
  if (!qword_280C3CE90)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280C3CE90);
  }

  return result;
}

uint64_t sub_23145C05C(unint64_t *a1, void (*a2)(uint64_t))
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

NSObject *sub_23145C0B0()
{
  v2 = type metadata accessor for Entity();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2 - 8);
  v7 = (&v98 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v7 = 0;
  v7[1] = 0xE000000000000000;
  v7[2] = 0;
  v7[3] = 0xE000000000000000;
  v7[4] = MEMORY[0x277D84F98];
  v8 = v7 + *(v5 + 36);
  sub_231476C98();
  v9 = sub_231414BC8(v0, &selRef_sportName);
  if (v10)
  {
    v11 = v9;
    v12 = v10;

    v13 = v7[4];
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_3_10();
    sub_2313F1184(v11, v12, 3, 0x6D614E74726F7073, 0xE900000000000065);
    OUTLINED_FUNCTION_8_17();
    v99 = 0x3D74726F7073;
    v100 = 0xE600000000000000;
    MEMORY[0x23192E060](v11, v12);

    sub_23141CC58();
    v15 = v14;
    v1 = *(v14 + 16);
    if (v1 >= *(v14 + 24) >> 1)
    {
      OUTLINED_FUNCTION_0_17();
      v15 = v83;
    }

    OUTLINED_FUNCTION_5_15();
  }

  else
  {
    v15 = MEMORY[0x277D84F90];
  }

  sub_231414BC8(v0, &selRef_leagueName);
  if (v16)
  {
    OUTLINED_FUNCTION_7_14();
    v17 = v7[4];
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_3_10();
    v18 = OUTLINED_FUNCTION_1_20();
    sub_2313F1184(v18, v19, v20, v21, v22);
    OUTLINED_FUNCTION_8_17();
    v99 = 0x3D65756761656CLL;
    v100 = 0xE700000000000000;
    v23 = OUTLINED_FUNCTION_6_14();
    MEMORY[0x23192E060](v23);

    if ((OUTLINED_FUNCTION_9_17() & 1) == 0)
    {
      OUTLINED_FUNCTION_2_18();
      v15 = v84;
    }

    OUTLINED_FUNCTION_4_12();
    if (v24)
    {
      OUTLINED_FUNCTION_0_17();
      v15 = v85;
    }

    OUTLINED_FUNCTION_5_15();
  }

  sub_231414BC8(v0, &selRef_teamName);
  if (v25)
  {
    OUTLINED_FUNCTION_7_14();
    v26 = v7[4];
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_3_10();
    v27 = OUTLINED_FUNCTION_1_20();
    sub_2313F1184(v27, v28, v29, v30, 0xE800000000000000);
    OUTLINED_FUNCTION_8_17();
    v99 = 0x3D6D616574;
    v100 = 0xE500000000000000;
    v31 = OUTLINED_FUNCTION_6_14();
    MEMORY[0x23192E060](v31);

    if ((OUTLINED_FUNCTION_9_17() & 1) == 0)
    {
      OUTLINED_FUNCTION_2_18();
      v15 = v86;
    }

    OUTLINED_FUNCTION_4_12();
    if (v24)
    {
      OUTLINED_FUNCTION_0_17();
      v15 = v87;
    }

    OUTLINED_FUNCTION_5_15();
  }

  sub_231414BC8(v0, &selRef_athleteName);
  if (v32)
  {
    OUTLINED_FUNCTION_7_14();
    v33 = v7[4];
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_3_10();
    v34 = OUTLINED_FUNCTION_1_20();
    sub_2313F1184(v34, v35, v36, v37, v38);
    OUTLINED_FUNCTION_8_17();
    v99 = 0x3D6574656C687461;
    v100 = 0xE800000000000000;
    v39 = OUTLINED_FUNCTION_6_14();
    MEMORY[0x23192E060](v39);

    if ((OUTLINED_FUNCTION_9_17() & 1) == 0)
    {
      OUTLINED_FUNCTION_2_18();
      v15 = v88;
    }

    OUTLINED_FUNCTION_4_12();
    if (v24)
    {
      OUTLINED_FUNCTION_0_17();
      v15 = v89;
    }

    OUTLINED_FUNCTION_5_15();
  }

  sub_231414BC8(v0, &selRef_sportQId);
  if (v40)
  {
    OUTLINED_FUNCTION_7_14();
    v41 = v7[4];
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_3_10();
    v42 = OUTLINED_FUNCTION_1_20();
    sub_2313F1184(v42, v43, v44, v45, 0xE800000000000000);
    OUTLINED_FUNCTION_8_17();
    v99 = 0x64697174726F7073;
    v100 = 0xE90000000000003DLL;
    v46 = OUTLINED_FUNCTION_6_14();
    MEMORY[0x23192E060](v46);

    if ((OUTLINED_FUNCTION_9_17() & 1) == 0)
    {
      OUTLINED_FUNCTION_2_18();
      v15 = v90;
    }

    OUTLINED_FUNCTION_4_12();
    if (v24)
    {
      OUTLINED_FUNCTION_0_17();
      v15 = v91;
    }

    OUTLINED_FUNCTION_5_15();
  }

  sub_231414BC8(v0, &selRef_leagueQId);
  if (v47)
  {
    OUTLINED_FUNCTION_7_14();
    v48 = v7[4];
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_3_10();
    v49 = OUTLINED_FUNCTION_1_20();
    sub_2313F1184(v49, v50, v51, v52, v53);
    OUTLINED_FUNCTION_8_17();
    v99 = 0x697165756761656CLL;
    v100 = 0xEA00000000003D64;
    v54 = OUTLINED_FUNCTION_6_14();
    MEMORY[0x23192E060](v54);

    if ((OUTLINED_FUNCTION_9_17() & 1) == 0)
    {
      OUTLINED_FUNCTION_2_18();
      v15 = v92;
    }

    OUTLINED_FUNCTION_4_12();
    if (v24)
    {
      OUTLINED_FUNCTION_0_17();
      v15 = v93;
    }

    OUTLINED_FUNCTION_5_15();
  }

  sub_231414BC8(v0, &selRef_teamQId);
  if (v55)
  {
    OUTLINED_FUNCTION_7_14();
    v56 = v7[4];
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_3_10();
    v57 = OUTLINED_FUNCTION_1_20();
    sub_2313F1184(v57, v58, v59, v60, 0xE700000000000000);
    OUTLINED_FUNCTION_8_17();
    v99 = 0x3D6469716D616574;
    v100 = 0xE800000000000000;
    v61 = OUTLINED_FUNCTION_6_14();
    MEMORY[0x23192E060](v61);

    if ((OUTLINED_FUNCTION_9_17() & 1) == 0)
    {
      OUTLINED_FUNCTION_2_18();
      v15 = v94;
    }

    OUTLINED_FUNCTION_4_12();
    if (v24)
    {
      OUTLINED_FUNCTION_0_17();
      v15 = v95;
    }

    OUTLINED_FUNCTION_5_15();
  }

  v62 = sub_231414BC8(v0, &selRef_athleteQId);
  if (v63)
  {
    v64 = v62;
    v65 = v63;

    v66 = v7[4];
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_3_10();
    sub_2313F1184(v64, v65, 3, 0x516574656C687461, 0xEA00000000006449);
    OUTLINED_FUNCTION_8_17();
    v99 = 0x716574656C687461;
    v100 = 0xEB000000003D6469;
    MEMORY[0x23192E060](v64, v65);

    v67 = v99;
    v68 = v100;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      OUTLINED_FUNCTION_2_18();
      v15 = v96;
    }

    OUTLINED_FUNCTION_4_12();
    if (v24)
    {
      OUTLINED_FUNCTION_0_17();
      v15 = v97;
    }

    *(v15 + 16) = &v99;
    v69 = v15 + 16 * v1;
    *(v69 + 32) = v67;
    *(v69 + 40) = v68;
    goto LABEL_49;
  }

  if (*(v15 + 16))
  {
LABEL_49:
    v99 = v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4D638, qword_231479978);
    sub_2313EF69C();
    v70 = sub_231477E28();
    v72 = v71;

    *v7 = v70;
    v7[1] = v72;
    v7[2] = 0xD000000000000010;
    v7[3] = 0x8000000231483690;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4D658, &unk_23147B6C0);
    inited = swift_initStackObject();
    v98 = xmmword_231479580;
    *(inited + 16) = xmmword_231479580;
    *(inited + 32) = 0x74497374726F7073;
    *(inited + 40) = 0xEA00000000006D65;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4D5D0, &unk_231479880);
    v74 = *(v3 + 72);
    v75 = (*(v3 + 80) + 32) & ~*(v3 + 80);
    v76 = swift_allocObject();
    *(v76 + 16) = v98;
    sub_2313F0868(v7, v76 + v75);
    *(inited + 48) = v76;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4D6B0, qword_23147B940);
    v77 = sub_231477DC8();
    sub_2313F09B4(v7);
    return v77;
  }

  if (qword_280C3CF50 != -1)
  {
    swift_once();
  }

  v79 = sub_231477B68();
  __swift_project_value_buffer(v79, qword_280C3D970);
  v77 = sub_231477B58();
  v80 = sub_2314782A8();
  if (os_log_type_enabled(v77, v80))
  {
    v81 = swift_slowAlloc();
    *v81 = 0;
    _os_log_impl(&dword_2313E1000, v77, v80, "SearchForSportsIntent is missing token. Cannot extract Entity.", v81, 2u);
    MEMORY[0x23192F1F0](v81, -1, -1);
  }

  sub_2313F17E0();
  swift_allocError();
  *v82 = 1;
  swift_willThrow();
  sub_2313F09B4(v7);
  return v77;
}

uint64_t sub_23145C948()
{
  v10 = sub_231478308();
  v0 = *(v10 - 8);
  v1 = *(v0 + 64);
  MEMORY[0x28223BE20](v10);
  v3 = v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_2314782F8();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v6 = sub_231477D08();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9[1] = sub_23145C018();
  sub_231477CE8();
  v11 = MEMORY[0x277D84F90];
  sub_23145EF90(&qword_280C3CEA0, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD4EAA0, qword_23147F920);
  sub_2313FD260(&qword_280C3CEB0, &unk_27DD4EAA0, qword_23147F920);
  sub_231478498();
  (*(v0 + 104))(v3, *MEMORY[0x277D85260], v10);
  result = sub_231478338();
  qword_280C3C060 = result;
  return result;
}

uint64_t sub_23145CB98()
{
  v10 = sub_231478308();
  v0 = *(v10 - 8);
  v1 = *(v0 + 64);
  MEMORY[0x28223BE20](v10);
  v3 = v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_2314782F8();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v6 = sub_231477D08();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9[1] = sub_23145C018();
  sub_231477CF8();
  v11 = MEMORY[0x277D84F90];
  sub_23145EF90(&qword_280C3CEA0, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD4EAA0, qword_23147F920);
  sub_2313FD260(&qword_280C3CEB0, &unk_27DD4EAA0, qword_23147F920);
  sub_231478498();
  (*(v0 + 104))(v3, *MEMORY[0x277D85260], v10);
  result = sub_231478338();
  qword_280C3C048 = result;
  return result;
}

id sub_23145CDE8()
{
  result = [objc_opt_self() standardUserDefaults];
  qword_280C3C078 = result;
  return result;
}

uint64_t SiriRemembersBiomeEventBackfiller.getLastBackFilledDate(userDefaults:)(void *a1)
{
  if (a1)
  {
    OUTLINED_FUNCTION_2_19();
    v2 = sub_231477E58();
    [a1 doubleForKey_];
  }

  return sub_231476C48();
}

uint64_t static SiriRemembersBiomeEventBackfiller.register()()
{
  if (qword_280C3C058 != -1)
  {
    swift_once();
  }

  v0 = qword_280C3C060;
  v1 = OUTLINED_FUNCTION_15_10();
  *(v1 + 16) = sub_23145D264;
  *(v1 + 24) = 0;
  v4[4] = sub_2313EAA1C;
  v4[5] = v1;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 1107296256;
  v4[2] = sub_2313E340C;
  v4[3] = &block_descriptor_3;
  v2 = _Block_copy(v4);

  dispatch_sync(v0, v2);
  _Block_release(v2);
  LOBYTE(v0) = swift_isEscapingClosureAtFileLocation();

  if (v0)
  {
    __break(1u);
  }

  return result;
}

void sub_23145CFF4()
{
  if ((byte_280C3C080 & 1) == 0)
  {
    empty = xpc_dictionary_create_empty();
    xpc_dictionary_set_BOOL(empty, *MEMORY[0x277D86230], 1);
    xpc_dictionary_set_BOOL(empty, *MEMORY[0x277D86360], 0);
    if (*MEMORY[0x277D86328])
    {
      xpc_dictionary_set_BOOL(empty, *MEMORY[0x277D86328], 1);
      xpc_dictionary_set_string(empty, *MEMORY[0x277D86340], *MEMORY[0x277D86350]);
      v8[4] = sub_23145D268;
      v8[5] = 0;
      v8[0] = MEMORY[0x277D85DD0];
      v8[1] = 1107296256;
      v8[2] = sub_2314620E8;
      v8[3] = &block_descriptor_3_0;
      v1 = _Block_copy(v8);
      v2 = sub_231477ED8();
      xpc_activity_register((v2 + 32), empty, v1);

      _Block_release(v1);
      if (qword_280C3CF50 != -1)
      {
        swift_once();
      }

      v3 = sub_231477B68();
      __swift_project_value_buffer(v3, qword_280C3D970);
      v4 = sub_231477B58();
      v5 = sub_2314782A8();
      if (os_log_type_enabled(v4, v5))
      {
        v6 = swift_slowAlloc();
        v7 = swift_slowAlloc();
        v8[0] = v7;
        *v6 = 136315138;
        *(v6 + 4) = sub_2313EB684(0xD00000000000003CLL, 0x80000002314836D0, v8);
        _os_log_impl(&dword_2313E1000, v4, v5, "registered XPC activity: %s", v6, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v7);
        MEMORY[0x23192F1F0](v7, -1, -1);
        MEMORY[0x23192F1F0](v6, -1, -1);
      }

      swift_unknownObjectRelease();
      byte_280C3C080 = 1;
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_23145D268(uint64_t a1)
{
  v2 = sub_231477CB8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_231477D08();
  v7 = *(v15 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v15);
  v10 = v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280C3C040 != -1)
  {
    swift_once();
  }

  v14[1] = qword_280C3C048;
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  aBlock[4] = sub_23145EDE8;
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2313FD2B8;
  aBlock[3] = &block_descriptor_9;
  v12 = _Block_copy(aBlock);
  swift_unknownObjectRetain();
  sub_231477CC8();
  v16 = MEMORY[0x277D84F90];
  sub_23145EF90(&qword_280C3C180, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD4EA90, &unk_23147F7E0);
  sub_2313FD260(&qword_280C3C140, &unk_27DD4EA90, &unk_23147F7E0);
  sub_231478498();
  MEMORY[0x23192E3E0](0, v10, v6, v12);
  _Block_release(v12);
  (*(v3 + 8))(v6, v2);
  (*(v7 + 8))(v10, v15);
}

void sub_23145D558(_xpc_activity_s *a1)
{
  if (!xpc_activity_should_defer(a1))
  {
    v1 = swift_unknownObjectRetain();
    sub_23145D78C(v1, __src);
    if (qword_280C3C068 != -1)
    {
      swift_once();
    }

    v2 = qword_280C3C078;
    v3 = qword_280C3C078;
    sub_23145D908(v2);
    memcpy(v4, __src, sizeof(v4));
    sub_23145EDF0(v4);
  }
}

uint64_t sub_23145D78C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  static InteractionStore.writable()(&v19);
  if (v2)
  {
    swift_unknownObjectRelease();
    return OUTLINED_FUNCTION_8_18();
  }

  else
  {
    *&v21[7] = v19;
    *&v21[23] = v20[0];
    *&v21[32] = *(v20 + 9);
    static InteractionStore.inProcess()();
    v6 = v17;
    v7 = v18;
    OUTLINED_FUNCTION_8_18();
    type metadata accessor for SiriRemembersBiomeStreamDonator();
    swift_allocObject();
    v8 = SiriRemembersBiomeStreamDonator.init()();
    v9 = [BiomeLibrary() App];
    swift_unknownObjectRelease();
    v10 = [v9 Intent];
    result = swift_unknownObjectRelease();
    *a2 = a1;
    v12 = v15;
    v11 = v16;
    *(a2 + 8) = v15;
    if (v12)
    {
      v13 = 0;
    }

    else
    {
      v13 = v7;
    }

    *(a2 + 24) = v11;
    *(a2 + 40) = v6;
    *(a2 + 48) = v13;
    v14 = *&v21[16];
    *(a2 + 49) = *v21;
    *(a2 + 65) = v14;
    *(a2 + 81) = *&v21[32];
    *(a2 + 104) = v10;
    *(a2 + 112) = v8;
  }

  return result;
}

void sub_23145D908(void *a1)
{
  v2 = v1;
  v75 = sub_231476CA8();
  v4 = OUTLINED_FUNCTION_4(v75);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_34();
  v73 = v9 - v10;
  v12 = MEMORY[0x28223BE20](v11);
  v74 = &v71 - v13;
  MEMORY[0x28223BE20](v12);
  v15 = &v71 - v14;
  v16 = *v1;
  v77 = *(v1 + 1);
  v17 = *(v1 + 2);
  v18 = *(v1 + 14);
  if (qword_280C3CF50 != -1)
  {
    OUTLINED_FUNCTION_0();
    swift_once();
  }

  v19 = sub_231477B68();
  v78 = __swift_project_value_buffer(v19, qword_280C3D970);
  v20 = sub_231477B58();
  sub_2314782A8();
  v21 = OUTLINED_FUNCTION_28_1();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = OUTLINED_FUNCTION_102();
    v72 = v2;
    v18 = v6;
    OUTLINED_FUNCTION_7_15(v23);
    OUTLINED_FUNCTION_5_16(&dword_2313E1000, v24, v25, "Backfill to SiriRemembersView");
    OUTLINED_FUNCTION_14_10();
    OUTLINED_FUNCTION_15_0();
    MEMORY[0x23192F1F0]();
  }

  if (v77 && (v17 & 1) == 0)
  {
    v27 = v78;
    v28 = sub_231477B58();
    v29 = sub_2314782A8();
    if (OUTLINED_FUNCTION_12_1(v29))
    {
      v30 = OUTLINED_FUNCTION_102();
      *v30 = 0;
      _os_log_impl(&dword_2313E1000, v28, v27, "Skip backfill since SiriRemembersView disabled", v30, 2u);
      OUTLINED_FUNCTION_15_0();
      MEMORY[0x23192F1F0]();
    }
  }

  else
  {
    if (a1)
    {
      OUTLINED_FUNCTION_2_19();
      v26 = sub_231477E58();
      [a1 doubleForKey_];
    }

    sub_231476C48();
    sub_231476C58();
    if (v31 == 0.0)
    {
      v74 = v17;
      v32 = sub_231477B58();
      sub_2314782A8();
      v33 = OUTLINED_FUNCTION_28_1();
      if (os_log_type_enabled(v33, v34))
      {
        v35 = OUTLINED_FUNCTION_102();
        OUTLINED_FUNCTION_7_15(v35);
        OUTLINED_FUNCTION_5_16(&dword_2313E1000, v36, v37, "SiriRemembersViewBackfiller clearBiomeStreams");
        a1 = v6;
        OUTLINED_FUNCTION_15_0();
        MEMORY[0x23192F1F0]();
      }

      sub_23145F574();
      v38 = v76;
      if (v16 && xpc_activity_should_defer(v16))
      {
        goto LABEL_20;
      }

      v39 = sub_231477B58();
      sub_2314782A8();
      v40 = OUTLINED_FUNCTION_28_1();
      if (os_log_type_enabled(v40, v41))
      {
        v42 = OUTLINED_FUNCTION_102();
        v72 = v15;
        v18 = v6;
        OUTLINED_FUNCTION_7_15(v42);
        OUTLINED_FUNCTION_5_16(&dword_2313E1000, v43, v44, "SiriRemembersViewBackfiller backfillDonationFromLegacyDB");
        OUTLINED_FUNCTION_14_10();
        v15 = v72;
        OUTLINED_FUNCTION_15_0();
        MEMORY[0x23192F1F0]();
      }

      v45 = v77;
      v79 = v16;
      v80 = v77;
      OUTLINED_FUNCTION_9_18();
      v81 = v18;
      sub_23145E070(0);
      if (v38)
      {
LABEL_20:
        (*(v6 + 8))(v15, v75);
      }

      else
      {
        v76 = v16;
        v60 = v78;
        v61 = sub_231477B58();
        v62 = sub_2314782A8();
        if (OUTLINED_FUNCTION_12_1(v62))
        {
          v63 = OUTLINED_FUNCTION_102();
          *v63 = 0;
          _os_log_impl(&dword_2313E1000, v61, v60, "SiriRemembersViewBackfiller backfillfromAppIntent", v63, 2u);
          v45 = v77;
          OUTLINED_FUNCTION_15_0();
          MEMORY[0x23192F1F0]();
        }

        v79 = v76;
        v80 = v45;
        OUTLINED_FUNCTION_9_18();
        v81 = v18;
        sub_23145E71C();
        v64 = v73;
        sub_231476C98();
        if (a1)
        {
          sub_231476C58();
          v66 = v65;
          OUTLINED_FUNCTION_2_19();
          v67 = sub_231477E58();
          [a1 setDouble:v67 forKey:v66];
        }

        v68 = *(v6 + 8);
        v69 = v64;
        v70 = v75;
        v68(v69, v75);
        v68(v15, v70);
      }
    }

    else
    {
      v46 = v74;
      v47 = v75;
      (*(v6 + 16))(v74, v15, v75);
      v48 = sub_231477B58();
      v49 = sub_231478298();
      if (os_log_type_enabled(v48, v49))
      {
        v50 = swift_slowAlloc();
        v78 = swift_slowAlloc();
        v79 = v78;
        *v50 = 136315138;
        sub_23145EF90(&qword_27DD4EAB0, MEMORY[0x277CC9578]);
        v51 = sub_231478798();
        v52 = v47;
        v54 = v53;
        v55 = *(v6 + 8);
        v56 = v46;
        v57 = v52;
        v55(v56, v52);
        v58 = sub_2313EB684(v51, v54, &v79);

        *(v50 + 4) = v58;
        _os_log_impl(&dword_2313E1000, v48, v49, "The biome event backfill has been completed at %s", v50, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v78);
        OUTLINED_FUNCTION_15_0();
        MEMORY[0x23192F1F0]();
        OUTLINED_FUNCTION_15_0();
        MEMORY[0x23192F1F0]();

        v55(v15, v57);
      }

      else
      {

        v59 = *(v6 + 8);
        v59(v46, v47);
        v59(v15, v47);
      }
    }
  }
}

uint64_t static SiriRemembersBiomeEventBackfiller.unregister()()
{
  v0 = sub_231477ED8();
  xpc_activity_unregister((v0 + 32));
}

uint64_t get_enum_tag_for_layout_string_13SiriRemembers16InteractionStoreVSg(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_23145DFC4(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 120))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 56);
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

uint64_t sub_23145E004(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
      *(result + 120) = 1;
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
      *(result + 56) = (a2 - 1);
      return result;
    }

    *(result + 120) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_23145E070(char a1)
{
  v54 = type metadata accessor for InteractionWithParameters(0);
  v3 = OUTLINED_FUNCTION_4(v54);
  v53 = v4;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_34();
  v56 = v7 - v8;
  MEMORY[0x28223BE20](v9);
  v11 = (&v52 - v10);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD4D680, &qword_2314795C0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_34();
  v16 = v14 - v15;
  MEMORY[0x28223BE20](v17);
  v19 = &v52 - v18;
  v72 = *v1;
  v20 = *(v1 + 72);
  v70 = *(v1 + 56);
  *v71 = v20;
  *&v71[9] = *(v1 + 81);
  v60 = *(v1 + 112);
  v55 = a1 & 1;
  *(&v52 - v18) = v55;
  type metadata accessor for QueryValue();
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  v69 = 0;
  sub_23145EE64(v19, v16, &unk_27DD4D680, &qword_2314795C0);
  v21 = MEMORY[0x277D84F90];
  swift_bridgeObjectRetain_n();
  sub_2313E8CDC();
  v23 = *(&v64 + 1);
  v22 = v64;
  LOBYTE(v24) = v65[0];
  v59 = *(&v65[0] + 1);
  v25 = v21;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_26;
  }

  while (1)
  {
    v26 = *(v25 + 16);
    if (v26 >= *(v25 + 24) >> 1)
    {
      sub_2313F3244();
      v25 = v51;
    }

    swift_bridgeObjectRelease_n();
    sub_23145EECC(v19);
    *(v25 + 16) = v26 + 1;
    v27 = v25 + 32 * v26;
    *(v27 + 32) = v22;
    *(v27 + 40) = v23;
    *(v27 + 48) = v24;
    *(v27 + 56) = v59;
    v66 = v21;
    v67 = v25;
    v68 = v69;
    v64 = v70;
    v65[0] = *v71;
    *(v65 + 9) = *&v71[9];
    sub_2313F4F84(&v70, v63);
    v28 = v61;
    InteractionQuery.fetchAllWithParameters(_:)(&v64, v29, v30, v31, v32, v33, v34, v35, v52, *(&v52 + 1), v53, v54, v55, v56, v57, v58, v59, v60, v61, v62);
    v19 = v28;
    if (v28)
    {
      OUTLINED_FUNCTION_7_0();

      return v21;
    }

    v37 = v36;
    OUTLINED_FUNCTION_7_0();

    v58 = *(v37 + 16);
    if (!v58)
    {
      break;
    }

    v21 = 0;
    v39 = 0;
    v24 = v53;
    v40 = (*(v24 + 80) + 32) & ~*(v24 + 80);
    v59 = v37;
    v57 = v37 + v40;
    *&v38 = 136315138;
    v52 = v38;
    v22 = v55;
    v41 = v54;
    v23 = v56;
    while (v21 < *(v59 + 16))
    {
      sub_23142C2A0(v57 + *(v24 + 72) * v21, v11);
      if (v39 == 20)
      {
        v39 = 0;
        if (v72)
        {
          if (xpc_activity_should_defer(v72))
          {

            sub_23145EF34(v11);
            goto LABEL_18;
          }

          v39 = 0;
        }
      }

      sub_2313FD390(v11, *(v11 + *(v41 + 20)), v22, *(v11 + *(v41 + 24)), 0, 0);
      swift_unknownObjectRelease();
      if (__OFADD__(v39++, 1))
      {
        goto LABEL_25;
      }

      ++v21;
      sub_23145EF34(v11);
      if (v58 == v21)
      {

        v21 = v58;
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    v49 = *(v21 + 16);
    sub_2313F3244();
    v25 = v50;
  }

  v21 = 0;
  v22 = v55;
LABEL_18:
  if (qword_280C3CF50 != -1)
  {
    OUTLINED_FUNCTION_0();
    swift_once();
  }

  v43 = sub_231477B68();
  v44 = __swift_project_value_buffer(v43, qword_280C3D970);
  v45 = sub_231477B58();
  v46 = sub_2314782A8();
  if (OUTLINED_FUNCTION_12_1(v46))
  {
    v47 = swift_slowAlloc();
    *v47 = 134218240;
    *(v47 + 4) = v21;
    *(v47 + 12) = 2048;
    *(v47 + 14) = v22;
    _os_log_impl(&dword_2313E1000, v45, v44, "Backfill %ld donations with donorStream %ld", v47, 0x16u);
    OUTLINED_FUNCTION_15_0();
    MEMORY[0x23192F1F0]();
  }

  return v21;
}

uint64_t sub_23145E71C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4DEC0, &qword_23147F580);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  OUTLINED_FUNCTION_34();
  v5 = v3 - v4;
  MEMORY[0x28223BE20](v6);
  v8 = v28 - v7;
  memcpy(v30, v0, sizeof(v30));
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD4EAC0, &qword_23147D020);
  OUTLINED_FUNCTION_15_10();
  v9 = sub_231407518(5.0);
  type metadata accessor for SiriRemembersDonationCache();
  OUTLINED_FUNCTION_15_10();
  v10 = sub_2314078F8(v9);
  v11 = sub_231476CA8();
  __swift_storeEnumTagSinglePayload(v8, 1, 1, v11);
  sub_231476C98();
  __swift_storeEnumTagSinglePayload(v5, 0, 1, v11);
  v12 = objc_allocWithZone(MEMORY[0x277CF1A50]);
  v13 = sub_23145ECAC(v8, v5, 0, 0, 0);
  v14 = [v30[13] publisherWithOptions_];
  v15 = swift_allocObject();
  *(v15 + 16) = 0;
  v28[4] = nullsub_1;
  v28[5] = 0;
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 1107296256;
  v28[2] = sub_23145EC44;
  v28[3] = &block_descriptor_15;
  v16 = _Block_copy(v28);
  v17 = swift_allocObject();
  memcpy(v17 + 2, v30, 0x78uLL);
  v17[17] = v15;
  v17[18] = v10;
  v29[4] = sub_23145EE20;
  v29[5] = v17;
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 1107296256;
  v29[2] = sub_23145EC44;
  v29[3] = &block_descriptor_21;
  v18 = _Block_copy(v29);
  sub_23145EE2C(v30, v28);

  v19 = [v14 sinkWithCompletion:v16 receiveInput:v18];
  _Block_release(v18);
  _Block_release(v16);

  if (qword_280C3CF50 != -1)
  {
    OUTLINED_FUNCTION_0();
    swift_once();
  }

  v20 = sub_231477B68();
  __swift_project_value_buffer(v20, qword_280C3D970);

  v21 = sub_231477B58();
  v22 = sub_2314782A8();
  v23 = OUTLINED_FUNCTION_28_1();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    *v25 = 134217984;
    swift_beginAccess();
    *(v25 + 4) = *(v15 + 16);

    _os_log_impl(&dword_2313E1000, v21, v22, "Backfill %ld donations from AppIntent to SiriRemembersView", v25, 0xCu);
    OUTLINED_FUNCTION_15_0();
    MEMORY[0x23192F1F0]();
  }

  else
  {
  }

  swift_beginAccess();
  v26 = *(v15 + 16);

  return v26;
}

void sub_23145EB40(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!*a2 || !xpc_activity_should_defer(*a2))
  {
    v8 = swift_beginAccess();
    v9 = *(a3 + 16);
    v10 = __OFADD__(v9, 1);
    v11 = v9 + 1;
    if (v10)
    {
      __break(1u);
    }

    else
    {
      *(a3 + 16) = v11;
      v12 = MEMORY[0x23192EB00](v8);
      type metadata accessor for AppIntentProcessor();
      v13 = *(a2 + 24);
      v18 = *(a2 + 8);
      v19[0] = v13;
      *(v19 + 9) = *(a2 + 33);
      v14 = *(a2 + 24);
      v16 = *(a2 + 8);
      *v17 = v14;
      *&v17[9] = *(a2 + 33);
      sub_23145EE64(&v18, &v15, &qword_27DD4D548, &qword_23147F900);
      sub_2313F2408(a1, &v16, a4);
      sub_2313E3440(v16, *(&v16 + 1), *v17, *&v17[8], *&v17[16]);
      objc_autoreleasePoolPop(v12);
    }
  }
}

void sub_23145EC44(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

id sub_23145ECAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = sub_231476CA8();
  v13 = 0;
  if (__swift_getEnumTagSinglePayload(a1, 1, v12) != 1)
  {
    v13 = sub_231476BF8();
    (*(*(v12 - 8) + 8))(a1, v12);
  }

  if (__swift_getEnumTagSinglePayload(a2, 1, v12) == 1)
  {
    v14 = 0;
  }

  else
  {
    v14 = sub_231476BF8();
    (*(*(v12 - 8) + 8))(a2, v12);
  }

  v15 = [v6 initWithStartDate:v13 endDate:v14 maxEvents:a3 lastN:a4 reversed:a5 & 1];

  return v15;
}

uint64_t sub_23145EE64(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_23145EECC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD4D680, &qword_2314795C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23145EF34(uint64_t a1)
{
  v2 = type metadata accessor for InteractionWithParameters(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23145EF90(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_23145EFF8@<X0>(uint64_t result@<X0>, _BYTE *a2@<X8>)
{
  if ((result - 1) >= 8)
  {
    v2 = 0;
  }

  else
  {
    v2 = result;
  }

  *a2 = v2;
  return result;
}

uint64_t SiriRemembersBiomeStreamDonator.__allocating_init()()
{
  v0 = swift_allocObject();
  SiriRemembersBiomeStreamDonator.init()();
  return v0;
}

uint64_t BMAppIntent.interactionID.getter()
{
  sub_2313F3F70(v0);
  v1 = 0;
  if (v2 >> 60 != 15)
  {
    v3 = objc_allocWithZone(MEMORY[0x277CCAAC8]);
    v4 = OUTLINED_FUNCTION_16_5();
    sub_2313F3FD4(v4, v5);
    v6 = OUTLINED_FUNCTION_16_5();
    v8 = sub_2313F402C(v6, v7);
    sub_2313E4AFC(0, &qword_280C3BBF8, 0x277CD3D58);
    v9 = *MEMORY[0x277CCA308];
    sub_231477E68();
    v10 = sub_2314783F8();

    if (v10)
    {
      v11 = [v10 intent];
      v12 = [v11 identifier];

      if (v12)
      {
        v1 = sub_231477E68();
        v13 = OUTLINED_FUNCTION_16_5();
        sub_2313F3D2C(v13, v14);

        return v1;
      }

      v18 = OUTLINED_FUNCTION_16_5();
      sub_2313F3D2C(v18, v19);
    }

    else
    {
      v15 = OUTLINED_FUNCTION_16_5();
      sub_2313F3D2C(v15, v16);
    }

    return 0;
  }

  return v1;
}

uint64_t sub_23145F2EC()
{
  result = sub_231478508();
  qword_280C3D918 = result;
  unk_280C3D920 = v1;
  return result;
}

void sub_23145F320(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a3)
  {
    if (qword_280C3CF50 != -1)
    {
      OUTLINED_FUNCTION_0();
      swift_once();
    }

    v7 = sub_231477B68();
    __swift_project_value_buffer(v7, qword_280C3D970);
    oslog = sub_231477B58();
    v8 = sub_2314782B8();
    if (os_log_type_enabled(oslog, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_2313E1000, oslog, v8, "The accountIdentifier should be NIL for non-tvOS platforms.", v9, 2u);
      OUTLINED_FUNCTION_15_0();
      MEMORY[0x23192F1F0]();
    }
  }

  else
  {
    v13 = [a1 pruner];
    v14 = swift_allocObject();
    *(v14 + 16) = a5;
    *(v14 + 24) = 0;
    aBlock[4] = a6;
    aBlock[5] = v14;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_23145F518;
    aBlock[3] = a7;
    v15 = _Block_copy(aBlock);

    [v13 deleteEventsPassingTest_];

    _Block_release(v15);
    LOBYTE(v13) = swift_isEscapingClosureAtFileLocation();

    if (v13)
    {
      __break(1u);
    }
  }
}

uint64_t sub_23145F518(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  v7 = a2;
  LOBYTE(a3) = v6(a2, a3);

  return a3 & 1;
}

void sub_23145F574()
{
  v1 = *(v0[2] + 16);
  OUTLINED_FUNCTION_14_11(v1, v2, v3, &unk_28460C0E0, OUTLINED_FUNCTION_41_0, sub_231460090, &block_descriptor_67);

  v4 = *(v0[3] + 16);
  OUTLINED_FUNCTION_14_11(v4, v5, v6, &unk_28460C090, OUTLINED_FUNCTION_41_0, sub_231460054, &block_descriptor_61);

  v7 = *(v0[4] + 16);
  OUTLINED_FUNCTION_14_11(v7, v8, v9, &unk_28460C040, OUTLINED_FUNCTION_41_0, sub_231460090, &block_descriptor_55);

  v10 = *(v0[5] + 16);
  OUTLINED_FUNCTION_14_11(v10, v11, v12, &unk_28460BFF0, OUTLINED_FUNCTION_41_0, sub_231460090, &block_descriptor_49);

  v15 = *(v0[6] + 16);
  OUTLINED_FUNCTION_14_11(v15, v13, v14, &unk_28460BFA0, OUTLINED_FUNCTION_41_0, sub_231460090, &block_descriptor_4);
}

id sub_23145F89C(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, void, uint64_t), const char *a6, Class *a7)
{
  v15 = type metadata accessor for Interaction(0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  OUTLINED_FUNCTION_2();
  v19 = (v18 - v17);
  result = a5(a1, a2, a3 & 1, a4);
  if (!v7)
  {
    v21 = result;
    if (qword_280C3CF50 != -1)
    {
      OUTLINED_FUNCTION_0();
      swift_once();
    }

    v22 = sub_231477B68();
    __swift_project_value_buffer(v22, qword_280C3D970);
    OUTLINED_FUNCTION_2_20();
    sub_231405490(a1, v19, v23);
    v24 = sub_231477B58();
    v25 = sub_2314782A8();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v36 = a7;
      v27 = swift_slowAlloc();
      v37 = v27;
      *v26 = 136315138;
      v35 = a6;
      v28 = v21;
      v30 = *v19;
      v29 = v19[1];

      OUTLINED_FUNCTION_0_18();
      sub_2313FC268(v19, v31);
      v32 = sub_2313EB684(v30, v29, &v37);
      v21 = v28;

      *(v26 + 4) = v32;
      _os_log_impl(&dword_2313E1000, v24, v25, v35, v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v27);
      a7 = v36;
      OUTLINED_FUNCTION_15_0();
      MEMORY[0x23192F1F0]();
      OUTLINED_FUNCTION_15_0();
      MEMORY[0x23192F1F0]();
    }

    else
    {

      OUTLINED_FUNCTION_0_18();
      sub_2313FC268(v19, v33);
    }

    v34 = objc_allocWithZone(*a7);
    return sub_23145FF08(v21);
  }

  return result;
}

id sub_23145FAD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a2)
  {
    v12 = sub_231477E58();

    if (a4)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v12 = 0;
    if (a4)
    {
LABEL_3:
      v13 = sub_231477E58();

      if (a6)
      {
        goto LABEL_4;
      }

LABEL_8:
      v14 = 0;
      if (a8)
      {
        goto LABEL_5;
      }

LABEL_9:
      v15 = 0;
      goto LABEL_10;
    }
  }

  v13 = 0;
  if (!a6)
  {
    goto LABEL_8;
  }

LABEL_4:
  v14 = sub_231477E58();

  if (!a8)
  {
    goto LABEL_9;
  }

LABEL_5:
  v15 = sub_231477E58();

LABEL_10:
  v16 = [v8 initWithIdentifier:v12 type:v13 fields:v14 fieldsTokens:v15];

  return v16;
}

id sub_23145FBE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned int a9, unsigned int a10, void *a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, int a20, void *a21, int a22)
{
  if (a2)
  {
    v37 = sub_231477E58();

    if (a4)
    {
LABEL_3:
      v36 = sub_231477E58();

      goto LABEL_6;
    }
  }

  else
  {
    v37 = 0;
    if (a4)
    {
      goto LABEL_3;
    }
  }

  v36 = 0;
LABEL_6:
  if (a6)
  {
    v35 = sub_231477E58();

    if (a8)
    {
LABEL_8:
      v34 = sub_231477E58();

      goto LABEL_11;
    }
  }

  else
  {
    v35 = 0;
    if (a8)
    {
      goto LABEL_8;
    }
  }

  v34 = 0;
LABEL_11:
  v25 = sub_231476CA8();
  v26 = 0;
  if (__swift_getEnumTagSinglePayload(a12, 1, v25) != 1)
  {
    v26 = sub_231476BF8();
    (*(*(v25 - 8) + 8))(a12, v25);
  }

  if (a15)
  {
    v27 = sub_231477E58();
  }

  else
  {
    v27 = 0;
  }

  HIDWORD(v32) = a9;
  if (a17)
  {
    v28 = sub_231477E58();
  }

  else
  {
    v28 = 0;
  }

  if (a19)
  {
    v29 = sub_231477E58();
  }

  else
  {
    v29 = 0;
  }

  LODWORD(v32) = a22;
  LODWORD(v31) = a20;
  v33 = [v38 initWithIdentifier:v37 type:v36 domain:v35 appBundleId:v34 status:a9 direction:a10 isDonatedBySiri:a11 startDate:v26 durationInSeconds:a13 fields:v27 groupIdentifier:v28 appIntentInteractionIdentifier:v29 interactionSource:v31 contentHash:a21 userDonatorType:v32];

  return v33;
}

id sub_23145FE68(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = sub_231477E58();
  }

  else
  {
    v3 = 0;
  }

  sub_2313E4AFC(0, &qword_280C3C120, 0x277CF1578);
  v4 = sub_231478118();

  v5 = [v2 initWithKey:v3 entities:v4];

  return v5;
}

id sub_23145FF08(void *a1)
{
  sub_2313E4AFC(0, &unk_280C3C100, 0x277CF1570);
  v3 = sub_231478118();

  v4 = [v1 initWithInteraction:a1 entities:v3];

  return v4;
}

uint64_t sub_231460054()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1() & 1;
}

uint64_t sub_2314600DC()
{
  v1 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4D640, &qword_23147FD10);
  sub_231478318();
  return v3;
}

uint64_t sub_231460178()
{
  OUTLINED_FUNCTION_6_15();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4E1A8, &unk_23147FD20);
  OUTLINED_FUNCTION_14(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_61();
  (MEMORY[0x28223BE20])();
  OUTLINED_FUNCTION_5_18();
  v5 = sub_2314779F8();
  v6 = OUTLINED_FUNCTION_16_11(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = OUTLINED_FUNCTION_2_21();
  if (__swift_getEnumTagSinglePayload(v9, v10, v1) == 1)
  {
    OUTLINED_FUNCTION_9_19();
    sub_2313E937C(v11, v12, v13);
    OUTLINED_FUNCTION_8_19();
    sub_231461070(v14, v15, v16, v17);

    v18 = OUTLINED_FUNCTION_3_7();
    return sub_2313E937C(v18, v19, v20);
  }

  else
  {
    v22 = OUTLINED_FUNCTION_21_8();
    v23(v22);
    v24 = *v0;
    swift_isUniquelyReferenced_nonNull_native();
    v25 = OUTLINED_FUNCTION_3_12();
    sub_23142F670(v25, v26, v27, v28);

    *v0 = v29;
  }

  return result;
}

uint64_t sub_2314602E4()
{
  OUTLINED_FUNCTION_6_15();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4DEC0, &qword_23147F580);
  OUTLINED_FUNCTION_14(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_61();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_5_18();
  v6 = sub_231476CA8();
  v7 = OUTLINED_FUNCTION_16_11(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = OUTLINED_FUNCTION_2_21();
  if (__swift_getEnumTagSinglePayload(v10, v11, v1) == 1)
  {
    OUTLINED_FUNCTION_9_19();
    sub_2313E937C(v12, v13, v14);
    OUTLINED_FUNCTION_8_19();
    sub_231461070(v15, v16, v17, v18);

    v19 = OUTLINED_FUNCTION_3_7();
    return sub_2313E937C(v19, v20, v21);
  }

  else
  {
    v23 = OUTLINED_FUNCTION_21_8();
    v24(v23);
    v25 = *v0;
    swift_isUniquelyReferenced_nonNull_native();
    v26 = OUTLINED_FUNCTION_3_12();
    sub_23142F69C(v26, v27, v28, v29);

    *v0 = v30;
  }

  return result;
}

uint64_t sub_231460450()
{
  OUTLINED_FUNCTION_6_15();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4E140, &unk_23147CDD0);
  OUTLINED_FUNCTION_14(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_61();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_5_18();
  v5 = type metadata accessor for HistoryStats();
  v6 = OUTLINED_FUNCTION_3(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = OUTLINED_FUNCTION_2_21();
  if (__swift_getEnumTagSinglePayload(v9, v10, v11) == 1)
  {
    OUTLINED_FUNCTION_9_19();
    sub_2313E937C(v12, v13, v14);
    v15 = OUTLINED_FUNCTION_8_19();
    sub_2314611CC(v15, v16, v17, v18, v19);

    v20 = OUTLINED_FUNCTION_3_7();
    return sub_2313E937C(v20, v21, v22);
  }

  else
  {
    sub_231461468();
    v24 = *v0;
    swift_isUniquelyReferenced_nonNull_native();
    v25 = OUTLINED_FUNCTION_3_12();
    sub_23142F994(v25, v26);

    *v0 = v27;
  }

  return result;
}

uint64_t sub_2314605B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4D690, &qword_231479AD0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v19 - v10;
  v12 = type metadata accessor for Interaction(0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (__swift_getEnumTagSinglePayload(a1, 1, v16) == 1)
  {
    sub_2313E937C(a1, &qword_27DD4D690, &qword_231479AD0);
    sub_2314611CC(a2, a3, &qword_27DD4DD88, &qword_23147B9B8, type metadata accessor for Interaction);

    return sub_2313E937C(v11, &qword_27DD4D690, &qword_231479AD0);
  }

  else
  {
    sub_231461468();
    v18 = *v4;
    swift_isUniquelyReferenced_nonNull_native();
    v20 = *v4;
    sub_23142FAF0(v15, a2);

    *v4 = v20;
  }

  return result;
}

uint64_t sub_231460790(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 16) && (sub_2313F0604(), (v4 & 1) != 0))
  {
    v5 = *(a3 + 56);
    v6 = type metadata accessor for Interaction(0);
    OUTLINED_FUNCTION_3(v6);
    v8 = *(v7 + 72);
    OUTLINED_FUNCTION_1_21();
    sub_2314054F0();
    v9 = OUTLINED_FUNCTION_15_11();
    v12 = v6;
  }

  else
  {
    type metadata accessor for Interaction(0);
    v9 = OUTLINED_FUNCTION_10_19();
  }

  return __swift_storeEnumTagSinglePayload(v9, v10, v11, v12);
}

uint64_t sub_231460828()
{
  (*(*(*(*v0 + 88) - 8) + 8))(v0 + *(*v0 + 104));
  v1 = *(*v0 + 112);
  v2 = sub_231476CA8();
  OUTLINED_FUNCTION_3(v2);
  (*(v3 + 8))(v0 + v1);
  return v0;
}

uint64_t sub_2314608E4()
{
  sub_231460828();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_23146093C(__int128 *a1)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a1[2];
  v7 = *(a1 + 6);
  v2 = *(v1 + 16);

  sub_2314060AC();
}

unint64_t sub_2314609B0(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  result = sub_23140674C(a2);
  if (v5)
  {
    v6 = result;
    v7 = *a1;
    swift_isUniquelyReferenced_nonNull_native();
    v14 = *a1;
    v8 = *(*a1 + 24);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4DD90, &unk_23147FD00);
    sub_2314785F8();
    v9 = (*(v14 + 48) + 56 * v6);
    v10 = v9[1];
    v11 = v9[3];
    v12 = v9[5];

    v13 = *(*(v14 + 56) + 8 * v6);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD4EAD0, &qword_23147F908);
    sub_23140769C();
    sub_231478608();

    *a1 = v14;
  }

  return result;
}

uint64_t sub_231460AB8()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t sub_231460AD8()
{
  sub_231460AB8();

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

uint64_t InteractionKey.domain.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return OUTLINED_FUNCTION_17();
}

uint64_t InteractionKey.domain.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t InteractionKey.type.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return OUTLINED_FUNCTION_17();
}

uint64_t InteractionKey.type.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t InteractionKey.bundleId.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return OUTLINED_FUNCTION_17();
}

uint64_t InteractionKey.bundleId.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

BOOL static InteractionKey.== infix(_:_:)(void *a1, void *a2)
{
  v2 = a1[2];
  v4 = a1[3];
  v3 = a1[4];
  v5 = a1[5];
  v6 = a1[6];
  v7 = a2[2];
  v8 = a2[3];
  v9 = a2[4];
  v10 = a2[5];
  v11 = a2[6];
  v12 = *a1 == *a2 && a1[1] == a2[1];
  if (v12 || (sub_2314787C8()) && (v2 == v7 ? (v13 = v4 == v8) : (v13 = 0), (v13 || (OUTLINED_FUNCTION_3_7(), (sub_2314787C8())) && (v3 == v9 ? (v14 = v5 == v10) : (v14 = 0), v14 || (OUTLINED_FUNCTION_17(), (sub_2314787C8()))))
  {
    return v6 == v11;
  }

  else
  {
    return 0;
  }
}

uint64_t InteractionKey.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v7 = v0[6];
  sub_231477F38();
  sub_231477F38();
  sub_231477F38();
  return MEMORY[0x23192E9B0](v7);
}

uint64_t InteractionKey.hashValue.getter()
{
  OUTLINED_FUNCTION_17_7();
  sub_2314788E8();
  sub_231477F38();
  sub_231477F38();
  OUTLINED_FUNCTION_9_19();
  sub_231477F38();
  MEMORY[0x23192E9B0](v0);
  return sub_231478918();
}

uint64_t sub_231460E98()
{
  OUTLINED_FUNCTION_17_7();
  sub_2314788E8();
  sub_231477F38();
  sub_231477F38();
  OUTLINED_FUNCTION_9_19();
  sub_231477F38();
  MEMORY[0x23192E9B0](v0);
  return sub_231478918();
}

uint64_t sub_231460F20()
{
  OUTLINED_FUNCTION_73();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4D690, &qword_231479AD0);
  OUTLINED_FUNCTION_14(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_61();
  MEMORY[0x28223BE20](v4);
  v6 = &v11 - v5;
  v7 = *(v0 + 64);
  v8 = *(v0 + 72);
  OUTLINED_FUNCTION_1_21();
  sub_2314054F0();
  v9 = type metadata accessor for Interaction(0);
  __swift_storeEnumTagSinglePayload(v6, 0, 1, v9);

  return sub_2314605B8(v6, v7, v8);
}

uint64_t SiriRemembersDonationCache.deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return v0;
}

uint64_t SiriRemembersDonationCache.__deallocating_deinit()
{
  SiriRemembersDonationCache.deinit();

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

uint64_t sub_231461070@<X0>(uint64_t *a1@<X2>, uint64_t *a2@<X3>, uint64_t (*a3)(void)@<X4>, uint64_t a4@<X8>)
{
  v8 = v4;
  v10 = *v4;
  v11 = sub_2313E7C04();
  if (v12)
  {
    v13 = v11;
    v14 = *v8;
    swift_isUniquelyReferenced_nonNull_native();
    v25 = *v8;
    v15 = *(*v8 + 24);
    __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
    sub_2314785F8();
    v16 = *(*(v25 + 48) + 16 * v13 + 8);

    v17 = *(v25 + 56);
    v18 = a3(0);
    OUTLINED_FUNCTION_3(v18);
    (*(v19 + 32))(a4, v17 + *(v19 + 72) * v13, v18);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4D640, &qword_23147FD10);
    sub_2314613EC();
    sub_231478608();
    *v8 = v25;
    v20 = OUTLINED_FUNCTION_15_11();
    v23 = v18;
  }

  else
  {
    a3(0);
    v20 = OUTLINED_FUNCTION_10_19();
  }

  return __swift_storeEnumTagSinglePayload(v20, v21, v22, v23);
}

uint64_t sub_2314611CC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void))
{
  v9 = v5;
  v10 = *v5;
  v11 = sub_2313F0604();
  if (v12)
  {
    v13 = v11;
    v14 = *v9;
    swift_isUniquelyReferenced_nonNull_native();
    v26 = *v9;
    v15 = *(*v9 + 24);
    __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
    sub_2314785F8();
    v16 = *(*(v26 + 48) + 16 * v13 + 8);

    v17 = *(v26 + 56);
    v18 = a5(0);
    OUTLINED_FUNCTION_3(v18);
    v20 = *(v19 + 72);
    sub_231461468();
    sub_231478608();
    *v9 = v26;
    v21 = OUTLINED_FUNCTION_15_11();
    v24 = v18;
  }

  else
  {
    a5(0);
    v21 = OUTLINED_FUNCTION_10_19();
  }

  return __swift_storeEnumTagSinglePayload(v21, v22, v23, v24);
}

uint64_t sub_231461308@<X0>(uint64_t *a1@<X8>)
{
  result = sub_23140AD58();
  if (!v1)
  {
    *a1 = result;
    a1[1] = v4;
  }

  return result;
}

unint64_t sub_231461334(uint64_t *a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v4[0] = *a2;
  v4[1] = v2;
  v4[2] = *(a2 + 32);
  v5 = *(a2 + 48);
  return sub_2314609B0(a1, v4);
}

uint64_t sub_231461370()
{
  OUTLINED_FUNCTION_73();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_3(v3);
  v5 = *(v4 + 16);
  v6 = OUTLINED_FUNCTION_17();
  v7(v6);
  return v0;
}

unint64_t sub_2314613EC()
{
  result = qword_280C3D6F0;
  if (!qword_280C3D6F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DD4D640, &qword_23147FD10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C3D6F0);
  }

  return result;
}

uint64_t sub_231461468()
{
  OUTLINED_FUNCTION_73();
  v2 = v1(0);
  OUTLINED_FUNCTION_3(v2);
  v4 = *(v3 + 32);
  v5 = OUTLINED_FUNCTION_17();
  v6(v5);
  return v0;
}

SiriRemembers::SiriRemembersFeatureSet __swiftcall SiriRemembersFeatureSet.init(useIntelligencePlatform:)(Swift::Bool useIntelligencePlatform)
{
  *v1 = useIntelligencePlatform;
  *(v1 + 1) = 0;
  result.useIntelligencePlatform = useIntelligencePlatform;
  return result;
}

uint64_t FeatureFlagsKey<>.isEnabled.getter(uint64_t a1, uint64_t a2)
{
  v3 = a1;
  v6[3] = a1;
  v6[4] = a2;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v6);
  (*(*(v3 - 8) + 16))(boxed_opaque_existential_1, v2, v3);
  LOBYTE(v3) = sub_231476D68();
  __swift_destroy_boxed_opaque_existential_0(v6);
  return v3 & 1;
}

SiriRemembers::SiriRemembersFeatureSet __swiftcall SiriRemembersFeatureSet.init(useIntelligencePlatform:privateToPrivateDeviceSyncEnabled:privateToSharedDeviceSyncEnabled:)(Swift::Bool useIntelligencePlatform, Swift::Bool privateToPrivateDeviceSyncEnabled, Swift::Bool privateToSharedDeviceSyncEnabled)
{
  *v3 = useIntelligencePlatform;
  v3[1] = privateToPrivateDeviceSyncEnabled;
  v3[2] = privateToSharedDeviceSyncEnabled;
  result.useIntelligencePlatform = useIntelligencePlatform;
  return result;
}

_BYTE *storeEnumTagSinglePayload for SiriRemembersTrialFactors(_BYTE *result, int a2, int a3)
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

uint64_t __swift_memcpy3_1(uint64_t result, __int16 *a2)
{
  v2 = *a2;
  *(result + 2) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for SiriRemembersFeatureSet(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    v3 = -1;
    return (v3 + 1);
  }

  if (a2 >= 0xFF)
  {
    if ((a2 + 33554177) >> 24)
    {
      v2 = *(a1 + 3);
      if (*(a1 + 3))
      {
        goto LABEL_5;
      }
    }

    else
    {
      v2 = *(a1 + 3);
      if (*(a1 + 3))
      {
LABEL_5:
        v3 = (*a1 | (*(a1 + 2) << 16) | (v2 << 24)) - 16776962;
        return (v3 + 1);
      }
    }
  }

  v4 = *a1;
  v5 = v4 >= 2;
  v3 = (v4 + 2147483646) & 0x7FFFFFFF;
  if (!v5)
  {
    v3 = -1;
  }

  return (v3 + 1);
}

uint64_t storeEnumTagSinglePayload for SiriRemembersFeatureSet(uint64_t result, unsigned int a2, unsigned int a3)
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
      *result = a2 + 1;
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

_BYTE *sub_23146177C(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_231461858()
{
  result = qword_27DD4EB70;
  if (!qword_27DD4EB70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD4EB70);
  }

  return result;
}

unint64_t sub_2314618AC()
{
  result = qword_27DD4EB78;
  if (!qword_27DD4EB78)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27DD4EB78);
  }

  return result;
}

id sub_2314618F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v5 = sub_231477E58();

  v6 = [v4 initWithMachServiceName:v5 options:a3];

  return v6;
}

void sub_23146196C(void *a1, void (*a2)(void))
{
  v3 = [a1 _xpcConnection];
  v4 = xpc_connection_copy_invalidation_reason();
  swift_unknownObjectRelease();
  if (v4)
  {
    v5 = sub_231477FD8();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0xE000000000000000;
  }

  if (qword_280C3CF50 != -1)
  {
    swift_once();
  }

  v8 = sub_231477B68();
  __swift_project_value_buffer(v8, qword_280C3D970);

  v9 = sub_231477B58();
  v10 = sub_2314782B8();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v16 = v12;
    *v11 = 136315138;
    v13 = sub_2313EB684(v5, v7, &v16);

    *(v11 + 4) = v13;
    _os_log_impl(&dword_2313E1000, v9, v10, "XPC connection interrupted: %s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v12);
    MEMORY[0x23192F1F0](v12, -1, -1);
    MEMORY[0x23192F1F0](v11, -1, -1);
  }

  else
  {
  }

  sub_231461EA0();
  v14 = swift_allocError();
  *v15 = 0;
  a2();
}

void sub_231461B60(void *a1)
{
  v1 = [a1 _xpcConnection];
  v2 = xpc_connection_copy_invalidation_reason();
  swift_unknownObjectRelease();
  if (v2)
  {
    v3 = sub_231477FD8();
    v5 = v4;
  }

  else
  {
    v3 = 0;
    v5 = 0xE000000000000000;
  }

  if (qword_280C3CF50 != -1)
  {
    swift_once();
  }

  v6 = sub_231477B68();
  __swift_project_value_buffer(v6, qword_280C3D970);

  oslog = sub_231477B58();
  v7 = sub_2314782B8();

  if (os_log_type_enabled(oslog, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v12 = v9;
    *v8 = 136315138;
    v10 = sub_2313EB684(v3, v5, &v12);

    *(v8 + 4) = v10;
    _os_log_impl(&dword_2313E1000, oslog, v7, "XPC connection invalidated: %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x23192F1F0](v9, -1, -1);
    MEMORY[0x23192F1F0](v8, -1, -1);
  }

  else
  {
  }
}

void sub_231461D10(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

uint64_t sub_231461D78()
{
  v0 = sub_231478638();

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

uint64_t sub_231461DCC(char a1)
{
  if (a1)
  {
    return 0x6E6F707365526F6ELL;
  }

  else
  {
    return 0xD000000000000015;
  }
}

uint64_t sub_231461E30@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_231461D78();
  *a2 = result;
  return result;
}

uint64_t sub_231461E60@<X0>(uint64_t *a1@<X8>)
{
  result = sub_231461DCC(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_231461EA0()
{
  result = qword_27DD4EB88;
  if (!qword_27DD4EB88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD4EB88);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for XPCError(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_231461FD4()
{
  result = qword_27DD4EB90;
  if (!qword_27DD4EB90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD4EB90);
  }

  return result;
}

BOOL sub_231462038(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
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

uint64_t sub_2314620E8(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);

  v3 = swift_unknownObjectRetain();
  v2(v3);

  return swift_unknownObjectRelease();
}

uint64_t sub_231462148()
{
  v10 = sub_231478308();
  v0 = *(v10 - 8);
  v1 = *(v0 + 64);
  MEMORY[0x28223BE20](v10);
  v3 = v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_2314782F8();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v6 = sub_231477D08();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9[1] = sub_23145C018();
  sub_231477CE8();
  v11 = MEMORY[0x277D84F90];
  sub_23145EF90(&qword_280C3CEA0, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD4EAA0, qword_23147F920);
  sub_2313FD260(&qword_280C3CEB0, &unk_27DD4EAA0, qword_23147F920);
  sub_231478498();
  (*(v0 + 104))(v3, *MEMORY[0x277D85260], v10);
  result = sub_231478338();
  qword_280C3C0B0 = result;
  return result;
}

uint64_t sub_231462398()
{
  v10 = sub_231478308();
  v0 = *(v10 - 8);
  v1 = *(v0 + 64);
  MEMORY[0x28223BE20](v10);
  v3 = v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_2314782F8();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v6 = sub_231477D08();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9[1] = sub_23145C018();
  sub_231477CF8();
  v11 = MEMORY[0x277D84F90];
  sub_23145EF90(&qword_280C3CEA0, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD4EAA0, qword_23147F920);
  sub_2313FD260(&qword_280C3CEB0, &unk_27DD4EAA0, qword_23147F920);
  sub_231478498();
  (*(v0 + 104))(v3, *MEMORY[0x277D85260], v10);
  result = sub_231478338();
  qword_280C3C098 = result;
  return result;
}

uint64_t static SiriSuggestionsBiomeEventBackFiller.register()()
{
  if (qword_280C3C0A8 != -1)
  {
    swift_once();
  }

  v0 = qword_280C3C0B0;
  v1 = swift_allocObject();
  *(v1 + 16) = sub_231462930;
  *(v1 + 24) = 0;
  v4[4] = sub_2313EAA1C;
  v4[5] = v1;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 1107296256;
  v4[2] = sub_2313E340C;
  v4[3] = &block_descriptor_6;
  v2 = _Block_copy(v4);

  dispatch_sync(v0, v2);
  _Block_release(v2);
  LOBYTE(v0) = swift_isEscapingClosureAtFileLocation();

  if (v0)
  {
    __break(1u);
  }

  return result;
}

void sub_231462738()
{
  if ((byte_280C3C0C0 & 1) == 0)
  {
    empty = xpc_dictionary_create_empty();
    xpc_dictionary_set_BOOL(empty, *MEMORY[0x277D86230], 1);
    xpc_dictionary_set_BOOL(empty, *MEMORY[0x277D86360], 0);
    if (*MEMORY[0x277D86328])
    {
      xpc_dictionary_set_BOOL(empty, *MEMORY[0x277D86328], 1);
      xpc_dictionary_set_string(empty, *MEMORY[0x277D86340], *MEMORY[0x277D86350]);
      v6[4] = sub_231462934;
      v6[5] = 0;
      v6[0] = MEMORY[0x277D85DD0];
      v6[1] = 1107296256;
      v6[2] = sub_2314620E8;
      v6[3] = &block_descriptor_3_1;
      v1 = _Block_copy(v6);
      xpc_activity_register("com.apple.siri.inference.SiriRemembers.BackfillSuggestionsBiomeDonation", empty, v1);
      _Block_release(v1);
      if (qword_280C3CF50 != -1)
      {
        swift_once();
      }

      v2 = sub_231477B68();
      __swift_project_value_buffer(v2, qword_280C3D970);
      v3 = sub_231477B58();
      v4 = sub_2314782A8();
      if (os_log_type_enabled(v3, v4))
      {
        v5 = swift_slowAlloc();
        *v5 = 0;
        _os_log_impl(&dword_2313E1000, v3, v4, "SiriSuggestionsBiomeEventBackFiller: registered XPC activity: com.apple.siri.inference.SiriRemembers.BackfillSuggestionsBiomeDonation", v5, 2u);
        MEMORY[0x23192F1F0](v5, -1, -1);
      }

      swift_unknownObjectRelease();
      byte_280C3C0C0 = 1;
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_231462934(uint64_t a1)
{
  v2 = sub_231477CB8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_231477D08();
  v7 = *(v15 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v15);
  v10 = v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280C3C090 != -1)
  {
    swift_once();
  }

  v14[1] = qword_280C3C098;
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  aBlock[4] = sub_2314648AC;
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2313FD2B8;
  aBlock[3] = &block_descriptor_9_1;
  v12 = _Block_copy(aBlock);
  swift_unknownObjectRetain();
  sub_231477CC8();
  v16 = MEMORY[0x277D84F90];
  sub_23145EF90(&qword_280C3C180, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD4EA90, &unk_23147F7E0);
  sub_2313FD260(&qword_280C3C140, &unk_27DD4EA90, &unk_23147F7E0);
  sub_231478498();
  MEMORY[0x23192E3E0](0, v10, v6, v12);
  _Block_release(v12);
  (*(v3 + 8))(v6, v2);
  (*(v7 + 8))(v10, v15);
}

uint64_t sub_231462C24(_xpc_activity_s *a1)
{
  result = xpc_activity_should_defer(a1);
  if ((result & 1) == 0)
  {
    v2 = swift_unknownObjectRetain();
    sub_231462E10(v2, __src);
    sub_231462F6C();
    memcpy(v3, __src, 0x59uLL);
    return sub_2314648B4(v3);
  }

  return result;
}

__n128 sub_231462E10@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  static InteractionStore.inProcess()();
  if (v2)
  {
    swift_unknownObjectRelease();
  }

  else
  {
    *v11 = *v13;
    *&v11[9] = *&v13[9];
    type metadata accessor for SiriRemembersBiomeStreamDonator();
    swift_allocObject();
    v6 = SiriRemembersBiomeStreamDonator.init()();
    v7 = [objc_opt_self() standardUserDefaults];
    v8 = [BiomeLibrary() Siri];
    swift_unknownObjectRelease();
    v9 = [v8 Remembers];
    swift_unknownObjectRelease();
    v10 = [v9 InteractionHistory];
    swift_unknownObjectRelease();
    *a2 = a1;
    *(a2 + 8) = v12;
    *(a2 + 24) = *v11;
    result = *&v11[16];
    *(a2 + 40) = *&v11[16];
    *(a2 + 56) = v6;
    *(a2 + 64) = &unk_284608D28;
    *(a2 + 72) = v7;
    *(a2 + 80) = v10;
    *(a2 + 88) = 0;
  }

  return result;
}

void sub_231462F6C()
{
  v1 = v0;
  v2 = sub_231476CA8();
  v53 = *(v2 - 8);
  v54 = v2;
  v3 = *(v53 + 64);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v49 - v8;
  MEMORY[0x28223BE20](v7);
  v56 = &v49 - v10;
  v11 = *v0;
  v51 = *(v0 + 8);
  v52 = v11;
  v12 = *(v0 + 16);
  v55 = *(v0 + 72);
  v13 = *(v0 + 88);
  if (qword_280C3CF50 != -1)
  {
    swift_once();
  }

  v14 = sub_231477B68();
  __swift_project_value_buffer(v14, qword_280C3D970);
  v15 = sub_231477B58();
  v16 = sub_2314782A8();
  if (os_log_type_enabled(v15, v16))
  {
    *swift_slowAlloc() = 0;
    OUTLINED_FUNCTION_32_0(&dword_2313E1000, v17, v18, "SiriSuggestionsBiomeEventBackFiller: Backfill Suggestions to SiriRemembersView");
    OUTLINED_FUNCTION_16_2();
  }

  if (v12 & 1) != 0 || (v13)
  {
    v50 = v6;
    v23 = v9;
    v24 = sub_231477E58();
    v25 = v55;
    [v55 doubleForKey_];

    v26 = v56;
    sub_231476C48();
    sub_231476C58();
    if (v27 == 0.0)
    {
      v28 = v52;
      if (v52 && xpc_activity_should_defer(v52))
      {
        goto LABEL_13;
      }

      v58[0] = v28;
      v58[1] = v51;
      v59 = v12;
      v60 = *(v1 + 17);
      v61 = *(v1 + 33);
      *v62 = *(v1 + 49);
      *&v62[15] = *(v1 + 64);
      *&v62[23] = v55;
      v62[39] = v13;
      v29 = v57;
      sub_2314635F4();
      if (v29)
      {
LABEL_13:
        (*(v53 + 8))(v56, v54);
      }

      else
      {
        v43 = v50;
        sub_231476C98();
        sub_231476C58();
        v45 = v44;
        v46 = sub_231477E58();
        [v25 setDouble:v46 forKey:v45];

        v47 = v54;
        v48 = *(v53 + 8);
        v48(v43, v54);
        v48(v56, v47);
      }
    }

    else
    {
      v30 = v53;
      v31 = v54;
      (*(v53 + 16))(v23, v26, v54);
      v32 = sub_231477B58();
      v33 = sub_231478298();
      if (os_log_type_enabled(v32, v33))
      {
        v34 = v30;
        v35 = swift_slowAlloc();
        v36 = swift_slowAlloc();
        v58[0] = v36;
        *v35 = 136315138;
        sub_23145EF90(&qword_27DD4EAB0, MEMORY[0x277CC9578]);
        v37 = sub_231478798();
        v39 = v38;
        v40 = *(v34 + 8);
        v40(v23);
        v41 = sub_2313EB684(v37, v39, v58);

        *(v35 + 4) = v41;
        _os_log_impl(&dword_2313E1000, v32, v33, "SiriSuggestionsBiomeEventBackFiller: The suggestions biome event backfill has been completed at %s", v35, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v36);
        OUTLINED_FUNCTION_16_2();
        OUTLINED_FUNCTION_16_2();

        (v40)(v56, v31);
      }

      else
      {

        v42 = *(v30 + 8);
        v42(v23, v31);
        v42(v26, v31);
      }
    }
  }

  else
  {
    v19 = sub_231477B58();
    v20 = sub_2314782A8();
    if (os_log_type_enabled(v19, v20))
    {
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_32_0(&dword_2313E1000, v21, v22, "SiriSuggestionsBiomeEventBackFiller: Skip suggestions backfill since SiriRemembersView disabled");
      OUTLINED_FUNCTION_16_2();
    }
  }
}

uint64_t SiriSuggestionsBiomeEventBackFiller.getLastBackFilledDate(userDefaults:)(void *a1)
{
  if (a1)
  {
    v2 = sub_231477E58();
    [a1 doubleForKey_];
  }

  return sub_231476C48();
}

uint64_t sub_23146354C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 89))
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

uint64_t sub_23146358C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 88) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 89) = 1;
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

    *(result + 89) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_2314635F4()
{
  v1 = v0;
  memcpy(__dst, v0, 0x59uLL);
  v2 = [__dst[10] publisher];
  v3 = swift_allocObject();
  memcpy((v3 + 16), v1, 0x59uLL);
  v15 = sub_2314648E4;
  v16 = v3;
  aBlock = MEMORY[0x277D85DD0];
  v12 = 1107296256;
  v13 = sub_231463960;
  v14 = &block_descriptor_15_0;
  v4 = _Block_copy(&aBlock);
  sub_2314648EC(__dst, v10);

  v5 = [v2 filterWithIsIncluded_];
  _Block_release(v4);
  v10[4] = sub_2314639B8;
  v10[5] = 0;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 1107296256;
  v10[2] = sub_23145EC44;
  v10[3] = &block_descriptor_18;
  v6 = _Block_copy(v10);
  v7 = swift_allocObject();
  memcpy((v7 + 16), __dst, 0x59uLL);
  v15 = sub_23146499C;
  v16 = v7;
  aBlock = MEMORY[0x277D85DD0];
  v12 = 1107296256;
  v13 = sub_23145EC44;
  v14 = &block_descriptor_24_1;
  v8 = _Block_copy(&aBlock);
  sub_2314648EC(__dst, v10);

  v9 = [v5 sinkWithCompletion:v6 receiveInput:v8];
  _Block_release(v8);
  _Block_release(v6);
}

BOOL sub_23146386C(void *a1, uint64_t a2)
{
  v3 = [a1 eventBody];
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  v5 = [v3 interaction];
  if (!v5 || (v6 = sub_2313F1694(v5, &selRef_type), !v7))
  {

    return 0;
  }

  v8 = *(a2 + 64);
  v13[0] = v6;
  v13[1] = v7;
  MEMORY[0x28223BE20](v6);
  v12[2] = v13;
  v10 = sub_231462038(sub_23142FED0, v12, v9);

  return v10;
}

uint64_t sub_231463960(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  LOBYTE(v4) = v4();

  return v4 & 1;
}

void sub_2314639B8(void *a1)
{
  if (qword_280C3CF50 != -1)
  {
    swift_once();
  }

  v2 = sub_231477B68();
  __swift_project_value_buffer(v2, qword_280C3D970);
  v3 = a1;
  oslog = sub_231477B58();
  v4 = sub_231478298();

  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    *(v5 + 4) = v3;
    *v6 = v3;
    v7 = v3;
    _os_log_impl(&dword_2313E1000, oslog, v4, "SiriSuggestionsBiomeEventBackFiller: Finished processing erroneous events in InteractionHistory stream with status: %@", v5, 0xCu);
    sub_23140224C(v6, &qword_27DD4EAF0, &qword_23147B980);
    MEMORY[0x23192F1F0](v6, -1, -1);
    MEMORY[0x23192F1F0](v5, -1, -1);
  }
}

void sub_231463B04(void *a1, xpc_activity_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4EBA0, &qword_231480010);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v98 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD4D680, &qword_2314795C0);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v98 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = (&v98 - v13);
  v15 = type metadata accessor for InteractionWithParameters(0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15);
  v18 = &v98 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a2 && xpc_activity_should_defer(*a2))
  {
    return;
  }

  v19 = [a1 eventBody];
  if (!v19)
  {
    if (qword_280C3CF50 != -1)
    {
      swift_once();
    }

    v58 = sub_231477B68();
    __swift_project_value_buffer(v58, qword_280C3D970);
    v59 = a1;
    v105 = sub_231477B58();
    v60 = sub_2314782B8();

    if (os_log_type_enabled(v105, v60))
    {
      v61 = swift_slowAlloc();
      v62 = swift_slowAlloc();
      *v61 = 138412290;
      *(v61 + 4) = v59;
      *v62 = v59;
      v63 = v59;
      _os_log_impl(&dword_2313E1000, v105, v60, "SiriSuggestionsBiomeEventBackFiller: Unexpected empty record in eventBody: %@", v61, 0xCu);
      sub_23140224C(v62, &qword_27DD4EAF0, &qword_23147B980);
      MEMORY[0x23192F1F0](v62, -1, -1);
      MEMORY[0x23192F1F0](v61, -1, -1);
    }

    goto LABEL_24;
  }

  v20 = v19;
  v103 = a1;
  v21 = [v19 interaction];
  if (v21)
  {
    v22 = sub_2313F1694(v21, &selRef_identifier);
    if (v23)
    {
      v24 = v22;
      v25 = v23;
      v100 = a2;
      v99 = v15;
      v98 = v18;
      if (qword_280C3CF50 != -1)
      {
        swift_once();
      }

      v26 = sub_231477B68();
      v27 = __swift_project_value_buffer(v26, qword_280C3D970);

      v102 = v27;
      v28 = sub_231477B58();
      v29 = sub_2314782A8();

      v30 = os_log_type_enabled(v28, v29);
      v105 = v25;
      v104 = v24;
      v101 = v20;
      if (v30)
      {
        v31 = swift_slowAlloc();
        v32 = swift_slowAlloc();
        *&v115 = v32;
        *v31 = 136315138;
        *(v31 + 4) = sub_2313EB684(v104, v105, &v115);
        _os_log_impl(&dword_2313E1000, v28, v29, "SiriSuggestionsBiomeEventBackFiller: Found interactionId: %s which is in the wrong stream. Migrating...", v31, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v32);
        v33 = v32;
        v24 = v104;
        v25 = v105;
        MEMORY[0x23192F1F0](v33, -1, -1);
        MEMORY[0x23192F1F0](v31, -1, -1);
      }

      v34 = v100;
      *v14 = v24;
      v14[1] = v25;
      type metadata accessor for QueryValue();
      swift_storeEnumTagMultiPayload();
      swift_storeEnumTagMultiPayload();
      v114 = 0;
      sub_2314649E8(v14, v12);

      v35 = MEMORY[0x277D84F90];
      swift_bridgeObjectRetain_n();
      sub_2313E8CDC();
      v36 = *(&v115 + 1);
      v100 = v115;
      v37 = v116[0];
      v38 = *(&v116[0] + 1);
      v39 = v35;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v95 = *(v35 + 16);
        sub_2313F3244();
        v39 = v96;
      }

      v40 = *(v39 + 16);
      if (v40 >= *(v39 + 24) >> 1)
      {
        sub_2313F3244();
        v39 = v97;
      }

      swift_bridgeObjectRelease_n();
      sub_23140224C(v14, &unk_27DD4D680, &qword_2314795C0);
      *(v39 + 16) = v40 + 1;
      v41 = v39 + 32 * v40;
      *(v41 + 32) = v100;
      *(v41 + 40) = v36;
      *(v41 + 48) = v37;
      *(v41 + 56) = v38;
      v111 = v35;
      v112 = v39;
      v113 = v114;
      v42 = *(v34 + 24);
      v43 = *(v34 + 33);
      v115 = *(v34 + 8);
      v116[0] = v42;
      *(v116 + 9) = v43;
      v44 = *(v34 + 24);
      v109 = *(v34 + 8);
      v110[0] = v44;
      *(v110 + 9) = *(v34 + 33);
      sub_2313F4F84(&v115, &v107);
      InteractionQuery.fetchAllWithParameters(_:)(&v109, v45, v46, v47, v48, v49, v50, v51, v98, v99, v100, v101, v102, v103, v104, v105, v106[0], v106[1], v107, *(&v107 + 1));
      v66 = v65;
      v107 = v109;
      v108[0] = v110[0];
      *(v108 + 9) = *(v110 + 9);
      sub_2313F501C(&v107);

      sub_23142A6BC(v66, v7);

      EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v7, 1, v99);
      v68 = v101;
      v69 = v105;
      v70 = v104;
      if (EnumTagSinglePayload == 1)
      {
        sub_23140224C(v7, &qword_27DD4EBA0, &qword_231480010);

        v71 = sub_231477B58();
        v72 = sub_2314782A8();

        if (os_log_type_enabled(v71, v72))
        {
          v73 = swift_slowAlloc();
          v74 = swift_slowAlloc();
          v106[0] = v74;
          *v73 = 136315138;
          v75 = sub_2313EB684(v70, v69, v106);

          *(v73 + 4) = v75;
          _os_log_impl(&dword_2313E1000, v71, v72, "SiriSuggestionsBiomeEventBackFiller: interactionId: %s Not found in SR. Skipping...", v73, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v74);
          MEMORY[0x23192F1F0](v74, -1, -1);
          MEMORY[0x23192F1F0](v73, -1, -1);
        }

        else
        {
        }
      }

      else
      {
        sub_231464A58(v7, v98);

        v76 = sub_231477B58();
        v77 = sub_2314782A8();

        if (os_log_type_enabled(v76, v77))
        {
          v78 = swift_slowAlloc();
          v79 = swift_slowAlloc();
          v106[0] = v79;
          *v78 = 136315138;
          *(v78 + 4) = sub_2313EB684(v70, v69, v106);
          _os_log_impl(&dword_2313E1000, v76, v77, "SiriSuggestionsBiomeEventBackFiller: Found interactionId: %s in SiriRemembers. Starting migration of this record", v78, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v79);
          MEMORY[0x23192F1F0](v79, -1, -1);
          MEMORY[0x23192F1F0](v78, -1, -1);
        }

        v80 = [*(v34 + 80) pruner];
        [v80 deleteStoreEvent_];

        v81 = sub_231477B58();
        v82 = sub_2314782A8();

        if (os_log_type_enabled(v81, v82))
        {
          v83 = swift_slowAlloc();
          v84 = swift_slowAlloc();
          v106[0] = v84;
          *v83 = 136315138;
          *(v83 + 4) = sub_2313EB684(v70, v69, v106);
          _os_log_impl(&dword_2313E1000, v81, v82, "SiriSuggestionsBiomeEventBackFiller: Deleted: %s from Biome interactionHistory stream", v83, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v84);
          MEMORY[0x23192F1F0](v84, -1, -1);
          MEMORY[0x23192F1F0](v83, -1, -1);
        }

        v85 = *(v34 + 56);
        v86 = v98;
        v87 = *(v98 + *(v99 + 20));
        v88 = *(v98 + *(v99 + 24));

        sub_2313FD390(v86, v87, 0, v88, 0, 0);

        swift_unknownObjectRelease();

        v89 = sub_231477B58();
        v90 = sub_2314782A8();

        if (os_log_type_enabled(v89, v90))
        {
          v92 = swift_slowAlloc();
          v93 = swift_slowAlloc();
          v106[0] = v93;
          *v92 = 136315138;
          v94 = sub_2313EB684(v70, v69, v106);

          *(v92 + 4) = v94;
          _os_log_impl(&dword_2313E1000, v89, v90, "SiriSuggestionsBiomeEventBackFiller: interactionId: %s Successfully migrated", v92, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v93);
          MEMORY[0x23192F1F0](v93, -1, -1);
          MEMORY[0x23192F1F0](v92, -1, -1);
        }

        else
        {
        }

        sub_23145EF34(v98);
      }

      return;
    }
  }

  if (qword_280C3CF50 != -1)
  {
    swift_once();
  }

  v52 = sub_231477B68();
  __swift_project_value_buffer(v52, qword_280C3D970);
  v53 = v20;
  v105 = sub_231477B58();
  v54 = sub_2314782A8();

  if (!os_log_type_enabled(v105, v54))
  {

LABEL_24:
    v57 = &v118;
    goto LABEL_25;
  }

  v55 = swift_slowAlloc();
  v56 = swift_slowAlloc();
  *v55 = 138412290;
  *(v55 + 4) = v53;
  *v56 = v20;
  v104 = v53;
  _os_log_impl(&dword_2313E1000, v105, v54, "SiriSuggestionsBiomeEventBackFiller: interactionId: %@ does not have an interaction id. Skipping...", v55, 0xCu);
  sub_23140224C(v56, &qword_27DD4EAF0, &qword_23147B980);
  MEMORY[0x23192F1F0](v56, -1, -1);
  MEMORY[0x23192F1F0](v55, -1, -1);

  v57 = &v117;
LABEL_25:
  v64 = *(v57 - 32);
}

uint64_t objectdestroy_11Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 24);

  v3 = *(v0 + 40);

  if (*(v0 + 56) >= 3uLL)
  {
  }

  v4 = *(v0 + 72);

  v5 = *(v0 + 80);

  return MEMORY[0x2821FE8E8](v0, 105, 7);
}

uint64_t sub_2314649A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == a3 && a2 == a4)
  {
    return 1;
  }

  else
  {
    return sub_2314787C8() & 1;
  }
}

uint64_t sub_2314649E8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD4D680, &qword_2314795C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_231464A58(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for InteractionWithParameters(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_231464B0C@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4DA58, &unk_23147A530);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v9 - v4;
  sub_2313EA1A0(&v9 - v4);
  v6 = sub_231476AF8();
  if (__swift_getEnumTagSinglePayload(v5, 1, v6) == 1)
  {
    sub_2313E937C(v5, &qword_27DD4DA58, &unk_23147A530);
    v7 = 1;
  }

  else
  {
    sub_231476A88();
    (*(*(v6 - 8) + 8))(v5, v6);
    v7 = 0;
  }

  return __swift_storeEnumTagSinglePayload(a1, v7, 1, v6);
}

uint64_t sub_231464C34()
{
  sub_231476AD8();
  v1 = sub_231467460();
  v3 = v2;

  sub_231476AD8();
  v4 = sub_231467460();
  v6 = v5;

  v7 = sub_231476AD8();
  sub_2314674E0(v7, v8);

  if (v0)
  {
  }

  else
  {
    sub_2314674E0(v1, v3);

    sub_2314674E0(v4, v6);
  }
}

uint64_t sub_231464D5C(uint64_t a1, int a2, void *a3)
{
  v235 = a3;
  LODWORD(v236) = a2;
  v229 = a1;
  v238[1] = *MEMORY[0x277D85DE8];
  v225 = type metadata accessor for DBOpenError();
  v3 = OUTLINED_FUNCTION_3(v225);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_17_0();
  v223 = v6;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v7);
  v226 = v213 - v8;
  v9 = sub_231476E58();
  v10 = OUTLINED_FUNCTION_4(v9);
  v221 = v11;
  v222 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_17_0();
  v219 = v14;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v15);
  v220 = v213 - v16;
  v234 = sub_231477048();
  v17 = OUTLINED_FUNCTION_4(v234);
  v232 = v18;
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_17_0();
  v214 = v21;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v22);
  v233 = v213 - v23;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v24);
  v224 = v213 - v25;
  v26 = sub_231476AF8();
  v27 = OUTLINED_FUNCTION_4(v26);
  v230 = v28;
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_17_0();
  v215 = v31;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v32);
  v217 = v213 - v33;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v34);
  v36 = v213 - v35;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4DA58, &unk_23147A530);
  v227 = *(v37 - 8);
  v38 = *(v227 + 64);
  v39 = MEMORY[0x28223BE20](v37 - 8);
  v216 = v213 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = MEMORY[0x28223BE20](v39);
  v42 = v213 - v41;
  MEMORY[0x28223BE20](v40);
  v44 = v213 - v43;
  v45 = sub_2314777F8();
  v46 = OUTLINED_FUNCTION_4(v45);
  v48 = v47;
  v50 = *(v49 + 64);
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_2();
  v53 = (v52 - v51);
  v228 = sub_231477008();
  v54 = OUTLINED_FUNCTION_4(v228);
  v231 = v55;
  v57 = *(v56 + 64);
  MEMORY[0x28223BE20](v54);
  OUTLINED_FUNCTION_17_0();
  v218 = v58;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v59);
  v61 = v213 - v60;
  sub_231476FF8();
  *v53 = 0x4014000000000000;
  (*(v48 + 104))(v53, *MEMORY[0x277D0B810], v45);
  sub_231476FC8();
  LOBYTE(v45) = v236;
  sub_231476FE8();
  v62 = v235;
  sub_231476FA8();
  v63 = v229;
  sub_2313EA3E4(v229, v44);
  v64 = (*(v227 + 80) + 17) & ~*(v227 + 80);
  v65 = swift_allocObject();
  *(v65 + 16) = v45;
  sub_2314222CC(v44, v65 + v64);
  v235 = v61;
  sub_231476FB8();

  sub_2313EA3E4(v63, v42);
  if (__swift_getEnumTagSinglePayload(v42, 1, v26) == 1)
  {
    sub_2313E937C(v42, &qword_27DD4DA58, &unk_23147A530);
    if (qword_280C3CF50 != -1)
    {
      OUTLINED_FUNCTION_5();
    }

    v66 = sub_231477B68();
    OUTLINED_FUNCTION_38(v66, qword_280C3D970);
    v67 = sub_231477B58();
    v68 = sub_2314782A8();
    v69 = OUTLINED_FUNCTION_12(v68);
    v70 = v235;
    if (v69)
    {
      v71 = OUTLINED_FUNCTION_102();
      OUTLINED_FUNCTION_80(v71);
      OUTLINED_FUNCTION_8(&dword_2313E1000, v72, v73, "initializing in-memory InteractionStore");
      OUTLINED_FUNCTION_7_8();
    }

    sub_231467080(v70);
    v74 = v228;
LABEL_52:
    v184 = OUTLINED_FUNCTION_28_6();
    v185(v184, v74);
    result = 0;
    goto LABEL_53;
  }

  (*(v230 + 32))(v36, v42, v26);
  v227 = sub_231476AD8();
  v76 = v75;
  v77 = v36;
  if (qword_280C3CF50 != -1)
  {
    OUTLINED_FUNCTION_5();
  }

  v78 = sub_231477B68();
  OUTLINED_FUNCTION_38(v78, qword_280C3D970);

  v213[3] = v36;
  v79 = sub_231477B58();
  v80 = sub_2314782A8();

  if (os_log_type_enabled(v79, v80))
  {
    v81 = swift_slowAlloc();
    v82 = v26;
    v83 = swift_slowAlloc();
    v238[0] = v83;
    *v81 = 136315394;
    *(v81 + 4) = sub_2313EB684(v227, v76, v238);
    *(v81 + 12) = 1024;
    *(v81 + 14) = v236 & 1;
    OUTLINED_FUNCTION_29_4();
    _os_log_impl(v84, v85, v86, v87, v88, 0x12u);
    __swift_destroy_boxed_opaque_existential_0(v83);
    v26 = v82;
    v77 = v36;
    OUTLINED_FUNCTION_16_2();
    OUTLINED_FUNCTION_16_2();
  }

  v89 = v235;
  v90 = [objc_opt_self() defaultManager];
  v91 = sub_231477E58();
  v92 = [v90 fileExistsAtPath_];

  if (v92)
  {
LABEL_12:
    v217 = v77;
    v74 = v228;
    (v231[2])(v218, v89, v228);
    v93 = sub_2314770A8();
    v94 = *(v93 + 48);
    v95 = *(v93 + 52);
    swift_allocObject();

    sub_231477088();
    if (v236)
    {

      v115 = v230;
    }

    else
    {
      v236 = v90;
      v115 = v230;
      if (qword_280C3C938 != -1)
      {
        swift_once();
      }

      v163 = sub_231477348();
      OUTLINED_FUNCTION_38(v163, qword_280C3D8D0);

      sub_231477328();

      if (qword_280C3C1A0 != -1)
      {
        swift_once();
      }

      OUTLINED_FUNCTION_38(v163, qword_280C3D8E8);

      sub_231477328();

      v74 = v228;
    }

    (*(v115 + 8))(v217, v26);
    goto LABEL_52;
  }

  if ((v236 & 1) == 0)
  {
    v101 = v26;
    v102 = sub_231477B58();
    v103 = sub_2314782A8();
    if (os_log_type_enabled(v102, v103))
    {
      *OUTLINED_FUNCTION_102() = 0;
      OUTLINED_FUNCTION_29_4();
      _os_log_impl(v104, v105, v106, v107, v108, 2u);
      v89 = v235;
      OUTLINED_FUNCTION_16_2();
    }

    sub_231476A98();
    v109 = sub_231476A78();
    v238[0] = 0;
    v110 = [v90 createDirectoryAtURL:v109 withIntermediateDirectories:1 attributes:0 error:v238];

    v111 = v77;
    if (v110)
    {
      v112 = *(v230 + 8);
      v113 = v238[0];
      v114 = OUTLINED_FUNCTION_15_12();
      v112(v114);
      v26 = v101;
      goto LABEL_12;
    }

    v116 = v238[0];

    v117 = sub_231476A68();

    swift_willThrow();
    v118 = *(v230 + 8);
    v119 = OUTLINED_FUNCTION_15_12();
    v118(v119);
    (v118)(v111, v101);
    v121 = v232;
    v120 = v233;
    v122 = v224;
    v123 = v228;
    v124 = OUTLINED_FUNCTION_28_6();
    v125(v124, v123);
    v238[0] = v117;
    v126 = v117;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD4D8D0, &qword_231479558);
    v127 = v234;
    if (!swift_dynamicCast())
    {

      v148 = v117;
      if (qword_280C3CF50 != -1)
      {
        OUTLINED_FUNCTION_5();
      }

      v149 = sub_231477B68();
      OUTLINED_FUNCTION_38(v149, qword_280C3D970);
      v150 = v117;
      v151 = sub_231477B58();
      v152 = sub_2314782B8();

      if (os_log_type_enabled(v151, v152))
      {
        v153 = swift_slowAlloc();
        v154 = swift_slowAlloc();
        v237 = v117;
        v238[0] = v154;
        *v153 = 136315138;
        v155 = v117;
        v156 = sub_231477EB8();
        v158 = sub_2313EB684(v156, v157, v238);

        *(v153 + 4) = v158;
        _os_log_impl(&dword_2313E1000, v151, v152, "error when opening database: %s", v153, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v154);
        OUTLINED_FUNCTION_16_2();
        OUTLINED_FUNCTION_16_2();
      }

      v159 = v223;
      *v223 = v117;
      swift_storeEnumTagMultiPayload();
      v160 = v226;
      sub_231446F90(v226);

      sub_2314471F0(v159);
      sub_2314471F0(v160);
      goto LABEL_37;
    }

    v235 = 0;
    (*(v121 + 32))(v120, v122, v127);
    sub_231477038();
    v128 = v219;
    sub_231476E08();
    OUTLINED_FUNCTION_15_12();
    v129 = sub_231476E38();
    v130 = *(v221 + 8);
    v130(v128, v222);
    v236 = v117;
    if (v129)
    {
      v131 = OUTLINED_FUNCTION_19();
      (v130)(v131);
      OUTLINED_FUNCTION_22_8();
      if (!v183)
      {
        OUTLINED_FUNCTION_5();
      }

      v132 = sub_231477B68();
      OUTLINED_FUNCTION_38(v132, qword_280C3D970);
      v133 = sub_231477B58();
      v134 = sub_2314782B8();
      v135 = OUTLINED_FUNCTION_12(v134);
      v136 = v232;
      if (v135)
      {
        v137 = OUTLINED_FUNCTION_102();
        OUTLINED_FUNCTION_80(v137);
        OUTLINED_FUNCTION_8(&dword_2313E1000, v138, v139, "SQLITE_CANTOPEN error. The device is likely in a faulty state.");
        OUTLINED_FUNCTION_7_8();
      }

      v140 = OUTLINED_FUNCTION_2_22();
      v141(v140);
      OUTLINED_FUNCTION_16_7();
      v142 = OUTLINED_FUNCTION_8_20();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD4D978, &unk_23147A260);
      v143 = swift_allocObject();
      OUTLINED_FUNCTION_1_23(v143, xmmword_23147CE20);
      sub_23146A9A8();
      OUTLINED_FUNCTION_17_5();
      OUTLINED_FUNCTION_28_4();
      OUTLINED_FUNCTION_27();
      v144 = OUTLINED_FUNCTION_5_19();
      v145 = OUTLINED_FUNCTION_4_15(v144);
      OUTLINED_FUNCTION_5_12(v145);
      v146 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
    }

    else
    {
      sub_231476DF8();
      OUTLINED_FUNCTION_15_12();
      sub_231476E38();
      v161 = OUTLINED_FUNCTION_10_20();
      (v130)(v161);
      sub_231476DC8();
      OUTLINED_FUNCTION_15_12();
      sub_231476E38();
      v162 = OUTLINED_FUNCTION_10_20();
      (v130)(v162);
      sub_231476E28();
      OUTLINED_FUNCTION_15_12();
      sub_231476E38();
      v167 = OUTLINED_FUNCTION_10_20();
      (v130)(v167);
      sub_231476E18();
      OUTLINED_FUNCTION_15_12();
      sub_231476E38();
      v168 = OUTLINED_FUNCTION_10_20();
      (v130)(v168);
      if ((v129 & 1) == 0)
      {
        sub_231476DB8();
        OUTLINED_FUNCTION_15_12();
        sub_231476E38();
        v181 = OUTLINED_FUNCTION_10_20();
        (v130)(v181);
        v182 = OUTLINED_FUNCTION_19();
        (v130)(v182);
        OUTLINED_FUNCTION_22_8();
        v187 = v232;
        v188 = v233;
        if (!v183)
        {
          OUTLINED_FUNCTION_5();
        }

        v189 = sub_231477B68();
        OUTLINED_FUNCTION_38(v189, qword_280C3D970);
        v190 = *(v187 + 16);
        v191 = v234;
        v190(v214, v188, v234);
        v192 = sub_231477B58();
        v193 = sub_2314782B8();
        if (os_log_type_enabled(v192, v193))
        {
          v194 = swift_slowAlloc();
          v231 = swift_slowAlloc();
          v237 = v231;
          *v194 = 136315138;
          sub_2313EB944(&qword_27DD4E1B0, MEMORY[0x277D0B6F8]);
          LODWORD(v230) = v193;
          v195 = sub_231478798();
          v196 = v190;
          v198 = v197;
          v199 = OUTLINED_FUNCTION_18_8();
          v200(v199);
          v201 = sub_2313EB684(v195, v198, &v237);
          v190 = v196;

          v202 = v194;
          v188 = v233;
          *(v202 + 1) = v201;
          _os_log_impl(&dword_2313E1000, v192, v230, "error when opening database: %s", v202, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v231);
          OUTLINED_FUNCTION_16_2();
          OUTLINED_FUNCTION_16_2();
        }

        else
        {

          v203 = OUTLINED_FUNCTION_18_8();
          v204(v203);
        }

        v205 = v223;
        v190(v223, v188, v191);
        swift_storeEnumTagMultiPayload();
        v206 = v226;
        sub_231446F90(v226);
        sub_2314471F0(v205);
        v207 = sub_231477E58();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD4D978, &unk_23147A260);
        inited = swift_initStackObject();
        OUTLINED_FUNCTION_1_23(inited, xmmword_23147CE20);
        sub_23146A9A8();
        v209 = sub_231477E58();

        inited[3].n128_u64[0] = v209;
        inited[3].n128_u64[1] = 1701603686;
        inited[4].n128_u64[0] = 0xE400000000000000;
        v210 = sub_231477E58();
        v211 = OUTLINED_FUNCTION_4_15(v210);
        OUTLINED_FUNCTION_5_12(v211);
        inited[7].n128_u64[1] = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
        sub_23144E6CC();
        OUTLINED_FUNCTION_11_0();
        sub_231477DC8();
        OUTLINED_FUNCTION_11_0();
        v212 = sub_231477DA8();

        AnalyticsSendEvent();

        sub_2314471F0(v206);
        (v235)(v188, v234);
        goto LABEL_31;
      }

      v169 = OUTLINED_FUNCTION_19();
      (v130)(v169);
      OUTLINED_FUNCTION_22_8();
      if (!v183)
      {
        OUTLINED_FUNCTION_5();
      }

      v170 = sub_231477B68();
      OUTLINED_FUNCTION_38(v170, qword_280C3D970);
      v171 = sub_231477B58();
      v172 = sub_2314782B8();
      v173 = OUTLINED_FUNCTION_12(v172);
      v136 = v232;
      if (v173)
      {
        v174 = OUTLINED_FUNCTION_102();
        OUTLINED_FUNCTION_80(v174);
        OUTLINED_FUNCTION_8(&dword_2313E1000, v175, v176, "SQLITE_IOERR_LOCK error. Unsure why this is happening.");
        OUTLINED_FUNCTION_7_8();
      }

      v177 = OUTLINED_FUNCTION_2_22();
      v178(v177);
      OUTLINED_FUNCTION_16_7();
      v142 = OUTLINED_FUNCTION_8_20();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD4D978, &unk_23147A260);
      v143 = swift_initStackObject();
      OUTLINED_FUNCTION_1_23(v143, xmmword_23147CE20);
      sub_23146A9A8();
      OUTLINED_FUNCTION_17_5();
      OUTLINED_FUNCTION_28_4();
      OUTLINED_FUNCTION_27();
      v179 = OUTLINED_FUNCTION_5_19();
      v180 = OUTLINED_FUNCTION_4_15(v179);
      OUTLINED_FUNCTION_5_12(v180);
      v146 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
    }

    v143[7].n128_u64[1] = v146;
    sub_23144E6CC();
    OUTLINED_FUNCTION_11_0();
    sub_231477DC8();
    OUTLINED_FUNCTION_11_0();
    v147 = sub_231477DA8();

    AnalyticsSendEvent();

    (*(v136 + 8))(v233, v234);
LABEL_31:

LABEL_37:
    result = 0;
    goto LABEL_53;
  }

  v236 = v90;
  v217 = v77;

  v96 = sub_231477B58();
  v97 = sub_2314782A8();
  if (OUTLINED_FUNCTION_12(v97))
  {
    v98 = OUTLINED_FUNCTION_102();
    OUTLINED_FUNCTION_80(v98);
    OUTLINED_FUNCTION_8(&dword_2313E1000, v99, v100, "InteractionStore file does not exist. opening dummy db to serve read requests.");
    OUTLINED_FUNCTION_7_8();
  }

  sub_231467080(v89);
  (*(v230 + 8))(v217, v26);
  v164 = OUTLINED_FUNCTION_28_6();
  v165(v164, v228);
  result = 1;
LABEL_53:
  v186 = *MEMORY[0x277D85DE8];
  return result;
}