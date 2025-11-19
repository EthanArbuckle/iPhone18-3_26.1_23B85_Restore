unint64_t sub_22E46B834()
{
  result = qword_27DA64300;
  if (!qword_27DA64300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA64300);
  }

  return result;
}

unint64_t sub_22E46B88C()
{
  result = qword_27DA64308;
  if (!qword_27DA64308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA64308);
  }

  return result;
}

uint64_t sub_22E46B8F0(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_22E46B980(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

__n128 __swift_memcpy104_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 96) = *(a2 + 12);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_22E46BA6C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 104))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_22E46BAB4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 104) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 104) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_22E46BB2C()
{
  v0 = sub_22E47CBC4();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x28223BE20](v0);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v11 - v7;
  __swift_allocate_value_buffer(v6, qword_27DA66868);
  __swift_project_value_buffer(v0, qword_27DA66868);
  sub_22E47CBA4();
  sub_22E47CB94();
  sub_22E47CBB4();
  v9 = *(v1 + 8);
  v9(v5, v0);
  return (v9)(v8, v0);
}

uint64_t sub_22E46BC5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v159 = a4;
  v158 = type metadata accessor for CustomSymbol();
  v7 = *(*(v158 - 8) + 64);
  MEMORY[0x28223BE20](v158);
  v9 = &v155 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for SymbolMetadata.Backing(0);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10);
  v13 = MEMORY[0x28223BE20](v12);
  v15 = &v155 - v14;
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v155 - v17;
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v155 - v20;
  MEMORY[0x28223BE20](v19);
  v24 = &v155 - v22;
  if (!*(a2 + 16) && !*(a3 + 16))
  {
    return 0;
  }

  v157 = v23;
  v160 = a1;
  sub_22E46CE0C(a1, &v155 - v22);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_22E46D074(v24, type metadata accessor for SymbolMetadata.Backing);
  }

  else
  {
    v25 = *(v24 + 5);
    v165 = *(v24 + 4);
    v166 = v25;
    v167 = *(v24 + 12);
    v26 = *(v24 + 1);
    v161 = *v24;
    v162 = v26;
    v27 = *(v24 + 3);
    v163 = *(v24 + 2);
    v164 = v27;
    v28 = *(v24 + 120);
    v178 = *(v24 + 104);
    v179[0] = v28;
    v29 = *(v24 + 136);
    v30 = *(v24 + 152);
    v31 = *(v24 + 184);
    v179[3] = *(v24 + 168);
    v179[4] = v31;
    v179[1] = v29;
    v179[2] = v30;
    v32 = *(v24 + 200);
    v33 = *(v24 + 216);
    v34 = *(v24 + 248);
    v179[7] = *(v24 + 232);
    v179[8] = v34;
    v179[5] = v32;
    v179[6] = v33;
    sub_22E467010(&v178);
    sub_22E465940(&v161);
    if (sub_22E46E6E0(v161, a3))
    {
      return 80;
    }
  }

  v35 = v160;
  sub_22E46CE0C(v160, v21);
  if (swift_getEnumCaseMultiPayload() == 1)
  {

    sub_22E46D074(v21, type metadata accessor for SymbolMetadata.Backing);
    v36 = MEMORY[0x277D84F90];
  }

  else
  {
    v37 = *(v21 + 5);
    v165 = *(v21 + 4);
    v166 = v37;
    v167 = *(v21 + 12);
    v38 = *(v21 + 1);
    v161 = *v21;
    v162 = v38;
    v39 = *(v21 + 3);
    v163 = *(v21 + 2);
    v164 = v39;
    v40 = *(v21 + 120);
    v178 = *(v21 + 104);
    v179[0] = v40;
    v41 = *(v21 + 136);
    v42 = *(v21 + 152);
    v43 = *(v21 + 184);
    v179[3] = *(v21 + 168);
    v179[4] = v43;
    v179[1] = v41;
    v179[2] = v42;
    v44 = *(v21 + 200);
    v45 = *(v21 + 216);
    v46 = *(v21 + 248);
    v179[7] = *(v21 + 232);
    v179[8] = v46;
    v179[5] = v44;
    v179[6] = v45;

    sub_22E467010(&v178);
    v36 = v164;

    sub_22E465940(&v161);
  }

  v47 = sub_22E46CE70(v36, a3);

  v48 = *(v47 + 16);

  if (v48)
  {
    return 80;
  }

  sub_22E46CE0C(v35, v18);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_22E46D010(v18, v9);
    v50 = &v9[*(v158 + 20)];
    v51 = *v50;
    v52 = *(v50 + 1);

    sub_22E46D074(v9, type metadata accessor for CustomSymbol);
  }

  else
  {
    v53 = *(v18 + 5);
    v165 = *(v18 + 4);
    v166 = v53;
    v167 = *(v18 + 12);
    v54 = *(v18 + 1);
    v161 = *v18;
    v162 = v54;
    v55 = *(v18 + 3);
    v163 = *(v18 + 2);
    v164 = v55;
    v56 = *(v18 + 120);
    v178 = *(v18 + 104);
    v179[0] = v56;
    v57 = *(v18 + 136);
    v58 = *(v18 + 152);
    v59 = *(v18 + 184);
    v179[3] = *(v18 + 168);
    v179[4] = v59;
    v179[1] = v57;
    v179[2] = v58;
    v60 = *(v18 + 200);
    v61 = *(v18 + 216);
    v62 = *(v18 + 248);
    v179[7] = *(v18 + 232);
    v179[8] = v62;
    v179[5] = v60;
    v179[6] = v61;
    sub_22E467010(&v178);
    v51 = *(&v161 + 1);
    v52 = v162;

    sub_22E465940(&v161);
  }

  *&v178 = v51;
  *(&v178 + 1) = v52;
  *&v161 = 46;
  *(&v161 + 1) = 0xE100000000000000;
  v155 = sub_22E453EA4();
  v156 = sub_22E47CF14();

  *&v168 = 46;
  *(&v168 + 1) = 0xE100000000000000;
  sub_22E46CE0C(v160, v15);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_22E46D010(v15, v9);
    v63 = &v9[*(v158 + 20)];
    v65 = *v63;
    v64 = *(v63 + 1);

    sub_22E46D074(v9, type metadata accessor for CustomSymbol);
  }

  else
  {
    v66 = *(v15 + 5);
    v165 = *(v15 + 4);
    v166 = v66;
    v167 = *(v15 + 12);
    v67 = *(v15 + 1);
    v161 = *v15;
    v162 = v67;
    v68 = *(v15 + 3);
    v163 = *(v15 + 2);
    v164 = v68;
    v69 = *(v15 + 120);
    v178 = *(v15 + 104);
    v179[0] = v69;
    v70 = *(v15 + 136);
    v71 = *(v15 + 152);
    v72 = *(v15 + 184);
    v179[3] = *(v15 + 168);
    v179[4] = v72;
    v179[1] = v70;
    v179[2] = v71;
    v73 = *(v15 + 200);
    v74 = *(v15 + 216);
    v75 = *(v15 + 248);
    v179[7] = *(v15 + 232);
    v179[8] = v75;
    v179[5] = v73;
    v179[6] = v74;
    sub_22E467010(&v178);
    v65 = *(&v161 + 1);
    v64 = v162;

    sub_22E465940(&v161);
  }

  MEMORY[0x2318E6DB0](v65, v64);

  MEMORY[0x2318E6DB0](46, 0xE100000000000000);
  v76 = v168;
  *&v178 = 46;
  *(&v178 + 1) = 0xE100000000000000;
  *&v161 = v159;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA64150, &qword_22E47EA40);
  sub_22E46D0D4();
  v77 = sub_22E47CD94();
  v79 = v78;

  MEMORY[0x2318E6DB0](v77, v79);

  MEMORY[0x2318E6DB0](46, 0xE100000000000000);
  if (v178 == v76)
  {

LABEL_21:

    return 1000;
  }

  v80 = sub_22E47D054();

  v81 = v160;
  if (v80)
  {
    goto LABEL_21;
  }

  v82 = v156;

  v84 = sub_22E477870(v83);

  v85 = sub_22E46D138(v84, a2);

  if (v85)
  {
    v86 = *(a2 + 16);
    v87 = *(v82 + 16);
    if (v87)
    {
      v160 = *(a2 + 16);
      v88 = 0;
      v89 = v82 + 32;
      v90 = a2 + 56;
      v91 = 20.0;
      v92 = 0.0;
      while (v88 < *(v82 + 16))
      {
        if (*(a2 + 16))
        {
          v93 = (v89 + 16 * v88);
          v95 = *v93;
          v94 = v93[1];
          v96 = *(a2 + 40);
          sub_22E47D0F4();

          sub_22E47CE24();
          v97 = sub_22E47D124();
          v98 = -1 << *(a2 + 32);
          v99 = v97 & ~v98;
          if ((*(v90 + ((v99 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v99))
          {
            v100 = ~v98;
            while (1)
            {
              v101 = (*(a2 + 48) + 16 * v99);
              v102 = *v101 == v95 && v101[1] == v94;
              if (v102 || (sub_22E47D054() & 1) != 0)
              {
                break;
              }

              v99 = (v99 + 1) & v100;
              if (((*(v90 + ((v99 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v99) & 1) == 0)
              {
                goto LABEL_25;
              }
            }

            v92 = v92 + v91;
          }

          else
          {
LABEL_25:
          }

          v82 = v156;
        }

        ++v88;
        v91 = v91 * 0.9;
        if (v88 == v87)
        {

          v86 = v160;
          goto LABEL_84;
        }
      }

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
    }

    else
    {

      v92 = 0.0;
LABEL_84:
      v154 = roundf((v86 / v87) * v92);
      if ((LODWORD(v154) & 0x7FFFFFFFu) <= 0x7F7FFFFF)
      {
        if (v154 > -9.2234e18)
        {
          if (v154 < 9.2234e18)
          {
            result = v154 + 800;
            if (!__OFADD__(v154, 800))
            {
              return result;
            }

            goto LABEL_100;
          }

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
          return result;
        }

LABEL_98:
        __break(1u);
        goto LABEL_99;
      }
    }

    __break(1u);
    goto LABEL_98;
  }

  v103 = v157;
  sub_22E46CE0C(v81, v157);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    result = sub_22E46D074(v103, type metadata accessor for SymbolMetadata.Backing);
    v104 = MEMORY[0x277D84F90];
  }

  else
  {
    v105 = *v103;
    v106 = *(v103 + 8);
    v107 = *(v103 + 16);
    *(&v179[1] + 8) = *(v103 + 40);
    *(&v179[2] + 8) = *(v103 + 56);
    *(&v179[3] + 8) = *(v103 + 72);
    *(&v179[4] + 8) = *(v103 + 88);
    *(v179 + 8) = *(v103 + 24);
    v108 = *(v103 + 216);
    v174 = *(v103 + 200);
    v175 = v108;
    v109 = *(v103 + 248);
    v176 = *(v103 + 232);
    v177 = v109;
    v110 = *(v103 + 152);
    v170 = *(v103 + 136);
    v171 = v110;
    v111 = *(v103 + 184);
    v172 = *(v103 + 168);
    v173 = v111;
    v112 = *(v103 + 120);
    v168 = *(v103 + 104);
    v169 = v112;
    *&v178 = v105;
    *(&v178 + 1) = v106;
    *&v179[0] = v107;
    *(&v179[11] + 8) = *(v103 + 200);
    *(&v179[12] + 8) = *(v103 + 216);
    *(&v179[13] + 8) = *(v103 + 232);
    *(&v179[14] + 8) = *(v103 + 248);
    *(&v179[7] + 8) = *(v103 + 136);
    *(&v179[8] + 8) = *(v103 + 152);
    *(&v179[9] + 8) = *(v103 + 168);
    *(&v179[10] + 8) = *(v103 + 184);
    *(&v179[5] + 8) = *(v103 + 104);
    *(&v179[6] + 8) = *(v103 + 120);
    sub_22E46D734(&v178, &v161);
    v104 = sub_22E45BAF4(v106, v107);
    sub_22E46D7A4(&v178);
    result = sub_22E46D7A4(&v178);
  }

  v113 = (v104 + 40);
  v114 = -*(v104 + 2);
  v115 = -1;
  do
  {
    if (v114 + v115 == -1)
    {
      goto LABEL_54;
    }

    if (++v115 >= *(v104 + 2))
    {
      goto LABEL_92;
    }

    v116 = v113 + 6;
    v117 = *v113;
    *&v178 = *(v113 - 1);
    *(&v178 + 1) = v117;
    *&v161 = 46;
    *(&v161 + 1) = 0xE100000000000000;
    v118 = sub_22E47CF14();
    v119 = sub_22E477870(v118);

    v120 = sub_22E46D138(v119, a2);

    v113 = v116;
  }

  while ((v120 & 1) == 0);

  v121 = *(a2 + 16);
  v122 = *(v156 + 16);

  v123 = roundf((v121 / v122) * 100.0);
  if ((LODWORD(v123) & 0x7FFFFFFFu) > 0x7F7FFFFF)
  {
    goto LABEL_102;
  }

  if (v123 <= -9.2234e18)
  {
    goto LABEL_103;
  }

  if (v123 >= 9.2234e18)
  {
    goto LABEL_104;
  }

  result = v123 + 700;
  if (__OFADD__(v123, 700))
  {
    __break(1u);
LABEL_54:

    v124 = SymbolMetadata.tags.getter();
    v125 = v124 + 56;
    v126 = 1 << *(v124 + 32);
    v127 = -1;
    if (v126 < 64)
    {
      v127 = ~(-1 << v126);
    }

    v128 = v127 & *(v124 + 56);
    v129 = (v126 + 63) >> 6;
    v158 = v124;

    v130 = 0;
    v157 = 0;
    v131 = MEMORY[0x277D84F90];
    v132 = v159;
    while (v128)
    {
LABEL_63:
      v134 = (*(v158 + 48) + ((v130 << 10) | (16 * __clz(__rbit64(v128)))));
      v135 = v134[1];
      *&v178 = *v134;
      *(&v178 + 1) = v135;
      v136 = qword_27DA64140;

      if (v136 != -1)
      {
        swift_once();
      }

      v137 = sub_22E47CBC4();
      __swift_project_value_buffer(v137, qword_27DA66868);
      v138 = sub_22E47CF04();

      v139 = *(v138 + 16);
      v140 = *(v131 + 16);
      v141 = v140 + v139;
      if (__OFADD__(v140, v139))
      {
        goto LABEL_94;
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      if (!result || v141 > *(v131 + 24) >> 1)
      {
        if (v140 <= v141)
        {
          v142 = v140 + v139;
        }

        else
        {
          v142 = v140;
        }

        result = sub_22E4786E0(result, v142, 1, v131);
        v131 = result;
      }

      v132 = v159;
      v128 &= v128 - 1;
      if (*(v138 + 16))
      {
        if ((*(v131 + 24) >> 1) - *(v131 + 16) < v139)
        {
          goto LABEL_96;
        }

        swift_arrayInitWithCopy();

        if (v139)
        {
          v143 = *(v131 + 16);
          v144 = __OFADD__(v143, v139);
          v145 = v143 + v139;
          if (v144)
          {
            goto LABEL_101;
          }

          *(v131 + 16) = v145;
        }
      }

      else
      {

        if (v139)
        {
          goto LABEL_95;
        }
      }
    }

    while (1)
    {
      v133 = v130 + 1;
      if (__OFADD__(v130, 1))
      {
        goto LABEL_91;
      }

      if (v133 >= v129)
      {

        *&v161 = MEMORY[0x277D84FA0];
        v146 = *(v131 + 16);
        if (!v146)
        {
LABEL_81:

          v152 = v161;
          MEMORY[0x28223BE20](v151);
          *(&v155 - 2) = v160;
          *(&v155 - 1) = v152;
          v153 = sub_22E46ED98(sub_22E46D714, (&v155 - 4), v132);

          if (v153)
          {
            return *(v132 + 16);
          }

          else
          {
            return 0;
          }
        }

        v147 = 0;
        v148 = (v131 + 40);
        while (v147 < *(v131 + 16))
        {
          ++v147;
          v150 = *(v148 - 1);
          v149 = *v148;

          sub_22E460A90(&v178, v150, v149);

          v148 += 2;
          if (v146 == v147)
          {
            goto LABEL_81;
          }
        }

        goto LABEL_93;
      }

      v128 = *(v125 + 8 * v133);
      ++v130;
      if (v128)
      {
        v130 = v133;
        goto LABEL_63;
      }
    }
  }

  return result;
}

uint64_t sub_22E46C9FC(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v63 = a3;
  v7 = type metadata accessor for CustomSymbol();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for SymbolMetadata.Backing(0);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = v48 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = v48 - v16;
  v19 = *a1;
  v18 = a1[1];
  v50 = a2;
  sub_22E46CE0C(a2, v48 - v16);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_22E46D010(v17, v10);
    v20 = &v10[*(v7 + 20)];
    v21 = *v20;
    v22 = *(v20 + 1);

    sub_22E46D074(v10, type metadata accessor for CustomSymbol);
  }

  else
  {
    v21 = *(v17 + 1);
    v22 = *(v17 + 2);
    v48[2] = *(v17 + 5);
    v49 = v19;
    v48[1] = *(v17 + 6);
    v23 = *(v17 + 7);
    v48[3] = *(v17 + 10);
    v24 = v18;
    v25 = *(v17 + 12);
    v26 = *(v17 + 216);
    v57 = *(v17 + 200);
    v58 = v26;
    v27 = *(v17 + 248);
    v59 = *(v17 + 232);
    v60 = v27;
    v28 = *(v17 + 152);
    v53 = *(v17 + 136);
    v54 = v28;
    v29 = *(v17 + 184);
    v55 = *(v17 + 168);
    v56 = v29;
    v30 = *(v17 + 120);
    v51 = *(v17 + 104);
    v52 = v30;
    sub_22E467010(&v51);
    v18 = v24;

    v4 = v3;

    v19 = v49;
  }

  *&v51 = v21;
  *(&v51 + 1) = v22;
  v61 = v19;
  v62 = v18;
  sub_22E453EA4();
  v31 = sub_22E47CF34();

  if (v31 & 1) != 0 || (sub_22E46E5E8(v19, v18, v63))
  {
    v32 = 1;
  }

  else
  {
    sub_22E46CE0C(v50, v15);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v33 = sub_22E46D074(v15, type metadata accessor for SymbolMetadata.Backing);
      v34 = MEMORY[0x277D84F90];
    }

    else
    {
      v35 = *(v15 + 2);
      v36 = v18;
      v37 = *(v15 + 5);
      v38 = *(v15 + 6);
      v34 = *(v15 + 7);
      v63 = v4;
      v39 = *(v15 + 10);
      v40 = v19;
      v41 = *(v15 + 12);
      v42 = *(v15 + 216);
      v57 = *(v15 + 200);
      v58 = v42;
      v43 = *(v15 + 248);
      v59 = *(v15 + 232);
      v60 = v43;
      v44 = *(v15 + 152);
      v53 = *(v15 + 136);
      v54 = v44;
      v45 = *(v15 + 184);
      v55 = *(v15 + 168);
      v56 = v45;
      v46 = *(v15 + 120);
      v51 = *(v15 + 104);
      v52 = v46;
      sub_22E467010(&v51);
      v19 = v40;

      v18 = v36;
    }

    *&v51 = v19;
    *(&v51 + 1) = v18;
    MEMORY[0x28223BE20](v33);
    v48[-2] = &v51;
    v32 = sub_22E46D668(sub_22E46D80C, &v48[-4], v34);
  }

  return v32 & 1;
}

uint64_t sub_22E46CE0C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SymbolMetadata.Backing(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22E46CE70(uint64_t isStackAllocationSafe, uint64_t a2)
{
  v3 = isStackAllocationSafe;
  v18[6] = *MEMORY[0x277D85DE8];
  v17 = isStackAllocationSafe;
  v4 = *(a2 + 32);
  v5 = v4 & 0x3F;
  v18[3] = &v17;
  v18[4] = a2;
  v6 = (1 << v4) + 63;
  v7 = v6 >> 6;
  if (v5 <= 0xD || (v13 = 8 * (v6 >> 6), isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
  {
    MEMORY[0x28223BE20](isStackAllocationSafe);
    v9 = &v16 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v9, v8);
    v10 = sub_22E46D314(v9, v7, v3, a2);
  }

  else
  {
    v14 = v13;
    v15 = swift_slowAlloc();
    bzero(v15, v14);
    sub_22E46D864(v15, v7, v18);
    v10 = v18[0];

    MEMORY[0x2318E7650](v15, -1, -1);
  }

  v11 = *MEMORY[0x277D85DE8];
  return v10;
}

uint64_t sub_22E46D010(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CustomSymbol();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_22E46D074(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_22E46D0D4()
{
  result = qword_27DA64318;
  if (!qword_27DA64318)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DA64150, &qword_22E47EA40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA64318);
  }

  return result;
}

uint64_t sub_22E46D138(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16) >= *(a2 + 16))
  {
    v2 = a2;
    v4 = a2 + 56;
    v5 = 1 << *(a2 + 32);
    if (v5 < 64)
    {
      v6 = ~(-1 << v5);
    }

    else
    {
      v6 = -1;
    }

    v7 = v6 & *(a2 + 56);
    v8 = (v5 + 63) >> 6;
    v9 = a1 + 56;

    v11 = 0;
    for (i = v2; ; v2 = i)
    {
      if (!v7)
      {
        do
        {
          v22 = v11 + 1;
          if (__OFADD__(v11, 1))
          {
            __break(1u);
            return result;
          }

          if (v22 >= v8)
          {

            return 1;
          }

          v7 = *(v4 + 8 * v22);
          ++v11;
        }

        while (!v7);
        v11 = v22;
        if (*(a1 + 16))
        {
          goto LABEL_9;
        }

LABEL_22:

        return 0;
      }

      if (!*(a1 + 16))
      {
        goto LABEL_22;
      }

LABEL_9:
      v12 = (*(v2 + 48) + ((v11 << 10) | (16 * __clz(__rbit64(v7)))));
      v14 = *v12;
      v13 = v12[1];
      v15 = *(a1 + 40);
      sub_22E47D0F4();

      sub_22E47CE24();
      v16 = sub_22E47D124();
      v17 = -1 << *(a1 + 32);
      v18 = v16 & ~v17;
      if (((*(v9 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
      {
        break;
      }

      v7 &= v7 - 1;
      v19 = ~v17;
      while (1)
      {
        v20 = (*(a1 + 48) + 16 * v18);
        v21 = *v20 == v14 && v20[1] == v13;
        if (v21 || (sub_22E47D054() & 1) != 0)
        {
          break;
        }

        v18 = (v18 + 1) & v19;
        if (((*(v9 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
        {
          goto LABEL_23;
        }
      }
    }

LABEL_23:
  }

  return 0;
}

uint64_t sub_22E46D314(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a3 + 16);
  if (!v5)
  {
    goto LABEL_14;
  }

  v6 = 0;
  v7 = 0;
  v8 = a4 + 56;
  v9 = a3 + 32;
  while (1)
  {
    v11 = *(v9 + 4 * v7);
    v12 = *(a4 + 40);
    sub_22E47D0F4();
    sub_22E47D114();
    v13 = sub_22E47D124();
    v14 = -1 << *(a4 + 32);
    v15 = v13 & ~v14;
    v16 = v15 >> 6;
    v17 = 1 << v15;
    if (((1 << v15) & *(v8 + 8 * (v15 >> 6))) != 0)
    {
      v18 = *(a4 + 48);
      if (*(v18 + 4 * v15) != v11)
      {
        v19 = ~v14;
        do
        {
          v15 = (v15 + 1) & v19;
          v16 = v15 >> 6;
          v17 = 1 << v15;
          if (((1 << v15) & *(v8 + 8 * (v15 >> 6))) == 0)
          {
            goto LABEL_4;
          }
        }

        while (*(v18 + 4 * v15) != v11);
      }

      v10 = a1[v16];
      a1[v16] = v10 | v17;
      if ((v10 & v17) == 0 && __OFADD__(v6++, 1))
      {
        break;
      }
    }

LABEL_4:
    if (++v7 == v5)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_14:
  v6 = 0;
LABEL_15:

  return sub_22E46D460(a1, a2, v6, a4);
}

uint64_t sub_22E46D460(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x277D84FA0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA641D0, &qword_22E47DB88);
  result = sub_22E47CF74();
  v9 = result;
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
LABEL_17:
    v16 = *(*(v4 + 48) + 4 * (v13 | (v11 << 6)));
    v17 = *(v9 + 40);
    sub_22E47D0F4();
    sub_22E47D114();
    result = sub_22E47D124();
    v18 = -1 << *(v9 + 32);
    v19 = result & ~v18;
    v20 = v19 >> 6;
    if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
    {
      v22 = 0;
      v23 = (63 - v18) >> 6;
      while (++v20 != v23 || (v22 & 1) == 0)
      {
        v24 = v20 == v23;
        if (v20 == v23)
        {
          v20 = 0;
        }

        v22 |= v24;
        v25 = *(v12 + 8 * v20);
        if (v25 != -1)
        {
          v21 = __clz(__rbit64(~v25)) + (v20 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v21 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
    *(*(v9 + 48) + 4 * v21) = v16;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    if (!v5)
    {
      goto LABEL_6;
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
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_22E46D668(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t sub_22E46D734(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA64320, &qword_22E47EA48);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22E46D7A4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA64320, &qword_22E47EA48);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22E46D80C(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_22E47D054() & 1;
  }
}

uint64_t sub_22E46D864@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_22E46D314(a1, a2, **(v3 + 16), *(v3 + 24));
  if (!v4)
  {
    *a3 = result;
  }

  return result;
}

uint64_t sub_22E46D898(uint64_t a1, uint64_t a2, char a3)
{
  v3 = a2;
  v4 = a1;
  v73 = a1;
  v74 = a2;
  if (qword_27DA64140 != -1)
  {
LABEL_142:
    swift_once();
  }

  v5 = sub_22E47CBC4();
  __swift_project_value_buffer(v5, qword_27DA66868);
  sub_22E453EA4();
  v6 = sub_22E47CF04();
  v7 = 0;
  v8 = *(v6 + 16);
  v9 = v6 + 40;
  v10 = MEMORY[0x277D84F90];
  v11 = MEMORY[0x277D84F90];
LABEL_3:
  v12 = (v9 + 16 * v7);
  while (v8 != v7)
  {
    if (v7 >= *(v6 + 16))
    {
      __break(1u);
LABEL_138:
      __break(1u);
LABEL_139:
      __break(1u);
LABEL_140:
      __break(1u);
LABEL_141:
      __break(1u);
      goto LABEL_142;
    }

    ++v7;
    v14 = *(v12 - 1);
    v13 = *v12;
    v12 += 2;
    v15 = HIBYTE(v13) & 0xF;
    if ((v13 & 0x2000000000000000) == 0)
    {
      v15 = v14 & 0xFFFFFFFFFFFFLL;
    }

    if (v15)
    {

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v73 = v11;
      v70 = v9;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_22E476820(0, v11[2] + 1, 1);
        v11 = v73;
      }

      v18 = v11[2];
      v17 = v11[3];
      v19 = v18 + 1;
      if (v18 >= v17 >> 1)
      {
        sub_22E476820((v17 > 1), v18 + 1, 1);
        v19 = v18 + 1;
        v10 = MEMORY[0x277D84F90];
        v11 = v73;
      }

      v11[2] = v19;
      v20 = &v11[2 * v18];
      v20[4] = v14;
      v20[5] = v13;
      v9 = v70;
      goto LABEL_3;
    }
  }

  v21 = v11[2];
  if (v21)
  {
    v73 = v10;
    sub_22E476820(0, v21, 0);
    v22 = v73;
    v23 = v11 + 5;
    do
    {
      v24 = *(v23 - 1);
      v25 = *v23;
      v26 = sub_22E47CE04();
      v73 = v22;
      v29 = *(v22 + 16);
      v28 = *(v22 + 24);
      if (v29 >= v28 >> 1)
      {
        v31 = v26;
        v32 = v27;
        sub_22E476820((v28 > 1), v29 + 1, 1);
        v27 = v32;
        v26 = v31;
        v22 = v73;
      }

      *(v22 + 16) = v29 + 1;
      v30 = v22 + 16 * v29;
      *(v30 + 32) = v26;
      *(v30 + 40) = v27;
      v23 += 2;
      --v21;
    }

    while (v21);
  }

  else
  {

    v22 = MEMORY[0x277D84F90];
  }

  v71 = sub_22E477870(v33);

  if ((v3 & 0x2000000000000000) != 0)
  {
    v34 = HIBYTE(v3) & 0xF;
  }

  else
  {
    v34 = v4 & 0xFFFFFFFFFFFFLL;
  }

  if (v34)
  {
    v35 = 0;
    do
    {
      if ((v3 & 0x1000000000000000) != 0)
      {
        v37 = sub_22E47CF84();
      }

      else
      {
        if ((v3 & 0x2000000000000000) != 0)
        {
          v73 = v4;
          v74 = v3 & 0xFFFFFFFFFFFFFFLL;
          v39 = &v73 + v35;
        }

        else
        {
          v38 = (v3 & 0xFFFFFFFFFFFFFFFLL) + 32;
          if ((v4 & 0x1000000000000000) == 0)
          {
            v38 = sub_22E47CFA4();
          }

          v39 = (v38 + v35);
        }

        v37 = *v39;
        if ((*v39 & 0x80000000) == 0)
        {
          goto LABEL_35;
        }

        v40 = (__clz(v37 ^ 0xFF) - 24);
        if (v40 > 2)
        {
          if (v40 == 3)
          {
            v37 = ((v37 & 0xF) << 12) | ((v39[1] & 0x3F) << 6) | v39[2] & 0x3F;
            v36 = 3;
          }

          else
          {
            v37 = ((v37 & 0xF) << 18) | ((v39[1] & 0x3F) << 12) | ((v39[2] & 0x3F) << 6) | v39[3] & 0x3F;
            v36 = 4;
          }

          goto LABEL_27;
        }

        if (v40 == 1)
        {
LABEL_35:
          v36 = 1;
        }

        else
        {
          v37 = v39[1] & 0x3F | ((v37 & 0x1F) << 6);
          v36 = 2;
        }
      }

LABEL_27:
      v35 += v36;
      sub_22E460BE0(&v73, v37);
    }

    while (v35 < v34);
  }

  if (a3)
  {
    v3 = *(v22 + 16);
    if (v3)
    {
      v4 = 0;
      while (1)
      {
        v41 = (v22 + 32 + 16 * v4);
        v43 = *v41;
        v42 = v41[1];
        v44 = HIBYTE(v42) & 0xF;
        v45 = v43 & 0xFFFFFFFFFFFFLL;
        if ((v42 & 0x2000000000000000) != 0)
        {
          v46 = HIBYTE(v42) & 0xF;
        }

        else
        {
          v46 = v43 & 0xFFFFFFFFFFFFLL;
        }

        if (!v46)
        {
          goto LABEL_45;
        }

        if ((v42 & 0x1000000000000000) == 0)
        {
          break;
        }

        v49 = sub_22E4797F8(v43, v42, 16);

        if ((v49 & 0x100000000) == 0)
        {
LABEL_130:
          if (WORD1(v49) <= 0x10u && (v49 & 0xFFFFF800) != 0xD800)
          {
            sub_22E460BE0(&v73, v49);
          }
        }

LABEL_45:
        if (++v4 == v3)
        {
          return v71;
        }
      }

      if ((v42 & 0x2000000000000000) != 0)
      {
        v73 = v43;
        v74 = v42 & 0xFFFFFFFFFFFFFFLL;
        if (v43 == 43)
        {
          if (!v44)
          {
            goto LABEL_140;
          }

          if (--v44)
          {
            LODWORD(v49) = 0;
            v61 = &v73 + 1;
            while (1)
            {
              v62 = *v61;
              v63 = v62 - 48;
              if ((v62 - 48) >= 0xA)
              {
                if ((v62 - 65) < 6)
                {
                  v63 = v62 - 55;
                }

                else
                {
                  if ((v62 - 97) > 5)
                  {
                    goto LABEL_128;
                  }

                  v63 = v62 - 87;
                }
              }

              if (v49 >> 28)
              {
                break;
              }

              v49 = 16 * v49 + v63;
              ++v61;
              if (!--v44)
              {
                goto LABEL_129;
              }
            }
          }
        }

        else if (v43 == 45)
        {
          if (!v44)
          {
            goto LABEL_138;
          }

          if (--v44)
          {
            LODWORD(v49) = 0;
            v54 = &v73 + 1;
            while (1)
            {
              v55 = *v54;
              v56 = v55 - 48;
              if ((v55 - 48) >= 0xA)
              {
                if ((v55 - 65) < 6)
                {
                  v56 = v55 - 55;
                }

                else
                {
                  if ((v55 - 97) > 5)
                  {
                    goto LABEL_128;
                  }

                  v56 = v55 - 87;
                }
              }

              if (v49 >> 28)
              {
                break;
              }

              v57 = 16 * v49;
              v49 = 16 * v49 - v56;
              if (v57 < v56)
              {
                break;
              }

              ++v54;
              if (!--v44)
              {
                goto LABEL_129;
              }
            }
          }
        }

        else if (v44)
        {
          LODWORD(v49) = 0;
          v66 = &v73;
          while (1)
          {
            v67 = *v66;
            v68 = v67 - 48;
            if ((v67 - 48) >= 0xA)
            {
              if ((v67 - 65) < 6)
              {
                v68 = v67 - 55;
              }

              else
              {
                if ((v67 - 97) > 5)
                {
                  goto LABEL_128;
                }

                v68 = v67 - 87;
              }
            }

            if (v49 >> 28)
            {
              break;
            }

            v49 = 16 * v49 + v68;
            v66 = (v66 + 1);
            if (!--v44)
            {
              goto LABEL_129;
            }
          }
        }

        goto LABEL_128;
      }

      if ((v43 & 0x1000000000000000) != 0)
      {
        v47 = ((v42 & 0xFFFFFFFFFFFFFFFLL) + 32);
      }

      else
      {
        v47 = sub_22E47CFA4();
      }

      v48 = *v47;
      if (v48 == 43)
      {
        if (v45 < 1)
        {
          goto LABEL_139;
        }

        v44 = v45 - 1;
        if (v45 == 1)
        {
          goto LABEL_128;
        }

        if (v47)
        {
          LODWORD(v49) = 0;
          v58 = v47 + 1;
          while (1)
          {
            v59 = *v58;
            v60 = v59 - 48;
            if ((v59 - 48) >= 0xA)
            {
              if ((v59 - 65) < 6)
              {
                v60 = v59 - 55;
              }

              else
              {
                if ((v59 - 97) > 5)
                {
                  goto LABEL_128;
                }

                v60 = v59 - 87;
              }
            }

            if (v49 >> 28)
            {
              goto LABEL_128;
            }

            v49 = 16 * v49 + v60;
            ++v58;
            if (!--v44)
            {
              goto LABEL_129;
            }
          }
        }
      }

      else if (v48 == 45)
      {
        if (v45 < 1)
        {
          goto LABEL_141;
        }

        v44 = v45 - 1;
        if (v45 == 1)
        {
          goto LABEL_128;
        }

        if (v47)
        {
          LODWORD(v49) = 0;
          v50 = v47 + 1;
          while (1)
          {
            v51 = *v50;
            v52 = v51 - 48;
            if ((v51 - 48) >= 0xA)
            {
              if ((v51 - 65) < 6)
              {
                v52 = v51 - 55;
              }

              else
              {
                if ((v51 - 97) > 5)
                {
                  goto LABEL_128;
                }

                v52 = v51 - 87;
              }
            }

            if (v49 >> 28)
            {
              goto LABEL_128;
            }

            v53 = 16 * v49;
            v49 = 16 * v49 - v52;
            if (v53 < v52)
            {
              goto LABEL_128;
            }

            ++v50;
            if (!--v44)
            {
              goto LABEL_129;
            }
          }
        }
      }

      else
      {
        if (!v45)
        {
LABEL_128:
          v49 = 0;
          LOBYTE(v44) = 1;
LABEL_129:
          if ((v44 & 1) == 0)
          {
            goto LABEL_130;
          }

          goto LABEL_45;
        }

        if (v47)
        {
          LODWORD(v49) = 0;
          while (1)
          {
            v64 = *v47;
            v65 = v64 - 48;
            if ((v64 - 48) >= 0xA)
            {
              if ((v64 - 65) < 6)
              {
                v65 = v64 - 55;
              }

              else
              {
                if ((v64 - 97) > 5)
                {
                  goto LABEL_128;
                }

                v65 = v64 - 87;
              }
            }

            if (v49 >> 28)
            {
              goto LABEL_128;
            }

            v49 = 16 * v49 + v65;
            ++v47;
            if (!--v45)
            {
              LOBYTE(v44) = 0;
              goto LABEL_129;
            }
          }
        }
      }

      v49 = 0;
      LOBYTE(v44) = 0;
      goto LABEL_129;
    }
  }

  return v71;
}

uint64_t nofill_to_fill.getter()
{
  if (qword_280AC2DE8 != -1)
  {
    swift_once();
  }
}

uint64_t sub_22E46E058(void (*a1)(char *), uint64_t a2)
{
  v29 = a1;
  v28[1] = a2;
  v31[1] = *MEMORY[0x277D85DE8];
  v2 = sub_22E47CCE4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = v28 - v8;
  v10 = objc_opt_self();
  v11 = [v10 defaultManager];
  v12 = NSTemporaryDirectory();
  sub_22E47CDC4();

  sub_22E47CC84();

  v13 = sub_22E47CC94();
  v14 = *(v3 + 8);
  v14(v7, v2);
  v31[0] = 0;
  v15 = [v11 URLForDirectory:99 inDomain:1 appropriateForURL:v13 create:1 error:v31];

  v16 = v31[0];
  if (v15)
  {
    sub_22E47CCD4();
    v17 = v16;

    v18 = v30;
    v29(v9);
    if (!v18)
    {
      v19 = [v10 defaultManager];
      v20 = sub_22E47CC94();
      v31[0] = 0;
      v21 = [v19 removeItemAtURL:v20 error:v31];

      if (v21)
      {
        v22 = v31[0];
      }

      else
      {
        v25 = v31[0];
        v26 = sub_22E47CC74();

        swift_willThrow();
      }
    }

    result = (v14)(v9, v2);
  }

  else
  {
    v23 = v31[0];
    sub_22E47CC74();

    result = swift_willThrow();
  }

  v27 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_22E46E324()
{
  v1 = *(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t sub_22E46E380()
{
  v15[1] = *MEMORY[0x277D85DE8];
  v1 = sub_22E47CCE4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22E47CCB4();
  sub_22E47CD44();
  if (v0)
  {
    goto LABEL_5;
  }

  v6 = objc_opt_self();
  v7 = sub_22E47CC94();
  v8 = sub_22E47CC94();
  v15[0] = 0;
  v9 = [v6 decompressDataAtURL:v7 toURL:v8 error:v15];

  if ((v9 & 1) == 0)
  {
    v13 = v15[0];
    sub_22E47CC74();

    swift_willThrow();
LABEL_5:
    result = (*(v2 + 8))(v5, v1);
    goto LABEL_6;
  }

  v10 = *(v2 + 8);
  v11 = v15[0];
  result = v10(v5, v1);
LABEL_6:
  v14 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_22E46E574()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  return sub_22E46E380();
}

uint64_t SymbolMetadataStore.availability(forSystemName:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4[0] = 1701667182;
  v4[1] = 0xE400000000000000;
  sub_22E471DCC(v4, a1, a2, a3);
}

uint64_t sub_22E46E5E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v6 = *(a3 + 40);
  sub_22E47D0F4();
  sub_22E47CE24();
  v7 = sub_22E47D124();
  v8 = -1 << *(a3 + 32);
  v9 = v7 & ~v8;
  if (((*(a3 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
  {
    return 0;
  }

  v10 = ~v8;
  while (1)
  {
    v11 = (*(a3 + 48) + 16 * v9);
    v12 = *v11 == a1 && v11[1] == a2;
    if (v12 || (sub_22E47D054() & 1) != 0)
    {
      break;
    }

    v9 = (v9 + 1) & v10;
    if (((*(a3 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

BOOL sub_22E46E6E0(int a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v4 = *(a2 + 40);
  sub_22E47D0F4();
  sub_22E47D114();
  v5 = sub_22E47D124();
  v6 = -1 << *(a2 + 32);
  v7 = v5 & ~v6;
  if (((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
  {
    return 0;
  }

  v8 = ~v6;
  do
  {
    v9 = *(*(a2 + 48) + 4 * v7);
    result = v9 == a1;
    if (v9 == a1)
    {
      break;
    }

    v7 = (v7 + 1) & v8;
  }

  while (((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  return result;
}

uint64_t sub_22E46E7AC(uint64_t a1, uint64_t a2)
{
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA641B8, &qword_22E47EC40);
  v4 = *(*(v56 - 8) + 64);
  MEMORY[0x28223BE20](v56);
  v6 = &v44 - v5;
  v50 = sub_22E47CD64();
  v7 = *(v50 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v50);
  v47 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = &v44 - v11;
  v57 = type metadata accessor for SymbolKey(0);
  v13 = *(v57 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v57);
  v17 = &v44 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v15);
  v51 = (&v44 - v19);
  v20 = MEMORY[0x28223BE20](v18);
  v48 = &v44 - v21;
  MEMORY[0x28223BE20](v20);
  v23 = (&v44 - v22);
  if (!*(a2 + 16))
  {
    return 0;
  }

  v24 = *(a2 + 40);
  sub_22E47D0F4();
  sub_22E4774F4(a1, v23, type metadata accessor for SymbolKey);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v25 = a1;
    v26 = v50;
    (*(v7 + 32))(v12, v23, v50);
    MEMORY[0x2318E7080](1);
    sub_22E477668(&qword_27DA641C0, MEMORY[0x277CC95F0]);
    sub_22E47CD84();
    v27 = v7;
    v28 = v26;
    a1 = v25;
    (*(v7 + 8))(v12, v28);
  }

  else
  {
    v27 = v7;
    v29 = *v23;
    MEMORY[0x2318E7080](0);
    sub_22E47D114();
  }

  v30 = sub_22E47D124();
  v31 = a2 + 56;
  v32 = -1 << *(a2 + 32);
  v33 = v30 & ~v32;
  if (((*(a2 + 56 + ((v33 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v33) & 1) == 0)
  {
    return 0;
  }

  v52 = a2;
  v53 = ~v32;
  v54 = *(v13 + 72);
  v55 = a1;
  v49 = (v27 + 8);
  v46 = (v27 + 32);
  v34 = v48;
  v45 = a2 + 56;
  while (1)
  {
    sub_22E4774F4(*(a2 + 48) + v54 * v33, v34, type metadata accessor for SymbolKey);
    v35 = *(v56 + 48);
    sub_22E4774F4(v34, v6, type metadata accessor for SymbolKey);
    sub_22E4774F4(v55, &v6[v35], type metadata accessor for SymbolKey);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      break;
    }

    sub_22E4774F4(v6, v17, type metadata accessor for SymbolKey);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v36 = v17;
      v37 = v47;
      v38 = v50;
      (*v46)(v47, &v6[v35], v50);
      v39 = sub_22E47CD54();
      v40 = *v49;
      v41 = v37;
      v17 = v36;
      v34 = v48;
      (*v49)(v41, v38);
      sub_22E47755C(v34, type metadata accessor for SymbolKey);
      v42 = v38;
      v31 = v45;
      v40(v17, v42);
      if (v39)
      {
        goto LABEL_18;
      }

      goto LABEL_16;
    }

    sub_22E47755C(v34, type metadata accessor for SymbolKey);
    (*v49)(v17, v50);
LABEL_8:
    sub_22E4545D0(v6, &qword_27DA641B8, &qword_22E47EC40);
LABEL_9:
    a2 = v52;
    v33 = (v33 + 1) & v53;
    if (((*(v31 + ((v33 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v33) & 1) == 0)
    {
      return 0;
    }
  }

  sub_22E47755C(v34, type metadata accessor for SymbolKey);
  sub_22E4774F4(v6, v51, type metadata accessor for SymbolKey);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    goto LABEL_8;
  }

  if (*v51 != *&v6[v35])
  {
LABEL_16:
    sub_22E47755C(v6, type metadata accessor for SymbolKey);
    goto LABEL_9;
  }

LABEL_18:
  sub_22E47755C(v6, type metadata accessor for SymbolKey);
  return 1;
}

uint64_t sub_22E46ED98(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    for (i = (a3 + 40); ; i += 2)
    {
      v8 = *i;
      v13[0] = *(i - 1);
      v13[1] = v8;

      v9 = a1(v13);

      if (v3)
      {
        break;
      }

      v11 = v6-- != 0;
      if ((v9 & v11 & 1) == 0)
      {
        return v9 & 1;
      }
    }

    LOBYTE(v9) = 0;
  }

  else
  {
    LOBYTE(v9) = 1;
  }

  return v9 & 1;
}

uint64_t sub_22E46EE48(uint64_t (*a1)(uint64_t *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    for (i = (a3 + 56); ; i += 4)
    {
      v8 = *i;
      v13 = *(i - 3);
      v14 = *(i - 1);
      v15 = v8;

      v9 = a1(&v13);

      if (v3)
      {
        break;
      }

      v11 = v6-- != 0;
      if ((v9 & v11 & 1) == 0)
      {
        return v9 & 1;
      }
    }

    LOBYTE(v9) = 0;
  }

  else
  {
    LOBYTE(v9) = 1;
  }

  return v9 & 1;
}

uint64_t sub_22E46EF1C(uint64_t (*a1)(__int128 *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = (a3 + 32);
    v7 = v4 - 1;
    while (1)
    {
      v12 = *v6;

      v8 = a1(&v12);

      if (v3)
      {
        break;
      }

      v10 = v7-- != 0;
      ++v6;
      if ((v8 & v10 & 1) == 0)
      {
        return v8 & 1;
      }
    }

    LOBYTE(v8) = 0;
  }

  else
  {
    LOBYTE(v8) = 1;
  }

  return v8 & 1;
}

uint64_t SymbolKey.hash(into:)()
{
  v1 = sub_22E47CD64();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for SymbolKey(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = (&v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_22E4774F4(v0, v9, type metadata accessor for SymbolKey);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v2 + 32))(v5, v9, v1);
    MEMORY[0x2318E7080](1);
    sub_22E477668(&qword_27DA641C0, MEMORY[0x277CC95F0]);
    sub_22E47CD84();
    return (*(v2 + 8))(v5, v1);
  }

  else
  {
    v11 = *v9;
    MEMORY[0x2318E7080](0);
    return sub_22E47D114();
  }
}

uint64_t SymbolKey.hashValue.getter()
{
  v1 = v0;
  v2 = sub_22E47CD64();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for SymbolKey(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = (&v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_22E47D0F4();
  sub_22E4774F4(v1, v10, type metadata accessor for SymbolKey);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v3 + 32))(v6, v10, v2);
    MEMORY[0x2318E7080](1);
    sub_22E477668(&qword_27DA641C0, MEMORY[0x277CC95F0]);
    sub_22E47CD84();
    (*(v3 + 8))(v6, v2);
  }

  else
  {
    v11 = *v10;
    MEMORY[0x2318E7080](0);
    sub_22E47D114();
  }

  return sub_22E47D124();
}

uint64_t sub_22E46F39C(uint64_t a1, uint64_t a2)
{
  v4 = sub_22E47CD64();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*(a2 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v12 = (&v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_22E4774F4(v2, v12, type metadata accessor for SymbolKey);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v5 + 32))(v9, v12, v4);
    MEMORY[0x2318E7080](1);
    sub_22E477668(&qword_27DA641C0, MEMORY[0x277CC95F0]);
    sub_22E47CD84();
    return (*(v5 + 8))(v9, v4);
  }

  else
  {
    v14 = *v12;
    MEMORY[0x2318E7080](0);
    return sub_22E47D114();
  }
}

uint64_t sub_22E46F56C(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v5 = sub_22E47CD64();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*(a2 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v13 = (&v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_22E47D0F4();
  sub_22E4774F4(v4, v13, type metadata accessor for SymbolKey);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v6 + 32))(v10, v13, v5);
    MEMORY[0x2318E7080](1);
    sub_22E477668(&qword_27DA641C0, MEMORY[0x277CC95F0]);
    sub_22E47CD84();
    (*(v6 + 8))(v10, v5);
  }

  else
  {
    v14 = *v13;
    MEMORY[0x2318E7080](0);
    sub_22E47D114();
  }

  return sub_22E47D124();
}

double SymbolMetadataStore.init()@<D0>(uint64_t a1@<X8>)
{
  v1 = MEMORY[0x277D84F90];
  v2 = MEMORY[0x277D84F98];
  *a1 = MEMORY[0x277D84F90];
  *(a1 + 8) = v2;
  *(a1 + 16) = v2;
  *(a1 + 24) = v2;
  *(a1 + 32) = v2;
  *(a1 + 40) = v2;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = v1;
  *(a1 + 72) = v2;
  *(a1 + 80) = v2;
  *(a1 + 88) = v2;
  *(a1 + 96) = v2;
  *(a1 + 104) = v2;
  *(a1 + 112) = v1;
  *(a1 + 120) = v2;
  result = 0.0;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  return result;
}

uint64_t static SymbolMetadataStore.system.getter@<X0>(__int128 *a1@<X8>)
{
  if (qword_27DA63F78 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = xmmword_27DA63FD0;
  v13[6] = xmmword_27DA63FE0;
  v13[7] = xmmword_27DA63FF0;
  v3 = xmmword_27DA63FF0;
  v4 = xmmword_27DA64000;
  v13[8] = xmmword_27DA64000;
  v13[9] = xmmword_27DA64010;
  v5 = xmmword_27DA63FA0;
  v6 = xmmword_27DA63F90;
  v13[2] = xmmword_27DA63FA0;
  v13[3] = xmmword_27DA63FB0;
  v7 = xmmword_27DA63FB0;
  v8 = xmmword_27DA63FC0;
  v13[4] = xmmword_27DA63FC0;
  v13[5] = xmmword_27DA63FD0;
  v9 = xmmword_27DA63F80;
  v13[0] = xmmword_27DA63F80;
  v13[1] = xmmword_27DA63F90;
  a1[6] = xmmword_27DA63FE0;
  a1[7] = v3;
  v10 = xmmword_27DA64010;
  a1[8] = v4;
  a1[9] = v10;
  a1[2] = v5;
  a1[3] = v7;
  a1[4] = v8;
  a1[5] = v2;
  *a1 = v9;
  a1[1] = v6;
  return sub_22E466FB4(v13, v12);
}

uint64_t static SymbolMetadataStore.system.setter(__int128 *a1)
{
  if (qword_27DA63F78 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v8[7] = xmmword_27DA63FF0;
  v8[8] = xmmword_27DA64000;
  v8[9] = xmmword_27DA64010;
  v8[2] = xmmword_27DA63FA0;
  v8[3] = xmmword_27DA63FB0;
  v8[4] = xmmword_27DA63FC0;
  v8[5] = xmmword_27DA63FD0;
  v8[6] = xmmword_27DA63FE0;
  v8[0] = xmmword_27DA63F80;
  v8[1] = xmmword_27DA63F90;
  v2 = a1[7];
  xmmword_27DA63FE0 = a1[6];
  xmmword_27DA63FF0 = v2;
  v3 = a1[9];
  xmmword_27DA64000 = a1[8];
  xmmword_27DA64010 = v3;
  v4 = a1[3];
  xmmword_27DA63FA0 = a1[2];
  xmmword_27DA63FB0 = v4;
  v5 = a1[5];
  xmmword_27DA63FC0 = a1[4];
  xmmword_27DA63FD0 = v5;
  v6 = a1[1];
  xmmword_27DA63F80 = *a1;
  xmmword_27DA63F90 = v6;
  return sub_22E467010(v8);
}

uint64_t (*static SymbolMetadataStore.system.modify())()
{
  if (qword_27DA63F78 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_22E46F9F0@<X0>(__int128 *a1@<X8>)
{
  if (qword_27DA63F78 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = xmmword_27DA63FD0;
  v13[6] = xmmword_27DA63FE0;
  v13[7] = xmmword_27DA63FF0;
  v3 = xmmword_27DA63FF0;
  v4 = xmmword_27DA64000;
  v13[8] = xmmword_27DA64000;
  v13[9] = xmmword_27DA64010;
  v5 = xmmword_27DA63FA0;
  v6 = xmmword_27DA63F90;
  v13[2] = xmmword_27DA63FA0;
  v13[3] = xmmword_27DA63FB0;
  v7 = xmmword_27DA63FB0;
  v8 = xmmword_27DA63FC0;
  v13[4] = xmmword_27DA63FC0;
  v13[5] = xmmword_27DA63FD0;
  v9 = xmmword_27DA63F80;
  v13[0] = xmmword_27DA63F80;
  v13[1] = xmmword_27DA63F90;
  a1[6] = xmmword_27DA63FE0;
  a1[7] = v3;
  v10 = xmmword_27DA64010;
  a1[8] = v4;
  a1[9] = v10;
  a1[2] = v5;
  a1[3] = v7;
  a1[4] = v8;
  a1[5] = v2;
  *a1 = v9;
  a1[1] = v6;
  return sub_22E466FB4(v13, v12);
}

uint64_t sub_22E46FAD0(__int128 *a1)
{
  v1 = a1[6];
  v2 = a1[8];
  v3 = a1[9];
  v15 = a1[7];
  v16 = v2;
  v17 = v3;
  v4 = a1[3];
  v10 = a1[2];
  v11 = v4;
  v5 = a1[5];
  v12 = a1[4];
  v13 = v5;
  v14 = v1;
  v6 = a1[1];
  v8 = *a1;
  v9 = v6;
  sub_22E466FB4(&v8, v18);
  if (qword_27DA63F78 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v18[6] = xmmword_27DA63FE0;
  v18[7] = xmmword_27DA63FF0;
  v18[8] = xmmword_27DA64000;
  v18[9] = xmmword_27DA64010;
  v18[2] = xmmword_27DA63FA0;
  v18[3] = xmmword_27DA63FB0;
  v18[4] = xmmword_27DA63FC0;
  v18[5] = xmmword_27DA63FD0;
  v18[0] = xmmword_27DA63F80;
  v18[1] = xmmword_27DA63F90;
  xmmword_27DA63FE0 = v14;
  xmmword_27DA63FF0 = v15;
  xmmword_27DA64000 = v16;
  xmmword_27DA64010 = v17;
  xmmword_27DA63FA0 = v10;
  xmmword_27DA63FB0 = v11;
  xmmword_27DA63FC0 = v12;
  xmmword_27DA63FD0 = v13;
  xmmword_27DA63F80 = v8;
  xmmword_27DA63F90 = v9;
  return sub_22E467010(v18);
}

uint64_t sub_22E46FBE0()
{
  v1 = type metadata accessor for CustomSymbol();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v5 = &v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = type metadata accessor for SymbolKey(0);
  v6 = *(v49 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v49);
  v10 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v8);
  v13 = (&v47 - v12);
  v14 = *v0;
  v15 = v0[14];
  v16 = *(*v0 + 16);
  v17 = MEMORY[0x277D84F90];
  if (v16)
  {
    v47 = v0[14];
    v48 = v2;
    v52 = MEMORY[0x277D84F90];
    sub_22E476860(0, v16, 0);
    v17 = v52;
    v18 = (v14 + 32);
    do
    {
      v19 = *v18++;
      *v13 = v19;
      swift_storeEnumTagMultiPayload();
      v52 = v17;
      v21 = *(v17 + 16);
      v20 = *(v17 + 24);
      if (v21 >= v20 >> 1)
      {
        sub_22E476860(v20 > 1, v21 + 1, 1);
        v17 = v52;
      }

      *(v17 + 16) = v21 + 1;
      result = sub_22E47748C(v13, v17 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v21, type metadata accessor for SymbolKey);
      --v16;
    }

    while (v16);
    v15 = v47;
    v2 = v48;
  }

  v22 = *(v15 + 16);
  v23 = MEMORY[0x277D84F90];
  if (v22)
  {
    v52 = MEMORY[0x277D84F90];
    sub_22E476860(0, v22, 0);
    v24 = v52;
    v25 = v15 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
    v26 = *(v2 + 72);
    do
    {
      sub_22E4774F4(v25, v5, type metadata accessor for CustomSymbol);
      v27 = sub_22E47CD64();
      (*(*(v27 - 8) + 16))(v10, v5, v27);
      sub_22E47755C(v5, type metadata accessor for CustomSymbol);
      swift_storeEnumTagMultiPayload();
      v52 = v24;
      v29 = *(v24 + 16);
      v28 = *(v24 + 24);
      if (v29 >= v28 >> 1)
      {
        sub_22E476860(v28 > 1, v29 + 1, 1);
        v24 = v52;
      }

      *(v24 + 16) = v29 + 1;
      result = sub_22E47748C(v10, v24 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v29, type metadata accessor for SymbolKey);
      v25 += v26;
      --v22;
    }

    while (v22);
    v23 = MEMORY[0x277D84F90];
  }

  else
  {
    v24 = MEMORY[0x277D84F90];
  }

  v50 = v17;
  v51 = v24;
  v30 = *(v17 + 16);
  v31 = *(v23 + 16);
  v32 = v31 + v30;
  if (__OFADD__(v31, v30))
  {
    goto LABEL_42;
  }

  v33 = MEMORY[0x277D84F90];
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v32 <= v33[3] >> 1)
  {
    if (*(v17 + 16))
    {
LABEL_18:
      if ((v33[3] >> 1) - v33[2] < v30)
      {
LABEL_44:
        __break(1u);
        goto LABEL_45;
      }

      v34 = (*(v6 + 80) + 32) & ~*(v6 + 80);
      v35 = *(v6 + 72);
      swift_arrayInitWithCopy();

      v36 = v33[2];
      if (v30)
      {
        v37 = __OFADD__(v36, v30);
        v36 += v30;
        if (v37)
        {
          goto LABEL_45;
        }

        v33[2] = v36;
      }

      goto LABEL_28;
    }
  }

  else
  {
    if (v31 <= v32)
    {
      v38 = v31 + v30;
    }

    else
    {
      v38 = v31;
    }

    result = sub_22E478C50(result, v38, 1, MEMORY[0x277D84F90]);
    v33 = result;
    if (*(v17 + 16))
    {
      goto LABEL_18;
    }
  }

  if (v30)
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  v36 = v33[2];
LABEL_28:
  v39 = v51;
  v40 = *(v51 + 16);
  v41 = v36 + v40;
  if (__OFADD__(v36, v40))
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v41 <= v33[3] >> 1)
  {
    if (*(v39 + 16))
    {
      goto LABEL_32;
    }

    goto LABEL_40;
  }

  if (v36 <= v41)
  {
    v46 = v36 + v40;
  }

  else
  {
    v46 = v36;
  }

  result = sub_22E478C50(result, v46, 1, v33);
  v33 = result;
  if (!*(v39 + 16))
  {
LABEL_40:

    if (!v40)
    {
      goto LABEL_41;
    }

    goto LABEL_43;
  }

LABEL_32:
  if ((v33[3] >> 1) - v33[2] < v40)
  {
    goto LABEL_44;
  }

  v42 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v43 = *(v6 + 72);
  swift_arrayInitWithCopy();

  if (!v40)
  {
LABEL_41:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA64368, &qword_22E47EC70);
    swift_arrayDestroy();
    return v33;
  }

  v44 = v33[2];
  v37 = __OFADD__(v44, v40);
  v45 = v44 + v40;
  if (!v37)
  {
    v33[2] = v45;
    goto LABEL_41;
  }

LABEL_45:
  __break(1u);
  return result;
}

uint64_t sub_22E470120(void *a1)
{
  v3 = type metadata accessor for SymbolKey(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = (&v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *(v1 + 24);
  if (!*(v8 + 16))
  {
    return MEMORY[0x277D84FA0];
  }

  v38 = *(v1 + 16);
  v9 = sub_22E467B98(*a1, a1[1]);
  if ((v10 & 1) == 0)
  {
    return MEMORY[0x277D84FA0];
  }

  v11 = *(*(v8 + 56) + 8 * v9);
  v12 = v11 + 56;
  v13 = 1 << *(v11 + 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & *(v11 + 56);
  v16 = (v13 + 63) >> 6;
  v37 = v11;
  result = swift_bridgeObjectRetain_n();
  v18 = 0;
  v19 = MEMORY[0x277D84F90];
  while (v15)
  {
    v20 = v15;
LABEL_12:
    v15 = (v20 - 1) & v20;
    if (*(v38 + 16))
    {
      v22 = (*(v37 + 48) + ((v18 << 10) | (16 * __clz(__rbit64(v20)))));
      v23 = *v22;
      v24 = v22[1];

      v25 = sub_22E450B0C(v23, v24);
      if (v26)
      {
        v27 = *(*(v38 + 56) + 104 * v25);

        result = swift_isUniquelyReferenced_nonNull_native();
        HIDWORD(v36) = v27;
        if ((result & 1) == 0)
        {
          result = sub_22E478A48(0, *(v19 + 16) + 1, 1, v19);
          v19 = result;
        }

        v29 = *(v19 + 16);
        v28 = *(v19 + 24);
        if (v29 >= v28 >> 1)
        {
          result = sub_22E478A48((v28 > 1), v29 + 1, 1, v19);
          v19 = result;
        }

        *(v19 + 16) = v29 + 1;
        *(v19 + 4 * v29 + 32) = HIDWORD(v36);
      }

      else
      {
      }
    }
  }

  while (1)
  {
    v21 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      __break(1u);
      return result;
    }

    if (v21 >= v16)
    {
      break;
    }

    v20 = *(v12 + 8 * v21);
    ++v18;
    if (v20)
    {
      v18 = v21;
      goto LABEL_12;
    }
  }

  v30 = *(v19 + 16);
  if (v30)
  {
    v39 = MEMORY[0x277D84F90];
    sub_22E476860(0, v30, 0);
    v31 = 32;
    v32 = v39;
    do
    {
      *v7 = *(v19 + v31);
      swift_storeEnumTagMultiPayload();
      v39 = v32;
      v34 = *(v32 + 16);
      v33 = *(v32 + 24);
      if (v34 >= v33 >> 1)
      {
        sub_22E476860(v33 > 1, v34 + 1, 1);
        v32 = v39;
      }

      *(v32 + 16) = v34 + 1;
      sub_22E47748C(v7, v32 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v34, type metadata accessor for SymbolKey);
      v31 += 4;
      --v30;
    }

    while (v30);
  }

  else
  {

    v32 = MEMORY[0x277D84F90];
  }

  v35 = sub_22E477908(v32);

  return v35;
}

uint64_t sub_22E470488(uint64_t a1)
{
  v2 = v1[6];
  if (!v2)
  {
    v6 = v1;
    v7 = v1[1];
    if (*(v7 + 16))
    {
      v8 = v6[5];
      v9 = sub_22E45C22C(a1);
      if (v10)
      {
        if (*(v8 + 16))
        {
          v11 = (*(v7 + 56) + 104 * v9);
          v12 = v11[6];
          v13 = v11[7];
          v14 = v11[12];
          v15 = v11[10];
          v16 = v11[5];
          v18 = v11[1];
          v17 = v11[2];

          v19 = sub_22E450B0C(v18, v17);
          if (v20)
          {
            v5 = *(*(v8 + 56) + 8 * v19);

            return v5;
          }
        }
      }
    }

    return 0;
  }

  v3 = v1[7];

  v5 = v2(a1);
  sub_22E453664(v2);
  return v5;
}

uint64_t sub_22E470604(unsigned int *a1, unsigned int *a2, _OWORD *a3)
{
  v3 = a3;
  v4 = a3[7];
  v5 = a3[5];
  v66 = a3[6];
  v67 = v4;
  v6 = a3[7];
  v7 = a3[9];
  v68 = a3[8];
  v69 = v7;
  v8 = a3[3];
  v9 = a3[1];
  v62 = a3[2];
  v63 = v8;
  v10 = a3[3];
  v11 = a3[5];
  v64 = a3[4];
  v65 = v11;
  v12 = a3[1];
  v61[0] = *a3;
  v61[1] = v12;
  v57 = v66;
  v58 = v6;
  v13 = a3[9];
  v59 = v68;
  v60 = v13;
  v53 = v62;
  v54 = v10;
  v55 = v64;
  v56 = v5;
  v14 = *a1;
  v15 = *a2;
  v51 = v61[0];
  v52 = v9;
  sub_22E466FB4(v61, v70);
  v16 = sub_22E470488(v14);
  v18 = v17;
  v70[6] = v57;
  v70[7] = v58;
  v70[8] = v59;
  v70[9] = v60;
  v70[2] = v53;
  v70[3] = v54;
  v70[4] = v55;
  v70[5] = v56;
  v70[0] = v51;
  v70[1] = v52;
  sub_22E467010(v70);
  v19 = v3[7];
  v20 = v3[5];
  v47 = v3[6];
  v48 = v19;
  v21 = v3[7];
  v22 = v3[9];
  v49 = v3[8];
  v50 = v22;
  v23 = v3[3];
  v24 = v3[1];
  v43 = v3[2];
  v44 = v23;
  v25 = v3[3];
  v26 = v3[5];
  v45 = v3[4];
  v46 = v26;
  v27 = v3[1];
  v42[0] = *v3;
  v42[1] = v27;
  v38 = v47;
  v39 = v21;
  v40 = v49;
  v41 = v3[9];
  v34 = v43;
  v35 = v25;
  v36 = v45;
  v37 = v20;
  v32 = v42[0];
  v33 = v24;
  sub_22E466FB4(v42, &v51);
  v28 = sub_22E470488(v15);
  LOBYTE(v3) = v29;
  v57 = v38;
  v58 = v39;
  v59 = v40;
  v60 = v41;
  v53 = v34;
  v54 = v35;
  v55 = v36;
  v56 = v37;
  v51 = v32;
  v52 = v33;
  sub_22E467010(&v51);
  v30 = 0x7FFFFFFFFFFFFFFFLL;
  if ((v3 & 1) == 0)
  {
    v30 = v28;
  }

  return (v16 < v30) & ~v18;
}

uint64_t SymbolMetadataStore.categories.getter()
{
  v1 = v0[8];
  v2 = *(v1 + 16);
  v3 = MEMORY[0x277D84F90];
  if (v2)
  {
    v21 = v0[17];
    v22 = v0[18];
    v23 = v0[19];
    v24 = v0[16];
    v27 = MEMORY[0x277D84F90];
    sub_22E4768A4(0, v2, 0);
    v3 = v27;
    for (i = (v1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v7 = *i;
      v25 = *(i - 1);
      swift_bridgeObjectRetain_n();

      sub_22E47CF94();

      v26 = v5;
      MEMORY[0x2318E6DB0](v5, v6);
      if (!v24)
      {
        goto LABEL_7;
      }

      v8 = v24;
      v10 = sub_22E47CC34();
      v11 = v9;
      if (v10 == 0xD000000000000013 && v9 == 0x800000022E4D2BA0)
      {
        break;
      }

      v14 = sub_22E47D054();

      if ((v14 & 1) == 0)
      {
        goto LABEL_19;
      }

      if (!v23)
      {
        goto LABEL_16;
      }

LABEL_8:
      v12 = v23;
      v10 = sub_22E47CC34();
      v11 = v13;
      if (v10 == 0xD000000000000013 && v13 == 0x800000022E4D2BA0)
      {

LABEL_16:
        if (qword_27DA640E8 != -1)
        {
          swift_once();
        }

        v10 = sub_22E47CC34();
        v11 = v16;
        goto LABEL_19;
      }

      v15 = sub_22E47D054();

      if (v15)
      {

        goto LABEL_16;
      }

LABEL_19:

      v18 = *(v27 + 16);
      v17 = *(v27 + 24);
      if (v18 >= v17 >> 1)
      {
        sub_22E4768A4((v17 > 1), v18 + 1, 1);
      }

      *(v27 + 16) = v18 + 1;
      v19 = (v27 + 48 * v18);
      v19[4] = v26;
      v19[5] = v6;
      v19[6] = v25;
      v19[7] = v7;
      v19[8] = v10;
      v19[9] = v11;
      if (!--v2)
      {
        return v3;
      }
    }

LABEL_7:
    if (!v23)
    {
      goto LABEL_16;
    }

    goto LABEL_8;
  }

  return v3;
}

uint64_t sub_22E470AC4(uint64_t a1, uint64_t a2)
{
  v5 = v2[16];
  v6 = v2[19];
  if (!v5)
  {
LABEL_8:
    if (!v6)
    {
      goto LABEL_19;
    }

LABEL_11:
    v16 = v6;
    v17 = sub_22E47CC34();
    if (v17 == a1 && v18 == a2)
    {

      goto LABEL_19;
    }

    v14 = v17;
    v20 = sub_22E47D054();

    if (v20)
    {

      goto LABEL_19;
    }

    return v14;
  }

  v9 = v2 + 17;
  v7 = v2[17];
  v8 = v9[1];
  v10 = v5;
  v11 = sub_22E47CC34();
  if (v11 != a1 || v12 != a2)
  {
    v14 = v11;
    v15 = sub_22E47D054();

    if ((v15 & 1) == 0)
    {
      return v14;
    }

    goto LABEL_8;
  }

  if (v6)
  {
    goto LABEL_11;
  }

LABEL_19:
  if (qword_27DA640E8 != -1)
  {
    swift_once();
  }

  return sub_22E47CC34();
}

uint64_t SymbolMetadataStore.sortPrivateScalars(_:)(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 6);
  v6 = *(v2 + 7);

  sub_22E453664(v5);
  *(v2 + 6) = a1;
  *(v2 + 7) = a2;
  v10 = *v2;
  swift_bridgeObjectRetain_n();
  sub_22E46328C(&v10, v2);

  v7 = v10;
  v8 = *v2;

  *v2 = v7;
  return result;
}

uint64_t SymbolMetadataStore.symbolMetadata(forSystemName:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = type metadata accessor for SymbolKey(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA64328, &qword_22E47EAB0);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v20 - v16;
  SymbolMetadataStore.symbolKey(forSystemName:)(a1, a2, (&v20 - v16));
  sub_22E4773AC(v17, v15);
  if ((*(v7 + 48))(v15, 1, v6) == 1)
  {
    sub_22E4545D0(v17, &qword_27DA64328, &qword_22E47EAB0);
    v18 = type metadata accessor for SymbolMetadata(0);
    return (*(*(v18 - 8) + 56))(a3, 1, 1, v18);
  }

  else
  {
    sub_22E47748C(v15, v10, type metadata accessor for SymbolKey);
    SymbolMetadataStore.symbolMetadata(for:)(v10, a3);
    sub_22E47755C(v10, type metadata accessor for SymbolKey);
    return sub_22E4545D0(v17, &qword_27DA64328, &qword_22E47EAB0);
  }
}

uint64_t SymbolMetadataStore.symbolKey(forSystemName:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _DWORD *a3@<X8>)
{
  v4 = v3;
  v8 = *(v3 + 16);
  v9 = *(v3 + 72);
  if (*(v8 + 16))
  {
    v10 = *(v3 + 16);
    v11 = sub_22E450B0C(a1, a2);
    if (v12)
    {
      *a3 = *(*(v8 + 56) + 104 * v11);
      v13 = type metadata accessor for SymbolKey(0);
      swift_storeEnumTagMultiPayload();
      v14 = *(*(v13 - 8) + 56);
      v15 = a3;
      v16 = 0;
      v17 = v13;
LABEL_10:

      return v14(v15, v16, 1, v17);
    }
  }

  if (!*(v9 + 16) || (v18 = sub_22E450B0C(a1, a2), (v19 & 1) == 0))
  {
    v24 = type metadata accessor for SymbolKey(0);
    v14 = *(*(v24 - 8) + 56);
    v17 = v24;
    v15 = a3;
    v16 = 1;
    goto LABEL_10;
  }

  v20 = (*(v9 + 56) + 16 * v18);
  v21 = *v20;
  v22 = v20[1];
  v25 = *v4;
  v26 = *(v4 + 24);
  v27 = *(v4 + 40);
  v28 = *(v4 + 56);
  v31 = v4[7];
  v32 = v4[8];
  v33 = v4[9];
  v29 = v4[5];
  v30 = v4[6];

  SymbolMetadataStore.symbolKey(forSystemName:)(v21, v22);
}

uint64_t SymbolMetadataStore.symbolMetadata(for:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v56 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA64330, &qword_22E47EAB8);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v55 = &v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = &v55 - v8;
  v10 = sub_22E47CD64();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v55 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for SymbolKey(0);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v55 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = (&v55 - v20);
  v22 = v2[7];
  v67 = v2[6];
  v68 = v22;
  v23 = v2[9];
  v69 = v2[8];
  v70 = v23;
  v24 = v2[3];
  v63 = v2[2];
  v64 = v24;
  v25 = v2[5];
  v65 = v2[4];
  v66 = v25;
  v26 = v2[1];
  v61 = *v2;
  v62 = v26;
  sub_22E4774F4(a1, &v55 - v20, type metadata accessor for SymbolKey);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_22E47755C(v21, type metadata accessor for SymbolKey);
  }

  else
  {
    v27 = *(&v61 + 1);
    if (*(*(&v61 + 1) + 16))
    {
      v28 = sub_22E45C22C(*v21);
      if (v29)
      {
        v30 = *(v27 + 56) + 104 * v28;
        v32 = *(v30 + 16);
        v31 = *(v30 + 32);
        v58[0] = *v30;
        v58[1] = v32;
        v58[2] = v31;
        v33 = *(v30 + 48);
        v34 = *(v30 + 64);
        v35 = *(v30 + 80);
        v59 = *(v30 + 96);
        v58[4] = v34;
        v58[5] = v35;
        v58[3] = v33;
        v36 = *(v30 + 16);
        v60[0] = *v30;
        v60[1] = v36;
        v37 = *(v30 + 32);
        v38 = *(v30 + 48);
        v39 = *(v30 + 64);
        v40 = *(v30 + 80);
        *&v60[6] = *(v30 + 96);
        v60[4] = v39;
        v60[5] = v40;
        v60[2] = v37;
        v60[3] = v38;
        *(&v60[7] + 8) = v62;
        *(&v60[6] + 8) = v61;
        *(&v60[11] + 8) = v66;
        *(&v60[10] + 8) = v65;
        *(&v60[9] + 8) = v64;
        *(&v60[8] + 8) = v63;
        *(&v60[15] + 8) = v70;
        *(&v60[14] + 8) = v69;
        *(&v60[13] + 8) = v68;
        *(&v60[12] + 8) = v67;
        v41 = v56;
        memcpy(v56, v60, 0x108uLL);
        type metadata accessor for SymbolMetadata.Backing(0);
        swift_storeEnumTagMultiPayload();
        v42 = type metadata accessor for SymbolMetadata(0);
        (*(*(v42 - 8) + 56))(v41, 0, 1, v42);
        sub_22E4658E4(v58, v57);
        return sub_22E466FB4(&v61, v57);
      }
    }
  }

  sub_22E4774F4(a1, v19, type metadata accessor for SymbolKey);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_22E47755C(v19, type metadata accessor for SymbolKey);
LABEL_13:
    v52 = type metadata accessor for SymbolMetadata(0);
    return (*(*(v52 - 8) + 56))(v56, 1, 1, v52);
  }

  (*(v11 + 32))(v14, v19, v10);
  v44 = *(&v68 + 1);
  if (*(*(&v68 + 1) + 16) && (v45 = sub_22E45C3EC(v14), (v46 & 1) != 0))
  {
    v47 = v45;
    v48 = *(v44 + 56);
    v49 = type metadata accessor for CustomSymbol();
    v50 = *(v49 - 8);
    sub_22E4774F4(v48 + *(v50 + 72) * v47, v9, type metadata accessor for CustomSymbol);
    (*(v11 + 8))(v14, v10);
    (*(v50 + 56))(v9, 0, 1, v49);
  }

  else
  {
    (*(v11 + 8))(v14, v10);
    v49 = type metadata accessor for CustomSymbol();
    (*(*(v49 - 8) + 56))(v9, 1, 1, v49);
  }

  v51 = v55;
  sub_22E47741C(v9, v55);
  type metadata accessor for CustomSymbol();
  if ((*(*(v49 - 8) + 48))(v51, 1, v49) == 1)
  {
    goto LABEL_13;
  }

  v53 = v56;
  sub_22E47748C(v51, v56, type metadata accessor for CustomSymbol);
  type metadata accessor for SymbolMetadata.Backing(0);
  swift_storeEnumTagMultiPayload();
  v54 = type metadata accessor for SymbolMetadata(0);
  return (*(*(v54 - 8) + 56))(v53, 0, 1, v54);
}

Swift::String_optional __swiftcall SymbolMetadataStore.modernSystemName(forAlias:)(Swift::String forAlias)
{
  object = forAlias._object;
  countAndFlagsBits = forAlias._countAndFlagsBits;
  v65 = type metadata accessor for CustomSymbol();
  v2 = *(*(v65 - 8) + 64);
  MEMORY[0x28223BE20](v65);
  v64 = &v62 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = type metadata accessor for SymbolMetadata.Backing(0);
  v4 = *(*(v68 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v68);
  v63 = &v62 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = &v62 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA64338, &qword_22E47EAC0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v62 - v11;
  v13 = type metadata accessor for SymbolMetadata(0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v66 = &v62 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA64328, &qword_22E47EAB0);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v20 = (&v62 - v19);
  v21 = type metadata accessor for SymbolKey(0);
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21);
  v25 = &v62 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = countAndFlagsBits;
  SymbolMetadataStore.symbolKey(forSystemName:)(countAndFlagsBits, object, v20);
  if ((*(v22 + 48))(v20, 1, v21) == 1)
  {
    sub_22E4545D0(v20, &qword_27DA64328, &qword_22E47EAB0);
LABEL_13:
    v41 = 0;
    v42 = 0;
    goto LABEL_18;
  }

  sub_22E47748C(v20, v25, type metadata accessor for SymbolKey);
  SymbolMetadataStore.symbolMetadata(for:)(v25, v12);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_22E47755C(v25, type metadata accessor for SymbolKey);
    sub_22E4545D0(v12, &qword_27DA64338, &qword_22E47EAC0);
    goto LABEL_13;
  }

  v26 = v66;
  sub_22E47748C(v12, v66, type metadata accessor for SymbolMetadata);
  sub_22E4774F4(v26, v8, type metadata accessor for SymbolMetadata.Backing);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v27 = v64;
    sub_22E47748C(v8, v64, type metadata accessor for CustomSymbol);
    v28 = (v27 + *(v65 + 20));
    v30 = *v28;
    v29 = v28[1];

    sub_22E47755C(v27, type metadata accessor for CustomSymbol);
  }

  else
  {
    v30 = *(v8 + 1);
    v29 = *(v8 + 2);
    v31 = *(v8 + 6);
    v62 = *(v8 + 5);
    v32 = *(v8 + 7);
    v33 = *(v8 + 10);
    v34 = *(v8 + 12);
    v35 = *(v8 + 216);
    v76 = *(v8 + 200);
    v77 = v35;
    v36 = *(v8 + 248);
    v78 = *(v8 + 232);
    v79 = v36;
    v37 = *(v8 + 152);
    v72 = *(v8 + 136);
    v73 = v37;
    v38 = *(v8 + 184);
    v74 = *(v8 + 168);
    v75 = v38;
    v39 = *(v8 + 120);
    v70 = *(v8 + 104);
    v71 = v39;
    sub_22E467010(&v70);
  }

  if (v30 == v67 && v29 == object)
  {

    sub_22E47755C(v25, type metadata accessor for SymbolKey);
LABEL_12:
    sub_22E47755C(v26, type metadata accessor for SymbolMetadata);
    goto LABEL_13;
  }

  v40 = sub_22E47D054();

  sub_22E47755C(v25, type metadata accessor for SymbolKey);
  if (v40)
  {
    goto LABEL_12;
  }

  v43 = v26;
  v44 = v63;
  sub_22E47748C(v43, v63, type metadata accessor for SymbolMetadata.Backing);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v45 = v64;
    sub_22E47748C(v44, v64, type metadata accessor for CustomSymbol);
    v46 = (v45 + *(v65 + 20));
    v48 = *v46;
    v47 = v46[1];

    sub_22E47755C(v45, type metadata accessor for CustomSymbol);
    v42 = v47;
    v41 = v48;
  }

  else
  {
    v49 = *(v44 + 8);
    v50 = *(v44 + 16);
    v51 = *(v44 + 40);
    v52 = *(v44 + 48);
    v53 = *(v44 + 56);
    v54 = *(v44 + 80);
    v55 = *(v44 + 96);
    v56 = *(v44 + 216);
    v76 = *(v44 + 200);
    v77 = v56;
    v57 = *(v44 + 248);
    v78 = *(v44 + 232);
    v79 = v57;
    v58 = *(v44 + 152);
    v72 = *(v44 + 136);
    v73 = v58;
    v59 = *(v44 + 184);
    v74 = *(v44 + 168);
    v75 = v59;
    v60 = *(v44 + 120);
    v70 = *(v44 + 104);
    v71 = v60;
    sub_22E467010(&v70);

    v42 = v50;
    v41 = v49;
  }

LABEL_18:
  result.value._object = v42;
  result.value._countAndFlagsBits = v41;
  return result;
}

double sub_22E471DCC@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v7 = *(v4 + 96);
  if (!*(v7 + 16))
  {
    goto LABEL_9;
  }

  v8 = *a1;
  v9 = a1[1];
  v10 = *(v5 + 88);
  v11 = sub_22E450B0C(a2, a3);
  if ((v12 & 1) == 0)
  {
    goto LABEL_9;
  }

  v13 = *(*(v7 + 56) + 8 * v11);
  if (!*(v13 + 16))
  {
    goto LABEL_9;
  }

  v14 = sub_22E467B98(v8, v9);
  if ((v15 & 1) == 0)
  {

LABEL_9:
    result = 0.0;
    *a4 = 0u;
    *(a4 + 16) = 0u;
    return result;
  }

  v16 = *(v13 + 56) + 24 * v14;
  v19 = *v16;
  v17 = *(v16 + 16);

  *a4 = v19;
  *(a4 + 16) = v17;
  *(a4 + 24) = v10;

  return result;
}

uint64_t sub_22E471EBC(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 104);
  if (*(v4 + 16))
  {
    v5 = *a1;
    v6 = a1[1];
    v7 = sub_22E450B0C(a2, a3);
    if (v8)
    {
      v9 = *(*(v4 + 56) + 8 * v7);
      if (*(v9 + 16))
      {

        v10 = sub_22E467B98(v5, v6);
        if (v11)
        {
          v12 = (*(v9 + 56) + 16 * v10);
          v14 = *v12;
          v13 = v12[1];

          return v14;
        }
      }
    }
  }

  return 0;
}

uint64_t SymbolMetadataStore.customSymbols.setter(uint64_t a1)
{
  v3 = *(v1 + 112);

  *(v1 + 112) = a1;

  return sub_22E471FA4();
}

uint64_t sub_22E471FA4()
{
  v44 = sub_22E47CD64();
  v1 = *(v44 - 8);
  v2 = *(v1 + 64);
  (MEMORY[0x28223BE20])();
  v4 = &v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(type metadata accessor for CustomSymbol() - 8);
  v6 = *(v5 + 64);
  v7 = (MEMORY[0x28223BE20])();
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v36 - v10;
  v36 = v0;
  v12 = *(v0 + 112);
  v13 = sub_22E466390(MEMORY[0x277D84F90]);
  v42 = *(v12 + 16);
  if (!v42)
  {
LABEL_16:
    v33 = v36;
    v34 = *(v36 + 120);

    *(v33 + 120) = v13;
    return result;
  }

  v14 = 0;
  v41 = v12 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
  v43 = (v1 + 16);
  v38 = v1;
  v39 = v5;
  v40 = (v1 + 8);
  v37 = v11;
  while (v14 < *(v12 + 16))
  {
    v15 = *(v5 + 72);
    sub_22E4774F4(v41 + v15 * v14, v11, type metadata accessor for CustomSymbol);
    v16 = *v43;
    (*v43)(v4, v11, v44);
    sub_22E4774F4(v11, v9, type metadata accessor for CustomSymbol);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v45 = v13;
    v18 = sub_22E45C3EC(v4);
    v20 = v13[2];
    v21 = (v19 & 1) == 0;
    v22 = __OFADD__(v20, v21);
    v23 = v20 + v21;
    if (v22)
    {
      goto LABEL_18;
    }

    v24 = v19;
    if (v13[3] < v23)
    {
      sub_22E45E7B0(v23, isUniquelyReferenced_nonNull_native);
      v18 = sub_22E45C3EC(v4);
      if ((v24 & 1) != (v25 & 1))
      {
        goto LABEL_20;
      }

LABEL_11:
      v13 = v45;
      if (v24)
      {
        goto LABEL_3;
      }

      goto LABEL_12;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_11;
    }

    v32 = v18;
    sub_22E46076C();
    v18 = v32;
    v13 = v45;
    if (v24)
    {
LABEL_3:
      sub_22E477B2C(v9, v13[7] + v18 * v15);
      (*v40)(v4, v44);
      sub_22E47755C(v11, type metadata accessor for CustomSymbol);
      goto LABEL_4;
    }

LABEL_12:
    v13[(v18 >> 6) + 8] |= 1 << v18;
    v26 = v38;
    v27 = v18;
    v28 = v44;
    v16((v13[6] + *(v38 + 72) * v18), v4, v44);
    sub_22E47748C(v9, v13[7] + v27 * v15, type metadata accessor for CustomSymbol);
    v29 = v28;
    v11 = v37;
    (*(v26 + 8))(v4, v29);
    sub_22E47755C(v11, type metadata accessor for CustomSymbol);
    v30 = v13[2];
    v22 = __OFADD__(v30, 1);
    v31 = v30 + 1;
    if (v22)
    {
      goto LABEL_19;
    }

    v13[2] = v31;
LABEL_4:
    ++v14;
    v5 = v39;
    if (v42 == v14)
    {
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  result = sub_22E47D094();
  __break(1u);
  return result;
}

uint64_t *sub_22E4723AC(uint64_t *result, char a2)
{
  if ((a2 & 1) == 0)
  {
    v2 = *result;
    return sub_22E471FA4();
  }

  return result;
}

uint64_t SymbolMetadataStore.symbolKeys(matching:)(uint64_t *a1)
{
  v177 = type metadata accessor for SymbolMetadata(0);
  v153 = *(v177 - 8);
  v3 = *(v153 + 64);
  MEMORY[0x28223BE20](v177);
  v161 = &v147 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v158 = type metadata accessor for SymbolMetadata.Backing(0);
  v5 = *(*(v158 - 8) + 64);
  MEMORY[0x28223BE20](v158);
  v157 = (&v147 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA64338, &qword_22E47EAC0);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v176 = &v147 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v170 = &v147 - v11;
  v12 = type metadata accessor for SymbolKey(0);
  v180 = *(v12 - 8);
  v13 = *(v180 + 64);
  v14 = MEMORY[0x28223BE20](v12);
  v160 = &v147 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v178 = &v147 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v169 = &v147 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v22 = &v147 - v21;
  v23 = MEMORY[0x28223BE20](v20);
  v173 = &v147 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v175 = &v147 - v26;
  v27 = MEMORY[0x28223BE20](v25);
  v164 = &v147 - v28;
  v29 = MEMORY[0x28223BE20](v27);
  v163 = &v147 - v30;
  v31 = MEMORY[0x28223BE20](v29);
  v148 = &v147 - v32;
  v33 = MEMORY[0x28223BE20](v31);
  v166 = &v147 - v34;
  v35 = MEMORY[0x28223BE20](v33);
  v37 = &v147 - v36;
  v38 = MEMORY[0x28223BE20](v35);
  v165 = &v147 - v39;
  v40 = MEMORY[0x28223BE20](v38);
  v162 = &v147 - v41;
  v42 = MEMORY[0x28223BE20](v40);
  v179 = &v147 - v43;
  v44 = MEMORY[0x28223BE20](v42);
  v167 = &v147 - v45;
  v46 = MEMORY[0x28223BE20](v44);
  v159 = &v147 - v47;
  MEMORY[0x28223BE20](v46);
  v49 = &v147 - v48;
  v50 = *a1;
  v51 = a1[1];
  v52 = a1[3];
  v152 = a1[2];
  v154 = v52;
  v151 = *(a1 + 32);
  v201 = *(a1 + 33);
  v200 = *(a1 + 34);
  v199 = *(a1 + 35);
  v149 = *(a1 + 9);
  v171 = a1[5];
  v155 = *(a1 + 3);
  v53 = v1[1];
  v202 = *v1;
  v203 = v53;
  v54 = v1[2];
  v55 = v1[3];
  v56 = v1[5];
  v206 = v1[4];
  v207 = v56;
  v204 = v54;
  v205 = v55;
  v57 = v1[6];
  v58 = v1[7];
  v59 = v1[9];
  v210 = v1[8];
  v211 = v59;
  v208 = v57;
  v209 = v58;
  result = sub_22E46FBE0();
  v156 = v51;
  v174 = v22;
  v172 = v12;
  v168 = v37;
  v150 = v50;
  if (v51)
  {

    if (v50 == 7105633 && v156 == 0xE300000000000000 || (sub_22E47D054() & 1) != 0)
    {
      result = sub_22E46FBE0();
      v61 = result;
      v162 = *(result + 16);
      if (v162)
      {
        v62 = 0;
        v179 = MEMORY[0x277D84F90];
        v63 = v159;
        while (v62 < *(v61 + 16))
        {
          v64 = (*(v180 + 80) + 32) & ~*(v180 + 80);
          v65 = *(v180 + 72);
          sub_22E4774F4(v61 + v64 + v65 * v62, v49, type metadata accessor for SymbolKey);
          sub_22E4774F4(v49, v63, type metadata accessor for SymbolKey);
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            sub_22E47755C(v49, type metadata accessor for SymbolKey);
            result = sub_22E47755C(v63, type metadata accessor for SymbolKey);
          }

          else
          {
            sub_22E47748C(v49, v167, type metadata accessor for SymbolKey);
            v66 = v179;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            *&v189 = v66;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              sub_22E476860(0, *(v66 + 2) + 1, 1);
              v66 = v189;
            }

            v69 = *(v66 + 2);
            v68 = *(v66 + 3);
            if (v69 >= v68 >> 1)
            {
              sub_22E476860(v68 > 1, v69 + 1, 1);
              v66 = v189;
            }

            *(v66 + 2) = v69 + 1;
            v179 = v66;
            result = sub_22E47748C(v167, &v66[v64 + v69 * v65], type metadata accessor for SymbolKey);
            v37 = v168;
            v63 = v159;
          }

          if (v162 == ++v62)
          {
            goto LABEL_18;
          }
        }

        goto LABEL_119;
      }

      v179 = MEMORY[0x277D84F90];
LABEL_18:

      v70 = v176;
      v22 = v174;
    }

    else
    {
      *&v189 = v50;
      *(&v189 + 1) = v156;
      v135 = sub_22E470120(&v189);
      if (!*(v135 + 16))
      {

        return MEMORY[0x277D84F90];
      }

      v167 = v135;
      result = sub_22E46FBE0();
      v136 = result;
      v137 = *(result + 16);
      if (v137)
      {
        v138 = 0;
        v139 = MEMORY[0x277D84F90];
        v70 = v176;
        v140 = v162;
        v141 = v179;
        while (v138 < *(v136 + 16))
        {
          v142 = (*(v180 + 80) + 32) & ~*(v180 + 80);
          v143 = *(v180 + 72);
          sub_22E4774F4(v136 + v142 + v143 * v138, v141, type metadata accessor for SymbolKey);
          if (sub_22E46E7AC(v141, v167))
          {
            sub_22E47748C(v141, v140, type metadata accessor for SymbolKey);
            v144 = swift_isUniquelyReferenced_nonNull_native();
            *&v189 = v139;
            if ((v144 & 1) == 0)
            {
              sub_22E476860(0, *(v139 + 2) + 1, 1);
              v139 = v189;
            }

            v146 = *(v139 + 2);
            v145 = *(v139 + 3);
            if (v146 >= v145 >> 1)
            {
              sub_22E476860(v145 > 1, v146 + 1, 1);
              v139 = v189;
            }

            *(v139 + 2) = v146 + 1;
            result = sub_22E47748C(v140, &v139[v142 + v146 * v143], type metadata accessor for SymbolKey);
            v70 = v176;
            v141 = v179;
          }

          else
          {
            result = sub_22E47755C(v141, type metadata accessor for SymbolKey);
          }

          ++v138;
          v22 = v174;
          if (v137 == v138)
          {
            goto LABEL_116;
          }
        }

        goto LABEL_123;
      }

      v139 = MEMORY[0x277D84F90];
      v70 = v176;
LABEL_116:
      v179 = v139;

      v37 = v168;
    }
  }

  else
  {
    v179 = result;
    v70 = v176;
  }

  v71 = v170;
  if ((v201 & 1) == 0)
  {
    v167 = *(v179 + 2);
    if (v167)
    {
      v72 = 0;
      v73 = MEMORY[0x277D84F90];
      while (v72 < *(v179 + 2))
      {
        v74 = (*(v180 + 80) + 32) & ~*(v180 + 80);
        v75 = *(v180 + 72);
        v76 = v165;
        sub_22E4774F4(&v179[v74 + v75 * v72], v165, type metadata accessor for SymbolKey);
        sub_22E4774F4(v76, v37, type metadata accessor for SymbolKey);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          sub_22E47755C(v37, type metadata accessor for SymbolKey);
          sub_22E47748C(v76, v166, type metadata accessor for SymbolKey);
          v77 = swift_isUniquelyReferenced_nonNull_native();
          *&v189 = v73;
          if ((v77 & 1) == 0)
          {
            sub_22E476860(0, *(v73 + 2) + 1, 1);
            v73 = v189;
          }

          v79 = *(v73 + 2);
          v78 = *(v73 + 3);
          if (v79 >= v78 >> 1)
          {
            sub_22E476860(v78 > 1, v79 + 1, 1);
            v73 = v189;
          }

          *(v73 + 2) = v79 + 1;
          result = sub_22E47748C(v166, &v73[v74 + v79 * v75], type metadata accessor for SymbolKey);
          v37 = v168;
        }

        else
        {
          result = sub_22E47755C(v76, type metadata accessor for SymbolKey);
        }

        if (v167 == ++v72)
        {
          goto LABEL_32;
        }
      }

      goto LABEL_120;
    }

    v73 = MEMORY[0x277D84F90];
LABEL_32:

    v179 = v73;
    v70 = v176;
    v71 = v170;
  }

  if (v200)
  {
    v80 = v179;
    if (v199)
    {
      goto LABEL_67;
    }
  }

  else
  {
    v168 = *(v179 + 2);
    if (v168)
    {
      v81 = 0;
      v82 = MEMORY[0x277D84F90];
      v83 = v148;
      while (v81 < *(v179 + 2))
      {
        v84 = (*(v180 + 80) + 32) & ~*(v180 + 80);
        v85 = *(v180 + 72);
        sub_22E4774F4(&v179[v84 + v85 * v81], v83, type metadata accessor for SymbolKey);
        v86 = v83;
        v87 = v83;
        v88 = v163;
        sub_22E4774F4(v86, v163, type metadata accessor for SymbolKey);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          sub_22E47755C(v87, type metadata accessor for SymbolKey);
          result = sub_22E47755C(v88, type metadata accessor for SymbolKey);
          v83 = v87;
        }

        else
        {
          sub_22E47755C(v88, type metadata accessor for SymbolKey);
          sub_22E47748C(v87, v164, type metadata accessor for SymbolKey);
          v89 = swift_isUniquelyReferenced_nonNull_native();
          *&v189 = v82;
          v83 = v87;
          if ((v89 & 1) == 0)
          {
            sub_22E476860(0, *(v82 + 16) + 1, 1);
            v82 = v189;
          }

          v91 = *(v82 + 16);
          v90 = *(v82 + 24);
          if (v91 >= v90 >> 1)
          {
            sub_22E476860(v90 > 1, v91 + 1, 1);
            v82 = v189;
          }

          *(v82 + 16) = v91 + 1;
          result = sub_22E47748C(v164, v82 + v84 + v91 * v85, type metadata accessor for SymbolKey);
        }

        if (v168 == ++v81)
        {
          goto LABEL_48;
        }
      }

      goto LABEL_121;
    }

    v82 = MEMORY[0x277D84F90];
LABEL_48:

    v80 = v82;
    v70 = v176;
    v71 = v170;
    if (v199)
    {
      goto LABEL_67;
    }
  }

  v92 = *(v80 + 16);
  if (v92)
  {
    v93 = 0;
    v179 = (v153 + 48);
    v94 = MEMORY[0x277D84F90];
    v167 = v92;
    while (1)
    {
      if (v93 >= *(v80 + 16))
      {
        goto LABEL_122;
      }

      v105 = (*(v180 + 80) + 32) & ~*(v180 + 80);
      v106 = *(v180 + 72);
      v107 = v175;
      sub_22E4774F4(v80 + v105 + v106 * v93, v175, type metadata accessor for SymbolKey);
      SymbolMetadataStore.symbolMetadata(for:)(v107, v71);
      if ((*v179)(v71, 1, v177) == 1)
      {
        break;
      }

      v108 = v157;
      sub_22E4774F4(v71, v157, type metadata accessor for SymbolMetadata.Backing);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        sub_22E47755C(v108, type metadata accessor for SymbolMetadata.Backing);
        sub_22E47755C(v71, type metadata accessor for SymbolMetadata);
        goto LABEL_60;
      }

      v172 = v108[2];
      v96 = v108[5];
      v95 = v108[6];
      v97 = v108;
      v98 = v108[7];
      v168 = v97[10];
      v99 = v97[12];
      v100 = *(v97 + 27);
      v195 = *(v97 + 25);
      v196 = v100;
      v101 = *(v97 + 31);
      v197 = *(v97 + 29);
      v198 = v101;
      v102 = *(v97 + 19);
      v191 = *(v97 + 17);
      v192 = v102;
      v103 = *(v97 + 23);
      v193 = *(v97 + 21);
      v194 = v103;
      v104 = *(v97 + 15);
      v189 = *(v97 + 13);
      v190 = v104;
      sub_22E467010(&v189);
      v71 = v170;

      sub_22E47755C(v71, type metadata accessor for SymbolMetadata);
      if (!v96)
      {
        v92 = v167;
        goto LABEL_60;
      }

      result = sub_22E47755C(v175, type metadata accessor for SymbolKey);
      v92 = v167;
LABEL_53:
      ++v93;
      v22 = v174;
      if (v92 == v93)
      {
        goto LABEL_66;
      }
    }

    sub_22E4545D0(v71, &qword_27DA64338, &qword_22E47EAC0);
LABEL_60:
    sub_22E47748C(v175, v173, type metadata accessor for SymbolKey);
    v109 = swift_isUniquelyReferenced_nonNull_native();
    v181[0] = v94;
    if ((v109 & 1) == 0)
    {
      sub_22E476860(0, *(v94 + 16) + 1, 1);
      v94 = v181[0];
    }

    v111 = *(v94 + 16);
    v110 = *(v94 + 24);
    if (v111 >= v110 >> 1)
    {
      sub_22E476860(v110 > 1, v111 + 1, 1);
      v94 = v181[0];
    }

    *(v94 + 16) = v111 + 1;
    result = sub_22E47748C(v173, v94 + v105 + v111 * v106, type metadata accessor for SymbolKey);
    v71 = v170;
    goto LABEL_53;
  }

  v94 = MEMORY[0x277D84F90];
LABEL_66:

  v80 = v94;
  v70 = v176;
LABEL_67:
  if (!*(v171 + 16))
  {
LABEL_82:
    v174 = v155;
    if (*(v155 + 16))
    {
      v121 = *(v80 + 16);
      if (v121)
      {
        v122 = 0;
        v179 = (v153 + 48);
        v175 = MEMORY[0x277D84F90];
        v173 = v121;
        while (1)
        {
          if (v122 >= *(v80 + 16))
          {
            goto LABEL_118;
          }

          v123 = (*(v180 + 80) + 32) & ~*(v180 + 80);
          v124 = *(v180 + 72);
          v125 = v178;
          sub_22E4774F4(v80 + v123 + v124 * v122, v178, type metadata accessor for SymbolKey);
          SymbolMetadataStore.symbolMetadata(for:)(v125, v70);
          if ((*v179)(v70, 1, v177) == 1)
          {
            sub_22E4545D0(v70, &qword_27DA64338, &qword_22E47EAC0);
          }

          else
          {
            v126 = v70;
            v127 = v161;
            v128 = sub_22E47748C(v126, v161, type metadata accessor for SymbolMetadata);
            MEMORY[0x28223BE20](v128);
            *(&v147 - 2) = v127;
            v129 = sub_22E46EF1C(sub_22E477C34, (&v147 - 4), v174);
            sub_22E47755C(v127, type metadata accessor for SymbolMetadata);
            if (v129)
            {
              sub_22E47748C(v178, v160, type metadata accessor for SymbolKey);
              v130 = v175;
              v131 = swift_isUniquelyReferenced_nonNull_native();
              *&v189 = v130;
              if ((v131 & 1) == 0)
              {
                sub_22E476860(0, *(v130 + 16) + 1, 1);
                v130 = v189;
              }

              v70 = v176;
              v133 = *(v130 + 16);
              v132 = *(v130 + 24);
              if (v133 >= v132 >> 1)
              {
                sub_22E476860(v132 > 1, v133 + 1, 1);
                v130 = v189;
              }

              *(v130 + 16) = v133 + 1;
              v175 = v130;
              result = sub_22E47748C(v160, v130 + v123 + v133 * v124, type metadata accessor for SymbolKey);
              v121 = v173;
              goto LABEL_87;
            }

            v70 = v176;
            v121 = v173;
          }

          result = sub_22E47755C(v178, type metadata accessor for SymbolKey);
LABEL_87:
          if (v121 == ++v122)
          {
            goto LABEL_98;
          }
        }
      }

      v175 = MEMORY[0x277D84F90];
LABEL_98:

      v80 = v175;
    }

    if (v154)
    {
      v195 = v208;
      v196 = v209;
      v197 = v210;
      v198 = v211;
      v191 = v204;
      v192 = v205;
      v193 = v206;
      v194 = v207;
      v189 = v202;
      v190 = v203;
      v181[0] = v150;
      v181[1] = v156;
      v181[2] = v152;
      v181[3] = v154;
      v182 = v151;
      v183 = v201;
      v184 = v200;
      v185 = v199;
      v186 = v149;
      v187 = v171;
      v188 = v155;
      v134 = sub_22E4737A4(v80, v152, v154, v181, v151 & 1);

      return v134;
    }

    return v80;
  }

  v112 = *(v80 + 16);
  if (!v112)
  {
    v114 = MEMORY[0x277D84F90];
LABEL_81:

    v80 = v114;
    goto LABEL_82;
  }

  v113 = 0;
  v114 = MEMORY[0x277D84F90];
  while (v113 < *(v80 + 16))
  {
    v115 = (*(v180 + 80) + 32) & ~*(v180 + 80);
    v116 = *(v180 + 72);
    v117 = sub_22E4774F4(v80 + v115 + v116 * v113, v22, type metadata accessor for SymbolKey);
    MEMORY[0x28223BE20](v117);
    *(&v147 - 2) = v22;
    if (sub_22E46EF1C(sub_22E4775BC, (&v147 - 4), v171))
    {
      sub_22E47748C(v22, v169, type metadata accessor for SymbolKey);
      v118 = swift_isUniquelyReferenced_nonNull_native();
      *&v189 = v114;
      if ((v118 & 1) == 0)
      {
        sub_22E476860(0, *(v114 + 16) + 1, 1);
        v114 = v189;
      }

      v120 = *(v114 + 16);
      v119 = *(v114 + 24);
      if (v120 >= v119 >> 1)
      {
        sub_22E476860(v119 > 1, v120 + 1, 1);
        v114 = v189;
      }

      *(v114 + 16) = v120 + 1;
      result = sub_22E47748C(v169, v114 + v115 + v120 * v116, type metadata accessor for SymbolKey);
      v22 = v174;
    }

    else
    {
      result = sub_22E47755C(v22, type metadata accessor for SymbolKey);
    }

    ++v113;
    v70 = v176;
    if (v112 == v113)
    {
      goto LABEL_81;
    }
  }

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
  return result;
}

uint64_t sub_22E4737A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  LODWORD(v189) = a5;
  v183 = a2;
  v163 = a1;
  v165 = type metadata accessor for CustomSymbol();
  v154 = *(v165 - 8);
  v8 = *(v154 + 64);
  MEMORY[0x28223BE20](v165);
  v167 = &v152 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v185 = type metadata accessor for SymbolMetadata.Backing(0);
  v10 = *(*(v185 - 8) + 64);
  MEMORY[0x28223BE20](v185);
  v12 = &v152 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA64330, &qword_22E47EAB8);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v17 = &v152 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v168 = &v152 - v18;
  v184 = sub_22E47CD64();
  v153 = *(v184 - 8);
  v19 = *(v153 + 64);
  MEMORY[0x28223BE20](v184);
  v166 = &v152 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA64338, &qword_22E47EAC0);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21 - 8);
  v179 = &v152 - v23;
  v24 = type metadata accessor for SymbolMetadata(0);
  v157 = *(v24 - 8);
  v25 = *(v157 + 64);
  MEMORY[0x28223BE20](v24);
  v27 = &v152 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA64340, &qword_22E47EC48);
  v29 = *(*(v28 - 8) + 64);
  MEMORY[0x28223BE20](v28 - 8);
  v177 = &v152 - v30;
  v31 = type metadata accessor for SymbolMetadataStore.RelevantSymbol(0);
  v156 = *(v31 - 8);
  v32 = *(v156 + 64);
  v33 = MEMORY[0x28223BE20](v31);
  v178 = &v152 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33);
  v158 = &v152 - v35;
  v188 = type metadata accessor for SymbolKey(0);
  v181 = *(v188 - 8);
  v36 = *(v181 + 64);
  v37 = MEMORY[0x28223BE20](v188);
  v186 = (&v152 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0));
  v39 = MEMORY[0x28223BE20](v37);
  v171 = &v152 - v40;
  v41 = MEMORY[0x28223BE20](v39);
  v43 = (&v152 - v42);
  MEMORY[0x28223BE20](v41);
  v187 = &v152 - v44;
  v45 = *(a4 + 56);
  v46 = v5[7];
  v201 = v5[6];
  v202 = v46;
  v47 = v5[9];
  v203 = v5[8];
  v204 = v47;
  v48 = v5[3];
  v197 = v5[2];
  v198 = v48;
  v49 = v5[5];
  v199 = v5[4];
  v200 = v49;
  v50 = v5[1];
  v195 = *v5;
  v196 = v50;

  v51 = sub_22E46D898(v183, a3, v189);
  v53 = v51;
  v160 = v54;
  if (!*(v51 + 16) && !*(v52 + 16))
  {
    v132 = v163;

    return v132;
  }

  v159 = v52;
  v183 = v31;
  v55 = v45[2];
  v180 = v12;
  v164 = v17;
  v175 = v55;
  v176 = v24;
  v169 = v27;
  v172 = v43;
  v189 = v51;
  if (v55)
  {
    v56 = 0;
    v173 = (v45 + 4);
    v57 = v51 + 56;
    v170 = MEMORY[0x277D84F90];
    v174 = v45;
    while (1)
    {
      while (1)
      {
        if (v56 >= v45[2])
        {
          __break(1u);
          goto LABEL_76;
        }

        v58 = &v173[4 * v56];
        v59 = *v58;
        v60 = v58[3];
        ++v56;
        v182 = *(v58 + 1);
        v61 = sub_22E47CE04();
        v63 = v62;
        if (*(v53 + 16))
        {
          break;
        }

LABEL_5:

        v12 = v180;
        v45 = v174;
        if (v56 == v175)
        {
          goto LABEL_24;
        }
      }

      v64 = v61;
      v65 = *(v53 + 40);
      sub_22E47D0F4();

      sub_22E47CE24();
      v66 = sub_22E47D124();
      v67 = -1 << *(v53 + 32);
      v68 = v66 & ~v67;
      if (((*(v57 + ((v68 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v68) & 1) == 0)
      {
LABEL_16:

        v43 = v172;
        v53 = v189;
        goto LABEL_5;
      }

      v69 = ~v67;
      while (1)
      {
        v70 = (*(v189 + 48) + 16 * v68);
        v71 = *v70 == v64 && v70[1] == v63;
        if (v71 || (sub_22E47D054() & 1) != 0)
        {
          break;
        }

        v68 = (v68 + 1) & v69;
        if (((*(v57 + ((v68 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v68) & 1) == 0)
        {
          goto LABEL_16;
        }
      }

      v72 = v170;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v74 = v72;
      *&v190[0] = v72;
      v12 = v180;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_22E4768C4(0, *(v72 + 16) + 1, 1);
        v74 = *&v190[0];
      }

      v53 = v189;
      v75 = v74;
      v77 = *(v74 + 16);
      v76 = *(v74 + 24);
      if (v77 >= v76 >> 1)
      {
        sub_22E4768C4((v76 > 1), v77 + 1, 1);
        v53 = v189;
        v75 = *&v190[0];
      }

      *(v75 + 16) = v77 + 1;
      v170 = v75;
      v78 = v75 + 32 * v77;
      *(v78 + 32) = v59;
      *(v78 + 40) = v182;
      *(v78 + 56) = v60;
      v43 = v172;
      v45 = v174;
      if (v56 == v175)
      {
        goto LABEL_24;
      }
    }
  }

  v170 = MEMORY[0x277D84F90];
LABEL_24:
  v79 = *(v163 + 16);
  if (v79)
  {
    v155 = 0;
    v80 = v163 + ((*(v181 + 80) + 32) & ~*(v181 + 80));
    *&v182 = *(v181 + 72);
    v81 = (v157 + 56);
    v173 = (v153 + 32);
    v162 = (v154 + 56);
    v163 = v153 + 8;
    v161 = (v154 + 48);
    v175 = (v157 + 48);
    v82 = (v156 + 56);
    v157 = v156 + 48;
    v174 = MEMORY[0x277D84F90];
    v83 = v183;
    v84 = v166;
    while (1)
    {
      v87 = v187;
      sub_22E4774F4(v80, v187, type metadata accessor for SymbolKey);
      sub_22E4774F4(v87, v43, type metadata accessor for SymbolKey);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        sub_22E47755C(v43, type metadata accessor for SymbolKey);
      }

      else
      {
        v88 = *(&v195 + 1);
        if (*(*(&v195 + 1) + 16))
        {
          v89 = sub_22E45C22C(*v43);
          if (v90)
          {
            v91 = *(v88 + 56) + 104 * v89;
            v93 = *(v91 + 16);
            v92 = *(v91 + 32);
            v192[0] = *v91;
            v192[1] = v93;
            v192[2] = v92;
            v94 = *(v91 + 48);
            v95 = *(v91 + 64);
            v96 = *(v91 + 80);
            v193 = *(v91 + 96);
            v192[4] = v95;
            v192[5] = v96;
            v192[3] = v94;
            v97 = *v91;
            v98 = *(v91 + 32);
            v194[1] = *(v91 + 16);
            v194[2] = v98;
            v194[0] = v97;
            v99 = *(v91 + 48);
            v100 = *(v91 + 64);
            v101 = *(v91 + 80);
            *&v194[6] = *(v91 + 96);
            v194[4] = v100;
            v194[5] = v101;
            v194[3] = v99;
            *(&v194[7] + 8) = v196;
            *(&v194[6] + 8) = v195;
            *(&v194[11] + 8) = v200;
            *(&v194[10] + 8) = v199;
            *(&v194[9] + 8) = v198;
            *(&v194[8] + 8) = v197;
            *(&v194[15] + 8) = v204;
            *(&v194[14] + 8) = v203;
            *(&v194[13] + 8) = v202;
            *(&v194[12] + 8) = v201;
            v85 = v179;
            memcpy(v179, v194, 0x108uLL);
            swift_storeEnumTagMultiPayload();
            v102 = v176;
            (*v81)(v85, 0, 1, v176);
            sub_22E4658E4(v192, v190);
            sub_22E466FB4(&v195, v190);
            goto LABEL_44;
          }
        }
      }

      v103 = v171;
      sub_22E4774F4(v187, v171, type metadata accessor for SymbolKey);
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        sub_22E47755C(v103, type metadata accessor for SymbolKey);
        v85 = v179;
        (*v81)(v179, 1, 1, v176);
LABEL_27:
        sub_22E47755C(v187, type metadata accessor for SymbolKey);
        sub_22E4545D0(v85, &qword_27DA64338, &qword_22E47EAC0);
        v86 = v177;
        (*v82)(v177, 1, 1, v83);
        goto LABEL_28;
      }

      (*v173)(v84, v103, v184);
      v104 = *(&v202 + 1);
      if (*(*(&v202 + 1) + 16) && (v105 = sub_22E45C3EC(v84), (v106 & 1) != 0))
      {
        sub_22E4774F4(*(v104 + 56) + *(v154 + 72) * v105, v168, type metadata accessor for CustomSymbol);
        v107 = 0;
      }

      else
      {
        v107 = 1;
      }

      (*v163)(v84, v184);
      v108 = v168;
      v109 = v107;
      v110 = v165;
      (*v162)(v168, v109, 1, v165);
      v111 = v108;
      v112 = v164;
      sub_22E47741C(v111, v164);
      if ((*v161)(v112, 1, v110) == 1)
      {
        v113 = *v81;
        v85 = v179;
        v114 = v179;
        v115 = 1;
      }

      else
      {
        v85 = v179;
        sub_22E47748C(v112, v179, type metadata accessor for CustomSymbol);
        swift_storeEnumTagMultiPayload();
        v113 = *v81;
        v114 = v85;
        v115 = 0;
      }

      v102 = v176;
      v113(v114, v115, 1, v176);
      v84 = v166;
LABEL_44:
      v116 = (*v175)(v85, 1, v102);
      v117 = v169;
      if (v116 == 1)
      {
        goto LABEL_27;
      }

      sub_22E47748C(v85, v169, type metadata accessor for SymbolMetadata);
      v118 = sub_22E46BC5C(v117, v189, v159, v160);
      if (v119)
      {
        if (*(v170 + 16))
        {
          MEMORY[0x28223BE20](v118);
          *(&v152 - 2) = v117;
          v120 = v155;
          v122 = sub_22E46EE48(sub_22E477AF0, (&v152 - 4), v121);
          v155 = v120;
          sub_22E47755C(v187, type metadata accessor for SymbolKey);
          if (v122)
          {
            v83 = v183;
            v86 = v177;
            sub_22E4774F4(v117, &v177[*(v183 + 20)], type metadata accessor for SymbolMetadata);
            v123 = 0;
            *v86 = 1000;
            goto LABEL_53;
          }

          v123 = 1;
          v83 = v183;
        }

        else
        {
          sub_22E47755C(v187, type metadata accessor for SymbolKey);
          v123 = 1;
        }

        v86 = v177;
      }

      else
      {
        v124 = v118;
        sub_22E47755C(v187, type metadata accessor for SymbolKey);
        v86 = v177;
        sub_22E4774F4(v117, &v177[*(v83 + 20)], type metadata accessor for SymbolMetadata);
        v123 = 0;
        *v86 = v124;
      }

LABEL_53:
      v43 = v172;
      (*v82)(v86, v123, 1, v83);
      sub_22E47755C(v117, type metadata accessor for SymbolMetadata);
      if ((*v157)(v86, 1, v83) != 1)
      {
        sub_22E47748C(v86, v158, type metadata accessor for SymbolMetadataStore.RelevantSymbol);
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v125 = v174;
        }

        else
        {
          v125 = sub_22E478C78(0, v174[2] + 1, 1, v174);
        }

        v127 = v125[2];
        v126 = v125[3];
        if (v127 >= v126 >> 1)
        {
          v125 = sub_22E478C78(v126 > 1, v127 + 1, 1, v125);
        }

        v125[2] = v127 + 1;
        v128 = (*(v156 + 80) + 32) & ~*(v156 + 80);
        v174 = v125;
        sub_22E47748C(v158, v125 + v128 + *(v156 + 72) * v127, type metadata accessor for SymbolMetadataStore.RelevantSymbol);
        v83 = v183;
        goto LABEL_29;
      }

LABEL_28:
      sub_22E4545D0(v86, &qword_27DA64340, &qword_22E47EC48);
LABEL_29:
      v80 += v182;
      if (!--v79)
      {

        v12 = v180;
        v56 = v155;
        v129 = v174;
        goto LABEL_62;
      }
    }
  }

  v56 = 0;
  v129 = MEMORY[0x277D84F90];
LABEL_62:
  *&v194[0] = v129;

  sub_22E47533C(v194);
  if (!v56)
  {

    v130 = *&v194[0];
    v131 = *(*&v194[0] + 16);
    if (v131)
    {
      *&v192[0] = MEMORY[0x277D84F90];
      sub_22E476860(0, v131, 0);
      v132 = *&v192[0];
      v133 = *(v156 + 80);
      v189 = v130;
      v134 = v130 + ((v133 + 32) & ~v133);
      v135 = *(v156 + 72);
      v136 = (v153 + 16);
      do
      {
        v137 = v178;
        sub_22E4774F4(v134, v178, type metadata accessor for SymbolMetadataStore.RelevantSymbol);
        sub_22E47748C(v137 + *(v183 + 20), v12, type metadata accessor for SymbolMetadata.Backing);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v138 = v167;
          sub_22E47748C(v12, v167, type metadata accessor for CustomSymbol);
          (*v136)(v186, v138, v184);
          sub_22E47755C(v138, type metadata accessor for CustomSymbol);
        }

        else
        {
          v139 = *(v12 + 5);
          v190[4] = *(v12 + 4);
          v190[5] = v139;
          v191 = *(v12 + 12);
          v140 = *(v12 + 1);
          v190[0] = *v12;
          v190[1] = v140;
          v141 = *(v12 + 3);
          v190[2] = *(v12 + 2);
          v190[3] = v141;
          v142 = *(v12 + 120);
          v194[0] = *(v12 + 104);
          v194[1] = v142;
          v143 = *(v12 + 136);
          v144 = *(v12 + 152);
          v145 = *(v12 + 184);
          v194[4] = *(v12 + 168);
          v194[5] = v145;
          v194[2] = v143;
          v194[3] = v144;
          v146 = *(v12 + 200);
          v147 = *(v12 + 216);
          v148 = *(v12 + 248);
          v194[8] = *(v12 + 232);
          v194[9] = v148;
          v194[6] = v146;
          v194[7] = v147;
          sub_22E467010(v194);
          sub_22E465940(v190);
          *v186 = v190[0];
        }

        swift_storeEnumTagMultiPayload();
        *&v192[0] = v132;
        v150 = *(v132 + 16);
        v149 = *(v132 + 24);
        if (v150 >= v149 >> 1)
        {
          sub_22E476860(v149 > 1, v150 + 1, 1);
          v132 = *&v192[0];
        }

        *(v132 + 16) = v150 + 1;
        sub_22E47748C(v186, v132 + ((*(v181 + 80) + 32) & ~*(v181 + 80)) + *(v181 + 72) * v150, type metadata accessor for SymbolKey);
        v134 += v135;
        --v131;
      }

      while (v131);
    }

    else
    {

      return MEMORY[0x277D84F90];
    }

    return v132;
  }

LABEL_76:

  __break(1u);
  return result;
}

void *SymbolMetadataStore.symbolMetadata(matching:)(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA64330, &qword_22E47EAB8);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  v81 = &v73 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = &v73 - v7;
  v76 = sub_22E47CD64();
  v89 = *(v76 - 8);
  v9 = v89[8];
  MEMORY[0x28223BE20](v76);
  v11 = &v73 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA64338, &qword_22E47EAC0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v73 - v14;
  v16 = type metadata accessor for SymbolMetadata(0);
  v80 = *(v16 - 8);
  v17 = *(v80 + 64);
  MEMORY[0x28223BE20](v16);
  v87 = &v73 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = type metadata accessor for SymbolKey(0);
  v19 = *(v90 - 8);
  v20 = *(v19 + 64);
  v21 = MEMORY[0x28223BE20](v90);
  v82 = &v73 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v21);
  v88 = (&v73 - v24);
  MEMORY[0x28223BE20](v23);
  v26 = &v73 - v25;
  v27 = v1[7];
  v101 = v1[6];
  v102 = v27;
  v28 = v1[9];
  v103 = v1[8];
  v104 = v28;
  v29 = v1[3];
  v97 = v1[2];
  v98 = v29;
  v30 = v1[5];
  v99 = v1[4];
  v100 = v30;
  v31 = v1[1];
  v95 = *v1;
  v96 = v31;
  v32 = SymbolMetadataStore.symbolKeys(matching:)(a1);
  v33 = *(v32 + 16);
  if (v33)
  {
    v34 = (*(v19 + 80) + 32) & ~*(v19 + 80);
    v73 = v32;
    v35 = v32 + v34;
    v36 = *(v19 + 72);
    v85 = (v80 + 56);
    v86 = v36;
    v77 = (v89 + 1);
    v78 = (v89 + 4);
    v89 = MEMORY[0x277D84F90];
    v83 = v16;
    v84 = (v80 + 48);
    v37 = v76;
    v79 = v11;
    v75 = v15;
    while (1)
    {
      sub_22E4774F4(v35, v26, type metadata accessor for SymbolKey);
      v38 = v88;
      sub_22E4774F4(v26, v88, type metadata accessor for SymbolKey);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        sub_22E47755C(v38, type metadata accessor for SymbolKey);
      }

      else
      {
        v39 = *(&v95 + 1);
        if (*(*(&v95 + 1) + 16))
        {
          v40 = sub_22E45C22C(*v88);
          if (v41)
          {
            v42 = *(v39 + 56) + 104 * v40;
            v44 = *(v42 + 16);
            v43 = *(v42 + 32);
            v92[0] = *v42;
            v92[1] = v44;
            v92[2] = v43;
            v45 = *(v42 + 48);
            v46 = *(v42 + 64);
            v47 = *(v42 + 80);
            v93 = *(v42 + 96);
            v92[4] = v46;
            v92[5] = v47;
            v92[3] = v45;
            v48 = *(v42 + 16);
            v94[0] = *v42;
            v94[1] = v48;
            v49 = *(v42 + 32);
            v50 = *(v42 + 48);
            v51 = *(v42 + 64);
            v52 = *(v42 + 80);
            *&v94[6] = *(v42 + 96);
            v94[4] = v51;
            v94[5] = v52;
            v94[2] = v49;
            v94[3] = v50;
            *(&v94[7] + 8) = v96;
            *(&v94[6] + 8) = v95;
            *(&v94[11] + 8) = v100;
            *(&v94[10] + 8) = v99;
            *(&v94[9] + 8) = v98;
            *(&v94[8] + 8) = v97;
            *(&v94[15] + 8) = v104;
            *(&v94[14] + 8) = v103;
            *(&v94[13] + 8) = v102;
            *(&v94[12] + 8) = v101;
            memcpy(v15, v94, 0x108uLL);
            type metadata accessor for SymbolMetadata.Backing(0);
            swift_storeEnumTagMultiPayload();
            (*v85)(v15, 0, 1, v16);
            sub_22E4658E4(v92, v91);
            sub_22E466FB4(&v95, v91);
            goto LABEL_21;
          }
        }
      }

      v53 = v82;
      sub_22E4774F4(v26, v82, type metadata accessor for SymbolKey);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        (*v78)(v11, v53, v37);
        v54 = *(&v102 + 1);
        if (*(*(&v102 + 1) + 16))
        {
          v55 = v8;
          v56 = sub_22E45C3EC(v11);
          if (v57)
          {
            v58 = v56;
            v74 = *(v54 + 56);
            v59 = type metadata accessor for CustomSymbol();
            v60 = *(v59 - 8);
            v61 = v74 + *(v60 + 72) * v58;
            v8 = v55;
            sub_22E4774F4(v61, v55, type metadata accessor for CustomSymbol);
            (*v77)(v11, v76);
            (*(v60 + 56))(v55, 0, 1, v59);
            v15 = v75;
            v37 = v76;
          }

          else
          {
            (*v77)(v11, v37);
            v59 = type metadata accessor for CustomSymbol();
            (*(*(v59 - 8) + 56))(v8, 1, 1, v59);
            v15 = v75;
          }
        }

        else
        {
          (*v77)(v11, v37);
          v59 = type metadata accessor for CustomSymbol();
          (*(*(v59 - 8) + 56))(v8, 1, 1, v59);
        }

        v62 = v81;
        sub_22E47741C(v8, v81);
        type metadata accessor for CustomSymbol();
        if ((*(*(v59 - 8) + 48))(v62, 1, v59) == 1)
        {
          v63 = *v85;
          v64 = v15;
          v65 = 1;
        }

        else
        {
          sub_22E47748C(v81, v15, type metadata accessor for CustomSymbol);
          type metadata accessor for SymbolMetadata.Backing(0);
          swift_storeEnumTagMultiPayload();
          v63 = *v85;
          v64 = v15;
          v65 = 0;
        }

        v16 = v83;
        v63(v64, v65, 1, v83);
        v11 = v79;
      }

      else
      {
        sub_22E47755C(v53, type metadata accessor for SymbolKey);
        (*v85)(v15, 1, 1, v16);
      }

LABEL_21:
      sub_22E47755C(v26, type metadata accessor for SymbolKey);
      if ((*v84)(v15, 1, v16) == 1)
      {
        sub_22E4545D0(v15, &qword_27DA64338, &qword_22E47EAC0);
      }

      else
      {
        sub_22E47748C(v15, v87, type metadata accessor for SymbolMetadata);
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v66 = v89;
        }

        else
        {
          v66 = sub_22E478CA0(0, v89[2] + 1, 1, v89);
        }

        v68 = v66[2];
        v67 = v66[3];
        v69 = v80;
        if (v68 >= v67 >> 1)
        {
          v71 = sub_22E478CA0(v67 > 1, v68 + 1, 1, v66);
          v69 = v80;
          v66 = v71;
        }

        v66[2] = v68 + 1;
        v70 = (*(v69 + 80) + 32) & ~*(v69 + 80);
        v89 = v66;
        sub_22E47748C(v87, v66 + v70 + *(v69 + 72) * v68, type metadata accessor for SymbolMetadata);
        v16 = v83;
      }

      v35 += v86;
      if (!--v33)
      {

        return v89;
      }
    }
  }

  return MEMORY[0x277D84F90];
}

void *SymbolMetadataStore.localizationOverrideBundle.getter()
{
  v1 = *(v0 + 128);
  v2 = v1;
  return v1;
}

uint64_t SymbolMetadataStore.localizationOverrideTableName.getter()
{
  v1 = *(v0 + 136);
  v2 = *(v0 + 144);

  return v1;
}

uint64_t SymbolMetadataStore.localizationOverrideTableName.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 144);

  *(v2 + 136) = a1;
  *(v2 + 144) = a2;
  return result;
}

uint64_t sub_22E47533C(void **a1)
{
  v2 = *(type metadata accessor for SymbolMetadataStore.RelevantSymbol(0) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_22E477044(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_22E4753E4(v6);
  *a1 = v3;
  return result;
}

uint64_t sub_22E4753E4(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_22E47D034();
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
        type metadata accessor for SymbolMetadataStore.RelevantSymbol(0);
        v6 = sub_22E47CEA4();
        *(v6 + 16) = v5;
      }

      v7 = *(type metadata accessor for SymbolMetadataStore.RelevantSymbol(0) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_22E475764(v8, v9, a1, v4);
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
    return sub_22E475510(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_22E475510(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v37 = type metadata accessor for SymbolMetadataStore.RelevantSymbol(0);
  v8 = *(*(v37 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v37);
  v36 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = (&v28 - v12);
  result = MEMORY[0x28223BE20](v11);
  v17 = (&v28 - v16);
  v30 = a2;
  if (a3 != a2)
  {
    v18 = *a4;
    v19 = *(v15 + 72);
    v20 = *a4 + v19 * (a3 - 1);
    v21 = -v19;
    v22 = a1 - a3;
    v35 = v18;
    v29 = v19;
    v23 = v18 + v19 * a3;
LABEL_5:
    v33 = v20;
    v34 = a3;
    v31 = v23;
    v32 = v22;
    while (1)
    {
      sub_22E4774F4(v23, v17, type metadata accessor for SymbolMetadataStore.RelevantSymbol);
      sub_22E4774F4(v20, v13, type metadata accessor for SymbolMetadataStore.RelevantSymbol);
      v24 = *v17;
      v25 = *v13;
      sub_22E47755C(v13, type metadata accessor for SymbolMetadataStore.RelevantSymbol);
      result = sub_22E47755C(v17, type metadata accessor for SymbolMetadataStore.RelevantSymbol);
      if (v25 >= v24)
      {
LABEL_4:
        a3 = v34 + 1;
        v20 = v33 + v29;
        v22 = v32 - 1;
        v23 = v31 + v29;
        if (v34 + 1 == v30)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v35)
      {
        break;
      }

      v26 = v36;
      sub_22E47748C(v23, v36, type metadata accessor for SymbolMetadataStore.RelevantSymbol);
      swift_arrayInitWithTakeFrontToBack();
      result = sub_22E47748C(v26, v20, type metadata accessor for SymbolMetadataStore.RelevantSymbol);
      v20 += v21;
      v23 += v21;
      if (__CFADD__(v22++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_22E475764(unint64_t *a1, uint64_t a2, void *a3, unint64_t a4)
{
  v6 = v4;
  v109 = a1;
  v121 = type metadata accessor for SymbolMetadataStore.RelevantSymbol(0);
  v9 = *(v121 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v121);
  v112 = &v104 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v120 = &v104 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v123 = (&v104 - v16);
  result = MEMORY[0x28223BE20](v15);
  v122 = (&v104 - v18);
  v19 = a3[1];
  if (v19 < 1)
  {
    v21 = MEMORY[0x277D84F90];
LABEL_95:
    v5 = *v109;
    if (!*v109)
    {
      goto LABEL_135;
    }

    a4 = v21;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      result = a4;
    }

    else
    {
LABEL_129:
      result = sub_22E476624(a4);
    }

    v124 = result;
    a4 = *(result + 16);
    if (a4 >= 2)
    {
      v100 = v9;
      while (*a3)
      {
        v101 = *(result + 16 * a4);
        v102 = result;
        v9 = *(result + 16 * (a4 - 1) + 40);
        sub_22E47609C(*a3 + *(v100 + 72) * v101, *a3 + *(v100 + 72) * *(result + 16 * (a4 - 1) + 32), *a3 + *(v100 + 72) * v9, v5);
        if (v6)
        {
        }

        if (v9 < v101)
        {
          goto LABEL_122;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v102 = sub_22E476624(v102);
        }

        if (a4 - 2 >= *(v102 + 2))
        {
          goto LABEL_123;
        }

        v103 = &v102[16 * a4];
        *v103 = v101;
        *(v103 + 1) = v9;
        v124 = v102;
        sub_22E476598(a4 - 1);
        result = v124;
        a4 = *(v124 + 16);
        if (a4 <= 1)
        {
        }
      }

      goto LABEL_133;
    }
  }

  v20 = 0;
  v21 = MEMORY[0x277D84F90];
  v110 = a3;
  v108 = a4;
  v106 = v9;
  while (1)
  {
    v22 = v20;
    v23 = v20 + 1;
    v113 = v21;
    if (v23 >= v19)
    {
      v19 = v23;
    }

    else
    {
      v24 = *a3;
      v25 = *(v9 + 72);
      v5 = v24 + v25 * v23;
      v26 = v122;
      sub_22E4774F4(v5, v122, type metadata accessor for SymbolMetadataStore.RelevantSymbol);
      v27 = v123;
      sub_22E4774F4(v24 + v25 * v22, v123, type metadata accessor for SymbolMetadataStore.RelevantSymbol);
      v28 = *v26;
      v115 = *v27;
      v116 = v28;
      sub_22E47755C(v27, type metadata accessor for SymbolMetadataStore.RelevantSymbol);
      result = sub_22E47755C(v26, type metadata accessor for SymbolMetadataStore.RelevantSymbol);
      v107 = v22;
      v29 = v22 + 2;
      v117 = v25;
      v118 = v19;
      v30 = v24 + v25 * v29;
      while (v19 != v29)
      {
        LODWORD(v119) = v115 < v116;
        v31 = v122;
        sub_22E4774F4(v30, v122, type metadata accessor for SymbolMetadataStore.RelevantSymbol);
        v32 = v6;
        v33 = v123;
        sub_22E4774F4(v5, v123, type metadata accessor for SymbolMetadataStore.RelevantSymbol);
        v34 = *v31;
        v35 = *v33;
        v36 = v33;
        v6 = v32;
        sub_22E47755C(v36, type metadata accessor for SymbolMetadataStore.RelevantSymbol);
        v19 = v118;
        result = sub_22E47755C(v31, type metadata accessor for SymbolMetadataStore.RelevantSymbol);
        ++v29;
        v30 += v117;
        v5 += v117;
        if (((v119 ^ (v35 >= v34)) & 1) == 0)
        {
          v19 = v29 - 1;
          break;
        }
      }

      a3 = v110;
      v9 = v106;
      v22 = v107;
      a4 = v108;
      if (v115 < v116)
      {
        if (v19 < v107)
        {
          goto LABEL_126;
        }

        if (v107 < v19)
        {
          v37 = v117 * (v19 - 1);
          v38 = v19 * v117;
          v118 = v19;
          v39 = v19;
          v40 = v107;
          v41 = v107 * v117;
          do
          {
            if (v40 != --v39)
            {
              v42 = *a3;
              if (!v42)
              {
                goto LABEL_132;
              }

              v5 = v42 + v41;
              sub_22E47748C(v42 + v41, v112, type metadata accessor for SymbolMetadataStore.RelevantSymbol);
              if (v41 < v37 || v5 >= v42 + v38)
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v41 != v37)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              result = sub_22E47748C(v112, v42 + v37, type metadata accessor for SymbolMetadataStore.RelevantSymbol);
              a3 = v110;
            }

            ++v40;
            v37 -= v117;
            v38 -= v117;
            v41 += v117;
          }

          while (v40 < v39);
          v9 = v106;
          v22 = v107;
          a4 = v108;
          v19 = v118;
        }
      }
    }

    v43 = a3[1];
    if (v19 < v43)
    {
      if (__OFSUB__(v19, v22))
      {
        goto LABEL_125;
      }

      if (v19 - v22 < a4)
      {
        if (__OFADD__(v22, a4))
        {
          goto LABEL_127;
        }

        if ((v22 + a4) >= v43)
        {
          v44 = a3[1];
        }

        else
        {
          v44 = v22 + a4;
        }

        if (v44 < v22)
        {
LABEL_128:
          __break(1u);
          goto LABEL_129;
        }

        if (v19 != v44)
        {
          break;
        }
      }
    }

    v45 = v19;
    if (v19 < v22)
    {
      goto LABEL_124;
    }

LABEL_33:
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      v21 = v113;
    }

    else
    {
      result = sub_22E47671C(0, *(v113 + 2) + 1, 1, v113);
      v21 = result;
    }

    a4 = *(v21 + 2);
    v46 = *(v21 + 3);
    v5 = a4 + 1;
    if (a4 >= v46 >> 1)
    {
      result = sub_22E47671C((v46 > 1), a4 + 1, 1, v21);
      v21 = result;
    }

    *(v21 + 2) = v5;
    v47 = &v21[16 * a4];
    *(v47 + 4) = v22;
    *(v47 + 5) = v45;
    v48 = *v109;
    if (!*v109)
    {
      goto LABEL_134;
    }

    v114 = v45;
    if (a4)
    {
      while (1)
      {
        v49 = v5 - 1;
        if (v5 >= 4)
        {
          break;
        }

        if (v5 == 3)
        {
          v50 = *(v21 + 4);
          v51 = *(v21 + 5);
          v60 = __OFSUB__(v51, v50);
          v52 = v51 - v50;
          v53 = v60;
LABEL_52:
          if (v53)
          {
            goto LABEL_113;
          }

          v66 = &v21[16 * v5];
          v68 = *v66;
          v67 = *(v66 + 1);
          v69 = __OFSUB__(v67, v68);
          v70 = v67 - v68;
          v71 = v69;
          if (v69)
          {
            goto LABEL_116;
          }

          v72 = &v21[16 * v49 + 32];
          v74 = *v72;
          v73 = *(v72 + 1);
          v60 = __OFSUB__(v73, v74);
          v75 = v73 - v74;
          if (v60)
          {
            goto LABEL_119;
          }

          if (__OFADD__(v70, v75))
          {
            goto LABEL_120;
          }

          if (v70 + v75 >= v52)
          {
            if (v52 < v75)
            {
              v49 = v5 - 2;
            }

            goto LABEL_73;
          }

          goto LABEL_66;
        }

        v76 = &v21[16 * v5];
        v78 = *v76;
        v77 = *(v76 + 1);
        v60 = __OFSUB__(v77, v78);
        v70 = v77 - v78;
        v71 = v60;
LABEL_66:
        if (v71)
        {
          goto LABEL_115;
        }

        v79 = &v21[16 * v49];
        v81 = *(v79 + 4);
        v80 = *(v79 + 5);
        v60 = __OFSUB__(v80, v81);
        v82 = v80 - v81;
        if (v60)
        {
          goto LABEL_118;
        }

        if (v82 < v70)
        {
          goto LABEL_3;
        }

LABEL_73:
        a4 = v49 - 1;
        if (v49 - 1 >= v5)
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
LABEL_127:
          __break(1u);
          goto LABEL_128;
        }

        if (!*a3)
        {
          goto LABEL_131;
        }

        v87 = v21;
        v88 = *&v21[16 * a4 + 32];
        v5 = *&v21[16 * v49 + 40];
        sub_22E47609C(*a3 + *(v9 + 72) * v88, *a3 + *(v9 + 72) * *&v21[16 * v49 + 32], *a3 + *(v9 + 72) * v5, v48);
        if (v6)
        {
        }

        if (v5 < v88)
        {
          goto LABEL_109;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v87 = sub_22E476624(v87);
        }

        if (a4 >= *(v87 + 2))
        {
          goto LABEL_110;
        }

        v89 = &v87[16 * a4];
        *(v89 + 4) = v88;
        *(v89 + 5) = v5;
        v124 = v87;
        result = sub_22E476598(v49);
        v21 = v124;
        v5 = *(v124 + 16);
        if (v5 <= 1)
        {
          goto LABEL_3;
        }
      }

      v54 = &v21[16 * v5 + 32];
      v55 = *(v54 - 64);
      v56 = *(v54 - 56);
      v60 = __OFSUB__(v56, v55);
      v57 = v56 - v55;
      if (v60)
      {
        goto LABEL_111;
      }

      v59 = *(v54 - 48);
      v58 = *(v54 - 40);
      v60 = __OFSUB__(v58, v59);
      v52 = v58 - v59;
      v53 = v60;
      if (v60)
      {
        goto LABEL_112;
      }

      v61 = &v21[16 * v5];
      v63 = *v61;
      v62 = *(v61 + 1);
      v60 = __OFSUB__(v62, v63);
      v64 = v62 - v63;
      if (v60)
      {
        goto LABEL_114;
      }

      v60 = __OFADD__(v52, v64);
      v65 = v52 + v64;
      if (v60)
      {
        goto LABEL_117;
      }

      if (v65 >= v57)
      {
        v83 = &v21[16 * v49 + 32];
        v85 = *v83;
        v84 = *(v83 + 1);
        v60 = __OFSUB__(v84, v85);
        v86 = v84 - v85;
        if (v60)
        {
          goto LABEL_121;
        }

        if (v52 < v86)
        {
          v49 = v5 - 2;
        }

        goto LABEL_73;
      }

      goto LABEL_52;
    }

LABEL_3:
    v19 = a3[1];
    v20 = v114;
    a4 = v108;
    if (v114 >= v19)
    {
      goto LABEL_95;
    }
  }

  v105 = v6;
  v90 = *a3;
  v91 = *(v9 + 72);
  v92 = *a3 + v91 * (v19 - 1);
  v93 = -v91;
  v107 = v22;
  v94 = v22 - v19;
  v111 = v91;
  v119 = v90;
  v5 = v90 + v19 * v91;
  v114 = v44;
LABEL_85:
  v117 = v92;
  v118 = v19;
  v115 = v5;
  v116 = v94;
  v95 = v92;
  while (1)
  {
    v96 = v122;
    sub_22E4774F4(v5, v122, type metadata accessor for SymbolMetadataStore.RelevantSymbol);
    v97 = v123;
    sub_22E4774F4(v95, v123, type metadata accessor for SymbolMetadataStore.RelevantSymbol);
    a4 = *v96;
    v98 = *v97;
    sub_22E47755C(v97, type metadata accessor for SymbolMetadataStore.RelevantSymbol);
    result = sub_22E47755C(v96, type metadata accessor for SymbolMetadataStore.RelevantSymbol);
    if (v98 >= a4)
    {
LABEL_84:
      v19 = v118 + 1;
      v92 = v117 + v111;
      v94 = v116 - 1;
      v5 = v115 + v111;
      v45 = v114;
      if (v118 + 1 != v114)
      {
        goto LABEL_85;
      }

      v6 = v105;
      v9 = v106;
      a3 = v110;
      v22 = v107;
      if (v114 < v107)
      {
        goto LABEL_124;
      }

      goto LABEL_33;
    }

    if (!v119)
    {
      break;
    }

    a4 = v120;
    sub_22E47748C(v5, v120, type metadata accessor for SymbolMetadataStore.RelevantSymbol);
    swift_arrayInitWithTakeFrontToBack();
    sub_22E47748C(a4, v95, type metadata accessor for SymbolMetadataStore.RelevantSymbol);
    v95 += v93;
    v5 += v93;
    if (__CFADD__(v94++, 1))
    {
      goto LABEL_84;
    }
  }

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
  return result;
}

uint64_t sub_22E47609C(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v46 = type metadata accessor for SymbolMetadataStore.RelevantSymbol(0);
  v8 = *(*(v46 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v46);
  v48 = (&v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  result = MEMORY[0x28223BE20](v9);
  v47 = (&v38 - v12);
  v14 = *(v13 + 72);
  if (!v14)
  {
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v14 == -1)
  {
    goto LABEL_60;
  }

  v15 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v14 == -1)
  {
    goto LABEL_61;
  }

  v16 = (a2 - a1) / v14;
  v51 = a1;
  v50 = a4;
  if (v16 >= v15 / v14)
  {
    v18 = v15 / v14 * v14;
    if (a4 < a2 || a2 + v18 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v26 = a4 + v18;
    if (v18 >= 1)
    {
      v27 = -v14;
      v28 = v26;
      v42 = a1;
      v43 = a4;
      v41 = v27;
      do
      {
        v39 = v26;
        v29 = a2;
        v30 = a2 + v27;
        v44 = v29;
        v45 = v30;
        while (1)
        {
          if (v29 <= a1)
          {
            v51 = v29;
            v49 = v39;
            goto LABEL_58;
          }

          v31 = a3;
          v40 = v26;
          a3 += v27;
          v32 = v28 + v27;
          v33 = v28 + v27;
          v34 = v47;
          sub_22E4774F4(v33, v47, type metadata accessor for SymbolMetadataStore.RelevantSymbol);
          v35 = v48;
          sub_22E4774F4(v30, v48, type metadata accessor for SymbolMetadataStore.RelevantSymbol);
          v36 = *v34;
          v37 = *v35;
          sub_22E47755C(v35, type metadata accessor for SymbolMetadataStore.RelevantSymbol);
          sub_22E47755C(v34, type metadata accessor for SymbolMetadataStore.RelevantSymbol);
          if (v37 < v36)
          {
            break;
          }

          v26 = v32;
          if (v31 < v28 || a3 >= v28)
          {
            swift_arrayInitWithTakeFrontToBack();
            v30 = v45;
            v27 = v41;
            a1 = v42;
          }

          else
          {
            v30 = v45;
            v27 = v41;
            a1 = v42;
            if (v31 != v28)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v28 = v32;
          v29 = v44;
          if (v32 <= v43)
          {
            a2 = v44;
            goto LABEL_57;
          }
        }

        if (v31 < v44 || a3 >= v44)
        {
          a2 = v45;
          swift_arrayInitWithTakeFrontToBack();
          v27 = v41;
          a1 = v42;
          v26 = v40;
        }

        else
        {
          a2 = v45;
          v27 = v41;
          a1 = v42;
          v26 = v40;
          if (v31 != v44)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }
      }

      while (v28 > v43);
    }

LABEL_57:
    v51 = a2;
    v49 = v26;
  }

  else
  {
    v17 = v16 * v14;
    if (a4 < a1 || a1 + v17 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v45 = a4 + v17;
    v49 = a4 + v17;
    if (v17 >= 1 && a2 < a3)
    {
      v44 = a3;
      do
      {
        v20 = v47;
        sub_22E4774F4(a2, v47, type metadata accessor for SymbolMetadataStore.RelevantSymbol);
        v21 = a2;
        v22 = v48;
        sub_22E4774F4(a4, v48, type metadata accessor for SymbolMetadataStore.RelevantSymbol);
        v23 = *v20;
        v24 = *v22;
        sub_22E47755C(v22, type metadata accessor for SymbolMetadataStore.RelevantSymbol);
        sub_22E47755C(v20, type metadata accessor for SymbolMetadataStore.RelevantSymbol);
        if (v24 >= v23)
        {
          if (a1 < a4 || a1 >= a4 + v14)
          {
            swift_arrayInitWithTakeFrontToBack();
            v25 = v44;
            a2 = v21;
          }

          else
          {
            v25 = v44;
            a2 = v21;
            if (a1 != a4)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v50 = a4 + v14;
          a4 += v14;
        }

        else
        {
          a2 = v21 + v14;
          if (a1 < v21 || a1 >= a2)
          {
            swift_arrayInitWithTakeFrontToBack();
            v25 = v44;
          }

          else
          {
            v25 = v44;
            if (a1 != v21)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }
        }

        a1 += v14;
        v51 = a1;
      }

      while (a4 < v45 && a2 < v25);
    }
  }

LABEL_58:
  sub_22E476638(&v51, &v50, &v49);
  return 1;
}

uint64_t sub_22E476598(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_22E476624(v3);
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

uint64_t sub_22E476638(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = type metadata accessor for SymbolMetadataStore.RelevantSymbol(0);
  v7 = *(*(result - 8) + 72);
  if (!v7)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v5 - v4 == 0x8000000000000000 && v7 == -1)
  {
    goto LABEL_17;
  }

  if (v3 < v4 || v3 >= v4 + (v5 - v4) / v7 * v7)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v3 != v4)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

char *sub_22E47671C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA64348, &qword_22E47EC50);
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

char *sub_22E476820(char *a1, int64_t a2, char a3)
{
  result = sub_22E4768E4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_22E476840(char *a1, int64_t a2, char a3)
{
  result = sub_22E476AF4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_22E476860(size_t a1, int64_t a2, char a3)
{
  result = sub_22E476D34(a1, a2, a3, *v3, &qword_27DA64360, &qword_22E47EC68, type metadata accessor for SymbolKey);
  *v3 = result;
  return result;
}

char *sub_22E4768A4(char *a1, int64_t a2, char a3)
{
  result = sub_22E476C14(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_22E4768C4(char *a1, int64_t a2, char a3)
{
  result = sub_22E476F10(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_22E4768E4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA64310, &qword_22E47EA38);
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

char *sub_22E4769F0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA64380, &qword_22E47EC88);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 29;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 2);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[4 * v8])
    {
      memmove(v13, v14, 4 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 4 * v8);
  }

  return v10;
}

char *sub_22E476AF4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA64378, &qword_22E47EC80);
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

char *sub_22E476C14(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA64370, &qword_22E47EC78);
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

size_t sub_22E476D34(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

char *sub_22E476F10(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA64358, &qword_22E47EC60);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t _s9SFSymbols9SymbolKeyO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v26 = sub_22E47CD64();
  v4 = *(v26 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v26);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for SymbolKey(0);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = (&v25 - v13);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA641B8, &qword_22E47EC40);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v15 - 8);
  v19 = &v25 - v18;
  v20 = *(v17 + 56);
  sub_22E4774F4(a1, &v25 - v18, type metadata accessor for SymbolKey);
  sub_22E4774F4(a2, &v19[v20], type metadata accessor for SymbolKey);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_22E4774F4(v19, v14, type metadata accessor for SymbolKey);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v22 = *v14 == *&v19[v20];
      goto LABEL_6;
    }

LABEL_8:
    sub_22E4545D0(v19, &qword_27DA641B8, &qword_22E47EC40);
    v22 = 0;
    return v22 & 1;
  }

  sub_22E4774F4(v19, v12, type metadata accessor for SymbolKey);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    (*(v4 + 8))(v12, v26);
    goto LABEL_8;
  }

  v21 = v26;
  (*(v4 + 32))(v7, &v19[v20], v26);
  v22 = sub_22E47CD54();
  v23 = *(v4 + 8);
  v23(v7, v21);
  v23(v12, v21);
LABEL_6:
  sub_22E47755C(v19, type metadata accessor for SymbolKey);
  return v22 & 1;
}

uint64_t sub_22E4773AC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA64328, &qword_22E47EAB0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22E47741C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA64330, &qword_22E47EAB8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_22E47748C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_22E4774F4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_22E47755C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_22E4775D8(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(a1 + 8);
  (*a1)(&v5, v2);
  return v5;
}

uint64_t sub_22E477668(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_22E477700()
{
  result = sub_22E47CD64();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_s7UnicodeO6ScalarVSiSgIegyd_Sg(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy160_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  result = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 144);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = v8;
  *(a1 + 96) = result;
  *(a1 + 112) = v7;
  return result;
}

uint64_t sub_22E4777B0(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 160))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_22E4777F8(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_22E477870(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x2318E6E30](v2, MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_22E460A90(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_22E477908(uint64_t a1)
{
  v2 = type metadata accessor for SymbolKey(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v15 - v8;
  v10 = *(a1 + 16);
  v11 = sub_22E477668(&qword_27DA63F40, type metadata accessor for SymbolKey);
  result = MEMORY[0x2318E6E30](v10, v2, v11);
  v16 = result;
  if (v10)
  {
    v13 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v14 = *(v3 + 72);
    do
    {
      sub_22E4774F4(v13, v7, type metadata accessor for SymbolKey);
      sub_22E460CD8(v9, v7);
      sub_22E47755C(v9, type metadata accessor for SymbolKey);
      v13 += v14;
      --v10;
    }

    while (v10);
    return v16;
  }

  return result;
}

uint64_t sub_22E477AB8(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22E477AF0(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(a1 + 24);
  return (*(a1 + 16))(v2) & 1;
}

uint64_t sub_22E477B2C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CustomSymbol();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_22E477BB8()
{
  result = type metadata accessor for SymbolMetadata(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_22E477C50(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v6 = *v3++;
    v5 = v6;
    v7 = *v4++;
    result = v5 == v7;
    if (v5 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22E477CAC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (sub_22E47D054() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t static Crypton.encryptObfuscateFontTable(tableTag:from:)(CTFontTableTag table, CTFontRef font)
{
  v2 = CTFontCopyTable(font, table, 0);
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = sub_22E47CD34();
  v6 = v5;

  result = sub_22E450CF4(0, v4, v6);
  if (v8 >> 60 != 15)
  {
    v9 = result;
    sub_22E451DD0(v4, v6);
    return v9;
  }

  __break(1u);
  return result;
}

uint64_t static Crypton.decryptObfuscatedFontTable(tableTag:from:)(CTFontTableTag table, CTFontRef font)
{
  v2 = CTFontCopyTable(font, table, 0);
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = sub_22E47CD34();
  v6 = v5;

  v7 = sub_22E450CF4(1, v4, v6);
  sub_22E451DD0(v4, v6);
  return v7;
}

uint64_t private_name_aliases.getter()
{
  if (qword_280AC2DD0 != -1)
  {
    swift_once();
  }
}

SFSymbols::Version __swiftcall Version.init(major:minor:patch:)(Swift::Int major, Swift::Int minor, Swift::Int patch)
{
  *v3 = major;
  v3[1] = minor;
  v3[2] = patch;
  result.patch = patch;
  result.minor = minor;
  result.major = major;
  return result;
}

uint64_t Version.encode(to:)(void *a1)
{
  v5 = *v1;
  v2 = *(v1 + 2);
  v3 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22E47D154();
  Version.description.getter();
  __swift_mutable_project_boxed_opaque_existential_1(v6, v6[3]);
  sub_22E47D074();

  return __swift_destroy_boxed_opaque_existential_1(v6);
}

uint64_t Version.description.getter()
{
  v38 = *MEMORY[0x277D85DE8];
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA643A0, &qword_22E47ECB8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22E47E790;
  *(inited + 32) = v1;
  *(inited + 40) = v2;
  if (v3)
  {
    v5 = sub_22E453EF8(1, 3, 1, inited);
    v6 = 3;
    inited = v5;
    *(v5 + 2) = 3;
    *(v5 + 6) = v3;
  }

  else
  {
    v6 = 2;
  }

  v35 = MEMORY[0x277D84F90];
  sub_22E476820(0, v6, 0);
  v7 = v35;
  v32 = *(inited + 32);
  v8 = sub_22E47D044();
  v11 = *(v35 + 16);
  v10 = *(v35 + 24);
  if (v11 >= v10 >> 1)
  {
    v26 = v8;
    v27 = v9;
    sub_22E476820((v10 > 1), v11 + 1, 1);
    v9 = v27;
    v8 = v26;
    v7 = v35;
  }

  *(v7 + 16) = v11 + 1;
  v12 = v7 + 16 * v11;
  *(v12 + 32) = v8;
  *(v12 + 40) = v9;
  v33 = *(inited + 40);
  v13 = sub_22E47D044();
  v36 = v7;
  v16 = *(v7 + 16);
  v15 = *(v7 + 24);
  if (v16 >= v15 >> 1)
  {
    v28 = v13;
    v29 = v14;
    sub_22E476820((v15 > 1), v16 + 1, 1);
    v14 = v29;
    v13 = v28;
    v7 = v36;
  }

  *(v7 + 16) = v16 + 1;
  v17 = v7 + 16 * v16;
  *(v17 + 32) = v13;
  *(v17 + 40) = v14;
  if (v3)
  {
    v34 = *(inited + 48);
    v18 = sub_22E47D044();
    v37 = v7;
    v21 = *(v7 + 16);
    v20 = *(v7 + 24);
    if (v21 >= v20 >> 1)
    {
      v30 = v18;
      v31 = v19;
      sub_22E476820((v20 > 1), v21 + 1, 1);
      v19 = v31;
      v18 = v30;
      v7 = v37;
    }

    *(v7 + 16) = v21 + 1;
    v22 = v7 + 16 * v21;
    *(v22 + 32) = v18;
    *(v22 + 40) = v19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA64150, &qword_22E47EA40);
  sub_22E46D0D4();
  v23 = sub_22E47CD94();

  v24 = *MEMORY[0x277D85DE8];
  return v23;
}

BOOL static Version.< infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  v5 = a2[1];
  v6 = v3 == v5;
  v7 = v3 < v5;
  if (v6)
  {
    v7 = a1[2] < a2[2];
  }

  v6 = v2 == v4;
  v8 = v2 < v4;
  if (v6)
  {
    return v7;
  }

  else
  {
    return v8;
  }
}

uint64_t Version.hash(into:)()
{
  v1 = v0[1];
  v2 = v0[2];
  MEMORY[0x2318E7080](*v0);
  MEMORY[0x2318E7080](v1);
  return MEMORY[0x2318E7080](v2);
}

uint64_t Version.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_22E47D0F4();
  MEMORY[0x2318E7080](v1);
  MEMORY[0x2318E7080](v2);
  MEMORY[0x2318E7080](v3);
  return sub_22E47D124();
}

uint64_t sub_22E478374()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_22E47D0F4();
  MEMORY[0x2318E7080](v1);
  MEMORY[0x2318E7080](v2);
  MEMORY[0x2318E7080](v3);
  return sub_22E47D124();
}

uint64_t sub_22E4783E0()
{
  v1 = v0[1];
  v2 = v0[2];
  MEMORY[0x2318E7080](*v0);
  MEMORY[0x2318E7080](v1);
  return MEMORY[0x2318E7080](v2);
}

uint64_t sub_22E478428()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_22E47D0F4();
  MEMORY[0x2318E7080](v1);
  MEMORY[0x2318E7080](v2);
  MEMORY[0x2318E7080](v3);
  return sub_22E47D124();
}

BOOL sub_22E478490(void *a1, void *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  v4 = v2 == v3;
  v5 = v2 < v3;
  if (v4)
  {
    v5 = a1[2] < a2[2];
  }

  if (*a1 == *a2)
  {
    return v5;
  }

  else
  {
    return *a1 < *a2;
  }
}

BOOL sub_22E4784C8(void *a1, void *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  v4 = v3 == v2;
  v5 = v3 < v2;
  if (v4)
  {
    v5 = a2[2] < a1[2];
  }

  if (*a2 == *a1)
  {
    v6 = v5;
  }

  else
  {
    v6 = *a2 < *a1;
  }

  return !v6;
}

BOOL sub_22E478504(void *a1, void *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  v4 = v2 == v3;
  v5 = v2 < v3;
  if (v4)
  {
    v5 = a1[2] < a2[2];
  }

  if (*a1 == *a2)
  {
    v6 = v5;
  }

  else
  {
    v6 = *a1 < *a2;
  }

  return !v6;
}

BOOL sub_22E478540(void *a1, void *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  v4 = v3 == v2;
  v5 = v3 < v2;
  if (v4)
  {
    v5 = a2[2] < a1[2];
  }

  if (*a2 == *a1)
  {
    return v5;
  }

  else
  {
    return *a2 < *a1;
  }
}

unint64_t sub_22E4785C4(unint64_t result, char a2, uint64_t a3)
{
  if (a2)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*(a3 + 16) > result)
    {
      return result;
    }

    __break(1u);
  }

  return result;
}

char *sub_22E4785E4(int64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v1 = v3;
  if (!result || a1 > *(v3 + 24) >> 1)
  {
    if (*(v3 + 16) <= a1)
    {
      v5 = a1;
    }

    else
    {
      v5 = *(v3 + 16);
    }

    return sub_22E476820(result, v5, 0);
  }

  return result;
}

void *sub_22E47865C(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA64310, &qword_22E47EA38);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 17;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 4);
  return result;
}

char *sub_22E4786E0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA64310, &qword_22E47EA38);
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

void *sub_22E4787EC(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DA643E0, &qword_22E47EED0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA64150, &qword_22E47EA40);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_22E478920(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA643D8, &qword_22E47EEC8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 104);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[104 * v8])
    {
      memmove(v12, v13, 104 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_22E478A48(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA64380, &qword_22E47EC88);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 29;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 2);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[4 * v8])
    {
      memmove(v13, v14, 4 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 4 * v8);
  }

  return v10;
}

char *sub_22E478B4C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA643D0, &qword_22E47EEC0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 29;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 2);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[4 * v8])
    {
      memmove(v13, v14, 4 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 4 * v8);
  }

  return v10;
}

size_t sub_22E478CC8(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

void *sub_22E478ECC(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = a4[3];
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = a4[2];
  if (v9 <= v10)
  {
    v11 = a4[2];
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 - 17;
    }

    v12[2] = v10;
    v12[3] = 2 * (v14 >> 4);
  }

  else
  {
    v12 = MEMORY[0x277D84F90];
  }

  if (v7)
  {
    if (v12 != a4 || v12 + 4 >= &a4[2 * v10 + 4])
    {
      memmove(v12 + 4, a4 + 4, 16 * v10);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA643B0, &qword_22E47EEA0);
    swift_arrayInitWithCopy();
  }

  return v12;
}

char *sub_22E478FF8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA64358, &qword_22E47EC60);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

unsigned __int8 *sub_22E479104(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62 = a1;
  v63 = a2;

  result = sub_22E47CE84();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_22E479D74();
    v35 = v34;

    v5 = v35;
    if ((v35 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_22E47CFA4();
      v7 = v61;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v19 = v7 - 1;
        if (v19)
        {
          v20 = a3 + 48;
          v21 = a3 + 55;
          v22 = a3 + 87;
          if (a3 > 10)
          {
            v20 = 58;
          }

          else
          {
            v22 = 97;
            v21 = 65;
          }

          if (result)
          {
            v13 = 0;
            v23 = result + 1;
            do
            {
              v24 = *v23;
              if (v24 < 0x30 || v24 >= v20)
              {
                if (v24 < 0x41 || v24 >= v21)
                {
                  v17 = 0;
                  if (v24 < 0x61 || v24 >= v22)
                  {
                    goto LABEL_127;
                  }

                  v25 = -87;
                }

                else
                {
                  v25 = -55;
                }
              }

              else
              {
                v25 = -48;
              }

              v26 = v13 * a3;
              if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
              {
                goto LABEL_126;
              }

              v13 = v26 + (v24 + v25);
              if (__OFADD__(v26, (v24 + v25)))
              {
                goto LABEL_126;
              }

              ++v23;
              --v19;
            }

            while (v19);
LABEL_46:
            v17 = v13;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v17 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v27 = a3 + 48;
        v28 = a3 + 55;
        v29 = a3 + 87;
        if (a3 > 10)
        {
          v27 = 58;
        }

        else
        {
          v29 = 97;
          v28 = 65;
        }

        if (result)
        {
          v30 = 0;
          do
          {
            v31 = *result;
            if (v31 < 0x30 || v31 >= v27)
            {
              if (v31 < 0x41 || v31 >= v28)
              {
                v17 = 0;
                if (v31 < 0x61 || v31 >= v29)
                {
                  goto LABEL_127;
                }

                v32 = -87;
              }

              else
              {
                v32 = -55;
              }
            }

            else
            {
              v32 = -48;
            }

            v33 = v30 * a3;
            if ((v30 * a3) >> 64 != (v30 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v30 = v33 + (v31 + v32);
            if (__OFADD__(v33, (v31 + v32)))
            {
              goto LABEL_126;
            }

            ++result;
            --v7;
          }

          while (v7);
          v17 = v33 + (v31 + v32);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          v13 = 0;
          v14 = result + 1;
          while (1)
          {
            v15 = *v14;
            if (v15 < 0x30 || v15 >= v10)
            {
              if (v15 < 0x41 || v15 >= v11)
              {
                v17 = 0;
                if (v15 < 0x61 || v15 >= v12)
                {
                  goto LABEL_127;
                }

                v16 = -87;
              }

              else
              {
                v16 = -55;
              }
            }

            else
            {
              v16 = -48;
            }

            v18 = v13 * a3;
            if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v13 = v18 - (v15 + v16);
            if (__OFSUB__(v18, (v15 + v16)))
            {
              goto LABEL_126;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v17 = 0;
LABEL_127:

        return v17;
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v36 = HIBYTE(v5) & 0xF;
  v62 = v6;
  v63 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v36)
      {
        v38 = 0;
        v54 = a3 + 48;
        v55 = a3 + 55;
        v56 = a3 + 87;
        if (a3 > 10)
        {
          v54 = 58;
        }

        else
        {
          v56 = 97;
          v55 = 65;
        }

        v57 = &v62;
        while (1)
        {
          v58 = *v57;
          if (v58 < 0x30 || v58 >= v54)
          {
            if (v58 < 0x41 || v58 >= v55)
            {
              v17 = 0;
              if (v58 < 0x61 || v58 >= v56)
              {
                goto LABEL_127;
              }

              v59 = -87;
            }

            else
            {
              v59 = -55;
            }
          }

          else
          {
            v59 = -48;
          }

          v60 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v60 + (v58 + v59);
          if (__OFADD__(v60, (v58 + v59)))
          {
            goto LABEL_126;
          }

          v57 = (v57 + 1);
          if (!--v36)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v36)
    {
      v37 = v36 - 1;
      if (v37)
      {
        v38 = 0;
        v39 = a3 + 48;
        v40 = a3 + 55;
        v41 = a3 + 87;
        if (a3 > 10)
        {
          v39 = 58;
        }

        else
        {
          v41 = 97;
          v40 = 65;
        }

        v42 = &v62 + 1;
        while (1)
        {
          v43 = *v42;
          if (v43 < 0x30 || v43 >= v39)
          {
            if (v43 < 0x41 || v43 >= v40)
            {
              v17 = 0;
              if (v43 < 0x61 || v43 >= v41)
              {
                goto LABEL_127;
              }

              v44 = -87;
            }

            else
            {
              v44 = -55;
            }
          }

          else
          {
            v44 = -48;
          }

          v45 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v45 - (v43 + v44);
          if (__OFSUB__(v45, (v43 + v44)))
          {
            goto LABEL_126;
          }

          ++v42;
          if (!--v37)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v36)
  {
    v46 = v36 - 1;
    if (v46)
    {
      v38 = 0;
      v47 = a3 + 48;
      v48 = a3 + 55;
      v49 = a3 + 87;
      if (a3 > 10)
      {
        v47 = 58;
      }

      else
      {
        v49 = 97;
        v48 = 65;
      }

      v50 = &v62 + 1;
      do
      {
        v51 = *v50;
        if (v51 < 0x30 || v51 >= v47)
        {
          if (v51 < 0x41 || v51 >= v48)
          {
            v17 = 0;
            if (v51 < 0x61 || v51 >= v49)
            {
              goto LABEL_127;
            }

            v52 = -87;
          }

          else
          {
            v52 = -55;
          }
        }

        else
        {
          v52 = -48;
        }

        v53 = v38 * a3;
        if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
        {
          goto LABEL_126;
        }

        v38 = v53 + (v51 + v52);
        if (__OFADD__(v53, (v51 + v52)))
        {
          goto LABEL_126;
        }

        ++v50;
        --v46;
      }

      while (v46);
LABEL_125:
      v17 = v38;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

unint64_t sub_22E479690()
{
  result = qword_27DA64398;
  if (!qword_27DA64398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA64398);
  }

  return result;
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

unint64_t sub_22E479734()
{
  result = qword_27DA63F50;
  if (!qword_27DA63F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA63F50);
  }

  return result;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for Version(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 24))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for Version(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 24) = v3;
  return result;
}

unsigned __int8 *sub_22E4797F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v70 = a1;
  v71 = a2;

  result = sub_22E47CE84();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_22E479D74();
    v40 = v39;

    v5 = v40;
    if ((v40 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_22E47CFA4();
      v7 = v69;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v22 = v7 - 1;
        if (v22)
        {
          v23 = a3 + 48;
          v24 = a3 + 55;
          v25 = a3 + 87;
          if (a3 > 10)
          {
            v23 = 58;
          }

          else
          {
            v25 = 97;
            v24 = 65;
          }

          if (result)
          {
            v13 = 0;
            v26 = result + 1;
            v15 = 1;
            do
            {
              v27 = *v26;
              if (v27 < 0x30 || v27 >= v23)
              {
                if (v27 < 0x41 || v27 >= v24)
                {
                  v18 = 0;
                  if (v27 < 0x61 || v27 >= v25)
                  {
                    goto LABEL_129;
                  }

                  v28 = -87;
                }

                else
                {
                  v28 = -55;
                }
              }

              else
              {
                v28 = -48;
              }

              v29 = v13 * a3;
              if ((v29 & 0xFFFFFFFF00000000) != 0)
              {
                goto LABEL_128;
              }

              v30 = v27 + v28;
              v21 = __CFADD__(v29, v30);
              v13 = v29 + v30;
              if (v21)
              {
                goto LABEL_128;
              }

              ++v26;
              --v22;
            }

            while (v22);
LABEL_47:
            v15 = 0;
            v18 = v13;
            goto LABEL_129;
          }

          goto LABEL_67;
        }

LABEL_128:
        v18 = 0;
        v15 = 1;
        goto LABEL_129;
      }

      goto LABEL_133;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v31 = a3 + 48;
        v32 = a3 + 55;
        v33 = a3 + 87;
        if (a3 > 10)
        {
          v31 = 58;
        }

        else
        {
          v33 = 97;
          v32 = 65;
        }

        if (result)
        {
          v34 = 0;
          v15 = 1;
          do
          {
            v35 = *result;
            if (v35 < 0x30 || v35 >= v31)
            {
              if (v35 < 0x41 || v35 >= v32)
              {
                v18 = 0;
                if (v35 < 0x61 || v35 >= v33)
                {
                  goto LABEL_129;
                }

                v36 = -87;
              }

              else
              {
                v36 = -55;
              }
            }

            else
            {
              v36 = -48;
            }

            v37 = v34 * a3;
            if ((v37 & 0xFFFFFFFF00000000) != 0)
            {
              goto LABEL_128;
            }

            v38 = v35 + v36;
            v21 = __CFADD__(v37, v38);
            v34 = v37 + v38;
            if (v21)
            {
              goto LABEL_128;
            }

            ++result;
            --v7;
          }

          while (v7);
          v15 = 0;
          v18 = v34;
          goto LABEL_129;
        }

        goto LABEL_67;
      }

      goto LABEL_128;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          v13 = 0;
          v14 = result + 1;
          v15 = 1;
          while (1)
          {
            v16 = *v14;
            if (v16 < 0x30 || v16 >= v10)
            {
              if (v16 < 0x41 || v16 >= v11)
              {
                v18 = 0;
                if (v16 < 0x61 || v16 >= v12)
                {
                  goto LABEL_129;
                }

                v17 = -87;
              }

              else
              {
                v17 = -55;
              }
            }

            else
            {
              v17 = -48;
            }

            v19 = v13 * a3;
            if ((v19 & 0xFFFFFFFF00000000) != 0)
            {
              goto LABEL_128;
            }

            v20 = v16 + v17;
            v21 = v19 >= v20;
            v13 = v19 - v20;
            if (!v21)
            {
              goto LABEL_128;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_47;
            }
          }
        }

LABEL_67:
        v18 = 0;
        v15 = 0;
LABEL_129:

        LOBYTE(v70) = v15;
        return (v18 | (v15 << 32));
      }

      goto LABEL_128;
    }

    __break(1u);
LABEL_132:
    __break(1u);
LABEL_133:
    __break(1u);
    goto LABEL_134;
  }

  v41 = HIBYTE(v5) & 0xF;
  v70 = v6;
  v71 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v41)
      {
        v43 = 0;
        v61 = a3 + 48;
        v62 = a3 + 55;
        v63 = a3 + 87;
        if (a3 > 10)
        {
          v61 = 58;
        }

        else
        {
          v63 = 97;
          v62 = 65;
        }

        v64 = &v70;
        v15 = 1;
        while (1)
        {
          v65 = *v64;
          if (v65 < 0x30 || v65 >= v61)
          {
            if (v65 < 0x41 || v65 >= v62)
            {
              v18 = 0;
              if (v65 < 0x61 || v65 >= v63)
              {
                goto LABEL_129;
              }

              v66 = -87;
            }

            else
            {
              v66 = -55;
            }
          }

          else
          {
            v66 = -48;
          }

          v67 = v43 * a3;
          if ((v67 & 0xFFFFFFFF00000000) != 0)
          {
            goto LABEL_128;
          }

          v68 = v65 + v66;
          v21 = __CFADD__(v67, v68);
          v43 = v67 + v68;
          if (v21)
          {
            goto LABEL_128;
          }

          v64 = (v64 + 1);
          if (!--v41)
          {
            goto LABEL_127;
          }
        }
      }

      goto LABEL_128;
    }

    if (v41)
    {
      v42 = v41 - 1;
      if (v42)
      {
        v43 = 0;
        v44 = a3 + 48;
        v45 = a3 + 55;
        v46 = a3 + 87;
        if (a3 > 10)
        {
          v44 = 58;
        }

        else
        {
          v46 = 97;
          v45 = 65;
        }

        v47 = &v70 + 1;
        v15 = 1;
        while (1)
        {
          v48 = *v47;
          if (v48 < 0x30 || v48 >= v44)
          {
            if (v48 < 0x41 || v48 >= v45)
            {
              v18 = 0;
              if (v48 < 0x61 || v48 >= v46)
              {
                goto LABEL_129;
              }

              v49 = -87;
            }

            else
            {
              v49 = -55;
            }
          }

          else
          {
            v49 = -48;
          }

          v50 = v43 * a3;
          if ((v50 & 0xFFFFFFFF00000000) != 0)
          {
            goto LABEL_128;
          }

          v51 = v48 + v49;
          v21 = v50 >= v51;
          v43 = v50 - v51;
          if (!v21)
          {
            goto LABEL_128;
          }

          ++v47;
          if (!--v42)
          {
            goto LABEL_127;
          }
        }
      }

      goto LABEL_128;
    }

    goto LABEL_132;
  }

  if (v41)
  {
    v52 = v41 - 1;
    if (v52)
    {
      v43 = 0;
      v53 = a3 + 48;
      v54 = a3 + 55;
      v55 = a3 + 87;
      if (a3 > 10)
      {
        v53 = 58;
      }

      else
      {
        v55 = 97;
        v54 = 65;
      }

      v56 = &v70 + 1;
      v15 = 1;
      do
      {
        v57 = *v56;
        if (v57 < 0x30 || v57 >= v53)
        {
          if (v57 < 0x41 || v57 >= v54)
          {
            v18 = 0;
            if (v57 < 0x61 || v57 >= v55)
            {
              goto LABEL_129;
            }

            v58 = -87;
          }

          else
          {
            v58 = -55;
          }
        }

        else
        {
          v58 = -48;
        }

        v59 = v43 * a3;
        if ((v59 & 0xFFFFFFFF00000000) != 0)
        {
          goto LABEL_128;
        }

        v60 = v57 + v58;
        v21 = __CFADD__(v59, v60);
        v43 = v59 + v60;
        if (v21)
        {
          goto LABEL_128;
        }

        ++v56;
        --v52;
      }

      while (v52);
LABEL_127:
      v15 = 0;
      v18 = v43;
      goto LABEL_129;
    }

    goto LABEL_128;
  }

LABEL_134:
  __break(1u);
  return result;
}