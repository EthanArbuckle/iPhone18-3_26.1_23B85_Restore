uint64_t sub_2331DF6BC()
{
  if ((sub_23328CB0C() & 1) == 0 || (sub_23328CB0C() & 1) == 0)
  {
    return 0;
  }

  v0 = sub_23328CC9C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v3 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  sub_23328CB2C();
  v4 = sub_23328CB5C();
  v5 = *(v1 + 8);
  v6 = v5(v17 - v3, v0);
  MEMORY[0x28223BE20](v6);
  sub_23328CB2C();
  v7 = sub_23328CB5C();
  result = v5(v17 - v3, v0);
  v9 = *(v4 + 16);
  if (v9)
  {
    v10 = 0;
    v11 = (v4 + 40);
    v12 = (v7 + 40);
    while (1)
    {
      v13 = *(v7 + 16);
      if (v10 == v13)
      {
        break;
      }

      if (v10 >= v13)
      {
        __break(1u);
        goto LABEL_21;
      }

      result = *(v11 - 1);
      if (result != *(v12 - 1) || *v11 != *v12)
      {
        result = sub_23328E54C();
        if ((result & 1) == 0)
        {
          break;
        }
      }

      ++v10;
      v11 += 2;
      v12 += 2;
      if (v9 == v10)
      {
        v10 = v9;
        break;
      }
    }
  }

  else
  {
    v10 = 0;
  }

  v15 = *(v7 + 16);

  result = sub_2331E2F8C(0x2E2E, 0xE200000000000000, v15 - v10);
  if (*(v4 + 16) < v9)
  {
LABEL_21:
    __break(1u);
  }

  else
  {
    v17[1] = result;
    sub_2331E3028(v4, v4 + 32, v10, (2 * v9) | 1);

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDE1A98, &unk_2332985F0);
    sub_2331E3128();
    v16 = sub_23328D8FC();

    return v16;
  }

  return result;
}

id _TTSVBFileManager.filesAtURLsAreEqual(_:_:)()
{
  v1 = *v0;
  sub_23328CC6C();
  v2 = sub_23328D95C();

  sub_23328CC6C();
  v3 = sub_23328D95C();

  v4 = [v1 contentsEqualAtPath:v2 andPath:v3];

  return v4;
}

uint64_t _TTSVBFileManager.cloneFile(from:to:)(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for TTSVBError.Reason(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v28[0] = v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = v28 - v9;
  v11 = *v2;
  v12 = sub_23328CC9C();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23328CC1C();
  v33 = v11;
  v34 = v16;
  v29 = v16;
  v35 = 0;
  v36 = 0;
  v37 = 3;
  v17 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1B18, &qword_23329B0D0) + 48);
  v30 = v13;
  v18 = *(v13 + 16);
  v28[1] = a1;
  v18(v10, a1, v12);
  v31 = v12;
  v18(&v10[v17], a2, v12);
  swift_storeEnumTagMultiPayload();
  v19 = v28[2];
  static TTSVBError.perform<A>(_:problem:reason:)(sub_2331E320C, v32, &v35, v10);
  if (v19)
  {
    sub_2331E22B4(v10, type metadata accessor for TTSVBError.Reason);
  }

  else
  {
    v20 = v28[0];
    v21 = sub_2331E22B4(v10, type metadata accessor for TTSVBError.Reason);
    v39 = 0;
    MEMORY[0x28223BE20](v21);
    v28[-2] = a2;
    v28[-1] = &v39;
    sub_23328CC3C();
    v22 = v39;
    if (v39)
    {
      v35 = 0;
      v36 = 0xE000000000000000;
      sub_23328E24C();

      v35 = 0xD000000000000019;
      v36 = 0x80000002332A9D10;
      v38 = v22;
      v23 = sub_23328E51C();
      MEMORY[0x23839B7E0](v23);

      MEMORY[0x23839B7E0](0x3D637273202ELL, 0xE600000000000000);
      v24 = sub_23328CC6C();
      MEMORY[0x23839B7E0](v24);

      MEMORY[0x23839B7E0](0x3D7473656420, 0xE600000000000000);
      v25 = sub_23328CC6C();
      MEMORY[0x23839B7E0](v25);

      v37 = 0;
      sub_233113B28();
      type metadata accessor for TTSVBError(0);
      sub_2331E2A38(&qword_280D3A0B0, type metadata accessor for TTSVBError);
      swift_allocError();
      TTSVBError.init(_:_:_:)(&v35, v20, 0, v26);
      swift_willThrow();
    }
  }

  return (*(v30 + 8))(v29, v31);
}

void *sub_2331DFDEC()
{
  v181 = *MEMORY[0x277D85DE8];
  v151 = sub_23328D6EC();
  v172 = *(v151 - 8);
  v1 = *(v172 + 64);
  MEMORY[0x28223BE20](v151 - 8);
  v156 = &v130 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v131 = type metadata accessor for _TTSVBFileManager.VoiceModelFilesystemRepresentation(0);
  v130 = *(v131 - 8);
  v3 = *(v130 + 64);
  MEMORY[0x28223BE20](v131);
  v134 = &v130 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for TTSVBVoiceModel();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v136 = &v130 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for TTSVBError.Reason(0);
  v171 = *(v8 - 8);
  v9 = v171[8];
  MEMORY[0x28223BE20](v8);
  v150 = &v130 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2A08, &qword_23329B0C0);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v149 = &v130 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v148 = &v130 - v16;
  MEMORY[0x28223BE20](v15);
  v18 = &v130 - v17;
  v19 = type metadata accessor for TTSVBPath();
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19);
  v22 = &v130 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = *v0;
  v24 = sub_23328CC9C();
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v24);
  v166 = v27;
  v28 = &v130 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_storeEnumTagMultiPayload();
  TTSVBPath.url.getter(v28);
  sub_2331E22B4(v22, type metadata accessor for TTSVBPath);
  v173 = v23;
  v177 = v23;
  v178 = 0;
  v179 = 0;
  v180 = -1;
  v133 = v28;
  _TTSVBFileManager.getChildDirectories(of:problem:)(v28, &v178);
  v29 = MEMORY[0x277D84F90];
  v177 = MEMORY[0x277D84F90];
  v31 = MEMORY[0x28223BE20](v30);
  v34 = v28;
  v35 = *(v31 + 16);
  v168 = v8;
  v174 = v24;
  v162 = v25;
  v163 = v18;
  v132 = v31;
  if (v35)
  {
    v170 = v32;
    v37 = *(v25 + 16);
    v36 = v25 + 16;
    v175 = v37;
    v38 = v31 + ((*(v36 + 64) + 32) & ~*(v36 + 64));
    v39 = *(v36 + 56);
    (v37)(v34, v38, v24);
    while (1)
    {
      v176 = v173;
      v178 = 0;
      v179 = 0;
      v180 = -1;
      _TTSVBFileManager.getChildDirectories(of:problem:)(v34, &v178);
      v41 = v40;
      v24 = v174;
      (*(v36 - 8))(v34, v174);
      v31 = sub_2331E201C(v41);
      v38 += v39;
      if (!--v35)
      {
        break;
      }

      (v175)(v34, v38, v24);
    }

    v29 = v177;
    v8 = v168;
    v25 = v162;
    v18 = v163;
  }

  v42 = v151;
  v161 = v29[2];
  if (!v161)
  {

    v45 = *(v25 + 8);
    v127 = MEMORY[0x277D84F90];
    goto LABEL_38;
  }

  v43 = 0;
  v160 = v29 + ((*(v25 + 80) + 32) & ~*(v25 + 80));
  v165 = v25 + 16;
  v44 = (v171 + 7);
  v147 = (v171 + 6);
  v170 = (v25 + 8);
  v141 = 0x80000002332A8E70;
  v140 = (v25 + 56);
  v139 = (v25 + 32);
  v138 = (v25 + 48);
  v155 = (v172 + 16);
  v154 = (v172 + 8);
  v135 = MEMORY[0x277D84F90];
  *&v33 = 138412290;
  v146 = v33;
  v169 = (v171 + 7);
  v159 = v29;
  do
  {
    if (v43 >= v29[2])
    {
      __break(1u);
LABEL_40:
      __break(1u);
LABEL_41:
      __break(1u);
    }

    v167 = 0;
    v171 = &v130;
    v172 = v43;
    v46 = *(v25 + 72);
    v47 = v166;
    MEMORY[0x28223BE20](v31);
    v48 = (v47 + 15) & 0xFFFFFFFFFFFFFFF0;
    v164 = *(v25 + 16);
    v164(&v130 - v48);
    v49 = *v44;
    (*v44)(v18, 1, 1, v8);
    LOBYTE(v177) = 0;
    sub_23328CC6C();
    v50 = sub_23328D95C();

    v51 = v173;
    [v173 fileExistsAtPath:v50 isDirectory:&v177];

    v175 = &v130 - v48;
    if (v177 != 1)
    {
      v178 = 0;
      v179 = 0;
      v180 = 3;
      v65 = v149;
      sub_233121D34(v18, v149, &qword_27DDE2A08, &qword_23329B0C0);
      v66 = *v147;
      if ((*v147)(v65, 1, v8) == 1)
      {
        v67 = v150;
        (v164)(v150, v175, v24);
        swift_storeEnumTagMultiPayload();
        v68 = v66(v65, 1, v8);
        v25 = v162;
        if (v68 != 1)
        {
          sub_233121E04(v65, &qword_27DDE2A08, &qword_23329B0C0);
        }
      }

      else
      {
        v67 = v150;
        sub_2331E28AC(v65, v150, type metadata accessor for TTSVBError.Reason);
        v25 = v162;
      }

      type metadata accessor for TTSVBError(0);
      sub_2331E2A38(&qword_280D3A0B0, type metadata accessor for TTSVBError);
      v63 = swift_allocError();
      TTSVBError.init(_:_:_:)(&v178, v67, 0, v69);
      swift_willThrow();
      sub_233121E04(v18, &qword_27DDE2A08, &qword_23329B0C0);
      v64 = v156;
      goto LABEL_20;
    }

    v52 = sub_233121E04(v18, &qword_27DDE2A08, &qword_23329B0C0);
    v158 = &v130;
    v177 = v51;
    MEMORY[0x28223BE20](v52);
    v53 = &v130 - v48;
    v178 = 0x7461447465737341;
    v179 = 0xE900000000000061;
    v54 = sub_23328CB3C();
    v55 = *(v54 - 8);
    v56 = v55[8];
    MEMORY[0x28223BE20](v54);
    v57 = *MEMORY[0x277CC91C8];
    v157 = v49;
    v153 = v55[13];
    v153(&v130 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0), v57, v54);
    v152 = sub_23311A294();
    sub_23328CC8C();
    v60 = v55[1];
    v58 = v55 + 1;
    v59 = v60;
    (v60)(&v130 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0), v54);
    v61 = v148;
    v157(v148, 1, 1, v168);
    v178 = 0;
    v179 = 0;
    v180 = 3;
    v62 = v167;
    _TTSVBFileManager.requireDirectoryExists(_:problem:reason:)(v53, &v178, v61);
    if (v62)
    {
      sub_2331220AC(0, 0, 3u);
      sub_233121E04(v61, &qword_27DDE2A08, &qword_23329B0C0);
      v24 = v174;
      (*v170)(v53, v174);
      v63 = v62;
      v42 = v151;
      v64 = v156;
      v25 = v162;
      v8 = v168;
LABEL_20:
      v70 = sub_233225314();
      (*v155)(v64, v70, v42);
      v71 = v63;
      v72 = sub_23328D6CC();
      v73 = sub_23328DE3C();

      if (os_log_type_enabled(v72, v73))
      {
        v74 = swift_slowAlloc();
        v75 = swift_slowAlloc();
        *v74 = v146;
        v76 = v63;
        v77 = _swift_stdlib_bridgeErrorToNSError();
        *(v74 + 4) = v77;
        *v75 = v77;
        _os_log_impl(&dword_233109000, v72, v73, "Error looking up voice models on disk: %@", v74, 0xCu);
        sub_233121E04(v75, &qword_27DDE2978, &qword_233299A50);
        v78 = v75;
        v8 = v168;
        MEMORY[0x23839CFD0](v78, -1, -1);
        v79 = v74;
        v24 = v174;
        MEMORY[0x23839CFD0](v79, -1, -1);
      }

      (*v154)(v64, v42);
      v45 = *v170;
      v31 = (*v170)(v175, v24);
      v18 = v163;
      goto LABEL_10;
    }

    v144 = v59;
    v145 = v58;
    sub_2331220AC(0, 0, 3u);
    sub_233121E04(v61, &qword_27DDE2A08, &qword_23329B0C0);
    v167 = *v170;
    v80 = v167(v53, v174);
    v142 = &v130;
    v81 = v166;
    MEMORY[0x28223BE20](v80);
    v82 = (v81 + 15) & 0xFFFFFFFFFFFFFFF0;
    v158 = &v130 - v82;
    v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE19A0, &unk_233290360);
    v157 = &v130;
    v84 = (*(*(v83 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
    v85 = MEMORY[0x28223BE20](v83 - 8);
    v87 = &v130 - v86;
    if (qword_280D3A8C0 != -1)
    {
      v85 = swift_once();
    }

    v143 = &v130;
    v88 = qword_280D3A8C8;
    v89 = MEMORY[0x28223BE20](v85);
    v90 = &v130 - v82;
    v178 = 0xD000000000000012;
    v179 = v141;
    MEMORY[0x28223BE20](v89);
    v153(&v130 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x277CC91E0], v54);
    sub_23328CC8C();
    (v144)(&v130 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0), v54);
    sub_23328CC6C();
    v91 = sub_23328D95C();

    v92 = [v88 fileExistsAtPath_];

    v24 = v174;
    if (v92)
    {
      (*v139)(v87, v90, v174);
      v93 = 0;
      v18 = v163;
      v45 = v167;
    }

    else
    {
      v45 = v167;
      v167(v90, v174);
      v93 = 1;
      v18 = v163;
    }

    (*v140)(v87, v93, 1, v24);
    if ((*v138)(v87, 1, v24) == 1)
    {
      v45(v175, v24);
      v31 = sub_233121E04(v87, &qword_27DDE19A0, &unk_233290360);
      v42 = v151;
      v8 = v168;
      v25 = v162;
    }

    else
    {
      (*v139)(v158, v87, v24);
      v94 = sub_23328CE8C();
      v137 = &v130;
      v157 = *(v94 - 8);
      v95 = *(v157 + 8);
      MEMORY[0x28223BE20](v94);
      v152 = v96;
      v145 = (v96 + 15) & 0xFFFFFFFFFFFFFFF0;
      v97 = (&v130 - v145);
      v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE19B0, &qword_233290370);
      v143 = &v130;
      v99 = v24;
      v100 = *(*(v98 - 8) + 64);
      v101 = MEMORY[0x28223BE20](v98 - 8);
      v144 = v102;
      v103 = (&v130 - v102);
      MEMORY[0x28223BE20](v101);
      v105 = &v130 - ((v104 + 15) & 0xFFFFFFFFFFFFFFF0);
      sub_23328CC1C();
      sub_23328CB9C();
      v45(v105, v99);
      v106 = v157;
      sub_23328CE2C();

      v107 = *(v106 + 6);
      v108 = v94;
      if (v107(v103, 1, v94) == 1)
      {
        goto LABEL_41;
      }

      v109 = *(v106 + 4);
      v153 = v97;
      v110 = v109(v97, v103, v94);
      v143 = &v130;
      v111 = MEMORY[0x28223BE20](v110);
      v112 = &v130 - v145;
      MEMORY[0x28223BE20](v111);
      v113 = (&v130 - v144);
      sub_23328CB9C();
      sub_23328CE2C();

      if (v107(v113, 1, v94) == 1)
      {
        goto LABEL_40;
      }

      v109(v112, v113, v94);
      v114 = v136;
      sub_2331DCFB0(v158, 0, 0, 0xFFu, v136);
      v8 = v168;
      v115 = v134;
      sub_2331E318C(v114, v134, type metadata accessor for TTSVBVoiceModel);
      v116 = v131;
      v24 = v174;
      (v164)(v115 + *(v131 + 20), v175, v174);
      v117 = *(v157 + 2);
      v117(v115 + *(v116 + 24), v153, v108);
      v118 = v115 + *(v116 + 28);
      v164 = v108;
      v117(v118, v112, v108);
      v119 = v135;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v25 = v162;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v119 = sub_2331E1DBC(0, v119[2] + 1, 1, v119, &qword_27DDE2E10, &unk_23329B2F0, type metadata accessor for _TTSVBFileManager.VoiceModelFilesystemRepresentation);
      }

      v42 = v151;
      v135 = v119;
      v122 = v119[2];
      v121 = v119[3];
      v18 = v163;
      v152 = v122 + 1;
      if (v122 >= v121 >> 1)
      {
        v135 = sub_2331E1DBC(v121 > 1, v122 + 1, 1, v135, &qword_27DDE2E10, &unk_23329B2F0, type metadata accessor for _TTSVBFileManager.VoiceModelFilesystemRepresentation);
      }

      sub_2331E22B4(v136, type metadata accessor for TTSVBVoiceModel);
      v123 = *(v157 + 1);
      v124 = v112;
      v125 = v164;
      v123(v124, v164);
      v123(v153, v125);
      v45 = v167;
      v167(v158, v24);
      v45(v175, v24);
      v126 = v135;
      v135[2] = v152;
      v31 = sub_2331E28AC(v134, v126 + ((*(v130 + 80) + 32) & ~*(v130 + 80)) + *(v130 + 72) * v122, type metadata accessor for _TTSVBFileManager.VoiceModelFilesystemRepresentation);
    }

LABEL_10:
    v29 = v159;
    v44 = v169;
    v43 = v172 + 1;
  }

  while (v161 != v172 + 1);

  v127 = v135;
LABEL_38:
  v45(v133, v24);
  v128 = *MEMORY[0x277D85DE8];
  return v127;
}

uint64_t sub_2331E143C(uint64_t a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2A08, &qword_23329B0C0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v28 = v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = v23 - v8;
  v10 = *v1;
  v32 = *v1;
  v29 = 0;
  v30 = 0;
  v31 = 3;
  v11 = type metadata accessor for TTSVBError.Reason(0);
  v26 = *(*(v11 - 8) + 56);
  v26(v9, 1, 1, v11);
  v27 = a1;
  _TTSVBFileManager.requireDirectoryExists(_:problem:reason:)(a1, &v29, v9);
  result = sub_233121E04(v9, &qword_27DDE2A08, &qword_23329B0C0);
  if (!v2)
  {
    v32 = v10;
    v24 = sub_23328CC9C();
    v25 = v23;
    v13 = *(v24 - 8);
    v14 = *(v13 + 64);
    MEMORY[0x28223BE20](v24);
    v16 = v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
    v29 = 0x7461447465737341;
    v30 = 0xE900000000000061;
    v17 = sub_23328CB3C();
    v23[1] = v23;
    v18 = *(v17 - 8);
    v19 = *(v18 + 64);
    MEMORY[0x28223BE20](v17);
    v21 = v23 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v18 + 104))(v21, *MEMORY[0x277CC91C8], v17);
    sub_23311A294();
    sub_23328CC8C();
    (*(v18 + 8))(v21, v17);
    v22 = v28;
    v26(v28, 1, 1, v11);
    v29 = 0;
    v30 = 0;
    v31 = 3;
    _TTSVBFileManager.requireDirectoryExists(_:problem:reason:)(v16, &v29, v22);
    sub_2331220AC(0, 0, 3u);
    sub_233121E04(v22, &qword_27DDE2A08, &qword_23329B0C0);
    return (*(v13 + 8))(v16, v24);
  }

  return result;
}

void sub_2331E17B4(uint64_t a1)
{
  v30 = *MEMORY[0x277D85DE8];
  v3 = type metadata accessor for TTSVBError.Reason(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v1;
  sub_23328CC6C();
  v8 = sub_23328D95C();

  v27 = 0;
  v9 = [v7 attributesOfFileSystemForPath:v8 error:&v27];

  v10 = v27;
  if (v9)
  {
    type metadata accessor for FileAttributeKey(0);
    sub_2331E2A38(&qword_27DDE2DE0, type metadata accessor for FileAttributeKey);
    v11 = sub_23328D89C();
    v12 = v10;

    v13 = *MEMORY[0x277CCA1D0];
    if (*(v11 + 16) && (v14 = sub_2331BFF0C(*MEMORY[0x277CCA1D0]), (v15 & 1) != 0))
    {
      sub_23311B0C0(*(v11 + 56) + 32 * v14, &v27);

      if (swift_dynamicCast())
      {
        goto LABEL_10;
      }
    }

    else
    {
    }

    v27 = 0;
    v28 = 0;
    v29 = 3;
    v16 = &v6[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1B10, &unk_233290990) + 48)];
    v17 = sub_23328CC9C();
    (*(*(v17 - 8) + 16))(v6, a1, v17);
    *v16 = sub_23328D98C();
    v16[1] = v18;
    swift_storeEnumTagMultiPayload();
    type metadata accessor for TTSVBError(0);
    sub_2331E2A38(&qword_280D3A0B0, type metadata accessor for TTSVBError);
    v19 = swift_allocError();
    TTSVBError.init(_:_:_:)(&v27, v6, 0, v20);
  }

  else
  {
    v21 = v27;
    v19 = sub_23328CA7C();
  }

  swift_willThrow();
  v27 = 0;
  v28 = 0;
  v29 = 3;
  v22 = sub_23328CC9C();
  (*(*(v22 - 8) + 16))(v6, a1, v22);
  swift_storeEnumTagMultiPayload();
  v23 = sub_23328CA6C();
  type metadata accessor for TTSVBError(0);
  sub_2331E2A38(&qword_280D3A0B0, type metadata accessor for TTSVBError);
  swift_allocError();
  TTSVBError.init(_:_:_:)(&v27, v6, v23, v24);
  swift_willThrow();

LABEL_10:
  v25 = *MEMORY[0x277D85DE8];
}

uint64_t sub_2331E1B8C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2728, &qword_23329F3B0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_233290950;
  v1 = *MEMORY[0x277CBE8A8];
  *(inited + 32) = *MEMORY[0x277CBE8A8];
  v2 = *MEMORY[0x277CBE7D0];
  v3 = *MEMORY[0x277CBE908];
  *(inited + 40) = *MEMORY[0x277CBE7D0];
  *(inited + 48) = v3;
  v4 = v1;
  v5 = v2;
  v6 = v3;
  v7 = sub_23317473C(inited);
  swift_setDeallocating();
  type metadata accessor for URLResourceKey(0);
  result = swift_arrayDestroy();
  qword_27DDF7AC8 = v7;
  return result;
}

id sub_2331E1C54()
{
  result = [objc_opt_self() defaultManager];
  qword_280D3A8C8 = result;
  return result;
}

id TTSVBFileManager.getter@<X0>(void *a1@<X8>)
{
  if (qword_280D3A8C0 != -1)
  {
    v4 = a1;
    swift_once();
    a1 = v4;
  }

  v2 = qword_280D3A8C8;
  *a1 = qword_280D3A8C8;

  return v2;
}

uint64_t sub_2331E1D00()
{
  sub_2331E2A38(&qword_27DDE2DE0, type metadata accessor for FileAttributeKey);
  sub_2331E2A38(&qword_27DDE2E08, type metadata accessor for FileAttributeKey);

  return sub_23328E36C();
}

size_t sub_2331E1DBC(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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

void *sub_2331E1F98(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2728, &qword_23329F3B0);
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
  v4[3] = 2 * (v9 >> 3);
  return result;
}

uint64_t sub_2331E201C(uint64_t result)
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
  v7 = *v1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= v3[3] >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v16 = v4 + v2;
  }

  else
  {
    v16 = v4;
  }

  v3 = sub_2331E1DBC(isUniquelyReferenced_nonNull_native, v16, 1, v3, &qword_27DDE27C8, &qword_2332990D8, MEMORY[0x28220BE08]);
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
  v9 = (v3[3] >> 1) - v3[2];
  result = sub_23328CC9C();
  v10 = *(result - 8);
  if (v9 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v12 = *(v10 + 72);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v13 = v3[2];
  v14 = __OFADD__(v13, v2);
  v15 = v13 + v2;
  if (!v14)
  {
    v3[2] = v15;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_2331E2160(void *result, void *a2, uint64_t a3, uint64_t a4)
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
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v18 = *(*(a4 + 48) + ((v12 << 9) | (8 * v17)));
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

uint64_t sub_2331E22B4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

id sub_2331E2314()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2E20, qword_23329F460);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_233297B30;
  v5 = *MEMORY[0x277CCA180];
  *(inited + 32) = *MEMORY[0x277CCA180];
  v6 = v5;
  v7 = sub_23328DD5C();
  *(inited + 64) = sub_233144EEC(0, &qword_280D39B68, 0x277CCABB0);
  *(inited + 40) = v7;
  sub_2331E2E64(inited);
  swift_setDeallocating();
  sub_233121E04(inited + 32, &qword_27DDE2E28, &qword_23329B310);
  type metadata accessor for FileAttributeKey(0);
  sub_2331E2A38(&qword_27DDE2DE0, type metadata accessor for FileAttributeKey);
  v8 = sub_23328D87C();

  sub_23328CC6C();
  v9 = sub_23328D95C();

  v12 = 0;
  LODWORD(v1) = [v1 setAttributes:v8 ofItemAtPath:v9 error:&v12];

  if (v1)
  {
    return v12;
  }

  v11 = v12;
  sub_23328CA7C();

  return swift_willThrow();
}

unint64_t sub_2331E24D4()
{
  result = qword_27DDE2DC8;
  if (!qword_27DDE2DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDE2DC8);
  }

  return result;
}

id sub_2331E2560()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = sub_23328CBCC();
  v6 = 0;
  LODWORD(v2) = [v2 removeItemAtURL:v3 error:&v6];

  if (v2)
  {
    return v6;
  }

  v5 = v6;
  sub_23328CA7C();

  return swift_willThrow();
}

id sub_2331E2610(SEL *a1)
{
  v3 = v1[2];
  v4 = v1[4];
  v5 = v1[3];
  v6 = sub_23328CBCC();
  v7 = sub_23328CBCC();
  v10 = 0;
  LODWORD(a1) = [v3 *a1];

  if (a1)
  {
    return v10;
  }

  v9 = v10;
  sub_23328CA7C();

  return swift_willThrow();
}

uint64_t sub_2331E26CC@<X0>(uint64_t *a1@<X8>)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[5];
  v7 = v1[4];
  result = sub_23328C89C();
  if (!v2)
  {
    *a1 = result;
    a1[1] = v9;
  }

  return result;
}

uint64_t sub_2331E2704()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  return sub_23328CCEC();
}

uint64_t sub_2331E2740()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[5];
  v4 = v0[6];
  v5 = v0[7];
  v6 = v0[4];
  return sub_23328C83C();
}

uint64_t sub_2331E2774(void *a1)
{
  v3 = *(sub_23328CC9C() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;
  v7 = v1 + v5;
  v8 = *(v1 + v6);
  v9 = *v7;
  v10 = *(v7 + 8);

  return sub_2331DE204(a1, v1 + v4, v9, v10, v8);
}

uint64_t block_copy_helper_5(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_2331E2858(uint64_t a1, void *a2)
{
  swift_beginAccess();
  v4 = *(v2 + 16);
  *(v2 + 16) = a2;

  v5 = a2;
  return 0;
}

uint64_t sub_2331E28AC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

id sub_2331E2914()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = sub_23328CBCC();
  v6 = 0;
  LODWORD(v2) = [v2 createDirectoryAtURL:v3 withIntermediateDirectories:1 attributes:0 error:&v6];

  if (v2)
  {
    return v6;
  }

  v5 = v6;
  sub_23328CA7C();

  return swift_willThrow();
}

uint64_t sub_2331E29AC()
{
  v1 = *(v0 + 16);
  v3 = *(v0 + 24);
  return sub_23328CC3C();
}

uint64_t sub_2331E2A38(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2331E2A8C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
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

uint64_t sub_2331E2AD4(uint64_t result, int a2, int a3)
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

uint64_t sub_2331E2B48()
{
  result = sub_23328CC9C();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_2331E2BE4()
{
  result = type metadata accessor for TTSVBVoiceModel();
  if (v1 <= 0x3F)
  {
    result = sub_23328CC9C();
    if (v2 <= 0x3F)
    {
      result = sub_23328CE8C();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_2331E2D58@<X0>(uint64_t *a1@<X8>)
{
  v4 = *(v1 + 16);
  result = sub_23328CCAC();
  if (!v2)
  {
    *a1 = result;
    a1[1] = v6;
  }

  return result;
}

uint64_t sub_2331E2D8C()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  type metadata accessor for TTSVBVoiceModel();
  sub_2331E2A38(&qword_27DDE1978, type metadata accessor for TTSVBVoiceModel);
  return sub_23328C83C();
}

uint64_t sub_2331E2E2C(char *a1)
{
  v2 = *(v1 + 16);
  result = clonefile(*(v1 + 24), a1, 0);
  *v2 = result;
  return result;
}

unint64_t sub_2331E2E64(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2E30, &qword_23329B318);
    v3 = sub_23328E35C();
    v4 = a1 + 32;

    while (1)
    {
      sub_233121D34(v4, &v11, &qword_27DDE2E28, &qword_23329B310);
      v5 = v11;
      result = sub_2331BFF0C(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_233145134(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
      if (!--v1)
      {

        return v3;
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

void *sub_2331E2F8C(void *result, uint64_t a2, uint64_t a3)
{
  if (a3 < 0)
  {
    __break(1u);
  }

  else
  {
    if (!a3)
    {
      return MEMORY[0x277D84F90];
    }

    v4 = result;
    v6 = sub_23328DC3C();
    v7 = v6;
    v6[2] = a3;
    v6[4] = v4;
    v6[5] = a2;
    v8 = a3 - 1;
    if (v8)
    {
      v9 = v6 + 7;
      do
      {
        *(v9 - 1) = v4;
        *v9 = a2;

        v9 += 2;
        --v8;
      }

      while (v8);
    }

    return v7;
  }

  return result;
}

void sub_2331E3028(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = a4 >> 1;
  v6 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
    goto LABEL_18;
  }

  v7 = *v4;
  v8 = *(*v4 + 2);
  v9 = v8 + v6;
  if (__OFADD__(v8, v6))
  {
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v11 = *v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || v9 > *(v7 + 3) >> 1)
  {
    goto LABEL_8;
  }

  if (v5 == a3)
  {
    while (v6 > 0)
    {
      __break(1u);
LABEL_8:
      if (v8 <= v9)
      {
        v13 = v8 + v6;
      }

      else
      {
        v13 = v8;
      }

      isUniquelyReferenced_nonNull_native = sub_233143EE0(isUniquelyReferenced_nonNull_native, v13, 1, v7);
      v7 = isUniquelyReferenced_nonNull_native;
      if (v5 != a3)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_16;
  }

LABEL_12:
  if ((*(v7 + 3) >> 1) - *(v7 + 2) < v6)
  {
    goto LABEL_19;
  }

  swift_arrayInitWithCopy();
  if (v6 <= 0)
  {
LABEL_16:
    *v4 = v7;
    return;
  }

  v14 = *(v7 + 2);
  v15 = __OFADD__(v14, v6);
  v16 = v14 + v6;
  if (!v15)
  {
    *(v7 + 2) = v16;
    goto LABEL_16;
  }

LABEL_20:
  __break(1u);
}

unint64_t sub_2331E3128()
{
  result = qword_280D39BB0;
  if (!qword_280D39BB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27DDE1A98, &unk_2332985F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D39BB0);
  }

  return result;
}

uint64_t sub_2331E318C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

TextToSpeechVoiceBankingSupport::TTSVBDataStore::Configuration_optional __swiftcall TTSVBDataStore.Configuration.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_23328E37C();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t TTSVBDataStore.Configuration.rawValue.getter()
{
  if (*v0)
  {
    result = 0x6D656144636E7973;
  }

  else
  {
    result = 0x6E65696C43637078;
  }

  *v0;
  return result;
}

uint64_t sub_2331E33A8(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x6D656144636E7973;
  }

  else
  {
    v4 = 0x6E65696C43637078;
  }

  if (v3)
  {
    v5 = 0xE900000000000074;
  }

  else
  {
    v5 = 0xEA00000000006E6FLL;
  }

  if (*a2)
  {
    v6 = 0x6D656144636E7973;
  }

  else
  {
    v6 = 0x6E65696C43637078;
  }

  if (*a2)
  {
    v7 = 0xEA00000000006E6FLL;
  }

  else
  {
    v7 = 0xE900000000000074;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_23328E54C();
  }

  return v9 & 1;
}

uint64_t sub_2331E3458()
{
  v1 = *v0;
  sub_23328E61C();
  sub_23328DA3C();

  return sub_23328E66C();
}

uint64_t sub_2331E34E4()
{
  *v0;
  sub_23328DA3C();
}

uint64_t sub_2331E355C()
{
  v1 = *v0;
  sub_23328E61C();
  sub_23328DA3C();

  return sub_23328E66C();
}

uint64_t sub_2331E35E4@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_23328E37C();

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

void sub_2331E3644(uint64_t *a1@<X8>)
{
  v2 = 0x6E65696C43637078;
  if (*v1)
  {
    v2 = 0x6D656144636E7973;
  }

  v3 = 0xE900000000000074;
  if (*v1)
  {
    v3 = 0xEA00000000006E6FLL;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t TTSVBDataStore.XPCServiceConfig.storeURL.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_23328CC9C();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

id TTSVBDataStore.XPCServiceConfig.model.getter()
{
  v1 = *(v0 + *(type metadata accessor for TTSVBDataStore.XPCServiceConfig(0) + 20));

  return v1;
}

uint64_t TTSVBDataStore.XPCServiceConfig.options.getter()
{
  v1 = *(v0 + *(type metadata accessor for TTSVBDataStore.XPCServiceConfig(0) + 24));
}

uint64_t TTSVBDataStore.XPCServiceConfig.serviceName.getter()
{
  v1 = (v0 + *(type metadata accessor for TTSVBDataStore.XPCServiceConfig(0) + 28));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t TTSVBDataStore.XPCServiceConfig.init(storeURL:model:serviceName:options:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v12 = sub_23328CC9C();
  v13 = *(v12 - 8);
  (*(v13 + 16))(a6, a1, v12);
  v14 = type metadata accessor for TTSVBDataStore.XPCServiceConfig(0);
  *(a6 + v14[5]) = a2;
  v15 = (a6 + v14[7]);
  *v15 = a3;
  v15[1] = a4;
  v16 = *MEMORY[0x277CBE340];
  sub_23328D98C();
  v17 = a2;

  v18 = MEMORY[0x277D837D0];
  sub_23328E1EC();
  v23 = v18;
  *&v22 = a3;
  *(&v22 + 1) = a4;
  sub_233145134(&v22, v21);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_2331EAB7C(v21, v24, isUniquelyReferenced_nonNull_native);

  (*(v13 + 8))(a1, v12);
  result = sub_2331EACC8(v24);
  *(a6 + v14[6]) = a5;
  return result;
}

uint64_t TTSVBDataStore.eventPublisher.getter()
{
  v2 = *(v0 + OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport14TTSVBDataStore_eventSubject);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2E38, &qword_23329B340);
  sub_23315246C(qword_280D39BC8, &qword_27DDE2E38, &qword_23329B340);
  return sub_23328D76C();
}

id sub_2331E3A78(unsigned __int8 *a1, char *a2)
{
  v66 = a2;
  ObjectType = swift_getObjectType();
  v4 = sub_23328D6EC();
  v64 = *(v4 - 8);
  v65 = v4;
  v5 = *(v64 + 64);
  MEMORY[0x28223BE20](v4);
  v63 = v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = sub_23328DEAC();
  v7 = *(v62 - 1);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v62);
  v10 = v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_23328DE7C();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v13 = sub_23328D80C();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v61 = *a1;
  v15 = OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport14TTSVBDataStore_eventSubject;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2E38, &qword_23329B340);
  v17 = *(v16 + 48);
  v18 = *(v16 + 52);
  swift_allocObject();
  *&v2[v15] = sub_23328D72C();
  v59 = OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport14TTSVBDataStore_queue;
  v19 = sub_233144EEC(0, &qword_280D3A220, 0x277D85C78);
  v57 = "com.apple.aps.voicebankingd";
  v58 = v19;
  sub_23328D7EC();
  v68 = MEMORY[0x277D84F90];
  v56[2] = sub_2331CCB20(&qword_280D3A230, MEMORY[0x277D85230]);
  v56[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDE2B80, qword_233290290);
  sub_23315246C(&qword_280D3A250, &unk_27DDE2B80, qword_233290290);
  sub_23328E14C();
  v20 = *MEMORY[0x277D85260];
  v21 = *(v7 + 104);
  v56[0] = v7 + 104;
  v21(v10, v20, v62);
  *&v2[v59] = sub_23328DEDC();
  v59 = OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport14TTSVBDataStore_calloutQueue;
  v57 = "anking.store.private";
  sub_23328D7EC();
  v68 = MEMORY[0x277D84F90];
  sub_23328E14C();
  v21(v10, v20, v62);
  *&v2[v59] = sub_23328DEDC();
  v22 = &v2[OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport14TTSVBDataStore_cloudStoreName];
  *v22 = 0x6563696F56535454;
  v22[1] = 0xEF676E696B6E6142;
  v23 = &v2[OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport14TTSVBDataStore_localStoreName];
  *v23 = 0xD000000000000014;
  v23[1] = 0x80000002332A9E50;
  v24 = &v2[OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport14TTSVBDataStore_managedObjectModelName];
  *v24 = 0x6563696F56535454;
  v24[1] = 0xEF676E696B6E6142;
  v25 = OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport14TTSVBDataStore____lazy_storage___cloudDatastoreURL;
  v26 = sub_23328CC9C();
  v27 = *(v26 - 8);
  v28 = v27;
  v29 = v27[7];
  v29(&v2[v25], 1, 1, v26);
  v29(&v2[OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport14TTSVBDataStore____lazy_storage___localDatastoreURL], 1, 1, v26);
  v29(&v2[OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport14TTSVBDataStore____lazy_storage___managedObjectModelURL], 1, 1, v26);
  *&v2[OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport14TTSVBDataStore____lazy_storage___container] = 0;
  v2[OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport14TTSVBDataStore_queue_shouldAttemptLoad] = 1;
  v30 = OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport14TTSVBDataStore_queue_loadError;
  v31 = type metadata accessor for TTSVBError(0);
  (*(*(v31 - 8) + 56))(&v2[v30], 1, 1, v31);
  v32 = &v2[OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport14TTSVBDataStore_persistentHistoryProcessingDatesPreferenceKey];
  *v32 = 0xD000000000000020;
  v32[1] = 0x80000002332A9E70;
  v2[OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport14TTSVBDataStore_configuration] = v61;
  v33 = v27[2];
  v62 = v2;
  v34 = v66;
  v33(&v2[OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport14TTSVBDataStore_voiceBankingRootURL], v66, v26);
  v35 = sub_233225440();
  v36 = (*(v64 + 16))(v63, v35, v65);
  v37 = v27[8];
  MEMORY[0x28223BE20](v36);
  v39 = v56 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33(v39, v34, v26);
  v40 = sub_23328D6CC();
  v41 = sub_23328DE1C();
  if (os_log_type_enabled(v40, v41))
  {
    v42 = swift_slowAlloc();
    v59 = swift_slowAlloc();
    v68 = v59;
    *v42 = 136315650;
    if (v61)
    {
      v43 = 0x6D656144636E7973;
    }

    else
    {
      v43 = 0x6E65696C43637078;
    }

    if (v61)
    {
      v44 = 0xEA00000000006E6FLL;
    }

    else
    {
      v44 = 0xE900000000000074;
    }

    v45 = sub_23311A8F4(v43, v44, &v68);

    *(v42 + 4) = v45;
    *(v42 + 12) = 2080;
    v46 = sub_23328CC6C();
    v48 = v47;
    v49 = v28[1];
    v49(v39, v26);
    v50 = sub_23311A8F4(v46, v48, &v68);

    *(v42 + 14) = v50;
    *(v42 + 22) = 2080;
    if (TTSVBIsPersonalVoiceVersion2Enabled())
    {
      v51 = 50;
    }

    else
    {
      v51 = 49;
    }

    v52 = sub_23311A8F4(v51, 0xE100000000000000, &v68);

    *(v42 + 24) = v52;
    _os_log_impl(&dword_233109000, v40, v41, "Initializing datastore with config=%s rootURL=%s PersonalVoiceVersion=%s", v42, 0x20u);
    v53 = v59;
    swift_arrayDestroy();
    MEMORY[0x23839CFD0](v53, -1, -1);
    MEMORY[0x23839CFD0](v42, -1, -1);
  }

  else
  {

    v49 = v28[1];
    v49(v39, v26);
  }

  (*(v64 + 8))(v63, v65);
  v67.receiver = v62;
  v67.super_class = ObjectType;
  v54 = objc_msgSendSuper2(&v67, sel_init);
  v49(v66, v26);
  return v54;
}

uint64_t sub_2331E42F8@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *a1;
  swift_beginAccess();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE19A0, &unk_233290360);
  v8 = (*(*(v7 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v7 - 8);
  sub_233121D34(v3 + v6, &v20[-v8], &qword_27DDE19A0, &unk_233290360);
  v9 = sub_23328CC9C();
  v10 = *(v9 - 8);
  if ((*(v10 + 48))(&v20[-v8], 1, v9) != 1)
  {
    return (*(v10 + 32))(a3, &v20[-v8], v9);
  }

  v11 = sub_233121E04(&v20[-v8], &qword_27DDE19A0, &unk_233290360);
  v12 = *(v10 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v20[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = (v3 + *a2);
  v16 = *v15;
  v17 = v15[1];
  sub_23328CBEC();
  sub_23328CBFC();
  v18 = (*(v10 + 8))(v14, v9);
  MEMORY[0x28223BE20](v18);
  (*(v10 + 16))(&v20[-v8], a3, v9);
  (*(v10 + 56))(&v20[-v8], 0, 1, v9);
  swift_beginAccess();
  sub_2331BD410(&v20[-v8], v3 + v6, &qword_27DDE19A0, &unk_233290360);
  return swift_endAccess();
}

uint64_t sub_2331E458C@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport14TTSVBDataStore____lazy_storage___managedObjectModelURL;
  swift_beginAccess();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE19A0, &unk_233290360);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v23 - v6;
  sub_233121D34(v1 + v3, &v23 - v6, &qword_27DDE19A0, &unk_233290360);
  v8 = sub_23328CC9C();
  v9 = *(v8 - 8);
  if ((*(v9 + 48))(v7, 1, v8) != 1)
  {
    return (*(v9 + 32))(a1, v7, v8);
  }

  sub_233121E04(v7, &qword_27DDE19A0, &unk_233290360);
  swift_getObjectType();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v11 = [objc_opt_self() bundleForClass_];
  v12 = *(v1 + OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport14TTSVBDataStore_managedObjectModelName);
  v23 = *(v1 + OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport14TTSVBDataStore_managedObjectModelName + 8);
  v24 = v12;
  v13 = sub_23328D95C();
  v14 = sub_23328D95C();
  v15 = [v11 URLForResource:v13 withExtension:v14];

  if (v15)
  {
    sub_23328CC4C();

    MEMORY[0x28223BE20](v16);
    v17 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v9 + 16))(v17, a1, v8);
    (*(v9 + 56))(v17, 0, 1, v8);
    swift_beginAccess();
    sub_2331BD410(v17, v1 + v3, &qword_27DDE19A0, &unk_233290360);
    return swift_endAccess();
  }

  else
  {
    v25 = 0;
    v26 = 0xE000000000000000;
    sub_23328E24C();

    v25 = 0xD000000000000014;
    v26 = 0x80000002332AA480;
    MEMORY[0x23839B7E0](v24, v23);
    MEMORY[0x23839B7E0](0xD00000000000001ALL, 0x80000002332AA4A0);
    v19 = [v11 bundlePath];
    v20 = sub_23328D98C();
    v22 = v21;

    MEMORY[0x23839B7E0](v20, v22);

    result = sub_23328E31C();
    __break(1u);
  }

  return result;
}

id sub_2331E491C()
{
  v1 = OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport14TTSVBDataStore____lazy_storage___container;
  v2 = *(v0 + OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport14TTSVBDataStore____lazy_storage___container);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport14TTSVBDataStore____lazy_storage___container);
  }

  else
  {
    v4 = sub_2331E4A0C();
    if (*(v0 + OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport14TTSVBDataStore_configuration))
    {
      v5 = &OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport14TTSVBDataStore_cloudStoreName;
    }

    else
    {
      v5 = &OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport14TTSVBDataStore_localStoreName;
    }

    v6 = (v0 + *v5);
    v7 = *v6;
    v8 = v6[1];
    v9 = 0x277CBE470;
    if (!*(v0 + OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport14TTSVBDataStore_configuration))
    {
      v9 = 0x277CBE4A0;
    }

    v10 = objc_allocWithZone(*v9);
    v11 = sub_23328D95C();
    v12 = [v10 initWithName:v11 managedObjectModel:v4];

    v13 = *(v0 + v1);
    *(v0 + v1) = v12;
    v3 = v12;

    v2 = 0;
  }

  v14 = v2;
  return v3;
}

uint64_t sub_2331E4A0C()
{
  v0 = type metadata accessor for TTSVBError.Reason(0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0);
  v3 = &v17[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = type metadata accessor for TTSVBError(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v17[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_23328CC9C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v17[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_2331E458C(v12);
  v13 = objc_allocWithZone(MEMORY[0x277CBE450]);
  v14 = sub_23328CBCC();
  v15 = [v13 initWithContentsOfURL_];

  (*(v9 + 8))(v12, v8);
  if (v15)
  {
    sub_2331EB004(v15);
    return v15;
  }

  else
  {
    v18 = xmmword_23329B320;
    v19 = 3;
    sub_2331E458C(v3);
    swift_storeEnumTagMultiPayload();
    TTSVBError.init(_:_:_:)(&v18, v3, 0, v7);
    TTSVBError.description.getter();
    sub_2331EC8A4(v7, type metadata accessor for TTSVBError);
    result = sub_23328E31C();
    __break(1u);
  }

  return result;
}

uint64_t sub_2331E4D30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v25 = a3;
  v26 = a4;
  v24 = a1;
  v5 = sub_23328D7CC();
  v29 = *(v5 - 8);
  v6 = *(v29 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_23328D80C();
  v9 = *(v28 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v28);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDE25D0, &unk_233290330);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v17 = &v23 - v16;
  v27 = *(a2 + OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport14TTSVBDataStore_calloutQueue);
  sub_233121D34(v24, &v23 - v16, &unk_27DDE25D0, &unk_233290330);
  v18 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v19 = swift_allocObject();
  v20 = v26;
  *(v19 + 16) = v25;
  *(v19 + 24) = v20;
  sub_2331ED6BC(v17, v19 + v18);
  aBlock[4] = sub_2331BE38C;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2331221F8;
  aBlock[3] = &block_descriptor_85;
  v21 = _Block_copy(aBlock);

  sub_23328D7DC();
  v30 = MEMORY[0x277D84F90];
  sub_2331CCB20(qword_280D3A270, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDE2540, &qword_233290328);
  sub_23315246C(&qword_280D3A258, &unk_27DDE2540, &qword_233290328);
  sub_23328E14C();
  MEMORY[0x23839BC20](0, v12, v8, v21);
  _Block_release(v21);
  (*(v29 + 8))(v8, v5);
  (*(v9 + 8))(v12, v28);
}

TextToSpeechVoiceBankingSupport::TTSVBDataStore::OperationContext_optional __swiftcall TTSVBDataStore.OperationContext.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (!rawValue)
  {
    v2 = 0;
  }

  *v1 = v2;
  return rawValue;
}

void *sub_2331E50F0@<X0>(void *result@<X0>, char *a2@<X8>)
{
  if (*result == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (*result)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  *a2 = v3;
  return result;
}

id sub_2331E511C(_BYTE *a1)
{
  if (*a1)
  {

    return sub_2331E5184();
  }

  else
  {
    v2 = sub_2331E491C();
    v3 = [v2 viewContext];

    return v3;
  }
}

id sub_2331E5184()
{
  v0 = sub_2331E491C();
  v1 = [v0 newBackgroundContext];

  sub_23328E24C();
  MEMORY[0x23839B7E0](0xD000000000000010, 0x80000002332A9F60);
  sub_23328CD0C();
  sub_23328DCDC();
  v2 = sub_23328D95C();

  [v1 setName_];

  v3 = [objc_opt_self() mergeByPropertyObjectTrumpMergePolicy];
  [v1 setMergePolicy_];

  return v1;
}

void sub_2331E52F8(void *a1)
{
  v3 = type metadata accessor for TTSVBDataStoreEvent(0);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([a1 object])
  {
    sub_23328E0DC();
    swift_unknownObjectRelease();
  }

  else
  {
    v14 = 0u;
    v15 = 0u;
  }

  v16[0] = v14;
  v16[1] = v15;
  if (*(&v15 + 1))
  {
    sub_233144EEC(0, &qword_280D39B80, 0x277CBE440);
    if (swift_dynamicCast())
    {
      v8 = v13[1];
      sub_233144EEC(0, &qword_27DDE2B00, 0x277D82BB8);
      v9 = v1;
      v10 = sub_2331E491C();
      v11 = [v10 viewContext];

      LOBYTE(v10) = sub_23328DFDC();
      if (v10)
      {
        v12 = *(v9 + OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport14TTSVBDataStore_eventSubject);
        sub_23328C90C();
        swift_storeEnumTagMultiPayload();

        sub_23328D71C();

        sub_2331EC8A4(v7, type metadata accessor for TTSVBDataStoreEvent);
      }

      else
      {
      }
    }
  }

  else
  {
    sub_233121E04(v16, &qword_27DDE2660, &qword_233298100);
  }
}

uint64_t TTSVBDataStoreEvent.MergeEvent.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_23328C93C();
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

uint64_t sub_2331E55C8()
{
  v1 = v0;
  v2 = sub_23328D6EC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for TTSVBDataStoreEvent(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v31 - v12;
  v14 = sub_23328C93C();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23328C90C();
  TTSVBDataStoreEvent.CloudKitSyncEvent.init(_:)(v17, v13);
  swift_storeEnumTagMultiPayload();
  v18 = sub_233225440();
  (*(v3 + 16))(v6, v18, v2);
  sub_2331ED654(v13, v10, type metadata accessor for TTSVBDataStoreEvent);
  v19 = sub_23328D6CC();
  v20 = sub_23328DE1C();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v33 = v3;
    v34 = v22;
    v23 = v22;
    *v21 = 136315138;
    v24 = TTSVBDataStoreEvent.description.getter();
    v32 = v2;
    v25 = v1;
    v27 = v26;
    sub_2331EC8A4(v10, type metadata accessor for TTSVBDataStoreEvent);
    v28 = sub_23311A8F4(v24, v27, &v34);
    v1 = v25;

    *(v21 + 4) = v28;
    _os_log_impl(&dword_233109000, v19, v20, "%s", v21, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v23);
    MEMORY[0x23839CFD0](v23, -1, -1);
    MEMORY[0x23839CFD0](v21, -1, -1);

    (*(v33 + 8))(v6, v32);
  }

  else
  {

    sub_2331EC8A4(v10, type metadata accessor for TTSVBDataStoreEvent);
    (*(v3 + 8))(v6, v2);
  }

  v29 = *(v1 + OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport14TTSVBDataStore_eventSubject);

  sub_23328D71C();

  return sub_2331EC8A4(v13, type metadata accessor for TTSVBDataStoreEvent);
}

uint64_t TTSVBDataStoreEvent.CloudKitSyncEvent.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_23328C93C();
  v5 = *(v4 - 8);
  (*(v5 + 16))(a2, a1, v4);
  result = sub_23328C92C();
  if (result)
  {
    v7 = result;
    v8 = *MEMORY[0x277CBE1F8];
    *&v16 = sub_23328D98C();
    *(&v16 + 1) = v9;

    sub_23328E1EC();
    if (*(v7 + 16))
    {
      v10 = sub_2331EA6D0(v15);
      if (v11)
      {
        v12 = v10;

        sub_23311B0C0(*(v7 + 56) + 32 * v12, v14);

        (*(v5 + 8))(a1, v4);
        sub_2331EACC8(v15);
        sub_233145134(v14, &v16);
        sub_233144EEC(0, &qword_280D39B70, 0x277CBE480);
        swift_dynamicCast();
        result = type metadata accessor for TTSVBDataStoreEvent.CloudKitSyncEvent(0);
        *(a2 + *(result + 20)) = v13;
        return result;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t TTSVBDataStoreEvent.description.getter()
{
  v1 = v0;
  v2 = type metadata accessor for TTSVBDataStoreEvent.CloudKitSyncEvent(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v35[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = type metadata accessor for TTSVBDataStoreEvent.MergeEvent(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v35[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = type metadata accessor for TTSVBDataStoreEvent(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v35[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDE22B0, &qword_233297B80);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_233297B30;
  strcpy((v14 + 32), "DataStoreEvent");
  *(v14 + 47) = -18;
  v37 = v14;
  sub_2331ED654(v1, v13, type metadata accessor for TTSVBDataStoreEvent);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    v22 = *v13;
    v23 = v13[1];
    if (EnumCaseMultiPayload == 2)
    {
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_233297630;
      v25 = 0x80000002332A9FA0;
      v26 = 0xD000000000000013;
    }

    else
    {
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_233297630;
      v25 = 0x80000002332A9F80;
      v26 = 0xD000000000000012;
    }

    *(inited + 32) = v26;
    *(inited + 40) = v25;
    *(inited + 48) = v22;
    *(inited + 56) = v23;
    sub_2331EA3B4(inited);
  }

  else if (EnumCaseMultiPayload)
  {
    sub_2331EC944(v13, v5, type metadata accessor for TTSVBDataStoreEvent.CloudKitSyncEvent);
    v27 = TTSVBDataStoreEvent.CloudKitSyncEvent.description.getter();
    v29 = v28;
    v31 = *(v14 + 16);
    v30 = *(v14 + 24);
    if (v31 >= v30 >> 1)
    {
      v14 = sub_233143EE0((v30 > 1), v31 + 1, 1, v14);
    }

    sub_2331EC8A4(v5, type metadata accessor for TTSVBDataStoreEvent.CloudKitSyncEvent);
    *(v14 + 16) = v31 + 1;
    v32 = v14 + 16 * v31;
    *(v32 + 32) = v27;
    *(v32 + 40) = v29;
    v37 = v14;
  }

  else
  {
    sub_2331EC944(v13, v9, type metadata accessor for TTSVBDataStoreEvent.MergeEvent);
    v16 = sub_233143EE0(1, 2, 1, v14);
    *(v16 + 2) = 2;
    strcpy(v16 + 48, "Merge Objects");
    *(v16 + 31) = -4864;
    v37 = v16;
    type metadata accessor for TTSVBLocalVoiceMO();
    v17 = [swift_getObjCClassFromMetadata() entity];
    v18 = TTSVBDataStoreEvent.MergeEvent.anyObjectIsEntity(_:)(v17);

    if (v18)
    {
      v20 = *(v16 + 2);
      v19 = *(v16 + 3);
      if (v20 >= v19 >> 1)
      {
        v16 = sub_233143EE0((v19 > 1), v20 + 1, 1, v16);
      }

      sub_2331EC8A4(v9, type metadata accessor for TTSVBDataStoreEvent.MergeEvent);
      *(v16 + 2) = v20 + 1;
      v21 = &v16[16 * v20];
      *(v21 + 4) = 0xD000000000000011;
      *(v21 + 5) = 0x80000002332A9FC0;
      v37 = v16;
    }

    else
    {
      sub_2331EC8A4(v9, type metadata accessor for TTSVBDataStoreEvent.MergeEvent);
    }
  }

  v36 = v37;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDE1A98, &unk_2332985F0);
  sub_23315246C(&qword_280D39BB0, &unk_27DDE1A98, &unk_2332985F0);
  v33 = sub_23328D8FC();

  return v33;
}

uint64_t sub_2331E604C(void *a1, const char *a2, int a3)
{
  v44 = a2;
  v5 = v3;
  v7 = type metadata accessor for TTSVBDataStoreEvent(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = (v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v45 = sub_23328D6EC();
  v11 = *(v45 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v45);
  v15 = v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = [a1 userInfo];
  if (!v16)
  {
    goto LABEL_8;
  }

  v17 = v16;
  v18 = sub_23328D89C();

  v19 = *MEMORY[0x277CBE138];
  v46 = sub_23328D98C();
  v47 = v20;
  sub_23328E1EC();
  if (!*(v18 + 16) || (v21 = sub_2331EA6D0(v48), (v22 & 1) == 0))
  {

    sub_2331EACC8(v48);
LABEL_8:
    v49 = 0u;
    v50 = 0u;
    goto LABEL_9;
  }

  sub_23311B0C0(*(v18 + 56) + 32 * v21, &v49);
  sub_2331EACC8(v48);

  if (!*(&v50 + 1))
  {
LABEL_9:
    sub_233121E04(&v49, &qword_27DDE2660, &qword_233298100);
    goto LABEL_10;
  }

  sub_233144EEC(0, &qword_280D39B68, 0x277CCABB0);
  if (swift_dynamicCast())
  {
    v23 = v48[0];
    v24 = [v48[0] unsignedIntegerValue];

    v25 = v45;
    goto LABEL_11;
  }

LABEL_10:
  v25 = v45;
  v24 = 0;
LABEL_11:
  v26 = sub_233225440();
  (*(v11 + 16))(v15, v26, v25);
  v27 = sub_23328D6CC();
  v28 = sub_23328DE4C();
  if (!os_log_type_enabled(v27, v28))
  {

    (*(v11 + 8))(v15, v25);
    goto LABEL_32;
  }

  v42[0] = v5;
  v42[1] = v7;
  v29 = swift_slowAlloc();
  v30 = swift_slowAlloc();
  v48[0] = v30;
  *v29 = 136315138;
  v43 = a3;
  if (v24 > 3)
  {
    if (v24 <= 5)
    {
      if (v24 == 4)
      {
        v31 = 0xD000000000000010;
        v32 = 0x80000002332AA020;
      }

      else
      {
        v31 = 0x6C654420656E6F5ALL;
        v32 = 0xEC00000064657465;
      }

      goto LABEL_31;
    }

    if (v24 == 6)
    {
      v32 = 0x80000002332AA000;
      v34 = 5;
      goto LABEL_28;
    }

    if (v24 == 7)
    {
      v32 = 0x80000002332A9FE0;
      v34 = 11;
LABEL_28:
      v31 = v34 | 0xD000000000000010;
      goto LABEL_31;
    }

    goto LABEL_25;
  }

  if (v24 != 1)
  {
    if (v24 == 2)
    {
      v33 = 0x74756F676F4CLL;
    }

    else
    {
      if (v24 != 3)
      {
LABEL_25:
        v31 = 0x206E776F6E6B6E55;
        v32 = 0xEF746C7561666544;
        goto LABEL_31;
      }

      v33 = 0x65676E616843;
    }

    v32 = v33 & 0xFFFFFFFFFFFFLL | 0xEE00000000000000;
    v31 = 0x20746E756F636341;
    goto LABEL_31;
  }

  v31 = 0x20746E756F636341;
  v32 = 0xED00006E69676F4CLL;
LABEL_31:
  v35 = sub_23311A8F4(v31, v32, v48);

  *(v29 + 4) = v35;
  _os_log_impl(&dword_233109000, v27, v28, v44, v29, 0xCu);
  __swift_destroy_boxed_opaque_existential_0(v30);
  MEMORY[0x23839CFD0](v30, -1, -1);
  MEMORY[0x23839CFD0](v29, -1, -1);

  (*(v11 + 8))(v15, v45);
  v5 = v42[0];
LABEL_32:
  v36 = *(v5 + OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport14TTSVBDataStore_eventSubject);
  if (v24 <= 3)
  {
    switch(v24)
    {
      case 1:
        v37 = 0x20746E756F636341;
        v38 = 0xED00006E69676F4CLL;
        goto LABEL_50;
      case 2:
        v39 = 0x74756F676F4CLL;
        break;
      case 3:
        v39 = 0x65676E616843;
        break;
      default:
        goto LABEL_44;
    }

    v38 = v39 & 0xFFFFFFFFFFFFLL | 0xEE00000000000000;
    v37 = 0x20746E756F636341;
    goto LABEL_50;
  }

  if (v24 > 5)
  {
    if (v24 == 6)
    {
      v38 = 0x80000002332AA000;
      v40 = 5;
      goto LABEL_47;
    }

    if (v24 == 7)
    {
      v38 = 0x80000002332A9FE0;
      v40 = 11;
LABEL_47:
      v37 = v40 | 0xD000000000000010;
      goto LABEL_50;
    }

LABEL_44:
    v37 = 0x206E776F6E6B6E55;
    v38 = 0xEF746C7561666544;
    goto LABEL_50;
  }

  if (v24 == 4)
  {
    v37 = 0xD000000000000010;
    v38 = 0x80000002332AA020;
  }

  else
  {
    v37 = 0x6C654420656E6F5ALL;
    v38 = 0xEC00000064657465;
  }

LABEL_50:
  *v10 = v37;
  v10[1] = v38;
  swift_storeEnumTagMultiPayload();

  sub_23328D71C();

  return sub_2331EC8A4(v10, type metadata accessor for TTSVBDataStoreEvent);
}

uint64_t sub_2331E6708()
{
  v1 = v0;
  v2 = sub_23328CE1C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1A18, &unk_233297730);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = aBlock - v9;
  sub_2331E8350(aBlock - v9);
  v11 = *(v3 + 48);
  if (v11(v10, 1, v2) == 1)
  {
    sub_23328CD7C();
    if (v11(v10, 1, v2) != 1)
    {
      sub_233121E04(v10, &qword_27DDE1A18, &unk_233297730);
    }
  }

  else
  {
    (*(v3 + 32))(v6, v10, v2);
  }

  v12 = objc_opt_self();
  v13 = sub_23328CD9C();
  v14 = [v12 fetchHistoryAfterDate_];

  v15 = sub_2331E491C();
  v16 = [v15 viewContext];

  v17 = swift_allocObject();
  v17[2] = v16;
  v17[3] = v14;
  v17[4] = v1;
  v18 = swift_allocObject();
  *(v18 + 16) = sub_2331ED5EC;
  *(v18 + 24) = v17;
  aBlock[4] = sub_2331B9BC4;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2331A8974;
  aBlock[3] = &block_descriptor_79;
  v19 = _Block_copy(aBlock);
  v20 = v16;
  v21 = v14;
  v22 = v1;

  [v20 performBlockAndWait_];
  _Block_release(v19);

  (*(v3 + 8))(v6, v2);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2331E6AA8()
{
  v35 = MEMORY[0x277D84F90];
  v1 = *(v0 + OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport14TTSVBDataStore_configuration);
  v2 = sub_23328CC9C();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v5 = (v4 + 8);
  if (v1)
  {
    v34 = v0;
    sub_2331E42F8(&OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport14TTSVBDataStore____lazy_storage___cloudDatastoreURL, OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport14TTSVBDataStore_cloudStoreName, &v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
    v6 = objc_allocWithZone(MEMORY[0x277CBE4E0]);
    v7 = sub_23328CBCC();
    v8 = [v6 initWithURL_];

    v9 = *v5;
    (*v5)(&v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v2);
    sub_2331E81F4(v8);
    v10 = sub_23328D95C();
    [v8 setConfiguration_];

    v11 = objc_allocWithZone(MEMORY[0x277CBE3A0]);
    v12 = sub_23328D95C();
    v13 = [v11 initWithContainerIdentifier_];

    v14 = sub_23328D95C();
    [v13 setApsConnectionMachServiceName_];

    [v13 setAutomaticallyScheduleImportAndExportOperations_];
    [v13 setUseDeviceToDeviceEncryption_];
    [v13 setAutomaticallyDownloadFileBackedFutures_];
    v15 = [objc_allocWithZone(MEMORY[0x277CBE398]) initWithOptions_];
    [v8 setMirroringDelegate_];
    v16 = v8;
    MEMORY[0x23839B920]();
    if (*((v35 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v35 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v31 = *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_23328DC1C();
    }

    v17 = sub_23328DC4C();
    MEMORY[0x28223BE20](v17);
    v18 = &v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
    sub_2331E42F8(&OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport14TTSVBDataStore____lazy_storage___localDatastoreURL, &OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport14TTSVBDataStore_localStoreName, v18);
    v19 = objc_allocWithZone(MEMORY[0x277CBE4E0]);
    v20 = sub_23328CBCC();
    v21 = [v19 initWithURL_];

    v9(v18, v2);
    sub_2331E81F4(v21);
    v22 = sub_23328D95C();
    [v21 setConfiguration_];

    v23 = v21;
    MEMORY[0x23839B920]();
    if (*((v35 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v35 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v32 = *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_23328DC1C();
    }

    sub_23328DC4C();
  }

  else
  {
    sub_2331E42F8(&OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport14TTSVBDataStore____lazy_storage___localDatastoreURL, &OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport14TTSVBDataStore_localStoreName, &v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
    v24 = objc_allocWithZone(MEMORY[0x277CBE4E0]);
    v25 = sub_23328CBCC();
    v26 = [v24 initWithURL_];

    (*v5)(&v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v2);
    sub_2331E81F4(v26);
    v27 = sub_23328D95C();
    [v26 setConfiguration_];

    [v26 setType_];
    v28 = sub_23328D95C();
    [v26 setOption:v28 forKey:*MEMORY[0x277CBE340]];

    sub_233144EEC(0, &qword_280D39B68, 0x277CCABB0);
    v29 = sub_23328DFBC();
    [v26 setOption:v29 forKey:*MEMORY[0x277CBE328]];

    v15 = v26;
    MEMORY[0x23839B920]();
    if (*((v35 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v35 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v33 = *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_23328DC1C();
    }

    sub_23328DC4C();
  }

  return v35;
}

uint64_t sub_2331E7074(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v22[0] = a5;
  v9 = sub_23328D7CC();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_23328D80C();
  v14 = *(v23 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v23);
  v17 = v22 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22[1] = *&v5[OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport14TTSVBDataStore_queue];
  v18 = swift_allocObject();
  v18[2] = v5;
  v18[3] = a1;
  v18[4] = a2;
  aBlock[4] = a4;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2331221F8;
  aBlock[3] = v22[0];
  v19 = _Block_copy(aBlock);
  v20 = v5;

  sub_23328D7DC();
  v24 = MEMORY[0x277D84F90];
  sub_2331CCB20(qword_280D3A270, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDE2540, &qword_233290328);
  sub_23315246C(&qword_280D3A258, &unk_27DDE2540, &qword_233290328);
  sub_23328E14C();
  MEMORY[0x23839BC20](0, v17, v13, v19);
  _Block_release(v19);
  (*(v10 + 8))(v13, v9);
  (*(v14 + 8))(v17, v23);
}

uint64_t sub_2331E734C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_23328D7CC();
  v20 = *(v6 - 8);
  v7 = *(v20 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_23328D80C();
  v10 = *(v19 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v19);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2331E77B4();
  v14 = *(a1 + OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport14TTSVBDataStore_calloutQueue);
  v15 = swift_allocObject();
  *(v15 + 16) = a2;
  *(v15 + 24) = a3;
  aBlock[4] = sub_2331ED5E4;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2331221F8;
  aBlock[3] = &block_descriptor_70;
  v16 = _Block_copy(aBlock);

  sub_23328D7DC();
  v21 = MEMORY[0x277D84F90];
  sub_2331CCB20(qword_280D3A270, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDE2540, &qword_233290328);
  sub_23315246C(&qword_280D3A258, &unk_27DDE2540, &qword_233290328);
  sub_23328E14C();
  MEMORY[0x23839BC20](0, v13, v9, v16);
  _Block_release(v16);
  (*(v20 + 8))(v9, v6);
  (*(v10 + 8))(v13, v19);
}

void sub_2331E77B4()
{
  v65[1] = *MEMORY[0x277D85DE8];
  v2 = sub_23328D6EC();
  v3 = *(v2 - 8);
  v63 = v2;
  v64 = v3;
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v61 = &v59 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v59 - v8;
  MEMORY[0x28223BE20](v7);
  v11 = &v59 - v10;
  v12 = sub_23328D83C();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = (&v59 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = *(v0 + OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport14TTSVBDataStore_queue);
  *v16 = v17;
  (*(v13 + 104))(v16, *MEMORY[0x277D85200], v12);
  v18 = v17;
  v19 = sub_23328D85C();
  (*(v13 + 8))(v16, v12);
  if ((v19 & 1) == 0)
  {
    __break(1u);
  }

  v60 = v9;
  v62 = v1;
  v20 = sub_2331E491C();
  objc_opt_self();
  v21 = swift_dynamicCastObjCClass();
  if (v21)
  {
    v22 = v21;
    v23 = sub_233225440();
    v24 = v63;
    v25 = *(v64 + 16);
    v25(v11, v23, v63);
    v26 = sub_23328D6CC();
    v27 = sub_23328DE1C();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&dword_233109000, v26, v27, "Will call initializeCloudKitSchema()", v28, 2u);
      v29 = v28;
      v24 = v63;
      MEMORY[0x23839CFD0](v29, -1, -1);
    }

    v30 = v11;
    v31 = *(v64 + 8);
    v64 += 8;
    v31(v30, v24);
    v65[0] = 0;
    v32 = [v22 initializeCloudKitSchemaWithOptions:4 error:v65];
    v33 = v65[0];
    if (v32)
    {
      v34 = v60;
      v25(v60, v23, v24);
      v35 = v33;
      v36 = sub_23328D6CC();
      v37 = sub_23328DE1C();
      if (os_log_type_enabled(v36, v37))
      {
        v38 = v24;
        v39 = swift_slowAlloc();
        *v39 = 0;
        _os_log_impl(&dword_233109000, v36, v37, "Call to initializeCloudKitSchema() was successful", v39, 2u);
        MEMORY[0x23839CFD0](v39, -1, -1);

        v40 = v34;
        v41 = v38;
      }

      else
      {

        v40 = v34;
        v41 = v24;
      }

      v31(v40, v41);
    }

    else
    {
      v42 = v65[0];
      v43 = sub_23328CA7C();

      swift_willThrow();
      v44 = v61;
      v25(v61, v23, v24);
      v45 = v43;
      v46 = sub_23328D6CC();
      v47 = sub_23328DE3C();

      if (os_log_type_enabled(v46, v47))
      {
        v48 = swift_slowAlloc();
        v49 = swift_slowAlloc();
        v63 = v31;
        v50 = v49;
        v65[0] = v49;
        *v48 = 136315138;
        v51 = sub_23328CA6C();
        v52 = v24;
        v53 = [v51 debugDescription];

        v54 = sub_23328D98C();
        v56 = v55;

        v57 = sub_23311A8F4(v54, v56, v65);

        *(v48 + 4) = v57;
        _os_log_impl(&dword_233109000, v46, v47, "Error occurred calling initializeCloudKitSchema(). %s", v48, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v50);
        MEMORY[0x23839CFD0](v50, -1, -1);
        MEMORY[0x23839CFD0](v48, -1, -1);

        v63(v61, v52);
      }

      else
      {

        v31(v44, v24);
      }

      swift_willThrow();
    }
  }

  else
  {
  }

  v58 = *MEMORY[0x277D85DE8];
}

uint64_t sub_2331E7D44(void (*a1)(char *))
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDE25D0, &unk_233290330);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  swift_storeEnumTagMultiPayload();
  a1(v5);
  return sub_233121E04(v5, &unk_27DDE25D0, &unk_233290330);
}

uint64_t sub_2331E7E00(void (*a1)(char *), uint64_t a2, void *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDE25D0, &unk_233290330);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v10 - v7;
  sub_2331524CC(&v12);
  v10 = v12;
  v11 = v13;
  static TTSVBError.map(_:_:)(a3, &v10, v8);
  sub_2331220AC(v10, *(&v10 + 1), v11);
  swift_storeEnumTagMultiPayload();
  a1(v8);
  return sub_233121E04(v8, &unk_27DDE25D0, &unk_233290330);
}

uint64_t sub_2331E7F08@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_23328CC9C();
  v27 = v2;
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2331E42F8(&OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport14TTSVBDataStore____lazy_storage___localDatastoreURL, &OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport14TTSVBDataStore_localStoreName, v6);
  v28 = sub_2331E4A0C();
  v29 = 0x80000002332A9DB0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2E50, &qword_23329B348);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_233290950;
  v8 = *MEMORY[0x277CBE338];
  v34 = sub_23328D98C();
  v35 = v9;
  v10 = MEMORY[0x277D837D0];
  sub_23328E1EC();
  v11 = MEMORY[0x277D839B0];
  *(inited + 96) = MEMORY[0x277D839B0];
  *(inited + 72) = 1;
  v12 = *MEMORY[0x277CBE210];
  v34 = sub_23328D98C();
  v35 = v13;
  sub_23328E1EC();
  *(inited + 168) = v11;
  *(inited + 144) = 1;
  v14 = *MEMORY[0x277CBE328];
  v34 = sub_23328D98C();
  v35 = v15;
  sub_23328E1EC();
  *(inited + 240) = v11;
  *(inited + 216) = 1;
  v16 = sub_2331ECCA8(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2E58, &unk_23329B350);
  swift_arrayDestroy();
  (*(v3 + 16))(a1, v6, v2);
  v17 = type metadata accessor for TTSVBDataStore.XPCServiceConfig(0);
  v19 = v28;
  v18 = v29;
  *(a1 + v17[5]) = v28;
  v20 = (a1 + v17[7]);
  *v20 = 0xD00000000000001CLL;
  v20[1] = v18;
  v21 = *MEMORY[0x277CBE340];
  *&v32 = sub_23328D98C();
  *(&v32 + 1) = v22;
  v23 = v19;
  sub_23328E1EC();
  v33 = v10;
  *&v32 = 0xD00000000000001CLL;
  *(&v32 + 1) = v18;
  sub_233145134(&v32, v31);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v30 = v16;
  sub_2331EAB7C(v31, &v34, isUniquelyReferenced_nonNull_native);

  sub_2331EACC8(&v34);
  result = (*(v3 + 8))(v6, v27);
  *(a1 + v17[6]) = v30;
  return result;
}

void sub_2331E81F4(void *a1)
{
  [a1 setOption:*MEMORY[0x277CCA1A0] forKey:*MEMORY[0x277CBE240]];
  sub_233144EEC(0, &qword_280D39B68, 0x277CCABB0);
  v2 = sub_23328DFBC();
  [a1 setOption:v2 forKey:*MEMORY[0x277CBE210]];

  v3 = sub_23328DFBC();
  [a1 setOption:v3 forKey:*MEMORY[0x277CBE270]];

  v4 = sub_23328DFBC();
  [a1 setOption:v4 forKey:*MEMORY[0x277CBE338]];

  v5 = sub_23328DFBC();
  [a1 setOption:v5 forKey:*MEMORY[0x277CBE1D8]];

  v6 = sub_23328DFBC();
  [a1 setOption:v6 forKey:*MEMORY[0x277CBE178]];
}

uint64_t sub_2331E8350@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_233165CA0();
  v4 = v1 + OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport14TTSVBDataStore_persistentHistoryProcessingDatesPreferenceKey;
  v5 = *(v1 + OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport14TTSVBDataStore_persistentHistoryProcessingDatesPreferenceKey);
  v6 = *(v4 + 8);
  v7 = *v3;

  v8 = sub_23328D95C();

  v9 = [v7 dictionaryForKey_];

  if (!v9)
  {
    v28 = sub_23328CE1C();
    v29 = *(*(v28 - 8) + 56);

    return v29(a1, 1, 1, v28);
  }

  v10 = sub_23328D89C();

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1A18, &unk_233297730);
  v12 = (*(*(v11 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v31[-v13];
  v15 = [objc_opt_self() mainBundle];
  v16 = [v15 bundleIdentifier];

  if (!v16)
  {
    v17 = [objc_opt_self() processInfo];
    v16 = [v17 processName];
  }

  v18 = sub_23328D98C();
  v20 = v19;

  if (!*(v10 + 16))
  {

    goto LABEL_12;
  }

  v21 = sub_233144260(v18, v20);
  v23 = v22;

  if ((v23 & 1) == 0)
  {
LABEL_12:

    v24 = sub_23328CE1C();
    (*(*(v24 - 8) + 56))(v14, 1, 1, v24);
LABEL_13:
    sub_233121E04(v14, &qword_27DDE1A18, &unk_233297730);
    sub_23328CE1C();
    return (*(*(v24 - 8) + 56))(a1, 1, 1, v24);
  }

  sub_23311B0C0(*(v10 + 56) + 32 * v21, v31);

  v24 = sub_23328CE1C();
  v25 = swift_dynamicCast();
  v26 = *(v24 - 8);
  v27 = *(v26 + 56);
  v27(v14, v25 ^ 1u, 1, v24);
  if ((*(v26 + 48))(v14, 1, v24) == 1)
  {
    goto LABEL_13;
  }

  (*(v26 + 32))(a1, v14, v24);
  return v27(a1, 0, 1, v24);
}

void sub_2331E874C(void *a1, uint64_t a2, id *a3)
{
  v92 = a3;
  v98 = *MEMORY[0x277D85DE8];
  v5 = sub_23328D6EC();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v84 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v10);
  v13 = &v84 - v12;
  *&v97[0] = 0;
  v93 = a1;
  v14 = [a1 executeRequest:a2 error:{v97, v11}];
  v15 = *&v97[0];
  if (v14)
  {
    v16 = v14;
    objc_opt_self();
    v17 = swift_dynamicCastObjCClass();
    if (!v17)
    {
      v36 = v15;

      goto LABEL_31;
    }

    v18 = v17;
    v19 = v15;
    if ([v18 result])
    {
      sub_23328E0DC();
      swift_unknownObjectRelease();
    }

    else
    {
      v95 = 0u;
      v96 = 0u;
    }

    v97[0] = v95;
    v97[1] = v96;
    if (!*(&v96 + 1))
    {

      sub_233121E04(v97, &qword_27DDE2660, &qword_233298100);
      goto LABEL_31;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2EA0, &qword_23329B690);
    if ((swift_dynamicCast() & 1) == 0)
    {

      goto LABEL_31;
    }

    v37 = v94;
    if (v94 >> 62)
    {
      v38 = sub_23328E19C();
      if (v38)
      {
        goto LABEL_15;
      }
    }

    else
    {
      v38 = *((v94 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v38)
      {
LABEL_15:
        v85 = v13;
        v86 = v6;
        v87 = v5;
        if (v38 < 1)
        {
          __break(1u);
        }

        v84 = v16;
        v39 = 0;
        v88 = v9;
        v89 = v37 & 0xC000000000000001;
        v90 = v38;
        v91 = v37;
        do
        {
          if (v89)
          {
            v40 = MEMORY[0x23839BFC0](v39, v37);
          }

          else
          {
            v40 = v37[v39 + 4];
          }

          v41 = v40;
          ++v39;
          v42 = sub_23328C93C();
          v43 = *(v42 - 8);
          v44 = *(v43 + 64);
          v45 = MEMORY[0x28223BE20](v42);
          v47 = &v84 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
          v48 = [v41 objectIDNotification];
          sub_23328C90C();

          v49 = sub_23328C8FC();
          [v93 mergeChangesFromContextDidSaveNotification_];

          v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1A18, &unk_233297730);
          v51 = (*(*(v50 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
          v52 = MEMORY[0x28223BE20](v50 - 8);
          v54 = &v84 - v53;
          v55 = [v41 timestamp];
          sub_23328CDDC();

          v56 = sub_23328CE1C();
          v57 = *(v56 - 8);
          (*(v57 + 56))(v54, 0, 1, v56);
          sub_2331E9088(v54);

          (*(v43 + 8))(v47, v42);
          v37 = v91;
        }

        while (v90 != v39);

        v91 = &v84;
        v59 = *(v57 + 64);
        MEMORY[0x28223BE20](v58);
        v60 = &v84 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
        sub_23328CDBC();
        v61 = sub_233225440();
        v62 = v85;
        v6 = v86;
        v63 = (*(v86 + 16))(v85, v61, v87);
        v92 = &v84;
        v64 = MEMORY[0x28223BE20](v63);
        v65 = v60;
        (*(v57 + 16))(v60, v60, v56, v64);
        v66 = sub_23328D6CC();
        v67 = sub_23328DE2C();
        if (os_log_type_enabled(v66, v67))
        {
          v68 = swift_slowAlloc();
          v69 = swift_slowAlloc();
          *&v97[0] = v69;
          *v68 = 136315138;
          v70 = sub_23328CDFC();
          v90 = v60;
          v72 = v71;
          v73 = *(v57 + 8);
          v73(v65, v56);
          v74 = sub_23311A8F4(v70, v72, v97);
          v60 = v90;

          *(v68 + 4) = v74;
          _os_log_impl(&dword_233109000, v66, v67, "Deleting all history items older than one year %s", v68, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v69);
          v75 = v69;
          v6 = v86;
          MEMORY[0x23839CFD0](v75, -1, -1);
          MEMORY[0x23839CFD0](v68, -1, -1);

          (*(v6 + 8))(v85, v87);
        }

        else
        {

          v73 = *(v57 + 8);
          v73(v60, v56);
          (*(v6 + 8))(v62, v87);
        }

        v76 = objc_opt_self();
        v77 = sub_23328CD9C();
        v78 = [v76 deleteHistoryBeforeDate_];

        *&v97[0] = 0;
        v79 = [v93 executeRequest:v78 error:v97];
        if (v79)
        {
          v80 = v79;
          v81 = *&v97[0];

          v73(v60, v56);
          goto LABEL_31;
        }

        v82 = *&v97[0];
        v21 = sub_23328CA7C();

        swift_willThrow();
        v73(v60, v56);
        v5 = v87;
        v9 = v88;
        goto LABEL_6;
      }
    }

    goto LABEL_31;
  }

  v20 = *&v97[0];
  v21 = sub_23328CA7C();

  swift_willThrow();
LABEL_6:
  v22 = sub_233225440();
  (*(v6 + 16))(v9, v22, v5);
  v23 = v21;
  v24 = sub_23328D6CC();
  v25 = sub_23328DE3C();

  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    *&v97[0] = v27;
    *v26 = 136315138;
    v28 = v6;
    v29 = sub_23328CA6C();
    v30 = [v29 debugDescription];
    v88 = v9;
    v31 = v30;

    v32 = sub_23328D98C();
    v34 = v33;

    v35 = sub_23311A8F4(v32, v34, v97);

    *(v26 + 4) = v35;
    _os_log_impl(&dword_233109000, v24, v25, "Error occurred processing persistent history: %s", v26, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v27);
    MEMORY[0x23839CFD0](v27, -1, -1);
    MEMORY[0x23839CFD0](v26, -1, -1);

    (*(v28 + 8))(v88, v5);
  }

  else
  {

    (*(v6 + 8))(v9, v5);
  }

LABEL_31:
  v83 = *MEMORY[0x277D85DE8];
}

uint64_t sub_2331E9088(uint64_t a1)
{
  v3 = sub_233165CA0();
  v4 = (v1 + OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport14TTSVBDataStore_persistentHistoryProcessingDatesPreferenceKey);
  v5 = *(v1 + OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport14TTSVBDataStore_persistentHistoryProcessingDatesPreferenceKey);
  v6 = v4[1];
  v7 = *v3;

  v8 = sub_23328D95C();

  v9 = [v7 dictionaryForKey_];

  if (v9)
  {
    v10 = sub_23328D89C();
  }

  else
  {
    v10 = sub_233145024(MEMORY[0x277D84F90]);
  }

  v36 = v10;
  v11 = [objc_opt_self() mainBundle];
  v12 = [v11 bundleIdentifier];

  if (!v12)
  {
    v13 = [objc_opt_self() processInfo];
    v12 = [v13 processName];
  }

  v14 = sub_23328D98C();
  v16 = v15;

  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1A18, &unk_233297730);
  v18 = (*(*(v17 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v17 - 8);
  v20 = &v32 - v19;
  sub_233121D34(a1, &v32 - v19, &qword_27DDE1A18, &unk_233297730);
  v21 = sub_23328CE1C();
  v22 = *(v21 - 8);
  if ((*(v22 + 48))(v20, 1, v21) == 1)
  {
    sub_233121E04(v20, &qword_27DDE1A18, &unk_233297730);
    sub_2331EA62C(v14, v16, &v34);

    sub_233121E04(&v34, &qword_27DDE2660, &qword_233298100);
  }

  else
  {
    v35 = v21;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v34);
    (*(v22 + 32))(boxed_opaque_existential_1, v20, v21);
    sub_233145134(&v34, v33);
    v24 = v36;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v32 = v24;
    sub_23314474C(v33, v14, v16, isUniquelyReferenced_nonNull_native);
  }

  v26 = *v3;
  v27 = sub_23328D87C();

  v28 = *v4;
  v29 = v4[1];

  v30 = sub_23328D95C();

  [v26 setObject:v27 forKey:v30];

  return sub_233121E04(a1, &qword_27DDE1A18, &unk_233297730);
}

id TTSVBDataStore.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id TTSVBDataStore.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_2331E9698(uint64_t *a1)
{
  v2 = sub_23328C92C();
  if (!v2)
  {
    goto LABEL_8;
  }

  v3 = v2;
  v4 = *a1;
  sub_23328D98C();
  sub_23328E1EC();
  if (!*(v3 + 16) || (v5 = sub_2331EA6D0(v7), (v6 & 1) == 0))
  {

    sub_2331EACC8(v7);
LABEL_8:
    v8 = 0u;
    v9 = 0u;
    goto LABEL_9;
  }

  sub_23311B0C0(*(v3 + 56) + 32 * v5, &v8);
  sub_2331EACC8(v7);

  if (*(&v9 + 1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2E60, &qword_23329B360);
    if (swift_dynamicCast())
    {
      return;
    }

    goto LABEL_10;
  }

LABEL_9:
  sub_233121E04(&v8, &qword_27DDE2660, &qword_233298100);
LABEL_10:
  if (MEMORY[0x277D84F90] >> 62)
  {
    if (sub_23328E19C())
    {
      sub_2331EC9B8(MEMORY[0x277D84F90]);
    }
  }
}

uint64_t TTSVBDataStoreEvent.MergeEvent.all.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2E68, &qword_23329B368);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_23329B330;
  TTSVBDataStoreEvent.MergeEvent.inserted.getter();
  *(v0 + 32) = v1;
  TTSVBDataStoreEvent.MergeEvent.updated.getter();
  *(v0 + 40) = v2;
  TTSVBDataStoreEvent.MergeEvent.deleted.getter();
  *(v0 + 48) = v3;
  TTSVBDataStoreEvent.MergeEvent.refreshed.getter();
  *(v0 + 56) = v4;
  TTSVBDataStoreEvent.MergeEvent.invalidated.getter();
  *(v0 + 64) = v5;
  return v0;
}

Swift::Bool __swiftcall TTSVBDataStoreEvent.MergeEvent.anyObjectIsEntity(_:)(NSEntityDescription a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2E68, &qword_23329B368);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23329B330;
  TTSVBDataStoreEvent.MergeEvent.inserted.getter();
  *(inited + 32) = v2;
  v27 = inited + 32;
  TTSVBDataStoreEvent.MergeEvent.updated.getter();
  *(inited + 40) = v3;
  TTSVBDataStoreEvent.MergeEvent.deleted.getter();
  *(inited + 48) = v4;
  TTSVBDataStoreEvent.MergeEvent.refreshed.getter();
  *(inited + 56) = v5;
  TTSVBDataStoreEvent.MergeEvent.invalidated.getter();
  v6 = 0;
  *(inited + 64) = v7;
LABEL_2:
  v8 = *(v27 + 8 * v6);
  if ((v8 & 0xC000000000000001) != 0)
  {
    if (v8 < 0)
    {
      v9 = *(v27 + 8 * v6);
    }

    v10 = *(v27 + 8 * v6);

    sub_23328E18C();
    sub_233144EEC(0, &qword_27DDE2E70, 0x277CBE448);
    sub_2331ECDE4();
    result = sub_23328DD4C();
    v8 = v30;
    v12 = v31;
    v14 = v32;
    v13 = v33;
    v15 = v34;
  }

  else
  {
    v16 = -1 << *(v8 + 32);
    v12 = v8 + 56;
    v14 = ~v16;
    v17 = -v16;
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v15 = v18 & *(v8 + 56);
    v19 = *(v27 + 8 * v6);

    v13 = 0;
  }

  v28 = v6 + 1;
  v20 = (v14 + 64) >> 6;
  while (v8 < 0)
  {
    if (!sub_23328E1BC() || (sub_233144EEC(0, &qword_27DDE2E70, 0x277CBE448), swift_dynamicCast(), (v23 = v29) == 0))
    {
LABEL_22:
      sub_233113BBC();
      ++v6;
      if (v28 != 5)
      {
        goto LABEL_2;
      }

      v26 = 0;
      goto LABEL_24;
    }

LABEL_20:
    sub_233144EEC(0, &qword_27DDE2B00, 0x277D82BB8);
    v24 = [v23 entity];
    v25 = sub_23328DFDC();

    if (v25)
    {
      sub_233113BBC();
      v26 = 1;
LABEL_24:

      return v26;
    }
  }

  v21 = v13;
  v22 = v15;
  if (v15)
  {
LABEL_16:
    v15 = (v22 - 1) & v22;
    v23 = *(*(v8 + 48) + ((v13 << 9) | (8 * __clz(__rbit64(v22)))));
    if (!v23)
    {
      goto LABEL_22;
    }

    goto LABEL_20;
  }

  while (1)
  {
    v13 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      break;
    }

    if (v13 >= v20)
    {
      goto LABEL_22;
    }

    v22 = *(v12 + 8 * v13);
    ++v21;
    if (v22)
    {
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

BOOL TTSVBDataStoreEvent.MergeEvent.voicesDidChange.getter()
{
  type metadata accessor for TTSVBLocalVoiceMO();
  v0 = [swift_getObjCClassFromMetadata() entity];
  v1 = TTSVBDataStoreEvent.MergeEvent.anyObjectIsEntity(_:)(v0);

  return v1;
}

id TTSVBDataStoreEvent.CloudKitSyncEvent.event.getter()
{
  v1 = *(v0 + *(type metadata accessor for TTSVBDataStoreEvent.CloudKitSyncEvent(0) + 20));

  return v1;
}

BOOL TTSVBDataStoreEvent.CloudKitSyncEvent.isFinished.getter()
{
  v1 = [*(v0 + *(type metadata accessor for TTSVBDataStoreEvent.CloudKitSyncEvent(0) + 20)) endDate];
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1A18, &unk_233297730);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v13 - v4;
  if (v1)
  {
    v6 = sub_23328CE1C();
    v7 = *(v6 - 8);
    v8 = *(v7 + 64);
    MEMORY[0x28223BE20](v6);
    v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
    sub_23328CDDC();

    (*(v7 + 32))(v5, v10, v6);
    (*(v7 + 56))(v5, 0, 1, v6);
  }

  else
  {
    v11 = sub_23328CE1C();
    (*(*(v11 - 8) + 56))(v5, 1, 1, v11);
  }

  sub_233121E04(v5, &qword_27DDE1A18, &unk_233297730);
  return v1 != 0;
}

uint64_t TTSVBDataStoreEvent.CloudKitSyncEvent.description.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDE22B0, &qword_233297B80);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_233297B30;
  *(v1 + 32) = 0xD000000000000013;
  *(v1 + 40) = 0x80000002332AA070;
  v2 = *(v0 + *(type metadata accessor for TTSVBDataStoreEvent.CloudKitSyncEvent(0) + 20));
  v3 = [v2 endDate];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1A18, &unk_233297730);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v45 - v6;
  if (v3)
  {
    sub_23328CDDC();

    v8 = sub_23328CE1C();
    (*(*(v8 - 8) + 56))(v7, 0, 1, v8);
  }

  else
  {
    v9 = sub_23328CE1C();
    (*(*(v9 - 8) + 56))(v7, 1, 1, v9);
  }

  sub_233121E04(v7, &qword_27DDE1A18, &unk_233297730);
  v10 = [v2 type];
  v12 = *(v1 + 16);
  v11 = *(v1 + 24);
  v13 = v11 >> 1;
  v14 = v12 + 1;
  if (!v10)
  {
    if (!v3)
    {
      if (v13 <= v12)
      {
        v1 = sub_233143EE0((v11 > 1), v12 + 1, 1, v1);
      }

      *(v1 + 16) = v14;
      v41 = v1 + 16 * v12;
      *(v41 + 32) = 0xD00000000000001ALL;
      *(v41 + 40) = 0x80000002332AA0C0;
      goto LABEL_44;
    }

    v15 = 0xD00000000000001BLL;
    v16 = "Finished setting up records";
    goto LABEL_13;
  }

  if (v10 != 2)
  {
    if (v10 != 1)
    {
      if (v13 <= v12)
      {
        v1 = sub_233143EE0((v11 > 1), v12 + 1, 1, v1);
      }

      *(v1 + 16) = v14;
      v19 = v1 + 16 * v12;
      strcpy((v19 + 32), "Unknown event");
      *(v19 + 46) = -4864;
      if (!v3)
      {
        goto LABEL_44;
      }

      goto LABEL_20;
    }

    if (v3)
    {
      v15 = 0xD00000000000001CLL;
      v16 = "Finished downloading records";
LABEL_13:
      v17 = v16 - 32;
      goto LABEL_14;
    }

    if (v13 <= v12)
    {
      v1 = sub_233143EE0((v11 > 1), v12 + 1, 1, v1);
    }

    v38 = 0x80000002332AA140;
    *(v1 + 16) = v14;
    v39 = v1 + 16 * v12;
    v40 = 0xD00000000000001BLL;
LABEL_43:
    *(v39 + 32) = v40;
    *(v39 + 40) = v38;
    goto LABEL_44;
  }

  if (!v3)
  {
    if (v13 <= v12)
    {
      v1 = sub_233143EE0((v11 > 1), v12 + 1, 1, v1);
    }

    v38 = 0x80000002332AA100;
    *(v1 + 16) = v14;
    v39 = v1 + 16 * v12;
    v40 = 0xD000000000000019;
    goto LABEL_43;
  }

  v17 = "Started uploading records";
  v15 = 0xD00000000000001ALL;
LABEL_14:
  if (v13 <= v12)
  {
    v1 = sub_233143EE0((v11 > 1), v12 + 1, 1, v1);
  }

  *(v1 + 16) = v14;
  v18 = v1 + 16 * v12;
  *(v18 + 32) = v15;
  *(v18 + 40) = v17 | 0x8000000000000000;
LABEL_20:
  v20 = [v2 succeeded];
  v22 = *(v1 + 16);
  v21 = *(v1 + 24);
  v23 = v22 + 1;
  if (v20)
  {
    if (v21 >> 1 <= v22)
    {
      v1 = sub_233143EE0((v21 > 1), v22 + 1, 1, v1);
    }

    *(v1 + 16) = v23;
    v24 = v1 + 16 * v22;
    *(v24 + 32) = 0x73736563637553;
    *(v24 + 40) = 0xE700000000000000;
    goto LABEL_44;
  }

  if (v21 >> 1 <= v22)
  {
    v1 = sub_233143EE0((v21 > 1), v22 + 1, 1, v1);
  }

  *(v1 + 16) = v23;
  v25 = v1 + 16 * v22;
  *(v25 + 32) = 0x64656C696146;
  *(v25 + 40) = 0xE600000000000000;
  v26 = [v2 error];
  if (v26)
  {
    v48 = v26;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDE1B40, &unk_23329A7A0);
    sub_233144EEC(0, &qword_280D3A208, 0x277CCA9B8);
    if (swift_dynamicCast())
    {
      v27 = v47;
      v28 = [v47 debugDescription];
      v29 = sub_23328D98C();
      v31 = v30;

      v33 = *(v1 + 16);
      v32 = *(v1 + 24);
      v34 = v33 + 1;
      if (v33 >= v32 >> 1)
      {
        v46 = v33 + 1;
        v44 = sub_233143EE0((v32 > 1), v33 + 1, 1, v1);
        v34 = v46;
        v1 = v44;
      }

      *(v1 + 16) = v34;
      v35 = v1 + 16 * v33;
      *(v35 + 32) = v29;
      *(v35 + 40) = v31;
      if ([v27 code] != 134400)
      {

        goto LABEL_44;
      }

      v37 = *(v1 + 16);
      v36 = *(v1 + 24);
      if (v37 >= v36 >> 1)
      {
        v1 = sub_233143EE0((v36 > 1), v37 + 1, 1, v1);
      }

      v38 = 0x80000002332AA090;
      *(v1 + 16) = v37 + 1;
      v39 = v1 + 16 * v37;
      v40 = 0xD000000000000024;
      goto LABEL_43;
    }
  }

LABEL_44:
  v48 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDE1A98, &unk_2332985F0);
  sub_23315246C(&qword_280D39BB0, &unk_27DDE1A98, &unk_2332985F0);
  v42 = sub_23328D8FC();

  return v42;
}

uint64_t sub_2331EA3B4(uint64_t result)
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
  v7 = *v1;
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

  result = sub_233143EE0(result, v11, 1, v3);
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
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

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

BOOL TTSVBDataStoreEvent.voicesDidChange.getter()
{
  v1 = v0;
  v2 = type metadata accessor for TTSVBDataStoreEvent(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for TTSVBDataStoreEvent.MergeEvent(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2331ED654(v1, v5, type metadata accessor for TTSVBDataStoreEvent);
  if (swift_getEnumCaseMultiPayload())
  {
    sub_2331EC8A4(v5, type metadata accessor for TTSVBDataStoreEvent);
    return 0;
  }

  else
  {
    sub_2331EC944(v5, v9, type metadata accessor for TTSVBDataStoreEvent.MergeEvent);
    type metadata accessor for TTSVBLocalVoiceMO();
    v11 = [swift_getObjCClassFromMetadata() entity];
    v10 = TTSVBDataStoreEvent.MergeEvent.anyObjectIsEntity(_:)(v11);

    sub_2331EC8A4(v9, type metadata accessor for TTSVBDataStoreEvent.MergeEvent);
  }

  return v10;
}

double sub_2331EA62C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  v6 = *v3;
  v7 = sub_233144260(a1, a2);
  if (v8)
  {
    v9 = v7;
    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v4;
    v15 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_233144908();
      v12 = v15;
    }

    v13 = *(*(v12 + 48) + 16 * v9 + 8);

    sub_233145134((*(v12 + 56) + 32 * v9), a3);
    sub_2331EA9CC(v9, v12);
    *v4 = v12;
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

unint64_t sub_2331EA6D0(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  v5 = sub_23328E1CC();

  return sub_2331EAD98(a1, v5);
}

uint64_t sub_2331EA714(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2E98, &unk_23329B680);
  result = sub_23328E34C();
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
      v20 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v23 = v20 | (v9 << 6);
      v24 = *(v5 + 48) + 40 * v23;
      if (a2)
      {
        v25 = *v24;
        v26 = *(v24 + 16);
        v40 = *(v24 + 32);
        v38 = v25;
        v39 = v26;
        sub_233145134((*(v5 + 56) + 32 * v23), v37);
      }

      else
      {
        sub_2331ED5F8(v24, &v38);
        sub_23311B0C0(*(v5 + 56) + 32 * v23, v37);
      }

      v27 = *(v8 + 40);
      result = sub_23328E1CC();
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

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v29) & ~*(v15 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = *(v8 + 48) + 40 * v16;
      v18 = v38;
      v19 = v39;
      *(v17 + 32) = v40;
      *v17 = v18;
      *(v17 + 16) = v19;
      result = sub_233145134(v37, (*(v8 + 56) + 32 * v16));
      ++*(v8 + 16);
    }

    v21 = v9;
    while (1)
    {
      v9 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v22 = v10[v9];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v13 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    if (a2)
    {
      v35 = 1 << *(v5 + 32);
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

    v3 = v36;
  }

  else
  {
  }

  *v3 = v8;
  return result;
}

uint64_t sub_2331EA9CC(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_23328E16C() + 1) & ~v5;
    do
    {
      v10 = *(a2 + 40);
      v11 = (*(a2 + 48) + 16 * v6);
      v12 = *v11;
      v13 = v11[1];
      sub_23328E61C();

      sub_23328DA3C();
      v14 = sub_23328E66C();

      v15 = v14 & v7;
      if (v3 >= v8)
      {
        if (v15 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v15 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v15)
      {
LABEL_10:
        v16 = *(a2 + 48);
        v17 = (v16 + 16 * v3);
        v18 = (v16 + 16 * v6);
        if (v3 != v6 || v17 >= v18 + 1)
        {
          *v17 = *v18;
        }

        v19 = *(a2 + 56);
        v20 = (v19 + 32 * v3);
        v21 = (v19 + 32 * v6);
        if (v3 != v6 || v20 >= v21 + 2)
        {
          v9 = v21[1];
          *v20 = *v21;
          v20[1] = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v22 = *(a2 + 16);
  v23 = __OFSUB__(v22, 1);
  v24 = v22 - 1;
  if (v23)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v24;
    ++*(a2 + 36);
  }

  return result;
}

_OWORD *sub_2331EAB7C(_OWORD *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_2331EA6D0(a2);
  v11 = *(v8 + 16);
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_15;
  }

  v14 = v9;
  v15 = *(v8 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      sub_2331EAE60();
      goto LABEL_7;
    }

    sub_2331EA714(v13, a3 & 1);
    v19 = *v4;
    v20 = sub_2331EA6D0(a2);
    if ((v14 & 1) == (v21 & 1))
    {
      v10 = v20;
      v16 = *v4;
      if (v14)
      {
        goto LABEL_8;
      }

LABEL_13:
      sub_2331ED5F8(a2, v22);
      return sub_2331EAD1C(v10, v22, a1, v16);
    }

LABEL_15:
    result = sub_23328E5AC();
    __break(1u);
    return result;
  }

LABEL_7:
  v16 = *v4;
  if ((v14 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v17 = (v16[7] + 32 * v10);
  __swift_destroy_boxed_opaque_existential_0(v17);

  return sub_233145134(a1, v17);
}

_OWORD *sub_2331EAD1C(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v5 = a4[6] + 40 * a1;
  v6 = *(a2 + 16);
  *v5 = *a2;
  *(v5 + 16) = v6;
  *(v5 + 32) = *(a2 + 32);
  result = sub_233145134(a3, (a4[7] + 32 * a1));
  v8 = a4[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v10;
  }

  return result;
}

unint64_t sub_2331EAD98(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_2331ED5F8(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x23839BF30](v9, a1);
      sub_2331EACC8(v9);
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

void *sub_2331EAE60()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2E98, &unk_23329B680);
  v2 = *v0;
  v3 = sub_23328E33C();
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
        v18 = 40 * v17;
        sub_2331ED5F8(*(v2 + 48) + 40 * v17, v23);
        v17 *= 32;
        sub_23311B0C0(*(v2 + 56) + v17, v22);
        v19 = *(v4 + 48) + v18;
        v20 = v23[0];
        v21 = v23[1];
        *(v19 + 32) = v24;
        *v19 = v20;
        *(v19 + 16) = v21;
        result = sub_233145134(v22, (*(v4 + 56) + v17));
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

void sub_2331EB004(void *a1)
{
  v2 = [a1 entitiesByName];
  sub_233144EEC(0, &qword_280D39B98, 0x277CBE408);
  v3 = sub_23328D89C();

  if (!*(v3 + 16) || (v4 = sub_233144260(0xD000000000000012, 0x80000002332A9D30), (v5 & 1) == 0))
  {

    type metadata accessor for TTSVBError(0);
    sub_2331CCB20(&qword_280D3A0B0, type metadata accessor for TTSVBError);
    swift_allocError();
    TTSVBError.init(_:_:_:)(0xD000000000000019, 0x80000002332AA360, 0xD000000000000030, 0x80000002332AA380, 0, v26);
    swift_willThrow();
    return;
  }

  v6 = *(*(v3 + 56) + 8 * v4);

  v7 = [v6 attributesByName];
  sub_233144EEC(0, &qword_280D39B88, 0x277CBE358);
  v8 = sub_23328D89C();

  if (!*(v8 + 16) || (v9 = sub_233144260(0x7475466F69647561, 0xEB00000000657275), (v10 & 1) == 0))
  {

    sub_23328E24C();

    v27 = [v6 description];
    v28 = sub_23328D98C();
    v30 = v29;

    MEMORY[0x23839B7E0](v28, v30);

    type metadata accessor for TTSVBError(0);
    sub_2331CCB20(&qword_280D3A0B0, type metadata accessor for TTSVBError);
    swift_allocError();
    TTSVBError.init(_:_:_:)(0xD000000000000019, 0x80000002332AA360, 0xD000000000000038, 0x80000002332AA3C0, 0, v31);
    swift_willThrow();

    return;
  }

  v38 = v6;
  v11 = *(*(v8 + 56) + 8 * v9);

  if ([v11 respondsToSelector_])
  {
    v12 = sub_23328DC6C();
    v13 = sub_23328D95C();
    [v11 setValue:v12 forKey:v13];

    v14 = [a1 entitiesByName];
    v15 = sub_23328D89C();

    if (!*(v15 + 16) || (v16 = sub_233144260(0xD000000000000015, 0x80000002332A7DD0), (v17 & 1) == 0))
    {

      type metadata accessor for TTSVBError(0);
      sub_2331CCB20(&qword_280D3A0B0, type metadata accessor for TTSVBError);
      swift_allocError();
      TTSVBError.init(_:_:_:)(0xD000000000000019, 0x80000002332AA360, 0xD000000000000033, 0x80000002332AA400, 0, v32);
      swift_willThrow();

      return;
    }

    v18 = *(*(v15 + 56) + 8 * v16);

    v19 = [v18 attributesByName];
    v20 = sub_23328D89C();

    if (!*(v20 + 16) || (v21 = sub_233144260(0x75747546656C6966, 0xEA00000000006572), (v22 & 1) == 0))
    {

      sub_23328E24C();

      v33 = [v18 description];
      v34 = sub_23328D98C();
      v36 = v35;

      MEMORY[0x23839B7E0](v34, v36);

      type metadata accessor for TTSVBError(0);
      sub_2331CCB20(&qword_280D3A0B0, type metadata accessor for TTSVBError);
      swift_allocError();
      TTSVBError.init(_:_:_:)(0xD000000000000019, 0x80000002332AA360, 0xD000000000000037, 0x80000002332AA440, 0, v37);
      swift_willThrow();

      return;
    }

    v23 = *(*(v20 + 56) + 8 * v21);

    if ([v23 respondsToSelector_])
    {
      v24 = sub_23328DC6C();
      v25 = sub_23328D95C();
      [v23 setValue:v24 forKey:v25];

      return;
    }
  }

  sub_23328E31C();
  __break(1u);
}

void sub_2331EB774()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v1;

  sub_2331EB7F8(v4, v4, v2, v3);
}

uint64_t block_copy_helper_6(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_2331EB7F8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v128 = a3;
  v134 = *MEMORY[0x277D85DE8];
  v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDE25D0, &unk_233290330);
  v7 = *(*(v129 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v129);
  v127 = &v111 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v118 = &v111 - v10;
  v119 = type metadata accessor for TTSVBError.Reason(0);
  v11 = *(*(v119 - 8) + 64);
  MEMORY[0x28223BE20](v119);
  v120 = &v111 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1B38, &unk_2332909A0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v122 = &v111 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v121 = &v111 - v18;
  MEMORY[0x28223BE20](v17);
  v20 = (&v111 - v19);
  v21 = type metadata accessor for TTSVBError(0);
  v125 = *(v21 - 8);
  v126 = v21;
  v22 = *(v125 + 64);
  MEMORY[0x28223BE20](v21);
  v24 = &v111 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_23328D6EC();
  v123 = *(v25 - 8);
  v124 = v25;
  v26 = *(v123 + 64);
  MEMORY[0x28223BE20](v25);
  v28 = &v111 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_23328D83C();
  v30 = *(v29 - 8);
  v31 = *(v30 + 64);
  MEMORY[0x28223BE20](v29);
  v33 = (&v111 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0));
  v34 = *(a1 + OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport14TTSVBDataStore_queue);
  *v33 = v34;
  (*(v30 + 104))(v33, *MEMORY[0x277D85200], v29);
  v35 = v34;
  v36 = sub_23328D85C();
  (*(v30 + 8))(v33, v29);
  if ((v36 & 1) == 0)
  {
    __break(1u);
LABEL_38:
    v44 = sub_23328E19C();
    goto LABEL_6;
  }

  v37 = a1;
  if (*(a1 + OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport14TTSVBDataStore_queue_shouldAttemptLoad) != 1)
  {
    v58 = OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport14TTSVBDataStore_queue_loadError;
    swift_beginAccess();
    sub_233121D34(a1 + v58, v20, &qword_27DDE1B38, &unk_2332909A0);
    if ((*(v125 + 48))(v20, 1, v126) != 1)
    {
      sub_2331EC944(v20, v24, type metadata accessor for TTSVBError);
      v63 = v127;
      sub_2331ED654(v24, v127, type metadata accessor for TTSVBError);
      swift_storeEnumTagMultiPayload();
      sub_2331E4D30(v63, a2, v128, a4);
      sub_233121E04(v63, &unk_27DDE25D0, &unk_233290330);
      sub_2331EC8A4(v24, type metadata accessor for TTSVBError);
LABEL_36:
      v110 = *MEMORY[0x277D85DE8];
      return;
    }

    sub_233121E04(v20, &qword_27DDE1B38, &unk_2332909A0);
    v59 = v127;
    swift_storeEnumTagMultiPayload();
    v60 = v59;
    v61 = a2;
    v62 = v128;
    goto LABEL_34;
  }

  *(a1 + OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport14TTSVBDataStore_queue_shouldAttemptLoad) = 0;
  v36 = sub_2331E6AA8();
  v38 = sub_233225440();
  v40 = v123;
  v39 = v124;
  (*(v123 + 16))(v28, v38, v124);

  v20 = sub_23328D6CC();
  v41 = sub_23328DE1C();

  v116 = v41;
  v42 = os_log_type_enabled(v20, v41);
  v130 = v36;
  if (!v42)
  {

    (*(v40 + 8))(v28, v39);
    goto LABEL_21;
  }

  v43 = swift_slowAlloc();
  v112 = swift_slowAlloc();
  *&v132 = v112;
  v113 = v43;
  *v43 = 136315138;
  v115 = a1;
  if (v36 >> 62)
  {
    goto LABEL_38;
  }

  v44 = *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_6:
  v114 = v20;
  v45 = MEMORY[0x277D84F90];
  if (v44)
  {
    v117 = a2;
    v111 = a4;
    v131 = MEMORY[0x277D84F90];
    sub_23312676C(0, v44 & ~(v44 >> 63), 0);
    if (v44 < 0)
    {
      __break(1u);
    }

    v46 = 0;
    v45 = v131;
    v47 = v36 & 0xC000000000000001;
    v48 = v28;
    do
    {
      if (v47)
      {
        v49 = MEMORY[0x23839BFC0](v46, v36);
      }

      else
      {
        v49 = *(v36 + 8 * v46 + 32);
      }

      v50 = v49;
      v51 = [v50 description];
      v52 = sub_23328D98C();
      v54 = v53;

      v131 = v45;
      v56 = *(v45 + 16);
      v55 = *(v45 + 24);
      if (v56 >= v55 >> 1)
      {
        sub_23312676C((v55 > 1), v56 + 1, 1);
        v45 = v131;
      }

      ++v46;
      *(v45 + 16) = v56 + 1;
      v57 = v45 + 16 * v56;
      *(v57 + 32) = v52;
      *(v57 + 40) = v54;
      v36 = v130;
    }

    while (v44 != v46);
    v28 = v48;
    a4 = v111;
    a2 = v117;
  }

  v131 = v45;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDE1A98, &unk_2332985F0);
  sub_23315246C(&qword_280D39BB0, &unk_27DDE1A98, &unk_2332985F0);
  v64 = sub_23328D8FC();
  v66 = v65;

  v67 = sub_23311A8F4(v64, v66, &v132);

  v68 = v113;
  *(v113 + 1) = v67;
  v69 = v114;
  _os_log_impl(&dword_233109000, v114, v116, "Will create and load TTSVoiceBanking persistent stores: %s", v68, 0xCu);
  v70 = v112;
  __swift_destroy_boxed_opaque_existential_0(v112);
  MEMORY[0x23839CFD0](v70, -1, -1);
  MEMORY[0x23839CFD0](v68, -1, -1);

  (*(v123 + 8))(v28, v124);
  v37 = v115;
LABEL_21:
  v71 = sub_2331E491C();
  sub_233144EEC(0, &qword_280D39B78, 0x277CBE4E0);
  v72 = sub_23328DBDC();
  [v71 setPersistentStoreDescriptions_];

  v73 = OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport14TTSVBDataStore____lazy_storage___container;
  v74 = *(v37 + OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport14TTSVBDataStore____lazy_storage___container);
  *&v132 = 0;
  if ([v74 load_])
  {
    v117 = a2;
    v75 = v132;

    v76 = [*(v37 + v73) viewContext];
    v77 = sub_23328D95C();
    [v76 setName_];

    v78 = [*(v37 + v73) viewContext];
    v79 = [objc_opt_self() mergeByPropertyObjectTrumpMergePolicy];
    [v78 setMergePolicy_];

    v80 = OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport14TTSVBDataStore_configuration;
    if (*(v37 + OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport14TTSVBDataStore_configuration))
    {
      v81 = sub_23328E54C();

      if ((v81 & 1) == 0)
      {
LABEL_29:
        if (*(v37 + v80) == 1)
        {

          v104 = v128;
        }

        else
        {
          v105 = sub_23328E54C();

          v104 = v128;
          if ((v105 & 1) == 0)
          {
LABEL_33:
            v59 = v127;
            swift_storeEnumTagMultiPayload();
            v60 = v59;
            v61 = v117;
            v62 = v104;
LABEL_34:
            sub_2331E4D30(v60, v61, v62, a4);
            v94 = v59;
            goto LABEL_35;
          }
        }

        v106 = objc_opt_self();
        v107 = [v106 defaultCenter];
        [v107 addObserver:v37 selector:sel_handlePersistentCloudKitContainerEventChanged_ name:*MEMORY[0x277CBE1F0] object:0];

        v108 = [v106 defaultCenter];
        [v108 addObserver:v37 selector:sel_handleWillResetCloudSync_ name:*MEMORY[0x277CBE140] object:0];

        v109 = [v106 defaultCenter];
        [v109 addObserver:v37 selector:sel_handleDidResetCloudSync_ name:*MEMORY[0x277CBE130] object:0];

        goto LABEL_33;
      }
    }

    else
    {
    }

    v95 = [*(v37 + v73) viewContext];
    [v95 setAutomaticallyMergesChangesFromParent_];

    v96 = objc_opt_self();
    v97 = [v96 defaultCenter];
    v98 = v37;
    v99 = *MEMORY[0x277CBE1A0];
    v100 = [*(v98 + v73) viewContext];
    [v97 addObserver:v98 selector:sel_handleManagedObjectContextDidMergeChangesObjectIDs_ name:v99 object:v100];

    v101 = [v96 defaultCenter];
    v102 = *MEMORY[0x277CBE260];
    v103 = [*(v98 + v73) persistentStoreCoordinator];
    [v101 addObserver:v98 selector:sel_handlePersistentStoreRemoteChange_ name:v102 object:v103];

    v37 = v98;
    goto LABEL_29;
  }

  v82 = v132;
  v83 = sub_23328CA7C();

  swift_willThrow();
  v132 = xmmword_23329B320;
  v133 = 3;
  v84 = v120;
  sub_2331E42F8(&OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport14TTSVBDataStore____lazy_storage___localDatastoreURL, &OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport14TTSVBDataStore_localStoreName, v120);
  swift_storeEnumTagMultiPayload();
  v85 = sub_23328CA6C();
  v86 = v121;
  TTSVBError.init(_:_:_:)(&v132, v84, v85, v121);
  v88 = v125;
  v87 = v126;
  (*(v125 + 56))(v86, 0, 1, v126);
  v89 = v37;
  v90 = OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport14TTSVBDataStore_queue_loadError;
  swift_beginAccess();
  sub_2331BD410(v86, v89 + v90, &qword_27DDE1B38, &unk_2332909A0);
  swift_endAccess();
  v91 = v89 + v90;
  v92 = v122;
  sub_233121D34(v91, v122, &qword_27DDE1B38, &unk_2332909A0);
  if ((*(v88 + 48))(v92, 1, v87) != 1)
  {

    v93 = v118;
    sub_2331EC944(v92, v118, type metadata accessor for TTSVBError);
    swift_storeEnumTagMultiPayload();
    sub_2331E4D30(v93, a2, v128, a4);

    v94 = v93;
LABEL_35:
    sub_233121E04(v94, &unk_27DDE25D0, &unk_233290330);
    goto LABEL_36;
  }

  __break(1u);
}

uint64_t sub_2331EC628(void *a1)
{
  v2 = sub_23328D6EC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [a1 userInfo];
  if (!v8)
  {
    goto LABEL_9;
  }

  v9 = v8;
  v10 = sub_23328D89C();

  v11 = *MEMORY[0x277CBE190];
  v20[1] = sub_23328D98C();
  v20[2] = v12;
  sub_23328E1EC();
  if (!*(v10 + 16) || (v13 = sub_2331EA6D0(v21), (v14 & 1) == 0))
  {

    sub_2331EACC8(v21);
LABEL_9:
    v22 = 0u;
    v23 = 0u;
    return sub_233121E04(&v22, &qword_27DDE2660, &qword_233298100);
  }

  sub_23311B0C0(*(v10 + 56) + 32 * v13, &v22);
  sub_2331EACC8(v21);

  if (!*(&v23 + 1))
  {
    return sub_233121E04(&v22, &qword_27DDE2660, &qword_233298100);
  }

  sub_233121E04(&v22, &qword_27DDE2660, &qword_233298100);
  v15 = sub_233225440();
  (*(v3 + 16))(v7, v15, v2);
  v16 = sub_23328D6CC();
  v17 = sub_23328DE1C();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&dword_233109000, v16, v17, "*** Got note *** should invalidate all objects", v18, 2u);
    MEMORY[0x23839CFD0](v18, -1, -1);
  }

  return (*(v3 + 8))(v7, v2);
}

uint64_t sub_2331EC8A4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2331EC944(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_2331EC9B8(unint64_t a1)
{
  v1 = a1;
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    if (sub_23328E19C())
    {
LABEL_3:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2E90, &qword_23329B678);
      v3 = sub_23328E22C();
      v4 = v1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      v5 = sub_23328E19C();
      if (!v5)
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

  v3 = MEMORY[0x277D84FA0];
  v4 = v1 & 0xFFFFFFFFFFFFFF8;
  if (v2)
  {
    goto LABEL_8;
  }

LABEL_4:
  v5 = *(v4 + 16);
  if (!v5)
  {
    return;
  }

LABEL_9:
  v6 = v3 + 56;
  v40 = v5;
  if ((v1 & 0xC000000000000001) != 0)
  {
    v7 = 0;
    v38 = v1;
    while (1)
    {
      v8 = MEMORY[0x23839BFC0](v7, v1);
      v9 = __OFADD__(v7++, 1);
      if (v9)
      {
        break;
      }

      v10 = v8;
      v11 = *(v3 + 40);
      v12 = sub_23328DFCC();
      v13 = -1 << *(v3 + 32);
      v14 = v12 & ~v13;
      v15 = v14 >> 6;
      v16 = *(v6 + 8 * (v14 >> 6));
      v17 = 1 << v14;
      if (((1 << v14) & v16) != 0)
      {
        v18 = ~v13;
        sub_233144EEC(0, &qword_27DDE2E70, 0x277CBE448);
        while (1)
        {
          v19 = *(*(v3 + 48) + 8 * v14);
          v20 = sub_23328DFDC();

          if (v20)
          {
            break;
          }

          v14 = (v14 + 1) & v18;
          v15 = v14 >> 6;
          v16 = *(v6 + 8 * (v14 >> 6));
          v17 = 1 << v14;
          if (((1 << v14) & v16) == 0)
          {
            v1 = v38;
            v5 = v40;
            goto LABEL_18;
          }
        }

        swift_unknownObjectRelease();
        v1 = v38;
        v5 = v40;
        if (v7 == v40)
        {
          return;
        }
      }

      else
      {
LABEL_18:
        *(v6 + 8 * v15) = v17 | v16;
        *(*(v3 + 48) + 8 * v14) = v10;
        v21 = *(v3 + 16);
        v9 = __OFADD__(v21, 1);
        v22 = v21 + 1;
        if (v9)
        {
          goto LABEL_33;
        }

        *(v3 + 16) = v22;
        if (v7 == v5)
        {
          return;
        }
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
  }

  else
  {
    v23 = 0;
    v37 = v1 + 32;
    v39 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (v23 != v39)
    {
      v24 = *(v3 + 40);
      v25 = *(v37 + 8 * v23);
      v26 = sub_23328DFCC();
      v27 = -1 << *(v3 + 32);
      v28 = v26 & ~v27;
      v29 = v28 >> 6;
      v30 = *(v6 + 8 * (v28 >> 6));
      v31 = 1 << v28;
      if (((1 << v28) & v30) != 0)
      {
        v32 = ~v27;
        sub_233144EEC(0, &qword_27DDE2E70, 0x277CBE448);
        do
        {
          v33 = *(*(v3 + 48) + 8 * v28);
          v34 = sub_23328DFDC();

          if (v34)
          {

            v5 = v40;
            goto LABEL_23;
          }

          v28 = (v28 + 1) & v32;
          v29 = v28 >> 6;
          v30 = *(v6 + 8 * (v28 >> 6));
          v31 = 1 << v28;
        }

        while (((1 << v28) & v30) != 0);
        v5 = v40;
      }

      *(v6 + 8 * v29) = v31 | v30;
      *(*(v3 + 48) + 8 * v28) = v25;
      v35 = *(v3 + 16);
      v9 = __OFADD__(v35, 1);
      v36 = v35 + 1;
      if (v9)
      {
        goto LABEL_35;
      }

      *(v3 + 16) = v36;
LABEL_23:
      if (++v23 == v5)
      {
        return;
      }
    }
  }

  __break(1u);
LABEL_35:
  __break(1u);
}

unint64_t sub_2331ECCA8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2E98, &unk_23329B680);
    v3 = sub_23328E35C();
    v4 = a1 + 32;

    while (1)
    {
      sub_233121D34(v4, v13, &qword_27DDE2E58, &unk_23329B350);
      result = sub_2331EA6D0(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_233145134(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
      if (!--v1)
      {

        return v3;
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

unint64_t sub_2331ECDE4()
{
  result = qword_27DDE2E78;
  if (!qword_27DDE2E78)
  {
    sub_233144EEC(255, &qword_27DDE2E70, 0x277CBE448);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDE2E78);
  }

  return result;
}

unint64_t sub_2331ECE50()
{
  result = qword_27DDE2E80;
  if (!qword_27DDE2E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDE2E80);
  }

  return result;
}

unint64_t sub_2331ECEA8()
{
  result = qword_27DDE2E88;
  if (!qword_27DDE2E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDE2E88);
  }

  return result;
}

void sub_2331ECF44()
{
  v0 = sub_23328CC9C();
  if (v1 <= 0x3F)
  {
    v6 = *(v0 - 8) + 64;
    sub_2331ED0D8(319, &qword_280D3A0D8, MEMORY[0x28220BE18]);
    if (v3 <= 0x3F)
    {
      v7 = *(v2 - 8) + 64;
      sub_2331ED0D8(319, &qword_280D3A0A8, type metadata accessor for TTSVBError);
      if (v5 <= 0x3F)
      {
        v8 = *(v4 - 8) + 64;
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_2331ED0D8(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_23328E00C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_2331ED164()
{
  sub_23328CC9C();
  if (v0 <= 0x3F)
  {
    sub_233144EEC(319, &qword_280D39B90, 0x277CBE450);
    if (v1 <= 0x3F)
    {
      sub_2331ED218();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_2331ED218()
{
  if (!qword_280D39BB8)
  {
    v0 = sub_23328D8AC();
    if (!v1)
    {
      atomic_store(v0, &qword_280D39BB8);
    }
  }
}

uint64_t sub_2331ED28C()
{
  result = type metadata accessor for TTSVBDataStoreEvent.MergeEvent(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for TTSVBDataStoreEvent.CloudKitSyncEvent(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_2331ED334()
{
  result = sub_23328C93C();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v7 = a4(0);
  v8 = *(v7 - 8);
  if (*(v8 + 84) == a2)
  {
    v9 = *(v8 + 48);

    return v9(a1, a2, v7);
  }

  else
  {
    v11 = *(a1 + *(a3 + 20));
    if (v11 >= 0xFFFFFFFF)
    {
      LODWORD(v11) = -1;
    }

    return (v11 + 1);
  }
}

uint64_t __swift_store_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t (*a5)(void))
{
  result = a5(0);
  v10 = *(result - 8);
  if (*(v10 + 84) == a3)
  {
    v11 = *(v10 + 56);

    return v11(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_2331ED544()
{
  result = sub_23328C93C();
  if (v1 <= 0x3F)
  {
    result = sub_233144EEC(319, &qword_280D39B70, 0x277CBE480);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_2331ED654(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2331ED6BC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDE25D0, &unk_233290330);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2331ED7A4()
{
  v1 = [v0 path];
  if (v1)
  {
    v2 = v1;
    sub_23328D98C();

    v3 = sub_23328CC9C();
    v4 = *(v3 - 8);
    v5 = *(v4 + 64);
    MEMORY[0x28223BE20](v3);
    v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
    sub_23328CB7C();

    sub_23328CBEC();
    return (*(v4 + 8))(v7, v3);
  }

  else
  {
    result = sub_23328E31C();
    __break(1u);
  }

  return result;
}

uint64_t TTSVBSiriTTSTrainingAsset.metadataURL.getter()
{
  v1 = sub_23328CC9C();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = [v0 path];
  if (v4)
  {
    v5 = v4;
    sub_23328D98C();

    MEMORY[0x28223BE20](v6);
    sub_23328CB7C();

    sub_23328CBEC();
    v7 = *(v2 + 8);
    v7(&v9 - v3, v1);
    sub_23328CBEC();
    return (v7)(&v9 - v3, v1);
  }

  else
  {
    result = sub_23328E31C();
    __break(1u);
  }

  return result;
}

uint64_t TTSVBSiriTTSTrainingAsset.trainingScript.getter@<X0>(void *a1@<X8>)
{
  v2 = sub_23328CC9C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  TTSVBSiriTTSTrainingAsset.metadataURL.getter();
  static TTSVBTrainingScript.parseScript(fromMetadatFile:)(v6, a1);
  return (*(v3 + 8))(v6, v2);
}

id sub_2331EDD8C(void *a1, uint64_t a2, void (*a3)(void))
{
  v4 = a1;
  a3();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2550, &qword_23329B6B0);
  v5 = sub_23328DBDC();

  return v5;
}

uint64_t sub_2331EDE08()
{
  v1 = sub_23328D95C();
  v2 = [v0 objectForKey_];

  if (v2)
  {
    sub_23328E0DC();
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2EA8, &qword_23329B6A8);
    if (swift_dynamicCast())
    {
      return v4;
    }
  }

  else
  {
    sub_233121E04(v7, &qword_27DDE2660, &qword_233298100);
  }

  return MEMORY[0x277D84F90];
}

void sub_2331EDF18(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v6 = a1;
  v5 = sub_23328D95C();
  [v6 setObject:v4 forKey:v5];
}

void sub_2331EDFB0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2550, &qword_23329B6B0);
  v1 = sub_23328DBDC();

  v2 = sub_23328D95C();
  [v0 setObject:v1 forKey:v2];
}

void sub_2331EE070(id *a1@<X0>, SEL *a2@<X3>, uint64_t *a3@<X8>)
{
  v4 = [*a1 *a2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2550, &qword_23329B6B0);
  v5 = sub_23328DBFC();

  *a3 = v5;
}

void sub_2331EE0E8(uint64_t *a1, void **a2, uint64_t a3, uint64_t a4, SEL *a5)
{
  v6 = *a1;
  v7 = *a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2550, &qword_23329B6B0);
  v8 = sub_23328DBDC();
  [v7 *a5];
}

id sub_2331EE168(void *a1)
{
  v1 = a1;
  NSUserDefaults.liveSpeechCategories.getter();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2EB8, &unk_23329B6C0);
  v2 = sub_23328D87C();

  return v2;
}

void sub_2331EE1EC(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2EB8, &unk_23329B6C0);
  sub_23328D89C();
  v4 = a1;
  v2 = sub_23328D87C();

  v3 = sub_23328D95C();
  [v4 setObject:v2 forKey:v3];
}

void NSUserDefaults.liveSpeechCategories.setter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2EB8, &unk_23329B6C0);
  v1 = sub_23328D87C();

  v2 = sub_23328D95C();
  [v0 setObject:v1 forKey:v2];
}

void sub_2331EE3A0(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 liveSpeechCategories];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2EB8, &unk_23329B6C0);
  v4 = sub_23328D89C();

  *a2 = v4;
}

void sub_2331EE420(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2EB8, &unk_23329B6C0);
  v4 = sub_23328D87C();
  [v3 setLiveSpeechCategories_];
}

id sub_2331EE4A8(void *a1)
{
  v1 = a1;
  v2 = sub_23328D95C();
  v3 = [v1 integerForKey_];

  return v3;
}

id NSUserDefaults.liveSpeechMaxRecentsCount.getter()
{
  v1 = sub_23328D95C();
  v2 = [v0 integerForKey_];

  return v2;
}

void sub_2331EE574(void *a1)
{
  v3 = a1;
  v1 = sub_23328DD5C();
  v2 = sub_23328D95C();
  [v3 setValue:v1 forKey:v2];
}

void NSUserDefaults.liveSpeechMaxRecentsCount.setter()
{
  v1 = sub_23328DD5C();
  v2 = sub_23328D95C();
  [v0 setValue:v1 forKey:v2];
}

id sub_2331EE680@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 liveSpeechMaxRecentsCount];
  *a2 = result;
  return result;
}

uint64_t sub_2331EE6C8(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x73746E65636552;
  }

  else
  {
    v4 = 0x6465766153;
  }

  if (v3)
  {
    v5 = 0xE500000000000000;
  }

  else
  {
    v5 = 0xE700000000000000;
  }

  if (*a2)
  {
    v6 = 0x73746E65636552;
  }

  else
  {
    v6 = 0x6465766153;
  }

  if (*a2)
  {
    v7 = 0xE700000000000000;
  }

  else
  {
    v7 = 0xE500000000000000;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_23328E54C();
  }

  return v9 & 1;
}

uint64_t sub_2331EE76C()
{
  v1 = *v0;
  sub_23328E61C();
  sub_23328DA3C();

  return sub_23328E66C();
}

uint64_t sub_2331EE7EC()
{
  *v0;
  sub_23328DA3C();
}

uint64_t sub_2331EE858()
{
  v1 = *v0;
  sub_23328E61C();
  sub_23328DA3C();

  return sub_23328E66C();
}

uint64_t sub_2331EE8D4@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_23328E37C();

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

void sub_2331EE934(uint64_t *a1@<X8>)
{
  v2 = 0x6465766153;
  if (*v1)
  {
    v2 = 0x73746E65636552;
  }

  v3 = 0xE500000000000000;
  if (*v1)
  {
    v3 = 0xE700000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

char *sub_2331EEA44(uint64_t a1)
{
  v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v3 = *(a1 + 16);
  v4 = v2;
  if (v3 && (v5 = sub_233144260(1954047348, 0xE400000000000000), (v6 & 1) != 0) && (sub_23311B0C0(*(a1 + 56) + 32 * v5, v38), (swift_dynamicCast() & 1) != 0))
  {
    v7 = v37[7];
    v8 = v37[8];
  }

  else
  {
    v7 = 0;
    v8 = 0xE000000000000000;
  }

  v9 = &v4[OBJC_IVAR___LiveSpeechPhrase_text];
  swift_beginAccess();
  v10 = *(v9 + 1);
  *v9 = v7;
  *(v9 + 1) = v8;

  if (*(a1 + 16) && (v11 = sub_233144260(0x44497475706E69, 0xE700000000000000), (v12 & 1) != 0))
  {
    sub_23311B0C0(*(a1 + 56) + 32 * v11, v38);
    v13 = swift_dynamicCast();
    if (v13)
    {
      v14 = v37[4];
    }

    else
    {
      v14 = 0;
    }

    if (v13)
    {
      v15 = v37[5];
    }

    else
    {
      v15 = 0;
    }
  }

  else
  {
    v14 = 0;
    v15 = 0;
  }

  v16 = &v4[OBJC_IVAR___LiveSpeechPhrase_inputID];
  swift_beginAccess();
  v17 = *(v16 + 1);
  *v16 = v14;
  *(v16 + 1) = v15;

  if (*(a1 + 16) && (v18 = sub_233144260(0x79726F6765746163, 0xEA00000000004449), (v19 & 1) != 0))
  {
    sub_23311B0C0(*(a1 + 56) + 32 * v18, v38);
    v20 = swift_dynamicCast();
    if (v20)
    {
      v21 = v37[1];
    }

    else
    {
      v21 = 0;
    }

    if (v20)
    {
      v22 = v37[2];
    }

    else
    {
      v22 = 0;
    }
  }

  else
  {
    v21 = 0;
    v22 = 0;
  }

  v23 = &v4[OBJC_IVAR___LiveSpeechPhrase_categoryID];
  swift_beginAccess();
  v24 = *(v23 + 1);
  *v23 = v21;
  *(v23 + 1) = v22;

  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1A18, &unk_233297730);
  v26 = (*(*(v25 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v25 - 8);
  v28 = v37 - v27;
  if (*(a1 + 16) && (v29 = sub_233144260(0x6E6F697461657263, 0xEC00000065746144), (v30 & 1) != 0))
  {
    sub_23311B0C0(*(a1 + 56) + 32 * v29, v38);

    v31 = sub_23328CE1C();
    v32 = swift_dynamicCast();
    v33 = *(v31 - 8);
    (*(v33 + 56))(v28, v32 ^ 1u, 1, v31);
    v34 = 0;
    if ((*(v33 + 48))(v28, 1, v31) != 1)
    {
      v34 = sub_23328CD9C();
      (*(v33 + 8))(v28, v31);
    }
  }

  else
  {

    v35 = sub_23328CE1C();
    (*(*(v35 - 8) + 56))(v28, 1, 1, v35);
    v34 = 0;
  }

  [v4 setCreationDate_];

  return v4;
}

id sub_2331EEE80(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = (a1 + *a3);
  swift_beginAccess();
  if (v3[1])
  {
    v4 = *v3;

    v5 = sub_23328D95C();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t sub_2331EEF14(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a3)
  {
    v6 = sub_23328D98C();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  v9 = (a1 + *a4);
  swift_beginAccess();
  v10 = v9[1];
  *v9 = v6;
  v9[1] = v8;
}

uint64_t sub_2331EF0B8@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR___LiveSpeechPhrase_anyCreationDate;
  swift_beginAccess();
  sub_233121D34(v1 + v3, v8, &qword_27DDE2660, &qword_233298100);
  if (v9)
  {
    v4 = sub_23328CE1C();
    v5 = swift_dynamicCast();
    return (*(*(v4 - 8) + 56))(a1, v5 ^ 1u, 1, v4);
  }

  else
  {
    sub_233121E04(v8, &qword_27DDE2660, &qword_233298100);
    v7 = sub_23328CE1C();
    return (*(*(v7 - 8) + 56))(a1, 1, 1, v7);
  }
}

uint64_t sub_2331EF2F4(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1A18, &unk_233297730);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v12 - v5;
  sub_233121D34(a1, &v12 - v5, &qword_27DDE1A18, &unk_233297730);
  v7 = sub_23328CE1C();
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_233121E04(a1, &qword_27DDE1A18, &unk_233297730);
    sub_233121E04(v6, &qword_27DDE1A18, &unk_233297730);
    v13 = 0u;
    v14 = 0u;
  }

  else
  {
    *(&v14 + 1) = v7;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v13);
    (*(v8 + 32))(boxed_opaque_existential_1, v6, v7);
    sub_233121E04(a1, &qword_27DDE1A18, &unk_233297730);
  }

  v10 = OBJC_IVAR___LiveSpeechPhrase_anyCreationDate;
  swift_beginAccess();
  sub_2331F4990(&v13, v1 + v10);
  return swift_endAccess();
}

uint64_t sub_2331EF4C0(void *a1, uint64_t *a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v35 = a6;
  v36 = a7;
  v37 = a5;
  v38 = a4;
  v42 = a3;
  v46 = a2;
  v8 = sub_23328D6EC();
  v40 = *(v8 - 8);
  v41 = v8;
  v9 = *(v40 + 64);
  MEMORY[0x28223BE20](v8);
  v39 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = a1;
  v11 = *a1;
  v12 = *(*a1 + 16);
  if (!v12)
  {
LABEL_21:
    v24 = sub_233225944();
    swift_beginAccess();
    v26 = v39;
    v25 = v40;
    v27 = v41;
    (*(v40 + 16))(v39, v24, v41);
    v28 = sub_23328D6CC();
    v29 = sub_23328DE3C();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v43 = v31;
      *v30 = 136315138;
      *(v30 + 4) = sub_23311A8F4(0xD00000000000003CLL, 0x80000002332AAAB0, &v43);
      _os_log_impl(&dword_233109000, v28, v29, "%s", v30, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v31);
      MEMORY[0x23839CFD0](v31, -1, -1);
      MEMORY[0x23839CFD0](v30, -1, -1);
    }

    (*(v25 + 8))(v26, v27);
    type metadata accessor for TTSVBError(0);
    sub_23311A3F8();
    swift_allocError();
    TTSVBError.init(_:_:_:)(0xD00000000000003CLL, 0x80000002332AAAB0, 0, 0, 0, v32);
    return swift_willThrow();
  }

  v13 = 0;
  v14 = -32;
  v15 = MEMORY[0x277D837D0];
  while (1)
  {
    if (v13 >= v11[2])
    {
      __break(1u);
      goto LABEL_29;
    }

    v16 = v11[v13 + 4];
    if (!*(v16 + 16))
    {
      goto LABEL_4;
    }

    v17 = v11[v13 + 4];

    v18 = sub_233144260(0x79726F6765746163, 0xEA00000000004449);
    if ((v19 & 1) == 0)
    {
      goto LABEL_3;
    }

    sub_23311B0C0(*(v16 + 56) + 32 * v18, v45);
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_3;
    }

    if (v43 == v46 && v44 == v42)
    {
    }

    else
    {
      v20 = sub_23328E54C();

      if ((v20 & 1) == 0)
      {
        goto LABEL_3;
      }
    }

    if (!*(v16 + 16) || (v21 = sub_233144260(1954047348, 0xE400000000000000), (v22 & 1) == 0) || (sub_23311B0C0(*(v16 + 56) + 32 * v21, v45), (swift_dynamicCast() & 1) == 0))
    {
LABEL_3:

      goto LABEL_4;
    }

    if (v43 == v38 && v44 == v37)
    {
      break;
    }

    v23 = sub_23328E54C();

    if (v23)
    {
      goto LABEL_25;
    }

LABEL_4:
    ++v13;
    v14 -= 8;
    if (v12 == v13)
    {
      goto LABEL_21;
    }
  }

LABEL_25:
  v45[3] = v15;
  v45[0] = v35;
  v45[1] = v36;

  result = swift_isUniquelyReferenced_nonNull_native();
  if (result)
  {
    goto LABEL_26;
  }

LABEL_29:
  result = sub_2331F46B0(v11);
  v11 = result;
LABEL_26:
  if (v13 >= v11[2])
  {
    __break(1u);
  }

  else
  {
    sub_2331EF948(v45, 1954047348, 0xE400000000000000);
    *v34 = v11;
    return notify_post("com.apple.livespeech.localprefschanged");
  }

  return result;
}

uint64_t sub_2331EF948(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 24))
  {
    sub_233145134(a1, v10);
    v6 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v3;
    sub_23314474C(v10, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v9;
  }

  else
  {
    sub_233121E04(a1, &qword_27DDE2660, &qword_233298100);
    sub_2331EA62C(a2, a3, v10);

    return sub_233121E04(v10, &qword_27DDE2660, &qword_233298100);
  }

  return result;
}

unint64_t _sSo14NSUserDefaultsC31TextToSpeechVoiceBankingSupportE04liveE10CategoriesSDySSSDyS2SGGvg_0()
{
  v1 = sub_23328D95C();
  v2 = [v0 objectForKey_];

  if (v2)
  {
    sub_23328E0DC();
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2EB0, &qword_23329B6B8);
    if (swift_dynamicCast())
    {
      return v4;
    }
  }

  else
  {
    sub_233121E04(v7, &qword_27DDE2660, &qword_233298100);
  }

  return sub_2331F488C(MEMORY[0x277D84F90]);
}

uint64_t sub_2331EFB38(void *a1, uint64_t *a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v35 = a6;
  v36 = a7;
  v37 = a5;
  v38 = a4;
  v42 = a3;
  v46 = a2;
  v8 = sub_23328D6EC();
  v40 = *(v8 - 8);
  v41 = v8;
  v9 = *(v40 + 64);
  MEMORY[0x28223BE20](v8);
  v39 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = a1;
  v11 = *a1;
  v12 = *(*a1 + 16);
  if (!v12)
  {
LABEL_21:
    v24 = sub_233225944();
    swift_beginAccess();
    v26 = v39;
    v25 = v40;
    v27 = v41;
    (*(v40 + 16))(v39, v24, v41);
    v28 = sub_23328D6CC();
    v29 = sub_23328DE3C();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v43 = v31;
      *v30 = 136315138;
      *(v30 + 4) = sub_23311A8F4(0xD000000000000045, 0x80000002332AAA60, &v43);
      _os_log_impl(&dword_233109000, v28, v29, "%s", v30, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v31);
      MEMORY[0x23839CFD0](v31, -1, -1);
      MEMORY[0x23839CFD0](v30, -1, -1);
    }

    (*(v25 + 8))(v26, v27);
    type metadata accessor for TTSVBError(0);
    sub_23311A3F8();
    swift_allocError();
    TTSVBError.init(_:_:_:)(0xD000000000000045, 0x80000002332AAA60, 0, 0, 0, v32);
    return swift_willThrow();
  }

  v13 = 0;
  v14 = -32;
  v15 = MEMORY[0x277D837D0];
  while (1)
  {
    if (v13 >= v11[2])
    {
      __break(1u);
      goto LABEL_29;
    }

    v16 = v11[v13 + 4];
    if (!*(v16 + 16))
    {
      goto LABEL_4;
    }

    v17 = v11[v13 + 4];

    v18 = sub_233144260(0x79726F6765746163, 0xEA00000000004449);
    if ((v19 & 1) == 0)
    {
      goto LABEL_3;
    }

    sub_23311B0C0(*(v16 + 56) + 32 * v18, v45);
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_3;
    }

    if (v43 == v46 && v44 == v42)
    {
    }

    else
    {
      v20 = sub_23328E54C();

      if ((v20 & 1) == 0)
      {
        goto LABEL_3;
      }
    }

    if (!*(v16 + 16) || (v21 = sub_233144260(1954047348, 0xE400000000000000), (v22 & 1) == 0) || (sub_23311B0C0(*(v16 + 56) + 32 * v21, v45), (swift_dynamicCast() & 1) == 0))
    {
LABEL_3:

      goto LABEL_4;
    }

    if (v43 == v38 && v44 == v37)
    {
      break;
    }

    v23 = sub_23328E54C();

    if (v23)
    {
      goto LABEL_25;
    }

LABEL_4:
    ++v13;
    v14 -= 8;
    if (v12 == v13)
    {
      goto LABEL_21;
    }
  }

LABEL_25:
  v45[3] = v15;
  v45[0] = v35;
  v45[1] = v36;

  result = swift_isUniquelyReferenced_nonNull_native();
  if (result)
  {
    goto LABEL_26;
  }

LABEL_29:
  result = sub_2331F46B0(v11);
  v11 = result;
LABEL_26:
  if (v13 >= v11[2])
  {
    __break(1u);
  }

  else
  {
    sub_2331EF948(v45, 0x79726F6765746163, 0xEA00000000004449);
    *v34 = v11;
    return notify_post("com.apple.livespeech.localprefschanged");
  }

  return result;
}

uint64_t sub_2331EFFD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v8 = sub_23328D98C();
  v10 = v9;
  v11 = sub_23328D98C();
  v13 = v12;
  v14 = sub_23328D98C();
  a7(v8, v10, v11, v13, v14, v15);

  return 1;
}

uint64_t sub_2331F00F0(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v2)
  {
    v27 = MEMORY[0x277D84F90];
    v25 = a1;
    sub_23328E2DC();
    v4 = v25 + 64;
    v5 = -1 << *(v25 + 32);
    v6 = sub_23328E15C();
    v7 = *(v25 + 36);
    result = type metadata accessor for LiveSpeechCategory(v6);
    v8 = v25;
    v9 = 0;
    while ((v6 & 0x8000000000000000) == 0 && v6 < 1 << *(v8 + 32))
    {
      v11 = v6 >> 6;
      if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
      {
        goto LABEL_21;
      }

      if (v7 != *(v8 + 36))
      {
        goto LABEL_22;
      }

      v26 = v9;
      v12 = v4;
      v13 = (*(v8 + 48) + 16 * v6);
      v15 = *v13;
      v14 = v13[1];
      v16 = *(*(v8 + 56) + 8 * v6);

      sub_2331F0BA8(v15, v14, v16);
      sub_23328E2BC();
      v17 = *(v27 + 16);
      sub_23328E2EC();
      sub_23328E2FC();
      result = sub_23328E2CC();
      v8 = v25;
      v10 = 1 << *(v25 + 32);
      if (v6 >= v10)
      {
        goto LABEL_23;
      }

      v18 = *(v12 + 8 * v11);
      if ((v18 & (1 << v6)) == 0)
      {
        goto LABEL_24;
      }

      if (v7 != *(v25 + 36))
      {
        goto LABEL_25;
      }

      v4 = v12;
      v19 = v18 & (-2 << (v6 & 0x3F));
      if (v19)
      {
        v10 = __clz(__rbit64(v19)) | v6 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v20 = v11 << 6;
        v21 = v11 + 1;
        v22 = (v25 + 72 + 8 * v11);
        while (v21 < (v10 + 63) >> 6)
        {
          v24 = *v22++;
          v23 = v24;
          v20 += 64;
          ++v21;
          if (v24)
          {
            result = sub_23315D8E0(v6, v7, 0);
            v8 = v25;
            v10 = __clz(__rbit64(v23)) + v20;
            goto LABEL_4;
          }
        }

        result = sub_23315D8E0(v6, v7, 0);
        v8 = v25;
      }

LABEL_4:
      v9 = v26 + 1;
      v6 = v10;
      if (v26 + 1 == v2)
      {
        return v27;
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
LABEL_25:
    __break(1u);
  }

  return result;
}

id static LiveSpeechPhrase.maxPreferredPhraseCount.getter()
{
  if (qword_27DDF8160 != -1)
  {
    swift_once();
  }

  v0 = qword_27DDF8168;
  v1 = sub_23328D95C();
  v2 = [v0 integerForKey_];

  return v2;
}

void static LiveSpeechPhrase.maxPreferredPhraseCount.setter()
{
  if (qword_27DDF8160 != -1)
  {
    swift_once();
  }

  v0 = qword_27DDF8168;
  v1 = sub_23328DD5C();
  v2 = sub_23328D95C();
  [v0 setValue:v1 forKey:v2];
}

id sub_2331F07A4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  result = [swift_getObjCClassFromMetadata() maxPreferredPhraseCount];
  *a2 = result;
  return result;
}

id sub_2331F07DC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();

  return [ObjCClassFromMetadata setMaxPreferredPhraseCount_];
}

void static LiveSpeechPhrase.observeChangesAsync()()
{
  if (qword_27DDF8160 != -1)
  {
    swift_once();
  }

  v0 = qword_27DDF8168;
  swift_getKeyPath();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2EE0, &qword_23329B710);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = v10 - v4;
  v6 = v0;
  sub_23328CAFC();
  sub_2331F8078(&qword_27DDE2EE8, &qword_27DDE2EE0, &qword_23329B710);
  v7 = sub_23328D76C();
  (*(v2 + 8))(v5, v1);
  v10[1] = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2EF0, &qword_23329B718);
  v9 = sub_23315246C(&qword_27DDE2EF8, &qword_27DDE2EF0, &qword_23329B718);
  MEMORY[0x23839B500](v8, v9);
}

uint64_t LiveSpeechCategory.id.getter()
{
  v1 = [v0 categoryID];
  v2 = sub_23328D98C();

  return v2;
}

void sub_2331F0AE4(uint64_t *a1@<X8>)
{
  v3 = [*v1 categoryID];
  v4 = sub_23328D98C();
  v6 = v5;

  *a1 = v4;
  a1[1] = v6;
}

char *sub_2331F0BA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v7 = &v6[OBJC_IVAR___LiveSpeechCategory_categoryID];
  swift_beginAccess();
  v8 = *(v7 + 1);
  *v7 = a1;
  *(v7 + 1) = a2;
  v9 = v6;

  if (*(a3 + 16) && (v10 = sub_233144260(1701667182, 0xE400000000000000), (v11 & 1) != 0))
  {
    v12 = (*(a3 + 56) + 16 * v10);
    v14 = *v12;
    v13 = v12[1];
  }

  else
  {
    v14 = 0;
    v13 = 0xE000000000000000;
  }

  v15 = &v9[OBJC_IVAR___LiveSpeechCategory_name];
  swift_beginAccess();
  v16 = *(v15 + 1);
  *v15 = v14;
  *(v15 + 1) = v13;

  if (*(a3 + 16) && (v17 = sub_233144260(0x6C6F626D7973, 0xE600000000000000), (v18 & 1) != 0))
  {
    v19 = (*(a3 + 56) + 16 * v17);
    v21 = *v19;
    v20 = v19[1];
  }

  else
  {
    v21 = 0;
    v20 = 0xE000000000000000;
  }

  v22 = &v9[OBJC_IVAR___LiveSpeechCategory_symbol];
  swift_beginAccess();
  v23 = *(v22 + 1);
  *v22 = v21;
  *(v22 + 1) = v20;

  return v9;
}

id sub_2331F0D64(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = (a1 + *a3);
  swift_beginAccess();
  v5 = *v3;
  v4 = v3[1];

  v6 = sub_23328D95C();

  return v6;
}

uint64_t sub_2331F0DE8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = sub_23328D98C();
  v8 = v7;
  v9 = (a1 + *a4);
  swift_beginAccess();
  v10 = v9[1];
  *v9 = v6;
  v9[1] = v8;
}

uint64_t sub_2331F1030()
{
  v1 = [v0 categoryID];
  v2 = sub_23328D98C();
  v4 = v3;

  v5 = v2 == 0x73746E65636552 && v4 == 0xE700000000000000;
  if (v5 || (sub_23328E54C() & 1) != 0)
  {

    v6 = sub_23328D95C();
    v7 = TTSVBSupportLocString(v6);
  }

  else
  {
    if (v2 == 0x6465766153 && v4 == 0xE500000000000000)
    {
    }

    else
    {
      v12 = sub_23328E54C();

      if ((v12 & 1) == 0)
      {
        v8 = [v0 name];
        goto LABEL_8;
      }
    }

    v6 = sub_23328D95C();
    v7 = TTSVBSupportLocString(v6);
  }

  v8 = v7;

LABEL_8:
  v9 = sub_23328D98C();

  return v9;
}

uint64_t sub_2331F11B4()
{
  v22 = [v0 isSaved];
  if (qword_27DDF8160 != -1)
  {
LABEL_30:
    swift_once();
  }

  v1 = qword_27DDF8168;
  v2 = sub_2331EDE08();

  v27 = MEMORY[0x277D84F90];
  v3 = *(v2 + 16);
  if (!v3)
  {
    v21 = MEMORY[0x277D84F90];
    goto LABEL_28;
  }

  v4 = 0;
  v21 = MEMORY[0x277D84F90];
  do
  {
    v5 = v4;
    while (1)
    {
      if (v5 >= *(v2 + 16))
      {
        __break(1u);
        goto LABEL_30;
      }

      v6 = *(v2 + 32 + 8 * v5);
      v7 = *(v6 + 16);

      if (v7 && (v8 = sub_233144260(0x79726F6765746163, 0xEA00000000004449), (v9 & 1) != 0) && (sub_23311B0C0(*(v6 + 56) + 32 * v8, v26), swift_dynamicCast()))
      {
        v11 = v24;
        v10 = v25;
      }

      else
      {
        v11 = 0;
        v10 = 0;
      }

      v12 = [v23 categoryID];
      v13 = sub_23328D98C();
      v15 = v14;

      if (!v10)
      {

        if (v22)
        {
          goto LABEL_23;
        }

        goto LABEL_5;
      }

      if (v11 == v13 && v10 == v15)
      {
        break;
      }

      v17 = sub_23328E54C();

      if (v17)
      {
        goto LABEL_22;
      }

LABEL_5:

      if (v3 == ++v5)
      {
        goto LABEL_28;
      }
    }

LABEL_22:

LABEL_23:
    type metadata accessor for LiveSpeechPhrase(v18);
    sub_2331EEA44(v6);
    MEMORY[0x23839B920]();
    if (*((v27 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v27 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v19 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_23328DC1C();
    }

    v4 = v5 + 1;
    sub_23328DC4C();
    v21 = v27;
  }

  while (v3 - 1 != v5);
LABEL_28:

  return v21;
}

void sub_2331F14CC(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34[3] = *MEMORY[0x277D85DE8];
  v10 = sub_23328D6EC();
  v31 = *(v10 - 8);
  v32 = v10;
  v11 = *(v31 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27DDF8160 != -1)
  {
    swift_once();
  }

  v14 = qword_27DDF8168;
  v34[0] = sub_2331EDE08();
  sub_2331F195C(v34, v4, a1, a2, a3, a4);
  if (v5)
  {

LABEL_20:

    goto LABEL_21;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2550, &qword_23329B6B0);
  v15 = sub_23328DBDC();

  v16 = sub_23328D95C();
  [v14 setObject:v15 forKey:v16];

  v17 = [v4 phrases];
  type metadata accessor for LiveSpeechPhrase(v17);
  v18 = sub_23328DBFC();

  if (([v4 isRecents] & 1) == 0)
  {
    goto LABEL_20;
  }

  if (!(v18 >> 62))
  {
    if (*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10) <= 0x64uLL)
    {
      goto LABEL_20;
    }

    goto LABEL_8;
  }

  if (sub_23328E19C() <= 100)
  {
    goto LABEL_20;
  }

  if (sub_23328E19C())
  {
LABEL_8:
    if ((v18 & 0xC000000000000001) != 0)
    {
      v19 = MEMORY[0x23839BFC0](0, v18);
    }

    else
    {
      if (!*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
      }

      v19 = *(v18 + 32);
    }

    v20 = v19;

    v34[0] = 0;
    if ([v4 deletePhrase:v20 error:v34])
    {
      v21 = v34[0];
    }

    else
    {
      v22 = v34[0];
      sub_23328CA7C();

      swift_willThrow();
    }

    goto LABEL_21;
  }

  v23 = sub_233225944();
  swift_beginAccess();
  (*(v31 + 16))(v13, v23, v32);
  v24 = sub_23328D6CC();
  v25 = sub_23328DE3C();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v33 = v27;
    *v26 = 136315138;
    *(v26 + 4) = sub_23311A8F4(0xD000000000000032, 0x80000002332AA610, &v33);
    _os_log_impl(&dword_233109000, v24, v25, "%s", v26, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v27);
    MEMORY[0x23839CFD0](v27, -1, -1);
    MEMORY[0x23839CFD0](v26, -1, -1);
  }

  (*(v31 + 8))(v13, v32);
  type metadata accessor for TTSVBError(0);
  sub_23311A3F8();
  swift_allocError();
  TTSVBError.init(_:_:_:)(0xD000000000000032, 0x80000002332AA610, 0, 0, 0, v28);
  swift_willThrow();
LABEL_21:
  v29 = *MEMORY[0x277D85DE8];
}

uint64_t sub_2331F195C(void *a1, void *a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v71 = a5;
  v72 = a6;
  v74 = a4;
  v78 = a3;
  v8 = sub_23328D6EC();
  v68 = *(v8 - 8);
  v69 = v8;
  v9 = *(v68 + 64);
  v10 = MEMORY[0x28223BE20](v8);
  v67 = &v65 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = a1;
  v73 = *a1;
  v12 = v73[2];
  if (!v12)
  {
LABEL_26:
    v28 = [a2 categoryID];
    v29 = sub_23328D98C();
    v67 = v30;
    v68 = v29;

    v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1A18, &unk_233297730);
    v69 = &v65;
    v32 = *(*(v31 - 8) + 64);
    MEMORY[0x28223BE20](v31 - 8);
    v66 = (v32 + 15) & 0xFFFFFFFFFFFFFFF0;
    v33 = &v65 - v66;
    sub_23328CE0C();
    v34 = sub_23328CE1C();
    v35 = *(v34 - 8);
    (*(v35 + 56))(v33, 0, 1, v34);
    v36 = [objc_allocWithZone(LiveSpeechPhrase) init];
    v37 = &v36[OBJC_IVAR___LiveSpeechPhrase_text];
    swift_beginAccess();
    v38 = *(v37 + 1);
    v39 = v74;
    *v37 = v78;
    *(v37 + 1) = v39;
    v40 = v36;

    v41 = &v40[OBJC_IVAR___LiveSpeechPhrase_inputID];
    swift_beginAccess();
    v42 = *(v41 + 1);
    v43 = v72;
    *v41 = v71;
    *(v41 + 1) = v43;

    v44 = &v40[OBJC_IVAR___LiveSpeechPhrase_categoryID];
    swift_beginAccess();
    v45 = v44[1];
    v46 = v67;
    *v44 = v68;
    v44[1] = v46;

    MEMORY[0x28223BE20](v47);
    v48 = &v65 - v66;
    sub_233121D34(v33, &v65 - v66, &qword_27DDE1A18, &unk_233297730);
    v49 = 0;
    if ((*(v35 + 48))(v48, 1, v34) != 1)
    {
      v49 = sub_23328CD9C();
      (*(v35 + 8))(v48, v34);
    }

    [v40 setCreationDate_];

    sub_233121E04(v33, &qword_27DDE1A18, &unk_233297730);
    v50 = sub_2331F20B0();

    v51 = v73;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v51 = sub_2331F36EC(0, v51[2] + 1, 1, v51);
    }

    v52 = v70;
    v54 = v51[2];
    v53 = v51[3];
    if (v54 >= v53 >> 1)
    {
      v51 = sub_2331F36EC((v53 > 1), v54 + 1, 1, v51);
    }

    v51[2] = v54 + 1;
    v51[v54 + 4] = v50;
    *v52 = v51;
    return notify_post("com.apple.livespeech.localprefschanged");
  }

  v13 = v73 + 4;
  while (1)
  {
    v14 = *v13;

    if (*(v14 + 16) && (v15 = sub_233144260(0x79726F6765746163, 0xEA00000000004449), (v16 & 1) != 0) && (sub_23311B0C0(*(v14 + 56) + 32 * v15, v77), swift_dynamicCast()))
    {
      v17 = v75;
      v18 = v76;
    }

    else
    {
      v17 = 0;
      v18 = 0;
    }

    v19 = [a2 categoryID];
    v20 = sub_23328D98C();
    v22 = v21;

    if (!v18)
    {

LABEL_24:

      goto LABEL_25;
    }

    if (v17 == v20 && v18 == v22)
    {

      if (!*(v14 + 16))
      {
        goto LABEL_24;
      }
    }

    else
    {
      v24 = sub_23328E54C();

      if ((v24 & 1) == 0 || !*(v14 + 16))
      {
        goto LABEL_24;
      }
    }

    v25 = sub_233144260(1954047348, 0xE400000000000000);
    if ((v26 & 1) == 0)
    {
      goto LABEL_24;
    }

    sub_23311B0C0(*(v14 + 56) + 32 * v25, v77);
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_24;
    }

    if (v75 == v78 && v76 == v74)
    {
      break;
    }

    v27 = sub_23328E54C();

    if (v27)
    {
      goto LABEL_34;
    }

LABEL_25:
    ++v13;
    if (!--v12)
    {
      goto LABEL_26;
    }
  }

LABEL_34:
  v56 = sub_233225944();
  swift_beginAccess();
  v58 = v67;
  v57 = v68;
  v59 = v69;
  (*(v68 + 16))(v67, v56, v69);
  v60 = sub_23328D6CC();
  v61 = sub_23328DE3C();
  if (os_log_type_enabled(v60, v61))
  {
    v62 = swift_slowAlloc();
    v63 = swift_slowAlloc();
    v75 = v63;
    *v62 = 136315138;
    *(v62 + 4) = sub_23311A8F4(0xD000000000000039, 0x80000002332AA9D0, &v75);
    _os_log_impl(&dword_233109000, v60, v61, "%s", v62, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v63);
    MEMORY[0x23839CFD0](v63, -1, -1);
    MEMORY[0x23839CFD0](v62, -1, -1);
  }

  (*(v57 + 8))(v58, v59);
  type metadata accessor for TTSVBError(0);
  sub_23311A3F8();
  swift_allocError();
  TTSVBError.init(_:_:_:)(0xD000000000000039, 0x80000002332AA9D0, 0, 0, 0, v64);
  return swift_willThrow();
}

unint64_t sub_2331F20B0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2F68, &qword_23329B830);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_233297B30;
  *(inited + 32) = 1954047348;
  *(inited + 40) = 0xE400000000000000;
  v3 = [v0 text];
  v4 = sub_23328D98C();
  v6 = v5;

  v7 = MEMORY[0x277D837D0];
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = v4;
  *(inited + 56) = v6;
  v8 = sub_233145024(inited);
  swift_setDeallocating();
  sub_233121E04(inited + 32, &qword_27DDE2290, &qword_233297600);
  v9 = [v1 categoryID];
  if (v9)
  {
    v10 = v9;
    v11 = sub_23328D98C();
    v13 = v12;

    v34 = v7;
    *&v33 = v11;
    *(&v33 + 1) = v13;
    sub_233145134(&v33, v32);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v31 = v8;
    sub_23314474C(v32, 0x79726F6765746163, 0xEA00000000004449, isUniquelyReferenced_nonNull_native);
  }

  v15 = [v1 inputID];
  if (v15)
  {
    v16 = v15;
    v17 = sub_23328D98C();
    v19 = v18;

    v34 = v7;
    *&v33 = v17;
    *(&v33 + 1) = v19;
    sub_233145134(&v33, v32);
    v20 = swift_isUniquelyReferenced_nonNull_native();
    v31 = v8;
    sub_23314474C(v32, 0x44497475706E69, 0xE700000000000000, v20);
  }

  v21 = sub_23328CE1C();
  v22 = *(v21 - 8);
  v23 = (*(v22 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v24 = [v1 creationDate];
  MEMORY[0x28223BE20](v24);
  if (v25)
  {
    v26 = v25;
    sub_23328CDDC();

    (*(v22 + 32))(&v30 - v23, &v30 - v23, v21);
    v34 = v21;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v33);
    (*(v22 + 16))(boxed_opaque_existential_1, &v30 - v23, v21);
    sub_233145134(&v33, v32);
    v28 = swift_isUniquelyReferenced_nonNull_native();
    v31 = v8;
    sub_23314474C(v32, 0x6E6F697461657263, 0xEC00000065746144, v28);
    (*(v22 + 8))(&v30 - v23, v21);
    return v31;
  }

  return v8;
}

uint64_t sub_2331F24E8(void *a1)
{
  if (qword_27DDF8160 != -1)
  {
    swift_once();
  }

  v3 = qword_27DDF8168;
  v13 = sub_2331EDE08();
  result = sub_2331F46C4(&v13, v1, a1);
  v5 = v13;
  v6 = v13[2];
  if (result > v6)
  {
    __break(1u);
    goto LABEL_14;
  }

  v7 = result;
  if (result < 0)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v8 = result;
  if (__OFADD__(v6, result - v6))
  {
LABEL_15:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || v8 > v5[3] >> 1)
  {
    if (v6 <= v8)
    {
      v10 = v8;
    }

    else
    {
      v10 = v6;
    }

    v13 = sub_2331F36EC(isUniquelyReferenced_nonNull_native, v10, 1, v5);
  }

  sub_2331F5634(v7, v6, 0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2550, &qword_23329B6B0);
  v11 = sub_23328DBDC();

  v12 = sub_23328D95C();
  [v3 setObject:v11 forKey:v12];

  return notify_post("com.apple.livespeech.localprefschanged");
}

uint64_t sub_2331F2694(uint64_t *a1, void *a2, void *a3)
{
  v5 = *a1;
  if (*(*a1 + 16) && (v6 = sub_233144260(0x79726F6765746163, 0xEA00000000004449), (v7 & 1) != 0) && (sub_23311B0C0(*(v5 + 56) + 32 * v6, v27), swift_dynamicCast()))
  {
    v9 = v25;
    v8 = v26;
  }

  else
  {
    v9 = 0;
    v8 = 0;
  }

  v10 = [a2 categoryID];
  v11 = sub_23328D98C();
  v13 = v12;

  if (!v8)
  {
    goto LABEL_26;
  }

  if (v9 == v11 && v8 == v13)
  {

    if (!*(v5 + 16))
    {
      goto LABEL_18;
    }

    goto LABEL_15;
  }

  v15 = sub_23328E54C();

  LOBYTE(v8) = 0;
  if (v15)
  {
    if (!*(v5 + 16))
    {
      goto LABEL_18;
    }

LABEL_15:
    v16 = sub_233144260(1954047348, 0xE400000000000000);
    if (v17)
    {
      sub_23311B0C0(*(v5 + 56) + 32 * v16, v27);
      if (swift_dynamicCast())
      {
        v19 = v25;
        v18 = v26;
        goto LABEL_19;
      }
    }

LABEL_18:
    v19 = 0;
    v18 = 0;
LABEL_19:
    v20 = [a3 text];
    v21 = sub_23328D98C();
    v23 = v22;

    if (v18)
    {
      if (v19 == v21 && v18 == v23)
      {
        LOBYTE(v8) = 1;
      }

      else
      {
        LOBYTE(v8) = sub_23328E54C();
      }
    }

    else
    {
      LOBYTE(v8) = 0;
    }

LABEL_26:
  }

  return v8 & 1;
}

id sub_2331F29A0(uint64_t a1, uint64_t a2, void (*a3)(void), void (*a4)(void))
{
  a3();
  a4();
  v5 = sub_23328DBDC();

  return v5;
}

uint64_t sub_2331F2C14(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v32 = sub_23328D6EC();
  v10 = *(v32 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v32);
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_2331F3914(a2, a3);
  if (v14)
  {
    v15 = v14;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v33 = v15;
    sub_2331F4240(a4, a5, 0x6C6F626D7973, 0xE600000000000000, isUniquelyReferenced_nonNull_native);
    v17 = v33;

    v18 = *a1;
    v19 = swift_isUniquelyReferenced_nonNull_native();
    v33 = *a1;
    sub_2331F40C4(v17, a2, a3, v19);

    *a1 = v33;
  }

  else
  {
    v33 = 0;
    v34 = 0xE000000000000000;
    sub_23328E24C();
    MEMORY[0x23839B7E0](0xD000000000000044, 0x80000002332AA890);
    MEMORY[0x23839B7E0](a2, a3);
    v21 = v33;
    v22 = v34;
    v23 = sub_233225944();
    swift_beginAccess();
    v24 = v10;
    v25 = *(v10 + 16);
    v26 = v32;
    v25(v13, v23, v32);

    v27 = sub_23328D6CC();
    v28 = sub_23328DE3C();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v35 = v30;
      *v29 = 136315138;
      *(v29 + 4) = sub_23311A8F4(v21, v22, &v35);
      _os_log_impl(&dword_233109000, v27, v28, "%s", v29, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v30);
      MEMORY[0x23839CFD0](v30, -1, -1);
      MEMORY[0x23839CFD0](v29, -1, -1);
    }

    (*(v24 + 8))(v13, v26);
    type metadata accessor for TTSVBError(0);
    sub_23311A3F8();
    swift_allocError();
    TTSVBError.init(_:_:_:)(v21, v22, 0, 0, 0, v31);
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_2331F2F4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v7 = sub_23328D98C();
  v9 = v8;
  v10 = sub_23328D98C();
  a6(v7, v9, v10, v11);

  return 1;
}

uint64_t sub_2331F3034@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  if (qword_27DDF8160 != -1)
  {
    swift_once();
  }

  v6 = qword_27DDF8168;
  swift_getKeyPath();
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  v8 = v6;

  v9 = sub_23328CACC();

  result = sub_23328CA5C();
  a3[3] = result;
  *a3 = v9;
  return result;
}

uint64_t sub_2331F3140(uint64_t (*a1)(uint64_t), uint64_t a2, const char *a3)
{
  v5 = sub_23328D6EC();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_233225944();
  swift_beginAccess();
  (*(v6 + 16))(v9, v10, v5);
  v11 = sub_23328D6CC();
  v12 = sub_23328DE2C();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_233109000, v11, v12, a3, v13, 2u);
    MEMORY[0x23839CFD0](v13, -1, -1);
  }

  v14 = (*(v6 + 8))(v9, v5);
  return a1(v14);
}

void static LiveSpeechCategory.observeChangesAsync()()
{
  if (qword_27DDF8160 != -1)
  {
    swift_once();
  }

  v0 = qword_27DDF8168;
  swift_getKeyPath();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2F18, &qword_23329B760);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = v10 - v4;
  v6 = v0;
  sub_23328CAFC();
  sub_2331F8078(&qword_27DDE2F20, &qword_27DDE2F18, &qword_23329B760);
  v7 = sub_23328D76C();
  (*(v2 + 8))(v5, v1);
  v10[1] = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2F28, &qword_23329B768);
  v9 = sub_23315246C(&qword_27DDE2F30, &qword_27DDE2F28, &qword_23329B768);
  MEMORY[0x23839B500](v8, v9);
}

void sub_2331F3674()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v1 = sub_23328D95C();
  v2 = [v0 initWithSuiteName_];

  if (v2)
  {
    qword_27DDF8168 = v2;
  }

  else
  {
    __break(1u);
  }
}

void *sub_2331F36EC(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2F60, &unk_23329B820);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2550, &qword_23329B6B0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_2331F3820(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2F38, &qword_23329B7F8);
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

uint64_t sub_2331F3914(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = *v2;
  v5 = sub_233144260(a1, a2);
  if ((v6 & 1) == 0)
  {
    return 0;
  }

  v7 = v5;
  v8 = *v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *v3;
  v14 = *v3;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_2331F43C8();
    v10 = v14;
  }

  v11 = *(*(v10 + 48) + 16 * v7 + 8);

  v12 = *(*(v10 + 56) + 8 * v7);
  sub_2331F3F14(v7, v10);
  *v3 = v10;
  return v12;
}

uint64_t sub_2331F39AC(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2F50, &qword_23329B810);
  v38 = a2;
  result = sub_23328E34C();
  v8 = result;
  if (*(v5 + 16))
  {
    v36 = v3;
    v37 = v5;
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
      v25 = *(*(v5 + 56) + 8 * v21);
      if ((v38 & 1) == 0)
      {
        v26 = v22[1];
      }

      v27 = *(v8 + 40);
      sub_23328E61C();
      sub_23328DA3C();
      result = sub_23328E66C();
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
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v5 = v37;
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

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_35;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v10, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
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

uint64_t sub_2331F3C54(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2F40, &qword_23329B800);
  v40 = a2;
  result = sub_23328E34C();
  v8 = result;
  if (*(v5 + 16))
  {
    v38 = v3;
    v39 = v5;
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
      v20 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v23 = 16 * (v20 | (v9 << 6));
      v24 = (*(v5 + 48) + v23);
      v25 = *v24;
      v26 = v24[1];
      v27 = (*(v5 + 56) + v23);
      v28 = v27[1];
      v41 = *v27;
      if ((v40 & 1) == 0)
      {
      }

      v29 = *(v8 + 40);
      sub_23328E61C();
      sub_23328DA3C();
      result = sub_23328E66C();
      v30 = -1 << *(v8 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v15 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v15 + 8 * v32);
          if (v36 != -1)
          {
            v16 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v31) & ~*(v15 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = 16 * v16;
      v18 = (*(v8 + 48) + v17);
      *v18 = v25;
      v18[1] = v26;
      v19 = (*(v8 + 56) + v17);
      *v19 = v41;
      v19[1] = v28;
      ++*(v8 + 16);
      v5 = v39;
    }

    v21 = v9;
    while (1)
    {
      v9 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v22 = v10[v9];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v13 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_35;
    }

    v37 = 1 << *(v5 + 32);
    v3 = v38;
    if (v37 >= 64)
    {
      bzero(v10, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v37;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_2331F3F14(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_23328E16C() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = (*(a2 + 48) + 16 * v6);
      v11 = *v10;
      v12 = v10[1];
      sub_23328E61C();

      sub_23328DA3C();
      v13 = sub_23328E66C();

      v14 = v13 & v7;
      if (v3 >= v8)
      {
        if (v14 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v14 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v14)
      {
LABEL_10:
        v15 = *(a2 + 48);
        v16 = (v15 + 16 * v3);
        v17 = (v15 + 16 * v6);
        if (v3 != v6 || v16 >= v17 + 1)
        {
          *v16 = *v17;
        }

        v18 = *(a2 + 56);
        v19 = (v18 + 8 * v3);
        v20 = (v18 + 8 * v6);
        if (v3 != v6 || v19 >= v20 + 1)
        {
          *v19 = *v20;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_2331F40C4(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_233144260(a2, a3);
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
      sub_2331F39AC(v16, a4 & 1);
      v20 = *v5;
      v11 = sub_233144260(a2, a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_18:
        result = sub_23328E5AC();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_2331F43C8();
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

uint64_t sub_2331F4240(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_233144260(a3, a4);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_17;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 < v18 || (a5 & 1) != 0)
    {
      sub_2331F3C54(v18, a5 & 1);
      v22 = *v6;
      v13 = sub_233144260(a3, a4);
      if ((v19 & 1) != (v23 & 1))
      {
LABEL_18:
        result = sub_23328E5AC();
        __break(1u);
        return result;
      }
    }

    else
    {
      v21 = v13;
      sub_2331F4538();
      v13 = v21;
    }
  }

  v24 = *v6;
  if (v19)
  {
    v25 = (v24[7] + 16 * v13);
    v26 = v25[1];
    *v25 = a1;
    v25[1] = a2;
  }

  v24[(v13 >> 6) + 8] |= 1 << v13;
  v28 = (v24[6] + 16 * v13);
  *v28 = a3;
  v28[1] = a4;
  v29 = (v24[7] + 16 * v13);
  *v29 = a1;
  v29[1] = a2;
  v30 = v24[2];
  v17 = __OFADD__(v30, 1);
  v31 = v30 + 1;
  if (v17)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v24[2] = v31;
}

void *sub_2331F43C8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2F50, &qword_23329B810);
  v2 = *v0;
  v3 = sub_23328E33C();
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
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;
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

void *sub_2331F4538()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2F40, &qword_23329B800);
  v2 = *v0;
  v3 = sub_23328E33C();
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = (*(v2 + 56) + v17);
        v22 = *v21;
        v23 = v21[1];
        v24 = (*(v4 + 48) + v17);
        *v24 = v20;
        v24[1] = v19;
        v25 = (*(v4 + 56) + v17);
        *v25 = v22;
        v25[1] = v23;
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

uint64_t sub_2331F46C4(uint64_t *a1, void *a2, void *a3)
{
  v8 = *a1;
  result = sub_2331F4ED0(*a1, a2, a3);
  if (v3)
  {

    return v4;
  }

  if (v10)
  {
    v4 = v8[2];
LABEL_7:

    return v4;
  }

  v4 = result;
  if (!__OFADD__(result, 1))
  {
    v12 = v8 + 2;
    v11 = v8[2];
    if (result + 1 == v11)
    {
      goto LABEL_7;
    }

    v22 = a1;
    v13 = result + 5;
    while (1)
    {
      v16 = v13 - 4;
      if (v13 - 4 >= v11)
      {
        break;
      }

      v23 = v8[v13];

      v17 = sub_2331F2694(&v23, a2, a3);

      if ((v17 & 1) == 0)
      {
        if (v16 != v4)
        {
          if ((v4 & 0x8000000000000000) != 0)
          {
            goto LABEL_24;
          }

          if (v4 >= *v12)
          {
            goto LABEL_25;
          }

          if (v16 >= *v12)
          {
            goto LABEL_26;
          }

          v18 = v8[v4 + 4];
          v19 = v8[v13];

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v8 = sub_2331F46B0(v8);
          }

          v20 = &v8[v4];
          v21 = v20[4];
          v20[4] = v19;

          if (v16 >= v8[2])
          {
            goto LABEL_27;
          }

          v14 = v8[v13];
          v8[v13] = v18;

          *v22 = v8;
        }

        ++v4;
      }

      v12 = v8 + 2;
      v11 = v8[2];
      v15 = v13 - 3;
      ++v13;
      if (v15 == v11)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_2331F488C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2F50, &qword_23329B810);
    v3 = sub_23328E35C();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_233144260(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
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

uint64_t sub_2331F4990(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2660, &qword_233298100);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_2331F4A00(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2F40, &qword_23329B800);
    v3 = sub_23328E35C();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_233144260(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
      if (!--v1)
      {

        return v3;
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

char *sub_2331F4B14()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1A18, &unk_233297730);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = (v1 + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = sub_23328CE1C();
  v4 = *(v3 - 8);
  (*(v4 + 56))(&v16 - v2, 1, 1, v3);
  v5 = [objc_allocWithZone(LiveSpeechPhrase) init];
  v6 = &v5[OBJC_IVAR___LiveSpeechPhrase_text];
  swift_beginAccess();
  v7 = *(v6 + 1);
  *v6 = 0;
  *(v6 + 1) = 0xE000000000000000;
  v8 = v5;

  v9 = &v8[OBJC_IVAR___LiveSpeechPhrase_inputID];
  swift_beginAccess();
  v10 = *(v9 + 1);
  *v9 = 0;
  *(v9 + 1) = 0;

  v11 = &v8[OBJC_IVAR___LiveSpeechPhrase_categoryID];
  swift_beginAccess();
  v12 = *(v11 + 1);
  *v11 = 0;
  *(v11 + 1) = 0;

  MEMORY[0x28223BE20](v13);
  sub_233121D34(&v16 - v2, &v16 - v2, &qword_27DDE1A18, &unk_233297730);
  v14 = 0;
  if ((*(v4 + 48))(&v16 - v2, 1, v3) != 1)
  {
    v14 = sub_23328CD9C();
    (*(v4 + 8))(&v16 - v2, v3);
  }

  [v8 setCreationDate_];

  sub_233121E04(&v16 - v2, &qword_27DDE1A18, &unk_233297730);
  return v8;
}

void sub_2331F4D74(uint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (qword_27DDF8160 != -1)
  {
    swift_once();
  }

  v13 = qword_27DDF8168;
  v16 = sub_2331EDE08();
  sub_2331EF4C0(&v16, a3, a4, a1, a2, a5, a6);
  if (v6)
  {
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2550, &qword_23329B6B0);
    v14 = sub_23328DBDC();

    v15 = sub_23328D95C();
    [v13 setObject:v14 forKey:v15];
  }
}

uint64_t sub_2331F4ED0(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 16);
  if (!v4)
  {
    return 0;
  }

  v7 = 0;
  v8 = a1 + 32;
  while (1)
  {
    v11 = *(v8 + 8 * v7);

    v9 = sub_2331F2694(&v11, a2, a3);

    if (v3 || (v9 & 1) != 0)
    {
      break;
    }

    if (v4 == ++v7)
    {
      return 0;
    }
  }

  return v7;
}

uint64_t sub_2331F4F88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v16 = a2;
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = a1 + 32;
    while (1)
    {
      v6 = *(v5 + 8 * v4);
      if (*(v6 + 16))
      {
        v7 = *(v5 + 8 * v4);

        v8 = sub_233144260(0x79726F6765746163, 0xEA00000000004449);
        if (v9 & 1) != 0 && (sub_23311B0C0(*(v6 + 56) + 32 * v8, v15), (swift_dynamicCast()))
        {
          if (v13 == v16 && v14 == a3)
          {

            return v4;
          }

          v10 = sub_23328E54C();

          if (v10)
          {
            return v4;
          }
        }

        else
        {
        }
      }

      if (v3 == ++v4)
      {
        return 0;
      }
    }
  }

  return 0;
}

void sub_2331F510C(uint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v35 = a2;
  v11 = sub_23328D6EC();
  v33 = *(v11 - 8);
  v34 = v11;
  v12 = *(v33 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27DDF8160 != -1)
  {
    swift_once();
  }

  v15 = qword_27DDF8168;
  v16 = _sSo14NSUserDefaultsC31TextToSpeechVoiceBankingSupportE04liveE10CategoriesSDySSSDyS2SGGvg_0();

  if (*(v16 + 16))
  {
    sub_233144260(a5, a6);
    v18 = v17;

    if (v18)
    {
LABEL_8:
      v20 = qword_27DDF8168;
      v37[0] = sub_2331EDE08();
      v21 = v36;
      sub_2331EFB38(v37, a3, a4, a1, v35, a5, a6);
      if (v21)
      {
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2550, &qword_23329B6B0);
        v30 = sub_23328DBDC();

        v31 = sub_23328D95C();
        [v20 setObject:v30 forKey:v31];
      }

      return;
    }
  }

  else
  {
  }

  v19 = sub_23328E37C();

  if (v19 <= 1)
  {
    goto LABEL_8;
  }

  v22 = sub_233225944();
  swift_beginAccess();
  v24 = v33;
  v23 = v34;
  (*(v33 + 16))(v14, v22, v34);
  v25 = sub_23328D6CC();
  v26 = sub_23328DE3C();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v38 = v28;
    *v27 = 136315138;
    *(v27 + 4) = sub_23311A8F4(0xD000000000000048, 0x80000002332AAA10, &v38);
    _os_log_impl(&dword_233109000, v25, v26, "%s", v27, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v28);
    MEMORY[0x23839CFD0](v28, -1, -1);
    MEMORY[0x23839CFD0](v27, -1, -1);
  }

  (*(v24 + 8))(v14, v23);
  type metadata accessor for TTSVBError(0);
  sub_23311A3F8();
  swift_allocError();
  TTSVBError.init(_:_:_:)(0xD000000000000048, 0x80000002332AAA10, 0, 0, 0, v29);
  swift_willThrow();
}

uint64_t sub_2331F54C8()
{
  if (qword_27DDF8160 != -1)
  {
    swift_once();
  }

  v0 = qword_27DDF8168;
  v1 = sub_2331EDE08();

  v2 = *(v1 + 16);
  if (v2)
  {
    v9 = MEMORY[0x277D84F90];
    v3 = sub_23328E2DC();
    type metadata accessor for LiveSpeechPhrase(v3);
    v4 = 32;
    do
    {
      v5 = *(v1 + v4);

      sub_2331EEA44(v6);
      sub_23328E2BC();
      v7 = *(v9 + 16);
      sub_23328E2EC();
      sub_23328E2FC();
      sub_23328E2CC();
      v4 += 8;
      --v2;
    }

    while (v2);

    return v9;
  }

  else
  {

    return MEMORY[0x277D84F90];
  }
}

unint64_t sub_2331F5634(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *v3;
  v8 = v7 + 32 + 8 * result;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2550, &qword_23329B6B0);
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_17;
  }

  result = v8 + 8 * a3;
  v13 = (v7 + 32 + 8 * a2);
  if (result != v13 || result >= v13 + 8 * v12)
  {
    result = memmove(result, v13, 8 * v12);
  }

  v15 = *(v7 + 16);
  v9 = __OFADD__(v15, v10);
  v16 = v15 + v10;
  if (v9)
  {
    goto LABEL_18;
  }

  *(v7 + 16) = v16;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

char *sub_2331F5704()
{
  v0 = [objc_allocWithZone(LiveSpeechCategory) init];
  v1 = &v0[OBJC_IVAR___LiveSpeechCategory_name];
  swift_beginAccess();
  v2 = *(v1 + 1);
  *v1 = 0;
  *(v1 + 1) = 0xE000000000000000;
  v3 = v0;

  v4 = &v3[OBJC_IVAR___LiveSpeechCategory_symbol];
  swift_beginAccess();
  v5 = *(v4 + 1);
  *v4 = 0;
  *(v4 + 1) = 0xE000000000000000;

  v6 = &v3[OBJC_IVAR___LiveSpeechCategory_categoryID];
  swift_beginAccess();
  v7 = *(v6 + 1);
  *v6 = 0;
  *(v6 + 1) = 0xE000000000000000;

  return v3;
}

unint64_t sub_2331F57EC()
{
  if (qword_27DDF8160 != -1)
  {
    goto LABEL_37;
  }

  while (1)
  {
    v0 = qword_27DDF8168;
    v1 = _sSo14NSUserDefaultsC31TextToSpeechVoiceBankingSupportE04liveE10CategoriesSDySSSDyS2SGGvg_0();

    v2 = sub_2331F00F0(v1);

    v35 = v2;
    v3 = v2 >> 62 ? sub_23328E19C() : *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (!v3)
    {
      break;
    }

    v4 = 0;
    while (1)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v5 = MEMORY[0x23839BFC0](v4, v2);
      }

      else
      {
        if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_36;
        }

        v5 = *(v2 + 8 * v4 + 32);
      }

      v6 = v5;
      v7 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      v8 = [v5 isSaved];

      if (v8)
      {

        goto LABEL_18;
      }

      ++v4;
      if (v7 == v3)
      {
        goto LABEL_14;
      }
    }

LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    swift_once();
  }

LABEL_14:

  v9 = [objc_allocWithZone(LiveSpeechCategory) init];
  v10 = &v9[OBJC_IVAR___LiveSpeechCategory_name];
  swift_beginAccess();
  v11 = *(v10 + 1);
  *v10 = 0x6465766153;
  *(v10 + 1) = 0xE500000000000000;
  v12 = v9;

  v13 = &v12[OBJC_IVAR___LiveSpeechCategory_symbol];
  swift_beginAccess();
  v14 = *(v13 + 1);
  *v13 = 0x6B72616D6B6F6F62;
  *(v13 + 1) = 0xE800000000000000;

  v15 = &v12[OBJC_IVAR___LiveSpeechCategory_categoryID];
  swift_beginAccess();
  v16 = *(v15 + 1);
  *v15 = 0x6465766153;
  *(v15 + 1) = 0xE500000000000000;

  MEMORY[0x23839B920](v17);
  if (*((v35 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v35 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v33 = *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_23328DC1C();
  }

  sub_23328DC4C();
  v2 = v35;
LABEL_18:
  if (v2 >> 62)
  {
    v18 = sub_23328E19C();
  }

  else
  {
    v18 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  for (i = 0; v18 != i; ++i)
  {
    if ((v2 & 0xC000000000000001) != 0)
    {
      v20 = MEMORY[0x23839BFC0](i, v2);
    }

    else
    {
      if (i >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_34;
      }

      v20 = *(v2 + 8 * i + 32);
    }

    v21 = v20;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_34:
      __break(1u);
      goto LABEL_35;
    }

    v22 = [v20 isRecents];

    if (v22)
    {
      return v2;
    }
  }

  v23 = [objc_allocWithZone(LiveSpeechCategory) init];
  v24 = &v23[OBJC_IVAR___LiveSpeechCategory_name];
  swift_beginAccess();
  v25 = *(v24 + 1);
  *v24 = 0x73746E65636552;
  *(v24 + 1) = 0xE700000000000000;
  v26 = v23;

  v27 = &v26[OBJC_IVAR___LiveSpeechCategory_symbol];
  swift_beginAccess();
  v28 = *(v27 + 1);
  *v27 = 0x6B636F6C63;
  *(v27 + 1) = 0xE500000000000000;

  v29 = &v26[OBJC_IVAR___LiveSpeechCategory_categoryID];
  swift_beginAccess();
  v30 = *(v29 + 1);
  *v29 = 0x73746E65636552;
  *(v29 + 1) = 0xE700000000000000;

  MEMORY[0x23839B920](v31);
  if (*((v35 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v35 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v34 = *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_23328DC1C();
  }

  sub_23328DC4C();
  return v35;
}

char *sub_2331F5C38(uint64_t a1, uint64_t a2)
{
  if (qword_27DDF8160 != -1)
  {
    swift_once();
  }

  v4 = qword_27DDF8168;
  v5 = _sSo14NSUserDefaultsC31TextToSpeechVoiceBankingSupportE04liveE10CategoriesSDySSSDyS2SGGvg_0();

  if (*(v5 + 16))
  {
    v6 = sub_233144260(a1, a2);
    if (v7)
    {
      v8 = *(*(v5 + 56) + 8 * v6);

      type metadata accessor for LiveSpeechCategory(v9);

      return sub_2331F0BA8(a1, a2, v8);
    }
  }

  v11 = sub_23328E37C();

  if (!v11)
  {
    v13 = 0xE500000000000000;
    v14 = 0xE800000000000000;
    v15 = 0x6B72616D6B6F6F62;
    v16 = 0x6465766153;
    goto LABEL_10;
  }

  if (v11 == 1)
  {
    v13 = 0xE700000000000000;
    v14 = 0xE500000000000000;
    v15 = 0x6B636F6C63;
    v16 = 0x73746E65636552;
LABEL_10:
    type metadata accessor for LiveSpeechCategory(v12);
    v17 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    v18 = &v17[OBJC_IVAR___LiveSpeechCategory_name];
    swift_beginAccess();
    v19 = v18[1];
    *v18 = v16;
    v18[1] = v13;
    v20 = v17;

    v21 = &v20[OBJC_IVAR___LiveSpeechCategory_symbol];
    swift_beginAccess();
    v22 = v21[1];
    *v21 = v15;
    v21[1] = v14;

    v23 = &v20[OBJC_IVAR___LiveSpeechCategory_categoryID];
    swift_beginAccess();
    v24 = v23[1];
    *v23 = v16;
    v23[1] = v13;

    return v20;
  }

  return 0;
}

uint64_t sub_2331F5E64()
{
  if (qword_27DDF8160 != -1)
  {
LABEL_18:
    swift_once();
  }

  v0 = qword_27DDF8168;
  v1 = _sSo14NSUserDefaultsC31TextToSpeechVoiceBankingSupportE04liveE10CategoriesSDySSSDyS2SGGvg_0();

  v2 = 1 << *(v1 + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  v4 = v3 & *(v1 + 64);
  v5 = (v2 + 63) >> 6;

  v6 = 0;
  while (1)
  {
    do
    {
      if (!v4)
      {
        while (1)
        {
          v7 = v6 + 1;
          if (__OFADD__(v6, 1))
          {
            break;
          }

          if (v7 >= v5)
          {

            return 0;
          }

          v4 = *(v1 + 64 + 8 * v7);
          ++v6;
          if (v4)
          {
            v6 = v7;
            goto LABEL_11;
          }
        }

        __break(1u);
        goto LABEL_18;
      }

LABEL_11:
      v8 = __clz(__rbit64(v4));
      v4 &= v4 - 1;
      v9 = v8 | (v6 << 6);
      v10 = *(*(v1 + 56) + 8 * v9);
    }

    while (!*(v10 + 16));
    v11 = *(*(v1 + 48) + 16 * v9 + 8);

    v12 = sub_233144260(1701667182, 0xE400000000000000);
    if (v13)
    {
      v14 = (*(v10 + 56) + 16 * v12);
      v16 = *v14;
      v17 = v14[1];
      sub_23311A294();
      if (!sub_23328E08C())
      {
        break;
      }
    }
  }

  return v11;
}

uint64_t sub_2331F6044(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v30 = a4;
  v31 = a1;
  v12 = sub_23328D6EC();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_2331F5E64())
  {

    v17 = sub_233225944();
    swift_beginAccess();
    (*(v13 + 16))(v16, v17, v12);
    v18 = sub_23328D6CC();
    v19 = sub_23328DE3C();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v33 = v21;
      *v20 = 136315138;
      *(v20 + 4) = sub_23311A8F4(0xD00000000000004BLL, 0x80000002332AA980, &v33);
      _os_log_impl(&dword_233109000, v18, v19, "%s", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v21);
      MEMORY[0x23839CFD0](v21, -1, -1);
      MEMORY[0x23839CFD0](v20, -1, -1);
    }

    (*(v13 + 8))(v16, v12);
    type metadata accessor for TTSVBError(0);
    sub_23311A3F8();
    swift_allocError();
    TTSVBError.init(_:_:_:)(0xD00000000000004BLL, 0x80000002332AA980, 0, 0, 0, v22);
    return swift_willThrow();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2F58, &qword_23329B818);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_233297630;
    *(inited + 32) = 1701667182;
    *(inited + 40) = 0xE400000000000000;
    *(inited + 48) = a2;
    *(inited + 56) = a3;
    *(inited + 64) = 0x6C6F626D7973;
    *(inited + 72) = 0xE600000000000000;
    *(inited + 80) = a6;
    *(inited + 88) = a7;

    v25 = sub_2331F4A00(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2F48, &qword_23329B808);
    swift_arrayDestroy();
    v26 = v31;
    v27 = *v31;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v32 = *v26;
    sub_2331F40C4(v25, v30, a5, isUniquelyReferenced_nonNull_native);

    *v26 = v32;
  }

  return result;
}

char *sub_2331F6388(uint64_t a1, uint64_t a2, uint64_t a3, char *a4)
{
  v8 = sub_23328CE8C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0) + 40;
  sub_23328CE7C();
  v13 = sub_23328CE3C();
  v15 = v14;
  (*(v9 + 8))(v12, v8);
  if (qword_27DDF8160 != -1)
  {
    swift_once();
  }

  v16 = qword_27DDF8168;
  v32[0] = _sSo14NSUserDefaultsC31TextToSpeechVoiceBankingSupportE04liveE10CategoriesSDySSSDyS2SGGvg_0();
  v17 = v33;
  sub_2331F6044(v32, a1, a2, v13, v15, a3, a4);
  if (v17)
  {
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2EB8, &unk_23329B6C0);
    v18 = sub_23328D87C();
    v33 = v13;
    v19 = a4;
    v31 = v15;
    v20 = v18;

    v21 = sub_23328D95C();
    [v16 setObject:v20 forKey:v21];

    notify_post("com.apple.livespeech.localprefschanged");
    v22 = [objc_allocWithZone(LiveSpeechCategory) init];
    v23 = &v22[OBJC_IVAR___LiveSpeechCategory_name];
    swift_beginAccess();
    v24 = v23[1];
    *v23 = a1;
    v23[1] = a2;
    a4 = v22;

    v25 = &a4[OBJC_IVAR___LiveSpeechCategory_symbol];
    swift_beginAccess();
    v26 = v25[1];
    *v25 = a3;
    v25[1] = v19;

    v27 = &a4[OBJC_IVAR___LiveSpeechCategory_categoryID];
    swift_beginAccess();
    v28 = v27[1];
    v29 = v31;
    *v27 = v33;
    v27[1] = v29;
  }

  return a4;
}

uint64_t sub_2331F668C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = *a1;
  result = sub_2331F4F88(*a1, a2, a3);
  v8 = result;
  v29 = v3;
  if (v3)
  {
    return v8;
  }

  if (v7)
  {
    return v5[2];
  }

  if (__OFADD__(result, 1))
  {
    goto LABEL_33;
  }

  v10 = v5 + 2;
  v9 = v5[2];
  if (result + 1 == v9)
  {
    return v8;
  }

  for (i = result + 5; ; ++i)
  {
    v13 = i - 4;
    if (i - 4 >= v9)
    {
      break;
    }

    v14 = v5[i];
    if (*(v14 + 16))
    {
      v15 = v5[i];

      v16 = sub_233144260(0x79726F6765746163, 0xEA00000000004449);
      if (v17 & 1) != 0 && (sub_23311B0C0(*(v14 + 56) + 32 * v16, v28), (swift_dynamicCast()))
      {
        if (v26 == a2 && v27 == a3)
        {

          goto LABEL_9;
        }

        v23 = sub_23328E54C();

        if (v23)
        {
          goto LABEL_9;
        }
      }

      else
      {
      }
    }

    if (v13 != v8)
    {
      if ((v8 & 0x8000000000000000) != 0)
      {
        goto LABEL_29;
      }

      if (v8 >= *v10)
      {
        goto LABEL_30;
      }

      if (v13 >= *v10)
      {
        goto LABEL_31;
      }

      v18 = v5[v8 + 4];
      v19 = v5[i];

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v5 = sub_2331F46B0(v5);
      }

      v20 = &v5[v8];
      v21 = v20[4];
      v20[4] = v19;

      if (v13 >= v5[2])
      {
        goto LABEL_32;
      }

      v22 = v5[i];
      v5[i] = v18;

      *a1 = v5;
    }

    ++v8;
LABEL_9:
    v10 = v5 + 2;
    v9 = v5[2];
    v12 = i - 3;
    if (v12 == v9)
    {
      return v8;
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
  return result;
}