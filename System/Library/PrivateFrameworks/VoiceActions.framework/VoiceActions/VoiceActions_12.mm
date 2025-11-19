uint64_t sub_2722EF92C()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = v0[4];
  v4 = v0[6];

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  sub_2721F40F0((v0 + 8), &qword_280882B78, qword_272383E90);
  v5 = v0[13];

  return swift_deallocClassInstance();
}

uint64_t sub_2722EF9B4(uint64_t a1)
{
  v4 = *(**v1 + 168);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_272219D80;

  return v8(a1);
}

uint64_t sub_2722EFB1C()
{
  v2 = *(**v0 + 192);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_272219D80;

  return v6();
}

uint64_t sub_2722EFC30()
{
  v2 = *(**v0 + 200);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_27230277C;

  return v6();
}

uint64_t sub_2722EFD44()
{
  v1 = OBJC_IVAR____TtC12VoiceActions25VANRNameRecognizerBuilder_validationErrors;
  swift_beginAccess();
  v2 = *(v0 + v1);
}

uint64_t sub_2722EFD8C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12VoiceActions25VANRNameRecognizerBuilder_validationErrors;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_2722EFE50(__int128 *a1)
{
  v164 = type metadata accessor for VANRValidationError(0);
  v163 = *(v164 - 8);
  v3 = *(v163 + 64);
  MEMORY[0x28223BE20](v164);
  v170 = &v153 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v177 = sub_272376EBC();
  v5 = *(v177 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v177);
  v169 = &v153 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v193 = sub_27237728C();
  v8 = *(v193 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v193);
  v12 = &v153 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v178 = &v153 - v14;
  MEMORY[0x28223BE20](v13);
  v180 = &v153 - v15;
  v16 = type metadata accessor for VANRCollectedEnrollment(0);
  v153 = *(v16 - 8);
  v17 = *(v153 + 64);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  v183 = &v153 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v18);
  v173 = &v153 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v24 = &v153 - v23;
  MEMORY[0x28223BE20](v22);
  v192 = &v153 - v25;
  v160 = type metadata accessor for VANRNameConfiguration(0);
  v26 = *(v160 - 8);
  v27 = *(v26 + 64);
  v28 = MEMORY[0x28223BE20](v160);
  v179 = &v153 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x28223BE20](v28);
  v162 = &v153 - v31;
  v32 = MEMORY[0x28223BE20](v30);
  v172 = &v153 - v33;
  MEMORY[0x28223BE20](v32);
  v191 = &v153 - v34;
  v35 = type metadata accessor for VARuntimeParameters();
  v36 = *(*(v35 - 8) + 64);
  MEMORY[0x28223BE20](v35 - 8);
  v38 = &v153 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = MEMORY[0x277D84F90];
  *(v1 + 64) = sub_2723015D0(MEMORY[0x277D84F90]);
  v184 = (v1 + 64);
  *(v1 + 72) = sub_2723017B8(v39);
  v171 = (v1 + 72);
  *(v1 + 80) = 0;
  *(v1 + OBJC_IVAR____TtC12VoiceActions25VANRNameRecognizerBuilder_validationErrors) = v39;
  v40 = *a1;
  v41 = a1[2];
  *(v1 + 32) = a1[1];
  *(v1 + 48) = v41;
  *(v1 + 16) = v40;
  VARuntimeParameters.init()(v38);
  v42 = sub_2723019C4(v38, v1 + OBJC_IVAR____TtC12VoiceActions25VANRNameRecognizerBuilder_runtimeParams, type metadata accessor for VARuntimeParameters);
  v43 = *(*v1 + 264);
  v174 = v1;
  v43(&v194, v42);
  v45 = v194;
  v157 = *(v194 + 16);
  if (v157)
  {
    v46 = 0;
    v47 = 0;
    v48 = (*(v26 + 80) + 32) & ~*(v26 + 80);
    v161 = OBJC_IVAR____TtC12VoiceActions25VANRNameRecognizerBuilder_validationErrors;
    v156 = v194 + v48;
    v189 = (v8 + 8);
    v190 = (v8 + 16);
    v165 = (v5 + 8);
    *&v44 = 134218242;
    v167 = v44;
    *&v44 = 136315650;
    v159 = v44;
    v168 = v12;
    v49 = v178;
    v50 = v180;
    v166 = v24;
    v51 = v192;
    v155 = v26;
    v154 = v194;
    while (v46 < *(v45 + 16))
    {
      v52 = *(v26 + 72);
      v158 = v46;
      v176 = v52;
      v53 = v156 + v52 * v46;
      v54 = v191;
      sub_27230260C(v53, v191, type metadata accessor for VANRNameConfiguration);
      v55 = *(v54 + *(v160 + 24));
      v56 = *(v55 + 16);
      if (v56)
      {
        v175 = *(v160 + 28);
        v57 = v55 + ((*(v153 + 80) + 32) & ~*(v153 + 80));
        v185 = *(v153 + 72);
        while (1)
        {
          v181 = v57;
          v182 = v56;
          sub_27230260C(v57, v51, type metadata accessor for VANRCollectedEnrollment);
          v194 = 0x656D6C6C6F726E65;
          v195 = 0xEB000000005F746ELL;
          v196 = v47;
          v58 = sub_27237862C();
          MEMORY[0x2743C4AD0](v58);

          v60 = v194;
          v59 = v195;
          v61 = sub_2722C389C();
          v62 = *v190;
          v186 = v61;
          v187 = v62;
          (v62)(v50);
          sub_27230260C(v51, v24, type metadata accessor for VANRCollectedEnrollment);
          v63 = sub_27237725C();
          v64 = sub_272377E7C();
          if (os_log_type_enabled(v63, v64))
          {
            v65 = swift_slowAlloc();
            v66 = swift_slowAlloc();
            v194 = v66;
            *v65 = v167;
            *(v65 + 4) = v47;
            *(v65 + 12) = 2080;
            sub_272376E5C();
            sub_272302674(&qword_280881BA8, MEMORY[0x277CC95F0]);
            v67 = sub_27237862C();
            v69 = v68;
            sub_2723025AC(v24, type metadata accessor for VANRCollectedEnrollment);
            v70 = sub_2721FFD04(v67, v69, &v194);

            *(v65 + 14) = v70;
            _os_log_impl(&dword_2721E4000, v63, v64, "Enrollment number: %ld - Name configuration UUID: %s", v65, 0x16u);
            sub_2722039C8(v66);
            v71 = v66;
            v49 = v178;
            MEMORY[0x2743C69C0](v71, -1, -1);
            MEMORY[0x2743C69C0](v65, -1, -1);

            v72 = *v189;
            v73 = v180;
          }

          else
          {

            sub_2723025AC(v24, type metadata accessor for VANRCollectedEnrollment);
            v72 = *v189;
            v73 = v50;
          }

          v188 = v72;
          v72(v73, v193);
          v187(v49, v186, v193);
          v74 = v173;
          sub_27230260C(v192, v173, type metadata accessor for VANRCollectedEnrollment);
          v75 = sub_27237725C();
          v76 = sub_272377E7C();
          if (os_log_type_enabled(v75, v76))
          {
            v77 = swift_slowAlloc();
            v78 = swift_slowAlloc();
            v194 = v78;
            *v77 = v167;
            *(v77 + 4) = v47;
            *(v77 + 12) = 2080;
            sub_272376E5C();
            v79 = v74;
            sub_272302674(&qword_280881BA8, MEMORY[0x277CC95F0]);
            v80 = sub_27237862C();
            v82 = v81;
            sub_2723025AC(v79, type metadata accessor for VANRCollectedEnrollment);
            v83 = v80;
            v24 = v166;
            v84 = sub_2721FFD04(v83, v82, &v194);

            *(v77 + 14) = v84;
            _os_log_impl(&dword_2721E4000, v75, v76, "Enrollment number: %ld - Collected enrollment UUID: %s", v77, 0x16u);
            sub_2722039C8(v78);
            v85 = v78;
            v49 = v178;
            MEMORY[0x2743C69C0](v85, -1, -1);
            MEMORY[0x2743C69C0](v77, -1, -1);
          }

          else
          {

            sub_2723025AC(v74, type metadata accessor for VANRCollectedEnrollment);
          }

          v188(v49, v193);
          v86 = v168;
          v87 = v184;
          swift_beginAccess();
          v88 = v172;
          sub_27230260C(v191, v172, type metadata accessor for VANRNameConfiguration);

          v89 = *v87;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v196 = *v87;
          v91 = v196;
          *v87 = 0x8000000000000000;
          v92 = sub_27220038C(v60, v59);
          v94 = v91[2];
          v95 = (v93 & 1) == 0;
          v96 = __OFADD__(v94, v95);
          v97 = v94 + v95;
          if (v96)
          {
            break;
          }

          v98 = v93;
          if (v91[3] >= v97)
          {
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v150 = v92;
              sub_272300E38();
              v92 = v150;
            }
          }

          else
          {
            sub_2723002EC(v97, isUniquelyReferenced_nonNull_native);
            v92 = sub_27220038C(v60, v59);
            if ((v98 & 1) != (v99 & 1))
            {
              goto LABEL_51;
            }
          }

          v100 = v192;
          v101 = v196;
          if (v98)
          {
            sub_272302710(v88, v196[7] + v92 * v176, type metadata accessor for VANRNameConfiguration);
          }

          else
          {
            v196[(v92 >> 6) + 8] |= 1 << v92;
            v102 = (v101[6] + 16 * v92);
            *v102 = v60;
            v102[1] = v59;
            sub_2723019C4(v88, v101[7] + v92 * v176, type metadata accessor for VANRNameConfiguration);
            v103 = v101[2];
            v96 = __OFADD__(v103, 1);
            v104 = v103 + 1;
            if (v96)
            {
              goto LABEL_48;
            }

            v101[2] = v104;
          }

          *v184 = v101;
          swift_endAccess();
          v105 = v171;
          swift_beginAccess();
          sub_27230260C(v100, v183, type metadata accessor for VANRCollectedEnrollment);
          v106 = *v105;
          v107 = swift_isUniquelyReferenced_nonNull_native();
          v196 = *v105;
          v108 = v196;
          *v105 = 0x8000000000000000;
          v109 = sub_27220038C(v60, v59);
          v111 = v108[2];
          v112 = (v110 & 1) == 0;
          v96 = __OFADD__(v111, v112);
          v113 = v111 + v112;
          if (v96)
          {
            goto LABEL_46;
          }

          v114 = v110;
          if (v108[3] >= v113)
          {
            if ((v107 & 1) == 0)
            {
              v151 = v109;
              sub_272300BE0();
              v109 = v151;
            }
          }

          else
          {
            sub_2722FFF74(v113, v107);
            v109 = sub_27220038C(v60, v59);
            if ((v114 & 1) != (v115 & 1))
            {
              goto LABEL_51;
            }
          }

          v51 = v192;
          v116 = v196;
          if (v114)
          {
            sub_272302710(v183, v196[7] + v109 * v185, type metadata accessor for VANRCollectedEnrollment);
          }

          else
          {
            v196[(v109 >> 6) + 8] |= 1 << v109;
            v117 = (v116[6] + 16 * v109);
            *v117 = v60;
            v117[1] = v59;
            sub_2723019C4(v183, v116[7] + v109 * v185, type metadata accessor for VANRCollectedEnrollment);
            v118 = v116[2];
            v96 = __OFADD__(v118, 1);
            v119 = v118 + 1;
            if (v96)
            {
              goto LABEL_49;
            }

            v116[2] = v119;
          }

          *v105 = v116;
          swift_endAccess();
          v120 = v179;
          if (v47 == 0x7FFFFFFFFFFFFFFFLL)
          {
            goto LABEL_47;
          }

          v121 = v169;
          sub_272376E6C();
          sub_272302674(&qword_280882BA8, MEMORY[0x277CC9788]);
          v122 = v177;
          v123 = sub_2723777DC();
          (*v165)(v121, v122);
          if ((v123 & 1) == 0)
          {
            v187(v86, v186, v193);
            v124 = v191;
            v125 = v162;
            sub_27230260C(v191, v162, type metadata accessor for VANRNameConfiguration);
            sub_27230260C(v124, v120, type metadata accessor for VANRNameConfiguration);
            v126 = sub_27237725C();
            v127 = sub_272377E8C();
            if (os_log_type_enabled(v126, v127))
            {
              v128 = swift_slowAlloc();
              v129 = swift_slowAlloc();
              v194 = v129;
              *v128 = v159;
              sub_272376E5C();
              sub_272302674(&qword_280881BA8, MEMORY[0x277CC95F0]);
              v130 = sub_27237862C();
              v132 = v131;
              sub_2723025AC(v125, type metadata accessor for VANRNameConfiguration);
              v133 = sub_2721FFD04(v130, v132, &v194);

              *(v128 + 4) = v133;
              *(v128 + 12) = 2080;
              v134 = *(v160 + 28);
              sub_272302674(&qword_280882BC8, MEMORY[0x277CC9788]);
              v135 = sub_27237862C();
              v137 = v136;
              v49 = v178;
              sub_2723025AC(v179, type metadata accessor for VANRNameConfiguration);
              v138 = sub_2721FFD04(v135, v137, &v194);

              *(v128 + 14) = v138;
              *(v128 + 22) = 2080;
              v139 = MEMORY[0x2743C4C60](&unk_28818E500, MEMORY[0x277D837D0]);
              v141 = sub_2721FFD04(v139, v140, &v194);

              *(v128 + 24) = v141;
              _os_log_impl(&dword_2721E4000, v126, v127, "Name %s untested locale: %s. We have only tested %s", v128, 0x20u);
              swift_arrayDestroy();
              v142 = v129;
              v51 = v192;
              MEMORY[0x2743C69C0](v142, -1, -1);
              MEMORY[0x2743C69C0](v128, -1, -1);
            }

            else
            {

              sub_2723025AC(v120, type metadata accessor for VANRNameConfiguration);
              sub_2723025AC(v125, type metadata accessor for VANRNameConfiguration);
            }

            v188(v86, v193);
            v143 = sub_272376E5C();
            (*(*(v143 - 8) + 16))(v170, v191, v143);
            swift_storeEnumTagMultiPayload();
            v144 = v174;
            v145 = v161;
            swift_beginAccess();
            v146 = *(v144 + v145);
            v147 = swift_isUniquelyReferenced_nonNull_native();
            *(v144 + v145) = v146;
            v24 = v166;
            if ((v147 & 1) == 0)
            {
              v146 = sub_2722FFD78(0, v146[2] + 1, 1, v146);
              *(v174 + v145) = v146;
            }

            v149 = v146[2];
            v148 = v146[3];
            if (v149 >= v148 >> 1)
            {
              v146 = sub_2722FFD78(v148 > 1, v149 + 1, 1, v146);
            }

            v146[2] = v149 + 1;
            sub_2723019C4(v170, v146 + ((*(v163 + 80) + 32) & ~*(v163 + 80)) + *(v163 + 72) * v149, type metadata accessor for VANRValidationError);
            *(v174 + v145) = v146;
            swift_endAccess();
          }

          sub_2723025AC(v51, type metadata accessor for VANRCollectedEnrollment);
          v57 = v181 + v185;
          v47 = (v47 + 1);
          v56 = v182 - 1;
          v50 = v180;
          if (v182 == 1)
          {
            goto LABEL_3;
          }
        }

        __break(1u);
LABEL_46:
        __break(1u);
LABEL_47:
        __break(1u);
LABEL_48:
        __break(1u);
LABEL_49:
        __break(1u);
        break;
      }

LABEL_3:
      v46 = v158 + 1;
      sub_2723025AC(v191, type metadata accessor for VANRNameConfiguration);
      v26 = v155;
      v45 = v154;
      if (v46 == v157)
      {
        goto LABEL_44;
      }
    }

    __break(1u);
LABEL_51:
    result = sub_2723786BC();
    __break(1u);
  }

  else
  {
LABEL_44:

    return v174;
  }

  return result;
}

uint64_t sub_2722F113C()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  return swift_unknownObjectRetain();
}

uint64_t sub_2722F1164()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);
  return swift_unknownObjectRetain();
}

uint64_t static VANRNameRecognizerBuilder.buildNameRecognizer(systemConfig:userConfig:delegate:errorDelegate:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v37 = a4;
  v38 = a6;
  v40 = a7;
  v11 = sub_27237728C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v37 - v17;
  v19 = *a2;
  v20 = *(*a1 + 352);
  v39 = a5;
  v21 = v19;
  swift_unknownObjectRetain();

  v41 = a3;
  v22 = swift_unknownObjectRetain();
  LOBYTE(a2) = v20(v22);
  v23 = sub_2722C389C();
  v24 = *(v12 + 16);
  if (a2)
  {
    v24(v18, v23, v11);
    v25 = sub_27237725C();
    v26 = sub_272377E7C();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_2721E4000, v25, v26, "Returning a VANRNameRecognizer that reconstructs on start()", v27, 2u);
      MEMORY[0x2743C69C0](v27, -1, -1);
    }

    (*(v12 + 8))(v18, v11);
    v28 = type metadata accessor for VANRNameRecognizerBuilderRebuilding();
    v29 = swift_allocObject();
    *(v29 + 80) = 0u;
    *(v29 + 96) = 0u;
    *(v29 + 64) = 0u;
    *(v29 + 16) = a1;
    *(v29 + 24) = v21;
    v31 = v37;
    v30 = v38;
    *(v29 + 32) = v41;
    *(v29 + 40) = v31;
    *(v29 + 48) = v39;
    *(v29 + 56) = v30;
    v44 = 0;
    v42 = 0u;
    v43 = 0u;
    swift_beginAccess();

    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    sub_27221D3B4(&v42, v29 + 64, &qword_280882B78, qword_272383E90);
    swift_endAccess();
    v32 = v40;
    v40[3] = v28;
    v32[4] = &off_28818E6B8;
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    *v32 = v29;
  }

  else
  {
    v24(v16, v23, v11);
    v34 = sub_27237725C();
    v35 = sub_272377E7C();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&dword_2721E4000, v34, v35, "Returning a VANRNameRecognizer that will start() and stop() based on the underlying VAKeywordSpotter", v36, 2u);
      MEMORY[0x2743C69C0](v36, -1, -1);
    }

    (*(v12 + 8))(v16, v11);
    *&v42 = a1;
    *(&v42 + 1) = v21;
    *&v43 = v41;
    *(&v43 + 1) = v37;
    v44 = v39;
    v45 = v38;
    sub_2722EE954(&v42, v40);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }

  return result;
}

uint64_t static VANRNameRecognizerBuilder.validate(systemConfig:userConfig:)(uint64_t a1, uint64_t *a2)
{
  v4 = sub_2721F065C(&qword_280882B88, &unk_272383EB0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = type metadata accessor for VANRValidationError(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v8 = *a2;
  *&v17[0] = a1;
  *(&v17[0] + 1) = v8;
  v9 = type metadata accessor for VANRNameRecognizerBuilder(0);
  memset(&v17[1], 0, 32);
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  v12 = swift_allocObject();
  swift_bridgeObjectRetain_n();
  swift_retain_n();
  v13 = sub_2722EFE50(v17);
  v12[80] = 1;
  (*(*v12 + 288))(v17, v13);
  v14 = sub_2722039C8(v17);
  v15 = (*(*v12 + 224))(v14);

  return v15;
}

void sub_2722F18D8(uint64_t *a1@<X8>)
{
  v3 = *(*(*v1 + 256))();
  (*(v3 + 376))(&v4);

  if (v4 == 3)
  {
    sub_2722F19B4(a1);
  }

  else
  {
    sub_2722F2674(a1);
  }
}

void sub_2722F19B4(uint64_t *a1@<X8>)
{
  v3 = v1;
  v93 = a1;
  v4 = sub_27237728C();
  v92 = *(v4 - 8);
  v5 = *(v92 + 64);
  MEMORY[0x28223BE20](v4);
  v94 = v90 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = sub_272376EBC();
  v97 = *(v98 - 8);
  v7 = *(v97 + 64);
  MEMORY[0x28223BE20](v98);
  v99 = v90 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = type metadata accessor for VARuntimeParameters();
  v9 = *(*(v96 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v96);
  v91 = v90 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = v90 - v12;
  v14 = sub_272376D5C();
  v101 = *(v14 - 8);
  v15 = *(v101 + 64);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = v90 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = (*(*v1 + 280))(v16);
  v95 = v4;
  v102 = v13;
  if (!v19)
  {
    type metadata accessor for VANRErrorDelegateDefault();
    v19 = swift_allocObject();
  }

  v105[16] = v19;
  v20 = (*v1 + 256);
  v21 = *v20;
  v22 = v20;
  v23 = (*v20)();
  v24 = (*(*v23 + 640))(v23);

  v104 = v22;
  if (v24)
  {
    type metadata accessor for VANRDebugInfo(0);
    v26 = sub_272315248();

    v28 = *(v21)(v27);
    v29 = (*(v28 + 1176))();
    if (v2)
    {
      swift_unknownObjectRelease();

      return;
    }

    v103 = v21;
    v55 = v29;
    v56 = v30;

    v57 = (*(*v26 + 264))(v55, v56);
    sub_272318968(v57);
    (*(*v26 + 312))(v18);
    v100 = 0;
    (*(v101 + 8))(v18, v14);

    v31 = v26;
  }

  else
  {
    v103 = v21;
    v100 = v2;
    v31 = 0;
  }

  (*(*v3 + 272))(v25);
  v33 = v32;
  swift_beginAccess();
  v34 = v3[8];
  swift_beginAccess();
  v35 = v3[9];
  v36 = v3[2];
  v37 = type metadata accessor for VANRDelegateBridge(0);
  v38 = *(v37 + 48);
  v39 = *(v37 + 52);
  v40 = swift_allocObject();
  *(v40 + 3) = 0;
  swift_unknownObjectWeakInit();
  *(v40 + 5) = 0;
  swift_unknownObjectWeakInit();
  v41 = OBJC_IVAR____TtC12VoiceActions18VANRDelegateBridge_lastActivated;
  v42 = sub_27237832C();
  (*(*(v42 - 8) + 56))(&v40[v41], 1, 1, v42);

  sub_27237833C();
  swift_beginAccess();
  *(v40 + 3) = v33;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  *(v40 + 6) = v34;
  *(v40 + 7) = v35;
  *(v40 + 8) = v36;
  *(v40 + 9) = v31;
  type metadata accessor for VASpeechAPISpotterV2();
  v43 = swift_retain_n();
  v44 = v103;
  v45 = *(v103)(v43);
  v46 = (*(v45 + 496))();

  v47 = v100;
  v48 = VASpeechAPISpotterV2.__allocating_init(delegate:asrDelegate:speechDetectorDelegate:stringMatchingStrategy:)(v40, v40, 0, v46);
  if (v47)
  {
    swift_unknownObjectRelease();

    return;
  }

  v49 = v48;
  v50 = v102;
  (*((*MEMORY[0x277D85000] & *v48) + 0xC0))();
  v51 = v3 + OBJC_IVAR____TtC12VoiceActions25VANRNameRecognizerBuilder_runtimeParams;
  swift_beginAccess();
  v102 = v51;
  sub_272302710(v50, v51, type metadata accessor for VARuntimeParameters);
  swift_endAccess();
  v52 = v3[8];
  v53 = *(v52 + 16);
  if (v53)
  {
    v101 = v31;
    v54 = sub_2722702A8(v53, 0);
    v100 = sub_2722DD9D8(v105, v54 + 4, v53, v52);
    v90[2] = v105[2];
    v90[1] = v105[3];
    v90[0] = v105[4];

    sub_272270484();
    if (v100 != v53)
    {
      __break(1u);
      return;
    }

    v31 = v101;
  }

  else
  {
    v54 = MEMORY[0x277D84F90];
  }

  v58 = v102;
  v59 = *v102;
  *v102 = v54;

  v61 = (v44)(v60);
  swift_beginAccess();
  (*(*v61 + 1168))(v58);
  swift_endAccess();

  v63 = v99;
  (*(*v3 + 320))(v62);
  swift_beginAccess();
  (*(v97 + 40))(&v58[*(v96 + 108)], v63, v98);
  swift_endAccess();
  v64 = *(*v3 + 312);
  v65 = v49;
  v64();
  v66 = sub_2722C389C();
  v67 = v92;
  v68 = v94;
  (*(v92 + 16))(v94, v66, v95);

  v69 = sub_27237725C();
  LODWORD(v61) = sub_272377E7C();

  LODWORD(v104) = v61;
  v70 = v61;
  v71 = v69;
  if (os_log_type_enabled(v69, v70))
  {
    v72 = swift_slowAlloc();
    v100 = v72;
    v103 = swift_slowAlloc();
    v105[0] = v103;
    *v72 = 136315138;
    v73 = *(v102 + 10);

    sub_2721F065C(&qword_2808817F8, &unk_27237CA80);
    v74 = sub_27237773C();
    v101 = v31;
    v75 = v74;
    v76 = v67;
    v78 = v77;

    v79 = sub_2721FFD04(v75, v78, v105);

    v80 = v100;
    *(v100 + 4) = v79;
    v81 = v102;
    v82 = v80;
    _os_log_impl(&dword_2721E4000, v71, v104, "%s", v80, 0xCu);
    v83 = v103;
    sub_2722039C8(v103);
    MEMORY[0x2743C69C0](v83, -1, -1);
    MEMORY[0x2743C69C0](v82, -1, -1);

    (*(v76 + 8))(v94, v95);
  }

  else
  {

    (*(v67 + 8))(v68, v95);
    v81 = v102;
  }

  v84 = v91;
  sub_27230260C(v81, v91, type metadata accessor for VARuntimeParameters);
  v85 = type metadata accessor for VANRSpotterBridge(0);
  v86 = *(v85 + 48);
  v87 = *(v85 + 52);
  v88 = swift_allocObject();
  *(v88 + 16) = v65;
  sub_2723019C4(v84, v88 + OBJC_IVAR____TtC12VoiceActions17VANRSpotterBridge_runtimeParams, type metadata accessor for VARuntimeParameters);
  *(v88 + OBJC_IVAR____TtC12VoiceActions17VANRSpotterBridge_kwsDelegate) = v40;
  v89 = v93;
  v93[3] = v85;
  v89[4] = &off_28818E680;
  swift_unknownObjectRelease();

  *v89 = v88;
}

void *sub_2722F25E4(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    goto LABEL_4;
  }

  v3 = sub_2722702A8(*(a1 + 16), 0);
  v4 = sub_2722DD9D8(&v6, v3 + 4, v2, a1);
  sub_272270484();
  if (v4 != v2)
  {
    __break(1u);
LABEL_4:

    return MEMORY[0x277D84F90];
  }

  return v3;
}

void sub_2722F2674(uint64_t *a1@<X8>)
{
  v491 = a1;
  v496 = sub_272376EBC();
  v495 = *(v496 - 8);
  v3 = *(v495 + 64);
  MEMORY[0x28223BE20](v496);
  v497 = &v461 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for VASingleEnrollmentData();
  v489 = *(v5 - 8);
  v6 = *(v489 + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v488 = &v461 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v485 = &v461 - v9;
  v494 = type metadata accessor for VARuntimeParameters();
  v10 = *(*(v494 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v494);
  v490 = &v461 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v498 = &v461 - v14;
  MEMORY[0x28223BE20](v13);
  v16 = &v461 - v15;
  v502 = sub_272376D5C();
  v501 = *(v502 - 8);
  v17 = *(v501 + 64);
  MEMORY[0x28223BE20](v502);
  v500 = &v461 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v511 = type metadata accessor for VANRValidationError(0);
  v510 = *(v511 - 8);
  v19 = *(v510 + 64);
  v20 = MEMORY[0x28223BE20](v511);
  v509 = (&v461 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v20);
  v514 = (&v461 - v22);
  v524 = sub_27237728C();
  v508 = *(v524 - 8);
  v23 = v508[8];
  v24 = MEMORY[0x28223BE20](v524);
  v493 = &v461 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x28223BE20](v24);
  v487 = &v461 - v27;
  v28 = MEMORY[0x28223BE20](v26);
  v484 = &v461 - v29;
  v30 = MEMORY[0x28223BE20](v28);
  v483 = &v461 - v31;
  v32 = MEMORY[0x28223BE20](v30);
  v486 = &v461 - v33;
  v34 = MEMORY[0x28223BE20](v32);
  v492 = &v461 - v35;
  v36 = MEMORY[0x28223BE20](v34);
  v38 = &v461 - v37;
  v39 = MEMORY[0x28223BE20](v36);
  v41 = &v461 - v40;
  v42 = MEMORY[0x28223BE20](v39);
  *&v506 = &v461 - v43;
  v44 = MEMORY[0x28223BE20](v42);
  *&v505 = &v461 - v45;
  v46 = MEMORY[0x28223BE20](v44);
  v507 = &v461 - v47;
  v48 = MEMORY[0x28223BE20](v46);
  v522 = &v461 - v49;
  MEMORY[0x28223BE20](v48);
  v523 = &v461 - v50;
  v521 = type metadata accessor for VANRCollectedEnrollment(0);
  v518 = *(v521 - 8);
  v51 = v518[8];
  v52 = MEMORY[0x28223BE20](v521);
  v517 = &v461 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = MEMORY[0x28223BE20](v52);
  v516 = &v461 - v55;
  MEMORY[0x28223BE20](v54);
  v526 = (&v461 - v56);
  v57 = type metadata accessor for VANRNameConfiguration(0);
  v513 = *(v57 - 8);
  v58 = v513[8];
  v59 = MEMORY[0x28223BE20](v57 - 8);
  v515 = &v461 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = MEMORY[0x28223BE20](v59);
  v525 = &v461 - v62;
  MEMORY[0x28223BE20](v61);
  v512 = (&v461 - v63);
  v64 = sub_2721F065C(&qword_280882BD0, &unk_272384178);
  v65 = *(*(v64 - 8) + 64);
  v66 = MEMORY[0x28223BE20](v64 - 8);
  v520 = &v461 - ((v67 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = MEMORY[0x28223BE20](v66);
  v519 = (&v461 - v69);
  v527 = (*v1 + 256);
  v70 = *v527;
  v71 = *(*v527)(v68);
  (*(v71 + 376))(v537);

  v72 = sub_2722D07AC(v537[0], 4u);
  type metadata accessor for VAConfiguration();
  v503 = v16;
  v499 = v38;
  v504 = v41;
  if (v72)
  {
    v73 = static VAConfiguration.buildForVADShortPredictionWindow()();
  }

  else
  {
    v73 = static VAConfiguration.buildForFlexibleA2Av3()();
  }

  v74 = v73;
  type metadata accessor for VASilenceModel();
  v75 = *((*MEMORY[0x277D85000] & *v74) + 0xE8);
  v76 = v74;
  v77 = v75();
  v79 = v78;

  _s12VoiceActions19VASpeechBiasOptionsO010defaultForaB0ACyFZ_0(v537);
  LOBYTE(v534) = v537[0];
  v80 = sub_27228DC9C(v77, v79, &v534);
  v538 = v2;
  if (v2)
  {
    goto LABEL_9;
  }

  v481 = v5;
  v482 = v80;
  type metadata accessor for VAFeatureExtract();
  v81 = VAFeatureExtract.__allocating_init()();
  v82 = type metadata accessor for VAA2AVerifierModelDTW();
  v83 = sub_27229CFD0();
  v84 = *v70();
  (*(v84 + 376))(&v531);

  if (sub_2722D07AC(v531, 1u) & 1) != 0 || (v85 = v70(), (*(*v85 + 376))(&v531), , (sub_2722D07AC(v531, 2u)))
  {
    v86 = type metadata accessor for VAA2AAudioEncoderModelV3();
    sub_27225A39C(v529);
    v530[0] = v529[0];
    v87 = v538;
    v88 = VAA2AAudioEncoderModelV3.__allocating_init(computeUnits:)(v530);
    v538 = v87;
    if (v87)
    {
LABEL_8:

LABEL_9:

      return;
    }

    *(&v532 + 1) = v86;
    v533 = &protocol witness table for VAA2AAudioEncoderModelV3;
    *&v531 = v88;
    sub_2721F41B4(&v531, v537);
    v535 = v82;
    v536 = &protocol witness table for VAA2AVerifierModelDTW;
    v534 = v83;
    v89 = swift_retain_n();
    v90 = *(v70)(v89);
    (*(v90 + 376))(&v531);

    v91 = sub_2722D07AC(v531, 2u);
    (*(*v83 + 288))(v91 & 1);
    v92 = v83;
  }

  else
  {
    v99 = v70();
    (*(*v99 + 376))(&v531);

    if (sub_2722D07AC(v531, 0))
    {
      v100 = type metadata accessor for VAA2AAudioEncoderModelV3();
      sub_27225A39C(v529);
      v530[0] = v529[0];
      v101 = v538;
      v102 = VAA2AAudioEncoderModelV3.__allocating_init(computeUnits:)(v530);
      v538 = v101;
      if (v101)
      {
        goto LABEL_8;
      }

      *(&v532 + 1) = v100;
      v533 = &protocol witness table for VAA2AAudioEncoderModelV3;
      *&v531 = v102;
      sub_2721F41B4(&v531, v537);
      v103 = type metadata accessor for VAA2AVerifierModelV3();
      v104 = *v70();
      (*(v104 + 400))(&v531);

      LOBYTE(v529[0]) = v531;
      v105 = v538;
      v106 = VAA2AVerifierModelV3.__allocating_init(computeUnits:)(v529);
      v538 = v105;
      if (v105)
      {
        sub_2722039C8(v537);
        goto LABEL_8;
      }

      v92 = v106;
      v535 = v103;
      v536 = &protocol witness table for VAA2AVerifierModelV3;
      v534 = v106;

      v251 = *(v70)(v250);
      v252 = (*(v251 + 424))();

      if (v252)
      {
        type metadata accessor for VAResultGeneratorVerifier();
        *(&v532 + 1) = v103;
        v533 = &protocol witness table for VAA2AVerifierModelV3;
        *&v531 = v92;
        v92 = VAResultGeneratorVerifier.__allocating_init(subVerifier:config:)(&v531, v76);
      }
    }

    else
    {
      v114 = v70();
      (*(*v114 + 376))(&v531);

      if ((sub_2722D07AC(v531, 4u) & 1) == 0)
      {
        *&v531 = 0;
        *(&v531 + 1) = 0xE000000000000000;
        sub_27237820C();
        v120 = MEMORY[0x2743C4AD0](0xD000000000000027, 0x800000027238F880);
        v121 = *(v70)(v120);
        (*(v121 + 376))(v529);

        sub_27237836C();
        v122 = v531;
        sub_2722032B4();
        v123 = swift_allocError();
        *v124 = v122;
        v538 = v123;
        swift_willThrow();
        goto LABEL_8;
      }

      v115 = type metadata accessor for VANoopEncoder();
      v116 = sub_2722043D8();
      v537[3] = v115;
      v537[4] = &protocol witness table for VANoopEncoder;
      v537[0] = v116;
      v117 = type metadata accessor for VAVADVerifier();
      v92 = sub_272204C60();
      v535 = v117;
      v536 = &protocol witness table for VAVADVerifier;
      v534 = v92;

      v119 = *(v70)(v118);
      (*(v119 + 1080))(0);
    }
  }

  type metadata accessor for VAFeatureExtractingEncoder();
  sub_27221629C(v537, &v531);
  v93 = v76;
  v94 = v81;
  v95 = v482;

  v96 = sub_2721F7EE4();
  v97 = v538;
  v98 = VAFeatureExtractingEncoder.__allocating_init(subEncoder:featureExtractor:vadModel:config:useCMVN:)(&v531, v94, v95, v93, v96 & 1);
  v538 = v97;
  if (v97)
  {

LABEL_13:

LABEL_14:
    sub_2722039C8(v537);
    sub_2722039C8(&v534);
    return;
  }

  v465 = v94;
  v466 = v98;
  v107 = type metadata accessor for VAA2ABuilderEnrollerDelegate();
  v108 = sub_27227B020();
  *(&v532 + 1) = v107;
  v533 = &off_28817F048;
  *&v531 = v108;

  v110 = v528;
  v111 = *(v70)(v109);
  (*(v111 + 400))(v529);

  v530[0] = v529[0];
  v112 = v538;
  v113 = VAA2ABuildEnrollmentFactoryV3(delegate:computeUnits:)(&v531);
  v538 = v112;
  if (v112)
  {

    sub_2722039C8(v537);
    sub_2722039C8(&v534);
    sub_2721F40F0(&v531, &qword_280882228, &qword_27237F4D0);
    return;
  }

  v461 = v93;
  v472 = v70;
  v463 = v108;
  v462 = v92;
  v471 = v113;
  v464 = v83;
  sub_2721F40F0(&v531, &qword_280882228, &qword_27237F4D0);
  v477 = sub_27229D258(MEMORY[0x277D84F90]);
  swift_beginAccess();
  v125 = *(v110 + 8);
  v126 = *(v125 + 64);
  v470 = v125 + 64;
  v127 = 1 << *(v125 + 32);
  v128 = -1;
  if (v127 < 64)
  {
    v128 = ~(-1 << v127);
  }

  v129 = v128 & v126;
  v468 = v125;

  v130 = swift_beginAccess();
  v131 = 0;
  v132 = (v127 + 63) >> 6;
  v478 = (v508 + 2);
  v473 = (v508 + 1);
  *&v133 = 136315394;
  v469 = v133;
  v134 = v524;
  v135 = v520;
  for (i = v132; ; v132 = i)
  {
    if (!v129)
    {
      if (v132 <= v131 + 1)
      {
        v137 = v131 + 1;
      }

      else
      {
        v137 = v132;
      }

      v138 = v137 - 1;
      while (1)
      {
        v136 = v131 + 1;
        if (__OFADD__(v131, 1))
        {
          break;
        }

        if (v136 >= v132)
        {
          v202 = sub_2721F065C(&qword_280882BD8, &qword_272384188);
          (*(*(v202 - 8) + 56))(v135, 1, 1, v202);
          v129 = 0;
          v131 = v138;
          goto LABEL_41;
        }

        v129 = *(v470 + 8 * v136);
        v131 = (v131 + 1);
        if (v129)
        {
          v131 = v136;
          goto LABEL_40;
        }
      }

      __break(1u);
      goto LABEL_113;
    }

    v136 = v131;
LABEL_40:
    v139 = __clz(__rbit64(v129));
    v129 &= v129 - 1;
    v140 = v139 | (v136 << 6);
    v141 = (*(v468 + 48) + 16 * v140);
    v143 = *v141;
    v142 = v141[1];
    v144 = v512;
    sub_27230260C(*(v468 + 56) + v513[9] * v140, v512, type metadata accessor for VANRNameConfiguration);
    v145 = sub_2721F065C(&qword_280882BD8, &qword_272384188);
    v146 = *(v145 + 48);
    *v135 = v143;
    v135[1] = v142;
    sub_2723019C4(v144, v135 + v146, type metadata accessor for VANRNameConfiguration);
    (*(*(v145 - 8) + 56))(v135, 0, 1, v145);

LABEL_41:
    v147 = v519;
    sub_272302544(v135, v519, &qword_280882BD0, &unk_272384178);
    v148 = sub_2721F065C(&qword_280882BD8, &qword_272384188);
    if ((*(*(v148 - 8) + 48))(v147, 1, v148) == 1)
    {
      break;
    }

    v149 = *v147;
    v150 = v147[1];
    sub_2723019C4(v147 + *(v148 + 48), v525, type metadata accessor for VANRNameConfiguration);
    v151 = *(v528 + 9);
    if (!*(v151 + 16))
    {
      goto LABEL_83;
    }

    v152 = *(v528 + 9);

    v153 = sub_27220038C(v149, v150);
    if ((v154 & 1) == 0)
    {

LABEL_83:

      *&v531 = 0;
      *(&v531 + 1) = 0xE000000000000000;
      sub_27237820C();
      MEMORY[0x2743C4AD0](0xD000000000000023, 0x800000027238F8F0);
      MEMORY[0x2743C4AD0](v149, v150);

      MEMORY[0x2743C4AD0](0xD000000000000013, 0x800000027238F920);
      v267 = v531;
      sub_27230206C();
      v268 = swift_allocError();
      *v269 = v267;
      v538 = v268;
      swift_willThrow();

      sub_2723025AC(v525, type metadata accessor for VANRNameConfiguration);
      goto LABEL_14;
    }

    v508 = v149;
    v155 = v516;
    sub_27230260C(*(v151 + 56) + v518[9] * v153, v516, type metadata accessor for VANRCollectedEnrollment);

    v156 = v526;
    sub_2723019C4(v155, v526, type metadata accessor for VANRCollectedEnrollment);
    v480 = *(v156 + *(v521 + 20));
    v157 = sub_2722C389C();
    v158 = *v478;
    v159 = v523;
    v475 = v157;
    v476 = v158;
    (v158)(v523);
    v160 = v515;
    sub_27230260C(v525, v515, type metadata accessor for VANRNameConfiguration);

    v161 = sub_27237725C();
    v162 = sub_272377E7C();

    v163 = os_log_type_enabled(v161, v162);
    v479 = v150;
    if (v163)
    {
      v164 = swift_slowAlloc();
      v165 = swift_slowAlloc();
      *&v531 = v165;
      *v164 = v469;
      *(v164 + 4) = sub_2721FFD04(v508, v150, &v531);
      *(v164 + 12) = 2080;
      sub_272376E5C();
      sub_272302674(&qword_280881BA8, MEMORY[0x277CC95F0]);
      v166 = sub_27237862C();
      v168 = v167;
      sub_2723025AC(v160, type metadata accessor for VANRNameConfiguration);
      v169 = sub_2721FFD04(v166, v168, &v531);
      v150 = v479;
      v170 = v524;

      *(v164 + 14) = v169;
      _os_log_impl(&dword_2721E4000, v161, v162, "Keyword: %s - Name configuration UUID: %s", v164, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x2743C69C0](v165, -1, -1);
      MEMORY[0x2743C69C0](v164, -1, -1);

      v171 = v170;
      v474 = *v473;
      (v474)(v523, v170);
      v172 = v522;
    }

    else
    {

      sub_2723025AC(v160, type metadata accessor for VANRNameConfiguration);
      v474 = *v473;
      (v474)(v159, v134);
      v172 = v522;
      v171 = v134;
    }

    v476(v172, v475, v171);
    v173 = v517;
    sub_27230260C(v526, v517, type metadata accessor for VANRCollectedEnrollment);

    v174 = sub_27237725C();
    v175 = sub_272377E7C();

    if (os_log_type_enabled(v174, v175))
    {
      v176 = swift_slowAlloc();
      v177 = swift_slowAlloc();
      *&v531 = v177;
      *v176 = v469;
      *(v176 + 4) = sub_2721FFD04(v508, v150, &v531);
      *(v176 + 12) = 2080;
      sub_272376E5C();
      sub_272302674(&qword_280881BA8, MEMORY[0x277CC95F0]);
      v178 = sub_27237862C();
      v180 = v179;
      sub_2723025AC(v173, type metadata accessor for VANRCollectedEnrollment);
      v181 = sub_2721FFD04(v178, v180, &v531);
      v182 = v524;

      *(v176 + 14) = v181;
      _os_log_impl(&dword_2721E4000, v174, v175, "Keyword: %s - Collected enrollment UUID: %s", v176, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x2743C69C0](v177, -1, -1);
      MEMORY[0x2743C69C0](v176, -1, -1);

      (v474)(v522, v182);
      v183 = v538;
    }

    else
    {

      sub_2723025AC(v173, type metadata accessor for VANRCollectedEnrollment);
      (v474)(v172, v171);
      v183 = v538;
      v182 = v171;
    }

    type metadata accessor for VAKeywordSpotterBase();
    v184 = [v480 format];
    v185 = static VAKeywordSpotterBase.isSupportedAudioFormat(_:)(v184);

    if (!v185)
    {

      sub_272302674(&qword_280882B80, type metadata accessor for VANRValidationError);
      v270 = swift_allocError();
      v272 = v271;
      v273 = sub_272376E5C();
      v274 = v526;
      (*(*(v273 - 8) + 16))(v272, v526, v273);
      swift_storeEnumTagMultiPayload();
      v538 = v270;
      swift_willThrow();

      sub_2723025AC(v525, type metadata accessor for VANRNameConfiguration);
      sub_2722039C8(v537);
      sub_2722039C8(&v534);
      sub_2723025AC(v274, type metadata accessor for VANRCollectedEnrollment);
      return;
    }

    v186 = v472();
    v187 = (*(*v186 + 472))(v186);

    v188 = v479;
    if (v187 != 1.0)
    {
      v189 = *(v526 + *(v521 + 24));
      if (sub_2722F77FC())
      {
        v190 = v472();
        v191 = (*(*v190 + 472))(v190);

        sub_272254228(v191);
        v192 = v507;
        v476(v507, v475, v182);

        v193 = sub_27237725C();
        v194 = sub_272377E7C();

        if (os_log_type_enabled(v193, v194))
        {
          v195 = swift_slowAlloc();
          v196 = swift_slowAlloc();
          *&v531 = v196;
          *v195 = v469;
          *(v195 + 4) = sub_2721FFD04(v508, v479, &v531);
          *(v195 + 12) = 2048;
          v197 = *v472();
          v198 = (*(v197 + 472))();

          *(v195 + 14) = v198;
          _os_log_impl(&dword_2721E4000, v193, v194, "Keyword: %s - Applying gain: %f", v195, 0x16u);
          sub_2722039C8(v196);
          v188 = v479;
          MEMORY[0x2743C69C0](v196, -1, -1);
          v199 = v195;
          v183 = v538;
          MEMORY[0x2743C69C0](v199, -1, -1);

          v200 = v192;
          v201 = v524;
        }

        else
        {

          v200 = v192;
          v201 = v182;
        }

        (v474)(v200, v201);
      }
    }

    v203 = v508;
    (*(*v471 + 104))(&v531, v508, v188);
    v204 = *(&v532 + 1);
    v205 = v533;
    v206 = v188;
    sub_27220300C(&v531, *(&v532 + 1));
    v207 = mach_absolute_time();
    v208 = v183;
    v209 = v480;
    (v205[1])(v480, v207, v204, v205);
    v538 = v208;
    if (v208)
    {

      sub_2723025AC(v525, type metadata accessor for VANRNameConfiguration);

LABEL_92:
      sub_2722039C8(v537);
      sub_2722039C8(&v534);
      sub_2722039C8(&v531);
      sub_2723025AC(v526, type metadata accessor for VANRCollectedEnrollment);
      return;
    }

    v210 = v477;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v529[0] = v210;
    sub_272300A84(v203, v206, isUniquelyReferenced_nonNull_native, 1.0);
    v212 = v529[0];
    v213 = [v209 frameLength];
    v214 = *(&v532 + 1);
    v110 = v533;
    sub_27220300C(&v531, *(&v532 + 1));
    if (v213 < (*(v110 + 4))(v214, v110))
    {
      v215 = &selRef_environment;
      v216 = [v209 frameLength];
      v217 = *(&v532 + 1);
      v218 = v533;
      sub_27220300C(&v531, *(&v532 + 1));
      v219 = v216 / (v218[4])(v217, v218);
      v220 = swift_isUniquelyReferenced_nonNull_native();
      v529[0] = v212;
      sub_272300A84(v508, v206, v220, v219);

      v221 = v529[0];
      v222 = *(&v532 + 1);
      v223 = v533;
      sub_27220300C(&v531, *(&v532 + 1));
      LODWORD(v222) = (v223[4])(v222, v223);
      v224 = [v209 frameLength];
      v225 = v222 >= v224;
      v226 = v222 - v224;
      if (!v225)
      {
        __break(1u);
        goto LABEL_126;
      }

      v227 = [v209 format];
      v228 = v538;
      v229 = sub_27227B050(v226, v227);
      v538 = v228;
      if (v228)
      {

        sub_2723025AC(v525, type metadata accessor for VANRNameConfiguration);
        goto LABEL_91;
      }

      v230 = v229;

      v231 = sub_272376E5C();
      (*(*(v231 - 8) + 16))(v514, v526, v231);
      swift_storeEnumTagMultiPayload();
      v232 = (*(*v528 + 240))(v529);
      v110 = v233;
      v234 = *v233;
      v235 = swift_isUniquelyReferenced_nonNull_native();
      *v110 = v234;
      v477 = v221;
      v236 = v538;
      if ((v235 & 1) == 0)
      {
        v234 = sub_2722FFD78(0, v234[2] + 1, 1, v234);
        *v110 = v234;
      }

      v238 = v234[2];
      v237 = v234[3];
      if (v238 >= v237 >> 1)
      {
        v234 = sub_2722FFD78(v237 > 1, v238 + 1, 1, v234);
        *v110 = v234;
      }

      v234[2] = v238 + 1;
      sub_2723019C4(v514, v234 + ((*(v510 + 80) + 32) & ~*(v510 + 80)) + *(v510 + 72) * v238, type metadata accessor for VANRValidationError);
      v232(v529, 0);
      v239 = *(&v532 + 1);
      v83 = v533;
      sub_27220300C(&v531, *(&v532 + 1));
      v240 = mach_absolute_time();
      (*(v83 + 8))(v230, v240, v239, v83);
      v538 = v236;
      if (v236)
      {

        sub_2723025AC(v525, type metadata accessor for VANRNameConfiguration);
LABEL_91:

        goto LABEL_92;
      }

LABEL_28:
      v134 = v524;
      v135 = v520;
      goto LABEL_29;
    }

    v477 = v212;

    v241 = [v209 frameLength];
    v242 = *(&v532 + 1);
    v83 = v533;
    sub_27220300C(&v531, *(&v532 + 1));
    if ((*(v83 + 32))(v242, v83) >= v241)
    {
      goto LABEL_28;
    }

    v243 = sub_272376E5C();
    (*(*(v243 - 8) + 16))(v509, v526, v243);
    swift_storeEnumTagMultiPayload();
    v244 = (*(*v528 + 240))(v529);
    v246 = v245;
    v247 = *v245;
    v248 = swift_isUniquelyReferenced_nonNull_native();
    *v246 = v247;
    v135 = v520;
    if ((v248 & 1) == 0)
    {
      v247 = sub_2722FFD78(0, v247[2] + 1, 1, v247);
      *v246 = v247;
    }

    v83 = v247[2];
    v249 = v247[3];
    v110 = (v83 + 1);
    if (v83 >= v249 >> 1)
    {
      v247 = sub_2722FFD78(v249 > 1, v83 + 1, 1, v247);
      *v246 = v247;
    }

    v247[2] = v110;
    sub_2723019C4(v509, v247 + ((*(v510 + 80) + 32) & ~*(v510 + 80)) + *(v510 + 72) * v83, type metadata accessor for VANRValidationError);
    v244(v529, 0);
    v134 = v524;
LABEL_29:
    sub_2723025AC(v525, type metadata accessor for VANRNameConfiguration);
    sub_2722039C8(&v531);
    v130 = sub_2723025AC(v526, type metadata accessor for VANRCollectedEnrollment);
  }

  v254 = v528;
  v255 = *(v472)(v253);
  v256 = (*(v255 + 688))();

  v257 = sub_2722F78B4(v256);

  v258 = v464;
  if (v257)
  {
    v259 = sub_2722C389C();
    v260 = v505;
    (*v478)(v505, v259, v134);
    v261 = sub_27237725C();
    v262 = sub_272377E6C();
    if (os_log_type_enabled(v261, v262))
    {
      v263 = swift_slowAlloc();
      *v263 = 0;
      _os_log_impl(&dword_2721E4000, v261, v262, "Setting keywordToEmbeddingFraction to reduce non-speech embeddings considered by 1st pass model", v263, 2u);
      v264 = v263;
      v254 = v528;
      MEMORY[0x2743C69C0](v264, -1, -1);
    }

    v265 = v134;
    (*v473)(v260, v134);
    v266 = (*(*v258 + 264))(v477);
  }

  else
  {
    v265 = v134;
  }

  v275 = v463;
  v526 = *(*v463 + 96);
  v276 = *(v526(v266) + 16);

  if (v276)
  {
    v278 = sub_2722C389C();
    (*v478)(v506, v278, v265);
    swift_retain_n();
    v279 = sub_27237725C();
    v280 = v275;
    v281 = sub_272377E7C();
    if (os_log_type_enabled(v279, v281))
    {
      v282 = swift_slowAlloc();
      *v282 = 134217984;
      v283 = v526;
      v284 = *((v526)() + 16);

      *(v282 + 4) = v284;
      v265 = v524;

      _os_log_impl(&dword_2721E4000, v279, v281, "Successfully enrolled %ld enrollments.", v282, 0xCu);
      MEMORY[0x2743C69C0](v282, -1, -1);
    }

    else
    {

      v283 = v526;
    }

    (*v473)(v506, v265);
    v285 = v536;
    sub_27220300C(&v534, v535);
    v283();
    v286 = v538;
    (v285[1])();
    v538 = v286;
    if (v286)
    {

      goto LABEL_13;
    }

    v275 = v280;
    v254 = v528;
  }

  v287 = *(*v275 + 120);
  v288 = *((v287)(v277) + 16);

  if (v288)
  {
    v290 = sub_2722C389C();
    v291 = v504;
    (*v478)(v504, v290, v524);

    v292 = sub_27237725C();
    v293 = sub_272377E7C();
    if (os_log_type_enabled(v292, v293))
    {
      v294 = swift_slowAlloc();
      *v294 = 134217984;
      v295 = *(v287() + 16);

      *(v294 + 4) = v295;

      _os_log_impl(&dword_2721E4000, v292, v293, "Failed to enroll %ld enrollments.", v294, 0xCu);
      MEMORY[0x2743C69C0](v294, -1, -1);
    }

    else
    {
    }

    v314 = v465;
    v315 = v461;
    (*v473)(v291, v524);
    *&v531 = 0;
    *(&v531 + 1) = 0xE000000000000000;
    sub_27237820C();

    *&v531 = 0xD000000000000011;
    *(&v531 + 1) = 0x800000027238BD10;
    v317 = *((v287)(v316) + 16);

    v529[0] = v317;
    v318 = sub_27237862C();
    MEMORY[0x2743C4AD0](v318);

    MEMORY[0x2743C4AD0](0x6D6C6C6F726E6520, 0xED00002E73746E65);
    v319 = v531;
    sub_2722032B4();
    v320 = swift_allocError();
    *v321 = v319;
    v538 = v320;
    swift_willThrow();

    goto LABEL_121;
  }

  v296 = *(v526(v289) + 16);

  if (!v296)
  {
    v298 = *((v287)(v297) + 16);

    if (!v298)
    {
      v362 = sub_2722C389C();
      v363 = v499;
      v364 = v524;
      (*v478)(v499, v362, v524);
      v365 = sub_27237725C();
      v366 = sub_272377E8C();
      if (os_log_type_enabled(v365, v366))
      {
        v367 = swift_slowAlloc();
        *v367 = 0;
        _os_log_impl(&dword_2721E4000, v365, v366, "0 enrollments found", v367, 2u);
        MEMORY[0x2743C69C0](v367, -1, -1);
      }

      (*v473)(v363, v364);
      sub_2722032B4();
      v368 = swift_allocError();
      *v369 = 0xD000000000000015;
      v369[1] = 0x800000027238BCF0;
      v538 = v368;
      swift_willThrow();

      goto LABEL_120;
    }
  }

  type metadata accessor for VAStrideConfiguration();
  v299 = static VAStrideConfiguration.forFlexibleA2Av3()();
  v300 = type metadata accessor for VAStrategyProviderDefault();
  v301 = v299;
  v302 = VAStrategyProviderDefault.__allocating_init(strideConfig:)(v301);
  v303 = (*(*v254 + 280))();
  v523 = v301;
  if (!v303)
  {
    type metadata accessor for VANRErrorDelegateDefault();
    v303 = swift_allocObject();
  }

  v525 = v303;
  v304 = v472;
  v305 = v472();
  v306 = (*(*v305 + 640))(v305);

  if (v306)
  {
    type metadata accessor for VANRDebugInfo(0);
    v308 = sub_272315248();

    v310 = *(v304)(v309);
    v311 = v538;
    v312 = (*(v310 + 1176))();
    v538 = v311;
    if (v311)
    {

      swift_unknownObjectRelease();

LABEL_121:

      goto LABEL_13;
    }

    v357 = v312;
    v358 = v313;

    v359 = (*(*v308 + 264))(v357, v358);
    v360 = v500;
    sub_272318968(v359);
    v361 = v538;
    (*(*v308 + 312))(v360);
    v538 = v361;
    if (v361)
    {
      (*(v501 + 8))(v360, v502);

      swift_unknownObjectRelease();

      goto LABEL_13;
    }

    v521 = v300;
    v522 = v302;
    (*(v501 + 8))(v360, v502);

    v322 = v308;
  }

  else
  {
    v521 = v300;
    v522 = v302;
    v322 = 0;
  }

  v131 = v528;
  (*(*v528 + 272))(v307);
  v520 = v323;
  v324 = v131[8];
  v325 = v131[9];
  v326 = v131[2];
  v327 = type metadata accessor for VANRDelegateBridge(0);
  v328 = *(v327 + 48);
  v329 = *(v327 + 52);
  v330 = swift_allocObject();
  *(v330 + 3) = 0;
  swift_unknownObjectWeakInit();
  *(v330 + 5) = 0;
  swift_unknownObjectWeakInit();
  v331 = OBJC_IVAR____TtC12VoiceActions18VANRDelegateBridge_lastActivated;
  v332 = sub_27237832C();
  (*(*(v332 - 8) + 56))(&v330[v331], 1, 1, v332);
  v83 = v322;

  sub_27237833C();
  swift_beginAccess();
  *(v330 + 3) = v520;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  *(v330 + 6) = v324;
  *(v330 + 7) = v325;
  v110 = v330;
  *(v330 + 8) = v326;
  *(v330 + 9) = v322;
  type metadata accessor for VAFlexibleKeywordSpotter();
  *(&v532 + 1) = v521;
  v533 = &protocol witness table for VAStrategyProviderDefault;
  *&v531 = v522;
  memset(v529, 0, sizeof(v529));
  v134 = v461;

  v333 = v462;

  v334 = v466;

  v335 = v334;
  v336 = v538;
  v130 = VAFlexibleKeywordSpotter.__allocating_init(delegate:vadGated:verifier:encoder:configuration:strategyProvider:runtimeParametersFactory:)(v330, 0, v333, v335, v134, &v531, v529);
  v538 = v336;
  if (v336)
  {

    swift_unknownObjectRelease();

LABEL_120:

    goto LABEL_121;
  }

LABEL_113:
  v519 = v134;
  v520 = v110;
  v337 = MEMORY[0x277D85000];
  v338 = *((*MEMORY[0x277D85000] & *v130) + 0x430);
  v339 = v130;

  v341 = v338(v340);
  v521 = v83;
  v342 = v472;
  v343 = *(v472)(v341);
  v344 = (*(v343 + 448))();

  v345 = (*((*v337 & *v339) + 0x3D0))(v344 & 1);
  v346 = *(v342)(v345);
  v347 = (*(v346 + 472))();

  v349 = (*((*v337 & *v339) + 0x3E8))(v348, v347);
  v350 = *(v342)(v349);
  v351 = (*(v350 + 496))();

  v352 = (*((*v337 & *v339) + 0x400))(v351);
  v353 = *(v342)(v352);
  LOBYTE(v351) = (*(v353 + 544))();

  v354 = (*((*v337 & *v339) + 0x418))(v351 & 1);
  v355 = v503;
  v356 = v538;
  (*((*v337 & *v339) + 0xC0))(v354);
  v538 = v356;
  if (v356)
  {

    swift_unknownObjectRelease();

    goto LABEL_121;
  }

  v518 = v339;
  v215 = (v131 + OBJC_IVAR____TtC12VoiceActions25VANRNameRecognizerBuilder_runtimeParams);
  swift_beginAccess();
  sub_272302710(v355, v215, type metadata accessor for VARuntimeParameters);
  swift_endAccess();
  v370 = v131[8];

  v372 = sub_2722F25E4(v371);
  v373 = *v215;
  *v215 = v372;

  v375 = *(v342)(v374);
  v376 = (*(v375 + 520))();

  if (v376)
  {
    v378 = v498;
    sub_27230260C(v215, v498, type metadata accessor for VARuntimeParameters);
    v379 = v538;
    (*(*v462 + 88))(v378);
    v131 = v379;
    if (v379)
    {
      sub_2723025AC(v498, type metadata accessor for VARuntimeParameters);

      swift_unknownObjectRelease();

      v380 = &v492;
      goto LABEL_172;
    }

LABEL_126:
    sub_2723025AC(v498, type metadata accessor for VARuntimeParameters);
    type metadata accessor for VAA2AAudioEnrollerV3();
    v533 = 0;
    v531 = 0u;
    v532 = 0u;

    v382 = VAA2AAudioEnrollerV3.__allocating_init(encoder:keywordIdentifier:delegate:)(v381, 0x65636E656C6973, 0xE700000000000000, &v531);
    v383 = (*(*v382 + 288))();
    v384 = static VAKeywordSpotterBase.getDefaultAudioFormat()();
    v517 = sub_27227B050(v383, v384);
    if (v131)
    {

      swift_unknownObjectRelease();

      goto LABEL_173;
    }

    v385 = mach_absolute_time();
    v386 = (*(*v382 + 256))(v517, v385);
    (*(*v382 + 272))(&v531, v386);
    if ((v532 & 1) == 0)
    {
      sub_2722032B4();
      v388 = swift_allocError();
      *v389 = 0xD00000000000003ALL;
      v389[1] = 0x800000027238F8B0;
      v538 = v388;
      swift_willThrow();

      swift_unknownObjectRelease();

LABEL_131:

      goto LABEL_13;
    }

    sub_2721F065C(&qword_280881840, &unk_27237E830);
    v387 = swift_allocObject();
    *(v387 + 16) = xmmword_27237AF80;
    (*(*v382 + 280))();
    v538 = 0;
    type metadata accessor for VAFeatureExtractingEncoderOutput();
    v390 = v485;
    v391 = *&v485[*(v481 + 20)];

    sub_2723025AC(v390, type metadata accessor for VASingleEnrollmentData);
    *(v387 + 32) = v391;
    v392 = VAFeatureExtractingEncoderOutput.__allocating_init(hasNewFeature:featureExtractionBuffer:vadBuffer:encoderOutput:)(1, 0, 0, v387);
    sub_2721F065C(&qword_280882098, &qword_27237E8B0);
    v393 = swift_allocObject();
    *(v393 + 16) = xmmword_27237E510;
    *(v393 + 32) = v392;
    v394 = *(*v462 + 80);
    v504 = v392;

    v395 = v538;
    v394(&v531, v393, 0);
    v538 = v395;
    if (v395)
    {

      swift_unknownObjectRelease();

      goto LABEL_131;
    }

    v512 = v531;
    v513 = v526(v396);
    v511 = v513[2];
    if (v511)
    {
      v516 = 0;
      v510 = v488 + *(v481 + 24);
      v398 = (*v512 + 104);
      v509 = *v398;
      v508 = v398;
      v507 = v513 + ((*(v489 + 80) + 32) & ~*(v489 + 80));
      v515 = MEMORY[0x277D84F90];
      *&v397 = 136315138;
      v506 = v397;
      *&v397 = 136315650;
      v505 = v397;
      while (v516 < v513[2])
      {
        v399 = v488;
        sub_27230260C(&v507[*(v489 + 72) * v516], v488, type metadata accessor for VASingleEnrollmentData);
        v400 = *(v510 + 8);
        v526 = *v510;

        sub_2723025AC(v399, type metadata accessor for VASingleEnrollmentData);
        v401 = sub_2722C389C();
        v402 = *v478;
        v403 = v401;
        (*v478)(v492);

        v404 = sub_27237725C();
        v405 = sub_272377E7C();
        v406 = v400;

        if (os_log_type_enabled(v404, v405))
        {
          v407 = swift_slowAlloc();
          v408 = swift_slowAlloc();
          *&v531 = v408;
          *v407 = v506;
          *(v407 + 4) = sub_2721FFD04(v526, v406, &v531);
          _os_log_impl(&dword_2721E4000, v404, v405, "Inferring threshold for keyword %s", v407, 0xCu);
          sub_2722039C8(v408);
          MEMORY[0x2743C69C0](v408, -1, -1);
          MEMORY[0x2743C69C0](v407, -1, -1);
        }

        v514 = *v473;
        (v514)(v492, v524);
        ++v516;

        v410 = v509(v409);

        v411 = (v410 + 48);
        v412 = *(v410 + 16) + 1;
        do
        {
          if (!--v412)
          {

            v402(v487, v403, v524);

            v420 = sub_27237725C();
            v421 = sub_272377E8C();

            if (os_log_type_enabled(v420, v421))
            {
              v422 = swift_slowAlloc();
              v423 = swift_slowAlloc();
              *&v531 = v423;
              *v422 = v506;
              *(v422 + 4) = sub_2721FFD04(v526, v406, &v531);
              _os_log_impl(&dword_2721E4000, v420, v421, "Could not infer threshold for %s. Did not find a score against silence. Using default threshold.", v422, 0xCu);
              sub_2722039C8(v423);
              MEMORY[0x2743C69C0](v423, -1, -1);
              MEMORY[0x2743C69C0](v422, -1, -1);
            }

            v424 = &v517;
            goto LABEL_161;
          }

          v413 = *v411;
          if (*(v411 - 2) == v526 && *(v411 - 1) == v406)
          {
            break;
          }

          v411 += 20;
        }

        while ((sub_27237865C() & 1) == 0);

        if (v413 < 0.0)
        {
          v402(v486, v403, v524);

          v415 = sub_27237725C();
          v416 = sub_272377E7C();

          if (os_log_type_enabled(v415, v416))
          {
            v417 = swift_slowAlloc();
            v418 = swift_slowAlloc();
            *&v531 = v418;
            *v417 = v505;
            *(v417 + 4) = sub_2721FFD04(v526, v406, &v531);
            *(v417 + 12) = 2048;
            *(v417 + 14) = v413;
            *(v417 + 22) = 2048;
            *(v417 + 24) = (v413 * 0.5);
            _os_log_impl(&dword_2721E4000, v415, v416, "Compared keyword %s to silence, got score = %f. Score is negative, inferring this is a DTW model. Using silenceScore / 2 = %f", v417, 0x20u);
            sub_2722039C8(v418);
            MEMORY[0x2743C69C0](v418, -1, -1);
            MEMORY[0x2743C69C0](v417, -1, -1);
          }

          v419 = &v516;
LABEL_157:
          (v514)(*(v419 - 32), v524);
          *&v531 = 0;
          *(&v531 + 1) = 0xE000000000000000;
          MEMORY[0x2743C4AD0](v526, v406);

          MEMORY[0x2743C4AD0](58, 0xE100000000000000);
          sub_272377D5C();
          v406 = *(&v531 + 1);
          v526 = v531;
          goto LABEL_162;
        }

        if (v413 < 1.0)
        {
          v402(v483, v403, v524);

          v425 = sub_27237725C();
          v426 = sub_272377E7C();

          if (os_log_type_enabled(v425, v426))
          {
            v427 = swift_slowAlloc();
            v428 = swift_slowAlloc();
            *&v531 = v428;
            *v427 = v505;
            *(v427 + 4) = sub_2721FFD04(v526, v406, &v531);
            *(v427 + 12) = 2048;
            *(v427 + 14) = v413;
            *(v427 + 22) = 2048;
            *(v427 + 24) = (v413 + ((1.0 - v413) * 0.5));
            _os_log_impl(&dword_2721E4000, v425, v426, "Compared keyword %s to silence, got score = %f. Score is between 0 and 1, inferring this is a model on that scale. Using halfway from silenceScore to 1.0 = %f", v427, 0x20u);
            sub_2722039C8(v428);
            MEMORY[0x2743C69C0](v428, -1, -1);
            MEMORY[0x2743C69C0](v427, -1, -1);
          }

          v419 = &v513;
          goto LABEL_157;
        }

        v402(v484, v403, v524);

        v429 = sub_27237725C();
        v430 = sub_272377E8C();

        if (os_log_type_enabled(v429, v430))
        {
          v431 = swift_slowAlloc();
          v432 = swift_slowAlloc();
          *&v531 = v432;
          *v431 = v506;
          *(v431 + 4) = sub_2721FFD04(v526, v406, &v531);
          _os_log_impl(&dword_2721E4000, v429, v430, "Could not infer threshold for %s. Silence score is >1.0, not sure how to score this model. Using default threshold.", v431, 0xCu);
          sub_2722039C8(v432);
          MEMORY[0x2743C69C0](v432, -1, -1);
          MEMORY[0x2743C69C0](v431, -1, -1);
        }

        v424 = &v514;
LABEL_161:
        (v514)(*(v424 - 32), v524);
LABEL_162:
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v515 = sub_2721FFBF8(0, *(v515 + 2) + 1, 1, v515);
        }

        v434 = *(v515 + 2);
        v433 = *(v515 + 3);
        if (v434 >= v433 >> 1)
        {
          v515 = sub_2721FFBF8((v433 > 1), v434 + 1, 1, v515);
        }

        v435 = v515;
        *(v515 + 2) = v434 + 1;
        v436 = &v435[16 * v434];
        *(v436 + 4) = v526;
        *(v436 + 5) = v406;
        if (v516 == v511)
        {
          goto LABEL_169;
        }
      }

      __break(1u);
      return;
    }

    v515 = MEMORY[0x277D84F90];
LABEL_169:

    v437 = *v215;
    *v215 = v515;
  }

  v438 = v528;
  v439 = (v472)(v377);
  swift_beginAccess();
  (*(*v439 + 1168))(v215);
  swift_endAccess();

  v441 = v538;
  (*(*v438 + 320))(v440);
  v131 = v441;
  if (!v441)
  {
    swift_beginAccess();
    (*(v495 + 40))(v215 + *(v494 + 108), v497, v496);
    *(v215 + 12) = 1;
    swift_endAccess();
    v443 = *(*v528 + 312);
    v444 = v518;
    v443();
    v538 = 0;
    v445 = sub_2722C389C();
    (*v478)(v493, v445, v524);

    v446 = sub_27237725C();
    v447 = sub_272377E7C();

    if (os_log_type_enabled(v446, v447))
    {
      v448 = swift_slowAlloc();
      v449 = swift_slowAlloc();
      *&v531 = v449;
      *v448 = 136315138;
      v450 = v215[10];

      sub_2721F065C(&qword_2808817F8, &unk_27237CA80);
      v451 = sub_27237773C();
      v453 = v452;

      v454 = sub_2721FFD04(v451, v453, &v531);

      *(v448 + 4) = v454;
      _os_log_impl(&dword_2721E4000, v446, v447, "%s", v448, 0xCu);
      sub_2722039C8(v449);
      MEMORY[0x2743C69C0](v449, -1, -1);
      MEMORY[0x2743C69C0](v448, -1, -1);
    }

    (*v473)(v493, v524);
    v455 = v490;
    sub_27230260C(v215, v490, type metadata accessor for VARuntimeParameters);
    v456 = type metadata accessor for VANRSpotterBridge(0);
    v457 = *(v456 + 48);
    v458 = *(v456 + 52);
    v459 = swift_allocObject();
    *(v459 + 16) = v444;
    sub_2723019C4(v455, v459 + OBJC_IVAR____TtC12VoiceActions17VANRSpotterBridge_runtimeParams, type metadata accessor for VARuntimeParameters);
    *(v459 + OBJC_IVAR____TtC12VoiceActions17VANRSpotterBridge_kwsDelegate) = v520;
    v460 = v491;
    v491[3] = v456;
    v460[4] = &off_28818E680;

    *v460 = v459;

    swift_unknownObjectRelease();
    goto LABEL_13;
  }

  swift_unknownObjectRelease();
  v380 = &v536;
LABEL_172:
  v442 = *(v380 - 32);

LABEL_173:

  sub_2722039C8(v537);
  sub_2722039C8(&v534);
  v538 = v131;
}

uint64_t sub_2722F77FC()
{
  sub_2723026BC();
  sub_272377A8C();
  sub_272377A8C();
  if (v5 == v3 && v6 == v4)
  {
    v1 = 1;
  }

  else
  {
    v1 = sub_27237865C();
  }

  return v1 & 1;
}

BOOL sub_2722F78B4(uint64_t a1)
{
  v1 = *(a1 + 16) + 1;
  do
  {
    if (!--v1)
    {
      break;
    }

    sub_2722D4AA0();
  }

  while ((sub_2723777DC() & 1) == 0);
  return v1 != 0;
}

void sub_2722F7904(void *a1)
{
  v2 = v1;
  v324 = a1;
  v356 = sub_272376EBC();
  v315 = *(v356 - 8);
  v3 = *(v315 + 64);
  MEMORY[0x28223BE20](v356);
  v355 = &v313 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v326 = type metadata accessor for VANRValidationError(0);
  v325 = *(v326 - 8);
  v5 = *(v325 + 64);
  v6 = MEMORY[0x28223BE20](v326);
  v329 = &v313 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v321 = &v313 - v8;
  v354 = type metadata accessor for VARuntimeParameters();
  v9 = *(*(v354 - 8) + 64);
  MEMORY[0x28223BE20](v354);
  v11 = &v313 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v346 = sub_27237728C();
  v318 = *(v346 - 8);
  v12 = v318[8];
  v13 = MEMORY[0x28223BE20](v346);
  v334 = &v313 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v328 = &v313 - v15;
  v16 = sub_2721F065C(&qword_2808819D8, &qword_27237CB50);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  v337 = &v313 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v359 = &v313 - v20;
  v349 = type metadata accessor for VANRNameConfiguration(0);
  v350 = *(v349 - 8);
  v21 = *(v350 + 64);
  v22 = MEMORY[0x28223BE20](v349);
  v323 = &v313 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v22);
  v338 = &v313 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v336 = &v313 - v26;
  v27 = MEMORY[0x28223BE20](v25);
  v351 = (&v313 - v28);
  MEMORY[0x28223BE20](v27);
  v30 = &v313 - v29;
  v322 = type metadata accessor for VANRCollectedEnrollment(0);
  v348 = *(v322 - 8);
  v31 = *(v348 + 64);
  v32 = MEMORY[0x28223BE20](v322);
  v340 = &v313 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32);
  v347 = &v313 - v34;
  v35 = sub_2721F065C(&qword_280882B98, &qword_272383ED0);
  v36 = *(*(v35 - 8) + 64);
  v37 = MEMORY[0x28223BE20](v35 - 8);
  v330 = (&v313 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0));
  v39 = MEMORY[0x28223BE20](v37);
  v327 = (&v313 - v40);
  v41 = MEMORY[0x28223BE20](v39);
  v43 = (&v313 - v42);
  MEMORY[0x28223BE20](v41);
  v45 = (&v313 - v44);
  v46 = sub_2722A0548(MEMORY[0x277D84F90]);
  v47 = v2 + OBJC_IVAR____TtC12VoiceActions25VANRNameRecognizerBuilder_runtimeParams;
  swift_beginAccess();
  v48 = *(v47 + 80);
  v366 = v47;
  *(v47 + 80) = v46;

  swift_beginAccess();
  v49 = v2[9];
  v50 = *(v49 + 64);
  v333 = v49 + 64;
  v51 = 1 << *(v49 + 32);
  v52 = -1;
  if (v51 < 64)
  {
    v52 = ~(-1 << v51);
  }

  v53 = v52 & v50;
  v352 = v49;

  swift_beginAccess();
  v54 = 0;
  v332 = (v51 + 63) >> 6;
  *&v335 = v21 + 7;
  v362 = v2;
  v331 = v11;
  v353 = v30;
  v361 = v43;
  v360 = v45;
  if (!v53)
  {
LABEL_5:
    if (v332 <= v54 + 1)
    {
      v56 = v54 + 1;
    }

    else
    {
      v56 = v332;
    }

    while (1)
    {
      v55 = v54 + 1;
      if (__OFADD__(v54, 1))
      {
        break;
      }

      if (v55 >= v332)
      {
        v363 = (v56 - 1);
        v123 = sub_2721F065C(&qword_280882BA0, &unk_272383ED8);
        (*(*(v123 - 8) + 56))(v43, 1, 1, v123);
        v53 = 0;
        goto LABEL_12;
      }

      v53 = *(v333 + 8 * v55);
      v54 = (v54 + 1);
      if (v53)
      {
        goto LABEL_11;
      }
    }

LABEL_180:
    __break(1u);
LABEL_181:
    __break(1u);
LABEL_182:
    __break(1u);
    goto LABEL_183;
  }

  while (1)
  {
    v55 = v54;
LABEL_11:
    v57 = __clz(__rbit64(v53));
    v53 &= v53 - 1;
    v58 = v57 | (v55 << 6);
    v59 = (*(v352 + 48) + 16 * v58);
    v61 = *v59;
    v60 = v59[1];
    v62 = v347;
    sub_27230260C(*(v352 + 56) + *(v348 + 72) * v58, v347, type metadata accessor for VANRCollectedEnrollment);
    v63 = sub_2721F065C(&qword_280882BA0, &unk_272383ED8);
    v64 = *(v63 + 48);
    v65 = v361;
    *v361 = v61;
    v65[1] = v60;
    v43 = v65;
    sub_2723019C4(v62, v65 + v64, type metadata accessor for VANRCollectedEnrollment);
    (*(*(v63 - 8) + 56))(v43, 0, 1, v63);

    v363 = v55;
    v45 = v360;
LABEL_12:
    sub_272302544(v43, v45, &qword_280882B98, &qword_272383ED0);
    v66 = sub_2721F065C(&qword_280882BA0, &unk_272383ED8);
    v67 = *(v66 - 8);
    v68 = *(v67 + 48);
    if (v68(v45, 1, v66) == 1)
    {
      break;
    }

    v70 = *v45;
    v69 = v45[1];
    sub_2723025AC(v45 + *(v66 + 48), type metadata accessor for VANRCollectedEnrollment);
    v71 = v2[8];
    if (!*(v71 + 16))
    {
      goto LABEL_121;
    }

    v72 = v2[8];

    v73 = sub_27220038C(v70, v69);
    if ((v74 & 1) == 0)
    {

LABEL_121:
      v371 = 0;
      v372 = 0xE000000000000000;
      sub_27237820C();
      MEMORY[0x2743C4AD0](0xD000000000000038, 0x800000027238F5B0);
      MEMORY[0x2743C4AD0](v70, v69);

      v256 = v371;
      v257 = v372;
      sub_2722032B4();
      v258 = swift_allocError();
      *v259 = v256;
      v259[1] = v257;
      v339 = v258;
      swift_willThrow();
      v260 = &v376;
LABEL_122:
      v261 = *(v260 - 32);

LABEL_178:
      sub_2722FA2AC(v2);
      return;
    }

    v75 = v351;
    sub_27230260C(*(v71 + 56) + *(v350 + 72) * v73, v351, type metadata accessor for VANRNameConfiguration);

    sub_2723019C4(v75, v30, type metadata accessor for VANRNameConfiguration);
    v76 = &v30[*(v349 + 20)];
    v77 = *v76;
    v78 = *(v76 + 1);
    v79 = v2 + OBJC_IVAR____TtC12VoiceActions25VANRNameRecognizerBuilder_runtimeParams;
    swift_beginAccess();
    v80 = *(v79 + 10);
    v81 = *(v80 + 16);
    v365 = v69;
    v364 = v70;
    if (v81 && (v82 = sub_27220038C(v70, v69), (v83 & 1) != 0))
    {
      v84 = *(*(v80 + 56) + 8 * v82);
    }

    else
    {
      v84 = MEMORY[0x277D84F90];
    }

    v85 = sub_272301A2C(v84);

    v378 = v85;
    v86 = sub_2723778AC();
    sub_2722AB1B4(&v371, v86, v87);

    v88 = v378;
    v89 = *(v378 + 16);
    if (v89)
    {
      v90 = sub_2722702A8(*(v378 + 16), 0);
      v91 = sub_2722A02C4(&v371, v90 + 4, v89, v88);

      sub_272270484();
      if (v91 != v89)
      {
        goto LABEL_185;
      }

      v2 = v362;
      v30 = v353;
      v92 = v365;
    }

    else
    {
      v92 = v365;

      v90 = MEMORY[0x277D84F90];
    }

    swift_beginAccess();
    v93 = *(v79 + 10);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v377 = *(v79 + 10);
    *(v79 + 10) = 0x8000000000000000;
    sub_272300908(v90, v364, v92, isUniquelyReferenced_nonNull_native);

    *(v79 + 10) = v377;
    v95 = swift_endAccess();
    v96 = *(*v2 + 256);
    v97 = *v96(v95);
    v98 = (*(v97 + 592))();

    v100 = *v96(v99);
    v101 = (*(v100 + 616))();

    if (v98 > 0 || v101 >= 1)
    {
      v102 = swift_allocObject();
      v358 = v102;
      *(v102 + 16) = 0;
      v345 = (v102 + 16);
      v357 = dispatch_semaphore_create(0);
      v343 = sub_272377C3C();
      v344 = *(v343 - 8);
      (v344[7])(v359, 1, 1, v343);
      v342 = v101;
      v103 = v336;
      sub_27230260C(v30, v336, type metadata accessor for VANRNameConfiguration);
      v104 = (*(v350 + 80) + 48) & ~*(v350 + 80);
      v105 = (v335 + v104) & 0xFFFFFFFFFFFFFFF8;
      v106 = (v105 + 23) & 0xFFFFFFFFFFFFFFF8;
      v107 = (v106 + 15) & 0xFFFFFFFFFFFFFFF8;
      v108 = (v107 + 15) & 0xFFFFFFFFFFFFFFF8;
      v109 = swift_allocObject();
      v341 = v98;
      v110 = v362;
      v111 = v109;
      v109[2] = 0;
      v109[3] = 0;
      v112 = v342;
      v109[4] = v357;
      v109[5] = v112;
      sub_2723019C4(v103, v109 + v104, type metadata accessor for VANRNameConfiguration);
      v113 = (v111 + v105);
      v114 = v365;
      *v113 = v364;
      v113[1] = v114;
      *(v111 + v106) = v110;
      *(v111 + v107) = v341;
      v115 = v343;
      *(v111 + v108) = v358;
      v116 = v337;
      sub_2721F07F4(v359, v337, &qword_2808819D8, &qword_27237CB50);
      v117 = v344;
      LODWORD(v110) = (v344[6])(v116, 1, v115);
      v365 = v357;

      if (v110 == 1)
      {
        sub_2721F40F0(v116, &qword_2808819D8, &qword_27237CB50);
      }

      else
      {
        sub_272377C2C();
        (v117[1])(v116, v115);
      }

      v119 = v111[2];
      v118 = v111[3];
      swift_unknownObjectRetain();

      if (v119)
      {
        swift_getObjectType();
        v120 = sub_272377BDC();
        v122 = v121;
        swift_unknownObjectRelease();
      }

      else
      {
        v120 = 0;
        v122 = 0;
      }

      v43 = v361;
      sub_2721F40F0(v359, &qword_2808819D8, &qword_27237CB50);
      v124 = swift_allocObject();
      *(v124 + 16) = &unk_272383EF0;
      *(v124 + 24) = v111;
      if (v122 | v120)
      {
        v368 = 0;
        v367 = 0;
        v369 = v120;
        v370 = v122;
      }

      v2 = v362;
      v45 = v360;
      v125 = v365;
      swift_task_create();

      sub_272377F5C();
      v126 = v345;
      swift_beginAccess();
      v127 = *v126;
      if (v127)
      {
        swift_willThrow();
        v262 = v127;

        sub_2723025AC(v353, type metadata accessor for VANRNameConfiguration);

        v339 = v127;
        goto LABEL_178;
      }

      v30 = v353;
      sub_2723025AC(v353, type metadata accessor for VANRNameConfiguration);

      v54 = v363;
      if (!v53)
      {
        goto LABEL_5;
      }
    }

    else
    {

      sub_2723025AC(v30, type metadata accessor for VANRNameConfiguration);
      v54 = v363;
      v43 = v361;
      v45 = v360;
      v2 = v362;
      if (!v53)
      {
        goto LABEL_5;
      }
    }
  }

  v320 = v68;
  v332 = v67 + 48;
  v333 = v66;

  v129 = (*v2 + 256);
  v364 = *v129;
  v363 = v129;
  v130 = *(v364)(v128);
  v131 = (*(v130 + 568))();

  if (v131 > 0 || *(v2 + 80) == 1)
  {
    v132 = v2[9];
    v133 = v132 + 64;
    v134 = 1 << *(v132 + 32);
    if (v134 < 64)
    {
      v135 = ~(-1 << v134);
    }

    else
    {
      v135 = -1;
    }

    v136 = v135 & *(v132 + 64);
    v314 = (v134 + 63) >> 6;
    v319 = (v67 + 56);
    v345 = (v318 + 2);
    v344 = v318 + 1;
    v358 = (v315 + 16);
    v351 = (v315 + 8);
    v318 = v132;

    v137 = 0;
    *&v138 = 136315138;
    v335 = v138;
    v317 = xmmword_27237AF80;
    v139 = v330;
    v316 = v133;
    while (v136)
    {
      v336 = v137;
      v140 = v137;
LABEL_57:
      v337 = (v136 - 1) & v136;
      v143 = __clz(__rbit64(v136)) | (v140 << 6);
      v144 = (v318[6] + 16 * v143);
      v146 = *v144;
      v145 = v144[1];
      v147 = v347;
      sub_27230260C(v318[7] + *(v348 + 72) * v143, v347, type metadata accessor for VANRCollectedEnrollment);
      v148 = v333;
      v149 = *(v333 + 48);
      v150 = v330;
      *v330 = v146;
      v150[1] = v145;
      v139 = v150;
      sub_2723019C4(v147, v150 + v149, type metadata accessor for VANRCollectedEnrollment);
      (*v319)(v139, 0, 1, v148);

LABEL_58:
      v151 = v327;
      sub_272302544(v139, v327, &qword_280882B98, &qword_272383ED0);
      v152 = v320(v151, 1, v148);
      v153 = v346;
      v154 = v328;
      if (v152 == 1)
      {

        goto LABEL_125;
      }

      v155 = *v151;
      v156 = v151[1];
      sub_2723019C4(v151 + *(v148 + 48), v340, type metadata accessor for VANRCollectedEnrollment);
      v157 = v2[8];
      if (!*(v157 + 16))
      {
        goto LABEL_175;
      }

      v158 = v2[8];

      v159 = sub_27220038C(v155, v156);
      if ((v160 & 1) == 0)
      {

LABEL_175:
        v371 = 0;
        v372 = 0xE000000000000000;
        sub_27237820C();
        MEMORY[0x2743C4AD0](0xD000000000000038, 0x800000027238F5B0);
        MEMORY[0x2743C4AD0](v155, v156);

        v309 = v371;
        v310 = v372;
        sub_2722032B4();
        v311 = swift_allocError();
        *v312 = v309;
        v312[1] = v310;
        v339 = v311;
        swift_willThrow();

LABEL_177:
        sub_2723025AC(v340, type metadata accessor for VANRCollectedEnrollment);
        goto LABEL_178;
      }

      v161 = v323;
      sub_27230260C(*(v157 + 56) + *(v350 + 72) * v159, v323, type metadata accessor for VANRNameConfiguration);

      sub_2723019C4(v161, v338, type metadata accessor for VANRNameConfiguration);
      v162 = sub_2722C389C();
      v163 = *v345;
      v343 = v162;
      v342 = v163;
      v163(v154);

      v164 = sub_27237725C();
      v165 = sub_272377E7C();

      v166 = os_log_type_enabled(v164, v165);
      v360 = v156;
      v359 = v155;
      if (v166)
      {
        v167 = swift_slowAlloc();
        v168 = swift_slowAlloc();
        v371 = v168;
        *v167 = v335;
        *(v167 + 4) = sub_2721FFD04(v155, v156, &v371);
        _os_log_impl(&dword_2721E4000, v164, v165, "Asking ASR for nBest because systemConfig.listenToAsrForEnrollments is >0 or as part of a validation. Will look for these nBest when matching this keyword: %s", v167, 0xCu);
        sub_2722039C8(v168);
        MEMORY[0x2743C69C0](v168, -1, -1);
        MEMORY[0x2743C69C0](v167, -1, -1);
      }

      v341 = *v344;
      v341(v154, v153);
      v169 = *(v340 + *(v322 + 20));
      sub_2721F065C(&qword_280881860, &unk_27237C340);
      v170 = swift_allocObject();
      *(v170 + 16) = v317;
      v171 = v338 + *(v349 + 20);
      v172 = *(v171 + 8);
      v361 = *v171;
      *(v170 + 32) = v361;
      *(v170 + 40) = v172;
      v173 = v331;
      sub_27230260C(v366, v331, type metadata accessor for VARuntimeParameters);
      v174 = *((*MEMORY[0x277D85000] & *v324) + 0x260);

      v175 = v339;
      v174(&v371, v169, v170, v173);
      v339 = v175;
      if (v175)
      {
        sub_2723025AC(v331, type metadata accessor for VARuntimeParameters);

        sub_2723025AC(v338, type metadata accessor for VANRNameConfiguration);
        goto LABEL_177;
      }

      sub_2723025AC(v331, type metadata accessor for VARuntimeParameters);

      v176 = v373;

      v177 = v176[2];
      v365 = v176;
      if (v177)
      {
        v178 = 0;
        v179 = 0;
        v180 = -v177;
        v181 = v176 + 5;
LABEL_66:
        LODWORD(v357) = v178;
        v182 = &v181[2 * v179++];
        while ((v179 - 1) < v365[2])
        {
          v184 = *(v182 - 1);
          v183 = *v182;

          v186 = *(v364)(v185);
          v187 = (*(v186 + 496))();

          v188 = (*(*v187 + 280))(v361, v172, v184, v183);

          if (v188)
          {
            v178 = 1;
            if (v180 + v179)
            {
              goto LABEL_66;
            }

            goto LABEL_85;
          }

          ++v179;
          v182 += 2;
          if (v180 + v179 == 1)
          {
            if ((v357 & 1) == 0)
            {
              goto LABEL_80;
            }

            goto LABEL_85;
          }
        }

        goto LABEL_181;
      }

      v190 = sub_272376E5C();
      (*(*(v190 - 8) + 16))(v321, v340, v190);
      swift_storeEnumTagMultiPayload();
      v191 = (*(*v2 + 240))(&v371);
      v193 = v192;
      v194 = *v192;
      v195 = swift_isUniquelyReferenced_nonNull_native();
      *v193 = v194;
      if ((v195 & 1) == 0)
      {
        v194 = sub_2722FFD78(0, v194[2] + 1, 1, v194);
        *v193 = v194;
      }

      v197 = v194[2];
      v196 = v194[3];
      if (v197 >= v196 >> 1)
      {
        v194 = sub_2722FFD78(v196 > 1, v197 + 1, 1, v194);
        *v193 = v194;
      }

      v194[2] = v197 + 1;
      sub_2723019C4(v321, v194 + ((*(v325 + 80) + 32) & ~*(v325 + 80)) + *(v325 + 72) * v197, type metadata accessor for VANRValidationError);
      v191(&v371, 0);
LABEL_80:
      v198 = sub_272376E5C();
      (*(*(v198 - 8) + 16))(v329, v340, v198);
      swift_storeEnumTagMultiPayload();
      v199 = (*(*v362 + 240))(&v371);
      v201 = v200;
      v202 = *v200;
      v203 = swift_isUniquelyReferenced_nonNull_native();
      *v201 = v202;
      if ((v203 & 1) == 0)
      {
        v202 = sub_2722FFD78(0, v202[2] + 1, 1, v202);
        *v201 = v202;
      }

      v205 = v202[2];
      v204 = v202[3];
      if (v205 >= v204 >> 1)
      {
        v202 = sub_2722FFD78(v204 > 1, v205 + 1, 1, v202);
        *v201 = v202;
      }

      v202[2] = v205 + 1;
      sub_2723019C4(v329, v202 + ((*(v325 + 80) + 32) & ~*(v325 + 80)) + *(v325 + 72) * v205, type metadata accessor for VANRValidationError);
      v189 = v199(&v371, 0);
LABEL_85:
      v2 = v362;
      v206 = v364;
      v207 = (v364)(v189);
      v208 = (*(*v207 + 568))(v207);

      if (v208 < 1)
      {
        goto LABEL_45;
      }

      v210 = v206(v209);
      v211 = (*(*v210 + 568))(v210);

      if ((v211 & 0x8000000000000000) != 0)
      {
        goto LABEL_188;
      }

      v212 = v365[2] >= v211 ? v211 : v365[2];
      if (v211 && v212)
      {
        v361 = v365 + 4;
        v357 = type metadata accessor for VACommonWords();
        v213 = 0;
        v353 = *v358;
        v352 = v212;
        do
        {
          v218 = &v361[2 * v213];
          v220 = *v218;
          v219 = v218[1];
          v221 = v355;
          v222 = v356;
          (v353)(v355, v366 + *(v354 + 108), v356);

          v223 = sub_27229712C(v221);
          (*v351)(v221, v222);
          v224 = sub_2723778AC();
          v226 = v225;
          if (*(v223 + 16) && (v227 = v224, v228 = *(v223 + 40), sub_27237874C(), sub_27237790C(), v229 = sub_27237878C(), v230 = -1 << *(v223 + 32), v231 = v229 & ~v230, ((*(v223 + 56 + ((v231 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v231) & 1) != 0))
          {
            v232 = ~v230;
            while (1)
            {
              v233 = (*(v223 + 48) + 16 * v231);
              v234 = *v233 == v227 && v233[1] == v226;
              if (v234 || (sub_27237865C() & 1) != 0)
              {
                break;
              }

              v231 = (v231 + 1) & v232;
              if (((*(v223 + 56 + ((v231 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v231) & 1) == 0)
              {
                goto LABEL_105;
              }
            }

            v240 = v334;
            v241 = v346;
            v342(v334, v343, v346);

            v242 = sub_27237725C();
            v243 = sub_272377E8C();

            if (os_log_type_enabled(v242, v243))
            {
              v244 = swift_slowAlloc();
              v245 = swift_slowAlloc();
              v371 = v245;
              *v244 = v335;
              v246 = sub_2721FFD04(v220, v219, &v371);

              *(v244 + 4) = v246;
              _os_log_impl(&dword_2721E4000, v242, v243, "Not including %s in listenToAsrForEnrollments because it is a common word", v244, 0xCu);
              sub_2722039C8(v245);
              MEMORY[0x2743C69C0](v245, -1, -1);
              MEMORY[0x2743C69C0](v244, -1, -1);

              v247 = v240;
              v248 = v346;
            }

            else
            {

              v247 = v240;
              v248 = v241;
            }

            v341(v247, v248);
          }

          else
          {
LABEL_105:

            v235 = *(v366 + 80);
            if (*(v235 + 16))
            {
              v236 = v360;
              v237 = sub_27220038C(v359, v360);
              if (v238)
              {
                v239 = *(*(v235 + 56) + 8 * v237);
              }

              else
              {
                v239 = MEMORY[0x277D84F90];
              }
            }

            else
            {
              v239 = MEMORY[0x277D84F90];
              v236 = v360;
            }

            v249 = sub_272301A2C(v239);

            v378 = v249;
            v250 = sub_2723778AC();
            v252 = v251;

            sub_2722AB1B4(&v371, v250, v252);

            v253 = v378;
            v254 = *(v378 + 16);
            if (v254)
            {
              v214 = sub_2722702A8(*(v378 + 16), 0);
              v255 = sub_2722A02C4(&v371, v214 + 4, v254, v253);

              sub_272270484();
              if (v255 != v254)
              {
                goto LABEL_184;
              }
            }

            else
            {

              v214 = MEMORY[0x277D84F90];
            }

            v215 = v366;
            swift_beginAccess();
            v216 = *(v215 + 80);
            v217 = swift_isUniquelyReferenced_nonNull_native();
            v377 = *(v215 + 80);
            *(v215 + 80) = 0x8000000000000000;
            sub_272300908(v214, v359, v236, v217);

            *(v215 + 80) = v377;
            swift_endAccess();
          }

          ++v213;
        }

        while (v213 != v352);

        v2 = v362;
      }

      else
      {
LABEL_45:
      }

      sub_2723025AC(v338, type metadata accessor for VANRNameConfiguration);
      sub_2723025AC(v340, type metadata accessor for VANRCollectedEnrollment);
      v139 = v330;
      v133 = v316;
      v136 = v337;
      v137 = v336;
    }

    if (v314 <= v137 + 1)
    {
      v141 = v137 + 1;
    }

    else
    {
      v141 = v314;
    }

    v142 = v141 - 1;
    while (1)
    {
      v140 = v137 + 1;
      if (__OFADD__(v137, 1))
      {
        break;
      }

      if (v140 >= v314)
      {
        v148 = v333;
        (*v319)(v139, 1, 1, v333);
        v337 = 0;
        v336 = v142;
        goto LABEL_58;
      }

      v136 = *(v133 + 8 * v140);
      ++v137;
      if (v136)
      {
        v336 = v140;
        goto LABEL_57;
      }
    }

LABEL_183:
    __break(1u);
LABEL_184:
    __break(1u);
LABEL_185:
    __break(1u);
LABEL_186:
    __break(1u);
    goto LABEL_187;
  }

LABEL_125:
  v263 = v2[9];
  v264 = v263 + 64;
  v265 = 1 << *(v263 + 32);
  if (v265 < 64)
  {
    v266 = ~(-1 << v265);
  }

  else
  {
    v266 = -1;
  }

  v349 = v266 & *(v263 + 64);
  v347 = (v265 + 63) >> 6;
  v345 = (v315 + 16);
  v344 = (v315 + 8);
  v346 = v263;

  v267 = 0;
  v343 = v264;
  while (v349)
  {
    v268 = v267;
LABEL_136:
    v269 = *(v346 + 48);
    v348 = v268;
    v270 = v269 + ((v268 << 10) | (16 * __clz(__rbit64(v349))));
    v271 = *v270;
    v272 = *(v270 + 8);
    type metadata accessor for VACommonWords();
    v273 = v366;
    v274 = v355;
    v275 = v356;
    (*v345)(v355, v366 + *(v354 + 108), v356);

    v364 = sub_272297150(v274);
    (*v344)(v274, v275);
    v276 = *(v273 + 80);
    if (*(v276 + 16) && (v277 = sub_27220038C(v271, v272), (v278 & 1) != 0))
    {
      v279 = *(*(v276 + 56) + 8 * v277);
    }

    else
    {
      v279 = MEMORY[0x277D84F90];
    }

    sub_272301A2C(v279);

    v280 = *(v366 + 80);
    if (*(v280 + 16) && (v281 = sub_27220038C(v271, v272), (v282 & 1) != 0))
    {
      v283 = *(*(v280 + 56) + 8 * v281);
    }

    else
    {
      v283 = MEMORY[0x277D84F90];
    }

    v352 = *(v283 + 16);
    v349 &= v349 - 1;
    if (v352)
    {
      v284 = 0;
      v365 = *(v364 + 16);
      v351 = (v283 + 32);
      v363 = (v364 + 32);
      v361 = v271;
      v350 = v283;
      while (v284 < *(v283 + 16))
      {
        if (v365)
        {
          v353 = v284;
          v285 = &v351[2 * v284];
          v286 = *v285;
          v287 = v285[1];

          v288 = 0;
          while (v288 < *(v364 + 16))
          {
            v289 = v363[v288];
            if (*(v289 + 16))
            {
              v290 = *(v289 + 40);
              sub_27237874C();

              sub_27237790C();
              v291 = sub_27237878C();
              v292 = -1 << *(v289 + 32);
              v293 = v291 & ~v292;
              if ((*(v289 + 56 + ((v293 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v293))
              {
                v294 = ~v292;
                while (1)
                {
                  v295 = (*(v289 + 48) + 16 * v293);
                  v296 = *v295 == v286 && v295[1] == v287;
                  if (v296 || (sub_27237865C() & 1) != 0)
                  {
                    break;
                  }

                  v293 = (v293 + 1) & v294;
                  if (((*(v289 + 56 + ((v293 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v293) & 1) == 0)
                  {
                    goto LABEL_151;
                  }
                }

                v297 = *(v366 + 80);
                if (*(v297 + 16) && (v298 = sub_27220038C(v361, v272), (v299 & 1) != 0))
                {
                  v300 = *(*(v297 + 56) + 8 * v298);
                }

                else
                {
                  v300 = MEMORY[0x277D84F90];
                }

                v301 = sub_272301A2C(v300);

                v378 = v301;

                sub_2722FA4E4(v302);
                v303 = v378;
                v304 = *(v378 + 16);
                if (v304)
                {
                  v305 = sub_2722702A8(*(v378 + 16), 0);
                  v360 = sub_2722A02C4(&v371, v305 + 4, v304, v303);
                  v359 = v372;
                  v358 = v373;
                  v357 = v374;

                  sub_272270484();
                  if (v360 != v304)
                  {
                    goto LABEL_182;
                  }
                }

                else
                {

                  v305 = MEMORY[0x277D84F90];
                }

                v306 = v366;
                swift_beginAccess();
                v307 = *(v306 + 80);
                v308 = swift_isUniquelyReferenced_nonNull_native();
                v377 = *(v306 + 80);
                *(v306 + 80) = 0x8000000000000000;
                sub_272300908(v305, v361, v272, v308);

                *(v306 + 80) = v377;
                swift_endAccess();
              }

              else
              {
LABEL_151:
              }
            }

            if (++v288 == v365)
            {

              v2 = v362;
              v283 = v350;
              v284 = v353;
              goto LABEL_147;
            }
          }

          __break(1u);
          goto LABEL_180;
        }

LABEL_147:
        if (++v284 == v352)
        {
          goto LABEL_129;
        }
      }

      goto LABEL_186;
    }

LABEL_129:

    v267 = v348;
    v264 = v343;
  }

  while (1)
  {
    v268 = v267 + 1;
    if (__OFADD__(v267, 1))
    {
      break;
    }

    if (v268 >= v347)
    {
      v260 = &v375;
      goto LABEL_122;
    }

    ++v267;
    if (*(v264 + 8 * v268))
    {
      v349 = *(v264 + 8 * v268);
      goto LABEL_136;
    }
  }

LABEL_187:
  __break(1u);
LABEL_188:
  __break(1u);
}

uint64_t sub_2722FA2AC(uint64_t a1)
{
  v2 = sub_27237728C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v19[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_2722C389C();
  (*(v3 + 16))(v6, v7, v2);

  v8 = sub_27237725C();
  v9 = sub_272377E6C();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v20 = v11;
    *v10 = 136315138;
    v12 = a1 + OBJC_IVAR____TtC12VoiceActions25VANRNameRecognizerBuilder_runtimeParams;
    swift_beginAccess();
    v13 = *(v12 + 80);

    sub_2721F065C(&qword_2808817F8, &unk_27237CA80);
    v14 = sub_27237773C();
    v16 = v15;

    v17 = sub_2721FFD04(v14, v16, &v20);

    *(v10 + 4) = v17;
    _os_log_impl(&dword_2721E4000, v8, v9, "setEnrollmentsToAsrMatch: %s", v10, 0xCu);
    sub_2722039C8(v11);
    MEMORY[0x2743C69C0](v11, -1, -1);
    MEMORY[0x2743C69C0](v10, -1, -1);
  }

  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_2722FA4E4(uint64_t result)
{
  v1 = result;
  v2 = 0;
  v3 = result + 56;
  v4 = 1 << *(result + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(result + 56);
  v7 = (v4 + 63) >> 6;
  if (v6)
  {
    while (1)
    {
      v8 = v2;
LABEL_9:
      v9 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v10 = (*(v1 + 48) + ((v8 << 10) | (16 * v9)));
      v11 = *v10;
      v12 = v10[1];

      sub_2722AB1B4(&v13, v11, v12);

      if (!v6)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v8 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      __break(1u);
      return result;
    }

    if (v8 >= v7)
    {
      break;
    }

    v6 = *(v3 + 8 * v8);
    ++v2;
    if (v6)
    {
      v2 = v8;
      goto LABEL_9;
    }
  }
}

uint64_t sub_2722FA5E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 96) = v15;
  *(v8 + 80) = v14;
  *(v8 + 64) = a7;
  *(v8 + 72) = a8;
  *(v8 + 48) = a5;
  *(v8 + 56) = a6;
  *(v8 + 40) = a4;
  v9 = sub_27237728C();
  *(v8 + 104) = v9;
  v10 = *(v9 - 8);
  *(v8 + 112) = v10;
  v11 = *(v10 + 64) + 15;
  *(v8 + 120) = swift_task_alloc();
  *(v8 + 128) = swift_task_alloc();
  *(v8 + 136) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2722FA6DC, 0, 0);
}

uint64_t sub_2722FA6DC()
{
  if (v0[6] < 1)
  {
    if (v0[11] < 1)
    {
      v19 = v0[16];
      v18 = v0[17];
      v20 = v0[15];
      v21 = v0[5];
      sub_272377F6C();

      v22 = v0[1];

      return v22();
    }

    else
    {
      v10 = v0[7];
      type metadata accessor for VASpeechAPI();
      v11 = type metadata accessor for VANRNameConfiguration(0);
      v12 = (v10 + *(v11 + 20));
      v13 = *v12;
      v14 = v12[1];
      v15 = *(v11 + 28);
      v16 = swift_task_alloc();
      v0[21] = v16;
      *v16 = v0;
      v16[1] = sub_2722FAD04;
      v17 = v0[11];

      return static VASpeechAPI.nearestGraphemeBasedOnGrapheme(_:neighborsOf:locale:)(v17, v13, v14, v10 + v15);
    }
  }

  else
  {
    v1 = v0[7];
    type metadata accessor for VASpeechAPI();
    v2 = type metadata accessor for VANRNameConfiguration(0);
    v3 = (v1 + *(v2 + 20));
    v4 = *v3;
    v5 = v3[1];
    v6 = *(v2 + 28);
    v7 = swift_task_alloc();
    v0[18] = v7;
    *v7 = v0;
    v7[1] = sub_2722FA8DC;
    v8 = v0[6];

    return static VASpeechAPI.nearestGraphemeBasedOnPhoneme(_:neighborsOf:locale:)(v8, v4, v5, v1 + v6);
  }
}

uint64_t sub_2722FA8DC(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 144);
  v7 = *v2;
  *(v3 + 152) = a1;
  *(v3 + 160) = v1;

  if (v1)
  {
    v5 = sub_2722FB06C;
  }

  else
  {
    v5 = sub_2722FA9F0;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_2722FA9F0()
{
  v38 = v0;
  v1 = v0[19];
  v2 = v0[17];
  v3 = v0[13];
  v4 = v0[14];
  v5 = v0[9];
  v6 = sub_2722C389C();
  (*(v4 + 16))(v2, v6, v3);

  v7 = sub_27237725C();
  v8 = sub_272377E7C();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = v0[19];
    v10 = v0[14];
    v35 = v0[13];
    v36 = v0[17];
    v12 = v0[8];
    v11 = v0[9];
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v37 = v14;
    *v13 = 136315394;
    v15 = MEMORY[0x2743C4C60](v9, MEMORY[0x277D837D0]);
    v17 = sub_2721FFD04(v15, v16, &v37);

    *(v13 + 4) = v17;
    *(v13 + 12) = 2080;
    *(v13 + 14) = sub_2721FFD04(v12, v11, &v37);
    _os_log_impl(&dword_2721E4000, v7, v8, "Will add %s to namesToSearchForIn2ndPass for keyword %s from nearestGraphemeBasedOnPhoneme", v13, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x2743C69C0](v14, -1, -1);
    MEMORY[0x2743C69C0](v13, -1, -1);

    (*(v10 + 8))(v36, v35);
  }

  else
  {
    v18 = v0[17];
    v19 = v0[13];
    v20 = v0[14];

    (*(v20 + 8))(v18, v19);
  }

  sub_2723011F8(v0[8], v0[9], v0[19], v0[10]);

  if (v0[11] < 1)
  {
    v31 = v0[16];
    v30 = v0[17];
    v32 = v0[15];
    v33 = v0[5];
    sub_272377F6C();

    v34 = v0[1];

    return v34();
  }

  else
  {
    v21 = v0[7];
    type metadata accessor for VASpeechAPI();
    v22 = type metadata accessor for VANRNameConfiguration(0);
    v23 = (v21 + *(v22 + 20));
    v24 = *v23;
    v25 = v23[1];
    v26 = *(v22 + 28);
    v27 = swift_task_alloc();
    v0[21] = v27;
    *v27 = v0;
    v27[1] = sub_2722FAD04;
    v28 = v0[11];

    return static VASpeechAPI.nearestGraphemeBasedOnGrapheme(_:neighborsOf:locale:)(v28, v24, v25, v21 + v26);
  }
}

uint64_t sub_2722FAD04(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 168);
  v7 = *v2;
  *(v3 + 176) = a1;
  *(v3 + 184) = v1;

  if (v1)
  {
    v5 = sub_2722FB23C;
  }

  else
  {
    v5 = sub_2722FAE18;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_2722FAE18()
{
  v30 = v0;
  v1 = v0[22];
  v2 = v0[16];
  v3 = v0[13];
  v4 = v0[14];
  v5 = v0[9];
  v6 = sub_2722C389C();
  (*(v4 + 16))(v2, v6, v3);

  v7 = sub_27237725C();
  v8 = sub_272377E7C();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = v0[22];
    v10 = v0[14];
    v27 = v0[13];
    v28 = v0[16];
    v12 = v0[8];
    v11 = v0[9];
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v29 = v14;
    *v13 = 136315394;
    v15 = MEMORY[0x2743C4C60](v9, MEMORY[0x277D837D0]);
    v17 = sub_2721FFD04(v15, v16, &v29);

    *(v13 + 4) = v17;
    *(v13 + 12) = 2080;
    *(v13 + 14) = sub_2721FFD04(v12, v11, &v29);
    _os_log_impl(&dword_2721E4000, v7, v8, "Will add %s to namesToSearchForIn2ndPass for keyword %s from addNBestPronunciationsBasedOnGrapheme", v13, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x2743C69C0](v14, -1, -1);
    MEMORY[0x2743C69C0](v13, -1, -1);

    (*(v10 + 8))(v28, v27);
  }

  else
  {
    v18 = v0[16];
    v19 = v0[13];
    v20 = v0[14];

    (*(v20 + 8))(v18, v19);
  }

  sub_2723011F8(v0[8], v0[9], v0[22], v0[10]);

  v22 = v0[16];
  v21 = v0[17];
  v23 = v0[15];
  v24 = v0[5];
  sub_272377F6C();

  v25 = v0[1];

  return v25();
}

uint64_t sub_2722FB06C()
{
  v1 = v0[20];
  v3 = v0[14];
  v2 = v0[15];
  v4 = v0[13];
  v5 = sub_2722C389C();
  (*(v3 + 16))(v2, v5, v4);
  v6 = v1;
  v7 = sub_27237725C();
  v8 = sub_272377E8C();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    v11 = v1;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v12;
    *v10 = v12;
    _os_log_impl(&dword_2721E4000, v7, v8, "Error in addNBest: %@", v9, 0xCu);
    sub_2721F40F0(v10, &qword_280881A40, &unk_27237D620);
    MEMORY[0x2743C69C0](v10, -1, -1);
    MEMORY[0x2743C69C0](v9, -1, -1);
  }

  v14 = v0[14];
  v13 = v0[15];
  v16 = v0[12];
  v15 = v0[13];

  (*(v14 + 8))(v13, v15);
  swift_beginAccess();
  v17 = *(v16 + 16);
  *(v16 + 16) = v1;

  v19 = v0[16];
  v18 = v0[17];
  v20 = v0[15];
  v21 = v0[5];
  sub_272377F6C();

  v22 = v0[1];

  return v22();
}

uint64_t sub_2722FB23C()
{
  v1 = v0[23];
  v3 = v0[14];
  v2 = v0[15];
  v4 = v0[13];
  v5 = sub_2722C389C();
  (*(v3 + 16))(v2, v5, v4);
  v6 = v1;
  v7 = sub_27237725C();
  v8 = sub_272377E8C();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    v11 = v1;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v12;
    *v10 = v12;
    _os_log_impl(&dword_2721E4000, v7, v8, "Error in addNBest: %@", v9, 0xCu);
    sub_2721F40F0(v10, &qword_280881A40, &unk_27237D620);
    MEMORY[0x2743C69C0](v10, -1, -1);
    MEMORY[0x2743C69C0](v9, -1, -1);
  }

  v14 = v0[14];
  v13 = v0[15];
  v16 = v0[12];
  v15 = v0[13];

  (*(v14 + 8))(v13, v15);
  swift_beginAccess();
  v17 = *(v16 + 16);
  *(v16 + 16) = v1;

  v19 = v0[16];
  v18 = v0[17];
  v20 = v0[15];
  v21 = v0[5];
  sub_272377F6C();

  v22 = v0[1];

  return v22();
}

unint64_t sub_2722FB40C@<X0>(uint64_t a1@<X8>)
{
  v3 = v2;
  v137 = a1;
  v4 = sub_2721F065C(&qword_2808819D8, &qword_27237CB50);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v146 = v122 - v6;
  v7 = sub_27237728C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v140 = v122 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v144 = v122 - v12;
  v13 = sub_272376E5C();
  v14 = *(v13 - 8);
  v148 = v13;
  v149 = v14;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = v122 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_272376EBC();
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x28223BE20](v18);
  v21 = MEMORY[0x28223BE20](v20);
  v23 = v122 - v22;
  v24 = MEMORY[0x28223BE20](v21);
  v26 = v122 - v25;
  MEMORY[0x28223BE20](v24);
  v31 = v122 - v30;
  v141 = v1;
  v32 = *(v1 + 24);
  v33 = *(v32 + 16);
  if (!v33)
  {
    type metadata accessor for VANRValidationError(0);
    sub_272302674(&qword_280882B80, type metadata accessor for VANRValidationError);
    swift_allocError();
    *v50 = 0xD00000000000002FLL;
    v50[1] = 0x800000027238F650;
    swift_storeEnumTagMultiPayload();
    return swift_willThrow();
  }

  v135 = v23;
  v136 = v29;
  v139 = v8;
  v143 = v7;
  v145 = v27;
  v134 = v3;
  v34 = v28;
  v35 = type metadata accessor for VANRNameConfiguration(0);
  v36 = v31;
  v37 = v35;
  v38 = *(v35 - 8);
  v39 = (v32 + ((*(v38 + 80) + 32) & ~*(v38 + 80)));
  v40 = *(v35 + 28);
  v147 = v34;
  v41 = *(v34 + 16);
  v153 = v36;
  v154 = v18;
  v150 = v41;
  v41(v36, &v39[v40], v18);
  v42 = *(v149 + 16);
  v138 = v17;
  v133 = v149 + 16;
  v132 = v42;
  v42(v17, v39, v148);
  v151 = v34 + 16;
  v152 = (v34 + 8);
  v142 = v32;

  v43 = 1;
  while (v33 != v43)
  {
    v44 = v43 + 1;
    v45 = v154;
    v150(v26, &v39[*(v38 + 72) * v43 + *(v37 + 28)], v154);
    sub_272302674(&qword_280882BA8, MEMORY[0x277CC9788]);
    v46 = sub_2723777DC();
    v47 = *v152;
    (*v152)(v26, v45);
    v43 = v44;
    if ((v46 & 1) == 0)
    {
      type metadata accessor for VANRValidationError(0);
      sub_272302674(&qword_280882B80, type metadata accessor for VANRValidationError);
      swift_allocError();
      *v48 = 0xD00000000000002ELL;
      v48[1] = 0x800000027238F5F0;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();

      (*(v149 + 8))(v138, v148);
      return (v47)(v153, v154);
    }
  }

  v51 = sub_2722C389C();
  v52 = v139;
  v53 = *(v139 + 16);
  v54 = v144;
  v129 = v51;
  v55 = v143;
  v130 = v139 + 16;
  v128 = v53;
  (v53)(v144);
  v56 = v135;
  v57 = v154;
  v58 = v153;
  (v150)(v135);
  v59 = sub_27237725C();
  v60 = sub_272377E7C();
  if (os_log_type_enabled(v59, v60))
  {
    v61 = swift_slowAlloc();
    v62 = swift_slowAlloc();
    v161 = v62;
    *v61 = 136315138;
    v63 = sub_272376E7C();
    v65 = v64;
    v142 = *v152;
    v142(v56, v154);
    v66 = sub_2721FFD04(v63, v65, &v161);
    v67 = v153;

    *(v61 + 4) = v66;
    _os_log_impl(&dword_2721E4000, v59, v60, "Got locale: %s Checking for Speech asset...", v61, 0xCu);
    sub_2722039C8(v62);
    v68 = v62;
    v57 = v154;
    MEMORY[0x2743C69C0](v68, -1, -1);
    MEMORY[0x2743C69C0](v61, -1, -1);

    v127 = *(v52 + 8);
    v127(v144, v143);
  }

  else
  {

    v142 = *v152;
    v142(v56, v57);
    v127 = *(v52 + 8);
    v127(v54, v55);
    v67 = v58;
  }

  v69 = swift_allocObject();
  *(v69 + 16) = MEMORY[0x277D84F90];
  v125 = v69 + 16;
  v70 = dispatch_semaphore_create(0);
  v71 = swift_allocObject();
  v144 = v71;
  *(v71 + 16) = 0;
  v123 = (v71 + 16);
  v72 = swift_allocObject();
  v135 = v72;
  *(v72 + 16) = 0;
  v126 = (v72 + 16);
  v131 = mach_absolute_time();
  v73 = sub_272377C3C();
  (*(*(v73 - 8) + 56))(v146, 1, 1, v73);
  v150(v26, v67, v57);
  v74 = v147;
  v75 = (*(v147 + 80) + 56) & ~*(v147 + 80);
  v76 = (v136 + v75 + 7) & 0xFFFFFFFFFFFFFFF8;
  v124 = *(v147 + 80);
  v77 = swift_allocObject();
  v77[2] = 0;
  v77[3] = 0;
  v77[4] = v70;
  v77[5] = v69;
  v77[6] = v141;
  v78 = *(v74 + 32);
  v79 = v77 + v75;
  v80 = v154;
  v122[1] = v74 + 32;
  v122[0] = v78;
  v78(v79, v26, v154);
  *(v77 + v76) = v144;
  *(v77 + ((v76 + 15) & 0xFFFFFFFFFFFFFFF8)) = v135;
  v81 = v70;
  v136 = v69;

  sub_27222A1F0(0, 0, v146, &unk_272383F10, v77);

  sub_272377F5C();
  type metadata accessor for VARequestContext(0);
  v82 = mach_absolute_time();
  v83 = v82 >= v131;
  result = v82 - v131;
  if (!v83)
  {
    goto LABEL_32;
  }

  v131 = v81;
  v84 = sub_2722310BC(result);
  v85 = v140;
  v86 = v143;
  v128(v140, v129, v143);
  v87 = sub_27237725C();
  v88 = sub_272377E7C();
  if (os_log_type_enabled(v87, v88))
  {
    v89 = swift_slowAlloc();
    *v89 = 134217984;
    *(v89 + 4) = v84;
    _os_log_impl(&dword_2721E4000, v87, v88, "Took %f seconds to check Speech asset availability", v89, 0xCu);
    MEMORY[0x2743C69C0](v89, -1, -1);
  }

  v127(v85, v86);
  v90 = v126;
  swift_beginAccess();
  v91 = *v90;
  v92 = v149;
  if (v91)
  {
    swift_willThrow();
    v93 = v91;

    (*(v92 + 8))(v138, v148);
    v142(v153, v80);
  }

  v94 = v125;
  swift_beginAccess();
  v95 = *v94;
  v141 = *(*v94 + 16);
  if (v141)
  {
    v146 = v95 + ((v124 + 32) & ~v124);

    v96 = 0;
    v97 = v145;
    v143 = result;
    while (v96 < *(result + 16))
    {
      v150(v97, v146 + *(v147 + 72) * v96, v80);
      sub_272376E7C();
      v98 = sub_2723778AC();
      v100 = v99;

      v155 = v98;
      v156 = v100;
      v159 = 95;
      v160 = 0xE100000000000000;
      v157 = 45;
      v158 = 0xE100000000000000;
      sub_272203AC4();
      v101 = sub_2723780FC();
      v103 = v102;

      sub_272376E7C();
      v104 = sub_2723778AC();
      v106 = v105;

      v155 = v104;
      v156 = v106;
      v159 = 95;
      v160 = 0xE100000000000000;
      v157 = 45;
      v158 = 0xE100000000000000;
      v107 = sub_2723780FC();
      v109 = v108;

      if (v101 == v107 && v103 == v109)
      {

LABEL_26:

        v115 = v145;
        v116 = v123;
        swift_beginAccess();
        v117 = v153;
        if (*v116)
        {

          (*(v149 + 8))(v138, v148);
          v118 = v154;
          v142(v117, v154);
          (v122[0])(v137, v115, v118);
        }

        else
        {
          type metadata accessor for VANRValidationError(0);
          sub_272302674(&qword_280882B80, type metadata accessor for VANRValidationError);
          swift_allocError();
          v119 = v154;
          v150(v120, v117, v154);
          swift_storeEnumTagMultiPayload();
          swift_willThrow();

          v121 = v142;
          v142(v115, v119);
          (*(v149 + 8))(v138, v148);
          v121(v117, v119);
        }

LABEL_29:
      }

      v110 = sub_27237865C();

      if (v110)
      {
        goto LABEL_26;
      }

      ++v96;
      v97 = v145;
      v80 = v154;
      v142(v145, v154);
      result = v143;
      if (v141 == v96)
      {

        type metadata accessor for VANRValidationError(0);
        sub_272302674(&qword_280882B80, type metadata accessor for VANRValidationError);
        swift_allocError();
        v111 = v138;
        v112 = v148;
        v132(v113, v138, v148);
        swift_storeEnumTagMultiPayload();
        swift_willThrow();

        (*(v149 + 8))(v111, v112);
        v142(v153, v80);
        goto LABEL_29;
      }
    }

    __break(1u);
LABEL_32:
    __break(1u);
    return result;
  }

  sub_27230206C();
  swift_allocError();
  *v114 = 0xD00000000000002CLL;
  v114[1] = 0x800000027238F620;
  swift_willThrow();

  (*(v149 + 8))(v138, v148);
  v142(v153, v80);
}

uint64_t sub_2722FC560(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[27] = a8;
  v8[28] = v27;
  v8[25] = a6;
  v8[26] = a7;
  v8[23] = a4;
  v8[24] = a5;
  v9 = sub_272376EBC();
  v8[29] = v9;
  v10 = *(v9 - 8);
  v8[30] = v10;
  v11 = *(v10 + 64) + 15;
  v8[31] = swift_task_alloc();
  v12 = sub_27237728C();
  v8[32] = v12;
  v13 = *(v12 - 8);
  v8[33] = v13;
  v14 = *(v13 + 64) + 15;
  v8[34] = swift_task_alloc();
  v8[35] = swift_task_alloc();
  v8[36] = swift_task_alloc();
  v15 = *(*(type metadata accessor for VASpeechBiasData() - 8) + 64) + 15;
  v8[37] = swift_task_alloc();
  v16 = sub_27237768C();
  v8[38] = v16;
  v17 = *(v16 - 8);
  v8[39] = v17;
  v18 = *(v17 + 64) + 15;
  v8[40] = swift_task_alloc();
  v19 = sub_2721F065C(&qword_280881F58, &unk_27237E2F0);
  v8[41] = v19;
  v20 = *(v19 - 8);
  v8[42] = v20;
  v21 = *(v20 + 64) + 15;
  v8[43] = swift_task_alloc();
  v22 = sub_2723774FC();
  v8[44] = v22;
  v23 = *(v22 - 8);
  v8[45] = v23;
  v24 = *(v23 + 64) + 15;
  v8[46] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2722FC7F0, 0, 0);
}

uint64_t sub_2722FC7F0()
{
  v2 = v0[45];
  v1 = v0[46];
  v3 = v0[44];
  v0[47] = sub_27237750C();
  v0[48] = sub_2723774EC();
  (*(v2 + 104))(v1, *MEMORY[0x277CDCC60], v3);
  v4 = *(MEMORY[0x277CDCC50] + 4);
  v8 = (*MEMORY[0x277CDCC50] + MEMORY[0x277CDCC50]);
  v5 = swift_task_alloc();
  v0[49] = v5;
  *v5 = v0;
  v5[1] = sub_2722FC8EC;
  v6 = v0[46];

  return v8(v6);
}

uint64_t sub_2722FC8EC(uint64_t a1)
{
  v2 = *(*v1 + 392);
  v3 = *(*v1 + 384);
  v4 = *(*v1 + 368);
  v5 = *(*v1 + 360);
  v6 = *(*v1 + 352);
  v8 = *v1;
  *(*v1 + 400) = a1;

  (*(v5 + 8))(v4, v6);

  return MEMORY[0x2822009F8](sub_2722FCA68, 0, 0);
}

uint64_t sub_2722FCA68()
{
  v1 = *(v0 + 400);
  v2 = *(v0 + 320);
  v3 = *(v0 + 296);
  v4 = *(v0 + 192);
  v5 = *(v0 + 200);
  swift_beginAccess();
  v6 = *(v4 + 16);
  *(v4 + 16) = v1;

  type metadata accessor for VASpeechAPI();
  v7 = v5 + OBJC_IVAR____TtC12VoiceActions25VANRNameRecognizerBuilder_runtimeParams;
  swift_beginAccess();
  v14 = *(v7 + 89);
  VATaskHintCommand.speechTaskHint()(v2);
  *(v0 + 576) = 0;
  VASpeechBiasData.init()(v3);
  v8 = swift_task_alloc();
  *(v0 + 408) = v8;
  *v8 = v0;
  v8[1] = sub_2722FCBA8;
  v9 = *(v0 + 344);
  v10 = *(v0 + 320);
  v11 = *(v0 + 296);
  v12 = *(v0 + 208);

  return static VASpeechAPI.prepareTranscriber(taskHint:uniqueNames:locale:biasOptions:biasData:)(v9, v10, &unk_28818E530, v12, (v0 + 576), v11);
}

uint64_t sub_2722FCBA8(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = (*v3)[51];
  v17 = *v3;
  v4[52] = a2;
  v4[53] = v2;

  if (v2)
  {
    v7 = v4[39];
    v6 = v4[40];
    v8 = v4[38];
    sub_2723025AC(v4[37], type metadata accessor for VASpeechBiasData);
    (*(v7 + 8))(v6, v8);
    v9 = sub_2722FDC80;
  }

  else
  {
    v11 = v4[42];
    v10 = v4[43];
    v13 = v4[40];
    v12 = v4[41];
    v14 = v4[38];
    v15 = v4[39];
    sub_2723025AC(v4[37], type metadata accessor for VASpeechBiasData);
    (*(v15 + 8))(v13, v14);
    (*(v11 + 8))(v10, v12);

    v9 = sub_2722FCD70;
  }

  return MEMORY[0x2822009F8](v9, 0, 0);
}

uint64_t sub_2722FCD70()
{
  v1 = v0[52];
  v2 = v0[47];
  v0[54] = sub_2723774EC();
  v0[55] = sub_2721F065C(&qword_280881FF8, &qword_272381B90);
  v3 = swift_allocObject();
  v0[56] = v3;
  *(v3 + 16) = xmmword_27237AF80;
  v4 = sub_272302674(&qword_280882000, MEMORY[0x277CDCB98]);
  v0[57] = v4;
  *(v3 + 32) = v1;
  *(v3 + 40) = v4;
  v5 = *(MEMORY[0x277CDCC40] + 4);
  v8 = (*MEMORY[0x277CDCC40] + MEMORY[0x277CDCC40]);

  v6 = swift_task_alloc();
  v0[58] = v6;
  *v6 = v0;
  v6[1] = sub_2722FCEB4;

  return v8(v3);
}

uint64_t sub_2722FCEB4(char a1)
{
  v2 = *(*v1 + 464);
  v3 = *(*v1 + 448);
  v4 = *(*v1 + 432);
  v6 = *v1;
  *(*v1 + 577) = a1;

  return MEMORY[0x2822009F8](sub_2722FCFF0, 0, 0);
}

uint64_t sub_2722FCFF0()
{
  v1 = *(v0 + 577);
  v2 = *(v0 + 216);
  v3 = *(v0 + 200);
  v4 = swift_beginAccess();
  *(v2 + 16) = v1;
  v5 = *(*(*v3 + 256))(v4);
  v6 = (*(v5 + 1096))();

  if (v6 == 2 || (v6 & 1) == 0 || (v7 = *(v0 + 216), swift_beginAccess(), (*(v7 + 16) & 1) != 0))
  {
    v8 = *(v0 + 416);

    v9 = *(v0 + 368);
    v10 = *(v0 + 344);
    v11 = *(v0 + 320);
    v13 = *(v0 + 288);
    v12 = *(v0 + 296);
    v15 = *(v0 + 272);
    v14 = *(v0 + 280);
    v16 = *(v0 + 248);
    v17 = *(v0 + 184);
    sub_272377F6C();

    v18 = *(v0 + 8);

    return v18();
  }

  else
  {
    v20 = *(v0 + 288);
    v21 = *(v0 + 256);
    v22 = *(v0 + 264);
    v23 = sub_2722C389C();
    *(v0 + 472) = v23;
    v24 = *(v22 + 16);
    *(v0 + 480) = v24;
    *(v0 + 488) = (v22 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v24(v20, v23, v21);
    v25 = sub_27237725C();
    v26 = sub_272377E8C();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_2721E4000, v25, v26, "Speech API assets not yet installed. Downloading with assetsInstallationRequest", v27, 2u);
      MEMORY[0x2743C69C0](v27, -1, -1);
    }

    v28 = *(v0 + 456);
    v29 = *(v0 + 440);
    v30 = *(v0 + 416);
    v31 = *(v0 + 376);
    v32 = *(v0 + 288);
    v33 = *(v0 + 256);
    v34 = *(v0 + 264);

    v35 = *(v34 + 8);
    *(v0 + 496) = v35;
    v35(v32, v33);
    *(v0 + 504) = sub_2723774EC();
    v36 = swift_allocObject();
    *(v0 + 512) = v36;
    *(v36 + 16) = xmmword_27237AF80;
    *(v36 + 32) = v30;
    *(v36 + 40) = v28;
    v37 = *(MEMORY[0x277CDCC58] + 4);
    v39 = (*MEMORY[0x277CDCC58] + MEMORY[0x277CDCC58]);

    v38 = swift_task_alloc();
    *(v0 + 520) = v38;
    *v38 = v0;
    v38[1] = sub_2722FD368;

    return v39(v36, 0x7463416563696F56, 0xEC000000736E6F69);
  }
}

uint64_t sub_2722FD368(uint64_t a1)
{
  v2 = *(*v1 + 520);
  v3 = *(*v1 + 512);
  v4 = *(*v1 + 504);
  v6 = *v1;
  *(*v1 + 528) = a1;

  return MEMORY[0x2822009F8](sub_2722FD4A4, 0, 0);
}

uint64_t sub_2722FD4A4()
{
  if (v0[66])
  {
    v1 = *(MEMORY[0x277CDCD70] + 4);
    v2 = swift_task_alloc();
    v0[67] = v2;
    *v2 = v0;
    v2[1] = sub_2722FD61C;

    return MEMORY[0x28212C1E0]();
  }

  else
  {
    v3 = v0[57];
    v4 = v0[55];
    v5 = v0[52];
    v6 = v0[47];
    v0[69] = sub_2723774EC();
    v7 = swift_allocObject();
    v0[70] = v7;
    *(v7 + 16) = xmmword_27237AF80;
    *(v7 + 32) = v5;
    *(v7 + 40) = v3;
    v8 = *(MEMORY[0x277CDCC40] + 4);
    v11 = (*MEMORY[0x277CDCC40] + MEMORY[0x277CDCC40]);

    v9 = swift_task_alloc();
    v0[71] = v9;
    *v9 = v0;
    v9[1] = sub_2722FD838;

    return v11(v7);
  }
}

uint64_t sub_2722FD61C()
{
  v2 = *v1;
  v3 = *(*v1 + 536);
  v6 = *v1;
  *(*v1 + 544) = v0;

  if (v0)
  {
    v4 = sub_2722FDE9C;
  }

  else
  {

    v4 = sub_2722FD738;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_2722FD738()
{
  v1 = v0[57];
  v2 = v0[55];
  v3 = v0[52];
  v4 = v0[47];
  v0[69] = sub_2723774EC();
  v5 = swift_allocObject();
  v0[70] = v5;
  *(v5 + 16) = xmmword_27237AF80;
  *(v5 + 32) = v3;
  *(v5 + 40) = v1;
  v6 = *(MEMORY[0x277CDCC40] + 4);
  v9 = (*MEMORY[0x277CDCC40] + MEMORY[0x277CDCC40]);

  v7 = swift_task_alloc();
  v0[71] = v7;
  *v7 = v0;
  v7[1] = sub_2722FD838;

  return v9(v5);
}

uint64_t sub_2722FD838(char a1)
{
  v2 = *(*v1 + 568);
  v3 = *(*v1 + 560);
  v4 = *(*v1 + 552);
  v6 = *v1;
  *(*v1 + 578) = a1;

  return MEMORY[0x2822009F8](sub_2722FD974, 0, 0);
}

uint64_t sub_2722FD974()
{
  v42 = v0;
  v1 = *(v0 + 578);
  v2 = *(v0 + 216);
  swift_beginAccess();
  *(v2 + 16) = v1;
  if (v1)
  {
    v3 = *(v0 + 416);
  }

  else
  {
    v4 = *(v0 + 488);
    v5 = *(v0 + 248);
    v6 = *(v0 + 232);
    v7 = *(v0 + 240);
    v8 = *(v0 + 208);
    (*(v0 + 480))(*(v0 + 280), *(v0 + 472), *(v0 + 256));
    (*(v7 + 16))(v5, v8, v6);
    v9 = sub_27237725C();
    v10 = sub_272377E8C();
    v11 = os_log_type_enabled(v9, v10);
    v12 = *(v0 + 496);
    v40 = *(v0 + 416);
    v13 = *(v0 + 280);
    v14 = *(v0 + 256);
    v15 = *(v0 + 264);
    v17 = *(v0 + 240);
    v16 = *(v0 + 248);
    v18 = *(v0 + 232);
    if (v11)
    {
      v39 = *(v0 + 256);
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v41 = v20;
      *v19 = 136315138;
      sub_272302674(&qword_280882BC8, MEMORY[0x277CC9788]);
      v37 = v13;
      v38 = v12;
      v21 = sub_27237862C();
      v23 = v22;
      (*(v17 + 8))(v16, v18);
      v24 = sub_2721FFD04(v21, v23, &v41);

      *(v19 + 4) = v24;
      _os_log_impl(&dword_2721E4000, v9, v10, "Started an ASR asset download request for %s but ASR reports that the assets are not yet available. Will continue but this may cause errors later on.", v19, 0xCu);
      sub_2722039C8(v20);
      MEMORY[0x2743C69C0](v20, -1, -1);
      MEMORY[0x2743C69C0](v19, -1, -1);

      v38(v37, v39);
    }

    else
    {

      (*(v17 + 8))(v16, v18);
      v12(v13, v14);
    }

    v25 = *(v0 + 216);
    swift_beginAccess();
    *(v25 + 16) = 1;
  }

  v26 = *(v0 + 368);
  v27 = *(v0 + 344);
  v28 = *(v0 + 320);
  v30 = *(v0 + 288);
  v29 = *(v0 + 296);
  v32 = *(v0 + 272);
  v31 = *(v0 + 280);
  v33 = *(v0 + 248);
  v34 = *(v0 + 184);
  sub_272377F6C();

  v35 = *(v0 + 8);

  return v35();
}

uint64_t sub_2722FDC80()
{
  v1 = v0[53];
  v3 = v0[33];
  v2 = v0[34];
  v4 = v0[32];
  v5 = sub_2722C389C();
  (*(v3 + 16))(v2, v5, v4);
  v6 = v1;
  v7 = sub_27237725C();
  v8 = sub_272377E8C();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    v11 = v1;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v12;
    *v10 = v12;
    _os_log_impl(&dword_2721E4000, v7, v8, "Error in checking assets: %@", v9, 0xCu);
    sub_2721F40F0(v10, &qword_280881A40, &unk_27237D620);
    MEMORY[0x2743C69C0](v10, -1, -1);
    MEMORY[0x2743C69C0](v9, -1, -1);
  }

  v14 = v0[33];
  v13 = v0[34];
  v15 = v0[32];
  v16 = v0[28];

  (*(v14 + 8))(v13, v15);
  swift_beginAccess();
  v17 = *(v16 + 16);
  *(v16 + 16) = v1;

  v18 = v0[46];
  v19 = v0[43];
  v20 = v0[40];
  v22 = v0[36];
  v21 = v0[37];
  v24 = v0[34];
  v23 = v0[35];
  v25 = v0[31];
  v26 = v0[23];
  sub_272377F6C();

  v27 = v0[1];

  return v27();
}

uint64_t sub_2722FDE9C()
{
  v1 = v0[66];
  v2 = v0[52];

  v3 = v0[68];
  v5 = v0[33];
  v4 = v0[34];
  v6 = v0[32];
  v7 = sub_2722C389C();
  (*(v5 + 16))(v4, v7, v6);
  v8 = v3;
  v9 = sub_27237725C();
  v10 = sub_272377E8C();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v11 = 138412290;
    v13 = v3;
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 4) = v14;
    *v12 = v14;
    _os_log_impl(&dword_2721E4000, v9, v10, "Error in checking assets: %@", v11, 0xCu);
    sub_2721F40F0(v12, &qword_280881A40, &unk_27237D620);
    MEMORY[0x2743C69C0](v12, -1, -1);
    MEMORY[0x2743C69C0](v11, -1, -1);
  }

  v16 = v0[33];
  v15 = v0[34];
  v17 = v0[32];
  v18 = v0[28];

  (*(v16 + 8))(v15, v17);
  swift_beginAccess();
  v19 = *(v18 + 16);
  *(v18 + 16) = v3;

  v20 = v0[46];
  v21 = v0[43];
  v22 = v0[40];
  v24 = v0[36];
  v23 = v0[37];
  v26 = v0[34];
  v25 = v0[35];
  v27 = v0[31];
  v28 = v0[23];
  sub_272377F6C();

  v29 = v0[1];

  return v29();
}

uint64_t static VANRNameRecognizerBuilder.prepareLocale(systemConfig:locale:clientIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[16] = a3;
  v4[17] = a4;
  v4[14] = a1;
  v4[15] = a2;
  v5 = sub_27237728C();
  v4[18] = v5;
  v6 = *(v5 - 8);
  v4[19] = v6;
  v7 = *(v6 + 64) + 15;
  v4[20] = swift_task_alloc();
  v8 = *(*(type metadata accessor for VASpeechBiasData() - 8) + 64) + 15;
  v4[21] = swift_task_alloc();
  v9 = sub_27237768C();
  v4[22] = v9;
  v10 = *(v9 - 8);
  v4[23] = v10;
  v11 = *(v10 + 64) + 15;
  v4[24] = swift_task_alloc();
  v12 = sub_2721F065C(&qword_280881F58, &unk_27237E2F0);
  v4[25] = v12;
  v13 = *(v12 - 8);
  v4[26] = v13;
  v14 = *(v13 + 64) + 15;
  v4[27] = swift_task_alloc();
  v15 = sub_272376EBC();
  v4[28] = v15;
  v16 = *(v15 - 8);
  v4[29] = v16;
  v17 = *(v16 + 64) + 15;
  v4[30] = swift_task_alloc();
  v4[31] = swift_task_alloc();
  v18 = *(*(sub_2721F065C(&qword_280882BB8, &unk_272386DF0) - 8) + 64) + 15;
  v4[32] = swift_task_alloc();
  v4[33] = swift_task_alloc();
  v19 = sub_2723774FC();
  v4[34] = v19;
  v20 = *(v19 - 8);
  v4[35] = v20;
  v21 = *(v20 + 64) + 15;
  v4[36] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2722FE384, 0, 0);
}

uint64_t sub_2722FE384()
{
  v2 = v0[35];
  v1 = v0[36];
  v3 = v0[34];
  v0[37] = sub_27237750C();
  v0[38] = sub_2723774EC();
  (*(v2 + 104))(v1, *MEMORY[0x277CDCC60], v3);
  v4 = *(MEMORY[0x277CDCC50] + 4);
  v8 = (*MEMORY[0x277CDCC50] + MEMORY[0x277CDCC50]);
  v5 = swift_task_alloc();
  v0[39] = v5;
  *v5 = v0;
  v5[1] = sub_2722FE480;
  v6 = v0[36];

  return v8(v6);
}

uint64_t sub_2722FE480(uint64_t a1)
{
  v2 = *(*v1 + 312);
  v3 = *(*v1 + 304);
  v4 = *(*v1 + 288);
  v5 = *(*v1 + 280);
  v6 = *(*v1 + 272);
  v8 = *v1;
  *(*v1 + 320) = a1;

  (*(v5 + 8))(v4, v6);

  return MEMORY[0x2822009F8](sub_2722FE5FC, 0, 0);
}

uint64_t sub_2722FE5FC()
{
  v58 = v0;
  v1 = *(v0 + 320);
  v53 = *(*(v0 + 232) + 56);
  v53(*(v0 + 264), 1, 1, *(v0 + 224));
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = *(v0 + 232);
    v55 = *(v3 + 16);
    v4 = *(v0 + 320) + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v54 = *(v3 + 72);
    v51 = (v3 + 8);
    v52 = (v3 + 32);
    while (1)
    {
      v56 = v2;
      v5 = *(v0 + 120);
      v55(*(v0 + 248), v4, *(v0 + 224));
      sub_272376E7C();
      v6 = sub_2723778AC();
      v8 = v7;

      *(v0 + 16) = v6;
      *(v0 + 24) = v8;
      *(v0 + 32) = 95;
      *(v0 + 40) = 0xE100000000000000;
      *(v0 + 48) = 45;
      *(v0 + 56) = 0xE100000000000000;
      sub_272203AC4();
      v9 = sub_2723780FC();
      v11 = v10;

      sub_272376E7C();
      v12 = sub_2723778AC();
      v14 = v13;

      *(v0 + 64) = v12;
      *(v0 + 72) = v14;
      *(v0 + 80) = 95;
      *(v0 + 88) = 0xE100000000000000;
      *(v0 + 96) = 45;
      *(v0 + 104) = 0xE100000000000000;
      v15 = sub_2723780FC();
      v17 = v16;

      if (v9 == v15 && v11 == v17)
      {
        break;
      }

      v18 = sub_27237865C();

      if (v18)
      {
        goto LABEL_9;
      }

      (*v51)(*(v0 + 248), *(v0 + 224));
LABEL_4:
      v4 += v54;
      v2 = v56 - 1;
      if (v56 == 1)
      {
        v22 = *(v0 + 320);
        goto LABEL_11;
      }
    }

LABEL_9:
    v19 = *(v0 + 264);
    v20 = *(v0 + 248);
    v21 = *(v0 + 224);
    sub_2721F40F0(v19, &qword_280882BB8, &unk_272386DF0);
    (*v52)(v19, v20, v21);
    v53(v19, 0, 1, v21);
    goto LABEL_4;
  }

LABEL_11:

  v23 = *(v0 + 256);
  v24 = *(v0 + 224);
  v25 = *(v0 + 232);
  sub_2721F07F4(*(v0 + 264), v23, &qword_280882BB8, &unk_272386DF0);
  if ((*(v25 + 48))(v23, 1, v24) == 1)
  {
    v26 = *(v0 + 264);
    v27 = *(v0 + 120);
    sub_2721F40F0(*(v0 + 256), &qword_280882BB8, &unk_272386DF0);
    sub_27237820C();

    v57[0] = 0xD00000000000001DLL;
    v57[1] = 0x800000027238F680;
    v28 = sub_272376E7C();
    MEMORY[0x2743C4AD0](v28);

    sub_27230206C();
    swift_allocError();
    *v29 = 0xD00000000000001DLL;
    v29[1] = 0x800000027238F680;
    swift_willThrow();
    sub_2721F40F0(v26, &qword_280882BB8, &unk_272386DF0);
    v30 = *(v0 + 288);
    v32 = *(v0 + 256);
    v31 = *(v0 + 264);
    v34 = *(v0 + 240);
    v33 = *(v0 + 248);
    v35 = *(v0 + 216);
    v36 = *(v0 + 192);
    v38 = *(v0 + 160);
    v37 = *(v0 + 168);

    v39 = *(v0 + 8);

    return v39(0);
  }

  else
  {
    v41 = *(v0 + 192);
    v42 = *(v0 + 168);
    v43 = *(v0 + 112);
    v44 = (*(*(v0 + 232) + 32))(*(v0 + 240), *(v0 + 256), *(v0 + 224));
    (*(*v43 + 976))(v57, v44);
    if (LOBYTE(v57[0]) == 16)
    {
      v45 = 3;
    }

    else
    {
      v45 = v57[0];
    }

    type metadata accessor for VASpeechAPI();
    LOBYTE(v57[0]) = v45;
    VATaskHintCommand.speechTaskHint()(v41);
    *(v0 + 464) = 0;
    VASpeechBiasData.init()(v42);
    v46 = swift_task_alloc();
    *(v0 + 328) = v46;
    *v46 = v0;
    v46[1] = sub_2722FEB8C;
    v47 = *(v0 + 240);
    v48 = *(v0 + 216);
    v49 = *(v0 + 192);
    v50 = *(v0 + 168);

    return static VASpeechAPI.prepareTranscriber(taskHint:uniqueNames:locale:biasOptions:biasData:)(v48, v49, &unk_28818E560, v47, (v0 + 464), v50);
  }
}

uint64_t sub_2722FEB8C(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = (*v3)[41];
  v6 = (*v3)[23];
  v17 = *v3;
  v4[42] = a2;
  v4[43] = v2;

  v7 = (v6 + 8);
  if (v2)
  {
    v8 = v4[24];
    v9 = v4[22];
    sub_2723025AC(v4[21], type metadata accessor for VASpeechBiasData);
    (*v7)(v8, v9);
    v10 = sub_2722FF9E4;
  }

  else
  {
    v12 = v4[26];
    v11 = v4[27];
    v14 = v4[24];
    v13 = v4[25];
    v15 = v4[22];
    sub_2723025AC(v4[21], type metadata accessor for VASpeechBiasData);
    (*v7)(v14, v15);
    (*(v12 + 8))(v11, v13);

    v10 = sub_2722FED68;
  }

  return MEMORY[0x2822009F8](v10, 0, 0);
}

uint64_t sub_2722FED68()
{
  v1 = v0[42];
  v2 = v0[37];
  v0[44] = sub_2723774EC();
  v0[45] = sub_2721F065C(&qword_280881FF8, &qword_272381B90);
  v3 = swift_allocObject();
  v0[46] = v3;
  *(v3 + 16) = xmmword_27237AF80;
  v4 = sub_272302674(&qword_280882000, MEMORY[0x277CDCB98]);
  v0[47] = v4;
  *(v3 + 32) = v1;
  *(v3 + 40) = v4;
  v5 = *(MEMORY[0x277CDCC40] + 4);
  v8 = (*MEMORY[0x277CDCC40] + MEMORY[0x277CDCC40]);

  v6 = swift_task_alloc();
  v0[48] = v6;
  *v6 = v0;
  v6[1] = sub_2722FEEAC;

  return v8(v3);
}

uint64_t sub_2722FEEAC(char a1)
{
  v2 = *(*v1 + 384);
  v3 = *(*v1 + 368);
  v4 = *(*v1 + 352);
  v6 = *v1;
  *(*v1 + 465) = a1;

  return MEMORY[0x2822009F8](sub_2722FEFE8, 0, 0);
}

uint64_t sub_2722FEFE8()
{
  if (*(v0 + 465) == 1)
  {
    v1 = *(v0 + 336);

    v2 = *(v0 + 288);
    v4 = *(v0 + 256);
    v3 = *(v0 + 264);
    v5 = *(v0 + 248);
    v6 = *(v0 + 216);
    v7 = *(v0 + 192);
    v9 = *(v0 + 160);
    v8 = *(v0 + 168);
    (*(*(v0 + 232) + 8))(*(v0 + 240), *(v0 + 224));
    sub_2721F40F0(v3, &qword_280882BB8, &unk_272386DF0);

    v10 = *(v0 + 8);

    return v10(1);
  }

  else
  {
    v13 = *(v0 + 152);
    v12 = *(v0 + 160);
    v14 = *(v0 + 144);
    v15 = sub_2722C389C();
    (*(v13 + 16))(v12, v15, v14);
    v16 = sub_27237725C();
    v17 = sub_272377E8C();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_2721E4000, v16, v17, "Speech API assets not yet installed. Downloading with assetsInstallationRequest", v18, 2u);
      MEMORY[0x2743C69C0](v18, -1, -1);
    }

    v19 = *(v0 + 376);
    v20 = *(v0 + 360);
    v21 = *(v0 + 336);
    v22 = *(v0 + 296);
    v24 = *(v0 + 152);
    v23 = *(v0 + 160);
    v25 = *(v0 + 144);

    (*(v24 + 8))(v23, v25);
    *(v0 + 392) = sub_2723774EC();
    v26 = swift_allocObject();
    *(v0 + 400) = v26;
    *(v26 + 16) = xmmword_27237AF80;
    *(v26 + 32) = v21;
    *(v26 + 40) = v19;
    v27 = *(MEMORY[0x277CDCC58] + 4);
    v31 = (*MEMORY[0x277CDCC58] + MEMORY[0x277CDCC58]);

    v28 = swift_task_alloc();
    *(v0 + 408) = v28;
    *v28 = v0;
    v28[1] = sub_2722FF2A0;
    v29 = *(v0 + 128);
    v30 = *(v0 + 136);

    return v31(v26, v29, v30);
  }
}

uint64_t sub_2722FF2A0(uint64_t a1)
{
  v2 = *(*v1 + 408);
  v3 = *(*v1 + 400);
  v4 = *(*v1 + 392);
  v6 = *v1;
  *(*v1 + 416) = a1;

  return MEMORY[0x2822009F8](sub_2722FF3DC, 0, 0);
}

uint64_t sub_2722FF3DC()
{
  if (v0[52])
  {
    v1 = *(MEMORY[0x277CDCD70] + 4);
    v2 = swift_task_alloc();
    v0[53] = v2;
    *v2 = v0;
    v2[1] = sub_2722FF554;

    return MEMORY[0x28212C1E0]();
  }

  else
  {
    v3 = v0[47];
    v4 = v0[45];
    v5 = v0[42];
    v6 = v0[37];
    v0[55] = sub_2723774EC();
    v7 = swift_allocObject();
    v0[56] = v7;
    *(v7 + 16) = xmmword_27237AF80;
    *(v7 + 32) = v5;
    *(v7 + 40) = v3;
    v8 = *(MEMORY[0x277CDCC40] + 4);
    v11 = (*MEMORY[0x277CDCC40] + MEMORY[0x277CDCC40]);

    v9 = swift_task_alloc();
    v0[57] = v9;
    *v9 = v0;
    v9[1] = sub_2722FF788;

    return v11(v7);
  }
}

uint64_t sub_2722FF554()
{
  v2 = *v1;
  v3 = *(*v1 + 424);
  v4 = *v1;
  *(*v1 + 432) = v0;

  if (v0)
  {
    v5 = sub_2722FFAF4;
  }

  else
  {
    v5 = sub_2722FF688;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_2722FF688()
{
  v1 = v0[47];
  v2 = v0[45];
  v3 = v0[42];
  v4 = v0[37];
  v0[55] = sub_2723774EC();
  v5 = swift_allocObject();
  v0[56] = v5;
  *(v5 + 16) = xmmword_27237AF80;
  *(v5 + 32) = v3;
  *(v5 + 40) = v1;
  v6 = *(MEMORY[0x277CDCC40] + 4);
  v9 = (*MEMORY[0x277CDCC40] + MEMORY[0x277CDCC40]);

  v7 = swift_task_alloc();
  v0[57] = v7;
  *v7 = v0;
  v7[1] = sub_2722FF788;

  return v9(v5);
}

uint64_t sub_2722FF788(char a1)
{
  v2 = *(*v1 + 456);
  v3 = *(*v1 + 448);
  v4 = *(*v1 + 440);
  v6 = *v1;
  *(*v1 + 466) = a1;

  return MEMORY[0x2822009F8](sub_2722FF8C4, 0, 0);
}

uint64_t sub_2722FF8C4()
{
  v1 = *(v0 + 336);

  v12 = *(v0 + 466);
  v2 = *(v0 + 288);
  v4 = *(v0 + 256);
  v3 = *(v0 + 264);
  v5 = *(v0 + 248);
  v6 = *(v0 + 216);
  v7 = *(v0 + 192);
  v8 = *(v0 + 160);
  v9 = *(v0 + 168);
  (*(*(v0 + 232) + 8))(*(v0 + 240), *(v0 + 224));
  sub_2721F40F0(v3, &qword_280882BB8, &unk_272386DF0);

  v10 = *(v0 + 8);

  return v10(v12);
}

uint64_t sub_2722FF9E4()
{
  v1 = v0[33];
  (*(v0[29] + 8))(v0[30], v0[28]);
  sub_2721F40F0(v1, &qword_280882BB8, &unk_272386DF0);
  v2 = v0[43];
  v3 = v0[36];
  v5 = v0[32];
  v4 = v0[33];
  v7 = v0[30];
  v6 = v0[31];
  v8 = v0[27];
  v9 = v0[24];
  v11 = v0[20];
  v10 = v0[21];

  v12 = v0[1];

  return v12(0);
}

uint64_t sub_2722FFAF4()
{
  v1 = v0[42];
  v2 = v0[33];
  v4 = v0[29];
  v3 = v0[30];
  v5 = v0[28];

  (*(v4 + 8))(v3, v5);
  sub_2721F40F0(v2, &qword_280882BB8, &unk_272386DF0);
  v6 = v0[54];
  v7 = v0[36];
  v9 = v0[32];
  v8 = v0[33];
  v11 = v0[30];
  v10 = v0[31];
  v12 = v0[27];
  v13 = v0[24];
  v15 = v0[20];
  v14 = v0[21];

  v16 = v0[1];

  return v16(0);
}

void *VANRNameRecognizerBuilder.deinit()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = v0[4];
  v4 = v0[6];

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  v5 = v0[8];

  v6 = v0[9];

  sub_2723025AC(v0 + OBJC_IVAR____TtC12VoiceActions25VANRNameRecognizerBuilder_runtimeParams, type metadata accessor for VARuntimeParameters);
  v7 = *(v0 + OBJC_IVAR____TtC12VoiceActions25VANRNameRecognizerBuilder_validationErrors);

  return v0;
}

uint64_t VANRNameRecognizerBuilder.__deallocating_deinit()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = v0[4];
  v4 = v0[6];

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  v5 = v0[8];

  v6 = v0[9];

  sub_2723025AC(v0 + OBJC_IVAR____TtC12VoiceActions25VANRNameRecognizerBuilder_runtimeParams, type metadata accessor for VARuntimeParameters);
  v7 = *(v0 + OBJC_IVAR____TtC12VoiceActions25VANRNameRecognizerBuilder_validationErrors);

  v8 = *(*v0 + 48);
  v9 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

size_t sub_2722FFD78(size_t result, int64_t a2, char a3, void *a4)
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
LABEL_30:
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

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  sub_2721F065C(&qword_280882B90, &unk_272383EC0);
  v10 = *(type metadata accessor for VANRValidationError(0) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(type metadata accessor for VANRValidationError(0) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

uint64_t sub_2722FFF74(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = type metadata accessor for VANRCollectedEnrollment(0);
  v43 = *(v6 - 8);
  v7 = *(v43 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v45 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v10 = *(*v3 + 24);
  }

  sub_2721F065C(&qword_280882BF0, &qword_2723841A0);
  v44 = a2;
  result = sub_2723783DC();
  v12 = result;
  if (*(v9 + 16))
  {
    v41 = v3;
    v42 = v9;
    v13 = 0;
    v14 = (v9 + 64);
    v15 = 1 << *(v9 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v9 + 64);
    v18 = (v15 + 63) >> 6;
    v19 = result + 64;
    while (v17)
    {
      v22 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_17:
      v25 = v22 | (v13 << 6);
      v26 = *(v9 + 56);
      v27 = (*(v9 + 48) + 16 * v25);
      v28 = *v27;
      v29 = v27[1];
      v30 = *(v43 + 72);
      v31 = v26 + v30 * v25;
      if (v44)
      {
        sub_2723019C4(v31, v45, type metadata accessor for VANRCollectedEnrollment);
      }

      else
      {
        sub_27230260C(v31, v45, type metadata accessor for VANRCollectedEnrollment);
      }

      v32 = *(v12 + 40);
      sub_27237874C();
      sub_27237790C();
      result = sub_27237878C();
      v33 = -1 << *(v12 + 32);
      v34 = result & ~v33;
      v35 = v34 >> 6;
      if (((-1 << v34) & ~*(v19 + 8 * (v34 >> 6))) == 0)
      {
        v36 = 0;
        v37 = (63 - v33) >> 6;
        while (++v35 != v37 || (v36 & 1) == 0)
        {
          v38 = v35 == v37;
          if (v35 == v37)
          {
            v35 = 0;
          }

          v36 |= v38;
          v39 = *(v19 + 8 * v35);
          if (v39 != -1)
          {
            v20 = __clz(__rbit64(~v39)) + (v35 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v20 = __clz(__rbit64((-1 << v34) & ~*(v19 + 8 * (v34 >> 6)))) | v34 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v19 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      v21 = (*(v12 + 48) + 16 * v20);
      *v21 = v28;
      v21[1] = v29;
      result = sub_2723019C4(v45, *(v12 + 56) + v30 * v20, type metadata accessor for VANRCollectedEnrollment);
      ++*(v12 + 16);
      v9 = v42;
    }

    v23 = v13;
    while (1)
    {
      v13 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v13 >= v18)
      {
        break;
      }

      v24 = v14[v13];
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v17 = (v24 - 1) & v24;
        goto LABEL_17;
      }
    }

    if ((v44 & 1) == 0)
    {

      v3 = v41;
      goto LABEL_36;
    }

    v40 = 1 << *(v9 + 32);
    v3 = v41;
    if (v40 >= 64)
    {
      bzero(v14, ((v40 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v14 = -1 << v40;
    }

    *(v9 + 16) = 0;
  }

LABEL_36:
  *v3 = v12;
  return result;
}

uint64_t sub_2723002EC(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = type metadata accessor for VANRNameConfiguration(0);
  v43 = *(v6 - 8);
  v7 = *(v43 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v45 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v10 = *(*v3 + 24);
  }

  sub_2721F065C(&qword_280882C00, &unk_2723841B0);
  v44 = a2;
  result = sub_2723783DC();
  v12 = result;
  if (*(v9 + 16))
  {
    v41 = v3;
    v42 = v9;
    v13 = 0;
    v14 = (v9 + 64);
    v15 = 1 << *(v9 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v9 + 64);
    v18 = (v15 + 63) >> 6;
    v19 = result + 64;
    while (v17)
    {
      v22 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_17:
      v25 = v22 | (v13 << 6);
      v26 = *(v9 + 56);
      v27 = (*(v9 + 48) + 16 * v25);
      v28 = *v27;
      v29 = v27[1];
      v30 = *(v43 + 72);
      v31 = v26 + v30 * v25;
      if (v44)
      {
        sub_2723019C4(v31, v45, type metadata accessor for VANRNameConfiguration);
      }

      else
      {
        sub_27230260C(v31, v45, type metadata accessor for VANRNameConfiguration);
      }

      v32 = *(v12 + 40);
      sub_27237874C();
      sub_27237790C();
      result = sub_27237878C();
      v33 = -1 << *(v12 + 32);
      v34 = result & ~v33;
      v35 = v34 >> 6;
      if (((-1 << v34) & ~*(v19 + 8 * (v34 >> 6))) == 0)
      {
        v36 = 0;
        v37 = (63 - v33) >> 6;
        while (++v35 != v37 || (v36 & 1) == 0)
        {
          v38 = v35 == v37;
          if (v35 == v37)
          {
            v35 = 0;
          }

          v36 |= v38;
          v39 = *(v19 + 8 * v35);
          if (v39 != -1)
          {
            v20 = __clz(__rbit64(~v39)) + (v35 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v20 = __clz(__rbit64((-1 << v34) & ~*(v19 + 8 * (v34 >> 6)))) | v34 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v19 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      v21 = (*(v12 + 48) + 16 * v20);
      *v21 = v28;
      v21[1] = v29;
      result = sub_2723019C4(v45, *(v12 + 56) + v30 * v20, type metadata accessor for VANRNameConfiguration);
      ++*(v12 + 16);
      v9 = v42;
    }

    v23 = v13;
    while (1)
    {
      v13 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v13 >= v18)
      {
        break;
      }

      v24 = v14[v13];
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v17 = (v24 - 1) & v24;
        goto LABEL_17;
      }
    }

    if ((v44 & 1) == 0)
    {

      v3 = v41;
      goto LABEL_36;
    }

    v40 = 1 << *(v9 + 32);
    v3 = v41;
    if (v40 >= 64)
    {
      bzero(v14, ((v40 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v14 = -1 << v40;
    }

    *(v9 + 16) = 0;
  }

LABEL_36:
  *v3 = v12;
  return result;
}

uint64_t sub_272300664(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_2721F065C(&qword_2808826E0, &qword_272384190);
  v37 = a2;
  result = sub_2723783DC();
  v8 = result;
  if (*(v5 + 16))
  {
    v36 = v3;
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
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v5 + 56) + 4 * v21);
      if ((v37 & 1) == 0)
      {
        v26 = v22[1];
      }

      v27 = *(v8 + 40);
      sub_27237874C();
      sub_27237790C();
      result = sub_27237878C();
      v28 = -1 << *(v8 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v15 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v15 + 8 * v30);
          if (v34 != -1)
          {
            v16 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v29) & ~*(v15 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 4 * v16) = v25;
      ++*(v8 + 16);
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v37 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_35;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero((v5 + 64), ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_272300908(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_27220038C(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_27229FEAC(v16, a4 & 1);
      v20 = *v5;
      v11 = sub_27220038C(a2, a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_18:
        result = sub_2723786BC();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_2722A0154();
      v11 = v19;
    }
  }

  v22 = *v5;
  if (v17)
  {
    v23 = v22[7];
    v24 = *(v23 + 8 * v11);
    *(v23 + 8 * v11) = a1;
  }

  v22[(v11 >> 6) + 8] |= 1 << v11;
  v26 = (v22[6] + 16 * v11);
  *v26 = a2;
  v26[1] = a3;
  *(v22[7] + 8 * v11) = a1;
  v27 = v22[2];
  v15 = __OFADD__(v27, 1);
  v28 = v27 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v22[2] = v28;
}

unint64_t sub_272300A84(uint64_t a1, uint64_t a2, char a3, float a4)
{
  v5 = v4;
  v10 = *v4;
  result = sub_27220038C(a1, a2);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_15;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a3 & 1) == 0)
  {
    if (v18 < v16 || (a3 & 1) != 0)
    {
      sub_272300664(v16, a3 & 1);
      v20 = *v5;
      result = sub_27220038C(a1, a2);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_16:
        result = sub_2723786BC();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = result;
      sub_272301090();
      result = v19;
    }
  }

  v22 = *v5;
  if (v17)
  {
    *(v22[7] + 4 * result) = a4;
    return result;
  }

  v22[(result >> 6) + 8] |= 1 << result;
  v23 = (v22[6] + 16 * result);
  *v23 = a1;
  v23[1] = a2;
  *(v22[7] + 4 * result) = a4;
  v24 = v22[2];
  v15 = __OFADD__(v24, 1);
  v25 = v24 + 1;
  if (v15)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v22[2] = v25;
}

void *sub_272300BE0()
{
  v1 = v0;
  v2 = type metadata accessor for VANRCollectedEnrollment(0);
  v32 = *(v2 - 8);
  v3 = *(v32 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v31 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2721F065C(&qword_280882BF0, &qword_2723841A0);
  v5 = *v0;
  v6 = sub_2723783CC();
  v7 = v6;
  if (*(v5 + 16))
  {
    v30 = v1;
    result = (v6 + 64);
    v9 = v5 + 64;
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    if (v7 != v5 || result >= v9 + 8 * v10)
    {
      result = memmove(result, (v5 + 64), 8 * v10);
    }

    v11 = 0;
    v12 = *(v5 + 16);
    v33 = v7;
    *(v7 + 16) = v12;
    v13 = 1 << *(v5 + 32);
    v14 = *(v5 + 64);
    v15 = -1;
    if (v13 < 64)
    {
      v15 = ~(-1 << v13);
    }

    v16 = v15 & v14;
    v17 = (v13 + 63) >> 6;
    if ((v15 & v14) != 0)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_14:
        v21 = v18 | (v11 << 6);
        v22 = 16 * v21;
        v23 = (*(v5 + 48) + 16 * v21);
        v24 = *v23;
        v25 = v23[1];
        v26 = v31;
        v27 = *(v32 + 72) * v21;
        sub_27230260C(*(v5 + 56) + v27, v31, type metadata accessor for VANRCollectedEnrollment);
        v28 = v33;
        v29 = (*(v33 + 48) + v22);
        *v29 = v24;
        v29[1] = v25;
        sub_2723019C4(v26, *(v28 + 56) + v27, type metadata accessor for VANRCollectedEnrollment);
      }

      while (v16);
    }

    v19 = v11;
    while (1)
    {
      v11 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v11 >= v17)
      {

        v1 = v30;
        v7 = v33;
        goto LABEL_18;
      }

      v20 = *(v9 + 8 * v11);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v7;
  }

  return result;
}

void *sub_272300E38()
{
  v1 = v0;
  v2 = type metadata accessor for VANRNameConfiguration(0);
  v32 = *(v2 - 8);
  v3 = *(v32 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v31 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2721F065C(&qword_280882C00, &unk_2723841B0);
  v5 = *v0;
  v6 = sub_2723783CC();
  v7 = v6;
  if (*(v5 + 16))
  {
    v30 = v1;
    result = (v6 + 64);
    v9 = v5 + 64;
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    if (v7 != v5 || result >= v9 + 8 * v10)
    {
      result = memmove(result, (v5 + 64), 8 * v10);
    }

    v11 = 0;
    v12 = *(v5 + 16);
    v33 = v7;
    *(v7 + 16) = v12;
    v13 = 1 << *(v5 + 32);
    v14 = *(v5 + 64);
    v15 = -1;
    if (v13 < 64)
    {
      v15 = ~(-1 << v13);
    }

    v16 = v15 & v14;
    v17 = (v13 + 63) >> 6;
    if ((v15 & v14) != 0)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_14:
        v21 = v18 | (v11 << 6);
        v22 = 16 * v21;
        v23 = (*(v5 + 48) + 16 * v21);
        v24 = *v23;
        v25 = v23[1];
        v26 = v31;
        v27 = *(v32 + 72) * v21;
        sub_27230260C(*(v5 + 56) + v27, v31, type metadata accessor for VANRNameConfiguration);
        v28 = v33;
        v29 = (*(v33 + 48) + v22);
        *v29 = v24;
        v29[1] = v25;
        sub_2723019C4(v26, *(v28 + 56) + v27, type metadata accessor for VANRNameConfiguration);
      }

      while (v16);
    }

    v19 = v11;
    while (1)
    {
      v11 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v11 >= v17)
      {

        v1 = v30;
        v7 = v33;
        goto LABEL_18;
      }

      v20 = *(v9 + 8 * v11);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v7;
  }

  return result;
}

void *sub_272301090()
{
  v1 = v0;
  sub_2721F065C(&qword_2808826E0, &qword_272384190);
  v2 = *v0;
  v3 = sub_2723783CC();
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
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 4 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 4 * v17) = v20;
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

uint64_t sub_2723011F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = a4 + OBJC_IVAR____TtC12VoiceActions25VANRNameRecognizerBuilder_runtimeParams;
  swift_beginAccess();
  v7 = *(v6 + 80);
  if (*(v7 + 16) && (v8 = sub_27220038C(a1, a2), (v9 & 1) != 0))
  {
    v10 = *(*(v7 + 56) + 8 * v8);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v11 = sub_272301A2C(v10);

  v20[8] = v11;

  sub_27230249C(v12);

  v13 = *(v11 + 16);
  if (!v13)
  {

    v14 = MEMORY[0x277D84F90];
LABEL_9:
    swift_beginAccess();
    v17 = *(v6 + 80);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = *(v6 + 80);
    *(v6 + 80) = 0x8000000000000000;
    sub_272300908(v14, a1, a2, isUniquelyReferenced_nonNull_native);

    *(v6 + 80) = v19;
    return swift_endAccess();
  }

  v14 = sub_2722702A8(v13, 0);
  v15 = sub_2722A02C4(v20, v14 + 4, v13, v11);

  result = sub_272270484();
  if (v15 == v13)
  {
    goto LABEL_9;
  }

  __break(1u);
  return result;
}

uint64_t sub_2723013BC(void *a1)
{
  v2 = sub_27237728C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2722C389C();
  (*(v3 + 16))(v6, v7, v2);
  v8 = a1;
  v9 = sub_27237725C();
  v10 = sub_272377E7C();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v20 = v12;
    *v11 = 136315138;
    v13 = [v8 debugDescription];
    v14 = sub_27237782C();
    v16 = v15;

    v17 = sub_2721FFD04(v14, v16, &v20);

    *(v11 + 4) = v17;
    _os_log_impl(&dword_2721E4000, v9, v10, "VANRDelegateBridge speech results: %s", v11, 0xCu);
    sub_2722039C8(v12);
    MEMORY[0x2743C69C0](v12, -1, -1);
    MEMORY[0x2743C69C0](v11, -1, -1);
  }

  return (*(v3 + 8))(v6, v2);
}

unint64_t sub_2723015D0(uint64_t a1)
{
  v2 = sub_2721F065C(&qword_280882BF8, &qword_2723841A8);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = (&v23 - v5);
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_2721F065C(&qword_280882C00, &unk_2723841B0);
    v8 = sub_2723783EC();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_2721F07F4(v10, v6, &qword_280882BF8, &qword_2723841A8);
      v12 = *v6;
      v13 = v6[1];
      result = sub_27220038C(*v6, v13);
      if (v15)
      {
        break;
      }

      v16 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v17 = (v8[6] + 16 * result);
      *v17 = v12;
      v17[1] = v13;
      v18 = v8[7];
      v19 = type metadata accessor for VANRNameConfiguration(0);
      result = sub_2723019C4(v6 + v9, v18 + *(*(v19 - 8) + 72) * v16, type metadata accessor for VANRNameConfiguration);
      v20 = v8[2];
      v21 = __OFADD__(v20, 1);
      v22 = v20 + 1;
      if (v21)
      {
        goto LABEL_10;
      }

      v8[2] = v22;
      v10 += v11;
      if (!--v7)
      {

        return v8;
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

unint64_t sub_2723017B8(uint64_t a1)
{
  v2 = sub_2721F065C(&qword_280882BE8, &qword_272384198);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = (&v23 - v5);
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_2721F065C(&qword_280882BF0, &qword_2723841A0);
    v8 = sub_2723783EC();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_2721F07F4(v10, v6, &qword_280882BE8, &qword_272384198);
      v12 = *v6;
      v13 = v6[1];
      result = sub_27220038C(*v6, v13);
      if (v15)
      {
        break;
      }

      v16 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v17 = (v8[6] + 16 * result);
      *v17 = v12;
      v17[1] = v13;
      v18 = v8[7];
      v19 = type metadata accessor for VANRCollectedEnrollment(0);
      result = sub_2723019C4(v6 + v9, v18 + *(*(v19 - 8) + 72) * v16, type metadata accessor for VANRCollectedEnrollment);
      v20 = v8[2];
      v21 = __OFADD__(v20, 1);
      v22 = v20 + 1;
      if (v21)
      {
        goto LABEL_10;
      }

      v8[2] = v22;
      v10 += v11;
      if (!--v7)
      {

        return v8;
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

uint64_t sub_2723019C4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_272301A2C(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x2743C4F00](v2, MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_2722AB1B4(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_272301AC4()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_272301AFC()
{
  v1 = (type metadata accessor for VANRNameConfiguration(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 48) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 23) & 0xFFFFFFFFFFFFFFF8;
  v6 = (((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v0 + 16);
  swift_unknownObjectRelease();

  v8 = v0 + v3;
  v9 = sub_272376E5C();
  (*(*(v9 - 8) + 8))(v8, v9);
  v10 = *(v8 + v1[7] + 8);

  v11 = *(v8 + v1[8]);

  v12 = v1[9];
  v13 = sub_272376EBC();
  (*(*(v13 - 8) + 8))(v8 + v12, v13);
  v14 = *(v0 + v4 + 8);

  v15 = *(v0 + v5);

  v16 = *(v0 + v6);

  return MEMORY[0x2821FE8E8](v0, v6 + 8, v2 | 7);
}

uint64_t sub_272301C88()
{
  v2 = *(type metadata accessor for VANRNameConfiguration(0) - 8);
  v3 = (*(v2 + 80) + 48) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 23) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v0 + 32);
  v8 = *(v0 + 40);
  v9 = (v0 + v4);
  v10 = *v9;
  v11 = v9[1];
  v12 = *(v0 + v5);
  v13 = *(v0 + v6);
  v14 = *(v0 + ((v6 + 15) & 0xFFFFFFFFFFFFFFF8));
  v15 = swift_task_alloc();
  *(v1 + 16) = v15;
  *v15 = v1;
  v15[1] = sub_272219D80;

  return sub_2722FA5E8(v15, v16, v17, v7, v8, v0 + v3, v10, v11);
}

uint64_t sub_272301DE4()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_272301E2C()
{
  v1 = sub_272376EBC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 56) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v0 + 16);
  swift_unknownObjectRelease();

  v8 = *(v0 + 40);

  v9 = *(v0 + 48);

  (*(v2 + 8))(v0 + v4, v1);
  v10 = *(v0 + v5);

  v11 = *(v0 + v6);

  return MEMORY[0x2821FE8E8](v0, v6 + 8, v3 | 7);
}

uint64_t sub_272301F34()
{
  v2 = *(sub_272376EBC() - 8);
  v3 = (*(v2 + 80) + 56) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = v0[4];
  v6 = v0[5];
  v7 = v0[6];
  v8 = *(v0 + v4);
  v9 = *(v0 + ((v4 + 15) & 0xFFFFFFFFFFFFFFF8));
  v10 = swift_task_alloc();
  *(v1 + 16) = v10;
  *v10 = v1;
  v10[1] = sub_272211DBC;

  return sub_2722FC560(v10, v11, v12, v5, v6, v7, v0 + v3, v8);
}

unint64_t sub_27230206C()
{
  result = qword_280882BB0;
  if (!qword_280882BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280882BB0);
  }

  return result;
}

uint64_t sub_2723020E8()
{
  result = type metadata accessor for VARuntimeParameters();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void sub_2723021BC()
{
  sub_2723022B8();
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    v2 = sub_27237834C();
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_2723022B8()
{
  if (!qword_280882BC0)
  {
    sub_27237832C();
    v0 = sub_27237801C();
    if (!v1)
    {
      atomic_store(v0, &qword_280882BC0);
    }
  }
}

__n128 sub_272302310(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_272302324(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_27230236C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2723023D0()
{
  result = type metadata accessor for VARuntimeParameters();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_27230249C(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    v2 = (result + 40);
    do
    {
      v4 = *(v2 - 1);
      v3 = *v2;

      sub_2722AB1B4(&v5, v4, v3);

      v2 += 2;
      --v1;
    }

    while (v1);
  }

  return result;
}

uint64_t sub_27230250C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_272302544(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_2721F065C(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_2723025AC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_27230260C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_272302674(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_2723026BC()
{
  result = qword_280882BE0;
  if (!qword_280882BE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280882BE0);
  }

  return result;
}

uint64_t sub_272302710(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

void *sub_272302780(uint64_t a1, uint64_t a2)
{
  result = swift_allocObject();
  result[3] = 0;
  result[4] = a1;
  result[5] = a2;
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v5 = result;
    if (a2)
    {
      v6 = sub_272377B5C();
      *(v6 + 16) = a2;
      bzero((v6 + 32), 4 * a2);
    }

    else
    {
      v6 = MEMORY[0x277D84F90];
    }

    v7 = sub_27220392C(v6, a1);

    v5[2] = v7;
    return v5;
  }

  return result;
}

uint64_t sub_272302824(uint64_t a1)
{
  v4 = *(v1 + 16);
  if (!v4[2])
  {
    __break(1u);
    goto LABEL_10;
  }

  v2 = a1;
  if (*(a1 + 16) != *(v4[4] + 16))
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v3 = *(v1 + 24);

  result = swift_isUniquelyReferenced_nonNull_native();
  *(v1 + 16) = v4;
  if (result)
  {
    if ((v3 & 0x8000000000000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

LABEL_11:
  result = sub_272200344(v4);
  v4 = result;
  *(v1 + 16) = result;
  if ((v3 & 0x8000000000000000) != 0)
  {
    goto LABEL_12;
  }

LABEL_5:
  if (v3 >= v4[2])
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v6 = &v4[v3];
  v7 = v6[4];
  v6[4] = v2;
  *(v1 + 16) = v4;
  v8 = *(v1 + 24);

  if (__OFADD__(v8, 1))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v9 = v4[2];
  if (v9)
  {
    *(v1 + 24) = (v8 + 1) % v9;
    return result;
  }

LABEL_15:
  __break(1u);
  return result;
}

void sub_2723028F8()
{
  v1 = v0[4];
  if (v1 < 0)
  {
LABEL_17:
    __break(1u);
    return;
  }

  if (v1)
  {
    v2 = 0;
    v3 = MEMORY[0x277D84F90];
    while (1)
    {
      v4 = v0[3];
      v5 = __OFADD__(v2, v4);
      v6 = v2 + v4;
      if (v5)
      {
        break;
      }

      v7 = v6 % v1;
      if ((v7 & 0x8000000000000000) != 0)
      {
        goto LABEL_15;
      }

      v8 = v0[2];
      if (v7 >= *(v8 + 16))
      {
        goto LABEL_16;
      }

      v9 = *(v8 + 8 * v7 + 32);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v3 = sub_272241E04(0, v3[2] + 1, 1, v3);
      }

      v11 = v3[2];
      v10 = v3[3];
      if (v11 >= v10 >> 1)
      {
        v3 = sub_272241E04((v10 > 1), v11 + 1, 1, v3);
      }

      ++v2;
      v3[2] = v11 + 1;
      v3[v11 + 4] = v9;
      if (v1 == v2)
      {
        return;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }
}

void sub_272302A10()
{
  v1 = v0[5];
  if (v1 < 0)
  {
    __break(1u);
  }

  else
  {
    if (v1)
    {
      v2 = v0[5];
      v3 = sub_272377B5C();
      *(v3 + 16) = v1;
      bzero((v3 + 32), 4 * v1);
    }

    else
    {
      v3 = MEMORY[0x277D84F90];
    }

    v4 = sub_27220392C(v3, v0[4]);

    v5 = v0[2];
    v0[2] = v4;

    v0[3] = 0;
  }
}

uint64_t sub_272302A9C()
{
  v4 = *(v0 + 32);
  v1 = sub_27237862C();
  MEMORY[0x2743C4AD0](v1);

  MEMORY[0x2743C4AD0](23389, 0xE200000000000000);
  v5 = *(v0 + 40);
  v2 = sub_27237862C();
  MEMORY[0x2743C4AD0](v2);

  MEMORY[0x2743C4AD0](93, 0xE100000000000000);
  return 0x5B323374616F6C46;
}

uint64_t VACircularMatrixBuffer.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t VACircularMatrixBuffer.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t VAA2TEncoderV2.__allocating_init(computeUnits:)(char *a1)
{
  v2 = swift_allocObject();
  VAA2TEncoderV2.init(computeUnits:)(a1);
  return v2;
}

uint64_t VAA2TEncoderV2.init(computeUnits:)(char *a1)
{
  v3 = *a1;
  *(v1 + 24) = 0;
  *(v1 + 32) = 0;
  v4 = [objc_allocWithZone(MEMORY[0x277CBFF30]) init];
  sub_2722595A4();
  sub_272377A8C();
  sub_272377A8C();
  if (v13 == v11 && v14 == v12)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_27237865C();

    if (v6)
    {
      v5 = 0;
    }

    else
    {
      sub_272377A8C();
      sub_272377A8C();
      if (v13 == v11 && v14 == v12)
      {
      }

      else
      {
        v7 = sub_27237865C();

        if ((v7 & 1) == 0)
        {
          goto LABEL_12;
        }
      }

      v5 = 3;
    }
  }

  [v4 setComputeUnits_];
LABEL_12:
  type metadata accessor for at_encoder_rdr_125141826();
  v8 = sub_272290B00(v4);
  if (v2)
  {
    v9 = *(v1 + 24);

    type metadata accessor for VAA2TEncoderV2();
    swift_deallocPartialClassInstance();
  }

  else
  {
    *(v1 + 16) = v8;
  }

  return v1;
}

void (*sub_272302EA8(uint64_t a1))(_BYTE *, uint64_t)
{
  v3 = v1;
  v5 = ((*v1)[18])(v20);
  sub_272256A38(a1, v6);
  if (v2)
  {
    v5(v20, 1);
  }

  else
  {
    v8 = (v5)(v20, 0);
    v9 = ((*v3)[16])(v8);
    if (v9)
    {
      v10 = v9;
      type metadata accessor for at_encoder_rdr_125141826Input();
      v11 = v10;
      sub_272276D68();
      v12 = (*(*v3[2] + 136))();
      v14 = (*(*v12 + 88))(v12);

      v15 = ((*v3)[15])(v20);
      sub_272256CF4(v14, v16);
      v17 = v15(v20, 0);
      v18 = ((*v3)[13])(v17);
      if (v18)
      {
        v5 = v18;
      }

      else
      {
        v5 = 0x800000027238AEC0;
        sub_2722032B4();
        swift_allocError();
        *v19 = 0xD00000000000001ELL;
        v19[1] = 0x800000027238AEC0;
        swift_willThrow();
      }
    }

    else
    {
      v5 = 0x800000027238FA50;
      sub_2722032B4();
      swift_allocError();
      *v13 = 0xD00000000000001DLL;
      v13[1] = 0x800000027238FA50;
      swift_willThrow();
    }
  }

  return v5;
}

uint64_t VAA2TEncoderV2.deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return v0;
}

uint64_t VAA2TEncoderV2.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t sub_272303294@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC12VoiceActions20VAA2AAudioEnrollerV2_delegate;
  swift_beginAccess();
  return sub_272277044(v1 + v3, a1);
}

uint64_t sub_2723032EC(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12VoiceActions20VAA2AAudioEnrollerV2_delegate;
  swift_beginAccess();
  sub_2722E48E4(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t sub_2723033AC()
{
  v1 = OBJC_IVAR____TtC12VoiceActions20VAA2AAudioEnrollerV2_embeddings;
  swift_beginAccess();
  v2 = *(v0 + v1);
}

uint64_t sub_2723033F4(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12VoiceActions20VAA2AAudioEnrollerV2_embeddings;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_2723034AC()
{
  v1 = OBJC_IVAR____TtC12VoiceActions20VAA2AAudioEnrollerV2_processedAudioSamples;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_2723034F0(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12VoiceActions20VAA2AAudioEnrollerV2_processedAudioSamples;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_2723035A0()
{
  v1 = OBJC_IVAR____TtC12VoiceActions20VAA2AAudioEnrollerV2_newSamples;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_2723035E4(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12VoiceActions20VAA2AAudioEnrollerV2_newSamples;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t VAA2AAudioEnrollerV2.__allocating_init(encoder:keywordIdentifier:delegate:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(v4 + 48);
  v10 = *(v4 + 52);
  v11 = swift_allocObject();
  VAA2AAudioEnrollerV2.init(encoder:keywordIdentifier:delegate:)(a1, a2, a3, a4);
  return v11;
}

void *VAA2AAudioEnrollerV2.init(encoder:keywordIdentifier:delegate:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = sub_272376E5C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x277D84F90];
  v4[5] = MEMORY[0x277D84F90];
  v4[6] = v14;
  v15 = v4 + OBJC_IVAR____TtC12VoiceActions20VAA2AAudioEnrollerV2_delegate;
  *v15 = 0u;
  *(v15 + 1) = 0u;
  *(v15 + 4) = 0;
  *(v4 + OBJC_IVAR____TtC12VoiceActions20VAA2AAudioEnrollerV2_embeddings) = v14;
  *(v4 + OBJC_IVAR____TtC12VoiceActions20VAA2AAudioEnrollerV2_numEmbeddingsPerEnrollment) = 48;
  *(v4 + OBJC_IVAR____TtC12VoiceActions20VAA2AAudioEnrollerV2_maxSamplesPerEnrollment) = 31920;
  *(v4 + OBJC_IVAR____TtC12VoiceActions20VAA2AAudioEnrollerV2_processedAudioSamples) = 0;
  *(v4 + OBJC_IVAR____TtC12VoiceActions20VAA2AAudioEnrollerV2_newSamples) = 0;
  v4[2] = a1;
  v4[3] = a2;
  v4[4] = a3;
  sub_272376E4C();
  (*(v10 + 32))(v4 + OBJC_IVAR____TtC12VoiceActions20VAA2AAudioEnrollerV2_id, v13, v9);
  v16 = OBJC_IVAR____TtC12VoiceActions20VAA2AAudioEnrollerV2_delegate;
  swift_beginAccess();
  sub_2722E48E4(a4, v4 + v16);
  swift_endAccess();
  return v4;
}

uint64_t (*sub_272303894(objc_class *a1))(__int128 *, void)
{
  v3 = v1;
  v5 = type metadata accessor for VASingleEnrollmentData();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v39[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for VARuntimeParameters();
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v13 = &v39[-1] - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(*v1 + 288))(v11) || (v19 = v1[2], VARuntimeParameters.init()(v13), (*(*v19 + 96))(v13), result = sub_2723049EC(v13, type metadata accessor for VARuntimeParameters), !v2))
  {
    v14 = (*(*v3 + 208))(&v42);
    v15.super.super.isa = a1;
    VAfp16AVAudioBufferToFP32Array(buffer:floatBuffer:)(v15, v16);
    if (v17)
    {
      return v14(&v42, 1);
    }

    else
    {
      v20 = v14(&v42, 0);
      v21 = *(*v3 + 192);
      v22 = v21(v20);
      v23 = (*(*v3 + 184))(&v42);
      sub_272207944(v22);
      v24 = v23(&v42, 0);
      v25 = *(v21(v24) + 16);

      result = (*(*v3 + 304))(&v42);
      if (__OFADD__(*v26, v25))
      {
        __break(1u);
      }

      else
      {
        *v26 += v25;
        v27 = result(&v42, 0);
        v28 = *(*v3 + 168);
        v29 = *(v28(v27) + 16);

        if (v29 >= 0x7CB1)
        {
          sub_2721F065C(&qword_280882040, &unk_27237E470);
          v31 = swift_allocObject();
          *(v31 + 16) = xmmword_27237AF80;
          *(v31 + 56) = MEMORY[0x277D837D0];
          *(v31 + 32) = 0xD00000000000002ALL;
          *(v31 + 40) = 0x800000027238FAA0;
          sub_27237872C();

          v33 = v28(v32);
          v34 = sub_272222744(0x7CB0uLL, v33);
          v30 = (*(*v3 + 176))(v34);
        }

        v35 = *(v28(v30) + 16);

        if (v35 == 31920)
        {
          (*(*v3 + 216))(&v42, result);
          if (*(&v43 + 1))
          {
            sub_27221629C(&v42, v39);
            sub_27227B688(&v42);
            v36 = v40;
            v37 = v41;
            sub_27220300C(v39, v40);
            (*(*v3 + 344))();
            (*(v37 + 8))(v8, v36, v37);
            sub_2723049EC(v8, type metadata accessor for VASingleEnrollmentData);
            sub_2722039C8(v39);
          }

          else
          {
            sub_27227B688(&v42);
          }

          v44 = 0;
          v42 = 0u;
          v43 = 0u;
          return (*(*v3 + 224))(&v42);
        }
      }
    }
  }

  return result;
}

uint64_t sub_272303DD8()
{
  v1 = v0;
  type metadata accessor for VAStrideConfiguration();
  v2 = static VAStrideConfiguration.forFlexibleA2Av2()();
  v3 = MEMORY[0x277D85000];
  v4 = (*((*MEMORY[0x277D85000] & *v2) + 0xB8))();
  v28 = v2;
  v5 = (*((*v3 & *v2) + 0xD0))();
  v6 = (*(*v1 + 264))();
  v29 = *(*v1 + 168);
  v7 = *(v29() + 16);

  v30 = v7 - v4;
  if (__OFSUB__(v7, v4))
  {
LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
    return result;
  }

  if (!v5)
  {
    goto LABEL_52;
  }

  v9 = v30 >= v6;
  if (v5 > 0)
  {
    v9 = v6 >= v30;
  }

  if (!v9)
  {
    while (1)
    {
      v12 = __OFADD__(v6, v5) ? ((v6 + v5) >> 63) ^ 0x8000000000000000 : v6 + v5;
      v13 = v6 + v4;
      if (__OFADD__(v6, v4))
      {
        break;
      }

      if (v13 < v6)
      {
        goto LABEL_46;
      }

      result = (v29)(result);
      if (v6 < 0)
      {
        goto LABEL_47;
      }

      v14 = result;
      v15 = *(result + 16);
      if (v15 < v6 || v15 < v13)
      {
        goto LABEL_48;
      }

      if (v15 != v4)
      {
        v23 = MEMORY[0x277D84F90];
        if (v13 != v6)
        {
          if (v4 < 1)
          {
            v24 = 4 * v4;
          }

          else
          {
            sub_2721F065C(&qword_280881848, &unk_27237C250);
            v24 = 4 * v4;
            v23 = swift_allocObject();
            v25 = j__malloc_size(v23);
            v26 = v25 - 32;
            if (v25 < 32)
            {
              v26 = v25 - 29;
            }

            v23[2] = v4;
            v23[3] = 2 * (v26 >> 2);
          }

          memcpy(v23 + 4, v14 + 4 * v6 + 32, v24);
        }

        v14 = v23;
      }

      if (v14[2] == v4)
      {
        v10 = v1[2];
        v17 = v32;
        (*(*v10 + 80))(v14);
        v32 = v17;
        if (v17)
        {

LABEL_43:

          return v10;
        }

        type metadata accessor for VAFeatureExtractingEncoderOutput();
        result = swift_dynamicCastClass();
        if (!result)
        {

          swift_unknownObjectRelease();
          sub_2722032B4();
          swift_allocError();
          *v27 = 0xD00000000000001ELL;
          v27[1] = 0x800000027238B8F0;
          swift_willThrow();
          goto LABEL_43;
        }

        if (*(result + 16) == 1)
        {
          v18 = *(result + 40);
          if (!v18)
          {
            goto LABEL_53;
          }

          if (!*(v18 + 16))
          {
            goto LABEL_50;
          }

          v19 = *(v18 + 32);
          v20 = *(*v1 + 248);

          v20(v21);
        }

        else
        {
        }

        result = (*(*v1 + 280))(v31);
        if (__OFADD__(*v22, v5))
        {
          goto LABEL_49;
        }

        *v22 += v5;
        (result)(v31, 0);
        result = swift_unknownObjectRelease();
      }

      else
      {
      }

      v11 = v30 >= v12;
      if (v5 > 0)
      {
        v11 = v12 >= v30;
      }

      v6 = v12;
      if (v11)
      {
        goto LABEL_6;
      }
    }

    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

LABEL_6:
  v10 = (*(*v1 + 240))(result);

  return v10;
}

uint64_t sub_272304250@<X0>(uint64_t a1@<X8>)
{
  v3 = *(*v1 + 168);
  v4 = *(v3() + 16);

  v6 = *((v3)(v5) + 16);

  return sub_2722AFC10(v4, 31920, v6 >> 4 > 0x7CA, a1);
}

int *sub_2723042E8@<X0>(uint64_t a1@<X8>)
{
  v4 = sub_272376E5C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = (*(v5 + 16))(v8, v1 + OBJC_IVAR____TtC12VoiceActions20VAA2AAudioEnrollerV2_id, v4);
  v10 = (*(*v1 + 328))(v9);
  if (v2)
  {
    return (*(v5 + 8))(v8, v4);
  }

  v12 = v10;
  v13 = v1[3];
  v14 = v1[4];
  v15 = *(*v1 + 168);

  v17 = v15(v16);
  v21 = 1;
  v18 = sub_2722AFA60();
  v19 = sub_2722AFA60();
  return sub_2722AFA68(v8, v12, v13, v14, v17, v18, v19, &v21, a1);
}

char *VAA2AAudioEnrollerV2.deinit()
{
  v1 = *(v0 + 2);

  v2 = *(v0 + 4);

  v3 = *(v0 + 5);

  v4 = *(v0 + 6);

  v5 = OBJC_IVAR____TtC12VoiceActions20VAA2AAudioEnrollerV2_id;
  v6 = sub_272376E5C();
  (*(*(v6 - 8) + 8))(&v0[v5], v6);
  sub_27227B688(&v0[OBJC_IVAR____TtC12VoiceActions20VAA2AAudioEnrollerV2_delegate]);
  v7 = *&v0[OBJC_IVAR____TtC12VoiceActions20VAA2AAudioEnrollerV2_embeddings];

  return v0;
}

uint64_t VAA2AAudioEnrollerV2.__deallocating_deinit()
{
  v1 = *(v0 + 2);

  v2 = *(v0 + 4);

  v3 = *(v0 + 5);

  v4 = *(v0 + 6);

  v5 = OBJC_IVAR____TtC12VoiceActions20VAA2AAudioEnrollerV2_id;
  v6 = sub_272376E5C();
  (*(*(v6 - 8) + 8))(&v0[v5], v6);
  sub_27227B688(&v0[OBJC_IVAR____TtC12VoiceActions20VAA2AAudioEnrollerV2_delegate]);
  v7 = *&v0[OBJC_IVAR____TtC12VoiceActions20VAA2AAudioEnrollerV2_embeddings];

  v8 = *(*v0 + 48);
  v9 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t VAA2AAudioEnrollerFactoryV2.__allocating_init(encoder:delegate:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 40) = 0u;
  *(v4 + 56) = 0;
  *(v4 + 24) = 0u;
  *(v4 + 16) = a1;
  swift_beginAccess();
  sub_2722E48E4(a2, v4 + 24);
  swift_endAccess();
  return v4;
}

uint64_t VAA2AAudioEnrollerFactoryV2.init(encoder:delegate:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 56) = 0;
  *(v2 + 40) = 0u;
  *(v2 + 24) = 0u;
  *(v2 + 16) = a1;
  swift_beginAccess();
  sub_2722E48E4(a2, v2 + 24);
  swift_endAccess();
  return v2;
}

void *sub_272304858@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = (*(*v3 + 96))();
  v8 = *(*v3 + 120);

  v8(v15, v9);
  v10 = type metadata accessor for VAA2AAudioEnrollerV2();
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  v13 = swift_allocObject();
  result = VAA2AAudioEnrollerV2.init(encoder:keywordIdentifier:delegate:)(v7, a1, a2, v15);
  a3[3] = v10;
  a3[4] = &protocol witness table for VAA2AAudioEnrollerV2;
  *a3 = v13;
  return result;
}

uint64_t VAA2AAudioEnrollerFactoryV2.deinit()
{
  v1 = *(v0 + 16);

  sub_27227B688(v0 + 24);
  return v0;
}

uint64_t VAA2AAudioEnrollerFactoryV2.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  sub_27227B688(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t sub_2723049EC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t type metadata accessor for VAA2AAudioEnrollerV2()
{
  result = qword_28088F100;
  if (!qword_28088F100)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_272304AA0()
{
  result = sub_272376E5C();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

float sub_272304CF0(uint64_t a1, uint64_t a2)
{
  v37 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 16);
  v3 = *(a2 + 16);
  if (v2)
  {
    v4 = v3 == 0;
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    v5 = INFINITY;
  }

  else
  {
    v6 = a2;
    v7 = a1;
    v8 = *(a1 + 16);
    v9 = sub_272377B5C();
    *(v9 + 16) = v2;
    memset_pattern16((v9 + 32), &unk_272384350, 4 * v2);
    v35 = v3;
    v10 = sub_27220392C(v9, v3);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      goto LABEL_41;
    }

    if (!v10[2])
    {
      goto LABEL_42;
    }

LABEL_9:
    v9 = v10[4];
    v12 = swift_isUniquelyReferenced_nonNull_native();
    v10[4] = v9;
    if (v12)
    {
      if (*(v9 + 16))
      {
        goto LABEL_11;
      }

LABEL_44:
      __break(1u);
LABEL_45:
      __break(1u);
LABEL_46:
      __break(1u);
    }

    while (1)
    {
      v9 = sub_2722002AC(v9);
      v10[4] = v9;
      if (!*(v9 + 16))
      {
        goto LABEL_44;
      }

LABEL_11:
      *(v9 + 32) = 0;
      v13 = v35;
      if (v2 == 1)
      {
        break;
      }

      v33 = v7 + 32;
      v32 = (v6 + 40);
      v17 = 1;
      v34 = v2;
      while (v17 != v2)
      {
        if (v13 != 1)
        {
          v2 = (v10 + 5);
          v6 = *&v33[8 * v17];
          v18 = 4 * (v17 - 1);
          v19 = v32;
          v20 = 1;
          while (1)
          {
            v7 = *v19;
            v9 = *(v6 + 16);
            __C = NAN;

            vDSP_svesq((v6 + 32), 1, &__C, v9);
            v21 = __C;
            v22 = *(v7 + 2);
            __C = NAN;
            vDSP_svesq(v7 + 8, 1, &__C, v22);
            v23 = *(v6 + 16);
            if (v23 != *(v7 + 2))
            {
              break;
            }

            v24 = __C;
            __C = NAN;
            vDSP_dotpr((v6 + 32), 1, v7 + 8, 1, &__C, v23);
            v25 = __C;

            if (v20 >= v10[2])
            {
              goto LABEL_36;
            }

            v7 = *v2;
            if (v17 > *(*v2 + 2))
            {
              goto LABEL_37;
            }

            v26 = *(v2 - 1);
            if (v17 >= *(v26 + 16))
            {
              goto LABEL_38;
            }

            v27 = *&v7[v18 + 32];
            v28 = v26 + 32;
            if (*(v28 + 4 * v17) < v27)
            {
              v27 = *(v28 + 4 * v17);
            }

            if (*(v28 + v18) >= v27)
            {
              v29 = v27;
            }

            else
            {
              v29 = *(v28 + v18);
            }

            v30 = *v2;
            v31 = swift_isUniquelyReferenced_nonNull_native();
            *v2 = v7;
            if ((v31 & 1) == 0)
            {
              v7 = sub_2722002AC(v7);
              *v2 = v7;
            }

            v13 = v35;
            if (v17 >= *(v7 + 2))
            {
              goto LABEL_39;
            }

            ++v20;
            *&v7[4 * v17 + 32] = (1.0 - ((v25 / sqrtf(v21)) / sqrtf(v24))) + v29;
            ++v2;
            ++v19;
            if (v35 == v20)
            {
              goto LABEL_17;
            }
          }

          __break(1u);
LABEL_36:
          __break(1u);
LABEL_37:
          __break(1u);
LABEL_38:
          __break(1u);
LABEL_39:
          __break(1u);
          break;
        }

LABEL_17:
        ++v17;
        v2 = v34;
        if (v17 == v34)
        {
          goto LABEL_12;
        }
      }

      __break(1u);
LABEL_41:
      v10 = sub_272200344(v10);
      if (v10[2])
      {
        goto LABEL_9;
      }

LABEL_42:
      __break(1u);
    }

LABEL_12:
    if (v13 > v10[2])
    {
      goto LABEL_45;
    }

    v14 = v10[v13 + 3];
    if (v2 > *(v14 + 16))
    {
      goto LABEL_46;
    }

    v5 = *(v14 + 4 * v2 + 28);
  }

  v15 = *MEMORY[0x277D85DE8];
  return v5;
}

uint64_t sub_27230505C(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (!v2)
  {
    goto LABEL_57;
  }

  v3 = *(result + 16);
  v4 = a2 + 32;
  v37 = v3;
  v38 = *(*(a2 + 32) + 16);
  if (v3)
  {
    v5 = result + 32;
    v6 = MEMORY[0x277D84F90];
    while (1)
    {
      v7 = *v5;
      v8 = *(*v5 + 16);
      v9 = *(v6 + 16);
      v10 = v9 + v8;
      if (__OFADD__(v9, v8))
      {
LABEL_51:
        __break(1u);
LABEL_52:
        __break(1u);
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
        goto LABEL_60;
      }

      v11 = *v5;

      result = swift_isUniquelyReferenced_nonNull_native();
      if (result && v10 <= *(v6 + 24) >> 1)
      {
        if (!*(v7 + 16))
        {
          goto LABEL_4;
        }
      }

      else
      {
        if (v9 <= v10)
        {
          v12 = v9 + v8;
        }

        else
        {
          v12 = v9;
        }

        result = sub_2721FF8B4(result, v12, 1, v6);
        v6 = result;
        if (!*(v7 + 16))
        {
LABEL_4:

          if (v8)
          {
            goto LABEL_52;
          }

          goto LABEL_5;
        }
      }

      v13 = *(v6 + 16);
      if ((*(v6 + 24) >> 1) - v13 < v8)
      {
        goto LABEL_54;
      }

      memcpy((v6 + 4 * v13 + 32), (v7 + 32), 4 * v8);

      if (v8)
      {
        v14 = *(v6 + 16);
        v15 = __OFADD__(v14, v8);
        v16 = v14 + v8;
        if (v15)
        {
          goto LABEL_56;
        }

        *(v6 + 16) = v16;
      }

LABEL_5:
      v5 += 8;
      if (!--v3)
      {
        goto LABEL_20;
      }
    }
  }

  v6 = MEMORY[0x277D84F90];
LABEL_20:
  v17 = 0;
  v18 = MEMORY[0x277D84F90];
  do
  {
    v19 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      __break(1u);
LABEL_49:
      __break(1u);
LABEL_50:
      __break(1u);
      goto LABEL_51;
    }

    v20 = *(v4 + 8 * v17);
    v21 = *(v20 + 16);
    v22 = *(v18 + 16);
    v23 = v22 + v21;
    if (__OFADD__(v22, v21))
    {
      goto LABEL_49;
    }

    v24 = *(v4 + 8 * v17);

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result && v23 <= *(v18 + 24) >> 1)
    {
      if (*(v20 + 16))
      {
        goto LABEL_33;
      }
    }

    else
    {
      if (v22 <= v23)
      {
        v25 = v22 + v21;
      }

      else
      {
        v25 = v22;
      }

      result = sub_2721FF8B4(result, v25, 1, v18);
      v18 = result;
      if (*(v20 + 16))
      {
LABEL_33:
        v26 = *(v18 + 16);
        if ((*(v18 + 24) >> 1) - v26 < v21)
        {
          goto LABEL_53;
        }

        memcpy((v18 + 4 * v26 + 32), (v20 + 32), 4 * v21);

        if (v21)
        {
          v27 = *(v18 + 16);
          v15 = __OFADD__(v27, v21);
          v28 = v27 + v21;
          if (v15)
          {
            goto LABEL_55;
          }

          *(v18 + 16) = v28;
        }

        goto LABEL_22;
      }
    }

    if (v21)
    {
      goto LABEL_50;
    }

LABEL_22:
    ++v17;
  }

  while (v19 != v2);
  v29 = v2 * v38;
  if ((v2 * v38) >> 64 != (v2 * v38) >> 63)
  {
    goto LABEL_58;
  }

  if (v29 < 0)
  {
    goto LABEL_59;
  }

  if (v29)
  {
    v30 = sub_272377B5C();
    *(v30 + 16) = v29;
    bzero((v30 + 32), 4 * v29);
  }

  else
  {
    v30 = MEMORY[0x277D84F90];
  }

  vDSP_mtrans((v18 + 32), 1, (v30 + 32), 1, v38, v2);

  v31 = v2 * v37;
  if ((v2 * v37) >> 64 == (v2 * v37) >> 63)
  {
    if (v31 < 0)
    {
      goto LABEL_61;
    }

    if (v31)
    {
      v32 = sub_272377B5C();
      *(v32 + 16) = v31;
      bzero((v32 + 32), 4 * v31);
    }

    else
    {
      v32 = MEMORY[0x277D84F90];
    }

    vDSP_mmul((v6 + 32), 1, (v30 + 32), 1, (v32 + 32), 1, v37, v2, v38);

    v33 = MEMORY[0x28223BE20](*(v32 + 16));
    v34 = sub_272305630(v33, sub_272305844);

    v35 = MEMORY[0x28223BE20](*(v34 + 16));
    v36 = sub_272305630(v35, sub_272305860);

    return v36;
  }

LABEL_60:
  __break(1u);
LABEL_61:
  __break(1u);
  return result;
}

uint64_t sub_272305464(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a2 + 16);
  v4 = sub_27230505C(a1, a2);
  v5 = sub_272377B5C();
  v6 = v5;
  *(v5 + 16) = v3 + 1;
  if (v3)
  {
    memset_pattern16((v5 + 36), &unk_272384350, 4 * v3);
  }

  *(v6 + 32) = 0;
  result = sub_272377B5C();
  *(result + 16) = v3 + 1;
  *(result + 32) = 0;
  if (v3)
  {
    v8 = result;
    bzero((result + 36), 4 * v3);
    result = v8;
  }

  if (v2)
  {
    v9 = 0;
    v10 = 0;
    while (1)
    {
      v11 = result;
      if (!*(result + 16))
      {
        break;
      }

      result = v6;
      *(v11 + 32) = 2139095040;
      if (v3)
      {
        if ((v10 * v3) >> 64 != (v10 * v3) >> 63)
        {
          goto LABEL_28;
        }

        if (v3 >= *(v6 + 16))
        {
          goto LABEL_29;
        }

        v12 = *(v4 + 16);
        v13 = (v6 + 36);
        v14 = (v11 + 36);
        v15 = INFINITY;
        v16 = 1;
        v17 = v3;
        v18 = v9;
        while (v18 < v12)
        {
          if (v16 >= *(v11 + 16))
          {
            goto LABEL_26;
          }

          v19 = *v13;
          if (*v13 >= *(v13 - 1))
          {
            v19 = *(v13 - 1);
          }

          if (v15 >= v19)
          {
            v15 = v19;
          }

          v15 = *(v4 + 32 + 4 * v18) + v15;
          *v14++ = v15;
          ++v18;
          ++v13;
          ++v16;
          if (!--v17)
          {
            goto LABEL_7;
          }
        }

        __break(1u);
LABEL_26:
        __break(1u);
        break;
      }

LABEL_7:
      ++v10;
      v9 += v3;
      v6 = v11;
      if (v10 == v2)
      {

        v6 = v11;
        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
  }

  else
  {

LABEL_23:

    if (v3 < *(v6 + 16))
    {
      v20 = *(v6 + 4 * v3 + 32);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_272305630(uint64_t result, uint64_t (*a2)(void *, uint64_t *))
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_16;
  }

  v4 = result;
  if (result)
  {
    v5 = sub_272377B5C();
    *(v5 + 16) = v4;
  }

  else
  {
    v5 = MEMORY[0x277D84F90];
  }

  v6 = v5 + 32;
  v8 = 0;
  v7[0] = v5 + 32;
  v7[1] = v4;
  result = a2(v7, &v8);
  if (v2)
  {
    if (v8 <= v4)
    {
      if (!v7[0])
      {
LABEL_20:
        __break(1u);
        goto LABEL_21;
      }

      if (v6 == v7[0])
      {
        *(v5 + 16) = v8;

        return v5;
      }

      goto LABEL_17;
    }

LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v8 > v4)
  {
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (v7[0])
  {
    if (v6 == v7[0])
    {
      *(v5 + 16) = v8;
      return v5;
    }

    goto LABEL_19;
  }

LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_272305730(void *a1, void *a2, uint64_t *a3, float a4)
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = *a3;
  if (*(*a3 + 16) != a1[1])
  {
    __break(1u);
LABEL_5:
    __break(1u);
  }

  v8 = a4;
  if (!*a1)
  {
    goto LABEL_5;
  }

  result = MEMORY[0x2743C6BF0](v4 + 32, 1, &v8, *a1, 1);
  *a2 = *(v4 + 16);
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

void *sub_2723057D8(void *result, void *a2, uint64_t *a3)
{
  v3 = *a3;
  if (*(*a3 + 16) == result[1])
  {
    if (*result)
    {
      result = MEMORY[0x2743C6BE0](v3 + 32, 1, *result, 1);
      *a2 = *(v3 + 16);
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

uint64_t sub_272305880@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC12VoiceActions20VAA2AAudioEnrollerV3_delegate;
  swift_beginAccess();
  return sub_272277044(v1 + v3, a1);
}

uint64_t sub_2723058D8(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12VoiceActions20VAA2AAudioEnrollerV3_delegate;
  swift_beginAccess();
  sub_2722E48E4(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t sub_272305998()
{
  v1 = OBJC_IVAR____TtC12VoiceActions20VAA2AAudioEnrollerV3_newSamples;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_2723059DC(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12VoiceActions20VAA2AAudioEnrollerV3_newSamples;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t VAA2AAudioEnrollerV3.__allocating_init(encoder:keywordIdentifier:delegate:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(v4 + 48);
  v10 = *(v4 + 52);
  v11 = swift_allocObject();
  VAA2AAudioEnrollerV3.init(encoder:keywordIdentifier:delegate:)(a1, a2, a3, a4);
  return v11;
}

void *VAA2AAudioEnrollerV3.init(encoder:keywordIdentifier:delegate:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = sub_272376E5C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x277D84F90];
  v4[5] = MEMORY[0x277D84F90];
  v4[6] = v14;
  v15 = v4 + OBJC_IVAR____TtC12VoiceActions20VAA2AAudioEnrollerV3_delegate;
  *v15 = 0u;
  *(v15 + 1) = 0u;
  *(v15 + 4) = 0;
  *(v4 + OBJC_IVAR____TtC12VoiceActions20VAA2AAudioEnrollerV3_numEmbeddingsPerEnrollment) = 48;
  *(v4 + OBJC_IVAR____TtC12VoiceActions20VAA2AAudioEnrollerV3_maxSamplesPerEnrollment) = 31920;
  *(v4 + OBJC_IVAR____TtC12VoiceActions20VAA2AAudioEnrollerV3_newSamples) = 0;
  v4[2] = a1;
  v4[3] = a2;
  v4[4] = a3;
  sub_272376E4C();
  (*(v10 + 32))(v4 + OBJC_IVAR____TtC12VoiceActions20VAA2AAudioEnrollerV3_id, v13, v9);
  v16 = OBJC_IVAR____TtC12VoiceActions20VAA2AAudioEnrollerV3_delegate;
  swift_beginAccess();
  sub_2722E48E4(a4, v4 + v16);
  swift_endAccess();
  return v4;
}

void sub_272305C74(void *a1)
{
  v4 = type metadata accessor for VASingleEnrollmentData();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_27237728C();
  v64 = *(v8 - 8);
  v9 = *(v64 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v55 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for VARuntimeParameters();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v55 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for VAKeywordSpotterBase();
  v16 = [a1 format];
  static VAKeywordSpotterBase.checkSupportedAudioFormat(_:)(v16);

  if (!v2)
  {
    v17 = v11;
    v18 = v1;
    if (!(*(*v1 + 224))())
    {
      v24 = v1[2];
      VARuntimeParameters.init()(v15);
      (*(*v24 + 96))(v15);
      sub_2723049EC(v15, type metadata accessor for VARuntimeParameters);
    }

    v19 = v8;
    v20 = (*(*v18 + 192))(&v61);
    v21.super.super.isa = a1;
    VAfp16AVAudioBufferToFP32Array(buffer:floatBuffer:)(v21, v22);
    if (v23)
    {
      v20(&v61, 1);
    }

    else
    {
      v25 = v17;
      v56 = v19;
      v57 = v7;
      v26 = (v20)(&v61, 0);
      v27 = *(*v18 + 176);
      v28 = v27(v26);
      v29 = (*(*v18 + 168))(&v61);
      sub_272207944(v28);
      v30 = v29(&v61, 0);
      v31 = *(v27(v30) + 16);

      v32 = (*(*v18 + 240))(&v61);
      if (__OFADD__(*v33, v31))
      {
        __break(1u);
      }

      else
      {
        *v33 += v31;
        v34 = v32(&v61, 0);
        v35 = *(*v18 + 152);
        v36 = *((v35)(v34) + 16);

        v38 = v57;
        v39 = v64;
        if (v36 >= 0x7CB1)
        {
          v40 = sub_2722C389C();
          (*(v39 + 16))(v25, v40, v56);
          swift_retain_n();
          v41 = sub_27237725C();
          v42 = sub_272377E8C();
          if (os_log_type_enabled(v41, v42))
          {
            v43 = swift_slowAlloc();
            *v43 = 134218240;
            v44 = v41;
            v45 = *(v35() + 16);

            *(v43 + 4) = v45;

            *(v43 + 12) = 2048;
            *(v43 + 14) = 31920;

            _os_log_impl(&dword_2721E4000, v44, v42, "Enrollment is running long, need to reduce %ld samples > %ld max", v43, 0x16u);
            v46 = v43;
            v39 = v64;
            MEMORY[0x2743C69C0](v46, -1, -1);

            v38 = v57;
          }

          else
          {
          }

          v47 = (*(v39 + 8))(v25, v56);
          v48 = (v35)(v47);
          if (*(v48 + 16) >= 0x7CB1uLL)
          {
            sub_272241D34(v48, v48 + 32, 0, 0xF961uLL);
            v50 = v49;

            v48 = v50;
          }

          v37 = (*(*v18 + 160))(v48);
        }

        v51 = *((v35)(v37) + 16);

        if (v51 == 31920)
        {
          (*(*v18 + 200))(&v61, v52);
          if (*(&v62 + 1))
          {
            sub_27221629C(&v61, v58);
            sub_27227B688(&v61);
            v53 = v59;
            v54 = v60;
            sub_27220300C(v58, v59);
            (*(*v18 + 280))();
            (*(v54 + 8))(v38, v53, v54);
            sub_2723049EC(v38, type metadata accessor for VASingleEnrollmentData);
            sub_2722039C8(v58);
          }

          else
          {
            sub_27227B688(&v61);
          }

          v63 = 0;
          v61 = 0u;
          v62 = 0u;
          (*(*v18 + 208))(&v61);
        }
      }
    }
  }
}

uint64_t sub_272306340()
{
  type metadata accessor for VAStrideConfiguration();
  v1 = static VAStrideConfiguration.forFlexibleA2Av3()();
  v2 = MEMORY[0x277D85000];
  v3 = (*((*MEMORY[0x277D85000] & *v1) + 0x118))();
  v4 = (*((*v2 & *v1) + 0x130))();
  type metadata accessor for VAFeatureExtractingEncoderOutput();
  v5 = VAFeatureExtractingEncoderOutput.__allocating_init(hasNewFeature:featureExtractionBuffer:vadBuffer:encoderOutput:)(0, 0, 0, 0);
  v31 = v0;
  v29 = *(*v0 + 152);
  v6 = *(v29() + 16);

  v28 = (v6 - v3);
  if (__OFSUB__(v6, v3))
  {
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  v27 = v1;
  v30 = v6 + 1 - v3;
  if (__OFSUB__(v6 + 1, v3))
  {
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  if (!v4)
  {
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  v8 = v30 >= 0;
  if (v4 > 0)
  {
    v8 = v30 < 1;
  }

  if (!v8)
  {
    v12 = 0;
    while (1)
    {
      v1 = (__OFADD__(v12, v4) ? ((v12 + v4) >> 63) ^ 0x8000000000000000 : v12 + v4);
      v13 = (v12 + v3);
      if (__OFADD__(v12, v3))
      {
        break;
      }

      if (v13 < v12)
      {
        goto LABEL_46;
      }

      result = (v29)(result);
      if (v12 < 0)
      {
        goto LABEL_47;
      }

      v14 = result;
      v15 = *(result + 16);
      if (v15 < v12 || v15 < v13)
      {
        goto LABEL_48;
      }

      if (v15 != v3)
      {
        v19 = MEMORY[0x277D84F90];
        if (v13 != v12)
        {
          if (v3 < 1)
          {
            v20 = 4 * v3;
          }

          else
          {
            sub_2721F065C(&qword_280881848, &unk_27237C250);
            v20 = 4 * v3;
            v19 = swift_allocObject();
            v21 = j__malloc_size(v19);
            v22 = v21 - 32;
            if (v21 < 32)
            {
              v22 = v21 - 29;
            }

            v19[2] = v3;
            v19[3] = 2 * (v22 >> 2);
          }

          memcpy(v19 + 4, v14 + 4 * v12 + 32, v20);
        }

        v14 = v19;
      }

      if (v14[2] != v3)
      {

        sub_2722032B4();
        swift_allocError();
        *v26 = 0xD00000000000002DLL;
        v26[1] = 0x800000027238FB60;
        swift_willThrow();

        v10 = v27;
        goto LABEL_43;
      }

      v17 = (*(**(v31 + 16) + 312))(v14, v12 == v28);
      if (v32)
      {

        v10 = v27;
        goto LABEL_43;
      }

      v9 = v17;

      v18 = v30 >= v1;
      if (v4 > 0)
      {
        v18 = v1 >= v30;
      }

      v12 = v1;
      if (v18)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  v9 = v5;
LABEL_8:
  v10 = v27;
  if ((*(v9 + 16) & 1) == 0)
  {
    v23 = 0x800000027238FB90;
    sub_2722032B4();
    swift_allocError();
    v25 = 0xD000000000000019;
    goto LABEL_42;
  }

  v11 = *(v9 + 40);
  if (!v11)
  {
    v23 = 0x800000027238FBB0;
    sub_272306E74();
    swift_allocError();
    v25 = 0xD00000000000002FLL;
LABEL_42:
    *v24 = v25;
    v24[1] = v23;
    swift_willThrow();

LABEL_43:

    return v1;
  }

  if (*(v11 + 16))
  {
    v1 = *(v11 + 32);

    return v1;
  }

LABEL_52:
  __break(1u);
  return result;
}

uint64_t sub_2723067CC@<X0>(uint64_t a1@<X8>)
{
  v3 = *(*v1 + 152);
  v4 = *(v3() + 16);

  v6 = *((v3)(v5) + 16);

  return sub_2722AFC10(v4, 31920, v6 >> 4 > 0x7CA, a1);
}

int *sub_272306864@<X0>(uint64_t a1@<X8>)
{
  v4 = sub_272376E5C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = (*(v5 + 16))(v8, v1 + OBJC_IVAR____TtC12VoiceActions20VAA2AAudioEnrollerV3_id, v4);
  v10 = (*(*v1 + 264))(v9);
  if (v2)
  {
    return (*(v5 + 8))(v8, v4);
  }

  v12 = v10;
  v13 = v1[3];
  v14 = v1[4];
  v15 = *(*v1 + 152);

  v17 = v15(v16);
  v21 = 1;
  v18 = sub_2722AFA60();
  v19 = sub_2722AFA60();
  return sub_2722AFA68(v8, v12, v13, v14, v17, v18, v19, &v21, a1);
}

char *VAA2AAudioEnrollerV3.deinit()
{
  v1 = *(v0 + 2);

  v2 = *(v0 + 4);

  v3 = *(v0 + 5);

  v4 = *(v0 + 6);

  v5 = OBJC_IVAR____TtC12VoiceActions20VAA2AAudioEnrollerV3_id;
  v6 = sub_272376E5C();
  (*(*(v6 - 8) + 8))(&v0[v5], v6);
  sub_27227B688(&v0[OBJC_IVAR____TtC12VoiceActions20VAA2AAudioEnrollerV3_delegate]);
  return v0;
}

uint64_t VAA2AAudioEnrollerV3.__deallocating_deinit()
{
  v1 = *(v0 + 2);

  v2 = *(v0 + 4);

  v3 = *(v0 + 5);

  v4 = *(v0 + 6);

  v5 = OBJC_IVAR____TtC12VoiceActions20VAA2AAudioEnrollerV3_id;
  v6 = sub_272376E5C();
  (*(*(v6 - 8) + 8))(&v0[v5], v6);
  sub_27227B688(&v0[OBJC_IVAR____TtC12VoiceActions20VAA2AAudioEnrollerV3_delegate]);
  v7 = *(*v0 + 48);
  v8 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

__n128 VAA2AAudioEnrollerFactoryV3.__allocating_init(encoder:delegate:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  result = *a2;
  v6 = *(a2 + 16);
  *(v4 + 24) = *a2;
  *(v4 + 40) = v6;
  *(v4 + 56) = *(a2 + 32);
  return result;
}

uint64_t VAA2AAudioEnrollerFactoryV3.init(encoder:delegate:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v3 = *(a2 + 16);
  *(v2 + 24) = *a2;
  *(v2 + 40) = v3;
  *(v2 + 56) = *(a2 + 32);
  return v2;
}

void *sub_272306D20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = *(v3 + 16);
  sub_272277044(v3 + 24, v13);
  v8 = type metadata accessor for VAA2AAudioEnrollerV3();
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  v11 = swift_allocObject();

  result = VAA2AAudioEnrollerV3.init(encoder:keywordIdentifier:delegate:)(v7, a1, a2, v13);
  a3[3] = v8;
  a3[4] = &protocol witness table for VAA2AAudioEnrollerV3;
  *a3 = v11;
  return result;
}

uint64_t VAA2AAudioEnrollerFactoryV3.deinit()
{
  v1 = *(v0 + 16);

  sub_27227B688(v0 + 24);
  return v0;
}

uint64_t VAA2AAudioEnrollerFactoryV3.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  sub_27227B688(v0 + 24);

  return swift_deallocClassInstance();
}

unint64_t sub_272306E74()
{
  result = qword_280882C08;
  if (!qword_280882C08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280882C08);
  }

  return result;
}

uint64_t type metadata accessor for VAA2AAudioEnrollerV3()
{
  result = qword_28088F110;
  if (!qword_28088F110)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_272306F1C()
{
  result = sub_272376E5C();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_272307168()
{
  sub_27237874C();
  sub_27237790C();
  return sub_27237878C();
}

uint64_t sub_2723071DC()
{
  sub_27237874C();
  sub_27237790C();
  return sub_27237878C();
}

uint64_t sub_272307230@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_27237840C();

  *a2 = v5 != 0;
  return result;
}

uint64_t sub_2723072C0@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_27237840C();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_272307318(uint64_t a1)
{
  v2 = sub_27230C4B8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_272307354(uint64_t a1)
{
  v2 = sub_27230C4B8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t VAA2AEnrollmentMap.__allocating_init(jsonFile:)(uint64_t a1, unint64_t a2)
{
  v4 = swift_allocObject();
  VAA2AEnrollmentMap.init(jsonFile:)(a1, a2);
  return v4;
}

void *VAA2AEnrollmentMap.init(jsonFile:)(uint64_t a1, unint64_t a2)
{
  v4 = v2;
  v4[2] = 0;
  v4[3] = 0;
  v7 = MEMORY[0x277D84F90];
  v4[6] = sub_272216188(MEMORY[0x277D84F90]);
  v4[7] = sub_27230A49C(v7, &qword_280882710, &qword_272384170);
  v8 = sub_27230BA68(a1, a2);
  if (v3)
  {

    v9 = v4[3];

    v10 = v4[6];

    v11 = v4[7];

    type metadata accessor for VAA2AEnrollmentMap();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v12 = v8;

    swift_beginAccess();
    v4[4] = v12[4];
    swift_beginAccess();
    v4[5] = v12[5];
    v13 = *(*v12 + 216);

    v15 = v13(v14);
    swift_beginAccess();
    v16 = v4[7];
    v4[7] = v15;

    v18 = (*(*v12 + 120))(v17);
    v20 = v19;

    swift_beginAccess();
    v21 = v4[3];
    v4[2] = v18;
    v4[3] = v20;
  }

  return v4;
}

uint64_t sub_2723075C8(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v113 = v2;
  v4 = *(v2 + 40);

  v6 = sub_272307D7C(v5);

  v7 = sub_272301A2C(v6);

  v8 = *(a1 + 16);
  if (v8)
  {
    v9 = 0;
    v10 = a1 + 32;
    v101 = MEMORY[0x277D84F90];
    v11 = v7 + 56;
    v111 = *(a1 + 16);
    v112 = v7;
    v109 = v7 + 56;
    v110 = a1 + 32;
    while (1)
    {
      v12 = (v10 + 16 * v9);
      v13 = v12[1];
      v119 = *v12;
      v14 = sub_2723778AC();
      v16 = v15;
      if (*(v7 + 16))
      {
        v17 = v14;
        v18 = *(v7 + 40);
        sub_27237874C();

        sub_27237790C();
        v19 = sub_27237878C();
        v20 = -1 << *(v7 + 32);
        v21 = v19 & ~v20;
        if ((*(v11 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21))
        {
          v22 = ~v20;
          while (1)
          {
            v23 = (*(v7 + 48) + 16 * v21);
            v24 = *v23 == v17 && v23[1] == v16;
            if (v24 || (sub_27237865C() & 1) != 0)
            {
              break;
            }

            v21 = (v21 + 1) & v22;
            if (((*(v11 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) == 0)
            {
              goto LABEL_13;
            }
          }

          v116 = v9;

          v25 = *(v113 + 40);
          v28 = *(v25 + 64);
          v27 = v25 + 64;
          v26 = v28;
          v29 = 1 << *(*(v113 + 40) + 32);
          if (v29 < 64)
          {
            v30 = ~(-1 << v29);
          }

          else
          {
            v30 = -1;
          }

          v31 = v30 & v26;
          v32 = (v29 + 63) >> 6;
          v118 = *(v113 + 40);

          v33 = 0;
          if (v31)
          {
            while (1)
            {
              v34 = v33;
LABEL_22:
              v35 = __clz(__rbit64(v31));
              v31 &= v31 - 1;
              v36 = v35 | (v34 << 6);
              v37 = (*(v118 + 48) + 16 * v36);
              v38 = v37[1];
              v39 = *(*(v118 + 56) + 8 * v36);
              v117 = *v37;
              v40 = sub_2723778AC();
              v42 = v41;
              if (v40 == sub_2723778AC() && v42 == v43)
              {
                break;
              }

              v45 = sub_27237865C();

              if (v45)
              {
                goto LABEL_31;
              }

LABEL_28:

              v33 = v34;
              if (!v31)
              {
                goto LABEL_19;
              }
            }

LABEL_31:
            v46 = 0;
            v105 = v39 + 64;
            v47 = 1 << *(v39 + 32);
            if (v47 < 64)
            {
              v48 = ~(-1 << v47);
            }

            else
            {
              v48 = -1;
            }

            v49 = v48 & *(v39 + 64);
            v107 = (v47 + 63) >> 6;
            v115 = v39;
LABEL_35:
            while (v49)
            {
LABEL_40:
              v51 = __clz(__rbit64(v49));
              v49 &= v49 - 1;
              v52 = v51 | (v46 << 6);
              v53 = (*(v115 + 48) + 16 * v52);
              v55 = *v53;
              v54 = v53[1];
              v114 = *(*(v115 + 56) + 8 * v52);
              v56 = *v53 == 0x6F69647561 && v54 == 0xE500000000000000;
              if (!v56 && (sub_27237865C() & 1) == 0)
              {
                v57 = v55 == 1954047348 && v54 == 0xE400000000000000;
                if (!v57 && (sub_27237865C() & 1) == 0)
                {
                  continue;
                }
              }

              v58 = 1 << *(v114 + 32);
              if (v58 < 64)
              {
                v59 = ~(-1 << v58);
              }

              else
              {
                v59 = -1;
              }

              v60 = v59 & *(v114 + 64);
              v102 = (v58 + 63) >> 6;
              v62 = v55 == 1954047348 && v54 == 0xE400000000000000;
              v106 = v62;
              v63 = v114;

              v64 = 0;
              v65 = 0;
              while (2)
              {
                v66 = v114 + 64;
                v67 = v102;
                while (1)
                {
                  while (1)
                  {
                    if (!v60)
                    {
                      while (1)
                      {
                        v68 = v65 + 1;
                        if (__OFADD__(v65, 1))
                        {
                          goto LABEL_97;
                        }

                        if (v68 >= v67)
                        {

                          goto LABEL_35;
                        }

                        v60 = *(v66 + 8 * v68);
                        ++v65;
                        if (v60)
                        {
                          v65 = v68;
                          break;
                        }
                      }
                    }

                    v69 = __clz(__rbit64(v60));
                    v60 &= v60 - 1;
                    v70 = (*(v63 + 56) + ((v65 << 10) | (16 * v69)));
                    v103 = *v70;
                    v104 = v70[1];
                    if (!v106)
                    {
                      break;
                    }

                    if (v64 < a2)
                    {
                      goto LABEL_73;
                    }
                  }

                  v71 = v64;
                  if ((sub_27237865C() & 1) == 0)
                  {
                    break;
                  }

                  v64 = v71;
                  v72 = v71 < a2;
                  v66 = v114 + 64;
                  v67 = v102;
                  v63 = v114;
                  if (v72)
                  {
                    goto LABEL_73;
                  }
                }

                v64 = v71;
LABEL_73:
                v100 = v64 + 1;
                if (__OFADD__(v64, 1))
                {
                  goto LABEL_98;
                }

                swift_bridgeObjectRetain_n();
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v101 = sub_2721FFBF8(0, *(v101 + 2) + 1, 1, v101);
                }

                v74 = *(v101 + 2);
                v73 = *(v101 + 3);
                v75 = v74 + 1;
                if (v74 >= v73 >> 1)
                {
                  v88 = sub_2721FFBF8((v73 > 1), v74 + 1, 1, v101);
                  v75 = v74 + 1;
                  v101 = v88;
                }

                *(v101 + 2) = v75;
                v76 = &v101[16 * v74];
                *(v76 + 4) = v103;
                *(v76 + 5) = v104;
                swift_beginAccess();

                v77 = *(v113 + 48);
                isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                v78 = *(v113 + 48);
                *(v113 + 48) = 0x8000000000000000;
                v80 = sub_27220038C(v103, v104);
                v81 = v78[2];
                v82 = (v79 & 1) == 0;
                v83 = v81 + v82;
                if (!__OFADD__(v81, v82))
                {
                  if (v78[3] >= v83)
                  {
                    if (isUniquelyReferenced_nonNull_native)
                    {
                      if ((v79 & 1) == 0)
                      {
                        goto LABEL_87;
                      }
                    }

                    else
                    {
                      v99 = v80;
                      v96 = v79;
                      sub_272215E14();
                      v80 = v99;
                      if ((v96 & 1) == 0)
                      {
                        goto LABEL_87;
                      }
                    }
                  }

                  else
                  {
                    v95 = v79;
                    sub_272215B54(v83, isUniquelyReferenced_nonNull_native);
                    v84 = sub_27220038C(v103, v104);
                    if ((v95 & 1) != (v85 & 1))
                    {
                      goto LABEL_101;
                    }

                    v80 = v84;
                    if ((v95 & 1) == 0)
                    {
LABEL_87:
                      v78[(v80 >> 6) + 8] |= 1 << v80;
                      v89 = (v78[6] + 16 * v80);
                      *v89 = v103;
                      v89[1] = v104;
                      v90 = (v78[7] + 16 * v80);
                      *v90 = v117;
                      v90[1] = v38;
                      v91 = v78[2];
                      v92 = __OFADD__(v91, 1);
                      v93 = v91 + 1;
                      if (v92)
                      {
                        goto LABEL_100;
                      }

                      v78[2] = v93;
                      goto LABEL_89;
                    }
                  }

                  v98 = v80;

                  v86 = (v78[7] + 16 * v98);
                  v87 = v86[1];
                  *v86 = v117;
                  v86[1] = v38;

LABEL_89:
                  *(v113 + 48) = v78;
                  swift_endAccess();
                  v63 = v114;
                  v64 = v100;
                  continue;
                }

                goto LABEL_99;
              }
            }

            while (1)
            {
              v50 = v46 + 1;
              if (__OFADD__(v46, 1))
              {
                break;
              }

              if (v50 >= v107)
              {

                goto LABEL_28;
              }

              v49 = *(v105 + 8 * v50);
              ++v46;
              if (v49)
              {
                v46 = v50;
                goto LABEL_40;
              }
            }
          }

          else
          {
LABEL_19:
            while (1)
            {
              v34 = v33 + 1;
              if (__OFADD__(v33, 1))
              {
                break;
              }

              if (v34 >= v32)
              {

                v8 = v111;
                v7 = v112;
                v9 = v116;
                v11 = v109;
                v10 = v110;
                goto LABEL_3;
              }

              v31 = *(v27 + 8 * v34);
              ++v33;
              if (v31)
              {
                goto LABEL_22;
              }
            }

            __break(1u);
          }

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
          result = sub_2723786BC();
          __break(1u);
          return result;
        }

LABEL_13:
      }

LABEL_3:
      ++v9;

      if (v9 == v8)
      {
        goto LABEL_94;
      }
    }
  }

  v101 = MEMORY[0x277D84F90];
LABEL_94:

  return v101;
}