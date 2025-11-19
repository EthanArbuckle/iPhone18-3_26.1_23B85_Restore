double sub_1BD100380@<D0>(_OWORD *a1@<X8>)
{
  sub_1BE048874();
  *a1 = v3;
  a1[1] = v4;
  result = *&v5;
  a1[2] = v5;
  a1[3] = v6;
  return result;
}

uint64_t sub_1BD1003E8(uint64_t a1, uint64_t a2)
{
  v2[18] = a1;
  v2[19] = a2;
  v3 = sub_1BE04CFC4();
  v2[20] = v3;
  v2[21] = *(v3 - 8);
  v2[22] = swift_task_alloc();
  v2[23] = swift_task_alloc();
  v4 = sub_1BE04CFE4();
  v2[24] = v4;
  v2[25] = *(v4 - 8);
  v2[26] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BD100510, 0, 0);
}

uint64_t sub_1BD100510()
{
  sub_1BE04B684();
  sub_1BE04CFB4();
  v1 = sub_1BE04CFD4();
  v2 = sub_1BE052E34();
  if (sub_1BE053494())
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    v4 = sub_1BE04CFA4();
    _os_signpost_emit_with_name_impl(&dword_1BD026000, v1, v2, v4, "perform:SetDefaultCardIntent", "", v3, 2u);
    MEMORY[0x1BFB45F20](v3, -1, -1);
  }

  v6 = *(v0 + 200);
  v5 = *(v0 + 208);
  v8 = *(v0 + 184);
  v7 = *(v0 + 192);
  v10 = *(v0 + 168);
  v9 = *(v0 + 176);
  v11 = *(v0 + 160);

  (*(v10 + 16))(v9, v8, v11);
  sub_1BE04D024();
  swift_allocObject();
  sub_1BE04D014();
  (*(v10 + 8))(v8, v11);
  (*(v6 + 8))(v5, v7);
  sub_1BE048874();
  v12 = *(v0 + 32);
  sub_1BD030458(v0 + 16);
  v13 = [v12 secureElementPass];
  if (!v13)
  {
    goto LABEL_10;
  }

  v14 = v13;
  if (![v13 supportsDefaultCardSelection])
  {

LABEL_10:
    goto LABEL_11;
  }

  [v14 effectiveContactlessPaymentApplicationState];
  IsPersonalized = PKPaymentApplicationStateIsPersonalized();

  if (!IsPersonalized)
  {
LABEL_11:
    sub_1BE0484B4();
    sub_1BD1029F4();
    swift_allocError();
    sub_1BE048B34();
    swift_willThrow();
    sub_1BD100860();

    v21 = *(v0 + 8);
    goto LABEL_12;
  }

  v16 = [objc_allocWithZone(MEMORY[0x1E69B8BD8]) init];
  v17 = v16;
  if (v16)
  {
    v18 = v16;
    sub_1BE048874();
    v19 = *(v0 + 96);
    sub_1BD030458(v0 + 80);
    v20 = [v19 uniqueID];

    [v18 setDefaultPaymentPassIdentifier_];
  }

  sub_1BE048774();

  sub_1BD100860();

  v21 = *(v0 + 8);
LABEL_12:

  return v21();
}

uint64_t sub_1BD100860()
{
  v0 = sub_1BE04CFF4();
  v21 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v1);
  v3 = &v19[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v22 = sub_1BE04CFC4();
  v4 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22, v5);
  v7 = &v19[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_1BE04CFE4();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v19[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1BE04B684();
  v13 = sub_1BE04CFD4();
  sub_1BE04D004();
  v20 = sub_1BE052E24();
  if (sub_1BE053494())
  {
    sub_1BE048964();
    sub_1BE04D034();

    v14 = v21;
    if ((*(v21 + 88))(v3, v0) == *MEMORY[0x1E69E93E8])
    {
      v15 = "[Error] Interval already ended";
    }

    else
    {
      (*(v14 + 8))(v3, v0);
      v15 = "";
    }

    v16 = swift_slowAlloc();
    *v16 = 0;
    v17 = sub_1BE04CFA4();
    _os_signpost_emit_with_name_impl(&dword_1BD026000, v13, v20, v17, "perform:SetDefaultCardIntent", v15, v16, 2u);
    MEMORY[0x1BFB45F20](v16, -1, -1);
  }

  (*(v4 + 8))(v7, v22);
  return (*(v9 + 8))(v12, v8);
}

uint64_t sub_1BD100B4C@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EBD36B10 != -1)
  {
    swift_once();
  }

  v2 = sub_1BE04A884();
  v3 = __swift_project_value_buffer(v2, qword_1EBDAADF8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1BD100C04()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD392B8);
  MEMORY[0x1EEE9AC00](v0 - 8, v1);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD392C0);
  MEMORY[0x1EEE9AC00](v2, v3);
  sub_1BE048CE4();
  sub_1BE048CD4();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD392C8);
  sub_1BE048CC4();

  sub_1BE048CD4();
  sub_1BE048D04();
  return sub_1BE048CA4();
}

uint64_t sub_1BD100DA8(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1BD0F985C;

  return sub_1BD1003E8(a1, v4);
}

uint64_t sub_1BD100E48@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1BD035F7C();
  *a1 = result;
  return result;
}

uint64_t sub_1BD100E70(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_1BD5F0648(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_1BD100EEC(v6);
  return sub_1BE0538D4();
}

void sub_1BD100EEC(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD450F0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v43 - v5;
  v7 = a1[1];
  v8 = sub_1BE053B14();
  if (v8 < v7)
  {
    if (v7 >= -1)
    {
      v9 = v8;
      v10 = v7 / 2;
      if (v7 <= 1)
      {
        v11 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        sub_1BD102A4C();
        v11 = sub_1BE0527B4();
        *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10) = v10;
      }

      v42 = v11 & 0xFFFFFFFFFFFFFF8;
      v55 = ((v11 & 0xFFFFFFFFFFFFFF8) + 32);
      v56 = v10;
      sub_1BD1012C8(&v55, &v53, a1, v9);
      *(v42 + 16) = 0;

      return;
    }

    __break(1u);
    goto LABEL_22;
  }

  if (v7 < 0)
  {
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    return;
  }

  if (v7 >= 2)
  {
    v43 = v1;
    v44 = v7;
    v12 = *a1;
    v13 = -1;
    v14 = 1;
    v49 = v6;
    v50 = v12;
    do
    {
      v46 = v14;
      v47 = v13;
      v15 = *(v50 + 8 * v14);
      v16 = v13;
      v45 = v12;
      do
      {
        v17 = *v12;
        v18 = v15;
        v19 = v17;
        v52 = v18;
        v20 = [v18 localizedName];
        v21 = sub_1BE052434();
        v23 = v22;

        v55 = v21;
        v56 = v23;
        v57 = v19;
        v24 = [v19 localizedName];
        v25 = sub_1BE052434();
        v27 = v26;

        v53 = v25;
        v54 = v27;
        v28 = sub_1BE04B0F4();
        v29 = v49;
        v51 = *(*(v28 - 8) + 56);
        v51(v49, 1, 1, v28);
        sub_1BD0DDEBC();
        v30 = sub_1BE0535E4();
        sub_1BD102A98(v29);

        if (v30)
        {

          if (v30 != -1)
          {
            break;
          }
        }

        else
        {
          v31 = [v52 serialNumber];
          v32 = sub_1BE052434();
          v34 = v33;
          v48 = v33;

          v55 = v32;
          v56 = v34;
          v35 = [v57 serialNumber];
          v36 = sub_1BE052434();
          v38 = v37;

          v53 = v36;
          v54 = v38;
          v51(v29, 1, 1, v28);
          v39 = sub_1BE0535E4();
          sub_1BD102A98(v29);

          if (v39 != -1)
          {
            break;
          }
        }

        if (!v50)
        {
          goto LABEL_23;
        }

        v40 = *v12;
        v15 = *(v12 + 8);
        *v12 = v15;
        *(v12 + 8) = v40;
        v12 -= 8;
      }

      while (!__CFADD__(v16++, 1));
      v14 = v46 + 1;
      v12 = v45 + 8;
      v13 = v47 - 1;
    }

    while (v46 + 1 != v44);
  }
}

void sub_1BD1012C8(void ***a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v160 = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD450F0);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = &v155 - v10;
  v12 = a3[1];
  if (v12 >= 1)
  {
    v157 = a4;
    v13 = 0;
    v14 = MEMORY[0x1E69E7CC0];
    v170 = v11;
    v156 = a3;
    while (1)
    {
      v15 = v13 + 1;
      v164 = v14;
      if (v13 + 1 < v12)
      {
        v168 = v12;
        v158 = v5;
        v159 = v13;
        v16 = *(*a3 + 8 * v15);
        v167 = *a3;
        v17 = v167[v13];
        v18 = v16;
        v19 = v17;
        v173 = v18;
        v20 = [v18 localizedName];
        v21 = sub_1BE052434();
        v23 = v22;

        v176 = v21;
        v177 = v23;
        v172 = v19;
        v24 = [v19 localizedName];
        v25 = sub_1BE052434();
        v27 = v26;

        v174 = v25;
        v175 = v27;
        v28 = v170;
        v29 = sub_1BE04B0F4();
        v30 = *(v29 - 8);
        v31 = *(v30 + 56);
        v171 = (v30 + 56);
        v31(v28, 1, 1, v29);
        v32 = sub_1BD0DDEBC();
        v33 = sub_1BE0535E4();
        sub_1BD102A98(v28);

        v165 = v31;
        v166 = v29;
        v163 = v32;
        v169 = v33;
        if (v33)
        {
        }

        else
        {
          v34 = [v173 serialNumber];
          v35 = sub_1BE052434();
          v37 = v36;

          v176 = v35;
          v177 = v37;
          v38 = v172;
          v39 = [v172 serialNumber];
          v40 = sub_1BE052434();
          v42 = v41;

          v174 = v40;
          v175 = v42;
          v31(v28, 1, 1, v166);
          v169 = sub_1BE0535E4();
          sub_1BD102A98(v28);

          v14 = v164;
        }

        v13 = v159;
        v15 = v159 + 2;
        if (v159 + 2 < v168)
        {
          v43 = &v167[v159 + 2];
          do
          {
            v167 = v15;
            v53 = *(v43 - 1);
            v54 = *v43;
            v55 = v53;
            v172 = v54;
            v56 = [v54 localizedName];
            v57 = sub_1BE052434();
            v59 = v58;

            v176 = v57;
            v177 = v59;
            v173 = v55;
            v60 = [v55 localizedName];
            v61 = sub_1BE052434();
            v63 = v62;

            v174 = v61;
            v175 = v63;
            v64 = v170;
            v65 = v165;
            v66 = v166;
            (v165)(v170, 1, 1, v166);
            v67 = sub_1BE0535E4();
            sub_1BD102A98(v64);

            if (v67)
            {
              v68 = v169 == -1;

              v14 = v164;
              if (v68 == (v67 != -1))
              {
LABEL_14:
                a3 = v156;
                v15 = v167;
                goto LABEL_16;
              }
            }

            else
            {
              v162 = v169 == -1;
              v44 = [v172 serialNumber];
              v45 = sub_1BE052434();
              v47 = v46;
              v161 = v46;

              v176 = v45;
              v177 = v47;
              v48 = [v173 serialNumber];
              v49 = sub_1BE052434();
              v51 = v50;

              v174 = v49;
              v175 = v51;
              v65(v64, 1, 1, v66);
              v52 = sub_1BE0535E4();
              sub_1BD102A98(v64);

              v14 = v164;
              if (((v162 ^ (v52 != -1)) & 1) == 0)
              {
                goto LABEL_14;
              }
            }

            v15 = v167 + 1;
            ++v43;
          }

          while (v168 != (v167 + 1));
          v15 = v168;
          a3 = v156;
LABEL_16:
          v13 = v159;
        }

        v5 = v158;
        if (v169 == -1)
        {
          if (v15 < v13)
          {
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
            return;
          }

          if (v13 < v15)
          {
            v69 = 8 * v15 - 8;
            v70 = 8 * v13;
            v71 = v15;
            v72 = v13;
            do
            {
              v71 = (v71 - 1);
              if (v72 != v71)
              {
                v74 = *a3;
                if (!*a3)
                {
                  goto LABEL_133;
                }

                v73 = *(v74 + v70);
                *(v74 + v70) = *(v74 + v69);
                *(v74 + v69) = v73;
              }

              v72 = (v72 + 1);
              v69 -= 8;
              v70 += 8;
            }

            while (v72 < v71);
          }
        }
      }

      v75 = a3[1];
      if (v15 < v75)
      {
        if (__OFSUB__(v15, v13))
        {
          goto LABEL_125;
        }

        if (v15 - v13 < v157)
        {
          v76 = (v13 + v157);
          if (__OFADD__(v13, v157))
          {
            goto LABEL_126;
          }

          if (v76 >= v75)
          {
            v76 = a3[1];
          }

          if (v76 < v13)
          {
LABEL_127:
            __break(1u);
            goto LABEL_128;
          }

          if (v15 != v76)
          {
            v158 = v5;
            v159 = v13;
            v169 = *a3;
            v77 = v169 + 8 * v15 - 8;
            v78 = (v13 - v15);
            v163 = v76;
            do
            {
              v166 = v77;
              v167 = v15;
              v79 = *(v169 + 8 * v15);
              v165 = v78;
              do
              {
                v80 = *v77;
                v81 = v79;
                v82 = v80;
                v172 = v81;
                v83 = [v81 localizedName];
                v84 = sub_1BE052434();
                v86 = v85;

                v176 = v84;
                v177 = v86;
                v173 = v82;
                v87 = [v82 localizedName];
                v88 = sub_1BE052434();
                v90 = v89;

                v174 = v88;
                v175 = v90;
                v91 = sub_1BE04B0F4();
                v92 = v170;
                v171 = *(*(v91 - 8) + 56);
                v171(v170, 1, 1, v91);
                sub_1BD0DDEBC();
                v93 = sub_1BE0535E4();
                sub_1BD102A98(v92);

                if (v93)
                {

                  if (v93 != -1)
                  {
                    break;
                  }
                }

                else
                {
                  v94 = [v172 serialNumber];
                  v95 = sub_1BE052434();
                  v97 = v96;
                  v168 = v96;

                  v176 = v95;
                  v177 = v97;
                  v98 = [v173 serialNumber];
                  v99 = sub_1BE052434();
                  v101 = v100;

                  v174 = v99;
                  v175 = v101;
                  v171(v92, 1, 1, v91);
                  v102 = sub_1BE0535E4();
                  sub_1BD102A98(v92);

                  if (v102 != -1)
                  {
                    break;
                  }
                }

                if (!v169)
                {
                  goto LABEL_130;
                }

                v103 = *v77;
                v79 = *(v77 + 8);
                *v77 = v79;
                *(v77 + 8) = v103;
                v77 -= 8;
              }

              while (!__CFADD__(v78++, 1));
              v15 = v167 + 1;
              v77 = v166 + 8;
              v78 = v165 - 1;
            }

            while ((v167 + 1) != v163);
            v15 = v163;
            v5 = v158;
            v13 = v159;
            a3 = v156;
            v14 = v164;
          }
        }
      }

      if (v15 < v13)
      {
        goto LABEL_124;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v14 = sub_1BD1D7844(0, *(v14 + 2) + 1, 1, v14);
      }

      v106 = *(v14 + 2);
      v105 = *(v14 + 3);
      v107 = v106 + 1;
      if (v106 >= v105 >> 1)
      {
        v14 = sub_1BD1D7844((v105 > 1), v106 + 1, 1, v14);
      }

      *(v14 + 2) = v107;
      v108 = &v14[16 * v106];
      *(v108 + 4) = v13;
      *(v108 + 5) = v15;
      v109 = *v160;
      if (!*v160)
      {
        goto LABEL_134;
      }

      v13 = v15;
      if (v106)
      {
        while (1)
        {
          v110 = v107 - 1;
          if (v107 >= 4)
          {
            break;
          }

          if (v107 == 3)
          {
            v111 = *(v14 + 4);
            v112 = *(v14 + 5);
            v121 = __OFSUB__(v112, v111);
            v113 = v112 - v111;
            v114 = v121;
LABEL_66:
            if (v114)
            {
              goto LABEL_113;
            }

            v127 = &v14[16 * v107];
            v129 = *v127;
            v128 = *(v127 + 1);
            v130 = __OFSUB__(v128, v129);
            v131 = v128 - v129;
            v132 = v130;
            if (v130)
            {
              goto LABEL_116;
            }

            v133 = &v14[16 * v110 + 32];
            v135 = *v133;
            v134 = *(v133 + 1);
            v121 = __OFSUB__(v134, v135);
            v136 = v134 - v135;
            if (v121)
            {
              goto LABEL_119;
            }

            if (__OFADD__(v131, v136))
            {
              goto LABEL_120;
            }

            if (v131 + v136 >= v113)
            {
              if (v113 < v136)
              {
                v110 = v107 - 2;
              }

              goto LABEL_87;
            }

            goto LABEL_80;
          }

          v137 = &v14[16 * v107];
          v139 = *v137;
          v138 = *(v137 + 1);
          v121 = __OFSUB__(v138, v139);
          v131 = v138 - v139;
          v132 = v121;
LABEL_80:
          if (v132)
          {
            goto LABEL_115;
          }

          v140 = &v14[16 * v110];
          v142 = *(v140 + 4);
          v141 = *(v140 + 5);
          v121 = __OFSUB__(v141, v142);
          v143 = v141 - v142;
          if (v121)
          {
            goto LABEL_118;
          }

          if (v143 < v131)
          {
            goto LABEL_3;
          }

LABEL_87:
          v148 = v110 - 1;
          if (v110 - 1 >= v107)
          {
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
            goto LABEL_127;
          }

          if (!*a3)
          {
            goto LABEL_131;
          }

          v149 = *&v14[16 * v148 + 32];
          v15 = *&v14[16 * v110 + 40];
          sub_1BD101F54((*a3 + 8 * v149), (*a3 + 8 * *&v14[16 * v110 + 32]), (*a3 + 8 * v15), v109);
          if (v5)
          {
            goto LABEL_107;
          }

          if (v15 < v149)
          {
            goto LABEL_109;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v14 = sub_1BD5ED6C8(v14);
          }

          if (v148 >= *(v14 + 2))
          {
            goto LABEL_110;
          }

          v150 = &v14[16 * v148];
          *(v150 + 4) = v149;
          *(v150 + 5) = v15;
          v178 = v14;
          sub_1BD5ED63C(v110);
          v14 = v178;
          v107 = *(v178 + 2);
          if (v107 <= 1)
          {
            goto LABEL_3;
          }
        }

        v115 = &v14[16 * v107 + 32];
        v116 = *(v115 - 64);
        v117 = *(v115 - 56);
        v121 = __OFSUB__(v117, v116);
        v118 = v117 - v116;
        if (v121)
        {
          goto LABEL_111;
        }

        v120 = *(v115 - 48);
        v119 = *(v115 - 40);
        v121 = __OFSUB__(v119, v120);
        v113 = v119 - v120;
        v114 = v121;
        if (v121)
        {
          goto LABEL_112;
        }

        v122 = &v14[16 * v107];
        v124 = *v122;
        v123 = *(v122 + 1);
        v121 = __OFSUB__(v123, v124);
        v125 = v123 - v124;
        if (v121)
        {
          goto LABEL_114;
        }

        v121 = __OFADD__(v113, v125);
        v126 = v113 + v125;
        if (v121)
        {
          goto LABEL_117;
        }

        if (v126 >= v118)
        {
          v144 = &v14[16 * v110 + 32];
          v146 = *v144;
          v145 = *(v144 + 1);
          v121 = __OFSUB__(v145, v146);
          v147 = v145 - v146;
          if (v121)
          {
            goto LABEL_121;
          }

          if (v113 < v147)
          {
            v110 = v107 - 2;
          }

          goto LABEL_87;
        }

        goto LABEL_66;
      }

LABEL_3:
      v12 = a3[1];
      if (v13 >= v12)
      {
        goto LABEL_97;
      }
    }
  }

  v14 = MEMORY[0x1E69E7CC0];
LABEL_97:
  v15 = *v160;
  if (!*v160)
  {
    goto LABEL_135;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_128:
    v14 = sub_1BD5ED6C8(v14);
  }

  v178 = v14;
  v151 = *(v14 + 2);
  if (v151 >= 2)
  {
    while (*a3)
    {
      v152 = *&v14[16 * v151];
      v153 = *&v14[16 * v151 + 24];
      sub_1BD101F54((*a3 + 8 * v152), (*a3 + 8 * *&v14[16 * v151 + 16]), (*a3 + 8 * v153), v15);
      if (v5)
      {
        goto LABEL_107;
      }

      if (v153 < v152)
      {
        goto LABEL_122;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v14 = sub_1BD5ED6C8(v14);
      }

      if (v151 - 2 >= *(v14 + 2))
      {
        goto LABEL_123;
      }

      v154 = &v14[16 * v151];
      *v154 = v152;
      *(v154 + 1) = v153;
      v178 = v14;
      sub_1BD5ED63C(v151 - 1);
      v14 = v178;
      v151 = *(v178 + 2);
      if (v151 <= 1)
      {
        goto LABEL_107;
      }
    }

    goto LABEL_132;
  }

LABEL_107:
}

uint64_t sub_1BD101F54(void **a1, void **a2, char *a3, void **a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD450F0);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v79 = v74 - v10;
  v11 = a2 - a1 + 7;
  if (a2 - a1 >= 0)
  {
    v11 = a2 - a1;
  }

  v12 = v11 >> 3;
  v13 = a3 - a2 + 7;
  if (a3 - a2 >= 0)
  {
    v13 = a3 - a2;
  }

  v14 = v13 >> 3;
  if (v12 >= v13 >> 3)
  {
    if (a4 != a2 || &a2[v14] <= a4)
    {
      memmove(a4, a2, 8 * v14);
    }

    v88 = &a4[v14];
    if (a3 - a2 >= 8 && a2 > a1)
    {
      v83 = a4;
      v77 = a1;
LABEL_28:
      v78 = a2;
      v43 = a2 - 1;
      v44 = (a3 - 8);
      v45 = v88;
      v75 = a2 - 1;
      do
      {
        v82 = v44;
        v46 = *(v45 - 1);
        v76 = v45 - 1;
        v47 = *v43;
        v48 = v46;
        v49 = v47;
        v80 = v48;
        v50 = [v48 localizedName];
        v51 = sub_1BE052434();
        v53 = v52;

        v86 = v51;
        v87 = v53;
        v81 = v49;
        v54 = [v49 localizedName];
        v55 = sub_1BE052434();
        v57 = v56;

        v84 = v55;
        v85 = v57;
        v58 = sub_1BE04B0F4();
        v59 = *(*(v58 - 8) + 56);
        v60 = v79;
        v59(v79, 1, 1, v58);
        sub_1BD0DDEBC();
        v61 = sub_1BE0535E4();
        sub_1BD102A98(v60);

        if (v61)
        {

          if (v61 == -1)
          {
            goto LABEL_36;
          }
        }

        else
        {
          v62 = [v80 serialNumber];
          v63 = sub_1BE052434();
          v65 = v64;
          v74[2] = v64;

          v86 = v63;
          v87 = v65;
          v66 = [v81 serialNumber];
          v67 = sub_1BE052434();
          v69 = v68;

          v84 = v67;
          v85 = v69;
          v59(v60, 1, 1, v58);
          v70 = sub_1BE0535E4();
          sub_1BD102A98(v60);

          if (v70 == -1)
          {
LABEL_36:
            a3 = v82;
            a4 = v83;
            v72 = v75;
            if (v82 + 1 != v78)
            {
              *v82 = *v75;
            }

            if (v88 <= a4 || (a2 = v72, v72 <= v77))
            {
              a2 = v72;
              goto LABEL_43;
            }

            goto LABEL_28;
          }
        }

        v71 = v82;
        a4 = v83;
        v45 = v76;
        if (v82 + 1 != v88)
        {
          *v82 = *v76;
        }

        v44 = v71 - 1;
        v88 = v45;
        v43 = v75;
      }

      while (v45 > a4);
      v88 = v45;
      a2 = v78;
    }
  }

  else
  {
    if (a4 != a1 || &a1[v12] <= a4)
    {
      memmove(a4, a1, 8 * v12);
    }

    v88 = &a4[v12];
    if (a2 - a1 >= 8 && a2 < a3)
    {
      v82 = a3;
      v15 = v79;
      do
      {
        v77 = a1;
        v78 = a2;
        v16 = *a2;
        v83 = a4;
        v17 = *a4;
        v18 = v16;
        v19 = v17;
        v80 = v18;
        v20 = [v18 localizedName];
        v21 = sub_1BE052434();
        v23 = v22;

        v86 = v21;
        v87 = v23;
        v81 = v19;
        v24 = [v19 localizedName];
        v25 = sub_1BE052434();
        v27 = v26;

        v84 = v25;
        v85 = v27;
        v28 = sub_1BE04B0F4();
        v29 = *(*(v28 - 8) + 56);
        v29(v15, 1, 1, v28);
        sub_1BD0DDEBC();
        v30 = sub_1BE0535E4();
        sub_1BD102A98(v15);

        if (v30)
        {

          if (v30 != -1)
          {
            goto LABEL_14;
          }
        }

        else
        {
          v34 = [v80 serialNumber];
          v35 = sub_1BE052434();
          v37 = v36;
          v76 = v36;

          v86 = v35;
          v87 = v37;
          v38 = [v81 serialNumber];
          v39 = sub_1BE052434();
          v41 = v40;

          v84 = v39;
          v85 = v41;
          v29(v15, 1, 1, v28);
          v42 = sub_1BE0535E4();
          sub_1BD102A98(v15);

          if (v42 != -1)
          {
LABEL_14:
            v31 = v83;
            a4 = v83 + 1;
            v32 = v77;
            a2 = v78;
            v33 = v82;
            if (v77 == v83)
            {
              goto LABEL_16;
            }

LABEL_15:
            *v32 = *v31;
            goto LABEL_16;
          }
        }

        v32 = v77;
        v31 = v78;
        a2 = v78 + 1;
        a4 = v83;
        v33 = v82;
        if (v77 != v78)
        {
          goto LABEL_15;
        }

LABEL_16:
        a1 = v32 + 1;
      }

      while (a4 < v88 && a2 < v33);
    }

    a2 = a1;
  }

LABEL_43:
  if (a2 != a4 || a2 >= (a4 + ((v88 - a4 + (v88 - a4 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(a2, a4, 8 * (v88 - a4));
  }

  return 1;
}

uint64_t sub_1BD10266C()
{
  v28 = v0;
  v1 = [objc_opt_self() sharedInstance];
  v0[2] = v1;
  if (v1)
  {
    v2 = [v1 passesOfType_];
    sub_1BD102A4C();
    v3 = sub_1BE052744();

    v27 = MEMORY[0x1E69E7CC0];
    if (v3 >> 62)
    {
      goto LABEL_25;
    }

    for (i = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1BE053704())
    {
      v5 = 0;
      v6 = v3 & 0xC000000000000001;
      v7 = v3 & 0xFFFFFFFFFFFFFF8;
      v8 = &selRef_scheduledTimerWithTimeInterval_repeats_block_;
      v9 = &selRef_startPrecursorPassFlowWithNavController_context_pass_precursorController_parentNavController_presentNavController_completion_;
      v25 = v0;
      v26 = v3 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v6)
        {
          v10 = MEMORY[0x1BFB40900](v5, v3);
        }

        else
        {
          if (v5 >= *(v7 + 16))
          {
            goto LABEL_24;
          }

          v10 = *(v3 + 8 * v5 + 32);
        }

        v11 = v10;
        v0 = (v5 + 1);
        if (__OFADD__(v5, 1))
        {
          break;
        }

        v12 = [v10 v8[110]];
        if (v12)
        {
          v13 = v12;
          if ([v12 v9[239]])
          {
            v14 = i;
            v15 = v6;
            v16 = v3;
            v17 = v8;
            v18 = v9;
            [v13 effectiveContactlessPaymentApplicationState];
            IsPersonalized = PKPaymentApplicationStateIsPersonalized();

            if (IsPersonalized)
            {
              sub_1BE0538C4();
              sub_1BE0538F4();
              sub_1BE053904();
              sub_1BE0538D4();
            }

            else
            {
            }

            v9 = v18;
            v8 = v17;
            v3 = v16;
            v6 = v15;
            i = v14;
            v7 = v26;
          }

          else
          {
          }
        }

        else
        {
        }

        ++v5;
        if (v0 == i)
        {
          v0 = v25;
          goto LABEL_26;
        }
      }

      __break(1u);
LABEL_24:
      __break(1u);
LABEL_25:
      ;
    }

LABEL_26:

    v22 = sub_1BE048964();
    v27 = sub_1BD6D3E0C(v22);
    sub_1BD100E70(&v27);

    v23 = v27;
    v0[3] = v27;
    v24 = swift_task_alloc();
    v0[4] = v24;
    *v24 = v0;
    v24[1] = sub_1BD041AA0;

    return sub_1BD0391EC(v23, 1);
  }

  else
  {
    sub_1BE0484B4();
    sub_1BD1029F4();
    swift_allocError();
    sub_1BE048B24();
    swift_willThrow();
    v20 = v0[1];

    return v20();
  }
}

unint64_t sub_1BD1029F4()
{
  result = qword_1EBD392B0;
  if (!qword_1EBD392B0)
  {
    sub_1BE0484B4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD392B0);
  }

  return result;
}

unint64_t sub_1BD102A4C()
{
  result = qword_1EBD40650;
  if (!qword_1EBD40650)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EBD40650);
  }

  return result;
}

uint64_t sub_1BD102A98(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD450F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1BD102B48()
{
  type metadata accessor for PKPaymentAuthorizationFundingMode(319);
  if (v0 <= 0x3F)
  {
    type metadata accessor for AvailablePass(319);
    if (v1 <= 0x3F)
    {
      sub_1BD10315C(319, &qword_1EBD392F0, &qword_1EBD43BA0);
      if (v2 <= 0x3F)
      {
        type metadata accessor for Passes(319);
        if (v3 <= 0x3F)
        {
          sub_1BD103248(319, &qword_1EBD392F8, &_s18BillingAddressInfoVN, MEMORY[0x1E69E6720]);
          if (v4 <= 0x3F)
          {
            sub_1BD1030A8();
            if (v5 <= 0x3F)
            {
              sub_1BD1030F8(319, &qword_1EBD39300, _s14PaymentSummaryVMa, MEMORY[0x1E69E6720]);
              if (v6 <= 0x3F)
              {
                sub_1BD103248(319, &qword_1EBD39308, MEMORY[0x1E69E6370], MEMORY[0x1E69E6720]);
                if (v7 <= 0x3F)
                {
                  sub_1BD103248(319, &qword_1EBD39310, &type metadata for SheetButton.LayoutStyle, MEMORY[0x1E69E6720]);
                  if (v8 <= 0x3F)
                  {
                    sub_1BD10315C(319, &qword_1EBD39318, &unk_1EBD3E560);
                    if (v9 <= 0x3F)
                    {
                      sub_1BD10315C(319, &qword_1EBD39320, &qword_1EBD496B0);
                      if (v10 <= 0x3F)
                      {
                        sub_1BD103298(319, &qword_1EBD39328, &qword_1EBD39330, &unk_1BE0B8568, MEMORY[0x1E69E6720]);
                        if (v11 <= 0x3F)
                        {
                          sub_1BD1031B4();
                          if (v12 <= 0x3F)
                          {
                            sub_1BD1030F8(319, &qword_1EBD39340, type metadata accessor for PaymentOfferInstallmentPlanSelectionModel, MEMORY[0x1E6981790]);
                            if (v13 <= 0x3F)
                            {
                              sub_1BD103298(319, &qword_1EBD39348, &qword_1EBD39350, &unk_1BE0B8570, MEMORY[0x1E6981790]);
                              if (v14 <= 0x3F)
                              {
                                sub_1BD103298(319, &qword_1EBD39358, &unk_1EBD45160, &unk_1BE0C25A0, MEMORY[0x1E6981790]);
                                if (v15 <= 0x3F)
                                {
                                  sub_1BD103298(319, &qword_1EBD39360, &qword_1EBD49710, &unk_1BE0B8580, MEMORY[0x1E6981790]);
                                  if (v16 <= 0x3F)
                                  {
                                    sub_1BD103298(319, &qword_1EBD39368, &qword_1EBD39370, &unk_1BE0B8588, MEMORY[0x1E6981790]);
                                    if (v17 <= 0x3F)
                                    {
                                      sub_1BD103248(319, &qword_1EBD496E0, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
                                      if (v18 <= 0x3F)
                                      {
                                        sub_1BD103298(319, &qword_1EBD39378, &qword_1EBD39380, &unk_1BE0B8590, MEMORY[0x1E6981790]);
                                        if (v19 <= 0x3F)
                                        {
                                          sub_1BD103298(319, &qword_1EBD39388, &qword_1EBD39390, &unk_1BE0B8598, MEMORY[0x1E6981790]);
                                          if (v20 <= 0x3F)
                                          {
                                            sub_1BD103298(319, &qword_1EBD39398, &qword_1EBD393A0, &unk_1BE0B85A0, MEMORY[0x1E6981790]);
                                            if (v21 <= 0x3F)
                                            {
                                              sub_1BD1030F8(319, &qword_1EBD393A8, MEMORY[0x1E697DBD0], MEMORY[0x1E697DCC0]);
                                              if (v22 <= 0x3F)
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

unint64_t sub_1BD1030A8()
{
  result = qword_1EBD496D0;
  if (!qword_1EBD496D0)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_1EBD496D0);
  }

  return result;
}

void sub_1BD1030F8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1BD10315C(uint64_t a1, unint64_t *a2, unint64_t *a3)
{
  if (!*a2)
  {
    sub_1BD0E5E8C(255, a3);
    v4 = sub_1BE0534B4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1BD1031B4()
{
  if (!qword_1EBD39338)
  {
    type metadata accessor for PresentationContext();
    sub_1BD10CAFC(&unk_1EBD361B0, type metadata accessor for PresentationContext);
    v0 = sub_1BE04EED4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBD39338);
    }
  }
}

void sub_1BD103248(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1BD103298(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_1BD10336C()
{
  sub_1BD1033E0();
  if (v0 <= 0x3F)
  {
    sub_1BD103470();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_1BD1033E0()
{
  if (!qword_1EBD393C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD520A0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD393C8);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_1EBD393C0);
    }
  }
}

void sub_1BD103470()
{
  if (!qword_1EBD393D0)
  {
    sub_1BD0E5E8C(255, &qword_1EBD496B0);
    sub_1BD0E5E8C(255, &qword_1EBD393D8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD393E0);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_1EBD393D0);
    }
  }
}

uint64_t sub_1BD103524@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, void *a12, char *a13, void *a14)
{
  v160 = a6;
  v161 = a8;
  v169 = a7;
  v166 = a3;
  v167 = a5;
  v158 = a2;
  v159 = a4;
  v164 = a9;
  v170 = a14;
  v171 = a12;
  v168 = a10;
  v157 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD45160);
  MEMORY[0x1EEE9AC00](v157, v15);
  v156 = &v143 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17, v18);
  v155 = &v143 - v19;
  v154 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39350);
  MEMORY[0x1EEE9AC00](v154, v20);
  v153 = &v143 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22, v23);
  v152 = &v143 - v24;
  v172 = type metadata accessor for PaymentPassHubView(0);
  v163 = *(v172 - 8);
  MEMORY[0x1EEE9AC00](v172, v25);
  v176 = (&v143 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  v27 = type metadata accessor for PeerPaymentModel();
  v150 = *(v27 - 8);
  v151 = v27;
  MEMORY[0x1EEE9AC00](v27, v28);
  v148 = &v143 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD45480);
  MEMORY[0x1EEE9AC00](v30 - 8, v31);
  v149 = &v143 - v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD43B30);
  MEMORY[0x1EEE9AC00](v33 - 8, v34);
  v174 = &v143 - v35;
  v36 = type metadata accessor for AvailablePass(0);
  v165 = v36;
  v37 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36, v38);
  v175 = &v143 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v40, v41);
  v162 = &v143 - v42;
  v43 = type metadata accessor for Passes(0);
  v44 = v43 - 8;
  MEMORY[0x1EEE9AC00](v43, v45);
  v173 = &v143 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v47, v48);
  v50 = &v143 - v49;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD520A0);
  MEMORY[0x1EEE9AC00](v51 - 8, v52);
  v54 = &v143 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = MEMORY[0x1EEE9AC00](v55, v56);
  v59 = &v143 - v58;
  (*(v37 + 56))(&v143 - v58, 1, 1, v36, v57);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  sub_1BD0DE53C(v59, &qword_1EBD520A0);
  sub_1BD0DE19C(v50, v59, &qword_1EBD520A0);
  sub_1BD10E3D0(v50, type metadata accessor for Passes);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  v60 = *&v50[*(v44 + 28)];
  v61 = v60;
  sub_1BD10E3D0(v50, type metadata accessor for Passes);
  sub_1BD0DE19C(v59, v54, &qword_1EBD520A0);
  if ((*(v37 + 48))(v54, 1, v165) == 1)
  {
    sub_1BD0DE53C(v59, &qword_1EBD520A0);

    sub_1BD0DE53C(v54, &qword_1EBD520A0);
    return (*(v163 + 56))(v164, 1, 1, v172);
  }

  v147 = v60;
  v63 = v162;
  sub_1BD10D4F0(v54, v162, type metadata accessor for AvailablePass);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  v146 = v185;
  sub_1BD10CD64(v63, v175, type metadata accessor for AvailablePass);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  v187 = v182;
  v188 = v183;
  v189 = v184;
  v185 = v180;
  v186 = v181;
  swift_getKeyPath();
  swift_getKeyPath();
  v64 = v174;
  sub_1BE04D8B4();

  v65 = _s14PaymentSummaryVMa();
  (*(*(v65 - 8) + 56))(v64, 0, 1, v65);
  swift_getKeyPath();
  swift_getKeyPath();
  v66 = v149;
  sub_1BE04D8B4();

  v67 = v151;
  v68 = (*(v150 + 48))(v66, 1, v151);
  v69 = a1;
  v144 = v59;
  if (v68)
  {
    sub_1BD0DE53C(v66, &qword_1EBD45480);
    LODWORD(v151) = 2;
  }

  else
  {
    v70 = v148;
    sub_1BD10CD64(v66, v148, type metadata accessor for PeerPaymentModel);
    sub_1BD0DE53C(v66, &qword_1EBD45480);
    LODWORD(v151) = *(v70 + *(v67 + 40));
    sub_1BD10E3D0(v70, type metadata accessor for PeerPaymentModel);
  }

  v71 = v172;
  v149 = a13;
  v150 = a11;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  v165 = v180;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  v72 = v180;
  v145 = v69;
  LODWORD(v148) = sub_1BD1C2074(v69);
  v73 = v176;
  v74 = (v176 + v71[22]);
  type metadata accessor for PresentationContext();
  sub_1BD10CAFC(&unk_1EBD361B0, type metadata accessor for PresentationContext);
  *v74 = sub_1BE04EEC4();
  v74[1] = v75;
  v76 = type metadata accessor for PaymentPassHubView.DetailSheet(0);
  v77 = v152;
  (*(*(v76 - 8) + 56))(v152, 1, 1, v76);
  sub_1BD0DE19C(v77, v153, &qword_1EBD39350);
  sub_1BE051694();
  sub_1BD0DE53C(v77, &qword_1EBD39350);
  v78 = type metadata accessor for MultiHyperLinkDetailSheet();
  v79 = v155;
  (*(*(v78 - 8) + 56))(v155, 1, 1, v78);
  sub_1BD0DE19C(v79, v156, &unk_1EBD45160);
  sub_1BE051694();
  v80 = v79;
  v81 = v72;
  sub_1BD0DE53C(v80, &unk_1EBD45160);
  v82 = v71[26];
  *v178 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49710);
  sub_1BE051694();
  *(v73 + v82) = v180;
  v83 = (v73 + v71[27]);
  *v178 = MEMORY[0x1E69E7CD0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39370);
  sub_1BE051694();
  v84 = *(&v180 + 1);
  *v83 = v180;
  v83[1] = v84;
  v178[0] = 0;
  sub_1BE051694();
  v85 = *(&v180 + 1);
  v86 = v73 + v71[29];
  v178[0] = 0;
  sub_1BE051694();
  v87 = *(&v180 + 1);
  *v86 = v180;
  *(v86 + 1) = v87;
  v88 = v71[30];
  *v178 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39380);
  sub_1BE051694();
  *(v73 + v88) = v180;
  v89 = v73 + v71[31];
  memset(v178, 0, 41);
  v178[41] = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39390);
  sub_1BE051694();
  v90 = v181;
  *v89 = v180;
  *(v89 + 16) = v90;
  *(v89 + 32) = v182;
  v156 = v89;
  *(v89 + 48) = v183;
  v91 = v71[32];
  *&v177[0] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD393A0);
  sub_1BE051694();
  *(v73 + v91) = *v178;
  v92 = v71[33];
  *(v73 + v92) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4E5B0);
  swift_storeEnumTagMultiPayload();
  v157 = v85;
  if (v72)
  {
    v93 = v72;
    sub_1BD49C81C(v93);
    v94 = sub_1BE052404();

    v95 = [v93 paymentOfferCriteriaForPassUniqueID_];

    v97 = v171;
    if (v95)
    {
      sub_1BD0E5E8C(0, &unk_1EBD496A0);
      v98 = sub_1BE052744();
    }

    else
    {
      v98 = 0;
    }

    v101 = v151;
    sub_1BD49C81C(v96);
    v102 = sub_1BE052404();

    v103 = [v93 eligiblePaymentOfferCriteriaForPassUniqueID_];

    if (v103)
    {
      sub_1BD0E5E8C(0, &unk_1EBD496A0);
      v99 = sub_1BE052744();
    }

    else
    {

      v99 = 0;
    }

    v100 = v175;
  }

  else
  {
    v99 = 0;
    v98 = 0;
    v100 = v175;
    v97 = v171;
    v101 = v151;
  }

  v104 = v176;
  *v176 = v146;
  sub_1BD10CD64(v100, v104 + v71[5], type metadata accessor for AvailablePass);
  sub_1BD10CD64(v173, v104 + v71[7], type metadata accessor for Passes);
  v105 = (v104 + v71[8]);
  v106 = v188;
  v105[2] = v187;
  v105[3] = v106;
  v105[4] = v189;
  v107 = v186;
  *v105 = v185;
  v105[1] = v107;
  v108 = (v104 + v71[9]);
  v109 = v166;
  *v108 = v158;
  v108[1] = v109;
  v110 = (v104 + v71[10]);
  v111 = v167;
  *v110 = v159;
  v110[1] = v111;
  v112 = (v104 + v71[11]);
  v113 = v169;
  *v112 = v160;
  v112[1] = v113;
  v114 = (v104 + v71[12]);
  v115 = v168;
  *v114 = v161;
  v114[1] = v115;
  v116 = (v104 + v71[13]);
  v117 = v170;
  *v116 = v149;
  v116[1] = v117;
  sub_1BD0DE19C(v174, v104 + v71[14], &unk_1EBD43B30);
  *(v104 + v71[20]) = v98;
  *(v104 + v71[21]) = v99;
  *(v104 + v71[18]) = v81;
  v118 = v165;
  *(v104 + v71[17]) = v165;
  *(v104 + v71[16]) = v148;
  v119 = (v104 + v71[19]);
  *v119 = v150;
  v119[1] = v97;
  *(v104 + v71[15]) = v101;
  *(v104 + v71[6]) = v147;
  v170 = v118;
  v171 = v81;
  v120 = v81;
  sub_1BE048C84();
  *v178 = WrappedPass.secureElementPass.getter();
  v178[8] = 0;
  if (v98)
  {
    if (v98 >> 62)
    {
LABEL_32:
      v121 = sub_1BE053704();
      if (v121)
      {
LABEL_18:
        v122 = 0;
        while (1)
        {
          if ((v98 & 0xC000000000000001) != 0)
          {
            v123 = MEMORY[0x1BFB40900](v122, v98);
          }

          else
          {
            if (v122 >= *((v98 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_31;
            }

            v123 = *(v98 + 8 * v122 + 32);
          }

          v124 = v123;
          v125 = v122 + 1;
          if (__OFADD__(v122, 1))
          {
            __break(1u);
LABEL_31:
            __break(1u);
            goto LABEL_32;
          }

          if ([v123 type] == 1)
          {
            break;
          }

          ++v122;
          if (v125 == v121)
          {
            goto LABEL_33;
          }
        }

        objc_opt_self();
        v126 = swift_dynamicCastObjCClass();
        v71 = v172;
        if (!v126)
        {
        }

        goto LABEL_34;
      }
    }

    else
    {
      v121 = *((v98 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v121)
      {
        goto LABEL_18;
      }
    }

LABEL_33:

    v126 = 0;
    v71 = v172;
  }

  else
  {
    v126 = 0;
  }

LABEL_34:
  v127 = v176;
  v128 = v176 + v71[28];
  v129 = objc_allocWithZone(type metadata accessor for PaymentOfferInstallmentPlanSelectionModel(0));
  v130 = sub_1BD8D1EE0(v178, v171, v126);

  v131 = (v127 + v71[23]);
  *&v177[0] = v130;
  v132 = v130;
  sub_1BE051694();
  v133 = *&v178[8];
  *v131 = *v178;
  v131[1] = v133;
  LOBYTE(v130) = sub_1BD8C1A98();

  *v128 = v130 & 1;
  *(v128 + 1) = 0;
  if (v165)
  {
    v134 = v170;
    v135 = [v170 type];
    v136 = v163;
    if (v135 == 2)
    {
      objc_opt_self();
      v137 = swift_dynamicCastObjCClass();
      v138 = v164;
      if (v137)
      {
        v139 = [v137 rewardsRedemptionIntent];
        sub_1BD754B48(v139, v177);

        sub_1BD0DE53C(v174, &unk_1EBD43B30);
        sub_1BD10E3D0(v173, type metadata accessor for Passes);
        sub_1BD10E3D0(v175, type metadata accessor for AvailablePass);
        sub_1BD10E3D0(v162, type metadata accessor for AvailablePass);
        sub_1BD0DE53C(v144, &qword_1EBD520A0);
        v140 = v156;
        v141 = *(v156 + 16);
        *v178 = *v156;
        *&v178[16] = v141;
        *&v178[32] = *(v156 + 32);
        v179 = *(v156 + 48);
        sub_1BD0DE53C(v178, &qword_1EBD394D0);
        v142 = v177[1];
        *v140 = v177[0];
        *(v140 + 16) = v142;
        *(v140 + 32) = v177[2];
        *(v140 + 48) = 0;
      }

      else
      {

        sub_1BD0DE53C(v174, &unk_1EBD43B30);
        sub_1BD10E3D0(v173, type metadata accessor for Passes);
        sub_1BD10E3D0(v175, type metadata accessor for AvailablePass);
        sub_1BD10E3D0(v162, type metadata accessor for AvailablePass);
        sub_1BD0DE53C(v144, &qword_1EBD520A0);
      }
    }

    else
    {

      sub_1BD0DE53C(v174, &unk_1EBD43B30);
      sub_1BD10E3D0(v173, type metadata accessor for Passes);
      sub_1BD10E3D0(v175, type metadata accessor for AvailablePass);
      sub_1BD10E3D0(v162, type metadata accessor for AvailablePass);
      sub_1BD0DE53C(v144, &qword_1EBD520A0);
      v138 = v164;
    }
  }

  else
  {

    sub_1BD0DE53C(v174, &unk_1EBD43B30);
    sub_1BD10E3D0(v173, type metadata accessor for Passes);
    sub_1BD10E3D0(v175, type metadata accessor for AvailablePass);
    sub_1BD10E3D0(v162, type metadata accessor for AvailablePass);
    sub_1BD0DE53C(v144, &qword_1EBD520A0);
    v136 = v163;
    v138 = v164;
  }

  sub_1BD10D4F0(v176, v138, type metadata accessor for PaymentPassHubView);
  return (*(v136 + 56))(v138, 0, 1, v71);
}

double sub_1BD1049C8@<D0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v64 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD393E8);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v63 = &v56 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD393F0);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v59 = &v56 - v8;
  v9 = type metadata accessor for PaymentPassHubView(0);
  v10 = *(v9 - 8);
  v66 = v9 - 8;
  v57 = v10;
  v65 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9 - 8, v11);
  v13 = &v56 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD393F8);
  MEMORY[0x1EEE9AC00](v58, v14);
  v16 = &v56 - v15;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39400);
  MEMORY[0x1EEE9AC00](v60, v17);
  v67 = &v56 - v18;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39408);
  v62 = *(v61 - 8);
  MEMORY[0x1EEE9AC00](v61, v19);
  *&v68 = &v56 - v20;
  v69 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39410);
  v21 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD39418);
  v22 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD39420);
  v23 = sub_1BD0DE4F4(&qword_1EBD39428, &qword_1EBD39418);
  v24 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD39430);
  v25 = sub_1BD0DE4F4(&qword_1EBD39438, &qword_1EBD39430);
  *v71 = v24;
  *&v71[8] = v25;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  *v71 = v21;
  *&v71[8] = v22;
  *&v71[16] = v23;
  v72 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  sub_1BE04EC04();
  sub_1BD10CD64(v2, v13, type metadata accessor for PaymentPassHubView);
  v27 = (*(v57 + 80) + 16) & ~*(v57 + 80);
  v28 = swift_allocObject();
  sub_1BD10D4F0(v13, v28 + v27, type metadata accessor for PaymentPassHubView);
  v29 = &v16[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39448) + 36)];
  *v29 = sub_1BD10AB14;
  v29[1] = v28;
  v29[2] = 0;
  v29[3] = 0;
  sub_1BD10CD64(v2, v13, type metadata accessor for PaymentPassHubView);
  v30 = swift_allocObject();
  sub_1BD10D4F0(v13, v30 + v27, type metadata accessor for PaymentPassHubView);
  v31 = &v16[*(v58 + 36)];
  *v31 = 0;
  *(v31 + 1) = 0;
  *(v31 + 2) = sub_1BD10C8B8;
  *(v31 + 3) = v30;
  sub_1BE052434();
  sub_1BD10C944();
  sub_1BE050DE4();

  sub_1BD0DE53C(v16, &qword_1EBD393F8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD392D0);
  v56 = v2;
  v32 = v59;
  sub_1BE0516C4();
  sub_1BD10CD64(v2, v13, type metadata accessor for PaymentPassHubView);
  v33 = swift_allocObject();
  sub_1BD10D4F0(v13, v33 + v27, type metadata accessor for PaymentPassHubView);
  v34 = type metadata accessor for PaymentPassHubView.DetailSheet(0);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39470);
  v36 = sub_1BD10DDA4(&qword_1EBD39478, &qword_1EBD39400, &unk_1BE0B8698, sub_1BD10C944);
  v37 = sub_1BD10CAFC(&qword_1EBD39480, type metadata accessor for PaymentPassHubView.DetailSheet);
  v38 = sub_1BD10CB44();
  v39 = v67;
  v40 = v32;
  v41 = v60;
  sub_1BE050F74();

  sub_1BD0DE53C(v40, &qword_1EBD393F0);
  sub_1BD0DE53C(v39, &qword_1EBD39400);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD45120);
  v42 = v56;
  v43 = v63;
  sub_1BE0516C4();
  type metadata accessor for MultiHyperLinkDetailSheet();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD394A0);
  *v71 = v41;
  *&v71[8] = v34;
  *&v71[16] = v35;
  v72 = v36;
  v73 = v37;
  v74 = v38;
  swift_getOpaqueTypeConformance2();
  sub_1BD10CAFC(&qword_1EBD451C0, type metadata accessor for MultiHyperLinkDetailSheet);
  sub_1BD10CC54();
  v44 = v64;
  v45 = v61;
  v46 = v68;
  sub_1BE050F74();
  sub_1BD0DE53C(v43, &qword_1EBD393E8);
  (*(v62 + 8))(v46, v45);
  v47 = v66;
  v48 = (v42 + *(v66 + 100));
  v50 = *v48;
  v49 = v48[1];
  *&v70 = v50;
  *(&v70 + 1) = v49;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD394B0);
  sub_1BE0516C4();
  v51 = *v71;
  v68 = *&v71[8];
  v52 = v44 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD394B8) + 36);
  *v52 = v51;
  *(v52 + 8) = v68;
  v70 = *(v42 + *(v47 + 112));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD497C0);
  sub_1BE0516C4();
  v68 = *v71;
  v53 = *&v71[16];
  v54 = v44 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD394C0) + 36);
  result = *&v68;
  *v54 = v68;
  *(v54 + 24) = 0;
  *(v54 + 32) = 0;
  *(v54 + 16) = v53;
  return result;
}

uint64_t sub_1BD1052B8(uint64_t a1)
{
  v2 = type metadata accessor for PaymentPassHubView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8, v5);
  sub_1BD10CD64(a1, &v11[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)], type metadata accessor for PaymentPassHubView);
  v6 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v7 = swift_allocObject();
  sub_1BD10D4F0(&v11[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)], v7 + v6, type metadata accessor for PaymentPassHubView);
  v15 = sub_1BD10DD14;
  v16 = v7;
  v12 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39418);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39420);
  sub_1BD0DE4F4(&qword_1EBD39428, &qword_1EBD39418);
  v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD39430);
  v9 = sub_1BD0DE4F4(&qword_1EBD39438, &qword_1EBD39430);
  v13 = v8;
  v14 = v9;
  swift_getOpaqueTypeConformance2();
  sub_1BE051024();
}

uint64_t sub_1BD1054F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v59 = a3;
  v60 = a2;
  v5 = type metadata accessor for PaymentPassHubView(0);
  v6 = v5 - 8;
  v58 = *(v5 - 8);
  v57 = *(v58 + 64);
  MEMORY[0x1EEE9AC00](v5, v7);
  v56 = &v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1BE04F434();
  v52 = *(v9 - 8);
  v53 = v9;
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = sub_1BE04FFF4();
  v13 = *(v51 - 8);
  MEMORY[0x1EEE9AC00](v51, v14);
  v16 = &v50 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39508);
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17, v19);
  v21 = &v50 - v20;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39510);
  MEMORY[0x1EEE9AC00](v50, v22);
  v24 = &v50 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39518);
  v26 = *(v25 - 8);
  v54 = v25;
  v55 = v26;
  MEMORY[0x1EEE9AC00](v25, v27);
  v61 = &v50 - v28;
  v62 = a2;
  v63 = a1;
  sub_1BE0501B4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39520);
  sub_1BD10DF64();
  sub_1BE04E304();
  sub_1BE04FA34();
  sub_1BD0DE4F4(&qword_1EBD39540, &qword_1EBD39508);
  sub_1BE050E04();
  (*(v13 + 8))(v16, v51);
  (*(v18 + 8))(v21, v17);
  v29 = [objc_opt_self() systemGroupedBackgroundColor];
  v30 = sub_1BE0511C4();
  v31 = sub_1BE0501D4();
  v32 = v50;
  v33 = &v24[*(v50 + 36)];
  *v33 = v30;
  v33[8] = v31;
  v35 = v52;
  v34 = v53;
  (*(v52 + 104))(v12, *MEMORY[0x1E697C438], v53);
  v36 = sub_1BD10E01C();
  sub_1BE050E84();
  (*(v35 + 8))(v12, v34);
  sub_1BD0DE53C(v24, &qword_1EBD39510);
  v37 = v60;
  v38 = (v60 + *(v6 + 120));
  v39 = *v38;
  v40 = *(v38 + 1);
  LOBYTE(v64) = v39;
  v65 = v40;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350);
  sub_1BE0516A4();
  v41 = v56;
  sub_1BD10CD64(v37, v56, type metadata accessor for PaymentPassHubView);
  v42 = (*(v58 + 80) + 16) & ~*(v58 + 80);
  v43 = swift_allocObject();
  sub_1BD10D4F0(v41, v43 + v42, type metadata accessor for PaymentPassHubView);
  v64 = v32;
  v65 = v36;
  swift_getOpaqueTypeConformance2();
  v44 = v59;
  v45 = v54;
  v46 = v61;
  sub_1BE051074();

  (*(v55 + 8))(v46, v45);
  sub_1BD10CD64(v60, v41, type metadata accessor for PaymentPassHubView);
  v47 = swift_allocObject();
  sub_1BD10D4F0(v41, v47 + v42, type metadata accessor for PaymentPassHubView);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39550);
  v49 = (v44 + *(result + 36));
  *v49 = sub_1BD10EC60;
  v49[1] = v47;
  v49[2] = 0;
  v49[3] = 0;
  return result;
}

__n128 sub_1BD105B4C@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v27[2] = a2;
  v28 = a3;
  v4 = sub_1BE04F5B4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39558);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = v27 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39538);
  MEMORY[0x1EEE9AC00](v13 - 8, v14);
  v16 = v27 - v15;
  *v16 = sub_1BE04F7B4();
  *(v16 + 1) = 0;
  v16[16] = 0;
  v27[1] = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39560) + 44);
  v29 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39568);
  sub_1BD0DE4F4(&qword_1EBD39570, &qword_1EBD39568);
  sub_1BE0504E4();
  v27[0] = v8;
  sub_1BE04F594();
  v17 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39578) + 36);
  (*(v5 + 16))(&v12[v17], v8, v4);
  v18 = *(v5 + 56);
  v18(&v12[v17], 0, 1, v4);
  KeyPath = swift_getKeyPath();
  v20 = &v12[*(v9 + 36)];
  v21 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39580) + 28);
  (*(v5 + 32))(v20 + v21, v27[0], v4);
  v18(v20 + v21, 0, 1, v4);
  *v20 = KeyPath;
  sub_1BD10E1AC();
  sub_1BE050D24();
  sub_1BD0DE53C(v12, &qword_1EBD39558);
  sub_1BE04E684();
  sub_1BE051CD4();
  sub_1BE04EE54();
  v22 = v28;
  sub_1BD0488B4(v16, v28);
  v23 = v22 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39520) + 36);
  v24 = v35;
  *(v23 + 64) = v34;
  *(v23 + 80) = v24;
  *(v23 + 96) = v36;
  v25 = v31;
  *v23 = v30;
  *(v23 + 16) = v25;
  result = v33;
  *(v23 + 32) = v32;
  *(v23 + 48) = result;
  return result;
}

uint64_t sub_1BD105F7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v72 = a2;
  v3 = type metadata accessor for PaymentPassHubView(0);
  v4 = (v3 - 8);
  v69 = *(v3 - 8);
  v68 = *(v69 + 64);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v64 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for PaymentPassBillingAddressSection();
  v9 = (v8 - 8);
  v11 = MEMORY[0x1EEE9AC00](v8, v10);
  v71 = &v64 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v13);
  v15 = &v64 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD395C0);
  v18 = MEMORY[0x1EEE9AC00](v16 - 8, v17);
  v70 = &v64 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18, v20);
  v22 = &v64 - v21;
  v76 = &v64 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD395C8);
  v25 = MEMORY[0x1EEE9AC00](v23 - 8, v24);
  v75 = &v64 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25, v27);
  v29 = &v64 - v28;
  v77 = &v64 - v28;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD395D0);
  v32 = MEMORY[0x1EEE9AC00](v30 - 8, v31);
  v73 = &v64 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32, v34);
  v74 = &v64 - v35;
  sub_1BD1065E0(&v64 - v35);
  sub_1BD106AD8(v29);
  sub_1BD106EA8(v22);
  sub_1BD10CD64(a1 + v4[9], v15, type metadata accessor for Passes);
  v36 = (a1 + v4[10]);
  v37 = v36[3];
  v81 = v36[2];
  v82 = v37;
  v83 = v36[4];
  v38 = v36[1];
  v79 = *v36;
  v80 = v38;
  v39 = v4[12];
  v40 = (a1 + v4[11]);
  v42 = *v40;
  v65 = v40[1];
  v41 = v65;
  v43 = *(a1 + v39 + 8);
  v64 = *(a1 + v39);
  v67 = v43;
  v44 = (a1 + v4[13]);
  v46 = *v44;
  v66 = v44[1];
  v45 = v66;
  sub_1BD10CD64(a1, v7, type metadata accessor for PaymentPassHubView);
  v47 = (*(v69 + 80) + 16) & ~*(v69 + 80);
  v48 = swift_allocObject();
  sub_1BD10D4F0(v7, v48 + v47, type metadata accessor for PaymentPassHubView);
  v49 = &v15[v9[7]];
  v50 = v82;
  *(v49 + 2) = v81;
  *(v49 + 3) = v50;
  *(v49 + 4) = v83;
  v51 = v80;
  *v49 = v79;
  *(v49 + 1) = v51;
  v52 = &v15[v9[8]];
  *v52 = v42;
  *(v52 + 1) = v41;
  v53 = &v15[v9[9]];
  *v53 = v64;
  *(v53 + 1) = v43;
  v54 = &v15[v9[10]];
  *v54 = v46;
  *(v54 + 1) = v45;
  v55 = &v15[v9[11]];
  *v55 = sub_1BD10E348;
  v55[1] = v48;
  v56 = v73;
  sub_1BD0DE19C(v74, v73, &qword_1EBD395D0);
  v57 = v75;
  sub_1BD0DE19C(v77, v75, &qword_1EBD395C8);
  v58 = v70;
  sub_1BD0DE19C(v76, v70, &qword_1EBD395C0);
  v59 = v71;
  sub_1BD10CD64(v15, v71, type metadata accessor for PaymentPassBillingAddressSection);
  v60 = v56;
  v61 = v72;
  sub_1BD0DE19C(v60, v72, &qword_1EBD395D0);
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD395D8);
  sub_1BD0DE19C(v57, v61 + v62[12], &qword_1EBD395C8);
  sub_1BD0DE19C(v58, v61 + v62[16], &qword_1EBD395C0);
  sub_1BD10CD64(v59, v61 + v62[20], type metadata accessor for PaymentPassBillingAddressSection);
  sub_1BD0DE19C(&v79, v78, &qword_1EBD395E0);
  sub_1BE048964();
  sub_1BE048964();
  sub_1BE048964();
  sub_1BD10E3D0(v15, type metadata accessor for PaymentPassBillingAddressSection);
  sub_1BD0DE53C(v76, &qword_1EBD395C0);
  sub_1BD0DE53C(v77, &qword_1EBD395C8);
  sub_1BD0DE53C(v74, &qword_1EBD395D0);
  sub_1BD10E3D0(v59, type metadata accessor for PaymentPassBillingAddressSection);
  sub_1BD0DE53C(v58, &qword_1EBD395C0);
  sub_1BD0DE53C(v75, &qword_1EBD395C8);
  return sub_1BD0DE53C(v73, &qword_1EBD395D0);
}

uint64_t sub_1BD1065E0@<X0>(uint64_t a1@<X8>)
{
  v53 = a1;
  v2 = type metadata accessor for PassHeaderView();
  v52 = *(v2 - 1);
  MEMORY[0x1EEE9AC00](v2, v3);
  v5 = &v48 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD43B90);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v51 = &v48 - v8;
  v9 = type metadata accessor for PlaceholderPass(0);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = &v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for WrappedPass(0);
  v50 = *(v13 - 8);
  v15 = MEMORY[0x1EEE9AC00](v13, v14);
  v17 = (&v48 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v15, v18);
  v20 = &v48 - v19;
  v21 = type metadata accessor for PaymentPassHubView(0);
  sub_1BD10CD64(v1 + *(v21 + 20), v20, type metadata accessor for WrappedPass);
  sub_1BD10CD64(v20, v17, type metadata accessor for WrappedPass);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_1BD10E3D0(v17, type metadata accessor for WrappedPass);
LABEL_10:
      sub_1BD10E3D0(v20, type metadata accessor for WrappedPass);
      v30 = 1;
      v31 = v53;
      return (*(v52 + 56))(v31, v30, 1, v2);
    }

    sub_1BD10D4F0(v17, v12, type metadata accessor for PlaceholderPass);
    v24 = [objc_allocWithZone(MEMORY[0x1E69B91E8]) init];
    [v24 setCardType_];
    sub_1BD10E3D0(v12, type metadata accessor for PlaceholderPass);
  }

  else
  {
    v23 = *v17;
    v24 = [*v17 secureElementPass];

    if (!v24)
    {
      goto LABEL_10;
    }
  }

  v25 = [v24 paymentPass];

  if (!v25)
  {
    goto LABEL_10;
  }

  v26 = PKSanitizedPrimaryAccountRepresentationForPass();
  if (v26)
  {
    v27 = v26;
    v28 = sub_1BE052434();
    v48 = v29;
    v49 = v28;
  }

  else
  {
    v48 = 0;
    v49 = 0;
  }

  v32 = *(v1 + *(v21 + 72));
  if (v32 && (sub_1BD49C81C(), v33 = sub_1BE052404(), , v34 = [v32 merchandisingOfferForPassUniqueID_], v33, v34) && (v35 = objc_msgSend(v34, sel_primaryTitle), v34, v35))
  {
    v36 = sub_1BE052434();
    v38 = v37;

    v40 = v48;
    v39 = v49;
    v41 = v36;
  }

  else
  {

    v39 = 0;
    v40 = 0;
    v38 = v48;
    v41 = v49;
  }

  v42 = v51;
  sub_1BD10D4F0(v20, v51, type metadata accessor for WrappedPass);
  (*(v50 + 56))(v42, 0, 1, v13);
  sub_1BD0DE204(v42, v5, &unk_1EBD43B90);
  v43 = &v5[v2[5]];
  *v43 = 0;
  *(v43 + 1) = 0;
  v44 = &v5[v2[6]];
  *v44 = v41;
  *(v44 + 1) = v38;
  v45 = &v5[v2[7]];
  *v45 = v39;
  *(v45 + 1) = v40;
  *&v5[v2[8]] = 0x4059000000000000;
  v46 = v53;
  sub_1BD10D4F0(v5, v53, type metadata accessor for PassHeaderView);
  v31 = v46;
  v30 = 0;
  return (*(v52 + 56))(v31, v30, 1, v2);
}

id sub_1BD106AD8@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1BE04BD74();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39680);
  v29 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v28 - v10;
  v12 = v1 + *(type metadata accessor for PaymentPassHubView(0) + 20);
  v13 = type metadata accessor for AvailablePass(0);
  v14 = *(v12 + *(v13 + 56));
  if (v14 >> 62)
  {
    v27 = v13;
    v15 = sub_1BE053704();
    v13 = v27;
  }

  else
  {
    v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v16 = *(v12 + *(v13 + 60));
  if (!(v16 >> 62))
  {
    result = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v18 = result + v15;
    if (!__OFADD__(v15, result))
    {
      goto LABEL_5;
    }

LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
    return result;
  }

  result = sub_1BE053704();
  v18 = result + v15;
  if (__OFADD__(v15, result))
  {
    goto LABEL_14;
  }

LABEL_5:
  if (v18 >= 2)
  {
    (*(v4 + 104))(v7, *MEMORY[0x1E69B8068], v3);
    result = PKPassKitBundle();
    if (result)
    {
      v19 = result;
      v20 = sub_1BE04B6F4();
      v22 = v21;

      (*(v4 + 8))(v7, v3);
      v30 = v20;
      v31 = v22;
      sub_1BD0DDEBC();
      v30 = sub_1BE0506C4();
      v31 = v23;
      v32 = v24 & 1;
      v33 = v25;
      MEMORY[0x1EEE9AC00](v30, v23);
      *(&v28 - 2) = v1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39688);
      sub_1BD0DE4F4(&qword_1EBD39690, &qword_1EBD39688);
      sub_1BE051A24();
      (*(v29 + 32))(a1, v11, v8);
      return (*(v29 + 56))(a1, 0, 1, v8);
    }

    goto LABEL_15;
  }

  v26 = *(v29 + 56);

  return v26(a1, 1, 1, v8);
}

id sub_1BD106EA8@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD395E8);
  v84 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v4);
  v83 = &v69 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD395F0);
  v8 = MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v82 = &v69 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v10);
  v80 = &v69 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD395F8);
  v14 = MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v81 = &v69 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v16);
  v79 = &v69 - v17;
  v18 = type metadata accessor for PaymentPassHubView(0);
  v19 = v18 - 8;
  v77 = *(v18 - 8);
  v20 = *(v77 + 64);
  MEMORY[0x1EEE9AC00](v18, v21);
  v78 = &v69 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_1BE04BD74();
  v23 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22, v24);
  v26 = &v69 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39600);
  v75 = *(v76 - 8);
  MEMORY[0x1EEE9AC00](v76, v27);
  v29 = &v69 - v28;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39608);
  v32 = MEMORY[0x1EEE9AC00](v30, v31);
  v34 = MEMORY[0x1EEE9AC00](v32, v33);
  v36 = &v69 - v35;
  MEMORY[0x1EEE9AC00](v34, v37);
  v41 = &v69 - v38;
  v42 = *(v1 + *(v19 + 88));
  if (v42)
  {
    if (v42 >> 62)
    {
      v74 = v39;
      v66 = &v69 - v38;
      v73 = v40;
      v67 = sub_1BE053704();
      v40 = v73;
      v41 = v66;
      v39 = v74;
      if (v67 >= 1)
      {
LABEL_4:
        v73 = v40;
        v70 = v41;
        v74 = v39;
        v71 = v3;
        v72 = a1;
        (*(v23 + 104))(v26, *MEMORY[0x1E69B8068], v22);
        result = PKPassKitBundle();
        if (result)
        {
          v44 = result;
          v45 = sub_1BE04B6F4();
          v47 = v46;

          (*(v23 + 8))(v26, v22);
          *&v89[0] = v45;
          *(&v89[0] + 1) = v47;
          sub_1BD0DDEBC();
          v91 = sub_1BE0506C4();
          v92 = v48;
          v93 = v49 & 1;
          v94 = v50;
          sub_1BD7554A8(v89);
          v85 = v89[0];
          v86 = v89[1];
          v87 = v89[2];
          v88 = v90;
          MEMORY[0x1EEE9AC00](v51, v52);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39610);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39618);
          sub_1BD0DE4F4(&qword_1EBD39620, &qword_1EBD39610);
          sub_1BD10E438();
          sub_1BE051A34();
          v53 = v78;
          sub_1BD10CD64(v1, v78, type metadata accessor for PaymentPassHubView);
          v54 = (*(v77 + 80) + 16) & ~*(v77 + 80);
          v55 = swift_allocObject();
          sub_1BD10D4F0(v53, v55 + v54, type metadata accessor for PaymentPassHubView);
          (*(v75 + 32))(v36, v29, v76);
          v56 = &v36[*(v73 + 36)];
          *v56 = sub_1BD10E510;
          v56[1] = v55;
          v56[2] = 0;
          v56[3] = 0;
          v57 = v70;
          sub_1BD0DE204(v36, v70, &qword_1EBD39608);
          v58 = v79;
          sub_1BD756F34(v79);
          v59 = v80;
          sub_1BD757714(v80);
          v60 = v74;
          sub_1BD0DE19C(v57, v74, &qword_1EBD39608);
          v61 = v81;
          sub_1BD0DE19C(v58, v81, &qword_1EBD395F8);
          v62 = v82;
          sub_1BD0DE19C(v59, v82, &qword_1EBD395F0);
          v63 = v83;
          sub_1BD0DE19C(v60, v83, &qword_1EBD39608);
          v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39638);
          sub_1BD0DE19C(v61, v63 + *(v64 + 48), &qword_1EBD395F8);
          sub_1BD0DE19C(v62, v63 + *(v64 + 64), &qword_1EBD395F0);
          sub_1BD0DE53C(v59, &qword_1EBD395F0);
          sub_1BD0DE53C(v58, &qword_1EBD395F8);
          sub_1BD0DE53C(v57, &qword_1EBD39608);
          sub_1BD0DE53C(v62, &qword_1EBD395F0);
          sub_1BD0DE53C(v61, &qword_1EBD395F8);
          sub_1BD0DE53C(v60, &qword_1EBD39608);
          v65 = v72;
          sub_1BD0DE204(v63, v72, &qword_1EBD395E8);
          return (*(v84 + 56))(v65, 0, 1, v71);
        }

        else
        {
          __break(1u);
        }

        return result;
      }
    }

    else if (*((v42 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 1)
    {
      goto LABEL_4;
    }
  }

  v68 = *(v84 + 56);

  return v68(a1, 1, 1, v3);
}

uint64_t sub_1BD1077D0(uint64_t a1)
{
  v2 = sub_1BE04FB44();
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39430);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v11[-v7];
  sub_1BE04FB14();
  v12 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD394D8);
  sub_1BD10DDA4(&qword_1EBD394E0, &qword_1EBD394D8, &unk_1BE0D6B60, sub_1BD10DE58);
  sub_1BE04E424();
  v9 = sub_1BD0DE4F4(&qword_1EBD39438, &qword_1EBD39430);
  MEMORY[0x1BFB3CC50](v8, v4, v9);
  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_1BD1079BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v31[1] = a2;
  v3 = type metadata accessor for PaymentPassHubView(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3, v6);
  v7 = v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1BE04E1D4();
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39500);
  v12 = *(v31[0] - 8);
  MEMORY[0x1EEE9AC00](v31[0], v13);
  v15 = v31 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD394F0);
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = v31 - v18;
  sub_1BE04E1C4();
  sub_1BD10CD64(a1, v7, type metadata accessor for PaymentPassHubView);
  v20 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v21 = swift_allocObject();
  sub_1BD10D4F0(v7, v21 + v20, type metadata accessor for PaymentPassHubView);
  v22 = MEMORY[0x1BFB3E7A0](v11, sub_1BD10DF3C, v21);
  v23 = *(a1 + *(v3 + 72));
  if (v23)
  {
    sub_1BD49C81C(v22);
    v24 = sub_1BE052404();

    v25 = [v23 preconfiguredInstallmentOfferStateForPassUniqueID_];

    v26 = (v25 - 3) < 2;
  }

  else
  {
    v26 = 0;
  }

  KeyPath = swift_getKeyPath();
  v28 = swift_allocObject();
  *(v28 + 16) = v26;
  (*(v12 + 32))(v19, v15, v31[0]);
  v29 = &v19[*(v16 + 36)];
  *v29 = KeyPath;
  v29[1] = sub_1BD10DF54;
  v29[2] = v28;
  sub_1BE052434();
  sub_1BD10DE58();
  sub_1BE050DE4();

  return sub_1BD0DE53C(v19, &qword_1EBD394F0);
}

uint64_t sub_1BD107D44(uint64_t a1)
{
  sub_1BD6B2184(1, 6u, 0);
  v2 = type metadata accessor for PaymentPassHubView(0);
  v3 = *(a1 + *(v2 + 68));
  if (v3 && [v3 type] == 2)
  {
    sub_1BD755098();
  }

  return (*(a1 + *(v2 + 52)))();
}

uint64_t sub_1BD107DB8(uint64_t *a1)
{
  v2 = sub_1BE04C614();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 104))(v6, *MEMORY[0x1E69BC8B0], v2);
  v7 = *a1;
  v8 = type metadata accessor for PaymentPassHubView(0);
  v9 = *(a1 + *(v8 + 72));
  v10 = *(a1 + *(v8 + 68));
  v11 = WrappedPass.secureElementPass.getter();
  if (v11)
  {
    v12 = v11;
    v13 = [v11 paymentPass];
  }

  else
  {
    v13 = 0;
  }

  sub_1BD6B39C8(v6, v7, v9, v10, v13);

  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_1BD107F18(uint64_t *a1)
{
  v2 = sub_1BE04C614();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 104))(v6, *MEMORY[0x1E69BC8B0], v2);
  v7 = *a1;
  v8 = type metadata accessor for PaymentPassHubView(0);
  sub_1BD6B4058(v6, v7, *(a1 + *(v8 + 68)));
  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_1BD108024@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v60 = a2;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD394C8);
  MEMORY[0x1EEE9AC00](v59, v3);
  v56 = &v51 - v4;
  v5 = type metadata accessor for PaymentPassHubView(0);
  v57 = *(v5 - 8);
  v6 = *(v57 + 64);
  MEMORY[0x1EEE9AC00](v5 - 8, v7);
  v8 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for BillingAddressEditor();
  v11 = MEMORY[0x1EEE9AC00](v9, v10);
  v13 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v14);
  v55 = (&v51 - v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD520A0);
  v54 = *(v16 - 8);
  v17 = *(v54 + 64);
  v19 = MEMORY[0x1EEE9AC00](v16 - 8, v18);
  v20 = &v51 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19, v21);
  v23 = &v51 - v22;
  v24 = type metadata accessor for PaymentPassHubView.DetailSheet(0);
  MEMORY[0x1EEE9AC00](v24, v25);
  v27 = &v51 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BD10CD64(a1, v27, type metadata accessor for PaymentPassHubView.DetailSheet);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v54 = *(v27 + 2);
    v53 = *v27;
    v28 = [v53 configuration];
    v52 = [v28 context];

    v29 = v56;
    v55 = v9;
    v30 = v58;
    sub_1BD10CD64(v58, &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PaymentPassHubView);
    v31 = (*(v57 + 80) + 16) & ~*(v57 + 80);
    v32 = swift_allocObject();
    sub_1BD10D4F0(&v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v32 + v31, type metadata accessor for PaymentPassHubView);
    sub_1BD10CD64(v30, &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PaymentPassHubView);
    v33 = swift_allocObject();
    sub_1BD10D4F0(&v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v33 + v31, type metadata accessor for PaymentPassHubView);
    *(v33 + ((v31 + v6 + 7) & 0xFFFFFFFFFFFFFFF8)) = v52;
    *v29 = v53;
    *(v29 + 16) = v54;
    *(v29 + 24) = sub_1BD10D0B0;
    *(v29 + 32) = v32;
    *(v29 + 40) = sub_1BD10D328;
    *(v29 + 48) = v33;
    swift_storeEnumTagMultiPayload();
    sub_1BD10CAFC(&qword_1EBD39490, type metadata accessor for BillingAddressEditor);
    sub_1BD10CC00();
    return sub_1BE04F9A4();
  }

  else
  {
    v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39440);
    v36 = *&v27[*(v35 + 48)];
    v37 = &v27[*(v35 + 64)];
    v38 = *(v37 + 1);
    v64 = *v37;
    v65 = v38;
    v66 = *(v37 + 4);
    sub_1BD0DE204(v27, v23, &qword_1EBD520A0);
    LODWORD(v53) = v36 != 0;
    sub_1BD0DE19C(v23, &v13[v9[5]], &qword_1EBD520A0);
    sub_1BD10CD64(v58, &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PaymentPassHubView);
    sub_1BD0DE19C(v23, v20, &qword_1EBD520A0);
    v39 = (*(v57 + 80) + 16) & ~*(v57 + 80);
    v40 = (v6 + *(v54 + 80) + v39) & ~*(v54 + 80);
    v41 = swift_allocObject();
    sub_1BD10D4F0(v8, v41 + v39, type metadata accessor for PaymentPassHubView);
    sub_1BD0DE204(v20, v41 + v40, &qword_1EBD520A0);
    v42 = &v13[v9[10]];
    *v42 = sub_1BDA570C8;
    *(v42 + 1) = 0;
    v42[16] = 0;
    v43 = &v13[v9[11]];
    v63 = 0;
    v44 = v36;
    sub_1BD10D494(&v64, v61);
    sub_1BE051694();
    v45 = v62;
    *v43 = v61[0];
    *(v43 + 1) = v45;
    *&v13[v9[12]] = 0x4064200000000000;
    *v13 = v53;
    v46 = &v13[v9[6]];
    *v46 = 0;
    v46[1] = 0;
    *&v13[v9[7]] = v36;
    v47 = &v13[v9[8]];
    v48 = v65;
    *v47 = v64;
    *(v47 + 1) = v48;
    *(v47 + 4) = v66;
    v49 = &v13[v9[9]];
    *v49 = sub_1BD10D3B4;
    v49[1] = v41;
    v50 = v55;
    sub_1BD10D4F0(v13, v55, type metadata accessor for BillingAddressEditor);
    sub_1BD10CD64(v50, v56, type metadata accessor for BillingAddressEditor);
    swift_storeEnumTagMultiPayload();
    sub_1BD10CAFC(&qword_1EBD39490, type metadata accessor for BillingAddressEditor);
    sub_1BD10CC00();
    sub_1BE04F9A4();
    sub_1BD10D558(&v64);

    sub_1BD10E3D0(v50, type metadata accessor for BillingAddressEditor);
    return sub_1BD0DE53C(v23, &qword_1EBD520A0);
  }
}

uint64_t sub_1BD108768@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v53 = a2;
  v3 = type metadata accessor for PaymentPassHubView(0);
  v4 = v3 - 8;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v6);
  v44 = v7;
  v8 = v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39698);
  v41 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9, v10);
  v52 = v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v11, v13);
  v51 = v39 - v15;
  v17 = MEMORY[0x1EEE9AC00](v14, v16);
  v50 = v39 - v18;
  MEMORY[0x1EEE9AC00](v17, v19);
  v46 = a1;
  v47 = v39 - v20;
  v21 = *(v4 + 28);
  v22 = a1;
  v23 = a1 + v21;
  v49 = v23;
  v48 = type metadata accessor for AvailablePass(0);
  v54 = *(v23 + *(v48 + 56));
  KeyPath = swift_getKeyPath();
  v45 = type metadata accessor for PaymentPassHubView;
  v40 = v8;
  sub_1BD10CD64(v22, v8, type metadata accessor for PaymentPassHubView);
  v24 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v25 = swift_allocObject();
  v43 = type metadata accessor for PaymentPassHubView;
  sub_1BD10D4F0(v8, v25 + v24, type metadata accessor for PaymentPassHubView);
  sub_1BE048C84();
  v39[2] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD396A0);
  v39[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD396A8);
  sub_1BD0DE4F4(&qword_1EBD396B0, &qword_1EBD396A0);
  sub_1BD10E640();
  sub_1BD10DDA4(&qword_1EBD396B8, &qword_1EBD396A8, &unk_1BE0B88E8, sub_1BD10E6A8);
  v26 = v47;
  sub_1BE0519C4();
  v54 = *(v49 + *(v48 + 60));
  swift_getKeyPath();
  v27 = v40;
  sub_1BD10CD64(v46, v40, v45);
  v28 = swift_allocObject();
  sub_1BD10D4F0(v27, v28 + v24, v43);
  sub_1BE048C84();
  v29 = v50;
  sub_1BE0519C4();
  v30 = v41;
  v31 = *(v41 + 16);
  v32 = v51;
  v33 = v26;
  v31(v51, v26, v9);
  v34 = v52;
  v31(v52, v29, v9);
  v35 = v53;
  v31(v53, v32, v9);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD396F0);
  v31(&v35[*(v36 + 48)], v34, v9);
  v37 = *(v30 + 8);
  v37(v29, v9);
  v37(v33, v9);
  v37(v34, v9);
  return (v37)(v32, v9);
}

uint64_t sub_1BD108C50@<X0>(void *a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v50 = a3;
  v7 = type metadata accessor for PaymentPassHubView(0);
  v8 = v7 - 8;
  v42 = *(v7 - 8);
  v9 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v7, v10);
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD396E8);
  v47 = *(v49 - 8);
  MEMORY[0x1EEE9AC00](v49, v11);
  v45 = &v42 - v12;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD396D8);
  MEMORY[0x1EEE9AC00](v44, v13);
  v46 = &v42 - v14;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD396C8);
  MEMORY[0x1EEE9AC00](v48, v15);
  v43 = &v42 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD396F8);
  v19 = MEMORY[0x1EEE9AC00](v17 - 8, v18);
  v21 = &v42 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19, v22);
  v24 = &v42 - v23;
  v25 = *(v4 + *(v8 + 32));
  if (v25)
  {
    sub_1BD0E5E8C(0, &qword_1EBD43BA0);
    v26 = a1;
    v27 = v25;
    sub_1BE053074();
  }

  sub_1BE04E1C4();
  v28 = sub_1BE04E1D4();
  (*(*(v28 - 8) + 56))(v24, 0, 1, v28);
  sub_1BD0DE19C(v24, v21, &qword_1EBD396F8);
  sub_1BD10CD64(v4, &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PaymentPassHubView);
  v29 = (*(v42 + 80) + 17) & ~*(v42 + 80);
  v30 = swift_allocObject();
  *(v30 + 16) = a2 & 1;
  v31 = sub_1BD10D4F0(&v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v30 + v29, type metadata accessor for PaymentPassHubView);
  *(v30 + ((v9 + v29 + 7) & 0xFFFFFFFFFFFFFFF8)) = a1;
  MEMORY[0x1EEE9AC00](v31, v32);
  v33 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39700);
  sub_1BD0DE4F4(&qword_1EBD39708, &qword_1EBD39700);
  v34 = v45;
  sub_1BE0516F4();
  sub_1BE051CE4();
  sub_1BE04EE54();
  v35 = v46;
  (*(v47 + 32))(v46, v34, v49);
  v36 = (v35 + *(v44 + 36));
  v37 = v56;
  v36[4] = v55;
  v36[5] = v37;
  v36[6] = v57;
  v38 = v52;
  *v36 = v51;
  v36[1] = v38;
  v39 = v54;
  v36[2] = v53;
  v36[3] = v39;
  v40 = v43;
  sub_1BD0DE204(v35, v43, &qword_1EBD396D8);
  *(v40 + *(v48 + 36)) = 1;
  sub_1BE052434();
  sub_1BD10E6A8();
  sub_1BE050DE4();

  sub_1BD0DE53C(v40, &qword_1EBD396C8);
  return sub_1BD0DE53C(v24, &qword_1EBD396F8);
}

uint64_t sub_1BD109218@<X0>(uint64_t a1@<X8>)
{
  v29 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39640);
  v3 = MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v3, v6);
  v9 = &v28 - v8;
  v11 = MEMORY[0x1EEE9AC00](v7, v10);
  v13 = &v28 - v12;
  v28 = &v28 - v12;
  MEMORY[0x1EEE9AC00](v11, v14);
  v16 = &v28 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39648);
  v19 = MEMORY[0x1EEE9AC00](v17 - 8, v18);
  v21 = &v28 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19, v22);
  v24 = &v28 - v23;
  sub_1BD1094C0(&v28 - v23);
  sub_1BD755748(v16);
  sub_1BD755DF0(v13);
  sub_1BD0DE19C(v24, v21, &qword_1EBD39648);
  sub_1BD0DE19C(v16, v9, &qword_1EBD39640);
  sub_1BD0DE19C(v13, v5, &qword_1EBD39640);
  v25 = v29;
  sub_1BD0DE19C(v21, v29, &qword_1EBD39648);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39650);
  sub_1BD0DE19C(v9, v25 + *(v26 + 48), &qword_1EBD39640);
  sub_1BD0DE19C(v5, v25 + *(v26 + 64), &qword_1EBD39640);
  sub_1BD0DE53C(v28, &qword_1EBD39640);
  sub_1BD0DE53C(v16, &qword_1EBD39640);
  sub_1BD0DE53C(v24, &qword_1EBD39648);
  sub_1BD0DE53C(v5, &qword_1EBD39640);
  sub_1BD0DE53C(v9, &qword_1EBD39640);
  return sub_1BD0DE53C(v21, &qword_1EBD39648);
}

uint64_t sub_1BD1094C0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for PaymentPassHubView(0);
  v5 = v4 - 8;
  v27 = *(v4 - 8);
  v6 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v4, v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39658);
  v28 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v27 - v10;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39660);
  v12 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29, v13);
  v15 = &v27 - v14;
  v16 = (v2 + *(v5 + 116));
  v18 = *v16;
  v17 = v16[1];
  v31 = v18;
  v32 = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39668);
  sub_1BE0516A4();
  v19 = *(v30 + 16);

  if (sub_1BD109884())
  {
    sub_1BD10CD64(v2, &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PaymentPassHubView);
    v20 = *(v27 + 80);
    v27 = a1;
    v21 = (v20 + 17) & ~v20;
    v22 = swift_allocObject();
    *(v22 + 16) = v19 == 0;
    v23 = sub_1BD10D4F0(&v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v22 + v21, type metadata accessor for PaymentPassHubView);
    MEMORY[0x1EEE9AC00](v23, v24);
    *(&v27 - 2) = v2;
    sub_1BD10E5DC();
    sub_1BE051704();
    a1 = v27;
    sub_1BE052434();
    sub_1BD0DE4F4(&qword_1EBD39678, &qword_1EBD39658);
    sub_1BE050DE4();

    (*(v28 + 8))(v11, v8);
    sub_1BD0DE204(v15, a1, &qword_1EBD39660);
    v25 = 0;
  }

  else
  {
    v25 = 1;
  }

  return (*(v12 + 56))(a1, v25, 1, v29);
}

uint64_t sub_1BD109884()
{
  if (sub_1BD109A10())
  {
    return 1;
  }

  v1 = *(v0 + *(type metadata accessor for PaymentPassHubView(0) + 80));
  if (!v1)
  {
    return 1;
  }

  if (v1 >> 62)
  {
LABEL_20:
    v2 = sub_1BE053704();
    if (!v2)
    {
      return 1;
    }
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v2)
    {
      return 1;
    }
  }

  for (i = 0; ; ++i)
  {
    if ((v1 & 0xC000000000000001) != 0)
    {
      v4 = MEMORY[0x1BFB40900](i, v1);
    }

    else
    {
      if (i >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_19;
      }

      v4 = *(v1 + 8 * i + 32);
    }

    v5 = v4;
    v6 = i + 1;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_19:
      __break(1u);
      goto LABEL_20;
    }

    if ([v4 type] == 1)
    {
      break;
    }

    if (v6 == v2)
    {
      return 1;
    }
  }

  objc_opt_self();
  v7 = swift_dynamicCastObjCClass();
  if (v7)
  {
    v8 = [v7 suppressPayInFull];

    return v8 ^ 1;
  }

  return 1;
}

uint64_t sub_1BD1099B4(uint64_t result, uint64_t a2)
{
  if (result)
  {
    result = sub_1BD109A10();
    if ((result & 1) == 0)
    {
      sub_1BD6B2184(6, 6u, 0);
      v3 = type metadata accessor for PaymentPassHubView(0);
      return (*(a2 + *(v3 + 76)))(0);
    }
  }

  return result;
}

uint64_t sub_1BD109A10()
{
  v1 = type metadata accessor for PaymentPassHubView(0);
  if (*(v0 + *(v1 + 68)))
  {
    return [*(v0 + *(v1 + 68)) type] - 3 < 0xFFFFFFFFFFFFFFFELL;
  }

  v3 = *(v0 + *(v1 + 72));
  if (!v3)
  {
    return 1;
  }

  v4 = v3;
  sub_1BD49C81C();
  v5 = sub_1BE052404();

  v6 = [v4 preconfiguredInstallmentOfferStateForPassUniqueID_];

  if ((v6 - 5) < 2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350);
    sub_1BE0516A4();

    return v7;
  }

  else if (v6 == 4 || v6 == 3)
  {

    return 0;
  }

  else
  {

    return 1;
  }
}

double sub_1BD109B4C@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_1BD109BD0();
  v4 = v3;
  v5 = sub_1BD109E30();
  v7 = v6;
  if (sub_1BD109A10())
  {
    v8 = 2;
  }

  else
  {
    v8 = 0;
  }

  *a1 = v2;
  *(a1 + 8) = v4;
  *(a1 + 16) = 0;
  *(a1 + 24) = v5;
  *(a1 + 32) = v7;
  *(a1 + 40) = 0;
  *(a1 + 48) = v8;
  result = 1.36758074e161;
  *(a1 + 56) = xmmword_1BE0B8520;
  *(a1 + 72) = 2;
  *(a1 + 80) = 0x4042000000000000;
  return result;
}

id sub_1BD109BD0()
{
  v20 = sub_1BE04BD74();
  v1 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20, v2);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + *(type metadata accessor for PaymentPassHubView(0) + 80));
  if (!v5)
  {
    goto LABEL_17;
  }

  if (v5 >> 62)
  {
LABEL_21:
    v6 = sub_1BE053704();
    if (!v6)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      goto LABEL_17;
    }
  }

  v7 = 0;
  while (1)
  {
    if ((v5 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x1BFB40900](v7, v5);
    }

    else
    {
      if (v7 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_20;
      }

      v8 = *(v5 + 8 * v7 + 32);
    }

    v9 = v8;
    v10 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      __break(1u);
LABEL_20:
      __break(1u);
      goto LABEL_21;
    }

    if ([v8 type] == 1)
    {
      break;
    }

    ++v7;
    if (v10 == v6)
    {
      goto LABEL_17;
    }
  }

  objc_opt_self();
  v11 = swift_dynamicCastObjCClass();
  if (v11)
  {
    v12 = [v11 localizedPayInFullTitleOverride];
    if (v12)
    {
      v13 = v12;
      v14 = sub_1BE052434();

      return v14;
    }
  }

LABEL_17:
  v16 = v20;
  (*(v1 + 104))(v4, *MEMORY[0x1E69B8068], v20);
  result = PKPassKitBundle();
  if (result)
  {
    v17 = result;
    v18 = sub_1BE04B6F4();

    (*(v1 + 8))(v4, v16);
    return v18;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1BD109E30()
{
  v1 = *(v0 + *(type metadata accessor for PaymentPassHubView(0) + 80));
  if (!v1)
  {
    return 0;
  }

  if (v1 >> 62)
  {
LABEL_20:
    v2 = sub_1BE053704();
    if (!v2)
    {
      return 0;
    }
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v2)
    {
      return 0;
    }
  }

  for (i = 0; ; ++i)
  {
    if ((v1 & 0xC000000000000001) != 0)
    {
      v4 = MEMORY[0x1BFB40900](i, v1);
    }

    else
    {
      if (i >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_19;
      }

      v4 = *(v1 + 8 * i + 32);
    }

    v5 = v4;
    v6 = i + 1;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_19:
      __break(1u);
      goto LABEL_20;
    }

    if ([v4 type] == 1)
    {
      break;
    }

    if (v6 == v2)
    {
      return 0;
    }
  }

  objc_opt_self();
  v7 = swift_dynamicCastObjCClass();
  if (v7)
  {
    v8 = [v7 localizedPayInFullSubtitleOverride];
    if (v8)
    {
      v9 = v8;
      v10 = sub_1BE052434();

      return v10;
    }
  }

  return 0;
}

uint64_t sub_1BD109F7C(char a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD520A0);
  result = MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v10 = &v15 - v9;
  if (a1)
  {
    v11 = type metadata accessor for PaymentPassHubView(0);
    v12 = *(a2 + v11[12]);
    sub_1BD10CD64(a2 + v11[5], v10, type metadata accessor for AvailablePass);
    v13 = type metadata accessor for AvailablePass(0);
    (*(*(v13 - 8) + 56))(v10, 0, 1, v13);
    v12(v10, a3, *(a2 + v11[15]));
    v14 = sub_1BD0DE53C(v10, &qword_1EBD520A0);
    return (*(a2 + v11[13]))(v14);
  }

  return result;
}

id sub_1BD10A0C8@<X0>(void *a1@<X0>, int a2@<W1>, int a3@<W2>, uint64_t a4@<X8>)
{
  *a4 = sub_1BE04F504();
  *(a4 + 8) = 0;
  *(a4 + 16) = 1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39710);
  return sub_1BD10A138(a1, a2, a3, a4 + *(v8 + 44));
}

id sub_1BD10A138@<X0>(void *a1@<X0>, int a2@<W1>, int a3@<W2>, uint64_t a4@<X8>)
{
  LODWORD(v74) = a3;
  LODWORD(v73) = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39718);
  v76 = *(v6 - 8);
  v77 = v6;
  MEMORY[0x1EEE9AC00](v6, v7);
  v72 = (v65 - v8);
  v9 = sub_1BE04F6E4();
  v68 = *(v9 - 8);
  v69 = v9;
  MEMORY[0x1EEE9AC00](v9, v10);
  v67 = v65 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38BA8);
  v14 = MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v71 = v65 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v16);
  v70 = v65 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39720);
  v20 = MEMORY[0x1EEE9AC00](v18 - 8, v19);
  v75 = v65 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20, v22);
  v78 = v65 - v23;
  result = [a1 displayName];
  if (result)
  {
    v25 = result;
    v26 = sub_1BE052434();
    v28 = v27;

    v79 = v26;
    v80 = v28;
    sub_1BD0DDEBC();
    v29 = sub_1BE0506C4();
    v31 = v30;
    v33 = v32;
    sub_1BE050324();
    v34 = sub_1BE0505F4();
    v36 = v35;
    v38 = v37;

    sub_1BD0DDF10(v29, v31, v33 & 1);

    if (v73)
    {
      sub_1BE051224();
    }

    else
    {
      sub_1BE051494();
    }

    v39 = sub_1BE050564();
    v73 = v40;
    LODWORD(v42) = v41;
    v44 = v43;

    sub_1BD0DDF10(v34, v36, v38 & 1);

    v45 = 1;
    if (v74)
    {
      v46 = sub_1BE051574();
      v65[2] = v46;
      v47 = sub_1BE0502D4();
      v65[1] = v47;
      KeyPath = swift_getKeyPath();
      v66 = v42;
      v49 = KeyPath;
      v50 = sub_1BE0511E4();
      v51 = swift_getKeyPath();
      v79 = v46;
      v80 = v49;
      v81 = v47;
      v82 = v51;
      v83 = v50;
      v52 = v39;
      v53 = v67;
      sub_1BE04F6B4();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD49170);
      sub_1BD0F1430();
      v74 = v44;
      v54 = v70;
      sub_1BE050DA4();
      v55 = v53;
      v39 = v52;
      (*(v68 + 8))(v55, v69);

      v42 = v71;
      sub_1BD0DE19C(v54, v71, &qword_1EBD38BA8);
      v56 = v72;
      *v72 = 0;
      *(v56 + 8) = 1;
      v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39730);
      sub_1BD0DE19C(v42, v56 + *(v57 + 48), &qword_1EBD38BA8);
      v58 = v54;
      v44 = v74;
      sub_1BD0DE53C(v58, &qword_1EBD38BA8);
      v59 = v42;
      LOBYTE(v42) = v66;
      sub_1BD0DE53C(v59, &qword_1EBD38BA8);
      sub_1BD0DE204(v56, v78, &qword_1EBD39718);
      v45 = 0;
    }

    v60 = v78;
    (*(v76 + 56))(v78, v45, 1, v77);
    v61 = v75;
    sub_1BD0DE19C(v60, v75, &qword_1EBD39720);
    v62 = v73;
    *a4 = v39;
    *(a4 + 8) = v62;
    v63 = v42 & 1;
    *(a4 + 16) = v63;
    *(a4 + 24) = v44;
    v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39728);
    sub_1BD0DE19C(v61, a4 + *(v64 + 48), &qword_1EBD39720);
    sub_1BD0D7F18(v39, v62, v63);
    sub_1BE048C84();
    sub_1BD0DE53C(v60, &qword_1EBD39720);
    sub_1BD0DE53C(v61, &qword_1EBD39720);
    sub_1BD0DDF10(v39, v62, v63);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1BD10A714(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v26 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39350);
  v9 = MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v11 = &v27[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  MEMORY[0x1EEE9AC00](v9, v12);
  v14 = &v27[-v13 - 8];
  v15 = type metadata accessor for PaymentPassHubView.DetailSheet(0);
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15, v17);
  v19 = &v27[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  sub_1BD6B2184(5, 6u, 0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39440);
  v21 = *(v20 + 48);
  v22 = &v19[*(v20 + 64)];
  sub_1BD0DE19C(a1, v19, &qword_1EBD520A0);
  *&v19[v21] = a2;
  *(v22 + 4) = *(a3 + 32);
  v23 = *(a3 + 16);
  *v22 = *a3;
  *(v22 + 1) = v23;
  swift_storeEnumTagMultiPayload();
  sub_1BD10CD64(v19, v14, type metadata accessor for PaymentPassHubView.DetailSheet);
  (*(v16 + 56))(v14, 0, 1, v15);
  type metadata accessor for PaymentPassHubView(0);
  sub_1BD0DE19C(v14, v11, &qword_1EBD39350);
  v24 = a2;
  sub_1BD10D494(a3, v27);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD392D0);
  sub_1BE0516B4();
  sub_1BD0DE53C(v14, &qword_1EBD39350);
  return sub_1BD10E3D0(v19, type metadata accessor for PaymentPassHubView.DetailSheet);
}

uint64_t sub_1BD10A998@<X0>(uint64_t a1@<X1>, unint64_t *a2@<X8>)
{
  v4 = 0xD000000000000019;
  v5 = MEMORY[0x1EEE9AC00](v2, a1);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BD10CD64(v5, v7, type metadata accessor for PaymentPassHubView.DetailSheet);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    result = sub_1BD10E3D0(v7, type metadata accessor for PaymentPassHubView.DetailSheet);
    v9 = "SELECT_PAYMENT_METHOD";
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39440);

    v11 = *&v7[*(v10 + 64) + 32];

    result = sub_1BD0DE53C(v7, &qword_1EBD520A0);
    v9 = "payWithRewardsExplanation";
    v4 = 0xD00000000000001BLL;
  }

  *a2 = v4;
  a2[1] = v9 | 0x8000000000000000;
  return result;
}

uint64_t objectdestroyTm_3()
{
  v1 = type metadata accessor for PaymentPassHubView(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = v0 + ((v2 + 16) & ~v2);
  v4 = (v3 + v1[5]);
  type metadata accessor for WrappedPass(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2)
  {

    v6 = *(type metadata accessor for PlaceholderPass(0) + 28);
    v7 = sub_1BE04CF34();
    (*(*(v7 - 8) + 8))(v4 + v6, v7);
  }

  else if (EnumCaseMultiPayload <= 1)
  {
  }

  v8 = type metadata accessor for AvailablePass(0);
  v9 = v4 + v8[6];
  v10 = type metadata accessor for IdentityCredential(0);
  v157 = *(*(v10 - 8) + 48);
  if (!v157(v9, 1, v10))
  {

    v11 = *(v10 + 20);
    v12 = sub_1BE04DA84();
    (*(*(v12 - 8) + 8))(&v9[v11], v12);
  }

  v161 = v10;
  v13 = (v4 + v8[7]);
  v158 = type metadata accessor for BalanceInfo(0);
  v156 = *(*(v158 - 8) + 48);
  if (!v156(v13, 1))
  {

    v14 = *(v158 + 28);
    v15 = sub_1BE04AF64();
    v16 = *(v15 - 8);
    if (!(*(v16 + 48))(v13 + v14, 1, v15))
    {
      (*(v16 + 8))(v13 + v14, v15);
    }
  }

  v17 = v4 + v8[10];
  v159 = type metadata accessor for PassEligibleRewardsInfo();
  v155 = *(*(v159 - 8) + 48);
  v160 = v8;
  if (!v155(v17, 1))
  {
    if (*(v17 + 2) != 1)
    {
    }

    if (*(v17 + 9) != 1)
    {
    }

    v18 = *(v159 + 28);
    v19 = sub_1BE04AF64();
    v20 = *(v19 - 8);
    v21 = *(v20 + 48);
    if (!v21(&v17[v18], 1, v19))
    {
      (*(v20 + 8))(&v17[v18], v19);
    }

    v22 = *(v159 + 32);
    if (!v21(&v17[v22], 1, v19))
    {
      (*(v20 + 8))(&v17[v22], v19);
    }
  }

  v23 = (v4 + v8[12]);
  if (*v23)
  {
  }

  v24 = (v4 + v8[13]);
  if (*v24)
  {
  }

  v25 = (v3 + v1[7]);
  v154 = *(*(v8 - 1) + 48);
  v26 = v161;
  if (!v154(v25, 1, v8))
  {
    v27 = swift_getEnumCaseMultiPayload();
    if (v27 == 2)
    {

      v28 = *(type metadata accessor for PlaceholderPass(0) + 28);
      v29 = sub_1BE04CF34();
      (*(*(v29 - 8) + 8))(v25 + v28, v29);
    }

    else if (v27 <= 1)
    {
    }

    v30 = v25 + v8[6];
    if (!v157(v30, 1, v161))
    {

      v31 = *(v161 + 20);
      v32 = sub_1BE04DA84();
      (*(*(v32 - 8) + 8))(&v30[v31], v32);
    }

    v33 = (v25 + v8[7]);
    if (!(v156)(v33, 1, v158))
    {

      v34 = *(v158 + 28);
      v35 = sub_1BE04AF64();
      v36 = *(v35 - 8);
      if (!(*(v36 + 48))(v33 + v34, 1, v35))
      {
        (*(v36 + 8))(v33 + v34, v35);
      }
    }

    v37 = v25 + v8[10];
    if (!(v155)(v37, 1, v159))
    {
      if (*(v37 + 2) != 1)
      {
      }

      if (*(v37 + 9) != 1)
      {
      }

      v38 = *(v159 + 28);
      v39 = sub_1BE04AF64();
      v40 = *(v39 - 8);
      v41 = *(v40 + 48);
      if (!v41(&v37[v38], 1, v39))
      {
        (*(v40 + 8))(&v37[v38], v39);
      }

      v42 = *(v159 + 32);
      if (!v41(&v37[v42], 1, v39))
      {
        (*(v40 + 8))(&v37[v42], v39);
      }
    }

    v43 = (v25 + v8[12]);
    if (*v43)
    {
    }

    v44 = (v25 + v8[13]);
    if (*v44)
    {
    }

    v26 = v161;
  }

  v45 = type metadata accessor for Passes(0);

  v46 = v3 + v1[8];
  if (*(v46 + 48))
  {
    sub_1BD0D455C(*v46, *(v46 + 8), *(v46 + 16));
  }

  v47 = v3 + v1[14];
  v48 = _s14PaymentSummaryVMa();
  if (!(*(*(v48 - 1) + 48))(v47, 1, v48))
  {
    v153 = v45;

    v49 = _s11TotalAmountVMa(0);
    v50 = v47 + v49[10];
    _s22SummaryItemPricingTypeOMa(0);
    v51 = swift_getEnumCaseMultiPayload();
    switch(v51)
    {
      case 2:

        break;
      case 1:
        v59 = sub_1BE04AF64();
        (*(*(v59 - 8) + 8))(v50, v59);
        break;
      case 0:
        v150 = v48;
        v52 = _s22SummaryItemPricingTypeO13RecurringItemVMa(0);
        v53 = *(v52 + 24);
        v54 = sub_1BE04AF64();
        v55 = *(v54 - 8);
        v56 = *(v55 + 48);
        if (!v56(v50 + v53, 1, v54))
        {
          (*(v55 + 8))(v50 + v53, v54);
        }

        v57 = v55;
        v58 = *(v52 + 28);
        if (!v56(v50 + v58, 1, v54))
        {
          (*(v57 + 8))(v50 + v58, v54);
        }

        v8 = v160;
        v26 = v161;
        v48 = v150;
        break;
    }

    v60 = (v47 + v49[15]);
    v61 = v49;
    v62 = type metadata accessor for PeerPaymentModel();
    if (!(*(*(v62 - 1) + 48))(v60, 1, v62))
    {
      v148 = v61;

      v63 = (v60 + v62[5]);
      v64 = swift_getEnumCaseMultiPayload();
      v151 = v48;
      if (v64 == 2)
      {

        v65 = *(type metadata accessor for PlaceholderPass(0) + 28);
        v66 = sub_1BE04CF34();
        (*(*(v66 - 8) + 8))(v63 + v65, v66);
      }

      else if (v64 <= 1)
      {
      }

      v67 = v63 + v160[6];
      if (!v157(v67, 1, v26))
      {

        v68 = *(v161 + 20);
        v69 = sub_1BE04DA84();
        (*(*(v69 - 8) + 8))(&v67[v68], v69);
      }

      v70 = (v63 + v160[7]);
      if (!(v156)(v70, 1, v158))
      {

        v71 = *(v158 + 28);
        v72 = sub_1BE04AF64();
        v73 = *(v72 - 8);
        if (!(*(v73 + 48))(v70 + v71, 1, v72))
        {
          (*(v73 + 8))(v70 + v71, v72);
        }
      }

      v74 = v63 + v160[10];
      if (!(v155)(v74, 1, v159))
      {
        if (*(v74 + 2) != 1)
        {
        }

        if (*(v74 + 9) != 1)
        {
        }

        v75 = *(v159 + 28);
        v76 = sub_1BE04AF64();
        v146 = *(v76 - 8);
        v145 = v75;
        v77 = &v74[v75];
        v78 = *(v146 + 48);
        if (!v78(v77, 1, v76))
        {
          (*(v146 + 8))(&v74[v145], v76);
        }

        v79 = *(v159 + 32);
        if (!v78(&v74[v79], 1, v76))
        {
          (*(v146 + 8))(&v74[v79], v76);
        }
      }

      v80 = (v63 + v160[12]);
      if (*v80)
      {
      }

      v81 = (v63 + v160[13]);
      if (*v81)
      {
      }

      v8 = v160;

      v82 = v60;
      v83 = (v60 + v62[6]);
      v26 = v161;
      v48 = v151;
      if (*v83 != 1)
      {

        if (v83[3])
        {
        }

        v82 = v60;
      }

      v61 = v148;
    }

    v84 = (v47 + v61[16]);
    v85 = v153;
    if (!(*(*(v153 - 8) + 48))(v84, 1, v153))
    {
      if (!v154(v84, 1, v8))
      {
        v86 = swift_getEnumCaseMultiPayload();
        if (v86 == 2)
        {

          v87 = *(type metadata accessor for PlaceholderPass(0) + 28);
          v88 = sub_1BE04CF34();
          (*(*(v88 - 8) + 8))(v84 + v87, v88);
        }

        else if (v86 <= 1)
        {
        }

        v89 = v84 + v8[6];
        if (!v157(v89, 1, v26))
        {

          v90 = v48;
          v91 = *(v161 + 20);
          v92 = sub_1BE04DA84();
          v93 = &v89[v91];
          v48 = v90;
          (*(*(v92 - 8) + 8))(v93, v92);
        }

        v152 = v48;
        v94 = (v84 + v8[7]);
        if (!(v156)(v94, 1, v158))
        {

          v95 = *(v158 + 28);
          v96 = sub_1BE04AF64();
          v97 = *(v96 - 8);
          if (!(*(v97 + 48))(v94 + v95, 1, v96))
          {
            (*(v97 + 8))(v94 + v95, v96);
          }
        }

        v98 = v84 + v160[10];
        if (!(v155)(v98, 1, v159))
        {
          if (*(v98 + 2) != 1)
          {
          }

          if (*(v98 + 9) != 1)
          {
          }

          v99 = *(v159 + 28);
          v100 = sub_1BE04AF64();
          v149 = *(v100 - 8);
          v147 = v99;
          v101 = &v98[v99];
          v102 = *(v149 + 48);
          if (!v102(v101, 1, v100))
          {
            (*(v149 + 8))(&v98[v147], v100);
          }

          v103 = *(v159 + 32);
          if (!v102(&v98[v103], 1, v100))
          {
            (*(v149 + 8))(&v98[v103], v100);
          }
        }

        v26 = v161;
        v104 = (v84 + v160[12]);
        if (*v104)
        {
        }

        v105 = (v84 + v160[13]);
        v48 = v152;
        if (*v105)
        {
        }

        v8 = v160;

        v85 = v153;
      }
    }

    if (*(v47 + v48[7] + 8))
    {
    }

    v106 = v47 + v48[9];
    if (*(v106 + 8))
    {
    }

    v107 = v47 + v48[10];
    if (*(v107 + 8))
    {
    }

    v108 = v47 + v48[11];
    v109 = type metadata accessor for DeferredPaymentRequest();
    if (!(*(*(v109 - 1) + 48))(v108, 1, v109))
    {

      v110 = v109[7];
      v111 = sub_1BE04AF64();
      v112 = *(v111 - 8);
      if (!(*(v112 + 48))(v108 + v110, 1, v111))
      {
        (*(v112 + 8))(v108 + v110, v111);
      }

      v113 = v109[8];
      v114 = sub_1BE04B3B4();
      v115 = *(v114 - 8);
      if (!(*(v115 + 48))(v108 + v113, 1, v114))
      {
        (*(v115 + 8))(v108 + v113, v114);
      }

      v8 = v160;
      v26 = v161;
    }
  }

  v116 = (v3 + v1[24]);
  v117 = type metadata accessor for PaymentPassHubView.DetailSheet(0);
  if (!(*(*(v117 - 8) + 48))(v116, 1, v117))
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {

      v118 = v116 + 2;
    }

    else
    {
      if (!v154(v116, 1, v8))
      {
        v119 = swift_getEnumCaseMultiPayload();
        if (v119 == 2)
        {

          v120 = *(type metadata accessor for PlaceholderPass(0) + 28);
          v121 = sub_1BE04CF34();
          (*(*(v121 - 8) + 8))(v116 + v120, v121);
        }

        else if (v119 <= 1)
        {
        }

        v122 = v116 + v8[6];
        if (!v157(v122, 1, v26))
        {

          v123 = *(v26 + 20);
          v124 = sub_1BE04DA84();
          (*(*(v124 - 8) + 8))(&v122[v123], v124);
        }

        v125 = (v116 + v8[7]);
        if (!(v156)(v125, 1, v158))
        {

          v126 = *(v158 + 28);
          v127 = sub_1BE04AF64();
          v128 = *(v127 - 8);
          if (!(*(v128 + 48))(v125 + v126, 1, v127))
          {
            (*(v128 + 8))(v125 + v126, v127);
          }
        }

        v129 = v116 + v8[10];
        if (!(v155)(v129, 1, v159))
        {
          if (*(v129 + 2) != 1)
          {
          }

          if (*(v129 + 9) != 1)
          {
          }

          v130 = *(v159 + 28);
          v131 = sub_1BE04AF64();
          v132 = *(v131 - 8);
          v133 = *(v132 + 48);
          if (!v133(&v129[v130], 1, v131))
          {
            (*(v132 + 8))(&v129[v130], v131);
          }

          v134 = *(v159 + 32);
          v8 = v160;
          if (!v133(&v129[v134], 1, v131))
          {
            (*(v132 + 8))(&v129[v134], v131);
          }
        }

        v135 = (v116 + v8[12]);
        if (*v135)
        {
        }

        v136 = (v116 + v8[13]);
        if (*v136)
        {
        }
      }

      v137 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39440);

      v138 = v116 + *(v137 + 64);

      v118 = (v138 + 32);
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD392D0);

  v139 = (v3 + v1[25]);
  v140 = type metadata accessor for MultiHyperLinkDetailSheet();
  if (!(*(*(v140 - 8) + 48))(v139, 1, v140))
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v141 = sub_1BE04AA64();
      (*(*(v141 - 8) + 8))(v139, v141);
    }

    else
    {
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD45120);

  v142 = v1[33];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4E5B0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v143 = sub_1BE04E354();
    (*(*(v143 - 8) + 8))(v3 + v142, v143);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1BD10C8D0(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for PaymentPassHubView(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

unint64_t sub_1BD10C944()
{
  result = qword_1EBD39450;
  if (!qword_1EBD39450)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD393F8);
    sub_1BD10C9D0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD39450);
  }

  return result;
}

unint64_t sub_1BD10C9D0()
{
  result = qword_1EBD39458;
  if (!qword_1EBD39458)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD39448);
    sub_1BD0DE4F4(&qword_1EBD39460, &qword_1EBD39468);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD39458);
  }

  return result;
}

uint64_t sub_1BD10CAFC(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1BD10CB44()
{
  result = qword_1EBD39488;
  if (!qword_1EBD39488)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD39470);
    sub_1BD10CAFC(&qword_1EBD39490, type metadata accessor for BillingAddressEditor);
    sub_1BD10CC00();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD39488);
  }

  return result;
}

unint64_t sub_1BD10CC00()
{
  result = qword_1EBD39498;
  if (!qword_1EBD39498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD39498);
  }

  return result;
}

unint64_t sub_1BD10CC54()
{
  result = qword_1EBD451D0;
  if (!qword_1EBD451D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD394A0);
    sub_1BD10CD10();
    sub_1BD10CAFC(&qword_1EBD394A8, type metadata accessor for SafariViewController);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD451D0);
  }

  return result;
}

unint64_t sub_1BD10CD10()
{
  result = qword_1EBD451E0;
  if (!qword_1EBD451E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD451E0);
  }

  return result;
}

uint64_t sub_1BD10CD64(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BD10CDCC(void *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39350);
  v6 = MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v9);
  v11 = &v17 - v10;
  if (a1)
  {
    v12 = type metadata accessor for PaymentPassHubView(0);
    v13 = *(a2 + *(v12 + 36));
    v14 = a1;
    v13();
    (*(a2 + *(v12 + 44)))(v14);
  }

  v15 = type metadata accessor for PaymentPassHubView.DetailSheet(0);
  (*(*(v15 - 8) + 56))(v11, 1, 1, v15);
  type metadata accessor for PaymentPassHubView(0);
  sub_1BD0DE19C(v11, v8, &qword_1EBD39350);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD392D0);
  sub_1BE0516B4();
  return sub_1BD0DE53C(v11, &qword_1EBD39350);
}

uint64_t sub_1BD10CF70()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39350);
  v2 = MEMORY[0x1EEE9AC00](v0 - 8, v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v2, v5);
  v7 = &v10 - v6;
  v8 = type metadata accessor for PaymentPassHubView.DetailSheet(0);
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  type metadata accessor for PaymentPassHubView(0);
  sub_1BD0DE19C(v7, v4, &qword_1EBD39350);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD392D0);
  sub_1BE0516B4();
  return sub_1BD0DE53C(v7, &qword_1EBD39350);
}

uint64_t sub_1BD10D0C8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39350);
  v4 = MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v6 = &v18[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v18[-v8];
  v10 = type metadata accessor for PaymentPassHubView(0);
  sub_1BD49C81C(v10);
  v11 = sub_1BE052404();

  PKSetHasSeenPaymentOfferRewardsExplanationScreen();

  sub_1BD759280(v19);
  v12 = (a1 + *(v10 + 124));
  v13 = v12[1];
  v24[0] = *v12;
  v24[1] = v13;
  v15 = *v12;
  v14 = v12[1];
  v24[2] = v12[2];
  v25 = *(v12 + 6);
  v20 = v15;
  v21 = v14;
  v22 = v12[2];
  v23 = *(v12 + 6);
  sub_1BD0DE19C(v24, v26, &qword_1EBD394D0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD394D0);
  sub_1BE0516B4();
  v26[0] = v20;
  v26[1] = v21;
  v26[2] = v22;
  v27 = v23;
  sub_1BD0DE53C(v26, &qword_1EBD394D0);
  sub_1BD755098();
  v16 = type metadata accessor for PaymentPassHubView.DetailSheet(0);
  (*(*(v16 - 8) + 56))(v9, 1, 1, v16);
  sub_1BD0DE19C(v9, v6, &qword_1EBD39350);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD392D0);
  sub_1BE0516B4();
  return sub_1BD0DE53C(v9, &qword_1EBD39350);
}

uint64_t sub_1BD10D328()
{
  v1 = *(type metadata accessor for PaymentPassHubView(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_1BD10D0C8(v2);
}

uint64_t sub_1BD10D3B4(void *a1)
{
  v3 = *(type metadata accessor for PaymentPassHubView(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD520A0);

  return sub_1BD10CDCC(a1, v1 + v4);
}

uint64_t sub_1BD10D4F0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BD10D5AC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AvailablePass(0);
  v56 = *(v4 - 8);
  v57 = v4;
  MEMORY[0x1EEE9AC00](v4, v5);
  v54 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD520A0);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v55 = &v54 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39738);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v54 - v12;
  v14 = type metadata accessor for PaymentPassHubView.DetailSheet(0);
  v16 = MEMORY[0x1EEE9AC00](v14, v15);
  v18 = (&v54 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v16, v19);
  v21 = &v54 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39740);
  v24 = MEMORY[0x1EEE9AC00](v22 - 8, v23);
  v26 = &v54 - v25;
  v27 = (&v54 + *(v24 + 56) - v25);
  sub_1BD10CD64(a1, &v54 - v25, type metadata accessor for PaymentPassHubView.DetailSheet);
  sub_1BD10CD64(a2, v27, type metadata accessor for PaymentPassHubView.DetailSheet);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_1BD10CD64(v26, v21, type metadata accessor for PaymentPassHubView.DetailSheet);
    v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39440);
    v38 = *(v37 + 48);
    v39 = *&v21[v38];
    v40 = *(v37 + 64);
    v41 = *&v21[v40 + 16];
    v58[0] = *&v21[v40];
    v58[1] = v41;
    v59 = *&v21[v40 + 32];
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1BD10D558(v58);

      sub_1BD0DE53C(v21, &qword_1EBD520A0);
LABEL_12:
      sub_1BD0DE53C(v26, &qword_1EBD39740);
LABEL_35:
      v52 = 0;
      return v52 & 1;
    }

    v33 = *(v27 + v38);
    v42 = *(v27 + v40 + 16);
    v60[0] = *(v27 + v40);
    v60[1] = v42;
    v61 = *(v27 + v40 + 32);
    v43 = *(v10 + 48);
    sub_1BD0DE204(v21, v13, &qword_1EBD520A0);
    sub_1BD0DE204(v27, &v13[v43], &qword_1EBD520A0);
    v44 = v57;
    v45 = *(v56 + 48);
    if (v45(v13, 1, v57) == 1)
    {
      if (v45(&v13[v43], 1, v44) == 1)
      {
        sub_1BD0DE53C(v13, &qword_1EBD520A0);
        goto LABEL_22;
      }

      sub_1BD10D558(v60);
      sub_1BD10D558(v58);
    }

    else
    {
      v46 = v55;
      sub_1BD0DE19C(v13, v55, &qword_1EBD520A0);
      if (v45(&v13[v43], 1, v44) != 1)
      {
        v47 = &v13[v43];
        v48 = v54;
        sub_1BD10D4F0(v47, v54, type metadata accessor for AvailablePass);
        v49 = sub_1BD498D50(v46, v48);
        sub_1BD10E3D0(v48, type metadata accessor for AvailablePass);
        sub_1BD10E3D0(v46, type metadata accessor for AvailablePass);
        sub_1BD0DE53C(v13, &qword_1EBD520A0);
        if ((v49 & 1) == 0)
        {
          sub_1BD10D558(v60);
          sub_1BD10D558(v58);

          goto LABEL_34;
        }

LABEL_22:
        if (v39)
        {
          if (!v33)
          {
            v33 = v39;
            sub_1BD10D558(v60);
            sub_1BD10D558(v58);

            goto LABEL_33;
          }

          sub_1BD0E5E8C(0, &qword_1EBD406E0);
          v50 = v39;
          v33 = v33;
          v51 = sub_1BE053074();

          if ((v51 & 1) == 0)
          {
            sub_1BD10D558(v60);
            sub_1BD10D558(v58);

LABEL_33:
            goto LABEL_34;
          }
        }

        else
        {
          if (v33)
          {
            sub_1BD10D558(v60);
            sub_1BD10D558(v58);
            goto LABEL_33;
          }

          v50 = 0;
        }

        v52 = sub_1BD8434FC(v58, v60);
        sub_1BD10D558(v60);
        sub_1BD10D558(v58);

        sub_1BD10E3D0(v26, type metadata accessor for PaymentPassHubView.DetailSheet);
        return v52 & 1;
      }

      sub_1BD10D558(v60);
      sub_1BD10D558(v58);

      sub_1BD10E3D0(v46, type metadata accessor for AvailablePass);
    }

    sub_1BD0DE53C(v13, &qword_1EBD39738);
    goto LABEL_34;
  }

  sub_1BD10CD64(v26, v18, type metadata accessor for PaymentPassHubView.DetailSheet);
  v29 = *v18;
  v28 = v18[1];
  v30 = v18[2];
  if (swift_getEnumCaseMultiPayload() != 1)
  {

    goto LABEL_12;
  }

  v31 = *v27;
  v32 = v27[1];
  v33 = v27[2];
  sub_1BD0E5E8C(0, &qword_1EBD3E3F0);
  v34 = sub_1BE053074();

  if ((v34 & 1) == 0 || (sub_1BE053074() & 1) == 0)
  {

LABEL_34:
    sub_1BD10E3D0(v26, type metadata accessor for PaymentPassHubView.DetailSheet);
    goto LABEL_35;
  }

  if (!v30)
  {

    if (!v33)
    {
      goto LABEL_30;
    }

    goto LABEL_33;
  }

  if (!v33)
  {

    v33 = v30;
    goto LABEL_33;
  }

  sub_1BD0E5E8C(0, &qword_1EBD57A10);
  v35 = v30;
  v36 = sub_1BE053074();

  if ((v36 & 1) == 0)
  {
    goto LABEL_34;
  }

LABEL_30:
  sub_1BD10E3D0(v26, type metadata accessor for PaymentPassHubView.DetailSheet);
  v52 = 1;
  return v52 & 1;
}

uint64_t sub_1BD10DD14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for PaymentPassHubView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_1BD1054F4(a1, v6, a2);
}

uint64_t sub_1BD10DDA4(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    a4();
    sub_1BD10CAFC(&qword_1EBD52210, MEMORY[0x1E697CBE8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1BD10DE58()
{
  result = qword_1EBD394E8;
  if (!qword_1EBD394E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD394F0);
    sub_1BD0DE4F4(&qword_1EBD394F8, &qword_1EBD39500);
    sub_1BD0DE4F4(&unk_1EBD366D0, &unk_1EBD511D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD394E8);
  }

  return result;
}

unint64_t sub_1BD10DF64()
{
  result = qword_1EBD39528;
  if (!qword_1EBD39528)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD39520);
    sub_1BD0DE4F4(&qword_1EBD39530, &qword_1EBD39538);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD39528);
  }

  return result;
}

unint64_t sub_1BD10E01C()
{
  result = qword_1EBD39548;
  if (!qword_1EBD39548)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD39510);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD39508);
    sub_1BD0DE4F4(&qword_1EBD39540, &qword_1EBD39508);
    swift_getOpaqueTypeConformance2();
    sub_1BD0DE4F4(&qword_1EBD36710, &qword_1EBD491B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD39548);
  }

  return result;
}

unint64_t sub_1BD10E1AC()
{
  result = qword_1EBD39588;
  if (!qword_1EBD39588)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD39558);
    sub_1BD10E264();
    sub_1BD0DE4F4(&qword_1EBD395B8, &qword_1EBD39580);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD39588);
  }

  return result;
}

unint64_t sub_1BD10E264()
{
  result = qword_1EBD39590;
  if (!qword_1EBD39590)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD39578);
    sub_1BD0DE4F4(&qword_1EBD39598, &qword_1EBD395A0);
    sub_1BD0DE4F4(&qword_1EBD395A8, &qword_1EBD395B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD39590);
  }

  return result;
}

uint64_t sub_1BD10E348(uint64_t a1, void *a2, uint64_t a3)
{
  v7 = *(type metadata accessor for PaymentPassHubView(0) - 8);
  v8 = v3 + ((*(v7 + 80) + 16) & ~*(v7 + 80));

  return sub_1BD10A714(a1, a2, a3, v8);
}

uint64_t sub_1BD10E3D0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1BD10E438()
{
  result = qword_1EBD39628;
  if (!qword_1EBD39628)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD39618);
    sub_1BD10E4BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD39628);
  }

  return result;
}

unint64_t sub_1BD10E4BC()
{
  result = qword_1EBD39630;
  if (!qword_1EBD39630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD39630);
  }

  return result;
}

uint64_t sub_1BD10E570()
{
  v1 = *(type metadata accessor for PaymentPassHubView(0) - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 17) & ~*(v1 + 80));

  return sub_1BD1099B4(v2, v3);
}

unint64_t sub_1BD10E5DC()
{
  result = qword_1EBD39670;
  if (!qword_1EBD39670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD39670);
  }

  return result;
}

unint64_t sub_1BD10E640()
{
  result = qword_1EBD43BB0;
  if (!qword_1EBD43BB0)
  {
    sub_1BD0E5E8C(255, &qword_1EBD43BA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD43BB0);
  }

  return result;
}

unint64_t sub_1BD10E6A8()
{
  result = qword_1EBD396C0;
  if (!qword_1EBD396C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD396C8);
    sub_1BD10E734();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD396C0);
  }

  return result;
}

unint64_t sub_1BD10E734()
{
  result = qword_1EBD396D0;
  if (!qword_1EBD396D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD396D8);
    sub_1BD0DE4F4(&qword_1EBD396E0, &qword_1EBD396E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD396D0);
  }

  return result;
}

uint64_t sub_1BD10E870()
{
  v1 = *(type metadata accessor for PaymentPassHubView(0) - 8);
  v2 = (*(v1 + 80) + 17) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  v4 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1BD109F7C(v3, v0 + v2, v4);
}

unint64_t sub_1BD10E910()
{
  result = qword_1EBD39748;
  if (!qword_1EBD39748)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD394C0);
    sub_1BD10E99C();
    sub_1BD10EC0C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD39748);
  }

  return result;
}

unint64_t sub_1BD10E99C()
{
  result = qword_1EBD39750;
  if (!qword_1EBD39750)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD394B8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD39408);
    type metadata accessor for MultiHyperLinkDetailSheet();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD394A0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD39400);
    type metadata accessor for PaymentPassHubView.DetailSheet(255);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD39470);
    sub_1BD10DDA4(&qword_1EBD39478, &qword_1EBD39400, &unk_1BE0B8698, sub_1BD10C944);
    sub_1BD10CAFC(&qword_1EBD39480, type metadata accessor for PaymentPassHubView.DetailSheet);
    sub_1BD10CB44();
    swift_getOpaqueTypeConformance2();
    sub_1BD10CAFC(&qword_1EBD451C0, type metadata accessor for MultiHyperLinkDetailSheet);
    sub_1BD10CC54();
    swift_getOpaqueTypeConformance2();
    sub_1BD10EBB8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD39750);
  }

  return result;
}

unint64_t sub_1BD10EBB8()
{
  result = qword_1EBD39758;
  if (!qword_1EBD39758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD39758);
  }

  return result;
}

unint64_t sub_1BD10EC0C()
{
  result = qword_1EBD39760;
  if (!qword_1EBD39760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD39760);
  }

  return result;
}

uint64_t type metadata accessor for PeerPaymentToggleSection()
{
  result = qword_1EBD39768;
  if (!qword_1EBD39768)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1BD10ECD8()
{
  type metadata accessor for PKPaymentRequestType(319);
  if (v0 <= 0x3F)
  {
    type metadata accessor for AvailablePass(319);
    if (v1 <= 0x3F)
    {
      sub_1BD10EDF4(319, &qword_1EBD39778, type metadata accessor for AccountServiceAuthorizationModel);
      if (v2 <= 0x3F)
      {
        sub_1BD10EDF4(319, &qword_1EBD36458, type metadata accessor for PeerPaymentModel);
        if (v3 <= 0x3F)
        {
          sub_1BD0FA9D0();
          if (v4 <= 0x3F)
          {
            sub_1BD10EE48();
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_1BD10EDF4(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1BE0534B4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1BD10EE48()
{
  if (!qword_1EBD496E0)
  {
    v0 = sub_1BE0516D4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBD496E0);
    }
  }
}

double sub_1BD10EEB4@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a1;
  v26 = a2;
  v3 = type metadata accessor for PeerPaymentToggleSection();
  v4 = v3 - 8;
  v23 = *(v3 - 8);
  v5 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v3, v6);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39798);
  v8 = *(v7 - 8);
  v24 = v7;
  v25 = v8;
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v21 - v10;
  v12 = a1 + *(v4 + 48);
  v14 = *(v12 + 8);
  v30 = *v12;
  v13 = v30;
  v31 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350);
  sub_1BE0516C4();
  v27 = a1;
  type metadata accessor for PassRow(0);
  sub_1BD1105AC(&qword_1EBD397D8, type metadata accessor for PassRow);
  sub_1BE051814();
  LOBYTE(v28) = v13;
  v29 = v14;
  sub_1BE0516A4();
  LOBYTE(v28) = v30;
  sub_1BD1106D8(v22, &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PeerPaymentToggleSection);
  v15 = (*(v23 + 80) + 16) & ~*(v23 + 80);
  v16 = swift_allocObject();
  sub_1BD1105F4(&v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v15);
  sub_1BD0DE4F4(&qword_1EBD397A0, &qword_1EBD39798);
  v17 = v26;
  v18 = v24;
  sub_1BE051064();

  (*(v25 + 8))(v11, v18);
  v19 = v17 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39788) + 36);
  result = 10.0;
  *v19 = xmmword_1BE0B8C20;
  *(v19 + 16) = xmmword_1BE0B8C20;
  *(v19 + 32) = 0;
  return result;
}

uint64_t sub_1BD10F1F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(type metadata accessor for PeerPaymentToggleSection() + 20);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD397E0);
  v6 = *(v5 + 48);
  v7 = *(v5 + 64);
  sub_1BD1106D8(a1 + v4, a2, type metadata accessor for AvailablePass);
  *(a2 + v6) = 0;
  *(a2 + v7) = 0;
  type metadata accessor for PassRow.Pass(0);
  swift_storeEnumTagMultiPayload();
  result = type metadata accessor for PassRow(0);
  *(a2 + *(result + 20)) = 0;
  return result;
}

uint64_t sub_1BD10F29C(uint64_t a1, unsigned __int8 *a2, uint64_t a3)
{
  result = type metadata accessor for PeerPaymentToggleSection();
  v6 = *(a3 + *(result + 32));
  if (v6)
  {
    v7 = *a2;
    sub_1BE048964();
    v6(v7);

    return sub_1BD0D4744(v6);
  }

  return result;
}

uint64_t sub_1BD10F328@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD452C0);
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = v37 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD397D0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = v37 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD397C0);
  v40 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = v37 - v14;
  v16 = sub_1BD10F7F4();
  if (v17)
  {
    v18 = v16;
    v19 = v17;
    v37[2] = v4;
    v38 = v12;
    v39 = a2;
    sub_1BD10FE40();
    if (v20)
    {
      v21 = (a1 + *(type metadata accessor for PeerPaymentToggleSection() + 36));
      v22 = *v21;
      if (*v21)
      {
        v23 = v21[1];
        v37[0] = objc_allocWithZone(PKTextRangeHyperlink);
        sub_1BD0D44B8(v22);
        sub_1BE048964();
        v24 = sub_1BE052404();

        v45 = v22;
        v46 = v23;
        v37[1] = v23;
        aBlock = MEMORY[0x1E69E9820];
        v42 = 1107296256;
        v43 = sub_1BD126964;
        v44 = &block_descriptor_3;
        v25 = _Block_copy(&aBlock);

        v26 = [v37[0] initWithLinkText:v24 action:v25];
        _Block_release(v25);

        if (v26)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39F80);
          v27 = swift_allocObject();
          *(v27 + 16) = xmmword_1BE0B7020;
          *(v27 + 32) = v26;
          *v11 = v27;
          *(v11 + 1) = 4;
          v11[16] = 0;
          *(v11 + 3) = v18;
          *(v11 + 4) = v19;
          *(v11 + 5) = 0;
          *(v11 + 6) = 0;
          swift_storeEnumTagMultiPayload();
          sub_1BD10E4BC();
          sub_1BD1103C8();
          sub_1BE048C84();
          sub_1BE048C84();
          sub_1BE04F9A4();
          sub_1BD0D4744(v22);

LABEL_12:
          v36 = v39;
          sub_1BD110484(v15, v39);
          return (*(v40 + 56))(v36, 0, 1, v38);
        }

        sub_1BD0D4744(v22);
      }

      else
      {
      }
    }

    aBlock = v18;
    v42 = v19;
    sub_1BD0DDEBC();
    v30 = sub_1BE0506C4();
    v32 = v31;
    aBlock = v30;
    v42 = v31;
    v34 = v33 & 1;
    LOBYTE(v43) = v33 & 1;
    v44 = v35;
    sub_1BE052434();
    sub_1BE050DE4();

    sub_1BD0DDF10(v30, v32, v34);

    sub_1BD0DE19C(v7, v11, &qword_1EBD452C0);
    swift_storeEnumTagMultiPayload();
    sub_1BD10E4BC();
    sub_1BD1103C8();
    sub_1BE04F9A4();
    sub_1BD0DE53C(v7, &qword_1EBD452C0);
    goto LABEL_12;
  }

  v28 = *(v40 + 56);

  return v28(a2, 1, 1, v12);
}

id sub_1BD10F7F4()
{
  v61 = sub_1BE04BD74();
  v1 = *(v61 - 8);
  v3 = MEMORY[0x1EEE9AC00](v61, v2);
  v5 = v58 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v3, v6);
  v9 = v58 - v8;
  v11 = MEMORY[0x1EEE9AC00](v7, v10);
  v13 = v58 - v12;
  v15 = MEMORY[0x1EEE9AC00](v11, v14);
  v17 = v58 - v16;
  v19 = MEMORY[0x1EEE9AC00](v15, v18);
  v21 = v58 - v20;
  MEMORY[0x1EEE9AC00](v19, v22);
  v24 = v58 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD45480);
  MEMORY[0x1EEE9AC00](v25 - 8, v26);
  v28 = v58 - v27;
  if (*v0 == 2)
  {
    v33 = *(v0 + *(type metadata accessor for PeerPaymentToggleSection() + 24));
    if (v33 && *(v33 + qword_1EBDAB038) == 2)
    {
      v34 = v61;
      (*(v1 + 104))(v9, *MEMORY[0x1E69B80E0], v61);
      result = PKPassKitBundle();
      if (!result)
      {
LABEL_21:
        __break(1u);
        goto LABEL_22;
      }

      v36 = result;
      v30 = sub_1BE04B6F4();

      (*(v1 + 8))(v9, v34);
    }

    else
    {
      v37 = v61;
      (*(v1 + 104))(v5, *MEMORY[0x1E69B8050], v61);
      result = PKPassKitBundle();
      if (!result)
      {
LABEL_20:
        __break(1u);
        goto LABEL_21;
      }

      v38 = result;
      v30 = sub_1BE04B6F4();

      (*(v1 + 8))(v5, v37);
    }

    return v30;
  }

  v29 = v17;
  v30 = 0;
  if (*v0 != 9)
  {
    return v30;
  }

  v31 = type metadata accessor for PeerPaymentToggleSection();
  sub_1BD0DE19C(v0 + *(v31 + 28), v28, &qword_1EBD45480);
  v32 = type metadata accessor for PeerPaymentModel();
  if ((*(*(v32 - 8) + 48))(v28, 1, v32) == 1)
  {
    sub_1BD0DE53C(v28, &qword_1EBD45480);
LABEL_16:
    v56 = v61;
    (*(v1 + 104))(v13, *MEMORY[0x1E69B8050], v61);
    result = PKPassKitBundle();
    if (result)
    {
      v57 = result;
      v30 = sub_1BE04B6F4();

      (*(v1 + 8))(v13, v56);
      return v30;
    }

    __break(1u);
    goto LABEL_20;
  }

  v39 = v28[*(v32 + 64)];
  sub_1BD1104F4(v28);
  if (v39 != 1)
  {
    goto LABEL_16;
  }

  v40 = *MEMORY[0x1E69B80A0];
  v41 = v61;
  v60 = *(v1 + 104);
  v60(v24, v40, v61);
  result = PKPassKitBundle();
  if (!result)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v42 = result;
  v58[1] = sub_1BE04B6F4();
  v58[2] = v43;

  v44 = *(v1 + 8);
  v44(v24, v41);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF80);
  v45 = swift_allocObject();
  *(v45 + 16) = xmmword_1BE0B6CA0;
  v59 = v40;
  v60(v21, v40, v41);
  result = PKPassKitBundle();
  if (!result)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v46 = result;
  v47 = sub_1BE04B6F4();
  v49 = v48;

  v44(v21, v41);
  *(v45 + 56) = MEMORY[0x1E69E6158];
  v50 = sub_1BD110550();
  *(v45 + 64) = v50;
  *(v45 + 32) = v47;
  *(v45 + 40) = v49;
  v51 = v29;
  v60(v29, v59, v41);
  result = PKPassKitBundle();
  if (result)
  {
    v52 = result;
    v53 = sub_1BE04B6F4();
    v55 = v54;

    v44(v51, v41);
    *(v45 + 96) = MEMORY[0x1E69E6158];
    *(v45 + 104) = v50;
    *(v45 + 72) = v53;
    *(v45 + 80) = v55;
    v30 = sub_1BE052454();

    return v30;
  }

LABEL_24:
  __break(1u);
  return result;
}

id sub_1BD10FE40()
{
  v1 = sub_1BE04BD74();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v3);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD45480);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v16 - v8;
  if (*v0 != 9)
  {
    return 0;
  }

  v10 = type metadata accessor for PeerPaymentToggleSection();
  sub_1BD0DE19C(v0 + *(v10 + 28), v9, &qword_1EBD45480);
  v11 = type metadata accessor for PeerPaymentModel();
  if ((*(*(v11 - 8) + 48))(v9, 1, v11) == 1)
  {
    sub_1BD0DE53C(v9, &qword_1EBD45480);
    return 0;
  }

  v12 = v9[*(v11 + 64)];
  sub_1BD1104F4(v9);
  if (v12 != 1)
  {
    return 0;
  }

  (*(v2 + 104))(v5, *MEMORY[0x1E69B80A0], v1);
  result = PKPassKitBundle();
  if (result)
  {
    v14 = result;
    v15 = sub_1BE04B6F4();

    (*(v2 + 8))(v5, v1);
    return v15;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1BD110080()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39780);
  MEMORY[0x1EEE9AC00](v1, v2);
  v6 = v0;
  sub_1BD10F328(v0, &v5[-v3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39788);
  sub_1BD11017C();
  sub_1BD1102B8();
  return sub_1BE051A54();
}

unint64_t sub_1BD11017C()
{
  result = qword_1EBD39790;
  if (!qword_1EBD39790)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD39788);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD39798);
    sub_1BD0DE4F4(&qword_1EBD397A0, &qword_1EBD39798);
    swift_getOpaqueTypeConformance2();
    sub_1BD0DE4F4(&unk_1EBD3FB30, &qword_1EBD397A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD39790);
  }

  return result;
}

unint64_t sub_1BD1102B8()
{
  result = qword_1EBD397B0;
  if (!qword_1EBD397B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD39780);
    sub_1BD11033C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD397B0);
  }

  return result;
}

unint64_t sub_1BD11033C()
{
  result = qword_1EBD397B8;
  if (!qword_1EBD397B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD397C0);
    sub_1BD10E4BC();
    sub_1BD1103C8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD397B8);
  }

  return result;
}

unint64_t sub_1BD1103C8()
{
  result = qword_1EBD397C8;
  if (!qword_1EBD397C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD452C0);
    sub_1BD1105AC(&qword_1EBD52210, MEMORY[0x1E697CBE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD397C8);
  }

  return result;
}

uint64_t sub_1BD110484(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD397C0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD1104F4(uint64_t a1)
{
  v2 = type metadata accessor for PeerPaymentModel();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1BD110550()
{
  result = qword_1EBD3FC80;
  if (!qword_1EBD3FC80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3FC80);
  }

  return result;
}

uint64_t sub_1BD1105AC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1BD1105F4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PeerPaymentToggleSection();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD110658(uint64_t a1, unsigned __int8 *a2)
{
  v5 = *(type metadata accessor for PeerPaymentToggleSection() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_1BD10F29C(a1, a2, v6);
}

uint64_t sub_1BD1106D8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_1BD110740()
{
  result = qword_1EBD397E8;
  if (!qword_1EBD397E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD397F0);
    sub_1BD11017C();
    sub_1BD1102B8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD397E8);
  }

  return result;
}

void BankConnectFormatter.formatAsOfDate(_:hasMultipleBalances:)(uint64_t a1, int a2)
{
  v57 = a2;
  v2 = sub_1BE04AF64();
  v59 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2, v3);
  v6 = &v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v4, v7);
  v10 = &v49 - v9;
  MEMORY[0x1EEE9AC00](v8, v11);
  v58 = &v49 - v12;
  v13 = sub_1BE04B2F4();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13, v15);
  v17 = &v49 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1BE04A474();
  v55 = *(v18 - 8);
  v56 = v18;
  MEMORY[0x1EEE9AC00](v18, v19);
  v21 = &v49 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_1BE04AE64();
  v23 = PKRelativeDateString();

  if (v23)
  {
    v53 = v6;
    v54 = v2;
    v24 = sub_1BE052434();
    v50 = v25;
    v51 = v24;

    v52 = v14;
    v26 = *(v14 + 16);
    v27 = v60 + OBJC_IVAR____TtC9PassKitUI20BankConnectFormatter_calendar;
    v60 = v13;
    v26(v17, v27, v13);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39800);
    v28 = sub_1BE04B2D4();
    v29 = *(v28 - 8);
    v30 = (*(v29 + 80) + 32) & ~*(v29 + 80);
    v31 = swift_allocObject();
    v49 = xmmword_1BE0B69E0;
    *(v31 + 16) = xmmword_1BE0B69E0;
    (*(v29 + 104))(v31 + v30, *MEMORY[0x1E6969A10], v28);
    sub_1BD111674(v31);
    swift_setDeallocating();
    (*(v29 + 8))(v31 + v30, v28);
    swift_deallocClassInstance();
    v32 = sub_1BE04AE64();
    v33 = PKDateIgnoringTime();

    if (v33)
    {
      v34 = v58;
      sub_1BE04AEE4();

      sub_1BE04AEF4();
      v35 = sub_1BE04AE64();
      v36 = *(v59 + 8);
      v37 = v10;
      v38 = v54;
      v36(v37, v54);
      v39 = PKDateIgnoringTime();

      if (v39)
      {
        v40 = v53;
        sub_1BE04AEE4();

        sub_1BE04B184();

        (*(v52 + 8))(v17, v60);
        v36(v40, v38);
        v36(v34, v38);
        v41 = sub_1BE04A3F4();
        v43 = v42;
        (*(v55 + 8))(v21, v56);
        if ((v43 & 1) == 0 && v41 >= 1)
        {
          v44 = sub_1BE052404();

          v45 = PKLocalizedBankConnectString(v44);

          if (!v45)
          {
            __break(1u);
            return;
          }

LABEL_10:
          sub_1BE052434();

          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF80);
          v47 = swift_allocObject();
          *(v47 + 16) = v49;
          *(v47 + 56) = MEMORY[0x1E69E6158];
          *(v47 + 64) = sub_1BD110550();
          v48 = v50;
          *(v47 + 32) = v51;
          *(v47 + 40) = v48;
          sub_1BE052454();

          return;
        }

        v46 = sub_1BE052404();

        v45 = PKLocalizedBankConnectString(v46);

        if (v45)
        {
          goto LABEL_10;
        }

LABEL_13:
        __break(1u);
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_13;
  }
}

void BankConnectFormatter.formatAsOfDateWithFullStop(_:hasMultipleBalances:)(uint64_t a1, int a2)
{
  v57 = a2;
  v2 = sub_1BE04AF64();
  v59 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2, v3);
  v6 = &v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v4, v7);
  v10 = &v49 - v9;
  MEMORY[0x1EEE9AC00](v8, v11);
  v58 = &v49 - v12;
  v13 = sub_1BE04B2F4();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13, v15);
  v17 = &v49 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1BE04A474();
  v55 = *(v18 - 8);
  v56 = v18;
  MEMORY[0x1EEE9AC00](v18, v19);
  v21 = &v49 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_1BE04AE64();
  v23 = PKRelativeDateString();

  if (v23)
  {
    v53 = v6;
    v54 = v2;
    v24 = sub_1BE052434();
    v50 = v25;
    v51 = v24;

    v52 = v14;
    v26 = *(v14 + 16);
    v27 = v60 + OBJC_IVAR____TtC9PassKitUI20BankConnectFormatter_calendar;
    v60 = v13;
    v26(v17, v27, v13);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39800);
    v28 = sub_1BE04B2D4();
    v29 = *(v28 - 8);
    v30 = (*(v29 + 80) + 32) & ~*(v29 + 80);
    v31 = swift_allocObject();
    v49 = xmmword_1BE0B69E0;
    *(v31 + 16) = xmmword_1BE0B69E0;
    (*(v29 + 104))(v31 + v30, *MEMORY[0x1E6969A10], v28);
    sub_1BD111674(v31);
    swift_setDeallocating();
    (*(v29 + 8))(v31 + v30, v28);
    swift_deallocClassInstance();
    v32 = sub_1BE04AE64();
    v33 = PKDateIgnoringTime();

    if (v33)
    {
      v34 = v58;
      sub_1BE04AEE4();

      sub_1BE04AEF4();
      v35 = sub_1BE04AE64();
      v36 = *(v59 + 8);
      v37 = v10;
      v38 = v54;
      v36(v37, v54);
      v39 = PKDateIgnoringTime();

      if (v39)
      {
        v40 = v53;
        sub_1BE04AEE4();

        sub_1BE04B184();

        (*(v52 + 8))(v17, v60);
        v36(v40, v38);
        v36(v34, v38);
        v41 = sub_1BE04A3F4();
        v43 = v42;
        (*(v55 + 8))(v21, v56);
        if ((v43 & 1) == 0 && v41 >= 1)
        {
          v44 = sub_1BE052404();

          v45 = PKLocalizedBankConnectString(v44);

          if (!v45)
          {
            __break(1u);
            return;
          }

LABEL_10:
          sub_1BE052434();

          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF80);
          v47 = swift_allocObject();
          *(v47 + 16) = v49;
          *(v47 + 56) = MEMORY[0x1E69E6158];
          *(v47 + 64) = sub_1BD110550();
          v48 = v50;
          *(v47 + 32) = v51;
          *(v47 + 40) = v48;
          sub_1BE052454();

          return;
        }

        v46 = sub_1BE052404();

        v45 = PKLocalizedBankConnectString(v46);

        if (v45)
        {
          goto LABEL_10;
        }

LABEL_13:
        __break(1u);
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_13;
  }
}

id sub_1BD1113BC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(char *, uint64_t))
{
  v8 = sub_1BE04AF64();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BE04AEE4();
  v13 = a1;
  a5(v12, a4);

  (*(v9 + 8))(v12, v8);
  v14 = sub_1BE052404();

  return v14;
}

id BankConnectFormatter.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id BankConnectFormatter.init()()
{
  ObjectType = swift_getObjectType();
  sub_1BE04B2A4();
  v3.receiver = v0;
  v3.super_class = ObjectType;
  return objc_msgSendSuper2(&v3, sel_init);
}

id BankConnectFormatter.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1BD111674(uint64_t a1)
{
  v2 = sub_1BE04B2D4();
  v3 = *(v2 - 8);
  v5 = MEMORY[0x1EEE9AC00](v2, v4);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5, v8);
  v39 = &v32 - v9;
  v10 = *(a1 + 16);
  if (v10)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD398C0);
    v11 = sub_1BE053804();
    v12 = 0;
    v14 = *(v3 + 16);
    v13 = v3 + 16;
    v37 = v14;
    v38 = v11 + 56;
    v15 = *(v13 + 64);
    v34 = v10;
    v35 = a1 + ((v15 + 32) & ~v15);
    v16 = *(v13 + 56);
    v17 = (v13 - 8);
    v33 = (v13 + 16);
    while (1)
    {
      v36 = v12;
      v37(v39, v35 + v16 * v12, v2);
      sub_1BD113090(&qword_1EBD398C8, MEMORY[0x1E6969AD0]);
      v18 = sub_1BE052284();
      v19 = ~(-1 << *(v11 + 32));
      v20 = v18 & v19;
      v21 = (v18 & v19) >> 6;
      v22 = *(v38 + 8 * v21);
      v23 = 1 << (v18 & v19);
      if ((v23 & v22) != 0)
      {
        while (1)
        {
          v24 = v13;
          v37(v7, *(v11 + 48) + v20 * v16, v2);
          sub_1BD113090(&unk_1EBD398D0, MEMORY[0x1E6969AD0]);
          v25 = sub_1BE052334();
          v26 = *v17;
          (*v17)(v7, v2);
          if (v25)
          {
            break;
          }

          v20 = (v20 + 1) & v19;
          v21 = v20 >> 6;
          v22 = *(v38 + 8 * (v20 >> 6));
          v23 = 1 << v20;
          v13 = v24;
          if (((1 << v20) & v22) == 0)
          {
            goto LABEL_8;
          }
        }

        v26(v39, v2);
        v13 = v24;
      }

      else
      {
LABEL_8:
        v27 = v39;
        *(v38 + 8 * v21) = v23 | v22;
        result = (*v33)(*(v11 + 48) + v20 * v16, v27, v2);
        v29 = *(v11 + 16);
        v30 = __OFADD__(v29, 1);
        v31 = v29 + 1;
        if (v30)
        {
          __break(1u);
          return result;
        }

        *(v11 + 16) = v31;
      }

      v12 = v36 + 1;
      if (v36 + 1 == v34)
      {
        return v11;
      }
    }
  }

  return MEMORY[0x1E69E7CD0];
}

uint64_t type metadata accessor for BankConnectFormatter()
{
  result = qword_1EBD39808;
  if (!qword_1EBD39808)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1BD1119E8()
{
  result = sub_1BE04B2F4();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1BD111A78(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39880);
    v3 = sub_1BE053804();
    v4 = 0;
    v5 = v3 + 56;
    v21 = a1 + 32;
    while (1)
    {
      v6 = *(v21 + v4);
      v22 = v4 + 1;
      sub_1BE053D04();
      sub_1BE052434();
      sub_1BE052524();

      result = sub_1BE053D64();
      v8 = ~(-1 << *(v3 + 32));
      v9 = result & v8;
      v10 = (result & v8) >> 6;
      v11 = *(v5 + 8 * v10);
      v12 = 1 << (result & v8);
      if ((v12 & v11) != 0)
      {
        while (1)
        {
          v13 = sub_1BE052434();
          v15 = v14;
          if (v13 == sub_1BE052434() && v15 == v16)
          {
            break;
          }

          v17 = sub_1BE053B84();

          if (v17)
          {
            goto LABEL_4;
          }

          v9 = (v9 + 1) & v8;
          v10 = v9 >> 6;
          v11 = *(v5 + 8 * (v9 >> 6));
          v12 = 1 << v9;
          if ((v11 & (1 << v9)) == 0)
          {
            goto LABEL_10;
          }
        }
      }

      else
      {
LABEL_10:
        *(v5 + 8 * v10) = v11 | v12;
        *(*(v3 + 48) + v9) = v6;
        v18 = *(v3 + 16);
        v19 = __OFADD__(v18, 1);
        v20 = v18 + 1;
        if (v19)
        {
          __break(1u);
          return result;
        }

        *(v3 + 16) = v20;
      }

LABEL_4:
      v4 = v22;
      if (v22 == v1)
      {
        return v3;
      }
    }
  }

  return MEMORY[0x1E69E7CD0];
}

void sub_1BD111E08(unint64_t a1, uint64_t *a2, uint64_t a3, unint64_t *a4)
{
  v4 = a1;
  v5 = a1 >> 62;
  if (a1 >> 62)
  {
    v9 = a2;
    v10 = sub_1BE053704();
    a2 = v9;
    if (v10)
    {
LABEL_3:
      __swift_instantiateConcreteTypeFromMangledNameV2(a2);
      v6 = sub_1BE053804();
      v7 = v4 & 0xFFFFFFFFFFFFFF8;
      if (!v5)
      {
        goto LABEL_4;
      }

LABEL_8:
      v8 = sub_1BE053704();
      if (!v8)
      {
        return;
      }

      goto LABEL_9;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v6 = MEMORY[0x1E69E7CD0];
  v7 = v4 & 0xFFFFFFFFFFFFFF8;
  if (v5)
  {
    goto LABEL_8;
  }

LABEL_4:
  v8 = *(v7 + 16);
  if (!v8)
  {
    return;
  }

LABEL_9:
  v11 = v6 + 56;
  v43 = v8;
  if ((v4 & 0xC000000000000001) != 0)
  {
    v12 = 0;
    v40 = v4;
    while (1)
    {
      v13 = MEMORY[0x1BFB40900](v12, v4);
      v14 = __OFADD__(v12++, 1);
      if (v14)
      {
        break;
      }

      v15 = v13;
      v16 = sub_1BE053064();
      v17 = -1 << *(v6 + 32);
      v18 = v16 & ~v17;
      v19 = v18 >> 6;
      v20 = *(v11 + 8 * (v18 >> 6));
      v21 = 1 << v18;
      if (((1 << v18) & v20) != 0)
      {
        v22 = ~v17;
        sub_1BD0E5E8C(0, a4);
        while (1)
        {
          v23 = *(*(v6 + 48) + 8 * v18);
          v24 = sub_1BE053074();

          if (v24)
          {
            break;
          }

          v18 = (v18 + 1) & v22;
          v19 = v18 >> 6;
          v20 = *(v11 + 8 * (v18 >> 6));
          v21 = 1 << v18;
          if (((1 << v18) & v20) == 0)
          {
            v8 = v43;
            v4 = v40;
            goto LABEL_18;
          }
        }

        swift_unknownObjectRelease();
        v8 = v43;
        v4 = v40;
        if (v12 == v43)
        {
          return;
        }
      }

      else
      {
LABEL_18:
        *(v11 + 8 * v19) = v21 | v20;
        *(*(v6 + 48) + 8 * v18) = v15;
        v25 = *(v6 + 16);
        v14 = __OFADD__(v25, 1);
        v26 = v25 + 1;
        if (v14)
        {
          goto LABEL_32;
        }

        *(v6 + 16) = v26;
        if (v12 == v8)
        {
          return;
        }
      }
    }

    __break(1u);
LABEL_32:
    __break(1u);
  }

  else
  {
    v27 = 0;
    v41 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (v27 != v41)
    {
      v28 = *(v4 + 32 + 8 * v27);
      v29 = sub_1BE053064();
      v30 = -1 << *(v6 + 32);
      v31 = v29 & ~v30;
      v32 = v31 >> 6;
      v33 = *(v11 + 8 * (v31 >> 6));
      v34 = 1 << v31;
      if (((1 << v31) & v33) != 0)
      {
        v35 = ~v30;
        sub_1BD0E5E8C(0, a4);
        while (1)
        {
          v36 = *(*(v6 + 48) + 8 * v31);
          v37 = sub_1BE053074();

          if (v37)
          {
            break;
          }

          v31 = (v31 + 1) & v35;
          v32 = v31 >> 6;
          v33 = *(v11 + 8 * (v31 >> 6));
          v34 = 1 << v31;
          if (((1 << v31) & v33) == 0)
          {
            goto LABEL_29;
          }
        }
      }

      else
      {
LABEL_29:
        *(v11 + 8 * v32) = v34 | v33;
        *(*(v6 + 48) + 8 * v31) = v28;
        v38 = *(v6 + 16);
        v14 = __OFADD__(v38, 1);
        v39 = v38 + 1;
        if (v14)
        {
          goto LABEL_34;
        }

        *(v6 + 16) = v39;
      }

      if (++v27 == v43)
      {
        return;
      }
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
}

unint64_t sub_1BD1120F4(unint64_t result)
{
  v1 = result;
  v2 = result >> 62;
  if (result >> 62)
  {
    result = sub_1BE053704();
    if (result)
    {
LABEL_3:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39848);
      result = sub_1BE053804();
      v3 = result;
      v4 = v1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      result = sub_1BE053704();
      v5 = result;
      if (!result)
      {
        return v3;
      }

      goto LABEL_9;
    }
  }

  else if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v3 = MEMORY[0x1E69E7CD0];
  v4 = v1 & 0xFFFFFFFFFFFFFF8;
  if (v2)
  {
    goto LABEL_8;
  }

LABEL_4:
  v5 = *(v4 + 16);
  if (!v5)
  {
    return v3;
  }

LABEL_9:
  v6 = 0;
  v7 = v3 + 56;
  v21 = v1 & 0xC000000000000001;
  v18 = v1 + 32;
  v19 = v1 & 0xFFFFFFFFFFFFFF8;
  v20 = v1;
  while (v21)
  {
    result = MEMORY[0x1BFB40900](v6, v1);
    v8 = result;
    v9 = __OFADD__(v6++, 1);
    if (v9)
    {
      goto LABEL_26;
    }

LABEL_18:
    sub_1BE04D7F4();
    sub_1BD113090(&qword_1EBD597F0, MEMORY[0x1E695BF10]);
    result = sub_1BE052284();
    v10 = -1 << *(v3 + 32);
    v11 = result & ~v10;
    v12 = v11 >> 6;
    v13 = *(v7 + 8 * (v11 >> 6));
    v14 = 1 << v11;
    if (((1 << v11) & v13) != 0)
    {
      v15 = ~v10;
      sub_1BD113090(&qword_1EBD39850, MEMORY[0x1E695BF10]);
      do
      {
        result = sub_1BE052334();
        if (result)
        {

          v1 = v20;
          goto LABEL_11;
        }

        v11 = (v11 + 1) & v15;
        v12 = v11 >> 6;
        v13 = *(v7 + 8 * (v11 >> 6));
        v14 = 1 << v11;
      }

      while (((1 << v11) & v13) != 0);
      v1 = v20;
    }

    *(v7 + 8 * v12) = v14 | v13;
    *(*(v3 + 48) + 8 * v11) = v8;
    v16 = *(v3 + 16);
    v9 = __OFADD__(v16, 1);
    v17 = v16 + 1;
    if (v9)
    {
      goto LABEL_27;
    }

    *(v3 + 16) = v17;
LABEL_11:
    if (v6 == v5)
    {
      return v3;
    }
  }

  if (v6 >= *(v19 + 16))
  {
    goto LABEL_28;
  }

  v8 = *(v18 + 8 * v6);
  result = sub_1BE048964();
  v9 = __OFADD__(v6++, 1);
  if (!v9)
  {
    goto LABEL_18;
  }

LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
  return result;
}

uint64_t sub_1BD1123D4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39888);
    v3 = sub_1BE053804();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (2)
    {
      v7 = (v6 + 16 * v4);
      v9 = *v7;
      v8 = v7[1];
      sub_1BE053D04();
      sub_1BE048C84();
      sub_1BE052524();
      result = sub_1BE053D64();
      v11 = ~(-1 << *(v3 + 32));
      for (i = result & v11; ; i = (i + 1) & v11)
      {
        v13 = *(v5 + 8 * (i >> 6));
        if (((1 << i) & v13) == 0)
        {
          break;
        }

        v14 = (*(v3 + 48) + 16 * i);
        if (*v14 != v9 || v14[1] != v8)
        {
          result = sub_1BE053B84();
          if ((result & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_4;
      }

      *(v5 + 8 * (i >> 6)) = (1 << i) | v13;
      v16 = (*(v3 + 48) + 16 * i);
      *v16 = v9;
      v16[1] = v8;
      v17 = *(v3 + 16);
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (!v18)
      {
        *(v3 + 16) = v19;
LABEL_4:
        if (++v4 == v1)
        {
          return v3;
        }

        continue;
      }

      break;
    }

    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CD0];
  }

  return result;
}

uint64_t sub_1BD11253C(uint64_t a1)
{
  v2 = sub_1BE04F674();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v39 = &v32 - v9;
  v10 = *(a1 + 16);
  if (v10)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39830);
    v11 = sub_1BE053804();
    v12 = 0;
    v14 = *(v3 + 16);
    v13 = v3 + 16;
    v37 = v14;
    v38 = v11 + 56;
    v15 = *(v13 + 64);
    v34 = v10;
    v35 = a1 + ((v15 + 32) & ~v15);
    v16 = *(v13 + 56);
    v17 = (v13 - 8);
    v33 = (v13 + 16);
    while (1)
    {
      v36 = v12;
      v37(v39, v35 + v16 * v12, v2);
      sub_1BD113090(&qword_1EBD39838, MEMORY[0x1E697C4F8]);
      v18 = sub_1BE052284();
      v19 = ~(-1 << *(v11 + 32));
      v20 = v18 & v19;
      v21 = (v18 & v19) >> 6;
      v22 = *(v38 + 8 * v21);
      v23 = 1 << (v18 & v19);
      if ((v23 & v22) != 0)
      {
        while (1)
        {
          v24 = v13;
          v37(v6, *(v11 + 48) + v20 * v16, v2);
          sub_1BD113090(&qword_1EBD39840, MEMORY[0x1E697C4F8]);
          v25 = sub_1BE052334();
          v26 = *v17;
          (*v17)(v6, v2);
          if (v25)
          {
            break;
          }

          v20 = (v20 + 1) & v19;
          v21 = v20 >> 6;
          v22 = *(v38 + 8 * (v20 >> 6));
          v23 = 1 << v20;
          v13 = v24;
          if (((1 << v20) & v22) == 0)
          {
            goto LABEL_8;
          }
        }

        v26(v39, v2);
        v13 = v24;
      }

      else
      {
LABEL_8:
        v27 = v39;
        *(v38 + 8 * v21) = v23 | v22;
        result = (*v33)(*(v11 + 48) + v20 * v16, v27, v2);
        v29 = *(v11 + 16);
        v30 = __OFADD__(v29, 1);
        v31 = v29 + 1;
        if (v30)
        {
          __break(1u);
          return result;
        }

        *(v11 + 16) = v31;
      }

      v12 = v36 + 1;
      if (v36 + 1 == v34)
      {
        return v11;
      }
    }
  }

  return MEMORY[0x1E69E7CD0];
}

uint64_t sub_1BD11285C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39858);
    v3 = sub_1BE053804();
    v4 = 0;
    v5 = v3 + 56;
    v24 = v1;
    v25 = a1 + 32;
    while (1)
    {
      v6 = *(v25 + v4++);
      sub_1BE053D04();
      sub_1BE052524();

      result = sub_1BE053D64();
      v8 = ~(-1 << *(v3 + 32));
      v9 = result & v8;
      v10 = (result & v8) >> 6;
      v11 = *(v5 + 8 * v10);
      v12 = 1 << (result & v8);
      if ((v12 & v11) != 0)
      {
        do
        {
          v13 = *(*(v3 + 48) + v9);
          if (v13 <= 1)
          {
            if (*(*(v3 + 48) + v9))
            {
              v14 = 0x676E6964616F6CLL;
            }

            else
            {
              v14 = 1701736302;
            }

            if (*(*(v3 + 48) + v9))
            {
              v15 = 0xE700000000000000;
            }

            else
            {
              v15 = 0xE400000000000000;
            }

            if (v6 > 1)
            {
LABEL_23:
              v16 = 0x656C626967696C65;
              if (v6 == 3)
              {
                v16 = 0x626967696C656E69;
              }

              v17 = 0xEA0000000000656CLL;
              if (v6 != 3)
              {
                v17 = 0xE800000000000000;
              }

              if (v6 == 2)
              {
                v18 = 0x45676E6964616F6CLL;
              }

              else
              {
                v18 = v16;
              }

              if (v6 == 2)
              {
                v19 = 0xEC000000726F7272;
              }

              else
              {
                v19 = v17;
              }

              if (v14 != v18)
              {
                goto LABEL_41;
              }

              goto LABEL_40;
            }
          }

          else if (v13 == 2)
          {
            v14 = 0x45676E6964616F6CLL;
            v15 = 0xEC000000726F7272;
            if (v6 > 1)
            {
              goto LABEL_23;
            }
          }

          else
          {
            if (v13 == 3)
            {
              v14 = 0x626967696C656E69;
            }

            else
            {
              v14 = 0x656C626967696C65;
            }

            if (v13 == 3)
            {
              v15 = 0xEA0000000000656CLL;
            }

            else
            {
              v15 = 0xE800000000000000;
            }

            if (v6 > 1)
            {
              goto LABEL_23;
            }
          }

          if (v6)
          {
            v19 = 0xE700000000000000;
            if (v14 != 0x676E6964616F6CLL)
            {
              goto LABEL_41;
            }
          }

          else
          {
            v19 = 0xE400000000000000;
            if (v14 != 1701736302)
            {
              goto LABEL_41;
            }
          }

LABEL_40:
          if (v15 == v19)
          {

            goto LABEL_4;
          }

LABEL_41:
          v20 = sub_1BE053B84();

          if (v20)
          {
            goto LABEL_4;
          }

          v9 = (v9 + 1) & v8;
          v10 = v9 >> 6;
          v11 = *(v5 + 8 * (v9 >> 6));
          v12 = 1 << v9;
        }

        while ((v11 & (1 << v9)) != 0);
      }

      *(v5 + 8 * v10) = v11 | v12;
      *(*(v3 + 48) + v9) = v6;
      v21 = *(v3 + 16);
      v22 = __OFADD__(v21, 1);
      v23 = v21 + 1;
      if (v22)
      {
        break;
      }

      *(v3 + 16) = v23;
LABEL_4:
      if (v4 == v24)
      {
        return v3;
      }
    }

    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CD0];
  }

  return result;
}

uint64_t sub_1BD112BF4(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2);
    v4 = sub_1BE053804();
    v5 = 0;
    v6 = v4 + 56;
    v7 = a1 + 32;
    while (1)
    {
      v11 = *(v7 + 8 * v5);
      sub_1BE053D04();
      MEMORY[0x1BFB40DA0](v11);
      result = sub_1BE053D64();
      v13 = ~(-1 << *(v4 + 32));
      v14 = result & v13;
      v15 = (result & v13) >> 6;
      v16 = *(v6 + 8 * v15);
      v17 = 1 << (result & v13);
      v18 = *(v4 + 48);
      if ((v17 & v16) != 0)
      {
        while (*(v18 + 8 * v14) != v11)
        {
          v14 = (v14 + 1) & v13;
          v15 = v14 >> 6;
          v16 = *(v6 + 8 * (v14 >> 6));
          v17 = 1 << v14;
          if (((1 << v14) & v16) == 0)
          {
            goto LABEL_3;
          }
        }
      }

      else
      {
LABEL_3:
        *(v6 + 8 * v15) = v17 | v16;
        *(v18 + 8 * v14) = v11;
        v8 = *(v4 + 16);
        v9 = __OFADD__(v8, 1);
        v10 = v8 + 1;
        if (v9)
        {
          __break(1u);
          return result;
        }

        *(v4 + 16) = v10;
      }

      if (++v5 == v2)
      {
        return v4;
      }
    }
  }

  return MEMORY[0x1E69E7CD0];
}

uint64_t sub_1BD112D70(uint64_t a1)
{
  v2 = sub_1BE049E14();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v39 = &v32 - v9;
  v10 = *(a1 + 16);
  if (v10)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39860);
    v11 = sub_1BE053804();
    v12 = 0;
    v14 = *(v3 + 16);
    v13 = v3 + 16;
    v37 = v14;
    v38 = v11 + 56;
    v15 = *(v13 + 64);
    v34 = v10;
    v35 = a1 + ((v15 + 32) & ~v15);
    v16 = *(v13 + 56);
    v17 = (v13 - 8);
    v33 = (v13 + 16);
    while (1)
    {
      v36 = v12;
      v37(v39, v35 + v16 * v12, v2);
      sub_1BD113090(&qword_1EBD39868, MEMORY[0x1E6967C28]);
      v18 = sub_1BE052284();
      v19 = ~(-1 << *(v11 + 32));
      v20 = v18 & v19;
      v21 = (v18 & v19) >> 6;
      v22 = *(v38 + 8 * v21);
      v23 = 1 << (v18 & v19);
      if ((v23 & v22) != 0)
      {
        while (1)
        {
          v24 = v13;
          v37(v6, *(v11 + 48) + v20 * v16, v2);
          sub_1BD113090(&qword_1EBD39870, MEMORY[0x1E6967C28]);
          v25 = sub_1BE052334();
          v26 = *v17;
          (*v17)(v6, v2);
          if (v25)
          {
            break;
          }

          v20 = (v20 + 1) & v19;
          v21 = v20 >> 6;
          v22 = *(v38 + 8 * (v20 >> 6));
          v23 = 1 << v20;
          v13 = v24;
          if (((1 << v20) & v22) == 0)
          {
            goto LABEL_8;
          }
        }

        v26(v39, v2);
        v13 = v24;
      }

      else
      {
LABEL_8:
        v27 = v39;
        *(v38 + 8 * v21) = v23 | v22;
        result = (*v33)(*(v11 + 48) + v20 * v16, v27, v2);
        v29 = *(v11 + 16);
        v30 = __OFADD__(v29, 1);
        v31 = v29 + 1;
        if (v30)
        {
          __break(1u);
          return result;
        }

        *(v11 + 16) = v31;
      }

      v12 = v36 + 1;
      if (v36 + 1 == v34)
      {
        return v11;
      }
    }
  }

  return MEMORY[0x1E69E7CD0];
}

uint64_t sub_1BD113090(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1BD1130D8(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_1BE048964();
  v1(v2);
}

uint64_t static NearbyPeerPaymentSenderState.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  sub_1BD113234(a1, v4);
  sub_1BD113234(a2, &v6);
  if (v5 <= 2)
  {
    if (v5)
    {
      if (v5 == 1)
      {
        if (v7 == 1)
        {
          goto LABEL_20;
        }
      }

      else if (v5 == 2 && v7 == 2)
      {
        goto LABEL_20;
      }

      goto LABEL_16;
    }

    if (v7)
    {
      goto LABEL_16;
    }
  }

  else
  {
    if (v5 <= 4)
    {
      if (v5 == 3)
      {
        if (v7 == 3)
        {
          goto LABEL_20;
        }
      }

      else if (v7 == 4)
      {
        goto LABEL_20;
      }

LABEL_16:
      sub_1BD0DE53C(v4, &qword_1EBD398E0);
      return 0;
    }

    if (v5 != 5)
    {
      if (v5 == 6 && v7 == 6)
      {
        goto LABEL_20;
      }

      goto LABEL_16;
    }

    if (v7 != 5)
    {
      goto LABEL_16;
    }
  }

LABEL_20:
  sub_1BD11326C(v4);
  return 1;
}

uint64_t sub_1BD11329C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1BE04DC74();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1BE04DCA4();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v13, a1, v9);
  result = (*(v10 + 88))(v13, v9);
  if (result == *MEMORY[0x1E69CDB98])
  {
    (*(v10 + 96))(v13, v9);

    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39AC8);
    v16 = *(v15 + 48);

    v17 = *(v15 + 80);
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    *(a2 + 24) = xmmword_1BE0B8E20;
    v18 = sub_1BE04E084();
    (*(*(v18 - 8) + 8))(&v13[v17], v18);
    v19 = sub_1BE04E0C4();
    return (*(*(v19 - 8) + 8))(&v13[v16], v19);
  }

  if (result == *MEMORY[0x1E69CDBA0])
  {
    (*(v10 + 96))(v13, v9);
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39AC0);
    (*(v5 + 32))(v8, &v13[*(v20 + 48)], v4);
    v21 = sub_1BE04B784();
    *(a2 + 24) = v21;
    *(a2 + 32) = sub_1BD113E88(&qword_1EBD47890, MEMORY[0x1E69B7E88]);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a2);
    (*(v5 + 16))(boxed_opaque_existential_1, v8, v4);
    (*(*(v21 - 8) + 104))(boxed_opaque_existential_1, *MEMORY[0x1E69B7E70], v21);
    (*(v5 + 8))(v8, v4);
LABEL_7:
    v23 = sub_1BE04DCE4();
    return (*(*(v23 - 8) + 8))(v13, v23);
  }

  if (result == *MEMORY[0x1E69CDBA8])
  {
    (*(v10 + 96))(v13, v9);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39AB8);

    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    *(a2 + 24) = xmmword_1BE0B8E10;
    goto LABEL_7;
  }

  if (result == *MEMORY[0x1E69CDBB8])
  {
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    *(a2 + 24) = xmmword_1BE0B8E00;
  }

  else
  {
    v24 = *MEMORY[0x1E69CDBB0];
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    if (result == v24)
    {
      *(a2 + 24) = xmmword_1BE0B8DF0;
    }

    else
    {
      *(a2 + 24) = xmmword_1BE0B8DE0;
      return (*(v10 + 8))(v13, v9);
    }
  }

  return result;
}

uint64_t NearbyPeerPaymentSenderState.description.getter()
{
  sub_1BD113234(v0, &v4);
  if (v5 > 2)
  {
    if (v5 <= 4)
    {
      if (v5 != 3)
      {
        return 0x4C676E69646E6573;
      }

      v2 = 1684956531;
      return v2 | 0x676E6900000000;
    }

    if (v5 == 5)
    {
      return 0x4C676E69646E6573;
    }

    if (v5 == 6)
    {
      return 0x73736563637573;
    }

LABEL_13:
    sub_1BD043990(&v4, v3);
    MEMORY[0x1BFB3F610](0x28726F727265, 0xE600000000000000);
    __swift_project_boxed_opaque_existential_1(v3, v3[3]);
    sub_1BE053B64();
    MEMORY[0x1BFB3F610](41, 0xE100000000000000);
    __swift_destroy_boxed_opaque_existential_0(v3);
    return 0;
  }

  if (!v5)
  {
    v2 = 1819045744;
    return v2 | 0x676E6900000000;
  }

  if (v5 != 1)
  {
    if (v5 == 2)
    {
      return 0xD000000000000012;
    }

    goto LABEL_13;
  }

  return 0x697463656E6E6F63;
}

uint64_t NearbyPeerPaymentSenderState.isTerminal.getter()
{
  sub_1BD113234(v0, v3);
  if (v4 >= 6)
  {
    v1 = 1;
    if (v4 == 6)
    {
      return v1;
    }
  }

  else
  {
    v1 = 0;
  }

  sub_1BD11326C(v3);
  return v1;
}

BOOL NearbyPeerPaymentSenderState.isError.getter()
{
  sub_1BD113234(v0, v3);
  v1 = v4 > 6;
  sub_1BD11326C(v3);
  return v1;
}

uint64_t sub_1BD113964(uint64_t a1, uint64_t a2)
{
  sub_1BD113234(a1, v4);
  sub_1BD113234(a2, &v6);
  if (v5 <= 2)
  {
    if (v5)
    {
      if (v5 == 1)
      {
        if (v7 == 1)
        {
          goto LABEL_20;
        }
      }

      else if (v5 == 2 && v7 == 2)
      {
        goto LABEL_20;
      }

      goto LABEL_16;
    }

    if (v7)
    {
      goto LABEL_16;
    }
  }

  else
  {
    if (v5 <= 4)
    {
      if (v5 == 3)
      {
        if (v7 == 3)
        {
          goto LABEL_20;
        }
      }

      else if (v7 == 4)
      {
        goto LABEL_20;
      }

LABEL_16:
      sub_1BD0DE53C(v4, &qword_1EBD398E0);
      return 0;
    }

    if (v5 != 5)
    {
      if (v5 == 6 && v7 == 6)
      {
        goto LABEL_20;
      }

      goto LABEL_16;
    }

    if (v7 != 5)
    {
      goto LABEL_16;
    }
  }

LABEL_20:
  sub_1BD11326C(v4);
  return 1;
}

uint64_t sub_1BD113A84()
{
  v1 = 0x6576697463616E69;
  v2 = 0x6164696C61766E69;
  if (*v0 != 2)
  {
    v2 = 0x64656C696166;
  }

  if (*v0)
  {
    v1 = 0x657669746361;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1BD113BE8(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1BE04AFE4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = OBJC_IVAR____TtC9PassKitUI33NearbyPeerPaymentDiscoveryMonitor__id;
  swift_beginAccess();
  v10 = *(v5 + 16);
  v10(v8, v2 + v9, v4);
  sub_1BD113E88(&unk_1EBD36A30, MEMORY[0x1E69695A8]);
  v16[0] = a1;
  LOBYTE(a1) = sub_1BE052334();
  v11 = *(v5 + 8);
  v11(v8, v4);
  if (a1)
  {
    v10(v8, v16[0], v4);
    swift_beginAccess();
    (*(v5 + 40))(v2 + v9, v8, v4);
    swift_endAccess();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath, v13);
    v14 = v16[0];
    v16[-2] = v2;
    v16[-1] = v14;
    v16[1] = v2;
    sub_1BD113E88(&qword_1EBD398F0, type metadata accessor for NearbyPeerPaymentDiscoveryMonitor);
    sub_1BE04B584();
  }

  return (v11)(v16[0], v4);
}

uint64_t sub_1BD113E88(unint64_t *a1, void (*a2)(uint64_t))
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

void (*sub_1BD113F08(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC9PassKitUI33NearbyPeerPaymentDiscoveryMonitor___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_1BD113E88(&qword_1EBD398F0, type metadata accessor for NearbyPeerPaymentDiscoveryMonitor);
  sub_1BE04B594();

  *v4 = v1;
  swift_getKeyPath();
  sub_1BE04B5B4();

  v4[7] = sub_1BD113AFC();
  return sub_1BD114040;
}

uint64_t sub_1BD114074@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X4>, uint64_t (*a3)(void)@<X5>, uint64_t a4@<X8>)
{
  v7 = *a1;
  swift_getKeyPath();
  sub_1BD113E88(&qword_1EBD398F0, type metadata accessor for NearbyPeerPaymentDiscoveryMonitor);
  sub_1BE04B594();

  v8 = *a2;
  swift_beginAccess();
  v9 = a3(0);
  return (*(*(v9 - 8) + 16))(a4, v7 + v8, v9);
}

uint64_t sub_1BD114178(uint64_t a1, uint64_t *a2)
{
  v4 = sub_1BE04C4C4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v11[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v5 + 16))(v8, a1, v4);
  v9 = *a2;
  swift_getKeyPath();
  v12 = v9;
  v13 = v8;
  v14 = v9;
  sub_1BD113E88(&qword_1EBD398F0, type metadata accessor for NearbyPeerPaymentDiscoveryMonitor);
  sub_1BE04B584();

  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_1BD114328@<X0>(uint64_t *a1@<X1>, uint64_t (*a2)(void)@<X2>, uint64_t a3@<X8>)
{
  swift_getKeyPath();
  v10 = v3;
  sub_1BD113E88(&qword_1EBD398F0, type metadata accessor for NearbyPeerPaymentDiscoveryMonitor);
  sub_1BE04B594();

  v7 = *a1;
  swift_beginAccess();
  v8 = a2(0);
  return (*(*(v8 - 8) + 16))(a3, v10 + v7, v8);
}

uint64_t sub_1BD114428(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t *a4)
{
  v7 = a3(0);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v14 - v10;
  (*(v8 + 16))(&v14 - v10, a2, v7);
  v12 = *a4;
  swift_beginAccess();
  (*(v8 + 40))(a1 + v12, v11, v7);
  return swift_endAccess();
}

id sub_1BD11454C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1BD113E88(&qword_1EBD398F0, type metadata accessor for NearbyPeerPaymentDiscoveryMonitor);
  sub_1BE04B594();

  v4 = *(v3 + OBJC_IVAR____TtC9PassKitUI33NearbyPeerPaymentDiscoveryMonitor__authorizedQuote);
  *a2 = v4;

  return v4;
}

id sub_1BD114638()
{
  swift_getKeyPath();
  sub_1BD113E88(&qword_1EBD398F0, type metadata accessor for NearbyPeerPaymentDiscoveryMonitor);
  sub_1BE04B594();

  v1 = *(v0 + OBJC_IVAR____TtC9PassKitUI33NearbyPeerPaymentDiscoveryMonitor__authorizedQuote);

  return v1;
}

void sub_1BD1146F0(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC9PassKitUI33NearbyPeerPaymentDiscoveryMonitor__authorizedQuote;
  v5 = *(v1 + OBJC_IVAR____TtC9PassKitUI33NearbyPeerPaymentDiscoveryMonitor__authorizedQuote);
  sub_1BD0E5E8C(0, &qword_1EBD39A30);
  v6 = v5;
  v7 = sub_1BE053074();

  if (v7)
  {
    v8 = *(v2 + v4);
    *(v2 + v4) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath, v10);
    sub_1BD113E88(&qword_1EBD398F0, type metadata accessor for NearbyPeerPaymentDiscoveryMonitor);
    sub_1BE04B584();
  }
}

uint64_t sub_1BD114864(uint64_t a1)
{
  v2 = v1;
  swift_getKeyPath();
  v9[0] = v1;
  sub_1BD113E88(&qword_1EBD398F0, type metadata accessor for NearbyPeerPaymentDiscoveryMonitor);
  sub_1BE04B594();

  v4 = OBJC_IVAR____TtC9PassKitUI33NearbyPeerPaymentDiscoveryMonitor__state;
  swift_beginAccess();
  sub_1BD113234(v1 + v4, v10);
  if (v11 > 2)
  {
    if ((v11 - 5) >= 2)
    {
      if (v11 == 3 || v11 == 4)
      {
        sub_1BD11CAC8(0xF);
        goto LABEL_14;
      }

      goto LABEL_11;
    }

LABEL_10:
    sub_1BD11326C(v10);
    goto LABEL_14;
  }

  switch(v11)
  {
    case 0:
      goto LABEL_10;
    case 1:
      goto LABEL_12;
    case 2:
      goto LABEL_10;
  }

LABEL_11:
  sub_1BD11326C(v10);
LABEL_12:
  swift_getKeyPath();
  v10[0] = v1;
  sub_1BE04B594();

  if (*(v1 + OBJC_IVAR____TtC9PassKitUI33NearbyPeerPaymentDiscoveryMonitor__timer))
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    sub_1BE052E04();
    swift_unknownObjectRelease();
  }

LABEL_14:
  swift_getKeyPath();
  v10[0] = v1;
  sub_1BE04B594();

  v5 = (v1 + OBJC_IVAR____TtC9PassKitUI33NearbyPeerPaymentDiscoveryMonitor__delegate);
  result = swift_beginAccess();
  if (*v5)
  {
    v7 = v5[1];
    ObjectType = swift_getObjectType();
    v11 = type metadata accessor for NearbyPeerPaymentDiscoveryMonitor(0);
    v12 = &protocol witness table for NearbyPeerPaymentDiscoveryMonitor;
    v10[0] = v2;
    swift_getKeyPath();
    v9[0] = v2;
    swift_unknownObjectRetain();
    sub_1BE048964();
    sub_1BE04B594();

    sub_1BD113234(v2 + v4, v9);
    (*(v7 + 8))(v10, a1, v9, ObjectType, v7);
    swift_unknownObjectRelease();
    sub_1BD11326C(v9);
    return __swift_destroy_boxed_opaque_existential_0(v10);
  }

  return result;
}

uint64_t sub_1BD114B20@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1BD113E88(&qword_1EBD398F0, type metadata accessor for NearbyPeerPaymentDiscoveryMonitor);
  sub_1BE04B594();

  v4 = OBJC_IVAR____TtC9PassKitUI33NearbyPeerPaymentDiscoveryMonitor__state;
  swift_beginAccess();
  return sub_1BD113234(v3 + v4, a2);
}

uint64_t sub_1BD114C00@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v5 = v1;
  sub_1BD113E88(&qword_1EBD398F0, type metadata accessor for NearbyPeerPaymentDiscoveryMonitor);
  sub_1BE04B594();

  v3 = OBJC_IVAR____TtC9PassKitUI33NearbyPeerPaymentDiscoveryMonitor__state;
  swift_beginAccess();
  return sub_1BD113234(v5 + v3, a1);
}

uint64_t sub_1BD114CC8(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9PassKitUI33NearbyPeerPaymentDiscoveryMonitor__state;
  swift_beginAccess();
  sub_1BD113234(v1 + v3, v12);
  v7 = v12[0];
  v8 = v12[1];
  v9 = v13;
  sub_1BD113234(a1, &v10);
  if (*(&v8 + 1) <= 2)
  {
    if (*(&v8 + 1))
    {
      if (*(&v8 + 1) == 1)
      {
        if (v11 == 1)
        {
          goto LABEL_20;
        }
      }

      else if (*(&v8 + 1) == 2 && v11 == 2)
      {
        goto LABEL_20;
      }

      goto LABEL_16;
    }

    if (v11)
    {
      goto LABEL_16;
    }

LABEL_20:
    sub_1BD11326C(&v7);
    sub_1BD113234(a1, &v7);
    sub_1BD113234(v1 + v3, v12);
    swift_beginAccess();
    sub_1BD1263C8(&v7, v1 + v3);
    swift_endAccess();
    sub_1BD114864(v12);
    sub_1BD11326C(v12);
    sub_1BD11326C(&v7);
    return sub_1BD11326C(a1);
  }

  if (*(&v8 + 1) > 4)
  {
    if (*(&v8 + 1) != 5)
    {
      if (*(&v8 + 1) == 6 && v11 == 6)
      {
        goto LABEL_20;
      }

      goto LABEL_16;
    }

    if (v11 != 5)
    {
      goto LABEL_16;
    }

    goto LABEL_20;
  }

  if (*(&v8 + 1) == 3)
  {
    if (v11 == 3)
    {
      goto LABEL_20;
    }
  }

  else if (v11 == 4)
  {
    goto LABEL_20;
  }

LABEL_16:
  sub_1BD0DE53C(&v7, &qword_1EBD398E0);
  KeyPath = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](KeyPath, v5);
  *&v7 = v1;
  sub_1BD113E88(&qword_1EBD398F0, type metadata accessor for NearbyPeerPaymentDiscoveryMonitor);
  sub_1BE04B584();

  return sub_1BD11326C(a1);
}

uint64_t sub_1BD114F3C()
{
  swift_getKeyPath();
  sub_1BD113E88(&qword_1EBD398F0, type metadata accessor for NearbyPeerPaymentDiscoveryMonitor);
  sub_1BE04B594();

  return *(v0 + OBJC_IVAR____TtC9PassKitUI33NearbyPeerPaymentDiscoveryMonitor__sessionState);
}

uint64_t sub_1BD114FE4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1BD113E88(&qword_1EBD398F0, type metadata accessor for NearbyPeerPaymentDiscoveryMonitor);
  sub_1BE04B594();

  *a2 = *(v3 + OBJC_IVAR____TtC9PassKitUI33NearbyPeerPaymentDiscoveryMonitor__sessionState);
  return result;
}

uint64_t sub_1BD115094(uint64_t result)
{
  if (*(v1 + OBJC_IVAR____TtC9PassKitUI33NearbyPeerPaymentDiscoveryMonitor__sessionState) != result)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath, v3);
    sub_1BD113E88(&qword_1EBD398F0, type metadata accessor for NearbyPeerPaymentDiscoveryMonitor);
    sub_1BE04B584();
  }

  return result;
}

uint64_t sub_1BD1151A4@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v5 = v1;
  sub_1BD113E88(&qword_1EBD398F0, type metadata accessor for NearbyPeerPaymentDiscoveryMonitor);
  sub_1BE04B594();

  v3 = OBJC_IVAR____TtC9PassKitUI33NearbyPeerPaymentDiscoveryMonitor__discoverySessionID;
  swift_beginAccess();
  return sub_1BD0DE19C(v5 + v3, a1, &qword_1EBD39980);
}

uint64_t sub_1BD11527C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1BD113E88(&qword_1EBD398F0, type metadata accessor for NearbyPeerPaymentDiscoveryMonitor);
  sub_1BE04B594();

  v4 = OBJC_IVAR____TtC9PassKitUI33NearbyPeerPaymentDiscoveryMonitor__discoverySessionID;
  swift_beginAccess();
  return sub_1BD0DE19C(v3 + v4, a2, &qword_1EBD39980);
}

uint64_t sub_1BD115354(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39980);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = &v7 - v4;
  sub_1BD0DE19C(a1, &v7 - v4, &qword_1EBD39980);
  return sub_1BD115400(v5);
}

uint64_t sub_1BD115400(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39980);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = v12 - v5;
  v7 = OBJC_IVAR____TtC9PassKitUI33NearbyPeerPaymentDiscoveryMonitor__discoverySessionID;
  swift_beginAccess();
  sub_1BD0DE19C(v1 + v7, v6, &qword_1EBD39980);
  v8 = sub_1BD1254A0(v6, a1);
  sub_1BD0DE53C(v6, &qword_1EBD39980);
  if (v8)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath, v10);
    v12[-2] = v1;
    v12[-1] = a1;
    v12[2] = v1;
    sub_1BD113E88(&qword_1EBD398F0, type metadata accessor for NearbyPeerPaymentDiscoveryMonitor);
    sub_1BE04B584();
  }

  else
  {
    sub_1BD0DE19C(a1, v6, &qword_1EBD39980);
    swift_beginAccess();
    sub_1BD12651C(v6, v1 + v7);
    swift_endAccess();
  }

  return sub_1BD0DE53C(a1, &qword_1EBD39980);
}

uint64_t sub_1BD115608(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39980);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v10 - v6;
  sub_1BD0DE19C(a2, &v10 - v6, &qword_1EBD39980);
  v8 = OBJC_IVAR____TtC9PassKitUI33NearbyPeerPaymentDiscoveryMonitor__discoverySessionID;
  swift_beginAccess();
  sub_1BD12651C(v7, a1 + v8);
  return swift_endAccess();
}

uint64_t sub_1BD1156E4()
{
  swift_getKeyPath();
  sub_1BD113E88(&qword_1EBD398F0, type metadata accessor for NearbyPeerPaymentDiscoveryMonitor);
  sub_1BE04B594();

  return *(v0 + OBJC_IVAR____TtC9PassKitUI33NearbyPeerPaymentDiscoveryMonitor__updating);
}

uint64_t sub_1BD11578C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1BD113E88(&qword_1EBD398F0, type metadata accessor for NearbyPeerPaymentDiscoveryMonitor);
  sub_1BE04B594();

  *a2 = *(v3 + OBJC_IVAR____TtC9PassKitUI33NearbyPeerPaymentDiscoveryMonitor__updating);
  return result;
}

uint64_t sub_1BD11583C(uint64_t result)
{
  if (*(v1 + OBJC_IVAR____TtC9PassKitUI33NearbyPeerPaymentDiscoveryMonitor__updating) == (result & 1))
  {
    *(v1 + OBJC_IVAR____TtC9PassKitUI33NearbyPeerPaymentDiscoveryMonitor__updating) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath, v3);
    sub_1BD113E88(&qword_1EBD398F0, type metadata accessor for NearbyPeerPaymentDiscoveryMonitor);
    sub_1BE04B584();
  }

  return result;
}

uint64_t sub_1BD115954@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1BD113E88(&qword_1EBD398F0, type metadata accessor for NearbyPeerPaymentDiscoveryMonitor);
  sub_1BE04B594();

  v4 = *(v3 + OBJC_IVAR____TtC9PassKitUI33NearbyPeerPaymentDiscoveryMonitor__receiverName + 8);
  *a2 = *(v3 + OBJC_IVAR____TtC9PassKitUI33NearbyPeerPaymentDiscoveryMonitor__receiverName);
  a2[1] = v4;
  return sub_1BE048C84();
}

uint64_t sub_1BD115A24()
{
  swift_getKeyPath();
  sub_1BD113E88(&qword_1EBD398F0, type metadata accessor for NearbyPeerPaymentDiscoveryMonitor);
  sub_1BE04B594();

  v1 = *(v0 + OBJC_IVAR____TtC9PassKitUI33NearbyPeerPaymentDiscoveryMonitor__receiverName);
  sub_1BE048C84();
  return v1;
}

uint64_t sub_1BD115AE0(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC9PassKitUI33NearbyPeerPaymentDiscoveryMonitor__receiverName);
  v6 = *(v2 + OBJC_IVAR____TtC9PassKitUI33NearbyPeerPaymentDiscoveryMonitor__receiverName + 8);
  if (v6)
  {
    if (a2)
    {
      v7 = *v5 == a1 && v6 == a2;
      if (v7 || (sub_1BE053B84() & 1) != 0)
      {
        goto LABEL_8;
      }
    }

LABEL_12:
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath, v10);
    sub_1BD113E88(&qword_1EBD398F0, type metadata accessor for NearbyPeerPaymentDiscoveryMonitor);
    sub_1BE04B584();
  }

  if (a2)
  {
    goto LABEL_12;
  }

LABEL_8:
  *v5 = a1;
  v5[1] = a2;
}

uint64_t sub_1BD115C5C()
{
  swift_getKeyPath();
  sub_1BD113E88(&qword_1EBD398F0, type metadata accessor for NearbyPeerPaymentDiscoveryMonitor);
  sub_1BE04B594();

  v1 = *(v0 + OBJC_IVAR____TtC9PassKitUI33NearbyPeerPaymentDiscoveryMonitor__receiverImageData);
  sub_1BD030394(v1, *(v0 + OBJC_IVAR____TtC9PassKitUI33NearbyPeerPaymentDiscoveryMonitor__receiverImageData + 8));
  return v1;
}

uint64_t sub_1BD115D1C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1BD113E88(&qword_1EBD398F0, type metadata accessor for NearbyPeerPaymentDiscoveryMonitor);
  sub_1BE04B594();

  v4 = *(v3 + OBJC_IVAR____TtC9PassKitUI33NearbyPeerPaymentDiscoveryMonitor__receiverImageData);
  v5 = *(v3 + OBJC_IVAR____TtC9PassKitUI33NearbyPeerPaymentDiscoveryMonitor__receiverImageData + 8);
  *a2 = v4;
  a2[1] = v5;
  return sub_1BD030394(v4, v5);
}

uint64_t sub_1BD115DD4(uint64_t a1, unint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC9PassKitUI33NearbyPeerPaymentDiscoveryMonitor__receiverImageData);
  v6 = *(v2 + OBJC_IVAR____TtC9PassKitUI33NearbyPeerPaymentDiscoveryMonitor__receiverImageData);
  v7 = *(v2 + OBJC_IVAR____TtC9PassKitUI33NearbyPeerPaymentDiscoveryMonitor__receiverImageData + 8);
  sub_1BD030394(v6, v7);
  v8 = sub_1BD1257C0(v6, v7, a1, a2);
  sub_1BD030220(v6, v7);
  if (v8)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath, v10);
    sub_1BD113E88(&qword_1EBD398F0, type metadata accessor for NearbyPeerPaymentDiscoveryMonitor);
    sub_1BE04B584();
    sub_1BD030220(a1, a2);
  }

  else
  {
    v12 = *v5;
    v13 = v5[1];
    *v5 = a1;
    v5[1] = a2;

    return sub_1BD030220(v12, v13);
  }
}

uint64_t sub_1BD115FC0@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1BD113E88(&qword_1EBD398F0, type metadata accessor for NearbyPeerPaymentDiscoveryMonitor);
  sub_1BE04B594();

  v4 = OBJC_IVAR____TtC9PassKitUI33NearbyPeerPaymentDiscoveryMonitor__delegate;
  swift_beginAccess();
  *a2 = *(v3 + v4);
  return swift_unknownObjectRetain();
}

uint64_t sub_1BD11608C()
{
  swift_getKeyPath();
  sub_1BD113E88(&qword_1EBD398F0, type metadata accessor for NearbyPeerPaymentDiscoveryMonitor);
  sub_1BE04B584();
}

uint64_t sub_1BD11615C()
{
  swift_getKeyPath();
  sub_1BD113E88(&qword_1EBD398F0, type metadata accessor for NearbyPeerPaymentDiscoveryMonitor);
  sub_1BE04B594();

  swift_beginAccess();
  return swift_unknownObjectRetain();
}

uint64_t sub_1BD116224()
{
  swift_getKeyPath();
  sub_1BD113E88(&qword_1EBD398F0, type metadata accessor for NearbyPeerPaymentDiscoveryMonitor);
  sub_1BE04B584();

  return swift_unknownObjectRelease();
}

void (*sub_1BD11632C(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC9PassKitUI33NearbyPeerPaymentDiscoveryMonitor___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_1BD113E88(&qword_1EBD398F0, type metadata accessor for NearbyPeerPaymentDiscoveryMonitor);
  sub_1BE04B594();

  *v4 = v1;
  swift_getKeyPath();
  sub_1BE04B5B4();

  v4[7] = sub_1BD115F60();
  return sub_1BD116464;
}

uint64_t sub_1BD1164D0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1BD113E88(&qword_1EBD398F0, type metadata accessor for NearbyPeerPaymentDiscoveryMonitor);
  sub_1BE04B594();

  v4 = OBJC_IVAR____TtC9PassKitUI33NearbyPeerPaymentDiscoveryMonitor__isDebug;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_1BD1165BC()
{
  swift_getKeyPath();
  v3 = v0;
  sub_1BD113E88(&qword_1EBD398F0, type metadata accessor for NearbyPeerPaymentDiscoveryMonitor);
  sub_1BE04B594();

  v1 = OBJC_IVAR____TtC9PassKitUI33NearbyPeerPaymentDiscoveryMonitor__isDebug;
  swift_beginAccess();
  return *(v3 + v1);
}

uint64_t sub_1BD116678(char a1)
{
  v2 = a1 & 1;
  v3 = OBJC_IVAR____TtC9PassKitUI33NearbyPeerPaymentDiscoveryMonitor__isDebug;
  result = swift_beginAccess();
  if (*(v1 + v3) == v2)
  {
    *(v1 + v3) = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath, v6);
    sub_1BD113E88(&qword_1EBD398F0, type metadata accessor for NearbyPeerPaymentDiscoveryMonitor);
    sub_1BE04B584();
  }

  return result;
}

void (*sub_1BD1167C4(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC9PassKitUI33NearbyPeerPaymentDiscoveryMonitor___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_1BD113E88(&qword_1EBD398F0, type metadata accessor for NearbyPeerPaymentDiscoveryMonitor);
  sub_1BE04B594();

  *v4 = v1;
  swift_getKeyPath();
  sub_1BE04B5B4();

  v4[7] = sub_1BD116470();
  return sub_1BD1168FC;
}

void sub_1BD116908(void *a1)
{
  v1 = *a1;
  (*(*a1 + 56))(*a1, 0);
  *v1 = v1[4];
  swift_getKeyPath();
  sub_1BE04B5A4();

  free(v1);
}

uint64_t sub_1BD11699C()
{
  swift_getKeyPath();
  sub_1BD113E88(&qword_1EBD398F0, type metadata accessor for NearbyPeerPaymentDiscoveryMonitor);
  sub_1BE04B594();

  return swift_unknownObjectRetain();
}

uint64_t sub_1BD116A48@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1BD113E88(&qword_1EBD398F0, type metadata accessor for NearbyPeerPaymentDiscoveryMonitor);
  sub_1BE04B594();

  *a2 = *(v3 + OBJC_IVAR____TtC9PassKitUI33NearbyPeerPaymentDiscoveryMonitor__timer);
  return swift_unknownObjectRetain();
}

uint64_t sub_1BD116AFC()
{
  swift_getKeyPath();
  sub_1BD113E88(&qword_1EBD398F0, type metadata accessor for NearbyPeerPaymentDiscoveryMonitor);
  sub_1BE04B584();
}

uint64_t sub_1BD116BC8()
{
  v1 = *v0;
  v2 = sub_1BE051F54();
  v22 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v3);
  v5 = v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_1BE051FA4();
  v6 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21, v7);
  v9 = v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  aBlock = v0;
  sub_1BD113E88(&qword_1EBD398F0, type metadata accessor for NearbyPeerPaymentDiscoveryMonitor);
  sub_1BE04B594();

  if ((*(v0 + OBJC_IVAR____TtC9PassKitUI33NearbyPeerPaymentDiscoveryMonitor__updating) & 1) == 0)
  {
    swift_getKeyPath();
    aBlock = v0;
    sub_1BE04B594();

    v13 = OBJC_IVAR____TtC9PassKitUI33NearbyPeerPaymentDiscoveryMonitor__sessionState;
    if (*(v0 + OBJC_IVAR____TtC9PassKitUI33NearbyPeerPaymentDiscoveryMonitor__sessionState))
    {
      aBlock = 0;
      v24 = 0xE000000000000000;
      sub_1BE053834();
      MEMORY[0x1BFB3F610](0xD000000000000057, 0x80000001BE1197E0);
      swift_getKeyPath();
      v29 = v0;
      sub_1BE04B594();

      if (*(v0 + v13) > 1u)
      {
        if (*(v0 + v13) == 2)
        {
          v18 = 0xEB00000000646574;
          v19 = 0x6164696C61766E69;
        }

        else
        {
          v18 = 0xE600000000000000;
          v19 = 0x64656C696166;
        }
      }

      else if (*(v0 + v13))
      {
        v18 = 0xE600000000000000;
        v19 = 0x657669746361;
      }

      else
      {
        v18 = 0xE800000000000000;
        v19 = 0x6576697463616E69;
      }

      MEMORY[0x1BFB3F610](v19, v18);

      result = sub_1BE053994();
      __break(1u);
    }

    else
    {
      v14 = *(v0 + OBJC_IVAR____TtC9PassKitUI33NearbyPeerPaymentDiscoveryMonitor__lock);
      MEMORY[0x1EEE9AC00](v11, v12);
      os_unfair_lock_lock(v14 + 4);
      sub_1BD126A00();
      os_unfair_lock_unlock(v14 + 4);
      v20[1] = *(v0 + OBJC_IVAR____TtC9PassKitUI33NearbyPeerPaymentDiscoveryMonitor_queue);
      v15 = swift_allocObject();
      swift_weakInit();
      v16 = swift_allocObject();
      *(v16 + 16) = v15;
      *(v16 + 24) = 1;
      *(v16 + 32) = v1;
      v27 = sub_1BD12612C;
      v28 = v16;
      aBlock = MEMORY[0x1E69E9820];
      v24 = 1107296256;
      v25 = sub_1BD126964;
      v26 = &block_descriptor_225;
      v17 = _Block_copy(&aBlock);
      sub_1BE048964();
      sub_1BE051F74();
      v29 = MEMORY[0x1E69E7CC0];
      sub_1BD113E88(&qword_1EBD366B0, MEMORY[0x1E69E7F60]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0);
      sub_1BD126024(&qword_1EBD35F20, &unk_1EBD387F0);
      sub_1BE053664();
      MEMORY[0x1BFB3FDF0](0, v9, v5, v17);
      _Block_release(v17);
      (*(v22 + 8))(v5, v2);
      (*(v6 + 8))(v9, v21);
    }
  }

  return result;
}

uint64_t sub_1BD117144(uint64_t a1, char a2, uint64_t a3)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v6 = *(result + OBJC_IVAR____TtC9PassKitUI33NearbyPeerPaymentDiscoveryMonitor_discoverySession);
    v7 = result;
    v8 = swift_allocObject();
    swift_weakInit();
    v9 = swift_allocObject();
    *(v9 + 16) = v8;
    *(v9 + 24) = a2;
    *(v9 + 32) = a3;
    sub_1BE048964();
    sub_1BE048964();
    sub_1BE048964();
    sub_1BD123BC4(v7, sub_1BD12613C, v9, v6);
  }

  return result;
}

uint64_t sub_1BD117260()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = *(result + OBJC_IVAR____TtC9PassKitUI33NearbyPeerPaymentDiscoveryMonitor__lock);
    sub_1BE048964();

    swift_allocObject();
    swift_beginAccess();
    swift_weakLoadStrong();
    swift_weakInit();

    MEMORY[0x1EEE9AC00](v2, v3);
    MEMORY[0x1EEE9AC00](v4, v5);
    os_unfair_lock_lock(v1 + 4);
    sub_1BD126250(&v6);
    os_unfair_lock_unlock(v1 + 4);
  }

  return result;
}

uint64_t sub_1BD1173DC@<X0>(char a1@<W1>, char a2@<W2>, _BYTE *a3@<X8>)
{
  v7 = sub_1BE04AFE4();
  v54 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v49[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = sub_1BE04D214();
  v55 = *(v11 - 8);
  v56 = v11;
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v49[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v49[-v17];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v20 = result;
    v21 = *(result + OBJC_IVAR____TtC9PassKitUI33NearbyPeerPaymentDiscoveryMonitor__sessionState);
    v53 = a3;
    if ((a1 & 1) != 0 && a2 == 1)
    {
      if (v21 != 1)
      {
        KeyPath = swift_getKeyPath();
        MEMORY[0x1EEE9AC00](KeyPath, v23);
        *&v49[-16] = v20;
        v49[-8] = 1;
        v57 = v20;
        sub_1BD113E88(&qword_1EBD398F0, type metadata accessor for NearbyPeerPaymentDiscoveryMonitor);
        sub_1BE04B584();
      }

      sub_1BE04D094();
      sub_1BE048964();
      v24 = sub_1BE04D204();
      v25 = sub_1BE052C54();

      v26 = os_log_type_enabled(v24, v25);
      v52 = v3;
      if (v26)
      {
        v27 = swift_slowAlloc();
        v51 = swift_slowAlloc();
        v58 = v51;
        *v27 = 136315138;
        swift_getKeyPath();
        v57 = v20;
        sub_1BD113E88(&qword_1EBD398F0, type metadata accessor for NearbyPeerPaymentDiscoveryMonitor);
        sub_1BE04B594();

        v28 = OBJC_IVAR____TtC9PassKitUI33NearbyPeerPaymentDiscoveryMonitor__id;
        swift_beginAccess();
        v50 = v25;
        v29 = v54;
        (*(v54 + 16))(v10, v20 + v28, v7);
        sub_1BD113E88(&unk_1EBD39960, MEMORY[0x1E69695A8]);
        v30 = sub_1BE053B24();
        v32 = v31;
        (*(v29 + 8))(v10, v7);
        v33 = sub_1BD123690(v30, v32, &v58);

        *(v27 + 4) = v33;
        _os_log_impl(&dword_1BD026000, v24, v50, "NearbyPeerPayment: DiscoveryMonitor: monitoring started for monitorID: %s", v27, 0xCu);
        v34 = v51;
        __swift_destroy_boxed_opaque_existential_0(v51);
        MEMORY[0x1BFB45F20](v34, -1, -1);
        MEMORY[0x1BFB45F20](v27, -1, -1);
      }

      (*(v55 + 8))(v18, v56);
      sub_1BD11CAC8(0x78);
    }

    else
    {
      if (v21 == 3)
      {
        v52 = v3;
      }

      else
      {
        v35 = swift_getKeyPath();
        MEMORY[0x1EEE9AC00](v35, v36);
        *&v49[-16] = v20;
        v49[-8] = 3;
        v57 = v20;
        sub_1BD113E88(&qword_1EBD398F0, type metadata accessor for NearbyPeerPaymentDiscoveryMonitor);
        sub_1BE04B584();
        v52 = v3;
      }

      sub_1BE04D094();
      sub_1BE048964();
      v37 = sub_1BE04D204();
      v38 = sub_1BE052C54();

      if (os_log_type_enabled(v37, v38))
      {
        v39 = swift_slowAlloc();
        v51 = swift_slowAlloc();
        v58 = v51;
        *v39 = 136315138;
        swift_getKeyPath();
        v57 = v20;
        sub_1BD113E88(&qword_1EBD398F0, type metadata accessor for NearbyPeerPaymentDiscoveryMonitor);
        sub_1BE04B594();

        v40 = OBJC_IVAR____TtC9PassKitUI33NearbyPeerPaymentDiscoveryMonitor__id;
        swift_beginAccess();
        v50 = v38;
        v41 = v54;
        (*(v54 + 16))(v10, v20 + v40, v7);
        sub_1BD113E88(&unk_1EBD39960, MEMORY[0x1E69695A8]);
        v42 = sub_1BE053B24();
        v44 = v43;
        (*(v41 + 8))(v10, v7);
        v45 = sub_1BD123690(v42, v44, &v58);

        *(v39 + 4) = v45;
        _os_log_impl(&dword_1BD026000, v37, v50, "NearbyPeerPayment: DiscoveryMonitor: monitoring could not start for monitorID: %s", v39, 0xCu);
        v46 = v51;
        __swift_destroy_boxed_opaque_existential_0(v51);
        MEMORY[0x1BFB45F20](v46, -1, -1);
        MEMORY[0x1BFB45F20](v39, -1, -1);
      }

      (*(v55 + 8))(v14, v56);
    }

    if (*(v20 + OBJC_IVAR____TtC9PassKitUI33NearbyPeerPaymentDiscoveryMonitor__updating))
    {
      v47 = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](v47, v48);
      *&v49[-16] = v20;
      v49[-8] = 0;
      v58 = v20;
      sub_1BD113E88(&qword_1EBD398F0, type metadata accessor for NearbyPeerPaymentDiscoveryMonitor);
      sub_1BE04B584();
    }

    else
    {
      *(v20 + OBJC_IVAR____TtC9PassKitUI33NearbyPeerPaymentDiscoveryMonitor__updating) = 0;
    }

    a3 = v53;
  }

  *a3 = 0;
  return result;
}

uint64_t sub_1BD117C74()
{
  v1 = v0;
  v2 = sub_1BE04AFE4();
  v44 = *(v2 - 8);
  v45 = v2;
  MEMORY[0x1EEE9AC00](v2, v3);
  v43 = &v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1BE04D214();
  v48 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v6);
  v49 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1BE051F54();
  v47 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1BE051FA4();
  v46 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  aBlock[0] = v0;
  sub_1BD113E88(&qword_1EBD398F0, type metadata accessor for NearbyPeerPaymentDiscoveryMonitor);
  sub_1BE04B594();

  if ((*(v0 + OBJC_IVAR____TtC9PassKitUI33NearbyPeerPaymentDiscoveryMonitor__updating) & 1) == 0)
  {
    v42 = v5;
    swift_getKeyPath();
    aBlock[0] = v0;
    sub_1BE04B594();

    v19 = OBJC_IVAR____TtC9PassKitUI33NearbyPeerPaymentDiscoveryMonitor__sessionState;
    if (*(v0 + OBJC_IVAR____TtC9PassKitUI33NearbyPeerPaymentDiscoveryMonitor__sessionState) == 2)
    {
      v20 = v49;
      sub_1BE04D094();
      sub_1BE048964();
      v21 = sub_1BE04D204();
      v22 = sub_1BE052C54();

      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        v24 = swift_slowAlloc();
        v50 = v24;
        *v23 = 136315394;
        swift_getKeyPath();
        aBlock[0] = v1;
        sub_1BE04B594();

        if (*(v1 + v19) > 1u)
        {
          if (*(v1 + v19) == 2)
          {
            v25 = 0xEB00000000646574;
            v26 = 0x6164696C61766E69;
          }

          else
          {
            v25 = 0xE600000000000000;
            v26 = 0x64656C696166;
          }
        }

        else if (*(v1 + v19))
        {
          v25 = 0xE600000000000000;
          v26 = 0x657669746361;
        }

        else
        {
          v25 = 0xE800000000000000;
          v26 = 0x6576697463616E69;
        }

        v31 = v42;
        v32 = sub_1BD123690(v26, v25, &v50);

        *(v23 + 4) = v32;
        *(v23 + 12) = 2080;
        swift_getKeyPath();
        aBlock[0] = v1;
        sub_1BE04B594();

        v33 = OBJC_IVAR____TtC9PassKitUI33NearbyPeerPaymentDiscoveryMonitor__id;
        swift_beginAccess();
        v35 = v43;
        v34 = v44;
        v36 = v1 + v33;
        v37 = v45;
        (*(v44 + 16))(v43, v36, v45);
        sub_1BD113E88(&unk_1EBD39960, MEMORY[0x1E69695A8]);
        v38 = sub_1BE053B24();
        v40 = v39;
        (*(v34 + 8))(v35, v37);
        v41 = sub_1BD123690(v38, v40, &v50);

        *(v23 + 14) = v41;
        _os_log_impl(&dword_1BD026000, v21, v22, "NearbyPeerPayment: DiscoveryMonitor: cannot call invalidate on a session with sessionState: %s; monitorID: %s", v23, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1BFB45F20](v24, -1, -1);
        MEMORY[0x1BFB45F20](v23, -1, -1);

        return (*(v48 + 8))(v49, v31);
      }

      else
      {

        return (*(v48 + 8))(v20, v42);
      }
    }

    else
    {
      v27 = *(v0 + OBJC_IVAR____TtC9PassKitUI33NearbyPeerPaymentDiscoveryMonitor__lock);
      MEMORY[0x1EEE9AC00](v17, v18);
      *(&v42 - 2) = sub_1BD12362C;
      *(&v42 - 1) = v0;
      os_unfair_lock_lock(v27 + 4);
      sub_1BD12365C();
      os_unfair_lock_unlock(v27 + 4);
      v49 = *(v0 + OBJC_IVAR____TtC9PassKitUI33NearbyPeerPaymentDiscoveryMonitor_queue);
      v28 = swift_allocObject();
      swift_weakInit();
      v29 = swift_allocObject();
      *(v29 + 16) = v28;
      *(v29 + 24) = 2;
      aBlock[4] = sub_1BD123684;
      aBlock[5] = v29;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1BD126964;
      aBlock[3] = &block_descriptor_4;
      v30 = _Block_copy(aBlock);
      sub_1BE048964();
      sub_1BE051F74();
      v50 = MEMORY[0x1E69E7CC0];
      sub_1BD113E88(&qword_1EBD366B0, MEMORY[0x1E69E7F60]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0);
      sub_1BD126024(&qword_1EBD35F20, &unk_1EBD387F0);
      sub_1BE053664();
      MEMORY[0x1BFB3FDF0](0, v15, v11, v30);
      _Block_release(v30);
      (*(v47 + 8))(v11, v8);
      (*(v46 + 8))(v15, v12);
    }
  }

  return result;
}

uint64_t sub_1BD118458(uint64_t result)
{
  if (*(result + OBJC_IVAR____TtC9PassKitUI33NearbyPeerPaymentDiscoveryMonitor__updating) == 1)
  {
    *(result + OBJC_IVAR____TtC9PassKitUI33NearbyPeerPaymentDiscoveryMonitor__updating) = 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath, v2);
    sub_1BD113E88(&qword_1EBD398F0, type metadata accessor for NearbyPeerPaymentDiscoveryMonitor);
    sub_1BE04B584();
  }

  return result;
}

uint64_t sub_1BD118578(uint64_t a1, int a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3E580);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v29[-v5];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39980);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v11 = MEMORY[0x1EEE9AC00](v7 - 8, v10);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v29[-v13];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v16 = result;
    v31 = &v29[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
    v33 = a2;
    v32 = *(result + OBJC_IVAR____TtC9PassKitUI33NearbyPeerPaymentDiscoveryMonitor_discoverySession);
    swift_getKeyPath();
    *&v36 = v16;
    sub_1BD113E88(&qword_1EBD398F0, type metadata accessor for NearbyPeerPaymentDiscoveryMonitor);
    sub_1BE04B594();

    v17 = OBJC_IVAR____TtC9PassKitUI33NearbyPeerPaymentDiscoveryMonitor__discoverySessionID;
    swift_beginAccess();
    sub_1BD0DE19C(v16 + v17, v14, &qword_1EBD39980);
    swift_getKeyPath();
    *&v36 = v16;
    sub_1BE04B594();

    v18 = OBJC_IVAR____TtC9PassKitUI33NearbyPeerPaymentDiscoveryMonitor__state;
    swift_beginAccess();
    sub_1BD113234(v16 + v18, &v36);
    v34[0] = v36;
    v34[1] = v37;
    v35 = v38;
    if (*(&v37 + 1) >= 6uLL)
    {
      v19 = 0;
      v20 = 0;
      if (*(&v37 + 1) == 6)
      {
        goto LABEL_5;
      }
    }

    else
    {
      v19 = 1;
    }

    sub_1BD11326C(v34);
    v20 = v19;
LABEL_5:
    v30 = v20;
    v21 = swift_allocObject();
    swift_weakInit();
    v22 = swift_allocObject();
    *(v22 + 16) = v21;
    *(v22 + 24) = v33;
    v23 = sub_1BE0528D4();
    (*(*(v23 - 8) + 56))(v6, 1, 1, v23);
    v24 = v31;
    sub_1BD0DE19C(v14, v31, &qword_1EBD39980);
    v25 = (*(v8 + 80) + 41) & ~*(v8 + 80);
    v26 = (v9 + v25 + 7) & 0xFFFFFFFFFFFFFFF8;
    v27 = swift_allocObject();
    *(v27 + 16) = 0;
    *(v27 + 24) = 0;
    *(v27 + 32) = v32;
    *(v27 + 40) = v30;
    sub_1BD124200(v24, v27 + v25);
    v28 = (v27 + v26);
    *v28 = sub_1BD1265A8;
    v28[1] = v22;
    sub_1BE048964();
    sub_1BE048964();
    sub_1BE048964();
    sub_1BD122C00(0, 0, v6, &unk_1BE0B9610, v27);

    sub_1BD0DE53C(v14, &qword_1EBD39980);
  }

  return result;
}

uint64_t sub_1BD1189D0()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = *(result + OBJC_IVAR____TtC9PassKitUI33NearbyPeerPaymentDiscoveryMonitor__lock);
    sub_1BE048964();

    swift_allocObject();
    swift_beginAccess();
    swift_weakLoadStrong();
    swift_weakInit();

    v4 = MEMORY[0x1EEE9AC00](v2, v3);
    MEMORY[0x1EEE9AC00](v4, v5);
    os_unfair_lock_lock(v1 + 4);
    sub_1BD12694C(&v6);
    os_unfair_lock_unlock(v1 + 4);
  }

  return result;
}

uint64_t sub_1BD118B44@<X0>(char a1@<W1>, char a2@<W2>, _BYTE *a3@<X8>)
{
  v87 = a3;
  v5 = sub_1BE04AFE4();
  v84 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v6);
  v83 = &v78 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1BE04D214();
  v85 = *(v8 - 8);
  v86 = v8;
  v10 = MEMORY[0x1EEE9AC00](v8, v9);
  v12 = &v78 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v13);
  v15 = &v78 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39980);
  v18 = MEMORY[0x1EEE9AC00](v16 - 8, v17);
  v20 = &v78 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x1EEE9AC00](v18, v21);
  v24 = &v78 - v23;
  MEMORY[0x1EEE9AC00](v22, v25);
  v27 = &v78 - v26;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v29 = result;
    v30 = *(result + OBJC_IVAR____TtC9PassKitUI33NearbyPeerPaymentDiscoveryMonitor__sessionState);
    if ((a1 & 1) != 0 && a2 == 2)
    {
      if (v30 != 2)
      {
        KeyPath = swift_getKeyPath();
        MEMORY[0x1EEE9AC00](KeyPath, v32);
        *(&v78 - 2) = v29;
        *(&v78 - 8) = 2;
        v90 = v29;
        sub_1BD113E88(&qword_1EBD398F0, type metadata accessor for NearbyPeerPaymentDiscoveryMonitor);
        v33 = v88;
        sub_1BE04B584();
        v88 = v33;
      }

      (*(v84 + 56))(v27, 1, 1, v5);
      sub_1BD115400(v27);
      [*(v29 + OBJC_IVAR____TtC9PassKitUI33NearbyPeerPaymentDiscoveryMonitor_dismissalAssertion) invalidate];
      sub_1BE04D094();
      sub_1BE048964();
      v34 = sub_1BE04D204();
      v35 = sub_1BE052C54();

      if (os_log_type_enabled(v34, v35))
      {
        LODWORD(v82) = v35;
        v36 = swift_slowAlloc();
        v81 = swift_slowAlloc();
        v91 = v81;
        *v36 = 136315394;
        swift_getKeyPath();
        v37 = OBJC_IVAR____TtC9PassKitUI33NearbyPeerPaymentDiscoveryMonitor___observationRegistrar;
        v90 = v29;
        v79 = sub_1BD113E88(&qword_1EBD398F0, type metadata accessor for NearbyPeerPaymentDiscoveryMonitor);
        v80 = v37;
        sub_1BE04B594();
        v38 = v84;

        v39 = OBJC_IVAR____TtC9PassKitUI33NearbyPeerPaymentDiscoveryMonitor__discoverySessionID;
        swift_beginAccess();
        sub_1BD0DE19C(v29 + v39, v24, &qword_1EBD39980);
        if ((*(v38 + 48))(v24, 1, v5))
        {
          sub_1BD0DE53C(v24, &qword_1EBD39980);
          v40 = 0;
          v41 = 0xE000000000000000;
          v42 = v83;
        }

        else
        {
          v42 = v83;
          (*(v38 + 16))(v83, v24, v5);
          v66 = sub_1BD0DE53C(v24, &qword_1EBD39980);
          v67 = MEMORY[0x1BFB38010](v66);
          v41 = v68;
          (*(v38 + 8))(v42, v5);
          v40 = v67;
        }

        v69 = sub_1BD123690(v40, v41, &v91);

        *(v36 + 4) = v69;
        *(v36 + 12) = 2080;
        swift_getKeyPath();
        v89 = v29;
        sub_1BE04B594();

        v70 = OBJC_IVAR____TtC9PassKitUI33NearbyPeerPaymentDiscoveryMonitor__id;
        swift_beginAccess();
        (*(v38 + 16))(v42, v29 + v70, v5);
        sub_1BD113E88(&unk_1EBD39960, MEMORY[0x1E69695A8]);
        v71 = sub_1BE053B24();
        v73 = v72;
        (*(v38 + 8))(v42, v5);
        v74 = sub_1BD123690(v71, v73, &v91);

        *(v36 + 14) = v74;
        _os_log_impl(&dword_1BD026000, v34, v82, "NearbyPeerPayment: DiscoveryMonitor: device discovery ended for session ID: %s; monitorID: %s", v36, 0x16u);
        v75 = v81;
        swift_arrayDestroy();
        MEMORY[0x1BFB45F20](v75, -1, -1);
        MEMORY[0x1BFB45F20](v36, -1, -1);
      }

      (*(v85 + 8))(v15, v86);
    }

    else
    {
      if (v30 != 3)
      {
        v43 = swift_getKeyPath();
        MEMORY[0x1EEE9AC00](v43, v44);
        *(&v78 - 2) = v29;
        *(&v78 - 8) = 3;
        v90 = v29;
        sub_1BD113E88(&qword_1EBD398F0, type metadata accessor for NearbyPeerPaymentDiscoveryMonitor);
        v45 = v88;
        sub_1BE04B584();
        v88 = v45;
      }

      sub_1BE04D094();
      sub_1BE048964();
      v46 = sub_1BE04D204();
      v47 = sub_1BE052C34();

      if (os_log_type_enabled(v46, v47))
      {
        LODWORD(v81) = v47;
        v82 = v46;
        v48 = swift_slowAlloc();
        v80 = swift_slowAlloc();
        v91 = v80;
        *v48 = 136315394;
        swift_getKeyPath();
        v49 = OBJC_IVAR____TtC9PassKitUI33NearbyPeerPaymentDiscoveryMonitor___observationRegistrar;
        v90 = v29;
        sub_1BD113E88(&qword_1EBD398F0, type metadata accessor for NearbyPeerPaymentDiscoveryMonitor);
        v79 = v49;
        sub_1BE04B594();

        v50 = OBJC_IVAR____TtC9PassKitUI33NearbyPeerPaymentDiscoveryMonitor__discoverySessionID;
        swift_beginAccess();
        sub_1BD0DE19C(v29 + v50, v20, &qword_1EBD39980);
        v51 = v84;
        if ((*(v84 + 48))(v20, 1, v5))
        {
          sub_1BD0DE53C(v20, &qword_1EBD39980);
          v52 = 0;
          v53 = 0xE000000000000000;
          v54 = v83;
        }

        else
        {
          v54 = v83;
          (*(v51 + 16))(v83, v20, v5);
          v55 = sub_1BD0DE53C(v20, &qword_1EBD39980);
          v56 = MEMORY[0x1BFB38010](v55);
          v53 = v57;
          (*(v51 + 8))(v54, v5);
          v52 = v56;
        }

        v58 = sub_1BD123690(v52, v53, &v91);

        *(v48 + 4) = v58;
        *(v48 + 12) = 2080;
        swift_getKeyPath();
        v89 = v29;
        sub_1BE04B594();

        v59 = OBJC_IVAR____TtC9PassKitUI33NearbyPeerPaymentDiscoveryMonitor__id;
        swift_beginAccess();
        (*(v51 + 16))(v54, v29 + v59, v5);
        sub_1BD113E88(&unk_1EBD39960, MEMORY[0x1E69695A8]);
        v60 = sub_1BE053B24();
        v62 = v61;
        (*(v51 + 8))(v54, v5);
        v63 = sub_1BD123690(v60, v62, &v91);

        *(v48 + 14) = v63;
        v64 = v82;
        _os_log_impl(&dword_1BD026000, v82, v81, "NearbyPeerPayment: DiscoveryMonitor: Failed to cancel discovery with session ID: %s; monitorID: %s", v48, 0x16u);
        v65 = v80;
        swift_arrayDestroy();
        MEMORY[0x1BFB45F20](v65, -1, -1);
        MEMORY[0x1BFB45F20](v48, -1, -1);
      }

      else
      {
      }

      (*(v85 + 8))(v12, v86);
    }

    if (*(v29 + OBJC_IVAR____TtC9PassKitUI33NearbyPeerPaymentDiscoveryMonitor__updating))
    {
      v76 = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](v76, v77);
      *(&v78 - 2) = v29;
      *(&v78 - 8) = 0;
      v91 = v29;
      sub_1BD113E88(&qword_1EBD398F0, type metadata accessor for NearbyPeerPaymentDiscoveryMonitor);
      sub_1BE04B584();
    }

    else
    {
      *(v29 + OBJC_IVAR____TtC9PassKitUI33NearbyPeerPaymentDiscoveryMonitor__updating) = 0;
    }
  }

  *v87 = 0;
  return result;
}

uint64_t sub_1BD119750()
{
  v0 = sub_1BE051F54();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1BE051FA4();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [objc_allocWithZone(MEMORY[0x1E69B9000]) init];
  v11 = [v10 account];

  sub_1BE04DF34();
  v13 = v12;
  if (v11)
  {
    if ([v11 role] == 1 && objc_msgSend(v11, sel_sendRestrictionType) == 2 && !v13)
    {
      sub_1BD0E5E8C(0, &qword_1EBD35E90);
      v20 = sub_1BE052D54();
      v15 = swift_allocObject();
      swift_weakInit();
      aBlock[4] = sub_1BD1241B0;
      aBlock[5] = v15;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1BD126964;
      aBlock[3] = &block_descriptor_39;
      v19 = _Block_copy(aBlock);

      sub_1BE051F74();
      aBlock[0] = MEMORY[0x1E69E7CC0];
      v18[1] = sub_1BD113E88(&qword_1EBD366B0, MEMORY[0x1E69E7F60]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0);
      sub_1BD126024(&qword_1EBD35F20, &unk_1EBD387F0);
      sub_1BE053664();
      v17 = v19;
      v16 = v20;
      MEMORY[0x1BFB3FDF0](0, v9, v4, v19);
      _Block_release(v17);

      (*(v1 + 8))(v4, v0);
      (*(v6 + 8))(v9, v5);
      return 0;
    }
  }

  return 1;
}

uint64_t sub_1BD119AE8()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    memset(v1, 0, sizeof(v1));
    v2 = xmmword_1BE0B8E00;
    sub_1BD114CC8(v1);
  }

  return result;
}

id sub_1BD119B58@<X0>(uint64_t a1@<X0>, int a2@<W3>, uint64_t a3@<X8>)
{
  v4 = v3;
  LODWORD(v82) = a2;
  v81 = a1;
  v83 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39970);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v80 = &v68 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3E580);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v79 = &v68 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39980);
  v76 = *(v11 - 8);
  v13 = MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v77 = v14;
  v78 = &v68 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v15);
  v84 = &v68 - v16;
  v17 = sub_1BE051F54();
  v74 = *(v17 - 8);
  v75 = v17;
  MEMORY[0x1EEE9AC00](v17, v18);
  v72 = &v68 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = sub_1BE051FA4();
  v71 = *(v73 - 8);
  MEMORY[0x1EEE9AC00](v73, v20);
  v70 = &v68 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_1BE04AF64();
  v23 = *(v22 - 8);
  v25 = MEMORY[0x1EEE9AC00](v22, v24);
  v27 = &v68 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25, v28);
  v30 = &v68 - v29;
  swift_getKeyPath();
  aBlock[0] = v3;
  sub_1BD113E88(&qword_1EBD398F0, type metadata accessor for NearbyPeerPaymentDiscoveryMonitor);
  sub_1BE04B594();

  v31 = OBJC_IVAR____TtC9PassKitUI33NearbyPeerPaymentDiscoveryMonitor__authorizedQuote;
  result = [*(v3 + OBJC_IVAR____TtC9PassKitUI33NearbyPeerPaymentDiscoveryMonitor__authorizedQuote) peerPaymentQuote];
  if (!result)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    return result;
  }

  v33 = result;
  v34 = [result validUntil];

  if (v34)
  {
    sub_1BE04AEE4();

    v35 = v30;
    sub_1BE04AEF4();
    v36 = sub_1BE04AE74();
    v37 = (v23 + 8);
    v69 = *(v23 + 8);
    v69(v27, v22);
    if (v36)
    {
      sub_1BD0E5E8C(0, &qword_1EBD35E90);
      v38 = sub_1BE052D54();
      v39 = swift_allocObject();
      swift_weakInit();
      aBlock[4] = sub_1BD1241DC;
      aBlock[5] = v39;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1BD126964;
      aBlock[3] = &block_descriptor_47;
      v40 = _Block_copy(aBlock);

      v41 = v70;
      sub_1BE051F74();
      aBlock[0] = MEMORY[0x1E69E7CC0];
      sub_1BD113E88(&qword_1EBD366B0, MEMORY[0x1E69E7F60]);
      v81 = v22;
      v82 = v35;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0);
      v80 = v37;
      sub_1BD126024(&qword_1EBD35F20, &unk_1EBD387F0);
      v42 = v72;
      v43 = v75;
      sub_1BE053664();
      MEMORY[0x1BFB3FDF0](0, v41, v42, v40);
      _Block_release(v40);

      (*(v74 + 8))(v42, v43);
      (*(v71 + 8))(v41, v73);
      v44 = *(v4 + OBJC_IVAR____TtC9PassKitUI33NearbyPeerPaymentDiscoveryMonitor_discoverySession);
      swift_getKeyPath();
      aBlock[0] = v4;
      sub_1BE04B594();

      v45 = OBJC_IVAR____TtC9PassKitUI33NearbyPeerPaymentDiscoveryMonitor__discoverySessionID;
      swift_beginAccess();
      v46 = v84;
      sub_1BD0DE19C(v4 + v45, v84, &qword_1EBD39980);
      v47 = sub_1BE0528D4();
      v48 = v79;
      (*(*(v47 - 8) + 56))(v79, 1, 1, v47);
      v49 = v78;
      sub_1BD0DE19C(v46, v78, &qword_1EBD39980);
      v50 = (*(v76 + 80) + 41) & ~*(v76 + 80);
      v51 = (v77 + v50 + 7) & 0xFFFFFFFFFFFFFFF8;
      v52 = swift_allocObject();
      *(v52 + 16) = 0;
      *(v52 + 24) = 0;
      *(v52 + 32) = v44;
      *(v52 + 40) = 1;
      sub_1BD124200(v49, v52 + v50);
      v53 = (v52 + v51);
      *v53 = sub_1BD11E07C;
      v53[1] = 0;
      sub_1BE048964();
      sub_1BD122C00(0, 0, v48, &unk_1BE0B9038, v52);

      sub_1BD0DE53C(v46, &qword_1EBD39980);
      v69(v82, v81);
      v54 = sub_1BE04C4C4();
      return (*(*(v54 - 8) + 56))(v83, 1, 1, v54);
    }

    v69(v35, v22);
  }

  v55 = v22;
  v56 = sub_1BE04AFE4();
  v57 = *(v56 - 8);
  v58 = v84;
  (*(v57 + 16))(v84, v81, v56);
  (*(v57 + 56))(v58, 0, 1, v56);
  sub_1BD115400(v58);
  swift_getKeyPath();
  aBlock[0] = v4;
  sub_1BE04B594();

  aBlock[0] = v4;
  swift_getKeyPath();
  sub_1BE04B5B4();

  v59 = OBJC_IVAR____TtC9PassKitUI33NearbyPeerPaymentDiscoveryMonitor__metadata;
  swift_beginAccess();
  sub_1BE04C414();
  swift_endAccess();
  aBlock[0] = v4;
  swift_getKeyPath();
  sub_1BE04B5A4();

  swift_getKeyPath();
  aBlock[0] = v4;
  sub_1BE04B594();

  result = [*(v4 + v31) peerPaymentQuote];
  if (!result)
  {
    goto LABEL_13;
  }

  v60 = result;
  v61 = [result validUntil];

  v62 = v80;
  if (v61)
  {
    sub_1BE04AEE4();

    v63 = 0;
  }

  else
  {
    v63 = 1;
  }

  (*(v23 + 56))(v62, v63, 1, v55);
  swift_getKeyPath();
  aBlock[0] = v4;
  sub_1BE04B594();

  aBlock[0] = v4;
  swift_getKeyPath();
  sub_1BE04B5B4();

  swift_beginAccess();
  sub_1BE04C444();
  swift_endAccess();
  aBlock[0] = v4;
  swift_getKeyPath();
  sub_1BE04B5A4();

  swift_getKeyPath();
  aBlock[0] = v4;
  sub_1BE04B594();

  v64 = sub_1BE04C4C4();
  v65 = *(v64 - 8);
  v66 = v4 + v59;
  v67 = v83;
  (*(v65 + 16))(v83, v66, v64);
  return (*(v65 + 56))(v67, 0, 1, v64);
}

uint64_t sub_1BD11A6C4(uint64_t a1, unsigned int *a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v4 = sub_1BE04B7C4();
    v6[3] = v4;
    v6[4] = sub_1BD113E88(&qword_1EBD399D8, MEMORY[0x1E69B7EE0]);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v6);
    (*(*(v4 - 8) + 104))(boxed_opaque_existential_1, *a2, v4);
    sub_1BD114CC8(v6);
  }

  return result;
}

uint64_t sub_1BD11A7AC(uint64_t a1)
{
  v2 = sub_1BE051F54();
  v26 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v3);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1BE051FA4();
  v24 = *(v6 - 8);
  v25 = v6;
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1BE04DF14();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = swift_allocObject();
  *(v15 + 16) = 0u;
  *(v15 + 32) = 0u;
  *(v15 + 48) = 0;
  (*(v11 + 16))(v14, a1, v10);
  if ((*(v11 + 88))(v14, v10) == *MEMORY[0x1E69CDD48])
  {
    (*(v11 + 96))(v14, v10);
    if ((*v14 & 1) == 0)
    {
      v16 = sub_1BE04B784();
      v28 = v16;
      v29 = sub_1BD113E88(&qword_1EBD47890, MEMORY[0x1E69B7E88]);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(aBlock);
      (*(*(v16 - 8) + 104))(boxed_opaque_existential_1, *MEMORY[0x1E69B7E68], v16);
      sub_1BD1243D0(aBlock, v15 + 16);
    }
  }

  else
  {
    (*(v11 + 8))(v14, v10);
  }

  sub_1BD0E5E8C(0, &qword_1EBD35E90);
  v18 = sub_1BE052D54();
  v19 = swift_allocObject();
  swift_weakInit();
  v20 = swift_allocObject();
  *(v20 + 16) = v19;
  *(v20 + 24) = v15;
  v29 = sub_1BD1243C8;
  v30 = v20;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BD126964;
  v28 = &block_descriptor_65;
  v21 = _Block_copy(aBlock);
  sub_1BE048964();

  sub_1BE051F74();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1BD113E88(&qword_1EBD366B0, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0);
  sub_1BD126024(&qword_1EBD35F20, &unk_1EBD387F0);
  sub_1BE053664();
  MEMORY[0x1BFB3FDF0](0, v9, v5, v21);
  _Block_release(v21);

  (*(v26 + 8))(v5, v2);
  (*(v24 + 8))(v9, v25);
}

uint64_t sub_1BD11AC80(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    swift_beginAccess();
    sub_1BD113234(a2 + 16, v4);
    sub_1BD114CC8(v4);
  }

  return result;
}

uint64_t sub_1BD11AD3C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v4 = result;
    sub_1BD11329C(a2, &v7);
    if (*(&v8 + 1) == 7)
    {

      return sub_1BD0DE53C(&v7, &qword_1EBD39AB0);
    }

    v15[0] = v7;
    v15[1] = v8;
    v16 = v9;
    swift_getKeyPath();
    *&v7 = v4;
    sub_1BD113E88(&qword_1EBD398F0, type metadata accessor for NearbyPeerPaymentDiscoveryMonitor);
    sub_1BE04B594();

    v5 = OBJC_IVAR____TtC9PassKitUI33NearbyPeerPaymentDiscoveryMonitor__state;
    swift_beginAccess();
    sub_1BD113234(v4 + v5, &v12);
    v7 = v12;
    v8 = v13;
    v9 = v14;
    sub_1BD113234(v15, v10);
    if (*(&v8 + 1) <= 2)
    {
      if (*(&v8 + 1))
      {
        if (*(&v8 + 1) == 1)
        {
          if (v11 == 1)
          {
            goto LABEL_30;
          }
        }

        else if (*(&v8 + 1) == 2 && v11 == 2)
        {
          goto LABEL_30;
        }

        goto LABEL_19;
      }

      if (v11)
      {
        goto LABEL_19;
      }
    }

    else
    {
      if (*(&v8 + 1) <= 4)
      {
        if (*(&v8 + 1) == 3)
        {
          if (v11 == 3)
          {
            goto LABEL_30;
          }
        }

        else if (v11 == 4)
        {
          goto LABEL_30;
        }

LABEL_19:
        sub_1BD0DE53C(&v7, &qword_1EBD398E0);
        swift_getKeyPath();
        *&v12 = v4;
        sub_1BE04B594();

        sub_1BD113234(v4 + v5, &v7);
        v12 = v7;
        v13 = v8;
        v14 = v9;
        if (*(&v8 + 1) < 6uLL)
        {
          sub_1BD11326C(&v12);
          sub_1BD113234(v15, &v7);
          memset(v10, 0, sizeof(v10));
          v11 = xmmword_1BE0B8E10;
          if (*(&v8 + 1) == 6)
          {
            sub_1BD11326C(&v7);
            sub_1BD11E1B0();
          }

          else
          {
            sub_1BD0DE53C(&v7, &qword_1EBD398E0);
          }

          sub_1BD113234(v15, &v7);
          sub_1BD114CC8(&v7);

          return sub_1BD11326C(v15);
        }

        if (*(&v8 + 1) == 6)
        {

          return sub_1BD11326C(v15);
        }

        v6 = &v12;
LABEL_31:
        sub_1BD11326C(v6);
        return sub_1BD11326C(v15);
      }

      if (*(&v8 + 1) != 5)
      {
        if (*(&v8 + 1) == 6 && v11 == 6)
        {
          goto LABEL_30;
        }

        goto LABEL_19;
      }

      if (v11 != 5)
      {
        goto LABEL_19;
      }
    }

LABEL_30:

    v6 = &v7;
    goto LABEL_31;
  }

  return result;
}