void sub_1DEF200C4(NSObject *a1, uint64_t a2, int a3, int a4, unsigned __int8 *a5, NSObject *a6, uint64_t a7, uint64_t a8)
{
  v193 = a8;
  v196 = a7;
  v179 = a3;
  v182 = a2;
  v200 = a1;
  v188 = sub_1DEF8D698();
  v187 = *(v188 - 8);
  v12 = *(v187 + 8);
  MEMORY[0x1EEE9AC00](v188);
  v184 = &v169 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v186 = sub_1DEF8D6D8();
  v185 = *(v186 - 1);
  v14 = *(v185 + 64);
  MEMORY[0x1EEE9AC00](v186);
  v183 = &v169 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for NetworkSyncHeader(0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16);
  v180 = &v169 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE3E80, &unk_1DEF90970);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v199 = &v169 - v21;
  v22 = sub_1DEF8D3F8();
  v197 = *(v22 - 8);
  v198 = v22;
  v23 = *(v197 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v181 = &v169 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v190 = &v169 - v26;
  MEMORY[0x1EEE9AC00](v27);
  v195 = &v169 - v28;
  v194 = sub_1DEF8D1E8();
  v29 = *(v194 - 8);
  v30 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v194);
  v32 = &v169 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33);
  v35 = &v169 - v34;
  v178 = *a5;
  v192 = v8;
  v37 = *(v8 + OBJC_IVAR____TtC16ReplicatorEngine16NetworkMessenger_idsDependency + 24);
  v36 = *(v8 + OBJC_IVAR____TtC16ReplicatorEngine16NetworkMessenger_idsDependency + 32);
  v38 = __swift_project_boxed_opaque_existential_1((v8 + OBJC_IVAR____TtC16ReplicatorEngine16NetworkMessenger_idsDependency), v37);
  v39 = *(v37 - 8);
  v40 = *(v39 + 64);
  v41 = MEMORY[0x1EEE9AC00](v38);
  v43 = &v169 - v42;
  (*(v39 + 16))(&v169 - v42, v41);
  v191 = (*(v36 + 24))(v37, v36);
  v45 = v44;
  (*(v39 + 8))(v43, v37);
  if (v45)
  {
    v173 = v32;
    v176 = a4;
    if (qword_1ECDE2E50 != -1)
    {
LABEL_63:
      swift_once();
    }

    v46 = sub_1DEF8D508();
    v47 = __swift_project_value_buffer(v46, qword_1ECDF6010);
    v48 = v29 + 16;
    v49 = *(v29 + 16);
    v50 = v29;
    v29 = v194;
    v172 = v48;
    v171 = v49;
    v49(v35, v200, v194);
    swift_unknownObjectRetain();
    v189 = v47;
    v51 = sub_1DEF8D4D8();
    v52 = sub_1DEF8DCB8();
    swift_unknownObjectRelease();
    v53 = os_log_type_enabled(v51, v52);
    v177 = a6;
    v175 = v16;
    v174 = v50;
    if (v53)
    {
      v16 = swift_slowAlloc();
      v170 = swift_slowAlloc();
      aBlock = v170;
      *v16 = 136446466;
      sub_1DEE1B9F8(&unk_1ECDE4D68, MEMORY[0x1E6968FB0]);
      v54 = sub_1DEF8E2E8();
      v56 = v55;
      v57 = *(v50 + 8);
      v57(v35, v29);
      v58 = sub_1DEE12A5C(v54, v56, &aBlock);

      *(v16 + 4) = v58;
      *(v16 + 12) = 2082;
      v201 = a6;
      swift_unknownObjectRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4D60, &unk_1DEF95A78);
      v59 = sub_1DEF8D988();
      v61 = sub_1DEE12A5C(v59, v60, &aBlock);

      *(v16 + 14) = v61;
      _os_log_impl(&dword_1DEE0F000, v51, v52, "Sending file attributes for URL %{public}s to %{public}s", v16, 0x16u);
      v62 = v170;
      swift_arrayDestroy();
      MEMORY[0x1E12CCD70](v62, -1, -1);
      MEMORY[0x1E12CCD70](v16, -1, -1);
    }

    else
    {

      v57 = *(v50 + 8);
      v57(v35, v29);
    }

    v73 = v198;
    v74 = v199;
    v75 = v191;
    sub_1DEF8D388();
    v76 = v197;
    if ((*(v197 + 48))(v74, 1, v73) == 1)
    {
      sub_1DEE171B4(v74, &unk_1ECDE3E80, &unk_1DEF90970);

      v77 = sub_1DEF8D4D8();
      v78 = sub_1DEF8DC98();

      if (os_log_type_enabled(v77, v78))
      {
        v79 = swift_slowAlloc();
        v80 = swift_slowAlloc();
        aBlock = v80;
        *v79 = 136446210;
        v81 = sub_1DEE12A5C(v75, v45, &aBlock);

        *(v79 + 4) = v81;
        _os_log_impl(&dword_1DEE0F000, v77, v78, "Cannot create UUID from sender device ID: %{public}s", v79, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v80);
        MEMORY[0x1E12CCD70](v80, -1, -1);
        MEMORY[0x1E12CCD70](v79, -1, -1);
      }

      else
      {
      }

      v67 = v196;
      if (v196)
      {
        v103 = *(v192 + 32);
        v104 = swift_allocObject();
        v105 = v193;
        *(v104 + 16) = v67;
        *(v104 + 24) = v105;
        v206 = sub_1DEF30750;
        v207 = v104;
        aBlock = MEMORY[0x1E69E9820];
        v203 = 1107296256;
        v72 = &block_descriptor_153;
        goto LABEL_20;
      }

      return;
    }

    v186 = v57;

    v82 = *(v76 + 32);
    v35 = (v76 + 32);
    v82(v195, v74, v73);
    v83 = 0;
    v84 = URL.extendedAttributeNames()();
    v188 = v35;
    v187 = v82;
    v110 = v84;
    v191 = *(v84 + 16);
    if (v191)
    {
      v111 = 0;
      v45 = (v84 + 40);
      a6 = MEMORY[0x1E69E7CC8];
      while (1)
      {
        if (v111 >= *(v110 + 16))
        {
          __break(1u);
LABEL_62:
          __break(1u);
          goto LABEL_63;
        }

        v29 = *(v45 - 1);
        v35 = *v45;
        MEMORY[0x1EEE9AC00](v84);
        *(&v169 - 2) = v29;
        *(&v169 - 1) = v35;

        sub_1DEF8D198();
        if (v83)
        {

          v85 = v83;
          v83 = 0;
          v86 = v173;
          v87 = v194;
          v171(v173, v200, v194);
          v88 = v85;
          v89 = sub_1DEF8D4D8();
          v90 = sub_1DEF8DC98();

          if (os_log_type_enabled(v89, v90))
          {
            v91 = swift_slowAlloc();
            v200 = a6;
            v92 = v91;
            v93 = swift_slowAlloc();
            aBlock = v93;
            *v92 = 136446466;
            sub_1DEE1B9F8(&unk_1ECDE4D68, MEMORY[0x1E6968FB0]);
            v94 = sub_1DEF8E2E8();
            v96 = v95;
            v186(v86, v87);
            v97 = sub_1DEE12A5C(v94, v96, &aBlock);

            *(v92 + 4) = v97;
            *(v92 + 12) = 2082;
            v201 = v85;
            v98 = v85;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3AC0, &unk_1DEF90B00);
            v99 = sub_1DEF8D988();
            v101 = sub_1DEE12A5C(v99, v100, &aBlock);

            *(v92 + 14) = v101;
            _os_log_impl(&dword_1DEE0F000, v89, v90, "Could not fetch extended attributes for URL %{public}s; error: %{public}s", v92, 0x16u);
            swift_arrayDestroy();
            MEMORY[0x1E12CCD70](v93, -1, -1);
            v102 = v92;
            a6 = v200;
            MEMORY[0x1E12CCD70](v102, -1, -1);
          }

          else
          {

            v186(v86, v87);
          }

          goto LABEL_40;
        }

        v199 = 0;
        v116 = v110;
        v16 = aBlock;
        v117 = v203;
        sub_1DEE1BFF4(aBlock, v203);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        aBlock = a6;
        v119 = sub_1DEE13224(v29, v35);
        v121 = a6;
        isa = a6[2].isa;
        v123 = (v120 & 1) == 0;
        v124 = __OFADD__(isa, v123);
        v125 = isa + v123;
        if (v124)
        {
          goto LABEL_62;
        }

        v126 = v120;
        if (v121[3].isa < v125)
        {
          break;
        }

        if (isUniquelyReferenced_nonNull_native)
        {
          goto LABEL_32;
        }

        v132 = v119;
        sub_1DEEBA178();
        v119 = v132;
        if (v126)
        {
LABEL_23:
          v112 = v119;

          a6 = aBlock;
          v113 = (aBlock[7].isa + 16 * v112);
          v114 = *v113;
          v115 = v113[1];
          *v113 = v16;
          v113[1] = v117;
          sub_1DEE1BFA0(v114, v115);
          v84 = sub_1DEE1BFA0(v16, v117);
          goto LABEL_24;
        }

LABEL_33:
        a6 = aBlock;
        aBlock[(v119 >> 6) + 8].isa = (aBlock[(v119 >> 6) + 8].isa | (1 << v119));
        v128 = (a6[6].isa + 16 * v119);
        *v128 = v29;
        v128[1] = v35;
        v129 = (a6[7].isa + 16 * v119);
        *v129 = v16;
        v129[1] = v117;
        v84 = sub_1DEE1BFA0(v16, v117);
        v130 = a6[2].isa;
        v124 = __OFADD__(v130, 1);
        v131 = (v130 + 1);
        if (v124)
        {
          __break(1u);
          goto LABEL_65;
        }

        a6[2].isa = v131;
LABEL_24:
        ++v111;
        v45 += 2;
        v110 = v116;
        v83 = v199;
        if (v191 == v111)
        {
          goto LABEL_39;
        }
      }

      sub_1DEEB5F5C(v125, isUniquelyReferenced_nonNull_native);
      v119 = sub_1DEE13224(v29, v35);
      if ((v126 & 1) != (v127 & 1))
      {
        goto LABEL_70;
      }

LABEL_32:
      if (v126)
      {
        goto LABEL_23;
      }

      goto LABEL_33;
    }

    a6 = MEMORY[0x1E69E7CC8];
LABEL_39:

LABEL_40:
    v133 = sub_1DEF8D4D8();
    v134 = sub_1DEF8DCB8();
    if (os_log_type_enabled(v133, v134))
    {
      v135 = swift_slowAlloc();
      v136 = swift_slowAlloc();
      aBlock = v136;
      *v135 = 136446210;

      v137 = a6;
      v138 = sub_1DEF8D858();
      v140 = v139;

      v141 = sub_1DEE12A5C(v138, v140, &aBlock);

      *(v135 + 4) = v141;
      _os_log_impl(&dword_1DEE0F000, v133, v134, "Attributes: %{public}s", v135, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v136);
      MEMORY[0x1E12CCD70](v136, -1, -1);
      MEMORY[0x1E12CCD70](v135, -1, -1);
    }

    else
    {

      v137 = a6;
    }

    v142 = v177;
    v143 = v176;
    v144 = v181;
    v205 = &type metadata for NetworkMessenger.ExtendedAttributes;
    v206 = sub_1DEF2EC1C();
    aBlock = v137;
    type metadata accessor for PropertyListTypeEncoder();
    inited = swift_initStackObject();
    *(inited + 16) = 0;
    *(inited + 24) = 1;
    v200 = v137;

    v146 = sub_1DEE29274(&aBlock);
    if (!v83)
    {
      v147 = sub_1DEE1187C(v146);
      v149 = v148;
      swift_unknownObjectRelease();
      __swift_destroy_boxed_opaque_existential_1(&aBlock);
      v150 = v198;
      v151 = *(v197 + 16);
      v151(v190, v182, v198);
      v151(v144, v195, v150);
      v152 = v149 >> 62;
      if ((v149 >> 62) > 1)
      {
        if (v152 != 2)
        {
          goto LABEL_56;
        }

        v155 = *(v147 + 16);
        v154 = *(v147 + 24);
        v153 = v154 - v155;
        if (!__OFSUB__(v154, v155))
        {
LABEL_53:
          if ((v153 & 0x8000000000000000) != 0)
          {
            __break(1u);
            goto LABEL_67;
          }

          if (!HIDWORD(v153))
          {
LABEL_57:
            v199 = v147;
            if (qword_1ECDE37F8 == -1)
            {
LABEL_58:
              v156 = v198;
              v157 = __swift_project_value_buffer(v198, qword_1ECDF60C0);
              v158 = v180;
              v151(v180, v157, v156);
              v159 = v175;
              *(v158 + v175[5]) = 72;
              v160 = v187;
              v187(v158 + v159[6], v190, v156);
              v160(v158 + v159[7], v144, v156);
              *(v158 + v159[8]) = v153;
              *(v158 + v159[9]) = 2;
              *(v158 + v159[10]) = v179;
              *(v158 + v159[11]) = v143;
              *(v158 + v159[12]) = v178;
              v161 = sub_1DEEFB1A4();
              v163 = v162;
              v164 = v192;
              sub_1DEF1CB90(v161, v162, v142, 0, 0);
              v165 = v142;
              v166 = swift_allocObject();
              v167 = v196;
              v166[2] = v164;
              v166[3] = v167;
              v166[4] = v193;

              sub_1DEE2CB00(v167);
              v168 = v199;
              sub_1DEF1CB90(v199, v149, v165, sub_1DEF2EC70, v166);

              sub_1DEE1BFA0(v161, v163);
              sub_1DEE1BFA0(v168, v149);
              sub_1DEE15388(v158, type metadata accessor for NetworkSyncHeader);
              (*(v197 + 8))(v195, v156);

              return;
            }

LABEL_67:
            swift_once();
            goto LABEL_58;
          }

          __break(1u);
LABEL_56:
          LODWORD(v153) = 0;
          goto LABEL_57;
        }

        __break(1u);
      }

      else if (!v152)
      {
        LODWORD(v153) = BYTE6(v149);
        goto LABEL_57;
      }

      if (!__OFSUB__(HIDWORD(v147), v147))
      {
        v153 = HIDWORD(v147) - v147;
        goto LABEL_53;
      }

      __break(1u);
    }

    __swift_destroy_boxed_opaque_existential_1(&aBlock);
    swift_unexpectedError();
    __break(1u);
LABEL_70:
    sub_1DEF8E6E8();
    __break(1u);
    return;
  }

  if (qword_1ECDE2E50 != -1)
  {
LABEL_65:
    swift_once();
  }

  v63 = sub_1DEF8D508();
  __swift_project_value_buffer(v63, qword_1ECDF6010);
  v64 = sub_1DEF8D4D8();
  v65 = sub_1DEF8DC98();
  v66 = os_log_type_enabled(v64, v65);
  v67 = v196;
  if (v66)
  {
    v68 = swift_slowAlloc();
    *v68 = 0;
    _os_log_impl(&dword_1DEE0F000, v64, v65, "Cannot send messages before we have a local device ID", v68, 2u);
    MEMORY[0x1E12CCD70](v68, -1, -1);
  }

  if (v67)
  {
    v69 = *(v192 + 32);
    v70 = swift_allocObject();
    v71 = v193;
    *(v70 + 16) = v67;
    *(v70 + 24) = v71;
    v206 = sub_1DEF30750;
    v207 = v70;
    aBlock = MEMORY[0x1E69E9820];
    v203 = 1107296256;
    v72 = &block_descriptor_147;
LABEL_20:
    v204 = sub_1DEE3F0C0;
    v205 = v72;
    v106 = _Block_copy(&aBlock);
    sub_1DEE2CB00(v67);

    v107 = v183;
    sub_1DEF8D6B8();
    v201 = MEMORY[0x1E69E7CC0];
    sub_1DEE1B9F8(&qword_1ECDE2CF0, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4210, &unk_1DEF90800);
    sub_1DEE1B548(&qword_1ECDE2C50, &unk_1ECDE4210, &unk_1DEF90800);
    v108 = v184;
    v109 = v188;
    sub_1DEF8DE08();
    MEMORY[0x1E12CB4D0](0, v107, v108, v106);
    _Block_release(v106);
    sub_1DEE3DBD0(v67);
    (*(v187 + 1))(v108, v109);
    (*(v185 + 8))(v107, v186);
  }
}

uint64_t sub_1DEF21530(int *a1, int a2, uint64_t a3, uint64_t a4, void *a5, void (*a6)(char *, char *, uint64_t), uint64_t a7, char *a8, char a9, int a10, int a11, NSObject *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  v168 = a7;
  v177 = a6;
  v181 = a5;
  v179 = a3;
  v166 = a2;
  v164 = a1;
  v191 = *MEMORY[0x1E69E9840];
  v18 = sub_1DEF8D698();
  v175 = *(v18 - 8);
  v176 = v18;
  v19 = *(v175 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v172 = &v157 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v174 = sub_1DEF8D6D8();
  v173 = *(v174 - 8);
  v21 = *(v173 + 64);
  MEMORY[0x1EEE9AC00](v174);
  v171 = &v157 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for NetworkSyncHeader(0);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x1EEE9AC00](v23);
  v26 = &v157 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v183 = sub_1DEF8D1E8();
  v27 = *(v183 - 1);
  v28 = v27[8];
  MEMORY[0x1EEE9AC00](v183);
  v162 = &v157 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v167 = &v157 - v31;
  MEMORY[0x1EEE9AC00](v32);
  v34 = &v157 - v33;
  MEMORY[0x1EEE9AC00](v35);
  v180 = &v157 - v36;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4D80, &unk_1DEF95A88);
  v38 = *(*(v37 - 8) + 64);
  MEMORY[0x1EEE9AC00](v37 - 8);
  v40 = &v157 - v39;
  v41 = sub_1DEF8D678();
  v42 = *(v41 - 8);
  v43 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v41);
  v163 = &v157 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v45);
  v47 = &v157 - v46;
  MEMORY[0x1EEE9AC00](v48);
  v178 = &v157 - v49;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v170 = a14;
    v169 = a13;
    sub_1DEE17214(v179, v40, &qword_1ECDE4D80, &unk_1DEF95A88);
    LODWORD(v179) = (*(v42 + 48))(v40, 1, v41);
    if (v179 == 1)
    {
      sub_1DEE171B4(v40, &qword_1ECDE4D80, &unk_1DEF95A88);
      v50 = v183;
      if (qword_1ECDE2E50 != -1)
      {
        swift_once();
      }

      v51 = sub_1DEF8D508();
      v52 = __swift_project_value_buffer(v51, qword_1ECDF6010);
      v53 = v27[2];
      v168 = a16;
      v178 = v53;
      (v53)(v34, a16, v50);
      v54 = v181;

      v180 = v52;
      v55 = sub_1DEF8D4D8();
      v56 = sub_1DEF8DCB8();

      v57 = os_log_type_enabled(v55, v56);
      v165 = v27;
      if (v57)
      {
        v58 = swift_slowAlloc();
        v59 = v27;
        v60 = swift_slowAlloc();
        v184 = v54;
        aBlock = v60;
        *v58 = 136315906;
        sub_1DEF8D628();

        v61 = sub_1DEF8D988();
        v63 = sub_1DEE12A5C(v61, v62, &aBlock);

        *(v58 + 4) = v63;
        *(v58 + 12) = 2050;
        *(v58 + 14) = a15;
        *(v58 + 22) = 2050;
        *(v58 + 24) = v164;
        *(v58 + 32) = 2082;
        sub_1DEE1B9F8(&unk_1ECDE4D68, MEMORY[0x1E6968FB0]);
        v64 = sub_1DEF8E2E8();
        v66 = v65;
        v67 = v59[1];
        v67(v34, v183);
        v68 = sub_1DEE12A5C(v64, v66, &aBlock);

        *(v58 + 34) = v68;
        _os_log_impl(&dword_1DEE0F000, v55, v56, "%s; file size: %{public}ld; bytes sent: %{public}ld; file path: %{public}s", v58, 0x2Au);
        swift_arrayDestroy();
        v50 = v183;
        MEMORY[0x1E12CCD70](v60, -1, -1);
        MEMORY[0x1E12CCD70](v58, -1, -1);
      }

      else
      {

        v67 = v27[1];
        v67(v34, v50);
      }

      v95 = v167;
      if ((v166 & 1) == 0)
      {
        goto LABEL_29;
      }

      (v178)(v167, v177, v50);
      v96 = v181;

      v97 = sub_1DEF8D4D8();
      v98 = sub_1DEF8DCB8();

      if (os_log_type_enabled(v97, v98))
      {
        v99 = v95;
        v100 = swift_slowAlloc();
        v101 = swift_slowAlloc();
        v184 = v96;
        aBlock = v101;
        *v100 = 136315394;
        sub_1DEF8D628();

        v102 = sub_1DEF8D988();
        v104 = sub_1DEE12A5C(v102, v103, &aBlock);

        *(v100 + 4) = v104;
        *(v100 + 12) = 2082;
        sub_1DEE1B9F8(&unk_1ECDE4D68, MEMORY[0x1E6968FB0]);
        v105 = sub_1DEF8E2E8();
        v107 = v106;
        v67(v99, v183);
        v108 = sub_1DEE12A5C(v105, v107, &aBlock);
        v50 = v183;

        *(v100 + 14) = v108;
        _os_log_impl(&dword_1DEE0F000, v97, v98, "%s; Send completed for %{public}s", v100, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1E12CCD70](v101, -1, -1);
        MEMORY[0x1E12CCD70](v100, -1, -1);
      }

      else
      {

        v67(v95, v50);
      }

      v126 = v168;
      if (a17)
      {
        v127 = [objc_opt_self() defaultManager];
        v128 = sub_1DEF8D178();
        aBlock = 0;
        v129 = [v127 removeItemAtURL:v128 error:&aBlock];

        if (v129)
        {
          v130 = aBlock;
        }

        else
        {
          v131 = aBlock;
          v132 = sub_1DEF8D148();

          swift_willThrow();
          v133 = v162;
          (v178)(v162, v126, v50);
          v134 = v132;
          v135 = v50;
          v136 = sub_1DEF8D4D8();
          v137 = sub_1DEF8DC98();

          if (os_log_type_enabled(v136, v137))
          {
            v138 = swift_slowAlloc();
            v139 = swift_slowAlloc();
            aBlock = v139;
            *v138 = 136446466;
            sub_1DEE1B9F8(&unk_1ECDE4D68, MEMORY[0x1E6968FB0]);
            v140 = sub_1DEF8E2E8();
            v142 = v141;
            v67(v133, v135);
            v143 = sub_1DEE12A5C(v140, v142, &aBlock);

            *(v138 + 4) = v143;
            *(v138 + 12) = 2082;
            v184 = v132;
            v144 = v132;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3AC0, &unk_1DEF90B00);
            v145 = sub_1DEF8D988();
            v147 = sub_1DEE12A5C(v145, v146, &aBlock);

            *(v138 + 14) = v147;
            _os_log_impl(&dword_1DEE0F000, v136, v137, "Failed to delete compressed URL: %{public}s error: %{public}s", v138, 0x16u);
            swift_arrayDestroy();
            MEMORY[0x1E12CCD70](v139, -1, -1);
            MEMORY[0x1E12CCD70](v138, -1, -1);
          }

          else
          {

            v67(v133, v135);
          }
        }
      }

      v148 = *(Strong + 32);
      v149 = swift_allocObject();
      v150 = v170;
      *(v149 + 16) = v169;
      *(v149 + 24) = v150;
      v189 = sub_1DEF2EBCC;
      v190 = v149;
      aBlock = MEMORY[0x1E69E9820];
      v186 = 1107296256;
      v187 = sub_1DEE3F0C0;
      v188 = &block_descriptor_135;
      v151 = _Block_copy(&aBlock);

      v152 = v171;
      sub_1DEF8D6B8();
      v184 = MEMORY[0x1E69E7CC0];
      sub_1DEE1B9F8(&qword_1ECDE2CF0, MEMORY[0x1E69E7F60]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4210, &unk_1DEF90800);
      sub_1DEE1B548(&qword_1ECDE2C50, &unk_1ECDE4210, &unk_1DEF90800);
      v153 = v172;
      v154 = v176;
      sub_1DEF8DE08();
      MEMORY[0x1E12CB4D0](0, v152, v153, v151);
      _Block_release(v151);
      (*(v175 + 8))(v153, v154);
      (*(v173 + 8))(v152, v174);
LABEL_28:

LABEL_29:

      result = v179 == 1;
      v156 = *MEMORY[0x1E69E9840];
      return result;
    }

    v164 = v23;
    v167 = a8;
    v69 = v178;
    (*(v42 + 32))(v178, v40, v41);
    v70 = v42;
    v71 = v183;
    if (qword_1ECDE2E50 != -1)
    {
      swift_once();
    }

    v166 = a11;
    v72 = sub_1DEF8D508();
    __swift_project_value_buffer(v72, qword_1ECDF6010);
    (v27[2])(v180, v177, v71);
    v177 = *(v42 + 16);
    v177(v47, v69, v41);
    v73 = v181;

    v74 = sub_1DEF8D4D8();
    v75 = sub_1DEF8DC98();

    LODWORD(v162) = v75;
    v76 = os_log_type_enabled(v74, v75);
    v161 = v41;
    v160 = v70;
    if (v76)
    {
      v77 = swift_slowAlloc();
      v165 = v27;
      v78 = v71;
      v79 = v77;
      v159 = swift_slowAlloc();
      v184 = v73;
      aBlock = v159;
      *v79 = 136315650;
      sub_1DEF8D628();
      v158 = v74;

      v80 = sub_1DEF8D988();
      v82 = sub_1DEE12A5C(v80, v81, &aBlock);

      *(v79 + 4) = v82;
      *(v79 + 12) = 2082;
      sub_1DEE1B9F8(&unk_1ECDE4D68, MEMORY[0x1E6968FB0]);
      v83 = v180;
      v84 = sub_1DEF8E2E8();
      v86 = v85;
      (v165[1])(v83, v78);
      v87 = sub_1DEE12A5C(v84, v86, &aBlock);

      *(v79 + 14) = v87;
      *(v79 + 22) = 2082;
      v177(v163, v47, v41);
      v88 = sub_1DEF8D988();
      v90 = v89;
      v91 = *(v70 + 8);
      v91(v47, v41);
      v92 = sub_1DEE12A5C(v88, v90, &aBlock);

      *(v79 + 24) = v92;
      v93 = v158;
      _os_log_impl(&dword_1DEE0F000, v158, v162, "%s; Failed to send file %{public}s error: %{public}s", v79, 0x20u);
      v94 = v159;
      swift_arrayDestroy();
      MEMORY[0x1E12CCD70](v94, -1, -1);
      MEMORY[0x1E12CCD70](v79, -1, -1);
    }

    else
    {

      v91 = *(v70 + 8);
      v91(v47, v41);
      (v27[1])(v180, v71);
    }

    v109 = v167;
    v110 = v164;
    v111 = v164[6];
    v112 = sub_1DEF8D3F8();
    v113 = *(*(v112 - 8) + 16);
    v113(v111 + v26, v168, v112);
    v113(&v26[v110[7]], v109, v112);
    v114 = v166 + 1;
    if (v166 == -1)
    {
      __break(1u);
    }

    else
    {
      v183 = v91;
      v111 = a12;
      LODWORD(v47) = a10;
      LOBYTE(v91) = a9;
      if (qword_1ECDE37F8 == -1)
      {
LABEL_18:
        v115 = __swift_project_value_buffer(v112, qword_1ECDF60C0);
        v113(v26, v115, v112);
        *&v26[v110[5]] = 72;
        *&v26[v110[8]] = 0;
        v26[v110[9]] = 3;
        *&v26[v110[10]] = v47;
        *&v26[v110[11]] = v114;
        v26[v110[12]] = v91;
        v116 = sub_1DEEFB1A4();
        v118 = v117;
        v119 = Strong;
        sub_1DEF1CB90(v116, v117, v111, 0, 0);
        v181 = *(v119 + 32);
        v120 = swift_allocObject();
        v121 = v170;
        *(v120 + 16) = v169;
        *(v120 + 24) = v121;
        v189 = sub_1DEF2EBFC;
        v190 = v120;
        aBlock = MEMORY[0x1E69E9820];
        v186 = 1107296256;
        v187 = sub_1DEE3F0C0;
        v188 = &block_descriptor_141;
        v122 = _Block_copy(&aBlock);

        v123 = v171;
        sub_1DEF8D6B8();
        v184 = MEMORY[0x1E69E7CC0];
        sub_1DEE1B9F8(&qword_1ECDE2CF0, MEMORY[0x1E69E7F60]);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4210, &unk_1DEF90800);
        sub_1DEE1B548(&qword_1ECDE2C50, &unk_1ECDE4210, &unk_1DEF90800);
        v124 = v172;
        v125 = v176;
        sub_1DEF8DE08();
        MEMORY[0x1E12CB4D0](0, v123, v124, v122);
        _Block_release(v122);
        sub_1DEE1BFA0(v116, v118);
        (*(v175 + 8))(v124, v125);
        (*(v173 + 8))(v123, v174);
        sub_1DEE15388(v26, type metadata accessor for NetworkSyncHeader);
        (v183)(v178, v161);
        goto LABEL_28;
      }
    }

    swift_once();
    goto LABEL_18;
  }

  result = sub_1DEF8E0F8();
  __break(1u);
  return result;
}

void sub_1DEF229A4(void (*a1)(void *, uint64_t), uint64_t a2, char a3)
{
  sub_1DEF2E884();
  v5 = swift_allocError();
  *v6 = a3;
  a1(v5, 1);
}

uint64_t sub_1DEF22A18(void *a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_1DEF8D698();
  v25 = *(v10 - 8);
  v11 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_1DEF8D6D8();
  v14 = *(v24 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v24);
  v17 = &v23 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(a3 + 32);
  v19 = swift_allocObject();
  *(v19 + 16) = a4;
  *(v19 + 24) = a5;
  *(v19 + 32) = a1;
  v20 = a2 & 1;
  *(v19 + 40) = a2 & 1;
  aBlock[4] = sub_1DEF2EC9C;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1DEE3F0C0;
  aBlock[3] = &block_descriptor_162;
  v21 = _Block_copy(aBlock);
  sub_1DEE2CB00(a4);
  sub_1DEE39150(a1, v20);
  sub_1DEF8D6B8();
  v26 = MEMORY[0x1E69E7CC0];
  sub_1DEE1B9F8(&qword_1ECDE2CF0, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4210, &unk_1DEF90800);
  sub_1DEE1B548(&qword_1ECDE2C50, &unk_1ECDE4210, &unk_1DEF90800);
  sub_1DEF8DE08();
  MEMORY[0x1E12CB4D0](0, v17, v13, v21);
  _Block_release(v21);
  (*(v25 + 8))(v13, v10);
  (*(v14 + 8))(v17, v24);
}

uint64_t sub_1DEF22D14(uint64_t result, uint64_t a2, uint64_t a3, char a4)
{
  if (result)
  {
    v6 = result;

    if (a4)
    {
      v7 = a3;
      v8 = 1;
    }

    else
    {
      v7 = 1;
      v8 = 0;
    }

    v6(v7, v8);

    return sub_1DEE3DBD0(v6);
  }

  return result;
}

void sub_1DEF22D90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void *, uint64_t))
{
  sub_1DEE19808(a3);
  if (a1)
  {
    v8 = qword_1ECDE2E50;
    swift_unknownObjectRetain();
    if (v8 != -1)
    {
      swift_once();
    }

    v9 = sub_1DEF8D508();
    __swift_project_value_buffer(v9, qword_1ECDF6010);
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    v10 = sub_1DEF8D4D8();
    v11 = sub_1DEF8DC98();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v30 = v13;
      *v12 = 134349570;
      *(v12 + 4) = a4;
      *(v12 + 12) = 2082;
      swift_unknownObjectRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4D98, &qword_1DEF95A98);
      v14 = sub_1DEF8D988();
      v16 = sub_1DEE12A5C(v14, v15, &v30);

      *(v12 + 14) = v16;
      *(v12 + 22) = 2082;
      swift_unknownObjectRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4D60, &unk_1DEF95A78);
      v17 = sub_1DEF8D988();
      v19 = sub_1DEE12A5C(v17, v18, &v30);

      *(v12 + 24) = v19;
      _os_log_impl(&dword_1DEE0F000, v10, v11, "Failed to send message data (sendID:%{public}llu): %{public}s to %{public}s", v12, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1E12CCD70](v13, -1, -1);
      MEMORY[0x1E12CCD70](v12, -1, -1);
    }

    if (a5)
    {
      sub_1DEF2ED44();
      v20 = swift_allocError();
      *v21 = 0;
      a5(v20, 1);
      swift_unknownObjectRelease();
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }

  else
  {
    if (qword_1ECDE2E50 != -1)
    {
      swift_once();
    }

    v22 = sub_1DEF8D508();
    __swift_project_value_buffer(v22, qword_1ECDF6010);
    swift_unknownObjectRetain();
    v23 = sub_1DEF8D4D8();
    v24 = sub_1DEF8DCB8();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v30 = v26;
      *v25 = 134349314;
      *(v25 + 4) = a4;
      *(v25 + 12) = 2082;
      swift_unknownObjectRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4D60, &unk_1DEF95A78);
      v27 = sub_1DEF8D988();
      v29 = sub_1DEE12A5C(v27, v28, &v30);

      *(v25 + 14) = v29;
      _os_log_impl(&dword_1DEE0F000, v23, v24, "Data (sendID:%{public}llu) sent to: %{public}s", v25, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v26);
      MEMORY[0x1E12CCD70](v26, -1, -1);
      MEMORY[0x1E12CCD70](v25, -1, -1);
    }

    if (a5)
    {
      a5(1, 0);
    }
  }
}

uint64_t sub_1DEF2316C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *(a3 + 24);
  v8 = swift_allocObject();
  *(v8 + 16) = a4;
  *(v8 + 24) = a5;
  v9 = swift_allocObject();
  *(v9 + 16) = sub_1DEF2F8EC;
  *(v9 + 24) = v8;
  v12[4] = sub_1DEE46D40;
  v12[5] = v9;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 1107296256;
  v12[2] = sub_1DEE134F4;
  v12[3] = &block_descriptor_234;
  v10 = _Block_copy(v12);

  dispatch_sync(v7, v10);
  _Block_release(v10);
  LOBYTE(v7) = swift_isEscapingClosureAtFileLocation();

  if (v7)
  {
    __break(1u);
  }

  return result;
}

void sub_1DEF232C4(int a1, uint64_t a2)
{
  if (a1 == 2)
  {
    if (qword_1ECDE2E50 != -1)
    {
      swift_once();
    }

    v3 = sub_1DEF8D508();
    __swift_project_value_buffer(v3, qword_1ECDF6010);
    swift_unknownObjectRetain();
    v4 = sub_1DEF8D4D8();
    v5 = sub_1DEF8DCB8();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v33 = v7;
      *v6 = 136446210;
      swift_unknownObjectRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4E80, &qword_1DEF95B48);
      v8 = sub_1DEF8D988();
      v10 = sub_1DEE12A5C(v8, v9, &v33);

      *(v6 + 4) = v10;
      _os_log_impl(&dword_1DEE0F000, v4, v5, "%{public}s; Listener is ready", v6, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v7);
      v11 = v7;
LABEL_10:
      MEMORY[0x1E12CCD70](v11, -1, -1);
      MEMORY[0x1E12CCD70](v6, -1, -1);
    }
  }

  else
  {
    if (qword_1ECDE2E50 != -1)
    {
      swift_once();
    }

    v12 = sub_1DEF8D508();
    __swift_project_value_buffer(v12, qword_1ECDF6010);
    swift_unknownObjectRetain();
    v4 = sub_1DEF8D4D8();
    v13 = sub_1DEF8DC78();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v4, v13))
    {
      v6 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v33 = v14;
      *v6 = 136446466;
      swift_unknownObjectRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4E80, &qword_1DEF95B48);
      v15 = sub_1DEF8D988();
      v17 = sub_1DEE12A5C(v15, v16, &v33);

      *(v6 + 4) = v17;
      *(v6 + 12) = 2082;
      type metadata accessor for nw_listener_state_t(0);
      v18 = sub_1DEF8D988();
      v20 = sub_1DEE12A5C(v18, v19, &v33);

      *(v6 + 14) = v20;
      _os_log_impl(&dword_1DEE0F000, v4, v13, "%{public}s; Listener state changed to %{public}s", v6, 0x16u);
      swift_arrayDestroy();
      v11 = v14;
      goto LABEL_10;
    }
  }

  if (a2)
  {
    v21 = qword_1ECDE2E50;
    swift_unknownObjectRetain();
    if (v21 != -1)
    {
      swift_once();
    }

    v22 = sub_1DEF8D508();
    __swift_project_value_buffer(v22, qword_1ECDF6010);
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    v23 = sub_1DEF8D4D8();
    v24 = sub_1DEF8DC98();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v33 = v26;
      *v25 = 136446466;
      swift_unknownObjectRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4E80, &qword_1DEF95B48);
      v27 = sub_1DEF8D988();
      v29 = sub_1DEE12A5C(v27, v28, &v33);

      *(v25 + 4) = v29;
      *(v25 + 12) = 2082;
      swift_unknownObjectRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4D98, &qword_1DEF95A98);
      v30 = sub_1DEF8D988();
      v32 = sub_1DEE12A5C(v30, v31, &v33);

      *(v25 + 14) = v32;
      _os_log_impl(&dword_1DEE0F000, v23, v24, "%{public}s; Listener failed with error: %{public}s", v25, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1E12CCD70](v26, -1, -1);
      MEMORY[0x1E12CCD70](v25, -1, -1);

      swift_unknownObjectRelease();
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }
}

void sub_1DEF23790()
{
  v1 = sub_1DEF8D788();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x1EEE9AC00](v1);
  v6 = (&v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = v0[3];
  *v6 = v7;
  (*(v2 + 104))(v6, *MEMORY[0x1E69E8020], v1, v4);
  v8 = v7;
  LOBYTE(v7) = sub_1DEF8D7B8();
  (*(v2 + 8))(v6, v1);
  if ((v7 & 1) == 0)
  {
    __break(1u);
LABEL_12:
    swift_once();
    goto LABEL_7;
  }

  swift_beginAccess();
  if (*(v0[7] + 16))
  {
    return;
  }

  v9 = v0[12];
  if (!v9)
  {
    return;
  }

  [v9 invalidate];
  v10 = v0[12];
  v0[12] = 0;

  if (v0[13])
  {

    sub_1DEF01250();
  }

  if (qword_1ECDE2E50 != -1)
  {
    goto LABEL_12;
  }

LABEL_7:
  v11 = sub_1DEF8D508();
  __swift_project_value_buffer(v11, qword_1ECDF6010);
  v12 = sub_1DEF8D4D8();
  v13 = sub_1DEF8DCB8();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_1DEE0F000, v12, v13, "Invalidated prevent-sleep assertion", v14, 2u);
    MEMORY[0x1E12CCD70](v14, -1, -1);
  }
}

void sub_1DEF239AC(uint64_t a1, uint64_t a2)
{
  v93 = a1;
  v4 = type metadata accessor for NetworkSyncHeader(0);
  v5 = *(*(v4 - 1) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v92 = &v88 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v91 = &v88 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v89 = &v88 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v88 = &v88 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4E38, &qword_1DEF95B20);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v88 - v15;
  v17 = type metadata accessor for NetworkMessenger.PartialIncomingMessage(0);
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v90 = &v88 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_1DEF8D788();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  v24 = MEMORY[0x1EEE9AC00](v21);
  v26 = (&v88 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  v27 = *(v2 + 24);
  *v26 = v27;
  (*(v22 + 104))(v26, *MEMORY[0x1E69E8020], v21, v24);
  v28 = v27;
  LOBYTE(v27) = sub_1DEF8D7B8();
  v30 = *(v22 + 8);
  v29 = v22 + 8;
  v30(v26, v21);
  if ((v27 & 1) == 0)
  {
    __break(1u);
    goto LABEL_32;
  }

  v21 = v4;
  v29 = a2;
  if (*(a2 + v4[10]) != 3)
  {
    a2 = v93;
    if (qword_1ECDE2E50 == -1)
    {
LABEL_10:
      v49 = sub_1DEF8D508();
      __swift_project_value_buffer(v49, qword_1ECDF6010);
      v50 = v92;
      sub_1DEE15068(v29, v92, type metadata accessor for NetworkSyncHeader);
      swift_unknownObjectRetain();
      v35 = sub_1DEF8D4D8();
      v51 = sub_1DEF8DCB8();
      swift_unknownObjectRelease();
      if (!os_log_type_enabled(v35, v51))
      {

        v70 = type metadata accessor for NetworkSyncHeader;
        goto LABEL_29;
      }

      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v94 = a2;
      v95 = v38;
      *v37 = 136446466;
      swift_unknownObjectRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4D60, &unk_1DEF95A78);
      v52 = sub_1DEF8D988();
      v54 = sub_1DEE12A5C(v52, v53, &v95);

      *(v37 + 4) = v54;
      *(v37 + 12) = 2082;
      v55 = *(v21 + 24);
      sub_1DEF8D3F8();
      sub_1DEE1B9F8(&unk_1ECDE3620, MEMORY[0x1E69695A8]);
      v56 = sub_1DEF8E2E8();
      v58 = v57;
      sub_1DEE15388(v50, type metadata accessor for NetworkSyncHeader);
      v59 = sub_1DEE12A5C(v56, v58, &v95);

      *(v37 + 14) = v59;
      v47 = "%{public}s; Received unexpected sequence count for file: %{public}s";
LABEL_16:
      v48 = v51;
      goto LABEL_17;
    }

LABEL_32:
    swift_once();
    goto LABEL_10;
  }

  v31 = v93;
  if (*(a2 + v4[11]) == 2)
  {
    v32 = v4[6];
    sub_1DEF25E68(a2 + v32, v16);
    if ((*(v18 + 48))(v16, 1, v17) == 1)
    {
      sub_1DEE171B4(v16, &qword_1ECDE4E38, &qword_1DEF95B20);
      if (qword_1ECDE2E50 != -1)
      {
        swift_once();
      }

      v33 = sub_1DEF8D508();
      __swift_project_value_buffer(v33, qword_1ECDF6010);
      v34 = v89;
      sub_1DEE15068(v29, v89, type metadata accessor for NetworkSyncHeader);
      swift_unknownObjectRetain();
      v35 = sub_1DEF8D4D8();
      v36 = sub_1DEF8DCB8();
      swift_unknownObjectRelease();
      if (os_log_type_enabled(v35, v36))
      {
        v37 = swift_slowAlloc();
        v38 = swift_slowAlloc();
        v94 = v31;
        v95 = v38;
        *v37 = 136446466;
        swift_unknownObjectRetain();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4D60, &unk_1DEF95A78);
        v39 = sub_1DEF8D988();
        v41 = sub_1DEE12A5C(v39, v40, &v95);

        *(v37 + 4) = v41;
        *(v37 + 12) = 2082;
        v42 = v4[6];
        sub_1DEF8D3F8();
        sub_1DEE1B9F8(&unk_1ECDE3620, MEMORY[0x1E69695A8]);
        v43 = sub_1DEF8E2E8();
        v45 = v44;
        sub_1DEE15388(v34, type metadata accessor for NetworkSyncHeader);
        v46 = sub_1DEE12A5C(v43, v45, &v95);

        *(v37 + 14) = v46;
        v47 = "%{public}s; Received unexpected file for nonexistent message: %{public}s";
        v48 = v36;
LABEL_17:
        _os_log_impl(&dword_1DEE0F000, v35, v48, v47, v37, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1E12CCD70](v38, -1, -1);
        MEMORY[0x1E12CCD70](v37, -1, -1);

        return;
      }

      goto LABEL_19;
    }

    v50 = v90;
    sub_1DEE1C4F0(v16, v90, type metadata accessor for NetworkMessenger.PartialIncomingMessage);
    if (*(v50 + *(v17 + 20)))
    {
      sub_1DEF26448(v31, a2, 0);
    }

    else
    {
      if (qword_1ECDE2E50 != -1)
      {
        swift_once();
      }

      v73 = sub_1DEF8D508();
      __swift_project_value_buffer(v73, qword_1ECDF6010);
      v74 = v88;
      sub_1DEE15068(a2, v88, type metadata accessor for NetworkSyncHeader);
      swift_unknownObjectRetain();
      v75 = sub_1DEF8D4D8();
      v76 = sub_1DEF8DCB8();
      swift_unknownObjectRelease();
      if (os_log_type_enabled(v75, v76))
      {
        v77 = swift_slowAlloc();
        v92 = swift_slowAlloc();
        v94 = v31;
        v95 = v92;
        *v77 = 136446466;
        swift_unknownObjectRetain();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4D60, &unk_1DEF95A78);
        v78 = sub_1DEF8D988();
        v80 = sub_1DEE12A5C(v78, v79, &v95);

        *(v77 + 4) = v80;
        *(v77 + 12) = 2082;
        v81 = *(v21 + 24);
        sub_1DEF8D3F8();
        sub_1DEE1B9F8(&unk_1ECDE3620, MEMORY[0x1E69695A8]);
        v82 = sub_1DEF8E2E8();
        v84 = v83;
        sub_1DEE15388(v74, type metadata accessor for NetworkSyncHeader);
        v85 = sub_1DEE12A5C(v82, v84, &v95);

        *(v77 + 14) = v85;
        _os_log_impl(&dword_1DEE0F000, v75, v76, "%{public}s; Received file for message without extended attributes: %{public}s", v77, 0x16u);
        v86 = v92;
        swift_arrayDestroy();
        MEMORY[0x1E12CCD70](v86, -1, -1);
        v87 = v77;
        v50 = v90;
        MEMORY[0x1E12CCD70](v87, -1, -1);
      }

      else
      {

        sub_1DEE15388(v74, type metadata accessor for NetworkSyncHeader);
      }

      sub_1DEF25394(a2 + v32, 1);
    }

    v70 = type metadata accessor for NetworkMessenger.PartialIncomingMessage;
LABEL_29:
    v71 = v70;
    v72 = v50;
    goto LABEL_30;
  }

  if (qword_1ECDE2E50 != -1)
  {
    swift_once();
  }

  v60 = sub_1DEF8D508();
  __swift_project_value_buffer(v60, qword_1ECDF6010);
  v61 = a2;
  v34 = v91;
  sub_1DEE15068(v61, v91, type metadata accessor for NetworkSyncHeader);
  swift_unknownObjectRetain();
  v35 = sub_1DEF8D4D8();
  v51 = sub_1DEF8DCB8();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v35, v51))
  {
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v94 = v31;
    v95 = v38;
    *v37 = 136446466;
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4D60, &unk_1DEF95A78);
    v62 = sub_1DEF8D988();
    v64 = sub_1DEE12A5C(v62, v63, &v95);

    *(v37 + 4) = v64;
    *(v37 + 12) = 2082;
    v65 = v4[6];
    sub_1DEF8D3F8();
    sub_1DEE1B9F8(&unk_1ECDE3620, MEMORY[0x1E69695A8]);
    v66 = sub_1DEF8E2E8();
    v68 = v67;
    sub_1DEE15388(v34, type metadata accessor for NetworkSyncHeader);
    v69 = sub_1DEE12A5C(v66, v68, &v95);

    *(v37 + 14) = v69;
    v47 = "%{public}s; Received unexpected sequence index for file: %{public}s";
    goto LABEL_16;
  }

LABEL_19:

  v71 = type metadata accessor for NetworkSyncHeader;
  v72 = v34;
LABEL_30:
  sub_1DEE15388(v72, v71);
}

uint64_t sub_1DEF24560(uint64_t a1)
{
  v26 = a1;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4DA8, &qword_1DEF95AA8);
  v2 = *(*(v25 - 8) + 64);
  MEMORY[0x1EEE9AC00](v25);
  v4 = (&v24 - v3);
  swift_beginAccess();
  v5 = *(v1 + 56);
  v6 = 1 << *(v5 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(v5 + 64);
  v9 = (v6 + 63) >> 6;
  v10 = *(v1 + 56);
  result = swift_bridgeObjectRetain_n();
  v12 = 0;
  while (v8)
  {
    v13 = v12;
LABEL_10:
    v14 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v15 = v14 | (v13 << 6);
    v16 = *(v5 + 56);
    v17 = (*(v5 + 48) + 16 * v15);
    v19 = *v17;
    v18 = v17[1];
    v20 = v16 + *(*(type metadata accessor for NetworkMessenger.ExpiringConnection(0) - 8) + 72) * v15;
    v21 = *(v25 + 48);
    sub_1DEE15068(v20, v4 + v21, type metadata accessor for NetworkMessenger.ExpiringConnection);
    *v4 = v19;
    v4[1] = v18;
    v22 = *(v4 + v21);

    result = sub_1DEE171B4(v4, &qword_1ECDE4DA8, &qword_1DEF95AA8);
    if (v22 == v26)
    {
      v23 = 1;
LABEL_13:

      return v23;
    }
  }

  while (1)
  {
    v13 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v13 >= v9)
    {
      v23 = 0;
      goto LABEL_13;
    }

    v8 = *(v5 + 64 + 8 * v13);
    ++v12;
    if (v8)
    {
      v12 = v13;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

void sub_1DEF2473C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4E38, &qword_1DEF95B20);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v114 = v105 - v10;
  v112 = type metadata accessor for NetworkMessenger.PartialIncomingMessage(0);
  v110 = *(v112 - 8);
  v11 = *(v110 + 64);
  MEMORY[0x1EEE9AC00](v112);
  v109 = v105 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = type metadata accessor for NetworkSyncHeader(0);
  v13 = *(*(v115 - 1) + 64);
  MEMORY[0x1EEE9AC00](v115);
  v113 = v105 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v111 = v105 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v108 = v105 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v21 = v105 - v20;
  MEMORY[0x1EEE9AC00](v22);
  v24 = v105 - v23;
  v25 = sub_1DEF8D788();
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  v28 = MEMORY[0x1EEE9AC00](v25);
  v30 = (v105 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0));
  v31 = *(v4 + 24);
  *v30 = v31;
  (*(v26 + 104))(v30, *MEMORY[0x1E69E8020], v25, v28);
  v32 = v31;
  LOBYTE(v31) = sub_1DEF8D7B8();
  (*(v26 + 8))(v30, v25);
  if (v31)
  {
    if (qword_1ECDE2E50 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v33 = sub_1DEF8D508();
  v34 = __swift_project_value_buffer(v33, qword_1ECDF6010);
  sub_1DEE15068(a3, v24, type metadata accessor for NetworkSyncHeader);
  sub_1DEE15068(a3, v21, type metadata accessor for NetworkSyncHeader);
  swift_unknownObjectRetain();
  v35 = sub_1DEF8D4D8();
  v36 = sub_1DEF8DCB8();
  swift_unknownObjectRelease();
  if (!os_log_type_enabled(v35, v36))
  {
    sub_1DEE15388(v21, type metadata accessor for NetworkSyncHeader);
    sub_1DEE15388(v24, type metadata accessor for NetworkSyncHeader);

LABEL_7:
    v47 = v114;
    v48 = v115;
    if (*(a3 + v115[10]) == 3)
    {
      if (*(a3 + v115[11]) != 1)
      {
        v80 = v111;
        sub_1DEE15068(a3, v111, type metadata accessor for NetworkSyncHeader);
        swift_unknownObjectRetain();
        v51 = sub_1DEF8D4D8();
        v81 = sub_1DEF8DCB8();
        swift_unknownObjectRelease();
        if (os_log_type_enabled(v51, v81))
        {
          v82 = swift_slowAlloc();
          v83 = swift_slowAlloc();
          v117 = v83;
          *v82 = 136446466;
          v84 = a2;
          v85 = v48[6];
          sub_1DEF8D3F8();
          sub_1DEE1B9F8(&unk_1ECDE3620, MEMORY[0x1E69695A8]);
          v86 = sub_1DEF8E2E8();
          v88 = v87;
          sub_1DEE15388(v80, type metadata accessor for NetworkSyncHeader);
          v89 = sub_1DEE12A5C(v86, v88, &v117);

          *(v82 + 4) = v89;
          *(v82 + 12) = 2082;
          v116 = v84;
          swift_unknownObjectRetain();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4D60, &unk_1DEF95A78);
          v90 = sub_1DEF8D988();
          v92 = sub_1DEE12A5C(v90, v91, &v117);

          *(v82 + 14) = v92;
          _os_log_impl(&dword_1DEE0F000, v51, v81, "Received unexpected sequence index for file: %{public}s from: %{public}s", v82, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x1E12CCD70](v83, -1, -1);
          v77 = v82;
          goto LABEL_18;
        }

        v78 = type metadata accessor for NetworkSyncHeader;
        v79 = v80;
        goto LABEL_23;
      }

      sub_1DEF25E68(a3 + v115[6], v114);
      if ((*(v110 + 48))(v47, 1, v112) != 1)
      {
        v93 = v109;
        sub_1DEE1C4F0(v47, v109, type metadata accessor for NetworkMessenger.PartialIncomingMessage);
        swift_unknownObjectRetain();
        v94 = sub_1DEF8D4D8();
        v95 = sub_1DEF8DCB8();
        swift_unknownObjectRelease();
        if (os_log_type_enabled(v94, v95))
        {
          v96 = swift_slowAlloc();
          v97 = a1;
          v98 = swift_slowAlloc();
          v116 = a2;
          v117 = v98;
          *v96 = 136446210;
          swift_unknownObjectRetain();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4D60, &unk_1DEF95A78);
          v99 = sub_1DEF8D988();
          v101 = sub_1DEE12A5C(v99, v100, &v117);

          *(v96 + 4) = v101;
          _os_log_impl(&dword_1DEE0F000, v94, v95, "Updating partial data; waiting for more from: %{public}s", v96, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v98);
          v102 = v98;
          a1 = v97;
          MEMORY[0x1E12CCD70](v102, -1, -1);
          MEMORY[0x1E12CCD70](v96, -1, -1);
        }

        v103 = *(v112 + 20);
        v104 = *(v93 + v103);

        *(v93 + v103) = a1;
        sub_1DEF2934C(v93);
        v78 = type metadata accessor for NetworkMessenger.PartialIncomingMessage;
        v79 = v93;
        goto LABEL_23;
      }

      sub_1DEE171B4(v47, &qword_1ECDE4E38, &qword_1DEF95B20);
      v49 = a3;
      v50 = v108;
      sub_1DEE15068(v49, v108, type metadata accessor for NetworkSyncHeader);
      swift_unknownObjectRetain();
      v51 = sub_1DEF8D4D8();
      v52 = sub_1DEF8DC98();
      swift_unknownObjectRelease();
      if (os_log_type_enabled(v51, v52))
      {
        v53 = v48;
        v54 = swift_slowAlloc();
        v55 = swift_slowAlloc();
        v117 = v55;
        *v54 = 136446466;
        v56 = a2;
        v57 = v53[6];
        sub_1DEF8D3F8();
        sub_1DEE1B9F8(&unk_1ECDE3620, MEMORY[0x1E69695A8]);
        v58 = sub_1DEF8E2E8();
        v60 = v59;
        sub_1DEE15388(v50, type metadata accessor for NetworkSyncHeader);
        v61 = sub_1DEE12A5C(v58, v60, &v117);

        *(v54 + 4) = v61;
        *(v54 + 12) = 2082;
        v116 = v56;
        swift_unknownObjectRetain();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4D60, &unk_1DEF95A78);
        v62 = sub_1DEF8D988();
        v64 = sub_1DEE12A5C(v62, v63, &v117);

        *(v54 + 14) = v64;
        v65 = "Can't receive extended attributes without preexisting metadata: %{public}s from: %{public}s";
LABEL_14:
        _os_log_impl(&dword_1DEE0F000, v51, v52, v65, v54, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1E12CCD70](v55, -1, -1);
        v77 = v54;
LABEL_18:
        MEMORY[0x1E12CCD70](v77, -1, -1);

        return;
      }
    }

    else
    {
      v66 = a3;
      v50 = v113;
      sub_1DEE15068(v66, v113, type metadata accessor for NetworkSyncHeader);
      swift_unknownObjectRetain();
      v51 = sub_1DEF8D4D8();
      v52 = sub_1DEF8DCB8();
      swift_unknownObjectRelease();
      if (os_log_type_enabled(v51, v52))
      {
        v67 = v48;
        v54 = swift_slowAlloc();
        v55 = swift_slowAlloc();
        v117 = v55;
        *v54 = 136446466;
        v68 = a2;
        v69 = v67[6];
        sub_1DEF8D3F8();
        sub_1DEE1B9F8(&unk_1ECDE3620, MEMORY[0x1E69695A8]);
        v70 = sub_1DEF8E2E8();
        v72 = v71;
        sub_1DEE15388(v50, type metadata accessor for NetworkSyncHeader);
        v73 = sub_1DEE12A5C(v70, v72, &v117);

        *(v54 + 4) = v73;
        *(v54 + 12) = 2082;
        v116 = v68;
        swift_unknownObjectRetain();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4D60, &unk_1DEF95A78);
        v74 = sub_1DEF8D988();
        v76 = sub_1DEE12A5C(v74, v75, &v117);

        *(v54 + 14) = v76;
        v65 = "Received unexpected sequence count for file: %{public}s from: %{public}s";
        goto LABEL_14;
      }
    }

    v78 = type metadata accessor for NetworkSyncHeader;
    v79 = v50;
LABEL_23:
    sub_1DEE15388(v79, v78);
    return;
  }

  v105[1] = v34;
  v106 = a1;
  v107 = v4;
  v37 = a2;
  v38 = swift_slowAlloc();
  v39 = swift_slowAlloc();
  v117 = v39;
  *v38 = 67240706;
  v40 = v115;
  v41 = *&v24[v115[11]];
  sub_1DEE15388(v24, type metadata accessor for NetworkSyncHeader);
  *(v38 + 4) = v41;
  *(v38 + 8) = 1026;
  v42 = *&v21[v40[10]];
  v43 = v42 - 1;
  if (v42)
  {
    sub_1DEE15388(v21, type metadata accessor for NetworkSyncHeader);
    *(v38 + 10) = v43;
    *(v38 + 14) = 2082;
    a2 = v37;
    v116 = v37;
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4D60, &unk_1DEF95A78);
    v44 = sub_1DEF8D988();
    v46 = sub_1DEE12A5C(v44, v45, &v117);

    *(v38 + 16) = v46;
    _os_log_impl(&dword_1DEE0F000, v35, v36, "Received extended attributes %{public}u/%{public}u from: %{public}s", v38, 0x18u);
    __swift_destroy_boxed_opaque_existential_1(v39);
    MEMORY[0x1E12CCD70](v39, -1, -1);
    MEMORY[0x1E12CCD70](v38, -1, -1);

    a1 = v106;
    goto LABEL_7;
  }

  __break(1u);
}

uint64_t sub_1DEF25394(uint64_t a1, int a2)
{
  v3 = v2;
  v100 = a2;
  v117 = a1;
  v121[6] = *MEMORY[0x1E69E9840];
  v93 = sub_1DEF8D168();
  v92 = *(v93 - 8);
  v4 = *(v92 + 64);
  MEMORY[0x1EEE9AC00](v93);
  v91 = &v90 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = sub_1DEF8D1E8();
  v94 = *(v95 - 8);
  v6 = *(v94 + 64);
  MEMORY[0x1EEE9AC00](v95);
  v101 = &v90 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4E38, &qword_1DEF95B20);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v97 = &v90 - v10;
  v116 = sub_1DEF8D3F8();
  v11 = *(v116 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v116);
  v115 = &v90 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Message();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v114 = &v90 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = type metadata accessor for NetworkMessenger.PartialIncomingMessage(0);
  v110 = *(v96 - 8);
  v17 = *(v110 + 64);
  MEMORY[0x1EEE9AC00](v96);
  v109 = &v90 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4E40, &qword_1DEF95B28);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v22 = &v90 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v90 - v24;
  v26 = sub_1DEF8D788();
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  v29 = MEMORY[0x1EEE9AC00](v26);
  v31 = (&v90 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0));
  v32 = *(v2 + 24);
  *v31 = v32;
  (*(v27 + 104))(v31, *MEMORY[0x1E69E8020], v26, v29);
  v33 = v32;
  v34 = sub_1DEF8D7B8();
  (*(v27 + 8))(v31, v26);
  if ((v34 & 1) == 0)
  {
LABEL_39:
    __break(1u);
  }

  swift_beginAccess();
  v35 = *(v3 + 72);
  v38 = *(v35 + 64);
  v37 = v35 + 64;
  v36 = v38;
  v39 = 1 << *(*(v3 + 72) + 32);
  if (v39 < 64)
  {
    v40 = ~(-1 << v39);
  }

  else
  {
    v40 = -1;
  }

  v41 = v40 & v36;
  v42 = (v39 + 63) >> 6;
  v112 = (v11 + 8);
  v113 = (v11 + 16);

  v44 = 0;
  v118 = v22;
  v99 = v37;
  v98 = v42;
  v108 = v25;
  v106 = v3;
  v105 = v43;
  if (v41)
  {
    goto LABEL_6;
  }

  do
  {
LABEL_7:
    v45 = v44 + 1;
    if (__OFADD__(v44, 1))
    {
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    if (v45 >= v42)
    {
      goto LABEL_31;
    }

    v41 = *(v37 + 8 * v45);
    ++v44;
  }

  while (!v41);
LABEL_10:
  v104 = (v41 - 1) & v41;
  v103 = v45;
  v46 = __clz(__rbit64(v41)) | (v45 << 6);
  v47 = (*(v43 + 48) + 16 * v46);
  v48 = *(*(v43 + 56) + 8 * v46);
  v49 = v47[1];
  v102 = *v47;
  v50 = v48 + 64;
  v51 = 1 << *(v48 + 32);
  if (v51 < 64)
  {
    v52 = ~(-1 << v51);
  }

  else
  {
    v52 = -1;
  }

  v53 = v52 & *(v48 + 64);
  v54 = (v51 + 63) >> 6;
  v111 = v48;
  swift_bridgeObjectRetain_n();
  v107 = v49;

  v55 = 0;
  do
  {
    if (v53)
    {
      v56 = v55;
      v57 = v118;
      goto LABEL_24;
    }

    if (v54 <= v55 + 1)
    {
      v58 = v55 + 1;
    }

    else
    {
      v58 = v54;
    }

    v59 = v58 - 1;
    v57 = v118;
    do
    {
      v56 = v55 + 1;
      if (__OFADD__(v55, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v56 >= v54)
      {
        v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4E48, &qword_1DEF95B30);
        (*(*(v72 - 8) + 56))(v57, 1, 1, v72);
        v53 = 0;
        v55 = v59;
        goto LABEL_25;
      }

      v53 = *(v50 + 8 * v56);
      ++v55;
    }

    while (!v53);
    v55 = v56;
LABEL_24:
    v60 = __clz(__rbit64(v53));
    v53 &= v53 - 1;
    v61 = v60 | (v56 << 6);
    v62 = *(*(v111 + 48) + v61);
    v63 = v109;
    sub_1DEE15068(*(v111 + 56) + *(v110 + 72) * v61, v109, type metadata accessor for NetworkMessenger.PartialIncomingMessage);
    v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4E48, &qword_1DEF95B30);
    v65 = *(v64 + 48);
    *v57 = v62;
    sub_1DEE1C4F0(v63, &v57[v65], type metadata accessor for NetworkMessenger.PartialIncomingMessage);
    (*(*(v64 - 8) + 56))(v57, 0, 1, v64);
    v25 = v108;
LABEL_25:
    sub_1DEE1BA88(v57, v25, &qword_1ECDE4E40, &qword_1DEF95B28);
    v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4E48, &qword_1DEF95B30);
    if ((*(*(v66 - 8) + 48))(v25, 1, v66) == 1)
    {

      v44 = v103;
      v43 = v105;
      v37 = v99;
      v42 = v98;
      v41 = v104;
      if (!v104)
      {
        goto LABEL_7;
      }

LABEL_6:
      v45 = v44;
      goto LABEL_10;
    }

    v67 = *v25;
    v68 = *(v66 + 48);
    v69 = v114;
    sub_1DEE15068(&v25[v68], v114, type metadata accessor for Message);
    sub_1DEE15388(&v25[v68], type metadata accessor for NetworkMessenger.PartialIncomingMessage);
    v71 = v115;
    v70 = v116;
    (*v113)(v115, v69, v116);
    sub_1DEE15388(v69, type metadata accessor for Message);
    LOBYTE(v68) = sub_1DEF8D3A8();
    (*v112)(v71, v70);
  }

  while ((v68 & 1) == 0);
  v120 = v111;
  v73 = v97;
  (*(v110 + 56))(v97, 1, 1, v96);
  sub_1DEF33DA8(v73, v67);
  v74 = v120;
  v75 = v106;
  swift_beginAccess();
  v76 = *(v75 + 72);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v119 = *(v75 + 72);
  *(v75 + 72) = 0x8000000000000000;
  sub_1DEF3F978(v74, v102, v107, isUniquelyReferenced_nonNull_native);

  *(v75 + 72) = v119;
  swift_endAccess();

LABEL_31:

  if (v100)
  {
    v121[0] = sub_1DEF8D398();
    v121[1] = v79;
    v80 = v92;
    v81 = v91;
    v82 = v93;
    (*(v92 + 104))(v91, *MEMORY[0x1E6968F70], v93);
    sub_1DEF2EB78();
    sub_1DEF8D1D8();
    (*(v80 + 8))(v81, v82);

    v83 = [objc_opt_self() defaultManager];
    v84 = sub_1DEF8D178();
    v121[0] = 0;
    v85 = [v83 removeItemAtURL:v84 error:v121];

    if (v85)
    {
      v86 = v121[0];
    }

    else
    {
      v87 = v121[0];
      v88 = sub_1DEF8D148();

      swift_willThrow();
    }

    result = (*(v94 + 8))(v101, v95);
  }

  v89 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1DEF25E68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v72 = a1;
  v63 = a2;
  v62 = type metadata accessor for NetworkMessenger.PartialIncomingMessage(0);
  v69 = *(v62 - 8);
  v4 = *(v69 + 64);
  MEMORY[0x1EEE9AC00](v62);
  v6 = &v59 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v68 = &v59 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4E40, &qword_1DEF95B28);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v59 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v70 = &v59 - v14;
  v15 = sub_1DEF8D788();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = (&v59 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = *(v3 + 24);
  *v20 = v21;
  (*(v16 + 104))(v20, *MEMORY[0x1E69E8020], v15, v18);
  v22 = v21;
  v23 = sub_1DEF8D7B8();
  result = (*(v16 + 8))(v20, v15);
  if (v23)
  {
    swift_beginAccess();
    v25 = *(v3 + 72);
    v28 = *(v25 + 64);
    v27 = v25 + 64;
    v26 = v28;
    v29 = 1 << *(*(v3 + 72) + 32);
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

    v33 = 0;
    v34 = v70;
    v60 = v32;
    v61 = v27;
    v66 = result;
    v67 = v12;
    v73 = v6;
    if (v31)
    {
      while (1)
      {
        v35 = v33;
LABEL_10:
        v36 = *(result + 56);
        v64 = v35;
        v37 = *(v36 + ((v35 << 9) | (8 * __clz(__rbit64(v31)))));
        v65 = (v31 - 1) & v31;
        v38 = v37 + 64;
        v39 = 1 << *(v37 + 32);
        v40 = v39 < 64 ? ~(-1 << v39) : -1;
        v41 = v40 & *(v37 + 64);
        v42 = (v39 + 63) >> 6;
        v71 = v37;

        v43 = 0;
        if (!v41)
        {
          break;
        }

        while (1)
        {
          v44 = v43;
LABEL_22:
          v47 = __clz(__rbit64(v41));
          v41 &= v41 - 1;
          v48 = v47 | (v44 << 6);
          v49 = *(*(v71 + 48) + v48);
          v50 = v68;
          sub_1DEE15068(*(v71 + 56) + *(v69 + 72) * v48, v68, type metadata accessor for NetworkMessenger.PartialIncomingMessage);
          v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4E48, &qword_1DEF95B30);
          v52 = *(v51 + 48);
          v12 = v67;
          *v67 = v49;
          sub_1DEE1C4F0(v50, &v12[v52], type metadata accessor for NetworkMessenger.PartialIncomingMessage);
          (*(*(v51 - 8) + 56))(v12, 0, 1, v51);
          v46 = v44;
          v34 = v70;
LABEL_23:
          sub_1DEE1BA88(v12, v34, &qword_1ECDE4E40, &qword_1DEF95B28);
          v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4E48, &qword_1DEF95B30);
          v54 = (*(*(v53 - 8) + 48))(v34, 1, v53);
          v55 = v73;
          if (v54 == 1)
          {
            break;
          }

          sub_1DEE1C4F0(v34 + *(v53 + 48), v73, type metadata accessor for NetworkMessenger.PartialIncomingMessage);
          if (sub_1DEF8D3A8())
          {

            v57 = v63;
            sub_1DEE1C4F0(v55, v63, type metadata accessor for NetworkMessenger.PartialIncomingMessage);
            v58 = 0;
            return (*(v69 + 56))(v57, v58, 1, v62);
          }

          result = sub_1DEE15388(v55, type metadata accessor for NetworkMessenger.PartialIncomingMessage);
          v43 = v46;
          if (!v41)
          {
            goto LABEL_15;
          }
        }

        v33 = v64;
        v31 = v65;
        result = v66;
        v32 = v60;
        v27 = v61;
        if (!v65)
        {
          goto LABEL_7;
        }
      }

LABEL_15:
      if (v42 <= v43 + 1)
      {
        v45 = v43 + 1;
      }

      else
      {
        v45 = v42;
      }

      v46 = v45 - 1;
      while (1)
      {
        v44 = v43 + 1;
        if (__OFADD__(v43, 1))
        {
          break;
        }

        if (v44 >= v42)
        {
          v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4E48, &qword_1DEF95B30);
          (*(*(v56 - 8) + 56))(v12, 1, 1, v56);
          v41 = 0;
          goto LABEL_23;
        }

        v41 = *(v38 + 8 * v44);
        ++v43;
        if (v41)
        {
          goto LABEL_22;
        }
      }

      __break(1u);
    }

    else
    {
LABEL_7:
      while (1)
      {
        v35 = v33 + 1;
        if (__OFADD__(v33, 1))
        {
          break;
        }

        if (v35 >= v32)
        {

          v58 = 1;
          v57 = v63;
          return (*(v69 + 56))(v57, v58, 1, v62);
        }

        v31 = *(v27 + 8 * v35);
        ++v33;
        if (v31)
        {
          goto LABEL_10;
        }
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_1DEF26448(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v192 = a1;
  v201 = *MEMORY[0x1E69E9840];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4890, &qword_1DEF90990);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v180 = v172 - v7;
  v189 = sub_1DEF8D3F8();
  v182 = *(v189 - 8);
  v8 = *(v182 + 64);
  MEMORY[0x1EEE9AC00](v189);
  v181 = v172 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v188 = sub_1DEF8D168();
  v184 = *(v188 - 8);
  v10 = *(v184 + 64);
  MEMORY[0x1EEE9AC00](v188);
  v187 = v172 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1DEF8D1E8();
  v13 = *(v12 - 8);
  v185 = v12;
  v186 = v13;
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v179 = v172 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v183 = v172 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v191 = v172 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4E38, &qword_1DEF95B20);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v23 = v172 - v22;
  v24 = type metadata accessor for NetworkMessenger.PartialIncomingMessage(0);
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v24);
  v190 = v172 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = type metadata accessor for NetworkSyncHeader(0);
  v29 = *(v28 - 8);
  v30 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v28);
  MEMORY[0x1EEE9AC00](v31);
  v33 = v172 - v32;
  MEMORY[0x1EEE9AC00](v34);
  v36 = v172 - v35;
  MEMORY[0x1EEE9AC00](v37);
  MEMORY[0x1EEE9AC00](v38);
  MEMORY[0x1EEE9AC00](v39);
  v45 = v172 - v44;
  v46 = *(v40 + 32);
  v193 = a2;
  LODWORD(v46) = *(a2 + v46);
  v47 = v46 - a3;
  if (v46 < a3)
  {
    __break(1u);
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  if (v47 >> 15)
  {
    LODWORD(v47) = 0x8000;
    goto LABEL_9;
  }

  if (v47)
  {
LABEL_9:
    v60 = swift_allocObject();
    swift_weakInit();
    sub_1DEE15068(v193, v45, type metadata accessor for NetworkSyncHeader);
    v61 = (*(v29 + 80) + 32) & ~*(v29 + 80);
    v62 = (v30 + v61 + 3) & 0xFFFFFFFFFFFFFFFCLL;
    v63 = swift_allocObject();
    *(v63 + 16) = v60;
    v64 = v192;
    *(v63 + 24) = v192;
    sub_1DEE1C4F0(v45, v63 + v61, type metadata accessor for NetworkSyncHeader);
    *(v63 + v62) = v47;
    *(v63 + ((v62 + 7) & 0xFFFFFFFFFFFFFFFCLL)) = a3;
    v199 = sub_1DEF301FC;
    v200 = v63;
    aBlock = MEMORY[0x1E69E9820];
    v196 = 1107296256;
    v197 = sub_1DEE1BDCC;
    v198 = &block_descriptor_337;
    v65 = _Block_copy(&aBlock);
    swift_unknownObjectRetain();

    nw_connection_receive(v64, v47, v47, v65);
    _Block_release(v65);
    goto LABEL_10;
  }

  v177 = v43;
  v176 = v42;
  v175 = v41;
  v178 = v40;
  v47 = *(v40 + 24);
  v45 = v193;
  sub_1DEF25E68(v193 + v47, v23);
  if ((*(v25 + 48))(v23, 1, v24) != 1)
  {
    v67 = v190;
    sub_1DEE1C4F0(v23, v190, type metadata accessor for NetworkMessenger.PartialIncomingMessage);
    v174 = *&v67[*(v24 + 20)];
    if (v174)
    {
      v173 = v47;
      v68 = sub_1DEF8D398();
      v69 = OBJC_IVAR____TtC16ReplicatorEngine16NetworkMessenger_temporaryFileURL;
      aBlock = v68;
      v196 = v70;
      v71 = *MEMORY[0x1E6968F70];
      v72 = v184;
      v33 = (v184 + 104);
      v73 = v187;
      v74 = v188;
      v172[0] = *(v184 + 104);
      (v172[0])(v187, v71, v188);
      v75 = sub_1DEF2EB78();
      v172[2] = v69;
      v172[1] = v75;
      sub_1DEF8D1D8();
      v76 = *(v72 + 8);
      v76(v73, v74);

      v77 = objc_opt_self();
      v78 = [v77 defaultManager];
      sub_1DEF8D1C8();
      v79 = sub_1DEF8D918();

      LODWORD(v69) = [v78 fileExistsAtPath_];

      if (v69)
      {
        if (*(v45 + *(v178 + 36)) != 4)
        {
LABEL_28:
          v47 = v174 + 64;
          v123 = 1 << *(v174 + 32);
          v124 = -1;
          if (v123 < 64)
          {
            v124 = ~(-1 << v123);
          }

          v45 = v124 & *(v174 + 64);
          v125 = (v123 + 63) >> 6;

          for (i = 0; v45; i = v128)
          {
            v128 = i;
LABEL_35:
            v129 = (v128 << 10) | (16 * __clz(__rbit64(v45)));
            v130 = (*(v174 + 48) + v129);
            v131 = *v130;
            v132 = v130[1];
            v188 = *(*(v174 + 56) + v129);
            MEMORY[0x1EEE9AC00](v126);
            *&v172[-4] = v188;
            v172[-2] = v133;
            v172[-1] = v132;

            v33 = *(&v188 + 1);
            v134 = v188;
            sub_1DEE1BFF4(v188, *(&v188 + 1));
            sub_1DEF8D198();
            v45 &= v45 - 1;
            sub_1DEE1BFA0(v134, v33);
          }

          while (1)
          {
            v128 = i + 1;
            if (__OFADD__(i, 1))
            {
              goto LABEL_52;
            }

            if (v128 >= v125)
            {

              sub_1DEF25394(v193 + v173, 0);
              v136 = v185;
              v137 = v186;
              v138 = v180;
              v139 = v191;
              (*(v186 + 16))(v180, v191, v185);
              (*(v137 + 56))(v138, 0, 1, v136);
              v140 = v190;
              v141 = v192;
              sub_1DEE1F270(v190, v138, v192);
              sub_1DEE171B4(v138, &qword_1ECDE4890, &qword_1DEF90990);
              sub_1DEE18040(v141);
              (*(v137 + 8))(v139, v136);
              sub_1DEE15388(v140, type metadata accessor for NetworkMessenger.PartialIncomingMessage);
              goto LABEL_10;
            }

            v45 = *(v47 + 8 * v128);
            ++i;
            if (v45)
            {
              goto LABEL_35;
            }
          }
        }

        v80 = v181;
        sub_1DEF8D3E8();
        v81 = sub_1DEF8D398();
        v83 = v82;
        (*(v182 + 8))(v80, v189);
        aBlock = v81;
        v196 = v83;
        v84 = v77;
        v86 = v187;
        v85 = v188;
        (v172[0])(v187, v71, v188);
        v87 = v183;
        sub_1DEF8D1D8();
        v76(v86, v85);

        v88 = [v84 &off_1E86A2638 + 3];
        v89 = sub_1DEF8D178();
        v90 = sub_1DEF8D178();
        aBlock = 0;
        v91 = [v88 moveItemAtURL:v89 toURL:v90 error:&aBlock];

        v92 = aBlock;
        if (v91)
        {
          sub_1DEEE1914();
          v94 = v185;
          v93 = v186;
          v95 = v179;
          (*(v186 + 16))(v179, v87, v185);
          v96 = v92;
          v164 = sub_1DEF291F4(v95, &selRef_fileHandleForReadingFromURL_error_);
          sub_1DEEA37CC(MEMORY[0x1E69E7CC0]);
          sub_1DEEE1C64(v191);

          v165 = [v84 &off_1E86A2638 + 3];
          v166 = sub_1DEF8D178();
          aBlock = 0;
          v167 = [v165 removeItemAtURL:v166 error:&aBlock];

          if (v167)
          {
            v33 = (v93 + 8);
            v168 = *(v93 + 8);
            v169 = aBlock;
            v168(v87, v94);

            goto LABEL_28;
          }

          v170 = aBlock;
          v171 = sub_1DEF8D148();

          swift_willThrow();
          v144 = v171;
        }

        else
        {
          v142 = aBlock;
          v143 = sub_1DEF8D148();

          swift_willThrow();
          v144 = v143;
          v94 = v185;
          v93 = v186;
        }

        v145 = *(v93 + 8);
        v145(v87, v94);
        v146 = v193;
        if (qword_1ECDE2E50 != -1)
        {
          swift_once();
        }

        v147 = sub_1DEF8D508();
        __swift_project_value_buffer(v147, qword_1ECDF6010);
        v148 = v176;
        sub_1DEE15068(v146, v176, type metadata accessor for NetworkSyncHeader);
        v149 = v144;
        v150 = sub_1DEF8D4D8();
        v151 = sub_1DEF8DC98();

        if (os_log_type_enabled(v150, v151))
        {
          v152 = swift_slowAlloc();
          v153 = swift_slowAlloc();
          aBlock = v153;
          *v152 = 136446466;
          v154 = *(v178 + 24);
          sub_1DEE1B9F8(&unk_1ECDE3620, MEMORY[0x1E69695A8]);
          v155 = sub_1DEF8E2E8();
          v157 = v156;
          sub_1DEE15388(v148, type metadata accessor for NetworkSyncHeader);
          v158 = sub_1DEE12A5C(v155, v157, &aBlock);

          *(v152 + 4) = v158;
          *(v152 + 12) = 2082;
          v194 = v144;
          v159 = v144;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3AC0, &unk_1DEF90B00);
          v160 = sub_1DEF8D988();
          v162 = sub_1DEE12A5C(v160, v161, &aBlock);

          *(v152 + 14) = v162;
          _os_log_impl(&dword_1DEE0F000, v150, v151, "Failed to decompress file: %{public}s; error: %{public}s", v152, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x1E12CCD70](v153, -1, -1);
          v163 = v152;
          v146 = v193;
          MEMORY[0x1E12CCD70](v163, -1, -1);
        }

        else
        {

          sub_1DEE15388(v148, type metadata accessor for NetworkSyncHeader);
        }

        sub_1DEF25394(v146 + v173, 1);

        v145(v191, v94);
      }

      else
      {
        if (qword_1ECDE2E50 != -1)
        {
          swift_once();
        }

        v109 = sub_1DEF8D508();
        __swift_project_value_buffer(v109, qword_1ECDF6010);
        v110 = v193;
        v111 = v177;
        sub_1DEE15068(v193, v177, type metadata accessor for NetworkSyncHeader);
        v112 = sub_1DEF8D4D8();
        v113 = sub_1DEF8DC98();
        v114 = os_log_type_enabled(v112, v113);
        v115 = v185;
        if (v114)
        {
          v116 = swift_slowAlloc();
          v117 = swift_slowAlloc();
          aBlock = v117;
          *v116 = 136446210;
          v118 = *(v178 + 24);
          sub_1DEE1B9F8(&unk_1ECDE3620, MEMORY[0x1E69695A8]);
          v119 = sub_1DEF8E2E8();
          v121 = v120;
          sub_1DEE15388(v111, type metadata accessor for NetworkSyncHeader);
          v122 = sub_1DEE12A5C(v119, v121, &aBlock);

          *(v116 + 4) = v122;
          _os_log_impl(&dword_1DEE0F000, v112, v113, "File does not exist for extended attributes: %{public}s", v116, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v117);
          MEMORY[0x1E12CCD70](v117, -1, -1);
          MEMORY[0x1E12CCD70](v116, -1, -1);
        }

        else
        {

          sub_1DEE15388(v111, type metadata accessor for NetworkSyncHeader);
        }

        v135 = v186;
        sub_1DEF25394(v110 + v173, 1);
        (*(v135 + 8))(v191, v115);
      }
    }

    else
    {
      if (qword_1ECDE2E50 != -1)
      {
        swift_once();
      }

      v97 = sub_1DEF8D508();
      __swift_project_value_buffer(v97, qword_1ECDF6010);
      sub_1DEE15068(v45, v36, type metadata accessor for NetworkSyncHeader);
      v98 = sub_1DEF8D4D8();
      v99 = sub_1DEF8DC98();
      if (os_log_type_enabled(v98, v99))
      {
        v100 = swift_slowAlloc();
        v101 = v47;
        v102 = swift_slowAlloc();
        aBlock = v102;
        *v100 = 136446210;
        v103 = *(v178 + 24);
        sub_1DEE1B9F8(&unk_1ECDE3620, MEMORY[0x1E69695A8]);
        v104 = sub_1DEF8E2E8();
        v106 = v105;
        sub_1DEE15388(v36, type metadata accessor for NetworkSyncHeader);
        v107 = sub_1DEE12A5C(v104, v106, &aBlock);

        *(v100 + 4) = v107;
        _os_log_impl(&dword_1DEE0F000, v98, v99, "Extended attributes do not exist for completed incoming file: %{public}s", v100, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v102);
        v108 = v102;
        v47 = v101;
        MEMORY[0x1E12CCD70](v108, -1, -1);
        MEMORY[0x1E12CCD70](v100, -1, -1);
      }

      else
      {

        sub_1DEE15388(v36, type metadata accessor for NetworkSyncHeader);
      }

      sub_1DEF25394(v45 + v47, 1);
    }

    sub_1DEE15388(v190, type metadata accessor for NetworkMessenger.PartialIncomingMessage);
    goto LABEL_10;
  }

  sub_1DEE171B4(v23, &qword_1ECDE4E38, &qword_1DEF95B20);
  if (qword_1ECDE2E50 != -1)
  {
LABEL_53:
    swift_once();
  }

  v48 = sub_1DEF8D508();
  __swift_project_value_buffer(v48, qword_1ECDF6010);
  sub_1DEE15068(v45, v33, type metadata accessor for NetworkSyncHeader);
  v49 = sub_1DEF8D4D8();
  v50 = sub_1DEF8DC98();
  if (os_log_type_enabled(v49, v50))
  {
    v51 = swift_slowAlloc();
    v52 = v47;
    v53 = swift_slowAlloc();
    aBlock = v53;
    *v51 = 136446210;
    v54 = *(v178 + 24);
    sub_1DEE1B9F8(&unk_1ECDE3620, MEMORY[0x1E69695A8]);
    v55 = sub_1DEF8E2E8();
    v57 = v56;
    sub_1DEE15388(v33, type metadata accessor for NetworkSyncHeader);
    v58 = sub_1DEE12A5C(v55, v57, &aBlock);

    *(v51 + 4) = v58;
    _os_log_impl(&dword_1DEE0F000, v49, v50, "Partial message does not exist for completed incoming file: %{public}s", v51, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v53);
    v59 = v53;
    v47 = v52;
    MEMORY[0x1E12CCD70](v59, -1, -1);
    MEMORY[0x1E12CCD70](v51, -1, -1);
  }

  else
  {

    sub_1DEE15388(v33, type metadata accessor for NetworkSyncHeader);
  }

  sub_1DEF25394(v45 + v47, 1);
LABEL_10:
  v66 = *MEMORY[0x1E69E9840];
}

uint64_t sub_1DEF27C24(void *a1, unint64_t a2, int a3, uint64_t a4, uint64_t a5, NSObject *a6, uint64_t a7, int a8, int a9)
{
  v193 = a8;
  v214 = a4;
  v215 = a2;
  v211 = a1;
  v205 = type metadata accessor for NetworkSyncHeader(0);
  v12 = *(*(v205 - 8) + 64);
  MEMORY[0x1EEE9AC00](v205);
  v14 = &v187 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1DEF8D168();
  v202 = *(v15 - 8);
  v203 = v15;
  v16 = *(v202 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v201 = &v187 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1DEF8D1E8();
  v212 = *(v18 - 8);
  v19 = v212[8];
  MEMORY[0x1EEE9AC00](v18);
  v197 = &v187 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v187 - v22;
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v187 - v25;
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v187 - v28;
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v187 - v31;
  v200 = sub_1DEF8D728();
  v199 = *(v200 - 8);
  v33 = *(v199 + 64);
  MEMORY[0x1EEE9AC00](v200);
  v198 = &v187 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v209 = sub_1DEF8D508();
  v204 = *(v209 - 1);
  v35 = v204[8];
  MEMORY[0x1EEE9AC00](v209);
  v194 = &v187 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  v213 = result;
  if (!result)
  {
    return result;
  }

  v188 = v29;
  v190 = v26;
  if (qword_1ECDE2E50 != -1)
  {
    swift_once();
  }

  v38 = __swift_project_value_buffer(v209, qword_1ECDF6010);
  swift_unknownObjectRetain();
  v39 = sub_1DEF8D4D8();
  v40 = sub_1DEF8DCB8();
  swift_unknownObjectRelease();
  v41 = os_log_type_enabled(v39, v40);
  v206 = v18;
  v207 = v32;
  v208 = a6;
  v210 = v38;
  v191 = v14;
  v189 = v23;
  v192 = a3;
  if (v41)
  {
    v42 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    v216 = v43;
    *v42 = 136446210;
    v218 = a6;
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4D60, &unk_1DEF95A78);
    v44 = sub_1DEF8D988();
    v46 = sub_1DEE12A5C(v44, v45, &v216);
    v38 = v210;

    *(v42 + 4) = v46;
    a6 = v208;
    _os_log_impl(&dword_1DEE0F000, v39, v40, "Received file data from: %{public}s", v42, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v43);
    MEMORY[0x1E12CCD70](v43, -1, -1);
    MEMORY[0x1E12CCD70](v42, -1, -1);
  }

  v47 = v211;
  v48 = v214;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v49 = v47;
  v50 = v215;
  swift_unknownObjectRetain();
  v51 = sub_1DEF8D4D8();
  v52 = sub_1DEF8DCB8();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  v53 = os_log_type_enabled(v51, v52);
  v195 = v49;
  if (v53)
  {
    v54 = swift_slowAlloc();
    v55 = swift_slowAlloc();
    v56 = swift_slowAlloc();
    v216 = v56;
    *v54 = 136447234;
    v218 = v208;
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4D60, &unk_1DEF95A78);
    v57 = sub_1DEF8D988();
    v59 = sub_1DEE12A5C(v57, v58, &v216);

    *(v54 + 4) = v59;
    *(v54 + 12) = 2112;
    *(v54 + 14) = v49;
    *v55 = v47;
    *(v54 + 22) = 2080;
    v218 = v215;
    v60 = v49;
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4E10, &qword_1DEF95B00);
    v61 = sub_1DEF8D988();
    v63 = sub_1DEE12A5C(v61, v62, &v216);

    *(v54 + 24) = v63;
    *(v54 + 32) = 1024;
    *(v54 + 34) = v192 & 1;
    *(v54 + 38) = 2080;
    v47 = v211;
    v218 = v214;
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4E18, &qword_1DEF95B08);
    v64 = sub_1DEF8D988();
    v66 = sub_1DEE12A5C(v64, v65, &v216);
    v50 = v215;

    *(v54 + 40) = v66;
    v48 = v214;
    _os_log_impl(&dword_1DEE0F000, v51, v52, "%{public}s; Parameters: content: %@, context: %s, isComplete: %{BOOL}d, error: %s", v54, 0x30u);
    sub_1DEE171B4(v55, &unk_1ECDE4880, &qword_1DEF93420);
    MEMORY[0x1E12CCD70](v55, -1, -1);
    swift_arrayDestroy();
    v67 = v56;
    v38 = v210;
    MEMORY[0x1E12CCD70](v67, -1, -1);
    v68 = v54;
    a6 = v208;
    MEMORY[0x1E12CCD70](v68, -1, -1);
  }

  if (v48)
  {
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    v69 = sub_1DEF8D4D8();
    v70 = sub_1DEF8DC98();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v69, v70))
    {
      v71 = swift_slowAlloc();
      v72 = swift_slowAlloc();
      v216 = v72;
      *v71 = 136446466;
      v218 = a6;
      swift_unknownObjectRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4D60, &unk_1DEF95A78);
      v73 = sub_1DEF8D988();
      v75 = v48;
      v76 = sub_1DEE12A5C(v73, v74, &v216);

      *(v71 + 4) = v76;
      *(v71 + 12) = 2082;
      v218 = v75;
      swift_unknownObjectRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4D98, &qword_1DEF95A98);
      v77 = sub_1DEF8D988();
      v79 = sub_1DEE12A5C(v77, v78, &v216);
      v50 = v215;

      *(v71 + 14) = v79;
      _os_log_impl(&dword_1DEE0F000, v69, v70, "%{public}s; Received error: %{public}s", v71, 0x16u);
      swift_arrayDestroy();
      v80 = v72;
      v38 = v210;
      MEMORY[0x1E12CCD70](v80, -1, -1);
      MEMORY[0x1E12CCD70](v71, -1, -1);

      swift_unknownObjectRelease();
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }

  v81 = v195;
  v196 = a7;
  if (!v50)
  {
LABEL_15:
    if (v47)
    {
      goto LABEL_16;
    }

LABEL_21:
    v117 = v194;
    (v204[2])(v194, v38, v209);
    if (sub_1DEF24560(a6))
    {
      v118 = sub_1DEF8DC98();
    }

    else
    {
      v118 = sub_1DEF8DC78();
    }

    v121 = v118;
    v122 = sub_1DEF8D4D8();
    if (os_log_type_enabled(v122, v121))
    {
      v123 = swift_slowAlloc();
      v124 = swift_slowAlloc();
      v216 = v124;
      *v123 = 136446210;
      v218 = a6;
      swift_unknownObjectRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4D60, &unk_1DEF95A78);
      v125 = sub_1DEF8D988();
      v127 = sub_1DEE12A5C(v125, v126, &v216);

      *(v123 + 4) = v127;
      _os_log_impl(&dword_1DEE0F000, v122, v121, "Received nil instead of file data; destroying connection %{public}s", v123, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v124);
      MEMORY[0x1E12CCD70](v124, -1, -1);
      MEMORY[0x1E12CCD70](v123, -1, -1);
    }

    (v204[1])(v117, v209);
    sub_1DEF16BA0(a6);
  }

  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v82 = sub_1DEF8D4D8();
  v83 = sub_1DEF8DCB8();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v82, v83))
  {
    v84 = swift_slowAlloc();
    v85 = swift_slowAlloc();
    v216 = v85;
    *v84 = 136446466;
    v218 = a6;
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4D60, &unk_1DEF95A78);
    v86 = sub_1DEF8D988();
    v88 = v81;
    v89 = sub_1DEE12A5C(v86, v87, &v216);

    *(v84 + 4) = v89;
    *(v84 + 12) = 2082;
    v218 = v50;
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4E08, &qword_1DEF95AF8);
    v90 = sub_1DEF8D988();
    v92 = sub_1DEE12A5C(v90, v91, &v216);

    *(v84 + 14) = v92;
    v81 = v88;
    _os_log_impl(&dword_1DEE0F000, v82, v83, "%{public}s; Received context: %{public}s", v84, 0x16u);
    swift_arrayDestroy();
    v93 = v85;
    v47 = v211;
    MEMORY[0x1E12CCD70](v93, -1, -1);
    MEMORY[0x1E12CCD70](v84, -1, -1);

    swift_unknownObjectRelease();
    goto LABEL_15;
  }

  swift_unknownObjectRelease();

  if (!v47)
  {
    goto LABEL_21;
  }

LABEL_16:
  v94 = v198;
  sub_1DEF8D6F8();
  v204 = v81;
  v95 = sub_1DEF8D718();
  v216 = sub_1DEE1C048(v95);
  v217 = v96;
  MEMORY[0x1EEE9AC00](v216);
  *(&v187 - 2) = v94;
  sub_1DEE1A238(sub_1DEF30734);
  v211 = 0;
  v97 = v216;
  v98 = v217;
  (*(v199 + 8))(v94, v200);
  v200 = *(v205 + 24);
  v99 = sub_1DEF8D398();
  v101 = v100;
  v216 = v99;
  v217 = v100;
  v103 = v202;
  v102 = v203;
  v104 = v201;
  (*(v202 + 104))(v201, *MEMORY[0x1E6968F70], v203);
  sub_1DEF2EB78();
  v105 = v97;
  sub_1DEF8D1D8();
  v106 = v104;
  v107 = v98;
  (*(v103 + 8))(v106, v102);

  sub_1DEE1BFF4(v97, v98);
  v108 = sub_1DEF8D4D8();
  v109 = sub_1DEF8DCB8();

  v110 = os_log_type_enabled(v108, v109);
  v214 = v97;
  if (v110)
  {
    v111 = swift_slowAlloc();
    v112 = swift_slowAlloc();
    v216 = v112;
    *v111 = 136446722;
    v113 = sub_1DEE12A5C(v99, v101, &v216);

    *(v111 + 4) = v113;
    *(v111 + 12) = 1026;
    *(v111 + 14) = v193;
    *(v111 + 18) = 2050;
    v114 = v107 >> 62;
    if ((v107 >> 62) > 1)
    {
      v115 = v207;
      if (v114 != 2)
      {
        v116 = 0;
        goto LABEL_35;
      }

      v129 = *(v97 + 16);
      v128 = *(v97 + 24);
      v130 = __OFSUB__(v128, v129);
      v116 = v128 - v129;
      if (!v130)
      {
        goto LABEL_35;
      }

      __break(1u);
    }

    else
    {
      v115 = v207;
      if (!v114)
      {
        v116 = BYTE6(v107);
LABEL_35:
        v119 = v197;
        *(v111 + 20) = v116;
        sub_1DEE1BFA0(v105, v107);
        _os_log_impl(&dword_1DEE0F000, v108, v109, "%{public}s: Expected %{public}u; got %{public}ld", v111, 0x1Cu);
        __swift_destroy_boxed_opaque_existential_1(v112);
        MEMORY[0x1E12CCD70](v112, -1, -1);
        MEMORY[0x1E12CCD70](v111, -1, -1);

        v120 = v206;
        goto LABEL_36;
      }
    }

    LODWORD(v116) = HIDWORD(v97) - v97;
    if (__OFSUB__(HIDWORD(v97), v97))
    {
LABEL_68:
      __break(1u);
      goto LABEL_69;
    }

    v116 = v116;
    goto LABEL_35;
  }

  v119 = v197;
  sub_1DEE1BFA0(v105, v98);

  v120 = v206;
  v115 = v207;
LABEL_36:
  v215 = v107;
  v131 = [objc_opt_self() defaultManager];
  sub_1DEF8D1C8();
  v132 = sub_1DEF8D918();

  v133 = [v131 fileExistsAtPath_];

  v134 = v212[2];
  v203 = v134;
  if (v133)
  {
    v135 = v188;
    v134(v188, v115, v120);
    v136 = sub_1DEF8D4D8();
    v137 = sub_1DEF8DCB8();
    if (os_log_type_enabled(v136, v137))
    {
      v138 = swift_slowAlloc();
      v139 = swift_slowAlloc();
      v216 = v139;
      *v138 = 136446210;
      v140 = sub_1DEF8D1C8();
      v142 = v141;
      v209 = v212[1];
      (v209)(v135, v206);
      v143 = sub_1DEE12A5C(v140, v142, &v216);
      v120 = v206;

      *(v138 + 4) = v143;
      _os_log_impl(&dword_1DEE0F000, v136, v137, "Appending chunk to %{public}s", v138, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v139);
      v144 = v139;
      v115 = v207;
      MEMORY[0x1E12CCD70](v144, -1, -1);
      MEMORY[0x1E12CCD70](v138, -1, -1);
    }

    else
    {

      v209 = v212[1];
      (v209)(v135, v120);
    }

    v155 = v196;
    sub_1DEEE1914();
    v156 = v190;
    v134(v190, v115, v120);
    v157 = v211;
    v158 = sub_1DEF291F4(v156, &selRef_fileHandleForUpdatingURL_error_);
    v159 = v215;
    if (!v157)
    {
      v160 = v158;
      sub_1DEF8DC68();
      v180 = sub_1DEF8D268();
      [v160 writeData_];

      goto LABEL_50;
    }
  }

  else
  {
    v145 = v189;
    v134(v189, v115, v120);
    v146 = sub_1DEF8D4D8();
    v147 = sub_1DEF8DCB8();
    if (os_log_type_enabled(v146, v147))
    {
      v148 = swift_slowAlloc();
      v149 = swift_slowAlloc();
      v216 = v149;
      *v148 = 136446210;
      v150 = sub_1DEF8D1C8();
      v152 = v151;
      v209 = v212[1];
      (v209)(v145, v206);
      v153 = sub_1DEE12A5C(v150, v152, &v216);
      v120 = v206;

      *(v148 + 4) = v153;
      _os_log_impl(&dword_1DEE0F000, v146, v147, "Creating new file at %{public}s", v148, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v149);
      v154 = v149;
      v115 = v207;
      MEMORY[0x1E12CCD70](v154, -1, -1);
      MEMORY[0x1E12CCD70](v148, -1, -1);
    }

    else
    {

      v209 = v212[1];
      (v209)(v145, v120);
    }

    v155 = v196;
    v159 = v215;
    v157 = v211;
    sub_1DEF8D298();
    if (!v157)
    {
LABEL_50:
      v181 = v208;
      result = sub_1DEE19808(v208);
      v182 = v159 >> 62;
      v183 = v209;
      if ((v159 >> 62) > 1)
      {
        if (v182 != 2)
        {
          goto LABEL_62;
        }

        v186 = *(v214 + 16);
        v185 = *(v214 + 24);
        v130 = __OFSUB__(v185, v186);
        v184 = v185 - v186;
        if (!v130)
        {
LABEL_59:
          if ((v184 & 0x8000000000000000) != 0)
          {
            __break(1u);
LABEL_67:
            __break(1u);
            goto LABEL_68;
          }

          if (!HIDWORD(v184))
          {
LABEL_63:
            if (!__CFADD__(a9, v184))
            {
              sub_1DEF26448(v181, v155, (a9 + v184));

              sub_1DEE1BFA0(v214, v159);

              return v183(v115, v120);
            }

            goto LABEL_67;
          }

          __break(1u);
LABEL_62:
          LODWORD(v184) = 0;
          goto LABEL_63;
        }

        __break(1u);
      }

      else if (!v182)
      {
        LODWORD(v184) = BYTE6(v159);
        goto LABEL_63;
      }

      LODWORD(v184) = HIDWORD(v214) - v214;
      if (__OFSUB__(HIDWORD(v214), v214))
      {
LABEL_69:
        __break(1u);
        return result;
      }

      v184 = v184;
      goto LABEL_59;
    }
  }

  v161 = v191;
  sub_1DEE15068(v155, v191, type metadata accessor for NetworkSyncHeader);
  v203(v119, v115, v120);
  v162 = sub_1DEF8D4D8();
  v163 = sub_1DEF8DC98();
  if (os_log_type_enabled(v162, v163))
  {
    v164 = swift_slowAlloc();
    v165 = swift_slowAlloc();
    v216 = v165;
    *v164 = 136446466;
    v166 = *(v205 + 24);
    sub_1DEF8D3F8();
    sub_1DEE1B9F8(&unk_1ECDE3620, MEMORY[0x1E69695A8]);
    v167 = sub_1DEF8E2E8();
    v169 = v168;
    sub_1DEE15388(v161, type metadata accessor for NetworkSyncHeader);
    v170 = sub_1DEE12A5C(v167, v169, &v216);

    *(v164 + 4) = v170;
    *(v164 + 12) = 2082;
    v171 = sub_1DEF8D1C8();
    v173 = v172;
    v174 = v119;
    v175 = v209;
    (v209)(v174, v206);
    v176 = sub_1DEE12A5C(v171, v173, &v216);
    v115 = v207;

    *(v164 + 14) = v176;
    _os_log_impl(&dword_1DEE0F000, v162, v163, "Can't write file chunk: %{public}s to %{public}s", v164, 0x16u);
    swift_arrayDestroy();
    v177 = v165;
    v120 = v206;
    MEMORY[0x1E12CCD70](v177, -1, -1);
    v178 = v164;
    v155 = v196;
    MEMORY[0x1E12CCD70](v178, -1, -1);
  }

  else
  {

    v179 = v119;
    v175 = v209;
    (v209)(v179, v120);
    sub_1DEE15388(v161, type metadata accessor for NetworkSyncHeader);
  }

  sub_1DEF25394(v155 + v200, 1);

  sub_1DEE1BFA0(v214, v215);

  return v175(v115, v120);
}

id sub_1DEF291F4(uint64_t a1, SEL *a2)
{
  v14[1] = *MEMORY[0x1E69E9840];
  v4 = sub_1DEF8D178();
  v14[0] = 0;
  v5 = [swift_getObjCClassFromMetadata() *a2];

  v6 = v14[0];
  if (v5)
  {
    v7 = sub_1DEF8D1E8();
    v8 = *(*(v7 - 8) + 8);
    v9 = v6;
    v8(a1, v7);
  }

  else
  {
    v10 = v14[0];
    sub_1DEF8D148();

    swift_willThrow();
    v11 = sub_1DEF8D1E8();
    (*(*(v11 - 8) + 8))(a1, v11);
  }

  v12 = *MEMORY[0x1E69E9840];
  return v5;
}

uint64_t sub_1DEF2934C(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4E38, &qword_1DEF95B20);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v29 - v6;
  v8 = sub_1DEF8D788();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = (&v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = *(v2 + 24);
  *v13 = v14;
  (*(v9 + 104))(v13, *MEMORY[0x1E69E8020], v8, v11);
  v15 = v14;
  LOBYTE(v14) = sub_1DEF8D7B8();
  result = (*(v9 + 8))(v13, v8);
  if (v14)
  {
    v17 = (a1 + *(type metadata accessor for Message() + 28));
    v19 = *v17;
    v18 = v17[1];
    swift_beginAccess();
    v20 = *(v2 + 72);
    if (*(v20 + 16) && (v21 = sub_1DEE13224(v19, v18), (v22 & 1) != 0))
    {
      v23 = *(*(v20 + 56) + 8 * v21);
      swift_endAccess();
      v31 = v23;
    }

    else
    {
      swift_endAccess();
      v31 = sub_1DEEA3900(MEMORY[0x1E69E7CC0]);
    }

    v24 = type metadata accessor for NetworkMessenger.PartialIncomingMessage(0);
    v25 = *(a1 + *(v24 + 24));
    sub_1DEE15068(a1, v7, type metadata accessor for NetworkMessenger.PartialIncomingMessage);
    (*(*(v24 - 8) + 56))(v7, 0, 1, v24);
    sub_1DEF33DA8(v7, v25);
    v26 = v31;
    swift_beginAccess();

    v27 = *(v2 + 72);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v30 = *(v2 + 72);
    *(v2 + 72) = 0x8000000000000000;
    sub_1DEF3F978(v26, v19, v18, isUniquelyReferenced_nonNull_native);

    *(v2 + 72) = v30;
    return swift_endAccess();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1DEF29614(void (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4D48, &qword_1DEF95A70);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v10 - v7;
  sub_1DEE17214(a3, &v10 - v7, &qword_1ECDE4E30, &qword_1DEF96220);
  swift_storeEnumTagMultiPayload();
  a1(v8);
  return sub_1DEE171B4(v8, &qword_1ECDE4D48, &qword_1DEF95A70);
}

uint64_t sub_1DEF296FC(uint64_t a1)
{
  v2 = v1;
  v80 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4DA0, &qword_1DEF95AA0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v71 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v76 = &v71 - v8;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4DA8, &qword_1DEF95AA8);
  v9 = *(v81 - 8);
  v10 = v9[8];
  MEMORY[0x1EEE9AC00](v81);
  v79 = &v71 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v82 = &v71 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v78 = &v71 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4DB0, &unk_1DEF95AB0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v75 = (&v71 - v18);
  v19 = sub_1DEF8D788();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  v22 = MEMORY[0x1EEE9AC00](v19);
  v24 = (&v71 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  v25 = *(v2 + 24);
  *v24 = v25;
  (*(v20 + 104))(v24, *MEMORY[0x1E69E8020], v19, v22);
  v26 = v25;
  LOBYTE(v25) = sub_1DEF8D7B8();
  (*(v20 + 8))(v24, v19);
  if ((v25 & 1) == 0)
  {
    goto LABEL_29;
  }

  if (qword_1ECDE2E50 != -1)
  {
    goto LABEL_30;
  }

  while (1)
  {
    v72 = v6;
    v73 = v9;
    v27 = sub_1DEF8D508();
    __swift_project_value_buffer(v27, qword_1ECDF6010);
    v28 = sub_1DEF8D4D8();
    v29 = sub_1DEF8DC88();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&dword_1DEE0F000, v28, v29, "Connection is ready", v30, 2u);
      MEMORY[0x1E12CCD70](v30, -1, -1);
    }

    swift_beginAccess();
    v74 = v2;
    v31 = *(v2 + 56);
    v32 = v31 + 64;
    v33 = 1 << *(v31 + 32);
    v34 = -1;
    if (v33 < 64)
    {
      v34 = ~(-1 << v33);
    }

    v35 = v34 & *(v31 + 64);
    v2 = (v33 + 63) >> 6;
    swift_bridgeObjectRetain_n();
    v36 = 0;
    v9 = &qword_1ECDE4DA8;
    v77 = v31;
    if (v35)
    {
      break;
    }

LABEL_9:
    while (1)
    {
      v38 = v36 + 1;
      if (__OFADD__(v36, 1))
      {
        break;
      }

      if (v38 >= v2)
      {

        v51 = v73;
        v52 = v73[7];
        v53 = v75;
        v54 = v75;
        v55 = 1;
        goto LABEL_17;
      }

      v35 = *(v32 + 8 * v38);
      ++v36;
      if (v35)
      {
        v37 = v82;
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    swift_once();
  }

  while (1)
  {
    v37 = v82;
    v38 = v36;
LABEL_13:
    v39 = __clz(__rbit64(v35)) | (v38 << 6);
    v40 = *(v31 + 56);
    v41 = (*(v31 + 48) + 16 * v39);
    v43 = *v41;
    v42 = v41[1];
    v44 = v40 + *(*(type metadata accessor for NetworkMessenger.ExpiringConnection(0) - 8) + 72) * v39;
    v45 = v81;
    v46 = v78;
    sub_1DEE15068(v44, &v78[*(v81 + 48)], type metadata accessor for NetworkMessenger.ExpiringConnection);
    *v46 = v43;
    v46[1] = v42;
    sub_1DEE1BA88(v46, v37, &qword_1ECDE4DA8, &qword_1DEF95AA8);
    v47 = v37;
    v48 = v79;
    sub_1DEE17214(v47, v79, &qword_1ECDE4DA8, &qword_1DEF95AA8);
    v6 = *(v48 + 8);

    v49 = *(v45 + 48);
    v50 = *(v48 + v49);
    swift_unknownObjectRetain();
    sub_1DEE15388(v48 + v49, type metadata accessor for NetworkMessenger.ExpiringConnection);
    swift_unknownObjectRelease();
    if (v50 == v80)
    {
      break;
    }

    v35 &= v35 - 1;
    sub_1DEE171B4(v82, &qword_1ECDE4DA8, &qword_1DEF95AA8);
    v36 = v38;
    v31 = v77;
    if (!v35)
    {
      goto LABEL_9;
    }
  }

  v53 = v75;
  sub_1DEE1BA88(v82, v75, &qword_1ECDE4DA8, &qword_1DEF95AA8);
  v51 = v73;
  v52 = v73[7];
  v54 = v53;
  v55 = 0;
LABEL_17:
  v56 = v81;
  v52(v54, v55, 1, v81);

  v57 = (v51[6])(v53, 1, v56);
  v58 = v76;
  if (v57 == 1)
  {
    sub_1DEE171B4(v53, &qword_1ECDE4DB0, &unk_1DEF95AB0);
  }

  else
  {
    v59 = *v53;
    v60 = v53[1];
    sub_1DEE15388(v53 + *(v56 + 48), type metadata accessor for NetworkMessenger.ExpiringConnection);
    v61 = v74;
    swift_beginAccess();
    v62 = *(v61 + 56);
    if (*(v62 + 16) && (v63 = sub_1DEE13224(v59, v60), (v64 & 1) != 0))
    {
      v65 = v63;
      v66 = *(v62 + 56);
      v67 = type metadata accessor for NetworkMessenger.ExpiringConnection(0);
      v68 = *(v67 - 8);
      sub_1DEE15068(v66 + *(v68 + 72) * v65, v58, type metadata accessor for NetworkMessenger.ExpiringConnection);
      (*(v68 + 56))(v58, 0, 1, v67);
    }

    else
    {
      v67 = type metadata accessor for NetworkMessenger.ExpiringConnection(0);
      (*(*(v67 - 8) + 56))(v58, 1, 1, v67);
    }

    swift_endAccess();
    type metadata accessor for NetworkMessenger.ExpiringConnection(0);
    if (!(*(*(v67 - 8) + 48))(v58, 1, v67))
    {
      *(v58 + *(v67 + 24)) = 1;
    }

    v69 = v72;
    sub_1DEE17214(v58, v72, &qword_1ECDE4DA0, &qword_1DEF95AA0);
    swift_beginAccess();
    sub_1DEE136B8(v69, v59, v60);
    swift_endAccess();
    sub_1DEE171B4(v58, &qword_1ECDE4DA0, &qword_1DEF95AA0);
  }

  sub_1DEE165E0();
  return sub_1DEE1BAF0();
}

uint64_t sub_1DEF29EEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v22[1] = a4;
  v6 = sub_1DEF8D378();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = v22 - v13;
  v15 = *(v7 + 32);
  v15(v22 - v13, a1, v6, v12);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4DA8, &qword_1DEF95AA8);
  sub_1DEF2A0B0(a2 + *(v16 + 48));
  sub_1DEE1B9F8(&qword_1ECDE4DE0, MEMORY[0x1E6969530]);
  v17 = sub_1DEF8D8E8();
  v18 = (v17 & 1) == 0;
  if (v17)
  {
    v19 = v14;
  }

  else
  {
    v19 = v10;
  }

  if (v18)
  {
    v20 = v14;
  }

  else
  {
    v20 = v10;
  }

  (*(v7 + 8))(v19, v6);
  return (v15)(a1, v20, v6);
}

uint64_t sub_1DEF2A0B0(uint64_t a1)
{
  v2 = type metadata accessor for NetworkMessenger.ExpiringConnection(0);
  if (*(a1 + *(v2 + 24)) == 1)
  {
    v3 = sub_1DEF2F2C0();
    if (qword_1ECDE2E50 != -1)
    {
      swift_once();
    }

    v4 = sub_1DEF8D508();
    __swift_project_value_buffer(v4, qword_1ECDF6010);
    v5 = sub_1DEF8D4D8();
    v6 = sub_1DEF8DC88();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 134349056;
      *(v7 + 4) = v3;
      v8 = "Idle; expiring in %{public}f";
LABEL_10:
      _os_log_impl(&dword_1DEE0F000, v5, v6, v8, v7, 0xCu);
      MEMORY[0x1E12CCD70](v7, -1, -1);
    }
  }

  else
  {
    v9 = sub_1DEF2F3D8();
    if (qword_1ECDE2E50 != -1)
    {
      swift_once();
    }

    v10 = sub_1DEF8D508();
    __swift_project_value_buffer(v10, qword_1ECDF6010);
    v5 = sub_1DEF8D4D8();
    v6 = sub_1DEF8DC88();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 134349056;
      *(v7 + 4) = v9;
      v8 = "Connecting; expiring in %{public}f";
      goto LABEL_10;
    }
  }

  v11 = a1 + *(v2 + 20);
  return sub_1DEF8D2E8();
}

unint64_t sub_1DEF2A288()
{
  v1 = sub_1DEF8D788();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x1EEE9AC00](v1);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = v0;
  v7 = *(v0 + 24);
  *v6 = v7;
  (*(v2 + 104))(v6, *MEMORY[0x1E69E8020], v1, v4);
  v8 = v7;
  LOBYTE(v7) = sub_1DEF8D7B8();
  (*(v2 + 8))(v6, v1);
  if (v7)
  {
    result = sub_1DEF2A5BC();
    v6 = result;
    if (!(result >> 62))
    {
      v11 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v11)
      {
        goto LABEL_4;
      }
    }
  }

  else
  {
    __break(1u);
  }

  result = sub_1DEF8DE68();
  v11 = result;
  if (!result)
  {
  }

LABEL_4:
  if (v11 >= 1)
  {
    v12 = 0;
    v13 = v6 & 0xC000000000000001;
    v14 = 0x1ECDE2000uLL;
    v15 = qword_1ECDF6010;
    *&v10 = 136446210;
    v29 = v10;
    v30 = v6 & 0xC000000000000001;
    do
    {
      if (v13)
      {
        v16 = MEMORY[0x1E12CB6E0](v12, v6);
      }

      else
      {
        v16 = *(v6 + 8 * v12 + 32);
        swift_unknownObjectRetain();
      }

      if (*(v14 + 3664) != -1)
      {
        swift_once();
      }

      v17 = sub_1DEF8D508();
      __swift_project_value_buffer(v17, v15);
      swift_unknownObjectRetain();
      v18 = sub_1DEF8D4D8();
      v19 = sub_1DEF8DCB8();
      swift_unknownObjectRelease();
      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        v31 = swift_slowAlloc();
        v33 = v16;
        v34 = v31;
        *v20 = v29;
        swift_unknownObjectRetain();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4D60, &unk_1DEF95A78);
        v21 = sub_1DEF8D988();
        v23 = v15;
        v24 = v6;
        v25 = v11;
        v26 = sub_1DEE12A5C(v21, v22, &v34);
        v13 = v30;

        *(v20 + 4) = v26;
        v11 = v25;
        v6 = v24;
        v15 = v23;
        _os_log_impl(&dword_1DEE0F000, v18, v19, "Destroying expired connection: %{public}s", v20, 0xCu);
        v27 = v31;
        __swift_destroy_boxed_opaque_existential_1(v31);
        MEMORY[0x1E12CCD70](v27, -1, -1);
        v28 = v20;
        v14 = 0x1ECDE2000;
        MEMORY[0x1E12CCD70](v28, -1, -1);
      }

      ++v12;
      sub_1DEF16BA0(v16);
      swift_unknownObjectRelease();
    }

    while (v11 != v12);
  }

  __break(1u);
  return result;
}

uint64_t sub_1DEF2A5BC()
{
  v1 = v0;
  v2 = *v0;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4DA8, &qword_1DEF95AA8);
  v3 = *(*(v73 - 8) + 64);
  MEMORY[0x1EEE9AC00](v73);
  v72 = &v63 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v71 = (&v63 - v6);
  MEMORY[0x1EEE9AC00](v7);
  v70 = &v63 - v8;
  v9 = sub_1DEF8D378();
  v64 = *(v9 - 8);
  v65 = v9;
  v10 = *(v64 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v63 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1DEF8D788();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x1EEE9AC00](v13);
  v18 = (&v63 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = v1[3];
  *v18 = v19;
  (*(v14 + 104))(v18, *MEMORY[0x1E69E8020], v13, v16);
  v20 = v19;
  v21 = sub_1DEF8D7B8();
  result = (*(v14 + 8))(v18, v13);
  if ((v21 & 1) == 0)
  {
LABEL_26:
    __break(1u);
    return result;
  }

  sub_1DEF8D348();
  v23 = *(v1 + OBJC_IVAR____TtC16ReplicatorEngine16NetworkMessenger_nearbyCompanionSubscriber + 24);
  v24 = *(v1 + OBJC_IVAR____TtC16ReplicatorEngine16NetworkMessenger_nearbyCompanionSubscriber + 32);
  __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC16ReplicatorEngine16NetworkMessenger_nearbyCompanionSubscriber), v23);
  v25 = (*(v24 + 8))(v23, v24);
  v26 = swift_beginAccess();
  v27 = v1[7];
  MEMORY[0x1EEE9AC00](v26);
  *(&v63 - 32) = v25 & 1;
  *(&v63 - 3) = v12;
  *(&v63 - 2) = v2;

  v28 = sub_1DEF2BCB0(sub_1DEF2F860, (&v63 - 6), v27, sub_1DEF2C314, sub_1DEF2C314);

  v29 = *(v28 + 16);
  if (v29)
  {
    v76 = MEMORY[0x1E69E7CC0];
    sub_1DEF8DFD8();
    v30 = v28 + 64;
    v31 = -1 << *(v28 + 32);
    result = sub_1DEF8DE18();
    v32 = result;
    v33 = 0;
    v66 = v28 + 72;
    v67 = v29;
    v68 = v12;
    v69 = v28 + 64;
    while ((v32 & 0x8000000000000000) == 0 && v32 < 1 << *(v28 + 32))
    {
      v36 = v32 >> 6;
      if ((*(v30 + 8 * (v32 >> 6)) & (1 << v32)) == 0)
      {
        goto LABEL_22;
      }

      v37 = *(v28 + 36);
      v74 = v33;
      v75 = v37;
      v38 = v28;
      v39 = v73;
      v40 = *(v73 + 48);
      v41 = *(v38 + 56);
      v42 = (*(v38 + 48) + 16 * v32);
      v44 = *v42;
      v43 = v42[1];
      v45 = type metadata accessor for NetworkMessenger.ExpiringConnection(0);
      v46 = v70;
      sub_1DEE15068(v41 + *(*(v45 - 8) + 72) * v32, &v70[v40], type metadata accessor for NetworkMessenger.ExpiringConnection);
      v47 = v71;
      *v71 = v44;
      *(v47 + 8) = v43;
      sub_1DEE1C4F0(&v46[v40], v47 + *(v39 + 48), type metadata accessor for NetworkMessenger.ExpiringConnection);
      v48 = v72;
      sub_1DEE1BA88(v47, v72, &qword_1ECDE4DA8, &qword_1DEF95AA8);
      v49 = *(v48 + 8);

      v50 = *(v39 + 48);
      v28 = v38;
      v51 = *(v48 + v50);
      swift_unknownObjectRetain();
      sub_1DEE15388(v48 + v50, type metadata accessor for NetworkMessenger.ExpiringConnection);
      sub_1DEF8DFB8();
      v52 = *(v76 + 16);
      sub_1DEF8DFE8();
      sub_1DEF8DFF8();
      result = sub_1DEF8DFC8();
      v34 = 1 << *(v38 + 32);
      if (v32 >= v34)
      {
        goto LABEL_23;
      }

      v30 = v69;
      v53 = *(v69 + 8 * v36);
      if ((v53 & (1 << v32)) == 0)
      {
        goto LABEL_24;
      }

      if (v75 != *(v38 + 36))
      {
        goto LABEL_25;
      }

      v54 = v53 & (-2 << (v32 & 0x3F));
      if (v54)
      {
        v34 = __clz(__rbit64(v54)) | v32 & 0x7FFFFFFFFFFFFFC0;
        v35 = v67;
        v12 = v68;
      }

      else
      {
        v55 = v36 << 6;
        v56 = v36 + 1;
        v35 = v67;
        v57 = (v66 + 8 * v36);
        v12 = v68;
        while (v56 < (v34 + 63) >> 6)
        {
          v59 = *v57++;
          v58 = v59;
          v55 += 64;
          ++v56;
          if (v59)
          {
            result = sub_1DEE2F804(v32, v75, 0);
            v34 = __clz(__rbit64(v58)) + v55;
            goto LABEL_5;
          }
        }

        result = sub_1DEE2F804(v32, v75, 0);
      }

LABEL_5:
      v33 = v74 + 1;
      v32 = v34;
      if (v74 + 1 == v35)
      {

        v60 = v76;
        goto LABEL_20;
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
    goto LABEL_26;
  }

  v60 = MEMORY[0x1E69E7CC0];
LABEL_20:
  v61 = v65;
  v62 = sub_1DEF13870(v60);
  (*(v64 + 8))(v12, v61);
  return v62;
}

BOOL sub_1DEF2ABD4(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v20[1] = a4;
  v6 = sub_1DEF8D378();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4DA8, &qword_1DEF95AA8);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = (v20 - v13);
  v15 = *a1;
  v16 = a1[1];
  *v14 = v15;
  v14[1] = v16;
  v18 = *(v17 + 56);
  sub_1DEE15068(a2, v14 + v18, type metadata accessor for NetworkMessenger.ExpiringConnection);

  sub_1DEF2A0B0(v14 + v18);
  sub_1DEE1B9F8(&qword_1ECDE4DE0, MEMORY[0x1E6969530]);
  LOBYTE(a2) = sub_1DEF8D8E8();
  (*(v7 + 8))(v10, v6);
  sub_1DEE171B4(v14, &qword_1ECDE4DA8, &qword_1DEF95AA8);
  return (a2 & 1) == 0;
}

void sub_1DEF2ADC4(void *a1, void *a2)
{
  v4 = sub_1DEF8D788();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = (&v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = a2[3];
  *v9 = v10;
  (*(v5 + 104))(v9, *MEMORY[0x1E69E8020], v4, v7);
  v11 = v10;
  LOBYTE(v10) = sub_1DEF8D7B8();
  (*(v5 + 8))(v9, v4);
  if ((v10 & 1) == 0)
  {
    __break(1u);
LABEL_11:
    swift_once();
    goto LABEL_4;
  }

  if (!xpc_dictionary_get_string(a1, *MEMORY[0x1E69E9E40]))
  {
    return;
  }

  if (qword_1ECDE2E50 != -1)
  {
    goto LABEL_11;
  }

LABEL_4:
  v12 = sub_1DEF8D508();
  __swift_project_value_buffer(v12, qword_1ECDF6010);
  v13 = sub_1DEF8D4D8();
  v14 = sub_1DEF8DCB8();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v22 = v16;
    *v15 = 136446210;
    v17 = sub_1DEF8D9E8();
    v19 = sub_1DEE12A5C(v17, v18, &v22);

    *(v15 + 4) = v19;
    _os_log_impl(&dword_1DEE0F000, v13, v14, "Wake event received [rapport]: %{public}s", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v16);
    MEMORY[0x1E12CCD70](v16, -1, -1);
    MEMORY[0x1E12CCD70](v15, -1, -1);
  }

  if (a2[5])
  {
    sub_1DEF2EEE4(a1);
  }

  else
  {
    v20 = a2[6];
    a2[6] = a1;
    swift_unknownObjectRelease();
    swift_unknownObjectRetain();
  }
}

void sub_1DEF2B030(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (qword_1ECDE2E58 != -1)
  {
    swift_once();
  }

  v5 = sub_1DEF8D508();
  __swift_project_value_buffer(v5, qword_1ECDF6028);

  oslog = sub_1DEF8D4D8();
  v6 = sub_1DEF8DCB8();

  if (os_log_type_enabled(oslog, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v10 = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_1DEE12A5C(a2, a3, &v10);
    _os_log_impl(&dword_1DEE0F000, oslog, v6, "received notification %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v8);
    MEMORY[0x1E12CCD70](v8, -1, -1);
    MEMORY[0x1E12CCD70](v7, -1, -1);
  }
}

uint64_t sub_1DEF2B188()
{
  v1 = *(type metadata accessor for Message() - 8);
  v2 = (*(v1 + 80) + 40) & ~*(v1 + 80);
  v3 = v2 + *(v1 + 64);
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4890, &qword_1DEF90990) - 8);
  v5 = (v3 + *(v4 + 80)) & ~*(v4 + 80);
  v6 = v5 + *(v4 + 64);
  return sub_1DEF1A22C(v0[2], v0[3], v0[4], v0 + v2, v0 + v5, *(v0 + v6), *(v0 + (v6 & 0xFFFFFFFFFFFFFFF8) + 8), *(v0 + (v6 & 0xFFFFFFFFFFFFFFF8) + 16), *(v0 + (v6 & 0xFFFFFFFFFFFFFFF8) + 24), *(v0 + (v6 & 0xFFFFFFFFFFFFFFF8) + 32));
}

void *sub_1DEF2B2A4(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE42A0, &unk_1DEF95E40);
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

size_t sub_1DEF2B378(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void))
{
  if (a2 <= a1)
  {
    v5 = a1;
  }

  else
  {
    v5 = a2;
  }

  if (!v5)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v8 = *(a5(0) - 8);
  v9 = *(v8 + 72);
  v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v11 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v11);
  if (v9)
  {
    if (result - v10 != 0x8000000000000000 || v9 != -1)
    {
      v11[2] = a1;
      v11[3] = 2 * ((result - v10) / v9);
      return v11;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

size_t sub_1DEF2B474(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4EC0, &unk_1DEF91EA0);
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4350, &qword_1DEF93400) - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v7);
  if (v5)
  {
    if (result - v6 != 0x8000000000000000 || v5 != -1)
    {
      v7[2] = a1;
      v7[3] = 2 * ((result - v6) / v5);
      return v7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_1DEF2B57C(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3D90, &qword_1DEF916A8);
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

uint64_t sub_1DEF2B604(void *a1)
{
  v3 = *(type metadata accessor for Message() - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4890, &qword_1DEF90990) - 8);
  v7 = (v5 + *(v6 + 80) + 8) & ~*(v6 + 80);
  v8 = v7 + *(v6 + 64);
  return sub_1DEF1AB9C(a1, *(v1 + 16), *(v1 + 24), v1 + v4, *(v1 + v5), v1 + v7, *(v1 + v8), *(v1 + (v8 & 0xFFFFFFFFFFFFFFF8) + 8), *(v1 + (v8 & 0xFFFFFFFFFFFFFFF8) + 24), *(v1 + (v8 & 0xFFFFFFFFFFFFFFF8) + 16), *(v1 + (v8 & 0xFFFFFFFFFFFFFFF8) + 32));
}

uint64_t sub_1DEF2B744()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

void *sub_1DEF2B76C(void *(*a1)(uint64_t *__return_ptr, char *, char *))
{
  v3 = v1;
  v22[2] = *MEMORY[0x1E69E9840];
  v6 = *v1;
  v5 = v1[1];
  v7 = v5 >> 62;
  if ((v5 >> 62) <= 1)
  {
    if (!v7)
    {
      sub_1DEE1BFA0(v6, v5);
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

    sub_1DEE1BFA0(v6, v5);
    *v3 = xmmword_1DEF95880;
    sub_1DEE1BFA0(0, 0xC000000000000000);
    v12 = v6 >> 32;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      if (v12 < v6)
      {
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      if (sub_1DEF8D018() && __OFSUB__(v6, sub_1DEF8D048()))
      {
LABEL_26:
        __break(1u);
      }

      v13 = sub_1DEF8D068();
      v14 = *(v13 + 48);
      v15 = *(v13 + 52);
      swift_allocObject();
      v16 = sub_1DEF8CFF8();

      v11 = v16;
    }

    if (v12 >= v6)
    {

      v17 = sub_1DEF2BB10(v6, v6 >> 32, a1);

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

    sub_1DEE1BFA0(v6, v5);
    v20 = v6;
    v21 = v5 & 0x3FFFFFFFFFFFFFFFLL;
    *v3 = xmmword_1DEF95880;
    sub_1DEE1BFA0(0, 0xC000000000000000);
    sub_1DEF8D1F8();
    result = sub_1DEF2BB10(v20[2], v20[3], a1);
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
  v18 = *MEMORY[0x1E69E9840];
  return result;
}

char *sub_1DEF2BB10(uint64_t a1, uint64_t a2, void *(*a3)(uint64_t *__return_ptr, char *, char *))
{
  result = sub_1DEF8D018();
  if (!result)
  {
    goto LABEL_12;
  }

  v8 = result;
  result = sub_1DEF8D048();
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

  v12 = sub_1DEF8D038();
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

uint64_t sub_1DEF2BBC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *MEMORY[0x1E69E9840];
  result = sub_1DEF2BCB0(a1, a2, a3, sub_1DEF2BE40, sub_1DEF2BE40);
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1DEF2BC3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *MEMORY[0x1E69E9840];
  result = sub_1DEF2BCB0(a1, a2, a3, sub_1DEF2C180, sub_1DEF2C180);
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1DEF2BCB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *, unint64_t, uint64_t, uint64_t, uint64_t), uint64_t (*a5)(void *, uint64_t, uint64_t))
{
  v9 = a1;
  v19[1] = *MEMORY[0x1E69E9840];
  v10 = *(a3 + 32);
  v11 = ((1 << v10) + 63) >> 6;
  if ((v10 & 0x3Fu) <= 0xD)
  {
LABEL_2:
    MEMORY[0x1EEE9AC00](a1);
    v13 = v19 - ((v12 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v13, v12);
    result = a4(v13, v11, a3, v9, a2);
    if (v5)
    {
      result = swift_willThrow();
    }

    goto LABEL_4;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

    goto LABEL_2;
  }

  v17 = swift_slowAlloc();
  v18 = sub_1DEF2C554(v17, v11, a3, v9, a2, a5);
  result = MEMORY[0x1E12CCD70](v17, -1, -1);
  if (!v5)
  {
    result = v18;
  }

LABEL_4:
  v15 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1DEF2BE40(unint64_t *a1, uint64_t a2, void *a3, uint64_t (*a4)(char *, uint64_t))
{
  v42 = a4;
  v34 = a2;
  v35 = a1;
  v5 = type metadata accessor for PairingRelationship();
  v41 = *(v5 - 8);
  v6 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v40 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1DEF8D3F8();
  v9 = *(*(v8 - 8) + 64);
  v11.n128_f64[0] = MEMORY[0x1EEE9AC00](v8);
  v43 = a3;
  v44 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = 0;
  v16 = a3[8];
  v15 = a3 + 8;
  v14 = v16;
  v17 = 1 << *(v15 - 32);
  v18 = -1;
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  v19 = v18 & v14;
  v20 = (v17 + 63) >> 6;
  v38 = v10 + 16;
  v39 = v10;
  v36 = 0;
  v37 = (v10 + 8);
  while (v19)
  {
    v45 = (v19 - 1) & v19;
    v21 = __clz(__rbit64(v19)) | (v13 << 6);
    v22 = v44;
LABEL_11:
    v25 = v43;
    (*(v39 + 16))(v22, v43[6] + *(v39 + 72) * v21, v8, v11);
    v26 = v21;
    v27 = v25[7] + *(v41 + 72) * v21;
    v28 = v8;
    v29 = v40;
    sub_1DEE15068(v27, v40, type metadata accessor for PairingRelationship);
    v30 = v46;
    v31 = v42(v22, v29);
    v46 = v30;
    if (v30)
    {
      sub_1DEE15388(v29, type metadata accessor for PairingRelationship);
      (*v37)(v22, v28);
      return;
    }

    v32 = v31;
    sub_1DEE15388(v29, type metadata accessor for PairingRelationship);
    (*v37)(v22, v28);
    v8 = v28;
    v19 = v45;
    if (v32)
    {
      *(v35 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
      if (__OFADD__(v36++, 1))
      {
        __break(1u);
LABEL_16:
        sub_1DEEC6068(v35, v34, v36, v43);
        return;
      }
    }
  }

  v23 = v13;
  v22 = v44;
  while (1)
  {
    v13 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      break;
    }

    if (v13 >= v20)
    {
      goto LABEL_16;
    }

    v24 = v15[v13];
    ++v23;
    if (v24)
    {
      v45 = (v24 - 1) & v24;
      v21 = __clz(__rbit64(v24)) | (v13 << 6);
      goto LABEL_11;
    }
  }

  __break(1u);
}

uint64_t sub_1DEF2C180(uint64_t result, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t *, uint64_t *))
{
  v21 = 0;
  v20 = result;
  v5 = 0;
  v6 = a3 + 64;
  v7 = 1 << *(a3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a3 + 64);
  v10 = (v7 + 63) >> 6;
  while (v9)
  {
    v11 = __clz(__rbit64(v9));
    v24 = (v9 - 1) & v9;
LABEL_11:
    v14 = v11 | (v5 << 6);
    v15 = *(a3 + 56);
    v26 = *(*(a3 + 48) + 8 * v14);
    v16 = v14;
    v25 = *(v15 + 8 * v14);

    v17 = a4(&v26, &v25);

    if (v4)
    {
      return result;
    }

    v9 = v24;
    if (v17)
    {
      *(v20 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      if (__OFADD__(v21++, 1))
      {
        __break(1u);
        return sub_1DEEC64F8(v20, a2, v21, a3);
      }
    }
  }

  v12 = v5;
  while (1)
  {
    v5 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v5 >= v10)
    {
      return sub_1DEEC64F8(v20, a2, v21, a3);
    }

    v13 = *(v6 + 8 * v5);
    ++v12;
    if (v13)
    {
      v11 = __clz(__rbit64(v13));
      v24 = (v13 - 1) & v13;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

void sub_1DEF2C314(unint64_t *a1, uint64_t a2, void *a3, uint64_t (*a4)(void *, uint64_t))
{
  v33 = a4;
  v28 = a2;
  v29 = a1;
  v5 = type metadata accessor for NetworkMessenger.ExpiringConnection(0);
  v32 = *(v5 - 8);
  v6 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v30 = 0;
  v31 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = 0;
  v34 = a3;
  v11 = a3[8];
  v10 = a3 + 8;
  v9 = v11;
  v12 = 1 << *(v10 - 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & v9;
  v15 = (v12 + 63) >> 6;
  while (v14)
  {
    v16 = __clz(__rbit64(v14));
    v35 = (v14 - 1) & v14;
LABEL_11:
    v19 = v16 | (v8 << 6);
    v20 = v34[7];
    v21 = (v34[6] + 16 * v19);
    v22 = v21[1];
    v36[0] = *v21;
    v36[1] = v22;
    v23 = v31;
    v24 = v19;
    sub_1DEE15068(v20 + *(v32 + 72) * v19, v31, type metadata accessor for NetworkMessenger.ExpiringConnection);

    v25 = v37;
    v26 = v33(v36, v23);
    sub_1DEE15388(v23, type metadata accessor for NetworkMessenger.ExpiringConnection);

    v37 = v25;
    if (v25)
    {
      return;
    }

    v14 = v35;
    if (v26)
    {
      *(v29 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
      if (__OFADD__(v30++, 1))
      {
        __break(1u);
LABEL_16:
        sub_1DEEC7A14(v29, v28, v30, v34);
        return;
      }
    }
  }

  v17 = v8;
  while (1)
  {
    v8 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v8 >= v15)
    {
      goto LABEL_16;
    }

    v18 = v10[v8];
    ++v17;
    if (v18)
    {
      v16 = __clz(__rbit64(v18));
      v35 = (v18 - 1) & v18;
      goto LABEL_11;
    }
  }

  __break(1u);
}

void *sub_1DEF2C554(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void *, uint64_t, uint64_t))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v8 = result;
      v9 = a2;
      bzero(result, 8 * a2);
      result = v8;
      a2 = v9;
    }

    v10 = a6(result, a2, a3);

    return v10;
  }

  return result;
}

uint64_t sub_1DEF2C5F4(uint64_t a1, unint64_t a2, NSObject *a3, uint64_t a4, NSObject *a5, uint64_t a6, uint64_t a7)
{
  v56 = *MEMORY[0x1E69E9840];
  v15 = sub_1DEF8D728();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v42 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = a2 >> 62;
  v48 = v21;
  if ((a2 >> 62) <= 1)
  {
    v47 = v7;
    if (!v20)
    {
      v49[0] = a1;
      LOWORD(v49[1]) = a2;
      BYTE2(v49[1]) = BYTE2(a2);
      BYTE3(v49[1]) = BYTE3(a2);
      BYTE4(v49[1]) = BYTE4(a2);
      BYTE5(v49[1]) = BYTE5(a2);
      v22 = v17;
      swift_unknownObjectRetain();

      sub_1DEE2CB00(a6);
      swift_unknownObjectRetain();

      sub_1DEE2CB00(a6);
      sub_1DEF8D708();
      v23 = v19;
      v24 = sub_1DEF8D6E8();
      v46 = *MEMORY[0x1E6977E88];
      v25 = swift_allocObject();
      v25[2] = a4;
      v25[3] = a3;
      v25[4] = a5;
      v25[5] = a6;
      v25[6] = a7;
      v54 = sub_1DEF30804;
      v55 = v25;
      aBlock = MEMORY[0x1E69E9820];
      v51 = 1107296256;
      v52 = sub_1DEE11B94;
      v53 = &block_descriptor_188;
      v26 = _Block_copy(&aBlock);
      swift_unknownObjectRetain();

      sub_1DEE2CB00(a6);

      nw_connection_send(a3, v24, v46, 1, v26);
      _Block_release(v26);

      (v22[1].isa)(v23, v48);
LABEL_15:

      swift_unknownObjectRelease();
      sub_1DEE3DBD0(a6);
      goto LABEL_16;
    }

    v45 = a5;
    if (a1 >> 32 >= a1)
    {
      v44 = v19;
      v46 = v17;
      swift_unknownObjectRetain();

      sub_1DEE2CB00(a6);
      swift_unknownObjectRetain();

      sub_1DEE2CB00(a6);
      swift_unknownObjectRetain();

      sub_1DEE2CB00(a6);
      if (!sub_1DEF8D018() || !__OFSUB__(a1, sub_1DEF8D048()))
      {
        sub_1DEF8D038();
        v29 = v44;
        sub_1DEF8D708();
        v30 = sub_1DEF8D6E8();
        v31 = *MEMORY[0x1E6977E88];
        v34 = swift_allocObject();
        v34[2] = a4;
        v34[3] = a3;
        v34[4] = v45;
        v34[5] = a6;
        v34[6] = a7;
        v54 = sub_1DEF30804;
        v55 = v34;
        aBlock = MEMORY[0x1E69E9820];
        v51 = 1107296256;
        v33 = &block_descriptor_181;
        goto LABEL_13;
      }

LABEL_20:
      __break(1u);
    }

    __break(1u);
    goto LABEL_18;
  }

  v46 = v17;
  if (v20 != 2)
  {
    memset(v49, 0, 14);
    swift_unknownObjectRetain();

    sub_1DEE2CB00(a6);
    swift_unknownObjectRetain();

    sub_1DEE2CB00(a6);
    sub_1DEF8D708();
    v36 = sub_1DEF8D6E8();
    v45 = *MEMORY[0x1E6977E88];
    v37 = swift_allocObject();
    v37[2] = a4;
    v37[3] = a3;
    v37[4] = a5;
    v37[5] = a6;
    v37[6] = a7;
    v54 = sub_1DEF30804;
    v55 = v37;
    aBlock = MEMORY[0x1E69E9820];
    v51 = 1107296256;
    v52 = sub_1DEE11B94;
    v53 = &block_descriptor_195;
    v38 = v19;
    v39 = _Block_copy(&aBlock);
    swift_unknownObjectRetain();

    sub_1DEE2CB00(a6);

    nw_connection_send(a3, v36, v45, 1, v39);
    _Block_release(v39);

    (v46[1].isa)(v38, v48);
    goto LABEL_15;
  }

  v44 = v19;
  v45 = a5;
  v27 = *(a1 + 16);
  v43 = *(a1 + 24);
  swift_unknownObjectRetain();

  sub_1DEE2CB00(a6);
  swift_unknownObjectRetain();

  sub_1DEE2CB00(a6);
  swift_unknownObjectRetain();

  sub_1DEE2CB00(a6);
  v28 = sub_1DEF8D018();
  v47 = v7;
  if (v28 && __OFSUB__(v27, sub_1DEF8D048()))
  {
    goto LABEL_19;
  }

  if (__OFSUB__(v43, v27))
  {
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  sub_1DEF8D038();
  v29 = v44;
  sub_1DEF8D708();
  v30 = sub_1DEF8D6E8();
  v31 = *MEMORY[0x1E6977E88];
  v32 = swift_allocObject();
  v32[2] = a4;
  v32[3] = a3;
  v32[4] = v45;
  v32[5] = a6;
  v32[6] = a7;
  v54 = sub_1DEF2ECE0;
  v55 = v32;
  aBlock = MEMORY[0x1E69E9820];
  v51 = 1107296256;
  v33 = &block_descriptor_174;
LABEL_13:
  v52 = sub_1DEE11B94;
  v53 = v33;
  v35 = _Block_copy(&aBlock);
  swift_unknownObjectRetain();

  sub_1DEE2CB00(a6);

  nw_connection_send(a3, v30, v31, 1, v35);
  _Block_release(v35);

  (v46[1].isa)(v29, v48);

  swift_unknownObjectRelease();
  sub_1DEE3DBD0(a6);

  swift_unknownObjectRelease();
  sub_1DEE3DBD0(a6);
LABEL_16:

  swift_unknownObjectRelease();
  sub_1DEE3DBD0(a6);

  swift_unknownObjectRelease();
  result = sub_1DEE3DBD0(a6);
  v41 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1DEF2CE0C(uint64_t a1, unint64_t a2, int a3)
{
  v4 = v3;
  v8 = *v3;
  result = swift_isUniquelyReferenced_nonNull_native();
  v10 = *v3;
  if ((result & 1) == 0)
  {
    result = sub_1DEEB9F20();
    *v4 = v10;
  }

  if ((a2 & 0x8000000000000000) != 0 || 1 << *(v10 + 32) <= a2)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (((*(v10 + 8 * (a2 >> 6) + 64) >> a2) & 1) == 0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (*(v10 + 36) == a3)
  {
    v11 = *(v10 + 56);
    v12 = (*(v10 + 48) + 16 * a2);
    v13 = *v12;
    v14 = v12[1];
    v15 = type metadata accessor for NetworkMessenger.ExpiringConnection(0);
    sub_1DEE1C4F0(v11 + *(*(v15 - 8) + 72) * a2, a1, type metadata accessor for NetworkMessenger.ExpiringConnection);
    sub_1DEF776FC(a2, v10);
    *v4 = v10;
    return v13;
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t (*sub_1DEF2CF20(uint64_t (*result)(uint64_t *a1), unint64_t a2, uint64_t a3))(uint64_t *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v5 = MEMORY[0x1E12CB6E0](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
    v5 = swift_unknownObjectRetain();
LABEL_5:
    *v3 = v5;
    return sub_1DEF2CFA0;
  }

  __break(1u);
  return result;
}

uint64_t sub_1DEF2CFA8(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1DEF8DE68();
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
      result = sub_1DEF8DE68();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1DEE1B548(&unk_1ECDE4DD0, &qword_1ECDE4DC8, &unk_1DEF95AC0);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4DC8, &unk_1DEF95AC0);
            v9 = sub_1DEF2CF20(v13, i, a3);
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
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4D60, &unk_1DEF95A78);
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

void sub_1DEF2D158(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v41 = sub_1DEF8D3F8();
  v43 = *(v41 - 8);
  v8 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v41);
  v42 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11.n128_f64[0] = MEMORY[0x1EEE9AC00](v10);
  v40 = &v34 - v12;
  v13 = a4 + 56;
  v14 = -1 << *(a4 + 32);
  if (-v14 < 64)
  {
    v15 = ~(-1 << -v14);
  }

  else
  {
    v15 = -1;
  }

  v16 = v15 & *(a4 + 56);
  if (!a2)
  {
LABEL_19:
    v32 = 0;
LABEL_25:
    *a1 = a4;
    *(a1 + 8) = v13;
    *(a1 + 16) = ~v14;
    *(a1 + 24) = v32;
    *(a1 + 32) = v16;
    return;
  }

  if (!a3)
  {
    v32 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v34 = -1 << *(a4 + 32);
    v35 = a1;
    v17 = 0;
    v18 = (63 - v14) >> 6;
    v36 = v43 + 32;
    v37 = v43 + 16;
    a1 = 1;
    v38 = a4 + 56;
    v39 = a3;
    v19 = v40;
    while (v16)
    {
      v45 = a2;
LABEL_15:
      v22 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
      v44 = v17;
      v23 = a4;
      v24 = *(a4 + 48);
      v25 = v42;
      v26 = v43;
      v27 = *(v43 + 72);
      v28 = v41;
      (*(v43 + 16))(v42, v24 + v27 * (v22 | (v17 << 6)), v41, v11);
      v29 = *(v26 + 32);
      v29(v19, v25, v28);
      v30 = v45;
      v29(v45, v19, v28);
      if (a1 == v39)
      {
        v14 = v34;
        a1 = v35;
        a4 = v23;
        v32 = v44;
        v13 = v38;
        goto LABEL_25;
      }

      a2 = &v30[v27];
      v31 = __OFADD__(a1++, 1);
      a4 = v23;
      v17 = v44;
      v13 = v38;
      if (v31)
      {
        __break(1u);
        goto LABEL_19;
      }
    }

    v20 = v17;
    while (1)
    {
      v21 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v21 >= v18)
      {
        break;
      }

      v16 = *(v13 + 8 * v21);
      ++v20;
      if (v16)
      {
        v45 = a2;
        v17 = v21;
        goto LABEL_15;
      }
    }

    v16 = 0;
    if (v18 <= v17 + 1)
    {
      v33 = v17 + 1;
    }

    else
    {
      v33 = v18;
    }

    v32 = v33 - 1;
    v14 = v34;
    a1 = v35;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
}

void sub_1DEF2D3FC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for PairingRelationship();
  v33 = *(v8 - 8);
  v9 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v32 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v31 = &v28 - v12;
  v13 = a4 + 64;
  v14 = -1 << *(a4 + 32);
  if (-v14 < 64)
  {
    v15 = ~(-1 << -v14);
  }

  else
  {
    v15 = -1;
  }

  v16 = v15 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v17 = 0;
LABEL_25:
    *a1 = a4;
    a1[1] = v13;
    a1[2] = ~v14;
    a1[3] = v17;
    a1[4] = v16;
    return;
  }

  if (!a3)
  {
    v17 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v29 = a1;
    v30 = a3;
    v17 = 0;
    v28 = v14;
    v18 = (63 - v14) >> 6;
    v19 = 1;
    while (v16)
    {
LABEL_14:
      v22 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
      v23 = v32;
      a1 = *(v33 + 72);
      sub_1DEE15068(*(a4 + 56) + a1 * (v22 | (v17 << 6)), v32, type metadata accessor for PairingRelationship);
      v24 = v23;
      v25 = v31;
      sub_1DEE1C4F0(v24, v31, type metadata accessor for PairingRelationship);
      sub_1DEE1C4F0(v25, a2, type metadata accessor for PairingRelationship);
      if (v19 == v30)
      {
        a1 = v29;
        goto LABEL_23;
      }

      a2 += a1;
      if (__OFADD__(v19++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v20 = v17;
    while (1)
    {
      v21 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v21 >= v18)
      {
        break;
      }

      v16 = *(v13 + 8 * v21);
      ++v20;
      if (v16)
      {
        v17 = v21;
        goto LABEL_14;
      }
    }

    v16 = 0;
    if (v18 <= v17 + 1)
    {
      v27 = v17 + 1;
    }

    else
    {
      v27 = v18;
    }

    v17 = v27 - 1;
    a1 = v29;
LABEL_23:
    v14 = v28;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
}

uint64_t sub_1DEF2D660(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_1DEF8D7E8();
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](v8);
  (*(v12 + 16))(v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v3, v8, v10);
  sub_1DEE1B9F8(qword_1ED785FC0, MEMORY[0x1E69663E0]);
  sub_1DEF8DA18();
  v13 = *(v3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4108, &unk_1DEF95370) + 36));
  result = sub_1DEE171B4(v4, &qword_1ECDE4108, &unk_1DEF95370);
  v15 = v23[0];
  v16 = v23[1];
  if (!a2)
  {
    v19 = v13;
    v13 = 0;
    goto LABEL_17;
  }

  if (!a3)
  {
    v19 = v13;
    v13 = 0;
    goto LABEL_17;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    if (v13)
    {
      v17 = 0;
      v18 = v13 - a3;
      v19 = v13 - 1;
      while (1)
      {
        v20 = v17;
        v21 = v16 + v17;
        v22 = *(v15 + 16);
        if (v21 == v22)
        {
          v16 = v21;
          v13 = v20;
          goto LABEL_17;
        }

        if (v21 >= v22)
        {
          break;
        }

        *(a2 + v20) = *(v16 + v15 + 32 + v20);
        if (a3 - 1 == v20)
        {
          v13 = a3;
          goto LABEL_16;
        }

        v17 = v20 + 1;
        --v19;
        if (v13 == v20 + 1)
        {
          v18 = 0;
LABEL_16:
          v16 += v20 + 1;
          v19 = v18;
          goto LABEL_17;
        }
      }

      __break(1u);
      goto LABEL_19;
    }

    v19 = 0;
LABEL_17:
    *a1 = v15;
    a1[1] = v16;
    a1[2] = v19;
    return v13;
  }

LABEL_19:
  __break(1u);
  return result;
}

void sub_1DEF2D874(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4350, &qword_1DEF93400);
  v38 = *(v40 - 8);
  v8 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v40);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v39 = (&v34 - v12);
  v41 = a4;
  v15 = *(a4 + 64);
  v14 = a4 + 64;
  v13 = v15;
  v16 = -1 << *(v14 - 32);
  if (-v16 < 64)
  {
    v17 = ~(-1 << -v16);
  }

  else
  {
    v17 = -1;
  }

  v18 = v17 & v13;
  if (!a2)
  {
LABEL_18:
    v25 = 0;
LABEL_25:
    *a1 = v41;
    a1[1] = v14;
    a1[2] = ~v16;
    a1[3] = v25;
    a1[4] = v18;
    return;
  }

  if (!a3)
  {
    v25 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v35 = -1 << *(v14 - 32);
    v36 = a1;
    v19 = 0;
    v20 = (63 - v16) >> 6;
    v21 = 1;
    v37 = a3;
    while (v18)
    {
LABEL_14:
      v24 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
      v25 = v19;
      v26 = v24 | (v19 << 6);
      v27 = v41;
      v28 = *(v41 + 48);
      v29 = sub_1DEF8D3F8();
      (*(*(v29 - 8) + 16))(v10, v28 + *(*(v29 - 8) + 72) * v26, v29);
      v30 = *(v27 + 56);
      v31 = type metadata accessor for PairingRelationship();
      sub_1DEE15068(v30 + *(*(v31 - 8) + 72) * v26, &v10[*(v40 + 48)], type metadata accessor for PairingRelationship);
      a1 = v39;
      sub_1DEE1BA88(v10, v39, &unk_1ECDE4350, &qword_1DEF93400);
      sub_1DEE1BA88(a1, a2, &unk_1ECDE4350, &qword_1DEF93400);
      if (v21 == v37)
      {
        goto LABEL_23;
      }

      a2 += *(v38 + 72);
      v32 = __OFADD__(v21++, 1);
      v19 = v25;
      if (v32)
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v22 = v19;
    while (1)
    {
      v23 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v23 >= v20)
      {
        break;
      }

      v18 = *(v14 + 8 * v23);
      ++v22;
      if (v18)
      {
        v19 = v23;
        goto LABEL_14;
      }
    }

    v18 = 0;
    if (v20 <= v19 + 1)
    {
      v33 = v19 + 1;
    }

    else
    {
      v33 = v20;
    }

    v25 = v33 - 1;
LABEL_23:
    v16 = v35;
    a1 = v36;
    goto LABEL_25;
  }

LABEL_27:
  __break(1u);
}

uint64_t sub_1DEF2DBDC(uint64_t result, uint64_t *a2, void (*a3)(void), uint64_t a4, void (*a5)(void), unint64_t *a6, void (*a7)(uint64_t))
{
  v8 = a4;
  v10 = result;
  if ((a4 & 0xC000000000000001) == 0)
  {
LABEL_21:
    v15 = 0;
    v25 = -1 << *(v8 + 32);
    v13 = v8 + 56;
    v14 = ~v25;
    v26 = -v25;
    if (v26 < 64)
    {
      v27 = ~(-1 << v26);
    }

    else
    {
      v27 = -1;
    }

    v16 = v27 & *(v8 + 56);
    v17 = a3;
    if (a2)
    {
      goto LABEL_3;
    }

LABEL_25:
    a5 = 0;
    goto LABEL_32;
  }

  sub_1DEF8DE58();
  a5(0);
  sub_1DEE1B9F8(a6, a7);
  result = sub_1DEF8DC18();
  v8 = v33;
  v13 = v34;
  v14 = v35;
  v15 = v36;
  v16 = v37;
  v17 = a3;
  if (!a2)
  {
    goto LABEL_25;
  }

LABEL_3:
  if (!v17)
  {
    a5 = 0;
    goto LABEL_32;
  }

  if ((v17 & 0x8000000000000000) != 0)
  {
LABEL_35:
    __break(1u);
    return result;
  }

  v29 = v14;
  v30 = a5;
  a5 = 0;
  v18 = (v14 + 64) >> 6;
  v19 = 1;
  while (1)
  {
    if (v8 < 0)
    {
      if (!sub_1DEF8DE88())
      {
        goto LABEL_30;
      }

      v30(0);
      swift_dynamicCast();
      result = v32;
      v17 = a3;
      if (!v32)
      {
        goto LABEL_30;
      }

      goto LABEL_17;
    }

    v20 = v15;
    if (!v16)
    {
      break;
    }

    v21 = v15;
LABEL_13:
    v22 = __clz(__rbit64(v16));
    v16 &= v16 - 1;
    v23 = *(*(v8 + 48) + ((v21 << 9) | (8 * v22)));

    if (!result)
    {
      goto LABEL_30;
    }

LABEL_17:
    *a2 = result;
    if (v19 == v17)
    {
      a5 = v17;
      goto LABEL_30;
    }

    ++a2;
    a5 = v19;
    if (__OFADD__(v19++, 1))
    {
      __break(1u);
      goto LABEL_21;
    }
  }

  while (1)
  {
    v21 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      __break(1u);
      goto LABEL_35;
    }

    if (v21 >= v18)
    {
      break;
    }

    v16 = *(v13 + 8 * v21);
    ++v20;
    if (v16)
    {
      v15 = v21;
      goto LABEL_13;
    }
  }

  v16 = 0;
  if (v18 <= v15 + 1)
  {
    v28 = v15 + 1;
  }

  else
  {
    v28 = v18;
  }

  v15 = v28 - 1;
LABEL_30:
  v14 = v29;
LABEL_32:
  *v10 = v8;
  v10[1] = v13;
  v10[2] = v14;
  v10[3] = v15;
  v10[4] = v16;
  return a5;
}

void *sub_1DEF2DE0C(void *result, void *a2, uint64_t a3, uint64_t a4)
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

        goto LABEL_24;
      }

      v11 += 2;

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

void *sub_1DEF2DF64(void *result, void *a2, uint64_t a3, uint64_t a4)
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
      *v11 = *(*(a4 + 48) + ((v12 << 9) | (8 * v17)));
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      ++v11;

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
      v19 = v12 + 1;
    }

    else
    {
      v19 = (63 - v7) >> 6;
    }

    v12 = v19 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void sub_1DEF2E0B8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for PairingRelationship();
  v33 = *(v8 - 8);
  v9 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v32 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v31 = &v28 - v12;
  v13 = a4 + 56;
  v14 = -1 << *(a4 + 32);
  if (-v14 < 64)
  {
    v15 = ~(-1 << -v14);
  }

  else
  {
    v15 = -1;
  }

  v16 = v15 & *(a4 + 56);
  if (!a2)
  {
LABEL_18:
    v17 = 0;
LABEL_25:
    *a1 = a4;
    a1[1] = v13;
    a1[2] = ~v14;
    a1[3] = v17;
    a1[4] = v16;
    return;
  }

  if (!a3)
  {
    v17 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v29 = a1;
    v30 = a3;
    v17 = 0;
    v28 = v14;
    v18 = (63 - v14) >> 6;
    v19 = 1;
    while (v16)
    {
LABEL_14:
      v22 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
      v23 = v32;
      a1 = *(v33 + 72);
      sub_1DEE15068(*(a4 + 48) + a1 * (v22 | (v17 << 6)), v32, type metadata accessor for PairingRelationship);
      v24 = v23;
      v25 = v31;
      sub_1DEE1C4F0(v24, v31, type metadata accessor for PairingRelationship);
      sub_1DEE1C4F0(v25, a2, type metadata accessor for PairingRelationship);
      if (v19 == v30)
      {
        a1 = v29;
        goto LABEL_23;
      }

      a2 += a1;
      if (__OFADD__(v19++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v20 = v17;
    while (1)
    {
      v21 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v21 >= v18)
      {
        break;
      }

      v16 = *(v13 + 8 * v21);
      ++v20;
      if (v16)
      {
        v17 = v21;
        goto LABEL_14;
      }
    }

    v16 = 0;
    if (v18 <= v17 + 1)
    {
      v27 = v17 + 1;
    }

    else
    {
      v27 = v18;
    }

    v17 = v27 - 1;
    a1 = v29;
LABEL_23:
    v14 = v28;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
}

void *sub_1DEF2E31C(void *result, void *a2, uint64_t a3, uint64_t a4)
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

        goto LABEL_24;
      }

      v11 += 2;

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

void *sub_1DEF2E474(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4E50, &qword_1DEF95B38);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v11 - v6;
  v8 = a1[4];
  v9 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DEF301A8();
  sub_1DEF8E848();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4E60, &qword_1DEF95B40);
    sub_1DEF30468(&unk_1ECDE4E68, sub_1DEE1E77C);
    sub_1DEF8E1F8();
    (*(v4 + 8))(v7, v3);
    v9 = v11[1];
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return v9;
}

uint64_t sub_1DEF2E630(void *a1, char a2)
{
  v5 = *(sub_1DEF8D3F8() - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = *(v2 + 16);
  v8 = v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
  v9 = *v8;
  v10 = *(v8 + 8);

  return sub_1DEF1B838(a1, a2 & 1, v7, v2 + v6, v9, v10);
}

uint64_t objectdestroy_32Tm()
{
  v1 = sub_1DEF8D3F8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);
  v7 = *(v0 + v5 + 8);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 16, v3 | 7);
}

uint64_t sub_1DEF2E7C0()
{
  v1 = *(sub_1DEF8D3F8() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  v4 = v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8);
  v5 = *v4;
  v6 = *(v4 + 8);

  return sub_1DEF1BEB0(v3, v0 + v2, v5, v6);
}

uint64_t sub_1DEF2E854()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

unint64_t sub_1DEF2E884()
{
  result = qword_1ECDE4D50;
  if (!qword_1ECDE4D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE4D50);
  }

  return result;
}

uint64_t sub_1DEF2E8D8(void *a1, char a2)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4890, &qword_1DEF90990) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v2 + v7);
  v9 = (v2 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8));
  v10 = *v9;
  v11 = v9[1];

  return sub_1DEF1CEBC(a1, a2 & 1, v2 + v6, v8, v10, v11);
}

uint64_t sub_1DEF2E9E0(int *a1, int a2, uint64_t a3)
{
  v7 = *(sub_1DEF8D1E8() - 8);
  v8 = *(v7 + 80);
  v9 = (v8 + 32) & ~v8;
  v10 = *(v7 + 64);
  v11 = *(sub_1DEF8D3F8() - 8);
  v12 = *(v11 + 80);
  v13 = (v9 + v10 + v12) & ~v12;
  v14 = *(v11 + 64);
  v15 = (v14 + v12 + v13) & ~v12;
  v16 = v15 + v14;
  v17 = ((v16 & 0xFFFFFFFFFFFFFFFCLL) + 11) & 0xFFFFFFFFFFFFFFFCLL;
  v18 = (v17 + 11) & 0xFFFFFFFFFFFFFFF8;
  v19 = (v18 + 15) & 0xFFFFFFFFFFFFFFF8;
  v20 = (v19 + 23) & 0xFFFFFFFFFFFFFFF8;
  return sub_1DEF21530(a1, a2, a3, *(v3 + 16), *(v3 + 24), (v3 + v9), v3 + v13, (v3 + v15), *(v3 + v16), *(v3 + (v16 & 0xFFFFFFFFFFFFFFFCLL) + 4), *(v3 + v17), *(v3 + v18), *(v3 + v19), *(v3 + v19 + 8), *(v3 + v20), v3 + ((v8 + v20 + 8) & ~v8), *(v3 + ((v8 + v20 + 8) & ~v8) + v10)) & 1;
}

unint64_t sub_1DEF2EB78()
{
  result = qword_1ECDE4D78;
  if (!qword_1ECDE4D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE4D78);
  }

  return result;
}

uint64_t sub_1DEF2EBCC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1(1, 0);
}

unint64_t sub_1DEF2EC1C()
{
  result = qword_1ECDE4D88;
  if (!qword_1ECDE4D88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE4D88);
  }

  return result;
}

uint64_t objectdestroy_170Tm_0()
{
  v1 = v0[2];

  v2 = v0[3];
  swift_unknownObjectRelease();
  if (v0[5])
  {
    v3 = v0[6];
  }

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

unint64_t sub_1DEF2ED44()
{
  result = qword_1ECDE4D90;
  if (!qword_1ECDE4D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE4D90);
  }

  return result;
}

uint64_t sub_1DEF2ED98(unsigned __int8 *a1)
{
  v1 = *a1;
  application_service_quic = nw_parameters_create_application_service_quic();
  if (application_service_quic)
  {
    v3 = application_service_quic;
    nw_parameters_set_prohibit_expensive(application_service_quic, 1);
    nw_parameters_set_prohibit_constrained(v3, 1);
    nw_parameters_set_include_peer_to_peer(v3, 1);
    swift_unknownObjectRetain();
    nw_parameters_set_attach_protocol_listener();
    if (v1)
    {
      empty = xpc_array_create_empty();
      v5 = sub_1DEF8D518();
      xpc_array_set_string(empty, v5, "com.apple.networkrelay");
      v6 = xpc_array_create_empty();
      v7 = sub_1DEF8D518();
      xpc_array_set_string(v6, v7, "ASListener");
      nw_parameters_set_required_netagent_classes();
      nw_parameters_set_local_only(v3, 0);
      nw_parameters_set_traffic_class();
      nw_parameters_set_multipath_service(v3, nw_multipath_service_disabled);
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
    }

    swift_unknownObjectRelease();
    return v3;
  }

  else
  {
    result = sub_1DEF8E0F8();
    __break(1u);
  }

  return result;
}

void sub_1DEF2EEE4(void *a1)
{
  if (xpc_dictionary_get_string(a1, *MEMORY[0x1E69E9E40]) && xpc_dictionary_get_BOOL(a1, "replyRequired"))
  {
    if (xpc_dictionary_create_reply(a1))
    {
      xpc_dictionary_send_reply();

      swift_unknownObjectRelease();
    }

    else
    {
      if (qword_1ECDE2E50 != -1)
      {
        swift_once();
      }

      v2 = sub_1DEF8D508();
      __swift_project_value_buffer(v2, qword_1ECDF6010);
      oslog = sub_1DEF8D4D8();
      v3 = sub_1DEF8DCB8();
      if (os_log_type_enabled(oslog, v3))
      {
        v4 = swift_slowAlloc();
        v5 = swift_slowAlloc();
        v10 = v5;
        *v4 = 136446210;
        v6 = sub_1DEF8D9E8();
        v8 = sub_1DEE12A5C(v6, v7, &v10);

        *(v4 + 4) = v8;
        _os_log_impl(&dword_1DEE0F000, oslog, v3, "Failed to reply to wake event [rapport]: %{public}s", v4, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v5);
        MEMORY[0x1E12CCD70](v5, -1, -1);
        MEMORY[0x1E12CCD70](v4, -1, -1);
      }

      else
      {
      }
    }
  }
}

uint64_t sub_1DEF2F0C4(char *a1)
{
  v1 = *a1;
  application_service_quic = nw_parameters_create_application_service_quic();
  if (application_service_quic)
  {
    v3 = application_service_quic;
    nw_parameters_set_prohibit_expensive(application_service_quic, 1);
    nw_parameters_set_prohibit_constrained(v3, 1);
    nw_parameters_set_include_peer_to_peer(v3, 1);
    if (v1)
    {
      empty = xpc_array_create_empty();
      v5 = sub_1DEF8D518();
      xpc_array_set_string(empty, v5, "com.apple.networkrelay");
      v6 = xpc_array_create_empty();
      v7 = sub_1DEF8D518();
      xpc_array_set_string(v6, v7, "ASResolver");
      swift_unknownObjectRetain();
      nw_parameters_set_preferred_netagent_classes();
      nw_parameters_set_traffic_class();
      swift_unknownObjectRelease();
      nw_parameters_set_multipath_service(v3, nw_multipath_service_disabled);
    }

    else
    {
      v8 = xpc_array_create(0, 0);
      v9 = sub_1DEF8D518();
      v10 = sub_1DEF8D998();
      xpc_array_set_string(v8, v9, (v10 + 32));

      v11 = xpc_array_create(0, 0);
      v12 = sub_1DEF8D518();
      v13 = sub_1DEF8D998();
      xpc_array_set_string(v11, v12, (v13 + 32));

      nw_parameters_set_preferred_netagent_classes();
    }

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    return v3;
  }

  else
  {
    result = sub_1DEF8E0F8();
    __break(1u);
  }

  return result;
}

double sub_1DEF2F2C0()
{
  v0 = [objc_opt_self() standardUserDefaults];
  v1 = sub_1DEF8D918();
  v2 = [v0 valueForKey_];

  if (v2)
  {
    sub_1DEF8DDE8();
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = 0u;
    v6 = 0u;
  }

  v7[0] = v5;
  v7[1] = v6;
  if (*(&v6 + 1))
  {
    if (swift_dynamicCast())
    {
      return v4;
    }
  }

  else
  {
    sub_1DEE171B4(v7, &qword_1ECDE4DB8, qword_1DEF9AD50);
  }

  return 30.0;
}

double sub_1DEF2F3D8()
{
  v0 = [objc_opt_self() standardUserDefaults];
  v1 = sub_1DEF8D918();
  v2 = [v0 valueForKey_];

  if (v2)
  {
    sub_1DEF8DDE8();
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = 0u;
    v6 = 0u;
  }

  v7[0] = v5;
  v7[1] = v6;
  if (*(&v6 + 1))
  {
    if (swift_dynamicCast())
    {
      return v4;
    }
  }

  else
  {
    sub_1DEE171B4(v7, &qword_1ECDE4DB8, qword_1DEF9AD50);
  }

  return 30.0;
}

uint64_t sub_1DEF2F4F0(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t), uint64_t a3)
{
  v36 = a3;
  v38 = a2;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4DA8, &qword_1DEF95AA8);
  v4 = *(*(v37 - 8) + 64);
  MEMORY[0x1EEE9AC00](v37);
  v35 = (&v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v6);
  v34 = &v31 - v7;
  v8 = a1 + 64;
  v9 = -1 << *(a1 + 32);
  result = sub_1DEF8DE18();
  v11 = 1 << *(a1 + 32);
  if (result == v11)
  {
    return 0;
  }

  else
  {
    v12 = result;
    v32 = a1 + 72;
    v33 = a1 + 64;
    while ((v12 & 0x8000000000000000) == 0 && v12 < v11)
    {
      if ((*(v8 + 8 * (v12 >> 6)) & (1 << v12)) == 0)
      {
        goto LABEL_21;
      }

      v39 = 1 << v12;
      v40 = v12 >> 6;
      v41 = *(a1 + 36);
      v14 = v37;
      v15 = *(v37 + 48);
      v16 = *(a1 + 56);
      v17 = (*(a1 + 48) + 16 * v12);
      v19 = *v17;
      v18 = v17[1];
      v20 = type metadata accessor for NetworkMessenger.ExpiringConnection(0);
      v21 = v34;
      sub_1DEE15068(v16 + *(*(v20 - 8) + 72) * v12, &v34[v15], type metadata accessor for NetworkMessenger.ExpiringConnection);
      v22 = v35;
      *v35 = v19;
      *(v22 + 8) = v18;
      v23 = *(v14 + 48);
      sub_1DEE1C4F0(&v21[v15], v22 + v23, type metadata accessor for NetworkMessenger.ExpiringConnection);

      LOBYTE(v14) = v38(v19, v18, v22 + v23);
      result = sub_1DEE171B4(v22, &qword_1ECDE4DA8, &qword_1DEF95AA8);
      if (v14)
      {
        return v12;
      }

      v13 = 1 << *(a1 + 32);
      if (v12 >= v13)
      {
        goto LABEL_22;
      }

      v8 = v33;
      v24 = *(v33 + 8 * v40);
      if ((v24 & v39) == 0)
      {
        goto LABEL_23;
      }

      if (v41 != *(a1 + 36))
      {
        goto LABEL_24;
      }

      v25 = v24 & (-2 << (v12 & 0x3F));
      if (v25)
      {
        v13 = __clz(__rbit64(v25)) | v12 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v26 = v40 << 6;
        v27 = v40 + 1;
        v28 = (v32 + 8 * v40);
        while (v27 < (v13 + 63) >> 6)
        {
          v30 = *v28++;
          v29 = v30;
          v26 += 64;
          ++v27;
          if (v30)
          {
            result = sub_1DEE2F804(v12, v41, 0);
            v13 = __clz(__rbit64(v29)) + v26;
            goto LABEL_5;
          }
        }

        result = sub_1DEE2F804(v12, v41, 0);
      }

LABEL_5:
      v11 = 1 << *(a1 + 32);
      v12 = v13;
      if (v13 == v11)
      {
        return 0;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
  }

  return result;
}

uint64_t sub_1DEF2F7F8()
{
  v0 = sub_1DEF2A288();

  return sub_1DEE165E0(v0);
}

uint64_t sub_1DEF2F83C(uint64_t result, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_1DEE2F804(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_1DEF2F854(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t objectdestroy_62Tm()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1DEF2F8EC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1(0);
}

uint64_t objectdestroy_29Tm()
{
  v1 = type metadata accessor for Message();
  v24 = *(*(v1 - 1) + 80);
  v2 = (v24 + 24) & ~v24;
  v3 = v2 + *(*(v1 - 1) + 64);
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4890, &qword_1DEF90990) - 8);
  v5 = *(v4 + 80);
  v21 = (v3 + v5) & ~v5;
  v23 = *(v4 + 64);
  v6 = sub_1DEF8D3F8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v22 = *(v7 + 64);
  v9 = *(v0 + 16);

  v10 = v0 + v2;
  v11 = *(v7 + 8);
  v11(v10, v6);
  v12 = v1[5];
  if (!(*(v7 + 48))(v10 + v12, 1, v6))
  {
    v11(v10 + v12, v6);
  }

  v13 = *(v10 + v1[6] + 8);

  v14 = *(v10 + v1[7] + 8);

  sub_1DEE1BFA0(*(v10 + v1[9]), *(v10 + v1[9] + 8));
  v15 = sub_1DEF8D1E8();
  v16 = *(v15 - 8);
  if (!(*(v16 + 48))(v0 + v21, 1, v15))
  {
    (*(v16 + 8))(v0 + v21, v15);
  }

  v17 = (v21 + v23) & 0xFFFFFFFFFFFFFFF8;
  v18 = (v17 + v8 + 17) & ~v8;
  v19 = *(v0 + v17 + 8);
  swift_unknownObjectRelease();
  v11(v0 + v18, v6);

  return MEMORY[0x1EEE6BDD0](v0, ((v22 + v18 + 7) & 0xFFFFFFFFFFFFFFF8) + 16, v24 | v5 | v8 | 7);
}

uint64_t sub_1DEF2FBF4(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for Message() - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = v6 + *(v5 + 64);
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4890, &qword_1DEF90990) - 8);
  v9 = (v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = v9 + *(v8 + 64);
  v11 = *(sub_1DEF8D3F8() - 8);
  v12 = ((v10 & 0xFFFFFFFFFFFFFFF8) + *(v11 + 80) + 17) & ~*(v11 + 80);
  v13 = v2 + ((*(v11 + 64) + v12 + 7) & 0xFFFFFFFFFFFFFFF8);
  v15 = *(v13 + 8);
  return sub_1DEF1B108(a1, a2, *(v2 + 16), (v2 + v6), v2 + v9, *(v2 + v10), *(v2 + (v10 & 0xFFFFFFFFFFFFFFF8) + 8), *(v2 + (v10 & 0xFFFFFFFFFFFFFFF8) + 16), *v13, v2 + v12);
}

uint64_t sub_1DEF2FD98(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for Message() - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = v6 + *(v5 + 64);
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4890, &qword_1DEF90990) - 8);
  v9 = (v7 + *(v8 + 80)) & ~*(v8 + 80);
  return sub_1DEF17844(a1, a2, v2[2], v2[3], v2[4], v2 + v6, v2 + v9, *(v2 + v9 + *(v8 + 64)), *(v2 + ((v9 + *(v8 + 64)) & 0xFFFFFFFFFFFFFFF8) + 8), *(v2 + ((v9 + *(v8 + 64)) & 0xFFFFFFFFFFFFFFF8) + 16));
}

void sub_1DEF2FEC8(void *a1)
{
  v3 = *(type metadata accessor for Message() - 8);
  v4 = (*(v3 + 80) + 56) & ~*(v3 + 80);
  v5 = v4 + *(v3 + 64);
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4890, &qword_1DEF90990) - 8);
  v7 = (v5 + *(v6 + 80)) & ~*(v6 + 80);
  sub_1DEF17EB4(a1, *(v1 + 16), *(v1 + 24), *(v1 + 32), *(v1 + 40), *(v1 + 48), (v1 + v4), v1 + v7, *(v1 + v7 + *(v6 + 64)), *(v1 + ((v7 + *(v6 + 64)) & 0xFFFFFFFFFFFFFFF8) + 8), *(v1 + ((v7 + *(v6 + 64)) & 0xFFFFFFFFFFFFFFF8) + 16));
}

uint64_t objectdestroy_250Tm()
{
  if (v0[2])
  {
    v1 = v0[3];
  }

  v2 = v0[5];

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1DEF3003C(uint64_t a1, char a2)
{
  v3 = v2[2];
  v5 = v2[4];
  v4 = v2[5];
  if (v3)
  {
    v6 = v2[3];
    v3(a1, a2 & 1);
  }

  return v5();
}

uint64_t sub_1DEF300A8()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 16);
  return sub_1DEF16BA0(v1);
}

uint64_t sub_1DEF300D0@<X0>(uint64_t *a1@<X8>)
{
  v3 = v1[3];
  v4 = v1[4];
  v5 = v1[2];
  result = sub_1DEF16638(v3, v4);
  *a1 = result;
  return result;
}

uint64_t sub_1DEF30138()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4E30, &qword_1DEF96220) - 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = v0 + ((*(v1 + 80) + 32) & ~*(v1 + 80));

  return sub_1DEF29614(v2, v3, v4);
}

unint64_t sub_1DEF301A8()
{
  result = qword_1ECDE4E58;
  if (!qword_1ECDE4E58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE4E58);
  }

  return result;
}

uint64_t sub_1DEF301FC(void *a1, unint64_t a2, int a3, uint64_t a4)
{
  v9 = *(type metadata accessor for NetworkSyncHeader(0) - 8);
  v10 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v11 = (*(v9 + 64) + v10 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  return sub_1DEF27C24(a1, a2, a3, a4, *(v4 + 16), *(v4 + 24), v4 + v10, *(v4 + v11), *(v4 + ((v11 + 7) & 0xFFFFFFFFFFFFFFFCLL)));
}

void sub_1DEF302F0(void *a1@<X8>)
{
  v3 = *(v1 + 24);
  v4 = *(v1 + 16);
  sub_1DEF154A0(v3, 0, 0);
  *a1 = v5;
}

uint64_t objectdestroy_257Tm(uint64_t a1)
{
  v3 = *(v1 + 16);

  v4 = *(v1 + 24);
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v1, a1, 7);
}

uint64_t objectdestroy_267Tm()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t objectdestroy_23Tm(void (*a1)(void))
{
  v3 = *(v1 + 16);

  a1(*(v1 + 32));

  return MEMORY[0x1EEE6BDD0](v1, 40, 7);
}

uint64_t sub_1DEF30420()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[2];
  return sub_1DEF13D38(v1, v2);
}

uint64_t sub_1DEF30468(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECDE4E60, &qword_1DEF95B40);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1DEF30528()
{
  result = qword_1ECDE4ED0;
  if (!qword_1ECDE4ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE4ED0);
  }

  return result;
}

unint64_t sub_1DEF30580()
{
  result = qword_1ECDE4ED8;
  if (!qword_1ECDE4ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE4ED8);
  }

  return result;
}

unint64_t sub_1DEF305D8()
{
  result = qword_1ECDE4EE0;
  if (!qword_1ECDE4EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE4EE0);
  }

  return result;
}

unint64_t sub_1DEF30630()
{
  result = qword_1ECDE4EE8;
  if (!qword_1ECDE4EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE4EE8);
  }

  return result;
}

uint64_t sub_1DEF30818(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v9 = *(v2 + *a2);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4F58, &unk_1DEF95DB0);
    sub_1DEE1B548(&qword_1ECDE2D00, &qword_1ECDE4F58, &unk_1DEF95DB0);
    v6 = v2;
    v5 = sub_1DEF8D5B8();
    v7 = *(v2 + v3);
    *(v6 + v3) = v5;
  }

  return v5;
}

void sub_1DEF308EC(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v38 = a3;
  v48 = a2;
  v49 = a1;
  ObjectType = swift_getObjectType();
  v47 = sub_1DEF8DD08();
  v5 = *(v47 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v47);
  v46 = &ObjectType - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1DEF8DCD8();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v10 = sub_1DEF8D6D8();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = OBJC_IVAR____TtC16ReplicatorEngine21ConcreteIDSDependency__accountsChanged;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4F58, &unk_1DEF95DB0);
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  swift_allocObject();
  *&v3[v12] = sub_1DEF8D598();
  *&v3[OBJC_IVAR____TtC16ReplicatorEngine21ConcreteIDSDependency____lazy_storage___accountsChanged] = 0;
  v16 = OBJC_IVAR____TtC16ReplicatorEngine21ConcreteIDSDependency__devicesChanged;
  v17 = *(v13 + 48);
  v18 = *(v13 + 52);
  swift_allocObject();
  *&v3[v16] = sub_1DEF8D598();
  *&v3[OBJC_IVAR____TtC16ReplicatorEngine21ConcreteIDSDependency____lazy_storage___devicesChanged] = 0;
  v19 = OBJC_IVAR____TtC16ReplicatorEngine21ConcreteIDSDependency_lock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4230, &qword_1DEF934E0);
  v20 = swift_allocObject();
  *(v20 + 16) = 0;
  *&v3[v19] = v20;
  *&v3[OBJC_IVAR____TtC16ReplicatorEngine21ConcreteIDSDependency_lock_identityBlob] = xmmword_1DEF90FE0;
  v45 = OBJC_IVAR____TtC16ReplicatorEngine21ConcreteIDSDependency_calloutQueue;
  v21 = sub_1DEE1EA18(0, &qword_1ECDE2C00, 0x1E69E9610);
  v43 = "eteIDSDependency.fetch";
  v44 = v21;
  sub_1DEF8D6C8();
  v51 = MEMORY[0x1E69E7CC0];
  v41 = sub_1DEE1BA40(&qword_1ECDE2C10, MEMORY[0x1E69E8030]);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4FF0, &unk_1DEF904D0);
  v42 = sub_1DEE1B548(&qword_1ECDE2C30, &unk_1ECDE4FF0, &unk_1DEF904D0);
  sub_1DEF8DE08();
  v22 = *MEMORY[0x1E69E8098];
  v23 = *(v5 + 104);
  v39 = v5 + 104;
  v24 = v46;
  v25 = v47;
  v23(v46, v22, v47);
  *&v4[v45] = sub_1DEF8DD38();
  v45 = OBJC_IVAR____TtC16ReplicatorEngine21ConcreteIDSDependency_identityFetchQueue;
  v43 = ".ConcreteIDSDependency";
  sub_1DEF8D6C8();
  v51 = MEMORY[0x1E69E7CC0];
  sub_1DEF8DE08();
  v23(v24, v22, v25);
  v26 = v48;
  *&v4[v45] = sub_1DEF8DD38();
  v27 = &v4[OBJC_IVAR____TtC16ReplicatorEngine21ConcreteIDSDependency_lock_localDeviceID];
  *v27 = 0;
  v27[1] = 0;
  v4[OBJC_IVAR____TtC16ReplicatorEngine21ConcreteIDSDependency_lock_fetchingLocalDeviceID] = 0;
  v28 = &v4[OBJC_IVAR____TtC16ReplicatorEngine21ConcreteIDSDependency_serviceName];
  *v28 = v49;
  v28[1] = v26;
  v29 = objc_allocWithZone(MEMORY[0x1E69A48A8]);

  v30 = sub_1DEF8D918();
  v31 = [v29 initWithService_];

  if (v31)
  {

    *&v4[OBJC_IVAR____TtC16ReplicatorEngine21ConcreteIDSDependency_service] = v31;
    v50.receiver = v4;
    v50.super_class = ObjectType;
    v32 = objc_msgSendSuper2(&v50, sel_init);
    v33 = *&v32[OBJC_IVAR____TtC16ReplicatorEngine21ConcreteIDSDependency_service];
    v34 = v32;
    v35 = v33;
    v36 = v38;
    [v35 addDelegate:v34 queue:v38];
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1DEF30DE8(uint64_t a1)
{
  v1 = a1;
  if (qword_1ECDE33F0 != -1)
  {
    a1 = swift_once();
  }

  MEMORY[0x1EEE9AC00](a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE3ED0, &qword_1DEF92030);
  v2 = sub_1DEF8DD18();
  v3 = *(v1 + OBJC_IVAR____TtC16ReplicatorEngine21ConcreteIDSDependency_lock);
  v4 = MEMORY[0x1EEE9AC00](v2);
  MEMORY[0x1EEE9AC00](v4);
  os_unfair_lock_lock(v3 + 4);
  sub_1DEE3DEF0(v5);
  os_unfair_lock_unlock(v3 + 4);
}

char *sub_1DEF30F5C()
{
  v43 = sub_1DEF8D3F8();
  v1 = *(v43 - 8);
  v2 = v1[8];
  MEMORY[0x1EEE9AC00](v43);
  v40 = &v39 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE3E80, &unk_1DEF90970);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v4 - 8);
  v8 = &v39 - v7;
  v9 = [*(v0 + OBJC_IVAR____TtC16ReplicatorEngine21ConcreteIDSDependency_service) devices];
  v10 = MEMORY[0x1E69E7CC0];
  if (!v9)
  {
    return v10;
  }

  v11 = v9;
  sub_1DEE1EA18(0, &qword_1ECDE2B70, 0x1E69A4848);
  v12 = sub_1DEF8DAD8();

  v44 = v10;
  if (v12 >> 62)
  {
    goto LABEL_17;
  }

  for (i = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1DEF8DE68())
  {
    v14 = 0;
    v41 = v12 & 0xFFFFFFFFFFFFFF8;
    v42 = v12 & 0xC000000000000001;
    v15 = (v1 + 4);
    v16 = (v1 + 7);
    while (1)
    {
      if (v42)
      {
        v17 = MEMORY[0x1E12CB6E0](v14, v12);
      }

      else
      {
        if (v14 >= *(v41 + 16))
        {
          goto LABEL_16;
        }

        v17 = *(v12 + 8 * v14 + 32);
      }

      v1 = v17;
      v18 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      v19 = [v17 nsuuid];
      if (v19)
      {
        v20 = v12;
        v21 = v40;
        v22 = v19;
        sub_1DEF8D3B8();

        v23 = v43;
        (*v15)(v8, v21, v43);
        (*v16)(v8, 0, 1, v23);
        sub_1DEF32324(v8);
        v10 = &v44;
        sub_1DEF8DFB8();
        v24 = v44[2];
        sub_1DEF8DFE8();
        v12 = v20;
        sub_1DEF8DFF8();
        sub_1DEF8DFC8();
      }

      else
      {

        (*v16)(v8, 1, 1, v43);
        sub_1DEF32324(v8);
      }

      ++v14;
      if (v18 == i)
      {
        v25 = v44;
        v10 = MEMORY[0x1E69E7CC0];
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    ;
  }

  v25 = v10;
LABEL_19:

  if ((v25 & 0x8000000000000000) != 0 || (v25 & 0x4000000000000000) != 0)
  {
    goto LABEL_36;
  }

  v26 = *(v25 + 16);
  if (!v26)
  {
LABEL_37:

    return v10;
  }

  while (1)
  {
    v44 = v10;
    result = sub_1DEEC7EEC(0, v26 & ~(v26 >> 63), 0);
    if (v26 < 0)
    {
      break;
    }

    v28 = 0;
    v10 = v44;
    while (1)
    {
      v29 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        break;
      }

      if ((v25 & 0xC000000000000001) != 0)
      {
        v30 = MEMORY[0x1E12CB6E0](v28, v25);
      }

      else
      {
        if (v28 >= *(v25 + 16))
        {
          goto LABEL_35;
        }

        v30 = *(v25 + 8 * v28 + 32);
      }

      v31 = v30;
      result = [v30 uniqueIDOverride];
      if (!result)
      {
        goto LABEL_40;
      }

      v32 = result;
      v33 = sub_1DEF8D948();
      v35 = v34;

      v44 = v10;
      v37 = v10[2];
      v36 = v10[3];
      if (v37 >= v36 >> 1)
      {
        sub_1DEEC7EEC((v36 > 1), v37 + 1, 1);
        v10 = v44;
      }

      v10[2] = v37 + 1;
      v38 = &v10[2 * v37];
      v38[4] = v33;
      v38[5] = v35;
      ++v28;
      if (v29 == v26)
      {
        goto LABEL_37;
      }
    }

    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    v26 = sub_1DEF8DE68();
    if (!v26)
    {
      goto LABEL_37;
    }
  }

  __break(1u);
LABEL_40:
  __break(1u);
  return result;
}

void sub_1DEF31374(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v27 = a1;
  v5 = sub_1DEF8D698();
  v26 = *(v5 - 8);
  v6 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_1DEF8D6D8();
  v9 = *(v25 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v25);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v2 + OBJC_IVAR____TtC16ReplicatorEngine21ConcreteIDSDependency_lock);
  v31 = v2;
  v28 = sub_1DEF3225C;
  v29 = &v30;
  os_unfair_lock_lock(v13 + 4);
  sub_1DEE27868(&aBlock);
  os_unfair_lock_unlock(v13 + 4);
  v15 = *(&aBlock + 1);
  if (*(&aBlock + 1))
  {
    v16 = aBlock;
    v17 = *(v3 + OBJC_IVAR____TtC16ReplicatorEngine21ConcreteIDSDependency_calloutQueue);
    v18 = swift_allocObject();
    v18[2] = v27;
    v18[3] = a2;
    v18[4] = v16;
    v18[5] = v15;
    v36 = sub_1DEF322AC;
    v37 = v18;
    *&aBlock = MEMORY[0x1E69E9820];
    *(&aBlock + 1) = 1107296256;
    v34 = sub_1DEE3F0C0;
    v35 = &block_descriptor_15;
    v19 = _Block_copy(&aBlock);

    sub_1DEF8D6B8();
    v32 = MEMORY[0x1E69E7CC0];
    sub_1DEE1BA40(&qword_1ECDE2CF0, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4210, &unk_1DEF90800);
    sub_1DEE1B548(&qword_1ECDE2C50, &unk_1ECDE4210, &unk_1DEF90800);
    sub_1DEF8DE08();
    MEMORY[0x1E12CB4D0](0, v12, v8, v19);
    _Block_release(v19);
    (*(v26 + 8))(v8, v5);
    (*(v9 + 8))(v12, v25);
  }

  else
  {
    MEMORY[0x1EEE9AC00](v14);
    v20 = v27;
    *(&v24 - 4) = v3;
    *(&v24 - 3) = v20;
    *(&v24 - 2) = a2;
    MEMORY[0x1EEE9AC00](v21);
    *(&v24 - 2) = sub_1DEF3228C;
    *(&v24 - 1) = v22;
    os_unfair_lock_lock(v13 + 4);
    sub_1DEE15434(v23);
    os_unfair_lock_unlock(v13 + 4);
  }
}

uint64_t sub_1DEF31730(_BYTE *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1DEF8D698();
  v20 = *(v6 - 8);
  v7 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1DEF8D6D8();
  v10 = *(v19 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  a1[OBJC_IVAR____TtC16ReplicatorEngine21ConcreteIDSDependency_lock_fetchingLocalDeviceID] = 1;
  v18 = *&a1[OBJC_IVAR____TtC16ReplicatorEngine21ConcreteIDSDependency_identityFetchQueue];
  v14 = swift_allocObject();
  v14[2] = a1;
  v14[3] = a2;
  v14[4] = a3;
  aBlock[4] = sub_1DEF322DC;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1DEE3F0C0;
  aBlock[3] = &block_descriptor_7_0;
  v15 = _Block_copy(aBlock);
  v16 = a1;

  sub_1DEF8D6B8();
  aBlock[7] = MEMORY[0x1E69E7CC0];
  sub_1DEE1BA40(&qword_1ECDE2CF0, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4210, &unk_1DEF90800);
  sub_1DEE1B548(&qword_1ECDE2C50, &unk_1ECDE4210, &unk_1DEF90800);
  sub_1DEF8DE08();
  MEMORY[0x1E12CB4D0](0, v13, v9, v15);
  _Block_release(v15);
  (*(v20 + 8))(v9, v6);
  (*(v10 + 8))(v13, v19);
}

uint64_t sub_1DEF31A34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v26 = a2;
  v27 = a3;
  v4 = sub_1DEF8D698();
  v30 = *(v4 - 8);
  v5 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1DEF8D6D8();
  v28 = *(v8 - 8);
  v29 = v8;
  v9 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1ECDE33F0 != -1)
  {
    v10 = swift_once();
  }

  MEMORY[0x1EEE9AC00](v10);
  *(&v25 - 4) = 0;
  *(&v25 - 3) = 0;
  *(&v25 - 2) = sub_1DEF3262C;
  *(&v25 - 1) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE3ED0, &qword_1DEF92030);
  v13 = sub_1DEF8DD18();
  v15 = aBlock;
  v14 = v33;
  v16 = *(a1 + OBJC_IVAR____TtC16ReplicatorEngine21ConcreteIDSDependency_lock);
  MEMORY[0x1EEE9AC00](v13);
  *(&v25 - 4) = a1;
  *(&v25 - 3) = v15;
  *(&v25 - 2) = v14;
  MEMORY[0x1EEE9AC00](v17);
  *(&v25 - 2) = sub_1DEF32650;
  *(&v25 - 1) = v18;
  os_unfair_lock_lock(v16 + 4);
  sub_1DEE3DEF0(v19);
  os_unfair_lock_unlock(v16 + 4);
  v20 = *(a1 + OBJC_IVAR____TtC16ReplicatorEngine21ConcreteIDSDependency_calloutQueue);
  v21 = swift_allocObject();
  v22 = v27;
  v21[2] = v26;
  v21[3] = v22;
  v21[4] = v15;
  v21[5] = v14;
  v36 = sub_1DEF322AC;
  v37 = v21;
  aBlock = MEMORY[0x1E69E9820];
  v33 = 1107296256;
  v34 = sub_1DEE3F0C0;
  v35 = &block_descriptor_14_1;
  v23 = _Block_copy(&aBlock);

  sub_1DEF8D6B8();
  v31 = MEMORY[0x1E69E7CC0];
  sub_1DEE1BA40(&qword_1ECDE2CF0, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4210, &unk_1DEF90800);
  sub_1DEE1B548(&qword_1ECDE2C50, &unk_1ECDE4210, &unk_1DEF90800);
  sub_1DEF8DE08();
  MEMORY[0x1E12CB4D0](0, v12, v7, v23);
  _Block_release(v23);
  (*(v30 + 8))(v7, v4);
  (*(v28 + 8))(v12, v29);
}

id sub_1DEF31E80()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1DEF32050()
{
  v1 = *(*v0 + OBJC_IVAR____TtC16ReplicatorEngine21ConcreteIDSDependency_lock);
  os_unfair_lock_lock(v1 + 4);
  sub_1DEF12170(&v3);
  os_unfair_lock_unlock(v1 + 4);
  return v3;
}

void sub_1DEF320F0(uint64_t *a1@<X8>)
{
  v2 = IDSCopyLocalDeviceUniqueID();
  if (v2)
  {
    v3 = v2;
    v4 = sub_1DEF8D948();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  *a1 = v4;
  a1[1] = v6;
}

uint64_t sub_1DEF3225C@<X0>(void *a1@<X8>)
{
  v2 = (*(v1 + 16) + OBJC_IVAR____TtC16ReplicatorEngine21ConcreteIDSDependency_lock_localDeviceID);
  v3 = v2[1];
  *a1 = *v2;
  a1[1] = v3;
}

uint64_t sub_1DEF32324(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE3E80, &unk_1DEF90970);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1DEF323AC(uint64_t a1)
{
  if (qword_1ECDE33F0 != -1)
  {
    a1 = swift_once();
  }

  MEMORY[0x1EEE9AC00](a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE3ED0, &qword_1DEF92030);
  v2 = sub_1DEF8DD18();
  v3 = *(v1 + OBJC_IVAR____TtC16ReplicatorEngine21ConcreteIDSDependency_lock);
  MEMORY[0x1EEE9AC00](v2);
  MEMORY[0x1EEE9AC00](v4);
  os_unfair_lock_lock(v3 + 4);
  sub_1DEE3DEF0(v5);
  os_unfair_lock_unlock(v3 + 4);

  v6 = *(v1 + OBJC_IVAR____TtC16ReplicatorEngine21ConcreteIDSDependency__accountsChanged);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4F58, &unk_1DEF95DB0);
  sub_1DEE1B548(&qword_1ECDE2D08, &qword_1ECDE4F58, &unk_1DEF95DB0);
  sub_1DEF8D5A8();
}

void sub_1DEF32598(void *a1@<X8>)
{
  v4 = *(v1 + 40);
  sub_1DEEF59BC(*(v1 + 16), *(v1 + 24), *(v1 + 32));
  if (!v2)
  {
    *a1 = v5;
    a1[1] = v6;
  }
}

uint64_t sub_1DEF325CC()
{
  v1 = v0[2];
  v2 = v0[4];
  v3 = (v1 + OBJC_IVAR____TtC16ReplicatorEngine21ConcreteIDSDependency_lock_localDeviceID);
  v4 = *(v1 + OBJC_IVAR____TtC16ReplicatorEngine21ConcreteIDSDependency_lock_localDeviceID + 8);
  *v3 = v0[3];
  v3[1] = v2;

  *(v1 + OBJC_IVAR____TtC16ReplicatorEngine21ConcreteIDSDependency_lock_fetchingLocalDeviceID) = 0;
  return result;
}

uint64_t sub_1DEF32668(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3A78, &qword_1DEF90820);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v20 - v9;
  v11 = type metadata accessor for ZoneVersionAdvertisement(0);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v16 + 48))(a1, 1, v13) == 1)
  {
    sub_1DEE171B4(a1, &qword_1ECDE3A78, &qword_1DEF90820);
    sub_1DEF74FC0(a2, a3, v10);

    return sub_1DEE171B4(v10, &qword_1ECDE3A78, &qword_1DEF90820);
  }

  else
  {
    sub_1DEE139C0(a1, v15, type metadata accessor for ZoneVersionAdvertisement);
    v18 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v21 = *v3;
    sub_1DEF3DF30(v15, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v21;
  }

  return result;
}

uint64_t sub_1DEF32880(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3C18, &unk_1DEF94D20);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v20 - v7;
  v9 = type metadata accessor for PairingRelationship();
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v14 + 48))(a1, 1, v11) == 1)
  {
    sub_1DEE171B4(a1, &qword_1ECDE3C18, &unk_1DEF94D20);
    sub_1DEF75068(a2, v8);
    v15 = sub_1DEF8D3F8();
    (*(*(v15 - 8) + 8))(a2, v15);
    return sub_1DEE171B4(v8, &qword_1ECDE3C18, &unk_1DEF94D20);
  }

  else
  {
    sub_1DEE139C0(a1, v13, type metadata accessor for PairingRelationship);
    v17 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v21 = *v2;
    sub_1DEF3E198(v13, a2, isUniquelyReferenced_nonNull_native);
    v19 = sub_1DEF8D3F8();
    result = (*(*(v19 - 8) + 8))(a2, v19);
    *v2 = v21;
  }

  return result;
}

uint64_t sub_1DEF32AA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a1)
  {
    v8 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = *v3;
    sub_1DEF3F9A4(a1, a2, a3, isUniquelyReferenced_nonNull_native, sub_1DEEB7E30, sub_1DEEB20AC);

    *v3 = v19;
  }

  else
  {
    v11 = *v3;
    v12 = sub_1DEE13224(a2, a3);
    LOBYTE(v11) = v13;

    if (v11)
    {
      v14 = *v4;
      v15 = swift_isUniquelyReferenced_nonNull_native();
      v16 = *v4;
      v20 = *v4;
      if (!v15)
      {
        sub_1DEEB7E30();
        v16 = v20;
      }

      v17 = *(*(v16 + 48) + 16 * v12 + 8);

      v18 = *(*(v16 + 56) + 8 * v12);

      result = sub_1DEF76218(v12, v16);
      *v4 = v16;
    }
  }

  return result;
}

uint64_t sub_1DEF32BC0(uint64_t a1, void *a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE3E80, &unk_1DEF90970);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v18 - v7;
  v9 = sub_1DEF8D3F8();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v10 + 48))(a1, 1, v9, v12) == 1)
  {
    sub_1DEE171B4(a1, &unk_1ECDE3E80, &unk_1DEF90970);
    sub_1DEF7529C(a2, v8);

    return sub_1DEE171B4(v8, &unk_1ECDE3E80, &unk_1DEF90970);
  }

  else
  {
    (*(v10 + 32))(v14, a1, v9);
    v16 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = *v2;
    sub_1DEF3E700(v14, a2, isUniquelyReferenced_nonNull_native, sub_1DEEAF3E8, sub_1DEEB8164, sub_1DEEB28C8, type metadata accessor for Record.ID);

    *v2 = v19;
  }

  return result;
}

uint64_t sub_1DEF32E20(uint64_t a1, uint64_t a2, void (*a3)(void), void (*a4)(void), void (*a5)(unint64_t, uint64_t), void (*a6)(void))
{
  v7 = v6;
  if (a1)
  {
    v12 = *v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v32 = *v6;
    sub_1DEF3E8DC(a1, a2, isUniquelyReferenced_nonNull_native, a3, a4);
    v14 = sub_1DEF8D3F8();
    result = (*(*(v14 - 8) + 8))(a2, v14);
    *v6 = v32;
  }

  else
  {
    v18 = *v6;
    v19 = sub_1DEEAF350(a2);
    if (v20)
    {
      v21 = v19;
      v22 = *v7;
      v23 = swift_isUniquelyReferenced_nonNull_native();
      v24 = *v7;
      v33 = *v7;
      if (!v23)
      {
        a6();
        v24 = v33;
      }

      v25 = *(v24 + 48);
      v26 = sub_1DEF8D3F8();
      v27 = *(v26 - 8);
      v28 = *(v27 + 8);
      v28(v25 + *(v27 + 72) * v21, v26);
      v29 = *(*(v24 + 56) + 8 * v21);

      a5(v21, v24);
      result = (v28)(a2, v26);
      *v7 = v24;
    }

    else
    {
      v30 = sub_1DEF8D3F8();
      v31 = *(*(v30 - 8) + 8);

      return v31(a2, v30);
    }
  }

  return result;
}

uint64_t sub_1DEF3300C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3D98, &qword_1DEF916B0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v20 - v9;
  v11 = type metadata accessor for ZoneVersion();
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v16 + 48))(a1, 1, v13) == 1)
  {
    sub_1DEE171B4(a1, &qword_1ECDE3D98, &qword_1DEF916B0);
    sub_1DEF75408(a2, a3, v10);

    return sub_1DEE171B4(v10, &qword_1ECDE3D98, &qword_1DEF916B0);
  }

  else
  {
    sub_1DEE139C0(a1, v15, type metadata accessor for ZoneVersion);
    v18 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v21 = *v3;
    sub_1DEF3EAC0(v15, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v21;
  }

  return result;
}

uint64_t sub_1DEF331E0(uint64_t a1, void *a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3D98, &qword_1DEF916B0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v18 - v7;
  v9 = type metadata accessor for ZoneVersion();
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v14 + 48))(a1, 1, v11) == 1)
  {
    sub_1DEE171B4(a1, &qword_1ECDE3D98, &qword_1DEF916B0);
    sub_1DEF755E0(a2, v8);

    return sub_1DEE171B4(v8, &qword_1ECDE3D98, &qword_1DEF916B0);
  }

  else
  {
    sub_1DEE139C0(a1, v13, type metadata accessor for ZoneVersion);
    v16 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = *v2;
    sub_1DEF3EC54(v13, a2, isUniquelyReferenced_nonNull_native);

    *v2 = v19;
  }

  return result;
}

uint64_t sub_1DEF333A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a1)
  {
    v8 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = *v3;
    sub_1DEF3EDB0(a1, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v19;
  }

  else
  {
    v11 = *v3;
    v12 = sub_1DEEAF684(a2, a3);
    LOBYTE(v11) = v13;

    if (v11)
    {
      v14 = *v4;
      v15 = swift_isUniquelyReferenced_nonNull_native();
      v16 = *v4;
      v20 = *v4;
      if (!v15)
      {
        sub_1DEEB8DF0();
        v16 = v20;
      }

      v17 = *(*(v16 + 48) + 16 * v12 + 8);

      v18 = *(*(v16 + 56) + 8 * v12);
      swift_unknownObjectRelease();
      result = sub_1DEF76E5C(v12, v16);
      *v4 = v16;
    }
  }

  return result;
}

uint64_t sub_1DEF33498(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4200, &unk_1DEF91DB0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v20 - v7;
  v9 = type metadata accessor for NetworkBrowser.Monitor();
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v14 + 48))(a1, 1, v11) == 1)
  {
    sub_1DEE171B4(a1, &unk_1ECDE4200, &unk_1DEF91DB0);
    sub_1DEF75748(a2, v8);
    v15 = sub_1DEF8D3F8();
    (*(*(v15 - 8) + 8))(a2, v15);
    return sub_1DEE171B4(v8, &unk_1ECDE4200, &unk_1DEF91DB0);
  }

  else
  {
    sub_1DEE139C0(a1, v13, type metadata accessor for NetworkBrowser.Monitor);
    v17 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v21 = *v2;
    sub_1DEF3EF2C(v13, a2, isUniquelyReferenced_nonNull_native);
    v19 = sub_1DEF8D3F8();
    result = (*(*(v19 - 8) + 8))(a2, v19);
    *v2 = v21;
  }

  return result;
}

uint64_t sub_1DEF336B8(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v5 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v26 = *v2;
    ObjectType = swift_getObjectType();
    sub_1DEF41AB8(a1, a2, isUniquelyReferenced_nonNull_native, &v26, ObjectType);
    v8 = sub_1DEF8D3F8();
    result = (*(*(v8 - 8) + 8))(a2, v8);
    *v2 = v26;
  }

  else
  {
    v10 = v2;
    v11 = *v2;
    v12 = sub_1DEEAF350(a2);
    if (v13)
    {
      v14 = v12;
      v15 = v10;
      v16 = *v10;
      v17 = swift_isUniquelyReferenced_nonNull_native();
      v18 = *v10;
      v26 = *v10;
      if (!v17)
      {
        sub_1DEEB9288();
        v15 = v10;
        v18 = v26;
      }

      v19 = *(v18 + 48);
      v20 = sub_1DEF8D3F8();
      v21 = *(v20 - 8);
      v22 = *(v21 + 8);
      v22(v19 + *(v21 + 72) * v14, v20);
      v23 = *(*(v18 + 56) + 8 * v14);
      swift_unknownObjectRelease();
      sub_1DEF7695C(v14, v18);
      result = (v22)(a2, v20);
      *v15 = v18;
    }

    else
    {
      v24 = sub_1DEF8D3F8();
      v25 = *(*(v24 - 8) + 8);

      return v25(a2, v24);
    }
  }

  return result;
}

uint64_t sub_1DEF33890(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = *(a1 + 8);
  if (v7)
  {
    v8 = *(a1 + 16);
    v24[0] = *a1;
    v24[1] = v7;
    v24[2] = v8;
    v25 = *(a1 + 24);
    v9 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = *v3;
    sub_1DEF3F128(v24, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v23;
  }

  else
  {
    v12 = *v3;
    v13 = sub_1DEE13224(a2, a3);
    LOBYTE(v12) = v14;

    if (v12)
    {
      v15 = *v4;
      v16 = swift_isUniquelyReferenced_nonNull_native();
      v17 = *v4;
      v24[0] = *v4;
      if (!v16)
      {
        sub_1DEEB9508();
        v17 = v24[0];
      }

      v18 = *(*(v17 + 48) + 16 * v13 + 8);

      v19 = (*(v17 + 56) + 40 * v13);
      v20 = v19[1];
      v22 = v19[3];
      v21 = v19[4];
      swift_unknownObjectRelease();

      result = sub_1DEF7737C(v13, v17);
      *v4 = v17;
    }
  }

  return result;
}

uint64_t sub_1DEF339BC(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3D08, &unk_1DEF95E50);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v20 - v7;
  v9 = type metadata accessor for SessionManager.Session();
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v14 + 48))(a1, 1, v11) == 1)
  {
    sub_1DEE171B4(a1, &qword_1ECDE3D08, &unk_1DEF95E50);
    sub_1DEF7579C(a2, v8);
    v15 = sub_1DEF8D3F8();
    (*(*(v15 - 8) + 8))(a2, v15);
    return sub_1DEE171B4(v8, &qword_1ECDE3D08, &unk_1DEF95E50);
  }

  else
  {
    sub_1DEE139C0(a1, v13, type metadata accessor for SessionManager.Session);
    v17 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v21 = *v2;
    sub_1DEF3F5A0(v13, a2, isUniquelyReferenced_nonNull_native);
    v19 = sub_1DEF8D3F8();
    result = (*(*(v19 - 8) + 8))(a2, v19);
    *v2 = v21;
  }

  return result;
}

uint64_t sub_1DEF33BDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a1)
  {
    v8 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v26 = *v3;
    sub_1DEF3F79C(a1, a2, a3, isUniquelyReferenced_nonNull_native);
    v10 = sub_1DEF8D3F8();
    result = (*(*(v10 - 8) + 8))(a3, v10);
    *v3 = v26;
  }

  else
  {
    v12 = *v3;
    v13 = sub_1DEEAF350(a3);
    if (v14)
    {
      v15 = v13;
      v16 = *v4;
      v17 = swift_isUniquelyReferenced_nonNull_native();
      v18 = *v4;
      v27 = *v4;
      if (!v17)
      {
        sub_1DEEBA2FC();
        v18 = v27;
      }

      v19 = *(v18 + 48);
      v20 = sub_1DEF8D3F8();
      v21 = *(v20 - 8);
      v22 = *(v21 + 8);
      v22(v19 + *(v21 + 72) * v15, v20);
      v23 = *(*(v18 + 56) + 16 * v15 + 8);

      sub_1DEF77908(v15, v18);
      result = (v22)(a3, v20);
      *v4 = v18;
    }

    else
    {
      v24 = sub_1DEF8D3F8();
      v25 = *(*(v24 - 8) + 8);

      return v25(a3, v24);
    }
  }

  return result;
}

uint64_t sub_1DEF33DA8(uint64_t a1, char a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4E38, &qword_1DEF95B20);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v26 - v8;
  v10 = type metadata accessor for NetworkMessenger.PartialIncomingMessage(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v11 + 48))(a1, 1, v10, v13) == 1)
  {
    sub_1DEE171B4(a1, &qword_1ECDE4E38, &qword_1DEF95B20);
    v16 = *v3;
    v17 = sub_1DEEAF7AC(a2);
    if (v18)
    {
      v19 = v17;
      v20 = *v3;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v22 = *v3;
      v27 = *v3;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_1DEEBA6F0();
        v22 = v27;
      }

      sub_1DEE139C0(*(v22 + 56) + *(v11 + 72) * v19, v9, type metadata accessor for NetworkMessenger.PartialIncomingMessage);
      sub_1DEF77C10(v19, v22);
      *v3 = v22;
      (*(v11 + 56))(v9, 0, 1, v10);
    }

    else
    {
      (*(v11 + 56))(v9, 1, 1, v10);
    }

    return sub_1DEE171B4(v9, &qword_1ECDE4E38, &qword_1DEF95B20);
  }

  else
  {
    sub_1DEE139C0(a1, v15, type metadata accessor for NetworkMessenger.PartialIncomingMessage);
    v23 = *v3;
    v24 = swift_isUniquelyReferenced_nonNull_native();
    v27 = *v3;
    result = sub_1DEF3FB3C(v15, a2, v24);
    *v3 = v27;
  }

  return result;
}

uint64_t sub_1DEF33FFC(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24))
  {
    sub_1DEE2F1AC(a1, v8);
    v4 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *v2;
    sub_1DEF3FDDC(v8, a2, isUniquelyReferenced_nonNull_native);
    result = sub_1DEEA8CAC(a2);
    *v2 = v7;
  }

  else
  {
    sub_1DEE171B4(a1, &qword_1ECDE4FA8, &unk_1DEF95E60);
    sub_1DEF75A04(a2, v8);
    sub_1DEEA8CAC(a2);
    return sub_1DEE171B4(v8, &qword_1ECDE4FA8, &unk_1DEF95E60);
  }

  return result;
}

uint64_t sub_1DEF340B8(uint64_t (*a1)(void **, uint64_t *), uint64_t a2, uint64_t a3)
{
  if ((a3 & 0xC000000000000001) != 0)
  {
    v5 = MEMORY[0x1E69E7CC8];
    v17 = MEMORY[0x1E69E7CC8];
    sub_1DEF8E038();
    v6 = sub_1DEF8E0D8();
    if (v6)
    {
      v7 = v6;
      type metadata accessor for Record.ID(0);
      v8 = v7;
      v5 = MEMORY[0x1E69E7CC8];
      do
      {
        v15 = v8;
        swift_dynamicCast();
        type metadata accessor for RecordMetadata();
        swift_dynamicCast();
        v9 = v16;
        if (!v16)
        {
          break;
        }

        v10 = v15;

        v11 = a1(&v16, &v15);
        if (v3)
        {

          sub_1DEE2774C();

          return v5;
        }

        v12 = v11;

        if (v12)
        {
          v13 = *(v5 + 16);
          if (*(v5 + 24) <= v13)
          {
            sub_1DEEB1864(v13 + 1, 1);
          }

          v5 = v17;
          sub_1DEF40350(v9, v10, v17);
        }

        else
        {
        }

        v8 = sub_1DEF8E0D8();
      }

      while (v8);
    }

    sub_1DEE2774C();
  }

  else
  {
    v5 = sub_1DEF2BC3C(a1, a2, a3);
  }

  return v5;
}

uint64_t sub_1DEF342E4(uint64_t a1)
{
  v1 = a1;
  v21 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v2 = sub_1DEF8DE68();
    result = MEMORY[0x1E69E7CC0];
    if (!v2)
    {
      return result;
    }

    v26 = MEMORY[0x1E69E7CC0];
    sub_1DEF8DFD8();
    result = sub_1DEF8E028();
    v23 = result;
    v24 = v4;
    v25 = 1;
    if ((v2 & 0x8000000000000000) == 0)
    {
      goto LABEL_7;
    }

    __break(1u);
  }

  v2 = *(v1 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (!v2)
  {
    return result;
  }

  v26 = MEMORY[0x1E69E7CC0];
  sub_1DEF8DFD8();
  v5 = -1 << *(v1 + 32);
  result = sub_1DEF8DE18();
  v6 = *(v1 + 36);
  v23 = result;
  v24 = v6;
  v25 = 0;
LABEL_7:
  v7 = 0;
  v20 = v2;
  while (v7 < v2)
  {
    v13 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      goto LABEL_20;
    }

    v14 = v23;
    v15 = v24;
    v16 = v25;
    sub_1DEF4167C(v22, v23, v24, v25, v1, type metadata accessor for Record.ID, sub_1DEEAF3E8, type metadata accessor for RecordMetadata);
    v17 = v1;

    sub_1DEF8DFB8();
    v18 = *(v26 + 16);
    sub_1DEF8DFE8();
    sub_1DEF8DFF8();
    result = sub_1DEF8DFC8();
    if (v21)
    {
      if (!v16)
      {
        goto LABEL_21;
      }

      if (sub_1DEF8E058())
      {
        swift_isUniquelyReferenced_nonNull_native();
      }

      v2 = v20;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3DE0, &unk_1DEF91700);
      v19 = sub_1DEF8D878();
      sub_1DEF8E0E8();
      result = v19(v22, 0);
    }

    else
    {
      v8 = sub_1DEF41454(v14, v15, v16, v1, type metadata accessor for Record.ID, sub_1DEEAF3E8);
      v10 = v9;
      v12 = v11;
      result = sub_1DEE2F804(v14, v15, v16);
      v23 = v8;
      v24 = v10;
      v25 = v12 & 1;
      v1 = v17;
      v2 = v20;
    }

    ++v7;
    if (v13 == v2)
    {
      sub_1DEE2F804(v23, v24, v25);
      return v26;
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t MetadataStoring.pairingRelationship(relationshipID:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = (*(*(a3 + 8) + 32))(a2);
  if (*(v6 + 16) && (v7 = sub_1DEEAF350(a1), (v8 & 1) != 0))
  {
    v9 = v7;
    v10 = *(v6 + 56);
    v11 = type metadata accessor for PairingRelationship();
    v18 = *(v11 - 8);
    sub_1DEE28090(v10 + *(v18 + 72) * v9, a4, type metadata accessor for PairingRelationship);

    v12 = *(v18 + 56);
    v13 = a4;
    v14 = 0;
    v15 = v11;
  }

  else
  {

    v16 = type metadata accessor for PairingRelationship();
    v12 = *(*(v16 - 8) + 56);
    v15 = v16;
    v13 = a4;
    v14 = 1;
  }

  return v12(v13, v14, 1, v15);
}

uint64_t MetadataStoring.zones()(uint64_t a1, uint64_t a2)
{
  v2 = (*(*(a2 + 8) + 24))();
  v22 = MEMORY[0x1E69E7CD0];
  if ((v2 & 0xC000000000000001) != 0)
  {
    v3 = 0;
    v4 = 0;
    v5 = 0;
    v6 = sub_1DEF8E038() | 0x8000000000000000;
  }

  else
  {
    v7 = -1 << *(v2 + 32);
    v4 = ~v7;
    v3 = v2 + 64;
    v8 = -v7;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v5 = v9 & *(v2 + 64);
    v6 = v2;
  }

  v11 = 0;
  if ((v6 & 0x8000000000000000) != 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v12 = v11;
    v13 = v5;
    v14 = v11;
    if (!v5)
    {
      break;
    }

LABEL_12:
    v15 = (v13 - 1) & v13;
    v16 = (v14 << 9) | (8 * __clz(__rbit64(v13)));
    v17 = *(*(v6 + 48) + v16);
    v18 = *(*(v6 + 56) + v16);

    if (!v17)
    {
LABEL_18:
      sub_1DEE2774C();

      v20 = sub_1DEF41368(v22, sub_1DEF30800, sub_1DEF2DB4C);

      return v20;
    }

    while (1)
    {
      v19 = *(v17 + 32);

      sub_1DEF389B8(&v21, v19);

      v11 = v14;
      v5 = v15;
      if ((v6 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      if (sub_1DEF8E0D8())
      {
        type metadata accessor for Record.ID(0);
        swift_dynamicCast();
        v17 = v21;
        type metadata accessor for RecordMetadata();
        swift_dynamicCast();
        v14 = v11;
        v15 = v5;
        if (v17)
        {
          continue;
        }
      }

      goto LABEL_18;
    }
  }

  while (1)
  {
    v14 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v14 >= ((v4 + 64) >> 6))
    {
      goto LABEL_18;
    }

    v13 = *(v3 + 8 * v14);
    ++v12;
    if (v13)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1DEF3498C(uint64_t (*a1)(void *), uint64_t a2, unint64_t a3)
{
  v4 = v3;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v5 = 0;
    v6 = 0;
    v7 = 0;
    v8 = sub_1DEF8E038() | 0x8000000000000000;
  }

  else
  {
    v9 = -1 << *(a3 + 32);
    v6 = ~v9;
    v5 = a3 + 64;
    v10 = -v9;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v7 = v11 & *(a3 + 64);
    v8 = a3;
  }

  v13 = 0;
  v27 = v8;
  if ((v8 & 0x8000000000000000) != 0)
  {
    goto LABEL_14;
  }

LABEL_8:
  v14 = v13;
  v15 = v7;
  v16 = v13;
  if (v7)
  {
LABEL_12:
    v7 = (v15 - 1) & v15;
    v17 = (v16 << 9) | (8 * __clz(__rbit64(v15)));
    v18 = *(v8 + 56);
    v19 = *(*(v8 + 48) + v17);
    v20 = *(v18 + v17);

    if (v19)
    {
      while (1)
      {
        v28[0] = v19;
        v28[1] = v20;
        v24 = a1(v28);

        if (v4)
        {
          sub_1DEE2774C();
          return v25 & 1;
        }

        v8 = v27;
        if (v24)
        {
          break;
        }

        v13 = v16;
        if ((v27 & 0x8000000000000000) == 0)
        {
          goto LABEL_8;
        }

LABEL_14:
        v21 = sub_1DEF8E0D8();
        if (v21)
        {
          v23 = v22;
          v29 = v21;
          type metadata accessor for Record.ID(0);
          swift_dynamicCast();
          v19 = v28[0];
          v29 = v23;
          type metadata accessor for RecordMetadata();
          swift_dynamicCast();
          v20 = v28[0];
          v16 = v13;
          if (v19)
          {
            continue;
          }
        }

        goto LABEL_20;
      }

      sub_1DEE2774C();
      v25 = 1;
    }

    else
    {
LABEL_20:
      sub_1DEE2774C();
      v25 = 0;
    }

    return v25 & 1;
  }

  else
  {
    while (1)
    {
      v16 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v16 >= ((v6 + 64) >> 6))
      {
        goto LABEL_20;
      }

      v15 = *(v5 + 8 * v16);
      ++v14;
      if (v15)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1DEF34BEC(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
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

uint64_t sub_1DEF34C98@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t, char *)@<X1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v5 = v4;
  v30 = a2;
  v32 = a1;
  v28 = a4;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4350, &qword_1DEF93400);
  v7 = *(*(v29 - 8) + 64);
  MEMORY[0x1EEE9AC00](v29);
  v9 = &v27 - v8;
  v10 = a3 + 64;
  v11 = 1 << *(a3 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & *(a3 + 64);
  v14 = (v11 + 63) >> 6;
  v31 = a3;

  v16 = 0;
  if (v13)
  {
    while (1)
    {
      v33 = v5;
      v17 = v16;
LABEL_9:
      v18 = __clz(__rbit64(v13)) | (v17 << 6);
      v19 = v31;
      v20 = *(v31 + 48);
      v21 = sub_1DEF8D3F8();
      (*(*(v21 - 8) + 16))(v9, v20 + *(*(v21 - 8) + 72) * v18, v21);
      v22 = *(v19 + 56);
      v23 = type metadata accessor for PairingRelationship();
      sub_1DEE28090(v22 + *(*(v23 - 8) + 72) * v18, &v9[*(v29 + 48)], type metadata accessor for PairingRelationship);
      v24 = v33;
      v30(v32, v9);
      v5 = v24;
      if (v24)
      {
        break;
      }

      v13 &= v13 - 1;
      result = sub_1DEE171B4(v9, &unk_1ECDE4350, &qword_1DEF93400);
      v16 = v17;
      if (!v13)
      {
        goto LABEL_5;
      }
    }

    sub_1DEE171B4(v9, &unk_1ECDE4350, &qword_1DEF93400);

    v26 = sub_1DEF8D378();
    return (*(*(v26 - 8) + 8))(v32, v26);
  }

  else
  {
LABEL_5:
    while (1)
    {
      v17 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v17 >= v14)
      {

        v25 = sub_1DEF8D378();
        return (*(*(v25 - 8) + 32))(v28, v32, v25);
      }

      v13 = *(v10 + 8 * v17);
      ++v16;
      if (v13)
      {
        v33 = v5;
        goto LABEL_9;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1DEF34F48(uint64_t result, void (*a2)(uint64_t *, uint64_t *), uint64_t a3, unint64_t a4)
{
  v13 = result;
  if (a4 >> 62)
  {
LABEL_16:
    v10 = result;
    v6 = sub_1DEF8DE68();
    result = v10;
    if (v6)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v6 = *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v6)
    {
LABEL_3:
      for (i = 0; ; ++i)
      {
        if ((a4 & 0xC000000000000001) != 0)
        {
          v8 = MEMORY[0x1E12CB6E0](i, a4);
          v9 = i + 1;
          if (__OFADD__(i, 1))
          {
LABEL_12:
            __break(1u);
          }
        }

        else
        {
          if (i >= *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_16;
          }

          v8 = *(a4 + 8 * i + 32);

          v9 = i + 1;
          if (__OFADD__(i, 1))
          {
            goto LABEL_12;
          }
        }

        v12 = v8;
        a2(&v13, &v12);

        if (v4)
        {
        }

        if (v9 == v6)
        {
          return v13;
        }
      }
    }
  }

  return result;
}

uint64_t sub_1DEF350A4(uint64_t a1, void (*a2)(uint64_t *, void *), uint64_t a3, unint64_t a4)
{
  v25 = a1;
  v5 = v4;
  if ((a4 & 0xC000000000000001) != 0)
  {
    v6 = 0;
    v7 = 0;
    v8 = 0;
    v9 = sub_1DEF8E038() | 0x8000000000000000;
  }

  else
  {
    v10 = -1 << *(a4 + 32);
    v7 = ~v10;
    v6 = a4 + 64;
    v11 = -v10;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v8 = v12 & *(a4 + 64);
    v9 = a4;
  }

  v14 = 0;
  v23 = v9;
  if ((v9 & 0x8000000000000000) != 0)
  {
    goto LABEL_14;
  }

LABEL_8:
  v15 = v14;
  v16 = v8;
  v17 = v14;
  if (v8)
  {
LABEL_12:
    v8 = (v16 - 1) & v16;
    v18 = (v17 << 9) | (8 * __clz(__rbit64(v16)));
    v19 = *(v9 + 56);
    v20 = *(*(v9 + 48) + v18);
    v21 = *(v19 + v18);

    if (v20)
    {
      while (1)
      {
        v24[0] = v20;
        v24[1] = v21;
        a2(&v25, v24);
        if (v5)
        {
          break;
        }

        v14 = v17;
        v9 = v23;
        if ((v23 & 0x8000000000000000) == 0)
        {
          goto LABEL_8;
        }

LABEL_14:
        if (sub_1DEF8E0D8())
        {
          type metadata accessor for Record.ID(0);
          swift_dynamicCast();
          v20 = v24[0];
          type metadata accessor for RecordMetadata();
          swift_dynamicCast();
          v21 = v24[0];
          v17 = v14;
          if (v20)
          {
            continue;
          }
        }

        goto LABEL_19;
      }

      sub_1DEE2774C();
    }

    else
    {
LABEL_19:
      sub_1DEE2774C();
      return v25;
    }
  }

  else
  {
    while (1)
    {
      v17 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v17 >= ((v7 + 64) >> 6))
      {
        goto LABEL_19;
      }

      v16 = *(v6 + 8 * v17);
      ++v15;
      if (v16)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1DEF352F8(uint64_t result, void (*a2)(uint64_t *, char *), uint64_t a3, uint64_t a4)
{
  v9 = result;
  v5 = *(a4 + 16);
  if (v5)
  {
    for (i = (a4 + 32); ; ++i)
    {
      v8 = *i;
      a2(&v9, &v8);
      if (v4)
      {
        break;
      }

      if (!--v5)
      {
        return v9;
      }
    }
  }

  return result;
}

uint64_t MetadataStoring.mismatchedZoneVersions(for:remoteZoneVersions:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v127 = sub_1DEF8D3F8();
  v8 = *(v127 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v127);
  v109 = &v105 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4708, &qword_1DEF95DC0);
  v11 = *(*(v116 - 8) + 64);
  MEMORY[0x1EEE9AC00](v116);
  v131 = &v105 - v12;
  v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4F60, &qword_1DEF95DC8);
  v13 = *(*(v125 - 8) + 64);
  MEMORY[0x1EEE9AC00](v125);
  v15 = &v105 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3D98, &qword_1DEF916B0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v120 = &v105 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v134 = &v105 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v136 = &v105 - v22;
  v122 = type metadata accessor for ZoneVersion();
  v119 = *(v122 - 8);
  v23 = *(v119 + 64);
  MEMORY[0x1EEE9AC00](v122);
  v106 = &v105 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v105 - v26;
  MEMORY[0x1EEE9AC00](v28);
  v118 = &v105 - v29;
  MEMORY[0x1EEE9AC00](v30);
  v112 = &v105 - v31;
  v33 = MEMORY[0x1EEE9AC00](v32);
  v130 = &v105 - v34;
  (*(a4 + 24))(a1, a3, a4, v33);

  v35 = sub_1DEE4FCFC(v129);

  v37 = sub_1DEE4FCFC(v36);
  v38 = sub_1DEF37604(v35, v37);
  v39 = v38;
  if ((v38 & 0xC000000000000001) != 0)
  {
    sub_1DEF8DE58();
    type metadata accessor for Zone.ID();
    sub_1DEF41E4C(&qword_1ECDE2EA0, type metadata accessor for Zone.ID);
    sub_1DEF8DC18();
    v39 = v139;
    v40 = v140;
    v41 = v141;
    v42 = v142;
    v43 = v143;
  }

  else
  {
    v42 = 0;
    v44 = -1 << *(v38 + 32);
    v40 = v38 + 56;
    v41 = ~v44;
    v45 = -v44;
    if (v45 < 64)
    {
      v46 = ~(-1 << v45);
    }

    else
    {
      v46 = -1;
    }

    v43 = v46 & *(v38 + 56);
  }

  v126 = a2;
  v107 = v41;
  v47 = (v41 + 64) >> 6;
  v117 = (v8 + 56);
  v135 = (v119 + 56);
  v123 = (v119 + 48);
  v114 = (v8 + 48);
  v108 = (v8 + 32);
  v110 = (v8 + 8);
  v113 = MEMORY[0x1E69E7CC8];
  v48 = v130;
  v128 = v40;
  v121 = v47;
  v115 = v15;
  v124 = v39;
  v111 = v27;
  while (2)
  {
    v49 = v42;
    v50 = v43;
    while (1)
    {
      if (v39 < 0)
      {
        v56 = sub_1DEF8DE88();
        if (!v56 || (v137 = v56, type metadata accessor for Zone.ID(), swift_dynamicCast(), v55 = v138, v42 = v49, v54 = v50, !v138))
        {
LABEL_52:
          sub_1DEE2774C();

          return v113;
        }
      }

      else
      {
        v52 = v49;
        v53 = v50;
        v42 = v49;
        if (!v50)
        {
          while (1)
          {
            v42 = v52 + 1;
            if (__OFADD__(v52, 1))
            {
              break;
            }

            if (v42 >= v47)
            {
              goto LABEL_52;
            }

            v53 = *(v40 + 8 * v42);
            ++v52;
            if (v53)
            {
              goto LABEL_16;
            }
          }

          __break(1u);
LABEL_54:
          __break(1u);
          goto LABEL_55;
        }

LABEL_16:
        v54 = (v53 - 1) & v53;
        v55 = *(*(v39 + 48) + ((v42 << 9) | (8 * __clz(__rbit64(v53)))));

        if (!v55)
        {
          goto LABEL_52;
        }
      }

      v132 = v54;
      v57 = v129;
      if (*(v129 + 16) && (v58 = sub_1DEEAF20C(v55), (v59 & 1) != 0))
      {
        v60 = v112;
        sub_1DEE28090(*(v57 + 56) + *(v119 + 72) * v58, v112, type metadata accessor for ZoneVersion);
        v61 = v60;
        v48 = v130;
        sub_1DEE139C0(v61, v130, type metadata accessor for ZoneVersion);
      }

      else
      {
        (*v117)(v48, 1, 1, v127);
      }

      v62 = v126;
      v63 = v136;
      sub_1DEE28090(v48, v136, type metadata accessor for ZoneVersion);
      v64 = *v135;
      v65 = v63;
      v66 = v122;
      (*v135)(v65, 0, 1, v122);
      v67 = *(v62 + 16);
      v133 = v55;
      if (v67)
      {
        v68 = sub_1DEEAF20C(v55);
        if (v69)
        {
          sub_1DEE28090(*(v62 + 56) + *(v119 + 72) * v68, v134, type metadata accessor for ZoneVersion);
        }
      }

      v70 = v134;
      v64();
      v71 = *(v125 + 48);
      v72 = v136;
      sub_1DEE17214(v136, v15, &qword_1ECDE3D98, &qword_1DEF916B0);
      sub_1DEE17214(v70, &v15[v71], &qword_1ECDE3D98, &qword_1DEF916B0);
      v73 = *v123;
      if ((*v123)(v15, 1, v66) != 1)
      {
        break;
      }

      sub_1DEE171B4(v70, &qword_1ECDE3D98, &qword_1DEF916B0);
      sub_1DEE171B4(v72, &qword_1ECDE3D98, &qword_1DEF916B0);
      v51 = v73(&v15[v71], 1, v66);
      v48 = v130;
      v39 = v124;
      if (v51 != 1)
      {
        goto LABEL_36;
      }

LABEL_10:
      sub_1DEE171B4(v15, &qword_1ECDE3D98, &qword_1DEF916B0);
      sub_1DEE27460(v48, type metadata accessor for ZoneVersion);

      v49 = v42;
      v50 = v132;
      v40 = v128;
      v47 = v121;
    }

    v74 = v120;
    sub_1DEE17214(v15, v120, &qword_1ECDE3D98, &qword_1DEF916B0);
    if (v73(&v15[v71], 1, v66) == 1)
    {
      sub_1DEE171B4(v134, &qword_1ECDE3D98, &qword_1DEF916B0);
      sub_1DEE171B4(v136, &qword_1ECDE3D98, &qword_1DEF916B0);
      sub_1DEE27460(v74, type metadata accessor for ZoneVersion);
      v48 = v130;
      v39 = v124;
LABEL_36:
      v87 = v15;
      v88 = &qword_1ECDE4F60;
      v89 = &qword_1DEF95DC8;
      goto LABEL_41;
    }

    v75 = &v15[v71];
    v76 = v118;
    sub_1DEE139C0(v75, v118, type metadata accessor for ZoneVersion);
    v77 = *(v116 + 48);
    v78 = v131;
    sub_1DEE28090(v74, v131, type metadata accessor for ZoneVersion);
    sub_1DEE28090(v76, v78 + v77, type metadata accessor for ZoneVersion);
    v79 = *v114;
    v80 = v127;
    if ((*v114)(v78, 1, v127) == 1)
    {
      sub_1DEE27460(v76, type metadata accessor for ZoneVersion);
      sub_1DEE171B4(v134, &qword_1ECDE3D98, &qword_1DEF916B0);
      sub_1DEE171B4(v136, &qword_1ECDE3D98, &qword_1DEF916B0);
      v81 = v79(v131 + v77, 1, v80);
      v15 = v115;
      v48 = v130;
      if (v81 != 1)
      {
        goto LABEL_38;
      }

LABEL_34:
      sub_1DEE27460(v131, type metadata accessor for ZoneVersion);
      sub_1DEE27460(v120, type metadata accessor for ZoneVersion);
      v39 = v124;
      goto LABEL_10;
    }

    v82 = v131;
    v83 = v111;
    sub_1DEE28090(v131, v111, type metadata accessor for ZoneVersion);
    if (v79(v82 + v77, 1, v80) != 1)
    {
      v84 = v109;
      (*v108)(v109, v131 + v77, v80);
      v85 = sub_1DEF8D3A8();
      v86 = *v110;
      (*v110)(v84, v80);
      sub_1DEE27460(v118, type metadata accessor for ZoneVersion);
      sub_1DEE171B4(v134, &qword_1ECDE3D98, &qword_1DEF916B0);
      sub_1DEE171B4(v136, &qword_1ECDE3D98, &qword_1DEF916B0);
      v86(v83, v80);
      v15 = v115;
      v48 = v130;
      if ((v85 & 1) == 0)
      {
        sub_1DEE27460(v131, type metadata accessor for ZoneVersion);
        goto LABEL_40;
      }

      goto LABEL_34;
    }

    sub_1DEE27460(v118, type metadata accessor for ZoneVersion);
    sub_1DEE171B4(v134, &qword_1ECDE3D98, &qword_1DEF916B0);
    sub_1DEE171B4(v136, &qword_1ECDE3D98, &qword_1DEF916B0);
    (*v110)(v83, v80);
    v15 = v115;
    v48 = v130;
LABEL_38:
    sub_1DEE171B4(v131, &qword_1ECDE4708, &qword_1DEF95DC0);
LABEL_40:
    v39 = v124;
    sub_1DEE27460(v120, type metadata accessor for ZoneVersion);
    v87 = v15;
    v88 = &qword_1ECDE3D98;
    v89 = &qword_1DEF916B0;
LABEL_41:
    sub_1DEE171B4(v87, v88, v89);
    sub_1DEE28090(v48, v106, type metadata accessor for ZoneVersion);
    v90 = v113;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v138 = v90;
    v92 = v133;
    v93 = sub_1DEEAF20C(v133);
    v95 = v90[2];
    v96 = (v94 & 1) == 0;
    v97 = __OFADD__(v95, v96);
    v98 = v95 + v96;
    if (v97)
    {
      goto LABEL_54;
    }

    v99 = v94;
    if (v90[3] >= v98)
    {
      v43 = v132;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v103 = v93;
        sub_1DEEB8A3C();
        v43 = v132;
        v93 = v103;
      }

LABEL_47:
      v113 = v138;
      if (v99)
      {
        sub_1DEE1B4DC(v106, v138[7] + *(v119 + 72) * v93, type metadata accessor for ZoneVersion);

        sub_1DEE27460(v48, type metadata accessor for ZoneVersion);
      }

      else
      {
        v138[(v93 >> 6) + 8] |= 1 << v93;
        *(v113[6] + 8 * v93) = v92;
        sub_1DEE139C0(v106, v113[7] + *(v119 + 72) * v93, type metadata accessor for ZoneVersion);
        sub_1DEE27460(v48, type metadata accessor for ZoneVersion);
        v101 = v113[2];
        v97 = __OFADD__(v101, 1);
        v102 = v101 + 1;
        if (v97)
        {
LABEL_55:
          __break(1u);
          goto LABEL_56;
        }

        v113[2] = v102;
      }

      v40 = v128;
      v47 = v121;
      continue;
    }

    break;
  }

  sub_1DEEB3A30(v98, isUniquelyReferenced_nonNull_native);
  v93 = sub_1DEEAF20C(v92);
  if ((v99 & 1) == (v100 & 1))
  {
    v43 = v132;
    goto LABEL_47;
  }

LABEL_56:
  type metadata accessor for Zone.ID();
  result = sub_1DEF8E6E8();
  __break(1u);
  return result;
}