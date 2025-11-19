uint64_t ImageElement.init<A>(_:idioms:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for _ProtoImageElement(0);
  OUTLINED_FUNCTION_24_12();
  sub_26A1690D0(v4, v5);
  OUTLINED_FUNCTION_65_2();

  v6 = *(*(a3 - 8) + 8);
  v7 = OUTLINED_FUNCTION_100();
  return v8(v7);
}

uint64_t sub_26A1602EC(void *a1, uint64_t a2, uint64_t a3)
{
  v25 = a1;
  v24 = a3;
  v4 = type metadata accessor for _ProtoImageElement.Source(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = type metadata accessor for ImageElement.Source(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a2 + 16);
  v27 = MEMORY[0x277D84F90];
  sub_26A10D200();
  v13 = v27;
  if (v12)
  {
    v14 = a2 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v26 = *(v8 + 72);
    do
    {
      sub_26A168F7C();
      sub_26A160618();
      sub_26A169024(v11, type metadata accessor for ImageElement.Source);
      v27 = v13;
      v15 = *(v13 + 16);
      if (v15 >= *(v13 + 24) >> 1)
      {
        sub_26A10D200();
        v13 = v27;
      }

      *(v13 + 16) = v15 + 1;
      v16 = v13 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
      v17 = *(v5 + 72);
      sub_26A168FD0();
      v14 += v26;
      --v12;
    }

    while (v12);
  }

  v18 = v25;
  v19 = *v25;

  *v18 = v13;

  v21 = sub_26A419264(v20);
  v22 = v18[1];

  v18[1] = v21;
  return result;
}

uint64_t sub_26A160558(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = type metadata accessor for _ProtoImageElement.Source(0);
  v10 = sub_26A409784(sub_26A161308, 0, a4, v8, MEMORY[0x277D84A98], a5, MEMORY[0x277D84AC0], v9);
  v11 = *a1;

  *a1 = v10;

  v13 = sub_26A419264(v12);
  v14 = a1[1];

  a1[1] = v13;
  return result;
}

void sub_26A160618()
{
  OUTLINED_FUNCTION_76();
  v206 = v0;
  v3 = v2;
  v4 = type metadata accessor for _ProtoImageElement.Contact(0);
  v5 = OUTLINED_FUNCTION_41(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_11();
  v202 = v8;
  v9 = OUTLINED_FUNCTION_45();
  v10 = type metadata accessor for ImageElement.Contact(v9);
  v11 = OUTLINED_FUNCTION_41(v10);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_11();
  v195 = v14;
  v15 = OUTLINED_FUNCTION_45();
  v193 = type metadata accessor for _ProtoImageElement.AppIcon(v15);
  v16 = OUTLINED_FUNCTION_12(v193);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_11();
  v200 = v19;
  v20 = OUTLINED_FUNCTION_45();
  v192 = type metadata accessor for _ProtoImageElement.Symbol(v20);
  v21 = OUTLINED_FUNCTION_12(v192);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_11();
  v199 = v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CBA0, &qword_26A4265B0);
  OUTLINED_FUNCTION_41(v25);
  v27 = *(v26 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_42();
  v201 = v29;
  v30 = OUTLINED_FUNCTION_45();
  v31 = type metadata accessor for _ProtoImageElement.Url(v30);
  v32 = OUTLINED_FUNCTION_12(v31);
  v34 = *(v33 + 64);
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_11();
  v194 = v35;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036D9A0, &qword_26A429CE0);
  OUTLINED_FUNCTION_41(v36);
  v38 = *(v37 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_42();
  v197 = v40;
  OUTLINED_FUNCTION_45();
  v198 = sub_26A424614();
  v41 = OUTLINED_FUNCTION_24(v198);
  v196 = v42;
  v44 = *(v43 + 64);
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_11();
  v203 = v45;
  v46 = OUTLINED_FUNCTION_45();
  v47 = type metadata accessor for _ProtoImageElement.Bundle(v46);
  v48 = OUTLINED_FUNCTION_12(v47);
  v50 = *(v49 + 64);
  MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_18();
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C910, &unk_26A425EC0);
  v52 = OUTLINED_FUNCTION_41(v51);
  v54 = *(v53 + 64);
  MEMORY[0x28223BE20](v52);
  OUTLINED_FUNCTION_17();
  v207 = v55 - v56;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v57);
  v59 = &v192 - v58;
  v60 = type metadata accessor for _ProtoImageElement.DataMessage(0);
  v61 = OUTLINED_FUNCTION_12(v60);
  v63 = *(v62 + 64);
  MEMORY[0x28223BE20](v61);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_181();
  v64 = type metadata accessor for ImageElement.Source(0);
  v65 = OUTLINED_FUNCTION_12(v64);
  v67 = *(v66 + 64);
  MEMORY[0x28223BE20](v65);
  OUTLINED_FUNCTION_18();
  v70 = (v69 - v68);
  _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
  v71 = type metadata accessor for _ProtoImageElement.Source(0);
  v72 = *(v71 + 20);
  if (qword_28157A098 != -1)
  {
    v191 = *(v71 + 20);
    swift_once();
    v72 = v191;
  }

  v204 = v72;
  v205 = v3;
  *(v3 + v72) = qword_28157A0A0;
  OUTLINED_FUNCTION_11_11();
  sub_26A168F7C();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  switch(EnumCaseMultiPayload)
  {
    case 1:
      v133 = *v70;
      v134 = v70[1];
      v135 = v70[2];
      v136 = v70[3];
      MEMORY[0x28223BE20](EnumCaseMultiPayload);
      *(&v192 - 4) = v137;
      *(&v192 - 3) = v134;
      *(&v192 - 2) = v138;
      *(&v192 - 1) = v136;
      OUTLINED_FUNCTION_35_7();
      sub_26A1690D0(v139, v140);

      sub_26A4249C4();

      v142 = v204;
      v141 = v205;
      v143 = *(v205 + v204);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v145 = *(v141 + v142);
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v146 = type metadata accessor for _ProtoImageElement.Source._StorageClass(0);
        OUTLINED_FUNCTION_188_0(v146);
        sub_26A244A48();
        *(v141 + v142) = v147;
      }

      OUTLINED_FUNCTION_4_17();
      sub_26A168FD0();
      v92 = type metadata accessor for _ProtoImageElement.Source.OneOf_Value(0);
      OUTLINED_FUNCTION_39_7();
      goto LABEL_19;
    case 2:
      v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036D9B8, &qword_26A429CF8);
      v94 = *(v93 + 48);
      v95 = *(v70 + *(v93 + 64));
      v96 = v196;
      v97 = *(v196 + 32);
      v98 = v203;
      v99 = OUTLINED_FUNCTION_133();
      v100 = v198;
      v101(v99);
      v102 = v197;
      v103 = sub_26A16907C();
      MEMORY[0x28223BE20](v103);
      *(&v192 - 4) = v98;
      *(&v192 - 3) = v102;
      *(&v192 - 16) = v95;
      sub_26A1690D0(qword_28157A2B0, type metadata accessor for _ProtoImageElement.Url);

      sub_26A4249C4();
      v105 = v204;
      v104 = v205;
      v106 = *(v205 + v204);
      v107 = swift_isUniquelyReferenced_nonNull_native();
      v108 = *(v104 + v105);
      if ((v107 & 1) == 0)
      {
        v109 = type metadata accessor for _ProtoImageElement.Source._StorageClass(0);
        OUTLINED_FUNCTION_188_0(v109);
        sub_26A244A48();
        *(v104 + v105) = v110;
      }

      OUTLINED_FUNCTION_103();
      sub_26A168FD0();
      v111 = type metadata accessor for _ProtoImageElement.Source.OneOf_Value(0);
      swift_storeEnumTagMultiPayload();
      v112 = OUTLINED_FUNCTION_8_4();
      __swift_storeEnumTagSinglePayload(v112, v113, v114, v111);
      swift_beginAccess();
      sub_26A10CF40();
      swift_endAccess();
      sub_26A0E48F0(v102, &qword_28036D9A0, &qword_26A429CE0);
      (*(v96 + 8))(v203, v100);
      goto LABEL_32;
    case 3:
      v116 = *v70;
      v115 = v70[1];
      v117 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036D9B0, &qword_26A429CF0) + 48);
      v118 = v201;
      v119 = sub_26A16907C();
      MEMORY[0x28223BE20](v119);
      *(&v192 - 4) = v116;
      *(&v192 - 3) = v115;
      *(&v192 - 2) = v118;
      OUTLINED_FUNCTION_25_10();
      sub_26A1690D0(v120, v121);

      OUTLINED_FUNCTION_88_2();

      v123 = v204;
      v122 = v205;
      v124 = *(v205 + v204);
      v125 = swift_isUniquelyReferenced_nonNull_native();
      v126 = *(v122 + v123);
      if ((v125 & 1) == 0)
      {
        v127 = type metadata accessor for _ProtoImageElement.Source._StorageClass(0);
        OUTLINED_FUNCTION_188_0(v127);
        sub_26A244A48();
        *(v122 + v123) = v128;
      }

      OUTLINED_FUNCTION_23_14();
      sub_26A168FD0();
      v129 = type metadata accessor for _ProtoImageElement.Source.OneOf_Value(0);
      OUTLINED_FUNCTION_39_7();
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_126_0();
      __swift_storeEnumTagSinglePayload(v130, v131, v132, v129);
      OUTLINED_FUNCTION_56_4();
      sub_26A10CF40();
      swift_endAccess();
      sub_26A0E48F0(v118, &qword_28036CBA0, &qword_26A4265B0);
      goto LABEL_32;
    case 4:
      v82 = *v70;
      v83 = v70[1];
      MEMORY[0x28223BE20](EnumCaseMultiPayload);
      *(&v192 - 2) = v84;
      *(&v192 - 1) = v83;
      sub_26A1690D0(qword_281579DA8, type metadata accessor for _ProtoImageElement.AppIcon);

      OUTLINED_FUNCTION_88_2();

      v86 = v204;
      v85 = v205;
      v87 = *(v205 + v204);
      v88 = swift_isUniquelyReferenced_nonNull_native();
      v89 = *(v85 + v86);
      if ((v88 & 1) == 0)
      {
        v90 = type metadata accessor for _ProtoImageElement.Source._StorageClass(0);
        OUTLINED_FUNCTION_188_0(v90);
        sub_26A244A48();
        *(v85 + v86) = v91;
      }

      OUTLINED_FUNCTION_27_10();
      sub_26A168FD0();
      v92 = type metadata accessor for _ProtoImageElement.Source.OneOf_Value(0);
      OUTLINED_FUNCTION_39_7();
LABEL_19:
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_126_0();
      __swift_storeEnumTagSinglePayload(v148, v149, v150, v92);
      OUTLINED_FUNCTION_56_4();
      goto LABEL_30;
    case 5:
      v151 = v195;
      sub_26A168FD0();
      sub_26A168F7C();

      v153 = v204;
      v152 = v205;
      v154 = *(v205 + v204);
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        sub_26A169024(v151, type metadata accessor for ImageElement.Contact);
        v155 = *(v152 + v153);
      }

      else
      {
        v182 = *(v152 + v153);
        v183 = type metadata accessor for _ProtoImageElement.Source._StorageClass(0);
        OUTLINED_FUNCTION_188_0(v183);

        sub_26A244A48();
        v185 = v184;
        OUTLINED_FUNCTION_33_4();
        sub_26A169024(v151, v186);

        *(v152 + v153) = v185;
      }

      sub_26A168FD0();
      v187 = type metadata accessor for _ProtoImageElement.Source.OneOf_Value(0);
      swift_storeEnumTagMultiPayload();
      v188 = OUTLINED_FUNCTION_8_4();
      __swift_storeEnumTagSinglePayload(v188, v189, v190, v187);
      OUTLINED_FUNCTION_56_4();
LABEL_30:
      sub_26A10CF40();
      goto LABEL_31;
    default:
      v74 = *v70;
      v75 = v70[1];
      OUTLINED_FUNCTION_86_0();
      swift_beginAccess();
      sub_26A10FD9C();
      v76 = type metadata accessor for _ProtoImageElement.Source.OneOf_Value(0);
      OUTLINED_FUNCTION_76_1();
      OUTLINED_FUNCTION_37(v77, v78, v79);
      if (v80)
      {

        sub_26A0E48F0(v59, &qword_28036C910, &unk_26A425EC0);
        v81 = v205;
LABEL_24:
        *v1 = xmmword_26A426400;
        *(v1 + 16) = 0;
        *(v1 + 24) = 1;
        *(v1 + 32) = xmmword_26A426400;
        *(v1 + 48) = xmmword_26A426400;
        v158 = v1 + v60[8];
        _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
        v159 = v60[9];
        type metadata accessor for _ProtoImageElement.AspectRatio(0);
        OUTLINED_FUNCTION_92();
        __swift_storeEnumTagSinglePayload(v160, v161, v162, v163);
        v164 = v60[10];
        v165 = type metadata accessor for _ProtoOptionalBool(0);
        OUTLINED_FUNCTION_92();
        __swift_storeEnumTagSinglePayload(v166, v167, v168, v165);
        v169 = v60[11];
        OUTLINED_FUNCTION_92();
        __swift_storeEnumTagSinglePayload(v170, v171, v172, v165);
        goto LABEL_25;
      }

      v156 = swift_getEnumCaseMultiPayload();
      v81 = v205;
      if (v156)
      {

        OUTLINED_FUNCTION_31_6();
        sub_26A169024(v59, v157);
        goto LABEL_24;
      }

      sub_26A168FD0();

LABEL_25:
      sub_26A0E4784(*v1, *(v1 + 8));
      *v1 = v74;
      *(v1 + 8) = v75;
      v173 = v204;
      v174 = *(v81 + v204);
      v175 = swift_isUniquelyReferenced_nonNull_native();
      v176 = *(v81 + v173);
      if ((v175 & 1) == 0)
      {
        v177 = type metadata accessor for _ProtoImageElement.Source._StorageClass(0);
        OUTLINED_FUNCTION_188_0(v177);
        sub_26A244A48();
        *(v81 + v173) = v178;
      }

      OUTLINED_FUNCTION_100();
      sub_26A168FD0();
      swift_storeEnumTagMultiPayload();
      v179 = OUTLINED_FUNCTION_8_4();
      __swift_storeEnumTagSinglePayload(v179, v180, v181, v76);
      swift_beginAccess();
      sub_26A10CF40();
LABEL_31:
      swift_endAccess();
LABEL_32:
      OUTLINED_FUNCTION_75();
      return;
  }
}

uint64_t ImageElement.init(_:idioms:)()
{
  type metadata accessor for _ProtoImageElement(0);
  OUTLINED_FUNCTION_24_12();
  sub_26A1690D0(v0, v1);
  OUTLINED_FUNCTION_65_2();
}

uint64_t sub_26A1613D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v28 = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036E418, &qword_26A42A858);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v28 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036D9A0, &qword_26A429CE0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for ImageElement.LoadingImage(0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26A4245E4();
  _ProtoImageElement.Url.source.setter();
  sub_26A10FD9C();
  if (__swift_getEnumTagSinglePayload(v12, 1, v13) == 1)
  {
    sub_26A0E48F0(v12, &qword_28036D9A0, &qword_26A429CE0);
  }

  else
  {
    sub_26A168FD0();
    sub_26A161658();
    v17 = type metadata accessor for _ProtoImageElement.Url.OneOf_LoadingImage(0);
    __swift_storeEnumTagSinglePayload(v8, 0, 1, v17);
    _ProtoImageElement.Url.loadingImage.setter();
    sub_26A169024(v16, type metadata accessor for ImageElement.LoadingImage);
  }

  v18 = *(type metadata accessor for _ProtoImageElement.Url(0) + 20);
  v19 = *(a1 + v18);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v21 = *(a1 + v18);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v22 = type metadata accessor for _ProtoImageElement.Url._StorageClass(0);
    v23 = *(v22 + 48);
    v24 = *(v22 + 52);
    swift_allocObject();
    v21 = sub_26A24E76C(v21);
    *(a1 + v18) = v21;
  }

  v25 = v28 & 1;
  v26 = v21 + OBJC_IVAR____TtCVV10SnippetKit18_ProtoImageElement3UrlP33_4A8BE84811D3620BBC1FF2AFACC92F8B13_StorageClass__contentMode;
  result = swift_beginAccess();
  *v26 = v25;
  *(v26 + 8) = 1;
  return result;
}

void sub_26A161658()
{
  OUTLINED_FUNCTION_76();
  v38[0] = v1;
  v2 = type metadata accessor for _ProtoImageElement.Symbol(0);
  v3 = OUTLINED_FUNCTION_12(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_44_6();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CBA0, &qword_26A4265B0);
  OUTLINED_FUNCTION_41(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v9);
  v11 = v38 - v10;
  v12 = type metadata accessor for _ProtoImageElement.Bundle(0);
  v13 = OUTLINED_FUNCTION_12(v12);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_181();
  v16 = type metadata accessor for _ProtoImageElement.DataMessage(0);
  v17 = OUTLINED_FUNCTION_12(v16);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_18();
  v20 = type metadata accessor for ImageElement.LoadingImage(0);
  v21 = OUTLINED_FUNCTION_12(v20);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_82_2();
  OUTLINED_FUNCTION_10_13();
  sub_26A168F7C();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v25 = *v0;
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload != 1)
    {
      v33 = v0[1];
      v34 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036D9B0, &qword_26A429CF0) + 48);
      v35 = sub_26A16907C();
      MEMORY[0x28223BE20](v35);
      v38[-4] = v25;
      v38[-3] = v33;
      v38[-2] = v11;
      OUTLINED_FUNCTION_25_10();
      sub_26A1690D0(v36, v37);
      OUTLINED_FUNCTION_20_10();
      sub_26A4249C4();

      OUTLINED_FUNCTION_23_14();
      sub_26A168FD0();
      type metadata accessor for _ProtoImageElement.Url.OneOf_LoadingImage(0);
      swift_storeEnumTagMultiPayload();
      sub_26A0E48F0(v11, &qword_28036CBA0, &qword_26A4265B0);
      goto LABEL_7;
    }

    v27 = v0[1];
    v26 = v0[2];
    v28 = v0[3];
    MEMORY[0x28223BE20](EnumCaseMultiPayload);
    v38[-4] = v25;
    v38[-3] = v27;
    v38[-2] = v29;
    v38[-1] = v28;
    OUTLINED_FUNCTION_35_7();
    sub_26A1690D0(v30, v31);
    OUTLINED_FUNCTION_236();
    sub_26A4249C4();

    OUTLINED_FUNCTION_4_17();
    sub_26A168FD0();
    type metadata accessor for _ProtoImageElement.Url.OneOf_LoadingImage(0);
  }

  else
  {
    v32 = v0[1];
    MEMORY[0x28223BE20](EnumCaseMultiPayload);
    v38[-2] = v25;
    v38[-1] = v32;
    sub_26A1690D0(&qword_28036D1A8, type metadata accessor for _ProtoImageElement.DataMessage);
    sub_26A4249C4();
    sub_26A0E4784(v25, v32);
    OUTLINED_FUNCTION_8_9();
    sub_26A168FD0();
    type metadata accessor for _ProtoImageElement.Url.OneOf_LoadingImage(0);
  }

  swift_storeEnumTagMultiPayload();
LABEL_7:
  OUTLINED_FUNCTION_75();
}

uint64_t sub_26A161A7C(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = a1[1];

  *a1 = a2;
  a1[1] = a3;
  return result;
}

void sub_26A161ACC()
{
  OUTLINED_FUNCTION_76();
  v5 = v4;
  v68 = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CCD8, &unk_26A432950);
  OUTLINED_FUNCTION_41(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_42();
  v67 = v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CBA0, &qword_26A4265B0);
  OUTLINED_FUNCTION_41(v12);
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_42();
  v16 = OUTLINED_FUNCTION_45();
  v17 = type metadata accessor for _ProtoImageElement.Symbol(v16);
  v18 = OUTLINED_FUNCTION_12(v17);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_18();
  v21 = OUTLINED_FUNCTION_61_3();
  v22 = type metadata accessor for _ProtoImageElement.Bundle(v21);
  v23 = OUTLINED_FUNCTION_41(v22);
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_82_2();
  v26 = type metadata accessor for _ProtoImageElement.DataMessage(0);
  v27 = OUTLINED_FUNCTION_41(v26);
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_18();
  v32 = (v31 - v30);
  v33 = OUTLINED_FUNCTION_103();
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(v33, v34);
  OUTLINED_FUNCTION_41(v35);
  v37 = *(v36 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_72_1();
  v39 = type metadata accessor for ImageElement.LoadingImage(0);
  v40 = OUTLINED_FUNCTION_12(v39);
  v42 = *(v41 + 64);
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_181();
  sub_26A10FD9C();
  v43 = type metadata accessor for _ProtoImageElement.Url.OneOf_LoadingImage(0);
  OUTLINED_FUNCTION_37(v2, 1, v43);
  if (v44)
  {
    sub_26A0E48F0(v5, &qword_28036E418, &qword_26A42A858);
    v45 = 1;
    v46 = v68;
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        sub_26A0E48F0(v5, &qword_28036E418, &qword_26A42A858);
        OUTLINED_FUNCTION_4_17();
        sub_26A168FD0();
        v49 = *v3;
        v48 = v3[1];
        v51 = v3[2];
        v50 = v3[3];

        OUTLINED_FUNCTION_32_7();
        sub_26A169024(v3, v52);
        *v1 = v49;
        v1[1] = v48;
        v1[2] = v51;
        v1[3] = v50;
      }

      else
      {
        sub_26A168FD0();
        v56 = *(v17 + 48);
        sub_26A10FD9C();
        v57 = type metadata accessor for _ProtoColor(0);
        EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v67, 1, v57);
        OUTLINED_FUNCTION_69_2();
        sub_26A0E48F0(v59, v60, v61);
        if (EnumTagSinglePayload != 1)
        {
          _ProtoImageElement.Symbol.tintColor.getter();
        }

        sub_26A0E48F0(v5, &qword_28036E418, &qword_26A42A858);
        v62 = type metadata accessor for Color();
        OUTLINED_FUNCTION_87_2(v62);
        v63 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036D9B0, &qword_26A429CF0) + 48);
        v65 = *v0;
        v64 = v0[1];

        OUTLINED_FUNCTION_30_5();
        sub_26A169024(v0, v66);
        *v1 = v65;
        v1[1] = v64;
        sub_26A16907C();
      }

      v46 = v68;
    }

    else
    {
      sub_26A0E48F0(v5, &qword_28036E418, &qword_26A42A858);
      OUTLINED_FUNCTION_8_9();
      sub_26A168FD0();
      v53 = *v32;
      v54 = v32[1];
      sub_26A0E45C0(*v32, v54);
      OUTLINED_FUNCTION_29_6();
      sub_26A169024(v32, v55);
      *v1 = v53;
      v1[1] = v54;
      v46 = v68;
    }

    swift_storeEnumTagMultiPayload();
    sub_26A168FD0();
    v45 = 0;
  }

  __swift_storeEnumTagSinglePayload(v46, v45, 1, v39);
  OUTLINED_FUNCTION_75();
}

void static ImageElement.Source.== infix(_:_:)()
{
  OUTLINED_FUNCTION_76();
  v225 = v4;
  v226 = v5;
  v6 = type metadata accessor for ImageElement.Contact(0);
  v7 = OUTLINED_FUNCTION_41(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_11();
  v218 = v10;
  OUTLINED_FUNCTION_45();
  v215 = type metadata accessor for Color();
  v11 = OUTLINED_FUNCTION_12(v215);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_11();
  v208 = v14;
  v214 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036D990, &qword_26A43DEE0);
  OUTLINED_FUNCTION_12(v214);
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_42();
  v216 = v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CBA0, &qword_26A4265B0);
  v20 = OUTLINED_FUNCTION_41(v19);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_17();
  v210 = v23 - v24;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v25);
  v219 = &v206 - v26;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_48();
  v221 = v28;
  v29 = OUTLINED_FUNCTION_45();
  v212 = type metadata accessor for ImageElement.LoadingImage(v29);
  v30 = OUTLINED_FUNCTION_12(v212);
  v32 = *(v31 + 64);
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_11();
  v207 = v33;
  v211 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036D998, &qword_26A429CD8);
  OUTLINED_FUNCTION_12(v211);
  v35 = *(v34 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_42();
  v213 = v37;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036D9A0, &qword_26A429CE0);
  v39 = OUTLINED_FUNCTION_41(v38);
  v41 = *(v40 + 64);
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_17();
  v209 = v42 - v43;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v44);
  v217 = &v206 - v45;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_48();
  v220 = v47;
  OUTLINED_FUNCTION_45();
  v48 = sub_26A424614();
  v49 = OUTLINED_FUNCTION_24(v48);
  v223 = v50;
  v224 = v49;
  v52 = *(v51 + 64);
  MEMORY[0x28223BE20](v49);
  OUTLINED_FUNCTION_11();
  v222 = v53;
  v54 = OUTLINED_FUNCTION_45();
  v55 = type metadata accessor for ImageElement.Source(v54);
  v56 = OUTLINED_FUNCTION_12(v55);
  v58 = *(v57 + 64);
  MEMORY[0x28223BE20](v56);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_85();
  MEMORY[0x28223BE20](v59);
  v61 = (&v206 - v60);
  MEMORY[0x28223BE20](v62);
  OUTLINED_FUNCTION_64_1();
  MEMORY[0x28223BE20](v63);
  OUTLINED_FUNCTION_63_2();
  MEMORY[0x28223BE20](v64);
  v66 = (&v206 - v65);
  MEMORY[0x28223BE20](v67);
  v69 = (&v206 - v68);
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036D9A8, &qword_26A429CE8);
  OUTLINED_FUNCTION_41(v70);
  v72 = *(v71 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v73);
  OUTLINED_FUNCTION_62_3();
  v75 = (v0 + *(v74 + 56));
  sub_26A168F7C();
  sub_26A168F7C();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_26A168F7C();
      v124 = *v66;
      v123 = v66[1];
      v126 = v66[2];
      v125 = v66[3];
      OUTLINED_FUNCTION_53_4();
      if (swift_getEnumCaseMultiPayload() != 1)
      {

        goto LABEL_37;
      }

      v112 = v0;
      v128 = v75[2];
      v127 = v75[3];
      if (v124 == *v75 && v123 == v75[1])
      {
        v159 = v75[1];
      }

      else
      {
        v130 = v75[1];
        v131 = sub_26A425354();

        if ((v131 & 1) == 0)
        {

          goto LABEL_63;
        }
      }

      if (v126 == v128 && v125 == v127)
      {
      }

      else
      {
        v161 = OUTLINED_FUNCTION_86_2();

        if ((v161 & 1) == 0)
        {
          goto LABEL_63;
        }
      }

      goto LABEL_65;
    case 2u:
      v88 = v0;
      sub_26A168F7C();
      v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036D9B8, &qword_26A429CF8);
      v90 = *(v89 + 48);
      v91 = *(v89 + 64);
      v92 = *(v3 + v91);
      OUTLINED_FUNCTION_53_4();
      if (swift_getEnumCaseMultiPayload() != 2)
      {
        sub_26A0E48F0(v3 + v90, &qword_28036D9A0, &qword_26A429CE0);
        (*(v223 + 8))(v3, v224);
        v0 = v88;
        goto LABEL_39;
      }

      LODWORD(v226) = v92;
      LODWORD(v225) = *(v75 + v91);
      v93 = v223;
      v94 = *(v223 + 32);
      v95 = OUTLINED_FUNCTION_103();
      v96 = v224;
      v97(v95);
      sub_26A16907C();
      sub_26A16907C();
      v98 = sub_26A4245F4();
      v99 = *(v93 + 8);
      v99(v3, v96);
      if (v98)
      {
        v100 = *(v211 + 48);
        v101 = v213;
        OUTLINED_FUNCTION_59_5();
        sub_26A10FD9C();
        OUTLINED_FUNCTION_59_5();
        sub_26A10FD9C();
        v102 = v212;
        OUTLINED_FUNCTION_37(v101, 1, v212);
        if (v85)
        {
          OUTLINED_FUNCTION_20_10();
          sub_26A0E48F0(v103, v104, v105);
          OUTLINED_FUNCTION_20_10();
          sub_26A0E48F0(v106, v107, v108);
          v99(v222, v224);
          OUTLINED_FUNCTION_37(v101 + v100, 1, v102);
          if (v85)
          {
            sub_26A0E48F0(v101, &qword_28036D9A0, &qword_26A429CE0);
LABEL_76:
            OUTLINED_FUNCTION_9_10();
            sub_26A169024(v88, v205);
            goto LABEL_72;
          }
        }

        else
        {
          v171 = v209;
          sub_26A10FD9C();
          OUTLINED_FUNCTION_37(v101 + v100, 1, v102);
          if (!v172)
          {
            v191 = v207;
            sub_26A168FD0();
            OUTLINED_FUNCTION_133();
            static ImageElement.LoadingImage.== infix(_:_:)();
            v193 = v192;
            sub_26A169024(v191, type metadata accessor for ImageElement.LoadingImage);
            OUTLINED_FUNCTION_40_7();
            sub_26A0E48F0(v194, v195, v196);
            OUTLINED_FUNCTION_40_7();
            sub_26A0E48F0(v197, v198, v199);
            v99(v222, v224);
            v200 = OUTLINED_FUNCTION_175();
            sub_26A169024(v200, v201);
            OUTLINED_FUNCTION_40_7();
            sub_26A0E48F0(v202, v203, v204);
            if (v193)
            {
              goto LABEL_76;
            }

LABEL_70:
            v87 = v88;
            goto LABEL_71;
          }

          OUTLINED_FUNCTION_20_10();
          sub_26A0E48F0(v173, v174, v175);
          OUTLINED_FUNCTION_20_10();
          sub_26A0E48F0(v176, v177, v178);
          v99(v222, v224);
          OUTLINED_FUNCTION_3_14();
          sub_26A169024(v171, v179);
        }

        sub_26A0E48F0(v101, &qword_28036D998, &qword_26A429CD8);
        goto LABEL_70;
      }

      OUTLINED_FUNCTION_20_10();
      sub_26A0E48F0(v143, v144, v145);
      OUTLINED_FUNCTION_20_10();
      sub_26A0E48F0(v146, v147, v148);
      v149 = OUTLINED_FUNCTION_53_4();
      (v99)(v149);
      goto LABEL_70;
    case 3u:
      sub_26A168F7C();
      v110 = *v2;
      v109 = v2[1];
      v111 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036D9B0, &qword_26A429CF0) + 48);
      OUTLINED_FUNCTION_53_4();
      if (swift_getEnumCaseMultiPayload() == 3)
      {
        v112 = v0;
        v114 = *v75;
        v113 = v75[1];
        sub_26A16907C();
        sub_26A16907C();
        if (v110 == v114 && v109 == v113)
        {
        }

        else
        {
          OUTLINED_FUNCTION_39_7();
          v116 = sub_26A425354();

          if ((v116 & 1) == 0)
          {
            OUTLINED_FUNCTION_20_10();
            sub_26A0E48F0(v117, v118, v119);
            OUTLINED_FUNCTION_20_10();
LABEL_62:
            sub_26A0E48F0(v120, v121, v122);
LABEL_63:
            v87 = v112;
            goto LABEL_71;
          }
        }

        v150 = *(v214 + 48);
        v151 = v216;
        OUTLINED_FUNCTION_59_5();
        sub_26A10FD9C();
        OUTLINED_FUNCTION_59_5();
        sub_26A10FD9C();
        v152 = v215;
        OUTLINED_FUNCTION_37(v151, 1, v215);
        if (v85)
        {
          OUTLINED_FUNCTION_20_10();
          sub_26A0E48F0(v153, v154, v155);
          OUTLINED_FUNCTION_20_10();
          sub_26A0E48F0(v156, v157, v158);
          OUTLINED_FUNCTION_37(v151 + v150, 1, v152);
          if (v85)
          {
            sub_26A0E48F0(v151, &qword_28036CBA0, &qword_26A4265B0);
LABEL_65:
            v87 = v112;
LABEL_71:
            sub_26A169024(v87, type metadata accessor for ImageElement.Source);
            goto LABEL_72;
          }
        }

        else
        {
          v162 = v210;
          sub_26A10FD9C();
          OUTLINED_FUNCTION_37(v151 + v150, 1, v152);
          if (!v163)
          {
            v180 = v208;
            sub_26A168FD0();
            v181 = static _ProtoColor.== infix(_:_:)();
            sub_26A169024(v180, type metadata accessor for Color);
            OUTLINED_FUNCTION_40_7();
            sub_26A0E48F0(v182, v183, v184);
            OUTLINED_FUNCTION_40_7();
            sub_26A0E48F0(v185, v186, v187);
            sub_26A169024(v162, type metadata accessor for Color);
            OUTLINED_FUNCTION_40_7();
            sub_26A0E48F0(v188, v189, v190);
            if ((v181 & 1) == 0)
            {
              goto LABEL_63;
            }

            goto LABEL_65;
          }

          OUTLINED_FUNCTION_20_10();
          sub_26A0E48F0(v164, v165, v166);
          OUTLINED_FUNCTION_20_10();
          sub_26A0E48F0(v167, v168, v169);
          OUTLINED_FUNCTION_0_21();
          sub_26A169024(v162, v170);
        }

        v121 = &qword_28036D990;
        v122 = &qword_26A43DEE0;
        v120 = v151;
        goto LABEL_62;
      }

      sub_26A0E48F0(v2 + v111, &qword_28036CBA0, &qword_26A4265B0);
LABEL_37:

LABEL_39:
      sub_26A0E48F0(v0, &qword_28036D9A8, &qword_26A429CE8);
LABEL_72:
      OUTLINED_FUNCTION_75();
      return;
    case 4u:
      sub_26A168F7C();
      v81 = *v61;
      v80 = v61[1];
      OUTLINED_FUNCTION_53_4();
      if (swift_getEnumCaseMultiPayload() != 4)
      {
        goto LABEL_37;
      }

      v82 = v0;
      v83 = *v75;
      v84 = v75[1];
      v85 = v81 == v83 && v80 == v84;
      if (v85)
      {
      }

      else
      {
        OUTLINED_FUNCTION_39_7();
        v86 = sub_26A425354();

        if ((v86 & 1) == 0)
        {
          v87 = v82;
          goto LABEL_71;
        }
      }

      v87 = v82;
      goto LABEL_71;
    case 5u:
      OUTLINED_FUNCTION_133();
      sub_26A168F7C();
      OUTLINED_FUNCTION_53_4();
      if (swift_getEnumCaseMultiPayload() == 5)
      {
        v132 = v218;
        sub_26A168FD0();
        OUTLINED_FUNCTION_115();
        static _ProtoImageElement.Contact.== infix(_:_:)();
        sub_26A169024(v132, type metadata accessor for ImageElement.Contact);
        v133 = OUTLINED_FUNCTION_48_1();
        sub_26A169024(v133, v134);
        OUTLINED_FUNCTION_9_10();
        v136 = v0;
        goto LABEL_41;
      }

      sub_26A169024(v1, type metadata accessor for ImageElement.Contact);
      goto LABEL_39;
    default:
      sub_26A168F7C();
      v76 = *v69;
      v77 = v69[1];
      OUTLINED_FUNCTION_53_4();
      if (swift_getEnumCaseMultiPayload())
      {
        v78 = OUTLINED_FUNCTION_115();
        sub_26A0E4784(v78, v79);
        goto LABEL_39;
      }

      v137 = v0;
      v138 = *v75;
      v139 = v75[1];
      v140 = OUTLINED_FUNCTION_115();
      MEMORY[0x26D65B4F0](v140);
      sub_26A0E4784(v138, v139);
      v141 = OUTLINED_FUNCTION_115();
      sub_26A0E4784(v141, v142);
      OUTLINED_FUNCTION_9_10();
      v136 = v137;
LABEL_41:
      sub_26A169024(v136, v135);
      goto LABEL_72;
  }
}

uint64_t sub_26A16334C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = a1[1];

  *a1 = a2;
  a1[1] = a3;
  v11 = a1[3];

  a1[2] = a4;
  a1[3] = a5;
  return result;
}

uint64_t sub_26A1633C4(void *a1, uint64_t a2, uint64_t a3)
{
  v29 = type metadata accessor for _ProtoColor(0);
  v6 = OUTLINED_FUNCTION_12(v29);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_18();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CBA0, &qword_26A4265B0);
  OUTLINED_FUNCTION_41(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v12);
  v14 = &v28 - v13;
  v15 = type metadata accessor for Color();
  v16 = OUTLINED_FUNCTION_12(v15);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_82_2();
  v19 = a1[1];

  *a1 = a2;
  a1[1] = a3;
  sub_26A10FD9C();
  OUTLINED_FUNCTION_76_1();
  if (__swift_getEnumTagSinglePayload(v20, v21, v22) == 1)
  {
    return sub_26A0E48F0(v14, &qword_28036CBA0, &qword_26A4265B0);
  }

  sub_26A168FD0();
  sub_26A168FD0();
  v24 = type metadata accessor for _ProtoImageElement.Symbol(0);
  sub_26A0E48F0(a1 + *(v24 + 48), &qword_28036CCD8, &unk_26A432950);
  sub_26A168FD0();
  OUTLINED_FUNCTION_126_0();
  return __swift_storeEnumTagSinglePayload(v25, v26, v27, v29);
}

void static ImageElement.LoadingImage.== infix(_:_:)()
{
  OUTLINED_FUNCTION_76();
  v103 = type metadata accessor for Color();
  v2 = OUTLINED_FUNCTION_12(v103);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_11();
  v101 = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036D990, &qword_26A43DEE0);
  OUTLINED_FUNCTION_12(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_42();
  v104 = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CBA0, &qword_26A4265B0);
  v12 = OUTLINED_FUNCTION_41(v11);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_17();
  v102 = v15 - v16;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v17);
  v105 = &v101 - v18;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_48();
  v106 = v20;
  v21 = OUTLINED_FUNCTION_45();
  v22 = type metadata accessor for ImageElement.LoadingImage(v21);
  v23 = OUTLINED_FUNCTION_12(v22);
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_85();
  MEMORY[0x28223BE20](v26);
  v28 = (&v101 - v27);
  MEMORY[0x28223BE20](v29);
  v31 = (&v101 - v30);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036D9C8, &qword_26A429D00);
  OUTLINED_FUNCTION_41(v32);
  v34 = *(v33 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_62_3();
  v37 = (v0 + *(v36 + 56));
  sub_26A168F7C();
  sub_26A168F7C();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      OUTLINED_FUNCTION_175();
      sub_26A168F7C();
      v40 = *v28;
      v39 = v28[1];
      v42 = v28[2];
      v41 = v28[3];
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v44 = v37[2];
        v43 = v37[3];
        v45 = v40 == *v37 && v39 == v37[1];
        if (v45)
        {
          v71 = v37[1];
        }

        else
        {
          v46 = v37[1];
          v47 = sub_26A425354();

          if ((v47 & 1) == 0)
          {
LABEL_9:

LABEL_42:
            sub_26A169024(v0, type metadata accessor for ImageElement.LoadingImage);
            goto LABEL_43;
          }
        }

        if (v42 != v44 || v41 != v43)
        {
          OUTLINED_FUNCTION_86_2();
        }

        goto LABEL_9;
      }

      goto LABEL_21;
    }

    OUTLINED_FUNCTION_133();
    sub_26A168F7C();
    v52 = *v1;
    v53 = v1[1];
    v54 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036D9B0, &qword_26A429CF0) + 48);
    if (swift_getEnumCaseMultiPayload() != 2)
    {
      sub_26A0E48F0(v1 + v54, &qword_28036CBA0, &qword_26A4265B0);
LABEL_21:

      goto LABEL_22;
    }

    v56 = *v37;
    v55 = v37[1];
    sub_26A16907C();
    sub_26A16907C();
    if (v52 == v56 && v53 == v55)
    {
    }

    else
    {
      v58 = sub_26A425354();

      if ((v58 & 1) == 0)
      {
        OUTLINED_FUNCTION_236();
        sub_26A0E48F0(v59, v60, v61);
        OUTLINED_FUNCTION_236();
        goto LABEL_41;
      }
    }

    v73 = *(v6 + 48);
    v74 = v104;
    sub_26A10FD9C();
    sub_26A10FD9C();
    v75 = v103;
    OUTLINED_FUNCTION_37(v74, 1, v103);
    if (v45)
    {
      OUTLINED_FUNCTION_236();
      sub_26A0E48F0(v76, v77, v78);
      OUTLINED_FUNCTION_236();
      sub_26A0E48F0(v79, v80, v81);
      OUTLINED_FUNCTION_37(v74 + v73, 1, v75);
      if (v45)
      {
        sub_26A0E48F0(v74, &qword_28036CBA0, &qword_26A4265B0);
        goto LABEL_42;
      }
    }

    else
    {
      v82 = v102;
      sub_26A10FD9C();
      OUTLINED_FUNCTION_37(v74 + v73, 1, v75);
      if (!v83)
      {
        v91 = v101;
        sub_26A168FD0();
        static _ProtoColor.== infix(_:_:)();
        sub_26A169024(v91, type metadata accessor for Color);
        OUTLINED_FUNCTION_69_2();
        sub_26A0E48F0(v92, v93, v94);
        OUTLINED_FUNCTION_69_2();
        sub_26A0E48F0(v95, v96, v97);
        sub_26A169024(v82, type metadata accessor for Color);
        OUTLINED_FUNCTION_69_2();
        sub_26A0E48F0(v98, v99, v100);
        goto LABEL_42;
      }

      OUTLINED_FUNCTION_236();
      sub_26A0E48F0(v84, v85, v86);
      OUTLINED_FUNCTION_236();
      sub_26A0E48F0(v87, v88, v89);
      OUTLINED_FUNCTION_0_21();
      sub_26A169024(v82, v90);
    }

    v63 = &qword_28036D990;
    v64 = &qword_26A43DEE0;
    v62 = v74;
LABEL_41:
    sub_26A0E48F0(v62, v63, v64);
    goto LABEL_42;
  }

  sub_26A168F7C();
  v48 = *v31;
  v49 = v31[1];
  if (!swift_getEnumCaseMultiPayload())
  {
    v66 = *v37;
    v65 = v37[1];
    v67 = OUTLINED_FUNCTION_78_1();
    MEMORY[0x26D65B4F0](v67);
    sub_26A0E4784(v66, v65);
    v68 = OUTLINED_FUNCTION_78_1();
    sub_26A0E4784(v68, v69);
    OUTLINED_FUNCTION_3_14();
    sub_26A169024(v0, v70);
    goto LABEL_43;
  }

  v50 = OUTLINED_FUNCTION_78_1();
  sub_26A0E4784(v50, v51);
LABEL_22:
  sub_26A0E48F0(v0, &qword_28036D9C8, &qword_26A429D00);
LABEL_43:
  OUTLINED_FUNCTION_75();
}

void ImageElement.LoadingImage.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_76();
  a19 = v22;
  a20 = v23;
  v24 = type metadata accessor for Color();
  v25 = OUTLINED_FUNCTION_12(v24);
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_18();
  v30 = v29 - v28;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CBA0, &qword_26A4265B0);
  v32 = OUTLINED_FUNCTION_41(v31);
  v34 = *(v33 + 64);
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_64_1();
  MEMORY[0x28223BE20](v35);
  v37 = &a9 - v36;
  v38 = type metadata accessor for ImageElement.LoadingImage(0);
  v39 = OUTLINED_FUNCTION_12(v38);
  v41 = *(v40 + 64);
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_72_1();
  OUTLINED_FUNCTION_10_13();
  OUTLINED_FUNCTION_124();
  sub_26A168F7C();
  OUTLINED_FUNCTION_22_1();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v43 = *v21;
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v44 = v21[1];
      v45 = v21[2];
      v46 = v21[3];
      MEMORY[0x26D65C340](1);
      sub_26A424C04();

      OUTLINED_FUNCTION_40_7();
      sub_26A424C04();
    }

    else
    {
      v48 = v21[1];
      v49 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036D9B0, &qword_26A429CF0) + 48);
      sub_26A16907C();
      MEMORY[0x26D65C340](2);
      sub_26A424C04();

      OUTLINED_FUNCTION_115();
      sub_26A10FD9C();
      OUTLINED_FUNCTION_37(v20, 1, v24);
      if (v50)
      {
        sub_26A425524();
      }

      else
      {
        sub_26A168FD0();
        sub_26A425524();
        type metadata accessor for _ProtoColor(0);
        OUTLINED_FUNCTION_34_6();
        sub_26A1690D0(v51, v52);
        sub_26A424B44();
        OUTLINED_FUNCTION_0_21();
        sub_26A169024(v30, v53);
      }

      sub_26A0E48F0(v37, &qword_28036CBA0, &qword_26A4265B0);
    }
  }

  else
  {
    v47 = v21[1];
    MEMORY[0x26D65C340](0);
    sub_26A4246E4();
    sub_26A0E4784(v43, v47);
  }

  OUTLINED_FUNCTION_75();
}

uint64_t sub_26A163F74(void (*a1)(_BYTE *))
{
  sub_26A425504();
  a1(v3);
  return sub_26A425554();
}

uint64_t sub_26A163FDC(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *))
{
  sub_26A425504();
  a4(v6);
  return sub_26A425554();
}

void ImageElement.Source.description.getter()
{
  OUTLINED_FUNCTION_76();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036D9D0, &qword_26A432980);
  OUTLINED_FUNCTION_41(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_42();
  v103 = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036D518, &qword_26A4283D0);
  OUTLINED_FUNCTION_41(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_42();
  v106 = v13;
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CFC0, &qword_26A426BE8);
  OUTLINED_FUNCTION_12(v102);
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v16);
  v17 = OUTLINED_FUNCTION_61_3();
  v18 = type metadata accessor for ImageElement.Contact(v17);
  v19 = OUTLINED_FUNCTION_41(v18);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_17();
  v24 = v22 - v23;
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_48();
  v105 = v26;
  OUTLINED_FUNCTION_45();
  v101 = type metadata accessor for Color();
  v27 = OUTLINED_FUNCTION_12(v101);
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_11();
  v100 = v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CBA0, &qword_26A4265B0);
  v32 = OUTLINED_FUNCTION_41(v31);
  v34 = *(v33 + 64);
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_85();
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_48();
  v104 = v36;
  v37 = OUTLINED_FUNCTION_45();
  v38 = type metadata accessor for ImageElement.LoadingImage(v37);
  v39 = OUTLINED_FUNCTION_12(v38);
  v41 = *(v40 + 64);
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_11();
  v99 = v42;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036D9A0, &qword_26A429CE0);
  v44 = OUTLINED_FUNCTION_41(v43);
  v46 = *(v45 + 64);
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_63_2();
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_48();
  v107 = v48;
  OUTLINED_FUNCTION_45();
  v49 = sub_26A424614();
  v50 = OUTLINED_FUNCTION_24(v49);
  v52 = v51;
  v54 = *(v53 + 64);
  MEMORY[0x28223BE20](v50);
  OUTLINED_FUNCTION_11();
  v56 = v55;
  v57 = OUTLINED_FUNCTION_45();
  v58 = type metadata accessor for ImageElement.Source(v57);
  v59 = OUTLINED_FUNCTION_12(v58);
  v61 = *(v60 + 64);
  MEMORY[0x28223BE20](v59);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_181();
  OUTLINED_FUNCTION_11_11();
  sub_26A168F7C();
  OUTLINED_FUNCTION_124();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v84 = *v2;
      v85 = v2[1];
      v86 = v2[2];
      v87 = v2[3];
      OUTLINED_FUNCTION_13_9();
      sub_26A424EF4();

      OUTLINED_FUNCTION_38_5();
      v88 = OUTLINED_FUNCTION_133();
      MEMORY[0x26D65BA70](v88);

      OUTLINED_FUNCTION_54_4();
      MEMORY[0x26D65BA70](v86, v87);
      goto LABEL_17;
    case 2u:
      v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036D9B8, &qword_26A429CF8);
      v71 = *(v70 + 48);
      v72 = *(v2 + *(v70 + 64));
      v73 = v56;
      (*(v52 + 32))(v56, v2, v49);
      OUTLINED_FUNCTION_59_5();
      sub_26A16907C();
      OUTLINED_FUNCTION_59_5();
      sub_26A10FD9C();
      OUTLINED_FUNCTION_37(v3, 1, v38);
      if (v74)
      {
        sub_26A0E48F0(v3, &qword_28036D9A0, &qword_26A429CE0);
        OUTLINED_FUNCTION_13_9();
        sub_26A424EF4();

        OUTLINED_FUNCTION_66_0();
        OUTLINED_FUNCTION_90_1();

        MEMORY[0x26D65BA70](0xD000000000000010, 0x800000026A447900);
        if (v72)
        {
          v75 = 1819044198;
        }

        else
        {
          v75 = 7629158;
        }

        if (v72)
        {
          v76 = 0xE400000000000000;
        }

        else
        {
          v76 = 0xE300000000000000;
        }

        MEMORY[0x26D65BA70](v75, v76);

        MEMORY[0x26D65BA70](41, 0xE100000000000000);
        v77 = OUTLINED_FUNCTION_100();
      }

      else
      {
        sub_26A168FD0();
        OUTLINED_FUNCTION_13_9();
        sub_26A424EF4();

        OUTLINED_FUNCTION_66_0();
        OUTLINED_FUNCTION_90_1();

        MEMORY[0x26D65BA70](0xD000000000000011, 0x800000026A447920);
        ImageElement.LoadingImage.description.getter();
        OUTLINED_FUNCTION_90_1();

        MEMORY[0x26D65BA70](0x6E65746E6F63202CLL, 0xEF203A65646F4D74);
        if (v72)
        {
          v95 = 1819044198;
        }

        else
        {
          v95 = 7629158;
        }

        if (v72)
        {
          v96 = 0xE400000000000000;
        }

        else
        {
          v96 = 0xE300000000000000;
        }

        MEMORY[0x26D65BA70](v95, v96);

        MEMORY[0x26D65BA70](41, 0xE100000000000000);
        OUTLINED_FUNCTION_3_14();
        sub_26A169024(v99, v97);
        v78 = &qword_28036D9A0;
        v77 = v107;
      }

      sub_26A0E48F0(v77, v78, &qword_26A429CE0);
      (*(v52 + 8))(v73, v49);
      break;
    case 3u:
      v79 = *v2;
      v80 = v2[1];
      v81 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036D9B0, &qword_26A429CF0) + 48);
      sub_26A16907C();
      sub_26A10FD9C();
      OUTLINED_FUNCTION_37(v1, 1, v101);
      if (v74)
      {
        v82 = OUTLINED_FUNCTION_115();
        sub_26A0E48F0(v82, v83, &qword_26A4265B0);
        OUTLINED_FUNCTION_58_5();
        MEMORY[0x26D65BA70](v79, v80);

        OUTLINED_FUNCTION_89_0();
      }

      else
      {
        sub_26A168FD0();
        OUTLINED_FUNCTION_13_9();
        sub_26A424EF4();

        OUTLINED_FUNCTION_58_5();
        MEMORY[0x26D65BA70](v79, v80);

        OUTLINED_FUNCTION_55_4();
        Color.description(redacted:)(0);
        OUTLINED_FUNCTION_90_1();

        OUTLINED_FUNCTION_0_21();
        sub_26A169024(v100, v98);
      }

      sub_26A0E48F0(v104, &qword_28036CBA0, &qword_26A4265B0);
      break;
    case 4u:
      v68 = *v2;
      v69 = v2[1];
      v109 = 0x286E6F6349707061;
      v110 = 0xE900000000000022;
      MEMORY[0x26D65BA70](v68, v69);
LABEL_17:

      OUTLINED_FUNCTION_89_0();
      break;
    case 5u:
      sub_26A168FD0();
      sub_26A168F7C();
      OUTLINED_FUNCTION_236();
      sub_26A168F7C();
      *(v0 + *(v102 + 32)) = 0;
      sub_26A169024(v24, type metadata accessor for ImageElement.Contact);
      *(v0 + *(v102 + 28)) = MEMORY[0x277D84F90];
      sub_26A10FD9C();
      sub_26A41DBFC(v103, v106);
      type metadata accessor for ImageElement.Contact.Content(0);
      OUTLINED_FUNCTION_126_0();
      __swift_storeEnumTagSinglePayload(v89, v90, v91, v92);
      OUTLINED_FUNCTION_86_0();
      sub_26A1471B0();
      sub_26A0E48F0(v106, &qword_28036D518, &qword_26A4283D0);
      v93 = v0 + *(type metadata accessor for _ProtoImageElement.Contact(0) + 20);
      v94 = *v93;
      LOBYTE(v93) = *(v93 + 8);
      v109 = v94;
      LOBYTE(v110) = v93;
      sub_26A217A84(&v109, &v108);
      sub_26A147108();
      sub_26A1027A4();
      sub_26A0E48F0(v0, &qword_28036CFC0, &qword_26A426BE8);
      sub_26A169024(v105, type metadata accessor for ImageElement.Contact);
      break;
    default:
      v62 = *v2;
      v63 = v2[1];
      OUTLINED_FUNCTION_13_9();
      sub_26A424EF4();

      OUTLINED_FUNCTION_49_8();
      v64 = OUTLINED_FUNCTION_133();
      v108 = MEMORY[0x26D65B520](v64);
      v65 = sub_26A4251B4();
      MEMORY[0x26D65BA70](v65);

      OUTLINED_FUNCTION_67_2();
      v66 = OUTLINED_FUNCTION_133();
      sub_26A0E4784(v66, v67);
      break;
  }

  OUTLINED_FUNCTION_133();
  OUTLINED_FUNCTION_75();
}

void ImageElement.LoadingImage.description.getter()
{
  OUTLINED_FUNCTION_76();
  v3 = type metadata accessor for Color();
  v4 = OUTLINED_FUNCTION_12(v3);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_44_6();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CBA0, &qword_26A4265B0);
  v8 = OUTLINED_FUNCTION_41(v7);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_64_1();
  MEMORY[0x28223BE20](v11);
  v13 = v36 - v12;
  v14 = type metadata accessor for ImageElement.LoadingImage(0);
  v15 = OUTLINED_FUNCTION_12(v14);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_72_1();
  OUTLINED_FUNCTION_10_13();
  sub_26A168F7C();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v19 = *v2;
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v20 = v2[1];
      v21 = v2[2];
      v22 = v2[3];
      OUTLINED_FUNCTION_13_9();
      sub_26A424EF4();

      OUTLINED_FUNCTION_38_5();
      v23 = OUTLINED_FUNCTION_48_1();
      MEMORY[0x26D65BA70](v23);

      OUTLINED_FUNCTION_54_4();
      MEMORY[0x26D65BA70](v21, v22);

      OUTLINED_FUNCTION_89_0();
    }

    else
    {
      v29 = v2[1];
      v30 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036D9B0, &qword_26A429CF0) + 48);
      sub_26A16907C();
      sub_26A10FD9C();
      OUTLINED_FUNCTION_37(v1, 1, v3);
      if (v31)
      {
        v32 = OUTLINED_FUNCTION_103();
        sub_26A0E48F0(v32, v33, &qword_26A4265B0);
        v37 = 0x22286C6F626D7973;
        v38 = 0xE800000000000000;
        MEMORY[0x26D65BA70](v19, v29);

        OUTLINED_FUNCTION_89_0();
      }

      else
      {
        OUTLINED_FUNCTION_103();
        sub_26A168FD0();
        OUTLINED_FUNCTION_13_9();
        sub_26A424EF4();

        v37 = 0x22286C6F626D7973;
        v38 = 0xE800000000000000;
        MEMORY[0x26D65BA70](v19, v29);

        OUTLINED_FUNCTION_55_4();
        countAndFlagsBits = Color.description(redacted:)(0)._countAndFlagsBits;
        MEMORY[0x26D65BA70](countAndFlagsBits);

        OUTLINED_FUNCTION_0_21();
        sub_26A169024(v0, v35);
      }

      sub_26A0E48F0(v13, &qword_28036CBA0, &qword_26A4265B0);
    }
  }

  else
  {
    v24 = v2[1];
    OUTLINED_FUNCTION_13_9();
    sub_26A424EF4();

    OUTLINED_FUNCTION_49_8();
    v25 = OUTLINED_FUNCTION_48_1();
    v36[1] = MEMORY[0x26D65B520](v25);
    v26 = sub_26A4251B4();
    MEMORY[0x26D65BA70](v26);

    OUTLINED_FUNCTION_67_2();
    v27 = OUTLINED_FUNCTION_48_1();
    sub_26A0E4784(v27, v28);
  }

  OUTLINED_FUNCTION_75();
}

void Array<A>.sources(for:)()
{
  OUTLINED_FUNCTION_76();
  v1 = v0;
  v3 = v2;
  v4 = type metadata accessor for ImageElement();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  MEMORY[0x28223BE20](v6);
  MEMORY[0x28223BE20](v7);
  MEMORY[0x28223BE20](v37 - v8);
  v10 = v37 - v9;
  MEMORY[0x28223BE20](v11);
  MEMORY[0x28223BE20](v12);
  v19 = v37 - v18;
  v20 = *(v1 + 16);
  if (v20)
  {
    v39 = v16;
    v40 = v14;
    v37[0] = v13;
    v37[1] = v17;
    v21 = *v3;
    v22 = *(v3 + 8);
    v23 = v1 + ((*(v15 + 80) + 32) & ~*(v15 + 80));
    v24 = *(v15 + 72);
    v37[2] = v23;
    v38 = v20;
    do
    {
      sub_26A168F7C();
      v25 = *(v10 + 1);
      if (v25[2])
      {
        v26 = *(v10 + 1);
      }

      else
      {
        v25 = &unk_287B01748;
      }

      v27 = sub_26A165034(v21, v22, v25);

      if (v27)
      {
        sub_26A168FD0();
LABEL_20:
        sub_26A168FD0();
        ImageElement.sources.getter();
        OUTLINED_FUNCTION_26_11();
        sub_26A169024(v19, v36);
        goto LABEL_21;
      }

      sub_26A169024(v10, type metadata accessor for ImageElement);
      v23 += v24;
      --v20;
    }

    while (v20);
    v28 = 0;
    v30 = v38;
    v29 = v39;
    do
    {
      sub_26A168F7C();
      if (*(*(v29 + 8) + 16))
      {
      }

      else
      {
        v31 = &unk_287B01778;
      }

      ++v28;
      v32 = v31[2] + 1;
      v33 = 4;
      while (--v32)
      {
        v34 = v31[v33];
        v33 += 2;
        if (!v34)
        {

          sub_26A168FD0();
          v19 = v37[0];
          goto LABEL_20;
        }
      }

      OUTLINED_FUNCTION_26_11();
      sub_26A169024(v29, v35);
    }

    while (v28 != v30);
  }

LABEL_21:
  OUTLINED_FUNCTION_75();
}

BOOL sub_26A165034(uint64_t a1, char a2, uint64_t a3)
{
  v3 = *(a3 + 16);
  v4 = (a3 + 32);
  while (v3)
  {
    v5 = *v4;
    if (a2)
    {
      switch(a1)
      {
        case 1:
          if (v5 != 1)
          {
            goto LABEL_8;
          }

          break;
        case 2:
          if (v5 != 2)
          {
            goto LABEL_8;
          }

          break;
        case 3:
          if (v5 != 3)
          {
            goto LABEL_8;
          }

          break;
        case 4:
          if (v5 != 4)
          {
            goto LABEL_8;
          }

          break;
        case 5:
          if (v5 != 5)
          {
            goto LABEL_8;
          }

          break;
        case 6:
          if (v5 != 6)
          {
            goto LABEL_8;
          }

          break;
        case 7:
          if (v5 != 7)
          {
            goto LABEL_8;
          }

          break;
        case 8:
          if (v5 != 8)
          {
            goto LABEL_8;
          }

          break;
        default:
          if (v5)
          {
            goto LABEL_8;
          }

          break;
      }

      return v3 != 0;
    }

    if (v5 == a1)
    {
      return v3 != 0;
    }

LABEL_8:
    v4 += 2;
    --v3;
  }

  return v3 != 0;
}

void Array<A>.asSourceTypes()()
{
  OUTLINED_FUNCTION_76();
  v2 = v1;
  v3 = type metadata accessor for ImageElement.SourceType(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_44_6();
  v6 = *(v2 + 16);
  if (v6)
  {
    v13 = MEMORY[0x277D84F90];
    sub_26A10D65C();
    v7 = *(type metadata accessor for ImageElement.Source(0) - 8);
    v8 = (v2 + ((*(v7 + 80) + 32) & ~*(v7 + 80)));
    v9 = *(v7 + 72);
    do
    {
      sub_26A1652A4(v8, v0);
      v10 = *(v13 + 16);
      if (v10 >= *(v13 + 24) >> 1)
      {
        sub_26A10D65C();
      }

      *(v13 + 16) = v10 + 1;
      v11 = v13 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
      v12 = *(v4 + 72);
      sub_26A168FD0();
      v8 = (v8 + v9);
      --v6;
    }

    while (v6);
  }

  OUTLINED_FUNCTION_75();
}

uint64_t sub_26A1652A4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v133 = a2;
  v134 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036D500, &qword_26A435570);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v117 = &v112 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v112 - v6;
  MEMORY[0x28223BE20](v8);
  v125 = &v112 - v9;
  v116 = type metadata accessor for ImageElement.LoadingImage(0);
  v10 = *(*(v116 - 8) + 64);
  MEMORY[0x28223BE20](v116);
  v115 = (&v112 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036D4F8, &qword_26A4283C0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v126 = &v112 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v123 = &v112 - v16;
  MEMORY[0x28223BE20](v17);
  v124 = &v112 - v18;
  MEMORY[0x28223BE20](v19);
  v127 = &v112 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036D9A0, &qword_26A429CE0);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21 - 8);
  v24 = &v112 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v122 = &v112 - v26;
  v129 = sub_26A424614();
  v132 = *(v129 - 8);
  v27 = v132[8];
  MEMORY[0x28223BE20](v129);
  v131 = &v112 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v119 = &v112 - v30;
  MEMORY[0x28223BE20](v31);
  v120 = &v112 - v32;
  MEMORY[0x28223BE20](v33);
  v128 = &v112 - v34;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036D4D0, &qword_26A428230);
  v36 = *(*(v35 - 8) + 64);
  MEMORY[0x28223BE20](v35 - 8);
  v38 = &v112 - v37;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CBA0, &qword_26A4265B0);
  v40 = *(*(v39 - 8) + 64);
  MEMORY[0x28223BE20](v39 - 8);
  v42 = &v112 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v43);
  v45 = &v112 - v44;
  MEMORY[0x28223BE20](v46);
  v130 = &v112 - v47;
  MEMORY[0x28223BE20](v48);
  v121 = &v112 - v49;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CBB8, &qword_26A4265C8);
  v51 = *(*(v50 - 8) + 64);
  MEMORY[0x28223BE20](v50 - 8);
  v118 = &v112 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v53);
  v55 = &v112 - v54;
  MEMORY[0x28223BE20](v56);
  v58 = &v112 - v57;
  v59 = type metadata accessor for ImageElement.Source(0);
  v60 = *(*(v59 - 8) + 64);
  MEMORY[0x28223BE20](v59);
  v62 = (&v112 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_26A168F7C();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v106 = *v62;
      v105 = v62[1];
      v108 = v62[2];
      v107 = v62[3];
      v109 = type metadata accessor for ImageElement.AspectRatio();
      __swift_storeEnumTagSinglePayload(v58, 1, 1, v109);
      sub_26A10FD9C();
      v110 = type metadata accessor for _ProtoImageElement.Bundle(0);
      v134 = &v112;
      MEMORY[0x28223BE20](v110);
      *(&v112 - 8) = v106;
      *(&v112 - 7) = v105;
      *(&v112 - 6) = 0;
      *(&v112 - 5) = 0;
      *(&v112 - 4) = v108;
      *(&v112 - 3) = v107;
      *(&v112 - 8) = 512;
      *(&v112 - 14) = 2;
      *(&v112 - 1) = v55;
      sub_26A1690D0(&qword_28036E3F0, type metadata accessor for _ProtoImageElement.Bundle);
      sub_26A4249C4();

      sub_26A0E48F0(v58, &qword_28036CBB8, &qword_26A4265C8);
      sub_26A0E48F0(v55, &qword_28036CBB8, &qword_26A4265C8);
      goto LABEL_11;
    case 2u:
      v114 = v7;
      v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036D9B8, &qword_26A429CF8);
      v71 = *(v70 + 48);
      LODWORD(v134) = *(v62 + *(v70 + 64));
      (v132[4])(v128, v62, v129);
      sub_26A16907C();
      sub_26A10FD9C();
      v72 = 1;
      if (__swift_getEnumTagSinglePayload(v24, 1, v116) == 1)
      {
        goto LABEL_7;
      }

      v73 = v115;
      sub_26A168FD0();
      v74 = v135;
      sub_26A166384(v127);
      if (v74)
      {
        result = sub_26A169024(v73, type metadata accessor for ImageElement.LoadingImage);
        __break(1u);
      }

      else
      {
        sub_26A169024(v73, type metadata accessor for ImageElement.LoadingImage);
        v72 = 0;
        v135 = 0;
LABEL_7:
        v75 = type metadata accessor for ImageElement.SourceType.LoadingImage(0);
        __swift_storeEnumTagSinglePayload(v127, v72, 1, v75);
        v77 = (v132 + 2);
        v76 = v132[2];
        v78 = v120;
        v79 = v129;
        v76(v120, v128, v129);
        sub_26A10FD9C();
        v80 = type metadata accessor for ImageElement.AspectRatio();
        v113 = v58;
        __swift_storeEnumTagSinglePayload(v58, 1, 1, v80);
        v81 = v119;
        v116 = v77;
        v76(v119, v78, v79);
        v115 = v76;
        __swift_storeEnumTagSinglePayload(v125, 1, 1, v79);
        sub_26A10FD9C();
        sub_26A10FD9C();
        v82 = type metadata accessor for Color();
        v83 = v121;
        __swift_storeEnumTagSinglePayload(v121, 1, 1, v82);
        v76(v131, v81, v79);
        v84 = v114;
        sub_26A10FD9C();
        v85 = v126;
        sub_26A10FD9C();
        v86 = v118;
        sub_26A10FD9C();
        v87 = v130;
        sub_26A10FD9C();
        v88 = type metadata accessor for _ProtoImageElement.Url(0);
        MEMORY[0x28223BE20](v88);
        *(&v112 - 8) = v131;
        *(&v112 - 7) = v84;
        *(&v112 - 6) = v85;
        *(&v112 - 40) = v134;
        *(&v112 - 39) = 0;
        *(&v112 - 4) = v86;
        *(&v112 - 12) = 514;
        *(&v112 - 22) = 0;
        *(&v112 - 2) = v87;
        *(&v112 - 8) = 0;
        *(&v112 - 1) = 0;
        v134 = type metadata accessor for ImageElement.Url();
        v89 = *(v134 + 6);
        sub_26A1690D0(qword_28157A2B0, type metadata accessor for _ProtoImageElement.Url);
        v90 = v133;
        sub_26A4249C4();
        sub_26A0E48F0(v83, &qword_28036CBA0, &qword_26A4265B0);
        sub_26A0E48F0(v55, &qword_28036CBB8, &qword_26A4265C8);
        sub_26A0E48F0(v123, &qword_28036D4F8, &qword_26A4283C0);
        sub_26A0E48F0(v125, &qword_28036D500, &qword_26A435570);
        v92 = v132 + 1;
        v91 = v132[1];
        v93 = v129;
        v91(v119, v129);
        sub_26A0E48F0(v113, &qword_28036CBB8, &qword_26A4265C8);
        sub_26A0E48F0(v124, &qword_28036D4F8, &qword_26A4283C0);
        v91(v120, v93);
        v132 = v92;
        sub_26A0E48F0(v127, &qword_28036D4F8, &qword_26A4283C0);
        sub_26A0E48F0(v122, &qword_28036D9A0, &qword_26A429CE0);
        v91(v128, v93);
        v94 = v131;
        v95 = v115;
        v115(v90, v131, v93);
        v96 = v90 + *(v134 + 5);
        v95(v96, v94, v93);
        v97 = v114;
        sub_26A10FD9C();
        v98 = type metadata accessor for RFImage.Url(0);
        __swift_storeEnumTagSinglePayload(v96 + *(v98 + 20), 1, 1, v93);
        sub_26A10CF40();
        sub_26A0E48F0(v130, &qword_28036CBA0, &qword_26A4265B0);
        sub_26A0E48F0(v118, &qword_28036CBB8, &qword_26A4265C8);
        sub_26A0E48F0(v126, &qword_28036D4F8, &qword_26A4283C0);
        sub_26A0E48F0(v97, &qword_28036D500, &qword_26A435570);
        v91(v131, v93);
LABEL_11:
        type metadata accessor for ImageElement.SourceType(0);
        return swift_storeEnumTagMultiPayload();
      }

      return result;
    case 3u:
      v99 = v62[1];
      v134 = *v62;
      v100 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036D9B0, &qword_26A429CF0) + 48);
      v101 = v121;
      sub_26A16907C();
      v102 = v130;
      sub_26A10FD9C();
      sub_26A10FD9C();
      sub_26A10FD9C();
      v103 = type metadata accessor for ImageElement.Background(0);
      __swift_storeEnumTagSinglePayload(v38, 1, 1, v103);
      v104 = type metadata accessor for _ProtoImageElement.Symbol(0);
      v132 = &v112;
      MEMORY[0x28223BE20](v104);
      *(&v112 - 8) = v134;
      *(&v112 - 7) = v99;
      *(&v112 - 6) = 0;
      *(&v112 - 5) = 0;
      *(&v112 - 4) = v42;
      *(&v112 - 12) = 0;
      *(&v112 - 2) = v38;
      sub_26A1690D0(qword_281579E68, type metadata accessor for _ProtoImageElement.Symbol);
      sub_26A4249C4();

      sub_26A0E48F0(v45, &qword_28036CBA0, &qword_26A4265B0);
      sub_26A0E48F0(v102, &qword_28036CBA0, &qword_26A4265B0);
      sub_26A0E48F0(v101, &qword_28036CBA0, &qword_26A4265B0);
      sub_26A0E48F0(v38, &qword_28036D4D0, &qword_26A428230);
      sub_26A0E48F0(v42, &qword_28036CBA0, &qword_26A4265B0);
      goto LABEL_11;
    case 4u:
      v68 = *v62;
      v67 = v62[1];
      v69 = type metadata accessor for _ProtoImageElement.AppIcon(0);
      MEMORY[0x28223BE20](v69);
      *(&v112 - 4) = v68;
      *(&v112 - 3) = v67;
      *(&v112 - 16) = 0;
      sub_26A1690D0(qword_281579DA8, type metadata accessor for _ProtoImageElement.AppIcon);
      sub_26A4249C4();

      goto LABEL_11;
    case 5u:
      sub_26A168FD0();
      goto LABEL_11;
    default:
      v63 = *v62;
      v64 = v62[1];
      v65 = type metadata accessor for ImageElement.AspectRatio();
      __swift_storeEnumTagSinglePayload(v58, 1, 1, v65);
      sub_26A10FD9C();
      v66 = type metadata accessor for _ProtoImageElement.DataMessage(0);
      v134 = &v112;
      MEMORY[0x28223BE20](v66);
      *(&v112 - 6) = v63;
      *(&v112 - 5) = v64;
      *(&v112 - 2) = xmmword_26A427140;
      *(&v112 - 8) = 512;
      *(&v112 - 14) = 2;
      *(&v112 - 1) = v55;
      sub_26A1690D0(&qword_28036D1A8, type metadata accessor for _ProtoImageElement.DataMessage);
      sub_26A4249C4();
      sub_26A0E4784(v63, v64);
      sub_26A0E48F0(v58, &qword_28036CBB8, &qword_26A4265C8);
      sub_26A0E48F0(v55, &qword_28036CBB8, &qword_26A4265C8);
      goto LABEL_11;
  }
}

uint64_t sub_26A166384@<X0>(uint64_t a1@<X8>)
{
  v53 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036D4D0, &qword_26A428230);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v50 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CBA0, &qword_26A4265B0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v51 = &v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v50 - v9;
  MEMORY[0x28223BE20](v11);
  v13 = &v50 - v12;
  MEMORY[0x28223BE20](v14);
  v16 = &v50 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CBB8, &qword_26A4265C8);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v20 = &v50 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v23 = &v50 - v22;
  v24 = type metadata accessor for ImageElement.LoadingImage(0);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x28223BE20](v24);
  v27 = (&v50 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_26A168F7C();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v29 = *v27;
  v52 = EnumCaseMultiPayload;
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v30 = v27[1];
      v31 = v27[2];
      v32 = v27[3];
      v33 = type metadata accessor for ImageElement.AspectRatio();
      __swift_storeEnumTagSinglePayload(v23, 1, 1, v33);
      v34 = &qword_26A4265C8;
      sub_26A10FD9C();
      v35 = type metadata accessor for _ProtoImageElement.Bundle(0);
      MEMORY[0x28223BE20](v35);
      *(&v50 - 8) = v36;
      *(&v50 - 7) = v30;
      *(&v50 - 6) = 0;
      *(&v50 - 5) = 0;
      *(&v50 - 4) = v31;
      *(&v50 - 3) = v32;
      *(&v50 - 8) = 512;
      *(&v50 - 14) = 2;
      *(&v50 - 1) = v20;
      sub_26A1690D0(&qword_28036E3F0, type metadata accessor for _ProtoImageElement.Bundle);
      sub_26A4249C4();

      sub_26A0E48F0(v23, &qword_28036CBB8, &qword_26A4265C8);
      v37 = v20;
      v38 = &qword_28036CBB8;
    }

    else
    {
      v43 = v27[1];
      v44 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036D9B0, &qword_26A429CF0) + 48);
      sub_26A16907C();
      sub_26A10FD9C();
      sub_26A10FD9C();
      v45 = v51;
      sub_26A10FD9C();
      v46 = type metadata accessor for ImageElement.Background(0);
      __swift_storeEnumTagSinglePayload(v4, 1, 1, v46);
      v47 = type metadata accessor for _ProtoImageElement.Symbol(0);
      v50 = &v50;
      MEMORY[0x28223BE20](v47);
      *(&v50 - 8) = v29;
      *(&v50 - 7) = v43;
      *(&v50 - 6) = 0;
      *(&v50 - 5) = 0;
      *(&v50 - 4) = v45;
      *(&v50 - 12) = 0;
      *(&v50 - 2) = v4;
      sub_26A1690D0(qword_281579E68, type metadata accessor for _ProtoImageElement.Symbol);
      sub_26A4249C4();

      v48 = v10;
      v34 = &qword_26A4265B0;
      sub_26A0E48F0(v48, &qword_28036CBA0, &qword_26A4265B0);
      sub_26A0E48F0(v13, &qword_28036CBA0, &qword_26A4265B0);
      sub_26A0E48F0(v16, &qword_28036CBA0, &qword_26A4265B0);
      sub_26A0E48F0(v4, &qword_28036D4D0, &qword_26A428230);
      v37 = v45;
      v38 = &qword_28036CBA0;
    }

    v42 = v34;
  }

  else
  {
    v39 = v27[1];
    v40 = type metadata accessor for ImageElement.AspectRatio();
    __swift_storeEnumTagSinglePayload(v23, 1, 1, v40);
    sub_26A10FD9C();
    v41 = type metadata accessor for _ProtoImageElement.DataMessage(0);
    MEMORY[0x28223BE20](v41);
    *(&v50 - 6) = v29;
    *(&v50 - 5) = v39;
    *(&v50 - 2) = xmmword_26A427140;
    *(&v50 - 8) = 512;
    *(&v50 - 14) = 2;
    *(&v50 - 1) = v20;
    sub_26A1690D0(&qword_28036D1A8, type metadata accessor for _ProtoImageElement.DataMessage);
    sub_26A4249C4();
    sub_26A0E4784(v29, v39);
    sub_26A0E48F0(v23, &qword_28036CBB8, &qword_26A4265C8);
    v37 = v20;
    v38 = &qword_28036CBB8;
    v42 = &qword_26A4265C8;
  }

  sub_26A0E48F0(v37, v38, v42);
  type metadata accessor for ImageElement.SourceType.LoadingImage(0);
  return swift_storeEnumTagMultiPayload();
}

void sub_26A166AA8(char a1, uint64_t a2, char a3, char *a4)
{
  if (a3)
  {
    OUTLINED_FUNCTION_16_8();
    if (v7 != v8)
    {
      OUTLINED_FUNCTION_60_3();
      if (v7)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_15_9();
    }
  }

  else
  {
    v6 = a2;
  }

  v9 = *(a4 + 2);
  if (v6 <= v9)
  {
    v10 = *(a4 + 2);
  }

  else
  {
    v10 = v6;
  }

  if (v10)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036DBB8, &qword_26A42A000);
    v11 = OUTLINED_FUNCTION_74_2();
    _swift_stdlib_malloc_size(v11);
    OUTLINED_FUNCTION_44_7();
    *(v11 + 2) = v9;
    *(v11 + 3) = v12;
  }

  else
  {
    v11 = MEMORY[0x277D84F90];
  }

  v13 = v11 + 32;
  v14 = a4 + 32;
  if (a1)
  {
    if (v11 != a4 || &v14[32 * v9] <= v13)
    {
      memmove(v13, v14, 32 * v9);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_26A166B88(char a1, uint64_t a2, char a3, char *a4)
{
  if (a3)
  {
    OUTLINED_FUNCTION_16_8();
    if (v7 != v8)
    {
      OUTLINED_FUNCTION_60_3();
      if (v7)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_15_9();
    }
  }

  else
  {
    v6 = a2;
  }

  v9 = *(a4 + 2);
  if (v6 <= v9)
  {
    v10 = *(a4 + 2);
  }

  else
  {
    v10 = v6;
  }

  if (v10)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036DB40, &qword_26A429F88);
    v11 = OUTLINED_FUNCTION_74_2();
    _swift_stdlib_malloc_size(v11);
    OUTLINED_FUNCTION_83_1();
    *(v11 + 2) = v9;
    *(v11 + 3) = v12;
  }

  else
  {
    v11 = MEMORY[0x277D84F90];
  }

  v13 = v11 + 32;
  v14 = a4 + 32;
  if (a1)
  {
    if (v11 != a4 || &v14[16 * v9] <= v13)
    {
      memmove(v13, v14, 16 * v9);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v9);
  }
}

void sub_26A1686F4()
{
  OUTLINED_FUNCTION_79_3();
  if (v5)
  {
    OUTLINED_FUNCTION_16_8();
    if (v7 != v8)
    {
      OUTLINED_FUNCTION_60_3();
      if (v7)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_15_9();
    }
  }

  else
  {
    v6 = v2;
  }

  v9 = v0[2];
  if (v6 <= v9)
  {
    v10 = v0[2];
  }

  else
  {
    v10 = v6;
  }

  if (v10)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
    v11 = OUTLINED_FUNCTION_74_2();
    _swift_stdlib_malloc_size(v11);
    OUTLINED_FUNCTION_44_7();
    v11[2] = v9;
    v11[3] = v12;
  }

  else
  {
    v11 = MEMORY[0x277D84F90];
  }

  if (v1)
  {
    if (v11 != v0 || &v0[4 * v9 + 4] <= v11 + 4)
    {
      v14 = OUTLINED_FUNCTION_22_1();
      memmove(v14, v15, v16);
    }

    v0[2] = 0;
  }

  else
  {
    v17 = OUTLINED_FUNCTION_39_7();
    __swift_instantiateConcreteTypeFromMangledNameV2(v17, v18);
    OUTLINED_FUNCTION_22_1();
    swift_arrayInitWithCopy();
  }
}

void sub_26A1688A8(char a1, uint64_t a2, char a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t), uint64_t (*a6)(void), void (*a7)(void))
{
  if (a3)
  {
    OUTLINED_FUNCTION_16_8();
    if (v12 != v13)
    {
      OUTLINED_FUNCTION_60_3();
      if (v12)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_15_9();
    }
  }

  else
  {
    v11 = a2;
  }

  v14 = *(a4 + 16);
  v15 = a5(v14, v11);
  v16 = *(a6(0) - 8);
  if (a1)
  {
    v17 = (*(v16 + 80) + 32) & ~*(v16 + 80);
    sub_26A168AAC(a4 + v17, v14, v15 + v17, a7);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_26A16899C(char a1, uint64_t a2, char a3, char *a4)
{
  if (a3)
  {
    OUTLINED_FUNCTION_16_8();
    if (v7 != v8)
    {
      OUTLINED_FUNCTION_60_3();
      if (v7)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_15_9();
    }
  }

  else
  {
    v6 = a2;
  }

  v9 = *(a4 + 2);
  if (v6 <= v9)
  {
    v10 = *(a4 + 2);
  }

  else
  {
    v10 = v6;
  }

  if (v10)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CC18, &qword_26A426678);
    v11 = OUTLINED_FUNCTION_74_2();
    _swift_stdlib_malloc_size(v11);
    OUTLINED_FUNCTION_83_1();
    *(v11 + 2) = v9;
    *(v11 + 3) = v12;
  }

  else
  {
    v11 = MEMORY[0x277D84F90];
  }

  v13 = v11 + 32;
  v14 = a4 + 32;
  if (a1)
  {
    if (v11 != a4 || &v14[16 * v9] <= v13)
    {
      memmove(v13, v14, 16 * v9);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

uint64_t sub_26A168AAC(unint64_t a1, uint64_t a2, unint64_t a3, void (*a4)(void))
{
  if (a3 < a1 || (v8 = (a4)(0), result = OUTLINED_FUNCTION_12(v8), a1 + *(v10 + 72) * a2 <= a3))
  {
    a4(0);
    OUTLINED_FUNCTION_39_7();

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (a3 != a1)
  {
    OUTLINED_FUNCTION_39_7();

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

char *sub_26A168C84(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[16 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_1_14(a3, result);
  }

  return result;
}

char *sub_26A168E24(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[64 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_1_14(a3, result);
  }

  return result;
}

char *sub_26A168E5C(char *__src, uint64_t a2, char *__dst)
{
  if (__dst != __src || &__src[56 * a2] <= __dst)
  {
    return memmove(__dst, __src, 56 * a2);
  }

  return __src;
}

char *sub_26A168ED4(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[8 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_1_14(a3, result);
  }

  return result;
}

uint64_t sub_26A168F7C()
{
  OUTLINED_FUNCTION_131_0();
  v2 = v1(0);
  OUTLINED_FUNCTION_12(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_175();
  v6(v5);
  return v0;
}

uint64_t sub_26A168FD0()
{
  OUTLINED_FUNCTION_131_0();
  v2 = v1(0);
  OUTLINED_FUNCTION_12(v2);
  v4 = *(v3 + 32);
  v5 = OUTLINED_FUNCTION_175();
  v6(v5);
  return v0;
}

uint64_t sub_26A169024(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_12(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_26A16907C()
{
  OUTLINED_FUNCTION_131_0();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_12(v3);
  v5 = *(v4 + 32);
  v6 = OUTLINED_FUNCTION_175();
  v7(v6);
  return v0;
}

uint64_t sub_26A1690D0(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_26A1691A8()
{
  sub_26A169258();
  if (v0 <= 0x3F)
  {
    sub_26A1692B8();
    if (v1 <= 0x3F)
    {
      sub_26A169340();
      if (v2 <= 0x3F)
      {
        type metadata accessor for ImageElement.Contact(319);
        if (v3 <= 0x3F)
        {
          swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        }
      }
    }
  }
}

void sub_26A169258()
{
  if (!qword_28036D9F8)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_28036D9F8);
    }
  }
}

void sub_26A1692B8()
{
  if (!qword_28036DA00)
  {
    sub_26A424614();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28036D9A0, &qword_26A429CE0);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_28036DA00);
    }
  }
}

void sub_26A169340()
{
  if (!qword_28036DA08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28036CBA0, &qword_26A4265B0);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_28036DA08);
    }
  }
}

void sub_26A1693B8()
{
  sub_26A169258();
  if (v0 <= 0x3F)
  {
    sub_26A169340();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

uint64_t sub_26A169534()
{
  OUTLINED_FUNCTION_85_0();
  v7 = *(v0 + 56);
  return sub_26A11AEE8(v1, v2, v3, v4, v5, *(v0 + 48), *(v0 + 49), *(v0 + 50));
}

void OUTLINED_FUNCTION_54_4()
{

  JUMPOUT(0x26D65BA70);
}

void OUTLINED_FUNCTION_55_4()
{

  JUMPOUT(0x26D65BA70);
}

uint64_t OUTLINED_FUNCTION_56_4()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_65_2()
{

  return sub_26A4249C4();
}

uint64_t OUTLINED_FUNCTION_66_0()
{
  *(v0 - 96) = 0x22286C7275;
  *(v0 - 88) = 0xE500000000000000;

  return sub_26A4245E4();
}

void OUTLINED_FUNCTION_67_2()
{

  JUMPOUT(0x26D65BA70);
}

uint64_t OUTLINED_FUNCTION_74_2()
{

  return swift_allocObject();
}

void OUTLINED_FUNCTION_85_0()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
}

uint64_t OUTLINED_FUNCTION_86_2()
{

  return sub_26A425354();
}

uint64_t OUTLINED_FUNCTION_87_2(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(v2, v1, 1, a1);
}

uint64_t OUTLINED_FUNCTION_88_2()
{
  v2 = *(v0 - 256);

  return sub_26A4249C4();
}

void OUTLINED_FUNCTION_89_0()
{

  JUMPOUT(0x26D65BA70);
}

void OUTLINED_FUNCTION_90_1()
{

  JUMPOUT(0x26D65BA70);
}

uint64_t static UpdateResponseCommand<>.playerButton(identifier:state:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *a3;
  *(a4 + 24) = &type metadata for UpdatePlayerButton;
  *(a4 + 32) = &protocol witness table for UpdatePlayerButton;
  *a4 = a1;
  *(a4 + 8) = a2;
  *(a4 + 16) = v4;
}

uint64_t sub_26A169C10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_26A424EA4();
  sub_26A16A060(v15, a1, &v17);

  sub_26A16A0C4(v15);
  if (v18)
  {
    if (swift_dynamicCast())
    {
      v5 = sub_26A4243D4();
      v6 = *(v5 + 48);
      v7 = *(v5 + 52);
      swift_allocObject();
      sub_26A4243C4();
      sub_26A16AA20();
      sub_26A4243B4();
      sub_26A0E4784(0xD00000000000001ELL, 0x800000026A447980);

      if (!v2)
      {
        v9 = v15[1];
        v10 = v16;
        *a2 = v15[0];
        *(a2 + 8) = v9;
        *(a2 + 16) = v10;
      }

      return result;
    }
  }

  else
  {
    sub_26A16A118(&v17);
  }

  if (qword_28036C5A0 != -1)
  {
    swift_once();
  }

  v11 = sub_26A424AE4();
  __swift_project_value_buffer(v11, qword_2803A8950);
  v12 = sub_26A424AD4();
  v13 = sub_26A424E04();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_26A0B8000, v12, v13, "UpdateResponseCommand modelData init failed", v14, 2u);
    MEMORY[0x26D65C950](v14, -1, -1);
  }

  sub_26A16A824();
  swift_allocError();
  return swift_willThrow();
}

uint64_t UpdateResponseCommand<>.init(_:)(uint64_t a1)
{
  sub_26A424EA4();
  sub_26A16A060(v10, a1, &v11);

  sub_26A16A0C4(v10);
  if (v12)
  {
    if (swift_dynamicCast())
    {
      v2 = sub_26A4243D4();
      v3 = *(v2 + 48);
      v4 = *(v2 + 52);
      swift_allocObject();
      sub_26A4243C4();
      sub_26A4243B4();
      sub_26A0E4784(0xD00000000000001ELL, 0x800000026A447980);
    }
  }

  else
  {
    sub_26A16A118(&v11);
  }

  if (qword_28036C5A0 != -1)
  {
    swift_once();
  }

  v6 = sub_26A424AE4();
  __swift_project_value_buffer(v6, qword_2803A8950);
  v7 = sub_26A424AD4();
  v8 = sub_26A424E04();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_26A0B8000, v7, v8, "UpdateResponseCommand modelData init failed", v9, 2u);
    MEMORY[0x26D65C950](v9, -1, -1);
  }

  sub_26A16A824();
  swift_allocError();
  return swift_willThrow();
}

double sub_26A16A060@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  if (*(a2 + 16) && (v5 = sub_26A3D53E4(a1), (v6 & 1) != 0))
  {
    v7 = *(a2 + 56) + 32 * v5;

    sub_26A0E93D4(v7, a3);
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

uint64_t sub_26A16A118(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036E620, &qword_26A42AA60);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_26A16A180@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (*(a3 + 16) && (v6 = sub_26A3D5428(a1, a2), (v7 & 1) != 0))
  {
    v8 = v6;
    v9 = *(a3 + 56);
    v10 = type metadata accessor for ComponentGroup();
    sub_26A16AA74(v9 + *(*(v10 - 8) + 72) * v8, a4);
    v11 = a4;
    v12 = 0;
    v13 = v10;
  }

  else
  {
    v13 = type metadata accessor for ComponentGroup();
    v11 = a4;
    v12 = 1;
  }

  return __swift_storeEnumTagSinglePayload(v11, v12, 1, v13);
}

void *sub_26A16A230(void *a1, void *a2, char a3)
{
  v26 = *MEMORY[0x277D85DE8];
  v7 = sub_26A424404();
  v8 = *(v7 - 1);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v24[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24[1] = a1;
  v24[2] = a2;
  v25 = a3 & 1;
  sub_26A424444();
  sub_26A0E6E84();
  sub_26A1F5544(v11);
  (*(v8 + 8))(v11, v7);
  sub_26A16A9CC();
  v12 = sub_26A424424();
  if (!v3)
  {
    v14 = v12;
    v15 = v13;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036E630, qword_26A42AA68);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_26A426410;
    *(inited + 32) = 0xD00000000000001ELL;
    *(inited + 40) = 0x800000026A447980;
    *(inited + 48) = v14;
    *(inited + 56) = v15;
    sub_26A0E45C0(v14, v15);
    sub_26A424B24();
    v17 = objc_opt_self();
    v18 = sub_26A424B04();

    v24[0] = 0;
    v19 = [v17 dataWithPropertyList:v18 format:100 options:0 error:v24];

    v20 = v24[0];
    if (v19)
    {
      v7 = sub_26A4246D4();
      sub_26A0E4784(v14, v15);

      goto LABEL_5;
    }

    v7 = v20;
    sub_26A4245B4();

    swift_willThrow();
    sub_26A0E4784(v14, v15);
  }

LABEL_5:
  v21 = *MEMORY[0x277D85DE8];
  return v7;
}

void *UpdateResponseCommand<>.serializeData()(void *a1)
{
  v19[9] = *MEMORY[0x277D85DE8];
  v3 = sub_26A424404();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26A424444();
  sub_26A0E6E84();
  sub_26A1F5544(v7);
  (*(v4 + 8))(v7, v3);
  v8 = sub_26A424424();
  if (!v1)
  {
    v10 = v8;
    v11 = v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036E630, qword_26A42AA68);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_26A426410;
    *(inited + 32) = 0xD00000000000001ELL;
    *(inited + 40) = 0x800000026A447980;
    *(inited + 48) = v10;
    *(inited + 56) = v11;
    sub_26A0E45C0(v10, v11);
    OUTLINED_FUNCTION_0_22();
    sub_26A424B24();
    v13 = objc_opt_self();
    OUTLINED_FUNCTION_0_22();
    v14 = sub_26A424B04();

    v19[0] = 0;
    v15 = [v13 dataWithPropertyList:v14 format:100 options:0 error:v19];

    v16 = v19[0];
    if (v15)
    {
      a1 = sub_26A4246D4();
      sub_26A0E4784(v10, v11);

      goto LABEL_5;
    }

    a1 = v16;
    sub_26A4245B4();

    swift_willThrow();
    sub_26A0E4784(v10, v11);
  }

LABEL_5:
  v17 = *MEMORY[0x277D85DE8];
  return a1;
}

uint64_t sub_26A16A794()
{
  sub_26A425504();
  MEMORY[0x26D65C340](0);
  return sub_26A425554();
}

unint64_t sub_26A16A824()
{
  result = qword_28036E628;
  if (!qword_28036E628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28036E628);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for UpdateResponseCommandFailure(_BYTE *result, int a2, int a3)
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

unint64_t sub_26A16A978()
{
  result = qword_28036E638;
  if (!qword_28036E638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28036E638);
  }

  return result;
}

unint64_t sub_26A16A9CC()
{
  result = qword_28036E640;
  if (!qword_28036E640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28036E640);
  }

  return result;
}

unint64_t sub_26A16AA20()
{
  result = qword_28036E648;
  if (!qword_28036E648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28036E648);
  }

  return result;
}

uint64_t sub_26A16AA74(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ComponentGroup();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26A16AB24(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C918, &unk_26A42C5A0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t _ProtoColor.hexValue.getter()
{
  v0 = OUTLINED_FUNCTION_12_2();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_7_7();
  OUTLINED_FUNCTION_17_6();
  if (v6)
  {
    sub_26A13440C();
    return OUTLINED_FUNCTION_21_9();
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    sub_26A16B104();
    return OUTLINED_FUNCTION_21_9();
  }

  OUTLINED_FUNCTION_246();
  return sub_26A16CE90();
}

uint64_t sub_26A16ACE4()
{
  v0 = type metadata accessor for _ProtoColor.HexValue(0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  sub_26A16B8F8();
  return _ProtoColor.hexValue.setter();
}

uint64_t _ProtoColor.hexValue.setter()
{
  OUTLINED_FUNCTION_14_4();
  sub_26A13440C();
  OUTLINED_FUNCTION_3_15();
  OUTLINED_FUNCTION_175();
  sub_26A16CE90();
  v0 = type metadata accessor for _ProtoColor.OneOf_Value(0);
  OUTLINED_FUNCTION_246();
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_126_0();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v0);
}

void (*_ProtoColor.hexValue.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  *v3 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C918, &unk_26A42C5A0);
  OUTLINED_FUNCTION_41(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v3[1] = v6;
  v7 = type metadata accessor for _ProtoColor.HexValue(0);
  OUTLINED_FUNCTION_12(v7);
  v9 = *(v8 + 64);
  v3[2] = __swift_coroFrameAllocStub(v9);
  v10 = __swift_coroFrameAllocStub(v9);
  v3[3] = v10;
  sub_26A10FD9C();
  v11 = type metadata accessor for _ProtoColor.OneOf_Value(0);
  v3[4] = v11;
  if (__swift_getEnumTagSinglePayload(v6, 1, v11) == 1)
  {
    sub_26A13440C();
  }

  else
  {
    OUTLINED_FUNCTION_12_2();
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      OUTLINED_FUNCTION_157();
      sub_26A16CE90();
      return sub_26A16AFBC;
    }

    sub_26A16B104();
  }

  *v10 = 0;
  v10[1] = 0xE000000000000000;
  v12 = v10 + *(v7 + 20);
  _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
  return sub_26A16AFBC;
}

void sub_26A16AFBC(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[3];
  v4 = (*a1)[4];
  v5 = (*a1)[1];
  v6 = (*a1)[2];
  v7 = **a1;
  if (a2)
  {
    v8 = (*a1)[3];
    sub_26A16B8F8();
    sub_26A13440C();
    sub_26A16CE90();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_126_0();
    __swift_storeEnumTagSinglePayload(v9, v10, v11, v4);
    sub_26A16B104();
  }

  else
  {
    v12 = **a1;
    sub_26A13440C();
    OUTLINED_FUNCTION_3_15();
    sub_26A16CE90();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_126_0();
    __swift_storeEnumTagSinglePayload(v13, v14, v15, v4);
  }

  free(v3);
  free(v6);
  free(v5);

  free(v2);
}

uint64_t sub_26A16B104()
{
  OUTLINED_FUNCTION_14_4();
  v2 = v1(0);
  OUTLINED_FUNCTION_12(v2);
  (*(v3 + 8))(v0);
  return v0;
}

uint64_t _ProtoColor.name.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_12_2();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_41(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_7_7();
  OUTLINED_FUNCTION_17_6();
  if (v9)
  {
    result = sub_26A13440C();
LABEL_7:
    v11 = 0;
    v12 = 1;
    goto LABEL_8;
  }

  result = swift_getEnumCaseMultiPayload();
  if (result != 1)
  {
    result = sub_26A16B104();
    goto LABEL_7;
  }

  v11 = *v1;
  v12 = *(v1 + 8);
LABEL_8:
  *a1 = v11;
  *(a1 + 8) = v12;
  return result;
}

uint64_t sub_26A16B240@<X0>(uint64_t a1@<X8>)
{
  result = _ProtoColor.name.getter(&v4);
  v3 = v5;
  *a1 = v4;
  *(a1 + 8) = v3;
  return result;
}

uint64_t sub_26A16B284(uint64_t a1)
{
  v1 = *(a1 + 8);
  v3 = *a1;
  v4 = v1;
  return _ProtoColor.name.setter(&v3);
}

uint64_t _ProtoColor.name.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  sub_26A13440C();
  *v1 = v2;
  *(v1 + 8) = v3;
  v4 = type metadata accessor for _ProtoColor.OneOf_Value(0);
  OUTLINED_FUNCTION_246();
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_126_0();

  return __swift_storeEnumTagSinglePayload(v5, v6, v7, v4);
}

void (*_ProtoColor.name.modify(void *a1))(uint64_t **a1)
{
  v2 = v1;
  v4 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v4;
  v4[2] = v2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C918, &unk_26A42C5A0);
  OUTLINED_FUNCTION_41(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v4[3] = v7;
  sub_26A10FD9C();
  v8 = type metadata accessor for _ProtoColor.OneOf_Value(0);
  v4[4] = v8;
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    sub_26A13440C();
LABEL_6:
    v9 = 0;
    v10 = 1;
    goto LABEL_7;
  }

  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_26A16B104();
    goto LABEL_6;
  }

  v9 = *v7;
  v10 = v7[8];
LABEL_7:
  *v4 = v9;
  *(v4 + 8) = v10;
  return sub_26A16B48C;
}

void sub_26A16B48C(uint64_t **a1)
{
  v1 = *a1;
  v3 = (*a1)[3];
  v2 = (*a1)[4];
  v4 = (*a1)[2];
  v5 = **a1;
  v6 = *(*a1 + 8);
  sub_26A13440C();
  *v4 = v5;
  *(v4 + 8) = v6;
  OUTLINED_FUNCTION_157();
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_126_0();
  __swift_storeEnumTagSinglePayload(v7, v8, v9, v2);
  free(v3);

  free(v1);
}

uint64_t (*_ProtoColor.unknownFields.modify())()
{
  OUTLINED_FUNCTION_14_4();
  v0 = *(type metadata accessor for _ProtoColor(0) + 20);
  return nullsub_1;
}

BOOL static _ProtoColor.OneOf_Value.== infix(_:_:)()
{
  v1 = type metadata accessor for _ProtoColor.HexValue(0);
  v2 = OUTLINED_FUNCTION_12(v1);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_10_14();
  v5 = type metadata accessor for _ProtoColor.OneOf_Value(0);
  v6 = OUTLINED_FUNCTION_12(v5);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = (&v26 - v12);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036E6B0, &qword_26A42AB70);
  OUTLINED_FUNCTION_41(v14);
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_39();
  v18 = MEMORY[0x28223BE20](v17);
  v20 = &v26 + *(v18 + 56) - v19;
  sub_26A16B8F8();
  sub_26A16B8F8();
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_26A16B8F8();
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_26A16CE90();
      v23 = *v13 == *v0 && v13[1] == v0[1];
      if (v23 || (sub_26A425354() & 1) != 0)
      {
        v24 = *(v1 + 20);
        sub_26A424794();
        OUTLINED_FUNCTION_1_15();
        sub_26A16CF2C();
        if (sub_26A424B64())
        {
          sub_26A16B104();
          OUTLINED_FUNCTION_157();
          sub_26A16B104();
          OUTLINED_FUNCTION_0_23();
          sub_26A16B104();
          return 1;
        }
      }

      sub_26A16B104();
      OUTLINED_FUNCTION_157();
      sub_26A16B104();
      OUTLINED_FUNCTION_0_23();
      sub_26A16B104();
      return 0;
    }

    sub_26A16B104();
LABEL_6:
    sub_26A13440C();
    return 0;
  }

  sub_26A16B8F8();
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    goto LABEL_6;
  }

  v21 = v20[8];
  v22 = sub_26A257DA8(*v11, v11[8], *v20);
  OUTLINED_FUNCTION_0_23();
  sub_26A16B104();
  return v22;
}

uint64_t sub_26A16B8F8()
{
  OUTLINED_FUNCTION_131_0();
  v2 = v1(0);
  OUTLINED_FUNCTION_12(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_175();
  v6(v5);
  return v0;
}

uint64_t static _ProtoColor.HexValue.== infix(_:_:)(void *a1, void *a2)
{
  v2 = *a1 == *a2 && a1[1] == a2[1];
  if (!v2 && (sub_26A425354() & 1) == 0)
  {
    return 0;
  }

  v3 = *(type metadata accessor for _ProtoColor.HexValue(0) + 20);
  sub_26A424794();
  OUTLINED_FUNCTION_1_15();
  sub_26A16CF2C();
  return OUTLINED_FUNCTION_14_7() & 1;
}

unint64_t _ProtoColor.Name.init(rawValue:)@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = result < 0x13;
  *(a2 + 9) = 0;
  return result;
}

uint64_t sub_26A16BA30@<X0>(uint64_t *a1@<X8>)
{
  result = _ProtoColor.Name.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_26A16BA64(uint64_t a1, uint64_t a2)
{
  v4 = sub_26A16E290();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t _ProtoColor.HexValue.rgba.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return OUTLINED_FUNCTION_175();
}

uint64_t _ProtoColor.HexValue.rgba.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t sub_26A16BB58@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 20);
  v5 = sub_26A424794();
  v6 = OUTLINED_FUNCTION_12(v5);
  v8 = *(v7 + 16);

  return v8(a2, v2 + v4, v6);
}

uint64_t sub_26A16BBEC(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 20);
  v5 = sub_26A424794();
  OUTLINED_FUNCTION_12(v5);
  v7 = *(v6 + 40);

  return v7(v2 + v4, a1);
}

uint64_t (*_ProtoColor.HexValue.unknownFields.modify())()
{
  OUTLINED_FUNCTION_14_4();
  v0 = *(type metadata accessor for _ProtoColor.HexValue(0) + 20);
  return nullsub_1;
}

uint64_t _ProtoColor.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for _ProtoColor.OneOf_Value(0);
  __swift_storeEnumTagSinglePayload(a1, 1, 1, v2);
  v3 = a1 + *(type metadata accessor for _ProtoColor(0) + 20);
  return _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
}

uint64_t static _ProtoColor.Name.allCases.setter(void *a1)
{
  swift_beginAccess();
  off_28036E650 = a1;
}

uint64_t (*static _ProtoColor.Name.allCases.modify())()
{
  OUTLINED_FUNCTION_14_4();
  OUTLINED_FUNCTION_246();
  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_26A16BDE0@<X0>(uint64_t *a1@<X8>)
{
  result = static _ProtoColor.Name.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_26A16BE2C()
{
  v0 = sub_26A424AC4();
  __swift_allocate_value_buffer(v0, qword_28036E658);
  __swift_project_value_buffer(v0, qword_28036E658);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C938, &qword_26A42DDA0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C940, &unk_26A425EE0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_26A425EF0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "hex_value";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21888];
  v8 = sub_26A424A94();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "name";
  *(v10 + 1) = 4;
  v10[16] = 2;
  v11 = *MEMORY[0x277D21870];
  v9();
  return sub_26A424AA4();
}

uint64_t _ProtoColor.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_15_10();
  while (1)
  {
    result = sub_26A424834();
    if (v0 || (v4 & 1) != 0)
    {
      break;
    }

    if (result == 2)
    {
      v7 = OUTLINED_FUNCTION_246();
      sub_26A16C598(v7, v8);
    }

    else if (result == 1)
    {
      v5 = OUTLINED_FUNCTION_175();
      sub_26A16C0A0(v5, v6, v2, v1);
    }
  }

  return result;
}

uint64_t sub_26A16C0A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v33 = a3;
  v34 = a4;
  v35 = a2;
  v5 = type metadata accessor for _ProtoColor.HexValue(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v31 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C918, &unk_26A42C5A0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v27 - v11;
  v13 = type metadata accessor for _ProtoColor.OneOf_Value(0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  MEMORY[0x28223BE20](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036E720, &qword_26A42B068);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v19 = &v27 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v22 = &v27 - v21;
  __swift_storeEnumTagSinglePayload(&v27 - v21, 1, 1, v5);
  v28 = a1;
  sub_26A10FD9C();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  v30 = v13;
  if (EnumTagSinglePayload == 1)
  {
    sub_26A13440C();
  }

  else
  {
    sub_26A16CE90();
    sub_26A16CE90();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_26A16B104();
    }

    else
    {
      sub_26A13440C();
      sub_26A16CE90();
      sub_26A16CE90();
      __swift_storeEnumTagSinglePayload(v22, 0, 1, v5);
    }
  }

  sub_26A16CF2C();
  v23 = v32;
  sub_26A424944();
  if (v23)
  {
    return sub_26A13440C();
  }

  sub_26A10FD9C();
  if (__swift_getEnumTagSinglePayload(v19, 1, v5) == 1)
  {
    sub_26A13440C();
    return sub_26A13440C();
  }

  sub_26A16CE90();
  if (EnumTagSinglePayload != 1)
  {
    sub_26A424844();
  }

  v25 = v30;
  sub_26A13440C();
  v26 = v28;
  sub_26A13440C();
  sub_26A16CE90();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v26, 0, 1, v25);
}

uint64_t sub_26A16C598(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C918, &unk_26A42C5A0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v11 - v6;
  v13 = 0;
  v14 = 256;
  sub_26A16E290();
  result = sub_26A424884();
  if (!v2 && (v14 & 0x100) == 0)
  {
    v15 = v13;
    v12 = v14;
    sub_26A10FD9C();
    v9 = type metadata accessor for _ProtoColor.OneOf_Value(0);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v7, 1, v9);
    sub_26A13440C();
    if (EnumTagSinglePayload != 1)
    {
      sub_26A424844();
    }

    sub_26A13440C();
    *a2 = v15;
    *(a2 + 8) = v12 & 1;
    swift_storeEnumTagMultiPayload();
    return __swift_storeEnumTagSinglePayload(a2, 0, 1, v9);
  }

  return result;
}

uint64_t _ProtoColor.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_15_10();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C918, &unk_26A42C5A0);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v7 = &v15 - v6;
  sub_26A10FD9C();
  v8 = type metadata accessor for _ProtoColor.OneOf_Value(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    goto LABEL_2;
  }

  if (swift_getEnumCaseMultiPayload() == 1)
  {
    OUTLINED_FUNCTION_13_10();
    result = sub_26A16CAA4();
    if (!v1)
    {
LABEL_2:
      v9 = v0 + *(type metadata accessor for _ProtoColor(0) + 20);
      return sub_26A424774();
    }
  }

  else
  {
    v11 = OUTLINED_FUNCTION_13_10();
    sub_26A16C890(v11, v12, v13, v14);
    OUTLINED_FUNCTION_0_23();
    result = sub_26A16B104();
    if (!v1)
    {
      goto LABEL_2;
    }
  }

  return result;
}

uint64_t sub_26A16C890(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C918, &unk_26A42C5A0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for _ProtoColor.HexValue(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  sub_26A10FD9C();
  v10 = type metadata accessor for _ProtoColor.OneOf_Value(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_26A13440C();
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_26A16CE90();
      sub_26A16CF2C();
      sub_26A424A84();
      return sub_26A16B104();
    }

    result = sub_26A16B104();
  }

  __break(1u);
  return result;
}

uint64_t sub_26A16CAA4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C918, &unk_26A42C5A0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v7 - v2;
  sub_26A10FD9C();
  v4 = type metadata accessor for _ProtoColor.OneOf_Value(0);
  if (__swift_getEnumTagSinglePayload(v3, 1, v4) == 1)
  {
    result = sub_26A13440C();
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v5 = v3[8];
      v7 = *v3;
      v8 = v5;
      sub_26A16E290();
      return sub_26A4249F4();
    }

    result = sub_26A16B104();
  }

  __break(1u);
  return result;
}

uint64_t static _ProtoColor.== infix(_:_:)()
{
  v0 = type metadata accessor for _ProtoColor.OneOf_Value(0);
  v1 = OUTLINED_FUNCTION_12(v0);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_10_14();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C918, &unk_26A42C5A0);
  OUTLINED_FUNCTION_41(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C920, &unk_26A425ED0);
  OUTLINED_FUNCTION_41(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_39();
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v21 - v13;
  v15 = *(v12 + 56);
  sub_26A10FD9C();
  sub_26A10FD9C();
  OUTLINED_FUNCTION_28(v14);
  if (v16)
  {
    OUTLINED_FUNCTION_28(&v14[v15]);
    if (v16)
    {
      sub_26A13440C();
LABEL_12:
      v19 = *(type metadata accessor for _ProtoColor(0) + 20);
      sub_26A424794();
      OUTLINED_FUNCTION_1_15();
      sub_26A16CF2C();
      v17 = OUTLINED_FUNCTION_14_7();
      return v17 & 1;
    }

    goto LABEL_9;
  }

  OUTLINED_FUNCTION_12_2();
  sub_26A10FD9C();
  OUTLINED_FUNCTION_28(&v14[v15]);
  if (v16)
  {
    sub_26A16B104();
LABEL_9:
    sub_26A13440C();
    goto LABEL_10;
  }

  sub_26A16CE90();
  v18 = static _ProtoColor.OneOf_Value.== infix(_:_:)();
  sub_26A16B104();
  sub_26A16B104();
  sub_26A13440C();
  if (v18)
  {
    goto LABEL_12;
  }

LABEL_10:
  v17 = 0;
  return v17 & 1;
}

uint64_t sub_26A16CE90()
{
  OUTLINED_FUNCTION_131_0();
  v2 = v1(0);
  OUTLINED_FUNCTION_12(v2);
  v4 = *(v3 + 32);
  v5 = OUTLINED_FUNCTION_175();
  v6(v5);
  return v0;
}

unint64_t sub_26A16CF2C()
{
  OUTLINED_FUNCTION_14_4();
  result = *v2;
  if (!result)
  {
    v1(255);
    result = swift_getWitnessTable();
    atomic_store(result, v0);
  }

  return result;
}

uint64_t sub_26A16CFD0(uint64_t a1, uint64_t a2)
{
  v4 = sub_26A16CF2C();

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_26A16D050(uint64_t a1)
{
  v2 = sub_26A16CF2C();

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_26A16D0C0()
{
  sub_26A16CF2C();

  return sub_26A4249B4();
}

uint64_t sub_26A16D140()
{
  v0 = sub_26A424AC4();
  __swift_allocate_value_buffer(v0, qword_28036E670);
  __swift_project_value_buffer(v0, qword_28036E670);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C938, &qword_26A42DDA0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C940, &unk_26A425EE0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v44 = swift_allocObject();
  *(v44 + 16) = xmmword_26A42AB60;
  v4 = v44 + v3 + v1[14];
  *(v44 + v3) = 0;
  *v4 = "DEFAULT";
  *(v4 + 8) = 7;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x277D21870];
  v6 = sub_26A424A94();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v44 + v3 + v2 + v1[14];
  *(v44 + v3 + v2) = 1;
  *v8 = "CLEAR";
  *(v8 + 8) = 5;
  *(v8 + 16) = 2;
  v7();
  v9 = (v44 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 2;
  *v10 = "BLACK";
  *(v10 + 1) = 5;
  v10[16] = 2;
  v7();
  v11 = (v44 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "WHITE";
  *(v12 + 1) = 5;
  v12[16] = 2;
  v7();
  v13 = (v44 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "GRAY";
  *(v14 + 1) = 4;
  v14[16] = 2;
  v7();
  v15 = (v44 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "RED";
  *(v16 + 1) = 3;
  v16[16] = 2;
  v7();
  v17 = (v44 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "GREEN";
  *(v18 + 1) = 5;
  v18[16] = 2;
  v7();
  v19 = (v44 + v3 + 7 * v2);
  v20 = v19 + v1[14];
  *v19 = 7;
  *v20 = "BLUE";
  *(v20 + 1) = 4;
  v20[16] = 2;
  v7();
  v21 = (v44 + v3 + 8 * v2);
  v22 = v21 + v1[14];
  *v21 = 8;
  *v22 = "ORANGE";
  *(v22 + 1) = 6;
  v22[16] = 2;
  v7();
  v23 = (v44 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 9;
  *v24 = "YELLOW";
  *(v24 + 1) = 6;
  v24[16] = 2;
  v7();
  v25 = (v44 + v3 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 10;
  *v26 = "PINK";
  *(v26 + 1) = 4;
  v26[16] = 2;
  v7();
  v27 = (v44 + v3 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 11;
  *v28 = "PURPLE";
  *(v28 + 1) = 6;
  v28[16] = 2;
  v7();
  v29 = (v44 + v3 + 12 * v2);
  v30 = v29 + v1[14];
  *v29 = 12;
  *v30 = "PRIMARY";
  *(v30 + 1) = 7;
  v30[16] = 2;
  v7();
  v31 = (v44 + v3 + 13 * v2);
  v32 = v31 + v1[14];
  *v31 = 13;
  *v32 = "SECONDARY";
  *(v32 + 1) = 9;
  v32[16] = 2;
  v7();
  v33 = (v44 + v3 + 14 * v2);
  v34 = v33 + v1[14];
  *v33 = 14;
  *v34 = "BROWN";
  *(v34 + 1) = 5;
  v34[16] = 2;
  v7();
  v35 = (v44 + v3 + 15 * v2);
  v36 = v35 + v1[14];
  *v35 = 15;
  *v36 = "CYAN";
  *(v36 + 1) = 4;
  v36[16] = 2;
  v7();
  v37 = (v44 + v3 + 16 * v2);
  v38 = v37 + v1[14];
  *v37 = 16;
  *v38 = "INDIGO";
  *(v38 + 1) = 6;
  v38[16] = 2;
  v7();
  v39 = (v44 + v3 + 17 * v2);
  v40 = v39 + v1[14];
  *v39 = 17;
  *v40 = "MINT";
  *(v40 + 1) = 4;
  v40[16] = 2;
  v7();
  v41 = (v44 + v3 + 18 * v2);
  v42 = v41 + v1[14];
  *v41 = 18;
  *v42 = "TEAL";
  *(v42 + 1) = 4;
  v42[16] = 2;
  v7();
  return sub_26A424AA4();
}

uint64_t sub_26A16D728()
{
  result = MEMORY[0x26D65BA70](0x756C61567865482ELL, 0xE900000000000065);
  qword_28036E688 = 0x5574657070696E53;
  unk_28036E690 = 0xEF726F6C6F432E49;
  return result;
}

uint64_t static _ProtoColor.HexValue.protoMessageName.getter()
{
  if (qword_28036C068 != -1)
  {
    swift_once();
  }

  return OUTLINED_FUNCTION_175();
}

uint64_t sub_26A16D804()
{
  v0 = sub_26A424AC4();
  __swift_allocate_value_buffer(v0, qword_28036E698);
  __swift_project_value_buffer(v0, qword_28036E698);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C938, &qword_26A42DDA0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C940, &unk_26A425EE0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_26A426410;
  v5 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v5 = "rgba";
  *(v5 + 8) = 4;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21870];
  v7 = sub_26A424A94();
  (*(*(v7 - 8) + 104))(v5, v6, v7);
  return sub_26A424AA4();
}

uint64_t _ProtoColor.HexValue.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_15_10();
  while (1)
  {
    result = sub_26A424834();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_26A424924();
    }
  }

  return result;
}

uint64_t _ProtoColor.HexValue.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_15_10();
  v2 = *v0;
  v3 = v0[1];
  v4 = HIBYTE(v3) & 0xF;
  if ((v3 & 0x2000000000000000) == 0)
  {
    v4 = *v0 & 0xFFFFFFFFFFFFLL;
  }

  if (!v4 || (result = sub_26A424A64(), !v1))
  {
    v6 = v0 + *(type metadata accessor for _ProtoColor.HexValue(0) + 20);
    return sub_26A424774();
  }

  return result;
}

uint64_t sub_26A16DADC(void (*a1)(void))
{
  sub_26A425504();
  a1(0);
  sub_26A16CF2C();
  sub_26A424B44();
  return sub_26A425554();
}

unint64_t sub_26A16DB6C()
{
  result = qword_28036E6C0;
  if (!qword_28036E6C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28036E6C0);
  }

  return result;
}

unint64_t sub_26A16DBC4()
{
  result = qword_28036E6C8;
  if (!qword_28036E6C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28036E6C8);
  }

  return result;
}

unint64_t sub_26A16DC1C()
{
  result = qword_28036E6D0;
  if (!qword_28036E6D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28036E6D8, &qword_26A42AC88);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28036E6D0);
  }

  return result;
}

uint64_t sub_26A16DE28(uint64_t a1, uint64_t a2)
{
  v4 = sub_26A16CF2C();

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_26A16DF38(uint64_t a1)
{
  v2 = sub_26A16CF2C();

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_26A16DFF0()
{
  sub_26A16CF2C();

  return sub_26A4249B4();
}

void sub_26A16E098()
{
  sub_26A16E11C();
  if (v0 <= 0x3F)
  {
    sub_26A424794();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_26A16E11C()
{
  if (!qword_28157B700)
  {
    type metadata accessor for _ProtoColor.OneOf_Value(255);
    v0 = sub_26A424E44();
    if (!v1)
    {
      atomic_store(v0, &qword_28157B700);
    }
  }
}

uint64_t sub_26A16E174()
{
  result = type metadata accessor for _ProtoColor.HexValue(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_26A16E214()
{
  result = sub_26A424794();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_26A16E290()
{
  result = qword_28036E718;
  if (!qword_28036E718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28036E718);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_7_7()
{

  return sub_26A10FD9C();
}

uint64_t OUTLINED_FUNCTION_14_7()
{

  return sub_26A424B64();
}

uint64_t OUTLINED_FUNCTION_21_9()
{
  *v0 = 0;
  v0[1] = 0xE000000000000000;
  v1 = v0 + *(type metadata accessor for _ProtoColor.HexValue(0) + 20);

  return _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
}

uint64_t _ProtoSummaryItem_Player.player.getter()
{
  v1 = *(v0 + *(type metadata accessor for _ProtoSummaryItem_Player(0) + 20));
  OUTLINED_FUNCTION_142();
  v2 = *(v1 + 16);
}

uint64_t _ProtoSummaryItem_Player.text1.getter()
{
  OUTLINED_FUNCTION_19_0();
  v1 = OUTLINED_FUNCTION_115();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_41(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v6);
  v7 = OUTLINED_FUNCTION_4_3();
  OUTLINED_FUNCTION_79_4(v7);
  OUTLINED_FUNCTION_24_2();
  OUTLINED_FUNCTION_58_6();
  v8 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_7_8(v8);
  if (!v9)
  {
    return OUTLINED_FUNCTION_192_0();
  }

  OUTLINED_FUNCTION_23_2(MEMORY[0x277D84F90]);
  v10 = OUTLINED_FUNCTION_191_0();
  result = OUTLINED_FUNCTION_1_16(v10);
  if (!v9)
  {
    return sub_26A0E48F0(v0, &qword_28036C7B8, &unk_26A425BF0);
  }

  return result;
}

uint64_t _ProtoSummaryItem_Player.hasText2.getter()
{
  OUTLINED_FUNCTION_19_0();
  v0 = OUTLINED_FUNCTION_133();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_79_4(v6);
  OUTLINED_FUNCTION_53_5();
  OUTLINED_FUNCTION_52_5();
  v7 = type metadata accessor for _ProtoMultilineTextProperty(0);
  OUTLINED_FUNCTION_9_11(v7);
  return OUTLINED_FUNCTION_109_1();
}

uint64_t _ProtoSummaryItem_Player.text2.getter()
{
  OUTLINED_FUNCTION_19_0();
  v1 = OUTLINED_FUNCTION_115();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_41(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v6);
  v7 = OUTLINED_FUNCTION_4_3();
  OUTLINED_FUNCTION_79_4(v7);
  OUTLINED_FUNCTION_24_2();
  OUTLINED_FUNCTION_58_6();
  v8 = type metadata accessor for _ProtoMultilineTextProperty(0);
  OUTLINED_FUNCTION_7_8(v8);
  if (!v9)
  {
    return OUTLINED_FUNCTION_192_0();
  }

  OUTLINED_FUNCTION_23_2(MEMORY[0x277D84F90]);
  v10 = OUTLINED_FUNCTION_191_0();
  result = OUTLINED_FUNCTION_1_16(v10);
  if (!v9)
  {
    return sub_26A0E48F0(v0, &qword_28036CAE0, &unk_26A4273F0);
  }

  return result;
}

uint64_t _ProtoSummaryItem_Player.hasText3.getter()
{
  OUTLINED_FUNCTION_19_0();
  v0 = OUTLINED_FUNCTION_133();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_79_4(v6);
  OUTLINED_FUNCTION_53_5();
  OUTLINED_FUNCTION_52_5();
  v7 = type metadata accessor for _ProtoMultilineTextProperty(0);
  OUTLINED_FUNCTION_9_11(v7);
  return OUTLINED_FUNCTION_109_1();
}

uint64_t _ProtoSummaryItem_Player.text3.getter()
{
  OUTLINED_FUNCTION_19_0();
  v1 = OUTLINED_FUNCTION_115();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_41(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v6);
  v7 = OUTLINED_FUNCTION_4_3();
  OUTLINED_FUNCTION_79_4(v7);
  OUTLINED_FUNCTION_24_2();
  OUTLINED_FUNCTION_58_6();
  v8 = type metadata accessor for _ProtoMultilineTextProperty(0);
  OUTLINED_FUNCTION_7_8(v8);
  if (!v9)
  {
    return OUTLINED_FUNCTION_192_0();
  }

  OUTLINED_FUNCTION_23_2(MEMORY[0x277D84F90]);
  v10 = OUTLINED_FUNCTION_191_0();
  result = OUTLINED_FUNCTION_1_16(v10);
  if (!v9)
  {
    return sub_26A0E48F0(v0, &qword_28036CAE0, &unk_26A4273F0);
  }

  return result;
}

uint64_t _ProtoSummaryItem_Player.hasText4.getter()
{
  OUTLINED_FUNCTION_19_0();
  v0 = OUTLINED_FUNCTION_133();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_79_4(v6);
  OUTLINED_FUNCTION_53_5();
  OUTLINED_FUNCTION_52_5();
  v7 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_9_11(v7);
  return OUTLINED_FUNCTION_109_1();
}

uint64_t _ProtoSummaryItem_Player.text4.getter()
{
  OUTLINED_FUNCTION_19_0();
  v1 = OUTLINED_FUNCTION_115();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_41(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v6);
  v7 = OUTLINED_FUNCTION_4_3();
  OUTLINED_FUNCTION_79_4(v7);
  OUTLINED_FUNCTION_24_2();
  OUTLINED_FUNCTION_58_6();
  v8 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_7_8(v8);
  if (!v9)
  {
    return OUTLINED_FUNCTION_192_0();
  }

  OUTLINED_FUNCTION_23_2(MEMORY[0x277D84F90]);
  v10 = OUTLINED_FUNCTION_191_0();
  result = OUTLINED_FUNCTION_1_16(v10);
  if (!v9)
  {
    return sub_26A0E48F0(v0, &qword_28036C7B8, &unk_26A425BF0);
  }

  return result;
}

uint64_t _ProtoSummaryItem_Player.hasThumbnail.getter()
{
  OUTLINED_FUNCTION_19_0();
  v0 = OUTLINED_FUNCTION_133();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_79_4(v6);
  OUTLINED_FUNCTION_53_5();
  OUTLINED_FUNCTION_52_5();
  v7 = type metadata accessor for _ProtoVisualProperty();
  OUTLINED_FUNCTION_9_11(v7);
  return OUTLINED_FUNCTION_109_1();
}

uint64_t _ProtoSummaryItem_Player.thumbnail.getter()
{
  OUTLINED_FUNCTION_19_0();
  v1 = OUTLINED_FUNCTION_115();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_41(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v6);
  v7 = OUTLINED_FUNCTION_4_3();
  OUTLINED_FUNCTION_79_4(v7);
  OUTLINED_FUNCTION_24_2();
  OUTLINED_FUNCTION_58_6();
  v8 = type metadata accessor for _ProtoVisualProperty();
  OUTLINED_FUNCTION_7_8(v8);
  if (!v9)
  {
    return OUTLINED_FUNCTION_192_0();
  }

  OUTLINED_FUNCTION_23_2(MEMORY[0x277D84F90]);
  v10 = OUTLINED_FUNCTION_191_0();
  result = OUTLINED_FUNCTION_1_16(v10);
  if (!v9)
  {
    return sub_26A0E48F0(v0, &qword_28036CAE8, &unk_26A426430);
  }

  return result;
}

uint64_t _ProtoSummaryItem_Player.hasAction.getter()
{
  OUTLINED_FUNCTION_19_0();
  v0 = OUTLINED_FUNCTION_133();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_79_4(v6);
  OUTLINED_FUNCTION_53_5();
  OUTLINED_FUNCTION_52_5();
  v7 = type metadata accessor for _ProtoActionProperty();
  OUTLINED_FUNCTION_9_11(v7);
  return OUTLINED_FUNCTION_109_1();
}

uint64_t sub_26A16EC38(uint64_t (*a1)(void), void *a2)
{
  v3 = (*(v2 + *(a1(0) + 20)) + *a2);
  OUTLINED_FUNCTION_142();
  v5 = *v3;
  v4 = v3[1];

  return OUTLINED_FUNCTION_246();
}

uint64_t _ProtoSummaryItem_Player.player.setter()
{
  v3 = OUTLINED_FUNCTION_110();
  v4 = type metadata accessor for _ProtoSummaryItem_Player(v3);
  v5 = OUTLINED_FUNCTION_187_1(v4);
  v6 = *(v1 + v2);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_90_2();
    OUTLINED_FUNCTION_5_3();
    sub_26A1B7690();
    OUTLINED_FUNCTION_52_3(v7);
  }

  OUTLINED_FUNCTION_26_10();
  v8 = *(v6 + 16);
  *(v6 + 16) = v0;
}

uint64_t _ProtoSummaryItem_Player.text1.setter()
{
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_107_1();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_4_3();
  v7 = type metadata accessor for _ProtoSummaryItem_Player(v6);
  v8 = OUTLINED_FUNCTION_188_1(v7);
  v9 = *(v0 + v1);
  if ((v8 & 1) == 0)
  {
    OUTLINED_FUNCTION_90_2();
    OUTLINED_FUNCTION_5_3();
    sub_26A1B7690();
    OUTLINED_FUNCTION_42_1(v10);
  }

  OUTLINED_FUNCTION_189_1();
  v11 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_50_4(v11);
  OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_185_1();
  return swift_endAccess();
}

uint64_t _ProtoSummaryItem_Player.text2.setter()
{
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_107_1();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE0, &unk_26A4273F0);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_4_3();
  v7 = type metadata accessor for _ProtoSummaryItem_Player(v6);
  v8 = OUTLINED_FUNCTION_188_1(v7);
  v9 = *(v0 + v1);
  if ((v8 & 1) == 0)
  {
    OUTLINED_FUNCTION_90_2();
    OUTLINED_FUNCTION_5_3();
    sub_26A1B7690();
    OUTLINED_FUNCTION_42_1(v10);
  }

  OUTLINED_FUNCTION_189_1();
  v11 = type metadata accessor for _ProtoMultilineTextProperty(0);
  OUTLINED_FUNCTION_50_4(v11);
  OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_185_1();
  return swift_endAccess();
}

uint64_t _ProtoSummaryItem_Player.text3.setter()
{
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_107_1();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE0, &unk_26A4273F0);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_4_3();
  v7 = type metadata accessor for _ProtoSummaryItem_Player(v6);
  v8 = OUTLINED_FUNCTION_188_1(v7);
  v9 = *(v0 + v1);
  if ((v8 & 1) == 0)
  {
    OUTLINED_FUNCTION_90_2();
    OUTLINED_FUNCTION_5_3();
    sub_26A1B7690();
    OUTLINED_FUNCTION_42_1(v10);
  }

  OUTLINED_FUNCTION_189_1();
  v11 = type metadata accessor for _ProtoMultilineTextProperty(0);
  OUTLINED_FUNCTION_50_4(v11);
  OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_185_1();
  return swift_endAccess();
}

uint64_t _ProtoSummaryItem_Player.text4.setter()
{
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_107_1();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_4_3();
  v7 = type metadata accessor for _ProtoSummaryItem_Player(v6);
  v8 = OUTLINED_FUNCTION_188_1(v7);
  v9 = *(v0 + v1);
  if ((v8 & 1) == 0)
  {
    OUTLINED_FUNCTION_90_2();
    OUTLINED_FUNCTION_5_3();
    sub_26A1B7690();
    OUTLINED_FUNCTION_42_1(v10);
  }

  OUTLINED_FUNCTION_189_1();
  v11 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_50_4(v11);
  OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_185_1();
  return swift_endAccess();
}

uint64_t _ProtoSummaryItem_Player.thumbnail.setter()
{
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_107_1();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE8, &unk_26A426430);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_4_3();
  v7 = type metadata accessor for _ProtoSummaryItem_Player(v6);
  v8 = OUTLINED_FUNCTION_188_1(v7);
  v9 = *(v0 + v1);
  if ((v8 & 1) == 0)
  {
    OUTLINED_FUNCTION_90_2();
    OUTLINED_FUNCTION_5_3();
    sub_26A1B7690();
    OUTLINED_FUNCTION_42_1(v10);
  }

  OUTLINED_FUNCTION_189_1();
  v11 = type metadata accessor for _ProtoVisualProperty();
  OUTLINED_FUNCTION_50_4(v11);
  OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_185_1();
  return swift_endAccess();
}

uint64_t _ProtoSummaryItem_Player.action.setter()
{
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_107_1();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_4_3();
  v7 = type metadata accessor for _ProtoSummaryItem_Player(v6);
  v8 = OUTLINED_FUNCTION_188_1(v7);
  v9 = *(v0 + v1);
  if ((v8 & 1) == 0)
  {
    OUTLINED_FUNCTION_90_2();
    OUTLINED_FUNCTION_5_3();
    sub_26A1B7690();
    OUTLINED_FUNCTION_42_1(v10);
  }

  OUTLINED_FUNCTION_189_1();
  v11 = type metadata accessor for _ProtoActionProperty();
  OUTLINED_FUNCTION_50_4(v11);
  OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_185_1();
  return swift_endAccess();
}

uint64_t sub_26A16F2E0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t (*a5)(uint64_t), void *a6)
{
  v10 = v6;
  v13 = *(a3(0) + 20);
  v14 = *(v6 + v13);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *(v6 + v13);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v17 = a4(0);
    OUTLINED_FUNCTION_100_0(v17);
    swift_allocObject();
    v18 = OUTLINED_FUNCTION_5_3();
    v16 = a5(v18);
    *(v10 + v13) = v16;
  }

  v19 = (v16 + *a6);
  OUTLINED_FUNCTION_26_10();
  v20 = v19[1];
  *v19 = a1;
  v19[1] = a2;
}

uint64_t _ProtoSummaryItem_Player.hasText1.getter()
{
  OUTLINED_FUNCTION_19_0();
  v0 = OUTLINED_FUNCTION_133();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_79_4(v6);
  OUTLINED_FUNCTION_53_5();
  OUTLINED_FUNCTION_52_5();
  v7 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_9_11(v7);
  return OUTLINED_FUNCTION_109_1();
}

uint64_t _ProtoSummaryItem_Switch.text1.getter()
{
  OUTLINED_FUNCTION_19_0();
  v1 = OUTLINED_FUNCTION_115();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_41(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v6);
  v7 = OUTLINED_FUNCTION_4_3();
  OUTLINED_FUNCTION_72_2(v7);
  OUTLINED_FUNCTION_24_2();
  OUTLINED_FUNCTION_58_6();
  v8 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_7_8(v8);
  if (!v9)
  {
    return OUTLINED_FUNCTION_192_0();
  }

  OUTLINED_FUNCTION_23_2(MEMORY[0x277D84F90]);
  v10 = OUTLINED_FUNCTION_191_0();
  result = OUTLINED_FUNCTION_1_16(v10);
  if (!v9)
  {
    return sub_26A0E48F0(v0, &qword_28036C7B8, &unk_26A425BF0);
  }

  return result;
}

uint64_t _ProtoSummaryItem_Switch.hasText2.getter()
{
  OUTLINED_FUNCTION_19_0();
  v0 = OUTLINED_FUNCTION_133();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_72_2(v6);
  OUTLINED_FUNCTION_53_5();
  OUTLINED_FUNCTION_52_5();
  v7 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_9_11(v7);
  return OUTLINED_FUNCTION_109_1();
}

uint64_t _ProtoSummaryItem_Switch.text2.getter()
{
  OUTLINED_FUNCTION_19_0();
  v1 = OUTLINED_FUNCTION_115();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_41(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v6);
  v7 = OUTLINED_FUNCTION_4_3();
  OUTLINED_FUNCTION_72_2(v7);
  OUTLINED_FUNCTION_24_2();
  OUTLINED_FUNCTION_58_6();
  v8 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_7_8(v8);
  if (!v9)
  {
    return OUTLINED_FUNCTION_192_0();
  }

  OUTLINED_FUNCTION_23_2(MEMORY[0x277D84F90]);
  v10 = OUTLINED_FUNCTION_191_0();
  result = OUTLINED_FUNCTION_1_16(v10);
  if (!v9)
  {
    return sub_26A0E48F0(v0, &qword_28036C7B8, &unk_26A425BF0);
  }

  return result;
}

uint64_t _ProtoSummaryItem_Switch.hasText3.getter()
{
  OUTLINED_FUNCTION_19_0();
  v0 = OUTLINED_FUNCTION_133();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_72_2(v6);
  OUTLINED_FUNCTION_53_5();
  OUTLINED_FUNCTION_52_5();
  v7 = type metadata accessor for _ProtoMultilineTextProperty(0);
  OUTLINED_FUNCTION_9_11(v7);
  return OUTLINED_FUNCTION_109_1();
}

uint64_t _ProtoSummaryItem_Switch.text3.getter()
{
  OUTLINED_FUNCTION_19_0();
  v1 = OUTLINED_FUNCTION_115();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_41(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v6);
  v7 = OUTLINED_FUNCTION_4_3();
  OUTLINED_FUNCTION_72_2(v7);
  OUTLINED_FUNCTION_24_2();
  OUTLINED_FUNCTION_58_6();
  v8 = type metadata accessor for _ProtoMultilineTextProperty(0);
  OUTLINED_FUNCTION_7_8(v8);
  if (!v9)
  {
    return OUTLINED_FUNCTION_192_0();
  }

  OUTLINED_FUNCTION_23_2(MEMORY[0x277D84F90]);
  v10 = OUTLINED_FUNCTION_191_0();
  result = OUTLINED_FUNCTION_1_16(v10);
  if (!v9)
  {
    return sub_26A0E48F0(v0, &qword_28036CAE0, &unk_26A4273F0);
  }

  return result;
}

uint64_t _ProtoSummaryItem_Switch.hasText4.getter()
{
  OUTLINED_FUNCTION_19_0();
  v0 = OUTLINED_FUNCTION_133();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_72_2(v6);
  OUTLINED_FUNCTION_53_5();
  OUTLINED_FUNCTION_52_5();
  v7 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_9_11(v7);
  return OUTLINED_FUNCTION_109_1();
}

uint64_t _ProtoSummaryItem_Switch.text4.getter()
{
  OUTLINED_FUNCTION_19_0();
  v1 = OUTLINED_FUNCTION_115();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_41(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v6);
  v7 = OUTLINED_FUNCTION_4_3();
  OUTLINED_FUNCTION_72_2(v7);
  OUTLINED_FUNCTION_24_2();
  OUTLINED_FUNCTION_58_6();
  v8 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_7_8(v8);
  if (!v9)
  {
    return OUTLINED_FUNCTION_192_0();
  }

  OUTLINED_FUNCTION_23_2(MEMORY[0x277D84F90]);
  v10 = OUTLINED_FUNCTION_191_0();
  result = OUTLINED_FUNCTION_1_16(v10);
  if (!v9)
  {
    return sub_26A0E48F0(v0, &qword_28036C7B8, &unk_26A425BF0);
  }

  return result;
}

uint64_t _ProtoSummaryItem_Switch.hasThumbnail.getter()
{
  OUTLINED_FUNCTION_19_0();
  v0 = OUTLINED_FUNCTION_133();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_72_2(v6);
  OUTLINED_FUNCTION_53_5();
  OUTLINED_FUNCTION_52_5();
  v7 = type metadata accessor for _ProtoVisualProperty();
  OUTLINED_FUNCTION_9_11(v7);
  return OUTLINED_FUNCTION_109_1();
}

uint64_t _ProtoSummaryItem_Switch.thumbnail.getter()
{
  OUTLINED_FUNCTION_19_0();
  v1 = OUTLINED_FUNCTION_115();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_41(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v6);
  v7 = OUTLINED_FUNCTION_4_3();
  OUTLINED_FUNCTION_72_2(v7);
  OUTLINED_FUNCTION_24_2();
  OUTLINED_FUNCTION_58_6();
  v8 = type metadata accessor for _ProtoVisualProperty();
  OUTLINED_FUNCTION_7_8(v8);
  if (!v9)
  {
    return OUTLINED_FUNCTION_192_0();
  }

  OUTLINED_FUNCTION_23_2(MEMORY[0x277D84F90]);
  v10 = OUTLINED_FUNCTION_191_0();
  result = OUTLINED_FUNCTION_1_16(v10);
  if (!v9)
  {
    return sub_26A0E48F0(v0, &qword_28036CAE8, &unk_26A426430);
  }

  return result;
}

uint64_t _ProtoSummaryItem_Switch.hasAction.getter()
{
  OUTLINED_FUNCTION_19_0();
  v0 = OUTLINED_FUNCTION_133();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_72_2(v6);
  OUTLINED_FUNCTION_53_5();
  OUTLINED_FUNCTION_52_5();
  v7 = type metadata accessor for _ProtoActionProperty();
  OUTLINED_FUNCTION_9_11(v7);
  return OUTLINED_FUNCTION_109_1();
}

uint64_t sub_26A16FBB0@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  v7 = OUTLINED_FUNCTION_142_0();
  OUTLINED_FUNCTION_41(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_141_0();
  v11 = a1(0);
  OUTLINED_FUNCTION_97_0(v11);
  v12 = *a2;
  OUTLINED_FUNCTION_142();
  sub_26A10FD9C();
  v13 = type metadata accessor for _ProtoActionProperty();
  OUTLINED_FUNCTION_23(v3);
  if (!v14)
  {
    return sub_26A1C2528();
  }

  *a3 = MEMORY[0x277D84F90];
  a3[1] = 0;
  a3[2] = 0xE000000000000000;
  v15 = a3 + *(v13 + 24);
  _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
  result = OUTLINED_FUNCTION_23(v3);
  if (!v14)
  {
    return sub_26A0E48F0(v3, &off_28036C7C0, &off_26A427400);
  }

  return result;
}

uint64_t _ProtoSummaryItem_Switch.switch.setter()
{
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_107_1();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036D258, &unk_26A4273E0);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_4_3();
  v7 = type metadata accessor for _ProtoSummaryItem_Switch(v6);
  v8 = OUTLINED_FUNCTION_188_1(v7);
  v9 = *(v0 + v1);
  if ((v8 & 1) == 0)
  {
    OUTLINED_FUNCTION_91_1();
    OUTLINED_FUNCTION_5_3();
    sub_26A1BAEFC();
    OUTLINED_FUNCTION_42_1(v10);
  }

  OUTLINED_FUNCTION_189_1();
  v11 = type metadata accessor for _ProtoSwitch();
  OUTLINED_FUNCTION_50_4(v11);
  OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_185_1();
  return swift_endAccess();
}

uint64_t _ProtoSummaryItem_Switch.text1.setter()
{
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_107_1();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_4_3();
  v7 = type metadata accessor for _ProtoSummaryItem_Switch(v6);
  v8 = OUTLINED_FUNCTION_188_1(v7);
  v9 = *(v0 + v1);
  if ((v8 & 1) == 0)
  {
    OUTLINED_FUNCTION_91_1();
    OUTLINED_FUNCTION_5_3();
    sub_26A1BAEFC();
    OUTLINED_FUNCTION_42_1(v10);
  }

  OUTLINED_FUNCTION_189_1();
  v11 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_50_4(v11);
  OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_185_1();
  return swift_endAccess();
}

uint64_t _ProtoSummaryItem_Switch.text2.setter()
{
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_107_1();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_4_3();
  v7 = type metadata accessor for _ProtoSummaryItem_Switch(v6);
  v8 = OUTLINED_FUNCTION_188_1(v7);
  v9 = *(v0 + v1);
  if ((v8 & 1) == 0)
  {
    OUTLINED_FUNCTION_91_1();
    OUTLINED_FUNCTION_5_3();
    sub_26A1BAEFC();
    OUTLINED_FUNCTION_42_1(v10);
  }

  OUTLINED_FUNCTION_189_1();
  v11 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_50_4(v11);
  OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_185_1();
  return swift_endAccess();
}

uint64_t _ProtoSummaryItem_Switch.text3.setter()
{
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_107_1();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE0, &unk_26A4273F0);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_4_3();
  v7 = type metadata accessor for _ProtoSummaryItem_Switch(v6);
  v8 = OUTLINED_FUNCTION_188_1(v7);
  v9 = *(v0 + v1);
  if ((v8 & 1) == 0)
  {
    OUTLINED_FUNCTION_91_1();
    OUTLINED_FUNCTION_5_3();
    sub_26A1BAEFC();
    OUTLINED_FUNCTION_42_1(v10);
  }

  OUTLINED_FUNCTION_189_1();
  v11 = type metadata accessor for _ProtoMultilineTextProperty(0);
  OUTLINED_FUNCTION_50_4(v11);
  OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_185_1();
  return swift_endAccess();
}

uint64_t _ProtoSummaryItem_Switch.text4.setter()
{
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_107_1();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_4_3();
  v7 = type metadata accessor for _ProtoSummaryItem_Switch(v6);
  v8 = OUTLINED_FUNCTION_188_1(v7);
  v9 = *(v0 + v1);
  if ((v8 & 1) == 0)
  {
    OUTLINED_FUNCTION_91_1();
    OUTLINED_FUNCTION_5_3();
    sub_26A1BAEFC();
    OUTLINED_FUNCTION_42_1(v10);
  }

  OUTLINED_FUNCTION_189_1();
  v11 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_50_4(v11);
  OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_185_1();
  return swift_endAccess();
}

uint64_t _ProtoSummaryItem_Switch.thumbnail.setter()
{
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_107_1();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE8, &unk_26A426430);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_4_3();
  v7 = type metadata accessor for _ProtoSummaryItem_Switch(v6);
  v8 = OUTLINED_FUNCTION_188_1(v7);
  v9 = *(v0 + v1);
  if ((v8 & 1) == 0)
  {
    OUTLINED_FUNCTION_91_1();
    OUTLINED_FUNCTION_5_3();
    sub_26A1BAEFC();
    OUTLINED_FUNCTION_42_1(v10);
  }

  OUTLINED_FUNCTION_189_1();
  v11 = type metadata accessor for _ProtoVisualProperty();
  OUTLINED_FUNCTION_50_4(v11);
  OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_185_1();
  return swift_endAccess();
}

uint64_t _ProtoSummaryItem_Switch.action.setter()
{
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_107_1();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_4_3();
  v7 = type metadata accessor for _ProtoSummaryItem_Switch(v6);
  v8 = OUTLINED_FUNCTION_188_1(v7);
  v9 = *(v0 + v1);
  if ((v8 & 1) == 0)
  {
    OUTLINED_FUNCTION_91_1();
    OUTLINED_FUNCTION_5_3();
    sub_26A1BAEFC();
    OUTLINED_FUNCTION_42_1(v10);
  }

  OUTLINED_FUNCTION_189_1();
  v11 = type metadata accessor for _ProtoActionProperty();
  OUTLINED_FUNCTION_50_4(v11);
  OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_185_1();
  return swift_endAccess();
}

uint64_t _ProtoSummaryItem_Switch.hasText1.getter()
{
  OUTLINED_FUNCTION_19_0();
  v0 = OUTLINED_FUNCTION_133();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_72_2(v6);
  OUTLINED_FUNCTION_53_5();
  OUTLINED_FUNCTION_52_5();
  v7 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_9_11(v7);
  return OUTLINED_FUNCTION_109_1();
}

uint64_t _ProtoSummaryItem_Pair.text4.getter()
{
  OUTLINED_FUNCTION_19_0();
  v1 = OUTLINED_FUNCTION_115();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_41(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v6);
  v7 = OUTLINED_FUNCTION_4_3();
  OUTLINED_FUNCTION_45_4(v7);
  OUTLINED_FUNCTION_24_2();
  OUTLINED_FUNCTION_58_6();
  v8 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_7_8(v8);
  if (!v9)
  {
    return OUTLINED_FUNCTION_192_0();
  }

  OUTLINED_FUNCTION_23_2(MEMORY[0x277D84F90]);
  v10 = OUTLINED_FUNCTION_191_0();
  result = OUTLINED_FUNCTION_1_16(v10);
  if (!v9)
  {
    return sub_26A0E48F0(v0, &qword_28036C7B8, &unk_26A425BF0);
  }

  return result;
}

uint64_t _ProtoSummaryItem_Pair.text6.getter()
{
  OUTLINED_FUNCTION_19_0();
  v1 = OUTLINED_FUNCTION_115();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_41(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v6);
  v7 = OUTLINED_FUNCTION_4_3();
  OUTLINED_FUNCTION_45_4(v7);
  OUTLINED_FUNCTION_24_2();
  OUTLINED_FUNCTION_58_6();
  v8 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_7_8(v8);
  if (!v9)
  {
    return OUTLINED_FUNCTION_192_0();
  }

  OUTLINED_FUNCTION_23_2(MEMORY[0x277D84F90]);
  v10 = OUTLINED_FUNCTION_191_0();
  result = OUTLINED_FUNCTION_1_16(v10);
  if (!v9)
  {
    return sub_26A0E48F0(v0, &qword_28036C7B8, &unk_26A425BF0);
  }

  return result;
}

uint64_t _ProtoSummaryItem_Pair.hasText1.getter()
{
  OUTLINED_FUNCTION_19_0();
  v0 = OUTLINED_FUNCTION_133();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_45_4(v6);
  OUTLINED_FUNCTION_53_5();
  OUTLINED_FUNCTION_52_5();
  v7 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_9_11(v7);
  return OUTLINED_FUNCTION_109_1();
}

uint64_t _ProtoSummaryItem_Pair.text1.getter()
{
  OUTLINED_FUNCTION_19_0();
  v1 = OUTLINED_FUNCTION_115();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_41(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v6);
  v7 = OUTLINED_FUNCTION_4_3();
  OUTLINED_FUNCTION_45_4(v7);
  OUTLINED_FUNCTION_24_2();
  OUTLINED_FUNCTION_58_6();
  v8 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_7_8(v8);
  if (!v9)
  {
    return OUTLINED_FUNCTION_192_0();
  }

  OUTLINED_FUNCTION_23_2(MEMORY[0x277D84F90]);
  v10 = OUTLINED_FUNCTION_191_0();
  result = OUTLINED_FUNCTION_1_16(v10);
  if (!v9)
  {
    return sub_26A0E48F0(v0, &qword_28036C7B8, &unk_26A425BF0);
  }

  return result;
}

uint64_t _ProtoSummaryItem_Pair.hasText2.getter()
{
  OUTLINED_FUNCTION_19_0();
  v0 = OUTLINED_FUNCTION_133();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_45_4(v6);
  OUTLINED_FUNCTION_53_5();
  OUTLINED_FUNCTION_52_5();
  v7 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_9_11(v7);
  return OUTLINED_FUNCTION_109_1();
}

uint64_t _ProtoSummaryItem_Pair.text2.getter()
{
  OUTLINED_FUNCTION_19_0();
  v1 = OUTLINED_FUNCTION_115();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_41(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v6);
  v7 = OUTLINED_FUNCTION_4_3();
  OUTLINED_FUNCTION_45_4(v7);
  OUTLINED_FUNCTION_24_2();
  OUTLINED_FUNCTION_58_6();
  v8 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_7_8(v8);
  if (!v9)
  {
    return OUTLINED_FUNCTION_192_0();
  }

  OUTLINED_FUNCTION_23_2(MEMORY[0x277D84F90]);
  v10 = OUTLINED_FUNCTION_191_0();
  result = OUTLINED_FUNCTION_1_16(v10);
  if (!v9)
  {
    return sub_26A0E48F0(v0, &qword_28036C7B8, &unk_26A425BF0);
  }

  return result;
}

uint64_t _ProtoSummaryItem_Pair.hasText3.getter()
{
  OUTLINED_FUNCTION_19_0();
  v0 = OUTLINED_FUNCTION_133();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_45_4(v6);
  OUTLINED_FUNCTION_53_5();
  OUTLINED_FUNCTION_52_5();
  v7 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_9_11(v7);
  return OUTLINED_FUNCTION_109_1();
}

uint64_t _ProtoSummaryItem_Pair.text3.getter()
{
  OUTLINED_FUNCTION_19_0();
  v1 = OUTLINED_FUNCTION_115();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_41(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v6);
  v7 = OUTLINED_FUNCTION_4_3();
  OUTLINED_FUNCTION_45_4(v7);
  OUTLINED_FUNCTION_24_2();
  OUTLINED_FUNCTION_58_6();
  v8 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_7_8(v8);
  if (!v9)
  {
    return OUTLINED_FUNCTION_192_0();
  }

  OUTLINED_FUNCTION_23_2(MEMORY[0x277D84F90]);
  v10 = OUTLINED_FUNCTION_191_0();
  result = OUTLINED_FUNCTION_1_16(v10);
  if (!v9)
  {
    return sub_26A0E48F0(v0, &qword_28036C7B8, &unk_26A425BF0);
  }

  return result;
}

uint64_t _ProtoSummaryItem_Pair.hasText5.getter()
{
  OUTLINED_FUNCTION_19_0();
  v0 = OUTLINED_FUNCTION_133();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_45_4(v6);
  OUTLINED_FUNCTION_53_5();
  OUTLINED_FUNCTION_52_5();
  v7 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_9_11(v7);
  return OUTLINED_FUNCTION_109_1();
}

uint64_t _ProtoSummaryItem_Pair.text5.getter()
{
  OUTLINED_FUNCTION_19_0();
  v1 = OUTLINED_FUNCTION_115();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_41(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v6);
  v7 = OUTLINED_FUNCTION_4_3();
  OUTLINED_FUNCTION_45_4(v7);
  OUTLINED_FUNCTION_24_2();
  OUTLINED_FUNCTION_58_6();
  v8 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_7_8(v8);
  if (!v9)
  {
    return OUTLINED_FUNCTION_192_0();
  }

  OUTLINED_FUNCTION_23_2(MEMORY[0x277D84F90]);
  v10 = OUTLINED_FUNCTION_191_0();
  result = OUTLINED_FUNCTION_1_16(v10);
  if (!v9)
  {
    return sub_26A0E48F0(v0, &qword_28036C7B8, &unk_26A425BF0);
  }

  return result;
}

uint64_t _ProtoSummaryItem_Pair.hasText7.getter()
{
  OUTLINED_FUNCTION_19_0();
  v0 = OUTLINED_FUNCTION_133();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_45_4(v6);
  OUTLINED_FUNCTION_53_5();
  OUTLINED_FUNCTION_52_5();
  v7 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_9_11(v7);
  return OUTLINED_FUNCTION_109_1();
}

uint64_t _ProtoSummaryItem_Pair.text7.getter()
{
  OUTLINED_FUNCTION_19_0();
  v1 = OUTLINED_FUNCTION_115();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_41(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v6);
  v7 = OUTLINED_FUNCTION_4_3();
  OUTLINED_FUNCTION_45_4(v7);
  OUTLINED_FUNCTION_24_2();
  OUTLINED_FUNCTION_58_6();
  v8 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_7_8(v8);
  if (!v9)
  {
    return OUTLINED_FUNCTION_192_0();
  }

  OUTLINED_FUNCTION_23_2(MEMORY[0x277D84F90]);
  v10 = OUTLINED_FUNCTION_191_0();
  result = OUTLINED_FUNCTION_1_16(v10);
  if (!v9)
  {
    return sub_26A0E48F0(v0, &qword_28036C7B8, &unk_26A425BF0);
  }

  return result;
}

uint64_t _ProtoSummaryItem_Pair.hasText8.getter()
{
  OUTLINED_FUNCTION_19_0();
  v0 = OUTLINED_FUNCTION_133();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_45_4(v6);
  OUTLINED_FUNCTION_53_5();
  OUTLINED_FUNCTION_52_5();
  v7 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_9_11(v7);
  return OUTLINED_FUNCTION_109_1();
}

uint64_t _ProtoSummaryItem_Pair.text8.getter()
{
  OUTLINED_FUNCTION_19_0();
  v1 = OUTLINED_FUNCTION_115();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_41(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v6);
  v7 = OUTLINED_FUNCTION_4_3();
  OUTLINED_FUNCTION_45_4(v7);
  OUTLINED_FUNCTION_24_2();
  OUTLINED_FUNCTION_58_6();
  v8 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_7_8(v8);
  if (!v9)
  {
    return OUTLINED_FUNCTION_192_0();
  }

  OUTLINED_FUNCTION_23_2(MEMORY[0x277D84F90]);
  v10 = OUTLINED_FUNCTION_191_0();
  result = OUTLINED_FUNCTION_1_16(v10);
  if (!v9)
  {
    return sub_26A0E48F0(v0, &qword_28036C7B8, &unk_26A425BF0);
  }

  return result;
}

uint64_t _ProtoSummaryItem_Pair.hasText9.getter()
{
  OUTLINED_FUNCTION_19_0();
  v0 = OUTLINED_FUNCTION_133();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_45_4(v6);
  OUTLINED_FUNCTION_53_5();
  OUTLINED_FUNCTION_52_5();
  v7 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_9_11(v7);
  return OUTLINED_FUNCTION_109_1();
}

uint64_t _ProtoSummaryItem_Pair.text9.getter()
{
  OUTLINED_FUNCTION_19_0();
  v1 = OUTLINED_FUNCTION_115();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_41(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v6);
  v7 = OUTLINED_FUNCTION_4_3();
  OUTLINED_FUNCTION_45_4(v7);
  OUTLINED_FUNCTION_24_2();
  OUTLINED_FUNCTION_58_6();
  v8 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_7_8(v8);
  if (!v9)
  {
    return OUTLINED_FUNCTION_192_0();
  }

  OUTLINED_FUNCTION_23_2(MEMORY[0x277D84F90]);
  v10 = OUTLINED_FUNCTION_191_0();
  result = OUTLINED_FUNCTION_1_16(v10);
  if (!v9)
  {
    return sub_26A0E48F0(v0, &qword_28036C7B8, &unk_26A425BF0);
  }

  return result;
}

uint64_t _ProtoSummaryItem_Pair.hasText10.getter()
{
  OUTLINED_FUNCTION_19_0();
  v0 = OUTLINED_FUNCTION_133();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_45_4(v6);
  OUTLINED_FUNCTION_53_5();
  OUTLINED_FUNCTION_52_5();
  v7 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_9_11(v7);
  return OUTLINED_FUNCTION_109_1();
}

uint64_t _ProtoSummaryItem_Pair.text10.getter()
{
  OUTLINED_FUNCTION_19_0();
  v1 = OUTLINED_FUNCTION_115();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_41(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v6);
  v7 = OUTLINED_FUNCTION_4_3();
  OUTLINED_FUNCTION_45_4(v7);
  OUTLINED_FUNCTION_24_2();
  OUTLINED_FUNCTION_58_6();
  v8 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_7_8(v8);
  if (!v9)
  {
    return OUTLINED_FUNCTION_192_0();
  }

  OUTLINED_FUNCTION_23_2(MEMORY[0x277D84F90]);
  v10 = OUTLINED_FUNCTION_191_0();
  result = OUTLINED_FUNCTION_1_16(v10);
  if (!v9)
  {
    return sub_26A0E48F0(v0, &qword_28036C7B8, &unk_26A425BF0);
  }

  return result;
}

uint64_t _ProtoSummaryItem_Pair.hasThumbnail1.getter()
{
  OUTLINED_FUNCTION_19_0();
  v0 = OUTLINED_FUNCTION_133();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_45_4(v6);
  OUTLINED_FUNCTION_53_5();
  OUTLINED_FUNCTION_52_5();
  v7 = type metadata accessor for _ProtoVisualProperty();
  OUTLINED_FUNCTION_9_11(v7);
  return OUTLINED_FUNCTION_109_1();
}

uint64_t _ProtoSummaryItem_Pair.thumbnail1.getter()
{
  OUTLINED_FUNCTION_19_0();
  v1 = OUTLINED_FUNCTION_115();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_41(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v6);
  v7 = OUTLINED_FUNCTION_4_3();
  OUTLINED_FUNCTION_45_4(v7);
  OUTLINED_FUNCTION_24_2();
  OUTLINED_FUNCTION_58_6();
  v8 = type metadata accessor for _ProtoVisualProperty();
  OUTLINED_FUNCTION_7_8(v8);
  if (!v9)
  {
    return OUTLINED_FUNCTION_192_0();
  }

  OUTLINED_FUNCTION_23_2(MEMORY[0x277D84F90]);
  v10 = OUTLINED_FUNCTION_191_0();
  result = OUTLINED_FUNCTION_1_16(v10);
  if (!v9)
  {
    return sub_26A0E48F0(v0, &qword_28036CAE8, &unk_26A426430);
  }

  return result;
}

uint64_t _ProtoSummaryItem_Pair.hasThumbnail2.getter()
{
  OUTLINED_FUNCTION_19_0();
  v0 = OUTLINED_FUNCTION_133();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_45_4(v6);
  OUTLINED_FUNCTION_53_5();
  OUTLINED_FUNCTION_52_5();
  v7 = type metadata accessor for _ProtoVisualProperty();
  OUTLINED_FUNCTION_9_11(v7);
  return OUTLINED_FUNCTION_109_1();
}

uint64_t _ProtoSummaryItem_Pair.thumbnail2.getter()
{
  OUTLINED_FUNCTION_19_0();
  v1 = OUTLINED_FUNCTION_115();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_41(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v6);
  v7 = OUTLINED_FUNCTION_4_3();
  OUTLINED_FUNCTION_45_4(v7);
  OUTLINED_FUNCTION_24_2();
  OUTLINED_FUNCTION_58_6();
  v8 = type metadata accessor for _ProtoVisualProperty();
  OUTLINED_FUNCTION_7_8(v8);
  if (!v9)
  {
    return OUTLINED_FUNCTION_192_0();
  }

  OUTLINED_FUNCTION_23_2(MEMORY[0x277D84F90]);
  v10 = OUTLINED_FUNCTION_191_0();
  result = OUTLINED_FUNCTION_1_16(v10);
  if (!v9)
  {
    return sub_26A0E48F0(v0, &qword_28036CAE8, &unk_26A426430);
  }

  return result;
}

uint64_t _ProtoSummaryItem_Pair.hasAction.getter()
{
  OUTLINED_FUNCTION_19_0();
  v0 = OUTLINED_FUNCTION_133();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_45_4(v6);
  OUTLINED_FUNCTION_53_5();
  OUTLINED_FUNCTION_52_5();
  v7 = type metadata accessor for _ProtoActionProperty();
  OUTLINED_FUNCTION_9_11(v7);
  return OUTLINED_FUNCTION_109_1();
}

uint64_t _ProtoSummaryItem_Pair.text4.setter()
{
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_107_1();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_4_3();
  v7 = OUTLINED_FUNCTION_143_1(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    OUTLINED_FUNCTION_68_1();
    OUTLINED_FUNCTION_5_3();
    sub_26A19E384();
    OUTLINED_FUNCTION_42_1(v9);
  }

  OUTLINED_FUNCTION_189_1();
  v10 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_50_4(v10);
  OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_185_1();
  return swift_endAccess();
}

uint64_t _ProtoSummaryItem_Pair.text6.setter()
{
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_107_1();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_4_3();
  v7 = OUTLINED_FUNCTION_143_1(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    OUTLINED_FUNCTION_68_1();
    OUTLINED_FUNCTION_5_3();
    sub_26A19E384();
    OUTLINED_FUNCTION_42_1(v9);
  }

  OUTLINED_FUNCTION_189_1();
  v10 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_50_4(v10);
  OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_185_1();
  return swift_endAccess();
}

uint64_t _ProtoSummaryItem_Pair.text1.setter()
{
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_107_1();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_4_3();
  v7 = OUTLINED_FUNCTION_143_1(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    OUTLINED_FUNCTION_68_1();
    OUTLINED_FUNCTION_5_3();
    sub_26A19E384();
    OUTLINED_FUNCTION_42_1(v9);
  }

  OUTLINED_FUNCTION_189_1();
  v10 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_50_4(v10);
  OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_185_1();
  return swift_endAccess();
}

uint64_t _ProtoSummaryItem_Pair.text2.setter()
{
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_107_1();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_4_3();
  v7 = OUTLINED_FUNCTION_143_1(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    OUTLINED_FUNCTION_68_1();
    OUTLINED_FUNCTION_5_3();
    sub_26A19E384();
    OUTLINED_FUNCTION_42_1(v9);
  }

  OUTLINED_FUNCTION_189_1();
  v10 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_50_4(v10);
  OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_185_1();
  return swift_endAccess();
}

uint64_t _ProtoSummaryItem_Pair.text3.setter()
{
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_107_1();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_4_3();
  v7 = OUTLINED_FUNCTION_143_1(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    OUTLINED_FUNCTION_68_1();
    OUTLINED_FUNCTION_5_3();
    sub_26A19E384();
    OUTLINED_FUNCTION_42_1(v9);
  }

  OUTLINED_FUNCTION_189_1();
  v10 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_50_4(v10);
  OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_185_1();
  return swift_endAccess();
}

uint64_t _ProtoSummaryItem_Pair.text5.setter()
{
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_107_1();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_4_3();
  v7 = OUTLINED_FUNCTION_143_1(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    OUTLINED_FUNCTION_68_1();
    OUTLINED_FUNCTION_5_3();
    sub_26A19E384();
    OUTLINED_FUNCTION_42_1(v9);
  }

  OUTLINED_FUNCTION_189_1();
  v10 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_50_4(v10);
  OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_185_1();
  return swift_endAccess();
}

uint64_t _ProtoSummaryItem_Pair.text7.setter()
{
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_107_1();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_4_3();
  v7 = OUTLINED_FUNCTION_143_1(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    OUTLINED_FUNCTION_68_1();
    OUTLINED_FUNCTION_5_3();
    sub_26A19E384();
    OUTLINED_FUNCTION_42_1(v9);
  }

  OUTLINED_FUNCTION_189_1();
  v10 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_50_4(v10);
  OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_185_1();
  return swift_endAccess();
}

uint64_t _ProtoSummaryItem_Pair.text8.setter()
{
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_107_1();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_4_3();
  v7 = OUTLINED_FUNCTION_143_1(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    OUTLINED_FUNCTION_68_1();
    OUTLINED_FUNCTION_5_3();
    sub_26A19E384();
    OUTLINED_FUNCTION_42_1(v9);
  }

  OUTLINED_FUNCTION_189_1();
  v10 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_50_4(v10);
  OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_185_1();
  return swift_endAccess();
}

uint64_t _ProtoSummaryItem_Pair.text9.setter()
{
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_107_1();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_4_3();
  v7 = OUTLINED_FUNCTION_143_1(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    OUTLINED_FUNCTION_68_1();
    OUTLINED_FUNCTION_5_3();
    sub_26A19E384();
    OUTLINED_FUNCTION_42_1(v9);
  }

  OUTLINED_FUNCTION_189_1();
  v10 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_50_4(v10);
  OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_185_1();
  return swift_endAccess();
}

uint64_t _ProtoSummaryItem_Pair.text10.setter()
{
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_107_1();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_4_3();
  v7 = OUTLINED_FUNCTION_143_1(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    OUTLINED_FUNCTION_68_1();
    OUTLINED_FUNCTION_5_3();
    sub_26A19E384();
    OUTLINED_FUNCTION_42_1(v9);
  }

  OUTLINED_FUNCTION_189_1();
  v10 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_50_4(v10);
  OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_185_1();
  return swift_endAccess();
}

uint64_t _ProtoSummaryItem_Pair.thumbnail1.setter()
{
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_107_1();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE8, &unk_26A426430);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_4_3();
  v7 = OUTLINED_FUNCTION_143_1(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    OUTLINED_FUNCTION_68_1();
    OUTLINED_FUNCTION_5_3();
    sub_26A19E384();
    OUTLINED_FUNCTION_42_1(v9);
  }

  OUTLINED_FUNCTION_189_1();
  v10 = type metadata accessor for _ProtoVisualProperty();
  OUTLINED_FUNCTION_50_4(v10);
  OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_185_1();
  return swift_endAccess();
}

uint64_t _ProtoSummaryItem_Pair.thumbnail2.setter()
{
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_107_1();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE8, &unk_26A426430);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_4_3();
  v7 = OUTLINED_FUNCTION_143_1(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    OUTLINED_FUNCTION_68_1();
    OUTLINED_FUNCTION_5_3();
    sub_26A19E384();
    OUTLINED_FUNCTION_42_1(v9);
  }

  OUTLINED_FUNCTION_189_1();
  v10 = type metadata accessor for _ProtoVisualProperty();
  OUTLINED_FUNCTION_50_4(v10);
  OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_185_1();
  return swift_endAccess();
}

uint64_t _ProtoSummaryItem_Pair.action.setter()
{
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_107_1();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_4_3();
  v7 = OUTLINED_FUNCTION_143_1(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    OUTLINED_FUNCTION_68_1();
    OUTLINED_FUNCTION_5_3();
    sub_26A19E384();
    OUTLINED_FUNCTION_42_1(v9);
  }

  OUTLINED_FUNCTION_189_1();
  v10 = type metadata accessor for _ProtoActionProperty();
  OUTLINED_FUNCTION_50_4(v10);
  OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_185_1();
  return swift_endAccess();
}

uint64_t _ProtoSummaryItem_Pair.hasText4.getter()
{
  OUTLINED_FUNCTION_19_0();
  v0 = OUTLINED_FUNCTION_133();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_45_4(v6);
  OUTLINED_FUNCTION_53_5();
  OUTLINED_FUNCTION_52_5();
  v7 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_9_11(v7);
  return OUTLINED_FUNCTION_109_1();
}

uint64_t _ProtoSummaryItem_Pair.hasText6.getter()
{
  OUTLINED_FUNCTION_19_0();
  v0 = OUTLINED_FUNCTION_133();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_45_4(v6);
  OUTLINED_FUNCTION_53_5();
  OUTLINED_FUNCTION_52_5();
  v7 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_9_11(v7);
  return OUTLINED_FUNCTION_109_1();
}

uint64_t _ProtoSummaryItem_PairNumberV2.number1.getter()
{
  OUTLINED_FUNCTION_19_0();
  v1 = OUTLINED_FUNCTION_115();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_41(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v6);
  v7 = OUTLINED_FUNCTION_4_3();
  OUTLINED_FUNCTION_59_6(v7);
  OUTLINED_FUNCTION_24_2();
  OUTLINED_FUNCTION_58_6();
  v8 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_7_8(v8);
  if (!v9)
  {
    return OUTLINED_FUNCTION_192_0();
  }

  OUTLINED_FUNCTION_23_2(MEMORY[0x277D84F90]);
  v10 = OUTLINED_FUNCTION_191_0();
  result = OUTLINED_FUNCTION_1_16(v10);
  if (!v9)
  {
    return sub_26A0E48F0(v0, &qword_28036C7B8, &unk_26A425BF0);
  }

  return result;
}

uint64_t _ProtoSummaryItem_PairNumberV2.number2.getter()
{
  OUTLINED_FUNCTION_19_0();
  v1 = OUTLINED_FUNCTION_115();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_41(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v6);
  v7 = OUTLINED_FUNCTION_4_3();
  OUTLINED_FUNCTION_59_6(v7);
  OUTLINED_FUNCTION_24_2();
  OUTLINED_FUNCTION_58_6();
  v8 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_7_8(v8);
  if (!v9)
  {
    return OUTLINED_FUNCTION_192_0();
  }

  OUTLINED_FUNCTION_23_2(MEMORY[0x277D84F90]);
  v10 = OUTLINED_FUNCTION_191_0();
  result = OUTLINED_FUNCTION_1_16(v10);
  if (!v9)
  {
    return sub_26A0E48F0(v0, &qword_28036C7B8, &unk_26A425BF0);
  }

  return result;
}

uint64_t _ProtoSummaryItem_PairNumberV2.hasText1.getter()
{
  OUTLINED_FUNCTION_19_0();
  v0 = OUTLINED_FUNCTION_133();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_59_6(v6);
  OUTLINED_FUNCTION_53_5();
  OUTLINED_FUNCTION_52_5();
  v7 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_9_11(v7);
  return OUTLINED_FUNCTION_109_1();
}

uint64_t _ProtoSummaryItem_PairNumberV2.text1.getter()
{
  OUTLINED_FUNCTION_19_0();
  v1 = OUTLINED_FUNCTION_115();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_41(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v6);
  v7 = OUTLINED_FUNCTION_4_3();
  OUTLINED_FUNCTION_59_6(v7);
  OUTLINED_FUNCTION_24_2();
  OUTLINED_FUNCTION_58_6();
  v8 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_7_8(v8);
  if (!v9)
  {
    return OUTLINED_FUNCTION_192_0();
  }

  OUTLINED_FUNCTION_23_2(MEMORY[0x277D84F90]);
  v10 = OUTLINED_FUNCTION_191_0();
  result = OUTLINED_FUNCTION_1_16(v10);
  if (!v9)
  {
    return sub_26A0E48F0(v0, &qword_28036C7B8, &unk_26A425BF0);
  }

  return result;
}

uint64_t _ProtoSummaryItem_PairNumberV2.hasText2.getter()
{
  OUTLINED_FUNCTION_19_0();
  v0 = OUTLINED_FUNCTION_133();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_59_6(v6);
  OUTLINED_FUNCTION_53_5();
  OUTLINED_FUNCTION_52_5();
  v7 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_9_11(v7);
  return OUTLINED_FUNCTION_109_1();
}

uint64_t _ProtoSummaryItem_PairNumberV2.text2.getter()
{
  OUTLINED_FUNCTION_19_0();
  v1 = OUTLINED_FUNCTION_115();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_41(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v6);
  v7 = OUTLINED_FUNCTION_4_3();
  OUTLINED_FUNCTION_59_6(v7);
  OUTLINED_FUNCTION_24_2();
  OUTLINED_FUNCTION_58_6();
  v8 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_7_8(v8);
  if (!v9)
  {
    return OUTLINED_FUNCTION_192_0();
  }

  OUTLINED_FUNCTION_23_2(MEMORY[0x277D84F90]);
  v10 = OUTLINED_FUNCTION_191_0();
  result = OUTLINED_FUNCTION_1_16(v10);
  if (!v9)
  {
    return sub_26A0E48F0(v0, &qword_28036C7B8, &unk_26A425BF0);
  }

  return result;
}

uint64_t _ProtoSummaryItem_PairNumberV2.hasText3.getter()
{
  OUTLINED_FUNCTION_19_0();
  v0 = OUTLINED_FUNCTION_133();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_59_6(v6);
  OUTLINED_FUNCTION_53_5();
  OUTLINED_FUNCTION_52_5();
  v7 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_9_11(v7);
  return OUTLINED_FUNCTION_109_1();
}

uint64_t _ProtoSummaryItem_PairNumberV2.text3.getter()
{
  OUTLINED_FUNCTION_19_0();
  v1 = OUTLINED_FUNCTION_115();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_41(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v6);
  v7 = OUTLINED_FUNCTION_4_3();
  OUTLINED_FUNCTION_59_6(v7);
  OUTLINED_FUNCTION_24_2();
  OUTLINED_FUNCTION_58_6();
  v8 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_7_8(v8);
  if (!v9)
  {
    return OUTLINED_FUNCTION_192_0();
  }

  OUTLINED_FUNCTION_23_2(MEMORY[0x277D84F90]);
  v10 = OUTLINED_FUNCTION_191_0();
  result = OUTLINED_FUNCTION_1_16(v10);
  if (!v9)
  {
    return sub_26A0E48F0(v0, &qword_28036C7B8, &unk_26A425BF0);
  }

  return result;
}

uint64_t _ProtoSummaryItem_PairNumberV2.hasText4.getter()
{
  OUTLINED_FUNCTION_19_0();
  v0 = OUTLINED_FUNCTION_133();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_59_6(v6);
  OUTLINED_FUNCTION_53_5();
  OUTLINED_FUNCTION_52_5();
  v7 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_9_11(v7);
  return OUTLINED_FUNCTION_109_1();
}

uint64_t _ProtoSummaryItem_PairNumberV2.text4.getter()
{
  OUTLINED_FUNCTION_19_0();
  v1 = OUTLINED_FUNCTION_115();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_41(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v6);
  v7 = OUTLINED_FUNCTION_4_3();
  OUTLINED_FUNCTION_59_6(v7);
  OUTLINED_FUNCTION_24_2();
  OUTLINED_FUNCTION_58_6();
  v8 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_7_8(v8);
  if (!v9)
  {
    return OUTLINED_FUNCTION_192_0();
  }

  OUTLINED_FUNCTION_23_2(MEMORY[0x277D84F90]);
  v10 = OUTLINED_FUNCTION_191_0();
  result = OUTLINED_FUNCTION_1_16(v10);
  if (!v9)
  {
    return sub_26A0E48F0(v0, &qword_28036C7B8, &unk_26A425BF0);
  }

  return result;
}

uint64_t _ProtoSummaryItem_PairNumberV2.hasText5.getter()
{
  OUTLINED_FUNCTION_19_0();
  v0 = OUTLINED_FUNCTION_133();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_59_6(v6);
  OUTLINED_FUNCTION_53_5();
  OUTLINED_FUNCTION_52_5();
  v7 = type metadata accessor for _ProtoMultilineTextProperty(0);
  OUTLINED_FUNCTION_9_11(v7);
  return OUTLINED_FUNCTION_109_1();
}

uint64_t _ProtoSummaryItem_PairNumberV2.text5.getter()
{
  OUTLINED_FUNCTION_19_0();
  v1 = OUTLINED_FUNCTION_115();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_41(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v6);
  v7 = OUTLINED_FUNCTION_4_3();
  OUTLINED_FUNCTION_59_6(v7);
  OUTLINED_FUNCTION_24_2();
  OUTLINED_FUNCTION_58_6();
  v8 = type metadata accessor for _ProtoMultilineTextProperty(0);
  OUTLINED_FUNCTION_7_8(v8);
  if (!v9)
  {
    return OUTLINED_FUNCTION_192_0();
  }

  OUTLINED_FUNCTION_23_2(MEMORY[0x277D84F90]);
  v10 = OUTLINED_FUNCTION_191_0();
  result = OUTLINED_FUNCTION_1_16(v10);
  if (!v9)
  {
    return sub_26A0E48F0(v0, &qword_28036CAE0, &unk_26A4273F0);
  }

  return result;
}

uint64_t _ProtoSummaryItem_PairNumberV2.hasThumbnail1.getter()
{
  OUTLINED_FUNCTION_19_0();
  v0 = OUTLINED_FUNCTION_133();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_59_6(v6);
  OUTLINED_FUNCTION_53_5();
  OUTLINED_FUNCTION_52_5();
  v7 = type metadata accessor for _ProtoVisualProperty();
  OUTLINED_FUNCTION_9_11(v7);
  return OUTLINED_FUNCTION_109_1();
}

uint64_t _ProtoSummaryItem_PairNumberV2.thumbnail1.getter()
{
  OUTLINED_FUNCTION_19_0();
  v1 = OUTLINED_FUNCTION_115();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_41(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v6);
  v7 = OUTLINED_FUNCTION_4_3();
  OUTLINED_FUNCTION_59_6(v7);
  OUTLINED_FUNCTION_24_2();
  OUTLINED_FUNCTION_58_6();
  v8 = type metadata accessor for _ProtoVisualProperty();
  OUTLINED_FUNCTION_7_8(v8);
  if (!v9)
  {
    return OUTLINED_FUNCTION_192_0();
  }

  OUTLINED_FUNCTION_23_2(MEMORY[0x277D84F90]);
  v10 = OUTLINED_FUNCTION_191_0();
  result = OUTLINED_FUNCTION_1_16(v10);
  if (!v9)
  {
    return sub_26A0E48F0(v0, &qword_28036CAE8, &unk_26A426430);
  }

  return result;
}

uint64_t _ProtoSummaryItem_PairNumberV2.hasThumbnail2.getter()
{
  OUTLINED_FUNCTION_19_0();
  v0 = OUTLINED_FUNCTION_133();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_59_6(v6);
  OUTLINED_FUNCTION_53_5();
  OUTLINED_FUNCTION_52_5();
  v7 = type metadata accessor for _ProtoVisualProperty();
  OUTLINED_FUNCTION_9_11(v7);
  return OUTLINED_FUNCTION_109_1();
}

uint64_t _ProtoSummaryItem_PairNumberV2.thumbnail2.getter()
{
  OUTLINED_FUNCTION_19_0();
  v1 = OUTLINED_FUNCTION_115();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_41(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v6);
  v7 = OUTLINED_FUNCTION_4_3();
  OUTLINED_FUNCTION_59_6(v7);
  OUTLINED_FUNCTION_24_2();
  OUTLINED_FUNCTION_58_6();
  v8 = type metadata accessor for _ProtoVisualProperty();
  OUTLINED_FUNCTION_7_8(v8);
  if (!v9)
  {
    return OUTLINED_FUNCTION_192_0();
  }

  OUTLINED_FUNCTION_23_2(MEMORY[0x277D84F90]);
  v10 = OUTLINED_FUNCTION_191_0();
  result = OUTLINED_FUNCTION_1_16(v10);
  if (!v9)
  {
    return sub_26A0E48F0(v0, &qword_28036CAE8, &unk_26A426430);
  }

  return result;
}

uint64_t _ProtoSummaryItem_PairNumberV2.hasAction.getter()
{
  OUTLINED_FUNCTION_19_0();
  v0 = OUTLINED_FUNCTION_133();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_59_6(v6);
  OUTLINED_FUNCTION_53_5();
  OUTLINED_FUNCTION_52_5();
  v7 = type metadata accessor for _ProtoActionProperty();
  OUTLINED_FUNCTION_9_11(v7);
  return OUTLINED_FUNCTION_109_1();
}

uint64_t _ProtoSummaryItem_PairNumberV2.number1.setter()
{
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_107_1();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_4_3();
  v7 = OUTLINED_FUNCTION_171_1(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    OUTLINED_FUNCTION_75_2();
    OUTLINED_FUNCTION_5_3();
    sub_26A1ADC04();
    OUTLINED_FUNCTION_42_1(v9);
  }

  OUTLINED_FUNCTION_189_1();
  v10 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_50_4(v10);
  OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_185_1();
  return swift_endAccess();
}

uint64_t _ProtoSummaryItem_PairNumberV2.number2.setter()
{
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_107_1();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_4_3();
  v7 = OUTLINED_FUNCTION_171_1(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    OUTLINED_FUNCTION_75_2();
    OUTLINED_FUNCTION_5_3();
    sub_26A1ADC04();
    OUTLINED_FUNCTION_42_1(v9);
  }

  OUTLINED_FUNCTION_189_1();
  v10 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_50_4(v10);
  OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_185_1();
  return swift_endAccess();
}

uint64_t _ProtoSummaryItem_PairNumberV2.text1.setter()
{
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_107_1();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_4_3();
  v7 = OUTLINED_FUNCTION_171_1(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    OUTLINED_FUNCTION_75_2();
    OUTLINED_FUNCTION_5_3();
    sub_26A1ADC04();
    OUTLINED_FUNCTION_42_1(v9);
  }

  OUTLINED_FUNCTION_189_1();
  v10 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_50_4(v10);
  OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_185_1();
  return swift_endAccess();
}

uint64_t _ProtoSummaryItem_PairNumberV2.text2.setter()
{
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_107_1();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_4_3();
  v7 = OUTLINED_FUNCTION_171_1(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    OUTLINED_FUNCTION_75_2();
    OUTLINED_FUNCTION_5_3();
    sub_26A1ADC04();
    OUTLINED_FUNCTION_42_1(v9);
  }

  OUTLINED_FUNCTION_189_1();
  v10 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_50_4(v10);
  OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_185_1();
  return swift_endAccess();
}

uint64_t _ProtoSummaryItem_PairNumberV2.text3.setter()
{
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_107_1();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_4_3();
  v7 = OUTLINED_FUNCTION_171_1(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    OUTLINED_FUNCTION_75_2();
    OUTLINED_FUNCTION_5_3();
    sub_26A1ADC04();
    OUTLINED_FUNCTION_42_1(v9);
  }

  OUTLINED_FUNCTION_189_1();
  v10 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_50_4(v10);
  OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_185_1();
  return swift_endAccess();
}

uint64_t _ProtoSummaryItem_PairNumberV2.text4.setter()
{
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_107_1();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_4_3();
  v7 = OUTLINED_FUNCTION_171_1(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    OUTLINED_FUNCTION_75_2();
    OUTLINED_FUNCTION_5_3();
    sub_26A1ADC04();
    OUTLINED_FUNCTION_42_1(v9);
  }

  OUTLINED_FUNCTION_189_1();
  v10 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_50_4(v10);
  OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_185_1();
  return swift_endAccess();
}

uint64_t _ProtoSummaryItem_PairNumberV2.text5.setter()
{
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_107_1();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE0, &unk_26A4273F0);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_4_3();
  v7 = OUTLINED_FUNCTION_171_1(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    OUTLINED_FUNCTION_75_2();
    OUTLINED_FUNCTION_5_3();
    sub_26A1ADC04();
    OUTLINED_FUNCTION_42_1(v9);
  }

  OUTLINED_FUNCTION_189_1();
  v10 = type metadata accessor for _ProtoMultilineTextProperty(0);
  OUTLINED_FUNCTION_50_4(v10);
  OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_185_1();
  return swift_endAccess();
}

uint64_t _ProtoSummaryItem_PairNumberV2.thumbnail1.setter()
{
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_107_1();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE8, &unk_26A426430);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_4_3();
  v7 = OUTLINED_FUNCTION_171_1(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    OUTLINED_FUNCTION_75_2();
    OUTLINED_FUNCTION_5_3();
    sub_26A1ADC04();
    OUTLINED_FUNCTION_42_1(v9);
  }

  OUTLINED_FUNCTION_189_1();
  v10 = type metadata accessor for _ProtoVisualProperty();
  OUTLINED_FUNCTION_50_4(v10);
  OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_185_1();
  return swift_endAccess();
}

uint64_t _ProtoSummaryItem_PairNumberV2.thumbnail2.setter()
{
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_107_1();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE8, &unk_26A426430);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_4_3();
  v7 = OUTLINED_FUNCTION_171_1(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    OUTLINED_FUNCTION_75_2();
    OUTLINED_FUNCTION_5_3();
    sub_26A1ADC04();
    OUTLINED_FUNCTION_42_1(v9);
  }

  OUTLINED_FUNCTION_189_1();
  v10 = type metadata accessor for _ProtoVisualProperty();
  OUTLINED_FUNCTION_50_4(v10);
  OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_185_1();
  return swift_endAccess();
}

uint64_t _ProtoSummaryItem_PairNumberV2.action.setter()
{
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_107_1();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_4_3();
  v7 = OUTLINED_FUNCTION_171_1(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    OUTLINED_FUNCTION_75_2();
    OUTLINED_FUNCTION_5_3();
    sub_26A1ADC04();
    OUTLINED_FUNCTION_42_1(v9);
  }

  OUTLINED_FUNCTION_189_1();
  v10 = type metadata accessor for _ProtoActionProperty();
  OUTLINED_FUNCTION_50_4(v10);
  OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_185_1();
  return swift_endAccess();
}

uint64_t _ProtoSummaryItem_PairNumberV2.hasNumber1.getter()
{
  OUTLINED_FUNCTION_19_0();
  v0 = OUTLINED_FUNCTION_133();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_59_6(v6);
  OUTLINED_FUNCTION_53_5();
  OUTLINED_FUNCTION_52_5();
  v7 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_9_11(v7);
  return OUTLINED_FUNCTION_109_1();
}

uint64_t _ProtoSummaryItem_Standard.text1.getter()
{
  OUTLINED_FUNCTION_19_0();
  v1 = OUTLINED_FUNCTION_115();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_41(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v6);
  v7 = OUTLINED_FUNCTION_4_3();
  OUTLINED_FUNCTION_78_2(v7);
  OUTLINED_FUNCTION_24_2();
  OUTLINED_FUNCTION_58_6();
  v8 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_7_8(v8);
  if (!v9)
  {
    return OUTLINED_FUNCTION_192_0();
  }

  OUTLINED_FUNCTION_23_2(MEMORY[0x277D84F90]);
  v10 = OUTLINED_FUNCTION_191_0();
  result = OUTLINED_FUNCTION_1_16(v10);
  if (!v9)
  {
    return sub_26A0E48F0(v0, &qword_28036C7B8, &unk_26A425BF0);
  }

  return result;
}

uint64_t _ProtoSummaryItem_Standard.text1.setter()
{
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_107_1();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_4_3();
  v7 = type metadata accessor for _ProtoSummaryItem_Standard(v6);
  v8 = OUTLINED_FUNCTION_188_1(v7);
  v9 = *(v0 + v1);
  if ((v8 & 1) == 0)
  {
    v10 = type metadata accessor for _ProtoSummaryItem_Standard._StorageClass(0);
    OUTLINED_FUNCTION_100_0(v10);
    swift_allocObject();
    OUTLINED_FUNCTION_5_3();
    sub_26A18D9D4();
    OUTLINED_FUNCTION_42_1(v11);
  }

  OUTLINED_FUNCTION_189_1();
  v12 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_50_4(v12);
  OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_185_1();
  return swift_endAccess();
}

void _ProtoSummaryItem_Standard.text1.modify()
{
  OUTLINED_FUNCTION_76();
  v1 = OUTLINED_FUNCTION_48_6();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_32_0(v2);
  v3 = OUTLINED_FUNCTION_142_0();
  OUTLINED_FUNCTION_41(v3);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64));
  v6 = OUTLINED_FUNCTION_31_1(v5);
  v7 = type metadata accessor for _ProtoTextProperty(v6);
  OUTLINED_FUNCTION_14_8(v7);
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  v10 = OUTLINED_FUNCTION_51_3(v9);
  v11 = __swift_coroFrameAllocStub(v10);
  v12 = OUTLINED_FUNCTION_35_8(v11);
  OUTLINED_FUNCTION_78_2(v12);
  OUTLINED_FUNCTION_25_1();
  OUTLINED_FUNCTION_26_1();
  OUTLINED_FUNCTION_1_4();
  if (v13)
  {
    OUTLINED_FUNCTION_22_2(MEMORY[0x277D84F90]);
    v14 = OUTLINED_FUNCTION_190_1();
    OUTLINED_FUNCTION_0_24(v14);
    if (!v13)
    {
      sub_26A0E48F0(v0, &qword_28036C7B8, &unk_26A425BF0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_88();
    sub_26A1C2528();
  }

  OUTLINED_FUNCTION_75();
}

uint64_t _ProtoSummaryItem_Standard.hasText1.getter()
{
  OUTLINED_FUNCTION_19_0();
  v0 = OUTLINED_FUNCTION_133();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_78_2(v6);
  OUTLINED_FUNCTION_53_5();
  OUTLINED_FUNCTION_52_5();
  v7 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_9_11(v7);
  return OUTLINED_FUNCTION_109_1();
}

Swift::Void __swiftcall _ProtoSummaryItem_Standard.clearText1()()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_4_3();
  v7 = type metadata accessor for _ProtoSummaryItem_Standard(v6);
  v8 = OUTLINED_FUNCTION_187_1(v7);
  v9 = *(v0 + v1);
  if ((v8 & 1) == 0)
  {
    v10 = type metadata accessor for _ProtoSummaryItem_Standard._StorageClass(0);
    OUTLINED_FUNCTION_100_0(v10);
    swift_allocObject();
    OUTLINED_FUNCTION_5_3();
    sub_26A18D9D4();
    OUTLINED_FUNCTION_52_3(v11);
  }

  v12 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_51_4(v12);
  OUTLINED_FUNCTION_48_7();
  OUTLINED_FUNCTION_185_1();
  swift_endAccess();
}

uint64_t _ProtoSummaryItem_Standard.text2.getter()
{
  OUTLINED_FUNCTION_19_0();
  v1 = OUTLINED_FUNCTION_115();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_41(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v6);
  v7 = OUTLINED_FUNCTION_4_3();
  OUTLINED_FUNCTION_78_2(v7);
  OUTLINED_FUNCTION_24_2();
  OUTLINED_FUNCTION_58_6();
  v8 = type metadata accessor for _ProtoMultilineTextProperty(0);
  OUTLINED_FUNCTION_7_8(v8);
  if (!v9)
  {
    return OUTLINED_FUNCTION_192_0();
  }

  OUTLINED_FUNCTION_23_2(MEMORY[0x277D84F90]);
  v10 = OUTLINED_FUNCTION_191_0();
  result = OUTLINED_FUNCTION_1_16(v10);
  if (!v9)
  {
    return sub_26A0E48F0(v0, &qword_28036CAE0, &unk_26A4273F0);
  }

  return result;
}

uint64_t sub_26A173E04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t a6, uint64_t (*a7)(uint64_t))
{
  v9 = a5(0);
  OUTLINED_FUNCTION_41(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_141_0();
  OUTLINED_FUNCTION_12_2();
  sub_26A1C257C();
  return a7(v7);
}

uint64_t _ProtoSummaryItem_Standard.text2.setter()
{
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_107_1();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE0, &unk_26A4273F0);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_4_3();
  v7 = type metadata accessor for _ProtoSummaryItem_Standard(v6);
  v8 = OUTLINED_FUNCTION_188_1(v7);
  v9 = *(v0 + v1);
  if ((v8 & 1) == 0)
  {
    v10 = type metadata accessor for _ProtoSummaryItem_Standard._StorageClass(0);
    OUTLINED_FUNCTION_100_0(v10);
    swift_allocObject();
    OUTLINED_FUNCTION_5_3();
    sub_26A18D9D4();
    OUTLINED_FUNCTION_42_1(v11);
  }

  OUTLINED_FUNCTION_189_1();
  v12 = type metadata accessor for _ProtoMultilineTextProperty(0);
  OUTLINED_FUNCTION_50_4(v12);
  OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_185_1();
  return swift_endAccess();
}

void _ProtoSummaryItem_Standard.text2.modify()
{
  OUTLINED_FUNCTION_76();
  v1 = OUTLINED_FUNCTION_48_6();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_32_0(v2);
  v3 = OUTLINED_FUNCTION_142_0();
  OUTLINED_FUNCTION_41(v3);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64));
  v6 = OUTLINED_FUNCTION_31_1(v5);
  v7 = type metadata accessor for _ProtoMultilineTextProperty(v6);
  OUTLINED_FUNCTION_14_8(v7);
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  v10 = OUTLINED_FUNCTION_51_3(v9);
  v11 = __swift_coroFrameAllocStub(v10);
  v12 = OUTLINED_FUNCTION_35_8(v11);
  OUTLINED_FUNCTION_78_2(v12);
  OUTLINED_FUNCTION_25_1();
  OUTLINED_FUNCTION_26_1();
  OUTLINED_FUNCTION_1_4();
  if (v13)
  {
    OUTLINED_FUNCTION_22_2(MEMORY[0x277D84F90]);
    v14 = OUTLINED_FUNCTION_190_1();
    OUTLINED_FUNCTION_0_24(v14);
    if (!v13)
    {
      sub_26A0E48F0(v0, &qword_28036CAE0, &unk_26A4273F0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_88();
    sub_26A1C2528();
  }

  OUTLINED_FUNCTION_75();
}

uint64_t _ProtoSummaryItem_Standard.hasText2.getter()
{
  OUTLINED_FUNCTION_19_0();
  v0 = OUTLINED_FUNCTION_133();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_78_2(v6);
  OUTLINED_FUNCTION_53_5();
  OUTLINED_FUNCTION_52_5();
  v7 = type metadata accessor for _ProtoMultilineTextProperty(0);
  OUTLINED_FUNCTION_9_11(v7);
  return OUTLINED_FUNCTION_109_1();
}

Swift::Void __swiftcall _ProtoSummaryItem_Standard.clearText2()()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE0, &unk_26A4273F0);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_4_3();
  v7 = type metadata accessor for _ProtoSummaryItem_Standard(v6);
  v8 = OUTLINED_FUNCTION_187_1(v7);
  v9 = *(v0 + v1);
  if ((v8 & 1) == 0)
  {
    v10 = type metadata accessor for _ProtoSummaryItem_Standard._StorageClass(0);
    OUTLINED_FUNCTION_100_0(v10);
    swift_allocObject();
    OUTLINED_FUNCTION_5_3();
    sub_26A18D9D4();
    OUTLINED_FUNCTION_52_3(v11);
  }

  v12 = type metadata accessor for _ProtoMultilineTextProperty(0);
  OUTLINED_FUNCTION_51_4(v12);
  OUTLINED_FUNCTION_48_7();
  OUTLINED_FUNCTION_185_1();
  swift_endAccess();
}

uint64_t _ProtoSummaryItem_Standard.text3.getter()
{
  OUTLINED_FUNCTION_19_0();
  v1 = OUTLINED_FUNCTION_115();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_41(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v6);
  v7 = OUTLINED_FUNCTION_4_3();
  OUTLINED_FUNCTION_78_2(v7);
  OUTLINED_FUNCTION_24_2();
  OUTLINED_FUNCTION_58_6();
  v8 = type metadata accessor for _ProtoMultilineTextProperty(0);
  OUTLINED_FUNCTION_7_8(v8);
  if (!v9)
  {
    return OUTLINED_FUNCTION_192_0();
  }

  OUTLINED_FUNCTION_23_2(MEMORY[0x277D84F90]);
  v10 = OUTLINED_FUNCTION_191_0();
  result = OUTLINED_FUNCTION_1_16(v10);
  if (!v9)
  {
    return sub_26A0E48F0(v0, &qword_28036CAE0, &unk_26A4273F0);
  }

  return result;
}

uint64_t _ProtoSummaryItem_Standard.text3.setter()
{
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_107_1();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE0, &unk_26A4273F0);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_4_3();
  v7 = type metadata accessor for _ProtoSummaryItem_Standard(v6);
  v8 = OUTLINED_FUNCTION_188_1(v7);
  v9 = *(v0 + v1);
  if ((v8 & 1) == 0)
  {
    v10 = type metadata accessor for _ProtoSummaryItem_Standard._StorageClass(0);
    OUTLINED_FUNCTION_100_0(v10);
    swift_allocObject();
    OUTLINED_FUNCTION_5_3();
    sub_26A18D9D4();
    OUTLINED_FUNCTION_42_1(v11);
  }

  OUTLINED_FUNCTION_189_1();
  v12 = type metadata accessor for _ProtoMultilineTextProperty(0);
  OUTLINED_FUNCTION_50_4(v12);
  OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_185_1();
  return swift_endAccess();
}

void _ProtoSummaryItem_Standard.text3.modify()
{
  OUTLINED_FUNCTION_76();
  v1 = OUTLINED_FUNCTION_48_6();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_32_0(v2);
  v3 = OUTLINED_FUNCTION_142_0();
  OUTLINED_FUNCTION_41(v3);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64));
  v6 = OUTLINED_FUNCTION_31_1(v5);
  v7 = type metadata accessor for _ProtoMultilineTextProperty(v6);
  OUTLINED_FUNCTION_14_8(v7);
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  v10 = OUTLINED_FUNCTION_51_3(v9);
  v11 = __swift_coroFrameAllocStub(v10);
  v12 = OUTLINED_FUNCTION_35_8(v11);
  OUTLINED_FUNCTION_78_2(v12);
  OUTLINED_FUNCTION_25_1();
  OUTLINED_FUNCTION_26_1();
  OUTLINED_FUNCTION_1_4();
  if (v13)
  {
    OUTLINED_FUNCTION_22_2(MEMORY[0x277D84F90]);
    v14 = OUTLINED_FUNCTION_190_1();
    OUTLINED_FUNCTION_0_24(v14);
    if (!v13)
    {
      sub_26A0E48F0(v0, &qword_28036CAE0, &unk_26A4273F0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_88();
    sub_26A1C2528();
  }

  OUTLINED_FUNCTION_75();
}

uint64_t _ProtoSummaryItem_Standard.hasText3.getter()
{
  OUTLINED_FUNCTION_19_0();
  v0 = OUTLINED_FUNCTION_133();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_78_2(v6);
  OUTLINED_FUNCTION_53_5();
  OUTLINED_FUNCTION_52_5();
  v7 = type metadata accessor for _ProtoMultilineTextProperty(0);
  OUTLINED_FUNCTION_9_11(v7);
  return OUTLINED_FUNCTION_109_1();
}

Swift::Void __swiftcall _ProtoSummaryItem_Standard.clearText3()()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE0, &unk_26A4273F0);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_4_3();
  v7 = type metadata accessor for _ProtoSummaryItem_Standard(v6);
  v8 = OUTLINED_FUNCTION_187_1(v7);
  v9 = *(v0 + v1);
  if ((v8 & 1) == 0)
  {
    v10 = type metadata accessor for _ProtoSummaryItem_Standard._StorageClass(0);
    OUTLINED_FUNCTION_100_0(v10);
    swift_allocObject();
    OUTLINED_FUNCTION_5_3();
    sub_26A18D9D4();
    OUTLINED_FUNCTION_52_3(v11);
  }

  v12 = type metadata accessor for _ProtoMultilineTextProperty(0);
  OUTLINED_FUNCTION_51_4(v12);
  OUTLINED_FUNCTION_48_7();
  OUTLINED_FUNCTION_185_1();
  swift_endAccess();
}

uint64_t _ProtoSummaryItem_Standard.thumbnail.getter()
{
  OUTLINED_FUNCTION_19_0();
  v1 = OUTLINED_FUNCTION_115();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_41(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v6);
  v7 = OUTLINED_FUNCTION_4_3();
  OUTLINED_FUNCTION_78_2(v7);
  OUTLINED_FUNCTION_24_2();
  OUTLINED_FUNCTION_58_6();
  v8 = type metadata accessor for _ProtoVisualProperty();
  OUTLINED_FUNCTION_7_8(v8);
  if (!v9)
  {
    return OUTLINED_FUNCTION_192_0();
  }

  OUTLINED_FUNCTION_23_2(MEMORY[0x277D84F90]);
  v10 = OUTLINED_FUNCTION_191_0();
  result = OUTLINED_FUNCTION_1_16(v10);
  if (!v9)
  {
    return sub_26A0E48F0(v0, &qword_28036CAE8, &unk_26A426430);
  }

  return result;
}

uint64_t _ProtoSummaryItem_Standard.thumbnail.setter()
{
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_107_1();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE8, &unk_26A426430);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_4_3();
  v7 = type metadata accessor for _ProtoSummaryItem_Standard(v6);
  v8 = OUTLINED_FUNCTION_188_1(v7);
  v9 = *(v0 + v1);
  if ((v8 & 1) == 0)
  {
    v10 = type metadata accessor for _ProtoSummaryItem_Standard._StorageClass(0);
    OUTLINED_FUNCTION_100_0(v10);
    swift_allocObject();
    OUTLINED_FUNCTION_5_3();
    sub_26A18D9D4();
    OUTLINED_FUNCTION_42_1(v11);
  }

  OUTLINED_FUNCTION_189_1();
  v12 = type metadata accessor for _ProtoVisualProperty();
  OUTLINED_FUNCTION_50_4(v12);
  OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_185_1();
  return swift_endAccess();
}

void _ProtoSummaryItem_Standard.thumbnail.modify()
{
  OUTLINED_FUNCTION_76();
  v1 = OUTLINED_FUNCTION_48_6();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_32_0(v2);
  v3 = OUTLINED_FUNCTION_142_0();
  OUTLINED_FUNCTION_41(v3);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64));
  OUTLINED_FUNCTION_31_1(v5);
  v6 = type metadata accessor for _ProtoVisualProperty();
  OUTLINED_FUNCTION_14_8(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_51_3(v8);
  v10 = __swift_coroFrameAllocStub(v9);
  v11 = OUTLINED_FUNCTION_35_8(v10);
  OUTLINED_FUNCTION_78_2(v11);
  OUTLINED_FUNCTION_25_1();
  OUTLINED_FUNCTION_26_1();
  OUTLINED_FUNCTION_1_4();
  if (v12)
  {
    OUTLINED_FUNCTION_22_2(MEMORY[0x277D84F90]);
    v13 = OUTLINED_FUNCTION_190_1();
    OUTLINED_FUNCTION_0_24(v13);
    if (!v12)
    {
      sub_26A0E48F0(v0, &qword_28036CAE8, &unk_26A426430);
    }
  }

  else
  {
    OUTLINED_FUNCTION_88();
    sub_26A1C2528();
  }

  OUTLINED_FUNCTION_75();
}

uint64_t _ProtoSummaryItem_Standard.hasThumbnail.getter()
{
  OUTLINED_FUNCTION_19_0();
  v0 = OUTLINED_FUNCTION_133();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_78_2(v6);
  OUTLINED_FUNCTION_53_5();
  OUTLINED_FUNCTION_52_5();
  v7 = type metadata accessor for _ProtoVisualProperty();
  OUTLINED_FUNCTION_9_11(v7);
  return OUTLINED_FUNCTION_109_1();
}

Swift::Void __swiftcall _ProtoSummaryItem_Standard.clearThumbnail()()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE8, &unk_26A426430);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_4_3();
  v7 = type metadata accessor for _ProtoSummaryItem_Standard(v6);
  v8 = OUTLINED_FUNCTION_187_1(v7);
  v9 = *(v0 + v1);
  if ((v8 & 1) == 0)
  {
    v10 = type metadata accessor for _ProtoSummaryItem_Standard._StorageClass(0);
    OUTLINED_FUNCTION_100_0(v10);
    swift_allocObject();
    OUTLINED_FUNCTION_5_3();
    sub_26A18D9D4();
    OUTLINED_FUNCTION_52_3(v11);
  }

  v12 = type metadata accessor for _ProtoVisualProperty();
  OUTLINED_FUNCTION_51_4(v12);
  OUTLINED_FUNCTION_48_7();
  OUTLINED_FUNCTION_185_1();
  swift_endAccess();
}

uint64_t _ProtoSummaryItem_Standard.action.setter()
{
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_107_1();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_4_3();
  v7 = type metadata accessor for _ProtoSummaryItem_Standard(v6);
  v8 = OUTLINED_FUNCTION_188_1(v7);
  v9 = *(v0 + v1);
  if ((v8 & 1) == 0)
  {
    v10 = type metadata accessor for _ProtoSummaryItem_Standard._StorageClass(0);
    OUTLINED_FUNCTION_100_0(v10);
    swift_allocObject();
    OUTLINED_FUNCTION_5_3();
    sub_26A18D9D4();
    OUTLINED_FUNCTION_42_1(v11);
  }

  OUTLINED_FUNCTION_189_1();
  v12 = type metadata accessor for _ProtoActionProperty();
  OUTLINED_FUNCTION_50_4(v12);
  OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_185_1();
  return swift_endAccess();
}

void _ProtoSummaryItem_Standard.action.modify()
{
  OUTLINED_FUNCTION_76();
  v1 = OUTLINED_FUNCTION_48_6();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_32_0(v2);
  v3 = OUTLINED_FUNCTION_142_0();
  OUTLINED_FUNCTION_41(v3);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64));
  OUTLINED_FUNCTION_31_1(v5);
  v6 = type metadata accessor for _ProtoActionProperty();
  OUTLINED_FUNCTION_14_8(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_51_3(v8);
  v10 = __swift_coroFrameAllocStub(v9);
  v11 = OUTLINED_FUNCTION_35_8(v10);
  OUTLINED_FUNCTION_78_2(v11);
  OUTLINED_FUNCTION_25_1();
  OUTLINED_FUNCTION_26_1();
  OUTLINED_FUNCTION_1_4();
  if (v12)
  {
    OUTLINED_FUNCTION_54_5(MEMORY[0x277D84F90]);
    OUTLINED_FUNCTION_1_4();
    if (!v12)
    {
      sub_26A0E48F0(v0, &off_28036C7C0, &off_26A427400);
    }
  }

  else
  {
    OUTLINED_FUNCTION_88();
    sub_26A1C2528();
  }

  OUTLINED_FUNCTION_75();
}

uint64_t _ProtoSummaryItem_Standard.hasAction.getter()
{
  OUTLINED_FUNCTION_19_0();
  v0 = OUTLINED_FUNCTION_133();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_78_2(v6);
  OUTLINED_FUNCTION_53_5();
  OUTLINED_FUNCTION_52_5();
  v7 = type metadata accessor for _ProtoActionProperty();
  OUTLINED_FUNCTION_9_11(v7);
  return OUTLINED_FUNCTION_109_1();
}

Swift::Void __swiftcall _ProtoSummaryItem_Standard.clearAction()()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_4_3();
  v7 = type metadata accessor for _ProtoSummaryItem_Standard(v6);
  v8 = OUTLINED_FUNCTION_187_1(v7);
  v9 = *(v0 + v1);
  if ((v8 & 1) == 0)
  {
    v10 = type metadata accessor for _ProtoSummaryItem_Standard._StorageClass(0);
    OUTLINED_FUNCTION_100_0(v10);
    swift_allocObject();
    OUTLINED_FUNCTION_5_3();
    sub_26A18D9D4();
    OUTLINED_FUNCTION_52_3(v11);
  }

  v12 = type metadata accessor for _ProtoActionProperty();
  OUTLINED_FUNCTION_51_4(v12);
  OUTLINED_FUNCTION_48_7();
  OUTLINED_FUNCTION_185_1();
  swift_endAccess();
}

uint64_t _ProtoSummaryItem_Standard.text4.getter()
{
  OUTLINED_FUNCTION_19_0();
  v1 = OUTLINED_FUNCTION_115();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_41(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v6);
  v7 = OUTLINED_FUNCTION_4_3();
  OUTLINED_FUNCTION_78_2(v7);
  OUTLINED_FUNCTION_24_2();
  OUTLINED_FUNCTION_58_6();
  v8 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_7_8(v8);
  if (!v9)
  {
    return OUTLINED_FUNCTION_192_0();
  }

  OUTLINED_FUNCTION_23_2(MEMORY[0x277D84F90]);
  v10 = OUTLINED_FUNCTION_191_0();
  result = OUTLINED_FUNCTION_1_16(v10);
  if (!v9)
  {
    return sub_26A0E48F0(v0, &qword_28036C7B8, &unk_26A425BF0);
  }

  return result;
}

uint64_t _ProtoSummaryItem_Standard.text4.setter()
{
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_107_1();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_4_3();
  v7 = type metadata accessor for _ProtoSummaryItem_Standard(v6);
  v8 = OUTLINED_FUNCTION_188_1(v7);
  v9 = *(v0 + v1);
  if ((v8 & 1) == 0)
  {
    v10 = type metadata accessor for _ProtoSummaryItem_Standard._StorageClass(0);
    OUTLINED_FUNCTION_100_0(v10);
    swift_allocObject();
    OUTLINED_FUNCTION_5_3();
    sub_26A18D9D4();
    OUTLINED_FUNCTION_42_1(v11);
  }

  OUTLINED_FUNCTION_189_1();
  v12 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_50_4(v12);
  OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_185_1();
  return swift_endAccess();
}

void _ProtoSummaryItem_Standard.text4.modify()
{
  OUTLINED_FUNCTION_76();
  v1 = OUTLINED_FUNCTION_48_6();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_32_0(v2);
  v3 = OUTLINED_FUNCTION_142_0();
  OUTLINED_FUNCTION_41(v3);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64));
  v6 = OUTLINED_FUNCTION_31_1(v5);
  v7 = type metadata accessor for _ProtoTextProperty(v6);
  OUTLINED_FUNCTION_14_8(v7);
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  v10 = OUTLINED_FUNCTION_51_3(v9);
  v11 = __swift_coroFrameAllocStub(v10);
  v12 = OUTLINED_FUNCTION_35_8(v11);
  OUTLINED_FUNCTION_78_2(v12);
  OUTLINED_FUNCTION_25_1();
  OUTLINED_FUNCTION_26_1();
  OUTLINED_FUNCTION_1_4();
  if (v13)
  {
    OUTLINED_FUNCTION_22_2(MEMORY[0x277D84F90]);
    v14 = OUTLINED_FUNCTION_190_1();
    OUTLINED_FUNCTION_0_24(v14);
    if (!v13)
    {
      sub_26A0E48F0(v0, &qword_28036C7B8, &unk_26A425BF0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_88();
    sub_26A1C2528();
  }

  OUTLINED_FUNCTION_75();
}

uint64_t _ProtoSummaryItem_Standard.hasText4.getter()
{
  OUTLINED_FUNCTION_19_0();
  v0 = OUTLINED_FUNCTION_133();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_78_2(v6);
  OUTLINED_FUNCTION_53_5();
  OUTLINED_FUNCTION_52_5();
  v7 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_9_11(v7);
  return OUTLINED_FUNCTION_109_1();
}

Swift::Void __swiftcall _ProtoSummaryItem_Standard.clearText4()()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_4_3();
  v7 = type metadata accessor for _ProtoSummaryItem_Standard(v6);
  v8 = OUTLINED_FUNCTION_187_1(v7);
  v9 = *(v0 + v1);
  if ((v8 & 1) == 0)
  {
    v10 = type metadata accessor for _ProtoSummaryItem_Standard._StorageClass(0);
    OUTLINED_FUNCTION_100_0(v10);
    swift_allocObject();
    OUTLINED_FUNCTION_5_3();
    sub_26A18D9D4();
    OUTLINED_FUNCTION_52_3(v11);
  }

  v12 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_51_4(v12);
  OUTLINED_FUNCTION_48_7();
  OUTLINED_FUNCTION_185_1();
  swift_endAccess();
}

uint64_t sub_26A175360(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return _ProtoSummaryItem_Standard.componentName.setter();
}

uint64_t _ProtoSummaryItem_Standard.componentName.modify()
{
  v0 = OUTLINED_FUNCTION_41_7();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_20_11(v1);
  v3 = type metadata accessor for _ProtoSummaryItem_Standard(v2);
  OUTLINED_FUNCTION_42_6(v3);
  OUTLINED_FUNCTION_38_6();
  OUTLINED_FUNCTION_126_1();

  return OUTLINED_FUNCTION_133();
}

uint64_t sub_26A1754B8(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return _ProtoSummaryItem_Standard.linkIdentifier.setter();
}

uint64_t _ProtoSummaryItem_Standard.linkIdentifier.modify()
{
  v0 = OUTLINED_FUNCTION_41_7();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_20_11(v1);
  v3 = type metadata accessor for _ProtoSummaryItem_Standard(v2);
  OUTLINED_FUNCTION_42_6(v3);
  OUTLINED_FUNCTION_38_6();
  OUTLINED_FUNCTION_126_1();

  return OUTLINED_FUNCTION_133();
}

uint64_t _ProtoSummaryItem_ShortNumber.number.getter()
{
  OUTLINED_FUNCTION_19_0();
  v1 = OUTLINED_FUNCTION_115();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_41(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v6);
  v7 = OUTLINED_FUNCTION_4_3();
  OUTLINED_FUNCTION_61_4(v7);
  OUTLINED_FUNCTION_24_2();
  OUTLINED_FUNCTION_58_6();
  v8 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_7_8(v8);
  if (!v9)
  {
    return OUTLINED_FUNCTION_192_0();
  }

  OUTLINED_FUNCTION_23_2(MEMORY[0x277D84F90]);
  v10 = OUTLINED_FUNCTION_191_0();
  result = OUTLINED_FUNCTION_1_16(v10);
  if (!v9)
  {
    return sub_26A0E48F0(v0, &qword_28036C7B8, &unk_26A425BF0);
  }

  return result;
}

uint64_t _ProtoSummaryItem_ShortNumber.number.setter()
{
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_107_1();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_4_3();
  v7 = OUTLINED_FUNCTION_180_1(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    OUTLINED_FUNCTION_80_1();
    OUTLINED_FUNCTION_5_3();
    sub_26A190CC8();
    OUTLINED_FUNCTION_42_1(v9);
  }

  OUTLINED_FUNCTION_189_1();
  v10 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_50_4(v10);
  OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_185_1();
  return swift_endAccess();
}

void _ProtoSummaryItem_ShortNumber.number.modify()
{
  OUTLINED_FUNCTION_76();
  v2 = OUTLINED_FUNCTION_48_6();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_32_0(v3);
  v4 = OUTLINED_FUNCTION_142_0();
  OUTLINED_FUNCTION_41(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_31_1(v6);
  v8 = type metadata accessor for _ProtoTextProperty(v7);
  OUTLINED_FUNCTION_14_8(v8);
  v10 = __swift_coroFrameAllocStub(*(v9 + 64));
  v11 = OUTLINED_FUNCTION_51_3(v10);
  *(v1 + 48) = __swift_coroFrameAllocStub(v11);
  OUTLINED_FUNCTION_27_11();
  OUTLINED_FUNCTION_25_1();
  OUTLINED_FUNCTION_26_1();
  OUTLINED_FUNCTION_1_4();
  if (v12)
  {
    OUTLINED_FUNCTION_22_2(MEMORY[0x277D84F90]);
    v13 = OUTLINED_FUNCTION_190_1();
    OUTLINED_FUNCTION_0_24(v13);
    if (!v12)
    {
      sub_26A0E48F0(v0, &qword_28036C7B8, &unk_26A425BF0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_88();
    sub_26A1C2528();
  }

  OUTLINED_FUNCTION_75();
}

uint64_t _ProtoSummaryItem_ShortNumber.hasNumber.getter()
{
  OUTLINED_FUNCTION_19_0();
  v0 = OUTLINED_FUNCTION_133();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_61_4(v6);
  OUTLINED_FUNCTION_53_5();
  OUTLINED_FUNCTION_52_5();
  v7 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_9_11(v7);
  return OUTLINED_FUNCTION_109_1();
}

Swift::Void __swiftcall _ProtoSummaryItem_ShortNumber.clearNumber()()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_4_3();
  v7 = OUTLINED_FUNCTION_179_0(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    OUTLINED_FUNCTION_80_1();
    OUTLINED_FUNCTION_5_3();
    sub_26A190CC8();
    OUTLINED_FUNCTION_52_3(v9);
  }

  v10 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_51_4(v10);
  OUTLINED_FUNCTION_48_7();
  OUTLINED_FUNCTION_185_1();
  swift_endAccess();
}

uint64_t _ProtoSummaryItem_ShortNumber.text2.getter()
{
  OUTLINED_FUNCTION_19_0();
  v1 = OUTLINED_FUNCTION_115();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_41(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v6);
  v7 = OUTLINED_FUNCTION_4_3();
  OUTLINED_FUNCTION_61_4(v7);
  OUTLINED_FUNCTION_24_2();
  OUTLINED_FUNCTION_58_6();
  v8 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_7_8(v8);
  if (!v9)
  {
    return OUTLINED_FUNCTION_192_0();
  }

  OUTLINED_FUNCTION_23_2(MEMORY[0x277D84F90]);
  v10 = OUTLINED_FUNCTION_191_0();
  result = OUTLINED_FUNCTION_1_16(v10);
  if (!v9)
  {
    return sub_26A0E48F0(v0, &qword_28036C7B8, &unk_26A425BF0);
  }

  return result;
}

uint64_t _ProtoSummaryItem_ShortNumber.text2.setter()
{
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_107_1();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_4_3();
  v7 = OUTLINED_FUNCTION_180_1(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    OUTLINED_FUNCTION_80_1();
    OUTLINED_FUNCTION_5_3();
    sub_26A190CC8();
    OUTLINED_FUNCTION_42_1(v9);
  }

  OUTLINED_FUNCTION_189_1();
  v10 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_50_4(v10);
  OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_185_1();
  return swift_endAccess();
}

void _ProtoSummaryItem_ShortNumber.text2.modify()
{
  OUTLINED_FUNCTION_76();
  v2 = OUTLINED_FUNCTION_48_6();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_32_0(v3);
  v4 = OUTLINED_FUNCTION_142_0();
  OUTLINED_FUNCTION_41(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_31_1(v6);
  v8 = type metadata accessor for _ProtoTextProperty(v7);
  OUTLINED_FUNCTION_14_8(v8);
  v10 = __swift_coroFrameAllocStub(*(v9 + 64));
  v11 = OUTLINED_FUNCTION_51_3(v10);
  *(v1 + 48) = __swift_coroFrameAllocStub(v11);
  OUTLINED_FUNCTION_27_11();
  OUTLINED_FUNCTION_25_1();
  OUTLINED_FUNCTION_26_1();
  OUTLINED_FUNCTION_1_4();
  if (v12)
  {
    OUTLINED_FUNCTION_22_2(MEMORY[0x277D84F90]);
    v13 = OUTLINED_FUNCTION_190_1();
    OUTLINED_FUNCTION_0_24(v13);
    if (!v12)
    {
      sub_26A0E48F0(v0, &qword_28036C7B8, &unk_26A425BF0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_88();
    sub_26A1C2528();
  }

  OUTLINED_FUNCTION_75();
}

uint64_t _ProtoSummaryItem_ShortNumber.hasText2.getter()
{
  OUTLINED_FUNCTION_19_0();
  v0 = OUTLINED_FUNCTION_133();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_61_4(v6);
  OUTLINED_FUNCTION_53_5();
  OUTLINED_FUNCTION_52_5();
  v7 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_9_11(v7);
  return OUTLINED_FUNCTION_109_1();
}

Swift::Void __swiftcall _ProtoSummaryItem_ShortNumber.clearText2()()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_4_3();
  v7 = OUTLINED_FUNCTION_179_0(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    OUTLINED_FUNCTION_80_1();
    OUTLINED_FUNCTION_5_3();
    sub_26A190CC8();
    OUTLINED_FUNCTION_52_3(v9);
  }

  v10 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_51_4(v10);
  OUTLINED_FUNCTION_48_7();
  OUTLINED_FUNCTION_185_1();
  swift_endAccess();
}

uint64_t _ProtoSummaryItem_ShortNumber.text1.getter()
{
  OUTLINED_FUNCTION_19_0();
  v1 = OUTLINED_FUNCTION_115();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_41(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v6);
  v7 = OUTLINED_FUNCTION_4_3();
  OUTLINED_FUNCTION_61_4(v7);
  OUTLINED_FUNCTION_24_2();
  OUTLINED_FUNCTION_58_6();
  v8 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_7_8(v8);
  if (!v9)
  {
    return OUTLINED_FUNCTION_192_0();
  }

  OUTLINED_FUNCTION_23_2(MEMORY[0x277D84F90]);
  v10 = OUTLINED_FUNCTION_191_0();
  result = OUTLINED_FUNCTION_1_16(v10);
  if (!v9)
  {
    return sub_26A0E48F0(v0, &qword_28036C7B8, &unk_26A425BF0);
  }

  return result;
}

uint64_t _ProtoSummaryItem_ShortNumber.text1.setter()
{
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_107_1();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_4_3();
  v7 = OUTLINED_FUNCTION_180_1(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    OUTLINED_FUNCTION_80_1();
    OUTLINED_FUNCTION_5_3();
    sub_26A190CC8();
    OUTLINED_FUNCTION_42_1(v9);
  }

  OUTLINED_FUNCTION_189_1();
  v10 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_50_4(v10);
  OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_185_1();
  return swift_endAccess();
}

void _ProtoSummaryItem_ShortNumber.text1.modify()
{
  OUTLINED_FUNCTION_76();
  v2 = OUTLINED_FUNCTION_48_6();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_32_0(v3);
  v4 = OUTLINED_FUNCTION_142_0();
  OUTLINED_FUNCTION_41(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_31_1(v6);
  v8 = type metadata accessor for _ProtoTextProperty(v7);
  OUTLINED_FUNCTION_14_8(v8);
  v10 = __swift_coroFrameAllocStub(*(v9 + 64));
  v11 = OUTLINED_FUNCTION_51_3(v10);
  *(v1 + 48) = __swift_coroFrameAllocStub(v11);
  OUTLINED_FUNCTION_27_11();
  OUTLINED_FUNCTION_25_1();
  OUTLINED_FUNCTION_26_1();
  OUTLINED_FUNCTION_1_4();
  if (v12)
  {
    OUTLINED_FUNCTION_22_2(MEMORY[0x277D84F90]);
    v13 = OUTLINED_FUNCTION_190_1();
    OUTLINED_FUNCTION_0_24(v13);
    if (!v12)
    {
      sub_26A0E48F0(v0, &qword_28036C7B8, &unk_26A425BF0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_88();
    sub_26A1C2528();
  }

  OUTLINED_FUNCTION_75();
}

uint64_t _ProtoSummaryItem_ShortNumber.hasText1.getter()
{
  OUTLINED_FUNCTION_19_0();
  v0 = OUTLINED_FUNCTION_133();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_61_4(v6);
  OUTLINED_FUNCTION_53_5();
  OUTLINED_FUNCTION_52_5();
  v7 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_9_11(v7);
  return OUTLINED_FUNCTION_109_1();
}

Swift::Void __swiftcall _ProtoSummaryItem_ShortNumber.clearText1()()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_4_3();
  v7 = OUTLINED_FUNCTION_179_0(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    OUTLINED_FUNCTION_80_1();
    OUTLINED_FUNCTION_5_3();
    sub_26A190CC8();
    OUTLINED_FUNCTION_52_3(v9);
  }

  v10 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_51_4(v10);
  OUTLINED_FUNCTION_48_7();
  OUTLINED_FUNCTION_185_1();
  swift_endAccess();
}

uint64_t _ProtoSummaryItem_ShortNumber.text3.getter()
{
  OUTLINED_FUNCTION_19_0();
  v1 = OUTLINED_FUNCTION_115();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_41(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v6);
  v7 = OUTLINED_FUNCTION_4_3();
  OUTLINED_FUNCTION_61_4(v7);
  OUTLINED_FUNCTION_24_2();
  OUTLINED_FUNCTION_58_6();
  v8 = type metadata accessor for _ProtoMultilineTextProperty(0);
  OUTLINED_FUNCTION_7_8(v8);
  if (!v9)
  {
    return OUTLINED_FUNCTION_192_0();
  }

  OUTLINED_FUNCTION_23_2(MEMORY[0x277D84F90]);
  v10 = OUTLINED_FUNCTION_191_0();
  result = OUTLINED_FUNCTION_1_16(v10);
  if (!v9)
  {
    return sub_26A0E48F0(v0, &qword_28036CAE0, &unk_26A4273F0);
  }

  return result;
}

uint64_t _ProtoSummaryItem_ShortNumber.text3.setter()
{
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_107_1();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE0, &unk_26A4273F0);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_4_3();
  v7 = OUTLINED_FUNCTION_180_1(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    OUTLINED_FUNCTION_80_1();
    OUTLINED_FUNCTION_5_3();
    sub_26A190CC8();
    OUTLINED_FUNCTION_42_1(v9);
  }

  OUTLINED_FUNCTION_189_1();
  v10 = type metadata accessor for _ProtoMultilineTextProperty(0);
  OUTLINED_FUNCTION_50_4(v10);
  OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_185_1();
  return swift_endAccess();
}

void _ProtoSummaryItem_ShortNumber.text3.modify()
{
  OUTLINED_FUNCTION_76();
  v2 = OUTLINED_FUNCTION_48_6();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_32_0(v3);
  v4 = OUTLINED_FUNCTION_142_0();
  OUTLINED_FUNCTION_41(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_31_1(v6);
  v8 = type metadata accessor for _ProtoMultilineTextProperty(v7);
  OUTLINED_FUNCTION_14_8(v8);
  v10 = __swift_coroFrameAllocStub(*(v9 + 64));
  v11 = OUTLINED_FUNCTION_51_3(v10);
  *(v1 + 48) = __swift_coroFrameAllocStub(v11);
  OUTLINED_FUNCTION_27_11();
  OUTLINED_FUNCTION_25_1();
  OUTLINED_FUNCTION_26_1();
  OUTLINED_FUNCTION_1_4();
  if (v12)
  {
    OUTLINED_FUNCTION_22_2(MEMORY[0x277D84F90]);
    v13 = OUTLINED_FUNCTION_190_1();
    OUTLINED_FUNCTION_0_24(v13);
    if (!v12)
    {
      sub_26A0E48F0(v0, &qword_28036CAE0, &unk_26A4273F0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_88();
    sub_26A1C2528();
  }

  OUTLINED_FUNCTION_75();
}

uint64_t _ProtoSummaryItem_ShortNumber.hasText3.getter()
{
  OUTLINED_FUNCTION_19_0();
  v0 = OUTLINED_FUNCTION_133();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_61_4(v6);
  OUTLINED_FUNCTION_53_5();
  OUTLINED_FUNCTION_52_5();
  v7 = type metadata accessor for _ProtoMultilineTextProperty(0);
  OUTLINED_FUNCTION_9_11(v7);
  return OUTLINED_FUNCTION_109_1();
}

Swift::Void __swiftcall _ProtoSummaryItem_ShortNumber.clearText3()()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE0, &unk_26A4273F0);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_4_3();
  v7 = OUTLINED_FUNCTION_179_0(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    OUTLINED_FUNCTION_80_1();
    OUTLINED_FUNCTION_5_3();
    sub_26A190CC8();
    OUTLINED_FUNCTION_52_3(v9);
  }

  v10 = type metadata accessor for _ProtoMultilineTextProperty(0);
  OUTLINED_FUNCTION_51_4(v10);
  OUTLINED_FUNCTION_48_7();
  OUTLINED_FUNCTION_185_1();
  swift_endAccess();
}

uint64_t _ProtoSummaryItem_ShortNumber.text4.getter()
{
  OUTLINED_FUNCTION_19_0();
  v1 = OUTLINED_FUNCTION_115();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_41(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v6);
  v7 = OUTLINED_FUNCTION_4_3();
  OUTLINED_FUNCTION_61_4(v7);
  OUTLINED_FUNCTION_24_2();
  OUTLINED_FUNCTION_58_6();
  v8 = type metadata accessor for _ProtoMultilineTextProperty(0);
  OUTLINED_FUNCTION_7_8(v8);
  if (!v9)
  {
    return OUTLINED_FUNCTION_192_0();
  }

  OUTLINED_FUNCTION_23_2(MEMORY[0x277D84F90]);
  v10 = OUTLINED_FUNCTION_191_0();
  result = OUTLINED_FUNCTION_1_16(v10);
  if (!v9)
  {
    return sub_26A0E48F0(v0, &qword_28036CAE0, &unk_26A4273F0);
  }

  return result;
}

uint64_t _ProtoSummaryItem_ShortNumber.text4.setter()
{
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_107_1();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE0, &unk_26A4273F0);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_4_3();
  v7 = OUTLINED_FUNCTION_180_1(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    OUTLINED_FUNCTION_80_1();
    OUTLINED_FUNCTION_5_3();
    sub_26A190CC8();
    OUTLINED_FUNCTION_42_1(v9);
  }

  OUTLINED_FUNCTION_189_1();
  v10 = type metadata accessor for _ProtoMultilineTextProperty(0);
  OUTLINED_FUNCTION_50_4(v10);
  OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_185_1();
  return swift_endAccess();
}

void _ProtoSummaryItem_ShortNumber.text4.modify()
{
  OUTLINED_FUNCTION_76();
  v2 = OUTLINED_FUNCTION_48_6();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_32_0(v3);
  v4 = OUTLINED_FUNCTION_142_0();
  OUTLINED_FUNCTION_41(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_31_1(v6);
  v8 = type metadata accessor for _ProtoMultilineTextProperty(v7);
  OUTLINED_FUNCTION_14_8(v8);
  v10 = __swift_coroFrameAllocStub(*(v9 + 64));
  v11 = OUTLINED_FUNCTION_51_3(v10);
  *(v1 + 48) = __swift_coroFrameAllocStub(v11);
  OUTLINED_FUNCTION_27_11();
  OUTLINED_FUNCTION_25_1();
  OUTLINED_FUNCTION_26_1();
  OUTLINED_FUNCTION_1_4();
  if (v12)
  {
    OUTLINED_FUNCTION_22_2(MEMORY[0x277D84F90]);
    v13 = OUTLINED_FUNCTION_190_1();
    OUTLINED_FUNCTION_0_24(v13);
    if (!v12)
    {
      sub_26A0E48F0(v0, &qword_28036CAE0, &unk_26A4273F0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_88();
    sub_26A1C2528();
  }

  OUTLINED_FUNCTION_75();
}

uint64_t _ProtoSummaryItem_ShortNumber.hasText4.getter()
{
  OUTLINED_FUNCTION_19_0();
  v0 = OUTLINED_FUNCTION_133();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_61_4(v6);
  OUTLINED_FUNCTION_53_5();
  OUTLINED_FUNCTION_52_5();
  v7 = type metadata accessor for _ProtoMultilineTextProperty(0);
  OUTLINED_FUNCTION_9_11(v7);
  return OUTLINED_FUNCTION_109_1();
}

Swift::Void __swiftcall _ProtoSummaryItem_ShortNumber.clearText4()()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE0, &unk_26A4273F0);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_4_3();
  v7 = OUTLINED_FUNCTION_179_0(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    OUTLINED_FUNCTION_80_1();
    OUTLINED_FUNCTION_5_3();
    sub_26A190CC8();
    OUTLINED_FUNCTION_52_3(v9);
  }

  v10 = type metadata accessor for _ProtoMultilineTextProperty(0);
  OUTLINED_FUNCTION_51_4(v10);
  OUTLINED_FUNCTION_48_7();
  OUTLINED_FUNCTION_185_1();
  swift_endAccess();
}

uint64_t _ProtoSummaryItem_ShortNumber.text5.getter()
{
  OUTLINED_FUNCTION_19_0();
  v1 = OUTLINED_FUNCTION_115();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_41(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v6);
  v7 = OUTLINED_FUNCTION_4_3();
  OUTLINED_FUNCTION_61_4(v7);
  OUTLINED_FUNCTION_24_2();
  OUTLINED_FUNCTION_58_6();
  v8 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_7_8(v8);
  if (!v9)
  {
    return OUTLINED_FUNCTION_192_0();
  }

  OUTLINED_FUNCTION_23_2(MEMORY[0x277D84F90]);
  v10 = OUTLINED_FUNCTION_191_0();
  result = OUTLINED_FUNCTION_1_16(v10);
  if (!v9)
  {
    return sub_26A0E48F0(v0, &qword_28036C7B8, &unk_26A425BF0);
  }

  return result;
}

uint64_t _ProtoSummaryItem_ShortNumber.text5.setter()
{
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_107_1();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_4_3();
  v7 = OUTLINED_FUNCTION_180_1(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    OUTLINED_FUNCTION_80_1();
    OUTLINED_FUNCTION_5_3();
    sub_26A190CC8();
    OUTLINED_FUNCTION_42_1(v9);
  }

  OUTLINED_FUNCTION_189_1();
  v10 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_50_4(v10);
  OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_185_1();
  return swift_endAccess();
}

void _ProtoSummaryItem_ShortNumber.text5.modify()
{
  OUTLINED_FUNCTION_76();
  v2 = OUTLINED_FUNCTION_48_6();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_32_0(v3);
  v4 = OUTLINED_FUNCTION_142_0();
  OUTLINED_FUNCTION_41(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_31_1(v6);
  v8 = type metadata accessor for _ProtoTextProperty(v7);
  OUTLINED_FUNCTION_14_8(v8);
  v10 = __swift_coroFrameAllocStub(*(v9 + 64));
  v11 = OUTLINED_FUNCTION_51_3(v10);
  *(v1 + 48) = __swift_coroFrameAllocStub(v11);
  OUTLINED_FUNCTION_27_11();
  OUTLINED_FUNCTION_25_1();
  OUTLINED_FUNCTION_26_1();
  OUTLINED_FUNCTION_1_4();
  if (v12)
  {
    OUTLINED_FUNCTION_22_2(MEMORY[0x277D84F90]);
    v13 = OUTLINED_FUNCTION_190_1();
    OUTLINED_FUNCTION_0_24(v13);
    if (!v12)
    {
      sub_26A0E48F0(v0, &qword_28036C7B8, &unk_26A425BF0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_88();
    sub_26A1C2528();
  }

  OUTLINED_FUNCTION_75();
}

uint64_t _ProtoSummaryItem_ShortNumber.hasText5.getter()
{
  OUTLINED_FUNCTION_19_0();
  v0 = OUTLINED_FUNCTION_133();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_61_4(v6);
  OUTLINED_FUNCTION_53_5();
  OUTLINED_FUNCTION_52_5();
  v7 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_9_11(v7);
  return OUTLINED_FUNCTION_109_1();
}

Swift::Void __swiftcall _ProtoSummaryItem_ShortNumber.clearText5()()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_4_3();
  v7 = OUTLINED_FUNCTION_179_0(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    OUTLINED_FUNCTION_80_1();
    OUTLINED_FUNCTION_5_3();
    sub_26A190CC8();
    OUTLINED_FUNCTION_52_3(v9);
  }

  v10 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_51_4(v10);
  OUTLINED_FUNCTION_48_7();
  OUTLINED_FUNCTION_185_1();
  swift_endAccess();
}

uint64_t _ProtoSummaryItem_ShortNumber.thumbnail.getter()
{
  OUTLINED_FUNCTION_19_0();
  v1 = OUTLINED_FUNCTION_115();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_41(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v6);
  v7 = OUTLINED_FUNCTION_4_3();
  OUTLINED_FUNCTION_61_4(v7);
  OUTLINED_FUNCTION_24_2();
  OUTLINED_FUNCTION_58_6();
  v8 = type metadata accessor for _ProtoVisualProperty();
  OUTLINED_FUNCTION_7_8(v8);
  if (!v9)
  {
    return OUTLINED_FUNCTION_192_0();
  }

  OUTLINED_FUNCTION_23_2(MEMORY[0x277D84F90]);
  v10 = OUTLINED_FUNCTION_191_0();
  result = OUTLINED_FUNCTION_1_16(v10);
  if (!v9)
  {
    return sub_26A0E48F0(v0, &qword_28036CAE8, &unk_26A426430);
  }

  return result;
}

uint64_t _ProtoSummaryItem_ShortNumber.thumbnail.setter()
{
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_107_1();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE8, &unk_26A426430);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_4_3();
  v7 = OUTLINED_FUNCTION_180_1(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    OUTLINED_FUNCTION_80_1();
    OUTLINED_FUNCTION_5_3();
    sub_26A190CC8();
    OUTLINED_FUNCTION_42_1(v9);
  }

  OUTLINED_FUNCTION_189_1();
  v10 = type metadata accessor for _ProtoVisualProperty();
  OUTLINED_FUNCTION_50_4(v10);
  OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_185_1();
  return swift_endAccess();
}

void _ProtoSummaryItem_ShortNumber.thumbnail.modify()
{
  OUTLINED_FUNCTION_76();
  v2 = OUTLINED_FUNCTION_48_6();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_32_0(v3);
  v4 = OUTLINED_FUNCTION_142_0();
  OUTLINED_FUNCTION_41(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  OUTLINED_FUNCTION_31_1(v6);
  v7 = type metadata accessor for _ProtoVisualProperty();
  OUTLINED_FUNCTION_14_8(v7);
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  v10 = OUTLINED_FUNCTION_51_3(v9);
  *(v1 + 48) = __swift_coroFrameAllocStub(v10);
  OUTLINED_FUNCTION_27_11();
  OUTLINED_FUNCTION_25_1();
  OUTLINED_FUNCTION_26_1();
  OUTLINED_FUNCTION_1_4();
  if (v11)
  {
    OUTLINED_FUNCTION_22_2(MEMORY[0x277D84F90]);
    v12 = OUTLINED_FUNCTION_190_1();
    OUTLINED_FUNCTION_0_24(v12);
    if (!v11)
    {
      sub_26A0E48F0(v0, &qword_28036CAE8, &unk_26A426430);
    }
  }

  else
  {
    OUTLINED_FUNCTION_88();
    sub_26A1C2528();
  }

  OUTLINED_FUNCTION_75();
}

uint64_t _ProtoSummaryItem_ShortNumber.hasThumbnail.getter()
{
  OUTLINED_FUNCTION_19_0();
  v0 = OUTLINED_FUNCTION_133();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_61_4(v6);
  OUTLINED_FUNCTION_53_5();
  OUTLINED_FUNCTION_52_5();
  v7 = type metadata accessor for _ProtoVisualProperty();
  OUTLINED_FUNCTION_9_11(v7);
  return OUTLINED_FUNCTION_109_1();
}

Swift::Void __swiftcall _ProtoSummaryItem_ShortNumber.clearThumbnail()()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE8, &unk_26A426430);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_4_3();
  v7 = OUTLINED_FUNCTION_179_0(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    OUTLINED_FUNCTION_80_1();
    OUTLINED_FUNCTION_5_3();
    sub_26A190CC8();
    OUTLINED_FUNCTION_52_3(v9);
  }

  v10 = type metadata accessor for _ProtoVisualProperty();
  OUTLINED_FUNCTION_51_4(v10);
  OUTLINED_FUNCTION_48_7();
  OUTLINED_FUNCTION_185_1();
  swift_endAccess();
}

uint64_t _ProtoSummaryItem_ShortNumber.action.setter()
{
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_107_1();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_4_3();
  v7 = OUTLINED_FUNCTION_180_1(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    OUTLINED_FUNCTION_80_1();
    OUTLINED_FUNCTION_5_3();
    sub_26A190CC8();
    OUTLINED_FUNCTION_42_1(v9);
  }

  OUTLINED_FUNCTION_189_1();
  v10 = type metadata accessor for _ProtoActionProperty();
  OUTLINED_FUNCTION_50_4(v10);
  OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_185_1();
  return swift_endAccess();
}

void _ProtoSummaryItem_ShortNumber.action.modify()
{
  OUTLINED_FUNCTION_76();
  v2 = OUTLINED_FUNCTION_48_6();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_32_0(v3);
  v4 = OUTLINED_FUNCTION_142_0();
  OUTLINED_FUNCTION_41(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  OUTLINED_FUNCTION_31_1(v6);
  v7 = type metadata accessor for _ProtoActionProperty();
  OUTLINED_FUNCTION_14_8(v7);
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  v10 = OUTLINED_FUNCTION_51_3(v9);
  *(v1 + 48) = __swift_coroFrameAllocStub(v10);
  OUTLINED_FUNCTION_27_11();
  OUTLINED_FUNCTION_25_1();
  OUTLINED_FUNCTION_26_1();
  OUTLINED_FUNCTION_1_4();
  if (v11)
  {
    OUTLINED_FUNCTION_54_5(MEMORY[0x277D84F90]);
    OUTLINED_FUNCTION_1_4();
    if (!v11)
    {
      sub_26A0E48F0(v0, &off_28036C7C0, &off_26A427400);
    }
  }

  else
  {
    OUTLINED_FUNCTION_88();
    sub_26A1C2528();
  }

  OUTLINED_FUNCTION_75();
}

uint64_t _ProtoSummaryItem_ShortNumber.hasAction.getter()
{
  OUTLINED_FUNCTION_19_0();
  v0 = OUTLINED_FUNCTION_133();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_61_4(v6);
  OUTLINED_FUNCTION_53_5();
  OUTLINED_FUNCTION_52_5();
  v7 = type metadata accessor for _ProtoActionProperty();
  OUTLINED_FUNCTION_9_11(v7);
  return OUTLINED_FUNCTION_109_1();
}

Swift::Void __swiftcall _ProtoSummaryItem_ShortNumber.clearAction()()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_4_3();
  v7 = OUTLINED_FUNCTION_179_0(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    OUTLINED_FUNCTION_80_1();
    OUTLINED_FUNCTION_5_3();
    sub_26A190CC8();
    OUTLINED_FUNCTION_52_3(v9);
  }

  v10 = type metadata accessor for _ProtoActionProperty();
  OUTLINED_FUNCTION_51_4(v10);
  OUTLINED_FUNCTION_48_7();
  OUTLINED_FUNCTION_185_1();
  swift_endAccess();
}

uint64_t sub_26A177880(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return _ProtoSummaryItem_ShortNumber.componentName.setter();
}

uint64_t _ProtoSummaryItem_ShortNumber.componentName.modify()
{
  v0 = OUTLINED_FUNCTION_41_7();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_20_11(v1);
  v3 = type metadata accessor for _ProtoSummaryItem_ShortNumber(v2);
  OUTLINED_FUNCTION_42_6(v3);
  OUTLINED_FUNCTION_38_6();
  OUTLINED_FUNCTION_126_1();

  return OUTLINED_FUNCTION_133();
}

uint64_t sub_26A1779D8(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return _ProtoSummaryItem_ShortNumber.linkIdentifier.setter();
}

uint64_t _ProtoSummaryItem_ShortNumber.linkIdentifier.modify()
{
  v0 = OUTLINED_FUNCTION_41_7();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_20_11(v1);
  v3 = type metadata accessor for _ProtoSummaryItem_ShortNumber(v2);
  OUTLINED_FUNCTION_42_6(v3);
  OUTLINED_FUNCTION_38_6();
  OUTLINED_FUNCTION_126_1();

  return OUTLINED_FUNCTION_133();
}

uint64_t _ProtoSummaryItem_ShortNumber.text6.getter()
{
  OUTLINED_FUNCTION_19_0();
  v1 = OUTLINED_FUNCTION_115();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_41(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v6);
  v7 = OUTLINED_FUNCTION_4_3();
  OUTLINED_FUNCTION_61_4(v7);
  OUTLINED_FUNCTION_24_2();
  OUTLINED_FUNCTION_58_6();
  v8 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_7_8(v8);
  if (!v9)
  {
    return OUTLINED_FUNCTION_192_0();
  }

  OUTLINED_FUNCTION_23_2(MEMORY[0x277D84F90]);
  v10 = OUTLINED_FUNCTION_191_0();
  result = OUTLINED_FUNCTION_1_16(v10);
  if (!v9)
  {
    return sub_26A0E48F0(v0, &qword_28036C7B8, &unk_26A425BF0);
  }

  return result;
}

uint64_t _ProtoSummaryItem_ShortNumber.text6.setter()
{
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_107_1();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_4_3();
  v7 = OUTLINED_FUNCTION_180_1(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    OUTLINED_FUNCTION_80_1();
    OUTLINED_FUNCTION_5_3();
    sub_26A190CC8();
    OUTLINED_FUNCTION_42_1(v9);
  }

  OUTLINED_FUNCTION_189_1();
  v10 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_50_4(v10);
  OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_185_1();
  return swift_endAccess();
}

void _ProtoSummaryItem_ShortNumber.text6.modify()
{
  OUTLINED_FUNCTION_76();
  v2 = OUTLINED_FUNCTION_48_6();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_32_0(v3);
  v4 = OUTLINED_FUNCTION_142_0();
  OUTLINED_FUNCTION_41(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_31_1(v6);
  v8 = type metadata accessor for _ProtoTextProperty(v7);
  OUTLINED_FUNCTION_14_8(v8);
  v10 = __swift_coroFrameAllocStub(*(v9 + 64));
  v11 = OUTLINED_FUNCTION_51_3(v10);
  *(v1 + 48) = __swift_coroFrameAllocStub(v11);
  OUTLINED_FUNCTION_27_11();
  OUTLINED_FUNCTION_25_1();
  OUTLINED_FUNCTION_26_1();
  OUTLINED_FUNCTION_1_4();
  if (v12)
  {
    OUTLINED_FUNCTION_22_2(MEMORY[0x277D84F90]);
    v13 = OUTLINED_FUNCTION_190_1();
    OUTLINED_FUNCTION_0_24(v13);
    if (!v12)
    {
      sub_26A0E48F0(v0, &qword_28036C7B8, &unk_26A425BF0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_88();
    sub_26A1C2528();
  }

  OUTLINED_FUNCTION_75();
}

uint64_t _ProtoSummaryItem_ShortNumber.hasText6.getter()
{
  OUTLINED_FUNCTION_19_0();
  v0 = OUTLINED_FUNCTION_133();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_61_4(v6);
  OUTLINED_FUNCTION_53_5();
  OUTLINED_FUNCTION_52_5();
  v7 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_9_11(v7);
  return OUTLINED_FUNCTION_109_1();
}

Swift::Void __swiftcall _ProtoSummaryItem_ShortNumber.clearText6()()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_4_3();
  v7 = OUTLINED_FUNCTION_179_0(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    OUTLINED_FUNCTION_80_1();
    OUTLINED_FUNCTION_5_3();
    sub_26A190CC8();
    OUTLINED_FUNCTION_52_3(v9);
  }

  v10 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_51_4(v10);
  OUTLINED_FUNCTION_48_7();
  OUTLINED_FUNCTION_185_1();
  swift_endAccess();
}

uint64_t sub_26A177FC4@<X0>(uint64_t (*a1)(void)@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
  v8 = *(a1(0) + 20);
  if (*a2 != -1)
  {
    OUTLINED_FUNCTION_125();
    swift_once();
  }

  *(a4 + v8) = *a3;
}

uint64_t _ProtoSummaryItem_Text.text2.getter()
{
  OUTLINED_FUNCTION_19_0();
  v1 = OUTLINED_FUNCTION_115();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_41(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v6);
  v7 = OUTLINED_FUNCTION_4_3();
  OUTLINED_FUNCTION_77_1(v7);
  OUTLINED_FUNCTION_24_2();
  OUTLINED_FUNCTION_58_6();
  v8 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_7_8(v8);
  if (!v9)
  {
    return OUTLINED_FUNCTION_192_0();
  }

  OUTLINED_FUNCTION_23_2(MEMORY[0x277D84F90]);
  v10 = OUTLINED_FUNCTION_191_0();
  result = OUTLINED_FUNCTION_1_16(v10);
  if (!v9)
  {
    return sub_26A0E48F0(v0, &qword_28036C7B8, &unk_26A425BF0);
  }

  return result;
}

void _ProtoSummaryItem_Text.text2.modify()
{
  OUTLINED_FUNCTION_76();
  v1 = OUTLINED_FUNCTION_48_6();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_32_0(v2);
  v3 = OUTLINED_FUNCTION_142_0();
  OUTLINED_FUNCTION_41(v3);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64));
  v6 = OUTLINED_FUNCTION_31_1(v5);
  v7 = type metadata accessor for _ProtoTextProperty(v6);
  OUTLINED_FUNCTION_14_8(v7);
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  v10 = OUTLINED_FUNCTION_51_3(v9);
  v11 = __swift_coroFrameAllocStub(v10);
  v12 = OUTLINED_FUNCTION_35_8(v11);
  OUTLINED_FUNCTION_77_1(v12);
  OUTLINED_FUNCTION_25_1();
  OUTLINED_FUNCTION_26_1();
  OUTLINED_FUNCTION_1_4();
  if (v13)
  {
    OUTLINED_FUNCTION_22_2(MEMORY[0x277D84F90]);
    v14 = OUTLINED_FUNCTION_190_1();
    OUTLINED_FUNCTION_0_24(v14);
    if (!v13)
    {
      sub_26A0E48F0(v0, &qword_28036C7B8, &unk_26A425BF0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_88();
    sub_26A1C2528();
  }

  OUTLINED_FUNCTION_75();
}

uint64_t _ProtoSummaryItem_Text.hasText2.getter()
{
  OUTLINED_FUNCTION_19_0();
  v0 = OUTLINED_FUNCTION_133();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_77_1(v6);
  OUTLINED_FUNCTION_53_5();
  OUTLINED_FUNCTION_52_5();
  v7 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_9_11(v7);
  return OUTLINED_FUNCTION_109_1();
}

uint64_t _ProtoSummaryItem_Text.text1.getter()
{
  OUTLINED_FUNCTION_19_0();
  v1 = OUTLINED_FUNCTION_115();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_41(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v6);
  v7 = OUTLINED_FUNCTION_4_3();
  OUTLINED_FUNCTION_77_1(v7);
  OUTLINED_FUNCTION_24_2();
  OUTLINED_FUNCTION_58_6();
  v8 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_7_8(v8);
  if (!v9)
  {
    return OUTLINED_FUNCTION_192_0();
  }

  OUTLINED_FUNCTION_23_2(MEMORY[0x277D84F90]);
  v10 = OUTLINED_FUNCTION_191_0();
  result = OUTLINED_FUNCTION_1_16(v10);
  if (!v9)
  {
    return sub_26A0E48F0(v0, &qword_28036C7B8, &unk_26A425BF0);
  }

  return result;
}

void _ProtoSummaryItem_Text.text1.modify()
{
  OUTLINED_FUNCTION_76();
  v1 = OUTLINED_FUNCTION_48_6();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_32_0(v2);
  v3 = OUTLINED_FUNCTION_142_0();
  OUTLINED_FUNCTION_41(v3);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64));
  v6 = OUTLINED_FUNCTION_31_1(v5);
  v7 = type metadata accessor for _ProtoTextProperty(v6);
  OUTLINED_FUNCTION_14_8(v7);
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  v10 = OUTLINED_FUNCTION_51_3(v9);
  v11 = __swift_coroFrameAllocStub(v10);
  v12 = OUTLINED_FUNCTION_35_8(v11);
  OUTLINED_FUNCTION_77_1(v12);
  OUTLINED_FUNCTION_25_1();
  OUTLINED_FUNCTION_26_1();
  OUTLINED_FUNCTION_1_4();
  if (v13)
  {
    OUTLINED_FUNCTION_22_2(MEMORY[0x277D84F90]);
    v14 = OUTLINED_FUNCTION_190_1();
    OUTLINED_FUNCTION_0_24(v14);
    if (!v13)
    {
      sub_26A0E48F0(v0, &qword_28036C7B8, &unk_26A425BF0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_88();
    sub_26A1C2528();
  }

  OUTLINED_FUNCTION_75();
}

uint64_t _ProtoSummaryItem_Text.hasText1.getter()
{
  OUTLINED_FUNCTION_19_0();
  v0 = OUTLINED_FUNCTION_133();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_77_1(v6);
  OUTLINED_FUNCTION_53_5();
  OUTLINED_FUNCTION_52_5();
  v7 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_9_11(v7);
  return OUTLINED_FUNCTION_109_1();
}