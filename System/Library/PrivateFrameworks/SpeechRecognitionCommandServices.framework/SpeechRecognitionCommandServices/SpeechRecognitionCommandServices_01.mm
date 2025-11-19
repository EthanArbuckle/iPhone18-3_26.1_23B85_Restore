SpeechRecognitionCommandServices::VCCommandCollection *sub_26B49E2DC()
{
  if (qword_280400400 != -1)
  {
    swift_once();
  }

  return &stru_280406DC8;
}

uint64_t sub_26B49E32C(unsigned int *a1)
{
  v2 = sub_26B5427B4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5, v6, v7);
  v9 = v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a1;
  sub_26B542794();
  v11 = sub_26B5427A4();
  v12 = *(v3 + 8);
  v12(v9, v2);
  if (v11)
  {
    goto LABEL_3;
  }

  sub_26B542784();
  v13 = sub_26B5427A4();
  v12(v9, v2);
  if (v13)
  {
    goto LABEL_3;
  }

  sub_26B542774();
  v15 = sub_26B5427A4();
  v12(v9, v2);
  if (v15)
  {
    if (v10 > 0x7F)
    {
      v23 = (v10 & 0x3F) << 8;
      if (v10 >= 0x800)
      {
        v26 = (v23 | (v10 >> 6) & 0x3F) << 8;
        v27 = (((v26 | (v10 >> 12) & 0x3F) << 8) | (v10 >> 18)) - 2122219023;
        v16 = (v10 >> 12) + v26 + 8487393;
        if (HIWORD(v10))
        {
          v16 = v27;
        }
      }

      else
      {
        v16 = (v10 >> 6) + v23 + 33217;
      }
    }

    else
    {
      v16 = v10 + 1;
    }

    v29 = (v16 + 0xFEFEFEFEFEFEFFLL) & ~(-1 << (8 * (4 - (__clz(v16) >> 3))));
    if (sub_26B542AD4() == 32 && v17 == 0xE100000000000000)
    {
    }

    else
    {
      v18 = sub_26B542FB4();

      if ((v18 & 1) == 0)
      {
LABEL_3:
        v29 = 8998;
        v30 = 0xE200000000000000;
        v28[3] = v10;
        v14 = sub_26B542F94();
        MEMORY[0x26D677BF0](v14);

        MEMORY[0x26D677BF0](59, 0xE100000000000000);
        MEMORY[0x26D677BF0](v29, v30);
      }
    }
  }

  if (v10 > 0x7F)
  {
    v22 = (v10 & 0x3F) << 8;
    if (v10 >= 0x800)
    {
      v24 = (v22 | (v10 >> 6) & 0x3F) << 8;
      v25 = (((v24 | (v10 >> 12) & 0x3F) << 8) | (v10 >> 18)) - 2122219023;
      v19 = (v10 >> 12) + v24 + 8487393;
      if (HIWORD(v10))
      {
        v19 = v25;
      }
    }

    else
    {
      v19 = (v10 >> 6) + v22 + 33217;
    }
  }

  else
  {
    v19 = v10 + 1;
  }

  v29 = (v19 + 0xFEFEFEFEFEFEFFLL) & ~(-1 << (8 * (4 - (__clz(v19) >> 3))));
  v20 = sub_26B542AD4();
  MEMORY[0x26D677BE0](v20);
}

uint64_t sub_26B49E688(uint64_t result, unint64_t a2)
{
  if ((a2 & 0x2000000000000000) != 0)
  {
    v3 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v3 = result & 0xFFFFFFFFFFFFLL;
  }

  if (v3)
  {
    v5 = result;
    v6 = 0;
    v7 = a2 & 0xFFFFFFFFFFFFFFLL;
    v8 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
    while (1)
    {
      if ((a2 & 0x1000000000000000) != 0)
      {
        v11 = sub_26B542D64();
        v13 = v12;
      }

      else
      {
        if ((a2 & 0x2000000000000000) != 0)
        {
          v15[0] = v5;
          v15[1] = v7;
          v10 = v15 + v6;
        }

        else
        {
          v9 = v8;
          if ((v5 & 0x1000000000000000) == 0)
          {
            v9 = sub_26B542DC4();
          }

          v10 = (v9 + v6);
        }

        v11 = *v10;
        if ((*v10 & 0x80000000) == 0)
        {
          goto LABEL_14;
        }

        v14 = (__clz(v11 ^ 0xFF) - 24);
        if (v14 > 2)
        {
          if (v14 == 3)
          {
            v11 = ((v11 & 0xF) << 12) | ((v10[1] & 0x3F) << 6) | v10[2] & 0x3F;
            v13 = 3;
          }

          else
          {
            v11 = ((v11 & 0xF) << 18) | ((v10[1] & 0x3F) << 12) | ((v10[2] & 0x3F) << 6) | v10[3] & 0x3F;
            v13 = 4;
          }

          goto LABEL_15;
        }

        if (v14 == 1)
        {
LABEL_14:
          v13 = 1;
        }

        else
        {
          v11 = v10[1] & 0x3F | ((v11 & 0x1F) << 6);
          v13 = 2;
        }
      }

LABEL_15:
      LODWORD(v15[0]) = v11;
      result = sub_26B49E32C(v15);
      if (!v2)
      {
        v6 += v13;
        if (v6 < v3)
        {
          continue;
        }
      }

      return result;
    }
  }

  return result;
}

uint64_t sub_26B49E80C(uint64_t result, uint64_t *a2)
{
  v3 = *(result + 16);
  if (v3)
  {
    for (i = (result + 73); ; i += 48)
    {
      v6 = *i;
      v7 = *(i - 1);
      v8 = *(i - 9);
      v9 = *(i - 17);
      v10 = *(i - 25);
      v11 = *(i - 33);
      v12[0] = *(i - 41);
      v12[1] = v11;
      v12[2] = v10;
      v12[3] = v9;
      v12[4] = v8;
      v13 = v7;
      v14 = v6;

      sub_26B49FB08(v12, a2);
      if (v2)
      {
        break;
      }

      if (!--v3)
      {
        return result;
      }
    }
  }

  return result;
}

uint64_t sub_26B49E8FC(uint64_t result, char **a2)
{
  v3 = v2;
  v4 = *(result + 16);
  if (v4)
  {
    v5 = v4 - 1;
    v6 = (result + 40);
    do
    {
      v7 = v5;
      v8 = *(v6 - 1);
      v9 = *v6;

      sub_26B49E688(v8, v9);
      MEMORY[0x26D677BF0](0, 0xE000000000000000);

      MEMORY[0x26D677BF0](10322146, 0xA300000000000000);
      sub_26B542D74();

      sub_26B49E688(10256610, 0xA300000000000000);

      MEMORY[0x26D677BF0](0, 0xE000000000000000);

      MEMORY[0x26D677BF0](1047080764, 0xE400000000000000);
      v10 = *a2;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *a2 = v10;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v10 = sub_26B4A2660(0, *(v10 + 2) + 1, 1, v10);
        *a2 = v10;
      }

      v13 = *(v10 + 2);
      v12 = *(v10 + 3);
      if (v13 >= v12 >> 1)
      {
        v10 = sub_26B4A2660((v12 > 1), v13 + 1, 1, v10);
        *a2 = v10;
      }

      *(v10 + 2) = v13 + 1;
      v14 = &v10[16 * v13];
      *(v14 + 4) = 0xD000000000000013;
      *(v14 + 5) = 0x800000026B560C50;

      if (v3)
      {
        break;
      }

      v5 = v7 - 1;
      v6 += 2;
    }

    while (v7);
  }

  return result;
}

uint64_t static VCCommandDocumentation.commandReferenceDocument(idioms:localeID:template:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v152 = a3;
  v151 = a2;
  v146 = a1;
  v7 = sub_26B542934();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8, v9, v10, v11);
  v148 = (&v138 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = sub_26B542A64();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8, v15, v16, v17);
  v147 = &v138 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_26B542AA4();
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8, v21, v22, v23);
  v24 = sub_26B542874();
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v24, v27, v28, v29);
  v31 = (&v138 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0));
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803FFCC8, &unk_26B5452B0);
  v33 = *(*(v32 - 8) + 64);
  v37 = MEMORY[0x28223BE20](v32 - 8, v34, v35, v36);
  v39 = &v138 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = MEMORY[0x28223BE20](v37, v40, v41, v42);
  v45 = &v138 - v44;
  MEMORY[0x28223BE20](v43, v46, v47, v48);
  v50 = &v138 - v49;
  if (a5)
  {
    sub_26B542854();
    (*(v25 + 56))(v50, 0, 1, v24);
  }

  else
  {
    v149 = v31;
    v150 = &v138 - v49;
    v51 = v24;
    sub_26B49F934();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v53 = [objc_opt_self() bundleForClass_];
    v54 = sub_26B542A74();
    v55 = sub_26B542A74();
    a4 = [v53 URLForResource:v54 withExtension:v55];

    if (a4)
    {
      sub_26B542864();

      v56 = *(v25 + 56);
      v57 = v45;
      v58 = 0;
    }

    else
    {

      v56 = *(v25 + 56);
      v57 = v45;
      v58 = 1;
    }

    v24 = v51;
    v56(v57, v58, 1, v51);
    v50 = v150;
    sub_26B49F980(v45, v150);
    v31 = v149;
  }

  sub_26B49F9F0(v50, v39);
  if ((*(v25 + 48))(v39, 1, v24) == 1)
  {
    v31 = &qword_2803FFCC8;
    sub_26B4A4CBC(v39, &qword_2803FFCC8, &unk_26B5452B0);
    sub_26B49FA60();
    swift_allocError();
    *v59 = 0xD000000000000023;
    v59[1] = 0x800000026B560AA0;
    swift_willThrow();
    v60 = v50;
LABEL_11:
    sub_26B4A4CBC(v60, &qword_2803FFCC8, &unk_26B5452B0);
    return v31;
  }

  (*(v25 + 32))(v31, v39, v24);
  sub_26B542A94();
  v61 = v153;
  v62 = sub_26B542A44();
  v64 = v61;
  if (v61)
  {
    (*(v25 + 8))(v31, v24);
    v60 = v50;
    goto LABEL_11;
  }

  v66 = v63;
  v149 = v31;
  v150 = v50;
  v143 = v25;
  v144 = v24;
  v67 = 0x3E79646F623CLL;
  v68 = v62;
  v154 = v62;
  v155 = v63;
  v162 = 0x3E79646F623CLL;
  v163 = 0xE600000000000000;
  v69 = sub_26B49FAB4();
  v70 = &v154;
  v71 = sub_26B542CD4();
  v72 = v71[2];
  if (v72)
  {
    a4 = 0x3E79646F622F3CLL;
    v73 = v71[4];
    v24 = v71[5];

    v154 = v73;
    v155 = v24;

    MEMORY[0x26D677BF0](0x3E79646F623CLL, 0xE600000000000000);

    v25 = v154;
    v67 = v155;
    v154 = v68;
    v155 = v66;
    v68 = 0xE700000000000000;
    v162 = 0x3E79646F622F3CLL;
    v163 = 0xE700000000000000;
    v74 = sub_26B542CD4();
    v72 = v74[2];
    if (v72 >= 2)
    {
      v75 = v74[6];
      v76 = v74[7];

      v154 = 0x3E79646F622F3CLL;
      v155 = 0xE700000000000000;
      MEMORY[0x26D677BF0](v75, v76);

      v68 = v154;
      a4 = v155;

      v69 = sub_26B4A2660(0, 1, 1, MEMORY[0x277D84F90]);
      v24 = *(v69 + 16);
      v72 = *(v69 + 24);
      v70 = (v24 + 1);
      if (v24 < v72 >> 1)
      {
        goto LABEL_16;
      }

      goto LABEL_54;
    }
  }

  else
  {
LABEL_52:
    __break(1u);
  }

  __break(1u);
LABEL_54:
  v69 = sub_26B4A2660((v72 > 1), v70, 1, v69);
LABEL_16:
  *(v69 + 16) = v70;
  v77 = v69 + 16 * v24;
  *(v77 + 32) = v25;
  *(v77 + 40) = v67;
  v78 = [objc_opt_self() supportedTargetTypes];
  v142 = v68;
  if (v78)
  {
    v79 = v78;
    v145 = sub_26B542C24();
  }

  else
  {
    v145 = 0;
  }

  v80 = [objc_opt_self() sharedSpokenCommandUtilities];
  if (!v80)
  {
    __break(1u);
LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

  v81 = v80;

  v82 = sub_26B542A74();
  v31 = [v81 commandStringsTableForLocaleIdentifier_];

  if (!v31)
  {

    sub_26B49FA60();
    swift_allocError();
    *v113 = 0xD000000000000021;
    v113[1] = 0x800000026B560AD0;
    swift_willThrow();
    (*(v143 + 8))(v149, v144);
    sub_26B4A4CBC(v150, &qword_2803FFCC8, &unk_26B5452B0);

    return v31;
  }

  v161 = sub_26B4A4978(MEMORY[0x277D84F90]);
  valid = AllValidCommandParameterIdentifiers();
  if (!valid)
  {
    goto LABEL_56;
  }

  v141 = a4;
  v84 = valid;
  objc_opt_self();
  swift_dynamicCastObjCClassUnconditional();
  v154 = 0;
  sub_26B542C54();
  v85 = v154;
  if (!v154)
  {
LABEL_57:
    __break(1u);
    goto LABEL_58;
  }

  v86 = v145;

  v87 = v31;
  sub_26B4A4624(v85, v87, v86, &v161);
  v88 = v64;

  v140 = v87;

  sub_26B542A54();
  sub_26B5428F4();
  v89 = sub_26B542AB4();
  v91 = v90;
  sub_26B542A54();
  sub_26B5428F4();
  v64 = sub_26B542AB4();
  v93 = v92;
  v154 = 1043425340;
  v155 = 0xE400000000000000;
  v162 = 0;
  v163 = 0xE000000000000000;
  sub_26B49E688(v89, v91);
  v67 = v88;

  MEMORY[0x26D677BF0](v162, v163);

  MEMORY[0x26D677BF0](0x3E31682F3CLL, 0xE500000000000000);
  v94 = v154;
  v95 = v155;
  v68 = *(v69 + 16);
  v96 = *(v69 + 24);
  if (v68 >= v96 >> 1)
  {
    v69 = sub_26B4A2660((v96 > 1), v68 + 1, 1, v69);
  }

  *(v69 + 16) = v68 + 1;
  v97 = v69 + 16 * v68;
  *(v97 + 32) = v94;
  *(v97 + 40) = v95;
  v154 = 4091964;
  v155 = 0xE300000000000000;
  v162 = 0;
  v163 = 0xE000000000000000;
  sub_26B49E688(v64, v93);
  v147 = v67;

  MEMORY[0x26D677BF0](v162, v163);

  MEMORY[0x26D677BF0](1047539516, 0xE400000000000000);
  v25 = v154;
  v98 = v155;
  v100 = *(v69 + 16);
  v99 = *(v69 + 24);
  v70 = (v100 + 1);
  if (v100 >= v99 >> 1)
  {
    v69 = sub_26B4A2660((v99 > 1), v100 + 1, 1, v69);
  }

  *(v69 + 16) = v70;
  v101 = v69 + 16 * v100;
  *(v101 + 32) = v25;
  *(v101 + 40) = v98;
  v164 = v69;
  v102 = static VCCommandCollection.allCommandCollections.getter();
  v103 = *(v102 + 16);
  if (v103)
  {
    v24 = 0;
    v104 = v102 + 73;
    v148 = MEMORY[0x277D84F90];
    v153 = v102;
    v139 = v103;
    v138 = v102 + 73;
    do
    {
      a4 = v104 + 48 * v24;
      v69 = v103 - v24;
      while (1)
      {
        v72 = *(v102 + 16);
        if (v24 >= v72)
        {
          __break(1u);
          goto LABEL_52;
        }

        v105 = *(a4 - 41);
        v67 = *(a4 - 33);
        v68 = *(a4 - 17);
        v64 = *(a4 - 9);
        v106 = *(a4 - 1);
        v25 = *a4;
        v151 = *(a4 - 25);
        v152 = v105;
        v154 = v105;
        v155 = v67;
        v156 = v151;
        v157 = v68;
        v158 = v64;
        v159 = v106;
        v160 = v25;

        v70 = &v154;
        if ((VCCommandCollection.isCustom.getter() & 1) == 0)
        {
          if (v106)
          {
            break;
          }
        }

        a4 += 48;
        ++v24;
        --v69;
        v102 = v153;
        if (!v69)
        {
          goto LABEL_42;
        }
      }

      v70 = v148;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v162 = v70;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_26B4A2100(0, v70[2] + 1, 1);
        v70 = v162;
      }

      v109 = v70[2];
      v108 = v70[3];
      v110 = v109 + 1;
      if (v109 >= v108 >> 1)
      {
        v148 = (v109 + 1);
        sub_26B4A2100((v108 > 1), v109 + 1, 1);
        v110 = v148;
        v70 = v162;
      }

      ++v24;
      v70[2] = v110;
      v148 = v70;
      v111 = &v70[6 * v109];
      v112 = v151;
      v111[4] = v152;
      v111[5] = v67;
      v111[6] = v112;
      v111[7] = v68;
      v111[8] = v64;
      *(v111 + 72) = v106;
      *(v111 + 73) = v25;
      v102 = v153;
      v103 = v139;
      v104 = v138;
    }

    while (v69 != 1);
  }

  else
  {
    v148 = MEMORY[0x277D84F90];
  }

LABEL_42:

  v115 = v147;
  v114 = v148;
  sub_26B49E80C(v148, &v164);
  v116 = v115;
  v117 = *(v114 + 16);
  v118 = v140;
  v119 = v145;

  v120 = v146;

  if (!v117)
  {
LABEL_46:

    swift_bridgeObjectRelease_n();
    v128 = v164;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v128 = sub_26B4A2660(0, *(v128 + 2) + 1, 1, v128);
    }

    v129 = v150;
    v130 = v142;
    v132 = *(v128 + 2);
    v131 = *(v128 + 3);
    if (v132 >= v131 >> 1)
    {
      v128 = sub_26B4A2660((v131 > 1), v132 + 1, 1, v128);
    }

    *(v128 + 2) = v132 + 1;
    v133 = &v128[16 * v132];
    v134 = v141;
    *(v133 + 4) = v130;
    *(v133 + 5) = v134;
    v154 = v128;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803FFCE8, &unk_26B5454F0);
    sub_26B4A4A8C();
    v135 = sub_26B5429D4();
    v137 = v136;

    v31 = sub_26B4A14D4(v135, v137);

    (*(v143 + 8))(v149, v144);
    sub_26B4A4CBC(v129, &qword_2803FFCC8, &unk_26B5452B0);

    return v31;
  }

  v121 = (v114 + 73);
  while (1)
  {
    v122 = *v121;
    v123 = *(v121 - 1);
    v124 = *(v121 - 9);
    v125 = *(v121 - 17);
    v126 = *(v121 - 25);
    v127 = *(v121 - 33);
    v154 = *(v121 - 41);
    v155 = v127;
    v156 = v126;
    v157 = v125;
    v158 = v124;
    v159 = v123;
    v160 = v122;

    sub_26B49FD88(&v154, &v164, v120, v118, v119, &v161);
    if (v116)
    {
      break;
    }

    v116 = 0;

    v121 += 48;
    if (!--v117)
    {
      goto LABEL_46;
    }
  }

LABEL_58:

  __break(1u);
  return result;
}

unint64_t sub_26B49F934()
{
  result = qword_2803FFCD0;
  if (!qword_2803FFCD0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2803FFCD0);
  }

  return result;
}

uint64_t sub_26B49F980(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803FFCC8, &unk_26B5452B0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_26B49F9F0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803FFCC8, &unk_26B5452B0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_26B49FA60()
{
  result = qword_2803FFCD8;
  if (!qword_2803FFCD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803FFCD8);
  }

  return result;
}

unint64_t sub_26B49FAB4()
{
  result = qword_2803FFCE0;
  if (!qword_2803FFCE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803FFCE0);
  }

  return result;
}

uint64_t sub_26B49FB08(uint64_t a1, uint64_t *a2)
{
  v4 = sub_26B5427B4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7, v8, v9);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(a1 + 24);
  v27 = *(a1 + 16);
  v12 = v27;
  v28 = v13;

  sub_26B542774();
  sub_26B49FAB4();
  v14 = sub_26B542CC4();
  (*(v5 + 8))(v11, v4);

  v27 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803FFCE8, &unk_26B5454F0);
  sub_26B4A4A8C();
  v15 = sub_26B5429D4();
  v17 = v16;

  v27 = 0;
  v28 = 0xE000000000000000;
  sub_26B542D74();

  v27 = 0x3D6665726820613CLL;
  v28 = 0xEA00000000002327;
  MEMORY[0x26D677BF0](v15, v17);

  MEMORY[0x26D677BF0](15911, 0xE200000000000000);
  v25 = 0;
  v26 = 0xE000000000000000;
  sub_26B49E688(v12, v13);
  MEMORY[0x26D677BF0](v25, v26);

  MEMORY[0x26D677BF0](0x3E702F3C3E612F3CLL, 0xE800000000000000);
  v18 = v27;
  v19 = v28;
  v20 = *a2;
  result = swift_isUniquelyReferenced_nonNull_native();
  *a2 = v20;
  if ((result & 1) == 0)
  {
    result = sub_26B4A2660(0, *(v20 + 16) + 1, 1, v20);
    v20 = result;
    *a2 = result;
  }

  v23 = *(v20 + 16);
  v22 = *(v20 + 24);
  if (v23 >= v22 >> 1)
  {
    result = sub_26B4A2660((v22 > 1), v23 + 1, 1, v20);
    v20 = result;
    *a2 = result;
  }

  *(v20 + 16) = v23 + 1;
  v24 = v20 + 16 * v23;
  *(v24 + 32) = v18;
  *(v24 + 40) = v19;
  return result;
}

uint64_t sub_26B49FD88(void *a1, char **a2, uint64_t a3, void *a4, uint64_t a5, unint64_t *a6)
{
  v197 = a6;
  v198 = a4;
  v202 = a5;
  v203 = a3;
  v8 = sub_26B5427B4();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8, v11, v12, v13);
  v15 = &v182 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1[2];
  v17 = a1[3];
  v205 = a1[4];
  v207 = v16;
  *&v231 = v16;
  *(&v231 + 1) = v17;

  sub_26B542774();
  v194 = sub_26B49FAB4();
  v18 = sub_26B542CC4();
  (*(v9 + 8))(v15, v8);

  *&v231 = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803FFCE8, &unk_26B5454F0);
  v184 = sub_26B4A4A8C();
  v19 = sub_26B5429D4();
  v21 = v20;

  v22 = *a2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a2 = v22;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_117:
    v22 = sub_26B4A2660(0, v22[2] + 1, 1, v22);
    *a2 = v22;
  }

  v25 = v22[2];
  v24 = v22[3];
  if (v25 >= v24 >> 1)
  {
    v22 = sub_26B4A2660((v24 > 1), v25 + 1, 1, v22);
    *a2 = v22;
  }

  v22[2] = v25 + 1;
  v26 = &v22[2 * v25];
  v26[4] = 0x3E2F72683CLL;
  v26[5] = 0xE500000000000000;
  *&v231 = 0;
  *(&v231 + 1) = 0xE000000000000000;
  sub_26B542D74();

  *&v231 = 0x273D64692032683CLL;
  *(&v231 + 1) = 0xE800000000000000;
  MEMORY[0x26D677BF0](v19, v21);

  MEMORY[0x26D677BF0](15911, 0xE200000000000000);
  v218 = 0;
  v219 = 0xE000000000000000;
  v27 = v238;
  sub_26B49E688(v207, v17);
  v204 = v27;
  MEMORY[0x26D677BF0](v218, v219);

  MEMORY[0x26D677BF0](0x3E32682F3CLL, 0xE500000000000000);
  v28 = v231;
  v29 = *a2;
  v30 = swift_isUniquelyReferenced_nonNull_native();
  *a2 = v29;
  if ((v30 & 1) == 0)
  {
    v29 = sub_26B4A2660(0, *(v29 + 2) + 1, 1, v29);
    *a2 = v29;
  }

  v17 = v205;
  v19 = *(v29 + 2);
  v31 = *(v29 + 3);
  if (v19 >= v31 >> 1)
  {
    v29 = sub_26B4A2660((v31 > 1), v19 + 1, 1, v29);
    *a2 = v29;
  }

  *(v29 + 2) = v19 + 1;
  *&v29[16 * v19 + 32] = v28;
  v32 = v17[2];
  v22 = MEMORY[0x277D84F90];
  v199 = a2;
  if (v32)
  {
    v19 = 0;
    a2 = (v17 + 4);
    v33 = v204;
    v207 = v203 + 32;
    v200 = (v17 + 4);
    v201 = v32;
    do
    {
      v189 = v22;
      while (1)
      {
        if (v19 >= v17[2])
        {
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
          goto LABEL_117;
        }

        v34 = &a2[23 * v19];
        v35 = *v34;
        v36 = *(v34 + 1);
        v37 = *(v34 + 3);
        v233 = *(v34 + 2);
        v234 = v37;
        v231 = v35;
        v232 = v36;
        v38 = *(v34 + 4);
        v39 = *(v34 + 5);
        v40 = *(v34 + 7);
        v235[2] = *(v34 + 6);
        v235[3] = v40;
        v235[0] = v38;
        v235[1] = v39;
        v41 = *(v34 + 8);
        v42 = *(v34 + 9);
        v43 = *(v34 + 10);
        *&v235[7] = v34[22];
        v235[5] = v42;
        v235[6] = v43;
        v235[4] = v41;
        ++v19;
        v21 = *&v235[0];
        if (*(*&v235[0] + 16))
        {
          v238 = *(v203 + 16);
          if (v238)
          {
            break;
          }
        }

LABEL_12:
        if (v19 == v32)
        {
          goto LABEL_31;
        }
      }

      v206 = v19;
      sub_26B4A5160(&v231, &v218);
      v44 = 0;
      v45 = (v21 + 7);
      while (1)
      {
        LOBYTE(v218) = *(v207 + v44);
        if (v21[2])
        {
          v46 = v21[5];
          sub_26B471350();
          v47 = sub_26B5429B4();
          v48 = -1 << *(v21 + 32);
          v49 = v47 & ~v48;
          if ((*&v45[(v49 >> 3) & 0xFFFFFFFFFFFFFF8] >> v49))
          {
            break;
          }
        }

LABEL_17:
        if (++v44 == v238)
        {
          sub_26B4A51BC(&v231);
          v22 = v189;
          v33 = v204;
          v17 = v205;
          a2 = v200;
          v32 = v201;
          v19 = v206;
          goto LABEL_12;
        }
      }

      v50 = ~v48;
      sub_26B4713A4();
      while (1)
      {
        LOBYTE(v215) = *(v21[6] + v49);
        if (sub_26B542A34())
        {
          break;
        }

        v49 = (v49 + 1) & v50;
        if (((*&v45[(v49 >> 3) & 0xFFFFFFFFFFFFFF8] >> v49) & 1) == 0)
        {
          goto LABEL_17;
        }
      }

      v22 = v189;
      v51 = swift_isUniquelyReferenced_nonNull_native();
      *&v208 = v22;
      if ((v51 & 1) == 0)
      {
        sub_26B4A2120(0, v22[2] + 1, 1);
        v22 = v208;
      }

      v17 = v205;
      v19 = v206;
      a2 = v200;
      v53 = v22[2];
      v52 = v22[3];
      if (v53 >= v52 >> 1)
      {
        sub_26B4A2120((v52 > 1), v53 + 1, 1);
        v22 = v208;
      }

      v22[2] = v53 + 1;
      v54 = &v22[23 * v53];
      v55 = v231;
      v56 = v232;
      v57 = v234;
      *(v54 + 4) = v233;
      *(v54 + 5) = v57;
      *(v54 + 2) = v55;
      *(v54 + 3) = v56;
      v58 = v235[0];
      v59 = v235[1];
      v60 = v235[3];
      *(v54 + 8) = v235[2];
      *(v54 + 9) = v60;
      *(v54 + 6) = v58;
      *(v54 + 7) = v59;
      v61 = v235[4];
      v62 = v235[5];
      v63 = v235[6];
      v54[26] = *&v235[7];
      *(v54 + 11) = v62;
      *(v54 + 12) = v63;
      *(v54 + 10) = v61;
      v32 = v201;
      v33 = v204;
    }

    while (v19 != v201);
  }

  else
  {
    v33 = v204;
  }

LABEL_31:
  v64 = v22[2];

  v65 = v198;

  v193 = v64;
  v189 = v22;
  if (v64)
  {
    v66 = 0;
    v192 = v22 + 4;
    v183 = 0x800000026B560C30;
    v186 = 0x800000026B560BF0;
    v187 = 0x800000026B560BD0;
    v185 = 0x800000026B560C10;
    v17 = MEMORY[0x277D837D0];
    v188 = 0x273D64692033683CLL;
    v238 = v65;
    while (1)
    {
      v201 = v66;
      v67 = &v192[23 * v66];
      v68 = *v67;
      v69 = *(v67 + 1);
      v70 = *(v67 + 3);
      v233 = *(v67 + 2);
      v234 = v70;
      v231 = v68;
      v232 = v69;
      v71 = *(v67 + 4);
      v72 = *(v67 + 5);
      v73 = *(v67 + 7);
      v235[2] = *(v67 + 6);
      v235[3] = v73;
      v235[0] = v71;
      v235[1] = v72;
      v74 = *(v67 + 8);
      v75 = *(v67 + 9);
      v76 = *(v67 + 10);
      *&v235[7] = v67[22];
      v235[5] = v75;
      v235[6] = v76;
      v235[4] = v74;
      v77 = *(&v231 + 1);
      v206 = v231;
      v215 = v232;
      v216 = v233;
      v217 = v234;
      v78 = *&v235[0];
      v212 = *(&v235[4] + 8);
      v213 = *(&v235[5] + 8);
      v214 = *(&v235[6] + 8);
      v208 = *(v235 + 8);
      v209 = *(&v235[1] + 8);
      v210 = *(&v235[2] + 8);
      v211 = *(&v235[3] + 8);
      sub_26B4A5160(&v231, &v218);
      v207 = v77;

      v200 = v78;
      v81 = sub_26B4A2E58(v203, v78, v79, v80);
      v82 = sub_26B4A2FF8(&unk_287BFF1A8, v81);
      v22 = v82;
      v83 = *(v82 + 16);
      if (v83)
      {
        v84 = sub_26B4A208C(*(v82 + 16), 0);
        v205 = sub_26B4A4514(&v218, v84 + 32, v83, v22);
        v19 = v219;
        a2 = *(&v220 + 1);
        v21 = v220;
        v17 = v221;

        sub_26B4A5210();
        if (v205 != v83)
        {
          goto LABEL_115;
        }

        v17 = MEMORY[0x277D837D0];
      }

      else
      {

        v84 = MEMORY[0x277D84F90];
      }

      v218 = v84;
      sub_26B4A33F8(&v218);
      v204 = v33;
      if (v33)
      {
        break;
      }

      v85 = v218;
      v86 = *(v218 + 16);
      v87 = MEMORY[0x277D84F90];
      if (v86)
      {
        v218 = MEMORY[0x277D84F90];
        sub_26B4A2140(0, v86, 0);
        v87 = v218;
        v19 = 32;
        do
        {
          LOBYTE(v236) = *(v85 + v19);
          v90 = VCCommand.Idiom.displayName()();
          object = v90._object;
          countAndFlagsBits = v90._countAndFlagsBits;
          v218 = v87;
          v92 = *(v87 + 2);
          v91 = *(v87 + 3);
          v21 = (v92 + 1);
          if (v92 >= v91 >> 1)
          {
            a2 = v90._object;
            sub_26B4A2140((v91 > 1), v92 + 1, 1);
            object = v90._object;
            countAndFlagsBits = v90._countAndFlagsBits;
            v87 = v218;
          }

          *(v87 + 2) = v21;
          v93 = &v87[16 * v92];
          *(v93 + 4) = countAndFlagsBits;
          *(v93 + 5) = object;
          ++v19;
          --v86;
        }

        while (v86);

        v17 = MEMORY[0x277D837D0];
      }

      else
      {
      }

      v218 = v206;
      v219 = v207;
      v236 = 95;
      v237 = 0xE100000000000000;
      v22 = sub_26B542CD4();

      if (!v22[2])
      {
        goto LABEL_114;
      }

      v94 = v22[4];
      a2 = v22[5];

      v205 = v94;
      v95 = sub_26B542A74();
      if (v202)
      {
        v96 = sub_26B542C14();
      }

      else
      {
        v96 = 0;
      }

      v19 = *v197;

      v97 = v17;
      v98 = sub_26B5429A4();

      v21 = [v238 phrasesForCommandIdentifier:v95 targetTypes:v96 parameterStrings:v98];

      if (v21)
      {
        v198 = sub_26B542C24();

        v99 = sub_26B542A74();
        v100 = sub_26B542A74();
        if (v202)
        {
          v101 = sub_26B542C14();
        }

        else
        {
          v101 = 0;
        }

        v102 = [v238 descriptionStringForCommandIdentifier:v99 descriptionType:v100 targetTypes:v101];

        if (v102)
        {
          v190 = sub_26B542A84();
          v195 = v103;
        }

        else
        {
          v190 = 0;
          v195 = 0;
        }

        v104 = sub_26B542A74();
        v21 = sub_26B542A74();
        if (v202)
        {
          v105 = sub_26B542C14();
        }

        else
        {
          v105 = 0;
        }

        v106 = v238;
        v107 = [v238 descriptionStringForCommandIdentifier:v104 descriptionType:v21 targetTypes:v105];

        if (v107)
        {
          sub_26B542A84();

          v108 = objc_allocWithZone(MEMORY[0x277CCAB48]);
          v109 = sub_26B542A74();

          v110 = [v108 initWithString_];

          v111 = *v197;
          v112 = v110;

          sub_26B4A120C(v113);

          v114 = sub_26B5429A4();

          [v106 resolveReferencesInMutableAttributedString:v112 stringsTable:v114];

          v115 = [v112 string];
          v191 = sub_26B542A84();
          v196 = v116;
        }

        else
        {
          v191 = 0;
          v196 = 0;
        }

        v17 = v198;
        v117 = v199;
        v118 = *v199;
        v119 = swift_isUniquelyReferenced_nonNull_native();
        *v117 = v118;
        if ((v119 & 1) == 0)
        {
          v118 = sub_26B4A2660(0, *(v118 + 2) + 1, 1, v118);
          *v199 = v118;
        }

        v19 = *(v118 + 2);
        v120 = *(v118 + 3);
        if (v19 >= v120 >> 1)
        {
          v118 = sub_26B4A2660((v120 > 1), v19 + 1, 1, v118);
          *v199 = v118;
        }

        *(v118 + 2) = v19 + 1;
        v121 = &v118[16 * v19];
        *(v121 + 4) = 0x3E7669643CLL;
        *(v121 + 5) = 0xE500000000000000;
        v122 = *v199;
        v124 = *(*v199 + 2);
        v123 = *(*v199 + 3);
        if (v124 >= v123 >> 1)
        {
          v122 = sub_26B4A2660((v123 > 1), v124 + 1, 1, v122);
          *v199 = v122;
        }

        *(v122 + 2) = v124 + 1;
        v125 = &v122[16 * v124];
        *(v125 + 4) = 0x3E2F72683CLL;
        *(v125 + 5) = 0xE500000000000000;
        v218 = 0;
        v219 = 0xE000000000000000;
        sub_26B542D74();

        v218 = v188;
        v219 = 0xE800000000000000;
        MEMORY[0x26D677BF0](v205, a2);

        v22 = &v218;
        MEMORY[0x26D677BF0](15911, 0xE200000000000000);
        if (!v17[2])
        {
          goto LABEL_116;
        }

        v127 = v17[4];
        v126 = v17[5];
        v236 = 0;
        v237 = 0xE000000000000000;

        v128 = v127;
        v129 = v204;
        sub_26B49E688(v128, v126);
        v33 = v129;

        MEMORY[0x26D677BF0](v236, v237);

        MEMORY[0x26D677BF0](0x3E33682F3CLL, 0xE500000000000000);
        v19 = v218;
        v130 = v219;
        a2 = v199;
        v131 = *v199;
        v132 = swift_isUniquelyReferenced_nonNull_native();
        *a2 = v131;
        if ((v132 & 1) == 0)
        {
          v131 = sub_26B4A2660(0, *(v131 + 2) + 1, 1, v131);
          *a2 = v131;
        }

        v134 = *(v131 + 2);
        v133 = *(v131 + 3);
        if (v134 >= v133 >> 1)
        {
          v131 = sub_26B4A2660((v133 > 1), v134 + 1, 1, v131);
          *a2 = v131;
        }

        *(v131 + 2) = v134 + 1;
        v135 = &v131[16 * v134];
        *(v135 + 4) = v19;
        *(v135 + 5) = v130;
        if (v195)
        {
          v218 = 4091964;
          v219 = 0xE300000000000000;
          v236 = 0;
          v237 = 0xE000000000000000;
          sub_26B49E688(v190, v195);

          MEMORY[0x26D677BF0](v236, v237);

          MEMORY[0x26D677BF0](1047539516, 0xE400000000000000);
          v19 = v218;
          v136 = v219;
          v137 = *a2;
          v138 = swift_isUniquelyReferenced_nonNull_native();
          *a2 = v137;
          if ((v138 & 1) == 0)
          {
            v137 = sub_26B4A2660(0, *(v137 + 2) + 1, 1, v137);
            *a2 = v137;
          }

          v140 = *(v137 + 2);
          v139 = *(v137 + 3);
          if (v140 >= v139 >> 1)
          {
            v137 = sub_26B4A2660((v139 > 1), v140 + 1, 1, v137);
            *a2 = v137;
          }

          *(v137 + 2) = v140 + 1;
          v141 = &v137[16 * v140];
          *(v141 + 4) = v19;
          *(v141 + 5) = v136;
        }

        v21 = v198;
        v17 = MEMORY[0x277D837D0];
        if (*(v203 + 16) >= 2uLL && *(v87 + 2))
        {
          v218 = 0;
          v219 = 0xE000000000000000;
          sub_26B542D74();

          v218 = 0xD000000000000012;
          v219 = v183;
          v236 = v87;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803FFCE8, &unk_26B5454F0);
          v142 = sub_26B5429D4();
          v144 = v143;

          MEMORY[0x26D677BF0](v142, v144);

          MEMORY[0x26D677BF0](1047539516, 0xE400000000000000);
          v145 = v218;
          v19 = v219;
          v146 = *a2;
          v147 = swift_isUniquelyReferenced_nonNull_native();
          *a2 = v146;
          if ((v147 & 1) == 0)
          {
            v146 = sub_26B4A2660(0, *(v146 + 2) + 1, 1, v146);
            *a2 = v146;
          }

          v149 = *(v146 + 2);
          v148 = *(v146 + 3);
          if (v149 >= v148 >> 1)
          {
            v146 = sub_26B4A2660((v148 > 1), v149 + 1, 1, v146);
            *a2 = v146;
          }

          *(v146 + 2) = v149 + 1;
          v150 = &v146[16 * v149];
          *(v150 + 4) = v145;
          *(v150 + 5) = v19;
          v17 = MEMORY[0x277D837D0];
        }

        else
        {
        }

        v151 = *a2;
        v152 = swift_isUniquelyReferenced_nonNull_native();
        *a2 = v151;
        if ((v152 & 1) == 0)
        {
          v151 = sub_26B4A2660(0, *(v151 + 2) + 1, 1, v151);
          *a2 = v151;
        }

        v154 = *(v151 + 2);
        v153 = *(v151 + 3);
        if (v154 >= v153 >> 1)
        {
          v151 = sub_26B4A2660((v153 > 1), v154 + 1, 1, v151);
          *a2 = v151;
        }

        *(v151 + 2) = v154 + 1;
        v155 = &v151[16 * v154];
        *(v155 + 4) = 0xD000000000000010;
        *(v155 + 5) = v187;
        v156 = *a2;
        v158 = *(*a2 + 2);
        v157 = *(*a2 + 3);
        if (v158 >= v157 >> 1)
        {
          v156 = sub_26B4A2660((v157 > 1), v158 + 1, 1, v156);
          *a2 = v156;
        }

        *(v156 + 2) = v158 + 1;
        v159 = &v156[16 * v158];
        v160 = v186;
        *(v159 + 4) = 0xD000000000000014;
        *(v159 + 5) = v160;
        sub_26B49E8FC(v21, a2);

        v161 = *a2;
        v162 = swift_isUniquelyReferenced_nonNull_native();
        *a2 = v161;
        if ((v162 & 1) == 0)
        {
          v161 = sub_26B4A2660(0, *(v161 + 2) + 1, 1, v161);
          *a2 = v161;
        }

        v164 = *(v161 + 2);
        v163 = *(v161 + 3);
        if (v164 >= v163 >> 1)
        {
          v161 = sub_26B4A2660((v163 > 1), v164 + 1, 1, v161);
          *a2 = v161;
        }

        *(v161 + 2) = v164 + 1;
        v165 = &v161[16 * v164];
        *(v165 + 4) = 0x3E6C752F3CLL;
        *(v165 + 5) = 0xE500000000000000;
        v166 = *a2;
        v167 = v196;
        if (v196)
        {
          v169 = *(v166 + 2);
          v168 = *(v166 + 3);
          if (v169 >= v168 >> 1)
          {
            v166 = sub_26B4A2660((v168 > 1), v169 + 1, 1, v166);
            *a2 = v166;
          }

          *(v166 + 2) = v169 + 1;
          v170 = &v166[16 * v169];
          v171 = v185;
          *(v170 + 4) = 0xD000000000000013;
          *(v170 + 5) = v171;
          v218 = 4091964;
          v219 = 0xE300000000000000;
          v236 = 0;
          v237 = 0xE000000000000000;
          sub_26B49E688(v191, v167);
          v21 = v129;

          MEMORY[0x26D677BF0](v236, v237);

          MEMORY[0x26D677BF0](1047539516, 0xE400000000000000);
          v172 = v218;
          v173 = v219;
          v174 = *a2;
          v175 = swift_isUniquelyReferenced_nonNull_native();
          *a2 = v174;
          if ((v175 & 1) == 0)
          {
            v174 = sub_26B4A2660(0, *(v174 + 2) + 1, 1, v174);
            *a2 = v174;
          }

          v19 = *(v174 + 2);
          v176 = *(v174 + 3);
          if (v19 >= v176 >> 1)
          {
            v174 = sub_26B4A2660((v176 > 1), v19 + 1, 1, v174);
            *a2 = v174;
          }

          *(v174 + 2) = v19 + 1;
          v177 = &v174[16 * v19];
          *(v177 + 4) = v172;
          *(v177 + 5) = v173;
          v166 = *a2;
          v65 = v238;
          v33 = v129;
        }

        else
        {
          v65 = v238;
        }

        *a2 = v166;
        v179 = *(v166 + 2);
        v178 = *(v166 + 3);
        if (v179 >= v178 >> 1)
        {
          v166 = sub_26B4A2660((v178 > 1), v179 + 1, 1, v166);
          *a2 = v166;
        }

        *(v166 + 2) = v179 + 1;
        v180 = &v166[16 * v179];
        *(v180 + 4) = 0x3E7669642F3CLL;
        *(v180 + 5) = 0xE600000000000000;
      }

      else
      {

        v65 = v238;
        v17 = v97;
        v33 = v204;
      }

      if (v33)
      {
        v220 = v215;
        v221 = v216;
        v222 = v217;
        v227 = v211;
        v228 = v212;
        v229 = v213;
        v230 = v214;
        v224 = v208;
        v225 = v209;
        v218 = v206;
        v219 = v207;
        v223 = v200;
        v226 = v210;
        sub_26B4A51BC(&v218);
        __break(1u);
        break;
      }

      v220 = v215;
      v221 = v216;
      v222 = v217;
      v227 = v211;
      v228 = v212;
      v229 = v213;
      v230 = v214;
      v224 = v208;
      v225 = v209;
      v66 = v201 + 1;
      v218 = v206;
      v219 = v207;
      v223 = v200;
      v226 = v210;
      sub_26B4A51BC(&v218);
      if (v66 == v193)
      {
        goto LABEL_112;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_112:
  }

  return result;
}

uint64_t sub_26B4A120C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803FFD08, &qword_26B545398);
    v2 = sub_26B542E64();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = (v9 << 10) | (16 * __clz(__rbit64(v5)));
    v14 = (*(a1 + 48) + v13);
    v15 = v14[1];
    v16 = (*(a1 + 56) + v13);
    v18 = *v16;
    v17 = v16[1];
    *&v35[0] = *v14;
    *(&v35[0] + 1) = v15;

    swift_dynamicCast();
    swift_dynamicCast();
    v31 = v27;
    v32 = v28;
    v33 = v29;
    sub_26B4A5218(&v30, v34);
    v27 = v31;
    v28 = v32;
    v29 = v33;
    sub_26B4A5218(v34, v35);
    v19 = *(v2 + 40);
    result = sub_26B542D14();
    v20 = -1 << *(v2 + 32);
    v21 = result & ~v20;
    v22 = v21 >> 6;
    if (((-1 << v21) & ~*(v7 + 8 * (v21 >> 6))) == 0)
    {
      v23 = 0;
      v24 = (63 - v20) >> 6;
      while (++v22 != v24 || (v23 & 1) == 0)
      {
        v25 = v22 == v24;
        if (v22 == v24)
        {
          v22 = 0;
        }

        v23 |= v25;
        v26 = *(v7 + 8 * v22);
        if (v26 != -1)
        {
          v10 = __clz(__rbit64(~v26)) + (v22 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v21) & ~*(v7 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = *(v2 + 48) + 40 * v10;
    *v11 = v27;
    *(v11 + 16) = v28;
    *(v11 + 32) = v29;
    result = sub_26B4A5218(v35, (*(v2 + 56) + 32 * v10));
    ++*(v2 + 16);
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_26B4A14D4(uint64_t a1, unint64_t a2)
{
  v46 = *MEMORY[0x277D85DE8];
  *&v43 = a1;
  *(&v43 + 1) = a2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803FFCF8, &qword_26B545388);
  if (swift_dynamicCast())
  {
    sub_26B4A4F98(__src, &v44);
    __swift_project_boxed_opaque_existential_1(&v44, v45);
    sub_26B542834();
    __src[0] = v43;
    __swift_destroy_boxed_opaque_existential_1(&v44);
    goto LABEL_63;
  }

  v42 = 0;
  memset(__src, 0, sizeof(__src));
  sub_26B4A4CBC(__src, &qword_2803FFD00, &qword_26B545390);
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_67;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
    *&__src[0] = a1;
    *(&__src[0] + 1) = a2 & 0xFFFFFFFFFFFFFFLL;
    v4 = __src;
  }

  else if ((a1 & 0x1000000000000000) != 0)
  {
    v4 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v4 = sub_26B542DC4();
  }

  sub_26B4A1A6C(v4, v5, &v44);
  v6 = *(&v44 + 1);
  v7 = v44;
  if (*(&v44 + 1) >> 60 != 15)
  {
    __src[0] = v44;
    goto LABEL_63;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v8 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v8 = a1 & 0xFFFFFFFFFFFFLL;
  }

LABEL_12:
  *&__src[0] = sub_26B4A4DD4(v8);
  *(&__src[0] + 1) = v9;
  MEMORY[0x28223BE20](*&__src[0], v9, v10, v11);
  v12 = sub_26B4A1B34(sub_26B4A4E74);
  v16 = v12;
  v17 = v13;
  v18 = v14;
  v19 = *(&__src[0] + 1) >> 62;
  if ((*(&__src[0] + 1) >> 62) > 1)
  {
    if (v19 == 2)
    {
      v21 = *(*&__src[0] + 16);
      v20 = *(*&__src[0] + 24);
      v22 = __OFSUB__(v20, v21);
      v23 = v20 - v21;
      if (v22)
      {
        goto LABEL_70;
      }

      if (v15 != v23)
      {
        goto LABEL_23;
      }
    }

    else if (v15)
    {
      v24 = 0;
      goto LABEL_60;
    }
  }

  else if (v19)
  {
    if (__OFSUB__(DWORD1(__src[0]), __src[0]))
    {
      goto LABEL_71;
    }

    if (v15 != DWORD1(__src[0]) - LODWORD(__src[0]))
    {
LABEL_23:
      if (v19 == 2)
      {
        v24 = *(*&__src[0] + 24);
      }

      else if (v19 == 1)
      {
        v24 = *&__src[0] >> 32;
      }

      else
      {
        v24 = BYTE14(__src[0]);
      }

LABEL_60:
      if (v24 >= v15)
      {
        sub_26B5428A4();
LABEL_62:

        goto LABEL_63;
      }

      __break(1u);
LABEL_70:
      __break(1u);
LABEL_71:
      __break(1u);
    }
  }

  else if (v15 != BYTE14(__src[0]))
  {
    goto LABEL_23;
  }

  v38 = v7;
  if ((v13 & 0x2000000000000000) != 0)
  {
    v25 = HIBYTE(v13) & 0xF;
  }

  else
  {
    v25 = v12 & 0xFFFFFFFFFFFFLL;
  }

  *(&v43 + 7) = 0;
  *&v43 = 0;
  if (4 * v25 == v14 >> 14)
  {
    goto LABEL_57;
  }

  v37 = v6;
  LOBYTE(v26) = 0;
  v27 = (v12 >> 59) & 1;
  if ((v13 & 0x1000000000000000) == 0)
  {
    LOBYTE(v27) = 1;
  }

  v28 = 4 << v27;
  v39 = (v13 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v40 = v13 & 0xFFFFFFFFFFFFFFLL;
  do
  {
    v29 = v18 & 0xC;
    v30 = v18;
    if (v29 == v28)
    {
      v30 = sub_26B4A4448(v18, v16, v17);
    }

    v31 = v30 >> 16;
    if (v30 >> 16 >= v25)
    {
      __break(1u);
LABEL_65:
      __break(1u);
LABEL_66:
      __break(1u);
LABEL_67:
      v8 = sub_26B542B44();
      v7 = 0;
      v6 = 0xF000000000000000;
      goto LABEL_12;
    }

    if ((v17 & 0x1000000000000000) != 0)
    {
      v33 = sub_26B542B74();
      if (v29 != v28)
      {
        goto LABEL_46;
      }
    }

    else if ((v17 & 0x2000000000000000) != 0)
    {
      *&v44 = v16;
      *(&v44 + 1) = v40;
      v33 = *(&v44 + v31);
      if (v29 != v28)
      {
        goto LABEL_46;
      }
    }

    else
    {
      v32 = v39;
      if ((v16 & 0x1000000000000000) == 0)
      {
        v32 = sub_26B542DC4();
      }

      v33 = *(v32 + v31);
      if (v29 != v28)
      {
LABEL_46:
        if ((v17 & 0x1000000000000000) == 0)
        {
          goto LABEL_47;
        }

        goto LABEL_50;
      }
    }

    v18 = sub_26B4A4448(v18, v16, v17);
    if ((v17 & 0x1000000000000000) == 0)
    {
LABEL_47:
      v18 = (v18 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_52;
    }

LABEL_50:
    if (v25 <= v18 >> 16)
    {
      goto LABEL_66;
    }

    v18 = sub_26B542B54();
LABEL_52:
    *(&v43 + v26) = v33;
    v26 = v26 + 1;
    if ((v26 >> 8))
    {
      goto LABEL_65;
    }

    if (v26 == 14)
    {
      *&v44 = v43;
      *(&v44 + 6) = *(&v43 + 6);
      sub_26B5428B4();
      LOBYTE(v26) = 0;
    }
  }

  while (4 * v25 != v18 >> 14);
  v6 = v37;
  if (v26)
  {
    *&v44 = v43;
    *(&v44 + 6) = *(&v43 + 6);
    sub_26B5428B4();
    sub_26B4A4F84(v38, v37);
    goto LABEL_62;
  }

LABEL_57:

  sub_26B4A4F84(v38, v6);
LABEL_63:
  v34 = __src[0];
  sub_26B4A4EDC(*&__src[0], *(&__src[0] + 1));

  sub_26B4A4F30(v34, *(&v34 + 1));
  v35 = *MEMORY[0x277D85DE8];
  return v34;
}

unint64_t sub_26B4A19F4(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_26B543034();
  sub_26B542AE4();
  v6 = sub_26B543054();

  return sub_26B4A25A8(a1, a2, v6);
}

uint64_t sub_26B4A1A6C@<X0>(_BYTE *__src@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  result = 0;
  v6 = 0xC000000000000000;
  if (__src && a2)
  {
    if (a2 <= 14)
    {
      result = sub_26B4A4D1C(__src, &__src[a2]);
      v6 = v12 & 0xFFFFFFFFFFFFFFLL;
    }

    else
    {
      v8 = sub_26B542824();
      v9 = *(v8 + 48);
      v10 = *(v8 + 52);
      swift_allocObject();
      v11 = sub_26B5427D4();
      if (a2 >= 0x7FFFFFFF)
      {
        sub_26B542894();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = a2;
        v6 = v11 | 0x8000000000000000;
      }

      else
      {
        result = a2 << 32;
        v6 = v11 | 0x4000000000000000;
      }
    }
  }

  *a3 = result;
  a3[1] = v6;
  return result;
}

void *sub_26B4A1B34(void *(*a1)(uint64_t *__return_ptr, char *, char *))
{
  v3 = v1;
  v22[2] = *MEMORY[0x277D85DE8];
  v6 = *v1;
  v5 = v1[1];
  v7 = v5 >> 62;
  if ((v5 >> 62) <= 1)
  {
    if (!v7)
    {
      sub_26B4A4F30(v6, v5);
      v22[0] = v6;
      LOWORD(v22[1]) = v5;
      BYTE2(v22[1]) = BYTE2(v5);
      BYTE3(v22[1]) = BYTE3(v5);
      BYTE4(v22[1]) = BYTE4(v5);
      BYTE5(v22[1]) = BYTE5(v5);
      BYTE6(v22[1]) = BYTE6(v5);
      result = a1(&v20, v22, v22 + BYTE6(v5));
      if (!v2)
      {
        result = v20;
      }

      v9 = LODWORD(v22[1]) | ((WORD2(v22[1]) | (BYTE6(v22[1]) << 16)) << 32);
      *v3 = v22[0];
      v3[1] = v9;
      goto LABEL_22;
    }

    v11 = v5 & 0x3FFFFFFFFFFFFFFFLL;

    sub_26B4A4F30(v6, v5);
    *v3 = xmmword_26B5452A0;
    sub_26B4A4F30(0, 0xC000000000000000);
    v12 = v6 >> 32;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      if (v12 < v6)
      {
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      if (sub_26B5427E4() && __OFSUB__(v6, sub_26B542814()))
      {
LABEL_26:
        __break(1u);
      }

      v13 = sub_26B542824();
      v14 = *(v13 + 48);
      v15 = *(v13 + 52);
      swift_allocObject();
      v16 = sub_26B5427C4();

      v11 = v16;
    }

    if (v12 >= v6)
    {

      v17 = sub_26B4A1FD8(v6, v6 >> 32, a1);

      v10 = v11 | 0x4000000000000000;
      if (!v2)
      {
        *v3 = v6;
        v3[1] = v10;
        result = v17;
        goto LABEL_22;
      }

      *v3 = v6;
      goto LABEL_21;
    }

    __break(1u);
    goto LABEL_25;
  }

  if (v7 == 2)
  {

    sub_26B4A4F30(v6, v5);
    v20 = v6;
    v21 = v5 & 0x3FFFFFFFFFFFFFFFLL;
    *v3 = xmmword_26B5452A0;
    sub_26B4A4F30(0, 0xC000000000000000);
    sub_26B542884();
    result = sub_26B4A1FD8(v20[2], v20[3], a1);
    v10 = v21 | 0x8000000000000000;
    if (!v2)
    {
      *v3 = v20;
      v3[1] = v10;
      goto LABEL_22;
    }

    *v3 = v20;
LABEL_21:
    v3[1] = v10;
    goto LABEL_22;
  }

  memset(v22, 0, 15);
  result = a1(&v20, v22, v22);
  if (!v2)
  {
    result = v20;
  }

LABEL_22:
  v18 = *MEMORY[0x277D85DE8];
  return result;
}

_BYTE *sub_26B4A1ED8@<X0>(_BYTE *result@<X0>, _BYTE *a2@<X1>, void *a3@<X8>)
{
  if (!result)
  {
    goto LABEL_4;
  }

  v3 = a2 - result;
  if (a2 == result)
  {
    result = 0;
LABEL_4:
    *a3 = result;
    a3[1] = 0xC000000000000000;
    return result;
  }

  if (v3 <= 14)
  {
    result = sub_26B4A4D1C(result, a2);
    v8 = a3;
    v6 = v9 & 0xFFFFFFFFFFFFFFLL;
  }

  else
  {
    if (v3 >= 0x7FFFFFFF)
    {
      result = sub_26B4A5040(result, a2);
      v6 = v10 | 0x8000000000000000;
    }

    else
    {
      result = sub_26B4A50BC(result, a2);
      v6 = v5 | 0x4000000000000000;
    }

    v8 = a3;
  }

  *v8 = result;
  v8[1] = v6;
  return result;
}

void *sub_26B4A1F6C(void *(*a1)(uint64_t *__return_ptr, uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    result = a1(&v6, a3, a4 - a3);
    if (!v4)
    {
      return v6;
    }
  }

  else
  {
    result = a1(&v6, 0, 0);
    if (!v4)
    {
      return v6;
    }
  }

  __break(1u);
  return result;
}

char *sub_26B4A1FD8(uint64_t a1, uint64_t a2, void *(*a3)(uint64_t *__return_ptr, char *, char *))
{
  result = sub_26B5427E4();
  if (!result)
  {
    goto LABEL_12;
  }

  v8 = result;
  result = sub_26B542814();
  v9 = a1 - result;
  if (__OFSUB__(a1, result))
  {
    __break(1u);
    goto LABEL_11;
  }

  v10 = __OFSUB__(a2, a1);
  v11 = a2 - a1;
  if (v10)
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  v12 = sub_26B542804();
  if (v12 >= v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = v12;
  }

  result = a3(&v14, &v8[v9], &v8[v9 + v13]);
  if (!v3)
  {
    return v14;
  }

  return result;
}

void *sub_26B4A208C(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803FFCA8, &unk_26B5453B0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_26B4A2100(char *a1, int64_t a2, char a3)
{
  result = sub_26B4A2160(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_26B4A2120(char *a1, int64_t a2, char a3)
{
  result = sub_26B4A227C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_26B4A2140(char *a1, int64_t a2, char a3)
{
  result = sub_26B4A23A8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_26B4A2160(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803FFD18, &unk_26B548300);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[48 * v8])
    {
      memmove(v12, v13, 48 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_26B4A227C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803FFC40, &unk_26B5453C0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 184);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[184 * v8])
    {
      memmove(v12, v13, 184 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_26B4A23A8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803FFCA0, &qword_26B5453A0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_26B4A24B4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803FFCA8, &unk_26B5453B0);
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
    if (v10 != a4 || v12 >= &v13[v8])
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

unint64_t sub_26B4A25A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_26B542FB4())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

char *sub_26B4A2660(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803FFCA0, &qword_26B5453A0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_26B4A276C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803FFD10, &qword_26B5453A8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

uint64_t sub_26B4A2870(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803FFD20, &unk_26B5453D0);
  v40 = a2;
  result = sub_26B542E54();
  v8 = result;
  if (*(v5 + 16))
  {
    v38 = v3;
    v39 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v20 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v23 = 16 * (v20 | (v9 << 6));
      v24 = (*(v5 + 48) + v23);
      v25 = *v24;
      v26 = v24[1];
      v27 = (*(v5 + 56) + v23);
      v28 = v27[1];
      v41 = *v27;
      if ((v40 & 1) == 0)
      {
      }

      v29 = *(v8 + 40);
      sub_26B543034();
      sub_26B542AE4();
      result = sub_26B543054();
      v30 = -1 << *(v8 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v15 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v15 + 8 * v32);
          if (v36 != -1)
          {
            v16 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v31) & ~*(v15 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = 16 * v16;
      v18 = (*(v8 + 48) + v17);
      *v18 = v25;
      v18[1] = v26;
      v19 = (*(v8 + 56) + v17);
      *v19 = v41;
      v19[1] = v28;
      ++*(v8 + 16);
      v5 = v39;
    }

    v21 = v9;
    while (1)
    {
      v9 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v22 = v10[v9];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v13 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_35;
    }

    v37 = 1 << *(v5 + 32);
    v3 = v38;
    if (v37 >= 64)
    {
      bzero(v10, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v37;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_26B4A2B30(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_26B542D04() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = (*(a2 + 48) + 16 * v6);
      v11 = *v10;
      v12 = v10[1];
      sub_26B543034();

      sub_26B542AE4();
      v13 = sub_26B543054();

      v14 = v13 & v7;
      if (v3 >= v8)
      {
        if (v14 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v14 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v14)
      {
LABEL_10:
        v15 = *(a2 + 48);
        v16 = (v15 + 16 * v3);
        v17 = (v15 + 16 * v6);
        if (v3 != v6 || v16 >= v17 + 1)
        {
          *v16 = *v17;
        }

        v18 = *(a2 + 56);
        v19 = (v18 + 16 * v3);
        v20 = (v18 + 16 * v6);
        if (v3 != v6 || v19 >= v20 + 1)
        {
          *v19 = *v20;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }

  return result;
}

void *sub_26B4A2CE0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803FFD20, &unk_26B5453D0);
  v2 = *v0;
  v3 = sub_26B542E44();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = (*(v2 + 56) + v17);
        v22 = *v21;
        v23 = v21[1];
        v24 = (*(v4 + 48) + v17);
        *v24 = v20;
        v24[1] = v19;
        v25 = (*(v4 + 56) + v17);
        *v25 = v22;
        v25[1] = v23;
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

      v16 = *(v2 + 64 + 8 * v8);
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

uint64_t sub_26B4A2E58(uint64_t isStackAllocationSafe, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = isStackAllocationSafe;
  v21[6] = *MEMORY[0x277D85DE8];
  v20 = isStackAllocationSafe;
  v6 = *(a2 + 32);
  v7 = v6 & 0x3F;
  v21[3] = &v20;
  v21[4] = a2;
  v8 = (1 << v6) + 63;
  v9 = v8 >> 6;
  v10 = 8 * (v8 >> 6);
  if (v7 <= 0xD || (v16 = 8 * (v8 >> 6), isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), v10 = v16, (isStackAllocationSafe & 1) != 0))
  {
    MEMORY[0x28223BE20](isStackAllocationSafe, v10, a3, a4);
    v12 = &v19 - ((v11 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v12, v11);
    v13 = sub_26B4A4294(v12, v9, v5, a2);
  }

  else
  {
    v17 = v16;
    v18 = swift_slowAlloc();
    bzero(v18, v17);
    sub_26B4A522C(v18, v9, v21);
    v13 = v21[0];

    MEMORY[0x26D678F80](v18, -1, -1);
  }

  v14 = *MEMORY[0x277D85DE8];
  return v13;
}

uint64_t sub_26B4A2FF8(unint64_t a1, uint64_t a2)
{
  v2 = a2;
  v48[2] = *MEMORY[0x277D85DE8];
  if (*(a2 + 16))
  {
    v48[0] = a1;
    v3 = *(a1 + 16);
    v41 = a1;

    v45 = v3;
    if (v3)
    {
      v44 = v41 + 32;
      v4 = v2 + 56;
      v43 = sub_26B471350();
      v5 = 0;
      while (1)
      {
        v6 = *(v44 + v5++);
        v47 = v6;
        v7 = *(v2 + 40);
        v8 = sub_26B5429B4();
        v9 = -1 << *(v2 + 32);
        v10 = v8 & ~v9;
        v11 = v10 >> 6;
        v12 = 1 << v10;
        if (((1 << v10) & *(v4 + 8 * (v10 >> 6))) != 0)
        {
          break;
        }

LABEL_4:
        if (v5 == v45)
        {
          goto LABEL_14;
        }
      }

      v13 = ~v9;
      sub_26B4713A4();
      while (1)
      {
        v46 = *(*(v2 + 48) + v10);
        v14 = sub_26B542A34();
        if (v14)
        {
          break;
        }

        v10 = (v10 + 1) & v13;
        v11 = v10 >> 6;
        v12 = 1 << v10;
        if (((1 << v10) & *(v4 + 8 * (v10 >> 6))) == 0)
        {
          goto LABEL_4;
        }
      }

      v48[1] = v5;
      v17 = *(v2 + 32);
      v18 = ((1 << v17) + 63) >> 6;
      v19 = 8 * v18;
      if ((v17 & 0x3Fu) > 0xD)
      {
        goto LABEL_31;
      }

      while (1)
      {
        v38 = v18;
        v39 = &v37;
        MEMORY[0x28223BE20](v14, v15, v19, v16);
        v21 = &v37 - ((v20 + 15) & 0x3FFFFFFFFFFFFFF0);
        memcpy(v21, (v2 + 56), v20);
        v22 = *(v2 + 16);
        v23 = *&v21[8 * v11] & ~v12;
        v40 = v21;
        *&v21[8 * v11] = v23;
        v19 = v22 - 1;
        v11 = v41;
        v42 = *(v41 + 16);
        if (v5 == v42)
        {
LABEL_13:
          v2 = sub_26B4A4078(v40, v38, v19, v2);
          goto LABEL_14;
        }

        v18 = &type metadata for VCCommand.Idiom;
        while (v5 < *(v11 + 16))
        {
          v45 = v19;
          v47 = *(v44 + v5);
          v26 = *(v2 + 40);
          v27 = sub_26B5429B4();
          v28 = -1 << *(v2 + 32);
          v12 = v27 & ~v28;
          v29 = v12 >> 6;
          v10 = 1 << v12;
          if (((1 << v12) & *(v4 + 8 * (v12 >> 6))) != 0)
          {
            v30 = ~v28;
            while (1)
            {
              v46 = *(*(v2 + 48) + v12);
              if (sub_26B542A34())
              {
                break;
              }

              v12 = (v12 + 1) & v30;
              v29 = v12 >> 6;
              v10 = 1 << v12;
              if (((1 << v12) & *(v4 + 8 * (v12 >> 6))) == 0)
              {
                v11 = v41;
                goto LABEL_17;
              }
            }

            v19 = v45;
            v11 = v41;
            v31 = v40[v29];
            v40[v29] = v31 & ~v10;
            if ((v31 & v10) != 0)
            {
              if (__OFSUB__(v19--, 1))
              {
                goto LABEL_30;
              }

              if (!v19)
              {

                v2 = MEMORY[0x277D84FA0];
                goto LABEL_14;
              }
            }
          }

          else
          {
LABEL_17:
            v19 = v45;
          }

          if (++v5 == v42)
          {
            goto LABEL_13;
          }
        }

        __break(1u);
LABEL_30:
        __break(1u);
LABEL_31:
        v33 = v19;

        v34 = v33;
        if (!swift_stdlib_isStackAllocationSafe())
        {
          break;
        }

        v19 = v33;
      }

      v35 = swift_slowAlloc();
      memcpy(v35, (v2 + 56), v34);
      v36 = sub_26B4A3E8C(v35, v18, v2, v10, v48);

      MEMORY[0x26D678F80](v35, -1, -1);
      v2 = v36;
    }

LABEL_14:
  }

  else
  {

    v2 = MEMORY[0x277D84FA0];
  }

  v24 = *MEMORY[0x277D85DE8];
  return v2;
}

uint64_t sub_26B4A33F8(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_26B4A4610(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = v2 + 32;
  v5[1] = v3;
  result = sub_26B4A3464(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_26B4A3464(uint64_t a1)
{
  v2 = *(a1 + 8);
  result = sub_26B542F84();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x277D84F90];
      }

      else
      {
        v5 = sub_26B542C34();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_26B4A3628(v7, v8, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_26B4A355C(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_26B4A355C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = (*a4 + a3);
    v8 = result - a3;
LABEL_5:
    v9 = *(v6 + v4);
    v10 = v8;
    v11 = v7;
    while (1)
    {
      v12 = *(v11 - 1);
      v15 = v9;
      v14 = v12;
      result = static VCCommand.Idiom.areInIncreasingOrder(_:_:)(&v15, &v14);
      if ((result & 1) == 0)
      {
LABEL_4:
        ++v4;
        ++v7;
        --v8;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v6)
      {
        break;
      }

      v9 = *v11;
      *v11 = *(v11 - 1);
      *--v11 = v9;
      if (__CFADD__(v10++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_26B4A3628(uint64_t result, uint64_t a2, unsigned __int8 *a3, uint64_t a4)
{
  v6 = a3;
  v81 = result;
  v7 = *(a3 + 1);
  if (v7 < 1)
  {
    v9 = MEMORY[0x277D84F90];
LABEL_91:
    v5 = *v81;
    if (!*v81)
    {
      goto LABEL_129;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_123:
      result = sub_26B4A3E78(v9);
      v9 = result;
    }

    v89 = v9;
    v75 = *(v9 + 2);
    if (v75 >= 2)
    {
      while (*v6)
      {
        v76 = *&v9[16 * v75];
        v77 = *&v9[16 * v75 + 24];
        sub_26B4A3BC8((*v6 + v76), (*v6 + *&v9[16 * v75 + 16]), *v6 + v77, v5);
        if (v4)
        {
        }

        if (v77 < v76)
        {
          goto LABEL_116;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = sub_26B4A3E78(v9);
        }

        if (v75 - 2 >= *(v9 + 2))
        {
          goto LABEL_117;
        }

        v78 = &v9[16 * v75];
        *v78 = v76;
        *(v78 + 1) = v77;
        v89 = v9;
        result = sub_26B4A3DEC(v75 - 1);
        v9 = v89;
        v75 = *(v89 + 2);
        if (v75 <= 1)
        {
        }
      }

      goto LABEL_127;
    }
  }

  v8 = 0;
  v9 = MEMORY[0x277D84F90];
  while (1)
  {
    v10 = v8++;
    if (v8 < v7)
    {
      v5 = *v6;
      v11 = *(*v6 + v10);
      v86 = *(*v6 + v8);
      v85 = v11;
      result = static VCCommand.Idiom.areInIncreasingOrder(_:_:)(&v86, &v85);
      v12 = result;
      v13 = v10;
      while (v7 - 2 != v13)
      {
        v14 = *(v5 + v13 + 1);
        v84 = *(v5 + v13 + 2);
        v83 = v14;
        result = static VCCommand.Idiom.areInIncreasingOrder(_:_:)(&v84, &v83);
        ++v13;
        if ((v12 & 1) != (result & 1))
        {
          v7 = v13 + 1;
          break;
        }
      }

      v6 = a3;
      if (v12)
      {
        if (v7 < v10)
        {
          goto LABEL_120;
        }

        if (v10 < v7)
        {
          v15 = v7 - 1;
          v16 = v10;
          do
          {
            if (v16 != v15)
            {
              v19 = *a3;
              if (!*a3)
              {
                goto LABEL_126;
              }

              v17 = *(v19 + v16);
              *(v19 + v16) = *(v19 + v15);
              *(v19 + v15) = v17;
            }
          }

          while (++v16 < v15--);
        }
      }

      v8 = v7;
    }

    v20 = *(v6 + 1);
    if (v8 < v20)
    {
      if (__OFSUB__(v8, v10))
      {
        goto LABEL_119;
      }

      if (v8 - v10 < a4)
      {
        if (__OFADD__(v10, a4))
        {
          goto LABEL_121;
        }

        if (v10 + a4 >= v20)
        {
          v21 = *(v6 + 1);
        }

        else
        {
          v21 = v10 + a4;
        }

        if (v21 < v10)
        {
LABEL_122:
          __break(1u);
          goto LABEL_123;
        }

        if (v8 != v21)
        {
          break;
        }
      }
    }

LABEL_39:
    if (v8 < v10)
    {
      goto LABEL_118;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_26B4A276C(0, *(v9 + 2) + 1, 1, v9);
      v9 = result;
    }

    v30 = *(v9 + 2);
    v29 = *(v9 + 3);
    v31 = v30 + 1;
    if (v30 >= v29 >> 1)
    {
      result = sub_26B4A276C((v29 > 1), v30 + 1, 1, v9);
      v9 = result;
    }

    *(v9 + 2) = v31;
    v32 = &v9[16 * v30];
    *(v32 + 4) = v10;
    *(v32 + 5) = v8;
    v33 = *v81;
    if (!*v81)
    {
      goto LABEL_128;
    }

    if (v30)
    {
      v6 = a3;
      while (1)
      {
        v34 = v31 - 1;
        if (v31 >= 4)
        {
          break;
        }

        if (v31 == 3)
        {
          v35 = *(v9 + 4);
          v36 = *(v9 + 5);
          v45 = __OFSUB__(v36, v35);
          v37 = v36 - v35;
          v38 = v45;
LABEL_60:
          if (v38)
          {
            goto LABEL_107;
          }

          v51 = &v9[16 * v31];
          v53 = *v51;
          v52 = *(v51 + 1);
          v54 = __OFSUB__(v52, v53);
          v55 = v52 - v53;
          v56 = v54;
          if (v54)
          {
            goto LABEL_110;
          }

          v57 = &v9[16 * v34 + 32];
          v59 = *v57;
          v58 = *(v57 + 1);
          v45 = __OFSUB__(v58, v59);
          v60 = v58 - v59;
          if (v45)
          {
            goto LABEL_113;
          }

          if (__OFADD__(v55, v60))
          {
            goto LABEL_114;
          }

          if (v55 + v60 >= v37)
          {
            if (v37 < v60)
            {
              v34 = v31 - 2;
            }

            goto LABEL_81;
          }

          goto LABEL_74;
        }

        v61 = &v9[16 * v31];
        v63 = *v61;
        v62 = *(v61 + 1);
        v45 = __OFSUB__(v62, v63);
        v55 = v62 - v63;
        v56 = v45;
LABEL_74:
        if (v56)
        {
          goto LABEL_109;
        }

        v64 = &v9[16 * v34];
        v66 = *(v64 + 4);
        v65 = *(v64 + 5);
        v45 = __OFSUB__(v65, v66);
        v67 = v65 - v66;
        if (v45)
        {
          goto LABEL_112;
        }

        if (v67 < v55)
        {
          goto LABEL_4;
        }

LABEL_81:
        v5 = v34 - 1;
        if (v34 - 1 >= v31)
        {
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
          goto LABEL_122;
        }

        if (!*a3)
        {
          goto LABEL_125;
        }

        v72 = *&v9[16 * v5 + 32];
        v73 = *&v9[16 * v34 + 40];
        sub_26B4A3BC8((*a3 + v72), (*a3 + *&v9[16 * v34 + 32]), *a3 + v73, v33);
        if (v4)
        {
        }

        if (v73 < v72)
        {
          goto LABEL_103;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = sub_26B4A3E78(v9);
        }

        if (v5 >= *(v9 + 2))
        {
          goto LABEL_104;
        }

        v74 = &v9[16 * v5];
        *(v74 + 4) = v72;
        *(v74 + 5) = v73;
        v89 = v9;
        result = sub_26B4A3DEC(v34);
        v9 = v89;
        v31 = *(v89 + 2);
        if (v31 <= 1)
        {
          goto LABEL_4;
        }
      }

      v39 = &v9[16 * v31 + 32];
      v40 = *(v39 - 64);
      v41 = *(v39 - 56);
      v45 = __OFSUB__(v41, v40);
      v42 = v41 - v40;
      if (v45)
      {
        goto LABEL_105;
      }

      v44 = *(v39 - 48);
      v43 = *(v39 - 40);
      v45 = __OFSUB__(v43, v44);
      v37 = v43 - v44;
      v38 = v45;
      if (v45)
      {
        goto LABEL_106;
      }

      v46 = &v9[16 * v31];
      v48 = *v46;
      v47 = *(v46 + 1);
      v45 = __OFSUB__(v47, v48);
      v49 = v47 - v48;
      if (v45)
      {
        goto LABEL_108;
      }

      v45 = __OFADD__(v37, v49);
      v50 = v37 + v49;
      if (v45)
      {
        goto LABEL_111;
      }

      if (v50 >= v42)
      {
        v68 = &v9[16 * v34 + 32];
        v70 = *v68;
        v69 = *(v68 + 1);
        v45 = __OFSUB__(v69, v70);
        v71 = v69 - v70;
        if (v45)
        {
          goto LABEL_115;
        }

        if (v37 < v71)
        {
          v34 = v31 - 2;
        }

        goto LABEL_81;
      }

      goto LABEL_60;
    }

    v6 = a3;
LABEL_4:
    v7 = *(v6 + 1);
    if (v8 >= v7)
    {
      goto LABEL_91;
    }
  }

  v22 = *v6;
  v23 = v10;
  v24 = (*v6 + v8);
  v79 = v23;
  v6 = (v23 - v8);
LABEL_32:
  v25 = *(v22 + v8);
  v5 = v6;
  v26 = v24;
  while (1)
  {
    v27 = *(v26 - 1);
    v88 = v25;
    v87 = v27;
    result = static VCCommand.Idiom.areInIncreasingOrder(_:_:)(&v88, &v87);
    if ((result & 1) == 0)
    {
LABEL_31:
      ++v8;
      ++v24;
      --v6;
      if (v8 != v21)
      {
        goto LABEL_32;
      }

      v8 = v21;
      v10 = v79;
      goto LABEL_39;
    }

    if (!v22)
    {
      break;
    }

    v25 = *v26;
    *v26 = *(v26 - 1);
    *--v26 = v25;
    if (__CFADD__(v5++, 1))
    {
      goto LABEL_31;
    }
  }

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
  return result;
}

uint64_t sub_26B4A3BC8(unsigned __int8 *__dst, unsigned __int8 *__src, unint64_t a3, unsigned __int8 *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = a3 - __src;
  if (__src - __dst >= (a3 - __src))
  {
    if (a4 != __src || a4 >= a3)
    {
      memmove(a4, __src, a3 - __src);
    }

    v10 = &v4[v9];
    if (v9 >= 1 && v6 > v7)
    {
      do
      {
        v15 = v6 - 1;
        --v5;
        v16 = v10;
        while (1)
        {
          v17 = v5 + 1;
          v18 = *--v16;
          v19 = *v15;
          v24 = v18;
          v23 = v19;
          if (static VCCommand.Idiom.areInIncreasingOrder(_:_:)(&v24, &v23))
          {
            break;
          }

          if (v17 < v10 || v5 >= v10)
          {
            *v5 = *v16;
          }

          --v5;
          v10 = v16;
          if (v16 <= v4)
          {
            v10 = v16;
            goto LABEL_40;
          }
        }

        if (v17 < v6 || v5 >= v6)
        {
          *v5 = *v15;
        }

        if (v10 <= v4)
        {
          break;
        }

        --v6;
      }

      while (v15 > v7);
      v6 = v15;
      if (v15 == v4)
      {
        goto LABEL_41;
      }

      goto LABEL_42;
    }

LABEL_40:
    if (v6 != v4)
    {
LABEL_42:
      memmove(v6, v4, v10 - v4);
      return 1;
    }
  }

  else
  {
    if (a4 != __dst || a4 >= __src)
    {
      memmove(a4, __dst, v8);
    }

    v10 = &v4[v8];
    if (v8 >= 1 && v6 < v5)
    {
      while (1)
      {
        v11 = *v4;
        v22 = *v6;
        v21 = v11;
        if (static VCCommand.Idiom.areInIncreasingOrder(_:_:)(&v22, &v21))
        {
          v12 = v6 + 1;
          v13 = v6;
          if (v7 >= v6 && v7 < v12)
          {
            goto LABEL_16;
          }
        }

        else
        {
          v14 = v4 + 1;
          v13 = v4;
          v12 = v6;
          if (v7 < v4)
          {
            ++v4;
          }

          else
          {
            ++v4;
            if (v7 < v14)
            {
              goto LABEL_16;
            }
          }
        }

        *v7 = *v13;
LABEL_16:
        ++v7;
        if (v4 < v10)
        {
          v6 = v12;
          if (v12 < v5)
          {
            continue;
          }
        }

        break;
      }
    }

    v6 = v7;
    if (v7 != v4)
    {
      goto LABEL_42;
    }
  }

LABEL_41:
  if (v6 >= v10)
  {
    goto LABEL_42;
  }

  return 1;
}

uint64_t sub_26B4A3DEC(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_26B4A3E78(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    v9 = *(v7 + 40);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t sub_26B4A3E8C(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v6 = *(a3 + 16);
  *(result + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v21 = result;
  v22 = v6 - 1;
  v7 = *a5;
  v8 = a5[1];
  v9 = *(*a5 + 16);
  if (v8 == v9)
  {
LABEL_2:

    return sub_26B4A4078(v21, a2, v22, a3);
  }

  v10 = a3 + 56;
  v23 = a5;
  while (v8 < v9)
  {
    v11 = *(v7 + v8 + 32);
    a5[1] = v8 + 1;
    v12 = *(a3 + 40);
    sub_26B471350();
    result = sub_26B5429B4();
    v13 = -1 << *(a3 + 32);
    v14 = result & ~v13;
    v15 = v14 >> 6;
    v16 = 1 << v14;
    if (((1 << v14) & *(v10 + 8 * (v14 >> 6))) == 0)
    {
      goto LABEL_4;
    }

    sub_26B4713A4();
    v24 = *(*(a3 + 48) + v14);
    result = sub_26B542A34();
    if ((result & 1) == 0)
    {
      v17 = ~v13;
      while (1)
      {
        v14 = (v14 + 1) & v17;
        v15 = v14 >> 6;
        v16 = 1 << v14;
        if (((1 << v14) & *(v10 + 8 * (v14 >> 6))) == 0)
        {
          break;
        }

        v25 = *(*(a3 + 48) + v14);
        result = sub_26B542A34();
        if (result)
        {
          goto LABEL_12;
        }
      }

LABEL_4:
      a5 = v23;
      goto LABEL_5;
    }

LABEL_12:
    v18 = v21[v15];
    v21[v15] = v18 & ~v16;
    a5 = v23;
    if ((v18 & v16) != 0)
    {
      v19 = v22 - 1;
      if (__OFSUB__(v22, 1))
      {
        goto LABEL_17;
      }

      --v22;
      if (!v19)
      {
        return MEMORY[0x277D84FA0];
      }
    }

LABEL_5:
    v7 = *a5;
    v8 = a5[1];
    v9 = *(*a5 + 16);
    if (v8 == v9)
    {
      goto LABEL_2;
    }
  }

  __break(1u);
LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_26B4A4078(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {

    return MEMORY[0x277D84FA0];
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803FFC80, &qword_26B5450E8);
  result = sub_26B542D44();
  v6 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    v26 = *(*(a4 + 48) + (v13 | (v11 << 6)));
    v16 = *(v6 + 40);
    sub_26B471350();
    result = sub_26B5429B4();
    v17 = -1 << *(v6 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v12 + 8 * (v18 >> 6))) == 0)
    {
      v21 = 0;
      v22 = (63 - v17) >> 6;
      while (++v19 != v22 || (v21 & 1) == 0)
      {
        v23 = v19 == v22;
        if (v19 == v22)
        {
          v19 = 0;
        }

        v21 |= v23;
        v24 = *(v12 + 8 * v19);
        if (v24 != -1)
        {
          v20 = __clz(__rbit64(~v24)) + (v19 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v20 = __clz(__rbit64((-1 << v18) & ~*(v12 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
    *(*(v6 + 48) + v20) = v26;
    ++*(v6 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    if (!v5)
    {
LABEL_28:

      return v6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_28;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_26B4A4294(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v19 = *(a3 + 16);
  if (v19)
  {
    v20 = a4 + 56;
    v18 = a3 + 32;
    sub_26B471350();
    v16 = 0;
    v5 = 0;
    while (1)
    {
      v23 = *(v18 + v5);
      v7 = *(a4 + 40);
      v8 = sub_26B5429B4();
      v9 = -1 << *(a4 + 32);
      v10 = v8 & ~v9;
      v11 = v10 >> 6;
      v12 = 1 << v10;
      if (((1 << v10) & *(v20 + 8 * (v10 >> 6))) != 0)
      {
        sub_26B4713A4();
        v21 = *(*(a4 + 48) + v10);
        result = sub_26B542A34();
        if (result)
        {
LABEL_3:
          v6 = a1[v11];
          a1[v11] = v6 | v12;
          if ((v6 & v12) == 0)
          {
            if (__OFADD__(v16, 1))
            {
              __break(1u);
              return result;
            }

            ++v16;
          }
        }

        else
        {
          v14 = ~v9;
          while (1)
          {
            v10 = (v10 + 1) & v14;
            v11 = v10 >> 6;
            v12 = 1 << v10;
            if (((1 << v10) & *(v20 + 8 * (v10 >> 6))) == 0)
            {
              break;
            }

            v22 = *(*(a4 + 48) + v10);
            result = sub_26B542A34();
            if (result)
            {
              goto LABEL_3;
            }
          }
        }
      }

      if (++v5 == v19)
      {
        goto LABEL_14;
      }
    }
  }

  v16 = 0;
LABEL_14:

  return sub_26B4A4078(a1, a2, v16, a4);
}

uint64_t sub_26B4A4448(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_26B542B84();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = MEMORY[0x26D677C20](15, a1 >> 16);
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

uint64_t sub_26B4A44C4@<X0>(uint64_t result@<X0>, uint64_t *a2@<X2>, void *a3@<X8>)
{
  if (result)
  {
    v4 = *a2;
    v5 = a2[1];
    result = sub_26B542D84();
    if ((v7 & 1) == 0)
    {
      *a3 = 0;
      a3[1] = 0xE000000000000000;
      a3[2] = 15;
      a3[3] = result;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_26B4A4514(void *result, _BYTE *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 + 56;
  v5 = -1;
  v6 = -1 << *(a4 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(a4 + 56);
  if (!a2)
  {
LABEL_17:
    v9 = 0;
    a3 = 0;
LABEL_23:
    *result = a4;
    result[1] = v4;
    result[2] = ~v6;
    result[3] = v9;
    result[4] = v7;
    return a3;
  }

  if (!a3)
  {
    v9 = 0;
    goto LABEL_23;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v9 = 0;
    v10 = (63 - v6) >> 6;
    v11 = 1;
    while (v7)
    {
LABEL_13:
      v14 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      *a2 = *(*(a4 + 48) + (v14 | (v9 << 6)));
      if (v11 == a3)
      {
        goto LABEL_23;
      }

      ++a2;
      v8 = v11;
      if (__OFADD__(v11++, 1))
      {
        __break(1u);
        goto LABEL_17;
      }
    }

    v12 = v9;
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_25;
      }

      if (v13 >= v10)
      {
        break;
      }

      v7 = *(v4 + 8 * v13);
      ++v12;
      if (v7)
      {
        v9 = v13;
        goto LABEL_13;
      }
    }

    v7 = 0;
    if (v10 <= (v9 + 1))
    {
      v16 = v9 + 1;
    }

    else
    {
      v16 = (63 - v6) >> 6;
    }

    v9 = v16 - 1;
    a3 = v8;
    goto LABEL_23;
  }

LABEL_25:
  __break(1u);
  return result;
}

uint64_t sub_26B4A4624(uint64_t a1, void *a2, uint64_t a3, uint64_t *a4)
{
  v5 = a1;
  v6 = a1 + 56;
  v7 = 1 << *(a1 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a1 + 56);
  v49 = (v7 + 63) >> 6;
  v10 = 0;

  v54 = a4;
  while (v9)
  {
LABEL_11:
    v14 = (*(v5 + 48) + ((v10 << 10) | (16 * __clz(__rbit64(v9)))));
    v15 = *v14;
    v16 = v14[1];

    v17 = sub_26B542A74();
    v18 = sub_26B542A74();
    if (a3)
    {
      v19 = sub_26B542C14();
    }

    else
    {
      v19 = 0;
    }

    v9 &= v9 - 1;
    v20 = [a2 descriptionStringForCommandIdentifier:v17 descriptionType:v18 targetTypes:v19];

    if (v20)
    {
      v21 = sub_26B542A84();
      v53 = v22;

      v23 = *v54;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v25 = *v54;
      v27 = sub_26B4A19F4(v15, v16);
      v28 = v25[2];
      v29 = (v26 & 1) == 0;
      v30 = v28 + v29;
      if (__OFADD__(v28, v29))
      {
        goto LABEL_32;
      }

      v31 = v26;
      if (v25[3] >= v30)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          v34 = v25;
          if (v26)
          {
            goto LABEL_4;
          }
        }

        else
        {
          sub_26B4A2CE0();
          v34 = v25;
          if (v31)
          {
            goto LABEL_4;
          }
        }
      }

      else
      {
        sub_26B4A2870(v30, isUniquelyReferenced_nonNull_native);
        v32 = sub_26B4A19F4(v15, v16);
        if ((v31 & 1) != (v33 & 1))
        {
          goto LABEL_34;
        }

        v27 = v32;
        v34 = v25;
        if (v31)
        {
LABEL_4:
          v11 = (v34[7] + 16 * v27);
          v12 = v11[1];
          *v11 = v21;
          v11[1] = v53;

          goto LABEL_5;
        }
      }

      v34[(v27 >> 6) + 8] |= 1 << v27;
      v43 = (v34[6] + 16 * v27);
      *v43 = v15;
      v43[1] = v16;
      v44 = (v34[7] + 16 * v27);
      *v44 = v21;
      v44[1] = v53;
      v45 = v34[2];
      v46 = __OFADD__(v45, 1);
      v47 = v45 + 1;
      if (v46)
      {
        goto LABEL_33;
      }

      v34[2] = v47;
LABEL_5:
      *v54 = v34;
      v5 = v50;
    }

    else
    {
      v35 = *v54;
      v36 = sub_26B4A19F4(v15, v16);
      LOBYTE(v35) = v37;

      if (v35)
      {
        v38 = *v54;
        v39 = swift_isUniquelyReferenced_nonNull_native();
        v40 = *v54;
        v55 = *v54;
        if (!v39)
        {
          sub_26B4A2CE0();
          v40 = v55;
        }

        v41 = *(*(v40 + 48) + 16 * v36 + 8);

        v42 = *(*(v40 + 56) + 16 * v36 + 8);

        sub_26B4A2B30(v36, v40);
        *v54 = v40;
      }
    }
  }

  while (1)
  {
    v13 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v13 >= v49)
    {
    }

    v9 = *(v6 + 8 * v13);
    ++v10;
    if (v9)
    {
      v10 = v13;
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  result = sub_26B542FE4();
  __break(1u);
  return result;
}

unint64_t sub_26B4A4978(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803FFD20, &unk_26B5453D0);
    v3 = sub_26B542E64();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_26B4A19F4(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_26B4A4A8C()
{
  result = qword_2803FFCF0;
  if (!qword_2803FFCF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803FFCE8, &unk_26B5454F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803FFCF0);
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

uint64_t getEnumTagSinglePayload for VCCommandDocumentation(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for VCCommandDocumentation(_WORD *result, int a2, int a3)
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

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_26B4A4C28(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_26B4A4C70(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_26B4A4CBC(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_26B4A4D1C(_BYTE *__src, _BYTE *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = a2 - __src;
  if (__src)
  {
    v3 = a2 - __src;
  }

  else
  {
    v3 = 0;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_11:
    __break(1u);
  }

  if (v3 > 0xFF)
  {
    goto LABEL_11;
  }

  result = 0;
  __dst = 0;
  v10 = v3;
  v9 = 0;
  v8 = 0;
  if (__src && a2 != __src)
  {
    memcpy(&__dst, __src, v2);
    result = __dst;
  }

  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_26B4A4DD4(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (result <= 14)
    {
      if (result < 0)
      {
        __break(1u);
      }

      else
      {
        return 0;
      }
    }

    else
    {
      v2 = sub_26B542824();
      v3 = *(v2 + 48);
      v4 = *(v2 + 52);
      swift_allocObject();
      sub_26B5427F4();
      if (v1 >= 0x7FFFFFFF)
      {
        sub_26B542894();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = v1;
      }

      else
      {
        return v1 << 32;
      }
    }
  }

  return result;
}

void *sub_26B4A4E74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *(v3 + 16);
  v7 = *v5;
  v6 = v5[1];
  v13[0] = v7;
  v13[1] = v6;
  v12[2] = v13;
  result = sub_26B4A1F6C(sub_26B4A5140, v12, a1, a2);
  *a3 = result;
  a3[1] = v9;
  a3[2] = v10;
  a3[3] = v11;
  return result;
}

uint64_t sub_26B4A4EDC(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_26B4A4F30(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_26B4A4F84(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_26B4A4F30(a1, a2);
  }

  return a1;
}

uint64_t sub_26B4A4F98(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_1(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_26B4A5040(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  v3 = sub_26B542824();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  result = sub_26B5427D4();
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    sub_26B542894();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = v2;
  }

  return result;
}

uint64_t sub_26B4A50BC(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  v3 = sub_26B542824();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  result = sub_26B5427D4();
  if (v2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v2 > 0x7FFFFFFF)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if ((v2 & 0x8000000000000000) == 0)
  {
    return v2 << 32;
  }

LABEL_10:
  __break(1u);
  return result;
}

_OWORD *sub_26B4A5218(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_26B4A522C@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_26B4A4294(a1, a2, **(v3 + 16), *(v3 + 24));
  if (!v4)
  {
    *a3 = result;
  }

  return result;
}

void sub_26B4A5260()
{
  v0 = sub_26B542934();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8, v2, v3, v4);
  v5 = sub_26B542A64();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8, v7, v8, v9);
  sub_26B542A54();
  sub_26B5428F4();
  v10 = sub_26B542AB4();
  v389 = v11;
  v390 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803FFC40, &unk_26B5453C0);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_26B5453E0;
  v404[0] = 0;
  v13 = sub_26B470D98(&unk_287BFF390);
  v14 = sub_26B470D98(&unk_287BFF3B8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803FFC48, &unk_26B5482F0);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_26B5450C0;
  v16 = sub_26B4C6A78();
  v17 = *v16;
  v397 = v16;
  *(v15 + 32) = *v16;
  *(v15 + 40) = 1;
  *(v15 + 48) = v17;
  *(v15 + 56) = 3;
  *(v15 + 64) = v17;
  *(v15 + 72) = 8;
  *(v15 + 80) = 0x403A000000000000;
  *(v15 + 88) = 10;
  v403 = 4;
  v402 = 4;
  v18.value._object = 0x800000026B564A80;
  v18.value._countAndFlagsBits = 0xD000000000000018;
  Action.init(_:mac:)(v18, 0);
  v398 = v400;
  v399 = v401;
  v19 = sub_26B4CE5C8();
  v20 = sub_26B4D4400();
  v21 = sub_26B4D4408();
  v22 = sub_26B4D4414();
  v23 = sub_26B4D4414();
  *&v343 = v21;
  *(&v343 + 1) = v22;
  *&v306 = v14;
  *(&v306 + 1) = v15;
  *&v269 = v13;
  *(&v269 + 1) = MEMORY[0x277D84FA0];
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000025, 0x800000026B564A50, &unk_287C019B0, &unk_287BFF308, &unk_287BFF340, 0, 0, v404, v12 + 32, v19 & 1, v20 & 1, v269, v306, v343, v23, &v403, &v402, 0, 0, &v398);
  v404[0] = 1;
  v391 = sub_26B470D98(&unk_287BFF498);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_26B5450C0;
  v25 = *v16;
  *(v24 + 32) = *v16;
  *(v24 + 40) = 1;
  *(v24 + 48) = v25;
  *(v24 + 56) = 3;
  *(v24 + 64) = v25;
  *(v24 + 72) = 8;
  *(v24 + 80) = 0x403A000000000000;
  *(v24 + 88) = 10;
  v403 = 4;
  v402 = 4;
  v26.value._object = 0x800000026B564AC0;
  v26.value._countAndFlagsBits = 0xD000000000000014;
  Action.init(_:mac:)(v26, 0);
  v398 = v400;
  v399 = v401;
  v27 = sub_26B4CE5C8();
  LOBYTE(v14) = sub_26B4D4400();
  v28 = sub_26B4D4408();
  v29 = sub_26B4D4414();
  v30 = sub_26B4D4414();
  *&v344 = v28;
  *(&v344 + 1) = v29;
  *(&v307 + 1) = v24;
  *&v307 = MEMORY[0x277D84FA0];
  *(&v270 + 1) = MEMORY[0x277D84FA0];
  *&v270 = v391;
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000011, 0x800000026B564AA0, &unk_287C019E0, &unk_287BFF410, &unk_287BFF448, 0, 0, v404, v12 + 216, v27 & 1, v14 & 1, v270, v307, v344, v30, &v403, &v402, 0, 0, &v398);
  v404[0] = 0;
  v392 = sub_26B470D98(&unk_287BFF528);
  v31 = sub_26B470D98(&unk_287BFF550);
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_26B5450C0;
  v33 = *v16;
  *(v32 + 32) = *v16;
  *(v32 + 40) = 1;
  *(v32 + 48) = v33;
  *(v32 + 56) = 3;
  *(v32 + 64) = v33;
  *(v32 + 72) = 8;
  *(v32 + 80) = 0x403A000000000000;
  *(v32 + 88) = 10;
  v34 = sub_26B470F10(&unk_287BFF578);
  v403 = 4;
  v402 = 4;
  v35.value._object = 0x800000026B564B00;
  v35.value._countAndFlagsBits = 0xD000000000000014;
  Action.init(_:mac:)(v35, 0);
  v398 = v400;
  v399 = v401;
  v36 = sub_26B4D43F4();
  LOBYTE(v29) = sub_26B4CE5C8();
  LOBYTE(v21) = sub_26B4D4400();
  *&v345 = sub_26B4D4408();
  *(&v345 + 1) = sub_26B4D4414();
  *&v308 = v31;
  *(&v308 + 1) = v32;
  *(&v271 + 1) = MEMORY[0x277D84FA0];
  *&v271 = v392;
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000011, 0x800000026B564AE0, &unk_287C01A10, &unk_287BFF4F0, v36, 0, 0, v404, v12 + 400, v29 & 1, v21 & 1, v271, v308, v345, v34, &v403, &v402, 0, 0, &v398);
  v404[0] = 0;
  v37 = sub_26B470D98(&unk_287BFF650);
  v38 = sub_26B470D98(&unk_287BFF678);
  v39 = swift_allocObject();
  *(v39 + 16) = xmmword_26B5450C0;
  v40 = *v16;
  *(v39 + 32) = *v16;
  *(v39 + 40) = 1;
  *(v39 + 48) = v40;
  *(v39 + 56) = 3;
  *(v39 + 64) = v40;
  *(v39 + 72) = 8;
  *(v39 + 80) = 0x403A000000000000;
  *(v39 + 88) = 10;
  v403 = 4;
  v402 = 4;
  v41.value._countAndFlagsBits = 0xD000000000000016;
  v41.value._object = 0x800000026B564B50;
  Action.init(_:mac:)(v41, 0);
  v398 = v400;
  v399 = v401;
  v42 = sub_26B4CE5C8();
  LOBYTE(v36) = sub_26B4D4400();
  v43 = sub_26B4D4408();
  v44 = sub_26B4D4414();
  v45 = sub_26B4D4414();
  *&v346 = v43;
  *(&v346 + 1) = v44;
  *&v309 = v38;
  *(&v309 + 1) = v39;
  *&v272 = v37;
  *(&v272 + 1) = MEMORY[0x277D84FA0];
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000023, 0x800000026B564B20, &unk_287C01A40, &unk_287BFF5E0, &unk_287BFF618, 0, 0, v404, v12 + 584, v42 & 1, v36 & 1, v272, v309, v346, v45, &v403, &v402, 0, 0, &v398);
  v404[0] = 1;
  v381 = sub_26B470D98(&unk_287BFF758);
  v46 = sub_26B470D98(&unk_287BFF780);
  v47 = swift_allocObject();
  *(v47 + 16) = xmmword_26B5450C0;
  v48 = *v16;
  *(v47 + 32) = *v16;
  *(v47 + 40) = 1;
  *(v47 + 48) = v48;
  *(v47 + 56) = 3;
  *(v47 + 64) = v48;
  *(v47 + 72) = 8;
  *(v47 + 80) = 0x403A000000000000;
  *(v47 + 88) = 10;
  v403 = 4;
  v402 = 4;
  v49.value._countAndFlagsBits = 0xD000000000000010;
  v49.value._object = 0x800000026B564B90;
  Action.init(_:mac:)(v49, 0);
  v398 = v400;
  v399 = v401;
  v50 = sub_26B4CE5C8();
  LOBYTE(v43) = sub_26B4D4400();
  v51 = sub_26B4D4408();
  v52 = sub_26B4D4414();
  v53 = sub_26B4D4414();
  *&v347 = v51;
  *(&v347 + 1) = v52;
  *&v310 = v46;
  *(&v310 + 1) = v47;
  *(&v273 + 1) = MEMORY[0x277D84FA0];
  *&v273 = v381;
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000017, 0x800000026B564B70, &unk_287C01A70, &unk_287BFF6D0, &unk_287BFF708, 0, 0, v404, v12 + 768, v50 & 1, v43 & 1, v273, v310, v347, v53, &v403, &v402, 0, 0, &v398);
  v404[0] = 0;
  v54 = sub_26B470D98(&unk_287BFF810);
  v55 = sub_26B470D98(&unk_287BFF838);
  v56 = swift_allocObject();
  *(v56 + 16) = xmmword_26B5450C0;
  v57 = *v16;
  *(v56 + 32) = *v16;
  *(v56 + 40) = 1;
  *(v56 + 48) = v57;
  *(v56 + 56) = 3;
  *(v56 + 64) = v57;
  *(v56 + 72) = 8;
  *(v56 + 80) = 0x403A000000000000;
  *(v56 + 88) = 10;
  v58 = sub_26B470F10(&unk_287BFF860);
  v403 = 4;
  v402 = 4;
  v59.value._object = 0x800000026B564BD0;
  v59.value._countAndFlagsBits = 0xD000000000000010;
  Action.init(_:mac:)(v59, 0);
  v398 = v400;
  v399 = v401;
  v60 = sub_26B4D43F4();
  LOBYTE(v51) = sub_26B4CE5C8();
  LOBYTE(v52) = sub_26B4D4400();
  *&v348 = sub_26B4D4408();
  *(&v348 + 1) = sub_26B4D4414();
  *&v311 = v55;
  *(&v311 + 1) = v56;
  *&v274 = v54;
  *(&v274 + 1) = MEMORY[0x277D84FA0];
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000017, 0x800000026B564BB0, &unk_287C01AA0, &unk_287BFF7D8, v60, 0, 0, v404, v12 + 952, v51 & 1, v52 & 1, v274, v311, v348, v58, &v403, &v402, 0, 0, &v398);
  v404[0] = 0;
  v396 = sub_26B470D98(&unk_287BFF940);
  v61 = sub_26B470D98(&unk_287BFF968);
  v62 = swift_allocObject();
  *(v62 + 16) = xmmword_26B5450C0;
  v63 = *v16;
  *(v62 + 32) = *v16;
  *(v62 + 40) = 1;
  *(v62 + 48) = v63;
  *(v62 + 56) = 3;
  *(v62 + 64) = v63;
  *(v62 + 72) = 8;
  *(v62 + 80) = 0x403A000000000000;
  *(v62 + 88) = 10;
  v64 = sub_26B470F10(&unk_287BFF990);
  v403 = 4;
  v402 = 4;
  v65.value._countAndFlagsBits = 0x64697247776F6873;
  v66.value._object = 0x800000026B564BF0;
  v66.value._countAndFlagsBits = 0xD000000000000010;
  v65.value._object = 0xE800000000000000;
  Action.init(_:mac:)(v66, v65);
  v398 = v400;
  v399 = v401;
  LOBYTE(v16) = sub_26B4CE5C8();
  LOBYTE(v56) = sub_26B4D4400();
  *&v349 = sub_26B4D4408();
  *(&v349 + 1) = sub_26B4D4414();
  *&v312 = v61;
  *(&v312 + 1) = v62;
  *(&v275 + 1) = MEMORY[0x277D84FA0];
  *&v275 = v396;
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0x532E6D6574737953, 0xEF64697247776F68, &unk_287C01AD0, &unk_287BFF8B8, &unk_287BFF8F0, 0, 0, v404, v12 + 1136, v16 & 1, v56 & 1, v275, v312, v349, v64, &v403, &v402, 0, 0, &v398);
  v404[0] = 1;
  v67 = sub_26B470D98(&unk_287BFFA58);
  v68 = sub_26B470D98(&unk_287BFFA80);
  v69 = swift_allocObject();
  *(v69 + 16) = xmmword_26B545120;
  v70 = *v397;
  *(v69 + 32) = *v397;
  *(v69 + 40) = 3;
  *(v69 + 48) = v70;
  *(v69 + 56) = 8;
  v403 = 4;
  v402 = 4;
  v71.value._countAndFlagsBits = 0xD00000000000001BLL;
  v71.value._object = 0x800000026B564C40;
  Action.init(_:mac:)(v71, 0);
  v398 = v400;
  v399 = v401;
  LOBYTE(v64) = sub_26B4CE5C8();
  LOBYTE(v16) = sub_26B4D4400();
  v72 = sub_26B4D4408();
  v73 = sub_26B4D4414();
  v74 = sub_26B4D4414();
  *&v350 = v72;
  *(&v350 + 1) = v73;
  *&v313 = v68;
  *(&v313 + 1) = v69;
  *&v276 = v67;
  *(&v276 + 1) = MEMORY[0x277D84FA0];
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000022, 0x800000026B564C10, &unk_287C01B00, &unk_287BFF9E8, &unk_287BFFA20, 0, 0, v404, v12 + 1320, v64 & 1, v16 & 1, v276, v313, v350, v74, &v403, &v402, 0, 0, &v398);
  v404[0] = 1;
  v75 = sub_26B470D98(&unk_287BFFB58);
  v76 = sub_26B470D98(&unk_287BFFB80);
  v77 = swift_allocObject();
  *(v77 + 16) = xmmword_26B545120;
  v78 = *v397;
  *(v77 + 32) = *v397;
  *(v77 + 40) = 3;
  *(v77 + 48) = v78;
  *(v77 + 56) = 8;
  v403 = 4;
  v402 = 4;
  v79.value._countAndFlagsBits = 0xD00000000000001BLL;
  v79.value._object = 0x800000026B564C40;
  Action.init(_:mac:)(v79, 0);
  v398 = v400;
  v399 = v401;
  LOBYTE(v64) = sub_26B4CE5C8();
  LOBYTE(v16) = sub_26B4D4400();
  v80 = sub_26B4D4408();
  v81 = sub_26B4D4414();
  v82 = sub_26B4D4414();
  *&v351 = v80;
  *(&v351 + 1) = v81;
  *&v314 = v76;
  *(&v314 + 1) = v77;
  *&v277 = v75;
  *(&v277 + 1) = MEMORY[0x277D84FA0];
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000029, 0x800000026B564C60, &unk_287C01B30, &unk_287BFFAE8, &unk_287BFFB20, 0, 0, v404, v12 + 1504, v64 & 1, v16 & 1, v277, v314, v351, v82, &v403, &v402, 0, 0, &v398);
  v404[0] = 1;
  v83 = sub_26B470D98(&unk_287BFFC48);
  v84 = sub_26B470D98(&unk_287BFFC70);
  v85 = swift_allocObject();
  *(v85 + 16) = xmmword_26B545120;
  v86 = *v397;
  *(v85 + 32) = *v397;
  *(v85 + 40) = 3;
  *(v85 + 48) = v86;
  *(v85 + 56) = 8;
  v403 = 4;
  v402 = 4;
  v87.value._object = 0x800000026B564CB0;
  v87.value._countAndFlagsBits = 0xD000000000000018;
  Action.init(_:mac:)(v87, 0);
  v398 = v400;
  v399 = v401;
  LOBYTE(v64) = sub_26B4CE5C8();
  LOBYTE(v16) = sub_26B4D4400();
  v88 = sub_26B4D4408();
  v89 = sub_26B4D4414();
  v90 = sub_26B4D4414();
  *&v352 = v88;
  *(&v352 + 1) = v89;
  *&v315 = v84;
  *(&v315 + 1) = v85;
  *&v278 = v83;
  *(&v278 + 1) = MEMORY[0x277D84FA0];
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD00000000000001FLL, 0x800000026B564C90, &unk_287C01B60, &unk_287BFFBD8, &unk_287BFFC10, 0, 0, v404, v12 + 1688, v64 & 1, v16 & 1, v278, v315, v352, v90, &v403, &v402, 0, 0, &v398);
  v404[0] = 0;
  v91 = sub_26B470D98(&unk_287BFFD50);
  v92 = sub_26B470D98(&unk_287BFFD78);
  v93 = swift_allocObject();
  *(v93 + 16) = xmmword_26B5450C0;
  v94 = *v397;
  *(v93 + 32) = *v397;
  *(v93 + 40) = 1;
  *(v93 + 48) = v94;
  *(v93 + 56) = 3;
  *(v93 + 64) = v94;
  *(v93 + 72) = 8;
  *(v93 + 80) = 0x403A000000000000;
  *(v93 + 88) = 10;
  v95 = sub_26B470F10(&unk_287BFFDA0);
  v403 = 4;
  v402 = 4;
  v96.value._countAndFlagsBits = 0xD000000000000015;
  v96.value._object = 0x800000026B564D00;
  Action.init(_:mac:)(v96, 0);
  v398 = v400;
  v399 = v401;
  LOBYTE(v16) = sub_26B4CE5C8();
  LOBYTE(v89) = sub_26B4D4400();
  *&v353 = sub_26B4D4408();
  *(&v353 + 1) = sub_26B4D4414();
  *&v316 = v92;
  *(&v316 + 1) = v93;
  *&v279 = v91;
  *(&v279 + 1) = MEMORY[0x277D84FA0];
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000022, 0x800000026B564CD0, &unk_287C01B90, &unk_287BFFCC8, &unk_287BFFD00, 0, 0, v404, v12 + 1872, v16 & 1, v89 & 1, v279, v316, v353, v95, &v403, &v402, 0, 0, &v398);
  v404[0] = 1;
  v97 = sub_26B470D98(&unk_287BFFE78);
  v98 = sub_26B470D98(&unk_287BFFEA0);
  v99 = swift_allocObject();
  *(v99 + 16) = xmmword_26B545120;
  v100 = *v397;
  *(v99 + 32) = *v397;
  *(v99 + 40) = 3;
  *(v99 + 48) = v100;
  *(v99 + 56) = 8;
  v403 = 4;
  v402 = 4;
  v101.value._countAndFlagsBits = 0xD000000000000028;
  v101.value._object = 0x800000026B564D60;
  Action.init(_:mac:)(v101, 0);
  v398 = v400;
  v399 = v401;
  LOBYTE(v95) = sub_26B4CE5C8();
  LOBYTE(v16) = sub_26B4D4400();
  v102 = sub_26B4D4408();
  v103 = sub_26B4D4414();
  v104 = sub_26B4D4414();
  *&v354 = v102;
  *(&v354 + 1) = v103;
  *&v317 = v98;
  *(&v317 + 1) = v99;
  *&v280 = v97;
  *(&v280 + 1) = MEMORY[0x277D84FA0];
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000035, 0x800000026B564D20, &unk_287C01BC0, &unk_287BFFE08, &unk_287BFFE40, 0, 0, v404, v12 + 2056, v95 & 1, v16 & 1, v280, v317, v354, v104, &v403, &v402, 0, 0, &v398);
  v404[0] = 1;
  v105 = sub_26B470D98(&unk_287BFFF98);
  v106 = sub_26B470D98(&unk_287BFFFC0);
  v107 = swift_allocObject();
  *(v107 + 16) = xmmword_26B545120;
  v108 = *v397;
  *(v107 + 32) = *v397;
  *(v107 + 40) = 3;
  *(v107 + 48) = v108;
  *(v107 + 56) = 8;
  v403 = 4;
  v402 = 4;
  v109.value._countAndFlagsBits = 0xD000000000000028;
  v109.value._object = 0x800000026B564D60;
  Action.init(_:mac:)(v109, 0);
  v398 = v400;
  v399 = v401;
  LOBYTE(v95) = sub_26B4CE5C8();
  LOBYTE(v16) = sub_26B4D4400();
  v110 = sub_26B4D4408();
  v111 = sub_26B4D4414();
  v112 = sub_26B4D4414();
  *&v355 = v110;
  *(&v355 + 1) = v111;
  *&v318 = v106;
  *(&v318 + 1) = v107;
  *&v281 = v105;
  *(&v281 + 1) = MEMORY[0x277D84FA0];
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD00000000000003CLL, 0x800000026B564D90, &unk_287C01BF0, &unk_287BFFF28, &unk_287BFFF60, 0, 0, v404, v12 + 2240, v95 & 1, v16 & 1, v281, v318, v355, v112, &v403, &v402, 0, 0, &v398);
  v404[0] = 1;
  v113 = sub_26B470D98(&unk_287C00098);
  v114 = sub_26B470D98(&unk_287C000C0);
  v115 = swift_allocObject();
  *(v115 + 16) = xmmword_26B545120;
  v116 = *v397;
  *(v115 + 32) = *v397;
  *(v115 + 40) = 3;
  *(v115 + 48) = v116;
  *(v115 + 56) = 8;
  v403 = 4;
  v402 = 4;
  v117.value._countAndFlagsBits = 0xD000000000000025;
  v117.value._object = 0x800000026B564E10;
  Action.init(_:mac:)(v117, 0);
  v398 = v400;
  v399 = v401;
  LOBYTE(v95) = sub_26B4CE5C8();
  LOBYTE(v16) = sub_26B4D4400();
  v118 = sub_26B4D4408();
  v119 = sub_26B4D4414();
  v120 = sub_26B4D4414();
  *&v356 = v118;
  *(&v356 + 1) = v119;
  *&v319 = v114;
  *(&v319 + 1) = v115;
  *&v282 = v113;
  *(&v282 + 1) = MEMORY[0x277D84FA0];
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000032, 0x800000026B564DD0, &unk_287C01C20, &unk_287C00028, &unk_287C00060, 0, 0, v404, v12 + 2424, v95 & 1, v16 & 1, v282, v319, v356, v120, &v403, &v402, 0, 0, &v398);
  v404[0] = 1;
  v121 = sub_26B470D98(&unk_287C00150);
  v122 = sub_26B470D98(&unk_287C00178);
  v123 = swift_allocObject();
  *(v123 + 16) = xmmword_26B5450C0;
  v124 = *v397;
  *(v123 + 32) = *v397;
  *(v123 + 40) = 1;
  *(v123 + 48) = v124;
  *(v123 + 56) = 3;
  *(v123 + 64) = v124;
  *(v123 + 72) = 8;
  *(v123 + 80) = 0x403A000000000000;
  *(v123 + 88) = 10;
  v125 = sub_26B470F10(&unk_287C001A0);
  v403 = 4;
  v402 = 4;
  v126.value._countAndFlagsBits = 0x6469724765646968;
  v127.value._object = 0x800000026B564E40;
  v127.value._countAndFlagsBits = 0xD000000000000010;
  v126.value._object = 0xE800000000000000;
  Action.init(_:mac:)(v127, v126);
  v398 = v400;
  v399 = v401;
  v128 = sub_26B4D43F4();
  LOBYTE(v16) = sub_26B4CE5C8();
  LOBYTE(v119) = sub_26B4D4400();
  *&v357 = sub_26B4D4408();
  *(&v357 + 1) = sub_26B4D4414();
  *&v320 = v122;
  *(&v320 + 1) = v123;
  *&v283 = v121;
  *(&v283 + 1) = MEMORY[0x277D84FA0];
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0x482E6D6574737953, 0xEF64697247656469, &unk_287C01C50, &unk_287C00118, v128, 0, 0, v404, v12 + 2608, v16 & 1, v119 & 1, v283, v320, v357, v125, &v403, &v402, 0, 0, &v398);
  v404[0] = 0;
  v380 = sub_26B470D98(&unk_287C00288);
  v129 = sub_26B470D98(&unk_287C002B0);
  v130 = swift_allocObject();
  *(v130 + 16) = xmmword_26B5450D0;
  v131 = *v397;
  *(v130 + 32) = *v397;
  *(v130 + 40) = 3;
  *(v130 + 48) = v131;
  *(v130 + 56) = 8;
  *(v130 + 64) = 0x403A000000000000;
  *(v130 + 72) = 10;
  v132 = sub_26B470F10(&unk_287C002D8);
  v403 = 4;
  v402 = 4;
  v133.value._object = 0x800000026B564E80;
  v133.value._countAndFlagsBits = 0xD000000000000010;
  Action.init(_:mac:)(v133, 0);
  v398 = v400;
  v399 = v401;
  LOBYTE(v16) = sub_26B4CE5C8();
  LOBYTE(v128) = sub_26B4D4400();
  v134 = sub_26B4D4408();
  *(&v358 + 1) = sub_26B4D4414();
  *(&v321 + 1) = v130;
  *&v358 = v134;
  *&v321 = v129;
  *(&v284 + 1) = MEMORY[0x277D84FA0];
  *&v284 = v380;
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000018, 0x800000026B564E60, &unk_287C01C80, &unk_287C00218, &unk_287C00250, 0, 0, v404, v12 + 2792, v16 & 1, v128 & 1, v284, v321, v358, v132, &v403, &v402, 0, 0, &v398);
  v404[0] = 0;
  v382 = sub_26B470D98(&unk_287C003B8);
  v135 = sub_26B470D98(&unk_287C003E0);
  v136 = swift_allocObject();
  *(v136 + 16) = xmmword_26B5450C0;
  v137 = *v397;
  *(v136 + 32) = *v397;
  *(v136 + 40) = 1;
  *(v136 + 48) = v137;
  *(v136 + 56) = 3;
  *(v136 + 64) = v137;
  *(v136 + 72) = 8;
  *(v136 + 80) = 0x403A000000000000;
  *(v136 + 88) = 10;
  v138 = sub_26B470F10(&unk_287C00408);
  v403 = 4;
  v402 = 4;
  v139.value._object = 0x800000026B564EC0;
  v139.value._countAndFlagsBits = 0xD000000000000011;
  Action.init(_:mac:)(v139, 0);
  v398 = v400;
  v399 = v401;
  LOBYTE(v16) = sub_26B4CE5C8();
  LOBYTE(v128) = sub_26B4D4400();
  *&v359 = sub_26B4D4408();
  *(&v359 + 1) = sub_26B4D4414();
  *&v322 = v135;
  *(&v322 + 1) = v136;
  *(&v285 + 1) = MEMORY[0x277D84FA0];
  *&v285 = v382;
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000019, 0x800000026B564EA0, &unk_287C01CB0, &unk_287C00330, &unk_287C00368, 0, 0, v404, v12 + 2976, v16 & 1, v128 & 1, v285, v322, v359, v138, &v403, &v402, 0, 0, &v398);
  v404[0] = 0;
  v383 = sub_26B470D98(&unk_287C004E8);
  v140 = sub_26B470D98(&unk_287C00510);
  v141 = swift_allocObject();
  *(v141 + 16) = xmmword_26B5450C0;
  v142 = *v397;
  *(v141 + 32) = *v397;
  *(v141 + 40) = 1;
  *(v141 + 48) = v142;
  *(v141 + 56) = 3;
  *(v141 + 64) = v142;
  *(v141 + 72) = 8;
  *(v141 + 80) = 0x403A000000000000;
  *(v141 + 88) = 10;
  v143 = sub_26B470F10(&unk_287C00538);
  v403 = 4;
  v402 = 4;
  v144.value._object = 0x800000026B564EC0;
  v144.value._countAndFlagsBits = 0xD000000000000011;
  Action.init(_:mac:)(v144, 0);
  v398 = v400;
  v399 = v401;
  LOBYTE(v16) = sub_26B4CE5C8();
  LOBYTE(v128) = sub_26B4D4400();
  *&v360 = sub_26B4D4408();
  *(&v360 + 1) = sub_26B4D4414();
  *&v323 = v140;
  *(&v323 + 1) = v141;
  *(&v286 + 1) = MEMORY[0x277D84FA0];
  *&v286 = v383;
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000026, 0x800000026B564EE0, &unk_287C01CE0, &unk_287C00460, &unk_287C00498, 0, 0, v404, v12 + 3160, v16 & 1, v128 & 1, v286, v323, v360, v143, &v403, &v402, 0, 0, &v398);
  v404[0] = 1;
  v393 = sub_26B470D98(&unk_287C00600);
  v145 = sub_26B470D98(&unk_287C00628);
  v146 = swift_allocObject();
  *(v146 + 16) = xmmword_26B5450D0;
  v147 = *v397;
  *(v146 + 32) = *v397;
  *(v146 + 40) = 3;
  *(v146 + 48) = v147;
  *(v146 + 56) = 8;
  *(v146 + 64) = 0x403A000000000000;
  *(v146 + 72) = 10;
  v148 = sub_26B470F10(&unk_287C00650);
  v403 = 4;
  v402 = 4;
  v149.value._object = 0x800000026B564F30;
  v149.value._countAndFlagsBits = 0xD000000000000015;
  Action.init(_:mac:)(v149, 0);
  v398 = v400;
  v399 = v401;
  LOBYTE(v83) = sub_26B4CE5C8();
  LOBYTE(v16) = sub_26B4D4400();
  *&v361 = sub_26B4D4408();
  *(&v361 + 1) = sub_26B4D4414();
  *&v324 = v145;
  *(&v324 + 1) = v146;
  *(&v287 + 1) = MEMORY[0x277D84FA0];
  *&v287 = v393;
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD00000000000001DLL, 0x800000026B564F10, &unk_287C01D10, &unk_287C00590, &unk_287C005C8, 0, 0, v404, v12 + 3344, v83 & 1, v16 & 1, v287, v324, v361, v148, &v403, &v402, 0, 0, &v398);
  v404[0] = 0;
  v394 = sub_26B470D98(&unk_287C006F0);
  v387 = sub_26B470D98(&unk_287C00718);
  v150 = sub_26B470D98(&unk_287C00740);
  v151 = swift_allocObject();
  *(v151 + 16) = xmmword_26B5450D0;
  v152 = *v397;
  *(v151 + 32) = *v397;
  *(v151 + 40) = 1;
  *(v151 + 48) = v152;
  *(v151 + 56) = 3;
  *(v151 + 64) = v152;
  *(v151 + 72) = 8;
  v403 = 4;
  v402 = 4;
  v153.value._object = 0x800000026B564F70;
  v153.value._countAndFlagsBits = 0xD000000000000018;
  Action.init(_:mac:)(v153, 0);
  v398 = v400;
  v399 = v401;
  v154 = sub_26B4D43F4();
  LOBYTE(v148) = sub_26B4CE5C8();
  LOBYTE(v16) = sub_26B4D4400();
  v155 = sub_26B4D4408();
  v156 = sub_26B4D4414();
  v157 = sub_26B4D4414();
  *&v362 = v155;
  *(&v362 + 1) = v156;
  *&v325 = v150;
  *(&v325 + 1) = v151;
  *(&v288 + 1) = v387;
  *&v288 = v394;
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000019, 0x800000026B564F50, &unk_287C01D40, &unk_287C006B8, v154, 0, 0, v404, v12 + 3528, v148 & 1, v16 & 1, v288, v325, v362, v157, &v403, &v402, 0, 0, &v398);
  v404[0] = 0;
  v395 = sub_26B470D98(&unk_287C00818);
  v388 = sub_26B470D98(&unk_287C00840);
  v158 = sub_26B470D98(&unk_287C00868);
  v159 = swift_allocObject();
  *(v159 + 16) = xmmword_26B5450D0;
  v160 = *v397;
  *(v159 + 32) = *v397;
  *(v159 + 40) = 1;
  *(v159 + 48) = v160;
  *(v159 + 56) = 3;
  *(v159 + 64) = v160;
  *(v159 + 72) = 8;
  v161 = sub_26B470F10(&unk_287C00890);
  v403 = 4;
  v402 = 4;
  v162.value._object = 0x800000026B564F70;
  v162.value._countAndFlagsBits = 0xD000000000000018;
  Action.init(_:mac:)(v162, 0);
  v398 = v400;
  v399 = v401;
  LOBYTE(v16) = sub_26B4CE5C8();
  LOBYTE(v154) = sub_26B4D4400();
  *&v363 = sub_26B4D4408();
  *(&v363 + 1) = sub_26B4D4414();
  *&v326 = v158;
  *(&v326 + 1) = v159;
  *(&v289 + 1) = v388;
  *&v289 = v395;
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000021, 0x800000026B564F90, &unk_287C01D70, &unk_287C007A8, &unk_287C007E0, 0, 0, v404, v12 + 3712, v16 & 1, v154 & 1, v289, v326, v363, v161, &v403, &v402, 0, 0, &v398);
  v404[0] = 1;
  v163 = sub_26B470D98(&unk_287C00930);
  v164 = sub_26B470D98(&unk_287C00958);
  v165 = sub_26B470F10(&unk_287C009D0);
  v403 = 4;
  v402 = 4;
  v166.value._object = 0x800000026B564FE0;
  v166.value._countAndFlagsBits = 0xD000000000000016;
  Action.init(_:mac:)(v166, 0);
  v398 = v400;
  v399 = v401;
  v167 = sub_26B4D43F4();
  LOBYTE(v16) = sub_26B4CE5C8();
  LOBYTE(v159) = sub_26B4D4400();
  *&v364 = sub_26B4D4408();
  *(&v364 + 1) = sub_26B4D4414();
  *&v327 = v164;
  *(&v327 + 1) = &unk_287C00980;
  *&v290 = v163;
  *(&v290 + 1) = MEMORY[0x277D84FA0];
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD00000000000001DLL, 0x800000026B564FC0, &unk_287C01DA0, &unk_287C008F8, v167, 0, 0, v404, v12 + 3896, v16 & 1, v159 & 1, v290, v327, v364, v165, &v403, &v402, 0, 0, &v398);
  v404[0] = 1;
  v168 = sub_26B470D98(&unk_287C00A70);
  v169 = sub_26B470D98(&unk_287C00A98);
  v170 = sub_26B470F10(&unk_287C00B10);
  v403 = 4;
  v402 = 4;
  v171.value._object = 0x800000026B565020;
  v171.value._countAndFlagsBits = 0xD000000000000016;
  Action.init(_:mac:)(v171, 0);
  v398 = v400;
  v399 = v401;
  v172 = sub_26B4D43F4();
  LOBYTE(v16) = sub_26B4CE5C8();
  LOBYTE(v159) = sub_26B4D4400();
  *&v365 = sub_26B4D4408();
  *(&v365 + 1) = sub_26B4D4414();
  *&v328 = v169;
  *(&v328 + 1) = &unk_287C00AC0;
  *&v291 = v168;
  *(&v291 + 1) = MEMORY[0x277D84FA0];
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD00000000000001DLL, 0x800000026B565000, &unk_287C01DD0, &unk_287C00A38, v172, 0, 0, v404, v12 + 4080, v16 & 1, v159 & 1, v291, v328, v365, v170, &v403, &v402, 0, 0, &v398);
  v404[0] = 1;
  v173 = sub_26B470D98(&unk_287C00BD8);
  v174 = sub_26B470D98(&unk_287C00C00);
  v175 = swift_allocObject();
  *(v175 + 16) = xmmword_26B545100;
  *(v175 + 32) = *v397;
  *(v175 + 40) = 1;
  v176 = sub_26B470F10(&unk_287C00C28);
  v403 = 4;
  v402 = 4;
  v177.value._object = 0x800000026B565060;
  v177.value._countAndFlagsBits = 0xD000000000000014;
  Action.init(_:mac:)(v177, 0);
  v398 = v400;
  v399 = v401;
  LOBYTE(v16) = sub_26B4CE5C8();
  LOBYTE(v159) = sub_26B4D4400();
  *&v366 = sub_26B4D4408();
  *(&v366 + 1) = sub_26B4D4414();
  *&v329 = v174;
  *(&v329 + 1) = v175;
  *&v292 = v173;
  *(&v292 + 1) = MEMORY[0x277D84FA0];
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD00000000000001BLL, 0x800000026B565040, &unk_287C01E00, &unk_287C00B68, &unk_287C00BA0, 0, 0, v404, v12 + 4264, v16 & 1, v159 & 1, v292, v329, v366, v176, &v403, &v402, 0, 0, &v398);
  v404[0] = 0;
  v178 = sub_26B470D98(&unk_287C00D20);
  v179 = sub_26B470D98(&unk_287C00D48);
  v180 = swift_allocObject();
  *(v180 + 16) = xmmword_26B545100;
  *(v180 + 32) = *v397;
  *(v180 + 40) = 1;
  v181 = sub_26B470F10(&unk_287C00D70);
  v403 = 4;
  v402 = 4;
  v182.value._countAndFlagsBits = 0xD00000000000002FLL;
  v182.value._object = 0x800000026B5650A0;
  Action.init(_:mac:)(v182, 0);
  v398 = v400;
  v399 = v401;
  LOBYTE(v16) = sub_26B4CE5C8();
  LOBYTE(v159) = sub_26B4D4400();
  *&v367 = sub_26B4D4408();
  *(&v367 + 1) = sub_26B4D4414();
  *&v330 = v179;
  *(&v330 + 1) = v180;
  *&v293 = v178;
  *(&v293 + 1) = MEMORY[0x277D84FA0];
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000019, 0x800000026B565080, &unk_287C01E30, &unk_287C00CB0, &unk_287C00CE8, 0, 0, v404, v12 + 4448, v16 & 1, v159 & 1, v293, v330, v367, v181, &v403, &v402, 0, 0, &v398);
  v404[0] = 0;
  v183 = sub_26B470D98(&unk_287C00E48);
  v184 = sub_26B470D98(&unk_287C00E70);
  v185 = swift_allocObject();
  *(v185 + 16) = xmmword_26B545100;
  *(v185 + 32) = *v397;
  *(v185 + 40) = 1;
  v186 = sub_26B470F10(&unk_287C00E98);
  v403 = 4;
  v402 = 4;
  v187.value._countAndFlagsBits = 0xD00000000000002FLL;
  v187.value._object = 0x800000026B5650F0;
  Action.init(_:mac:)(v187, 0);
  v398 = v400;
  v399 = v401;
  LOBYTE(v16) = sub_26B4CE5C8();
  LOBYTE(v159) = sub_26B4D4400();
  *&v368 = sub_26B4D4408();
  *(&v368 + 1) = sub_26B4D4414();
  *&v331 = v184;
  *(&v331 + 1) = v185;
  *&v294 = v183;
  *(&v294 + 1) = MEMORY[0x277D84FA0];
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000019, 0x800000026B5650D0, &unk_287C01E60, &unk_287C00DD8, &unk_287C00E10, 0, 0, v404, v12 + 4632, v16 & 1, v159 & 1, v294, v331, v368, v186, &v403, &v402, 0, 0, &v398);
  v404[0] = 0;
  v188 = sub_26B470D98(&unk_287C00F70);
  v189 = sub_26B470D98(&unk_287C00F98);
  v190 = swift_allocObject();
  *(v190 + 16) = xmmword_26B545100;
  *(v190 + 32) = *v397;
  *(v190 + 40) = 1;
  v191 = sub_26B470F10(&unk_287C00FC0);
  v403 = 4;
  v402 = 4;
  v192.value._countAndFlagsBits = 0xD00000000000002FLL;
  v192.value._object = 0x800000026B565140;
  Action.init(_:mac:)(v192, 0);
  v398 = v400;
  v399 = v401;
  LOBYTE(v16) = sub_26B4CE5C8();
  LOBYTE(v159) = sub_26B4D4400();
  *&v369 = sub_26B4D4408();
  *(&v369 + 1) = sub_26B4D4414();
  *&v332 = v189;
  *(&v332 + 1) = v190;
  *&v295 = v188;
  *(&v295 + 1) = MEMORY[0x277D84FA0];
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000019, 0x800000026B565120, &unk_287C01E90, &unk_287C00F00, &unk_287C00F38, 0, 0, v404, v12 + 4816, v16 & 1, v159 & 1, v295, v332, v369, v191, &v403, &v402, 0, 0, &v398);
  v404[0] = 1;
  v193 = sub_26B470D98(&unk_287C01098);
  v194 = sub_26B470D98(&unk_287C010C0);
  v195 = swift_allocObject();
  *(v195 + 16) = xmmword_26B545100;
  *(v195 + 32) = *v397;
  *(v195 + 40) = 1;
  v196 = sub_26B470F10(&unk_287C010E8);
  v403 = 4;
  v402 = 4;
  v197.value._object = 0x800000026B565190;
  v197.value._countAndFlagsBits = 0xD000000000000018;
  Action.init(_:mac:)(v197, 0);
  v398 = v400;
  v399 = v401;
  LOBYTE(v16) = sub_26B4CE5C8();
  LOBYTE(v159) = sub_26B4D4400();
  *&v370 = sub_26B4D4408();
  *(&v370 + 1) = sub_26B4D4414();
  *&v333 = v194;
  *(&v333 + 1) = v195;
  *&v296 = v193;
  *(&v296 + 1) = MEMORY[0x277D84FA0];
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000018, 0x800000026B565170, &unk_287C01EC0, &unk_287C01028, &unk_287C01060, 0, 0, v404, v12 + 5000, v16 & 1, v159 & 1, v296, v333, v370, v196, &v403, &v402, 0, 0, &v398);
  v404[0] = 1;
  v198 = sub_26B470D98(&unk_287C011C8);
  v199 = sub_26B470D98(&unk_287C011F0);
  v200 = swift_allocObject();
  *(v200 + 16) = xmmword_26B545100;
  *(v200 + 32) = *v397;
  *(v200 + 40) = 1;
  v403 = 4;
  v402 = 4;
  v201.value._countAndFlagsBits = 0xD00000000000002ELL;
  v201.value._object = 0x800000026B5651E0;
  Action.init(_:mac:)(v201, 0);
  v398 = v400;
  v399 = v401;
  v202 = sub_26B4D43F4();
  LOBYTE(v196) = sub_26B4CE5C8();
  LOBYTE(v16) = sub_26B4D4400();
  v203 = sub_26B4D4408();
  v204 = sub_26B4D4414();
  v205 = sub_26B4D4414();
  *&v371 = v203;
  *(&v371 + 1) = v204;
  *&v334 = v199;
  *(&v334 + 1) = v200;
  *&v297 = v198;
  *(&v297 + 1) = MEMORY[0x277D84FA0];
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD00000000000002DLL, 0x800000026B5651B0, &unk_287C01EF0, &unk_287C01190, v202, 0, 0, v404, v12 + 5184, v196 & 1, v16 & 1, v297, v334, v371, v205, &v403, &v402, 0, 0, &v398);
  v404[0] = 1;
  v206 = sub_26B470D98(&unk_287C012D0);
  v207 = sub_26B470D98(&unk_287C012F8);
  v208 = swift_allocObject();
  *(v208 + 16) = xmmword_26B545100;
  *(v208 + 32) = *v397;
  *(v208 + 40) = 1;
  v403 = 4;
  v402 = 4;
  v209.value._countAndFlagsBits = 0xD00000000000002FLL;
  v209.value._object = 0x800000026B565240;
  Action.init(_:mac:)(v209, 0);
  v398 = v400;
  v399 = v401;
  v210 = sub_26B4D43F4();
  LOBYTE(v196) = sub_26B4CE5C8();
  LOBYTE(v16) = sub_26B4D4400();
  v211 = sub_26B4D4408();
  v212 = sub_26B4D4414();
  v213 = sub_26B4D4414();
  *&v372 = v211;
  *(&v372 + 1) = v212;
  *&v335 = v207;
  *(&v335 + 1) = v208;
  *&v298 = v206;
  *(&v298 + 1) = MEMORY[0x277D84FA0];
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD00000000000002ELL, 0x800000026B565210, &unk_287C01F20, &unk_287C01298, v210, 0, 0, v404, v12 + 5368, v196 & 1, v16 & 1, v298, v335, v372, v213, &v403, &v402, 0, 0, &v398);
  v404[0] = 1;
  v384 = sub_26B470D98(&unk_287C013D8);
  v214 = sub_26B470D98(&unk_287C01400);
  v215 = swift_allocObject();
  *(v215 + 16) = xmmword_26B545100;
  *(v215 + 32) = *v397;
  *(v215 + 40) = 1;
  v403 = 4;
  v402 = 4;
  v216.value._countAndFlagsBits = 0xD00000000000002CLL;
  v216.value._object = 0x800000026B5652A0;
  Action.init(_:mac:)(v216, 0);
  v398 = v400;
  v399 = v401;
  v217 = sub_26B4D43F4();
  LOBYTE(v196) = sub_26B4CE5C8();
  LOBYTE(v16) = sub_26B4D4400();
  v218 = sub_26B4D4408();
  v219 = sub_26B4D4414();
  v220 = sub_26B4D4414();
  *&v373 = v218;
  *(&v373 + 1) = v219;
  *&v336 = v214;
  *(&v336 + 1) = v215;
  *(&v299 + 1) = MEMORY[0x277D84FA0];
  *&v299 = v384;
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD00000000000002BLL, 0x800000026B565270, &unk_287C01F50, &unk_287C013A0, v217, 0, 0, v404, v12 + 5552, v196 & 1, v16 & 1, v299, v336, v373, v220, &v403, &v402, 0, 0, &v398);
  v404[0] = 1;
  v385 = sub_26B470D98(&unk_287C014E0);
  v221 = sub_26B470D98(&unk_287C01508);
  v222 = swift_allocObject();
  *(v222 + 16) = xmmword_26B545100;
  *(v222 + 32) = *v397;
  *(v222 + 40) = 1;
  v403 = 4;
  v402 = 4;
  v223.value._countAndFlagsBits = 0xD00000000000002ELL;
  v223.value._object = 0x800000026B565300;
  Action.init(_:mac:)(v223, 0);
  v398 = v400;
  v399 = v401;
  v224 = sub_26B4D43F4();
  LOBYTE(v196) = sub_26B4CE5C8();
  LOBYTE(v16) = sub_26B4D4400();
  v225 = sub_26B4D4408();
  v226 = sub_26B4D4414();
  v227 = sub_26B4D4414();
  *&v374 = v225;
  *(&v374 + 1) = v226;
  *&v337 = v221;
  *(&v337 + 1) = v222;
  *(&v300 + 1) = MEMORY[0x277D84FA0];
  *&v300 = v385;
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD00000000000002DLL, 0x800000026B5652D0, &unk_287C01F80, &unk_287C014A8, v224, 0, 0, v404, v12 + 5736, v196 & 1, v16 & 1, v300, v337, v374, v227, &v403, &v402, 0, 0, &v398);
  v404[0] = 0;
  v386 = sub_26B470D98(&unk_287C015D8);
  v228 = sub_26B470D98(&unk_287C01600);
  v229 = swift_allocObject();
  *(v229 + 16) = xmmword_26B545100;
  *(v229 + 32) = *v397;
  *(v229 + 40) = 1;
  v403 = 4;
  v402 = 4;
  v230.value._countAndFlagsBits = 0xD00000000000002FLL;
  v230.value._object = 0x800000026B5650A0;
  Action.init(_:mac:)(v230, 0);
  v398 = v400;
  v399 = v401;
  v231 = sub_26B4D43F4();
  LOBYTE(v196) = sub_26B4CE5C8();
  LOBYTE(v16) = sub_26B4D4400();
  v232 = sub_26B4D4408();
  v233 = sub_26B4D4414();
  v234 = sub_26B4D4414();
  *&v375 = v232;
  *(&v375 + 1) = v233;
  *&v338 = v228;
  *(&v338 + 1) = v229;
  *(&v301 + 1) = MEMORY[0x277D84FA0];
  *&v301 = v386;
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000018, 0x800000026B565330, &unk_287C01FB0, &unk_287C015A0, v231, 0, 0, v404, v12 + 5920, v196 & 1, v16 & 1, v301, v338, v375, v234, &v403, &v402, 0, 0, &v398);
  v404[0] = 0;
  v235 = sub_26B470D98(&unk_287C016B0);
  v236 = sub_26B470D98(&unk_287C016D8);
  v237 = swift_allocObject();
  *(v237 + 16) = xmmword_26B545100;
  *(v237 + 32) = *v397;
  *(v237 + 40) = 1;
  v403 = 4;
  v402 = 4;
  v238.value._countAndFlagsBits = 0xD00000000000002FLL;
  v238.value._object = 0x800000026B5650F0;
  Action.init(_:mac:)(v238, 0);
  v398 = v400;
  v399 = v401;
  v239 = sub_26B4D43F4();
  LOBYTE(v196) = sub_26B4CE5C8();
  LOBYTE(v16) = sub_26B4D4400();
  v240 = sub_26B4D4408();
  v241 = sub_26B4D4414();
  v242 = sub_26B4D4414();
  *&v376 = v240;
  *(&v376 + 1) = v241;
  *&v339 = v236;
  *(&v339 + 1) = v237;
  *&v302 = v235;
  *(&v302 + 1) = MEMORY[0x277D84FA0];
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000018, 0x800000026B565350, &unk_287C01FE0, &unk_287C01678, v239, 0, 0, v404, v12 + 6104, v196 & 1, v16 & 1, v302, v339, v376, v242, &v403, &v402, 0, 0, &v398);
  v404[0] = 0;
  v243 = sub_26B470D98(&unk_287C01788);
  v244 = sub_26B470D98(&unk_287C017B0);
  v245 = swift_allocObject();
  *(v245 + 16) = xmmword_26B545100;
  *(v245 + 32) = *v397;
  *(v245 + 40) = 1;
  v403 = 4;
  v402 = 4;
  v246.value._countAndFlagsBits = 0xD00000000000002FLL;
  v246.value._object = 0x800000026B565140;
  Action.init(_:mac:)(v246, 0);
  v398 = v400;
  v399 = v401;
  v247 = sub_26B4D43F4();
  LOBYTE(v196) = sub_26B4CE5C8();
  LOBYTE(v16) = sub_26B4D4400();
  v248 = sub_26B4D4408();
  v249 = sub_26B4D4414();
  v250 = sub_26B4D4414();
  *&v377 = v248;
  *(&v377 + 1) = v249;
  *&v340 = v244;
  *(&v340 + 1) = v245;
  *&v303 = v243;
  *(&v303 + 1) = MEMORY[0x277D84FA0];
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000018, 0x800000026B565370, &unk_287C02010, &unk_287C01750, v247, 0, 0, v404, v12 + 6288, v196 & 1, v16 & 1, v303, v340, v377, v250, &v403, &v402, 0, 0, &v398);
  v404[0] = 0;
  v251 = sub_26B470D98(&unk_287C01898);
  v252 = sub_26B470D98(&unk_287C018C0);
  v253 = swift_allocObject();
  *(v253 + 16) = xmmword_26B545100;
  *(v253 + 32) = *v397;
  *(v253 + 40) = 1;
  v403 = 4;
  v402 = 4;
  v254.value._countAndFlagsBits = 0xD000000000000030;
  v254.value._object = 0x800000026B559670;
  Action.init(_:mac:)(v254, 0);
  v398 = v400;
  v399 = v401;
  LOBYTE(v196) = sub_26B4CE5C8();
  LOBYTE(v16) = sub_26B4D4400();
  v255 = sub_26B4D4408();
  v256 = sub_26B4D4414();
  v257 = sub_26B4D4414();
  *&v378 = v255;
  *(&v378 + 1) = v256;
  *&v341 = v252;
  *(&v341 + 1) = v253;
  *&v304 = v251;
  *(&v304 + 1) = MEMORY[0x277D84FA0];
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000019, 0x800000026B565390, &unk_287C02040, &unk_287C01828, &unk_287C01860, 0, 0, v404, v12 + 6472, v196 & 1, v16 & 1, v304, v341, v378, v257, &v403, &v402, 0, 0, &v398);
  v404[0] = 0;
  v258 = sub_26B470D98(&unk_287C01960);
  v259 = sub_26B470D98(&unk_287C01988);
  v260 = swift_allocObject();
  *(v260 + 16) = xmmword_26B545100;
  *(v260 + 32) = *v397;
  *(v260 + 40) = 1;
  v403 = 4;
  v402 = 4;
  v261.value._countAndFlagsBits = 0x48657361656C6572;
  v261.value._object = 0xEB00000000646C6FLL;
  Action.init(_:mac:)(v261, 0);
  v398 = v400;
  v399 = v401;
  v262 = sub_26B4D43F4();
  LOBYTE(v16) = sub_26B4CE5C8();
  LOBYTE(v255) = sub_26B4D4400();
  v263 = sub_26B4D4408();
  v264 = sub_26B4D4414();
  v265 = sub_26B4D4414();
  *&v379 = v263;
  *(&v379 + 1) = v264;
  *&v342 = v259;
  *(&v342 + 1) = v260;
  *&v305 = v258;
  *(&v305 + 1) = MEMORY[0x277D84FA0];
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000014, 0x800000026B5653B0, &unk_287C02070, &unk_287C01928, v262, 0, 0, v404, v12 + 6656, v16 & 1, v255 & 1, v305, v342, v379, v265, &v403, &v402, 0, 0, &v398);
  LOBYTE(v258) = sub_26B4CE5C8();
  v266 = sub_26B4D4400() & 1;
  v267._countAndFlagsBits = 0x7379616C7265764FLL;
  v267._object = 0xE800000000000000;
  v268._object = v389;
  v268._countAndFlagsBits = v390;
  VCCommandCollection.init(identifier:displayName:showInSettings:showCodingGuideInSettings:commands:)(&stru_280406DF8, v267, v268, v258 & 1, v266, v12);
}

SpeechRecognitionCommandServices::VCCommandCollection *sub_26B4A886C()
{
  if (qword_280400490 != -1)
  {
    swift_once();
  }

  return &stru_280406DF8;
}

void *sub_26B4BA66C()
{
  if (qword_280400498 != -1)
  {
    swift_once();
  }

  return &unk_280406E28;
}

void sub_26B4BA6BC()
{
  v0 = sub_26B542934();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8, v2, v3, v4);
  v5 = sub_26B542A64();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8, v7, v8, v9);
  sub_26B542A54();
  sub_26B5428F4();
  v10 = sub_26B542AB4();
  v330 = v11;
  v331 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803FFC40, &unk_26B5453C0);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_26B545400;
  v340[0] = 0;
  v13 = sub_26B470D98(&unk_287C02160);
  v14 = sub_26B470D98(&unk_287C02188);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803FFC48, &unk_26B5482F0);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_26B5450D0;
  v332 = sub_26B4C6A78();
  v16 = *v332;
  *(v15 + 32) = *v332;
  *(v15 + 40) = 3;
  *(v15 + 48) = v16;
  *(v15 + 56) = 8;
  *(v15 + 64) = 0x403A000000000000;
  *(v15 + 72) = 10;
  v17 = sub_26B470F10(&unk_287C021B0);
  v339 = 4;
  v338 = 4;
  v18.value._countAndFlagsBits = 0x3A6574656C6564;
  v18.value._object = 0xE700000000000000;
  Action.init(_:mac:)(v18, 0);
  v334 = v336;
  v335 = v337;
  v19 = sub_26B4CE5C8();
  v20 = sub_26B4D4400();
  *&v293 = sub_26B4D4408();
  *(&v293 + 1) = sub_26B4D4414();
  *&v264 = v14;
  *(&v264 + 1) = v15;
  v333._rawValue = v12;
  *&v235 = v13;
  *(&v235 + 1) = MEMORY[0x277D84FA0];
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000014, 0x800000026B56A550, &unk_287C03B60, &unk_287C020F0, &unk_287C02128, 0, 0, v340, v12 + 32, v19 & 1, v20 & 1, v235, v264, v293, v17, &v339, &v338, 0, 0, &v334);
  v340[0] = 0;
  v21 = sub_26B470D98(&unk_287C02298);
  v22 = sub_26B470D98(&unk_287C022C0);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_26B545100;
  *(v23 + 32) = *v332;
  *(v23 + 40) = 1;
  v339 = 4;
  v338 = 4;
  v24.value._countAndFlagsBits = 0x65446D6574737973;
  v24.value._object = 0xEC0000006574656CLL;
  Action.init(_:mac:)(v24, 0);
  v334 = v336;
  v335 = v337;
  v25 = sub_26B4CE5C8();
  LOBYTE(v15) = sub_26B4D4400();
  v26 = sub_26B4D4408();
  v27 = sub_26B4D4414();
  v28 = sub_26B4D4414();
  *&v294 = v26;
  *(&v294 + 1) = v27;
  *&v265 = v22;
  *(&v265 + 1) = v23;
  v29 = v12 + 216;
  v30 = MEMORY[0x277D84FA0];
  *&v236 = v21;
  *(&v236 + 1) = MEMORY[0x277D84FA0];
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000013, 0x800000026B56A570, &unk_287C03B90, &unk_287C02228, &unk_287C02260, 0, 0, v340, v29, v25 & 1, v15 & 1, v236, v265, v294, v28, &v339, &v338, 0, 0, &v334);
  v340[0] = 1;
  v31 = sub_26B470D98(&unk_287C02388);
  v32 = sub_26B470D98(&unk_287C023B0);
  v33 = swift_allocObject();
  *(v33 + 16) = xmmword_26B5450C0;
  v34 = *v332;
  *(v33 + 32) = *v332;
  *(v33 + 40) = 1;
  *(v33 + 48) = v34;
  *(v33 + 56) = 3;
  *(v33 + 64) = v34;
  *(v33 + 72) = 8;
  *(v33 + 80) = 0x403A000000000000;
  *(v33 + 88) = 10;
  v35 = sub_26B470F10(&unk_287C023D8);
  v339 = 4;
  v338 = 4;
  v36.value._countAndFlagsBits = 0x6C416574656C6564;
  v36.value._object = 0xEA00000000003A6CLL;
  v37.value._countAndFlagsBits = 0x6C416574656C6564;
  v37.value._object = 0xE90000000000006CLL;
  Action.init(_:mac:)(v36, v37);
  v334 = v336;
  v335 = v337;
  LOBYTE(v15) = sub_26B4CE5C8();
  LOBYTE(v26) = sub_26B4D4400();
  *&v295 = sub_26B4D4408();
  *(&v295 + 1) = sub_26B4D4414();
  *&v266 = v32;
  *(&v266 + 1) = v33;
  *&v237 = v31;
  *(&v237 + 1) = v30;
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0x6C65442E74786554, 0xEE006C6C41657465, &unk_287C03BC0, &unk_287C02318, &unk_287C02350, 0, 0, v340, v333._rawValue + 400, v15 & 1, v26 & 1, v237, v266, v295, v35, &v339, &v338, 0, 0, &v334);
  v340[0] = 0;
  v38 = sub_26B470D98(&unk_287C024A0);
  v39 = sub_26B470D98(&unk_287C024C8);
  v40 = swift_allocObject();
  *(v40 + 16) = xmmword_26B5450C0;
  v41 = *v332;
  *(v40 + 32) = *v332;
  *(v40 + 40) = 1;
  *(v40 + 48) = v41;
  *(v40 + 56) = 3;
  *(v40 + 64) = v41;
  *(v40 + 72) = 8;
  *(v40 + 80) = 0x403A000000000000;
  *(v40 + 88) = 10;
  v42 = sub_26B470F10(&unk_287C024F0);
  v339 = 4;
  v338 = 4;
  v43.value._countAndFlagsBits = 0x68507463656C6573;
  v43.value._object = 0xED00003A65736172;
  Action.init(_:mac:)(v43, 0);
  v334 = v336;
  v335 = v337;
  LOBYTE(v15) = sub_26B4CE5C8();
  LOBYTE(v26) = sub_26B4D4400();
  *&v296 = sub_26B4D4408();
  *(&v296 + 1) = sub_26B4D4414();
  *&v267 = v39;
  *(&v267 + 1) = v40;
  *&v238 = v38;
  *(&v238 + 1) = MEMORY[0x277D84FA0];
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000011, 0x800000026B56A590, &unk_287C03BF0, &unk_287C02430, &unk_287C02468, 0, 0, v340, v333._rawValue + 584, v15 & 1, v26 & 1, v238, v267, v296, v42, &v339, &v338, 0, 0, &v334);
  v340[0] = 1;
  v44 = sub_26B470D98(&unk_287C025B8);
  v45 = sub_26B470D98(&unk_287C025E0);
  v46 = swift_allocObject();
  *(v46 + 16) = xmmword_26B5450C0;
  v47 = *v332;
  *(v46 + 32) = *v332;
  *(v46 + 40) = 1;
  *(v46 + 48) = v47;
  *(v46 + 56) = 3;
  *(v46 + 64) = v47;
  *(v46 + 72) = 8;
  *(v46 + 80) = 0x403A000000000000;
  *(v46 + 88) = 10;
  v48 = sub_26B470F10(&unk_287C02608);
  v339 = 4;
  v338 = 4;
  v49.value._countAndFlagsBits = 0xD000000000000017;
  v49.value._object = 0x800000026B56A5D0;
  Action.init(_:mac:)(v49, 0);
  v334 = v336;
  v335 = v337;
  LOBYTE(v15) = sub_26B4CE5C8();
  LOBYTE(v26) = sub_26B4D4400();
  *&v297 = sub_26B4D4408();
  *(&v297 + 1) = sub_26B4D4414();
  *&v268 = v45;
  *(&v268 + 1) = v46;
  *&v239 = v44;
  *(&v239 + 1) = MEMORY[0x277D84FA0];
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD00000000000001BLL, 0x800000026B56A5B0, &unk_287C03C20, &unk_287C02548, &unk_287C02580, 0, 0, v340, v333._rawValue + 768, v15 & 1, v26 & 1, v239, v268, v297, v48, &v339, &v338, 0, 0, &v334);
  v340[0] = 0;
  v329 = sub_26B470D98(&unk_287C026A8);
  v50 = sub_26B470D98(&unk_287C026D0);
  v51 = swift_allocObject();
  *(v51 + 16) = xmmword_26B5450C0;
  v52 = *v332;
  *(v51 + 32) = *v332;
  *(v51 + 40) = 1;
  *(v51 + 48) = v52;
  *(v51 + 56) = 3;
  *(v51 + 64) = v52;
  *(v51 + 72) = 8;
  *(v51 + 80) = 0x403A000000000000;
  *(v51 + 88) = 10;
  v53 = sub_26B470F10(&unk_287C026F8);
  v339 = 4;
  v338 = 4;
  v54.value._countAndFlagsBits = 0xD000000000000018;
  v54.value._object = 0x800000026B56A610;
  v55.value._countAndFlagsBits = 0xD00000000000002BLL;
  v55.value._object = 0x800000026B56A630;
  Action.init(_:mac:)(v54, v55);
  v334 = v336;
  v335 = v337;
  v56 = sub_26B4D43F4();
  LOBYTE(v26) = sub_26B4CE5C8();
  LOBYTE(v27) = sub_26B4D4400();
  *&v298 = sub_26B4D4408();
  *(&v298 + 1) = sub_26B4D4414();
  *&v269 = v50;
  *(&v269 + 1) = v51;
  *(&v240 + 1) = MEMORY[0x277D84FA0];
  *&v240 = v329;
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD00000000000001CLL, 0x800000026B56A5F0, &unk_287C03C50, &unk_287C02670, v56, 0, 0, v340, v333._rawValue + 952, v26 & 1, v27 & 1, v240, v269, v298, v53, &v339, &v338, 0, 0, &v334);
  v340[0] = 0;
  v327 = sub_26B470D98(&unk_287C02798);
  v57 = sub_26B470D98(&unk_287C027C0);
  v58 = swift_allocObject();
  *(v58 + 16) = xmmword_26B5450C0;
  v59 = *v332;
  *(v58 + 32) = *v332;
  *(v58 + 40) = 1;
  *(v58 + 48) = v59;
  *(v58 + 56) = 3;
  *(v58 + 64) = v59;
  *(v58 + 72) = 8;
  *(v58 + 80) = 0x403A000000000000;
  *(v58 + 88) = 10;
  v60 = sub_26B470F10(&unk_287C027E8);
  v339 = 4;
  v338 = 4;
  v61.value._countAndFlagsBits = 0xD000000000000014;
  v61.value._object = 0x800000026B56A680;
  v62.value._countAndFlagsBits = 0xD000000000000027;
  v62.value._object = 0x800000026B56A6A0;
  Action.init(_:mac:)(v61, v62);
  v334 = v336;
  v335 = v337;
  v63 = sub_26B4D43F4();
  LOBYTE(v56) = sub_26B4CE5C8();
  LOBYTE(v26) = sub_26B4D4400();
  *&v299 = sub_26B4D4408();
  *(&v299 + 1) = sub_26B4D4414();
  *&v270 = v57;
  *(&v270 + 1) = v58;
  *(&v241 + 1) = MEMORY[0x277D84FA0];
  *&v241 = v327;
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000018, 0x800000026B56A660, &unk_287C03C80, &unk_287C02760, v63, 0, 0, v340, v333._rawValue + 1136, v56 & 1, v26 & 1, v241, v270, v299, v60, &v339, &v338, 0, 0, &v334);
  v340[0] = 1;
  v328 = sub_26B470D98(&unk_287C02878);
  v64 = sub_26B470D98(&unk_287C028A0);
  v65 = swift_allocObject();
  *(v65 + 16) = xmmword_26B5450C0;
  v66 = *v332;
  *(v65 + 32) = *v332;
  *(v65 + 40) = 1;
  *(v65 + 48) = v66;
  *(v65 + 56) = 3;
  *(v65 + 64) = v66;
  *(v65 + 72) = 8;
  *(v65 + 80) = 0x403A000000000000;
  *(v65 + 88) = 10;
  v67 = sub_26B470F10(&unk_287C028C8);
  v339 = 4;
  v338 = 4;
  v68.value._countAndFlagsBits = 0xD000000000000012;
  v68.value._object = 0x800000026B56A6F0;
  Action.init(_:mac:)(v68, 0);
  v334 = v336;
  v335 = v337;
  v69 = sub_26B4D43F4();
  LOBYTE(v26) = sub_26B4CE5C8();
  LOBYTE(v27) = sub_26B4D4400();
  *&v300 = sub_26B4D4408();
  *(&v300 + 1) = sub_26B4D4414();
  *&v271 = v64;
  *(&v271 + 1) = v65;
  *(&v242 + 1) = MEMORY[0x277D84FA0];
  *&v242 = v328;
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000016, 0x800000026B56A6D0, &unk_287C03CB0, &unk_287C02840, v69, 0, 0, v340, v333._rawValue + 1320, v26 & 1, v27 & 1, v242, v271, v300, v67, &v339, &v338, 0, 0, &v334);
  v340[0] = 0;
  v70 = sub_26B470D98(&unk_287C02958);
  v71 = sub_26B470D98(&unk_287C02980);
  v72 = swift_allocObject();
  *(v72 + 16) = xmmword_26B5450C0;
  v73 = *v332;
  *(v72 + 32) = *v332;
  *(v72 + 40) = 1;
  *(v72 + 48) = v73;
  *(v72 + 56) = 3;
  *(v72 + 64) = v73;
  *(v72 + 72) = 8;
  *(v72 + 80) = 0x403A000000000000;
  *(v72 + 88) = 10;
  v74 = sub_26B470F10(&unk_287C029A8);
  v339 = 4;
  v338 = 4;
  v75.value._object = 0x800000026B56A730;
  v76.value._countAndFlagsBits = 0xD000000000000026;
  v76.value._object = 0x800000026B56A750;
  v75.value._countAndFlagsBits = 0xD000000000000013;
  Action.init(_:mac:)(v75, v76);
  v334 = v336;
  v335 = v337;
  v77 = sub_26B4D43F4();
  LOBYTE(v56) = sub_26B4CE5C8();
  LOBYTE(v26) = sub_26B4D4400();
  *&v301 = sub_26B4D4408();
  *(&v301 + 1) = sub_26B4D4414();
  *&v272 = v71;
  *(&v272 + 1) = v72;
  *&v243 = v70;
  *(&v243 + 1) = MEMORY[0x277D84FA0];
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000017, 0x800000026B56A710, &unk_287C03CE0, &unk_287C02920, v77, 0, 0, v340, v333._rawValue + 1504, v56 & 1, v26 & 1, v243, v272, v301, v74, &v339, &v338, 0, 0, &v334);
  v340[0] = 0;
  v325 = sub_26B470D98(&unk_287C02A38);
  v78 = sub_26B470D98(&unk_287C02A60);
  v79 = swift_allocObject();
  *(v79 + 16) = xmmword_26B5450C0;
  v80 = *v332;
  *(v79 + 32) = *v332;
  *(v79 + 40) = 1;
  *(v79 + 48) = v80;
  *(v79 + 56) = 3;
  *(v79 + 64) = v80;
  *(v79 + 72) = 8;
  *(v79 + 80) = 0x403A000000000000;
  *(v79 + 88) = 10;
  v81 = sub_26B470F10(&unk_287C02A88);
  v339 = 4;
  v338 = 4;
  v82.value._countAndFlagsBits = 0x654E6574656C6564;
  v82.value._object = 0xEF3A64726F577478;
  v83.value._countAndFlagsBits = 0xD000000000000022;
  v83.value._object = 0x800000026B56A7A0;
  Action.init(_:mac:)(v82, v83);
  v334 = v336;
  v335 = v337;
  v84 = sub_26B4D43F4();
  LOBYTE(v56) = sub_26B4CE5C8();
  LOBYTE(v71) = sub_26B4D4400();
  *&v302 = sub_26B4D4408();
  *(&v302 + 1) = sub_26B4D4414();
  *&v273 = v78;
  *(&v273 + 1) = v79;
  *(&v244 + 1) = MEMORY[0x277D84FA0];
  *&v244 = v325;
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000013, 0x800000026B56A780, &unk_287C03D10, &unk_287C02A00, v84, 0, 0, v340, v333._rawValue + 1688, v56 & 1, v71 & 1, v244, v273, v302, v81, &v339, &v338, 0, 0, &v334);
  v340[0] = 1;
  v326 = sub_26B470D98(&unk_287C02B18);
  v85 = sub_26B470D98(&unk_287C02B40);
  v86 = swift_allocObject();
  *(v86 + 16) = xmmword_26B5450C0;
  v87 = *v332;
  *(v86 + 32) = *v332;
  *(v86 + 40) = 1;
  *(v86 + 48) = v87;
  *(v86 + 56) = 3;
  *(v86 + 64) = v87;
  *(v86 + 72) = 8;
  *(v86 + 80) = 0x403A000000000000;
  *(v86 + 88) = 10;
  v88 = sub_26B470F10(&unk_287C02B68);
  v339 = 4;
  v338 = 4;
  v89.value._countAndFlagsBits = 0xD000000000000016;
  v89.value._object = 0x800000026B56A7F0;
  Action.init(_:mac:)(v89, 0);
  v334 = v336;
  v335 = v337;
  v90 = sub_26B4D43F4();
  LOBYTE(v70) = sub_26B4CE5C8();
  LOBYTE(v71) = sub_26B4D4400();
  *&v303 = sub_26B4D4408();
  *(&v303 + 1) = sub_26B4D4414();
  *&v274 = v85;
  *(&v274 + 1) = v86;
  *(&v245 + 1) = MEMORY[0x277D84FA0];
  *&v245 = v326;
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD00000000000001ALL, 0x800000026B56A7D0, &unk_287C03D40, &unk_287C02AE0, v90, 0, 0, v340, v333._rawValue + 1872, v70 & 1, v71 & 1, v245, v274, v303, v88, &v339, &v338, 0, 0, &v334);
  v340[0] = 1;
  v91 = sub_26B470D98(&unk_287C02BF8);
  v92 = sub_26B470D98(&unk_287C02C20);
  v93 = swift_allocObject();
  *(v93 + 16) = xmmword_26B5450C0;
  v94 = *v332;
  *(v93 + 32) = *v332;
  *(v93 + 40) = 1;
  *(v93 + 48) = v94;
  *(v93 + 56) = 3;
  *(v93 + 64) = v94;
  *(v93 + 72) = 8;
  *(v93 + 80) = 0x403A000000000000;
  *(v93 + 88) = 10;
  v95 = sub_26B470F10(&unk_287C02C48);
  v339 = 4;
  v338 = 4;
  v96.value._countAndFlagsBits = 0xD000000000000017;
  v96.value._object = 0x800000026B56A830;
  v97.value._countAndFlagsBits = 0xD00000000000002ALL;
  v97.value._object = 0x800000026B56A850;
  Action.init(_:mac:)(v96, v97);
  v334 = v336;
  v335 = v337;
  v98 = sub_26B4D43F4();
  LOBYTE(v70) = sub_26B4CE5C8();
  LOBYTE(v71) = sub_26B4D4400();
  *&v304 = sub_26B4D4408();
  *(&v304 + 1) = sub_26B4D4414();
  *&v275 = v92;
  *(&v275 + 1) = v93;
  *&v246 = v91;
  *(&v246 + 1) = MEMORY[0x277D84FA0];
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD00000000000001BLL, 0x800000026B56A810, &unk_287C03D70, &unk_287C02BC0, v98, 0, 0, v340, v333._rawValue + 2056, v70 & 1, v71 & 1, v246, v275, v304, v95, &v339, &v338, 0, 0, &v334);
  v340[0] = 1;
  v99 = sub_26B470D98(&unk_287C02CD8);
  v100 = sub_26B470D98(&unk_287C02D00);
  v101 = swift_allocObject();
  *(v101 + 16) = xmmword_26B5450C0;
  v102 = *v332;
  *(v101 + 32) = *v332;
  *(v101 + 40) = 1;
  *(v101 + 48) = v102;
  *(v101 + 56) = 3;
  *(v101 + 64) = v102;
  *(v101 + 72) = 8;
  *(v101 + 80) = 0x403A000000000000;
  *(v101 + 88) = 10;
  v103 = sub_26B470F10(&unk_287C02D28);
  v339 = 4;
  v338 = 4;
  v104.value._object = 0x800000026B56A8A0;
  v105.value._countAndFlagsBits = 0xD000000000000026;
  v105.value._object = 0x800000026B56A8C0;
  v104.value._countAndFlagsBits = 0xD000000000000013;
  Action.init(_:mac:)(v104, v105);
  v334 = v336;
  v335 = v337;
  v106 = sub_26B4D43F4();
  LOBYTE(v70) = sub_26B4CE5C8();
  LOBYTE(v71) = sub_26B4D4400();
  *&v305 = sub_26B4D4408();
  *(&v305 + 1) = sub_26B4D4414();
  *&v276 = v100;
  *(&v276 + 1) = v101;
  *&v247 = v99;
  *(&v247 + 1) = MEMORY[0x277D84FA0];
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000017, 0x800000026B56A880, &unk_287C03DA0, &unk_287C02CA0, v106, 0, 0, v340, v333._rawValue + 2240, v70 & 1, v71 & 1, v247, v276, v305, v103, &v339, &v338, 0, 0, &v334);
  v340[0] = 1;
  v107 = sub_26B470D98(&unk_287C02DB8);
  v108 = sub_26B470D98(&unk_287C02DE0);
  v109 = swift_allocObject();
  *(v109 + 16) = xmmword_26B5450C0;
  v110 = *v332;
  *(v109 + 32) = *v332;
  *(v109 + 40) = 1;
  *(v109 + 48) = v110;
  *(v109 + 56) = 3;
  *(v109 + 64) = v110;
  *(v109 + 72) = 8;
  *(v109 + 80) = 0x403A000000000000;
  *(v109 + 88) = 10;
  v111 = sub_26B470F10(&unk_287C02E08);
  v339 = 4;
  v338 = 4;
  v112.value._countAndFlagsBits = 0xD000000000000017;
  v112.value._object = 0x800000026B56A910;
  Action.init(_:mac:)(v112, 0);
  v334 = v336;
  v335 = v337;
  v113 = sub_26B4D43F4();
  LOBYTE(v70) = sub_26B4CE5C8();
  LOBYTE(v71) = sub_26B4D4400();
  *&v306 = sub_26B4D4408();
  *(&v306 + 1) = sub_26B4D4414();
  *&v277 = v108;
  *(&v277 + 1) = v109;
  *&v248 = v107;
  *(&v248 + 1) = MEMORY[0x277D84FA0];
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD00000000000001BLL, 0x800000026B56A8F0, &unk_287C03DD0, &unk_287C02D80, v113, 0, 0, v340, v333._rawValue + 2424, v70 & 1, v71 & 1, v248, v277, v306, v111, &v339, &v338, 0, 0, &v334);
  v340[0] = 1;
  v324 = sub_26B470D98(&unk_287C02E98);
  v114 = sub_26B470D98(&unk_287C02EC0);
  v115 = swift_allocObject();
  *(v115 + 16) = xmmword_26B5450C0;
  v116 = *v332;
  *(v115 + 32) = *v332;
  *(v115 + 40) = 1;
  *(v115 + 48) = v116;
  *(v115 + 56) = 3;
  *(v115 + 64) = v116;
  *(v115 + 72) = 8;
  *(v115 + 80) = 0x403A000000000000;
  *(v115 + 88) = 10;
  v117 = sub_26B470F10(&unk_287C02EE8);
  v339 = 4;
  v338 = 4;
  v118.value._countAndFlagsBits = 0xD000000000000018;
  v118.value._object = 0x800000026B56A950;
  v119.value._countAndFlagsBits = 0xD00000000000002BLL;
  v119.value._object = 0x800000026B56A970;
  Action.init(_:mac:)(v118, v119);
  v334 = v336;
  v335 = v337;
  v120 = sub_26B4D43F4();
  LOBYTE(v70) = sub_26B4CE5C8();
  LOBYTE(v71) = sub_26B4D4400();
  *&v307 = sub_26B4D4408();
  *(&v307 + 1) = sub_26B4D4414();
  *&v278 = v114;
  *(&v278 + 1) = v115;
  *(&v249 + 1) = MEMORY[0x277D84FA0];
  *&v249 = v324;
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD00000000000001CLL, 0x800000026B56A930, &unk_287C03E00, &unk_287C02E60, v120, 0, 0, v340, v333._rawValue + 2608, v70 & 1, v71 & 1, v249, v278, v307, v117, &v339, &v338, 0, 0, &v334);
  v340[0] = 1;
  v121 = sub_26B470D98(&unk_287C02F78);
  v122 = sub_26B470D98(&unk_287C02FA0);
  v123 = swift_allocObject();
  *(v123 + 16) = xmmword_26B5450C0;
  v124 = *v332;
  *(v123 + 32) = *v332;
  *(v123 + 40) = 1;
  *(v123 + 48) = v124;
  *(v123 + 56) = 3;
  *(v123 + 64) = v124;
  *(v123 + 72) = 8;
  *(v123 + 80) = 0x403A000000000000;
  *(v123 + 88) = 10;
  v125 = sub_26B470F10(&unk_287C02FC8);
  v339 = 4;
  v338 = 4;
  v126.value._countAndFlagsBits = 0xD000000000000014;
  v126.value._object = 0x800000026B56A9C0;
  v127.value._countAndFlagsBits = 0xD000000000000027;
  v127.value._object = 0x800000026B56A9E0;
  Action.init(_:mac:)(v126, v127);
  v334 = v336;
  v335 = v337;
  v128 = sub_26B4D43F4();
  LOBYTE(v70) = sub_26B4CE5C8();
  LOBYTE(v71) = sub_26B4D4400();
  *&v308 = sub_26B4D4408();
  *(&v308 + 1) = sub_26B4D4414();
  *&v279 = v122;
  *(&v279 + 1) = v123;
  *&v250 = v121;
  *(&v250 + 1) = MEMORY[0x277D84FA0];
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000018, 0x800000026B56A9A0, &unk_287C03E30, &unk_287C02F40, v128, 0, 0, v340, v333._rawValue + 2792, v70 & 1, v71 & 1, v250, v279, v308, v125, &v339, &v338, 0, 0, &v334);
  v340[0] = 1;
  v129 = sub_26B470D98(&unk_287C03058);
  v130 = sub_26B470D98(&unk_287C03080);
  v131 = swift_allocObject();
  *(v131 + 16) = xmmword_26B5450C0;
  v132 = *v332;
  *(v131 + 32) = *v332;
  *(v131 + 40) = 1;
  *(v131 + 48) = v132;
  *(v131 + 56) = 3;
  *(v131 + 64) = v132;
  *(v131 + 72) = 8;
  *(v131 + 80) = 0x403A000000000000;
  *(v131 + 88) = 10;
  v133 = sub_26B470F10(&unk_287C030A8);
  v339 = 4;
  v338 = 4;
  v134.value._object = 0x800000026B56AA30;
  v134.value._countAndFlagsBits = 0xD000000000000012;
  Action.init(_:mac:)(v134, 0);
  v334 = v336;
  v335 = v337;
  v135 = sub_26B4D43F4();
  LOBYTE(v70) = sub_26B4CE5C8();
  LOBYTE(v71) = sub_26B4D4400();
  *&v309 = sub_26B4D4408();
  *(&v309 + 1) = sub_26B4D4414();
  *&v280 = v130;
  *(&v280 + 1) = v131;
  *&v251 = v129;
  *(&v251 + 1) = MEMORY[0x277D84FA0];
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000016, 0x800000026B56AA10, &unk_287C03E60, &unk_287C03020, v135, 0, 0, v340, v333._rawValue + 2976, v70 & 1, v71 & 1, v251, v280, v309, v133, &v339, &v338, 0, 0, &v334);
  v340[0] = 1;
  v323 = sub_26B470D98(&unk_287C03138);
  v136 = sub_26B470D98(&unk_287C03160);
  v137 = swift_allocObject();
  *(v137 + 16) = xmmword_26B5450C0;
  v138 = *v332;
  *(v137 + 32) = *v332;
  *(v137 + 40) = 1;
  *(v137 + 48) = v138;
  *(v137 + 56) = 3;
  *(v137 + 64) = v138;
  *(v137 + 72) = 8;
  *(v137 + 80) = 0x403A000000000000;
  *(v137 + 88) = 10;
  v139 = sub_26B470F10(&unk_287C03188);
  v339 = 4;
  v338 = 4;
  v140.value._object = 0x800000026B56AA70;
  v141.value._countAndFlagsBits = 0xD000000000000026;
  v141.value._object = 0x800000026B56AA90;
  v140.value._countAndFlagsBits = 0xD000000000000013;
  Action.init(_:mac:)(v140, v141);
  v334 = v336;
  v335 = v337;
  v142 = sub_26B4D43F4();
  LOBYTE(v70) = sub_26B4CE5C8();
  LOBYTE(v71) = sub_26B4D4400();
  *&v310 = sub_26B4D4408();
  *(&v310 + 1) = sub_26B4D4414();
  *&v281 = v136;
  *(&v281 + 1) = v137;
  *(&v252 + 1) = MEMORY[0x277D84FA0];
  *&v252 = v323;
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000017, 0x800000026B56AA50, &unk_287C03E90, &unk_287C03100, v142, 0, 0, v340, v333._rawValue + 3160, v70 & 1, v71 & 1, v252, v281, v310, v139, &v339, &v338, 0, 0, &v334);
  v340[0] = 1;
  v322 = sub_26B470D98(&unk_287C03218);
  v143 = sub_26B470D98(&unk_287C03240);
  v144 = swift_allocObject();
  *(v144 + 16) = xmmword_26B5450C0;
  v145 = *v332;
  *(v144 + 32) = *v332;
  *(v144 + 40) = 1;
  *(v144 + 48) = v145;
  *(v144 + 56) = 3;
  *(v144 + 64) = v145;
  *(v144 + 72) = 8;
  *(v144 + 80) = 0x403A000000000000;
  *(v144 + 88) = 10;
  v146 = sub_26B470F10(&unk_287C03268);
  v339 = 4;
  v338 = 4;
  v147.value._object = 0xEF3A656E694C7478;
  v148.value._countAndFlagsBits = 0xD000000000000022;
  v148.value._object = 0x800000026B56AAE0;
  v147.value._countAndFlagsBits = 0x654E6574656C6564;
  Action.init(_:mac:)(v147, v148);
  v334 = v336;
  v335 = v337;
  v149 = sub_26B4D43F4();
  LOBYTE(v70) = sub_26B4CE5C8();
  LOBYTE(v71) = sub_26B4D4400();
  *&v311 = sub_26B4D4408();
  *(&v311 + 1) = sub_26B4D4414();
  *&v282 = v143;
  *(&v282 + 1) = v144;
  *(&v253 + 1) = MEMORY[0x277D84FA0];
  *&v253 = v322;
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000013, 0x800000026B56AAC0, &unk_287C03EC0, &unk_287C031E0, v149, 0, 0, v340, v333._rawValue + 3344, v70 & 1, v71 & 1, v253, v282, v311, v146, &v339, &v338, 0, 0, &v334);
  v340[0] = 1;
  v150 = sub_26B470D98(&unk_287C03308);
  v151 = sub_26B470D98(&unk_287C03330);
  v152 = swift_allocObject();
  *(v152 + 16) = xmmword_26B5450C0;
  v153 = *v332;
  *(v152 + 32) = *v332;
  *(v152 + 40) = 1;
  *(v152 + 48) = v153;
  *(v152 + 56) = 3;
  *(v152 + 64) = v153;
  *(v152 + 72) = 8;
  *(v152 + 80) = 0x403A000000000000;
  *(v152 + 88) = 10;
  v154 = sub_26B470F10(&unk_287C03358);
  v339 = 4;
  v338 = 4;
  v155.value._countAndFlagsBits = 0xD000000000000018;
  v155.value._object = 0x800000026B56A610;
  v156.value._countAndFlagsBits = 0xD00000000000002BLL;
  v156.value._object = 0x800000026B56A630;
  Action.init(_:mac:)(v155, v156);
  v334 = v336;
  v335 = v337;
  v157 = sub_26B4D43F4();
  LOBYTE(v70) = sub_26B4CE5C8();
  LOBYTE(v71) = sub_26B4D4400();
  *&v312 = sub_26B4D4408();
  *(&v312 + 1) = sub_26B4D4414();
  *&v283 = v151;
  *(&v283 + 1) = v152;
  *&v254 = v150;
  *(&v254 + 1) = MEMORY[0x277D84FA0];
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000030, 0x800000026B56AB10, &unk_287C03EF0, &unk_287C032D0, v157, 0, 0, v340, v333._rawValue + 3528, v70 & 1, v71 & 1, v254, v283, v312, v154, &v339, &v338, 0, 0, &v334);
  v340[0] = 0;
  v158 = sub_26B470D98(&unk_287C033E8);
  v159 = sub_26B470D98(&unk_287C03410);
  v160 = swift_allocObject();
  *(v160 + 16) = xmmword_26B5450C0;
  v161 = *v332;
  *(v160 + 32) = *v332;
  *(v160 + 40) = 1;
  *(v160 + 48) = v161;
  *(v160 + 56) = 3;
  *(v160 + 64) = v161;
  *(v160 + 72) = 8;
  *(v160 + 80) = 0x403A000000000000;
  *(v160 + 88) = 10;
  v162 = sub_26B470F10(&unk_287C03438);
  v339 = 4;
  v338 = 4;
  v163.value._countAndFlagsBits = 0xD000000000000014;
  v163.value._object = 0x800000026B56A680;
  v164.value._countAndFlagsBits = 0xD000000000000027;
  v164.value._object = 0x800000026B56A6A0;
  Action.init(_:mac:)(v163, v164);
  v334 = v336;
  v335 = v337;
  v165 = sub_26B4D43F4();
  LOBYTE(v70) = sub_26B4CE5C8();
  LOBYTE(v71) = sub_26B4D4400();
  *&v313 = sub_26B4D4408();
  *(&v313 + 1) = sub_26B4D4414();
  *&v284 = v159;
  *(&v284 + 1) = v160;
  *&v255 = v158;
  *(&v255 + 1) = MEMORY[0x277D84FA0];
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD00000000000002CLL, 0x800000026B56AB50, &unk_287C03F20, &unk_287C033B0, v165, 0, 0, v340, v333._rawValue + 3712, v70 & 1, v71 & 1, v255, v284, v313, v162, &v339, &v338, 0, 0, &v334);
  v340[0] = 0;
  v166 = sub_26B470D98(&unk_287C034C8);
  v167 = sub_26B470D98(&unk_287C034F0);
  v168 = swift_allocObject();
  *(v168 + 16) = xmmword_26B5450C0;
  v169 = *v332;
  *(v168 + 32) = *v332;
  *(v168 + 40) = 1;
  *(v168 + 48) = v169;
  *(v168 + 56) = 3;
  *(v168 + 64) = v169;
  *(v168 + 72) = 8;
  *(v168 + 80) = 0x403A000000000000;
  *(v168 + 88) = 10;
  v170 = sub_26B470F10(&unk_287C03518);
  v339 = 4;
  v338 = 4;
  v171.value._object = 0x800000026B56A730;
  v172.value._countAndFlagsBits = 0xD000000000000026;
  v172.value._object = 0x800000026B56A750;
  v171.value._countAndFlagsBits = 0xD000000000000013;
  Action.init(_:mac:)(v171, v172);
  v334 = v336;
  v335 = v337;
  v173 = sub_26B4D43F4();
  LOBYTE(v70) = sub_26B4CE5C8();
  LOBYTE(v71) = sub_26B4D4400();
  *&v314 = sub_26B4D4408();
  *(&v314 + 1) = sub_26B4D4414();
  *&v285 = v167;
  *(&v285 + 1) = v168;
  *&v256 = v166;
  *(&v256 + 1) = MEMORY[0x277D84FA0];
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD00000000000002BLL, 0x800000026B56AB80, &unk_287C03F50, &unk_287C03490, v173, 0, 0, v340, v333._rawValue + 3896, v70 & 1, v71 & 1, v256, v285, v314, v170, &v339, &v338, 0, 0, &v334);
  v340[0] = 0;
  v174 = sub_26B470D98(&unk_287C035A8);
  v175 = sub_26B470D98(&unk_287C035D0);
  v176 = swift_allocObject();
  *(v176 + 16) = xmmword_26B5450C0;
  v177 = *v332;
  *(v176 + 32) = *v332;
  *(v176 + 40) = 1;
  *(v176 + 48) = v177;
  *(v176 + 56) = 3;
  *(v176 + 64) = v177;
  *(v176 + 72) = 8;
  *(v176 + 80) = 0x403A000000000000;
  *(v176 + 88) = 10;
  v178 = sub_26B470F10(&unk_287C035F8);
  v339 = 4;
  v338 = 4;
  v179.value._countAndFlagsBits = 0xD000000000000022;
  v179.value._object = 0x800000026B56A7A0;
  v180.value._countAndFlagsBits = 0x654E6574656C6564;
  v180.value._object = 0xEF3A64726F577478;
  Action.init(_:mac:)(v180, v179);
  v334 = v336;
  v335 = v337;
  v181 = sub_26B4D43F4();
  LOBYTE(v70) = sub_26B4CE5C8();
  LOBYTE(v71) = sub_26B4D4400();
  *&v315 = sub_26B4D4408();
  *(&v315 + 1) = sub_26B4D4414();
  *&v286 = v175;
  *(&v286 + 1) = v176;
  *&v257 = v174;
  *(&v257 + 1) = MEMORY[0x277D84FA0];
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000027, 0x800000026B56ABB0, &unk_287C03F80, &unk_287C03570, v181, 0, 0, v340, v333._rawValue + 4080, v70 & 1, v71 & 1, v257, v286, v315, v178, &v339, &v338, 0, 0, &v334);
  v340[0] = 1;
  v182 = sub_26B470D98(&unk_287C03688);
  v183 = sub_26B470D98(&unk_287C036B0);
  v184 = swift_allocObject();
  *(v184 + 16) = xmmword_26B5450C0;
  v185 = *v332;
  *(v184 + 32) = *v332;
  *(v184 + 40) = 1;
  *(v184 + 48) = v185;
  *(v184 + 56) = 3;
  *(v184 + 64) = v185;
  *(v184 + 72) = 8;
  *(v184 + 80) = 0x403A000000000000;
  *(v184 + 88) = 10;
  v186 = sub_26B470F10(&unk_287C036D8);
  v339 = 4;
  v338 = 4;
  v187.value._countAndFlagsBits = 0xD000000000000017;
  v187.value._object = 0x800000026B56A830;
  v188.value._countAndFlagsBits = 0xD00000000000002ALL;
  v188.value._object = 0x800000026B56A850;
  Action.init(_:mac:)(v187, v188);
  v334 = v336;
  v335 = v337;
  v189 = sub_26B4D43F4();
  LOBYTE(v70) = sub_26B4CE5C8();
  LOBYTE(v56) = sub_26B4D4400();
  *&v316 = sub_26B4D4408();
  *(&v316 + 1) = sub_26B4D4414();
  *&v287 = v183;
  *(&v287 + 1) = v184;
  *&v258 = v182;
  *(&v258 + 1) = MEMORY[0x277D84FA0];
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD00000000000002FLL, 0x800000026B56ABE0, &unk_287C03FB0, &unk_287C03650, v189, 0, 0, v340, v333._rawValue + 4264, v70 & 1, v56 & 1, v258, v287, v316, v186, &v339, &v338, 0, 0, &v334);
  v340[0] = 1;
  v190 = sub_26B470D98(&unk_287C03768);
  v191 = sub_26B470D98(&unk_287C03790);
  v192 = swift_allocObject();
  *(v192 + 16) = xmmword_26B5450C0;
  v193 = *v332;
  *(v192 + 32) = *v332;
  *(v192 + 40) = 1;
  *(v192 + 48) = v193;
  *(v192 + 56) = 3;
  *(v192 + 64) = v193;
  *(v192 + 72) = 8;
  *(v192 + 80) = 0x403A000000000000;
  *(v192 + 88) = 10;
  v194 = sub_26B470F10(&unk_287C037B8);
  v339 = 4;
  v338 = 4;
  v195.value._object = 0x800000026B56A8A0;
  v196.value._countAndFlagsBits = 0xD000000000000026;
  v196.value._object = 0x800000026B56A8C0;
  v195.value._countAndFlagsBits = 0xD000000000000013;
  Action.init(_:mac:)(v195, v196);
  v334 = v336;
  v335 = v337;
  v197 = sub_26B4D43F4();
  LOBYTE(v70) = sub_26B4CE5C8();
  LOBYTE(v56) = sub_26B4D4400();
  *&v317 = sub_26B4D4408();
  *(&v317 + 1) = sub_26B4D4414();
  *&v288 = v191;
  *(&v288 + 1) = v192;
  *&v259 = v190;
  *(&v259 + 1) = MEMORY[0x277D84FA0];
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD00000000000002BLL, 0x800000026B56AC10, &unk_287C03FE0, &unk_287C03730, v197, 0, 0, v340, v333._rawValue + 4448, v70 & 1, v56 & 1, v259, v288, v317, v194, &v339, &v338, 0, 0, &v334);
  v340[0] = 1;
  v198 = sub_26B470D98(&unk_287C03848);
  v199 = sub_26B470D98(&unk_287C03870);
  v200 = swift_allocObject();
  *(v200 + 16) = xmmword_26B5450C0;
  v201 = *v332;
  *(v200 + 32) = *v332;
  *(v200 + 40) = 1;
  *(v200 + 48) = v201;
  *(v200 + 56) = 3;
  *(v200 + 64) = v201;
  *(v200 + 72) = 8;
  *(v200 + 80) = 0x403A000000000000;
  *(v200 + 88) = 10;
  v202 = sub_26B470F10(&unk_287C03898);
  v339 = 4;
  v338 = 4;
  v203.value._countAndFlagsBits = 0xD000000000000018;
  v203.value._object = 0x800000026B56A950;
  v204.value._countAndFlagsBits = 0xD00000000000002BLL;
  v204.value._object = 0x800000026B56A970;
  Action.init(_:mac:)(v203, v204);
  v334 = v336;
  v335 = v337;
  v205 = sub_26B4D43F4();
  LOBYTE(v70) = sub_26B4CE5C8();
  LOBYTE(v56) = sub_26B4D4400();
  *&v318 = sub_26B4D4408();
  *(&v318 + 1) = sub_26B4D4414();
  *&v289 = v199;
  *(&v289 + 1) = v200;
  *&v260 = v198;
  *(&v260 + 1) = MEMORY[0x277D84FA0];
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000030, 0x800000026B56AC40, &unk_287C04010, &unk_287C03810, v205, 0, 0, v340, v333._rawValue + 4632, v70 & 1, v56 & 1, v260, v289, v318, v202, &v339, &v338, 0, 0, &v334);
  v340[0] = 1;
  v206 = sub_26B470D98(&unk_287C03928);
  v207 = sub_26B470D98(&unk_287C03950);
  v208 = swift_allocObject();
  *(v208 + 16) = xmmword_26B5450C0;
  v209 = *v332;
  *(v208 + 32) = *v332;
  *(v208 + 40) = 1;
  *(v208 + 48) = v209;
  *(v208 + 56) = 3;
  *(v208 + 64) = v209;
  *(v208 + 72) = 8;
  *(v208 + 80) = 0x403A000000000000;
  *(v208 + 88) = 10;
  v210 = sub_26B470F10(&unk_287C03978);
  v339 = 4;
  v338 = 4;
  v211.value._countAndFlagsBits = 0xD000000000000014;
  v211.value._object = 0x800000026B56A9C0;
  v212.value._countAndFlagsBits = 0xD000000000000027;
  v212.value._object = 0x800000026B56A9E0;
  Action.init(_:mac:)(v211, v212);
  v334 = v336;
  v335 = v337;
  v213 = sub_26B4D43F4();
  LOBYTE(v70) = sub_26B4CE5C8();
  LOBYTE(v56) = sub_26B4D4400();
  *&v319 = sub_26B4D4408();
  *(&v319 + 1) = sub_26B4D4414();
  *&v290 = v207;
  *(&v290 + 1) = v208;
  *&v261 = v206;
  *(&v261 + 1) = MEMORY[0x277D84FA0];
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD00000000000002CLL, 0x800000026B56AC80, &unk_287C04040, &unk_287C038F0, v213, 0, 0, v340, v333._rawValue + 4816, v70 & 1, v56 & 1, v261, v290, v319, v210, &v339, &v338, 0, 0, &v334);
  v340[0] = 1;
  v214 = sub_26B470D98(&unk_287C03A08);
  v215 = sub_26B470D98(&unk_287C03A30);
  v216 = swift_allocObject();
  *(v216 + 16) = xmmword_26B5450C0;
  v217 = *v332;
  *(v216 + 32) = *v332;
  *(v216 + 40) = 1;
  *(v216 + 48) = v217;
  *(v216 + 56) = 3;
  *(v216 + 64) = v217;
  *(v216 + 72) = 8;
  *(v216 + 80) = 0x403A000000000000;
  *(v216 + 88) = 10;
  v218 = sub_26B470F10(&unk_287C03A58);
  v339 = 4;
  v338 = 4;
  v219.value._object = 0x800000026B56AA70;
  v220.value._countAndFlagsBits = 0xD000000000000026;
  v220.value._object = 0x800000026B56AA90;
  v219.value._countAndFlagsBits = 0xD000000000000013;
  Action.init(_:mac:)(v219, v220);
  v334 = v336;
  v335 = v337;
  v221 = sub_26B4D43F4();
  LOBYTE(v70) = sub_26B4CE5C8();
  LOBYTE(v56) = sub_26B4D4400();
  *&v320 = sub_26B4D4408();
  *(&v320 + 1) = sub_26B4D4414();
  *&v291 = v215;
  *(&v291 + 1) = v216;
  *&v262 = v214;
  *(&v262 + 1) = MEMORY[0x277D84FA0];
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD00000000000002BLL, 0x800000026B56ACB0, &unk_287C04070, &unk_287C039D0, v221, 0, 0, v340, v333._rawValue + 5000, v70 & 1, v56 & 1, v262, v291, v320, v218, &v339, &v338, 0, 0, &v334);
  v340[0] = 1;
  v222 = sub_26B470D98(&unk_287C03AE8);
  v223 = sub_26B470D98(&unk_287C03B10);
  v224 = swift_allocObject();
  *(v224 + 16) = xmmword_26B5450C0;
  v225 = *v332;
  *(v224 + 32) = *v332;
  *(v224 + 40) = 1;
  *(v224 + 48) = v225;
  *(v224 + 56) = 3;
  *(v224 + 64) = v225;
  *(v224 + 72) = 8;
  *(v224 + 80) = 0x403A000000000000;
  *(v224 + 88) = 10;
  v226 = sub_26B470F10(&unk_287C03B38);
  v339 = 4;
  v338 = 4;
  v227.value._countAndFlagsBits = 0xD000000000000022;
  v227.value._object = 0x800000026B56AAE0;
  v228.value._countAndFlagsBits = 0x654E6574656C6564;
  v228.value._object = 0xEF3A656E694C7478;
  Action.init(_:mac:)(v228, v227);
  v334 = v336;
  v335 = v337;
  v229 = sub_26B4D43F4();
  v230 = sub_26B4CE5C8();
  LOBYTE(v70) = sub_26B4D4400();
  *&v321 = sub_26B4D4408();
  *(&v321 + 1) = sub_26B4D4414();
  *&v292 = v223;
  *(&v292 + 1) = v224;
  *&v263 = v222;
  *(&v263 + 1) = MEMORY[0x277D84FA0];
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000027, 0x800000026B56ACE0, &unk_287C040A0, &unk_287C03AB0, v229, 0, 0, v340, v333._rawValue + 5184, v230 & 1, v70 & 1, v263, v292, v321, v226, &v339, &v338, 0, 0, &v334);
  LOBYTE(v224) = sub_26B4CE5C8();
  v231 = sub_26B4D4400();
  v232._countAndFlagsBits = v331;
  v233._object = 0x800000026B56A510;
  v234 = v231 & 1;
  v233._countAndFlagsBits = 0xD000000000000010;
  v232._object = v330;
  VCCommandCollection.init(identifier:displayName:showInSettings:showCodingGuideInSettings:commands:)(&unk_280406E58, v233, v232, v224 & 1, v234, v333);
}

void *sub_26B4BD61C()
{
  if (qword_2804004A0 != -1)
  {
    swift_once();
  }

  return &unk_280406E58;
}

void sub_26B4BD66C()
{
  v0 = sub_26B542A74();
  v1 = MGGetSInt32Answer();

  dword_280406E84 = v1;
}

uint64_t sub_26B4BD6C0()
{
  v0 = static VCCommand.allCommands.getter();
  v1 = *(v0 + 16);
  if (v1)
  {
    v65 = MEMORY[0x277D84F90];
    sub_26B542DF4();
    v2 = v1 - 1;
    for (i = 32; ; i += 184)
    {
      v4 = *(v0 + i);
      v5 = *(v0 + i + 16);
      v6 = *(v0 + i + 48);
      v41 = *(v0 + i + 32);
      v42 = v6;
      v39 = v4;
      v40 = v5;
      v7 = *(v0 + i + 64);
      v8 = *(v0 + i + 80);
      v9 = *(v0 + i + 112);
      v45 = *(v0 + i + 96);
      v46 = v9;
      v43 = v7;
      v44 = v8;
      v10 = *(v0 + i + 128);
      v11 = *(v0 + i + 144);
      v12 = *(v0 + i + 160);
      v50 = *(v0 + i + 176);
      v48 = v11;
      v49 = v12;
      v47 = v10;
      v13 = objc_allocWithZone(VCCommandObjC);
      sub_26B4A5160(&v39, v38);
      sub_26B4A5160(&v39, v38);
      v14 = [v13 init];
      sub_26B4A51BC(&v39);
      v59 = v47;
      v60 = v48;
      v61 = v49;
      v62 = v50;
      v55 = v43;
      v56 = v44;
      v57 = v45;
      v58 = v46;
      v51 = v39;
      v52 = v40;
      v53 = v41;
      v54 = v42;
      nullsub_1(&v51);
      v15 = &v14[OBJC_IVAR___VCCommandObjC_representedCommand];
      v16 = *&v14[OBJC_IVAR___VCCommandObjC_representedCommand + 48];
      v18 = *&v14[OBJC_IVAR___VCCommandObjC_representedCommand];
      v17 = *&v14[OBJC_IVAR___VCCommandObjC_representedCommand + 16];
      v63[2] = *&v14[OBJC_IVAR___VCCommandObjC_representedCommand + 32];
      v63[3] = v16;
      v63[0] = v18;
      v63[1] = v17;
      v19 = *&v14[OBJC_IVAR___VCCommandObjC_representedCommand + 112];
      v21 = *&v14[OBJC_IVAR___VCCommandObjC_representedCommand + 64];
      v20 = *&v14[OBJC_IVAR___VCCommandObjC_representedCommand + 80];
      v63[6] = *&v14[OBJC_IVAR___VCCommandObjC_representedCommand + 96];
      v63[7] = v19;
      v63[4] = v21;
      v63[5] = v20;
      v23 = *&v14[OBJC_IVAR___VCCommandObjC_representedCommand + 144];
      v22 = *&v14[OBJC_IVAR___VCCommandObjC_representedCommand + 160];
      v24 = *&v14[OBJC_IVAR___VCCommandObjC_representedCommand + 128];
      v64 = *&v14[OBJC_IVAR___VCCommandObjC_representedCommand + 176];
      v63[9] = v23;
      v63[10] = v22;
      v63[8] = v24;
      v25 = v51;
      v26 = v52;
      v27 = v54;
      *(v15 + 2) = v53;
      *(v15 + 3) = v27;
      *v15 = v25;
      *(v15 + 1) = v26;
      v28 = v55;
      v29 = v56;
      v30 = v58;
      *(v15 + 6) = v57;
      *(v15 + 7) = v30;
      *(v15 + 4) = v28;
      *(v15 + 5) = v29;
      v31 = v59;
      v32 = v60;
      v33 = v61;
      *(v15 + 22) = v62;
      *(v15 + 9) = v32;
      *(v15 + 10) = v33;
      *(v15 + 8) = v31;
      v34 = v14;
      sub_26B4A4CBC(v63, &qword_2803FFD30, &qword_26B545410);

      sub_26B542DD4();
      v35 = *(v65 + 16);
      sub_26B542E04();
      sub_26B542E14();
      sub_26B542DE4();
      if (!v2)
      {
        break;
      }

      --v2;
    }

    v37 = v65;
  }

  else
  {

    v37 = MEMORY[0x277D84F90];
  }

  qword_2804004C0 = v37;
  return result;
}

uint64_t sub_26B4BD900()
{
  result = static VCCommand.allCommands.getter();
  v1 = MEMORY[0x277D84F90];
  v77 = *(result + 16);
  if (v77)
  {
    v2 = 0;
    v75 = result + 32;
    v78 = MEMORY[0x277D84F90];
    v76 = result;
    while (v2 < *(result + 16))
    {
      v3 = v75 + 184 * v2;
      v4 = *v3;
      v5 = *(v3 + 16);
      v6 = *(v3 + 48);
      v109 = *(v3 + 32);
      v110 = v6;
      v107 = v4;
      v108 = v5;
      v7 = *(v3 + 64);
      v8 = *(v3 + 80);
      v9 = *(v3 + 112);
      v113 = *(v3 + 96);
      v114 = v9;
      v111 = v7;
      v112 = v8;
      v10 = *(v3 + 128);
      v11 = *(v3 + 144);
      v12 = *(v3 + 160);
      v118 = *(v3 + 176);
      v116 = v11;
      v117 = v12;
      v115 = v10;
      sub_26B4A5160(&v107, &v95);
      if (qword_2804004B0 != -1)
      {
        swift_once();
      }

      v79 = v2 + 1;
      v13 = &unk_287C04148;
      if (dword_280406E84 != 1)
      {
        v13 = v1;
      }

      if (dword_280406E84 == 3)
      {
        v14 = &unk_287C04120;
      }

      else
      {
        v14 = v13;
      }

      v15 = v111;
      if (*(v111 + 16) && (v80 = *(v14 + 2)) != 0)
      {
        v16 = 0;
        v17 = v111 + 56;
        while (1)
        {
          LOBYTE(v95) = v14[v16 + 32];
          if (*(v15 + 16))
          {
            v18 = *(v15 + 40);
            sub_26B471350();
            v19 = sub_26B5429B4();
            v20 = -1 << *(v15 + 32);
            v21 = v19 & ~v20;
            if ((*(v17 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21))
            {
              break;
            }
          }

LABEL_15:
          if (++v16 == v80)
          {
            goto LABEL_3;
          }
        }

        v22 = ~v20;
        sub_26B4713A4();
        while (1)
        {
          v81[0] = *(*(v15 + 48) + v21);
          if (sub_26B542A34())
          {
            break;
          }

          v21 = (v21 + 1) & v22;
          if (((*(v17 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) == 0)
          {
            goto LABEL_15;
          }
        }

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v24 = v78;
        *&v82 = v78;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_26B4A2120(0, *(v78 + 16) + 1, 1);
          v24 = v82;
        }

        v1 = MEMORY[0x277D84F90];
        result = v76;
        v2 = v79;
        v26 = *(v24 + 16);
        v25 = *(v24 + 24);
        if (v26 >= v25 >> 1)
        {
          sub_26B4A2120((v25 > 1), v26 + 1, 1);
          result = v76;
          v24 = v82;
        }

        *(v24 + 16) = v26 + 1;
        v78 = v24;
        v27 = v24 + 184 * v26;
        v28 = v107;
        v29 = v108;
        v30 = v110;
        *(v27 + 64) = v109;
        *(v27 + 80) = v30;
        *(v27 + 32) = v28;
        *(v27 + 48) = v29;
        v31 = v111;
        v32 = v112;
        v33 = v114;
        *(v27 + 128) = v113;
        *(v27 + 144) = v33;
        *(v27 + 96) = v31;
        *(v27 + 112) = v32;
        v34 = v115;
        v35 = v116;
        v36 = v117;
        *(v27 + 208) = v118;
        *(v27 + 176) = v35;
        *(v27 + 192) = v36;
        *(v27 + 160) = v34;
        if (v79 == v77)
        {
          goto LABEL_29;
        }
      }

      else
      {
LABEL_3:

        sub_26B4A51BC(&v107);
        result = v76;
        v2 = v79;
        v1 = MEMORY[0x277D84F90];
        if (v79 == v77)
        {
          goto LABEL_29;
        }
      }
    }

    __break(1u);
  }

  else
  {
    v78 = MEMORY[0x277D84F90];
LABEL_29:

    v37 = *(v78 + 16);
    if (v37)
    {
      v94 = v1;
      sub_26B542DF4();
      v38 = v78;
      v39 = v37 - 1;
      for (i = 32; ; i += 184)
      {
        v41 = (v38 + i);
        v42 = *v41;
        v43 = v41[1];
        v44 = v41[3];
        v84 = v41[2];
        v85 = v44;
        v82 = v42;
        v83 = v43;
        v45 = v41[4];
        v46 = v41[5];
        v47 = v41[7];
        v88 = v41[6];
        v89 = v47;
        v86 = v45;
        v87 = v46;
        v48 = v41[8];
        v49 = v41[9];
        v50 = v41[10];
        v93 = *(v41 + 22);
        v91 = v49;
        v92 = v50;
        v90 = v48;
        v51 = objc_allocWithZone(VCCommandObjC);
        sub_26B4A5160(&v82, v81);
        sub_26B4A5160(&v82, v81);
        v52 = [v51 init];
        sub_26B4A51BC(&v82);
        v103 = v90;
        v104 = v91;
        v105 = v92;
        v106 = v93;
        v99 = v86;
        v100 = v87;
        v101 = v88;
        v102 = v89;
        v95 = v82;
        v96 = v83;
        v97 = v84;
        v98 = v85;
        nullsub_1(&v95);
        v53 = &v52[OBJC_IVAR___VCCommandObjC_representedCommand];
        v54 = *&v52[OBJC_IVAR___VCCommandObjC_representedCommand + 48];
        v56 = *&v52[OBJC_IVAR___VCCommandObjC_representedCommand];
        v55 = *&v52[OBJC_IVAR___VCCommandObjC_representedCommand + 16];
        v109 = *&v52[OBJC_IVAR___VCCommandObjC_representedCommand + 32];
        v110 = v54;
        v107 = v56;
        v108 = v55;
        v57 = *&v52[OBJC_IVAR___VCCommandObjC_representedCommand + 112];
        v59 = *&v52[OBJC_IVAR___VCCommandObjC_representedCommand + 64];
        v58 = *&v52[OBJC_IVAR___VCCommandObjC_representedCommand + 80];
        v113 = *&v52[OBJC_IVAR___VCCommandObjC_representedCommand + 96];
        v114 = v57;
        v111 = v59;
        v112 = v58;
        v61 = *&v52[OBJC_IVAR___VCCommandObjC_representedCommand + 144];
        v60 = *&v52[OBJC_IVAR___VCCommandObjC_representedCommand + 160];
        v62 = *&v52[OBJC_IVAR___VCCommandObjC_representedCommand + 128];
        v118 = *&v52[OBJC_IVAR___VCCommandObjC_representedCommand + 176];
        v116 = v61;
        v117 = v60;
        v115 = v62;
        v63 = v95;
        v64 = v96;
        v65 = v98;
        *(v53 + 2) = v97;
        *(v53 + 3) = v65;
        *v53 = v63;
        *(v53 + 1) = v64;
        v66 = v99;
        v67 = v100;
        v68 = v102;
        *(v53 + 6) = v101;
        *(v53 + 7) = v68;
        *(v53 + 4) = v66;
        *(v53 + 5) = v67;
        v69 = v103;
        v70 = v104;
        v71 = v105;
        *(v53 + 22) = v106;
        *(v53 + 9) = v70;
        *(v53 + 10) = v71;
        *(v53 + 8) = v69;
        v72 = v52;
        sub_26B4A4CBC(&v107, &qword_2803FFD30, &qword_26B545410);

        sub_26B542DD4();
        v73 = *(v94 + 16);
        sub_26B542E04();
        sub_26B542E14();
        sub_26B542DE4();
        if (!v39)
        {
          break;
        }

        --v39;
        v38 = v78;
      }

      v74 = v94;
    }

    else
    {

      v74 = MEMORY[0x277D84F90];
    }

    qword_2804004D0 = v74;
  }

  return result;
}

void *VCCommand.rootCommandID.getter()
{
  v4 = *v0;
  v5 = v0[1];
  sub_26B49FAB4();
  result = sub_26B542CD4();
  if (result[2])
  {
    v2 = result[4];
    v3 = result[5];

    return v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t VCCommandObjC.commandIdentifier.getter()
{
  v1 = *(v0 + OBJC_IVAR___VCCommandObjC_representedCommand + 144);
  v8[8] = *(v0 + OBJC_IVAR___VCCommandObjC_representedCommand + 128);
  v8[9] = v1;
  v8[10] = *(v0 + OBJC_IVAR___VCCommandObjC_representedCommand + 160);
  v9 = *(v0 + OBJC_IVAR___VCCommandObjC_representedCommand + 176);
  v2 = *(v0 + OBJC_IVAR___VCCommandObjC_representedCommand + 80);
  v8[4] = *(v0 + OBJC_IVAR___VCCommandObjC_representedCommand + 64);
  v8[5] = v2;
  v3 = *(v0 + OBJC_IVAR___VCCommandObjC_representedCommand + 112);
  v8[6] = *(v0 + OBJC_IVAR___VCCommandObjC_representedCommand + 96);
  v8[7] = v3;
  v4 = *(v0 + OBJC_IVAR___VCCommandObjC_representedCommand + 16);
  v8[0] = *(v0 + OBJC_IVAR___VCCommandObjC_representedCommand);
  v8[1] = v4;
  v5 = *(v0 + OBJC_IVAR___VCCommandObjC_representedCommand + 48);
  v8[2] = *(v0 + OBJC_IVAR___VCCommandObjC_representedCommand + 32);
  v8[3] = v5;
  result = sub_26B4C4C80(v8);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v7 = *&v8[0];

    return v7;
  }

  return result;
}

uint64_t VCCommandObjC.commandProperties.getter()
{
  if (qword_2804004B0 != -1)
  {
    swift_once();
  }

  v1 = MEMORY[0x277D84F90];
  if (dword_280406E84 == 1)
  {
    v1 = &unk_287C040F8;
  }

  if (dword_280406E84 == 3)
  {
    v2 = &unk_287C040D0;
  }

  else
  {
    v2 = v1;
  }

  v3 = sub_26B4BE320(0, v2, sub_26B4713A4);

  if (v3)
  {
    v4 = (v0 + OBJC_IVAR___VCCommandObjC_representedCommand);
    v5 = *(v0 + OBJC_IVAR___VCCommandObjC_representedCommand + 144);
    v50 = *(v0 + OBJC_IVAR___VCCommandObjC_representedCommand + 128);
    v51 = v5;
    v52 = *(v0 + OBJC_IVAR___VCCommandObjC_representedCommand + 160);
    v53 = *(v0 + OBJC_IVAR___VCCommandObjC_representedCommand + 176);
    v6 = *(v0 + OBJC_IVAR___VCCommandObjC_representedCommand + 80);
    v46 = *(v0 + OBJC_IVAR___VCCommandObjC_representedCommand + 64);
    v47 = v6;
    v7 = *(v0 + OBJC_IVAR___VCCommandObjC_representedCommand + 112);
    v48 = *(v0 + OBJC_IVAR___VCCommandObjC_representedCommand + 96);
    v49 = v7;
    v8 = *(v0 + OBJC_IVAR___VCCommandObjC_representedCommand + 16);
    v42 = *(v0 + OBJC_IVAR___VCCommandObjC_representedCommand);
    v43 = v8;
    v9 = *(v0 + OBJC_IVAR___VCCommandObjC_representedCommand + 48);
    v44 = *(v0 + OBJC_IVAR___VCCommandObjC_representedCommand + 32);
    v45 = v9;
    if (sub_26B4C4C80(&v42) == 1)
    {
      goto LABEL_14;
    }

    v34 = v4[8];
    v36 = v4[9];
    v38 = v4[10];
    v40 = *(v4 + 22);
    v26 = v4[4];
    v28 = v4[5];
    v30 = v4[6];
    v32 = v4[7];
    v18 = *v4;
    v20 = v4[1];
    v22 = v4[2];
    v24 = v4[3];
    result = sub_26B4BFBA4(1);
    if (!result)
    {
LABEL_14:
      v17 = sub_26B4C4C98(MEMORY[0x277D84F90]);

      return v17;
    }
  }

  else
  {
    v11 = (v0 + OBJC_IVAR___VCCommandObjC_representedCommand);
    v12 = *(v0 + OBJC_IVAR___VCCommandObjC_representedCommand + 144);
    v50 = *(v0 + OBJC_IVAR___VCCommandObjC_representedCommand + 128);
    v51 = v12;
    v52 = *(v0 + OBJC_IVAR___VCCommandObjC_representedCommand + 160);
    v53 = *(v0 + OBJC_IVAR___VCCommandObjC_representedCommand + 176);
    v13 = *(v0 + OBJC_IVAR___VCCommandObjC_representedCommand + 80);
    v46 = *(v0 + OBJC_IVAR___VCCommandObjC_representedCommand + 64);
    v47 = v13;
    v14 = *(v0 + OBJC_IVAR___VCCommandObjC_representedCommand + 112);
    v48 = *(v0 + OBJC_IVAR___VCCommandObjC_representedCommand + 96);
    v49 = v14;
    v15 = *(v0 + OBJC_IVAR___VCCommandObjC_representedCommand + 16);
    v42 = *(v0 + OBJC_IVAR___VCCommandObjC_representedCommand);
    v43 = v15;
    v16 = *(v0 + OBJC_IVAR___VCCommandObjC_representedCommand + 48);
    v44 = *(v0 + OBJC_IVAR___VCCommandObjC_representedCommand + 32);
    v45 = v16;
    if (sub_26B4C4C80(&v42) == 1)
    {
      goto LABEL_14;
    }

    v35 = v11[8];
    v37 = v11[9];
    v39 = v11[10];
    v41 = *(v11 + 22);
    v27 = v11[4];
    v29 = v11[5];
    v31 = v11[6];
    v33 = v11[7];
    v19 = *v11;
    v21 = v11[1];
    v23 = v11[2];
    v25 = v11[3];
    result = sub_26B4BFBA4(0);
    if (!result)
    {
      goto LABEL_14;
    }
  }

  return result;
}

BOOL sub_26B4BE320(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  v4 = *(a2 + 16);
  v5 = (a2 + 32);
  do
  {
    v6 = v4;
    if (v4-- == 0)
    {
      break;
    }

    v8 = *v5++;
    a3();
  }

  while ((sub_26B542A34() & 1) == 0);
  return v6 != 0;
}

uint64_t VCCommandObjC.isNewForCurrentDevice.getter()
{
  v1 = *(v0 + OBJC_IVAR___VCCommandObjC_representedCommand + 144);
  v2 = *(v0 + OBJC_IVAR___VCCommandObjC_representedCommand + 112);
  v37 = *(v0 + OBJC_IVAR___VCCommandObjC_representedCommand + 128);
  v38 = v1;
  v3 = *(v0 + OBJC_IVAR___VCCommandObjC_representedCommand + 144);
  v39 = *(v0 + OBJC_IVAR___VCCommandObjC_representedCommand + 160);
  v4 = *(v0 + OBJC_IVAR___VCCommandObjC_representedCommand + 80);
  v5 = *(v0 + OBJC_IVAR___VCCommandObjC_representedCommand + 48);
  v33 = *(v0 + OBJC_IVAR___VCCommandObjC_representedCommand + 64);
  v34 = v4;
  v6 = *(v0 + OBJC_IVAR___VCCommandObjC_representedCommand + 80);
  v7 = *(v0 + OBJC_IVAR___VCCommandObjC_representedCommand + 112);
  v35 = *(v0 + OBJC_IVAR___VCCommandObjC_representedCommand + 96);
  v36 = v7;
  v8 = *(v0 + OBJC_IVAR___VCCommandObjC_representedCommand + 16);
  v30[0] = *(v0 + OBJC_IVAR___VCCommandObjC_representedCommand);
  v30[1] = v8;
  v9 = *(v0 + OBJC_IVAR___VCCommandObjC_representedCommand + 48);
  v11 = *(v0 + OBJC_IVAR___VCCommandObjC_representedCommand);
  v10 = *(v0 + OBJC_IVAR___VCCommandObjC_representedCommand + 16);
  v31 = *(v0 + OBJC_IVAR___VCCommandObjC_representedCommand + 32);
  v32 = v9;
  v49 = v37;
  v50 = v3;
  v51 = *(v0 + OBJC_IVAR___VCCommandObjC_representedCommand + 160);
  v45 = v33;
  v46 = v6;
  v47 = v35;
  v48 = v2;
  v41 = v11;
  v42 = v10;
  v40 = *(v0 + OBJC_IVAR___VCCommandObjC_representedCommand + 176);
  v52 = *(v0 + OBJC_IVAR___VCCommandObjC_representedCommand + 176);
  v43 = v31;
  v44 = v5;
  if (sub_26B4C4C80(&v41) == 1)
  {
    return 0;
  }

  v26 = v49;
  v27 = v50;
  v28 = v51;
  v29 = v52;
  v22 = v45;
  v23 = v46;
  v24 = v47;
  v25 = v48;
  v18 = v41;
  v19 = v42;
  v20 = v43;
  v21 = v44;
  sub_26B4C68C8(v30, v17, &qword_2803FFD30, &qword_26B545410);
  if (qword_2804004B0 != -1)
  {
    swift_once();
  }

  v13 = MEMORY[0x277D84F90];
  if (dword_280406E84 == 1)
  {
    v13 = &unk_287C040F8;
  }

  if (dword_280406E84 == 3)
  {
    v14 = &unk_287C040D0;
  }

  else
  {
    v14 = v13;
  }

  if (*(v14 + 2))
  {
    v15 = v14[32];

    v17[0] = v15;
    v12 = VCCommand.isNew(for:)(v17);
    sub_26B4A4CBC(v30, &qword_2803FFD30, &qword_26B545410);
    return v12;
  }

  __break(1u);
  return result;
}

uint64_t VCCommandObjC.showCodingGuideInSettings.getter()
{
  v1 = *(v0 + OBJC_IVAR___VCCommandObjC_representedCommand + 144);
  v31 = *(v0 + OBJC_IVAR___VCCommandObjC_representedCommand + 128);
  v32 = v1;
  v33 = *(v0 + OBJC_IVAR___VCCommandObjC_representedCommand + 160);
  v34 = *(v0 + OBJC_IVAR___VCCommandObjC_representedCommand + 176);
  v2 = *(v0 + OBJC_IVAR___VCCommandObjC_representedCommand + 80);
  v27 = *(v0 + OBJC_IVAR___VCCommandObjC_representedCommand + 64);
  v28 = v2;
  v3 = *(v0 + OBJC_IVAR___VCCommandObjC_representedCommand + 112);
  v29 = *(v0 + OBJC_IVAR___VCCommandObjC_representedCommand + 96);
  v30 = v3;
  v4 = *(v0 + OBJC_IVAR___VCCommandObjC_representedCommand + 16);
  v23 = *(v0 + OBJC_IVAR___VCCommandObjC_representedCommand);
  v24 = v4;
  v5 = *(v0 + OBJC_IVAR___VCCommandObjC_representedCommand + 48);
  v25 = *(v0 + OBJC_IVAR___VCCommandObjC_representedCommand + 32);
  v26 = v5;
  if (sub_26B4C4C80(&v23) == 1)
  {
    return 0;
  }

  v19 = v31;
  v20 = v32;
  v21 = v33;
  v22 = v34;
  v15 = v27;
  v16 = v28;
  v17 = v29;
  v18 = v30;
  v11 = v23;
  v12 = v24;
  v13 = v25;
  v14 = v26;
  VCCommand.collection.getter(&v8);
  if (!v9)
  {
    return 0;
  }

  v6 = HIBYTE(v10) & 1;
  sub_26B4C4DC8(v8, v9);
  return v6;
}

uint64_t sub_26B4BE6E0(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 16) && (v3 = *(a2 + 40), sub_26B471350(), v4 = sub_26B5429B4(), v5 = -1 << *(a2 + 32), v6 = v4 & ~v5, ((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0))
  {
    v7 = ~v5;
    sub_26B4713A4();
    do
    {
      v10 = *(*(a2 + 48) + v6);
      v8 = sub_26B542A34();
      if (v8)
      {
        break;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  else
  {
    v8 = 0;
  }

  return v8 & 1;
}

uint64_t sub_26B4BE7DC(uint64_t a1, char a2, void *a3)
{
  result = static VCCommand.allCommands.getter();
  v4 = MEMORY[0x277D84F90];
  v81 = *(result + 16);
  if (v81)
  {
    v5 = 0;
    v80 = result + 32;
    v79 = result;
    do
    {
      while (1)
      {
        if (v5 >= *(result + 16))
        {
          __break(1u);
          return result;
        }

        v6 = v4;
        v7 = v80 + 184 * v5;
        v8 = *v7;
        v9 = *(v7 + 16);
        v10 = *(v7 + 48);
        v110 = *(v7 + 32);
        v111 = v10;
        v108 = v8;
        v109 = v9;
        v11 = *(v7 + 64);
        v12 = *(v7 + 80);
        v13 = *(v7 + 112);
        v114 = *(v7 + 96);
        v115 = v13;
        v112 = v11;
        v113 = v12;
        v14 = *(v7 + 128);
        v15 = *(v7 + 144);
        v16 = *(v7 + 160);
        v119 = *(v7 + 176);
        v117 = v15;
        v118 = v16;
        v116 = v14;
        ++v5;
        v17 = v112;
        if (*(v112 + 16))
        {
          break;
        }

LABEL_4:
        v4 = v6;
        if (v5 == v81)
        {
          goto LABEL_24;
        }
      }

      sub_26B4A5160(&v108, &v96);
      LOBYTE(v96) = 0;
      if (!*(v17 + 16))
      {
        goto LABEL_3;
      }

      v18 = *(v17 + 40);
      sub_26B471350();
      v19 = sub_26B5429B4();
      v20 = -1 << *(v17 + 32);
      v21 = v19 & ~v20;
      if (((*(v17 + 56 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) == 0)
      {
        goto LABEL_3;
      }

      v22 = ~v20;
      sub_26B4713A4();
      while (1)
      {
        v82[0] = *(*(v17 + 48) + v21);
        if (sub_26B542A34())
        {
          break;
        }

        v21 = (v21 + 1) & v22;
        if (((*(v17 + 56 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) == 0)
        {
          goto LABEL_3;
        }
      }

      v23 = v114;
      LOBYTE(v96) = a2;
      if (!*(v114 + 16) || (v24 = *(v114 + 40), sub_26B471200(), v25 = sub_26B5429B4(), v26 = -1 << *(v23 + 32), v27 = v25 & ~v26, ((*(v23 + 56 + ((v27 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v27) & 1) == 0))
      {
LABEL_3:
        sub_26B4A51BC(&v108);
        result = v79;
        goto LABEL_4;
      }

      v28 = ~v26;
      sub_26B471254();
      while (1)
      {
        v82[0] = *(*(v23 + 48) + v27);
        if (sub_26B542A34())
        {
          break;
        }

        v27 = (v27 + 1) & v28;
        if (((*(v23 + 56 + ((v27 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v27) & 1) == 0)
        {
          goto LABEL_3;
        }
      }

      *&v83 = v6;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_26B4A2120(0, *(v6 + 16) + 1, 1);
        v6 = v83;
      }

      v30 = *(v6 + 16);
      v29 = *(v6 + 24);
      if (v30 >= v29 >> 1)
      {
        sub_26B4A2120((v29 > 1), v30 + 1, 1);
        v6 = v83;
      }

      *(v6 + 16) = v30 + 1;
      v31 = v6 + 184 * v30;
      v32 = v108;
      v33 = v109;
      v34 = v111;
      *(v31 + 64) = v110;
      *(v31 + 80) = v34;
      *(v31 + 32) = v32;
      *(v31 + 48) = v33;
      v35 = v112;
      v36 = v113;
      v37 = v115;
      *(v31 + 128) = v114;
      *(v31 + 144) = v37;
      *(v31 + 96) = v35;
      *(v31 + 112) = v36;
      v38 = v116;
      v39 = v117;
      v40 = v118;
      *(v31 + 208) = v119;
      *(v31 + 176) = v39;
      *(v31 + 192) = v40;
      *(v31 + 160) = v38;
      v4 = v6;
      result = v79;
    }

    while (v5 != v81);
  }

LABEL_24:

  v41 = *(v4 + 16);
  if (v41)
  {
    v95 = MEMORY[0x277D84F90];
    sub_26B542DF4();
    v42 = v41 - 1;
    for (i = 32; ; i += 184)
    {
      v44 = *(v4 + i);
      v45 = *(v4 + i + 16);
      v46 = *(v4 + i + 48);
      v85 = *(v4 + i + 32);
      v86 = v46;
      v83 = v44;
      v84 = v45;
      v47 = *(v4 + i + 64);
      v48 = *(v4 + i + 80);
      v49 = *(v4 + i + 112);
      v89 = *(v4 + i + 96);
      v90 = v49;
      v87 = v47;
      v88 = v48;
      v50 = *(v4 + i + 128);
      v51 = *(v4 + i + 144);
      v52 = *(v4 + i + 160);
      v94 = *(v4 + i + 176);
      v92 = v51;
      v93 = v52;
      v91 = v50;
      v53 = objc_allocWithZone(VCCommandObjC);
      sub_26B4A5160(&v83, v82);
      sub_26B4A5160(&v83, v82);
      v54 = [v53 init];
      sub_26B4A51BC(&v83);
      v104 = v91;
      v105 = v92;
      v106 = v93;
      v107 = v94;
      v100 = v87;
      v101 = v88;
      v102 = v89;
      v103 = v90;
      v96 = v83;
      v97 = v84;
      v98 = v85;
      v99 = v86;
      nullsub_1(&v96);
      v55 = &v54[OBJC_IVAR___VCCommandObjC_representedCommand];
      v56 = *&v54[OBJC_IVAR___VCCommandObjC_representedCommand + 48];
      v58 = *&v54[OBJC_IVAR___VCCommandObjC_representedCommand];
      v57 = *&v54[OBJC_IVAR___VCCommandObjC_representedCommand + 16];
      v110 = *&v54[OBJC_IVAR___VCCommandObjC_representedCommand + 32];
      v111 = v56;
      v108 = v58;
      v109 = v57;
      v59 = *&v54[OBJC_IVAR___VCCommandObjC_representedCommand + 112];
      v61 = *&v54[OBJC_IVAR___VCCommandObjC_representedCommand + 64];
      v60 = *&v54[OBJC_IVAR___VCCommandObjC_representedCommand + 80];
      v114 = *&v54[OBJC_IVAR___VCCommandObjC_representedCommand + 96];
      v115 = v59;
      v112 = v61;
      v113 = v60;
      v63 = *&v54[OBJC_IVAR___VCCommandObjC_representedCommand + 144];
      v62 = *&v54[OBJC_IVAR___VCCommandObjC_representedCommand + 160];
      v64 = *&v54[OBJC_IVAR___VCCommandObjC_representedCommand + 128];
      v119 = *&v54[OBJC_IVAR___VCCommandObjC_representedCommand + 176];
      v117 = v63;
      v118 = v62;
      v116 = v64;
      v65 = v96;
      v66 = v97;
      v67 = v99;
      *(v55 + 2) = v98;
      *(v55 + 3) = v67;
      *v55 = v65;
      *(v55 + 1) = v66;
      v68 = v100;
      v69 = v101;
      v70 = v103;
      *(v55 + 6) = v102;
      *(v55 + 7) = v70;
      *(v55 + 4) = v68;
      *(v55 + 5) = v69;
      v71 = v104;
      v72 = v105;
      v73 = v106;
      *(v55 + 22) = v107;
      *(v55 + 9) = v72;
      *(v55 + 10) = v73;
      *(v55 + 8) = v71;
      v74 = v54;
      sub_26B4A4CBC(&v108, &qword_2803FFD30, &qword_26B545410);

      sub_26B542DD4();
      v75 = *(v95 + 16);
      sub_26B542E04();
      sub_26B542E14();
      sub_26B542DE4();
      if (!v42)
      {
        break;
      }

      --v42;
    }

    v76 = v95;
  }

  else
  {

    v76 = MEMORY[0x277D84F90];
  }

  *a3 = v76;
  return result;
}

uint64_t sub_26B4BEE34(uint64_t a1, char a2, void *a3)
{
  result = static VCCommand.allCommands.getter();
  v75 = *(result + 16);
  if (v75)
  {
    v4 = 0;
    v74 = result + 32;
    v72 = MEMORY[0x277D84F90];
    while (1)
    {
      while (1)
      {
        if (v4 >= *(result + 16))
        {
          __break(1u);
          return result;
        }

        v5 = v74 + 184 * v4;
        v6 = *v5;
        v7 = *(v5 + 16);
        v8 = *(v5 + 48);
        v104 = *(v5 + 32);
        v105 = v8;
        v102 = v6;
        v103 = v7;
        v9 = *(v5 + 64);
        v10 = *(v5 + 80);
        v11 = *(v5 + 112);
        v108 = *(v5 + 96);
        v109 = v11;
        v106 = v9;
        v107 = v10;
        v12 = *(v5 + 128);
        v13 = *(v5 + 144);
        v14 = *(v5 + 160);
        v113 = *(v5 + 176);
        v111 = v13;
        v112 = v14;
        v110 = v12;
        ++v4;
        v15 = v106;
        if (*(v106 + 16))
        {
          break;
        }

LABEL_4:
        if (v4 == v75)
        {
          goto LABEL_20;
        }
      }

      v16 = result;
      sub_26B4A5160(&v102, &v90);
      LOBYTE(v90) = a2;
      if (!*(v15 + 16) || (v17 = *(v15 + 40), sub_26B471350(), v18 = sub_26B5429B4(), v19 = -1 << *(v15 + 32), v20 = v18 & ~v19, ((*(v15 + 56 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) == 0))
      {
LABEL_3:
        sub_26B4A51BC(&v102);
        result = v16;
        goto LABEL_4;
      }

      v21 = ~v19;
      sub_26B4713A4();
      while (1)
      {
        v76[0] = *(*(v15 + 48) + v20);
        if (sub_26B542A34())
        {
          break;
        }

        v20 = (v20 + 1) & v21;
        if (((*(v15 + 56 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) == 0)
        {
          goto LABEL_3;
        }
      }

      v22 = v72;
      *&v77 = v72;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_26B4A2120(0, *(v72 + 16) + 1, 1);
        v22 = v77;
      }

      v24 = *(v22 + 16);
      v23 = *(v22 + 24);
      if (v24 >= v23 >> 1)
      {
        sub_26B4A2120((v23 > 1), v24 + 1, 1);
        v22 = v77;
      }

      *(v22 + 16) = v24 + 1;
      v72 = v22;
      v25 = v22 + 184 * v24;
      v26 = v102;
      v27 = v103;
      v28 = v105;
      *(v25 + 64) = v104;
      *(v25 + 80) = v28;
      *(v25 + 32) = v26;
      *(v25 + 48) = v27;
      v29 = v106;
      v30 = v107;
      v31 = v109;
      *(v25 + 128) = v108;
      *(v25 + 144) = v31;
      *(v25 + 96) = v29;
      *(v25 + 112) = v30;
      v32 = v110;
      v33 = v111;
      v34 = v112;
      *(v25 + 208) = v113;
      *(v25 + 176) = v33;
      *(v25 + 192) = v34;
      *(v25 + 160) = v32;
      result = v16;
      if (v4 == v75)
      {
        goto LABEL_20;
      }
    }
  }

  v72 = MEMORY[0x277D84F90];
LABEL_20:

  v35 = *(v72 + 16);
  if (v35)
  {
    v89 = MEMORY[0x277D84F90];
    sub_26B542DF4();
    v36 = v35 - 1;
    for (i = 32; ; i += 184)
    {
      v38 = *(v72 + i);
      v39 = *(v72 + i + 16);
      v40 = *(v72 + i + 48);
      v79 = *(v72 + i + 32);
      v80 = v40;
      v77 = v38;
      v78 = v39;
      v41 = *(v72 + i + 64);
      v42 = *(v72 + i + 80);
      v43 = *(v72 + i + 112);
      v83 = *(v72 + i + 96);
      v84 = v43;
      v81 = v41;
      v82 = v42;
      v44 = *(v72 + i + 128);
      v45 = *(v72 + i + 144);
      v46 = *(v72 + i + 160);
      v88 = *(v72 + i + 176);
      v86 = v45;
      v87 = v46;
      v85 = v44;
      v47 = objc_allocWithZone(VCCommandObjC);
      sub_26B4A5160(&v77, v76);
      sub_26B4A5160(&v77, v76);
      v48 = [v47 init];
      sub_26B4A51BC(&v77);
      v98 = v85;
      v99 = v86;
      v100 = v87;
      v101 = v88;
      v94 = v81;
      v95 = v82;
      v96 = v83;
      v97 = v84;
      v90 = v77;
      v91 = v78;
      v92 = v79;
      v93 = v80;
      nullsub_1(&v90);
      v49 = &v48[OBJC_IVAR___VCCommandObjC_representedCommand];
      v50 = *&v48[OBJC_IVAR___VCCommandObjC_representedCommand + 48];
      v52 = *&v48[OBJC_IVAR___VCCommandObjC_representedCommand];
      v51 = *&v48[OBJC_IVAR___VCCommandObjC_representedCommand + 16];
      v104 = *&v48[OBJC_IVAR___VCCommandObjC_representedCommand + 32];
      v105 = v50;
      v102 = v52;
      v103 = v51;
      v53 = *&v48[OBJC_IVAR___VCCommandObjC_representedCommand + 112];
      v55 = *&v48[OBJC_IVAR___VCCommandObjC_representedCommand + 64];
      v54 = *&v48[OBJC_IVAR___VCCommandObjC_representedCommand + 80];
      v108 = *&v48[OBJC_IVAR___VCCommandObjC_representedCommand + 96];
      v109 = v53;
      v106 = v55;
      v107 = v54;
      v57 = *&v48[OBJC_IVAR___VCCommandObjC_representedCommand + 144];
      v56 = *&v48[OBJC_IVAR___VCCommandObjC_representedCommand + 160];
      v58 = *&v48[OBJC_IVAR___VCCommandObjC_representedCommand + 128];
      v113 = *&v48[OBJC_IVAR___VCCommandObjC_representedCommand + 176];
      v111 = v57;
      v112 = v56;
      v110 = v58;
      v59 = v90;
      v60 = v91;
      v61 = v93;
      *(v49 + 2) = v92;
      *(v49 + 3) = v61;
      *v49 = v59;
      *(v49 + 1) = v60;
      v62 = v94;
      v63 = v95;
      v64 = v97;
      *(v49 + 6) = v96;
      *(v49 + 7) = v64;
      *(v49 + 4) = v62;
      *(v49 + 5) = v63;
      v65 = v98;
      v66 = v99;
      v67 = v100;
      *(v49 + 22) = v101;
      *(v49 + 9) = v66;
      *(v49 + 10) = v67;
      *(v49 + 8) = v65;
      v68 = v48;
      sub_26B4A4CBC(&v102, &qword_2803FFD30, &qword_26B545410);

      sub_26B542DD4();
      v69 = *(v89 + 16);
      sub_26B542E04();
      sub_26B542E14();
      sub_26B542DE4();
      if (!v36)
      {
        break;
      }

      --v36;
    }

    v70 = v89;
  }

  else
  {

    v70 = MEMORY[0x277D84F90];
  }

  *a3 = v70;
  return result;
}

id sub_26B4BF458(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4)
{
  sub_26B4C50DC(a3, a4);
  v4 = sub_26B542C14();

  return v4;
}

id VCCommandObjC.init()()
{
  v1 = &v0[OBJC_IVAR___VCCommandObjC_representedCommand];
  sub_26B4C4C5C(v9);
  v2 = v9[9];
  *(v1 + 8) = v9[8];
  *(v1 + 9) = v2;
  *(v1 + 10) = v9[10];
  *(v1 + 22) = v10;
  v3 = v9[5];
  *(v1 + 4) = v9[4];
  *(v1 + 5) = v3;
  v4 = v9[7];
  *(v1 + 6) = v9[6];
  *(v1 + 7) = v4;
  v5 = v9[1];
  *v1 = v9[0];
  *(v1 + 1) = v5;
  v6 = v9[3];
  *(v1 + 2) = v9[2];
  *(v1 + 3) = v6;
  v8.receiver = v0;
  v8.super_class = VCCommandObjC;
  return objc_msgSendSuper2(&v8, sel_init);
}

uint64_t sub_26B4BF6C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 24))
  {
    sub_26B4A5218(a1, v10);
    v6 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v3;
    sub_26B4C1FE4(v10, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v9;
  }

  else
  {
    sub_26B4A4CBC(a1, &qword_2803FFDA0, &qword_26B5454E8);
    sub_26B4C1AD8(a2, a3, v10);

    return sub_26B4A4CBC(v10, &qword_2803FFDA0, &qword_26B5454E8);
  }

  return result;
}

uint64_t sub_26B4BF794(uint64_t a1, char a2)
{
  v3 = a1;
  v4 = a1 + 56;
  v5 = 1 << *(a1 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a1 + 56);
  v8 = (v5 + 63) >> 6;

  v10 = 0;
  v26 = result;
  v25 = a2;
  while (v7)
  {
LABEL_9:
    v12 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v13 = *(*(v3 + 48) + (v12 | (v10 << 6)));
    if (a2)
    {
      v14 = &unk_287C04170;
    }

    else
    {
      v14 = &unk_287C04198;
    }

    result = sub_26B4BE320(v13, v14, sub_26B4712FC);
    if ((result & 1) == 0)
    {
      LOBYTE(v28[0]) = v13;
      VCCommand.Evaluation.rawValue.getter();
      v32 = sub_26B4C4E18(1);

      v32 = sub_26B542CB4();
      v27 = v15;

      LOBYTE(v28[0]) = v13;
      v16 = VCCommand.Evaluation.rawValue.getter();
      v18 = sub_26B4C4EB4(1uLL, v16, v17);
      v20 = v19;
      v22 = v21;
      v24 = v23;

      v30 = v32;
      v31 = v27;
      v28[0] = v18;
      v28[1] = v20;
      v28[2] = v22;
      v29 = v24;
      sub_26B4C6A20();
      sub_26B542B14();
      a2 = v25;

      v29 = MEMORY[0x277D839B0];
      LOBYTE(v28[0]) = 1;
      result = sub_26B4BF6C4(v28, v30, v31);
      v3 = v26;
    }
  }

  while (1)
  {
    v11 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v11 >= v8)
    {
    }

    v7 = *(v4 + 8 * v11);
    ++v10;
    if (v7)
    {
      v10 = v11;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_26B4BF9E0(uint64_t result, uint64_t a2, void (*a3)(void), uint64_t a4, void (*a5)(void))
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v6 = 0;
  v7 = result + 56;
  v8 = 1 << *(result + 32);
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  else
  {
    v9 = -1;
  }

  v10 = v9 & *(result + 56);
  v11 = (v8 + 63) >> 6;
  v12 = a2 + 56;
  v21 = a3;
  v22 = result;
  if (v10)
  {
    do
    {
      v13 = __clz(__rbit64(v10));
      v23 = (v10 - 1) & v10;
LABEL_13:
      v26 = *(*(result + 48) + (v13 | (v6 << 6)));
      v16 = *(a2 + 40);
      a3();
      v17 = sub_26B5429B4();
      v18 = -1 << *(a2 + 32);
      v19 = v17 & ~v18;
      if (((*(v12 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
      {
        return 0;
      }

      v20 = ~v18;
      a5();
      while (1)
      {
        v25 = *(*(a2 + 48) + v19);
        if (sub_26B542A34())
        {
          break;
        }

        v19 = (v19 + 1) & v20;
        if (((*(v12 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
        {
          return 0;
        }
      }

      a3 = v21;
      result = v22;
      v10 = v23;
    }

    while (v23);
  }

  v14 = v6;
  while (1)
  {
    v6 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v6 >= v11)
    {
      return 1;
    }

    v15 = *(v7 + 8 * v6);
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v23 = (v15 - 1) & v15;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_26B4BFBA4(char a1)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[13];
  v98 = v1[14];
  v99 = v1[8];
  v100 = *(v1 + 120);
  v101 = v1[12];
  v102 = *(v1 + 121);
  v6 = v1[16];
  v5 = v1[17];
  v7 = v1[18];
  v94 = v1[20];
  v95 = v1[19];
  v103 = v1[21];
  v8 = v1[22];
  v9 = sub_26B4C4C98(MEMORY[0x277D84F90]);
  v10 = v9;
  v93 = v4;
  v97 = v6;
  if (v7)
  {
    v92 = v5;
    v96 = v9;
    *&v108 = v7;

    sub_26B4C24FC(&v108);
    v91 = 0;
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v14 = v108;
    v15 = *(v108 + 16);
LABEL_3:
    v16 = a1;
    v17 = v14 + 32 + 24 * v11;
    while (v15 != v11)
    {
      if (v11 >= v15)
      {
        __break(1u);
LABEL_119:
        __break(1u);
        goto LABEL_120;
      }

      v18 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        goto LABEL_119;
      }

      v19 = v17;
      v20 = *(v17 + 16);
      if (v20 != 1)
      {
        if (!*(v17 + 16))
        {
LABEL_11:
          v12 = *v19;
          v21 = v19[1];

          v11 = v18;
          v13 = v21;
          goto LABEL_3;
        }

        v25 = *v17;
        v26 = *(v17 + 8);
        *&v108 = 0;
        *(&v108 + 1) = 0xE000000000000000;
        sub_26B4C6930(v25, v26, v20);
        sub_26B542D74();
        v107[0] = v108;
        MEMORY[0x26D677BF0](0xD00000000000001ALL, 0x800000026B56AFD0);
        *&v108 = v25;
        *(&v108 + 1) = v26;
        LOBYTE(v109) = v20;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803FFD90, &unk_26B5454D0);
        sub_26B542E24();
        sub_26B4C6948(v25, v26, v20);

        return 0;
      }

      ++v11;
      v17 += 24;
      if (a1)
      {
        goto LABEL_11;
      }
    }

    if (v13)
    {
      v110 = MEMORY[0x277D837D0];
      *&v108 = v12;
      *(&v108 + 1) = v13;
      sub_26B4A5218(&v108, v107);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      sub_26B4C1FE4(v107, 0xD000000000000013, 0x800000026B56AFF0, isUniquelyReferenced_nonNull_native);
      v16 = a1;
    }

    v10 = v96;
    v5 = v92;
    v6 = v97;
    v22 = v98;
    v23 = v99;
    if ((v16 & 1) == 0)
    {
      goto LABEL_19;
    }
  }

  else
  {
    v16 = a1;
    v22 = v98;
    v23 = v99;
    if ((a1 & 1) == 0)
    {
LABEL_19:
      v8 = v94;
      v103 = v95;
      if (!v94)
      {
        goto LABEL_21;
      }

      goto LABEL_20;
    }
  }

  if (!v8)
  {
    goto LABEL_19;
  }

LABEL_20:

  v110 = MEMORY[0x277D837D0];
  *&v108 = v103;
  *(&v108 + 1) = v8;
  sub_26B4A5218(&v108, v107);
  v27 = swift_isUniquelyReferenced_nonNull_native();
  sub_26B4C1FE4(v107, 0x654D6E6F69746341, 0xEC000000646F6874, v27);
  v16 = a1;
LABEL_21:
  v28 = v101;
  *&v108 = sub_26B4C4C98(MEMORY[0x277D84F90]);
  sub_26B4BF794(v22, v16 & 1);
  v29 = v108;
  if (*(v108 + 16))
  {
    if (v16)
    {
      goto LABEL_23;
    }

LABEL_27:

    v32 = sub_26B4A2FF8(&unk_287C041C0, v23);
    v33 = sub_26B4C4F64(&unk_287C041E8);
    v34 = sub_26B4BF9E0(v32, v33, sub_26B471350, &type metadata for VCCommand.Idiom, sub_26B4713A4);

    if (v34)
    {
      v110 = MEMORY[0x277D839B0];
      LOBYTE(v108) = 1;
      sub_26B4A5218(&v108, v107);
      v35 = swift_isUniquelyReferenced_nonNull_native();
      sub_26B4C1FE4(v107, 0x7365726975716552, 0xEC00000064615049, v35);
      v28 = v101;
    }

    else
    {

      v36 = sub_26B4A2FF8(&unk_287C04210, v23);
      v37 = sub_26B4C4F64(&unk_287C04238);
      v38 = sub_26B4BF9E0(v36, v37, sub_26B471350, &type metadata for VCCommand.Idiom, sub_26B4713A4);

      if ((v38 & 1) == 0)
      {
        if (sub_26B4BE6E0(3, v23))
        {
          v110 = MEMORY[0x277D839B0];
          LOBYTE(v108) = 1;
          sub_26B4A5218(&v108, v107);
          v40 = swift_isUniquelyReferenced_nonNull_native();
          sub_26B4C1FE4(v107, 0x7374726F70707553, 0xEF79616C50726143, v40);
        }

        v28 = v101;
        v31 = v102;
        if (sub_26B4BE6E0(5, v23))
        {
          v6 = v97;
        }

        else
        {
          v6 = v97;
          if ((sub_26B542B94() & 1) == 0 && (sub_26B542B94() & 1) == 0 && (sub_26B542B94() & 1) == 0)
          {
            v110 = MEMORY[0x277D839B0];
            LOBYTE(v108) = 1;
            sub_26B4A5218(&v108, v107);
            v90 = swift_isUniquelyReferenced_nonNull_native();
            sub_26B4C1FE4(v107, 0xD000000000000016, 0x800000026B56B030, v90);
            v31 = v102;
          }
        }

        goto LABEL_36;
      }

      v110 = MEMORY[0x277D839B0];
      LOBYTE(v108) = 1;
      sub_26B4A5218(&v108, v107);
      v39 = swift_isUniquelyReferenced_nonNull_native();
      sub_26B4C1FE4(v107, 0xD000000000000013, 0x800000026B56B0E0, v39);
      v28 = v101;
    }

    v6 = v97;
    v31 = v102;
LABEL_36:
    v30 = v100;
    if (v100 == 4)
    {
      if (v31 == 4)
      {
LABEL_75:
        v104 = v29;
        goto LABEL_76;
      }

      goto LABEL_57;
    }

    if (v100 > 1)
    {
      if (v100 == 2)
      {
        v30 = 1;
      }

      else
      {
        v30 = 2;
      }
    }

    else if (v100)
    {
      goto LABEL_62;
    }

LABEL_51:
    v110 = MEMORY[0x277D83B88];
    *&v108 = v30;
    sub_26B4A5218(&v108, v107);
    v41 = swift_isUniquelyReferenced_nonNull_native();
    sub_26B4C1FE4(v107, 0xD000000000000018, 0x800000026B56B0C0, v41);
    v31 = v102;
    if (v102 == 4)
    {
LABEL_68:
      v16 = a1;
      goto LABEL_69;
    }

    if (a1)
    {
LABEL_53:
      if (v31 <= 1)
      {
        if (v31)
        {
          v31 = 1;
        }

        goto LABEL_67;
      }

      if (v31 == 2)
      {
        v31 = 2;
        goto LABEL_67;
      }

      goto LABEL_62;
    }

LABEL_57:
    if (v31 > 1)
    {
      if (v31 == 2)
      {
        v31 = 1;
      }

      else
      {
        v31 = 2;
      }

      goto LABEL_67;
    }

    if (!v31)
    {
LABEL_67:
      v110 = MEMORY[0x277D83B88];
      *&v108 = v31;
      sub_26B4A5218(&v108, v107);
      v47 = swift_isUniquelyReferenced_nonNull_native();
      sub_26B4C1FE4(v107, 0xD000000000000018, 0x800000026B56B0A0, v47);
      goto LABEL_68;
    }

LABEL_62:
    *&v107[0] = 0;
    *(&v107[0] + 1) = 0xE000000000000000;
    sub_26B542D74();
    MEMORY[0x26D677BF0](0xD00000000000001DLL, 0x800000026B56AD10);
    sub_26B542E24();
    v43 = *(&v107[0] + 1);
    v42 = *&v107[0];
    sub_26B4C62C8();
    v44 = swift_allocError();
    *v45 = __PAIR128__(v43, v42);
    swift_willThrow();

    v46 = a1;
    if (v44)
    {

      return 0;
    }

    goto LABEL_90;
  }

  v29 = sub_26B4C4C98(MEMORY[0x277D84F90]);
  if ((v16 & 1) == 0)
  {
    goto LABEL_27;
  }

LABEL_23:
  v30 = v100;
  if (v100 != 4)
  {
    if (v100 > 1)
    {
      if (v100 != 2)
      {
        goto LABEL_62;
      }

      v30 = 2;
    }

    else if (v100)
    {
      v30 = 1;
    }

    goto LABEL_51;
  }

  if (v102 != 4)
  {
    v31 = v102;
    goto LABEL_53;
  }

LABEL_69:
  if (v6 && (v16 & 1) != 0)
  {
    v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803FFCE8, &unk_26B5454F0);
    *&v108 = v6;
    sub_26B4A5218(&v108, v107);

    v48 = swift_isUniquelyReferenced_nonNull_native();
    sub_26B4C1FE4(v107, 0xD00000000000001BLL, 0x800000026B56B080, v48);
    v16 = a1;
  }

  if (!v5 || (v16 & 1) == 0)
  {
    goto LABEL_75;
  }

  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803FFCE8, &unk_26B5454F0);
  *&v108 = v5;
  sub_26B4A5218(&v108, v107);

  v49 = swift_isUniquelyReferenced_nonNull_native();
  sub_26B4C1FE4(v107, 0xD000000000000023, 0x800000026B56B050, v49);
  v104 = v29;
LABEL_76:
  v50 = static VCCommand.Engine.voiceControlEngines.getter();
  v51 = sub_26B4C5020(v50);

  v52 = sub_26B4BF9E0(v28, v51, sub_26B471200, &type metadata for VCCommand.Engine, sub_26B471254);

  if (v52)
  {
    v44 = v104;
  }

  else
  {
    v53 = *(v28 + 16);
    v54 = MEMORY[0x277D84F90];
    if (v53)
    {
      v55 = sub_26B4C1A64(*(v28 + 16), 0);
      v56 = sub_26B4A4514(&v108, v55 + 32, v53, v28);

      sub_26B4A5210();
      if (v56 != v53)
      {
LABEL_120:
        __break(1u);
        goto LABEL_121;
      }

      v28 = v101;
      v54 = MEMORY[0x277D84F90];
    }

    else
    {
      v55 = MEMORY[0x277D84F90];
    }

    *&v108 = v55;
    sub_26B4C2490(&v108);
    v57 = v108;
    v58 = *(v108 + 16);
    if (v58)
    {
      *&v108 = v54;
      sub_26B4A2140(0, v58, 0);
      v59 = 32;
      v54 = v108;
      do
      {
        LOBYTE(v107[0]) = *(v57 + v59);
        v60 = VCCommand.Engine.rawValue.getter();
        *&v108 = v54;
        v63 = *(v54 + 16);
        v62 = *(v54 + 24);
        if (v63 >= v62 >> 1)
        {
          v65 = v60;
          v66 = v61;
          sub_26B4A2140((v62 > 1), v63 + 1, 1);
          v61 = v66;
          v28 = v101;
          v60 = v65;
          v54 = v108;
        }

        *(v54 + 16) = v63 + 1;
        v64 = v54 + 16 * v63;
        *(v64 + 32) = v60;
        *(v64 + 40) = v61;
        ++v59;
        --v58;
      }

      while (v58);
    }

    v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803FFCE8, &unk_26B5454F0);
    *&v108 = v54;
    sub_26B4A5218(&v108, v107);
    v67 = swift_isUniquelyReferenced_nonNull_native();
    sub_26B4C1FE4(v107, 0xD000000000000010, 0x800000026B56B010, v67);
    v44 = v104;
  }

  v46 = a1;
  if (!v44[2])
  {

    v44 = 0;
  }

LABEL_90:
  if (v44)
  {
    if (v44[2])
    {
      v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803FFD88, &qword_26B5454C8);
      *&v108 = v44;
      sub_26B4A5218(&v108, v107);
      v68 = swift_isUniquelyReferenced_nonNull_native();
      sub_26B4C1FE4(v107, 0xD000000000000011, 0x800000026B56AFB0, v68);
      v46 = a1;
    }

    else
    {
    }
  }

  *&v108 = sub_26B4C4C98(MEMORY[0x277D84F90]);
  sub_26B4BF794(v93, v46 & 1);
  v69 = v108;
  if (!*(v108 + 16))
  {

    v69 = sub_26B4C4C98(MEMORY[0x277D84F90]);
  }

  v70 = static VCCommand.Engine.voiceControlEngines.getter();
  v71 = sub_26B4C5020(v70);

  v72 = sub_26B4BF9E0(v28, v71, sub_26B471200, &type metadata for VCCommand.Engine, sub_26B471254);

  if (v72)
  {
    goto LABEL_107;
  }

  v73 = *(v28 + 16);
  v74 = MEMORY[0x277D84F90];
  if (!v73)
  {
    v75 = MEMORY[0x277D84F90];
    goto LABEL_101;
  }

  v75 = sub_26B4C1A64(v73, 0);
  v76 = sub_26B4A4514(&v108, v75 + 32, v73, v28);

  sub_26B4A5210();
  if (v76 == v73)
  {
    v74 = MEMORY[0x277D84F90];
LABEL_101:
    *&v108 = v75;
    sub_26B4C2490(&v108);
    v77 = v108;
    v78 = *(v108 + 16);
    if (v78)
    {
      *&v108 = v74;
      sub_26B4A2140(0, v78, 0);
      v79 = 32;
      v74 = v108;
      do
      {
        LOBYTE(v107[0]) = *(v77 + v79);
        v80 = VCCommand.Engine.rawValue.getter();
        *&v108 = v74;
        v83 = *(v74 + 16);
        v82 = *(v74 + 24);
        if (v83 >= v82 >> 1)
        {
          v106 = v80;
          v85 = v10;
          v86 = v81;
          sub_26B4A2140((v82 > 1), v83 + 1, 1);
          v81 = v86;
          v10 = v85;
          v80 = v106;
          v74 = v108;
        }

        *(v74 + 16) = v83 + 1;
        v84 = v74 + 16 * v83;
        *(v84 + 32) = v80;
        *(v84 + 40) = v81;
        ++v79;
        --v78;
      }

      while (v78);
    }

    v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803FFCE8, &unk_26B5454F0);
    *&v108 = v74;
    sub_26B4A5218(&v108, v107);
    v87 = swift_isUniquelyReferenced_nonNull_native();
    sub_26B4C1FE4(v107, 0xD000000000000010, 0x800000026B56B010, v87);
LABEL_107:
    if (*(v69 + 16))
    {
      v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803FFD88, &qword_26B5454C8);
      *&v108 = v69;
      sub_26B4A5218(&v108, v107);
      v88 = swift_isUniquelyReferenced_nonNull_native();
      sub_26B4C1FE4(v107, 0xD000000000000014, 0x800000026B56AF90, v88);
    }

    else
    {
    }

    return v10;
  }

LABEL_121:
  __break(1u);

  __break(1u);
  return result;
}