uint64_t sub_231DCFBE8@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_231E10E30();
  v7 = OUTLINED_FUNCTION_24(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v7);
  v14 = &v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v47 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&dword_27DD73FA0, &dword_231E13460);
  v18 = OUTLINED_FUNCTION_47(v17);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  v22 = &v47 - v21;
  if (a1)
  {
    v23 = a1;
    sub_231E08B20(v23, v22);
    v24 = sub_231E10400();
    OUTLINED_FUNCTION_8_17(v22, 1, v24);
    if (v25)
    {
      v26 = sub_231CB4EEC();
      (*(v9 + 16))(v16, v26, v6);

      v27 = sub_231E10E10();
      v28 = sub_231E11AD0();

      if (os_log_type_enabled(v27, v28))
      {
        OUTLINED_FUNCTION_9_1();
        v49 = a3;
        v29 = OUTLINED_FUNCTION_49_0();
        v50 = v29;
        *a3 = 136446210;
        v30 = sub_231DE2398(a2);
        v32 = OUTLINED_FUNCTION_46_9(v30, v31);
        v48 = v27;
        v33 = v32;

        *(a3 + 4) = v33;
        v34 = v48;
        _os_log_impl(&dword_231CAE000, v48, v28, "%{public}s AppIntentMailFetcher: Skipping handle, failed to init", a3, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v29);
        OUTLINED_FUNCTION_11();
        a3 = v49;
        OUTLINED_FUNCTION_30();
      }

      else
      {
      }

      (*(v9 + 8))(v16, v6);
    }

    else
    {
    }

    return sub_231CB37DC(v22, a3, &dword_27DD73FA0, &dword_231E13460);
  }

  else
  {
    v35 = sub_231CB4EEC();
    (*(v9 + 16))(v14, v35, v6);

    v36 = sub_231E10E10();
    v37 = sub_231E11AD0();

    if (OUTLINED_FUNCTION_85())
    {
      OUTLINED_FUNCTION_9_1();
      v38 = OUTLINED_FUNCTION_17_1();
      v50 = v38;
      MEMORY[0] = 136446210;
      v39 = sub_231DE2398(a2);
      v41 = OUTLINED_FUNCTION_46_9(v39, v40);

      MEMORY[4] = v41;
      _os_log_impl(&dword_231CAE000, v36, v37, "%{public}s AppIntentMailFetcher: Skipping handle, missing inPerson", 0, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v38);
      OUTLINED_FUNCTION_30();
      OUTLINED_FUNCTION_11();
    }

    (*(v9 + 8))(v14, v6);
    sub_231E10400();
    OUTLINED_FUNCTION_105();
    return __swift_storeEnumTagSinglePayload(v42, v43, v44, v45);
  }
}

id sub_231DCFF5C()
{
  v1 = sub_231E115F0();

  v2 = sub_231E115F0();

  v3 = [v0 initWithTypeIdentifier:v1 instanceIdentifier:v2];

  return v3;
}

uint64_t sub_231DCFFFC(size_t *a1)
{
  v2 = *(sub_231E10010() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_231DD19CC(v3);
  }

  v4 = *(v3 + 16);
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_231DD00C8(v6);
  *a1 = v3;
  return result;
}

uint64_t sub_231DD00C8(unint64_t *a1)
{
  v2 = a1[1];
  result = sub_231E120B0();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        sub_231E10010();
        v6 = sub_231E118B0();
        *(v6 + 16) = v5;
      }

      v7 = *(sub_231E10010() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_231DD0590(v8, v9, a1, v4);
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
    return sub_231DD01F8(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_231DD01F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v62 = sub_231E0F950();
  v8 = *(v62 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v62);
  v61 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v60 = &v43 - v12;
  v13 = sub_231E10010();
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  v53 = &v43 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v59 = &v43 - v18;
  result = MEMORY[0x28223BE20](v17);
  v58 = &v43 - v21;
  v45 = a2;
  if (a3 != a2)
  {
    v22 = *a4;
    v24 = *(v20 + 16);
    v23 = v20 + 16;
    v25 = *(v23 + 56);
    v55 = (v8 + 8);
    v56 = v24;
    v54 = (v23 - 8);
    v57 = v23;
    v26 = (v22 + v25 * (a3 - 1));
    v50 = -v25;
    v51 = (v23 + 16);
    v27 = a1 - a3;
    v52 = v22;
    v44 = v25;
    v28 = v22 + v25 * a3;
    v29 = v60;
    while (2)
    {
      v48 = v26;
      v49 = a3;
      v46 = v28;
      v47 = v27;
      v63 = v27;
      do
      {
        v30 = v58;
        v31 = v56;
        v56(v58, v28, v13);
        v32 = v13;
        v33 = v59;
        v31(v59, v26, v32);
        sub_231E0FFA0();
        v34 = v61;
        sub_231E0FFA0();
        v64 = sub_231E0F8D0();
        v35 = *v55;
        v36 = v34;
        v37 = v62;
        (*v55)(v36, v62);
        v35(v29, v37);
        v38 = *v54;
        v39 = v33;
        v13 = v32;
        (*v54)(v39, v32);
        result = v38(v30, v32);
        if ((v64 & 1) == 0)
        {
          break;
        }

        if (!v52)
        {
          __break(1u);
          return result;
        }

        v40 = *v51;
        v41 = v53;
        (*v51)(v53, v28, v32);
        swift_arrayInitWithTakeFrontToBack();
        result = v40(v26, v41, v32);
        v26 += v50;
        v28 += v50;
      }

      while (!__CFADD__(v63++, 1));
      a3 = v49 + 1;
      v26 = &v48[v44];
      v27 = v47 - 1;
      v28 = v46 + v44;
      if (v49 + 1 != v45)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

uint64_t sub_231DD0590(unint64_t *a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v135 = a1;
  v159 = sub_231E0F950();
  v8 = *(v159 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v159);
  v158 = &v132 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v157 = &v132 - v12;
  v13 = sub_231E10010();
  v14 = *(v13 - 8);
  v15 = v14[8];
  v16 = MEMORY[0x28223BE20](v13);
  v138 = &v132 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v149 = &v132 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v156 = &v132 - v21;
  result = MEMORY[0x28223BE20](v20);
  v160 = &v132 - v23;
  v144 = a3;
  v24 = a3[1];
  v139 = v14;
  if (v24 < 1)
  {
    v26 = MEMORY[0x277D84F90];
LABEL_101:
    v161 = *v135;
    if (!v161)
    {
      goto LABEL_142;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
LABEL_103:
      v125 = (v26 + 16);
      v126 = *(v26 + 16);
      while (v126 >= 2)
      {
        if (!*v144)
        {
          goto LABEL_139;
        }

        v127 = v26;
        v128 = (v26 + 16 * v126);
        v129 = *v128;
        v130 = &v125[2 * v126];
        v26 = v130[1];
        sub_231DD1184(*v144 + v139[9] * *v128, *v144 + v139[9] * *v130, *v144 + v139[9] * v26, v161);
        if (v5)
        {
          break;
        }

        if (v26 < v129)
        {
          goto LABEL_127;
        }

        if (v126 - 2 >= *v125)
        {
          goto LABEL_128;
        }

        *v128 = v129;
        v128[1] = v26;
        v131 = *v125 - v126;
        if (*v125 < v126)
        {
          goto LABEL_129;
        }

        v126 = *v125 - 1;
        result = memmove(v130, v130 + 2, 16 * v131);
        *v125 = v126;
        v26 = v127;
      }
    }

LABEL_136:
    result = sub_231CF1D4C(v26);
    v26 = result;
    goto LABEL_103;
  }

  v133 = a4;
  v25 = 0;
  v153 = (v8 + 8);
  v154 = v14 + 2;
  v151 = v14 + 4;
  v152 = (v14 + 1);
  v26 = MEMORY[0x277D84F90];
  v155 = v13;
  while (1)
  {
    v27 = v25;
    v28 = v25 + 1;
    if (v25 + 1 < v24)
    {
      v134 = v26;
      v29 = v25;
      v136 = v25;
      v145 = v5;
      v146 = v25 + 1;
      v30 = *v144;
      v161 = v30;
      v31 = v14;
      v32 = v14[9];
      v147 = v24;
      v148 = v32;
      v33 = v30 + v32 * v28;
      v34 = v13;
      v35 = v31[2];
      v35(v160, v33, v13);
      v36 = v156;
      v142 = v35;
      v35(v156, v30 + v32 * v29, v34);
      v5 = v157;
      v26 = v160;
      sub_231E0FFA0();
      v37 = v158;
      sub_231E0FFA0();
      LODWORD(v143) = sub_231E0F8D0();
      v38 = *v153;
      v39 = v159;
      (*v153)(v37, v159);
      v141 = v38;
      (v38)(v5, v39);
      v40 = v139[1];
      v40(v36, v34);
      v140 = v40;
      result = (v40)(v26, v34);
      v41 = v147;
      v42 = v136 + 2;
      v43 = v161 + v148 * (v136 + 2);
      while (1)
      {
        v44 = v42;
        if (++v146 >= v41)
        {
          break;
        }

        v5 = v160;
        v45 = v155;
        v46 = v142;
        v161 = v42;
        (v142)(v160, v43, v155);
        v26 = v156;
        v46(v156, v33, v45);
        v47 = v157;
        sub_231E0FFA0();
        v48 = v158;
        sub_231E0FFA0();
        LOBYTE(v150) = sub_231E0F8D0() & 1;
        LODWORD(v150) = v150;
        v49 = v48;
        v50 = v159;
        v51 = v141;
        (v141)(v49, v159);
        v51(v47, v50);
        v52 = v140;
        v140(v26, v45);
        result = (v52)(v5, v45);
        v44 = v161;
        v41 = v147;
        v43 += v148;
        v33 += v148;
        v42 = v161 + 1;
        if ((v143 & 1) != v150)
        {
          goto LABEL_9;
        }
      }

      v146 = v41;
LABEL_9:
      if (v143)
      {
        v28 = v146;
        v27 = v136;
        v13 = v155;
        if (v146 < v136)
        {
          goto LABEL_133;
        }

        if (v136 >= v146)
        {
          v5 = v145;
          v14 = v139;
          v26 = v134;
          goto LABEL_32;
        }

        if (v41 >= v44)
        {
          v53 = v44;
        }

        else
        {
          v53 = v41;
        }

        v54 = v148 * (v53 - 1);
        v55 = v148 * v53;
        v56 = v136;
        v57 = v136 * v148;
        v5 = v145;
        v14 = v139;
        do
        {
          if (v56 != --v28)
          {
            v58 = v5;
            v59 = *v144;
            if (!*v144)
            {
              goto LABEL_140;
            }

            v161 = *v151;
            (v161)(v138, v59 + v57, v13);
            v60 = v57 < v54 || v59 + v57 >= v59 + v55;
            if (v60)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v57 != v54)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            result = (v161)(v59 + v54, v138, v13);
            v5 = v58;
            v14 = v139;
          }

          ++v56;
          v54 -= v148;
          v55 -= v148;
          v57 += v148;
        }

        while (v56 < v28);
        v26 = v134;
      }

      else
      {
        v5 = v145;
        v14 = v139;
        v26 = v134;
        v13 = v155;
      }

      v28 = v146;
      v27 = v136;
    }

LABEL_32:
    v61 = v144[1];
    if (v28 < v61)
    {
      if (__OFSUB__(v28, v27))
      {
        goto LABEL_132;
      }

      if (v28 - v27 < v133)
      {
        break;
      }
    }

LABEL_48:
    if (v28 < v27)
    {
      goto LABEL_131;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_231CF0DE4(0, *(v26 + 16) + 1, 1, v26);
      v26 = result;
    }

    v82 = *(v26 + 16);
    v81 = *(v26 + 24);
    v83 = v82 + 1;
    if (v82 >= v81 >> 1)
    {
      result = sub_231CF0DE4((v81 > 1), v82 + 1, 1, v26);
      v26 = result;
    }

    *(v26 + 16) = v83;
    v84 = (v26 + 32);
    v85 = (v26 + 32 + 16 * v82);
    *v85 = v27;
    v85[1] = v28;
    v161 = *v135;
    if (!v161)
    {
      goto LABEL_141;
    }

    v146 = v28;
    if (v82)
    {
      v150 = (v26 + 32);
      while (1)
      {
        v86 = v83 - 1;
        v87 = &v84[16 * v83 - 16];
        v88 = (v26 + 16 * v83);
        if (v83 >= 4)
        {
          break;
        }

        if (v83 == 3)
        {
          v89 = *(v26 + 32);
          v90 = *(v26 + 40);
          v99 = __OFSUB__(v90, v89);
          v91 = v90 - v89;
          v92 = v99;
LABEL_69:
          if (v92)
          {
            goto LABEL_118;
          }

          v104 = *v88;
          v103 = v88[1];
          v105 = __OFSUB__(v103, v104);
          v106 = v103 - v104;
          v107 = v105;
          if (v105)
          {
            goto LABEL_121;
          }

          v108 = *(v87 + 1);
          v109 = v108 - *v87;
          if (__OFSUB__(v108, *v87))
          {
            goto LABEL_124;
          }

          if (__OFADD__(v106, v109))
          {
            goto LABEL_126;
          }

          if (v106 + v109 >= v91)
          {
            if (v91 < v109)
            {
              v86 = v83 - 2;
            }

            goto LABEL_91;
          }

          goto LABEL_84;
        }

        if (v83 < 2)
        {
          goto LABEL_120;
        }

        v111 = *v88;
        v110 = v88[1];
        v99 = __OFSUB__(v110, v111);
        v106 = v110 - v111;
        v107 = v99;
LABEL_84:
        if (v107)
        {
          goto LABEL_123;
        }

        v113 = *v87;
        v112 = *(v87 + 1);
        v99 = __OFSUB__(v112, v113);
        v114 = v112 - v113;
        if (v99)
        {
          goto LABEL_125;
        }

        if (v114 < v106)
        {
          goto LABEL_98;
        }

LABEL_91:
        if (v86 - 1 >= v83)
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
LABEL_134:
          __break(1u);
          goto LABEL_135;
        }

        if (!*v144)
        {
          goto LABEL_138;
        }

        v118 = &v84[16 * v86 - 16];
        v119 = *v118;
        v120 = v86;
        v121 = &v84[16 * v86];
        v122 = *(v121 + 1);
        sub_231DD1184(*v144 + v14[9] * *v118, *v144 + v14[9] * *v121, *v144 + v14[9] * v122, v161);
        if (v5)
        {
        }

        if (v122 < v119)
        {
          goto LABEL_113;
        }

        v145 = 0;
        v5 = v14;
        v123 = v26;
        v26 = *(v26 + 16);
        if (v120 > v26)
        {
          goto LABEL_114;
        }

        *v118 = v119;
        *(v118 + 1) = v122;
        if (v120 >= v26)
        {
          goto LABEL_115;
        }

        v83 = v26 - 1;
        result = memmove(v121, v121 + 16, 16 * (v26 - 1 - v120));
        *(v123 + 16) = v26 - 1;
        v124 = v26 > 2;
        v26 = v123;
        v14 = v5;
        v5 = v145;
        v84 = v150;
        if (!v124)
        {
          goto LABEL_98;
        }
      }

      v93 = &v84[16 * v83];
      v94 = *(v93 - 8);
      v95 = *(v93 - 7);
      v99 = __OFSUB__(v95, v94);
      v96 = v95 - v94;
      if (v99)
      {
        goto LABEL_116;
      }

      v98 = *(v93 - 6);
      v97 = *(v93 - 5);
      v99 = __OFSUB__(v97, v98);
      v91 = v97 - v98;
      v92 = v99;
      if (v99)
      {
        goto LABEL_117;
      }

      v100 = v88[1];
      v101 = v100 - *v88;
      if (__OFSUB__(v100, *v88))
      {
        goto LABEL_119;
      }

      v99 = __OFADD__(v91, v101);
      v102 = v91 + v101;
      if (v99)
      {
        goto LABEL_122;
      }

      if (v102 >= v96)
      {
        v116 = *v87;
        v115 = *(v87 + 1);
        v99 = __OFSUB__(v115, v116);
        v117 = v115 - v116;
        if (v99)
        {
          goto LABEL_130;
        }

        if (v91 < v117)
        {
          v86 = v83 - 2;
        }

        goto LABEL_91;
      }

      goto LABEL_69;
    }

LABEL_98:
    v24 = v144[1];
    v25 = v146;
    if (v146 >= v24)
    {
      goto LABEL_101;
    }
  }

  v62 = (v27 + v133);
  if (__OFADD__(v27, v133))
  {
    goto LABEL_134;
  }

  if (v62 >= v61)
  {
    v62 = v144[1];
  }

  if (v62 < v27)
  {
LABEL_135:
    __break(1u);
    goto LABEL_136;
  }

  if (v28 == v62)
  {
    goto LABEL_48;
  }

  v134 = v26;
  v145 = v5;
  v63 = *v144;
  v64 = v14[9];
  v150 = v14[2];
  v65 = v63 + v64 * (v28 - 1);
  v147 = -v64;
  v136 = v27;
  v66 = (v27 - v28);
  v148 = v63;
  v137 = v64;
  v67 = (v63 + v28 * v64);
  v140 = v62;
LABEL_41:
  v146 = v28;
  v141 = v67;
  v142 = v66;
  v143 = v65;
  v68 = v65;
  while (1)
  {
    v69 = v160;
    v70 = v150;
    (v150)(v160, v67, v13);
    v71 = v156;
    (v70)(v156, v68, v13);
    v72 = v157;
    sub_231E0FFA0();
    v73 = v158;
    sub_231E0FFA0();
    LODWORD(v161) = sub_231E0F8D0();
    v74 = *v153;
    v75 = v73;
    v76 = v159;
    (*v153)(v75, v159);
    v77 = v72;
    v13 = v155;
    v74(v77, v76);
    v78 = *v152;
    (*v152)(v71, v13);
    result = v78(v69, v13);
    if ((v161 & 1) == 0)
    {
LABEL_46:
      v28 = v146 + 1;
      v65 = v143 + v137;
      v66 = v142 - 1;
      v67 = &v141[v137];
      if ((v146 + 1) == v140)
      {
        v28 = v140;
        v5 = v145;
        v14 = v139;
        v26 = v134;
        v27 = v136;
        goto LABEL_48;
      }

      goto LABEL_41;
    }

    if (!v148)
    {
      break;
    }

    v79 = *v151;
    v80 = v149;
    (*v151)(v149, v67, v13);
    swift_arrayInitWithTakeFrontToBack();
    v79(v68, v80, v13);
    v68 += v147;
    v67 += v147;
    v60 = __CFADD__(v66++, 1);
    if (v60)
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
  return result;
}

uint64_t sub_231DD1184(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v86 = a4;
  v81 = sub_231E0F950();
  v7 = *(v81 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v81);
  v80 = &v69 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v79 = &v69 - v11;
  v85 = sub_231E10010();
  v12 = *(*(v85 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v85);
  v78 = &v69 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v13);
  v83 = &v69 - v17;
  v19 = *(v18 + 72);
  if (!v19)
  {
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
    return result;
  }

  v20 = a2 - a1 == 0x8000000000000000 && v19 == -1;
  if (v20)
  {
    goto LABEL_60;
  }

  v21 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v19 == -1)
  {
    goto LABEL_61;
  }

  v23 = (a2 - a1) / v19;
  v89 = a1;
  v88 = v86;
  v76 = (v7 + 8);
  v77 = (v16 + 16);
  v75 = (v16 + 8);
  v24 = v21 / v19;
  if (v23 >= v21 / v19)
  {
    v44 = v86;
    sub_231CC0498(a2, v21 / v19, v86, MEMORY[0x277D42240]);
    v45 = v44 + v24 * v19;
    v46 = -v19;
    v47 = v45;
    v84 = a1;
    v71 = v46;
LABEL_36:
    v48 = a2 + v46;
    v49 = a3;
    v69 = v47;
    v50 = v47;
    v72 = a2 + v46;
    v73 = a2;
    while (1)
    {
      if (v45 <= v86)
      {
        v89 = a2;
        v87 = v50;
        goto LABEL_58;
      }

      if (a2 <= a1)
      {
        break;
      }

      v70 = v50;
      v82 = v49 + v46;
      v51 = v45 + v46;
      v52 = v45;
      v53 = *v77;
      v54 = v48;
      v55 = v85;
      v56 = v49;
      (*v77)(v83, v45 + v46, v85);
      v57 = v78;
      v53(v78, v54, v55);
      v58 = v79;
      sub_231E0FFA0();
      v59 = v80;
      sub_231E0FFA0();
      LODWORD(v74) = sub_231E0F8D0();
      v60 = *v76;
      v61 = v59;
      v62 = v81;
      (*v76)(v61, v81);
      v60(v58, v62);
      v63 = *v75;
      (*v75)(v57, v55);
      v63(v83, v55);
      if (v74)
      {
        v45 = v52;
        a3 = v82;
        if (v56 < v73 || v82 >= v73)
        {
          a2 = v72;
          swift_arrayInitWithTakeFrontToBack();
          v47 = v70;
          v46 = v71;
          a1 = v84;
        }

        else
        {
          v67 = v70;
          v46 = v71;
          v47 = v70;
          v20 = v56 == v73;
          v68 = v72;
          a2 = v72;
          a1 = v84;
          if (!v20)
          {
            swift_arrayInitWithTakeBackToFront();
            a2 = v68;
            v47 = v67;
          }
        }

        goto LABEL_36;
      }

      v64 = v82;
      if (v56 < v52 || v82 >= v52)
      {
        swift_arrayInitWithTakeFrontToBack();
        v49 = v64;
        v45 = v51;
        v50 = v51;
        v48 = v72;
        a2 = v73;
        a1 = v84;
        v46 = v71;
      }

      else
      {
        v50 = v51;
        v20 = v52 == v56;
        v49 = v82;
        v45 = v51;
        v48 = v72;
        a2 = v73;
        a1 = v84;
        v46 = v71;
        if (!v20)
        {
          swift_arrayInitWithTakeBackToFront();
          v49 = v64;
          v45 = v51;
          v50 = v51;
        }
      }
    }

    v89 = a2;
    v87 = v69;
  }

  else
  {
    v25 = v86;
    sub_231CC0498(a1, (a2 - a1) / v19, v86, MEMORY[0x277D42240]);
    v73 = v19;
    v74 = v25 + v23 * v19;
    v87 = v74;
    v82 = a3;
    while (v86 < v74 && a2 < a3)
    {
      v84 = a1;
      v27 = *v77;
      v28 = v83;
      v29 = v85;
      (*v77)(v83, a2, v85);
      v30 = v78;
      v27(v78, v86, v29);
      v31 = v79;
      sub_231E0FFA0();
      v32 = v80;
      sub_231E0FFA0();
      v33 = sub_231E0F8D0();
      v34 = a2;
      v35 = *v76;
      v36 = v32;
      v37 = v81;
      (*v76)(v36, v81);
      v35(v31, v37);
      v38 = *v75;
      (*v75)(v30, v29);
      v38(v28, v29);
      if (v33)
      {
        v39 = v73;
        a2 = v34 + v73;
        v40 = v84;
        if (v84 < v34 || v84 >= a2)
        {
          swift_arrayInitWithTakeFrontToBack();
          a3 = v82;
        }

        else
        {
          a3 = v82;
          if (v84 != v34)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }
      }

      else
      {
        v39 = v73;
        v42 = v86 + v73;
        v40 = v84;
        if (v84 < v86 || v84 >= v42)
        {
          swift_arrayInitWithTakeFrontToBack();
          a3 = v82;
          a2 = v34;
        }

        else
        {
          a3 = v82;
          a2 = v34;
          if (v84 != v86)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v88 = v42;
        v86 = v42;
      }

      a1 = v40 + v39;
      v89 = a1;
    }
  }

LABEL_58:
  sub_231DD1818(&v89, &v88, &v87);
  return 1;
}

uint64_t sub_231DD1818(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = sub_231E10010();
  v7 = *(*(result - 8) + 72);
  if (!v7)
  {
    __break(1u);
LABEL_20:
    __break(1u);
    return result;
  }

  if (v5 - v4 == 0x8000000000000000 && v7 == -1)
  {
    goto LABEL_20;
  }

  v9 = v4 + (v5 - v4) / v7 * v7;
  if (v3 < v4 || v3 >= v9)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v3 != v4)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

uint64_t sub_231DD18F8(void *a1)
{
  v1 = [a1 assistantDefinedSchemas];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  sub_231CC1784(0, &qword_27DD75458, 0x277D23768);
  v3 = sub_231E11870();

  return v3;
}

uint64_t sub_231DD1968(void *a1)
{
  v1 = [a1 domain];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_231E11620();

  return v3;
}

unint64_t sub_231DD19E0()
{
  result = qword_2814CBC60;
  if (!qword_2814CBC60)
  {
    sub_231E0F950();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814CBC60);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_13_18()
{

  return sub_231E12100();
}

void OUTLINED_FUNCTION_24_12(uint64_t a1@<X8>)
{
  *(a1 - 256) = 0;
  *(v1 - 496) = 0;
  *(v1 - 592) = 0;
  *(v1 - 504) = 0;
}

void OUTLINED_FUNCTION_27_11(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t OUTLINED_FUNCTION_32_10()
{
  result = v0 + 8;
  v2 = *(v0 + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_33_15()
{
  result = v0;
  v3 = *(v1 - 304);
  return result;
}

uint64_t OUTLINED_FUNCTION_39_7(uint64_t result)
{
  *(v2 - 256) = v1 & 0xC000000000000001;
  *(v2 - 248) = result;
  *(v2 - 264) = v1 & 0xFFFFFFFFFFFFFF8;
  return result;
}

uint64_t OUTLINED_FUNCTION_47_7()
{
  v2 = *(v0 - 504);
}

uint64_t OUTLINED_FUNCTION_48_9(uint64_t a1)
{

  return sub_231CC154C(a1, v1, v2);
}

uint64_t OUTLINED_FUNCTION_49_10()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_56_12(uint64_t result)
{
  *(v1 + 14) = result;
  *v2 = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_62_6()
{
  v2 = *(v0 - 496);
}

uint64_t OUTLINED_FUNCTION_63_8(uint64_t a1, unint64_t a2)
{

  return sub_231CB5000(a1, a2, (v2 - 128));
}

void sub_231DD1BF0()
{
  OUTLINED_FUNCTION_0();
  v0 = sub_231E115F0();
  v1 = sub_231E115F0();
  OUTLINED_FUNCTION_59_0();
  v2 = PPSCreateTelemetryIdentifier();

  qword_2814CDF78 = v2;
}

void sub_231DD1C74(uint64_t a1)
{
  v3 = sub_231E10E30();
  v4 = OUTLINED_FUNCTION_24(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_138_2();
  if (_MergedGlobals_4 != -1)
  {
    swift_once();
  }

  if (qword_2814CDF78)
  {
    sub_231DD1E58(a1);
    v16 = sub_231E11520();

    PPSSendTelemetry();
  }

  else
  {
    v9 = sub_231CB4EEC();
    (*(v6 + 16))(v1, v9, v3);
    v10 = sub_231E10E10();
    v11 = sub_231E11AE0();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_231CAE000, v10, v11, "Analytics: Failed to create PowerLog telemetry identifier. Unable to log to PowerLog.", v12, 2u);
      OUTLINED_FUNCTION_30();
    }

    v13 = *(v6 + 8);
    v14 = OUTLINED_FUNCTION_48();
    v15(v14);
  }
}

uint64_t sub_231DD1E58(uint64_t a1)
{
  v2 = MEMORY[0x277D84F98];
  v34 = MEMORY[0x277D84F98];
  v3 = a1 + 64;
  v4 = 1 << *(a1 + 32);
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  else
  {
    v5 = -1;
  }

  v6 = v5 & *(a1 + 64);
  v7 = (v4 + 63) >> 6;

  for (i = 0; v6; result = sub_231CC154C(v21, &dword_27DD741E0, &qword_231E15D70))
  {
LABEL_9:
    v11 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v12 = v11 | (i << 6);
    sub_231CF45B4(*(a1 + 48) + 40 * v12, __src);
    v13 = *(a1 + 56) + 32 * v12;
    sub_231DA3AF0();
    memcpy(__dst, __src, sizeof(__dst));
    sub_231DA3AF0();
    if (*&v30[24])
    {
      sub_231CE1044(v30, v31);
      memcpy(v30, __dst, sizeof(v30));
      sub_231CE1044(v31, v29);
      v14 = *(v2 + 16);
      if (*(v2 + 24) <= v14)
      {
        sub_231DE2C30(v14 + 1, 1);
        v2 = v34;
      }

      v15 = *(v2 + 40);
      result = sub_231E11D00();
      v16 = v2 + 64;
      v17 = -1 << *(v2 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v2 + 64 + 8 * (v18 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v17) >> 6;
        while (++v19 != v23 || (v22 & 1) == 0)
        {
          v24 = v19 == v23;
          if (v19 == v23)
          {
            v19 = 0;
          }

          v22 |= v24;
          v25 = *(v16 + 8 * v19);
          if (v25 != -1)
          {
            v20 = __clz(__rbit64(~v25)) + (v19 << 6);
            goto LABEL_22;
          }
        }

        goto LABEL_27;
      }

      v20 = __clz(__rbit64((-1 << v18) & ~*(v2 + 64 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_22:
      *(v16 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      v26 = *(v2 + 48) + 40 * v20;
      v27 = *v30;
      v28 = *&v30[16];
      *(v26 + 32) = *&v30[32];
      *v26 = v27;
      *(v26 + 16) = v28;
      sub_231CE1044(v29, (*(v2 + 56) + 32 * v20));
      ++*(v2 + 16);
      v21 = &v30[40];
    }

    else
    {
      sub_231CC154C(__dst, &qword_27DD757F0, &qword_231E229F0);
      v21 = v30;
    }
  }

  while (1)
  {
    v10 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v10 >= v7)
    {

      return v2;
    }

    v6 = *(v3 + 8 * v10);
    ++i;
    if (v6)
    {
      i = v10;
      goto LABEL_9;
    }
  }

  __break(1u);
LABEL_27:
  __break(1u);
  return result;
}

void sub_231DD2154()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD75460, &qword_231E20420);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_231E138E0;
  OUTLINED_FUNCTION_51_3();
  *(v1 + 32) = 0xD000000000000014;
  *(v1 + 40) = v2;
  v3 = *sub_231D6020C();

  v4 = nullsub_1(0);
  v7 = sub_231D6024C(v4, v5, v6, 0);

  *(inited + 48) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
  sub_231CC1784(0, &qword_2814CBD70, 0x277CCABB0);
  OUTLINED_FUNCTION_59_0();
  v8 = sub_231E11530();
  v9 = sub_231E115F0();
  sub_231DDF9BC(v8);

  sub_231CC1784(0, &qword_2814CAEB0, 0x277D82BB8);
  v10 = sub_231E11520();

  OUTLINED_FUNCTION_88_4();
  AnalyticsSendEvent();
}

PSUSummarizationAnalytics __swiftcall PSUSummarizationAnalytics.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

unint64_t sub_231DD2398(char a1)
{
  result = 1818845549;
  switch(a1)
  {
    case 1:
      result = 0x6567617373656DLL;
      break;
    case 2:
      result = 0x6163696669746F6ELL;
      break;
    case 3:
      OUTLINED_FUNCTION_0();
      result = 0xD000000000000011;
      break;
    case 4:
      result = 0x657268546C69616DLL;
      break;
    case 5:
      result = 0x6172546F69647561;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_231DD246C(unint64_t result)
{
  if (result >= 6)
  {
    return 6;
  }

  return result;
}

unint64_t sub_231DD247C(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_88_8(a1);
  result = sub_231DD246C(v2);
  *v1 = result;
  return result;
}

uint64_t sub_231DD24A4()
{
  OUTLINED_FUNCTION_1_26();
  sub_231DA2B1C();
  OUTLINED_FUNCTION_0_32();
  return sub_231E11830();
}

uint64_t sub_231DD24EC()
{
  OUTLINED_FUNCTION_1_26();
  sub_231DA2B1C();
  OUTLINED_FUNCTION_0_32();
  return sub_231E117F0();
}

void sub_231DD2524()
{
  OUTLINED_FUNCTION_118();
  v1 = sub_231E10E30();
  v2 = OUTLINED_FUNCTION_24(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_138_2();
  OUTLINED_FUNCTION_88_4();
  v7 = sub_231E11690();
  v9 = v8;
  if (v7 == 0x79726F74736968 && v8 == 0xE700000000000000)
  {
    goto LABEL_6;
  }

  v11 = v7;
  if (OUTLINED_FUNCTION_55_9())
  {
    goto LABEL_6;
  }

  OUTLINED_FUNCTION_0();
  v13 = v11 == 0xD000000000000011 && v12 == v9;
  if (v13 || (OUTLINED_FUNCTION_55_9() & 1) != 0)
  {
    goto LABEL_6;
  }

  v14 = v11 == 0x676E696D6F636E69 && v9 == 0xE800000000000000;
  if (v14 || (OUTLINED_FUNCTION_55_9() & 1) != 0)
  {
    goto LABEL_6;
  }

  v15 = v11 == 0x676E696D6F637075 && v9 == 0xEE0064657373696DLL;
  if (v15 || (OUTLINED_FUNCTION_55_9() & 1) != 0)
  {
    goto LABEL_6;
  }

  v16 = v11 == 0x64746E6572727563 && v9 == 0xED00007473656769;
  if (v16 || (OUTLINED_FUNCTION_55_9() & 1) != 0)
  {
    goto LABEL_6;
  }

  v17 = v11 == 0x676E696D6F637075 && v9 == 0xEE00747365676964;
  if (v17 || (OUTLINED_FUNCTION_55_9() & 1) != 0 || (v11 == 0x6567696464616572 ? (v18 = v9 == 0xEA00000000007473) : (v18 = 0), v18 || (OUTLINED_FUNCTION_55_9() & 1) != 0 || ((OUTLINED_FUNCTION_0(), v11 == 0xD000000000000011) ? (v20 = v19 == v9) : (v20 = 0), v20 || (OUTLINED_FUNCTION_55_9() & 1) != 0 || ((OUTLINED_FUNCTION_0(), v11 == 0xD000000000000010) ? (v22 = v21 == v9) : (v22 = 0), v22 || (OUTLINED_FUNCTION_55_9() & 1) != 0 || ((OUTLINED_FUNCTION_0(), v11 == 0xD000000000000014) ? (v24 = v23 == v9) : (v24 = 0), v24 || (OUTLINED_FUNCTION_55_9() & 1) != 0)))))
  {
LABEL_6:

    goto LABEL_7;
  }

  if (v11 == 0x6867696C68676968 && v9 == 0xEB00000000646574)
  {

LABEL_69:

    goto LABEL_7;
  }

  v26 = OUTLINED_FUNCTION_55_9();

  if (v26)
  {
    goto LABEL_69;
  }

  sub_231CB4EEC();
  OUTLINED_FUNCTION_180_2();
  v27(v0);

  v28 = sub_231E10E10();
  v29 = sub_231E11AF0();

  if (os_log_type_enabled(v28, v29))
  {
    v30 = OUTLINED_FUNCTION_9_1();
    OUTLINED_FUNCTION_67();
    *v30 = 136446210;
    v31 = OUTLINED_FUNCTION_88_4();
    v34 = sub_231CB5000(v31, v32, v33);

    *(v30 + 4) = v34;
    _os_log_impl(&dword_231CAE000, v28, v29, "Unknown section type: %{public}s", v30, 0xCu);
    OUTLINED_FUNCTION_210_0();
    OUTLINED_FUNCTION_30();
    OUTLINED_FUNCTION_30();
  }

  else
  {
  }

  (*(v4 + 8))(v0, v1);
LABEL_7:
  OUTLINED_FUNCTION_113();
}

unint64_t sub_231DD29C4(unint64_t result)
{
  if (result >= 0xC)
  {
    return 12;
  }

  return result;
}

unint64_t sub_231DD29D4(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_88_8(a1);
  result = sub_231DD29C4(v2);
  *v1 = result;
  return result;
}

uint64_t sub_231DD29FC()
{
  OUTLINED_FUNCTION_1_26();
  sub_231DE71C8();
  OUTLINED_FUNCTION_0_32();
  return sub_231E11830();
}

uint64_t sub_231DD2A44()
{
  OUTLINED_FUNCTION_1_26();
  sub_231DE71C8();
  OUTLINED_FUNCTION_0_32();
  return sub_231E117F0();
}

const char *sub_231DD2A7C(char a1, char a2)
{
  switch(a1)
  {
    case 1:
      result = "Message.Total";
      switch(a2)
      {
        case 1:
          result = "Message.SpotlightFiltering";
          break;
        case 2:
          result = "Message.ContextRetrieval";
          break;
        case 3:
          result = "Message.AttachmentResolution";
          break;
        case 4:
          result = "Message.SummarizationFiltering";
          break;
        case 5:
          result = "Message.PowerBudget";
          break;
        case 6:
          result = "Message.SummaryGeneration";
          break;
        case 7:
          result = "Message.Writeback";
          break;
        case 8:
          result = "Message.ManualSummaryGeneration";
          break;
        case 9:
          result = "Message.Urgency";
          break;
        case 10:
          result = "Message.UrgencyFiltering";
          break;
        case 11:
          result = "Message.UrgencyContext";
          break;
        case 12:
          result = "Message.UrgencyClassification";
          break;
        case 13:
          result = "Message.Everything";
          break;
        case 14:
          result = "Message.PreWarming";
          break;
        case 15:
          result = "Message.SearchableItemToEntityConversion";
          break;
        case 16:
          result = "Message.WaitingInQueue";
          break;
        case 17:
          result = "Message.SpotlightIndexing";
          break;
        case 18:
          goto LABEL_13;
        case 19:
          result = "Message.PriorityFeedbackClassification";
          break;
        default:
          return result;
      }

      break;
    case 2:
      result = "Notification.Total";
      switch(a2)
      {
        case 1:
          result = "Notification.SpotlightFiltering";
          break;
        case 2:
          result = "Notification.ContextRetrieval";
          break;
        case 3:
          result = "Notification.AttachmentResolution";
          break;
        case 4:
          result = "Notification.SummarizationFiltering";
          break;
        case 5:
          result = "Notification.PowerBudget";
          break;
        case 6:
          result = "Notification.SummaryGeneration";
          break;
        case 7:
          result = "Notification.Writeback";
          break;
        case 8:
          result = "Notification.ManualSummaryGeneration";
          break;
        case 9:
          result = "Notification.Urgency";
          break;
        case 10:
          result = "Notification.UrgencyFiltering";
          break;
        case 11:
          result = "Notification.UrgencyContext";
          break;
        case 12:
          result = "Notification.UrgencyClassification";
          break;
        case 13:
          result = "Notification.Everything";
          break;
        case 14:
          result = "Notification.PreWarming";
          break;
        case 15:
          result = "Notification.SearchableItemToEntityConversion";
          break;
        case 16:
          result = "Notification.WaitingInQueue";
          break;
        case 17:
          result = "Notification.SpotlightIndexing";
          break;
        case 18:
          result = "Notification.Initialization";
          break;
        case 19:
          result = "Notification.PriorityFeedbackClassification";
          break;
        default:
          return result;
      }

      break;
    case 3:
      result = "NotificationStack.Total";
      switch(a2)
      {
        case 1:
          result = "NotificationStack.SpotlightFiltering";
          break;
        case 2:
          result = "NotificationStack.ContextRetrieval";
          break;
        case 3:
          result = "NotificationStack.AttachmentResolution";
          break;
        case 4:
          result = "NotificationStack.SummarizationFiltering";
          break;
        case 5:
          result = "NotificationStack.PowerBudget";
          break;
        case 6:
          result = "NotificationStack.SummaryGeneration";
          break;
        case 7:
          result = "NotificationStack.Writeback";
          break;
        case 8:
          result = "NotificationStack.ManualSummaryGeneration";
          break;
        case 9:
          result = "NotificationStack.Urgency";
          break;
        case 10:
          result = "NotificationStack.UrgencyFiltering";
          break;
        case 11:
          result = "NotificationStack.UrgencyContext";
          break;
        case 12:
          result = "NotificationStack.UrgencyClassification";
          break;
        case 13:
          result = "NotificationStack.Everything";
          break;
        case 14:
          result = "NotificationStack.PreWarming";
          break;
        case 15:
          result = "NotificationStack.SearchableItemToEntityConversion";
          break;
        case 16:
          result = "NotificationStack.WaitingInQueue";
          break;
        case 17:
          result = "NotificationStack.SpotlightIndexing";
          break;
        case 18:
          result = "NotificationStack.Initialization";
          break;
        case 19:
          result = "NotificationStack.PriorityFeedbackClassification";
          break;
        default:
          return result;
      }

      break;
    case 4:
      result = "MailThread.AttachmentResolutionTotal";
      switch(a2)
      {
        case 3:
          return result;
        case 6:
          goto LABEL_5;
        case 13:
          result = "MailThread.Everything";
          break;
        default:
          goto LABEL_13;
      }

      break;
    case 5:
      result = "AudioTranscript.Total";
      switch(a2)
      {
        case 1:
          result = "AudioTranscript.SpotlightFiltering";
          break;
        case 2:
        case 3:
        case 8:
        case 9:
        case 10:
        case 11:
        case 12:
        case 19:
          goto LABEL_13;
        case 4:
          result = "AudioTranscript.SummarizationFiltering";
          break;
        case 5:
          result = "AudioTranscript.PowerBudget";
          break;
        case 6:
          result = "AudioTranscript.SummaryGeneration";
          break;
        case 7:
          result = "AudioTranscript.Writeback";
          break;
        case 13:
          result = "AudioTranscript.Everything";
          break;
        case 14:
          result = "AudioTranscript.PreWarming";
          break;
        case 15:
          result = "AudioTranscript.SearchableItemToEntityConversion";
          break;
        case 16:
          result = "AudioTranscript.WaitingInQueue";
          break;
        case 17:
          result = "AudioTranscript.SpotlightIndexing";
          break;
        case 18:
          result = "AudioTranscript.Initialization";
          break;
        default:
          return result;
      }

      break;
    default:
      result = "Mail.Total";
      switch(a2)
      {
        case 1:
          result = "Mail.SpotlightFiltering";
          break;
        case 2:
          result = "Mail.ContextRetrieval";
          break;
        case 3:
          result = "Mail.AttachmentResolution";
          break;
        case 4:
          result = "Mail.SummarizationFiltering";
          break;
        case 5:
          result = "Mail.PowerBudget";
          break;
        case 6:
          result = "Mail.SummaryGeneration";
          break;
        case 7:
          result = "Mail.Writeback";
          break;
        case 8:
LABEL_5:
          result = "Mail.ManualSummaryGeneration";
          break;
        case 9:
          result = "Mail.Urgency";
          break;
        case 10:
          result = "Mail.UrgencyFiltering";
          break;
        case 11:
          result = "Mail.UrgencyContext";
          break;
        case 12:
          result = "Mail.UrgencyClassification";
          break;
        case 13:
          result = "Mail.Everything";
          break;
        case 14:
          result = "Mail.PreWarming";
          break;
        case 15:
          result = "Mail.SearchableItemToEntityConversion";
          break;
        case 16:
          result = "Mail.WaitingInQueue";
          break;
        case 17:
          result = "Mail.SpotlightIndexing";
          break;
        case 18:
LABEL_13:
          result = 0;
          break;
        case 19:
          result = "Mail.PriorityFeedbackClassification";
          break;
        default:
          return result;
      }

      break;
  }

  return result;
}

uint64_t sub_231DD32CC()
{
  sub_231DE2AE0();
  v0 = OUTLINED_FUNCTION_10_4();

  return MEMORY[0x2821FE718](v0);
}

uint64_t sub_231DD3304()
{
  sub_231DE2AE0();
  v0 = OUTLINED_FUNCTION_10_4();

  return MEMORY[0x2821FE720](v0);
}

uint64_t sub_231DD333C()
{
  OUTLINED_FUNCTION_300_0();
  v3 = v1 == 0x6C61746F74 && v2 == 0xE500000000000000;
  if (v3 || (OUTLINED_FUNCTION_15_2() & 1) != 0)
  {

    return 0;
  }

  else
  {
    OUTLINED_FUNCTION_0();
    v6 = v1 == 0xD000000000000012 && v5 == v0;
    if (v6 || (OUTLINED_FUNCTION_15_2() & 1) != 0)
    {

      return 1;
    }

    else
    {
      OUTLINED_FUNCTION_63_9();
      v8 = v3 && v7 == v0;
      if (v8 || (OUTLINED_FUNCTION_15_2() & 1) != 0)
      {

        return 2;
      }

      else
      {
        OUTLINED_FUNCTION_0();
        v10 = v1 == 0xD000000000000014 && v9 == v0;
        if (v10 || (OUTLINED_FUNCTION_15_2() & 1) != 0)
        {

          return 3;
        }

        else
        {
          OUTLINED_FUNCTION_0();
          v12 = v1 == 0xD000000000000016 && v11 == v0;
          if (v12 || (OUTLINED_FUNCTION_15_2() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v14 = v1 == OUTLINED_FUNCTION_168_2() && v0 == v13;
            if (v14 || (OUTLINED_FUNCTION_15_2() & 1) != 0)
            {

              return 5;
            }

            else
            {
              OUTLINED_FUNCTION_0();
              v16 = v1 == 0xD000000000000011 && v15 == v0;
              if (v16 || (OUTLINED_FUNCTION_15_2() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v17 = v1 == 0x6361626574697277 && v0 == 0xE90000000000006BLL;
                if (v17 || (OUTLINED_FUNCTION_15_2() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  OUTLINED_FUNCTION_0();
                  v19 = v1 == 0xD000000000000017 && v18 == v0;
                  if (v19 || (OUTLINED_FUNCTION_15_2() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v20 = v1 == 0x79636E65677275 && v0 == 0xE700000000000000;
                    if (v20 || (OUTLINED_FUNCTION_15_2() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      OUTLINED_FUNCTION_63_9();
                      v22 = v3 && v21 == v0;
                      if (v22 || (OUTLINED_FUNCTION_15_2() & 1) != 0)
                      {

                        return 10;
                      }

                      else
                      {
                        v24 = v1 == OUTLINED_FUNCTION_148_2() && v0 == v23;
                        if (v24 || (OUTLINED_FUNCTION_15_2() & 1) != 0)
                        {

                          return 11;
                        }

                        else
                        {
                          OUTLINED_FUNCTION_0();
                          v26 = v1 == 0xD000000000000015 && v25 == v0;
                          if (v26 || (OUTLINED_FUNCTION_15_2() & 1) != 0)
                          {

                            return 12;
                          }

                          else
                          {
                            v27 = v1 == 0x6968747972657665 && v0 == 0xEA0000000000676ELL;
                            if (v27 || (OUTLINED_FUNCTION_15_2() & 1) != 0)
                            {

                              return 13;
                            }

                            else
                            {
                              v28 = v1 == 0x696D726157657270 && v0 == 0xEA0000000000676ELL;
                              if (v28 || (OUTLINED_FUNCTION_15_2() & 1) != 0)
                              {

                                return 14;
                              }

                              else
                              {
                                OUTLINED_FUNCTION_0();
                                v30 = v1 == 0xD000000000000020 && v29 == v0;
                                if (v30 || (OUTLINED_FUNCTION_15_2() & 1) != 0)
                                {

                                  return 15;
                                }

                                else
                                {
                                  v32 = v1 == OUTLINED_FUNCTION_147_2() && v0 == v31;
                                  if (v32 || (OUTLINED_FUNCTION_15_2() & 1) != 0)
                                  {

                                    return 16;
                                  }

                                  else
                                  {
                                    OUTLINED_FUNCTION_0();
                                    v34 = v1 == 0xD000000000000011 && v33 == v0;
                                    if (v34 || (OUTLINED_FUNCTION_15_2() & 1) != 0)
                                    {

                                      return 17;
                                    }

                                    else
                                    {
                                      v36 = v1 == OUTLINED_FUNCTION_146_1() && v0 == v35;
                                      if (v36 || (OUTLINED_FUNCTION_15_2() & 1) != 0)
                                      {

                                        return 18;
                                      }

                                      else
                                      {
                                        OUTLINED_FUNCTION_196_0();
                                        if (v3 && v37 == v0)
                                        {

                                          return 19;
                                        }

                                        else
                                        {
                                          OUTLINED_FUNCTION_15_2();
                                          OUTLINED_FUNCTION_10_1();
                                          if (v1)
                                          {
                                            return 19;
                                          }

                                          else
                                          {
                                            return 20;
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
  }
}

void sub_231DD3798(char a1)
{
  switch(a1)
  {
    case 1:
    case 3:
    case 4:
    case 6:
    case 8:
    case 15:
    case 17:
    case 19:
      OUTLINED_FUNCTION_217_1();
      break;
    case 2:
    case 10:
      OUTLINED_FUNCTION_0();
      break;
    case 5:
      OUTLINED_FUNCTION_168_2();
      break;
    case 11:
      OUTLINED_FUNCTION_148_2();
      break;
    case 12:
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_72_5(5);
      break;
    case 16:
      OUTLINED_FUNCTION_147_2();
      break;
    case 18:
      OUTLINED_FUNCTION_146_1();
      break;
    default:
      return;
  }
}

uint64_t sub_231DD39F4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_231DD333C();
  *a1 = result;
  return result;
}

uint64_t sub_231DD3A24()
{
  sub_231DE254C();
  v0 = OUTLINED_FUNCTION_10_4();

  return MEMORY[0x2821FE718](v0);
}

uint64_t sub_231DD3A5C()
{
  sub_231DE254C();
  v0 = OUTLINED_FUNCTION_10_4();

  return MEMORY[0x2821FE720](v0);
}

uint64_t sub_231DD3A94()
{
  sub_231DE2B34();
  v0 = OUTLINED_FUNCTION_10_4();

  return MEMORY[0x2821FE718](v0);
}

uint64_t sub_231DD3ACC()
{
  sub_231DE2B34();
  v0 = OUTLINED_FUNCTION_10_4();

  return MEMORY[0x2821FE720](v0);
}

uint64_t sub_231DD3B04()
{
  sub_231DE2798();
  v0 = OUTLINED_FUNCTION_10_4();

  return MEMORY[0x2821FE718](v0);
}

uint64_t sub_231DD3B3C()
{
  sub_231DE2798();
  v0 = OUTLINED_FUNCTION_10_4();

  return MEMORY[0x2821FE720](v0);
}

uint64_t sub_231DD3B74()
{
  sub_231DE25F4();
  v0 = OUTLINED_FUNCTION_10_4();

  return MEMORY[0x2821FE718](v0);
}

uint64_t sub_231DD3BAC()
{
  sub_231DE25F4();
  v0 = OUTLINED_FUNCTION_10_4();

  return MEMORY[0x2821FE720](v0);
}

uint64_t sub_231DD3BE4()
{
  sub_231DE293C();
  v0 = OUTLINED_FUNCTION_10_4();

  return MEMORY[0x2821FE718](v0);
}

uint64_t sub_231DD3C1C()
{
  sub_231DE293C();
  v0 = OUTLINED_FUNCTION_10_4();

  return MEMORY[0x2821FE720](v0);
}

uint64_t sub_231DD3C54()
{
  sub_231DE2A38();
  v0 = OUTLINED_FUNCTION_10_4();

  return MEMORY[0x2821FE718](v0);
}

uint64_t sub_231DD3C8C()
{
  sub_231DE2A38();
  v0 = OUTLINED_FUNCTION_10_4();

  return MEMORY[0x2821FE720](v0);
}

uint64_t sub_231DD3CC4()
{
  sub_231DE2744();
  v0 = OUTLINED_FUNCTION_10_4();

  return MEMORY[0x2821FE718](v0);
}

uint64_t sub_231DD3CFC()
{
  sub_231DE2744();
  v0 = OUTLINED_FUNCTION_10_4();

  return MEMORY[0x2821FE720](v0);
}

uint64_t sub_231DD3D34()
{
  sub_231DE25A0();
  v0 = OUTLINED_FUNCTION_10_4();

  return MEMORY[0x2821FE718](v0);
}

uint64_t sub_231DD3D6C()
{
  sub_231DE25A0();
  v0 = OUTLINED_FUNCTION_10_4();

  return MEMORY[0x2821FE720](v0);
}

uint64_t sub_231DD3DA4()
{
  sub_231DE26F0();
  v0 = OUTLINED_FUNCTION_10_4();

  return MEMORY[0x2821FE718](v0);
}

uint64_t sub_231DD3DDC()
{
  sub_231DE26F0();
  v0 = OUTLINED_FUNCTION_10_4();

  return MEMORY[0x2821FE720](v0);
}

uint64_t sub_231DD3E14()
{
  sub_231DE2B88();
  v0 = OUTLINED_FUNCTION_10_4();

  return MEMORY[0x2821FE718](v0);
}

uint64_t sub_231DD3E4C()
{
  sub_231DE2B88();
  v0 = OUTLINED_FUNCTION_10_4();

  return MEMORY[0x2821FE720](v0);
}

uint64_t sub_231DD3E84()
{
  sub_231DE2648();
  v0 = OUTLINED_FUNCTION_10_4();

  return MEMORY[0x2821FE718](v0);
}

uint64_t sub_231DD3EBC()
{
  sub_231DE2648();
  v0 = OUTLINED_FUNCTION_10_4();

  return MEMORY[0x2821FE720](v0);
}

uint64_t sub_231DD3EF4()
{
  sub_231DE2A8C();
  v0 = OUTLINED_FUNCTION_10_4();

  return MEMORY[0x2821FE718](v0);
}

uint64_t sub_231DD3F2C()
{
  sub_231DE2A8C();
  v0 = OUTLINED_FUNCTION_10_4();

  return MEMORY[0x2821FE720](v0);
}

uint64_t sub_231DD3F64()
{
  sub_231DE29E4();
  v0 = OUTLINED_FUNCTION_10_4();

  return MEMORY[0x2821FE718](v0);
}

uint64_t sub_231DD3F9C()
{
  sub_231DE29E4();
  v0 = OUTLINED_FUNCTION_10_4();

  return MEMORY[0x2821FE720](v0);
}

uint64_t sub_231DD3FD4()
{
  sub_231DE2BDC();
  v0 = OUTLINED_FUNCTION_10_4();

  return MEMORY[0x2821FE718](v0);
}

uint64_t sub_231DD400C()
{
  sub_231DE2BDC();
  v0 = OUTLINED_FUNCTION_10_4();

  return MEMORY[0x2821FE720](v0);
}

uint64_t sub_231DD4044()
{
  sub_231DE27EC();
  v0 = OUTLINED_FUNCTION_10_4();

  return MEMORY[0x2821FE718](v0);
}

uint64_t sub_231DD407C()
{
  sub_231DE27EC();
  v0 = OUTLINED_FUNCTION_10_4();

  return MEMORY[0x2821FE720](v0);
}

uint64_t sub_231DD40B4()
{
  sub_231DE28E8();
  v0 = OUTLINED_FUNCTION_10_4();

  return MEMORY[0x2821FE718](v0);
}

uint64_t sub_231DD40EC()
{
  sub_231DE28E8();
  v0 = OUTLINED_FUNCTION_10_4();

  return MEMORY[0x2821FE720](v0);
}

uint64_t sub_231DD4124()
{
  sub_231DE2840();
  v0 = OUTLINED_FUNCTION_10_4();

  return MEMORY[0x2821FE718](v0);
}

uint64_t sub_231DD415C()
{
  sub_231DE2840();
  v0 = OUTLINED_FUNCTION_10_4();

  return MEMORY[0x2821FE720](v0);
}

uint64_t sub_231DD4194()
{
  sub_231DE2894();
  v0 = OUTLINED_FUNCTION_10_4();

  return MEMORY[0x2821FE718](v0);
}

uint64_t sub_231DD41CC()
{
  sub_231DE2894();
  v0 = OUTLINED_FUNCTION_10_4();

  return MEMORY[0x2821FE720](v0);
}

uint64_t sub_231DD4204()
{
  sub_231DE269C();
  v0 = OUTLINED_FUNCTION_10_4();

  return MEMORY[0x2821FE718](v0);
}

uint64_t sub_231DD423C()
{
  sub_231DE269C();
  v0 = OUTLINED_FUNCTION_10_4();

  return MEMORY[0x2821FE720](v0);
}

uint64_t sub_231DD4274()
{
  sub_231DE2990();
  v0 = OUTLINED_FUNCTION_10_4();

  return MEMORY[0x2821FE718](v0);
}

uint64_t sub_231DD42AC()
{
  sub_231DE2990();
  v0 = OUTLINED_FUNCTION_10_4();

  return MEMORY[0x2821FE720](v0);
}

void sub_231DD42E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_35_1();
  a19 = v22;
  a20 = v23;
  v210 = v24;
  v26 = v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD75468, &qword_231E20428);
  v28 = OUTLINED_FUNCTION_24(v27);
  v205 = v29;
  v206 = v28;
  v31 = *(v30 + 64);
  OUTLINED_FUNCTION_11_2();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_189_1(v33);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD75470, &qword_231E20430);
  v35 = OUTLINED_FUNCTION_24(v34);
  v202 = v36;
  v203 = v35;
  v38 = *(v37 + 64);
  OUTLINED_FUNCTION_11_2();
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_12_1();
  v201 = v40;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD75478, &qword_231E20438);
  v42 = OUTLINED_FUNCTION_24(v41);
  v199 = v43;
  v200 = v42;
  v45 = *(v44 + 64);
  OUTLINED_FUNCTION_11_2();
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_12_1();
  v198 = v47;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD75480, &qword_231E20440);
  v49 = OUTLINED_FUNCTION_24(v48);
  v196 = v50;
  v197 = v49;
  v52 = *(v51 + 64);
  OUTLINED_FUNCTION_11_2();
  MEMORY[0x28223BE20](v53);
  OUTLINED_FUNCTION_12_1();
  v195 = v54;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD75488, &qword_231E20448);
  v56 = OUTLINED_FUNCTION_24(v55);
  v193 = v57;
  v194 = v56;
  v59 = *(v58 + 64);
  OUTLINED_FUNCTION_11_2();
  MEMORY[0x28223BE20](v60);
  OUTLINED_FUNCTION_12_1();
  v192 = v61;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD75490, &qword_231E20450);
  v63 = OUTLINED_FUNCTION_24(v62);
  v190 = v64;
  v191 = v63;
  v66 = *(v65 + 64);
  OUTLINED_FUNCTION_11_2();
  MEMORY[0x28223BE20](v67);
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_16_2(v68);
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD75498, &qword_231E20458);
  OUTLINED_FUNCTION_0_7(v69, &a17);
  v187 = v70;
  v72 = *(v71 + 64);
  OUTLINED_FUNCTION_11_2();
  MEMORY[0x28223BE20](v73);
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_16_2(v74);
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD754A0, &qword_231E20460);
  OUTLINED_FUNCTION_0_7(v75, &a14);
  v184[1] = v76;
  v78 = *(v77 + 64);
  OUTLINED_FUNCTION_11_2();
  MEMORY[0x28223BE20](v79);
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_16_2(v80);
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD754A8, &qword_231E20468);
  OUTLINED_FUNCTION_0_7(v81, &a11);
  v183 = v82;
  v84 = *(v83 + 64);
  OUTLINED_FUNCTION_11_2();
  MEMORY[0x28223BE20](v85);
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_16_2(v86);
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD754B0, &qword_231E20470);
  OUTLINED_FUNCTION_0_7(v87, &v211);
  v182 = v88;
  v90 = *(v89 + 64);
  OUTLINED_FUNCTION_11_2();
  MEMORY[0x28223BE20](v91);
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_16_2(v92);
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD754B8, &qword_231E20478);
  OUTLINED_FUNCTION_0_7(v93, &v208);
  v181 = v94;
  v96 = *(v95 + 64);
  OUTLINED_FUNCTION_11_2();
  MEMORY[0x28223BE20](v97);
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_16_2(v98);
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD754C0, &qword_231E20480);
  OUTLINED_FUNCTION_0_7(v99, &v205);
  v180 = v100;
  v102 = *(v101 + 64);
  OUTLINED_FUNCTION_11_2();
  MEMORY[0x28223BE20](v103);
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_16_2(v104);
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD754C8, &qword_231E20488);
  OUTLINED_FUNCTION_0_7(v105, &v202);
  v179 = v106;
  v108 = *(v107 + 64);
  OUTLINED_FUNCTION_11_2();
  MEMORY[0x28223BE20](v109);
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_16_2(v110);
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD754D0, &qword_231E20490);
  OUTLINED_FUNCTION_0_7(v111, &v199);
  v178 = v112;
  v114 = *(v113 + 64);
  OUTLINED_FUNCTION_11_2();
  MEMORY[0x28223BE20](v115);
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_16_2(v116);
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD754D8, &qword_231E20498);
  OUTLINED_FUNCTION_0_7(v117, &v196);
  v177 = v118;
  v120 = *(v119 + 64);
  OUTLINED_FUNCTION_11_2();
  MEMORY[0x28223BE20](v121);
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_16_2(v122);
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD754E0, &qword_231E204A0);
  OUTLINED_FUNCTION_0_7(v123, &v193);
  v176 = v124;
  v126 = *(v125 + 64);
  OUTLINED_FUNCTION_11_2();
  MEMORY[0x28223BE20](v127);
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_16_2(v128);
  v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD754E8, &qword_231E204A8);
  OUTLINED_FUNCTION_0_7(v129, &v190);
  v175 = v130;
  v132 = *(v131 + 64);
  OUTLINED_FUNCTION_11_2();
  MEMORY[0x28223BE20](v133);
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_16_2(v134);
  v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD754F0, &qword_231E204B0);
  OUTLINED_FUNCTION_0_7(v135, &v187);
  v174 = v136;
  v138 = *(v137 + 64);
  OUTLINED_FUNCTION_11_2();
  MEMORY[0x28223BE20](v139);
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_16_2(v140);
  v141 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD754F8, &qword_231E204B8);
  OUTLINED_FUNCTION_24(v141);
  v173 = v142;
  v144 = *(v143 + 64);
  OUTLINED_FUNCTION_11_2();
  MEMORY[0x28223BE20](v145);
  OUTLINED_FUNCTION_0_9();
  v146 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD75500, &qword_231E204C0);
  OUTLINED_FUNCTION_24(v146);
  v172[1] = v147;
  v149 = *(v148 + 64);
  OUTLINED_FUNCTION_11_2();
  MEMORY[0x28223BE20](v150);
  OUTLINED_FUNCTION_81_7();
  v208 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD75508, &qword_231E204C8);
  OUTLINED_FUNCTION_24(v208);
  v152 = v151;
  v154 = *(v153 + 64);
  OUTLINED_FUNCTION_11_2();
  MEMORY[0x28223BE20](v155);
  v157 = v172 - v156;
  v159 = v26[3];
  v158 = v26[4];
  OUTLINED_FUNCTION_103_4(v26);
  sub_231DE254C();
  v207 = v157;
  sub_231E12270();
  v160 = (v152 + 8);
  switch(v210)
  {
    case 1:
      OUTLINED_FUNCTION_31_0();
      sub_231DE2B88();
      v166 = v207;
      v167 = v208;
      sub_231E12000();
      (*(v173 + 8))(v20, v141);
      (*v160)(v166, v167);
      goto LABEL_25;
    case 2:
      HIBYTE(a10) = 2;
      sub_231DE2B34();
      OUTLINED_FUNCTION_20_17(&v185);
      v161 = OUTLINED_FUNCTION_7_2(&v186);
      v165 = &v187;
      goto LABEL_21;
    case 3:
      HIBYTE(a10) = 3;
      sub_231DE2AE0();
      OUTLINED_FUNCTION_20_17(&v188);
      v161 = OUTLINED_FUNCTION_7_2(&v189);
      v165 = &v190;
      goto LABEL_21;
    case 4:
      HIBYTE(a10) = 4;
      sub_231DE2A8C();
      OUTLINED_FUNCTION_20_17(&v191);
      v161 = OUTLINED_FUNCTION_7_2(&v192);
      v165 = &v193;
      goto LABEL_21;
    case 5:
      HIBYTE(a10) = 5;
      sub_231DE2A38();
      OUTLINED_FUNCTION_20_17(&v194);
      v161 = OUTLINED_FUNCTION_7_2(&v195);
      v165 = &v196;
      goto LABEL_21;
    case 6:
      HIBYTE(a10) = 6;
      sub_231DE29E4();
      OUTLINED_FUNCTION_20_17(&v197);
      v161 = OUTLINED_FUNCTION_7_2(&v198);
      v165 = &v199;
      goto LABEL_21;
    case 7:
      HIBYTE(a10) = 7;
      sub_231DE2990();
      OUTLINED_FUNCTION_20_17(&v200);
      v161 = OUTLINED_FUNCTION_7_2(&v201);
      v165 = &v202;
      goto LABEL_21;
    case 8:
      HIBYTE(a10) = 8;
      sub_231DE293C();
      OUTLINED_FUNCTION_20_17(&v203);
      v161 = OUTLINED_FUNCTION_7_2(&v204);
      v165 = &v205;
      goto LABEL_21;
    case 9:
      HIBYTE(a10) = 9;
      sub_231DE28E8();
      OUTLINED_FUNCTION_20_17(&v206);
      v161 = OUTLINED_FUNCTION_7_2(&v207);
      v165 = &v208;
      goto LABEL_21;
    case 10:
      HIBYTE(a10) = 10;
      sub_231DE2894();
      OUTLINED_FUNCTION_20_17(&v209);
      v161 = OUTLINED_FUNCTION_7_2(&v210);
      v165 = &v211;
      goto LABEL_21;
    case 11:
      HIBYTE(a10) = 11;
      sub_231DE2840();
      OUTLINED_FUNCTION_20_17(&a9);
      v161 = OUTLINED_FUNCTION_7_2(&a10);
      v165 = &a11;
      goto LABEL_21;
    case 12:
      HIBYTE(a10) = 12;
      sub_231DE27EC();
      OUTLINED_FUNCTION_20_17(&a12);
      v161 = OUTLINED_FUNCTION_7_2(&a13);
      v165 = &a14;
      goto LABEL_21;
    case 13:
      HIBYTE(a10) = 13;
      sub_231DE2798();
      OUTLINED_FUNCTION_20_17(&a15);
      v161 = OUTLINED_FUNCTION_7_2(&a16);
      v165 = &a17;
LABEL_21:
      v163 = *(v165 - 32);
      break;
    case 14:
      HIBYTE(a10) = 14;
      sub_231DE2744();
      OUTLINED_FUNCTION_20_17(&a18);
      v164 = v190;
      v163 = v191;
      goto LABEL_23;
    case 15:
      HIBYTE(a10) = 15;
      sub_231DE26F0();
      v21 = v192;
      OUTLINED_FUNCTION_27_12();
      v164 = v193;
      v163 = v194;
      goto LABEL_23;
    case 16:
      HIBYTE(a10) = 16;
      sub_231DE269C();
      v21 = v195;
      OUTLINED_FUNCTION_27_12();
      v164 = v196;
      v163 = v197;
      goto LABEL_23;
    case 17:
      HIBYTE(a10) = 17;
      sub_231DE2648();
      v21 = v198;
      OUTLINED_FUNCTION_27_12();
      v164 = v199;
      v163 = v200;
      goto LABEL_23;
    case 18:
      HIBYTE(a10) = 18;
      sub_231DE25F4();
      v21 = v201;
      OUTLINED_FUNCTION_27_12();
      v164 = v202;
      v163 = v203;
      goto LABEL_23;
    case 19:
      HIBYTE(a10) = 19;
      sub_231DE25A0();
      v21 = v204;
      OUTLINED_FUNCTION_27_12();
      v164 = v205;
      v163 = v206;
LABEL_23:
      v162 = *(v164 + 8);
      v161 = v21;
      break;
    default:
      HIBYTE(a10) = 0;
      sub_231DE2BDC();
      OUTLINED_FUNCTION_27_12();
      v161 = OUTLINED_FUNCTION_7_2(v184);
      v163 = v146;
      break;
  }

  v162(v161, v163);
  v168 = *v160;
  v169 = OUTLINED_FUNCTION_174_2();
  v171(v169, v170);
LABEL_25:
  OUTLINED_FUNCTION_33_0();
}

void sub_231DD50E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_35_1();
  a19 = v22;
  a20 = v23;
  v216 = v20;
  v25 = v24;
  v198 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD75510, &qword_231E204D0);
  OUTLINED_FUNCTION_24(v198);
  v197 = v26;
  v28 = *(v27 + 64);
  OUTLINED_FUNCTION_11_2();
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_12_1();
  v211 = v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD75518, &qword_231E204D8);
  OUTLINED_FUNCTION_0_7(v31, &a17);
  v195 = v32;
  v34 = *(v33 + 64);
  OUTLINED_FUNCTION_11_2();
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_189_1(v36);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD75520, &qword_231E204E0);
  OUTLINED_FUNCTION_0_7(v37, &a15);
  v193 = v38;
  v40 = *(v39 + 64);
  OUTLINED_FUNCTION_11_2();
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_12_1();
  v209 = v42;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD75528, &qword_231E204E8);
  OUTLINED_FUNCTION_0_7(v43, &a13);
  v191[2] = v44;
  v46 = *(v45 + 64);
  OUTLINED_FUNCTION_11_2();
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_12_1();
  v208 = v48;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD75530, &qword_231E204F0);
  OUTLINED_FUNCTION_0_7(v49, &a11);
  v191[0] = v50;
  v52 = *(v51 + 64);
  OUTLINED_FUNCTION_11_2();
  MEMORY[0x28223BE20](v53);
  OUTLINED_FUNCTION_12_1();
  v207 = v54;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD75538, &qword_231E204F8);
  OUTLINED_FUNCTION_0_7(v55, &a9);
  v190 = v56;
  v58 = *(v57 + 64);
  OUTLINED_FUNCTION_11_2();
  MEMORY[0x28223BE20](v59);
  OUTLINED_FUNCTION_12_1();
  v206[1] = v60;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD75540, &qword_231E20500);
  OUTLINED_FUNCTION_0_7(v61, &v216);
  v189 = v62;
  v64 = *(v63 + 64);
  OUTLINED_FUNCTION_11_2();
  MEMORY[0x28223BE20](v65);
  OUTLINED_FUNCTION_12_1();
  v206[0] = v66;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD75548, &qword_231E20508);
  OUTLINED_FUNCTION_0_7(v67, &v214);
  v188 = v68;
  v70 = *(v69 + 64);
  OUTLINED_FUNCTION_11_2();
  MEMORY[0x28223BE20](v71);
  OUTLINED_FUNCTION_12_1();
  v205[1] = v72;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD75550, &qword_231E20510);
  OUTLINED_FUNCTION_0_7(v73, &v212);
  v187 = v74;
  v76 = *(v75 + 64);
  OUTLINED_FUNCTION_11_2();
  MEMORY[0x28223BE20](v77);
  OUTLINED_FUNCTION_12_1();
  v205[0] = v78;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD75558, &qword_231E20518);
  OUTLINED_FUNCTION_0_7(v79, &v210);
  v186 = v80;
  v82 = *(v81 + 64);
  OUTLINED_FUNCTION_11_2();
  MEMORY[0x28223BE20](v83);
  OUTLINED_FUNCTION_12_1();
  v204 = v84;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD75560, &qword_231E20520);
  OUTLINED_FUNCTION_0_7(v85, &v208);
  v185 = v86;
  v88 = *(v87 + 64);
  OUTLINED_FUNCTION_11_2();
  MEMORY[0x28223BE20](v89);
  OUTLINED_FUNCTION_12_1();
  v203 = v90;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD75568, &qword_231E20528);
  OUTLINED_FUNCTION_0_7(v91, v206);
  v184 = v92;
  v94 = *(v93 + 64);
  OUTLINED_FUNCTION_11_2();
  MEMORY[0x28223BE20](v95);
  OUTLINED_FUNCTION_12_1();
  v214 = v96;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD75570, &qword_231E20530);
  OUTLINED_FUNCTION_0_7(v97, v205);
  v183 = v98;
  v100 = *(v99 + 64);
  OUTLINED_FUNCTION_11_2();
  MEMORY[0x28223BE20](v101);
  OUTLINED_FUNCTION_12_1();
  v213 = v102;
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD75578, &qword_231E20538);
  OUTLINED_FUNCTION_0_7(v103, &v204);
  v182[17] = v104;
  v106 = *(v105 + 64);
  OUTLINED_FUNCTION_11_2();
  MEMORY[0x28223BE20](v107);
  OUTLINED_FUNCTION_12_1();
  v212 = v108;
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD75580, &qword_231E20540);
  OUTLINED_FUNCTION_0_7(v109, &v202);
  v182[15] = v110;
  v112 = *(v111 + 64);
  OUTLINED_FUNCTION_11_2();
  MEMORY[0x28223BE20](v113);
  OUTLINED_FUNCTION_12_1();
  v202 = v114;
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD75588, &qword_231E20548);
  OUTLINED_FUNCTION_0_7(v115, &v200);
  v182[13] = v116;
  v118 = *(v117 + 64);
  OUTLINED_FUNCTION_11_2();
  MEMORY[0x28223BE20](v119);
  OUTLINED_FUNCTION_12_1();
  v201 = v120;
  v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD75590, &qword_231E20550);
  OUTLINED_FUNCTION_0_7(v121, &v198);
  v182[11] = v122;
  v124 = *(v123 + 64);
  OUTLINED_FUNCTION_11_2();
  MEMORY[0x28223BE20](v125);
  OUTLINED_FUNCTION_12_1();
  v200 = v126;
  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD75598, &qword_231E20558);
  OUTLINED_FUNCTION_0_7(v127, &v196);
  v182[9] = v128;
  v130 = *(v129 + 64);
  OUTLINED_FUNCTION_11_2();
  MEMORY[0x28223BE20](v131);
  OUTLINED_FUNCTION_12_1();
  v199 = v132;
  v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD755A0, &qword_231E20560);
  OUTLINED_FUNCTION_0_7(v133, &v194);
  v182[7] = v134;
  v136 = *(v135 + 64);
  OUTLINED_FUNCTION_11_2();
  MEMORY[0x28223BE20](v137);
  v139 = v182 - v138;
  v140 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD755A8, &qword_231E20568);
  OUTLINED_FUNCTION_24(v140);
  v182[6] = v141;
  v143 = *(v142 + 64);
  OUTLINED_FUNCTION_11_2();
  MEMORY[0x28223BE20](v144);
  v146 = v182 - v145;
  v147 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD755B0, &unk_231E20570);
  OUTLINED_FUNCTION_24(v147);
  v149 = v148;
  v151 = *(v150 + 64);
  OUTLINED_FUNCTION_11_2();
  MEMORY[0x28223BE20](v152);
  OUTLINED_FUNCTION_0_9();
  v154 = v25[3];
  v153 = v25[4];
  v215 = v25;
  OUTLINED_FUNCTION_214_1();
  sub_231DE254C();
  OUTLINED_FUNCTION_184_1();
  v155 = v216;
  sub_231E12260();
  if (v155)
  {
    goto LABEL_8;
  }

  v182[4] = v146;
  v182[3] = v140;
  v182[5] = v139;
  v156 = v213;
  v157 = v214;
  v216 = v149;
  v158 = sub_231E11FE0();
  v162 = sub_231CCF16C(v158, 0);
  if (v160 == v161 >> 1)
  {
LABEL_7:
    v173 = v21;
    v174 = v147;
    v175 = sub_231E11DC0();
    swift_allocError();
    v177 = v176;
    v178 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD743E8, &qword_231E13D10) + 48);
    *v177 = &type metadata for SummarizationAnalytics.StepKind;
    sub_231E11F40();
    OUTLINED_FUNCTION_32_0();
    (*(*(v175 - 8) + 104))(v177, *MEMORY[0x277D84160], v175);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v216 + 8))(v173, v174);
LABEL_8:
    __swift_destroy_boxed_opaque_existential_0(v215);
LABEL_9:
    OUTLINED_FUNCTION_33_0();
    return;
  }

  v182[2] = 0;
  if (v160 < (v161 >> 1))
  {
    v163 = *(v159 + v160);
    sub_231DE3580(v160 + 1, v161 >> 1, v162, v159, v160, v161);
    v165 = v164;
    v167 = v166;
    v169 = v168;
    swift_unknownObjectRelease();
    if (v167 == v169 >> 1)
    {
      v182[1] = v165;
      switch(v163)
      {
        case 1:
          OUTLINED_FUNCTION_31_0();
          sub_231DE2B88();
          OUTLINED_FUNCTION_15_18();
          OUTLINED_FUNCTION_97_5();
          v170 = OUTLINED_FUNCTION_18_12(&v193);
          v172 = &v194;
          goto LABEL_28;
        case 2:
          HIBYTE(a10) = 2;
          sub_231DE2B34();
          OUTLINED_FUNCTION_15_18();
          OUTLINED_FUNCTION_97_5();
          v170 = OUTLINED_FUNCTION_18_12(&v195);
          v172 = &v196;
          goto LABEL_28;
        case 3:
          HIBYTE(a10) = 3;
          sub_231DE2AE0();
          OUTLINED_FUNCTION_15_18();
          OUTLINED_FUNCTION_97_5();
          v170 = OUTLINED_FUNCTION_18_12(&v197);
          v172 = &v198;
          goto LABEL_28;
        case 4:
          HIBYTE(a10) = 4;
          sub_231DE2A8C();
          OUTLINED_FUNCTION_15_18();
          OUTLINED_FUNCTION_97_5();
          v170 = OUTLINED_FUNCTION_18_12(&v199);
          v172 = &v200;
          goto LABEL_28;
        case 5:
          HIBYTE(a10) = 5;
          sub_231DE2A38();
          OUTLINED_FUNCTION_15_18();
          OUTLINED_FUNCTION_97_5();
          v170 = OUTLINED_FUNCTION_18_12(&v201);
          v172 = &v202;
          goto LABEL_28;
        case 6:
          HIBYTE(a10) = 6;
          sub_231DE29E4();
          OUTLINED_FUNCTION_15_18();
          OUTLINED_FUNCTION_97_5();
          v170 = OUTLINED_FUNCTION_18_12(&v203);
          v172 = &v204;
          goto LABEL_28;
        case 7:
          HIBYTE(a10) = 7;
          sub_231DE2990();
          OUTLINED_FUNCTION_26_11();
          OUTLINED_FUNCTION_97_5();
          v171 = *(v183 + 8);
          v170 = v156;
          v172 = v205;
          goto LABEL_28;
        case 8:
          HIBYTE(a10) = 8;
          sub_231DE293C();
          OUTLINED_FUNCTION_26_11();
          OUTLINED_FUNCTION_97_5();
          v171 = *(v184 + 8);
          v170 = v157;
          v172 = v206;
          goto LABEL_28;
        case 9:
          HIBYTE(a10) = 9;
          sub_231DE28E8();
          OUTLINED_FUNCTION_15_18();
          OUTLINED_FUNCTION_97_5();
          v170 = OUTLINED_FUNCTION_18_12(&v207);
          v172 = &v208;
          goto LABEL_28;
        case 10:
          HIBYTE(a10) = 10;
          sub_231DE2894();
          OUTLINED_FUNCTION_15_18();
          OUTLINED_FUNCTION_97_5();
          v170 = OUTLINED_FUNCTION_18_12(&v209);
          v172 = &v210;
          goto LABEL_28;
        case 11:
          HIBYTE(a10) = 11;
          sub_231DE2840();
          OUTLINED_FUNCTION_15_18();
          OUTLINED_FUNCTION_97_5();
          v170 = OUTLINED_FUNCTION_18_12(&v211);
          v172 = &v212;
          goto LABEL_28;
        case 12:
          HIBYTE(a10) = 12;
          sub_231DE27EC();
          OUTLINED_FUNCTION_15_18();
          OUTLINED_FUNCTION_97_5();
          v170 = OUTLINED_FUNCTION_18_12(&v213);
          v172 = &v214;
          goto LABEL_28;
        case 13:
          HIBYTE(a10) = 13;
          sub_231DE2798();
          OUTLINED_FUNCTION_15_18();
          OUTLINED_FUNCTION_97_5();
          v170 = OUTLINED_FUNCTION_18_12(&v215);
          v172 = &v216;
          goto LABEL_28;
        case 14:
          HIBYTE(a10) = 14;
          sub_231DE2744();
          OUTLINED_FUNCTION_15_18();
          OUTLINED_FUNCTION_97_5();
          v170 = OUTLINED_FUNCTION_18_12(&v217);
          v172 = &a9;
          goto LABEL_28;
        case 15:
          HIBYTE(a10) = 15;
          sub_231DE26F0();
          OUTLINED_FUNCTION_15_18();
          OUTLINED_FUNCTION_97_5();
          v170 = OUTLINED_FUNCTION_18_12(&a10);
          v172 = &a11;
          goto LABEL_28;
        case 16:
          HIBYTE(a10) = 16;
          sub_231DE269C();
          OUTLINED_FUNCTION_15_18();
          OUTLINED_FUNCTION_97_5();
          v170 = OUTLINED_FUNCTION_18_12(&a12);
          v172 = &a13;
          goto LABEL_28;
        case 17:
          HIBYTE(a10) = 17;
          sub_231DE2648();
          OUTLINED_FUNCTION_15_18();
          OUTLINED_FUNCTION_97_5();
          v170 = OUTLINED_FUNCTION_18_12(&a14);
          v172 = &a15;
          goto LABEL_28;
        case 18:
          HIBYTE(a10) = 18;
          sub_231DE25F4();
          OUTLINED_FUNCTION_15_18();
          OUTLINED_FUNCTION_97_5();
          v170 = OUTLINED_FUNCTION_18_12(&a16);
          v172 = &a17;
          goto LABEL_28;
        case 19:
          HIBYTE(a10) = 19;
          sub_231DE25A0();
          OUTLINED_FUNCTION_15_18();
          OUTLINED_FUNCTION_97_5();
          v170 = OUTLINED_FUNCTION_18_12(&a18);
          v179 = v198;
          goto LABEL_29;
        default:
          HIBYTE(a10) = 0;
          sub_231DE2BDC();
          OUTLINED_FUNCTION_15_18();
          OUTLINED_FUNCTION_97_5();
          v170 = OUTLINED_FUNCTION_18_12(&v192);
          v172 = v191;
LABEL_28:
          v179 = *(v172 - 32);
LABEL_29:
          v171(v170, v179);
          v180 = OUTLINED_FUNCTION_174_3();
          v181(v180);
          __swift_destroy_boxed_opaque_existential_0(v215);
          break;
      }

      goto LABEL_9;
    }

    goto LABEL_7;
  }

  __break(1u);
}

unint64_t sub_231DD6220(unint64_t result)
{
  if (result >= 0x16)
  {
    return 22;
  }

  return result;
}

unint64_t sub_231DD6230(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_88_8(a1);
  result = sub_231DD6220(v2);
  *v1 = result;
  return result;
}

uint64_t sub_231DD6258()
{
  OUTLINED_FUNCTION_1_26();
  sub_231DE7174();
  OUTLINED_FUNCTION_0_32();
  return sub_231E11830();
}

uint64_t sub_231DD62A0()
{
  OUTLINED_FUNCTION_1_26();
  sub_231DE7174();
  OUTLINED_FUNCTION_0_32();
  return sub_231E117F0();
}

uint64_t sub_231DD62D8()
{
  v2 = v0;
  v3 = 0x20676E697373696DLL;
  v4 = OBJC_IVAR____TtC22ProactiveSummarization22SummarizationAnalytics_exitReason;
  OUTLINED_FUNCTION_81();
  swift_beginAccess();
  switch(*(v2 + v4))
  {
    case 3:
      OUTLINED_FUNCTION_12_18();
      return v8 + 15;
    case 4:
      OUTLINED_FUNCTION_12_18();
      return v6 + 19;
    case 5:
      v3 = 0xD000000000000011;
      goto LABEL_11;
    case 6:
      sub_231E11D70();

      OUTLINED_FUNCTION_51_3();
      v32 = 0xD00000000000001ELL;
      v12 = (v2 + OBJC_IVAR____TtC22ProactiveSummarization22SummarizationAnalytics_ineligibleForSummarizationReason);
      OUTLINED_FUNCTION_81();
      swift_beginAccess();
      v13 = *(v12 + 16);
      if (v13 == 255)
      {
        v21 = 7104878;
        v23 = 0xE300000000000000;
      }

      else
      {
        v15 = *v12;
        v14 = v12[1];
        v16 = OUTLINED_FUNCTION_25_7();
        sub_231CC3500(v16, v17, v13);
        v18 = OUTLINED_FUNCTION_25_7();
        sub_231CFFD6C(v18, v19, v13);
        v21 = v20;
        v23 = v22;
        v24 = OUTLINED_FUNCTION_25_7();
        sub_231CBA16C(v24, v25, v13);
      }

      MEMORY[0x23837CC20](v21, v23);
      goto LABEL_21;
    case 7:
      OUTLINED_FUNCTION_12_18();
      return v9 + 30;
    case 8:
      OUTLINED_FUNCTION_12_18();
      return v27 + 24;
    case 9:
    case 0xA:
      OUTLINED_FUNCTION_87_8();

      OUTLINED_FUNCTION_51_3();
      v32 = v1 + 1;
      v7 = OBJC_IVAR____TtC22ProactiveSummarization22SummarizationAnalytics_cancellationReason;
      OUTLINED_FUNCTION_81();
      swift_beginAccess();
      *(v2 + v7);
      v30 = OUTLINED_FUNCTION_25();
      MEMORY[0x23837CC20](v30);
LABEL_21:

      MEMORY[0x23837CC20](41, 0xE100000000000000);
      v3 = v32;
      break;
    case 0xB:
      OUTLINED_FUNCTION_12_18();
      v3 = v5 | 8;
      break;
    case 0xC:
    case 0x13:
      OUTLINED_FUNCTION_12_18();
      v3 = v29 + 11;
      break;
    case 0xD:
    case 0x15:
      OUTLINED_FUNCTION_12_18();
      v3 = v11 + 3;
      break;
    case 0xE:
    case 0x11:
      OUTLINED_FUNCTION_0();
      v3 = 0xD00000000000001BLL;
      break;
    case 0xF:
    case 0x16:
      OUTLINED_FUNCTION_12_18();
      v3 = v28 | 0xC;
      break;
    case 0x10:
      v3 = 0xD000000000000011;
LABEL_11:
      OUTLINED_FUNCTION_0();
      break;
    case 0x12:
      OUTLINED_FUNCTION_12_18();
      v3 = v26 | 0xE;
      break;
    case 0x14:
      OUTLINED_FUNCTION_12_18();
      v3 = v10 | 6;
      break;
    default:
      return v3;
  }

  return v3;
}

uint64_t sub_231DD66B0()
{
  OUTLINED_FUNCTION_300_0();
  OUTLINED_FUNCTION_116_6();
  v4 = v1 == OUTLINED_FUNCTION_159_2() && v2 == v3;
  if (v4 || (OUTLINED_FUNCTION_15_2() & 1) != 0)
  {

    return 0;
  }

  else if (v1 == 0x65746144646E65 && v0 == 0xE700000000000000)
  {

    return 1;
  }

  else
  {
    OUTLINED_FUNCTION_15_2();
    OUTLINED_FUNCTION_10_1();
    if (v1)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_231DD674C(char a1)
{
  if (a1)
  {
    return 0x65746144646E65;
  }

  else
  {
    return 0x7461447472617473;
  }
}

uint64_t sub_231DD6790@<X0>(_BYTE *a1@<X8>)
{
  result = sub_231DD66B0();
  *a1 = result;
  return result;
}

uint64_t sub_231DD67B8()
{
  sub_231DE333C();
  v0 = OUTLINED_FUNCTION_10_4();

  return MEMORY[0x2821FE718](v0);
}

uint64_t sub_231DD67F0()
{
  sub_231DE333C();
  v0 = OUTLINED_FUNCTION_10_4();

  return MEMORY[0x2821FE720](v0);
}

uint64_t sub_231DD6828(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD755B8, &qword_231E20580);
  OUTLINED_FUNCTION_24(v4);
  v6 = v5;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_11_2();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_81_7();
  v10 = a1[3];
  v11 = a1[4];
  OUTLINED_FUNCTION_103_4(a1);
  sub_231DE333C();
  OUTLINED_FUNCTION_111_5();
  sub_231E12270();
  sub_231E0F950();
  OUTLINED_FUNCTION_3_32();
  sub_231DE3390(v12);
  OUTLINED_FUNCTION_111_5();
  sub_231E12090();
  if (!v1)
  {
    v13 = *(type metadata accessor for SummarizationAnalytics.Interval.Complete(0) + 20);
    OUTLINED_FUNCTION_111_5();
    sub_231E12090();
  }

  return (*(v6 + 8))(v2, v4);
}

void sub_231DD69B0()
{
  OUTLINED_FUNCTION_35_1();
  v2 = v1;
  v35 = sub_231E0F950();
  v3 = OUTLINED_FUNCTION_24(v35);
  v32 = v4;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_3();
  v9 = v7 - v8;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_25_5();
  v33 = v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD755C0, &qword_231E20588);
  OUTLINED_FUNCTION_24(v12);
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_11_2();
  MEMORY[0x28223BE20](v15);
  v16 = OUTLINED_FUNCTION_125_2();
  v17 = type metadata accessor for SummarizationAnalytics.Interval.Complete(v16);
  v18 = OUTLINED_FUNCTION_12(v17);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_4_1();
  v23 = v22 - v21;
  v24 = v2[4];
  __swift_project_boxed_opaque_existential_0(v2, v2[3]);
  sub_231DE333C();
  sub_231E12260();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_0(v2);
  }

  else
  {
    v31 = v17;
    OUTLINED_FUNCTION_3_32();
    sub_231DE3390(v25);
    v26 = v33;
    sub_231E11FD0();
    v34 = *(v32 + 32);
    v34(v23, v26, v35);
    sub_231E11FD0();
    v27 = OUTLINED_FUNCTION_73_5();
    v28(v27);
    v34(v23 + *(v31 + 20), v9, v35);
    sub_231DE342C();
    __swift_destroy_boxed_opaque_existential_0(v2);
    v29 = OUTLINED_FUNCTION_115_7();
    sub_231DE724C(v29, v30);
  }

  OUTLINED_FUNCTION_33_0();
}

uint64_t sub_231DD6CE0()
{
  OUTLINED_FUNCTION_300_0();
  v3 = v2;
  v4 = sub_231E0F950();
  OUTLINED_FUNCTION_12(v4);
  v8 = *(v5 + 32);
  v8(v3, v1, v4);
  v6 = v3 + *(type metadata accessor for SummarizationAnalytics.Interval.Complete(0) + 20);

  return (v8)(v6, v0, v4);
}

uint64_t sub_231DD6DB8()
{
  v0 = type metadata accessor for SummarizationAnalytics.Interval.Complete(0);
  v1 = OUTLINED_FUNCTION_47(v0);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_138_2();
  v4 = type metadata accessor for SummarizationAnalytics.Interval(0);
  v5 = OUTLINED_FUNCTION_12(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_4_27();
  sub_231DE342C();
  OUTLINED_FUNCTION_33();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_231DE35F8();
    v8 = sub_231E0F950();
    OUTLINED_FUNCTION_12(v8);
    v10 = *(v9 + 16);
    v11 = OUTLINED_FUNCTION_59_0();
    v12(v11);
    v13 = OUTLINED_FUNCTION_174_2();
    return sub_231DE724C(v13, v14);
  }

  else
  {
    v16 = sub_231E0F950();
    OUTLINED_FUNCTION_12(v16);
    v18 = *(v17 + 32);
    v19 = OUTLINED_FUNCTION_25();
    return v20(v19);
  }
}

uint64_t sub_231DD6F10()
{
  OUTLINED_FUNCTION_300_0();
  v3 = v1 == 0x656C706D6F636E69 && v2 == 0xEA00000000006574;
  if (v3 || (OUTLINED_FUNCTION_15_2() & 1) != 0)
  {

    return 0;
  }

  else if (v1 == 0x6574656C706D6F63 && v0 == 0xE800000000000000)
  {

    return 1;
  }

  else
  {
    OUTLINED_FUNCTION_15_2();
    OUTLINED_FUNCTION_10_1();
    if (v1)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_231DD6FBC(char a1)
{
  if (a1)
  {
    return 0x6574656C706D6F63;
  }

  else
  {
    return 0x656C706D6F636E69;
  }
}

uint64_t sub_231DD6FF8(uint64_t a1, uint64_t a2)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v4 = 0;
  }

  else
  {
    sub_231E12100();
    OUTLINED_FUNCTION_10_1();
    v4 = v2 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_231DD7084()
{
  OUTLINED_FUNCTION_116_6();
  v1 = OUTLINED_FUNCTION_159_2();
  if (v4 == v1 && v2 == v3)
  {

    v6 = 0;
  }

  else
  {
    sub_231E12100();
    OUTLINED_FUNCTION_10_1();
    v6 = v0 ^ 1;
  }

  return v6 & 1;
}

uint64_t sub_231DD70F4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_231DD6F10();
  *a1 = result;
  return result;
}

uint64_t sub_231DD711C()
{
  sub_231DE3484();
  v0 = OUTLINED_FUNCTION_10_4();

  return MEMORY[0x2821FE718](v0);
}

uint64_t sub_231DD7154()
{
  sub_231DE3484();
  v0 = OUTLINED_FUNCTION_10_4();

  return MEMORY[0x2821FE720](v0);
}

uint64_t sub_231DD7190@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_231DD6FF8(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_231DD71BC()
{
  sub_231DE34D8();
  v0 = OUTLINED_FUNCTION_10_4();

  return MEMORY[0x2821FE718](v0);
}

uint64_t sub_231DD71F4()
{
  sub_231DE34D8();
  v0 = OUTLINED_FUNCTION_10_4();

  return MEMORY[0x2821FE720](v0);
}

uint64_t sub_231DD724C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_231DD7084();
  *a1 = result & 1;
  return result;
}

uint64_t sub_231DD7278()
{
  sub_231DE352C();
  v0 = OUTLINED_FUNCTION_10_4();

  return MEMORY[0x2821FE718](v0);
}

uint64_t sub_231DD72B0()
{
  sub_231DE352C();
  v0 = OUTLINED_FUNCTION_10_4();

  return MEMORY[0x2821FE720](v0);
}

void sub_231DD72E8()
{
  OUTLINED_FUNCTION_35_1();
  v67 = v1;
  v64 = v0;
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD755C8, &qword_231E20590);
  v5 = OUTLINED_FUNCTION_24(v4);
  v62 = v6;
  v63 = v5;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_11_2();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_12_1();
  v61 = v10;
  v11 = OUTLINED_FUNCTION_3_0();
  v59 = type metadata accessor for SummarizationAnalytics.Interval.Complete(v11);
  v12 = OUTLINED_FUNCTION_12(v59);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_189_1(v16 - v15);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD755D0, &qword_231E20598);
  v18 = OUTLINED_FUNCTION_24(v17);
  v57 = v19;
  v58 = v18;
  v21 = *(v20 + 64);
  OUTLINED_FUNCTION_11_2();
  MEMORY[0x28223BE20](v22);
  v24 = &v56 - v23;
  v56 = sub_231E0F950();
  v25 = OUTLINED_FUNCTION_24(v56);
  v65 = v26;
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_4_1();
  v31 = v30 - v29;
  v32 = type metadata accessor for SummarizationAnalytics.Interval(0);
  v33 = OUTLINED_FUNCTION_12(v32);
  v35 = *(v34 + 64);
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_4_1();
  v38 = v37 - v36;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD755D8, &qword_231E205A0);
  OUTLINED_FUNCTION_24(v66);
  v40 = v39;
  v42 = *(v41 + 64);
  OUTLINED_FUNCTION_11_2();
  MEMORY[0x28223BE20](v43);
  v45 = &v56 - v44;
  v47 = *(v3 + 24);
  v46 = *(v3 + 32);
  OUTLINED_FUNCTION_214_1();
  sub_231DE3484();
  sub_231E12270();
  OUTLINED_FUNCTION_4_27();
  sub_231DE342C();
  OUTLINED_FUNCTION_108_6();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v48 = v60;
    sub_231DE35F8();
    OUTLINED_FUNCTION_31_0();
    sub_231DE34D8();
    OUTLINED_FUNCTION_206_0();
    OUTLINED_FUNCTION_68_7();
    sub_231DE3390(v49);
    sub_231E12090();
    v50 = *(v62 + 8);
    v51 = OUTLINED_FUNCTION_41_3();
    v52(v51);
    sub_231DE724C(v48, type metadata accessor for SummarizationAnalytics.Interval.Complete);
  }

  else
  {
    v53 = v56;
    (*(v65 + 32))(v31, v38, v56);
    sub_231DE352C();
    OUTLINED_FUNCTION_206_0();
    OUTLINED_FUNCTION_3_32();
    sub_231DE3390(v54);
    v55 = v58;
    sub_231E12090();
    (*(v57 + 8))(v24, v55);
    (*(v65 + 8))(v31, v53);
  }

  (*(v40 + 8))(v45, v46);
  OUTLINED_FUNCTION_33_0();
}

void sub_231DD774C()
{
  OUTLINED_FUNCTION_35_1();
  v3 = v2;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD755E8, &qword_231E205A8);
  OUTLINED_FUNCTION_24(v52);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_11_2();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_12_1();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD755F0, &qword_231E205B0);
  OUTLINED_FUNCTION_24(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_11_2();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_12_1();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD755F8, &qword_231E205B8);
  v12 = OUTLINED_FUNCTION_24(v11);
  v50 = v13;
  v51 = v12;
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_11_2();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_81_7();
  v17 = type metadata accessor for SummarizationAnalytics.Interval(0);
  v18 = OUTLINED_FUNCTION_12(v17);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_3();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_121_2();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_126_2();
  v23 = v3[3];
  v24 = v3[4];
  OUTLINED_FUNCTION_103_4(v3);
  sub_231DE3484();
  sub_231E12260();
  if (v0)
  {
    goto LABEL_8;
  }

  v49 = v17;
  v53 = v3;
  v25 = sub_231E11FE0();
  v29 = sub_231CCF16C(v25, 0);
  if (v27 == v28 >> 1)
  {
LABEL_7:
    v35 = sub_231E11DC0();
    swift_allocError();
    v37 = v36;
    v38 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD743E8, &qword_231E13D10) + 48);
    *v37 = v49;
    sub_231E11F40();
    OUTLINED_FUNCTION_32_0();
    (*(*(v35 - 8) + 104))(v37, *MEMORY[0x277D84160], v35);
    swift_willThrow();
    swift_unknownObjectRelease();
    v39 = OUTLINED_FUNCTION_75_5();
    v40(v39, v51);
    v3 = v53;
LABEL_8:
    v41 = v3;
LABEL_9:
    __swift_destroy_boxed_opaque_existential_0(v41);
    OUTLINED_FUNCTION_33_0();
    return;
  }

  if (v27 < (v28 >> 1))
  {
    v54 = *(v26 + v27);
    sub_231DE3580(v27 + 1, v28 >> 1, v29, v26, v27, v28);
    v31 = v30;
    v33 = v32;
    swift_unknownObjectRelease();
    if (v31 == v33 >> 1)
    {
      if (v54)
      {
        OUTLINED_FUNCTION_31_0();
        sub_231DE34D8();
        OUTLINED_FUNCTION_154_3();
        type metadata accessor for SummarizationAnalytics.Interval.Complete(0);
        OUTLINED_FUNCTION_68_7();
        sub_231DE3390(v34);
        OUTLINED_FUNCTION_204_0();
        swift_unknownObjectRelease();
        v43 = OUTLINED_FUNCTION_76_6();
        v44(v43);
        (*(v50 + 8))(v1, v51);
      }

      else
      {
        sub_231DE352C();
        OUTLINED_FUNCTION_154_3();
        sub_231E0F950();
        OUTLINED_FUNCTION_3_32();
        sub_231DE3390(v42);
        OUTLINED_FUNCTION_204_0();
        swift_unknownObjectRelease();
        v45 = OUTLINED_FUNCTION_76_6();
        v46(v45);
        v47 = OUTLINED_FUNCTION_75_5();
        v48(v47, v51);
      }

      swift_storeEnumTagMultiPayload();
      sub_231DE35F8();
      sub_231DE35F8();
      v41 = v3;
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  __break(1u);
}

unint64_t sub_231DD7D48(unint64_t result)
{
  if (result >= 0xE)
  {
    return 14;
  }

  return result;
}

unint64_t sub_231DD7D58(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_88_8(a1);
  result = sub_231DD7D48(v2);
  *v1 = result;
  return result;
}

uint64_t sub_231DD7D80()
{
  OUTLINED_FUNCTION_1_26();
  sub_231DE7120();
  OUTLINED_FUNCTION_0_32();
  return sub_231E11830();
}

uint64_t sub_231DD7DC8()
{
  OUTLINED_FUNCTION_1_26();
  sub_231DE7120();
  OUTLINED_FUNCTION_0_32();
  return sub_231E117F0();
}

uint64_t sub_231DD7E00(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_88_8(a1);
  result = sub_231DBCD4C(v2);
  *v1 = result;
  return result;
}

uint64_t sub_231DD7E28()
{
  OUTLINED_FUNCTION_1_26();
  sub_231DE70CC();
  OUTLINED_FUNCTION_0_32();
  return sub_231E11830();
}

uint64_t sub_231DD7E70()
{
  OUTLINED_FUNCTION_1_26();
  sub_231DE70CC();
  OUTLINED_FUNCTION_0_32();
  return sub_231E117F0();
}

unint64_t sub_231DD7EA8(unint64_t result)
{
  if (result >= 9)
  {
    return 9;
  }

  return result;
}

unint64_t sub_231DD7ED4(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_88_8(a1);
  result = sub_231DD7EA8(v2);
  *v1 = result;
  return result;
}

uint64_t sub_231DD7EFC()
{
  OUTLINED_FUNCTION_1_26();
  sub_231DE7078();
  OUTLINED_FUNCTION_0_32();
  return sub_231E11830();
}

uint64_t sub_231DD7F44()
{
  OUTLINED_FUNCTION_1_26();
  sub_231DE7078();
  OUTLINED_FUNCTION_0_32();
  return sub_231E117F0();
}

unint64_t sub_231DD7F7C(unint64_t result)
{
  if (result >= 3)
  {
    return 3;
  }

  return result;
}

unint64_t sub_231DD7F8C(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_88_8(a1);
  result = sub_231DD7F7C(v2);
  *v1 = result;
  return result;
}

uint64_t sub_231DD7FB4()
{
  OUTLINED_FUNCTION_1_26();
  sub_231DE7024();
  OUTLINED_FUNCTION_0_32();
  return sub_231E11830();
}

uint64_t sub_231DD7FFC()
{
  OUTLINED_FUNCTION_1_26();
  sub_231DE7024();
  OUTLINED_FUNCTION_0_32();
  return sub_231E117F0();
}

unint64_t sub_231DD8034(unint64_t result)
{
  if (result >= 5)
  {
    return 5;
  }

  return result;
}

unint64_t sub_231DD8044(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_88_8(a1);
  result = sub_231DD8034(v2);
  *v1 = result;
  return result;
}

uint64_t sub_231DD806C()
{
  OUTLINED_FUNCTION_1_26();
  sub_231DE6FD0();
  OUTLINED_FUNCTION_0_32();
  return sub_231E11830();
}

uint64_t sub_231DD80B4()
{
  OUTLINED_FUNCTION_1_26();
  sub_231DE6FD0();
  OUTLINED_FUNCTION_0_32();
  return sub_231E117F0();
}

uint64_t sub_231DD80EC()
{
  OUTLINED_FUNCTION_300_0();
  v3 = v1 == OUTLINED_FUNCTION_144_4() && v0 == v2;
  if (v3 || (OUTLINED_FUNCTION_15_2() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v5 = v1 == 0x736575737369 && v0 == 0xE600000000000000;
    if (v5 || (OUTLINED_FUNCTION_15_2() & 1) != 0)
    {

      return 1;
    }

    else if (v1 == 0x646567676F6CLL && v0 == 0xE600000000000000)
    {

      return 2;
    }

    else
    {
      OUTLINED_FUNCTION_15_2();
      OUTLINED_FUNCTION_10_1();
      if (v1)
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

uint64_t sub_231DD81B8(char a1)
{
  if (!a1)
  {
    return OUTLINED_FUNCTION_144_4();
  }

  if (a1 == 1)
  {
    return 0x736575737369;
  }

  return 0x646567676F6CLL;
}

uint64_t sub_231DD8210@<X0>(_BYTE *a1@<X8>)
{
  result = sub_231DD80EC();
  *a1 = result;
  return result;
}

uint64_t sub_231DD8238()
{
  sub_231DE6C44();
  v0 = OUTLINED_FUNCTION_10_4();

  return MEMORY[0x2821FE718](v0);
}

uint64_t sub_231DD8270()
{
  sub_231DE6C44();
  v0 = OUTLINED_FUNCTION_10_4();

  return MEMORY[0x2821FE720](v0);
}

uint64_t sub_231DD82A8()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  OUTLINED_FUNCTION_130_1();

  return swift_deallocClassInstance();
}

uint64_t sub_231DD82E4(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD75770, &unk_231E229C0);
  OUTLINED_FUNCTION_24(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_11_2();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_0_9();
  v11 = a1[3];
  v12 = a1[4];
  OUTLINED_FUNCTION_103_4(a1);
  sub_231DE6C44();
  OUTLINED_FUNCTION_184_1();
  OUTLINED_FUNCTION_111_5();
  sub_231E12270();
  OUTLINED_FUNCTION_81();
  swift_beginAccess();
  v19 = *(v3 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD75640, &qword_231E20638);
  sub_231DE6E6C();
  OUTLINED_FUNCTION_207_1();
  if (!v2)
  {
    OUTLINED_FUNCTION_81();
    swift_beginAccess();
    v18 = *(v3 + 24);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD75638, &qword_231E20630);
    sub_231DE6DA8(&unk_27DD75790);
    OUTLINED_FUNCTION_207_1();
    v13 = *(v3 + 32);
    sub_231E12070();
  }

  v14 = *(v7 + 8);
  v15 = OUTLINED_FUNCTION_88_4();
  return v16(v15);
}

uint64_t sub_231DD84CC()
{
  OUTLINED_FUNCTION_99_5();
  OUTLINED_FUNCTION_130_1();
  v1 = swift_allocObject();
  sub_231DD8514(v0, v2, v3, v4, v5, v6, v7, v8, v10, v11);
  return v1;
}

void sub_231DD8514(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_35_1();
  v13 = v10;
  v15 = v14;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD75740, &qword_231E229B8);
  OUTLINED_FUNCTION_24(v28);
  v17 = v16;
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_11_2();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_0_9();
  *(v13 + 16) = MEMORY[0x277D84F98];
  v21 = (v13 + 16);
  *(v13 + 24) = MEMORY[0x277D84F90];
  v22 = (v13 + 24);
  *(v13 + 32) = 0;
  v23 = v15[4];
  __swift_project_boxed_opaque_existential_0(v15, v15[3]);
  sub_231DE6C44();
  OUTLINED_FUNCTION_184_1();
  sub_231E12260();
  if (v11)
  {
  }

  else
  {
    v24 = v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD75640, &qword_231E20638);
    sub_231DE6C98();
    sub_231E11FD0();
    OUTLINED_FUNCTION_42_12();
    swift_beginAccess();
    v25 = *v21;
    *v21 = v29;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD75638, &qword_231E20630);
    sub_231DE6DA8(&unk_27DD75760);
    sub_231E11FD0();
    OUTLINED_FUNCTION_42_12();
    swift_beginAccess();
    v26 = *v22;
    *v22 = a10;

    v27 = sub_231E11FB0();
    (*(v24 + 8))(v12, v28);
    *(v13 + 32) = v27 & 1;
  }

  __swift_destroy_boxed_opaque_existential_0(v15);
  OUTLINED_FUNCTION_33_0();
}

uint64_t sub_231DD87C0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_231DD84CC();
  if (!v1)
  {
    *a1 = result;
  }

  return result;
}

void sub_231DD8810(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v7 = sub_231E0F6E0();
  v8 = [v7 domain];
  v21 = sub_231E11620();
  v10 = v9;

  swift_getErrorValue();
  swift_getDynamicType();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD75608, &qword_231E205C0);
  v11 = sub_231E11680();
  v13 = v12;
  v14 = sub_231DD8930(a1);
  v16 = v15;
  if (a3)
  {

    v17 = a2;
  }

  else
  {
    sub_231DD89F8();
    v17 = v18;
    a3 = v19;
  }

  *a4 = v21;
  a4[1] = v10;
  a4[2] = v11;
  a4[3] = v13;
  a4[4] = v14;
  a4[5] = v16;
  a4[6] = v17;
  a4[7] = a3;
}

uint64_t sub_231DD8930(void *a1)
{
  v1 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD73F90, &qword_231E16840);
  v2 = OUTLINED_FUNCTION_95_5();
  type metadata accessor for SummarizationClientError(v2);
  if (swift_dynamicCast() & 1) == 0 || (sub_231E11510(), v4 = v3, v7, (v4))
  {
    v5 = sub_231E0F6E0();
    [v5 code];
  }

  return sub_231E120D0();
}

void sub_231DD89F8()
{
  OUTLINED_FUNCTION_118();
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD75838, &qword_231E22A28);
  OUTLINED_FUNCTION_47(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_11_2();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_138_2();
  v9 = sub_231E11670();
  v10 = OUTLINED_FUNCTION_47(v9);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_4_1();
  v120[1] = v14 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD75840, &qword_231E22A30);
  v16 = OUTLINED_FUNCTION_47(v15);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_3();
  v21 = v19 - v20;
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_25_5();
  v124 = v23;
  OUTLINED_FUNCTION_3_0();
  v128 = sub_231E0FCC0();
  v24 = OUTLINED_FUNCTION_24(v128);
  v125 = v25;
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_139();
  v121 = v28;
  OUTLINED_FUNCTION_95();
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_25_5();
  v122 = v30;
  OUTLINED_FUNCTION_3_0();
  v31 = sub_231E0FCF0();
  v32 = OUTLINED_FUNCTION_24(v31);
  v127 = v33;
  v35 = *(v34 + 64);
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_139();
  v123 = v36;
  OUTLINED_FUNCTION_95();
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_25_5();
  v126 = v38;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74480, &qword_231E16838);
  OUTLINED_FUNCTION_47(v39);
  v41 = *(v40 + 64);
  OUTLINED_FUNCTION_11_2();
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_125_2();
  v43 = sub_231E0FC90();
  v44 = OUTLINED_FUNCTION_24(v43);
  v46 = v45;
  v48 = *(v47 + 64);
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_86_7();
  MEMORY[0x28223BE20](v49);
  v51 = v120 - v50;
  v132 = v4;
  v52 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD73F90, &qword_231E16840);
  if (!swift_dynamicCast())
  {
    OUTLINED_FUNCTION_105();
    __swift_storeEnumTagSinglePayload(v72, v73, v74, v43);
    sub_231CC154C(v2, &qword_27DD74480, &qword_231E16838);
    v132 = v4;
    v75 = v4;
    if (!swift_dynamicCast())
    {
      OUTLINED_FUNCTION_105();
      __swift_storeEnumTagSinglePayload(v95, v96, v97, v31);
      sub_231CC154C(v0, &qword_27DD75838, &qword_231E22A28);
      goto LABEL_18;
    }

    OUTLINED_FUNCTION_15_7();
    __swift_storeEnumTagSinglePayload(v76, v77, v78, v31);
    v79 = v127;
    (*(v127 + 32))(v123, v0, v31);
    v132 = 0;
    v133 = 0xE000000000000000;
    sub_231E11D70();

    v132 = 0x636E657265666E49;
    v133 = 0xEF3A726F72724565;
    v80 = sub_231E0FCE0();
    MEMORY[0x23837CC20](v80);

    sub_231E0FCD0();
    v81 = v128;
    OUTLINED_FUNCTION_8_17(v21, 1, v128);
    if (!v71)
    {
      v103 = v125;
      v104 = v121;
      (*(v125 + 32))(v121, v21, v81);
      v130 = 0;
      v131 = 0xE000000000000000;
      sub_231E11D70();

      OUTLINED_FUNCTION_51_3();
      v130 = 0xD000000000000016;
      v131 = v105;
      v106 = sub_231E0FCB0();
      MEMORY[0x23837CC20](v106);

      OUTLINED_FUNCTION_209_1();
      v129 = sub_231E0FCA0();
      v107 = sub_231E120D0();
      MEMORY[0x23837CC20](v107);

      MEMORY[0x23837CC20](v130, v131);

      (*(v103 + 8))(v104, v81);
      v108 = *(v79 + 8);
      v109 = OUTLINED_FUNCTION_108_6();
      v110(v109);
      goto LABEL_18;
    }

    v82 = *(v79 + 8);
    v83 = OUTLINED_FUNCTION_108_6();
    v84(v83);
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_15_7();
  __swift_storeEnumTagSinglePayload(v53, v54, v55, v43);
  (*(v46 + 32))(v51, v2, v43);
  v132 = 0;
  v133 = 0xE000000000000000;
  sub_231E11D70();

  OUTLINED_FUNCTION_51_3();
  v132 = 0xD000000000000012;
  v133 = v56;
  v130 = sub_231E0FC80();
  v57 = sub_231E120D0();
  MEMORY[0x23837CC20](v57);

  OUTLINED_FUNCTION_180_2();
  v58(v1, v51, v43);
  v59 = *(v46 + 88);
  v60 = OUTLINED_FUNCTION_81_4();
  v62 = v61(v60);
  if (v62 == *MEMORY[0x277D29D28])
  {
    v123 = v51;
    v63 = *(v46 + 96);
    v64 = OUTLINED_FUNCTION_81_4();
    v65(v64);
    v67 = v126;
    v66 = v127;
    (*(v127 + 32))(v126, v1, v31);
    v130 = 0;
    v131 = 0xE000000000000000;
    sub_231E11D70();

    OUTLINED_FUNCTION_51_3();
    v130 = 0xD000000000000010;
    v131 = v68;
    v69 = sub_231E0FCE0();
    MEMORY[0x23837CC20](v69);

    OUTLINED_FUNCTION_160_2();

    v21 = v124;
    sub_231E0FCD0();
    v70 = v128;
    OUTLINED_FUNCTION_8_17(v21, 1, v128);
    if (!v71)
    {
      v98 = v125;
      v99 = v122;
      (*(v125 + 32))(v122, v21, v70);
      v130 = 0;
      v131 = 0xE000000000000000;
      sub_231E11D70();

      OUTLINED_FUNCTION_51_3();
      v130 = 0xD000000000000016;
      v131 = v100;
      v101 = sub_231E0FCB0();
      MEMORY[0x23837CC20](v101);

      OUTLINED_FUNCTION_209_1();
      v129 = sub_231E0FCA0();
      v102 = sub_231E120D0();
      MEMORY[0x23837CC20](v102);

      OUTLINED_FUNCTION_160_2();

      (*(v98 + 8))(v99, v70);
      (*(v66 + 8))(v126, v31);
      (*(v46 + 8))(v123, v43);
      goto LABEL_18;
    }

    (*(v66 + 8))(v67, v31);
    (*(v46 + 8))(v123, v43);
LABEL_10:
    sub_231CC154C(v21, &qword_27DD75840, &qword_231E22A30);
    goto LABEL_18;
  }

  if (v62 == *MEMORY[0x277D29D50])
  {
    v85 = *(v46 + 96);
    v86 = OUTLINED_FUNCTION_81_4();
    v87(v86);
    v88 = *v1;
    v89 = sub_231E0F470();
    v90 = *(v89 + 48);
    v91 = *(v89 + 52);
    swift_allocObject();
    sub_231E0F460();
    v130 = v88;
    v92 = OUTLINED_FUNCTION_33();
    __swift_instantiateConcreteTypeFromMangledNameV2(v92, v93);
    OUTLINED_FUNCTION_115_5();
    sub_231DE73CC(v94);
    v113 = sub_231E0F450();
    v115 = v114;

    sub_231E11660();
    v116 = sub_231E11640();
    v118 = v117;
    sub_231CF4354(v113, v115);
    if (!v118)
    {
      OUTLINED_FUNCTION_67_5();
      v116 = 0xD000000000000021;
    }

    v130 = 0;
    v131 = 0xE000000000000000;
    sub_231E11D70();

    OUTLINED_FUNCTION_51_3();
    v130 = 0xD000000000000021;
    v131 = v119;
    MEMORY[0x23837CC20](v116, v118);

    OUTLINED_FUNCTION_160_2();

    (*(v46 + 8))(v51, v43);
  }

  else
  {
    v111 = *(v46 + 8);
    v111(v51, v43);
    v112 = OUTLINED_FUNCTION_81_4();
    (v111)(v112);
  }

LABEL_18:
  OUTLINED_FUNCTION_113();
}

void sub_231DD942C()
{
  OUTLINED_FUNCTION_118();
  v1 = sub_231E10E30();
  v2 = OUTLINED_FUNCTION_24(v1);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_4_1();
  v5 = sub_231E11670();
  v6 = OUTLINED_FUNCTION_47(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_4_1();
  v9 = sub_231E0F470();
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  swift_allocObject();
  sub_231E0F460();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD75610, &unk_231E205C8);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_231E1C2A0;
  v13 = *(v0 + 8);
  *(v12 + 32) = *v0;
  *(v12 + 40) = v13;
  v14 = *(v0 + 24);
  *(v12 + 48) = *(v0 + 16);
  *(v12 + 56) = v14;
  v15 = *(v0 + 40);
  *(v12 + 64) = *(v0 + 32);
  *(v12 + 72) = v15;
  *(v12 + 80) = *(v0 + 48);

  sub_231DA3AF0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD75618, &qword_231E205D8);
  sub_231DE3650();
  v16 = sub_231E0F450();
  v18 = v17;

  sub_231E11660();
  sub_231E11640();
  v20 = v19;
  sub_231CF4354(v16, v18);
  if (!v20)
  {
    OUTLINED_FUNCTION_67_5();
  }

  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_113();
}

uint64_t sub_231DD9710()
{
  OUTLINED_FUNCTION_300_0();
  v3 = v1 == 0x6E69616D6F64 && v2 == 0xE600000000000000;
  if (v3 || (OUTLINED_FUNCTION_15_2() & 1) != 0)
  {

    return 0;
  }

  else
  {
    OUTLINED_FUNCTION_116_6();
    v6 = v1 == 0x6D614E7373616C63 && v0 == v5;
    if (v6 || (OUTLINED_FUNCTION_15_2() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = v1 == 1701080931 && v0 == 0xE400000000000000;
      if (v7 || (OUTLINED_FUNCTION_15_2() & 1) != 0)
      {

        return 2;
      }

      else if (v1 == OUTLINED_FUNCTION_145_2() && v0 == v8)
      {

        return 3;
      }

      else
      {
        OUTLINED_FUNCTION_15_2();
        OUTLINED_FUNCTION_10_1();
        if (v1)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

uint64_t sub_231DD9818(char a1)
{
  result = 0x6E69616D6F64;
  switch(a1)
  {
    case 1:
      result = 0x6D614E7373616C63;
      break;
    case 2:
      result = 1701080931;
      break;
    case 3:
      result = OUTLINED_FUNCTION_145_2();
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_231DD989C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_231DD9710();
  *a1 = result;
  return result;
}

uint64_t sub_231DD98CC()
{
  sub_231DE3700();
  v0 = OUTLINED_FUNCTION_10_4();

  return MEMORY[0x2821FE718](v0);
}

uint64_t sub_231DD9904()
{
  sub_231DE3700();
  v0 = OUTLINED_FUNCTION_10_4();

  return MEMORY[0x2821FE720](v0);
}

uint64_t sub_231DD993C(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD75620, &qword_231E205E0);
  OUTLINED_FUNCTION_24(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_11_2();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_0_9();
  v11 = a1[3];
  v12 = a1[4];
  OUTLINED_FUNCTION_103_4(a1);
  sub_231DE3700();
  OUTLINED_FUNCTION_184_1();
  OUTLINED_FUNCTION_111_5();
  sub_231E12270();
  v13 = *v3;
  v14 = v3[1];
  OUTLINED_FUNCTION_85_5();
  sub_231E12060();
  if (!v2)
  {
    v15 = v3[2];
    v16 = v3[3];
    OUTLINED_FUNCTION_85_5();
    sub_231E12060();
    v17 = v3[4];
    v18 = v3[5];
    OUTLINED_FUNCTION_85_5();
    sub_231E12060();
    v19 = v3[6];
    v20 = v3[7];
    OUTLINED_FUNCTION_85_5();
    sub_231E12010();
  }

  v21 = *(v7 + 8);
  v22 = OUTLINED_FUNCTION_88_4();
  return v23(v22);
}

void sub_231DD9AA4()
{
  OUTLINED_FUNCTION_35_1();
  v2 = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD75628, &qword_231E205E8);
  OUTLINED_FUNCTION_24(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_11_2();
  MEMORY[0x28223BE20](v10);
  v12 = &v28 - v11;
  v13 = v2[3];
  v14 = v2[4];
  OUTLINED_FUNCTION_103_4(v2);
  sub_231DE3700();
  OUTLINED_FUNCTION_111_5();
  sub_231E12260();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_0(v2);
  }

  else
  {
    LOBYTE(v37[0]) = 0;
    OUTLINED_FUNCTION_124_2();
    v15 = sub_231E11FA0();
    v32 = v16;
    LOBYTE(v37[0]) = 1;
    OUTLINED_FUNCTION_124_2();
    v17 = sub_231E11FA0();
    v31 = v18;
    v29 = v17;
    LOBYTE(v37[0]) = 2;
    v28 = sub_231E11FA0();
    v30 = v19;
    OUTLINED_FUNCTION_124_2();
    v20 = sub_231E11F50();
    v22 = v21;
    (*(v7 + 8))(v12, v5);
    v23 = v32;
    *&v33 = v15;
    *(&v33 + 1) = v32;
    v25 = v29;
    v24 = v30;
    *&v34 = v29;
    *(&v34 + 1) = v31;
    *&v35 = v28;
    *(&v35 + 1) = v30;
    *&v36 = v20;
    *(&v36 + 1) = v22;
    sub_231DE3754(&v33, v37);
    __swift_destroy_boxed_opaque_existential_0(v2);
    v37[0] = v15;
    v37[1] = v23;
    v37[2] = v25;
    v37[3] = v31;
    v37[4] = v28;
    v37[5] = v24;
    v37[6] = v20;
    v37[7] = v22;
    sub_231DE378C(v37);
    v26 = v34;
    *v4 = v33;
    v4[1] = v26;
    v27 = v36;
    v4[2] = v35;
    v4[3] = v27;
  }

  OUTLINED_FUNCTION_33_0();
}

double sub_231DD9D34@<D0>(_OWORD *a1@<X8>)
{
  sub_231DD9AA4();
  if (!v1)
  {
    *a1 = v4;
    a1[1] = v5;
    result = *&v6;
    a1[2] = v6;
    a1[3] = v7;
  }

  return result;
}

void sub_231DD9D90()
{
  if (*(v0 + 40) - 1 >= 4)
  {
    if (!*(v0 + 40))
    {
      v8 = OBJC_IVAR____TtC22ProactiveSummarization22SummarizationAnalytics_bodyLengths;
      OUTLINED_FUNCTION_81();
      swift_beginAccess();
      v9 = *&v8[v0];
      v10 = *(v9 + 16);
      if (v10)
      {
        v11 = 0;
        v12 = (v9 + 32);
        while (1)
        {
          v13 = *v12++;
          v7 = __OFADD__(v11, v13);
          v11 += v13;
          if (v7)
          {
            goto LABEL_56;
          }

          if (!--v10)
          {
            goto LABEL_43;
          }
        }
      }

      v11 = 0;
LABEL_43:
      OUTLINED_FUNCTION_81();
      swift_beginAccess();
      OUTLINED_FUNCTION_177_1();
      if (v31)
      {
        OUTLINED_FUNCTION_176_2();
        while (1)
        {
          OUTLINED_FUNCTION_175_1();
          if (v7)
          {
            goto LABEL_58;
          }

          if (v33 == 1)
          {
            goto LABEL_50;
          }
        }
      }

      v32 = 0;
LABEL_50:
      if (__OFADD__(v11, v32))
      {
        goto LABEL_61;
      }

      return;
    }

LABEL_37:
    v25 = OBJC_IVAR____TtC22ProactiveSummarization22SummarizationAnalytics_bodyLengths;
    OUTLINED_FUNCTION_81();
    swift_beginAccess();
    v26 = *&v25[v0];
    v27 = *(v26 + 16);
    if (v27)
    {
      v28 = 0;
      v29 = (v26 + 32);
      while (1)
      {
        v30 = *v29++;
        v7 = __OFADD__(v28, v30);
        v28 += v30;
        if (v7)
        {
          break;
        }

        if (!--v27)
        {
          return;
        }
      }

      goto LABEL_57;
    }

    return;
  }

  v1 = OBJC_IVAR____TtC22ProactiveSummarization22SummarizationAnalytics_titleLengths;
  OUTLINED_FUNCTION_81();
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = (v2 + 32);
    while (1)
    {
      v6 = *v5++;
      v7 = __OFADD__(v4, v6);
      v4 += v6;
      if (v7)
      {
        break;
      }

      if (!--v3)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
    goto LABEL_53;
  }

  v4 = 0;
LABEL_14:
  OUTLINED_FUNCTION_81();
  swift_beginAccess();
  OUTLINED_FUNCTION_177_1();
  if (v14)
  {
    OUTLINED_FUNCTION_176_2();
    while (1)
    {
      OUTLINED_FUNCTION_175_1();
      if (v7)
      {
        break;
      }

      if (v16 == 1)
      {
        goto LABEL_20;
      }
    }

LABEL_53:
    __break(1u);
LABEL_54:
    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    __break(1u);
LABEL_59:
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
    return;
  }

  v15 = 0;
LABEL_20:
  v7 = __OFADD__(v4, v15);
  v17 = v4 + v15;
  if (v7)
  {
    goto LABEL_59;
  }

  OUTLINED_FUNCTION_81();
  swift_beginAccess();
  OUTLINED_FUNCTION_177_1();
  if (v18)
  {
    OUTLINED_FUNCTION_176_2();
    while (1)
    {
      OUTLINED_FUNCTION_175_1();
      if (v7)
      {
        goto LABEL_54;
      }

      if (v20 == 1)
      {
        goto LABEL_27;
      }
    }
  }

  v19 = 0;
LABEL_27:
  v7 = __OFADD__(v17, v19);
  v21 = v17 + v19;
  if (v7)
  {
    goto LABEL_60;
  }

  OUTLINED_FUNCTION_81();
  swift_beginAccess();
  OUTLINED_FUNCTION_177_1();
  if (v22)
  {
    OUTLINED_FUNCTION_176_2();
    while (1)
    {
      OUTLINED_FUNCTION_175_1();
      if (v7)
      {
        goto LABEL_55;
      }

      if (v24 == 1)
      {
        goto LABEL_34;
      }
    }
  }

  v23 = 0;
LABEL_34:
  if (__OFADD__(v21, v23))
  {
    __break(1u);
    goto LABEL_37;
  }
}

uint64_t sub_231DD9FE8(uint64_t a1)
{
  v3 = sub_231E10E30();
  v4 = OUTLINED_FUNCTION_0_7(v3, &v120);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_4_1();
  v11 = v10 - v9;
  v99 = type metadata accessor for SummarizationAnalytics.Interval.Complete(0);
  v12 = OUTLINED_FUNCTION_12(v99);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_4_1();
  v112 = v16 - v15;
  v17 = OUTLINED_FUNCTION_3_0();
  v113 = type metadata accessor for SummarizationAnalytics.Interval(v17);
  v18 = OUTLINED_FUNCTION_24(v113);
  v110 = v19;
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_3();
  v24 = v22 - v23;
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_25_5();
  v109 = v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD75800, &qword_231E229F8);
  v28 = OUTLINED_FUNCTION_47(v27);
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_121_2();
  MEMORY[0x28223BE20](v31);
  v33 = &v98 - v32;
  OUTLINED_FUNCTION_81();
  swift_beginAccess();
  v104 = a1;
  v34 = *(a1 + 16);
  v35 = *(v34 + 64);
  v114 = v34 + 64;
  v36 = *(v34 + 32);
  OUTLINED_FUNCTION_132_3();
  v39 = v38 & v37;
  v41 = (v40 + 63) >> 6;
  v106 = (v6 + 16);
  v105 = (v6 + 8);
  v111 = v42;

  v101 = 0.0;
  v44 = 0;
  *&v45 = 136446466;
  v102 = v45;
  v100 = 1;
  v115 = v1;
  v116 = v24;
  v117 = v33;
LABEL_2:
  v46 = v114;
  if (!v39)
  {
    goto LABEL_4;
  }

  do
  {
    v47 = v44;
LABEL_8:
    v48 = __clz(__rbit64(v39));
    v39 &= v39 - 1;
    v49 = v48 | (v47 << 6);
    v50 = *(v111 + 56);
    v51 = *(*(v111 + 48) + v49);
    OUTLINED_FUNCTION_65_8(v49);
    sub_231DE342C();
    v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD75810, &qword_231E22A08);
    v53 = *(v52 + 48);
    v54 = v115;
    *v115 = v51;
    v1 = v54;
    sub_231DE35F8();
    OUTLINED_FUNCTION_15_7();
    __swift_storeEnumTagSinglePayload(v55, v56, v57, v52);
    v33 = v117;
LABEL_9:
    sub_231DE72A4(v1, v33);
    v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD75810, &qword_231E22A08);
    OUTLINED_FUNCTION_8_17(v33, 1, v58);
    if (v59)
    {

      return *&v101;
    }

    v60 = v33;
    v61 = v11;
    v62 = *v60;
    v63 = *(v58 + 48);
    OUTLINED_FUNCTION_4_27();
    sub_231DE35F8();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      OUTLINED_FUNCTION_5_29();
      sub_231DE35F8();
      if (((1 << v62) & 0x33341) != 0)
      {
        OUTLINED_FUNCTION_6_23();
        result = sub_231DE724C(v112, v89);
      }

      else
      {
        if (v100)
        {
          v90 = 0.0;
        }

        else
        {
          v90 = v101;
        }

        v91 = v112;
        v92 = v112 + *(v99 + 20);
        sub_231E0F870();
        v94 = v93;
        sub_231E0F870();
        v96 = v95;
        OUTLINED_FUNCTION_6_23();
        result = sub_231DE724C(v91, v97);
        v100 = 0;
        v101 = v90 + v94 - v96;
      }

      v11 = v61;
      v33 = v117;
      goto LABEL_2;
    }

    v64 = sub_231CB4EEC();
    v65 = v61;
    (*v106)(v61, v64, v108);
    v66 = v104;

    v67 = sub_231E10E10();
    v68 = sub_231E11AE0();

    v107 = v68;
    if (os_log_type_enabled(v67, v68))
    {
      v69 = swift_slowAlloc();
      v103 = swift_slowAlloc();
      v119[0] = v103;
      *v69 = v102;
      v70 = sub_231DDA740(v66);
      v72 = sub_231CB5000(v70, v71, v119);

      *(v69 + 4) = v72;
      *(v69 + 12) = 2082;
      v118 = v62;
      v73 = sub_231E11680();
      v75 = sub_231CB5000(v73, v74, v119);

      *(v69 + 14) = v75;
      v1 = v115;
      swift_arrayDestroy();
      OUTLINED_FUNCTION_30();
      OUTLINED_FUNCTION_30();

      (*v105)(v65, v108);
      v11 = v65;
    }

    else
    {

      v76 = *v105;
      v77 = OUTLINED_FUNCTION_59_0();
      v78(v77);
      v11 = v61;
      v1 = v115;
    }

    OUTLINED_FUNCTION_45_5();
    swift_beginAccess();
    v79 = *(v66 + 24);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v66 + 24) = v79;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v79 = sub_231DE2458(0, *(v79 + 2) + 1, 1, v79);
      *(v66 + 24) = v79;
    }

    v82 = *(v79 + 2);
    v81 = *(v79 + 3);
    if (v82 >= v81 >> 1)
    {
      v79 = sub_231DE2458((v81 > 1), v82 + 1, 1, v79);
    }

    *(v79 + 2) = v82 + 1;
    v79[v82 + 32] = 3;
    *(v66 + 24) = v79;
    swift_endAccess();
    v83 = sub_231E0F950();
    OUTLINED_FUNCTION_12(v83);
    result = (*(v84 + 8))(v116);
    v33 = v117;
    v46 = v114;
  }

  while (v39);
LABEL_4:
  while (1)
  {
    v47 = v44 + 1;
    if (__OFADD__(v44, 1))
    {
      break;
    }

    if (v47 >= v41)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD75810, &qword_231E22A08);
      OUTLINED_FUNCTION_105();
      __swift_storeEnumTagSinglePayload(v85, v86, v87, v88);
      v39 = 0;
      goto LABEL_9;
    }

    v39 = *(v46 + 8 * v47);
    ++v44;
    if (v39)
    {
      v44 = v47;
      goto LABEL_8;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_231DDA740(uint64_t a1)
{
  sub_231E11D70();

  v2 = sub_231DDAFC4();
  MEMORY[0x23837CC20](v2);

  OUTLINED_FUNCTION_158_3();
  qos_class_self();
  v3 = sub_231E120D0();
  MEMORY[0x23837CC20](v3);

  MEMORY[0x23837CC20](0x203A74207C20, 0xE600000000000000);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74B80, &unk_231E1C350);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_231E138E0;
  v5 = sub_231DDB25C(a1);
  v6 = MEMORY[0x277D83A80];
  *(v4 + 56) = MEMORY[0x277D839F8];
  *(v4 + 64) = v6;
  *(v4 + 32) = v5;
  v7 = sub_231E11650();
  MEMORY[0x23837CC20](v7);

  MEMORY[0x23837CC20](23923, 0xE200000000000000);
  return 91;
}

void sub_231DDA8A0()
{
  OUTLINED_FUNCTION_118();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v17 = *(v0 + 48);
  v18 = *(v0 + 52);
  swift_allocObject();
  sub_231DDA928(v16, v14, v12, v10, v8, v6, v4, v2);
  OUTLINED_FUNCTION_113();
}

uint64_t sub_231DDA928(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  v9 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD75630, &unk_231E205F0);
  type metadata accessor for SummarizationAnalytics.GuardedData();
  OUTLINED_FUNCTION_130_1();
  v17 = swift_allocObject();
  v18 = MEMORY[0x277D84F90];
  *(v17 + 16) = MEMORY[0x277D84F98];
  *(v17 + 24) = v18;
  *(v17 + 32) = 0;
  v33 = v17;
  *(v8 + 16) = sub_231DC3CF0(&v33);
  *(v8 + OBJC_IVAR____TtC22ProactiveSummarization22SummarizationAnalytics_sectionId) = 12;
  v19 = v8 + OBJC_IVAR____TtC22ProactiveSummarization22SummarizationAnalytics_timeSinceLastNotificationReceived;
  *v19 = 0;
  *(v19 + 8) = 1;
  OUTLINED_FUNCTION_78_4(OBJC_IVAR____TtC22ProactiveSummarization22SummarizationAnalytics_depth);
  *(v8 + OBJC_IVAR____TtC22ProactiveSummarization22SummarizationAnalytics_titleLengths) = v18;
  *(v8 + OBJC_IVAR____TtC22ProactiveSummarization22SummarizationAnalytics_subtitleLengths) = v18;
  *(OBJC_IVAR____TtC22ProactiveSummarization22SummarizationAnalytics_bodyLengths + v8) = v18;
  *(v8 + OBJC_IVAR____TtC22ProactiveSummarization22SummarizationAnalytics_captionLengths) = v18;
  OUTLINED_FUNCTION_78_4(OBJC_IVAR____TtC22ProactiveSummarization22SummarizationAnalytics_summaryTopicLength);
  OUTLINED_FUNCTION_78_4(OBJC_IVAR____TtC22ProactiveSummarization22SummarizationAnalytics_summaryTopLineLength);
  OUTLINED_FUNCTION_78_4(OBJC_IVAR____TtC22ProactiveSummarization22SummarizationAnalytics_summarySynopsisLength);
  *(v8 + OBJC_IVAR____TtC22ProactiveSummarization22SummarizationAnalytics_isCommunicationNotification) = 2;
  v20 = v8 + OBJC_IVAR____TtC22ProactiveSummarization22SummarizationAnalytics_proportionCommunicationNotifications;
  *v20 = 0;
  *(v20 + 8) = v21;
  *(v8 + OBJC_IVAR____TtC22ProactiveSummarization22SummarizationAnalytics_isUrgent) = 2;
  v22 = (v8 + OBJC_IVAR____TtC22ProactiveSummarization22SummarizationAnalytics_summarizationError);
  *v22 = 0u;
  v22[1] = 0u;
  v22[2] = 0u;
  v22[3] = 0u;
  v23 = (v8 + OBJC_IVAR____TtC22ProactiveSummarization22SummarizationAnalytics_urgencyError);
  *v23 = 0u;
  v23[1] = 0u;
  v23[2] = 0u;
  v23[3] = 0u;
  *(v8 + OBJC_IVAR____TtC22ProactiveSummarization22SummarizationAnalytics_exitReason) = 22;
  *(v8 + OBJC_IVAR____TtC22ProactiveSummarization22SummarizationAnalytics_queueType) = 2;
  *(v8 + OBJC_IVAR____TtC22ProactiveSummarization22SummarizationAnalytics_invalidReason) = 31;
  v24 = v8 + OBJC_IVAR____TtC22ProactiveSummarization22SummarizationAnalytics_ineligibleReason;
  *v24 = 0;
  *(v24 + 8) = 0;
  *(v24 + 16) = -1;
  v25 = v8 + OBJC_IVAR____TtC22ProactiveSummarization22SummarizationAnalytics_ineligibleForUrgencyReason;
  *v25 = 0;
  *(v25 + 8) = 0;
  *(v25 + 16) = -1;
  v26 = v8 + OBJC_IVAR____TtC22ProactiveSummarization22SummarizationAnalytics_ineligibleForSummarizationReason;
  *v26 = 0;
  *(v26 + 8) = 0;
  *(v26 + 16) = -1;
  *(v8 + OBJC_IVAR____TtC22ProactiveSummarization22SummarizationAnalytics_cancellationReason) = 3;
  *(v8 + OBJC_IVAR____TtC22ProactiveSummarization22SummarizationAnalytics_captioningResult) = 5;
  *(v8 + OBJC_IVAR____TtC22ProactiveSummarization22SummarizationAnalytics_isFromVIP) = 2;
  *(v8 + OBJC_IVAR____TtC22ProactiveSummarization22SummarizationAnalytics_isKnownSender) = 2;
  v27 = (v8 + OBJC_IVAR____TtC22ProactiveSummarization22SummarizationAnalytics_categories);
  *v27 = 0;
  v27[1] = 0;
  *(v8 + 24) = a1;
  *(v8 + 32) = a2;
  *(v8 + 40) = a3;
  *(v8 + 48) = a4;
  *(v8 + 56) = a5;
  v28 = OBJC_IVAR____TtC22ProactiveSummarization22SummarizationAnalytics_receivedDate;
  v29 = sub_231E0F950();
  OUTLINED_FUNCTION_12(v29);
  (*(v30 + 32))(v9 + v28, a6);
  *(v9 + OBJC_IVAR____TtC22ProactiveSummarization22SummarizationAnalytics_positionInReceivedItems) = a7;
  *(v9 + OBJC_IVAR____TtC22ProactiveSummarization22SummarizationAnalytics_isRetry) = a8;
  return v9;
}

uint64_t sub_231DDABDC()
{
  v1 = *(v0 + 16);

  OUTLINED_FUNCTION_205_0(MEMORY[0x277D84F78], v3);
}

uint64_t sub_231DDAC3C()
{
  v1 = *(v0 + 16);

  OUTLINED_FUNCTION_205_0(MEMORY[0x277D84F78], v3);
}

uint64_t sub_231DDACA0()
{
  OUTLINED_FUNCTION_474();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD757D8, &qword_231E229D0);
  OUTLINED_FUNCTION_47(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_11_2();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_0_9();
  v7 = *v1;
  OUTLINED_FUNCTION_4_27();
  OUTLINED_FUNCTION_174_2();
  sub_231DE342C();
  type metadata accessor for SummarizationAnalytics.Interval(0);
  OUTLINED_FUNCTION_15_7();
  __swift_storeEnumTagSinglePayload(v8, v9, v10, v11);
  OUTLINED_FUNCTION_45_5();
  swift_beginAccess();
  sub_231DDAD60(v2, v0);
  return swift_endAccess();
}

uint64_t sub_231DDAD60(uint64_t a1, char a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD757D8, &qword_231E229D0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v25 - v8;
  v10 = type metadata accessor for SummarizationAnalytics.Interval(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (__swift_getEnumTagSinglePayload(a1, 1, v10) == 1)
  {
    sub_231CC154C(a1, &qword_27DD757D8, &qword_231E229D0);
    v15 = *v3;
    sub_231DE2F44(a2);
    if (v16)
    {
      v17 = *v3;
      swift_isUniquelyReferenced_nonNull_native();
      v26 = *v3;
      v18 = *(v26 + 24);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD75828, &qword_231E22A20);
      sub_231E11EA0();
      v19 = v26;
      v20 = *(v26 + 56);
      v21 = *(v11 + 72);
      sub_231DE35F8();
      sub_231DE7314();
      sub_231E11EB0();
      v22 = 0;
      *v3 = v19;
    }

    else
    {
      v22 = 1;
    }

    __swift_storeEnumTagSinglePayload(v9, v22, 1, v10);
    return sub_231CC154C(v9, &qword_27DD757D8, &qword_231E229D0);
  }

  else
  {
    sub_231DE35F8();
    v23 = *v3;
    swift_isUniquelyReferenced_nonNull_native();
    v26 = *v3;
    result = sub_231DE2FB0(v14, a2);
    *v3 = v26;
  }

  return result;
}

uint64_t sub_231DDAFC4()
{
  if ([objc_opt_self() isInternalBuild] || ((1 << *(v0 + 40)) & 0x19) != 0)
  {
    MEMORY[0x23837CC20](*(v0 + 24), *(v0 + 32));
  }

  else
  {
    v1 = *(v0 + 24);
    v2 = *(v0 + 32);
    v3 = sub_231D26E04();
    MEMORY[0x23837CC20](v3);
  }

  sub_231E11D70();
  MEMORY[0x23837CC20](0x203A646E696BLL, 0xE600000000000000);
  v4 = sub_231DD2398(*(v0 + 40));
  MEMORY[0x23837CC20](v4);

  OUTLINED_FUNCTION_158_3();
  if (*(v0 + 56))
  {
    v5 = *(v0 + 48);
    v6 = *(v0 + 56);
  }

  else
  {
    v6 = 0xE300000000000000;
    v5 = 7104878;
  }

  MEMORY[0x23837CC20](v5, v6);

  MEMORY[0x23837CC20](2128928, 0xE300000000000000);
  v7 = OUTLINED_FUNCTION_81_4();
  MEMORY[0x23837CC20](v7);

  MEMORY[0x23837CC20](0x3A64766372207C20, 0xE900000000000020);
  sub_231E0F870();
  sub_231E11A40();
  OUTLINED_FUNCTION_158_3();
  v10 = *(v0 + OBJC_IVAR____TtC22ProactiveSummarization22SummarizationAnalytics_positionInReceivedItems);
  v8 = sub_231E120D0();
  MEMORY[0x23837CC20](v8);

  return 0;
}

uint64_t sub_231DDB1E8()
{
  v1 = *(v0 + 16);

  sub_231DC3E20(sub_231DE3904, v0, MEMORY[0x277D837D0]);

  return v3;
}

double sub_231DDB25C(uint64_t a1)
{
  v6 = type metadata accessor for SummarizationAnalytics.Interval(0);
  v7 = OUTLINED_FUNCTION_12(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_138_2();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD757D8, &qword_231E229D0);
  OUTLINED_FUNCTION_47(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_11_2();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_81_7();
  v14 = sub_231E0F950();
  v15 = OUTLINED_FUNCTION_24(v14);
  v17 = v16;
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_86_7();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_121_2();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_126_2();
  OUTLINED_FUNCTION_81();
  swift_beginAccess();
  sub_231DDBF9C(0xDu, *(a1 + 16), v2);
  if (__swift_getEnumTagSinglePayload(v2, 1, v6))
  {
    sub_231CC154C(v2, &qword_27DD757D8, &qword_231E229D0);
    return 0.0;
  }

  else
  {
    sub_231DE342C();
    sub_231CC154C(v2, &qword_27DD757D8, &qword_231E229D0);
    sub_231DD6DB8();
    v23 = OUTLINED_FUNCTION_174_2();
    sub_231DE724C(v23, v24);
    (*(v17 + 32))(v3, v4, v14);
    sub_231E0F940();
    sub_231E0F8A0();
    v22 = v25;
    v26 = *(v17 + 8);
    v26(v1, v14);
    v26(v3, v14);
  }

  return v22;
}

uint64_t sub_231DDB4CC(void *a1, void *a2)
{
  v3 = a1;
  v4 = sub_231E0F6E0();
  v5 = [v4 domain];
  v6 = sub_231E11620();
  v8 = v7;

  swift_getErrorValue();
  *&v26[0] = swift_getDynamicType();
  *(&v26[0] + 1) = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD75608, &qword_231E205C0);
  v9 = sub_231E11680();
  v11 = v10;
  v12 = sub_231DD8930(a1);
  v14 = v13;
  sub_231DD89F8();
  v16 = v15;
  v18 = v17;

  v19 = v24 + *a2;
  OUTLINED_FUNCTION_42_12();
  swift_beginAccess();
  v20 = *(v19 + 16);
  v26[0] = *v19;
  v26[1] = v20;
  v21 = *(v19 + 48);
  v26[2] = *(v19 + 32);
  v26[3] = v21;
  *v19 = v6;
  *(v19 + 8) = v8;
  *(v19 + 16) = v9;
  *(v19 + 24) = v11;
  *(v19 + 32) = v12;
  *(v19 + 40) = v14;
  *(v19 + 48) = v16;
  *(v19 + 56) = v18;
  return sub_231CC154C(v26, &unk_27DD73FC0, &qword_231E13478);
}

uint64_t sub_231DDB61C()
{
  OUTLINED_FUNCTION_18();
  *(v1 + 40) = v2;
  *(v1 + 48) = v0;
  *(v1 + 24) = v3;
  *(v1 + 32) = v4;
  *(v1 + 160) = v5;
  *(v1 + 16) = v6;
  v7 = sub_231E10DB0();
  *(v1 + 56) = v7;
  v8 = *(v7 - 8);
  *(v1 + 64) = v8;
  v9 = *(v8 + 64) + 15;
  *(v1 + 72) = swift_task_alloc();
  v10 = sub_231E0F950();
  *(v1 + 80) = v10;
  v11 = *(v10 - 8);
  *(v1 + 88) = v11;
  v12 = *(v11 + 64) + 15;
  *(v1 + 96) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_231DDB740, 0, 0);
}

uint64_t sub_231DDB740()
{
  OUTLINED_FUNCTION_47_0();
  v2 = *(v0 + 88);
  v1 = *(v0 + 96);
  v3 = *(v0 + 80);
  v4 = *(v0 + 48);
  v5 = *(v0 + 160);
  sub_231E0F920();
  sub_231DDC5A4(v5, v1, sub_231DE39CC);
  *(v0 + 104) = *(v2 + 8);
  *(v0 + 112) = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6 = OUTLINED_FUNCTION_25();
  v7(v6);
  v8 = sub_231DD2A7C(*(v4 + 40), v5);
  if ((v10 & 0x100) != 0)
  {
    v28 = (*(v0 + 24) + **(v0 + 24));
    v17 = *(*(v0 + 24) + 4);
    v18 = swift_task_alloc();
    *(v0 + 144) = v18;
    *v18 = v0;
    v18[1] = sub_231DDBBE8;
    v19 = *(v0 + 32);
    v20 = *(v0 + 16);

    return v28(v20);
  }

  else
  {
    v11 = *(v0 + 160);
    v12 = v8;
    v13 = v9;
    v14 = v10;
    OUTLINED_FUNCTION_131_3();
    if (v15)
    {
      v16 = sub_231DC4F9C();
    }

    else
    {
      v16 = sub_231DC4ED4();
    }

    v22 = *(v0 + 40);
    v29 = *(v0 + 24);
    (*(*(v0 + 64) + 16))(*(v0 + 72), v16, *(v0 + 56));
    v23 = swift_task_alloc();
    *(v0 + 120) = v23;
    *(v23 + 16) = v22;
    *(v23 + 24) = v29;
    v24 = swift_task_alloc();
    *(v0 + 128) = v24;
    *v24 = v0;
    v24[1] = sub_231DDB9B4;
    v25 = *(v0 + 72);
    v26 = *(v0 + 40);
    v27 = *(v0 + 16);

    return sub_231DC55B4(v27, v12, v13, v14, &unk_231E20610, v23);
  }
}

uint64_t sub_231DDB9B4()
{
  OUTLINED_FUNCTION_21();
  v3 = v2[16];
  v4 = v2[15];
  v5 = v2[9];
  v6 = v2[8];
  v7 = v2[7];
  v8 = *v1;
  OUTLINED_FUNCTION_4();
  *v9 = v8;
  *(v10 + 136) = v0;

  v11 = *(v6 + 8);
  v12 = OUTLINED_FUNCTION_33();
  v13(v12);

  if (v0)
  {
    v14 = sub_231DDBCEC;
  }

  else
  {
    v14 = sub_231DDBB38;
  }

  return MEMORY[0x2822009F8](v14, 0, 0);
}

uint64_t sub_231DDBB38()
{
  OUTLINED_FUNCTION_47_0();
  v2 = *(v0 + 104);
  v1 = *(v0 + 112);
  v3 = *(v0 + 96);
  v5 = *(v0 + 72);
  v4 = *(v0 + 80);
  v6 = *(v0 + 48);
  v7 = *(v0 + 160);
  sub_231E0F920();
  OUTLINED_FUNCTION_28_12();
  sub_231DDC5A4(v7, v3, v8);
  v9 = OUTLINED_FUNCTION_25();
  v2(v9);

  OUTLINED_FUNCTION_19();

  return v10();
}

uint64_t sub_231DDBBE8()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21();
  v3 = *(v2 + 144);
  v4 = *v1;
  OUTLINED_FUNCTION_4();
  *v5 = v4;
  *(v6 + 152) = v0;

  if (v0)
  {
    v7 = sub_231DDBD88;
  }

  else
  {
    v7 = sub_231DE7604;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_231DDBCEC()
{
  OUTLINED_FUNCTION_47_0();
  v4 = *(v1 + 136);
  OUTLINED_FUNCTION_128_4();
  OUTLINED_FUNCTION_28_12();
  sub_231DDC5A4(v2, v0, v5);
  v6 = OUTLINED_FUNCTION_33();
  v3(v6);

  OUTLINED_FUNCTION_19();

  return v7();
}

uint64_t sub_231DDBD88()
{
  OUTLINED_FUNCTION_47_0();
  v4 = *(v1 + 152);
  OUTLINED_FUNCTION_128_4();
  OUTLINED_FUNCTION_28_12();
  sub_231DDC5A4(v2, v0, v5);
  v6 = OUTLINED_FUNCTION_33();
  v3(v6);

  OUTLINED_FUNCTION_19();

  return v7();
}

uint64_t sub_231DDBE3C()
{
  OUTLINED_FUNCTION_29();
  v1 = v0;
  v8 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_17(v4);
  *v5 = v6;
  v5[1] = sub_231CBFF60;

  return v8(v1);
}

double sub_231DDBF28()
{
  v1 = *(v0 + 16);

  sub_231DC3E20(sub_231DE39FC, v0, MEMORY[0x277D839F8]);

  return v3;
}

uint64_t sub_231DDBF9C@<X0>(unsigned __int8 a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*(a2 + 16) && (sub_231DE2F44(a1), (v5 & 1) != 0))
  {
    v6 = *(a2 + 56);
    v7 = type metadata accessor for SummarizationAnalytics.Interval(0);
    v8 = *(*(v7 - 8) + 72);
    sub_231DE342C();
    v9 = a3;
    v10 = 0;
    v11 = v7;
  }

  else
  {
    v11 = type metadata accessor for SummarizationAnalytics.Interval(0);
    v9 = a3;
    v10 = 1;
  }

  return __swift_storeEnumTagSinglePayload(v9, v10, 1, v11);
}

void sub_231DDC060()
{
  OUTLINED_FUNCTION_118();
  v1 = v0;
  v66 = v2;
  v4 = v3;
  v6 = v5;
  v7 = sub_231E10E30();
  v8 = OUTLINED_FUNCTION_24(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_139();
  v14 = v13;
  OUTLINED_FUNCTION_95();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_25_5();
  v17 = v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD757D8, &qword_231E229D0);
  v19 = OUTLINED_FUNCTION_47(v18);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_3();
  v24 = v22 - v23;
  MEMORY[0x28223BE20](v25);
  v27 = &v60 - v26;
  v28 = *v6;
  OUTLINED_FUNCTION_81();
  swift_beginAccess();
  sub_231DDBF9C(v4, *(v28 + 16), v27);
  v29 = type metadata accessor for SummarizationAnalytics.Interval(0);
  OUTLINED_FUNCTION_8_17(v27, 1, v29);
  if (v30)
  {
    v31 = sub_231E0F950();
    OUTLINED_FUNCTION_12(v31);
    (*(v32 + 16))(v24, v1);
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_15_7();
    __swift_storeEnumTagSinglePayload(v33, v34, v35, v29);
    OUTLINED_FUNCTION_45_5();
    swift_beginAccess();
    sub_231DDAD60(v24, v4);
    swift_endAccess();
  }

  else
  {
    v65 = v27;
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v37 = sub_231CB4EEC();
    v38 = *(v10 + 16);
    if (EnumCaseMultiPayload == 1)
    {
      v38(v14, v37, v7);

      v39 = sub_231E10E10();
      sub_231E11AE0();
      OUTLINED_FUNCTION_215_0();

      if (os_log_type_enabled(v39, v14))
      {
        OUTLINED_FUNCTION_67();
        v62 = OUTLINED_FUNCTION_201_0();
        v67 = v62;
        v40 = OUTLINED_FUNCTION_200_1(4.8754e-34);
        OUTLINED_FUNCTION_500(v40, v41);
        v63 = v7;

        OUTLINED_FUNCTION_173_2();
        v42 = sub_231E11680();
        OUTLINED_FUNCTION_500(v42, v43);

        v44 = OUTLINED_FUNCTION_199_1();
        OUTLINED_FUNCTION_500(v44, v45);
        OUTLINED_FUNCTION_335();
        *(v29 + 24) = v10;
        _os_log_impl(&dword_231CAE000, v39, v61, "%{public}s Analytics: Programming error: Step was already completed. Cannot start again. stepKind: %{public}s requestIdentifier: %s", v29, 0x20u);
        OUTLINED_FUNCTION_208_1();
        OUTLINED_FUNCTION_30();
        OUTLINED_FUNCTION_30();

        (*(v64 + 8))(v14, v63);
      }

      else
      {

        (*(v10 + 8))(v14, v7);
      }

      v53 = v65;
      OUTLINED_FUNCTION_45_5();
      swift_beginAccess();
      sub_231DE23CC();
      OUTLINED_FUNCTION_197_0();
      OUTLINED_FUNCTION_172_3();
      OUTLINED_FUNCTION_107_8(v54);
      OUTLINED_FUNCTION_69_6();
      sub_231DE724C(v53, v55);
    }

    else
    {
      v38(v17, v37, v7);

      v46 = sub_231E10E10();
      sub_231E11AE0();
      OUTLINED_FUNCTION_215_0();

      if (os_log_type_enabled(v46, v17))
      {
        OUTLINED_FUNCTION_67();
        v62 = OUTLINED_FUNCTION_201_0();
        v67 = v62;
        v47 = OUTLINED_FUNCTION_200_1(4.8754e-34);
        OUTLINED_FUNCTION_500(v47, v48);
        v63 = v7;

        OUTLINED_FUNCTION_173_2();
        v49 = sub_231E11680();
        OUTLINED_FUNCTION_500(v49, v50);

        v51 = OUTLINED_FUNCTION_199_1();
        OUTLINED_FUNCTION_500(v51, v52);
        OUTLINED_FUNCTION_335();
        *(v29 + 24) = v10;
        _os_log_impl(&dword_231CAE000, v46, v61, "%{public}s Analytics: Programming error: Step was already started. Cannot start again. stepKind: %{public}s requestIdentifier: %s", v29, 0x20u);
        OUTLINED_FUNCTION_208_1();
        OUTLINED_FUNCTION_30();
        OUTLINED_FUNCTION_30();

        (*(v64 + 8))(v17, v63);
      }

      else
      {

        (*(v10 + 8))(v17, v7);
      }

      v56 = v65;
      OUTLINED_FUNCTION_45_5();
      swift_beginAccess();
      sub_231DE23CC();
      OUTLINED_FUNCTION_197_0();
      OUTLINED_FUNCTION_172_3();
      OUTLINED_FUNCTION_107_8(v57);
      v58 = sub_231E0F950();
      OUTLINED_FUNCTION_12(v58);
      (*(v59 + 8))(v56);
    }
  }

  OUTLINED_FUNCTION_113();
}

uint64_t sub_231DDC5A4(char a1, uint64_t a2, uint64_t a3)
{
  v5 = *(v3 + 16);
  v7[16] = a1;
  v8 = a2;

  sub_231DC3E20(a3, v7, MEMORY[0x277D84F78] + 8);
}

void sub_231DDC610()
{
  OUTLINED_FUNCTION_118();
  v70 = v3;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = type metadata accessor for SummarizationAnalytics.Interval.Complete(0);
  v11 = OUTLINED_FUNCTION_12(v10);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_125_2();
  v14 = sub_231E0F950();
  v15 = OUTLINED_FUNCTION_24(v14);
  v72 = v16;
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_4_1();
  v71 = v20 - v19;
  OUTLINED_FUNCTION_3_0();
  v21 = sub_231E10E30();
  v22 = OUTLINED_FUNCTION_24(v21);
  v24 = v23;
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_139();
  v73 = v27;
  OUTLINED_FUNCTION_95();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_25_5();
  OUTLINED_FUNCTION_189_1(v29);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD757D8, &qword_231E229D0);
  v31 = OUTLINED_FUNCTION_47(v30);
  v33 = *(v32 + 64);
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_86_7();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_126_2();
  v35 = *v9;
  OUTLINED_FUNCTION_81();
  swift_beginAccess();
  v74 = v7;
  sub_231DDBF9C(v7, *(v35 + 16), v1);
  v36 = type metadata accessor for SummarizationAnalytics.Interval(0);
  OUTLINED_FUNCTION_8_17(v1, 1, v36);
  if (v37)
  {
    sub_231CB4EEC();
    OUTLINED_FUNCTION_180_2();
    v38();

    v39 = sub_231E10E10();
    v40 = sub_231E11AE0();

    if (os_log_type_enabled(v39, v40))
    {
      v41 = OUTLINED_FUNCTION_67();
      swift_slowAlloc();
      *v41 = 136446722;
      v42 = sub_231DDA740(v35);
      OUTLINED_FUNCTION_500(v42, v43);
      OUTLINED_FUNCTION_335();
      *(v41 + 4) = v36;
      *(v41 + 12) = 2082;
      v44 = sub_231E11680();
      OUTLINED_FUNCTION_500(v44, v45);
      OUTLINED_FUNCTION_335();
      *(v41 + 14) = v36;
      *(v41 + 22) = 2080;
      v46 = sub_231DDAFC4();
      OUTLINED_FUNCTION_500(v46, v47);
      OUTLINED_FUNCTION_335();
      *(v41 + 24) = v36;
      _os_log_impl(&dword_231CAE000, v39, v40, "%{public}s Analytics: Programming error: Tried to end a step that hasn't start yet. %{public}s requestIdentifier: %s", v41, 0x20u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_30();
      OUTLINED_FUNCTION_30();
    }

    (*(v24 + 8))(v75, v21);
    OUTLINED_FUNCTION_45_5();
    swift_beginAccess();
    sub_231DE23CC();
    OUTLINED_FUNCTION_198_0();
    OUTLINED_FUNCTION_171_2();
    OUTLINED_FUNCTION_107_8(v48);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 1)
    {
      sub_231CB4EEC();
      v50 = v24;
      OUTLINED_FUNCTION_180_2();
      v51(v73);
      v52 = v5;

      v53 = sub_231E10E10();
      v54 = sub_231E11AE0();

      if (os_log_type_enabled(v53, v54))
      {
        v55 = OUTLINED_FUNCTION_67();
        swift_slowAlloc();
        *v55 = 136446722;
        v56 = sub_231DDA740(v35);
        OUTLINED_FUNCTION_500(v56, v57);
        OUTLINED_FUNCTION_335();
        *(v55 + 4) = v52;
        *(v55 + 12) = 2082;
        v58 = sub_231E11680();
        OUTLINED_FUNCTION_500(v58, v59);
        OUTLINED_FUNCTION_335();
        *(v55 + 14) = v52;
        *(v55 + 22) = 2080;
        v60 = sub_231DDAFC4();
        OUTLINED_FUNCTION_500(v60, v61);
        OUTLINED_FUNCTION_335();
        *(v55 + 24) = v52;
        _os_log_impl(&dword_231CAE000, v53, v54, "%{public}s Analytics: Programming error: Tried to end a step that has already been ended. %{public}s requestIdentifier: %s", v55, 0x20u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_30();
        OUTLINED_FUNCTION_30();

        (*(v50 + 8))(v73, v21);
      }

      else
      {

        (*(v24 + 8))(v73, v21);
      }

      OUTLINED_FUNCTION_45_5();
      swift_beginAccess();
      sub_231DE23CC();
      OUTLINED_FUNCTION_198_0();
      OUTLINED_FUNCTION_171_2();
      OUTLINED_FUNCTION_107_8(v68);
      OUTLINED_FUNCTION_69_6();
      sub_231DE724C(v1, v69);
    }

    else
    {
      (*(v72 + 32))(v71, v1, v14);
      v62 = *(v72 + 16);
      v62(v2, v71, v14);
      v62(v2 + *(v10 + 20), v70, v14);
      sub_231DE342C();
      OUTLINED_FUNCTION_33();
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_15_7();
      __swift_storeEnumTagSinglePayload(v63, v64, v65, v36);
      OUTLINED_FUNCTION_45_5();
      swift_beginAccess();
      sub_231DDAD60(v0, v74);
      swift_endAccess();
      v66 = OUTLINED_FUNCTION_108_6();
      sub_231DE724C(v66, v67);
      (*(v72 + 8))(v71, v14);
    }
  }

  OUTLINED_FUNCTION_113();
}

uint64_t sub_231DDCC34(char a1)
{
  v4 = *v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD75180, &qword_231E13690);
  OUTLINED_FUNCTION_47(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_11_2();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_0_9();
  sub_231E119F0();
  OUTLINED_FUNCTION_105();
  __swift_storeEnumTagSinglePayload(v9, v10, v11, v12);
  v13 = swift_allocObject();
  *(v13 + 16) = 0;
  *(v13 + 24) = 0;
  *(v13 + 32) = v1;
  *(v13 + 40) = a1;
  *(v13 + 48) = v4;

  sub_231CC3BE0(0, 0, v2, &unk_231E20628, v13);
}

uint64_t sub_231DDCD40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6)
{
  *(v6 + 24) = a4;
  *(v6 + 32) = a6;
  *(v6 + 40) = a5;
  *(v6 + 16) = a1;
  return MEMORY[0x2822009F8](sub_231DDCD68, 0, 0);
}

uint64_t sub_231DDCD68()
{
  OUTLINED_FUNCTION_47_0();
  v2 = *(v0 + 24);
  v1 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = *(v0 + 16);
  v5 = *(v2 + 16);
  v6 = swift_task_alloc();
  *(v6 + 16) = v2;
  *(v6 + 24) = v3;
  *(v6 + 32) = v1;

  sub_231DC3E20(sub_231DE721C, v6, MEMORY[0x277D84F78] + 8);

  OUTLINED_FUNCTION_19();

  return v7();
}

void sub_231DDCE44()
{
  OUTLINED_FUNCTION_118();
  v166 = v2;
  v4 = v3;
  v5 = OUTLINED_FUNCTION_95_5();
  v170 = type metadata accessor for SummarizationAnalytics.Interval.Complete(v5);
  v6 = OUTLINED_FUNCTION_12(v170);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_139();
  v168 = v9;
  OUTLINED_FUNCTION_95();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_25_5();
  v163 = v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD757D8, &qword_231E229D0);
  OUTLINED_FUNCTION_47(v12);
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_11_2();
  MEMORY[0x28223BE20](v15);
  v17 = &v160 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD757E0, &qword_231E229D8);
  v19 = OUTLINED_FUNCTION_47(v18);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_139();
  v165 = v22;
  OUTLINED_FUNCTION_95();
  MEMORY[0x28223BE20](v23);
  v167 = &v160 - v24;
  OUTLINED_FUNCTION_95();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_25_5();
  v173 = v26;
  OUTLINED_FUNCTION_3_0();
  v27 = sub_231E10E30();
  v28 = OUTLINED_FUNCTION_24(v27);
  v30 = v29;
  v32 = *(v31 + 64);
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_3();
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_86_7();
  v35 = MEMORY[0x28223BE20](v34);
  v37 = &v160 - v36;
  v38 = MEMORY[0x28223BE20](v35);
  MEMORY[0x28223BE20](v38);
  v42 = &v160 - v41;
  v43 = *v0;
  if (*(*v0 + 32) == 1)
  {
    v44 = sub_231CB4EEC();
    (*(v30 + 16))(v42, v44, v27);

    v45 = sub_231E10E10();
    v46 = sub_231E11AE0();

    if (os_log_type_enabled(v45, v46))
    {
      v47 = OUTLINED_FUNCTION_9_1();
      LODWORD(v173) = v46;
      v48 = v47;
      v178[0] = OUTLINED_FUNCTION_67();
      *v48 = 136446210;
      v49 = sub_231DDA740(v43);
      sub_231CB5000(v49, v50, v178);
      OUTLINED_FUNCTION_99_5();

      *(v48 + 4) = v30;
      _os_log_impl(&dword_231CAE000, v45, v173, "%{public}s Analytics: Programming error: Already logged to Core Analytics and/or PowerLog. Not logging again.", v48, 0xCu);
      OUTLINED_FUNCTION_210_0();
      OUTLINED_FUNCTION_30();
      OUTLINED_FUNCTION_30();
    }

    (*(v30 + 8))(v42, v27);
  }

  else
  {
    v161 = v40;
    v162 = v39;
    v171 = v27;
    v172 = v4;
    v169 = v30;
    *(v43 + 32) = 1;
    OUTLINED_FUNCTION_81();
    swift_beginAccess();
    sub_231DDBF9C(0, *(v43 + 16), v17);
    v51 = type metadata accessor for SummarizationAnalytics.Interval(0);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v17, 1, v51);
    v164 = v43;
    if (EnumTagSinglePayload == 1)
    {
      sub_231CB4EEC();
      v53 = v169;
      OUTLINED_FUNCTION_185_0();
      v54 = v171;
      v55(v1);

      v56 = v172;

      v57 = sub_231E10E10();
      v58 = sub_231E11AC0();

      if (os_log_type_enabled(v57, v58))
      {
        v59 = OUTLINED_FUNCTION_9_1();
        v177[0] = OUTLINED_FUNCTION_67();
        *v59 = 136446210;
        v60 = sub_231DDA740(v43);
        v62 = sub_231CB5000(v60, v61, v177);

        *(v59 + 4) = v62;
        v63 = v58;
        v64 = v171;
        OUTLINED_FUNCTION_210_0();
        v56 = v172;
        v53 = v169;
        OUTLINED_FUNCTION_30();
        OUTLINED_FUNCTION_30();

        OUTLINED_FUNCTION_186_1();
        v65(v1, v64);
      }

      else
      {

        OUTLINED_FUNCTION_186_1();
        v83(v1, v54);
      }

      v68 = v173;
      v66 = v167;
      OUTLINED_FUNCTION_105();
      v84 = v170;
      __swift_storeEnumTagSinglePayload(v85, v86, v87, v170);
    }

    else
    {
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v68 = v173;
      if (EnumCaseMultiPayload == 1)
      {
        OUTLINED_FUNCTION_5_29();
        v43 = v163;
        sub_231DE35F8();
        v69 = OBJC_IVAR____TtC22ProactiveSummarization22SummarizationAnalytics_exitReason;
        v56 = v172;
        OUTLINED_FUNCTION_81();
        swift_beginAccess();
        v53 = v169;
        if (*(v56 + v69) == 22)
        {
          sub_231CB4EEC();
          OUTLINED_FUNCTION_185_0();
          v70 = v161;
          v71 = v171;
          v72(v161);
          v73 = v164;

          v74 = sub_231E10E10();
          sub_231E11AE0();
          OUTLINED_FUNCTION_215_0();

          if (os_log_type_enabled(v74, v70))
          {
            v75 = OUTLINED_FUNCTION_9_1();
            v177[0] = OUTLINED_FUNCTION_67();
            *v75 = 136446210;
            v76 = sub_231DDA740(v73);
            v78 = v71;
            v79 = sub_231CB5000(v76, v77, v177);

            *(v75 + 4) = v79;
            OUTLINED_FUNCTION_210_0();
            v56 = v172;
            v53 = v169;
            OUTLINED_FUNCTION_30();
            v68 = v173;
            OUTLINED_FUNCTION_30();

            OUTLINED_FUNCTION_186_1();
            v81 = v70;
            v82 = v78;
          }

          else
          {

            OUTLINED_FUNCTION_186_1();
            v81 = OUTLINED_FUNCTION_108_6();
          }

          v80(v81, v82);
        }

        OUTLINED_FUNCTION_5_29();
        sub_231DE35F8();
        OUTLINED_FUNCTION_15_7();
        v84 = v170;
        __swift_storeEnumTagSinglePayload(v103, v104, v105, v170);
        v66 = v167;
      }

      else
      {
        sub_231CB4EEC();
        v88 = v169;
        OUTLINED_FUNCTION_185_0();
        v89 = v171;
        v90(v37);
        v91 = v164;

        v43 = v172;

        v92 = sub_231E10E10();
        sub_231E11AE0();
        OUTLINED_FUNCTION_215_0();

        if (os_log_type_enabled(v92, v37))
        {
          v93 = OUTLINED_FUNCTION_9_1();
          v94 = OUTLINED_FUNCTION_67();
          v177[0] = v94;
          *v93 = 136446210;
          v95 = sub_231DDA740(v91);
          sub_231CB5000(v95, v96, v177);
          OUTLINED_FUNCTION_335();
          *(v93 + 4) = v43;
          __swift_destroy_boxed_opaque_existential_0(v94);
          v97 = v171;
          OUTLINED_FUNCTION_30();
          v68 = v173;
          OUTLINED_FUNCTION_30();

          (*(v88 + 8))(v37, v97);
        }

        else
        {

          (*(v88 + 8))(v37, v89);
        }

        v66 = v167;
        OUTLINED_FUNCTION_105();
        v84 = v170;
        __swift_storeEnumTagSinglePayload(v98, v99, v100, v170);
        v101 = sub_231E0F950();
        OUTLINED_FUNCTION_12(v101);
        (*(v102 + 8))(v17);
        v53 = v169;
        v56 = v172;
      }
    }

    sub_231DA3AF0();
    OUTLINED_FUNCTION_8_17(v66, 1, v84);
    if (v106)
    {
      sub_231CC154C(v66, &qword_27DD757E0, &qword_231E229D8);
    }

    else
    {
      OUTLINED_FUNCTION_5_29();
      v107 = v168;
      sub_231DE35F8();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD757E8, &unk_231E229E0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_231E20400;
      OUTLINED_FUNCTION_51_3();
      v177[0] = 0xD000000000000011;
      v177[1] = v109;
      v110 = MEMORY[0x277D837D0];
      OUTLINED_FUNCTION_115_5();
      sub_231E11D20();
      v111 = sub_231DDAFC4();
      *(inited + 96) = v110;
      *(inited + 72) = v111;
      *(inited + 80) = v112;
      v113 = v56;
      strcpy(v177, "timestampStart");
      HIBYTE(v177[1]) = -18;
      OUTLINED_FUNCTION_115_5();
      sub_231E11D20();
      sub_231E0F870();
      v114 = MEMORY[0x277D839F8];
      *(inited + 168) = MEMORY[0x277D839F8];
      *(inited + 144) = v115;
      strcpy(v177, "timestampEnd");
      BYTE5(v177[1]) = 0;
      HIWORD(v177[1]) = -5120;
      OUTLINED_FUNCTION_115_5();
      sub_231E11D20();
      v116 = v107 + *(v84 + 20);
      sub_231E0F870();
      *(inited + 240) = v114;
      *(inited + 216) = v117;
      v177[0] = 1684957547;
      v177[1] = 0xE400000000000000;
      OUTLINED_FUNCTION_115_5();
      sub_231E11D20();
      v118 = *(v56 + 40);
      v119 = MEMORY[0x277D83B88];
      *(inited + 312) = MEMORY[0x277D83B88];
      *(inited + 288) = v118;
      strcpy(v177, "bundleID");
      BYTE1(v177[1]) = 0;
      WORD1(v177[1]) = 0;
      HIDWORD(v177[1]) = -402653184;
      OUTLINED_FUNCTION_115_5();
      sub_231E11D20();
      v120 = *(v113 + 56);
      if (v120)
      {
        v121 = *(v113 + 48);
        v122 = MEMORY[0x277D837D0];
      }

      else
      {
        v121 = 0;
        v122 = 0;
        *(inited + 376) = 0;
      }

      *(inited + 360) = v121;
      *(inited + 368) = v120;
      *(inited + 384) = v122;
      strcpy(v177, "stackDepth");
      BYTE3(v177[1]) = 0;
      HIDWORD(v177[1]) = -369098752;

      sub_231E11D20();
      v123 = (v113 + OBJC_IVAR____TtC22ProactiveSummarization22SummarizationAnalytics_depth);
      OUTLINED_FUNCTION_21_11();
      swift_beginAccess();
      if (*(v123 + 8) == 1)
      {
        v124 = 0;
        v125 = 0;
        *(inited + 440) = 0;
        *(inited + 448) = 0;
      }

      else
      {
        v124 = *v123;
        v125 = MEMORY[0x277D83B88];
      }

      *(inited + 432) = v124;
      *(inited + 456) = v125;
      v175 = 0x6574636172616863;
      v176 = 0xEF6874676E654C72;
      OUTLINED_FUNCTION_115_5();
      sub_231E11D20();
      v126 = v172;
      sub_231DD9D90();
      *(inited + 528) = v119;
      v127 = v126;
      *(inited + 504) = v128;
      OUTLINED_FUNCTION_188_1();
      v175 = v129;
      v176 = 0xEA00000000006E6FLL;
      OUTLINED_FUNCTION_115_5();
      sub_231E11D20();
      v130 = OBJC_IVAR____TtC22ProactiveSummarization22SummarizationAnalytics_exitReason;
      OUTLINED_FUNCTION_81();
      swift_beginAccess();
      v131 = *(v127 + v130);
      if (v131 == 22)
      {
        v131 = 0;
        v132 = 0;
        *(inited + 584) = 0u;
      }

      else
      {
        v132 = MEMORY[0x277D83B88];
      }

      *(inited + 576) = v131;
      *(inited + 600) = v132;
      OUTLINED_FUNCTION_51_3();
      v174[2] = 0xD000000000000013;
      v174[3] = v133;
      OUTLINED_FUNCTION_134_1();
      sub_231E11D20();
      v134 = OBJC_IVAR____TtC22ProactiveSummarization22SummarizationAnalytics_isUrgent;
      v135 = v172;
      OUTLINED_FUNCTION_81();
      swift_beginAccess();
      v136 = *(v135 + v134) != 2;
      *(inited + 672) = MEMORY[0x277D839B0];
      *(inited + 648) = v136;
      v43 = inited + 720;
      OUTLINED_FUNCTION_187_0();
      v174[0] = v137;
      v174[1] = 0xE800000000000000;
      OUTLINED_FUNCTION_134_1();
      sub_231E11D20();
      v138 = *(v135 + v134);
      v56 = v135;
      if (v138 == 2)
      {
        v139 = 0;
        *v43 = 0;
        *(inited + 728) = 0;
        *(inited + 736) = 0;
      }

      else
      {
        *v43 = v138 & 1;
        v139 = MEMORY[0x277D839B0];
      }

      v53 = v169;
      *(inited + 744) = v139;
      __swift_instantiateConcreteTypeFromMangledNameV2(&dword_27DD741E0, &qword_231E15D70);
      v140 = sub_231E11530();
      sub_231DD1C74(v140);

      OUTLINED_FUNCTION_6_23();
      sub_231DE724C(v168, v141);
      v68 = v173;
    }

    v142 = v164;
    if ((*(v56 + 40) & 0xFE) == 2 || (v143 = v165, sub_231DA3AF0(), v43 = __swift_getEnumTagSinglePayload(v143, 1, v170), OUTLINED_FUNCTION_134_1(), sub_231CC154C(v144, v145, v146), v43 != 1))
    {
      v147 = sub_231E115F0();
      sub_231DDDD0C(v142, v166);
      sub_231CC1784(0, &qword_2814CAEB0, 0x277D82BB8);
      sub_231E11520();
      OUTLINED_FUNCTION_335();
      OUTLINED_FUNCTION_33();
      AnalyticsSendEvent();
    }

    sub_231CB4EEC();
    OUTLINED_FUNCTION_185_0();
    v148 = v162;
    v149(v162);

    v150 = sub_231E10E10();
    v151 = sub_231E11AC0();

    if (os_log_type_enabled(v150, v151))
    {
      v152 = OUTLINED_FUNCTION_9_1();
      v153 = OUTLINED_FUNCTION_67();
      v174[0] = v153;
      *v152 = 136446210;
      v154 = sub_231DDA740(v142);
      sub_231CB5000(v154, v155, v174);
      OUTLINED_FUNCTION_99_5();

      *(v152 + 4) = v142;
      _os_log_impl(&dword_231CAE000, v150, v151, "%{public}s Analytics: Finished logging", v152, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v153);
      OUTLINED_FUNCTION_30();
      OUTLINED_FUNCTION_30();

      (*(v53 + 8))(v148, v171);
      v156 = v173;
    }

    else
    {

      v157 = *(v53 + 8);
      v158 = OUTLINED_FUNCTION_108_6();
      v159(v158);
      v156 = v68;
    }

    sub_231CC154C(v156, &qword_27DD757E0, &qword_231E229D8);
  }

  OUTLINED_FUNCTION_113();
}

uint64_t sub_231DDDD0C(uint64_t a1, unsigned __int8 a2)
{
  v3 = v2;
  v362 = sub_231E10E30();
  v5 = OUTLINED_FUNCTION_24(v362);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_4_1();
  v352 = v11 - v10;
  v12 = OUTLINED_FUNCTION_3_0();
  v349 = type metadata accessor for SummarizationAnalytics.Interval.Complete(v12);
  v13 = OUTLINED_FUNCTION_12(v349);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_4_1();
  v351 = v17 - v16;
  v18 = OUTLINED_FUNCTION_3_0();
  v359 = type metadata accessor for SummarizationAnalytics.Interval(v18);
  v19 = OUTLINED_FUNCTION_24(v359);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_139();
  v365 = v22;
  OUTLINED_FUNCTION_95();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_25_5();
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD75800, &qword_231E229F8);
  v25 = OUTLINED_FUNCTION_47(v24);
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_139();
  v363 = v28;
  OUTLINED_FUNCTION_95();
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_25_5();
  v360 = v30;
  if (*(v2 + 56))
  {
    v31 = *(v2 + 48);
    v32 = *sub_231DC8498();

    v33 = OUTLINED_FUNCTION_115_7();
    v35 = sub_231DC8A40(v33, v34);
  }

  else
  {
    v35 = 0;
  }

  v36 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD75808, &qword_231E22A00);
  v37 = swift_allocObject();
  *(v37 + 16) = xmmword_231E20410;
  *(v37 + 32) = 1684957547;
  *(v37 + 40) = 0xE400000000000000;
  *(v37 + 48) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  *(v37 + 56) = 0x6449656C646E7562;
  *(v37 + 64) = 0xE800000000000000;
  v38 = OUTLINED_FUNCTION_115_7();
  sub_231DDF71C(v38, v39);
  OUTLINED_FUNCTION_99_5();

  *(v37 + 72) = v35;
  *(v37 + 80) = 0x69726F6765746163;
  *(v37 + 88) = 0xEA00000000007365;
  v40 = (v2 + OBJC_IVAR____TtC22ProactiveSummarization22SummarizationAnalytics_categories);
  OUTLINED_FUNCTION_21_11();
  swift_beginAccess();
  v42 = *v40;
  v41 = v40[1];

  v43 = OUTLINED_FUNCTION_115_7();
  sub_231DDF71C(v43, v44);
  OUTLINED_FUNCTION_99_5();

  *(v37 + 96) = v42;
  *(v37 + 104) = 0x6874706564;
  *(v37 + 112) = 0xE500000000000000;
  OUTLINED_FUNCTION_21_11();
  swift_beginAccess();
  v45 = OUTLINED_FUNCTION_100_7();
  *(v37 + 120) = sub_231DDF7AC(v45, v46);
  *(v37 + 128) = 0x496E6F6974636573;
  *(v37 + 136) = 0xE900000000000064;
  v47 = OBJC_IVAR____TtC22ProactiveSummarization22SummarizationAnalytics_sectionId;
  OUTLINED_FUNCTION_81();
  swift_beginAccess();
  v48 = *(v3 + v47);
  if (v48 == 12)
  {
    v49 = 0;
  }

  else
  {
    v49 = *(v3 + v47);
  }

  *(v37 + 144) = sub_231DDF7AC(v49, v48 == 12);
  *(v37 + 152) = 0x656C7469546D7573;
  *(v37 + 160) = 0xEF736874676E654CLL;
  v50 = OBJC_IVAR____TtC22ProactiveSummarization22SummarizationAnalytics_titleLengths;
  OUTLINED_FUNCTION_81();
  swift_beginAccess();
  v361 = v3;
  if (*(*(v3 + v50) + 16))
  {
    OUTLINED_FUNCTION_181_1();
    do
    {
      OUTLINED_FUNCTION_179_2();
      if (v52)
      {
        goto LABEL_144;
      }
    }

    while (v51 != 1);
  }

  else
  {
    v50 = 0;
  }

  [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  OUTLINED_FUNCTION_51_3();
  *(v37 + 168) = v53;
  *(v37 + 176) = 0xD000000000000012;
  *(v37 + 184) = v54;
  v55 = OBJC_IVAR____TtC22ProactiveSummarization22SummarizationAnalytics_subtitleLengths;
  OUTLINED_FUNCTION_182_1();
  OUTLINED_FUNCTION_81();
  swift_beginAccess();
  if (*(*(v55 - 0x2FFFFFFFFFFFFFEELL) + 16))
  {
    OUTLINED_FUNCTION_181_1();
    do
    {
      OUTLINED_FUNCTION_179_2();
      if (v52)
      {
        goto LABEL_145;
      }
    }

    while (v56 != 1);
  }

  else
  {
    v55 = 0;
  }

  *(v37 + 192) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  strcpy((v37 + 200), "sumBodyLengths");
  *(v37 + 215) = -18;
  v57 = OBJC_IVAR____TtC22ProactiveSummarization22SummarizationAnalytics_bodyLengths;
  OUTLINED_FUNCTION_182_1();
  OUTLINED_FUNCTION_81();
  swift_beginAccess();
  if (*(*(v57 - 0x2FFFFFFFFFFFFFEELL) + 16))
  {
    OUTLINED_FUNCTION_181_1();
    do
    {
      OUTLINED_FUNCTION_179_2();
      if (v52)
      {
        goto LABEL_146;
      }
    }

    while (v58 != 1);
  }

  else
  {
    v57 = 0;
  }

  [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  OUTLINED_FUNCTION_51_3();
  *(v37 + 216) = v59;
  *(v37 + 224) = 0xD000000000000011;
  *(v37 + 232) = v60;
  v61 = OBJC_IVAR____TtC22ProactiveSummarization22SummarizationAnalytics_captionLengths;
  OUTLINED_FUNCTION_182_1();
  OUTLINED_FUNCTION_81();
  swift_beginAccess();
  if (*(*(v61 - 0x2FFFFFFFFFFFFFEELL) + 16))
  {
    OUTLINED_FUNCTION_181_1();
    do
    {
      OUTLINED_FUNCTION_179_2();
      if (v52)
      {
        goto LABEL_147;
      }
    }

    while (v62 != 1);
  }

  else
  {
    v61 = 0;
  }

  *(v37 + 240) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  *(v37 + 248) = 0x6E654C7475706E69;
  *(v37 + 256) = 0xEB00000000687467;
  sub_231DD9D90();
  [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  OUTLINED_FUNCTION_51_3();
  *(v37 + 264) = v64;
  *(v37 + 272) = 0xD000000000000012;
  *(v37 + 280) = v65;
  OUTLINED_FUNCTION_81();
  swift_beginAccess();
  v66 = OUTLINED_FUNCTION_178_1();
  sub_231DDF7AC(v66, v67);
  OUTLINED_FUNCTION_51_3();
  *(v37 + 288) = v68;
  *(v37 + 296) = 0xD000000000000014;
  *(v37 + 304) = v69;
  OUTLINED_FUNCTION_81();
  swift_beginAccess();
  v70 = OUTLINED_FUNCTION_178_1();
  sub_231DDF7AC(v70, v71);
  OUTLINED_FUNCTION_51_3();
  *(v37 + 312) = v72;
  *(v37 + 320) = 0xD000000000000015;
  *(v37 + 328) = v73;
  OUTLINED_FUNCTION_81();
  swift_beginAccess();
  v74 = OUTLINED_FUNCTION_178_1();
  sub_231DDF7AC(v74, v75);
  OUTLINED_FUNCTION_51_3();
  *(v37 + 336) = v76;
  *(v37 + 344) = 0xD00000000000001BLL;
  *(v37 + 352) = v77;
  v78 = OBJC_IVAR____TtC22ProactiveSummarization22SummarizationAnalytics_isCommunicationNotification;
  OUTLINED_FUNCTION_81();
  swift_beginAccess();
  sub_231DDF828(*(v36 + v78));
  OUTLINED_FUNCTION_51_3();
  *(v37 + 360) = v79;
  *(v37 + 368) = 0xD000000000000024;
  *(v37 + 376) = v80;
  OUTLINED_FUNCTION_81();
  swift_beginAccess();
  v81 = OUTLINED_FUNCTION_178_1();
  sub_231DDF8AC(v81, v82);
  OUTLINED_FUNCTION_187_0();
  *(v37 + 384) = v83;
  *(v37 + 392) = v84;
  *(v37 + 400) = 0xE800000000000000;
  v85 = OBJC_IVAR____TtC22ProactiveSummarization22SummarizationAnalytics_isUrgent;
  OUTLINED_FUNCTION_81();
  swift_beginAccess();
  sub_231DDF828(*(v36 + v85));
  OUTLINED_FUNCTION_188_1();
  *(v37 + 408) = v86;
  *(v37 + 416) = v87;
  *(v37 + 424) = 0xEA00000000006E6FLL;
  v88 = OBJC_IVAR____TtC22ProactiveSummarization22SummarizationAnalytics_exitReason;
  OUTLINED_FUNCTION_81();
  swift_beginAccess();
  v89 = *(v36 + v88);
  if (v89 == 22)
  {
    v90 = 0;
  }

  else
  {
    v90 = *(v36 + v88);
  }

  *(v37 + 432) = sub_231DDF7AC(v90, v89 == 22);
  *(v37 + 440) = 0x6D6F44726F727265;
  *(v37 + 448) = 0xEB000000006E6961;
  v91 = (v3 + OBJC_IVAR____TtC22ProactiveSummarization22SummarizationAnalytics_summarizationError);
  OUTLINED_FUNCTION_21_11();
  swift_beginAccess();
  if (v91[1])
  {
    v92 = *v91;
    v93 = v91[1];
  }

  else
  {
    v92 = 0;
  }

  v94 = OUTLINED_FUNCTION_25_7();
  sub_231DDF71C(v94, v95);
  OUTLINED_FUNCTION_213_0();
  *(v37 + 456) = v92;
  *(v37 + 464) = 0x616C43726F727265;
  *(v37 + 472) = 0xEA00000000007373;
  if (v91[1])
  {
    v97 = v91[2];
    v96 = v91[3];
  }

  else
  {
    v97 = 0;
  }

  v98 = OUTLINED_FUNCTION_25_7();
  sub_231DDF71C(v98, v99);
  OUTLINED_FUNCTION_213_0();
  *(v37 + 480) = v97;
  *(v37 + 488) = 0x646F43726F727265;
  OUTLINED_FUNCTION_116_6();
  *(v37 + 496) = v100;
  if (v91[1])
  {
    v102 = v91[4];
    v101 = v91[5];
  }

  else
  {
    v102 = 0;
  }

  v103 = OUTLINED_FUNCTION_25_7();
  sub_231DDF71C(v103, v104);
  OUTLINED_FUNCTION_213_0();
  OUTLINED_FUNCTION_51_3();
  *(v37 + 504) = v102;
  *(v37 + 512) = 0xD000000000000013;
  *(v37 + 520) = v105;
  if (v91[1])
  {
    v107 = v91[6];
    v106 = v91[7];
  }

  else
  {
    v107 = 0;
  }

  v108 = OUTLINED_FUNCTION_25_7();
  sub_231DDF71C(v108, v109);
  OUTLINED_FUNCTION_213_0();
  *(v37 + 528) = v107;
  OUTLINED_FUNCTION_51_3();
  *(v37 + 536) = 0xD000000000000012;
  *(v37 + 544) = v110;
  v111 = (v3 + OBJC_IVAR____TtC22ProactiveSummarization22SummarizationAnalytics_urgencyError);
  OUTLINED_FUNCTION_81();
  swift_beginAccess();
  if (v111[1])
  {
    v112 = *v111;
    v113 = v111[1];
  }

  else
  {
    v112 = 0;
  }

  v114 = OUTLINED_FUNCTION_41_3();
  sub_231DDF71C(v114, v115);
  OUTLINED_FUNCTION_212();
  *(v37 + 552) = v112;
  OUTLINED_FUNCTION_51_3();
  *(v37 + 560) = 0xD000000000000011;
  *(v37 + 568) = v116;
  if (v111[1])
  {
    v118 = v111[2];
    v117 = v111[3];
  }

  else
  {
    v118 = 0;
  }

  v119 = OUTLINED_FUNCTION_41_3();
  sub_231DDF71C(v119, v120);
  OUTLINED_FUNCTION_212();
  *(v37 + 576) = v118;
  OUTLINED_FUNCTION_51_3();
  *(v37 + 584) = 0xD000000000000010;
  *(v37 + 592) = v121;
  if (v111[1])
  {
    v123 = v111[4];
    v122 = v111[5];
  }

  else
  {
    v123 = 0;
  }

  v124 = OUTLINED_FUNCTION_41_3();
  sub_231DDF71C(v124, v125);
  OUTLINED_FUNCTION_212();
  *(v37 + 600) = v123;
  OUTLINED_FUNCTION_51_3();
  *(v37 + 608) = 0xD00000000000001ALL;
  *(v37 + 616) = v126;
  if (v111[1])
  {
    v128 = v111[6];
    v127 = v111[7];
  }

  else
  {
    v128 = 0;
  }

  v129 = OUTLINED_FUNCTION_41_3();
  sub_231DDF71C(v129, v130);
  OUTLINED_FUNCTION_212();
  *(v37 + 624) = v128;
  OUTLINED_FUNCTION_51_3();
  *(v37 + 632) = 0xD000000000000012;
  *(v37 + 640) = v131;
  if (v91[1])
  {
    v132 = *(v91 + 1);
    v373 = *v91;
    v374 = v132;
    v133 = *(v91 + 3);
    v375 = *(v91 + 2);
    v376 = v133;
    v381 = v373;
    v382 = v132;
    v383 = v375;
    v384 = v133;
    v377 = v373;
    v378 = v132;
    v379 = v375;
    v380 = v133;
    sub_231DE3754(&v377, v370);
    sub_231DD942C();
    v135 = v134;
    sub_231CC154C(&v373, &unk_27DD73FC0, &qword_231E13478);
  }

  else
  {
    v135 = 0;
  }

  v136 = OUTLINED_FUNCTION_115_7();
  sub_231DDF71C(v136, v137);
  OUTLINED_FUNCTION_99_5();

  *(v37 + 648) = v135;
  strcpy((v37 + 656), "urgencyError");
  *(v37 + 669) = 0;
  *(v37 + 670) = -5120;
  if (v111[1])
  {
    v138 = *(v111 + 1);
    v370[0] = *v111;
    v370[1] = v138;
    v139 = *(v111 + 3);
    v371 = *(v111 + 2);
    v372 = v139;
    v377 = v370[0];
    v378 = v138;
    v379 = v371;
    v380 = v139;
    v373 = v370[0];
    v374 = v138;
    v375 = v371;
    v376 = v139;
    sub_231DE3754(&v373, &v369);
    sub_231DD942C();
    v141 = v140;
    sub_231CC154C(v370, &unk_27DD73FC0, &qword_231E13478);
  }

  else
  {
    v141 = 0;
  }

  v142 = OUTLINED_FUNCTION_115_7();
  sub_231DDF71C(v142, v143);
  OUTLINED_FUNCTION_99_5();

  *(v37 + 672) = v141;
  *(v37 + 680) = 0x7079546575657571;
  OUTLINED_FUNCTION_116_6();
  *(v37 + 688) = v144;
  v145 = OBJC_IVAR____TtC22ProactiveSummarization22SummarizationAnalytics_queueType;
  OUTLINED_FUNCTION_182_1();
  OUTLINED_FUNCTION_81();
  swift_beginAccess();
  *(v37 + 696) = sub_231DDF7AC(*(v141 + v145) & 1, *(v141 + v145) == 2);
  strcpy((v37 + 704), "invalidReason");
  *(v37 + 718) = -4864;
  v146 = OBJC_IVAR____TtC22ProactiveSummarization22SummarizationAnalytics_invalidReason;
  OUTLINED_FUNCTION_81();
  swift_beginAccess();
  v147 = 0;
  v148 = *(v141 + v146);
  if (v148 != 31)
  {
    v147 = sub_231CC8F34(v148);
  }

  *(v37 + 720) = sub_231DDF7AC(v147, v148 == 31);
  OUTLINED_FUNCTION_51_3();
  *(v37 + 728) = 0xD000000000000010;
  *(v37 + 736) = v149;
  v150 = (v3 + OBJC_IVAR____TtC22ProactiveSummarization22SummarizationAnalytics_ineligibleReason);
  OUTLINED_FUNCTION_81();
  swift_beginAccess();
  if (*(v150 + 16) != 255)
  {
    v152 = *v150;
    v151 = v150[1];
    v153 = OUTLINED_FUNCTION_33_16();
    sub_231CC3500(v153, v154, v155);
    v156 = OUTLINED_FUNCTION_33_16();
    sub_231D004C0(v156, v157, v158);
    v159 = OUTLINED_FUNCTION_33_16();
    sub_231CBA16C(v159, v160, v161);
  }

  *(v37 + 744) = OUTLINED_FUNCTION_162_1();
  OUTLINED_FUNCTION_51_3();
  *(v37 + 752) = 0xD00000000000001ALL;
  *(v37 + 760) = v162;
  v163 = (v3 + OBJC_IVAR____TtC22ProactiveSummarization22SummarizationAnalytics_ineligibleForUrgencyReason);
  OUTLINED_FUNCTION_81();
  swift_beginAccess();
  if (*(v163 + 16) != 255)
  {
    v165 = *v163;
    v164 = v163[1];
    v166 = OUTLINED_FUNCTION_33_16();
    sub_231CC3500(v166, v167, v168);
    v169 = OUTLINED_FUNCTION_33_16();
    sub_231D004C0(v169, v170, v171);
    v172 = OUTLINED_FUNCTION_33_16();
    sub_231CBA16C(v172, v173, v174);
  }

  *(v37 + 768) = OUTLINED_FUNCTION_162_1();
  OUTLINED_FUNCTION_51_3();
  *(v37 + 776) = 0xD000000000000020;
  *(v37 + 784) = v175;
  v176 = (v3 + OBJC_IVAR____TtC22ProactiveSummarization22SummarizationAnalytics_ineligibleForSummarizationReason);
  OUTLINED_FUNCTION_81();
  swift_beginAccess();
  if (*(v176 + 16) != 255)
  {
    v178 = *v176;
    v177 = v176[1];
    v179 = OUTLINED_FUNCTION_33_16();
    sub_231CC3500(v179, v180, v181);
    v182 = OUTLINED_FUNCTION_33_16();
    sub_231D004C0(v182, v183, v184);
    v185 = OUTLINED_FUNCTION_33_16();
    sub_231CBA16C(v185, v186, v187);
  }

  *(v37 + 792) = OUTLINED_FUNCTION_162_1();
  OUTLINED_FUNCTION_51_3();
  *(v37 + 800) = 0xD000000000000019;
  *(v37 + 808) = v188;
  *(v37 + 816) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  OUTLINED_FUNCTION_51_3();
  *(v37 + 824) = 0xD000000000000012;
  *(v37 + 832) = v189;
  v190 = OBJC_IVAR____TtC22ProactiveSummarization22SummarizationAnalytics_cancellationReason;
  OUTLINED_FUNCTION_81();
  swift_beginAccess();
  v191 = *(v3 + v190);
  if (v191 == 3)
  {
    v192 = 0;
  }

  else
  {
    v192 = *(v3 + v190);
  }

  *(v37 + 840) = sub_231DDF7AC(v192, v191 == 3);
  OUTLINED_FUNCTION_51_3();
  *(v37 + 848) = 0xD000000000000010;
  *(v37 + 856) = v193;
  v194 = OBJC_IVAR____TtC22ProactiveSummarization22SummarizationAnalytics_captioningResult;
  OUTLINED_FUNCTION_81();
  swift_beginAccess();
  v195 = *(v361 + v194);
  if (v195 == 5)
  {
    v196 = 0;
  }

  else
  {
    v196 = *(v361 + v194);
  }

  *(v37 + 864) = sub_231DDF7AC(v196, v195 == 5);
  OUTLINED_FUNCTION_51_3();
  *(v37 + 872) = 0xD000000000000016;
  *(v37 + 880) = v197;
  v198 = sub_231DD9FE8(a1);
  *(v37 + 888) = sub_231DDF8AC(v198, v199 & 1);
  OUTLINED_FUNCTION_51_3();
  *(v37 + 896) = 0xD000000000000021;
  *(v37 + 904) = v200;
  v201 = v361 + OBJC_IVAR____TtC22ProactiveSummarization22SummarizationAnalytics_timeSinceLastNotificationReceived;
  OUTLINED_FUNCTION_81();
  swift_beginAccess();
  *(v37 + 912) = sub_231DDF8AC(*v201, *(v201 + 8));
  *(v37 + 920) = 0x79727465527369;
  *(v37 + 928) = 0xE700000000000000;
  *(v37 + 936) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
  *(v37 + 944) = 0x49566D6F72467369;
  OUTLINED_FUNCTION_116_6();
  *(v37 + 952) = v202 - 21;
  v203 = OBJC_IVAR____TtC22ProactiveSummarization22SummarizationAnalytics_isFromVIP;
  OUTLINED_FUNCTION_81();
  swift_beginAccess();
  *(v37 + 960) = sub_231DDF828(*(v361 + v203));
  strcpy((v37 + 968), "isKnownSender");
  *(v37 + 982) = -4864;
  v204 = OBJC_IVAR____TtC22ProactiveSummarization22SummarizationAnalytics_isKnownSender;
  OUTLINED_FUNCTION_81();
  swift_beginAccess();
  *(v37 + 984) = sub_231DDF828(*(v361 + v204));
  sub_231CC1784(0, &qword_2814CAEB0, 0x277D82BB8);
  v350 = sub_231E11530();
  OUTLINED_FUNCTION_81();
  swift_beginAccess();
  v205 = *(a1 + 16);
  v207 = *(v205 + 64);
  v206 = v205 + 64;
  v208 = *(*(a1 + 16) + 32);
  OUTLINED_FUNCTION_132_3();
  v211 = v210 & v209;
  v213 = (v212 + 63) >> 6;
  v354 = (v7 + 8);
  v355 = (v7 + 16);
  OUTLINED_FUNCTION_83_6();
  OUTLINED_FUNCTION_51_3();
  v346 = v214;
  v347 = v215;
  OUTLINED_FUNCTION_83_6();
  OUTLINED_FUNCTION_51_3();
  v344 = v216;
  v345 = v217;
  OUTLINED_FUNCTION_83_6();
  OUTLINED_FUNCTION_51_3();
  v342 = v218;
  v343 = v219;
  OUTLINED_FUNCTION_83_6();
  OUTLINED_FUNCTION_51_3();
  v340 = v220;
  v341 = v221;
  OUTLINED_FUNCTION_83_6();
  OUTLINED_FUNCTION_51_3();
  v338 = v222;
  v339 = v223;
  OUTLINED_FUNCTION_83_6();
  OUTLINED_FUNCTION_51_3();
  v336 = v224;
  v337 = v225;
  OUTLINED_FUNCTION_83_6();
  OUTLINED_FUNCTION_51_3();
  v334 = v226;
  v335 = v227;
  OUTLINED_FUNCTION_83_6();
  OUTLINED_FUNCTION_51_3();
  v332 = v228;
  v333 = v229;
  OUTLINED_FUNCTION_83_6();
  OUTLINED_FUNCTION_51_3();
  v330 = v230;
  v331 = v231;
  v353 = v232;

  v233 = 0;
  v367 = a1;
  v234 = v363;
  v356 = v213;
  v358 = v206;
LABEL_79:
  v235 = v352;
  if (!v211)
  {
    goto LABEL_81;
  }

  while (1)
  {
    v236 = v233;
LABEL_85:
    v237 = __clz(__rbit64(v211));
    v211 &= v211 - 1;
    v238 = v237 | (v236 << 6);
    v239 = *(v353 + 56);
    v240 = *(*(v353 + 48) + v238);
    OUTLINED_FUNCTION_65_8(v238);
    sub_231DE342C();
    v241 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD75810, &qword_231E22A08);
    v242 = *(v241 + 48);
    *v363 = v240;
    v234 = v363;
    sub_231DE35F8();
    OUTLINED_FUNCTION_15_7();
    __swift_storeEnumTagSinglePayload(v243, v244, v245, v241);
LABEL_86:
    sub_231DE72A4(v234, v360);
    v246 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD75810, &qword_231E22A08);
    OUTLINED_FUNCTION_8_17(v360, 1, v246);
    if (v247)
    {
      break;
    }

    v248 = *v360;
    v249 = *(v246 + 48);
    OUTLINED_FUNCTION_4_27();
    sub_231DE35F8();
    v250 = v367;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      OUTLINED_FUNCTION_5_29();
      sub_231DE35F8();
      v273 = 0xED00006E6F697461;
      v274 = 0x7275446C61746F74;
      switch(v248)
      {
        case 1:
          OUTLINED_FUNCTION_170_2();
          v274 = v275 + 8;
          v273 = v330;
          break;
        case 2:
          OUTLINED_FUNCTION_170_2();
          v274 = v278 + 6;
          v273 = v331;
          break;
        case 3:
          OUTLINED_FUNCTION_170_2();
          v274 = v280 + 10;
          v273 = v332;
          break;
        case 4:
          OUTLINED_FUNCTION_170_2();
          v274 = v276 + 12;
          v273 = v333;
          break;
        case 5:
          OUTLINED_FUNCTION_170_2();
          v274 = v282 + 1;
          v273 = v334;
          break;
        case 6:
          OUTLINED_FUNCTION_170_2();
          v274 = v283 + 7;
          v273 = v335;
          break;
        case 7:
          v274 = 0xD000000000000011;
          v273 = v336;
          break;
        case 8:
          OUTLINED_FUNCTION_170_2();
          v274 = v285 + 13;
          v273 = v337;
          break;
        case 9:
          v274 = 0x4479636E65677275;
          v273 = 0xEF6E6F6974617275;
          break;
        case 10:
          OUTLINED_FUNCTION_170_2();
          v274 = v284 + 6;
          v273 = v338;
          break;
        case 11:
          OUTLINED_FUNCTION_123_2();
          v273 = v339;
          break;
        case 12:
          OUTLINED_FUNCTION_170_2();
          v274 = v277 + 11;
          v273 = v340;
          break;
        case 13:
          v274 = 0xD000000000000012;
          v273 = v341;
          break;
        case 14:
          v274 = 0xD000000000000012;
          v273 = v342;
          break;
        case 15:
          OUTLINED_FUNCTION_170_2();
          v274 = v279 + 22;
          v273 = v343;
          break;
        case 16:
          OUTLINED_FUNCTION_123_2();
          v273 = v344;
          break;
        case 17:
          OUTLINED_FUNCTION_170_2();
          v274 = v281 + 7;
          v273 = v345;
          break;
        case 18:
          OUTLINED_FUNCTION_123_2();
          v273 = v346;
          break;
        case 19:
          OUTLINED_FUNCTION_170_2();
          v274 = v286 + 20;
          v273 = v347;
          break;
        default:
          break;
      }

      v287 = v351 + *(v349 + 20);
      sub_231E0F870();
      v289 = v288;
      sub_231E0F870();
      v348 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
      swift_isUniquelyReferenced_nonNull_native();
      v368[0] = v350;
      v291 = v274;
      v292 = v273;
      v293 = sub_231CE0CA4(v274, v273);
      if (__OFADD__(v350[2], (v294 & 1) == 0))
      {
        goto LABEL_151;
      }

      v295 = v293;
      v296 = v294;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD75818, &qword_231E22A10);
      if (sub_231E11EA0())
      {
        v297 = sub_231CE0CA4(v291, v273);
        v234 = v363;
        if ((v296 & 1) != (v298 & 1))
        {
          goto LABEL_154;
        }

        v295 = v297;
        if ((v296 & 1) == 0)
        {
LABEL_122:
          v299 = v368[0];
          *(v368[0] + 8 * (v295 >> 6) + 64) |= 1 << v295;
          v300 = (v299[6] + 16 * v295);
          *v300 = v291;
          v300[1] = v292;
          *(v299[7] + 8 * v295) = v348;
          OUTLINED_FUNCTION_6_23();
          sub_231DE724C(v351, v301);
          v302 = v299[2];
          v52 = __OFADD__(v302, 1);
          v303 = v302 + 1;
          if (v52)
          {
            goto LABEL_153;
          }

          v350 = v299;
          v299[2] = v303;
          goto LABEL_126;
        }
      }

      else
      {
        v234 = v363;
        if ((v296 & 1) == 0)
        {
          goto LABEL_122;
        }
      }

      v350 = v368[0];
      v304 = *(v368[0] + 56);
      v305 = *(v304 + 8 * v295);
      *(v304 + 8 * v295) = v348;

      OUTLINED_FUNCTION_6_23();
      sub_231DE724C(v351, v306);
LABEL_126:
      v213 = v356;
      v206 = v358;
      goto LABEL_79;
    }

    v251 = sub_231CB4EEC();
    (*v355)(v235, v251, v362);

    v252 = v235;
    v253 = sub_231E10E10();
    v254 = sub_231E11AE0();

    if (os_log_type_enabled(v253, v254))
    {
      v255 = swift_slowAlloc();
      v368[0] = swift_slowAlloc();
      *v255 = 136446466;
      v256 = sub_231DDA740(v367);
      sub_231CB5000(v256, v257, v368);
      OUTLINED_FUNCTION_335();
      *(v255 + 4) = v361;
      *(v255 + 12) = 2082;
      v258 = sub_231E11680();
      sub_231CB5000(v258, v259, v368);
      OUTLINED_FUNCTION_335();
      *(v255 + 14) = v361;
      _os_log_impl(&dword_231CAE000, v253, v254, "%{public}s Analytics: Programming error: Attempting to log to core analytics while a step is still pending: %{public}s", v255, 0x16u);
      swift_arrayDestroy();
      v250 = v367;
      OUTLINED_FUNCTION_30();
      OUTLINED_FUNCTION_30();

      v235 = v352;
      (*v354)(v352, v362);
    }

    else
    {

      v260 = *v354;
      v261 = OUTLINED_FUNCTION_174_2();
      v262(v261);
      v235 = v252;
    }

    OUTLINED_FUNCTION_45_5();
    swift_beginAccess();
    v263 = *(v250 + 24);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v250 + 24) = v263;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v263 = sub_231DE2458(0, *(v263 + 2) + 1, 1, v263);
      *(v250 + 24) = v263;
    }

    v266 = *(v263 + 2);
    v265 = *(v263 + 3);
    if (v266 >= v265 >> 1)
    {
      v263 = sub_231DE2458((v265 > 1), v266 + 1, 1, v263);
    }

    *(v263 + 2) = v266 + 1;
    v263[v266 + 32] = 3;
    *(v250 + 24) = v263;
    swift_endAccess();
    v267 = sub_231E0F950();
    OUTLINED_FUNCTION_12(v267);
    (*(v268 + 8))(v365);
    v234 = v363;
    v213 = v356;
    v206 = v358;
    if (!v211)
    {
LABEL_81:
      while (1)
      {
        v236 = v233 + 1;
        if (__OFADD__(v233, 1))
        {
          break;
        }

        if (v236 >= v213)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD75810, &qword_231E22A08);
          OUTLINED_FUNCTION_105();
          __swift_storeEnumTagSinglePayload(v269, v270, v271, v272);
          v211 = 0;
          goto LABEL_86;
        }

        v211 = *(v206 + 8 * v236);
        ++v233;
        if (v211)
        {
          v233 = v236;
          goto LABEL_85;
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
LABEL_149:
      __break(1u);
LABEL_150:
      __break(1u);
LABEL_151:
      __break(1u);
LABEL_152:
      __break(1u);
LABEL_153:
      __break(1u);
LABEL_154:
      result = sub_231E12160();
      __break(1u);
      return result;
    }
  }

  v307 = v367;
  OUTLINED_FUNCTION_81();
  swift_beginAccess();
  v308 = *(v367 + 24);

  sub_231DDF928(3, v308);
  v366 = (v311 >> 1) - v310;
  if (v311 >> 1 != v310)
  {
    v312 = v350;
    if ((v311 >> 1) > v310)
    {
      v313 = 0;
      v364 = v309 + v310;
      while (!__OFADD__(v313, 1))
      {
        v314 = *(v364 + v313);
        v315 = sub_231E120D0();
        MEMORY[0x23837CC20](v315);

        v316 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
        swift_isUniquelyReferenced_nonNull_native();
        v317 = sub_231CE0CA4(0x6575737369, 0xE500000000000000);
        if (__OFADD__(v350[2], (v318 & 1) == 0))
        {
          goto LABEL_149;
        }

        v319 = v317;
        v320 = v318;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD75818, &qword_231E22A10);
        if (sub_231E11EA0())
        {
          v321 = sub_231CE0CA4(0x6575737369, 0xE500000000000000);
          v307 = v367;
          if ((v320 & 1) != (v322 & 1))
          {
            goto LABEL_154;
          }

          v319 = v321;
        }

        else
        {
          v307 = v367;
        }

        if (v320)
        {
          v323 = v350[7];
          v324 = *(v323 + 8 * v319);
          *(v323 + 8 * v319) = v316;
        }

        else
        {
          v350[(v319 >> 6) + 8] |= 1 << v319;
          v325 = (v350[6] + 16 * v319);
          *v325 = 0x6575737369;
          v325[1] = 0xE500000000000000;
          *(v350[7] + 8 * v319) = v316;
          v326 = v350[2];
          v52 = __OFADD__(v326, 1);
          v327 = v326 + 1;
          if (v52)
          {
            goto LABEL_150;
          }

          v350[2] = v327;
        }

        if (v366 == ++v313)
        {
          goto LABEL_142;
        }
      }

      goto LABEL_148;
    }

    goto LABEL_152;
  }

  v312 = v350;
LABEL_142:
  swift_unknownObjectRelease();
  v328 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  swift_isUniquelyReferenced_nonNull_native();
  sub_231DE30F0(v328, 0x756F436575737369, 0xEA0000000000746ELL);
  return v312;
}

id sub_231DDF71C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    OUTLINED_FUNCTION_300_0();
    sub_231CC1784(0, &qword_2814CAEA8, 0x277CCACA8);

    OUTLINED_FUNCTION_48();
    return sub_231CE00C4();
  }

  else
  {
    v3 = objc_allocWithZone(MEMORY[0x277CBEB68]);

    return [v3 init];
  }
}

id sub_231DDF7AC(uint64_t a1, char a2)
{
  if (a2)
  {
    v2 = objc_allocWithZone(MEMORY[0x277CBEB68]);
    v3 = sel_init;
  }

  else
  {
    v2 = objc_allocWithZone(MEMORY[0x277CCABB0]);
    v3 = sel_initWithInteger_;
  }

  return [v2 v3];
}

id sub_231DDF828(char a1)
{
  if (a1 == 2)
  {
    v1 = objc_allocWithZone(MEMORY[0x277CBEB68]);
    v2 = sel_init;
  }

  else
  {
    v1 = objc_allocWithZone(MEMORY[0x277CCABB0]);
    v2 = sel_initWithBool_;
  }

  return [v1 v2];
}

id sub_231DDF8AC(uint64_t a1, char a2)
{
  if (a2)
  {
    v2 = objc_allocWithZone(MEMORY[0x277CBEB68]);
    v3 = sel_init;
  }

  else
  {
    v2 = objc_allocWithZone(MEMORY[0x277CCABB0]);
    v3 = sel_initWithDouble_;
  }

  return [v2 v3];
}

uint64_t sub_231DDF928(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = *(a2 + 16);
    result = sub_231CB5794(0, result, v3);
    if (v4)
    {
      v5 = v3;
    }

    else
    {
      v5 = result;
    }

    if ((v5 & 0x8000000000000000) == 0)
    {
      v6 = sub_231CF0BB8(0, v5, a2);

      return v6;
    }
  }

  __break(1u);
  return result;
}

void sub_231DDF9BC(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD75850, &qword_231E22A48);
    v2 = sub_231E11F00();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  while (v5)
  {
    v8 = v7;
LABEL_12:
    v9 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v10 = v9 | (v8 << 6);
    v11 = (*(a1 + 48) + 16 * v10);
    v13 = *v11;
    v12 = v11[1];
    v14 = *(*(a1 + 56) + 8 * v10);

    v15 = v14;
    v16 = sub_231CE0CA4(v13, v12);
    v17 = v16;
    if (v18)
    {
      v19 = (v2[6] + 16 * v16);
      v20 = v19[1];
      *v19 = v13;
      v19[1] = v12;

      v21 = v2[7];
      v22 = *(v21 + 8 * v17);
      *(v21 + 8 * v17) = v15;

      v7 = v8;
    }

    else
    {
      if (v2[2] >= v2[3])
      {
        goto LABEL_19;
      }

      *(v2 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v16;
      v23 = (v2[6] + 16 * v16);
      *v23 = v13;
      v23[1] = v12;
      *(v2[7] + 8 * v16) = v15;
      v24 = v2[2];
      v25 = __OFADD__(v24, 1);
      v26 = v24 + 1;
      if (v25)
      {
        goto LABEL_20;
      }

      v2[2] = v26;
      v7 = v8;
    }
  }

  while (1)
  {
    v8 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v8 >= v6)
    {

      return;
    }

    v5 = *(a1 + 64 + 8 * v8);
    ++v7;
    if (v5)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
}

uint64_t sub_231DDFBA0()
{
  OUTLINED_FUNCTION_300_0();
  v3 = v1 == OUTLINED_FUNCTION_167_1() && v0 == v2;
  if (v3 || (OUTLINED_FUNCTION_15_2() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v5 = v1 == 0x6449797469746E65 && v0 == 0xE800000000000000;
    if (v5 || (OUTLINED_FUNCTION_15_2() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v6 = v1 == 1684957547 && v0 == 0xE400000000000000;
      if (v6 || (OUTLINED_FUNCTION_15_2() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v7 = v1 == 0x6449656C646E7562 && v0 == 0xE800000000000000;
        if (v7 || (OUTLINED_FUNCTION_15_2() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = v1 == OUTLINED_FUNCTION_166_1() && v0 == v8;
          if (v9 || (OUTLINED_FUNCTION_15_2() & 1) != 0)
          {

            return 4;
          }

          else
          {
            OUTLINED_FUNCTION_170_2();
            v11 = v1 == (v10 | 5) && 0x8000000231E38380 == v0;
            if (v11 || (OUTLINED_FUNCTION_15_2() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v12 = v1 == 0x79727465527369 && v0 == 0xE700000000000000;
              if (v12 || (OUTLINED_FUNCTION_15_2() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v13 = v1 == 0x496E6F6974636573 && v0 == 0xE900000000000064;
                if (v13 || (OUTLINED_FUNCTION_15_2() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  OUTLINED_FUNCTION_0();
                  v15 = v1 == 0xD000000000000021 && v14 == v0;
                  if (v15 || (OUTLINED_FUNCTION_15_2() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v16 = v1 == 0x6874706564 && v0 == 0xE500000000000000;
                    if (v16 || (OUTLINED_FUNCTION_15_2() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v18 = v1 == OUTLINED_FUNCTION_165_0() && v0 == v17;
                      if (v18 || (OUTLINED_FUNCTION_15_2() & 1) != 0)
                      {

                        return 10;
                      }

                      else
                      {
                        v20 = v1 == OUTLINED_FUNCTION_143_4() && v0 == v19;
                        if (v20 || (OUTLINED_FUNCTION_15_2() & 1) != 0)
                        {

                          return 11;
                        }

                        else
                        {
                          v22 = v1 == OUTLINED_FUNCTION_164_3() && v0 == v21;
                          if (v22 || (OUTLINED_FUNCTION_15_2() & 1) != 0)
                          {

                            return 12;
                          }

                          else
                          {
                            v24 = v1 == OUTLINED_FUNCTION_142_3() && v0 == v23;
                            if (v24 || (OUTLINED_FUNCTION_15_2() & 1) != 0)
                            {

                              return 13;
                            }

                            else
                            {
                              OUTLINED_FUNCTION_63_9();
                              v26 = v3 && v25 == v0;
                              if (v26 || (OUTLINED_FUNCTION_15_2() & 1) != 0)
                              {

                                return 14;
                              }

                              else
                              {
                                OUTLINED_FUNCTION_0();
                                v28 = v1 == 0xD000000000000014 && v27 == v0;
                                if (v28 || (OUTLINED_FUNCTION_15_2() & 1) != 0)
                                {

                                  return 15;
                                }

                                else
                                {
                                  OUTLINED_FUNCTION_0();
                                  v30 = v1 == 0xD000000000000015 && v29 == v0;
                                  if (v30 || (OUTLINED_FUNCTION_15_2() & 1) != 0)
                                  {

                                    return 16;
                                  }

                                  else
                                  {
                                    OUTLINED_FUNCTION_0();
                                    v32 = v1 == 0xD00000000000001BLL && v31 == v0;
                                    if (v32 || (OUTLINED_FUNCTION_15_2() & 1) != 0)
                                    {

                                      return 17;
                                    }

                                    else
                                    {
                                      OUTLINED_FUNCTION_0();
                                      v34 = v1 == 0xD000000000000024 && v33 == v0;
                                      if (v34 || (OUTLINED_FUNCTION_15_2() & 1) != 0)
                                      {

                                        return 18;
                                      }

                                      else
                                      {
                                        v35 = v1 == 0x746E656772557369 && v0 == 0xE800000000000000;
                                        if (v35 || (OUTLINED_FUNCTION_15_2() & 1) != 0)
                                        {

                                          return 19;
                                        }

                                        else
                                        {
                                          OUTLINED_FUNCTION_63_9();
                                          v37 = v3 && v36 == v0;
                                          if (v37 || (OUTLINED_FUNCTION_15_2() & 1) != 0)
                                          {

                                            return 20;
                                          }

                                          else
                                          {
                                            v39 = v1 == OUTLINED_FUNCTION_163_1() && v0 == v38;
                                            if (v39 || (OUTLINED_FUNCTION_15_2() & 1) != 0)
                                            {

                                              return 21;
                                            }

                                            else
                                            {
                                              v40 = v1 == 0x7361655274697865 && v0 == 0xEA00000000006E6FLL;
                                              if (v40 || (OUTLINED_FUNCTION_15_2() & 1) != 0)
                                              {

                                                return 22;
                                              }

                                              else
                                              {
                                                v41 = v1 == 0x7079546575657571 && v0 == 0xE900000000000065;
                                                if (v41 || (OUTLINED_FUNCTION_15_2() & 1) != 0)
                                                {

                                                  return 23;
                                                }

                                                else
                                                {
                                                  v43 = v1 == OUTLINED_FUNCTION_140_3() && v0 == v42;
                                                  if (v43 || (OUTLINED_FUNCTION_15_2() & 1) != 0)
                                                  {

                                                    return 24;
                                                  }

                                                  else
                                                  {
                                                    OUTLINED_FUNCTION_0();
                                                    v45 = v1 == 0xD000000000000010 && v44 == v0;
                                                    if (v45 || (OUTLINED_FUNCTION_15_2() & 1) != 0)
                                                    {

                                                      return 25;
                                                    }

                                                    else
                                                    {
                                                      OUTLINED_FUNCTION_0();
                                                      v47 = v1 == 0xD00000000000001ALL && v46 == v0;
                                                      if (v47 || (OUTLINED_FUNCTION_15_2() & 1) != 0)
                                                      {

                                                        return 26;
                                                      }

                                                      else
                                                      {
                                                        OUTLINED_FUNCTION_196_0();
                                                        v49 = v3 && v48 == v0;
                                                        if (v49 || (OUTLINED_FUNCTION_15_2() & 1) != 0)
                                                        {

                                                          return 27;
                                                        }

                                                        else
                                                        {
                                                          OUTLINED_FUNCTION_63_9();
                                                          v51 = v3 && v50 == v0;
                                                          if (v51 || (OUTLINED_FUNCTION_15_2() & 1) != 0)
                                                          {

                                                            return 28;
                                                          }

                                                          else
                                                          {
                                                            OUTLINED_FUNCTION_0();
                                                            v53 = v1 == 0xD000000000000010 && v52 == v0;
                                                            if (v53 || (OUTLINED_FUNCTION_15_2() & 1) != 0)
                                                            {

                                                              return 29;
                                                            }

                                                            else
                                                            {
                                                              v54 = v1 == 0x49566D6F72467369 && v0 == 0xE900000000000050;
                                                              if (v54 || (OUTLINED_FUNCTION_15_2() & 1) != 0)
                                                              {

                                                                return 30;
                                                              }

                                                              else
                                                              {
                                                                v56 = v1 == OUTLINED_FUNCTION_141_4() && v0 == v55;
                                                                if (v56 || (OUTLINED_FUNCTION_15_2() & 1) != 0)
                                                                {

                                                                  return 31;
                                                                }

                                                                else if (v1 == 0x69726F6765746163 && v0 == 0xEA00000000007365)
                                                                {

                                                                  return 32;
                                                                }

                                                                else
                                                                {
                                                                  OUTLINED_FUNCTION_15_2();
                                                                  OUTLINED_FUNCTION_10_1();
                                                                  if (v1)
                                                                  {
                                                                    return 32;
                                                                  }

                                                                  else
                                                                  {
                                                                    return 33;
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

void sub_231DE0290()
{
  OUTLINED_FUNCTION_167_1();
  switch(v0)
  {
    case 4:
      OUTLINED_FUNCTION_166_1();
      break;
    case 5:
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_72_5(5);
      break;
    case 8:
    case 25:
    case 27:
    case 29:
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_170_2();
      break;
    case 10:
      OUTLINED_FUNCTION_165_0();
      break;
    case 11:
      OUTLINED_FUNCTION_143_4();
      break;
    case 12:
      OUTLINED_FUNCTION_164_3();
      break;
    case 13:
      OUTLINED_FUNCTION_142_3();
      break;
    case 14:
    case 20:
    case 28:
      OUTLINED_FUNCTION_0();
      break;
    case 15:
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_152_2(18);
      break;
    case 16:
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_151_2(18);
      break;
    case 17:
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_72_5(9);
      break;
    case 18:
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_150_2(18);
      break;
    case 21:
      OUTLINED_FUNCTION_163_1();
      break;
    case 24:
      OUTLINED_FUNCTION_140_3();
      break;
    case 26:
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_149_2(18);
      break;
    case 31:
      OUTLINED_FUNCTION_141_4();
      break;
    default:
      return;
  }
}

uint64_t sub_231DE0678@<X0>(_BYTE *a1@<X8>)
{
  result = sub_231DDFBA0();
  *a1 = result;
  return result;
}

uint64_t sub_231DE06A8()
{
  sub_231DE3B0C();
  v0 = OUTLINED_FUNCTION_10_4();

  return MEMORY[0x2821FE718](v0);
}

uint64_t sub_231DE06E0()
{
  sub_231DE3B0C();
  v0 = OUTLINED_FUNCTION_10_4();

  return MEMORY[0x2821FE720](v0);
}

char *sub_231DE0718()
{
  v1 = *(v0 + 2);

  v2 = *(v0 + 4);

  v3 = *(v0 + 7);

  v4 = OBJC_IVAR____TtC22ProactiveSummarization22SummarizationAnalytics_receivedDate;
  v5 = sub_231E0F950();
  OUTLINED_FUNCTION_12(v5);
  (*(v6 + 8))(&v0[v4]);
  v7 = *&v0[OBJC_IVAR____TtC22ProactiveSummarization22SummarizationAnalytics_titleLengths];

  v8 = *&v0[OBJC_IVAR____TtC22ProactiveSummarization22SummarizationAnalytics_subtitleLengths];

  v9 = *(OBJC_IVAR____TtC22ProactiveSummarization22SummarizationAnalytics_bodyLengths + v0);

  v10 = *&v0[OBJC_IVAR____TtC22ProactiveSummarization22SummarizationAnalytics_captionLengths];

  OUTLINED_FUNCTION_161_2(OBJC_IVAR____TtC22ProactiveSummarization22SummarizationAnalytics_summarizationError);
  OUTLINED_FUNCTION_161_2(OBJC_IVAR____TtC22ProactiveSummarization22SummarizationAnalytics_urgencyError);
  v11 = OUTLINED_FUNCTION_117_6(&v0[OBJC_IVAR____TtC22ProactiveSummarization22SummarizationAnalytics_ineligibleReason]);
  sub_231CBA16C(v11, v12, v13);
  v14 = OUTLINED_FUNCTION_117_6(&v0[OBJC_IVAR____TtC22ProactiveSummarization22SummarizationAnalytics_ineligibleForUrgencyReason]);
  sub_231CBA16C(v14, v15, v16);
  v17 = OUTLINED_FUNCTION_117_6(&v0[OBJC_IVAR____TtC22ProactiveSummarization22SummarizationAnalytics_ineligibleForSummarizationReason]);
  sub_231CBA16C(v17, v18, v19);
  v20 = *&v0[OBJC_IVAR____TtC22ProactiveSummarization22SummarizationAnalytics_categories + 8];

  return v0;
}

uint64_t sub_231DE0830()
{
  sub_231DE0718();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

void sub_231DE0888()
{
  OUTLINED_FUNCTION_35_1();
  v2 = v0;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD75648, &qword_231E20640);
  OUTLINED_FUNCTION_24(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_11_2();
  MEMORY[0x28223BE20](v10);
  v11 = *(v4 + 24);
  v12 = *(v4 + 32);
  OUTLINED_FUNCTION_214_1();
  sub_231DE3B0C();
  sub_231E12270();
  *&v83 = *(v2 + 16);
  LOBYTE(v79) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD75630, &unk_231E205F0);
  sub_231DE3E68(&unk_27DD75650);
  OUTLINED_FUNCTION_46_10();
  sub_231E12090();
  if (v1)
  {
    v38 = *(v7 + 8);
    v39 = OUTLINED_FUNCTION_41_3();
    v40(v39);
  }

  else
  {
    v13 = *(v2 + 24);
    v14 = *(v2 + 32);
    OUTLINED_FUNCTION_9_20(1);
    sub_231E12060();
    LOBYTE(v83) = *(v2 + 40);
    LOBYTE(v79) = 2;
    sub_231DE3B60();
    OUTLINED_FUNCTION_23_12();
    sub_231E12090();
    v15 = *(v2 + 48);
    v16 = *(v2 + 56);
    OUTLINED_FUNCTION_9_20(3);
    sub_231E12010();
    LOBYTE(v83) = 4;
    sub_231E0F950();
    OUTLINED_FUNCTION_3_32();
    sub_231DE3390(v17);
    OUTLINED_FUNCTION_46_10();
    sub_231E12090();
    v18 = *(v2 + OBJC_IVAR____TtC22ProactiveSummarization22SummarizationAnalytics_positionInReceivedItems);
    LOBYTE(v83) = 5;
    OUTLINED_FUNCTION_23_12();
    sub_231E12080();
    v19 = *(v2 + OBJC_IVAR____TtC22ProactiveSummarization22SummarizationAnalytics_isRetry);
    LOBYTE(v83) = 6;
    OUTLINED_FUNCTION_23_12();
    sub_231E12070();
    v20 = OBJC_IVAR____TtC22ProactiveSummarization22SummarizationAnalytics_sectionId;
    OUTLINED_FUNCTION_81();
    swift_beginAccess();
    LOBYTE(v83) = *(v2 + v20);
    LOBYTE(v79) = 7;
    sub_231DE3BB4();
    OUTLINED_FUNCTION_23_12();
    sub_231E12050();
    OUTLINED_FUNCTION_21_11();
    swift_beginAccess();
    OUTLINED_FUNCTION_100_7();
    OUTLINED_FUNCTION_9_20(8);
    sub_231E12030();
    OUTLINED_FUNCTION_21_11();
    swift_beginAccess();
    OUTLINED_FUNCTION_100_7();
    OUTLINED_FUNCTION_9_20(9);
    sub_231E12040();
    v21 = OBJC_IVAR____TtC22ProactiveSummarization22SummarizationAnalytics_titleLengths;
    OUTLINED_FUNCTION_81();
    swift_beginAccess();
    *&v83 = *(v2 + v21);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD75668, &qword_231E20648);
    sub_231DE3C08(&unk_27DD75670);
    OUTLINED_FUNCTION_36_11();
    OUTLINED_FUNCTION_81();
    swift_beginAccess();
    OUTLINED_FUNCTION_127_2();
    OUTLINED_FUNCTION_36_11();
    OUTLINED_FUNCTION_81();
    swift_beginAccess();
    OUTLINED_FUNCTION_127_2();
    OUTLINED_FUNCTION_36_11();
    OUTLINED_FUNCTION_81();
    swift_beginAccess();
    OUTLINED_FUNCTION_127_2();
    LOBYTE(v79) = 13;
    OUTLINED_FUNCTION_36_11();
    OUTLINED_FUNCTION_21_11();
    swift_beginAccess();
    OUTLINED_FUNCTION_100_7();
    OUTLINED_FUNCTION_9_20(14);
    sub_231E12040();
    OUTLINED_FUNCTION_21_11();
    swift_beginAccess();
    OUTLINED_FUNCTION_100_7();
    OUTLINED_FUNCTION_9_20(15);
    sub_231E12040();
    OUTLINED_FUNCTION_21_11();
    swift_beginAccess();
    OUTLINED_FUNCTION_100_7();
    OUTLINED_FUNCTION_9_20(16);
    sub_231E12040();
    v22 = OBJC_IVAR____TtC22ProactiveSummarization22SummarizationAnalytics_isCommunicationNotification;
    OUTLINED_FUNCTION_81();
    swift_beginAccess();
    v23 = *(v2 + v22);
    LOBYTE(v83) = 17;
    OUTLINED_FUNCTION_23_12();
    sub_231E12020();
    OUTLINED_FUNCTION_21_11();
    swift_beginAccess();
    OUTLINED_FUNCTION_100_7();
    OUTLINED_FUNCTION_9_20(18);
    sub_231E12030();
    v24 = OBJC_IVAR____TtC22ProactiveSummarization22SummarizationAnalytics_isUrgent;
    OUTLINED_FUNCTION_81();
    swift_beginAccess();
    v25 = *(v2 + v24);
    v87 = 19;
    OUTLINED_FUNCTION_23_12();
    sub_231E12020();
    v26 = (v2 + OBJC_IVAR____TtC22ProactiveSummarization22SummarizationAnalytics_summarizationError);
    OUTLINED_FUNCTION_21_11();
    swift_beginAccess();
    v27 = v26[1];
    v83 = *v26;
    v84 = v27;
    v28 = v26[3];
    v30 = *v26;
    v29 = v26[1];
    v85 = v26[2];
    v86 = v28;
    v79 = v30;
    v80 = v29;
    v31 = v26[3];
    v81 = v26[2];
    v82 = v31;
    v78 = 20;
    sub_231DA3AF0();
    sub_231DE3C70();
    OUTLINED_FUNCTION_46_10();
    sub_231E12050();
    v77[0] = v79;
    v77[1] = v80;
    v77[2] = v81;
    v77[3] = v82;
    sub_231CC154C(v77, &unk_27DD73FC0, &qword_231E13478);
    v32 = (v2 + OBJC_IVAR____TtC22ProactiveSummarization22SummarizationAnalytics_urgencyError);
    OUTLINED_FUNCTION_21_11();
    swift_beginAccess();
    v33 = v32[1];
    v77[4] = *v32;
    v77[5] = v33;
    v34 = v32[3];
    v36 = *v32;
    v35 = v32[1];
    v77[6] = v32[2];
    v77[7] = v34;
    v73 = v36;
    v74 = v35;
    v37 = v32[3];
    v75 = v32[2];
    v76 = v37;
    v72[79] = 21;
    sub_231DA3AF0();
    OUTLINED_FUNCTION_46_10();
    sub_231E12050();
    OUTLINED_FUNCTION_191_1(&v65);
    sub_231CC154C(v72, &unk_27DD73FC0, &qword_231E13478);
    v41 = OBJC_IVAR____TtC22ProactiveSummarization22SummarizationAnalytics_exitReason;
    OUTLINED_FUNCTION_81();
    swift_beginAccess();
    v71 = *(v2 + v41);
    v70 = 22;
    sub_231DE3CC4();
    OUTLINED_FUNCTION_23_12();
    sub_231E12050();
    v42 = OBJC_IVAR____TtC22ProactiveSummarization22SummarizationAnalytics_queueType;
    OUTLINED_FUNCTION_81();
    swift_beginAccess();
    v70 = *(v2 + v42);
    v69 = 23;
    sub_231DE3D18();
    OUTLINED_FUNCTION_23_12();
    sub_231E12050();
    v43 = OBJC_IVAR____TtC22ProactiveSummarization22SummarizationAnalytics_invalidReason;
    OUTLINED_FUNCTION_81();
    swift_beginAccess();
    v69 = *(v2 + v43);
    LOBYTE(v67) = 24;
    sub_231CCF25C();
    OUTLINED_FUNCTION_23_12();
    sub_231E12050();
    v44 = (v2 + OBJC_IVAR____TtC22ProactiveSummarization22SummarizationAnalytics_ineligibleReason);
    OUTLINED_FUNCTION_21_11();
    swift_beginAccess();
    v45 = *(v44 + 16);
    v67 = *v44;
    v68 = v45;
    LOBYTE(v65) = 25;
    sub_231DE3D6C();
    OUTLINED_FUNCTION_46_10();
    sub_231E12050();
    v46 = (v2 + OBJC_IVAR____TtC22ProactiveSummarization22SummarizationAnalytics_ineligibleForUrgencyReason);
    OUTLINED_FUNCTION_21_11();
    swift_beginAccess();
    v47 = *(v46 + 16);
    v65 = *v46;
    v66 = v47;
    OUTLINED_FUNCTION_46_10();
    sub_231E12050();
    v48 = (v2 + OBJC_IVAR____TtC22ProactiveSummarization22SummarizationAnalytics_ineligibleForSummarizationReason);
    OUTLINED_FUNCTION_21_11();
    swift_beginAccess();
    v63 = *v48;
    v64 = *(v48 + 16);
    OUTLINED_FUNCTION_46_10();
    sub_231E12050();
    v49 = OBJC_IVAR____TtC22ProactiveSummarization22SummarizationAnalytics_cancellationReason;
    OUTLINED_FUNCTION_81();
    swift_beginAccess();
    v62 = *(v2 + v49);
    sub_231DE3DC0();
    OUTLINED_FUNCTION_23_12();
    sub_231E12050();
    v50 = OBJC_IVAR____TtC22ProactiveSummarization22SummarizationAnalytics_captioningResult;
    OUTLINED_FUNCTION_81();
    swift_beginAccess();
    v61 = *(v2 + v50);
    sub_231DE3E14();
    OUTLINED_FUNCTION_23_12();
    sub_231E12050();
    v51 = OBJC_IVAR____TtC22ProactiveSummarization22SummarizationAnalytics_isFromVIP;
    OUTLINED_FUNCTION_81();
    swift_beginAccess();
    v52 = *(v2 + v51);
    OUTLINED_FUNCTION_23_12();
    sub_231E12020();
    v53 = OBJC_IVAR____TtC22ProactiveSummarization22SummarizationAnalytics_isKnownSender;
    OUTLINED_FUNCTION_81();
    swift_beginAccess();
    v54 = *(v2 + v53);
    OUTLINED_FUNCTION_23_12();
    sub_231E12020();
    v55 = (v2 + OBJC_IVAR____TtC22ProactiveSummarization22SummarizationAnalytics_categories);
    OUTLINED_FUNCTION_21_11();
    swift_beginAccess();
    v56 = *v55;
    v57 = v55[1];

    OUTLINED_FUNCTION_46_10();
    sub_231E12010();
    v58 = *(v7 + 8);
    v59 = OUTLINED_FUNCTION_41_3();
    v60(v59);
  }

  OUTLINED_FUNCTION_33_0();
}

uint64_t sub_231DE1314()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  sub_231DE1364();
  return v3;
}

void sub_231DE1364()
{
  OUTLINED_FUNCTION_35_1();
  v136 = v2;
  v101 = *v0;
  v103 = sub_231E0F950();
  v3 = OUTLINED_FUNCTION_24(v103);
  v99 = v4;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_4_1();
  v98 = v8 - v7;
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD756A8, qword_231E20650);
  OUTLINED_FUNCTION_24(v100);
  v97 = v9;
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_11_2();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_12_1();
  v104 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD75630, &unk_231E205F0);
  type metadata accessor for SummarizationAnalytics.GuardedData();
  OUTLINED_FUNCTION_130_1();
  v14 = swift_allocObject();
  v15 = MEMORY[0x277D84F90];
  *(v14 + 16) = MEMORY[0x277D84F98];
  *(v14 + 24) = v15;
  *(v14 + 32) = 0;
  *&v132 = v14;
  v0[2] = sub_231DC3CF0(&v132);
  v96 = OBJC_IVAR____TtC22ProactiveSummarization22SummarizationAnalytics_sectionId;
  *(v0 + OBJC_IVAR____TtC22ProactiveSummarization22SummarizationAnalytics_sectionId) = 12;
  OUTLINED_FUNCTION_135_3(OBJC_IVAR____TtC22ProactiveSummarization22SummarizationAnalytics_timeSinceLastNotificationReceived);
  v95 = v16;
  *(v16 + 8) = 1;
  OUTLINED_FUNCTION_135_3(OBJC_IVAR____TtC22ProactiveSummarization22SummarizationAnalytics_depth);
  v94 = v17;
  *(v17 + 8) = v18;
  *(v0 + OBJC_IVAR____TtC22ProactiveSummarization22SummarizationAnalytics_titleLengths) = v15;
  *(v0 + OBJC_IVAR____TtC22ProactiveSummarization22SummarizationAnalytics_subtitleLengths) = v15;
  *(OBJC_IVAR____TtC22ProactiveSummarization22SummarizationAnalytics_bodyLengths + v0) = v15;
  *(v0 + OBJC_IVAR____TtC22ProactiveSummarization22SummarizationAnalytics_captionLengths) = v15;
  OUTLINED_FUNCTION_135_3(OBJC_IVAR____TtC22ProactiveSummarization22SummarizationAnalytics_summaryTopicLength);
  *(v19 + 8) = v20;
  OUTLINED_FUNCTION_135_3(OBJC_IVAR____TtC22ProactiveSummarization22SummarizationAnalytics_summaryTopLineLength);
  *(v21 + 8) = v22;
  OUTLINED_FUNCTION_135_3(OBJC_IVAR____TtC22ProactiveSummarization22SummarizationAnalytics_summarySynopsisLength);
  *(v23 + 8) = v24;
  v84 = OBJC_IVAR____TtC22ProactiveSummarization22SummarizationAnalytics_isCommunicationNotification;
  *(v0 + OBJC_IVAR____TtC22ProactiveSummarization22SummarizationAnalytics_isCommunicationNotification) = 2;
  v25 = v0 + OBJC_IVAR____TtC22ProactiveSummarization22SummarizationAnalytics_proportionCommunicationNotifications;
  *v25 = 0;
  v25[8] = v24;
  v85 = OBJC_IVAR____TtC22ProactiveSummarization22SummarizationAnalytics_isUrgent;
  *(v0 + OBJC_IVAR____TtC22ProactiveSummarization22SummarizationAnalytics_isUrgent) = 2;
  v26 = (v0 + OBJC_IVAR____TtC22ProactiveSummarization22SummarizationAnalytics_summarizationError);
  *v26 = 0u;
  v26[1] = 0u;
  v26[2] = 0u;
  v26[3] = 0u;
  v86 = v26;
  v27 = (v0 + OBJC_IVAR____TtC22ProactiveSummarization22SummarizationAnalytics_urgencyError);
  *v27 = 0u;
  v27[1] = 0u;
  v27[2] = 0u;
  v27[3] = 0u;
  v28 = OBJC_IVAR____TtC22ProactiveSummarization22SummarizationAnalytics_exitReason;
  *(v0 + OBJC_IVAR____TtC22ProactiveSummarization22SummarizationAnalytics_exitReason) = 22;
  v87 = v28;
  v88 = OBJC_IVAR____TtC22ProactiveSummarization22SummarizationAnalytics_queueType;
  *(v0 + OBJC_IVAR____TtC22ProactiveSummarization22SummarizationAnalytics_queueType) = 2;
  v89 = OBJC_IVAR____TtC22ProactiveSummarization22SummarizationAnalytics_invalidReason;
  *(v0 + OBJC_IVAR____TtC22ProactiveSummarization22SummarizationAnalytics_invalidReason) = 31;
  v29 = v0 + OBJC_IVAR____TtC22ProactiveSummarization22SummarizationAnalytics_ineligibleReason;
  *v29 = 0;
  *(v29 + 1) = 0;
  v29[16] = -1;
  v30 = v0 + OBJC_IVAR____TtC22ProactiveSummarization22SummarizationAnalytics_ineligibleForUrgencyReason;
  *v30 = 0;
  *(v30 + 1) = 0;
  v30[16] = -1;
  v31 = v0 + OBJC_IVAR____TtC22ProactiveSummarization22SummarizationAnalytics_ineligibleForSummarizationReason;
  v31[16] = -1;
  *v31 = 0;
  *(v31 + 1) = 0;
  v90 = OBJC_IVAR____TtC22ProactiveSummarization22SummarizationAnalytics_cancellationReason;
  *(v0 + OBJC_IVAR____TtC22ProactiveSummarization22SummarizationAnalytics_cancellationReason) = 3;
  v32 = OBJC_IVAR____TtC22ProactiveSummarization22SummarizationAnalytics_captioningResult;
  *(v0 + OBJC_IVAR____TtC22ProactiveSummarization22SummarizationAnalytics_captioningResult) = 5;
  v91 = v32;
  v92 = OBJC_IVAR____TtC22ProactiveSummarization22SummarizationAnalytics_isFromVIP;
  *(v0 + OBJC_IVAR____TtC22ProactiveSummarization22SummarizationAnalytics_isFromVIP) = 2;
  v93 = OBJC_IVAR____TtC22ProactiveSummarization22SummarizationAnalytics_isKnownSender;
  *(v0 + OBJC_IVAR____TtC22ProactiveSummarization22SummarizationAnalytics_isKnownSender) = 2;
  v102 = v0;
  v33 = (v0 + OBJC_IVAR____TtC22ProactiveSummarization22SummarizationAnalytics_categories);
  *v33 = 0;
  v33[1] = 0;
  v34 = v136[4];
  v35 = __swift_project_boxed_opaque_existential_0(v136, v136[3]);
  sub_231DE3B0C();
  sub_231E12260();
  if (v1)
  {
    OUTLINED_FUNCTION_122_3();
    v38 = v102[2];

    if (v27)
    {
      v39 = v102[4];
    }

    if (v30)
    {
      v40 = v102[7];
    }

    if (v35)
    {
      (*(v99 + 8))(v102 + OBJC_IVAR____TtC22ProactiveSummarization22SummarizationAnalytics_receivedDate, v103);
    }

    v41 = *(v102 + OBJC_IVAR____TtC22ProactiveSummarization22SummarizationAnalytics_titleLengths);

    v42 = *(v102 + OBJC_IVAR____TtC22ProactiveSummarization22SummarizationAnalytics_subtitleLengths);

    v43 = *(OBJC_IVAR____TtC22ProactiveSummarization22SummarizationAnalytics_bodyLengths + v102);

    v44 = *(v102 + OBJC_IVAR____TtC22ProactiveSummarization22SummarizationAnalytics_captionLengths);

    v45 = *(v102 + OBJC_IVAR____TtC22ProactiveSummarization22SummarizationAnalytics_summarizationError + 16);
    v128 = *(v102 + OBJC_IVAR____TtC22ProactiveSummarization22SummarizationAnalytics_summarizationError);
    v129 = v45;
    v46 = *(v102 + OBJC_IVAR____TtC22ProactiveSummarization22SummarizationAnalytics_summarizationError + 48);
    v130 = *(v102 + OBJC_IVAR____TtC22ProactiveSummarization22SummarizationAnalytics_summarizationError + 32);
    v131 = v46;
    sub_231CC154C(&v128, &unk_27DD73FC0, &qword_231E13478);
    v47 = *(v102 + OBJC_IVAR____TtC22ProactiveSummarization22SummarizationAnalytics_urgencyError + 16);
    v132 = *(v102 + OBJC_IVAR____TtC22ProactiveSummarization22SummarizationAnalytics_urgencyError);
    v133 = v47;
    v48 = *(v102 + OBJC_IVAR____TtC22ProactiveSummarization22SummarizationAnalytics_urgencyError + 48);
    v134 = *(v102 + OBJC_IVAR____TtC22ProactiveSummarization22SummarizationAnalytics_urgencyError + 32);
    v135 = v48;
    sub_231CC154C(&v132, &unk_27DD73FC0, &qword_231E13478);
    v49 = OUTLINED_FUNCTION_117_6((v102 + OBJC_IVAR____TtC22ProactiveSummarization22SummarizationAnalytics_ineligibleReason));
    sub_231CBA16C(v49, v50, v51);
    v52 = OUTLINED_FUNCTION_117_6((v102 + OBJC_IVAR____TtC22ProactiveSummarization22SummarizationAnalytics_ineligibleForUrgencyReason));
    sub_231CBA16C(v52, v53, v54);
    v55 = OUTLINED_FUNCTION_117_6((v102 + OBJC_IVAR____TtC22ProactiveSummarization22SummarizationAnalytics_ineligibleForSummarizationReason));
    sub_231CBA16C(v55, v56, v57);
    v58 = *(v102 + OBJC_IVAR____TtC22ProactiveSummarization22SummarizationAnalytics_categories + 8);

    v59 = *(*v102 + 48);
    v60 = *(*v102 + 52);
    swift_deallocPartialClassInstance();
    __swift_destroy_boxed_opaque_existential_0(v136);
  }

  else
  {
    v83 = v27;
    LOBYTE(v128) = 0;
    sub_231DE3E68(&unk_27DD756B0);
    OUTLINED_FUNCTION_48_10();
    sub_231E11FD0();
    v36 = v102[2];
    v102[2] = v132;

    LOBYTE(v132) = 1;
    v102[3] = sub_231E11FA0();
    v102[4] = v37;
    LOBYTE(v128) = 2;
    sub_231DE3EB4();
    OUTLINED_FUNCTION_66_7();
    sub_231E11FD0();
    *(v102 + 40) = v132;
    OUTLINED_FUNCTION_30_13(3);
    v102[6] = sub_231E11F50();
    v102[7] = v61;
    LOBYTE(v132) = 4;
    OUTLINED_FUNCTION_3_32();
    sub_231DE3390(v62);
    sub_231E11FD0();
    (*(v99 + 32))(v102 + OBJC_IVAR____TtC22ProactiveSummarization22SummarizationAnalytics_receivedDate, v98, v103);
    OUTLINED_FUNCTION_30_13(5);
    *(v102 + OBJC_IVAR____TtC22ProactiveSummarization22SummarizationAnalytics_positionInReceivedItems) = sub_231E11FC0();
    OUTLINED_FUNCTION_30_13(6);
    *(v102 + OBJC_IVAR____TtC22ProactiveSummarization22SummarizationAnalytics_isRetry) = sub_231E11FB0() & 1;
    sub_231DE3F08();
    OUTLINED_FUNCTION_66_7();
    sub_231E11F90();
    v63 = v132;
    OUTLINED_FUNCTION_42_12();
    swift_beginAccess();
    *(v102 + v96) = v63;
    OUTLINED_FUNCTION_30_13(8);
    v64 = sub_231E11F70();
    v66 = v65;
    OUTLINED_FUNCTION_42_12();
    swift_beginAccess();
    *v95 = v64;
    *(v95 + 8) = v66 & 1;
    OUTLINED_FUNCTION_11_20(9);
    v67 = sub_231E11F80();
    v69 = v68;
    OUTLINED_FUNCTION_42_12();
    swift_beginAccess();
    *v94 = v67;
    *(v94 + 8) = v69 & 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD75668, &qword_231E20648);
    sub_231DE3C08(&unk_27DD756C8);
    OUTLINED_FUNCTION_32_11();
    OUTLINED_FUNCTION_183_2();
    OUTLINED_FUNCTION_42_12();
    swift_beginAccess();
    OUTLINED_FUNCTION_211();
    OUTLINED_FUNCTION_32_11();
    OUTLINED_FUNCTION_183_2();
    OUTLINED_FUNCTION_42_12();
    swift_beginAccess();
    OUTLINED_FUNCTION_211();
    OUTLINED_FUNCTION_32_11();
    OUTLINED_FUNCTION_183_2();
    OUTLINED_FUNCTION_42_12();
    swift_beginAccess();
    OUTLINED_FUNCTION_211();
    LOBYTE(v128) = 13;
    OUTLINED_FUNCTION_32_11();
    OUTLINED_FUNCTION_183_2();
    OUTLINED_FUNCTION_42_12();
    swift_beginAccess();
    OUTLINED_FUNCTION_211();
    OUTLINED_FUNCTION_11_20(14);
    sub_231E11F80();
    OUTLINED_FUNCTION_164();
    OUTLINED_FUNCTION_42_12();
    swift_beginAccess();
    OUTLINED_FUNCTION_74_3();
    OUTLINED_FUNCTION_11_20(15);
    sub_231E11F80();
    OUTLINED_FUNCTION_164();
    OUTLINED_FUNCTION_42_12();
    swift_beginAccess();
    OUTLINED_FUNCTION_74_3();
    OUTLINED_FUNCTION_11_20(16);
    sub_231E11F80();
    OUTLINED_FUNCTION_164();
    OUTLINED_FUNCTION_42_12();
    swift_beginAccess();
    OUTLINED_FUNCTION_74_3();
    OUTLINED_FUNCTION_11_20(17);
    LOBYTE(v67) = sub_231E11F60();
    OUTLINED_FUNCTION_42_12();
    swift_beginAccess();
    *(v102 + v84) = v67;
    OUTLINED_FUNCTION_11_20(18);
    sub_231E11F70();
    OUTLINED_FUNCTION_164();
    OUTLINED_FUNCTION_42_12();
    swift_beginAccess();
    OUTLINED_FUNCTION_74_3();
    OUTLINED_FUNCTION_11_20(19);
    LOBYTE(v67) = sub_231E11F60();
    OUTLINED_FUNCTION_42_12();
    swift_beginAccess();
    *(v102 + v85) = v67;
    v127 = 20;
    sub_231DE3F5C();
    OUTLINED_FUNCTION_66_7();
    OUTLINED_FUNCTION_51_8();
    sub_231E11F90();
    v123 = v132;
    v124 = v133;
    v125 = v134;
    v126 = v135;
    OUTLINED_FUNCTION_42_12();
    swift_beginAccess();
    v70 = v86[1];
    v128 = *v86;
    v129 = v70;
    v71 = v86[3];
    v130 = v86[2];
    v131 = v71;
    v72 = v124;
    *v86 = v123;
    v86[1] = v72;
    v73 = v126;
    v86[2] = v125;
    v86[3] = v73;
    sub_231CC154C(&v128, &unk_27DD73FC0, &qword_231E13478);
    v118 = 21;
    OUTLINED_FUNCTION_66_7();
    OUTLINED_FUNCTION_51_8();
    sub_231E11F90();
    v113 = v119;
    v114 = v120;
    v115 = v121;
    v116 = v122;
    OUTLINED_FUNCTION_42_12();
    swift_beginAccess();
    v74 = v83[1];
    v117[0] = *v83;
    v117[1] = v74;
    v75 = v83[3];
    v117[2] = v83[2];
    v117[3] = v75;
    *v83 = v113;
    v83[1] = v114;
    v83[2] = v115;
    v83[3] = v116;
    sub_231CC154C(v117, &unk_27DD73FC0, &qword_231E13478);
    sub_231DE3FB0();
    OUTLINED_FUNCTION_48_10();
    sub_231E11F90();
    OUTLINED_FUNCTION_42_12();
    swift_beginAccess();
    *(v102 + v87) = v112;
    sub_231DE4004();
    OUTLINED_FUNCTION_48_10();
    sub_231E11F90();
    OUTLINED_FUNCTION_42_12();
    swift_beginAccess();
    *(v102 + v88) = v111;
    sub_231CCF380();
    OUTLINED_FUNCTION_48_10();
    sub_231E11F90();
    OUTLINED_FUNCTION_42_12();
    swift_beginAccess();
    *(v102 + v89) = v110;
    sub_231DE4058();
    OUTLINED_FUNCTION_66_7();
    OUTLINED_FUNCTION_51_8();
    sub_231E11F90();
    OUTLINED_FUNCTION_42_12();
    swift_beginAccess();
    OUTLINED_FUNCTION_203_1();
    OUTLINED_FUNCTION_66_7();
    OUTLINED_FUNCTION_51_8();
    sub_231E11F90();
    OUTLINED_FUNCTION_42_12();
    swift_beginAccess();
    OUTLINED_FUNCTION_203_1();
    OUTLINED_FUNCTION_66_7();
    OUTLINED_FUNCTION_51_8();
    sub_231E11F90();
    OUTLINED_FUNCTION_42_12();
    swift_beginAccess();
    v76 = *v31;
    v77 = *(v31 + 1);
    *v31 = v107;
    *(v31 + 1) = v108;
    v78 = v31[16];
    v31[16] = v109;
    sub_231CBA16C(v76, v77, v78);
    sub_231DE40AC();
    OUTLINED_FUNCTION_48_10();
    sub_231E11F90();
    OUTLINED_FUNCTION_42_12();
    swift_beginAccess();
    *(v102 + v90) = v106;
    sub_231DE4100();
    OUTLINED_FUNCTION_48_10();
    sub_231E11F90();
    OUTLINED_FUNCTION_42_12();
    swift_beginAccess();
    *(v102 + v91) = v105;
    OUTLINED_FUNCTION_31_15();
    LOBYTE(v67) = sub_231E11F60();
    OUTLINED_FUNCTION_42_12();
    swift_beginAccess();
    *(v102 + v92) = v67;
    OUTLINED_FUNCTION_31_15();
    LOBYTE(v67) = sub_231E11F60();
    OUTLINED_FUNCTION_42_12();
    swift_beginAccess();
    *(v102 + v93) = v67;
    OUTLINED_FUNCTION_31_15();
    v79 = sub_231E11F50();
    v81 = v80;
    (*(v97 + 8))(v104, v100);
    OUTLINED_FUNCTION_42_12();
    swift_beginAccess();
    v82 = v33[1];
    *v33 = v79;
    v33[1] = v81;

    __swift_destroy_boxed_opaque_existential_0(v136);
  }

  OUTLINED_FUNCTION_33_0();
}

uint64_t sub_231DE232C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_231DE1314();
  if (!v1)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_231DE2398(uint64_t result)
{
  if (result)
  {
    return sub_231DDB1E8();
  }

  return result;
}

char *sub_231DE23CC()
{
  v1 = *v0;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v0 = v1;
  if (!result)
  {
    result = sub_231DE2458(result, *(v1 + 2) + 1, 1, v1);
    *v0 = result;
  }

  return result;
}

char *sub_231DE2418(char *result)
{
  v2 = *(*v1 + 3);
  if ((result + 1) > (v2 >> 1))
  {
    result = sub_231DE2458((v2 > 1), (result + 1), 1, *v1);
    *v1 = result;
  }

  return result;
}

char *sub_231DE2458(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD75820, &qword_231E22A18);
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

unint64_t sub_231DE254C()
{
  result = qword_27DD86660;
  if (!qword_27DD86660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD86660);
  }

  return result;
}

unint64_t sub_231DE25A0()
{
  result = qword_27DD86668;
  if (!qword_27DD86668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD86668);
  }

  return result;
}

unint64_t sub_231DE25F4()
{
  result = qword_27DD86670;
  if (!qword_27DD86670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD86670);
  }

  return result;
}

unint64_t sub_231DE2648()
{
  result = qword_27DD86678;
  if (!qword_27DD86678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD86678);
  }

  return result;
}

unint64_t sub_231DE269C()
{
  result = qword_27DD86680;
  if (!qword_27DD86680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD86680);
  }

  return result;
}

unint64_t sub_231DE26F0()
{
  result = qword_27DD86688;
  if (!qword_27DD86688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD86688);
  }

  return result;
}