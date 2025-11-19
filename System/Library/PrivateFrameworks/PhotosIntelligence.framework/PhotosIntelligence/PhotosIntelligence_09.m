void ExtendedTokenCollection.assetUUIDsInAllQueryExtendedTokens(consolidatedPersonAssetUUIDs:)()
{
  OUTLINED_FUNCTION_363();
  memcpy(v0, v1, v2);
  OUTLINED_FUNCTION_363();
  memcpy(v3, v4, v5);
  sub_1C7027A20(v7, v6);
  sub_1C701104C();
}

void ExtendedTokenCollection.assetUUIDsInAssetScopingTokens(consolidatedPersonAssetUUIDs:)()
{
  OUTLINED_FUNCTION_363();
  memcpy(v0, v1, v2);
  OUTLINED_FUNCTION_363();
  memcpy(v3, v4, v5);
  sub_1C7027A20(v7, &v6);
  sub_1C701260C();
}

uint64_t ExtendedTokenCollection.numberOfQueryCharacters.getter()
{
  v1 = 0;
  v2 = v0[1];
  v3 = (*v0 + 56);
  v4 = *(*v0 + 16) + 1;
  while (--v4)
  {
    v5 = *v3;
    v3 += 72;
    v6 = (v5 & 1) == 0;
    v7 = __OFADD__(v1, v6);
    v1 += v6;
    if (v7)
    {
      __break(1u);
      break;
    }
  }

  v8 = (v2 + 56);
  v9 = *(v2 + 16) + 1;
  while (--v9)
  {
    v10 = *v8;
    v8 += 72;
    v11 = (v10 & 1) == 0;
    v7 = __OFADD__(v4, v11);
    v4 += v11;
    if (v7)
    {
      __break(1u);
      break;
    }
  }

  result = v1 + v4;
  if (__OFADD__(v1, v4))
  {
    __break(1u);
  }

  return result;
}

void ExtendedTokenCollection.queryCharacterAssetUUIDs()()
{
  OUTLINED_FUNCTION_363();
  memcpy(v0, v1, v2);
  OUTLINED_FUNCTION_363();
  memcpy(v3, v4, v5);
  sub_1C7027A20(v7, &v6);
  sub_1C7013BC0();
}

void __swiftcall ExtendedTokenCollection.merging(_:)(PhotosIntelligence::ExtendedTokenCollection *__return_ptr retstr, PhotosIntelligence::ExtendedTokenCollection *a2)
{
  rawValue = a2->petExtendedTokens._rawValue;
  v180 = a2->personExtendedTokens._rawValue;
  v5 = a2->locationExtendedTokens._rawValue;
  v4 = a2->genericLocationExtendedTokens._rawValue;
  v7 = a2->homeExtendedTokens._rawValue;
  v6 = a2->timeExtendedTokens._rawValue;
  v8 = a2->partOfDayExtendedTokens._rawValue;
  v9 = a2->partOfWeekExtendedTokens._rawValue;
  v10 = a2->tripExtendedTokens._rawValue;
  v11 = v2[2];
  v156 = v2[3];
  v148 = v2[4];
  v164 = v2[5];
  v172 = *v2;
  v132 = v2[1];
  v140 = v2[6];
  v12 = v2[9];
  sub_1C75504FC();
  sub_1C75504FC();
  sub_1C75504FC();
  v202 = v4;
  v13 = v11;
  sub_1C75504FC();
  sub_1C75504FC();
  sub_1C75504FC();
  sub_1C75504FC();
  v242 = v9;
  v14 = v148;
  sub_1C75504FC();
  sub_1C75504FC();
  sub_1C75504FC();
  sub_1C75504FC();
  sub_1C75504FC();
  sub_1C75504FC();
  sub_1C75504FC();
  sub_1C75504FC();
  sub_1C75504FC();
  sub_1C75504FC();
  sub_1C75504FC();
  sub_1C75504FC();
  sub_1C75504FC();
  sub_1C706D940();
  sub_1C7073A2C();
  sub_1C739C234(v15, v16, v17, v18, v19, v20, v21, v22, v124, v132, v140, v148, v156, v164, v172, v180, rawValue, v5, v202, v7, v6, retstr, v8, v242, v10, v12);
  v264[0] = v23;
  OUTLINED_FUNCTION_209();
  sub_1C7018150(v264, v24, v25, sub_1C70210D0, sub_1C701A5E0);

  v26 = v264[0];
  sub_1C706D9F4();
  sub_1C7073AC4();
  sub_1C739C1F4(v27, v28, v29, v30, v31, v32, v33, v34, v125, v133, v141, v149, v157, v165, v173, v181, v188, v195, v203, v210, v217, v227, v235, v243, v250, v257);
  v264[0] = v35;
  OUTLINED_FUNCTION_208();
  sub_1C7018150(v264, v36, v37, sub_1C70202C4, sub_1C701A318);

  v38 = v264[0];
  sub_1C706DAA8(v13);
  sub_1C7073B5C();
  sub_1C739C1B4(v39, v40, v41, v42, v43, v44, v45, v46, v126, v134, v142, v150, v158, v166, v174, v182, v189, v196, v204, v211, v218, v228, v236, v244, v251, v258);
  v264[0] = v47;
  sub_1C70180B8();

  v48 = v264[0];
  sub_1C706DB74();
  sub_1C7073C04();
  sub_1C739C174(v49, v50, v51, v52, v53, v54, v55, v56, v127, v135, v143, v151, v159, v167, v175, v183, v190, v197, v205, v212, v219, v229, v237, v245, v252, v259);
  v264[0] = v57;
  OUTLINED_FUNCTION_207_0();
  sub_1C7018150(v264, v58, v59, sub_1C701E6D8, sub_1C7019D2C);

  v60 = v264[0];
  sub_1C706DAA8(v14);
  sub_1C7073B5C();
  sub_1C739C1B4(v61, v62, v63, v64, v65, v66, v67, v68, v128, v136, v144, v152, v160, v168, v176, v184, v191, v198, v206, v213, v220, v230, v238, v246, v253, v260);
  v264[0] = v69;
  sub_1C70180B8();

  v70 = v264[0];
  v71 = sub_1C706DC14();
  v72 = sub_1C7073C88(v221, v71);
  v264[0] = sub_1C739C090(v72);
  OUTLINED_FUNCTION_206_0();
  sub_1C7017FF8(v264, v73, sub_1C7422B34, sub_1C7018758);
  v222 = v70;

  v74 = v264[0];
  v75 = sub_1C706DD74();
  v82 = sub_1C7073DC8(v239, v75, v76, v77, v78, v79, v80, v81);
  sub_1C739C050(v82, v83, v84, v85, v86, v87, v88, v89, v129, v137, v145, v153, v161, v169, v177, v185, v192, v199, v207, v214, v222, v231, v239, v247, v254, v261);
  v264[0] = v90;
  OUTLINED_FUNCTION_205();
  sub_1C7018150(v264, v91, v92, sub_1C701C494, sub_1C70194C4);
  v93 = v48;
  v94 = v26;

  v95 = v264[0];
  sub_1C706DE30();
  sub_1C7073E6C();
  v264[0] = sub_1C739C010(v96);
  OUTLINED_FUNCTION_204_0();
  sub_1C7017FF8(v264, v97, sub_1C7422B04, sub_1C70183E8);
  v98 = v38;

  v99 = v264[0];
  sub_1C706E37C();
  sub_1C7074368();
  sub_1C739BFD0(v100, v101, v102, v103, v104, v105, v106, v107, v130, v138, v146, v154, v162, v170, v178, v186, v193, v200, v208, v215, v223, v232, v240, v248, v255, v262);
  v264[0] = v108;
  OUTLINED_FUNCTION_203();
  sub_1C7018150(v264, v109, v110, sub_1C701B704, sub_1C7018F24);

  v111 = v264[0];
  sub_1C706E418();
  sub_1C70743E8();
  sub_1C739BF90(v112, v113, v114, v115, v116, v117, v118, v119, v131, v139, v147, v155, v163, v171, v179, v187, v194, v201, v209, v216, v224, v233, v241, v249, v256, v263);
  v264[0] = v120;
  OUTLINED_FUNCTION_202();
  sub_1C7018150(v264, v121, v122, sub_1C701A8B0, sub_1C7018C2C);

  v123 = v264[0];
  *v234 = v94;
  v234[1] = v98;
  v234[2] = v93;
  v234[3] = v60;
  v234[4] = v225;
  v234[5] = v74;
  v234[6] = v95;
  v234[7] = v99;
  v234[8] = v111;
  v234[9] = v123;
}

uint64_t sub_1C7017BB4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  v5 = a2[1];
  sub_1C755180C();

  MEMORY[0x1CCA5CD70](v2, v3);
  sub_1C755180C();

  MEMORY[0x1CCA5CD70](v4, v5);

  return 0;
}

void sub_1C7017CC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_14_9();
  a25 = v27;
  a26 = v28;
  v30 = v29;
  v31 = *v26;
  v32 = v26[1];
  v34 = v26[2];
  v33 = v26[3];
  v36 = v26[4];
  v35 = v26[5];
  v38 = v26[6];
  v37 = v26[7];
  v39 = v26[8];
  v40 = v26[9];
  v67 = v39;
  a14 = v31;
  sub_1C75504FC();
  OUTLINED_FUNCTION_209();
  sub_1C7018150(&a14, v41, v42, sub_1C7021994, sub_1C701A7BC);
  v68 = a14;
  a14 = v32;
  sub_1C75504FC();
  OUTLINED_FUNCTION_208();
  sub_1C7018150(&a14, v43, v44, sub_1C7020B60, sub_1C701A4EC);
  v45 = a14;
  a14 = v34;
  sub_1C75504FC();
  sub_1C7018104();
  v46 = a14;
  a14 = v33;
  sub_1C75504FC();
  OUTLINED_FUNCTION_207_0();
  sub_1C7018150(&a14, v47, v48, sub_1C701F010, sub_1C7019F70);
  v49 = a14;
  a14 = v36;
  sub_1C75504FC();
  sub_1C7018104();
  v66 = a14;
  a14 = v35;
  sub_1C75504FC();
  OUTLINED_FUNCTION_206_0();
  sub_1C7017FF8(&a14, v50, sub_1C7422B34, sub_1C70188E8);
  v51 = v49;
  v52 = a14;
  a14 = v38;
  sub_1C75504FC();
  OUTLINED_FUNCTION_205();
  sub_1C7018150(&a14, v53, v54, sub_1C701CE48, sub_1C7019714);
  v55 = v46;
  v56 = a14;
  a14 = v37;
  sub_1C75504FC();
  OUTLINED_FUNCTION_204_0();
  sub_1C7017FF8(&a14, v57, sub_1C7422B04, sub_1C7018584);
  v58 = v45;
  v59 = a14;
  a14 = v67;
  sub_1C75504FC();
  OUTLINED_FUNCTION_203();
  sub_1C7018150(&a14, v60, v61, sub_1C701BF68, sub_1C70190D8);
  v62 = a14;
  a14 = v40;
  sub_1C75504FC();
  OUTLINED_FUNCTION_202();
  sub_1C7018150(&a14, v63, v64, sub_1C701B1A0, sub_1C7018E30);
  v65 = a14;
  *v30 = v68;
  v30[1] = v58;
  v30[2] = v55;
  v30[3] = v51;
  v30[4] = v66;
  v30[5] = v52;
  v30[6] = v56;
  v30[7] = v59;
  v30[8] = v62;
  v30[9] = v65;
  OUTLINED_FUNCTION_13_5();
}

uint64_t sub_1C7017FF8(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(void *))
{
  v7 = OUTLINED_FUNCTION_300();
  v9 = *(v8(v7) - 8);
  v10 = *v4;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v10 = a3(v10);
  }

  v11 = *(v10 + 16);
  v13[0] = v10 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
  v13[1] = v11;
  result = a4(v13);
  *v4 = v10;
  return result;
}

uint64_t sub_1C70180B8()
{
  if ((OUTLINED_FUNCTION_592() & 1) == 0)
  {
    sub_1C7422B64();
    v1 = v2;
  }

  OUTLINED_FUNCTION_438();
  result = sub_1C7018ABC();
  *v0 = v1;
  return result;
}

uint64_t sub_1C7018104()
{
  if ((OUTLINED_FUNCTION_592() & 1) == 0)
  {
    sub_1C7422B64();
    v1 = v2;
  }

  OUTLINED_FUNCTION_438();
  result = sub_1C7018B74();
  *v0 = v1;
  return result;
}

uint64_t sub_1C7018150(uint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3, void (*a4)(void *, _BYTE *, uint64_t, uint64_t), uint64_t (*a5)(void))
{
  v10 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v10 = a2(v10);
  }

  v11 = *(v10 + 16);
  v13[0] = v10 + 32;
  v13[1] = v11;
  result = sub_1C70182E8(v13, a3, a4, a5);
  *a1 = v10;
  return result;
}

unint64_t sub_1C70181EC()
{
  result = qword_1EDD0E940;
  if (!qword_1EDD0E940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD0E940);
  }

  return result;
}

unint64_t sub_1C7018240()
{
  result = qword_1EDD0E910;
  if (!qword_1EDD0E910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD0E910);
  }

  return result;
}

unint64_t sub_1C7018294()
{
  result = qword_1EDD0E928;
  if (!qword_1EDD0E928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD0E928);
  }

  return result;
}

uint64_t sub_1C70182E8(uint64_t a1, uint64_t a2, void (*a3)(void *, _BYTE *, uint64_t, uint64_t), uint64_t (*a4)(void))
{
  v7 = *(a1 + 8);
  result = sub_1C7551D7C();
  if (result < v7)
  {
    if (v7 >= -1)
    {
      v9 = result;
      v10 = v7 / 2;
      if (v7 <= 1)
      {
        v11 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        OUTLINED_FUNCTION_98_1();
        v11 = sub_1C7550BBC();
        *(v11 + 16) = v10;
      }

      v12[0] = v11 + 32;
      v12[1] = v10;
      a3(v12, v13, a1, v9);
      *(v11 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v7 < 0)
  {
    goto LABEL_12;
  }

  if (v7)
  {
    OUTLINED_FUNCTION_417();
    return a4();
  }

  return result;
}

uint64_t sub_1C7018ABC()
{
  result = OUTLINED_FUNCTION_589();
  if (result < v0)
  {
    if (v0 >= -1)
    {
      OUTLINED_FUNCTION_506();
      if (v4 ^ v5 | v3)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v6 = sub_1C7550BBC();
        *(v6 + 16) = v1;
      }

      OUTLINED_FUNCTION_334();
      sub_1C701F574(v11, v12, v13, v14, v15, v16, v17, v18, v19, v20);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v0 < 0)
  {
    goto LABEL_12;
  }

  if (v0)
  {
    OUTLINED_FUNCTION_417();
    return sub_1C701A064(v7, v8, v9, v10);
  }

  return result;
}

uint64_t sub_1C7018B74()
{
  result = OUTLINED_FUNCTION_589();
  if (result < v0)
  {
    if (v0 >= -1)
    {
      OUTLINED_FUNCTION_506();
      if (v4 ^ v5 | v3)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v6 = sub_1C7550BBC();
        *(v6 + 16) = v1;
      }

      OUTLINED_FUNCTION_334();
      sub_1C701FD8C(v11, v12, v13, v14);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v0 < 0)
  {
    goto LABEL_12;
  }

  if (v0)
  {
    OUTLINED_FUNCTION_417();
    return sub_1C701A224(v7, v8, v9, v10);
  }

  return result;
}

uint64_t sub_1C7018C2C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v12 = *a4;
    v4 = (*a4 + 40 * a3 - 40);
    v5 = result - a3;
    do
    {
      v11 = a3;
      v6 = (v12 + 40 * a3);
      v7 = *v6;
      v8 = v6[1];
      v9 = v4[1];
      v13 = *v4;
      sub_1C75504FC();
      sub_1C75504FC();
      sub_1C75504FC();
      sub_1C75504FC();
      MEMORY[0x1CCA5CD70](v7, v8);
      MEMORY[0x1CCA5CD70](v13, v9);

      a3 = v11 + 1;
      v4 += 5;
      --v5;
    }

    while (v11 + 1 != a2);
  }

  return result;
}

uint64_t sub_1C7018E30(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 40 * a3 - 40;
    v8 = result - a3;
    while (2)
    {
      v9 = (v6 + 40 * v4);
      result = *v9;
      v10 = v9[1];
      v11 = v8;
      v12 = v7;
      do
      {
        if (result == *v12 && v10 == *(v12 + 8))
        {
          break;
        }

        result = sub_1C7551DBC();
        if ((result & 1) == 0)
        {
          break;
        }

        if (!v6)
        {
          __break(1u);
          return result;
        }

        v10 = *(v12 + 48);
        v14 = *(v12 + 56);
        v15 = *(v12 + 16);
        v16 = *(v12 + 32);
        result = *(v12 + 40);
        *(v12 + 40) = *v12;
        v17 = *(v12 + 64);
        v18 = *(v12 + 65);
        v19 = *(v12 + 72);
        *(v12 + 56) = v15;
        *(v12 + 72) = v16;
        *v12 = result;
        *(v12 + 8) = v10;
        *(v12 + 16) = v14;
        *(v12 + 24) = v17;
        *(v12 + 25) = v18;
        *(v12 + 32) = v19;
        v12 -= 40;
      }

      while (!__CFADD__(v11++, 1));
      ++v4;
      v7 += 40;
      --v8;
      if (v4 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

uint64_t sub_1C7018F24(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v39 = *a4;
    v4 = (v39 + (a3 << 6));
    v5 = result - a3 + 1;
    while (2)
    {
      v27 = v4;
      v28 = a3;
      v26 = v5;
      while (1)
      {
        v6 = *v4;
        v7 = v4[1];
        v8 = v4[3];
        v34 = v4[2];
        v35 = v8;
        v33[0] = v6;
        v33[1] = v7;
        v9 = *(v4 - 4);
        v10 = *(v4 - 3);
        v11 = *(v4 - 1);
        v37 = *(v4 - 2);
        v38 = v11;
        v36[0] = v9;
        v36[1] = v10;
        v12 = v34;
        v13 = v37;
        v31 = 0x3A70697254;
        v32 = 0xE500000000000000;
        sub_1C7026698(v33, &v29);
        sub_1C7026698(v36, &v29);
        MEMORY[0x1CCA5CD70](v12, *(&v12 + 1));
        v15 = v31;
        v14 = v32;
        v29 = 0x3A70697254;
        v30 = 0xE500000000000000;
        MEMORY[0x1CCA5CD70](v13, *(&v13 + 1));
        if (v15 == v29 && v14 == v30)
        {
          break;
        }

        v17 = sub_1C7551DBC();

        sub_1C70266D0(v36);
        result = sub_1C70266D0(v33);
        if ((v17 & 1) == 0)
        {
          goto LABEL_13;
        }

        if (!v39)
        {
          __break(1u);
          return result;
        }

        v18 = v4 - 4;
        v20 = v4[2];
        v19 = v4[3];
        v22 = *v4;
        v21 = v4[1];
        v23 = *(v4 - 3);
        *v4 = *(v4 - 4);
        v4[1] = v23;
        v24 = *(v4 - 1);
        v4[2] = *(v4 - 2);
        v4[3] = v24;
        *v18 = v22;
        v18[1] = v21;
        v18[2] = v20;
        v18[3] = v19;
        if (!v5)
        {
          goto LABEL_13;
        }

        ++v5;
        v4 -= 4;
      }

      sub_1C70266D0(v36);
      result = sub_1C70266D0(v33);
LABEL_13:
      a3 = v28 + 1;
      v4 = v27 + 4;
      v5 = v26 - 1;
      if (v28 + 1 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

uint64_t sub_1C70190D8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = (*a4 + (a3 << 6));
    v8 = result - a3;
    while (2)
    {
      v9 = v8;
      v10 = v7;
      do
      {
        result = *v10;
        v11 = v10 - 4;
        if (*v10 == *(v10 - 8) && *(v10 + 1) == *(v10 - 7))
        {
          break;
        }

        result = sub_1C7551DBC();
        if ((result & 1) == 0)
        {
          break;
        }

        if (!v6)
        {
          __break(1u);
          return result;
        }

        v14 = v10[2];
        v13 = v10[3];
        v16 = *v10;
        v15 = v10[1];
        v17 = *(v10 - 3);
        *v10 = *v11;
        v10[1] = v17;
        v18 = *(v10 - 1);
        v10[2] = *(v10 - 2);
        v10[3] = v18;
        *v11 = v16;
        *(v10 - 3) = v15;
        v10 -= 4;
        v11[2] = v14;
        v11[3] = v13;
      }

      while (!__CFADD__(v9++, 1));
      ++v4;
      v7 += 4;
      --v8;
      if (v4 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_1C70191B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v39 = type metadata accessor for PartOfWeekExtendedToken(0);
  MEMORY[0x1EEE9AC00](v39);
  v36 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = (&v27 - v10);
  MEMORY[0x1EEE9AC00](v12);
  v15 = (&v27 - v14);
  v29 = a2;
  if (a3 != a2)
  {
    v16 = *a4;
    v17 = *(v13 + 72);
    v18 = *a4 + v17 * (a3 - 1);
    v34 = -v17;
    v35 = v16;
    v19 = a1 - a3;
    v28 = v17;
    v20 = v16 + v17 * a3;
    while (2)
    {
      v32 = v18;
      v33 = a3;
      v30 = v20;
      v31 = v19;
      v21 = v18;
      while (1)
      {
        sub_1C702659C();
        sub_1C702659C();
        v37 = 0x6557664F74726150;
        v38 = 0xEB000000003A6B65;
        MEMORY[0x1CCA5CD70](*v15, v15[1]);
        v22 = v37;
        v23 = v38;
        v37 = 0x6557664F74726150;
        v38 = 0xEB000000003A6B65;
        MEMORY[0x1CCA5CD70](*v11, v11[1]);
        if (v22 == v37 && v23 == v38)
        {
          break;
        }

        v25 = sub_1C7551DBC();

        sub_1C70265F0();
        sub_1C70265F0();
        if (v25)
        {
          if (!v35)
          {
            __break(1u);
            return;
          }

          sub_1C70267FC();
          swift_arrayInitWithTakeFrontToBack();
          sub_1C70267FC();
          v21 += v34;
          v20 += v34;
          if (!__CFADD__(v19++, 1))
          {
            continue;
          }
        }

        goto LABEL_14;
      }

      sub_1C70265F0();
      sub_1C70265F0();
LABEL_14:
      a3 = v33 + 1;
      v18 = v32 + v28;
      v19 = v31 - 1;
      v20 = v30 + v28;
      if (v33 + 1 != v29)
      {
        continue;
      }

      break;
    }
  }
}

uint64_t sub_1C70194C4(uint64_t result, uint64_t a2, uint64_t a3, void *a4)
{
  if (a3 != a2)
  {
    v4 = (*a4 + 56 * a3 - 56);
    v5 = result - a3;
    do
    {
      v11 = a3;
      v10 = v5;
      v6 = v4[7];
      v7 = v4[8];
      v8 = v4[1];
      v12 = *v4;
      sub_1C75504FC();
      sub_1C75504FC();
      sub_1C75504FC();
      sub_1C75504FC();
      sub_1C75504FC();
      sub_1C75504FC();
      MEMORY[0x1CCA5CD70](v6, v7);
      MEMORY[0x1CCA5CD70](v12, v8);

      a3 = v11 + 1;
      v4 += 7;
      v5 = v10 - 1;
    }

    while (v11 + 1 != a2);
  }

  return result;
}

uint64_t sub_1C7019714(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 56 * a3 - 56;
    v8 = result - a3;
    while (2)
    {
      v9 = v8;
      v10 = v7;
      do
      {
        v11 = v10 + 56;
        result = *(v10 + 56);
        if (result == *v10 && *(v10 + 64) == *(v10 + 8))
        {
          break;
        }

        result = sub_1C7551DBC();
        if ((result & 1) == 0)
        {
          break;
        }

        if (!v6)
        {
          __break(1u);
          return result;
        }

        v13 = *(v10 + 56);
        v14 = *(v10 + 72);
        v15 = *(v10 + 80);
        v16 = *(v10 + 88);
        v17 = *(v10 + 96);
        v18 = *(v10 + 104);
        v19 = *(v10 + 16);
        *v11 = *v10;
        *(v10 + 72) = v19;
        *(v10 + 88) = *(v10 + 32);
        v20 = *(v10 + 48);
        *v10 = v13;
        *(v10 + 16) = v14;
        *(v10 + 24) = v15;
        *(v10 + 32) = v16;
        *(v10 + 40) = v17;
        *(v10 + 48) = v18;
        v10 -= 56;
        *(v11 + 48) = v20;
      }

      while (!__CFADD__(v9++, 1));
      ++v4;
      v7 += 56;
      --v8;
      if (v4 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_1C7019814(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v39 = type metadata accessor for TimeExtendedToken(0);
  MEMORY[0x1EEE9AC00](v39);
  v36 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = (&v27 - v10);
  MEMORY[0x1EEE9AC00](v12);
  v15 = (&v27 - v14);
  v29 = a2;
  if (a3 != a2)
  {
    v16 = *a4;
    v17 = *(v13 + 72);
    v18 = *a4 + v17 * (a3 - 1);
    v34 = -v17;
    v35 = v16;
    v19 = a1 - a3;
    v28 = v17;
    v20 = v16 + v17 * a3;
    while (2)
    {
      v32 = v18;
      v33 = a3;
      v30 = v20;
      v31 = v19;
      v21 = v18;
      while (1)
      {
        sub_1C702659C();
        sub_1C702659C();
        v37 = 0x3A656D6954;
        v38 = 0xE500000000000000;
        MEMORY[0x1CCA5CD70](*v15, v15[1]);
        v22 = v37;
        v23 = v38;
        v37 = 0x3A656D6954;
        v38 = 0xE500000000000000;
        MEMORY[0x1CCA5CD70](*v11, v11[1]);
        if (v22 == v37 && v23 == v38)
        {
          break;
        }

        v25 = sub_1C7551DBC();

        sub_1C70265F0();
        sub_1C70265F0();
        if (v25)
        {
          if (!v35)
          {
            __break(1u);
            return;
          }

          sub_1C70267FC();
          swift_arrayInitWithTakeFrontToBack();
          sub_1C70267FC();
          v21 += v34;
          v20 += v34;
          if (!__CFADD__(v19++, 1))
          {
            continue;
          }
        }

        goto LABEL_14;
      }

      sub_1C70265F0();
      sub_1C70265F0();
LABEL_14:
      a3 = v33 + 1;
      v18 = v32 + v28;
      v19 = v31 - 1;
      v20 = v30 + v28;
      if (v33 + 1 != v29)
      {
        continue;
      }

      break;
    }
  }
}

void sub_1C7019B08()
{
  OUTLINED_FUNCTION_124();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v34 = v8(0);
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_392();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v26[-v10];
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v26[-v14];
  v28 = v5;
  if (v3 != v5)
  {
    v16 = *v1;
    v17 = *(v13 + 72);
    v18 = *v1 + v17 * (v3 - 1);
    v19 = -v17;
    v20 = v7 - v3;
    v33 = v16;
    v27 = v17;
    v21 = v16 + v17 * v3;
    while (2)
    {
      v31 = v18;
      v32 = v3;
      v29 = v21;
      v30 = v20;
      v22 = v20;
      while (1)
      {
        sub_1C702659C();
        OUTLINED_FUNCTION_249();
        sub_1C702659C();
        if (*v15 == *v11 && v15[1] == v11[1])
        {
          break;
        }

        v24 = sub_1C7551DBC();
        OUTLINED_FUNCTION_423();
        sub_1C70265F0();
        sub_1C70265F0();
        if (v24)
        {
          if (!v33)
          {
            __break(1u);
            return;
          }

          sub_1C70267FC();
          swift_arrayInitWithTakeFrontToBack();
          OUTLINED_FUNCTION_180();
          sub_1C70267FC();
          v18 += v19;
          v21 += v19;
          if (!__CFADD__(v22++, 1))
          {
            continue;
          }
        }

        goto LABEL_14;
      }

      OUTLINED_FUNCTION_423();
      sub_1C70265F0();
      sub_1C70265F0();
LABEL_14:
      v3 = v32 + 1;
      v18 = v31 + v27;
      v20 = v30 - 1;
      v21 = v29 + v27;
      if (v32 + 1 != v28)
      {
        continue;
      }

      break;
    }
  }

  OUTLINED_FUNCTION_125();
}

uint64_t sub_1C7019D2C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v13 = *a4;
    v4 = (*a4 + 40 * a3 - 40);
    v5 = result - a3;
    do
    {
      v12 = a3;
      v6 = (v13 + 40 * a3);
      v8 = *v6;
      v7 = v6[1];
      v11 = v5;
      v9 = v4[1];
      v14 = *v4;
      sub_1C75504FC();
      sub_1C75504FC();
      sub_1C75504FC();
      sub_1C75504FC();
      sub_1C755180C();

      MEMORY[0x1CCA5CD70](v8, v7);
      sub_1C755180C();

      MEMORY[0x1CCA5CD70](v14, v9);

      a3 = v12 + 1;
      v4 += 5;
      v5 = v11 - 1;
    }

    while (v12 + 1 != a2);
  }

  return result;
}

uint64_t sub_1C7019F70(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 40 * a3 - 40;
    v8 = result - a3;
    while (2)
    {
      v9 = (v6 + 40 * v4);
      result = *v9;
      v10 = v9[1];
      v11 = v8;
      v12 = v7;
      do
      {
        if (result == *v12 && v10 == *(v12 + 8))
        {
          break;
        }

        result = sub_1C7551DBC();
        if ((result & 1) == 0)
        {
          break;
        }

        if (!v6)
        {
          __break(1u);
          return result;
        }

        v10 = *(v12 + 48);
        v14 = *(v12 + 56);
        v15 = *(v12 + 16);
        v16 = *(v12 + 32);
        result = *(v12 + 40);
        *(v12 + 40) = *v12;
        v17 = *(v12 + 64);
        v18 = *(v12 + 65);
        v19 = *(v12 + 72);
        *(v12 + 56) = v15;
        *(v12 + 72) = v16;
        *v12 = result;
        *(v12 + 8) = v10;
        *(v12 + 16) = v14;
        *(v12 + 24) = v17;
        *(v12 + 25) = v18;
        *(v12 + 32) = v19;
        v12 -= 40;
      }

      while (!__CFADD__(v11++, 1));
      ++v4;
      v7 += 40;
      --v8;
      if (v4 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

uint64_t sub_1C701A064(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v38 = *a4;
    v4 = (v38 + 56 * a3);
    v5 = result - a3 + 1;
    while (2)
    {
      v28 = v4;
      v29 = a3;
      v27 = v5;
      while (1)
      {
        v6 = OUTLINED_FUNCTION_272();
        v35 = v7;
        v34[1] = v8;
        v34[2] = v9;
        v34[0] = v6;
        v10 = OUTLINED_FUNCTION_574();
        v37 = v11;
        v36[1] = v12;
        v36[2] = v13;
        v36[0] = v10;
        v32 = 0x6E6F697461636F4CLL;
        v33 = 0xE90000000000003ALL;
        sub_1C70260B4(v34, &v30);
        sub_1C70260B4(v36, &v30);
        v14 = OUTLINED_FUNCTION_55();
        MEMORY[0x1CCA5CD70](v14);
        v16 = v32;
        v15 = v33;
        v30 = 0x6E6F697461636F4CLL;
        v31 = 0xE90000000000003ALL;
        v17 = OUTLINED_FUNCTION_323();
        MEMORY[0x1CCA5CD70](v17);
        if (v16 == v30 && v15 == v31)
        {
          break;
        }

        v19 = OUTLINED_FUNCTION_385();

        sub_1C70260EC(v36);
        result = sub_1C70260EC(v34);
        if ((v19 & 1) == 0)
        {
          goto LABEL_13;
        }

        if (!v38)
        {
          __break(1u);
          return result;
        }

        v20 = v4 - 56;
        v21 = *(v4 + 6);
        v23 = v4[1];
        v22 = v4[2];
        v24 = *v4;
        v25 = *(v4 - 40);
        *v4 = *(v4 - 56);
        v4[1] = v25;
        v4[2] = *(v4 - 24);
        *(v4 + 6) = *(v4 - 1);
        *v20 = v24;
        *(v20 + 16) = v23;
        *(v20 + 32) = v22;
        *(v20 + 48) = v21;
        if (!v5)
        {
          goto LABEL_13;
        }

        ++v5;
        v4 = (v4 - 56);
      }

      sub_1C70260EC(v36);
      result = sub_1C70260EC(v34);
LABEL_13:
      a3 = v29 + 1;
      v4 = (v28 + 56);
      v5 = v27 - 1;
      if (v29 + 1 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

uint64_t sub_1C701A224(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 56 * a3;
    v8 = result - a3;
    while (2)
    {
      v9 = v8;
      v10 = v7;
      do
      {
        result = *v10;
        v11 = v10 - 56;
        if (*v10 == *(v10 - 56) && *(v10 + 8) == *(v10 - 48))
        {
          break;
        }

        result = sub_1C7551DBC();
        if ((result & 1) == 0)
        {
          break;
        }

        if (!v6)
        {
          __break(1u);
          return result;
        }

        v13 = *(v10 + 48);
        v15 = *(v10 + 16);
        v14 = *(v10 + 32);
        v16 = *v10;
        v17 = *(v10 - 40);
        *v10 = *v11;
        *(v10 + 16) = v17;
        *(v10 + 32) = *(v10 - 24);
        *(v10 + 48) = *(v10 - 8);
        *v11 = v16;
        *(v10 - 40) = v15;
        *(v10 - 24) = v14;
        v10 -= 56;
        *(v11 + 48) = v13;
      }

      while (!__CFADD__(v9++, 1));
      ++v4;
      v7 += 56;
      --v8;
      if (v4 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

uint64_t sub_1C701A318(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v18 = *a4;
    v4 = (*a4 + 72 * a3);
    v5 = result - a3 + 1;
    while (2)
    {
      v17 = a3;
      v24 = v5;
      v16 = v4;
      while (1)
      {
        memcpy(__dst, v4, 0x42uLL);
        memcpy(v23, v4 - 72, 0x42uLL);
        v6 = __dst[4];
        v7 = __dst[5];
        v9 = v23[4];
        v8 = v23[5];
        v20 = 980706640;
        v21 = 0xE400000000000000;
        sub_1C7025FF8(__dst, __src);
        sub_1C7025FF8(v23, __src);
        MEMORY[0x1CCA5CD70](v6, v7);
        v11 = v20;
        v10 = v21;
        __src[0] = 980706640;
        __src[1] = 0xE400000000000000;
        MEMORY[0x1CCA5CD70](v9, v8);
        if (v11 == __src[0] && v10 == __src[1])
        {
          break;
        }

        v13 = sub_1C7551DBC();

        sub_1C7026030(v23);
        result = sub_1C7026030(__dst);
        v14 = v24;
        if ((v13 & 1) == 0)
        {
          goto LABEL_13;
        }

        if (!v18)
        {
          __break(1u);
          return result;
        }

        memcpy(__src, v4, 0x42uLL);
        memcpy(v4, v4 - 72, 0x48uLL);
        result = memcpy(v4 - 72, __src, 0x42uLL);
        if (!v14)
        {
          goto LABEL_13;
        }

        v24 = v14 + 1;
        v4 -= 72;
      }

      sub_1C7026030(v23);
      result = sub_1C7026030(__dst);
LABEL_13:
      a3 = v17 + 1;
      v4 = v16 + 72;
      --v5;
      if (v17 + 1 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

uint64_t sub_1C701A4EC(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 72 * a3;
    v8 = result - a3;
    while (2)
    {
      v9 = v8;
      v10 = v7;
      do
      {
        result = *v10;
        if (*v10 == *(v10 - 9) && v10[1] == *(v10 - 8))
        {
          break;
        }

        result = sub_1C7551DBC();
        if ((result & 1) == 0)
        {
          break;
        }

        if (!v6)
        {
          __break(1u);
          return result;
        }

        memcpy(__dst, v10, sizeof(__dst));
        memcpy(v10, v10 - 9, 0x48uLL);
        result = memcpy(v10 - 9, __dst, 0x42uLL);
        v10 -= 9;
      }

      while (!__CFADD__(v9++, 1));
      ++v4;
      v7 += 72;
      --v8;
      if (v4 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

uint64_t sub_1C701A5E0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v18 = *a4;
    v4 = (*a4 + 72 * a3);
    v5 = result - a3 + 1;
    while (2)
    {
      v17 = a3;
      v24 = v5;
      v16 = v4;
      while (1)
      {
        memcpy(__dst, v4, 0x41uLL);
        memcpy(v23, v4 - 72, 0x41uLL);
        v6 = __dst[4];
        v7 = __dst[5];
        v9 = v23[4];
        v8 = v23[5];
        v20 = 0x3A6E6F73726550;
        v21 = 0xE700000000000000;
        sub_1C7025F3C(__dst, __src);
        sub_1C7025F3C(v23, __src);
        MEMORY[0x1CCA5CD70](v6, v7);
        v11 = v20;
        v10 = v21;
        __src[0] = 0x3A6E6F73726550;
        __src[1] = 0xE700000000000000;
        MEMORY[0x1CCA5CD70](v9, v8);
        if (v11 == __src[0] && v10 == __src[1])
        {
          break;
        }

        v13 = sub_1C7551DBC();

        sub_1C7025F74(v23);
        result = sub_1C7025F74(__dst);
        v14 = v24;
        if ((v13 & 1) == 0)
        {
          goto LABEL_13;
        }

        if (!v18)
        {
          __break(1u);
          return result;
        }

        memcpy(__src, v4, 0x41uLL);
        memcpy(v4, v4 - 72, 0x48uLL);
        result = memcpy(v4 - 72, __src, 0x41uLL);
        if (!v14)
        {
          goto LABEL_13;
        }

        v24 = v14 + 1;
        v4 -= 72;
      }

      sub_1C7025F74(v23);
      result = sub_1C7025F74(__dst);
LABEL_13:
      a3 = v17 + 1;
      v4 = v16 + 72;
      --v5;
      if (v17 + 1 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

uint64_t sub_1C701A7BC(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 72 * a3;
    v8 = result - a3;
    while (2)
    {
      v9 = v8;
      v10 = v7;
      do
      {
        result = *v10;
        if (*v10 == *(v10 - 9) && v10[1] == *(v10 - 8))
        {
          break;
        }

        result = sub_1C7551DBC();
        if ((result & 1) == 0)
        {
          break;
        }

        if (!v6)
        {
          __break(1u);
          return result;
        }

        memcpy(__dst, v10, sizeof(__dst));
        memcpy(v10, v10 - 9, 0x48uLL);
        result = memcpy(v10 - 9, __dst, 0x41uLL);
        v10 -= 9;
      }

      while (!__CFADD__(v9++, 1));
      ++v4;
      v7 += 72;
      --v8;
      if (v4 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_1C701A8B0(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v4 = a3[1];
  if (v4 < 1)
  {
    v6 = MEMORY[0x1E69E7CC0];
LABEL_71:
    v97 = *a1;
    if (!*a1)
    {
      goto LABEL_110;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_73:
      v78 = v6 + 16;
      v79 = *(v6 + 2);
      while (v79 >= 2)
      {
        if (!*a3)
        {
          goto LABEL_108;
        }

        v80 = v6;
        v81 = &v6[16 * v79];
        v82 = *v81;
        v83 = &v78[2 * v79];
        v84 = *(v83 + 1);
        sub_1C702250C((*a3 + 40 * *v81), (*a3 + 40 * *v83), *a3 + 40 * v84, v97);
        if (v95)
        {
          break;
        }

        if (v84 < v82)
        {
          goto LABEL_98;
        }

        if (v79 - 2 >= *v78)
        {
          goto LABEL_99;
        }

        *v81 = v82;
        *(v81 + 1) = v84;
        v85 = *v78 - v79;
        if (*v78 < v79)
        {
          goto LABEL_100;
        }

        v95 = 0;
        v79 = *v78 - 1;
        sub_1C7423CF4(v83 + 16, v85, v83);
        *v78 = v79;
        v6 = v80;
      }

LABEL_81:

      return;
    }

LABEL_106:
    v6 = sub_1C7420830();
    goto LABEL_73;
  }

  v5 = 0;
  v6 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v7 = v5;
    v8 = v5 + 1;
    v90 = v6;
    if (v5 + 1 < v4)
    {
      v89 = v4;
      v9 = *a3;
      v92 = v5 + 1;
      v10 = (*a3 + 40 * v8);
      v11 = *v10;
      v12 = v10[1];
      v13 = (*a3 + 40 * v7);
      v14 = *v13;
      v15 = v13[1];
      v97 = v13[4];
      sub_1C75504FC();
      sub_1C75504FC();
      sub_1C75504FC();
      sub_1C75504FC();
      MEMORY[0x1CCA5CD70](v11, v12);
      MEMORY[0x1CCA5CD70](v14, v15);

      v16 = 0;
      v17 = (v7 + 2);
      v18 = v9 + 40 * v7 + 72;
      v6 = v90;
      v19 = v92;
      while (1)
      {
        v8 = v17;
        v20 = v19;
        v21 = v16;
        if (v17 >= v89)
        {
          break;
        }

        v97 = v17;
        v22 = *(v18 + 8);
        v23 = *(v18 + 16);
        v24 = *(v18 - 32);
        v25 = *(v18 - 24);
        sub_1C75504FC();
        sub_1C75504FC();
        sub_1C75504FC();
        sub_1C75504FC();
        MEMORY[0x1CCA5CD70](v22, v23);
        MEMORY[0x1CCA5CD70](v24, v25);

        v17 = v97 + 1;
        v18 += 40;
        v19 = v20 + 1;
        v16 = v21 + 40;
        v6 = v90;
      }
    }

    v26 = a3[1];
    if (v8 < v26)
    {
      if (__OFSUB__(v8, v7))
      {
        goto LABEL_103;
      }

      if (v8 - v7 < a4)
      {
        v27 = v7 + a4;
        if (__OFADD__(v7, a4))
        {
          goto LABEL_104;
        }

        if (v27 >= v26)
        {
          v27 = a3[1];
        }

        if (v27 < v7)
        {
          goto LABEL_105;
        }

        if (v8 != v27)
        {
          v96 = *a3;
          v28 = *a3 + 40 * v8 - 40;
          v88 = v27;
          v29 = v7 - v8;
          do
          {
            v93 = v8;
            v30 = (v96 + 40 * v8);
            v31 = *v30;
            v32 = v30[1];
            v33 = *(v28 + 8);
            v97 = *v28;
            sub_1C75504FC();
            sub_1C75504FC();
            sub_1C75504FC();
            sub_1C75504FC();
            MEMORY[0x1CCA5CD70](v31, v32);
            MEMORY[0x1CCA5CD70](v97, v33);

            ++v8;
            v28 += 40;
            --v29;
          }

          while (v93 + 1 != v88);
          v8 = v88;
          v6 = v90;
        }
      }
    }

    if (v8 < v7)
    {
LABEL_102:
      __break(1u);
LABEL_103:
      __break(1u);
      __break(1u);
LABEL_104:
      __break(1u);
LABEL_105:
      __break(1u);
      goto LABEL_106;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1C6FB17EC();
      v6 = v76;
    }

    v34 = *(v6 + 2);
    v35 = v34 + 1;
    v94 = v8;
    if (v34 >= *(v6 + 3) >> 1)
    {
      sub_1C6FB17EC();
      v6 = v77;
    }

    *(v6 + 2) = v35;
    v36 = v6 + 32;
    v37 = &v6[16 * v34 + 32];
    *v37 = v7;
    *(v37 + 1) = v8;
    v38 = *a1;
    if (!*a1)
    {
      goto LABEL_109;
    }

    if (v34)
    {
      break;
    }

LABEL_67:
    v5 = v94;
    v4 = a3[1];
    if (v94 >= v4)
    {
      goto LABEL_71;
    }
  }

  while (1)
  {
    v39 = v35 - 1;
    v40 = &v36[16 * v35 - 16];
    v41 = &v6[16 * v35];
    if (v35 >= 4)
    {
      v46 = &v36[16 * v35];
      v47 = *(v46 - 8);
      v48 = *(v46 - 7);
      v52 = __OFSUB__(v48, v47);
      v49 = v48 - v47;
      if (v52)
      {
        goto LABEL_87;
      }

      v51 = *(v46 - 6);
      v50 = *(v46 - 5);
      v52 = __OFSUB__(v50, v51);
      v44 = v50 - v51;
      v45 = v52;
      if (v52)
      {
        goto LABEL_88;
      }

      v53 = *(v41 + 1);
      v54 = v53 - *v41;
      if (__OFSUB__(v53, *v41))
      {
        goto LABEL_90;
      }

      v52 = __OFADD__(v44, v54);
      v55 = v44 + v54;
      if (v52)
      {
        goto LABEL_93;
      }

      if (v55 >= v49)
      {
        v69 = *v40;
        v68 = *(v40 + 1);
        v52 = __OFSUB__(v68, v69);
        v70 = v68 - v69;
        if (v52)
        {
          goto LABEL_101;
        }

        if (v44 < v70)
        {
          v39 = v35 - 2;
        }

        goto LABEL_60;
      }

      goto LABEL_38;
    }

    if (v35 == 3)
    {
      v42 = *(v6 + 4);
      v43 = *(v6 + 5);
      v52 = __OFSUB__(v43, v42);
      v44 = v43 - v42;
      v45 = v52;
LABEL_38:
      if (v45)
      {
        goto LABEL_89;
      }

      v57 = *v41;
      v56 = *(v41 + 1);
      v58 = __OFSUB__(v56, v57);
      v59 = v56 - v57;
      v60 = v58;
      if (v58)
      {
        goto LABEL_92;
      }

      v61 = *(v40 + 1);
      v62 = v61 - *v40;
      if (__OFSUB__(v61, *v40))
      {
        goto LABEL_95;
      }

      if (__OFADD__(v59, v62))
      {
        goto LABEL_97;
      }

      if (v59 + v62 >= v44)
      {
        if (v44 < v62)
        {
          v39 = v35 - 2;
        }

        goto LABEL_60;
      }

      goto LABEL_53;
    }

    if (v35 < 2)
    {
      goto LABEL_91;
    }

    v64 = *v41;
    v63 = *(v41 + 1);
    v52 = __OFSUB__(v63, v64);
    v59 = v63 - v64;
    v60 = v52;
LABEL_53:
    if (v60)
    {
      goto LABEL_94;
    }

    v66 = *v40;
    v65 = *(v40 + 1);
    v52 = __OFSUB__(v65, v66);
    v67 = v65 - v66;
    if (v52)
    {
      goto LABEL_96;
    }

    if (v67 < v59)
    {
      goto LABEL_67;
    }

LABEL_60:
    if (v39 - 1 >= v35)
    {
      __break(1u);
LABEL_84:
      __break(1u);
LABEL_85:
      __break(1u);
LABEL_86:
      __break(1u);
LABEL_87:
      __break(1u);
LABEL_88:
      __break(1u);
LABEL_89:
      __break(1u);
LABEL_90:
      __break(1u);
LABEL_91:
      __break(1u);
LABEL_92:
      __break(1u);
LABEL_93:
      __break(1u);
LABEL_94:
      __break(1u);
LABEL_95:
      __break(1u);
LABEL_96:
      __break(1u);
LABEL_97:
      __break(1u);
LABEL_98:
      __break(1u);
LABEL_99:
      __break(1u);
LABEL_100:
      __break(1u);
LABEL_101:
      __break(1u);
      goto LABEL_102;
    }

    if (!*a3)
    {
      break;
    }

    v71 = &v36[16 * v39 - 16];
    v72 = *v71;
    v73 = &v36[16 * v39];
    v74 = *(v73 + 1);
    sub_1C702250C((*a3 + 40 * *v71), (*a3 + 40 * *v73), *a3 + 40 * v74, v38);
    if (v95)
    {
      goto LABEL_81;
    }

    if (v74 < v72)
    {
      goto LABEL_84;
    }

    v75 = *(v6 + 2);
    if (v39 > v75)
    {
      goto LABEL_85;
    }

    *v71 = v72;
    *(v71 + 1) = v74;
    if (v39 >= v75)
    {
      goto LABEL_86;
    }

    v95 = 0;
    v35 = v75 - 1;
    sub_1C7423CF4(v73 + 16, v75 - 1 - v39, &v36[16 * v39]);
    *(v6 + 2) = v75 - 1;
    if (v75 <= 2)
    {
      goto LABEL_67;
    }
  }

  __break(1u);
LABEL_108:
  __break(1u);
  __break(1u);
LABEL_109:
  __break(1u);
LABEL_110:
  __break(1u);
}

void sub_1C701B1A0(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v99 = MEMORY[0x1E69E7CC0];
  v5 = a3[1];
  if (v5 >= 1)
  {
    v98 = v4;
    v6 = 0;
    v7 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v8 = v6++;
      if (v6 < v5)
      {
        v9 = *a3;
        v10 = (*a3 + 40 * v6);
        v11 = *v10;
        v12 = v10[1];
        v13 = (*a3 + 40 * v8);
        if (v11 == *v13 && v12 == v13[1])
        {
          v15 = 0;
        }

        else
        {
          v15 = sub_1C7551DBC();
        }

        v6 = v8 + 2;
        v16 = (v9 + 40 * v8 + 88);
        while (v6 < v5)
        {
          if (*(v16 - 1) == *(v16 - 6) && *v16 == *(v16 - 5))
          {
            if (v15)
            {
              goto LABEL_21;
            }
          }

          else if ((v15 ^ sub_1C7551DBC()))
          {
            break;
          }

          ++v6;
          v16 += 5;
        }

        if ((v15 & 1) == 0)
        {
          goto LABEL_28;
        }

LABEL_21:
        if (v6 < v8)
        {
          goto LABEL_122;
        }

        if (v8 < v6)
        {
          v18 = 40 * v6 - 16;
          v19 = 40 * v8 + 32;
          v20 = v6;
          v21 = v8;
          do
          {
            if (v21 != --v20)
            {
              v22 = *a3;
              if (!*a3)
              {
                goto LABEL_127;
              }

              v23 = (v22 + v19);
              v24 = *(v22 + v19 - 32);
              v25 = v22 + v18;
              v26 = *(v23 - 2);
              v27 = *(v23 - 8);
              v28 = *(v23 - 7);
              v29 = *v23;
              v30 = *(v25 + 8);
              v31 = *(v25 - 8);
              *(v23 - 2) = *(v25 - 24);
              *(v23 - 1) = v31;
              *v23 = v30;
              *(v25 - 24) = v24;
              *(v25 - 8) = v26;
              *v25 = v27;
              *(v25 + 1) = v28;
              *(v25 + 8) = v29;
            }

            ++v21;
            v18 -= 40;
            v19 += 40;
          }

          while (v21 < v20);
        }
      }

LABEL_28:
      v32 = a3[1];
      if (v6 < v32)
      {
        if (__OFSUB__(v6, v8))
        {
          goto LABEL_121;
        }

        if (v6 - v8 < a4)
        {
          if (__OFADD__(v8, a4))
          {
            goto LABEL_123;
          }

          if (v8 + a4 >= v32)
          {
            v33 = a3[1];
          }

          else
          {
            v33 = v8 + a4;
          }

          if (v33 < v8)
          {
LABEL_124:
            __break(1u);
LABEL_125:
            __break(1u);
LABEL_126:
            __break(1u);
LABEL_127:
            __break(1u);
LABEL_128:
            __break(1u);
LABEL_129:
            __break(1u);
            return;
          }

          if (v6 != v33)
          {
            v34 = *a3;
            v35 = *a3 + 40 * v6 - 40;
            v36 = v8 - v6;
            do
            {
              v37 = (v34 + 40 * v6);
              v38 = *v37;
              v39 = v37[1];
              v40 = v36;
              v41 = v35;
              do
              {
                v42 = v38 == *v41 && v39 == *(v41 + 8);
                if (v42 || (sub_1C7551DBC() & 1) == 0)
                {
                  break;
                }

                if (!v34)
                {
                  goto LABEL_125;
                }

                v39 = *(v41 + 48);
                v43 = *(v41 + 56);
                v44 = *(v41 + 16);
                v45 = *(v41 + 32);
                v38 = *(v41 + 40);
                *(v41 + 40) = *v41;
                v46 = *(v41 + 64);
                v47 = *(v41 + 65);
                v48 = *(v41 + 72);
                *(v41 + 56) = v44;
                *(v41 + 72) = v45;
                *v41 = v38;
                *(v41 + 8) = v39;
                *(v41 + 16) = v43;
                *(v41 + 24) = v46;
                *(v41 + 25) = v47;
                *(v41 + 32) = v48;
                v41 -= 40;
              }

              while (!__CFADD__(v40++, 1));
              ++v6;
              v35 += 40;
              --v36;
            }

            while (v6 != v33);
            v6 = v33;
          }
        }
      }

      if (v6 < v8)
      {
        goto LABEL_120;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1C6FB17EC();
        v7 = v92;
      }

      v50 = v7[2];
      v51 = v50 + 1;
      if (v50 >= v7[3] >> 1)
      {
        sub_1C6FB17EC();
        v7 = v93;
      }

      v7[2] = v51;
      v52 = v7 + 4;
      v53 = &v7[2 * v50 + 4];
      *v53 = v8;
      v53[1] = v6;
      v96 = *a1;
      if (!*a1)
      {
        goto LABEL_128;
      }

      if (v50)
      {
        while (1)
        {
          v54 = v51 - 1;
          v55 = &v52[2 * v51 - 2];
          v56 = &v7[2 * v51];
          if (v51 >= 4)
          {
            break;
          }

          if (v51 == 3)
          {
            v57 = v7[4];
            v58 = v7[5];
            v67 = __OFSUB__(v58, v57);
            v59 = v58 - v57;
            v60 = v67;
LABEL_69:
            if (v60)
            {
              goto LABEL_110;
            }

            v72 = *v56;
            v71 = v56[1];
            v73 = __OFSUB__(v71, v72);
            v74 = v71 - v72;
            v75 = v73;
            if (v73)
            {
              goto LABEL_113;
            }

            v76 = v55[1];
            v77 = v76 - *v55;
            if (__OFSUB__(v76, *v55))
            {
              goto LABEL_116;
            }

            if (__OFADD__(v74, v77))
            {
              goto LABEL_118;
            }

            if (v74 + v77 >= v59)
            {
              if (v59 < v77)
              {
                v54 = v51 - 2;
              }

              goto LABEL_91;
            }

            goto LABEL_84;
          }

          if (v51 < 2)
          {
            goto LABEL_112;
          }

          v79 = *v56;
          v78 = v56[1];
          v67 = __OFSUB__(v78, v79);
          v74 = v78 - v79;
          v75 = v67;
LABEL_84:
          if (v75)
          {
            goto LABEL_115;
          }

          v81 = *v55;
          v80 = v55[1];
          v67 = __OFSUB__(v80, v81);
          v82 = v80 - v81;
          if (v67)
          {
            goto LABEL_117;
          }

          if (v82 < v74)
          {
            goto LABEL_98;
          }

LABEL_91:
          if (v54 - 1 >= v51)
          {
            __break(1u);
LABEL_105:
            __break(1u);
LABEL_106:
            __break(1u);
LABEL_107:
            __break(1u);
LABEL_108:
            __break(1u);
LABEL_109:
            __break(1u);
LABEL_110:
            __break(1u);
LABEL_111:
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
LABEL_122:
            __break(1u);
LABEL_123:
            __break(1u);
            goto LABEL_124;
          }

          if (!*a3)
          {
            goto LABEL_126;
          }

          v86 = v7;
          v87 = &v52[2 * v54 - 2];
          v88 = *v87;
          v89 = &v52[2 * v54];
          v90 = v89[1];
          sub_1C70228EC((*a3 + 40 * *v87), (*a3 + 40 * *v89), *a3 + 40 * v90, v96);
          if (v98)
          {
            goto LABEL_103;
          }

          if (v90 < v88)
          {
            goto LABEL_105;
          }

          v91 = v86[2];
          if (v54 > v91)
          {
            goto LABEL_106;
          }

          *v87 = v88;
          v87[1] = v90;
          if (v54 >= v91)
          {
            goto LABEL_107;
          }

          v51 = v91 - 1;
          memmove(&v52[2 * v54], v89 + 2, 16 * (v91 - 1 - v54));
          v7 = v86;
          v86[2] = v91 - 1;
          if (v91 <= 2)
          {
            goto LABEL_98;
          }
        }

        v61 = &v52[2 * v51];
        v62 = *(v61 - 8);
        v63 = *(v61 - 7);
        v67 = __OFSUB__(v63, v62);
        v64 = v63 - v62;
        if (v67)
        {
          goto LABEL_108;
        }

        v66 = *(v61 - 6);
        v65 = *(v61 - 5);
        v67 = __OFSUB__(v65, v66);
        v59 = v65 - v66;
        v60 = v67;
        if (v67)
        {
          goto LABEL_109;
        }

        v68 = v56[1];
        v69 = v68 - *v56;
        if (__OFSUB__(v68, *v56))
        {
          goto LABEL_111;
        }

        v67 = __OFADD__(v59, v69);
        v70 = v59 + v69;
        if (v67)
        {
          goto LABEL_114;
        }

        if (v70 >= v64)
        {
          v84 = *v55;
          v83 = v55[1];
          v67 = __OFSUB__(v83, v84);
          v85 = v83 - v84;
          if (v67)
          {
            goto LABEL_119;
          }

          if (v59 < v85)
          {
            v54 = v51 - 2;
          }

          goto LABEL_91;
        }

        goto LABEL_69;
      }

LABEL_98:
      v5 = a3[1];
      if (v6 >= v5)
      {
        v99 = v7;
        break;
      }
    }
  }

  if (!*a1)
  {
    goto LABEL_129;
  }

  sub_1C7021F04(&v99, *a1, a3);
LABEL_103:
}

void sub_1C701B704(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = a3[1];
  if (v5 < 1)
  {
    v7 = MEMORY[0x1E69E7CC0];
LABEL_104:
    v4 = *a1;
    if (!*a1)
    {
      goto LABEL_145;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_106:
      v117 = (v7 + 16);
      for (i = *(v7 + 2); i >= 2; *v117 = i)
      {
        if (!*a3)
        {
          goto LABEL_142;
        }

        v119 = &v7[16 * i];
        v120 = *v119;
        v121 = &v117[2 * i];
        v122 = *(v121 + 1);
        sub_1C7022AB4((*a3 + (*v119 << 6)), (*a3 + (*v121 << 6)), (*a3 + (v122 << 6)), v4);
        if (v135)
        {
          break;
        }

        if (v122 < v120)
        {
          goto LABEL_130;
        }

        if (i - 2 >= *v117)
        {
          goto LABEL_131;
        }

        *v119 = v120;
        *(v119 + 1) = v122;
        v123 = *v117 - i;
        if (*v117 < i)
        {
          goto LABEL_132;
        }

        i = *v117 - 1;
        sub_1C7423CF4(v121 + 16, v123, v121);
      }

LABEL_114:

      return;
    }

LABEL_139:
    v7 = sub_1C7420830();
    goto LABEL_106;
  }

  v6 = 0;
  v7 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v8 = v6;
    v9 = v6 + 1;
    v127 = v6;
    if (v6 + 1 < v5)
    {
      v136 = v5;
      v10 = *a3;
      v11 = (*a3 + (v9 << 6));
      v12 = *v11;
      v13 = v11[1];
      v14 = v11[3];
      v150 = v11[2];
      v151 = v14;
      v148 = v12;
      v149 = v13;
      v15 = (v10 + (v8 << 6));
      v16 = *v15;
      v17 = v15[1];
      v18 = v15[3];
      v154 = v15[2];
      v155 = v18;
      v152 = v16;
      v153 = v17;
      v19 = v150;
      v20 = *(&v154 + 1);
      v4 = v154;
      *&v142[0] = 0x3A70697254;
      *(&v142[0] + 1) = 0xE500000000000000;
      sub_1C7026698(&v148, v145);
      sub_1C7026698(&v152, v145);
      MEMORY[0x1CCA5CD70](v19, *(&v19 + 1));
      v21 = v142[0];
      *&v145[0] = 0x3A70697254;
      *(&v145[0] + 1) = 0xE500000000000000;
      MEMORY[0x1CCA5CD70](v4, v20);
      if (v21 == *&v145[0] && *(&v21 + 1) == *(&v145[0] + 1))
      {
        LODWORD(v156) = 0;
      }

      else
      {
        LODWORD(v156) = sub_1C7551DBC();
      }

      v125 = v7;

      sub_1C70266D0(&v152);
      sub_1C70266D0(&v148);
      v23 = v15 + 8;
      v24 = (v127 << 6) + 64;
      do
      {
        v25 = v9;
        v26 = v24;
        v132 = v9 + 1;
        if (v9 + 1 >= v136)
        {
          break;
        }

        v27 = *v23;
        v28 = v23[1];
        v29 = v23[3];
        v143 = v23[2];
        v144 = v29;
        v142[0] = v27;
        v142[1] = v28;
        v30 = *(v23 - 4);
        v31 = *(v23 - 3);
        v32 = *(v23 - 1);
        v146 = *(v23 - 2);
        v147 = v32;
        v145[0] = v30;
        v145[1] = v31;
        v33 = v143;
        v34 = v146;
        v140 = 0x3A70697254;
        v141 = 0xE500000000000000;
        sub_1C7026698(v142, &v138);
        sub_1C7026698(v145, &v138);
        MEMORY[0x1CCA5CD70](v33, *(&v33 + 1));
        v36 = v140;
        v35 = v141;
        v138 = 0x3A70697254;
        v139 = 0xE500000000000000;
        MEMORY[0x1CCA5CD70](v34, *(&v34 + 1));
        v37 = v36 == v138 && v35 == v139;
        v4 = v37 ? 0 : sub_1C7551DBC();

        sub_1C70266D0(v145);
        sub_1C70266D0(v142);
        v23 += 4;
        ++v9;
        v24 = v26 + 64;
      }

      while (((v156 ^ v4) & 1) == 0);
      if ((v156 & 1) == 0)
      {
        v7 = v125;
        v9 = v132;
LABEL_30:
        v8 = v127;
        goto LABEL_31;
      }

      v9 = v132;
      v38 = v127;
      if (v132 < v127)
      {
        goto LABEL_136;
      }

      if (v127 <= v25)
      {
        v39 = v127 << 6;
        do
        {
          if (v38 != v25)
          {
            v40 = *a3;
            if (!*a3)
            {
              goto LABEL_143;
            }

            v41 = (v40 + v39);
            v42 = (v40 + v26);
            v44 = v41[2];
            v43 = v41[3];
            v46 = *v41;
            v45 = v41[1];
            v47 = v42[3];
            v49 = *v42;
            v48 = v42[1];
            v41[2] = v42[2];
            v41[3] = v47;
            *v41 = v49;
            v41[1] = v48;
            *v42 = v46;
            v42[1] = v45;
            v42[2] = v44;
            v42[3] = v43;
          }

          ++v38;
          v26 -= 64;
          v39 += 64;
        }

        while (v38 < v25--);
        v7 = v125;
        goto LABEL_30;
      }

      v7 = v125;
      v8 = v127;
    }

LABEL_31:
    v51 = a3[1];
    if (v9 < v51)
    {
      if (__OFSUB__(v9, v8))
      {
        goto LABEL_135;
      }

      if (v9 - v8 < a4)
      {
        break;
      }
    }

LABEL_52:
    if (v9 < v8)
    {
      goto LABEL_134;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1C6FB17EC();
      v7 = v115;
    }

    v74 = *(v7 + 2);
    v75 = v74 + 1;
    v134 = v9;
    if (v74 >= *(v7 + 3) >> 1)
    {
      sub_1C6FB17EC();
      v7 = v116;
    }

    *(v7 + 2) = v75;
    v76 = v7 + 32;
    v77 = &v7[16 * v74 + 32];
    *v77 = v127;
    *(v77 + 1) = v134;
    v156 = *a1;
    if (!v156)
    {
      goto LABEL_144;
    }

    if (v74)
    {
      while (1)
      {
        v78 = v75 - 1;
        v79 = &v76[16 * v75 - 16];
        v80 = &v7[16 * v75];
        if (v75 >= 4)
        {
          break;
        }

        if (v75 == 3)
        {
          v81 = *(v7 + 4);
          v82 = *(v7 + 5);
          v91 = __OFSUB__(v82, v81);
          v83 = v82 - v81;
          v84 = v91;
LABEL_72:
          if (v84)
          {
            goto LABEL_121;
          }

          v96 = *v80;
          v95 = *(v80 + 1);
          v97 = __OFSUB__(v95, v96);
          v98 = v95 - v96;
          v99 = v97;
          if (v97)
          {
            goto LABEL_124;
          }

          v100 = *(v79 + 1);
          v101 = v100 - *v79;
          if (__OFSUB__(v100, *v79))
          {
            goto LABEL_127;
          }

          if (__OFADD__(v98, v101))
          {
            goto LABEL_129;
          }

          if (v98 + v101 >= v83)
          {
            if (v83 < v101)
            {
              v78 = v75 - 2;
            }

            goto LABEL_94;
          }

          goto LABEL_87;
        }

        if (v75 < 2)
        {
          goto LABEL_123;
        }

        v103 = *v80;
        v102 = *(v80 + 1);
        v91 = __OFSUB__(v102, v103);
        v98 = v102 - v103;
        v99 = v91;
LABEL_87:
        if (v99)
        {
          goto LABEL_126;
        }

        v105 = *v79;
        v104 = *(v79 + 1);
        v91 = __OFSUB__(v104, v105);
        v106 = v104 - v105;
        if (v91)
        {
          goto LABEL_128;
        }

        if (v106 < v98)
        {
          goto LABEL_101;
        }

LABEL_94:
        if (v78 - 1 >= v75)
        {
          __break(1u);
LABEL_116:
          __break(1u);
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
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
LABEL_137:
          __break(1u);
          goto LABEL_138;
        }

        if (!*a3)
        {
          goto LABEL_141;
        }

        v110 = v7;
        v111 = &v76[16 * v78 - 16];
        v112 = *v111;
        v113 = &v76[16 * v78];
        v114 = *(v113 + 1);
        sub_1C7022AB4((*a3 + (*v111 << 6)), (*a3 + (*v113 << 6)), (*a3 + (v114 << 6)), v156);
        if (v135)
        {
          goto LABEL_114;
        }

        if (v114 < v112)
        {
          goto LABEL_116;
        }

        v4 = *(v110 + 2);
        if (v78 > v4)
        {
          goto LABEL_117;
        }

        *v111 = v112;
        *(v111 + 1) = v114;
        if (v78 >= v4)
        {
          goto LABEL_118;
        }

        v75 = (v4 - 1);
        sub_1C7423CF4(v113 + 16, &v4[-v78 - 1], &v76[16 * v78]);
        v7 = v110;
        *(v110 + 2) = v4 - 1;
        if (v4 <= 2)
        {
          goto LABEL_101;
        }
      }

      v85 = &v76[16 * v75];
      v86 = *(v85 - 8);
      v87 = *(v85 - 7);
      v91 = __OFSUB__(v87, v86);
      v88 = v87 - v86;
      if (v91)
      {
        goto LABEL_119;
      }

      v90 = *(v85 - 6);
      v89 = *(v85 - 5);
      v91 = __OFSUB__(v89, v90);
      v83 = v89 - v90;
      v84 = v91;
      if (v91)
      {
        goto LABEL_120;
      }

      v92 = *(v80 + 1);
      v93 = v92 - *v80;
      if (__OFSUB__(v92, *v80))
      {
        goto LABEL_122;
      }

      v91 = __OFADD__(v83, v93);
      v94 = v83 + v93;
      if (v91)
      {
        goto LABEL_125;
      }

      if (v94 >= v88)
      {
        v108 = *v79;
        v107 = *(v79 + 1);
        v91 = __OFSUB__(v107, v108);
        v109 = v107 - v108;
        if (v91)
        {
          goto LABEL_133;
        }

        if (v83 < v109)
        {
          v78 = v75 - 2;
        }

        goto LABEL_94;
      }

      goto LABEL_72;
    }

LABEL_101:
    v6 = v134;
    v5 = a3[1];
    if (v134 >= v5)
    {
      goto LABEL_104;
    }
  }

  v52 = v8 + a4;
  if (__OFADD__(v8, a4))
  {
    goto LABEL_137;
  }

  if (v52 >= v51)
  {
    v52 = a3[1];
  }

  if (v52 < v8)
  {
LABEL_138:
    __break(1u);
    goto LABEL_139;
  }

  if (v9 == v52)
  {
    goto LABEL_52;
  }

  v137 = *a3;
  v53 = (*a3 + (v9 << 6));
  v54 = (v8 - v9 + 1);
  v128 = v52;
LABEL_40:
  v133 = v9;
  v129 = v54;
  v156 = v54;
  v130 = v53;
  while (1)
  {
    v55 = *v53;
    v56 = v53[1];
    v57 = v53[3];
    v150 = v53[2];
    v151 = v57;
    v148 = v55;
    v149 = v56;
    v58 = *(v53 - 4);
    v59 = *(v53 - 3);
    v60 = *(v53 - 1);
    v154 = *(v53 - 2);
    v155 = v60;
    v152 = v58;
    v153 = v59;
    v61 = v150;
    v4 = *(&v154 + 1);
    v62 = v154;
    *&v142[0] = 0x3A70697254;
    *(&v142[0] + 1) = 0xE500000000000000;
    sub_1C7026698(&v148, v145);
    sub_1C7026698(&v152, v145);
    MEMORY[0x1CCA5CD70](v61, *(&v61 + 1));
    v63 = v142[0];
    *&v145[0] = 0x3A70697254;
    *(&v145[0] + 1) = 0xE500000000000000;
    MEMORY[0x1CCA5CD70](v62, v4);
    if (v63 == *&v145[0] && *(&v63 + 1) == *(&v145[0] + 1))
    {

      sub_1C70266D0(&v152);
      sub_1C70266D0(&v148);
LABEL_50:
      v9 = v133 + 1;
      v53 = v130 + 4;
      v54 = v129 - 1;
      if (v133 + 1 == v128)
      {
        v9 = v128;
        v8 = v127;
        goto LABEL_52;
      }

      goto LABEL_40;
    }

    v65 = sub_1C7551DBC();

    sub_1C70266D0(&v152);
    sub_1C70266D0(&v148);
    v66 = v156;
    if ((v65 & 1) == 0)
    {
      goto LABEL_50;
    }

    if (!v137)
    {
      break;
    }

    v67 = v53 - 4;
    v69 = v53[2];
    v68 = v53[3];
    v71 = *v53;
    v70 = v53[1];
    v72 = *(v53 - 3);
    *v53 = *(v53 - 4);
    v53[1] = v72;
    v73 = *(v53 - 1);
    v53[2] = *(v53 - 2);
    v53[3] = v73;
    *v67 = v71;
    v67[1] = v70;
    v67[2] = v69;
    v67[3] = v68;
    if (!v66)
    {
      goto LABEL_50;
    }

    v156 = v66 + 1;
    v53 -= 4;
  }

  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
LABEL_144:
  __break(1u);
LABEL_145:
  __break(1u);
}

void sub_1C701BF68(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v100 = MEMORY[0x1E69E7CC0];
  v6 = a3[1];
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v9 = v7;
      v10 = v7 + 1;
      if (v7 + 1 < v6)
      {
        v11 = (*a3 + (v10 << 6));
        v12 = (*a3 + (v7 << 6));
        if (*v11 == *v12 && v11[1] == v12[1])
        {
          v14 = 0;
        }

        else
        {
          v14 = sub_1C7551DBC();
        }

        v10 = v9 + 2;
        v15 = v9 << 6;
        v16 = v12 + 17;
        while (v10 < v6)
        {
          if (*(v16 - 1) == *(v16 - 9) && *v16 == *(v16 - 8))
          {
            if (v14)
            {
              goto LABEL_21;
            }
          }

          else if ((v14 ^ sub_1C7551DBC()))
          {
            break;
          }

          ++v10;
          v16 += 8;
        }

        if ((v14 & 1) == 0)
        {
          goto LABEL_28;
        }

LABEL_21:
        if (v10 < v9)
        {
          goto LABEL_121;
        }

        if (v9 < v10)
        {
          v18 = (v10 << 6) - 64;
          v19 = v10;
          v20 = v9;
          do
          {
            if (v20 != --v19)
            {
              v21 = *a3;
              if (!*a3)
              {
                goto LABEL_126;
              }

              v22 = (v21 + v15);
              v23 = (v21 + v18);
              v25 = v22[2];
              v24 = v22[3];
              v27 = *v22;
              v26 = v22[1];
              v28 = v23[3];
              v30 = *v23;
              v29 = v23[1];
              v22[2] = v23[2];
              v22[3] = v28;
              *v22 = v30;
              v22[1] = v29;
              *v23 = v27;
              v23[1] = v26;
              v23[2] = v25;
              v23[3] = v24;
            }

            ++v20;
            v18 -= 64;
            v15 += 64;
          }

          while (v20 < v19);
        }
      }

LABEL_28:
      v31 = a3[1];
      if (v10 < v31)
      {
        if (__OFSUB__(v10, v9))
        {
          goto LABEL_120;
        }

        if (v10 - v9 < a4)
        {
          if (__OFADD__(v9, a4))
          {
            goto LABEL_122;
          }

          if (v9 + a4 >= v31)
          {
            v32 = a3[1];
          }

          else
          {
            v32 = v9 + a4;
          }

          if (v32 < v9)
          {
LABEL_123:
            __break(1u);
LABEL_124:
            __break(1u);
LABEL_125:
            __break(1u);
LABEL_126:
            __break(1u);
LABEL_127:
            __break(1u);
LABEL_128:
            __break(1u);
            return;
          }

          if (v10 != v32)
          {
            v95 = v5;
            v97 = v9;
            v33 = *a3;
            v34 = *a3 + (v10 << 6);
            v35 = v9 - v10;
            do
            {
              v36 = v10;
              v37 = v35;
              v38 = v34;
              do
              {
                v39 = v38 - 4;
                v40 = *v38 == *(v38 - 8) && *(v38 + 1) == *(v38 - 7);
                if (v40 || (sub_1C7551DBC() & 1) == 0)
                {
                  break;
                }

                if (!v33)
                {
                  goto LABEL_124;
                }

                v42 = v38[2];
                v41 = v38[3];
                v44 = *v38;
                v43 = v38[1];
                v45 = *(v38 - 3);
                *v38 = *v39;
                v38[1] = v45;
                v46 = *(v38 - 1);
                v38[2] = *(v38 - 2);
                v38[3] = v46;
                *v39 = v44;
                *(v38 - 3) = v43;
                v38 -= 4;
                v39[2] = v42;
                v39[3] = v41;
              }

              while (!__CFADD__(v37++, 1));
              v10 = v36 + 1;
              v34 += 64;
              --v35;
            }

            while (v36 + 1 != v32);
            v10 = v32;
            v5 = v95;
            v9 = v97;
          }
        }
      }

      if (v10 < v9)
      {
        goto LABEL_119;
      }

      v96 = v10;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1C6FB17EC();
        v8 = v91;
      }

      v48 = v8[2];
      v49 = v48 + 1;
      if (v48 >= v8[3] >> 1)
      {
        sub_1C6FB17EC();
        v8 = v92;
      }

      v8[2] = v49;
      v50 = v8 + 4;
      v51 = &v8[2 * v48 + 4];
      *v51 = v9;
      v51[1] = v96;
      v98 = *a1;
      if (!*a1)
      {
        goto LABEL_127;
      }

      if (v48)
      {
        while (1)
        {
          v52 = v49 - 1;
          v53 = &v50[2 * v49 - 2];
          v54 = &v8[2 * v49];
          if (v49 >= 4)
          {
            break;
          }

          if (v49 == 3)
          {
            v55 = v8[4];
            v56 = v8[5];
            v65 = __OFSUB__(v56, v55);
            v57 = v56 - v55;
            v58 = v65;
LABEL_69:
            if (v58)
            {
              goto LABEL_109;
            }

            v70 = *v54;
            v69 = v54[1];
            v71 = __OFSUB__(v69, v70);
            v72 = v69 - v70;
            v73 = v71;
            if (v71)
            {
              goto LABEL_112;
            }

            v74 = v53[1];
            v75 = v74 - *v53;
            if (__OFSUB__(v74, *v53))
            {
              goto LABEL_115;
            }

            if (__OFADD__(v72, v75))
            {
              goto LABEL_117;
            }

            if (v72 + v75 >= v57)
            {
              if (v57 < v75)
              {
                v52 = v49 - 2;
              }

              goto LABEL_91;
            }

            goto LABEL_84;
          }

          if (v49 < 2)
          {
            goto LABEL_111;
          }

          v77 = *v54;
          v76 = v54[1];
          v65 = __OFSUB__(v76, v77);
          v72 = v76 - v77;
          v73 = v65;
LABEL_84:
          if (v73)
          {
            goto LABEL_114;
          }

          v79 = *v53;
          v78 = v53[1];
          v65 = __OFSUB__(v78, v79);
          v80 = v78 - v79;
          if (v65)
          {
            goto LABEL_116;
          }

          if (v80 < v72)
          {
            goto LABEL_98;
          }

LABEL_91:
          if (v52 - 1 >= v49)
          {
            __break(1u);
LABEL_104:
            __break(1u);
LABEL_105:
            __break(1u);
LABEL_106:
            __break(1u);
LABEL_107:
            __break(1u);
LABEL_108:
            __break(1u);
LABEL_109:
            __break(1u);
LABEL_110:
            __break(1u);
LABEL_111:
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
LABEL_122:
            __break(1u);
            goto LABEL_123;
          }

          if (!*a3)
          {
            goto LABEL_125;
          }

          v84 = &v50[2 * v52 - 2];
          v85 = *v84;
          v86 = &v50[2 * v52];
          v87 = v86[1];
          sub_1C7022E5C((*a3 + (*v84 << 6)), (*a3 + (*v86 << 6)), (*a3 + (v87 << 6)), v98);
          if (v5)
          {
            goto LABEL_102;
          }

          if (v87 < v85)
          {
            goto LABEL_104;
          }

          v88 = v8;
          v89 = v8[2];
          if (v52 > v89)
          {
            goto LABEL_105;
          }

          *v84 = v85;
          v84[1] = v87;
          if (v52 >= v89)
          {
            goto LABEL_106;
          }

          v49 = v89 - 1;
          memmove(&v50[2 * v52], v86 + 2, 16 * (v89 - 1 - v52));
          v88[2] = v89 - 1;
          v90 = v89 > 2;
          v8 = v88;
          if (!v90)
          {
            goto LABEL_98;
          }
        }

        v59 = &v50[2 * v49];
        v60 = *(v59 - 8);
        v61 = *(v59 - 7);
        v65 = __OFSUB__(v61, v60);
        v62 = v61 - v60;
        if (v65)
        {
          goto LABEL_107;
        }

        v64 = *(v59 - 6);
        v63 = *(v59 - 5);
        v65 = __OFSUB__(v63, v64);
        v57 = v63 - v64;
        v58 = v65;
        if (v65)
        {
          goto LABEL_108;
        }

        v66 = v54[1];
        v67 = v66 - *v54;
        if (__OFSUB__(v66, *v54))
        {
          goto LABEL_110;
        }

        v65 = __OFADD__(v57, v67);
        v68 = v57 + v67;
        if (v65)
        {
          goto LABEL_113;
        }

        if (v68 >= v62)
        {
          v82 = *v53;
          v81 = v53[1];
          v65 = __OFSUB__(v81, v82);
          v83 = v81 - v82;
          if (v65)
          {
            goto LABEL_118;
          }

          if (v57 < v83)
          {
            v52 = v49 - 2;
          }

          goto LABEL_91;
        }

        goto LABEL_69;
      }

LABEL_98:
      v6 = a3[1];
      v7 = v96;
      if (v96 >= v6)
      {
        v100 = v8;
        break;
      }
    }
  }

  if (!*a1)
  {
    goto LABEL_128;
  }

  sub_1C702203C(&v100, *a1, a3);
LABEL_102:
}

void sub_1C701C494(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v4 = a3[1];
  if (v4 < 1)
  {
    v6 = MEMORY[0x1E69E7CC0];
LABEL_72:
    v100 = *a1;
    if (!*a1)
    {
      goto LABEL_111;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_74:
      v79 = v6 + 16;
      v80 = *(v6 + 2);
      while (v80 >= 2)
      {
        if (!*a3)
        {
          goto LABEL_109;
        }

        v81 = v6;
        v82 = &v6[16 * v80];
        v83 = *v82;
        v84 = &v79[2 * v80];
        v85 = *(v84 + 1);
        sub_1C70235E8((*a3 + 56 * *v82), (*a3 + 56 * *v84), *a3 + 56 * v85, v100);
        if (v98)
        {
          break;
        }

        if (v85 < v83)
        {
          goto LABEL_99;
        }

        if (v80 - 2 >= *v79)
        {
          goto LABEL_100;
        }

        *v82 = v83;
        *(v82 + 1) = v85;
        v86 = *v79 - v80;
        if (*v79 < v80)
        {
          goto LABEL_101;
        }

        v98 = 0;
        v80 = *v79 - 1;
        sub_1C7423CF4(v84 + 16, v86, v84);
        *v79 = v80;
        v6 = v81;
      }

LABEL_82:

      return;
    }

LABEL_107:
    v6 = sub_1C7420830();
    goto LABEL_74;
  }

  v5 = 0;
  v6 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v7 = v5;
    v8 = v5 + 1;
    v93 = v6;
    if (v5 + 1 < v4)
    {
      v91 = v4;
      v9 = *a3;
      v94 = v5 + 1;
      v10 = (*a3 + 56 * v8);
      v11 = *v10;
      v12 = v10[1];
      v89 = v7;
      v13 = (*a3 + 56 * v7);
      v14 = *v13;
      v15 = v13[1];
      v16 = v13[4];
      sub_1C75504FC();
      sub_1C75504FC();
      sub_1C75504FC();
      sub_1C75504FC();
      sub_1C75504FC();
      v100 = v16;
      sub_1C75504FC();
      MEMORY[0x1CCA5CD70](v11, v12);
      MEMORY[0x1CCA5CD70](v14, v15);

      v17 = 0;
      v18 = (v89 + 2);
      v19 = v9 + 56 * v89 + 88;
      v20 = v94;
      while (1)
      {
        v8 = v18;
        v21 = v20;
        v22 = v17;
        if (v18 >= v91)
        {
          break;
        }

        v100 = v18;
        v23 = *(v19 + 24);
        v24 = *(v19 + 32);
        v25 = *(v19 - 32);
        v26 = *(v19 - 24);
        sub_1C75504FC();
        sub_1C75504FC();
        sub_1C75504FC();
        sub_1C75504FC();
        sub_1C75504FC();
        sub_1C75504FC();
        MEMORY[0x1CCA5CD70](v23, v24);
        MEMORY[0x1CCA5CD70](v25, v26);
        v6 = v93;

        v18 = v100 + 1;
        v19 += 56;
        v20 = v21 + 1;
        v17 = v22 + 56;
      }

      v7 = v89;
    }

    v27 = a3[1];
    if (v8 < v27)
    {
      if (__OFSUB__(v8, v7))
      {
        goto LABEL_104;
      }

      if (v8 - v7 < a4)
      {
        v28 = v7 + a4;
        if (__OFADD__(v7, a4))
        {
          goto LABEL_105;
        }

        if (v28 >= v27)
        {
          v28 = a3[1];
        }

        if (v28 < v7)
        {
          goto LABEL_106;
        }

        if (v8 != v28)
        {
          v29 = (*a3 + 56 * v8 - 56);
          v90 = v28;
          v30 = v7 - v8;
          do
          {
            v95 = v8;
            v92 = v30;
            v31 = v29[7];
            v32 = v29[8];
            v33 = v29[1];
            v99 = *v29;
            v34 = v29[4];
            sub_1C75504FC();
            sub_1C75504FC();
            sub_1C75504FC();
            sub_1C75504FC();
            sub_1C75504FC();
            v100 = v34;
            sub_1C75504FC();
            MEMORY[0x1CCA5CD70](v31, v32);
            MEMORY[0x1CCA5CD70](v99, v33);

            v8 = v95 + 1;
            v29 += 7;
            v30 = v92 - 1;
          }

          while (v95 + 1 != v90);
          v8 = v90;
          v6 = v93;
        }
      }
    }

    if (v8 < v7)
    {
LABEL_103:
      __break(1u);
LABEL_104:
      __break(1u);
      __break(1u);
LABEL_105:
      __break(1u);
LABEL_106:
      __break(1u);
      goto LABEL_107;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1C6FB17EC();
      v6 = v77;
    }

    v35 = *(v6 + 2);
    v36 = v35 + 1;
    v96 = v8;
    if (v35 >= *(v6 + 3) >> 1)
    {
      sub_1C6FB17EC();
      v6 = v78;
    }

    *(v6 + 2) = v36;
    v37 = v6 + 32;
    v38 = &v6[16 * v35 + 32];
    *v38 = v7;
    *(v38 + 1) = v96;
    v39 = *a1;
    if (!*a1)
    {
      goto LABEL_110;
    }

    if (v35)
    {
      break;
    }

LABEL_68:
    v5 = v96;
    v4 = a3[1];
    if (v96 >= v4)
    {
      goto LABEL_72;
    }
  }

  while (1)
  {
    v40 = v36 - 1;
    v41 = &v37[16 * v36 - 16];
    v42 = &v6[16 * v36];
    if (v36 >= 4)
    {
      v47 = &v37[16 * v36];
      v48 = *(v47 - 8);
      v49 = *(v47 - 7);
      v53 = __OFSUB__(v49, v48);
      v50 = v49 - v48;
      if (v53)
      {
        goto LABEL_88;
      }

      v52 = *(v47 - 6);
      v51 = *(v47 - 5);
      v53 = __OFSUB__(v51, v52);
      v45 = v51 - v52;
      v46 = v53;
      if (v53)
      {
        goto LABEL_89;
      }

      v54 = *(v42 + 1);
      v55 = v54 - *v42;
      if (__OFSUB__(v54, *v42))
      {
        goto LABEL_91;
      }

      v53 = __OFADD__(v45, v55);
      v56 = v45 + v55;
      if (v53)
      {
        goto LABEL_94;
      }

      if (v56 >= v50)
      {
        v70 = *v41;
        v69 = *(v41 + 1);
        v53 = __OFSUB__(v69, v70);
        v71 = v69 - v70;
        if (v53)
        {
          goto LABEL_102;
        }

        if (v45 < v71)
        {
          v40 = v36 - 2;
        }

        goto LABEL_61;
      }

      goto LABEL_39;
    }

    if (v36 == 3)
    {
      v43 = *(v6 + 4);
      v44 = *(v6 + 5);
      v53 = __OFSUB__(v44, v43);
      v45 = v44 - v43;
      v46 = v53;
LABEL_39:
      if (v46)
      {
        goto LABEL_90;
      }

      v58 = *v42;
      v57 = *(v42 + 1);
      v59 = __OFSUB__(v57, v58);
      v60 = v57 - v58;
      v61 = v59;
      if (v59)
      {
        goto LABEL_93;
      }

      v62 = *(v41 + 1);
      v63 = v62 - *v41;
      if (__OFSUB__(v62, *v41))
      {
        goto LABEL_96;
      }

      if (__OFADD__(v60, v63))
      {
        goto LABEL_98;
      }

      if (v60 + v63 >= v45)
      {
        if (v45 < v63)
        {
          v40 = v36 - 2;
        }

        goto LABEL_61;
      }

      goto LABEL_54;
    }

    if (v36 < 2)
    {
      goto LABEL_92;
    }

    v65 = *v42;
    v64 = *(v42 + 1);
    v53 = __OFSUB__(v64, v65);
    v60 = v64 - v65;
    v61 = v53;
LABEL_54:
    if (v61)
    {
      goto LABEL_95;
    }

    v67 = *v41;
    v66 = *(v41 + 1);
    v53 = __OFSUB__(v66, v67);
    v68 = v66 - v67;
    if (v53)
    {
      goto LABEL_97;
    }

    if (v68 < v60)
    {
      goto LABEL_68;
    }

LABEL_61:
    if (v40 - 1 >= v36)
    {
      __break(1u);
LABEL_85:
      __break(1u);
LABEL_86:
      __break(1u);
LABEL_87:
      __break(1u);
LABEL_88:
      __break(1u);
LABEL_89:
      __break(1u);
LABEL_90:
      __break(1u);
LABEL_91:
      __break(1u);
LABEL_92:
      __break(1u);
LABEL_93:
      __break(1u);
LABEL_94:
      __break(1u);
LABEL_95:
      __break(1u);
LABEL_96:
      __break(1u);
LABEL_97:
      __break(1u);
LABEL_98:
      __break(1u);
LABEL_99:
      __break(1u);
LABEL_100:
      __break(1u);
LABEL_101:
      __break(1u);
LABEL_102:
      __break(1u);
      goto LABEL_103;
    }

    if (!*a3)
    {
      break;
    }

    v72 = &v37[16 * v40 - 16];
    v73 = *v72;
    v74 = &v37[16 * v40];
    v75 = *(v74 + 1);
    sub_1C70235E8((*a3 + 56 * *v72), (*a3 + 56 * *v74), *a3 + 56 * v75, v39);
    if (v98)
    {
      goto LABEL_82;
    }

    if (v75 < v73)
    {
      goto LABEL_85;
    }

    v76 = *(v6 + 2);
    if (v40 > v76)
    {
      goto LABEL_86;
    }

    *v72 = v73;
    *(v72 + 1) = v75;
    if (v40 >= v76)
    {
      goto LABEL_87;
    }

    v98 = 0;
    v36 = v76 - 1;
    sub_1C7423CF4(v74 + 16, v76 - 1 - v40, &v37[16 * v40]);
    *(v6 + 2) = v76 - 1;
    if (v76 <= 2)
    {
      goto LABEL_68;
    }
  }

  __break(1u);
LABEL_109:
  __break(1u);
  __break(1u);
LABEL_110:
  __break(1u);
LABEL_111:
  __break(1u);
}

void sub_1C701CE48(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v102 = MEMORY[0x1E69E7CC0];
  v5 = a3[1];
  if (v5 >= 1)
  {
    v101 = v4;
    v6 = 0;
    v7 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v8 = v6++;
      if (v6 < v5)
      {
        v9 = *a3;
        v10 = (*a3 + 56 * v6);
        v11 = *v10;
        v12 = v10[1];
        v13 = (*a3 + 56 * v8);
        if (v11 == *v13 && v12 == v13[1])
        {
          v15 = 0;
        }

        else
        {
          v15 = sub_1C7551DBC();
        }

        v6 = v8 + 2;
        v16 = (v9 + 56 * v8 + 120);
        while (v6 < v5)
        {
          if (*(v16 - 1) == *(v16 - 8) && *v16 == *(v16 - 7))
          {
            if (v15)
            {
              goto LABEL_21;
            }
          }

          else if ((v15 ^ sub_1C7551DBC()))
          {
            break;
          }

          ++v6;
          v16 += 7;
        }

        if ((v15 & 1) == 0)
        {
          goto LABEL_28;
        }

LABEL_21:
        if (v6 < v8)
        {
          goto LABEL_122;
        }

        if (v8 < v6)
        {
          v18 = 56 * v6 - 24;
          v19 = 56 * v8 + 48;
          v20 = v6;
          v21 = v8;
          do
          {
            if (v21 != --v20)
            {
              v22 = *a3;
              if (!*a3)
              {
                goto LABEL_127;
              }

              v23 = (v22 + v19);
              v24 = *(v22 + v19 - 48);
              v25 = (v22 + v18);
              v26 = *(v23 - 4);
              v27 = *(v23 - 24);
              v28 = *(v23 - 2);
              v29 = *(v23 - 1);
              v30 = *v23;
              v32 = *(v25 - 1);
              v31 = *v25;
              v33 = *(v25 - 2);
              *v23 = *(v25 + 2);
              *(v23 - 2) = v32;
              *(v23 - 1) = v31;
              *(v23 - 3) = v33;
              *(v25 - 2) = v24;
              *(v25 - 2) = v26;
              *(v25 - 8) = v27;
              *v25 = v28;
              *(v25 + 1) = v29;
              *(v25 + 16) = v30;
            }

            ++v21;
            v18 -= 56;
            v19 += 56;
          }

          while (v21 < v20);
        }
      }

LABEL_28:
      v34 = a3[1];
      if (v6 < v34)
      {
        if (__OFSUB__(v6, v8))
        {
          goto LABEL_121;
        }

        if (v6 - v8 < a4)
        {
          if (__OFADD__(v8, a4))
          {
            goto LABEL_123;
          }

          if (v8 + a4 >= v34)
          {
            v35 = a3[1];
          }

          else
          {
            v35 = v8 + a4;
          }

          if (v35 < v8)
          {
LABEL_124:
            __break(1u);
LABEL_125:
            __break(1u);
LABEL_126:
            __break(1u);
LABEL_127:
            __break(1u);
LABEL_128:
            __break(1u);
LABEL_129:
            __break(1u);
            return;
          }

          if (v6 != v35)
          {
            v36 = *a3;
            v37 = *a3 + 56 * v6 - 56;
            v98 = v8;
            v38 = v8 - v6;
            do
            {
              v39 = v38;
              v40 = v37;
              do
              {
                v41 = v40 + 56;
                v42 = *(v40 + 56) == *v40 && *(v40 + 64) == *(v40 + 8);
                if (v42 || (sub_1C7551DBC() & 1) == 0)
                {
                  break;
                }

                if (!v36)
                {
                  goto LABEL_125;
                }

                v43 = *(v40 + 56);
                v44 = *(v40 + 72);
                v45 = *(v40 + 80);
                v46 = *(v40 + 88);
                v47 = *(v40 + 96);
                v48 = *(v40 + 104);
                v49 = *(v40 + 16);
                *v41 = *v40;
                *(v40 + 72) = v49;
                *(v40 + 88) = *(v40 + 32);
                v50 = *(v40 + 48);
                *v40 = v43;
                *(v40 + 16) = v44;
                *(v40 + 24) = v45;
                *(v40 + 32) = v46;
                *(v40 + 40) = v47;
                *(v40 + 48) = v48;
                v40 -= 56;
                *(v41 + 48) = v50;
              }

              while (!__CFADD__(v39++, 1));
              ++v6;
              v37 += 56;
              --v38;
            }

            while (v6 != v35);
            v6 = v35;
            v8 = v98;
          }
        }
      }

      if (v6 < v8)
      {
        goto LABEL_120;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1C6FB17EC();
        v7 = v94;
      }

      v52 = v7[2];
      v53 = v52 + 1;
      if (v52 >= v7[3] >> 1)
      {
        sub_1C6FB17EC();
        v7 = v95;
      }

      v7[2] = v53;
      v54 = v7 + 4;
      v55 = &v7[2 * v52 + 4];
      *v55 = v8;
      v55[1] = v6;
      v99 = *a1;
      if (!*a1)
      {
        goto LABEL_128;
      }

      if (v52)
      {
        while (1)
        {
          v56 = v53 - 1;
          v57 = &v54[2 * v53 - 2];
          v58 = &v7[2 * v53];
          if (v53 >= 4)
          {
            break;
          }

          if (v53 == 3)
          {
            v59 = v7[4];
            v60 = v7[5];
            v69 = __OFSUB__(v60, v59);
            v61 = v60 - v59;
            v62 = v69;
LABEL_69:
            if (v62)
            {
              goto LABEL_110;
            }

            v74 = *v58;
            v73 = v58[1];
            v75 = __OFSUB__(v73, v74);
            v76 = v73 - v74;
            v77 = v75;
            if (v75)
            {
              goto LABEL_113;
            }

            v78 = v57[1];
            v79 = v78 - *v57;
            if (__OFSUB__(v78, *v57))
            {
              goto LABEL_116;
            }

            if (__OFADD__(v76, v79))
            {
              goto LABEL_118;
            }

            if (v76 + v79 >= v61)
            {
              if (v61 < v79)
              {
                v56 = v53 - 2;
              }

              goto LABEL_91;
            }

            goto LABEL_84;
          }

          if (v53 < 2)
          {
            goto LABEL_112;
          }

          v81 = *v58;
          v80 = v58[1];
          v69 = __OFSUB__(v80, v81);
          v76 = v80 - v81;
          v77 = v69;
LABEL_84:
          if (v77)
          {
            goto LABEL_115;
          }

          v83 = *v57;
          v82 = v57[1];
          v69 = __OFSUB__(v82, v83);
          v84 = v82 - v83;
          if (v69)
          {
            goto LABEL_117;
          }

          if (v84 < v76)
          {
            goto LABEL_98;
          }

LABEL_91:
          if (v56 - 1 >= v53)
          {
            __break(1u);
LABEL_105:
            __break(1u);
LABEL_106:
            __break(1u);
LABEL_107:
            __break(1u);
LABEL_108:
            __break(1u);
LABEL_109:
            __break(1u);
LABEL_110:
            __break(1u);
LABEL_111:
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
LABEL_122:
            __break(1u);
LABEL_123:
            __break(1u);
            goto LABEL_124;
          }

          if (!*a3)
          {
            goto LABEL_126;
          }

          v88 = v7;
          v89 = &v54[2 * v56 - 2];
          v90 = *v89;
          v91 = &v54[2 * v56];
          v92 = v91[1];
          sub_1C7023A70((*a3 + 56 * *v89), (*a3 + 56 * *v91), *a3 + 56 * v92, v99);
          if (v101)
          {
            goto LABEL_103;
          }

          if (v92 < v90)
          {
            goto LABEL_105;
          }

          v93 = v88[2];
          if (v56 > v93)
          {
            goto LABEL_106;
          }

          *v89 = v90;
          v89[1] = v92;
          if (v56 >= v93)
          {
            goto LABEL_107;
          }

          v53 = v93 - 1;
          memmove(&v54[2 * v56], v91 + 2, 16 * (v93 - 1 - v56));
          v7 = v88;
          v88[2] = v93 - 1;
          if (v93 <= 2)
          {
            goto LABEL_98;
          }
        }

        v63 = &v54[2 * v53];
        v64 = *(v63 - 8);
        v65 = *(v63 - 7);
        v69 = __OFSUB__(v65, v64);
        v66 = v65 - v64;
        if (v69)
        {
          goto LABEL_108;
        }

        v68 = *(v63 - 6);
        v67 = *(v63 - 5);
        v69 = __OFSUB__(v67, v68);
        v61 = v67 - v68;
        v62 = v69;
        if (v69)
        {
          goto LABEL_109;
        }

        v70 = v58[1];
        v71 = v70 - *v58;
        if (__OFSUB__(v70, *v58))
        {
          goto LABEL_111;
        }

        v69 = __OFADD__(v61, v71);
        v72 = v61 + v71;
        if (v69)
        {
          goto LABEL_114;
        }

        if (v72 >= v66)
        {
          v86 = *v57;
          v85 = v57[1];
          v69 = __OFSUB__(v85, v86);
          v87 = v85 - v86;
          if (v69)
          {
            goto LABEL_119;
          }

          if (v61 < v87)
          {
            v56 = v53 - 2;
          }

          goto LABEL_91;
        }

        goto LABEL_69;
      }

LABEL_98:
      v5 = a3[1];
      if (v6 >= v5)
      {
        v102 = v7;
        break;
      }
    }
  }

  if (!*a1)
  {
    goto LABEL_129;
  }

  sub_1C7022168(&v102, *a1, a3);
LABEL_103:
}

void sub_1C701D3C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void (*a22)(int64_t, int64_t, int64_t, int64_t))
{
  OUTLINED_FUNCTION_124();
  v168 = v24;
  v169 = v25;
  v27 = v26;
  v160 = v22;
  v29 = v28;
  v31 = v30;
  v147 = v32;
  v154 = a22;
  v166 = v33(0);
  OUTLINED_FUNCTION_3_0();
  v157 = v34;
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_14_2();
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_130();
  v165 = v37;
  OUTLINED_FUNCTION_117();
  MEMORY[0x1EEE9AC00](v38);
  v40 = &v143 - v39;
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_511();
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_130();
  v162 = v43;
  OUTLINED_FUNCTION_117();
  MEMORY[0x1EEE9AC00](v44);
  OUTLINED_FUNCTION_130();
  v161 = v45;
  OUTLINED_FUNCTION_117();
  MEMORY[0x1EEE9AC00](v46);
  OUTLINED_FUNCTION_130();
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v47);
  OUTLINED_FUNCTION_140_1();
  OUTLINED_FUNCTION_165(v48);
  v159 = v31;
  v49 = v31[1];
  if (v49 < 1)
  {
    v51 = MEMORY[0x1E69E7CC0];
LABEL_103:
    OUTLINED_FUNCTION_333();
    OUTLINED_FUNCTION_555(v132);
    if (!v133)
    {
      goto LABEL_144;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = v160;
    if (isUniquelyReferenced_nonNull_native)
    {
LABEL_105:
      v135 = v51 + 16;
      v136 = *(v51 + 2);
      while (v136 >= 2)
      {
        if (!*v159)
        {
          goto LABEL_141;
        }

        v137 = v51;
        v138 = &v51[16 * v136];
        v139 = *v138;
        v140 = &v135[2 * v136];
        v141 = *(v140 + 1);
        v154(*v159 + *(v157 + 72) * *v138, *v159 + *(v157 + 72) * *v140, *v159 + *(v157 + 72) * v141, a10);
        if (v27)
        {
          break;
        }

        if (v141 < v139)
        {
          goto LABEL_129;
        }

        if (v136 - 2 >= *v135)
        {
          goto LABEL_130;
        }

        *v138 = v139;
        *(v138 + 1) = v141;
        v142 = *v135 - v136;
        if (*v135 < v136)
        {
          goto LABEL_131;
        }

        v136 = *v135 - 1;
        sub_1C7423CF4(v140 + 16, v142, v140);
        *v135 = v136;
        v51 = v137;
      }

LABEL_113:

      OUTLINED_FUNCTION_125();
      return;
    }

LABEL_138:
    v51 = sub_1C7420830();
    goto LABEL_105;
  }

  v143 = v29;
  v50 = 0;
  v167 = a21;
  v51 = MEMORY[0x1E69E7CC0];
  v170 = v40;
  v155 = v23;
  v151 = v27;
  while (1)
  {
    v52 = v50;
    v53 = v50 + 1;
    if (v50 + 1 < v49)
    {
      v152 = v49;
      v54 = *v159;
      v55 = *(v157 + 72);
      v156 = v50 + 1;
      v56 = v145;
      sub_1C702659C();
      v148 = v52;
      v158 = v55;
      v57 = v146;
      sub_1C702659C();
      v59 = v168;
      v58 = v169;
      v171 = v168;
      v172 = v169;
      MEMORY[0x1CCA5CD70](*v56, v56[1]);
      v61 = v171;
      v60 = v172;
      v171 = v59;
      v172 = v58;
      MEMORY[0x1CCA5CD70](*v57, v57[1]);
      if (v61 == v171 && v60 == v172)
      {
        LODWORD(v153) = 0;
      }

      else
      {
        LODWORD(v153) = OUTLINED_FUNCTION_385();
      }

      v144 = v51;

      OUTLINED_FUNCTION_192();
      sub_1C70265F0();
      sub_1C70265F0();
      OUTLINED_FUNCTION_147_0();
      v64 = v63 + 2;
      v65 = v158 * v64;
      v66 = v54 + v158 * v64;
      v23 = v155;
      v67 = v156;
      v68 = (v158 * v156);
      v52 = v54 + v158 * v156;
      do
      {
        v69 = v64;
        v70 = v67;
        v51 = v68;
        v71 = v65;
        if (v64 >= v152)
        {
          break;
        }

        a10 = v67;
        v163 = v65;
        v164 = v64;
        v72 = v161;
        sub_1C702659C();
        v73 = v162;
        sub_1C702659C();
        v74 = v168;
        v75 = v169;
        v171 = v168;
        v172 = v169;
        MEMORY[0x1CCA5CD70](*v72, v72[1]);
        v77 = v171;
        v76 = v172;
        v171 = v74;
        v172 = v75;
        MEMORY[0x1CCA5CD70](*v73, v73[1]);
        v78 = v77 == v171 && v76 == v172;
        v79 = v78 ? 0 : OUTLINED_FUNCTION_385();
        v69 = v164;

        v27 = v151;
        sub_1C70265F0();
        sub_1C70265F0();
        v80 = v153 ^ v79;
        v64 = v69 + 1;
        v66 += v158;
        v52 += v158;
        v70 = a10;
        v67 = a10 + 1;
        v68 = &v51[v158];
        v71 = v163;
        v65 = v163 + v158;
        v23 = v155;
      }

      while ((v80 & 1) == 0);
      if (v153)
      {
        v52 = v148;
        if (v69 < v148)
        {
          goto LABEL_135;
        }

        if (v148 >= v69)
        {
          v53 = v69;
          v51 = v144;
          goto LABEL_37;
        }

        v81 = (v148 * v158);
        do
        {
          if (v52 != v70)
          {
            a10 = v70;
            v82 = *v159;
            if (!*v159)
            {
              goto LABEL_142;
            }

            sub_1C70267FC();
            v83 = v81 < v51 || &v81[v82] >= v82 + v71;
            if (v83)
            {
              OUTLINED_FUNCTION_561();
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v81 != v51)
            {
              OUTLINED_FUNCTION_561();
              swift_arrayInitWithTakeBackToFront();
            }

            OUTLINED_FUNCTION_127_2();
            sub_1C70267FC();
            v23 = v155;
            v70 = a10;
          }

          ++v52;
          v51 -= v158;
          v71 -= v158;
          v81 += v158;
          v84 = v52 < v70--;
        }

        while (v84);
      }

      v53 = v69;
      OUTLINED_FUNCTION_536();
    }

LABEL_37:
    v85 = v159[1];
    if (v53 < v85)
    {
      if (__OFSUB__(v53, v52))
      {
        goto LABEL_134;
      }

      if ((v53 - v52) < v143)
      {
        break;
      }
    }

LABEL_58:
    if (v53 < v52)
    {
      goto LABEL_133;
    }

    v101 = swift_isUniquelyReferenced_nonNull_native();
    v156 = v53;
    if ((v101 & 1) == 0)
    {
      OUTLINED_FUNCTION_24_0();
      sub_1C6FB17EC();
      v51 = v130;
    }

    v102 = *(v51 + 2);
    OUTLINED_FUNCTION_236();
    if (v83)
    {
      OUTLINED_FUNCTION_143_0();
      sub_1C6FB17EC();
      v51 = v131;
    }

    *(v51 + 2) = v53;
    v103 = v51 + 32;
    v104 = &v51[16 * v102 + 32];
    v105 = v156;
    *v104 = v52;
    *(v104 + 1) = v105;
    OUTLINED_FUNCTION_333();
    OUTLINED_FUNCTION_555(v106);
    if (!v107)
    {
      goto LABEL_143;
    }

    if (v102)
    {
      while (1)
      {
        v108 = v53 - 1;
        if (v53 >= 4)
        {
          break;
        }

        if (v53 == 3)
        {
          OUTLINED_FUNCTION_553();
LABEL_73:
          if (v109)
          {
            goto LABEL_120;
          }

          OUTLINED_FUNCTION_548();
          if (v110)
          {
            goto LABEL_123;
          }

          OUTLINED_FUNCTION_546();
          if (v110)
          {
            goto LABEL_126;
          }

          if (__OFADD__(v115, v118))
          {
            goto LABEL_128;
          }

          if (v115 + v118 >= v116)
          {
            if (v116 < v118)
            {
              v108 = v53 - 2;
            }

            goto LABEL_92;
          }

          goto LABEL_85;
        }

        if (v53 < 2)
        {
          goto LABEL_122;
        }

        OUTLINED_FUNCTION_545();
        v117 = v110;
LABEL_85:
        if (v117)
        {
          goto LABEL_125;
        }

        OUTLINED_FUNCTION_544();
        if (v110)
        {
          goto LABEL_127;
        }

        if (v119 < v120)
        {
          goto LABEL_99;
        }

LABEL_92:
        if (v108 - 1 >= v53)
        {
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
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
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
          goto LABEL_137;
        }

        if (!*v159)
        {
          goto LABEL_140;
        }

        v123 = &v103[16 * v108 - 16];
        v124 = *v123;
        v125 = &v103[16 * v108];
        v126 = *(v125 + 1);
        v127 = v160;
        v154(*v159 + *(v157 + 72) * *v123, *v159 + *(v157 + 72) * *v125, *v159 + *(v157 + 72) * v126, a10);
        v160 = v127;
        if (v127)
        {
          goto LABEL_113;
        }

        if (v126 < v124)
        {
          goto LABEL_115;
        }

        v128 = v51;
        v129 = *(v51 + 2);
        if (v108 > v129)
        {
          goto LABEL_116;
        }

        *v123 = v124;
        *(v123 + 1) = v126;
        if (v108 >= v129)
        {
          goto LABEL_117;
        }

        v53 = v129 - 1;
        sub_1C7423CF4(v125 + 16, v129 - 1 - v108, &v103[16 * v108]);
        *(v128 + 2) = v129 - 1;
        v84 = v129 > 2;
        v51 = v128;
        if (!v84)
        {
          goto LABEL_99;
        }
      }

      OUTLINED_FUNCTION_551();
      if (v110)
      {
        goto LABEL_118;
      }

      OUTLINED_FUNCTION_550();
      if (v110)
      {
        goto LABEL_119;
      }

      OUTLINED_FUNCTION_549();
      if (v110)
      {
        goto LABEL_121;
      }

      v110 = __OFADD__(v111, v113);
      v114 = v111 + v113;
      if (v110)
      {
        goto LABEL_124;
      }

      if (v114 >= v112)
      {
        OUTLINED_FUNCTION_543();
        if (v110)
        {
          goto LABEL_132;
        }

        if (v122 < v121)
        {
          v108 = v53 - 2;
        }

        goto LABEL_92;
      }

      goto LABEL_73;
    }

LABEL_99:
    v49 = v159[1];
    v23 = v155;
    v50 = v156;
    if (v156 >= v49)
    {
      goto LABEL_103;
    }
  }

  v86 = v52 + v143;
  if (__OFADD__(v52, v143))
  {
    goto LABEL_136;
  }

  if (v86 >= v85)
  {
    v86 = v159[1];
  }

  if (v86 < v52)
  {
LABEL_137:
    __break(1u);
    goto LABEL_138;
  }

  if (v53 == v86)
  {
    goto LABEL_58;
  }

  v144 = v51;
  v87 = *v159;
  v88 = *(v157 + 72);
  v89 = *v159 + v88 * (v53 - 1);
  v163 = -v88;
  v148 = v52;
  v90 = v52 - v53;
  v164 = v87;
  v149 = v88;
  v91 = v87 + v53 * v88;
  v150 = v86;
LABEL_46:
  v156 = v53;
  v152 = v91;
  v153 = v90;
  v92 = v91;
  v93 = v90;
  v158 = v89;
  v52 = v89;
  while (1)
  {
    a10 = v93;
    sub_1C702659C();
    OUTLINED_FUNCTION_15_1();
    sub_1C702659C();
    v94 = v168;
    v51 = v27;
    v95 = v169;
    v171 = v168;
    v172 = v169;
    MEMORY[0x1CCA5CD70](*v23, v23[1]);
    v96 = v23;
    v98 = v171;
    v97 = v172;
    v171 = v94;
    v172 = v95;
    MEMORY[0x1CCA5CD70](*v170, v170[1]);
    if (v98 == v171 && v97 == v172)
    {

      OUTLINED_FUNCTION_249();
      sub_1C70265F0();
      sub_1C70265F0();
      v27 = v51;
      v23 = v96;
LABEL_56:
      v53 = v156 + 1;
      v89 = v158 + v149;
      v90 = v153 - 1;
      v91 = v152 + v149;
      if (v156 + 1 == v150)
      {
        v53 = v150;
        OUTLINED_FUNCTION_536();
        goto LABEL_58;
      }

      goto LABEL_46;
    }

    v100 = OUTLINED_FUNCTION_385();

    OUTLINED_FUNCTION_249();
    sub_1C70265F0();
    sub_1C70265F0();
    v27 = v51;
    v23 = v96;
    if ((v100 & 1) == 0)
    {
      goto LABEL_56;
    }

    if (!v164)
    {
      break;
    }

    sub_1C70267FC();
    OUTLINED_FUNCTION_457();
    swift_arrayInitWithTakeFrontToBack();
    sub_1C70267FC();
    v52 += v163;
    v92 += v163;
    v93 = a10 + 1;
    if (a10 == -1)
    {
      goto LABEL_56;
    }
  }

  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
LABEL_144:
  __break(1u);
}

void sub_1C701DDD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_124();
  v152 = v24;
  v26 = v25;
  v149 = v22;
  v28 = v27;
  v133 = v29;
  v140 = a22;
  v141 = v30;
  v139 = a21;
  v151 = v31(0);
  OUTLINED_FUNCTION_3_0();
  v142 = v32;
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_14_2();
  v136 = v34;
  OUTLINED_FUNCTION_117();
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_130();
  v150 = v36;
  OUTLINED_FUNCTION_117();
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_511();
  MEMORY[0x1EEE9AC00](v38);
  v40 = (&v128 - v39);
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_130();
  v147 = v42;
  OUTLINED_FUNCTION_117();
  MEMORY[0x1EEE9AC00](v43);
  OUTLINED_FUNCTION_130();
  v146 = v44;
  OUTLINED_FUNCTION_117();
  MEMORY[0x1EEE9AC00](v45);
  OUTLINED_FUNCTION_130();
  v132 = v46;
  OUTLINED_FUNCTION_117();
  MEMORY[0x1EEE9AC00](v47);
  OUTLINED_FUNCTION_140_1();
  OUTLINED_FUNCTION_108_0(v48);
  v144 = v28;
  if (v28[1] < 1)
  {
    v51 = MEMORY[0x1E69E7CC0];
LABEL_107:
    v23 = *v133;
    if (!*v133)
    {
      goto LABEL_148;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_109:
      v120 = v51 + 16;
      v121 = *(v51 + 2);
      for (i = v51; v121 >= 2; v51 = i)
      {
        if (!*v144)
        {
          goto LABEL_145;
        }

        v122 = &v51[16 * v121];
        v123 = *v122;
        v124 = &v120[2 * v121];
        v125 = *(v124 + 1);
        v126 = v149;
        sub_1C7024200(*v144 + *(v142 + 72) * *v122, *v144 + *(v142 + 72) * *v124, *v144 + *(v142 + 72) * v125, v23, v141, v139, v26, v140, v128, v129, v130, v131, v132, v133, v134, v135, v136, v137, v138, v139);
        v149 = v126;
        if (v126)
        {
          break;
        }

        if (v125 < v123)
        {
          goto LABEL_133;
        }

        if (v121 - 2 >= *v120)
        {
          goto LABEL_134;
        }

        *v122 = v123;
        *(v122 + 1) = v125;
        v127 = *v120 - v121;
        if (*v120 < v121)
        {
          goto LABEL_135;
        }

        v121 = *v120 - 1;
        sub_1C7423CF4(v124 + 16, v127, v124);
        *v120 = v121;
      }

LABEL_117:

      OUTLINED_FUNCTION_125();
      return;
    }

LABEL_142:
    v51 = sub_1C7420830();
    goto LABEL_109;
  }

  OUTLINED_FUNCTION_353();
  v50 = 0;
  v51 = MEMORY[0x1E69E7CC0];
  v153 = v23;
  while (1)
  {
    v52 = v50;
    v53 = v50 + 1;
    if (v50 + 1 < v49)
    {
      v137 = v49;
      v54 = *v144;
      v55 = *(v142 + 72);
      sub_1C702659C();
      v143 = v55;
      OUTLINED_FUNCTION_362();
      sub_1C702659C();
      OUTLINED_FUNCTION_441();
      v58 = v58 && v56 == v57;
      v23 = v53;
      if (v58)
      {
        LODWORD(v138) = 0;
      }

      else
      {
        LODWORD(v138) = sub_1C7551DBC();
      }

      i = v51;
      sub_1C70265F0();
      sub_1C70265F0();
      v130 = v52;
      v59 = v52 + 2;
      v60 = v143 * (v52 + 2);
      v61 = v54 + v60;
      v62 = v143 * v23;
      v63 = v54 + v143 * v23;
      do
      {
        v64 = v59;
        v65 = v23;
        v66 = v62;
        v67 = v60;
        v145 = v59;
        if (v59 >= v137)
        {
          break;
        }

        v68 = v146;
        sub_1C702659C();
        v69 = v147;
        sub_1C702659C();
        v70 = *v68 == *v69 && v68[1] == v69[1];
        v71 = v70 ? 0 : sub_1C7551DBC();
        sub_1C70265F0();
        sub_1C70265F0();
        v64 = v145;
        v59 = v145 + 1;
        v61 += v143;
        v63 += v143;
        v23 = v65 + 1;
        v62 = v66 + v143;
        v60 = v67 + v143;
      }

      while (((v138 ^ v71) & 1) == 0);
      if (v138)
      {
        OUTLINED_FUNCTION_135_1();
        if (v73 < v72)
        {
          goto LABEL_139;
        }

        if (v72 >= v73)
        {
          v53 = v73;
          v51 = i;
          v23 = v153;
          v52 = v72;
          goto LABEL_39;
        }

        v74 = v72 * v143;
        v75 = v72;
        do
        {
          if (v75 != v65)
          {
            v76 = *v144;
            if (!*v144)
            {
              goto LABEL_146;
            }

            sub_1C70267FC();
            v77 = v74 < v66 || v76 + v74 >= (v76 + v67);
            if (v77)
            {
              OUTLINED_FUNCTION_225();
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v74 != v66)
            {
              OUTLINED_FUNCTION_225();
              swift_arrayInitWithTakeBackToFront();
            }

            sub_1C70267FC();
          }

          ++v75;
          v66 -= v143;
          v67 -= v143;
          v74 += v143;
          v78 = v75 < v65--;
        }

        while (v78);
        v53 = v145;
      }

      else
      {
        v53 = v64;
      }

      v51 = i;
      v23 = v153;
      v52 = v130;
    }

LABEL_39:
    v79 = v144[1];
    v145 = v53;
    if (v53 < v79)
    {
      if (__OFSUB__(v53, v52))
      {
        goto LABEL_138;
      }

      if (v53 - v52 < v129)
      {
        break;
      }
    }

LABEL_62:
    if (v145 < v52)
    {
      goto LABEL_137;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      OUTLINED_FUNCTION_13_13();
      sub_1C6FB17EC();
      v51 = v118;
    }

    v90 = *(v51 + 2);
    v91 = v90 + 1;
    if (v90 >= *(v51 + 3) >> 1)
    {
      OUTLINED_FUNCTION_131_0();
      sub_1C6FB17EC();
      v51 = v119;
    }

    *(v51 + 2) = v91;
    v92 = v51 + 32;
    v93 = &v51[16 * v90 + 32];
    v94 = v145;
    *v93 = v52;
    v93[1] = v94;
    v143 = *v133;
    if (!v143)
    {
      goto LABEL_147;
    }

    if (v90)
    {
      i = v51;
      while (v91 < 4)
      {
        if (v91 == 3)
        {
          OUTLINED_FUNCTION_553();
LABEL_78:
          if (v95)
          {
            goto LABEL_124;
          }

          OUTLINED_FUNCTION_548();
          if (v96)
          {
            goto LABEL_127;
          }

          OUTLINED_FUNCTION_546();
          if (v96)
          {
            goto LABEL_130;
          }

          if (__OFADD__(v101, v104))
          {
            goto LABEL_132;
          }

          if (v101 + v104 >= v102)
          {
            if (v102 < v104)
            {
              v105 = v91 - 2;
            }

            goto LABEL_97;
          }

          goto LABEL_90;
        }

        if (v91 < 2)
        {
          goto LABEL_126;
        }

        OUTLINED_FUNCTION_545();
        v103 = v96;
LABEL_90:
        if (v103)
        {
          goto LABEL_129;
        }

        OUTLINED_FUNCTION_544();
        if (v96)
        {
          goto LABEL_131;
        }

        if (v106 < v107)
        {
          goto LABEL_104;
        }

LABEL_97:
        if (v105 - 1 >= v91)
        {
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
LABEL_137:
          __break(1u);
LABEL_138:
          __break(1u);
LABEL_139:
          __break(1u);
LABEL_140:
          __break(1u);
          goto LABEL_141;
        }

        if (!*v144)
        {
          goto LABEL_144;
        }

        v110 = &v92[16 * v105 - 16];
        v111 = *v110;
        v23 = v105;
        v112 = &v92[16 * v105];
        v113 = *(v112 + 1);
        v114 = v149;
        sub_1C7024200(*v144 + *(v142 + 72) * *v110, *v144 + *(v142 + 72) * *v112, *v144 + *(v142 + 72) * v113, v143, v141, v139, v26, v140, v128, v129, v130, v131, v132, v133, v134, v135, v136, v137, v138, v139);
        v149 = v114;
        if (v114)
        {
          goto LABEL_117;
        }

        if (v113 < v111)
        {
          goto LABEL_119;
        }

        v115 = v26;
        v26 = v40;
        v116 = v92;
        v117 = *(i + 2);
        if (v23 > v117)
        {
          goto LABEL_120;
        }

        *v110 = v111;
        *(v110 + 1) = v113;
        if (v23 >= v117)
        {
          goto LABEL_121;
        }

        v91 = v117 - 1;
        sub_1C7423CF4(v112 + 16, v117 - 1 - v23, v112);
        v51 = i;
        *(i + 2) = v117 - 1;
        v78 = v117 > 2;
        v23 = v153;
        v92 = v116;
        v40 = v26;
        v26 = v115;
        if (!v78)
        {
          goto LABEL_104;
        }
      }

      OUTLINED_FUNCTION_551();
      if (v96)
      {
        goto LABEL_122;
      }

      OUTLINED_FUNCTION_550();
      if (v96)
      {
        goto LABEL_123;
      }

      OUTLINED_FUNCTION_549();
      if (v96)
      {
        goto LABEL_125;
      }

      v96 = __OFADD__(v97, v99);
      v100 = v97 + v99;
      if (v96)
      {
        goto LABEL_128;
      }

      if (v100 >= v98)
      {
        OUTLINED_FUNCTION_543();
        if (v96)
        {
          goto LABEL_136;
        }

        if (v109 < v108)
        {
          v105 = v91 - 2;
        }

        goto LABEL_97;
      }

      goto LABEL_78;
    }

LABEL_104:
    v50 = v145;
    v49 = v144[1];
    if (v145 >= v49)
    {
      goto LABEL_107;
    }
  }

  if (__OFADD__(v52, v129))
  {
    goto LABEL_140;
  }

  if (v52 + v129 >= v79)
  {
    v80 = v79;
  }

  else
  {
    v80 = v52 + v129;
  }

  if (v80 < v52)
  {
LABEL_141:
    __break(1u);
    goto LABEL_142;
  }

  if (v145 == v80)
  {
    goto LABEL_62;
  }

  i = v51;
  v81 = *v144;
  v82 = *(v142 + 72);
  v83 = *v144 + v82 * (v145 - 1);
  v84 = v52;
  v85 = -v82;
  v130 = v84;
  v86 = v84 - v145;
  v134 = v82;
  v135 = v80;
  v87 = v81 + v145 * v82;
LABEL_49:
  v137 = v87;
  v138 = v86;
  v143 = v83;
  while (1)
  {
    sub_1C702659C();
    OUTLINED_FUNCTION_455();
    sub_1C702659C();
    if (*v40 == *v23 && v40[1] == *(v23 + 8))
    {
      OUTLINED_FUNCTION_497();
      sub_1C70265F0();
      sub_1C70265F0();
LABEL_60:
      v83 = v143 + v134;
      v86 = v138 - 1;
      v87 = v137 + v134;
      if (++v145 == v135)
      {
        v145 = v135;
        v51 = i;
        v52 = v130;
        goto LABEL_62;
      }

      goto LABEL_49;
    }

    v89 = sub_1C7551DBC();
    OUTLINED_FUNCTION_497();
    sub_1C70265F0();
    sub_1C70265F0();
    if ((v89 & 1) == 0)
    {
      goto LABEL_60;
    }

    if (!v81)
    {
      break;
    }

    sub_1C70267FC();
    OUTLINED_FUNCTION_225();
    swift_arrayInitWithTakeFrontToBack();
    sub_1C70267FC();
    v83 += v85;
    v87 += v85;
    v77 = __CFADD__(v86++, 1);
    v23 = v153;
    if (v77)
    {
      goto LABEL_60;
    }
  }

  __break(1u);
LABEL_144:
  __break(1u);
LABEL_145:
  __break(1u);
LABEL_146:
  __break(1u);
LABEL_147:
  __break(1u);
LABEL_148:
  __break(1u);
}

void sub_1C701E6D8(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v4 = a3[1];
  if (v4 < 1)
  {
    v6 = MEMORY[0x1E69E7CC0];
LABEL_100:
    v146 = *a1;
    if (!v146)
    {
      goto LABEL_142;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_102;
    }

    goto LABEL_136;
  }

  v5 = 0;
  v6 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v7 = v5;
    v8 = v5 + 1;
    if (v5 + 1 < v4)
    {
      v9 = *a3;
      v10 = *a3 + 40 * v8;
      v11 = *(v10 + 8);
      v12 = *(v10 + 16);
      v13 = *(v10 + 24);
      v14 = *(v10 + 25);
      v15 = *(v10 + 32);
      v140 = *v10;
      v141 = v11;
      v142 = v12;
      v143 = v13;
      v144 = v14;
      v145 = v15;
      v16 = v9 + 40 * v5;
      v17 = *(v16 + 8);
      v18 = *(v16 + 16);
      v19 = *(v16 + 24);
      v20 = *(v16 + 25);
      v21 = *(v16 + 32);
      v136[0] = *v16;
      v136[1] = v17;
      v136[2] = v18;
      v137 = v19;
      v138 = v20;
      v139 = v21;
      sub_1C75504FC();
      sub_1C75504FC();
      sub_1C75504FC();
      sub_1C75504FC();
      v127 = sub_1C7017BB4(&v140, v136);
      if (v130)
      {

LABEL_110:

        return;
      }

      v123 = v4;
      v22 = v9 + 40 * v7 + 72;
      v23 = v7 + 2;
      v125 = v6;
      while (1)
      {
        v24 = v23;
        if (v8 + 1 >= v4)
        {
          break;
        }

        v25 = *(v22 + 8);
        v26 = *(v22 + 16);
        v27 = *(v22 - 24);
        v133 = *(v22 - 32);
        v28 = *v22;
        v140 = 0;
        v141 = 0xE000000000000000;
        v146 = v28;
        sub_1C75504FC();
        sub_1C75504FC();
        sub_1C75504FC();
        sub_1C75504FC();
        sub_1C755180C();

        v140 = 0xD000000000000010;
        v141 = 0x80000001C7599970;
        MEMORY[0x1CCA5CD70](v25, v26);
        v30 = v140;
        v29 = v141;
        v140 = 0;
        v141 = 0xE000000000000000;
        sub_1C755180C();

        v140 = 0xD000000000000010;
        v141 = 0x80000001C7599970;
        MEMORY[0x1CCA5CD70](v133, v27);
        if (v30 == v140 && v29 == v141)
        {
          v32 = 0;
        }

        else
        {
          v32 = sub_1C7551DBC();
        }

        v22 += 40;
        ++v8;
        v23 = v24 + 1;
        v4 = v123;
        v6 = v125;
        if ((v127 ^ v32))
        {
          goto LABEL_16;
        }
      }

      v8 = v4;
LABEL_16:
      if (v127)
      {
        if (v8 < v7)
        {
          goto LABEL_135;
        }

        if (v7 < v8)
        {
          if (v4 >= v24)
          {
            v33 = v24;
          }

          else
          {
            v33 = v4;
          }

          v34 = 40 * v33 - 16;
          v35 = 40 * v7 + 32;
          v36 = v8;
          v37 = v7;
          do
          {
            if (v37 != --v36)
            {
              v38 = *a3;
              if (!*a3)
              {
                goto LABEL_140;
              }

              v39 = (v38 + v35);
              v40 = *(v38 + v35 - 32);
              v41 = v38 + v34;
              v42 = *(v39 - 2);
              v43 = *(v39 - 8);
              v44 = *(v39 - 7);
              v45 = *v39;
              v46 = *(v41 + 8);
              v47 = *(v41 - 8);
              *(v39 - 2) = *(v41 - 24);
              *(v39 - 1) = v47;
              *v39 = v46;
              *(v41 - 24) = v40;
              *(v41 - 8) = v42;
              *v41 = v43;
              *(v41 + 1) = v44;
              *(v41 + 8) = v45;
            }

            ++v37;
            v34 -= 40;
            v35 += 40;
          }

          while (v37 < v36);
        }
      }
    }

    v48 = a3[1];
    if (v8 < v48)
    {
      if (__OFSUB__(v8, v7))
      {
        goto LABEL_132;
      }

      if (v8 - v7 < a4)
      {
        break;
      }
    }

LABEL_48:
    if (v8 < v7)
    {
      goto LABEL_131;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1C6FB17EC();
      v6 = v110;
    }

    v68 = *(v6 + 2);
    v69 = v68 + 1;
    if (v68 >= *(v6 + 3) >> 1)
    {
      sub_1C6FB17EC();
      v6 = v111;
    }

    *(v6 + 2) = v69;
    v70 = v6 + 32;
    v71 = &v6[16 * v68 + 32];
    *v71 = v7;
    *(v71 + 1) = v8;
    v72 = *a1;
    if (!*a1)
    {
      goto LABEL_141;
    }

    v132 = v8;
    if (v68)
    {
      while (1)
      {
        v73 = v69 - 1;
        v74 = &v70[16 * v69 - 16];
        v75 = &v6[16 * v69];
        if (v69 >= 4)
        {
          break;
        }

        if (v69 == 3)
        {
          v76 = *(v6 + 4);
          v77 = *(v6 + 5);
          v86 = __OFSUB__(v77, v76);
          v78 = v77 - v76;
          v79 = v86;
LABEL_68:
          if (v79)
          {
            goto LABEL_118;
          }

          v91 = *v75;
          v90 = *(v75 + 1);
          v92 = __OFSUB__(v90, v91);
          v93 = v90 - v91;
          v94 = v92;
          if (v92)
          {
            goto LABEL_121;
          }

          v95 = *(v74 + 1);
          v96 = v95 - *v74;
          if (__OFSUB__(v95, *v74))
          {
            goto LABEL_124;
          }

          if (__OFADD__(v93, v96))
          {
            goto LABEL_126;
          }

          if (v93 + v96 >= v78)
          {
            if (v78 < v96)
            {
              v73 = v69 - 2;
            }

            goto LABEL_90;
          }

          goto LABEL_83;
        }

        if (v69 < 2)
        {
          goto LABEL_120;
        }

        v98 = *v75;
        v97 = *(v75 + 1);
        v86 = __OFSUB__(v97, v98);
        v93 = v97 - v98;
        v94 = v86;
LABEL_83:
        if (v94)
        {
          goto LABEL_123;
        }

        v100 = *v74;
        v99 = *(v74 + 1);
        v86 = __OFSUB__(v99, v100);
        v101 = v99 - v100;
        if (v86)
        {
          goto LABEL_125;
        }

        if (v101 < v93)
        {
          goto LABEL_97;
        }

LABEL_90:
        if (v73 - 1 >= v69)
        {
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
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
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
          goto LABEL_134;
        }

        if (!*a3)
        {
          goto LABEL_138;
        }

        v105 = &v70[16 * v73 - 16];
        v106 = *v105;
        v107 = &v70[16 * v73];
        v108 = *(v107 + 1);
        sub_1C702466C((*a3 + 40 * *v105), (*a3 + 40 * *v107), *a3 + 40 * v108, v72);
        if (v130)
        {
          goto LABEL_110;
        }

        if (v108 < v106)
        {
          goto LABEL_113;
        }

        v109 = *(v6 + 2);
        if (v73 > v109)
        {
          goto LABEL_114;
        }

        *v105 = v106;
        *(v105 + 1) = v108;
        if (v73 >= v109)
        {
          goto LABEL_115;
        }

        v69 = v109 - 1;
        sub_1C7423CF4(v107 + 16, v109 - 1 - v73, &v70[16 * v73]);
        *(v6 + 2) = v109 - 1;
        if (v109 <= 2)
        {
          goto LABEL_97;
        }
      }

      v80 = &v70[16 * v69];
      v81 = *(v80 - 8);
      v82 = *(v80 - 7);
      v86 = __OFSUB__(v82, v81);
      v83 = v82 - v81;
      if (v86)
      {
        goto LABEL_116;
      }

      v85 = *(v80 - 6);
      v84 = *(v80 - 5);
      v86 = __OFSUB__(v84, v85);
      v78 = v84 - v85;
      v79 = v86;
      if (v86)
      {
        goto LABEL_117;
      }

      v87 = *(v75 + 1);
      v88 = v87 - *v75;
      if (__OFSUB__(v87, *v75))
      {
        goto LABEL_119;
      }

      v86 = __OFADD__(v78, v88);
      v89 = v78 + v88;
      if (v86)
      {
        goto LABEL_122;
      }

      if (v89 >= v83)
      {
        v103 = *v74;
        v102 = *(v74 + 1);
        v86 = __OFSUB__(v102, v103);
        v104 = v102 - v103;
        if (v86)
        {
          goto LABEL_130;
        }

        if (v78 < v104)
        {
          v73 = v69 - 2;
        }

        goto LABEL_90;
      }

      goto LABEL_68;
    }

LABEL_97:
    v4 = a3[1];
    v5 = v132;
    if (v132 >= v4)
    {
      goto LABEL_100;
    }
  }

  v49 = v7 + a4;
  if (__OFADD__(v7, a4))
  {
    goto LABEL_133;
  }

  if (v49 >= v48)
  {
    v49 = a3[1];
  }

  if (v49 < v7)
  {
LABEL_134:
    __break(1u);
LABEL_135:
    __break(1u);
LABEL_136:
    v6 = sub_1C7420830();
LABEL_102:
    v112 = v6 + 16;
    v113 = *(v6 + 2);
    while (v113 >= 2)
    {
      if (!*a3)
      {
        goto LABEL_139;
      }

      v114 = v6;
      v115 = &v6[16 * v113];
      v116 = *v115;
      v117 = &v112[2 * v113];
      v118 = *(v117 + 1);
      sub_1C702466C((*a3 + 40 * *v115), (*a3 + 40 * *v117), *a3 + 40 * v118, v146);
      if (v130)
      {
        break;
      }

      if (v118 < v116)
      {
        goto LABEL_127;
      }

      if (v113 - 2 >= *v112)
      {
        goto LABEL_128;
      }

      *v115 = v116;
      *(v115 + 1) = v118;
      v119 = *v112 - v113;
      if (*v112 < v113)
      {
        goto LABEL_129;
      }

      v113 = *v112 - 1;
      sub_1C7423CF4(v117 + 16, v119, v117);
      *v112 = v113;
      v6 = v114;
    }

    goto LABEL_110;
  }

  if (v8 == v49)
  {
    goto LABEL_48;
  }

  v126 = v6;
  v134 = *a3;
  v50 = *a3 + 40 * v8 - 40;
  v51 = v7 - v8;
  v122 = v49;
LABEL_36:
  v131 = v8;
  v52 = (v134 + 40 * v8);
  v53 = *v52;
  v54 = v52[1];
  v124 = v51;
  v55 = v51;
  v128 = v50;
  v56 = v50;
  while (1)
  {
    v135 = v55;
    v57 = *(v56 + 8);
    v146 = *v56;
    v140 = 0;
    v141 = 0xE000000000000000;
    sub_1C75504FC();
    sub_1C75504FC();
    sub_1C75504FC();
    sub_1C75504FC();
    sub_1C755180C();

    v140 = 0xD000000000000010;
    v141 = 0x80000001C7599970;
    MEMORY[0x1CCA5CD70](v53, v54);
    v58 = v140;
    v59 = v141;
    v140 = 0;
    v141 = 0xE000000000000000;
    sub_1C755180C();

    v140 = 0xD000000000000010;
    v141 = 0x80000001C7599970;
    MEMORY[0x1CCA5CD70](v146, v57);
    if (v58 == v140 && v59 == v141)
    {

LABEL_46:
      v8 = v131 + 1;
      v50 = v128 + 40;
      v51 = v124 - 1;
      if (v131 + 1 == v122)
      {
        v8 = v122;
        v6 = v126;
        goto LABEL_48;
      }

      goto LABEL_36;
    }

    v61 = sub_1C7551DBC();

    if ((v61 & 1) == 0)
    {
      goto LABEL_46;
    }

    if (!v134)
    {
      break;
    }

    v54 = *(v56 + 48);
    v62 = *(v56 + 56);
    v63 = *(v56 + 16);
    v64 = *(v56 + 32);
    v53 = *(v56 + 40);
    *(v56 + 40) = *v56;
    v65 = *(v56 + 64);
    v66 = *(v56 + 65);
    v67 = *(v56 + 72);
    *(v56 + 56) = v63;
    *(v56 + 72) = v64;
    *v56 = v53;
    *(v56 + 8) = v54;
    *(v56 + 16) = v62;
    *(v56 + 24) = v65;
    *(v56 + 25) = v66;
    *(v56 + 32) = v67;
    v56 -= 40;
    v55 = v135 + 1;
    if (v135 == -1)
    {
      goto LABEL_46;
    }
  }

  __break(1u);
LABEL_138:
  __break(1u);
LABEL_139:
  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
}

void sub_1C701F010(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v99 = MEMORY[0x1E69E7CC0];
  v5 = a3[1];
  if (v5 >= 1)
  {
    v98 = v4;
    v6 = 0;
    v7 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v8 = v6++;
      if (v6 < v5)
      {
        v9 = *a3;
        v10 = (*a3 + 40 * v6);
        v11 = *v10;
        v12 = v10[1];
        v13 = (*a3 + 40 * v8);
        if (v11 == *v13 && v12 == v13[1])
        {
          v15 = 0;
        }

        else
        {
          v15 = sub_1C7551DBC();
        }

        v6 = v8 + 2;
        v16 = (v9 + 40 * v8 + 88);
        while (v6 < v5)
        {
          if (*(v16 - 1) == *(v16 - 6) && *v16 == *(v16 - 5))
          {
            if (v15)
            {
              goto LABEL_21;
            }
          }

          else if ((v15 ^ sub_1C7551DBC()))
          {
            break;
          }

          ++v6;
          v16 += 5;
        }

        if ((v15 & 1) == 0)
        {
          goto LABEL_28;
        }

LABEL_21:
        if (v6 < v8)
        {
          goto LABEL_122;
        }

        if (v8 < v6)
        {
          v18 = 40 * v6 - 16;
          v19 = 40 * v8 + 32;
          v20 = v6;
          v21 = v8;
          do
          {
            if (v21 != --v20)
            {
              v22 = *a3;
              if (!*a3)
              {
                goto LABEL_127;
              }

              v23 = (v22 + v19);
              v24 = *(v22 + v19 - 32);
              v25 = v22 + v18;
              v26 = *(v23 - 2);
              v27 = *(v23 - 8);
              v28 = *(v23 - 7);
              v29 = *v23;
              v30 = *(v25 + 8);
              v31 = *(v25 - 8);
              *(v23 - 2) = *(v25 - 24);
              *(v23 - 1) = v31;
              *v23 = v30;
              *(v25 - 24) = v24;
              *(v25 - 8) = v26;
              *v25 = v27;
              *(v25 + 1) = v28;
              *(v25 + 8) = v29;
            }

            ++v21;
            v18 -= 40;
            v19 += 40;
          }

          while (v21 < v20);
        }
      }

LABEL_28:
      v32 = a3[1];
      if (v6 < v32)
      {
        if (__OFSUB__(v6, v8))
        {
          goto LABEL_121;
        }

        if (v6 - v8 < a4)
        {
          if (__OFADD__(v8, a4))
          {
            goto LABEL_123;
          }

          if (v8 + a4 >= v32)
          {
            v33 = a3[1];
          }

          else
          {
            v33 = v8 + a4;
          }

          if (v33 < v8)
          {
LABEL_124:
            __break(1u);
LABEL_125:
            __break(1u);
LABEL_126:
            __break(1u);
LABEL_127:
            __break(1u);
LABEL_128:
            __break(1u);
LABEL_129:
            __break(1u);
            return;
          }

          if (v6 != v33)
          {
            v34 = *a3;
            v35 = *a3 + 40 * v6 - 40;
            v36 = v8 - v6;
            do
            {
              v37 = (v34 + 40 * v6);
              v38 = *v37;
              v39 = v37[1];
              v40 = v36;
              v41 = v35;
              do
              {
                v42 = v38 == *v41 && v39 == *(v41 + 8);
                if (v42 || (sub_1C7551DBC() & 1) == 0)
                {
                  break;
                }

                if (!v34)
                {
                  goto LABEL_125;
                }

                v39 = *(v41 + 48);
                v43 = *(v41 + 56);
                v44 = *(v41 + 16);
                v45 = *(v41 + 32);
                v38 = *(v41 + 40);
                *(v41 + 40) = *v41;
                v46 = *(v41 + 64);
                v47 = *(v41 + 65);
                v48 = *(v41 + 72);
                *(v41 + 56) = v44;
                *(v41 + 72) = v45;
                *v41 = v38;
                *(v41 + 8) = v39;
                *(v41 + 16) = v43;
                *(v41 + 24) = v46;
                *(v41 + 25) = v47;
                *(v41 + 32) = v48;
                v41 -= 40;
              }

              while (!__CFADD__(v40++, 1));
              ++v6;
              v35 += 40;
              --v36;
            }

            while (v6 != v33);
            v6 = v33;
          }
        }
      }

      if (v6 < v8)
      {
        goto LABEL_120;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1C6FB17EC();
        v7 = v92;
      }

      v50 = v7[2];
      v51 = v50 + 1;
      if (v50 >= v7[3] >> 1)
      {
        sub_1C6FB17EC();
        v7 = v93;
      }

      v7[2] = v51;
      v52 = v7 + 4;
      v53 = &v7[2 * v50 + 4];
      *v53 = v8;
      v53[1] = v6;
      v96 = *a1;
      if (!*a1)
      {
        goto LABEL_128;
      }

      if (v50)
      {
        while (1)
        {
          v54 = v51 - 1;
          v55 = &v52[2 * v51 - 2];
          v56 = &v7[2 * v51];
          if (v51 >= 4)
          {
            break;
          }

          if (v51 == 3)
          {
            v57 = v7[4];
            v58 = v7[5];
            v67 = __OFSUB__(v58, v57);
            v59 = v58 - v57;
            v60 = v67;
LABEL_69:
            if (v60)
            {
              goto LABEL_110;
            }

            v72 = *v56;
            v71 = v56[1];
            v73 = __OFSUB__(v71, v72);
            v74 = v71 - v72;
            v75 = v73;
            if (v73)
            {
              goto LABEL_113;
            }

            v76 = v55[1];
            v77 = v76 - *v55;
            if (__OFSUB__(v76, *v55))
            {
              goto LABEL_116;
            }

            if (__OFADD__(v74, v77))
            {
              goto LABEL_118;
            }

            if (v74 + v77 >= v59)
            {
              if (v59 < v77)
              {
                v54 = v51 - 2;
              }

              goto LABEL_91;
            }

            goto LABEL_84;
          }

          if (v51 < 2)
          {
            goto LABEL_112;
          }

          v79 = *v56;
          v78 = v56[1];
          v67 = __OFSUB__(v78, v79);
          v74 = v78 - v79;
          v75 = v67;
LABEL_84:
          if (v75)
          {
            goto LABEL_115;
          }

          v81 = *v55;
          v80 = v55[1];
          v67 = __OFSUB__(v80, v81);
          v82 = v80 - v81;
          if (v67)
          {
            goto LABEL_117;
          }

          if (v82 < v74)
          {
            goto LABEL_98;
          }

LABEL_91:
          if (v54 - 1 >= v51)
          {
            __break(1u);
LABEL_105:
            __break(1u);
LABEL_106:
            __break(1u);
LABEL_107:
            __break(1u);
LABEL_108:
            __break(1u);
LABEL_109:
            __break(1u);
LABEL_110:
            __break(1u);
LABEL_111:
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
LABEL_122:
            __break(1u);
LABEL_123:
            __break(1u);
            goto LABEL_124;
          }

          if (!*a3)
          {
            goto LABEL_126;
          }

          v86 = v7;
          v87 = &v52[2 * v54 - 2];
          v88 = *v87;
          v89 = &v52[2 * v54];
          v90 = v89[1];
          sub_1C70228EC((*a3 + 40 * *v87), (*a3 + 40 * *v89), *a3 + 40 * v90, v96);
          if (v98)
          {
            goto LABEL_103;
          }

          if (v90 < v88)
          {
            goto LABEL_105;
          }

          v91 = v86[2];
          if (v54 > v91)
          {
            goto LABEL_106;
          }

          *v87 = v88;
          v87[1] = v90;
          if (v54 >= v91)
          {
            goto LABEL_107;
          }

          v51 = v91 - 1;
          memmove(&v52[2 * v54], v89 + 2, 16 * (v91 - 1 - v54));
          v7 = v86;
          v86[2] = v91 - 1;
          if (v91 <= 2)
          {
            goto LABEL_98;
          }
        }

        v61 = &v52[2 * v51];
        v62 = *(v61 - 8);
        v63 = *(v61 - 7);
        v67 = __OFSUB__(v63, v62);
        v64 = v63 - v62;
        if (v67)
        {
          goto LABEL_108;
        }

        v66 = *(v61 - 6);
        v65 = *(v61 - 5);
        v67 = __OFSUB__(v65, v66);
        v59 = v65 - v66;
        v60 = v67;
        if (v67)
        {
          goto LABEL_109;
        }

        v68 = v56[1];
        v69 = v68 - *v56;
        if (__OFSUB__(v68, *v56))
        {
          goto LABEL_111;
        }

        v67 = __OFADD__(v59, v69);
        v70 = v59 + v69;
        if (v67)
        {
          goto LABEL_114;
        }

        if (v70 >= v64)
        {
          v84 = *v55;
          v83 = v55[1];
          v67 = __OFSUB__(v83, v84);
          v85 = v83 - v84;
          if (v67)
          {
            goto LABEL_119;
          }

          if (v59 < v85)
          {
            v54 = v51 - 2;
          }

          goto LABEL_91;
        }

        goto LABEL_69;
      }

LABEL_98:
      v5 = a3[1];
      if (v6 >= v5)
      {
        v99 = v7;
        break;
      }
    }
  }

  if (!*a1)
  {
    goto LABEL_129;
  }

  sub_1C7021F04(&v99, *a1, a3);
LABEL_103:
}

void sub_1C701F574(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unint64_t a10)
{
  OUTLINED_FUNCTION_124();
  v130 = v13;
  v136 = v14;
  v15 = v14[1];
  if (v15 < 1)
  {
    v17 = MEMORY[0x1E69E7CC0];
LABEL_95:
    OUTLINED_FUNCTION_555(v130);
    if (!v119)
    {
      goto LABEL_136;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_97:
      v120 = v17;
      v121 = (v17 + 16);
      for (i = *(v17 + 2); i >= 2; *v121 = i)
      {
        if (!*v136)
        {
          goto LABEL_133;
        }

        v123 = &v120[16 * i];
        v124 = *v123;
        v125 = &v121[2 * i];
        v126 = *(v125 + 1);
        sub_1C7024AC8(*v136 + 56 * *v123, *v136 + 56 * *v125, *v136 + 56 * v126, a10);
        if (v10)
        {
          break;
        }

        if (v126 < v124)
        {
          goto LABEL_121;
        }

        if (i - 2 >= *v121)
        {
          goto LABEL_122;
        }

        *v123 = v124;
        *(v123 + 1) = v126;
        v127 = *v121 - i;
        if (*v121 < i)
        {
          goto LABEL_123;
        }

        i = *v121 - 1;
        sub_1C7423CF4(v125 + 16, v127, v125);
      }

LABEL_105:

      OUTLINED_FUNCTION_125();
      return;
    }

LABEL_130:
    v17 = sub_1C7420830();
    goto LABEL_97;
  }

  v128 = v12;
  v16 = 0;
  v17 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v18 = v16;
    v19 = v16 + 1;
    v131 = v16;
    if (v16 + 1 < v15)
    {
      v134 = v15;
      v20 = *v136;
      OUTLINED_FUNCTION_260_0(*v136 + 56 * v19);
      OUTLINED_FUNCTION_581(v21);
      v24 = OUTLINED_FUNCTION_260_0(v20 + v23 * v22);
      v156 = v25;
      *(v26 + 144) = v27;
      *(v26 + 160) = v28;
      *(v26 + 128) = v24;
      v30 = v154;
      v29 = v155;
      OUTLINED_FUNCTION_258();
      OUTLINED_FUNCTION_234();
      v146.n128_u64[0] = v11;
      v146.n128_u64[1] = v31;
      sub_1C70260B4(v152, v150);
      sub_1C70260B4(v153, v150);
      v32 = OUTLINED_FUNCTION_323();
      MEMORY[0x1CCA5CD70](v32);
      v33 = v146;
      OUTLINED_FUNCTION_234();
      *&v150[0] = v11;
      *(&v150[0] + 1) = v34;
      MEMORY[0x1CCA5CD70](v30, v29);
      v35 = v33.n128_u64[0] == *&v150[0] && v33.n128_u64[1] == *(&v150[0] + 1);
      v129 = v17;
      if (v35)
      {
        v140 = 0;
      }

      else
      {
        OUTLINED_FUNCTION_323();
        v140 = OUTLINED_FUNCTION_385();
      }

      sub_1C70260EC(v153);
      sub_1C70260EC(v152);
      v36 = v20 + 56 * v131 + 112;
      a10 = 56 * v131;
      v37 = 56 * v131 + 56;
      do
      {
        v38 = v19;
        v39 = v37;
        v137 = v19 + 1;
        if (v19 + 1 >= v134)
        {
          break;
        }

        v40 = OUTLINED_FUNCTION_272();
        v149 = v41;
        v147 = v42;
        v148 = v43;
        v146 = v40;
        v44 = OUTLINED_FUNCTION_574();
        v151 = v45;
        v150[1] = v46;
        v150[2] = v47;
        v150[0] = v44;
        v48 = v147;
        v11 = v46;
        OUTLINED_FUNCTION_36_5();
        v144 = v49;
        OUTLINED_FUNCTION_234();
        v145 = v50;
        sub_1C70260B4(&v146, &v142);
        sub_1C70260B4(v150, &v142);
        MEMORY[0x1CCA5CD70](v48, *(&v48 + 1));
        v52 = v144;
        v51 = v145;
        OUTLINED_FUNCTION_36_5();
        v142 = v53;
        OUTLINED_FUNCTION_234();
        v143 = v54;
        v55 = OUTLINED_FUNCTION_35_0();
        MEMORY[0x1CCA5CD70](v55);
        v56 = v52 == v142 && v51 == v143;
        v57 = v56 ? 0 : OUTLINED_FUNCTION_385();

        sub_1C70260EC(v150);
        sub_1C70260EC(&v146);
        v36 += 56;
        ++v19;
        v37 = v39 + 56;
      }

      while (((v140 ^ v57) & 1) == 0);
      v17 = v129;
      if ((v140 & 1) == 0)
      {
        v19 = v137;
LABEL_29:
        v18 = v131;
        goto LABEL_30;
      }

      v19 = v137;
      v58 = v131;
      if (v137 < v131)
      {
        goto LABEL_127;
      }

      if (v131 <= v38)
      {
        do
        {
          if (v58 != v38)
          {
            v59 = *v136;
            if (!*v136)
            {
              goto LABEL_134;
            }

            v60 = (v59 + a10);
            v61 = *(v59 + a10 + 48);
            v62 = (v59 + v39);
            v64 = v60[1];
            v63 = v60[2];
            v65 = *v60;
            v67 = v62[1];
            v66 = v62[2];
            v68 = *v62;
            *(v60 + 6) = *(v62 + 6);
            v60[1] = v67;
            v60[2] = v66;
            *v60 = v68;
            *v62 = v65;
            v62[1] = v64;
            v62[2] = v63;
            *(v62 + 6) = v61;
          }

          ++v58;
          v39 -= 56;
          a10 += 56;
        }

        while (v58 < v38--);
        goto LABEL_29;
      }

      v18 = v131;
    }

LABEL_30:
    v70 = v136[1];
    if (v19 < v70)
    {
      if (__OFSUB__(v19, v18))
      {
        goto LABEL_126;
      }

      if (v19 - v18 < v128)
      {
        break;
      }
    }

LABEL_51:
    if (v19 < v18)
    {
      goto LABEL_125;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      OUTLINED_FUNCTION_13_13();
      sub_1C6FB17EC();
      v17 = v117;
    }

    v92 = *(v17 + 2);
    v93 = v92 + 1;
    v139 = v19;
    if (v92 >= *(v17 + 3) >> 1)
    {
      OUTLINED_FUNCTION_131_0();
      sub_1C6FB17EC();
      v17 = v118;
    }

    *(v17 + 2) = v93;
    v94 = v17 + 32;
    v95 = &v17[16 * v92 + 32];
    *v95 = v131;
    *(v95 + 1) = v139;
    OUTLINED_FUNCTION_555(v130);
    if (!v96)
    {
      goto LABEL_135;
    }

    if (v92)
    {
      while (1)
      {
        v97 = v93 - 1;
        if (v93 >= 4)
        {
          break;
        }

        if (v93 == 3)
        {
          OUTLINED_FUNCTION_553();
LABEL_66:
          if (v98)
          {
            goto LABEL_112;
          }

          OUTLINED_FUNCTION_548();
          if (v99)
          {
            goto LABEL_115;
          }

          OUTLINED_FUNCTION_546();
          if (v99)
          {
            goto LABEL_118;
          }

          if (__OFADD__(v104, v107))
          {
            goto LABEL_120;
          }

          if (v104 + v107 >= v105)
          {
            if (v105 < v107)
            {
              v97 = v93 - 2;
            }

            goto LABEL_85;
          }

          goto LABEL_78;
        }

        if (v93 < 2)
        {
          goto LABEL_114;
        }

        OUTLINED_FUNCTION_545();
        v106 = v99;
LABEL_78:
        if (v106)
        {
          goto LABEL_117;
        }

        OUTLINED_FUNCTION_544();
        if (v99)
        {
          goto LABEL_119;
        }

        if (v108 < v109)
        {
          goto LABEL_92;
        }

LABEL_85:
        if (v97 - 1 >= v93)
        {
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
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
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
          goto LABEL_129;
        }

        if (!*v136)
        {
          goto LABEL_132;
        }

        v112 = v17;
        v113 = &v94[16 * v97 - 16];
        v11 = *v113;
        v114 = &v94[16 * v97];
        v115 = *(v114 + 1);
        sub_1C7024AC8(*v136 + 56 * *v113, *v136 + 56 * *v114, *v136 + 56 * v115, a10);
        if (v10)
        {
          goto LABEL_105;
        }

        if (v115 < v11)
        {
          goto LABEL_107;
        }

        v116 = *(v112 + 2);
        if (v97 > v116)
        {
          goto LABEL_108;
        }

        *v113 = v11;
        v113[1] = v115;
        if (v97 >= v116)
        {
          goto LABEL_109;
        }

        v93 = v116 - 1;
        sub_1C7423CF4(v114 + 16, v116 - 1 - v97, &v94[16 * v97]);
        v17 = v112;
        *(v112 + 2) = v116 - 1;
        if (v116 <= 2)
        {
          goto LABEL_92;
        }
      }

      OUTLINED_FUNCTION_551();
      if (v99)
      {
        goto LABEL_110;
      }

      OUTLINED_FUNCTION_550();
      if (v99)
      {
        goto LABEL_111;
      }

      OUTLINED_FUNCTION_549();
      if (v99)
      {
        goto LABEL_113;
      }

      v99 = __OFADD__(v100, v102);
      v103 = v100 + v102;
      if (v99)
      {
        goto LABEL_116;
      }

      if (v103 >= v101)
      {
        OUTLINED_FUNCTION_543();
        if (v99)
        {
          goto LABEL_124;
        }

        if (v111 < v110)
        {
          v97 = v93 - 2;
        }

        goto LABEL_85;
      }

      goto LABEL_66;
    }

LABEL_92:
    v16 = v139;
    v15 = v136[1];
    if (v139 >= v15)
    {
      goto LABEL_95;
    }
  }

  v71 = v18 + v128;
  if (__OFADD__(v18, v128))
  {
    goto LABEL_128;
  }

  if (v71 >= v70)
  {
    v71 = v136[1];
  }

  if (v71 < v18)
  {
LABEL_129:
    __break(1u);
    goto LABEL_130;
  }

  if (v19 == v71)
  {
    goto LABEL_51;
  }

  v141 = *v136;
  v72 = *v136 + 56 * v19;
  v73 = v18 - v19 + 1;
  v132 = v71;
LABEL_39:
  v138 = v19;
  v133 = v73;
  a10 = v73;
  v135 = v72;
  while (1)
  {
    OUTLINED_FUNCTION_581(*(v72 + 48));
    v74 = *(v72 - 56);
    v75 = *(v72 - 40);
    v76 = *(v72 - 24);
    v156 = *(v72 - 8);
    v77[9] = v75;
    v77[10] = v76;
    v77[8] = v74;
    v78 = v152[2];
    v11 = v152[3];
    v79 = v154;
    v80 = v155;
    OUTLINED_FUNCTION_234();
    v146.n128_u64[0] = 0x6E6F697461636F4CLL;
    v146.n128_u64[1] = v81;
    sub_1C70260B4(v152, v150);
    sub_1C70260B4(v153, v150);
    MEMORY[0x1CCA5CD70](v78, v11);
    v82 = v146;
    OUTLINED_FUNCTION_234();
    *&v150[0] = 0x6E6F697461636F4CLL;
    *(&v150[0] + 1) = v83;
    MEMORY[0x1CCA5CD70](v79, v80);
    if (v82.n128_u64[0] == *&v150[0] && v82.n128_u64[1] == *(&v150[0] + 1))
    {

      sub_1C70260EC(v153);
      sub_1C70260EC(v152);
LABEL_49:
      v19 = v138 + 1;
      v72 = v135 + 56;
      v73 = v133 - 1;
      if (v138 + 1 == v132)
      {
        v19 = v132;
        v18 = v131;
        goto LABEL_51;
      }

      goto LABEL_39;
    }

    v85 = OUTLINED_FUNCTION_342();

    sub_1C70260EC(v153);
    sub_1C70260EC(v152);
    if ((v85 & 1) == 0)
    {
      goto LABEL_49;
    }

    if (!v141)
    {
      break;
    }

    v86 = v72 - 56;
    v87 = *(v72 + 48);
    v89 = *(v72 + 16);
    v88 = *(v72 + 32);
    v90 = *v72;
    v91 = *(v72 - 40);
    *v72 = *(v72 - 56);
    *(v72 + 16) = v91;
    *(v72 + 32) = *(v72 - 24);
    *(v72 + 48) = *(v72 - 8);
    *v86 = v90;
    *(v86 + 16) = v89;
    *(v86 + 32) = v88;
    *(v86 + 48) = v87;
    if (!a10)
    {
      goto LABEL_49;
    }

    ++a10;
    v72 -= 56;
  }

  __break(1u);
LABEL_132:
  __break(1u);
LABEL_133:
  __break(1u);
LABEL_134:
  __break(1u);
LABEL_135:
  __break(1u);
LABEL_136:
  __break(1u);
}

void sub_1C701FD8C(uint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v82 = MEMORY[0x1E69E7CC0];
  v6 = a3[1];
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v9 = v7;
      v10 = v7 + 1;
      if (v7 + 1 < v6)
      {
        v11 = *a3;
        v12 = (*a3 + 56 * v10);
        v13 = *v12;
        v14 = v12[1];
        v15 = (*a3 + 56 * v9);
        if (v13 == *v15 && v14 == v15[1])
        {
          v17 = 0;
        }

        else
        {
          v17 = sub_1C7551DBC();
        }

        v10 = v9 + 2;
        v18 = 56 * v9;
        v19 = (v11 + 56 * v9 + 120);
        while (v10 < v6)
        {
          if (*(v19 - 1) == *(v19 - 8) && *v19 == *(v19 - 7))
          {
            if (v17)
            {
              goto LABEL_21;
            }
          }

          else if ((v17 ^ sub_1C7551DBC()))
          {
            break;
          }

          ++v10;
          v19 += 7;
        }

        if ((v17 & 1) == 0)
        {
          goto LABEL_28;
        }

LABEL_21:
        if (v10 < v9)
        {
          goto LABEL_114;
        }

        if (v9 < v10)
        {
          v21 = 56 * v10 - 56;
          v22 = v10;
          v23 = v9;
          do
          {
            if (v23 != --v22)
            {
              v24 = *a3;
              if (!*a3)
              {
                goto LABEL_119;
              }

              v25 = (v24 + v18);
              v26 = *(v24 + v18 + 48);
              v27 = (v24 + v21);
              v29 = v25[1];
              v28 = v25[2];
              v30 = *v25;
              v32 = v27[1];
              v31 = v27[2];
              v33 = *v27;
              *(v25 + 6) = *(v27 + 6);
              v25[1] = v32;
              v25[2] = v31;
              *v25 = v33;
              *v27 = v30;
              v27[1] = v29;
              v27[2] = v28;
              *(v27 + 6) = v26;
            }

            ++v23;
            v21 -= 56;
            v18 += 56;
          }

          while (v23 < v22);
        }
      }

LABEL_28:
      v34 = a3[1];
      if (v10 < v34)
      {
        if (__OFSUB__(v10, v9))
        {
          goto LABEL_113;
        }

        if (v10 - v9 < a4)
        {
          if (__OFADD__(v9, a4))
          {
            goto LABEL_115;
          }

          v80 = v5;
          if (v9 + a4 >= v34)
          {
            v35 = a3[1];
          }

          else
          {
            v35 = v9 + a4;
          }

          if (v35 < v9)
          {
LABEL_116:
            __break(1u);
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
            return;
          }

          if (v10 != v35)
          {
            v36 = *a3;
            v37 = *a3 + 56 * v10;
            v79 = v9;
            v38 = v9 - v10;
            do
            {
              v39 = v38;
              v40 = v37;
              do
              {
                v41 = v40 - 56;
                v42 = *v40 == *(v40 - 56) && *(v40 + 8) == *(v40 - 48);
                if (v42 || (sub_1C7551DBC() & 1) == 0)
                {
                  break;
                }

                if (!v36)
                {
                  goto LABEL_117;
                }

                v43 = *(v40 + 48);
                v45 = *(v40 + 16);
                v44 = *(v40 + 32);
                v46 = *v40;
                v47 = *(v40 - 40);
                *v40 = *v41;
                *(v40 + 16) = v47;
                *(v40 + 32) = *(v40 - 24);
                *(v40 + 48) = *(v40 - 8);
                *v41 = v46;
                *(v40 - 40) = v45;
                *(v40 - 24) = v44;
                v40 -= 56;
                *(v41 + 48) = v43;
              }

              while (!__CFADD__(v39++, 1));
              ++v10;
              v37 += 56;
              --v38;
            }

            while (v10 != v35);
            v10 = v35;
            v9 = v79;
          }

          v5 = v80;
        }
      }

      if (v10 < v9)
      {
        goto LABEL_112;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_24_0();
        sub_1C6FB17EC();
        v8 = v75;
      }

      v49 = *(v8 + 16);
      v50 = v49 + 1;
      if (v49 >= *(v8 + 24) >> 1)
      {
        OUTLINED_FUNCTION_137_0();
        sub_1C6FB17EC();
        v8 = v76;
      }

      *(v8 + 16) = v50;
      v51 = v8 + 32;
      v52 = (v8 + 32 + 16 * v49);
      *v52 = v9;
      v52[1] = v10;
      if (!*a1)
      {
        goto LABEL_120;
      }

      if (v49)
      {
        while (1)
        {
          v53 = v50 - 1;
          if (v50 >= 4)
          {
            break;
          }

          if (v50 == 3)
          {
            OUTLINED_FUNCTION_553();
LABEL_65:
            if (v54)
            {
              goto LABEL_102;
            }

            OUTLINED_FUNCTION_548();
            if (v55)
            {
              goto LABEL_105;
            }

            OUTLINED_FUNCTION_546();
            if (v55)
            {
              goto LABEL_108;
            }

            if (__OFADD__(v60, v63))
            {
              goto LABEL_110;
            }

            if (v60 + v63 >= v61)
            {
              if (v61 < v63)
              {
                v53 = v50 - 2;
              }

              goto LABEL_84;
            }

            goto LABEL_77;
          }

          if (v50 < 2)
          {
            goto LABEL_104;
          }

          OUTLINED_FUNCTION_545();
          v62 = v55;
LABEL_77:
          if (v62)
          {
            goto LABEL_107;
          }

          OUTLINED_FUNCTION_544();
          if (v55)
          {
            goto LABEL_109;
          }

          if (v64 < v65)
          {
            goto LABEL_91;
          }

LABEL_84:
          if (v53 - 1 >= v50)
          {
            __break(1u);
LABEL_97:
            __break(1u);
LABEL_98:
            __break(1u);
LABEL_99:
            __break(1u);
LABEL_100:
            __break(1u);
LABEL_101:
            __break(1u);
LABEL_102:
            __break(1u);
LABEL_103:
            __break(1u);
LABEL_104:
            __break(1u);
LABEL_105:
            __break(1u);
LABEL_106:
            __break(1u);
LABEL_107:
            __break(1u);
LABEL_108:
            __break(1u);
LABEL_109:
            __break(1u);
LABEL_110:
            __break(1u);
LABEL_111:
            __break(1u);
LABEL_112:
            __break(1u);
LABEL_113:
            __break(1u);
LABEL_114:
            __break(1u);
LABEL_115:
            __break(1u);
            goto LABEL_116;
          }

          if (!*a3)
          {
            goto LABEL_118;
          }

          v68 = (v51 + 16 * (v53 - 1));
          v69 = *v68;
          v70 = v51 + 16 * v53;
          v71 = *(v70 + 8);
          sub_1C7024E74();
          if (v5)
          {
            goto LABEL_95;
          }

          if (v71 < v69)
          {
            goto LABEL_97;
          }

          v72 = v8;
          v73 = *(v8 + 16);
          if (v53 > v73)
          {
            goto LABEL_98;
          }

          *v68 = v69;
          v68[1] = v71;
          if (v53 >= v73)
          {
            goto LABEL_99;
          }

          v50 = v73 - 1;
          memmove((v51 + 16 * v53), (v70 + 16), 16 * (v73 - 1 - v53));
          *(v72 + 16) = v73 - 1;
          v74 = v73 > 2;
          v8 = v72;
          v5 = 0;
          if (!v74)
          {
            goto LABEL_91;
          }
        }

        OUTLINED_FUNCTION_551();
        if (v55)
        {
          goto LABEL_100;
        }

        OUTLINED_FUNCTION_550();
        if (v55)
        {
          goto LABEL_101;
        }

        OUTLINED_FUNCTION_549();
        if (v55)
        {
          goto LABEL_103;
        }

        v55 = __OFADD__(v56, v58);
        v59 = v56 + v58;
        if (v55)
        {
          goto LABEL_106;
        }

        if (v59 >= v57)
        {
          OUTLINED_FUNCTION_543();
          if (v55)
          {
            goto LABEL_111;
          }

          if (v67 < v66)
          {
            v53 = v50 - 2;
          }

          goto LABEL_84;
        }

        goto LABEL_65;
      }

LABEL_91:
      v6 = a3[1];
      v7 = v10;
      if (v10 >= v6)
      {
        v82 = v8;
        break;
      }
    }
  }

  if (!*a1)
  {
    goto LABEL_121;
  }

  sub_1C70222A0(&v82, *a1, a3);
LABEL_95:
}

void sub_1C70202C4(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v4 = a3[1];
  if (v4 < 1)
  {
    v6 = MEMORY[0x1E69E7CC0];
LABEL_103:
    v124 = *a1;
    if (!v124)
    {
      goto LABEL_144;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_105:
      v91 = v6 + 16;
      v92 = *(v6 + 2);
      while (v92 >= 2)
      {
        if (!*a3)
        {
          goto LABEL_141;
        }

        v93 = v6;
        v94 = &v6[16 * v92];
        v95 = *v94;
        v96 = &v91[2 * v92];
        v97 = *(v96 + 1);
        sub_1C702501C((*a3 + 72 * *v94), (*a3 + 72 * *v96), (*a3 + 72 * v97), v124);
        if (v113)
        {
          break;
        }

        if (v97 < v95)
        {
          goto LABEL_129;
        }

        if (v92 - 2 >= *v91)
        {
          goto LABEL_130;
        }

        *v94 = v95;
        *(v94 + 1) = v97;
        v98 = *v91 - v92;
        if (*v91 < v92)
        {
          goto LABEL_131;
        }

        v92 = *v91 - 1;
        sub_1C7423CF4(v96 + 16, v98, v96);
        *v91 = v92;
        v6 = v93;
      }

LABEL_113:

      return;
    }

LABEL_138:
    v6 = sub_1C7420830();
    goto LABEL_105;
  }

  v5 = 0;
  v6 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v7 = v5;
    v8 = v5 + 1;
    if (v5 + 1 >= v4)
    {
      v17 = v5 + 1;
    }

    else
    {
      v114 = v4;
      v100 = v6;
      v9 = *a3;
      memcpy(__dst, (*a3 + 72 * v8), 0x42uLL);
      v103 = v7;
      memcpy(v123, (v9 + 72 * v7), 0x42uLL);
      v10 = __dst[4];
      v11 = __dst[5];
      v13 = v123[4];
      v12 = v123[5];
      v120[0] = 980706640;
      v120[1] = 0xE400000000000000;
      sub_1C7025FF8(__dst, __src);
      sub_1C7025FF8(v123, __src);
      MEMORY[0x1CCA5CD70](v10, v11);
      v14 = v120[0];
      v15 = v120[1];
      __src[0] = 980706640;
      __src[1] = 0xE400000000000000;
      MEMORY[0x1CCA5CD70](v13, v12);
      v16 = v14 == __src[0] && v15 == __src[1];
      LODWORD(v124) = v16 ? 0 : sub_1C7551DBC();

      sub_1C7026030(v123);
      sub_1C7026030(__dst);
      v18 = (v9 + 72 * v7 + 144);
      v107 = 72 * v7;
      v19 = 72 * v7 + 72;
      do
      {
        v20 = v8;
        v21 = v19;
        v110 = v8 + 1;
        if (v8 + 1 >= v114)
        {
          break;
        }

        memcpy(v120, v18, 0x42uLL);
        memcpy(__src, v18 - 72, 0x42uLL);
        v22 = v120[4];
        v23 = v120[5];
        v24 = __src[4];
        v25 = __src[5];
        v118 = 980706640;
        v119 = 0xE400000000000000;
        sub_1C7025FF8(v120, &v116);
        sub_1C7025FF8(__src, &v116);
        MEMORY[0x1CCA5CD70](v22, v23);
        v26 = v118;
        v27 = v119;
        v116 = 980706640;
        v117 = 0xE400000000000000;
        MEMORY[0x1CCA5CD70](v24, v25);
        v28 = v26 == v116 && v27 == v117;
        v29 = v28 ? 0 : sub_1C7551DBC();

        sub_1C7026030(__src);
        sub_1C7026030(v120);
        v18 += 72;
        v8 = v20 + 1;
        v19 = v21 + 72;
      }

      while (((v124 ^ v29) & 1) == 0);
      if (v124)
      {
        v7 = v103;
        v6 = v100;
        if (v110 < v103)
        {
          goto LABEL_135;
        }

        if (v103 <= v20)
        {
          v30 = v103;
          v31 = v107;
          do
          {
            if (v30 != v20)
            {
              v32 = *a3;
              if (!*a3)
              {
                goto LABEL_142;
              }

              memcpy(__src, (v32 + v31), 0x42uLL);
              memmove((v32 + v31), (v32 + v21), 0x48uLL);
              memcpy((v32 + v21), __src, 0x42uLL);
            }

            ++v30;
            v21 -= 72;
            v31 += 72;
          }

          while (v30 < v20--);
        }

        v17 = v110;
      }

      else
      {
        v6 = v100;
        v17 = v110;
        v7 = v103;
      }
    }

    v34 = a3[1];
    if (v17 < v34)
    {
      if (__OFSUB__(v17, v7))
      {
        goto LABEL_134;
      }

      if (v17 - v7 < a4)
      {
        break;
      }
    }

LABEL_51:
    if (v17 < v7)
    {
      goto LABEL_133;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1C6FB17EC();
      v6 = v89;
    }

    v47 = *(v6 + 2);
    v48 = v47 + 1;
    v112 = v17;
    if (v47 >= *(v6 + 3) >> 1)
    {
      sub_1C6FB17EC();
      v6 = v90;
    }

    *(v6 + 2) = v48;
    v49 = v6 + 32;
    v50 = &v6[16 * v47 + 32];
    *v50 = v7;
    *(v50 + 1) = v112;
    v124 = *a1;
    if (!v124)
    {
      goto LABEL_143;
    }

    if (v47)
    {
      while (1)
      {
        v51 = v48 - 1;
        v52 = &v49[16 * v48 - 16];
        v53 = &v6[16 * v48];
        if (v48 >= 4)
        {
          break;
        }

        if (v48 == 3)
        {
          v54 = *(v6 + 4);
          v55 = *(v6 + 5);
          v64 = __OFSUB__(v55, v54);
          v56 = v55 - v54;
          v57 = v64;
LABEL_71:
          if (v57)
          {
            goto LABEL_120;
          }

          v69 = *v53;
          v68 = *(v53 + 1);
          v70 = __OFSUB__(v68, v69);
          v71 = v68 - v69;
          v72 = v70;
          if (v70)
          {
            goto LABEL_123;
          }

          v73 = *(v52 + 1);
          v74 = v73 - *v52;
          if (__OFSUB__(v73, *v52))
          {
            goto LABEL_126;
          }

          if (__OFADD__(v71, v74))
          {
            goto LABEL_128;
          }

          if (v71 + v74 >= v56)
          {
            if (v56 < v74)
            {
              v51 = v48 - 2;
            }

            goto LABEL_93;
          }

          goto LABEL_86;
        }

        if (v48 < 2)
        {
          goto LABEL_122;
        }

        v76 = *v53;
        v75 = *(v53 + 1);
        v64 = __OFSUB__(v75, v76);
        v71 = v75 - v76;
        v72 = v64;
LABEL_86:
        if (v72)
        {
          goto LABEL_125;
        }

        v78 = *v52;
        v77 = *(v52 + 1);
        v64 = __OFSUB__(v77, v78);
        v79 = v77 - v78;
        if (v64)
        {
          goto LABEL_127;
        }

        if (v79 < v71)
        {
          goto LABEL_100;
        }

LABEL_93:
        if (v51 - 1 >= v48)
        {
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
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
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
          goto LABEL_137;
        }

        if (!*a3)
        {
          goto LABEL_140;
        }

        v83 = v6;
        v84 = &v49[16 * v51 - 16];
        v85 = *v84;
        v86 = &v49[16 * v51];
        v87 = *(v86 + 1);
        sub_1C702501C((*a3 + 72 * *v84), (*a3 + 72 * *v86), (*a3 + 72 * v87), v124);
        if (v113)
        {
          goto LABEL_113;
        }

        if (v87 < v85)
        {
          goto LABEL_115;
        }

        v88 = *(v83 + 2);
        if (v51 > v88)
        {
          goto LABEL_116;
        }

        *v84 = v85;
        *(v84 + 1) = v87;
        if (v51 >= v88)
        {
          goto LABEL_117;
        }

        v48 = v88 - 1;
        sub_1C7423CF4(v86 + 16, v88 - 1 - v51, &v49[16 * v51]);
        v6 = v83;
        *(v83 + 2) = v88 - 1;
        if (v88 <= 2)
        {
          goto LABEL_100;
        }
      }

      v58 = &v49[16 * v48];
      v59 = *(v58 - 8);
      v60 = *(v58 - 7);
      v64 = __OFSUB__(v60, v59);
      v61 = v60 - v59;
      if (v64)
      {
        goto LABEL_118;
      }

      v63 = *(v58 - 6);
      v62 = *(v58 - 5);
      v64 = __OFSUB__(v62, v63);
      v56 = v62 - v63;
      v57 = v64;
      if (v64)
      {
        goto LABEL_119;
      }

      v65 = *(v53 + 1);
      v66 = v65 - *v53;
      if (__OFSUB__(v65, *v53))
      {
        goto LABEL_121;
      }

      v64 = __OFADD__(v56, v66);
      v67 = v56 + v66;
      if (v64)
      {
        goto LABEL_124;
      }

      if (v67 >= v61)
      {
        v81 = *v52;
        v80 = *(v52 + 1);
        v64 = __OFSUB__(v80, v81);
        v82 = v80 - v81;
        if (v64)
        {
          goto LABEL_132;
        }

        if (v56 < v82)
        {
          v51 = v48 - 2;
        }

        goto LABEL_93;
      }

      goto LABEL_71;
    }

LABEL_100:
    v5 = v112;
    v4 = a3[1];
    if (v112 >= v4)
    {
      goto LABEL_103;
    }
  }

  v35 = v7 + a4;
  if (__OFADD__(v7, a4))
  {
    goto LABEL_136;
  }

  if (v35 >= v34)
  {
    v35 = a3[1];
  }

  if (v35 < v7)
  {
LABEL_137:
    __break(1u);
    goto LABEL_138;
  }

  if (v17 == v35)
  {
    goto LABEL_51;
  }

  v101 = v6;
  v115 = *a3;
  v36 = (*a3 + 72 * v17);
  v104 = v7;
  v105 = v35;
  v37 = (v7 - v17 + 1);
LABEL_39:
  v111 = v17;
  v106 = v37;
  v124 = v37;
  v108 = v36;
  while (1)
  {
    memcpy(__dst, v36, 0x42uLL);
    memcpy(v123, v36 - 72, 0x42uLL);
    v38 = __dst[4];
    v39 = __dst[5];
    v41 = v123[4];
    v40 = v123[5];
    v120[0] = 980706640;
    v120[1] = 0xE400000000000000;
    sub_1C7025FF8(__dst, __src);
    sub_1C7025FF8(v123, __src);
    MEMORY[0x1CCA5CD70](v38, v39);
    v42 = v120[0];
    v43 = v120[1];
    __src[0] = 980706640;
    __src[1] = 0xE400000000000000;
    MEMORY[0x1CCA5CD70](v41, v40);
    if (v42 == __src[0] && v43 == __src[1])
    {

      sub_1C7026030(v123);
      sub_1C7026030(__dst);
LABEL_49:
      v17 = v111 + 1;
      v36 = v108 + 72;
      v37 = v106 - 1;
      if (v111 + 1 == v105)
      {
        v17 = v105;
        v6 = v101;
        v7 = v104;
        goto LABEL_51;
      }

      goto LABEL_39;
    }

    v45 = sub_1C7551DBC();

    sub_1C7026030(v123);
    sub_1C7026030(__dst);
    v46 = v124;
    if ((v45 & 1) == 0)
    {
      goto LABEL_49;
    }

    if (!v115)
    {
      break;
    }

    memcpy(__src, v36, 0x42uLL);
    memcpy(v36, v36 - 72, 0x48uLL);
    memcpy(v36 - 72, __src, 0x42uLL);
    if (!v46)
    {
      goto LABEL_49;
    }

    v124 = v46 + 1;
    v36 -= 72;
  }

  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
LABEL_144:
  __break(1u);
}

void sub_1C7020B60(uint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v81 = MEMORY[0x1E69E7CC0];
  v5 = a3[1];
  if (v5 >= 1)
  {
    v6 = 0;
    v7 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v8 = v6++;
      if (v6 < v5)
      {
        v9 = *a3;
        v10 = (*a3 + 72 * v6);
        v11 = *v10;
        v12 = v10[1];
        v13 = (*a3 + 72 * v8);
        if (v11 == *v13 && v12 == v13[1])
        {
          v15 = 0;
        }

        else
        {
          v15 = sub_1C7551DBC();
        }

        v6 = v8 + 2;
        v16 = 72 * v8;
        v17 = (v9 + 72 * v8 + 152);
        while (v6 < v5)
        {
          if (*(v17 - 1) == *(v17 - 10) && *v17 == *(v17 - 9))
          {
            if (v15)
            {
              goto LABEL_21;
            }
          }

          else if ((v15 ^ sub_1C7551DBC()))
          {
            break;
          }

          ++v6;
          v17 += 9;
        }

        if ((v15 & 1) == 0)
        {
          goto LABEL_28;
        }

LABEL_21:
        if (v6 < v8)
        {
          goto LABEL_122;
        }

        if (v8 < v6)
        {
          v19 = 72 * v6 - 72;
          v20 = v6;
          v21 = v8;
          do
          {
            if (v21 != --v20)
            {
              v22 = *a3;
              if (!*a3)
              {
                goto LABEL_127;
              }

              memcpy(__dst, (v22 + v16), sizeof(__dst));
              memmove((v22 + v16), (v22 + v19), 0x48uLL);
              memcpy((v22 + v19), __dst, 0x42uLL);
            }

            ++v21;
            v19 -= 72;
            v16 += 72;
          }

          while (v21 < v20);
        }
      }

LABEL_28:
      v23 = a3[1];
      if (v6 < v23)
      {
        if (__OFSUB__(v6, v8))
        {
          goto LABEL_121;
        }

        if (v6 - v8 < a4)
        {
          if (__OFADD__(v8, a4))
          {
            goto LABEL_123;
          }

          if (v8 + a4 >= v23)
          {
            v24 = a3[1];
          }

          else
          {
            v24 = v8 + a4;
          }

          if (v24 < v8)
          {
LABEL_124:
            __break(1u);
LABEL_125:
            __break(1u);
LABEL_126:
            __break(1u);
LABEL_127:
            __break(1u);
LABEL_128:
            __break(1u);
LABEL_129:
            __break(1u);
            return;
          }

          if (v6 != v24)
          {
            v78 = v7;
            v25 = *a3;
            v26 = *a3 + 72 * v6;
            v27 = v8 - v6;
            do
            {
              v28 = v27;
              v29 = v26;
              do
              {
                v30 = *v29 == *(v29 - 9) && v29[1] == *(v29 - 8);
                if (v30 || (sub_1C7551DBC() & 1) == 0)
                {
                  break;
                }

                if (!v25)
                {
                  goto LABEL_125;
                }

                memcpy(__dst, v29, sizeof(__dst));
                memcpy(v29, v29 - 9, 0x48uLL);
                memcpy(v29 - 9, __dst, 0x42uLL);
                v29 -= 9;
              }

              while (!__CFADD__(v28++, 1));
              ++v6;
              v26 += 72;
              --v27;
            }

            while (v6 != v24);
            v6 = v24;
            v7 = v78;
          }
        }
      }

      if (v6 < v8)
      {
        goto LABEL_120;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1C6FB17EC();
        v7 = v74;
      }

      v32 = v7[2];
      v33 = v32 + 1;
      if (v32 >= v7[3] >> 1)
      {
        sub_1C6FB17EC();
        v7 = v75;
      }

      v7[2] = v33;
      v34 = v7 + 4;
      v35 = &v7[2 * v32 + 4];
      *v35 = v8;
      v35[1] = v6;
      if (!*a1)
      {
        goto LABEL_128;
      }

      if (v32)
      {
        while (1)
        {
          v36 = v33 - 1;
          v37 = &v34[2 * v33 - 2];
          v38 = &v7[2 * v33];
          if (v33 >= 4)
          {
            break;
          }

          if (v33 == 3)
          {
            v39 = v7[4];
            v40 = v7[5];
            v49 = __OFSUB__(v40, v39);
            v41 = v40 - v39;
            v42 = v49;
LABEL_69:
            if (v42)
            {
              goto LABEL_110;
            }

            v54 = *v38;
            v53 = v38[1];
            v55 = __OFSUB__(v53, v54);
            v56 = v53 - v54;
            v57 = v55;
            if (v55)
            {
              goto LABEL_113;
            }

            v58 = v37[1];
            v59 = v58 - *v37;
            if (__OFSUB__(v58, *v37))
            {
              goto LABEL_116;
            }

            if (__OFADD__(v56, v59))
            {
              goto LABEL_118;
            }

            if (v56 + v59 >= v41)
            {
              if (v41 < v59)
              {
                v36 = v33 - 2;
              }

              goto LABEL_91;
            }

            goto LABEL_84;
          }

          if (v33 < 2)
          {
            goto LABEL_112;
          }

          v61 = *v38;
          v60 = v38[1];
          v49 = __OFSUB__(v60, v61);
          v56 = v60 - v61;
          v57 = v49;
LABEL_84:
          if (v57)
          {
            goto LABEL_115;
          }

          v63 = *v37;
          v62 = v37[1];
          v49 = __OFSUB__(v62, v63);
          v64 = v62 - v63;
          if (v49)
          {
            goto LABEL_117;
          }

          if (v64 < v56)
          {
            goto LABEL_98;
          }

LABEL_91:
          if (v36 - 1 >= v33)
          {
            __break(1u);
LABEL_105:
            __break(1u);
LABEL_106:
            __break(1u);
LABEL_107:
            __break(1u);
LABEL_108:
            __break(1u);
LABEL_109:
            __break(1u);
LABEL_110:
            __break(1u);
LABEL_111:
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
LABEL_122:
            __break(1u);
LABEL_123:
            __break(1u);
            goto LABEL_124;
          }

          if (!*a3)
          {
            goto LABEL_126;
          }

          v68 = v7;
          v69 = &v34[2 * v36 - 2];
          v70 = *v69;
          v71 = &v34[2 * v36];
          v72 = v71[1];
          sub_1C7025784();
          if (v4)
          {
            goto LABEL_103;
          }

          if (v72 < v70)
          {
            goto LABEL_105;
          }

          v73 = v68[2];
          if (v36 > v73)
          {
            goto LABEL_106;
          }

          *v69 = v70;
          v69[1] = v72;
          if (v36 >= v73)
          {
            goto LABEL_107;
          }

          v33 = v73 - 1;
          memmove(&v34[2 * v36], v71 + 2, 16 * (v73 - 1 - v36));
          v7 = v68;
          v68[2] = v73 - 1;
          if (v73 <= 2)
          {
            goto LABEL_98;
          }
        }

        v43 = &v34[2 * v33];
        v44 = *(v43 - 8);
        v45 = *(v43 - 7);
        v49 = __OFSUB__(v45, v44);
        v46 = v45 - v44;
        if (v49)
        {
          goto LABEL_108;
        }

        v48 = *(v43 - 6);
        v47 = *(v43 - 5);
        v49 = __OFSUB__(v47, v48);
        v41 = v47 - v48;
        v42 = v49;
        if (v49)
        {
          goto LABEL_109;
        }

        v50 = v38[1];
        v51 = v50 - *v38;
        if (__OFSUB__(v50, *v38))
        {
          goto LABEL_111;
        }

        v49 = __OFADD__(v41, v51);
        v52 = v41 + v51;
        if (v49)
        {
          goto LABEL_114;
        }

        if (v52 >= v46)
        {
          v66 = *v37;
          v65 = v37[1];
          v49 = __OFSUB__(v65, v66);
          v67 = v65 - v66;
          if (v49)
          {
            goto LABEL_119;
          }

          if (v41 < v67)
          {
            v36 = v33 - 2;
          }

          goto LABEL_91;
        }

        goto LABEL_69;
      }

LABEL_98:
      v5 = a3[1];
      if (v6 >= v5)
      {
        v81 = v7;
        break;
      }
    }
  }

  if (!*a1)
  {
    goto LABEL_129;
  }

  sub_1C70223D4(&v81, *a1, a3);
LABEL_103:
}

void sub_1C70210D0(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v4 = a3[1];
  if (v4 < 1)
  {
    v6 = MEMORY[0x1E69E7CC0];
LABEL_103:
    v124 = *a1;
    if (!v124)
    {
      goto LABEL_144;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_105:
      v91 = v6 + 16;
      v92 = *(v6 + 2);
      while (v92 >= 2)
      {
        if (!*a3)
        {
          goto LABEL_141;
        }

        v93 = v6;
        v94 = &v6[16 * v92];
        v95 = *v94;
        v96 = &v91[2 * v92];
        v97 = *(v96 + 1);
        sub_1C70253C8((*a3 + 72 * *v94), (*a3 + 72 * *v96), (*a3 + 72 * v97), v124);
        if (v113)
        {
          break;
        }

        if (v97 < v95)
        {
          goto LABEL_129;
        }

        if (v92 - 2 >= *v91)
        {
          goto LABEL_130;
        }

        *v94 = v95;
        *(v94 + 1) = v97;
        v98 = *v91 - v92;
        if (*v91 < v92)
        {
          goto LABEL_131;
        }

        v92 = *v91 - 1;
        sub_1C7423CF4(v96 + 16, v98, v96);
        *v91 = v92;
        v6 = v93;
      }

LABEL_113:

      return;
    }

LABEL_138:
    v6 = sub_1C7420830();
    goto LABEL_105;
  }

  v5 = 0;
  v6 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v7 = v5;
    v8 = v5 + 1;
    if (v5 + 1 >= v4)
    {
      v17 = v5 + 1;
    }

    else
    {
      v114 = v4;
      v100 = v6;
      v9 = *a3;
      memcpy(__dst, (*a3 + 72 * v8), 0x41uLL);
      v103 = v7;
      memcpy(v123, (v9 + 72 * v7), 0x41uLL);
      v10 = __dst[4];
      v11 = __dst[5];
      v13 = v123[4];
      v12 = v123[5];
      v120[0] = 0x3A6E6F73726550;
      v120[1] = 0xE700000000000000;
      sub_1C7025F3C(__dst, __src);
      sub_1C7025F3C(v123, __src);
      MEMORY[0x1CCA5CD70](v10, v11);
      v14 = v120[0];
      v15 = v120[1];
      __src[0] = 0x3A6E6F73726550;
      __src[1] = 0xE700000000000000;
      MEMORY[0x1CCA5CD70](v13, v12);
      v16 = v14 == __src[0] && v15 == __src[1];
      LODWORD(v124) = v16 ? 0 : sub_1C7551DBC();

      sub_1C7025F74(v123);
      sub_1C7025F74(__dst);
      v18 = (v9 + 72 * v7 + 144);
      v107 = 72 * v7;
      v19 = 72 * v7 + 72;
      do
      {
        v20 = v8;
        v21 = v19;
        v110 = v8 + 1;
        if (v8 + 1 >= v114)
        {
          break;
        }

        memcpy(v120, v18, 0x41uLL);
        memcpy(__src, v18 - 72, 0x41uLL);
        v22 = v120[4];
        v23 = v120[5];
        v24 = __src[4];
        v25 = __src[5];
        v118 = 0x3A6E6F73726550;
        v119 = 0xE700000000000000;
        sub_1C7025F3C(v120, &v116);
        sub_1C7025F3C(__src, &v116);
        MEMORY[0x1CCA5CD70](v22, v23);
        v26 = v118;
        v27 = v119;
        v116 = 0x3A6E6F73726550;
        v117 = 0xE700000000000000;
        MEMORY[0x1CCA5CD70](v24, v25);
        v28 = v26 == v116 && v27 == v117;
        v29 = v28 ? 0 : sub_1C7551DBC();

        sub_1C7025F74(__src);
        sub_1C7025F74(v120);
        v18 += 72;
        v8 = v20 + 1;
        v19 = v21 + 72;
      }

      while (((v124 ^ v29) & 1) == 0);
      if (v124)
      {
        v7 = v103;
        v6 = v100;
        if (v110 < v103)
        {
          goto LABEL_135;
        }

        if (v103 <= v20)
        {
          v30 = v103;
          v31 = v107;
          do
          {
            if (v30 != v20)
            {
              v32 = *a3;
              if (!*a3)
              {
                goto LABEL_142;
              }

              memcpy(__src, (v32 + v31), 0x41uLL);
              memmove((v32 + v31), (v32 + v21), 0x48uLL);
              memcpy((v32 + v21), __src, 0x41uLL);
            }

            ++v30;
            v21 -= 72;
            v31 += 72;
          }

          while (v30 < v20--);
        }

        v17 = v110;
      }

      else
      {
        v6 = v100;
        v17 = v110;
        v7 = v103;
      }
    }

    v34 = a3[1];
    if (v17 < v34)
    {
      if (__OFSUB__(v17, v7))
      {
        goto LABEL_134;
      }

      if (v17 - v7 < a4)
      {
        break;
      }
    }

LABEL_51:
    if (v17 < v7)
    {
      goto LABEL_133;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1C6FB17EC();
      v6 = v89;
    }

    v47 = *(v6 + 2);
    v48 = v47 + 1;
    v112 = v17;
    if (v47 >= *(v6 + 3) >> 1)
    {
      sub_1C6FB17EC();
      v6 = v90;
    }

    *(v6 + 2) = v48;
    v49 = v6 + 32;
    v50 = &v6[16 * v47 + 32];
    *v50 = v7;
    *(v50 + 1) = v112;
    v124 = *a1;
    if (!v124)
    {
      goto LABEL_143;
    }

    if (v47)
    {
      while (1)
      {
        v51 = v48 - 1;
        v52 = &v49[16 * v48 - 16];
        v53 = &v6[16 * v48];
        if (v48 >= 4)
        {
          break;
        }

        if (v48 == 3)
        {
          v54 = *(v6 + 4);
          v55 = *(v6 + 5);
          v64 = __OFSUB__(v55, v54);
          v56 = v55 - v54;
          v57 = v64;
LABEL_71:
          if (v57)
          {
            goto LABEL_120;
          }

          v69 = *v53;
          v68 = *(v53 + 1);
          v70 = __OFSUB__(v68, v69);
          v71 = v68 - v69;
          v72 = v70;
          if (v70)
          {
            goto LABEL_123;
          }

          v73 = *(v52 + 1);
          v74 = v73 - *v52;
          if (__OFSUB__(v73, *v52))
          {
            goto LABEL_126;
          }

          if (__OFADD__(v71, v74))
          {
            goto LABEL_128;
          }

          if (v71 + v74 >= v56)
          {
            if (v56 < v74)
            {
              v51 = v48 - 2;
            }

            goto LABEL_93;
          }

          goto LABEL_86;
        }

        if (v48 < 2)
        {
          goto LABEL_122;
        }

        v76 = *v53;
        v75 = *(v53 + 1);
        v64 = __OFSUB__(v75, v76);
        v71 = v75 - v76;
        v72 = v64;
LABEL_86:
        if (v72)
        {
          goto LABEL_125;
        }

        v78 = *v52;
        v77 = *(v52 + 1);
        v64 = __OFSUB__(v77, v78);
        v79 = v77 - v78;
        if (v64)
        {
          goto LABEL_127;
        }

        if (v79 < v71)
        {
          goto LABEL_100;
        }

LABEL_93:
        if (v51 - 1 >= v48)
        {
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
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
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
          goto LABEL_137;
        }

        if (!*a3)
        {
          goto LABEL_140;
        }

        v83 = v6;
        v84 = &v49[16 * v51 - 16];
        v85 = *v84;
        v86 = &v49[16 * v51];
        v87 = *(v86 + 1);
        sub_1C70253C8((*a3 + 72 * *v84), (*a3 + 72 * *v86), (*a3 + 72 * v87), v124);
        if (v113)
        {
          goto LABEL_113;
        }

        if (v87 < v85)
        {
          goto LABEL_115;
        }

        v88 = *(v83 + 2);
        if (v51 > v88)
        {
          goto LABEL_116;
        }

        *v84 = v85;
        *(v84 + 1) = v87;
        if (v51 >= v88)
        {
          goto LABEL_117;
        }

        v48 = v88 - 1;
        sub_1C7423CF4(v86 + 16, v88 - 1 - v51, &v49[16 * v51]);
        v6 = v83;
        *(v83 + 2) = v88 - 1;
        if (v88 <= 2)
        {
          goto LABEL_100;
        }
      }

      v58 = &v49[16 * v48];
      v59 = *(v58 - 8);
      v60 = *(v58 - 7);
      v64 = __OFSUB__(v60, v59);
      v61 = v60 - v59;
      if (v64)
      {
        goto LABEL_118;
      }

      v63 = *(v58 - 6);
      v62 = *(v58 - 5);
      v64 = __OFSUB__(v62, v63);
      v56 = v62 - v63;
      v57 = v64;
      if (v64)
      {
        goto LABEL_119;
      }

      v65 = *(v53 + 1);
      v66 = v65 - *v53;
      if (__OFSUB__(v65, *v53))
      {
        goto LABEL_121;
      }

      v64 = __OFADD__(v56, v66);
      v67 = v56 + v66;
      if (v64)
      {
        goto LABEL_124;
      }

      if (v67 >= v61)
      {
        v81 = *v52;
        v80 = *(v52 + 1);
        v64 = __OFSUB__(v80, v81);
        v82 = v80 - v81;
        if (v64)
        {
          goto LABEL_132;
        }

        if (v56 < v82)
        {
          v51 = v48 - 2;
        }

        goto LABEL_93;
      }

      goto LABEL_71;
    }

LABEL_100:
    v5 = v112;
    v4 = a3[1];
    if (v112 >= v4)
    {
      goto LABEL_103;
    }
  }

  v35 = v7 + a4;
  if (__OFADD__(v7, a4))
  {
    goto LABEL_136;
  }

  if (v35 >= v34)
  {
    v35 = a3[1];
  }

  if (v35 < v7)
  {
LABEL_137:
    __break(1u);
    goto LABEL_138;
  }

  if (v17 == v35)
  {
    goto LABEL_51;
  }

  v101 = v6;
  v115 = *a3;
  v36 = (*a3 + 72 * v17);
  v104 = v7;
  v105 = v35;
  v37 = (v7 - v17 + 1);
LABEL_39:
  v111 = v17;
  v106 = v37;
  v124 = v37;
  v108 = v36;
  while (1)
  {
    memcpy(__dst, v36, 0x41uLL);
    memcpy(v123, v36 - 72, 0x41uLL);
    v38 = __dst[4];
    v39 = __dst[5];
    v41 = v123[4];
    v40 = v123[5];
    v120[0] = 0x3A6E6F73726550;
    v120[1] = 0xE700000000000000;
    sub_1C7025F3C(__dst, __src);
    sub_1C7025F3C(v123, __src);
    MEMORY[0x1CCA5CD70](v38, v39);
    v42 = v120[0];
    v43 = v120[1];
    __src[0] = 0x3A6E6F73726550;
    __src[1] = 0xE700000000000000;
    MEMORY[0x1CCA5CD70](v41, v40);
    if (v42 == __src[0] && v43 == __src[1])
    {

      sub_1C7025F74(v123);
      sub_1C7025F74(__dst);
LABEL_49:
      v17 = v111 + 1;
      v36 = v108 + 72;
      v37 = v106 - 1;
      if (v111 + 1 == v105)
      {
        v17 = v105;
        v6 = v101;
        v7 = v104;
        goto LABEL_51;
      }

      goto LABEL_39;
    }

    v45 = sub_1C7551DBC();

    sub_1C7025F74(v123);
    sub_1C7025F74(__dst);
    v46 = v124;
    if ((v45 & 1) == 0)
    {
      goto LABEL_49;
    }

    if (!v115)
    {
      break;
    }

    memcpy(__src, v36, 0x41uLL);
    memcpy(v36, v36 - 72, 0x48uLL);
    memcpy(v36 - 72, __src, 0x41uLL);
    if (!v46)
    {
      goto LABEL_49;
    }

    v124 = v46 + 1;
    v36 -= 72;
  }

  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
LABEL_144:
  __break(1u);
}