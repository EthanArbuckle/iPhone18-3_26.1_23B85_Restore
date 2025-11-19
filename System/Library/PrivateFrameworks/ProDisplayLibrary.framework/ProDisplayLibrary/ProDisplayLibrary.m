__n128 __swift_memcpy96_16(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = result;
  *(a1 + 48) = v4;
  return result;
}

uint64_t sub_25F74F858(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 96))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_25F74F878(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
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

  *(result + 96) = v3;
  return result;
}

uint64_t sub_25F74F9C4()
{
  sub_25F822DCC();
  swift_getWitnessTable();
  sub_25F8221AC();
  return sub_25F822E0C();
}

void *sub_25F74FAA4@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_25F74FB28(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CFString(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_25F74FB78(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_25F74FB98(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
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

  *(result + 4) = v3;
  return result;
}

void sub_25F74FBD4(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t sub_25F74FC20(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (!v1)
  {
    return v2;
  }

  v24 = MEMORY[0x277D84F90];
  sub_25F817BC8(0, v1, 0);
  v2 = v24;
  v4 = a1 + 56;
  result = sub_25F82289C();
  if (result < 0 || (v6 = result, result >= 1 << *(a1 + 32)))
  {
LABEL_23:
    __break(1u);
  }

  else
  {
    v7 = *(a1 + 36);
    v21 = v1;
    v8 = 1;
    while (1)
    {
      v9 = v6 >> 6;
      if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
      {
        break;
      }

      v22 = v8;
      v23 = v7;
      result = sub_25F8229FC();
      v11 = *(v24 + 16);
      v10 = *(v24 + 24);
      if (v11 >= v10 >> 1)
      {
        result = sub_25F817BC8((v10 > 1), v11 + 1, 1);
      }

      *(v24 + 16) = v11 + 1;
      v12 = v24 + 16 * v11;
      *(v12 + 32) = 0;
      *(v12 + 40) = 0xE000000000000000;
      v13 = 1 << *(a1 + 32);
      if (v6 >= v13)
      {
        goto LABEL_25;
      }

      v4 = a1 + 56;
      v14 = *(a1 + 56 + 8 * v9);
      if ((v14 & (1 << v6)) == 0)
      {
        goto LABEL_26;
      }

      if (v23 != *(a1 + 36))
      {
        goto LABEL_27;
      }

      v15 = v14 & (-2 << (v6 & 0x3F));
      if (v15)
      {
        v6 = __clz(__rbit64(v15)) | v6 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v16 = v9 << 6;
        v17 = v9 + 1;
        v18 = (a1 + 64 + 8 * v9);
        while (v17 < (v13 + 63) >> 6)
        {
          v20 = *v18++;
          v19 = v20;
          v16 += 64;
          ++v17;
          if (v20)
          {
            result = sub_25F7617C8(v6, v23, 0);
            v6 = __clz(__rbit64(v19)) + v16;
            goto LABEL_18;
          }
        }

        result = sub_25F7617C8(v6, v23, 0);
        v6 = v13;
      }

LABEL_18:
      if (v22 == v21)
      {
        return v2;
      }

      if ((v6 & 0x8000000000000000) == 0)
      {
        v7 = *(a1 + 36);
        v8 = v22 + 1;
        if (v6 < 1 << *(a1 + 32))
        {
          continue;
        }
      }

      goto LABEL_23;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_25F74FEA8(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFBB0);
  v32 = *(v3 - 8);
  MEMORY[0x28223BE20](v3 - 8);
  v31 = &v26 - v4;
  v5 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v5)
  {
    v26 = v1;
    v35 = MEMORY[0x277D84F90];
    sub_25F817D48(0, v5, 0);
    v34 = v35;
    v7 = a1 + 64;
    result = sub_25F82289C();
    v8 = result;
    v9 = 0;
    v27 = a1 + 72;
    v30 = xmmword_25F823D00;
    v28 = v5;
    v29 = a1 + 64;
    while ((v8 & 0x8000000000000000) == 0 && v8 < 1 << *(a1 + 32))
    {
      v12 = v8 >> 6;
      if ((*(v7 + 8 * (v8 >> 6)) & (1 << v8)) == 0)
      {
        goto LABEL_22;
      }

      v33 = *(a1 + 36);
      v13 = v31;
      sub_25F76183C(*(a1 + 48) + *(v32 + 72) * v8, v31, &qword_27FDAFBB0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFC08);
      v14 = swift_allocObject();
      *(v14 + 16) = v30;
      *(v14 + 32) = sub_25F82215C();
      *(v14 + 34) = sub_25F82215C() >> 16;
      *(v14 + 35) = sub_25F82215C() >> 24;
      result = sub_25F760F44(v13, &qword_27FDAFBB0);
      v15 = v34;
      v35 = v34;
      v16 = a1;
      v18 = *(v34 + 16);
      v17 = *(v34 + 24);
      if (v18 >= v17 >> 1)
      {
        result = sub_25F817D48((v17 > 1), v18 + 1, 1);
        v15 = v35;
      }

      *(v15 + 16) = v18 + 1;
      *(v15 + 8 * v18 + 32) = v14;
      v10 = 1 << *(v16 + 32);
      if (v8 >= v10)
      {
        goto LABEL_23;
      }

      v7 = v29;
      v19 = *(v29 + 8 * v12);
      if ((v19 & (1 << v8)) == 0)
      {
        goto LABEL_24;
      }

      a1 = v16;
      v34 = v15;
      if (v33 != *(v16 + 36))
      {
        goto LABEL_25;
      }

      v20 = v19 & (-2 << (v8 & 0x3F));
      if (v20)
      {
        v10 = __clz(__rbit64(v20)) | v8 & 0x7FFFFFFFFFFFFFC0;
        v11 = v28;
      }

      else
      {
        v21 = v12 << 6;
        v22 = v12 + 1;
        v11 = v28;
        v23 = (v27 + 8 * v12);
        while (v22 < (v10 + 63) >> 6)
        {
          v25 = *v23++;
          v24 = v25;
          v21 += 64;
          ++v22;
          if (v25)
          {
            result = sub_25F7617C8(v8, v33, 0);
            v10 = __clz(__rbit64(v24)) + v21;
            goto LABEL_4;
          }
        }

        result = sub_25F7617C8(v8, v33, 0);
      }

LABEL_4:
      ++v9;
      v8 = v10;
      if (v9 == v11)
      {
        return v34;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t ProDisplay.init(vendor:model:containerId:overrideDataStore:doAsRoot:)@<X0>(int a1@<W0>, unsigned int a2@<W1>, uint64_t a3@<X2>, char *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFB98);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = v24 - v16;
  ProDisplay.init(vendor:model:containerId:doAsRoot:testing:)(a1, a2, a3, a4, a6, 0, v24 - v16);
  result = sub_25F760F44(a5, &qword_27FDAFBA0);
  if (!v7)
  {
    v19 = type metadata accessor for ProDisplay(0);
    v20 = (*(v19 - 8) + 48);
    v21 = (*v20)(v17, 1, v19);
    v22 = (v20 + 1);
    if (v21)
    {
      sub_25F760F44(v17, &qword_27FDAFB98);
      v23 = 1;
    }

    else
    {
      sub_25F75D050(v17, a7, type metadata accessor for ProDisplay);
      v23 = 0;
    }

    return (*v22)(a7, v23, 1, v19);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t ProDisplay.init(vendor:model:containerId:doAsRoot:testing:)@<X0>(int a1@<W0>, unsigned int a2@<W1>, uint64_t a3@<X2>, char *a4@<X3>, uint64_t a5@<X4>, int a6@<W5>, uint64_t a7@<X8>)
{
  v190 = a6;
  v164 = a5;
  v179 = a4;
  v167 = a3;
  v10 = type metadata accessor for ProData();
  MEMORY[0x28223BE20](v10 - 8);
  v172 = &v157 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFBA8);
  v183 = *(v12 - 8);
  v184 = v12;
  MEMORY[0x28223BE20](v12);
  v14 = &v157 - v13;
  v15 = type metadata accessor for Preset(0);
  v165 = *(v15 - 8);
  MEMORY[0x28223BE20](v15 - 8);
  v186 = &v157 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v171 = type metadata accessor for PrefsDataStore(0);
  MEMORY[0x28223BE20](v171);
  v169 = &v157 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFBB0);
  v185 = *(v18 - 8);
  v19 = MEMORY[0x28223BE20](v18 - 8);
  v161 = &v157 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v168 = &v157 - v21;
  v22 = sub_25F8221EC();
  v181 = *(v22 - 8);
  v182 = v22;
  v23 = MEMORY[0x28223BE20](v22);
  v162 = &v157 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x28223BE20](v23);
  v158 = &v157 - v26;
  v27 = MEMORY[0x28223BE20](v25);
  boxed_opaque_existential_1 = (&v157 - v28);
  v29 = MEMORY[0x28223BE20](v27);
  v160 = &v157 - v30;
  v31 = MEMORY[0x28223BE20](v29);
  v163 = &v157 - v32;
  v33 = MEMORY[0x28223BE20](v31);
  v159 = &v157 - v34;
  v35 = MEMORY[0x28223BE20](v33);
  v174 = &v157 - v36;
  MEMORY[0x28223BE20](v35);
  v38 = &v157 - v37;
  v39 = type metadata accessor for ProDisplay(0);
  v176 = *(v39 - 8);
  MEMORY[0x28223BE20](v39);
  v41 = (&v157 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0));
  v42 = a1;
  LODWORD(v178) = a2;
  v43 = sub_25F7F21B8(a1, a2);
  v177 = v39;
  if (!v43)
  {

    *&v187 = 0;
    *(&v187 + 1) = 0xE000000000000000;
    sub_25F82292C();
    MEMORY[0x25F8E7510](0x203A726F646E6576, 0xE800000000000000);
    LODWORD(v191) = a1;
    sub_25F751CA4();
    v62 = sub_25F8224AC();
    MEMORY[0x25F8E7510](v62);

    MEMORY[0x25F8E7510](0x203A6C65646F6D20, 0xE800000000000000);
    LODWORD(v191) = v178;
    v63 = sub_25F8224AC();
    MEMORY[0x25F8E7510](v63);

    MEMORY[0x25F8E7510](0xD000000000000028, 0x800000025F82C500);
    v64 = v187;
    sub_25F8221DC();

    v65 = sub_25F8221CC();
    v66 = sub_25F8226AC();

    if (os_log_type_enabled(v65, v66))
    {
      v67 = swift_slowAlloc();
      v68 = swift_slowAlloc();
      *&v187 = v68;
      *v67 = 136315138;
      *(v67 + 4) = sub_25F75CA94(v64, *(&v64 + 1), &v187);
      _os_log_impl(&dword_25F74E000, v65, v66, "%s", v67, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v68);
      MEMORY[0x25F8E88D0](v68, -1, -1);
      MEMORY[0x25F8E88D0](v67, -1, -1);
    }

    (*(v181 + 8))(v38, v182);

    v69 = v176;
    return (*(v69 + 56))(a7, 1, 1, v177);
  }

  v45 = v43;
  v46 = v44;
  v170 = a7;
  v47 = *(v39 + 24);
  v166 = v41;
  v48 = (v41 + v47);
  *v48 = v43;
  v48[1] = v44;
  *&v187 = 0;
  *(&v187 + 1) = 0xE000000000000000;
  sub_25F82292C();
  MEMORY[0x25F8E7510](0x203A726F646E6576, 0xE800000000000000);
  LODWORD(v191) = v42;
  sub_25F751CA4();
  v49 = sub_25F8224AC();
  MEMORY[0x25F8E7510](v49);

  MEMORY[0x25F8E7510](0x203A6C65646F6D20, 0xE800000000000000);
  LODWORD(v191) = v178;
  v50 = sub_25F8224AC();
  MEMORY[0x25F8E7510](v50);

  MEMORY[0x25F8E7510](0xD00000000000002BLL, 0x800000025F82C530);
  (v46[2].Kind)(v45, v46);
  sub_25F75CF48();
  v51 = sub_25F82262C();
  v53 = v52;

  MEMORY[0x25F8E7510](v51, v53);

  v54 = *(&v187 + 1);
  v178 = v187;
  v173 = "";
  v55 = v174;
  sub_25F8221DC();

  v56 = sub_25F8221CC();
  v57 = sub_25F82267C();

  if (os_log_type_enabled(v56, v57))
  {
    v58 = swift_slowAlloc();
    v59 = swift_slowAlloc();
    *&v187 = v59;
    *v58 = 136315138;
    *(v58 + 4) = sub_25F75CA94(v178, v54, &v187);
    _os_log_impl(&dword_25F74E000, v56, v57, "%s", v58, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v59);
    MEMORY[0x25F8E88D0](v59, -1, -1);
    v60 = v58;
    v61 = v180;
    MEMORY[0x25F8E88D0](v60, -1, -1);

    v178 = *(v181 + 8);
    v178(v55, v182);
  }

  else
  {

    v178 = *(v181 + 8);
    v178(v55, v182);

    v61 = v180;
  }

  (v46[1].Kind)(&v191, v45, v46);
  a7 = v170;
  v70 = boxed_opaque_existential_1;
  if ((v191 & 1) == 0)
  {

    v80 = swift_conformsToProtocol2();
    if (v80)
    {
      v81 = v80;
      v82 = v163;
      sub_25F8221DC();
      v83 = sub_25F8221CC();
      v84 = sub_25F82267C();
      if (os_log_type_enabled(v83, v84))
      {
        v85 = v82;
        v86 = swift_slowAlloc();
        v87 = swift_slowAlloc();
        *&v187 = v87;
        *v86 = 136315138;
        *(v86 + 4) = sub_25F75CA94(0xD000000000000028, 0x800000025F82C650, &v187);
        _os_log_impl(&dword_25F74E000, v83, v84, "%s", v86, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v87);
        MEMORY[0x25F8E88D0](v87, -1, -1);
        MEMORY[0x25F8E88D0](v86, -1, -1);

        v88 = v85;
      }

      else
      {

        v88 = v82;
      }

      v178(v88, v182);
      v104 = v171;
      v105 = v168;
      (*(v81 + 16))(v45, v81);
      v106 = (*(v81 + 24))(v45, v81);
      v107 = (*(v81 + 32))(v45, v81);
      v108 = (*(v81 + 40))(v45, v81);
      v109 = v166;
      v166[3] = v104;
      v109[4] = &off_2871C6218;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v109);
      v110 = v104[9];
      v111 = sub_25F82235C();
      v112 = v169;
      v174 = v111;
      *&v169[v110] = v111;
      v113 = *MEMORY[0x277CBF030];
      *(v112 + v104[12]) = *MEMORY[0x277CBF030];
      sub_25F76183C(v105, v112, &qword_27FDAFBB0);
      *(v112 + v104[5]) = v106;
      *(v112 + v104[6]) = v107;
      v114 = *(v108 + 16);
      v179 = v108;
      if (v114)
      {
        *&v187 = MEMORY[0x277D84F90];
        v115 = v113;
        sub_25F817C68(0, v114, 0);
        v116 = v187;
        v117 = v108 + ((*(v165 + 80) + 32) & ~*(v165 + 80));
        v118 = *(v165 + 72);
        v119 = v114;
        do
        {
          v120 = *(v184 + 48);
          sub_25F75D11C(v117, &v14[v120], type metadata accessor for Preset);
          sub_25F76183C(&v14[v120], v14, &qword_27FDAFBB0);
          *&v187 = v116;
          v122 = *(v116 + 16);
          v121 = *(v116 + 24);
          if (v122 >= v121 >> 1)
          {
            sub_25F817C68(v121 > 1, v122 + 1, 1);
            v116 = v187;
          }

          *(v116 + 16) = v122 + 1;
          sub_25F760FA4(v14, v116 + ((*(v183 + 80) + 32) & ~*(v183 + 80)) + *(v183 + 72) * v122, &qword_27FDAFBA8);
          v117 += v118;
          --v119;
        }

        while (v119);
        v112 = v169;
      }

      else
      {
        v123 = v113;
        v116 = MEMORY[0x277D84F90];
      }

      v102 = v172;
      if (*(v116 + 16))
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFBC8);
        v124 = sub_25F822A8C();
      }

      else
      {
        v124 = MEMORY[0x277D84F98];
      }

      v125 = v171;
      *&v187 = v124;

      v127 = v180;
      sub_25F75D184(v126, 1, &v187);
      v180 = v127;
      if (v127)
      {
        result = swift_unexpectedError();
        __break(1u);
        return result;
      }

      *(v112 + v125[7]) = v187;
      if (v114)
      {
        *&v187 = MEMORY[0x277D84F90];
        sub_25F817C48(0, v114, 0);
        v128 = v187;
        v129 = &v179[(*(v165 + 80) + 32) & ~*(v165 + 80)];
        v130 = *(v165 + 72);
        v131 = v161;
        do
        {
          v132 = v186;
          sub_25F75D11C(v129, v186, type metadata accessor for Preset);
          sub_25F76183C(v132, v131, &qword_27FDAFBB0);
          sub_25F75D810(v132, type metadata accessor for Preset);
          *&v187 = v128;
          v134 = *(v128 + 16);
          v133 = *(v128 + 24);
          if (v134 >= v133 >> 1)
          {
            sub_25F817C48(v133 > 1, v134 + 1, 1);
            v128 = v187;
          }

          *(v128 + 16) = v134 + 1;
          sub_25F760FA4(v131, v128 + ((*(v185 + 80) + 32) & ~*(v185 + 80)) + *(v185 + 72) * v134, &qword_27FDAFBB0);
          v129 += v130;
          --v114;
        }

        while (v114);

        v102 = v172;
        v112 = v169;
        v125 = v171;
      }

      else
      {

        v128 = MEMORY[0x277D84F90];
      }

      *(v112 + v125[8]) = v128;
      *(v112 + v125[13]) = v164;
      v61 = v180;
      v101 = v166;
      if (v190)
      {
        v135 = *MEMORY[0x277CBF040];
        *(v112 + v125[11]) = *MEMORY[0x277CBF040];
        v136 = qword_27FDAF850;
        v137 = v135;
        a7 = v170;
        if (v136 != -1)
        {
          swift_once();
        }

        v138 = qword_27FDBF7A0;
        sub_25F760F44(v168, &qword_27FDAFBB0);
        *(v112 + v125[10]) = v138;
      }

      else
      {
        v139 = *MEMORY[0x277CBF020];
        sub_25F760F44(v168, &qword_27FDAFBB0);
        *(v112 + v125[11]) = v139;
        v140 = v174;
        *(v112 + v125[10]) = v174;
        v141 = v140;
        a7 = v170;
      }

      sub_25F75D050(v112, boxed_opaque_existential_1, type metadata accessor for PrefsDataStore);
      goto LABEL_51;
    }

    v95 = v159;
    sub_25F8221DC();
    v96 = sub_25F8221CC();
    v97 = sub_25F82269C();
    if (os_log_type_enabled(v96, v97))
    {
      v98 = swift_slowAlloc();
      v99 = swift_slowAlloc();
      *&v187 = v99;
      *v98 = 136315138;
      *(v98 + 4) = sub_25F75CA94(0xD00000000000004ELL, 0x800000025F82C600, &v187);
      _os_log_impl(&dword_25F74E000, v96, v97, "%s", v98, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v99);
      MEMORY[0x25F8E88D0](v99, -1, -1);
      MEMORY[0x25F8E88D0](v98, -1, -1);
    }

    v94 = v95;
    goto LABEL_21;
  }

  v71 = v179;
  if (!v179)
  {
    v89 = v160;
    sub_25F8221DC();
    v90 = sub_25F8221CC();
    v91 = sub_25F82268C();
    if (os_log_type_enabled(v90, v91))
    {
      v92 = swift_slowAlloc();
      v93 = swift_slowAlloc();
      *&v187 = v93;
      *v92 = 136315138;
      *(v92 + 4) = sub_25F75CA94(0xD00000000000002FLL, 0x800000025F82C560, &v187);
      _os_log_impl(&dword_25F74E000, v90, v91, "%s", v92, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v93);
      MEMORY[0x25F8E88D0](v93, -1, -1);
      MEMORY[0x25F8E88D0](v92, -1, -1);
    }

    v94 = v89;
LABEL_21:
    v178(v94, v182);
    v69 = v176;
    return (*(v69 + 56))(a7, 1, 1, v177);
  }

  *&v187 = 0;
  *(&v187 + 1) = 0xE000000000000000;
  sub_25F82292C();
  MEMORY[0x25F8E7510](0xD000000000000033, 0x800000025F82C590);
  MEMORY[0x25F8E7510](v167, v71);
  v72 = v187;
  sub_25F8221DC();

  v73 = sub_25F8221CC();
  v74 = sub_25F82267C();

  if (os_log_type_enabled(v73, v74))
  {
    v75 = v70;
    v76 = swift_slowAlloc();
    v77 = swift_slowAlloc();
    *&v187 = v77;
    *v76 = 136315138;
    *(v76 + 4) = sub_25F75CA94(v72, *(&v72 + 1), &v187);
    _os_log_impl(&dword_25F74E000, v73, v74, "%s", v76, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v77);
    v78 = v77;
    v71 = v179;
    MEMORY[0x25F8E88D0](v78, -1, -1);
    MEMORY[0x25F8E88D0](v76, -1, -1);

    v79 = v75;
  }

  else
  {

    v79 = v70;
  }

  v178(v79, v182);

  v101 = v166;
  v102 = v172;
  v103 = type metadata accessor for HIDDataStore(0);
  swift_allocObject();
  result = sub_25F764688(v167, v71);
  if (v61)
  {
    return result;
  }

  v188 = v103;
  v189 = &off_2871C5A00;
  *&v187 = result;
  sub_25F75CF9C(&v187, v101);
LABEL_51:
  v142 = *(v101 + 24);
  v143 = *(v101 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(v101, v142);
  (*(v143 + 8))(v142, v143);
  if (v61)
  {
    *&v187 = 0;
    *(&v187 + 1) = 0xE000000000000000;
    sub_25F82292C();
    MEMORY[0x25F8E7510](0xD000000000000020, 0x800000025F82C5D0);
    swift_getErrorValue();
    sub_25F822C9C();
    v144 = v187;
    v145 = v162;
    sub_25F8221DC();

    v146 = sub_25F8221CC();
    v147 = sub_25F82268C();

    if (os_log_type_enabled(v146, v147))
    {
      v148 = swift_slowAlloc();
      v149 = swift_slowAlloc();
      *&v187 = v149;
      *v148 = 136315138;
      *(v148 + 4) = sub_25F75CA94(v144, *(&v144 + 1), &v187);
      _os_log_impl(&dword_25F74E000, v146, v147, "%s", v148, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v149);
      MEMORY[0x25F8E88D0](v149, -1, -1);
      v150 = v148;
      v101 = v166;
      MEMORY[0x25F8E88D0](v150, -1, -1);
    }

    v178(v145, v182);

    swift_willThrow();
    return __swift_destroy_boxed_opaque_existential_0Tm(v101);
  }

  else
  {
    sub_25F75D050(v102, v101 + *(v177 + 20), type metadata accessor for ProData);
    v151 = v158;
    sub_25F8221DC();
    v152 = sub_25F8221CC();
    v153 = sub_25F82267C();
    if (os_log_type_enabled(v152, v153))
    {
      v154 = swift_slowAlloc();
      v155 = swift_slowAlloc();
      *&v187 = v155;
      *v154 = 136315138;
      *(v154 + 4) = sub_25F75CA94(0x616F6C2061746164, 0xEB00000000646564, &v187);
      _os_log_impl(&dword_25F74E000, v152, v153, "%s", v154, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v155);
      MEMORY[0x25F8E88D0](v155, -1, -1);
      MEMORY[0x25F8E88D0](v154, -1, -1);
    }

    v178(v151, v182);
    v156 = v176;
    sub_25F75D11C(v101, a7, type metadata accessor for ProDisplay);
    (*(v156 + 56))(a7, 0, 1, v177);
    return sub_25F75D810(v101, type metadata accessor for ProDisplay);
  }
}

unint64_t sub_25F751CA4()
{
  result = qword_27FDAFBB8;
  if (!qword_27FDAFBB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FDAFBB8);
  }

  return result;
}

uint64_t ProDisplay.activePresetID.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for ProDisplay(0) + 20);
  v4 = type metadata accessor for ProData();
  return sub_25F76183C(v3 + *(v4 + 20), a1, &qword_27FDAFBB0);
}

uint64_t ProDisplay.availableCustomPresetSlots.getter()
{
  v1 = type metadata accessor for Preset(0);
  v2 = *(v1 - 8);
  v3 = MEMORY[0x28223BE20](v1 - 8);
  v35 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v33 - v6;
  MEMORY[0x28223BE20](v5);
  v9 = &v33 - v8;
  v10 = v0 + *(type metadata accessor for ProDisplay(0) + 20);
  v11 = type metadata accessor for ProData();
  v12 = *(v10 + *(v11 + 28));
  v36 = v11;
  v37 = v10;
  if (v12)
  {
    v13 = v12;
  }

  else
  {
    v13 = (*(v10 + *(v11 + 40)))();
  }

  v14 = 1 << *(v13 + 32);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & *(v13 + 64);
  v17 = (v14 + 63) >> 6;

  v19 = 0;
  v20 = MEMORY[0x277D84F90];
  while (1)
  {
    v21 = v19;
    if (!v16)
    {
      break;
    }

LABEL_11:
    v22 = __clz(__rbit64(v16));
    v16 &= v16 - 1;
    v23 = *(v2 + 72);
    sub_25F75D11C(*(v13 + 56) + v23 * (v22 | (v19 << 6)), v7, type metadata accessor for Preset);
    sub_25F75D050(v7, v9, type metadata accessor for Preset);
    if (v9[*(type metadata accessor for Preset.Info(0) + 28)] == 1)
    {
      sub_25F75D050(v9, v35, type metadata accessor for Preset);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v38 = v20;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_25F817D08(0, *(v20 + 16) + 1, 1);
        v20 = v38;
      }

      v26 = *(v20 + 16);
      v25 = *(v20 + 24);
      v27 = v26 + 1;
      if (v26 >= v25 >> 1)
      {
        v33 = *(v20 + 16);
        v34 = v26 + 1;
        sub_25F817D08(v25 > 1, v26 + 1, 1);
        v26 = v33;
        v27 = v34;
        v20 = v38;
      }

      *(v20 + 16) = v27;
      result = sub_25F75D050(v35, v20 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + v26 * v23, type metadata accessor for Preset);
    }

    else
    {
      result = sub_25F75D810(v9, type metadata accessor for Preset);
    }
  }

  while (1)
  {
    v19 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      __break(1u);
LABEL_24:
      __break(1u);
      return result;
    }

    if (v19 >= v17)
    {
      break;
    }

    v16 = *(v13 + 64 + 8 * v19);
    ++v21;
    if (v16)
    {
      goto LABEL_11;
    }
  }

  v28 = *(v20 + 16);

  v30 = v37 + *(v36 + 32);
  if (*(v30 + 8))
  {
    v31 = (*(v37 + *(v36 + 44)))(v29);
  }

  else
  {
    v31 = *v30;
  }

  v32 = __OFSUB__(v31, v28);
  result = v31 - v28;
  if (v32)
  {
    goto LABEL_24;
  }

  return result;
}

void *ProDisplay.presetList()()
{
  v1 = sub_25F8221EC();
  v2 = *(v1 - 8);
  v66 = v1;
  v67 = v2;
  v3 = MEMORY[0x28223BE20](v1);
  v68 = &v52 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v58 = &v52 - v5;
  v6 = type metadata accessor for Preset.Info(0);
  v65 = *(v6 - 8);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Preset(0);
  v57 = *(v9 - 8);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v12 = &v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v52 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFBB0);
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15 - 8);
  v18 = &v52 - v17;
  v19 = v0[3];
  v20 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v19);
  v21 = (*(v20 + 40))(v19, v20);
  v59 = v14;
  v53 = v12;
  v60 = v8;
  v22 = *(v21 + 16);
  if (v22)
  {
    v23 = v16;
    v24 = v21;
    v25 = v0 + *(type metadata accessor for ProDisplay(0) + 20);
    v55 = type metadata accessor for ProData();
    v56 = v25;
    v26 = *&v25[*(v55 + 28)];
    v27 = (*(v23 + 80) + 32) & ~*(v23 + 80);
    v52 = v24;
    v28 = v24 + v27;
    v68 = *(v23 + 72);
    v63 = 0x800000025F82C6E0;
    v64 = "";
    v62 = (v67 + 1);
    v67 = MEMORY[0x277D84F90];
    v61 = 0xD000000000000010;
    *&v29 = 136315138;
    v54 = v29;
    v30 = v58;
    v31 = v65;
    do
    {
      v32 = sub_25F76183C(v28, v18, &qword_27FDAFBB0);
      v33 = v26;
      if (!v26)
      {
        v33 = (*&v56[*(v55 + 40)])(v32);
      }

      v34 = *(v33 + 16);

      if (v34 && (v35 = sub_25F75DA44(v18, &qword_27FDAFBB0), (v36 & 1) != 0))
      {
        v37 = v53;
        sub_25F75D11C(*(v33 + 56) + *(v57 + 72) * v35, v53, type metadata accessor for Preset);

        v38 = v59;
        sub_25F75D050(v37, v59, type metadata accessor for Preset);
        sub_25F75D11C(v38, v60, type metadata accessor for Preset.Info);
        v39 = v67;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v39 = sub_25F75C1B0(0, v39[2] + 1, 1, v39, &qword_27FDAFD68, &unk_25F823FC8, type metadata accessor for Preset.Info);
        }

        v41 = v39[2];
        v40 = v39[3];
        v67 = v39;
        if (v41 >= v40 >> 1)
        {
          v67 = sub_25F75C1B0(v40 > 1, v41 + 1, 1, v67, &qword_27FDAFD68, &unk_25F823FC8, type metadata accessor for Preset.Info);
        }

        sub_25F75D810(v59, type metadata accessor for Preset);
        sub_25F760F44(v18, &qword_27FDAFBB0);
        v42 = v67;
        v67[2] = v41 + 1;
        sub_25F75D050(v60, v42 + ((*(v31 + 80) + 32) & ~*(v31 + 80)) + *(v31 + 72) * v41, type metadata accessor for Preset.Info);
      }

      else
      {

        v69 = 0;
        v70 = 0xE000000000000000;
        sub_25F82292C();

        v69 = v61;
        v70 = v63;
        sub_25F82217C();
        sub_25F7616D4(&qword_27FDAFBD0);
        v43 = sub_25F822C7C();
        MEMORY[0x25F8E7510](v43);

        v45 = v69;
        v44 = v70;
        sub_25F8221DC();

        v46 = sub_25F8221CC();
        v47 = sub_25F82268C();

        if (os_log_type_enabled(v46, v47))
        {
          v48 = swift_slowAlloc();
          v49 = swift_slowAlloc();
          v69 = v49;
          *v48 = v54;
          *(v48 + 4) = sub_25F75CA94(v45, v44, &v69);
          _os_log_impl(&dword_25F74E000, v46, v47, "%s", v48, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v49);
          MEMORY[0x25F8E88D0](v49, -1, -1);
          v50 = v48;
          v30 = v58;
          MEMORY[0x25F8E88D0](v50, -1, -1);
        }

        (*v62)(v30, v66);

        v31 = v65;
        sub_25F760F44(v18, &qword_27FDAFBB0);
      }

      v28 += v68;
      --v22;
    }

    while (v22);

    return v67;
  }

  else
  {

    return MEMORY[0x277D84F90];
  }
}

uint64_t ProDisplay.preset(with:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for Preset(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5 - 8);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v25 - v10;
  v12 = v2 + *(type metadata accessor for ProDisplay(0) + 20);
  v13 = type metadata accessor for ProData();
  if (sub_25F82213C())
  {
    v14 = v2[3];
    v15 = v2[4];
    __swift_project_boxed_opaque_existential_1(v2, v14);
    return (*(v15 + 80))(v14, v15);
  }

  else if (sub_25F82213C())
  {
    v17 = v2[3];
    v18 = v2[4];
    __swift_project_boxed_opaque_existential_1(v2, v17);
    return (*(v18 + 88))(v17, v18);
  }

  else
  {
    v26 = v6;
    v19 = *(v13 + 28);
    if (*&v12[v19])
    {
      v20 = *&v12[v19];
    }

    else
    {
      v20 = (*&v12[*(v13 + 40)])();
    }

    v21 = *(v20 + 16);

    if (v21 && (v22 = sub_25F75DA44(a1, &qword_27FDAFBB0), (v23 & 1) != 0))
    {
      sub_25F75D11C(*(v20 + 56) + *(v26 + 72) * v22, v9, type metadata accessor for Preset);

      sub_25F75D050(v9, v11, type metadata accessor for Preset);
      return sub_25F75D050(v11, a2, type metadata accessor for Preset);
    }

    else
    {

      type metadata accessor for ProDisplay.ProDisplayError(0);
      sub_25F75D920();
      swift_allocError();
      sub_25F76183C(a1, v24, &qword_27FDAFBB0);
      swift_storeEnumTagMultiPayload();
      return swift_willThrow();
    }
  }
}

uint64_t ProDisplay.updateActivePreset(id:)(uint64_t a1)
{
  v3 = v2;
  v4 = v1;
  v6 = type metadata accessor for ProDisplay(0);
  v7 = v1 + *(v6 + 20);
  v8 = type metadata accessor for ProData();
  v9 = v8;
  v10 = *(v8 + 28);
  if (*&v7[v10])
  {
    v11 = *&v7[v10];
  }

  else
  {
    v11 = (*&v7[*(v8 + 40)])();
  }

  v12 = *(v11 + 16);

  if (!v12)
  {

    goto LABEL_9;
  }

  sub_25F75DA44(a1, &qword_27FDAFBB0);
  v14 = v13;

  if ((v14 & 1) == 0)
  {
LABEL_9:
    type metadata accessor for ProDisplay.ProDisplayError(0);
    sub_25F75D920();
    swift_allocError();
    sub_25F76183C(a1, v18, &qword_27FDAFBB0);
    swift_storeEnumTagMultiPayload();
    return swift_willThrow();
  }

  v19 = v3;
  v15 = v4[3];
  v16 = v4[4];
  __swift_project_boxed_opaque_existential_1(v4, v15);
  (*(*(v4 + *(v6 + 24) + 8) + 24))(&v20);
  result = (*(v16 + 16))(a1, v20 == 2, v15, v16);
  if (!v19)
  {
    return sub_25F75D978(a1, &v7[*(v9 + 20)]);
  }

  return result;
}

uint64_t ProDisplay.addPreset(_:)(uint64_t a1)
{
  v3 = type metadata accessor for Preset(0);
  v45 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v44 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFBE0);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v43 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = &v41 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFBB0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v41 - v11;
  v13 = sub_25F8221EC();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (ProDisplay.availableCustomPresetSlots.getter() < 1)
  {
    type metadata accessor for ProDisplay.ProDisplayError(0);
    sub_25F75D920();
    swift_allocError();
LABEL_7:
    swift_storeEnumTagMultiPayload();
    return swift_willThrow();
  }

  v41 = v13;
  v42 = v14;
  v17 = type metadata accessor for ProDisplay(0);
  v18 = (*(*(v1 + *(v17 + 24) + 8) + 128))(a1);
  if (*(v18 + 16))
  {
    v47 = 0;
    v48 = 0xE000000000000000;
    sub_25F82292C();

    v47 = 0xD000000000000021;
    v48 = 0x800000025F82C700;
    v49 = sub_25F74FC20(v18);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFBE8);
    sub_25F76100C(&qword_27FDAFBF0, &qword_27FDAFBE8);
    v19 = sub_25F8222EC();
    v21 = v20;

    MEMORY[0x25F8E7510](v19, v21);

    v23 = v47;
    v22 = v48;
    sub_25F8221DC();

    v24 = sub_25F8221CC();
    v25 = sub_25F82268C();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v47 = v27;
      *v26 = 136315138;
      *(v26 + 4) = sub_25F75CA94(v23, v22, &v47);
      _os_log_impl(&dword_25F74E000, v24, v25, "%s", v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v27);
      MEMORY[0x25F8E88D0](v27, -1, -1);
      MEMORY[0x25F8E88D0](v26, -1, -1);
    }

    (*(v42 + 8))(v16, v41);

    type metadata accessor for ProDisplay.ProDisplayError(0);
    sub_25F75D920();
    swift_allocError();
    *v28 = v18;
    goto LABEL_7;
  }

  v30 = *(v1 + 24);
  v31 = *(v1 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(v1, v30);
  v32 = v46;
  result = (*(v31 + 24))(a1, v30, v31);
  if (!v32)
  {
    sub_25F76183C(a1, v12, &qword_27FDAFBB0);
    sub_25F75D11C(a1, v9, type metadata accessor for Preset);
    (*(v45 + 56))(v9, 0, 1, v3);
    v33 = v1 + *(v17 + 20);
    v34 = type metadata accessor for ProData();
    v35 = *(v34 + 28);
    if (*(v33 + v35))
    {
      v36 = *(v33 + v35);
    }

    else
    {
      v36 = (*(v33 + *(v34 + 40)))();
    }

    v47 = v36;
    if ((*(v45 + 48))(v9, 1, v3) == 1)
    {

      sub_25F760F44(v9, &qword_27FDAFBE0);
      v37 = v43;
      sub_25F75FD38(v12, v43);
      sub_25F760F44(v37, &qword_27FDAFBE0);
      sub_25F760F44(v12, &qword_27FDAFBB0);

      v38 = v47;
    }

    else
    {
      v39 = v44;
      sub_25F75D050(v9, v44, type metadata accessor for Preset);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v49 = v36;
      sub_25F76074C(v39, v12, isUniquelyReferenced_nonNull_native);
      sub_25F760F44(v12, &qword_27FDAFBB0);

      v38 = v49;
    }

    *(v33 + v35) = v38;
  }

  return result;
}

uint64_t sub_25F7535C0(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFBE0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v14 - v6;
  v8 = type metadata accessor for Preset(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v11 + 48))(a1, 1) == 1)
  {
    sub_25F760F44(a1, &qword_27FDAFBE0);
    sub_25F75FD38(a2, v7);
    sub_25F760F44(a2, &qword_27FDAFBB0);
    return sub_25F760F44(v7, &qword_27FDAFBE0);
  }

  else
  {
    sub_25F75D050(a1, v10, type metadata accessor for Preset);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v2;
    sub_25F76074C(v10, a2, isUniquelyReferenced_nonNull_native);
    result = sub_25F760F44(a2, &qword_27FDAFBB0);
    *v2 = v15;
  }

  return result;
}

uint64_t sub_25F7537A0(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFC28);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v14 - v6;
  v8 = type metadata accessor for UserAdjustment();
  MEMORY[0x28223BE20](v8);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v11 + 48))(a1, 1) == 1)
  {
    sub_25F760F44(a1, &qword_27FDAFC28);
    sub_25F75FB64(a2, v7);
    sub_25F760F44(a2, &qword_27FDAFC18);
    return sub_25F760F44(v7, &qword_27FDAFC28);
  }

  else
  {
    sub_25F75D050(a1, v10, type metadata accessor for UserAdjustment);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v2;
    sub_25F760544(v10, a2, isUniquelyReferenced_nonNull_native);
    result = sub_25F760F44(a2, &qword_27FDAFC18);
    *v2 = v15;
  }

  return result;
}

uint64_t ProDisplay.removePreset(id:)(uint64_t a1)
{
  v2 = v1;
  v59 = a1;
  v3 = sub_25F8221EC();
  v51 = *(v3 - 8);
  v52 = v3;
  MEMORY[0x28223BE20](v3);
  v50 = &v49 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFBE0);
  MEMORY[0x28223BE20](v5 - 8);
  v54 = &v49 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFBB0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v49 - v8;
  v10 = type metadata accessor for Preset(0);
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v14 = &v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v56 = &v49 - v15;
  v16 = type metadata accessor for ProDisplay(0);
  v17 = v1 + *(v16 + 20);
  v18 = type metadata accessor for ProData();
  v19 = v18;
  v20 = *(v18 + 28);
  v53 = v20;
  v21 = *(v17 + v20);
  if (v21)
  {
    v22 = *(v17 + v20);
  }

  else
  {
    v22 = (*(v17 + *(v18 + 40)))();
  }

  v23 = *(v22 + 16);

  if (v23 && (v24 = sub_25F75DA44(v59, &qword_27FDAFBB0), (v25 & 1) != 0))
  {
    sub_25F75D11C(*(v22 + 56) + *(v11 + 72) * v24, v14, type metadata accessor for Preset);

    v26 = v56;
    sub_25F75D050(v14, v56, type metadata accessor for Preset);
    if (*(v26 + *(type metadata accessor for Preset.Info(0) + 28)))
    {
      (*(*(v2 + *(v16 + 24) + 8) + 24))(&v57);
      if (v57 == 1 || (sub_25F76183C(v17 + *(v19 + 20), v9, &qword_27FDAFBB0), v27 = sub_25F82213C(), sub_25F760F44(v9, &qword_27FDAFBB0), (v27 & 1) == 0))
      {
        v31 = *(v2 + 24);
        v32 = *(v2 + 32);
        __swift_mutable_project_boxed_opaque_existential_1(v2, v31);
        v33 = v59;
        v34 = v55;
        v35 = (*(v32 + 32))(v59, v31, v32);
        if (!v34)
        {
          v36 = v35;
          v37 = v21;
          if (!v21)
          {
            v37 = (*(v17 + *(v19 + 40)))();
          }

          v57 = v37;

          v38 = v54;
          sub_25F75FD38(v33, v54);
          sub_25F760F44(v38, &qword_27FDAFBE0);

          *(v17 + v53) = v57;
          if ((v36 & 1) == 0)
          {
            v57 = 0;
            v58 = 0xE000000000000000;
            sub_25F82292C();

            v57 = 0xD00000000000001DLL;
            v58 = 0x800000025F82C730;
            v39 = sub_25F82212C();
            MEMORY[0x25F8E7510](v39);

            v41 = v57;
            v40 = v58;
            v42 = v50;
            sub_25F8221DC();

            v43 = sub_25F8221CC();
            v44 = sub_25F82268C();

            if (os_log_type_enabled(v43, v44))
            {
              v45 = swift_slowAlloc();
              v46 = swift_slowAlloc();
              v57 = v46;
              *v45 = 136315138;
              *(v45 + 4) = sub_25F75CA94(v41, v40, &v57);
              _os_log_impl(&dword_25F74E000, v43, v44, "%s", v45, 0xCu);
              __swift_destroy_boxed_opaque_existential_0Tm(v46);
              MEMORY[0x25F8E88D0](v46, -1, -1);
              MEMORY[0x25F8E88D0](v45, -1, -1);
            }

            (*(v51 + 8))(v42, v52);
          }
        }
      }

      else
      {
        type metadata accessor for ProDisplay.ProDisplayError(0);
        sub_25F75D920();
        swift_allocError();
        *v28 = 0xD00000000000001BLL;
        v28[1] = 0x800000025F82C750;
        swift_storeEnumTagMultiPayload();
        swift_willThrow();
      }

      v47 = v56;
    }

    else
    {
      type metadata accessor for ProDisplay.ProDisplayError(0);
      sub_25F75D920();
      swift_allocError();
      *v48 = 0xD000000000000023;
      v48[1] = 0x800000025F82C770;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      v47 = v26;
    }

    return sub_25F75D810(v47, type metadata accessor for Preset);
  }

  else
  {

    type metadata accessor for ProDisplay.ProDisplayError(0);
    sub_25F75D920();
    swift_allocError();
    sub_25F76183C(v59, v29, &qword_27FDAFBB0);
    swift_storeEnumTagMultiPayload();
    return swift_willThrow();
  }
}

unint64_t sub_25F754070(uint64_t a1)
{
  v2 = v1;
  v3 = sub_25F75DA44(a1, &qword_27FDAFBB0);
  v5 = v4;
  if (v4)
  {
    v6 = v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8 = *v1;
    v13 = *v2;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_25F75E2A8();
      v8 = v13;
    }

    v9 = *(v8 + 48);
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFBB0);
    sub_25F760F44(v9 + *(*(v10 - 8) + 72) * v6, &qword_27FDAFBB0);
    v11 = *(*(v8 + 56) + 4 * v6);
    sub_25F760260(v6, v8);
    *v2 = v8;
  }

  else
  {
    v11 = 0;
  }

  return v11 | (((v5 & 1) == 0) << 32);
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> ProDisplay.removeAllPresets()()
{
  v2 = v1;
  v3 = v0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFBB0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v52 - v5;
  v7 = type metadata accessor for Preset(0);
  v57 = *(v7 - 8);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v53 = v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v56 = v52 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v55 = v52 - v13;
  MEMORY[0x28223BE20](v12);
  v15 = v52 - v14;
  v16 = type metadata accessor for ProDisplay(0);
  (*(*(v0 + *(v16 + 24) + 8) + 24))(v58);
  if (v58[0] == 1)
  {
    goto LABEL_7;
  }

  v17 = v0 + *(v16 + 20);
  v18 = type metadata accessor for ProData();
  v19 = v18;
  v20 = *(v18 + 28);
  v21 = *(v17 + v20);
  if (!v21)
  {
    v22 = (*(v17 + *(v18 + 40)))();
    v23 = *(v22 + 16);
    if (v23)
    {
      goto LABEL_4;
    }

LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v22 = *(v17 + v20);
  v23 = *(v21 + 16);
  if (!v23)
  {
    goto LABEL_12;
  }

LABEL_4:
  v24 = *(v19 + 20);

  v25 = sub_25F75DA44(v17 + v24, &qword_27FDAFBB0);
  if ((v26 & 1) == 0)
  {
LABEL_40:
    __break(1u);
    return;
  }

  sub_25F75D11C(*(v22 + 56) + *(v57 + 72) * v25, v15, type metadata accessor for Preset);

  v27 = v15[*(type metadata accessor for Preset.Info(0) + 28)];
  sub_25F75D810(v15, type metadata accessor for Preset);
  if (v27 == 1)
  {
    type metadata accessor for ProDisplay.ProDisplayError(0);
    sub_25F75D920();
    swift_allocError();
    *v28 = 0xD00000000000001BLL;
    v28[1] = 0x800000025F82C750;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    return;
  }

LABEL_7:
  sub_25F760954(v3, v58);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFBF8);
  type metadata accessor for HIDDataStore(0);
  v29 = swift_dynamicCast();
  if (!v29)
  {
    v22 = v3 + *(v16 + 20);
    v23 = type metadata accessor for ProData();
    v30 = *(v22 + *(v23 + 28));
    v52[1] = v3;
    if (v30)
    {
      v31 = v30;
LABEL_14:
      v32 = 1 << *(v31 + 32);
      v33 = -1;
      if (v32 < 64)
      {
        v33 = ~(-1 << v32);
      }

      v34 = v33 & *(v31 + 64);
      v35 = (v32 + 63) >> 6;

      v36 = 0;
      v37 = MEMORY[0x277D84F90];
      v54 = v6;
LABEL_17:
      v38 = v36;
      if (!v34)
      {
        goto LABEL_19;
      }

      do
      {
        v36 = v38;
LABEL_22:
        v39 = __clz(__rbit64(v34));
        v34 &= v34 - 1;
        v40 = v56;
        v41 = *(v57 + 72);
        sub_25F75D11C(*(v31 + 56) + v41 * (v39 | (v36 << 6)), v56, type metadata accessor for Preset);
        v42 = v40;
        v43 = v55;
        sub_25F75D050(v42, v55, type metadata accessor for Preset);
        if (*(v43 + *(type metadata accessor for Preset.Info(0) + 28)) == 1)
        {
          sub_25F75D050(v43, v53, type metadata accessor for Preset);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *v58 = v37;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_25F817D08(0, *(v37 + 16) + 1, 1);
            v37 = *v58;
          }

          v46 = *(v37 + 16);
          v45 = *(v37 + 24);
          v47 = v46 + 1;
          if (v46 >= v45 >> 1)
          {
            v48 = v46 + 1;
            v52[0] = v46;
            sub_25F817D08(v45 > 1, v46 + 1, 1);
            v47 = v48;
            v46 = v52[0];
            v37 = *v58;
          }

          *(v37 + 16) = v47;
          sub_25F75D050(v53, v37 + ((*(v57 + 80) + 32) & ~*(v57 + 80)) + v46 * v41, type metadata accessor for Preset);
          v6 = v54;
          goto LABEL_17;
        }

        sub_25F75D810(v43, type metadata accessor for Preset);
        v38 = v36;
        v6 = v54;
      }

      while (v34);
      while (1)
      {
LABEL_19:
        v36 = v38 + 1;
        if (__OFADD__(v38, 1))
        {
          __break(1u);
          goto LABEL_39;
        }

        if (v36 >= v35)
        {
          break;
        }

        v34 = *(v31 + 64 + 8 * v36);
        ++v38;
        if (v34)
        {
          goto LABEL_22;
        }
      }

      v49 = *(v37 + 16);
      if (!v49)
      {
        goto LABEL_37;
      }

      v50 = 0;
      v51 = v57;
      while (v50 < *(v37 + 16))
      {
        sub_25F76183C(v37 + ((*(v51 + 80) + 32) & ~*(v51 + 80)) + *(v51 + 72) * v50, v6, &qword_27FDAFBB0);
        ProDisplay.removePreset(id:)(v6);
        if (v2)
        {
          sub_25F760F44(v6, &qword_27FDAFBB0);
          goto LABEL_37;
        }

        ++v50;
        sub_25F760F44(v6, &qword_27FDAFBB0);
        if (v49 == v50)
        {
          goto LABEL_37;
        }
      }

LABEL_39:
      __break(1u);
      goto LABEL_40;
    }

LABEL_13:
    v31 = (*(v22 + *(v23 + 40)))();
    goto LABEL_14;
  }

  sub_25F7687F0(v29);
LABEL_37:
}

uint64_t ProDisplay.newValidPresetID()@<X0>(uint64_t a1@<X8>)
{
  v29 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFBB0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v28 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFC00);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v32 = v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = v28 - v10;
  v12 = v1 + *(type metadata accessor for ProDisplay(0) + 20);
  v13 = type metadata accessor for ProData();
  v14 = *(v13 + 28);
  if (*(v12 + v14))
  {
    v15 = *(v12 + v14);
  }

  else
  {
    v15 = (*(v12 + *(v13 + 40)))();
  }

  v16 = sub_25F74FEA8(v15);
  v28[1] = v2;

  v17 = sub_25F818034(v16);

  v33 = v4;
  v34 = v3;
  v18 = *(v4 + 56);
  v36 = v11;
  v30 = v18;
  v31 = v4 + 56;
  v18(v11, 1, 1, v3);
  v19 = 5;
  v35 = xmmword_25F823D00;
  while (1)
  {
    sub_25F82216C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFC08);
    inited = swift_initStackObject();
    *(inited + 16) = v35;
    *(inited + 32) = sub_25F82215C();
    *(inited + 34) = sub_25F82215C() >> 16;
    *(inited + 35) = sub_25F82215C() >> 24;
    v21 = sub_25F7555BC(inited, v17);
    swift_setDeallocating();
    if ((v21 & 1) == 0)
    {
      break;
    }

    sub_25F760F44(v6, &qword_27FDAFBB0);
    if (!--v19)
    {

      v22 = v36;
      v23 = v34;
      goto LABEL_9;
    }
  }

  v22 = v36;
  sub_25F760F44(v36, &qword_27FDAFC00);

  sub_25F760FA4(v6, v22, &qword_27FDAFBB0);
  v23 = v34;
  v30(v22, 0, 1, v34);
LABEL_9:
  v25 = v32;
  v24 = v33;
  sub_25F76183C(v22, v32, &qword_27FDAFC00);
  if ((*(v24 + 48))(v25, 1, v23) == 1)
  {
    sub_25F760F44(v25, &qword_27FDAFC00);
    type metadata accessor for ProDisplay.ProDisplayError(0);
    sub_25F75D920();
    swift_allocError();
    *v26 = 0xD000000000000032;
    v26[1] = 0x800000025F82C7A0;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    return sub_25F760F44(v22, &qword_27FDAFC00);
  }

  else
  {
    sub_25F760F44(v22, &qword_27FDAFC00);
    return sub_25F760FA4(v25, v29, &qword_27FDAFBB0);
  }
}

BOOL sub_25F754BFC(unsigned int a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v4 = MEMORY[0x25F8E7E60](*(a2 + 40), a1, 4);
  v5 = -1 << *(a2 + 32);
  v6 = v4 & ~v5;
  if (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
  {
    return 0;
  }

  v7 = ~v5;
  do
  {
    v8 = *(*(a2 + 48) + 4 * v6);
    result = v8 == a1;
    if (v8 == a1)
    {
      break;
    }

    v6 = (v6 + 1) & v7;
  }

  while (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  return result;
}

uint64_t sub_25F754CAC(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  sub_25F822DCC();
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = *(a1 + 24);
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v9 = *(a1 + 48);
  v10 = vdupq_laneq_s64(v5, 1);
  v53 = v10;
  v54 = v5;
  if (v9)
  {
    v11 = vorrq_s8(v10, v5).u64[0];
    if (v11 | v4 | *&v6 | *&v7 | *&v8)
    {
      v12 = v11 | *&v6 | *&v7 | *&v8;
      if (v4 != 1 || v12)
      {
        if (v4 != 2 || v12)
        {
          if (v4 != 3 || v12)
          {
            if (v4 != 4 || v12)
            {
              v13 = 5;
            }

            else
            {
              v13 = 4;
            }
          }

          else
          {
            v13 = 3;
          }
        }

        else
        {
          v13 = 2;
        }
      }

      else
      {
        v13 = 1;
      }
    }

    else
    {
      v13 = 0;
    }

    MEMORY[0x25F8E7E80](v13);
  }

  else
  {
    MEMORY[0x25F8E7E80](6);
    Primaries.hash(into:)();
  }

  v15 = sub_25F822E0C();
  v16 = a2 + 56;
  v17 = -1 << *(a2 + 32);
  v18 = v15 & ~v17;
  if ((*(a2 + 56 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18))
  {
    v19 = ~v17;
    v20 = *(a2 + 48);
    *&v21.f64[0] = v53.i64[0];
    v22 = vorrq_s8(v53, v54).u64[0];
    v23 = v22 | *&v6 | *&v7 | *&v8;
    v25 = (v4 - 1) < 4 && v23 == 0;
    v26 = vdupq_lane_s64(v54.i64[0], 0);
    v21.f64[1] = v6;
    v27 = v4;
    v28 = v4;
    v29 = v4;
    v30 = v4;
    v31 = v4;
    v32 = v4;
    do
    {
      v34 = v20 + 56 * v18;
      v36 = *v34;
      v35 = *(v34 + 16);
      v38 = *(v34 + 32);
      v37 = *(v34 + 40);
      if (*(v34 + 48) == 1)
      {
        v39 = *&v38 | *&v37;
        if (*&v35.f64[0] | *&v36.f64[1] | *&v36.f64[0] | *&v35.f64[1] | v39)
        {
          v40 = *&v35.f64[0] | *&v36.f64[1] | *&v35.f64[1] | v39;
          if (*&v36.f64[0] == 1 && v40 == 0)
          {
            if ((v9 & 1) != 0 && v22 | v27 | *&v6 | *&v7 | *&v8)
            {
              if (v27 == 1 && !v23)
              {
                return 1;
              }

              if ((v27 & 0xFFFFFFFFFFFFFFFELL) != 2 && v27 != 4)
              {
LABEL_91:
                v51 = 5;
                goto LABEL_92;
              }

              v51 = 5;
              v52 = 5;
              v29 = 5;
              v28 = v27;
              v33 = v27;
              v30 = v27;
              v31 = v27;
              v32 = v27;
              if (v23)
              {
                goto LABEL_94;
              }
            }

            else
            {
              v28 = v27;
              v33 = v27;
              v30 = v27;
              v31 = v27;
              v32 = v27;
            }
          }

          else if (*&v36.f64[0] == 2 && v40 == 0)
          {
            if ((v9 & 1) == 0 || !(v22 | v28 | *&v6 | *&v7 | *&v8))
            {
              v33 = v28;
              v30 = v28;
              v31 = v28;
              v32 = v28;
              goto LABEL_30;
            }

            if (v28 != 1 || v23)
            {
              if (v28 == 2 && !v23)
              {
                return 1;
              }

              if ((v28 - 3) <= 1)
              {
                v51 = v27;
                v52 = 5;
                v29 = 5;
                v33 = v28;
                v30 = v28;
                v31 = v28;
                v32 = v28;
                if (!v23)
                {
                  goto LABEL_30;
                }

                goto LABEL_94;
              }

              v51 = v27;
LABEL_92:
              v52 = 5;
LABEL_93:
              v29 = 5;
LABEL_94:
              v27 = v51;
              v28 = v52;
              v33 = v29;
              v30 = 5;
              v31 = 5;
              v32 = 5;
              goto LABEL_30;
            }

            v28 = 1;
            v33 = 1;
            v30 = 1;
            v31 = 1;
            v32 = 1;
          }

          else
          {
            if (*&v36.f64[0] == 3 && v40 == 0)
            {
              if ((v9 & 1) == 0 || !(v22 | v29 | *&v6 | *&v7 | *&v8) || (v29 - 1) <= 1 && !v23)
              {
                v33 = v29;
                v30 = v29;
                v31 = v29;
                v32 = v29;
                goto LABEL_30;
              }

              if (v29 == 3 && !v23)
              {
                return 1;
              }

              if (v29 == 4 && !v23)
              {
                v33 = 4;
                v30 = 4;
                v31 = 4;
                v32 = 4;
                goto LABEL_30;
              }

              v51 = v27;
              v52 = v28;
              goto LABEL_93;
            }

            if (*&v36.f64[0] == 4 && v40 == 0)
            {
              if ((v9 & 1) == 0 || !(v22 | v30 | *&v6 | *&v7 | *&v8) || (v30 - 1) <= 2 && !v23)
              {
                v33 = v29;
                v31 = v30;
                v32 = v30;
                goto LABEL_30;
              }

              v51 = v27;
              v52 = v28;
              if (v30 == 4 && !v23)
              {
                return 1;
              }

              goto LABEL_94;
            }

            if ((v9 & 1) != 0 && v22 | v31 | *&v6 | *&v7 | *&v8)
            {
              result = 1;
              if ((v31 - 1) > 3)
              {
                return result;
              }

              v33 = v29;
              v32 = v31;
              if (v23)
              {
                return result;
              }
            }

            else
            {
              v33 = v29;
              v32 = v31;
            }
          }
        }

        else
        {
          v27 = v4;
          v28 = v4;
          v33 = v4;
          v30 = v4;
          v31 = v4;
          v32 = v4;
          if (v9)
          {
            if (!(v23 | v4))
            {
              return 1;
            }

            v27 = v4;
            v28 = v4;
            v33 = v4;
            v30 = v4;
            v31 = v4;
            v32 = v4;
            if (!v25)
            {
              goto LABEL_91;
            }
          }
        }
      }

      else
      {
        if (v9)
        {
          if (v23)
          {
            v45 = 1;
          }

          else
          {
            v45 = (v32 - 1) >= 4;
          }

          if (v45)
          {
            v46 = 5;
          }

          else
          {
            v46 = v32;
          }

          if (v22 | v32 | *&v6 | *&v7 | *&v8)
          {
            v32 = v46;
          }

LABEL_63:
          v33 = v29;
          goto LABEL_30;
        }

        *&v47.f64[1] = v26.i64[1];
        *&v47.f64[0] = v32;
        v48 = v38 == v7;
        if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v47, v36), vceqq_f64(v21, v35)))) & 1) == 0)
        {
          goto LABEL_63;
        }

        v49 = v48 && v37 == v8;
        v33 = v29;
        if (v49)
        {
          return 1;
        }
      }

LABEL_30:
      v18 = (v18 + 1) & v19;
      v29 = v33;
    }

    while (((*(v16 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) != 0);
  }

  return 0;
}

uint64_t sub_25F755234(unint64_t a1, uint64_t a2, unsigned __int8 a3, uint64_t a4)
{
  if (!*(a4 + 16))
  {
    return 0;
  }

  sub_25F822DCC();
  WhitePoint.hash(into:)();
  v8 = sub_25F822E0C();
  v9 = -1 << *(a4 + 32);
  v10 = v8 & ~v9;
  if ((*(a4 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    do
    {
      v12 = *(a4 + 48) + 24 * v10;
      v13 = *v12;
      v14 = *(v12 + 8);
      if (*(v12 + 16) == 1)
      {
        if (*&v13 > 2uLL)
        {
          if (*&v13 ^ 3 | *&v14)
          {
            if (*&v13 ^ 4 | *&v14)
            {
              if ((a3 & (a1 > 4)) != 0)
              {
                return 1;
              }
            }

            else if ((a3 & ((a1 ^ 4 | a2) == 0)) != 0)
            {
              return 1;
            }
          }

          else if ((a3 & ((a1 ^ 3 | a2) == 0)) != 0)
          {
            return 1;
          }
        }

        else if (*&v13 | *&v14)
        {
          if (*&v13 ^ 1 | *&v14)
          {
            if ((a3 & ((a1 ^ 2 | a2) == 0)) != 0)
            {
              return 1;
            }
          }

          else if ((a3 & ((a1 ^ 1 | a2) == 0)) != 0)
          {
            return 1;
          }
        }

        else if ((a3 & ((a1 | a2) == 0)) != 0)
        {
          return 1;
        }
      }

      else if ((a3 & 1) == 0 && v13 == *&a1 && v14 == *&a2)
      {
        return 1;
      }

      v10 = (v10 + 1) & v11;
    }

    while (((*(a4 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  return 0;
}

uint64_t sub_25F755428(char a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2)
  {
    sub_25F822DCC();
    sub_25F822DEC();
    v5 = sub_25F822E0C();
    v6 = -1 << *(a2 + 32);
    v7 = v5 & ~v6;
    if ((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
    {
      v8 = ~v6;
      do
      {
        v9 = *(*(a2 + 48) + v7) ^ a1;
        if ((v9 & 1) == 0)
        {
          break;
        }

        v7 = (v7 + 1) & v8;
      }

      while (((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
      LOBYTE(v2) = v9 ^ 1;
    }

    else
    {
      LOBYTE(v2) = 0;
    }
  }

  return v2 & 1;
}

uint64_t sub_25F7554F4(char a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2)
  {
    sub_25F822DCC();
    MEMORY[0x25F8E7E80](a1 & 1);
    v5 = sub_25F822E0C();
    v6 = -1 << *(a2 + 32);
    v7 = v5 & ~v6;
    if ((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
    {
      v8 = ~v6;
      do
      {
        v9 = *(*(a2 + 48) + v7) ^ a1;
        if ((v9 & 1) == 0)
        {
          break;
        }

        v7 = (v7 + 1) & v8;
      }

      while (((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
      LOBYTE(v2) = v9 ^ 1;
    }

    else
    {
      LOBYTE(v2) = 0;
    }
  }

  return v2 & 1;
}

uint64_t sub_25F7555BC(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 16))
  {
    sub_25F822DCC();
    v4 = *(a1 + 16);
    MEMORY[0x25F8E7E80](v4);
    if (v4)
    {
      v5 = a1 + 32;
      v6 = v4;
      do
      {
        ++v5;
        sub_25F822DEC();
        --v6;
      }

      while (v6);
    }

    v7 = sub_25F822E0C();
    v8 = -1 << *(a2 + 32);
    v9 = v7 & ~v8;
    if ((*(a2 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
    {
      v10 = ~v8;
      do
      {
        v11 = *(*(a2 + 48) + 8 * v9);
        if (*(v11 + 16) == v4)
        {
          if (!v4 || v11 == a1)
          {
            return 1;
          }

          v12 = (v11 + 32);
          v13 = (a1 + 32);
          v14 = v4;
          while (*v12 == *v13)
          {
            ++v12;
            ++v13;
            if (!--v14)
            {
              return 1;
            }
          }
        }

        v9 = (v9 + 1) & v10;
      }

      while (((*(a2 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
    }
  }

  return 0;
}

BOOL sub_25F7556F4(unsigned __int8 a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v3 = a1;
  sub_25F822DCC();
  MEMORY[0x25F8E7E80](v3);
  v4 = sub_25F822E0C();
  v5 = -1 << *(a2 + 32);
  v6 = v4 & ~v5;
  if (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
  {
    return 0;
  }

  v7 = ~v5;
  do
  {
    v8 = *(*(a2 + 48) + v6);
    result = v8 == v3;
    if (v8 == v3)
    {
      break;
    }

    v6 = (v6 + 1) & v7;
  }

  while (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  return result;
}

uint64_t ProDisplay.customPresetTemplate()@<X0>(uint64_t a1@<X8>)
{
  v41 = a1;
  v2 = sub_25F8221EC();
  MEMORY[0x28223BE20](v2);
  v42 = &v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFC10);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v37 - v5;
  v40 = type metadata accessor for Preset.Info(0);
  MEMORY[0x28223BE20](v40);
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFBB0);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v38 = (&v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v37 - v13;
  MEMORY[0x28223BE20](v12);
  v16 = &v37 - v15;
  v17 = type metadata accessor for Preset(0);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v37 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *(*(v1 + *(type metadata accessor for ProDisplay(0) + 24) + 8) + 48);
  v39 = v19;
  v20();
  ProDisplay.newValidPresetID()(v14);
  sub_25F760FA4(v14, v16, &qword_27FDAFBB0);
  v21 = v38;
  sub_25F76183C(v16, v38, &qword_27FDAFBB0);
  v22 = sub_25F82217C();
  (*(*(v22 - 8) + 32))(v8, v21, v22);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFC18);
  v38 = *(*(v23 - 8) + 56);
  (v38)(v6, 1, 1, v23);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFC20);
  v42 = &v37;
  MEMORY[0x28223BE20](v24 - 8);
  v26 = &v37 - v25;
  sub_25F8220FC();
  sub_25F760F44(v16, &qword_27FDAFBB0);
  v27 = sub_25F82210C();
  v28 = *(*(v27 - 8) + 56);
  v28(v26, 0, 1, v27);
  v29 = v6;
  v30 = v40;
  v31 = *(v40 + 32);
  v28(&v8[v31], 1, 1, v27);
  v32 = v30[9];
  (v38)(&v8[v32], 1, 1, v23);
  v33 = &v8[v30[5]];
  *v33 = 0;
  *(v33 + 1) = 0xE000000000000000;
  v34 = &v8[v30[6]];
  *v34 = 0;
  *(v34 + 1) = 0xE000000000000000;
  v8[v30[7]] = 1;
  sub_25F760E58(v26, &v8[v31], &qword_27FDAFC20);
  sub_25F760E58(v29, &v8[v32], &qword_27FDAFC10);
  v35 = v39;
  sub_25F7617D4(v8, v39, type metadata accessor for Preset.Info);
  sub_25F75D11C(v35, v41, type metadata accessor for Preset);
  return sub_25F75D810(v35, type metadata accessor for Preset);
}

double ProDisplay.luminanceCorrectionFactor(whitepoint:calibrationSpace:)(__int128 *a1)
{
  v2 = *(a1 + 16);
  v46 = *a1;
  v47 = v2;
  WhitePoint.chroma.getter(v45);
  v3 = *v45;
  v4 = *&v45[1];
  v5 = type metadata accessor for ProDisplay(0);
  (*(*(v1 + *(v5 + 24) + 8) + 96))(&v43);
  v41 = v43;
  v42 = v44;
  WhitePoint.chroma.getter(v40);
  v6 = *v40;
  v7 = *&v40[1];
  v55 = xmmword_25F823D10;
  v56 = xmmword_25F823D20;
  v57 = xmmword_25F823D30;
  v49 = xmmword_25F823D10;
  v50 = xmmword_25F823D20;
  v51 = xmmword_25F823D30;
  if (_s17ProDisplayLibrary9PrimariesV2eeoiySbAC_ACtFZ_0(&v55, &v49) && v3 == v6 && v4 == v7)
  {
    v8 = *MEMORY[0x277D86098];
    v9 = *(MEMORY[0x277D86098] + 16);
    v11 = *(MEMORY[0x277D86098] + 32);
    v10 = *(MEMORY[0x277D86098] + 48);
    v12 = *(MEMORY[0x277D86098] + 64);
    v13 = *(MEMORY[0x277D86098] + 80);
  }

  else
  {
    v55 = xmmword_25F823D10;
    v56 = xmmword_25F823D20;
    v57 = xmmword_25F823D30;
    *&v49 = v3;
    *(&v49 + 1) = v4;
    sub_25F81B470(&v55, &v49, v48);
    v26 = v48[0];
    v27 = v48[1];
    v28 = v48[2];
    v29 = v48[3];
    v30 = v48[4];
    v31 = v48[5];
    v55 = xmmword_25F823D10;
    v56 = xmmword_25F823D20;
    v57 = xmmword_25F823D30;
    v34.f64[0] = v6;
    v34.f64[1] = v7;
    sub_25F81B470(&v55, v34.f64, &v49);
    v55 = v49;
    v56 = v50;
    v57 = v51;
    v58 = v52;
    v59 = v53;
    v60 = v54;
    __invert_d3();
    v14 = vmlaq_f64(vmlaq_laneq_f64(vmulq_f64(v35, v26), v37, v26, 1), v27, v39);
    v15 = vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(v34, v26.f64[0]), v36, v26, 1), v38, v27.f64[0]);
    v16 = vextq_s8(v15, v15, 8uLL).u64[0];
    v17 = vmlaq_f64(vmlaq_laneq_f64(vmulq_f64(v35, v28), v37, v28, 1), v29, v39);
    v18 = vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(v34, v28.f64[0]), v36, v28, 1), v38, v29.f64[0]);
    v19 = vextq_s8(v18, v18, 8uLL).u64[0];
    v20 = vmlaq_f64(vmlaq_laneq_f64(vmulq_f64(v35, v30), v37, v30, 1), v31, v39);
    v21 = vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(v34, v30.f64[0]), v36, v30, 1), v38, v31.f64[0]);
    v22 = vextq_s8(v21, v21, 8uLL).u64[0];
    *&v23 = *&vaddq_f64(v20, vaddq_f64(v14, v17));
    v24 = vaddq_f64(v21, vaddq_f64(v15, v18));
    if (v24.f64[1] >= v24.f64[0])
    {
      if ((*&v24.f64[1] & 0xFFFFFFFFFFFFFLL) == 0)
      {
        v24.f64[0] = v24.f64[1];
      }

      if ((~*&v24.f64[1] & 0x7FF0000000000000) != 0)
      {
        v24.f64[0] = v24.f64[1];
      }
    }

    if (v23 >= v24.f64[0])
    {
      if ((*&v23 & 0xFFFFFFFFFFFFFLL) == 0)
      {
        v24.f64[0] = v23;
      }

      if ((~*&v23 & 0x7FF0000000000000) != 0)
      {
        v24.f64[0] = v23;
      }
    }

    v24.f64[0] = 1.0 / v24.f64[0];
    v9 = vmulq_f64(v14, v24);
    *&v15.f64[1] = v16;
    v8 = vmulq_n_f64(v15, v24.f64[0]);
    *&v18.f64[1] = v19;
    v10 = vmulq_f64(v17, v24);
    v11 = vmulq_n_f64(v18, v24.f64[0]);
    v13 = vmulq_f64(v20, v24);
    *&v21.f64[1] = v22;
    v12 = vmulq_n_f64(v21, v24.f64[0]);
  }

  *&v32 = *&vaddq_f64(v13, vaddq_f64(v9, v10));
  v34 = xmmword_25F823D10;
  v35 = xmmword_25F823D20;
  v33 = vaddq_f64(v12, vaddq_f64(v8, v11));
  v36 = xmmword_25F823D30;
  *&v46 = v6;
  *(&v46 + 1) = v7;
  sub_25F81B470(v34.f64, &v46, &v55);
  return 1.0 / COERCE_DOUBLE(*&vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(v55, *&v33), v57, v33, 1), v59, v32).f64[1]);
}

uint64_t ProDisplay.addUserAdjustment(_:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFC18);
  MEMORY[0x28223BE20](v3 - 8);
  v101 = &v87 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFC28);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v100 = &v87 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v96 = &v87 - v8;
  v9 = sub_25F8221EC();
  v98 = *(v9 - 8);
  v10 = MEMORY[0x28223BE20](v9);
  v92 = &v87 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v91 = &v87 - v13;
  MEMORY[0x28223BE20](v12);
  v97 = &v87 - v14;
  v15 = type metadata accessor for UserAdjustment();
  v102 = *(v15 - 8);
  v103 = v15;
  v16 = MEMORY[0x28223BE20](v15);
  v94 = &v87 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v93 = &v87 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v95 = &v87 - v21;
  MEMORY[0x28223BE20](v20);
  v23 = &v87 - v22;
  v99 = type metadata accessor for ProDisplay(0);
  v24 = *(v99 + 24);
  v134 = v1;
  v25 = (v1 + v24);
  v26 = *v25;
  v27 = v25[1];
  v28 = (*(v27 + 32))(*v25, v27);
  v29 = sub_25F7556F4(2u, v28);

  if (!v29)
  {
    type metadata accessor for ProDisplay.ProDisplayError(0);
    sub_25F75D920();
    swift_allocError();
    *v50 = 2;
LABEL_8:
    swift_storeEnumTagMultiPayload();
    return swift_willThrow();
  }

  *(&v128 + 1) = &type metadata for ProDisplayLibraryFeatureFlags;
  *&v129 = sub_25F760EC0();
  v30 = sub_25F82218C();
  __swift_destroy_boxed_opaque_existential_0Tm(&v127);
  if ((v30 & 1) == 0)
  {
    v42 = v134;
    v51 = v134[3];
    v52 = v134[4];
    __swift_project_boxed_opaque_existential_1(v134, v51);
    v53 = v104;
    result = (*(v52 + 48))(a1, v51, v52);
    if (v53)
    {
      return result;
    }

    v48 = v103;
    goto LABEL_11;
  }

  v88 = v9;
  sub_25F75D11C(a1, v23, type metadata accessor for UserAdjustment);
  v31 = v103[8];
  v32 = &v23[v103[7]];
  v115[0] = 0;
  v34 = *v32;
  v33 = *(v32 + 1);
  v89 = a1;
  v90 = v33;
  LOBYTE(v109) = 0;
  v35 = *&v23[v31];
  LOBYTE(v116) = 0;
  v36 = v103[10];
  v37 = &v23[v103[9]];
  LOBYTE(v107[0]) = 0;
  v38 = *v37;
  v39 = *(v37 + 1);
  LOBYTE(v106[0]) = 0;
  v40 = *&v23[v36];
  sub_25F75D810(v23, type metadata accessor for UserAdjustment);
  LOBYTE(v105[0]) = 0;
  v41 = v116;
  *&v116 = v34;
  BYTE8(v116) = v115[0];
  v117 = v90;
  v118 = v109;
  v119 = v35;
  v120 = v41;
  v121 = v38;
  v122 = v107[0];
  v123 = v39;
  v124 = v106[0];
  v125 = v40;
  v126 = 0;
  v42 = v134;
  v43 = v104;
  result = ProDisplay.userAdjustmentRange(with:)(&v116, &v127);
  if (v43)
  {
    return result;
  }

  *&v115[64] = v131;
  *&v115[80] = v132;
  *&v115[96] = v133;
  *v115 = v127;
  *&v115[16] = v128;
  *&v115[32] = v129;
  *&v115[48] = v130;
  a1 = v89;
  if (!UserAdjustment.Ranges.contains(_:)(v89))
  {
    *v115 = 0;
    *&v115[8] = 0xE000000000000000;
    sub_25F82292C();

    *v115 = 0xD000000000000011;
    *&v115[8] = 0x800000025F82C810;
    v58 = sub_25F82212C();
    MEMORY[0x25F8E7510](v58);

    MEMORY[0x25F8E7510](0xD00000000000001ELL, 0x800000025F82C830);
    v60 = *v115;
    v59 = *&v115[8];
    v61 = v97;
    sub_25F8221DC();

    v62 = sub_25F8221CC();
    v63 = sub_25F82268C();

    if (os_log_type_enabled(v62, v63))
    {
      v64 = swift_slowAlloc();
      v65 = a1;
      v66 = swift_slowAlloc();
      *v115 = v66;
      *v64 = 136315138;
      *(v64 + 4) = sub_25F75CA94(v60, v59, v115);
      _os_log_impl(&dword_25F74E000, v62, v63, "%s", v64, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v66);
      v67 = v66;
      a1 = v65;
      MEMORY[0x25F8E88D0](v67, -1, -1);
      MEMORY[0x25F8E88D0](v64, -1, -1);
    }

    (*(v98 + 8))(v61, v88);

    type metadata accessor for ProDisplay.ProDisplayError(0);
    sub_25F75D920();
    swift_allocError();
    sub_25F76183C(a1, v68, &qword_27FDAFC18);
    goto LABEL_8;
  }

  v45 = v96;
  ProDisplay.userAdjustment()(v96);
  v46 = v45;
  v47 = v45;
  v48 = v103;
  if ((*(v102 + 48))(v47, 1, v103) == 1)
  {
    sub_25F760F44(v46, &qword_27FDAFC28);
    v49 = v95;
    sub_25F75D11C(a1, v95, type metadata accessor for UserAdjustment);
LABEL_26:
    v85 = v42[3];
    v86 = v42[4];
    __swift_project_boxed_opaque_existential_1(v42, v85);
    (*(v86 + 48))(v49, v85, v86);
    sub_25F75D810(v49, type metadata accessor for UserAdjustment);
LABEL_11:
    v54 = v42 + *(v99 + 20);
    v55 = *(type metadata accessor for ProData() + 24);

    *&v54[v55] = MEMORY[0x277D84F98];
    v56 = v101;
    sub_25F76183C(a1, v101, &qword_27FDAFC18);
    v57 = v100;
    sub_25F75D11C(a1, v100, type metadata accessor for UserAdjustment);
    (*(v102 + 56))(v57, 0, 1, v48);
    return sub_25F7537A0(v57, v56);
  }

  v69 = v93;
  sub_25F75D050(v46, v93, type metadata accessor for UserAdjustment);
  (*(v27 + 104))(v115, v26, v27);
  v107[0] = *v115;
  v107[1] = *&v115[16];
  v107[2] = *&v115[32];
  v108 = v115[48];
  ColorSpace.primaries.getter(v106, *&v115[32]);
  v105[0] = v106[0];
  v105[1] = v106[1];
  v105[2] = v106[2];
  v70 = v94;
  sub_25F7D5BD0(a1, v105, v94);
  (*(v27 + 112))(v115, v26, v27);
  v111 = *&v115[40];
  v112 = *&v115[56];
  v113 = *&v115[72];
  v114 = *&v115[88];
  v109 = *&v115[8];
  v110 = *&v115[24];
  if (v115[0] != 2)
  {
    *&v115[40] = v111;
    *&v115[56] = v112;
    *&v115[72] = v113;
    *&v115[88] = v114;
    *&v115[8] = v109;
    *&v115[24] = v110;
    v49 = v95;
    sub_25F7FA660(v115, v95);
    if (!UserAdjustment.isNumericallyEqual(to:)(v70))
    {
      v79 = v91;
      sub_25F8221DC();
      v80 = sub_25F8221CC();
      v81 = sub_25F82268C();
      if (os_log_type_enabled(v80, v81))
      {
        v82 = swift_slowAlloc();
        v83 = swift_slowAlloc();
        *v115 = v83;
        *v82 = 136315138;
        v69 = v93;
        *(v82 + 4) = sub_25F75CA94(0xD000000000000032, 0x800000025F82C8A0, v115);
        _os_log_impl(&dword_25F74E000, v80, v81, "%s", v82, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v83);
        v84 = v83;
        v70 = v94;
        MEMORY[0x25F8E88D0](v84, -1, -1);
        MEMORY[0x25F8E88D0](v82, -1, -1);

        (*(v98 + 8))(v91, v88);
      }

      else
      {

        (*(v98 + 8))(v79, v88);
      }

      v49 = v95;
    }

    sub_25F75D810(v70, type metadata accessor for UserAdjustment);
    sub_25F75D810(v69, type metadata accessor for UserAdjustment);
    v42 = v134;
    v48 = v103;
    goto LABEL_26;
  }

  *v115 = 0;
  *&v115[8] = 0xE000000000000000;
  sub_25F82292C();
  MEMORY[0x25F8E7510](0xD000000000000026, 0x800000025F82C850);
  (*(v27 + 16))(v107, v26, v27);
  LOBYTE(v106[0]) = v107[0];
  sub_25F8229FC();
  MEMORY[0x25F8E7510](0xD00000000000001DLL, 0x800000025F82C880);
  v72 = *v115;
  v71 = *&v115[8];
  v73 = v92;
  sub_25F8221DC();

  v74 = sub_25F8221CC();
  v75 = sub_25F82268C();

  if (os_log_type_enabled(v74, v75))
  {
    v76 = swift_slowAlloc();
    v77 = swift_slowAlloc();
    *v115 = v77;
    *v76 = 136315138;
    *(v76 + 4) = sub_25F75CA94(v72, v71, v115);
    _os_log_impl(&dword_25F74E000, v74, v75, "%s", v76, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v77);
    MEMORY[0x25F8E88D0](v77, -1, -1);
    MEMORY[0x25F8E88D0](v76, -1, -1);
  }

  (*(v98 + 8))(v73, v88);

  type metadata accessor for ProDisplay.ProDisplayError(0);
  sub_25F75D920();
  swift_allocError();
  *v78 = 3;
  swift_storeEnumTagMultiPayload();
  swift_willThrow();
  sub_25F75D810(v94, type metadata accessor for UserAdjustment);
  return sub_25F75D810(v69, type metadata accessor for UserAdjustment);
}

uint64_t ProDisplay.userAdjustmentRange(with:)@<X0>(_OWORD *a1@<X0>, float64_t *a2@<X8>)
{
  v40 = a2;
  *&v42 = sub_25F8221EC();
  *&v41 = *(v42 - 8);
  v4 = MEMORY[0x28223BE20](v42);
  v6 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v62 = &v39 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFC28);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v39 - v9;
  v11 = *(type metadata accessor for ProDisplay(0) + 24);
  v39 = v2;
  v12 = (v2 + v11);
  v13 = *v12;
  v14 = v12[1];
  v15 = (*(v14 + 32))(*v12, v14);
  v16 = sub_25F7556F4(2u, v15);

  if (!v16)
  {
    sub_25F8221DC();
    v27 = sub_25F8221CC();
    v28 = sub_25F82268C();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      *v52 = v30;
      *v29 = 136315138;
      *(v29 + 4) = sub_25F75CA94(0xD000000000000025, 0x800000025F82C8E0, v52);
      _os_log_impl(&dword_25F74E000, v27, v28, "%s", v29, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v30);
      MEMORY[0x25F8E88D0](v30, -1, -1);
      MEMORY[0x25F8E88D0](v29, -1, -1);
    }

    (*(v41 + 8))(v6, v42);
    type metadata accessor for ProDisplay.ProDisplayError(0);
    sub_25F75D920();
    swift_allocError();
    v26 = 2;
    goto LABEL_9;
  }

  (*(v14 + 112))(v52, v13, v14);
  v17 = *v52;
  v58 = *&v52[40];
  v59 = v53;
  v60 = v54;
  v61 = v55;
  v56 = *&v52[8];
  v57 = *&v52[24];
  if (v52[0] == 2)
  {
    *v52 = 0;
    *&v52[8] = 0xE000000000000000;
    sub_25F82292C();
    MEMORY[0x25F8E7510](0xD000000000000026, 0x800000025F82C850);
    (*(v14 + 16))(v50, v13, v14);
    LOBYTE(v43) = v50[0];
    sub_25F8229FC();
    MEMORY[0x25F8E7510](0xD00000000000001DLL, 0x800000025F82C880);
    v19 = *v52;
    v18 = *&v52[8];
    v20 = v62;
    sub_25F8221DC();

    v21 = sub_25F8221CC();
    v22 = sub_25F82268C();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      *v52 = v24;
      *v23 = 136315138;
      *(v23 + 4) = sub_25F75CA94(v19, v18, v52);
      _os_log_impl(&dword_25F74E000, v21, v22, "%s", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v24);
      MEMORY[0x25F8E88D0](v24, -1, -1);
      MEMORY[0x25F8E88D0](v23, -1, -1);
    }

    (*(v41 + 8))(v20, v42);

    type metadata accessor for ProDisplay.ProDisplayError(0);
    sub_25F75D920();
    swift_allocError();
    v26 = 3;
LABEL_9:
    *v25 = v26;
    swift_storeEnumTagMultiPayload();
    return swift_willThrow();
  }

  (*(v14 + 88))(v52, v13, v14, 1.08);
  v32 = *v52;
  v33 = *&v52[8];
  v34 = a1[3];
  v50[2] = a1[2];
  v50[3] = v34;
  v51[0] = a1[4];
  *(v51 + 9) = *(a1 + 73);
  v35 = a1[1];
  v50[0] = *a1;
  v50[1] = v35;
  (*(v14 + 104))(v52, v13, v14);
  v43 = *v52;
  v44 = *&v52[16];
  v45 = *&v52[32];
  LOBYTE(v46) = v52[48];
  ColorSpace.primaries.getter(v47, *&v52[32]);
  v36 = v48;
  v37 = v49;
  v41 = v47[1];
  v42 = v47[0];
  v38 = (*(v14 + 72))(v13, v14);
  v43 = v42;
  v44 = v41;
  *&v45 = v36;
  *(&v45 + 1) = v37;
  v46 = v38;
  *v52 = v17;
  *&v52[40] = v58;
  v53 = v59;
  v54 = v60;
  v55 = v61;
  *&v52[8] = v56;
  *&v52[24] = v57;
  *&v47[0] = v32;
  *(&v47[0] + 1) = v33;
  ProDisplay.userAdjustment()(v10);
  static UserAdjustment.computeRanges(userInputs:displayAttributes:validationRules:luminanceLimits:existingAdjustment:)(v50, &v43, v52, v47, v10, v40);
  return sub_25F760F44(v10, &qword_27FDAFC28);
}

uint64_t ProDisplay.userAdjustment()@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_25F8221EC();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v30 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFC38);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v30 - v11;
  v13 = type metadata accessor for ProDisplay(0);
  v14 = (*(*(v1 + *(v13 + 24) + 8) + 32))();
  v15 = sub_25F7556F4(2u, v14);

  if (v15)
  {
    v16 = v1 + *(v13 + 20);
    v17 = *(v16 + *(type metadata accessor for ProData() + 24));
    if (*(v17 + 16) > 1uLL)
    {
      sub_25F8221DC();
      v23 = sub_25F8221CC();
      v24 = sub_25F82269C();
      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        v26 = swift_slowAlloc();
        v31 = v26;
        *v25 = 136315138;
        *(v25 + 4) = sub_25F75CA94(0xD00000000000003BLL, 0x800000025F82C910, &v31);
        _os_log_impl(&dword_25F74E000, v23, v24, "%s", v25, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v26);
        MEMORY[0x25F8E88D0](v26, -1, -1);
        MEMORY[0x25F8E88D0](v25, -1, -1);
      }

      (*(v4 + 8))(v9, v3);
    }

    else
    {
      sub_25F757D50(v17, v12);
      v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFC40);
      if ((*(*(v18 - 8) + 48))(v12, 1, v18) != 1)
      {
        sub_25F75D050(&v12[*(v18 + 48)], a1, type metadata accessor for UserAdjustment);
        v29 = type metadata accessor for UserAdjustment();
        (*(*(v29 - 8) + 56))(a1, 0, 1, v29);
        return sub_25F760F44(v12, &qword_27FDAFC18);
      }

      sub_25F760F44(v12, &qword_27FDAFC38);
    }
  }

  else
  {
    sub_25F8221DC();
    v19 = sub_25F8221CC();
    v20 = sub_25F82268C();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v31 = v22;
      *v21 = 136315138;
      *(v21 + 4) = sub_25F75CA94(0xD000000000000025, 0x800000025F82C8E0, &v31);
      _os_log_impl(&dword_25F74E000, v19, v20, "%s", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v22);
      MEMORY[0x25F8E88D0](v22, -1, -1);
      MEMORY[0x25F8E88D0](v21, -1, -1);
    }

    (*(v4 + 8))(v7, v3);
  }

  v27 = type metadata accessor for UserAdjustment();
  return (*(*(v27 - 8) + 56))(a1, 1, 1, v27);
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> ProDisplay.removeUserAdjustment()()
{
  v2 = type metadata accessor for ProDisplay(0);
  v3 = (*(*(v0 + *(v2 + 24) + 8) + 32))();
  v4 = sub_25F7556F4(2u, v3);

  if (v4)
  {
    v5 = v0[3];
    v6 = v0[4];
    __swift_project_boxed_opaque_existential_1(v0, v5);
    (*(v6 + 56))(v5, v6);
    if (!v1)
    {
      v7 = v0 + *(v2 + 20);
      v8 = *(type metadata accessor for ProData() + 24);

      *&v7[v8] = MEMORY[0x277D84F98];
    }
  }

  else
  {
    type metadata accessor for ProDisplay.ProDisplayError(0);
    sub_25F75D920();
    swift_allocError();
    *v9 = 2;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
  }
}

uint64_t sub_25F757C58@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  result = sub_25F82289C();
  if (result == 1 << *(a1 + 32))
  {
    v5 = 7;
  }

  else
  {
    result = sub_25F7E2DCC(result, *(a1 + 36), a1, &v6);
    v5 = v6;
  }

  *a2 = v5;
  return result;
}

uint64_t sub_25F757CD4@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  result = sub_25F82289C();
  if (result == 1 << *(a1 + 32))
  {
    v5 = 2;
  }

  else
  {
    result = sub_25F7E2DCC(result, *(a1 + 36), a1, &v6);
    v5 = v6;
  }

  *a2 = v5;
  return result;
}

uint64_t sub_25F757D50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFC40);
  v12 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v11 - v5;
  v7 = sub_25F82289C();
  if (v7 == 1 << *(a1 + 32))
  {
    v8 = *(v12 + 56);

    return v8(a2, 1, 1, v4);
  }

  else
  {
    v10 = *(v4 + 48);
    sub_25F760D48(v6, &v6[v10], v7, *(a1 + 36), 0, a1);
    sub_25F760FA4(v6, a2, &qword_27FDAFC18);
    sub_25F75D050(&v6[v10], a2 + *(v4 + 48), type metadata accessor for UserAdjustment);
    return (*(v12 + 56))(a2, 0, 1, v4);
  }
}

uint64_t ProDisplay.addUserAdjustment(_:for:live:)(uint64_t a1, uint64_t a2, int a3)
{
  v205 = a3;
  v180 = a2;
  v175 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFBE0);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v154 = &v148 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v156 = &v148 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFBB0);
  MEMORY[0x28223BE20](v8 - 8);
  v161 = &v148 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFC10);
  MEMORY[0x28223BE20](v10 - 8);
  v155 = &v148 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFC18);
  v159 = *(v12 - 8);
  v160 = v12;
  v13 = MEMORY[0x28223BE20](v12);
  v157 = &v148 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v153 = &v148 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFC28);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v158 = &v148 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v166 = &v148 - v19;
  v20 = sub_25F8221EC();
  v171 = *(v20 - 8);
  v172 = v20;
  v21 = MEMORY[0x28223BE20](v20);
  v162 = &v148 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v21);
  v163 = &v148 - v24;
  MEMORY[0x28223BE20](v23);
  v167 = &v148 - v25;
  v174 = type metadata accessor for UserAdjustment();
  v170 = *(v174 - 1);
  v26 = MEMORY[0x28223BE20](v174);
  v165 = &v148 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x28223BE20](v26);
  v169 = &v148 - v29;
  v30 = MEMORY[0x28223BE20](v28);
  v168 = &v148 - v31;
  MEMORY[0x28223BE20](v30);
  v33 = &v148 - v32;
  v164 = type metadata accessor for Preset(0);
  v179 = *(v164 - 8);
  v34 = MEMORY[0x28223BE20](v164);
  v152 = &v148 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = MEMORY[0x28223BE20](v34);
  v38 = &v148 - v37;
  MEMORY[0x28223BE20](v36);
  v176 = &v148 - v39;
  v40 = type metadata accessor for ProDisplay(0);
  v41 = *(v40 + 24);
  v181 = v3;
  v42 = (v3 + v41);
  v43 = *v42;
  v44 = *(v42[1] + 32);
  v177 = v42[1];
  v178 = v43;
  v45 = v44();
  v46 = 3;
  v47 = sub_25F7556F4(3u, v45);

  if (v47 && ((v205 & 1) == 0 || (v48 = v44(), v46 = 4, v49 = sub_25F7556F4(4u, v48), , v49)))
  {
    v50 = v181 + *(v40 + 20);
    v51 = type metadata accessor for ProData();
    v52 = *(v51 + 28);
    v53 = *(v50 + v52);
    v151 = v51;
    if (v53)
    {
      v54 = v53;
    }

    else
    {
      v54 = (*(v50 + *(v51 + 40)))();
    }

    v57 = v179;
    v56 = v180;
    v58 = *(v54 + 16);

    if (v58)
    {
      v59 = sub_25F75DA44(v56, &qword_27FDAFBB0);
      if (v60)
      {
        v148 = v52;
        v149 = v53;
        v150 = v50;
        sub_25F75D11C(*(v54 + 56) + *(v57 + 72) * v59, v38, type metadata accessor for Preset);

        v61 = v176;
        sub_25F75D050(v38, v176, type metadata accessor for Preset);
        sub_25F75D11C(v175, v33, type metadata accessor for UserAdjustment);
        v62 = v174[8];
        v63 = &v33[v174[7]];
        v190[0] = 0;
        v64 = *v63;
        v65 = *(v63 + 1);
        LOBYTE(v184) = 0;
        v66 = *&v33[v62];
        LOBYTE(v191) = 0;
        v67 = v174[10];
        v68 = &v33[v174[9]];
        LOBYTE(v183[0]) = 0;
        v69 = *v68;
        v70 = *(v68 + 1);
        LOBYTE(v182[0]) = 0;
        v71 = *&v33[v67];
        sub_25F75D810(v33, type metadata accessor for UserAdjustment);
        v202 = 0;
        v72 = v191;
        *&v191 = v64;
        BYTE8(v191) = v190[0];
        v192 = v65;
        v193 = v184;
        v194 = v66;
        v195 = v72;
        v196 = v69;
        v197 = v183[0];
        v198 = v70;
        v73 = v180;
        v199 = v182[0];
        v200 = v71;
        v201 = 0;
        v74 = v173;
        ProDisplay.userAdjustmentRange(of:with:)(v180, &v191, v203);
        if (v74)
        {
          v75 = v61;
          return sub_25F75D810(v75, type metadata accessor for Preset);
        }

        *&v190[64] = v203[4];
        *&v190[80] = v203[5];
        *&v190[96] = v204;
        *v190 = v203[0];
        *&v190[16] = v203[1];
        *&v190[32] = v203[2];
        *&v190[48] = v203[3];
        v78 = v175;
        if (!UserAdjustment.Ranges.contains(_:)(v175))
        {
          *v190 = 0;
          *&v190[8] = 0xE000000000000000;
          sub_25F82292C();

          *v190 = 0xD000000000000011;
          *&v190[8] = 0x800000025F82C810;
          v83 = sub_25F82212C();
          MEMORY[0x25F8E7510](v83);

          MEMORY[0x25F8E7510](0xD00000000000001ELL, 0x800000025F82C830);
          v85 = *v190;
          v84 = *&v190[8];
          v86 = v167;
          sub_25F8221DC();

          v87 = sub_25F8221CC();
          v88 = sub_25F82268C();

          if (os_log_type_enabled(v87, v88))
          {
            v89 = swift_slowAlloc();
            v90 = swift_slowAlloc();
            *v190 = v90;
            *v89 = 136315138;
            *(v89 + 4) = sub_25F75CA94(v85, v84, v190);
            _os_log_impl(&dword_25F74E000, v87, v88, "%s", v89, 0xCu);
            __swift_destroy_boxed_opaque_existential_0Tm(v90);
            MEMORY[0x25F8E88D0](v90, -1, -1);
            MEMORY[0x25F8E88D0](v89, -1, -1);
          }

          (*(v171 + 8))(v86, v172);

          type metadata accessor for ProDisplay.ProDisplayError(0);
          sub_25F75D920();
          swift_allocError();
          sub_25F76183C(v78, v91, &qword_27FDAFC18);
          swift_storeEnumTagMultiPayload();
          swift_willThrow();
          goto LABEL_39;
        }

        v79 = v166;
        ProDisplay.userAdjustment(of:)(v73, v166);
        if ((*(v170 + 48))(v79, 1, v174) == 1)
        {
          sub_25F760F44(v79, &qword_27FDAFC28);
          v80 = v78;
          v81 = v168;
          v82 = sub_25F75D11C(v80, v168, type metadata accessor for UserAdjustment);
        }

        else
        {
          sub_25F75D050(v79, v169, type metadata accessor for UserAdjustment);
          v92 = v176;
          v93 = v176 + *(v164 + 20);
          v94 = *(v93 + 48);
          v95 = *(v93 + 16);
          *v190 = *v93;
          *&v190[16] = v95;
          *&v190[32] = *(v93 + 32);
          v190[48] = v94;
          ColorSpace.primaries.getter(v183, *&v190[32]);
          v182[0] = v183[0];
          v182[1] = v183[1];
          v182[2] = v183[2];
          v96 = v165;
          sub_25F7D5BD0(v78, v182, v165);
          v97 = v177;
          v98 = v92;
          v99 = v178;
          (*(v177 + 120))(v190, v98, v178, v177);
          v186 = *&v190[40];
          v187 = *&v190[56];
          v188 = *&v190[72];
          v189 = *&v190[88];
          v184 = *&v190[8];
          v185 = *&v190[24];
          v81 = v168;
          if (v190[0] == 2)
          {
            *v190 = 0;
            *&v190[8] = 0xE000000000000000;
            sub_25F82292C();
            MEMORY[0x25F8E7510](0xD00000000000002ALL, 0x800000025F82C950);
            (*(v97 + 16))(v183, v99, v97);
            LOBYTE(v182[0]) = v183[0];
            sub_25F8229FC();
            MEMORY[0x25F8E7510](0xD00000000000001DLL, 0x800000025F82C880);
            v101 = *v190;
            v100 = *&v190[8];
            v102 = v162;
            sub_25F8221DC();

            v103 = sub_25F8221CC();
            v104 = sub_25F82268C();

            if (os_log_type_enabled(v103, v104))
            {
              v105 = swift_slowAlloc();
              v106 = swift_slowAlloc();
              *v190 = v106;
              *v105 = 136315138;
              *(v105 + 4) = sub_25F75CA94(v101, v100, v190);
              _os_log_impl(&dword_25F74E000, v103, v104, "%s", v105, 0xCu);
              __swift_destroy_boxed_opaque_existential_0Tm(v106);
              v107 = v169;
              MEMORY[0x25F8E88D0](v106, -1, -1);
              MEMORY[0x25F8E88D0](v105, -1, -1);

              (*(v171 + 8))(v102, v172);
            }

            else
            {

              (*(v171 + 8))(v102, v172);

              v107 = v169;
            }

            type metadata accessor for ProDisplay.ProDisplayError(0);
            sub_25F75D920();
            swift_allocError();
            *v130 = 3;
            swift_storeEnumTagMultiPayload();
            swift_willThrow();
            sub_25F75D810(v165, type metadata accessor for UserAdjustment);
            v124 = v107;
LABEL_38:
            sub_25F75D810(v124, type metadata accessor for UserAdjustment);
LABEL_39:
            v75 = v176;
            return sub_25F75D810(v75, type metadata accessor for Preset);
          }

          *&v190[40] = v186;
          *&v190[56] = v187;
          *&v190[72] = v188;
          *&v190[88] = v189;
          *&v190[8] = v184;
          *&v190[24] = v185;
          sub_25F7FA660(v190, v168);
          v108 = UserAdjustment.isNumericallyEqual(to:)(v96);
          v109 = v169;
          if (!v108)
          {
            *v190 = 0;
            *&v190[8] = 0xE000000000000000;
            sub_25F82292C();
            MEMORY[0x25F8E7510](0xD00000000000002BLL, 0x800000025F82C980);
            v110 = sub_25F82212C();
            MEMORY[0x25F8E7510](v110);

            MEMORY[0x25F8E7510](0x6C6320746F672027, 0xED00006465706D61);
            v111 = *&v190[8];
            v178 = *v190;
            sub_25F8221DC();

            v112 = sub_25F8221CC();
            v113 = sub_25F82268C();

            if (os_log_type_enabled(v112, v113))
            {
              v114 = swift_slowAlloc();
              v115 = swift_slowAlloc();
              *v190 = v115;
              *v114 = 136315138;
              *(v114 + 4) = sub_25F75CA94(v178, v111, v190);
              _os_log_impl(&dword_25F74E000, v112, v113, "%s", v114, 0xCu);
              __swift_destroy_boxed_opaque_existential_0Tm(v115);
              v116 = v115;
              v73 = v180;
              MEMORY[0x25F8E88D0](v116, -1, -1);
              v117 = v114;
              v109 = v169;
              MEMORY[0x25F8E88D0](v117, -1, -1);
            }

            (*(v171 + 8))(v163, v172);
          }

          sub_25F75D810(v96, type metadata accessor for UserAdjustment);
          v82 = sub_25F75D810(v109, type metadata accessor for UserAdjustment);
        }

        v118 = *(v150 + *(v151 + 24));
        MEMORY[0x28223BE20](v82);
        *(&v148 - 2) = v81;

        v119 = sub_25F75ABE4(sub_25F760F14, (&v148 - 4), v118, &qword_27FDAFC18, &unk_25F824310);

        if ((v119 & 1) == 0)
        {
          v121 = *(v181 + 24);
          v122 = *(v181 + 32);
          __swift_mutable_project_boxed_opaque_existential_1(v181, v121);
          v123 = v205;
          (*(v122 + 64))(v81, v73, v205 & 1, v121, v122);
          v125 = v176;
          if ((v123 & 1) == 0)
          {
            v126 = *(type metadata accessor for Preset.Info(0) + 36);
            v127 = v155;
            sub_25F76183C(v125 + v126, v155, &qword_27FDAFC10);
            if ((*(v159 + 48))(v127, 1, v160) == 1)
            {
              v128 = &qword_27FDAFC10;
              v129 = v127;
            }

            else
            {
              v131 = v153;
              sub_25F760FA4(v127, v153, &qword_27FDAFC18);
              v132 = v158;
              sub_25F75FB64(v131, v158);
              sub_25F760F44(v132, &qword_27FDAFC28);
              v129 = v131;
              v128 = &qword_27FDAFC18;
              v125 = v176;
            }

            sub_25F760F44(v129, v128);
            v133 = v161;
            v134 = v164;
            sub_25F760F44(v125 + v126, &qword_27FDAFC10);
            sub_25F76183C(v81, v125 + v126, &qword_27FDAFC18);
            (*(v159 + 56))(v125 + v126, 0, 1, v160);
            sub_25F76183C(v180, v133, &qword_27FDAFBB0);
            v135 = v156;
            sub_25F75D11C(v125, v156, type metadata accessor for Preset);
            v136 = v179;
            v137 = (*(v179 + 56))(v135, 0, 1, v134);
            v138 = v149;
            if (!v149)
            {
              v138 = (*(v150 + *(v151 + 40)))(v137);
            }

            *v190 = v138;
            if ((*(v136 + 48))(v135, 1, v134) == 1)
            {

              sub_25F760F44(v135, &qword_27FDAFBE0);
              v139 = v154;
              v140 = v161;
              sub_25F75FD38(v161, v154);
              v125 = v176;
              sub_25F760F44(v139, &qword_27FDAFBE0);
              sub_25F760F44(v140, &qword_27FDAFBB0);

              v141 = *v190;
            }

            else
            {
              v142 = v152;
              sub_25F75D050(v135, v152, type metadata accessor for Preset);

              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              *&v184 = v138;
              v144 = v142;
              v145 = v161;
              sub_25F76074C(v144, v161, isUniquelyReferenced_nonNull_native);
              sub_25F760F44(v145, &qword_27FDAFBB0);

              v141 = v184;
            }

            *(v150 + v148) = v141;
            v146 = v157;
            sub_25F76183C(v81, v157, &qword_27FDAFC18);
            v147 = v158;
            sub_25F75D11C(v81, v158, type metadata accessor for UserAdjustment);
            (*(v170 + 56))(v147, 0, 1, v174);
            sub_25F7537A0(v147, v146);
          }

          sub_25F75D810(v81, type metadata accessor for UserAdjustment);
          v75 = v125;
          return sub_25F75D810(v75, type metadata accessor for Preset);
        }

        type metadata accessor for ProDisplay.ProDisplayError(0);
        sub_25F75D920();
        swift_allocError();
        sub_25F76183C(v81, v120, &qword_27FDAFC18);
        swift_storeEnumTagMultiPayload();
        swift_willThrow();
        v124 = v81;
        goto LABEL_38;
      }
    }

    type metadata accessor for ProDisplay.ProDisplayError(0);
    sub_25F75D920();
    swift_allocError();
    sub_25F76183C(v56, v76, &qword_27FDAFBB0);
  }

  else
  {
    type metadata accessor for ProDisplay.ProDisplayError(0);
    sub_25F75D920();
    swift_allocError();
    *v55 = v46;
  }

  swift_storeEnumTagMultiPayload();
  return swift_willThrow();
}

uint64_t ProDisplay.userAdjustmentRange(of:with:)@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, float64_t *a3@<X8>)
{
  v86 = a3;
  v88 = a1;
  *&v90 = sub_25F8221EC();
  *&v89 = *(v90 - 8);
  v5 = MEMORY[0x28223BE20](v90);
  v7 = &v80 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v87 = &v80 - v9;
  MEMORY[0x28223BE20](v8);
  v83 = &v80 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFC28);
  MEMORY[0x28223BE20](v11 - 8);
  v82 = &v80 - v12;
  v80 = type metadata accessor for Preset(0);
  v84 = *(v80 - 8);
  v13 = MEMORY[0x28223BE20](v80);
  v81 = &v80 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v80 - v16;
  MEMORY[0x28223BE20](v15);
  v85 = &v80 - v18;
  v19 = a2[3];
  v109 = a2[2];
  v110 = v19;
  v111[0] = a2[4];
  *(v111 + 9) = *(a2 + 73);
  v20 = a2[1];
  v107 = *a2;
  v108 = v20;
  v21 = type metadata accessor for ProDisplay(0);
  v22 = *(v21 + 24);
  v112 = v3;
  v23 = (v3 + v22);
  v24 = *v23;
  v25 = v23[1];
  v26 = (*(v25 + 32))(*v23, v25);
  v27 = sub_25F7556F4(3u, v26);

  if (!v27)
  {
    sub_25F8221DC();
    v30 = sub_25F8221CC();
    v31 = sub_25F82268C();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      *v99 = v33;
      *v32 = 136315138;
      *(v32 + 4) = sub_25F75CA94(0xD000000000000029, 0x800000025F82C9B0, v99);
      _os_log_impl(&dword_25F74E000, v30, v31, "%s", v32, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v33);
      MEMORY[0x25F8E88D0](v33, -1, -1);
      MEMORY[0x25F8E88D0](v32, -1, -1);
    }

    (*(v89 + 8))(v7, v90);
    type metadata accessor for ProDisplay.ProDisplayError(0);
    sub_25F75D920();
    swift_allocError();
    *v34 = 3;
    goto LABEL_21;
  }

  v28 = *(v25 + 16);
  v28(&v106, v24, v25);
  if (v106)
  {
    sub_25F760954(v112, v99);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFBF8);
    type metadata accessor for HIDDataStore(0);
    if (swift_dynamicCast())
    {
      *&v99[32] = v109;
      *&v99[48] = v110;
      *&v99[64] = v111[0];
      *&v99[73] = *(v111 + 9);
      *v99 = v107;
      *&v99[16] = v108;
      sub_25F768580(v88, v99, v86);
    }

    type metadata accessor for ProDisplay.ProDisplayError(0);
    sub_25F75D920();
    swift_allocError();
    *v39 = 0xD00000000000002DLL;
    v39[1] = 0x800000025F82C9E0;
    goto LABEL_21;
  }

  v35 = v112 + *(v21 + 20);
  v36 = type metadata accessor for ProData();
  v37 = *(v36 + 28);
  if (*(v35 + v37))
  {
    v38 = *(v35 + v37);
  }

  else
  {
    v38 = (*(v35 + *(v36 + 40)))();
  }

  v40 = *(v38 + 16);

  v41 = v88;
  if (!v40 || (v42 = sub_25F75DA44(v88, &qword_27FDAFBB0), (v43 & 1) == 0))
  {

    *v99 = 0;
    *&v99[8] = 0xE000000000000000;
    sub_25F82292C();
    MEMORY[0x25F8E7510](0xD000000000000010, 0x800000025F82CA10);
    v55 = sub_25F82212C();
    MEMORY[0x25F8E7510](v55);

    MEMORY[0x25F8E7510](0xD00000000000003ELL, 0x800000025F82CA30);
    v57 = *v99;
    v56 = *&v99[8];
    v58 = v87;
    sub_25F8221DC();

    v59 = sub_25F8221CC();
    v60 = sub_25F82268C();

    if (os_log_type_enabled(v59, v60))
    {
      v61 = swift_slowAlloc();
      v62 = swift_slowAlloc();
      *v99 = v62;
      *v61 = 136315138;
      *(v61 + 4) = sub_25F75CA94(v57, v56, v99);
      _os_log_impl(&dword_25F74E000, v59, v60, "%s", v61, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v62);
      MEMORY[0x25F8E88D0](v62, -1, -1);
      v63 = v61;
      v41 = v88;
      MEMORY[0x25F8E88D0](v63, -1, -1);
    }

    (*(v89 + 8))(v58, v90);

    type metadata accessor for ProDisplay.ProDisplayError(0);
    sub_25F75D920();
    swift_allocError();
    sub_25F76183C(v41, v64, &qword_27FDAFBB0);
LABEL_21:
    swift_storeEnumTagMultiPayload();
    return swift_willThrow();
  }

  sub_25F75D11C(*(v38 + 56) + *(v84 + 72) * v42, v17, type metadata accessor for Preset);

  v44 = v17;
  v45 = v85;
  sub_25F75D050(v44, v85, type metadata accessor for Preset);
  (*(v25 + 120))(v99, v45, v24, v25);
  v102 = *&v99[40];
  v103 = *&v99[56];
  v104 = *&v99[72];
  v105 = *&v99[88];
  v100 = *&v99[8];
  v101 = *&v99[24];
  if (v99[0] == 2)
  {
    *v99 = 0;
    *&v99[8] = 0xE000000000000000;
    sub_25F82292C();
    MEMORY[0x25F8E7510](0xD00000000000002ALL, 0x800000025F82C950);
    v28(v97, v24, v25);
    LOBYTE(v92) = v97[0];
    sub_25F8229FC();
    MEMORY[0x25F8E7510](0xD00000000000001DLL, 0x800000025F82C880);
    v47 = *v99;
    v46 = *&v99[8];
    v48 = v83;
    sub_25F8221DC();

    v49 = sub_25F8221CC();
    v50 = sub_25F82268C();

    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      *v99 = v52;
      *v51 = 136315138;
      *(v51 + 4) = sub_25F75CA94(v47, v46, v99);
      _os_log_impl(&dword_25F74E000, v49, v50, "%s", v51, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v52);
      MEMORY[0x25F8E88D0](v52, -1, -1);
      MEMORY[0x25F8E88D0](v51, -1, -1);
    }

    (*(v89 + 8))(v48, v90);

    v53 = v85;
    type metadata accessor for ProDisplay.ProDisplayError(0);
    sub_25F75D920();
    swift_allocError();
    *v54 = 3;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    return sub_25F75D810(v53, type metadata accessor for Preset);
  }

  else
  {
    v65 = *v99;
    (*(v25 + 88))(v99, v24, v25, 1.08);
    v66 = *v99;
    v67 = *&v99[8];
    v68 = a2[3];
    v97[2] = a2[2];
    v97[3] = v68;
    v98[0] = a2[4];
    *(v98 + 9) = *(a2 + 73);
    v69 = a2[1];
    v97[0] = *a2;
    v97[1] = v69;
    v70 = v81;
    sub_25F75D11C(v45, v81, type metadata accessor for Preset);
    v71 = v70 + *(v80 + 20);
    v72 = *(v71 + 48);
    v73 = *(v71 + 16);
    *v99 = *v71;
    *&v99[16] = v73;
    *&v99[32] = *(v71 + 32);
    v99[48] = v72;
    ColorSpace.primaries.getter(&v92, *&v99[32]);
    v74 = v94;
    v75 = v95;
    v89 = v93;
    v90 = v92;
    v77 = *(v71 + 160);
    v76 = *(v71 + 168);
    sub_25F75D810(v70, type metadata accessor for Preset);
    if (v76 > v77)
    {
      v78 = v76;
    }

    else
    {
      v78 = v77;
    }

    v93 = v89;
    v92 = v90;
    v94 = v74;
    v95 = v75;
    v96 = v78;
    *v99 = v65;
    *&v99[40] = v102;
    *&v99[56] = v103;
    *&v99[72] = v104;
    *&v99[88] = v105;
    *&v99[8] = v100;
    *&v99[24] = v101;
    v91[0] = v66;
    v91[1] = v67;
    v79 = v82;
    ProDisplay.userAdjustment(of:)(v41, v82);
    static UserAdjustment.computeRanges(userInputs:displayAttributes:validationRules:luminanceLimits:existingAdjustment:)(v97, &v92, v99, v91, v79, v86);
    sub_25F760F44(v79, &qword_27FDAFC28);
    return sub_25F75D810(v45, type metadata accessor for Preset);
  }
}

uint64_t ProDisplay.userAdjustment(of:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v80 = a1;
  v85 = a2;
  v3 = sub_25F8221EC();
  v81 = *(v3 - 8);
  v82 = v3;
  v4 = MEMORY[0x28223BE20](v3);
  v6 = &v72 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v72 - v8;
  MEMORY[0x28223BE20](v7);
  v74 = &v72 - v10;
  v11 = type metadata accessor for UserAdjustment();
  v83 = *(v11 - 8);
  v84 = v11;
  MEMORY[0x28223BE20](v11);
  v73 = &v72 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFC10);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v72 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFC18);
  v77 = *(v16 - 8);
  v78 = v16;
  MEMORY[0x28223BE20](v16);
  v75 = &v72 - v17;
  v18 = type metadata accessor for Preset(0);
  v76 = *(v18 - 8);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = &v72 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for Preset.Info(0);
  v22 = MEMORY[0x28223BE20](v21);
  v24 = &v72 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v79 = &v72 - v25;
  v26 = type metadata accessor for ProDisplay(0);
  v27 = (*(*(v2 + *(v26 + 24) + 8) + 32))();
  v28 = sub_25F7556F4(3u, v27);

  if (!v28)
  {
    sub_25F8221DC();
    v34 = sub_25F8221CC();
    v35 = sub_25F82268C();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v86 = v37;
      *v36 = 136315138;
      *(v36 + 4) = sub_25F75CA94(0xD000000000000029, 0x800000025F82C9B0, &v86);
      _os_log_impl(&dword_25F74E000, v34, v35, "%s", v36, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v37);
      MEMORY[0x25F8E88D0](v37, -1, -1);
      MEMORY[0x25F8E88D0](v36, -1, -1);
    }

    (*(v81 + 8))(v6, v82);
    goto LABEL_7;
  }

  v29 = v2 + *(v26 + 20);
  v30 = type metadata accessor for ProData();
  v31 = v30;
  v32 = *(v30 + 28);
  if (*(v29 + v32))
  {
    v33 = *(v29 + v32);
  }

  else
  {
    v33 = (*(v29 + *(v30 + 40)))();
  }

  v41 = *(v33 + 16);

  if (!v41 || (v42 = sub_25F75DA44(v80, &qword_27FDAFBB0), (v43 & 1) == 0))
  {

    v86 = 0;
    v87 = 0xE000000000000000;
    sub_25F82292C();

    v86 = 0xD00000000000002ALL;
    v87 = 0x800000025F82CA70;
    v45 = sub_25F82212C();
    MEMORY[0x25F8E7510](v45);

    v47 = v86;
    v46 = v87;
    sub_25F8221DC();

    v48 = sub_25F8221CC();
    v49 = sub_25F82268C();

    v50 = os_log_type_enabled(v48, v49);
    v40 = v84;
    if (v50)
    {
      v51 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      v86 = v52;
      *v51 = 136315138;
      *(v51 + 4) = sub_25F75CA94(v47, v46, &v86);
      _os_log_impl(&dword_25F74E000, v48, v49, "%s", v51, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v52);
      MEMORY[0x25F8E88D0](v52, -1, -1);
      MEMORY[0x25F8E88D0](v51, -1, -1);
    }

    (*(v81 + 8))(v9, v82);

LABEL_16:
    v38 = 1;
    v39 = v85;
    goto LABEL_17;
  }

  sub_25F75D11C(*(v33 + 56) + *(v76 + 72) * v42, v20, type metadata accessor for Preset);

  sub_25F75D11C(v20, v24, type metadata accessor for Preset.Info);
  sub_25F75D810(v20, type metadata accessor for Preset);
  v44 = v79;
  sub_25F75D050(v24, v79, type metadata accessor for Preset.Info);
  sub_25F76183C(v44 + *(v21 + 36), v15, &qword_27FDAFC10);
  if ((*(v77 + 48))(v15, 1, v78) != 1)
  {
    v55 = v75;
    sub_25F760FA4(v15, v75, &qword_27FDAFC18);
    v56 = *(v29 + *(v31 + 24));
    v40 = v84;
    if (*(v56 + 16))
    {
      v57 = sub_25F75DA44(v55, &qword_27FDAFC18);
      if (v58)
      {
        v53 = v83;
        v59 = *(v56 + 56) + *(v83 + 72) * v57;
        v60 = v73;
        sub_25F75D11C(v59, v73, type metadata accessor for UserAdjustment);
        sub_25F760F44(v55, &qword_27FDAFC18);
        sub_25F75D810(v44, type metadata accessor for Preset.Info);
        v61 = v60;
        v62 = v85;
        sub_25F75D050(v61, v85, type metadata accessor for UserAdjustment);
        v39 = v62;
        v38 = 0;
        return (*(v53 + 56))(v39, v38, 1, v40);
      }
    }

    v86 = 0;
    v87 = 0xE000000000000000;
    sub_25F82292C();
    MEMORY[0x25F8E7510](0xD000000000000014, 0x800000025F82CAA0);
    v63 = sub_25F82212C();
    MEMORY[0x25F8E7510](v63);

    MEMORY[0x25F8E7510](0xD000000000000020, 0x800000025F82CAC0);
    sub_25F76100C(&qword_27FDAFC48, &qword_27FDAFC18);

    v64 = sub_25F82229C();
    MEMORY[0x25F8E7510](v64);

    MEMORY[0x25F8E7510](41, 0xE100000000000000);
    v66 = v86;
    v65 = v87;
    v67 = v74;
    sub_25F8221DC();

    v68 = sub_25F8221CC();
    v69 = sub_25F82268C();

    if (os_log_type_enabled(v68, v69))
    {
      v70 = swift_slowAlloc();
      v71 = swift_slowAlloc();
      v86 = v71;
      *v70 = 136315138;
      *(v70 + 4) = sub_25F75CA94(v66, v65, &v86);
      _os_log_impl(&dword_25F74E000, v68, v69, "%s", v70, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v71);
      MEMORY[0x25F8E88D0](v71, -1, -1);
      MEMORY[0x25F8E88D0](v70, -1, -1);
    }

    (*(v81 + 8))(v67, v82);

    sub_25F760F44(v55, &qword_27FDAFC18);
    sub_25F75D810(v79, type metadata accessor for Preset.Info);
    goto LABEL_16;
  }

  sub_25F75D810(v44, type metadata accessor for Preset.Info);
  sub_25F760F44(v15, &qword_27FDAFC10);
LABEL_7:
  v38 = 1;
  v40 = v84;
  v39 = v85;
LABEL_17:
  v53 = v83;
  return (*(v53 + 56))(v39, v38, 1, v40);
}

uint64_t sub_25F75ABE4(uint64_t (*a1)(uint64_t), char a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  v25 = a1;
  v26 = a4;
  v27 = a5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(a4);
  v24 = *(v7 - 8);
  MEMORY[0x28223BE20](v7 - 8);
  v23 = &v21 - v8;
  v9 = *(a3 + 64);
  v22 = a3 + 64;
  v10 = 1 << *(a3 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & v9;
  v13 = (v10 + 63) >> 6;
  v28 = a3;

  v15 = 0;
  while (v12)
  {
LABEL_9:
    v17 = v23;
    v18 = v26;
    sub_25F76183C(*(v28 + 48) + *(v24 + 72) * (__clz(__rbit64(v12)) | (v15 << 6)), v23, v26);
    v19 = v29;
    v20 = v25(v17);
    result = sub_25F760F44(v17, v18);
    v29 = v19;
    if (v19)
    {
      goto LABEL_13;
    }

    v12 &= v12 - 1;
    if (v20)
    {
      a2 = 1;
LABEL_13:

      return a2 & 1;
    }
  }

  while (1)
  {
    v16 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v16 >= v13)
    {
      a2 = 0;
      goto LABEL_13;
    }

    v12 = *(v22 + 8 * v16);
    ++v15;
    if (v12)
    {
      v15 = v16;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t ProDisplay.removeUserAdjustment(for:live:)(uint64_t a1, int a2)
{
  LODWORD(v100) = a2;
  v97 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFC28);
  MEMORY[0x28223BE20](v3 - 8);
  v89 = &v80 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFBE0);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v83 = &v80 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v90 = &v80 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFBB0);
  MEMORY[0x28223BE20](v9 - 8);
  v94 = &v80 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFC10);
  MEMORY[0x28223BE20](v11 - 8);
  v91 = &v80 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFC18);
  v92 = *(v13 - 8);
  v93 = v13;
  MEMORY[0x28223BE20](v13);
  v88 = &v80 - v14;
  v15 = sub_25F8221EC();
  v85 = *(v15 - 8);
  v86 = v15;
  MEMORY[0x28223BE20](v15);
  v84 = &v80 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = type metadata accessor for Preset(0);
  v98 = *(v87 - 8);
  v17 = MEMORY[0x28223BE20](v87);
  v82 = &v80 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v17);
  v21 = &v80 - v20;
  MEMORY[0x28223BE20](v19);
  v96 = &v80 - v22;
  v23 = type metadata accessor for ProDisplay(0);
  v24 = *(v23 + 24);
  v99 = v2;
  v25 = (v2 + v24);
  v26 = *v25;
  v27 = v25[1];
  v28 = *(v27 + 32);
  v29 = v28(*v25, v27);
  v30 = sub_25F7556F4(3u, v29);

  if (!v30)
  {
    type metadata accessor for ProDisplay.ProDisplayError(0);
    sub_25F75D920();
    swift_allocError();
    *v40 = 3;
    goto LABEL_19;
  }

  v31 = v100;
  if (v100)
  {
    v32 = v28(v26, v27);
    v33 = sub_25F7556F4(4u, v32);

    if (!v33)
    {
      type metadata accessor for ProDisplay.ProDisplayError(0);
      sub_25F75D920();
      swift_allocError();
      *v66 = 4;
      goto LABEL_19;
    }
  }

  v34 = v99 + *(v23 + 20);
  v35 = type metadata accessor for ProData();
  v36 = v35;
  v37 = *(v35 + 28);
  v81 = v37;
  v38 = *(v34 + v37);
  if (v38)
  {
    v39 = *(v34 + v37);
  }

  else
  {
    v39 = (*(v34 + *(v35 + 40)))();
  }

  v41 = v97;
  v42 = v98;
  v43 = *(v39 + 16);

  if (!v43 || (v44 = sub_25F75DA44(v41, &qword_27FDAFBB0), (v45 & 1) == 0))
  {

    type metadata accessor for ProDisplay.ProDisplayError(0);
    sub_25F75D920();
    swift_allocError();
    sub_25F76183C(v41, v64, &qword_27FDAFBB0);
LABEL_19:
    swift_storeEnumTagMultiPayload();
    return swift_willThrow();
  }

  v80 = v34;
  sub_25F75D11C(*(v39 + 56) + *(v42 + 72) * v44, v21, type metadata accessor for Preset);

  v46 = v21;
  v47 = v96;
  sub_25F75D050(v46, v96, type metadata accessor for Preset);
  v48 = *(v99 + 24);
  v49 = *(v99 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(v99, v48);
  v50 = v95;
  v51 = (*(v49 + 72))(v41, v31 & 1, v48, v49);
  if (!v50)
  {
    v100 = v38;
    if ((v51 & 1) == 0)
    {
      v101 = 0;
      v102 = 0xE000000000000000;
      sub_25F82292C();
      MEMORY[0x25F8E7510](0xD000000000000024, 0x800000025F82CAF0);
      v52 = sub_25F82212C();
      MEMORY[0x25F8E7510](v52);

      MEMORY[0x25F8E7510](0xD000000000000013, 0x800000025F82CB20);
      v53 = v101;
      v54 = v102;
      v55 = v84;
      sub_25F8221DC();

      v56 = sub_25F8221CC();
      v57 = sub_25F82268C();

      if (os_log_type_enabled(v56, v57))
      {
        v58 = swift_slowAlloc();
        v59 = swift_slowAlloc();
        v101 = v59;
        *v58 = 136315138;
        *(v58 + 4) = sub_25F75CA94(v53, v54, &v101);
        _os_log_impl(&dword_25F74E000, v56, v57, "%s", v58, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v59);
        MEMORY[0x25F8E88D0](v59, -1, -1);
        MEMORY[0x25F8E88D0](v58, -1, -1);
      }

      (*(v85 + 8))(v55, v86);

      v47 = v96;
      v42 = v98;
    }

    v60 = *(type metadata accessor for Preset.Info(0) + 36);
    v61 = v91;
    sub_25F76183C(v47 + v60, v91, &qword_27FDAFC10);
    v62 = v92;
    v63 = v93;
    if ((*(v92 + 48))(v61, 1, v93) == 1)
    {
      sub_25F760F44(v61, &qword_27FDAFC10);
    }

    else
    {
      v67 = v88;
      sub_25F760FA4(v61, v88, &qword_27FDAFC18);
      sub_25F760F44(v47 + v60, &qword_27FDAFC10);
      (*(v62 + 56))(v47 + v60, 1, 1, v63);
      sub_25F76183C(v47, v94, &qword_27FDAFBB0);
      v68 = v90;
      sub_25F75D11C(v47, v90, type metadata accessor for Preset);
      v69 = v87;
      v70 = (*(v42 + 56))(v68, 0, 1, v87);
      v71 = v100;
      if (!v100)
      {
        v72 = (*(v80 + *(v36 + 40)))(v70);
        v68 = v90;
        v71 = v72;
      }

      v101 = v71;
      if ((*(v42 + 48))(v68, 1, v69) == 1)
      {

        sub_25F760F44(v68, &qword_27FDAFBE0);
        v73 = v83;
        v74 = v94;
        sub_25F75FD38(v94, v83);
        sub_25F760F44(v73, &qword_27FDAFBE0);
        sub_25F760F44(v74, &qword_27FDAFBB0);

        v75 = v101;
      }

      else
      {
        v76 = v82;
        sub_25F75D050(v68, v82, type metadata accessor for Preset);

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v103 = v71;
        v78 = v94;
        sub_25F76074C(v76, v94, isUniquelyReferenced_nonNull_native);
        sub_25F760F44(v78, &qword_27FDAFBB0);

        v75 = v103;
      }

      *(v80 + v81) = v75;
      v79 = v89;
      sub_25F75FB64(v67, v89);
      sub_25F760F44(v79, &qword_27FDAFC28);
      sub_25F760F44(v67, &qword_27FDAFC18);
      v47 = v96;
    }
  }

  return sub_25F75D810(v47, type metadata accessor for Preset);
}

uint64_t ProDisplay.userAdjustmentRange(of:with:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = a2[2];
  v7 = *(a2 + 24);
  v8 = a2[4];
  v9 = *(a2 + 40);
  v10 = a2[6];
  v11 = *(a2 + 56);
  v12 = a2[8];
  v13 = *(a2 + 72);
  v14 = a2[10];
  v15 = *(a2 + 88);
  LOBYTE(v34[0]) = v5;
  v39 = v9;
  v38 = v11;
  v37 = v13;
  v36 = v15;
  *&v23 = v4;
  BYTE8(v23) = v5;
  v24 = v6;
  v25 = v7;
  v26 = v8;
  v27 = v9;
  v28 = v10;
  v29 = v11;
  v30 = v12;
  v31 = v13;
  v32 = v14;
  v33 = v15;
  result = ProDisplay.userAdjustmentRange(of:with:)(a1, &v23, v34);
  v17 = v34[1];
  v18 = v34[2];
  v19 = v34[3];
  v20 = v34[4];
  v21 = v34[5];
  v22 = v35;
  *a3 = v34[0];
  *(a3 + 16) = v17;
  *(a3 + 32) = v18;
  *(a3 + 48) = v19;
  *(a3 + 64) = v20;
  *(a3 + 80) = v21;
  *(a3 + 96) = v22;
  return result;
}

uint64_t UserAdjustmentInput.measuredWhitePointX.setter(uint64_t result, char a2)
{
  *v2 = result;
  *(v2 + 8) = a2 & 1;
  return result;
}

uint64_t UserAdjustmentInput.measuredWhitePointY.setter(uint64_t result, char a2)
{
  *(v2 + 16) = result;
  *(v2 + 24) = a2 & 1;
  return result;
}

uint64_t UserAdjustmentInput.measuredLuminance.setter(uint64_t result, char a2)
{
  *(v2 + 32) = result;
  *(v2 + 40) = a2 & 1;
  return result;
}

uint64_t UserAdjustmentInput.targetWhitePointX.setter(uint64_t result, char a2)
{
  *(v2 + 48) = result;
  *(v2 + 56) = a2 & 1;
  return result;
}

uint64_t UserAdjustmentInput.targetWhitePointY.setter(uint64_t result, char a2)
{
  *(v2 + 64) = result;
  *(v2 + 72) = a2 & 1;
  return result;
}

uint64_t UserAdjustmentInput.targetLuminance.setter(uint64_t result, char a2)
{
  *(v2 + 80) = result;
  *(v2 + 88) = a2 & 1;
  return result;
}

void __swiftcall UserAdjustmentInput.init(measuredWhitePointX:measuredWhitePointY:measuredLuminance:targetWhitePointX:targetWhitePointY:targetLuminance:)(ProDisplayLibrary::UserAdjustmentInput *__return_ptr retstr, Swift::Double_optional measuredWhitePointX, Swift::Double_optional measuredWhitePointY, Swift::Double_optional measuredLuminance, Swift::Double_optional targetWhitePointX, Swift::Double_optional targetWhitePointY, Swift::Double_optional targetLuminance)
{
  retstr->measuredWhitePointX.value = *&measuredWhitePointX.is_nil;
  retstr->measuredWhitePointX.is_nil = measuredWhitePointY.is_nil;
  *(&retstr->measuredWhitePointY.value + 7) = *&measuredLuminance.is_nil;
  BYTE6(retstr->measuredLuminance.value) = targetWhitePointX.is_nil;
  *(&retstr->targetWhitePointX.value + 5) = *&targetWhitePointY.is_nil;
  BYTE4(retstr->targetWhitePointY.value) = targetLuminance.is_nil;
  *(&retstr->targetLuminance.value + 3) = v7;
  BYTE2(retstr[1].measuredWhitePointX.value) = v8 & 1;
  *(&retstr[1].measuredWhitePointY.value + 1) = v9;
  LOBYTE(retstr[1].measuredLuminance.value) = v10 & 1;
  *&retstr[1].measuredLuminance.is_nil = v11;
  HIBYTE(retstr[1].targetWhitePointX.value) = v12 & 1;
}

double sub_25F75BBAC(__n128 a1, double a2)
{
  if (a1.n128_f64[1] < a1.n128_f64[0])
  {
    if (a2 < a1.n128_f64[0])
    {
      return a1.n128_f64[0];
    }

    goto LABEL_9;
  }

  if ((a1.n128_u64[1] & 0xFFFFFFFFFFFFFLL) == 0)
  {
    a1.n128_f64[0] = a1.n128_f64[1];
  }

  if ((~a1.n128_u64[1] & 0x7FF0000000000000) != 0)
  {
    a1.n128_f64[0] = a1.n128_f64[1];
  }

  if (a2 >= a1.n128_f64[0])
  {
LABEL_9:
    if ((*&a2 & 0xFFFFFFFFFFFFFLL) == 0)
    {
      a1.n128_f64[0] = a2;
    }

    if ((~*&a2 & 0x7FF0000000000000) != 0)
    {
      a1.n128_f64[0] = a2;
    }
  }

  return a1.n128_f64[0];
}

char *sub_25F75BC28(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFD60);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 120);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[120 * v8])
    {
      memmove(v12, v13, 120 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_25F75BD48(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFC08);
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

char *sub_25F75BE3C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFD50);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 80);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[80 * v8])
    {
      memmove(v12, v13, 80 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_25F75BF5C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFCC0);
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

char *sub_25F75C060(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFCB8);
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

size_t sub_25F75C1B0(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t (*a7)(void))
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

  __swift_instantiateConcreteTypeFromMangledNameV2(a5);
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

char *sub_25F75C38C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFD58);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_25F75C4D0(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t *a7)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(a5);
  v14 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a7) - 8);
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
  v19 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a7) - 8);
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

void *sub_25F75C724(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t *a7)
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

  if (v13)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5);
    v14 = swift_allocObject();
    v15 = _swift_stdlib_malloc_size(v14);
    v14[2] = v12;
    v14[3] = 2 * ((v15 - 32) / 40);
  }

  else
  {
    v14 = MEMORY[0x277D84F90];
  }

  if (v9)
  {
    if (v14 != a4 || v14 + 4 >= &a4[5 * v12 + 4])
    {
      memmove(v14 + 4, a4 + 4, 40 * v12);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7);
    swift_arrayInitWithCopy();
  }

  return v14;
}

char *sub_25F75C86C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFCF0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_25F75C998(char *result, int64_t a2, char a3, char *a4, uint64_t *a5)
{
  v6 = result;
  if (a3)
  {
    v7 = *(a4 + 3);
    v8 = v7 >> 1;
    if ((v7 >> 1) < a2)
    {
      if (v8 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if ((v7 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v8 = a2;
      }
    }
  }

  else
  {
    v8 = a2;
  }

  v9 = *(a4 + 2);
  if (v8 <= v9)
  {
    v10 = *(a4 + 2);
  }

  else
  {
    v10 = v8;
  }

  if (v10)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5);
    v11 = swift_allocObject();
    v12 = _swift_stdlib_malloc_size(v11);
    v13 = v12 - 32;
    if (v12 < 32)
    {
      v13 = v12 - 17;
    }

    *(v11 + 2) = v9;
    *(v11 + 3) = 2 * (v13 >> 4);
  }

  else
  {
    v11 = MEMORY[0x277D84F90];
  }

  v14 = v11 + 32;
  v15 = a4 + 32;
  if (v6)
  {
    if (v11 != a4 || v14 >= &v15[16 * v9])
    {
      memmove(v14, v15, 16 * v9);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v14, v15, 16 * v9);
  }

  return v11;
}

unint64_t sub_25F75CA94(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_25F75CB60(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_25F7618A4(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0Tm(v11);
  return v7;
}

unint64_t sub_25F75CB60(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_25F75CC6C(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_25F82299C();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t sub_25F75CC6C(uint64_t a1, unint64_t a2)
{
  v3 = sub_25F75CCB8(a1, a2);
  sub_25F75CDE8(&unk_2871C3A88);
  return v3;
}

uint64_t sub_25F75CCB8(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = sub_25F75CED4(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_25F82299C();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_25F82248C();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_25F75CED4(v10, 0);
        result = sub_25F82291C();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_25F75CDE8(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_25F75BD48(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_25F75CED4(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFC08);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

unint64_t sub_25F75CF48()
{
  result = qword_27FDAFBC0;
  if (!qword_27FDAFBC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FDAFBC0);
  }

  return result;
}

uint64_t sub_25F75CF9C(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
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

uint64_t __swift_destroy_boxed_opaque_existential_0Tm(uint64_t a1)
{
  v1 = *(*(a1 + 24) - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t sub_25F75D050(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_25F75D11C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_25F75D184(uint64_t a1, char a2, void *a3)
{
  v7 = type metadata accessor for Preset(0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFBB0);
  v58 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = v56 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFBA8);
  v15 = MEMORY[0x28223BE20](v14);
  v18 = v56 - v17;
  v61 = *(a1 + 16);
  if (!v61)
  {
    goto LABEL_22;
  }

  v56[2] = v3;
  v57 = v8;
  v56[1] = v11;
  v19 = *(v15 + 48);
  v20 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v60 = *(v16 + 72);
  v62 = a1;
  sub_25F76183C(a1 + v20, v56 - v17, &qword_27FDAFBA8);
  sub_25F760FA4(v18, v13, &qword_27FDAFBB0);
  v59 = v19;
  v63 = v10;
  sub_25F75D050(&v18[v19], v10, type metadata accessor for Preset);
  v21 = *a3;
  v22 = sub_25F75DA44(v13, &qword_27FDAFBB0);
  v24 = v21[2];
  v25 = (v23 & 1) == 0;
  v26 = __OFADD__(v24, v25);
  v27 = v24 + v25;
  if (v26)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v28 = v23;
  if (v21[3] < v27)
  {
    sub_25F75E660(v27, a2 & 1);
    v22 = sub_25F75DA44(v13, &qword_27FDAFBB0);
    if ((v28 & 1) != (v29 & 1))
    {
LABEL_5:
      sub_25F822D2C();
      __break(1u);
      goto LABEL_22;
    }

LABEL_8:
    if (v28)
    {
      goto LABEL_9;
    }

    goto LABEL_12;
  }

  if (a2)
  {
    goto LABEL_8;
  }

  v32 = v22;
  sub_25F75DC88();
  v22 = v32;
  if (v28)
  {
LABEL_9:
    v30 = swift_allocError();
    swift_willThrow();
    v66 = v30;
    v31 = v30;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFD70);
    if ((swift_dynamicCast() & 1) == 0)
    {

      sub_25F75D810(v63, type metadata accessor for Preset);
      sub_25F760F44(v13, &qword_27FDAFBB0);

      return;
    }

    goto LABEL_26;
  }

LABEL_12:
  v33 = *a3;
  *(*a3 + 8 * (v22 >> 6) + 64) |= 1 << v22;
  v34 = v33[6];
  v58 = *(v58 + 72);
  v35 = v22;
  sub_25F760FA4(v13, v34 + v58 * v22, &qword_27FDAFBB0);
  v36 = v33[7];
  v57 = *(v57 + 72);
  v37 = v63;
  sub_25F75D050(v63, v36 + v57 * v35, type metadata accessor for Preset);
  v38 = v33[2];
  v26 = __OFADD__(v38, 1);
  v39 = v38 + 1;
  if (!v26)
  {
    v33[2] = v39;
    v40 = v62;
    if (v61 == 1)
    {
LABEL_22:

      return;
    }

    v41 = v62 + v60 + v20;
    v42 = 1;
    while (v42 < *(v40 + 16))
    {
      sub_25F76183C(v41, v18, &qword_27FDAFBA8);
      sub_25F760FA4(v18, v13, &qword_27FDAFBB0);
      sub_25F75D050(&v18[v59], v37, type metadata accessor for Preset);
      v43 = *a3;
      v44 = sub_25F75DA44(v13, &qword_27FDAFBB0);
      v46 = v43[2];
      v47 = (v45 & 1) == 0;
      v26 = __OFADD__(v46, v47);
      v48 = v46 + v47;
      if (v26)
      {
        goto LABEL_23;
      }

      v49 = v45;
      if (v43[3] < v48)
      {
        sub_25F75E660(v48, 1);
        v44 = sub_25F75DA44(v13, &qword_27FDAFBB0);
        if ((v49 & 1) != (v50 & 1))
        {
          goto LABEL_5;
        }
      }

      if (v49)
      {
        goto LABEL_9;
      }

      v51 = *a3;
      *(*a3 + 8 * (v44 >> 6) + 64) |= 1 << v44;
      v52 = v44;
      sub_25F760FA4(v13, v51[6] + v58 * v44, &qword_27FDAFBB0);
      v53 = v51[7] + v57 * v52;
      v37 = v63;
      sub_25F75D050(v63, v53, type metadata accessor for Preset);
      v54 = v51[2];
      v26 = __OFADD__(v54, 1);
      v55 = v54 + 1;
      if (v26)
      {
        goto LABEL_24;
      }

      ++v42;
      v51[2] = v55;
      v41 += v60;
      v40 = v62;
      if (v61 == v42)
      {
        goto LABEL_22;
      }
    }

    goto LABEL_25;
  }

LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  v64 = 0;
  v65 = 0xE000000000000000;
  sub_25F82292C();
  MEMORY[0x25F8E7510](0xD00000000000001BLL, 0x800000025F82CB70);
  sub_25F8229FC();
  MEMORY[0x25F8E7510](39, 0xE100000000000000);
  sub_25F822A3C();
  __break(1u);
}

uint64_t sub_25F75D810(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
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

uint64_t sub_25F75D8E8(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_25F75D920()
{
  result = qword_27FDAFBD8;
  if (!qword_27FDAFBD8)
  {
    type metadata accessor for ProDisplay.ProDisplayError(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FDAFBD8);
  }

  return result;
}

uint64_t sub_25F75D978(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFBB0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_25F75DA44(uint64_t a1, uint64_t *a2)
{
  sub_25F822DCC();
  sub_25F82217C();
  sub_25F7616D4(&qword_27FDAFCC8);
  sub_25F8222CC();
  v4 = sub_25F822E0C();
  return sub_25F75F81C(a1, v4, a2);
}

unint64_t sub_25F75DAEC(uint64_t a1)
{
  v2 = sub_25F8228BC();

  return sub_25F75F974(a1, v2);
}

unint64_t sub_25F75DB5C(unsigned __int8 a1)
{
  sub_25F822DCC();
  MEMORY[0x25F8E7E80](a1);
  v2 = sub_25F822E0C();

  return sub_25F75FAF4(a1, v2);
}

uint64_t sub_25F75DBF4(uint64_t a1, uint64_t a2, void (*a3)(_BYTE *, uint64_t, uint64_t), uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  sub_25F822DCC();
  a3(v10, a1, a2);
  v7 = sub_25F822E0C();

  return a4(a1, a2, v7);
}

void *sub_25F75DC88()
{
  v1 = v0;
  v2 = type metadata accessor for Preset(0);
  v35 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v33 = &v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFBB0);
  v34 = *(v4 - 8);
  MEMORY[0x28223BE20](v4 - 8);
  v32 = &v31 - v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFBC8);
  v6 = *v0;
  v7 = sub_25F822A6C();
  v8 = v7;
  if (*(v6 + 16))
  {
    v31 = v1;
    result = (v7 + 64);
    v10 = v6 + 64;
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v10 + 8 * v11)
    {
      result = memmove(result, (v6 + 64), 8 * v11);
    }

    v12 = 0;
    v13 = *(v6 + 16);
    v36 = v8;
    *(v8 + 16) = v13;
    v14 = 1 << *(v6 + 32);
    v15 = -1;
    v16 = *(v6 + 64);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    v17 = v15 & v16;
    v18 = (v14 + 63) >> 6;
    if ((v15 & v16) != 0)
    {
      do
      {
        v19 = __clz(__rbit64(v17));
        v17 &= v17 - 1;
LABEL_14:
        v22 = v19 | (v12 << 6);
        v23 = *(v34 + 72) * v22;
        v24 = v32;
        sub_25F76183C(*(v6 + 48) + v23, v32, &qword_27FDAFBB0);
        v25 = *(v35 + 72) * v22;
        v26 = *(v6 + 56) + v25;
        v27 = v6;
        v28 = v33;
        sub_25F75D11C(v26, v33, type metadata accessor for Preset);
        v29 = v36;
        sub_25F760FA4(v24, *(v36 + 48) + v23, &qword_27FDAFBB0);
        v30 = v28;
        v6 = v27;
        result = sub_25F75D050(v30, *(v29 + 56) + v25, type metadata accessor for Preset);
      }

      while (v17);
    }

    v20 = v12;
    while (1)
    {
      v12 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v12 >= v18)
      {

        v1 = v31;
        v8 = v36;
        goto LABEL_18;
      }

      v21 = *(v10 + 8 * v12);
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v17 = (v21 - 1) & v21;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v8;
  }

  return result;
}

void *sub_25F75DF98()
{
  v1 = v0;
  v2 = type metadata accessor for UserAdjustment();
  v35 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v33 = &v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFC18);
  v34 = *(v4 - 8);
  MEMORY[0x28223BE20](v4 - 8);
  v32 = &v31 - v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFCD8);
  v6 = *v0;
  v7 = sub_25F822A6C();
  v8 = v7;
  if (*(v6 + 16))
  {
    v31 = v1;
    result = (v7 + 64);
    v10 = v6 + 64;
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v10 + 8 * v11)
    {
      result = memmove(result, (v6 + 64), 8 * v11);
    }

    v12 = 0;
    v13 = *(v6 + 16);
    v36 = v8;
    *(v8 + 16) = v13;
    v14 = 1 << *(v6 + 32);
    v15 = -1;
    v16 = *(v6 + 64);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    v17 = v15 & v16;
    v18 = (v14 + 63) >> 6;
    if ((v15 & v16) != 0)
    {
      do
      {
        v19 = __clz(__rbit64(v17));
        v17 &= v17 - 1;
LABEL_14:
        v22 = v19 | (v12 << 6);
        v23 = *(v34 + 72) * v22;
        v24 = v32;
        sub_25F76183C(*(v6 + 48) + v23, v32, &qword_27FDAFC18);
        v25 = *(v35 + 72) * v22;
        v26 = *(v6 + 56) + v25;
        v27 = v6;
        v28 = v33;
        sub_25F75D11C(v26, v33, type metadata accessor for UserAdjustment);
        v29 = v36;
        sub_25F760FA4(v24, *(v36 + 48) + v23, &qword_27FDAFC18);
        v30 = v28;
        v6 = v27;
        result = sub_25F75D050(v30, *(v29 + 56) + v25, type metadata accessor for UserAdjustment);
      }

      while (v17);
    }

    v20 = v12;
    while (1)
    {
      v12 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v12 >= v18)
      {

        v1 = v31;
        v8 = v36;
        goto LABEL_18;
      }

      v21 = *(v10 + 8 * v12);
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v17 = (v21 - 1) & v21;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v8;
  }

  return result;
}

void *sub_25F75E2A8()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFBB0);
  v29 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v28 = &v27 - v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFCD0);
  v4 = *v0;
  v5 = sub_25F822A6C();
  v6 = v5;
  if (*(v4 + 16))
  {
    v27 = v1;
    result = (v5 + 64);
    v8 = v4 + 64;
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v8 + 8 * v9)
    {
      result = memmove(result, (v4 + 64), 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v30 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    v14 = *(v4 + 64);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v15 = v13 & v14;
    v16 = (v12 + 63) >> 6;
    if ((v13 & v14) != 0)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v15 &= v15 - 1;
LABEL_14:
        v20 = v17 | (v10 << 6);
        v21 = v28;
        v22 = *(v29 + 72) * v20;
        sub_25F76183C(*(v4 + 48) + v22, v28, &qword_27FDAFBB0);
        v23 = *(*(v4 + 56) + 4 * v20);
        v24 = v4;
        v25 = v30;
        result = sub_25F760FA4(v21, *(v30 + 48) + v22, &qword_27FDAFBB0);
        v26 = *(v25 + 56);
        v4 = v24;
        *(v26 + 4 * v20) = v23;
      }

      while (v15);
    }

    v18 = v10;
    while (1)
    {
      v10 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v10 >= v16)
      {

        v1 = v27;
        v6 = v30;
        goto LABEL_18;
      }

      v19 = *(v8 + 8 * v10);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }

  return result;
}

void *sub_25F75E4F8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFD18);
  v2 = *v0;
  v3 = sub_25F822A6C();
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
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v20 = *v18;
        v19 = v18[1];
        LOBYTE(v18) = *(*(v2 + 56) + v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = v20;
        v21[1] = v19;
        *(*(v4 + 56) + v17) = v18;
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

uint64_t sub_25F75E660(uint64_t a1, int a2)
{
  v3 = v2;
  v5 = type metadata accessor for Preset(0);
  v44 = *(v5 - 8);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFBB0);
  v43 = *(v8 - 8);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v39 - v9;
  v11 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFBC8);
  v45 = a2;
  result = sub_25F822A7C();
  v13 = result;
  if (*(v11 + 16))
  {
    v40 = v2;
    v41 = v11;
    v14 = 0;
    v15 = (v11 + 64);
    v16 = 1 << *(v11 + 32);
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    else
    {
      v17 = -1;
    }

    v18 = v17 & *(v11 + 64);
    v19 = (v16 + 63) >> 6;
    v20 = result + 64;
    v42 = v7;
    v47 = v10;
    while (v18)
    {
      v22 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
LABEL_15:
      v25 = v22 | (v14 << 6);
      v26 = *(v11 + 48);
      v46 = *(v43 + 72);
      v27 = v26 + v46 * v25;
      if (v45)
      {
        sub_25F760FA4(v27, v47, &qword_27FDAFBB0);
        v28 = *(v11 + 56);
        v29 = *(v44 + 72);
        sub_25F75D050(v28 + v29 * v25, v7, type metadata accessor for Preset);
      }

      else
      {
        sub_25F76183C(v27, v47, &qword_27FDAFBB0);
        v30 = *(v11 + 56);
        v29 = *(v44 + 72);
        sub_25F75D11C(v30 + v29 * v25, v7, type metadata accessor for Preset);
      }

      sub_25F822DCC();
      sub_25F82217C();
      sub_25F7616D4(&qword_27FDAFCC8);
      sub_25F8222CC();
      result = sub_25F822E0C();
      v31 = -1 << *(v13 + 32);
      v32 = result & ~v31;
      v33 = v32 >> 6;
      if (((-1 << v32) & ~*(v20 + 8 * (v32 >> 6))) == 0)
      {
        v34 = 0;
        v35 = (63 - v31) >> 6;
        v7 = v42;
        while (++v33 != v35 || (v34 & 1) == 0)
        {
          v36 = v33 == v35;
          if (v33 == v35)
          {
            v33 = 0;
          }

          v34 |= v36;
          v37 = *(v20 + 8 * v33);
          if (v37 != -1)
          {
            v21 = __clz(__rbit64(~v37)) + (v33 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v21 = __clz(__rbit64((-1 << v32) & ~*(v20 + 8 * (v32 >> 6)))) | v32 & 0x7FFFFFFFFFFFFFC0;
      v7 = v42;
LABEL_7:
      *(v20 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
      sub_25F760FA4(v47, *(v13 + 48) + v46 * v21, &qword_27FDAFBB0);
      result = sub_25F75D050(v7, *(v13 + 56) + v29 * v21, type metadata accessor for Preset);
      ++*(v13 + 16);
      v11 = v41;
    }

    v23 = v14;
    while (1)
    {
      v14 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v14 >= v19)
      {
        break;
      }

      v24 = v15[v14];
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v18 = (v24 - 1) & v24;
        goto LABEL_15;
      }
    }

    if ((v45 & 1) == 0)
    {

      v3 = v40;
      goto LABEL_34;
    }

    v38 = 1 << *(v11 + 32);
    v3 = v40;
    if (v38 >= 64)
    {
      bzero(v15, ((v38 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v15 = -1 << v38;
    }

    *(v11 + 16) = 0;
  }

LABEL_34:
  *v3 = v13;
  return result;
}

uint64_t sub_25F75EADC(uint64_t a1, int a2)
{
  v3 = v2;
  v5 = type metadata accessor for UserAdjustment();
  v44 = *(v5 - 8);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFC18);
  v43 = *(v8 - 8);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v39 - v9;
  v11 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFCD8);
  v45 = a2;
  result = sub_25F822A7C();
  v13 = result;
  if (*(v11 + 16))
  {
    v40 = v2;
    v41 = v11;
    v14 = 0;
    v15 = (v11 + 64);
    v16 = 1 << *(v11 + 32);
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    else
    {
      v17 = -1;
    }

    v18 = v17 & *(v11 + 64);
    v19 = (v16 + 63) >> 6;
    v20 = result + 64;
    v42 = v7;
    v47 = v10;
    while (v18)
    {
      v22 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
LABEL_15:
      v25 = v22 | (v14 << 6);
      v26 = *(v11 + 48);
      v46 = *(v43 + 72);
      v27 = v26 + v46 * v25;
      if (v45)
      {
        sub_25F760FA4(v27, v47, &qword_27FDAFC18);
        v28 = *(v11 + 56);
        v29 = *(v44 + 72);
        sub_25F75D050(v28 + v29 * v25, v7, type metadata accessor for UserAdjustment);
      }

      else
      {
        sub_25F76183C(v27, v47, &qword_27FDAFC18);
        v30 = *(v11 + 56);
        v29 = *(v44 + 72);
        sub_25F75D11C(v30 + v29 * v25, v7, type metadata accessor for UserAdjustment);
      }

      sub_25F822DCC();
      sub_25F82217C();
      sub_25F7616D4(&qword_27FDAFCC8);
      sub_25F8222CC();
      result = sub_25F822E0C();
      v31 = -1 << *(v13 + 32);
      v32 = result & ~v31;
      v33 = v32 >> 6;
      if (((-1 << v32) & ~*(v20 + 8 * (v32 >> 6))) == 0)
      {
        v34 = 0;
        v35 = (63 - v31) >> 6;
        v7 = v42;
        while (++v33 != v35 || (v34 & 1) == 0)
        {
          v36 = v33 == v35;
          if (v33 == v35)
          {
            v33 = 0;
          }

          v34 |= v36;
          v37 = *(v20 + 8 * v33);
          if (v37 != -1)
          {
            v21 = __clz(__rbit64(~v37)) + (v33 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v21 = __clz(__rbit64((-1 << v32) & ~*(v20 + 8 * (v32 >> 6)))) | v32 & 0x7FFFFFFFFFFFFFC0;
      v7 = v42;
LABEL_7:
      *(v20 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
      sub_25F760FA4(v47, *(v13 + 48) + v46 * v21, &qword_27FDAFC18);
      result = sub_25F75D050(v7, *(v13 + 56) + v29 * v21, type metadata accessor for UserAdjustment);
      ++*(v13 + 16);
      v11 = v41;
    }

    v23 = v14;
    while (1)
    {
      v14 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v14 >= v19)
      {
        break;
      }

      v24 = v15[v14];
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v18 = (v24 - 1) & v24;
        goto LABEL_15;
      }
    }

    if ((v45 & 1) == 0)
    {

      v3 = v40;
      goto LABEL_34;
    }

    v38 = 1 << *(v11 + 32);
    v3 = v40;
    if (v38 >= 64)
    {
      bzero(v15, ((v38 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v15 = -1 << v38;
    }

    *(v11 + 16) = 0;
  }

LABEL_34:
  *v3 = v13;
  return result;
}

uint64_t sub_25F75EF58(uint64_t a1, int a2)
{
  v3 = v2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFBB0);
  v36 = *(v5 - 8);
  MEMORY[0x28223BE20](v5 - 8);
  v38 = &v34 - v6;
  v7 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFCD0);
  v37 = a2;
  result = sub_25F822A7C();
  v9 = result;
  if (*(v7 + 16))
  {
    v34 = v2;
    v35 = v7;
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v16 = result + 64;
    v17 = v38;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = *(v36 + 72);
      v24 = *(v7 + 48) + v23 * v22;
      if (v37)
      {
        sub_25F760FA4(v24, v17, &qword_27FDAFBB0);
      }

      else
      {
        sub_25F76183C(v24, v17, &qword_27FDAFBB0);
      }

      v25 = *(*(v7 + 56) + 4 * v22);
      sub_25F822DCC();
      sub_25F82217C();
      sub_25F7616D4(&qword_27FDAFCC8);
      sub_25F8222CC();
      result = sub_25F822E0C();
      v26 = -1 << *(v9 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v16 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        v17 = v38;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v16 + 8 * v28);
          if (v32 != -1)
          {
            v18 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v27) & ~*(v16 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
      v17 = v38;
LABEL_7:
      *(v16 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      result = sub_25F760FA4(v17, *(v9 + 48) + v23 * v18, &qword_27FDAFBB0);
      *(*(v9 + 56) + 4 * v18) = v25;
      ++*(v9 + 16);
      v7 = v35;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v10 >= v15)
      {
        break;
      }

      v21 = v11[v10];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v14 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v37 & 1) == 0)
    {

      v3 = v34;
      goto LABEL_34;
    }

    v33 = 1 << *(v7 + 32);
    v3 = v34;
    if (v33 >= 64)
    {
      bzero(v11, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v33;
    }

    *(v7 + 16) = 0;
  }

LABEL_34:
  *v3 = v9;
  return result;
}

uint64_t sub_25F75F2EC(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFD48);
  v30 = a2;
  result = sub_25F822A7C();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v30 & 1) == 0)
      {
      }

      sub_25F822DCC();
      MEMORY[0x25F8E7E80](v20);
      result = sub_25F822E0C();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v30 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v29 = 1 << *(v5 + 32);
    v3 = v2;
    if (v29 >= 64)
    {
      bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_25F75F57C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFD18);
  v34 = a2;
  result = sub_25F822A7C();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + v20);
      if ((v34 & 1) == 0)
      {
      }

      sub_25F822DCC();
      sub_25F8222DC();
      result = sub_25F822E0C();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + v15) = v24;
      ++*(v7 + 16);
      v5 = v33;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

unint64_t sub_25F75F81C(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3) - 8;
  MEMORY[0x28223BE20](v6);
  v9 = &v16 - v8;
  v10 = -1 << *(v3 + 32);
  v11 = a2 & ~v10;
  if ((*(v3 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    v13 = *(v7 + 72);
    do
    {
      sub_25F76183C(*(v3 + 48) + v13 * v11, v9, a3);
      v14 = sub_25F82213C();
      sub_25F760F44(v9, a3);
      if (v14)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
    }

    while (((*(v3 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  return v11;
}

unint64_t sub_25F75F974(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_25F761718(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x25F8E7970](v9, a1);
      sub_25F761774(v9);
      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_25F75FA3C(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_25F822CBC())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_25F75FAF4(unsigned __int8 a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

uint64_t sub_25F75FB64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = sub_25F75DA44(a1, &qword_27FDAFC18);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v21 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_25F75DF98();
      v9 = v21;
    }

    v10 = *(v9 + 48);
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFC18);
    sub_25F760F44(v10 + *(*(v11 - 8) + 72) * v7, &qword_27FDAFC18);
    v12 = *(v9 + 56);
    v13 = type metadata accessor for UserAdjustment();
    v20 = *(v13 - 8);
    sub_25F75D050(v12 + *(v20 + 72) * v7, a2, type metadata accessor for UserAdjustment);
    sub_25F75FF34(v7, v9, &qword_27FDAFC18, &unk_25F824310, type metadata accessor for UserAdjustment);
    *v3 = v9;
    v14 = *(v20 + 56);
    v15 = a2;
    v16 = 0;
    v17 = v13;
  }

  else
  {
    v18 = type metadata accessor for UserAdjustment();
    v14 = *(*(v18 - 8) + 56);
    v17 = v18;
    v15 = a2;
    v16 = 1;
  }

  return v14(v15, v16, 1, v17);
}

uint64_t sub_25F75FD38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = sub_25F75DA44(a1, &qword_27FDAFBB0);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v21 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_25F75DC88();
      v9 = v21;
    }

    v10 = *(v9 + 48);
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFBB0);
    sub_25F760F44(v10 + *(*(v11 - 8) + 72) * v7, &qword_27FDAFBB0);
    v12 = *(v9 + 56);
    v13 = type metadata accessor for Preset(0);
    v20 = *(v13 - 8);
    sub_25F75D050(v12 + *(v20 + 72) * v7, a2, type metadata accessor for Preset);
    sub_25F75FF34(v7, v9, &qword_27FDAFBB0, &unk_25F824000, type metadata accessor for Preset);
    *v3 = v9;
    v14 = *(v20 + 56);
    v15 = a2;
    v16 = 0;
    v17 = v13;
  }

  else
  {
    v18 = type metadata accessor for Preset(0);
    v14 = *(*(v18 - 8) + 56);
    v17 = v18;
    v15 = a2;
    v16 = 1;
  }

  return v14(v15, v16, 1, v17);
}

unint64_t sub_25F75FF34(int64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(void))
{
  v36 = a5;
  v41 = a3;
  v42 = a4;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  v7 = *(v35 - 8);
  result = MEMORY[0x28223BE20](v35);
  v40 = &v34 - v9;
  v10 = a2 + 64;
  v11 = -1 << *(a2 + 32);
  v12 = (a1 + 1) & ~v11;
  if ((*(a2 + 64 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v13 = ~v11;
    v14 = (sub_25F8228AC() + 1) & ~v11;
    v15 = *(v7 + 72);
    v38 = a2;
    v39 = a2 + 64;
    v37 = v15;
    v16 = v41;
    do
    {
      v17 = v15 * v12;
      v18 = *(a2 + 48) + v15 * v12;
      v19 = v14;
      v20 = a1;
      v21 = v40;
      sub_25F76183C(v18, v40, v16);
      sub_25F822DCC();
      sub_25F82217C();
      sub_25F7616D4(&qword_27FDAFCC8);
      sub_25F8222CC();
      v22 = sub_25F822E0C();
      v23 = v21;
      a1 = v20;
      v14 = v19;
      result = sub_25F760F44(v23, v16);
      v24 = v22 & v13;
      if (a1 >= v19)
      {
        if (v24 < v19)
        {
          a2 = v38;
          v10 = v39;
          v15 = v37;
          goto LABEL_4;
        }

        a2 = v38;
        v10 = v39;
        v15 = v37;
        if (a1 < v24)
        {
          goto LABEL_4;
        }
      }

      else
      {
        a2 = v38;
        v10 = v39;
        v15 = v37;
        if (v24 < v14 && a1 < v24)
        {
          goto LABEL_4;
        }
      }

      if (v15 * a1 < v17 || *(a2 + 48) + v15 * a1 >= (*(a2 + 48) + v17 + v15))
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else if (v15 * a1 != v17)
      {
        swift_arrayInitWithTakeBackToFront();
      }

      v25 = *(a2 + 56);
      v26 = *(*(v36(0) - 8) + 72);
      v27 = v26 * a1;
      result = v25 + v26 * a1;
      v28 = v26 * v12;
      v29 = v25 + v26 * v12 + v26;
      if (v27 < v28 || result >= v29)
      {
        result = swift_arrayInitWithTakeFrontToBack();
LABEL_24:
        a1 = v12;
        goto LABEL_4;
      }

      a1 = v12;
      if (v27 != v28)
      {
        result = swift_arrayInitWithTakeBackToFront();
        goto LABEL_24;
      }

LABEL_4:
      v12 = (v12 + 1) & v13;
    }

    while (((*(v10 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) != 0);
  }

  *(v10 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v31 = *(a2 + 16);
  v32 = __OFSUB__(v31, 1);
  v33 = v31 - 1;
  if (v32)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v33;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_25F760260(int64_t a1, uint64_t a2)
{
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFBB0);
  v4 = *(v26 - 8);
  result = MEMORY[0x28223BE20](v26);
  v29 = &v26 - v6;
  v7 = a2 + 64;
  v8 = -1 << *(a2 + 32);
  v9 = (a1 + 1) & ~v8;
  if ((*(a2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    v11 = sub_25F8228AC();
    v27 = a2 + 64;
    v28 = (v11 + 1) & v10;
    v12 = *(v4 + 72);
    v30 = v10;
    v13 = v29;
    do
    {
      v14 = v12;
      v15 = v12 * v9;
      sub_25F76183C(*(a2 + 48) + v12 * v9, v13, &qword_27FDAFBB0);
      sub_25F822DCC();
      sub_25F82217C();
      sub_25F7616D4(&qword_27FDAFCC8);
      sub_25F8222CC();
      v16 = sub_25F822E0C();
      result = sub_25F760F44(v13, &qword_27FDAFBB0);
      v17 = v30;
      v18 = v16 & v30;
      if (a1 >= v28)
      {
        if (v18 < v28)
        {
          v7 = v27;
          v12 = v14;
        }

        else
        {
          v7 = v27;
          v12 = v14;
          if (a1 >= v18)
          {
            goto LABEL_11;
          }
        }
      }

      else
      {
        v7 = v27;
        v12 = v14;
        if (v18 >= v28 || a1 >= v18)
        {
LABEL_11:
          v19 = *(a2 + 48);
          result = v19 + v12 * a1;
          if (v12 * a1 < v15 || result >= v19 + v15 + v12)
          {
            result = swift_arrayInitWithTakeFrontToBack();
LABEL_16:
            v17 = v30;
          }

          else if (v12 * a1 != v15)
          {
            result = swift_arrayInitWithTakeBackToFront();
            goto LABEL_16;
          }

          v20 = *(a2 + 56);
          v21 = (v20 + 4 * a1);
          v22 = (v20 + 4 * v9);
          if (a1 != v9 || v21 >= v22 + 1)
          {
            *v21 = *v22;
            a1 = v9;
          }
        }
      }

      v9 = (v9 + 1) & v17;
    }

    while (((*(v7 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  *(v7 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v23 = *(a2 + 16);
  v24 = __OFSUB__(v23, 1);
  v25 = v23 - 1;
  if (v24)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v25;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_25F760544(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFC18);
  MEMORY[0x28223BE20](v8);
  v10 = &v25 - v9;
  v11 = *v3;
  v13 = sub_25F75DA44(a2, &qword_27FDAFC18);
  v14 = v11[2];
  v15 = (v12 & 1) == 0;
  v16 = v14 + v15;
  if (__OFADD__(v14, v15))
  {
    __break(1u);
    goto LABEL_14;
  }

  v17 = v12;
  v18 = v11[3];
  if (v18 >= v16 && (a3 & 1) != 0)
  {
LABEL_7:
    v19 = *v4;
    if (v17)
    {
LABEL_8:
      v20 = v19[7];
      v21 = type metadata accessor for UserAdjustment();
      return sub_25F7617D4(a1, v20 + *(*(v21 - 8) + 72) * v13, type metadata accessor for UserAdjustment);
    }

    goto LABEL_11;
  }

  if (v18 >= v16 && (a3 & 1) == 0)
  {
    sub_25F75DF98();
    goto LABEL_7;
  }

  sub_25F75EADC(v16, a3 & 1);
  v23 = sub_25F75DA44(a2, &qword_27FDAFC18);
  if ((v17 & 1) != (v24 & 1))
  {
LABEL_14:
    result = sub_25F822D2C();
    __break(1u);
    return result;
  }

  v13 = v23;
  v19 = *v4;
  if (v17)
  {
    goto LABEL_8;
  }

LABEL_11:
  sub_25F76183C(a2, v10, &qword_27FDAFC18);
  return sub_25F760B8C(v13, v10, a1, v19, &qword_27FDAFC18, &unk_25F824310, type metadata accessor for UserAdjustment, type metadata accessor for UserAdjustment);
}

uint64_t sub_25F76074C(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFBB0);
  MEMORY[0x28223BE20](v8);
  v10 = &v25 - v9;
  v11 = *v3;
  v13 = sub_25F75DA44(a2, &qword_27FDAFBB0);
  v14 = v11[2];
  v15 = (v12 & 1) == 0;
  v16 = v14 + v15;
  if (__OFADD__(v14, v15))
  {
    __break(1u);
    goto LABEL_14;
  }

  v17 = v12;
  v18 = v11[3];
  if (v18 >= v16 && (a3 & 1) != 0)
  {
LABEL_7:
    v19 = *v4;
    if (v17)
    {
LABEL_8:
      v20 = v19[7];
      v21 = type metadata accessor for Preset(0);
      return sub_25F7617D4(a1, v20 + *(*(v21 - 8) + 72) * v13, type metadata accessor for Preset);
    }

    goto LABEL_11;
  }

  if (v18 >= v16 && (a3 & 1) == 0)
  {
    sub_25F75DC88();
    goto LABEL_7;
  }

  sub_25F75E660(v16, a3 & 1);
  v23 = sub_25F75DA44(a2, &qword_27FDAFBB0);
  if ((v17 & 1) != (v24 & 1))
  {
LABEL_14:
    result = sub_25F822D2C();
    __break(1u);
    return result;
  }

  v13 = v23;
  v19 = *v4;
  if (v17)
  {
    goto LABEL_8;
  }

LABEL_11:
  sub_25F76183C(a2, v10, &qword_27FDAFBB0);
  return sub_25F760B8C(v13, v10, a1, v19, &qword_27FDAFBB0, &unk_25F824000, type metadata accessor for Preset, type metadata accessor for Preset);
}

uint64_t sub_25F760954(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_25F7609B8(int a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFBB0);
  MEMORY[0x28223BE20](v8);
  v10 = &v21 - v9;
  v11 = *v3;
  v13 = sub_25F75DA44(a2, &qword_27FDAFBB0);
  v14 = v11[2];
  v15 = (v12 & 1) == 0;
  result = v14 + v15;
  if (__OFADD__(v14, v15))
  {
    __break(1u);
    goto LABEL_14;
  }

  v17 = v12;
  v18 = v11[3];
  if (v18 >= result && (a3 & 1) != 0)
  {
LABEL_7:
    v19 = *v4;
    if (v17)
    {
LABEL_8:
      *(v19[7] + 4 * v13) = a1;
      return result;
    }

    goto LABEL_11;
  }

  if (v18 >= result && (a3 & 1) == 0)
  {
    result = sub_25F75E2A8();
    goto LABEL_7;
  }

  sub_25F75EF58(result, a3 & 1);
  result = sub_25F75DA44(a2, &qword_27FDAFBB0);
  if ((v17 & 1) != (v20 & 1))
  {
LABEL_14:
    result = sub_25F822D2C();
    __break(1u);
    return result;
  }

  v13 = result;
  v19 = *v4;
  if (v17)
  {
    goto LABEL_8;
  }

LABEL_11:
  sub_25F76183C(a2, v10, &qword_27FDAFBB0);
  return sub_25F760C84(v13, v10, a1, v19);
}

uint64_t sub_25F760B8C(unint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t (*a7)(void), uint64_t (*a8)(void))
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v15 = a4[6];
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(a5);
  sub_25F760FA4(a2, v15 + *(*(v16 - 8) + 72) * a1, a5);
  v17 = a4[7];
  v18 = a7(0);
  result = sub_25F75D050(a3, v17 + *(*(v18 - 8) + 72) * a1, a8);
  v20 = a4[2];
  v21 = __OFADD__(v20, 1);
  v22 = v20 + 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v22;
  }

  return result;
}

uint64_t sub_25F760C84(unint64_t a1, uint64_t a2, int a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFBB0);
  result = sub_25F760FA4(a2, v8 + *(*(v9 - 8) + 72) * a1, &qword_27FDAFBB0);
  *(a4[7] + 4 * a1) = a3;
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

uint64_t sub_25F760D48(uint64_t result, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6)
{
  if (a3 < 0 || 1 << *(a6 + 32) <= a3)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a6 + 8 * (a3 >> 6) + 64) >> a3) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a6 + 36) == a4)
  {
    v9 = result;
    v10 = *(a6 + 48);
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFC18);
    sub_25F76183C(v10 + *(*(v11 - 8) + 72) * a3, v9, &qword_27FDAFC18);
    v12 = *(a6 + 56);
    v13 = type metadata accessor for UserAdjustment();
    return sub_25F75D11C(v12 + *(*(v13 - 8) + 72) * a3, a2, type metadata accessor for UserAdjustment);
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_25F760E58(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

unint64_t sub_25F760EC0()
{
  result = qword_27FDAFC30;
  if (!qword_27FDAFC30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FDAFC30);
  }

  return result;
}

uint64_t sub_25F760F44(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_25F760FA4(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_25F76100C(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_25F761068(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for ProData();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_25F761128(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for ProData();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

unint64_t sub_25F7611CC()
{
  result = sub_25F761268();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for ProData();
    if (v2 <= 0x3F)
    {
      result = sub_25F7612CC();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

unint64_t sub_25F761268()
{
  result = qword_27FDAFC60;
  if (!qword_27FDAFC60)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_27FDAFC60);
  }

  return result;
}

unint64_t sub_25F7612CC()
{
  result = qword_27FDAFC68;
  if (!qword_27FDAFC68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FDAFC70);
    result = swift_getExistentialMetatypeMetadata();
    atomic_store(result, &qword_27FDAFC68);
  }

  return result;
}

void sub_25F761370()
{
  sub_25F76144C(319, &qword_27FDAFC88, type metadata accessor for Preset);
  if (v0 <= 0x3F)
  {
    sub_25F76144C(319, &qword_27FDAFC90, type metadata accessor for UserAdjustment);
    if (v1 <= 0x3F)
    {
      sub_25F7614A0();
      if (v2 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

void sub_25F76144C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Identifier();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_25F7614A0()
{
  if (!qword_27FDAFC98)
  {
    sub_25F7614E8();
    if (!v1)
    {
      atomic_store(v0, &qword_27FDAFC98);
    }
  }
}

void sub_25F7614E8()
{
  if (!qword_27FDAFCA0)
  {
    sub_25F761544();
    v0 = sub_25F82264C();
    if (!v1)
    {
      atomic_store(v0, &qword_27FDAFCA0);
    }
  }
}

unint64_t sub_25F761544()
{
  result = qword_27FDAFCA8;
  if (!qword_27FDAFCA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FDAFCA8);
  }

  return result;
}

__n128 __swift_memcpy89_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 73) = *(a2 + 73);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_25F7615BC(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 89))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_25F7615DC(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 88) = 0;
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

  *(result + 89) = v3;
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

uint64_t sub_25F76165C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 104))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_25F76167C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
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

  *(result + 104) = v3;
  return result;
}

uint64_t sub_25F7616D4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_25F82217C();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_25F7617C8(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_25F7617D4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

uint64_t sub_25F76183C(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_25F7618A4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_25F761920(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFBB0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_25F7619FC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFBB0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t type metadata accessor for ProDataOnDisk()
{
  result = qword_27FDAFD78;
  if (!qword_27FDAFD78)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_25F761B0C()
{
  sub_25F761BC0();
  if (v0 <= 0x3F)
  {
    sub_25F761C18();
    if (v1 <= 0x3F)
    {
      sub_25F761CD4();
      if (v2 <= 0x3F)
      {
        sub_25F761D90();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_25F761BC0()
{
  if (!qword_27FDAFC88)
  {
    type metadata accessor for Preset(255);
    v0 = type metadata accessor for Identifier();
    if (!v1)
    {
      atomic_store(v0, &qword_27FDAFC88);
    }
  }
}

void sub_25F761C18()
{
  if (!qword_27FDAFD88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FDAFBB0);
    type metadata accessor for Preset(255);
    sub_25F76100C(&qword_27FDAFD90, &qword_27FDAFBB0);
    v0 = sub_25F8222AC();
    if (!v1)
    {
      atomic_store(v0, &qword_27FDAFD88);
    }
  }
}

void sub_25F761CD4()
{
  if (!qword_27FDAFD98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FDAFC18);
    type metadata accessor for UserAdjustment();
    sub_25F76100C(&qword_27FDAFC48, &qword_27FDAFC18);
    v0 = sub_25F8222AC();
    if (!v1)
    {
      atomic_store(v0, &qword_27FDAFD98);
    }
  }
}

void sub_25F761D90()
{
  if (!qword_27FDAFDA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FDAFBB0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FDAFC10);
    sub_25F76100C(&qword_27FDAFD90, &qword_27FDAFBB0);
    v0 = sub_25F8222AC();
    if (!v1)
    {
      atomic_store(v0, &qword_27FDAFDA0);
    }
  }
}

uint64_t _s17ProDisplayLibrary6PresetV11LatencyModeO9hashValueSivg_0()
{
  v1 = *v0;
  sub_25F822DCC();
  MEMORY[0x25F8E7E80](v1);
  return sub_25F822E0C();
}

uint64_t sub_25F761EE0()
{
  v1 = *v0;
  sub_25F822DCC();
  MEMORY[0x25F8E7E80](v1);
  return sub_25F822E0C();
}

unint64_t sub_25F761F24()
{
  v1 = 0x7250657669746361;
  v2 = 0x756A644172657375;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000013;
  }

  if (*v0)
  {
    v1 = 0x7365725072657375;
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

uint64_t sub_25F761FC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_25F76450C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_25F762000(uint64_t a1)
{
  v2 = sub_25F763A54();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25F76203C(uint64_t a1)
{
  v2 = sub_25F763A54();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_25F762078(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFE30);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25F763A54();
  sub_25F822E5C();
  LOBYTE(v12) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFBB0);
  sub_25F76100C(&qword_27FDAFE38, &qword_27FDAFBB0);
  sub_25F822C4C();
  if (!v2)
  {
    v9 = type metadata accessor for ProDataOnDisk();
    v12 = *(v3 + v9[5]);
    HIBYTE(v11) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFDE0);
    sub_25F763D64();
    sub_25F822C4C();
    v12 = *(v3 + v9[6]);
    HIBYTE(v11) = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFDF8);
    sub_25F763E4C();
    sub_25F822C4C();
    v12 = *(v3 + v9[7]);
    HIBYTE(v11) = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFE18);
    sub_25F763F7C();
    sub_25F822C4C();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_25F762318@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v16 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFBB0);
  MEMORY[0x28223BE20](v4);
  v18 = &v16 - v5;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFDC8);
  v17 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v7 = &v16 - v6;
  v8 = type metadata accessor for ProDataOnDisk();
  MEMORY[0x28223BE20](v8);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25F763A54();
  v20 = v7;
  sub_25F822E3C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  v11 = v17;
  v12 = v10;
  LOBYTE(v22) = 0;
  sub_25F76100C(&qword_27FDAFDD8, &qword_27FDAFBB0);
  v14 = v18;
  v13 = v19;
  sub_25F822B6C();
  sub_25F760FA4(v14, v12, &qword_27FDAFBB0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFDE0);
  v21 = 1;
  sub_25F763AA8();
  sub_25F822B6C();
  *(v12 + v8[5]) = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFDF8);
  v21 = 2;
  sub_25F763B90();
  sub_25F822B6C();
  *(v12 + v8[6]) = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFE18);
  v21 = 3;
  sub_25F763C78();
  sub_25F822B6C();
  (*(v11 + 8))(v20, v13);
  *(v12 + v8[7]) = v22;
  sub_25F764100(v12, v16, type metadata accessor for ProDataOnDisk);
  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  return sub_25F764168(v12, type metadata accessor for ProDataOnDisk);
}

uint64_t sub_25F762810@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v150 = type metadata accessor for UserAdjustment();
  v147 = *(v150 - 8);
  v6 = MEMORY[0x28223BE20](v150);
  v166 = &v135 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v149 = &v135 - v8;
  v148 = type metadata accessor for UserAdjustmentV1();
  v142 = *(v148 - 8);
  MEMORY[0x28223BE20](v148);
  v162 = &v135 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFC18);
  v159 = *(v136 - 8);
  v10 = MEMORY[0x28223BE20](v136);
  v165 = &v135 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v141 = &v135 - v12;
  v13 = type metadata accessor for Preset(0);
  v154 = *(v13 - 8);
  v14 = MEMORY[0x28223BE20](v13 - 8);
  v168 = &v135 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v157 = &v135 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFE78);
  v18 = MEMORY[0x28223BE20](v17 - 8);
  v164 = &v135 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v152 = &v135 - v20;
  v21 = type metadata accessor for PresetV1(0);
  v146 = *(v21 - 8);
  v22 = MEMORY[0x28223BE20](v21 - 8);
  v156 = &v135 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v145 = &v135 - v24;
  v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFBB0);
  v161 = *(v135 - 8);
  v25 = MEMORY[0x28223BE20](v135);
  v27 = &v135 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v143 = &v135 - v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFE80);
  v30 = MEMORY[0x28223BE20](v29 - 8);
  v160 = &v135 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v158 = &v135 - v32;
  sub_25F76183C(a1, a2, &qword_27FDAFBB0);
  v33 = sub_25F7CA6A0(MEMORY[0x277D84F90]);
  v138 = type metadata accessor for ProDataOnDisk();
  v34 = v138[5];
  v169 = a2;
  *&v167 = v34;
  *(a2 + v34) = v33;
  v137 = type metadata accessor for ProDataOnDiskV1();
  v35 = v137[5];
  v139 = a1;
  v36 = *(a1 + v35);
  v37 = v36 + 64;
  v38 = 1 << *(v36 + 32);
  v39 = -1;
  if (v38 < 64)
  {
    v39 = ~(-1 << v38);
  }

  v40 = v39 & *(v36 + 64);
  v140 = (v38 + 63) >> 6;
  v151 = v36;

  v41 = 0;
  v144 = v27;
  for (i = v37; ; v37 = i)
  {
    v155 = v33;
    if (v40)
    {
      v163 = v3;
      v42 = v41;
LABEL_16:
      v46 = __clz(__rbit64(v40));
      v40 &= v40 - 1;
      v47 = v46 | (v42 << 6);
      v48 = v151;
      v49 = v143;
      sub_25F76183C(*(v151 + 48) + *(v161 + 72) * v47, v143, &qword_27FDAFBB0);
      v50 = v145;
      sub_25F764100(*(v48 + 56) + *(v146 + 72) * v47, v145, type metadata accessor for PresetV1);
      v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFE88);
      v52 = *(v51 + 48);
      v53 = v49;
      v45 = v160;
      sub_25F760FA4(v53, v160, &qword_27FDAFBB0);
      sub_25F7641C8(v50, v45 + v52, type metadata accessor for PresetV1);
      (*(*(v51 - 8) + 56))(v45, 0, 1, v51);
      v3 = v163;
      v27 = v144;
    }

    else
    {
      v43 = v140 <= v41 + 1 ? v41 + 1 : v140;
      v44 = v43 - 1;
      v45 = v160;
      while (1)
      {
        v42 = v41 + 1;
        if (__OFADD__(v41, 1))
        {
          __break(1u);
          goto LABEL_62;
        }

        if (v42 >= v140)
        {
          break;
        }

        v40 = *(v37 + 8 * v42);
        ++v41;
        if (v40)
        {
          v163 = v3;
          v41 = v42;
          goto LABEL_16;
        }
      }

      v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFE88);
      (*(*(v75 - 8) + 56))(v45, 1, 1, v75);
      v40 = 0;
      v41 = v44;
    }

    v54 = v45;
    v55 = v158;
    sub_25F760FA4(v54, v158, &qword_27FDAFE80);
    v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFE88);
    if ((*(*(v56 - 8) + 48))(v55, 1, v56) == 1)
    {
      break;
    }

    v57 = *(v56 + 48);
    sub_25F760FA4(v55, v27, &qword_27FDAFBB0);
    v58 = v156;
    sub_25F7641C8(v55 + v57, v156, type metadata accessor for PresetV1);
    v59 = v157;
    sub_25F7CAD70(v58, v157);
    if (v3)
    {

      sub_25F764168(v139, type metadata accessor for ProDataOnDiskV1);
      sub_25F760F44(v27, &qword_27FDAFBB0);
      sub_25F760F44(v169, &qword_27FDAFBB0);
    }

    v3 = 0;
    sub_25F7641C8(v59, v168, type metadata accessor for Preset);
    v60 = v169;
    v61 = v167;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v63 = *(v60 + v61);
    v170 = v63;
    v65 = sub_25F75D8B4(v27);
    v66 = v63[2];
    v67 = (v64 & 1) == 0;
    v68 = v66 + v67;
    if (__OFADD__(v66, v67))
    {
      goto LABEL_63;
    }

    v69 = v64;
    if (v63[3] >= v68)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        v33 = v170;
        if (v64)
        {
          goto LABEL_4;
        }
      }

      else
      {
        sub_25F75DC88();
        v33 = v170;
        if (v69)
        {
          goto LABEL_4;
        }
      }
    }

    else
    {
      sub_25F75E660(v68, isUniquelyReferenced_nonNull_native);
      v70 = sub_25F75D8B4(v27);
      if ((v69 & 1) != (v71 & 1))
      {
        goto LABEL_67;
      }

      v65 = v70;
      v33 = v170;
      if (v69)
      {
LABEL_4:
        sub_25F764230(v168, v33[7] + *(v154 + 72) * v65, type metadata accessor for Preset);
        sub_25F760F44(v27, &qword_27FDAFBB0);
        goto LABEL_5;
      }
    }

    v33[(v65 >> 6) + 8] |= 1 << v65;
    sub_25F76183C(v27, v33[6] + *(v161 + 72) * v65, &qword_27FDAFBB0);
    sub_25F7641C8(v168, v33[7] + *(v154 + 72) * v65, type metadata accessor for Preset);
    sub_25F760F44(v27, &qword_27FDAFBB0);
    v72 = v33[2];
    v73 = __OFADD__(v72, 1);
    v74 = v72 + 1;
    if (v73)
    {
      goto LABEL_65;
    }

    v33[2] = v74;
LABEL_5:
    *(v169 + v167) = v33;
  }

  v163 = v3;

  v76 = sub_25F7C9F08(MEMORY[0x277D84F90]);
  v168 = v138[6];
  *(v169 + v168) = v76;
  v77 = *(v139 + v137[6]);
  v78 = v77 + 64;
  v79 = 1 << *(v77 + 32);
  v80 = -1;
  if (v79 < 64)
  {
    v80 = ~(-1 << v79);
  }

  v81 = v80 & *(v77 + 64);
  v158 = (v79 + 63) >> 6;
  v160 = v77;

  v82 = 0;
  v167 = xmmword_25F823FE0;
  v83 = v164;
  v84 = v165;
  v161 = v78;
  while (2)
  {
    if (v81)
    {
      v85 = v82;
LABEL_46:
      v88 = __clz(__rbit64(v81));
      v81 &= v81 - 1;
      v89 = v88 | (v85 << 6);
      v90 = v160;
      v91 = v141;
      sub_25F76183C(*(v160 + 48) + *(v159 + 72) * v89, v141, &qword_27FDAFC18);
      v92 = v162;
      sub_25F764100(*(v90 + 56) + *(v142 + 72) * v89, v162, type metadata accessor for UserAdjustmentV1);
      v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFE90);
      v94 = *(v93 + 48);
      v95 = v91;
      v96 = v164;
      sub_25F760FA4(v95, v164, &qword_27FDAFC18);
      v97 = v92;
      v83 = v96;
      sub_25F7641C8(v97, v96 + v94, type metadata accessor for UserAdjustmentV1);
      (*(*(v93 - 8) + 56))(v96, 0, 1, v93);
      v84 = v165;
LABEL_47:
      v98 = v152;
      sub_25F760FA4(v83, v152, &qword_27FDAFE78);
      v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFE90);
      if ((*(*(v99 - 8) + 48))(v98, 1, v99) == 1)
      {

        v133 = v139;
        v134 = *(v139 + v137[7]);

        result = sub_25F764168(v133, type metadata accessor for ProDataOnDiskV1);
        *(v169 + v138[7]) = v134;
        return result;
      }

      v100 = *(v99 + 48);
      sub_25F760FA4(v98, v84, &qword_27FDAFC18);
      v101 = v162;
      sub_25F7641C8(v98 + v100, v162, type metadata accessor for UserAdjustmentV1);
      v102 = v149;
      sub_25F76183C(v101, v149, &qword_27FDAFC18);
      v103 = v148;
      v104 = (v101 + *(v148 + 24));
      v105 = *v104;
      v106 = v104[1];
      v107 = v150;
      v108 = (v102 + *(v150 + 24));
      *v108 = v105;
      v108[1] = v106;
      v109 = v103[5];
      v110 = v107[5];
      v111 = sub_25F82210C();
      (*(*(v111 - 8) + 16))(v102 + v110, v101 + v109, v111);
      v112 = v167;
      *(v102 + v107[9]) = v167;
      *(v102 + v107[10]) = 0x4059000000000000;
      *(v102 + v107[7]) = vsubq_f64(v112, *(v101 + v103[7]));
      v113 = *(v101 + v103[8]);

      v114 = v168;
      sub_25F764168(v101, type metadata accessor for UserAdjustmentV1);
      *(v102 + v107[8]) = 100.0 / v113;
      v115 = v102;
      v84 = v165;
      sub_25F7641C8(v115, v166, type metadata accessor for UserAdjustment);
      v116 = v169;
      v117 = swift_isUniquelyReferenced_nonNull_native();
      v118 = *(v116 + v114);
      v170 = v118;
      v119 = sub_25F75DA30(v84);
      v121 = v118[2];
      v122 = (v120 & 1) == 0;
      v73 = __OFADD__(v121, v122);
      v123 = v121 + v122;
      if (v73)
      {
        goto LABEL_64;
      }

      v124 = v120;
      if (v118[3] >= v123)
      {
        v83 = v164;
        if (v117)
        {
          goto LABEL_53;
        }

        v131 = v119;
        sub_25F75DF98();
        v119 = v131;
        v126 = v170;
        if (v124)
        {
          goto LABEL_34;
        }

LABEL_54:
        v126[(v119 >> 6) + 8] |= 1 << v119;
        v127 = v119;
        sub_25F76183C(v84, v126[6] + *(v159 + 72) * v119, &qword_27FDAFC18);
        sub_25F7641C8(v166, v126[7] + *(v147 + 72) * v127, type metadata accessor for UserAdjustment);
        sub_25F760F44(v84, &qword_27FDAFC18);
        v128 = v126[2];
        v73 = __OFADD__(v128, 1);
        v129 = v128 + 1;
        if (v73)
        {
          goto LABEL_66;
        }

        v126[2] = v129;
      }

      else
      {
        sub_25F75EADC(v123, v117);
        v119 = sub_25F75DA30(v84);
        v83 = v164;
        if ((v124 & 1) != (v125 & 1))
        {
          goto LABEL_67;
        }

LABEL_53:
        v126 = v170;
        if ((v124 & 1) == 0)
        {
          goto LABEL_54;
        }

LABEL_34:
        sub_25F764230(v166, v126[7] + *(v147 + 72) * v119, type metadata accessor for UserAdjustment);
        sub_25F760F44(v84, &qword_27FDAFC18);
      }

      *(v169 + v168) = v126;
      v78 = v161;
      continue;
    }

    break;
  }

  if (v158 <= v82 + 1)
  {
    v86 = v82 + 1;
  }

  else
  {
    v86 = v158;
  }

  v87 = v86 - 1;
  while (1)
  {
    v85 = v82 + 1;
    if (__OFADD__(v82, 1))
    {
      break;
    }

    if (v85 >= v158)
    {
      v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFE90);
      (*(*(v130 - 8) + 56))(v83, 1, 1, v130);
      v81 = 0;
      v82 = v87;
      goto LABEL_47;
    }

    v81 = *(v78 + 8 * v85);
    ++v82;
    if (v81)
    {
      v82 = v85;
      goto LABEL_46;
    }
  }

LABEL_62:
  __break(1u);
LABEL_63:
  __break(1u);
LABEL_64:
  __break(1u);
LABEL_65:
  __break(1u);
LABEL_66:
  __break(1u);
LABEL_67:
  result = sub_25F822D2C();
  __break(1u);
  return result;
}

uint64_t sub_25F763924()
{
  sub_25F763A00();
  swift_allocError();
  *(v0 + 8) = 0;
  *(v0 + 16) = 0;
  *v0 = 0;
  *(v0 + 24) = 0x80;
  return swift_willThrow();
}

uint64_t sub_25F76397C(uint64_t a1)
{
  *(a1 + 8) = sub_25F763F34(&qword_27FDAFDB0, type metadata accessor for ProDataOnDisk);
  result = sub_25F763F34(&qword_27FDAFDB8, type metadata accessor for ProDataOnDisk);
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_25F763A00()
{
  result = qword_27FDAFDC0;
  if (!qword_27FDAFDC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FDAFDC0);
  }

  return result;
}

unint64_t sub_25F763A54()
{
  result = qword_27FDAFDD0;
  if (!qword_27FDAFDD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FDAFDD0);
  }

  return result;
}

unint64_t sub_25F763AA8()
{
  result = qword_27FDAFDE8;
  if (!qword_27FDAFDE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FDAFDE0);
    sub_25F76100C(&qword_27FDAFDD8, &qword_27FDAFBB0);
    sub_25F763F34(&qword_27FDAFDF0, type metadata accessor for Preset);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FDAFDE8);
  }

  return result;
}

unint64_t sub_25F763B90()
{
  result = qword_27FDAFE00;
  if (!qword_27FDAFE00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FDAFDF8);
    sub_25F76100C(&qword_27FDAFE08, &qword_27FDAFC18);
    sub_25F763F34(&qword_27FDAFE10, type metadata accessor for UserAdjustment);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FDAFE00);
  }

  return result;
}

unint64_t sub_25F763C78()
{
  result = qword_27FDAFE20;
  if (!qword_27FDAFE20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FDAFE18);
    sub_25F76100C(&qword_27FDAFDD8, &qword_27FDAFBB0);
    sub_25F764068(&qword_27FDAFE28, &qword_27FDAFE08);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FDAFE20);
  }

  return result;
}

unint64_t sub_25F763D64()
{
  result = qword_27FDAFE40;
  if (!qword_27FDAFE40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FDAFDE0);
    sub_25F76100C(&qword_27FDAFE38, &qword_27FDAFBB0);
    sub_25F763F34(&qword_27FDAFE48, type metadata accessor for Preset);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FDAFE40);
  }

  return result;
}

unint64_t sub_25F763E4C()
{
  result = qword_27FDAFE50;
  if (!qword_27FDAFE50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FDAFDF8);
    sub_25F76100C(&qword_27FDAFE58, &qword_27FDAFC18);
    sub_25F763F34(&qword_27FDAFE60, type metadata accessor for UserAdjustment);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FDAFE50);
  }

  return result;
}

uint64_t sub_25F763F34(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_25F763F7C()
{
  result = qword_27FDAFE68;
  if (!qword_27FDAFE68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FDAFE18);
    sub_25F76100C(&qword_27FDAFE38, &qword_27FDAFBB0);
    sub_25F764068(&qword_27FDAFE70, &qword_27FDAFE58);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FDAFE68);
  }

  return result;
}

uint64_t sub_25F764068(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FDAFC10);
    sub_25F76100C(a2, &qword_27FDAFC18);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_25F764100(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_25F764168(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_25F7641C8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_25F764230(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

uint64_t getEnumTagSinglePayload for ProDataOnDisk.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for ProDataOnDisk.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_25F764408()
{
  result = qword_27FDAFE98;
  if (!qword_27FDAFE98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FDAFE98);
  }

  return result;
}

unint64_t sub_25F764460()
{
  result = qword_27FDAFEA0;
  if (!qword_27FDAFEA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FDAFEA0);
  }

  return result;
}

unint64_t sub_25F7644B8()
{
  result = qword_27FDAFEA8;
  if (!qword_27FDAFEA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FDAFEA8);
  }

  return result;
}

uint64_t sub_25F76450C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7250657669746361 && a2 == 0xEC00000074657365;
  if (v4 || (sub_25F822CBC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7365725072657375 && a2 == 0xEB00000000737465 || (sub_25F822CBC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x756A644172657375 && a2 == 0xEF73746E656D7473 || (sub_25F822CBC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000013 && 0x800000025F82CB90 == a2)
  {

    return 3;
  }

  else
  {
    v6 = sub_25F822CBC();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_25F764688(uint64_t a1, char *a2)
{
  v4 = v2;
  v7 = OBJC_IVAR____TtC17ProDisplayLibrary12HIDDataStore_indexMap;
  v8 = MEMORY[0x277D84F90];
  *(v4 + v7) = sub_25F7C9AA8(MEMORY[0x277D84F90]);
  *(v4 + OBJC_IVAR____TtC17ProDisplayLibrary12HIDDataStore_emptyWritableSlots) = v8;
  *(v4 + OBJC_IVAR____TtC17ProDisplayLibrary12HIDDataStore_presets) = 0;
  v9 = v4 + OBJC_IVAR____TtC17ProDisplayLibrary12HIDDataStore_userPresetCapacity;
  *v9 = 0;
  *(v9 + 8) = 1;
  v10 = v4 + OBJC_IVAR____TtC17ProDisplayLibrary12HIDDataStore_applePresetCapacity;
  *v10 = 0;
  *(v10 + 8) = 1;
  v11 = OBJC_IVAR____TtC17ProDisplayLibrary12HIDDataStore_activePresetData;
  v12 = type metadata accessor for Preset(0);
  v13 = *(*(v12 - 8) + 56);
  v13(v4 + v11, 1, 1, v12);
  v13(v4 + OBJC_IVAR____TtC17ProDisplayLibrary12HIDDataStore_defaultPresetData, 1, 1, v12);
  sub_25F76D4E8(a1, a2);
  if (v3)
  {
  }

  else
  {
    DeviceManagementInterfaceWithService = HIDDisplayCreateDeviceManagementInterfaceWithService();
    if (DeviceManagementInterfaceWithService)
    {
      *(v4 + 480) = DeviceManagementInterfaceWithService;
      v15 = sub_25F82217C();
      v31[60] = v29;
      v16 = *(v15 - 8);
      MEMORY[0x28223BE20](v15);
      v30 = v29 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
      v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFFF8);
      MEMORY[0x28223BE20](v18 - 8);
      v20 = v29 - v19;
      sub_25F82211C();
      if ((*(v16 + 48))(v20, 1, v15) == 1)
      {
        sub_25F760F44(v20, &qword_27FDAFFF8);
        type metadata accessor for HIDDataStore.Error(0);
        sub_25F769C80();
        swift_allocError();
        v22 = v21;
        v31[0] = 0;
        v31[1] = 0xE000000000000000;
        sub_25F82292C();

        v31[0] = 0xD00000000000002ALL;
        v31[1] = 0x800000025F82CF70;
        MEMORY[0x25F8E7510](a1, a2);

        v23 = v31[1];
        *v22 = v31[0];
        v22[1] = v23;
        swift_storeEnumTagMultiPayload();
        swift_willThrow();
        swift_unknownObjectRelease();
      }

      else
      {
        v29[1] = v29;
        v25 = v30;
        (*(v16 + 32))(v30, v20, v15);
        (*(v16 + 16))(v4 + OBJC_IVAR____TtC17ProDisplayLibrary12HIDDataStore_container, v25, v15);
        AppleDisplayHIDDevice.init(container:)(a1, a2, v31);
        if (sub_25F76E360(v31) != 1)
        {
          (*(v16 + 8))(v25, v15);
          memcpy((v4 + 16), v31, 0x1D0uLL);
          return v4;
        }

        type metadata accessor for HIDDataStore.Error(0);
        sub_25F769C80();
        swift_allocError();
        *v26 = 0xD000000000000023;
        v26[1] = 0x800000025F82CFA0;
        swift_storeEnumTagMultiPayload();
        swift_willThrow();
        v27 = *(v16 + 8);
        v27(v25, v15);
        swift_unknownObjectRelease();
        v27((v4 + OBJC_IVAR____TtC17ProDisplayLibrary12HIDDataStore_container), v15);
      }
    }

    else
    {

      type metadata accessor for HIDDataStore.Error(0);
      sub_25F769C80();
      swift_allocError();
      *v24 = 0xD000000000000038;
      *(v24 + 8) = 0x800000025F82CF30;
      *(v24 + 16) = 0u;
      *(v24 + 32) = 0u;
      *(v24 + 48) = 0;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
    }
  }

  type metadata accessor for HIDDataStore(0);

  sub_25F760F44(v4 + OBJC_IVAR____TtC17ProDisplayLibrary12HIDDataStore_activePresetData, &qword_27FDAFBE0);
  sub_25F760F44(v4 + OBJC_IVAR____TtC17ProDisplayLibrary12HIDDataStore_defaultPresetData, &qword_27FDAFBE0);
  swift_deallocPartialClassInstance();
  return v4;
}