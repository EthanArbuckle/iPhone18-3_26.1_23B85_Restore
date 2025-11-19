uint64_t sub_1CA274C10(uint64_t a1, uint64_t a2)
{
  *(swift_allocObject() + 16) = a2;
  v4 = *(a1 + 16);
  v5 = a1 + 32;
  sub_1CA94C218();
  v6 = 0;
  v19 = a1 + 32;
  while (1)
  {
    if (v6 == v4)
    {

      v17 = 0;
      goto LABEL_15;
    }

    if (*(a2 + 16))
    {
      break;
    }

LABEL_13:
    ++v6;
  }

  v7 = (v5 + 16 * v6);
  v9 = *v7;
  v8 = v7[1];
  v10 = *(a2 + 40);
  sub_1CA94D918();
  sub_1CA94C218();
  sub_1CA94C458();
  v11 = sub_1CA94D968();
  v12 = ~(-1 << *(a2 + 32));
  do
  {
    v13 = v11 & v12;
    if (((*(a2 + 56 + (((v11 & v12) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v11 & v12)) & 1) == 0)
    {

      v5 = v19;
      goto LABEL_13;
    }

    v14 = (*(a2 + 48) + 16 * v13);
    if (*v14 == v9 && v14[1] == v8)
    {
      break;
    }

    v16 = sub_1CA94D7F8();
    v11 = v13 + 1;
  }

  while ((v16 & 1) == 0);

  v17 = v6;
LABEL_15:

  return v17;
}

uint64_t sub_1CA274D94()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1CA274E6C(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  v4 = *(*v2 + 16);
  if (v4 < a2)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v5 = result;
  v6 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v7 = result - a2;
  if (__OFSUB__(0, v6))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  result = v4 - v6;
  if (__OFADD__(v4, v7))
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  sub_1CA274DD0(result, 1);
  v8 = *v2;
  v9 = *v2 + 32;
  v10 = (v9 + 16 * v5);
  result = swift_arrayDestroy();
  if (!v6)
  {
LABEL_10:
    *v2 = v8;
    return result;
  }

  v11 = *(v8 + 16);
  if (__OFSUB__(v11, a2))
  {
    goto LABEL_16;
  }

  result = sub_1CA26E4B4((v9 + 16 * a2), v11 - a2, v10);
  v12 = *(v8 + 16);
  v13 = __OFADD__(v12, v7);
  v14 = v12 - v6;
  if (!v13)
  {
    *(v8 + 16) = v14;
    goto LABEL_10;
  }

LABEL_17:
  __break(1u);
  return result;
}

void sub_1CA274F48(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t i@<X8>)
{
  v141 = a3;
  if (!*(a2 + 16))
  {
    goto LABEL_111;
  }

  v6 = a1[1];
  v135 = *a1;
  v137 = v6;
  v7 = sub_1CA271BF8();
  if ((v8 & 1) == 0)
  {
    goto LABEL_111;
  }

  v9 = *(*(a2 + 56) + 8 * v7);
  v130 = sub_1CA25B410();
  if (!v130)
  {
    goto LABEL_111;
  }

  *&v132 = v9;
  sub_1CA94C218();
  if (!VCIsInternalBuild() || (sub_1CA5F87E8() & 1) != 0)
  {
    v10 = objc_allocWithZone(MEMORY[0x1E69635F8]);
    sub_1CA94C218();
    v11 = sub_1CA275C94(v135, v137, 0);
    if (v142)
    {

      v142 = 0;
      goto LABEL_8;
    }

    v101 = v11;
    v142 = 0;
    if (v11)
    {
      v102 = [v11 wf:0 isAvailableInContext:?];

      if ((v102 & 1) == 0)
      {

LABEL_111:
        *i = MEMORY[0x1E69E7CC0];
        return;
      }
    }
  }

LABEL_8:
  v12 = v132;
  v13 = 0;
  v145 = MEMORY[0x1E69E7CC0];
  v131 = v132 & 0xC000000000000001;
  v127 = v132 + 32;
  v139 = MEMORY[0x1E69E7CC0];
  v140 = OBJC_IVAR___WFSwiftAppShortcutDataSource_organizationStyle;
  v129 = i;
  while (2)
  {
    v14 = v131;
    sub_1CA275D70(v13, v131 == 0, v12);
    if (v14)
    {
      v15 = MEMORY[0x1CCAA22D0](v13, v12);
    }

    else
    {
      v15 = *(v127 + 8 * v13);
    }

    v16 = __OFADD__(v13, 1);
    v17 = v13 + 1;
    if (v16)
    {
      goto LABEL_146;
    }

    *&v133 = v17;
    *(&v132 + 1) = v15;
    v18 = sub_1CA275DA8(v15);
    v146[0] = MEMORY[0x1E69E7CC0];
    v19 = sub_1CA25B410();
    for (i = 0; v19 != i; ++i)
    {
      if ((v18 & 0xC000000000000001) != 0)
      {
        v20 = MEMORY[0x1CCAA22D0](i, v18);
      }

      else
      {
        if (i >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_119;
        }

        v20 = *(v18 + 8 * i + 32);
      }

      v21 = v20;
      if (__OFADD__(i, 1))
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
        goto LABEL_124;
      }

      v22 = *(v141 + v140);
      if (v22)
      {
        if (v22 == 1)
        {
          if ([v20 isDeprecatedStyle])
          {

            continue;
          }
        }

        else if (v22 != 2)
        {
          v147 = *(v141 + v140);
          goto LABEL_149;
        }
      }

      sub_1CA94D4D8();
      v23 = *(v146[0] + 16);
      sub_1CA94D518();
      sub_1CA94D528();
      sub_1CA94D4E8();
    }

    v24 = v146[0];
    v147 = MEMORY[0x1E69E7CC0];
    i = sub_1CA25B410();
    v25 = v24 & 0xC000000000000001;

    v26 = 0;
    v143 = v24;
    while (i != v26)
    {
      if (v25)
      {
        v27 = MEMORY[0x1CCAA22D0](v26, v24);
      }

      else
      {
        if (v26 >= *(v24 + 16))
        {
          goto LABEL_121;
        }

        v27 = *(v24 + 8 * v26 + 32);
      }

      v28 = v27;
      if (__OFADD__(v26, 1))
      {
        goto LABEL_120;
      }

      v29 = [v27 phrase];
      v30 = [v29 parameterIdentifier];

      v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443BC8, &qword_1CA9834A0);
      v32 = (*(*(v31 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
      MEMORY[0x1EEE9AC00](v31 - 8);
      v34 = &v126 - v33;
      if (v30)
      {
        sub_1CA948CF8();

        v35 = sub_1CA948D28();
        __swift_storeEnumTagSinglePayload(v34, 0, 1, v35);
        sub_1CA532E30(v34, &qword_1EC443BC8, &qword_1CA9834A0);
        sub_1CA94D4D8();
        v36 = *(v147 + 16);
        sub_1CA94D518();
        sub_1CA94D528();
        sub_1CA94D4E8();
      }

      else
      {

        v37 = sub_1CA948D28();
        __swift_storeEnumTagSinglePayload(v34, 1, 1, v37);
        sub_1CA532E30(v34, &qword_1EC443BC8, &qword_1CA9834A0);
      }

      ++v26;
      v24 = v143;
    }

    v38 = v147;
    if (!sub_1CA25B410())
    {

      sub_1CA278368(v24);

      goto LABEL_94;
    }

    v128 = v38;
    v39 = MEMORY[0x1E69E7CC0];
    v147 = MEMORY[0x1E69E7CC0];
    i = sub_1CA25B410();
    v40 = 0;
    v138 = v39;
LABEL_40:
    v41 = v143;
    while (i != v40)
    {
      if (v25)
      {
        v42 = MEMORY[0x1CCAA22D0](v40, v41);
      }

      else
      {
        if (v40 >= *(v41 + 16))
        {
          goto LABEL_123;
        }

        v42 = *(v41 + 8 * v40 + 32);
      }

      v43 = v42;
      if (__OFADD__(v40, 1))
      {
        goto LABEL_122;
      }

      v44 = [v42 namedQueryInfo];
      if (v44)
      {
        v45 = v44;
        v144 = v44;
        MEMORY[0x1EEE9AC00](v44);
        v125[2] = &v144;
        v46 = v138;
        sub_1CA94C218();
        v47 = v142;
        v48 = sub_1CA2BFDC4(sub_1CA5FBA48, v125, v46);
        v142 = v47;

        if ((v48 & 1) == 0)
        {
          MEMORY[0x1CCAA1490](v49);
          if (*((v147 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v147 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_1CA94C698();
          }

          sub_1CA94C6E8();
          v138 = v147;

          ++v40;
          goto LABEL_40;
        }

        v41 = v143;
      }

      else
      {
        v45 = v43;
      }

      ++v40;
    }

    v12 = v138;
    *(&v134 + 1) = sub_1CA25B410();
    if (!*(&v134 + 1))
    {
LABEL_88:
      if (sub_1CA25B410())
      {
        v85 = *(v141 + v140);
        i = v129;
        if (v85 != 2)
        {
          if (v85 == 1)
          {

            sub_1CA278368(v41);

            goto LABEL_106;
          }

          if (v85)
          {
            goto LABEL_150;
          }
        }

        v86 = v41;

        v87 = qword_1EDB9F960;
        v88 = v137;
        sub_1CA94C218();
        if (v87 != -1)
        {
          swift_once();
        }

        v89 = v135;
        v90 = sub_1CA2786EC(v135, v88);
        if (v91)
        {
          v92 = v90;
          v93 = v91;
        }

        else
        {
          sub_1CA94C218();
          v92 = v89;
          v93 = v88;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v98 = *(v139 + 16);
          sub_1CA278A8C();
          v139 = v99;
        }

        v94 = *(v139 + 16);
        if (v94 >= *(v139 + 24) >> 1)
        {
          sub_1CA278A8C();
          v139 = v100;
        }

        v95 = v139;
        *(v139 + 16) = v94 + 1;
        v96 = (v95 + 48 * v94);
        v96[4] = v92;
        v96[5] = v93;
        v97 = v137;
        v96[6] = v135;
        v96[7] = v97;
        v96[8] = 0;
        v96[9] = v86;

LABEL_106:
        v12 = v132;
        v13 = v133;
        if (v133 == v130)
        {
          goto LABEL_114;
        }

        continue;
      }

LABEL_94:
      i = v129;
      goto LABEL_106;
    }

    break;
  }

  v50 = 0;
  *(&v133 + 1) = v12 + 32;
  *&v134 = v12 & 0xC000000000000001;
LABEL_57:
  v51 = v134;
  sub_1CA275D70(v50, v134 == 0, v12);
  if (v51)
  {
    v52 = MEMORY[0x1CCAA22D0](v50, v12);
  }

  else
  {
    v52 = *(*(&v133 + 1) + 8 * v50);
  }

  v143 = v52;
  v16 = __OFADD__(v50, 1);
  v14 = v50 + 1;
  if (v16)
  {
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
LABEL_146:
    __break(1u);
LABEL_147:
    swift_once();
LABEL_116:
    v104 = v135;
    v105 = sub_1CA2786EC(v135, v14);
    if (v106)
    {
      v107 = v105;
      v108 = v106;
    }

    else
    {
      sub_1CA94C218();
      v107 = v104;
      v108 = v14;
    }

    v109 = *(v141 + v140);
    switch(v109)
    {
      case 0:
        goto LABEL_134;
      case 1:

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v122 = *(v139 + 16);
          sub_1CA278A8C();
          v139 = v123;
        }

        v110 = v137;
        v111 = v139;
        v112 = *(v139 + 16);
        if (v112 >= *(v139 + 24) >> 1)
        {
          sub_1CA278A8C();
          v110 = v137;
          v111 = v124;
        }

        *(v111 + 16) = v112 + 1;
        v113 = (v111 + 48 * v112);
        v113[4] = v107;
        v113[5] = v108;
        v113[6] = v135;
        v113[7] = v110;
        v113[8] = 0;
        v113[9] = v12;
        i = v129;
        goto LABEL_139;
      case 2:
LABEL_134:

        v114 = v139;
        v115 = *(v139 + 16);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v147 = v114;
        if (!isUniquelyReferenced_nonNull_native || v115 >= *(v114 + 24) >> 1)
        {
          sub_1CA278A8C();
          v139 = v121;
          v147 = v121;
        }

        v146[1] = v108;
        v146[2] = v135;
        v146[3] = v137;
        v146[4] = 0;
        v146[5] = v12;
        sub_1CA278CF8(0, 0, 1, v146, v117, v118, v119, v120, v126, v127, v128, v129, v130, v131, v132, v133, v134, v135, v136, v137, v138, v139, v140, v141, v142, v143, v144, v145, v107);
        goto LABEL_138;
    }

    v146[0] = *(v141 + v140);
    while (1)
    {
LABEL_149:
      sub_1CA94D838();
      __break(1u);
LABEL_150:
      v144 = v85;
    }
  }

  v136 = v14;
  v144 = MEMORY[0x1E69E7CC0];
  v53 = sub_1CA25B410();
  v54 = 0;
  v55 = v41 & 0xC000000000000001;
  v56 = v41 & 0xFFFFFFFFFFFFFF8;
  while (1)
  {
    if (v53 == v54)
    {
      v64 = v144;
      sub_1CA94C218();
      v65 = v142;
      sub_1CA5FAE3C(v146, v64);
      v12 = v66;
      v142 = v65;
      v67 = v146[0];
      v68 = sub_1CA25B410();
      v14 = v68 - v12;
      if (v68 < v12)
      {
        goto LABEL_141;
      }

      if (v12 < 0)
      {
        goto LABEL_142;
      }

      if (sub_1CA277E14(v67) < v68)
      {
        goto LABEL_143;
      }

      v16 = __OFSUB__(0, v14);
      v14 = -v14;
      if (v16)
      {
        goto LABEL_144;
      }

      v69 = sub_1CA25B410();
      v16 = __OFADD__(v69, v14);
      v70 = v69 + v14;
      if (v16)
      {
        goto LABEL_145;
      }

      sub_1CA277E18(v70, 1);
      sub_1CA6B0248();
      v71 = v146[0];
      sub_1CA94C218();
      v72 = v143;
      v73 = [v72 name];
      v74 = sub_1CA94C3A8();
      v76 = v75;

      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v77 = v139;
      }

      else
      {
        v82 = *(v139 + 16);
        sub_1CA278A8C();
        v77 = v83;
      }

      v78 = *(v77 + 16);
      if (v78 >= *(v77 + 24) >> 1)
      {
        sub_1CA278A8C();
        v139 = v84;
      }

      else
      {
        v139 = v77;
      }

      v12 = v138;
      v79 = v139;
      *(v139 + 16) = v78 + 1;
      v80 = (v79 + 48 * v78);
      v80[4] = v74;
      v80[5] = v76;
      v50 = v136;
      v81 = v137;
      v80[6] = v135;
      v80[7] = v81;
      v80[8] = v143;
      v80[9] = v64;
      v41 = v71;
      if (v50 == *(&v134 + 1))
      {
        goto LABEL_88;
      }

      goto LABEL_57;
    }

    if (v55)
    {
      v57 = MEMORY[0x1CCAA22D0](v54, v41);
    }

    else
    {
      if (v54 >= *(v56 + 16))
      {
        goto LABEL_113;
      }

      v57 = *(v41 + 8 * v54 + 32);
    }

    v58 = v57;
    if (__OFADD__(v54, 1))
    {
      break;
    }

    v59 = [v57 namedQueryInfo];
    if (v59)
    {
      v60 = v59;
      i = v41;
      sub_1CA25B3D0(0, &qword_1EDB9F6D8, 0x1E69E0990);
      v61 = v143;
      v62 = sub_1CA94CFD8();

      if (v62)
      {
        sub_1CA94D4D8();
        v63 = v144[2];
        sub_1CA94D518();
        sub_1CA94D528();
        sub_1CA94D4E8();
      }

      else
      {
      }

      v41 = i;
    }

    else
    {
    }

    ++v54;
  }

  __break(1u);
LABEL_113:
  __break(1u);
LABEL_114:
  v12 = v145;
  if (sub_1CA25B410())
  {
    v103 = qword_1EDB9F960;
    v14 = v137;
    sub_1CA94C218();
    sub_1CA94C218();
    if (v103 == -1)
    {
      goto LABEL_116;
    }

    goto LABEL_147;
  }

LABEL_124:

LABEL_138:
  v111 = v139;
LABEL_139:
  *i = v111;
}

id sub_1CA275C94(uint64_t a1, uint64_t a2, char a3)
{
  v11[1] = *MEMORY[0x1E69E9840];
  v5 = sub_1CA94C368();

  v11[0] = 0;
  v6 = [v3 initWithBundleIdentifier:v5 allowPlaceholder:a3 & 1 error:v11];

  if (v6)
  {
    v7 = v11[0];
  }

  else
  {
    v8 = v11[0];
    sub_1CA948AD8();

    swift_willThrow();
  }

  v9 = *MEMORY[0x1E69E9840];
  return v6;
}

unint64_t sub_1CA275D84(unint64_t result, char a2, uint64_t a3)
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

id sub_1CA275DA8(_DWORD *a1)
{
  v138[4] = *MEMORY[0x1E69E9840];
  v4 = sub_1CA949F78();
  v5 = OUTLINED_FUNCTION_1_0(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_2_1();
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = &v119 - v12;
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = &v119 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v119 - v17;
  if ([objc_opt_self() isAppShortcutDenyListed:a1 inEnvironment:1])
  {
    v19 = *MEMORY[0x1E69E1088];
    sub_1CA949C58();
    v20 = a1;
    v21 = sub_1CA949F68();
    v22 = sub_1CA94CBF8();

    if (os_log_type_enabled(v21, v22))
    {
      OUTLINED_FUNCTION_29_0();
      swift_slowAlloc();
      v23 = OUTLINED_FUNCTION_131();
      *a1 = 138412290;
      *(a1 + 1) = v20;
      *v23 = v20;
      v24 = v20;
      _os_log_impl(&dword_1CA256000, v21, v22, "App Shortcut %@ deny listed, skipping", a1, 0xCu);
      sub_1CA532E30(v23, &qword_1EC444AE0, &qword_1CA985B70);
      OUTLINED_FUNCTION_154();
      MEMORY[0x1CCAA4BF0]();
      OUTLINED_FUNCTION_154();
      MEMORY[0x1CCAA4BF0]();
    }

    (*(v7 + 8))(v13, v4);
    goto LABEL_71;
  }

  v124 = v2;
  v25 = [a1 orderedPhrases];
  v131 = sub_1CA25B3D0(0, &qword_1EDB9F6D0, 0x1E69ACDA8);
  sub_1CA94C658();

  v26 = sub_1CA25B410();

  if (!v26)
  {
    v56 = *MEMORY[0x1E69E1088];
    sub_1CA949C58();
    v57 = a1;
    v58 = sub_1CA949F68();
    v59 = sub_1CA94CBF8();

    if (os_log_type_enabled(v58, v59))
    {
      OUTLINED_FUNCTION_29_0();
      swift_slowAlloc();
      v60 = OUTLINED_FUNCTION_131();
      *a1 = 138412290;
      *(a1 + 1) = v57;
      *v60 = v57;
      v61 = v57;
      _os_log_impl(&dword_1CA256000, v58, v59, "App Shortcut %@ contains no phrases, skipping", a1, 0xCu);
      sub_1CA532E30(v60, &qword_1EC444AE0, &qword_1CA985B70);
      OUTLINED_FUNCTION_154();
      MEMORY[0x1CCAA4BF0]();
      OUTLINED_FUNCTION_154();
      MEMORY[0x1CCAA4BF0]();
    }

    (*(v7 + 8))(v16, v4);
    goto LABEL_71;
  }

  v27 = WFAllGroupedPhrasesForAutoShortcut();
  if (!v27)
  {
    v95 = *MEMORY[0x1E69E1088];
    sub_1CA949C58();
    v96 = a1;
    v97 = sub_1CA949F68();
    v98 = sub_1CA94CC18();

    if (os_log_type_enabled(v97, v98))
    {
      OUTLINED_FUNCTION_29_0();
      swift_slowAlloc();
      v99 = OUTLINED_FUNCTION_131();
      *a1 = 138412290;
      *(a1 + 1) = v96;
      *v99 = v96;
      v100 = v96;
      _os_log_impl(&dword_1CA256000, v97, v98, "Unable to grab grouped phrases for %@", a1, 0xCu);
      sub_1CA532E30(v99, &qword_1EC444AE0, &qword_1CA985B70);
      OUTLINED_FUNCTION_154();
      MEMORY[0x1CCAA4BF0]();
      OUTLINED_FUNCTION_154();
      MEMORY[0x1CCAA4BF0]();
    }

    (*(v7 + 8))(v18, v4);
    goto LABEL_71;
  }

  v28 = v27;
  v122 = a1;
  v123 = v1;
  v120 = v7;
  v121 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC447178, &unk_1CA98EAD8);
  v29 = sub_1CA94C658();

  v30 = 0;
  v125 = 0;
  v31 = *(v29 + 16);
  v129 = v29;
  v134 = (v29 + 32);
  v32 = MEMORY[0x1E69E7CC0];
  v128 = v31;
  while (v30 != v31)
  {
    if (v30 >= *(v129 + 16))
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
    }

    v33 = v134[v30];
    if (v33 >> 62)
    {
      if (v33 < 0)
      {
        v55 = v134[v30];
      }

      v34 = sub_1CA94D328();
    }

    else
    {
      v34 = *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v35 = v32 >> 62;
    if (v32 >> 62)
    {
      v36 = sub_1CA94D328();
    }

    else
    {
      v36 = *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v37 = v36 + v34;
    if (__OFADD__(v36, v34))
    {
      goto LABEL_85;
    }

    sub_1CA94C218();
    if (!swift_isUniquelyReferenced_nonNull_bridgeObject())
    {
      if (v35)
      {
LABEL_22:
        sub_1CA94D328();
      }

      else
      {
        v38 = v32 & 0xFFFFFFFFFFFFFF8;
LABEL_21:
        v39 = *(v38 + 16);
      }

      v32 = sub_1CA94D488();
      v38 = v32 & 0xFFFFFFFFFFFFFF8;
      goto LABEL_24;
    }

    if (v35)
    {
      goto LABEL_22;
    }

    v38 = v32 & 0xFFFFFFFFFFFFFF8;
    if (v37 > *((v32 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      goto LABEL_21;
    }

LABEL_24:
    ++v30;
    v40 = *(v38 + 16);
    v41 = (*(v38 + 24) >> 1) - v40;
    v42 = v38 + 8 * v40;
    v135 = v38;
    if (v33 >> 62)
    {
      v45 = sub_1CA94D328();
      if (!v45)
      {
        goto LABEL_38;
      }

      v46 = v45;
      v47 = sub_1CA94D328();
      if (v41 < v47)
      {
        goto LABEL_92;
      }

      if (v46 < 1)
      {
        goto LABEL_93;
      }

      v43 = v47;
      v132 = v34;
      v133 = v30;
      v130 = v32;
      sub_1CA276B44(&qword_1EDB9F798, &qword_1EC447178, &unk_1CA98EAD8);
      for (i = 0; i != v46; ++i)
      {
        v49 = sub_1CA276BDC(v138, i, v33);
        v51 = *v50;
        v49(v138, 0);
        *(v42 + 32 + 8 * i) = v51;
      }

      v32 = v130;
      v34 = v132;
      v30 = v133;
      v31 = v128;
LABEL_34:

      if (v43 < v34)
      {
        goto LABEL_86;
      }

      if (v43 > 0)
      {
        v52 = *(v135 + 16);
        v53 = __OFADD__(v52, v43);
        v54 = v52 + v43;
        if (v53)
        {
          goto LABEL_90;
        }

        *(v135 + 16) = v54;
      }
    }

    else
    {
      v43 = *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v43)
      {
        if (v41 < v43)
        {
          goto LABEL_91;
        }

        v44 = *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10);
        swift_arrayInitWithCopy();
        goto LABEL_34;
      }

LABEL_38:

      if (v34 > 0)
      {
        goto LABEL_86;
      }
    }
  }

  v62 = sub_1CA25B410();
  v63 = 0;
  v127 = v32 & 0xC000000000000001;
  v128 = v62;
  v126 = v32 & 0xFFFFFFFFFFFFFF8;
  v64 = MEMORY[0x1E69E7CC0];
  v130 = v32;
  while (v128 != v63)
  {
    if (v127)
    {
      v65 = MEMORY[0x1CCAA22D0](v63, v32);
    }

    else
    {
      if (v63 >= *(v126 + 16))
      {
        goto LABEL_88;
      }

      v65 = *(v32 + 8 * v63 + 32);
    }

    v66 = v65;
    if (__OFADD__(v63, 1))
    {
      goto LABEL_87;
    }

    v135 = v64;
    v67 = sub_1CA948D28();
    v134 = &v119;
    v68 = OUTLINED_FUNCTION_1_0(v67);
    v133 = v69;
    v71 = *(v70 + 64);
    MEMORY[0x1EEE9AC00](v68);
    v132 = &v119 - ((v72 + 15) & 0xFFFFFFFFFFFFFFF0);
    v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443BC8, &qword_1CA9834A0);
    v131 = &v119;
    v74 = *(*(v73 - 8) + 64);
    v75 = MEMORY[0x1EEE9AC00](v73 - 8);
    v76 = (v74 + 15) & 0xFFFFFFFFFFFFFFF0;
    MEMORY[0x1EEE9AC00](v75);
    v77 = v66;
    v78 = [v77 parameterIdentifier];
    if (MEMORY[0x1EEE9AC00](v78))
    {
      sub_1CA948CF8();

      v79 = 0;
    }

    else
    {
      v79 = 1;
    }

    __swift_storeEnumTagSinglePayload(&v119 - v76, v79, 1, v67);
    sub_1CA276D6C(&v119 - v76, &v119 - v76);
    sub_1CA276D6C(&v119 - v76, &v119 - v76);

    if (__swift_getEnumTagSinglePayload(&v119 - v76, 1, v67) == 1)
    {
      sub_1CA532E30(&v119 - v76, &qword_1EC443BC8, &qword_1CA9834A0);
      v32 = v130;
      v64 = v135;
    }

    else
    {
      v80 = *(v133 + 32);
      v80(v132, &v119 - v76, v67);
      v64 = v135;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v32 = v130;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v83 = *(v64 + 16);
        sub_1CA2E5E9C();
        v64 = v84;
      }

      v82 = *(v64 + 16);
      if (v82 >= *(v64 + 24) >> 1)
      {
        sub_1CA2E5E9C();
        v64 = v85;
      }

      *(v64 + 16) = v82 + 1;
      v80((v64 + ((*(v133 + 80) + 32) & ~*(v133 + 80)) + *(v133 + 72) * v82), v132, v67);
    }

    ++v63;
  }

  if (*(v64 + 16))
  {
    v86 = v123;
    v87 = *&v123[OBJC_IVAR___WFSwiftAppShortcutDataSource_appShortcutsProvider];
    sub_1CA948D28();
    v88 = sub_1CA94C648();

    v138[0] = 0;
    v89 = [v87 propertiesForIdentifiers:v88 error:v138];

    v90 = v138[0];
    v91 = v122;
    v92 = v129;
    if (v89)
    {
      sub_1CA25B3D0(0, &qword_1EDB9FB20, 0x1E69AC950);
      sub_1CA277284();
      v93 = sub_1CA94C1C8();
      v94 = v90;

      goto LABEL_74;
    }

    v107 = v138[0];

    v108 = sub_1CA948AD8();

    swift_willThrow();
    v109 = *MEMORY[0x1E69E1088];
    sub_1CA949C58();
    v110 = v86;
    v111 = v108;
    v112 = sub_1CA949F68();
    v113 = sub_1CA94CC18();

    if (os_log_type_enabled(v112, v113))
    {
      v114 = swift_slowAlloc();
      v115 = swift_slowAlloc();
      *v114 = 138412546;
      *(v114 + 4) = v110;
      *v115 = v110;
      *(v114 + 12) = 2112;
      v116 = v110;
      v117 = v108;
      v118 = _swift_stdlib_bridgeErrorToNSError();
      *(v114 + 14) = v118;
      v115[1] = v118;
      _os_log_impl(&dword_1CA256000, v112, v113, "Error grabbing App Shortcut parameters for %@: %@", v114, 0x16u);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444AE0, &qword_1CA985B70);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_154();
      MEMORY[0x1CCAA4BF0]();
      OUTLINED_FUNCTION_154();
      MEMORY[0x1CCAA4BF0]();
    }

    (*(v120 + 8))(v124, v121);
LABEL_71:
    result = MEMORY[0x1E69E7CC0];
LABEL_72:
    v102 = *MEMORY[0x1E69E9840];
  }

  else
  {

    sub_1CA948D28();
    sub_1CA25B3D0(0, &qword_1EDB9FB20, 0x1E69AC950);
    sub_1CA277284();
    v93 = sub_1CA94C1E8();
    v86 = v123;
    v91 = v122;
    v92 = v129;
LABEL_74:
    v103 = *(v92 + 16);
    if (!v103)
    {

      goto LABEL_71;
    }

    v138[0] = MEMORY[0x1E69E7CC0];
    sub_1CA94D508();
    v104 = 0;
    while (1)
    {
      if (v104 >= *(v92 + 16))
      {
        goto LABEL_89;
      }

      v136 = *(v92 + 8 * v104 + 32);
      sub_1CA94C218();
      v105 = v125;
      sub_1CA2772D0(&v136, v93, v91, v86, &v137);

      v125 = v105;
      if (v105)
      {
        break;
      }

      ++v104;
      sub_1CA94D4D8();
      v106 = *(v138[0] + 2);
      sub_1CA94D518();
      sub_1CA94D528();
      sub_1CA94D4E8();
      if (v103 == v104)
      {

        result = v138[0];
        goto LABEL_72;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1CA276B44(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1CA276B98(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    OUTLINED_FUNCTION_5_3();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1CA276BDC(uint64_t a1, unint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_0_7(a1, a2, a3);
  if (v4)
  {
    v5 = OUTLINED_FUNCTION_47_0();
  }

  else
  {
    OUTLINED_FUNCTION_48();
  }

  *v3 = v5;
  return OUTLINED_FUNCTION_17();
}

uint64_t OUTLINED_FUNCTION_45_1()
{

  return swift_arrayInitWithCopy();
}

uint64_t OUTLINED_FUNCTION_206(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
}

uint64_t OUTLINED_FUNCTION_45_3()
{
  v1 = v0[64];
  result = v0[60];
  v3 = v0[55];
  v4 = v0[28];
  return result;
}

uint64_t OUTLINED_FUNCTION_45_5()
{

  return sub_1CA94CC68();
}

void OUTLINED_FUNCTION_45_6()
{
  v2 = v0[176];
  v3 = v0[175];
  *(v1 - 104) = v0[174];
  v4 = v0[139];
  v5 = v0[137];
  v6 = v0[136];
  v7 = v0[135];
}

uint64_t OUTLINED_FUNCTION_45_8()
{
  v2 = v0[9];
  v4 = v0[8];
  v5 = v0[7];
}

uint64_t sub_1CA276D6C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443BC8, &qword_1CA9834A0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1CA277284()
{
  result = qword_1EDB9FA28;
  if (!qword_1EDB9FA28)
  {
    sub_1CA948D28();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB9FA28);
  }

  return result;
}

uint64_t sub_1CA2772D0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v6 = v5;
  v128[4] = *MEMORY[0x1E69E9840];
  v12 = sub_1CA949F78();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v117 = &v108 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v120 = &v108 - v17;
  v18 = *a1;
  v127 = v18;
  if (!sub_1CA25B410())
  {
    __break(1u);
    goto LABEL_47;
  }

  if (!sub_1CA25B410())
  {
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  sub_1CA275D70(0, (v18 & 0xC000000000000001) == 0, v18);
  if ((v18 & 0xC000000000000001) == 0)
  {
    v19 = *(v18 + 32);
    sub_1CA94C218();
    v20 = v19;
    goto LABEL_5;
  }

LABEL_48:
  sub_1CA94C218();
  v20 = MEMORY[0x1CCAA22D0](0, v18);
LABEL_5:
  v21 = v20;
  if (!sub_1CA25B410())
  {
    goto LABEL_51;
  }

  if (sub_1CA277E14(v18) < 1)
  {
    __break(1u);
    goto LABEL_50;
  }

  v22 = sub_1CA25B410();
  v23 = __OFSUB__(v22, 1);
  v24 = v22 - 1;
  if (v23)
  {
LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
  }

  v121 = a4;
  v118 = v13;
  v119 = v12;
  sub_1CA277E18(v24, 1);
  sub_1CA278034();
  v25 = v127;
  v26 = sub_1CA948D28();
  v124 = *(v26 - 8);
  v125 = v26;
  v27 = *(v124 + 64);
  MEMORY[0x1EEE9AC00](v26);
  v29 = &v108 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = [v21 parameterIdentifier];
  if (v30)
  {
    v31 = v30;
    v122 = v21;
    v123 = v25;
    sub_1CA948CF8();

    v32 = sub_1CA311AFC(v29, a2);
    if (v32)
    {
      v33 = v32;
      v34 = [v32 value];
      if (v34 && (v35 = v34, v36 = [v34 displayRepresentation], v35, v36))
      {
        v115 = v6;
        v116 = [v36 image];
        if (v116 || (v116 = sub_1CA25B3D0(0, &unk_1EDB9F6C0, 0x1E69AC870), v37 = [a3 systemImageName], v38 = sub_1CA94C3A8(), v40 = v39, v37, (v116 = sub_1CA5FA86C(v38, v40)) != 0))
        {
          v111 = &v108;
          v114 = a3;
          v112 = a5;
          v41 = sub_1CA948E58();
          v42 = v36;
          v43 = *(v41 - 8);
          v44 = *(v43 + 64);
          MEMORY[0x1EEE9AC00](v41);
          v46 = &v108 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
          sub_1CA948DE8();
          sub_1CA948D48();
          (*(v43 + 8))(v46, v41);
          v47 = [v36 title];
          v48 = sub_1CA94C368();
          v49 = [v47 localizedStringForLocaleIdentifier_];

          v50 = sub_1CA94C3A8();
          v113 = v51;

          v110 = v42;
          v52 = [v42 subtitle];
          v109 = v50;
          if (v52)
          {
            v53 = v52;
            v54 = sub_1CA94C368();
            v55 = [v53 localizedStringForLocaleIdentifier_];

            v108 = sub_1CA94C3A8();
            v57 = v56;
          }

          else
          {
            v108 = 0;
            v57 = 0;
          }

          v63 = v116;
          v64 = v123;
          v65 = *(v121 + OBJC_IVAR___WFSwiftAppShortcutDataSource_organizationStyle);
          if (v65 >= 2)
          {
            if (v65 != 2)
            {
              v128[0] = *(v121 + OBJC_IVAR___WFSwiftAppShortcutDataSource_organizationStyle);
              result = sub_1CA94D838();
              __break(1u);
              return result;
            }

            v67 = v57;

            sub_1CA948CC8();
            v68 = sub_1CA94C368();

            v66 = [v63 spotlightIconWithParameterIdentifier_];

            v64 = v123;
            v57 = v67;
          }

          else
          {

            v66 = [v63 contextualActionIcon];
          }

          v69 = v114;
          if (!v66)
          {
            v79 = 0;

            v86 = *MEMORY[0x1E69E1088];
            sub_1CA949C58();
            v87 = v63;
            v88 = sub_1CA949F68();
            v89 = sub_1CA94CC18();

            if (os_log_type_enabled(v88, v89))
            {
              v90 = swift_slowAlloc();
              v91 = swift_slowAlloc();
              *v90 = 138412290;
              *(v90 + 4) = v87;
              *v91 = v87;
              v92 = v87;
              _os_log_impl(&dword_1CA256000, v88, v89, "App Shortcut has image representation but unable to extract data: %@", v90, 0xCu);
              sub_1CA532E30(v91, &qword_1EC444AE0, &qword_1CA985B70);
              MEMORY[0x1CCAA4BF0](v91, -1, -1);
              v93 = v90;
              v64 = v123;
              MEMORY[0x1CCAA4BF0](v93, -1, -1);
            }

            (*(v118 + 8))(v120, v119);
            v84 = 0;
            v69 = v114;
            goto LABEL_39;
          }

          v121 = v57;
          v70 = v66;
          v71 = [v33 value];
          if (v71 && (v72 = v71, v73 = [v71 value], v72, sub_1CA94D258(), swift_unknownObjectRelease(), sub_1CA25B3D0(0, &unk_1EDB9F6A0, 0x1E69AC7D0), (swift_dynamicCast() & 1) != 0))
          {
            v74 = v126;
            v75 = [objc_opt_self() defaultDatabase];
            v120 = v74;
            v76 = [v74 identifier];
            v77 = [v76 instanceIdentifier];

            if (!v77)
            {
              sub_1CA94C3A8();
              v77 = sub_1CA94C368();
            }

            v128[0] = 0;
            v78 = [v75 badgeTypeForEntityIdentifier:v77 error:{v128, v108, v109}];

            v79 = v66;
            if (!v78)
            {
              v98 = v128[0];
              v99 = sub_1CA948AD8();

              swift_willThrow();
              v100 = *MEMORY[0x1E69E1088];
              sub_1CA949C58();
              v101 = v99;
              v102 = sub_1CA949F68();
              v103 = sub_1CA94CC18();

              if (os_log_type_enabled(v102, v103))
              {
                v104 = swift_slowAlloc();
                v105 = swift_slowAlloc();
                *v104 = 138412290;
                v106 = v99;
                v107 = _swift_stdlib_bridgeErrorToNSError();
                *(v104 + 4) = v107;
                *v105 = v107;
                _os_log_impl(&dword_1CA256000, v102, v103, "Unable to get App Shortcut badge value: %@", v104, 0xCu);
                sub_1CA532E30(v105, &qword_1EC444AE0, &qword_1CA985B70);
                MEMORY[0x1CCAA4BF0](v105, -1, -1);
                MEMORY[0x1CCAA4BF0](v104, -1, -1);
              }

              else
              {
              }

              v64 = v123;
              v82 = v113;
              (*(v118 + 8))(v117, v119);
              v81 = 0;
              v69 = v114;
              goto LABEL_35;
            }

            v80 = v128[0];
            v81 = [v78 unsignedIntegerValue];

            v69 = v114;
          }

          else
          {
            v79 = v66;
            v81 = 0;
          }

          v64 = v123;
          v82 = v113;
LABEL_35:
          v83 = objc_allocWithZone(MEMORY[0x1E69E09B8]);
          v84 = sub_1CA5FAC18(v109, v82, v108, v121, v70, v81);
          v85 = v84;
          v63 = v116;
LABEL_39:
          v94 = objc_allocWithZone(MEMORY[0x1E69E0AE0]);
          v95 = v69;
          v96 = sub_1CA278090(v95, v122, v64, v84);

          result = (*(v124 + 8))(v29, v125);
          *v112 = v96;
          goto LABEL_40;
        }
      }

      else
      {
        v36 = v33;
      }
    }

    v60 = objc_allocWithZone(MEMORY[0x1E69E0AE0]);
    v61 = a3;
    v62 = sub_1CA278090(v61, v122, v123, 0);
    result = (*(v124 + 8))(v29, v125);
    *a5 = v62;
  }

  else
  {
    v58 = objc_allocWithZone(MEMORY[0x1E69E0AE0]);
    result = sub_1CA278090(a3, v21, v25, 0);
    *a5 = result;
  }

LABEL_40:
  v97 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1CA277EA4(uint64_t a1)
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
    sub_1CA94D328();
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
  result = sub_1CA94D488();
  *v1 = result;
  return result;
}

void sub_1CA277F44()
{
  OUTLINED_FUNCTION_37_0();
  v13 = v8 - v7;
  if (__OFSUB__(v8, v7))
  {
    __break(1u);
    goto LABEL_15;
  }

  v2 = v12;
  v0 = v9;
  v4 = v8;
  v14 = *v1;
  v1 = (*v1 & 0xFFFFFFFFFFFFFF8);
  v5 = v1 + 4;
  v3 = &v1[v7 + 4];
  sub_1CA25B3D0(0, v10, v11);
  swift_arrayDestroy();
  v15 = __OFSUB__(v0, v13);
  v13 = v0 - v13;
  if (v15)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (!v13)
  {
    goto LABEL_12;
  }

  v6 = v14 >> 62;
  if (!(v14 >> 62))
  {
    v16 = v1[2];
    goto LABEL_6;
  }

LABEL_16:
  v16 = sub_1CA94D328();
LABEL_6:
  if (__OFSUB__(v16, v4))
  {
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v2(&v5[v4], v16 - v4, v3 + 8 * v0);
  if (v6)
  {
    v17 = sub_1CA94D328();
  }

  else
  {
    v17 = v1[2];
  }

  if (__OFADD__(v17, v13))
  {
    goto LABEL_18;
  }

  v1[2] = v17 + v13;
LABEL_12:
  if (v0 <= 0)
  {
    OUTLINED_FUNCTION_36();
    return;
  }

LABEL_19:
  __break(1u);
}

char *sub_1CA27805C(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[8 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_34(a3, result);
  }

  return result;
}

id sub_1CA278090(void *a1, void *a2, uint64_t a3, void *a4)
{
  v5 = v4;
  if (a3)
  {
    sub_1CA25B3D0(0, &qword_1EDB9F6D0, 0x1E69ACDA8);
    v9 = sub_1CA94C648();
  }

  else
  {
    v9 = 0;
  }

  v10 = [v5 initWithAutoShortcut:a1 phrase:a2 alternatePhrases:v9 entityInfo:a4];

  return v10;
}

uint64_t sub_1CA278154(unint64_t a1, void (*a2)(uint64_t, uint64_t), void (*a3)(uint64_t, void, unint64_t))
{
  v7 = sub_1CA25B418(a1);
  v8 = sub_1CA25B418(*v3);
  v9 = __OFADD__(v8, v7);
  result = v8 + v7;
  if (v9)
  {
    __break(1u);
    goto LABEL_8;
  }

  a2(result, 1);
  v11 = *v3;
  v12 = *v3 & 0xFFFFFFFFFFFFFF8;
  a3(v12 + 8 * *(v12 + 0x10) + 32, (*(v12 + 0x18) >> 1) - *(v12 + 0x10), a1);
  v14 = v13;

  if (v14 < v7)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v14 < 1)
  {
LABEL_6:
    *v3 = v11;
    return result;
  }

  v15 = *(v12 + 16);
  v9 = __OFADD__(v15, v14);
  v16 = v15 + v14;
  if (!v9)
  {
    *(v12 + 16) = v16;
    goto LABEL_6;
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t OUTLINED_FUNCTION_71_2()
{
  result = v0[36];
  v2 = v0[34];
  v3 = *(v0[35] + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_71_3(unint64_t *a1)
{
  v2 = MEMORY[0x1EEE78B28];

  return sub_1CA36DA78(a1, v2);
}

void OUTLINED_FUNCTION_71_5()
{
  v3 = v0[182];
  v4 = v0[178];
  v5 = v0[175];
  *(v1 - 96) = v0[179];
  *(v1 - 88) = v5;
  v6 = v0[65];
  v7 = v0[61];
  v8 = v0[45];
  v9 = v0[46];
  v10 = v0[44];
  v12 = v0[24];
  v11 = v0[25];
  v13 = v0[23];
}

id sub_1CA2785E8()
{
  type metadata accessor for AppNameCache();
  v0 = swift_allocObject();
  result = [objc_allocWithZone(MEMORY[0x1E695DEE0]) init];
  *(v0 + 16) = result;
  qword_1EDB9F968 = v0;
  return result;
}

uint64_t sub_1CA2786EC(uint64_t a1, uint64_t a2)
{
  v5 = sub_1CA949F78();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5);
  v7 = sub_1CA94C368();
  v8 = *(v2 + 16);
  if ([v8 objectForKey_])
  {

    if (swift_dynamicCast())
    {
      return v14;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v10 = objc_allocWithZone(MEMORY[0x1E69635F8]);
    sub_1CA94C218();
    v11 = sub_1CA275C94(a1, a2, 0);
    v12 = [v11 localizedName];
    if (!v12)
    {
      sub_1CA94C3A8();
      v12 = sub_1CA94C368();
    }

    v9 = sub_1CA94C3A8();
    [v8 setObject:v12 forKey:v7];
  }

  return v9;
}

void sub_1CA278A8C()
{
  OUTLINED_FUNCTION_39_2();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_7_1();
  if (v6 == v7)
  {
LABEL_7:
    OUTLINED_FUNCTION_15_0(v5);
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443960, &qword_1CA981A58);
      v8 = OUTLINED_FUNCTION_31_0();
      OUTLINED_FUNCTION_5_7(v8);
      if (v1)
      {
LABEL_9:
        v9 = OUTLINED_FUNCTION_14_3();
        sub_1CA278E60(v9, v10, v11);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443F50, &qword_1CA981A60);
    OUTLINED_FUNCTION_24_2();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_22_0();
  if (!v6)
  {
    OUTLINED_FUNCTION_6_3();
    goto LABEL_7;
  }

  __break(1u);
}

uint64_t OUTLINED_FUNCTION_57()
{
  v2 = *(v0 - 96);

  return sub_1CA94C358();
}

uint64_t OUTLINED_FUNCTION_57_1()
{

  return sub_1CA94D3E8();
}

uint64_t OUTLINED_FUNCTION_57_2()
{

  return sub_1CA94D7F8();
}

void OUTLINED_FUNCTION_57_3(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t OUTLINED_FUNCTION_57_4()
{
  result = v0[43];
  v3 = v0[34];
  v4 = v0[26];
  v6 = v0[23];
  v5 = v0[24];
  *(v1 - 96) = v0[18];
  v7 = v0[15];
  return result;
}

uint64_t OUTLINED_FUNCTION_57_5(uint64_t a1)
{

  return sub_1CA2B8FA4(0, a1 & ~(a1 >> 63), 0);
}

uint64_t OUTLINED_FUNCTION_57_9()
{
  v3 = *(v0 + 480);
  v4 = *(v0 + 336);
  *(v1 - 104) = *(v0 + 344);
  v5 = *(v0 + 296);
  v6 = *(v0 + 304);
  v7 = *(v0 + 280);
  v8 = *(*(v1 - 112) + 272);
  v9 = *(*(v1 - 112) + 256);
  v10 = *(*(v1 - 112) + 208);
  v11 = *(*(v1 - 112) + 80);
  v12 = *(*(v1 - 112) + 72);

  return sub_1CA94A9F8();
}

id OUTLINED_FUNCTION_57_10()
{

  return sub_1CA538038();
}

uint64_t OUTLINED_FUNCTION_57_11(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, __int128 a39)
{
  *(v41 + 16) = v40;

  return sub_1CA27F268(&a39, v41 + 40 * v39 + 32);
}

void sub_1CA278CF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, __int128 a15, __int128 a16, __int128 a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29)
{
  OUTLINED_FUNCTION_43_0();
  a28 = v30;
  a29 = v35;
  v36 = v32 - v31;
  if (__OFSUB__(v32, v31))
  {
    __break(1u);
    goto LABEL_13;
  }

  v37 = v34;
  v38 = v33;
  v39 = v32;
  v40 = v31;
  v41 = *v29;
  v42 = *v29 + 32;
  v43 = v42 + 48 * v31;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443F50, &qword_1CA981A60);
  swift_arrayDestroy();
  v44 = __OFSUB__(v38, v36);
  v45 = v38 - v36;
  if (v44)
  {
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v46 = v43 + 48 * v38;
  if (!v45)
  {
    goto LABEL_7;
  }

  v47 = *(v41 + 16);
  if (__OFSUB__(v47, v39))
  {
    goto LABEL_14;
  }

  sub_1CA278E60(v42 + 48 * v39, v47 - v39, v46);
  v48 = *(v41 + 16);
  v44 = __OFADD__(v48, v45);
  v49 = v48 + v45;
  if (!v44)
  {
    *(v41 + 16) = v49;
LABEL_7:
    if (v38 > 0)
    {
      v50 = v37[1];
      a15 = *v37;
      a16 = v50;
      a17 = v37[2];
      v51 = (v41 + 48 * v40);
      v51[2] = a15;
      v51[3] = v50;
      v51[4] = a17;
      if ((v51 + 5) >= v46)
      {
LABEL_11:
        OUTLINED_FUNCTION_42_0();
        return;
      }

      sub_1CA2D9D20(v37, &a9, &qword_1EC4481C0, &qword_1CA992038);
      __break(1u);
    }

    sub_1CA27080C(v37, &qword_1EC4481C0, &qword_1CA992038);
    goto LABEL_11;
  }

LABEL_15:
  __break(1u);
}

char *sub_1CA278E64(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[48 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_34(a3, result);
  }

  return result;
}

uint64_t sub_1CA278E8C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  v1 = v0;
  return sub_1CA94A0A8();
}

uint64_t sub_1CA278F60()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1CA94A098();

  return v1;
}

uint64_t sub_1CA278FD4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_1CA278F60();
  *a2 = result;
  return result;
}

uint64_t sub_1CA279010()
{
  v0 = sub_1CA94C218();
  v1 = sub_1CA2796A4(v0);
  v2 = v1 + 64;
  v3 = 1 << *(v1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(v1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v1;
  sub_1CA94C218();
  v8 = 0;
  v87 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v9 = v8;
    if (!v5)
    {
      break;
    }

LABEL_8:
    v10 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v11 = v10 | (v8 << 6);
    v12 = (v7[6] + 16 * v11);
    v13 = *v12;
    v14 = v12[1];
    v15 = *(v7[7] + 8 * v11);
    sub_1CA94C218();
    sub_1CA94C218();
    sub_1CA27A2EC(v13, v14, v15, &v90.bundleIdentifier._countAndFlagsBits);

    countAndFlagsBits = v90.bundleIdentifier._countAndFlagsBits;
    object = v90.bundleIdentifier._object;
    rawValue = v90.autoShortcuts._rawValue;
    v18 = v90.sections._rawValue;
    v20 = v90.userShortcuts._rawValue;
    if (v90.bundleIdentifier._object)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v25 = *(v87 + 16);
        OUTLINED_FUNCTION_21();
        sub_1CA27B44C();
        v87 = v26;
      }

      v22 = *(v87 + 16);
      v21 = *(v87 + 24);
      v23 = v22 + 1;
      if (v22 >= v21 >> 1)
      {
        OUTLINED_FUNCTION_64(v21);
        v82 = v28;
        v84 = v27;
        sub_1CA27B44C();
        v22 = v82;
        v23 = v84;
        v87 = v29;
      }

      *(v87 + 16) = v23;
      v24 = (v87 + 40 * v22);
      v24[4] = countAndFlagsBits;
      v24[5] = object;
      v24[6] = rawValue;
      v24[7] = v18;
      v24[8] = v20;
    }

    else
    {
      sub_1CA532DCC(v90.bundleIdentifier._countAndFlagsBits, 0);
    }
  }

  while (1)
  {
    v8 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v8 >= v6)
    {

      v90.bundleIdentifier._countAndFlagsBits = v87;
      sub_1CA94C218();
      sub_1CA27B70C(&v90.bundleIdentifier._countAndFlagsBits, sub_1CA531270, sub_1CA27B894);

      v30 = v90.bundleIdentifier._countAndFlagsBits;
      v31 = *(v90.bundleIdentifier._countAndFlagsBits + 16);
      v32 = MEMORY[0x1E69E7CC0];
      v83 = v90.bundleIdentifier._countAndFlagsBits;
      if (v31)
      {
        v90.bundleIdentifier._countAndFlagsBits = MEMORY[0x1E69E7CC0];
        sub_1CA271524();
        v33 = v90.bundleIdentifier._countAndFlagsBits;
        v34 = (v30 + 40);
        do
        {
          v36 = *(v34 - 1);
          v35 = *v34;
          v90.bundleIdentifier._countAndFlagsBits = v33;
          v38 = *(v33 + 16);
          v37 = *(v33 + 24);
          sub_1CA94C218();
          if (v38 >= v37 >> 1)
          {
            sub_1CA271524();
            v33 = v90.bundleIdentifier._countAndFlagsBits;
          }

          *(v33 + 16) = v38 + 1;
          v39 = v33 + 16 * v38;
          *(v39 + 32) = v36;
          *(v39 + 40) = v35;
          v34 += 5;
          --v31;
        }

        while (v31);
      }

      else
      {
        v33 = MEMORY[0x1E69E7CC0];
      }

      v81 = *(v85 + OBJC_IVAR____TtC11WorkflowKit27AutoShortcutsAppsDataSource_userShortcutDataSource);
      v40 = sub_1CA27BB44();
      v41 = *(v40 + 16);
      if (v41)
      {
        v90.bundleIdentifier._countAndFlagsBits = v32;
        sub_1CA271524();
        v42 = v90.bundleIdentifier._countAndFlagsBits;
        v43 = (v40 + 56);
        do
        {
          v44 = *(v43 - 1);
          v45 = *v43;
          v90.bundleIdentifier._countAndFlagsBits = v42;
          v47 = *(v42 + 16);
          v46 = *(v42 + 24);
          sub_1CA94C218();
          if (v47 >= v46 >> 1)
          {
            sub_1CA271524();
            v42 = v90.bundleIdentifier._countAndFlagsBits;
          }

          *(v42 + 16) = v47 + 1;
          v48 = v42 + 16 * v47;
          *(v48 + 32) = v44;
          *(v48 + 40) = v45;
          v43 += 6;
          --v41;
        }

        while (v41);
      }

      else
      {

        v42 = MEMORY[0x1E69E7CC0];
      }

      v49 = 0;
      v7 = *(v42 + 16);
      v50 = v42 + 32;
      v51 = MEMORY[0x1E69E7CC0];
LABEL_30:
      while (v49 != v7)
      {
        if (v49 >= *(v42 + 16))
        {
          goto LABEL_56;
        }

        v52 = (v50 + 16 * v49);
        v53 = *v52;
        v54 = v52[1];
        ++v49;
        v55 = *(v33 + 16) + 1;
        v56 = (v33 + 40);
        while (--v55)
        {
          v57 = v56 + 2;
          if (*(v56 - 1) != v53 || *v56 != v54)
          {
            v59 = sub_1CA94D7F8();
            v56 = v57;
            if ((v59 & 1) == 0)
            {
              continue;
            }
          }

          goto LABEL_30;
        }

        sub_1CA94C218();
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v90.bundleIdentifier._countAndFlagsBits = v51;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v61 = *(v51 + 16);
          sub_1CA271524();
          v51 = v90.bundleIdentifier._countAndFlagsBits;
        }

        v63 = *(v51 + 16);
        v62 = *(v51 + 24);
        if (v63 >= v62 >> 1)
        {
          OUTLINED_FUNCTION_64(v62);
          sub_1CA271524();
          v51 = v90.bundleIdentifier._countAndFlagsBits;
        }

        *(v51 + 16) = v63 + 1;
        v64 = v51 + 16 * v63;
        *(v64 + 32) = v53;
        *(v64 + 40) = v54;
        v50 = v42 + 32;
      }

      v65 = *(v51 + 16);
      if (v65)
      {
        v89 = MEMORY[0x1E69E7CC0];
        sub_1CA2B9070();
        v66 = v89;
        v67 = (v51 + 40);
        do
        {
          v68 = *(v67 - 1);
          v69 = *v67;
          sub_1CA94C218();
          v70._countAndFlagsBits = v68;
          v70._object = v69;
          AutoShortcutApp.init(bundleIdentifier:autoShortcuts:)(&v90, v70, MEMORY[0x1E69E7CC0]);
          v71 = v90.bundleIdentifier._countAndFlagsBits;
          v72 = *&v90.bundleIdentifier._object;
          v73 = *&v90.sections._rawValue;
          v75 = *(v89 + 16);
          v74 = *(v89 + 24);
          if (v75 >= v74 >> 1)
          {
            OUTLINED_FUNCTION_64(v74);
            v86 = v78;
            v88 = v77;
            sub_1CA2B9070();
            v73 = v86;
            v72 = v88;
          }

          *(v89 + 16) = v75 + 1;
          v76 = v89 + 40 * v75;
          *(v76 + 32) = v71;
          *(v76 + 40) = v72;
          *(v76 + 56) = v73;
          v67 += 2;
          --v65;
        }

        while (v65);
      }

      else
      {

        v66 = MEMORY[0x1E69E7CC0];
      }

      v90.bundleIdentifier._countAndFlagsBits = v83;
      sub_1CA27BBE8(v66);
      sub_1CA94C218();
      sub_1CA27B70C(&v90.bundleIdentifier._countAndFlagsBits, sub_1CA530828, sub_1CA27BC94);

      sub_1CA27BB44();
      v79 = OUTLINED_FUNCTION_87();
      sub_1CA27BF28(v79, v81);

      return sub_1CA27C47C();
    }

    v5 = *(v2 + 8 * v8);
    ++v9;
    if (v5)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
LABEL_56:
  __break(1u);

  __break(1u);
  return result;
}

uint64_t sub_1CA2796A4(uint64_t a1)
{
  v1 = a1;
  v2 = 0;
  v3 = MEMORY[0x1E69E7CC8];
  v39 = MEMORY[0x1E69E7CC8];
  v35 = *(a1 + 16);
  for (i = (a1 + 72); ; i += 6)
  {
    if (v35 == v2)
    {

      return v3;
    }

    if (v2 >= *(v1 + 16))
    {
      break;
    }

    v5 = *(i - 4);
    v36 = v2;
    v37 = *(i - 5);
    v7 = *(i - 3);
    v6 = *(i - 2);
    v8 = *i;
    v38 = *(i - 1);
    v9 = v38;
    sub_1CA94C218();
    swift_bridgeObjectRetain_n();
    sub_1CA94C218();
    v11 = sub_1CA271BF8();
    v12 = v3[2];
    v13 = (v10 & 1) == 0;
    if (__OFADD__(v12, v13))
    {
      goto LABEL_19;
    }

    v14 = v10;
    if (v3[3] < v12 + v13)
    {
      sub_1CA279AD4();
      v3 = v39;
      v15 = sub_1CA271BF8();
      if ((v14 & 1) != (v16 & 1))
      {
        goto LABEL_21;
      }

      v11 = v15;
    }

    if (v14)
    {

      v17 = v3[7];
      v18 = *(v17 + 8 * v11);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v17 + 8 * v11) = v18;
      v33 = v17;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v29 = *(v18 + 16);
        sub_1CA278A8C();
        v18 = v30;
        *(v17 + 8 * v11) = v30;
      }

      v20 = *(v18 + 16);
      v21 = v20 + 1;
      if (v20 >= *(v18 + 24) >> 1)
      {
        sub_1CA278A8C();
        v21 = v20 + 1;
        v18 = v31;
        *(v33 + 8 * v11) = v31;
      }

      *(v18 + 16) = v21;
      v22 = (v18 + 48 * v20);
      v23 = v36;
      v22[4] = v37;
      v22[5] = v5;
      v22[6] = v7;
      v22[7] = v6;
      v22[8] = v38;
      v22[9] = v8;
      v1 = a1;
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443960, &qword_1CA981A58);
      v24 = swift_allocObject();
      *(v24 + 16) = xmmword_1CA981310;
      *(v24 + 32) = v37;
      *(v24 + 40) = v5;
      *(v24 + 48) = v7;
      *(v24 + 56) = v6;
      *(v24 + 64) = v38;
      *(v24 + 72) = v8;
      v3[(v11 >> 6) + 8] |= 1 << v11;
      v25 = (v3[6] + 16 * v11);
      *v25 = v7;
      v25[1] = v6;
      *(v3[7] + 8 * v11) = v24;
      v26 = v3[2];
      v27 = __OFADD__(v26, 1);
      v28 = v26 + 1;
      if (v27)
      {
        goto LABEL_20;
      }

      v3[2] = v28;
      v23 = v36;
    }

    v2 = v23 + 1;
  }

  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  result = sub_1CA94D878();
  __break(1u);
  return result;
}

void sub_1CA279934()
{
  OUTLINED_FUNCTION_43_0();
  OUTLINED_FUNCTION_38_11(v3);
  v35 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  v6 = sub_1CA94D678();
  if (!*(v2 + 16))
  {
LABEL_29:

    *v0 = v6;
    OUTLINED_FUNCTION_42_0();
    return;
  }

  v34 = v2;
  v7 = 0;
  v8 = v2;
  OUTLINED_FUNCTION_0_59();
  v11 = v10 & v9;
  OUTLINED_FUNCTION_56_8();
  v12 = v6 + 64;
  if (!v11)
  {
LABEL_4:
    v14 = v7;
    while (1)
    {
      v7 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v7 >= v0)
      {
        break;
      }

      ++v14;
      if (*(v8 + 8 * v7))
      {
        OUTLINED_FUNCTION_1_41();
        v11 = v16 & v15;
        goto LABEL_9;
      }
    }

    if (v35)
    {
      v30 = *(v2 + 32);
      OUTLINED_FUNCTION_15_21();
      if (v32 != v33)
      {
        OUTLINED_FUNCTION_14_27(v31);
      }

      else
      {
        OUTLINED_FUNCTION_17_18(v31);
      }

      *(v2 + 16) = 0;
    }

    goto LABEL_29;
  }

  while (1)
  {
    OUTLINED_FUNCTION_55_7();
LABEL_9:
    OUTLINED_FUNCTION_54_6(v13);
    v19 = *(v18 + 8 * v17);
    if ((v35 & 1) == 0)
    {
      sub_1CA94C218();
      sub_1CA94C218();
    }

    OUTLINED_FUNCTION_64_7();
    sub_1CA94C458();
    v20 = sub_1CA94D968();
    OUTLINED_FUNCTION_5_39(v20);
    v22 = *(v12 + 8 * v21);
    OUTLINED_FUNCTION_34_0();
    if (v23)
    {
      break;
    }

    OUTLINED_FUNCTION_6_4();
LABEL_21:
    OUTLINED_FUNCTION_2_11();
    OUTLINED_FUNCTION_33_14(v27);
    *(v29 + 8 * v28) = v19;
    OUTLINED_FUNCTION_23_16();
    v2 = v34;
    if (!v11)
    {
      goto LABEL_4;
    }
  }

  OUTLINED_FUNCTION_5_2();
  while (1)
  {
    OUTLINED_FUNCTION_35_15();
    if (v23)
    {
      if (v25)
      {
        break;
      }
    }

    if (v24 == v26)
    {
      v24 = 0;
    }

    if (*(v12 + 8 * v24) != -1)
    {
      OUTLINED_FUNCTION_3_7();
      goto LABEL_21;
    }
  }

LABEL_31:
  __break(1u);
}

void OUTLINED_FUNCTION_41_6()
{
  v1 = v0[83];
  v2 = v0[82];
  v3 = v0[81];
  v4 = v0[78];
  v5 = v0[69];
}

void OUTLINED_FUNCTION_41_7(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{
  v8 = *(v6 - 104);
  v9 = *(v6 - 104);

  _os_log_impl(a1, v4, v9, a4, v5, 0xCu);
}

uint64_t OUTLINED_FUNCTION_41_12()
{

  return sub_1CA94D498();
}

void *OUTLINED_FUNCTION_41_14(uint64_t a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char __src)
{
  v30 = (a1 + 16);

  return memcpy(v30, &__src, 0x50uLL);
}

id OUTLINED_FUNCTION_55_3()
{
  *(v1 + 14) = v3;
  *(v1 + 22) = 2112;
  *(v1 + 24) = v0;
  *v2 = v0;

  return v0;
}

uint64_t OUTLINED_FUNCTION_55_5()
{
  v2 = *(v0 + 256);
  v3 = *(v0 + 224);
}

uint64_t OUTLINED_FUNCTION_55_8()
{
  v1 = v0[21];
  v2 = v0[22] + 1;
  return __swift_destroy_boxed_opaque_existential_0(v0 + 2);
}

uint64_t OUTLINED_FUNCTION_64_6()
{
}

uint64_t OUTLINED_FUNCTION_64_7()
{
  v2 = *(v0 + 40);

  return sub_1CA94D918();
}

uint64_t OUTLINED_FUNCTION_32_0()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_32_2(uint64_t result)
{
  *(v2 + 16) = v1;
  *(v2 + 24) = 2 * ((result - 32) / v3);
  return result;
}

uint64_t OUTLINED_FUNCTION_32_7(uint64_t result)
{
  *(v1 + 200) = result;
  *(v1 + 144) = MEMORY[0x1E69E9820];
  return result;
}

uint64_t OUTLINED_FUNCTION_32_11()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_32_14()
{
  v1 = v0[49];
  v2 = v0[40];
  v3 = v0[9];
  v4 = *(v0[10] + 32);
  return v0[11];
}

uint64_t OUTLINED_FUNCTION_32_15()
{
  sub_1CA27F268((v1 + 224), v1 + 184);
  sub_1CA27F268((v1 + 184), v1 + 144);
  v3 = *(v1 + 176);
  __swift_project_boxed_opaque_existential_1((v1 + 144), *(v1 + 168));
  *(v1 + 264) = v0;
  *(v1 + 272) = v2;
  *(v1 + 280) = 0;
  result = v3 + 16;
  v5 = *(v3 + 16);
  return result;
}

id OUTLINED_FUNCTION_32_16(id a1, SEL a2)
{
  v6 = *(v4 - 312);

  return [a1 a2];
}

id OUTLINED_FUNCTION_32_17(uint64_t a1, const char *a2)
{

  return [v3 a2];
}

uint64_t OUTLINED_FUNCTION_16_3(uint64_t a1)
{
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  v3 = *(v1 + 32);
  return a1 + v2;
}

uint64_t OUTLINED_FUNCTION_16_7()
{
  v1 = v0[55];
  v2 = v0[53];
  v3 = v0[51];
  v5 = v0[43];
  v4 = v0[44];
  v6 = v0[41];
  v7 = v0[42];
  v8 = v0[28];
  v9 = *(v0[45] + 96);
  return v0[46];
}

uint64_t OUTLINED_FUNCTION_16_10()
{
  v2 = *(v0 - 128);

  return swift_dynamicCast();
}

void OUTLINED_FUNCTION_16_15()
{
  *(v3 + 16) = v1;
  v4 = (v3 + 24 * v2);
  v4[4] = 0;
  v4[5] = 0;
  v4[6] = v0;
}

uint64_t OUTLINED_FUNCTION_16_18()
{
  v2 = *(v0 + 80);
  v4 = *(v0 + 56);
}

id OUTLINED_FUNCTION_16_20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);

  return sub_1CA320AB4(va, v4);
}

void OUTLINED_FUNCTION_16_24()
{
  v2 = *(v0 + 16) + 1;

  sub_1CA2E5C14();
}

uint64_t OUTLINED_FUNCTION_16_29()
{
  v2 = v0[42];
  result = v0[43];
  v3 = v0[40];
  v4 = v0[41];
  v6 = v0[38];
  v5 = v0[39];
  v8 = v0[36];
  v7 = v0[37];
  v9 = v0;
  v10 = v0[33];
  v11 = v9[32];
  v13 = v9[29];
  v14 = v9[26];
  v15 = v9[25];
  v16 = v9[24];
  v17 = v9[21];
  v18 = v9[20];
  v12 = v9[17];
  return result;
}

uint64_t OUTLINED_FUNCTION_16_31()
{

  return _swift_stdlib_reportUnimplementedInitializer();
}

uint64_t OUTLINED_FUNCTION_16_32()
{
}

void sub_1CA27A2EC(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v8 = MEMORY[0x1E69E7CC0];
  v25 = MEMORY[0x1E69E7CC0];
  sub_1CA94C218();
  sub_1CA27A51C(a3, &v25, a1, a2);
  v10 = v9;
  v11 = v25;
  if (*(v9 + 16) || sub_1CA25B410())
  {
    v23 = v10;
    v12 = objc_opt_self();
    sub_1CA94C218();
    v13 = [v12 lockedAppBundleIdentifiers];
    v14 = sub_1CA94C8F8();

    v15 = sub_1CA27AF18(a1, a2, v14);

    v24 = v8;
    v16 = sub_1CA25B410();
    for (i = 0; ; ++i)
    {
      if (v16 == i)
      {

        *a4 = a1;
        a4[1] = a2;
        a4[2] = v24;
        a4[3] = v23;
        a4[4] = MEMORY[0x1E69E7CC0];
        return;
      }

      if ((v11 & 0xC000000000000001) != 0)
      {
        v18 = MEMORY[0x1CCAA22D0](i, v11);
      }

      else
      {
        if (i >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_19;
        }

        v18 = *(v11 + 8 * i + 32);
      }

      v19 = v18;
      if (__OFADD__(i, 1))
      {
        break;
      }

      if (v15 && (v20 = [v18 entityInfo]) != 0)
      {
        v21 = v20;
      }

      else
      {
        sub_1CA94D4D8();
        v22 = *(v24 + 16);
        sub_1CA94D518();
        sub_1CA94D528();
        sub_1CA94D4E8();
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
  }

  else
  {

    a4[4] = 0;
    *a4 = 0u;
    *(a4 + 1) = 0u;
  }
}

void sub_1CA27A51C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v63 = a3;
  v64 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC446340, &unk_1CA98AFD0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v59 - v8;
  v65 = type metadata accessor for AutoShortcutAppSection();
  v60 = *(v65 - 8);
  v10 = *(v60 + 64);
  v11 = MEMORY[0x1EEE9AC00](v65);
  v61 = &v59 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v59 = &v59 - v13;
  v14 = 0;
  v67 = a1 + 32;
  v68 = *(a1 + 16);
  v62 = MEMORY[0x1E69E7CC0];
  v66 = v9;
  while (v14 != v68)
  {
    v15 = (v67 + 48 * v14);
    v16 = v15[1];
    v17 = v15[3];
    v18 = v15[4];
    v19 = v15[5];
    v73 = v14 + 1;
    v20 = sub_1CA25B410();
    v72 = v16;
    sub_1CA94C218();
    v71 = v17;
    sub_1CA94C218();
    v69 = v18;
    v70 = v18;
    sub_1CA94C218();
    v21 = 0;
    v76 = MEMORY[0x1E69E7CC0];
    while (v20 != v21)
    {
      if ((v19 & 0xC000000000000001) != 0)
      {
        v22 = MEMORY[0x1CCAA22D0](v21, v19);
      }

      else
      {
        if (v21 >= *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_34;
        }

        v22 = *(v19 + 8 * v21 + 32);
      }

      v23 = v22;
      v24 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
LABEL_34:
        __break(1u);
        return;
      }

      v25 = [v22 isDeprecatedStyle];
      v26 = v23;
      if (v25)
      {
        MEMORY[0x1CCAA1490]();
        if (*((*a2 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*a2 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1CA94C698();
        }

        sub_1CA94C6E8();

        ++v21;
      }

      else
      {
        v27 = v76;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v32 = *(v27 + 16);
          sub_1CA27AC48();
          v27 = v33;
        }

        v29 = *(v27 + 16);
        v28 = *(v27 + 24);
        v76 = v27;
        if (v29 >= v28 >> 1)
        {
          sub_1CA27AC48();
          v76 = v34;
        }

        v30 = v76;
        *(v76 + 16) = v29 + 1;
        v31 = v30 + 16 * v29;
        *(v31 + 32) = v26;
        *(v31 + 40) = 1;

        v21 = v24;
      }
    }

    if (!*(v76 + 16))
    {
      v46 = v66;
      v48 = v66;
      v49 = 1;
LABEL_24:
      v47 = v65;
      __swift_storeEnumTagSinglePayload(v48, v49, 1, v65);

      goto LABEL_25;
    }

    if (!v69)
    {
      v74 = 0u;
      v75 = 0u;
      v50 = objc_opt_self();
      sub_1CA94C218();
      v51 = [v50 blackColor];
      sub_1CA94C218();
      v46 = v66;
      AutoShortcutAppSection.init(sectionType:bundleIdentifier:color:items:)();
      v48 = v46;
      v49 = 0;
      goto LABEL_24;
    }

    v35 = v70;
    v36 = [v35 name];
    v37 = sub_1CA94C3A8();
    v39 = v38;

    v40 = [v35 symbolName];
    v41 = sub_1CA94C3A8();
    v43 = v42;

    *&v74 = v37;
    *(&v74 + 1) = v39;
    *&v75 = v41;
    *(&v75 + 1) = v43;
    v44 = objc_opt_self();
    sub_1CA94C218();
    v45 = [v44 blackColor];
    sub_1CA94C218();
    v46 = v66;
    AutoShortcutAppSection.init(sectionType:bundleIdentifier:color:items:)();

    v47 = v65;
    __swift_storeEnumTagSinglePayload(v46, 0, 1, v65);

LABEL_25:

    if (__swift_getEnumTagSinglePayload(v46, 1, v47) == 1)
    {
      sub_1CA532E30(v46, &qword_1EC446340, &unk_1CA98AFD0);
      v14 = v73;
    }

    else
    {
      v52 = v59;
      sub_1CA27B270(v46, v59);
      sub_1CA27B270(v52, v61);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v56 = *(v62 + 16);
        sub_1CA27B2D4();
        v62 = v57;
      }

      v53 = *(v62 + 16);
      if (v53 >= *(v62 + 24) >> 1)
      {
        sub_1CA27B2D4();
        v62 = v58;
      }

      v54 = v61;
      v55 = v62;
      *(v62 + 16) = v53 + 1;
      sub_1CA27B270(v54, v55 + ((*(v60 + 80) + 32) & ~*(v60 + 80)) + *(v60 + 72) * v53);
      v14 = v73;
    }
  }
}

uint64_t type metadata accessor for AutoShortcutAppSection()
{
  result = qword_1EDB9F400;
  if (!qword_1EDB9F400)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1CA27AB34()
{
  sub_1CA25B3D0(319, &unk_1EC441710, 0x1E69E09E0);
  if (v0 <= 0x3F)
  {
    sub_1CA27ABF8();
    if (v1 <= 0x3F)
    {
      sub_1CA948D28();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1CA27ABF8()
{
  if (!qword_1EC441B38)
  {
    v0 = sub_1CA94C758();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC441B38);
    }
  }
}

void AutoShortcutAppSection.init(sectionType:bundleIdentifier:color:items:)()
{
  OUTLINED_FUNCTION_37_0();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = sub_1CA948D28();
  v13 = OUTLINED_FUNCTION_1_0(v12);
  v15 = v14;
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_6_0();
  v20 = v19 - v18;
  sub_1CA948D18();
  v21 = v9[1];
  *v11 = *v9;
  *(v11 + 16) = v21;
  *(v11 + 32) = v7;
  *(v11 + 40) = v5;
  *(v11 + 48) = v3;
  v22 = type metadata accessor for AutoShortcutAppSection();
  v42 = v20;
  v43 = v12;
  v44 = v11;
  (*(v15 + 16))(v11 + *(v22 + 32), v20, v12);
  v23 = objc_opt_self();
  sub_1CA94C218();
  v24 = [v23 lockedAppBundleIdentifiers];
  v25 = sub_1CA94C8F8();

  v26 = sub_1CA27AF18(v7, v5, v25);

  v27 = 0;
  v28 = *(v1 + 16);
  v29 = v1 + 40;
  v30 = MEMORY[0x1E69E7CC0];
LABEL_2:
  for (i = (v29 + 16 * v27); ; i += 16)
  {
    if (v28 == v27)
    {
      (*(v15 + 8))(v42, v43);

      *(v44 + 56) = v30;
      OUTLINED_FUNCTION_36();
      return;
    }

    if (v27 >= *(v1 + 16))
    {
      break;
    }

    v32 = *(i - 1);
    v33 = *i;
    v34 = v32;
    if ((v26 & v33 & 1) == 0)
    {
      v38 = !v26 & v33;
LABEL_10:
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_59_1();
      }

      v40 = *(v30 + 16);
      v39 = *(v30 + 24);
      if (v40 >= v39 >> 1)
      {
        OUTLINED_FUNCTION_53_0(v39);
        sub_1CA27B0E8();
      }

      ++v27;
      *(v30 + 16) = v40 + 1;
      v41 = v30 + 16 * v40;
      *(v41 + 32) = v32;
      *(v41 + 40) = v38 & 1;
      v29 = v1 + 40;
      goto LABEL_2;
    }

    v35 = v34;
    v36 = [v34 entityInfo];
    if (!v36)
    {
      v38 = 1;
      goto LABEL_10;
    }

    v37 = v36;

    ++v27;
  }

  __break(1u);
}

BOOL sub_1CA27AF18(uint64_t a1, uint64_t a2, void *a3)
{
  if (!a3[2])
  {
    return 0;
  }

  v6 = a3[5];
  sub_1CA94D918();
  sub_1CA94C458();
  sub_1CA94D968();
  OUTLINED_FUNCTION_32();
  v9 = ~v8;
  do
  {
    v10 = v7 & v9;
    v11 = (1 << (v7 & v9)) & *(a3 + (((v7 & v9) >> 3) & 0xFFFFFFFFFFFFFF8) + 56);
    v12 = v11 != 0;
    if (!v11)
    {
      break;
    }

    v13 = (a3[6] + 16 * v10);
    if (*v13 == a1 && v13[1] == a2)
    {
      break;
    }

    OUTLINED_FUNCTION_27_5();
    v15 = sub_1CA94D7F8();
    v7 = v10 + 1;
  }

  while ((v15 & 1) == 0);
  return v12;
}

uint64_t OUTLINED_FUNCTION_58_0()
{
  *(v1 - 96) = v0;

  return sub_1CA94C288();
}

uint64_t OUTLINED_FUNCTION_58_7(uint64_t a1, uint64_t a2)
{

  return sub_1CA323E28(0xD000000000000019, a2, v2);
}

uint64_t OUTLINED_FUNCTION_58_8()
{
}

void sub_1CA27B0E8()
{
  v1 = *v0;
  sub_1CA271560();
  *v0 = v2;
}

uint64_t sub_1CA27B148(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 40) = (a2 - 1);
  }

  else
  {
    v7 = sub_1CA948D28();
    v8 = v5 + *(a4 + 32);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1CA27B1E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 40);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1CA948D28();
    v9 = a1 + *(a3 + 32);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_1CA27B270(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AutoShortcutAppSection();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1CA27B2D4()
{
  OUTLINED_FUNCTION_5_11();
  if (v4)
  {
    OUTLINED_FUNCTION_4_6();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_25_3();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_2_9();
    }
  }

  else
  {
    v5 = v3;
  }

  v8 = *(v0 + 16);
  OUTLINED_FUNCTION_87_1(v2, v5, &unk_1EC443FC0, &qword_1CA982610);
  OUTLINED_FUNCTION_36_0();
  v9 = type metadata accessor for AutoShortcutAppSection();
  OUTLINED_FUNCTION_27_1(v9);
  v11 = *(v10 + 80);
  OUTLINED_FUNCTION_68_0();
  if (v1)
  {
    v13 = OUTLINED_FUNCTION_6_9(v12);
    sub_1CA43F338(v13, v14, v15);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_15_3();
  }
}

void sub_1CA27B39C()
{
  OUTLINED_FUNCTION_17_2();
  if ((v5 & 1) == 0)
  {
    v6 = v4;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_7_1();
  if (v7 == v8)
  {
LABEL_7:
    OUTLINED_FUNCTION_29_3(v6);
    if (v3)
    {
      OUTLINED_FUNCTION_75_0(v9, v10, v11, v12, v13, v14);
      v15 = OUTLINED_FUNCTION_94_0();
      v16 = _swift_stdlib_malloc_size(v15);
      OUTLINED_FUNCTION_32_2(v16);
      if (v2)
      {
LABEL_9:
        v17 = OUTLINED_FUNCTION_28_2();
        v1(v17);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v2)
    {
      goto LABEL_9;
    }

    OUTLINED_FUNCTION_74_0();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_22_0();
  if (!v7)
  {
    OUTLINED_FUNCTION_6_3();
    goto LABEL_7;
  }

  __break(1u);
}

uint64_t OUTLINED_FUNCTION_43_2()
{
  v3 = v0[13];
  v2 = v0[14];
  v5 = v0[11];
  v4 = v0[12];
  v6 = v0[9];
  v7 = v0[10];

  return sub_1CA94C858();
}

uint64_t OUTLINED_FUNCTION_43_3()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_43_7(uint64_t a1)
{
  __swift_storeEnumTagSinglePayload(v1, 7, 8, a1);

  return swift_willThrow();
}

uint64_t OUTLINED_FUNCTION_43_9()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_43_10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  v17 = *(*(a15 + 48) + 16 * v15 + 8);
}

uint64_t OUTLINED_FUNCTION_43_11()
{

  return sub_1CA60D32C();
}

uint64_t OUTLINED_FUNCTION_43_13()
{

  return sub_1CA94D588();
}

char *sub_1CA27B60C(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[40 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_34(a3, result);
  }

  return result;
}

void sub_1CA27B64C()
{
  OUTLINED_FUNCTION_39_2();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_7_1();
  if (v6 == v7)
  {
LABEL_7:
    OUTLINED_FUNCTION_15_0(v5);
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4439A0, &qword_1CA981A98);
      v8 = OUTLINED_FUNCTION_31_0();
      OUTLINED_FUNCTION_5_7(v8);
      if (v1)
      {
LABEL_9:
        v9 = OUTLINED_FUNCTION_14_3();
        sub_1CA27B60C(v9, v10, v11);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    swift_arrayInitWithCopy();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_22_0();
  if (!v6)
  {
    OUTLINED_FUNCTION_6_3();
    goto LABEL_7;
  }

  __break(1u);
}

uint64_t sub_1CA27B70C(uint64_t *a1, void (*a2)(void *, _BYTE *, uint64_t, uint64_t), uint64_t (*a3)(void, uint64_t, uint64_t, uint64_t))
{
  v6 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1CA27B634(v6);
    v6 = v7;
  }

  v8 = *(v6 + 16);
  v10[0] = v6 + 32;
  v10[1] = v8;
  result = sub_1CA27B790(v10, a2, a3);
  *a1 = v6;
  return result;
}

uint64_t sub_1CA27B790(uint64_t a1, void (*a2)(void *, _BYTE *, uint64_t, uint64_t), uint64_t (*a3)(void, uint64_t, uint64_t, uint64_t))
{
  v6 = *(a1 + 8);
  result = sub_1CA94D778();
  if (result < v6)
  {
    if (v6 >= -1)
    {
      v8 = result;
      v9 = v6 / 2;
      if (v6 <= 1)
      {
        v10 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v10 = sub_1CA94C6C8();
        *(v10 + 16) = v9;
      }

      v11[0] = v10 + 32;
      v11[1] = v9;
      a2(v11, v12, a1, v8);
      *(v10 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v6 < 0)
  {
    goto LABEL_12;
  }

  if (v6)
  {
    return a3(0, v6, 1, a1);
  }

  return result;
}

uint64_t sub_1CA27B894(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v25 = *a4;
    v4 = (*a4 + 40 * a3);
    v5 = result - a3;
    while (2)
    {
      v23 = v4;
      v24 = a3;
      v6 = (v25 + 40 * a3);
      v7 = *v6;
      v8 = v6[1];
      v9 = v6[2];
      v10 = v6[3];
      v11 = v6[4];
      v22 = v5;
      do
      {
        v28 = v7;
        v29 = v5;
        v12 = *(v4 - 4);
        v13 = *(v4 - 3);
        v14 = *(v4 - 2);
        v15 = *(v4 - 1);
        v26 = qword_1EDB9F960;
        v27 = *(v4 - 5);
        sub_1CA94C218();
        sub_1CA94C218();
        sub_1CA94C218();
        sub_1CA94C218();
        sub_1CA94C218();
        sub_1CA94C218();
        sub_1CA94C218();
        sub_1CA94C218();
        if (v26 != -1)
        {
          swift_once();
        }

        sub_1CA2786EC(v28, v8);
        sub_1CA2786EC(v27, v12);
        sub_1CA27BAF0();
        v16 = sub_1CA94D1D8();

        if (v16 != -1)
        {
          break;
        }

        if (!v25)
        {
          __break(1u);
          return result;
        }

        v7 = *v4;
        v8 = v4[1];
        v17 = v4[2];
        v18 = v4[3];
        v19 = v4[4];
        v20 = *(v4 - 3);
        *v4 = *(v4 - 5);
        *(v4 + 1) = v20;
        v4[4] = *(v4 - 1);
        *(v4 - 4) = v8;
        *(v4 - 3) = v17;
        *(v4 - 2) = v18;
        *(v4 - 1) = v19;
        *(v4 - 5) = v7;
        v4 -= 5;
        v5 = v29 + 1;
      }

      while (v29 != -1);
      a3 = v24 + 1;
      v4 = v23 + 5;
      v5 = v22 - 1;
      if (v24 + 1 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

unint64_t sub_1CA27BAF0()
{
  result = qword_1EDB9F7B0;
  if (!qword_1EDB9F7B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB9F7B0);
  }

  return result;
}

uint64_t sub_1CA27BB44()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1CA94A098();

  return v1;
}

uint64_t sub_1CA27BBB8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_1CA27BB44();
  *a2 = result;
  return result;
}

void sub_1CA27BBE8(uint64_t a1)
{
  v4 = OUTLINED_FUNCTION_1_7(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_1CA27BC7C(v4, 1);
  OUTLINED_FUNCTION_29_2();
  if (!v6)
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  OUTLINED_FUNCTION_2_6();
  if (v7 != v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_34_1();

  if (!v1)
  {
LABEL_8:
    *v2 = v3;
    return;
  }

  OUTLINED_FUNCTION_28_0();
  if (!v5)
  {
    *(v3 + 16) = v8;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

uint64_t sub_1CA27BC94(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v34 = *a4;
    v4 = (*a4 + 40 * a3);
    v5 = result - a3;
    while (2)
    {
      v32 = v4;
      v33 = a3;
      v6 = (v34 + 40 * a3);
      v7 = *v6;
      v8 = v6[1];
      v9 = v6[2];
      v10 = v6[3];
      v11 = v6[4];
      v31 = v5;
      while (1)
      {
        v12 = *(v4 - 4);
        v37 = *(v4 - 5);
        v38 = v7;
        v13 = *(v4 - 3);
        v14 = *(v4 - 2);
        v15 = *(v4 - 1);
        v35 = v5;
        v36 = qword_1EDB9F960;
        sub_1CA94C218();
        sub_1CA94C218();
        sub_1CA94C218();
        sub_1CA94C218();
        v39 = v12;
        sub_1CA94C218();
        sub_1CA94C218();
        sub_1CA94C218();
        sub_1CA94C218();
        if (v36 != -1)
        {
          swift_once();
        }

        v16 = sub_1CA2786EC(v38, v8);
        v18 = v17 ? v16 : 0;
        v19 = v17 ? v17 : 0xE000000000000000;
        v20 = sub_1CA2786EC(v37, v39);
        v22 = v21 ? v20 : 0;
        v23 = v21 ? v21 : 0xE000000000000000;
        if (v18 == v22 && v19 == v23)
        {
          break;
        }

        v25 = sub_1CA94D7F8();

        if (v25)
        {
          if (!v34)
          {
            __break(1u);
            return result;
          }

          v7 = *v4;
          v8 = v4[1];
          v26 = v4[2];
          v27 = v4[3];
          v28 = v4[4];
          v29 = *(v4 - 3);
          *v4 = *(v4 - 5);
          *(v4 + 1) = v29;
          v4[4] = *(v4 - 1);
          *(v4 - 4) = v8;
          *(v4 - 3) = v26;
          *(v4 - 2) = v27;
          *(v4 - 1) = v28;
          *(v4 - 5) = v7;
          v4 -= 5;
          v5 = v35 + 1;
          if (v35 != -1)
          {
            continue;
          }
        }

        goto LABEL_27;
      }

LABEL_27:
      a3 = v33 + 1;
      v4 = v32 + 5;
      v5 = v31 - 1;
      if (v33 + 1 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void *sub_1CA27BF28(uint64_t a1, uint64_t a2)
{
  v33 = *(a1 + 16);
  if (!v33)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v2 = 0;
  v31 = (a2 + 72);
  v32 = a1 + 32;
  v30 = *(a2 + 16) + 1;
  do
  {
    v3 = (v32 + 40 * v2);
    v4 = *v3;
    v5 = v3[1];
    v6 = v3[3];
    *&v35 = v3[2];
    v7 = v3[4];
    v36 = v2 + 1;
    v8 = v30;
    v9 = v31;
    while (--v8)
    {
      v10 = *(v9 - 4);
      v11 = *(v9 - 1);
      v12._rawValue = *v9;
      if (*(v9 - 3) != v4 || *(v9 - 2) != v5)
      {
        v9 += 6;
        if ((sub_1CA94D7F8() & 1) == 0)
        {
          continue;
        }
      }

      v14 = v11;
      sub_1CA94C218();
      sub_1CA94C218();
      sub_1CA94C218();
      sub_1CA94C218();
      sub_1CA94C218();
      sub_1CA94C218();
      sub_1CA94C218();
      AutoShortcutApp.withUserShortcuts(_:)(&v37, v12);

      countAndFlagsBits = v37.bundleIdentifier._countAndFlagsBits;
      if ((OUTLINED_FUNCTION_20_19() & 1) == 0)
      {
        v23 = v7[2];
        OUTLINED_FUNCTION_21();
        sub_1CA27B44C();
        v7 = v24;
      }

      v2 = v36;
      v17 = v7[2];
      v16 = v7[3];
      if (v17 >= v16 >> 1)
      {
        OUTLINED_FUNCTION_64(v16);
        sub_1CA27B44C();
        v7 = v25;
      }

      v7[2] = v17 + 1;
      v18 = &v7[5 * v17];
      v18[4] = countAndFlagsBits;
      *(v18 + 5) = v35;
      *(v18 + 7) = v34;
      goto LABEL_20;
    }

    sub_1CA94C218();
    sub_1CA94C218();
    sub_1CA94C218();
    sub_1CA94C218();
    AutoShortcutApp.withUserShortcuts(_:)(&v37, MEMORY[0x1E69E7CC0]);

    v19 = v37.bundleIdentifier._countAndFlagsBits;
    if ((OUTLINED_FUNCTION_20_19() & 1) == 0)
    {
      v26 = v7[2];
      OUTLINED_FUNCTION_21();
      sub_1CA27B44C();
      v7 = v27;
    }

    v21 = v7[2];
    v20 = v7[3];
    if (v21 >= v20 >> 1)
    {
      OUTLINED_FUNCTION_64(v20);
      sub_1CA27B44C();
      v7 = v28;
    }

    v7[2] = v21 + 1;
    v22 = &v7[5 * v21];
    v22[4] = v19;
    *(v22 + 5) = v35;
    *(v22 + 7) = v34;
    v2 = v36;
LABEL_20:
    ;
  }

  while (v2 != v33);
  return v7;
}

void __swiftcall AutoShortcutApp.withUserShortcuts(_:)(WorkflowKit::AutoShortcutApp *__return_ptr retstr, Swift::OpaquePointer a2)
{
  v7 = *v2;
  v8 = v2[1];
  v10 = v2[2];
  v9 = v2[3];
  v11 = objc_opt_self();
  v20 = v9;
  sub_1CA94C218();
  sub_1CA94C218();
  sub_1CA94C218();
  v12 = [v11 lockedAppBundleIdentifiers];
  v13 = sub_1CA94C8F8();

  v21 = v7;
  v14 = sub_1CA27AF18(v7, v8, v13);

  v23 = MEMORY[0x1E69E7CC0];
  sub_1CA25B418(v10);
  OUTLINED_FUNCTION_63_0();
  while (1)
  {
    if (v4 == v5)
    {
      retstr->bundleIdentifier._countAndFlagsBits = v21;
      retstr->bundleIdentifier._object = v8;
      retstr->autoShortcuts._rawValue = v23;
      retstr->sections._rawValue = v20;
      retstr->userShortcuts = a2;
      return;
    }

    if (v3)
    {
      v15 = MEMORY[0x1CCAA22D0](v5, v10);
    }

    else
    {
      if (v5 >= v8[2])
      {
        goto LABEL_15;
      }

      v15 = *(v10 + 8 * v5 + 32);
    }

    v16 = v15;
    if (__OFADD__(v5, 1))
    {
      break;
    }

    if (v14 && (v17 = [v15 entityInfo]) != 0)
    {
      v18 = v17;
    }

    else
    {
      sub_1CA94D4D8();
      v19 = v23[2];
      sub_1CA94D518();
      sub_1CA94D528();
      sub_1CA94D4E8();
    }

    ++v5;
  }

  __break(1u);
LABEL_15:
  __break(1u);
}

void OUTLINED_FUNCTION_59_1()
{
  v2 = *(v0 + 16) + 1;

  sub_1CA27B0E8();
}

void OUTLINED_FUNCTION_59_4()
{

  JUMPOUT(0x1CCAA4BF0);
}

uint64_t OUTLINED_FUNCTION_59_5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{

  return sub_1CA32EA0C(a1, 0xD00000000000001DLL, a3, a4, a5);
}

uint64_t OUTLINED_FUNCTION_59_6()
{

  return sub_1CA94D9B8();
}

uint64_t OUTLINED_FUNCTION_59_7()
{

  return sub_1CA94C698();
}

uint64_t sub_1CA27C47C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  v1 = v0;
  return sub_1CA94A0A8();
}

uint64_t sub_1CA27C4E8(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1CA27C530()
{
  result = qword_1EC441A00;
  if (!qword_1EC441A00)
  {
    sub_1CA25B3D0(255, &qword_1EDB9FAD0, 0x1E69E9610);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC441A00);
  }

  return result;
}

unint64_t sub_1CA27C598()
{
  result = qword_1EC441D80;
  if (!qword_1EC441D80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC446310, &qword_1CA98AE98);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC441D80);
  }

  return result;
}

void *HealthKitLibrary()
{
  v8 = *MEMORY[0x1E69E9840];
  v5[0] = 0;
  if (!HealthKitLibraryCore_frameworkLibrary)
  {
    v5[1] = MEMORY[0x1E69E9820];
    v5[2] = 3221225472;
    v5[3] = __HealthKitLibraryCore_block_invoke;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_1E83758D0;
    v7 = 0;
    HealthKitLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = HealthKitLibraryCore_frameworkLibrary;
  if (!HealthKitLibraryCore_frameworkLibrary)
  {
    v0 = [MEMORY[0x1E696AAA8] currentHandler];
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *HealthKitLibrary(void)"];
    [v0 handleFailureInFunction:v4 file:@"WFHealthFeatureAvailability.m" lineNumber:28 description:{@"%s", v5[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v1 = v5[0];
  if (v5[0])
  {
LABEL_7:
    free(v1);
  }

  v2 = *MEMORY[0x1E69E9840];
  return v0;
}

void __getHKSPSleepStoreClass_block_invoke(uint64_t a1)
{
  SleepLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("HKSPSleepStore");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getHKSPSleepStoreClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getHKSPSleepStoreClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"WFHealthFeatureAvailability.m" lineNumber:25 description:{@"Unable to find class %s", "HKSPSleepStore"}];

    __break(1u);
  }
}

void SleepLibrary()
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!SleepLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __SleepLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E83758E8;
    v6 = 0;
    SleepLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!SleepLibraryCore_frameworkLibrary)
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *SleepLibrary(void)"];
    [v2 handleFailureInFunction:v3 file:@"WFHealthFeatureAvailability.m" lineNumber:24 description:{@"%s", v4[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v0 = v4[0];
  if (v4[0])
  {
LABEL_7:
    free(v0);
  }

  v1 = *MEMORY[0x1E69E9840];
}

void __getHKSPFeatureAvailabilityStoreClass_block_invoke(uint64_t a1)
{
  SleepLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("HKSPFeatureAvailabilityStore");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getHKSPFeatureAvailabilityStoreClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getHKSPFeatureAvailabilityStoreClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"WFHealthFeatureAvailability.m" lineNumber:26 description:{@"Unable to find class %s", "HKSPFeatureAvailabilityStore"}];

    __break(1u);
  }
}

void Library.folders.getter()
{
  OUTLINED_FUNCTION_37_0();
  v1 = v0;
  v121 = sub_1CA94C168();
  v2 = OUTLINED_FUNCTION_1_0(v121);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_6_0();
  v120 = v8 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_1EC443BD0, &unk_1CA983B10);
  v10 = OUTLINED_FUNCTION_18_0(v9);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_3_1();
  v138 = v13;
  OUTLINED_FUNCTION_31_2();
  MEMORY[0x1EEE9AC00](v14);
  v16 = v115 - v15;
  v117 = type metadata accessor for LibraryModel.FolderCollection(0);
  v17 = OUTLINED_FUNCTION_52(v117);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_3_1();
  v135 = v20;
  OUTLINED_FUNCTION_31_2();
  MEMORY[0x1EEE9AC00](v21);
  v137 = v115 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443950, &unk_1CA982580);
  OUTLINED_FUNCTION_1_0(v23);
  v25 = v24;
  v27 = *(v26 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_43();
  v122 = v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443B98, &qword_1CA986560);
  OUTLINED_FUNCTION_1_0(v30);
  v32 = v31;
  v34 = *(v33 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x1EEE9AC00](v35);
  v37 = v115 - v36;
  v38 = OBJC_IVAR___WFLibrary_capsule;
  swift_beginAccess();
  v39 = *(v32 + 16);
  v130 = v32 + 16;
  v131 = v38;
  v129 = v39;
  v39(v37, v1 + v38, v30);
  sub_1CA2D8DD8();
  v41 = v40;
  v42 = *(v32 + 8);
  v132 = v37;
  v133 = v32 + 8;
  v134 = v30;
  v128 = v42;
  v42(v37, v30);
  v145 = MEMORY[0x1E69E7CC0];
  v43 = *(v41 + 16);
  if (!v43)
  {
LABEL_23:

    OUTLINED_FUNCTION_36();
    return;
  }

  v127 = v1;
  v46 = *(v25 + 16);
  v44 = v25 + 16;
  v45 = v46;
  v47 = (*(v44 + 64) + 32) & ~*(v44 + 64);
  v115[1] = v41;
  v48 = v41 + v47;
  v116 = MEMORY[0x1E69E7CC0];
  v119 = v4 + 8;
  v49 = *(v44 + 56);
  v140 = v44 - 8;
  v141 = v49;
  v50 = v122;
  v118 = v16;
  v139 = v23;
  v142 = v44;
  v126 = v46;
  while (1)
  {
    v45(v50, v48, v23);
    sub_1CA94BE38();
    v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443BD8, &qword_1CA982068);
    v52 = OUTLINED_FUNCTION_109();
    OUTLINED_FUNCTION_49(v52, v53, v51);
    if (v64)
    {
      v54 = OUTLINED_FUNCTION_25_11();
      v55(v54);
      sub_1CA27080C(v16, &off_1EC443BD0, &unk_1CA983B10);
      goto LABEL_20;
    }

    v56 = v132;
    v57 = v134;
    v129(v132, v127 + v131, v134);
    type metadata accessor for LibraryModel(0);
    sub_1CA34137C();
    v58 = v135;
    sub_1CA94BEC8();
    v128(v56, v57);
    OUTLINED_FUNCTION_39(v51);
    v60 = *(v59 + 8);
    v136 = v59 + 8;
    v60(v16, v51);
    v61 = v58;
    v23 = v139;
    v62 = v137;
    sub_1CA3413D4(v61, v137);
    v63 = v138;
    sub_1CA94BE38();
    OUTLINED_FUNCTION_49(v63, 1, v51);
    if (v64)
    {
      OUTLINED_FUNCTION_0_42();
      sub_1CA4C9F7C(v62, v65);
      v66 = OUTLINED_FUNCTION_25_11();
      v67(v66);
      sub_1CA27080C(v63, &off_1EC443BD0, &unk_1CA983B10);
LABEL_9:
      v45 = v126;
      goto LABEL_20;
    }

    v125 = v60;
    sub_1CA94BE88();
    v68 = sub_1CA948D28();
    v124 = v115;
    v69 = OUTLINED_FUNCTION_1_0(v68);
    v71 = v70;
    v73 = *(v72 + 64);
    MEMORY[0x1EEE9AC00](v69);
    OUTLINED_FUNCTION_6_0();
    v76 = v75 - v74;
    v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443BC8, &qword_1CA9834A0);
    OUTLINED_FUNCTION_18_0(v77);
    v79 = *(v78 + 64);
    OUTLINED_FUNCTION_29();
    MEMORY[0x1EEE9AC00](v80);
    v82 = v115 - v81;
    sub_1CA94C148();
    OUTLINED_FUNCTION_49(v82, 1, v68);
    if (v83)
    {
      sub_1CA27080C(v82, &qword_1EC443BC8, &qword_1CA9834A0);
      v84 = sub_1CA94C158();
      sub_1CA3780AC(1, v84, v85, &v143);
      v86 = v143;
      v87 = v144;
      v88 = sub_1CA94C3E8();
      v89 = OUTLINED_FUNCTION_18_0(v88);
      v91 = *(v90 + 64);
      MEMORY[0x1EEE9AC00](v89);
      OUTLINED_FUNCTION_6_0();
      sub_1CA94C3D8();
      v50 = sub_1CA94C3B8();
      v23 = v92;
      sub_1CA266F2C(v86, v87);
      v93 = OUTLINED_FUNCTION_13_20();
      v94(v93);
      if (!v23)
      {
        OUTLINED_FUNCTION_23_12();
        v111();
        OUTLINED_FUNCTION_0_42();
        sub_1CA4C9F7C(v137, v112);
        v113 = OUTLINED_FUNCTION_15_14();
        v114(v113);
        v16 = v118;
        goto LABEL_9;
      }

      v123 = v50;
    }

    else
    {
      (*(v71 + 32))(v76, v82, v68);
      v123 = sub_1CA948CC8();
      v23 = v95;
      v96 = *(v71 + 8);
      v50 = v71 + 8;
      v96(v76, v68);
      v97 = OUTLINED_FUNCTION_13_20();
      v98(v97);
    }

    v16 = v118;
    OUTLINED_FUNCTION_23_12();
    v99();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443C00, &unk_1CA983B30);
    v100 = v137;
    sub_1CA94B858();
    v101 = v143;
    v102 = v144;
    v103 = *(v117 + 20);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443BF8, &qword_1CA9820A8);
    sub_1CA94B858();
    v104 = v143;
    if ((v143 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v143 >> 16)
    {
      goto LABEL_25;
    }

    v105 = objc_allocWithZone(MEMORY[0x1E69E0DD0]);
    v106 = sub_1CA27E214(v123, v23, 1, v101, v102, v104, 0);
    OUTLINED_FUNCTION_0_42();
    sub_1CA4C9F7C(v100, v107);
    v108 = OUTLINED_FUNCTION_15_14();
    v110 = v109(v108);
    v45 = v126;
    if (v106)
    {
      MEMORY[0x1CCAA1490](v110);
      if (*((v145 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v145 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1CA94C698();
      }

      sub_1CA94C6E8();
      v116 = v145;
      v23 = v139;
    }

LABEL_20:
    v48 += v141;
    if (!--v43)
    {
      goto LABEL_23;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
}

uint64_t OUTLINED_FUNCTION_80_0()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_80_2()
{

  return sub_1CA94A4E8();
}

uint64_t OUTLINED_FUNCTION_80_3(uint64_t result)
{
  *(v2 - 104) = v1;
  *(v2 - 80) = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_80_4()
{

  return sub_1CA94C698();
}

void OUTLINED_FUNCTION_80_5()
{

  JUMPOUT(0x1CCAA1490);
}

uint64_t OUTLINED_FUNCTION_80_7()
{
  v3 = *(*(*(v1 - 152) + 48) + 16 * v0 + 8);
}

uint64_t OUTLINED_FUNCTION_110_0()
{
  v3 = v0[38];
  v2 = v0[39];
  v4 = v0[35];
  v5 = v0[32];
}

uint64_t OUTLINED_FUNCTION_110_1()
{
  v2 = v0[159];
  v3 = v0[133];
  v4 = v0[94];
  v5 = v0[90];
  v6 = v0[80];
  v7 = v0[78];

  return sub_1CA94B0F8();
}

uint64_t OUTLINED_FUNCTION_110_2()
{

  return sub_1CA94D1F8();
}

uint64_t OUTLINED_FUNCTION_110_4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{

  return sub_1CA57ABD8(a1, 1701669236, 0xE400000000000000, a2);
}

uint64_t OUTLINED_FUNCTION_140()
{
  v3 = *(v1 + 8);
  result = v0;
  v5 = *(v2 - 104);
  return result;
}

uint64_t OUTLINED_FUNCTION_140_0()
{
  v1 = v0[27];
  v2 = v0[28];
  result = v0[23];
  v4 = v0[21];
  v5 = *(v0[22] + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_140_2()
{
  v3 = v0[41];
  v2 = v0[42];
  v4 = v0[39];
  v5 = v0[40];
  v6 = v0[2];

  return MEMORY[0x1EEE4AA60]();
}

void OUTLINED_FUNCTION_140_3(void *a1, NSObject *a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, a2, a3, a4, v4, 0x16u);
}

__n128 *OUTLINED_FUNCTION_140_4(__n128 *result, __n128 a2)
{
  *(v2 - 160) = a2;
  result[1] = a2;
  return result;
}

uint64_t OUTLINED_FUNCTION_140_5(uint64_t a1)
{
  *(v2 + *(v3 + 28)) = a1;

  return static WFContentItem.toolkitTypeIdentifier(context:)(v2, v1);
}

uint64_t OUTLINED_FUNCTION_143_0()
{
  v1 = *(v0 + 432);
  result = *(v0 + 232);
  v3 = *(v0 + 152);
  v4 = *(*(v0 + 160) + 104);
  return result;
}

uint64_t OUTLINED_FUNCTION_150_0()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_143_2()
{
}

void OUTLINED_FUNCTION_151_1(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0x16u);
}

uint64_t OUTLINED_FUNCTION_151_3()
{

  return sub_1CA94D7F8();
}

uint64_t OUTLINED_FUNCTION_151_4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{

  return sub_1CA57ABD8(a1, a2, 0xE900000000000065, a3);
}

uint64_t OUTLINED_FUNCTION_81_2(uint64_t result)
{
  v1 = *(result + 24);
  v2 = *(result + 16) + 1;
  return result;
}

uint64_t OUTLINED_FUNCTION_81_4()
{

  return sub_1CA94D7F8();
}

BOOL OUTLINED_FUNCTION_81_5()
{

  return os_log_type_enabled(v0, v1);
}

uint64_t OUTLINED_FUNCTION_81_7@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(v3 + 104);
  v6 = a1 + a2 * v2 + 32;

  return sub_1CA2C9578(v6, v3 + 16);
}

void OUTLINED_FUNCTION_105_2()
{

  JUMPOUT(0x1CCAA4BF0);
}

uint64_t OUTLINED_FUNCTION_105_3()
{

  return sub_1CA26B54C(v1, v0, (v2 - 80));
}

BOOL OUTLINED_FUNCTION_105_4(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_105_6()
{
  v2 = (*(v0 + 80) + 32) & ~*(v0 + 80);

  return swift_allocObject();
}

void OUTLINED_FUNCTION_131_4()
{
  v2 = v0[136];
  v3 = v0[135];
  v4 = v0[69];
  *(v1 - 152) = v0[61];
}

uint64_t OUTLINED_FUNCTION_131_5()
{
  result = v0 + *(v1 - 120);
  v3 = *(v1 - 184);
  return result;
}

uint64_t OUTLINED_FUNCTION_131_6()
{

  return sub_1CA94D328();
}

void OUTLINED_FUNCTION_150_2()
{
  v3 = v0[50];
  v2 = v0[51];
  v4 = v0[48];
  v5 = v0[49];
  v6 = v0[46];
  v7 = v0[45];
}

uint64_t OUTLINED_FUNCTION_61_1()
{
  v2 = v0[37];
  v3 = v0[34];
  v5 = v0[30];
  v4 = v0[31];
  v7 = v0[28];
  v6 = v0[29];
  v9 = v0[26];
  v8 = v0[27];
  v11 = v0[24];
  v10 = v0[25];
  v14 = v0[23];
  v15 = v0[22];
  v12 = v0[21];
  v16 = v0[18];
  v17 = v0[17];
}

uint64_t OUTLINED_FUNCTION_61_4()
{
  result = *(v0 - 288);
  v2 = *(v0 - 272);
  v3 = *(v0 - 280);
  return result;
}

id OUTLINED_FUNCTION_61_6(void *a1)
{

  return [a1 (v1 + 157)];
}

uint64_t OUTLINED_FUNCTION_61_8()
{

  return swift_unknownObjectRelease();
}

uint64_t OUTLINED_FUNCTION_133_1()
{
  v1 = v0[94];
  v2 = v0[91];
  v3 = v0[90];
  return v0[61];
}

uint64_t OUTLINED_FUNCTION_133_2()
{
  result = v0;
  v3 = *(v1 - 152);
  v4 = *(v1 - 144);
  v5 = *(v1 - 136);
  return result;
}

uint64_t OUTLINED_FUNCTION_89_3@<X0>(uint64_t a1@<X8>)
{
  *(v2 - 168) = 7;
  *(v2 - 160) = a1;
  *(v2 - 152) = v1;

  return swift_task_create();
}

uint64_t OUTLINED_FUNCTION_89_4()
{
}

size_t sub_1CA27DD60(size_t a1, int64_t a2, char a3)
{
  result = sub_1CA2B93F8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_52_1(uint64_t a1, uint64_t a2)
{
  *(a2 + 16) = 2;

  return swift_willThrow();
}

uint64_t OUTLINED_FUNCTION_52_2()
{

  return swift_dynamicCast();
}

void OUTLINED_FUNCTION_52_3()
{
  v1 = v0[87];
  v2 = v0[82];
  v3 = v0[76];
  v4 = v0[69];
}

uint64_t OUTLINED_FUNCTION_52_4()
{

  return swift_allocError();
}

uint64_t OUTLINED_FUNCTION_52_5()
{

  return sub_1CA94A288();
}

uint64_t OUTLINED_FUNCTION_52_6()
{

  return swift_beginAccess();
}

void OUTLINED_FUNCTION_52_8()
{
  v1 = v0[148];
  v2 = v0[136];
  v3 = v0[135];
}

uint64_t OUTLINED_FUNCTION_144()
{
  result = *(v0 - 112);
  v3 = *(v0 - 184);
  v2 = *(v0 - 176);
  return result;
}

void OUTLINED_FUNCTION_144_0()
{
  v1 = v0[106];
  v2 = v0[105];
  v3 = v0[104];
}

uint64_t OUTLINED_FUNCTION_144_1(uint64_t a1, uint64_t a2)
{

  return sub_1CA2D9D20(a1, a2, v3, v2);
}

uint64_t OUTLINED_FUNCTION_144_2()
{

  return swift_arrayDestroy();
}

uint64_t OUTLINED_FUNCTION_99_1()
{
  v3 = v0[10];
  v2 = v0[11];
  v4 = v0[8];
  v5 = v0[5];
}

uint64_t OUTLINED_FUNCTION_254()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_99_5@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 - a1;

  return sub_1CA285AF8(v3);
}

uint64_t OUTLINED_FUNCTION_68_2()
{
  v3 = v0[32];
  v2 = v0[33];
  v5 = v0[28];
  v4 = v0[29];
  v6 = v0[27];
  v7 = v0[24];
}

uint64_t OUTLINED_FUNCTION_68_4()
{
  v1 = *(*(v0 - 256) + 8);
  result = *(v0 - 264);
  v3 = *(v0 - 240);
  return result;
}

uint64_t OUTLINED_FUNCTION_68_6()
{

  return sub_1CA4715A8(v0, type metadata accessor for WFContentItem.ToolKitTypeResolutionContext);
}

__n128 *OUTLINED_FUNCTION_68_7(__n128 *result, __n128 a2)
{
  result[1] = a2;
  result[2].n128_u64[0] = v3;
  result[2].n128_u64[1] = v2;
  return result;
}

uint64_t OUTLINED_FUNCTION_68_9()
{

  return sub_1CA5EF5D8();
}

double OUTLINED_FUNCTION_68_10()
{
  *(v0 + 48) = 0;
  result = 0.0;
  *(v0 + 16) = 0u;
  *(v0 + 32) = 0u;
  *v0 = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_103_2()
{
  v1 = v0[61];
  result = v0[46];
  v3 = v0[44];
  v5 = v0[24];
  v4 = v0[25];
  v6 = v0[23];
  v7 = *(v0[45] + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_103_3()
{
  v3 = v0[143];
  v4 = v0[133];
  v5 = v0[132];
  *(v1 - 136) = v0[60];

  return sub_1CA94AC18();
}

uint64_t OUTLINED_FUNCTION_109_1()
{
  v2 = v0[57];
  v3 = v0[32];
  v4 = v0[29];
  v5 = v0[30];
}

uint64_t OUTLINED_FUNCTION_109_3()
{

  return sub_1CA94D7F8();
}

uint64_t OUTLINED_FUNCTION_109_4()
{
  v1 = v0[52];
  v2 = v0[48];
  return v0[43];
}

uint64_t OUTLINED_FUNCTION_92()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_92_0()
{
  v3 = v1[46];
  v4 = v1[44];
  v5 = *(v0 + 56) + *(v1[45] + 72) * v2;
  v6 = *(v1[45] + 16);
  return v1[47];
}

uint64_t OUTLINED_FUNCTION_92_1()
{
  result = *(v0 + 1464);
  v2 = *(v0 + 1384);
  return result;
}

uint64_t OUTLINED_FUNCTION_92_4()
{
  v3 = *(v1 + 376);

  return sub_1CA275D70(v0, (v3 & 0xC000000000000001) == 0, v3);
}

id sub_1CA27E214(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, unsigned __int16 a6, char a7)
{
  v11 = sub_1CA94C368();

  v12 = sub_1CA94C368();

  v13 = [v7 initWithIdentifier:v11 isFolder:a3 & 1 name:v12 glyphCharacter:a6 isDeleted:a7 & 1];

  return v13;
}

uint64_t OUTLINED_FUNCTION_138_0()
{

  return swift_slowAlloc();
}

void OUTLINED_FUNCTION_104_3()
{
  v4 = v1[40];
  v3 = v1[41];
  v5 = v1[33];
  v6 = v1[30];
  v7 = v1[31];
  v8 = v1[25];
  v9 = v0;
  v11 = v1[22];
  v10 = v1[23];
  v12 = v1[10];
}

unint64_t sub_1CA27E37C()
{
  result = qword_1EC441850;
  if (!qword_1EC441850)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC441850);
  }

  return result;
}

uint64_t sub_1CA27E524()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1CA94A098();

  return v1;
}

uint64_t sub_1CA27E598@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_1CA27E524();
  *a2 = result;
  return result;
}

uint64_t sub_1CA27E5C8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1CA27E610(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_1CA27E650()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC446308, &unk_1CA98AE88);
  sub_1CA94A078();
  return swift_endAccess();
}

uint64_t sub_1CA27E818()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t OrderedDictionary.init()@<X0>(uint64_t *a1@<X8>)
{
  *a1 = sub_1CA94C6B8();
  OUTLINED_FUNCTION_9_31();
  a1[1] = sub_1CA94C6B8();
  OUTLINED_FUNCTION_9_31();
  swift_getTupleTypeMetadata2();
  sub_1CA94C6B8();
  result = sub_1CA94C1E8();
  a1[2] = result;
  return result;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

id WFWorkflowTypeForCollectionIdentifier(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"ShareSheet"])
  {
    v2 = MEMORY[0x1E69E1458];
LABEL_11:
    v3 = *v2;
    goto LABEL_12;
  }

  if ([v1 isEqualToString:@"Watch"])
  {
    v2 = MEMORY[0x1E69E1470];
    goto LABEL_11;
  }

  if ([v1 isEqualToString:@"Sleep"])
  {
    v2 = MEMORY[0x1E69E1468];
    goto LABEL_11;
  }

  if ([v1 isEqualToString:@"MenuBar"])
  {
    v2 = MEMORY[0x1E69E1438];
    goto LABEL_11;
  }

  if ([v1 isEqualToString:@"QuickActions"])
  {
    v2 = MEMORY[0x1E69E1440];
    goto LABEL_11;
  }

  v3 = 0;
LABEL_12:

  return v3;
}

uint64_t OUTLINED_FUNCTION_78_0@<X0>(uint64_t a1@<X8>)
{
  v7 = *(v6 - 88);
  *(*(v6 - 96) + 8 * a1) = v2 | v1;
  result = *(v4 + 48) + v3 * v5;
  v9 = **(v6 - 152);
  return result;
}

uint64_t OUTLINED_FUNCTION_78_2()
{
}

uint64_t OUTLINED_FUNCTION_78_4()
{
  v3 = v0[36];
  v2 = v0[37];
  v4 = v0[34];
  v5 = v0[35];
  v6 = v0[33];
  v8 = v0[28];
  v7 = v0[29];
}

uint64_t OUTLINED_FUNCTION_78_6(uint64_t a1)
{
  *(v1 + 64) = a1;

  return sub_1CA94C7D8();
}

void OUTLINED_FUNCTION_78_9()
{

  sub_1CA2E55BC();
}

uint64_t OUTLINED_FUNCTION_78_10()
{
  v3 = *(*(*(v1 - 120) + 48) + 16 * v0 + 8);
}

uint64_t OUTLINED_FUNCTION_142_2()
{

  return sub_1CA94D268();
}

uint64_t OUTLINED_FUNCTION_142_3(uint64_t a1)
{

  return __swift_getEnumTagSinglePayload(a1, 1, v1);
}

void OUTLINED_FUNCTION_142_5(void *a1)
{

  sub_1CA5EE99C(v1, a1, v2);
}

uint64_t OUTLINED_FUNCTION_156_0()
{

  return sub_1CA949C58();
}

void OUTLINED_FUNCTION_156_2()
{
  v3 = v1[177];
  v4 = v1[175];
  v5 = v1[174];
  v6 = v1[61];
}

uint64_t OUTLINED_FUNCTION_73_2()
{
  v2 = v0[29];
  v3 = v0[26];
  v4 = v0[23];
  v5 = v0[20];
  v6 = v0[17];
}

uint64_t OUTLINED_FUNCTION_73_5@<X0>(uint64_t a1@<X8>)
{
  result = v1 + a1 + *(v2 + 64) * v3;
  v6 = *(v4 - 88);
  return result;
}

uint64_t OUTLINED_FUNCTION_73_7()
{
  result = v0[46];
  v2 = v0[47];
  v4 = v0[37];
  v3 = v0[38];
  v6 = v0[34];
  v5 = v0[35];
  v8 = v0[31];
  v7 = v0[32];
  return result;
}

uint64_t OUTLINED_FUNCTION_155_2()
{
  v2 = *(v0 - 136);

  return swift_arrayDestroy();
}

uint64_t OUTLINED_FUNCTION_139_2()
{

  return swift_arrayDestroy();
}

uint64_t OUTLINED_FUNCTION_139_3()
{
  v2 = *(v0 - 96);

  return sub_1CA94D798();
}

uint64_t OUTLINED_FUNCTION_139_4(uint64_t a1)
{
  *(v1 - 136) = a1;

  return swift_willThrow();
}

uint64_t OUTLINED_FUNCTION_139_6()
{
  v3 = *(*(v1 + 48) + 16 * v0 + 8);
}

void OUTLINED_FUNCTION_66_2()
{
  v1 = v0[195];
  v2 = v0[190];
  v3 = v0[189];
}

uint64_t OUTLINED_FUNCTION_66_4()
{
  v1 = v0[19];
  v2 = v0[20];
  return v0[18];
}

uint64_t OUTLINED_FUNCTION_66_5@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{

  return sub_1CA57ABD8(a1, 0x74657366666FLL, 0xE600000000000000, a2);
}

uint64_t OUTLINED_FUNCTION_66_7(unint64_t *a1)
{
  v2 = MEMORY[0x1EEE78BB0];

  return sub_1CA286854(a1, v2);
}

uint64_t OUTLINED_FUNCTION_128_0()
{
  v1 = v0[173];
  v2 = v0[169];
  v3 = v0[163];
  v4 = v0[160];
  v5 = v0[64];
  v6 = *(v0[161] + 16);
  return v0[162];
}

uint64_t OUTLINED_FUNCTION_77_3@<X0>(uint64_t a1@<X8>)
{
  *(v1 + 56) = a1;
  *(v1 + 24) = sub_1CA3178DC;

  return swift_continuation_init();
}

uint64_t OUTLINED_FUNCTION_77_5()
{

  return sub_1CA94D588();
}

void OUTLINED_FUNCTION_77_6()
{
  v1 = v0[143];
  v2 = v0[142];
  v3 = v0[141];
  v4 = v0[140];
}

uint64_t OUTLINED_FUNCTION_77_7()
{
  v2 = v0[59];
  v3 = v0[56];
  v5 = v0[52];
  v4 = v0[53];
  v6 = v0[43];
}

uint64_t OUTLINED_FUNCTION_77_9(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v16 = *(*(a14 + 48) + 16 * v14 + 8);
}

unint64_t OUTLINED_FUNCTION_77_10()
{
  v2 = *(v0 - 232);

  return sub_1CA271BF8();
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *a1)
{
  v1 = a1;
  if ((*(*(a1[3] - 8) + 82) & 2) != 0)
  {
    *a1 = swift_allocBox();
    return v2;
  }

  return v1;
}

uint64_t sub_1CA27F268(__int128 *a1, uint64_t a2)
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

uint64_t OUTLINED_FUNCTION_84()
{
  v2 = v0[198];
  v3 = v0[159];
  v4 = v0[130];
  v5 = v0[127];
  v6 = v0[61];
}

id OUTLINED_FUNCTION_84_3(void *a1)
{
  v3 = *(v1 - 328);
  v4 = *(v1 - 320);

  return WFDeserializedVariableObject(a1, v3, v4);
}

id OUTLINED_FUNCTION_174_0(id a1)
{
  v3 = v1[35];
  v4 = v1[21];
  v5 = *(v1[20] + 20);

  return a1;
}

uint64_t OUTLINED_FUNCTION_153_0()
{

  return sub_1CA94A6B8();
}

uint64_t OUTLINED_FUNCTION_153_2()
{
  v2 = *(v0 + 1568);
}

uint64_t OUTLINED_FUNCTION_153_4()
{
}

void OUTLINED_FUNCTION_146_2()
{
  v1 = v0[134];
  v2 = v0[133];
  v3 = v0[132];
  v4 = v0[131];
}

uint64_t OUTLINED_FUNCTION_154_0()
{

  return sub_1CA94C288();
}

uint64_t OUTLINED_FUNCTION_154_2()
{
  *(v1 - 112) = v0;

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_171_0()
{
  result = *(v0 - 528);
  v2 = *(v0 - 504);
  return result;
}

uint64_t OUTLINED_FUNCTION_171_2()
{

  return swift_allocObject();
}

unint64_t sub_1CA27F53C()
{
  result = qword_1EC441B18;
  if (!qword_1EC441B18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC443E20, &qword_1CA986220);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC441B18);
  }

  return result;
}

uint64_t sub_1CA27F608(void *a1)
{
  v1 = [a1 folderIdentifier];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1CA94C3A8();

  return v3;
}

void (*Library.shortcuts(inFolderWithIdentifier:)(uint64_t a1, uint64_t a2))(char *, uint64_t, uint64_t)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443B98, &qword_1CA986560);
  OUTLINED_FUNCTION_1_0(v6);
  v8 = v7;
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x1EEE9AC00](v11);
  v13 = v31 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443BE8, &qword_1CA982098);
  OUTLINED_FUNCTION_18_0(v14);
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x1EEE9AC00](v17);
  v19 = v31 - v18;
  v20 = OBJC_IVAR___WFLibrary_capsule;
  OUTLINED_FUNCTION_8_17();
  swift_beginAccess();
  v21 = *(v8 + 16);
  v31[0] = v3;
  v22 = v3 + v20;
  v23 = v21;
  v21(v13, v22, v6);
  v31[1] = a1;
  v31[2] = a2;
  OUTLINED_FUNCTION_204();
  sub_1CA2C9BB4();
  v24 = *(v8 + 8);
  v24(v13, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443BF0, &qword_1CA9820A0);
  v25 = OUTLINED_FUNCTION_109();
  LODWORD(a1) = __swift_getEnumTagSinglePayload(v25, v26, v27);
  sub_1CA27080C(v19, &qword_1EC443BE8, &qword_1CA982098);
  if (a1 == 1)
  {
    sub_1CA2D9AF4();
    swift_allocError();
    *v28 = 0;
    *(v28 + 8) = 0;
    *(v28 + 16) = 2;
    swift_willThrow();
  }

  else
  {
    v23(v13, v31[0] + v20, v6);
    sub_1CA2D776C();
    v23 = v29;
    v24(v13, v6);
  }

  return v23;
}

void OUTLINED_FUNCTION_101_2(uint64_t a1@<X8>)
{
  *(v3 + 1632) = *(a1 + 8);
  v4 = *(v1 + 32);
  v5 = a1 + *(v2 + 48);
}

void OUTLINED_FUNCTION_101_4(void *a1@<X8>)
{
  v3 = v1[143];
  v4 = v1[133];
  v5 = v1[132];
}

void OUTLINED_FUNCTION_125_0()
{
  v1 = v0[100];
  v2 = v0[99];
  v3 = v0[98];
}

uint64_t OUTLINED_FUNCTION_125_4()
{
  v2 = v0[24];
  result = v0[25];
  v4 = v0[22];
  v3 = v0[23];
  v5 = v0[21];
  v7 = v0[17];
  v6 = v0[18];
  v8 = v0[16];
  return result;
}

uint64_t OUTLINED_FUNCTION_126_0()
{
  v1 = v0[32];
  v2 = *(v0[33] + 96);
  return v0[34];
}

id OUTLINED_FUNCTION_126_1()
{

  return [v0 key];
}

void OUTLINED_FUNCTION_126_4()
{
  *(v2 - 96) = v1[143];
  *(v2 - 88) = v0;
  v3 = v1[133];
  *(v2 - 104) = v1[132];
}

void OUTLINED_FUNCTION_126_5()
{

  JUMPOUT(0x1CCAA27B0);
}

void __WFCurrentBundle_block_invoke()
{
  v8 = *MEMORY[0x1E69E9840];
  memset(&v5, 0, sizeof(v5));
  if (dladdr(WFCurrentBundle, &v5) && v5.dli_fname)
  {
    v0 = [objc_alloc(MEMORY[0x1E695DFF8]) initFileURLWithFileSystemRepresentation:v5.dli_fname isDirectory:0 relativeToURL:0];
    v1 = _CFBundleCopyBundleURLForExecutableURL();
    v2 = [MEMORY[0x1E696AAE8] bundleWithURL:v1];
    v3 = WFCurrentBundle_bundle;
    WFCurrentBundle_bundle = v2;
  }

  else
  {
    v0 = getWFGeneralLogObject();
    if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v7 = "WFCurrentBundle_block_invoke";
      _os_log_impl(&dword_1CA256000, v0, OS_LOG_TYPE_ERROR, "%s WFLocalizedString failed to locate current bundle", buf, 0xCu);
    }
  }

  v4 = *MEMORY[0x1E69E9840];
}

id __WFDescriptorsForObjectIDs_block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 entity];
  v5 = [v4 name];
  v6 = WFDatabaseObjectTypeForEntityName(v5);

  if (v6 >= 0xC || (v7 = off_1E837A328[v6], v6 == 8))
  {
    v8 = 0;
    v11 = 0;
  }

  else
  {
    v8 = v7;
    v9 = [*(a1 + 32) objectWithID:v3];
    v10 = [v9 valueForKey:v8];

    if (v10)
    {
      v11 = [objc_alloc(MEMORY[0x1E69E0A68]) initWithIdentifier:v10 objectType:v6];
    }

    else
    {
      v11 = 0;
    }
  }

  return v11;
}

void *sub_1CA280094()
{
  OUTLINED_FUNCTION_109_0();
  if (!v0)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v3 = OUTLINED_FUNCTION_92();
  OUTLINED_FUNCTION_41_3(v3);
  v3[2] = v2;
  v3[3] = (2 * (v4 / 8)) | 1;
  return v3;
}

void OrderedDictionary.subscript.setter()
{
  OUTLINED_FUNCTION_37_0();
  v1 = v0;
  v75 = v2;
  v4 = v3;
  v71 = *(v0 + 16);
  OUTLINED_FUNCTION_4_12();
  v73 = v5;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_6_0();
  v70 = v10 - v9;
  v12 = *(v11 + 24);
  v13 = sub_1CA94D098();
  OUTLINED_FUNCTION_4_12();
  v15 = v14;
  v17 = *(v16 + 64);
  v19 = MEMORY[0x1EEE9AC00](v18);
  v21 = v62 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x1EEE9AC00](v19);
  v24 = v62 - v23;
  MEMORY[0x1EEE9AC00](v22);
  v26 = v62 - v25;
  OUTLINED_FUNCTION_4_12();
  v28 = v27;
  v30 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_10_30();
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_48_0();
  v74 = v33;
  OUTLINED_FUNCTION_19_22();
  v34(v26, v4, v13);
  if (__swift_getEnumTagSinglePayload(v26, 1, v12) == 1)
  {
    v35 = *(v15 + 8);
    v35(v26, v13);
    v36 = v75;
    OrderedDictionary.removeValue(forKey:)();
    (*(v73 + 8))(v36, v71);
    v35(v4, v13);
    v35(v21, v13);
  }

  else
  {
    v66 = v21;
    v68 = v4;
    (*(v28 + 32))(v74, v26, v12);
    v37 = v71;
    v38 = v72;
    v39 = v72[2];
    v64 = v72 + 2;
    v40 = *(v1 + 32);
    sub_1CA94C268();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v24, 1, v12);
    v42 = *(v15 + 8);
    v65 = v15 + 8;
    v63 = v42;
    v42(v24, v13);
    v43 = v37;
    v44 = v28;
    v67 = v13;
    v62[1] = v40;
    if (EnumTagSinglePayload == 1)
    {
      v45 = v43;
      v46 = v73;
      OUTLINED_FUNCTION_19_22();
      v47 = v70;
      v48 = v75;
      v49(v70, v75, v45);
      OUTLINED_FUNCTION_6_42();
      sub_1CA94C758();
      sub_1CA94C708();
      (*(v28 + 16))(v69, v74, v12);
      sub_1CA94C758();
      sub_1CA94C708();
      v50 = v68;
    }

    else
    {
      v51 = v74;
      v76 = v38[1];
      v45 = v43;
      sub_1CA94C758();
      OUTLINED_FUNCTION_2_0();
      swift_getWitnessTable();
      OUTLINED_FUNCTION_18_26();
      v48 = v75;
      sub_1CA94CAF8();
      v47 = v70;
      if (v78 != 1)
      {
        v52 = v77;
        sub_1CA94C758();
        sub_1CA94C6A8();
        v53 = *v38;
        sub_1CA5CFED0(v52, *v38);
        isClassOrObjCExistentialType = _swift_isClassOrObjCExistentialType();
        v55 = v53 & 0xFFFFFFFFFFFFFF8;
        if ((isClassOrObjCExistentialType & 1) == 0)
        {
          v55 = v53;
        }

        (*(v44 + 24))(v55 + ((*(v44 + 80) + 32) & ~*(v44 + 80)) + *(v44 + 72) * v52, v51, v12);
      }

      v50 = v68;
      v46 = v73;
    }

    v56 = v66;
    OUTLINED_FUNCTION_19_22();
    v57(v47, v48, v45);
    v58 = v74;
    (*(v44 + 16))(v56, v74, v12);
    OUTLINED_FUNCTION_89();
    __swift_storeEnumTagSinglePayload(v59, v60, v61, v12);
    OUTLINED_FUNCTION_6_42();
    sub_1CA94C248();
    sub_1CA94C278();
    (*(v46 + 8))(v48, v45);
    v63(v50, v67);
    (*(v44 + 8))(v58, v12);
  }

  OUTLINED_FUNCTION_36();
}

{
  OUTLINED_FUNCTION_37_0();
  v1 = v0;
  v28 = v2;
  v4 = v3;
  v6 = v5;
  v7 = *(v0 + 24);
  OUTLINED_FUNCTION_9_31();
  v8 = sub_1CA94D098();
  OUTLINED_FUNCTION_18_0(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v27 - v12;
  v14 = *(v1 + 16);
  OUTLINED_FUNCTION_4_12();
  v16 = v15;
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_6_0();
  (*(v16 + 16))(v21 - v20, v4, v14);
  v22 = *(v7 - 8);
  (*(v22 + 16))(v13, v6, v7);
  OUTLINED_FUNCTION_89();
  __swift_storeEnumTagSinglePayload(v23, v24, v25, v7);
  OrderedDictionary.subscript.setter();
  v26 = *(v22 + 8);
  v26(v28, v7);
  (*(v16 + 8))(v4, v14);
  v26(v6, v7);
  OUTLINED_FUNCTION_36();
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t get_enum_tag_for_layout_string_11WorkflowKit22AutoShortcutAppSectionV0F4TypeO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t AutoShortcutAppSection.bundleIdentifier.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  sub_1CA94C218();
  return OUTLINED_FUNCTION_23();
}

void *sub_1CA280B04(void *result, int a2)
{
  if (a2 < 0)
  {
    result[2] = 0;
    result[3] = 0;
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

void AutoShortcutAppSection.withUserShortcuts(_:)()
{
  OUTLINED_FUNCTION_37_0();
  v1 = v0;
  v3 = v2;
  v59 = v4;
  v5 = sub_1CA25B418(v2);
  v6 = MEMORY[0x1E69E7CC0];
  if (v5)
  {
    v7 = v5;
    v60 = MEMORY[0x1E69E7CC0];
    sub_1CA27B0E8();
    if (v7 < 0)
    {
      goto LABEL_26;
    }

    v8 = 0;
    v6 = v60;
    do
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x1CCAA22D0](v8, v3);
      }

      else
      {
        v9 = *(v3 + 8 * v8 + 32);
      }

      v10 = v9;
      v12 = *(v60 + 16);
      v11 = *(v60 + 24);
      if (v12 >= v11 >> 1)
      {
        OUTLINED_FUNCTION_53_0(v11);
        sub_1CA27B0E8();
      }

      ++v8;
      *(v60 + 16) = v12 + 1;
      v13 = v60 + 16 * v12;
      *(v13 + 32) = v10;
      *(v13 + 40) = 0;
    }

    while (v7 != v8);
  }

  v14 = *v1;
  v15 = v1[1];
  v52 = v1[3];
  v54 = v1[2];
  v56 = v1[5];
  v57 = v1[4];
  v16 = v1[6];
  v17 = v1[7];
  sub_1CA280EAC(*v1, v15);
  v51 = v16;
  v18 = sub_1CA94C218();
  sub_1CA280F08(v18);
  v19 = v6;
  v20 = type metadata accessor for AutoShortcutAppSection();
  v21 = *(v20 + 32);
  v22 = sub_1CA948D28();
  v23 = OUTLINED_FUNCTION_1_0(v22);
  v25 = v24;
  v27 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_6_0();
  v30 = (v29 - v28);
  v50 = v25;
  v31 = *(v25 + 16);
  v31(v29 - v28, v1 + v21, v22);
  *v59 = v14;
  v59[1] = v15;
  v59[2] = v54;
  v59[3] = v52;
  v59[4] = v57;
  v59[5] = v56;
  v59[6] = v51;
  v53 = v30;
  v55 = v22;
  v31(v59 + *(v20 + 32), v30, v22);
  v32 = objc_opt_self();
  sub_1CA94C218();
  v33 = [v32 lockedAppBundleIdentifiers];
  v34 = sub_1CA94C8F8();

  v35 = sub_1CA27AF18(v57, v56, v34);

  v36 = 0;
  OUTLINED_FUNCTION_60_1();
  v38 = MEMORY[0x1E69E7CC0];
  v58 = v37;
LABEL_11:
  for (i = (v37 + 16 * v36); ; i += 16)
  {
    if (v31 == v36)
    {
      (*(v50 + 8))(v53, v55);

      v59[7] = v38;
      OUTLINED_FUNCTION_36();
      return;
    }

    if (v36 >= *(v19 + 16))
    {
      break;
    }

    v40 = *(i - 1);
    v41 = *i;
    v42 = v40;
    if ((v35 & v41 & 1) == 0)
    {
      v46 = v56 & v41;
LABEL_19:
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_59_1();
      }

      v48 = *(v38 + 16);
      v47 = *(v38 + 24);
      if (v48 >= v47 >> 1)
      {
        OUTLINED_FUNCTION_53_0(v47);
        sub_1CA27B0E8();
      }

      ++v36;
      *(v38 + 16) = v48 + 1;
      v49 = v38 + 16 * v48;
      *(v49 + 32) = v40;
      *(v49 + 40) = v46 & 1;
      v37 = v58;
      goto LABEL_11;
    }

    v43 = v42;
    v44 = [v42 entityInfo];
    if (!v44)
    {
      v46 = 1;
      goto LABEL_19;
    }

    v45 = v44;

    ++v36;
  }

  __break(1u);
LABEL_26:
  __break(1u);
}

uint64_t sub_1CA280EAC(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_1CA94C218();

    return sub_1CA94C218();
  }

  return result;
}

void sub_1CA280F08(uint64_t a1)
{
  v4 = OUTLINED_FUNCTION_1_7(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_1CA280EF0(v4, 1);
  OUTLINED_FUNCTION_29_2();
  if (!v6)
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  OUTLINED_FUNCTION_2_6();
  if (v7 != v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_34_1();

  if (!v1)
  {
LABEL_8:
    *v2 = v3;
    return;
  }

  OUTLINED_FUNCTION_28_0();
  if (!v5)
  {
    *(v3 + 16) = v8;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

uint64_t OUTLINED_FUNCTION_37_2()
{
  v2 = v0[60];
  v4 = v0[56];
  v3 = v0[57];
  v7 = v0[30];
  v8 = v0[29];
  v9 = v0[32];
  v5 = v0[27];

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_37_5(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return sub_1CA2D9D20(v4, v5, a3, a4);
}

void OUTLINED_FUNCTION_37_6()
{

  JUMPOUT(0x1CCAA1490);
}

id OUTLINED_FUNCTION_37_9(uint64_t a1, uint64_t a2)
{

  return sub_1CA32E1E0(a1, a2, 0, v2);
}

uint64_t OUTLINED_FUNCTION_37_12()
{
}

uint64_t AutoShortcutAppSection.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AutoShortcutAppSection() + 32);
  v4 = sub_1CA948D28();
  v5 = OUTLINED_FUNCTION_52(v4);
  v7 = *(v6 + 16);

  return v7(a1, v1 + v3, v5);
}

Swift::Void __swiftcall OrderedDictionary.removeAll()()
{
  v1 = v0;
  v2 = *(v0 + 16);
  OUTLINED_FUNCTION_20_26();
  sub_1CA94C758();
  sub_1CA94C748();
  v3 = *(v1 + 24);
  OUTLINED_FUNCTION_6_42();
  sub_1CA94C758();
  sub_1CA94C748();
  v4 = *(v1 + 32);
  OUTLINED_FUNCTION_20_26();
  sub_1CA94C248();
  sub_1CA94C238();
}

uint64_t sub_1CA2811DC(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_1CA28121C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t OrderedDictionary.subscript.getter(uint64_t a1, void *a2)
{
  v3 = *(v2 + 16);
  v4 = a2[2];
  v5 = a2[3];
  v6 = a2[4];
  return sub_1CA94C268();
}

unint64_t sub_1CA28127C()
{
  result = qword_1EDB9F4E8;
  if (!qword_1EDB9F4E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB9F4E8);
  }

  return result;
}

uint64_t AggregatedEntry.hash(into:)()
{
  v1 = *v0;
  MEMORY[0x1CCAA2780](*(v0 + 8));
  return sub_1CA94CFE8();
}

uint64_t sub_1CA28134C@<X0>(uint64_t *a1@<X8>)
{
  result = AggregatedEntry.id.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t AggregatedEntry.id.getter()
{
  v1 = &selRef_id;
  if (!*(v0 + 8))
  {
    v1 = &selRef_identifier;
  }

  v2 = [*v0 *v1];
  sub_1CA94C3A8();
  OUTLINED_FUNCTION_1_2();

  return OUTLINED_FUNCTION_52_0();
}

uint64_t sub_1CA281410(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1CA281454(SEL *a1, uint64_t (*a2)(void))
{
  if (*(v2 + 8))
  {
    v4 = *v2;
    return a2();
  }

  else
  {
    v6 = [*v2 icon];
    v7 = [v6 *a1];

    return v7;
  }
}

uint64_t sub_1CA2814C4(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 8))
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

id WFExecutableAppShortcut.entryIcon.getter()
{
  v2 = [v0 entityInfo];
  if (v2)
  {
    v3 = v2;
    v1 = [v2 icon];
    v4 = [v1 wfIcon];

    if (v4)
    {
      return v4;
    }
  }

  v6 = [v0 underlyingAutoShortcut];
  v7 = [v6 systemImageName];

  sub_1CA94C3A8();
  OUTLINED_FUNCTION_27_19();

  v8 = HIBYTE(v1) & 0xF;
  if ((v1 & 0x2000000000000000) == 0)
  {
    v8 = v6 & 0xFFFFFFFFFFFFLL;
  }

  if (v8)
  {
    v9 = [objc_opt_self() clearColor];
    v10 = [objc_allocWithZone(MEMORY[0x1E69E0B48]) initWithColor_];

    v11 = [v0 underlyingAutoShortcut];
    v12 = [v11 systemImageName];

    sub_1CA94C3A8();
    OUTLINED_FUNCTION_27_19();

    v13 = objc_allocWithZone(MEMORY[0x1E69E0D70]);
    return sub_1CA28171C(v11, v1, v10);
  }

  else
  {
    sub_1CA25B3D0(0, &qword_1EC445118, 0x1E69E0960);
    v14 = [v0 phrase];
    v15 = [v14 bundleIdentifier];

    v16 = sub_1CA94C3A8();
    v18 = v17;

    return sub_1CA409428(v16, v18);
  }
}

id sub_1CA28171C(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = sub_1CA94C368();

  v6 = [v3 initWithSymbolName:v5 background:a3];

  return v6;
}

uint64_t AggregatedEntry.iconBadges.getter()
{
  OUTLINED_FUNCTION_30_17();
  if (v1)
  {
    v2 = [*v0 entityInfo];
    if (v2)
    {
      v3 = v2;
      v4 = [v2 badge];

      if (v4 == 2)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC446968, &qword_1CA98C2A0);
        v5 = swift_allocObject();
        *(v5 + 16) = xmmword_1CA981310;
        v16 = sub_1CA948D28();
        v17 = OUTLINED_FUNCTION_1_0(v16);
        v19 = v18;
        v21 = *(v20 + 64);
        MEMORY[0x1EEE9AC00](v17);
        OUTLINED_FUNCTION_6_0();
        sub_1CA948D18();
        sub_1CA948CC8();
        v22 = *(v19 + 8);
        v23 = OUTLINED_FUNCTION_52_0();
        v24(v23);
        sub_1CA94D3A8();
        sub_1CA25B3D0(0, &qword_1EC445118, 0x1E69E0960);
        v15 = MEMORY[0x1E69E0E70];
        goto LABEL_9;
      }

      if (v4 == 1)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC446968, &qword_1CA98C2A0);
        v5 = swift_allocObject();
        *(v5 + 16) = xmmword_1CA981310;
        v6 = sub_1CA948D28();
        v7 = OUTLINED_FUNCTION_1_0(v6);
        v9 = v8;
        v11 = *(v10 + 64);
        MEMORY[0x1EEE9AC00](v7);
        OUTLINED_FUNCTION_6_0();
        sub_1CA948D18();
        sub_1CA948CC8();
        v12 = *(v9 + 8);
        v13 = OUTLINED_FUNCTION_52_0();
        v14(v13);
        sub_1CA94D3A8();
        sub_1CA25B3D0(0, &qword_1EC445118, 0x1E69E0960);
        v15 = MEMORY[0x1E69E0EC0];
LABEL_9:
        v25 = *v15;
        v26 = sub_1CA94C3A8();
        *(v5 + 72) = sub_1CA409428(v26, v27);
        *(v5 + 80) = 3;
        return v5;
      }
    }
  }

  return MEMORY[0x1E69E7CC0];
}

__CFString *WFWorkflowCollectionIdentifierForWorkflowType(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:*MEMORY[0x1E69E1470]])
  {
    v2 = @"Watch";
  }

  else if ([v1 isEqualToString:*MEMORY[0x1E69E1458]])
  {
    v2 = @"ShareSheet";
  }

  else if ([v1 isEqualToString:*MEMORY[0x1E69E1468]])
  {
    v2 = @"Sleep";
  }

  else if ([v1 isEqualToString:*MEMORY[0x1E69E1438]])
  {
    v2 = @"MenuBar";
  }

  else if ([v1 isEqualToString:*MEMORY[0x1E69E1440]])
  {
    v2 = @"QuickActions";
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t AggregatedEntry.shortTitle.getter()
{
  v1 = *v0;
  OUTLINED_FUNCTION_30_17();
  if (!v2)
  {
    v5 = [v1 name];
LABEL_5:
    sub_1CA94C3A8();
    OUTLINED_FUNCTION_1_2();
    goto LABEL_6;
  }

  v3 = [v1 entityInfo];
  if (!v3)
  {
    v7 = [v1 underlyingAutoShortcut];
    v5 = [v7 localizedShortTitle];

    if (!v5)
    {
      return OUTLINED_FUNCTION_52_0();
    }

    goto LABEL_5;
  }

  v4 = v3;
  v5 = [v3 name];
  sub_1CA94C3A8();
  OUTLINED_FUNCTION_1_2();

LABEL_6:
  return OUTLINED_FUNCTION_52_0();
}

uint64_t WFEnsureDaemonIsRunningForSyncIfNeeded()
{
  result = +[WFCloudKitSyncSession isSyncEnabled];
  if (result)
  {

    return notify_post("com.apple.shortcuts.daemon-wakeup-request");
  }

  return result;
}

uint64_t AutoShortcutApp.localizedName.getter()
{
  v1 = *v0;
  v2 = v0[1];
  if (qword_1EDB9F960 != -1)
  {
    swift_once();
  }

  result = sub_1CA2786EC(v1, v2);
  if (!v4)
  {
    return 0;
  }

  return result;
}

uint64_t AutoShortcutApp.bundleIdentifier.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1CA94C218();
  return OUTLINED_FUNCTION_23();
}

void WFPresentResumeSyncConfirmationAlertWithUserInterfaceIfNeeded(void *a1)
{
  v10 = a1;
  if (!v10)
  {
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void WFPresentResumeSyncConfirmationAlertWithUserInterfaceIfNeeded(id<WFUserInterfaceHost>  _Nonnull __strong)"];
    [v8 handleFailureInFunction:v9 file:@"WFResumeSyncConfirmationAlertPresentation.m" lineNumber:17 description:{@"Invalid parameter not satisfying: %@", @"userInterface"}];
  }

  if (+[WFCloudKitSyncSession zoneWasPurged])
  {
    v1 = [MEMORY[0x1E6996C70] alertWithPreferredStyle:0];
    v2 = WFLocalizedString(@"iCloud Shortcuts Deleted");
    [v1 setTitle:v2];

    v3 = WFLocalizedString(@"You have recently deleted your Shortcuts data from iCloud. Would you like to continue syncing shortcuts to iCloud?");
    [v1 setMessage:v3];

    v4 = MEMORY[0x1E6996C78];
    v5 = WFLocalizedString(@"Continue Syncing");
    v6 = [v4 buttonWithTitle:v5 style:0 handler:&__block_literal_global_13911];
    [v1 addButton:v6];

    v7 = [MEMORY[0x1E6996C78] cancelButtonWithHandler:&__block_literal_global_82];
    [v1 addButton:v7];

    [v10 presentAlert:v1];
  }
}

id WFBackgroundShortcutRunnerLockFileURL()
{
  v0 = [MEMORY[0x1E6996F68] sharedAppGroupDirectoryURL];
  v1 = [v0 URLByAppendingPathComponent:@"Library/Caches/BackgroundShortcutRunner.lock"];

  return v1;
}

id WFAssetsDirectory()
{
  v0 = [MEMORY[0x1E695DFF8] wf_shortcutsDirectoryURL];
  v1 = [v0 URLByAppendingPathComponent:@"QuarantineAsset" isDirectory:1];

  return v1;
}

id RunningProgressSuppressionStateMachine.init()()
{
  swift_unknownObjectWeakInit();
  *&v0[OBJC_IVAR___WFRunningProgressSuppressionStateMachine_initialDialogAttribution] = 0;
  *&v0[OBJC_IVAR___WFRunningProgressSuppressionStateMachine_waitingCancellable] = 0;
  v8.receiver = v0;
  v8.super_class = type metadata accessor for RunningProgressSuppressionStateMachine();
  v1 = objc_msgSendSuper2(&v8, sel_init);
  [v1 setSilentlyDropInvalidTransitions_];
  v2 = objc_allocWithZone(type metadata accessor for RunningProgressSuppressionStateMachine.State());
  v3 = sub_1CA282CB0(0);
  v4 = sub_1CA94C368();
  v5 = OUTLINED_FUNCTION_50_6();
  [v5 v6];

  return v1;
}

uint64_t sub_1CA282B3C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC446870, &qword_1CA982240);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1CA97EDF0;
  v2 = 0xE400000000000000;
  v3 = 1701602409;
  v4 = v1;
  switch(v0[OBJC_IVAR____TtCC11WorkflowKit38RunningProgressSuppressionStateMachineP33_D75DF74A866BF93BDD94A2803CD087FC5State_stage])
  {
    case 1:
      v2 = 0xEF676E696E6E7572;
      v3 = 0x2064657472617473;
      break;
    case 2:
      v2 = 0x80000001CA9D78D0;
      v3 = 0xD000000000000011;
      break;
    case 3:
      v2 = 0xE700000000000000;
      v3 = 0x64656469636564;
      break;
    default:
      break;
  }

  *(v1 + 56) = MEMORY[0x1E69E6158];
  *(v1 + 64) = sub_1CA282DB4();
  v4[4] = v3;
  v4[5] = v2;
  v4[12] = type metadata accessor for RunningProgressSuppressionStateMachine.State();
  v4[13] = sub_1CA282DFC();
  v4[9] = v0;
  v5 = v0;
  return sub_1CA94C3C8();
}

id sub_1CA282CB0(char a1)
{
  v3 = OBJC_IVAR____TtCC11WorkflowKit38RunningProgressSuppressionStateMachineP33_D75DF74A866BF93BDD94A2803CD087FC5State_timeout;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC447828, &unk_1CA990120);
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  *&v1[v3] = sub_1CA94A008();
  v1[OBJC_IVAR____TtCC11WorkflowKit38RunningProgressSuppressionStateMachineP33_D75DF74A866BF93BDD94A2803CD087FC5State_stage] = a1;
  v8.receiver = v1;
  v8.super_class = type metadata accessor for RunningProgressSuppressionStateMachine.State();
  return objc_msgSendSuper2(&v8, sel_init);
}

unint64_t sub_1CA282DB4()
{
  result = qword_1EDB9F7A0;
  if (!qword_1EDB9F7A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB9F7A0);
  }

  return result;
}

unint64_t sub_1CA282DFC()
{
  result = qword_1EC441E38;
  if (!qword_1EC441E38)
  {
    type metadata accessor for RunningProgressSuppressionStateMachine.State();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC441E38);
  }

  return result;
}

uint64_t sub_1CA282EF4()
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

id getWFWorkflowLogObject()
{
  if (getWFWorkflowLogObject_onceToken != -1)
  {
    dispatch_once(&getWFWorkflowLogObject_onceToken, &__block_literal_global_39609);
  }

  v1 = getWFWorkflowLogObject_log;

  return v1;
}

uint64_t WFCompareBundleVersions(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = @"0";
  }

  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = @"0";
  }

  v7 = [objc_alloc(MEMORY[0x1E696AE88]) initWithString:v5];
  v8 = [objc_alloc(MEMORY[0x1E696AE88]) initWithString:v6];
  v13 = 0;
  v14 = 0;
  v9 = 1;
  while (![v7 isAtEnd] || (objc_msgSend(v8, "isAtEnd") & 1) == 0)
  {
    if ([v7 isAtEnd])
    {
      v14 = 0;
    }

    else if (![v7 scanUnsignedLongLong:&v14])
    {
      goto LABEL_36;
    }

    if ([v8 isAtEnd])
    {
      v10 = 0;
      v13 = 0;
    }

    else
    {
      if (![v8 scanUnsignedLongLong:&v13])
      {
        goto LABEL_36;
      }

      v10 = v13;
    }

    v11 = v14;
    if (([v7 isAtEnd] & 1) == 0 && !objc_msgSend(v7, "scanString:intoString:", @".", 0) || (objc_msgSend(v8, "isAtEnd") & 1) == 0 && !objc_msgSend(v8, "scanString:intoString:", @".", 0))
    {
      goto LABEL_36;
    }

    if (v11 != v10)
    {
      if (v11 > v10)
      {
        v9 = 2;
      }

      else
      {
        v9 = 3;
      }

      break;
    }
  }

  if ([v7 isAtEnd])
  {
LABEL_30:
    if ([v8 isAtEnd])
    {
      goto LABEL_37;
    }

    while ([v8 scanUnsignedLongLong:0] && ((objc_msgSend(v8, "isAtEnd") & 1) != 0 || objc_msgSend(v8, "scanString:intoString:", @".", 0)))
    {
      if ([v8 isAtEnd])
      {
        goto LABEL_37;
      }
    }
  }

  else
  {
    while ([v7 scanUnsignedLongLong:0] && ((objc_msgSend(v7, "isAtEnd") & 1) != 0 || objc_msgSend(v7, "scanString:intoString:", @".", 0)))
    {
      if ([v7 isAtEnd])
      {
        goto LABEL_30;
      }
    }
  }

LABEL_36:
  v9 = 0;
LABEL_37:

  return v9;
}

void __getWFWorkflowLogObject_block_invoke()
{
  v0 = os_log_create(*MEMORY[0x1E69E1140], "Workflow");
  v1 = getWFWorkflowLogObject_log;
  getWFWorkflowLogObject_log = v0;
}

uint64_t sub_1CA285A0C(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_40();
  v5 = v4(v3);
  OUTLINED_FUNCTION_52(v5);
  v7 = *(v6 + 16);
  v8 = OUTLINED_FUNCTION_23();
  v9(v8);
  return a2;
}

uint64_t WFWorkflowActionTree.actions.getter()
{
  v0 = OUTLINED_FUNCTION_18_30();
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  OUTLINED_FUNCTION_6_0();
  v5 = (v4 - v3);
  sub_1CA285AF8(v4 - v3);
  v6 = *v5;
  sub_1CA94C218();
  OUTLINED_FUNCTION_0_73();
  sub_1CA285DC8(v5, v7);
  return v6;
}

uint64_t sub_1CA285D14(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1CA285D74(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_7_2(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_1CA285DC8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_52(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_1CA285F3C(void *a1)
{
  if ([a1 isLoaded])
  {
    sub_1CA948638();
    sub_1CA948618();
    sub_1CA948628();
  }

  else
  {
    v2 = *MEMORY[0x1E696A250];
    v3 = sub_1CA94C3A8();
    v5 = v4;
    v6 = sub_1CA948768();
    v7 = *(v6 - 8);
    v8 = *(v7 + 64);
    MEMORY[0x1EEE9AC00](v6);
    v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
    sub_1CA948748();
    v11 = sub_1CA948758();
    (*(v7 + 8))(v10, v6);
    v12 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
    sub_1CA298568(v3, v5, v11, 0);
    return swift_willThrow();
  }
}

id WFWorkflowNoInputBehaviorFromSerializedRepresentation(void *a1)
{
  v17[3] = *MEMORY[0x1E69E9840];
  v1 = a1;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v17[0] = objc_opt_class();
    v17[1] = objc_opt_class();
    v17[2] = objc_opt_class();
    [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:3];
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v2 = v15 = 0u;
    v3 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v3)
    {
      v4 = v3;
      v5 = *v13;
      while (2)
      {
        for (i = 0; i != v4; ++i)
        {
          if (*v13 != v5)
          {
            objc_enumerationMutation(v2);
          }

          v7 = objc_alloc(*(*(&v12 + 1) + 8 * i));
          v8 = [v7 initWithSerializedRepresentation:{v1, v12}];
          if (v8)
          {
            v9 = v8;
            goto LABEL_13;
          }
        }

        v4 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
        if (v4)
        {
          continue;
        }

        break;
      }
    }

    v9 = 0;
LABEL_13:
  }

  else
  {
    v9 = 0;
  }

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

void sub_1CA28659C()
{
  sub_1CA2866DC();
  if (v0 <= 0x3F)
  {
    sub_1CA286744();
    if (v1 <= 0x3F)
    {
      sub_1CA2867A4(319, &qword_1EC441B10);
      if (v2 <= 0x3F)
      {
        sub_1CA2867F0(319, &qword_1EC441B48, MEMORY[0x1EEE78B98], MEMORY[0x1E69E62F8]);
        if (v3 <= 0x3F)
        {
          sub_1CA2867A4(319, &qword_1EC441AE0);
          if (v4 <= 0x3F)
          {
            sub_1CA286898();
            if (v5 <= 0x3F)
            {
              sub_1CA9491F8();
              if (v6 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
}

void sub_1CA2866DC()
{
  if (!qword_1EC441AD0)
  {
    sub_1CA25B3D0(255, &qword_1EDB9F5D0, off_1E836DCF8);
    v0 = sub_1CA94C758();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC441AD0);
    }
  }
}

void sub_1CA286744()
{
  if (!qword_1EC441B68)
  {
    v0 = sub_1CA94C248();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC441B68);
    }
  }
}

void sub_1CA2867A4(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_1CA94C758();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

void sub_1CA2867F0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_1CA286854(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    OUTLINED_FUNCTION_5_3();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1CA286898()
{
  if (!qword_1EC441B78)
  {
    sub_1CA9492B8();
    sub_1CA286854(&unk_1EC442CE0, MEMORY[0x1EEE78BB0]);
    v0 = sub_1CA94C248();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC441B78);
    }
  }
}

IMP WFDisableAppTrustChecking()
{
  v0 = NSClassFromString(&cfstr_Inapptrust.isa);
  ClassMethod = class_getClassMethod(v0, sel_shouldTrustExtensionForLaunch_);
  v2 = imp_implementationWithBlock(&__block_literal_global_51767);
  method_setImplementation(ClassMethod, v2);
  v3 = class_getClassMethod(v0, sel_extensionsTrustedForLaunch_);
  v4 = imp_implementationWithBlock(&__block_literal_global_6);
  method_setImplementation(v3, v4);
  v5 = class_getClassMethod(v0, sel_shouldTrustAppForLaunch_);
  v6 = imp_implementationWithBlock(&__block_literal_global_10);
  method_setImplementation(v5, v6);
  v7 = class_getClassMethod(v0, sel_appsTrustedForLaunch_);
  v8 = imp_implementationWithBlock(&__block_literal_global_14);

  return method_setImplementation(v7, v8);
}

uint64_t OUTLINED_FUNCTION_116_1()
{
  v2 = *(v0 - 88);

  return sub_1CA94C358();
}

void OUTLINED_FUNCTION_116_5()
{
  v2 = *(v0 - 120);
  *(v0 - 128) = *(v0 - 128);
  *(v0 - 120) = v2;

  JUMPOUT(0x1CCAA1300);
}

void sub_1CA286ACC(uint64_t a1, int a2)
{
  v207 = a2;
  v194 = _s17ControlFlowBranchVMa(0);
  v3 = OUTLINED_FUNCTION_1_0(v194);
  v208 = v4;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_19();
  v9 = v7 - v8;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_48_0();
  OUTLINED_FUNCTION_44_0(v11);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FF8, &unk_1CA989EE0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = v185 - v14;
  v16 = _s10ScopeStackV5EntryOMa(0);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_45_0();
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_45_0();
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_45_0();
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_48_0();
  OUTLINED_FUNCTION_44_0(v23);
  v210 = _s10ScopeStackV23PendingControlFlowGroupVMa(0);
  v24 = OUTLINED_FUNCTION_52(v210);
  v26 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_19();
  v29 = v27 - v28;
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_45_0();
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_48_0();
  OUTLINED_FUNCTION_44_0(v32);
  v191 = sub_1CA949F78();
  v33 = OUTLINED_FUNCTION_1_0(v191);
  v35 = v34;
  v37 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_48_0();
  OUTLINED_FUNCTION_44_0(v39);
  v217 = MEMORY[0x1E69E7CD0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443EF0, &qword_1CA982550);
  v40 = (*(v17 + 80) + 32) & ~*(v17 + 80);
  v211 = *(v17 + 72);
  v41 = swift_allocObject();
  v209 = xmmword_1CA981310;
  *(v41 + 16) = xmmword_1CA981310;
  *(v41 + v40) = MEMORY[0x1E69E7CC0];
  v213 = v40;
  v42 = a1;
  swift_storeEnumTagMultiPayload();
  v216 = v41;
  v43 = sub_1CA25B410(a1);
  v206 = v9;
  v212 = v16;
  if (v43)
  {
    v45 = v43;
    v205 = a1 & 0xC000000000000001;
    v200 = a1 & 0xFFFFFFFFFFFFFF8;
    v189 = *MEMORY[0x1E69E10A0];
    v46 = (v35 + 8);
    v47 = 0;
    v188 = v46;
    v48 = off_1E836E000;
    *&v44 = 136315138;
    v185[0] = v44;
    v196 = v15;
    v201 = v43;
    v202 = v42;
    while (1)
    {
      if (v205)
      {
        v49 = MEMORY[0x1CCAA22D0](v47, v42);
      }

      else
      {
        if (v47 >= *(v200 + 16))
        {
          goto LABEL_77;
        }

        v49 = *(v42 + 8 * v47 + 32);
      }

      v50 = v49;
      inited = (v47 + 1);
      if (__OFADD__(v47, 1))
      {
        goto LABEL_76;
      }

      v52 = v42;
      v53 = v48[22];
      objc_opt_self();
      v54 = swift_dynamicCastObjCClass();
      if (!v54)
      {
        break;
      }

      v55 = v54;
      v56 = [v54 mode];
      if ((v56 - 1) >= 2)
      {
        if (!v56)
        {
          v203 = v47;
          v204 = (v47 + 1);
          v69 = v50;
          v70 = v55;
          v71 = sub_1CA50DBB0(v70);
          if (v72)
          {
            v73 = v71;
            v74 = v72;
            v75 = sub_1CA27AF18(v71, v72, v217);
            v76 = v190;
            if (v75)
            {
              sub_1CA949C58();
              sub_1CA94C218();
              v77 = sub_1CA949F68();
              v78 = sub_1CA94CC38();

              if (os_log_type_enabled(v77, v78))
              {
                v79 = swift_slowAlloc();
                v80 = swift_slowAlloc();
                v215 = v80;
                *v79 = v185[0];
                v81 = sub_1CA26B54C(v73, v74, &v215);

                *(v79 + 4) = v81;
                _os_log_impl(&dword_1CA256000, v77, v78, "Found duplicate grouping identifier for open action: %s. Regenerating a new one.", v79, 0xCu);
                __swift_destroy_boxed_opaque_existential_0(v80);
                MEMORY[0x1CCAA4BF0](v80, -1, -1);
                MEMORY[0x1CCAA4BF0](v79, -1, -1);
              }

              else
              {
              }

              (*v188)(v76, v191);
              goto LABEL_48;
            }
          }

          else
          {
            sub_1CA949C58();
            v91 = sub_1CA949F68();
            v92 = sub_1CA94CC38();
            if (os_log_type_enabled(v91, v92))
            {
              v93 = swift_slowAlloc();
              *v93 = 0;
              _os_log_impl(&dword_1CA256000, v91, v92, "Found open control flow action without a grouping identifier. Generating a new one.", v93, 2u);
              MEMORY[0x1CCAA4BF0](v93, -1, -1);
            }

            (*v188)(v193, v191);
LABEL_48:
            v123 = sub_1CA948D28();
            v124 = OUTLINED_FUNCTION_1_0(v123);
            v126 = v125;
            v128 = *(v127 + 64);
            MEMORY[0x1EEE9AC00](v124);
            v130 = v185 - ((v129 + 15) & 0xFFFFFFFFFFFFFFF0);
            sub_1CA948D18();
            v73 = sub_1CA948CC8();
            v74 = v131;
            (*(v126 + 8))(v130, v123);
          }

          sub_1CA94C218();
          sub_1CA94C218();
          sub_1CA368948(&v215, v73, v74);

          sub_1CA50DC20(v73, v74, v70);

          objc_opt_self();
          v132 = swift_dynamicCastObjCClass() != 0;
          OUTLINED_FUNCTION_11_24();
          v133 = v70;
          v134 = v198;
          v136 = v198 + v135;
          v137 = v69;
          v138 = v194;
          v9 = *(v194 + 24);
          v139 = sub_1CA948D28();
          __swift_storeEnumTagSinglePayload(&v136[v9], 1, 1, v139);
          *v136 = v133;
          v136[8] = v132;
          v140 = MEMORY[0x1E69E7CC0];
          *&v136[*(v138 + 28)] = MEMORY[0x1E69E7CC0];
          *v134 = v73;
          v134[1] = v74;
          v134[2] = v133;
          v134[3] = v140;
          OUTLINED_FUNCTION_6_30();
          sub_1CA50DCDC(v134, v199, v141);
          OUTLINED_FUNCTION_10_19();
          swift_storeEnumTagMultiPayload();
          inited = v216;
          v142 = v137;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v150 = inited[1].n128_u64[0];
            OUTLINED_FUNCTION_21();
            sub_1CA2E68BC();
            inited = v151;
          }

          OUTLINED_FUNCTION_17_13();
          v52 = v202;
          v48 = off_1E836E000;
          v45 = inited[1].n128_u64[0];
          v143 = inited[1].n128_u64[1];
          v47 = v203;
          if (v45 >= v143 >> 1)
          {
            OUTLINED_FUNCTION_64(v143);
            sub_1CA2E68BC();
            inited = v152;
          }

          OUTLINED_FUNCTION_1_36();
          sub_1CA50DC84(v198, v144);
          inited[1].n128_u64[0] = v45->n128_u64 + 1;
          OUTLINED_FUNCTION_12_21();
          OUTLINED_FUNCTION_0_47();
          sub_1CA288180(v199, v145, v146);
          v216 = inited;
          OUTLINED_FUNCTION_21_15();
LABEL_54:
          v42 = v52;
          goto LABEL_55;
        }

LABEL_23:
        OUTLINED_FUNCTION_10_19();
        goto LABEL_54;
      }

      v204 = (v47 + 1);
      inited = v216;
      if (!v216[1].n128_u64[0])
      {
        goto LABEL_78;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v203 = v47;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1CA42B2EC(inited);
        inited = v149;
      }

      v58 = inited[1].n128_u64[0];
      if (!v58)
      {
        goto LABEL_79;
      }

      v59 = (v58 - 1) * v211;
      inited[1].n128_u64[0] = v58 - 1;
      v216 = inited;
      OUTLINED_FUNCTION_0_47();
      v9 = v61;
      sub_1CA288180(v60 + v59, v61, v62);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        OUTLINED_FUNCTION_2_40();
        v63 = v196;
        sub_1CA288180(v9, v196, v64);
        v65 = v202;
        OUTLINED_FUNCTION_17_13();
      }

      else
      {
        *v197 = *v9;
        swift_storeEnumTagMultiPayload();
        v82 = inited[1].n128_u64[1];
        if (v58 > v82 >> 1)
        {
          OUTLINED_FUNCTION_64(v82);
          sub_1CA2E68BC();
          inited = v153;
        }

        OUTLINED_FUNCTION_17_13();
        inited[1].n128_u64[0] = v58;
        OUTLINED_FUNCTION_12_21();
        OUTLINED_FUNCTION_0_47();
        sub_1CA288180(v197, v83 + v59, v84);
        v216 = inited;
        v66 = 1;
        v65 = v202;
        v63 = v196;
      }

      v85 = v210;
      __swift_storeEnumTagSinglePayload(v63, v66, 1, v210);
      if (__swift_getEnumTagSinglePayload(v63, 1, v85) == 1)
      {

        sub_1CA27080C(v63, &qword_1EC445FF8, &unk_1CA989EE0);
      }

      else
      {
        OUTLINED_FUNCTION_2_40();
        v86 = v195;
        sub_1CA288180(v63, v195, v87);
        ObjectType = swift_getObjectType();
        v89 = *(v86 + 16);
        if (ObjectType == swift_getObjectType())
        {
          OUTLINED_FUNCTION_11_24();
          v95 = v86 + v94;
          OUTLINED_FUNCTION_7_27();
          sub_1CA50DCDC(v95, v192, v96);
          v97 = *(v86 + 24);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v154 = *(v97 + 16);
            OUTLINED_FUNCTION_21();
            sub_1CA2E6984();
            v97 = v155;
          }

          v99 = *(v97 + 16);
          v98 = *(v97 + 24);
          if (v99 >= v98 >> 1)
          {
            OUTLINED_FUNCTION_64(v98);
            sub_1CA2E6984();
            v97 = v156;
          }

          *(v97 + 16) = v99 + 1;
          OUTLINED_FUNCTION_15_16();
          v101 = (v97 + v100);
          v103 = *(v102 + 72);
          v104 = v101;
          OUTLINED_FUNCTION_5_29();
          sub_1CA288180(v192, v105, v106);
          v45 = v195;
          v195[1].n128_u64[1] = v97;
          v107 = v45->n128_u64[0];
          v108 = v45->n128_i64[1];
          v109 = v50;
          v186 = v107;
          v110 = sub_1CA94C368();
          [v55 setGroupingIdentifier_];

          if ([v55 mode] == 1)
          {
            v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443BC8, &qword_1CA9834A0);
            v112 = (*(*(v111 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
            MEMORY[0x1EEE9AC00](v111 - 8);
            v114 = v185 - v113;
            v115 = sub_1CA948D28();
            __swift_storeEnumTagSinglePayload(v114, 1, 1, v115);
            sub_1CA50DC84(v95, _s17ControlFlowBranchVMa);
            *v95 = v55;
            *(v95 + 8) = 0;
            v116 = v194;
            sub_1CA276D6C(v114, v95 + *(v194 + 24));
            *(v95 + *(v116 + 28)) = MEMORY[0x1E69E7CC0];
            OUTLINED_FUNCTION_6_30();
            sub_1CA50DCDC(v45, v187, v117);
            OUTLINED_FUNCTION_10_19();
            swift_storeEnumTagMultiPayload();
            v119 = inited[1].n128_u64[0];
            v118 = inited[1].n128_u64[1];
            v9 = v206;
            if (v119 >= v118 >> 1)
            {
              OUTLINED_FUNCTION_64(v118);
              sub_1CA2E68BC();
              inited = v157;
            }

            v48 = off_1E836E000;
            inited[1].n128_u64[0] = v119 + 1;
            OUTLINED_FUNCTION_12_21();
            OUTLINED_FUNCTION_0_47();
            sub_1CA288180(v187, v120, v121);
            v216 = inited;
            v45 = v195;
          }

          else
          {
            v9 = v206;
            if (!*(v97 + 16))
            {
              goto LABEL_80;
            }

            v122 = *v104;
            objc_opt_self();
            if (swift_dynamicCastObjCClass())
            {
              sub_1CA94C218();
              sub_1CA94C218();
              inited = sub_1CA6A5448(v186, v108, v97, v55);
              sub_1CA50D794(inited);
            }

            else
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E28, &unk_1CA989EF0);
              inited = swift_initStackObject();
              OUTLINED_FUNCTION_13_23(inited);
              *(v147 + 32) = v186;
              *(v147 + 40) = v108;
              *(v147 + 48) = v97;
              *(v147 + 56) = v55;
              *(v147 + 64) = 1;
              sub_1CA94C218();
              sub_1CA94C218();
              sub_1CA50D794(inited);
              swift_setDeallocating();
              sub_1CA32E390();
            }

            OUTLINED_FUNCTION_10_19();
            v48 = off_1E836E000;
          }

          v47 = v203;
          OUTLINED_FUNCTION_1_36();
          sub_1CA50DC84(v45, v148);
          OUTLINED_FUNCTION_21_15();
          v42 = v202;
          goto LABEL_55;
        }

        OUTLINED_FUNCTION_1_36();
        sub_1CA50DC84(v86, v90);
      }

      OUTLINED_FUNCTION_10_19();
      v45 = v201;
      v48 = off_1E836E000;
      inited = v204;
      v42 = v65;
      v47 = v203;
LABEL_55:
      ++v47;
      if (inited == v45)
      {
        goto LABEL_60;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E28, &unk_1CA989EF0);
    v67 = swift_initStackObject();
    OUTLINED_FUNCTION_13_23(v67);
    *(v68 + 32) = v50;
    *(v68 + 40) = 0;
    *(v68 + 48) = 0;
    *(v68 + 56) = 0;
    *(v68 + 64) = 0;
    sub_1CA50D794(v68);
    swift_setDeallocating();
    sub_1CA32E390();
    goto LABEL_23;
  }

LABEL_60:

  while (1)
  {
    v158 = v216;
    if (!v216[1].n128_u64[0])
    {
      break;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1CA42B2EC(v158);
      v158 = v180;
    }

    v159 = *(v158 + 16);
    if (!v159)
    {
      goto LABEL_75;
    }

    *(v158 + 16) = v159 - 1;
    v216 = v158;
    OUTLINED_FUNCTION_0_47();
    sub_1CA288180(v160, v214, v161);
    if (swift_getEnumCaseMultiPayload() != 1)
    {

      v184 = *v214;
      return;
    }

    OUTLINED_FUNCTION_2_40();
    sub_1CA288180(v214, v29, v162);
    OUTLINED_FUNCTION_11_24();
    OUTLINED_FUNCTION_7_27();
    sub_1CA50DCDC(v29 + v163, v9, v164);
    v165 = *(v29 + 24);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v181 = *(v165 + 16);
      OUTLINED_FUNCTION_21();
      sub_1CA2E6984();
      v165 = v182;
    }

    v167 = *(v165 + 16);
    v166 = *(v165 + 24);
    if (v167 >= v166 >> 1)
    {
      OUTLINED_FUNCTION_64(v166);
      sub_1CA2E6984();
      v165 = v183;
    }

    *(v165 + 16) = v167 + 1;
    OUTLINED_FUNCTION_15_16();
    v169 = *(v168 + 72);
    OUTLINED_FUNCTION_5_29();
    sub_1CA288180(v9, v170, v171);
    *(v29 + 24) = v165;
    v172 = [*(v29 + 16) createAccompanyingActionWithMode_];
    v173 = v172;
    if (v207)
    {
      v174 = *v29;
      v175 = *(v29 + 8);
      v176 = v172;
      OUTLINED_FUNCTION_10_19();
      v9 = sub_1CA94C368();
      [v176 setGroupingIdentifier_];

      OUTLINED_FUNCTION_17_13();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E28, &unk_1CA989EF0);
    v177 = swift_initStackObject();
    OUTLINED_FUNCTION_13_23(v177);
    v178 = *(v29 + 8);
    v177[2].n128_u64[0] = *v29;
    v177[2].n128_u64[1] = v178;
    v177[3].n128_u64[0] = v165;
    v177[3].n128_u64[1] = v173;
    v177[4].n128_u8[0] = 1;
    sub_1CA94C218();
    sub_1CA94C218();
    sub_1CA50D794(v177);
    swift_setDeallocating();
    sub_1CA32E390();
    OUTLINED_FUNCTION_1_36();
    sub_1CA50DC84(v29, v179);
  }

  __break(1u);
LABEL_75:
  __break(1u);
LABEL_76:
  __break(1u);
LABEL_77:
  __break(1u);
LABEL_78:
  __break(1u);
LABEL_79:
  __break(1u);
LABEL_80:
  __break(1u);
}

void sub_1CA287EC4()
{
  sub_1CA25B3D0(319, &qword_1EC441950, off_1E836E0B0);
  if (v0 <= 0x3F)
  {
    sub_1CA2867F0(319, &qword_1EC442D00, MEMORY[0x1EEE788D8], MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1CA287FAC()
{
  sub_1CA2880B0();
  if (v0 <= 0x3F)
  {
    sub_1CA288058();
    if (v1 <= 0x3F)
    {
      _s17ControlFlowBranchVMa(319);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1CA288058()
{
  if (!qword_1EC441AD8)
  {
    _s17ControlFlowBranchVMa(255);
    v0 = sub_1CA94C758();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC441AD8);
    }
  }
}

unint64_t sub_1CA2880B0()
{
  result = qword_1EC441950;
  if (!qword_1EC441950)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC441950);
  }

  return result;
}

uint64_t sub_1CA288114()
{
  result = _s10ScopeStackV23PendingControlFlowGroupVMa(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1CA288180(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  OUTLINED_FUNCTION_52(v5);
  (*(v6 + 32))(a2, a1);
  return a2;
}

void sub_1CA2881E0(uint64_t a1@<X0>, char *a2@<X8>)
{
  v50 = a1;
  v45 = a2;
  v2 = swift_allocObject();
  v3 = MEMORY[0x1E69E7CC0];
  *(v2 + 16) = MEMORY[0x1E69E7CC0];
  v47 = (v2 + 16);
  v4 = swift_allocObject();
  *(v4 + 16) = sub_1CA94C1E8();
  v42 = v4 + 16;
  v5 = swift_allocObject();
  *(v5 + 16) = v3;
  v41 = v5 + 16;
  v6 = swift_allocObject();
  *(v6 + 16) = v3;
  v40 = v6 + 16;
  v7 = swift_allocObject();
  *(v7 + 16) = v3;
  v39 = v7 + 16;
  v8 = swift_allocObject();
  v9 = sub_1CA9492B8();
  sub_1CA286854(&unk_1EC442CE0, MEMORY[0x1EEE78BB0]);
  v10 = sub_1CA94C1E8();
  *(v8 + 16) = v10;
  v38 = v8 + 16;
  v11 = *(v9 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1CCA9E0B0](v3);
  v44 = v7;
  v15 = v50;
  v46 = v2;
  v50 = v4;
  v43 = v8;
  v48 = v6;
  v49 = v5;
  sub_1CA2887BC(v15, 0, v14, v2, v4, v8, v5, v6, v7);
  (*(v11 + 8))(v14, v9);
  v16 = sub_1CA9491F8();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v36 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = v47;
  swift_beginAccess();
  v22 = *v21;
  v23 = sub_1CA25B410(v22);
  if ((v23 & 0x8000000000000000) == 0)
  {
    v37 = v17;
    v47 = v16;
    v51 = 0;
    v52 = v23;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4481A8, &qword_1CA992028);
    sub_1CA276B98(&qword_1EC441B50, &qword_1EC4481A8, &qword_1CA992028);
    sub_1CA9490F8();
    v24 = sub_1CA25B410(v22);
    for (i = 0; ; ++i)
    {
      if (v24 == i)
      {
        swift_beginAccess();
        v29 = *(v50 + 16);
        swift_beginAccess();
        v30 = *(v49 + 16);
        swift_beginAccess();
        v31 = *(v48 + 16);
        swift_beginAccess();
        v32 = *(v44 + 16);
        swift_beginAccess();
        v33 = *(v43 + 16);
        v34 = v45;
        *v45 = v22;
        *(v34 + 1) = v29;
        *(v34 + 2) = v30;
        *(v34 + 3) = v31;
        *(v34 + 4) = v32;
        *(v34 + 5) = v33;
        v35 = _s6LayoutVMa(0);
        (*(v37 + 32))(&v34[*(v35 + 40)], v20, v47);
        sub_1CA94C218();
        sub_1CA94C218();
        sub_1CA94C218();
        sub_1CA94C218();
        sub_1CA94C218();
        sub_1CA94C218();

        return;
      }

      if ((v22 & 0xC000000000000001) != 0)
      {
        v26 = MEMORY[0x1CCAA22D0](i, v22);
      }

      else
      {
        if (i >= *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_15;
        }

        v26 = *(v22 + 8 * i + 32);
      }

      v27 = v26;
      if (__OFADD__(i, 1))
      {
        break;
      }

      objc_opt_self();
      v28 = swift_dynamicCastObjCClass();
      if (v28)
      {
        if (![v28 mode])
        {
          sub_1CA949188();
        }
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_1CA288770()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1CA2887BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v213 = a8;
  v214 = a6;
  v215 = a5;
  v184[1] = a3;
  v199 = a9;
  v192 = _s17ControlFlowBranchVMa(0);
  v189 = *(v192 - 8);
  v13 = *(v189 + 64);
  MEMORY[0x1EEE9AC00](v192);
  v211 = (v184 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC448048, &qword_1CA991E00);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15);
  v188 = (v184 - v17);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC448050, &qword_1CA991E08);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x1EEE9AC00](v18 - 8);
  v22 = v184 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v20);
  v25 = (v184 - v24);
  v184[0] = a1 + 32;
  v185 = *(a1 + 16);
  v200 = a2;
  v26 = __OFADD__(a2, 1);
  v190 = a2 + 1;
  v27 = 0;
  v28 = v26;
  v193 = v28;
  v196 = a7;
  v202 = a4;
  v195 = v15;
  v198 = v184 - v24;
  v191 = v22;
  while (v27 != v185)
  {
    v29 = v184[0] + 40 * v27;
    v30 = *(v29 + 8);
    v204 = *v29;
    v31 = *(v29 + 16);
    v203 = *(v29 + 24);
    LODWORD(v210) = *(v29 + 32);
    v32 = sub_1CA9492B8();
    v186 = v184;
    v216 = v32;
    v33 = *(v32 - 8);
    v34 = *(v33 + 64);
    MEMORY[0x1EEE9AC00](v32);
    v212 = v35;
    v36 = v184 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
    v201 = v30;
    v37 = v30;
    LOBYTE(v30) = v210;
    sub_1CA36DA2C(v204, v37, v31, v203, v210);
    v205 = v36;
    v187 = v27;
    sub_1CA9492A8();
    v208 = v33;
    if (v30)
    {
      v38 = 0;
      v207 = v31;
      v39 = *(v31 + 16);
      v206 = (v33 + 16);
      v194 = v33 + 32;
      v197 = (v33 + 8);
      while (1)
      {
        if (v38 == v39)
        {
          v40 = 1;
          v41 = v39;
        }

        else
        {
          if ((v38 & 0x8000000000000000) != 0)
          {
            goto LABEL_94;
          }

          if (v38 >= *(v207 + 16))
          {
            goto LABEL_95;
          }

          v41 = (v38 + 1);
          v42 = v207 + ((*(v189 + 80) + 32) & ~*(v189 + 80)) + *(v189 + 72) * v38;
          v43 = *(v15 + 48);
          v44 = v188;
          *v188 = v38;
          sub_1CA285A0C(v42, v44 + v43);
          sub_1CA2D9CD4(v44, v22, &qword_1EC448048, &qword_1CA991E00);
          v40 = 0;
        }

        __swift_storeEnumTagSinglePayload(v22, v40, 1, v15);
        sub_1CA2D9CD4(v22, v25, &qword_1EC448050, &qword_1CA991E08);
        EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v25, 1, v15);
        if (EnumTagSinglePayload == 1)
        {
          v210 = v184;
          MEMORY[0x1EEE9AC00](EnumTagSinglePayload);
          v124 = v184 - ((v123 + 15) & 0xFFFFFFFFFFFFFFF0);
          v125 = *(v207 + 16);
          sub_1CA9492A8();
          swift_beginAccess();
          sub_1CA25B410(*(a4 + 16));
          swift_beginAccess();
          v126 = v203;
          MEMORY[0x1CCAA1490]();
          sub_1CA69B4CC(*((*(v202 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10));
          sub_1CA94C6E8();
          swift_endAccess();
          v127 = v215;
          swift_beginAccess();
          v128 = *(v127 + 16);
          swift_isUniquelyReferenced_nonNull_native();
          v217 = *(v127 + 16);
          sub_1CA322C54();
          *(v127 + 16) = v217;
          v129 = v199;
          swift_endAccess();
          v130 = v214;
          swift_beginAccess();
          v131 = *(v130 + 16);
          swift_isUniquelyReferenced_nonNull_native();
          v217 = *(v130 + 16);
          v212 = v124;
          sub_1CA322B14();
          *(v130 + 16) = v217;
          a4 = v202;
          swift_endAccess();
          swift_beginAccess();
          sub_1CA69AEB8();
          v132 = *(*(a7 + 16) + 16);
          sub_1CA69B0CC(v132);
          v133 = *(a7 + 16);
          *(v133 + 16) = v132 + 1;
          *(v133 + 8 * v132 + 32) = v200;
          *(a7 + 16) = v133;
          v134 = v213;
          swift_beginAccess();
          sub_1CA69AEA0();
          v135 = *(*(v134 + 16) + 16);
          sub_1CA69B0B4(v135);
          v136 = *(v134 + 16);
          *(v136 + 16) = v135 + 1;
          v137 = v208;
          v138 = v124;
          v139 = v216;
          (*(v208 + 16))(v136 + ((*(v137 + 80) + 32) & ~*(v137 + 80)) + *(v137 + 72) * v135, v138, v216);
          *(v134 + 16) = v136;
          swift_beginAccess();
          sub_1CA69AE88();
          v140 = *(*(v129 + 16) + 16);
          sub_1CA69B09C(v140);
          v141 = *(v129 + 16);
          *(v141 + 16) = v140 + 1;
          v142 = v141 + 48 * v140;
          v143 = v201;
          *(v142 + 32) = v204;
          *(v142 + 40) = v143;
          v144 = v203;
          *(v142 + 48) = v207;
          *(v142 + 56) = v144;
          *(v142 + 64) = 0;
          *(v142 + 72) = 2;
          *(v129 + 16) = v141;
          swift_endAccess();
          v145 = *(v137 + 8);
          v145(v212, v139);
          result = (v145)(v205, v139);
          goto LABEL_86;
        }

        v46 = *v25;
        v47 = v211;
        v48 = sub_1CA289DE0(v25 + *(v15 + 48), v211);
        MEMORY[0x1EEE9AC00](v48);
        v50 = v184 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
        sub_1CA9492A8();
        v51 = *v47;
        swift_beginAccess();
        v52 = *(a4 + 16);
        v209 = v184;
        if (v52 >> 62)
        {
          v53 = sub_1CA94D328();
        }

        else
        {
          v53 = *((v52 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v210 = v41;
        swift_beginAccess();
        v54 = v51;
        MEMORY[0x1CCAA1490]();
        if (*((*(a4 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a4 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1CA94C698();
        }

        sub_1CA94C6E8();
        swift_endAccess();
        v55 = v215;
        swift_beginAccess();
        v56 = *(v55 + 16);
        swift_isUniquelyReferenced_nonNull_native();
        v217 = *(v55 + 16);
        v57 = v217;
        *(v55 + 16) = 0x8000000000000000;
        v58 = sub_1CA320E94();
        if (__OFADD__(v57[2], (v59 & 1) == 0))
        {
          break;
        }

        v60 = v58;
        v61 = v59;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4443A0, &qword_1CA983430);
        if (sub_1CA94D588())
        {
          v62 = sub_1CA320E94();
          v64 = v196;
          if ((v61 & 1) != (v63 & 1))
          {
            goto LABEL_102;
          }

          v60 = v62;
        }

        else
        {
          v64 = v196;
        }

        v65 = v217;
        if (v61)
        {
          *(v217[7] + 8 * v60) = v53;
        }

        else
        {
          v217[(v60 >> 6) + 8] |= 1 << v60;
          *(v65[6] + 8 * v60) = v54;
          *(v65[7] + 8 * v60) = v53;
          v66 = v65[2];
          v26 = __OFADD__(v66, 1);
          v67 = v66 + 1;
          if (v26)
          {
            goto LABEL_96;
          }

          v65[2] = v67;
        }

        *(v215 + 16) = v65;
        swift_endAccess();
        v68 = v214;
        swift_beginAccess();
        v69 = *(v68 + 16);
        swift_isUniquelyReferenced_nonNull_native();
        v217 = *(v68 + 16);
        v70 = v217;
        *(v68 + 16) = 0x8000000000000000;
        sub_1CA3210F0();
        if (__OFADD__(v70[2], (v72 & 1) == 0))
        {
          goto LABEL_92;
        }

        v73 = v71;
        v74 = v72;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4481B0, &qword_1CA983428);
        if (sub_1CA94D588())
        {
          sub_1CA3210F0();
          if ((v74 & 1) != (v76 & 1))
          {
            goto LABEL_102;
          }

          v73 = v75;
        }

        v77 = v217;
        if (v74)
        {
          *(v217[7] + 8 * v73) = v53;
        }

        else
        {
          v217[(v73 >> 6) + 8] |= 1 << v73;
          (*(v208 + 16))(v77[6] + *(v208 + 72) * v73, v50, v216);
          *(v77[7] + 8 * v73) = v53;
          v78 = v77[2];
          v26 = __OFADD__(v78, 1);
          v79 = v78 + 1;
          if (v26)
          {
            goto LABEL_97;
          }

          v77[2] = v79;
        }

        v80 = *(v214 + 16);
        *(v214 + 16) = v77;

        swift_endAccess();
        swift_beginAccess();
        v81 = *(v64 + 16);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v64 + 16) = v81;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v104 = *(v81 + 16);
          sub_1CA2E5AFC();
          v81 = isUniquelyReferenced_nonNull_native;
          *(v64 + 16) = isUniquelyReferenced_nonNull_native;
        }

        v83 = *(v81 + 16);
        if (v83 >= *(v81 + 24) >> 1)
        {
          sub_1CA2E5AFC();
          v81 = isUniquelyReferenced_nonNull_native;
        }

        *(v81 + 16) = v83 + 1;
        *(v81 + 8 * v83 + 32) = v200;
        *(v64 + 16) = v81;
        MEMORY[0x1EEE9AC00](isUniquelyReferenced_nonNull_native);
        v85 = v184 - ((v84 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*v206)(v85, v50, v216);
        v86 = v213;
        swift_beginAccess();
        v87 = *(v86 + 16);
        v88 = swift_isUniquelyReferenced_nonNull_native();
        *(v86 + 16) = v87;
        if ((v88 & 1) == 0)
        {
          v105 = *(v87 + 16);
          sub_1CA2E6CA8();
          v87 = v106;
          *(v213 + 16) = v106;
        }

        v89 = *(v87 + 16);
        if (v89 >= *(v87 + 24) >> 1)
        {
          sub_1CA2E6CA8();
          v87 = v107;
        }

        v90 = v39;
        *(v87 + 16) = v89 + 1;
        (*(v208 + 32))(v87 + ((*(v208 + 80) + 32) & ~*(v208 + 80)) + *(v208 + 72) * v89, v85, v216);
        *(v213 + 16) = v87;
        v91 = v199;
        swift_beginAccess();
        v92 = *(v91 + 16);
        v93 = swift_isUniquelyReferenced_nonNull_native();
        *(v91 + 16) = v92;
        v94 = v64;
        if ((v93 & 1) == 0)
        {
          v108 = *(v92 + 16);
          sub_1CA2E6C78();
          v92 = v109;
          *(v91 + 16) = v109;
        }

        a4 = v202;
        v95 = *(v92 + 16);
        v96 = v207;
        if (v95 >= *(v92 + 24) >> 1)
        {
          sub_1CA2E6C78();
          v96 = v207;
          v92 = v110;
        }

        *(v92 + 16) = v95 + 1;
        v97 = v92 + 48 * v95;
        v98 = v201;
        *(v97 + 32) = v204;
        *(v97 + 40) = v98;
        v99 = v203;
        *(v97 + 48) = v96;
        *(v97 + 56) = v99;
        *(v97 + 64) = v46;
        *(v97 + 72) = 1;
        *(v91 + 16) = v92;
        swift_endAccess();
        if (v193)
        {
          goto LABEL_93;
        }

        v100 = v99;
        v101 = v211;
        v102 = *(v211 + *(v192 + 28));
        sub_1CA94C218();
        sub_1CA94C218();
        v103 = v100;
        a7 = v94;
        sub_1CA2887BC(v102, v190, v50, a4, v215, v214, v94, v213, v91);
        (*v197)(v50, v216);
        sub_1CA285DC8(v101, _s17ControlFlowBranchVMa);
        v15 = v195;
        v22 = v191;
        v25 = v198;
        v39 = v90;
        v38 = v210;
      }

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
      result = sub_1CA94D878();
      __break(1u);
      return result;
    }

    swift_beginAccess();
    v111 = *(a4 + 16);
    if (v111 >> 62)
    {
      if (v111 < 0)
      {
        v176 = *(a4 + 16);
      }

      v112 = sub_1CA94D328();
    }

    else
    {
      v112 = *((v111 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    swift_beginAccess();
    v113 = v204;
    MEMORY[0x1CCAA1490]();
    if (*((*(a4 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a4 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1CA94C698();
    }

    sub_1CA94C6E8();
    swift_endAccess();
    v114 = v215;
    swift_beginAccess();
    v115 = *(v114 + 16);
    swift_isUniquelyReferenced_nonNull_native();
    v217 = *(v114 + 16);
    v116 = v217;
    *(v114 + 16) = 0x8000000000000000;
    v117 = sub_1CA320E94();
    if (__OFADD__(v116[2], (v118 & 1) == 0))
    {
      goto LABEL_98;
    }

    v119 = v117;
    v120 = v118;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4443A0, &qword_1CA983430);
    if (sub_1CA94D588())
    {
      v121 = sub_1CA320E94();
      a7 = v196;
      if ((v120 & 1) != (v122 & 1))
      {
        goto LABEL_102;
      }

      v119 = v121;
    }

    else
    {
      a7 = v196;
    }

    v146 = v217;
    if (v120)
    {
      *(v217[7] + 8 * v119) = v112;
    }

    else
    {
      v217[(v119 >> 6) + 8] |= 1 << v119;
      *(v146[6] + 8 * v119) = v113;
      *(v146[7] + 8 * v119) = v112;
      v147 = v146[2];
      v26 = __OFADD__(v147, 1);
      v148 = v147 + 1;
      if (v26)
      {
        goto LABEL_100;
      }

      v146[2] = v148;
    }

    *(v215 + 16) = v146;
    swift_endAccess();
    v149 = v214;
    swift_beginAccess();
    v150 = *(v149 + 16);
    swift_isUniquelyReferenced_nonNull_native();
    v217 = *(v149 + 16);
    v151 = v217;
    *(v149 + 16) = 0x8000000000000000;
    sub_1CA3210F0();
    if (__OFADD__(v151[2], (v153 & 1) == 0))
    {
      goto LABEL_99;
    }

    v154 = v152;
    v155 = v153;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4481B0, &qword_1CA983428);
    if (sub_1CA94D588())
    {
      sub_1CA3210F0();
      v15 = v195;
      if ((v155 & 1) != (v157 & 1))
      {
        goto LABEL_102;
      }

      v154 = v156;
    }

    else
    {
      v15 = v195;
    }

    v158 = v217;
    if (v155)
    {
      *(v217[7] + 8 * v154) = v112;
    }

    else
    {
      v217[(v154 >> 6) + 8] |= 1 << v154;
      (*(v208 + 16))(v158[6] + *(v208 + 72) * v154, v205, v216);
      *(v158[7] + 8 * v154) = v112;
      v159 = v158[2];
      v26 = __OFADD__(v159, 1);
      v160 = v159 + 1;
      if (v26)
      {
        goto LABEL_101;
      }

      v158[2] = v160;
    }

    v161 = *(v214 + 16);
    *(v214 + 16) = v158;

    swift_endAccess();
    swift_beginAccess();
    v162 = *(a7 + 16);
    v163 = swift_isUniquelyReferenced_nonNull_native();
    *(a7 + 16) = v162;
    if ((v163 & 1) == 0)
    {
      v177 = *(v162 + 16);
      sub_1CA2E5AFC();
      v162 = v163;
      *(a7 + 16) = v163;
    }

    v164 = *(v162 + 16);
    if (v164 >= *(v162 + 24) >> 1)
    {
      sub_1CA2E5AFC();
      v162 = v163;
    }

    *(v162 + 16) = v164 + 1;
    *(v162 + 8 * v164 + 32) = v200;
    *(a7 + 16) = v162;
    MEMORY[0x1EEE9AC00](v163);
    v166 = v184 - ((v165 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v208 + 16))(v166, v205, v216);
    v167 = v213;
    swift_beginAccess();
    v168 = *(v167 + 16);
    v169 = swift_isUniquelyReferenced_nonNull_native();
    *(v167 + 16) = v168;
    if ((v169 & 1) == 0)
    {
      v178 = *(v168 + 16);
      sub_1CA2E6CA8();
      v168 = v179;
      *(v213 + 16) = v179;
    }

    v170 = *(v168 + 16);
    if (v170 >= *(v168 + 24) >> 1)
    {
      sub_1CA2E6CA8();
      v168 = v180;
    }

    *(v168 + 16) = v170 + 1;
    (*(v208 + 32))(v168 + ((*(v208 + 80) + 32) & ~*(v208 + 80)) + *(v208 + 72) * v170, v166, v216);
    *(v213 + 16) = v168;
    v171 = v199;
    swift_beginAccess();
    v172 = *(v171 + 16);
    v173 = swift_isUniquelyReferenced_nonNull_native();
    *(v171 + 16) = v172;
    if ((v173 & 1) == 0)
    {
      v181 = *(v172 + 16);
      sub_1CA2E6C78();
      v172 = v182;
      *(v171 + 16) = v182;
    }

    a4 = v202;
    v174 = *(v172 + 16);
    if (v174 >= *(v172 + 24) >> 1)
    {
      sub_1CA2E6C78();
      v172 = v183;
    }

    *(v172 + 16) = v174 + 1;
    v175 = v172 + 48 * v174;
    *(v175 + 32) = v204;
    *(v175 + 40) = 0u;
    *(v175 + 56) = 0u;
    *(v175 + 72) = 0;
    *(v171 + 16) = v172;
    swift_endAccess();
    result = (*(v208 + 8))(v205, v216);
LABEL_86:
    v27 = v187 + 1;
    v25 = v198;
  }

  return result;
}

uint64_t sub_1CA289D4C(uint64_t a1)
{
  v1 = *(a1 + 80);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1CA289DE0(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_40();
  v5 = v4(v3);
  OUTLINED_FUNCTION_52(v5);
  v7 = *(v6 + 32);
  v8 = OUTLINED_FUNCTION_23();
  v9(v8);
  return a2;
}

void sub_1CA289E38(uint64_t a1)
{
  sub_1CA25B410(a1);
  sub_1CA25B3D0(0, &qword_1EDB9F5D0, off_1E836DCF8);
  sub_1CA28D4F8();
  v2 = OUTLINED_FUNCTION_52_0();
  v6[1] = MEMORY[0x1CCAA1770](v2);
  v3 = sub_1CA25B410(a1);
  for (i = 0; ; ++i)
  {
    if (v3 == i)
    {

      return;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x1CCAA22D0](i, a1);
    }

    else
    {
      if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_11;
      }

      v5 = *(a1 + 8 * i + 32);
    }

    if (__OFADD__(i, 1))
    {
      break;
    }

    sub_1CA369C38(v6, v5);
  }

  __break(1u);
LABEL_11:
  __break(1u);
}

uint64_t OUTLINED_FUNCTION_102_0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
}

uint64_t OUTLINED_FUNCTION_62_0(uint64_t result)
{
  *v2 = v1;
  *(v2 + *(v3 + 28)) = result;
  *(v2 + *(v3 + 32)) = 0;
  return result;
}

uint64_t OUTLINED_FUNCTION_102_2()
{

  return swift_slowAlloc();
}

void *sub_1CA28A250(uint64_t a1)
{
  swift_unknownObjectWeakInit();
  v1[4] = 0;
  v1[5] = 0;
  v1[3] = a1;
  return v1;
}

id WFSyncedDefinitionDirectoryURL()
{
  v0 = [MEMORY[0x1E695DFF8] wf_realLibraryDirectoryURL];
  v1 = [v0 URLByAppendingPathComponent:@"SyncedIntentDefinitions"];

  return v1;
}

id WFBundledDefinitionDirectoryURL()
{
  v0 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v1 = [v0 bundleURL];

  v2 = [v1 URLByAppendingPathComponent:@"BundledIntentDefinitions"];

  return v2;
}

id WFCoreDataClassForObjectType(unint64_t a1)
{
  if (a1 > 0xB)
  {
    v3 = 0;
  }

  else
  {
    v2 = *off_1E837A2C8[a1];
    v3 = objc_opt_class();
  }

  return v3;
}

void WFBackgroundShortcutRunnerMakeResult(void *a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a1;
  v10 = a2;
  v11 = a3;
  v12 = a4;
  v13 = a5;
  if ([v9 outputBehavior] == 1)
  {
    v14 = [objc_alloc(MEMORY[0x1E69E0E28]) initWithError:v12];
LABEL_27:
    v24 = v14;
    v13[2](v13, v14);
LABEL_28:

    goto LABEL_29;
  }

  v15 = v9;
  if (!v15)
  {
    goto LABEL_26;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

    v23 = v15;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v24 = v23;
      v62 = v10;
      v25 = v12;
      v26 = v13;
      v64 = v25;
      if (v26)
      {
        if (v25)
        {
LABEL_12:
          v60 = v26;
          v27 = objc_alloc_init(MEMORY[0x1E696AD60]);
          v28 = [v25 localizedFailureReason];
          v29 = [v28 length];

          if (v29)
          {
            v30 = [v25 localizedFailureReason];
            [v27 appendString:v30];
          }

          v31 = [v25 localizedDescription];
          v32 = [v31 length];

          if (v32)
          {
            if ([v27 length])
            {
              [v27 appendString:@"; "];
            }

            v33 = [v25 localizedDescription];
            [v27 appendString:v33];
          }

          v34 = [v25 localizedRecoverySuggestion];
          v35 = [v34 length];

          if (v35)
          {
            if ([v27 length])
            {
              [v27 appendString:@"; "];
            }

            v36 = [v25 localizedRecoverySuggestion];
            [v27 appendString:v36];
          }

          if ([v27 wf_isEmpty])
          {
            v37 = [v25 description];
            [v27 appendString:v37];
          }

          v38 = [v25 userInfo];
          v39 = [v38 objectForKeyedSubscript:@"WFHarnessTestErrorResult"];
          v40 = v39;
          if (v39)
          {
            v41 = v39;
          }

          else
          {
            v41 = [WFHarnessTestResult failureWithReason:v27];
          }

          v49 = v41;

          v26 = v60;
          v50 = v62;
          goto LABEL_43;
        }
      }

      else
      {
        v54 = [MEMORY[0x1E696AAA8] currentHandler];
        v55 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void WFBackgroundShortcutRunnerMakeHarnessTestResult(WFHarnessTestRunRequest * _Nonnull __strong, WFContentCollection * _Nullable __strong, NSError * _Nullable __strong, WFBackgroundShortcutRunnerResultBlock  _Nonnull __strong)"}];
        [v54 handleFailureInFunction:v55 file:@"WFBackgroundShortcutRunnerResult.m" lineNumber:166 description:{@"Invalid parameter not satisfying: %@", @"completion"}];

        if (v25)
        {
          goto LABEL_12;
        }
      }

      v50 = v62;
      v49 = [WFHarnessTestResult successWithOutput:v62];
LABEL_43:
      v56 = [[WFHarnessTestRunResult alloc] initWithTestResult:v49];
      v26[2](v26, v56);

      goto LABEL_28;
    }

LABEL_26:

    v14 = [objc_alloc(MEMORY[0x1E69E0E10]) initWithOutput:v10 runError:v12];
    goto LABEL_27;
  }

  v16 = v15;
  v61 = v10;
  v17 = v11;
  v58 = v12;
  v18 = v13;
  if (!v18)
  {
    v51 = [MEMORY[0x1E696AAA8] currentHandler];
    [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void WFBackgroundShortcutRunnerMakeContextualActionsResult(WFContextualActionRunRequest * _Nonnull __strong, WFContentCollection * _Nullable __strong, NSDictionary<WFAction *, NSData *> * _Nullable __strong, NSError * _Nullable __strong, WFBackgroundShortcutRunnerResultBlock  _Nonnull __strong)"}];
    v53 = v52 = v17;
    [v51 handleFailureInFunction:v53 file:@"WFBackgroundShortcutRunnerResult.m" lineNumber:116 description:{@"Invalid parameter not satisfying: %@", @"completion"}];

    v17 = v52;
  }

  v19 = [v16 action];
  v20 = [v17 allValues];
  v63 = v16;
  v59 = v17;
  if ([v20 count] == 1)
  {
    v21 = [v17 allValues];
    v22 = [v21 firstObject];
  }

  else
  {
    v22 = 0;
  }

  v57 = v11;

  v42 = [v19 outputsFiles];
  if (v61 && (v42 & 1) != 0)
  {
    v43 = [v19 resultFileOperation];
    v65[0] = MEMORY[0x1E69E9820];
    v65[1] = 3221225472;
    v65[2] = __WFBackgroundShortcutRunnerMakeContextualActionsResult_block_invoke;
    v65[3] = &unk_1E8378AB0;
    v70 = v43 == 0;
    v66 = v61;
    v68 = v18;
    v69 = v43;
    v67 = v22;
    v44 = v63;
    [v63 getInputWithCompletionHandler:v65];

    v45 = v58;
  }

  else
  {
    v46 = objc_alloc(MEMORY[0x1E69E0DD8]);
    v45 = v58;
    if (v58)
    {
      v47 = 0;
    }

    else
    {
      v47 = v22;
    }

    v48 = [v46 initWithOutput:v61 files:0 runError:v58 reversalState:v47];
    v18[2](v18, v48);

    v44 = v63;
  }

  v11 = v57;
LABEL_29:
}

uint64_t sub_1CA28C1D4(void *a1)
{
  v2 = [a1 actions];
  sub_1CA25B3D0(0, &qword_1EDB9F5D0, off_1E836DCF8);
  v3 = sub_1CA94C658();

  v4 = sub_1CA25B410(v3);

  if (!v4)
  {
    v8 = 0xD000000000000017;

    return v8;
  }

  v5 = [a1 actions];
  v6 = sub_1CA94C658();

  v7 = sub_1CA25B410(v6);

  if (v7 >= 2)
  {

    return 0xD00000000000001FLL;
  }

  v9 = [a1 actions];
  v10 = sub_1CA94C658();

  if (sub_1CA25B410(v10))
  {
    sub_1CA275D70(0, (v10 & 0xC000000000000001) == 0, v10);
    if ((v10 & 0xC000000000000001) != 0)
    {
LABEL_36:
      v11 = MEMORY[0x1CCAA22D0](0, v10);
    }

    else
    {
      v11 = *(v10 + 32);
    }

    v12 = v11;

    if (([v12 mightSuppressRunningProgress] & 1) == 0)
    {

      return 0xD000000000000057;
    }

    v13 = [v12 parameters];
    sub_1CA25B3D0(0, &qword_1EC441AA0, off_1E836EDB8);
    v14 = sub_1CA94C658();

    v33 = sub_1CA25B410(v14);
    if (!v33)
    {
      goto LABEL_30;
    }

    v15 = 0;
    v16 = v14 & 0xC000000000000001;
    v31 = v14 + 32;
    v32 = v14 & 0xC000000000000001;
    v17 = &selRef_isInputParameter;
    v18 = &selRef_metaDataDeviceQueryOperation;
    v34 = v14;
    v35 = v12;
    while (2)
    {
      sub_1CA275D70(v15, v16 == 0, v14);
      if (v16)
      {
        v19 = MEMORY[0x1CCAA22D0](v15, v14);
      }

      else
      {
        v19 = *(v31 + 8 * v15);
      }

      v20 = v19;
      if (!__OFADD__(v15++, 1))
      {
        v22 = [v19 v17[126]];
        if (!v22)
        {
          sub_1CA94C3A8();
          v22 = sub_1CA94C368();
        }

        v23 = [v12 v18[356]];

        v36 = v20;
        if (v23)
        {
          v24 = [v23 containedVariables];
          sub_1CA25B3D0(0, &qword_1EC441AC0, off_1E836F4B0);
          v25 = sub_1CA94C658();
        }

        else
        {
          v25 = MEMORY[0x1E69E7CC0];
        }

        v26 = sub_1CA25B410(v25);
        v27 = 0;
        v10 = v25 & 0xC000000000000001;
        while (v26 != v27)
        {
          if (v10)
          {
            v28 = MEMORY[0x1CCAA22D0](v27, v25);
          }

          else
          {
            if (v27 >= *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_35;
            }

            v28 = *(v25 + 8 * v27 + 32);
          }

          v29 = v28;
          if (__OFADD__(v27, 1))
          {
            __break(1u);
LABEL_35:
            __break(1u);
            goto LABEL_36;
          }

          objc_opt_self();
          if (swift_dynamicCastObjCClass())
          {

            swift_unknownObjectRelease();

            return 0xD000000000000053;
          }

          ++v27;
        }

        swift_unknownObjectRelease();

        v14 = v34;
        v12 = v35;
        v16 = v32;
        v17 = &selRef_isInputParameter;
        v18 = &selRef_metaDataDeviceQueryOperation;
        if (v15 != v33)
        {
          continue;
        }

LABEL_30:

        return 0;
      }

      break;
    }

    __break(1u);
  }

  result = sub_1CA94D5F8();
  __break(1u);
  return result;
}

void sub_1CA28C7C4(char a1)
{
  v2 = v1;
  v4 = *(v1 + OBJC_IVAR___WFRunningProgressSuppressionStateMachine_waitingCancellable);
  *(v1 + OBJC_IVAR___WFRunningProgressSuppressionStateMachine_waitingCancellable) = 0;

  v5 = objc_allocWithZone(type metadata accessor for RunningProgressSuppressionStateMachine.State());
  v6 = sub_1CA282CB0(3);
  v7 = sub_1CA94C368();
  v8 = OUTLINED_FUNCTION_50_6();
  v10 = [v8 v9];

  if (v10)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v12 = Strong;
      v13 = *(v2 + OBJC_IVAR___WFRunningProgressSuppressionStateMachine_initialDialogAttribution);
      [v12 runningProgressSuppressionStateMachine:v2 didDecideRunningProgressIsAllowed:a1 & 1 dialogAttribution:v13];

      swift_unknownObjectRelease();
    }
  }
}

uint64_t sub_1CA28C8D4(void *a1, void *a2)
{
  v3 = v2;
  v5 = *(v2 + OBJC_IVAR___WFRunningProgressSuppressionStateMachine_initialDialogAttribution);
  *(v3 + OBJC_IVAR___WFRunningProgressSuppressionStateMachine_initialDialogAttribution) = a2;
  v6 = a2;

  v7 = objc_allocWithZone(type metadata accessor for RunningProgressSuppressionStateMachine.State());
  v8 = sub_1CA282CB0(1);
  v9 = sub_1CA94C368();
  v10 = OUTLINED_FUNCTION_50_6();
  [v10 v11];

  result = sub_1CA28C1D4(a1);
  if (v13)
  {
    sub_1CA28C7C4(1);
  }

  return result;
}

uint64_t sub_1CA28CAAC()
{
  type metadata accessor for RunningProgressSuppressionStateMachine.State();
  result = swift_dynamicCastClass();
  if (result)
  {
    return *(v0 + OBJC_IVAR____TtCC11WorkflowKit38RunningProgressSuppressionStateMachineP33_D75DF74A866BF93BDD94A2803CD087FC5State_stage) < *(result + OBJC_IVAR____TtCC11WorkflowKit38RunningProgressSuppressionStateMachineP33_D75DF74A866BF93BDD94A2803CD087FC5State_stage);
  }

  return result;
}

void sub_1CA28CBA8()
{
  OUTLINED_FUNCTION_37_0();
  v2 = v1;
  v3 = [v1 actions];
  sub_1CA25B3D0(0, &qword_1EDB9F5D0, off_1E836DCF8);
  v4 = sub_1CA94C658();

  sub_1CA25B410(v4);

  sub_1CA2E52A8();
  v18 = v5;
  v6 = sub_1CA9491F8();
  v7 = OUTLINED_FUNCTION_1_0(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  v12 = MEMORY[0x1EEE9AC00](v7);
  v13 = *&v2[OBJC_IVAR___WFWorkflowActionTree_root];
  MEMORY[0x1EEE9AC00](v12);
  sub_1CA94C218();
  sub_1CA9491E8();
  sub_1CA367AE4();

  v14 = *(v9 + 8);
  v15 = OUTLINED_FUNCTION_68_3();
  v14(v15);
  v16 = OUTLINED_FUNCTION_69();
  v14(v16);
  v17 = *(v0 + 56);
  *(v0 + 56) = v18;

  OUTLINED_FUNCTION_36();
}

void sub_1CA28CD88(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  swift_unknownObjectRetain();
  v7 = a1;
  a4(a3);
  swift_unknownObjectRelease();
}

void *sub_1CA28CE98()
{
  v1 = [objc_opt_self() hashTableWithOptions_];
  v2 = MEMORY[0x1E69E7CD0];
  v0[2] = v1;
  v0[3] = v2;
  sub_1CA9491F8();
  v3 = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_20_0();
  v0[5] = sub_1CA94C1E8();
  v0[7] = v3;
  OUTLINED_FUNCTION_20_0();
  v4 = sub_1CA94C1E8();
  v0[6] = v3;
  v0[8] = v4;
  v0[9] = v3;
  v0[10] = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444890, &qword_1CA984348);
  v0[4] = sub_1CA94C1E8();
  return v0;
}

uint64_t OUTLINED_FUNCTION_130_0()
{
  v1 = v0[35];
  v2 = v0[32];
  v3 = v0[22];
  v4 = v0[7];
  v5 = *(v0[33] + 16);
  return v0[34];
}

void OUTLINED_FUNCTION_130_1()
{
  v1 = *(v0 + 2032);
  v2 = *(v0 + 1112);
  v3 = *(v0 + 1104);
}

__n128 *OUTLINED_FUNCTION_130_2(__n128 *result, __n128 a2)
{
  result[1] = a2;
  result[2].n128_u64[0] = v2;
  return result;
}

uint64_t OUTLINED_FUNCTION_130_4()
{

  return sub_1CA94D328();
}