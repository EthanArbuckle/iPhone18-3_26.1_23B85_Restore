uint64_t sub_22F0B3F34(uint64_t a1, uint64_t a2, uint64_t a3, int a4, void *a5)
{
  v26 = a4;
  v25 = a3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA23E8, qword_22F0DBB20);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v23 - v11;
  (*(v9 + 16))(&v23 - v11, a1, v8);
  v13 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v14 = swift_allocObject();
  (*(v9 + 32))(v14 + v13, v12, v8);
  v15 = swift_allocObject();
  *(v15 + 16) = 0;
  v16 = swift_allocObject();
  *(v16 + 16) = 0;
  v17 = swift_allocObject();
  *(v17 + 16) = MEMORY[0x277D84F90];
  v18 = swift_allocObject();
  *(v18 + 16) = 0;
  v19 = a5[4];
  v24 = a5[3];
  __swift_project_boxed_opaque_existential_1(a5, v24);
  v20 = swift_allocObject();
  *(v20 + 16) = sub_22F0B79C0;
  *(v20 + 24) = v14;
  *(v20 + 32) = v17;
  *(v20 + 40) = a2;
  *(v20 + 48) = v15;
  *(v20 + 56) = v18;
  *(v20 + 64) = v25;
  *(v20 + 72) = v26 & 1;
  *(v20 + 80) = v16;
  v21 = *(v19 + 8);
  sub_22F0CFFAC();
  sub_22F0CFFAC();
  sub_22F0CFFAC();
  sub_22F0CFFAC();
  sub_22F0CFFAC();
  v21(sub_22F0507E4, v20, v24, v19);
  sub_22F0D00CC();
  sub_22F0D00CC();
  sub_22F0D00CC();
  sub_22F0D00CC();
  sub_22F0D00CC();
  return sub_22F0D00CC();
}

uint64_t sub_22F0B41D4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1760, &unk_22F0D77D8);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_22F040114(a1, &v6 - v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA23E8, qword_22F0DBB20);
  return sub_22F0D108C();
}

uint64_t sub_22F0B427C(char *a1, char a2, unint64_t a3, uint64_t a4, uint64_t a5, id *a6, uint64_t a7, uint64_t a8, uint64_t *a9, unsigned __int8 a10, uint64_t a11)
{
  v155 = a7;
  v153 = a6;
  v158 = a5;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAA1170, &unk_22F0D5A60);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v150 = &v141 - v19;
  v20 = sub_22F0D05BC();
  v151 = *(v20 - 8);
  v21 = *(v151 + 64);
  MEMORY[0x28223BE20](v20);
  v154 = &v141 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v149 = type metadata accessor for ResolvedFamily();
  v23 = *(*(v149 - 8) + 64);
  MEMORY[0x28223BE20](v149);
  v152 = &v141 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1760, &unk_22F0D77D8);
  v26 = *(*(v25 - 8) + 64);
  v27 = MEMORY[0x28223BE20](v25);
  v29 = &v141 - v28;
  v159 = v27;
  if (a2)
  {
    if (qword_280CBEC38 == -1)
    {
LABEL_3:
      v30 = sub_22F0D0A1C();
      __swift_project_value_buffer(v30, qword_280CBEC40);
      v31 = a1;
      v32 = sub_22F0D09FC();
      v33 = sub_22F0D123C();
      sub_22F015BE4(a1, 1);
      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        v160 = swift_slowAlloc();
        v168 = v160;
        *v34 = 136315138;
        swift_getErrorValue();
        v35 = sub_22F0D192C();
        v37 = a3;
        v38 = v29;
        v39 = sub_22F00A560(v35, v36, &v168);

        *(v34 + 4) = v39;
        v29 = v38;
        a3 = v37;
        _os_log_impl(&dword_22EFE1000, v32, v33, "Family lookup error: %s", v34, 0xCu);
        v40 = v160;
        __swift_destroy_boxed_opaque_existential_1Tm(v160);
        MEMORY[0x2318FE8B0](v40, -1, -1);
        MEMORY[0x2318FE8B0](v34, -1, -1);
      }

      *v29 = a1;
      swift_storeEnumTagMultiPayload();
      v41 = a1;
      (a3)(v29);
      v42 = v29;
      return sub_22F003A4C(v42, &qword_27DAA1760, &unk_22F0D77D8);
    }

LABEL_78:
    swift_once();
    goto LABEL_3;
  }

  v156 = a4;
  v157 = a3;
  v148 = a8;
  v142 = v20;
  v143 = v17;
  v144 = v16;
  v146 = (&v141 - v28);
  v147 = a10;
  v160 = a9;
  v145 = a11;
  v168 = MEMORY[0x277D84F90];
  v43 = a1 + 64;
  v44 = 1 << a1[32];
  v45 = -1;
  if (v44 < 64)
  {
    v45 = ~(-1 << v44);
  }

  v29 = v45 & *(a1 + 8);
  sub_22F015CE4(a1, 0);
  sub_22F0CFF1C();
  v46 = 0;
  a3 = &selRef_encodeObject_forKey_;
  if (v29)
  {
    goto LABEL_11;
  }

  while (1)
  {
LABEL_12:
    v47 = v46 + 1;
    if (__OFADD__(v46, 1))
    {
      __break(1u);
LABEL_75:
      __break(1u);
LABEL_76:
      __break(1u);
LABEL_77:
      __break(1u);
      goto LABEL_78;
    }

    if (v47 >= ((v44 + 63) >> 6))
    {
      break;
    }

    v29 = *&v43[8 * v47];
    ++v46;
    if (v29)
    {
      while (1)
      {
        v48 = __clz(__rbit64(v29));
        v29 &= v29 - 1;
        v49 = *(*(a1 + 7) + ((v47 << 9) | (8 * v48)));
        if ([v49 isParent])
        {
          sub_22F0D15EC();
          v50 = v168[2];
          sub_22F0D162C();
          sub_22F0D163C();
          sub_22F0D15FC();
          v46 = v47;
          if (!v29)
          {
            goto LABEL_12;
          }
        }

        else
        {

          v46 = v47;
          if (!v29)
          {
            goto LABEL_12;
          }
        }

LABEL_11:
        v47 = v46;
      }
    }
  }

  sub_22F0D00CC();
  v51 = v168;
  v52 = v158;
  swift_beginAccess();
  v53 = *(v52 + 16);
  *(v52 + 16) = v51;

  v54 = 1 << a1[32];
  v55 = -1;
  if (v54 < 64)
  {
    v55 = ~(-1 << v54);
  }

  a3 = v55 & *(a1 + 8);
  sub_22F015CE4(a1, 0);
  v29 = 0;
  v56 = (v54 + 63) >> 6;
  v57 = v153;
  while (2)
  {
    if (!a3)
    {
      while (1)
      {
        v58 = v29 + 1;
        if (__OFADD__(v29, 1))
        {
          goto LABEL_75;
        }

        if (v58 >= v56)
        {
          sub_22F0D00CC();
          v166 = 0;
          v167 = 0xE000000000000000;
          sub_22F0D152C();

          v166 = 0xD000000000000022;
          v167 = 0x800000022F0DFDB0;
          v164 = v57;
          v66 = sub_22F0D183C();
          MEMORY[0x2318FD2C0](v66);

          v68 = v166;
          v67 = v167;
          if (qword_27DAA05E0 != -1)
          {
            swift_once();
          }

          v69 = _s6People0A6ErrorsO11createError_4codeSo7NSErrorCSS_SitFZ_0(v68, v67, [qword_27DAACF00 code]);

          v70 = v148;
          swift_beginAccess();
          v71 = *(v70 + 16);
          *(v70 + 16) = v69;

          v65 = v157;
          if (qword_280CBEC38 != -1)
          {
            swift_once();
          }

          v72 = sub_22F0D0A1C();
          __swift_project_value_buffer(v72, qword_280CBEC40);
          sub_22F0CFFAC();
          v73 = sub_22F0D09FC();
          v74 = sub_22F0D123C();
          if (!os_log_type_enabled(v73, v74))
          {
            sub_22F0D00CC();

            if (v147)
            {
              goto LABEL_55;
            }

            goto LABEL_41;
          }

          v141 = a1;
          v75 = swift_slowAlloc();
          v76 = swift_slowAlloc();
          v164 = v76;
          *v75 = 136315138;
          swift_beginAccess();
          if (!*(v70 + 16))
          {
            sub_22F0D00CC();
            __break(1u);
            goto LABEL_81;
          }

          ErrorValue = swift_getErrorValue();
          v153 = &v141;
          v78 = v161;
          v79 = *(v161 - 8);
          v80 = *(v79 + 64);
          MEMORY[0x28223BE20](ErrorValue);
          v82 = &v141 - ((v81 + 15) & 0xFFFFFFFFFFFFFFF0);
          (*(v79 + 16))(v82);
          sub_22F0D00CC();
          v83 = sub_22F0D192C();
          v85 = v84;
          (*(v79 + 8))(v82, v78);
          v86 = sub_22F00A560(v83, v85, &v164);

          *(v75 + 4) = v86;
          _os_log_impl(&dword_22EFE1000, v73, v74, "%s", v75, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v76);
          MEMORY[0x2318FE8B0](v76, -1, -1);
          MEMORY[0x2318FE8B0](v75, -1, -1);

          v65 = v157;
          a1 = v141;
          if ((v147 & 1) == 0)
          {
            goto LABEL_41;
          }

          goto LABEL_55;
        }

        a3 = *&v43[8 * v58];
        ++v29;
        if (a3)
        {
          v29 = v58;
          break;
        }
      }
    }

    v59 = *(*(a1 + 7) + ((v29 << 9) | (8 * __clz(__rbit64(a3)))));
    v60 = [v59 dsid];
    if (!v60)
    {
      if (!v57)
      {
        break;
      }

      goto LABEL_22;
    }

    v61 = v60;
    v62 = [v60 integerValue];

    if (v62 != v57)
    {
LABEL_22:
      a3 &= a3 - 1;

      continue;
    }

    break;
  }

  sub_22F0D00CC();
  v63 = v155;
  swift_beginAccess();
  v64 = *(v63 + 16);
  *(v63 + 16) = v59;

  v65 = v157;
  if (v147)
  {
LABEL_55:
    sub_22F015BE4(a1, 0);
    goto LABEL_65;
  }

LABEL_41:
  if (!v160)
  {
    goto LABEL_55;
  }

  v87 = v158;
  swift_beginAccess();
  v88 = *(v87 + 16);
  v141 = a1;
  if (v88 >> 62)
  {
    v89 = sub_22F0D143C();
  }

  else
  {
    v89 = *((v88 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  sub_22F0CFF1C();
  if (v89)
  {
    v90 = 0;
    v29 = v88 & 0xC000000000000001;
    a3 = v88 & 0xFFFFFFFFFFFFFF8;
    do
    {
      if (v29)
      {
        v91 = MEMORY[0x2318FDAB0](v90, v88);
      }

      else
      {
        if (v90 >= *((v88 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_77;
        }

        v91 = *(v88 + 8 * v90 + 32);
      }

      v92 = v91;
      a1 = (v90 + 1);
      if (__OFADD__(v90, 1))
      {
        goto LABEL_76;
      }

      v93 = [v91 dsid];
      if (v93)
      {
        v94 = v93;
        v95 = [v93 integerValue];

        if (v95 == v160)
        {

          sub_22F015BE4(v141, 0);
          v120 = v145;
          swift_beginAccess();
          v121 = *(v120 + 16);
          *(v120 + 16) = v92;

          goto LABEL_64;
        }
      }

      ++v90;
    }

    while (a1 != v89);
  }

  v164 = 0;
  v165 = 0xE000000000000000;
  sub_22F0D152C();

  v164 = 0xD00000000000002CLL;
  v165 = 0x800000022F0DFD80;
  v163 = v160;
  v96 = sub_22F0D183C();
  MEMORY[0x2318FD2C0](v96);

  v98 = v164;
  v97 = v165;
  if (qword_27DAA05E0 != -1)
  {
    swift_once();
  }

  v99 = _s6People0A6ErrorsO11createError_4codeSo7NSErrorCSS_SitFZ_0(v98, v97, [qword_27DAACF00 code]);

  v100 = v148;
  swift_beginAccess();
  v101 = *(v100 + 16);
  *(v100 + 16) = v99;

  v102 = v157;
  v103 = v141;
  v104 = v154;
  if (qword_280CBEC38 != -1)
  {
    swift_once();
  }

  v105 = sub_22F0D0A1C();
  __swift_project_value_buffer(v105, qword_280CBEC40);
  sub_22F0CFFAC();
  v106 = sub_22F0D09FC();
  v107 = sub_22F0D123C();
  if (os_log_type_enabled(v106, v107))
  {
    v108 = swift_slowAlloc();
    v109 = swift_slowAlloc();
    v164 = v109;
    *v108 = 136315138;
    swift_beginAccess();
    if (!*(v100 + 16))
    {
LABEL_81:
      result = sub_22F0D00CC();
      __break(1u);
      return result;
    }

    v110 = swift_getErrorValue();
    v160 = &v141;
    v111 = v162;
    v112 = *(v162 - 8);
    v113 = *(v112 + 64);
    MEMORY[0x28223BE20](v110);
    v115 = &v141 - ((v114 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v112 + 16))(v115);
    sub_22F0D00CC();
    v116 = sub_22F0D192C();
    v118 = v117;
    (*(v112 + 8))(v115, v111);
    v119 = sub_22F00A560(v116, v118, &v164);

    *(v108 + 4) = v119;
    _os_log_impl(&dword_22EFE1000, v106, v107, "%s", v108, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v109);
    MEMORY[0x2318FE8B0](v109, -1, -1);
    MEMORY[0x2318FE8B0](v108, -1, -1);
    sub_22F015BE4(v141, 0);

LABEL_64:
    v65 = v157;
LABEL_65:
    v104 = v154;
  }

  else
  {
    sub_22F015BE4(v103, 0);
    sub_22F0D00CC();

    v65 = v102;
  }

  v122 = v155;
  swift_beginAccess();
  v123 = *(v122 + 16);
  if (v123)
  {
    v124 = v145;
    swift_beginAccess();
    v125 = *(v124 + 16);
    v126 = v158;
    swift_beginAccess();
    v127 = *(v126 + 16);
    v128 = *(v149 + 28);
    v129 = v125;
    sub_22F0CFF1C();
    v130 = v123;
    sub_22F0D05AC();
    v131 = v104;
    if (qword_27DAA0618 != -1)
    {
      swift_once();
    }

    v132 = v144;
    __swift_project_value_buffer(v144, qword_27DAA2168);
    v133 = [objc_opt_self() seconds];
    v134 = v150;
    sub_22F0D019C();

    sub_22F0D018C();
    (*(v143 + 8))(v134, v132);
    v135 = v152;
    sub_22F0D054C();
    (*(v151 + 8))(v131, v142);
    *v135 = v130;
    v135[1] = v125;
    v135[2] = v127;
    v136 = v146;
    sub_22F01DEA8(v135, v146);
    swift_storeEnumTagMultiPayload();
    v157(v136);
    sub_22F003A4C(v136, &qword_27DAA1760, &unk_22F0D77D8);
    return sub_22F050788(v135);
  }

  if (qword_27DAA05D0 != -1)
  {
    swift_once();
  }

  v138 = qword_27DAACEF0;
  v139 = v146;
  *v146 = qword_27DAACEF0;
  swift_storeEnumTagMultiPayload();
  v140 = v138;
  v65(v139);
  v42 = v139;
  return sub_22F003A4C(v42, &qword_27DAA1760, &unk_22F0D77D8);
}

unint64_t sub_22F0B52AC()
{
  v1 = 0x7265766F72707061;
  if (*v0 == 1)
  {
    v1 = 0xD000000000000012;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000016;
  }
}

uint64_t sub_22F0B5318@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22F0B7760(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22F0B5340(uint64_t a1)
{
  v2 = sub_22F0B7358();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22F0B537C(uint64_t a1)
{
  v2 = sub_22F0B7358();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ResolvedFamily.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v86 = a1;
  v79 = a2;
  v90 = *MEMORY[0x277D85DE8];
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA2368, &qword_22F0DB8E8);
  v80 = *(v2 - 8);
  v81 = v2;
  v3 = *(v80 + 64);
  MEMORY[0x28223BE20](v2);
  v85 = &v70 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAA1170, &unk_22F0D5A60);
  v83 = *(v5 - 8);
  v6 = *(v83 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v70 - v7;
  v9 = sub_22F0D05BC();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v70 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ResolvedFamily();
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v14 - 8);
  v18 = &v70 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(v16 + 36);
  sub_22F0D05AC();
  if (qword_27DAA0618 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v5, qword_27DAA2168);
  v20 = [objc_opt_self() seconds];
  sub_22F0D019C();

  sub_22F0D018C();
  (*(v83 + 8))(v8, v5);
  v82 = v19;
  sub_22F0D054C();
  v23 = *(v10 + 8);
  v22 = v10 + 8;
  v21 = v23;
  v83 = v9;
  v23(v13, v9);
  v24 = v86;
  v25 = v86[4];
  __swift_project_boxed_opaque_existential_1(v86, v86[3]);
  sub_22F0B7358();
  v26 = v84;
  sub_22F0D19EC();
  if (v26)
  {
    goto LABEL_5;
  }

  v78 = v22;
  v84 = v18;
  LOBYTE(v87) = 0;
  sub_22F0B73AC();
  v27 = v81;
  sub_22F0D17BC();
  v32 = v88;
  v31 = v89;
  v33 = objc_opt_self();
  v34 = sub_22F0D046C();
  v88 = 0;
  v76 = v33;
  v35 = [v33 JSONObjectWithData:v34 options:0 error:&v88];

  if (!v35)
  {
    v38 = v88;
    sub_22F0D033C();

    swift_willThrow();
    sub_22F00AB5C(v32, v31);
    (*(v80 + 8))(v85, v27);
    v18 = v84;
    v24 = v86;
LABEL_5:
    __swift_destroy_boxed_opaque_existential_1Tm(v24);
    v28 = v83;
    goto LABEL_6;
  }

  v75 = v32;
  v36 = v88;
  sub_22F0D13CC();
  swift_unknownObjectRelease();
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA0D78, &qword_22F0D4F60);
  v37 = swift_dynamicCast();
  v77 = v31;
  if (!v37)
  {
    sub_22F07DE84(MEMORY[0x277D84F90]);
  }

  v39 = objc_allocWithZone(MEMORY[0x277D08268]);
  v40 = sub_22F0D0AEC();

  v41 = [v39 initWithDictionaryRepresentation_];

  *v84 = v41;
  LOBYTE(v87) = 1;
  sub_22F0D17BC();
  v73 = v41;
  v42 = v88;
  v43 = v89;
  v44 = sub_22F0D046C();
  v88 = 0;
  v45 = [v76 JSONObjectWithData:v44 options:0 error:&v88];

  v46 = v77;
  if (v45)
  {
    v71 = v42;
    v72 = v43;
    v47 = v88;
    sub_22F0D13CC();
    swift_unknownObjectRelease();
    if (!swift_dynamicCast())
    {
      sub_22F07DE84(MEMORY[0x277D84F90]);
    }

    v50 = objc_allocWithZone(MEMORY[0x277D08268]);
    v51 = sub_22F0D0AEC();

    v52 = [v50 initWithDictionaryRepresentation_];

    v84[1] = v52;
    LOBYTE(v87) = 2;
    sub_22F0D17BC();
    v53 = v89;
    v74 = v88;
    v54 = sub_22F0D046C();
    v88 = 0;
    v55 = [v76 JSONObjectWithData:v54 options:0 error:&v88];

    v56 = v77;
    v57 = v72;
    if (v55)
    {
      v83 = v53;
      v58 = v88;
      sub_22F0D13CC();
      swift_unknownObjectRelease();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA2380, &qword_22F0DB8F0);
      v59 = swift_dynamicCast();
      v60 = v84;
      if (v59)
      {
        v61 = v87;
        v62 = *(v87 + 16);
        if (v62)
        {
          v88 = MEMORY[0x277D84F90];
          sub_22F0D161C();
          v63 = 32;
          do
          {
            v64 = *(v61 + v63);
            v65 = objc_allocWithZone(MEMORY[0x277D08268]);
            sub_22F0CFF1C();
            v66 = sub_22F0D0AEC();

            [v65 initWithDictionaryRepresentation_];

            sub_22F0D15EC();
            v67 = *(v88 + 2);
            sub_22F0D162C();
            sub_22F0D163C();
            sub_22F0D15FC();
            v63 += 8;
            --v62;
          }

          while (v62);

          sub_22F00AB5C(v75, v77);
          sub_22F00AB5C(v71, v72);
          sub_22F00AB5C(v74, v83);
          v68 = v88;
          v60 = v84;
          v27 = v81;
          goto LABEL_29;
        }
      }

      sub_22F00AB5C(v75, v56);
      sub_22F00AB5C(v71, v57);
      sub_22F00AB5C(v74, v83);
      v68 = MEMORY[0x277D84F90];
LABEL_29:
      (*(v80 + 8))(v85, v27);
      *(v60 + 16) = v68;
      sub_22F01DEA8(v60, v79);
      __swift_destroy_boxed_opaque_existential_1Tm(v86);
      result = sub_22F050788(v60);
      goto LABEL_7;
    }

    v69 = v88;
    sub_22F0D033C();

    swift_willThrow();
    sub_22F00AB5C(v75, v56);
    sub_22F00AB5C(v71, v57);
    sub_22F00AB5C(v74, v53);
    (*(v80 + 8))(v85, v27);
    v18 = v84;
    __swift_destroy_boxed_opaque_existential_1Tm(v86);
  }

  else
  {
    v48 = v88;
    sub_22F0D033C();

    swift_willThrow();
    sub_22F00AB5C(v75, v46);
    sub_22F00AB5C(v42, v43);
    (*(v80 + 8))(v85, v27);
    v49 = v73;
    __swift_destroy_boxed_opaque_existential_1Tm(v86);

    v18 = v84;
  }

  v28 = v83;
LABEL_6:
  result = v21(&v18[v82], v28);
LABEL_7:
  v30 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t ResolvedFamily.encode(to:)(void *a1)
{
  v3 = v1;
  v69 = *MEMORY[0x277D85DE8];
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA2388, &qword_22F0DB8F8);
  v5 = *(v65 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v65);
  v8 = v61 - v7;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22F0B7358();
  sub_22F0D19FC();
  v10 = &selRef_encodeObject_forKey_;
  v11 = [*v1 dictionary];
  if (v11)
  {
    v12 = v11;
    sub_22F0D0AFC();
  }

  else
  {
    sub_22F07DE84(MEMORY[0x277D84F90]);
  }

  v13 = objc_opt_self();
  v14 = sub_22F0D0AEC();

  v67 = 0;
  v64 = v13;
  v15 = [v13 dataWithJSONObject:v14 options:0 error:&v67];

  v16 = v67;
  if (!v15)
  {
    goto LABEL_13;
  }

  v17 = sub_22F0D049C();
  v19 = v18;

  v67 = v17;
  v68 = v19;
  v66 = 0;
  v20 = sub_22F0B7400();
  v21 = v65;
  sub_22F0D180C();
  if (v2)
  {
    sub_22F00AB5C(v67, v68);
    result = (*(v5 + 8))(v8, v21);
    goto LABEL_14;
  }

  v63 = v20;
  sub_22F00AB5C(v67, v68);
  v23 = v3[1];
  if (v23 && (v24 = [v23 dictionary]) != 0)
  {
    v25 = v24;
    sub_22F0D0AFC();
  }

  else
  {
    sub_22F07DE84(MEMORY[0x277D84F90]);
  }

  v26 = sub_22F0D0AEC();

  v67 = 0;
  v27 = [v64 dataWithJSONObject:v26 options:0 error:&v67];

  v16 = v67;
  if (!v27)
  {
LABEL_13:
    v31 = v16;
    sub_22F0D033C();

    swift_willThrow();
    result = (*(v5 + 8))(v8, v65);
    goto LABEL_14;
  }

  v28 = sub_22F0D049C();
  v30 = v29;

  v67 = v28;
  v68 = v30;
  v66 = 1;
  sub_22F0D180C();
  sub_22F00AB5C(v67, v68);
  v62 = v5;
  v33 = v3[2];
  if (v33 >> 62)
  {
    if (v33 < 0)
    {
      v58 = v3[2];
    }

    v59 = v3[2];
    v60 = sub_22F0D143C();
    v33 = v59;
    v34 = v60;
  }

  else
  {
    v34 = *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v61[1] = 0;
  if (v34)
  {
    v61[0] = v8;
    v35 = v33;
    v67 = MEMORY[0x277D84F90];
    sub_22EFFC830(0, v34 & ~(v34 >> 63), 0);
    if (v34 < 0)
    {
      __break(1u);
    }

    v36 = 0;
    v37 = v67;
    v38 = v35;
    v39 = v35 & 0xC000000000000001;
    v40 = v35;
    do
    {
      if (v39)
      {
        v41 = MEMORY[0x2318FDAB0](v36, v38);
      }

      else
      {
        v41 = *(v38 + 8 * v36 + 32);
      }

      v42 = v41;
      v43 = v10;
      v44 = [v41 v10[71]];
      if (v44)
      {
        v45 = v44;
        v46 = sub_22F0D0AFC();

        v42 = v45;
      }

      else
      {
        v46 = MEMORY[0x277D84F98];
      }

      v67 = v37;
      v48 = v37[2];
      v47 = v37[3];
      if (v48 >= v47 >> 1)
      {
        sub_22EFFC830((v47 > 1), v48 + 1, 1);
        v37 = v67;
      }

      ++v36;
      v37[2] = v48 + 1;
      v37[v48 + 4] = v46;
      v10 = v43;
      v38 = v40;
    }

    while (v34 != v36);
    v49 = v65;
    v8 = v61[0];
  }

  else
  {
    v49 = v65;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA0D78, &qword_22F0D4F60);
  v50 = sub_22F0D0F2C();

  v67 = 0;
  v51 = [v64 dataWithJSONObject:v50 options:0 error:&v67];

  v52 = v67;
  v53 = v62;
  if (v51)
  {
    v54 = sub_22F0D049C();
    v56 = v55;

    v67 = v54;
    v68 = v56;
    v66 = 2;
    sub_22F0D180C();
    sub_22F00AB5C(v67, v68);
  }

  else
  {
    v57 = v52;
    sub_22F0D033C();

    swift_willThrow();
  }

  result = (*(v53 + 8))(v8, v49);
LABEL_14:
  v32 = *MEMORY[0x277D85DE8];
  return result;
}

void *FAFamilyCircle.requestingFamilyMember.getter()
{
  v1 = [v0 members];
  sub_22F0034D8();
  v2 = sub_22F0D0F4C();

  if (v2 >> 62)
  {
    goto LABEL_15;
  }

  for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_22F0D143C())
  {
    v4 = 0;
    while (1)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v5 = MEMORY[0x2318FDAB0](v4, v2);
      }

      else
      {
        if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_14;
        }

        v5 = *(v2 + 8 * v4 + 32);
      }

      v6 = v5;
      v7 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      if ([v5 isMe])
      {

        return v6;
      }

      ++v4;
      if (v7 == i)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    ;
  }

LABEL_16:

  if (qword_280CBEC38 != -1)
  {
    swift_once();
  }

  v8 = sub_22F0D0A1C();
  __swift_project_value_buffer(v8, qword_280CBEC40);
  v9 = sub_22F0D09FC();
  v10 = sub_22F0D122C();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_22EFE1000, v9, v10, "Impossible, can't find me!", v11, 2u);
    MEMORY[0x2318FE8B0](v11, -1, -1);
  }

  return 0;
}

uint64_t FAFamilyCircle.approvers.getter()
{
  v1 = [v0 members];
  sub_22F0034D8();
  v2 = sub_22F0D0F4C();

  v15 = MEMORY[0x277D84F90];
  if (v2 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_22F0D143C())
  {
    v4 = 0;
    while (1)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v5 = MEMORY[0x2318FDAB0](v4, v2);
      }

      else
      {
        if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_15;
        }

        v5 = *(v2 + 8 * v4 + 32);
      }

      v6 = v5;
      v7 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      if ([v5 isParent])
      {
        sub_22F0D15EC();
        v8 = *(v15 + 16);
        sub_22F0D162C();
        sub_22F0D163C();
        sub_22F0D15FC();
      }

      else
      {
      }

      ++v4;
      if (v7 == i)
      {
        v9 = v15;
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    ;
  }

  v9 = MEMORY[0x277D84F90];
LABEL_18:

  if (v9 < 0 || (v9 & 0x4000000000000000) != 0)
  {
    if (sub_22F0D143C())
    {
      return v9;
    }
  }

  else if (*(v9 + 16))
  {
    return v9;
  }

  sub_22F0D00CC();
  if (qword_280CBEC38 != -1)
  {
    swift_once();
  }

  v10 = sub_22F0D0A1C();
  __swift_project_value_buffer(v10, qword_280CBEC40);
  v11 = sub_22F0D09FC();
  v12 = sub_22F0D123C();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_22EFE1000, v11, v12, "Found no approvers in family (this should be impossible)", v13, 2u);
    MEMORY[0x2318FE8B0](v13, -1, -1);
  }

  return 0;
}

uint64_t sub_22F0B68F0(uint64_t a1, id a2, uint64_t (*a3)(uint64_t, id))
{
  if (a2)
  {
    v5 = a1;
    v6 = a2;
    if (qword_280CBEC38 != -1)
    {
      swift_once();
    }

    v7 = sub_22F0D0A1C();
    __swift_project_value_buffer(v7, qword_280CBEC40);
    v8 = a2;
    v9 = sub_22F0D09FC();
    v10 = sub_22F0D123C();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      *v11 = 138412290;
      v13 = a2;
      v14 = _swift_stdlib_bridgeErrorToNSError();
      *(v11 + 4) = v14;
      *v12 = v14;
      _os_log_impl(&dword_22EFE1000, v9, v10, "Error while fetching FamilyCircle: %@", v11, 0xCu);
      sub_22F003A4C(v12, &qword_27DAA1260, &qword_22F0D5F48);
      MEMORY[0x2318FE8B0](v12, -1, -1);
      MEMORY[0x2318FE8B0](v11, -1, -1);
    }

    else
    {
    }

    a1 = v5;
  }

  return a3(a1, a2);
}

uint64_t static FAFamilyCircle.fetch()()
{
  v1 = *(MEMORY[0x277D85A40] + 4);
  v2 = swift_task_alloc();
  *(v0 + 24) = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA2398, &qword_22F0DB908);
  *v2 = v0;
  v2[1] = sub_22F0B6B6C;

  return MEMORY[0x2822008A0](v0 + 16, 0, 0, 0x29286863746566, 0xE700000000000000, sub_22F0B6DEC, 0, v3);
}

uint64_t sub_22F0B6B6C()
{
  v2 = *(*v1 + 24);
  v5 = *v1;
  *(*v1 + 32) = v0;

  if (v0)
  {
    v3 = sub_22F0B6C80;
  }

  else
  {
    v3 = sub_22F054604;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_22F0B6C98(void *a1, id a2)
{
  if (a1)
  {
    v2 = a1;
LABEL_3:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA23E0, &qword_22F0DBB18);
    return sub_22F0D108C();
  }

  if (!a2)
  {
    if (qword_280CBEC38 != -1)
    {
      swift_once();
    }

    v5 = sub_22F0D0A1C();
    __swift_project_value_buffer(v5, qword_280CBEC40);
    v6 = sub_22F0D09FC();
    v7 = sub_22F0D123C();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_22EFE1000, v6, v7, "Both error and FamilyCircle were nil. This probably shouldn't ever happen!", v8, 2u);
      MEMORY[0x2318FE8B0](v8, -1, -1);
    }

    goto LABEL_3;
  }

  v4 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA23E0, &qword_22F0DBB18);
  return sub_22F0D107C();
}

void sub_22F0B6DEC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA23E0, &qword_22F0DBB18);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = aBlock - v5;
  (*(v3 + 16))(aBlock - v5, a1, v2);
  v7 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v8 = swift_allocObject();
  (*(v3 + 32))(v8 + v7, v6, v2);
  v9 = [objc_allocWithZone(MEMORY[0x277D08280]) init];
  v10 = swift_allocObject();
  *(v10 + 16) = sub_22F0B7890;
  *(v10 + 24) = v8;
  aBlock[4] = sub_22F0B791C;
  aBlock[5] = v10;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22F0B16C0;
  aBlock[3] = &block_descriptor_12;
  v11 = _Block_copy(aBlock);
  sub_22F0CFFAC();
  sub_22F0D00CC();
  [v9 startRequestWithCompletionHandler_];
  _Block_release(v11);
  sub_22F0D00CC();
}

uint64_t sub_22F0B6FEC(uint64_t result, unint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  v3 = result;
  v4 = HIBYTE(a2) & 0xF;
  v5 = result & 0xFFFFFFFFFFFFLL;
  if (!((a2 & 0x2000000000000000) != 0 ? v4 : result & 0xFFFFFFFFFFFFLL))
  {
    return 0;
  }

  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v31[0] = result;
      v31[1] = a2 & 0xFFFFFFFFFFFFFFLL;
      if (result == 43)
      {
        if (v4)
        {
          if (--v4)
          {
            v8 = 0;
            v18 = v31 + 1;
            while (1)
            {
              v19 = *v18 - 48;
              if (v19 > 9)
              {
                break;
              }

              v20 = 10 * v8;
              if ((v8 * 10) >> 64 != (10 * v8) >> 63)
              {
                break;
              }

              v8 = v20 + v19;
              if (__OFADD__(v20, v19))
              {
                break;
              }

              ++v18;
              if (!--v4)
              {
                goto LABEL_63;
              }
            }
          }

          goto LABEL_62;
        }

LABEL_78:
        __break(1u);
        return result;
      }

      if (result != 45)
      {
        if (v4)
        {
          v8 = 0;
          v23 = v31;
          while (1)
          {
            v24 = *v23 - 48;
            if (v24 > 9)
            {
              break;
            }

            v25 = 10 * v8;
            if ((v8 * 10) >> 64 != (10 * v8) >> 63)
            {
              break;
            }

            v8 = v25 + v24;
            if (__OFADD__(v25, v24))
            {
              break;
            }

            ++v23;
            if (!--v4)
            {
              goto LABEL_63;
            }
          }
        }

        goto LABEL_62;
      }

      if (v4)
      {
        if (--v4)
        {
          v8 = 0;
          v12 = v31 + 1;
          while (1)
          {
            v13 = *v12 - 48;
            if (v13 > 9)
            {
              break;
            }

            v14 = 10 * v8;
            if ((v8 * 10) >> 64 != (10 * v8) >> 63)
            {
              break;
            }

            v8 = v14 - v13;
            if (__OFSUB__(v14, v13))
            {
              break;
            }

            ++v12;
            if (!--v4)
            {
              goto LABEL_63;
            }
          }
        }

        goto LABEL_62;
      }
    }

    else
    {
      if ((result & 0x1000000000000000) != 0)
      {
        result = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
      }

      else
      {
        result = sub_22F0D15DC();
      }

      v7 = *result;
      if (v7 == 43)
      {
        if (v5 >= 1)
        {
          v4 = v5 - 1;
          if (v5 != 1)
          {
            v8 = 0;
            if (result)
            {
              v15 = (result + 1);
              while (1)
              {
                v16 = *v15 - 48;
                if (v16 > 9)
                {
                  goto LABEL_62;
                }

                v17 = 10 * v8;
                if ((v8 * 10) >> 64 != (10 * v8) >> 63)
                {
                  goto LABEL_62;
                }

                v8 = v17 + v16;
                if (__OFADD__(v17, v16))
                {
                  goto LABEL_62;
                }

                ++v15;
                if (!--v4)
                {
                  goto LABEL_63;
                }
              }
            }

            goto LABEL_54;
          }

          goto LABEL_62;
        }

        goto LABEL_77;
      }

      if (v7 != 45)
      {
        if (v5)
        {
          v8 = 0;
          if (result)
          {
            while (1)
            {
              v21 = *result - 48;
              if (v21 > 9)
              {
                goto LABEL_62;
              }

              v22 = 10 * v8;
              if ((v8 * 10) >> 64 != (10 * v8) >> 63)
              {
                goto LABEL_62;
              }

              v8 = v22 + v21;
              if (__OFADD__(v22, v21))
              {
                goto LABEL_62;
              }

              ++result;
              if (!--v5)
              {
                goto LABEL_54;
              }
            }
          }

          goto LABEL_54;
        }

LABEL_62:
        v8 = 0;
        LOBYTE(v4) = 1;
LABEL_63:
        v32 = v4;
        if ((v4 & 1) == 0)
        {
          goto LABEL_64;
        }

        return 0;
      }

      if (v5 >= 1)
      {
        v4 = v5 - 1;
        if (v5 != 1)
        {
          v8 = 0;
          if (result)
          {
            v9 = (result + 1);
            while (1)
            {
              v10 = *v9 - 48;
              if (v10 > 9)
              {
                goto LABEL_62;
              }

              v11 = 10 * v8;
              if ((v8 * 10) >> 64 != (10 * v8) >> 63)
              {
                goto LABEL_62;
              }

              v8 = v11 - v10;
              if (__OFSUB__(v11, v10))
              {
                goto LABEL_62;
              }

              ++v9;
              if (!--v4)
              {
                goto LABEL_63;
              }
            }
          }

LABEL_54:
          LOBYTE(v4) = 0;
          goto LABEL_63;
        }

        goto LABEL_62;
      }

      __break(1u);
    }

    __break(1u);
LABEL_77:
    __break(1u);
    goto LABEL_78;
  }

  sub_22F0CFF1C();
  v8 = sub_22F0BE920(v3, a2, 10);
  v30 = v29;

  if (v30)
  {
    return 0;
  }

LABEL_64:
  v31[0] = v8;
  if (sub_22F0D183C() == v3 && v26 == a2)
  {

    return v8;
  }

  v28 = sub_22F0D188C();

  result = v8;
  if ((v28 & 1) == 0)
  {
    return 0;
  }

  return result;
}

unint64_t sub_22F0B7358()
{
  result = qword_27DAA2370;
  if (!qword_27DAA2370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAA2370);
  }

  return result;
}

unint64_t sub_22F0B73AC()
{
  result = qword_27DAA2378;
  if (!qword_27DAA2378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAA2378);
  }

  return result;
}

unint64_t sub_22F0B7400()
{
  result = qword_27DAA2390;
  if (!qword_27DAA2390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAA2390);
  }

  return result;
}

void sub_22F0B74A0()
{
  sub_22F0034D8();
  if (v0 <= 0x3F)
  {
    sub_22F0B758C(319, &qword_27DAA23B0, MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_22F0B758C(319, &qword_27DAA23B8, MEMORY[0x277D83940]);
      if (v2 <= 0x3F)
      {
        sub_22F0D05BC();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_22F0B758C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_22F0034D8();
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_22F0B7600()
{
  result = qword_27DAA23C0;
  if (!qword_27DAA23C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAA23C0);
  }

  return result;
}

unint64_t sub_22F0B7658()
{
  result = qword_27DAA23C8;
  if (!qword_27DAA23C8)
  {
    type metadata accessor for FamilyCache();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAA23C8);
  }

  return result;
}

unint64_t sub_22F0B76B4()
{
  result = qword_27DAA23D0;
  if (!qword_27DAA23D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAA23D0);
  }

  return result;
}

unint64_t sub_22F0B770C()
{
  result = qword_27DAA23D8;
  if (!qword_27DAA23D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAA23D8);
  }

  return result;
}

uint64_t sub_22F0B7760(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000016 && 0x800000022F0DFD60 == a2;
  if (v3 || (sub_22F0D188C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000012 && 0x800000022F0DD450 == a2 || (sub_22F0D188C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7265766F72707061 && a2 == 0xE900000000000073)
  {

    return 2;
  }

  else
  {
    v6 = sub_22F0D188C();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_22F0B7890(void *a1, void *a2)
{
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA23E0, &qword_22F0DBB18) - 8) + 80);

  return sub_22F0B6C98(a1, a2);
}

uint64_t block_copy_helper_12(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_22F0CFFAC();
}

uint64_t objectdestroy_28Tm(uint64_t *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 16) & ~v5;
  v7 = *(v4 + 64);
  (*(v4 + 8))(v2 + v6, v3);

  return MEMORY[0x2821FE8E8](v2, v6 + v7, v5 | 7);
}

uint64_t sub_22F0B79C0(uint64_t a1)
{
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA23E8, qword_22F0DBB20) - 8) + 80);

  return sub_22F0B41D4(a1);
}

uint64_t sub_22F0B7A3C(uint64_t a1)
{
  v2 = -1 << *(a1 + 32);
  v3 = sub_22F0D13FC();
  if (v3 == 1 << *(a1 + 32))
  {
    return 0;
  }

  v5 = sub_22F0B9120(v3, *(a1 + 36), 0, a1);
  sub_22F0CFF1C();
  return v5;
}

void *static QuickActionStore.default.getter()
{
  result = [objc_opt_self() interactionAdvisor];
  if (result)
  {
    v1 = result;
    v12 = &off_2843D0F88;
    v11 = sub_22F0B7C28();
    v9[4] = &off_2843D14B8;
    *&v10 = v1;
    v9[3] = &type metadata for FindMyLocationSharingProvider;
    v9[0] = MEMORY[0x277D84FA0];
    type metadata accessor for QuickActionStore();
    v2 = swift_allocObject();
    v3 = __swift_mutable_project_boxed_opaque_existential_1(v9, &type metadata for FindMyLocationSharingProvider);
    v4 = *(qword_2843D1498 + 64);
    MEMORY[0x28223BE20](v3);
    v6 = (v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v7 + 16))(v6);
    v8 = *v6;
    v2[10] = &type metadata for FindMyLocationSharingProvider;
    v2[11] = &off_2843D14B8;
    v2[7] = v8;
    sub_22EFE6B9C(&v10, (v2 + 2));
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
    return v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_22F0B7C28()
{
  result = qword_280CBEC60;
  if (!qword_280CBEC60)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280CBEC60);
  }

  return result;
}

double sub_22F0B7C98@<D0>(id *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v5 = [*a1 handles];
  v6 = sub_22F0D0F4C();

  v7 = sub_22F058B88(v6);

  v8 = *__swift_project_boxed_opaque_existential_1((v2 + 56), *(v2 + 80));
  sub_22F0CFF1C();
  v9 = sub_22F0B8AF0(v7, v8);

  v10 = sub_22F0B7A3C(v9);
  v12 = v11;
  sub_22F0D00CC();
  if (v12)
  {
    v13 = [v4 identifier];
    v14 = sub_22F0D0CAC();
    v16 = v15;

    if (qword_27DAA0610 != -1)
    {
      swift_once();
    }

    v18 = byte_27DAA2160;
    *a2 = 4;
    *(a2 + 8) = v14;
    *(a2 + 16) = v16;
    *(a2 + 24) = 0;
    *(a2 + 32) = 0;
    *(a2 + 40) = v10;
    *(a2 + 48) = v12;
    *(a2 + 56) = 0;
    *(a2 + 64) = 0;
    *(a2 + 72) = 0;
    *(a2 + 73) = v18;
  }

  else
  {
    result = 0.0;
    *(a2 + 58) = 0u;
    *(a2 + 32) = 0u;
    *(a2 + 48) = 0u;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  return result;
}

uint64_t sub_22F0B7DF4@<X0>(char *a1@<X0>, id *a2@<X1>, char a3@<W2>, _OWORD *a4@<X8>)
{
  v5 = v4;
  v9 = *a1;
  if (qword_280CBEC38 != -1)
  {
    swift_once();
  }

  v10 = sub_22F0D0A1C();
  __swift_project_value_buffer(v10, qword_280CBEC40);
  sub_22F0B9174(a2, v44);
  v11 = sub_22F0D09FC();
  v12 = sub_22F0D124C();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v42 = v9;
    v41 = swift_slowAlloc();
    v43[0] = v41;
    *v13 = 136315394;
    *(v13 + 4) = sub_22F00A560(0xD000000000000026, 0x800000022F0DFE30, v43);
    *(v13 + 12) = 2080;
    v14 = [v44[0] identifier];
    v15 = sub_22F0D0CAC();
    v16 = a4;
    v17 = a2;
    v18 = v5;
    v19 = a3;
    v21 = v20;

    sub_22F0B91D0(v44);
    v22 = sub_22F00A560(v15, v21, v43);
    LOBYTE(v21) = v19;
    v5 = v18;
    a2 = v17;
    a4 = v16;

    *(v13 + 14) = v22;
    _os_log_impl(&dword_22EFE1000, v11, v12, "%s, person: %s", v13, 0x16u);
    swift_arrayDestroy();
    v9 = v42;
    MEMORY[0x2318FE8B0](v41, -1, -1);
    MEMORY[0x2318FE8B0](v13, -1, -1);

    if ((v21 & 1) == 0)
    {
LABEL_5:
      v23 = [*a2 handles];
      v24 = sub_22F0D0F4C();

      v25 = sub_22F058B88(v24);

      v26 = MEMORY[0x277D84FA0];
      goto LABEL_8;
    }
  }

  else
  {

    sub_22F0B91D0(v44);
    if ((a3 & 1) == 0)
    {
      goto LABEL_5;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA0DD0, &qword_22F0D4FA0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22F0D2BF0;
  v28 = [*a2 identifier];
  v29 = sub_22F0D0CAC();
  v31 = v30;

  *(inited + 32) = v29;
  *(inited + 40) = v31;
  v26 = sub_22F0A942C(inited);
  swift_setDeallocating();
  sub_22F022C14(inited + 32);
  v25 = MEMORY[0x277D84FA0];
LABEL_8:
  v32 = v5[5];
  v33 = v5[6];
  __swift_project_boxed_opaque_existential_1(v5 + 2, v32);
  v44[0] = 10;
  v44[1] = v26;
  *&v45 = v25;
  BYTE8(v45) = v9;
  v34 = *(v33 + 8);
  sub_22F0CFF1C();
  sub_22F0CFF1C();
  v35 = v34(v44, v32, v33);

  if (*(v35 + 16))
  {
    v36 = *(v35 + 48);
    v37 = *(v35 + 80);
    v46 = *(v35 + 64);
    v47[0] = v37;
    *(v47 + 10) = *(v35 + 90);
    *v44 = *(v35 + 32);
    v45 = v36;
    sub_22F0B1460(v44, v43);

    v38 = v47[0];
    a4[2] = v46;
    a4[3] = v38;
    *(a4 + 58) = *(v47 + 10);
    v39 = v45;
    *a4 = *v44;
    a4[1] = v39;
  }

  else
  {

    *(a4 + 58) = 0u;
    a4[2] = 0u;
    a4[3] = 0u;
    *a4 = 0u;
    a4[1] = 0u;
  }
}

double sub_22F0B81D0@<D0>(unsigned __int8 *a1@<X0>, id *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  if (v5 >= 4)
  {
  }

  else
  {
    v6 = sub_22F0D188C();

    if ((v6 & 1) == 0)
    {
      LOBYTE(v23) = v5;
      sub_22F0B7DF4(&v23, a2, 1, &v34);
      v44 = v34;
      v7 = v35;
      v40 = v36;
      v41 = v37;
      v42 = v38;
      v43 = v39;
      if (v35)
      {
        *a3 = v44;
        *(a3 + 16) = v7;
        v8 = v41;
        *(a3 + 24) = v40;
        *(a3 + 40) = v8;
        result = *&v42;
        *(a3 + 56) = v42;
        *(a3 + 72) = v43;
      }

      else
      {
        v22 = v5;
        sub_22F0B7DF4(&v22, a2, 0, &v23);
        v33 = v23;
        v10 = v24;
        v29 = v25;
        v30 = v26;
        v31 = v27;
        v32 = v28;
        if (v24)
        {
          *a3 = v33;
          *(a3 + 16) = v10;
          v11 = v30;
          *(a3 + 24) = v29;
          *(a3 + 40) = v11;
          result = *&v31;
          *(a3 + 56) = v31;
          *(a3 + 72) = v32;
        }

        else
        {
          v12 = [*a2 identifier];
          v13 = sub_22F0D0CAC();
          v15 = v14;

          if (v5 == 2)
          {
            v16 = *MEMORY[0x277D6EF88];
            v17 = sub_22F0D0CAC();
          }

          else
          {
            v17 = 0;
            v18 = 0;
          }

          if (qword_27DAA0610 != -1)
          {
            v20 = v17;
            v21 = v18;
            swift_once();
            v18 = v21;
            v17 = v20;
          }

          v19 = byte_27DAA2160;
          *a3 = v5;
          *(a3 + 8) = v13;
          *(a3 + 16) = v15;
          result = 0.0;
          *(a3 + 24) = 0u;
          *(a3 + 40) = 0u;
          *(a3 + 56) = v17;
          *(a3 + 64) = v18;
          *(a3 + 72) = 0;
          *(a3 + 73) = v19;
        }
      }

      return result;
    }
  }

  return sub_22F0B7C98(a2, a3);
}

uint64_t QuickActionStore.deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 56));
  return v0;
}

uint64_t QuickActionStore.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 56));

  return swift_deallocClassInstance();
}

uint64_t sub_22F0B853C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x277D84FA0];
LABEL_6:
    sub_22F0D00CC();
    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA18C8, &qword_22F0D82C0);
  result = sub_22F0D14EC();
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
    v16 = *(*(v4 + 48) + (v13 | (v11 << 6)));
    v17 = *(v9 + 40);
    sub_22F0D199C();
    sub_22F0D0D5C();

    result = sub_22F0D19CC();
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
    *(*(v9 + 48) + v21) = v16;
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

uint64_t sub_22F0B88CC(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x277D84FA0];
LABEL_6:
    sub_22F0D00CC();
    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAA1880, &unk_22F0D8280);
  result = sub_22F0D14EC();
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
  v30 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = (*(v4 + 48) + 16 * (v13 | (v11 << 6)));
    v17 = *v16;
    v18 = v16[1];
    v19 = *(v9 + 40);
    sub_22F0D199C();
    sub_22F0CFF1C();
    sub_22F0D0D5C();
    result = sub_22F0D19CC();
    v20 = -1 << *(v9 + 32);
    v21 = result & ~v20;
    v22 = v21 >> 6;
    if (((-1 << v21) & ~*(v12 + 8 * (v21 >> 6))) == 0)
    {
      v24 = 0;
      v25 = (63 - v20) >> 6;
      while (++v22 != v25 || (v24 & 1) == 0)
      {
        v26 = v22 == v25;
        if (v22 == v25)
        {
          v22 = 0;
        }

        v24 |= v26;
        v27 = *(v12 + 8 * v22);
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v23 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
    v28 = (*(v9 + 48) + 16 * v23);
    *v28 = v17;
    v28[1] = v18;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v30;
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

uint64_t sub_22F0B8AF0(uint64_t a1, uint64_t a2)
{
  v13[1] = *MEMORY[0x277D85DE8];
  v4 = *(a2 + 32);
  v5 = v4 & 0x3F;
  v6 = ((1 << v4) + 63) >> 6;
  v7 = 8 * v6;
  sub_22F0CFFAC();
  isStackAllocationSafe = sub_22F0CFFAC();
  if (v5 <= 0xD || (isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
  {
    MEMORY[0x28223BE20](isStackAllocationSafe);
    bzero(v13 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0), v7);
    v9 = sub_22F0B8D44(v13 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0), v6, a2, a1);
    sub_22F0D00CC();
    sub_22F0D00CC();
    sub_22F0D00CC();
  }

  else
  {
    v12 = swift_slowAlloc();
    sub_22F0CFFAC();
    v9 = sub_22F0B8CB4(v12, v6, a2, a1);
    sub_22F0D00CC();
    sub_22F0D00CC();
    MEMORY[0x2318FE8B0](v12, -1, -1);
  }

  v10 = *MEMORY[0x277D85DE8];
  return v9;
}

void *sub_22F0B8CB4(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v6 = result;
      v7 = a2;
      bzero(result, 8 * a2);
      result = v6;
      a2 = v7;
    }

    v8 = sub_22F0B8D44(result, a2, a3, a4);
    sub_22F0D00CC();
    sub_22F0D00CC();
    return v8;
  }

  return result;
}

uint64_t sub_22F0B8D44(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v5 = a3;
  v52 = result;
  if (*(a4 + 16) >= *(a3 + 16))
  {
    v55 = 0;
    v13 = 0;
    v14 = a3 + 56;
    v15 = 1 << *(a3 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(a3 + 56);
    v18 = (v15 + 63) >> 6;
    v19 = a4 + 56;
    while (v17)
    {
      v20 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_18:
      v53 = v20 | (v13 << 6);
      v23 = (*(a3 + 48) + 16 * v53);
      v25 = *v23;
      v24 = v23[1];
      v26 = *(v4 + 40);
      sub_22F0D199C();
      sub_22F0CFF1C();
      sub_22F0D0D5C();
      v27 = sub_22F0D19CC();
      v28 = -1 << *(v4 + 32);
      v29 = v27 & ~v28;
      if ((*(v19 + ((v29 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v29))
      {
        v30 = ~v28;
        while (1)
        {
          v31 = (*(a4 + 48) + 16 * v29);
          v32 = *v31 == v25 && v31[1] == v24;
          if (v32 || (sub_22F0D188C() & 1) != 0)
          {
            break;
          }

          v29 = (v29 + 1) & v30;
          if (((*(v19 + ((v29 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v29) & 1) == 0)
          {
            goto LABEL_10;
          }
        }

        *(v52 + ((v53 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v53;
        v33 = __OFADD__(v55++, 1);
        v4 = a4;
        if (v33)
        {
          __break(1u);
LABEL_30:
          v5 = a3;
LABEL_31:
          sub_22F0CFFAC();
          return sub_22F0B88CC(v52, a2, v55, v5);
        }
      }

      else
      {
LABEL_10:

        v4 = a4;
      }
    }

    v21 = v13;
    while (1)
    {
      v13 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v13 >= v18)
      {
        goto LABEL_30;
      }

      v22 = *(v14 + 8 * v13);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v17 = (v22 - 1) & v22;
        goto LABEL_18;
      }
    }

LABEL_54:
    __break(1u);
  }

  else
  {
    v55 = 0;
    v6 = 0;
    v7 = a4 + 56;
    v8 = 1 << *(a4 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(a4 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = a3 + 56;
    v51 = v11;
    while (v10)
    {
      v34 = __clz(__rbit64(v10));
      v54 = (v10 - 1) & v10;
LABEL_41:
      v37 = (*(v4 + 48) + 16 * (v34 | (v6 << 6)));
      v39 = *v37;
      v38 = v37[1];
      v40 = *(v5 + 40);
      sub_22F0D199C();
      sub_22F0CFF1C();
      sub_22F0D0D5C();
      v41 = sub_22F0D19CC();
      v42 = -1 << *(v5 + 32);
      v43 = v41 & ~v42;
      v44 = v43 >> 6;
      v45 = 1 << v43;
      if (((1 << v43) & *(v12 + 8 * (v43 >> 6))) != 0)
      {
        v46 = (*(v5 + 48) + 16 * v43);
        if (*v46 != v39 || v46[1] != v38)
        {
          v48 = ~v42;
          while ((sub_22F0D188C() & 1) == 0)
          {
            v43 = (v43 + 1) & v48;
            v44 = v43 >> 6;
            v45 = 1 << v43;
            if (((1 << v43) & *(v12 + 8 * (v43 >> 6))) == 0)
            {
              v5 = a3;
              goto LABEL_33;
            }

            v49 = (*(a3 + 48) + 16 * v43);
            if (*v49 == v39 && v49[1] == v38)
            {
              break;
            }
          }
        }

        v11 = v51;
        v52[v44] |= v45;
        v5 = a3;
        v33 = __OFADD__(v55++, 1);
        v4 = a4;
        v10 = v54;
        if (v33)
        {
          __break(1u);
          goto LABEL_54;
        }
      }

      else
      {
LABEL_33:

        v4 = a4;
        v11 = v51;
        v10 = v54;
      }
    }

    v35 = v6;
    while (1)
    {
      v6 = v35 + 1;
      if (__OFADD__(v35, 1))
      {
        break;
      }

      if (v6 >= v11)
      {
        goto LABEL_31;
      }

      v36 = *(v7 + 8 * v6);
      ++v35;
      if (v36)
      {
        v34 = __clz(__rbit64(v36));
        v54 = (v36 - 1) & v36;
        goto LABEL_41;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22F0B9120(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  if (result < 0 || 1 << *(a4 + 32) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a4 + 8 * (result >> 6) + 56) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a4 + 36) == a2)
  {
    v4 = (*(a4 + 48) + 16 * result);
    result = *v4;
    v5 = v4[1];
    return result;
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t BMAskToBuyEvent.ProductType.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x736B6F6F62;
  v3 = 0x65726F7453707061;
  v4 = 0x7069726373627573;
  if (v1 != 3)
  {
    v4 = 0x5654656C707061;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x73656E755469;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t BMAskToBuyEvent.productFromRequest()@<X0>(char *a1@<X8>)
{
  v3 = [v1 productType];
  sub_22F0D0CAC();

  v4 = String.trimToNil()();
  countAndFlagsBits = v4.value._countAndFlagsBits;
  object = v4.value._object;

  if (!v4.value._object)
  {
    countAndFlagsBits = 0;
    object = 0xE000000000000000;
  }

  sub_22F01B924(0, &unk_27DAA23F0, 0x277CF1910);
  static BMAskToBuyEvent.productType(withCode:)(countAndFlagsBits, object, a1);
}

BOOL static BMAskToBuyEvent.< infix(_:_:)(void *a1, void *a2)
{
  [a1 eventTime];
  v4 = v3;
  [a2 eventTime];
  return v4 < v5;
}

uint64_t RequestStatus.description.getter()
{
  v1 = 0x6465766F72707041;
  if (*v0 != 1)
  {
    v1 = 0x6465696E6544;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x676E69646E6550;
  }
}

People::RequestStatus_optional __swiftcall RequestStatus.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_22F0D174C();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_22F0B9488(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE800000000000000;
  v4 = 0x6465766F72707041;
  if (v2 != 1)
  {
    v4 = 0x6465696E6544;
    v3 = 0xE600000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x676E69646E6550;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  v7 = 0xE800000000000000;
  v8 = 0x6465766F72707041;
  if (*a2 != 1)
  {
    v8 = 0x6465696E6544;
    v7 = 0xE600000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x676E69646E6550;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE700000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_22F0D188C();
  }

  return v11 & 1;
}

uint64_t sub_22F0B9584()
{
  v1 = *v0;
  sub_22F0D199C();
  sub_22F0D0D5C();

  return sub_22F0D19CC();
}

uint64_t sub_22F0B9624()
{
  *v0;
  *v0;
  sub_22F0D0D5C();
}

uint64_t sub_22F0B96B0()
{
  v1 = *v0;
  sub_22F0D199C();
  sub_22F0D0D5C();

  return sub_22F0D19CC();
}

void sub_22F0B9758(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0xE800000000000000;
  v5 = 0x6465766F72707041;
  if (v2 != 1)
  {
    v5 = 0x6465696E6544;
    v4 = 0xE600000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x676E69646E6550;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_22F0B9864()
{
  v1 = 0x6465766F72707041;
  if (*v0 != 1)
  {
    v1 = 0x6465696E6544;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x676E69646E6550;
  }
}

void sub_22F0B9A10(SEL *a1)
{
  v2 = [v1 *a1];
  v3 = sub_22F0D0CAC();
  v5 = v4;

  v6 = HIBYTE(v5) & 0xF;
  v7 = v3 & 0xFFFFFFFFFFFFLL;
  if ((v5 & 0x2000000000000000) != 0)
  {
    v8 = HIBYTE(v5) & 0xF;
  }

  else
  {
    v8 = v3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v8)
  {

    return;
  }

  if ((v5 & 0x1000000000000000) != 0)
  {
    v35 = 0;
    sub_22F0BE920(v3, v5, 10);
    goto LABEL_63;
  }

  if ((v5 & 0x2000000000000000) != 0)
  {
    v34[0] = v3;
    v34[1] = v5 & 0xFFFFFFFFFFFFFFLL;
    if (v3 == 43)
    {
      if (v6)
      {
        if (--v6)
        {
          v23 = 0;
          v24 = v34 + 1;
          while (1)
          {
            v25 = *v24 - 48;
            if (v25 > 9)
            {
              break;
            }

            v26 = 10 * v23;
            if ((v23 * 10) >> 64 != (10 * v23) >> 63)
            {
              break;
            }

            v23 = v26 + v25;
            if (__OFADD__(v26, v25))
            {
              break;
            }

            ++v24;
            if (!--v6)
            {
              goto LABEL_62;
            }
          }
        }

        goto LABEL_61;
      }

      goto LABEL_70;
    }

    if (v3 != 45)
    {
      if (v6)
      {
        v30 = 0;
        v31 = v34;
        while (1)
        {
          v32 = *v31 - 48;
          if (v32 > 9)
          {
            break;
          }

          v33 = 10 * v30;
          if ((v30 * 10) >> 64 != (10 * v30) >> 63)
          {
            break;
          }

          v30 = v33 + v32;
          if (__OFADD__(v33, v32))
          {
            break;
          }

          ++v31;
          if (!--v6)
          {
            goto LABEL_62;
          }
        }
      }

      goto LABEL_61;
    }

    if (v6)
    {
      if (--v6)
      {
        v15 = 0;
        v16 = v34 + 1;
        while (1)
        {
          v17 = *v16 - 48;
          if (v17 > 9)
          {
            break;
          }

          v18 = 10 * v15;
          if ((v15 * 10) >> 64 != (10 * v15) >> 63)
          {
            break;
          }

          v15 = v18 - v17;
          if (__OFSUB__(v18, v17))
          {
            break;
          }

          ++v16;
          if (!--v6)
          {
            goto LABEL_62;
          }
        }
      }

      goto LABEL_61;
    }
  }

  else
  {
    if ((v3 & 0x1000000000000000) != 0)
    {
      v9 = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {
      v9 = sub_22F0D15DC();
    }

    v10 = *v9;
    if (v10 == 43)
    {
      if (v7 >= 1)
      {
        v6 = v7 - 1;
        if (v7 != 1)
        {
          v19 = 0;
          if (v9)
          {
            v20 = v9 + 1;
            while (1)
            {
              v21 = *v20 - 48;
              if (v21 > 9)
              {
                goto LABEL_61;
              }

              v22 = 10 * v19;
              if ((v19 * 10) >> 64 != (10 * v19) >> 63)
              {
                goto LABEL_61;
              }

              v19 = v22 + v21;
              if (__OFADD__(v22, v21))
              {
                goto LABEL_61;
              }

              ++v20;
              if (!--v6)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_53;
        }

        goto LABEL_61;
      }

      goto LABEL_69;
    }

    if (v10 != 45)
    {
      if (v7)
      {
        v27 = 0;
        if (v9)
        {
          while (1)
          {
            v28 = *v9 - 48;
            if (v28 > 9)
            {
              goto LABEL_61;
            }

            v29 = 10 * v27;
            if ((v27 * 10) >> 64 != (10 * v27) >> 63)
            {
              goto LABEL_61;
            }

            v27 = v29 + v28;
            if (__OFADD__(v29, v28))
            {
              goto LABEL_61;
            }

            ++v9;
            if (!--v7)
            {
              goto LABEL_53;
            }
          }
        }

        goto LABEL_53;
      }

LABEL_61:
      LOBYTE(v6) = 1;
      goto LABEL_62;
    }

    if (v7 >= 1)
    {
      v6 = v7 - 1;
      if (v7 != 1)
      {
        v11 = 0;
        if (v9)
        {
          v12 = v9 + 1;
          while (1)
          {
            v13 = *v12 - 48;
            if (v13 > 9)
            {
              goto LABEL_61;
            }

            v14 = 10 * v11;
            if ((v11 * 10) >> 64 != (10 * v11) >> 63)
            {
              goto LABEL_61;
            }

            v11 = v14 - v13;
            if (__OFSUB__(v14, v13))
            {
              goto LABEL_61;
            }

            ++v12;
            if (!--v6)
            {
              goto LABEL_62;
            }
          }
        }

LABEL_53:
        LOBYTE(v6) = 0;
LABEL_62:
        v35 = v6;
LABEL_63:

        return;
      }

      goto LABEL_61;
    }

    __break(1u);
  }

  __break(1u);
LABEL_69:
  __break(1u);
LABEL_70:
  __break(1u);
}

uint64_t _sSo15BMAskToBuyEventC6PeopleE9requestIdSSvg_0()
{
  v1 = [v0 requestID];
  v2 = sub_22F0D0CAC();

  return v2;
}

void sub_22F0B9D9C(const char *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = [v2 status] - 1;
  if (v5 >= 3)
  {
    if (qword_280CBEC38 != -1)
    {
      swift_once();
    }

    v7 = sub_22F0D0A1C();
    __swift_project_value_buffer(v7, qword_280CBEC40);
    v8 = sub_22F0D09FC();
    v9 = sub_22F0D123C();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_22EFE1000, v8, v9, a1, v10, 2u);
      MEMORY[0x2318FE8B0](v10, -1, -1);
    }

    LOBYTE(v6) = 3;
  }

  else
  {
    v6 = 0x10200u >> (8 * v5);
  }

  *a2 = v6;
}

uint64_t sub_22F0B9EDC(void *a1, uint64_t a2, uint64_t a3)
{
  v25 = a3;
  v26 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAA1170, &unk_22F0D5A60);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v25 - v8;
  v10 = sub_22F0D05BC();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v25 - v17;
  MEMORY[0x28223BE20](v16);
  v20 = &v25 - v19;
  if ([v3 status] == 1)
  {
    sub_22F0D05AC();
    [v3 eventTime];
    sub_22F0D04BC();
    if (*a1 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v5, v26);
    v21 = [objc_opt_self() seconds];
    sub_22F0D019C();

    sub_22F0D018C();
    (*(v6 + 8))(v9, v5);
    sub_22F0D054C();
    v22 = *(v11 + 8);
    v22(v15, v10);
    v23 = sub_22F0D053C();
    v22(v18, v10);
    v22(v20, v10);
  }

  else
  {
    v23 = 0;
  }

  return v23 & 1;
}

uint64_t sub_22F0BA1B8(void *a1, uint64_t a2, uint64_t a3)
{
  v18[1] = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAA1170, &unk_22F0D5A60);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v18 - v9;
  v11 = sub_22F0D05BC();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  [v3 eventTime];
  sub_22F0D04BC();
  if (*a1 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v6, a2);
  v16 = [objc_opt_self() seconds];
  sub_22F0D019C();

  sub_22F0D018C();
  (*(v7 + 8))(v10, v6);
  sub_22F0D054C();
  return (*(v12 + 8))(v15, v11);
}

uint64_t sub_22F0BA3FC()
{
  v1 = [*v0 requestID];
  v2 = sub_22F0D0CAC();

  return v2;
}

uint64_t sub_22F0BA4C4(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v20[1] = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAA1170, &unk_22F0D5A60);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = v20 - v11;
  v13 = sub_22F0D05BC();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = v20 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  [*v5 eventTime];
  sub_22F0D04BC();
  if (*a3 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v8, a4);
  v18 = [objc_opt_self() seconds];
  sub_22F0D019C();

  sub_22F0D018C();
  (*(v9 + 8))(v12, v8);
  sub_22F0D054C();
  return (*(v14 + 8))(v17, v13);
}

uint64_t BMAskToBuyEvent.ProductType.init(rawValue:)@<X0>(char *a1@<X8>)
{
  v2 = sub_22F0D174C();

  v4 = 5;
  if (v2 < 5)
  {
    v4 = v2;
  }

  *a1 = v4;
  return result;
}

uint64_t sub_22F0BA748()
{
  v1 = *v0;
  sub_22F0D199C();
  sub_22F0D0D5C();

  return sub_22F0D19CC();
}

uint64_t sub_22F0BA830()
{
  *v0;
  *v0;
  *v0;
  sub_22F0D0D5C();
}

uint64_t sub_22F0BA904()
{
  v1 = *v0;
  sub_22F0D199C();
  sub_22F0D0D5C();

  return sub_22F0D19CC();
}

uint64_t sub_22F0BA9E8@<X0>(char *a1@<X8>, uint64_t *a2@<X0>)
{
  v3 = *a2;
  v2 = a2[1];
  return BMAskToBuyEvent.ProductType.init(rawValue:)(a1);
}

void sub_22F0BA9F4(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE500000000000000;
  v4 = 0x736B6F6F62;
  v5 = 0xE800000000000000;
  v6 = 0x65726F7453707061;
  v7 = 0xED0000736E6F6974;
  v8 = 0x7069726373627573;
  if (v2 != 3)
  {
    v8 = 0x5654656C707061;
    v7 = 0xE700000000000000;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x73656E755469;
    v3 = 0xE600000000000000;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

uint64_t static BMAskToBuyEvent.productType(withCode:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v12 = a1;
  v13 = a2;
  v11 = &v12;
  result = sub_22F051C9C(sub_22F034BF4, v10, &unk_2843CAF48);
  if (result)
  {
    v7 = 1;
  }

  else
  {
    v12 = a1;
    v13 = a2;
    MEMORY[0x28223BE20](result);
    v9 = &v12;
    result = sub_22F051C9C(sub_22F0C09D0, v8, &unk_2843CAFA8);
    if (result)
    {
      v7 = 0;
    }

    else
    {
      v12 = a1;
      v13 = a2;
      MEMORY[0x28223BE20](result);
      v9 = &v12;
      result = sub_22F051C9C(sub_22F0C09D0, v8, &unk_2843CAFF8);
      if (result)
      {
        v7 = 4;
      }

      else if (a1 == 4347219 && a2 == 0xE300000000000000)
      {
        v7 = 3;
      }

      else
      {
        result = sub_22F0D188C();
        if (result)
        {
          v7 = 3;
        }

        else
        {
          v7 = 2;
        }
      }
    }
  }

  *a3 = v7;
  return result;
}

uint64_t BMFindMyLocationChangeEvent.reason.getter()
{
  v1 = [v0 locationChangeType];
  if (!v1)
  {
    return 0x64657461647075;
  }

  v2 = 0x6E776F6E6B6E75;
  if (v1 == 1)
  {
    v2 = 0x2064657472617473;
  }

  if (v1 == 2)
  {
    return 0x20646570706F7473;
  }

  else
  {
    return v2;
  }
}

uint64_t static BMStoreDataPeople.squashRequestEvents<A>(_:)(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAA2400, &qword_22F0DBBC8);
  if (sub_22F0D173C())
  {

    v26 = a1;
    v25 = sub_22F0D0AAC();
    MEMORY[0x28223BE20](v25);
    sub_22F0D103C();
    sub_22F0D0B3C();
    swift_getWitnessTable();
    sub_22F0D0E8C();
    v4 = v27;
    sub_22F0D0B2C();
    sub_22F0CFF1C();
    swift_getWitnessTable();
    sub_22F0D104C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1158, &unk_22F0DA960);
    v5 = sub_22F0D167C();

    v6 = _s6People011BMStoreDataA0O9logicSortySaySo0bC0_pGAFFZ_0(v5);

    v27 = MEMORY[0x277D84F90];
    if (v6 >> 62)
    {
      goto LABEL_22;
    }

    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v7)
    {
      while (1)
      {
        v23 = v7;
        v8 = 0;
        v9 = v6 & 0xC000000000000001;
        v10 = v6 & 0xFFFFFFFFFFFFFF8;
        v24 = v6 & 0xC000000000000001;
        while (v9)
        {
          v11 = MEMORY[0x2318FDAB0](v8, v6);
          v12 = v8 + 1;
          if (__OFADD__(v8, 1))
          {
LABEL_14:
            __break(1u);
            goto LABEL_23;
          }

LABEL_10:
          v26 = v11;
          if (sub_22F0BB564(&v26))
          {
            sub_22F0D15EC();
            v13 = v10;
            v14 = v6;
            v15 = v4;
            v16 = a2;
            v17 = *(v27 + 16);
            sub_22F0D162C();
            a2 = v16;
            v4 = v15;
            v6 = v14;
            v10 = v13;
            sub_22F0D163C();
            sub_22F0D15FC();
            v7 = v23;
            v9 = v24;
          }

          else
          {
            swift_unknownObjectRelease();
          }

          ++v8;
          if (v12 == v7)
          {
            goto LABEL_23;
          }
        }

        if (v8 < *(v10 + 16))
        {
          break;
        }

        __break(1u);
LABEL_22:
        v7 = sub_22F0D143C();
        if (!v7)
        {
          goto LABEL_23;
        }
      }

      v11 = *(v6 + 8 * v8 + 32);
      swift_unknownObjectRetain();
      v12 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        goto LABEL_14;
      }

      goto LABEL_10;
    }

LABEL_23:

    a1 = sub_22F0D167C();
    sub_22F0D00CC();
  }

  else
  {
    if (qword_280CBEC38 != -1)
    {
      swift_once();
    }

    v18 = sub_22F0D0A1C();
    __swift_project_value_buffer(v18, qword_280CBEC40);
    v19 = sub_22F0D09FC();
    v20 = sub_22F0D123C();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_22EFE1000, v19, v20, "Event can not be squashed, are not FamilyRequestEvent", v21, 2u);
      MEMORY[0x2318FE8B0](v21, -1, -1);
    }

    sub_22F0CFF1C();
  }

  return a1;
}

void sub_22F0BB210(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v23 = *a2;
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAA2400, &qword_22F0DBBC8);
  if (swift_dynamicCast())
  {
    sub_22EFE6B9C(v21, v24);
    v3 = v25;
    v4 = v26;
    __swift_project_boxed_opaque_existential_1(v24, v25);
    (*(v4 + 32))(v21, v3, v4);
    v5 = LOBYTE(v21[0]);
    if (LOBYTE(v21[0]) == 3)
    {
      if (qword_280CBEC38 != -1)
      {
        swift_once();
      }

      v6 = sub_22F0D0A1C();
      __swift_project_value_buffer(v6, qword_280CBEC40);
      v7 = sub_22F0D09FC();
      v8 = sub_22F0D123C();
      if (os_log_type_enabled(v7, v8))
      {
        v9 = swift_slowAlloc();
        *v9 = 0;
        _os_log_impl(&dword_22EFE1000, v7, v8, "Event can not be squashed, status is unresolved", v9, 2u);
        MEMORY[0x2318FE8B0](v9, -1, -1);
      }
    }

    else
    {
      v14 = v25;
      v15 = v26;
      __swift_project_boxed_opaque_existential_1(v24, v25);
      *&v21[0] = (*(v15 + 16))(v14, v15);
      *(&v21[0] + 1) = v16;
      MEMORY[0x2318FD2C0](46, 0xE100000000000000);
      v17 = 0xE800000000000000;
      v18 = 0x6465766F72707041;
      if (v5 != 1)
      {
        v18 = 0x6465696E6544;
        v17 = 0xE600000000000000;
      }

      if (v5)
      {
        v19 = v18;
      }

      else
      {
        v19 = 0x676E69646E6550;
      }

      if (v5)
      {
        v20 = v17;
      }

      else
      {
        v20 = 0xE700000000000000;
      }

      MEMORY[0x2318FD2C0](v19, v20);

      v23 = v2;
      sub_22F0D0B3C();
      swift_unknownObjectRetain();
      sub_22F0D0B5C();
    }

    __swift_destroy_boxed_opaque_existential_1Tm(v24);
  }

  else
  {
    v22 = 0;
    memset(v21, 0, sizeof(v21));
    sub_22F0C094C(v21);
    if (qword_280CBEC38 != -1)
    {
      swift_once();
    }

    v10 = sub_22F0D0A1C();
    __swift_project_value_buffer(v10, qword_280CBEC40);
    v11 = sub_22F0D09FC();
    v12 = sub_22F0D123C();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_22EFE1000, v11, v12, "Event can not be squashed, is not FamilyRequestEvent", v13, 2u);
      MEMORY[0x2318FE8B0](v13, -1, -1);
    }
  }
}

uint64_t sub_22F0BB564(uint64_t *a1)
{
  v15 = *a1;
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1158, &unk_22F0DA960);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAA2400, &qword_22F0DBBC8);
  if (swift_dynamicCast())
  {
    sub_22EFE6B9C(v13, v16);
    v1 = v17;
    v2 = v18;
    __swift_project_boxed_opaque_existential_1(v16, v17);
    (*(v2 + 32))(v13, v1, v2);
    if (LOBYTE(v13[0]) > 1u)
    {
      if (LOBYTE(v13[0]) != 2)
      {
LABEL_13:
        v9 = v17;
        v10 = v18;
        __swift_project_boxed_opaque_existential_1(v16, v17);
        *&v13[0] = (*(v10 + 16))(v9, v10);
        *(&v13[0] + 1) = v11;
        MEMORY[0x2318FD2C0](46, 0xE100000000000000);
        MEMORY[0x2318FD2C0](0x676E69646E6550, 0xE700000000000000);
        sub_22F0D0B4C();

        v12 = v15 != 0;
        if (v15)
        {
          swift_unknownObjectRelease();
        }

        __swift_destroy_boxed_opaque_existential_1Tm(v16);
        return v12;
      }
    }

    else if (!LOBYTE(v13[0]))
    {
      swift_bridgeObjectRelease_n();
LABEL_12:
      __swift_destroy_boxed_opaque_existential_1Tm(v16);
      return 1;
    }

    v8 = sub_22F0D188C();

    if (v8)
    {
      goto LABEL_12;
    }

    goto LABEL_13;
  }

  v14 = 0;
  memset(v13, 0, sizeof(v13));
  sub_22F0C094C(v13);
  if (qword_280CBEC38 != -1)
  {
    swift_once();
  }

  v3 = sub_22F0D0A1C();
  __swift_project_value_buffer(v3, qword_280CBEC40);
  v4 = sub_22F0D09FC();
  v5 = sub_22F0D123C();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_22EFE1000, v4, v5, "Event can not be squashed, is not FamilyRequestEvent", v6, 2u);
    MEMORY[0x2318FE8B0](v6, -1, -1);
  }

  return 0;
}

uint64_t static BMFindMyLocationChangeEvent.squashEvents(_:)(unint64_t a1)
{
  if (a1 >> 62)
  {
    goto LABEL_25;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_22F0D143C())
  {
    v3 = 0;
    v4 = MEMORY[0x277D84F98];
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x2318FDAB0](v3, a1);
      }

      else
      {
        if (v3 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_22;
        }

        v8 = *(a1 + 8 * v3 + 32);
      }

      v9 = v8;
      v10 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        break;
      }

      v11 = [v8 idsHandle];
      v12 = sub_22F0D0CAC();
      v14 = v13;

      v15 = v9;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v33 = v4;
      v17 = sub_22EFFDA80(v12, v14);
      v19 = v4[2];
      v20 = (v18 & 1) == 0;
      v21 = __OFADD__(v19, v20);
      v22 = v19 + v20;
      if (v21)
      {
        goto LABEL_23;
      }

      v23 = v18;
      if (v4[3] < v22)
      {
        sub_22F07C2AC(v22, isUniquelyReferenced_nonNull_native);
        v17 = sub_22EFFDA80(v12, v14);
        if ((v23 & 1) != (v24 & 1))
        {
          result = sub_22F0D191C();
          __break(1u);
          return result;
        }

LABEL_15:
        if (v23)
        {
          goto LABEL_4;
        }

        goto LABEL_16;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_15;
      }

      v28 = v17;
      sub_22F06141C();
      v17 = v28;
      if (v23)
      {
LABEL_4:
        v5 = v17;

        v4 = v33;
        v6 = v33[7];
        v7 = *(v6 + 8 * v5);
        *(v6 + 8 * v5) = v15;

        goto LABEL_5;
      }

LABEL_16:
      v4 = v33;
      v33[(v17 >> 6) + 8] |= 1 << v17;
      v25 = (v4[6] + 16 * v17);
      *v25 = v12;
      v25[1] = v14;
      *(v4[7] + 8 * v17) = v15;

      v26 = v4[2];
      v21 = __OFADD__(v26, 1);
      v27 = v26 + 1;
      if (v21)
      {
        goto LABEL_24;
      }

      v4[2] = v27;
LABEL_5:
      ++v3;
      if (v10 == i)
      {
        goto LABEL_27;
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
    ;
  }

  v4 = MEMORY[0x277D84F98];
LABEL_27:
  v29 = v4[2];
  if (!v29)
  {
    goto LABEL_30;
  }

  v30 = sub_22F0BBC1C(v4[2], 0);
  v31 = sub_22F0C013C(&v33, v30 + 4, v29, v4);
  sub_22F003524();
  if (v31 != v29)
  {
    __break(1u);
LABEL_30:

    return MEMORY[0x277D84F90];
  }

  return v30;
}

BOOL sub_22F0BBAF4(id *a1, void **a2)
{
  v2 = *a2;
  [*a1 eventTime];
  v4 = v3;
  [v2 eventTime];
  return v4 < v5;
}

void *sub_22F0BBBA0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  if (a2 <= a1)
  {
    v4 = a1;
  }

  else
  {
    v4 = a2;
  }

  if (!v4)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v6 = swift_allocObject();
  v7 = _swift_stdlib_malloc_size(v6);
  result = v6;
  v10 = v7 - 32;
  v9 = v7 < 32;
  v11 = v7 - 17;
  if (!v9)
  {
    v11 = v10;
  }

  v6[2] = a1;
  v6[3] = 2 * (v11 >> 4);
  return result;
}

void *sub_22F0BBC1C(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAA18B0, &unk_22F0D7AC0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = (2 * (v9 >> 3)) | 1;
  return result;
}

void *sub_22F0BBCB8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  if (a2 <= a1)
  {
    v4 = a1;
  }

  else
  {
    v4 = a2;
  }

  if (!v4)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v6 = swift_allocObject();
  v7 = _swift_stdlib_malloc_size(v6);
  result = v6;
  v6[2] = a1;
  v6[3] = 2 * v7 - 64;
  return result;
}

uint64_t sub_22F0BBD24(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_22EFE6A1C(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_22F0BBF40(v6, &qword_27DAA2480, 0x277CF1448, sub_22F0BC5F8, sub_22F0BC06C);
  return sub_22F0D15FC();
}

uint64_t sub_22F0BBDD8(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_22EFE6A1C(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_22F0BBF40(v6, &qword_27DAA2430, 0x277CF1AC8, sub_22F0BCE8C, sub_22F0BC28C);
  return sub_22F0D15FC();
}

uint64_t sub_22F0BBE8C(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_22EFE6A1C(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_22F0BBF40(v6, &unk_27DAA23F0, 0x277CF1910, sub_22F0BD80C, sub_22F0BC4FC);
  return sub_22F0D15FC();
}

uint64_t sub_22F0BBF40(uint64_t a1, unint64_t *a2, uint64_t *a3, void (*a4)(void *, _BYTE *, uint64_t, uint64_t), uint64_t (*a5)(void, uint64_t, uint64_t, uint64_t))
{
  v10 = *(a1 + 8);
  result = sub_22F0D182C();
  if (result < v10)
  {
    if (v10 >= -1)
    {
      v12 = result;
      v13 = v10 / 2;
      if (v10 <= 1)
      {
        v14 = MEMORY[0x277D84F90];
      }

      else
      {
        sub_22F01B924(0, a2, a3);
        v14 = sub_22F0D0FCC();
        *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10) = v13;
      }

      v15 = v14 & 0xFFFFFFFFFFFFFF8;
      v16[0] = (v14 & 0xFFFFFFFFFFFFFF8) + 32;
      v16[1] = v13;
      a4(v16, v17, a1, v12);
      *(v15 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v10 < 0)
  {
    goto LABEL_12;
  }

  if (v10)
  {
    return a5(0, v10, 1, a1);
  }

  return result;
}

void sub_22F0BC06C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v37 = sub_22F0D05BC();
  v8 = *(*(v37 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v37);
  v36 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v31 - v12;
  v32 = a2;
  if (a3 != a2)
  {
    v14 = (v11 + 8);
    v38 = *a4;
    v15 = v38 + 8 * a3 - 8;
    v16 = a1 - a3;
LABEL_5:
    v34 = v15;
    v35 = a3;
    v17 = *(v38 + 8 * a3);
    v33 = v16;
    v18 = v16;
    while (1)
    {
      v19 = *v15;
      v20 = v17;
      v21 = v19;
      v22 = [v20 signalDate];
      sub_22F0D058C();

      v23 = [v21 signalDate];
      v24 = v36;
      sub_22F0D058C();

      v25 = sub_22F0D059C();
      v26 = *v14;
      v27 = v24;
      v28 = v37;
      (*v14)(v27, v37);
      v26(v13, v28);

      if (v25 != -1)
      {
LABEL_4:
        a3 = v35 + 1;
        v15 = v34 + 8;
        v16 = v33 - 1;
        if (v35 + 1 == v32)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v38)
      {
        break;
      }

      v29 = *v15;
      v17 = *(v15 + 8);
      *v15 = v17;
      *(v15 + 8) = v29;
      v15 -= 8;
      if (__CFADD__(v18++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_22F0BC28C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v32 = *a4;
    v4 = *a4 + 8 * a3 - 8;
    v5 = a1 - a3;
LABEL_6:
    v30 = v4;
    v31 = a3;
    v6 = *(v32 + 8 * a3);
    v29 = v5;
    while (1)
    {
      v7 = *v4;
      v8 = v6;
      v9 = v7;
      v10 = [v8 requestID];
      v11 = sub_22F0D0CAC();
      v13 = v12;

      v14 = [v9 requestID];
      v15 = sub_22F0D0CAC();
      v17 = v16;

      if (v11 == v15 && v13 == v17)
      {
      }

      else
      {
        v19 = sub_22F0D188C();

        if ((v19 & 1) == 0)
        {
          [v8 eventTime];
          v21 = v20;
          [v9 eventTime];
          v23 = v22;

          if (v21 >= v23)
          {
            goto LABEL_5;
          }

          goto LABEL_23;
        }
      }

      if ([v8 status] == 1 && objc_msgSend(v9, sel_status) != 1 || objc_msgSend(v8, sel_status) == 2 && objc_msgSend(v9, sel_status) == 3)
      {
      }

      else
      {
        if ([v8 status] != 3 || objc_msgSend(v9, sel_status) != 3)
        {

LABEL_5:
          a3 = v31 + 1;
          v4 = v30 + 8;
          v5 = v29 - 1;
          if (v31 + 1 == a2)
          {
            return;
          }

          goto LABEL_6;
        }

        v24 = [v8 approvalTime];
        v25 = [v9 approvalTime];

        if (v24 >= v25)
        {
          goto LABEL_5;
        }
      }

LABEL_23:
      if (!v32)
      {
        __break(1u);
        return;
      }

      v26 = *v4;
      v6 = *(v4 + 8);
      *v4 = v6;
      *(v4 + 8) = v26;
      v4 -= 8;
      if (__CFADD__(v5++, 1))
      {
        goto LABEL_5;
      }
    }
  }
}

void sub_22F0BC4FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v5 = *a4;
    v6 = *a4 + 8 * a3 - 8;
    v7 = a1 - a3;
LABEL_5:
    v8 = *(v5 + 8 * v4);
    v9 = v7;
    v10 = v6;
    while (1)
    {
      v11 = *v10;
      v12 = v8;
      v13 = v11;
      [v12 eventTime];
      v15 = v14;
      [v13 eventTime];
      v17 = v16;

      if (v15 >= v17)
      {
LABEL_4:
        ++v4;
        v6 += 8;
        --v7;
        if (v4 == a2)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v5)
      {
        break;
      }

      v18 = *v10;
      v8 = *(v10 + 8);
      *v10 = v8;
      *(v10 + 8) = v18;
      v10 -= 8;
      if (__CFADD__(v9++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_22F0BC5F8(void ***a1, uint64_t a2, void *a3, unint64_t a4)
{
  v7 = v4;
  v119 = a1;
  v128 = sub_22F0D05BC();
  v10 = *(*(v128 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v128);
  v127 = &v113 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v126 = &v113 - v14;
  v15 = a3[1];
  if (v15 >= 1)
  {
    v16 = 0;
    v125 = (v13 + 8);
    v17 = MEMORY[0x277D84F90];
    v118 = a4;
    v114 = a3;
    while (1)
    {
      v18 = v16++;
      if (v16 < v15)
      {
        v122 = v15;
        v116 = v17;
        v117 = v7;
        v19 = *a3;
        v20 = *(*a3 + 8 * v16);
        v21 = v18;
        v120 = 8 * v18;
        v22 = (v19 + 8 * v18);
        v23 = *v22;
        v5 = (v22 + 2);
        v6 = v20;
        v24 = v23;
        v25 = [v6 signalDate];
        v26 = v126;
        sub_22F0D058C();

        v27 = [v24 signalDate];
        v28 = v127;
        sub_22F0D058C();

        v123 = sub_22F0D059C();
        v29 = *v125;
        v30 = v128;
        (*v125)(v28, v128);
        v121 = v29;
        (v29)(v26, v30);

        v115 = v21;
        v31 = v21 + 2;
        while (1)
        {
          v16 = v122;
          if (v122 == v31)
          {
            break;
          }

          LODWORD(v124) = v123 == -1;
          v32 = *(v5 - 8);
          v33 = *v5;
          v6 = v32;
          v34 = [v33 signalDate];
          v35 = v126;
          sub_22F0D058C();

          v36 = [v6 signalDate];
          v37 = v127;
          sub_22F0D058C();

          v38 = sub_22F0D059C();
          v39 = v37;
          v40 = v128;
          v41 = v121;
          (v121)(v39, v128);
          v41(v35, v40);

          ++v31;
          v5 += 8;
          if (((v124 ^ (v38 != -1)) & 1) == 0)
          {
            v16 = v31 - 1;
            break;
          }
        }

        v17 = v116;
        v7 = v117;
        a4 = v118;
        v18 = v115;
        v42 = v120;
        if (v123 == -1)
        {
          if (v16 < v115)
          {
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
            return;
          }

          a3 = v114;
          if (v115 < v16)
          {
            v43 = 8 * v16 - 8;
            v44 = v16;
            v45 = v115;
            do
            {
              if (v45 != --v44)
              {
                v47 = *a3;
                if (!*a3)
                {
                  goto LABEL_125;
                }

                v46 = *(v47 + v42);
                *(v47 + v42) = *(v47 + v43);
                *(v47 + v43) = v46;
              }

              ++v45;
              v43 -= 8;
              v42 += 8;
            }

            while (v45 < v44);
          }
        }

        else
        {
          a3 = v114;
        }
      }

      v48 = a3[1];
      if (v16 < v48)
      {
        if (__OFSUB__(v16, v18))
        {
          goto LABEL_117;
        }

        if (v16 - v18 < a4)
        {
          v49 = v18 + a4;
          if (__OFADD__(v18, a4))
          {
            goto LABEL_118;
          }

          if (v49 >= v48)
          {
            v49 = a3[1];
          }

          if (v49 < v18)
          {
LABEL_119:
            __break(1u);
            goto LABEL_120;
          }

          if (v16 != v49)
          {
            v116 = v17;
            v117 = v7;
            v124 = *a3;
            v50 = v124 + 8 * v16 - 8;
            v115 = v18;
            v51 = (v18 - v16);
            v120 = v49;
            do
            {
              v122 = v50;
              v123 = v16;
              v52 = *(v124 + 8 * v16);
              v121 = v51;
              do
              {
                v53 = *v50;
                v54 = v52;
                v5 = v53;
                v55 = [v54 signalDate];
                v6 = v126;
                sub_22F0D058C();

                v56 = [v5 signalDate];
                v57 = v127;
                sub_22F0D058C();

                a4 = sub_22F0D059C();
                v58 = *v125;
                v59 = v57;
                v60 = v128;
                (*v125)(v59, v128);
                v58(v6, v60);

                if (a4 != -1)
                {
                  break;
                }

                if (!v124)
                {
                  goto LABEL_122;
                }

                v61 = *v50;
                v52 = *(v50 + 8);
                *v50 = v52;
                *(v50 + 8) = v61;
                v50 -= 8;
              }

              while (!__CFADD__(v51++, 1));
              v16 = v123 + 1;
              v50 = v122 + 8;
              v51 = v121 - 1;
            }

            while (v123 + 1 != v120);
            v16 = v120;
            v17 = v116;
            v7 = v117;
            a3 = v114;
            v18 = v115;
          }
        }
      }

      if (v16 < v18)
      {
        goto LABEL_116;
      }

      v63 = v17;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v17 = v63;
      }

      else
      {
        v17 = sub_22F03C658(0, *(v63 + 2) + 1, 1, v63);
      }

      v65 = *(v17 + 2);
      v64 = *(v17 + 3);
      a4 = v65 + 1;
      if (v65 >= v64 >> 1)
      {
        v17 = sub_22F03C658((v64 > 1), v65 + 1, 1, v17);
      }

      *(v17 + 2) = a4;
      v66 = &v17[16 * v65];
      *(v66 + 4) = v18;
      *(v66 + 5) = v16;
      v67 = *v119;
      if (!*v119)
      {
        goto LABEL_126;
      }

      if (v65)
      {
        while (1)
        {
          v5 = a4 - 1;
          if (a4 >= 4)
          {
            break;
          }

          if (a4 == 3)
          {
            v68 = *(v17 + 4);
            v69 = *(v17 + 5);
            v78 = __OFSUB__(v69, v68);
            v70 = v69 - v68;
            v71 = v78;
LABEL_56:
            if (v71)
            {
              goto LABEL_105;
            }

            v84 = &v17[16 * a4];
            v86 = *v84;
            v85 = *(v84 + 1);
            v87 = __OFSUB__(v85, v86);
            v88 = v85 - v86;
            v89 = v87;
            if (v87)
            {
              goto LABEL_108;
            }

            v90 = &v17[16 * v5 + 32];
            v92 = *v90;
            v91 = *(v90 + 1);
            v78 = __OFSUB__(v91, v92);
            v93 = v91 - v92;
            if (v78)
            {
              goto LABEL_111;
            }

            if (__OFADD__(v88, v93))
            {
              goto LABEL_112;
            }

            if (v88 + v93 >= v70)
            {
              if (v70 < v93)
              {
                v5 = a4 - 2;
              }

              goto LABEL_77;
            }

            goto LABEL_70;
          }

          v94 = &v17[16 * a4];
          v96 = *v94;
          v95 = *(v94 + 1);
          v78 = __OFSUB__(v95, v96);
          v88 = v95 - v96;
          v89 = v78;
LABEL_70:
          if (v89)
          {
            goto LABEL_107;
          }

          v97 = &v17[16 * v5];
          v99 = *(v97 + 4);
          v98 = *(v97 + 5);
          v78 = __OFSUB__(v98, v99);
          v100 = v98 - v99;
          if (v78)
          {
            goto LABEL_110;
          }

          if (v100 < v88)
          {
            goto LABEL_3;
          }

LABEL_77:
          v105 = v5 - 1;
          if (v5 - 1 >= a4)
          {
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
LABEL_116:
            __break(1u);
LABEL_117:
            __break(1u);
LABEL_118:
            __break(1u);
            goto LABEL_119;
          }

          if (!*a3)
          {
            goto LABEL_123;
          }

          v106 = v17;
          a4 = *&v17[16 * v105 + 32];
          v6 = *&v17[16 * v5 + 40];
          sub_22F0BDE84((*a3 + 8 * a4), (*a3 + 8 * *&v17[16 * v5 + 32]), (*a3 + 8 * v6), v67);
          if (v7)
          {
            goto LABEL_99;
          }

          if (v6 < a4)
          {
            goto LABEL_101;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v106 = sub_22F0BE90C(v106);
          }

          if (v105 >= *(v106 + 2))
          {
            goto LABEL_102;
          }

          v107 = &v106[16 * v105];
          *(v107 + 4) = a4;
          *(v107 + 5) = v6;
          v129 = v106;
          sub_22F0BE880(v5);
          v17 = v129;
          a4 = *(v129 + 2);
          if (a4 <= 1)
          {
            goto LABEL_3;
          }
        }

        v72 = &v17[16 * a4 + 32];
        v73 = *(v72 - 64);
        v74 = *(v72 - 56);
        v78 = __OFSUB__(v74, v73);
        v75 = v74 - v73;
        if (v78)
        {
          goto LABEL_103;
        }

        v77 = *(v72 - 48);
        v76 = *(v72 - 40);
        v78 = __OFSUB__(v76, v77);
        v70 = v76 - v77;
        v71 = v78;
        if (v78)
        {
          goto LABEL_104;
        }

        v79 = &v17[16 * a4];
        v81 = *v79;
        v80 = *(v79 + 1);
        v78 = __OFSUB__(v80, v81);
        v82 = v80 - v81;
        if (v78)
        {
          goto LABEL_106;
        }

        v78 = __OFADD__(v70, v82);
        v83 = v70 + v82;
        if (v78)
        {
          goto LABEL_109;
        }

        if (v83 >= v75)
        {
          v101 = &v17[16 * v5 + 32];
          v103 = *v101;
          v102 = *(v101 + 1);
          v78 = __OFSUB__(v102, v103);
          v104 = v102 - v103;
          if (v78)
          {
            goto LABEL_113;
          }

          if (v70 < v104)
          {
            v5 = a4 - 2;
          }

          goto LABEL_77;
        }

        goto LABEL_56;
      }

LABEL_3:
      v15 = a3[1];
      a4 = v118;
      if (v16 >= v15)
      {
        goto LABEL_88;
      }
    }
  }

  v17 = MEMORY[0x277D84F90];
LABEL_88:
  v5 = *v119;
  if (!*v119)
  {
    goto LABEL_127;
  }

  a4 = v17;
  v6 = a3;
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    v108 = a4;
  }

  else
  {
LABEL_120:
    v108 = sub_22F0BE90C(a4);
  }

  v129 = v108;
  v109 = *(v108 + 2);
  if (v109 >= 2)
  {
    while (*v6)
    {
      a4 = *&v108[16 * v109];
      v110 = v108;
      v111 = *&v108[16 * v109 + 24];
      sub_22F0BDE84((*v6 + 8 * a4), (*v6 + 8 * *&v108[16 * v109 + 16]), (*v6 + 8 * v111), v5);
      if (v7)
      {
        goto LABEL_99;
      }

      if (v111 < a4)
      {
        goto LABEL_114;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v110 = sub_22F0BE90C(v110);
      }

      if (v109 - 2 >= *(v110 + 2))
      {
        goto LABEL_115;
      }

      v112 = &v110[16 * v109];
      *v112 = a4;
      v112[1] = v111;
      v129 = v110;
      sub_22F0BE880(v109 - 1);
      v108 = v129;
      v109 = *(v129 + 2);
      if (v109 <= 1)
      {
        goto LABEL_99;
      }
    }

    goto LABEL_124;
  }

LABEL_99:
}

void sub_22F0BCE8C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a3;
  v5 = *(a3 + 8);
  if (v5 < 1)
  {
    v7 = MEMORY[0x277D84F90];
LABEL_124:
    v5 = v4;
    v4 = *a1;
    if (*a1)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        goto LABEL_156;
      }

      goto LABEL_126;
    }

    goto LABEL_162;
  }

  v6 = 0;
  v7 = MEMORY[0x277D84F90];
LABEL_4:
  v8 = v6++;
  v123 = v7;
  if (v6 >= v5)
  {
    goto LABEL_40;
  }

  v9 = *v4;
  v10 = *(*v4 + 8 * v6);
  v11 = *(*v4 + 8 * v8);
  v12 = v10;
  v13 = v11;
  v130 = _sSo24BMScreenTimeRequestEventC6PeopleE1loiySbAB_ABtFZ_0(v12, v13);

  v6 = v8 + 2;
  if (v8 + 2 >= v5)
  {
    goto LABEL_30;
  }

  v117 = v8;
  v14 = &v9[8 * v8 + 16];
  v125 = v5;
  while (1)
  {
    v127 = v6;
    v15 = *(v14 - 1);
    v16 = *v14;
    v17 = v15;
    v18 = [v16 requestID];
    v19 = sub_22F0D0CAC();
    v21 = v20;

    v5 = [v17 requestID];
    v22 = sub_22F0D0CAC();
    v24 = v23;

    if (v19 == v22 && v21 == v24)
    {
    }

    else
    {
      v26 = sub_22F0D188C();

      if ((v26 & 1) == 0)
      {
        [v16 eventTime];
        v28 = v27;
        [v17 eventTime];
        v30 = v29;

        v7 = v123;
        if ((v130 & 1) == v28 >= v30)
        {
          break;
        }

        goto LABEL_8;
      }
    }

    v7 = v123;
    if ([v16 status] == 1 && objc_msgSend(v17, sel_status) != 1 || objc_msgSend(v16, sel_status) == 2 && objc_msgSend(v17, sel_status) == 3)
    {

      if ((v130 & 1) == 0)
      {
        v4 = a3;
        v6 = v127;
        v8 = v117;
        goto LABEL_40;
      }

      goto LABEL_8;
    }

    if ([v16 status] != 3 || objc_msgSend(v17, sel_status) != 3)
    {

      if (v130)
      {
        v4 = a3;
        v6 = v127;
        v8 = v117;
        goto LABEL_31;
      }

      goto LABEL_8;
    }

    v31 = [v16 approvalTime];
    v32 = [v17 approvalTime];

    if (((v130 ^ (v31 >= v32)) & 1) == 0)
    {
      break;
    }

LABEL_8:
    v5 = v125;
    v6 = v127 + 1;
    ++v14;
    if (v125 == v127 + 1)
    {
      v6 = v125;
      goto LABEL_29;
    }
  }

  v6 = v127;
LABEL_29:
  v8 = v117;
LABEL_30:
  v4 = a3;
  if ((v130 & 1) == 0)
  {
LABEL_40:
    v39 = *(v4 + 8);
    if (v6 >= v39)
    {
      goto LABEL_73;
    }

    if (__OFSUB__(v6, v8))
    {
      goto LABEL_152;
    }

    if (v6 - v8 >= a4)
    {
      goto LABEL_73;
    }

    v40 = v8 + a4;
    if (__OFADD__(v8, a4))
    {
      goto LABEL_153;
    }

    if (v40 >= v39)
    {
      v40 = *(v4 + 8);
    }

    if (v40 < v8)
    {
LABEL_154:
      __break(1u);
      goto LABEL_155;
    }

    if (v6 == v40)
    {
      goto LABEL_73;
    }

    v131 = *v4;
    v41 = *v4 + 8 * v6 - 8;
    v118 = v8;
    v42 = v8 - v6;
    v122 = v40;
LABEL_51:
    v126 = v41;
    v128 = v6;
    v43 = v42;
    v44 = *&v131[8 * v6];
    v124 = v43;
    v45 = v43;
    while (1)
    {
      v46 = *v41;
      v47 = v44;
      v5 = v46;
      v48 = [v47 requestID];
      v49 = sub_22F0D0CAC();
      v51 = v50;

      v52 = [v5 requestID];
      v53 = sub_22F0D0CAC();
      v55 = v54;

      if (v49 == v53 && v51 == v55)
      {
      }

      else
      {
        v57 = sub_22F0D188C();

        if ((v57 & 1) == 0)
        {
          [v47 eventTime];
          v59 = v58;
          [v5 eventTime];
          v61 = v60;

          if (v59 >= v61)
          {
            goto LABEL_50;
          }

          goto LABEL_68;
        }
      }

      if ([v47 status] == 1 && objc_msgSend(v5, sel_status) != 1 || objc_msgSend(v47, sel_status) == 2 && objc_msgSend(v5, sel_status) == 3)
      {
      }

      else
      {
        if ([v47 status] != 3 || objc_msgSend(v5, sel_status) != 3)
        {

LABEL_50:
          v6 = v128 + 1;
          v41 = v126 + 8;
          v42 = v124 - 1;
          if (v128 + 1 != v122)
          {
            goto LABEL_51;
          }

          v6 = v122;
          v4 = a3;
          v7 = v123;
          v8 = v118;
LABEL_73:
          if (v6 < v8)
          {
            goto LABEL_151;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v7 = sub_22F03C658(0, *(v7 + 2) + 1, 1, v7);
          }

          v67 = *(v7 + 2);
          v66 = *(v7 + 3);
          v68 = v67 + 1;
          if (v67 >= v66 >> 1)
          {
            v7 = sub_22F03C658((v66 > 1), v67 + 1, 1, v7);
          }

          *(v7 + 2) = v68;
          v69 = &v7[16 * v67];
          *(v69 + 4) = v8;
          *(v69 + 5) = v6;
          v5 = *a1;
          if (*a1)
          {
            if (!v67)
            {
LABEL_3:
              v5 = *(v4 + 8);
              if (v6 >= v5)
              {
                goto LABEL_124;
              }

              goto LABEL_4;
            }

            while (2)
            {
              v70 = v68 - 1;
              if (v68 >= 4)
              {
                v75 = &v7[16 * v68 + 32];
                v76 = *(v75 - 64);
                v77 = *(v75 - 56);
                v81 = __OFSUB__(v77, v76);
                v78 = v77 - v76;
                if (v81)
                {
                  goto LABEL_138;
                }

                v80 = *(v75 - 48);
                v79 = *(v75 - 40);
                v81 = __OFSUB__(v79, v80);
                v73 = v79 - v80;
                v74 = v81;
                if (v81)
                {
                  goto LABEL_139;
                }

                v82 = &v7[16 * v68];
                v84 = *v82;
                v83 = *(v82 + 1);
                v81 = __OFSUB__(v83, v84);
                v85 = v83 - v84;
                if (v81)
                {
                  goto LABEL_141;
                }

                v81 = __OFADD__(v73, v85);
                v86 = v73 + v85;
                if (v81)
                {
                  goto LABEL_144;
                }

                if (v86 >= v78)
                {
                  v104 = &v7[16 * v70 + 32];
                  v106 = *v104;
                  v105 = *(v104 + 1);
                  v81 = __OFSUB__(v105, v106);
                  v107 = v105 - v106;
                  if (v81)
                  {
                    goto LABEL_148;
                  }

                  if (v73 < v107)
                  {
                    v70 = v68 - 2;
                  }
                }

                else
                {
LABEL_93:
                  if (v74)
                  {
                    goto LABEL_140;
                  }

                  v87 = &v7[16 * v68];
                  v89 = *v87;
                  v88 = *(v87 + 1);
                  v90 = __OFSUB__(v88, v89);
                  v91 = v88 - v89;
                  v92 = v90;
                  if (v90)
                  {
                    goto LABEL_143;
                  }

                  v93 = &v7[16 * v70 + 32];
                  v95 = *v93;
                  v94 = *(v93 + 1);
                  v81 = __OFSUB__(v94, v95);
                  v96 = v94 - v95;
                  if (v81)
                  {
                    goto LABEL_146;
                  }

                  if (__OFADD__(v91, v96))
                  {
                    goto LABEL_147;
                  }

                  if (v91 + v96 < v73)
                  {
                    goto LABEL_107;
                  }

                  if (v73 < v96)
                  {
                    v70 = v68 - 2;
                  }
                }
              }

              else
              {
                if (v68 == 3)
                {
                  v71 = *(v7 + 4);
                  v72 = *(v7 + 5);
                  v81 = __OFSUB__(v72, v71);
                  v73 = v72 - v71;
                  v74 = v81;
                  goto LABEL_93;
                }

                v97 = &v7[16 * v68];
                v99 = *v97;
                v98 = *(v97 + 1);
                v81 = __OFSUB__(v98, v99);
                v91 = v98 - v99;
                v92 = v81;
LABEL_107:
                if (v92)
                {
                  goto LABEL_142;
                }

                v100 = &v7[16 * v70];
                v102 = *(v100 + 4);
                v101 = *(v100 + 5);
                v81 = __OFSUB__(v101, v102);
                v103 = v101 - v102;
                if (v81)
                {
                  goto LABEL_145;
                }

                if (v103 < v91)
                {
                  goto LABEL_3;
                }
              }

              v108 = v70 - 1;
              if (v70 - 1 >= v68)
              {
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
                goto LABEL_154;
              }

              if (!*v4)
              {
                goto LABEL_158;
              }

              v109 = v6;
              v110 = *&v7[16 * v108 + 32];
              v111 = *&v7[16 * v70 + 40];
              sub_22F0BE338((*v4 + 8 * v110), (*v4 + 8 * *&v7[16 * v70 + 32]), (*v4 + 8 * v111), v5);
              if (v129)
              {
                goto LABEL_134;
              }

              if (v111 < v110)
              {
                goto LABEL_136;
              }

              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v7 = sub_22F0BE90C(v7);
              }

              if (v108 >= *(v7 + 2))
              {
                goto LABEL_137;
              }

              v112 = &v7[16 * v108];
              *(v112 + 4) = v110;
              *(v112 + 5) = v111;
              sub_22F0BE880(v70);
              v68 = *(v7 + 2);
              v6 = v109;
              if (v68 <= 1)
              {
                goto LABEL_3;
              }

              continue;
            }
          }

LABEL_161:
          __break(1u);
LABEL_162:
          __break(1u);
          return;
        }

        v62 = [v47 approvalTime];
        v63 = [v5 approvalTime];

        if (v62 >= v63)
        {
          goto LABEL_50;
        }
      }

LABEL_68:
      if (!v131)
      {
        __break(1u);
LABEL_158:
        __break(1u);
LABEL_159:
        __break(1u);
LABEL_160:
        __break(1u);
        goto LABEL_161;
      }

      v64 = *v41;
      v44 = *(v41 + 8);
      *v41 = v44;
      *(v41 + 8) = v64;
      v41 -= 8;
      if (__CFADD__(v45++, 1))
      {
        goto LABEL_50;
      }
    }
  }

LABEL_31:
  if (v6 >= v8)
  {
    if (v8 < v6)
    {
      v33 = 8 * v6 - 8;
      v34 = 8 * v8;
      v35 = v6;
      v36 = v8;
      while (1)
      {
        if (v36 != --v35)
        {
          v38 = *v4;
          if (!*v4)
          {
            goto LABEL_159;
          }

          v37 = *&v38[v34];
          *&v38[v34] = *&v38[v33];
          *&v38[v33] = v37;
        }

        ++v36;
        v33 -= 8;
        v34 += 8;
        if (v36 >= v35)
        {
          goto LABEL_40;
        }
      }
    }

    goto LABEL_40;
  }

LABEL_155:
  __break(1u);
LABEL_156:
  v7 = sub_22F0BE90C(v7);
LABEL_126:
  v113 = *(v7 + 2);
  if (v113 >= 2)
  {
    while (*v5)
    {
      v114 = *&v7[16 * v113];
      v115 = *&v7[16 * v113 + 24];
      sub_22F0BE338((*v5 + 8 * v114), (*v5 + 8 * *&v7[16 * v113 + 16]), (*v5 + 8 * v115), v4);
      if (v129)
      {
        goto LABEL_134;
      }

      if (v115 < v114)
      {
        goto LABEL_149;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v7 = sub_22F0BE90C(v7);
      }

      if (v113 - 2 >= *(v7 + 2))
      {
        goto LABEL_150;
      }

      v116 = &v7[16 * v113];
      *v116 = v114;
      *(v116 + 1) = v115;
      sub_22F0BE880(v113 - 1);
      v113 = *(v7 + 2);
      if (v113 <= 1)
      {
        goto LABEL_134;
      }
    }

    goto LABEL_160;
  }

LABEL_134:
}

void sub_22F0BD80C(void ***a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x277D84F90];
LABEL_88:
    v9 = *a1;
    if (!*a1)
    {
      goto LABEL_127;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_121:
      v8 = sub_22F0BE90C(v8);
    }

    v99 = v5;
    v100 = *(v8 + 2);
    if (v100 >= 2)
    {
      while (*a3)
      {
        v5 = v100 - 1;
        v101 = *&v8[16 * v100];
        v102 = *&v8[16 * v100 + 24];
        sub_22F0BE5C0((*a3 + 8 * v101), (*a3 + 8 * *&v8[16 * v100 + 16]), (*a3 + 8 * v102), v9);
        if (v99)
        {
          goto LABEL_98;
        }

        if (v102 < v101)
        {
          goto LABEL_114;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_22F0BE90C(v8);
        }

        if (v100 - 2 >= *(v8 + 2))
        {
          goto LABEL_115;
        }

        v103 = &v8[16 * v100];
        *v103 = v101;
        *(v103 + 1) = v102;
        sub_22F0BE880(v100 - 1);
        v100 = *(v8 + 2);
        if (v100 <= 1)
        {
          goto LABEL_98;
        }
      }

      goto LABEL_125;
    }

LABEL_98:

    return;
  }

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  while (1)
  {
    v9 = v7;
    v10 = v7 + 1;
    if (v7 + 1 < v6)
    {
      v105 = v5;
      v11 = *(*a3 + 8 * v10);
      v5 = 8 * v7;
      v12 = v7;
      v13 = (*a3 + 8 * v7);
      v15 = *v13;
      v14 = v13 + 2;
      v16 = v11;
      v17 = v15;
      [v16 eventTime];
      v19 = v18;
      [v17 eventTime];
      v21 = v20;

      v22 = v12 + 2;
      while (v6 != v22)
      {
        v23 = *(v14 - 1);
        v24 = *v14;
        v25 = v23;
        [v24 eventTime];
        v27 = v26;
        [v25 eventTime];
        v29 = v28;

        ++v22;
        ++v14;
        if (v19 < v21 == v27 >= v29)
        {
          v6 = (v22 - 1);
          break;
        }
      }

      v9 = v12;
      if (v19 < v21)
      {
        if (v6 < v12)
        {
          goto LABEL_118;
        }

        if (v12 < v6)
        {
          v30 = 8 * v6 - 8;
          v31 = v6;
          v32 = v12;
          do
          {
            if (v32 != --v31)
            {
              v34 = *a3;
              if (!*a3)
              {
                goto LABEL_124;
              }

              v33 = *(v34 + v5);
              *(v34 + v5) = *(v34 + v30);
              *(v34 + v30) = v33;
            }

            v32 = (v32 + 1);
            v30 -= 8;
            v5 += 8;
          }

          while (v32 < v31);
        }
      }

      v10 = v6;
      v5 = v105;
    }

    v35 = a3[1];
    if (v10 < v35)
    {
      if (__OFSUB__(v10, v9))
      {
        goto LABEL_117;
      }

      if (v10 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_119;
        }

        if (v9 + a4 >= v35)
        {
          v36 = a3[1];
        }

        else
        {
          v36 = (v9 + a4);
        }

        if (v36 < v9)
        {
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (v10 != v36)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v10 < v9)
    {
      goto LABEL_116;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = sub_22F03C658(0, *(v8 + 2) + 1, 1, v8);
    }

    v54 = *(v8 + 2);
    v53 = *(v8 + 3);
    v55 = v54 + 1;
    if (v54 >= v53 >> 1)
    {
      v8 = sub_22F03C658((v53 > 1), v54 + 1, 1, v8);
    }

    *(v8 + 2) = v55;
    v56 = &v8[16 * v54];
    *(v56 + 4) = v9;
    *(v56 + 5) = v10;
    v57 = *a1;
    if (!*a1)
    {
      goto LABEL_126;
    }

    v111 = v10;
    if (v54)
    {
      while (1)
      {
        v58 = v55 - 1;
        if (v55 >= 4)
        {
          break;
        }

        if (v55 == 3)
        {
          v59 = *(v8 + 4);
          v60 = *(v8 + 5);
          v69 = __OFSUB__(v60, v59);
          v61 = v60 - v59;
          v62 = v69;
LABEL_57:
          if (v62)
          {
            goto LABEL_105;
          }

          v75 = &v8[16 * v55];
          v77 = *v75;
          v76 = *(v75 + 1);
          v78 = __OFSUB__(v76, v77);
          v79 = v76 - v77;
          v80 = v78;
          if (v78)
          {
            goto LABEL_108;
          }

          v81 = &v8[16 * v58 + 32];
          v83 = *v81;
          v82 = *(v81 + 1);
          v69 = __OFSUB__(v82, v83);
          v84 = v82 - v83;
          if (v69)
          {
            goto LABEL_111;
          }

          if (__OFADD__(v79, v84))
          {
            goto LABEL_112;
          }

          if (v79 + v84 >= v61)
          {
            if (v61 < v84)
            {
              v58 = v55 - 2;
            }

            goto LABEL_78;
          }

          goto LABEL_71;
        }

        v85 = &v8[16 * v55];
        v87 = *v85;
        v86 = *(v85 + 1);
        v69 = __OFSUB__(v86, v87);
        v79 = v86 - v87;
        v80 = v69;
LABEL_71:
        if (v80)
        {
          goto LABEL_107;
        }

        v88 = &v8[16 * v58];
        v90 = *(v88 + 4);
        v89 = *(v88 + 5);
        v69 = __OFSUB__(v89, v90);
        v91 = v89 - v90;
        if (v69)
        {
          goto LABEL_110;
        }

        if (v91 < v79)
        {
          goto LABEL_3;
        }

LABEL_78:
        v96 = v58 - 1;
        if (v58 - 1 >= v55)
        {
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
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
          goto LABEL_120;
        }

        if (!*a3)
        {
          goto LABEL_123;
        }

        v97 = *&v8[16 * v96 + 32];
        v9 = *&v8[16 * v58 + 40];
        sub_22F0BE5C0((*a3 + 8 * v97), (*a3 + 8 * *&v8[16 * v58 + 32]), (*a3 + 8 * v9), v57);
        if (v5)
        {
          goto LABEL_98;
        }

        if (v9 < v97)
        {
          goto LABEL_101;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_22F0BE90C(v8);
        }

        if (v96 >= *(v8 + 2))
        {
          goto LABEL_102;
        }

        v98 = &v8[16 * v96];
        *(v98 + 4) = v97;
        *(v98 + 5) = v9;
        sub_22F0BE880(v58);
        v55 = *(v8 + 2);
        if (v55 <= 1)
        {
          goto LABEL_3;
        }
      }

      v63 = &v8[16 * v55 + 32];
      v64 = *(v63 - 64);
      v65 = *(v63 - 56);
      v69 = __OFSUB__(v65, v64);
      v66 = v65 - v64;
      if (v69)
      {
        goto LABEL_103;
      }

      v68 = *(v63 - 48);
      v67 = *(v63 - 40);
      v69 = __OFSUB__(v67, v68);
      v61 = v67 - v68;
      v62 = v69;
      if (v69)
      {
        goto LABEL_104;
      }

      v70 = &v8[16 * v55];
      v72 = *v70;
      v71 = *(v70 + 1);
      v69 = __OFSUB__(v71, v72);
      v73 = v71 - v72;
      if (v69)
      {
        goto LABEL_106;
      }

      v69 = __OFADD__(v61, v73);
      v74 = v61 + v73;
      if (v69)
      {
        goto LABEL_109;
      }

      if (v74 >= v66)
      {
        v92 = &v8[16 * v58 + 32];
        v94 = *v92;
        v93 = *(v92 + 1);
        v69 = __OFSUB__(v93, v94);
        v95 = v93 - v94;
        if (v69)
        {
          goto LABEL_113;
        }

        if (v61 < v95)
        {
          v58 = v55 - 2;
        }

        goto LABEL_78;
      }

      goto LABEL_57;
    }

LABEL_3:
    v7 = v111;
    v6 = a3[1];
    if (v111 >= v6)
    {
      goto LABEL_88;
    }
  }

  v106 = v5;
  v37 = v9;
  v38 = *a3;
  v39 = *a3 + 8 * v10 - 8;
  v107 = v37;
  v40 = v37 - v10;
  v109 = v36;
LABEL_30:
  v110 = v10;
  v41 = *(v38 + 8 * v10);
  v42 = v40;
  v43 = v39;
  while (1)
  {
    v44 = *v43;
    v45 = v41;
    v46 = v44;
    [v45 eventTime];
    v48 = v47;
    [v46 eventTime];
    v50 = v49;

    if (v48 >= v50)
    {
LABEL_29:
      v10 = v110 + 1;
      v39 += 8;
      --v40;
      if ((v110 + 1) != v109)
      {
        goto LABEL_30;
      }

      v10 = v109;
      v5 = v106;
      v9 = v107;
      goto LABEL_37;
    }

    if (!v38)
    {
      break;
    }

    v51 = *v43;
    v41 = *(v43 + 8);
    *v43 = v41;
    *(v43 + 8) = v51;
    v43 -= 8;
    if (__CFADD__(v42++, 1))
    {
      goto LABEL_29;
    }
  }

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
}

uint64_t sub_22F0BDE84(void **a1, void **a2, char *a3, void **a4)
{
  v61 = sub_22F0D05BC();
  v8 = *(v61 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v61);
  v60 = &v53 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v59 = &v53 - v12;
  v13 = a2 - a1 + 7;
  if (a2 - a1 >= 0)
  {
    v13 = a2 - a1;
  }

  v14 = v13 >> 3;
  v15 = a3 - a2 + 7;
  if (a3 - a2 >= 0)
  {
    v15 = a3 - a2;
  }

  v16 = v15 >> 3;
  if (v14 >= v15 >> 3)
  {
    if (a4 != a2 || &a2[v16] <= a4)
    {
      memmove(a4, a2, 8 * v16);
    }

    v62 = &a4[v16];
    if (a3 - a2 < 8)
    {
      v33 = a2;
    }

    else
    {
      v33 = a2;
      if (a2 > a1)
      {
        v54 = (v8 + 8);
        v58 = a1;
        v34 = v59;
LABEL_26:
        v53 = v33;
        v35 = v33 - 1;
        a3 -= 8;
        v36 = v62;
        v55 = v33 - 1;
        do
        {
          v37 = a4;
          v38 = (a3 + 8);
          v39 = *--v36;
          v40 = *v35;
          v41 = v39;
          v57 = v41;
          v42 = v40;
          v56 = v42;
          v43 = [v41 signalDate];
          sub_22F0D058C();

          v44 = [v42 signalDate];
          v45 = v60;
          sub_22F0D058C();

          v46 = sub_22F0D059C();
          v47 = *v54;
          v48 = v45;
          v49 = v61;
          (*v54)(v48, v61);
          v47(v34, v49);

          if (v46 == -1)
          {
            a4 = v37;
            v50 = v58;
            v51 = v55;
            if (v38 != v53)
            {
              *a3 = *v55;
            }

            if (v62 <= v37 || (v33 = v51, v51 <= v50))
            {
              v33 = v51;
              goto LABEL_38;
            }

            goto LABEL_26;
          }

          a4 = v37;
          if (v38 != v62)
          {
            *a3 = *v36;
          }

          a3 -= 8;
          v62 = v36;
          v35 = v55;
        }

        while (v36 > v37);
        v62 = v36;
        v33 = v53;
      }
    }
  }

  else
  {
    if (a4 != a1 || &a1[v14] <= a4)
    {
      memmove(a4, a1, 8 * v14);
    }

    v62 = &a4[v14];
    if (a2 - a1 >= 8)
    {
      v17 = a2;
      if (a2 < a3)
      {
        v55 = (v8 + 8);
        v56 = a3;
        v18 = (v8 + 8);
        while (1)
        {
          v58 = a1;
          v19 = *a4;
          v20 = *v17;
          v57 = v20;
          v21 = v19;
          v22 = [v20 signalDate];
          v23 = v59;
          sub_22F0D058C();

          v24 = [v21 signalDate];
          v25 = v60;
          sub_22F0D058C();

          v26 = a4;
          v27 = sub_22F0D059C();
          v28 = v17;
          v29 = *v18;
          v30 = v61;
          (*v18)(v25, v61);
          v29(v23, v30);

          if (v27 != -1)
          {
            break;
          }

          v31 = v28;
          v17 = v28 + 1;
          v32 = v58;
          a4 = v26;
          if (v58 != v28)
          {
            goto LABEL_14;
          }

LABEL_15:
          a1 = v32 + 1;
          if (a4 >= v62 || v17 >= v56)
          {
            goto LABEL_36;
          }
        }

        v31 = v26;
        a4 = v26 + 1;
        v32 = v58;
        v17 = v28;
        if (v58 == v26)
        {
          goto LABEL_15;
        }

LABEL_14:
        *v32 = *v31;
        goto LABEL_15;
      }
    }

LABEL_36:
    v33 = a1;
  }

LABEL_38:
  if (v33 != a4 || v33 >= (a4 + ((v62 - a4 + (v62 - a4 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(v33, a4, 8 * (v62 - a4));
  }

  return 1;
}

uint64_t sub_22F0BE338(void **__dst, id *__src, id *a3, void **a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 3;
  v11 = a3 - __src;
  v12 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 3;
  if (v10 < v12 >> 3)
  {
    if (a4 != __dst || &__dst[v10] <= a4)
    {
      memmove(a4, __dst, 8 * v10);
    }

    v14 = &v4[v10];
    if (v8 < 8)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_35;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v17 = *v4;
      v18 = *v6;
      v19 = v17;
      v20 = v6;
      v21 = _sSo24BMScreenTimeRequestEventC6PeopleE1loiySbAB_ABtFZ_0(v18, v19);

      if (v21)
      {
        break;
      }

      v15 = v4;
      v16 = v7 == v4++;
      v6 = v20;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      ++v7;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v20;
    v6 = v20 + 1;
    if (v7 == v20)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[v13] <= a4)
  {
    memmove(a4, __src, 8 * v13);
  }

  v14 = &v4[v13];
  if (v11 >= 8 && v6 > v7)
  {
    v34 = v4;
LABEL_24:
    v33 = v6;
    v22 = v6 - 1;
    --v5;
    v23 = v14;
    do
    {
      v24 = v5 + 1;
      v25 = *--v23;
      v26 = v22;
      v27 = *v22;
      v28 = v25;
      v29 = v27;
      v30 = _sSo24BMScreenTimeRequestEventC6PeopleE1loiySbAB_ABtFZ_0(v28, v29);

      if (v30)
      {
        v31 = v26;
        if (v24 != v33)
        {
          *v5 = *v26;
        }

        v4 = v34;
        if (v14 <= v34 || (v6 = v31, v31 <= v7))
        {
          v6 = v31;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      if (v24 != v14)
      {
        *v5 = *v23;
      }

      --v5;
      v14 = v23;
      v22 = v26;
    }

    while (v23 > v34);
    v14 = v23;
    v6 = v33;
    v4 = v34;
  }

LABEL_35:
  if (v6 != v4 || v6 >= (v4 + ((v14 - v4 + (v14 - v4 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(v6, v4, 8 * (v14 - v4));
  }

  return 1;
}

uint64_t sub_22F0BE5C0(void **__src, void **a2, id *a3, void **a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = a2 - __src;
  v8 = a2 - __src + 7;
  if (a2 - __src >= 0)
  {
    v8 = a2 - __src;
  }

  v9 = v8 >> 3;
  v10 = a3 - a2;
  v11 = a3 - a2 + 7;
  if (a3 - a2 >= 0)
  {
    v11 = a3 - a2;
  }

  v12 = v11 >> 3;
  if (v9 >= v11 >> 3)
  {
    if (a4 != a2 || &a2[v12] <= a4)
    {
      v25 = a2;
      memmove(a4, a2, 8 * v12);
      a2 = v25;
    }

    v24 = a2;
    v14 = &v4[v12];
    if (v10 >= 8 && a2 > v6)
    {
      v41 = v4;
LABEL_26:
      __dst = v24;
      v26 = v24 - 1;
      --v5;
      v27 = v14;
      do
      {
        v28 = v5 + 1;
        v29 = *--v27;
        v30 = v26;
        v31 = *v26;
        v32 = v29;
        v33 = v31;
        [v32 eventTime];
        v35 = v34;
        [v33 eventTime];
        v37 = v36;

        if (v35 < v37)
        {
          v38 = v30;
          if (v28 != __dst)
          {
            *v5 = *v30;
          }

          v4 = v41;
          if (v14 <= v41 || (v24 = v38, v38 <= v6))
          {
            v24 = v38;
            goto LABEL_37;
          }

          goto LABEL_26;
        }

        if (v28 != v14)
        {
          *v5 = *v27;
        }

        --v5;
        v14 = v27;
        v26 = v30;
      }

      while (v27 > v41);
      v14 = v27;
      v24 = __dst;
      v4 = v41;
    }
  }

  else
  {
    v13 = a2;
    if (a4 != __src || &__src[v9] <= a4)
    {
      memmove(a4, __src, 8 * v9);
    }

    v14 = &v4[v9];
    if (v7 >= 8 && v13 < v5)
    {
      while (1)
      {
        v15 = *v4;
        v16 = *v13;
        v17 = v15;
        [v16 eventTime];
        v19 = v18;
        [v17 eventTime];
        v21 = v20;

        if (v19 >= v21)
        {
          break;
        }

        v22 = v13;
        v23 = v6 == v13++;
        if (!v23)
        {
          goto LABEL_16;
        }

LABEL_17:
        ++v6;
        if (v4 >= v14 || v13 >= v5)
        {
          goto LABEL_19;
        }
      }

      v22 = v4;
      v23 = v6 == v4++;
      if (v23)
      {
        goto LABEL_17;
      }

LABEL_16:
      *v6 = *v22;
      goto LABEL_17;
    }

LABEL_19:
    v24 = v6;
  }

LABEL_37:
  if (v24 != v4 || v24 >= (v4 + ((v14 - v4 + (v14 - v4 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(v24, v4, 8 * (v14 - v4));
  }

  return 1;
}

uint64_t sub_22F0BE880(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_22F0BE90C(v3);
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

unsigned __int8 *sub_22F0BE920(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62 = a1;
  v63 = a2;
  sub_22F0CFF1C();
  result = sub_22F0D0E3C();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_22F0BEEAC();
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
      result = sub_22F0D15DC();
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

uint64_t sub_22F0BEEAC()
{
  v0 = sub_22F0D0E4C();
  v4 = sub_22F0BEF2C(v0, v1, v2, v3);

  return v4;
}

uint64_t sub_22F0BEF2C(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) == 0)
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v15[0] = a3;
      v15[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return sub_22F0D0D4C();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }

    goto LABEL_11;
  }

  v9 = sub_22F0D133C();
  if (!v9)
  {
    v11 = MEMORY[0x277D84F90];
    goto LABEL_13;
  }

  v10 = v9;
  v11 = sub_22F0BBCB8(v9, 0, &qword_27DAA2450, &unk_22F0D58C0);
  v12 = sub_22F0BF094(v15, (v11 + 4), v10, a1, a2, a3, a4);
  sub_22F0CFF1C();

  if (v12 == v10)
  {
LABEL_13:
    v13 = v11[2];
    v14 = sub_22F0D0D4C();
    sub_22F0D00CC();
    return v14;
  }

  __break(1u);
LABEL_11:
  sub_22F0D15DC();
LABEL_4:

  return sub_22F0D0D4C();
}

unint64_t sub_22F0BF094(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_34;
  }

  if (a3 < 0)
  {
    goto LABEL_38;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_34:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    v17 = v12 & 0xC;
    result = v12;
    if (v17 == v15)
    {
      result = sub_22F0BF2B4(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_22F0D0DDC();
      v19 = result;
      if (v17 != v15)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
        if (v17 != v15)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = sub_22F0D15DC();
        }

        v19 = *(result + v18);
        if (v17 != v15)
        {
LABEL_23:
          if ((a7 & 0x1000000000000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_27;
        }
      }
    }

    result = sub_22F0BF2B4(v12, a6, a7);
    v12 = result;
    if ((a7 & 0x1000000000000000) == 0)
    {
LABEL_24:
      v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_29;
    }

LABEL_27:
    if (v23 <= v12 >> 16)
    {
      goto LABEL_37;
    }

    result = sub_22F0D0DBC();
    v12 = result;
LABEL_29:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_34;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_36;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

uint64_t sub_22F0BF2B4(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_22F0D0DEC();
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
    v5 = MEMORY[0x2318FD300](15, a1 >> 16);
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

uint64_t sub_22F0BF330(unint64_t a1, void (*a2)(void *, uint64_t, unint64_t))
{
  if (!(a1 >> 62))
  {
    return a1 & 0xFFFFFFFFFFFFFF8;
  }

  v5 = sub_22F0D143C();
  if (!v5)
  {
LABEL_7:

    return MEMORY[0x277D84F90];
  }

  v6 = v5;
  v7 = sub_22F0BBC1C(v5, 0);
  a2(v7 + 4, v6, a1);
  v9 = v8;

  result = v7;
  if (v9 != v6)
  {
    __break(1u);
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_22F0BF3CC(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_22F0D143C();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_22F0D143C();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_22F000654(&unk_27DAA24C0, &qword_27DAA24B8, &unk_22F0DBF70);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA24B8, &unk_22F0DBF70);
            v9 = sub_22F058984(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_22F01B924(0, &qword_280CBD130, 0x277CF7D30);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_22F0BF56C(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_22F0D143C();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_22F0D143C();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_22F000654(&unk_27DAA24A8, &qword_27DAA24A0, &qword_22F0DBF68);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA24A0, &qword_22F0DBF68);
            v9 = sub_22F058A04(v13, i, a3);
            v11 = *v10;
            swift_unknownObjectRetain();
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1848, &qword_22F0D8120);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_22F0BF708(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_22F0D143C();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_22F0D143C();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_22F000654(&unk_27DAA2490, &qword_27DAA2488, &qword_22F0DBF60);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA2488, &qword_22F0DBF60);
            v9 = sub_22F058984(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_22F01B924(0, &qword_27DAA2480, 0x277CF1448);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_22F0BF8A8(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_22F0D143C();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_22F0D143C();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_22F000654(&qword_27DAA2478, &qword_27DAA2470, &qword_22F0DBF58);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA2470, &qword_22F0DBF58);
            v9 = sub_22F058984(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_22F01B924(0, &qword_27DAA2430, 0x277CF1AC8);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_22F0BFA48(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_22F0D143C();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_22F0D143C();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_22F000654(&unk_27DAA2460, &qword_27DAA2458, &qword_22F0DBF48);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA2458, &qword_22F0DBF48);
            v9 = sub_22F058A8C(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_22F01B924(0, &unk_27DAA23F0, 0x277CF1910);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_22F0BFC38(void *result, _BYTE *a2, uint64_t a3, uint64_t a4)
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

void *sub_22F0BFD34(void *result, void *a2, uint64_t a3, uint64_t a4)
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
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {
        sub_22F0CFF1C();
        goto LABEL_24;
      }

      v11 += 2;
      sub_22F0CFF1C();
      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void *sub_22F0BFE8C(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {
        sub_22F0CFF1C();
        goto LABEL_24;
      }

      v11 += 2;
      sub_22F0CFF1C();
      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void *sub_22F0BFFE4(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = (v12 << 9) | (8 * __clz(__rbit64(v9)));
      v18 = *(*(a4 + 56) + v17);
      v9 &= v9 - 1;
      *v11 = *(*(a4 + 48) + v17);
      v11[1] = v18;
      if (v14 == v10)
      {
        sub_22F0CFF1C();
        goto LABEL_24;
      }

      v11 += 2;
      sub_22F0CFF1C();
      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void *sub_22F0C013C(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v18 = *(*(a4 + 56) + ((v12 << 9) | (8 * v17)));
      *v11 = v18;
      if (v14 == v10)
      {
        v22 = v18;
        goto LABEL_24;
      }

      ++v11;
      v19 = v18;
      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v21 = v12 + 1;
    }

    else
    {
      v21 = (63 - v7) >> 6;
    }

    v12 = v21 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t _sSo24BMScreenTimeRequestEventC6PeopleE1loiySbAB_ABtFZ_0(void *a1, void *a2)
{
  v4 = [a1 requestID];
  v5 = sub_22F0D0CAC();
  v7 = v6;

  v8 = [a2 requestID];
  v9 = sub_22F0D0CAC();
  v11 = v10;

  if (v5 == v9 && v7 == v11)
  {
  }

  else
  {
    v13 = sub_22F0D188C();

    if ((v13 & 1) == 0)
    {
      [a1 eventTime];
      v15 = v14;
      [a2 eventTime];
      return v15 < v16;
    }
  }

  if ([a1 status] == 1 && objc_msgSend(a2, sel_status) != 1 || objc_msgSend(a1, sel_status) == 2 && objc_msgSend(a2, sel_status) == 3)
  {
    return 1;
  }

  if ([a1 status] != 3 || objc_msgSend(a2, sel_status) != 3)
  {
    return 0;
  }

  v18 = [a1 approvalTime];
  return v18 < [a2 approvalTime];
}

uint64_t _s6People011BMStoreDataA0O9logicSortySaySo0bC0_pGAFFZ_0(unint64_t a1)
{
  if (sub_22F0A8B54(a1))
  {
    v2 = sub_22F0CFF1C();
    v10 = sub_22F0BF330(v2, sub_22F0BFA48);
    sub_22F0BBE8C(&v10);
  }

  else if (sub_22F0A8B60(a1))
  {
    v5 = sub_22F0CFF1C();
    v10 = sub_22F0BF330(v5, sub_22F0BF8A8);
    sub_22F0BBDD8(&v10);
  }

  else
  {
    v6 = sub_22F0A8B6C(a1);
    if (v6)
    {
      if (!(v6 >> 62))
      {
        v7 = v6;
        sub_22F0CFF1C();
        sub_22F0D189C();

        return v7;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1158, &unk_22F0DA960);
      v9 = sub_22F0D16AC();

      return v9;
    }

    if (!sub_22F0A8B78(a1))
    {
      return sub_22F0CFF1C();
    }

    v8 = sub_22F0CFF1C();
    v10 = sub_22F0BF330(v8, sub_22F0BF708);
    sub_22F0BBD24(&v10);
  }

  v3 = v10;
  sub_22F0CFF1C();
  if (v3 < 0 || (v3 & 0x4000000000000000) != 0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1158, &unk_22F0DA960);
    v9 = sub_22F0D16AC();

    return v9;
  }

  sub_22F0D189C();
  sub_22F0D00CC();
  return v3;
}

unint64_t sub_22F0C0658()
{
  result = qword_27DAA2410;
  if (!qword_27DAA2410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAA2410);
  }

  return result;
}

unint64_t sub_22F0C06B0()
{
  result = qword_27DAA2418;
  if (!qword_27DAA2418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAA2418);
  }

  return result;
}

uint64_t sub_22F0C0764(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_22F01B924(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_22F0C08A4()
{
  result = qword_27DAA2438;
  if (!qword_27DAA2438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAA2438);
  }

  return result;
}

unint64_t sub_22F0C08F8()
{
  result = qword_27DAA2440;
  if (!qword_27DAA2440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAA2440);
  }

  return result;
}

uint64_t sub_22F0C094C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA2448, &unk_22F0DBF38);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t dispatch thunk of MessageConduitProtocol.sendMessage(details:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 16);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_22F01F1CC;

  return v11(a1, a2, a3);
}

void *sub_22F0C0B34()
{
  type metadata accessor for LaunchRecorderWriter();
  v0 = swift_allocObject();
  swift_defaultActor_initialize();
  v1 = type metadata accessor for UserDefaultsLaunchDiaryWriter();
  v2 = swift_allocObject();
  *(v2 + 16) = 0x694468636E75616CLL;
  *(v2 + 24) = 0xEB00000000797261;
  type metadata accessor for LaunchRecorder();
  result = swift_allocObject();
  result[6] = v1;
  result[7] = &protocol witness table for UserDefaultsLaunchDiaryWriter;
  result[2] = 0;
  result[3] = v2;
  *(v0 + 112) = result;
  qword_280CBD448 = v0;
  return result;
}

uint64_t LaunchRecorderWriter.__allocating_init()()
{
  v0 = swift_allocObject();
  swift_defaultActor_initialize();
  v1 = type metadata accessor for UserDefaultsLaunchDiaryWriter();
  v2 = swift_allocObject();
  *(v2 + 16) = 0x694468636E75616CLL;
  *(v2 + 24) = 0xEB00000000797261;
  type metadata accessor for LaunchRecorder();
  v3 = swift_allocObject();
  v3[6] = v1;
  v3[7] = &protocol witness table for UserDefaultsLaunchDiaryWriter;
  v3[2] = 0;
  v3[3] = v2;
  *(v0 + 112) = v3;
  return v0;
}

uint64_t static LaunchRecorderWriter.sharedInstance.getter()
{
  if (qword_280CBD440 != -1)
  {
    swift_once();
  }

  return sub_22F0CFFAC();
}

uint64_t LaunchRecorderWriter.init()()
{
  swift_defaultActor_initialize();
  v1 = type metadata accessor for UserDefaultsLaunchDiaryWriter();
  v2 = swift_allocObject();
  *(v2 + 16) = 0x694468636E75616CLL;
  *(v2 + 24) = 0xEB00000000797261;
  type metadata accessor for LaunchRecorder();
  v3 = swift_allocObject();
  v3[6] = v1;
  v3[7] = &protocol witness table for UserDefaultsLaunchDiaryWriter;
  v3[2] = 0;
  v3[3] = v2;
  *(v0 + 112) = v3;
  return v0;
}

BOOL sub_22F0C0E4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 112);
  v5 = *(v4 + 16);
  if (v5)
  {
    v9 = *(v4 + 16);
    sub_22F0CFFAC();
    sub_22F05E390(a1, a2, a3);
    sub_22F0D00CC();
  }

  return v5 != 0;
}

uint64_t sub_22F0C0EB0(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 112);
  if (!*(v3 + 16))
  {
    return 0;
  }

  v6 = *(v3 + 16);
  sub_22F0CFFAC();
  LOBYTE(a2) = sub_22F05ECD4(a1, a2);
  sub_22F0D00CC();
  return a2 & 1;
}

uint64_t LaunchRecorderWriter.deinit()
{
  v1 = *(v0 + 112);
  sub_22F0D00CC();
  swift_defaultActor_destroy();
  return v0;
}

uint64_t LaunchRecorderWriter.__deallocating_deinit()
{
  v1 = *(v0 + 112);
  sub_22F0D00CC();
  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t LaunchRecordReader.__allocating_init(withDataWriter:)(uint64_t *a1)
{
  v2 = swift_allocObject();
  type metadata accessor for LaunchRecorder();
  v3 = swift_allocObject();
  v4 = a1[3];
  v5 = a1[4];
  v6 = __swift_mutable_project_boxed_opaque_existential_1(a1, v4);
  v7 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v9);
  v11 = sub_22F036D40(v9, v3, v4, v5);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  *(v2 + 16) = v11;
  return v2;
}

uint64_t LaunchRecordReader.init(withDataWriter:)(uint64_t *a1)
{
  type metadata accessor for LaunchRecorder();
  v3 = swift_allocObject();
  v4 = a1[3];
  v5 = a1[4];
  v6 = __swift_mutable_project_boxed_opaque_existential_1(a1, v4);
  v7 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v9);
  v11 = sub_22F036D40(v9, v3, v4, v5);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  *(v1 + 16) = v11;
  return v1;
}

uint64_t sub_22F0C12AC(uint64_t a1)
{
  result = MEMORY[0x277D84F98];
  v7 = MEMORY[0x277D84F98];
  v4 = *(v1 + 16);
  v5 = *(v4 + 16);
  if (v5)
  {
    v6 = *(v4 + 16);
    sub_22F0CFFAC();
    sub_22F0C14C8(a1, v5, &v7);
    sub_22F0D00CC();
    return v7;
  }

  return result;
}

uint64_t LaunchRecordReader.deinit()
{
  v1 = *(v0 + 16);
  sub_22F0D00CC();
  return v0;
}

uint64_t LaunchRecordReader.__deallocating_deinit()
{
  v1 = *(v0 + 16);
  sub_22F0D00CC();

  return swift_deallocClassInstance();
}

uint64_t sub_22F0C1454(uint64_t a1)
{
  v3 = *v1;
  result = MEMORY[0x277D84F98];
  v8 = MEMORY[0x277D84F98];
  v5 = *(v3 + 16);
  v6 = *(v5 + 16);
  if (v6)
  {
    v7 = *(v5 + 16);
    sub_22F0CFFAC();
    sub_22F0C14C8(a1, v6, &v8);
    sub_22F0D00CC();
    return v8;
  }

  return result;
}

uint64_t sub_22F0C14C8(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v65 = a3;
  v67 = sub_22F0D05BC();
  v62 = *(v67 - 8);
  v5 = v62[8];
  v6 = MEMORY[0x28223BE20](v67);
  v66 = &v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v64 = &v56 - v8;
  v9 = *(a1 + 16);
  result = swift_beginAccess();
  if (!v9)
  {
    return result;
  }

  v61 = v62 + 2;
  v57 = (v62 + 5);
  v58 = (v62 + 4);
  v59 = (v62 + 1);
  v12 = (a1 + 40);
  p_superclass = _TtC6People18RuntimeEnvironment.superclass;
  v14 = qword_280CBEC40;
  *&v11 = 136315138;
  v63 = v11;
  v60 = a2;
  while (1)
  {
    v16 = *(v12 - 1);
    v15 = *v12;
    v17 = p_superclass[391];
    sub_22F0CFF1C();
    if (v17 != -1)
    {
      swift_once();
    }

    v69 = v16;
    v18 = sub_22F0D0A1C();
    __swift_project_value_buffer(v18, v14);
    sub_22F0CFF1C();
    v19 = sub_22F0D09FC();
    v20 = sub_22F0D122C();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v68 = v9;
      v23 = p_superclass;
      v24 = v14;
      v25 = a2;
      v26 = v22;
      v70 = v22;
      *v21 = v63;
      *(v21 + 4) = sub_22F00A560(v69, v15, &v70);
      _os_log_impl(&dword_22EFE1000, v19, v20, "Looking for %s in diary", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v26);
      v27 = v26;
      a2 = v25;
      v14 = v24;
      p_superclass = v23;
      v9 = v68;
      MEMORY[0x2318FE8B0](v27, -1, -1);
      MEMORY[0x2318FE8B0](v21, -1, -1);
    }

    v28 = *(a2 + 16);
    if (!*(v28 + 16))
    {
      goto LABEL_3;
    }

    v29 = *(a2 + 16);
    sub_22F0CFF1C();
    v30 = sub_22EFFDA80(v69, v15);
    if (v31)
    {
      break;
    }

LABEL_3:

LABEL_4:
    v12 += 2;
    if (!--v9)
    {
      return result;
    }
  }

  v32 = *(v28 + 56);
  v68 = v62[9];
  v33 = v62[2];
  v34 = v64;
  v35 = v67;
  v33(v64, v32 + v68 * v30, v67);

  v33(v66, v34, v35);
  sub_22F0CFF1C();
  v36 = v65;
  v37 = *v65;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v39 = *v36;
  v70 = v39;
  v41 = sub_22EFFDA80(v69, v15);
  v42 = *(v39 + 16);
  v43 = (v40 & 1) == 0;
  v44 = v42 + v43;
  if (!__OFADD__(v42, v43))
  {
    v45 = v40;
    if (*(v39 + 24) >= v44)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_22F06091C();
      }

      v14 = qword_280CBEC40;
      v46 = v69;
      v49 = v70;
      if ((v45 & 1) == 0)
      {
        goto LABEL_15;
      }
    }

    else
    {
      sub_22F07B324(v44, isUniquelyReferenced_nonNull_native);
      v46 = v69;
      v47 = sub_22EFFDA80(v69, v15);
      if ((v45 & 1) != (v48 & 1))
      {
        goto LABEL_26;
      }

      v41 = v47;
      v14 = qword_280CBEC40;
      v49 = v70;
      if ((v45 & 1) == 0)
      {
LABEL_15:
        v49[(v41 >> 6) + 8] |= 1 << v41;
        v50 = (v49[6] + 16 * v41);
        *v50 = v46;
        v50[1] = v15;
        v51 = v67;
        (*v58)(v49[7] + v41 * v68, v66, v67);
        v52 = v49[2];
        v53 = __OFADD__(v52, 1);
        v54 = v52 + 1;
        if (v53)
        {
          goto LABEL_25;
        }

        v49[2] = v54;
        goto LABEL_22;
      }
    }

    v51 = v67;
    (*v57)(v49[7] + v41 * v68, v66, v67);

LABEL_22:
    v55 = v64;
    *v65 = v49;
    (*v59)(v55, v51);

    a2 = v60;
    goto LABEL_4;
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  result = sub_22F0D191C();
  __break(1u);
  return result;
}

void sub_22F0C1B7C(char a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = sub_22F0D032C();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a3 + 16))(a3, a1 & 1);
}

uint64_t sub_22F0C1C0C()
{
  v13 = v0;
  if (qword_280CBEC38 != -1)
  {
    swift_once();
  }

  v1 = sub_22F0D0A1C();
  __swift_project_value_buffer(v1, qword_280CBEC40);
  v2 = sub_22F0D09FC();
  v3 = sub_22F0D122C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v12 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_22F00A560(0xD000000000000028, 0x800000022F0DFEF0, &v12);
    _os_log_impl(&dword_22EFE1000, v2, v3, "%s called", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v5);
    MEMORY[0x2318FE8B0](v5, -1, -1);
    MEMORY[0x2318FE8B0](v4, -1, -1);
  }

  else
  {
  }

  v6 = v0[2];
  v7 = swift_task_alloc();
  v0[3] = v7;
  *(v7 + 16) = v6;
  v8 = *(MEMORY[0x277D85A40] + 4);
  v9 = swift_task_alloc();
  v0[4] = v9;
  *v9 = v0;
  v9[1] = sub_22F0C1E28;
  v10 = MEMORY[0x277D839B0];

  return MEMORY[0x2822008A0](v0 + 6, 0, 0, 0xD000000000000028, 0x800000022F0DFEF0, sub_22F0C3100, v7, v10);
}

uint64_t sub_22F0C1E28()
{
  v2 = *v1;
  v3 = *(*v1 + 32);
  v7 = *v1;
  *(*v1 + 40) = v0;

  if (v0)
  {
    v4 = sub_22F0C1F60;
  }

  else
  {
    v5 = *(v2 + 24);

    v4 = sub_22F0C1F44;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_22F0C1F60()
{
  v1 = v0[3];

  v2 = v0[1];
  v3 = v0[5];

  return v2(0);
}

void sub_22F0C1FC8(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  sub_22F0CFFAC();
  v7 = a3;
  v6(a2, a3);
  sub_22F0D00CC();
}

uint64_t sub_22F0C2078(void *a1, int a2, void *aBlock, uint64_t a4, uint64_t a5, void (*a6)(uint64_t, uint64_t))
{
  v9 = _Block_copy(aBlock);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  v11 = a1;
  a6(a5, v10);

  return sub_22F0D00CC();
}

uint64_t sub_22F0C2128()
{
  v13 = v0;
  if (qword_280CBEC38 != -1)
  {
    swift_once();
  }

  v1 = sub_22F0D0A1C();
  __swift_project_value_buffer(v1, qword_280CBEC40);
  v2 = sub_22F0D09FC();
  v3 = sub_22F0D122C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v12 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_22F00A560(0xD00000000000002DLL, 0x800000022F0DFF20, &v12);
    _os_log_impl(&dword_22EFE1000, v2, v3, "%s called", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v5);
    MEMORY[0x2318FE8B0](v5, -1, -1);
    MEMORY[0x2318FE8B0](v4, -1, -1);
  }

  else
  {
  }

  v6 = v0[2];
  v7 = swift_task_alloc();
  v0[3] = v7;
  *(v7 + 16) = v6;
  v8 = *(MEMORY[0x277D85A40] + 4);
  v9 = swift_task_alloc();
  v0[4] = v9;
  *v9 = v0;
  v9[1] = sub_22F0C2344;
  v10 = MEMORY[0x277D839B0];

  return MEMORY[0x2822008A0](v0 + 6, 0, 0, 0xD00000000000002DLL, 0x800000022F0DFF20, sub_22F0C33E8, v7, v10);
}

uint64_t sub_22F0C2344()
{
  v2 = *v1;
  v3 = *(*v1 + 32);
  v7 = *v1;
  *(*v1 + 40) = v0;

  if (v0)
  {
    v4 = sub_22F0C39A4;
  }

  else
  {
    v5 = *(v2 + 24);

    v4 = sub_22F0C39BC;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

void sub_22F0C2460(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, SEL *a6)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA24E0, &qword_22F0DC0A0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = aBlock - v14;
  (*(v12 + 16))(aBlock - v14, a1, v11);
  v16 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v17 = swift_allocObject();
  (*(v12 + 32))(v17 + v16, v15, v11);
  aBlock[4] = a4;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22F0C1FC8;
  aBlock[3] = a5;
  v18 = _Block_copy(aBlock);
  sub_22F0D00CC();
  [a2 *a6];
  _Block_release(v18);
}

void sub_22F0C260C(uint64_t a1, void (*a2)(uint64_t, void *))
{
  v3 = *a1;
  if (*(a1 + 8))
  {
    v6 = *a1;
    v4 = v3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA0870, &qword_22F0D2CB0);
    swift_willThrowTypedImpl();
    v5 = v3;
    a2(0, v3);
    sub_22F00CED8(v3, 1);
    sub_22F00CED8(v3, 1);
  }

  else
  {
    a2(*a1 & 1, 0);
  }
}

uint64_t PeopleClient.sendFamilyAskToBuyIMessage(id:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_22F0C27A0, 0, 0);
}

uint64_t sub_22F0C27A0()
{
  v15 = v0;
  if (qword_280CBEC38 != -1)
  {
    swift_once();
  }

  v1 = sub_22F0D0A1C();
  __swift_project_value_buffer(v1, qword_280CBEC40);
  v2 = sub_22F0D09FC();
  v3 = sub_22F0D122C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v14 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_22F00A560(0xD00000000000001FLL, 0x800000022F0DFF50, &v14);
    _os_log_impl(&dword_22EFE1000, v2, v3, "%s called", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v5);
    MEMORY[0x2318FE8B0](v5, -1, -1);
    MEMORY[0x2318FE8B0](v4, -1, -1);
  }

  else
  {
  }

  v7 = v0[3];
  v6 = v0[4];
  v8 = v0[2];
  v9 = swift_task_alloc();
  v0[5] = v9;
  v9[2] = v6;
  v9[3] = v8;
  v9[4] = v7;
  v10 = *(MEMORY[0x277D85A40] + 4);
  v11 = swift_task_alloc();
  v0[6] = v11;
  *v11 = v0;
  v11[1] = sub_22F0C29C4;
  v12 = MEMORY[0x277D839B0];

  return MEMORY[0x2822008A0](v0 + 8, 0, 0, 0xD00000000000001FLL, 0x800000022F0DFF50, sub_22F0C36F4, v9, v12);
}

uint64_t sub_22F0C29C4()
{
  v2 = *v1;
  v3 = *(*v1 + 48);
  v7 = *v1;
  *(*v1 + 56) = v0;

  if (v0)
  {
    v4 = sub_22F0C2AFC;
  }

  else
  {
    v5 = *(v2 + 40);

    v4 = sub_22F0C2AE0;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_22F0C2AFC()
{
  v1 = v0[5];

  v2 = v0[1];
  v3 = v0[7];

  return v2(0);
}

void sub_22F0C2B64(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA24E0, &qword_22F0DC0A0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = aBlock - v7;
  v9 = sub_22F0D0C7C();
  (*(v5 + 16))(v8, a1, v4);
  v10 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v11 = swift_allocObject();
  (*(v5 + 32))(v11 + v10, v8, v4);
  aBlock[4] = sub_22F0C3754;
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22F0C1FC8;
  aBlock[3] = &block_descriptor_13;
  v12 = _Block_copy(aBlock);
  sub_22F0D00CC();
  [a2 sendFamilyAskToBuyIMessageWithRequestID:v9 completion:v12];
  _Block_release(v12);
}

uint64_t sub_22F0C2D34(int a1, id a2)
{
  if (a2)
  {
    v2 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA24E0, &qword_22F0DC0A0);
    return sub_22F0D107C();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA24E0, &qword_22F0DC0A0);
    return sub_22F0D108C();
  }
}

PeopleClient __swiftcall PeopleClient.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

uint64_t _sSo12PeopleClientC0A0E38canSendFamilyScreenTimeRequestIMessage10completionyySb_s5Error_pSgtc_tF_0(uint64_t a1, uint64_t a2)
{
  if (qword_280CBEC38 != -1)
  {
    swift_once();
  }

  v4 = sub_22F0D0A1C();
  __swift_project_value_buffer(v4, qword_280CBEC40);
  v5 = sub_22F0D09FC();
  v6 = sub_22F0D122C();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v18 = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_22F00A560(0xD000000000000033, 0x800000022F0E0040, &v18);
    _os_log_impl(&dword_22EFE1000, v5, v6, "%s called", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v8);
    MEMORY[0x2318FE8B0](v8, -1, -1);
    MEMORY[0x2318FE8B0](v7, -1, -1);
  }

  v9 = [objc_opt_self() mainBundle];
  v10 = [v9 bundleIdentifier];

  if (v10)
  {
    v11 = sub_22F0D0CAC();
    v13 = v12;

    if (v11 == 0xD000000000000010 && 0x800000022F0DFFB0 == v13)
    {
    }

    else
    {
      v15 = sub_22F0D188C();

      if ((v15 & 1) == 0)
      {
        LOBYTE(v10) = 0;
        goto LABEL_14;
      }
    }

    LOBYTE(v10) = 1;
  }

LABEL_14:
  if (qword_27DAA0518 != -1)
  {
    swift_once();
  }

  v19 = v10;
  v16 = swift_allocObject();
  *(v16 + 16) = a1;
  *(v16 + 24) = a2;
  sub_22F0C3948();
  sub_22F0CFFAC();
  sub_22F0D08EC();
  return sub_22F0D00CC();
}

uint64_t _sSo12PeopleClientC0A0E29canSendFamilyAskToBuyIMessage10completionyySb_s5Error_pSgtc_tF_0(uint64_t a1, uint64_t a2)
{
  if (qword_280CBEC38 != -1)
  {
    swift_once();
  }

  v4 = sub_22F0D0A1C();
  __swift_project_value_buffer(v4, qword_280CBEC40);
  v5 = sub_22F0D09FC();
  v6 = sub_22F0D122C();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v18 = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_22F00A560(0xD00000000000002ALL, 0x800000022F0E0010, &v18);
    _os_log_impl(&dword_22EFE1000, v5, v6, "%s called", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v8);
    MEMORY[0x2318FE8B0](v8, -1, -1);
    MEMORY[0x2318FE8B0](v7, -1, -1);
  }

  v9 = [objc_opt_self() mainBundle];
  v10 = [v9 bundleIdentifier];

  if (v10)
  {
    v11 = sub_22F0D0CAC();
    v13 = v12;

    if (v11 == 0xD000000000000010 && 0x800000022F0DFFB0 == v13)
    {
    }

    else
    {
      v15 = sub_22F0D188C();

      if ((v15 & 1) == 0)
      {
        LOBYTE(v10) = 0;
        goto LABEL_14;
      }
    }

    LOBYTE(v10) = 1;
  }

LABEL_14:
  if (qword_27DAA0518 != -1)
  {
    swift_once();
  }

  v19 = v10;
  v16 = swift_allocObject();
  *(v16 + 16) = a1;
  *(v16 + 24) = a2;
  sub_22F0C3860();
  sub_22F0CFFAC();
  sub_22F0D08EC();
  return sub_22F0D00CC();
}

uint64_t _sSo12PeopleClientC0A0E26sendFamilyAskToBuyIMessage13withRequestID10completionySS_ySb_s5Error_pSgtctF_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (qword_280CBEC38 != -1)
  {
    swift_once();
  }

  v8 = sub_22F0D0A1C();
  __swift_project_value_buffer(v8, qword_280CBEC40);
  v9 = sub_22F0D09FC();
  v10 = sub_22F0D122C();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v22[0] = v12;
    *v11 = 136315138;
    *(v11 + 4) = sub_22F00A560(0xD000000000000035, 0x800000022F0DFFD0, v22);
    _os_log_impl(&dword_22EFE1000, v9, v10, "%s called", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v12);
    MEMORY[0x2318FE8B0](v12, -1, -1);
    MEMORY[0x2318FE8B0](v11, -1, -1);
  }

  v13 = [objc_opt_self() mainBundle];
  v14 = [v13 bundleIdentifier];

  if (v14)
  {
    v15 = sub_22F0D0CAC();
    v17 = v16;

    if (v15 == 0xD000000000000010 && 0x800000022F0DFFB0 == v17)
    {
    }

    else
    {
      v19 = sub_22F0D188C();

      if ((v19 & 1) == 0)
      {
        LOBYTE(v14) = 0;
        goto LABEL_14;
      }
    }

    LOBYTE(v14) = 1;
  }

LABEL_14:
  if (qword_27DAA0518 != -1)
  {
    swift_once();
  }

  v22[0] = a1;
  v22[1] = a2;
  v23 = v14;
  v20 = swift_allocObject();
  *(v20 + 16) = a3;
  *(v20 + 24) = a4;
  sub_22F0C378C();
  sub_22F0CFF1C();
  sub_22F0CFFAC();
  sub_22F0D08EC();
  sub_22F0D00CC();
}

void sub_22F0C36F4(uint64_t a1)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  sub_22F0C2B64(a1, *(v1 + 16));
}

unint64_t type metadata accessor for PeopleClient()
{
  result = qword_27DAA24D8;
  if (!qword_27DAA24D8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27DAA24D8);
  }

  return result;
}

uint64_t block_copy_helper_13(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_22F0CFFAC();
}

unint64_t sub_22F0C378C()
{
  result = qword_27DAA24E8;
  if (!qword_27DAA24E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAA24E8);
  }

  return result;
}

unint64_t sub_22F0C3860()
{
  result = qword_27DAA24F0;
  if (!qword_27DAA24F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAA24F0);
  }

  return result;
}

uint64_t objectdestroy_17Tm()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA24E0, &qword_22F0DC0A0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

unint64_t sub_22F0C3948()
{
  result = qword_27DAA24F8;
  if (!qword_27DAA24F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAA24F8);
  }

  return result;
}

uint64_t sub_22F0C39C0(uint64_t result, uint64_t *a2)
{
  v3 = result;
  v4 = 0;
  v5 = result + 64;
  v6 = 1 << *(result + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(result + 64);
  v9 = (v6 + 63) >> 6;
  v10 = MEMORY[0x277D84F90];
  v20 = result;
  if (v8)
  {
LABEL_10:
    while (1)
    {
      v12 = (*(v3 + 48) + ((v4 << 10) | (16 * __clz(__rbit64(v8)))));
      v13 = *v12;
      v14 = v12[1];
      v22[0] = *v12;
      v22[1] = v14;
      sub_22F0CFF1C();
      v15 = sub_22F0C8190(v22, a2);
      if (v2)
      {
        break;
      }

      v8 &= v8 - 1;
      if (v15)
      {
        result = swift_isUniquelyReferenced_nonNull_native();
        v23 = v10;
        if ((result & 1) == 0)
        {
          result = sub_22EFFC4E8(0, *(v10 + 16) + 1, 1);
          v10 = v23;
        }

        v17 = *(v10 + 16);
        v16 = *(v10 + 24);
        v18 = v17 + 1;
        if (v17 >= v16 >> 1)
        {
          result = sub_22EFFC4E8((v16 > 1), v17 + 1, 1);
          v18 = v17 + 1;
          v10 = v23;
        }

        *(v10 + 16) = v18;
        v19 = v10 + 16 * v17;
        *(v19 + 32) = v13;
        *(v19 + 40) = v14;
        v3 = v20;
        if (!v8)
        {
          goto LABEL_6;
        }
      }

      else
      {

        if (!v8)
        {
          goto LABEL_6;
        }
      }
    }

    sub_22F0D00CC();
    sub_22F0D00CC();

    return v10;
  }

  else
  {
LABEL_6:
    while (1)
    {
      v11 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      if (v11 >= v9)
      {
        sub_22F0D00CC();
        return v10;
      }

      v8 = *(v5 + 8 * v11);
      ++v4;
      if (v8)
      {
        v4 = v11;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_22F0C3B7C(uint64_t *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t *a5)
{
  v198 = a5;
  v205 = a4;
  v196 = type metadata accessor for MotionPersonStatus(0);
  v8 = *(*(v196 - 8) + 64);
  MEMORY[0x28223BE20](v196);
  v199 = &v186 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for LocationItem(0);
  v203 = *(v10 - 8);
  v11 = *(v203 + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v194 = (&v186 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v12);
  v204 = (&v186 - v14);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAA1170, &unk_22F0D5A60);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v186 - v18;
  v208 = sub_22F0D05BC();
  v211 = *(v208 - 8);
  isa = v211[8].isa;
  v21 = MEMORY[0x28223BE20](v208);
  v201 = &v186 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v21);
  v195 = &v186 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v206 = &v186 - v26;
  v27 = MEMORY[0x28223BE20](v25);
  v213 = &v186 - v28;
  v29 = MEMORY[0x28223BE20](v27);
  v209 = &v186 - v30;
  MEMORY[0x28223BE20](v29);
  v32 = &v186 - v31;
  v210 = type metadata accessor for PeopleLocation();
  v33 = *(v210 - 8);
  v34 = *(v33 + 64);
  v35 = MEMORY[0x28223BE20](v210);
  v193 = &v186 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = MEMORY[0x28223BE20](v35);
  v200 = &v186 - v38;
  v39 = MEMORY[0x28223BE20](v37);
  v202 = (&v186 - v40);
  v41 = MEMORY[0x28223BE20](v39);
  v43 = &v186 - v42;
  result = MEMORY[0x28223BE20](v41);
  v212 = (&v186 - v45);
  if (*(a2 + 16))
  {
    v46 = a1[1];
    v197 = *a1;
    v207 = v46;
    result = sub_22EFFDA80(v197, v46);
    if (v47)
    {
      sub_22F0CE0BC(*(a2 + 56) + *(v33 + 72) * result, v43, type metadata accessor for PeopleLocation);
      v48 = v212;
      sub_22F0CE00C(v43, v212, type metadata accessor for PeopleLocation);
      v49 = *(v210 + 20);
      if (qword_27DAA0648 != -1)
      {
        swift_once();
      }

      __swift_project_value_buffer(v15, qword_27DAA21F8);
      sub_22F0D05AC();
      v50 = [objc_opt_self() seconds];
      sub_22F0D019C();

      sub_22F0D018C();
      (*(v16 + 8))(v19, v15);
      v190 = v49;
      v51 = v209;
      sub_22F0D054C();
      LOBYTE(v50) = sub_22F0D053C();
      v53 = v211 + 1;
      v52 = v211[1].isa;
      v54 = v208;
      v52(v51, v208);
      v52(v32, v54);
      if (v50)
      {
        v192 = v52;
        v55 = v53;
        if (qword_280CBDB48 != -1)
        {
          swift_once();
        }

        v56 = sub_22F0D0A1C();
        __swift_project_value_buffer(v56, qword_280CBDB50);
        v57 = v207;
        sub_22F0CFF1C();
        v58 = sub_22F0D09FC();
        v59 = sub_22F0D124C();

        if (os_log_type_enabled(v58, v59))
        {
          v60 = swift_slowAlloc();
          v61 = swift_slowAlloc();
          *&v215 = v61;
          *v60 = 136315138;
          *(v60 + 4) = sub_22F00A560(v197, v57, &v215);
          _os_log_impl(&dword_22EFE1000, v58, v59, "%s: queued for refresh", v60, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v61);
          v62 = v61;
          v48 = v212;
          MEMORY[0x2318FE8B0](v62, -1, -1);
          MEMORY[0x2318FE8B0](v60, -1, -1);
        }

        v53 = v55;
        v52 = v192;
      }

      sub_22F0D05AC();
      v63 = v197;
      if (*(a3 + 16))
      {
        v64 = v207;
        swift_bridgeObjectRetain_n();
        v65 = sub_22EFFDA80(v63, v64);
        if (v66)
        {
          v191 = v53;
          v67 = (*(a3 + 56) + 16 * v65);
          v68 = v67[1];
          if (*(v48 + 8))
          {
            v69 = *v48;
            v70 = *(v48 + 8);
          }

          v187 = *v67;
          sub_22F0CFF1C();
          sub_22F0CFF1C();
          v84 = String.trimToNil()();
          countAndFlagsBits = v84.value._countAndFlagsBits;

          object = v84.value._object;
          v192 = v52;
          if (!v84.value._object)
          {

            v118 = v207;

            if (qword_280CBDB48 != -1)
            {
              swift_once();
            }

            v119 = sub_22F0D0A1C();
            __swift_project_value_buffer(v119, qword_280CBDB50);
            v120 = v193;
            sub_22F0CE0BC(v48, v193, type metadata accessor for PeopleLocation);
            sub_22F0CFF1C();
            v121 = sub_22F0D09FC();
            v122 = sub_22F0D123C();

            if (os_log_type_enabled(v121, v122))
            {
              v123 = swift_slowAlloc();
              v124 = swift_slowAlloc();
              v125 = swift_slowAlloc();
              *&v215 = v125;
              *v123 = 136315650;
              *(v123 + 4) = sub_22F00A560(0xD00000000000002CLL, 0x800000022F0E01E0, &v215);
              *(v123 + 12) = 2080;
              *(v123 + 14) = sub_22F00A560(v63, v118, &v215);
              *(v123 + 22) = 2112;
              v126 = *&v120[*(v210 + 32)];
              sub_22F0CE124(v120, type metadata accessor for PeopleLocation);
              *(v123 + 24) = v126;
              *v124 = v126;
              v127 = v210;
              _os_log_impl(&dword_22EFE1000, v121, v122, "%s %s: no location display! latlng %@", v123, 0x20u);
              sub_22F003A4C(v124, &qword_27DAA1260, &qword_22F0D5F48);
              v128 = v124;
              v54 = v208;
              MEMORY[0x2318FE8B0](v128, -1, -1);
              swift_arrayDestroy();
              v129 = v125;
              v48 = v212;
              MEMORY[0x2318FE8B0](v129, -1, -1);
              MEMORY[0x2318FE8B0](v123, -1, -1);
            }

            else
            {

              sub_22F0CE124(v120, type metadata accessor for PeopleLocation);
              v127 = v210;
            }

            v135 = *(v48 + v127[8]);
            v136 = *(v48 + v127[7]);
            v137 = v202;
            (v211[2].isa)(v202 + v127[5], &v190[v48], v54);
            *v137 = xmmword_22F0D84B0;
            *(v137 + v127[6]) = 0;
            *(v137 + v127[7]) = v136;
            *(v137 + v127[8]) = v135;
            v138 = v135;
            v139 = v194;
            LocationItem.init(with:for:)(v137, v63, v118, v194);
            v140 = v205;
            v141 = *v205;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            *v140 = v141;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v141 = sub_22F03D7C4(0, v141[2] + 1, 1, v141);
              *v205 = v141;
            }

            v144 = v141[2];
            v143 = v141[3];
            if (v144 >= v143 >> 1)
            {
              v185 = sub_22F03D7C4(v143 > 1, v144 + 1, 1, v141);
              *v205 = v185;
            }

            v192(v213, v54);
            v145 = *v205;
            *(v145 + 16) = v144 + 1;
            sub_22F0CE00C(v139, v145 + ((*(v203 + 80) + 32) & ~*(v203 + 80)) + *(v203 + 72) * v144, type metadata accessor for LocationItem);
            return sub_22F0CE124(v48, type metadata accessor for PeopleLocation);
          }

          v186 = v68;
          v85 = v207;

          v86 = v211[2].isa;
          v194 = v211 + 2;
          v193 = v86;
          (v86)(v206, &v190[v48], v54);
          v87 = v202;
          sub_22F0CE0BC(v48, v202, type metadata accessor for PeopleLocation);
          LocationItem.init(with:for:)(v87, v63, v85, v204);
          v88 = v205;
          v89 = *v205;
          v90 = swift_isUniquelyReferenced_nonNull_native();
          *v88 = v89;
          if ((v90 & 1) == 0)
          {
            v89 = sub_22F03D7C4(0, v89[2] + 1, 1, v89);
            *v205 = v89;
          }

          v92 = v89[2];
          v91 = v89[3];
          v93 = v210;
          if (v92 >= v91 >> 1)
          {
            v89 = sub_22F03D7C4(v91 > 1, v92 + 1, 1, v89);
            *v205 = v89;
          }

          v89[2] = v92 + 1;
          sub_22F0CE00C(v204, v89 + ((*(v203 + 80) + 32) & ~*(v203 + 80)) + *(v203 + 72) * v92, type metadata accessor for LocationItem);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA0E38, &qword_22F0D5008);
          v94 = swift_allocObject();
          *(v94 + 16) = xmmword_22F0D2BF0;
          v95 = v193;
          (v193)(v32, v213, v54);
          (v95)(v209, v206, v54);
          v96 = *(v48 + *(v93 + 28));
          v204 = type metadata accessor for PeopleFeatureFlags();
          v97 = swift_allocObject();
          v98 = v93;
          v99 = v54;
          *(v97 + 16) = sub_22F07CF94(MEMORY[0x277D84F90]);
          v100 = qword_280CBEEF0;
          v101 = object;
          sub_22F0CFF1C();
          sub_22F0CFFAC();
          if (v100 != -1)
          {
            swift_once();
          }

          v102 = (*off_280CBEEF8 + 136);
          v203 = *v102;
          v202 = v102;
          v103 = (v203)();
          sub_22F0D00CC();
          swift_beginAccess();
          v104 = *(v97 + 16);
          *(v97 + 16) = v103;

          v105 = type metadata accessor for LocationPersonStatus(0);
          *(v94 + 56) = v105;
          *(v94 + 64) = sub_22F0CE074(&qword_27DAA0A28, type metadata accessor for LocationPersonStatus);
          v205 = v94;
          boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm((v94 + 32));
          *boxed_opaque_existential_1Tm = countAndFlagsBits;
          boxed_opaque_existential_1Tm[1] = v101;
          v107 = v211 + 4;
          v108 = v211[4].isa;
          (v108)(boxed_opaque_existential_1Tm + v105[5], v32, v99);
          v109 = boxed_opaque_existential_1Tm + v105[6];
          v211 = v107;
          (v108)(v109, v209, v99);
          *(boxed_opaque_existential_1Tm + v105[7]) = v97;
          *(boxed_opaque_existential_1Tm + v105[8]) = v96;
          v110 = *(v212 + *(v98 + 24));
          if (!v110)
          {
            v130 = 0xE900000000000029;
            v209 = 0x6E776F6E6B6E7528;
            v131 = v207;
            v132 = v208;
            v133 = v200;
            v114 = v198;
            v134 = v205;
LABEL_56:
            v159 = *v114;
            v160 = swift_isUniquelyReferenced_nonNull_native();
            *&v215 = *v114;
            *v114 = 0x8000000000000000;
            sub_22F017DA8(v134, v187, v186, v160);

            *v114 = v215;
            v161 = v201;
            if (qword_280CBDB48 != -1)
            {
              swift_once();
            }

            v162 = sub_22F0D0A1C();
            __swift_project_value_buffer(v162, qword_280CBDB50);
            sub_22F0CE0BC(v212, v133, type metadata accessor for PeopleLocation);
            v163 = v206;
            (v193)(v161, v206, v132);
            sub_22F0CFF1C();
            v164 = object;
            sub_22F0CFF1C();
            sub_22F0CFF1C();
            v165 = sub_22F0D09FC();
            v166 = sub_22F0D124C();

            LODWORD(v208) = v166;
            v211 = v165;
            if (os_log_type_enabled(v165, v166))
            {
              v167 = v133;
              v168 = swift_slowAlloc();
              v207 = swift_slowAlloc();
              v214 = v207;
              *v168 = 136316419;
              *(v168 + 4) = sub_22F00A560(0xD00000000000002CLL, 0x800000022F0E01E0, &v214);
              *(v168 + 12) = 2081;
              *(v168 + 14) = sub_22F00A560(v197, v131, &v214);
              *(v168 + 22) = 2080;
              v169 = sub_22F00A560(countAndFlagsBits, v164, &v214);

              *(v168 + 24) = v169;
              *(v168 + 32) = 2080;
              v170 = *(v167 + *(v210 + 32));
              *&v215 = 0;
              *(&v215 + 1) = 0xE000000000000000;
              [v170 coordinate];
              sub_22F0D111C();
              MEMORY[0x2318FD2C0](8236, 0xE200000000000000);
              [v170 coordinate];
              sub_22F0D111C();
              v171 = v215;
              sub_22F0CE124(v200, type metadata accessor for PeopleLocation);
              v172 = sub_22F00A560(v171, *(&v171 + 1), &v214);

              *(v168 + 34) = v172;
              *(v168 + 42) = 2080;
              v173 = sub_22F00A560(v209, v130, &v214);

              *(v168 + 44) = v173;
              *(v168 + 52) = 2080;
              sub_22F0CE074(&qword_27DAA1670, MEMORY[0x277CC9578]);
              v174 = v201;
              v175 = sub_22F0D183C();
              v177 = v176;
              v178 = v174;
              v179 = v192;
              v192(v178, v132);
              v180 = sub_22F00A560(v175, v177, &v214);

              *(v168 + 54) = v180;
              v181 = v211;
              _os_log_impl(&dword_22EFE1000, v211, v208, "%s %{private}s: %s, [%s] %s // %s", v168, 0x3Eu);
              v182 = v207;
              swift_arrayDestroy();
              MEMORY[0x2318FE8B0](v182, -1, -1);
              v183 = v168;
              v48 = v212;
              MEMORY[0x2318FE8B0](v183, -1, -1);

              v179(v206, v132);
              v179(v213, v132);
            }

            else
            {

              v184 = v192;
              v192(v161, v132);
              v184(v163, v132);
              v184(v213, v132);
              sub_22F0CE124(v133, type metadata accessor for PeopleLocation);
              v48 = v212;
            }

            return sub_22F0CE124(v48, type metadata accessor for PeopleLocation);
          }

          v111 = 0;
          v112 = 0xE000000000000000;
          *&v215 = 0;
          *(&v215 + 1) = 0xE000000000000000;
          v113 = v206;
          v114 = v198;
          v190 = v108;
          if (v110 <= 2)
          {
            v115 = v208;
            v116 = v196;
            if (v110 == 1)
            {
              v112 = 0xEA00000000007972;
              v111 = 0x616E6F6974617473;
              goto LABEL_51;
            }

            if (v110 == 2)
            {
              v112 = 0xE700000000000000;
              v117 = 1802264951;
              goto LABEL_50;
            }
          }

          else
          {
            v115 = v208;
            v116 = v196;
            switch(v110)
            {
              case 5:
                v112 = 0xE700000000000000;
                v117 = 1986622052;
                goto LABEL_50;
              case 4:
                v112 = 0xE700000000000000;
                v117 = 1818458467;
                goto LABEL_50;
              case 3:
                v112 = 0xE700000000000000;
                v117 = 1852732786;
LABEL_50:
                v111 = v117 | 0x676E6900000000;
                break;
            }
          }

LABEL_51:
          MEMORY[0x2318FD2C0](v111, v112);

          v130 = *(&v215 + 1);
          v209 = v215;
          v146 = v195;
          (v193)(v195, v113, v115);
          v147 = swift_allocObject();
          *(v147 + 16) = sub_22F07CF94(MEMORY[0x277D84F90]);
          v148 = sub_22F0CFFAC();
          v149 = (v203)(v148);
          sub_22F0D00CC();
          swift_beginAccess();
          v150 = *(v147 + 16);
          *(v147 + 16) = v149;
          v132 = v208;

          v151 = v199;
          (v190)(v199, v146, v132);
          v152 = 0x20100030405uLL >> (8 * v110);
          if (v110 >= 6)
          {
            LOBYTE(v152) = 5;
          }

          *(v151 + *(v116 + 20)) = v152;
          *(v151 + *(v116 + 24)) = v147;
          v154 = v205[2];
          v153 = v205[3];
          if (v154 >= v153 >> 1)
          {
            v205 = sub_22F03CB00((v153 > 1), v154 + 1, 1, v205);
          }

          v133 = v200;
          v216 = v116;
          v217 = sub_22F0CE074(&qword_27DAA0A50, type metadata accessor for MotionPersonStatus);
          v155 = __swift_allocate_boxed_opaque_existential_1Tm(&v215);
          v156 = v199;
          sub_22F0CE0BC(v199, v155, type metadata accessor for MotionPersonStatus);
          v157 = v205;
          v205[2] = v154 + 1;
          v158 = &v157[5 * v154];
          v134 = v157;
          sub_22EFE6B9C(&v215, (v158 + 4));
          sub_22F0CE124(v156, type metadata accessor for MotionPersonStatus);
          v131 = v207;
          goto LABEL_56;
        }

        swift_bridgeObjectRelease_n();
      }

      if (qword_280CBDB48 != -1)
      {
        swift_once();
      }

      v71 = sub_22F0D0A1C();
      __swift_project_value_buffer(v71, qword_280CBDB50);
      v72 = v207;
      sub_22F0CFF1C();
      v73 = sub_22F0D09FC();
      v74 = sub_22F0D123C();

      if (os_log_type_enabled(v73, v74))
      {
        v75 = swift_slowAlloc();
        v76 = swift_slowAlloc();
        v191 = v53;
        v77 = v72;
        v78 = v52;
        v79 = v54;
        v80 = v48;
        v81 = v63;
        v82 = v76;
        *&v215 = v76;
        *v75 = 136315394;
        *(v75 + 4) = sub_22F00A560(0xD00000000000002CLL, 0x800000022F0E01E0, &v215);
        *(v75 + 12) = 2080;
        v83 = v81;
        v48 = v80;
        *(v75 + 14) = sub_22F00A560(v83, v77, &v215);
        _os_log_impl(&dword_22EFE1000, v73, v74, "%s %s: internal error mapping handle to id", v75, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x2318FE8B0](v82, -1, -1);
        MEMORY[0x2318FE8B0](v75, -1, -1);

        v78(v213, v79);
      }

      else
      {

        v52(v213, v54);
      }

      return sub_22F0CE124(v48, type metadata accessor for PeopleLocation);
    }
  }

  return result;
}

uint64_t static LocateFriend.statusFromFMCache(for:with:friendLocateProvider:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[17] = a2;
  v3[18] = a3;
  v3[16] = a1;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA17E8, &qword_22F0D7CC8) - 8) + 64) + 15;
  v3[19] = swift_task_alloc();
  v3[20] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22F0C5494, 0, 0);
}

uint64_t sub_22F0C5494()
{
  v1 = *(v0 + 144);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  v4 = *(v3 + 8);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v0 + 168) = v6;
  *v6 = v0;
  v6[1] = sub_22F0C55C0;

  return v8(v0 + 56, v2, v3);
}

uint64_t sub_22F0C55C0()
{
  v1 = *(*v0 + 168);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_22F0C56BC, 0, 0);
}

uint64_t sub_22F0C56BC()
{
  v46 = v0;
  v1 = v0;
  if (!*(v0 + 80))
  {
    sub_22F003A4C(v0 + 56, &qword_27DAA2500, &qword_22F0DC0C8);
    if (qword_280CBDB48 != -1)
    {
      swift_once();
    }

    v27 = sub_22F0D0A1C();
    __swift_project_value_buffer(v27, qword_280CBDB50);
    v28 = sub_22F0D09FC();
    v29 = sub_22F0D123C();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v45[0] = v31;
      *v30 = 136315138;
      *(v30 + 4) = sub_22F00A560(0xD000000000000031, 0x800000022F0E0080, v45);
      _os_log_impl(&dword_22EFE1000, v28, v29, "%s No session", v30, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v31);
      MEMORY[0x2318FE8B0](v31, -1, -1);
      MEMORY[0x2318FE8B0](v30, -1, -1);
    }

    v32 = sub_22F07D7A0(MEMORY[0x277D84F90]);
    v34 = *(v0 + 152);
    v33 = *(v0 + 160);

    v35 = *(v0 + 8);

    return v35(v32);
  }

  v3 = *(v0 + 128);
  v2 = *(v0 + 136);
  sub_22EFE6B9C((v0 + 56), v0 + 16);
  v4 = swift_task_alloc();
  *(v4 + 16) = v2;
  v5 = sub_22F051F34(sub_22F0C8A3C, v4, v3);

  if (qword_280CBDB48 != -1)
  {
    goto LABEL_25;
  }

  while (1)
  {
    v6 = sub_22F0D0A1C();
    v1[22] = __swift_project_value_buffer(v6, qword_280CBDB50);
    sub_22F0CFF1C();
    v7 = sub_22F0D09FC();
    v8 = sub_22F0D124C();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v45[0] = v10;
      *v9 = 136315138;
      v11 = sub_22F0459DC();
      v12 = MEMORY[0x2318FD490](v5, v11);
      v14 = sub_22F00A560(v12, v13, v45);

      *(v9 + 4) = v14;
      _os_log_impl(&dword_22EFE1000, v7, v8, "Checking FindMy cache for %s", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v10);
      MEMORY[0x2318FE8B0](v10, -1, -1);
      MEMORY[0x2318FE8B0](v9, -1, -1);
    }

    v44 = MEMORY[0x277D84F98];
    if (v5 >> 62)
    {
      break;
    }

    v15 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v15)
    {
      goto LABEL_27;
    }

LABEL_7:
    v42 = v1;
    v16 = 0;
    v17 = v5 & 0xC000000000000001;
    v1 = (v5 & 0xFFFFFFFFFFFFFF8);
    while (1)
    {
      if (v17)
      {
        v18 = v5;
        v19 = MEMORY[0x2318FDAB0](v16, v5);
      }

      else
      {
        if (v16 >= v1[2])
        {
          goto LABEL_24;
        }

        v18 = v5;
        v19 = *(v5 + 8 * v16 + 32);
      }

      v20 = v19;
      v5 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      v21 = CNContact.people_normalizedEmails.getter();
      v22 = CNContact.people_normalizedPhoneNumbers.getter();
      v45[0] = v21;
      sub_22F007248(v22);
      v23 = v45[0];
      v24 = v20;
      sub_22F0C8844(v23, &v44, v24);

      ++v16;
      v25 = v5 == v15;
      v5 = v18;
      if (v25)
      {
        v1 = v42;
        v26 = v44;
        goto LABEL_28;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    swift_once();
  }

  v15 = sub_22F0D143C();
  if (v15)
  {
    goto LABEL_7;
  }

LABEL_27:
  v26 = MEMORY[0x277D84F98];
LABEL_28:
  v1[23] = v26;

  v1[15] = MEMORY[0x277D84F90];
  v37 = v1[5];
  v38 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v37);
  v39 = *(v38 + 16);
  v43 = (v39 + *v39);
  v40 = v39[1];
  v41 = swift_task_alloc();
  v1[24] = v41;
  *v41 = v1;
  v41[1] = sub_22F0C5C20;

  return v43(v37, v38);
}

uint64_t sub_22F0C5C20(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 192);
  v7 = *v2;
  *(v3 + 200) = a1;
  *(v3 + 208) = v1;

  if (v1)
  {
    v5 = sub_22F0C7B78;
  }

  else
  {
    v5 = sub_22F0C5D34;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_22F0C5D34(uint64_t isUniquelyReferenced_nonNull_native, uint64_t a2, uint64_t a3)
{
  v83 = v3;
  v4 = v3[25];
  v5 = *(v4 + 16);
  if (!v5)
  {
    v10 = MEMORY[0x277D84F90];
    goto LABEL_16;
  }

  v6 = 0;
  v7 = v3[23];
  v8 = -v5;
  v9 = v4 + 40;
  v10 = MEMORY[0x277D84F90];
  do
  {
    v11 = (v9 + 16 * v6++);
    while (1)
    {
      if ((v6 - 1) >= *(v4 + 16))
      {
        __break(1u);
        goto LABEL_44;
      }

      if (*(v7 + 16))
      {
        break;
      }

LABEL_4:
      ++v6;
      v11 += 2;
      if (v8 + v6 == 1)
      {
        goto LABEL_16;
      }
    }

    v12 = v3[23];
    v14 = *(v11 - 1);
    v13 = *v11;
    swift_bridgeObjectRetain_n();
    sub_22EFFDA80(v14, v13);
    LOBYTE(v12) = v15;

    if ((v12 & 1) == 0)
    {

      goto LABEL_4;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v82 = v10;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      isUniquelyReferenced_nonNull_native = sub_22EFFC890(0, *(v10 + 16) + 1, 1);
      v10 = v82;
    }

    v17 = *(v10 + 16);
    v16 = *(v10 + 24);
    v18 = v17 + 1;
    if (v17 >= v16 >> 1)
    {
      isUniquelyReferenced_nonNull_native = sub_22EFFC890((v16 > 1), v17 + 1, 1);
      v18 = v17 + 1;
      v10 = v82;
    }

    *(v10 + 16) = v18;
    v19 = v10 + 16 * v17;
    *(v19 + 32) = v14;
    *(v19 + 40) = v13;
    v9 = v4 + 40;
  }

  while (v8 + v6);
LABEL_16:
  v20 = v3[25];

  v21 = *(v10 + 16);
  if (v21)
  {
    v22 = 0;
    v23 = (v10 + 40);
    v24 = MEMORY[0x277D84F90];
    while (v22 < *(v10 + 16))
    {
      v26 = *(v23 - 1);
      v25 = *v23;
      sub_22F0CFF1C();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        isUniquelyReferenced_nonNull_native = sub_22F03D0D8(0, *(v24 + 16) + 1, 1, v24);
        v24 = isUniquelyReferenced_nonNull_native;
      }

      v28 = *(v24 + 16);
      v27 = *(v24 + 24);
      if (v28 >= v27 >> 1)
      {
        isUniquelyReferenced_nonNull_native = sub_22F03D0D8((v27 > 1), v28 + 1, 1, v24);
        v24 = isUniquelyReferenced_nonNull_native;
      }

      ++v22;
      *(v24 + 16) = v28 + 1;
      v29 = v24 + 16 * v28;
      *(v29 + 32) = v26;
      *(v29 + 40) = v25;
      v23 += 2;
      if (v21 == v22)
      {
        goto LABEL_26;
      }
    }

LABEL_44:
    __break(1u);
  }

  else
  {
    v24 = MEMORY[0x277D84F90];
LABEL_26:
    sub_22F0D00CC();
    v3[15] = v24;
    v30 = v3[26];
    v3[27] = v24;
    v31 = v3[22];
    v32 = sub_22F0D09FC();
    v33 = sub_22F0D124C();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v36 = v35;
      v81 = v35;
      *v34 = 136315138;
      v37 = *(v24 + 16);
      v38 = MEMORY[0x277D84F90];
      if (v37)
      {
        v76 = v35;
        v77 = v33;
        v78 = v34;
        v79 = v3;
        v82 = MEMORY[0x277D84F90];
        sub_22F0CFF1C();
        sub_22EFFC4E8(0, v37, 0);
        v39 = 0;
        v38 = v82;
        v40 = *(v82 + 16);
        v41 = 16 * v40;
        do
        {
          v42 = *(v24 + v39 + 32);
          v43 = *(v24 + v39 + 40);
          v82 = v38;
          v44 = *(v38 + 24);
          sub_22F0CFF1C();
          if (v40 >= v44 >> 1)
          {
            sub_22EFFC4E8((v44 > 1), v40 + 1, 1);
            v38 = v82;
          }

          *(v38 + 16) = v40 + 1;
          v45 = v38 + v41 + v39;
          *(v45 + 32) = v42;
          *(v45 + 40) = v43;
          v39 += 16;
          ++v40;
          --v37;
        }

        while (v37);

        v3 = v79;
        v34 = v78;
        v33 = v77;
        v36 = v76;
      }

      v46 = MEMORY[0x2318FD490](v38, MEMORY[0x277D837D0]);
      v48 = v47;

      v49 = sub_22F00A560(v46, v48, &v81);

      *(v34 + 4) = v49;
      _os_log_impl(&dword_22EFE1000, v32, v33, "Friends sharing %s", v34, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v36);
      MEMORY[0x2318FE8B0](v36, -1, -1);
      MEMORY[0x2318FE8B0](v34, -1, -1);
    }

    v50 = v3[23];
    v51 = sub_22F0CFF1C();
    v52 = sub_22F0C39C0(v51, v3 + 15);
    v3[28] = v52;
    if (!*(v52 + 16))
    {

      v65 = v3[27];
      v66 = v3[5];
      v67 = v3[6];
      __swift_project_boxed_opaque_existential_1(v3 + 2, v66);
      v68 = *(v67 + 24);
      v69 = sub_22F0CFF1C();
      v68(v69, v66, v67);

      sub_22F0CFF1C();
      v70 = v3[6];
      __swift_project_boxed_opaque_existential_1(v3 + 2, v3[5]);
      v71 = *(v70 + 8);
      v80 = v71 + *v71;
      v72 = v71[1];
      v73 = swift_task_alloc();
      v3[34] = v73;
      *v73 = v3;
      v73[1] = sub_22F0C6880;
      v74 = v3[27];

      __asm { BRAA            X4, X16 }
    }

    v53 = v52;
    v54 = v3[22];
    v55 = sub_22F0D09FC();
    v56 = sub_22F0D122C();
    if (os_log_type_enabled(v55, v56))
    {
      v57 = swift_slowAlloc();
      v58 = swift_slowAlloc();
      v82 = v58;
      *v57 = 136315394;
      *(v57 + 4) = sub_22F00A560(0xD000000000000031, 0x800000022F0E0080, &v82);
      *(v57 + 12) = 2080;
      v59 = MEMORY[0x2318FD490](v53, MEMORY[0x277D837D0]);
      v61 = sub_22F00A560(v59, v60, &v82);

      *(v57 + 14) = v61;
      _os_log_impl(&dword_22EFE1000, v55, v56, "%s items to purge: %s", v57, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x2318FE8B0](v58, -1, -1);
      MEMORY[0x2318FE8B0](v57, -1, -1);
    }

    v3[29] = sub_22F0D10AC();
    v3[30] = sub_22F0D109C();
    v62 = sub_22F0D106C();
    v64 = v63;
    isUniquelyReferenced_nonNull_native = sub_22F0C642C;
    a2 = v62;
    a3 = v64;
  }

  return MEMORY[0x2822009F8](isUniquelyReferenced_nonNull_native, a2, a3);
}

uint64_t sub_22F0C642C()
{
  v1 = *(v0 + 240);
  sub_22F0D00CC();
  if (qword_280CBD620 != -1)
  {
    swift_once();
  }

  return MEMORY[0x2822009F8](sub_22F0C64C4, 0, 0);
}

uint64_t sub_22F0C64C4()
{
  v1 = *(v0 + 232);
  *(v0 + 248) = sub_22F0D109C();
  v3 = sub_22F0D106C();

  return MEMORY[0x2822009F8](sub_22F0C6550, v3, v2);
}

uint64_t sub_22F0C6550()
{
  v1 = *(v0 + 248);
  sub_22F0D00CC();
  swift_beginAccess();
  *(v0 + 256) = qword_280CBD628;
  sub_22F0CFFAC();

  return MEMORY[0x2822009F8](sub_22F0C65E4, 0, 0);
}

uint64_t sub_22F0C65E4()
{
  v1 = *(v0 + 232);
  *(v0 + 264) = sub_22F0D109C();
  v3 = sub_22F0D106C();

  return MEMORY[0x2822009F8](sub_22F0C6670, v3, v2);
}

uint64_t sub_22F0C6670()
{
  v2 = v0[32];
  v1 = v0[33];
  v3 = v0[28];
  sub_22F0D00CC();
  sub_22F089FAC(v3);

  sub_22F0D00CC();

  return MEMORY[0x2822009F8](sub_22F0C66F4, 0, 0);
}

uint64_t sub_22F0C66F4()
{
  v1 = v0[27];
  v2 = v0[5];
  v3 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v2);
  v4 = *(v3 + 24);
  v5 = sub_22F0CFF1C();
  v4(v5, v2, v3);

  sub_22F0CFF1C();
  v6 = v0[5];
  v7 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v6);
  v8 = *(v7 + 8);
  v13 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  v0[34] = v10;
  *v10 = v0;
  v10[1] = sub_22F0C6880;
  v11 = v0[27];

  return (v13)(v11, 0, v6, v7);
}

uint64_t sub_22F0C6880(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 272);
  v6 = *v2;
  v4[35] = v1;

  v7 = v4[27];
  if (!v1)
  {

    v4[36] = a1;
    v9 = swift_task_alloc();
    v4[37] = v9;
    *v9 = v6;
    v9[1] = sub_22F0C6A48;

    JUMPOUT(0x22F0C9020);
  }

  v8 = v4[23];

  return MEMORY[0x2822009F8](sub_22F0C6F1C, 0, 0);
}

uint64_t sub_22F0C6A48(uint64_t a1)
{
  v2 = *(*v1 + 296);
  v3 = *(*v1 + 288);
  v5 = *v1;
  *(*v1 + 304) = a1;

  return MEMORY[0x2822009F8](sub_22F0C6B68, 0, 0);
}

uint64_t sub_22F0C6B68()
{
  v1 = v0[27];
  v2 = *(v1 + 16);
  result = sub_22F0CFF1C();
  if (v2)
  {
    v4 = 0;
    v5 = v0[38];
    v35 = -v2;
    v6 = v1 + 40;
    v7 = MEMORY[0x277D84F90];
    v37 = v0;
    v33 = v1 + 40;
    do
    {
      v34 = v7;
      v8 = (v6 + 16 * v4++);
      while (1)
      {
        if ((v4 - 1) >= *(v1 + 16))
        {
          __break(1u);
          return result;
        }

        v10 = *(v8 - 1);
        v9 = *v8;
        if (!*(v5 + 16))
        {
          break;
        }

        v0 = v37;
        v11 = v37[38];
        v12 = *v8;
        sub_22F0CFF1C();
        v13 = sub_22EFFDA80(v10, v9);
        if ((v14 & 1) == 0)
        {
          goto LABEL_10;
        }

        v15 = v13;
        v16 = v37[20];
        v17 = *(v5 + 56);
        v18 = type metadata accessor for PeopleLocation();
        v19 = v1;
        v20 = *(v18 - 8);
        sub_22F0CE0BC(v17 + *(v20 + 72) * v15, v16, type metadata accessor for PeopleLocation);

        (*(v20 + 56))(v16, 0, 1, v18);
        v1 = v19;
        result = sub_22F003A4C(v16, &qword_27DAA17E8, &qword_22F0D7CC8);
        ++v4;
        v8 += 2;
        if (v35 + v4 == 1)
        {
          v7 = v34;
          v0 = v37;
          goto LABEL_17;
        }
      }

      v21 = *v8;
      sub_22F0CFF1C();
      v0 = v37;
LABEL_10:
      v22 = v0[20];
      v23 = type metadata accessor for PeopleLocation();
      (*(*(v23 - 8) + 56))(v22, 1, 1, v23);
      sub_22F003A4C(v22, &qword_27DAA17E8, &qword_22F0D7CC8);
      v7 = v34;
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_22EFFC870(0, *(v34 + 16) + 1, 1);
        v7 = v34;
      }

      v25 = *(v7 + 16);
      v24 = *(v7 + 24);
      if (v25 >= v24 >> 1)
      {
        result = sub_22EFFC870((v24 > 1), v25 + 1, 1);
        v7 = v34;
      }

      *(v7 + 16) = v25 + 1;
      v26 = v7 + 16 * v25;
      *(v26 + 32) = v10;
      *(v26 + 40) = v9;
      v6 = v33;
    }

    while (v35 + v4);
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
  }

LABEL_17:
  v0[39] = v7;
  v27 = v0[27];

  v28 = v0[5];
  v29 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v28);
  v30 = *(v29 + 8);
  v36 = (v30 + *v30);
  v31 = v30[1];
  v32 = swift_task_alloc();
  v0[40] = v32;
  *v32 = v0;
  v32[1] = sub_22F0C6FF0;

  return v36(v7, 1, v28, v29);
}

uint64_t sub_22F0C6F1C()
{
  v1 = v0[27];

  v2 = v0[35];
  v3 = v0[22];
  v4 = v2;
  Logger.ifError(_:message:)(v2);

  v5 = sub_22F07D7A0(MEMORY[0x277D84F90]);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  v7 = v0[19];
  v6 = v0[20];

  v8 = v0[1];

  return v8(v5);
}

uint64_t sub_22F0C6FF0(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 320);
  v6 = *v2;
  v4[41] = a1;
  v4[42] = v1;

  v7 = v3[39];
  if (v1)
  {
    v8 = v4[38];
    v9 = v4[23];
    sub_22F0D00CC();

    v10 = sub_22F0C80BC;
  }

  else
  {
    sub_22F0D00CC();
    v10 = sub_22F0C7148;
  }

  return MEMORY[0x2822009F8](v10, 0, 0);
}

uint64_t sub_22F0C7148()
{
  v71 = v0;
  v1 = v0[41];
  v2 = v0[22];
  sub_22F0CFF1C();
  v3 = sub_22F0D09FC();
  v4 = sub_22F0D124C();
  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[41];
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v70[0] = v8;
    *v7 = 136315394;
    *(v7 + 4) = sub_22F00A560(0xD000000000000031, 0x800000022F0E0080, v70);
    *(v7 + 12) = 2048;
    *(v7 + 14) = *(v6 + 16);

    _os_log_impl(&dword_22EFE1000, v3, v4, "%s fetched %ld with revGeo", v7, 0x16u);
    __swift_destroy_boxed_opaque_existential_1Tm(v8);
    MEMORY[0x2318FE8B0](v8, -1, -1);
    MEMORY[0x2318FE8B0](v7, -1, -1);
  }

  else
  {
    v9 = v0[41];
  }

  v10 = v0[41];
  v11 = v0[42];
  v12 = v0[38];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v70[0] = v10;
  sub_22F0CA0B8(v12, sub_22F0C83D4, 0, isUniquelyReferenced_nonNull_native, v70);
  v14 = v0[38];
  if (v11)
  {

    return sub_22F0D00CC();
  }

  else
  {
    v16 = v0[22];

    v17 = v70[0];
    v0[43] = v70[0];
    sub_22F0CFFAC();
    v18 = sub_22F0D09FC();
    v19 = sub_22F0D124C();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = v0[27];
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v70[0] = v22;
      *v21 = 136315650;
      *(v21 + 4) = sub_22F00A560(0xD000000000000031, 0x800000022F0E0080, v70);
      *(v21 + 12) = 2048;
      *(v21 + 14) = *(v17 + 16);
      sub_22F0D00CC();
      *(v21 + 22) = 2048;
      *(v21 + 24) = *(v20 + 16);
      _os_log_impl(&dword_22EFE1000, v18, v19, "%s has %ld locations out of %ld friends", v21, 0x20u);
      __swift_destroy_boxed_opaque_existential_1Tm(v22);
      MEMORY[0x2318FE8B0](v22, -1, -1);
      MEMORY[0x2318FE8B0](v21, -1, -1);
    }

    else
    {
      sub_22F0D00CC();
    }

    v23 = *(v0[27] + 16);
    result = sub_22F0CFF1C();
    v68 = v17;
    v69 = v0;
    if (v23)
    {
      v24 = 0;
      v67 = -v23;
      v25 = result + 40;
      v26 = MEMORY[0x277D84F90];
      v66 = result + 40;
      do
      {
        v27 = (v25 + 16 * v24++);
        while (1)
        {
          if ((v24 - 1) >= *(v0[27] + 16))
          {
            __break(1u);
            goto LABEL_45;
          }

          v29 = *(v27 - 1);
          v28 = *v27;
          v30 = *(v17 + 16);
          sub_22F0CFF1C();
          if (!v30)
          {
            break;
          }

          v31 = sub_22EFFDA80(v29, v28);
          if ((v32 & 1) == 0)
          {
            break;
          }

          v33 = v31;
          v34 = v0[19];
          v35 = *(v17 + 56);
          v36 = type metadata accessor for PeopleLocation();
          v37 = *(v36 - 8);
          sub_22F0CE0BC(v35 + *(v37 + 72) * v33, v34, type metadata accessor for PeopleLocation);

          v38 = v36;
          v17 = v68;
          v0 = v69;
          (*(v37 + 56))(v34, 0, 1, v38);
          result = sub_22F003A4C(v34, &qword_27DAA17E8, &qword_22F0D7CC8);
          ++v24;
          v27 += 2;
          if (v67 + v24 == 1)
          {
            goto LABEL_26;
          }
        }

        v39 = v0[19];
        v40 = type metadata accessor for PeopleLocation();
        (*(*(v40 - 8) + 56))(v39, 1, 1, v40);
        sub_22F003A4C(v39, &qword_27DAA17E8, &qword_22F0D7CC8);
        result = swift_isUniquelyReferenced_nonNull_native();
        v70[0] = v26;
        if ((result & 1) == 0)
        {
          result = sub_22EFFC870(0, *(v26 + 16) + 1, 1);
          v26 = v70[0];
        }

        v42 = *(v26 + 16);
        v41 = *(v26 + 24);
        if (v42 >= v41 >> 1)
        {
          result = sub_22EFFC870((v41 > 1), v42 + 1, 1);
          v26 = v70[0];
        }

        *(v26 + 16) = v42 + 1;
        v43 = v26 + 16 * v42;
        *(v43 + 32) = v29;
        *(v43 + 40) = v28;
        v17 = v68;
        v0 = v69;
        v25 = v66;
      }

      while (v67 + v24);
    }

    else
    {
      v26 = MEMORY[0x277D84F90];
    }

LABEL_26:
    v44 = v0[27];

    v45 = *(v26 + 16);
    if (v45)
    {
      v46 = 0;
      v47 = (v26 + 40);
      v48 = MEMORY[0x277D84F90];
      while (v46 < *(v26 + 16))
      {
        v50 = *(v47 - 1);
        v49 = *v47;
        sub_22F0CFF1C();
        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_22F03C784(0, *(v48 + 16) + 1, 1, v48);
          v48 = result;
        }

        v52 = *(v48 + 16);
        v51 = *(v48 + 24);
        if (v52 >= v51 >> 1)
        {
          result = sub_22F03C784((v51 > 1), v52 + 1, 1, v48);
          v48 = result;
        }

        ++v46;
        *(v48 + 16) = v52 + 1;
        v53 = v48 + 16 * v52;
        *(v53 + 32) = v50;
        *(v53 + 40) = v49;
        v47 += 2;
        if (v45 == v46)
        {
          goto LABEL_36;
        }
      }

LABEL_45:
      __break(1u);
    }

    else
    {
      v48 = MEMORY[0x277D84F90];
LABEL_36:
      sub_22F0D00CC();
      if (*(v48 + 16))
      {
        v54 = v69;
        v55 = v69[22];
        sub_22F0CFF1C();
        v56 = sub_22F0D09FC();
        v57 = sub_22F0D124C();

        if (os_log_type_enabled(v56, v57))
        {
          v58 = swift_slowAlloc();
          v59 = swift_slowAlloc();
          v70[0] = v59;
          *v58 = 136315138;
          v60 = MEMORY[0x2318FD490](v48, MEMORY[0x277D837D0]);
          v62 = v61;

          v63 = sub_22F00A560(v60, v62, v70);
          v54 = v69;

          *(v58 + 4) = v63;
          _os_log_impl(&dword_22EFE1000, v56, v57, "Unexpected FindMy cache miss: %s!", v58, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v59);
          MEMORY[0x2318FE8B0](v59, -1, -1);
          MEMORY[0x2318FE8B0](v58, -1, -1);
        }

        else
        {
        }
      }

      else
      {

        v54 = v69;
      }

      v64 = swift_task_alloc();
      v54[44] = v64;
      *v64 = v54;
      v64[1] = sub_22F0C78A8;
      v65 = v54[23];

      return sub_22F0C8AC0(v68, v65);
    }
  }

  return result;
}

uint64_t sub_22F0C78A8(uint64_t a1)
{
  v2 = *(*v1 + 352);
  v3 = *(*v1 + 344);
  v4 = *(*v1 + 184);
  v6 = *v1;
  *(*v1 + 360) = a1;

  sub_22F0D00CC();

  return MEMORY[0x2822009F8](sub_22F0C79E4, 0, 0);
}

uint64_t sub_22F0C79E4()
{
  v17 = v0;
  v1 = v0[45];
  v2 = v0[22];
  sub_22F0CFF1C();
  v3 = sub_22F0D09FC();
  v4 = sub_22F0D122C();
  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[45];
  v7 = v0[27];
  if (v5)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v16 = v9;
    *v8 = 136315394;
    *(v8 + 4) = sub_22F00A560(0xD000000000000031, 0x800000022F0E0080, &v16);
    *(v8 + 12) = 2048;
    *(v8 + 14) = *(v6 + 16);

    _os_log_impl(&dword_22EFE1000, v3, v4, "%s status results count: %ld", v8, 0x16u);
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
    MEMORY[0x2318FE8B0](v9, -1, -1);
    MEMORY[0x2318FE8B0](v8, -1, -1);
  }

  else
  {
    v10 = v0[45];
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  v11 = v0[45];
  v13 = v0[19];
  v12 = v0[20];

  v14 = v0[1];

  return v14(v11);
}

uint64_t sub_22F0C7B78()
{
  v56 = v0;
  v1 = v0[26];
  v2 = v0[22];
  v3 = v1;
  Logger.ifError(_:message:)(v1);

  v4 = MEMORY[0x277D84F90];
  v0[27] = MEMORY[0x277D84F90];
  v5 = v0[22];
  v6 = sub_22F0D09FC();
  v7 = sub_22F0D124C();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = v9;
    v54 = v9;
    *v8 = 136315138;
    v11 = *(v4 + 16);
    if (v11)
    {
      v49 = v9;
      v50 = v7;
      v51 = v8;
      v52 = v6;
      v55 = v4;
      sub_22F0CFF1C();
      sub_22EFFC4E8(0, v11, 0);
      v12 = (v4 + 40);
      v13 = *(v4 + 16);
      v14 = 16 * v13;
      do
      {
        v15 = *(v12 - 1);
        v16 = *v12;
        v55 = v4;
        v17 = v13 + 1;
        v18 = *(v4 + 24);
        sub_22F0CFF1C();
        if (v13 >= v18 >> 1)
        {
          sub_22EFFC4E8((v18 > 1), v17, 1);
          v4 = v55;
        }

        *(v4 + 16) = v17;
        v19 = v4 + v14;
        *(v19 + 32) = v15;
        *(v19 + 40) = v16;
        v14 += 16;
        v12 += 2;
        ++v13;
        --v11;
      }

      while (v11);

      v8 = v51;
      v6 = v52;
      v7 = v50;
      v10 = v49;
    }

    v20 = MEMORY[0x2318FD490](v4, MEMORY[0x277D837D0]);
    v22 = v21;

    v23 = sub_22F00A560(v20, v22, &v54);

    *(v8 + 4) = v23;
    _os_log_impl(&dword_22EFE1000, v6, v7, "Friends sharing %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v10);
    MEMORY[0x2318FE8B0](v10, -1, -1);
    MEMORY[0x2318FE8B0](v8, -1, -1);
  }

  v24 = v0[23];
  v25 = sub_22F0CFF1C();
  v26 = sub_22F0C39C0(v25, v0 + 15);
  v0[28] = v26;
  if (!*(v26 + 16))
  {

    v38 = v0[27];
    v39 = v0[5];
    v40 = v0[6];
    __swift_project_boxed_opaque_existential_1(v0 + 2, v39);
    v41 = *(v40 + 24);
    v42 = sub_22F0CFF1C();
    v41(v42, v39, v40);

    sub_22F0CFF1C();
    v43 = v0[6];
    __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
    v44 = *(v43 + 8);
    v53 = v44 + *v44;
    v45 = v44[1];
    v46 = swift_task_alloc();
    v0[34] = v46;
    *v46 = v0;
    v46[1] = sub_22F0C6880;
    v47 = v0[27];

    __asm { BRAA            X4, X16 }
  }

  v27 = v26;
  v28 = v0[22];
  v29 = sub_22F0D09FC();
  v30 = sub_22F0D122C();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v55 = v32;
    *v31 = 136315394;
    *(v31 + 4) = sub_22F00A560(0xD000000000000031, 0x800000022F0E0080, &v55);
    *(v31 + 12) = 2080;
    v33 = MEMORY[0x2318FD490](v27, MEMORY[0x277D837D0]);
    v35 = sub_22F00A560(v33, v34, &v55);

    *(v31 + 14) = v35;
    _os_log_impl(&dword_22EFE1000, v29, v30, "%s items to purge: %s", v31, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x2318FE8B0](v32, -1, -1);
    MEMORY[0x2318FE8B0](v31, -1, -1);
  }

  v0[29] = sub_22F0D10AC();
  v0[30] = sub_22F0D109C();
  v37 = sub_22F0D106C();

  return MEMORY[0x2822009F8](sub_22F0C642C, v37, v36);
}

uint64_t sub_22F0C80BC()
{
  v1 = v0[27];

  v2 = v0[42];
  v3 = v0[22];
  v4 = v2;
  Logger.ifError(_:message:)(v2);

  v5 = sub_22F07D7A0(MEMORY[0x277D84F90]);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  v7 = v0[19];
  v6 = v0[20];

  v8 = v0[1];

  return v8(v5);
}

uint64_t sub_22F0C8190(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v18 = a1[1];
  v19 = v3;
  swift_beginAccess();
  v4 = *a2;
  v5 = *(*a2 + 16);
  result = sub_22F0CFF1C();
  if (v5)
  {
    v7 = 0;
    v8 = (v4 + 40);
    v9 = MEMORY[0x277D84F90];
    while (v7 < *(v4 + 16))
    {
      v11 = *(v8 - 1);
      v10 = *v8;
      sub_22F0CFF1C();
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_22F03C784(0, *(v9 + 16) + 1, 1, v9);
        v9 = result;
      }

      v13 = *(v9 + 16);
      v12 = *(v9 + 24);
      if (v13 >= v12 >> 1)
      {
        result = sub_22F03C784((v12 > 1), v13 + 1, 1, v9);
        v9 = result;
      }

      ++v7;
      *(v9 + 16) = v13 + 1;
      v14 = v9 + 16 * v13;
      *(v14 + 32) = v11;
      *(v14 + 40) = v10;
      v8 += 2;
      if (v5 == v7)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  else
  {
    v9 = MEMORY[0x277D84F90];
LABEL_11:

    v20[0] = v19;
    v20[1] = v18;
    MEMORY[0x28223BE20](v15);
    v17[2] = v20;
    v16 = sub_22F051C9C(sub_22F0C09D0, v17, v9);

    return (v16 & 1) == 0;
  }

  return result;
}

uint64_t static LocateFriend.isUpdateSignificant(event:with:)(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_22F01F1CC;

  return sub_22F0CB62C(a1, a2);
}

uint64_t sub_22F0C83D4@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA2510, &qword_22F0DC118) + 48);
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1D60, &qword_22F0D90C8) + 48);
  v6 = a1[1];
  *a2 = *a1;
  a2[1] = v6;
  sub_22F0CE0BC(a1 + v4, a2 + v5, type metadata accessor for PeopleLocation);

  return sub_22F0CFF1C();
}

uint64_t sub_22F0C846C@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA2510, &qword_22F0DC118);
  v47 = *(v3 - 8);
  v48 = v3;
  v4 = *(v47 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v44 - v5;
  v7 = type metadata accessor for PeopleLocation();
  v46 = *(v7 - 8);
  v8 = *(v46 + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA2518, &unk_22F0DC120);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v15 = &v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v13);
  v18 = (&v44 - v17);
  v19 = *v1;
  v20 = v1[1];
  v22 = v1[2];
  v21 = v1[3];
  v23 = v1[4];
  v44 = v6;
  v49 = v22;
  if (v23)
  {
    v45 = a1;
    v24 = v21;
LABEL_11:
    v28 = (v23 - 1) & v23;
    v29 = __clz(__rbit64(v23)) | (v24 << 6);
    v30 = (*(v19 + 48) + 16 * v29);
    v32 = *v30;
    v31 = v30[1];
    sub_22F0CE0BC(*(v19 + 56) + *(v46 + 72) * v29, v10, type metadata accessor for PeopleLocation);
    v33 = v48;
    v34 = *(v48 + 48);
    *v18 = v32;
    v18[1] = v31;
    v35 = v10;
    v36 = v33;
    sub_22F0CE00C(v35, v18 + v34, type metadata accessor for PeopleLocation);
    v37 = v47;
    (*(v47 + 56))(v18, 0, 1, v36);
    sub_22F0CFF1C();
    v27 = v24;
    v38 = v37;
    a1 = v45;
LABEL_12:
    *v1 = v19;
    v1[1] = v20;
    v1[2] = v49;
    v1[3] = v27;
    v1[4] = v28;
    v39 = v1[5];
    v40 = v1[6];
    sub_22F0CE1E8(v18, v15, &qword_27DAA2518, &unk_22F0DC120);
    v41 = 1;
    if ((*(v38 + 48))(v15, 1, v36) != 1)
    {
      v42 = v44;
      sub_22F0CE1E8(v15, v44, &qword_27DAA2510, &qword_22F0DC118);
      v39(v42);
      sub_22F003A4C(v42, &qword_27DAA2510, &qword_22F0DC118);
      v41 = 0;
    }

    v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1D60, &qword_22F0D90C8);
    return (*(*(v43 - 8) + 56))(a1, v41, 1, v43);
  }

  else
  {
    v25 = (v22 + 64) >> 6;
    if (v25 <= v21 + 1)
    {
      v26 = v21 + 1;
    }

    else
    {
      v26 = (v22 + 64) >> 6;
    }

    v27 = v26 - 1;
    while (1)
    {
      v24 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v24 >= v25)
      {
        v38 = v47;
        v36 = v48;
        (*(v47 + 56))(&v44 - v17, 1, 1, v48);
        v28 = 0;
        goto LABEL_12;
      }

      v23 = *(v20 + 8 * v24);
      ++v21;
      if (v23)
      {
        v45 = a1;
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_22F0C8844(uint64_t result, void *a2, void *a3)
{
  v3 = *(result + 16);
  if (!v3)
  {
    return result;
  }

  v4 = a2;
  for (i = (result + 40); ; i += 2)
  {
    v33 = v3;
    v9 = *(i - 1);
    v8 = *i;
    swift_bridgeObjectRetain_n();
    v10 = [a3 identifier];
    v11 = sub_22F0D0CAC();
    v13 = v12;

    v14 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v16 = *v4;
    v34 = *v4;
    *v4 = 0x8000000000000000;
    v18 = sub_22EFFDA80(v9, v8);
    v19 = v16[2];
    v20 = (v17 & 1) == 0;
    v21 = v19 + v20;
    if (__OFADD__(v19, v20))
    {
      break;
    }

    v22 = v17;
    if (v16[3] >= v21)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        v25 = v34;
        if (v17)
        {
          goto LABEL_3;
        }
      }

      else
      {
        sub_22F0600F4();
        v25 = v34;
        if (v22)
        {
          goto LABEL_3;
        }
      }
    }

    else
    {
      sub_22F07A54C(v21, isUniquelyReferenced_nonNull_native);
      v23 = sub_22EFFDA80(v9, v8);
      if ((v22 & 1) != (v24 & 1))
      {
        goto LABEL_19;
      }

      v18 = v23;
      v25 = v34;
      if (v22)
      {
LABEL_3:
        v6 = (v25[7] + 16 * v18);
        v7 = v6[1];
        *v6 = v11;
        v6[1] = v13;

        goto LABEL_4;
      }
    }

    v25[(v18 >> 6) + 8] |= 1 << v18;
    v26 = (v25[6] + 16 * v18);
    *v26 = v9;
    v26[1] = v8;
    v27 = (v25[7] + 16 * v18);
    *v27 = v11;
    v27[1] = v13;
    v28 = v25[2];
    v29 = __OFADD__(v28, 1);
    v30 = v28 + 1;
    if (v29)
    {
      goto LABEL_18;
    }

    v25[2] = v30;
LABEL_4:
    v4 = a2;
    *a2 = v25;

    v3 = v33 - 1;
    if (v33 == 1)
    {
      return result;
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  result = sub_22F0D191C();
  __break(1u);
  return result;
}

uint64_t sub_22F0C8A3C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(v2 + 16);
  v5 = *a1;
  v6 = a1[1];
  v7 = v4[3];
  v8 = v4[4];
  __swift_project_boxed_opaque_existential_1(v4, v7);
  result = (*(v8 + 24))(v5, v6, 0, v7, v8);
  *a2 = result;
  return result;
}

uint64_t sub_22F0C8AC0(uint64_t a1, uint64_t a2)
{
  *(v2 + 56) = a1;
  *(v2 + 64) = a2;
  return MEMORY[0x2822009F8](sub_22F0C8AE0, 0, 0);
}

uint64_t sub_22F0C8AE0()
{
  v23 = v0;
  v0[5] = MEMORY[0x277D84F98];
  v0[6] = MEMORY[0x277D84F90];
  v1 = v0[7];
  v2 = -1;
  v3 = -1 << *(v1 + 32);
  if (-v3 < 64)
  {
    v2 = ~(-1 << -v3);
  }

  v4 = v2 & *(v1 + 64);
  v5 = (63 - v3) >> 6;
  v6 = v0[7];
  swift_bridgeObjectRetain_n();
  v7 = sub_22F0CFF1C();
  v10 = 0;
  if (v4)
  {
    while (1)
    {
      v11 = v10;
LABEL_8:
      v13 = v0[7];
      v12 = v0[8];
      v14 = (*(v1 + 48) + ((v11 << 10) | (16 * __clz(__rbit64(v4)))));
      v15 = v14[1];
      v22[0] = *v14;
      v22[1] = v15;
      sub_22F0CFF1C();
      sub_22F0C3B7C(v22, v13, v12, v0 + 6, v0 + 5);

      v4 &= v4 - 1;
      v10 = v11;
      if (!v4)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v11 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      __break(1u);
      return MEMORY[0x2822009F8](v7, v8, v9);
    }

    if (v11 >= v5)
    {
      break;
    }

    v4 = *(v1 + 64 + 8 * v11);
    ++v10;
    if (v4)
    {
      goto LABEL_8;
    }
  }

  v16 = v0[7];
  v17 = v0[8];
  sub_22F0D00CC();

  v0[9] = sub_22F0D10AC();
  v0[10] = sub_22F0D109C();
  v18 = sub_22F0D106C();
  v20 = v19;
  v7 = sub_22F0C8CF0;
  v8 = v18;
  v9 = v20;

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_22F0C8CF0()
{
  v1 = *(v0 + 80);
  sub_22F0D00CC();
  if (qword_280CBD620 != -1)
  {
    swift_once();
  }

  return MEMORY[0x2822009F8](sub_22F0C8D88, 0, 0);
}

uint64_t sub_22F0C8D88()
{
  v1 = *(v0 + 72);
  *(v0 + 88) = sub_22F0D109C();
  v3 = sub_22F0D106C();

  return MEMORY[0x2822009F8](sub_22F0C8E14, v3, v2);
}

uint64_t sub_22F0C8E14()
{
  v1 = *(v0 + 88);
  sub_22F0D00CC();
  swift_beginAccess();
  *(v0 + 96) = qword_280CBD628;
  sub_22F0CFFAC();

  return MEMORY[0x2822009F8](sub_22F0C8EA8, 0, 0);
}

uint64_t sub_22F0C8EA8()
{
  v1 = v0[9];
  v0[13] = v0[6];
  v0[14] = sub_22F0D109C();
  v3 = sub_22F0D106C();

  return MEMORY[0x2822009F8](sub_22F0C8F3C, v3, v2);
}

uint64_t sub_22F0C8F3C()
{
  v2 = v0[13];
  v1 = v0[14];
  v3 = v0[12];
  sub_22F0D00CC();
  sub_22F0898A8(v2);
  sub_22F0D00CC();

  return MEMORY[0x2822009F8](sub_22F0C8FBC, 0, 0);
}

uint64_t sub_22F0C8FBC()
{
  v1 = v0[13];

  v2 = v0[5];
  v3 = v0[1];

  return v3(v2);
}

uint64_t sub_22F0C9020(uint64_t a1)
{
  v1[5] = a1;
  v2 = type metadata accessor for LocationItem(0);
  v1[6] = v2;
  v3 = *(*(v2 - 8) + 64) + 15;
  v1[7] = swift_task_alloc();
  v1[8] = swift_task_alloc();
  v4 = type metadata accessor for PeopleLocation();
  v1[9] = v4;
  v5 = *(v4 - 8);
  v1[10] = v5;
  v6 = *(v5 + 64) + 15;
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();
  v1[13] = swift_task_alloc();
  v1[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22F0C9140, 0, 0);
}

uint64_t sub_22F0C9140()
{
  v40 = v0;
  v1 = v0[5];
  v2 = *(v1 + 16);
  if (!v2)
  {
    goto LABEL_4;
  }

  v3 = sub_22F0BBB8C(*(v1 + 16), 0);
  v4 = sub_22F0BFE8C(v39, v3 + 4, v2, v1);
  sub_22F0CFF1C();
  sub_22F003524();
  if (v4 != v2)
  {
    __break(1u);
LABEL_4:
    v3 = MEMORY[0x277D84F90];
  }

  v0[15] = v3;
  v5 = v3[2];
  v0[16] = v5;
  if (!v5)
  {
    sub_22F0D00CC();
    if (qword_280CBDB48 != -1)
    {
      swift_once();
    }

    v20 = sub_22F0D0A1C();
    __swift_project_value_buffer(v20, qword_280CBDB50);
    v21 = sub_22F0D09FC();
    v22 = sub_22F0D124C();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v39[0] = v24;
      *v23 = 136315138;
      *(v23 + 4) = sub_22F00A560(0xD00000000000001ELL, 0x800000022F0E0210, v39);
      _os_log_impl(&dword_22EFE1000, v21, v22, "%s No handles to enrich", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v24);
      MEMORY[0x2318FE8B0](v24, -1, -1);
      MEMORY[0x2318FE8B0](v23, -1, -1);
    }

    sub_22F07DFC0(MEMORY[0x277D84F90]);
    goto LABEL_26;
  }

  v6 = 0;
  v7 = MEMORY[0x277D84F98];
  while (1)
  {
    v0[18] = v6;
    v0[19] = v7;
    v0[17] = v7;
    v8 = v0[5];
    v9 = &v3[2 * v6];
    v10 = v9[4];
    v0[20] = v10;
    v11 = v9[5];
    v0[21] = v11;
    if (*(v8 + 16))
    {
      break;
    }

LABEL_10:
    v3 = v0[15];
    if (v6 == v5 - 1)
    {
      goto LABEL_13;
    }

    if (++v6 >= v3[2])
    {
      __break(1u);
LABEL_13:
      sub_22F0D00CC();
      if (qword_280CBDB48 != -1)
      {
        swift_once();
      }

      v14 = sub_22F0D0A1C();
      __swift_project_value_buffer(v14, qword_280CBDB50);
      v15 = MEMORY[0x277D84F98];
      sub_22F0CFF1C();
      v16 = sub_22F0D09FC();
      v17 = sub_22F0D124C();
      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        v19 = swift_slowAlloc();
        v39[0] = v19;
        *v18 = 136315394;
        *(v18 + 4) = sub_22F00A560(0xD00000000000001ELL, 0x800000022F0E0210, v39);
        *(v18 + 12) = 2048;
        *(v18 + 14) = *(v15 + 16);

        _os_log_impl(&dword_22EFE1000, v16, v17, "%s enriched %ld locations", v18, 0x16u);
        __swift_destroy_boxed_opaque_existential_1Tm(v19);
        MEMORY[0x2318FE8B0](v19, -1, -1);
        MEMORY[0x2318FE8B0](v18, -1, -1);
      }

      else
      {
      }

LABEL_26:
      v32 = v0[13];
      v31 = v0[14];
      v34 = v0[11];
      v33 = v0[12];
      v36 = v0[7];
      v35 = v0[8];

      v37 = v0[1];

      __asm { BRAA            X2, X16 }
    }
  }

  sub_22F0CFF1C();
  v12 = sub_22EFFDA80(v10, v11);
  if ((v13 & 1) == 0)
  {

    v6 = v0[18];
    v5 = v0[16];
    goto LABEL_10;
  }

  v26 = v0[13];
  v25 = v0[14];
  v27 = v0[12];
  v28 = v0[8];
  sub_22F0CE0BC(*(v0[5] + 56) + *(v0[10] + 72) * v12, v26, type metadata accessor for PeopleLocation);
  sub_22F0CE00C(v26, v25, type metadata accessor for PeopleLocation);
  sub_22F0CE0BC(v25, v27, type metadata accessor for PeopleLocation);
  sub_22F0CFF1C();
  LocationItem.init(with:for:)(v27, v10, v11, v28);
  v0[22] = sub_22F0D10AC();
  v0[23] = sub_22F0D109C();
  v30 = sub_22F0D106C();

  return MEMORY[0x2822009F8](sub_22F0C9678, v30, v29);
}

uint64_t sub_22F0C9678()
{
  v1 = *(v0 + 184);
  sub_22F0D00CC();
  if (qword_280CBD620 != -1)
  {
    swift_once();
  }

  return MEMORY[0x2822009F8](sub_22F0C9710, 0, 0);
}

uint64_t sub_22F0C9710()
{
  v1 = *(v0 + 176);
  *(v0 + 192) = sub_22F0D109C();
  v3 = sub_22F0D106C();

  return MEMORY[0x2822009F8](sub_22F0C979C, v3, v2);
}

uint64_t sub_22F0C979C()
{
  v1 = v0[24];
  v2 = v0[21];
  sub_22F0D00CC();
  swift_beginAccess();
  v0[25] = qword_280CBD628;
  sub_22F0CFF1C();
  sub_22F0CFFAC();
  v3 = swift_task_alloc();
  v0[26] = v3;
  *v3 = v0;
  v3[1] = sub_22F0C9884;
  v4 = v0[20];
  v5 = v0[21];
  v6 = v0[7];

  return sub_22F089B58(v6, v4, v5);
}

uint64_t sub_22F0C9884()
{
  v1 = *(*v0 + 208);
  v2 = *(*v0 + 200);
  v3 = *(*v0 + 168);
  v5 = *v0;

  sub_22F0D00CC();

  return MEMORY[0x2822009F8](sub_22F0C99B8, 0, 0);
}

uint64_t sub_22F0C99B8()
{
  v75 = v0;
  v1 = v0[7];
  if (LocationItem.expired.getter() || (v2 = v0[7], (LocationItem.hasMoved(from:)(v0[8]) & 1) != 0) || (v3 = v0[7], v4 = *(v3 + 16), v5 = *(v3 + 24), v6 = String.trimToNil()(), !v6.value._object))
  {
    v39 = v0[21];
    v40 = v0[14];
    v41 = v0[8];

    sub_22F0CE124(v41, type metadata accessor for LocationItem);
    sub_22F0CE124(v40, type metadata accessor for PeopleLocation);
    v37 = v0[19];
    v38 = v0[17];
    goto LABEL_12;
  }

  if (qword_280CBDB48 != -1)
  {
    swift_once();
  }

  v7 = v0[21];
  v8 = sub_22F0D0A1C();
  __swift_project_value_buffer(v8, qword_280CBDB50);
  sub_22F0CFF1C();
  v9 = sub_22F0D09FC();
  v10 = sub_22F0D124C();

  if (os_log_type_enabled(v9, v10))
  {
    v12 = v0[20];
    v11 = v0[21];
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v74 = v14;
    *v13 = 136315395;
    *(v13 + 4) = sub_22F00A560(0xD00000000000001ELL, 0x800000022F0E0210, &v74);
    *(v13 + 12) = 2081;
    sub_22F0CFF1C();
    v15 = sub_22F00A560(v12, v11, &v74);

    *(v13 + 14) = v15;
    _os_log_impl(&dword_22EFE1000, v9, v10, "%s enriching %{private}s", v13, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x2318FE8B0](v14, -1, -1);
    MEMORY[0x2318FE8B0](v13, -1, -1);
  }

  v16 = v0[14];
  v17 = v0[12];
  v19 = v0[6];
  v18 = v0[7];
  v20 = *(v0[9] + 20);
  v21 = sub_22F0D05BC();
  v22 = (*(*(v21 - 8) + 16))(v17 + v20, v16 + v20, v21);
  v25 = *(v18 + *(v19 + 28));
  v26 = *(v25 + 16);
  if (!v26)
  {
    __break(1u);
    goto LABEL_32;
  }

  if (v26 == 1)
  {
LABEL_32:
    __break(1u);
    return MEMORY[0x2822009F8](v22, v23, v24);
  }

  v27 = v0[21];
  v28 = v0[19];
  v29 = v0[14];
  v30 = v0[9];
  v72 = v0[20];
  v73 = v0[8];
  v31 = *(v29 + v30[7]);
  v33 = v0[11];
  v32 = v0[12];
  v34 = *(v29 + v30[6]);
  v35 = [objc_allocWithZone(MEMORY[0x277CE41F8]) initWithLatitude:*(v25 + 32) longitude:*(v25 + 40)];
  *v32 = v6;
  *(&v32->value._countAndFlagsBits + v30[6]) = v34;
  *(&v32->value._countAndFlagsBits + v30[7]) = v31;
  *(&v32->value._countAndFlagsBits + v30[8]) = v35;
  sub_22F0CE00C(v32, v33, type metadata accessor for PeopleLocation);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v74 = v28;
  sub_22F018348(v33, v72, v27, isUniquelyReferenced_nonNull_native);

  sub_22F0CE124(v73, type metadata accessor for LocationItem);
  sub_22F0CE124(v29, type metadata accessor for PeopleLocation);
  v37 = v74;
  v38 = v74;
LABEL_12:
  sub_22F0CE124(v0[7], type metadata accessor for LocationItem);
  while (1)
  {
    v42 = v0[18];
    v43 = v0[16];
    do
    {
      if (v42 == v43 - 1)
      {
        v51 = v0[15];
        sub_22F0D00CC();
        if (qword_280CBDB48 == -1)
        {
          goto LABEL_20;
        }

        goto LABEL_30;
      }

      v44 = v0[15];
      if (++v42 >= *(v44 + 16))
      {
        __break(1u);
LABEL_30:
        swift_once();
LABEL_20:
        v52 = sub_22F0D0A1C();
        __swift_project_value_buffer(v52, qword_280CBDB50);
        sub_22F0CFF1C();
        v53 = sub_22F0D09FC();
        v54 = sub_22F0D124C();
        if (os_log_type_enabled(v53, v54))
        {
          v55 = swift_slowAlloc();
          v56 = swift_slowAlloc();
          v74 = v56;
          *v55 = 136315394;
          *(v55 + 4) = sub_22F00A560(0xD00000000000001ELL, 0x800000022F0E0210, &v74);
          *(v55 + 12) = 2048;
          *(v55 + 14) = *(v38 + 16);

          _os_log_impl(&dword_22EFE1000, v53, v54, "%s enriched %ld locations", v55, 0x16u);
          __swift_destroy_boxed_opaque_existential_1Tm(v56);
          MEMORY[0x2318FE8B0](v56, -1, -1);
          MEMORY[0x2318FE8B0](v55, -1, -1);
        }

        else
        {
        }

        v58 = v0[13];
        v57 = v0[14];
        v60 = v0[11];
        v59 = v0[12];
        v62 = v0[7];
        v61 = v0[8];

        v63 = v0[1];

        __asm { BRAA            X2, X16 }
      }

      v0[18] = v42;
      v0[19] = v37;
      v0[17] = v38;
      v45 = v0[5];
      v46 = v44 + 16 * v42;
      v47 = *(v46 + 32);
      v0[20] = v47;
      v48 = *(v46 + 40);
      v0[21] = v48;
    }

    while (!*(v45 + 16));
    sub_22F0CFF1C();
    v49 = sub_22EFFDA80(v47, v48);
    if (v50)
    {
      break;
    }
  }

  v64 = v0[13];
  v65 = v0[14];
  v66 = v0[12];
  v67 = v0[8];
  sub_22F0CE0BC(*(v0[5] + 56) + *(v0[10] + 72) * v49, v64, type metadata accessor for PeopleLocation);
  sub_22F0CE00C(v64, v65, type metadata accessor for PeopleLocation);
  sub_22F0CE0BC(v65, v66, type metadata accessor for PeopleLocation);
  sub_22F0CFF1C();
  LocationItem.init(with:for:)(v66, v47, v48, v67);
  v0[22] = sub_22F0D10AC();
  v0[23] = sub_22F0D109C();
  v68 = sub_22F0D106C();
  v70 = v69;
  v22 = sub_22F0C9678;
  v23 = v68;
  v24 = v70;

  return MEMORY[0x2822009F8](v22, v23, v24);
}

uint64_t sub_22F0CA0B8(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v10 = type metadata accessor for PeopleLocation();
  v43 = *(v10 - 8);
  v11 = *(v43 + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA2508, &qword_22F0DC110);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = (v42 - v16);
  v18 = -1 << *(a1 + 32);
  v19 = ~v18;
  v20 = *(a1 + 64);
  v21 = -v18;
  v42[3] = a1;
  v42[4] = a1 + 64;
  if (v21 < 64)
  {
    v22 = ~(-1 << v21);
  }

  else
  {
    v22 = -1;
  }

  v42[5] = v19;
  v42[6] = 0;
  v42[7] = v22 & v20;
  v42[8] = a2;
  v42[9] = a3;
  sub_22F0CFF1C();
  v42[1] = a3;
  sub_22F0CFFAC();
  while (1)
  {
    sub_22F0C846C(v17);
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1D60, &qword_22F0D90C8);
    if ((*(*(v23 - 8) + 48))(v17, 1, v23) == 1)
    {
      sub_22F003524();
      return sub_22F0D00CC();
    }

    v25 = *v17;
    v24 = v17[1];
    sub_22F0CE00C(v17 + *(v23 + 48), v13, type metadata accessor for PeopleLocation);
    v26 = *a5;
    v28 = sub_22EFFDA80(v25, v24);
    v29 = v26[2];
    v30 = (v27 & 1) == 0;
    v31 = v29 + v30;
    if (__OFADD__(v29, v30))
    {
      break;
    }

    v32 = v27;
    if (v26[3] >= v31)
    {
      if (a4)
      {
        v36 = *a5;
        if ((v27 & 1) == 0)
        {
          goto LABEL_14;
        }
      }

      else
      {
        sub_22F060C94();
        v36 = *a5;
        if ((v32 & 1) == 0)
        {
          goto LABEL_14;
        }
      }

LABEL_5:

      sub_22F0CE184(v13, v36[7] + *(v43 + 72) * v28);
      a4 = 1;
    }

    else
    {
      sub_22F07B6A4(v31, a4 & 1);
      v33 = *a5;
      v34 = sub_22EFFDA80(v25, v24);
      if ((v32 & 1) != (v35 & 1))
      {
        goto LABEL_21;
      }

      v28 = v34;
      v36 = *a5;
      if (v32)
      {
        goto LABEL_5;
      }

LABEL_14:
      v36[(v28 >> 6) + 8] |= 1 << v28;
      v37 = (v36[6] + 16 * v28);
      *v37 = v25;
      v37[1] = v24;
      sub_22F0CE00C(v13, v36[7] + *(v43 + 72) * v28, type metadata accessor for PeopleLocation);
      v38 = v36[2];
      v39 = __OFADD__(v38, 1);
      v40 = v38 + 1;
      if (v39)
      {
        goto LABEL_20;
      }

      v36[2] = v40;
      a4 = 1;
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  result = sub_22F0D191C();
  __break(1u);
  return result;
}

uint64_t sub_22F0CA404(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v6 = 0;
  v7 = a3 + 64;
  v8 = 1 << *(a3 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(a3 + 64);
  v11 = (v8 + 63) >> 6;
  while (v10)
  {
LABEL_9:
    v13 = (*(a3 + 48) + ((v6 << 10) | (16 * __clz(__rbit64(v10)))));
    if (*v13 != a1 || v13[1] != a2)
    {
      v10 &= v10 - 1;
      if ((sub_22F0D188C() & 1) == 0)
      {
        continue;
      }
    }

    if (qword_280CBDB48 != -1)
    {
      swift_once();
    }

    v15 = sub_22F0D0A1C();
    __swift_project_value_buffer(v15, qword_280CBDB50);
    sub_22F0CFF1C();
    v16 = sub_22F0D09FC();
    v17 = sub_22F0D124C();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v26 = v19;
      *v18 = 136315395;
      *(v18 + 4) = sub_22F00A560(0xD00000000000001ELL, 0x800000022F0E0180, &v26);
      *(v18 + 12) = 2081;
      *(v18 + 14) = sub_22F00A560(a1, a2, &v26);
      _os_log_impl(&dword_22EFE1000, v16, v17, "%s %{private}s is found in share set", v18, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x2318FE8B0](v19, -1, -1);
      MEMORY[0x2318FE8B0](v18, -1, -1);
    }

    return 1;
  }

  while (1)
  {
    v12 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      __break(1u);
      goto LABEL_24;
    }

    if (v12 >= v11)
    {
      break;
    }

    v10 = *(v7 + 8 * v12);
    ++v6;
    if (v10)
    {
      v6 = v12;
      goto LABEL_9;
    }
  }

  if (qword_280CBDB48 == -1)
  {
    goto LABEL_20;
  }

LABEL_24:
  swift_once();
LABEL_20:
  v21 = sub_22F0D0A1C();
  __swift_project_value_buffer(v21, qword_280CBDB50);
  sub_22F0CFF1C();
  v22 = sub_22F0D09FC();
  v23 = sub_22F0D124C();

  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v26 = v25;
    *v24 = 136315395;
    *(v24 + 4) = sub_22F00A560(0xD00000000000001ELL, 0x800000022F0E0180, &v26);
    *(v24 + 12) = 2081;
    *(v24 + 14) = sub_22F00A560(a1, a2, &v26);
    _os_log_impl(&dword_22EFE1000, v22, v23, "%s %{private}s is not sharing", v24, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x2318FE8B0](v25, -1, -1);
    MEMORY[0x2318FE8B0](v24, -1, -1);
  }

  return 0;
}

void sub_22F0CA788(uint64_t a1, unint64_t a2, uint64_t a3, void *a4)
{
  if ((sub_22F0CA404(a1, a2, a3) & 1) == 0 && [a4 locationChangeType] == 1)
  {
    if (qword_280CBDB48 != -1)
    {
      swift_once();
    }

    v7 = sub_22F0D0A1C();
    __swift_project_value_buffer(v7, qword_280CBDB50);
    sub_22F0CFF1C();
    oslog = sub_22F0D09FC();
    v8 = sub_22F0D124C();

    if (os_log_type_enabled(oslog, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v12 = v10;
      *v9 = 136380675;
      *(v9 + 4) = sub_22F00A560(a1, a2, &v12);
      _os_log_impl(&dword_22EFE1000, oslog, v8, "%{private}s is not actively sharing yet", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v10);
      MEMORY[0x2318FE8B0](v10, -1, -1);
      MEMORY[0x2318FE8B0](v9, -1, -1);
    }

    else
    {
    }
  }
}

uint64_t sub_22F0CA924(uint64_t a1, uint64_t a2)
{
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return MEMORY[0x2822009F8](sub_22F0CA944, 0, 0);
}

uint64_t sub_22F0CA944()
{
  v1 = *(v0 + 40);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  v4 = *(v3 + 16);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v0 + 48) = v6;
  *v6 = v0;
  v6[1] = sub_22F0CAA68;

  return v8(v2, v3);
}

uint64_t sub_22F0CAA68(uint64_t a1)
{
  v3 = *(*v2 + 48);
  v4 = *v2;
  v4[7] = a1;
  v4[8] = v1;

  if (v1)
  {
    v5 = v4[1];

    __asm { BRAA            X1, X16 }
  }

  return MEMORY[0x2822009F8](sub_22F0CAB9C, 0, 0);
}

uint64_t sub_22F0CAB9C()
{
  v77 = v0;
  v1 = v0[7];
  v2 = *(v1 + 2);
  if (v2)
  {
    v3 = 0;
    v73 = v0[8];
    v66 = -v2;
    v68 = v0 + 2;
    v4 = v1 + 40;
    v5 = MEMORY[0x277D84F90];
    v64 = v1 + 40;
    do
    {
      v65 = v5;
      v6 = &v4[16 * v3++];
      v0 = &unk_280CBD000;
      while (1)
      {
        if ((v3 - 1) >= *(v1 + 2))
        {
          __break(1u);
          goto LABEL_47;
        }

        v7 = v70[4];
        v8 = *v6;
        v71 = *(v6 - 1);
        v70[2] = v71;
        v70[3] = v8;
        v9 = swift_task_alloc();
        *(v9 + 16) = v68;
        sub_22F0CFF1C();
        v10 = sub_22F051C9C(sub_22F034BF4, v9, v7);

        if (v0[361] != -1)
        {
          swift_once();
        }

        v11 = sub_22F0D0A1C();
        __swift_project_value_buffer(v11, qword_280CBDB50);
        sub_22F0CFF1C();
        v12 = sub_22F0D09FC();
        v13 = sub_22F0D122C();

        if (os_log_type_enabled(v12, v13))
        {
          v14 = swift_slowAlloc();
          v15 = v0;
          v16 = v1;
          v17 = swift_slowAlloc();
          v76[0] = v17;
          *v14 = 136315650;
          *(v14 + 4) = sub_22F00A560(0xD000000000000037, 0x800000022F0E01A0, v76);
          *(v14 + 12) = 2080;
          *(v14 + 14) = sub_22F00A560(v71, v8, v76);
          *(v14 + 22) = 1024;
          *(v14 + 24) = v10 & 1;
          _os_log_impl(&dword_22EFE1000, v12, v13, "%s in update set: %s: in set: %{BOOL}d ", v14, 0x1Cu);
          swift_arrayDestroy();
          v18 = v17;
          v1 = v16;
          v0 = v15;
          MEMORY[0x2318FE8B0](v18, -1, -1);
          MEMORY[0x2318FE8B0](v14, -1, -1);
        }

        if (v10)
        {
          break;
        }

        ++v3;
        v6 += 2;
        if (v66 + v3 == 1)
        {
          v0 = v70;
          v5 = v65;
          goto LABEL_19;
        }
      }

      v5 = v65;
      v75 = v65;
      v19 = v1;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_22EFFC890(0, *(v65 + 16) + 1, 1);
        v5 = v75;
      }

      v0 = v70;
      v4 = v64;
      v21 = *(v5 + 16);
      v20 = *(v5 + 24);
      if (v21 >= v20 >> 1)
      {
        sub_22EFFC890((v20 > 1), v21 + 1, 1);
        v4 = v64;
        v5 = v75;
      }

      *(v5 + 16) = v21 + 1;
      v22 = v5 + 16 * v21;
      *(v22 + 32) = v71;
      *(v22 + 40) = v8;
      v1 = v19;
    }

    while (v66 + v3);
  }

  else
  {
    v5 = MEMORY[0x277D84F90];
  }

LABEL_19:
  v23 = v0[7];

  v24 = *(v5 + 16);
  if (v24)
  {
    v25 = 0;
    v26 = (v5 + 40);
    v1 = MEMORY[0x277D84F90];
    while (v25 < *(v5 + 16))
    {
      v28 = *(v26 - 1);
      v27 = *v26;
      sub_22F0CFF1C();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v1 = sub_22F03D0D8(0, *(v1 + 2) + 1, 1, v1);
      }

      v30 = *(v1 + 2);
      v29 = *(v1 + 3);
      if (v30 >= v29 >> 1)
      {
        v1 = sub_22F03D0D8((v29 > 1), v30 + 1, 1, v1);
      }

      ++v25;
      v0[9] = v1;
      *(v1 + 2) = v30 + 1;
      v31 = &v1[16 * v30];
      *(v31 + 4) = v28;
      *(v31 + 5) = v27;
      v26 += 2;
      if (v24 == v25)
      {
        sub_22F0D00CC();
        if (qword_280CBDB48 != -1)
        {
          goto LABEL_48;
        }

        goto LABEL_28;
      }
    }

LABEL_47:
    __break(1u);
LABEL_48:
    swift_once();
LABEL_28:
    v32 = sub_22F0D0A1C();
    __swift_project_value_buffer(v32, qword_280CBDB50);
    sub_22F0CFF1C();
    v33 = sub_22F0D09FC();
    v34 = sub_22F0D124C();

    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v75 = v36;
      *v35 = 136315394;
      *(v35 + 4) = sub_22F00A560(0xD000000000000037, 0x800000022F0E01A0, &v75);
      *(v35 + 12) = 2080;
      v37 = *(v1 + 2);
      v38 = MEMORY[0x277D84F90];
      if (v37)
      {
        v67 = v36;
        v69 = v34;
        v72 = v35;
        v76[0] = MEMORY[0x277D84F90];
        sub_22EFFC4E8(0, v37, 0);
        v38 = v76[0];
        v39 = *(v76[0] + 16);
        v40 = 16 * v39;
        v41 = (v1 + 40);
        do
        {
          v42 = *(v41 - 1);
          v43 = *v41;
          v76[0] = v38;
          v44 = *(v38 + 24);
          sub_22F0CFF1C();
          if (v39 >= v44 >> 1)
          {
            sub_22EFFC4E8((v44 > 1), v39 + 1, 1);
            v38 = v76[0];
          }

          *(v38 + 16) = v39 + 1;
          v45 = v38 + v40;
          *(v45 + 32) = v42;
          *(v45 + 40) = v43;
          v40 += 16;
          v41 += 2;
          ++v39;
          --v37;
        }

        while (v37);
        v0 = v70;
        v35 = v72;
        v34 = v69;
        v36 = v67;
      }

      v54 = MEMORY[0x2318FD490](v38, MEMORY[0x277D837D0]);
      v56 = v55;

      v57 = sub_22F00A560(v54, v56, &v75);

      *(v35 + 14) = v57;
      _os_log_impl(&dword_22EFE1000, v33, v34, "%s friends sharing returned %s", v35, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x2318FE8B0](v36, -1, -1);
      MEMORY[0x2318FE8B0](v35, -1, -1);
    }

    v58 = v0[5];
    v59 = v58[3];
    v60 = v58[4];
    __swift_project_boxed_opaque_existential_1(v58, v59);
    v61 = *(v60 + 8);
    v74 = (v61 + *v61);
    v62 = v61[1];
    v63 = swift_task_alloc();
    v0[10] = v63;
    *v63 = v0;
    v63[1] = sub_22F0CB438;

    return (v74)(v1, 0, v59, v60);
  }

  else
  {
    sub_22F0D00CC();
    if (qword_280CBDB48 != -1)
    {
      swift_once();
    }

    v46 = sub_22F0D0A1C();
    __swift_project_value_buffer(v46, qword_280CBDB50);
    v47 = sub_22F0D09FC();
    v48 = sub_22F0D124C();
    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      v76[0] = v50;
      *v49 = 136315138;
      *(v49 + 4) = sub_22F00A560(0xD000000000000037, 0x800000022F0E01A0, v76);
      _os_log_impl(&dword_22EFE1000, v47, v48, "%s friends sharing in set returned empty list", v49, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v50);
      MEMORY[0x2318FE8B0](v50, -1, -1);
      MEMORY[0x2318FE8B0](v49, -1, -1);
    }

    v51 = sub_22F07DFC0(MEMORY[0x277D84F90]);
    v52 = v0[1];

    return v52(v51);
  }
}

uint64_t sub_22F0CB438(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 80);
  v6 = *v2;
  *(*v2 + 88) = v1;

  if (v1)
  {
    v7 = sub_22F0CB5C8;
  }

  else
  {
    *(v4 + 96) = a1;
    v7 = sub_22F0CB560;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_22F0CB560()
{
  v1 = v0[9];

  v2 = v0[12];
  v3 = v0[1];

  return v3(v2);
}

uint64_t sub_22F0CB5C8()
{
  v1 = v0[9];

  v2 = v0[11];
  v3 = v0[1];

  return v3();
}

uint64_t sub_22F0CB62C(uint64_t a1, uint64_t a2)
{
  v2[24] = a1;
  v2[25] = a2;
  v3 = *(*(type metadata accessor for LocationItem(0) - 8) + 64) + 15;
  v2[26] = swift_task_alloc();
  v2[27] = swift_task_alloc();
  v2[28] = swift_task_alloc();
  v2[29] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAA1170, &unk_22F0D5A60);
  v2[30] = v4;
  v5 = *(v4 - 8);
  v2[31] = v5;
  v6 = *(v5 + 64) + 15;
  v2[32] = swift_task_alloc();
  v7 = sub_22F0D05BC();
  v2[33] = v7;
  v8 = *(v7 - 8);
  v2[34] = v8;
  v9 = *(v8 + 64) + 15;
  v2[35] = swift_task_alloc();
  v2[36] = swift_task_alloc();
  v10 = type metadata accessor for PeopleLocation();
  v2[37] = v10;
  v11 = *(v10 - 8);
  v2[38] = v11;
  v12 = *(v11 + 64) + 15;
  v2[39] = swift_task_alloc();
  v2[40] = swift_task_alloc();
  v2[41] = swift_task_alloc();
  v2[42] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22F0CB830, 0, 0);
}

uint64_t sub_22F0CB830()
{
  v1 = *(v0 + 200);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  v4 = *(v3 + 8);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v0 + 344) = v6;
  *v6 = v0;
  v6[1] = sub_22F0CB95C;

  return v8(v0 + 104, v2, v3);
}

uint64_t sub_22F0CB95C()
{
  v1 = *(*v0 + 344);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_22F0CBA58, 0, 0);
}

uint64_t sub_22F0CBA58()
{
  v42 = v0;
  if (*(v0 + 128))
  {
    v1 = *(v0 + 192);
    sub_22EFE6B9C((v0 + 104), v0 + 64);
    v2 = [v1 idsHandle];
    v3 = sub_22F0D0CAC();
    v5 = v4;

    *(v0 + 352) = v3;
    *(v0 + 360) = v5;
    if (qword_280CBDB48 != -1)
    {
      swift_once();
    }

    v6 = *(v0 + 192);
    v7 = sub_22F0D0A1C();
    *(v0 + 368) = __swift_project_value_buffer(v7, qword_280CBDB50);
    sub_22F0CFF1C();
    v8 = v6;
    v9 = sub_22F0D09FC();
    v10 = sub_22F0D124C();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = *(v0 + 192);
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v41 = v13;
      *v12 = 136315650;
      *(v12 + 4) = sub_22F00A560(0xD000000000000031, 0x800000022F0E0100, &v41);
      *(v12 + 12) = 2080;
      *(v12 + 14) = sub_22F00A560(v3, v5, &v41);
      *(v12 + 22) = 2080;
      v14 = [v11 locationChangeType];
      if (v14)
      {
        v15 = 0xE700000000000000;
        v16 = 0x6E776F6E6B6E75;
        if (v14 == 1)
        {
          v16 = 0x2064657472617473;
          v15 = 0xEF676E6972616873;
        }

        v17 = v14 == 2;
        if (v14 == 2)
        {
          v18 = 0x20646570706F7473;
        }

        else
        {
          v18 = v16;
        }

        if (v17)
        {
          v19 = 0xEF676E6972616873;
        }

        else
        {
          v19 = v15;
        }
      }

      else
      {
        v19 = 0xE700000000000000;
        v18 = 0x64657461647075;
      }

      v37 = sub_22F00A560(v18, v19, &v41);

      *(v12 + 24) = v37;
      _os_log_impl(&dword_22EFE1000, v9, v10, "%s %s event %s", v12, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x2318FE8B0](v13, -1, -1);
      MEMORY[0x2318FE8B0](v12, -1, -1);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA0DD0, &qword_22F0D4FA0);
    inited = swift_initStackObject();
    *(v0 + 376) = inited;
    *(inited + 16) = xmmword_22F0D2BF0;
    *(inited + 32) = v3;
    *(inited + 40) = v5;
    sub_22F0CFF1C();
    v39 = swift_task_alloc();
    *(v0 + 384) = v39;
    *v39 = v0;
    v39[1] = sub_22F0CBF84;

    return sub_22F0CA924(inited, v0 + 64);
  }

  else
  {
    sub_22F003A4C(v0 + 104, &qword_27DAA2500, &qword_22F0DC0C8);
    if (qword_280CBDB48 != -1)
    {
      swift_once();
    }

    v20 = sub_22F0D0A1C();
    __swift_project_value_buffer(v20, qword_280CBDB50);
    v21 = sub_22F0D09FC();
    v22 = sub_22F0D123C();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v41 = v24;
      *v23 = 136315138;
      *(v23 + 4) = sub_22F00A560(0xD000000000000031, 0x800000022F0E0100, &v41);
      _os_log_impl(&dword_22EFE1000, v21, v22, "%s can't grab session, fallback to significant", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v24);
      MEMORY[0x2318FE8B0](v24, -1, -1);
      MEMORY[0x2318FE8B0](v23, -1, -1);
    }

    v26 = *(v0 + 328);
    v25 = *(v0 + 336);
    v28 = *(v0 + 312);
    v27 = *(v0 + 320);
    v30 = *(v0 + 280);
    v29 = *(v0 + 288);
    v31 = *(v0 + 256);
    v33 = *(v0 + 224);
    v32 = *(v0 + 232);
    v34 = *(v0 + 216);
    v40 = *(v0 + 208);

    v35 = *(v0 + 8);

    return v35(1);
  }
}

uint64_t sub_22F0CBF84(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 384);
  v6 = *v2;
  v4[49] = a1;
  v4[50] = v1;

  v7 = v3[47];
  if (v1)
  {
    v8 = v4[45];

    swift_setDeallocating();
    sub_22F022C14(v7 + 32);
    v9 = sub_22F0CCB88;
  }

  else
  {
    swift_setDeallocating();
    sub_22F022C14(v7 + 32);
    v9 = sub_22F0CC0E4;
  }

  return MEMORY[0x2822009F8](v9, 0, 0);
}

uint64_t sub_22F0CC0E4()
{
  v115 = v0;
  v1 = [*(v0 + 192) locationChangeType] == 2 || objc_msgSend(*(v0 + 192), sel_locationChangeType) == 1;
  if ([*(v0 + 192) locationChangeType] == 1)
  {
    v3 = *(v0 + 360);
    v2 = *(v0 + 368);
    sub_22F0CFF1C();
    v4 = sub_22F0D09FC();
    v5 = sub_22F0D124C();

    if (os_log_type_enabled(v4, v5))
    {
      v7 = *(v0 + 352);
      v6 = *(v0 + 360);
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v114 = v9;
      *v8 = 136380675;
      *(v8 + 4) = sub_22F00A560(v7, v6, &v114);
      _os_log_impl(&dword_22EFE1000, v4, v5, "%{private}s just started sharing", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v9);
      MEMORY[0x2318FE8B0](v9, -1, -1);
      MEMORY[0x2318FE8B0](v8, -1, -1);
    }

LABEL_8:
    v10 = MEMORY[0x277D84F90];
    goto LABEL_15;
  }

  if ([*(v0 + 192) locationChangeType] != 2)
  {
    v68 = *(v0 + 192);
    v69 = [v68 latitude];
    [v69 doubleValue];
    v71 = v70;

    v72 = [v68 longitude];
    [v72 doubleValue];
    v74 = v73;

    if (v71 == 0.0 || v74 == 0.0)
    {
      v75 = *(v0 + 392);
      v76 = *(v0 + 360);
      v77 = *(v0 + 368);
      v78 = *(v0 + 192);

      v79 = v78;
      v80 = sub_22F0D09FC();
      v81 = sub_22F0D123C();

      if (os_log_type_enabled(v80, v81))
      {
        v82 = *(v0 + 192);
        v83 = swift_slowAlloc();
        v84 = swift_slowAlloc();
        v114 = v84;
        *v83 = 136315394;
        *(v83 + 4) = sub_22F00A560(0xD000000000000031, 0x800000022F0E0100, &v114);
        *(v83 + 12) = 2080;
        v85 = [v82 idsHandle];
        v86 = sub_22F0D0CAC();
        v88 = v87;

        v89 = sub_22F00A560(v86, v88, &v114);

        *(v83 + 14) = v89;
        _os_log_impl(&dword_22EFE1000, v80, v81, "%s Ignoring 'Null Island' latlng for %s", v83, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x2318FE8B0](v84, -1, -1);
        MEMORY[0x2318FE8B0](v83, -1, -1);
      }

      __swift_destroy_boxed_opaque_existential_1Tm((v0 + 64));
      goto LABEL_40;
    }

    goto LABEL_8;
  }

  v12 = *(v0 + 360);
  v11 = *(v0 + 368);
  sub_22F0CFF1C();
  v13 = sub_22F0D09FC();
  v14 = sub_22F0D124C();

  if (os_log_type_enabled(v13, v14))
  {
    v16 = *(v0 + 352);
    v15 = *(v0 + 360);
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v114 = v18;
    *v17 = 136380675;
    *(v17 + 4) = sub_22F00A560(v16, v15, &v114);
    _os_log_impl(&dword_22EFE1000, v13, v14, "%{private}s just stopped sharing", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v18);
    MEMORY[0x2318FE8B0](v18, -1, -1);
    MEMORY[0x2318FE8B0](v17, -1, -1);
  }

  v19 = *(v0 + 360);
  sub_22F0CFF1C();
  v10 = sub_22F03C784(0, 1, 1, MEMORY[0x277D84F90]);
  v21 = *(v10 + 2);
  v20 = *(v10 + 3);
  if (v21 >= v20 >> 1)
  {
    v10 = sub_22F03C784((v20 > 1), v21 + 1, 1, v10);
  }

  v23 = *(v0 + 352);
  v22 = *(v0 + 360);
  *(v10 + 2) = v21 + 1;
  v24 = &v10[16 * v21];
  *(v24 + 4) = v23;
  *(v24 + 5) = v22;
LABEL_15:
  v25 = *(v0 + 392);
  sub_22F0CA788(*(v0 + 352), *(v0 + 360), v25, *(v0 + 192));
  v26 = *(v25 + 32);
  *(v0 + 536) = v26;
  v27 = -1;
  v28 = -1 << v26;
  if (-(-1 << v26) < 64)
  {
    v27 = ~(-1 << -v28);
  }

  v29 = v27 & *(v25 + 64);
  *(v0 + 408) = v10;
  *(v0 + 537) = v1;
  sub_22F0CFF1C();
  if (!v29)
  {
    v32 = 0;
    v31 = *(v0 + 392);
    while (((63 - v28) >> 6) - 1 != v32)
    {
      v30 = v32 + 1;
      v29 = *(v31 + 8 * v32++ + 72);
      if (v29)
      {
        goto LABEL_22;
      }
    }

    v90 = *(v0 + 360);
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 64));

    sub_22F0D00CC();

LABEL_40:
    v92 = *(v0 + 328);
    v91 = *(v0 + 336);
    v94 = *(v0 + 312);
    v93 = *(v0 + 320);
    v96 = *(v0 + 280);
    v95 = *(v0 + 288);
    v97 = *(v0 + 256);
    v99 = *(v0 + 224);
    v98 = *(v0 + 232);
    v100 = *(v0 + 216);
    v111 = *(v0 + 208);

    v101 = *(v0 + 8);

    __asm { BRAA            X2, X16 }
  }

  v30 = 0;
  v31 = *(v0 + 392);
LABEL_22:
  *(v0 + 416) = v29;
  *(v0 + 424) = v30;
  v33 = (*(v31 + 48) + ((v30 << 10) | (16 * __clz(__rbit64(v29)))));
  v34 = *v33;
  *(v0 + 432) = *v33;
  v35 = v33[1];
  *(v0 + 440) = v35;
  if (!*(v31 + 16))
  {
    goto LABEL_45;
  }

  sub_22F0CFF1C();
  v36 = sub_22EFFDA80(v34, v35);
  if ((v37 & 1) == 0)
  {
LABEL_44:

LABEL_45:
    *(v0 + 488) = v10;
    *(v0 + 538) = v1;
    *(v0 + 496) = sub_22F0D10AC();
    *(v0 + 504) = sub_22F0D109C();
    v102 = sub_22F0D106C();
    v104 = v103;
    v105 = sub_22F0CD6F4;
    goto LABEL_48;
  }

  v39 = *(v0 + 352);
  v38 = *(v0 + 360);
  v41 = *(v0 + 328);
  v40 = *(v0 + 336);
  sub_22F0CE0BC(*(*(v0 + 392) + 56) + *(*(v0 + 304) + 72) * v36, v41, type metadata accessor for PeopleLocation);
  sub_22F0CE00C(v41, v40, type metadata accessor for PeopleLocation);
  if (v34 != v39 || v35 != v38)
  {
    v43 = *(v0 + 352);
    v44 = *(v0 + 360);
    if ((sub_22F0D188C() & 1) == 0)
    {
      sub_22F0CE124(*(v0 + 336), type metadata accessor for PeopleLocation);
      goto LABEL_44;
    }
  }

  v110 = *(*(v0 + 296) + 20);
  v112 = *(v0 + 336);
  if (qword_27DAA0648 != -1)
  {
    swift_once();
  }

  v45 = *(v0 + 280);
  v46 = *(v0 + 288);
  v47 = *(v0 + 272);
  v108 = v46;
  v109 = *(v0 + 264);
  v48 = *(v0 + 248);
  v49 = *(v0 + 256);
  v50 = *(v0 + 240);
  __swift_project_value_buffer(v50, qword_27DAA21F8);
  sub_22F0D05AC();
  v51 = [objc_opt_self() seconds];
  sub_22F0D019C();

  sub_22F0D018C();
  (*(v48 + 8))(v49, v50);
  sub_22F0D054C();
  v52 = sub_22F0D053C();
  v53 = *(v47 + 8);
  v53(v45, v109);
  v53(v108, v109);
  if (v52)
  {
    v54 = *(v0 + 368);
    sub_22F0CE0BC(*(v0 + 336), *(v0 + 320), type metadata accessor for PeopleLocation);
    sub_22F0CFF1C();
    v55 = sub_22F0D09FC();
    v56 = sub_22F0D124C();

    v57 = os_log_type_enabled(v55, v56);
    v58 = *(v0 + 320);
    if (v57)
    {
      v59 = *(v0 + 296);
      v113 = *(v0 + 264);
      v60 = swift_slowAlloc();
      v61 = swift_slowAlloc();
      v114 = v61;
      *v60 = 136315394;
      sub_22F0CFF1C();
      v62 = sub_22F00A560(v34, v35, &v114);

      *(v60 + 4) = v62;
      *(v60 + 12) = 2080;
      v63 = *(v59 + 20);
      sub_22F0CE074(&qword_27DAA1670, MEMORY[0x277CC9578]);
      v64 = sub_22F0D183C();
      v66 = v65;
      sub_22F0CE124(v58, type metadata accessor for PeopleLocation);
      v67 = sub_22F00A560(v64, v66, &v114);

      *(v60 + 14) = v67;
      _os_log_impl(&dword_22EFE1000, v55, v56, "%s: expired %s", v60, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x2318FE8B0](v61, -1, -1);
      MEMORY[0x2318FE8B0](v60, -1, -1);
    }

    else
    {

      sub_22F0CE124(v58, type metadata accessor for PeopleLocation);
    }
  }

  *(v0 + 448) = sub_22F0D10AC();
  *(v0 + 456) = sub_22F0D109C();
  v102 = sub_22F0D106C();
  v104 = v106;
  v105 = sub_22F0CCCBC;
LABEL_48:

  return MEMORY[0x2822009F8](v105, v102, v104);
}

uint64_t sub_22F0CCB88()
{
  v1 = v0[50];
  v2 = v0[46];
  v3 = v1;
  Logger.ifError(_:message:)(v1);

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 8);
  v5 = v0[41];
  v4 = v0[42];
  v7 = v0[39];
  v6 = v0[40];
  v9 = v0[35];
  v8 = v0[36];
  v10 = v0[32];
  v12 = v0[28];
  v11 = v0[29];
  v13 = v0[27];
  v16 = v0[26];

  v14 = v0[1];

  return v14(1);
}

uint64_t sub_22F0CCCBC()
{
  v1 = *(v0 + 456);
  sub_22F0D00CC();
  if (qword_280CBD620 != -1)
  {
    swift_once();
  }

  return MEMORY[0x2822009F8](sub_22F0CCD54, 0, 0);
}

uint64_t sub_22F0CCD54()
{
  v1 = *(v0 + 448);
  *(v0 + 464) = sub_22F0D109C();
  v3 = sub_22F0D106C();

  return MEMORY[0x2822009F8](sub_22F0CCDE0, v3, v2);
}

uint64_t sub_22F0CCDE0()
{
  v1 = v0[58];
  v2 = v0[55];
  sub_22F0D00CC();
  swift_beginAccess();
  v0[59] = qword_280CBD628;
  sub_22F0CFF1C();
  sub_22F0CFFAC();
  v3 = swift_task_alloc();
  v0[60] = v3;
  *v3 = v0;
  v3[1] = sub_22F0CCEC8;
  v4 = v0[54];
  v5 = v0[55];
  v6 = v0[29];

  return sub_22F089B58(v6, v4, v5);
}

uint64_t sub_22F0CCEC8()
{
  v1 = *(*v0 + 480);
  v2 = *(*v0 + 472);
  v3 = *(*v0 + 440);
  v5 = *v0;

  sub_22F0D00CC();

  return MEMORY[0x2822009F8](sub_22F0CCFFC, 0, 0);
}

uint64_t sub_22F0CCFFC()
{
  v67 = v0;
  v1 = *(v0 + 432);
  v2 = *(v0 + 440);
  v3 = *(v0 + 312);
  v5 = *(v0 + 224);
  v4 = *(v0 + 232);
  sub_22F0CE0BC(*(v0 + 336), v3, type metadata accessor for PeopleLocation);
  sub_22F0CFF1C();
  LocationItem.init(with:for:)(v3, v1, v2, v5);
  if (LocationItem.hasMoved(from:)(v5))
  {
    v6 = *(v0 + 440);
    v7 = *(v0 + 368);
    sub_22F0CE0BC(*(v0 + 224), *(v0 + 216), type metadata accessor for LocationItem);
    sub_22F0CFF1C();
    v8 = sub_22F0D09FC();
    v9 = sub_22F0D122C();

    if (os_log_type_enabled(v8, v9))
    {
      v11 = *(v0 + 432);
      v10 = *(v0 + 440);
      v12 = *(v0 + 216);
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v66 = v14;
      *v13 = 136315651;
      *(v13 + 4) = sub_22F00A560(0xD000000000000031, 0x800000022F0E0100, &v66);
      *(v13 + 12) = 2081;
      sub_22F0CFF1C();
      v15 = sub_22F00A560(v11, v10, &v66);

      *(v13 + 14) = v15;
      *(v13 + 22) = 2081;
      v16 = *(v12 + 16);
      v17 = *(v12 + 24);
      sub_22F0CFF1C();
      sub_22F0CE124(v12, type metadata accessor for LocationItem);
      v18 = sub_22F00A560(v16, v17, &v66);

      *(v13 + 24) = v18;
      _os_log_impl(&dword_22EFE1000, v8, v9, "%s %{private}s now: [%{private}s]", v13, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x2318FE8B0](v14, -1, -1);
      MEMORY[0x2318FE8B0](v13, -1, -1);
    }

    else
    {
      v31 = *(v0 + 216);

      sub_22F0CE124(v31, type metadata accessor for LocationItem);
    }
  }

  else
  {
    v19 = *(v0 + 232);
    v20 = LocationItem.expired.getter();
    v21 = *(v0 + 440);
    v22 = *(v0 + 368);
    if (!v20)
    {
      sub_22F0CE0BC(*(v0 + 232), *(v0 + 208), type metadata accessor for LocationItem);
      sub_22F0CFF1C();
      v43 = sub_22F0D09FC();
      v44 = sub_22F0D122C();

      v45 = os_log_type_enabled(v43, v44);
      v46 = *(v0 + 440);
      if (v45)
      {
        v47 = *(v0 + 432);
        v48 = *(v0 + 224);
        v64 = *(v0 + 232);
        v65 = *(v0 + 336);
        v49 = *(v0 + 208);
        v50 = swift_slowAlloc();
        v51 = swift_slowAlloc();
        v66 = v51;
        *v50 = 136315651;
        *(v50 + 4) = sub_22F00A560(0xD000000000000031, 0x800000022F0E0100, &v66);
        *(v50 + 12) = 2081;
        v52 = sub_22F00A560(v47, v46, &v66);

        *(v50 + 14) = v52;
        *(v50 + 22) = 2081;
        v53 = *(v49 + 16);
        v54 = *(v49 + 24);
        sub_22F0CFF1C();
        sub_22F0CE124(v49, type metadata accessor for LocationItem);
        v55 = sub_22F00A560(v53, v54, &v66);

        *(v50 + 24) = v55;
        _os_log_impl(&dword_22EFE1000, v43, v44, "%s %{private}s location is unchanged: [%{private}s]", v50, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x2318FE8B0](v51, -1, -1);
        MEMORY[0x2318FE8B0](v50, -1, -1);

        sub_22F0CE124(v48, type metadata accessor for LocationItem);
        sub_22F0CE124(v64, type metadata accessor for LocationItem);
        v56 = v65;
      }

      else
      {
        v57 = *(v0 + 336);
        v59 = *(v0 + 224);
        v58 = *(v0 + 232);
        v60 = *(v0 + 208);

        sub_22F0CE124(v60, type metadata accessor for LocationItem);
        sub_22F0CE124(v59, type metadata accessor for LocationItem);
        sub_22F0CE124(v58, type metadata accessor for LocationItem);
        v56 = v57;
      }

      sub_22F0CE124(v56, type metadata accessor for PeopleLocation);
      v34 = *(v0 + 408);
      v42 = *(v0 + 537);
      goto LABEL_18;
    }

    v23 = *(v0 + 440);
    sub_22F0CFF1C();
    v24 = sub_22F0D09FC();
    v25 = sub_22F0D122C();

    if (os_log_type_enabled(v24, v25))
    {
      v27 = *(v0 + 432);
      v26 = *(v0 + 440);
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v66 = v29;
      *v28 = 136315395;
      *(v28 + 4) = sub_22F00A560(0xD000000000000031, 0x800000022F0E0100, &v66);
      *(v28 + 12) = 2081;
      sub_22F0CFF1C();
      v30 = sub_22F00A560(v27, v26, &v66);

      *(v28 + 14) = v30;
      _os_log_impl(&dword_22EFE1000, v24, v25, "%s %{private}s local cache expired", v28, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x2318FE8B0](v29, -1, -1);
      MEMORY[0x2318FE8B0](v28, -1, -1);
    }
  }

  v32 = *(v0 + 408);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v34 = *(v0 + 408);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v34 = sub_22F03C784(0, *(v34 + 2) + 1, 1, *(v0 + 408));
  }

  v36 = *(v34 + 2);
  v35 = *(v34 + 3);
  if (v36 >= v35 >> 1)
  {
    v34 = sub_22F03C784((v35 > 1), v36 + 1, 1, v34);
  }

  v38 = *(v0 + 432);
  v37 = *(v0 + 440);
  v39 = *(v0 + 336);
  v40 = *(v0 + 232);
  sub_22F0CE124(*(v0 + 224), type metadata accessor for LocationItem);
  sub_22F0CE124(v40, type metadata accessor for LocationItem);
  sub_22F0CE124(v39, type metadata accessor for PeopleLocation);
  *(v34 + 2) = v36 + 1;
  v41 = &v34[16 * v36];
  *(v41 + 4) = v38;
  *(v41 + 5) = v37;
  v42 = 1;
LABEL_18:
  *(v0 + 488) = v34;
  *(v0 + 538) = v42;
  *(v0 + 496) = sub_22F0D10AC();
  *(v0 + 504) = sub_22F0D109C();
  v62 = sub_22F0D106C();

  return MEMORY[0x2822009F8](sub_22F0CD6F4, v62, v61);
}

uint64_t sub_22F0CD6F4()
{
  v1 = *(v0 + 504);
  sub_22F0D00CC();
  if (qword_280CBD620 != -1)
  {
    swift_once();
  }

  return MEMORY[0x2822009F8](sub_22F0CD78C, 0, 0);
}

uint64_t sub_22F0CD78C()
{
  v1 = *(v0 + 496);
  *(v0 + 512) = sub_22F0D109C();
  v3 = sub_22F0D106C();

  return MEMORY[0x2822009F8](sub_22F0CD818, v3, v2);
}

uint64_t sub_22F0CD818()
{
  v1 = *(v0 + 512);
  sub_22F0D00CC();
  swift_beginAccess();
  *(v0 + 520) = qword_280CBD628;
  sub_22F0CFFAC();

  return MEMORY[0x2822009F8](sub_22F0CD8AC, 0, 0);
}

uint64_t sub_22F0CD8AC()
{
  v1 = *(v0 + 496);
  *(v0 + 528) = sub_22F0D109C();
  v3 = sub_22F0D106C();

  return MEMORY[0x2822009F8](sub_22F0CD938, v3, v2);
}

uint64_t sub_22F0CD938()
{
  v1 = v0[66];
  v2 = v0[65];
  v3 = v0[61];
  sub_22F0D00CC();
  sub_22F089FAC(v3);
  sub_22F0D00CC();

  return MEMORY[0x2822009F8](sub_22F0CD9B8, 0, 0);
}

uint64_t sub_22F0CD9B8()
{
  v69 = v2;
  v3 = *(v2 + 488);
  v4 = *(v2 + 538);
  v6 = *(v2 + 416);
  v5 = *(v2 + 424);
  *(v2 + 408) = v3;
  *(v2 + 537) = v4;
  v7 = (v6 - 1) & v6;
  if (!v7)
  {
    while (1)
    {
      v9 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      if (v9 >= (((1 << *(v2 + 536)) + 63) >> 6))
      {
        v43 = *(v2 + 392);
        v44 = *(v2 + 360);
        __swift_destroy_boxed_opaque_existential_1Tm((v2 + 64));

        sub_22F0D00CC();

        v46 = *(v2 + 328);
        v45 = *(v2 + 336);
        v48 = *(v2 + 312);
        v47 = *(v2 + 320);
        v50 = *(v2 + 280);
        v49 = *(v2 + 288);
        v51 = *(v2 + 256);
        v53 = *(v2 + 224);
        v52 = *(v2 + 232);
        v64 = *(v2 + 216);
        v67 = *(v2 + 208);

        v54 = *(v2 + 8);

        __asm { BRAA            X2, X16 }
      }

      v8 = *(v2 + 392);
      v7 = *(v8 + 8 * v9 + 64);
      ++v5;
      if (v7)
      {
        v5 = v9;
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_30;
  }

  v8 = *(v2 + 392);
LABEL_7:
  *(v2 + 416) = v7;
  *(v2 + 424) = v5;
  v10 = (*(v8 + 48) + ((v5 << 10) | (16 * __clz(__rbit64(v7)))));
  v1 = *v10;
  *(v2 + 432) = *v10;
  v0 = v10[1];
  *(v2 + 440) = v0;
  if (!*(v8 + 16))
  {
LABEL_23:
    *(v2 + 488) = v3;
    *(v2 + 538) = v4;
    *(v2 + 496) = sub_22F0D10AC();
    *(v2 + 504) = sub_22F0D109C();
    v55 = sub_22F0D106C();
    v57 = v56;
    v58 = sub_22F0CD6F4;
    goto LABEL_26;
  }

  sub_22F0CFF1C();
  v11 = sub_22EFFDA80(v1, v0);
  if ((v12 & 1) == 0)
  {
LABEL_22:

    goto LABEL_23;
  }

  v14 = *(v2 + 352);
  v13 = *(v2 + 360);
  v16 = *(v2 + 328);
  v15 = *(v2 + 336);
  sub_22F0CE0BC(*(*(v2 + 392) + 56) + *(*(v2 + 304) + 72) * v11, v16, type metadata accessor for PeopleLocation);
  sub_22F0CE00C(v16, v15, type metadata accessor for PeopleLocation);
  if (v1 != v14 || v0 != v13)
  {
    v18 = *(v2 + 352);
    v19 = *(v2 + 360);
    if ((sub_22F0D188C() & 1) == 0)
    {
      sub_22F0CE124(*(v2 + 336), type metadata accessor for PeopleLocation);
      goto LABEL_22;
    }
  }

  v63 = *(*(v2 + 296) + 20);
  v65 = *(v2 + 336);
  if (qword_27DAA0648 != -1)
  {
LABEL_30:
    swift_once();
  }

  v20 = *(v2 + 280);
  v21 = *(v2 + 288);
  v22 = *(v2 + 272);
  v61 = v21;
  v62 = *(v2 + 264);
  v23 = *(v2 + 248);
  v24 = *(v2 + 256);
  v25 = *(v2 + 240);
  __swift_project_value_buffer(v25, qword_27DAA21F8);
  sub_22F0D05AC();
  v26 = [objc_opt_self() seconds];
  sub_22F0D019C();

  sub_22F0D018C();
  (*(v23 + 8))(v24, v25);
  sub_22F0D054C();
  v27 = sub_22F0D053C();
  v28 = *(v22 + 8);
  v28(v20, v62);
  v28(v61, v62);
  if (v27)
  {
    v29 = *(v2 + 368);
    sub_22F0CE0BC(*(v2 + 336), *(v2 + 320), type metadata accessor for PeopleLocation);
    sub_22F0CFF1C();
    v30 = sub_22F0D09FC();
    v31 = sub_22F0D124C();

    v32 = os_log_type_enabled(v30, v31);
    v33 = *(v2 + 320);
    if (v32)
    {
      v34 = *(v2 + 296);
      v66 = *(v2 + 264);
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v68 = v36;
      *v35 = 136315394;
      sub_22F0CFF1C();
      v37 = sub_22F00A560(v1, v0, &v68);

      *(v35 + 4) = v37;
      *(v35 + 12) = 2080;
      v38 = *(v34 + 20);
      sub_22F0CE074(&qword_27DAA1670, MEMORY[0x277CC9578]);
      v39 = sub_22F0D183C();
      v41 = v40;
      sub_22F0CE124(v33, type metadata accessor for PeopleLocation);
      v42 = sub_22F00A560(v39, v41, &v68);

      *(v35 + 14) = v42;
      _os_log_impl(&dword_22EFE1000, v30, v31, "%s: expired %s", v35, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x2318FE8B0](v36, -1, -1);
      MEMORY[0x2318FE8B0](v35, -1, -1);
    }

    else
    {

      sub_22F0CE124(v33, type metadata accessor for PeopleLocation);
    }
  }

  *(v2 + 448) = sub_22F0D10AC();
  *(v2 + 456) = sub_22F0D109C();
  v55 = sub_22F0D106C();
  v57 = v59;
  v58 = sub_22F0CCCBC;
LABEL_26:

  return MEMORY[0x2822009F8](v58, v55, v57);
}

uint64_t sub_22F0CE00C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_22F0CE074(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_22F0CE0BC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_22F0CE124(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_22F0CE184(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PeopleLocation();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_22F0CE1E8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

void sub_22F0CE250(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 people];
  if (v3)
  {
    v4 = v3;
    type metadata accessor for PersonType();
    v5 = sub_22F0D0F4C();
  }

  else
  {
    v5 = 0;
  }

  *a2 = v5;
}

void sub_22F0CE2C0(void *a1, void **a2)
{
  v2 = *a2;
  if (*a1)
  {
    type metadata accessor for PersonType();
    v3 = sub_22F0D0F2C();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  [v2 setPeople_];
}

id SelectPeopleIntent.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SelectPeopleIntent();
  return objc_msgSendSuper2(&v2, sel_init);
}

id SelectPeopleIntent.init(coder:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for SelectPeopleIntent();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id SelectPeopleIntent.__allocating_init(identifier:backingStore:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_22F0D0C7C();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithIdentifier:v6 backingStore:a3];

  return v7;
}

id SelectPeopleIntent.init(identifier:backingStore:)(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {
    v5 = sub_22F0D0C7C();
  }

  else
  {
    v5 = 0;
  }

  v8.receiver = v3;
  v8.super_class = type metadata accessor for SelectPeopleIntent();
  v6 = objc_msgSendSuper2(&v8, sel_initWithIdentifier_backingStore_, v5, a3);

  return v6;
}

id SelectPeopleIntent.__allocating_init(domain:verb:parametersByName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_22F0D0C7C();

  v8 = sub_22F0D0C7C();

  if (a5)
  {
    v9 = sub_22F0D0AEC();
  }

  else
  {
    v9 = 0;
  }

  v10 = [objc_allocWithZone(v5) initWithDomain:v7 verb:v8 parametersByName:v9];

  return v10;
}

id SelectPeopleIntent.init(domain:verb:parametersByName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_22F0D0C7C();

  v8 = sub_22F0D0C7C();

  if (a5)
  {
    v9 = sub_22F0D0AEC();
  }

  else
  {
    v9 = 0;
  }

  v12.receiver = v5;
  v12.super_class = type metadata accessor for SelectPeopleIntent();
  v10 = objc_msgSendSuper2(&v12, sel_initWithDomain_verb_parametersByName_, v7, v8, v9);

  return v10;
}

unint64_t sub_22F0CE920@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_22F0CF090(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_22F0CE99C()
{
  v1 = OBJC_IVAR___SelectPeopleIntentResponse_code;
  swift_beginAccess();
  return *(v0 + v1);
}

char *SelectPeopleIntentResponse.__allocating_init(code:userActivity:)(uint64_t a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) init];
  v6 = OBJC_IVAR___SelectPeopleIntentResponse_code;
  swift_beginAccess();
  *&v5[v6] = a1;
  v7 = v5;
  [v7 setUserActivity_];

  return v7;
}

char *SelectPeopleIntentResponse.init(code:userActivity:)(uint64_t a1, void *a2)
{
  v5 = [v2 init];
  v6 = OBJC_IVAR___SelectPeopleIntentResponse_code;
  swift_beginAccess();
  *&v5[v6] = a1;
  v7 = v5;
  [v7 setUserActivity_];

  return v7;
}

id SelectPeopleIntentResponse.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SelectPeopleIntentResponse.init()()
{
  *&v0[OBJC_IVAR___SelectPeopleIntentResponse_code] = 0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SelectPeopleIntentResponse();
  return objc_msgSendSuper2(&v2, sel_init);
}

id SelectPeopleIntentResponse.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id SelectPeopleIntentResponse.init(coder:)(void *a1)
{
  *&v1[OBJC_IVAR___SelectPeopleIntentResponse_code] = 0;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for SelectPeopleIntentResponse();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id SelectPeopleIntentResponse.__allocating_init(backingStore:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithBackingStore_];

  return v3;
}

id SelectPeopleIntentResponse.init(backingStore:)(void *a1)
{
  *&v1[OBJC_IVAR___SelectPeopleIntentResponse_code] = 0;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for SelectPeopleIntentResponse();
  v3 = objc_msgSendSuper2(&v5, sel_initWithBackingStore_, a1);

  if (v3)
  {
  }

  return v3;
}

id sub_22F0CEE34(char *a1, uint64_t a2, void *a3, const char **a4)
{
  *&a1[OBJC_IVAR___SelectPeopleIntentResponse_code] = 0;
  v10.receiver = a1;
  v10.super_class = type metadata accessor for SelectPeopleIntentResponse();
  v6 = *a4;
  v7 = a3;
  v8 = objc_msgSendSuper2(&v10, v6, v7);

  if (v8)
  {
  }

  return v8;
}

id SelectPeopleIntentResponse.__allocating_init(propertiesByName:)(uint64_t a1)
{
  if (a1)
  {
    v2 = sub_22F0D0AEC();
  }

  else
  {
    v2 = 0;
  }

  v3 = [objc_allocWithZone(v1) initWithPropertiesByName_];

  return v3;
}

id SelectPeopleIntentResponse.init(propertiesByName:)(uint64_t a1)
{
  *&v1[OBJC_IVAR___SelectPeopleIntentResponse_code] = 0;
  if (a1)
  {
    v2 = sub_22F0D0AEC();
  }

  else
  {
    v2 = 0;
  }

  v5.receiver = v1;
  v5.super_class = type metadata accessor for SelectPeopleIntentResponse();
  v3 = objc_msgSendSuper2(&v5, sel_initWithPropertiesByName_, v2);

  if (v3)
  {
  }

  return v3;
}

id sub_22F0CF058(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

unint64_t sub_22F0CF090(unint64_t result)
{
  if (result > 6)
  {
    return 0;
  }

  return result;
}

unint64_t sub_22F0CF0C8()
{
  result = qword_27DAA2528;
  if (!qword_27DAA2528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAA2528);
  }

  return result;
}

void sub_22F0CF18C(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 id];
  if (v3)
  {
    v4 = v3;
    v5 = sub_22F0D0CAC();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  *a2 = v5;
  a2[1] = v7;
}

void sub_22F0CF1F4(uint64_t *a1, void **a2)
{
  v2 = *a2;
  if (a1[1])
  {
    v3 = *a1;
    v4 = sub_22F0D0C7C();
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;
  [v2 setId_];
}

id PersonType.__allocating_init(identifier:display:pronunciationHint:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2)
  {
    v8 = sub_22F0D0C7C();
  }

  else
  {
    v8 = 0;
  }

  v9 = sub_22F0D0C7C();

  if (a6)
  {
    v10 = sub_22F0D0C7C();
  }

  else
  {
    v10 = 0;
  }

  v11 = [objc_allocWithZone(v6) initWithIdentifier:v8 displayString:v9 pronunciationHint:v10];

  return v11;
}

id PersonType.init(identifier:display:pronunciationHint:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2)
  {
    v8 = sub_22F0D0C7C();
  }

  else
  {
    v8 = 0;
  }

  v9 = sub_22F0D0C7C();

  if (a6)
  {
    v10 = sub_22F0D0C7C();
  }

  else
  {
    v10 = 0;
  }

  v13.receiver = v6;
  v13.super_class = type metadata accessor for PersonType();
  v11 = objc_msgSendSuper2(&v13, sel_initWithIdentifier_displayString_pronunciationHint_, v8, v9, v10);

  return v11;
}

id PersonType.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id PersonType.init(coder:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for PersonType();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id sub_22F0CF61C(uint64_t a1)
{
  v4.receiver = swift_getObjCClassFromMetadata();
  v4.super_class = &OBJC_METACLASS___PersonTypeResolutionResult;
  v2 = objc_msgSendSuper2(&v4, sel_successWithResolvedObject_, a1);

  return v2;
}

id sub_22F0CF6D0(unint64_t a1)
{
  if (a1 >> 62)
  {
    sub_22F0CF7C8();
    sub_22F0CFF1C();
    sub_22F0D16AC();
  }

  else
  {
    sub_22F0CFF1C();
    sub_22F0D189C();
    sub_22F0CF7C8();
  }

  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  sub_22F0CF7C8();
  v2 = sub_22F0D0F2C();

  v5.receiver = ObjCClassFromMetadata;
  v5.super_class = &OBJC_METACLASS___PersonTypeResolutionResult;
  v3 = objc_msgSendSuper2(&v5, sel_disambiguationWithObjectsToDisambiguate_, v2);

  return v3;
}

unint64_t sub_22F0CF7C8()
{
  result = qword_27DAA2530;
  if (!qword_27DAA2530)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27DAA2530);
  }

  return result;
}

id sub_22F0CF880(uint64_t a1)
{
  v4.receiver = swift_getObjCClassFromMetadata();
  v4.super_class = &OBJC_METACLASS___PersonTypeResolutionResult;
  v2 = objc_msgSendSuper2(&v4, sel_confirmationRequiredWithObjectToConfirm_, a1);

  return v2;
}

id PersonTypeResolutionResult.__allocating_init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = objc_allocWithZone(v2);
  v5 = sub_22F0D0AEC();

  v6 = [v4 initWithJSONDictionary:v5 forIntent:a2];

  return v6;
}

id PersonTypeResolutionResult.init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = sub_22F0D0AEC();

  v7.receiver = v2;
  v7.super_class = type metadata accessor for PersonTypeResolutionResult();
  v5 = objc_msgSendSuper2(&v7, sel_initWithJSONDictionary_forIntent_, v4, a2);

  if (v5)
  {
  }

  return v5;
}

id sub_22F0CFC70(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}