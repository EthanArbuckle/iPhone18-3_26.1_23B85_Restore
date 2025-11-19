uint64_t sub_1DD525D54@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1DD524D98();
  *a2 = result;
  return result;
}

uint64_t sub_1DD525D84@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1DD525218(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1DD525E70(uint64_t a1, uint64_t a2)
{
  sub_1DD522770(a2);
  sub_1DD63FCA8();
}

uint64_t sub_1DD525EF0(uint64_t *a1)
{
  v3 = sub_1DD3CE274();
  v4 = MEMORY[0x1E12B1F80](166, &type metadata for ContactRankerFeature, MEMORY[0x1E69E63B0], v3);
  sub_1DD3C2388(a1, v38);
  v5 = sub_1DD63FCB8();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);

    return v4;
  }

  else
  {
    v6 = v5;
    v37 = a1;
    v7 = 0;
    v9 = v5 + 64;
    v8 = *(v5 + 64);
    v10 = *(v5 + 32);
    OUTLINED_FUNCTION_4_1();
    v13 = v12 & v11;
    v15 = (v14 + 63) >> 6;
    while (v13)
    {
LABEL_9:
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
      v18 = v17 | (v7 << 6);
      v19 = (*(v6 + 48) + 16 * v18);
      v20 = *v19;
      v21 = v19[1];
      v22 = *(*(v6 + 56) + 8 * v18);

      v23 = sub_1DD524D98();
      if (v23 != 166)
      {
        v24 = v23;
        swift_isUniquelyReferenced_nonNull_native();
        v38[0] = v4;
        v35 = sub_1DD3FE6CC(v24);
        v36 = v25;
        if (__OFADD__(*(v4 + 16), (v25 & 1) == 0))
        {
          goto LABEL_22;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDE4E8, &unk_1DD657C00);
        if (sub_1DD640A08())
        {
          v26 = sub_1DD3FE6CC(v24);
          v28 = v36;
          if ((v36 & 1) != (v27 & 1))
          {
            goto LABEL_24;
          }
        }

        else
        {
          v26 = v35;
          v28 = v36;
        }

        v4 = v38[0];
        if (v28)
        {
          *(*(v38[0] + 56) + 8 * v26) = v22;
        }

        else
        {
          OUTLINED_FUNCTION_14_5(v38[0] + 8 * (v26 >> 6));
          *(v30 + v29) = v24;
          *(*(v4 + 56) + 8 * v29) = v22;
          v31 = *(v4 + 16);
          v32 = __OFADD__(v31, 1);
          v33 = v31 + 1;
          if (v32)
          {
            goto LABEL_23;
          }

          *(v4 + 16) = v33;
        }
      }
    }

    while (1)
    {
      v16 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      if (v16 >= v15)
      {
        __swift_destroy_boxed_opaque_existential_1(v37);

        return v4;
      }

      v13 = *(v9 + 8 * v16);
      ++v7;
      if (v13)
      {
        v7 = v16;
        goto LABEL_9;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    result = sub_1DD640D58();
    __break(1u);
  }

  return result;
}

uint64_t sub_1DD526164@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1DD525EF0(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1DD5261D8(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1DD640CA8();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        type metadata accessor for ContactMatchRuntimeData(0);
        v6 = sub_1DD640158();
        *(v6 + 16) = v5;
      }

      matched = type metadata accessor for ContactMatchRuntimeData(0);
      OUTLINED_FUNCTION_3(matched);
      v9[0] = v6 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
      v9[1] = v5;
      sub_1DD526688(v9, v10, a1, v4);
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
    return sub_1DD526304(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1DD526304(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  matched = type metadata accessor for ContactMatchRuntimeData(0);
  v9 = *(*(matched - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](matched);
  v47 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = (&v39 - v13);
  result = MEMORY[0x1EEE9AC00](v12);
  v18 = (&v39 - v17);
  v41 = a2;
  if (a3 == a2)
  {
    return result;
  }

  v19 = *(v16 + 72);
  v20 = *a4 + v19 * (a3 - 1);
  v21 = -v19;
  v22 = a1 - a3;
  v46 = *a4;
  v40 = v19;
  v23 = v46 + v19 * a3;
  while (2)
  {
    v44 = v20;
    v45 = a3;
    v42 = v23;
    v43 = v22;
    while (1)
    {
      sub_1DD527BC4(v23, v18, type metadata accessor for ContactMatchRuntimeData);
      sub_1DD527BC4(v20, v14, type metadata accessor for ContactMatchRuntimeData);
      v24 = *(matched + 20);
      v25 = *(type metadata accessor for ContactResolver.SignalSet(0) + 204);
      v26 = *(v18 + v24 + v25);
      v27 = *(v14 + v24 + v25);
      if (v26 == 1)
      {
        break;
      }

      if ((v27 & 1) == 0)
      {
        goto LABEL_8;
      }

LABEL_14:
      sub_1DD527C20(v14, type metadata accessor for ContactMatchRuntimeData);
      result = sub_1DD527C20(v18, type metadata accessor for ContactMatchRuntimeData);
LABEL_15:
      if (!v46)
      {
        __break(1u);
        return result;
      }

      v37 = v47;
      sub_1DD527AF8(v23, v47, type metadata accessor for ContactMatchRuntimeData);
      swift_arrayInitWithTakeFrontToBack();
      result = sub_1DD527AF8(v37, v20, type metadata accessor for ContactMatchRuntimeData);
      v20 += v21;
      v23 += v21;
      if (__CFADD__(v22++, 1))
      {
        goto LABEL_20;
      }
    }

    if ((v27 & 1) == 0)
    {
      goto LABEL_19;
    }

LABEL_8:
    v28 = *(matched + 32);
    v29 = *(v14 + v28);
    v30 = *(v18 + v28);
    if (v29 + 0.000000001 < v30)
    {
      goto LABEL_14;
    }

    if (v30 + 0.000000001 < v29)
    {
      goto LABEL_19;
    }

    v31 = v14[10];
    v50 = v14[9];
    v51 = v31;
    v32 = v18[10];
    v48 = v18[9];
    v49 = v32;
    sub_1DD3B7F10();
    v33 = sub_1DD640698();
    if (v33 == 1)
    {
      goto LABEL_14;
    }

    if (v33 != -1)
    {
      v34 = v14[6];
      v50 = v14[5];
      v51 = v34;
      v35 = v18[6];
      v48 = v18[5];
      v49 = v35;
      v36 = sub_1DD640698();
      sub_1DD527C20(v14, type metadata accessor for ContactMatchRuntimeData);
      result = sub_1DD527C20(v18, type metadata accessor for ContactMatchRuntimeData);
      if (v36 == -1)
      {
        goto LABEL_20;
      }

      goto LABEL_15;
    }

LABEL_19:
    sub_1DD527C20(v14, type metadata accessor for ContactMatchRuntimeData);
    result = sub_1DD527C20(v18, type metadata accessor for ContactMatchRuntimeData);
LABEL_20:
    a3 = v45 + 1;
    v20 = v44 + v40;
    v22 = v43 - 1;
    v23 = v42 + v40;
    if (v45 + 1 != v41)
    {
      continue;
    }

    return result;
  }
}

void sub_1DD526688(int64_t *a1, uint64_t a2, int64_t a3, int64_t a4)
{
  v153 = a1;
  matched = type metadata accessor for ContactMatchRuntimeData(0);
  v162 = *(matched - 8);
  v7 = *(v162 + 64);
  v8 = MEMORY[0x1EEE9AC00](matched);
  v158 = &v152 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v171 = &v152 - v11;
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = (&v152 - v13);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = (&v152 - v16);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v169 = (&v152 - v19);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v168 = (&v152 - v21);
  v22 = MEMORY[0x1EEE9AC00](v20);
  v155 = (&v152 - v23);
  MEMORY[0x1EEE9AC00](v22);
  v154 = (&v152 - v24);
  v164 = a3;
  v25 = *(a3 + 8);
  if (v25 < 1)
  {
    v27 = MEMORY[0x1E69E7CC0];
LABEL_136:
    a3 = *v153;
    if (!*v153)
    {
      goto LABEL_177;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = v166;
    if (isUniquelyReferenced_nonNull_native)
    {
LABEL_138:
      v146 = v27 + 16;
      v147 = *(v27 + 2);
      for (i = v27; v147 >= 2; v27 = i)
      {
        if (!*v164)
        {
          goto LABEL_174;
        }

        v148 = &v27[16 * v147];
        v27 = *v148;
        v149 = &v146[2 * v147];
        v150 = *(v149 + 1);
        sub_1DD5273EC(*v164 + *(v162 + 72) * *v148, *v164 + *(v162 + 72) * *v149, *v164 + *(v162 + 72) * v150, a3);
        if (v17)
        {
          break;
        }

        if (v150 < v27)
        {
          goto LABEL_162;
        }

        if (v147 - 2 >= *v146)
        {
          goto LABEL_163;
        }

        *v148 = v27;
        *(v148 + 1) = v150;
        v151 = *v146 - v147;
        if (*v146 < v147)
        {
          goto LABEL_164;
        }

        v147 = *v146 - 1;
        sub_1DD4EC4E4(v149 + 16, v151, v149);
        *v146 = v147;
      }

LABEL_146:

      return;
    }

LABEL_171:
    v27 = sub_1DD4EC2B8(v27);
    goto LABEL_138;
  }

  v152 = a4;
  v26 = 0;
  v27 = MEMORY[0x1E69E7CC0];
  v172 = matched;
  while (2)
  {
    v28 = v26++;
    if (v26 >= v25)
    {
      goto LABEL_53;
    }

    v160 = v25;
    v29 = *v164;
    v30 = *(v162 + 72);
    v165 = v26;
    v31 = v154;
    sub_1DD527BC4(v29 + v30 * v26, v154, type metadata accessor for ContactMatchRuntimeData);
    v156 = v28;
    v163 = v30;
    v32 = v29 + v30 * v28;
    v33 = v155;
    sub_1DD527BC4(v32, v155, type metadata accessor for ContactMatchRuntimeData);
    v34 = *(matched + 20);
    v159 = type metadata accessor for ContactResolver.SignalSet(0);
    v35 = *(v159 + 204);
    v36 = *(v31 + v34 + v35);
    v37 = *(v33 + v34 + v35);
    i = v27;
    if (v36 == 1)
    {
      v38 = v156;
      if ((v37 & 1) == 0)
      {
LABEL_15:
        LODWORD(v161) = 0;
        goto LABEL_16;
      }
    }

    else
    {
      v38 = v156;
      if (v37)
      {
        goto LABEL_9;
      }
    }

    v39 = *(matched + 32);
    v40 = *(v155 + v39);
    v41 = *(v154 + v39);
    if (v40 + 0.000000001 >= v41)
    {
      if (v41 + 0.000000001 < v40)
      {
        goto LABEL_15;
      }

      v43 = v155[10];
      v175 = v155[9];
      v176 = v43;
      v44 = v154[10];
      v173 = v154[9];
      v174 = v44;
      sub_1DD3B7F10();
      v45 = sub_1DD640698();
      if (v45 == -1)
      {
        goto LABEL_15;
      }

      if (v45 != 1)
      {
        v46 = v155[6];
        v175 = v155[5];
        v176 = v46;
        v47 = v154[6];
        v173 = v154[5];
        v174 = v47;
        v42 = sub_1DD640698() != -1;
        goto LABEL_10;
      }
    }

LABEL_9:
    v42 = 1;
LABEL_10:
    LODWORD(v161) = v42;
LABEL_16:
    sub_1DD527C20(v155, type metadata accessor for ContactMatchRuntimeData);
    sub_1DD527C20(v154, type metadata accessor for ContactMatchRuntimeData);
    v48 = v38 + 2;
    v49 = v163 * (v38 + 2);
    v50 = v29 + v49;
    v51 = v165;
    v52 = v163 * v165;
    v53 = v29 + v163 * v165;
    do
    {
      a3 = v48;
      v54 = v51;
      v55 = v52;
      v27 = v49;
      if (v48 >= v160)
      {
        break;
      }

      v170 = v51;
      v165 = v52;
      v56 = v49;
      v57 = v48;
      v58 = v168;
      sub_1DD527BC4(v50, v168, type metadata accessor for ContactMatchRuntimeData);
      v59 = v169;
      sub_1DD527BC4(v53, v169, type metadata accessor for ContactMatchRuntimeData);
      v60 = *(v172 + 20);
      v61 = *(v159 + 204);
      v62 = *(v58 + v60 + v61);
      v63 = *(v59 + v60 + v61);
      a3 = v57;
      if (v62 == 1)
      {
        if ((v63 & 1) == 0)
        {
          v64 = 0;
LABEL_23:
          v27 = v56;
          goto LABEL_26;
        }
      }

      else if (v63)
      {
        v64 = 1;
        goto LABEL_23;
      }

      v65 = *(v172 + 32);
      v66 = *(v169 + v65);
      v67 = *(v168 + v65);
      v27 = v56;
      if (v66 + 0.000000001 >= v67)
      {
        v55 = v165;
        if (v67 + 0.000000001 < v66)
        {
          goto LABEL_33;
        }

        v68 = v169[10];
        v175 = v169[9];
        v176 = v68;
        v69 = v168[10];
        v173 = v168[9];
        v174 = v69;
        sub_1DD3B7F10();
        v70 = sub_1DD640698();
        if (v70 == -1)
        {
LABEL_33:
          v64 = 0;
        }

        else if (v70 == 1)
        {
          v64 = 1;
        }

        else
        {
          v71 = v169[6];
          v175 = v169[5];
          v176 = v71;
          v72 = v168[6];
          v173 = v168[5];
          v174 = v72;
          v64 = sub_1DD640698() != -1;
        }

        goto LABEL_27;
      }

      v64 = 1;
LABEL_26:
      v55 = v165;
LABEL_27:
      sub_1DD527C20(v169, type metadata accessor for ContactMatchRuntimeData);
      sub_1DD527C20(v168, type metadata accessor for ContactMatchRuntimeData);
      v48 = a3 + 1;
      v50 += v163;
      v53 += v163;
      v54 = v170;
      v51 = v170 + 1;
      v52 = v55 + v163;
      v49 = &v27[v163];
    }

    while (v161 == v64);
    if (!v161)
    {
      goto LABEL_51;
    }

    v28 = v156;
    if (a3 < v156)
    {
      goto LABEL_168;
    }

    if (v156 >= a3)
    {
      v26 = a3;
      v27 = i;
      matched = v172;
    }

    else
    {
      v73 = v156 * v163;
      do
      {
        if (v28 != v54)
        {
          v170 = v54;
          v74 = *v164;
          if (!*v164)
          {
            goto LABEL_175;
          }

          sub_1DD527AF8(v74 + v73, v158, type metadata accessor for ContactMatchRuntimeData);
          v75 = v73 < v55 || v74 + v73 >= &v27[v74];
          if (v75)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v73 != v55)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          sub_1DD527AF8(v158, v74 + v55, type metadata accessor for ContactMatchRuntimeData);
          v54 = v170;
        }

        ++v28;
        v55 -= v163;
        v27 -= v163;
        v73 += v163;
        v76 = v28 < v54--;
      }

      while (v76);
LABEL_51:
      v26 = a3;
      v27 = i;
      matched = v172;
      v28 = v156;
    }

LABEL_53:
    v77 = v164[1];
    if (v26 >= v77)
    {
      goto LABEL_82;
    }

    if (__OFSUB__(v26, v28))
    {
      goto LABEL_167;
    }

    if (v26 - v28 >= v152)
    {
LABEL_82:
      if (v26 < v28)
      {
        goto LABEL_166;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v142 = *(v27 + 2);
        sub_1DD3BEB7C();
        v27 = v143;
      }

      v99 = *(v27 + 2);
      v100 = v99 + 1;
      if (v99 >= *(v27 + 3) >> 1)
      {
        sub_1DD3BEB7C();
        v27 = v144;
      }

      *(v27 + 2) = v100;
      v101 = v27 + 32;
      v102 = &v27[16 * v99 + 32];
      *v102 = v28;
      *(v102 + 1) = v26;
      v170 = *v153;
      if (!v170)
      {
        goto LABEL_176;
      }

      if (!v99)
      {
LABEL_132:
        v25 = v164[1];
        matched = v172;
        if (v26 >= v25)
        {
          goto LABEL_136;
        }

        continue;
      }

      i = v27;
      v165 = (v27 + 32);
      while (1)
      {
        v103 = v100 - 1;
        v104 = &v101[16 * v100 - 16];
        v105 = &v27[16 * v100];
        if (v100 >= 4)
        {
          break;
        }

        if (v100 == 3)
        {
          v106 = *(v27 + 4);
          v107 = *(v27 + 5);
          v116 = __OFSUB__(v107, v106);
          v108 = v107 - v106;
          v109 = v116;
LABEL_103:
          if (v109)
          {
            goto LABEL_153;
          }

          v121 = *v105;
          v120 = *(v105 + 1);
          v122 = __OFSUB__(v120, v121);
          v123 = v120 - v121;
          v124 = v122;
          if (v122)
          {
            goto LABEL_156;
          }

          v125 = *(v104 + 1);
          v126 = v125 - *v104;
          if (__OFSUB__(v125, *v104))
          {
            goto LABEL_159;
          }

          if (__OFADD__(v123, v126))
          {
            goto LABEL_161;
          }

          if (v123 + v126 >= v108)
          {
            if (v108 < v126)
            {
              v103 = v100 - 2;
            }

            goto LABEL_125;
          }

          goto LABEL_118;
        }

        if (v100 < 2)
        {
          goto LABEL_155;
        }

        v128 = *v105;
        v127 = *(v105 + 1);
        v116 = __OFSUB__(v127, v128);
        v123 = v127 - v128;
        v124 = v116;
LABEL_118:
        if (v124)
        {
          goto LABEL_158;
        }

        v130 = *v104;
        v129 = *(v104 + 1);
        v116 = __OFSUB__(v129, v130);
        v131 = v129 - v130;
        if (v116)
        {
          goto LABEL_160;
        }

        if (v131 < v123)
        {
          goto LABEL_132;
        }

LABEL_125:
        if (v103 - 1 >= v100)
        {
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
          __break(1u);
LABEL_155:
          __break(1u);
LABEL_156:
          __break(1u);
LABEL_157:
          __break(1u);
LABEL_158:
          __break(1u);
LABEL_159:
          __break(1u);
LABEL_160:
          __break(1u);
LABEL_161:
          __break(1u);
LABEL_162:
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
          goto LABEL_170;
        }

        if (!*v164)
        {
          goto LABEL_173;
        }

        v135 = &v101[16 * v103 - 16];
        v27 = *v135;
        a3 = v103;
        v136 = &v101[16 * v103];
        v137 = *(v136 + 1);
        v138 = v166;
        sub_1DD5273EC(*v164 + *(v162 + 72) * *v135, *v164 + *(v162 + 72) * *v136, *v164 + *(v162 + 72) * v137, v170);
        v166 = v138;
        if (v138)
        {
          goto LABEL_146;
        }

        if (v137 < v27)
        {
          goto LABEL_148;
        }

        v139 = v17;
        v17 = v14;
        v140 = v26;
        v141 = *(i + 2);
        if (a3 > v141)
        {
          goto LABEL_149;
        }

        *v135 = v27;
        *(v135 + 1) = v137;
        if (a3 >= v141)
        {
          goto LABEL_150;
        }

        v100 = v141 - 1;
        sub_1DD4EC4E4(v136 + 16, v141 - 1 - a3, v136);
        v27 = i;
        *(i + 2) = v141 - 1;
        v76 = v141 > 2;
        v26 = v140;
        v14 = v17;
        v17 = v139;
        v101 = v165;
        if (!v76)
        {
          goto LABEL_132;
        }
      }

      v110 = &v101[16 * v100];
      v111 = *(v110 - 8);
      v112 = *(v110 - 7);
      v116 = __OFSUB__(v112, v111);
      v113 = v112 - v111;
      if (v116)
      {
        goto LABEL_151;
      }

      v115 = *(v110 - 6);
      v114 = *(v110 - 5);
      v116 = __OFSUB__(v114, v115);
      v108 = v114 - v115;
      v109 = v116;
      if (v116)
      {
        goto LABEL_152;
      }

      v117 = *(v105 + 1);
      v118 = v117 - *v105;
      if (__OFSUB__(v117, *v105))
      {
        goto LABEL_154;
      }

      v116 = __OFADD__(v108, v118);
      v119 = v108 + v118;
      if (v116)
      {
        goto LABEL_157;
      }

      if (v119 >= v113)
      {
        v133 = *v104;
        v132 = *(v104 + 1);
        v116 = __OFSUB__(v132, v133);
        v134 = v132 - v133;
        if (v116)
        {
          goto LABEL_165;
        }

        if (v108 < v134)
        {
          v103 = v100 - 2;
        }

        goto LABEL_125;
      }

      goto LABEL_103;
    }

    break;
  }

  v78 = v28 + v152;
  if (__OFADD__(v28, v152))
  {
    goto LABEL_169;
  }

  if (v78 >= v77)
  {
    v78 = v164[1];
  }

  if (v78 < v28)
  {
LABEL_170:
    __break(1u);
    goto LABEL_171;
  }

  if (v26 == v78)
  {
    goto LABEL_82;
  }

  i = v27;
  v79 = *v164;
  v80 = *(v162 + 72);
  v81 = *v164 + v80 * (v26 - 1);
  a3 = -v80;
  v156 = v28;
  v157 = v80;
  v82 = v28 - v26;
  v170 = v79;
  v83 = v79 + v26 * v80;
  v159 = v78;
  while (2)
  {
    v165 = v26;
    v160 = v83;
    v161 = v82;
    v163 = v81;
    v84 = v81;
LABEL_63:
    sub_1DD527BC4(v83, v17, type metadata accessor for ContactMatchRuntimeData);
    sub_1DD527BC4(v84, v14, type metadata accessor for ContactMatchRuntimeData);
    v85 = *(matched + 20);
    v86 = *(type metadata accessor for ContactResolver.SignalSet(0) + 204);
    v87 = *(v17 + v85 + v86);
    v88 = *(v14 + v85 + v86);
    if (v87 == 1)
    {
      if ((v88 & 1) == 0)
      {
        goto LABEL_78;
      }

      goto LABEL_67;
    }

    if (v88)
    {
      goto LABEL_73;
    }

LABEL_67:
    v89 = *(v172 + 32);
    v90 = *(v14 + v89);
    v91 = *(v17 + v89);
    if (v90 + 0.000000001 < v91)
    {
      goto LABEL_73;
    }

    if (v91 + 0.000000001 < v90)
    {
      goto LABEL_78;
    }

    v92 = v14[10];
    v175 = v14[9];
    v176 = v92;
    v93 = v17[10];
    v173 = v17[9];
    v174 = v93;
    sub_1DD3B7F10();
    v94 = sub_1DD640698();
    if (v94 == 1)
    {
LABEL_73:
      sub_1DD527C20(v14, type metadata accessor for ContactMatchRuntimeData);
      sub_1DD527C20(v17, type metadata accessor for ContactMatchRuntimeData);
      goto LABEL_74;
    }

    if (v94 == -1)
    {
LABEL_78:
      sub_1DD527C20(v14, type metadata accessor for ContactMatchRuntimeData);
      sub_1DD527C20(v17, type metadata accessor for ContactMatchRuntimeData);
LABEL_79:
      matched = v172;
LABEL_80:
      v26 = v165 + 1;
      v81 = v163 + v157;
      v82 = v161 - 1;
      v83 = v160 + v157;
      if (v165 + 1 == v159)
      {
        v26 = v159;
        v27 = i;
        v28 = v156;
        goto LABEL_82;
      }

      continue;
    }

    break;
  }

  v95 = v14[6];
  v175 = v14[5];
  v176 = v95;
  v96 = v17[6];
  v173 = v17[5];
  v174 = v96;
  v97 = sub_1DD640698();
  sub_1DD527C20(v14, type metadata accessor for ContactMatchRuntimeData);
  sub_1DD527C20(v17, type metadata accessor for ContactMatchRuntimeData);
  if (v97 == -1)
  {
    goto LABEL_79;
  }

LABEL_74:
  matched = v172;
  if (v170)
  {
    v98 = v171;
    sub_1DD527AF8(v83, v171, type metadata accessor for ContactMatchRuntimeData);
    swift_arrayInitWithTakeFrontToBack();
    sub_1DD527AF8(v98, v84, type metadata accessor for ContactMatchRuntimeData);
    v84 += a3;
    v83 += a3;
    v75 = __CFADD__(v82++, 1);
    if (v75)
    {
      goto LABEL_80;
    }

    goto LABEL_63;
  }

  __break(1u);
LABEL_173:
  __break(1u);
LABEL_174:
  __break(1u);
LABEL_175:
  __break(1u);
LABEL_176:
  __break(1u);
LABEL_177:
  __break(1u);
}

uint64_t sub_1DD5273EC(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  matched = type metadata accessor for ContactMatchRuntimeData(0);
  v8 = *(*(matched - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](matched);
  v75 = (&v69 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = MEMORY[0x1EEE9AC00](v9);
  v74 = (&v69 - v12);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = (&v69 - v14);
  result = MEMORY[0x1EEE9AC00](v13);
  v18 = (&v69 - v17);
  v20 = *(v19 + 72);
  if (!v20)
  {
    __break(1u);
LABEL_84:
    __break(1u);
LABEL_85:
    __break(1u);
    return result;
  }

  v21 = a2 - a1;
  v22 = a2 - a1 == 0x8000000000000000 && v20 == -1;
  if (v22)
  {
    goto LABEL_84;
  }

  v23 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v20 == -1)
  {
    goto LABEL_85;
  }

  v25 = v21 / v20;
  v82 = a4;
  v83 = a1;
  v26 = v23 / v20;
  if (v21 / v20 < v23 / v20)
  {
    sub_1DD3C1C14(a1, v21 / v20, a4);
    v75 = (a4 + v25 * v20);
    v81 = v75;
    while (1)
    {
      if (a4 >= v75 || a2 >= a3)
      {
        goto LABEL_82;
      }

      sub_1DD527BC4(a2, v18, type metadata accessor for ContactMatchRuntimeData);
      sub_1DD527BC4(a4, v15, type metadata accessor for ContactMatchRuntimeData);
      v28 = *(matched + 20);
      v29 = *(type metadata accessor for ContactResolver.SignalSet(0) + 204);
      v30 = *(v18 + v28 + v29);
      v31 = *(v15 + v28 + v29);
      if (v30 == 1)
      {
        if ((v31 & 1) == 0)
        {
          goto LABEL_36;
        }
      }

      else if (v31)
      {
        goto LABEL_21;
      }

      v32 = *(matched + 32);
      v33 = *(v15 + v32);
      v34 = *(v18 + v32);
      if (v33 + 0.000000001 < v34)
      {
        goto LABEL_21;
      }

      if (v34 + 0.000000001 < v33)
      {
        goto LABEL_36;
      }

      v36 = v15[10];
      v79 = v15[9];
      v80 = v36;
      v37 = v18[10];
      v77 = v18[9];
      v78 = v37;
      sub_1DD3B7F10();
      v38 = sub_1DD640698();
      if (v38 == -1)
      {
LABEL_36:
        sub_1DD527C20(v15, type metadata accessor for ContactMatchRuntimeData);
        sub_1DD527C20(v18, type metadata accessor for ContactMatchRuntimeData);
LABEL_37:
        if (a1 < a4 || a1 >= a4 + v20)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (a1 != a4)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        v82 = a4 + v20;
        a4 += v20;
        goto LABEL_46;
      }

      if (v38 == 1)
      {
LABEL_21:
        sub_1DD527C20(v15, type metadata accessor for ContactMatchRuntimeData);
        sub_1DD527C20(v18, type metadata accessor for ContactMatchRuntimeData);
        goto LABEL_22;
      }

      v39 = v15[6];
      v79 = v15[5];
      v80 = v39;
      v40 = v18[6];
      v77 = v18[5];
      v78 = v40;
      v41 = sub_1DD640698();
      sub_1DD527C20(v15, type metadata accessor for ContactMatchRuntimeData);
      sub_1DD527C20(v18, type metadata accessor for ContactMatchRuntimeData);
      if (v41 == -1)
      {
        goto LABEL_37;
      }

LABEL_22:
      if (a1 < a2 || a1 >= a2 + v20)
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else if (a1 != a2)
      {
        swift_arrayInitWithTakeBackToFront();
      }

      a2 += v20;
LABEL_46:
      a1 += v20;
      v83 = a1;
    }
  }

  sub_1DD3C1C14(a2, v23 / v20, a4);
  v43 = (a4 + v26 * v20);
  v44 = -v20;
  v45 = v43;
  v73 = -v20;
LABEL_48:
  v46 = a2 + v44;
  v47 = a3;
  v70 = v45;
  v72 = a2 + v44;
  while (1)
  {
    if (v43 <= a4)
    {
      v83 = a2;
      goto LABEL_81;
    }

    if (a2 <= a1)
    {
      break;
    }

    v71 = v45;
    v48 = (v43 + v44);
    v49 = v74;
    sub_1DD527BC4(v43 + v44, v74, type metadata accessor for ContactMatchRuntimeData);
    v50 = v46;
    v51 = v75;
    sub_1DD527BC4(v50, v75, type metadata accessor for ContactMatchRuntimeData);
    v52 = *(matched + 20);
    v53 = *(type metadata accessor for ContactResolver.SignalSet(0) + 204);
    v54 = *(v49 + v52 + v53);
    v55 = *(v51 + v52 + v53);
    if (v54 == 1)
    {
      if ((v55 & 1) == 0)
      {
        goto LABEL_61;
      }
    }

    else if (v55)
    {
      goto LABEL_56;
    }

    v56 = *(matched + 32);
    v57 = *(v75 + v56);
    v58 = *(v74 + v56);
    if (v57 + 0.000000001 < v58)
    {
      goto LABEL_56;
    }

    if (v58 + 0.000000001 < v57)
    {
      goto LABEL_61;
    }

    v60 = v75[10];
    v79 = v75[9];
    v80 = v60;
    v61 = v74[10];
    v77 = v74[9];
    v78 = v61;
    sub_1DD3B7F10();
    v62 = sub_1DD640698();
    if (v62 == -1)
    {
LABEL_61:
      v59 = 0;
      goto LABEL_62;
    }

    if (v62 == 1)
    {
LABEL_56:
      v59 = 1;
      goto LABEL_62;
    }

    v63 = v75[6];
    v79 = v75[5];
    v80 = v63;
    v64 = v74[6];
    v77 = v74[5];
    v78 = v64;
    v59 = sub_1DD640698() != -1;
LABEL_62:
    a3 = v47 + v73;
    sub_1DD527C20(v75, type metadata accessor for ContactMatchRuntimeData);
    sub_1DD527C20(v74, type metadata accessor for ContactMatchRuntimeData);
    if (v59)
    {
      if (v47 < a2 || a3 >= a2)
      {
        a2 = v72;
        swift_arrayInitWithTakeFrontToBack();
        v45 = v71;
        v44 = v73;
      }

      else
      {
        v67 = v72;
        v45 = v71;
        v22 = v47 == a2;
        a2 = v72;
        v44 = v73;
        if (!v22)
        {
          v68 = v71;
          swift_arrayInitWithTakeBackToFront();
          a2 = v67;
          v45 = v68;
        }
      }

      goto LABEL_48;
    }

    if (v47 < v43 || a3 >= v43)
    {
      swift_arrayInitWithTakeFrontToBack();
      v47 = a3;
      v43 = v48;
      v45 = v48;
      v46 = v72;
      v44 = v73;
    }

    else
    {
      v45 = v48;
      v22 = v43 == v47;
      v47 = a3;
      v43 = v48;
      v46 = v72;
      v44 = v73;
      if (!v22)
      {
        swift_arrayInitWithTakeBackToFront();
        v47 = a3;
        v43 = v48;
        v45 = v48;
      }
    }
  }

  v83 = a2;
  v45 = v70;
LABEL_81:
  v81 = v45;
LABEL_82:
  sub_1DD4EC2D0(&v83, &v82, &v81);
  return 1;
}

unint64_t sub_1DD527AA0()
{
  result = qword_1EE1638A0;
  if (!qword_1EE1638A0)
  {
    type metadata accessor for MLModelMetadataKey(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1638A0);
  }

  return result;
}

uint64_t sub_1DD527AF8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3(0);
  OUTLINED_FUNCTION_7(v4);
  v6 = *(v5 + 32);
  v7 = OUTLINED_FUNCTION_15_0();
  v8(v7);
  return a2;
}

uint64_t sub_1DD527B54(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDE4F8, &qword_1DD657C18);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DD527BC4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3(0);
  OUTLINED_FUNCTION_7(v4);
  v6 = *(v5 + 16);
  v7 = OUTLINED_FUNCTION_15_0();
  v8(v7);
  return a2;
}

uint64_t sub_1DD527C20(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_7(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t getEnumTagSinglePayload for ContactRankerFeature(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0x5B)
  {
    if (a2 + 165 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 165) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 166;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA6;
  v5 = v6 - 166;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for ContactRankerFeature(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 165 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 165) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0x5B)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0x5A)
  {
    v6 = ((a2 - 91) >> 8) + 1;
    *result = a2 - 91;
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
          *result = a2 - 91;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1DD527E24()
{
  result = qword_1EE165288;
  if (!qword_1EE165288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE165288);
  }

  return result;
}

unint64_t sub_1DD527E78()
{
  result = qword_1ECCDE528;
  if (!qword_1ECCDE528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDE528);
  }

  return result;
}

double OUTLINED_FUNCTION_10_39@<D0>(__n128 *a1@<X8>, __n128 a2@<Q0>, __n128 a3@<Q1>)
{
  *a1 = a3;
  a1[1] = a2;
  a1[2] = a2;
  v5 = v4 + v3[16];
  *&result = 0x100000001;
  *v5 = 1;
  *(v5 + 4) = 2;
  v7 = (v4 + v3[17]);
  *v7 = 0;
  v7[1] = 0;
  *(v4 + v3[20]) = 0;
  v8 = (v4 + v3[21]);
  *v8 = 0;
  v8[1] = 0;
  return result;
}

double OUTLINED_FUNCTION_13_37@<D0>(uint64_t a1@<X8>)
{
  *(v1 + 24) = 0;
  *(v1 + 32) = a1;
  *(v1 + 40) = 0;
  *(v1 + 48) = a1;
  *(v1 + 56) = 0;
  *(v1 + 64) = a1;
  *(v1 + 72) = 0;
  *(v1 + 80) = a1;
  *(v1 + 88) = 0;
  *(v1 + 96) = a1;
  *(v1 + 104) = 0;
  *(v1 + 112) = a1;
  *(v1 + 120) = 0;
  *(v1 + 128) = a1;
  *(v1 + 136) = 0;
  *(v1 + 144) = a1;
  *(v1 + 152) = 0;
  *(v1 + 160) = a1;
  result = 0.0;
  *(v1 + 216) = 0u;
  *(v1 + 200) = 0u;
  *(v1 + 184) = 0u;
  *(v1 + 168) = 0u;
  return result;
}

uint64_t sub_1DD527F68()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBBC8, &qword_1DD643FC0);
  v1 = OUTLINED_FUNCTION_3(v0);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v21 - v4;
  sub_1DD63EFC8();
  OUTLINED_FUNCTION_65_0();
  __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
  type metadata accessor for PhoneAppSelectionModelCache();
  v10 = swift_allocObject();
  type metadata accessor for MessagesAppSelectionModelCache();
  v11 = swift_allocObject();
  v12 = sub_1DD63D798();
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  swift_allocObject();
  v15 = sub_1DD63D788();
  v16 = type metadata accessor for ModelBasedAppResolverRule();
  v17 = *(v16 + 48);
  v18 = *(v16 + 52);
  v19 = swift_allocObject();
  sub_1DD528340(v5, v10, v11, sub_1DD528300, 0, v15);
  return v19;
}

unint64_t sub_1DD52809C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v6 = HIBYTE(a4) & 0xF;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v6 = a3 & 0xFFFFFFFFFFFFLL;
  }

  v7 = 4 * v6;
  for (i = 15; ; i = sub_1DD63FF18())
  {
    if (i >> 14 == v7)
    {
      return 0;
    }

    if (sub_1DD640038() == a1 && v9 == a2)
    {
      break;
    }

    v11 = sub_1DD640CD8();

    if (v11)
    {
      return i;
    }
  }

  return i;
}

uint64_t sub_1DD528184(void *a1, uint64_t a2)
{
  v3 = 0;
  v4 = *(a2 + 16);
  v5 = (a2 + 56);
  while (v4 != v3)
  {
    if (*(v5 - 3) == *a1 && *(v5 - 2) == a1[1])
    {
      return v3;
    }

    v8 = *(v5 - 1);
    v7 = *v5;
    if (sub_1DD640CD8())
    {
      return v3;
    }

    if (v7)
    {
      v9 = a1[3];
      if (v9)
      {
        v10 = v8 == a1[2] && v7 == v9;
        if (v10 || (sub_1DD640CD8() & 1) != 0)
        {
          return v3;
        }
      }
    }

    ++v3;
    v5 += 10;
  }

  return 0;
}

uint64_t sub_1DD52823C()
{
  OUTLINED_FUNCTION_18_7();
  v2 = 0;
  v4 = *(v3 + 16);
  v5 = (v3 + 40);
  while (v4 != v2)
  {
    v6 = *(v5 - 1) == v1 && *v5 == v0;
    if (v6 || (sub_1DD640CD8() & 1) != 0)
    {
      return v2;
    }

    ++v2;
    v5 += 2;
  }

  return 0;
}

id sub_1DD5282C4()
{
  result = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
  qword_1ECD0DDA0 = result;
  return result;
}

uint64_t sub_1DD528300(uint64_t a1)
{
  sub_1DD3FDEDC(a1);
  v1 = sub_1DD52D648();

  return v1;
}

void *sub_1DD528340(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBBC8, &qword_1DD643FC0);
  v13 = OUTLINED_FUNCTION_3(v12);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = v6 + OBJC_IVAR____TtC13SiriInference25ModelBasedAppResolverRule_signalGatheringSignpostName;
  *v16 = "CommsAppSelectionModelInferenceSignalGathering";
  *(v16 + 1) = 46;
  v16[16] = 2;
  v17 = v6 + OBJC_IVAR____TtC13SiriInference25ModelBasedAppResolverRule_interactionStatsQuerySignpostName;
  *v17 = "CommsAppSelectionModelInferenceStatsQuery";
  *(v17 + 1) = 41;
  v17[16] = 2;
  v6[2] = a4;
  v6[3] = a5;
  v18 = OBJC_IVAR____TtC13SiriInference25ModelBasedAppResolverRule_phoneAppSelectionModelCache;
  *(v6 + OBJC_IVAR____TtC13SiriInference25ModelBasedAppResolverRule_phoneAppSelectionModelCache) = a2;
  v19 = OBJC_IVAR____TtC13SiriInference25ModelBasedAppResolverRule_messageAppSelectionModelCache;
  *(v6 + OBJC_IVAR____TtC13SiriInference25ModelBasedAppResolverRule_messageAppSelectionModelCache) = a3;
  v20 = sub_1DD63EFC8();
  if (__swift_getEnumTagSinglePayload(a1, 1, v20) != 1)
  {
    goto LABEL_6;
  }

  sub_1DD63EFB8();
  if (!v31)
  {

    sub_1DD390754(a1, &qword_1ECCDBBC8, &qword_1DD643FC0);
    OUTLINED_FUNCTION_10_15();
    __swift_storeEnumTagSinglePayload(v26, v27, v28, v20);
LABEL_6:
    sub_1DD52DB00();
    *(v6 + OBJC_IVAR____TtC13SiriInference25ModelBasedAppResolverRule_defaultAppProvider) = a6;
    return v6;
  }

  sub_1DD390754(a1, &qword_1ECCDBBC8, &qword_1DD643FC0);
  v21 = v6[3];

  v22 = *(v6 + v18);

  v23 = *(v6 + v19);

  type metadata accessor for ModelBasedAppResolverRule();
  v24 = *(*v6 + 48);
  v25 = *(*v6 + 52);
  swift_deallocPartialClassInstance();
  return v6;
}

uint64_t sub_1DD5285A0(uint64_t a1, uint64_t a2)
{
  v3[18] = a2;
  v3[19] = v2;
  v3[17] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBBC8, &qword_1DD643FC0);
  OUTLINED_FUNCTION_3(v4);
  v6 = *(v5 + 64) + 15;
  v3[20] = swift_task_alloc();
  v7 = type metadata accessor for Signpost();
  v3[21] = v7;
  OUTLINED_FUNCTION_3(v7);
  v9 = *(v8 + 64) + 15;
  v3[22] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DD528668, 0, 0);
}

uint64_t sub_1DD528668()
{
  v87 = v0;
  v1 = 0;
  v2 = *(v0[18] + 24);
  v3 = *(v2 + 16);
  v4 = (v2 + 40);
  v5 = MEMORY[0x1E69E7CC0];
  while (v3 != v1)
  {
    if (v1 >= *(v2 + 16))
    {
      __break(1u);
LABEL_38:

      v71 = sub_1DD63F9D8();
      v72 = sub_1DD640368();
      if (OUTLINED_FUNCTION_37(v72))
      {
        v73 = OUTLINED_FUNCTION_9();
        OUTLINED_FUNCTION_11_3(v73);
        OUTLINED_FUNCTION_35_0(&dword_1DD38D000, v74, v75, "ModelBasedAppResolverRule#resolve Unable to generate CoreML model feature input");
        OUTLINED_FUNCTION_23_0();
      }

      v0 = v85;
      v76 = v85[22];
      v77 = v85[17];

      sub_1DD41BFFC(v76);
      *v77 = 0;
      *(v77 + 8) = 0;
      *(v77 + 16) = 3;
      goto LABEL_41;
    }

    v7 = *(v4 - 1);
    v6 = *v4;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v10 = *(v5 + 16);
      sub_1DD3BE2A4();
      v5 = v11;
    }

    v8 = *(v5 + 16);
    if (v8 >= *(v5 + 24) >> 1)
    {
      sub_1DD3BE2A4();
      v5 = v12;
    }

    *(v5 + 16) = v8 + 1;
    v9 = v5 + 16 * v8;
    *(v9 + 32) = v7;
    *(v9 + 40) = v6;
    v4 += 3;
    ++v1;
  }

  if (qword_1EE162D98 != -1)
  {
    OUTLINED_FUNCTION_0_4();
  }

  v13 = sub_1DD63F9F8();
  __swift_project_value_buffer(v13, qword_1EE16EFB8);

  v14 = sub_1DD63F9D8();
  v15 = sub_1DD640368();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v86 = v17;
    *v16 = 136315138;
    v18 = MEMORY[0x1E12B2430](v5, MEMORY[0x1E69E6158]);
    v20 = sub_1DD39565C(v18, v19, &v86);

    *(v16 + 4) = v20;
    _os_log_impl(&dword_1DD38D000, v14, v15, "ModelBasedAppResolverRule#resolve candidate apps: %s", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v17);
    MEMORY[0x1E12B3DA0](v17, -1, -1);
    MEMORY[0x1E12B3DA0](v16, -1, -1);
  }

  v21 = v0[19];
  v23 = *(v21 + OBJC_IVAR____TtC13SiriInference25ModelBasedAppResolverRule_interactionStatsQuerySignpostName);
  v22 = *(v21 + OBJC_IVAR____TtC13SiriInference25ModelBasedAppResolverRule_interactionStatsQuerySignpostName + 8);
  v24 = *(v21 + OBJC_IVAR____TtC13SiriInference25ModelBasedAppResolverRule_interactionStatsQuerySignpostName + 16);
  if (qword_1EE166460 != -1)
  {
    OUTLINED_FUNCTION_4_2();
    v21 = v0[19];
  }

  v26 = v0[21];
  v25 = v0[22];
  v82 = v0[20];
  v84 = v21;
  v27 = qword_1EE16F0C0;
  v28 = v25 + *(v26 + 20);
  *v28 = v23;
  *(v28 + 8) = v22;
  *(v28 + 16) = v24;
  v29 = v27;
  sub_1DD63F9B8();
  *(v25 + *(v26 + 24)) = v29;
  v29;
  sub_1DD6404D8();
  v85 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDFCE0, &unk_1DD645500);
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_1DD643F90;
  v31 = sub_1DD6408F8();
  v33 = v32;
  *(v30 + 56) = MEMORY[0x1E69E6158];
  *(v30 + 64) = sub_1DD392BD8();
  *(v30 + 32) = v31;
  *(v30 + 40) = v33;
  OUTLINED_FUNCTION_3_61();
  sub_1DD63F998();

  v34 = OBJC_IVAR____TtC13SiriInference25ModelBasedAppResolverRule_appMatcher;
  sub_1DD52DAA4();
  v35 = sub_1DD63EFC8();
  if (__swift_getEnumTagSinglePayload(v82, 1, v35) == 1)
  {
    v36 = v0[20];

    sub_1DD390754(v36, &qword_1ECCDBBC8, &qword_1DD643FC0);
    v37 = sub_1DD63F9D8();
    v38 = sub_1DD640368();
    if (!OUTLINED_FUNCTION_37(v38))
    {
LABEL_19:
      v43 = v0[22];
      v44 = v0[17];

      sub_1DD41BFFC(v43);
      *v44 = 0;
      *(v44 + 8) = 0;
      *(v44 + 16) = 3;
      goto LABEL_20;
    }

    v39 = OUTLINED_FUNCTION_9();
    OUTLINED_FUNCTION_11_3(v39);
    v42 = "ModelBasedAppResolverRule#resolve bundle stats is nil";
LABEL_18:
    OUTLINED_FUNCTION_35_0(&dword_1DD38D000, v40, v41, v42);
    OUTLINED_FUNCTION_23_0();
    goto LABEL_19;
  }

  v48 = v0[18];
  if (*v48)
  {
    v49 = *v48;
    sub_1DD63F398();
  }

  else
  {
    v50 = *(v48 + *(type metadata accessor for CommsAppResolutionFeature(0) + 36));
  }

  v51 = v0[20];
  v83 = sub_1DD63EF98();
  v52 = v0[20];
  v81 = v0[18];

  (*(*(v35 - 8) + 8))(v52, v35);
  v53 = CommsAppResolutionFeature.getBundleContactStats(appMatcher:bundleIds:groupBySiriDonation:)(v84 + v34, v5, 1);
  v55 = v53;
  if (!v53)
  {

    v37 = sub_1DD63F9D8();
    v65 = sub_1DD640368();
    if (OUTLINED_FUNCTION_37(v65))
    {
      v66 = OUTLINED_FUNCTION_9();
      OUTLINED_FUNCTION_11_3(v66);
      OUTLINED_FUNCTION_35_0(&dword_1DD38D000, v67, v68, "ModelBasedAppResolverRule#resolve bundle contact stats is nil");
      OUTLINED_FUNCTION_23_0();
    }

    goto LABEL_19;
  }

  v56 = v0[22];
  v58 = v0[18];
  v57 = v0[19];
  sub_1DD6404C8();
  sub_1DD63F9A8();
  sub_1DD528E98();
  if (!v0[10])
  {

    sub_1DD390754((v0 + 7), &qword_1ECCDBF80, &unk_1DD657A00);
    v37 = sub_1DD63F9D8();
    v69 = sub_1DD640368();
    if (!OUTLINED_FUNCTION_37(v69))
    {
      goto LABEL_19;
    }

    v70 = OUTLINED_FUNCTION_9();
    OUTLINED_FUNCTION_11_3(v70);
    v42 = "ModelBasedAppResolverRule#resolve Unable to get the CoreML model for prediction";
    goto LABEL_18;
  }

  v60 = v0[18];
  v59 = v0[19];
  sub_1DD3AA4A8((v0 + 7), (v0 + 2));
  v61 = sub_1DD528EFC(v5, v60, v55, v83);

  if (!v61)
  {
    goto LABEL_38;
  }

  v62 = v0[5];
  v63 = v85[6];
  __swift_project_boxed_opaque_existential_1(v85 + 2, v85[5]);
  (*(v63 + 16))(v61, v62, v63);
  v64 = v85[22];
  v0 = v85;
  v79 = v85[16];
  v78 = v85[17];
  v80 = v85[15];
  __swift_project_boxed_opaque_existential_1(v85 + 12, v80);
  (*(v79 + 24))(v5, v80, v79);

  sub_1DD41BFFC(v64);
  __swift_destroy_boxed_opaque_existential_1(v85 + 12);
LABEL_41:
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
LABEL_20:
  v45 = v0[22];
  v46 = v0[20];

  v47 = v0[1];

  return v47();
}

uint64_t sub_1DD528E98()
{
  CommsAppResolutionFeature.isMessage.getter();
  if (v1)
  {
    v2 = *(v0 + OBJC_IVAR____TtC13SiriInference25ModelBasedAppResolverRule_messageAppSelectionModelCache);
    return sub_1DD51E098();
  }

  else
  {
    v4 = *(v0 + OBJC_IVAR____TtC13SiriInference25ModelBasedAppResolverRule_phoneAppSelectionModelCache);
    return sub_1DD54F698();
  }
}

id sub_1DD528EFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v341 = a4;
  v340 = a3;
  v394 = a2;
  v380 = sub_1DD63FB78();
  v5 = OUTLINED_FUNCTION_0(v380);
  v379 = v6;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_14_2(v9);
  v378 = sub_1DD63FBD8();
  v10 = OUTLINED_FUNCTION_0(v378);
  v338 = v11;
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_14_2(v14);
  v377 = sub_1DD63FB88();
  v15 = OUTLINED_FUNCTION_0(v377);
  v336 = v16;
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_14_2(v19);
  v399 = sub_1DD63F1B8();
  v20 = OUTLINED_FUNCTION_0(v399);
  v396 = v21;
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_1();
  v398 = v24;
  v375 = sub_1DD63D078();
  v25 = OUTLINED_FUNCTION_0(v375);
  v393 = v26;
  v28 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_1();
  v374 = v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDCB80, &qword_1DD64A0E0);
  v31 = OUTLINED_FUNCTION_3(v30);
  v33 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_1_4();
  OUTLINED_FUNCTION_1_17();
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_1_17();
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_1_17();
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_1_17();
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_1_17();
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_1_17();
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_1_17();
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_1_17();
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_1_17();
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_16_3();
  OUTLINED_FUNCTION_14_2(v43);
  v391 = sub_1DD63F148();
  v44 = OUTLINED_FUNCTION_0(v391);
  v381 = v45;
  v47 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v44);
  OUTLINED_FUNCTION_1_4();
  OUTLINED_FUNCTION_1_17();
  MEMORY[0x1EEE9AC00](v48);
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_1_17();
  MEMORY[0x1EEE9AC00](v49);
  OUTLINED_FUNCTION_18_0();
  v400 = v50;
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x1EEE9AC00](v51);
  v53 = &v332 - v52;
  MEMORY[0x1EEE9AC00](v54);
  v56 = &v332 - v55;
  v57 = sub_1DD63D898();
  v58 = OUTLINED_FUNCTION_0(v57);
  v334 = v59;
  v61 = *(v60 + 64);
  MEMORY[0x1EEE9AC00](v58);
  v63 = &v332 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDB9A0, &qword_1DD64F780);
  v65 = swift_allocObject();
  v401 = xmmword_1DD64D850;
  *(v65 + 16) = xmmword_1DD64D850;
  sub_1DD39638C(0, &qword_1EE163880, 0x1E696AD98);
  *(v65 + 32) = sub_1DD640598();
  v66 = *(a1 + 16);
  *(v65 + 40) = sub_1DD6402C8();
  v67 = objc_allocWithZone(MEMORY[0x1E695FED0]);
  v68 = v65;
  v69 = 0;
  v70 = sub_1DD521130(v68, 65568);
  v367 = v66;
  v389 = v56;
  v390 = v53;
  v368 = v63;
  v333 = v57;
  if (!v70)
  {
    if (qword_1EE162D98 != -1)
    {
      goto LABEL_118;
    }

    goto LABEL_3;
  }

  v75 = v70;
  v355 = v64;
  v77 = v397;
  sub_1DD52C8C0();
  sub_1DD52B204();
  v79 = v78;
  sub_1DD52B204();
  v365 = v80;
  sub_1DD52BB0C();
  v82 = v81;
  v83 = v341;
  sub_1DD52B204();
  OUTLINED_FUNCTION_15_36();
  sub_1DD52BB0C();
  OUTLINED_FUNCTION_57_11();
  v362 = v82;
  sub_1DD52B7F8();
  v359 = v84;
  v364 = v79;
  sub_1DD52B7F8();
  v358 = v85;
  v361 = v83;
  sub_1DD52B7F8();
  v357 = v86;
  v363 = v66;
  sub_1DD52B7F8();
  v356 = v87;
  v88 = v394;
  v366 = *(v394 + 24);
  CommsAppResolutionFeature.isMessage.getter();
  v89 = *(v77 + OBJC_IVAR____TtC13SiriInference25ModelBasedAppResolverRule_defaultAppProvider);
  v342 = sub_1DD63D778();
  v360 = v90;
  if (*v88)
  {
    v89 = *v88;
    v91 = sub_1DD640558();
    v92 = sub_1DD640538();
  }

  else
  {
    v93 = type metadata accessor for CommsAppResolutionFeature(0);
    v91 = *(v88 + *(v93 + 44));
    v92 = *(v88 + *(v93 + 40));
  }

  v94 = v377;
  OUTLINED_FUNCTION_23_27();
  v95 = v376;
  v69 = 0;
  v382 = v381 + 16;
  v388 = v381 + 32;
  v354 = (v393 + 8);
  v353 = *MEMORY[0x1E69D2A28];
  v96 = v396++;
  v397 = (v96 + 13);
  v352 = *MEMORY[0x1E69D2A00];
  v351 = *MEMORY[0x1E69D2A20];
  v350 = *MEMORY[0x1E69D29F0];
  v349 = *MEMORY[0x1E69D2A10];
  v348 = *MEMORY[0x1E69D29F8];
  v345 = (v381 + 8);
  v393 = (v366 + 48);
  v347 = *MEMORY[0x1E69D2A08];
  v346 = *MEMORY[0x1E69D2A18];
  v344 = v91 & 1;
  v343 = v92 & 1;
  OUTLINED_FUNCTION_56_8();
  OUTLINED_FUNCTION_61_7();
  v395 = v75;
  while (1)
  {
    v101 = v378;
    if (v97 == v69)
    {
      v319 = v99;
      v320 = v100;

      sub_1DD39638C(0, &qword_1EE166480, 0x1E69E9610);
      v321 = v336;
      v322 = v335;
      (*(v336 + 104))(v335, *MEMORY[0x1E69E7F80], v94);
      v323 = sub_1DD6404B8();
      v324 = v94;
      v325 = v323;
      (*(v321 + 8))(v322, v324);
      v326 = swift_allocObject();
      v327 = v340;
      v326[2] = v75;
      v326[3] = v327;
      v326[4] = v341;
      v406 = sub_1DD52DA98;
      v407 = v326;
      aBlock = MEMORY[0x1E69E9820];
      v403 = 1107296256;
      v404 = sub_1DD3CBCD0;
      v405 = &block_descriptor_17;
      v328 = _Block_copy(&aBlock);
      v329 = v75;

      v330 = v337;
      sub_1DD63FBA8();
      v408 = MEMORY[0x1E69E7CC0];
      sub_1DD52DA40();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBFE8, &qword_1DD64F0F0);
      sub_1DD44FA38();
      v331 = v339;
      sub_1DD640718();
      MEMORY[0x1E12B27A0](0, v330, v331, v328);
      _Block_release(v328);

      (*(v320 + 8))(v331, v319);
      (*(v338 + 8))(v330, v101);
      (*(v334 + 8))(v368, v333);

      return v75;
    }

    v102 = *(v98 - 1);
    v103 = *v98;
    v385 = v98;
    v410 = -1.0;
    v411 = 0xBFF0000000000000;
    OUTLINED_FUNCTION_31_18(&v394);
    v394 = v102;
    if (v104)
    {

      sub_1DD3978DC();
      OUTLINED_FUNCTION_59_7();
      if (v106)
      {
        v107 = v89[7] + *(v381 + 72) * v105;
        v108 = *(v381 + 16);
        v109 = v391;
        OUTLINED_FUNCTION_27_21();
        v110();
        OUTLINED_FUNCTION_10_15();
      }

      else
      {
        OUTLINED_FUNCTION_65_0();
        v109 = v391;
      }

      __swift_storeEnumTagSinglePayload(v111, v112, v113, v109);
      OUTLINED_FUNCTION_23_27();
    }

    else
    {
      OUTLINED_FUNCTION_65_0();
      v109 = v391;
      __swift_storeEnumTagSinglePayload(v114, v115, v116, v391);

      OUTLINED_FUNCTION_59_7();
    }

    sub_1DD52DB00();
    OUTLINED_FUNCTION_65_5(v102);
    if (v152)
    {
      sub_1DD63F138();
      sub_1DD390754(v102, &qword_1ECCDCB80, &qword_1DD64A0E0);
    }

    else
    {
      OUTLINED_FUNCTION_18_30();
      v117(v389, v102, v109);
    }

    OUTLINED_FUNCTION_31_18(&v395);
    if (v118)
    {
      OUTLINED_FUNCTION_8_50();
      v119 = sub_1DD3978DC();
      if (v120)
      {
        OUTLINED_FUNCTION_26_23(v119, qword_1ECCDCBB8);
        v121 = v369;
        OUTLINED_FUNCTION_27_21();
        v122();
        OUTLINED_FUNCTION_23_27();
        goto LABEL_28;
      }

      OUTLINED_FUNCTION_23_27();
    }

    else
    {
      v123 = 1;
    }

    v121 = v369;
LABEL_28:
    __swift_storeEnumTagSinglePayload(v121, v123, 1, v109);
    sub_1DD52DB00();
    OUTLINED_FUNCTION_65_5(v95);
    if (v152)
    {
      sub_1DD63F138();
      sub_1DD390754(v95, &qword_1ECCDCB80, &qword_1DD64A0E0);
    }

    else
    {
      OUTLINED_FUNCTION_18_30();
      v124(v390, v95, v109);
    }

    OUTLINED_FUNCTION_31_18(v392);
    if (v125)
    {
      OUTLINED_FUNCTION_8_50();
      v126 = sub_1DD3978DC();
      if (v127)
      {
        OUTLINED_FUNCTION_26_23(v126, 0xC0002E0E2);
        v128 = v370;
        OUTLINED_FUNCTION_27_21();
        v129();
        OUTLINED_FUNCTION_23_27();
        goto LABEL_37;
      }

      OUTLINED_FUNCTION_23_27();
    }

    else
    {
      v130 = 1;
    }

    v128 = v370;
LABEL_37:
    __swift_storeEnumTagSinglePayload(v128, v130, 1, v109);
    v131 = v373;
    sub_1DD52DB00();
    OUTLINED_FUNCTION_65_5(v131);
    if (v152)
    {
      sub_1DD63F138();
      sub_1DD390754(v131, &qword_1ECCDCB80, &qword_1DD64A0E0);
    }

    else
    {
      OUTLINED_FUNCTION_18_30();
      v132(v400, v131, v109);
    }

    OUTLINED_FUNCTION_31_18(&v393);
    if (v133)
    {
      OUTLINED_FUNCTION_8_50();
      v134 = sub_1DD3978DC();
      if (v135)
      {
        OUTLINED_FUNCTION_26_23(v134, 0xC0002E0E2);
        OUTLINED_FUNCTION_27_21();
        v136();
        OUTLINED_FUNCTION_23_27();
        goto LABEL_46;
      }

      OUTLINED_FUNCTION_23_27();
    }

    else
    {
      v138 = 1;
    }

    v137 = v371;
LABEL_46:
    __swift_storeEnumTagSinglePayload(v137, v138, 1, v109);
    v139 = v391;
    sub_1DD52DB00();
    OUTLINED_FUNCTION_1_87(v64);
    if (v152)
    {
      sub_1DD63F138();
      sub_1DD390754(v64, &qword_1ECCDCB80, &qword_1DD64A0E0);
    }

    else
    {
      OUTLINED_FUNCTION_18_30();
      v140(v386, v64, v139);
    }

    v141 = v387;
    OUTLINED_FUNCTION_31_18(&v391);
    if (v142)
    {
      OUTLINED_FUNCTION_8_50();
      v143 = sub_1DD3978DC();
      if (v144)
      {
        OUTLINED_FUNCTION_26_23(v143, qword_1ECCDCBB8);
        v145 = v372;
        v146(v372);
        v147 = 0;
      }

      else
      {
        v147 = 1;
        v145 = v372;
      }
    }

    else
    {
      v147 = 1;
      v145 = v372;
    }

    __swift_storeEnumTagSinglePayload(v145, v147, 1, v139);
    sub_1DD52DB00();
    OUTLINED_FUNCTION_1_87(v101);
    if (v152)
    {
      sub_1DD63F138();
      sub_1DD390754(v101, &qword_1ECCDCB80, &qword_1DD64A0E0);
    }

    else
    {
      OUTLINED_FUNCTION_18_30();
      v148(v141, v101, v139);
    }

    v149 = v374;
    sub_1DD63F108();
    sub_1DD63CFF8();
    v151 = v150;
    (*v354)(v149, v375);
    if (v360)
    {
      v152 = v394 == v342 && v360 == v103;
      v153 = v395;
      v154 = v152 ? 1 : sub_1DD640CD8();
    }

    else
    {
      v154 = 0;
      v153 = v395;
    }

    sub_1DD63D978();
    v155 = v394;
    v156 = v368;
    sub_1DD63D888();

    sub_1DD63D998();
    sub_1DD63D888();

    v157 = OUTLINED_FUNCTION_12_32();
    OUTLINED_FUNCTION_13_38(v157);
    v158 = sub_1DD6402C8();
    v157[2].n128_u64[1] = OUTLINED_FUNCTION_51_8(v158);
    OUTLINED_FUNCTION_41_12();
    OUTLINED_FUNCTION_47_9();
    OUTLINED_FUNCTION_64_4();
    v159 = OUTLINED_FUNCTION_5_62();
    [v159 v160];

    v161 = OUTLINED_FUNCTION_12_32();
    OUTLINED_FUNCTION_13_38(v161);
    v162 = sub_1DD6402C8();
    v163 = OUTLINED_FUNCTION_66_4(v162);
    OUTLINED_FUNCTION_40_10(v163);
    OUTLINED_FUNCTION_38_13();
    OUTLINED_FUNCTION_67_3();
    v164 = OUTLINED_FUNCTION_5_62();
    [v164 v165];

    v166 = OUTLINED_FUNCTION_12_32();
    OUTLINED_FUNCTION_13_38(v166);
    v167 = sub_1DD6402C8();
    v168 = OUTLINED_FUNCTION_66_4(v167);
    OUTLINED_FUNCTION_40_10(v168);
    OUTLINED_FUNCTION_38_13();
    OUTLINED_FUNCTION_67_3();
    v169 = OUTLINED_FUNCTION_5_62();
    [v169 v170];

    v171 = OUTLINED_FUNCTION_12_32();
    OUTLINED_FUNCTION_13_38(v171);
    v171[2].n128_u64[0] = sub_1DD6402C8();
    v171[2].n128_u64[1] = sub_1DD6402C8();
    if (v69 >= *(v366 + 16))
    {
      break;
    }

    v172 = *v393;
    sub_1DD640198();
    v173 = OUTLINED_FUNCTION_48_13();

    v174 = OUTLINED_FUNCTION_19_27();
    [v174 v175];

    v176 = OUTLINED_FUNCTION_12_32();
    OUTLINED_FUNCTION_13_38(v176);
    v176[2].n128_u64[0] = sub_1DD6402C8();
    v176[2].n128_u64[1] = sub_1DD6402C8();
    sub_1DD640208();
    v177 = OUTLINED_FUNCTION_48_13();

    v178 = OUTLINED_FUNCTION_19_27();
    [v178 v179];

    v180 = OUTLINED_FUNCTION_12_32();
    OUTLINED_FUNCTION_13_38(v180);
    v181 = sub_1DD6402C8();
    v182 = OUTLINED_FUNCTION_66_4(v181);
    OUTLINED_FUNCTION_40_10(v182);
    OUTLINED_FUNCTION_38_13();
    OUTLINED_FUNCTION_67_3();
    v183 = OUTLINED_FUNCTION_5_62();
    [v183 v184];

    v185 = OUTLINED_FUNCTION_12_32();
    OUTLINED_FUNCTION_13_38(v185);
    v185[2].n128_u64[0] = sub_1DD6402C8();
    v185[2].n128_u64[1] = sub_1DD6402C8();
    sub_1DD52B124(v410);
    v186 = OUTLINED_FUNCTION_48_13();

    v187 = OUTLINED_FUNCTION_19_27();
    [v187 v188];

    v189 = OUTLINED_FUNCTION_12_32();
    OUTLINED_FUNCTION_13_38(v189);
    v190 = sub_1DD6402C8();
    v189[2].n128_u64[1] = OUTLINED_FUNCTION_51_8(v190);
    OUTLINED_FUNCTION_31_18(&v387);
    if (v191 && (OUTLINED_FUNCTION_8_50(), v192 = sub_1DD3978DC(), (v193 & 1) != 0))
    {
      v194 = *(v185[3].n128_u64[1] + 8 * v192);
    }

    else
    {
      OUTLINED_FUNCTION_41_12();
    }

    OUTLINED_FUNCTION_47_9();
    OUTLINED_FUNCTION_64_4();
    v195 = OUTLINED_FUNCTION_5_62();
    [v195 v196];

    v197 = OUTLINED_FUNCTION_12_32();
    OUTLINED_FUNCTION_13_38(v197);
    v198 = sub_1DD6402C8();
    v197[2].n128_u64[1] = OUTLINED_FUNCTION_51_8(v198);
    OUTLINED_FUNCTION_31_18(&v386);
    if (v199 && (OUTLINED_FUNCTION_8_50(), v200 = sub_1DD3978DC(), (v201 & 1) != 0))
    {
      v202 = *(v185[3].n128_u64[1] + 8 * v200);
    }

    else
    {
      OUTLINED_FUNCTION_41_12();
    }

    OUTLINED_FUNCTION_47_9();
    OUTLINED_FUNCTION_64_4();
    v203 = OUTLINED_FUNCTION_5_62();
    [v203 v204];

    v205 = OUTLINED_FUNCTION_12_32();
    OUTLINED_FUNCTION_13_38(v205);
    v206 = sub_1DD6402C8();
    v207 = OUTLINED_FUNCTION_66_4(v206);
    OUTLINED_FUNCTION_40_10(v207);
    OUTLINED_FUNCTION_38_13();
    OUTLINED_FUNCTION_67_3();
    v208 = OUTLINED_FUNCTION_5_62();
    [v208 v209];

    v210 = OUTLINED_FUNCTION_12_32();
    OUTLINED_FUNCTION_13_38(v210);
    v211 = sub_1DD6402C8();
    v210[2].n128_u64[1] = OUTLINED_FUNCTION_51_8(v211);
    OUTLINED_FUNCTION_31_18(&v389);
    if (v212 && (OUTLINED_FUNCTION_8_50(), v213 = sub_1DD3978DC(), (v214 & 1) != 0))
    {
      v215 = *(v185[3].n128_u64[1] + 8 * v213);
    }

    else
    {
      v215 = OUTLINED_FUNCTION_41_12();
    }

    v216 = v215;
    v384 = v154;
    sub_1DD6400F8();
    OUTLINED_FUNCTION_64_4();
    v217 = OUTLINED_FUNCTION_5_62();
    [v217 v218];

    v219 = OUTLINED_FUNCTION_12_32();
    OUTLINED_FUNCTION_13_38(v219);
    v220 = sub_1DD6402C8();
    v219[2].n128_u64[1] = OUTLINED_FUNCTION_51_8(v220);
    OUTLINED_FUNCTION_31_18(&v388);
    if (v221)
    {
      OUTLINED_FUNCTION_8_50();
      v154 = sub_1DD3978DC();
      v205 = v222;

      if (v205)
      {
        v223 = *(v216[7] + 8 * v154);
        goto LABEL_83;
      }
    }

    else
    {
    }

    OUTLINED_FUNCTION_41_12();
LABEL_83:
    OUTLINED_FUNCTION_57_11();
    v224 = sub_1DD6400F8();

    v225 = OUTLINED_FUNCTION_19_27();
    [v225 v226];

    v227 = OUTLINED_FUNCTION_12_32();
    OUTLINED_FUNCTION_1_88(v227);
    v228 = sub_1DD6402C8();
    *(v154 + 40) = OUTLINED_FUNCTION_34_1(v228);
    OUTLINED_FUNCTION_41_12();
    OUTLINED_FUNCTION_14_35();
    OUTLINED_FUNCTION_15_36();

    v229 = OUTLINED_FUNCTION_5_62();
    [v229 v230];

    v231 = OUTLINED_FUNCTION_12_32();
    OUTLINED_FUNCTION_1_88(v231);
    v232 = sub_1DD6402C8();
    *(v154 + 40) = OUTLINED_FUNCTION_34_1(v232);
    v233 = *(v393 - 1);
    aBlock = *(v393 - 2);
    v403 = v233;
    v408 = 0x6C7070612E6D6F63;
    v409 = 0xE900000000000065;
    sub_1DD3B52B8();
    sub_1DD3B530C();

    sub_1DD63FD48();
    v234 = sub_1DD640198();

    sub_1DD6400F8();
    OUTLINED_FUNCTION_15_36();

    v235 = OUTLINED_FUNCTION_5_62();
    [v235 v236];

    v237 = OUTLINED_FUNCTION_12_32();
    OUTLINED_FUNCTION_1_88(v237);
    v238 = sub_1DD6402C8();
    v239 = OUTLINED_FUNCTION_34_1(v238);
    OUTLINED_FUNCTION_29_19(v239);
    sub_1DD63F0E8();
    v240 = v398;
    v241 = *v397;
    v242 = v399;
    (*v397)(v398, v353, v399);
    v243 = sub_1DD63F1A8();
    v244 = v240;
    v245 = *v396;
    (*v396)(v244, v242);
    if (v243 < 0)
    {
      goto LABEL_102;
    }

    OUTLINED_FUNCTION_33_12();
    if (v246)
    {
      goto LABEL_103;
    }

    OUTLINED_FUNCTION_21_26();
    sub_1DD640DE8();
    OUTLINED_FUNCTION_14_35();
    OUTLINED_FUNCTION_15_36();

    [v153 setObject:v243 forKeyedSubscript:v242];

    v247 = v399;
    v248 = OUTLINED_FUNCTION_12_32();
    OUTLINED_FUNCTION_1_88(v248);
    v249 = sub_1DD6402C8();
    v250 = OUTLINED_FUNCTION_34_1(v249);
    OUTLINED_FUNCTION_29_19(v250);
    sub_1DD63F0E8();
    OUTLINED_FUNCTION_11_41();
    OUTLINED_FUNCTION_10_40(v383);
    v241();
    sub_1DD63F1A8();
    v251 = OUTLINED_FUNCTION_2_76();
    v245(v251);
    if ((v153 & 0x8000000000000000) != 0)
    {
      goto LABEL_104;
    }

    OUTLINED_FUNCTION_33_12();
    if (v246)
    {
      goto LABEL_105;
    }

    OUTLINED_FUNCTION_21_26();
    sub_1DD640DE8();
    OUTLINED_FUNCTION_14_35();
    OUTLINED_FUNCTION_15_36();

    OUTLINED_FUNCTION_25_16(v252, sel_setObject_forKeyedSubscript_);

    v253 = v399;
    v254 = OUTLINED_FUNCTION_12_32();
    OUTLINED_FUNCTION_1_88(v254);
    v255 = sub_1DD6402C8();
    v256 = OUTLINED_FUNCTION_34_1(v255);
    OUTLINED_FUNCTION_29_19(v256);
    sub_1DD63F0E8();
    OUTLINED_FUNCTION_11_41();
    OUTLINED_FUNCTION_10_40(&v382 + 4);
    v241();
    sub_1DD63F1A8();
    v257 = OUTLINED_FUNCTION_2_76();
    v245(v257);
    if ((v153 & 0x8000000000000000) != 0)
    {
      goto LABEL_106;
    }

    OUTLINED_FUNCTION_33_12();
    if (v246)
    {
      goto LABEL_107;
    }

    OUTLINED_FUNCTION_21_26();
    sub_1DD640DE8();
    OUTLINED_FUNCTION_14_35();
    OUTLINED_FUNCTION_15_36();

    OUTLINED_FUNCTION_25_16(v258, sel_setObject_forKeyedSubscript_);

    v259 = v399;
    v260 = OUTLINED_FUNCTION_12_32();
    OUTLINED_FUNCTION_1_88(v260);
    v261 = sub_1DD6402C8();
    v262 = OUTLINED_FUNCTION_34_1(v261);
    OUTLINED_FUNCTION_29_19(v262);
    sub_1DD63F0E8();
    OUTLINED_FUNCTION_11_41();
    OUTLINED_FUNCTION_10_40(&v382);
    v241();
    sub_1DD63F1A8();
    v263 = OUTLINED_FUNCTION_2_76();
    v245(v263);
    if ((v153 & 0x8000000000000000) != 0)
    {
      goto LABEL_108;
    }

    OUTLINED_FUNCTION_33_12();
    if (v246)
    {
      goto LABEL_109;
    }

    OUTLINED_FUNCTION_21_26();
    sub_1DD640DE8();
    OUTLINED_FUNCTION_14_35();
    OUTLINED_FUNCTION_15_36();

    OUTLINED_FUNCTION_25_16(v264, sel_setObject_forKeyedSubscript_);

    v265 = v399;
    v266 = OUTLINED_FUNCTION_12_32();
    OUTLINED_FUNCTION_1_88(v266);
    v267 = sub_1DD6402C8();
    v268 = OUTLINED_FUNCTION_34_1(v267);
    OUTLINED_FUNCTION_29_19(v268);
    sub_1DD63F0E8();
    OUTLINED_FUNCTION_11_41();
    OUTLINED_FUNCTION_10_40(&v381 + 4);
    v241();
    sub_1DD63F1A8();
    v269 = OUTLINED_FUNCTION_2_76();
    v245(v269);
    if ((v153 & 0x8000000000000000) != 0)
    {
      goto LABEL_110;
    }

    OUTLINED_FUNCTION_33_12();
    if (v246)
    {
      goto LABEL_111;
    }

    OUTLINED_FUNCTION_21_26();
    sub_1DD640DE8();
    OUTLINED_FUNCTION_14_35();
    OUTLINED_FUNCTION_15_36();

    OUTLINED_FUNCTION_25_16(v270, sel_setObject_forKeyedSubscript_);

    v271 = v399;
    v272 = OUTLINED_FUNCTION_12_32();
    OUTLINED_FUNCTION_1_88(v272);
    v273 = sub_1DD6402C8();
    v274 = OUTLINED_FUNCTION_34_1(v273);
    OUTLINED_FUNCTION_29_19(v274);
    sub_1DD63F0E8();
    OUTLINED_FUNCTION_11_41();
    OUTLINED_FUNCTION_10_40(&v381);
    v241();
    sub_1DD63F1A8();
    v275 = OUTLINED_FUNCTION_2_76();
    v245(v275);
    if ((v153 & 0x8000000000000000) != 0)
    {
      goto LABEL_112;
    }

    OUTLINED_FUNCTION_33_12();
    if (v246)
    {
      goto LABEL_113;
    }

    OUTLINED_FUNCTION_21_26();
    sub_1DD640DE8();
    OUTLINED_FUNCTION_14_35();
    OUTLINED_FUNCTION_15_36();

    OUTLINED_FUNCTION_25_16(v276, sel_setObject_forKeyedSubscript_);

    v277 = v399;
    v278 = OUTLINED_FUNCTION_12_32();
    OUTLINED_FUNCTION_1_88(v278);
    v279 = sub_1DD6402C8();
    v280 = OUTLINED_FUNCTION_34_1(v279);
    OUTLINED_FUNCTION_29_19(v280);
    sub_1DD63F0E8();
    OUTLINED_FUNCTION_11_41();
    OUTLINED_FUNCTION_10_40(&v380 + 4);
    v241();
    sub_1DD63F1A8();
    v281 = OUTLINED_FUNCTION_2_76();
    v245(v281);
    if ((v153 & 0x8000000000000000) != 0)
    {
      goto LABEL_114;
    }

    OUTLINED_FUNCTION_33_12();
    if (v246)
    {
      goto LABEL_115;
    }

    OUTLINED_FUNCTION_21_26();
    sub_1DD640DE8();
    OUTLINED_FUNCTION_14_35();
    OUTLINED_FUNCTION_15_36();

    OUTLINED_FUNCTION_25_16(v282, sel_setObject_forKeyedSubscript_);

    v283 = v399;
    v284 = OUTLINED_FUNCTION_12_32();
    OUTLINED_FUNCTION_1_88(v284);
    v285 = sub_1DD6402C8();
    v286 = OUTLINED_FUNCTION_34_1(v285);
    OUTLINED_FUNCTION_29_19(v286);
    sub_1DD63F0E8();
    OUTLINED_FUNCTION_11_41();
    OUTLINED_FUNCTION_10_40(&v380);
    v241();
    v287 = v153;
    sub_1DD63F1A8();
    v288 = OUTLINED_FUNCTION_2_76();
    v245(v288);
    if ((v153 & 0x8000000000000000) != 0)
    {
      goto LABEL_116;
    }

    OUTLINED_FUNCTION_33_12();
    if (v246)
    {
      goto LABEL_117;
    }

    OUTLINED_FUNCTION_21_26();
    sub_1DD640DE8();
    OUTLINED_FUNCTION_14_35();
    OUTLINED_FUNCTION_15_36();

    v75 = v395;
    [v395 setObject:v287 forKeyedSubscript:v283];

    v289 = OUTLINED_FUNCTION_12_32();
    OUTLINED_FUNCTION_1_88(v289);
    v290 = sub_1DD6402C8();
    v291 = OUTLINED_FUNCTION_34_1(v290);
    OUTLINED_FUNCTION_29_19(v291);
    sub_1DD63F128();
    sub_1DD6402C8();
    OUTLINED_FUNCTION_14_35();
    OUTLINED_FUNCTION_15_36();

    OUTLINED_FUNCTION_7_47();

    v292 = OUTLINED_FUNCTION_12_32();
    OUTLINED_FUNCTION_1_88(v292);
    v293 = sub_1DD6402C8();
    *(v154 + 40) = OUTLINED_FUNCTION_34_1(v293);
    v294 = v389;
    sub_1DD63F128();
    sub_1DD6402C8();
    OUTLINED_FUNCTION_14_35();
    OUTLINED_FUNCTION_15_36();

    OUTLINED_FUNCTION_7_47();

    v295 = OUTLINED_FUNCTION_12_32();
    OUTLINED_FUNCTION_1_88(v295);
    v296 = sub_1DD6402C8();
    *(v154 + 40) = OUTLINED_FUNCTION_34_1(v296);
    v297 = v390;
    sub_1DD63F128();
    sub_1DD6402C8();
    OUTLINED_FUNCTION_14_35();
    OUTLINED_FUNCTION_15_36();

    OUTLINED_FUNCTION_7_47();

    v298 = OUTLINED_FUNCTION_12_32();
    OUTLINED_FUNCTION_1_88(v298);
    v299 = sub_1DD6402C8();
    *(v154 + 40) = OUTLINED_FUNCTION_34_1(v299);
    v300 = v387;
    v301 = v387;
    sub_1DD63F128();
    sub_1DD6402C8();
    OUTLINED_FUNCTION_14_35();
    OUTLINED_FUNCTION_15_36();

    OUTLINED_FUNCTION_7_47();

    v302 = OUTLINED_FUNCTION_12_32();
    OUTLINED_FUNCTION_1_88(v302);
    v303 = sub_1DD6402C8();
    *(v154 + 40) = OUTLINED_FUNCTION_34_1(v303);
    v304 = v386;
    v305 = v386;
    sub_1DD63F128();
    sub_1DD6402C8();
    OUTLINED_FUNCTION_14_35();
    OUTLINED_FUNCTION_15_36();

    OUTLINED_FUNCTION_7_47();

    v306 = OUTLINED_FUNCTION_12_32();
    OUTLINED_FUNCTION_1_88(v306);
    v307 = sub_1DD6402C8();
    *(v154 + 40) = OUTLINED_FUNCTION_34_1(v307);
    OUTLINED_FUNCTION_41_12();
    OUTLINED_FUNCTION_14_35();
    OUTLINED_FUNCTION_15_36();

    OUTLINED_FUNCTION_7_47();

    v308 = OUTLINED_FUNCTION_12_32();
    OUTLINED_FUNCTION_1_88(v308);
    v309 = sub_1DD6402C8();
    *(v154 + 40) = OUTLINED_FUNCTION_34_1(v309);
    OUTLINED_FUNCTION_41_12();
    OUTLINED_FUNCTION_14_35();
    OUTLINED_FUNCTION_15_36();

    OUTLINED_FUNCTION_7_47();

    v310 = OUTLINED_FUNCTION_12_32();
    OUTLINED_FUNCTION_1_88(v310);
    v311 = sub_1DD6402C8();
    *(v154 + 40) = OUTLINED_FUNCTION_34_1(v311);
    sub_1DD52B124(fabs(round(v151)));
    OUTLINED_FUNCTION_14_35();
    OUTLINED_FUNCTION_15_36();

    OUTLINED_FUNCTION_7_47();

    v312 = OUTLINED_FUNCTION_12_32();
    OUTLINED_FUNCTION_1_88(v312);
    v313 = sub_1DD6402C8();
    *(v154 + 40) = OUTLINED_FUNCTION_34_1(v313);
    sub_1DD640198();
    OUTLINED_FUNCTION_14_35();
    OUTLINED_FUNCTION_15_36();

    OUTLINED_FUNCTION_7_47();

    v314 = OUTLINED_FUNCTION_12_32();
    OUTLINED_FUNCTION_1_88(v314);
    v315 = sub_1DD6402C8();
    *(v154 + 40) = OUTLINED_FUNCTION_34_1(v315);
    sub_1DD640198();
    OUTLINED_FUNCTION_14_35();
    OUTLINED_FUNCTION_15_36();

    OUTLINED_FUNCTION_7_47();

    v316 = OUTLINED_FUNCTION_12_32();
    OUTLINED_FUNCTION_1_88(v316);
    v317 = sub_1DD6402C8();
    *(v154 + 40) = OUTLINED_FUNCTION_34_1(v317);
    sub_1DD640198();
    OUTLINED_FUNCTION_14_35();
    OUTLINED_FUNCTION_15_36();

    OUTLINED_FUNCTION_7_47();

    v64 = v345;
    v318 = *v345;
    v89 = v391;
    (*v345)(v300, v391);
    v318(v304, v89);
    v318(v400, v89);
    v318(v390, v89);
    v318(v389, v89);
    v393 += 24;
    ++v69;
    OUTLINED_FUNCTION_56_8();
    v94 = v377;
    OUTLINED_FUNCTION_23_27();
    v95 = v376;
    OUTLINED_FUNCTION_61_7();
  }

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
LABEL_116:
  __break(1u);
LABEL_117:
  __break(1u);
LABEL_118:
  OUTLINED_FUNCTION_0_4();
LABEL_3:
  v71 = sub_1DD63F9F8();
  __swift_project_value_buffer(v71, qword_1EE16EFB8);
  v72 = sub_1DD63F9D8();
  v73 = sub_1DD640368();
  if (os_log_type_enabled(v72, v73))
  {
    v74 = OUTLINED_FUNCTION_9();
    OUTLINED_FUNCTION_11_3(v74);
    _os_log_impl(&dword_1DD38D000, v72, v73, "ModelBasedAppResolverRule#generateModelInput Unable to initialize MLMultiArray", v69, 2u);
    OUTLINED_FUNCTION_23_0();
  }

  return 0;
}

void sub_1DD52ADDC(void *a1)
{
  if (qword_1EE162D98 != -1)
  {
    swift_once();
  }

  v2 = sub_1DD63F9F8();
  __swift_project_value_buffer(v2, qword_1EE16EFB8);
  v3 = a1;
  v4 = sub_1DD63F9D8();
  v5 = sub_1DD640368();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    *(v6 + 4) = v3;
    *v7 = v3;
    v8 = v3;
    _os_log_impl(&dword_1DD38D000, v4, v5, "ModelBasedAppResolverRule#features array: %@", v6, 0xCu);
    sub_1DD390754(v7, &qword_1ECCDBF90, &qword_1DD6445B0);
    MEMORY[0x1E12B3DA0](v7, -1, -1);
    MEMORY[0x1E12B3DA0](v6, -1, -1);
  }

  v9 = sub_1DD63F9D8();
  v10 = sub_1DD640368();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v23 = v12;
    *v11 = 136315138;
    sub_1DD63F148();
    v13 = sub_1DD63FC68();
    v15 = sub_1DD39565C(v13, v14, &v23);

    *(v11 + 4) = v15;
    _os_log_impl(&dword_1DD38D000, v9, v10, "ModelBasedAppResolverRule#history bundle contact stats: %s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v12);
    MEMORY[0x1E12B3DA0](v12, -1, -1);
    MEMORY[0x1E12B3DA0](v11, -1, -1);
  }

  oslog = sub_1DD63F9D8();
  v16 = sub_1DD640368();

  if (os_log_type_enabled(oslog, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v23 = v18;
    *v17 = 136315138;
    sub_1DD63F148();
    v19 = sub_1DD63FC68();
    v21 = sub_1DD39565C(v19, v20, &v23);

    *(v17 + 4) = v21;
    _os_log_impl(&dword_1DD38D000, oslog, v16, "ModelBasedAppResolverRule#history bundle stats: %s", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v18);
    MEMORY[0x1E12B3DA0](v18, -1, -1);
    MEMORY[0x1E12B3DA0](v17, -1, -1);
  }
}

id sub_1DD52B124(double a1)
{
  if (a1 == 0.0)
  {
    v1 = objc_allocWithZone(MEMORY[0x1E696AD98]);
    v2 = 0.0001;
LABEL_3:

    return [v1 initWithDouble_];
  }

  if (a1 >= 0.0 && a1 <= 2592000.0)
  {
    v5 = log(fabs(a1));
    v1 = objc_allocWithZone(MEMORY[0x1E696AD98]);
    v2 = v5;
    goto LABEL_3;
  }

  if (qword_1ECCDB0A0 != -1)
  {
    swift_once();
  }

  v4 = qword_1ECD0DDA0;

  return v4;
}

void sub_1DD52B204()
{
  OUTLINED_FUNCTION_18_4();
  v1 = v0;
  v3 = v2;
  v4 = sub_1DD63F148();
  v5 = OUTLINED_FUNCTION_0(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_1_4();
  v87 = v10 - v11;
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x1EEE9AC00](v12);
  v14 = v84 - v13;
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_16_3();
  v89 = v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDE580, &qword_1DD657E38);
  v18 = OUTLINED_FUNCTION_3(v17);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_1_4();
  v100 = (v21 - v22);
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_16_3();
  v99 = v24;
  v88 = sub_1DD63FC88();
  v26 = v3 + 64;
  v25 = *(v3 + 64);
  v27 = *(v3 + 32);
  OUTLINED_FUNCTION_43_14();
  v30 = v29 & v28;
  v32 = (v31 + 63) >> 6;
  v90 = v7;
  v91 = (v7 + 16);
  v101 = (v7 + 32);
  if (v1)
  {
    v33 = 1702195828;
  }

  else
  {
    v33 = 0x65736C6166;
  }

  v34 = 0xE500000000000000;
  if (v1)
  {
    v34 = 0xE400000000000000;
  }

  v96 = v34;
  v97 = v33;
  v94 = (v7 + 8);
  v84[1] = v7 + 40;
  v92 = v3;

  v35 = 0;
  v93 = v3 + 64;
  v98 = v14;
  v95 = v32;
  while (v30)
  {
    v36 = v35;
LABEL_13:
    v37 = __clz(__rbit64(v30));
    v30 &= v30 - 1;
    v38 = v37 | (v36 << 6);
    v39 = (*(v92 + 48) + 16 * v38);
    v41 = *v39;
    v40 = v39[1];
    v43 = v89;
    v42 = v90;
    (*(v90 + 16))(v89, *(v92 + 56) + *(v90 + 72) * v38, v4);
    v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDE588, &qword_1DD657E40);
    v45 = *(v44 + 48);
    v46 = v100;
    *v100 = v41;
    *(v46 + 1) = v40;
    (*(v42 + 32))(&v46[v45], v43, v4);
    OUTLINED_FUNCTION_10_15();
    __swift_storeEnumTagSinglePayload(v47, v48, v49, v44);

LABEL_14:
    v50 = v99;
    sub_1DD52DB00();
    v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDE588, &qword_1DD657E40);
    OUTLINED_FUNCTION_1_87(v50);
    if (v52)
    {

      OUTLINED_FUNCTION_17();
      return;
    }

    v53 = *v50;
    v54 = *(v50 + 1);
    v55 = v98;
    v56 = *v101;
    (*v101)(v98, &v50[*(v51 + 48)], v4);
    v57 = sub_1DD52C574();
    v59 = v58;
    v104 = v53;
    v105 = v54;
    v102 = v97;
    v103 = v96;
    sub_1DD3B7F10();
    LOBYTE(v53) = sub_1DD6406D8();

    if (v53)
    {
      v64 = v56;
      v65 = *v91;
      v85 = v4;
      v65(v87, v55, v4);
      v66 = v88;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v104 = v66;
      sub_1DD3978DC();
      OUTLINED_FUNCTION_7_5();
      v32 = v95;
      if (__OFADD__(v69, v70))
      {
        goto LABEL_28;
      }

      v71 = v67;
      v72 = v57;
      v73 = v68;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDE590, &qword_1DD657E48);
      if (sub_1DD640A08())
      {
        v74 = sub_1DD3978DC();
        if ((v73 & 1) != (v75 & 1))
        {
          goto LABEL_30;
        }

        v71 = v74;
      }

      if (v73)
      {

        v88 = v104;
        v76 = v90;
        v4 = v85;
        (*(v90 + 40))(v104[7] + *(v90 + 72) * v71, v87, v85);
        (*(v76 + 8))(v98, v4);
        v26 = v93;
      }

      else
      {
        v77 = v71;
        v78 = v104;
        v104[(v77 >> 6) + 8] |= 1 << v77;
        v79 = (v78[6] + 16 * v77);
        *v79 = v72;
        v79[1] = v59;
        v80 = v90;
        v4 = v85;
        v64(v78[7] + *(v90 + 72) * v77, v87, v85);
        (*(v80 + 8))(v98, v4);
        v81 = v78[2];
        v82 = __OFADD__(v81, 1);
        v83 = v81 + 1;
        if (v82)
        {
          goto LABEL_29;
        }

        v88 = v78;
        v78[2] = v83;
        v26 = v93;
      }
    }

    else
    {
      (*v94)(v55, v4);

      v26 = v93;
      v32 = v95;
    }
  }

  while (1)
  {
    v36 = v35 + 1;
    if (__OFADD__(v35, 1))
    {
      break;
    }

    if (v36 >= v32)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDE588, &qword_1DD657E40);
      OUTLINED_FUNCTION_65_0();
      __swift_storeEnumTagSinglePayload(v60, v61, v62, v63);
      v30 = 0;
      goto LABEL_14;
    }

    v30 = *(v26 + 8 * v36);
    ++v35;
    if (v30)
    {
      v35 = v36;
      goto LABEL_13;
    }
  }

  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  sub_1DD640D58();
  __break(1u);
}

void sub_1DD52B7F8()
{
  OUTLINED_FUNCTION_18_4();
  v1 = v0;
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDCB80, &qword_1DD64A0E0);
  v5 = OUTLINED_FUNCTION_3(v4);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_1_4();
  v10 = v8 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v35 - v12;
  v14 = sub_1DD63F148();
  v15 = OUTLINED_FUNCTION_0(v14);
  v17 = v16;
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_1();
  v40 = v20;
  v21 = *(v3 + 16);
  v36 = v3;
  if (v21)
  {
    v37 = v17 + 16;
    v39 = (v17 + 32);
    v22 = (v3 + 40);
    v23 = MEMORY[0x1E69E7CC0];
    v38 = v10;
    do
    {
      if (*(v1 + 16))
      {
        v24 = v13;
        v25 = *(v22 - 1);
        v26 = *v22;

        v27 = sub_1DD3978DC();
        v29 = v28;

        if (v29)
        {
          v13 = v24;
          (*(v17 + 16))(v24, *(v1 + 56) + *(v17 + 72) * v27, v14);
          v30 = 0;
        }

        else
        {
          v30 = 1;
          v13 = v24;
        }

        v10 = v38;
      }

      else
      {
        v30 = 1;
      }

      __swift_storeEnumTagSinglePayload(v13, v30, 1, v14);
      sub_1DD52DB00();
      if (__swift_getEnumTagSinglePayload(v10, 1, v14) == 1)
      {
        sub_1DD63F138();
        sub_1DD390754(v10, &qword_1ECCDCB80, &qword_1DD64A0E0);
      }

      else
      {
        (*v39)(v40, v10, v14);
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v32 = *(v23 + 16);
        sub_1DD3BE850();
        v23 = v33;
      }

      v31 = *(v23 + 16);
      if (v31 >= *(v23 + 24) >> 1)
      {
        sub_1DD3BE850();
        v23 = v34;
      }

      *(v23 + 16) = v31 + 1;
      (*(v17 + 32))(v23 + ((*(v17 + 80) + 32) & ~*(v17 + 80)) + *(v17 + 72) * v31, v40, v14);
      v22 += 2;
      --v21;
    }

    while (v21);
  }

  else
  {
    v23 = MEMORY[0x1E69E7CC0];
  }

  sub_1DD52C5F8(v36, v23);
  OUTLINED_FUNCTION_57_11();

  OUTLINED_FUNCTION_17();
}

void sub_1DD52BB0C()
{
  OUTLINED_FUNCTION_18_4();
  v1 = v0;
  v2 = sub_1DD63F148();
  v3 = OUTLINED_FUNCTION_0(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_1_4();
  v101 = v8 - v9;
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_18_0();
  v95 = v12;
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_18_0();
  v107 = v14;
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_16_3();
  v96 = v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDE580, &qword_1DD657E38);
  v18 = OUTLINED_FUNCTION_3(v17);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_1_4();
  v23 = (v21 - v22);
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_16_3();
  v99 = v25;
  v26 = sub_1DD63FC88();
  v27 = *(v1 + 64);
  v100 = v1 + 64;
  v28 = *(v1 + 32);
  OUTLINED_FUNCTION_43_14();
  v31 = v30 & v29;
  v106 = (v5 + 32);
  v93 = (v32 + 63) >> 6;
  v94 = (v5 + 40);
  v104 = v5;
  v97 = v1;
  v98 = (v5 + 8);

  v33 = 0;
  v103 = v23;
  v105 = (v5 + 16);
  while (v31)
  {
    v34 = v33;
LABEL_8:
    v35 = __clz(__rbit64(v31));
    v31 &= v31 - 1;
    v36 = v35 | (v34 << 6);
    v37 = (*(v97 + 48) + 16 * v36);
    v39 = *v37;
    v38 = v37[1];
    (*(v104 + 16))(v96, *(v97 + 56) + *(v104 + 72) * v36, v2);
    v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDE588, &qword_1DD657E40);
    v41 = *(v40 + 48);
    *v103 = v39;
    *(v103 + 1) = v38;
    v42 = v2;
    (*(v104 + 32))(&v103[v41], v96, v2);
    OUTLINED_FUNCTION_10_15();
    __swift_storeEnumTagSinglePayload(v43, v44, v45, v40);

LABEL_9:
    sub_1DD52DB00();
    v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDE588, &qword_1DD657E40);
    OUTLINED_FUNCTION_1_87(v99);
    if (v47)
    {

      OUTLINED_FUNCTION_17();
      return;
    }

    v48 = *v99;
    v49 = v99[1];
    v50 = *(v46 + 48);
    v51 = *v106;
    (*v106)(v107, v99 + v50, v42);
    sub_1DD52C574();

    v102 = v51;
    if (*(v26 + 16))
    {
      v52 = OUTLINED_FUNCTION_52_8();
      v53 = *v105;
      if ((v54 & 1) == 0)
      {
        goto LABEL_17;
      }

      v55 = *(v104 + 72);
      v53(v95, *(v26 + 56) + v55 * v52, v42);
      sub_1DD52C16C();
      swift_isUniquelyReferenced_nonNull_native();
      OUTLINED_FUNCTION_52_8();
      OUTLINED_FUNCTION_7_5();
      if (__OFADD__(v58, v59))
      {
        goto LABEL_35;
      }

      v60 = v56;
      v2 = v57;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDE590, &qword_1DD657E48);
      if (OUTLINED_FUNCTION_63_2())
      {
        v61 = OUTLINED_FUNCTION_52_8();
        if ((v2 & 1) != (v62 & 1))
        {
          goto LABEL_37;
        }

        v60 = v61;
      }

      if (v2)
      {
        v87 = *(v26 + 56) + v60 * v55;
        v88 = *v94;
        OUTLINED_FUNCTION_54_9();
        v89();
      }

      else
      {
        OUTLINED_FUNCTION_22_26();
        OUTLINED_FUNCTION_54_9();
        v102();
        v90 = *(v26 + 16);
        v81 = __OFADD__(v90, 1);
        v91 = v90 + 1;
        if (v81)
        {
          goto LABEL_36;
        }

        *(v26 + 16) = v91;
      }

      v92 = *v98;
      (*v98)(v95, v2);
      v92(v107, v2);
    }

    else
    {
      v53 = *v105;
LABEL_17:
      v53(v101, v107, v42);
      swift_isUniquelyReferenced_nonNull_native();
      OUTLINED_FUNCTION_52_8();
      OUTLINED_FUNCTION_7_5();
      if (__OFADD__(v65, v66))
      {
        goto LABEL_33;
      }

      v67 = v63;
      v2 = v64;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDE590, &qword_1DD657E48);
      if (OUTLINED_FUNCTION_63_2())
      {
        v68 = OUTLINED_FUNCTION_52_8();
        if ((v2 & 1) != (v69 & 1))
        {
          goto LABEL_37;
        }

        v67 = v68;
      }

      if (v2)
      {

        v70 = *(v26 + 56) + *(v104 + 72) * v67;
        v71 = *(v104 + 40);
        OUTLINED_FUNCTION_54_9();
        v72();
        v73 = OUTLINED_FUNCTION_53_8();
        v74(v73);
      }

      else
      {
        OUTLINED_FUNCTION_22_26();
        v76 = v75 + *(v104 + 72) * v67;
        OUTLINED_FUNCTION_54_9();
        v77();
        v78 = OUTLINED_FUNCTION_53_8();
        v79(v78);
        v80 = *(v26 + 16);
        v81 = __OFADD__(v80, 1);
        v82 = v80 + 1;
        if (v81)
        {
          goto LABEL_34;
        }

        *(v26 + 16) = v82;
      }
    }
  }

  while (1)
  {
    v34 = v33 + 1;
    if (__OFADD__(v33, 1))
    {
      break;
    }

    if (v34 >= v93)
    {
      v42 = v2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDE588, &qword_1DD657E40);
      OUTLINED_FUNCTION_65_0();
      __swift_storeEnumTagSinglePayload(v83, v84, v85, v86);
      v31 = 0;
      goto LABEL_9;
    }

    v31 = *(v100 + 8 * v34);
    ++v33;
    if (v31)
    {
      v33 = v34;
      goto LABEL_8;
    }
  }

  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  sub_1DD640D58();
  __break(1u);
}

void sub_1DD52C16C()
{
  OUTLINED_FUNCTION_18_4();
  v32[1] = v0;
  v1 = sub_1DD63D078();
  v2 = OUTLINED_FUNCTION_0(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_1_4();
  v9 = v7 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = v32 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = v32 - v14;
  v16 = sub_1DD63F198();
  v17 = sub_1DD52C408(0, v16);
  v18 = sub_1DD63F0E8();
  v19 = *(v18 + 16);
  if (v19)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      goto LABEL_17;
    }

    while (1)
    {
      v20 = 0;
      v21 = *(v17 + 16);
      while (v20 < v21)
      {
        *(v17 + 2 * v20 + 32) = *(v18 + 32 + 2 * v20);
        if (v19 == ++v20)
        {
          goto LABEL_6;
        }
      }

      __break(1u);
LABEL_15:
      __break(1u);
LABEL_16:
      __break(1u);
LABEL_17:
      sub_1DD5869A0(v17);
      v17 = v30;
    }
  }

LABEL_6:

  v18 = sub_1DD63F0E8();
  v19 = *(v18 + 16);
  v32[0] = v15;
  if (v19)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1DD5869A0(v17);
      v17 = v31;
    }

    v22 = 0;
    v23 = v18 + 32;
    v24 = *(v17 + 16);
    while (v22 < v24)
    {
      v25 = v17 + 2 * v22;
      v26 = *(v25 + 32) + *(v23 + 2 * v22);
      if ((*(v25 + 32) + *(v23 + 2 * v22)) != v26)
      {
        goto LABEL_16;
      }

      ++v22;
      *(v25 + 32) = v26;
      if (v19 == v22)
      {
        goto LABEL_13;
      }
    }

    goto LABEL_15;
  }

LABEL_13:
  v27 = v4;

  sub_1DD63F108();
  sub_1DD63F108();
  sub_1DD63CFB8();
  v28 = *(v4 + 8);
  v28(v9, v1);
  v28(v12, v1);
  v29 = v32[0];
  sub_1DD63F108();
  (*(v27 + 16))(v12, v29, v1);
  sub_1DD63F118();
  v28(v29, v1);
  OUTLINED_FUNCTION_17();
}

uint64_t sub_1DD52C408(uint64_t result, uint64_t a2)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else if (a2)
  {
    v3 = result;
    result = sub_1DD640158();
    v4 = 0;
    v5 = vdupq_n_s64(a2 - 1);
    v6 = (result + 46);
    *(result + 16) = a2;
    do
    {
      v7 = vdupq_n_s64(v4);
      v8 = vmovn_s64(vcgeq_u64(v5, vorrq_s8(v7, xmmword_1DD642F70)));
      if (vuzp1_s8(vuzp1_s16(v8, *v5.i8), *v5.i8).u8[0])
      {
        *(v6 - 7) = v3;
      }

      if (vuzp1_s8(vuzp1_s16(v8, *&v5), *&v5).i8[1])
      {
        *(v6 - 6) = v3;
      }

      if (vuzp1_s8(vuzp1_s16(*&v5, vmovn_s64(vcgeq_u64(v5, vorrq_s8(v7, xmmword_1DD657DB0)))), *&v5).i8[2])
      {
        *(v6 - 5) = v3;
        *(v6 - 4) = v3;
      }

      v9 = vmovn_s64(vcgeq_u64(v5, vorrq_s8(v7, xmmword_1DD657DA0)));
      if (vuzp1_s8(*&v5, vuzp1_s16(v9, *&v5)).i32[1])
      {
        *(v6 - 3) = v3;
      }

      if (vuzp1_s8(*&v5, vuzp1_s16(v9, *&v5)).i8[5])
      {
        *(v6 - 2) = v3;
      }

      if (vuzp1_s8(*&v5, vuzp1_s16(*&v5, vmovn_s64(vcgeq_u64(v5, vorrq_s8(v7, xmmword_1DD657D90))))).i8[6])
      {
        *(v6 - 1) = v3;
        *v6 = v3;
      }

      v4 += 8;
      v6 += 8;
    }

    while (((a2 + 7) & 0xFFFFFFFFFFFFFFF8) != v4);
  }

  else
  {
    return MEMORY[0x1E69E7CC0];
  }

  return result;
}

uint64_t sub_1DD52C574()
{
  OUTLINED_FUNCTION_18_7();
  sub_1DD52809C(124, 0xE100000000000000, v1, v0);
  if (v2)
  {
  }

  else
  {
    v3 = sub_1DD640058();
    v1 = MEMORY[0x1E12B2190](v3);
  }

  return v1;
}

uint64_t sub_1DD52C5F8(uint64_t a1, uint64_t isUniquelyReferenced_nonNull_native)
{
  sub_1DD39638C(0, &qword_1EE163880, 0x1E696AD98);
  v4 = sub_1DD63FC88();
  sub_1DD63F348();
  v5 = sub_1DD63F0F8();
  v6 = v5;
  v37 = *(v5 + 16);
  if (v37)
  {
    v7 = 0;
    v35 = v5 + 32;
    v36 = *(a1 + 16);
    v8 = (a1 + 40);
    v34 = v5;
    while (v7 < *(v6 + 16))
    {
      if (v36 == v7)
      {
        goto LABEL_20;
      }

      v9 = *(v35 + 8 * v7);
      v11 = *(v8 - 1);
      v10 = *v8;
      v12 = objc_allocWithZone(MEMORY[0x1E696AD98]);
      OUTLINED_FUNCTION_57_11();

      v13 = [isUniquelyReferenced_nonNull_native initWithDouble_];
      if (v13)
      {
        v14 = v13;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        sub_1DD3978DC();
        OUTLINED_FUNCTION_7_5();
        if (__OFADD__(v17, v18))
        {
          goto LABEL_21;
        }

        v19 = v15;
        v20 = v16;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDE578, &qword_1DD657E30);
        if (OUTLINED_FUNCTION_62_6())
        {
          v21 = sub_1DD3978DC();
          if ((v20 & 1) != (v22 & 1))
          {
            goto LABEL_23;
          }

          v19 = v21;
        }

        if (v20)
        {

          v23 = v4[7];
          v24 = *(v23 + 8 * v19);
          *(v23 + 8 * v19) = v14;
        }

        else
        {
          v4[(v19 >> 6) + 8] |= 1 << v19;
          v29 = (v4[6] + 16 * v19);
          *v29 = v11;
          v29[1] = v10;
          *(v4[7] + 8 * v19) = v14;
          v30 = v4[2];
          v31 = __OFADD__(v30, 1);
          v32 = v30 + 1;
          if (v31)
          {
            goto LABEL_22;
          }

          v4[2] = v32;
        }

        v6 = v34;
      }

      else
      {
        v25 = sub_1DD3978DC();
        isUniquelyReferenced_nonNull_native = v26;

        if (isUniquelyReferenced_nonNull_native)
        {
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v27 = v4[3];
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDE578, &qword_1DD657E30);
          OUTLINED_FUNCTION_62_6();
          v28 = *(v4[6] + 16 * v25 + 8);

          sub_1DD640A28();
        }
      }

      ++v7;
      v8 += 2;
      if (v37 == v7)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    result = sub_1DD640D58();
    __break(1u);
  }

  else
  {
LABEL_18:

    return v4;
  }

  return result;
}

void sub_1DD52C8C0()
{
  OUTLINED_FUNCTION_18_4();
  v50 = v2;
  v51 = v1;
  v3 = sub_1DD63FC18();
  v4 = OUTLINED_FUNCTION_0(v3);
  v46 = v5;
  v47 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_1_4();
  v10 = v8 - v9;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_16_3();
  v44 = v12;
  v13 = type metadata accessor for Signpost();
  v14 = OUTLINED_FUNCTION_7(v13);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v43 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = v0;
  v19 = v0 + OBJC_IVAR____TtC13SiriInference25ModelBasedAppResolverRule_signalGatheringSignpostName;
  v20 = *(v0 + OBJC_IVAR____TtC13SiriInference25ModelBasedAppResolverRule_signalGatheringSignpostName);
  v21 = *(v19 + 8);
  v22 = *(v19 + 16);
  if (qword_1EE166460 != -1)
  {
    OUTLINED_FUNCTION_4_2();
  }

  v23 = qword_1EE16F0C0;
  v24 = &v18[*(v13 + 20)];
  *v24 = v20;
  *(v24 + 1) = v21;
  v24[16] = v22;
  v25 = v23;
  sub_1DD63F9B8();
  *&v18[*(v13 + 24)] = v25;
  v25;
  sub_1DD6404D8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDFCE0, &unk_1DD645500);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_1DD643F90;
  v27 = v21;
  v28 = sub_1DD6408F8();
  v30 = v29;
  *(v26 + 56) = MEMORY[0x1E69E6158];
  *(v26 + 64) = sub_1DD392BD8();
  *(v26 + 32) = v28;
  *(v26 + 40) = v30;
  OUTLINED_FUNCTION_3_61();
  v49 = v20;
  v43 = v27;
  v48 = v22;
  sub_1DD63F998();

  v31 = dispatch_semaphore_create(0);
  v32 = swift_allocObject();
  sub_1DD63D4F8();
  *(v32 + 16) = sub_1DD63FC88();

  v33 = v31;
  sub_1DD52D558(v51, v45, v32, v33);
  sub_1DD63FBE8();
  v34 = v44;
  sub_1DD63FC38();
  v35 = *(v46 + 8);
  v36 = v10;
  v37 = v47;
  v35(v36, v47);
  sub_1DD6404E8();
  v35(v34, v37);
  if (sub_1DD63FB68())
  {
    if (qword_1EE162D98 != -1)
    {
      OUTLINED_FUNCTION_0_4();
    }

    v38 = sub_1DD63F9F8();
    __swift_project_value_buffer(v38, qword_1EE16EFB8);
    v39 = sub_1DD63F9D8();
    v40 = sub_1DD640368();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = OUTLINED_FUNCTION_9();
      *v41 = 0;
      _os_log_impl(&dword_1DD38D000, v39, v40, "ModelBasedAppResolverRule#gatherSignals timeout on gathering signal values", v41, 2u);
      MEMORY[0x1E12B3DA0](v41, -1, -1);
    }
  }

  sub_1DD6404C8();
  sub_1DD63F9A8();
  swift_beginAccess();
  v42 = *(v32 + 16);

  sub_1DD63D878();

  sub_1DD41BFFC(v18);

  OUTLINED_FUNCTION_17();
}

uint64_t sub_1DD52CCE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v49 = a2;
  v50 = a3;
  v51 = a1;
  v3 = sub_1DD63FB78();
  v47 = *(v3 - 8);
  v48 = v3;
  v4 = *(v47 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v45 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_1DD63FBD8();
  v44 = *(v46 - 8);
  v6 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v46);
  v43 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1DD63FB88();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1DD63D558();
  v52 = *(v13 - 8);
  v53 = v13;
  v14 = *(v52 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v43 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDDF28, &qword_1DD655820);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v43 - v21;
  sub_1DD52DAA4();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    if (qword_1EE162D98 != -1)
    {
      swift_once();
    }

    v23 = sub_1DD63F9F8();
    __swift_project_value_buffer(v23, qword_1EE16EFB8);
    v24 = sub_1DD63F9D8();
    v25 = sub_1DD640368();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_1DD38D000, v24, v25, "ModelBasedAppResolverRule#gatherSignals gathering failed", v26, 2u);
      MEMORY[0x1E12B3DA0](v26, -1, -1);
    }

    return sub_1DD390754(v22, &qword_1ECCDDF28, &qword_1DD655820);
  }

  else
  {
    v28 = *(v52 + 32);
    v29 = v22;
    v30 = v53;
    v28(v18, v29, v53);
    sub_1DD39638C(0, &qword_1EE166480, 0x1E69E9610);
    (*(v9 + 104))(v12, *MEMORY[0x1E69E7F80], v8);
    v51 = sub_1DD6404B8();
    (*(v9 + 8))(v12, v8);
    v31 = v52;
    (*(v52 + 16))(v15, v18, v30);
    v32 = v31;
    v33 = (*(v31 + 80) + 16) & ~*(v31 + 80);
    v34 = swift_allocObject();
    v28((v34 + v33), v15, v30);
    aBlock[4] = sub_1DD52D9CC;
    aBlock[5] = v34;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1DD3CBCD0;
    aBlock[3] = &block_descriptor_11;
    v35 = _Block_copy(aBlock);
    v36 = v43;
    sub_1DD63FBA8();
    v54 = MEMORY[0x1E69E7CC0];
    sub_1DD52DA40();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBFE8, &qword_1DD64F0F0);
    sub_1DD44FA38();
    v37 = v45;
    v38 = v48;
    sub_1DD640718();
    v39 = v51;
    MEMORY[0x1E12B27A0](0, v36, v37, v35);
    _Block_release(v35);

    (*(v47 + 8))(v37, v38);
    (*(v44 + 8))(v36, v46);

    v40 = sub_1DD63D548();
    v41 = v49;
    swift_beginAccess();
    v42 = *(v41 + 16);
    *(v41 + 16) = v40;

    sub_1DD640508();
    return (*(v32 + 8))(v18, v53);
  }
}

void sub_1DD52D2F4(uint64_t a1)
{
  v2 = sub_1DD63D558();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EE162D98 != -1)
  {
    swift_once();
  }

  v7 = sub_1DD63F9F8();
  __swift_project_value_buffer(v7, qword_1EE16EFB8);
  (*(v3 + 16))(v6, a1, v2);
  v8 = sub_1DD63F9D8();
  v9 = sub_1DD640368();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v17 = v11;
    *v10 = 136315138;
    sub_1DD63D548();
    sub_1DD63D4F8();
    v12 = sub_1DD63FC98();
    v14 = v13;

    (*(v3 + 8))(v6, v2);
    v15 = sub_1DD39565C(v12, v14, &v17);

    *(v10 + 4) = v15;
    _os_log_impl(&dword_1DD38D000, v8, v9, "ModelBasedAppResolverRule#gatherSignals gathered values: %s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v11);
    MEMORY[0x1E12B3DA0](v11, -1, -1);
    MEMORY[0x1E12B3DA0](v10, -1, -1);
  }

  else
  {

    (*(v3 + 8))(v6, v2);
  }
}

uint64_t sub_1DD52D558(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = sub_1DD63D988();
  v9 = sub_1DD63D9A8();
  v14 = v8;
  sub_1DD607140(v9);
  v10 = *(a2 + 24);
  (*(a2 + 16))(v14, a1);

  v11 = swift_allocObject();
  *(v11 + 16) = a3;
  *(v11 + 24) = a4;

  v12 = a4;
  sub_1DD63D568();
}

uint64_t sub_1DD52D648()
{
  v0 = sub_1DD63D588();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();

  return sub_1DD63D578();
}

uint64_t sub_1DD52D6C8()
{
  v1 = *(v0 + 24);

  sub_1DD390754(v0 + OBJC_IVAR____TtC13SiriInference25ModelBasedAppResolverRule_appMatcher, &qword_1ECCDBBC8, &qword_1DD643FC0);
  v2 = *(v0 + OBJC_IVAR____TtC13SiriInference25ModelBasedAppResolverRule_phoneAppSelectionModelCache);

  v3 = *(v0 + OBJC_IVAR____TtC13SiriInference25ModelBasedAppResolverRule_messageAppSelectionModelCache);

  v4 = *(v0 + OBJC_IVAR____TtC13SiriInference25ModelBasedAppResolverRule_defaultAppProvider);

  return v0;
}

uint64_t sub_1DD52D738()
{
  sub_1DD52D6C8();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ModelBasedAppResolverRule()
{
  result = qword_1ECCDE560;
  if (!qword_1ECCDE560)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1DD52D7E4()
{
  sub_1DD52D8A0();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_1DD52D8A0()
{
  if (!qword_1ECCDE570)
  {
    sub_1DD63EFC8();
    v0 = sub_1DD6405F8();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECCDE570);
    }
  }
}

uint64_t sub_1DD52D8F8(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1DD3B5438;

  return sub_1DD5285A0(a1, a2);
}

void sub_1DD52D9CC()
{
  v1 = sub_1DD63D558();
  OUTLINED_FUNCTION_3(v1);
  v3 = v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  sub_1DD52D2F4(v3);
}

uint64_t block_copy_helper_11(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_1DD52DA40()
{
  result = qword_1EE163978;
  if (!qword_1EE163978)
  {
    sub_1DD63FB78();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE163978);
  }

  return result;
}

void sub_1DD52DA98()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  sub_1DD52ADDC(*(v0 + 16));
}

uint64_t sub_1DD52DAA4()
{
  OUTLINED_FUNCTION_18_7();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_7(v4);
  (*(v5 + 16))(v0, v1);
  return v0;
}

uint64_t sub_1DD52DB00()
{
  OUTLINED_FUNCTION_18_7();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_7(v4);
  (*(v5 + 32))(v0, v1);
  return v0;
}

uint64_t OUTLINED_FUNCTION_12_32()
{

  return swift_allocObject();
}

__n128 OUTLINED_FUNCTION_13_38(__n128 *a1)
{
  result = *(v1 - 208);
  a1[1] = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_14_35()
{

  return sub_1DD6400F8();
}

void OUTLINED_FUNCTION_22_26()
{
  *(v1 + 8 * (v0 >> 6) + 64) |= 1 << v0;
  v4 = (*(v1 + 48) + 16 * v0);
  *v4 = v2;
  v4[1] = v3;
  v5 = *(v1 + 56);
}

uint64_t OUTLINED_FUNCTION_26_23@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v3 = a2 + *(v2 + 72) * result;
  v4 = *(v2 + 16);
  return result;
}

uint64_t OUTLINED_FUNCTION_29_19(uint64_t result)
{
  *(v1 + 40) = result;
  v3 = *(v2 - 216);
  return result;
}

uint64_t OUTLINED_FUNCTION_38_13()
{

  return sub_1DD6400F8();
}

uint64_t OUTLINED_FUNCTION_40_10(uint64_t a1)
{
  *(v1 + 40) = a1;

  return sub_1DD640598();
}

uint64_t OUTLINED_FUNCTION_41_12()
{

  return sub_1DD640598();
}

uint64_t OUTLINED_FUNCTION_47_9()
{

  return sub_1DD6400F8();
}

uint64_t OUTLINED_FUNCTION_51_8(uint64_t a1)
{
  *(v1 + 32) = a1;

  return sub_1DD6402C8();
}

unint64_t OUTLINED_FUNCTION_52_8()
{

  return sub_1DD3978DC();
}

uint64_t OUTLINED_FUNCTION_53_8()
{
  v2 = *(v0 + 8);
  result = *(v1 - 104);
  v4 = *(v1 - 192);
  return result;
}

uint64_t OUTLINED_FUNCTION_62_6()
{

  return sub_1DD640A08();
}

uint64_t OUTLINED_FUNCTION_63_2()
{

  return sub_1DD640A08();
}

uint64_t OUTLINED_FUNCTION_64_4()
{
}

uint64_t OUTLINED_FUNCTION_66_4(uint64_t a1)
{
  *(v1 + 32) = a1;

  return sub_1DD6402C8();
}

uint64_t OUTLINED_FUNCTION_67_3()
{
}

uint64_t sub_1DD52DE0C()
{
  if (*(v0 + 32))
  {
    v1 = *(v0 + 24);
    v2 = *(v0 + 32);
  }

  else
  {
    v2 = 0xE700000000000000;
    v1 = 0x4E574F4E4B4E55;
  }

  MEMORY[0x1E12B2260](v1, v2);

  return 0x2D6C65646F6DLL;
}

void *sub_1DD52DE94(char *a1)
{
  v49 = a1;
  v1 = sub_1DD63CE68();
  v2 = OUTLINED_FUNCTION_0(v1);
  v55 = v3;
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v46 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v45 - v8;
  v10 = type metadata accessor for Signpost();
  v11 = OUTLINED_FUNCTION_7(v10);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_2();
  v16 = v15 - v14;
  v47 = [objc_allocWithZone(MEMORY[0x1E695FEB0]) init];
  [v47 setComputeUnits_];
  if (qword_1EE166460 != -1)
  {
    OUTLINED_FUNCTION_2_2();
    swift_once();
  }

  v17 = qword_1EE16F0C0;
  v18 = v16 + *(v10 + 20);
  *v18 = "PER.Model.load";
  *(v18 + 8) = 14;
  *(v18 + 16) = 2;
  v19 = v17;
  sub_1DD63F9B8();
  *(v16 + *(v10 + 24)) = v19;
  v20 = v19;
  sub_1DD6404D8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDFCE0, &unk_1DD645500);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_1DD643F90;
  v22 = sub_1DD6408F8();
  v24 = v23;
  *(v21 + 56) = MEMORY[0x1E69E6158];
  *(v21 + 64) = sub_1DD392BD8();
  *(v21 + 32) = v22;
  *(v21 + 40) = v24;
  v45 = v20;
  sub_1DD63F998();

  v25 = *(v55 + 16);
  v26 = v49;
  v25(v9, v49, v1);
  sub_1DD39638C(0, &qword_1EE163888, 0x1E695FE90);
  v27 = v46;
  v25(v46, v9, v1);
  v28 = v47;
  v29 = v48;
  v30 = sub_1DD551650(v27, v28);
  if (v29)
  {
    v31 = *(v55 + 8);
    v31(v9, v1);

    v31(v26, v1);
    OUTLINED_FUNCTION_0_106();
    sub_1DD530774(v16, v32);
    type metadata accessor for ModelBasedLearning();
    v33 = v50;
    swift_deallocPartialClassInstance();
  }

  else
  {
    v34 = v30;
    v55 = *(v55 + 8);
    (v55)(v9, v1);
    type metadata accessor for PervasiveEntityResolution();
    v35 = swift_allocObject();
    *(v35 + 16) = v34;
    v33 = v50;
    v50[2] = v35;
    sub_1DD6404C8();
    sub_1DD63F9A8();
    v36 = [*(v33[2] + 16) modelDescription];
    v37 = [v36 metadata];

    type metadata accessor for MLModelMetadataKey(0);
    sub_1DD5307CC(&qword_1EE1638A0, 255, type metadata accessor for MLModelMetadataKey);
    v38 = sub_1DD63FC58();

    v39 = *MEMORY[0x1E695FDD0];
    sub_1DD59B8A0(v38, &v53);

    (v55)(v26, v1);
    OUTLINED_FUNCTION_0_106();
    sub_1DD530774(v16, v40);
    if (v54)
    {
      v41 = swift_dynamicCast();
      v42 = v51;
      v43 = v52;
      if (!v41)
      {
        v42 = 0;
        v43 = 0;
      }
    }

    else
    {
      sub_1DD390754(&v53, &qword_1ECCDB980, &unk_1DD643DC0);
      v42 = 0;
      v43 = 0;
    }

    v33[3] = v42;
    v33[4] = v43;
  }

  return v33;
}

uint64_t sub_1DD52E3A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDD880, &qword_1DD652070);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = (&v50 - v8);
  v10 = type metadata accessor for LearnedDisambiguation();
  v11 = OUTLINED_FUNCTION_0(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_2();
  v18 = v17 - v16;
  if (a1)
  {
    v19 = sub_1DD52E898(a1, v3);
    v25 = v19;
    if (!v19)
    {
      goto LABEL_18;
    }

    v26 = sub_1DD52E860(v19);
    if ((v26 & 0x100000000) == 0)
    {
      v27 = v26;

      v51 = a1;
      v29 = *(a1 + 16);
      do
      {
        v30 = v29;
        if (!v29)
        {
          break;
        }

        --v29;
      }

      while (*(a1 + ((*(v13 + 80) + 32) & ~*(v13 + 80)) + *(v13 + 72) * (v30 - 1) + *(v10 + 32)) != v27);
      MEMORY[0x1EEE9AC00](v28);
      *(&v50 - 2) = &v51;
      sub_1DD530624(sub_1DD530754, v31, v32, v9);
      if (__swift_getEnumTagSinglePayload(v9, 1, v10) != 1)
      {
        sub_1DD4F298C(v9, v18);
        sub_1DD4F298C(v18, a2);
        __swift_storeEnumTagSinglePayload(a2, 0, 1, v10);
        v47 = *(v3 + 24);
        v46 = *(v3 + 32);
        v48 = type metadata accessor for LearningResult();
        OUTLINED_FUNCTION_4_59(v48);
        *(a2 + v49) = 2;
      }

      sub_1DD390754(v9, &qword_1ECCDD880, &qword_1DD652070);
      if (qword_1ECCDB0E0 != -1)
      {
        OUTLINED_FUNCTION_0_7();
      }

      v33 = sub_1DD63F9F8();
      __swift_project_value_buffer(v33, qword_1ECD0DDF0);
      v34 = sub_1DD63F9D8();
      v35 = sub_1DD640378();
      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        *v36 = 0;
        _os_log_impl(&dword_1DD38D000, v34, v35, "The predicted selection was not found in history.", v36, 2u);
        MEMORY[0x1E12B3DA0](v36, -1, -1);
      }

      goto LABEL_18;
    }

    v41 = v25[2];

    if (v41 < 2)
    {
LABEL_18:
      OUTLINED_FUNCTION_5_63();
      v38 = *(v3 + 24);
      v37 = *(v3 + 32);
      v39 = type metadata accessor for LearningResult();
      OUTLINED_FUNCTION_4_59(v39);
      *(a2 + v40) = 0;
    }

    OUTLINED_FUNCTION_5_63();
    v43 = *(v3 + 24);
    v42 = *(v3 + 32);
    v44 = type metadata accessor for LearningResult();
    v45 = (a2 + *(v44 + 20));
    *v45 = v43;
    v45[1] = v42;
    *(a2 + *(v44 + 24)) = 1;
  }

  else
  {
    OUTLINED_FUNCTION_5_63();
    v21 = *(v3 + 24);
    v20 = *(v3 + 32);
    v22 = type metadata accessor for LearningResult();
    OUTLINED_FUNCTION_4_59(v22);
    *(a2 + v23) = 0;
  }
}

unint64_t sub_1DD52E860(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 == 1)
  {
    v2 = *(a1 + 32);
  }

  else
  {
    v2 = 0;
  }

  return v2 | ((v1 != 1) << 32);
}

id sub_1DD52E898(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Signpost();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v92 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v92 - v9;
  v11 = sub_1DD63D078();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = v92 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDD880, &qword_1DD652070);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v19 = v92 - v18;
  if (!a1 || !*(a1 + 16))
  {
    if (qword_1ECCDB0E0 != -1)
    {
      goto LABEL_53;
    }

    goto LABEL_9;
  }

  v101 = v4;
  sub_1DD558FFC(a1, v19);
  v20 = type metadata accessor for LearnedDisambiguation();
  if (__swift_getEnumTagSinglePayload(v19, 1, v20) == 1)
  {
    sub_1DD390754(v19, &qword_1ECCDD880, &qword_1DD652070);
    if (qword_1ECCDB0E0 != -1)
    {
      swift_once();
    }

    v21 = sub_1DD63F9F8();
    __swift_project_value_buffer(v21, qword_1ECD0DDF0);
    v22 = sub_1DD63F9D8();
    v23 = sub_1DD640368();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      v25 = "No first historical record.";
      goto LABEL_11;
    }

    goto LABEL_12;
  }

  v99 = a2;
  v29 = *&v19[*(v20 + 28)];

  sub_1DD530774(v19, type metadata accessor for LearnedDisambiguation);
  sub_1DD63D068();
  v30 = sub_1DD480258();
  (*(v12 + 8))(v15, v11);
  sub_1DD52FB98(v30, v107);
  if (v109)
  {

    return 0;
  }

  v100 = v29;
  v97 = v7;
  v110[0] = v107[0];
  v110[1] = v107[1];
  v111 = v108;
  if (qword_1EE166460 != -1)
  {
    swift_once();
  }

  v31 = qword_1EE16F0C0;
  v32 = v101;
  v33 = &v10[*(v101 + 20)];
  *v33 = "PER.Model.inputCreation";
  *(v33 + 1) = 23;
  v33[16] = 2;
  v34 = v31;
  sub_1DD63F9B8();
  *&v10[*(v32 + 24)] = v34;
  v35 = v34;
  sub_1DD6404D8();
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDFCE0, &unk_1DD645500);
  v36 = swift_allocObject();
  v95 = xmmword_1DD643F90;
  *(v36 + 16) = xmmword_1DD643F90;
  v37 = sub_1DD6408F8();
  v39 = v38;
  *(v36 + 56) = MEMORY[0x1E69E6158];
  v93 = sub_1DD392BD8();
  *(v36 + 64) = v93;
  *(v36 + 32) = v37;
  *(v36 + 40) = v39;
  v94 = v35;
  v98 = v10;
  sub_1DD63F998();

  v41 = sub_1DD4C23E4(v40, v30);
  v102 = v42;
  v44 = v43;

  v45 = sub_1DD4C2A64(v110, v41);
  v46 = *(v100 + 16);
  if (v46)
  {
    *&v104 = v45;
    v112 = MEMORY[0x1E69E7CC0];
    sub_1DD42BD48(0, v46, 0);
    v47 = v100;
    v48 = 0;
    v49 = v112;
    v50 = v100 + 32;
    v51 = v103;
    do
    {
      if (v48 >= *(v47 + 16))
      {
        goto LABEL_52;
      }

      v105 = *(v50 + 4 * v48);
      v52 = v41;
      v53 = v44;
      sub_1DD52F414(&v105, v41, v102, v44, v104, &v106);
      v54 = v106;
      v112 = v49;
      v56 = v49[2];
      v55 = v49[3];
      v57 = v49;
      if (v56 >= v55 >> 1)
      {
        v103 = v51;
        sub_1DD42BD48((v55 > 1), v56 + 1, 1);
        v47 = v100;
        v51 = v103;
        v57 = v112;
      }

      ++v48;
      v57[2] = v56 + 1;
      v57[v56 + 4] = v54;
      v49 = v57;
      v41 = v52;
      v44 = v53;
    }

    while (v46 != v48);
    v103 = v51;
  }

  else
  {

    v49 = MEMORY[0x1E69E7CC0];
  }

  if (!v49[2])
  {

    if (qword_1ECCDB0E0 != -1)
    {
      swift_once();
    }

    v64 = sub_1DD63F9F8();
    __swift_project_value_buffer(v64, qword_1ECD0DDF0);
    v65 = sub_1DD63F9D8();
    v66 = sub_1DD640378();
    v67 = os_log_type_enabled(v65, v66);
    v68 = v98;
    if (v67)
    {
      v69 = swift_slowAlloc();
      *v69 = 0;
      _os_log_impl(&dword_1DD38D000, v65, v66, "Cannot create input from empty data.", v69, 2u);
      MEMORY[0x1E12B3DA0](v69, -1, -1);
    }

    sub_1DD530774(v68, type metadata accessor for Signpost);
    return 0;
  }

  v58 = v49 + 4;
  v59 = sub_1DD3CC020(v49[4]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDB9A0, &qword_1DD64F780);
  v60 = v49;
  v27 = swift_allocObject();
  v104 = xmmword_1DD64D850;
  *(v27 + 16) = xmmword_1DD64D850;
  *(v27 + 32) = sub_1DD6402C8();
  v61 = *(v58 - 2);
  *(v27 + 40) = sub_1DD6402C8();
  v62 = objc_allocWithZone(MEMORY[0x1E695FED0]);
  v63 = v103;
  result = sub_1DD521130(v27, 65600);
  if (v63)
  {
    sub_1DD530774(v98, type metadata accessor for Signpost);

    return v27;
  }

  v92[1] = v60;
  if (v59 < 0)
  {
    __break(1u);
    return result;
  }

  v70 = result;
  v103 = 0;
  if (!v59)
  {
LABEL_47:

    type metadata accessor for PervasiveEntityResolutionInput();
    v78 = swift_allocObject();
    *(v78 + 16) = v70;
    *&v104 = v70;
    sub_1DD6404C8();
    v79 = v94;
    v80 = v98;
    sub_1DD63F9A8();
    v81 = v101;
    v82 = v97;
    v83 = &v97[*(v101 + 20)];
    *v83 = "PER.Model.prediction";
    *(v83 + 1) = 20;
    v83[16] = 2;
    v84 = v79;
    sub_1DD63F9B8();
    *(v82 + *(v81 + 24)) = v84;
    v85 = v84;
    sub_1DD6404D8();
    v86 = swift_allocObject();
    *(v86 + 16) = v95;
    v87 = sub_1DD6408F8();
    v88 = v93;
    *(v86 + 56) = MEMORY[0x1E69E6158];
    *(v86 + 64) = v88;
    *(v86 + 32) = v87;
    *(v86 + 40) = v89;
    sub_1DD63F998();

    v90 = *(v99 + 16);
    v91 = v103;
    sub_1DD63B874(v78);
    if (v91)
    {

      v27 = type metadata accessor for Signpost;
    }

    else
    {
      sub_1DD6404C8();
      sub_1DD63F9A8();
      v27 = sub_1DD52F8BC(v100);
    }

    sub_1DD530774(v82, type metadata accessor for Signpost);
    sub_1DD530774(v80, type metadata accessor for Signpost);
    return v27;
  }

  v71 = 0;
  v102 = v59;
  while (!v61)
  {
LABEL_46:
    if (++v71 == v102)
    {
      goto LABEL_47;
    }
  }

  v72 = 0;
  while (1)
  {
    v73 = swift_allocObject();
    *(v73 + 16) = v104;
    *(v73 + 32) = sub_1DD6402C8();
    *(v73 + 40) = sub_1DD6402C8();
    v74 = v58[v72];
    if ((v74 & 0xC000000000000001) != 0)
    {
      v77 = v58[v72];

      v75 = MEMORY[0x1E12B2C10](v71, v74);

      goto LABEL_43;
    }

    if (v71 >= *((v74 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      break;
    }

    v75 = *(v74 + 8 * v71 + 32);
LABEL_43:
    ++v72;
    sub_1DD39638C(0, &qword_1EE163880, 0x1E696AD98);
    v76 = sub_1DD6400F8();

    [v70 setObject:v75 forKeyedSubscript:v76];

    if (v61 == v72)
    {
      goto LABEL_46;
    }
  }

  __break(1u);
LABEL_52:
  __break(1u);
LABEL_53:
  swift_once();
LABEL_9:
  v26 = sub_1DD63F9F8();
  __swift_project_value_buffer(v26, qword_1ECD0DDF0);
  v22 = sub_1DD63F9D8();
  v23 = sub_1DD640368();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    *v24 = 0;
    v25 = "No historical records to predict from.";
LABEL_11:
    _os_log_impl(&dword_1DD38D000, v22, v23, v25, v24, 2u);
    MEMORY[0x1E12B3DA0](v24, -1, -1);
  }

LABEL_12:

  return 0;
}

uint64_t sub_1DD52F414@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v62 = a6;
  v64 = a5;
  v10 = sub_1DD63D818();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v61 = &v51 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v60 = &v51 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v59 = &v51 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v58 = &v51 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v57 = &v51 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v51 - v23;
  v25 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDB9A0, &qword_1DD64F780);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_1DD657E50;
  *(v26 + 32) = sub_1DD640EB8();
  v27 = v26;
  sub_1DD4C2830(v25, a2);
  *(v26 + 40) = sub_1DD640248();
  sub_1DD4C2940(v25, a2, a3, a4);
  *(v26 + 48) = sub_1DD6402C8();
  sub_1DD4C2994(v25, a2, a3, a4);
  *(v26 + 56) = sub_1DD6402C8();
  LODWORD(v26) = v25;
  sub_1DD4C29E8(v25, a2);
  v27[8] = sub_1DD6402C8();
  v56 = *MEMORY[0x1E69D2BD0];
  v28 = v11;
  v29 = v11 + 104;
  v30 = *(v11 + 104);
  v30(v24);
  v31 = v29;
  v32 = v30;
  v54 = v26;
  v33 = v64;
  sub_1DD4C3A74(v26, v24, v64);
  v34 = *(v28 + 8);
  v34(v24, v10);
  v27[9] = sub_1DD640248();
  v55 = *MEMORY[0x1E69D2BE0];
  v35 = v57;
  v32(v57);
  v63 = v31;
  sub_1DD4C3A74(v26, v35, v33);
  v36 = v10;
  v34(v35, v10);
  v53 = v34;
  v27[10] = sub_1DD640248();
  LODWORD(v57) = *MEMORY[0x1E69D2BD8];
  v37 = v58;
  v32(v58);
  LODWORD(v10) = v54;
  sub_1DD4C3A74(v54, v37, v33);
  v34(v37, v36);
  v27[11] = sub_1DD640248();
  v38 = v27;
  v52 = v27;
  v39 = v59;
  (v32)(v59, v56, v36);
  v40 = v32;
  LODWORD(v27) = v10;
  v41 = v64;
  v42 = sub_1DD4C3A74(v10, v39, v64);
  v43 = v53;
  (v53)(v39, v36, v42);
  v38[12] = sub_1DD6402C8();
  v44 = v60;
  (v32)(v60, v55, v36);
  v45 = sub_1DD4C3A74(v27, v44, v41);
  v43(v44, v36, v45);
  v46 = sub_1DD6402C8();
  v47 = v52;
  v52[13] = v46;
  v48 = v61;
  (v40)(v61, v57, v36);
  v49 = sub_1DD4C3A74(v27, v48, v41);
  v43(v48, v36, v49);
  result = sub_1DD6402C8();
  v47[14] = result;
  *v62 = v47;
  return result;
}

uint64_t sub_1DD52F8BC(uint64_t a1)
{
  sub_1DD63B5FC();
  v3 = v2;
  v4 = [v2 count];

  if ((v4 & 0x8000000000000000) != 0)
  {
LABEL_22:
    __break(1u);
LABEL_23:
    swift_once();
    goto LABEL_17;
  }

  if (v4)
  {
    sub_1DD39638C(0, &qword_1EE166470, 0x1E69E58C0);
    v5 = 0;
    v1 = MEMORY[0x1E69E7CC0];
    v6 = &selRef_setUnderlyingQueue_;
    while (1)
    {
      sub_1DD63B5FC();
      v8 = v7;
      v9 = [v7 v6[396]];

      if (qword_1ECCDB0A8 != -1)
      {
        swift_once();
      }

      v10 = sub_1DD6405B8();

      if (v10)
      {
        if (v5 >= *(a1 + 16))
        {
          __break(1u);
          goto LABEL_22;
        }

        v11 = *(a1 + 32 + 4 * v5);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v13 = *(v1 + 16);
          sub_1DD3C018C();
          v1 = v14;
        }

        v12 = *(v1 + 16);
        if (v12 >= *(v1 + 24) >> 1)
        {
          sub_1DD3C018C();
          v1 = v15;
        }

        *(v1 + 16) = v12 + 1;
        *(v1 + 4 * v12 + 32) = v11;
        v6 = &selRef_setUnderlyingQueue_;
      }

      if (v4 == ++v5)
      {
        goto LABEL_16;
      }
    }
  }

  v1 = MEMORY[0x1E69E7CC0];
LABEL_16:

  v16 = qword_1ECCDB0E0;

  if (v16 != -1)
  {
    goto LABEL_23;
  }

LABEL_17:
  v17 = sub_1DD63F9F8();
  __swift_project_value_buffer(v17, qword_1ECD0DDF0);

  v18 = sub_1DD63F9D8();
  v19 = sub_1DD640368();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 134217984;
    v21 = *(v1 + 16);

    *(v20 + 4) = v21;

    _os_log_impl(&dword_1DD38D000, v18, v19, "ML model predicted choice count=%ld", v20, 0xCu);
    MEMORY[0x1E12B3DA0](v20, -1, -1);
  }

  else
  {

    swift_bridgeObjectRelease_n();
  }

  return v1;
}

__n128 sub_1DD52FB98@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = type metadata accessor for Signpost();
  v4 = OUTLINED_FUNCTION_7(v3);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_2();
  v9 = v8 - v7;
  v10 = swift_allocObject();
  *(v10 + 16) = 0u;
  *(v10 + 32) = 0u;
  *(v10 + 48) = 0;
  *(v10 + 56) = 1;
  if (qword_1EE166460 != -1)
  {
    OUTLINED_FUNCTION_2_2();
    swift_once();
  }

  v11 = qword_1EE16F0C0;
  v12 = v9 + *(v3 + 20);
  *v12 = "PER.Model.locationData";
  *(v12 + 8) = 22;
  *(v12 + 16) = 2;
  v13 = v11;
  sub_1DD63F9B8();
  *(v9 + *(v3 + 24)) = v13;
  v14 = v13;
  sub_1DD6404D8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDFCE0, &unk_1DD645500);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1DD643F90;
  v16 = sub_1DD6408F8();
  v18 = v17;
  *(v15 + 56) = MEMORY[0x1E69E6158];
  *(v15 + 64) = sub_1DD392BD8();
  *(v15 + 32) = v16;
  *(v15 + 40) = v18;
  OUTLINED_FUNCTION_6_57();
  sub_1DD63F998();

  sub_1DD63D718();
  sub_1DD63D708();
  MEMORY[0x1E12AFB40]();
  sub_1DD63D6F8();

  __swift_project_boxed_opaque_existential_1(v27, v27[3]);
  sub_1DD63D7A8();
  __swift_destroy_boxed_opaque_existential_1(v27);
  v19 = swift_allocObject();
  *(v19 + 16) = v10;
  *(v19 + 24) = a1;

  sub_1DD63D568();

  sub_1DD6404C8();
  OUTLINED_FUNCTION_6_57();
  sub_1DD63F9A8();

  OUTLINED_FUNCTION_0_106();
  sub_1DD530774(v9, v20);
  swift_beginAccess();
  v21 = *(v10 + 48);
  v22 = *(v10 + 56);
  v24 = *(v10 + 32);
  v26 = *(v10 + 16);

  result = v26;
  *a2 = v26;
  *(a2 + 16) = v24;
  *(a2 + 32) = v21;
  *(a2 + 40) = v22;
  return result;
}

uint64_t sub_1DD52FE78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v40 = a3;
  v5 = sub_1DD63D7B8();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  *&v41 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v39 - v10;
  v12 = sub_1DD63D558();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDDF28, &qword_1DD655820);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v39 - v19;
  sub_1DD530468(a1, &v39 - v19);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v6 + 32))(v11, v20, v5);
    if (qword_1ECCDB0E0 != -1)
    {
      swift_once();
    }

    v21 = sub_1DD63F9F8();
    __swift_project_value_buffer(v21, qword_1ECD0DDF0);
    v22 = *(v6 + 16);
    v23 = v41;
    v22(v41, v11, v5);
    v24 = sub_1DD63F9D8();
    v25 = sub_1DD640378();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v40 = v11;
      v27 = v23;
      v28 = v26;
      v29 = swift_slowAlloc();
      *v28 = 138412290;
      sub_1DD5307CC(&qword_1ECCDDF30, 255, MEMORY[0x1E69D2BB8]);
      swift_allocError();
      v22(v30, v27, v5);
      v31 = _swift_stdlib_bridgeErrorToNSError();
      v32 = *(v6 + 8);
      v32(v27, v5);
      *(v28 + 4) = v31;
      *v29 = v31;
      _os_log_impl(&dword_1DD38D000, v24, v25, "Problem gathering current location: %@", v28, 0xCu);
      sub_1DD390754(v29, &qword_1ECCDBF90, &qword_1DD6445B0);
      MEMORY[0x1E12B3DA0](v29, -1, -1);
      MEMORY[0x1E12B3DA0](v28, -1, -1);

      return (v32)(v40, v5);
    }

    else
    {

      v38 = *(v6 + 8);
      v38(v23, v5);
      return (v38)(v11, v5);
    }
  }

  else
  {
    (*(v13 + 32))(v16, v20, v12);
    v34 = sub_1DD63D548();
    sub_1DD4C3088(v34, v40, &v42);
    v35 = v42;
    v36 = v43;
    v41 = v44;
    v37 = v45;
    (*(v13 + 8))(v16, v12);
    result = swift_beginAccess();
    *(a2 + 16) = v35;
    *(a2 + 24) = v36;
    *(a2 + 32) = v41;
    *(a2 + 48) = v37;
    *(a2 + 56) = 0;
  }

  return result;
}

uint64_t sub_1DD5302F8()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return v0;
}

uint64_t sub_1DD530320()
{
  sub_1DD5302F8();

  return swift_deallocClassInstance();
}

uint64_t sub_1DD5303C0(uint64_t a1, uint64_t a2)
{
  result = sub_1DD5307CC(&qword_1ECCDE5A0, a2, type metadata accessor for ModelBasedLearning);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1DD530418()
{
  sub_1DD39638C(0, &qword_1EE163880, 0x1E696AD98);
  result = sub_1DD640598();
  qword_1ECCDE598 = result;
  return result;
}

uint64_t sub_1DD530468(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDDF28, &qword_1DD655820);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1DD5304D8@<X0>(unint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v4 = result;
    if (*(a2 + 16) > result)
    {
      v6 = *(type metadata accessor for LearnedDisambiguation() - 8);
      return sub_1DD4BC018(a2 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v4, a3);
    }
  }

  __break(1u);
  return result;
}

id sub_1DD5305B8(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, BOOL, uint64_t))
{
  v5 = a2 & 0xC000000000000001;
  a3(a1, (a2 & 0xC000000000000001) == 0, a2);
  if (v5)
  {
    return MEMORY[0x1E12B2C10](a1, a2);
  }

  else
  {
    return *(a2 + 8 * a1 + 32);
  }
}

void *sub_1DD530624@<X0>(void *(*a1)(void *__return_ptr, uint64_t *)@<X0>, uint64_t a2@<X2>, char a3@<W3>, void *a4@<X8>)
{
  if (a3)
  {
    v6 = type metadata accessor for LearnedDisambiguation();
    return __swift_storeEnumTagSinglePayload(a4, 1, 1, v6);
  }

  else
  {
    v9 = a2;
    result = a1(a4, &v9);
    if (v4)
    {
      __break(1u);
    }

    else
    {
      v8 = type metadata accessor for LearnedDisambiguation();
      return __swift_storeEnumTagSinglePayload(a4, 0, 1, v8);
    }
  }

  return result;
}

void *sub_1DD5306C4(void *(*a1)(uint64_t *__return_ptr, uint64_t *), uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
    return 0;
  }

  v6 = a3;
  result = a1(&v7, &v6);
  if (!v4)
  {
    return v7;
  }

  __break(1u);
  return result;
}

uint64_t sub_1DD530774(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_7(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_1DD5307CC(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t DateTime.Date.MonthOfYear.init(rawValue:)@<X0>(unint64_t result@<X0>, char *a2@<X8>)
{
  v2 = 12;
  if (result < 0xC)
  {
    v2 = result;
  }

  *a2 = v2;
  return result;
}

unint64_t sub_1DD53084C()
{
  result = qword_1ECCDE5A8;
  if (!qword_1ECCDE5A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDE5A8);
  }

  return result;
}

uint64_t sub_1DD5308A8@<X0>(uint64_t *a1@<X8>)
{
  result = DateTime.Date.MonthOfYear.rawValue.getter();
  *a1 = result;
  return result;
}

_BYTE *_s11MonthOfYearOwst(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 11 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 11) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF5)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF4)
  {
    v6 = ((a2 - 245) >> 8) + 1;
    *result = a2 + 11;
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
          *result = a2 + 11;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1DD530A5C()
{
  result = qword_1ECCDE5B0;
  if (!qword_1ECCDE5B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDE5B0);
  }

  return result;
}

uint64_t sub_1DD530AB0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDB900, &qword_1DD643680);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DD6435D0;
  *(inited + 32) = 0;
  *(inited + 40) = 0;
  *(inited + 48) = 2;
  type metadata accessor for DateTime();
  swift_allocObject();
  OUTLINED_FUNCTION_1_12();
  *(inited + 56) = OUTLINED_FUNCTION_6_58(7, 0, 0, v1, 11, v2, v3, v4);
  *(inited + 64) = xmmword_1DD6435E0;
  *(inited + 80) = 0;
  OUTLINED_FUNCTION_1_15();
  OUTLINED_FUNCTION_1_12();
  *(inited + 88) = OUTLINED_FUNCTION_0_18(0, v5, v6, v7, v8, v9, v10, v11);
  *(inited + 96) = xmmword_1DD6435F0;
  *(inited + 112) = 0;
  OUTLINED_FUNCTION_4_60();
  v12 = OUTLINED_FUNCTION_0_85();
  *(inited + 120) = OUTLINED_FUNCTION_6_58(v12, v13, v14, v15, 12, v16, v17, v18);
  *(inited + 128) = xmmword_1DD643600;
  *(inited + 144) = 0;
  OUTLINED_FUNCTION_1_15();
  v19 = OUTLINED_FUNCTION_0_85();
  *(inited + 152) = OUTLINED_FUNCTION_2_6(v19, v20, v21, v22, v23, v24, v25, v26);
  *(inited + 160) = xmmword_1DD643610;
  *(inited + 176) = 0;
  OUTLINED_FUNCTION_1_15();
  v27 = OUTLINED_FUNCTION_0_85();
  *(inited + 184) = OUTLINED_FUNCTION_2_6(v27, v28, v29, v30, v31, v32, v33, v34);
  *(inited + 192) = xmmword_1DD643620;
  *(inited + 208) = 0;
  OUTLINED_FUNCTION_4_60();
  OUTLINED_FUNCTION_1_12();
  *(inited + 216) = OUTLINED_FUNCTION_6_58(7, 0, 0, v35, 1, v36, v37, v38);
  *(inited + 224) = xmmword_1DD643630;
  *(inited + 240) = 0;
  OUTLINED_FUNCTION_1_15();
  OUTLINED_FUNCTION_1_12();
  *(inited + 248) = OUTLINED_FUNCTION_0_18(0, v39, v40, v41, v42, v43, v44, v45);
  *(inited + 256) = xmmword_1DD643640;
  *(inited + 272) = 0;
  OUTLINED_FUNCTION_1_15();
  v46 = OUTLINED_FUNCTION_0_85();
  *(inited + 280) = OUTLINED_FUNCTION_2_6(v46, v47, v48, v49, v50, v51, v52, v53);
  *(inited + 288) = xmmword_1DD643650;
  *(inited + 304) = 0;
  OUTLINED_FUNCTION_1_15();
  v54 = OUTLINED_FUNCTION_0_85();
  *(inited + 312) = OUTLINED_FUNCTION_6_58(v54, v55, v56, v57, 9, v58, v59, v60);
  *(inited + 320) = xmmword_1DD643660;
  *(inited + 336) = 0;
  OUTLINED_FUNCTION_1_15();
  OUTLINED_FUNCTION_1_12();
  *(inited + 344) = OUTLINED_FUNCTION_0_18(7, v61, v62, v63, v64, v65, v66, v67);
  *(inited + 352) = xmmword_1DD643670;
  *(inited + 368) = 0;
  OUTLINED_FUNCTION_4_60();
  v68 = OUTLINED_FUNCTION_0_85();
  *(inited + 376) = OUTLINED_FUNCTION_6_58(v68, v69, v70, v71, 12, v72, v73, v74);
  sub_1DD3B3160();
  return sub_1DD63FC88();
}

uint64_t sub_1DD530CF4(uint64_t a1)
{
  v50 = sub_1DD63D168();
  v3 = OUTLINED_FUNCTION_0(v50);
  v48 = v4;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v8 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v45 - v10;
  v49 = sub_1DD63CE68();
  v12 = OUTLINED_FUNCTION_0(v49);
  v14 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_2();
  v19 = v18 - v17;
  v20 = objc_opt_self();
  v21 = sub_1DD63D138();
  v22 = [v20 getAssetPathForLocale_];

  if (v22)
  {
    sub_1DD63CE48();

    sub_1DD63CE58();
    sub_1DD63DAB8();
    if (v1)
    {
      (*(v14 + 8))(v19, v49);
    }

    else
    {

      if (qword_1EE165FB0 != -1)
      {
        OUTLINED_FUNCTION_0_5();
      }

      v35 = sub_1DD63F9F8();
      __swift_project_value_buffer(v35, qword_1EE16F068);
      v36 = v48;
      v37 = v50;
      (*(v48 + 16))(v11, a1, v50);
      v38 = sub_1DD63F9D8();
      v39 = sub_1DD640368();
      if (os_log_type_enabled(v38, v39))
      {
        v40 = swift_slowAlloc();
        v47 = swift_slowAlloc();
        v51 = v47;
        *v40 = 136315138;
        v46 = sub_1DD63D118();
        v42 = v41;
        (*(v36 + 8))(v11, v50);
        v43 = sub_1DD39565C(v46, v42, &v51);

        *(v40 + 4) = v43;
        _os_log_impl(&dword_1DD38D000, v38, v39, "registered Morphun assets. locale=%s", v40, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v47);
        OUTLINED_FUNCTION_0_1();
        OUTLINED_FUNCTION_0_1();
      }

      else
      {

        (*(v36 + 8))(v11, v37);
      }

      return (*(v14 + 8))(v19, v49);
    }
  }

  else
  {
    if (qword_1EE165FB0 != -1)
    {
      OUTLINED_FUNCTION_0_5();
    }

    v24 = sub_1DD63F9F8();
    __swift_project_value_buffer(v24, qword_1EE16F068);
    v25 = v48;
    v26 = v50;
    (*(v48 + 16))(v8, a1, v50);
    v27 = sub_1DD63F9D8();
    v28 = sub_1DD640378();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v51 = v30;
      *v29 = 136446210;
      sub_1DD531664();
      v31 = sub_1DD640CB8();
      v33 = v32;
      (*(v25 + 8))(v8, v26);
      v34 = sub_1DD39565C(v31, v33, &v51);

      *(v29 + 4) = v34;
      _os_log_impl(&dword_1DD38D000, v27, v28, "morphun asset path is nil after downloading assets. locale=%{public}s", v29, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v30);
      OUTLINED_FUNCTION_0_1();
      OUTLINED_FUNCTION_0_1();
    }

    else
    {

      (*(v25 + 8))(v8, v26);
    }

    sub_1DD531768();
    swift_allocError();
    *v44 = 1;
    return swift_willThrow();
  }
}

uint64_t static MorphunAssetManager.prepare(locale:)(uint64_t a1)
{
  v2 = sub_1DD63D168();
  v3 = OUTLINED_FUNCTION_0(v2);
  v52 = v4;
  v53 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_2();
  v9 = v8 - v7;
  v10 = sub_1DD63FB58();
  v11 = OUTLINED_FUNCTION_0(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_2();
  v18 = (v17 - v16);
  v19 = sub_1DD63FC18();
  v20 = OUTLINED_FUNCTION_0(v19);
  v22 = v21;
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v20);
  v26 = &v51 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v51 - v28;
  sub_1DD63FBE8();
  *v18 = 20;
  (*(v13 + 104))(v18, *MEMORY[0x1E69E7F48], v10);
  sub_1DD63FBF8();
  (*(v13 + 8))(v18, v10);
  v30 = *(v22 + 8);
  v30(v26, v19);
  v31 = sub_1DD63FC08();
  v30(v29, v19);
  v32 = objc_opt_self();
  v33 = sub_1DD63D138();
  v34 = [v32 blockingOnDemandDownloadForLocale:v33 withTimeout:v31 withProgress:0];

  if (!v34)
  {
    return sub_1DD530CF4(a1);
  }

  if (qword_1EE165FB0 != -1)
  {
    OUTLINED_FUNCTION_0_5();
  }

  v35 = sub_1DD63F9F8();
  __swift_project_value_buffer(v35, qword_1EE16F068);
  v37 = v52;
  v36 = v53;
  (*(v52 + 16))(v9, a1, v53);
  v38 = v34;
  v39 = sub_1DD63F9D8();
  v40 = sub_1DD640378();

  if (os_log_type_enabled(v39, v40))
  {
    v41 = swift_slowAlloc();
    v51 = swift_slowAlloc();
    v55 = v51;
    *v41 = 136446466;
    sub_1DD531664();
    v42 = sub_1DD640CB8();
    v44 = v43;
    (*(v37 + 8))(v9, v36);
    v45 = sub_1DD39565C(v42, v44, &v55);

    *(v41 + 4) = v45;
    *(v41 + 12) = 2082;
    v54 = v38;
    v46 = v38;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBB18, &unk_1DD643EA0);
    v47 = sub_1DD63FE38();
    v49 = sub_1DD39565C(v47, v48, &v55);

    *(v41 + 14) = v49;
    _os_log_impl(&dword_1DD38D000, v39, v40, "error when downloading morphun assets. locale=%{public}s: %{public}s", v41, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_0_1();
    OUTLINED_FUNCTION_0_1();
  }

  else
  {

    (*(v37 + 8))(v9, v36);
  }

  byte_1ECCDE5B8 = 1;
  return swift_willThrow();
}

unint64_t sub_1DD531664()
{
  result = qword_1EE1637E8;
  if (!qword_1EE1637E8)
  {
    sub_1DD63D168();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1637E8);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for MorphunAssetManager(_BYTE *result, int a2, int a3)
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

unint64_t sub_1DD531768()
{
  result = qword_1ECCDE5C0;
  if (!qword_1ECCDE5C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDE5C0);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for MorphunAssetManagerError(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1DD53189C()
{
  result = qword_1ECCDE5C8;
  if (!qword_1ECCDE5C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDE5C8);
  }

  return result;
}

void sub_1DD531900(uint64_t a1, uint64_t a2)
{
  v4 = sub_1DD63FB88();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DD406E2C();
  (*(v5 + 104))(v8, *MEMORY[0x1E69E7F88], v4);
  v9 = sub_1DD6404B8();
  (*(v5 + 8))(v8, v4);
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  aBlock[4] = sub_1DD531C28;
  aBlock[5] = v10;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1DD531BC8;
  aBlock[3] = &block_descriptor_12;
  v11 = _Block_copy(aBlock);
  v12 = v9;

  MRMediaRemoteGetNowPlayingApplicationPlaybackState();
  _Block_release(v11);
}

uint64_t sub_1DD531AC0(unsigned int a1, void (*a2)(void *))
{
  v4 = sub_1DD63D4F8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = (&v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v9 = a1;
  (*(v5 + 104))(v9, *MEMORY[0x1E69D2B58], v4, v7);
  a2(v9);
  return (*(v5 + 8))(v9, v4);
}

uint64_t sub_1DD531BC8(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v4(a2);
}

uint64_t block_copy_helper_12(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

SiriInference::NeighborhoodPlaceName::Prefix_optional __swiftcall NeighborhoodPlaceName.Prefix.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1DD640AA8();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t NeighborhoodPlaceName.Prefix.rawValue.getter()
{
  result = 28265;
  switch(*v0)
  {
    case 1:
      result = 0x7463697274736964;
      break;
    case 2:
      result = 1918985582;
      break;
    case 3:
      result = 0x726F62686769656ELL;
      break;
    default:
      return result;
  }

  return result;
}

SiriInference::NeighborhoodPlaceName::Suffix_optional __swiftcall NeighborhoodPlaceName.Suffix.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1DD640AA8();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t NeighborhoodPlaceName.name.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t static NeighborhoodPlaceName.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 17);
  v4 = *(a2 + 16);
  v5 = *(a2 + 17);
  v6 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (!v6 && (sub_1DD640CD8() & 1) == 0)
  {
    return 0;
  }

  if (v2 == 4)
  {
    if (v4 != 4)
    {
      return 0;
    }
  }

  else if (v4 == 4 || (sub_1DD3B2D94(v2, v4) & 1) == 0)
  {
    return 0;
  }

  result = v5 == 4 && v3 == 4;
  if (v3 != 4 && v5 != 4)
  {

    return sub_1DD3B2D94(v3, v5);
  }

  return result;
}

uint64_t sub_1DD532048(uint64_t a1)
{
  v2 = sub_1DD5324BC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD532084(uint64_t a1)
{
  v2 = sub_1DD5324BC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t NeighborhoodPlaceName.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDE5D0, &qword_1DD658170);
  v5 = OUTLINED_FUNCTION_0(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v11 = &v22 - v10;
  v12 = *v1;
  v13 = v1[1];
  v14 = *(v1 + 16);
  v23 = *(v1 + 17);
  v24 = v14;
  v15 = a1[3];
  v16 = a1[4];
  v17 = a1;
  v19 = v18;
  __swift_project_boxed_opaque_existential_1(v17, v15);
  sub_1DD5324BC();
  sub_1DD640EF8();
  v29 = 0;
  sub_1DD640C18();
  if (!v2)
  {
    v20 = v23;
    v28 = v24;
    v27 = 1;
    sub_1DD532510();
    sub_1DD640C08();
    v26 = v20;
    v25 = 2;
    sub_1DD532564();
    sub_1DD640C08();
  }

  return (*(v7 + 8))(v11, v19);
}

uint64_t NeighborhoodPlaceName.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDE5F0, &qword_1DD658178);
  v6 = OUTLINED_FUNCTION_0(v5);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DD5324BC();
  sub_1DD640ED8();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v10 = sub_1DD640B28();
  v12 = v11;
  sub_1DD5325B8();
  OUTLINED_FUNCTION_3_4();
  sub_1DD53260C();
  OUTLINED_FUNCTION_3_4();
  v14 = OUTLINED_FUNCTION_0_0();
  v15(v14);
  *a2 = v10;
  *(a2 + 8) = v12;
  *(a2 + 16) = v17;
  *(a2 + 17) = v16;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_1DD5324BC()
{
  result = qword_1ECCDE5D8;
  if (!qword_1ECCDE5D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDE5D8);
  }

  return result;
}

unint64_t sub_1DD532510()
{
  result = qword_1ECCDE5E0;
  if (!qword_1ECCDE5E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDE5E0);
  }

  return result;
}

unint64_t sub_1DD532564()
{
  result = qword_1ECCDE5E8;
  if (!qword_1ECCDE5E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDE5E8);
  }

  return result;
}

unint64_t sub_1DD5325B8()
{
  result = qword_1ECCDE5F8;
  if (!qword_1ECCDE5F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDE5F8);
  }

  return result;
}

unint64_t sub_1DD53260C()
{
  result = qword_1ECCDE600;
  if (!qword_1ECCDE600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDE600);
  }

  return result;
}

unint64_t sub_1DD532664()
{
  result = qword_1ECCDE608;
  if (!qword_1ECCDE608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDE608);
  }

  return result;
}

unint64_t sub_1DD5326BC()
{
  result = qword_1ECCDE610;
  if (!qword_1ECCDE610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDE610);
  }

  return result;
}

_BYTE *sub_1DD532728(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for NeighborhoodPlaceName.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1DD5328E0()
{
  result = qword_1ECCDE618;
  if (!qword_1ECCDE618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDE618);
  }

  return result;
}

unint64_t sub_1DD532938()
{
  result = qword_1ECCDE620;
  if (!qword_1ECCDE620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDE620);
  }

  return result;
}

unint64_t sub_1DD532990()
{
  result = qword_1ECCDE628;
  if (!qword_1ECCDE628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDE628);
  }

  return result;
}

unint64_t sub_1DD5329E4()
{
  result = qword_1ECCDE630;
  if (!qword_1ECCDE630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDE630);
  }

  return result;
}

unint64_t sub_1DD532A38()
{
  result = qword_1ECCDE638;
  if (!qword_1ECCDE638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDE638);
  }

  return result;
}

uint64_t sub_1DD532A9C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDB900, &qword_1DD643680);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DD658570;
  *(inited + 32) = 0;
  *(inited + 40) = 0;
  *(inited + 48) = 2;
  type metadata accessor for DateTime();
  swift_allocObject();
  OUTLINED_FUNCTION_1_12();
  *(inited + 56) = OUTLINED_FUNCTION_3_6(7, 0, 0, v1, 11, v2, v3, v4);
  *(inited + 64) = xmmword_1DD6435E0;
  *(inited + 80) = 0;
  OUTLINED_FUNCTION_2_77();
  v5 = OUTLINED_FUNCTION_0_107();
  *(inited + 88) = OUTLINED_FUNCTION_3_6(v5, v6, v7, v8, 5, v9, v10, v11);
  *(inited + 96) = xmmword_1DD6435F0;
  *(inited + 112) = 0;
  OUTLINED_FUNCTION_2_77();
  OUTLINED_FUNCTION_1_12();
  *(inited + 120) = OUTLINED_FUNCTION_3_63(6, v12, v13, v14, v15, v16, v17, v18);
  *(inited + 128) = xmmword_1DD652A60;
  *(inited + 144) = 0;
  OUTLINED_FUNCTION_2_77();
  OUTLINED_FUNCTION_1_12();
  *(inited + 152) = OUTLINED_FUNCTION_3_63(11, v19, v20, v21, v22, v23, v24, v25);
  *(inited + 160) = xmmword_1DD643600;
  *(inited + 176) = 0;
  OUTLINED_FUNCTION_2_77();
  v26 = OUTLINED_FUNCTION_0_107();
  *(inited + 184) = OUTLINED_FUNCTION_3_6(v26, v27, v28, v29, 4, v30, v31, v32);
  *(inited + 192) = xmmword_1DD643610;
  *(inited + 208) = 0;
  OUTLINED_FUNCTION_2_77();
  OUTLINED_FUNCTION_1_12();
  *(inited + 216) = OUTLINED_FUNCTION_3_63(6, v33, v34, v35, v36, v37, v38, v39);
  *(inited + 224) = xmmword_1DD643620;
  *(inited + 240) = 0;
  OUTLINED_FUNCTION_2_77();
  v40 = OUTLINED_FUNCTION_0_107();
  *(inited + 248) = OUTLINED_FUNCTION_3_6(v40, v41, v42, v43, 3, v44, v45, v46);
  *(inited + 256) = xmmword_1DD643650;
  *(inited + 272) = 0;
  swift_allocObject();
  OUTLINED_FUNCTION_1_12();
  *(inited + 280) = DateTime.init(withStartHour:startMinute:startSecond:startMeridiem:endHour:endMinute:endSecond:endMeridiem:)(0, 0, 0, v47, 6, 0, 0, v48);
  *(inited + 288) = xmmword_1DD643660;
  *(inited + 304) = 0;
  swift_allocObject();
  v49 = OUTLINED_FUNCTION_0_107();
  *(inited + 312) = OUTLINED_FUNCTION_3_6(v49, v50, v51, v52, 11, v53, v54, v55);
  *(inited + 320) = xmmword_1DD643670;
  *(inited + 336) = 0;
  OUTLINED_FUNCTION_2_77();
  OUTLINED_FUNCTION_1_12();
  *(inited + 344) = OUTLINED_FUNCTION_3_63(6, v56, v57, v58, v59, v60, v61, v62);
  sub_1DD3B3160();
  return sub_1DD63FC88();
}

uint64_t OUTLINED_FUNCTION_3_63(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, uint64_t a5, uint64_t a6, uint64_t a7, char *a8)
{

  return DateTime.init(withStartHour:startMinute:startSecond:startMeridiem:endHour:endMinute:endSecond:endMeridiem:)(a1, 0, 0, a4, 5, 0, 0, a8);
}

uint64_t sub_1DD532D04()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDD110, &qword_1DD64D860);
  v0 = swift_allocObject();
  v6 = sub_1DD3AE030(v0, 376);
  *v1 = "manager";
  *(v1 + 8) = 7;
  *(v1 + 16) = 2;
  *(v1 + 24) = "assistant";
  *(v1 + 32) = 9;
  *(v1 + 40) = 2;
  *(v1 + 48) = "spouse";
  *(v1 + 56) = 6;
  *(v1 + 64) = 2;
  *(v1 + 72) = "family";
  *(v1 + 80) = 6;
  *(v1 + 88) = 2;
  *(v1 + 96) = "partner";
  *(v1 + 104) = 7;
  *(v1 + 112) = 2;
  *(v1 + 120) = "manager_f";
  *(v1 + 128) = 9;
  *(v1 + 136) = 2;
  *(v1 + 144) = "friend_f";
  *(v1 + 152) = 8;
  *(v1 + 160) = 2;
  *(v1 + 168) = "parent";
  *(v1 + 176) = 6;
  *(v1 + 184) = 2;
  *(v1 + 192) = "mother";
  *(v1 + 200) = 6;
  *(v1 + 208) = 2;
  *(v1 + 216) = "friend";
  *(v1 + 224) = 6;
  *(v1 + 232) = 2;
  *(v1 + 240) = "assistant_f";
  *(v1 + 248) = 11;
  *(v1 + 256) = 2;
  *(v1 + 264) = "partner_f";
  *(v1 + 272) = 9;
  *(v1 + 280) = 2;
  *(v1 + 288) = "husband";
  *(v1 + 296) = 7;
  *(v1 + 304) = 2;
  *(v1 + 312) = "father";
  *(v1 + 320) = 6;
  *(v1 + 328) = 2;
  *(v1 + 336) = "sister";
  *(v1 + 344) = 6;
  *(v1 + 352) = 2;
  *(v1 + 360) = "older-sister";
  *(v1 + 368) = 12;
  *(v1 + 376) = 2;
  *(v1 + 384) = "younger-sister";
  *(v1 + 392) = 14;
  *(v1 + 400) = 2;
  *(v1 + 408) = "child";
  *(v1 + 416) = 5;
  *(v1 + 424) = 2;
  *(v1 + 432) = "stepchild";
  *(v1 + 440) = 9;
  *(v1 + 448) = 2;
  *(v1 + 456) = "son";
  *(v1 + 464) = 3;
  *(v1 + 472) = 2;
  *(v1 + 480) = "daughter";
  *(v1 + 488) = 8;
  *(v1 + 496) = 2;
  *(v1 + 504) = "child_f";
  *(v1 + 512) = 7;
  *(v1 + 520) = 2;
  *(v1 + 528) = "spouse_f";
  *(v1 + 536) = 8;
  *(v1 + 544) = 2;
  *(v1 + 552) = "wife";
  *(v1 + 560) = 4;
  *(v1 + 568) = 2;
  *(v1 + 576) = "sibling";
  *(v1 + 584) = 7;
  *(v1 + 592) = 2;
  *(v1 + 600) = "younger-sibling";
  *(v1 + 608) = 15;
  *(v1 + 616) = 2;
  *(v1 + 624) = "younger-brother-or-sister";
  *(v1 + 632) = 25;
  *(v1 + 640) = 2;
  *(v1 + 648) = "brother";
  *(v1 + 656) = 7;
  *(v1 + 664) = 2;
  *(v1 + 672) = "older-brother";
  *(v1 + 680) = 13;
  *(v1 + 688) = 2;
  *(v1 + 696) = "younger-brother";
  *(v1 + 704) = 15;
  *(v1 + 712) = 2;
  *(v1 + 720) = "colleague";
  *(v1 + 728) = 9;
  *(v1 + 736) = 2;
  *(v1 + 744) = "teacher";
  *(v1 + 752) = 7;
  *(v1 + 760) = 2;
  *(v1 + 768) = "younger sibling";
  *(v1 + 776) = 15;
  *(v1 + 784) = 2;
  *(v1 + 792) = "elder sibling";
  *(v1 + 800) = 13;
  *(v1 + 808) = 2;
  *(v1 + 816) = "youngest sister";
  *(v1 + 824) = 15;
  *(v1 + 832) = 2;
  *(v1 + 840) = "youngest brother";
  *(v1 + 848) = 16;
  *(v1 + 856) = 2;
  *(v1 + 864) = "younger sister";
  *(v1 + 872) = 14;
  *(v1 + 880) = 2;
  *(v1 + 888) = "younger brother";
  *(v1 + 896) = 15;
  *(v1 + 904) = 2;
  *(v1 + 912) = "eldest sister";
  *(v1 + 920) = 13;
  *(v1 + 928) = 2;
  *(v1 + 936) = "eldest brother";
  *(v1 + 944) = 14;
  *(v1 + 952) = 2;
  *(v1 + 960) = "elder sister";
  *(v1 + 968) = 12;
  *(v1 + 976) = 2;
  *(v1 + 984) = "elder brother";
  *(v1 + 992) = 13;
  *(v1 + 1000) = 2;
  *(v1 + 1008) = "elder_sister_female";
  *(v1 + 1016) = 19;
  *(v1 + 1032) = "elder_sister_male";
  *(v1 + 1056) = "elder_brother_female";
  *(v1 + 1080) = "elder_brother_male";
  *(v1 + 1104) = "male_friend";
  *(v1 + 1128) = "female_friend";
  *(v1 + 1136) = 13;
  *(v1 + 1152) = "male_partner";
  *(v1 + 1176) = "female_partner";
  *(v1 + 1184) = 14;
  *(v1 + 1200) = "girlfriend";
  *(v1 + 1224) = "boyfriend";
  *(v1 + 1232) = 9;
  *(v1 + 1248) = "grandparent";
  *(v1 + 1272) = "grandmother";
  *(v1 + 1296) = "grandmother_mothers_mother";
  *(v1 + 1304) = 26;
  *(v1 + 1320) = "grandmother_fathers_mother";
  *(v1 + 1328) = 26;
  *(v1 + 1344) = "grandfather";
  *(v1 + 1368) = "grandfather_mothers_father";
  *(v1 + 1376) = 26;
  *(v1 + 1392) = "grandfather_fathers_father";
  *(v1 + 1400) = 26;
  *(v1 + 1416) = "great grandparent";
  *(v1 + 1440) = "great grandfather";
  *(v1 + 1464) = "great grandmother";
  *(v1 + 1488) = "grandchild";
  *(v1 + 1512) = "granddaughter";
  *(v1 + 1520) = 13;
  *(v1 + 1536) = "grandson";
  *(v1 + 1544) = 8;
  *(v1 + 1560) = "great grandchild";
  *(v1 + 1584) = "great grandson";
  *(v1 + 1592) = 14;
  *(v1 + 1608) = "great granddaughter";
  *(v1 + 1632) = "parent-in-law";
  *(v1 + 1640) = 13;
  *(v1 + 1656) = "mother-in-law";
  *(v1 + 1680) = "mother-in-law_wifes_mother";
  *(v1 + 1688) = 26;
  *(v1 + 1704) = "mother-in-law_husbands_mother";
  *(v1 + 1712) = 29;
  *(v1 + 1728) = "father-in-law";
  *(v1 + 1752) = "father-in-law_wifes_father";
  *(v1 + 1760) = 26;
  *(v1 + 1776) = "father-in-law_husbands_father";
  *(v1 + 1784) = 29;
  *(v1 + 1800) = "co_parent-in-law";
  *(v1 + 1824) = "co_mother-in-law";
  *(v1 + 1848) = "co_father-in-law";
  *(v1 + 1872) = "co_sibling-in-law";
  *(v1 + 1896) = "younger_sibling-in-law";
  *(v1 + 1920) = "elder_sibling-in-law";
  *(v1 + 1944) = "sister-in-law";
  *(v1 + 1968) = "younger_sister-in-law";
  *(v1 + 1992) = "elder_sister-in-law";
  *(v1 + 2016) = "sister-in-law_spouses_sister";
  *(v1 + 2024) = 28;
  *(v1 + 2040) = "sister-in-law_wifes_sister";
  *(v1 + 2048) = 26;
  *(v1 + 2064) = "sister-in-law_husbands_sister";
  *(v1 + 2072) = 29;
  *(v1 + 2088) = "sister-in-law_brothers_wife";
  *(v1 + 2112) = "sister-in-law_younger_brothers_wife";
  *(v1 + 2136) = "sister-in-law_elder_brother_wife";
  *(v1 + 2160) = "brother-in-law";
  *(v1 + 2168) = 14;
  *(v1 + 2184) = "younger_brother-in-law";
  *(v1 + 2208) = "elder_brother-in-law";
  *(v1 + 2232) = "brother-in-law_spouses_brother";
  *(v1 + 2240) = 30;
  *(v1 + 2256) = "brother-in-law_husbands_brother";
  *(v1 + 2280) = "brother-in-law_wifes_brother";
  *(v1 + 2288) = 28;
  *(v1 + 2304) = "brother-in-law_sisters_husband";
  *(v1 + 2312) = 30;
  *(v1 + 2328) = "brother-in-law_younger_sisters_husband";
  *(v1 + 2352) = "brother-in-law_elder_sisters_husband";
  *(v1 + 2376) = "sister-in-law_wifes_brothers_wife";
  *(v1 + 2400) = "sister-in-law_husbands_brothers_wife";
  *(v1 + 2424) = "brother-in-law_wifes_sisters_husband";
  *(v1 + 2448) = "brother-in-law_husbands_sisters_husband";
  *(v1 + 2472) = "co_sister-in-law";
  *(v1 + 2496) = "co_brother-in-law";
  *(v1 + 2520) = "child-in-law";
  *(v1 + 2544) = "daughter-in-law";
  *(v1 + 2552) = 15;
  *(v1 + 2568) = "son-in-law";
  *(v1 + 2592) = "cousin";
  *(v1 + 2600) = 6;
  *(v1 + 2616) = "male_cousin";
  *(v1 + 2640) = "female_cousin";
  *(v1 + 2664) = "cousin_parents_siblings_child";
  *(v1 + 2672) = 29;
  *(v1 + 2688) = "cousin_parents_siblings_son";
  *(v1 + 2712) = "younger_cousin_parents_siblings_son";
  *(v1 + 2736) = "elder_cousin_parents_siblings_son";
  *(v1 + 2760) = "cousin_parents_siblings_daughter";
  *(v1 + 2784) = "younger_cousin_parents_siblings_daughter";
  *(v1 + 2808) = "elder_cousin_parents_siblings_daughter";
  *(v1 + 2832) = "cousin_mothers_sisters_daughter";
  *(v1 + 2856) = "younger_cousin_mothers_sisters_daughter";
  *(v1 + 2880) = "elder_cousin_mothers_sisters_daughter";
  *(v1 + 2904) = "cousin_mothers_sisters_son";
  *(v1 + 2912) = 26;
  *(v1 + 2928) = "younger_cousin_mothers_sisters_son";
  *(v1 + 2952) = "elder_cousin_mothers_sisters_son";
  *(v1 + 2976) = "cousin_mothers_brothers_daughter";
  *(v1 + 3000) = "younger_cousin_mothers_brothers_daughter";
  *(v1 + 3024) = "elder_cousin_mothers_brothers_daughter";
  *(v1 + 3048) = "cousin_mothers_brothers_son";
  *(v1 + 3072) = "younger_cousin_mothers_brothers_son";
  *(v1 + 3096) = "elder_cousin_mothers_brothers_son";
  *(v1 + 3120) = "cousin_fathers_sisters_daughter";
  *(v1 + 3144) = "younger_cousin_fathers_sisters_daughter";
  *(v1 + 3168) = "elder_cousin_fathers_sisters_daughter";
  *(v1 + 3192) = "cousin_fathers_sisters_son";
  *(v1 + 3200) = 26;
  *(v1 + 3216) = "younger_cousin_fathers_sisters_son";
  *(v1 + 3240) = "elder_cousin_fathers_sisters_son";
  *(v1 + 3264) = "cousin_fathers_brothers_daughter";
  *(v1 + 3288) = "younger_cousin_fathers_brothers_daughter";
  *(v1 + 3312) = "elder_cousin_fathers_brothers_daughter";
  *(v1 + 3336) = "cousin_fathers_brothers_son";
  *(v1 + 3360) = "younger_cousin_fathers_brothers–son";
  *(v1 + 3384) = "elder_cousin_fathers_brothers_son";
  *(v1 + 3408) = "cousin_grandparents_siblings_child";
  *(v1 + 3432) = "cousin_grandparents_siblings_daughter";
  *(v1 + 3456) = "cousin_grandparents_siblings_son";
  *(v1 + 3480) = "younger_cousin_mothers_siblings_son_or_fathers_sisters_son";
  *(v1 + 3488) = 58;
  *(v1 + 3504) = "elder_cousin_mothers_siblings_son_or_fathers_sisters_son";
  *(v1 + 3512) = 56;
  *(v1 + 3528) = "younger_cousin_mothers_siblings_daughter_or_fathers_sisters_daughter";
  *(v1 + 3536) = 68;
  *(v1 + 3552) = "elder_cousin_mothers_siblings_daughter_or_fathers_sisters_daughter";
  *(v1 + 3560) = 66;
  *(v1 + 3576) = "parents_sibling";
  *(v1 + 3584) = 15;
  *(v1 + 3600) = "parents_younger_sibling";
  *(v1 + 3624) = "parents_elder_sibling";
  *(v1 + 3648) = "parents_sibling_mothers_sibling";
  *(v1 + 3672) = "parents_sibling_mothers_younger_sibling";
  *(v1 + 3696) = "parents_sibling_mothers_elder_sibling";
  *(v1 + 3720) = "parents_sibling_fathers_sibling";
  *(v1 + 3744) = "parents_sibling_fathers_younger_sibling";
  *(v1 + 3768) = "parents_sibling_fathers_elder_sibling";
  *(v1 + 3792) = "aunt_parents_sister";
  *(v1 + 3816) = "aunt_parents_younger_sister";
  *(v1 + 3840) = "aunt_parents_elder_sister";
  *(v1 + 3864) = "aunt_fathers_sister";
  *(v1 + 3888) = "aunt_fathers_younger_sister";
  *(v1 + 3912) = "aunt_fathers_elder_sister";
  *(v1 + 3936) = "aunt_father_brothers_wife";
  *(v1 + 3960) = "aunt_fathers_younger_brothers_wife";
  *(v1 + 3984) = "aunt_fathers_elder_brothers_wife";
  *(v1 + 4008) = "aunt_mothers_sister";
  *(v1 + 4032) = "aunt_mothers_younger_sister";
  *(v1 + 4056) = "aunt_mothers_elder_sister";
  *(v1 + 4080) = "aunt_mothers_brothers_wife";
  *(v1 + 4088) = 26;
  *(v1 + 4104) = "grandaunt";
  *(v1 + 4112) = 9;
  *(v1 + 4128) = "uncle_parents_brother";
  *(v1 + 4152) = "uncle_parents_younger_brother";
  *(v1 + 4160) = 29;
  *(v1 + 4176) = "uncle_parents_elder_brother";
  *(v1 + 4200) = "uncle_mothers_brother";
  *(v1 + 4224) = "uncle_mothers_younger_brother";
  *(v1 + 4232) = 29;
  *(v1 + 4248) = "uncle_mothers_elder_brother";
  *(v1 + 4272) = "uncle_mothers_sisters_husband";
  *(v1 + 4280) = 29;
  *(v1 + 4296) = "uncle_fathers_brother";
  *(v1 + 4320) = "uncle_fathers_younger_brother";
  *(v1 + 4328) = 29;
  *(v1 + 4344) = "uncle_fathers_elder_brother";
  *(v1 + 4368) = "uncle_fathers_sisters_husband";
  *(v1 + 4376) = 29;
  *(v1 + 4392) = "uncle_fathers_younger_sisters_husband";
  *(v1 + 4416) = "uncle_fathers_elder_sisters_husband";
  *(v1 + 4440) = "granduncle";
  *(v1 + 4464) = "siblings_child";
  *(v1 + 4472) = 14;
  *(v1 + 4488) = "niece_or_cousin";
  *(v1 + 4496) = 15;
  *(v1 + 4512) = "niece_sisters_daughter";
  *(v1 + 4536) = "niece_brother_daughter";
  *(v1 + 4560) = "niece_sisters_daughter_or_wifes_siblings_daughter";
  *(v1 + 4568) = 49;
  *(v1 + 4584) = "niece_brothers_daughter_or_husbands_siblings_daughter";
  *(v1 + 4592) = 53;
  *(v1 + 4608) = "nephew__sisters_son";
  *(v1 + 4632) = "nephew__brothers_son";
  *(v1 + 4656) = "nephew__brothers_son_or_husbands_siblings_son";
  *(v1 + 4680) = "nephew__sisters_son_or_wifes_siblings_son";
  *(v1 + 4704) = "grandniece";
  *(v1 + 4728) = "grandniece_sisters_granddaughter";
  *(v1 + 4752) = "grandniece_brothers_granddaughter";
  *(v1 + 4776) = "grandnephew_";
  *(v1 + 4800) = "grandnephew__sisters_grandson";
  *(v1 + 4808) = 29;
  *(v1 + 4824) = "grandnephew__brothers_grandson";
  *(v1 + 4832) = 30;
  *(v1 + 4848) = "stepparent";
  *(v1 + 4872) = "stepfather";
  *(v1 + 4896) = "stepmother";
  *(v1 + 4920) = "stepson";
  *(v1 + 4928) = 7;
  *(v1 + 4944) = "stepdaughter";
  *(v1 + 4968) = "stepbrother";
  *(v1 + 4992) = "stepsister";
  *(v1 + 5016) = "mother-in-law_or_stepmother";
  *(v1 + 5024) = 27;
  *(v1 + 5040) = "father-in-law_or–stepfather";
  *(v1 + 5048) = 29;
  *(v1 + 5064) = "daughter-in-law_or_stepdaughter";
  *(v1 + 5088) = "son-in-law_or_stepson";
  *(v1 + 5112) = "cousin_or_siblings_child";
  *(v1 + 5136) = "nephew__or_cousin";
  *(v1 + 5160) = "grandchild_or_siblings_child";
  *(v1 + 5168) = 28;
  *(v1 + 5184) = "great_grandchild_or_siblings_grandchild";
  *(v1 + 5208) = "daughter-in-law_or_sister-in-law";
  *(v1 + 5232) = "son-in-law_or_brother-in-law";
  *(v1 + 5240) = 28;
  *(v1 + 5256) = "uncle";
  *(v1 + 5264) = 5;
  *(v1 + 5280) = "uncle_fathers_younger_brother_hindi";
  *(v1 + 5304) = "uncle_fathers_elder_brother_hindi";
  *(v1 + 5328) = "uncle_mothers_sisters_husband_hindi";
  *(v1 + 5352) = "uncle_mothers_brother_hindi";
  *(v1 + 5376) = "uncle_mothers_younger_brother_hindi";
  *(v1 + 5400) = "uncle_mothers_elder_brother_hindi";
  *(v1 + 5424) = "uncle_fathers_sisters_husband_hindi";
  *(v1 + 5448) = "aunt";
  *(v1 + 5456) = 4;
  *(v1 + 6960) = "father-in-law_malayalam";
  *(v1 + 5472) = "aunt_fathers_younger_brothers_wife_hindi";
  *(v1 + 6936) = "mother-in-law_malayalam";
  *(v1 + 6944) = 23;
  *(v1 + 6952) = 2;
  *(v1 + 5496) = "aunt_fathers_elder_brothers_wife_hindi";
  *(v1 + 6912) = "daughter-in-law_malayalam";
  *(v1 + 6920) = 25;
  *(v1 + 6928) = 2;
  *(v1 + 6896) = 20;
  *(v1 + 6904) = 2;
  *(v1 + 5520) = "aunt_mothers_sister_hindi";
  *(v1 + 6872) = 24;
  *(v1 + 6880) = 2;
  *(v1 + 6888) = "son-in-law_malayalam";
  *(v1 + 5544) = "aunt_mothers_younger_sister_hindi";
  *(v1 + 6848) = 14;
  *(v1 + 6856) = 2;
  *(v1 + 6864) = "brother-in-law_malayalam";
  *(v1 + 5568) = "aunt_mothers_elder_sister_hindi";
  *(v1 + 6824) = 15;
  *(v1 + 6832) = 2;
  *(v1 + 6840) = "aunt_malayalam";
  *(v1 + 6808) = 2;
  *(v1 + 6816) = "uncle_malayalam";
  *(v1 + 5592) = "aunt_mothers_brothers_wife_hindi";
  *(v1 + 6784) = 2;
  *(v1 + 6792) = "father-in-law_punjabi";
  *(v1 + 6800) = 21;
  *(v1 + 6768) = "daughter-in-law_punjabi";
  *(v1 + 6776) = 23;
  *(v1 + 5616) = "aunt_fathers_sister_hindi";
  *(v1 + 6744) = "son-in-law_punjabi";
  *(v1 + 6752) = 18;
  *(v1 + 6760) = 2;
  *(v1 + 6720) = "brother-in-law_younger_sisters_husband_punjabi";
  *(v1 + 6728) = 46;
  *(v1 + 6736) = 2;
  *(v1 + 6696) = "brother-in-law_husbands_sisters_husband_punjabi";
  *(v1 + 6704) = 47;
  *(v1 + 6712) = 2;
  *(v1 + 6672) = "brother-in-law_elder_sisters_husband_punjabi";
  *(v1 + 6680) = 44;
  *(v1 + 6688) = 2;
  *(v1 + 6656) = 41;
  *(v1 + 6664) = 2;
  *(v1 + 5640) = "aunt_fathers_elder_sister_hindi";
  *(v1 + 6632) = 35;
  *(v1 + 6640) = 2;
  *(v1 + 6648) = "sister-in-law_elder_brothers_wife_punjabi";
  *(v1 + 6624) = "aunt_fathers_younger_sister_punjabi";
  *(v1 + 6608) = 33;
  *(v1 + 6616) = 2;
  *(v1 + 6576) = "aunt_fathers_sister_punjabi";
  *(v1 + 6584) = 27;
  *(v1 + 6592) = 2;
  *(v1 + 6600) = "aunt_fathers_elder_sister_punjabi";
  *(v1 + 6552) = "aunt_mothers_elder_sister_punjabi";
  *(v1 + 6560) = 33;
  *(v1 + 6568) = 2;
  *(v1 + 5664) = "aunt_fathers_younger_sister_hindi";
  *(v1 + 6528) = "aunt_mothers_younger_sister_punjabi";
  *(v1 + 6536) = 35;
  *(v1 + 6544) = 2;
  *(v1 + 5688) = "brother-in-law_wifes_brother_hindi";
  *(v1 + 6504) = "aunt_mothers_sister_punjabi";
  *(v1 + 6512) = 27;
  *(v1 + 6520) = 2;
  *(v1 + 6488) = 40;
  *(v1 + 6496) = 2;
  *(v1 + 6456) = "uncle_fathers_sisters_husband_punjabi";
  *(v1 + 6464) = 37;
  *(v1 + 6472) = 2;
  *(v1 + 6480) = "aunt_fathers_elder_brothers_wife_punjabi";
  *(v1 + 6424) = 2;
  *(v1 + 6432) = "uncle_mothers_elder_brother_punjabi";
  *(v1 + 6440) = 35;
  *(v1 + 6448) = 2;
  *(v1 + 6392) = 37;
  *(v1 + 6400) = 2;
  *(v1 + 6408) = "uncle_mothers_younger_brother_punjabi";
  *(v1 + 6416) = 37;
  *(v1 + 6384) = "uncle_mothers_sisters_husband_punjabi";
  *(v1 + 6368) = 35;
  *(v1 + 6376) = 2;
  *(v1 + 6312) = "father-in-law_gujarati";
  *(v1 + 6344) = 37;
  *(v1 + 6352) = 2;
  *(v1 + 6360) = "uncle_fathers_elder_brother_punjabi";
  *(v1 + 6336) = "uncle_fathers_younger_brother_punjabi";
  *(v1 + 6320) = 22;
  *(v1 + 6328) = 2;
  *(v1 + 6288) = "mother-in-law_gujarati";
  *(v1 + 6280) = 2;
  *(v1 + 6296) = 22;
  *(v1 + 6304) = 2;
  *(v1 + 5120) = 24;
  *(v1 + 6264) = "daughter-in-law_gujarati";
  *(v1 + 6256) = 2;
  *(v1 + 6272) = 24;
  *(v1 + 6224) = 45;
  *(v1 + 6232) = 2;
  *(v1 + 6240) = "son-in-law_gujarati";
  *(v1 + 6248) = 19;
  *(v1 + 6216) = "brother-in-law_elder_sisters_husband_gujarati";
  *(v1 + 6200) = 23;
  *(v1 + 6208) = 2;
  *(v1 + 6096) = "uncle_mothers_sisters_husband_gujarati";
  *(v1 + 6176) = 13;
  *(v1 + 6184) = 2;
  *(v1 + 6192) = "brother-in-law_gujarati";
  *(v1 + 6168) = "aunt_gujarati";
  *(v1 + 6160) = 2;
  *(v1 + 6144) = "uncle_fathers_sisters_husband_gujarati";
  *(v1 + 6128) = 36;
  *(v1 + 6136) = 2;
  *(v1 + 6152) = 38;
  *(v1 + 1664) = 13;
  *(v1 + 6120) = "uncle_mothers_elder_brother_gujarati";
  *(v1 + 6104) = 38;
  *(v1 + 6112) = 2;
  *(v1 + 6072) = "uncle_fathers_elder_brother_gujarati";
  *(v1 + 6064) = 2;
  *(v1 + 6080) = 36;
  *(v1 + 6088) = 2;
  *(v1 + 6048) = "father-in-law_hindi";
  *(v1 + 6032) = 19;
  *(v1 + 6040) = 2;
  *(v1 + 6056) = 19;
  *(v1 + 1736) = 13;
  *(v1 + 6024) = "mother-in-law_hindi";
  *(v1 + 6008) = 21;
  *(v1 + 6016) = 2;
  *(v1 + 5976) = "son-in-law_hindi";
  *(v1 + 5984) = 16;
  *(v1 + 5992) = 2;
  *(v1 + 6000) = "daughter-in-law_hindi";
  *(v1 + 5944) = 2;
  *(v1 + 5952) = "co_mother-in-law_hindi";
  *(v1 + 5960) = 22;
  *(v1 + 5968) = 2;
  *(v1 + 5928) = "co_father-in-law_hindi";
  *(v1 + 5920) = 2;
  *(v1 + 5936) = 22;
  *(v1 + 5904) = "grandmother_mothers_mother_hindi";
  *(v1 + 5888) = 32;
  *(v1 + 5896) = 2;
  *(v1 + 5912) = 32;
  *(v1 + 1952) = 13;
  *(v1 + 5880) = "grandmother_fathers_mother_hindi";
  *(v1 + 5864) = 32;
  *(v1 + 5872) = 2;
  *(v1 + 5832) = "grandfather_fathers_father_hindi";
  *(v1 + 5840) = 32;
  *(v1 + 5848) = 2;
  *(v1 + 5856) = "grandfather_mothers_father_hindi";
  *(v1 + 5808) = "brother-in-law_younger_sisters_husband_hindi";
  *(v1 + 5816) = 44;
  *(v1 + 5824) = 2;
  *(v1 + 5712) = "sister-in-law_wifes_sister_hindi";
  *(v1 + 5784) = "brother-in-law_husbands_sisters_husband_hindi";
  *(v1 + 5792) = 45;
  *(v1 + 5800) = 2;
  *(v1 + 5760) = "brother-in-law_elder_sisters_husband_hindi";
  *(v1 + 5768) = 42;
  *(v1 + 5776) = 2;
  *(v1 + 5728) = 2;
  *(v1 + 5736) = "sister-in-law_elder_brothers_wife_hindi";
  *(v1 + 5744) = 39;
  *(v1 + 5752) = 2;
  *(v1 + 2648) = 13;
  *(v1 + 6984) = "uncle_kannada";
  *(v1 + 5696) = 34;
  *(v1 + 5704) = 2;
  *(v1 + 5720) = 32;
  *(v1 + 5672) = 33;
  *(v1 + 5680) = 2;
  *(v1 + 6992) = 13;
  *(v1 + 7008) = "aunt_kannada";
  *(v1 + 7032) = "brother-in-law_kannada";
  *(v1 + 5648) = 31;
  *(v1 + 5656) = 2;
  *(v1 + 7056) = "brother-in-law_husbands_sisters_husband_kannada";
  *(v1 + 5608) = 2;
  *(v1 + 5624) = 25;
  *(v1 + 5632) = 2;
  *(v1 + 7080) = "sister-in-law_kannada";
  *(v1 + 5576) = 31;
  *(v1 + 5584) = 2;
  *(v1 + 5600) = 32;
  *(v1 + 5528) = 25;
  *(v1 + 5536) = 2;
  *(v1 + 5552) = 33;
  *(v1 + 5560) = 2;
  *(v1 + 7104) = "son-in-law_kannada";
  *(v1 + 1088) = 18;
  *(v1 + 5480) = 40;
  *(v1 + 5488) = 2;
  *(v1 + 5504) = 38;
  *(v1 + 5512) = 2;
  *(v1 + 5408) = 33;
  *(v1 + 5416) = 2;
  *(v1 + 5432) = 35;
  *(v1 + 5440) = 2;
  *(v1 + 5464) = 2;
  *(v1 + 7112) = 18;
  *(v1 + 7128) = "daughter-in-law_kannada";
  *(v1 + 7152) = "uncle_tamil";
  *(v1 + 7176) = "uncle_mothers_younger_brother_tamil";
  *(v1 + 7200) = "aunt_tamil";
  *(v1 + 1208) = 10;
  *(v1 + 5360) = 27;
  *(v1 + 5368) = 2;
  *(v1 + 5384) = 35;
  *(v1 + 5392) = 2;
  *(v1 + 1496) = 10;
  *(v1 + 2576) = 10;
  *(v1 + 5312) = 33;
  *(v1 + 5320) = 2;
  *(v1 + 5336) = 35;
  *(v1 + 5344) = 2;
  *(v1 + 4448) = 10;
  *(v1 + 4712) = 10;
  *(v1 + 4856) = 10;
  *(v1 + 5272) = 2;
  *(v1 + 5288) = 35;
  *(v1 + 5296) = 2;
  *(v1 + 4880) = 10;
  *(v1 + 4904) = 10;
  *(v1 + 5000) = 10;
  *(v1 + 5176) = 2;
  *(v1 + 5224) = 2;
  *(v1 + 5248) = 2;
  *(v1 + 5192) = 39;
  *(v1 + 5200) = 2;
  *(v1 + 5216) = 32;
  *(v1 + 7208) = 10;
  *(v1 + 7224) = "brother-in-law_wifes_brother_tamil";
  *(v1 + 7248) = "sister-in-law_wifes_sister_tamil";
  *(v1 + 7272) = "sister-in-law_elder_brothers_wife_tamil";
  *(v1 + 7296) = "brother-in-law_husbands_sisters_husband_tamil";
  *(v1 + 7320) = "brother-in-law_younger_sisters_husband_tamil";
  *(v1 + 5144) = 17;
  *(v1 + 5152) = 2;
  *(v1 + 7344) = "son-in-law_tamil";
  *(v1 + 5128) = 2;
  *(v1 + 7368) = "daughter-in-law_tamil";
  *(v1 + 7392) = "mother-in-law_tamil";
  *(v1 + 5096) = 21;
  *(v1 + 5104) = 2;
  *(v1 + 7416) = "father-in-law_tamil";
  *(v1 + 5056) = 0;
  *(v1 + 5072) = 31;
  *(v1 + 5080) = 2;
  *(v1 + 7440) = "uncle_telugu";
  *(v1 + 1160) = 12;
  *(v1 + 2528) = 12;
  *(v1 + 4784) = 12;
  *(v1 + 5008) = 2;
  *(v1 + 5032) = 2;
  *(v1 + 4912) = 2;
  *(v1 + 4952) = 12;
  *(v1 + 4960) = 2;
  *(v1 + 4976) = 11;
  *(v1 + 4984) = 2;
  *(v1 + 7016) = 12;
  *(v1 + 7448) = 12;
  *(v1 + 7464) = "uncle_fathers_younger_brother_telugu";
  *(v1 + 4936) = 2;
  *(v1 + 7488) = "uncle_mothers_younger_brother_telugu";
  *(v1 + 7512) = "uncle_mothers_elder_brother_telugu";
  *(v1 + 7536) = "aunt_telugu";
  *(v1 + 1112) = 11;
  *(v1 + 1256) = 11;
  *(v1 + 4864) = 2;
  *(v1 + 4888) = 2;
  *(v1 + 1280) = 11;
  *(v1 + 1352) = 11;
  *(v1 + 2624) = 11;
  *(v1 + 4576) = 2;
  *(v1 + 4816) = 2;
  *(v1 + 4840) = 2;
  *(v1 + 4600) = 2;
  *(v1 + 4616) = 19;
  *(v1 + 4624) = 2;
  *(v1 + 4640) = 20;
  *(v1 + 4768) = 2;
  *(v1 + 4792) = 2;
  *(v1 + 4664) = 45;
  *(v1 + 4672) = 2;
  *(v1 + 4688) = 41;
  *(v1 + 4736) = 32;
  *(v1 + 4744) = 2;
  *(v1 + 4760) = 33;
  *(v1 + 4696) = 2;
  *(v1 + 4720) = 2;
  *(v1 + 7160) = 11;
  *(v1 + 7544) = 11;
  *(v1 + 7560) = "aunt_mothers_younger_sister_telugu";
  *(v1 + 7584) = "aunt_mothers_elder_sister_telugu";
  *(v1 + 7608) = "aunt_fathers_elder_sister_telugu";
  *(v1 + 7632) = "brother-in-law_wifes_brother_telugu";
  *(v1 + 7656) = "sister-in-law_wifes_sister_telugu";
  *(v1 + 7680) = "sister-in-law_telugu";
  *(v1 + 4648) = 2;
  *(v1 + 7704) = "brother-in-law_elder_sisters_husband_telugu";
  *(v1 + 7712) = 43;
  *(v1 + 7728) = "brother-in-law_husbands_sisters_husband_telugu";
  *(v1 + 7752) = "brother-in-law_younger_sisters_husband_telugu";
  *(v1 + 7776) = "grandmother_fathers_mother_telugu";
  *(v1 + 7800) = "grandmother_mothers_mother_telugu";
  *(v1 + 7824) = "co_father-in-law_telugu";
  *(v1 + 7848) = "co_mother-in-law_telugu";
  *(v1 + 7872) = "son-in-law_telugu";
  *(v1 + 1040) = 17;
  *(v1 + 4520) = 22;
  *(v1 + 4528) = 2;
  *(v1 + 4544) = 22;
  *(v1 + 4552) = 2;
  *(v1 + 1424) = 17;
  *(v1 + 1448) = 17;
  *(v1 + 1472) = 17;
  *(v1 + 1880) = 17;
  *(v1 + 2504) = 17;
  *(v1 + 4504) = 2;
  *(v1 + 7880) = 17;
  *(v1 + 7896) = "daughter-in-law_telugu";
  *(v1 + 4456) = 2;
  *(v1 + 4480) = 2;
  *(v1 + 1904) = 22;
  *(v1 + 2192) = 22;
  *(v1 + 4400) = 37;
  *(v1 + 4408) = 2;
  *(v1 + 4424) = 35;
  *(v1 + 4432) = 2;
  *(v1 + 4360) = 2;
  *(v1 + 4384) = 2;
  *(v1 + 7040) = 22;
  *(v1 + 7904) = 22;
  *(v1 + 7920) = "mother-in-law_telugu";
  *(v1 + 1064) = 20;
  *(v1 + 1928) = 20;
  *(v1 + 4312) = 2;
  *(v1 + 4336) = 2;
  *(v1 + 4352) = 27;
  *(v1 + 2216) = 20;
  *(v1 + 2888) = 37;
  *(v1 + 3176) = 37;
  *(v1 + 4264) = 2;
  *(v1 + 4288) = 2;
  *(v1 + 4304) = 21;
  *(v1 + 3368) = 37;
  *(v1 + 3440) = 37;
  *(v1 + 3704) = 37;
  *(v1 + 4216) = 2;
  *(v1 + 4240) = 2;
  *(v1 + 4256) = 27;
  *(v1 + 3776) = 37;
  *(v1 + 4024) = 2;
  *(v1 + 4168) = 2;
  *(v1 + 4184) = 27;
  *(v1 + 4192) = 2;
  *(v1 + 4208) = 21;
  *(v1 + 4040) = 27;
  *(v1 + 4048) = 2;
  *(v1 + 4064) = 25;
  *(v1 + 4072) = 2;
  *(v1 + 4136) = 21;
  *(v1 + 4144) = 2;
  *(v1 + 4096) = 2;
  *(v1 + 4120) = 2;
  *(v1 + 7688) = 20;
  *(v1 + 7928) = 20;
  *(v1 + 7944) = "uncle_fathers_younger_brother_bengali";
  *(v1 + 7952) = 37;
  *(v1 + 7992) = "uncle_mothers_sisters_husband_bengali";
  *(v1 + 8000) = 37;
  *(v1 + 8016) = "uncle_mothers_younger_brother_bengali";
  *(v1 + 8024) = 37;
  *(v1 + 8040) = "uncle_mothers_elder_brother_bengali";
  *(v1 + 8064) = "uncle_fathers_sisters_husband_bengali";
  *(v1 + 8072) = 37;
  *(v1 + 8088) = "aunt_fathers_younger_brothers_wife_bengali";
  *(v1 + 3976) = 2;
  *(v1 + 3992) = 32;
  *(v1 + 4000) = 2;
  *(v1 + 4016) = 19;
  *(v1 + 2872) = 2;
  *(v1 + 2896) = 2;
  *(v1 + 3928) = 2;
  *(v1 + 3944) = 25;
  *(v1 + 3952) = 2;
  *(v1 + 3968) = 34;
  *(v1 + 2920) = 2;
  *(v1 + 2936) = 34;
  *(v1 + 3880) = 2;
  *(v1 + 3896) = 27;
  *(v1 + 3904) = 2;
  *(v1 + 3920) = 25;
  *(v1 + 2944) = 2;
  *(v1 + 2960) = 32;
  *(v1 + 3832) = 2;
  *(v1 + 3848) = 25;
  *(v1 + 3856) = 2;
  *(v1 + 3872) = 19;
  *(v1 + 2968) = 2;
  *(v1 + 2984) = 32;
  *(v1 + 3784) = 2;
  *(v1 + 3800) = 19;
  *(v1 + 3808) = 2;
  *(v1 + 3824) = 27;
  *(v1 + 2992) = 2;
  *(v1 + 3008) = 40;
  *(v1 + 3016) = 2;
  *(v1 + 3736) = 2;
  *(v1 + 3752) = 39;
  *(v1 + 3760) = 2;
  *(v1 + 3032) = 38;
  *(v1 + 3040) = 2;
  *(v1 + 3056) = 27;
  *(v1 + 3688) = 2;
  *(v1 + 3712) = 2;
  *(v1 + 3728) = 31;
  *(v1 + 3064) = 2;
  *(v1 + 3080) = 35;
  *(v1 + 3640) = 2;
  *(v1 + 3656) = 31;
  *(v1 + 3664) = 2;
  *(v1 + 3680) = 39;
  *(v1 + 3088) = 2;
  *(v1 + 3104) = 33;
  *(v1 + 3592) = 2;
  *(v1 + 3608) = 23;
  *(v1 + 3616) = 2;
  *(v1 + 3632) = 21;
  *(v1 + 3112) = 2;
  *(v1 + 3128) = 31;
  *(v1 + 3136) = 2;
  *(v1 + 3152) = 39;
  *(v1 + 3544) = 2;
  *(v1 + 3568) = 2;
  *(v1 + 3160) = 2;
  *(v1 + 3184) = 2;
  *(v1 + 3208) = 2;
  *(v1 + 3224) = 34;
  *(v1 + 3496) = 2;
  *(v1 + 3520) = 2;
  *(v1 + 3232) = 2;
  *(v1 + 3248) = 32;
  *(v1 + 3256) = 2;
  *(v1 + 3448) = 2;
  *(v1 + 3464) = 32;
  *(v1 + 3472) = 2;
  *(v1 + 3272) = 32;
  *(v1 + 3280) = 2;
  *(v1 + 3296) = 40;
  *(v1 + 3400) = 2;
  *(v1 + 3416) = 34;
  *(v1 + 3424) = 2;
  *(v1 + 3304) = 2;
  *(v1 + 3320) = 38;
  *(v1 + 3328) = 2;
  *(v1 + 3352) = 2;
  *(v1 + 3376) = 0;
  *(v1 + 3392) = 33;
  *(v1 + 3344) = 27;
  *(v1 + 6976) = 2;
  *(v1 + 7000) = 2;
  *(v1 + 7024) = 2;
  *(v1 + 7048) = 2;
  *(v1 + 7072) = 2;
  *(v1 + 7096) = 2;
  *(v1 + 7120) = 2;
  *(v1 + 7144) = 2;
  *(v1 + 7168) = 2;
  *(v1 + 7192) = 2;
  *(v1 + 7216) = 2;
  *(v1 + 7240) = 2;
  *(v1 + 7264) = 2;
  *(v1 + 7288) = 2;
  *(v1 + 7312) = 2;
  *(v1 + 7336) = 2;
  *(v1 + 7360) = 2;
  *(v1 + 7384) = 2;
  *(v1 + 7408) = 2;
  *(v1 + 7432) = 2;
  *(v1 + 7456) = 2;
  *(v1 + 7480) = 2;
  *(v1 + 7504) = 2;
  *(v1 + 7528) = 2;
  *(v1 + 7552) = 2;
  *(v1 + 7576) = 2;
  *(v1 + 7600) = 2;
  *(v1 + 7624) = 2;
  *(v1 + 7648) = 2;
  *(v1 + 7672) = 2;
  *(v1 + 7696) = 2;
  *(v1 + 7720) = 2;
  *(v1 + 7744) = 2;
  *(v1 + 7768) = 2;
  *(v1 + 7792) = 2;
  *(v1 + 7816) = 2;
  *(v1 + 7840) = 2;
  *(v1 + 7864) = 2;
  *(v1 + 7888) = 2;
  *(v1 + 7912) = 2;
  *(v1 + 7936) = 2;
  *(v1 + 7960) = 2;
  *(v1 + 7984) = 2;
  *(v1 + 8008) = 2;
  *(v1 + 8032) = 2;
  *(v1 + 8056) = 2;
  *(v1 + 8080) = 2;
  *(v1 + 8096) = 42;
  *(v1 + 8112) = "aunt_fathers_elder_brothers_wife_bengali";
  *(v1 + 8104) = 2;
  *(v1 + 8128) = 2;
  *(v1 + 8136) = "aunt_mothers_younger_sister_bengali";
  *(v1 + 8152) = 2;
  *(v1 + 8160) = "aunt_mothers_elder_sister_bengali";
  *(v1 + 8176) = 2;
  *(v1 + 8184) = "aunt_mothers_brothers_wife_bengali";
  *(v1 + 7968) = "uncle_fathers_elder_brother_bengali";
  *(v1 + 8208) = "aunt_fathers_sister_bengali";
  *(v1 + 8232) = "aunt_fathers_elder_sister_bengali";
  *(v1 + 8256) = "aunt_fathers_younger_sister_bengali";
  *(v1 + 8280) = "brother-in-law_wifes_brother_bengali";
  *(v1 + 2824) = 2;
  *(v1 + 2840) = 31;
  *(v1 + 2848) = 2;
  *(v1 + 2864) = 39;
  *(v1 + 2360) = 36;
  *(v1 + 2408) = 36;
  *(v1 + 2776) = 2;
  *(v1 + 2792) = 40;
  *(v1 + 2800) = 2;
  *(v1 + 2816) = 38;
  *(v1 + 2432) = 36;
  *(v1 + 2720) = 35;
  *(v1 + 2728) = 2;
  *(v1 + 2744) = 33;
  *(v1 + 2752) = 2;
  *(v1 + 2768) = 32;
  *(v1 + 7472) = 36;
  *(v1 + 7496) = 36;
  *(v1 + 8288) = 36;
  *(v1 + 8304) = "sister-in-law_wifes_sister_bengali";
  *(v1 + 8328) = "sister-in-law_elder_brothers_wife_bengali";
  *(v1 + 2680) = 2;
  *(v1 + 2696) = 27;
  *(v1 + 2704) = 2;
  *(v1 + 8336) = 41;
  *(v1 + 8352) = "brother-in-law_elder_sisters_husband_bengali";
  *(v1 + 2656) = 2;
  *(v1 + 7328) = 44;
  *(v1 + 8360) = 44;
  *(v1 + 8376) = "brother-in-law_husbands_sisters_husband_bengali";
  *(v1 + 2632) = 2;
  *(v1 + 7064) = 47;
  *(v1 + 8384) = 47;
  *(v1 + 8400) = "brother-in-law_younger_sisters_husband_bengali";
  *(v1 + 2584) = 2;
  *(v1 + 2608) = 2;
  *(v1 + 2392) = 2;
  *(v1 + 2416) = 2;
  *(v1 + 2440) = 2;
  *(v1 + 2456) = 39;
  *(v1 + 2536) = 2;
  *(v1 + 2560) = 2;
  *(v1 + 2464) = 2;
  *(v1 + 2480) = 16;
  *(v1 + 2488) = 2;
  *(v1 + 2512) = 2;
  *(v1 + 7232) = 34;
  *(v1 + 7520) = 34;
  *(v1 + 7568) = 34;
  *(v1 + 7736) = 46;
  *(v1 + 0x2000) = 34;
  *(v1 + 8408) = 46;
  *(v1 + 8312) = 34;
  *(v1 + 8424) = "grandfather_fathers_father_bengali";
  *(v1 + 8432) = 34;
  *(v1 + 8448) = "grandfather_mothers_father_bengali";
  *(v1 + 8456) = 34;
  *(v1 + 8472) = "grandmother_fathers_mother_bengali";
  *(v1 + 8480) = 34;
  *(v1 + 8496) = "daughter-in-law_bengali";
  *(v1 + 2248) = 2;
  *(v1 + 2344) = 2;
  *(v1 + 2368) = 2;
  *(v1 + 2384) = 33;
  *(v1 + 2264) = 31;
  *(v1 + 2272) = 2;
  *(v1 + 2296) = 2;
  *(v1 + 2320) = 2;
  *(v1 + 2336) = 38;
  *(v1 + 6968) = 23;
  *(v1 + 7136) = 23;
  *(v1 + 7832) = 23;
  *(v1 + 7856) = 23;
  *(v1 + 8504) = 23;
  *(v1 + 8520) = "mother-in-law_bengali";
  *(v1 + 8544) = "father-in-law_bengali";
  *(v1 + 8568) = "uncle_fathers_younger_brother_oriya";
  *(v1 + 8592) = "uncle_fathers_elder_brother_oriya";
  *(v1 + 8616) = "uncle_mothers_sisters_husband_oriya";
  *(v1 + 8640) = "uncle_mothers_brother_oriya";
  *(v1 + 2200) = 2;
  *(v1 + 2224) = 2;
  *(v1 + 2096) = 27;
  *(v1 + 2104) = 2;
  *(v1 + 2120) = 35;
  *(v1 + 2128) = 2;
  *(v1 + 2144) = 32;
  *(v1 + 2176) = 2;
  *(v1 + 2152) = 2;
  *(v1 + 8120) = 40;
  *(v1 + 8216) = 27;
  *(v1 + 8648) = 27;
  *(v1 + 8664) = "uncle_mothers_younger_brother_oriya";
  *(v1 + 8688) = "uncle_mothers_elder_brother_oriya";
  *(v1 + 8712) = "uncle_fathers_sisters_husband_oriya";
  *(v1 + 8736) = "aunt_fathers_younger_brothers_wife_oriya";
  *(v1 + 8744) = 40;
  *(v1 + 8760) = "aunt_fathers_elder_brothers_wife_oriya";
  *(v1 + 8768) = 38;
  *(v1 + 2056) = 2;
  *(v1 + 2080) = 2;
  *(v1 + 1024) = 2;
  *(v1 + 1048) = 2;
  *(v1 + 2000) = 19;
  *(v1 + 2008) = 2;
  *(v1 + 2032) = 2;
  *(v1 + 1072) = 2;
  *(v1 + 1096) = 2;
  *(v1 + 1120) = 2;
  *(v1 + 1960) = 2;
  *(v1 + 1976) = 21;
  *(v1 + 1984) = 2;
  *(v1 + 1144) = 2;
  *(v1 + 1168) = 2;
  *(v1 + 1192) = 2;
  *(v1 + 1216) = 2;
  *(v1 + 1912) = 2;
  *(v1 + 1936) = 2;
  *(v1 + 1240) = 2;
  *(v1 + 1264) = 2;
  *(v1 + 1288) = 2;
  *(v1 + 1856) = 16;
  *(v1 + 1864) = 2;
  *(v1 + 1888) = 2;
  *(v1 + 1312) = 2;
  *(v1 + 1336) = 2;
  *(v1 + 1808) = 16;
  *(v1 + 1816) = 2;
  *(v1 + 1832) = 16;
  *(v1 + 1840) = 2;
  *(v1 + 1360) = 2;
  *(v1 + 1384) = 2;
  *(v1 + 1408) = 2;
  *(v1 + 1432) = 2;
  *(v1 + 1768) = 2;
  *(v1 + 1792) = 2;
  *(v1 + 1456) = 2;
  *(v1 + 1480) = 2;
  *(v1 + 1504) = 2;
  *(v1 + 1528) = 2;
  *(v1 + 1720) = 2;
  *(v1 + 1744) = 2;
  *(v1 + 1552) = 2;
  *(v1 + 1568) = 16;
  *(v1 + 1576) = 2;
  *(v1 + 1600) = 2;
  *(v1 + 1672) = 2;
  *(v1 + 1696) = 2;
  *(v1 + 1616) = 19;
  *(v1 + 1624) = 2;
  *(v1 + 1648) = 2;
  *(v1 + 8200) = 2;
  *(v1 + 8224) = 2;
  *(v1 + 8248) = 2;
  *(v1 + 8272) = 2;
  *(v1 + 8296) = 2;
  *(v1 + 8320) = 2;
  *(v1 + 8344) = 2;
  *(v1 + 8368) = 2;
  *(v1 + 8392) = 2;
  *(v1 + 8416) = 2;
  *(v1 + 8440) = 2;
  *(v1 + 8464) = 2;
  *(v1 + 8488) = 2;
  *(v1 + 8512) = 2;
  *(v1 + 8536) = 2;
  *(v1 + 8560) = 2;
  *(v1 + 8584) = 2;
  *(v1 + 8608) = 2;
  *(v1 + 8632) = 2;
  *(v1 + 8656) = 2;
  *(v1 + 8680) = 2;
  *(v1 + 8704) = 2;
  *(v1 + 8728) = 2;
  *(v1 + 8752) = 2;
  *(v1 + 8776) = 2;
  *(v1 + 8800) = 2;
  *(v1 + 8824) = 2;
  *(v1 + 8848) = 2;
  *(v1 + 8872) = 2;
  *(v1 + 8896) = 2;
  *(v1 + 8920) = 2;
  *(v1 + 8944) = 2;
  *(v1 + 8968) = 2;
  *(v1 + 8992) = 2;
  *(v1 + 9016) = 2;
  *(v1 + 8784) = "aunt_mothers_brothers_wife_oriya";
  *(v1 + 8808) = "aunt_fathers_sister_oriya";
  *(v1 + 8816) = 25;
  *(v1 + 8832) = "aunt_fathers_elder_sister_oriya";
  *(v1 + 8840) = 31;
  *(v1 + 8856) = "aunt_fathers_younger_sister_oriya";
  *(v1 + 7664) = 33;
  *(v1 + 7784) = 33;
  *(v1 + 7808) = 33;
  *(v1 + 8168) = 33;
  *(v1 + 8240) = 33;
  *(v1 + 8600) = 33;
  *(v1 + 8696) = 33;
  *(v1 + 8864) = 33;
  *(v1 + 8880) = "sister-in-law_wifes_sister_oriya";
  *(v1 + 7256) = 32;
  *(v1 + 7592) = 32;
  *(v1 + 7616) = 32;
  *(v1 + 8792) = 32;
  *(v1 + 8888) = 32;
  *(v1 + 8904) = "sister-in-law_elder_brothers_wife_oriya";
  *(v1 + 7280) = 39;
  *(v1 + 8912) = 39;
  *(v1 + 8928) = "brother-in-law_husbands_sisters_husband_oriya";
  *(v1 + 7304) = 45;
  *(v1 + 7760) = 45;
  *(v1 + 8936) = 45;
  *(v1 + 8952) = "son-in-law_oriya";
  *(v1 + 7352) = 16;
  *(v1 + 8960) = 16;
  *(v1 + 8976) = "daughter-in-law_oriya";
  *(v1 + 7088) = 21;
  *(v1 + 7376) = 21;
  *(v1 + 8528) = 21;
  *(v1 + 8552) = 21;
  *(v1 + 8984) = 21;
  *(v1 + 9000) = "father-in-law_oriya";
  *(v1 + 7400) = 19;
  *(v1 + 7424) = 19;
  *(v1 + 9008) = 19;
  *(v1 + 7184) = 35;
  *(v1 + 7640) = 35;
  *(v1 + 8048) = 35;
  *(v1 + 8144) = 35;
  *(v1 + 8264) = 35;
  *(v1 + 8576) = 35;
  *(v1 + 8624) = 35;
  *(v1 + 8672) = 35;
  *(v1 + 8720) = 35;
  *(v1 + 7976) = 35;
  nullsub_1(v6);
  v2 = sub_1DD640AA8();

  v3 = v2 - 128;
  if (v2 < 0x80)
  {
    return v2;
  }

  if (v3 < 0x40)
  {
    return v3 | 0x80;
  }

  if (v2 - 192 < 0x40)
  {
    return (v2 - 192) | 0xC0u;
  }

  v5 = v2 - 256;
  result = 289;
  v2 = 256;
  switch(v5)
  {
    case 0uLL:
      return v2;
    case 1uLL:
      return 257;
    case 2uLL:
      return 258;
    case 3uLL:
      return 259;
    case 4uLL:
      return 260;
    case 5uLL:
      return 261;
    case 6uLL:
      return 262;
    case 7uLL:
      return 263;
    case 8uLL:
      return 264;
    case 9uLL:
      return 265;
    case 0xAuLL:
      return 266;
    case 0xBuLL:
      return 267;
    case 0xCuLL:
      return 268;
    case 0xDuLL:
      return 269;
    case 0xEuLL:
      return 270;
    case 0xFuLL:
      return 271;
    case 0x10uLL:
      return 272;
    case 0x11uLL:
      return 273;
    case 0x12uLL:
      return 274;
    case 0x13uLL:
      return 275;
    case 0x14uLL:
      return 276;
    case 0x15uLL:
      return 277;
    case 0x16uLL:
      return 278;
    case 0x17uLL:
      return 279;
    case 0x18uLL:
      return 280;
    case 0x19uLL:
      return 281;
    case 0x1AuLL:
      return 282;
    case 0x1BuLL:
      return 283;
    case 0x1CuLL:
      return 284;
    case 0x1DuLL:
      return 285;
    case 0x1EuLL:
      return 286;
    case 0x1FuLL:
      return 287;
    case 0x20uLL:
      return 288;
    case 0x21uLL:
      return result;
    case 0x22uLL:
      result = 290;
      break;
    case 0x23uLL:
      result = 291;
      break;
    case 0x24uLL:
      result = 292;
      break;
    case 0x25uLL:
      result = 293;
      break;
    case 0x26uLL:
      result = 294;
      break;
    case 0x27uLL:
      result = 295;
      break;
    case 0x28uLL:
      result = 296;
      break;
    case 0x29uLL:
      result = 297;
      break;
    case 0x2AuLL:
      result = 298;
      break;
    case 0x2BuLL:
      result = 299;
      break;
    case 0x2CuLL:
      result = 300;
      break;
    case 0x2DuLL:
      result = 301;
      break;
    case 0x2EuLL:
      result = 302;
      break;
    case 0x2FuLL:
      result = 303;
      break;
    case 0x30uLL:
      result = 304;
      break;
    case 0x31uLL:
      result = 305;
      break;
    case 0x32uLL:
      result = 306;
      break;
    case 0x33uLL:
      result = 307;
      break;
    case 0x34uLL:
      result = 308;
      break;
    case 0x35uLL:
      result = 309;
      break;
    case 0x36uLL:
      result = 310;
      break;
    case 0x37uLL:
      result = 311;
      break;
    case 0x38uLL:
      result = 312;
      break;
    case 0x39uLL:
      result = 313;
      break;
    case 0x3AuLL:
      result = 314;
      break;
    case 0x3BuLL:
      result = 315;
      break;
    case 0x3CuLL:
      result = 316;
      break;
    case 0x3DuLL:
      result = 317;
      break;
    case 0x3EuLL:
      result = 318;
      break;
    case 0x3FuLL:
      result = 319;
      break;
    default:
      result = 376;
      break;
  }

  return result;
}

uint64_t sub_1DD534E3C(__int16 a1)
{
  switch(a1)
  {
    case 1:
    case 10:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDBC68, &unk_1DD647D50);
      v1 = OUTLINED_FUNCTION_6();
      *(v1 + 16) = xmmword_1DD643F80;
      v27 = *MEMORY[0x1E695C4C0];
      *(v1 + 32) = sub_1DD63FDD8();
      *(v1 + 40) = v28;
      *(v1 + 48) = 0xD000000000000010;
      *(v1 + 56) = 0x80000001DD66F6C0;
      return v1;
    case 2:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDBC68, &unk_1DD647D50);
      v1 = OUTLINED_FUNCTION_81_0();
      *(v1 + 16) = xmmword_1DD6444F0;
      v35 = *MEMORY[0x1E695C9E0];
      *(v1 + 32) = sub_1DD63FDD8();
      *(v1 + 40) = v36;
      v37 = *MEMORY[0x1E695CAA0];
      *(v1 + 48) = sub_1DD63FDD8();
      *(v1 + 56) = v38;
      v39 = MEMORY[0x1E695C848];
      goto LABEL_238;
    case 3:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDBC68, &unk_1DD647D50);
      v1 = swift_allocObject();
      *(v1 + 16) = xmmword_1DD658590;
      v56 = *MEMORY[0x1E695C870];
      *(v1 + 32) = sub_1DD63FDD8();
      *(v1 + 40) = v57;
      v58 = *MEMORY[0x1E695C720];
      *(v1 + 48) = sub_1DD63FDD8();
      *(v1 + 56) = v59;
      v60 = *MEMORY[0x1E695C8F8];
      *(v1 + 64) = sub_1DD63FDD8();
      *(v1 + 72) = v61;
      v62 = *MEMORY[0x1E695C590];
      *(v1 + 80) = sub_1DD63FDD8();
      *(v1 + 88) = v63;
      v64 = *MEMORY[0x1E695C9C0];
      *(v1 + 96) = sub_1DD63FDD8();
      *(v1 + 104) = v65;
      v66 = *MEMORY[0x1E695C658];
      *(v1 + 112) = sub_1DD63FDD8();
      *(v1 + 120) = v67;
      v68 = *MEMORY[0x1E695C958];
      *(v1 + 128) = sub_1DD63FDD8();
      *(v1 + 136) = v69;
      v70 = *MEMORY[0x1E695C540];
      *(v1 + 144) = sub_1DD63FDD8();
      *(v1 + 152) = v71;
      v72 = *MEMORY[0x1E695C678];
      *(v1 + 160) = sub_1DD63FDD8();
      *(v1 + 168) = v73;
      v74 = *MEMORY[0x1E695C710];
      *(v1 + 176) = sub_1DD63FDD8();
      *(v1 + 184) = v75;
      v76 = *MEMORY[0x1E695CAA8];
      *(v1 + 192) = sub_1DD63FDD8();
      *(v1 + 200) = v77;
      v78 = *MEMORY[0x1E695CB40];
      *(v1 + 208) = sub_1DD63FDD8();
      *(v1 + 216) = v79;
      v80 = *MEMORY[0x1E695C970];
      *(v1 + 224) = sub_1DD63FDD8();
      *(v1 + 232) = v81;
      v82 = *MEMORY[0x1E695C700];
      *(v1 + 240) = sub_1DD63FDD8();
      *(v1 + 248) = v83;
      v84 = *MEMORY[0x1E695C718];
      *(v1 + 256) = sub_1DD63FDD8();
      *(v1 + 264) = v85;
      v86 = *MEMORY[0x1E695CB30];
      *(v1 + 272) = sub_1DD63FDD8();
      *(v1 + 280) = v87;
      v88 = *MEMORY[0x1E695CB48];
      *(v1 + 288) = sub_1DD63FDD8();
      *(v1 + 296) = v89;
      v90 = *MEMORY[0x1E695C9E0];
      *(v1 + 304) = sub_1DD63FDD8();
      *(v1 + 312) = v91;
      v92 = *MEMORY[0x1E695C848];
      *(v1 + 320) = sub_1DD63FDD8();
      *(v1 + 328) = v93;
      v94 = *MEMORY[0x1E695CAA0];
      *(v1 + 336) = sub_1DD63FDD8();
      *(v1 + 344) = v95;
      v96 = *MEMORY[0x1E695C950];
      *(v1 + 352) = sub_1DD63FDD8();
      *(v1 + 360) = v97;
      return v1;
    case 4:
    case 11:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDBC68, &unk_1DD647D50);
      v1 = OUTLINED_FUNCTION_6();
      *(v1 + 16) = xmmword_1DD643F80;
      v23 = *MEMORY[0x1E695C950];
      *(v1 + 32) = sub_1DD63FDD8();
      *(v1 + 40) = v24;
      v25 = 0x73756F70532D5845;
      v26 = 0xED0000656D614E65;
      goto LABEL_60;
    case 6:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDBC68, &unk_1DD647D50);
      v1 = OUTLINED_FUNCTION_1_89();
      *(v1 + 16) = xmmword_1DD643F90;
      v2 = MEMORY[0x1E695C760];
      goto LABEL_243;
    case 7:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDBC68, &unk_1DD647D50);
      v1 = OUTLINED_FUNCTION_81_0();
      *(v1 + 16) = xmmword_1DD6444F0;
      v234 = *MEMORY[0x1E695C8F8];
      *(v1 + 32) = sub_1DD63FDD8();
      *(v1 + 40) = v235;
      v236 = *MEMORY[0x1E695C870];
      *(v1 + 48) = sub_1DD63FDD8();
      *(v1 + 56) = v237;
      v39 = MEMORY[0x1E695C720];
      goto LABEL_238;
    case 8:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDBC68, &unk_1DD647D50);
      v1 = OUTLINED_FUNCTION_1_89();
      *(v1 + 16) = xmmword_1DD643F90;
      v2 = MEMORY[0x1E695C870];
      goto LABEL_243;
    case 9:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDBC68, &unk_1DD647D50);
      v1 = OUTLINED_FUNCTION_81_0();
      *(v1 + 16) = xmmword_1DD6444F0;
      v142 = *MEMORY[0x1E695C760];
      *(v1 + 32) = sub_1DD63FDD8();
      *(v1 + 40) = v143;
      v144 = *MEMORY[0x1E695C858];
      *(v1 + 48) = sub_1DD63FDD8();
      *(v1 + 56) = v145;
      v39 = MEMORY[0x1E695C750];
      goto LABEL_238;
    case 12:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDBC68, &unk_1DD647D50);
      v1 = OUTLINED_FUNCTION_6();
      *(v1 + 16) = xmmword_1DD643F80;
      v233 = MEMORY[0x1E695C848];
      goto LABEL_240;
    case 13:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDBC68, &unk_1DD647D50);
      v1 = OUTLINED_FUNCTION_1_89();
      *(v1 + 16) = xmmword_1DD643F90;
      v2 = MEMORY[0x1E695C720];
      goto LABEL_243;
    case 14:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDBC68, &unk_1DD647D50);
      v1 = swift_allocObject();
      *(v1 + 16) = xmmword_1DD652040;
      v262 = *MEMORY[0x1E695C970];
      *(v1 + 32) = sub_1DD63FDD8();
      *(v1 + 40) = v263;
      v264 = *MEMORY[0x1E695C700];
      *(v1 + 48) = sub_1DD63FDD8();
      *(v1 + 56) = v265;
      v266 = *MEMORY[0x1E695C718];
      *(v1 + 64) = sub_1DD63FDD8();
      *(v1 + 72) = v267;
      v268 = *MEMORY[0x1E695CB30];
      *(v1 + 80) = sub_1DD63FDD8();
      *(v1 + 88) = v269;
      v229 = MEMORY[0x1E695CB48];
      goto LABEL_218;
    case 15:
    case 40:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDBC68, &unk_1DD647D50);
      v1 = OUTLINED_FUNCTION_6();
      *(v1 + 16) = xmmword_1DD643F80;
      v31 = *MEMORY[0x1E695C700];
      *(v1 + 32) = sub_1DD63FDD8();
      *(v1 + 40) = v32;
      v7 = MEMORY[0x1E695C718];
      goto LABEL_139;
    case 16:
    case 36:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDBC68, &unk_1DD647D50);
      v1 = OUTLINED_FUNCTION_6();
      *(v1 + 16) = xmmword_1DD643F80;
      v29 = *MEMORY[0x1E695CB30];
      *(v1 + 32) = sub_1DD63FDD8();
      *(v1 + 40) = v30;
      v7 = MEMORY[0x1E695CB48];
      goto LABEL_139;
    case 17:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDBC68, &unk_1DD647D50);
      v1 = OUTLINED_FUNCTION_81_0();
      *(v1 + 16) = xmmword_1DD6444F0;
      v282 = *MEMORY[0x1E695C590];
      *(v1 + 32) = sub_1DD63FDD8();
      *(v1 + 40) = v283;
      v284 = *MEMORY[0x1E695C9C0];
      *(v1 + 48) = sub_1DD63FDD8();
      *(v1 + 56) = v285;
      v39 = MEMORY[0x1E695C658];
      goto LABEL_238;
    case 18:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDBC68, &unk_1DD647D50);
      v1 = OUTLINED_FUNCTION_1_89();
      *(v1 + 16) = xmmword_1DD643F90;
      v2 = MEMORY[0x1E695C9F0];
      goto LABEL_243;
    case 19:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDBC68, &unk_1DD647D50);
      v1 = OUTLINED_FUNCTION_1_89();
      *(v1 + 16) = xmmword_1DD643F90;
      v2 = MEMORY[0x1E695C9C0];
      goto LABEL_243;
    case 20:
    case 21:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDBC68, &unk_1DD647D50);
      v1 = OUTLINED_FUNCTION_1_89();
      *(v1 + 16) = xmmword_1DD643F90;
      v2 = MEMORY[0x1E695C658];
      goto LABEL_243;
    case 22:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDBC68, &unk_1DD647D50);
      v1 = OUTLINED_FUNCTION_1_89();
      *(v1 + 16) = xmmword_1DD643F90;
      v2 = MEMORY[0x1E695CAA0];
      goto LABEL_243;
    case 23:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDBC68, &unk_1DD647D50);
      v1 = OUTLINED_FUNCTION_6();
      *(v1 + 16) = xmmword_1DD643F80;
      v233 = MEMORY[0x1E695CAA0];
LABEL_240:
      v288 = *v233;
      *(v1 + 32) = sub_1DD63FDD8();
      *(v1 + 40) = v289;
      v7 = MEMORY[0x1E695C9E0];
      goto LABEL_139;
    case 24:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDBC68, &unk_1DD647D50);
      v1 = OUTLINED_FUNCTION_81_0();
      *(v1 + 16) = xmmword_1DD6444F0;
      v52 = *MEMORY[0x1E695C958];
      *(v1 + 32) = sub_1DD63FDD8();
      *(v1 + 40) = v53;
      v54 = *MEMORY[0x1E695C540];
      *(v1 + 48) = sub_1DD63FDD8();
      *(v1 + 56) = v55;
      v39 = MEMORY[0x1E695C970];
      goto LABEL_238;
    case 25:
    case 32:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDBC68, &unk_1DD647D50);
      v1 = swift_allocObject();
      *(v1 + 16) = xmmword_1DD6504B0;
      v10 = *MEMORY[0x1E695CB20];
      *(v1 + 32) = sub_1DD63FDD8();
      *(v1 + 40) = v11;
      v12 = *MEMORY[0x1E695C540];
      *(v1 + 48) = sub_1DD63FDD8();
      *(v1 + 56) = v13;
      v14 = *MEMORY[0x1E695C970];
      *(v1 + 64) = sub_1DD63FDD8();
      *(v1 + 72) = v15;
      v16 = *MEMORY[0x1E695CAA8];
      *(v1 + 80) = sub_1DD63FDD8();
      *(v1 + 88) = v17;
      v18 = *MEMORY[0x1E695CB40];
      *(v1 + 96) = sub_1DD63FDD8();
      *(v1 + 104) = v19;
      v20 = *MEMORY[0x1E695CB30];
      *(v1 + 112) = sub_1DD63FDD8();
      *(v1 + 120) = v21;
      v22 = MEMORY[0x1E695CB48];
      goto LABEL_135;
    case 26:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDBC68, &unk_1DD647D50);
      v1 = swift_allocObject();
      *(v1 + 16) = xmmword_1DD644F40;
      v98 = *MEMORY[0x1E695C540];
      *(v1 + 32) = sub_1DD63FDD8();
      *(v1 + 40) = v99;
      v100 = *MEMORY[0x1E695C970];
      *(v1 + 48) = sub_1DD63FDD8();
      *(v1 + 56) = v101;
      v102 = *MEMORY[0x1E695CAA8];
      *(v1 + 64) = sub_1DD63FDD8();
      *(v1 + 72) = v103;
      v104 = *MEMORY[0x1E695CB40];
      *(v1 + 80) = sub_1DD63FDD8();
      *(v1 + 88) = v105;
      v106 = *MEMORY[0x1E695CB30];
      *(v1 + 96) = sub_1DD63FDD8();
      *(v1 + 104) = v107;
      v108 = *MEMORY[0x1E695CB48];
      *(v1 + 112) = sub_1DD63FDD8();
      *(v1 + 120) = v109;
      return v1;
    case 27:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDBC68, &unk_1DD647D50);
      v1 = swift_allocObject();
      *(v1 + 16) = xmmword_1DD652040;
      v246 = *MEMORY[0x1E695C540];
      *(v1 + 32) = sub_1DD63FDD8();
      *(v1 + 40) = v247;
      v248 = *MEMORY[0x1E695C678];
      *(v1 + 48) = sub_1DD63FDD8();
      *(v1 + 56) = v249;
      v250 = *MEMORY[0x1E695C710];
      *(v1 + 64) = sub_1DD63FDD8();
      *(v1 + 72) = v251;
      v252 = *MEMORY[0x1E695CAA8];
      *(v1 + 80) = sub_1DD63FDD8();
      *(v1 + 88) = v253;
      v229 = MEMORY[0x1E695CB40];
      goto LABEL_218;
    case 28:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDBC68, &unk_1DD647D50);
      v1 = OUTLINED_FUNCTION_81_0();
      *(v1 + 16) = xmmword_1DD6444F0;
      v258 = *MEMORY[0x1E695C678];
      *(v1 + 32) = sub_1DD63FDD8();
      *(v1 + 40) = v259;
      v232 = MEMORY[0x1E695C710];
      goto LABEL_216;
    case 29:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDBC68, &unk_1DD647D50);
      v1 = OUTLINED_FUNCTION_81_0();
      *(v1 + 16) = xmmword_1DD6444F0;
      v230 = *MEMORY[0x1E695CAA8];
      *(v1 + 32) = sub_1DD63FDD8();
      *(v1 + 40) = v231;
      v232 = MEMORY[0x1E695CB40];
LABEL_216:
      v260 = *v232;
      *(v1 + 48) = sub_1DD63FDD8();
      *(v1 + 56) = v261;
      v39 = MEMORY[0x1E695C540];
      goto LABEL_238;
    case 30:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDBC68, &unk_1DD647D50);
      v1 = OUTLINED_FUNCTION_1_89();
      *(v1 + 16) = xmmword_1DD643F90;
      v2 = MEMORY[0x1E695C5D0];
      goto LABEL_243;
    case 31:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDBC68, &unk_1DD647D50);
      v1 = OUTLINED_FUNCTION_1_89();
      *(v1 + 16) = xmmword_1DD643F90;
      v2 = MEMORY[0x1E695CA28];
      goto LABEL_243;
    case 33:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDBC68, &unk_1DD647D50);
      v1 = swift_allocObject();
      *(v1 + 16) = xmmword_1DD652040;
      v221 = *MEMORY[0x1E695C6F0];
      *(v1 + 32) = sub_1DD63FDD8();
      *(v1 + 40) = v222;
      v223 = *MEMORY[0x1E695C700];
      *(v1 + 48) = sub_1DD63FDD8();
      *(v1 + 56) = v224;
      v225 = *MEMORY[0x1E695C718];
      *(v1 + 64) = sub_1DD63FDD8();
      *(v1 + 72) = v226;
      v227 = *MEMORY[0x1E695C678];
      *(v1 + 80) = sub_1DD63FDD8();
      *(v1 + 88) = v228;
      v229 = MEMORY[0x1E695C710];
LABEL_218:
      v270 = *v229;
      *(v1 + 96) = sub_1DD63FDD8();
      *(v1 + 104) = v271;
      return v1;
    case 34:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDBC68, &unk_1DD647D50);
      v1 = OUTLINED_FUNCTION_1_89();
      *(v1 + 16) = xmmword_1DD643F90;
      v2 = MEMORY[0x1E695CB48];
      goto LABEL_243;
    case 35:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDBC68, &unk_1DD647D50);
      v1 = OUTLINED_FUNCTION_1_89();
      *(v1 + 16) = xmmword_1DD643F90;
      v2 = MEMORY[0x1E695CB40];
      goto LABEL_243;
    case 37:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDBC68, &unk_1DD647D50);
      v1 = OUTLINED_FUNCTION_6();
      *(v1 + 16) = xmmword_1DD643F80;
      v150 = *MEMORY[0x1E695CAA8];
      *(v1 + 32) = sub_1DD63FDD8();
      *(v1 + 40) = v151;
      v7 = MEMORY[0x1E695CB40];
      goto LABEL_139;
    case 38:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDBC68, &unk_1DD647D50);
      v1 = OUTLINED_FUNCTION_1_89();
      *(v1 + 16) = xmmword_1DD643F90;
      v2 = MEMORY[0x1E695C718];
      goto LABEL_243;
    case 39:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDBC68, &unk_1DD647D50);
      v1 = OUTLINED_FUNCTION_1_89();
      *(v1 + 16) = xmmword_1DD643F90;
      v2 = MEMORY[0x1E695C710];
      goto LABEL_243;
    case 41:
    case 44:
    case 45:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDBC68, &unk_1DD647D50);
      v1 = OUTLINED_FUNCTION_6();
      *(v1 + 16) = xmmword_1DD643F80;
      v8 = *MEMORY[0x1E695C678];
      *(v1 + 32) = sub_1DD63FDD8();
      *(v1 + 40) = v9;
      v7 = MEMORY[0x1E695C710];
      goto LABEL_139;
    case 42:
    case 43:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDBC68, &unk_1DD647D50);
      v1 = OUTLINED_FUNCTION_1_89();
      *(v1 + 16) = xmmword_1DD643F90;
      v2 = MEMORY[0x1E695C700];
      goto LABEL_243;
    case 46:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDBC68, &unk_1DD647D50);
      v1 = OUTLINED_FUNCTION_1_89();
      *(v1 + 16) = xmmword_1DD643F90;
      v2 = MEMORY[0x1E695C858];
      goto LABEL_243;
    case 47:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDBC68, &unk_1DD647D50);
      v1 = OUTLINED_FUNCTION_1_89();
      *(v1 + 16) = xmmword_1DD643F90;
      v2 = MEMORY[0x1E695C750];
      goto LABEL_243;
    case 48:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDBC68, &unk_1DD647D50);
      v1 = OUTLINED_FUNCTION_1_89();
      *(v1 + 16) = xmmword_1DD643F90;
      v2 = MEMORY[0x1E695C860];
      goto LABEL_243;
    case 49:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDBC68, &unk_1DD647D50);
      v1 = OUTLINED_FUNCTION_1_89();
      *(v1 + 16) = xmmword_1DD643F90;
      v2 = MEMORY[0x1E695C758];
      goto LABEL_243;
    case 50:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDBC68, &unk_1DD647D50);
      v1 = OUTLINED_FUNCTION_1_89();
      *(v1 + 16) = xmmword_1DD643F90;
      v2 = MEMORY[0x1E695C768];
      goto LABEL_243;
    case 51:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDBC68, &unk_1DD647D50);
      v1 = OUTLINED_FUNCTION_1_89();
      *(v1 + 16) = xmmword_1DD643F90;
      v2 = MEMORY[0x1E695C538];
      goto LABEL_243;
    case 52:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDBC68, &unk_1DD647D50);
      v1 = swift_allocObject();
      *(v1 + 16) = xmmword_1DD6504B0;
      v156 = *MEMORY[0x1E695C7F8];
      *(v1 + 32) = sub_1DD63FDD8();
      *(v1 + 40) = v157;
      v158 = *MEMORY[0x1E695C7B0];
      *(v1 + 48) = sub_1DD63FDD8();
      *(v1 + 56) = v159;
      v160 = *MEMORY[0x1E695C798];
      *(v1 + 64) = sub_1DD63FDD8();
      *(v1 + 72) = v161;
      v162 = *MEMORY[0x1E695C7C0];
      *(v1 + 80) = sub_1DD63FDD8();
      *(v1 + 88) = v163;
      v164 = *MEMORY[0x1E695C7B8];
      *(v1 + 96) = sub_1DD63FDD8();
      *(v1 + 104) = v165;
      v166 = *MEMORY[0x1E695C7A0];
      *(v1 + 112) = sub_1DD63FDD8();
      *(v1 + 120) = v167;
      v22 = MEMORY[0x1E695C7A8];
      goto LABEL_135;
    case 53:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDBC68, &unk_1DD647D50);
      v1 = OUTLINED_FUNCTION_81_0();
      *(v1 + 16) = xmmword_1DD6444F0;
      v254 = *MEMORY[0x1E695C7B0];
      *(v1 + 32) = sub_1DD63FDD8();
      *(v1 + 40) = v255;
      v256 = *MEMORY[0x1E695C7C0];
      *(v1 + 48) = sub_1DD63FDD8();
      *(v1 + 56) = v257;
      v39 = MEMORY[0x1E695C7B8];
      goto LABEL_238;
    case 54:
    case 246:
    case 325:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDBC68, &unk_1DD647D50);
      v1 = OUTLINED_FUNCTION_1_89();
      *(v1 + 16) = xmmword_1DD643F90;
      v2 = MEMORY[0x1E695C7C0];
      goto LABEL_243;
    case 55:
    case 245:
    case 324:
    case 353:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDBC68, &unk_1DD647D50);
      v1 = OUTLINED_FUNCTION_1_89();
      *(v1 + 16) = xmmword_1DD643F90;
      v2 = MEMORY[0x1E695C7B8];
      goto LABEL_243;
    case 56:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDBC68, &unk_1DD647D50);
      v1 = OUTLINED_FUNCTION_81_0();
      *(v1 + 16) = xmmword_1DD6444F0;
      v278 = *MEMORY[0x1E695C798];
      *(v1 + 32) = sub_1DD63FDD8();
      *(v1 + 40) = v279;
      v280 = *MEMORY[0x1E695C7A0];
      *(v1 + 48) = sub_1DD63FDD8();
      *(v1 + 56) = v281;
      v39 = MEMORY[0x1E695C7A8];
      goto LABEL_238;
    case 57:
    case 244:
    case 352:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDBC68, &unk_1DD647D50);
      v1 = OUTLINED_FUNCTION_1_89();
      *(v1 + 16) = xmmword_1DD643F90;
      v2 = MEMORY[0x1E695C7A8];
      goto LABEL_243;
    case 58:
    case 243:
    case 351:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDBC68, &unk_1DD647D50);
      v1 = OUTLINED_FUNCTION_1_89();
      *(v1 + 16) = xmmword_1DD643F90;
      v2 = MEMORY[0x1E695C7A0];
      goto LABEL_243;
    case 59:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDBC68, &unk_1DD647D50);
      v1 = OUTLINED_FUNCTION_81_0();
      *(v1 + 16) = xmmword_1DD6444F0;
      v272 = *MEMORY[0x1E695C838];
      *(v1 + 32) = sub_1DD63FDD8();
      *(v1 + 40) = v273;
      v274 = *MEMORY[0x1E695C828];
      *(v1 + 48) = sub_1DD63FDD8();
      *(v1 + 56) = v275;
      v39 = MEMORY[0x1E695C830];
      goto LABEL_238;
    case 60:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDBC68, &unk_1DD647D50);
      v1 = OUTLINED_FUNCTION_1_89();
      *(v1 + 16) = xmmword_1DD643F90;
      v2 = MEMORY[0x1E695C828];
      goto LABEL_243;
    case 61:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDBC68, &unk_1DD647D50);
      v1 = OUTLINED_FUNCTION_1_89();
      *(v1 + 16) = xmmword_1DD643F90;
      v2 = MEMORY[0x1E695C830];
      goto LABEL_243;
    case 62:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDBC68, &unk_1DD647D50);
      v1 = OUTLINED_FUNCTION_81_0();
      *(v1 + 16) = xmmword_1DD6444F0;
      v146 = *MEMORY[0x1E695C780];
      *(v1 + 32) = sub_1DD63FDD8();
      *(v1 + 40) = v147;
      v148 = *MEMORY[0x1E695C790];
      *(v1 + 48) = sub_1DD63FDD8();
      *(v1 + 56) = v149;
      v39 = MEMORY[0x1E695C800];
      goto LABEL_238;
    case 63:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDBC68, &unk_1DD647D50);
      v1 = OUTLINED_FUNCTION_1_89();
      *(v1 + 16) = xmmword_1DD643F90;
      v2 = MEMORY[0x1E695C790];
      goto LABEL_243;
    case 64:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDBC68, &unk_1DD647D50);
      v1 = OUTLINED_FUNCTION_6();
      *(v1 + 16) = xmmword_1DD643F80;
      v276 = *MEMORY[0x1E695C800];
      *(v1 + 32) = sub_1DD63FDD8();
      *(v1 + 40) = v277;
      v7 = MEMORY[0x1E695C780];
      goto LABEL_139;
    case 65:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDBC68, &unk_1DD647D50);
      v1 = OUTLINED_FUNCTION_81_0();
      *(v1 + 16) = xmmword_1DD6444F0;
      v238 = *MEMORY[0x1E695C810];
      *(v1 + 32) = sub_1DD63FDD8();
      *(v1 + 40) = v239;
      v240 = *MEMORY[0x1E695C840];
      *(v1 + 48) = sub_1DD63FDD8();
      *(v1 + 56) = v241;
      v39 = MEMORY[0x1E695C820];
      goto LABEL_238;
    case 66:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDBC68, &unk_1DD647D50);
      v1 = OUTLINED_FUNCTION_1_89();
      *(v1 + 16) = xmmword_1DD643F90;
      v2 = MEMORY[0x1E695C840];
      goto LABEL_243;
    case 67:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDBC68, &unk_1DD647D50);
      v1 = OUTLINED_FUNCTION_1_89();
      *(v1 + 16) = xmmword_1DD643F90;
      v2 = MEMORY[0x1E695C820];
      goto LABEL_243;
    case 68:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDBC68, &unk_1DD647D50);
      v1 = swift_allocObject();
      *(v1 + 16) = xmmword_1DD6504B0;
      v40 = *MEMORY[0x1E695C900];
      *(v1 + 32) = sub_1DD63FDD8();
      *(v1 + 40) = v41;
      v42 = *MEMORY[0x1E695C878];
      *(v1 + 48) = sub_1DD63FDD8();
      *(v1 + 56) = v43;
      v44 = *MEMORY[0x1E695C728];
      *(v1 + 64) = sub_1DD63FDD8();
      *(v1 + 72) = v45;
      v46 = *MEMORY[0x1E695C890];
      *(v1 + 80) = sub_1DD63FDD8();
      *(v1 + 88) = v47;
      v48 = *MEMORY[0x1E695C880];
      *(v1 + 96) = sub_1DD63FDD8();
      *(v1 + 104) = v49;
      v50 = *MEMORY[0x1E695C740];
      *(v1 + 112) = sub_1DD63FDD8();
      *(v1 + 120) = v51;
      v22 = MEMORY[0x1E695C730];
LABEL_135:
      v168 = *v22;
      *(v1 + 128) = sub_1DD63FDD8();
      *(v1 + 136) = v169;
      return v1;
    case 69:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDBC68, &unk_1DD647D50);
      v1 = OUTLINED_FUNCTION_81_0();
      *(v1 + 16) = xmmword_1DD6444F0;
      v138 = *MEMORY[0x1E695C878];
      *(v1 + 32) = sub_1DD63FDD8();
      *(v1 + 40) = v139;
      v140 = *MEMORY[0x1E695C890];
      *(v1 + 48) = sub_1DD63FDD8();
      *(v1 + 56) = v141;
      v39 = MEMORY[0x1E695C880];
      goto LABEL_238;
    case 70:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDBC68, &unk_1DD647D50);
      v1 = OUTLINED_FUNCTION_1_89();
      *(v1 + 16) = xmmword_1DD643F90;
      v2 = MEMORY[0x1E695C890];
      goto LABEL_243;
    case 71:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDBC68, &unk_1DD647D50);
      v1 = OUTLINED_FUNCTION_1_89();
      *(v1 + 16) = xmmword_1DD643F90;
      v2 = MEMORY[0x1E695C880];
      goto LABEL_243;
    case 72:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDBC68, &unk_1DD647D50);
      v1 = OUTLINED_FUNCTION_81_0();
      *(v1 + 16) = xmmword_1DD6444F0;
      v152 = *MEMORY[0x1E695C728];
      *(v1 + 32) = sub_1DD63FDD8();
      *(v1 + 40) = v153;
      v154 = *MEMORY[0x1E695C740];
      *(v1 + 48) = sub_1DD63FDD8();
      *(v1 + 56) = v155;
      v39 = MEMORY[0x1E695C730];
      goto LABEL_238;
    case 73:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDBC68, &unk_1DD647D50);
      v1 = OUTLINED_FUNCTION_1_89();
      *(v1 + 16) = xmmword_1DD643F90;
      v2 = MEMORY[0x1E695C740];
      goto LABEL_243;
    case 74:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDBC68, &unk_1DD647D50);
      v1 = OUTLINED_FUNCTION_1_89();
      *(v1 + 16) = xmmword_1DD643F90;
      v2 = MEMORY[0x1E695C730];
      goto LABEL_243;
    case 75:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDBC68, &unk_1DD647D50);
      v1 = OUTLINED_FUNCTION_81_0();
      *(v1 + 16) = xmmword_1DD6444F0;
      v242 = *MEMORY[0x1E695C5B8];
      *(v1 + 32) = sub_1DD63FDD8();
      *(v1 + 40) = v243;
      v244 = *MEMORY[0x1E695C5B0];
      *(v1 + 48) = sub_1DD63FDD8();
      *(v1 + 56) = v245;
      v39 = MEMORY[0x1E695C5A8];
LABEL_238:
      v286 = *v39;
      *(v1 + 64) = sub_1DD63FDD8();
      *(v1 + 72) = v287;
      return v1;
    case 76:
    case 248:
    case 327:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDBC68, &unk_1DD647D50);
      v1 = OUTLINED_FUNCTION_1_89();
      *(v1 + 16) = xmmword_1DD643F90;
      v2 = MEMORY[0x1E695C5B0];
      goto LABEL_243;
    case 77:
    case 247:
    case 326:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDBC68, &unk_1DD647D50);
      v1 = OUTLINED_FUNCTION_1_89();
      *(v1 + 16) = xmmword_1DD643F90;
      v2 = MEMORY[0x1E695C5A8];
      goto LABEL_243;
    case 78:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDBC68, &unk_1DD647D50);
      v1 = OUTLINED_FUNCTION_1_89();
      *(v1 + 16) = xmmword_1DD643F90;
      v2 = MEMORY[0x1E695C5C0];
      goto LABEL_243;
    case 79:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDBC68, &unk_1DD647D50);
      v1 = OUTLINED_FUNCTION_1_89();
      *(v1 + 16) = xmmword_1DD643F90;
      v2 = MEMORY[0x1E695CB28];
      goto LABEL_243;
    case 80:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDBC68, &unk_1DD647D50);
      v1 = OUTLINED_FUNCTION_1_89();
      *(v1 + 16) = xmmword_1DD643F90;
      v2 = MEMORY[0x1E695C6F8];
      goto LABEL_243;
    case 81:
    case 295:
    case 320:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDBC68, &unk_1DD647D50);
      v1 = OUTLINED_FUNCTION_1_89();
      *(v1 + 16) = xmmword_1DD643F90;
      v2 = MEMORY[0x1E695C978];
      goto LABEL_243;
    case 82:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDBC68, &unk_1DD647D50);
      v1 = OUTLINED_FUNCTION_1_89();
      *(v1 + 16) = xmmword_1DD643F90;
      v2 = MEMORY[0x1E695CB38];
      goto LABEL_243;
    case 83:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDBC68, &unk_1DD647D50);
      v1 = OUTLINED_FUNCTION_1_89();
      *(v1 + 16) = xmmword_1DD643F90;
      v2 = MEMORY[0x1E695C708];
      goto LABEL_243;
    case 84:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDBC68, &unk_1DD647D50);
      v1 = OUTLINED_FUNCTION_1_89();
      *(v1 + 16) = xmmword_1DD643F90;
      v2 = MEMORY[0x1E695C9A0];
      goto LABEL_243;
    case 85:
    case 238:
    case 302:
    case 319:
    case 346:
    case 370:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDBC68, &unk_1DD647D50);
      v1 = OUTLINED_FUNCTION_1_89();
      *(v1 + 16) = xmmword_1DD643F90;
      v2 = MEMORY[0x1E695C9B0];
      goto LABEL_243;
    case 86:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDBC68, &unk_1DD647D50);
      v1 = OUTLINED_FUNCTION_1_89();
      *(v1 + 16) = xmmword_1DD643F90;
      v2 = MEMORY[0x1E695C998];
      goto LABEL_243;
    case 87:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDBC68, &unk_1DD647D50);
      v1 = OUTLINED_FUNCTION_1_89();
      *(v1 + 16) = xmmword_1DD643F90;
      v2 = MEMORY[0x1E695C980];
      goto LABEL_243;
    case 88:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDBC68, &unk_1DD647D50);
      v1 = OUTLINED_FUNCTION_1_89();
      *(v1 + 16) = xmmword_1DD643F90;
      v2 = MEMORY[0x1E695C9B8];
      goto LABEL_243;
    case 89:
    case 239:
    case 277:
    case 303:
    case 347:
    case 371:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDBC68, &unk_1DD647D50);
      v1 = OUTLINED_FUNCTION_1_89();
      *(v1 + 16) = xmmword_1DD643F90;
      v2 = MEMORY[0x1E695C988];
      goto LABEL_243;
    case 90:
    case 258:
    case 286:
    case 293:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDBC68, &unk_1DD647D50);
      v1 = OUTLINED_FUNCTION_1_89();
      *(v1 + 16) = xmmword_1DD643F90;
      v2 = MEMORY[0x1E695C548];
      goto LABEL_243;
    case 91:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDBC68, &unk_1DD647D50);
      v1 = OUTLINED_FUNCTION_1_89();
      *(v1 + 16) = xmmword_1DD643F90;
      v2 = MEMORY[0x1E695CAB0];
      goto LABEL_243;
    case 92:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDBC68, &unk_1DD647D50);
      v1 = OUTLINED_FUNCTION_1_89();
      *(v1 + 16) = xmmword_1DD643F90;
      v2 = MEMORY[0x1E695C680];
      goto LABEL_243;
    case 93:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDBC68, &unk_1DD647D50);
      v1 = OUTLINED_FUNCTION_1_89();
      *(v1 + 16) = xmmword_1DD643F90;
      v2 = MEMORY[0x1E695C570];
      goto LABEL_243;
    case 94:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDBC68, &unk_1DD647D50);
      v1 = OUTLINED_FUNCTION_1_89();
      *(v1 + 16) = xmmword_1DD643F90;
      v2 = MEMORY[0x1E695C558];
      goto LABEL_243;
    case 95:
    case 237:
    case 301:
    case 318:
    case 345:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDBC68, &unk_1DD647D50);
      v1 = OUTLINED_FUNCTION_1_89();
      *(v1 + 16) = xmmword_1DD643F90;
      v2 = MEMORY[0x1E695C578];
      goto LABEL_243;
    case 96:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDBC68, &unk_1DD647D50);
      v1 = OUTLINED_FUNCTION_1_89();
      *(v1 + 16) = xmmword_1DD643F90;
      v2 = MEMORY[0x1E695C568];
      goto LABEL_243;
    case 97:
    case 242:
    case 280:
    case 305:
    case 323:
    case 350:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDBC68, &unk_1DD647D50);
      v1 = OUTLINED_FUNCTION_1_89();
      *(v1 + 16) = xmmword_1DD643F90;
      v2 = MEMORY[0x1E695C588];
      goto LABEL_243;
    case 98:
    case 240:
    case 259:
    case 278:
    case 321:
    case 348:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDBC68, &unk_1DD647D50);
      v1 = OUTLINED_FUNCTION_1_89();
      *(v1 + 16) = xmmword_1DD643F90;
      v2 = MEMORY[0x1E695C550];
      goto LABEL_243;
    case 99:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDBC68, &unk_1DD647D50);
      v1 = OUTLINED_FUNCTION_1_89();
      *(v1 + 16) = xmmword_1DD643F90;
      v2 = MEMORY[0x1E695C9A8];
      goto LABEL_243;
    case 100:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDBC68, &unk_1DD647D50);
      v1 = OUTLINED_FUNCTION_1_89();
      *(v1 + 16) = xmmword_1DD643F90;
      v2 = MEMORY[0x1E695C990];
      goto LABEL_243;
    case 101:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDBC68, &unk_1DD647D50);
      v1 = OUTLINED_FUNCTION_1_89();
      *(v1 + 16) = xmmword_1DD643F90;
      v2 = MEMORY[0x1E695C580];
      goto LABEL_243;
    case 102:
    case 241:
    case 279:
    case 294:
    case 304:
    case 322:
    case 349:
    case 372:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDBC68, &unk_1DD647D50);
      v1 = OUTLINED_FUNCTION_1_89();
      *(v1 + 16) = xmmword_1DD643F90;
      v2 = MEMORY[0x1E695C560];
      goto LABEL_243;
    case 103:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDBC68, &unk_1DD647D50);
      v1 = OUTLINED_FUNCTION_1_89();
      *(v1 + 16) = xmmword_1DD643F90;
      v2 = MEMORY[0x1E695C5C8];
      goto LABEL_243;
    case 104:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDBC68, &unk_1DD647D50);
      v1 = OUTLINED_FUNCTION_1_89();
      *(v1 + 16) = xmmword_1DD643F90;
      v2 = MEMORY[0x1E695C5A0];
      goto LABEL_243;
    case 105:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDBC68, &unk_1DD647D50);
      v1 = OUTLINED_FUNCTION_1_89();
      *(v1 + 16) = xmmword_1DD643F90;
      v2 = MEMORY[0x1E695C598];
      goto LABEL_243;
    case 106:
    case 250:
    case 261:
    case 282:
    case 288:
    case 297:
    case 307:
    case 329:
    case 354:
    case 374:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDBC68, &unk_1DD647D50);
      v1 = OUTLINED_FUNCTION_1_89();
      *(v1 + 16) = xmmword_1DD643F90;
      v2 = MEMORY[0x1E695C660];
      goto LABEL_243;
    case 107:
    case 249:
    case 260:
    case 281:
    case 287:
    case 296:
    case 306:
    case 328:
    case 373:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDBC68, &unk_1DD647D50);
      v1 = OUTLINED_FUNCTION_1_89();
      *(v1 + 16) = xmmword_1DD643F90;
      v2 = MEMORY[0x1E695C9C8];
      goto LABEL_243;
    case 108:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDBC68, &unk_1DD647D50);
      v1 = swift_allocObject();
      *(v1 + 16) = xmmword_1DD644F50;
      v110 = *MEMORY[0x1E695C5D8];
      *(v1 + 32) = sub_1DD63FDD8();
      *(v1 + 40) = v111;
      v112 = *MEMORY[0x1E695C850];
      *(v1 + 48) = sub_1DD63FDD8();
      *(v1 + 56) = v113;
      v114 = *MEMORY[0x1E695C748];
      *(v1 + 64) = sub_1DD63FDD8();
      *(v1 + 72) = v115;
      v116 = *MEMORY[0x1E695C640];
      *(v1 + 80) = sub_1DD63FDD8();
      *(v1 + 88) = v117;
      v118 = *MEMORY[0x1E695C650];
      *(v1 + 96) = sub_1DD63FDD8();
      *(v1 + 104) = v119;
      v120 = *MEMORY[0x1E695C648];
      *(v1 + 112) = sub_1DD63FDD8();
      *(v1 + 120) = v121;
      v122 = *MEMORY[0x1E695C628];
      *(v1 + 128) = sub_1DD63FDD8();
      *(v1 + 136) = v123;
      v124 = *MEMORY[0x1E695C630];
      *(v1 + 144) = sub_1DD63FDD8();
      *(v1 + 152) = v125;
      v126 = *MEMORY[0x1E695C618];
      *(v1 + 160) = sub_1DD63FDD8();
      *(v1 + 168) = v127;
      v128 = *MEMORY[0x1E695C620];
      *(v1 + 176) = sub_1DD63FDD8();
      *(v1 + 184) = v129;
      v130 = *MEMORY[0x1E695C5F0];
      *(v1 + 192) = sub_1DD63FDD8();
      *(v1 + 200) = v131;
      v132 = *MEMORY[0x1E695C5F8];
      *(v1 + 208) = sub_1DD63FDD8();
      *(v1 + 216) = v133;
      v134 = *MEMORY[0x1E695C5E0];
      *(v1 + 224) = sub_1DD63FDD8();
      *(v1 + 232) = v135;
      v136 = *MEMORY[0x1E695C5E8];
      *(v1 + 240) = sub_1DD63FDD8();
      *(v1 + 248) = v137;
      return v1;
    case 109:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDBC68, &unk_1DD647D50);
      v1 = OUTLINED_FUNCTION_1_89();
      *(v1 + 16) = xmmword_1DD643F90;
      v2 = MEMORY[0x1E695C850];
      goto LABEL_243;
    case 110:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDBC68, &unk_1DD647D50);
      v1 = OUTLINED_FUNCTION_1_89();
      *(v1 + 16) = xmmword_1DD643F90;
      v2 = MEMORY[0x1E695C748];
      goto LABEL_243;
    case 111:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDBC68, &unk_1DD647D50);
      v1 = OUTLINED_FUNCTION_1_89();
      *(v1 + 16) = xmmword_1DD643F90;
      v2 = MEMORY[0x1E695C640];
      goto LABEL_243;
    case 112:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDBC68, &unk_1DD647D50);
      v1 = OUTLINED_FUNCTION_1_89();
      *(v1 + 16) = xmmword_1DD643F90;
      v2 = MEMORY[0x1E695C650];
      goto LABEL_243;
    case 113:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDBC68, &unk_1DD647D50);
      v1 = OUTLINED_FUNCTION_1_89();
      *(v1 + 16) = xmmword_1DD643F90;
      v2 = MEMORY[0x1E695CB18];
      goto LABEL_243;
    case 114:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDBC68, &unk_1DD647D50);
      v1 = OUTLINED_FUNCTION_1_89();
      *(v1 + 16) = xmmword_1DD643F90;
      v2 = MEMORY[0x1E695C6E8];
      goto LABEL_243;
    case 115:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDBC68, &unk_1DD647D50);
      v1 = OUTLINED_FUNCTION_1_89();
      *(v1 + 16) = xmmword_1DD643F90;
      v2 = MEMORY[0x1E695C648];
      goto LABEL_243;
    case 116:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDBC68, &unk_1DD647D50);
      v1 = OUTLINED_FUNCTION_1_89();
      *(v1 + 16) = xmmword_1DD643F90;
      v2 = MEMORY[0x1E695CB10];
      goto LABEL_243;
    case 117:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDBC68, &unk_1DD647D50);
      v1 = OUTLINED_FUNCTION_1_89();
      *(v1 + 16) = xmmword_1DD643F90;
      v2 = MEMORY[0x1E695C6E0];
      goto LABEL_243;
    case 118:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDBC68, &unk_1DD647D50);
      v1 = OUTLINED_FUNCTION_1_89();
      *(v1 + 16) = xmmword_1DD643F90;
      v2 = MEMORY[0x1E695C628];
      goto LABEL_243;
    case 119:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDBC68, &unk_1DD647D50);
      v1 = OUTLINED_FUNCTION_1_89();
      *(v1 + 16) = xmmword_1DD643F90;
      v2 = MEMORY[0x1E695CB00];
      goto LABEL_243;
    case 120:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDBC68, &unk_1DD647D50);
      v1 = OUTLINED_FUNCTION_1_89();
      *(v1 + 16) = xmmword_1DD643F90;
      v2 = MEMORY[0x1E695C6D0];
      goto LABEL_243;
    case 121:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDBC68, &unk_1DD647D50);
      v1 = OUTLINED_FUNCTION_1_89();
      *(v1 + 16) = xmmword_1DD643F90;
      v2 = MEMORY[0x1E695C630];
      goto LABEL_243;
    case 122:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDBC68, &unk_1DD647D50);
      v1 = OUTLINED_FUNCTION_1_89();
      *(v1 + 16) = xmmword_1DD643F90;
      v2 = MEMORY[0x1E695CB08];
      goto LABEL_243;
    case 123:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDBC68, &unk_1DD647D50);
      v1 = OUTLINED_FUNCTION_1_89();
      *(v1 + 16) = xmmword_1DD643F90;
      v2 = MEMORY[0x1E695C6D8];
      goto LABEL_243;
    case 124:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDBC68, &unk_1DD647D50);
      v1 = OUTLINED_FUNCTION_1_89();
      *(v1 + 16) = xmmword_1DD643F90;
      v2 = MEMORY[0x1E695C618];
      goto LABEL_243;
    case 125:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDBC68, &unk_1DD647D50);
      v1 = OUTLINED_FUNCTION_1_89();
      *(v1 + 16) = xmmword_1DD643F90;
      v2 = MEMORY[0x1E695CAE0];
      goto LABEL_243;
    case 126:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDBC68, &unk_1DD647D50);
      v1 = OUTLINED_FUNCTION_1_89();
      *(v1 + 16) = xmmword_1DD643F90;
      v2 = MEMORY[0x1E695C6B0];
      goto LABEL_243;
    case 127:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDBC68, &unk_1DD647D50);
      v1 = OUTLINED_FUNCTION_1_89();
      *(v1 + 16) = xmmword_1DD643F90;
      v2 = MEMORY[0x1E695C620];
      goto LABEL_243;
    case 128:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDBC68, &unk_1DD647D50);
      v1 = OUTLINED_FUNCTION_1_89();
      *(v1 + 16) = xmmword_1DD643F90;
      v2 = MEMORY[0x1E695CAE8];
      goto LABEL_243;
    case 129:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDBC68, &unk_1DD647D50);
      v1 = OUTLINED_FUNCTION_1_89();
      *(v1 + 16) = xmmword_1DD643F90;
      v2 = MEMORY[0x1E695C6B8];
      goto LABEL_243;
    case 130:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDBC68, &unk_1DD647D50);
      v1 = OUTLINED_FUNCTION_1_89();
      *(v1 + 16) = xmmword_1DD643F90;
      v2 = MEMORY[0x1E695C5F0];
      goto LABEL_243;
    case 131:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDBC68, &unk_1DD647D50);
      v1 = OUTLINED_FUNCTION_1_89();
      *(v1 + 16) = xmmword_1DD643F90;
      v2 = MEMORY[0x1E695CAD0];
      goto LABEL_243;
    case 132:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDBC68, &unk_1DD647D50);
      v1 = OUTLINED_FUNCTION_1_89();
      *(v1 + 16) = xmmword_1DD643F90;
      v2 = MEMORY[0x1E695C6A0];
      goto LABEL_243;
    case 133:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDBC68, &unk_1DD647D50);
      v1 = OUTLINED_FUNCTION_1_89();
      *(v1 + 16) = xmmword_1DD643F90;
      v2 = MEMORY[0x1E695C5F8];
      goto LABEL_243;
    case 134:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDBC68, &unk_1DD647D50);
      v1 = OUTLINED_FUNCTION_1_89();
      *(v1 + 16) = xmmword_1DD643F90;
      v2 = MEMORY[0x1E695CAD8];
      goto LABEL_243;
    case 135:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDBC68, &unk_1DD647D50);
      v1 = OUTLINED_FUNCTION_1_89();
      *(v1 + 16) = xmmword_1DD643F90;
      v2 = MEMORY[0x1E695C6A8];
      goto LABEL_243;
    case 136:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDBC68, &unk_1DD647D50);
      v1 = OUTLINED_FUNCTION_1_89();
      *(v1 + 16) = xmmword_1DD643F90;
      v2 = MEMORY[0x1E695C5E0];
      goto LABEL_243;
    case 137:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDBC68, &unk_1DD647D50);
      v1 = OUTLINED_FUNCTION_1_89();
      *(v1 + 16) = xmmword_1DD643F90;
      v2 = MEMORY[0x1E695CAC0];
      goto LABEL_243;
    case 138:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDBC68, &unk_1DD647D50);
      v1 = OUTLINED_FUNCTION_1_89();
      *(v1 + 16) = xmmword_1DD643F90;
      v2 = MEMORY[0x1E695C690];
      goto LABEL_243;
    case 139:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDBC68, &unk_1DD647D50);
      v1 = OUTLINED_FUNCTION_1_89();
      *(v1 + 16) = xmmword_1DD643F90;
      v2 = MEMORY[0x1E695C5E8];
      goto LABEL_243;
    case 140:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDBC68, &unk_1DD647D50);
      v1 = OUTLINED_FUNCTION_1_89();
      *(v1 + 16) = xmmword_1DD643F90;
      v2 = MEMORY[0x1E695CAC8];
      goto LABEL_243;
    case 141:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDBC68, &unk_1DD647D50);
      v1 = OUTLINED_FUNCTION_1_89();
      *(v1 + 16) = xmmword_1DD643F90;
      v2 = MEMORY[0x1E695C698];
      goto LABEL_243;
    case 142:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDBC68, &unk_1DD647D50);
      v1 = OUTLINED_FUNCTION_1_89();
      *(v1 + 16) = xmmword_1DD643F90;
      v2 = MEMORY[0x1E695C600];
      goto LABEL_243;
    case 143:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDBC68, &unk_1DD647D50);
      v1 = OUTLINED_FUNCTION_1_89();
      *(v1 + 16) = xmmword_1DD643F90;
      v2 = MEMORY[0x1E695C608];
      goto LABEL_243;
    case 144:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDBC68, &unk_1DD647D50);
      v1 = OUTLINED_FUNCTION_1_89();
      *(v1 + 16) = xmmword_1DD643F90;
      v2 = MEMORY[0x1E695C610];
      goto LABEL_243;
    case 145:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDBC68, &unk_1DD647D50);
      v1 = OUTLINED_FUNCTION_1_89();
      *(v1 + 16) = xmmword_1DD643F90;
      v2 = MEMORY[0x1E695CAF8];
      goto LABEL_243;
    case 146:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDBC68, &unk_1DD647D50);
      v1 = OUTLINED_FUNCTION_1_89();
      *(v1 + 16) = xmmword_1DD643F90;
      v2 = MEMORY[0x1E695C6C8];
      goto LABEL_243;
    case 147:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDBC68, &unk_1DD647D50);
      v1 = OUTLINED_FUNCTION_1_89();
      *(v1 + 16) = xmmword_1DD643F90;
      v2 = MEMORY[0x1E695CAF0];
      goto LABEL_243;
    case 148:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDBC68, &unk_1DD647D50);
      v1 = OUTLINED_FUNCTION_1_89();
      *(v1 + 16) = xmmword_1DD643F90;
      v2 = MEMORY[0x1E695C6C0];
      goto LABEL_243;
    case 149:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDBC68, &unk_1DD647D50);
      v1 = OUTLINED_FUNCTION_1_89();
      *(v1 + 16) = xmmword_1DD643F90;
      v2 = MEMORY[0x1E695C910];
      goto LABEL_243;
    case 150:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDBC68, &unk_1DD647D50);
      v1 = OUTLINED_FUNCTION_1_89();
      *(v1 + 16) = xmmword_1DD643F90;
      v2 = MEMORY[0x1E695C948];
      goto LABEL_243;
    case 151:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDBC68, &unk_1DD647D50);
      v1 = OUTLINED_FUNCTION_1_89();
      *(v1 + 16) = xmmword_1DD643F90;
      v2 = MEMORY[0x1E695C908];
      goto LABEL_243;
    case 152:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDBC68, &unk_1DD647D50);
      v1 = OUTLINED_FUNCTION_1_89();
      *(v1 + 16) = xmmword_1DD643F90;
      v2 = MEMORY[0x1E695C938];
      goto LABEL_243;
    case 153:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDBC68, &unk_1DD647D50);
      v1 = OUTLINED_FUNCTION_1_89();
      *(v1 + 16) = xmmword_1DD643F90;
      v2 = MEMORY[0x1E695C940];
      goto LABEL_243;
    case 154:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDBC68, &unk_1DD647D50);
      v1 = OUTLINED_FUNCTION_1_89();
      *(v1 + 16) = xmmword_1DD643F90;
      v2 = MEMORY[0x1E695C930];
      goto LABEL_243;
    case 155:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDBC68, &unk_1DD647D50);
      v1 = OUTLINED_FUNCTION_1_89();
      *(v1 + 16) = xmmword_1DD643F90;
      v2 = MEMORY[0x1E695C920];
      goto LABEL_243;
    case 156:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDBC68, &unk_1DD647D50);
      v1 = OUTLINED_FUNCTION_1_89();
      *(v1 + 16) = xmmword_1DD643F90;
      v2 = MEMORY[0x1E695C928];
      goto LABEL_243;
    case 157:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDBC68, &unk_1DD647D50);
      v1 = OUTLINED_FUNCTION_1_89();
      *(v1 + 16) = xmmword_1DD643F90;
      v2 = MEMORY[0x1E695C918];
      goto LABEL_243;
    case 158:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDBC68, &unk_1DD647D50);
      v1 = OUTLINED_FUNCTION_1_89();
      *(v1 + 16) = xmmword_1DD643F90;
      v2 = MEMORY[0x1E695C528];
      goto LABEL_243;
    case 159:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDBC68, &unk_1DD647D50);
      v1 = OUTLINED_FUNCTION_1_89();
      *(v1 + 16) = xmmword_1DD643F90;
      v2 = MEMORY[0x1E695C530];
      goto LABEL_243;
    case 160:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDBC68, &unk_1DD647D50);
      v1 = OUTLINED_FUNCTION_1_89();
      *(v1 + 16) = xmmword_1DD643F90;
      v2 = MEMORY[0x1E695C520];
      goto LABEL_243;
    case 161:
    case 234:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDBC68, &unk_1DD647D50);
      v1 = OUTLINED_FUNCTION_1_89();
      *(v1 + 16) = xmmword_1DD643F90;
      v2 = MEMORY[0x1E695C4E8];
      goto LABEL_243;
    case 162:
    case 236:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDBC68, &unk_1DD647D50);
      v1 = OUTLINED_FUNCTION_1_89();
      *(v1 + 16) = xmmword_1DD643F90;
      v2 = MEMORY[0x1E695C4F8];
      goto LABEL_243;
    case 163:
    case 235:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDBC68, &unk_1DD647D50);
      v1 = OUTLINED_FUNCTION_1_89();
      *(v1 + 16) = xmmword_1DD643F90;
      v2 = MEMORY[0x1E695C4E0];
      goto LABEL_243;
    case 164:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDBC68, &unk_1DD647D50);
      v1 = OUTLINED_FUNCTION_1_89();
      *(v1 + 16) = xmmword_1DD643F90;
      v2 = MEMORY[0x1E695C4D0];
      goto LABEL_243;
    case 165:
    case 228:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDBC68, &unk_1DD647D50);
      v1 = OUTLINED_FUNCTION_1_89();
      *(v1 + 16) = xmmword_1DD643F90;
      v2 = MEMORY[0x1E695C4F0];
      goto LABEL_243;
    case 166:
    case 229:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDBC68, &unk_1DD647D50);
      v1 = OUTLINED_FUNCTION_1_89();
      *(v1 + 16) = xmmword_1DD643F90;
      v2 = MEMORY[0x1E695C4D8];
      goto LABEL_243;
    case 167:
    case 230:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDBC68, &unk_1DD647D50);
      v1 = OUTLINED_FUNCTION_1_89();
      *(v1 + 16) = xmmword_1DD643F90;
      v2 = MEMORY[0x1E695C510];
      goto LABEL_243;
    case 168:
    case 231:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDBC68, &unk_1DD647D50);
      v1 = OUTLINED_FUNCTION_1_89();
      *(v1 + 16) = xmmword_1DD643F90;
      v2 = MEMORY[0x1E695C518];
      goto LABEL_243;
    case 169:
    case 232:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDBC68, &unk_1DD647D50);
      v1 = OUTLINED_FUNCTION_1_89();
      *(v1 + 16) = xmmword_1DD643F90;
      v2 = MEMORY[0x1E695C508];
      goto LABEL_243;
    case 170:
    case 233:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDBC68, &unk_1DD647D50);
      v1 = OUTLINED_FUNCTION_1_89();
      *(v1 + 16) = xmmword_1DD643F90;
      v2 = MEMORY[0x1E695C500];
      goto LABEL_243;
    case 171:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDBC68, &unk_1DD647D50);
      v1 = OUTLINED_FUNCTION_1_89();
      *(v1 + 16) = xmmword_1DD643F90;
      v2 = MEMORY[0x1E695C778];
      goto LABEL_243;
    case 172:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDBC68, &unk_1DD647D50);
      v1 = OUTLINED_FUNCTION_1_89();
      *(v1 + 16) = xmmword_1DD643F90;
      v2 = MEMORY[0x1E695CA88];
      goto LABEL_243;
    case 173:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDBC68, &unk_1DD647D50);
      v1 = OUTLINED_FUNCTION_1_89();
      *(v1 + 16) = xmmword_1DD643F90;
      v2 = MEMORY[0x1E695CA98];
      goto LABEL_243;
    case 174:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDBC68, &unk_1DD647D50);
      v1 = OUTLINED_FUNCTION_1_89();
      *(v1 + 16) = xmmword_1DD643F90;
      v2 = MEMORY[0x1E695CA90];
      goto LABEL_243;
    case 175:
    case 223:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDBC68, &unk_1DD647D50);
      v1 = OUTLINED_FUNCTION_1_89();
      *(v1 + 16) = xmmword_1DD643F90;
      v2 = MEMORY[0x1E695CA68];
      goto LABEL_243;
    case 176:
    case 224:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDBC68, &unk_1DD647D50);
      v1 = OUTLINED_FUNCTION_1_89();
      *(v1 + 16) = xmmword_1DD643F90;
      v2 = MEMORY[0x1E695CA80];
      goto LABEL_243;
    case 177:
    case 225:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDBC68, &unk_1DD647D50);
      v1 = OUTLINED_FUNCTION_1_89();
      *(v1 + 16) = xmmword_1DD643F90;
      v2 = MEMORY[0x1E695CA70];
      goto LABEL_243;
    case 178:
    case 222:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDBC68, &unk_1DD647D50);
      v1 = OUTLINED_FUNCTION_1_89();
      *(v1 + 16) = xmmword_1DD643F90;
      v2 = MEMORY[0x1E695CA78];
      goto LABEL_243;
    case 179:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDBC68, &unk_1DD647D50);
      v1 = OUTLINED_FUNCTION_1_89();
      *(v1 + 16) = xmmword_1DD643F90;
      v2 = MEMORY[0x1E695CA38];
      goto LABEL_243;
    case 180:
    case 220:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDBC68, &unk_1DD647D50);
      v1 = OUTLINED_FUNCTION_1_89();
      *(v1 + 16) = xmmword_1DD643F90;
      v2 = MEMORY[0x1E695CA58];
      goto LABEL_243;
    case 181:
    case 221:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDBC68, &unk_1DD647D50);
      v1 = OUTLINED_FUNCTION_1_89();
      *(v1 + 16) = xmmword_1DD643F90;
      v2 = MEMORY[0x1E695CA40];
      goto LABEL_243;
    case 182:
    case 226:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDBC68, &unk_1DD647D50);
      v1 = OUTLINED_FUNCTION_1_89();
      *(v1 + 16) = xmmword_1DD643F90;
      v2 = MEMORY[0x1E695CA50];
      goto LABEL_243;
    case 183:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDBC68, &unk_1DD647D50);
      v1 = OUTLINED_FUNCTION_1_89();
      *(v1 + 16) = xmmword_1DD643F90;
      v2 = MEMORY[0x1E695CA60];
      goto LABEL_243;
    case 184:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDBC68, &unk_1DD647D50);
      v1 = OUTLINED_FUNCTION_1_89();
      *(v1 + 16) = xmmword_1DD643F90;
      v2 = MEMORY[0x1E695CA48];
      goto LABEL_243;
    case 185:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDBC68, &unk_1DD647D50);
      v1 = OUTLINED_FUNCTION_1_89();
      *(v1 + 16) = xmmword_1DD643F90;
      v2 = MEMORY[0x1E695C808];
      goto LABEL_243;
    case 186:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDBC68, &unk_1DD647D50);
      v1 = OUTLINED_FUNCTION_1_89();
      *(v1 + 16) = xmmword_1DD643F90;
      v2 = MEMORY[0x1E695C968];
      goto LABEL_243;
    case 187:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDBC68, &unk_1DD647D50);
      v1 = OUTLINED_FUNCTION_1_89();
      *(v1 + 16) = xmmword_1DD643F90;
      v2 = MEMORY[0x1E695C8E0];
      goto LABEL_243;
    case 188:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDBC68, &unk_1DD647D50);
      v1 = OUTLINED_FUNCTION_1_89();
      *(v1 + 16) = xmmword_1DD643F90;
      v2 = MEMORY[0x1E695C8E8];
      goto LABEL_243;
    case 189:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDBC68, &unk_1DD647D50);
      v1 = OUTLINED_FUNCTION_1_89();
      *(v1 + 16) = xmmword_1DD643F90;
      v2 = MEMORY[0x1E695C8D0];
      goto LABEL_243;
    case 190:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDBC68, &unk_1DD647D50);
      v1 = OUTLINED_FUNCTION_1_89();
      *(v1 + 16) = xmmword_1DD643F90;
      v2 = MEMORY[0x1E695C8F0];
      goto LABEL_243;
    case 191:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDBC68, &unk_1DD647D50);
      v1 = OUTLINED_FUNCTION_1_89();
      *(v1 + 16) = xmmword_1DD643F90;
      v2 = MEMORY[0x1E695C8D8];
      goto LABEL_243;
    case 192:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDBC68, &unk_1DD647D50);
      v1 = OUTLINED_FUNCTION_1_89();
      *(v1 + 16) = xmmword_1DD643F90;
      v2 = MEMORY[0x1E695C8B8];
      goto LABEL_243;
    case 193:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDBC68, &unk_1DD647D50);
      v1 = OUTLINED_FUNCTION_1_89();
      *(v1 + 16) = xmmword_1DD643F90;
      v2 = MEMORY[0x1E695C8A0];
      goto LABEL_243;
    case 194:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDBC68, &unk_1DD647D50);
      v1 = OUTLINED_FUNCTION_1_89();
      *(v1 + 16) = xmmword_1DD643F90;
      v2 = MEMORY[0x1E695C8A8];
      goto LABEL_243;
    case 195:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDBC68, &unk_1DD647D50);
      v1 = OUTLINED_FUNCTION_1_89();
      *(v1 + 16) = xmmword_1DD643F90;
      v2 = MEMORY[0x1E695C8C0];
      goto LABEL_243;
    case 196:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDBC68, &unk_1DD647D50);
      v1 = OUTLINED_FUNCTION_1_89();
      *(v1 + 16) = xmmword_1DD643F90;
      v2 = MEMORY[0x1E695C7E0];
      goto LABEL_243;
    case 197:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDBC68, &unk_1DD647D50);
      v1 = OUTLINED_FUNCTION_1_89();
      *(v1 + 16) = xmmword_1DD643F90;
      v2 = MEMORY[0x1E695C7F0];
      goto LABEL_243;
    case 198:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDBC68, &unk_1DD647D50);
      v1 = OUTLINED_FUNCTION_1_89();
      *(v1 + 16) = xmmword_1DD643F90;
      v2 = MEMORY[0x1E695C7E8];
      goto LABEL_243;
    case 199:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDBC68, &unk_1DD647D50);
      v1 = OUTLINED_FUNCTION_1_89();
      *(v1 + 16) = xmmword_1DD643F90;
      v2 = MEMORY[0x1E695C7C8];
      goto LABEL_243;
    case 200:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDBC68, &unk_1DD647D50);
      v1 = OUTLINED_FUNCTION_1_89();
      *(v1 + 16) = xmmword_1DD643F90;
      v2 = MEMORY[0x1E695C7D8];
      goto LABEL_243;
    case 201:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDBC68, &unk_1DD647D50);
      v1 = OUTLINED_FUNCTION_1_89();
      *(v1 + 16) = xmmword_1DD643F90;
      v2 = MEMORY[0x1E695C7D0];
      goto LABEL_243;
    case 202:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDBC68, &unk_1DD647D50);
      v1 = OUTLINED_FUNCTION_1_89();
      *(v1 + 16) = xmmword_1DD643F90;
      v2 = MEMORY[0x1E695CA10];
      goto LABEL_243;
    case 203:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDBC68, &unk_1DD647D50);
      v1 = OUTLINED_FUNCTION_1_89();
      *(v1 + 16) = xmmword_1DD643F90;
      v2 = MEMORY[0x1E695CA00];
      goto LABEL_243;
    case 204:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDBC68, &unk_1DD647D50);
      v1 = OUTLINED_FUNCTION_1_89();
      *(v1 + 16) = xmmword_1DD643F90;
      v2 = MEMORY[0x1E695CA08];
      goto LABEL_243;
    case 205:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDBC68, &unk_1DD647D50);
      v1 = OUTLINED_FUNCTION_1_89();
      *(v1 + 16) = xmmword_1DD643F90;
      v2 = MEMORY[0x1E695CA20];
      goto LABEL_243;
    case 206:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDBC68, &unk_1DD647D50);
      v1 = OUTLINED_FUNCTION_1_89();
      *(v1 + 16) = xmmword_1DD643F90;
      v2 = MEMORY[0x1E695C9F8];
      goto LABEL_243;
    case 207:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDBC68, &unk_1DD647D50);
      v1 = OUTLINED_FUNCTION_1_89();
      *(v1 + 16) = xmmword_1DD643F90;
      v2 = MEMORY[0x1E695C9E8];
      goto LABEL_243;
    case 208:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDBC68, &unk_1DD647D50);
      v1 = OUTLINED_FUNCTION_1_89();
      *(v1 + 16) = xmmword_1DD643F90;
      v2 = MEMORY[0x1E695CA18];
      goto LABEL_243;
    case 209:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDBC68, &unk_1DD647D50);
      v1 = OUTLINED_FUNCTION_1_89();
      *(v1 + 16) = xmmword_1DD643F90;
      v2 = MEMORY[0x1E695C888];
      goto LABEL_243;
    case 210:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDBC68, &unk_1DD647D50);
      v1 = OUTLINED_FUNCTION_1_89();
      *(v1 + 16) = xmmword_1DD643F90;
      v2 = MEMORY[0x1E695C738];
      goto LABEL_243;
    case 211:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDBC68, &unk_1DD647D50);
      v1 = OUTLINED_FUNCTION_1_89();
      *(v1 + 16) = xmmword_1DD643F90;
      v2 = MEMORY[0x1E695C670];
      goto LABEL_243;
    case 212:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDBC68, &unk_1DD647D50);
      v1 = OUTLINED_FUNCTION_1_89();
      *(v1 + 16) = xmmword_1DD643F90;
      v2 = MEMORY[0x1E695C9D8];
      goto LABEL_243;
    case 213:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDBC68, &unk_1DD647D50);
      v1 = OUTLINED_FUNCTION_1_89();
      *(v1 + 16) = xmmword_1DD643F90;
      v2 = MEMORY[0x1E695C638];
      goto LABEL_243;
    case 214:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDBC68, &unk_1DD647D50);
      v1 = OUTLINED_FUNCTION_1_89();
      *(v1 + 16) = xmmword_1DD643F90;
      v2 = MEMORY[0x1E695C8B0];
      goto LABEL_243;
    case 215:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDBC68, &unk_1DD647D50);
      v1 = OUTLINED_FUNCTION_1_89();
      *(v1 + 16) = xmmword_1DD643F90;
      v2 = MEMORY[0x1E695C788];
      goto LABEL_243;
    case 216:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDBC68, &unk_1DD647D50);
      v1 = OUTLINED_FUNCTION_1_89();
      *(v1 + 16) = xmmword_1DD643F90;
      v2 = MEMORY[0x1E695C818];
      goto LABEL_243;
    case 217:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDBC68, &unk_1DD647D50);
      v1 = OUTLINED_FUNCTION_1_89();
      *(v1 + 16) = xmmword_1DD643F90;
      v2 = MEMORY[0x1E695C668];
      goto LABEL_243;
    case 218:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDBC68, &unk_1DD647D50);
      v1 = OUTLINED_FUNCTION_1_89();
      *(v1 + 16) = xmmword_1DD643F90;
      v2 = MEMORY[0x1E695C9D0];
      goto LABEL_243;
    case 219:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDBC68, &unk_1DD647D50);
      v1 = swift_allocObject();
      *(v1 + 16) = xmmword_1DD658580;
      v197 = *MEMORY[0x1E695CA30];
      *(v1 + 32) = sub_1DD63FDD8();
      *(v1 + 40) = v198;
      v199 = *MEMORY[0x1E695CA38];
      *(v1 + 48) = sub_1DD63FDD8();
      *(v1 + 56) = v200;
      v201 = *MEMORY[0x1E695CA58];
      *(v1 + 64) = sub_1DD63FDD8();
      *(v1 + 72) = v202;
      v203 = *MEMORY[0x1E695CA40];
      *(v1 + 80) = sub_1DD63FDD8();
      *(v1 + 88) = v204;
      v205 = *MEMORY[0x1E695CA78];
      *(v1 + 96) = sub_1DD63FDD8();
      *(v1 + 104) = v206;
      v207 = *MEMORY[0x1E695CA68];
      *(v1 + 112) = sub_1DD63FDD8();
      *(v1 + 120) = v208;
      v209 = *MEMORY[0x1E695CA80];
      *(v1 + 128) = sub_1DD63FDD8();
      *(v1 + 136) = v210;
      v211 = *MEMORY[0x1E695CA70];
      *(v1 + 144) = sub_1DD63FDD8();
      *(v1 + 152) = v212;
      v213 = *MEMORY[0x1E695CA50];
      *(v1 + 160) = sub_1DD63FDD8();
      *(v1 + 168) = v214;
      v215 = *MEMORY[0x1E695CA88];
      *(v1 + 176) = sub_1DD63FDD8();
      *(v1 + 184) = v216;
      v217 = *MEMORY[0x1E695CA98];
      *(v1 + 192) = sub_1DD63FDD8();
      *(v1 + 200) = v218;
      v196 = MEMORY[0x1E695CA90];
      goto LABEL_152;
    case 227:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDBC68, &unk_1DD647D50);
      v1 = swift_allocObject();
      *(v1 + 16) = xmmword_1DD658580;
      v174 = *MEMORY[0x1E695C4C8];
      *(v1 + 32) = sub_1DD63FDD8();
      *(v1 + 40) = v175;
      v176 = *MEMORY[0x1E695C4E8];
      *(v1 + 48) = sub_1DD63FDD8();
      *(v1 + 56) = v177;
      v178 = *MEMORY[0x1E695C4F8];
      *(v1 + 64) = sub_1DD63FDD8();
      *(v1 + 72) = v179;
      v180 = *MEMORY[0x1E695C4E0];
      *(v1 + 80) = sub_1DD63FDD8();
      *(v1 + 88) = v181;
      v182 = *MEMORY[0x1E695C4D0];
      *(v1 + 96) = sub_1DD63FDD8();
      *(v1 + 104) = v183;
      v184 = *MEMORY[0x1E695C510];
      *(v1 + 112) = sub_1DD63FDD8();
      *(v1 + 120) = v185;
      v186 = *MEMORY[0x1E695C518];
      *(v1 + 128) = sub_1DD63FDD8();
      *(v1 + 136) = v187;
      v188 = *MEMORY[0x1E695C508];
      *(v1 + 144) = sub_1DD63FDD8();
      *(v1 + 152) = v189;
      v190 = *MEMORY[0x1E695C500];
      *(v1 + 160) = sub_1DD63FDD8();
      *(v1 + 168) = v191;
      v192 = *MEMORY[0x1E695C528];
      *(v1 + 176) = sub_1DD63FDD8();
      *(v1 + 184) = v193;
      v194 = *MEMORY[0x1E695C530];
      *(v1 + 192) = sub_1DD63FDD8();
      *(v1 + 200) = v195;
      v196 = MEMORY[0x1E695C520];
LABEL_152:
      v219 = *v196;
      *(v1 + 208) = sub_1DD63FDD8();
      *(v1 + 216) = v220;
      return v1;
    case 251:
    case 262:
    case 289:
    case 308:
    case 330:
    case 355:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDBC68, &unk_1DD647D50);
      v1 = OUTLINED_FUNCTION_1_89();
      *(v1 + 16) = xmmword_1DD643F90;
      v2 = MEMORY[0x1E695C878];
      goto LABEL_243;
    case 252:
    case 263:
    case 283:
    case 290:
    case 309:
    case 356:
    case 375:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDBC68, &unk_1DD647D50);
      v1 = OUTLINED_FUNCTION_1_89();
      *(v1 + 16) = xmmword_1DD643F90;
      v2 = MEMORY[0x1E695C728];
      goto LABEL_243;
    case 253:
    case 265:
    case 332:
    case 358:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDBC68, &unk_1DD647D50);
      v1 = OUTLINED_FUNCTION_6();
      *(v1 + 16) = xmmword_1DD643F80;
      v3 = MEMORY[0x1E695CA40];
      goto LABEL_20;
    case 254:
    case 266:
    case 333:
    case 359:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDBC68, &unk_1DD647D50);
      v1 = OUTLINED_FUNCTION_6();
      *(v1 + 16) = xmmword_1DD643F80;
      v3 = MEMORY[0x1E695CA78];
      goto LABEL_20;
    case 255:
    case 268:
    case 313:
    case 335:
    case 362:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDBC68, &unk_1DD647D50);
      v1 = OUTLINED_FUNCTION_6();
      *(v1 + 16) = xmmword_1DD643F80;
      v3 = MEMORY[0x1E695CA70];
      goto LABEL_20;
    case 256:
    case 269:
    case 336:
    case 363:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDBC68, &unk_1DD647D50);
      v1 = OUTLINED_FUNCTION_6();
      *(v1 + 16) = xmmword_1DD643F80;
      v3 = MEMORY[0x1E695CA50];
      goto LABEL_20;
    case 257:
    case 285:
    case 292:
    case 300:
    case 314:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDBC68, &unk_1DD647D50);
      v1 = OUTLINED_FUNCTION_1_89();
      *(v1 + 16) = xmmword_1DD643F90;
      v2 = MEMORY[0x1E695C4C8];
      goto LABEL_243;
    case 264:
    case 311:
    case 331:
    case 357:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDBC68, &unk_1DD647D50);
      v1 = OUTLINED_FUNCTION_6();
      *(v1 + 16) = xmmword_1DD643F80;
      v3 = MEMORY[0x1E695CA58];
      goto LABEL_20;
    case 267:
    case 299:
    case 312:
    case 334:
    case 361:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDBC68, &unk_1DD647D50);
      v1 = OUTLINED_FUNCTION_6();
      *(v1 + 16) = xmmword_1DD643F80;
      v3 = MEMORY[0x1E695CA80];
      goto LABEL_20;
    case 270:
    case 338:
    case 365:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDBC68, &unk_1DD647D50);
      v1 = OUTLINED_FUNCTION_6();
      *(v1 + 16) = xmmword_1DD643F80;
      v4 = MEMORY[0x1E695C4D8];
      goto LABEL_138;
    case 271:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDBC68, &unk_1DD647D50);
      v1 = OUTLINED_FUNCTION_6();
      *(v1 + 16) = xmmword_1DD643F80;
      v4 = MEMORY[0x1E695C510];
      goto LABEL_138;
    case 272:
    case 315:
    case 339:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDBC68, &unk_1DD647D50);
      v1 = OUTLINED_FUNCTION_6();
      *(v1 + 16) = xmmword_1DD643F80;
      v4 = MEMORY[0x1E695C518];
      goto LABEL_138;
    case 273:
    case 316:
    case 340:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDBC68, &unk_1DD647D50);
      v1 = OUTLINED_FUNCTION_6();
      *(v1 + 16) = xmmword_1DD643F80;
      v4 = MEMORY[0x1E695C508];
      goto LABEL_138;
    case 274:
    case 342:
    case 367:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDBC68, &unk_1DD647D50);
      v1 = OUTLINED_FUNCTION_6();
      *(v1 + 16) = xmmword_1DD643F80;
      v4 = MEMORY[0x1E695C4E8];
      goto LABEL_138;
    case 275:
    case 317:
    case 343:
    case 368:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDBC68, &unk_1DD647D50);
      v1 = OUTLINED_FUNCTION_6();
      *(v1 + 16) = xmmword_1DD643F80;
      v4 = MEMORY[0x1E695C4E0];
      goto LABEL_138;
    case 276:
    case 344:
    case 369:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDBC68, &unk_1DD647D50);
      v1 = OUTLINED_FUNCTION_6();
      *(v1 + 16) = xmmword_1DD643F80;
      v4 = MEMORY[0x1E695C4F8];
      goto LABEL_138;
    case 284:
    case 291:
    case 298:
    case 310:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDBC68, &unk_1DD647D50);
      v1 = OUTLINED_FUNCTION_1_89();
      *(v1 + 16) = xmmword_1DD643F90;
      v2 = MEMORY[0x1E695CA30];
LABEL_243:
      v290 = *v2;
      *(v1 + 32) = sub_1DD63FDD8();
      *(v1 + 40) = v291;
      return v1;
    case 337:
    case 364:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDBC68, &unk_1DD647D50);
      v1 = OUTLINED_FUNCTION_6();
      *(v1 + 16) = xmmword_1DD643F80;
      v4 = MEMORY[0x1E695C4F0];
      goto LABEL_138;
    case 341:
    case 366:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDBC68, &unk_1DD647D50);
      v1 = OUTLINED_FUNCTION_6();
      *(v1 + 16) = xmmword_1DD643F80;
      v4 = MEMORY[0x1E695C500];
LABEL_138:
      v170 = *v4;
      *(v1 + 32) = sub_1DD63FDD8();
      *(v1 + 40) = v171;
      v7 = MEMORY[0x1E695C4C8];
      goto LABEL_139;
    case 360:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDBC68, &unk_1DD647D50);
      v1 = OUTLINED_FUNCTION_6();
      *(v1 + 16) = xmmword_1DD643F80;
      v3 = MEMORY[0x1E695CA68];
LABEL_20:
      v5 = *v3;
      *(v1 + 32) = sub_1DD63FDD8();
      *(v1 + 40) = v6;
      v7 = MEMORY[0x1E695CA30];
LABEL_139:
      v172 = *v7;
      *(v1 + 48) = sub_1DD63FDD8();
      *(v1 + 56) = v173;
      break;
    default:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDBC68, &unk_1DD647D50);
      v1 = OUTLINED_FUNCTION_6();
      *(v1 + 16) = xmmword_1DD643F80;
      v33 = *MEMORY[0x1E695C868];
      *(v1 + 32) = sub_1DD63FDD8();
      *(v1 + 40) = v34;
      v25 = 0x67616E614D2D5845;
      v26 = 0xEA00000000007265;
LABEL_60:
      *(v1 + 48) = v25;
      *(v1 + 56) = v26;
      break;
  }

  return v1;
}