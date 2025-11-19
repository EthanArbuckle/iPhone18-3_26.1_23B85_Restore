void sub_1D2172AD0(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(v7, a3);
}

void sub_1D2172B64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v4 = sub_1D22502EC();
    swift_beginAccess();
    v5 = *(a3 + 16);
    *(a3 + 16) = v4;
  }
}

uint64_t sub_1D2172C08(uint64_t a1)
{
  v202 = a1;
  v219 = *MEMORY[0x1E69E9840];
  v196 = sub_1D225082C();
  v198 = *(v196 - 8);
  v1 = (MEMORY[0x1EEE9AC00])();
  v191 = &v171 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = MEMORY[0x1EEE9AC00](v1);
  v172 = &v171 - v4;
  v5 = MEMORY[0x1EEE9AC00](v3);
  v171 = &v171 - v6;
  MEMORY[0x1EEE9AC00](v5);
  v187 = &v171 - v7;
  v177 = sub_1D225031C();
  v176 = *(v177 - 8);
  MEMORY[0x1EEE9AC00](v177);
  v175 = &v171 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2100);
  v10 = MEMORY[0x1EEE9AC00](v9 - 8);
  v186 = &v171 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v185 = &v171 - v13;
  v14 = MEMORY[0x1EEE9AC00](v12);
  v174 = &v171 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v194 = &v171 - v16;
  v201 = sub_1D22503FC();
  v192 = *(v201 - 8);
  v17 = MEMORY[0x1EEE9AC00](v201);
  v190 = &v171 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v178 = &v171 - v20;
  v21 = MEMORY[0x1EEE9AC00](v19);
  v184 = &v171 - v22;
  MEMORY[0x1EEE9AC00](v21);
  v195 = &v171 - v23;
  v200 = sub_1D2250D3C();
  v197 = *(v200 - 1);
  MEMORY[0x1EEE9AC00](v200);
  v193 = &v171 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_1D2250D1C();
  MEMORY[0x1EEE9AC00](v25);
  v26 = sub_1D225087C();
  MEMORY[0x1EEE9AC00](v26 - 8);
  v189 = "Syndication Library";
  v199 = OBJC_IVAR____TtC19VisualUnderstanding20VUIndexCoreDataStore_logger;
  sub_1D225081C();
  v27 = OBJC_IVAR____TtC19VisualUnderstanding20VUIndexCoreDataStore_lockQueue;
  v188 = sub_1D2174E10(0, &qword_1EDC886A0);
  sub_1D225086C();
  aBlock = MEMORY[0x1E69E7CC0];
  sub_1D2178130(&qword_1EDC886B0, MEMORY[0x1E69E8030]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2AE8);
  sub_1D2177F3C(&qword_1EDC886E0, &qword_1EC6D2AE8);
  sub_1D2250EAC();
  (*(v197 + 13))(v193, *MEMORY[0x1E69E8090], v200);
  v28 = v203;
  v29 = sub_1D2250D7C();
  v180 = v27;
  *(v28 + v27) = v29;
  v30 = OBJC_IVAR____TtC19VisualUnderstanding20VUIndexCoreDataStore_signposter;
  sub_1D225079C();
  *(v28 + OBJC_IVAR____TtC19VisualUnderstanding20VUIndexCoreDataStore_parameters) = MEMORY[0x1E69E7CC8];
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v32 = [objc_opt_self() bundleForClass_];
  v33 = sub_1D225092C();
  v34 = sub_1D225092C();
  v35 = [v32 URLForResource:v33 withExtension:v34];

  if (!v35)
  {
    __break(1u);
LABEL_59:
    __break(1u);
  }

  v179 = v30;
  v183 = v32;
  sub_1D225038C();

  v36 = objc_allocWithZone(MEMORY[0x1E695D638]);
  v37 = sub_1D225033C();
  v38 = [v36 initWithContentsOfURL_];

  if (!v38)
  {
    goto LABEL_59;
  }

  v39 = objc_allocWithZone(MEMORY[0x1E695D688]);
  v40 = v38;
  v41 = sub_1D225092C();
  v200 = [v39 initWithName:v41 managedObjectModel:v40];

  v182 = v40;
  v42 = [objc_allocWithZone(MEMORY[0x1E695D6C8]) init];
  v43 = v194;
  sub_1D2174DA8(v202, v194, &qword_1EC6D2100);
  v44 = v192;
  v46 = v192 + 48;
  v45 = *(v192 + 48);
  v47 = v201;
  v48 = v45(v43, 1, v201);
  v197 = v45;
  if (v48 == 1)
  {
    v49 = *(v44 + 56);
    v193 = v42;
    v49(v174, 1, 1, v47);
    (*(v176 + 104))(v175, *MEMORY[0x1E6968F70], v177);
    v50 = v184;
    v51 = v194;
    v42 = v193;
    sub_1D22503CC();
    v52 = v50;
    if (v45(v51, 1, v47) != 1)
    {
      sub_1D2176170(v51, &qword_1EC6D2100);
    }
  }

  else
  {
    v52 = v184;
    (*(v44 + 32))(v184, v43, v47);
  }

  v53 = sub_1D225033C();
  v54 = *(v44 + 8);
  v194 = v44 + 8;
  v193 = v54;
  (v54)(v52, v47);
  [v42 setURL_];

  v55 = v185;
  sub_1D2174DA8(v202, v185, &qword_1EC6D2100);
  v56 = v197;
  if (v197(v55, 1, v47) == 1)
  {
    sub_1D2176170(v55, &qword_1EC6D2100);
    v57 = v187;
  }

  else
  {
    v58 = v178;
    (*(v44 + 32))(v178, v55, v47);
    v59 = objc_opt_self();
    v60 = [v59 defaultManager];
    sub_1D22503BC();
    v61 = sub_1D225092C();

    v62 = [v60 fileExistsAtPath_];

    if (v62)
    {
      v63 = [v59 defaultManager];
      sub_1D22503BC();
      v64 = sub_1D225092C();

      v65 = [v63 isWritableFileAtPath_];

      if ((v65 & 1) == 0)
      {
        v66 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
        [v42 setOption:v66 forKey:*MEMORY[0x1E695D458]];
      }
    }

    v47 = v201;
    (v193)(v58, v201);
    v57 = v187;
    v56 = v197;
  }

  v67 = v56(v202, 1, v47);
  v181 = v46;
  if (v67 == 1)
  {
    *(v203 + OBJC_IVAR____TtC19VisualUnderstanding20VUIndexCoreDataStore_historySupport) = 0;
  }

  else
  {
    *(v203 + OBJC_IVAR____TtC19VisualUnderstanding20VUIndexCoreDataStore_historySupport) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2E28);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1D22526E0;
    v69 = *MEMORY[0x1E695D3B8];
    *(inited + 32) = *MEMORY[0x1E695D3B8];
    *(inited + 40) = &unk_1F4DADA30;
    v70 = v69;
    sub_1D2178178(inited);
    swift_setDeallocating();
    sub_1D2176170(inited + 32, &unk_1EC6D2E30);
    type metadata accessor for NSPersistentHistoryTrackingOptionKey(0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2868);
    sub_1D2178130(&qword_1EDC88690, type metadata accessor for NSPersistentHistoryTrackingOptionKey);
    v71 = sub_1D225088C();

    [v42 setOption:v71 forKey:*MEMORY[0x1E695D3C0]];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2510);
  v72 = swift_allocObject();
  *(v72 + 16) = xmmword_1D2252720;
  *(v72 + 32) = v42;
  sub_1D2174E10(0, &qword_1EDC88698);
  v73 = v42;
  v74 = sub_1D2250AEC();

  v75 = v200;
  [v200 setPersistentStoreDescriptions_];

  v76 = v198;
  v77 = *(v198 + 16);
  v78 = v196;
  v189 = (v198 + 16);
  v188 = v77;
  v77(v57, v203 + v199, v196);
  v79 = v73;
  v80 = sub_1D225080C();
  v81 = v57;
  v82 = sub_1D2250CBC();

  v83 = os_log_type_enabled(v80, v82);
  v185 = v79;
  if (v83)
  {
    v84 = v79;
    v85 = swift_slowAlloc();
    v86 = swift_slowAlloc();
    aBlock = v86;
    *v85 = 136315394;
    v87 = [v84 isReadOnly];
    v88 = v87 == 0;
    if (v87)
    {
      v89 = 0x6C6E6F2D64616572;
    }

    else
    {
      v89 = 0x6972772D64616572;
    }

    if (v88)
    {
      v90 = 0xEA00000000006574;
    }

    else
    {
      v90 = 0xE900000000000079;
    }

    v91 = sub_1D21761D0(v89, v90, &aBlock);

    *(v85 + 4) = v91;
    *(v85 + 12) = 2080;
    v92 = [objc_opt_self() processInfo];
    v93 = [v92 processName];

    v94 = sub_1D225095C();
    v96 = v95;

    v97 = sub_1D21761D0(v94, v96, &aBlock);
    v75 = v200;

    *(v85 + 14) = v97;
    _os_log_impl(&dword_1D2171000, v80, v82, "Loading persistent store as %s from %s", v85, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1D3899640](v86, -1, -1);
    MEMORY[0x1D3899640](v85, -1, -1);

    v98 = v198;
  }

  else
  {

    v98 = v76;
  }

  v187 = *(v98 + 8);
  (v187)(v81, v78);
  v99 = swift_allocObject();
  *(v99 + 16) = 0;
  v100 = (v99 + 16);
  v217 = sub_1D2172B5C;
  v218 = v99;
  aBlock = MEMORY[0x1E69E9820];
  v214 = 1107296256;
  v215 = sub_1D2172AD0;
  v216 = &block_descriptor_201;
  v101 = _Block_copy(&aBlock);

  [v75 loadPersistentStoresWithCompletionHandler_];
  _Block_release(v101);
  swift_beginAccess();
  v102 = *v100;
  v103 = *v100;

  v104 = v186;
  sub_1D2174DA8(v202, v186, &qword_1EC6D2100);
  v105 = v201;
  if (v197(v104, 1, v201) == 1)
  {
    sub_1D2176170(v104, &qword_1EC6D2100);
    goto LABEL_27;
  }

  (*(v192 + 32))(v190, v104, v105);
  v119 = sub_1D2176644(qword_1F4DADA70);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2E20);
  swift_arrayDestroy();
  v107 = v191;
  if (!v102)
  {
LABEL_43:

    (v193)(v190, v105);
    v106 = v196;
    if (v102)
    {
      goto LABEL_28;
    }

    goto LABEL_44;
  }

  v120 = [v103 userInfo];
  v121 = sub_1D225089C();

  v122 = sub_1D225095C();
  if (!*(v121 + 16))
  {

    goto LABEL_43;
  }

  v124 = sub_1D2196C7C(v122, v123);
  v126 = v125;

  if ((v126 & 1) == 0)
  {

    v105 = v201;
    goto LABEL_43;
  }

  sub_1D21763A8(*(v121 + 56) + 32 * v124, &aBlock);

  if ((swift_dynamicCast() & 1) == 0)
  {
    v105 = v201;
    (v193)(v190, v201);

    v106 = v196;
    goto LABEL_29;
  }

  v106 = v196;
  v105 = v201;
  if (!v119[2] || (v127 = sub_1D2176758(v204), (v128 & 1) == 0))
  {

    (v193)(v190, v105);
    goto LABEL_29;
  }

  v129 = (v119[7] + 16 * v127);
  v131 = *v129;
  v130 = v129[1];

  v132 = v171;
  v188(v171, v203 + v199, v106);

  v133 = sub_1D225080C();
  v134 = sub_1D2250CDC();

  if (os_log_type_enabled(v133, v134))
  {
    v135 = swift_slowAlloc();
    v136 = swift_slowAlloc();
    aBlock = v136;
    *v135 = 136315138;
    v137 = sub_1D21761D0(v131, v130, &aBlock);

    *(v135 + 4) = v137;
    _os_log_impl(&dword_1D2171000, v133, v134, "Error: index store is corrupted (%s) - resetting", v135, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v136);
    MEMORY[0x1D3899640](v136, -1, -1);
    MEMORY[0x1D3899640](v135, -1, -1);
  }

  else
  {
  }

  (v187)(v132, v106);
  v207 = sub_1D22503BC();
  v208 = v149;
  v150 = sub_1D22503BC();
  aBlock = 1835561773;
  v214 = 0xE400000000000000;
  v204 = v150;
  v205 = v151;
  v204 = sub_1D2250AAC();
  v205 = v152;
  sub_1D2250A0C();
  v209 = v204;
  v210 = v205;
  v153 = sub_1D22503BC();
  aBlock = 1818326829;
  v214 = 0xE400000000000000;
  v204 = v153;
  v205 = v154;
  v204 = sub_1D2250AAC();
  v205 = v155;
  sub_1D2250A0C();
  v211 = v204;
  v212 = v205;
  v156 = objc_opt_self();
  for (i = 0; i != 48; i += 16)
  {

    v158 = [v156 defaultManager];
    v159 = sub_1D225092C();
    v160 = [v158 fileExistsAtPath_];

    if (v160)
    {
      v161 = [v156 defaultManager];
      v162 = sub_1D225092C();

      aBlock = 0;
      v163 = [v161 removeItemAtPath:v162 error:&aBlock];

      if (v163)
      {
        v164 = aBlock;
      }

      else
      {
        v165 = aBlock;
        v166 = sub_1D22502FC();

        swift_willThrow();
        v173 = 0;
      }
    }

    else
    {
    }
  }

  swift_arrayDestroy();
  v167 = swift_allocObject();
  *(v167 + 16) = 0;
  v168 = (v167 + 16);
  v217 = sub_1D222D4CC;
  v218 = v167;
  aBlock = MEMORY[0x1E69E9820];
  v214 = 1107296256;
  v215 = sub_1D2172AD0;
  v216 = &block_descriptor_207;
  v169 = _Block_copy(&aBlock);

  [v200 loadPersistentStoresWithCompletionHandler_];
  _Block_release(v169);

  v105 = v201;
  (v193)(v190, v201);
  swift_beginAccess();
  v102 = *v168;
  v170 = *v168;

LABEL_27:
  v106 = v196;
  v107 = v191;
  if (v102)
  {
LABEL_28:
    v103 = v102;
LABEL_29:
    v188(v107, v203 + v199, v106);
    v108 = v103;
    v109 = sub_1D225080C();
    v110 = sub_1D2250CDC();

    if (os_log_type_enabled(v109, v110))
    {
      v111 = swift_slowAlloc();
      v112 = swift_slowAlloc();
      *v111 = 138412290;
      *(v111 + 4) = v108;
      *v112 = v102;
      v113 = v108;
      _os_log_impl(&dword_1D2171000, v109, v110, "%@", v111, 0xCu);
      sub_1D2176170(v112, &qword_1EC6D2150);
      MEMORY[0x1D3899640](v112, -1, -1);
      v114 = v111;
      v105 = v201;
      MEMORY[0x1D3899640](v114, -1, -1);
    }

    v115 = v187;
    (v187)(v107, v106);
    sub_1D217EE2C();
    swift_allocError();
    *v116 = 0;
    swift_willThrow();

    (v193)(v195, v105);
    sub_1D2176170(v202, &qword_1EC6D2100);
    v117 = v203;
    v115(v203 + v199, v106);

    v118 = sub_1D22507AC();
    (*(*(v118 - 8) + 8))(v117 + v179, v118);

    type metadata accessor for VUIndexCoreDataStore(0);
    swift_deallocPartialClassInstance();
    return v203;
  }

LABEL_44:
  v138 = [v200 newBackgroundContext];
  v139 = v203;
  *(v203 + 16) = v138;
  v140 = v172;
  v141 = v188;
  v188(v172, v139 + v199, v106);
  v142 = type metadata accessor for VUIndexCoreDataStore.UniqueIdentifierMergePolicy(0);
  v143 = objc_allocWithZone(v142);
  v141(&v143[OBJC_IVAR____TtCC19VisualUnderstanding20VUIndexCoreDataStoreP33_336226E85413B796FA6E8D2AB0466B9D27UniqueIdentifierMergePolicy_logger], v140, v106);
  v206.receiver = v143;
  v206.super_class = v142;
  v144 = v138;
  v145 = objc_msgSendSuper2(&v206, sel_initWithMergeType_, 2);
  (v187)(v140, v106);
  [v144 setMergePolicy_];

  v146 = *(v139 + 16);
  v147 = v173;
  sub_1D2250DBC();
  (v193)(v195, v105);

  sub_1D2176170(v202, &qword_1EC6D2100);
  if (v147)
  {
  }

  return v203;
}

uint64_t sub_1D21749D8()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D2174BCC(unint64_t a1, uint64_t a2)
{
  v4 = v2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2100);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v13 - v8;
  if (a1 >= 5)
  {
    result = sub_1D22510FC();
    __break(1u);
  }

  else
  {
    v14 = 0x402010300uLL >> (8 * a1);
    sub_1D2174DA8(a2, v9, &qword_1EC6D2100);
    type metadata accessor for VUGallery(0);
    swift_allocObject();
    v10 = VUGallery.init(for:at:)(&v14, v9);
    if (v3)
    {
      v11 = sub_1D2176170(a2, &qword_1EC6D2100);
      type metadata accessor for VUWGallery(v11);
      swift_deallocPartialClassInstance();
    }

    else
    {
      *&v4[OBJC_IVAR___VUWGallery_gallery] = v10;
      v13.receiver = v4;
      v13.super_class = VUWGallery;
      v4 = objc_msgSendSuper2(&v13, sel_init);
      sub_1D2176170(a2, &qword_1EC6D2100);
    }

    return v4;
  }

  return result;
}

uint64_t sub_1D2174DA8(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D2174E10(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_1D2174E58(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t VUGallery.init(for:at:)(unsigned __int8 *a1, uint64_t a2)
{
  v137 = a2;
  v144[3] = *MEMORY[0x1E69E9840];
  v3 = sub_1D22503FC();
  v141 = *(v3 - 8);
  v4 = MEMORY[0x1EEE9AC00](v3);
  v133 = &v117 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v132 = &v117 - v6;
  v130 = sub_1D225031C();
  v129 = *(v130 - 8);
  MEMORY[0x1EEE9AC00](v130);
  v128 = &v117 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1D225082C();
  v139 = *(v8 - 8);
  v140 = v8;
  v9 = MEMORY[0x1EEE9AC00](v8);
  v126 = &v117 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v119 = &v117 - v12;
  v13 = MEMORY[0x1EEE9AC00](v11);
  v125 = &v117 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v122 = &v117 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2100);
  v17 = MEMORY[0x1EEE9AC00](v16 - 8);
  v120 = &v117 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v131 = &v117 - v20;
  v21 = MEMORY[0x1EEE9AC00](v19);
  v123 = &v117 - v22;
  v23 = MEMORY[0x1EEE9AC00](v21);
  v124 = &v117 - v24;
  v25 = MEMORY[0x1EEE9AC00](v23);
  v27 = &v117 - v26;
  MEMORY[0x1EEE9AC00](v25);
  v29 = &v117 - v28;
  v30 = sub_1D2250D3C();
  v31 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v33 = &v117 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_1D225087C();
  MEMORY[0x1EEE9AC00](v34 - 8);
  v35 = sub_1D2250D1C();
  MEMORY[0x1EEE9AC00](v35 - 8);
  v118 = *a1;
  sub_1D2174E10(0, &qword_1EDC886A0);
  sub_1D2250D0C();
  sub_1D225086C();
  (*(v31 + 104))(v33, *MEMORY[0x1E69E8090], v30);
  v36 = v135;
  *(v36 + 24) = sub_1D2250D7C();
  v127 = OBJC_IVAR____TtC19VisualUnderstanding9VUGallery_signposter;
  sub_1D225079C();
  v138 = OBJC_IVAR____TtC19VisualUnderstanding9VUGallery_logger;
  v37 = v29;
  sub_1D225081C();
  *(v36 + OBJC_IVAR____TtC19VisualUnderstanding9VUGallery_cache) = MEMORY[0x1E69E7CC8];
  sub_1D2174DA8(v137, v29, &qword_1EC6D2100);
  sub_1D2174DA8(v29, v27, &qword_1EC6D2100);
  v38 = *(v141 + 48);
  LODWORD(a1) = v38(v27, 1, v3);
  sub_1D2176170(v27, &qword_1EC6D2100);
  v136 = v3;
  v134 = v29;
  if (a1 == 1)
  {
    v117 = v38;
    v39 = v139;
    v40 = v122;
    v41 = v140;
    (*(v139 + 16))(v122, v36 + v138, v140);
    v42 = sub_1D225080C();
    v43 = sub_1D2250CDC();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      *v44 = 0;
      v45 = v44;
      v39 = v139;
      MEMORY[0x1D3899640](v45, -1, -1);
    }

    (*(v39 + 8))(v40, v41);
    v46 = *(v141 + 56);
    v3 = v136;
    v46(v123, 1, 1, v136);
    (*(v129 + 104))(v128, *MEMORY[0x1E6968F70], v130);
    v47 = v124;
    sub_1D22503CC();
    v37 = v134;
    sub_1D2176170(v134, &qword_1EC6D2100);
    v46(v47, 0, 1, v3);
    sub_1D21A6938(v47, v37, &qword_1EC6D2100);
    v38 = v117;
  }

  v48 = v37;
  v49 = v131;
  sub_1D2174DA8(v48, v131, &qword_1EC6D2100);
  if (v38(v49, 1, v3) == 1)
  {
    sub_1D2176170(v49, &qword_1EC6D2100);
    v50 = v139;
    v51 = v125;
    v52 = v140;
    (*(v139 + 16))(v125, v36 + v138, v140);
    v53 = sub_1D225080C();
    v54 = sub_1D2250CDC();
    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      *v55 = 0;
      _os_log_impl(&dword_1D2171000, v53, v54, "Could not find a valid gallery path. Please make sure you have the right entitlements.", v55, 2u);
      MEMORY[0x1D3899640](v55, -1, -1);
    }

    v56 = *(v50 + 8);
    v56(v51, v52);
    sub_1D217EE2C();
    swift_allocError();
    *v57 = 0;
    swift_willThrow();
    sub_1D2176170(v137, &qword_1EC6D2100);
    sub_1D2176170(v134, &qword_1EC6D2100);
    v58 = 0;
    v59 = v136;
    goto LABEL_37;
  }

  v60 = v141;
  v61 = v132;
  (*(v141 + 32))(v132, v49, v3);
  *(v36 + OBJC_IVAR____TtC19VisualUnderstanding9VUGallery_isSecurityScoped) = sub_1D225039C() & 1;
  v62 = v133;
  v131 = *(v60 + 16);
  (v131)(v133, v61, v3);
  if (sub_1D225032C() == 0x2E7865646E495556 && v63 == 0xEE006574696C7173)
  {

    v64 = v126;
  }

  else
  {
    v65 = sub_1D225126C();

    v64 = v126;
    if ((v65 & 1) == 0)
    {
      goto LABEL_14;
    }
  }

  sub_1D225035C();
LABEL_14:
  v66 = objc_opt_self();
  v67 = [v66 defaultManager];
  sub_1D22503BC();
  v68 = sub_1D225092C();

  v69 = [v67 fileExistsAtPath_];

  if ((v69 & 1) == 0)
  {
    v70 = v139;
    v71 = v119;
    v72 = v140;
    (*(v139 + 16))(v119, v135 + v138, v140);
    v73 = sub_1D225080C();
    v74 = sub_1D2250CEC();
    if (os_log_type_enabled(v73, v74))
    {
      v75 = swift_slowAlloc();
      v76 = swift_slowAlloc();
      v144[0] = v76;
      *v75 = 136315138;
      v77 = v133;
      swift_beginAccess();
      v78 = sub_1D22503BC();
      v80 = sub_1D21761D0(v78, v79, v144);

      *(v75 + 4) = v80;
      v60 = v141;
      _os_log_impl(&dword_1D2171000, v73, v74, "Creating directory %s...", v75, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v76);
      MEMORY[0x1D3899640](v76, -1, -1);
      MEMORY[0x1D3899640](v75, -1, -1);

      v81 = *(v139 + 8);
      v81(v119, v140);
    }

    else
    {

      v81 = *(v70 + 8);
      v81(v71, v72);
      v77 = v133;
    }

    v82 = [v66 defaultManager];
    swift_beginAccess();
    sub_1D22503BC();
    v83 = sub_1D225092C();

    v143[0] = 0;
    v84 = [v82 createDirectoryAtPath:v83 withIntermediateDirectories:1 attributes:0 error:v143];

    v62 = v77;
    if (!v84)
    {
      v102 = v143[0];
      sub_1D22502FC();

      swift_willThrow();
      sub_1D2176170(v137, &qword_1EC6D2100);
      v103 = *(v60 + 8);
      v59 = v136;
      v103(v132, v136);
      sub_1D2176170(v134, &qword_1EC6D2100);
      v56 = v81;
      v103(v77, v59);
      v58 = 0;
      v36 = v135;
      goto LABEL_37;
    }

    v85 = v143[0];
    v64 = v126;
  }

  v86 = OBJC_IVAR____TtC19VisualUnderstanding9VUGallery_client;
  v87 = v135;
  *(v135 + OBJC_IVAR____TtC19VisualUnderstanding9VUGallery_client) = v118;
  swift_beginAccess();
  (v131)(v87 + OBJC_IVAR____TtC19VisualUnderstanding9VUGallery_path, v62, v136);
  v36 = v87;
  v88 = v139;
  v89 = v87 + v138;
  v90 = v140;
  (*(v139 + 16))(v64, v89, v140);

  v91 = sub_1D225080C();
  v92 = sub_1D2250CBC();

  if (os_log_type_enabled(v91, v92))
  {
    v93 = swift_slowAlloc();
    v94 = swift_slowAlloc();
    v142[0] = v94;
    *v93 = 136315394;
    v95 = sub_1D22503BC();
    v97 = sub_1D21761D0(v95, v96, v142);

    *(v93 + 4) = v97;
    *(v93 + 12) = 2080;
    v98 = *(v36 + v86);
    if (v98 > 2)
    {
      if (v98 == 3)
      {
        v99 = 0x80000001D2256880;
        v100 = 0xD000000000000013;
      }

      else if (v98 == 4)
      {
        v99 = 0xE800000000000000;
        v100 = 0x6465767265736552;
      }

      else
      {
        v99 = 0xE600000000000000;
        v100 = 0x646572616853;
      }
    }

    else if (*(v36 + v86))
    {
      if (v98 == 1)
      {
        v99 = 0xE700000000000000;
        v100 = 0x74694B656D6F48;
      }

      else
      {
        v99 = 0xE800000000000000;
        v100 = 0x73746361746E6F43;
      }
    }

    else
    {
      v99 = 0xE600000000000000;
      v100 = 0x736F746F6850;
    }

    v104 = sub_1D21761D0(v100, v99, v142);

    *(v93 + 14) = v104;
    _os_log_impl(&dword_1D2171000, v91, v92, "Initializing gallery from %s for %s client", v93, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1D3899640](v94, -1, -1);
    MEMORY[0x1D3899640](v93, -1, -1);

    v131 = *(v139 + 8);
    (v131)(v126, v90);
    v59 = v136;
    v101 = v141;
  }

  else
  {

    v131 = *(v88 + 8);
    (v131)(v64, v90);
    v101 = v141;
    v59 = v136;
  }

  strcpy(v142, "VUIndex.sqlite");
  HIBYTE(v142[1]) = -18;
  v105 = v129;
  v106 = v128;
  v107 = v130;
  (*(v129 + 104))(v128, *MEMORY[0x1E6968F70], v130);
  sub_1D2178090();
  v108 = v120;
  v109 = v133;
  sub_1D22503EC();
  (*(v105 + 8))(v106, v107);
  (*(v101 + 56))(v108, 0, 1, v59);
  type metadata accessor for VUPersistedIndex();
  swift_allocObject();
  v110 = v121;
  v111 = sub_1D2177870(v108);
  if (!v110)
  {
    v115 = v111;
    sub_1D2176170(v137, &qword_1EC6D2100);
    v116 = *(v101 + 8);
    v116(v132, v59);
    sub_1D2176170(v134, &qword_1EC6D2100);
    *(v36 + 16) = v115;
    v116(v109, v59);
    return v36;
  }

  sub_1D2176170(v137, &qword_1EC6D2100);
  v112 = *(v101 + 8);
  v112(v132, v59);
  sub_1D2176170(v134, &qword_1EC6D2100);
  v112(v109, v59);
  v58 = 1;
  v56 = v131;
LABEL_37:

  v113 = sub_1D22507AC();
  (*(*(v113 - 8) + 8))(v36 + v127, v113);
  if (v58)
  {
    (*(v141 + 8))(v36 + OBJC_IVAR____TtC19VisualUnderstanding9VUGallery_path, v59);
  }

  v56((v36 + v138), v140);

  type metadata accessor for VUGallery(0);
  swift_deallocPartialClassInstance();
  return v36;
}

uint64_t sub_1D2176170(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1D21761D0(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1D217629C(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x1E69E6A18];
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
    sub_1D21763A8(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0Tm(v11);
  return v7;
}

unint64_t sub_1D217629C(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_1D2176450(a5, a6);
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
    result = sub_1D225108C();
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

uint64_t sub_1D21763A8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
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

uint64_t sub_1D2176450(uint64_t a1, unint64_t a2)
{
  v3 = sub_1D217649C(a1, a2);
  sub_1D2177FA4(&unk_1F4DADA08);
  return v3;
}

uint64_t sub_1D217649C(uint64_t a1, unint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  v6 = sub_1D21765CC(v5, 0);
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

  result = sub_1D225108C();
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
        v10 = sub_1D2250A3C();
        if (!v10)
        {
          return MEMORY[0x1E69E7CC0];
        }

        v11 = v10;
        v7 = sub_1D21765CC(v10, 0);
        result = sub_1D225100C();
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

void *sub_1D21765CC(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D25D8);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

void *sub_1D2176644(void *a1)
{
  v1 = a1[2];
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D25E8);
  v3 = sub_1D225114C();
  v4 = a1[4];
  v5 = a1[5];
  v6 = a1[6];
  v7 = sub_1D2176758(v4);
  if (v8)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v9 = v7;
  result = v6;
  v11 = a1 + 9;
  while (1)
  {
    *(v3 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v9;
    *(v3[6] + 8 * v9) = v4;
    v12 = (v3[7] + 16 * v9);
    *v12 = v5;
    v12[1] = result;
    v13 = v3[2];
    v14 = __OFADD__(v13, 1);
    v15 = v13 + 1;
    if (v14)
    {
      break;
    }

    v3[2] = v15;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v16 = v11 + 3;
    v4 = *(v11 - 2);
    v5 = *(v11 - 1);
    v17 = *v11;

    v9 = sub_1D2176758(v4);
    v11 = v16;
    result = v17;
    if (v18)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1D2176758(uint64_t a1)
{
  v2 = sub_1D225131C();

  return sub_1D217679C(a1, v2);
}

unint64_t sub_1D217679C(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

uint64_t type metadata accessor for VUIndexParameters()
{
  result = qword_1EDC88B48;
  if (!qword_1EDC88B48)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D21768F0(unsigned __int8 a1, unint64_t a2, char a3, uint64_t a4, char a5, char a6)
{
  v7 = v6;
  v36 = sub_1D225082C();
  v14 = *(v36 - 8);
  MEMORY[0x1EEE9AC00]();
  v16 = &v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v7 + 48) = 128;
  *(v7 + 56) = 1;
  v35 = OBJC_IVAR____TtC19VisualUnderstanding17VUIndexParameters_logger;
  sub_1D225081C();
  *(v7 + 16) = a1;
  if (a3)
  {
    v17 = 0;
  }

  else
  {
    v17 = a2;
  }

  if (a5)
  {
    a4 = 0;
  }

  *(v7 + 24) = v17;
  *(v7 + 32) = a4;
  *(v7 + 40) = a6;
  v18 = sub_1D2176D9C(a1);
  switch(v18)
  {
    case 3:
      if (v17 == 2)
      {
        *(v7 + 64) = xmmword_1D22547D0;
        v26 = 1064514355;
      }

      else if (v17 > 0x31 || a4)
      {
        if (v17 - 50 > 0x13)
        {
          if (a4)
          {
            break;
          }

          *(v7 + 64) = xmmword_1D22547C0;
          v26 = 1061494456;
        }

        else
        {
          if (a4)
          {
            break;
          }

          *(v7 + 64) = xmmword_1D22547C0;
          v26 = 1060823368;
        }
      }

      else
      {
        *(v7 + 64) = xmmword_1D22547C0;
        v26 = 1060320051;
      }

      *(v7 + 80) = v26;
      *(v7 + 84) = 0;
      *(v7 + 92) = 0;
      *(v7 + 48) = 512;
      *(v7 + 56) = 0;
      return v7;
    case 2:
      if ((v17 == 3737841667 || v17 == 1) && !a4)
      {
        v27 = 256;
        if (a6)
        {
          v27 = 128;
        }

        *(v7 + 64) = v27;
        *(v7 + 72) = 35;
        *(v7 + 80) = 1062836634;
        v28 = 1084227584;
        goto LABEL_50;
      }

      break;
    case 1:
      if ((v17 & 0xFFFFFFFFFFFFFFFELL) == 0xDECAF004 || !v17 && a4 == 3737841672)
      {
        v19 = 512;
        if (a6)
        {
          v19 = 128;
        }

        *(v7 + 64) = v19;
        *(v7 + 72) = 35;
        *(v7 + 80) = 0x3F8000003F6147AELL;
        *(v7 + 88) = 0x40000000;
        *(v7 + 92) = 1;
        return v7;
      }

      if (v17)
      {
        v29 = 0;
      }

      else
      {
        v29 = a4 == 3737841670;
      }

      v30 = v29;
      if (v17 == 3737841667 || v30)
      {
        v32 = 512;
        if (a6)
        {
          v32 = 128;
        }

        *(v7 + 64) = v32;
        *(v7 + 72) = 35;
        *(v7 + 80) = 0x3F8000003F5EB852;
        v28 = 1065353216;
        goto LABEL_50;
      }

      if ((v17 | 2) == 3 || !(v17 | a4))
      {
        v31 = 512;
        if (a6)
        {
          v31 = 128;
        }

        *(v7 + 64) = v31;
        *(v7 + 72) = 35;
        *(v7 + 80) = 0x3F8000003F5EB852;
        v28 = 0x40000000;
LABEL_50:
        *(v7 + 88) = v28;
        *(v7 + 92) = 0;
        return v7;
      }

      break;
  }

  (*(v14 + 16))(v16, v7 + v35, v36);
  v20 = sub_1D225080C();
  v21 = sub_1D2250CDC();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 16777984;
    *(v22 + 4) = a1;
    *(v22 + 5) = 2048;
    *(v22 + 7) = v17;
    *(v22 + 15) = 2048;
    *(v22 + 17) = a4;
    _os_log_impl(&dword_1D2171000, v20, v21, "Unsupported combination for type %hhu: revision %ld with contextual revision %ld", v22, 0x19u);
    MEMORY[0x1D3899640](v22, -1, -1);
  }

  v23 = *(v14 + 8);
  v24 = v36;
  v23(v16, v36);
  sub_1D217EE2C();
  swift_allocError();
  *v25 = 1;
  swift_willThrow();
  v23((v7 + v35), v24);
  type metadata accessor for VUIndexParameters();
  swift_deallocPartialClassInstance();
  return v7;
}

uint64_t sub_1D2176D9C(unsigned __int8 a1)
{
  if (a1 <= 5u)
  {
    if (!a1)
    {
      return 0;
    }

    if (a1 == 2)
    {
      return 1;
    }
  }

  else
  {
    switch(a1)
    {
      case 6u:
        return 3;
      case 0x2Au:
        return 4;
      case 0x3Fu:
        return 2;
    }
  }

  return 5;
}

unint64_t sub_1D2176E3C(unsigned __int8 a1, uint64_t a2)
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

uint64_t sub_1D2176EAC(uint64_t a1, char a2, uint64_t *a3)
{
  v4 = v3;
  v6 = *v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  result = sub_1D225113C();
  v8 = result;
  if (*(v6 + 16))
  {
    v31 = v4;
    v9 = 0;
    v10 = (v6 + 64);
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = v17 | (v9 << 6);
      v21 = *(*(v6 + 48) + v20);
      v22 = *(*(v6 + 56) + 8 * v20);
      if ((a2 & 1) == 0)
      {
      }

      result = MEMORY[0x1D3898D40](*(v8 + 40), v21, 1);
      v23 = -1 << *(v8 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v15 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v15 + 8 * v25);
          if (v29 != -1)
          {
            v16 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v24) & ~*(v15 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + v16) = v21;
      *(*(v8 + 56) + 8 * v16) = v22;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((a2 & 1) == 0)
    {

      v4 = v31;
      goto LABEL_33;
    }

    v30 = 1 << *(v6 + 32);
    v4 = v31;
    if (v30 >= 64)
    {
      bzero((v6 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v30;
    }

    *(v6 + 16) = 0;
  }

LABEL_33:
  *v4 = v8;
  return result;
}

uint64_t type metadata accessor for VUIndexQuantizer()
{
  result = qword_1EDC88BA0;
  if (!qword_1EDC88BA0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D2177178(uint64_t a1, uint64_t a2)
{
  v56 = a1;
  v57 = a2;
  v3 = sub_1D2250D3C();
  v54 = *(v3 - 8);
  v55 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v51 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1D2250D1C();
  MEMORY[0x1EEE9AC00](v6);
  v7 = sub_1D225087C();
  MEMORY[0x1EEE9AC00](v7 - 8);
  *(v2 + 24) = xmmword_1D2254A90;
  *(v2 + 40) = 8;
  *(v2 + 48) = MEMORY[0x1E69E7CC8];
  v58 = (v2 + 48);
  sub_1D225081C();
  v53 = OBJC_IVAR____TtC19VisualUnderstanding16VUIndexQuantizer_lockQueue;
  v52 = sub_1D2174E10(0, &qword_1EDC886A0);
  sub_1D225086C();
  v62 = MEMORY[0x1E69E7CC0];
  sub_1D2177820(&qword_1EDC886B0, MEMORY[0x1E69E8030]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2AE8);
  sub_1D2177F3C(&qword_1EDC886E0, &qword_1EC6D2AE8);
  sub_1D2250EAC();
  (*(v54 + 104))(v5, *MEMORY[0x1E69E8090], v55);
  v8 = v56;
  *(v2 + v53) = sub_1D2250D7C();
  sub_1D225079C();
  *(v2 + 16) = v57;
  v51 = v2;
  *(v2 + 56) = v8;
  v9 = OBJC_IVAR____TtC19VisualUnderstanding20VUIndexCoreDataStore_parameters;
  swift_beginAccess();
  v54 = v9;
  v10 = *(v8 + v9);
  v11 = v10 + 64;
  v12 = 1 << *(v10 + 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & *(v10 + 64);
  v53 = OBJC_IVAR____TtC19VisualUnderstanding20VUIndexCoreDataStore_logger;
  v15 = (v12 + 63) >> 6;

  v55 = v10;

  v16 = 0;
  v52 = 0;
  while (v14)
  {
LABEL_11:
    v21 = *(*(v55 + 48) + (__clz(__rbit64(v14)) | (v16 << 6)));
    v22 = *(v8 + v54);
    if (*(v22 + 16) && (v23 = sub_1D2176DFC(v21), (v24 & 1) != 0))
    {
      v25 = *(*(v22 + 56) + 8 * v23);
      v26 = *(v8 + 16);
      MEMORY[0x1EEE9AC00](v23);
      *(&v51 - 32) = v21;
      *(&v51 - 3) = v8;
      *(&v51 - 2) = v25;

      v27 = v26;
      v28 = v52;
      sub_1D2250DBC();
      v52 = v28;

      v29 = v61;
      v57 = v60;
    }

    else
    {
      v30 = sub_1D225080C();
      v31 = sub_1D2250CDC();
      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        *v32 = 16777472;
        v32[4] = v21;
        _os_log_impl(&dword_1D2171000, v30, v31, "No parameters for type %hhu", v32, 5u);
        MEMORY[0x1D3899640](v32, -1, -1);
      }

      v57 = 0;
      v29 = 0xC000000000000000;
    }

    v33 = v58;
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v59 = *v33;
    v35 = v59;
    *v33 = 0x8000000000000000;
    v36 = v21;
    v38 = sub_1D2176DFC(v21);
    v39 = v35[2];
    v40 = (v37 & 1) == 0;
    v41 = v39 + v40;
    if (__OFADD__(v39, v40))
    {
      goto LABEL_30;
    }

    v42 = v37;
    if (v35[3] >= v41)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        v45 = v59;
        if (v37)
        {
          goto LABEL_4;
        }
      }

      else
      {
        sub_1D21B6A6C();
        v45 = v59;
        if (v42)
        {
          goto LABEL_4;
        }
      }
    }

    else
    {
      sub_1D2178F1C(v41, isUniquelyReferenced_nonNull_native);
      v43 = sub_1D2176DFC(v36);
      if ((v42 & 1) != (v44 & 1))
      {
        goto LABEL_32;
      }

      v38 = v43;
      v45 = v59;
      if (v42)
      {
LABEL_4:
        v17 = (v45[7] + 16 * v38);
        v18 = *v17;
        v19 = v17[1];
        *v17 = v57;
        v17[1] = v29;
        sub_1D21A1ED8(v18, v19);
        goto LABEL_5;
      }
    }

    v45[(v38 >> 6) + 8] |= 1 << v38;
    *(v45[6] + v38) = v36;
    v46 = (v45[7] + 16 * v38);
    *v46 = v57;
    v46[1] = v29;
    v47 = v45[2];
    v48 = __OFADD__(v47, 1);
    v49 = v47 + 1;
    if (v48)
    {
      goto LABEL_31;
    }

    v45[2] = v49;
LABEL_5:
    v14 &= v14 - 1;
    *v58 = v45;
    swift_endAccess();
    v8 = v56;
  }

  while (1)
  {
    v20 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v20 >= v15)
    {

      return v51;
    }

    v14 = *(v11 + 8 * v20);
    ++v16;
    if (v14)
    {
      v16 = v20;
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  result = sub_1D22512AC();
  __break(1u);
  return result;
}

uint64_t sub_1D2177820(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D2177870(uint64_t a1)
{
  v33 = a1;
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2100);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v32 = &v26 - v4;
  v5 = sub_1D2250D3C();
  v30 = *(v5 - 8);
  v31 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v29 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1D2250D1C();
  MEMORY[0x1EEE9AC00](v7);
  v8 = sub_1D225087C();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v26 = OBJC_IVAR____TtC19VisualUnderstanding16VUPersistedIndex_signposter;
  sub_1D225079C();
  v27 = OBJC_IVAR____TtC19VisualUnderstanding16VUPersistedIndex_logger;
  sub_1D225081C();
  *(v1 + OBJC_IVAR____TtC19VisualUnderstanding16VUPersistedIndex_scannerCacheSize) = 160000000;
  *(v1 + OBJC_IVAR____TtC19VisualUnderstanding16VUPersistedIndex_quantizerAveragePartitionSize) = 100;
  v9 = OBJC_IVAR____TtC19VisualUnderstanding16VUPersistedIndex_callbackQueue;
  v28 = sub_1D2174E10(0, &qword_1EDC886A0);
  sub_1D225086C();
  v35 = MEMORY[0x1E69E7CC0];
  sub_1D2177EAC(&qword_1EDC886B0, MEMORY[0x1E69E8030]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2AE8);
  sub_1D2177F3C(&qword_1EDC886E0, &qword_1EC6D2AE8);
  sub_1D2250EAC();
  (*(v30 + 104))(v29, *MEMORY[0x1E69E8090], v31);
  v10 = v33;
  *(v1 + v9) = sub_1D2250D7C();
  v11 = v32;
  sub_1D2174DA8(v10, v32, &qword_1EC6D2100);
  type metadata accessor for VUIndexCoreDataStore(0);
  swift_allocObject();
  v12 = v34;
  v13 = sub_1D2172C08(v11);
  if (v12)
  {
    sub_1D2176170(v10, &qword_1EC6D2100);
    v14 = sub_1D22507AC();
    (*(*(v14 - 8) + 8))(v1 + v26, v14);
    v15 = sub_1D225082C();
    (*(*(v15 - 8) + 8))(v1 + v27, v15);

    type metadata accessor for VUPersistedIndex();
    swift_deallocPartialClassInstance();
  }

  else
  {
    *(v1 + 16) = v13;
    type metadata accessor for VUIndexQuantizer();
    swift_allocObject();

    v17 = sub_1D2177178(v16, 100);
    *(v1 + OBJC_IVAR____TtC19VisualUnderstanding16VUPersistedIndex_quantizer) = v17;
    type metadata accessor for VUIndexScanner(0);
    swift_allocObject();

    v19 = sub_1D21791B8(v18, v17, 160000000);

    *(v2 + OBJC_IVAR____TtC19VisualUnderstanding16VUPersistedIndex_scanner) = v19;
    type metadata accessor for VUIndexClusterer(0);
    v20 = swift_allocObject();

    *(v2 + OBJC_IVAR____TtC19VisualUnderstanding16VUPersistedIndex_clusterer) = sub_1D217999C(v21, v20);

    v22 = sub_1D2179B00(256);
    v24 = v23;

    if ((v24 & 1) == 0 && v22 <= 8)
    {
      sub_1D2210570();
    }

    sub_1D2176170(v10, &qword_1EC6D2100);
  }

  return v2;
}

uint64_t sub_1D2177E64(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D2177EAC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D2177EF4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D2177F3C(unint64_t *a1, uint64_t *a2)
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

uint64_t sub_1D2177FA4(uint64_t result)
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

  result = sub_1D2196B48(result, v11, 1, v3);
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

unint64_t sub_1D2178090()
{
  result = qword_1EDC886E8[0];
  if (!qword_1EDC886E8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDC886E8);
  }

  return result;
}

uint64_t type metadata accessor for VUPersistedIndex()
{
  result = qword_1EDC88B80;
  if (!qword_1EDC88B80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D2178130(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1D2178178(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D25E0);
    v3 = sub_1D225114C();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);

      result = sub_1D2178270(v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v5;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1D2178270(uint64_t a1)
{
  sub_1D225095C();
  sub_1D225132C();
  sub_1D22509EC();
  v2 = sub_1D225137C();

  return sub_1D2178300(a1, v2);
}

unint64_t sub_1D2178300(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = sub_1D225095C();
      v8 = v7;
      if (v6 == sub_1D225095C() && v8 == v9)
      {
        break;
      }

      v11 = sub_1D225126C();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

void sub_1D217842C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_1D2178494(uint64_t a1, id *a2)
{
  v3 = sub_1D225094C();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_1D217851C()
{
  sub_1D225095C();
  sub_1D225132C();
  sub_1D22509EC();
  v0 = sub_1D225137C();

  return v0;
}

uint64_t sub_1D2178598()
{
  v0 = sub_1D225095C();
  v2 = v1;
  if (v0 == sub_1D225095C() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_1D225126C();
  }

  return v5 & 1;
}

uint64_t VUGallery.__deallocating_deinit()
{
  v1 = v0;
  v2 = sub_1D22503FC();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v1 + OBJC_IVAR____TtC19VisualUnderstanding9VUGallery_isSecurityScoped) == 1)
  {
    (*(v3 + 16))(v5, v1 + OBJC_IVAR____TtC19VisualUnderstanding9VUGallery_path, v2);
    sub_1D225037C();
    (*(v3 + 8))(v5, v2);
  }

  v6 = OBJC_IVAR____TtC19VisualUnderstanding9VUGallery_signposter;
  v7 = sub_1D22507AC();
  (*(*(v7 - 8) + 8))(v1 + v6, v7);
  (*(v3 + 8))(v1 + OBJC_IVAR____TtC19VisualUnderstanding9VUGallery_path, v2);
  v8 = OBJC_IVAR____TtC19VisualUnderstanding9VUGallery_logger;
  v9 = sub_1D225082C();
  (*(*(v9 - 8) + 8))(v1 + v8, v9);

  return swift_deallocClassInstance();
}

uint64_t sub_1D2178818()
{

  v1 = OBJC_IVAR____TtC19VisualUnderstanding16VUPersistedIndex_signposter;
  v2 = sub_1D22507AC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = OBJC_IVAR____TtC19VisualUnderstanding16VUPersistedIndex_logger;
  v4 = sub_1D225082C();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return swift_deallocClassInstance();
}

uint64_t sub_1D217893C()
{

  v1 = OBJC_IVAR____TtC19VisualUnderstanding14VUIndexScanner_logger;
  v2 = sub_1D225082C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = OBJC_IVAR____TtC19VisualUnderstanding14VUIndexScanner_signposter;
  v4 = sub_1D22507AC();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return swift_deallocClassInstance();
}

uint64_t sub_1D2178A48()
{
  sub_1D2179698();

  return swift_deallocClassInstance();
}

uint64_t sub_1D2178A7C()
{

  v1 = OBJC_IVAR____TtC19VisualUnderstanding16VUIndexQuantizer_logger;
  v2 = sub_1D225082C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = OBJC_IVAR____TtC19VisualUnderstanding16VUIndexQuantizer_signposter;
  v4 = sub_1D22507AC();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return swift_deallocClassInstance();
}

uint64_t sub_1D2178B78()
{
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 16);
  v1 = OBJC_IVAR____TtC19VisualUnderstanding16VUIndexClusterer_logger;
  v2 = sub_1D225082C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = OBJC_IVAR____TtC19VisualUnderstanding16VUIndexClusterer_signposter;
  v4 = sub_1D22507AC();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return swift_deallocClassInstance();
}

uint64_t sub_1D2178C6C()
{
  v1 = OBJC_IVAR____TtC19VisualUnderstanding20VUIndexCoreDataStore_logger;
  v2 = sub_1D225082C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = OBJC_IVAR____TtC19VisualUnderstanding20VUIndexCoreDataStore_signposter;
  v4 = sub_1D22507AC();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return swift_deallocClassInstance();
}

uint64_t sub_1D2178D70()
{
  v1 = OBJC_IVAR____TtC19VisualUnderstanding17VUIndexParameters_logger;
  v2 = sub_1D225082C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_1D2178E78(uint64_t result)
{
  if (result)
  {
    if (result < 15)
    {
      return 0;
    }

    else
    {
      v1 = result;
      sub_1D22502DC();
      swift_allocObject();
      sub_1D22502CC();
      if (v1 >= 0x7FFFFFFF)
      {
        sub_1D225042C();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = 0;
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1D2178F1C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2960);
  result = sub_1D225113C();
  v7 = result;
  if (*(v5 + 16))
  {
    v29 = v3;
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
      v30 = *(*(v5 + 56) + 16 * v19);
      if ((a2 & 1) == 0)
      {
        sub_1D21A3B78(v30, *(&v30 + 1));
      }

      result = MEMORY[0x1D3898D40](*(v7 + 40), v20, 1);
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v14 + 8 * v23);
          if (v27 != -1)
          {
            v15 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + v15) = v20;
      *(*(v7 + 56) + 16 * v15) = v30;
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

    if (a2)
    {
      v28 = 1 << *(v5 + 32);
      if (v28 >= 64)
      {
        bzero((v5 + 64), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v28;
      }

      *(v5 + 16) = 0;
    }

    v3 = v29;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_1D21791B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  sub_1D225081C();
  sub_1D225079C();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  *(v4 + OBJC_IVAR____TtC19VisualUnderstanding14VUIndexScanner_cacheSize) = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2AD8);
  swift_allocObject();

  *(v4 + OBJC_IVAR____TtC19VisualUnderstanding14VUIndexScanner_partitionCache) = sub_1D21792F4(a3 / 2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2AE0);
  swift_allocObject();
  *(v4 + OBJC_IVAR____TtC19VisualUnderstanding14VUIndexScanner_contextCache) = sub_1D21792F4(a3 / 2);
  return v4;
}

void *sub_1D21792F4(uint64_t a1)
{
  v2 = v1;
  v17 = a1;
  v3 = sub_1D2250D3C();
  v15 = v3;
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1D225087C();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v8 = sub_1D2250D1C();
  MEMORY[0x1EEE9AC00](v8);
  v9 = MEMORY[0x1E69E7CC0];
  v2[3] = MEMORY[0x1E69E7CC8];
  v2[4] = v9;
  v2[5] = 0;
  v14[2] = sub_1D2174E10(0, &qword_1EDC886A0);
  sub_1D2250D0C();
  sub_1D225086C();
  v10 = *MEMORY[0x1E69E8090];
  v11 = *(v4 + 104);
  v14[3] = v4 + 104;
  v16 = v11;
  v11(v6, v10, v3);
  v12 = sub_1D2250D7C();
  v2[7] = 0;
  v2[8] = 0;
  v14[1] = "ND noindex:(isPrimary) == YES";
  v2[6] = v12;
  sub_1D225086C();
  v18 = v9;
  sub_1D2177E64(&qword_1EDC886B0, MEMORY[0x1E69E8030]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2AE8);
  sub_1D2177F3C(&qword_1EDC886E0, &qword_1EC6D2AE8);
  sub_1D2250EAC();
  v16(v6, v10, v15);
  v2[9] = sub_1D2250D7C();
  v2[2] = v17;
  return v2;
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_5(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1D2179698()
{

  return v0;
}

uint64_t sub_1D21796D0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t a4)
{
  v15 = sub_1D2250D3C();
  v8 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1D2250D1C();
  MEMORY[0x1EEE9AC00](v11);
  v12 = sub_1D225087C();
  MEMORY[0x1EEE9AC00](v12 - 8);
  v18 = a3(0);
  v19 = a4;
  *&v17 = a1;
  sub_1D225081C();
  v14 = OBJC_IVAR____TtC19VisualUnderstanding16VUIndexClusterer_lockQueue;
  sub_1D21799BC();
  sub_1D225086C();
  v16 = MEMORY[0x1E69E7CC0];
  sub_1D2179A08();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2AE8);
  sub_1D2179A60();
  sub_1D2250EAC();
  (*(v8 + 104))(v10, *MEMORY[0x1E69E8090], v15);
  *(a2 + v14) = sub_1D2250D7C();
  sub_1D225079C();
  sub_1D2179AC4(&v17, a2 + 16);
  return a2;
}

unint64_t sub_1D21799BC()
{
  result = qword_1EDC886A0;
  if (!qword_1EDC886A0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDC886A0);
  }

  return result;
}

unint64_t sub_1D2179A08()
{
  result = qword_1EDC886B0;
  if (!qword_1EDC886B0)
  {
    sub_1D2250D1C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC886B0);
  }

  return result;
}

unint64_t sub_1D2179A60()
{
  result = qword_1EDC886E0;
  if (!qword_1EDC886E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6D2AE8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC886E0);
  }

  return result;
}

uint64_t sub_1D2179AC4(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_1D2179B00(__int16 a1)
{
  v23 = 0;
  v24 = 1;
  v3 = *(v1 + 16);
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 17) = HIBYTE(a1) & 1;
  *(v4 + 24) = v1;
  *(v4 + 32) = &v23;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_1D222D36C;
  *(v5 + 24) = v4;
  v21 = sub_1D21A7328;
  v22 = v5;
  aBlock = MEMORY[0x1E69E9820];
  v18 = 1107296256;
  v19 = sub_1D2179EE8;
  v20 = &block_descriptor_79;
  v6 = _Block_copy(&aBlock);
  v7 = v3;

  [v7 performBlockAndWait_];

  _Block_release(v6);
  LOBYTE(v6) = swift_isEscapingClosureAtFileLocation();

  if (v6)
  {
    __break(1u);
  }

  else
  {
    if (v24 != 1)
    {
LABEL_8:
      v14 = v23;

      return v14;
    }

    v15 = 0u;
    v16 = 0u;
    v9 = *(v1 + 16);
    v10 = swift_allocObject();
    v10[2] = v1;
    v10[3] = &v15;
    v10[4] = 0x6E6F6973726576;
    v10[5] = 0xE700000000000000;
    v11 = swift_allocObject();
    *(v11 + 16) = sub_1D21A647C;
    *(v11 + 24) = v10;
    v21 = sub_1D21A7328;
    v22 = v11;
    aBlock = MEMORY[0x1E69E9820];
    v18 = 1107296256;
    v19 = sub_1D2179EE8;
    v20 = &block_descriptor_89;
    v12 = _Block_copy(&aBlock);

    v13 = v9;

    [v13 performBlockAndWait_];

    _Block_release(v12);
    LOBYTE(v13) = swift_isEscapingClosureAtFileLocation();

    if ((v13 & 1) == 0)
    {
      if (*(&v16 + 1))
      {
        if (swift_dynamicCast())
        {
          v23 = aBlock;
          v24 = 0;
        }
      }

      else
      {
        sub_1D2176170(&v15, &unk_1EC6D2180);
      }

      goto LABEL_8;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D2179E50()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1D2179E88()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1D2179FD4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D21B8);
  sub_1D2250D5C();
  return v1;
}

uint64_t sub_1D217A058@<X0>(uint64_t a1@<X0>, unsigned __int8 a2@<W1>, uint64_t a3@<X2>, unint64_t *a4@<X8>)
{
  v56 = a4;
  v7 = type metadata accessor for VUGallery.TagView(0);
  v63 = *(v7 - 8);
  v64 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v55 = &v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2128);
  v67 = *(v9 - 8);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v62 = &v54 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v61 = &v54 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v59 = &v54 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2110);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v54 - v16;
  v60 = a1;
  v18 = *(*(a1 + 16) + 16);
  LOWORD(a1) = a2;
  v19 = sub_1D225055C();
  v20 = *(v19 - 8);
  (*(v20 + 16))(v17, a3, v19);
  v21 = *(v20 + 56);
  v21(v17, 0, 1, v19);
  v22 = *(v18 + 16);
  v68 = 0;
  v69 = 1;
  v70 = a1;
  v71 = 0;
  v72 = v17;
  v73 = v18;

  v23 = v22;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2140);
  v24 = v66;
  sub_1D2250DBC();

  v25 = v74;
  sub_1D2176170(v17, &qword_1EC6D2110);
  if (*(v25 + 16) && (v66 = (*(v67 + 80) + 32) & ~*(v67 + 80), v26 = v59, sub_1D2174DA8(v25 + v66, v59, &qword_1EC6D2128), , v57 = v24, v27 = *v26, v65 = v9, v28 = *(v9 + 64), v29 = v20, (*(v20 + 8))(&v26[v28], v19), v30 = *(*(v60 + 16) + 16), v31 = v21(v17, 1, 1, v19), v32 = *(v30 + 16), MEMORY[0x1EEE9AC00](v31), *(&v54 - 4) = v27, *(&v54 - 24) = 0, *(&v54 - 11) = 0, *(&v54 - 20) = 1, *(&v54 - 2) = v17, *(&v54 - 1) = v30, , v33 = v32, v34 = v57, sub_1D2250DBC(), v33, , v35 = v74, sub_1D2176170(v17, &qword_1EC6D2110), (v36 = *(v35 + 16)) != 0))
  {
    v57 = v34;
    v60 = v19;
    v74 = MEMORY[0x1E69E7CC0];
    sub_1D21AF7CC(0, v36, 0);
    v37 = v74;
    v54 = v35;
    v38 = v35 + v66;
    v39 = *(v67 + 72);
    v58 = (v29 + 32);
    v59 = v39;
    v40 = v55;
    v41 = v65;
    do
    {
      v66 = v37;
      v67 = v36;
      v42 = v61;
      sub_1D2174DA8(v38, v61, &qword_1EC6D2128);
      if (*(v42 + 8) >= 6u)
      {
        v43 = 5;
      }

      else
      {
        v43 = *(v42 + 8);
      }

      v44 = v62;
      sub_1D2174DA8(v42, v62, &qword_1EC6D2128);
      v45 = *(v41 + 64);
      v46 = *(v42 + *(v41 + 80));
      v47 = *v42;
      v48 = v42;
      v37 = v66;
      sub_1D2176170(v48, &qword_1EC6D2128);
      *v40 = v43;
      v49 = v64;
      (*v58)(&v40[*(v64 + 20)], v44 + v45, v60);
      v40[*(v49 + 24)] = v46;
      *&v40[*(v49 + 28)] = v47;
      v74 = v37;
      v51 = *(v37 + 16);
      v50 = *(v37 + 24);
      if (v51 >= v50 >> 1)
      {
        sub_1D21AF7CC(v50 > 1, v51 + 1, 1);
        v37 = v74;
      }

      *(v37 + 16) = v51 + 1;
      sub_1D21A6320(v40, v37 + ((*(v63 + 80) + 32) & ~*(v63 + 80)) + *(v63 + 72) * v51, type metadata accessor for VUGallery.TagView);
      v38 += v59;
      v36 = v67 - 1;
      v41 = v65;
    }

    while (v67 != 1);

    v53 = v56;
  }

  else
  {

    v37 = MEMORY[0x1E69E7CC0];
    v53 = v56;
  }

  *v53 = v37;
  return result;
}

uint64_t sub_1D217A694(unint64_t a1)
{
  if (a1 >> 62)
  {
    v3 = sub_1D2250F4C();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!(*v1 >> 62))
  {
    v4 = *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v5 = __OFADD__(v4, v3);
    result = v4 + v3;
    if (!v5)
    {
      goto LABEL_5;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v13 = sub_1D2250F4C();
  v5 = __OFADD__(v13, v3);
  result = v13 + v3;
  if (v5)
  {
    goto LABEL_13;
  }

LABEL_5:
  sub_1D217A978(result);
  v7 = *v1;
  v8 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_1D217A784(v8 + 8 * *(v8 + 0x10) + 32, (*(v8 + 0x18) >> 1) - *(v8 + 0x10), a1);
  v10 = v9;

  if (v10 < v3)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v10 < 1)
  {
LABEL_9:
    *v1 = v7;
    return result;
  }

  v11 = *(v8 + 16);
  v5 = __OFADD__(v11, v10);
  v12 = v11 + v10;
  if (!v5)
  {
    *(v8 + 16) = v12;
    goto LABEL_9;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_1D217A784(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1D2250F4C();
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
      result = sub_1D2250F4C();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1D220F114(&qword_1EC6D2CB0, &qword_1EC6D2CA8);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2CA8);
            v9 = sub_1D222D164(v13, i, a3);
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
        sub_1D2174E10(0, &unk_1EDC886D0);
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

unint64_t sub_1D217A924()
{
  result = qword_1EDC872D0;
  if (!qword_1EDC872D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC872D0);
  }

  return result;
}

uint64_t sub_1D217A978(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v1 = v3;
  if (result)
  {
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      if (a1 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
  {
    goto LABEL_9;
  }

  sub_1D2250F4C();
LABEL_9:
  result = sub_1D225105C();
  *v1 = result;
  return result;
}

uint64_t sub_1D217AAA4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1D225095C();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1D217AAD4()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D217AB28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2110);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 <= 3)
    {
      v11 = 3;
    }

    else
    {
      v11 = *(a1 + *(a3 + 24));
    }

    v12 = v11 - 3;
    if (v10 >= 3)
    {
      return v12;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_1D217ABF8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2110);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = a2 + 3;
  }

  return result;
}

uint64_t sub_1D217ACC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 20);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2110);
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t sub_1D217AD48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 20);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2110);
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

uint64_t sub_1D217ADE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2110);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 24));
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_1D217AEB0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2110);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1D217AF78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D225055C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 24));
    if (v12 >= 2)
    {
      return ((v12 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_1D217B048(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1D225055C();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 24)) = a2 + 1;
  }

  return result;
}

uint64_t sub_1D217B104(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2110);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 36);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1D217B1C0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2110);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 36);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1D217B270()
{

  return MEMORY[0x1EEE6BDD0](v0, 88, 7);
}

uint64_t sub_1D217B2E0()
{

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 40);

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

uint64_t sub_1D217B32C()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1D217B36C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_1D217B380()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D217B3D8()
{

  if (*(v0 + 64))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 80, 7);
}

uint64_t getEnumTagSinglePayload for VUStreamingGallery.RecognitionResult(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for VUStreamingGallery.RecognitionResult(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 16) = v3;
  return result;
}

uint64_t sub_1D217B4F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 11)
  {
    v4 = *(a1 + 16) >> 60;
    v5 = ((4 * v4) & 0xC) == 0;
    v6 = ((4 * v4) & 0xC | (v4 >> 2)) ^ 0xF;
    if (v5)
    {
      return 0;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2110);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 28);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_1D217B5B8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 11)
  {
    *(result + 8) = 0;
    *(result + 16) = ((~a2 >> 2) & 3 | (4 * ~a2)) << 60;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2110);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

id sub_1D217B670@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 observationIdentifier];
  *a2 = result;
  return result;
}

id sub_1D217B6C0@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 clusterIdentifier];
  *a2 = result;
  return result;
}

id sub_1D217B710@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 isKeyFace];
  *a2 = result;
  return result;
}

uint64_t sub_1D217B758(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 253)
  {
    v4 = *a1;
    if (v4 >= 3)
    {
      return v4 - 2;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2110);
    v9 = *(*(v8 - 8) + 48);
    v10 = &a1[*(a3 + 24)];

    return v9(v10, a2, v8);
  }
}

_BYTE *sub_1D217B80C(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 253)
  {
    *result = a2 + 2;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2110);
    v8 = *(*(v7 - 8) + 56);
    v9 = &v5[*(a4 + 24)];

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1D217B8B8()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D217B8F0()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D217B938()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D217B980()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D217B9C0(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2C08);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2888);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + a3[6];
    goto LABEL_5;
  }

  if (a2 == 252)
  {
    v14 = *(a1 + a3[7]);
    if (v14 >= 4)
    {
      return v14 - 3;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D23C0);
    v16 = *(*(v15 - 8) + 48);
    v17 = a1 + a3[8];

    return v16(v17, a2, v15);
  }
}

uint64_t sub_1D217BB50(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2C08);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2888);
  v14 = *(result - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + a4[6];
    goto LABEL_5;
  }

  if (a3 == 252)
  {
    *(a1 + a4[7]) = a2 + 3;
  }

  else
  {
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D23C0);
    v16 = *(*(v15 - 8) + 56);
    v17 = a1 + a4[8];

    return v16(v17, a2, a2, v15);
  }

  return result;
}

uint64_t sub_1D217BCE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for VUStreamingGallery.Label(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 2)
    {
      return ((v10 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_1D217BDB0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for VUStreamingGallery.Label(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 1;
  }

  return result;
}

uint64_t sub_1D217BE78()
{

  return MEMORY[0x1EEE6BDD0](v0, 28, 7);
}

uint64_t sub_1D217BEB0()
{

  if (*(v0 + 64))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 80, 7);
}

uint64_t sub_1D217BF08()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D217BF40()
{

  return MEMORY[0x1EEE6BDD0](v0, 36, 7);
}

uint64_t sub_1D217BF88()
{

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1D217BFC8()
{

  if (*(v0 + 40))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1D217C020()
{
  if (*(v0 + 16))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D217C064()
{

  if (*(v0 + 64))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 80, 7);
}

uint64_t sub_1D217C0AC()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1D217C0EC()
{

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1D217C134()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D217C16C()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1D217C1A4()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1D217C1E4()
{

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1D217C254()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D217C28C()
{
  if (*(v0 + 16))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D217C2CC()
{

  return MEMORY[0x1EEE6BDD0](v0, 68, 7);
}

uint64_t sub_1D217C31C()
{

  return MEMORY[0x1EEE6BDD0](v0, 68, 7);
}

uint64_t sub_1D217C394()
{

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1D217C3E4()
{

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

uint64_t sub_1D217C444()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D217C4F4()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D217C52C()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

id sub_1D217C580@<X0>(id *a1@<X0>, _DWORD *a2@<X8>)
{
  result = [*a1 density];
  *a2 = v4;
  return result;
}

id sub_1D217C5C8@<X0>(id *a1@<X0>, _DWORD *a2@<X8>)
{
  result = [*a1 diversity];
  *a2 = v4;
  return result;
}

id sub_1D217C610@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 label];
  *a2 = result;
  return result;
}

id sub_1D217C658@<X0>(id *a1@<X0>, _DWORD *a2@<X8>)
{
  result = [*a1 partition];
  *a2 = result;
  return result;
}

id sub_1D217C6A0@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 partner];
  *a2 = result;
  return result;
}

id sub_1D217C6E8@<X0>(id *a1@<X0>, _DWORD *a2@<X8>)
{
  result = [*a1 similarity];
  *a2 = v4;
  return result;
}

id sub_1D217C730@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 observation];
  *a2 = result;
  return result;
}

id sub_1D217C7C8@<X0>(id *a1@<X0>, _WORD *a2@<X8>)
{
  result = [*a1 client];
  *a2 = result;
  return result;
}

id sub_1D217C810@<X0>(id *a1@<X0>, _DWORD *a2@<X8>)
{
  result = [*a1 confidence];
  *a2 = v4;
  return result;
}

id sub_1D217C8D8@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 identifier];
  *a2 = result;
  return result;
}

id sub_1D217C920@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 isPrimary];
  *a2 = result;
  return result;
}

id sub_1D217C968@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 legacyLabel];
  *a2 = result;
  return result;
}

id sub_1D217C9B0@<X0>(id *a1@<X0>, _DWORD *a2@<X8>)
{
  result = [*a1 legacyPartition];
  *a2 = result;
  return result;
}

id sub_1D217CA38@<X0>(id *a1@<X0>, _DWORD *a2@<X8>)
{
  result = [*a1 quality];
  *a2 = v4;
  return result;
}

id sub_1D217CA80@<X0>(id *a1@<X0>, _WORD *a2@<X8>)
{
  result = [*a1 source];
  *a2 = result;
  return result;
}

id sub_1D217CAC8@<X0>(id *a1@<X0>, _WORD *a2@<X8>)
{
  result = [*a1 type];
  *a2 = result;
  return result;
}

id sub_1D217CB10@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 mapping];
  *a2 = result;
  return result;
}

id sub_1D217CB60@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 tags];
  *a2 = result;
  return result;
}

id sub_1D217CBB8@<X0>(id *a1@<X0>, _DWORD *a2@<X8>)
{
  result = [*a1 partition];
  *a2 = result;
  return result;
}

id sub_1D217CC00@<X0>(id *a1@<X0>, _WORD *a2@<X8>)
{
  result = [*a1 type];
  *a2 = result;
  return result;
}

id sub_1D217CC48@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 contextualEmbeddingRevision];
  *a2 = result;
  return result;
}

id sub_1D217CC90@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 embeddingRevision];
  *a2 = result;
  return result;
}

id sub_1D217CCE0@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 staleObservations];
  *a2 = result;
  return result;
}

id sub_1D217CD28@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 staleTags];
  *a2 = result;
  return result;
}

id sub_1D217CD70@<X0>(id *a1@<X0>, _WORD *a2@<X8>)
{
  result = [*a1 type];
  *a2 = result;
  return result;
}

id sub_1D217CDB8@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 usingVectorStore];
  *a2 = result;
  return result;
}

id sub_1D217CE00@<X0>(id *a1@<X0>, _DWORD *a2@<X8>)
{
  result = [*a1 version];
  *a2 = result;
  return result;
}

id sub_1D217CE48@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 isPrimary];
  *a2 = result;
  return result;
}

id sub_1D217CE90@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 resolved];
  *a2 = result;
  return result;
}

id sub_1D217CED8@<X0>(id *a1@<X0>, _WORD *a2@<X8>)
{
  result = [*a1 type];
  *a2 = result;
  return result;
}

id sub_1D217CF28@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 observation];
  *a2 = result;
  return result;
}

unint64_t VUGallery.Client.description.getter()
{
  v1 = *v0;
  v2 = 0x736F746F6850;
  v3 = 0xD000000000000013;
  v4 = 0x6465767265736552;
  if (v1 != 4)
  {
    v4 = 0x646572616853;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x74694B656D6F48;
  if (v1 != 1)
  {
    v5 = 0x73746361746E6F43;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

VisualUnderstanding::VUGallery::Client_optional __swiftcall VUGallery.Client.init(rawValue:)(Swift::Int16 rawValue)
{
  v2 = rawValue;
  if (rawValue >= 6u)
  {
    v2 = 6;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_1D217D058()
{
  sub_1D225132C();
  sub_1D225135C();
  return sub_1D225137C();
}

uint64_t sub_1D217D0CC()
{
  sub_1D225132C();
  sub_1D225135C();
  return sub_1D225137C();
}

unint64_t sub_1D217D124()
{
  v1 = *v0;
  v2 = 0x736F746F6850;
  v3 = 0xD000000000000013;
  v4 = 0x6465767265736552;
  if (v1 != 4)
  {
    v4 = 0x646572616853;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x74694B656D6F48;
  if (v1 != 1)
  {
    v5 = 0x73746361746E6F43;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t VUGallery.path.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC19VisualUnderstanding9VUGallery_path;
  v4 = sub_1D22503FC();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_1D217D2D8@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *(*(a1 + 16) + 16);
  v5 = OBJC_IVAR____TtC19VisualUnderstanding20VUIndexCoreDataStore_parameters;
  swift_beginAccess();
  v6 = *(v4 + v5);
  v7 = 1;
  v8 = 1 << *(v6 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(v6 + 64);
  v11 = (v8 + 63) >> 6;

  v13 = 0;
LABEL_4:
  v14 = v7;
  while (v10)
  {
LABEL_10:
    v16 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
    v17 = *(*(v6 + 48) + (v16 | (v13 << 6)));
    if (v17 > 5)
    {
      if (v17 == 6)
      {
LABEL_18:
        v7 = 0;
        if ((v14 & 1) == 0)
        {
          goto LABEL_4;
        }

        goto LABEL_19;
      }

      if (v17 == 63)
      {
        v7 = 0;
        if ((v14 & 1) == 0)
        {
          goto LABEL_4;
        }

        goto LABEL_19;
      }
    }

    else
    {
      if (!v17)
      {
        goto LABEL_18;
      }

      if (v17 == 2)
      {
        v7 = 0;
        if (v14)
        {
LABEL_19:
          v19[1] = v19;
          v20 = a2;
          MEMORY[0x1EEE9AC00](result);
          v19[-2] = a1;
          LOBYTE(v19[-1]) = v18;
          result = sub_1D2250D5C();
          a2 = v20;
          v7 = v21;
          goto LABEL_4;
        }

        goto LABEL_4;
      }
    }
  }

  while (1)
  {
    v15 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v15 >= v11)
    {

      *a2 = v7 & 1;
      return result;
    }

    v10 = *(v6 + 64 + 8 * v15);
    ++v13;
    if (v10)
    {
      v13 = v15;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

VisualUnderstanding::VUGallery::EntityClass_optional __swiftcall VUGallery.EntityClass.init(rawValue:)(VisualUnderstanding::VUGallery::EntityClass_optional rawValue)
{
  value = rawValue.value;
  if (rawValue.value <= (VisualUnderstanding_VUGallery_EntityClass_unknownDefault|VisualUnderstanding_VUGallery_EntityClass_person))
  {
    if (rawValue.value == VisualUnderstanding_VUGallery_EntityClass_invalid)
    {
LABEL_9:
      *v1 = value;
      return rawValue;
    }

    if (rawValue.value == VisualUnderstanding_VUGallery_EntityClass_animal)
    {
      *v1 = VisualUnderstanding_VUGallery_EntityClass_person;
      return rawValue;
    }

LABEL_8:
    value = VisualUnderstanding_VUGallery_EntityClass_unknownDefault;
    goto LABEL_9;
  }

  if (rawValue.value != (VisualUnderstanding_VUGallery_EntityClass_unknownDefault|VisualUnderstanding_VUGallery_EntityClass_animal))
  {
    if (rawValue.value == 63)
    {
      *v1 = VisualUnderstanding_VUGallery_EntityClass_animal;
      return rawValue;
    }

    goto LABEL_8;
  }

  *v1 = VisualUnderstanding_VUGallery_EntityClass_scene;
  return rawValue;
}

void sub_1D217D5A0(uint64_t a1@<X0>, char a2@<W1>, _BYTE *a3@<X8>)
{
  sub_1D2174E10(0, &unk_1EDC886D0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2400);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1D22526E0;
  v7 = MEMORY[0x1E69E7558];
  *(v6 + 56) = MEMORY[0x1E69E7508];
  *(v6 + 64) = v7;
  *(v6 + 32) = 0x63F0200u >> (8 * a2);

  v8 = sub_1D2250C5C();
  v9 = sub_1D2219F2C(v8, 0, 1);

  if (v9 || (v11 = *(*(*(a1 + 16) + 16) + 16), MEMORY[0x1EEE9AC00](v10), , v12 = v11, sub_1D2250DBC(), v12, v13 = , (v18 & 1) != 0))
  {
    v14 = 0;
  }

  else
  {
    v15 = *(*(*(a1 + 16) + 16) + 16);
    MEMORY[0x1EEE9AC00](v13);

    v16 = v15;
    sub_1D2250DBC();

    v14 = v17 ^ 1;
  }

  *a3 = v14 & 1;
}

uint64_t sub_1D217D894@<X0>(uint64_t *a1@<X8>)
{

  v2 = sub_1D2179B00(256);
  v4 = v3;

  v6 = 10;
  if ((v4 & 1) == 0)
  {
    v6 = v2;
  }

  *a1 = v6;
  return result;
}

uint64_t sub_1D217D938@<X0>(char a1@<W1>, uint64_t *a2@<X8>)
{
  v3 = 0x63F0200u >> (8 * a1);

  v4 = sub_1D2179B00(v3 & 0x3F);
  v6 = v5;

  v8 = 10;
  if ((v6 & 1) == 0)
  {
    v8 = v4;
  }

  *a2 = v8;
  return result;
}

unint64_t sub_1D217DAD8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(*(a1 + 16) + 16);
  v4 = OBJC_IVAR____TtC19VisualUnderstanding20VUIndexCoreDataStore_parameters;
  result = swift_beginAccess();
  v6 = *(v3 + v4);
  v7 = *(v6 + 16);
  if (v7)
  {
    result = sub_1D2176DFC(2u);
    if (v8)
    {
      v7 = *(*(*(v6 + 56) + 8 * result) + 32);
    }

    else
    {
      v7 = 0;
    }
  }

  *a2 = v7;
  return result;
}

unint64_t sub_1D217DC64@<X0>(uint64_t a1@<X0>, unsigned __int8 a2@<W1>, void *a3@<X8>)
{
  v5 = *(*(a1 + 16) + 16);
  v6 = OBJC_IVAR____TtC19VisualUnderstanding20VUIndexCoreDataStore_parameters;
  result = swift_beginAccess();
  v8 = *(v5 + v6);
  v9 = *(v8 + 16);
  if (v9)
  {
    result = sub_1D2176DFC(a2);
    if (v10)
    {
      v9 = *(*(*(v8 + 56) + 8 * result) + 24);
    }

    else
    {
      v9 = 0;
    }
  }

  *a3 = v9;
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

uint64_t sub_1D217DDB8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D20F8);
  sub_1D2250D5C();
  return v1;
}

unint64_t sub_1D217DE20@<X0>(uint64_t a1@<X0>, unsigned __int8 a2@<W1>, unint64_t *a3@<X8>)
{
  v5 = *(*(a1 + 16) + 16);
  v6 = OBJC_IVAR____TtC19VisualUnderstanding20VUIndexCoreDataStore_parameters;
  result = swift_beginAccess();
  if (*(*(v5 + v6) + 16) && (result = sub_1D2176DFC(a2), (v8 & 1) != 0))
  {

    v9 = sub_1D21C7974();
  }

  else
  {
    v9 = 0;
  }

  *a3 = v9;
  return result;
}

uint64_t sub_1D217DF5C@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v3 = v2;
  v43 = a2;
  v5 = sub_1D22504FC();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v34 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v33 - v10;
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = &v33 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v33 - v15;
  v17 = *(*(a1 + 16) + 16);
  v18 = *(v17 + 16);
  v41 = 2;
  v42 = v17;

  v19 = v18;
  sub_1D2250DBC();

  v20 = *(*(a1 + 16) + 16);
  v21 = *(v20 + 16);
  v39 = 63;
  v40 = v20;

  v22 = v21;
  sub_1D2250DBC();

  v23 = *(*(a1 + 16) + 16);
  v24 = *(v23 + 16);
  v37 = 6;
  v38 = v23;

  v25 = v24;
  sub_1D2250DBC();
  v33 = v3;

  sub_1D21A4090(&unk_1EC6D25F0, 255, MEMORY[0x1E6969530]);
  v26 = sub_1D225090C();
  v27 = *(v6 + 16);
  v35 = v16;
  v36 = v14;
  if (v26)
  {
    v28 = v14;
  }

  else
  {
    v28 = v16;
  }

  v29 = v34;
  v27(v34, v28, v5);
  v30 = v29;
  if (sub_1D225090C())
  {
    v31 = *(v6 + 8);
    v31(v30, v5);
    v27(v43, v11, v5);
  }

  else
  {
    (*(v6 + 32))(v43, v29, v5);
    v31 = *(v6 + 8);
  }

  v31(v11, v5);
  v31(v36, v5);
  return (v31)(v35, v5);
}

void sub_1D217E36C(uint64_t a1)
{
  v1 = *(*(*(a1 + 16) + 16) + 16);
  sub_1D22504FC();

  v2 = v1;
  sub_1D2250DBC();
}

uint64_t sub_1D217E44C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D20F8);
  sub_1D2250D5C();
  return v1;
}

unint64_t sub_1D217E4CC@<X0>(uint64_t a1@<X0>, char a2@<W1>, unint64_t *a3@<X8>)
{
  v5 = *(*(a1 + 16) + 16);
  v6 = OBJC_IVAR____TtC19VisualUnderstanding20VUIndexCoreDataStore_parameters;
  result = swift_beginAccess();
  if (*(*(v5 + v6) + 16) && (result = sub_1D2176DFC(0x63F0200u >> (8 * a2)), (v8 & 1) != 0))
  {

    v9 = sub_1D21C7974();
  }

  else
  {
    v9 = 0;
  }

  *a3 = v9;
  return result;
}

uint64_t sub_1D217E610@<X0>(uint64_t *a1@<X8>)
{
  swift_beginAccess();

  v3 = sub_1D217E6C4(v2);

  if (v3)
  {
    v5 = *(v3 + 64);
  }

  else
  {
    v5 = -1;
  }

  *a1 = v5;
  return result;
}

uint64_t sub_1D217E6C4(uint64_t a1)
{
  v2 = sub_1D2250EBC();
  if (v2 == 1 << *(a1 + 32))
  {
    return 0;
  }

  sub_1D21A2254(v2, *(a1 + 36), 0, a1);
}

uint64_t sub_1D217E78C@<X0>(float *a1@<X8>)
{
  swift_beginAccess();

  v3 = sub_1D217E6C4(v2);

  if (v3)
  {
    v5 = *(v3 + 80);
  }

  else
  {
    v5 = -1.0;
  }

  *a1 = v5;
  return result;
}

uint64_t sub_1D217E8A8@<X0>(float *a1@<X8>)
{
  swift_beginAccess();

  v3 = sub_1D217E6C4(v2);

  if (v3)
  {
    v5 = *(v3 + 84);
  }

  else
  {
    v5 = -1.0;
  }

  *a1 = v5;
  return result;
}

uint64_t sub_1D217E9C4@<X0>(float *a1@<X8>)
{
  swift_beginAccess();

  v3 = sub_1D217E6C4(v2);

  if (v3)
  {
    v5 = *(v3 + 88);
  }

  else
  {
    v5 = -1.0;
  }

  *a1 = v5;
  return result;
}

uint64_t VUGallery.__allocating_init(for:at:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2100);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v13 - v7;
  if (a1 == 0x736F746F6870 && a2 == 0xE600000000000000 || (sub_1D225126C() & 1) != 0)
  {

    v9 = 0;
  }

  else if (a1 == 0x74616369646E7973 && a2 == 0xEB000000006E6F69 || (sub_1D225126C() & 1) != 0)
  {

    v9 = 3;
  }

  else if (a1 == 0x73746361746E6F63 && a2 == 0xE800000000000000 || (sub_1D225126C() & 1) != 0)
  {

    v9 = 2;
  }

  else if (a1 == 0x74696B656D6F68 && a2 == 0xE700000000000000 || (sub_1D225126C() & 1) != 0)
  {

    v9 = 1;
  }

  else
  {
    if (a1 == 0x646572616873 && a2 == 0xE600000000000000 || (sub_1D225126C() & 1) != 0 || a1 == 0x6465767265736572 && a2 == 0xE800000000000000 || (sub_1D225126C() & 1) != 0 || a1 == 0x6C7070612E6D6F63 && a2 == 0xEF6C746375762E65)
    {
    }

    else
    {
      v11 = sub_1D225126C();

      if ((v11 & 1) == 0)
      {
        sub_1D217EE2C();
        swift_allocError();
        *v12 = 6;
        swift_willThrow();
        sub_1D2176170(a3, &qword_1EC6D2100);
        return a2;
      }
    }

    v9 = 5;
  }

  v14 = v9;
  sub_1D2174DA8(a3, v8, &qword_1EC6D2100);
  type metadata accessor for VUGallery(0);
  a2 = swift_allocObject();
  VUGallery.init(for:at:)(&v14, v8);
  sub_1D2176170(a3, &qword_1EC6D2100);
  return a2;
}

uint64_t VUGallery.__allocating_init(for:at:)(unsigned __int8 *a1, uint64_t a2)
{
  v4 = swift_allocObject();
  VUGallery.init(for:at:)(a1, a2);
  return v4;
}

unint64_t sub_1D217EE2C()
{
  result = qword_1EC6D2108;
  if (!qword_1EC6D2108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6D2108);
  }

  return result;
}

uint64_t VUGallery.deinit()
{
  v1 = v0;
  v2 = sub_1D22503FC();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v1 + OBJC_IVAR____TtC19VisualUnderstanding9VUGallery_isSecurityScoped) == 1)
  {
    (*(v3 + 16))(v5, v1 + OBJC_IVAR____TtC19VisualUnderstanding9VUGallery_path, v2);
    sub_1D225037C();
    (*(v3 + 8))(v5, v2);
  }

  v6 = OBJC_IVAR____TtC19VisualUnderstanding9VUGallery_signposter;
  v7 = sub_1D22507AC();
  (*(*(v7 - 8) + 8))(v1 + v6, v7);
  (*(v3 + 8))(v1 + OBJC_IVAR____TtC19VisualUnderstanding9VUGallery_path, v2);
  v8 = OBJC_IVAR____TtC19VisualUnderstanding9VUGallery_logger;
  v9 = sub_1D225082C();
  (*(*(v9 - 8) + 8))(v1 + v8, v9);

  return v1;
}

VisualUnderstanding::VUGallery::Source_optional __swiftcall VUGallery.Source.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 3;
  if (rawValue < 3)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t VUGallery.Context.source.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for VUGallery.Context(0);
  *a1 = *(v1 + *(result + 24));
  return result;
}

uint64_t VUGallery.Context.source.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for VUGallery.Context(0);
  *(v1 + *(result + 24)) = v2;
  return result;
}

uint64_t VUGallery.Context.init(moment:asset:source:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *a3;
  v8 = sub_1D225055C();
  v9 = *(*(v8 - 8) + 56);
  v9(a4, 1, 1, v8);
  v10 = type metadata accessor for VUGallery.Context(0);
  v11 = *(v10 + 20);
  v9(a4 + v11, 1, 1, v8);
  v12 = *(v10 + 24);
  *(a4 + v12) = 3;
  sub_1D21A6488(a1, a4, &qword_1EC6D2110);
  result = sub_1D21A6488(a2, a4 + v11, &qword_1EC6D2110);
  *(a4 + v12) = v7;
  return result;
}

uint64_t sub_1D217F354@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1D225055C();
  v7 = *(*(v6 - 8) + 56);
  v7(a3, 1, 1, v6);
  v8 = type metadata accessor for VUGallery.Context(0);
  v9 = *(v8 + 20);
  v7(a3 + v9, 1, 1, v6);
  *(a3 + *(v8 + 24)) = 3;
  sub_1D21A6488(a1, a3, &qword_1EC6D2110);
  return sub_1D21A6488(a2, a3 + v9, &qword_1EC6D2110);
}

uint64_t VUGallery.Context.init(moment:asset:)@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1D225055C();
  v6 = *(*(v2 - 8) + 56);
  (v6)((v2 - 8), a1, 1, 1, v2);
  v3 = type metadata accessor for VUGallery.Context(0);
  v4 = *(v3 + 20);
  v6(a1 + v4, 1, 1, v2);
  *(a1 + *(v3 + 24)) = 3;
  sub_1D2176170(a1, &qword_1EC6D2110);
  v6(a1, 1, 1, v2);
  sub_1D2176170(a1 + v4, &qword_1EC6D2110);

  return (v6)(a1 + v4, 1, 1, v2);
}

void sub_1D217F584(uint64_t a1, uint64_t a2)
{
  v83 = a2;
  v82 = a1;
  v95 = sub_1D225031C();
  v102 = *(v95 - 8);
  MEMORY[0x1EEE9AC00](v95);
  v94 = &v81 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = sub_1D22503FC();
  v3 = *(v105 - 8);
  v4 = MEMORY[0x1EEE9AC00](v105);
  v81 = &v81 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v93 = &v81 - v7;
  v8 = MEMORY[0x1EEE9AC00](v6);
  v101 = &v81 - v9;
  MEMORY[0x1EEE9AC00](v8);
  v87 = &v81 - v10;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2100);
  v11 = *(v86 - 8);
  v12 = MEMORY[0x1EEE9AC00](v86);
  v103 = &v81 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v81 - v15;
  v17 = MEMORY[0x1EEE9AC00](v14);
  v19 = &v81 - v18;
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v81 - v20;
  v22 = sub_1D225092C();
  v23 = [objc_opt_self() bundleWithIdentifier_];

  if (v23)
  {
    v24 = [v23 bundleURL];

    sub_1D225038C();
    v25 = *(v3 + 56);
    v26 = v21;
    v27 = 0;
  }

  else
  {
    v25 = *(v3 + 56);
    v26 = v21;
    v27 = 1;
  }

  v98 = v25;
  (v25)(v26, v27, 1, v105);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6D25B0);
  v28 = *(v11 + 72);
  v29 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v85 = swift_allocObject();
  v30 = v85 + v29;
  sub_1D2174DA8(v21, v85 + v29, &qword_1EC6D2100);
  sub_1D2174DA8(v21, v19, &qword_1EC6D2100);
  v99 = *(v3 + 48);
  v100 = v3 + 48;
  v31 = v99(v19, 1, v105);
  v32 = v103;
  v84 = v21;
  if (v31 == 1)
  {
    sub_1D2176170(v19, &qword_1EC6D2100);
    v33 = 1;
    v34 = v105;
  }

  else
  {
    sub_1D225036C();
    v34 = v105;
    (*(v3 + 8))(v19, v105);
    v33 = 0;
  }

  v35 = v28;
  (v98)(v30 + v28, v33, 1, v34);
  v36 = 0;
  v37 = 0;
  v90 = *MEMORY[0x1E6968F70];
  v88 = (v102 + 8);
  v89 = (v102 + 104);
  v97 = (v3 + 8);
  v38 = MEMORY[0x1E69E7CC0];
  v102 = v3;
  v98 = (v3 + 32);
  v39 = v30;
  v91 = v30;
  v92 = v35;
  do
  {
    v40 = v36;
    sub_1D2174DA8(v39 + v37 * v35, v16, &qword_1EC6D2100);
    sub_1D2174DA8(v16, v32, &qword_1EC6D2100);
    if (v99(v32, 1, v34) == 1)
    {
      sub_1D2176170(v16, &qword_1EC6D2100);
      sub_1D2176170(v32, &qword_1EC6D2100);
    }

    else
    {
      v96 = v40;
      strcpy(v104, "Plugins.bundle");
      HIBYTE(v104[1]) = -18;
      v41 = v94;
      v42 = v95;
      (*v89)(v94, v90, v95);
      sub_1D2178090();
      v43 = v93;
      sub_1D22503DC();
      v44 = v41;
      v32 = v103;
      (*v88)(v44, v42);
      sub_1D2176170(v16, &qword_1EC6D2100);
      (*v97)(v32, v34);
      v45 = *v98;
      (*v98)(v101, v43, v34);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v38 = sub_1D2195C40(0, v38[2] + 1, 1, v38, &qword_1EC6D25C0, &unk_1D2253A30, MEMORY[0x1E6968FB0]);
      }

      v47 = v38[2];
      v46 = v38[3];
      v35 = v92;
      LOBYTE(v40) = v96;
      if (v47 >= v46 >> 1)
      {
        v38 = sub_1D2195C40(v46 > 1, v47 + 1, 1, v38, &qword_1EC6D25C0, &unk_1D2253A30, MEMORY[0x1E6968FB0]);
      }

      v39 = v91;
      v38[2] = v47 + 1;
      v48 = v38 + ((*(v102 + 80) + 32) & ~*(v102 + 80)) + *(v102 + 72) * v47;
      v34 = v105;
      v45(v48, v101, v105);
    }

    v36 = 1;
    v37 = 1;
  }

  while ((v40 & 1) == 0);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v49 = 0;
  v50 = v38[2];
  v51 = v105;
  do
  {
    if (v50 == v49)
    {

      v58 = 0;
      v60 = v84;
      goto LABEL_27;
    }

    if (v49 >= v38[2])
    {
      __break(1u);
      return;
    }

    v52 = v102;
    v53 = v87;
    (*(v102 + 16))(v87, v38 + ((*(v52 + 80) + 32) & ~*(v52 + 80)) + *(v102 + 72) * v49++, v51);
    v54 = objc_allocWithZone(MEMORY[0x1E696AAE8]);
    v55 = sub_1D225033C();
    v56 = *(v52 + 8);
    v56(v53, v51);
    v57 = [v54 initWithURL_];
  }

  while (!v57);

  v58 = v57;
  v59 = [v58 load];
  v60 = v84;
  if (v59)
  {
    v61 = v58;
    v62 = sub_1D225080C();
    v63 = sub_1D2250CBC();

    if (os_log_type_enabled(v62, v63))
    {
      v64 = swift_slowAlloc();
      v103 = swift_slowAlloc();
      v104[0] = v103;
      *v64 = 136315138;
      v65 = [v61 bundleURL];
      LODWORD(v102) = v63;
      v66 = v65;
      v67 = v81;
      sub_1D225038C();

      sub_1D21A4090(&qword_1EDC87248, 255, MEMORY[0x1E6968FB0]);
      v68 = v105;
      v69 = sub_1D225125C();
      v70 = v60;
      v72 = v71;
      v56(v67, v68);
      v73 = sub_1D21761D0(v69, v72, v104);
      v60 = v70;

      *(v64 + 4) = v73;
      _os_log_impl(&dword_1D2171000, v62, v102, "Loaded plugins bundle from %s", v64, 0xCu);
      v74 = v103;
      __swift_destroy_boxed_opaque_existential_0Tm(v103);
      MEMORY[0x1D3899640](v74, -1, -1);
      MEMORY[0x1D3899640](v64, -1, -1);
    }

    strcpy(v104, "Plugins.");
    BYTE1(v104[1]) = 0;
    WORD1(v104[1]) = 0;
    HIDWORD(v104[1]) = -402653184;
    MEMORY[0x1D3898450](v82, v83);
    v75 = sub_1D225092C();

    v76 = [v61 classNamed_];

    sub_1D2176170(v60, &qword_1EC6D2100);
    if (v76)
    {
      swift_getObjCClassMetadata();
    }

    return;
  }

LABEL_27:
  v77 = sub_1D225080C();
  v78 = sub_1D2250CDC();
  if (os_log_type_enabled(v77, v78))
  {
    v79 = swift_slowAlloc();
    *v79 = 0;
    _os_log_impl(&dword_1D2171000, v77, v78, "Cannot load the plugins bundle", v79, 2u);
    MEMORY[0x1D3899640](v79, -1, -1);
  }

  sub_1D217EE2C();
  swift_allocError();
  *v80 = 5;
  swift_willThrow();

  sub_1D2176170(v60, &qword_1EC6D2100);
}

uint64_t sub_1D2180140()
{
  sub_1D225132C();
  sub_1D225134C();
  return sub_1D225137C();
}

uint64_t sub_1D21801D0()
{
  sub_1D225132C();
  sub_1D225134C();
  return sub_1D225137C();
}

uint64_t VUGallery.RecognitionPreset.hashValue.getter()
{
  v1 = *v0;
  sub_1D225132C();
  MEMORY[0x1D3898D70](v1);
  return sub_1D225137C();
}

uint64_t _s19VisualUnderstanding9VUGalleryC10UpdateModeO9hashValueSivg_0()
{
  v1 = *v0;
  sub_1D225132C();
  MEMORY[0x1D3898D70](v1);
  return sub_1D225137C();
}

uint64_t sub_1D2180314()
{
  v1 = *v0;
  sub_1D225132C();
  MEMORY[0x1D3898D70](v1);
  return sub_1D225137C();
}

uint64_t VUGallery.RecognitionResult.init(_:_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>, float a4@<S0>)
{
  *a3 = a1;
  v7 = type metadata accessor for VUGallery.RecognitionResult(0);
  result = sub_1D21A6938(a2, a3 + *(v7 + 20), &qword_1EC6D2110);
  *(a3 + *(v7 + 24)) = a4;
  return result;
}

unint64_t VUGallery.RecognitionResult.toMetadata()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2118);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D22526F0;
  *(inited + 32) = 0xD000000000000010;
  *(inited + 40) = 0x80000001D2256900;
  *(inited + 48) = sub_1D2250C1C();
  *(inited + 56) = 0x6E656469666E6F63;
  *(inited + 64) = 0xEA00000000006563;
  type metadata accessor for VUGallery.RecognitionResult(0);
  *(inited + 72) = sub_1D2250B8C();
  v1 = sub_1D21A26F8(inited, &qword_1EC6D25D0);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2120);
  swift_arrayDestroy();
  return v1;
}

Swift::String __swiftcall VUGallery.RecognitionResult.description()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2110);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = v15 - v3;
  v5 = type metadata accessor for VUGallery.RecognitionResult(0);
  sub_1D2174DA8(v1 + *(v5 + 20), v4, &qword_1EC6D2110);
  v6 = sub_1D225055C();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(v4, 1, v6) == 1)
  {
    sub_1D2176170(v4, &qword_1EC6D2110);
    v8 = 0xE300000000000000;
    v9 = 7104846;
  }

  else
  {
    v9 = sub_1D225051C();
    v8 = v10;
    (*(v7 + 8))(v4, v6);
  }

  v16 = 0;
  v17 = 0xE000000000000000;
  sub_1D225101C();
  MEMORY[0x1D3898450](0xD000000000000012, 0x80000001D2256920);
  v15[1] = *v1;
  v11 = sub_1D225125C();
  MEMORY[0x1D3898450](v11);

  MEMORY[0x1D3898450](0x93A6761740ALL, 0xE600000000000000);
  MEMORY[0x1D3898450](v9, v8);

  MEMORY[0x1D3898450](0x656469666E6F630ALL, 0xED0000093A65636ELL);
  sub_1D2250BBC();
  v12 = v16;
  v13 = v17;
  result._object = v13;
  result._countAndFlagsBits = v12;
  return result;
}

uint64_t sub_1D2180798(void *a1, uint64_t a2, unsigned __int8 *a3)
{
  v4 = v3;
  v8 = type metadata accessor for VUGallery.RecognitionResult(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v103 = (&v96 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2128);
  v111 = *(v11 - 8);
  v112 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v110 = &v96 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2110);
  v14 = MEMORY[0x1EEE9AC00](v13 - 8);
  v116 = &v96 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v117 = &v96 - v16;
  v119 = *a3;
  Current = CFAbsoluteTimeGetCurrent();
  objc_opt_self();
  v18 = swift_dynamicCastObjCClass();
  if (v18)
  {
    v19 = v18;
    v20 = a1;
    v21 = [v19 faceprint];
    v109 = v8;
    v118 = a2;
    if (v21 && (v22 = v21, v23 = [v21 descriptorData], v22, v23))
    {
      v24 = sub_1D225046C();
      v26 = v25;
    }

    else
    {
      v24 = 0;
      v26 = 0xF000000000000000;
    }

    v27 = [v19 torsoprint];
    v28 = v4;
    if (v27 && (v29 = v27, v30 = [v27 descriptorData], v29, v30))
    {
      v31 = sub_1D225046C();
      v33 = v32;
    }

    else
    {
      v31 = 0;
      v33 = 0xF000000000000000;
    }

    if (v26 >> 60 == 15 && v33 >> 60 == 15)
    {

      return 0;
    }

    v100 = v9;
    MEMORY[0x1EEE9AC00](v27);
    *(&v96 - 8) = v28;
    *(&v96 - 7) = v24;
    *(&v96 - 6) = v26;
    *(&v96 - 5) = v19;
    *(&v96 - 4) = v31;
    *(&v96 - 3) = v33;
    *(&v96 - 2) = v118;
    *(&v96 - 8) = v119;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2130);
    sub_1D2250D5C();
    sub_1D21A1F98(v24, v26);

    v45 = v31;
    v4 = v28;
    v44 = sub_1D21A1F98(v45, v33);
    v121 = aBlock[0];
    v8 = v109;
  }

  else
  {
    objc_opt_self();
    v34 = swift_dynamicCastObjCClass();
    if (!v34)
    {
      return 0;
    }

    v35 = v34;
    v36 = a1;
    v37 = [v35 animalprint];
    if (!v37 || (v38 = v37, v39 = [v37 descriptorData], v38, !v39))
    {

      return 0;
    }

    v100 = v9;
    v40 = sub_1D225046C();
    v42 = v41;

    MEMORY[0x1EEE9AC00](v43);
    *(&v96 - 6) = v4;
    *(&v96 - 5) = v40;
    *(&v96 - 4) = v42;
    *(&v96 - 3) = v35;
    *(&v96 - 16) = v119;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2130);
    sub_1D2250D5C();
    sub_1D21A1ED8(v40, v42);

    v121 = aBlock[0];
  }

  aBlock[6] = MEMORY[0x1E69E7CD0];
  MEMORY[0x1EEE9AC00](v44);
  *(&v96 - 2) = v4;
  *(&v96 - 1) = &v121;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2138);
  result = sub_1D2250D5C();
  v47 = aBlock[0];
  v48 = v121;
  v49 = *(aBlock[0] + 16);
  if (!v49)
  {
    v53 = MEMORY[0x1E69E7CC0];
    goto LABEL_41;
  }

  v118 = 0;
  v50 = 0;
  v104 = OBJC_IVAR____TtC19VisualUnderstanding9VUGallery_client;
  v51 = v121 + 40;
  v52 = aBlock[0] + 40;
  v97 = v49 - 1;
  v53 = MEMORY[0x1E69E7CC0];
  v109 = v8;
  v107 = v4;
  v106 = v121;
  v105 = aBlock[0];
  v108 = v49;
  v99 = v121 + 40;
  v98 = aBlock[0] + 40;
  do
  {
    v101 = v53;
    v54 = (v51 + 16 * v50);
    v55 = (v52 + 16 * v50);
    v56 = v50;
    while (1)
    {
      if (v56 >= *(v47 + 16))
      {
        __break(1u);
LABEL_54:
        __break(1u);
        return result;
      }

      v57 = *(v48 + 16);
      if (v56 == v57)
      {
LABEL_39:
        v8 = v109;
        v53 = v101;
        goto LABEL_41;
      }

      if (v56 >= v57)
      {
        goto LABEL_54;
      }

      if ((*v55 & 1) == 0)
      {
        v58 = *(v55 - 1);
        v59 = *v54;
        result = sub_1D2198024(aBlock, v58);
        if (result)
        {
          break;
        }
      }

LABEL_21:
      ++v56;
      v54 += 4;
      v55 += 16;
      if (v49 == v56)
      {
        goto LABEL_39;
      }
    }

    v60 = *(*(v4 + 16) + 16);
    v61 = *(v4 + v104);
    v62 = sub_1D225055C();
    v63 = *(v62 - 8);
    v64 = *(v63 + 56);
    v65 = v116;
    v114 = v62;
    v115 = v64;
    v66 = (v64)(v116, 1, 1);
    v113 = &v96;
    v67 = *(v60 + 16);
    MEMORY[0x1EEE9AC00](v66);
    v102 = v58;
    *(&v96 - 4) = v58;
    *(&v96 - 24) = 0;
    *(&v96 - 11) = v61;
    *(&v96 - 20) = 0;
    *(&v96 - 2) = v65;
    *(&v96 - 1) = v60;

    v68 = v67;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2140);
    v69 = v118;
    sub_1D2250DBC();
    v118 = v69;

    v70 = aBlock[0];
    sub_1D2176170(v65, &qword_1EC6D2110);
    if (*(v70 + 16))
    {
      v71 = v110;
      sub_1D2174DA8(v70 + ((*(v111 + 80) + 32) & ~*(v111 + 80)), v110, &qword_1EC6D2128);

      v72 = v71 + *(v112 + 64);
      v73 = v117;
      v74 = v114;
      (*(v63 + 32))(v117, v72, v114);
      v75 = 0;
    }

    else
    {

      v75 = 1;
      v73 = v117;
      v74 = v114;
    }

    v115(v73, v75, 1, v74);
    v49 = v108;
    if (v119 == 1 && (*(v63 + 48))(v73, 1, v74) == 1)
    {
      result = sub_1D2176170(v73, &qword_1EC6D2110);
      v4 = v107;
      v48 = v106;
      v47 = v105;
      goto LABEL_21;
    }

    v8 = v109;
    v76 = v103;
    sub_1D2174DA8(v73, v103 + *(v109 + 20), &qword_1EC6D2110);
    *v76 = v102;
    *(v76 + *(v8 + 24)) = v59;
    v53 = v101;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v48 = v106;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v53 = sub_1D2195C40(0, v53[2] + 1, 1, v53, &qword_1EC6D25C8, &unk_1D22534C8, type metadata accessor for VUGallery.RecognitionResult);
    }

    v79 = v53[2];
    v78 = v53[3];
    v4 = v107;
    v47 = v105;
    if (v79 >= v78 >> 1)
    {
      v53 = sub_1D2195C40(v78 > 1, v79 + 1, 1, v53, &qword_1EC6D25C8, &unk_1D22534C8, type metadata accessor for VUGallery.RecognitionResult);
    }

    v50 = v56 + 1;
    v53[2] = v79 + 1;
    sub_1D21A6320(v103, v53 + ((*(v100 + 80) + 32) & ~*(v100 + 80)) + *(v100 + 72) * v79, type metadata accessor for VUGallery.RecognitionResult);
    result = sub_1D2176170(v117, &qword_1EC6D2110);
    v49 = v108;
    v51 = v99;
    v52 = v98;
  }

  while (v97 != v56);
LABEL_41:

  v80 = (CFAbsoluteTimeGetCurrent() - Current) * 1000.0;
  if (v53[2])
  {

    v81 = sub_1D225080C();
    v82 = sub_1D2250CCC();

    if (os_log_type_enabled(v81, v82))
    {
      v83 = swift_slowAlloc();
      v84 = swift_slowAlloc();
      aBlock[0] = v84;
      *v83 = 136315394;
      v85 = MEMORY[0x1D3898540](v53, v8);
      v87 = sub_1D21761D0(v85, v86, aBlock);

      *(v83 + 4) = v87;
      *(v83 + 12) = 2048;
      *(v83 + 14) = v80;
      _os_log_impl(&dword_1D2171000, v81, v82, "Recognized entities: %s in %fms", v83, 0x16u);
      __swift_destroy_boxed_opaque_existential_0Tm(v84);
      MEMORY[0x1D3899640](v84, -1, -1);
      v88 = v83;
      goto LABEL_46;
    }
  }

  else
  {
    v81 = sub_1D225080C();
    v89 = sub_1D2250CCC();
    if (os_log_type_enabled(v81, v89))
    {
      v90 = swift_slowAlloc();
      *v90 = 134217984;
      *(v90 + 4) = v80;
      _os_log_impl(&dword_1D2171000, v81, v89, "No entities recognized, request took %fms", v90, 0xCu);
      v88 = v90;
LABEL_46:
      MEMORY[0x1D3899640](v88, -1, -1);
    }
  }

  v91 = sub_1D225092C();
  v92 = NSClassFromString(v91);

  if (v92)
  {
  }

  else
  {
    v93 = sub_1D225092C();
    v94 = swift_allocObject();
    *(v94 + 16) = v53;
    *(v94 + 24) = v80;
    aBlock[4] = sub_1D21A1F60;
    aBlock[5] = v94;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1D2182414;
    aBlock[3] = &block_descriptor;
    v95 = _Block_copy(aBlock);

    AnalyticsSendEventLazy();
    _Block_release(v95);
  }

  return v53;
}

uint64_t sub_1D218146C@<X0>(uint64_t a1@<X1>, unint64_t a2@<X2>, void *a3@<X3>, uint64_t a4@<X4>, unint64_t a5@<X5>, uint64_t a6@<X6>, int a7@<W7>, uint64_t *a8@<X8>)
{
  v29 = a7;
  v32 = a4;
  v33 = a5;
  v30 = a1;
  v31 = a2;
  v34 = a8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D30C0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v28[-v11];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2110);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v28[-v14];

  v16 = [a3 faceprint];
  v17 = v16;
  if (v16)
  {
    v18 = [v16 requestRevision];
  }

  else
  {
    v18 = 0;
  }

  v19 = [a3 torsoprint];
  v20 = v19;
  if (v19)
  {
    v21 = [v19 requestRevision];
  }

  else
  {
    v21 = 0;
  }

  sub_1D2174DA8(a6, v12, &qword_1EC6D30C0);
  v22 = type metadata accessor for VUGallery.Context(0);
  if ((*(*(v22 - 8) + 48))(v12, 1, v22) == 1)
  {
    sub_1D2176170(v12, &qword_1EC6D30C0);
    v23 = sub_1D225055C();
    (*(*(v23 - 8) + 56))(v15, 1, 1, v23);
  }

  else
  {
    sub_1D2174DA8(v12, v15, &qword_1EC6D2110);
    sub_1D21A63F0(v12, type metadata accessor for VUGallery.Context);
  }

  v24 = 3;
  v25 = 0x7FFFFFFFFFFFFFFFLL;
  if (v29 == 2)
  {
    v24 = 10;
  }

  else
  {
    v25 = 3;
  }

  v26 = sub_1D2213A4C(2uLL, v30, v31, v18, v17 == 0, v32, v33, v21, v20 == 0, v15, v24, v25, v29 != 2, v29 == 1);

  result = sub_1D2176170(v15, &qword_1EC6D2110);
  *v34 = v26;
  return result;
}

uint64_t sub_1D2181784@<X0>(uint64_t a1@<X1>, unint64_t a2@<X2>, void *a3@<X3>, char a4@<W4>, uint64_t *a5@<X8>)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2110);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = (&v22 - v11);

  v13 = [a3 animalprint];
  v14 = v13;
  if (v13)
  {
    v15 = [v13 requestRevision];
  }

  else
  {
    v15 = 0;
  }

  v16 = v14 == 0;
  v17 = sub_1D225055C();
  (*(*(v17 - 8) + 56))(v12, 1, 1, v17);
  v18 = 3;
  v19 = 0x7FFFFFFFFFFFFFFFLL;
  if (a4 == 2)
  {
    v18 = 10;
  }

  else
  {
    v19 = 3;
  }

  v20 = sub_1D2213A4C(0x3FuLL, a1, a2, v15, v16, 0, 0xF000000000000000, 0, 1, v12, v18, v19, a4 != 2, a4 == 1);

  result = sub_1D2176170(v12, &qword_1EC6D2110);
  *a5 = v20;
  return result;
}

uint64_t sub_1D218195C@<X0>(uint64_t *a1@<X1>, void *a2@<X8>)
{
  v2 = a2;
  v3 = *a1;
  v4 = *(*a1 + 16);
  if (v4)
  {
    v16 = MEMORY[0x1E69E7CC0];

    sub_1D21AF7AC(0, v4, 0);
    v5 = v16;
    v6 = *(v16 + 16);
    v7 = 32;
    do
    {
      v8 = *(v3 + v7);
      v15 = v5;
      v9 = *(v5 + 24);
      if (v6 >= v9 >> 1)
      {
        sub_1D21AF7AC((v9 > 1), v6 + 1, 1);
      }

      *(v5 + 16) = v6 + 1;
      *(v5 + 8 * v6 + 32) = v8;
      v7 += 16;
      ++v6;
      --v4;
    }

    while (v4);

    v2 = a2;
  }

  else
  {
  }

  MEMORY[0x1EEE9AC00](v10);
  v12 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2138);
  sub_1D2250DBC();

  *v2 = v15;
  return result;
}

void sub_1D2181B10(uint64_t a1)
{
  v1 = a1;
  v34 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v2 = sub_1D2250F4C();
  }

  else
  {
    v2 = *(a1 + 16);
  }

  if (v2)
  {
    v41 = MEMORY[0x1E69E7CC0];
    sub_1D21AF73C(0, v2 & ~(v2 >> 63), 0);
    v36 = v41;
    if (v34)
    {
      v3 = sub_1D2250EFC();
    }

    else
    {
      v3 = sub_1D2250EBC();
      v4 = *(v1 + 36);
    }

    v38 = v3;
    v39 = v4;
    v40 = v34 != 0;
    if ((v2 & 0x8000000000000000) == 0)
    {
      v5 = 0;
      v32 = v1 + 56;
      v31 = v1 + 64;
      v33 = v2;
      while (v5 < v2)
      {
        if (__OFADD__(v5++, 1))
        {
          goto LABEL_35;
        }

        v8 = v38;
        v9 = v40;
        v35 = v39;
        v10 = v1;
        sub_1D21A1C7C(v38, v39, v40, v1);
        v12 = v11;
        v13 = [v11 name];
        v14 = sub_1D225095C();
        v16 = v15;

        v17 = v36;
        v41 = v36;
        v19 = *(v36 + 16);
        v18 = *(v36 + 24);
        if (v19 >= v18 >> 1)
        {
          sub_1D21AF73C((v18 > 1), v19 + 1, 1);
          v17 = v41;
        }

        *(v17 + 16) = v19 + 1;
        v20 = v17 + 16 * v19;
        *(v20 + 32) = v14;
        *(v20 + 40) = v16;
        v36 = v17;
        if (v34)
        {
          if (!v9)
          {
            goto LABEL_40;
          }

          v1 = v10;
          if (sub_1D2250F1C())
          {
            swift_isUniquelyReferenced_nonNull_native();
          }

          v2 = v33;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2598);
          v6 = sub_1D2250BFC();
          sub_1D2250F8C();
          v6(v37, 0);
          if (v5 == v33)
          {
LABEL_32:
            sub_1D217B36C(v38, v39, v40);
            return;
          }
        }

        else
        {
          if (v9)
          {
            goto LABEL_41;
          }

          if ((v8 & 0x8000000000000000) != 0)
          {
            goto LABEL_36;
          }

          v1 = v10;
          v21 = 1 << *(v10 + 32);
          if (v8 >= v21)
          {
            goto LABEL_36;
          }

          v22 = v8 >> 6;
          v23 = *(v32 + 8 * (v8 >> 6));
          if (((v23 >> v8) & 1) == 0)
          {
            goto LABEL_37;
          }

          if (*(v10 + 36) != v35)
          {
            goto LABEL_38;
          }

          v24 = v23 & (-2 << (v8 & 0x3F));
          if (v24)
          {
            v21 = __clz(__rbit64(v24)) | v8 & 0x7FFFFFFFFFFFFFC0;
            v2 = v33;
          }

          else
          {
            v25 = v22 << 6;
            v26 = v22 + 1;
            v27 = (v31 + 8 * v22);
            v2 = v33;
            while (v26 < (v21 + 63) >> 6)
            {
              v29 = *v27++;
              v28 = v29;
              v25 += 64;
              ++v26;
              if (v29)
              {
                sub_1D217B36C(v8, v35, 0);
                v21 = __clz(__rbit64(v28)) + v25;
                goto LABEL_31;
              }
            }

            sub_1D217B36C(v8, v35, 0);
          }

LABEL_31:
          v30 = *(v10 + 36);
          v38 = v21;
          v39 = v30;
          v40 = 0;
          if (v5 == v2)
          {
            goto LABEL_32;
          }
        }
      }

      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
    }

    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
  }
}

uint64_t sub_1D2181E78(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (!v1)
  {
    return v2;
  }

  v25 = MEMORY[0x1E69E7CC0];
  v24 = *(a1 + 16);
  sub_1D21AF7AC(0, v1, 0);
  v2 = v25;
  v4 = a1 + 64;
  result = sub_1D2250EBC();
  v6 = v24;
  v7 = 0;
  while ((result & 0x8000000000000000) == 0 && result < 1 << *(a1 + 32))
  {
    v9 = result >> 6;
    v10 = 1 << result;
    if ((*(v4 + 8 * (result >> 6)) & (1 << result)) == 0)
    {
      goto LABEL_21;
    }

    v11 = *(*(a1 + 48) + 8 * result);
    v12 = *(a1 + 36);
    v14 = *(v25 + 16);
    v13 = *(v25 + 24);
    if (v14 >= v13 >> 1)
    {
      v22 = *(a1 + 36);
      v23 = result;
      sub_1D21AF7AC((v13 > 1), v14 + 1, 1);
      v6 = v24;
      v12 = v22;
      result = v23;
    }

    *(v25 + 16) = v14 + 1;
    *(v25 + 8 * v14 + 32) = v11;
    v8 = 1 << *(a1 + 32);
    if (result >= v8)
    {
      goto LABEL_22;
    }

    v15 = *(v4 + 8 * v9);
    if ((v15 & v10) == 0)
    {
      goto LABEL_23;
    }

    if (v12 != *(a1 + 36))
    {
      goto LABEL_24;
    }

    v16 = v15 & (-2 << (result & 0x3F));
    if (v16)
    {
      v8 = __clz(__rbit64(v16)) | result & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v17 = v9 << 6;
      v18 = v9 + 1;
      v19 = (a1 + 72 + 8 * v9);
      while (v18 < (v8 + 63) >> 6)
      {
        v21 = *v19++;
        v20 = v21;
        v17 += 64;
        ++v18;
        if (v21)
        {
          sub_1D217B36C(result, v12, 0);
          v6 = v24;
          v8 = __clz(__rbit64(v20)) + v17;
          goto LABEL_4;
        }
      }

      sub_1D217B36C(result, v12, 0);
      v6 = v24;
    }

LABEL_4:
    ++v7;
    result = v8;
    if (v7 == v6)
    {
      return v2;
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
  return result;
}

uint64_t sub_1D2182094(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = MEMORY[0x1E69E7CC0];
  if (!v2)
  {
    return v3;
  }

  v4 = a1;
  v29 = MEMORY[0x1E69E7CC0];
  sub_1D21AFB0C(0, v2, 0);
  v3 = v29;
  v26 = v4 + 64;
  v5 = sub_1D2250EBC();
  v6 = 0;
  v23 = v4 + 72;
  v24 = v2;
  while ((v5 & 0x8000000000000000) == 0 && v5 < 1 << *(v4 + 32))
  {
    v9 = v5 >> 6;
    if ((*(v26 + 8 * (v5 >> 6)) & (1 << v5)) == 0)
    {
      goto LABEL_22;
    }

    v25 = v6;
    v10 = *(v4 + 36);
    v11 = v4;
    v27 = *(*(v4 + 56) + 8 * v5);

    sub_1D2190CB4(&v27, &v28);
    if (v1)
    {
      goto LABEL_26;
    }

    v12 = v28;
    v29 = v3;
    v14 = *(v3 + 16);
    v13 = *(v3 + 24);
    if (v14 >= v13 >> 1)
    {
      sub_1D21AFB0C((v13 > 1), v14 + 1, 1);
      v3 = v29;
    }

    *(v3 + 16) = v14 + 1;
    *(v3 + 8 * v14 + 32) = v12;
    v7 = 1 << *(v11 + 32);
    if (v5 >= v7)
    {
      goto LABEL_23;
    }

    v15 = *(v26 + 8 * v9);
    if ((v15 & (1 << v5)) == 0)
    {
      goto LABEL_24;
    }

    v4 = v11;
    if (v10 != *(v11 + 36))
    {
      goto LABEL_25;
    }

    v16 = v15 & (-2 << (v5 & 0x3F));
    if (v16)
    {
      v7 = __clz(__rbit64(v16)) | v5 & 0x7FFFFFFFFFFFFFC0;
      v8 = v24;
    }

    else
    {
      v17 = v9 << 6;
      v18 = v9 + 1;
      v8 = v24;
      v19 = (v23 + 8 * v9);
      while (v18 < (v7 + 63) >> 6)
      {
        v21 = *v19++;
        v20 = v21;
        v17 += 64;
        ++v18;
        if (v21)
        {
          sub_1D217B36C(v5, v10, 0);
          v7 = __clz(__rbit64(v20)) + v17;
          goto LABEL_4;
        }
      }

      sub_1D217B36C(v5, v10, 0);
    }

LABEL_4:
    v1 = 0;
    v6 = v25 + 1;
    v5 = v7;
    if (v25 + 1 == v8)
    {
      return v3;
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
LABEL_26:

  __break(1u);
  return result;
}

unint64_t sub_1D21822F8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2408);
  inited = swift_initStackObject();
  strcpy((inited + 32), "recognize_hit");
  *(inited + 16) = xmmword_1D22526F0;
  *(inited + 46) = -4864;
  *(inited + 48) = sub_1D2250B5C();
  *(inited + 56) = 0xD000000000000012;
  *(inited + 64) = 0x80000001D2257590;
  *(inited + 72) = sub_1D2250B6C();
  v1 = sub_1D21A26F8(inited, &qword_1EC6D2418);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2410);
  swift_arrayDestroy();
  return v1;
}

id sub_1D2182414(uint64_t a1)
{
  v1 = *(a1 + 32);

  v3 = v1(v2);

  if (v3)
  {
    sub_1D2174E10(0, &qword_1EDC87280);
    v4 = sub_1D225088C();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

uint64_t sub_1D2182510@<X0>(uint64_t *a1@<X8>)
{

  v2 = sub_1D2219F2C(0, 0, 1);

  *a1 = v2;
  return result;
}

void sub_1D21825D0(uint64_t *a1@<X8>)
{
  sub_1D2174E10(0, &unk_1EDC886D0);

  v2 = sub_1D2250C5C();
  v3 = sub_1D2219F2C(v2, 0, 1);

  *a1 = v3;
}

void sub_1D21826E0(uint64_t *a1@<X8>)
{
  sub_1D2174E10(0, &unk_1EDC886D0);

  v2 = sub_1D2250C5C();
  v3 = sub_1D2219F2C(v2, 0, 1);

  *a1 = v3;
}

void sub_1D2182858(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  sub_1D2174E10(0, &unk_1EDC886D0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2400);
  v4 = swift_allocObject();
  v5 = MEMORY[0x1E69E6530];
  *(v4 + 16) = xmmword_1D22526E0;
  v6 = MEMORY[0x1E69E65A8];
  *(v4 + 56) = v5;
  *(v4 + 64) = v6;
  *(v4 + 32) = a1;

  v7 = sub_1D2250C5C();
  v8 = sub_1D2219F2C(v7, 0, 1);

  *a2 = v8;
}

uint64_t sub_1D2182A14@<X0>(uint64_t *a1@<X8>)
{

  v2 = sub_1D221AA88(0);

  *a1 = v2;
  return result;
}

uint64_t sub_1D2182AF4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(*(a1 + 16) + 16);
  v12 = MEMORY[0x1E69E7CC8];
  v4 = *(v3 + 16);
  v5 = swift_allocObject();
  v5[2] = 0;
  v5[3] = v3;
  v5[4] = &v12;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_1D21A749C;
  *(v6 + 24) = v5;
  aBlock[4] = sub_1D21A732C;
  aBlock[5] = v6;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D2179EE8;
  aBlock[3] = &block_descriptor_453;
  v7 = _Block_copy(aBlock);
  swift_retain_n();
  v8 = v4;

  [v8 performBlockAndWait_];

  _Block_release(v7);
  LOBYTE(v7) = swift_isEscapingClosureAtFileLocation();

  if (v7)
  {
    __break(1u);
  }

  else
  {
    v10 = v12;

    *a2 = v10;
  }

  return result;
}

uint64_t sub_1D2182CFC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(*(a1 + 16) + 16);
  sub_1D2174E10(0, &unk_1EDC886D0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2400);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1D22526E0;
  v5 = MEMORY[0x1E69E65A8];
  *(v4 + 56) = MEMORY[0x1E69E6530];
  *(v4 + 64) = v5;
  *(v4 + 32) = 2;

  v6 = sub_1D2250C5C();
  v17 = MEMORY[0x1E69E7CC8];
  v7 = *(v3 + 16);
  v8 = swift_allocObject();
  v8[2] = v6;
  v8[3] = v3;
  v8[4] = &v17;
  v9 = swift_allocObject();
  *(v9 + 16) = sub_1D21A749C;
  *(v9 + 24) = v8;
  v16[4] = sub_1D21A732C;
  v16[5] = v9;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 1107296256;
  v16[2] = sub_1D2179EE8;
  v16[3] = &block_descriptor_442;
  v10 = _Block_copy(v16);

  v11 = v7;
  v12 = v6;

  [v11 performBlockAndWait_];

  _Block_release(v10);
  LOBYTE(v10) = swift_isEscapingClosureAtFileLocation();

  if (v10)
  {
    __break(1u);
  }

  else
  {
    v14 = v17;

    v15 = *(v14 + 16);

    *a2 = v15;
  }

  return result;
}

uint64_t sub_1D2182FB4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(*(a1 + 16) + 16);
  sub_1D2174E10(0, &unk_1EDC886D0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2400);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1D22526E0;
  v5 = MEMORY[0x1E69E65A8];
  *(v4 + 56) = MEMORY[0x1E69E6530];
  *(v4 + 64) = v5;
  *(v4 + 32) = 63;

  v6 = sub_1D2250C5C();
  v17 = MEMORY[0x1E69E7CC8];
  v7 = *(v3 + 16);
  v8 = swift_allocObject();
  v8[2] = v6;
  v8[3] = v3;
  v8[4] = &v17;
  v9 = swift_allocObject();
  *(v9 + 16) = sub_1D21A749C;
  *(v9 + 24) = v8;
  v16[4] = sub_1D21A732C;
  v16[5] = v9;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 1107296256;
  v16[2] = sub_1D2179EE8;
  v16[3] = &block_descriptor_431;
  v10 = _Block_copy(v16);

  v11 = v7;
  v12 = v6;

  [v11 performBlockAndWait_];

  _Block_release(v10);
  LOBYTE(v10) = swift_isEscapingClosureAtFileLocation();

  if (v10)
  {
    __break(1u);
  }

  else
  {
    v14 = v17;

    v15 = *(v14 + 16);

    *a2 = v15;
  }

  return result;
}

uint64_t sub_1D218320C(char a1)
{
  v38 = type metadata accessor for VUGallery.TagView(0);
  v34 = *(v38 - 8);
  v3 = MEMORY[0x1EEE9AC00](v38);
  v5 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1EEE9AC00](v3);
  v8 = &v33 - v7;
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = &v33 - v10;
  if (a1)
  {
    if (a1 == 1)
    {
      return MEMORY[0x1E69E7CC0];
    }

    v12 = 1;
  }

  else
  {
    v12 = 0;
  }

  MEMORY[0x1EEE9AC00](v9);
  *(&v33 - 2) = v1;
  *(&v33 - 4) = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D21B8);
  result = sub_1D2250D5C();
  v15 = v39;
  v16 = MEMORY[0x1E69E7CC0];
  v37 = *(v39 + 16);
  if (!v37)
  {
    v18 = v34;
LABEL_17:

    v25 = *(v16 + 16);
    if (v25)
    {
      v39 = MEMORY[0x1E69E7CC0];
      v26 = v18;
      sub_1D21AF7AC(0, v25, 0);
      v27 = v39;
      v28 = v16 + ((*(v26 + 80) + 32) & ~*(v26 + 80));
      v29 = *(v26 + 72);
      do
      {
        sub_1D21A6388(v28, v5, type metadata accessor for VUGallery.TagView);
        v30 = *&v5[*(v38 + 28)];
        sub_1D21A63F0(v5, type metadata accessor for VUGallery.TagView);
        v39 = v27;
        v32 = *(v27 + 16);
        v31 = *(v27 + 24);
        if (v32 >= v31 >> 1)
        {
          sub_1D21AF7AC((v31 > 1), v32 + 1, 1);
          v27 = v39;
        }

        *(v27 + 16) = v32 + 1;
        *(v27 + 8 * v32 + 32) = v30;
        v28 += v29;
        --v25;
      }

      while (v25);

      return v27;
    }

    return MEMORY[0x1E69E7CC0];
  }

  v17 = 0;
  v18 = v34;
  v36 = v8;
  v35 = v12;
  while (v17 < *(v15 + 16))
  {
    v19 = (*(v18 + 80) + 32) & ~*(v18 + 80);
    v20 = *(v18 + 72);
    sub_1D21A6388(v15 + v19 + v20 * v17, v11, type metadata accessor for VUGallery.TagView);
    if (v12 == v11[*(v38 + 24)])
    {
      result = sub_1D21A63F0(v11, type metadata accessor for VUGallery.TagView);
    }

    else
    {
      sub_1D21A6320(v11, v8, type metadata accessor for VUGallery.TagView);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v39 = v16;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1D21AF7CC(0, *(v16 + 16) + 1, 1);
        v18 = v34;
        v16 = v39;
      }

      v23 = *(v16 + 16);
      v22 = *(v16 + 24);
      if (v23 >= v22 >> 1)
      {
        sub_1D21AF7CC(v22 > 1, v23 + 1, 1);
        v18 = v34;
        v16 = v39;
      }

      *(v16 + 16) = v23 + 1;
      v24 = v16 + v19 + v23 * v20;
      v8 = v36;
      result = sub_1D21A6320(v36, v24, type metadata accessor for VUGallery.TagView);
      v12 = v35;
    }

    if (v37 == ++v17)
    {
      goto LABEL_17;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D2183614(char a1)
{
  v35 = type metadata accessor for VUGallery.TagView(0);
  v31 = *(v35 - 8);
  v2 = MEMORY[0x1EEE9AC00](v35);
  v4 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x1EEE9AC00](v2);
  v7 = &v30 - v6;
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v30 - v8;
  if (a1)
  {
    if (a1 == 1)
    {
      return MEMORY[0x1E69E7CC0];
    }

    v10 = 1;
  }

  else
  {
    v10 = 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D21B8);
  result = sub_1D2250D5C();
  v12 = v36;
  v13 = MEMORY[0x1E69E7CC0];
  v34 = *(v36 + 16);
  if (!v34)
  {
    v15 = v31;
LABEL_17:

    v22 = *(v13 + 16);
    if (v22)
    {
      v36 = MEMORY[0x1E69E7CC0];
      v23 = v15;
      sub_1D21AF7AC(0, v22, 0);
      v24 = v36;
      v25 = v13 + ((*(v23 + 80) + 32) & ~*(v23 + 80));
      v26 = *(v23 + 72);
      do
      {
        sub_1D21A6388(v25, v4, type metadata accessor for VUGallery.TagView);
        v27 = *&v4[*(v35 + 28)];
        sub_1D21A63F0(v4, type metadata accessor for VUGallery.TagView);
        v36 = v24;
        v29 = *(v24 + 16);
        v28 = *(v24 + 24);
        if (v29 >= v28 >> 1)
        {
          sub_1D21AF7AC((v28 > 1), v29 + 1, 1);
          v24 = v36;
        }

        *(v24 + 16) = v29 + 1;
        *(v24 + 8 * v29 + 32) = v27;
        v25 += v26;
        --v22;
      }

      while (v22);

      return v24;
    }

    return MEMORY[0x1E69E7CC0];
  }

  v14 = 0;
  v15 = v31;
  v33 = v7;
  v32 = v10;
  while (v14 < *(v12 + 16))
  {
    v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    v17 = *(v15 + 72);
    sub_1D21A6388(v12 + v16 + v17 * v14, v9, type metadata accessor for VUGallery.TagView);
    if (v10 == v9[*(v35 + 24)])
    {
      result = sub_1D21A63F0(v9, type metadata accessor for VUGallery.TagView);
    }

    else
    {
      sub_1D21A6320(v9, v7, type metadata accessor for VUGallery.TagView);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v36 = v13;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1D21AF7CC(0, *(v13 + 16) + 1, 1);
        v15 = v31;
        v13 = v36;
      }

      v20 = *(v13 + 16);
      v19 = *(v13 + 24);
      if (v20 >= v19 >> 1)
      {
        sub_1D21AF7CC(v19 > 1, v20 + 1, 1);
        v15 = v31;
        v13 = v36;
      }

      *(v13 + 16) = v20 + 1;
      v21 = v13 + v16 + v20 * v17;
      v7 = v33;
      result = sub_1D21A6320(v33, v21, type metadata accessor for VUGallery.TagView);
      v10 = v32;
    }

    if (v34 == ++v14)
    {
      goto LABEL_17;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D21839E4(char *a1, void (*a2)(uint64_t), uint64_t a3)
{
  v5 = v4;
  v6 = v3;
  v36[1] = a3;
  v37 = a2;
  v8 = sub_1D225085C();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *a1;
  type metadata accessor for VUGalleryTransaction();
  v13 = swift_allocObject();
  *(v13 + 32) = 0;
  *(v13 + 40) = 0;
  *(v13 + 24) = 0;
  sub_1D225081C();
  *(v13 + 16) = v12;
  *(v13 + 24) = v6;

  v14 = sub_1D225080C();
  v15 = sub_1D2250CCC();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v36[0] = v11;
    v17 = v9;
    v18 = v8;
    v19 = v16;
    *v16 = 0;
    _os_log_impl(&dword_1D2171000, v14, v15, "Starting gallery transaction", v16, 2u);
    v20 = v19;
    v8 = v18;
    v9 = v17;
    v5 = v4;
    v11 = v36[0];
    MEMORY[0x1D3899640](v20, -1, -1);
  }

  v37(v13);
  if (v5)
  {
    sub_1D225084C();
    sub_1D2250D4C();
    (*(v9 + 8))(v11, v8);
    v24 = v5;
    v25 = sub_1D225080C();
    v26 = sub_1D2250CDC();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      *v27 = 138412290;
      v29 = v5;
      v30 = _swift_stdlib_bridgeErrorToNSError();
      *(v27 + 4) = v30;
      *v28 = v30;
      _os_log_impl(&dword_1D2171000, v25, v26, "%@", v27, 0xCu);
      sub_1D2176170(v28, &qword_1EC6D2150);
      MEMORY[0x1D3899640](v28, -1, -1);
      MEMORY[0x1D3899640](v27, -1, -1);
    }

    swift_willThrow();
  }

  else
  {
    v37 = v9;
    v21 = sub_1D225080C();
    v22 = sub_1D2250CCC();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_1D2171000, v21, v22, "Flushing gallery transaction", v23, 2u);
      MEMORY[0x1D3899640](v23, -1, -1);
    }

    sub_1D224C3D8();

    v32 = sub_1D225080C();
    v33 = sub_1D2250CBC();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 134218240;
      v35 = *(v13 + 40);
      *(v34 + 4) = *(v13 + 32);
      *(v34 + 12) = 2048;
      *(v34 + 14) = v35;

      _os_log_impl(&dword_1D2171000, v32, v33, "Transaction succeeded, added %ld observations and removed %ld", v34, 0x16u);
      MEMORY[0x1D3899640](v34, -1, -1);
    }

    else
    {
    }
  }

  *(v13 + 24) = 0;
}

uint64_t sub_1D2183F18(NSObject *a1, NSObject *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2100);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v9[-v5];
  v7 = sub_1D22503FC();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  v10 = 0;
  v9[12] = 1;
  sub_1D2184650(&unk_1F4DADAE8, v6, &v10, 0, 0x100000000, a1, a2);
  return sub_1D2176170(v6, &qword_1EC6D2100);
}

uint64_t sub_1D2184044(int a1, NSObject *a2, NSObject *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2100);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = (&v11 - v7);
  v9 = sub_1D22503FC();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  v13 = 0;
  v12 = 1;
  sub_1D2184650(&unk_1F4DADAE8, v8, &v13, a1, 0x100000000, a2, a3);
  return sub_1D2176170(v8, &qword_1EC6D2100);
}

uint64_t sub_1D2184178(char *a1, int a2, NSObject *a3, NSObject *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2100);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v15[-v9];
  v11 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2158);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D22526E0;
  *(inited + 32) = v11;
  v13 = sub_1D22503FC();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v16 = 0;
  v15[4] = 1;
  sub_1D2184650(inited, v10, &v16, a2, 0x100000000, a3, a4);
  sub_1D2176170(v10, &qword_1EC6D2100);
  return swift_setDeallocating();
}

uint64_t sub_1D21842E4(char *a1, NSObject *a2, NSObject *a3, float a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2100);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v15[-v9];
  v11 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2158);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D22526E0;
  *(inited + 32) = v11;
  v13 = sub_1D22503FC();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v16 = 0;
  v15[60] = 0;
  sub_1D2184650(inited, v10, &v16, 1, LODWORD(a4), a2, a3);
  sub_1D2176170(v10, &qword_1EC6D2100);
  return swift_setDeallocating();
}

uint64_t sub_1D2184458(char *a1, NSObject *a2, unint64_t a3, unsigned __int8 *a4, int a5, NSObject *a6, NSObject *a7)
{
  v12 = *a1;
  v13 = *a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2158);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D22526E0;
  *(inited + 32) = v12;
  v16 = v13;
  sub_1D2184650(inited, a2, &v16, a5, a3 | ((HIDWORD(a3) & 1) << 32), a6, a7);
  return swift_setDeallocating();
}

uint64_t sub_1D2184520(uint64_t a1, int a2, NSObject *a3, NSObject *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2100);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v13[-v9];
  v11 = sub_1D22503FC();
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  v14 = 0;
  v13[12] = 1;
  sub_1D2184650(a1, v10, &v14, a2, 0x100000000, a3, a4);
  return sub_1D2176170(v10, &qword_1EC6D2100);
}

uint64_t sub_1D2184650(uint64_t a1, NSObject *a2, unsigned __int8 *a3, int a4, uint64_t a5, NSObject *a6, NSObject *a7)
{
  v87 = a7;
  v86 = a6;
  v84 = a5;
  v90 = a4;
  v82 = a2;
  v11 = sub_1D225085C();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v85 = &v72 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = sub_1D225077C();
  v80 = *(v81 - 8);
  v14 = MEMORY[0x1EEE9AC00](v81);
  v78 = &v72 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v79 = &v72 - v16;
  v89 = *a3;

  v17 = sub_1D225080C();
  v18 = sub_1D2250CEC();

  v19 = os_log_type_enabled(v17, v18);
  v94 = v7;
  v88 = v8;
  v83 = a1;
  if (v19)
  {
    v75 = v18;
    v77 = v11;
    v20 = swift_slowAlloc();
    v74 = swift_slowAlloc();
    aBlock[0] = v74;
    v76 = v20;
    *v20 = 136315906;
    v21 = *(a1 + 16);
    v22 = MEMORY[0x1E69E7CC0];
    if (v21)
    {
      v72 = v17;
      v73 = v12;
      v93 = MEMORY[0x1E69E7CC0];
      sub_1D21AF73C(0, v21, 0);
      v22 = v93;
      v23 = (a1 + 32);
      do
      {
        v24 = *v23++;
        v91 = v24;
        v25 = sub_1D22509AC();
        v27 = v26;
        v93 = v22;
        v29 = *(v22 + 16);
        v28 = *(v22 + 24);
        if (v29 >= v28 >> 1)
        {
          sub_1D21AF73C((v28 > 1), v29 + 1, 1);
          v22 = v93;
        }

        *(v22 + 16) = v29 + 1;
        v30 = v22 + 16 * v29;
        *(v30 + 32) = v25;
        *(v30 + 40) = v27;
        --v21;
      }

      while (v21);
      v12 = v73;
      v17 = v72;
    }

    v31 = MEMORY[0x1D3898540](v22, MEMORY[0x1E69E6158]);
    v33 = v32;

    v34 = sub_1D21761D0(v31, v33, aBlock);

    v35 = v76;
    *(v76 + 1) = v34;
    *(v35 + 6) = 2080;
    if (v90)
    {
      v36 = 0x20646563726F66;
    }

    else
    {
      v36 = 0;
    }

    if (v90)
    {
      v37 = 0xE700000000000000;
    }

    else
    {
      v37 = 0xE000000000000000;
    }

    v38 = sub_1D21761D0(v36, v37, aBlock);

    *(v35 + 14) = v38;
    *(v35 + 11) = 2080;
    LOBYTE(v93) = v89;
    v39 = sub_1D22509AC();
    v41 = sub_1D21761D0(v39, v40, aBlock);

    *(v35 + 3) = v41;
    *(v35 + 16) = 2080;
    v42 = qos_class_self();
    v43 = qos_class_t.description.getter(v42);
    v45 = sub_1D21761D0(v43, v44, aBlock);

    *(v35 + 34) = v45;
    _os_log_impl(&dword_1D2171000, v17, v75, "Updating the gallery for types %s with %s%s mode running with %s QoS", v35, 0x2Au);
    v46 = v74;
    swift_arrayDestroy();
    MEMORY[0x1D3899640](v46, -1, -1);
    MEMORY[0x1D3899640](v35, -1, -1);

    v11 = v77;
  }

  else
  {
  }

  v47 = v79;
  sub_1D225076C();
  v48 = sub_1D225078C();
  v49 = sub_1D2250DAC();
  if (sub_1D2250E4C())
  {
    v50 = v12;
    v51 = swift_slowAlloc();
    *v51 = 0;
    v52 = sub_1D225075C();
    _os_signpost_emit_with_name_impl(&dword_1D2171000, v48, v49, v52, "update", "", v51, 2u);
    v53 = v51;
    v12 = v50;
    MEMORY[0x1D3899640](v53, -1, -1);
  }

  v54 = v80;
  v55 = v81;
  (*(v80 + 16))(v78, v47, v81);
  sub_1D22507EC();
  swift_allocObject();
  sub_1D22507DC();
  (*(v54 + 8))(v47, v55);
  CFAbsoluteTimeGetCurrent();
  v93 = 0;
  Current = CFAbsoluteTimeGetCurrent();
  v57 = clock();
  v58 = v94;
  v59 = v85;
  v60 = sub_1D225084C();
  MEMORY[0x1EEE9AC00](v60);
  *(&v72 - 10) = &v93;
  *(&v72 - 9) = v82;
  *(&v72 - 8) = v58;
  *(&v72 - 7) = v83;
  LOBYTE((&v72)[-6]) = v89;
  BYTE1((&v72)[-6]) = v90 & 1;
  v61 = BYTE4(v84);
  HIDWORD((&v72)[-6]) = v84;
  LOBYTE((&v72)[-5]) = v61 & 1;
  *&(&v72)[-4] = Current;
  v62 = v86;
  *(&v72 - 3) = v57;
  *(&v72 - 2) = v62;
  *(&v72 - 1) = v87;
  v63 = v88;
  sub_1D2250D4C();
  if (v63)
  {
    (*(v12 + 8))(v59, v11);
  }

  else
  {
    (*(v12 + 8))(v59, v11);
    v64 = sub_1D225092C();
    v65 = NSClassFromString(v64);

    if (!v65)
    {
      CFAbsoluteTimeGetCurrent();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2118);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1D2252700;
      strcpy((inited + 32), "update_timing");
      *(inited + 46) = -4864;
      *(inited + 48) = sub_1D2250B6C();
      *(inited + 56) = 0xD00000000000001DLL;
      *(inited + 64) = 0x80000001D22574F0;
      *(inited + 72) = sub_1D2250B6C();
      *(inited + 80) = 0xD000000000000010;
      *(inited + 88) = 0x80000001D2257510;
      *(inited + 96) = sub_1D2250C1C();
      v67 = sub_1D21A26F8(inited, &qword_1EC6D25D0);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2120);
      swift_arrayDestroy();
      v68 = sub_1D225092C();
      v69 = swift_allocObject();
      *(v69 + 16) = v67;
      aBlock[4] = sub_1D21A6D34;
      aBlock[5] = v69;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1D2182414;
      aBlock[3] = &block_descriptor_411;
      v70 = _Block_copy(aBlock);

      AnalyticsSendEventLazy();
      _Block_release(v70);
    }
  }

  sub_1D2185068();
}

uint64_t qos_class_t.description.getter(int a1)
{
  if (a1 > 20)
  {
    if (a1 == 21)
    {
      return 0x746C7561666564;
    }

    if (a1 != 25)
    {
      if (a1 == 33)
      {
        return 0xD000000000000010;
      }

      return 0x6E776F6E6B6E75;
    }

    return 0x696E692072657375;
  }

  else
  {
    if (!a1)
    {
      return 0x6669636570736E75;
    }

    if (a1 != 9)
    {
      if (a1 == 17)
      {
        return 0x7974696C697475;
      }

      return 0x6E776F6E6B6E75;
    }

    return 0x756F72676B636162;
  }
}

uint64_t sub_1D2185068()
{
  v0 = sub_1D22507BC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1D225077C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1D225078C();
  sub_1D22507CC();
  v9 = sub_1D2250D9C();
  if (sub_1D2250E4C())
  {

    sub_1D22507FC();

    if ((*(v1 + 88))(v3, v0) == *MEMORY[0x1E69E93E8])
    {
      v10 = "[Error] Interval already ended";
    }

    else
    {
      (*(v1 + 8))(v3, v0);
      v10 = "";
    }

    v11 = swift_slowAlloc();
    *v11 = 0;
    v12 = sub_1D225075C();
    _os_signpost_emit_with_name_impl(&dword_1D2171000, v8, v9, v12, "update", v10, v11, 2u);
    MEMORY[0x1D3899640](v11, -1, -1);
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_1D21852BC(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, char a6, unint64_t a7, uint64_t a8, double a9, uint64_t a10, uint64_t a11)
{
  v12 = v11;
  v19 = sub_1D22503FC();
  v41 = a2;
  v20 = (*(*(v19 - 8) + 48))(a2, 1, v19);
  v21 = 0;
  if (v20 == 1)
  {

    v21 = sub_1D221FA28(256);
  }

  *a1 = v21;
  v22 = swift_allocObject();
  *(v22 + 16) = CFAbsoluteTimeGetCurrent() + -2.0;
  v23 = swift_allocObject();
  v24 = v23;
  *(v23 + 16) = 1;
  v37 = (v23 + 16);
  v25 = *(a4 + 16);
  if (v25)
  {
    v35 = v23;
    v36 = a6;
    v42 = MEMORY[0x1E69E7CC0];

    sub_1D21AF964(0, v25, 0);
    v26 = v42;
    v27 = (a4 + 32);
    v28 = *(v42 + 16);
    do
    {
      v30 = *v27++;
      v29 = v30;
      v31 = *(v42 + 24);
      if (v28 >= v31 >> 1)
      {
        sub_1D21AF964((v31 > 1), v28 + 1, 1);
      }

      *(v42 + 16) = v28 + 1;
      *(v42 + v28++ + 32) = 0x63F0200u >> (8 * v29);
      --v25;
    }

    while (v25);
    v12 = v11;
    a6 = v36;
    v24 = v35;
  }

  else
  {

    v26 = MEMORY[0x1E69E7CC0];
  }

  v32 = swift_allocObject();
  *(v32 + 16) = v22;
  *(v32 + 24) = 0x4000000000000000;
  *(v32 + 32) = a9;
  *(v32 + 40) = a8;
  *(v32 + 48) = a3;
  *(v32 + 56) = v24;
  *(v32 + 64) = a10;
  *(v32 + 72) = a11;

  sub_1D21A6D54(a10);
  sub_1D2214A88(v26, v41, a5 & 1, a6 & 1, a7 | ((HIDWORD(a7) & 1) << 32), sub_1D21A6D3C, v32);
  if (v12)
  {
  }

  else
  {

    swift_beginAccess();
    if ((*v37 & 1) == 0)
    {
      sub_1D217EE2C();
      swift_allocError();
      *v33 = 10;
      swift_willThrow();
    }
  }
}

uint64_t sub_1D218562C(uint64_t a1, uint64_t a2, float a3, double a4, double a5, uint64_t a6, uint64_t a7, uint64_t (*a8)(uint64_t *))
{
  Current = CFAbsoluteTimeGetCurrent();
  swift_beginAccess();
  if (Current - *(a1 + 16) < a4)
  {
LABEL_13:
    swift_beginAccess();
    return *(a7 + 16);
  }

  swift_beginAccess();
  *(a1 + 16) = Current;
  v16 = clock();
  v17 = sub_1D225080C();
  v18 = sub_1D2250CCC();
  if (!os_log_type_enabled(v17, v18))
  {
LABEL_7:

    if (a8)
    {
      LODWORD(v37[0]) = fminf(a3, 1.0);
      v32 = a8(v37);
      swift_beginAccess();
      *(a7 + 16) = v32 & 1;
      if ((v32 & 1) == 0)
      {
        v33 = sub_1D225080C();
        v34 = sub_1D2250CEC();
        if (os_log_type_enabled(v33, v34))
        {
          v35 = swift_slowAlloc();
          *v35 = 0;
          _os_log_impl(&dword_1D2171000, v33, v34, "Update was cancelled!", v35, 2u);
          MEMORY[0x1D3899640](v35, -1, -1);
        }
      }
    }

    else
    {
      swift_beginAccess();
      *(a7 + 16) = 1;
    }

    goto LABEL_13;
  }

  v19 = swift_slowAlloc();
  result = swift_slowAlloc();
  v37[0] = result;
  *v19 = 134218498;
  v21 = a3 * 100.0;
  if (COERCE_INT(fabs(a3 * 100.0)) > 2139095039)
  {
    __break(1u);
    goto LABEL_15;
  }

  if (v21 <= -9.2234e18)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v21 < 9.2234e18)
  {
    *(v19 + 4) = v21;
    *(v19 + 12) = 2080;
    v36 = result;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2400);
    v22 = swift_allocObject();
    v23 = MEMORY[0x1E69E63B0];
    *(v22 + 16) = xmmword_1D22526E0;
    v24 = MEMORY[0x1E69E6438];
    *(v22 + 56) = v23;
    *(v22 + 64) = v24;
    *(v22 + 32) = Current - a5;
    v25 = sub_1D225097C();
    v27 = sub_1D21761D0(v25, v26, v37);

    *(v19 + 14) = v27;
    *(v19 + 22) = 2080;
    v28 = swift_allocObject();
    *(v28 + 16) = xmmword_1D22526E0;
    *(v28 + 56) = MEMORY[0x1E69E63B0];
    *(v28 + 64) = MEMORY[0x1E69E6438];
    *(v28 + 32) = (v16 - a2) / 1000000.0;
    v29 = sub_1D225097C();
    v31 = sub_1D21761D0(v29, v30, v37);

    *(v19 + 24) = v31;
    _os_log_impl(&dword_1D2171000, v17, v18, "Updated %ld%% of the gallery in %ss (%ss on CPU)", v19, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1D3899640](v36, -1, -1);
    MEMORY[0x1D3899640](v19, -1, -1);
    goto LABEL_7;
  }

LABEL_16:
  __break(1u);
  return result;
}

uint64_t sub_1D2185A1C(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v6 = *a1;
  v7 = sub_1D225080C();
  v8 = sub_1D2250CEC();
  if (os_log_type_enabled(v7, v8))
  {
    v31 = a3;
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *&v28 = v10;
    *v9 = 136315138;
    LOBYTE(v25[0]) = v6;
    v11 = sub_1D22509AC();
    v13 = sub_1D21761D0(v11, v12, &v28);

    *(v9 + 4) = v13;
    _os_log_impl(&dword_1D2171000, v7, v8, "Updating gallery plugin %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v10);
    v4 = v3;
    MEMORY[0x1D3899640](v10, -1, -1);
    MEMORY[0x1D3899640](v9, -1, -1);
  }

  if (v6)
  {
    v14 = 0xD000000000000017;
  }

  else
  {
    v14 = 0xD000000000000013;
  }

  if (v6)
  {
    v15 = "VUDeviceOwnerPlugin";
  }

  else
  {
    v15 = "ion";
  }

  sub_1D217F584(v14, v15 | 0x8000000000000000);
  v17 = v16;

  if (!v4)
  {
    if (v17 && (v19 = swift_conformsToProtocol2()) != 0)
    {
      v20 = *(v19 + 8);
      *(&v29 + 1) = v17;
      v30 = v19;
      v21 = v19;
      __swift_allocate_boxed_opaque_existential_1(&v28);

      v20(v22, v17, v21);
    }

    else
    {
      v30 = 0;
      v28 = 0u;
      v29 = 0u;
    }

    sub_1D2174DA8(&v28, v25, &qword_1EC6D2160);
    if (v26)
    {
      v23 = v27;
      v24 = __swift_project_boxed_opaque_existential_1(v25, v26);
      MEMORY[0x1EEE9AC00](v24);
      (*(v23 + 16))(sub_1D21A21A4);
      __swift_destroy_boxed_opaque_existential_0Tm(v25);
    }

    else
    {
      sub_1D2176170(v25, &qword_1EC6D2160);
    }

    return sub_1D2176170(&v28, &qword_1EC6D2160);
  }

  return result;
}

uint64_t static VUGallery.Bookmark.supportsSecureCoding.setter(char a1)
{
  result = swift_beginAccess();
  byte_1EC6D20D0 = a1;
  return result;
}

uint64_t sub_1D2185E7C@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = byte_1EC6D20D0;
  return result;
}

uint64_t sub_1D2185EC8(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  byte_1EC6D20D0 = v1;
  return result;
}

void sub_1D2185F10(void *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtCC19VisualUnderstanding9VUGallery8Bookmark_token);
  if (v3)
  {
    v4 = v3;
    v5 = sub_1D225092C();
    [a1 encodeObject:v4 forKey:v5];
  }

  if ((*(v1 + OBJC_IVAR____TtCC19VisualUnderstanding9VUGallery8Bookmark_changeID + 8) & 1) == 0)
  {
    v6 = sub_1D22512FC();
    v7 = sub_1D225092C();
    [a1 encodeObject:v6 forKey:v7];
  }
}

id VUGallery.Bookmark.__allocating_init(coder:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = sub_1D21A3548();

  return v4;
}

id VUGallery.Bookmark.init(coder:)(void *a1)
{
  v2 = sub_1D21A3548();

  return v2;
}

id sub_1D218613C@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtCC19VisualUnderstanding9VUGallery8Bookmark_token);
  v4 = *(v1 + OBJC_IVAR____TtCC19VisualUnderstanding9VUGallery8Bookmark_changeID);
  v5 = *(v1 + OBJC_IVAR____TtCC19VisualUnderstanding9VUGallery8Bookmark_changeID + 8);
  v6 = type metadata accessor for VUGallery.Bookmark();
  v7 = objc_allocWithZone(v6);
  v8 = OBJC_IVAR____TtCC19VisualUnderstanding9VUGallery8Bookmark_token;
  *&v7[OBJC_IVAR____TtCC19VisualUnderstanding9VUGallery8Bookmark_token] = 0;
  v9 = &v7[OBJC_IVAR____TtCC19VisualUnderstanding9VUGallery8Bookmark_changeID];
  *&v7[v8] = v3;
  *v9 = v4;
  v9[8] = v5;
  v12.receiver = v7;
  v12.super_class = v6;
  v10 = v3;
  result = objc_msgSendSuper2(&v12, sel_init);
  a1[3] = v6;
  *a1 = result;
  return result;
}

id VUGallery.Bookmark.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id VUGallery.Bookmark.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for VUGallery.Bookmark();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1D2186358()
{
  type metadata accessor for VUGallery.Bookmark();
  sub_1D2250D5C();
  return v1;
}

uint64_t sub_1D21863BC(uint64_t a1)
{
  v1 = *(*(*(a1 + 16) + 16) + 16);

  v2 = [v1 persistentStoreCoordinator];
  if (v2)
  {
    v3 = v2;
    v4 = [v2 currentPersistentHistoryTokenFromStores_];
  }

  else
  {

    v4 = 0;
  }

  v5 = type metadata accessor for VUGallery.Bookmark();
  v6 = objc_allocWithZone(v5);
  v7 = OBJC_IVAR____TtCC19VisualUnderstanding9VUGallery8Bookmark_token;
  *&v6[OBJC_IVAR____TtCC19VisualUnderstanding9VUGallery8Bookmark_token] = 0;
  v8 = &v6[OBJC_IVAR____TtCC19VisualUnderstanding9VUGallery8Bookmark_changeID];
  *&v6[v7] = v4;
  *v8 = 0;
  v8[8] = 1;
  v11.receiver = v6;
  v11.super_class = v5;
  v9 = objc_msgSendSuper2(&v11, sel_init);
  [v9 copy];

  sub_1D2250E9C();
  swift_unknownObjectRelease();
  return swift_dynamicCast();
}

id sub_1D21864FC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 16);
  *a2 = v4;

  return v4;
}

void sub_1D2186554(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  v4 = *(v3 + 16);
  *(v3 + 16) = v2;
  v5 = v2;
}

void *sub_1D21865AC()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  v2 = v1;
  return v1;
}

uint64_t sub_1D21865F0(void *a1, uint64_t a2)
{
  v3 = v2;
  *(v3 + 16) = 0;
  *(v3 + 48) = 0x2000;
  v6 = a1;
  if (!a1)
  {
    v7 = type metadata accessor for VUGallery.Bookmark();
    v8 = objc_allocWithZone(v7);
    *&v8[OBJC_IVAR____TtCC19VisualUnderstanding9VUGallery8Bookmark_token] = 0;
    v9 = &v8[OBJC_IVAR____TtCC19VisualUnderstanding9VUGallery8Bookmark_changeID];
    *v9 = 0;
    v9[8] = 0;
    v19.receiver = v8;
    v19.super_class = v7;
    v6 = objc_msgSendSuper2(&v19, sel_init);
  }

  swift_beginAccess();
  v10 = *(v3 + 16);
  *(v3 + 16) = v6;
  v11 = a1;

  *(v3 + 40) = a2;
  if (a1)
  {
    v13 = *&v11[OBJC_IVAR____TtCC19VisualUnderstanding9VUGallery8Bookmark_token];
    v12 = v13;
  }

  else
  {
    v13 = 0;
  }

  v14 = *(a2 + 16);
  MEMORY[0x1EEE9AC00](v12);

  v15 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2190);
  sub_1D2250DBC();

  v16 = v20;
  if (v20)
  {

    *(v3 + 24) = v16;
    *(v3 + 32) = 0;
  }

  else
  {
    sub_1D217EE2C();
    swift_allocError();
    *v17 = 7;
    swift_willThrow();

    type metadata accessor for VUGallery.ChangeSequence();
    swift_deallocPartialClassInstance();
  }

  return v3;
}

id sub_1D2186824@<X0>(_BYTE *a1@<X8>)
{
  v4 = v1;
  v107 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2110);
  v6 = MEMORY[0x1EEE9AC00](v5 - 8);
  v105 = &v103 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v104 = &v103 - v8;
  swift_beginAccess();
  v9 = 0;
  while (1)
  {
    while (1)
    {
      while (1)
      {
        swift_beginAccess();
        v10 = v4[3];
        if (v10 >> 62)
        {
          v11 = sub_1D2250F4C();
        }

        else
        {
          v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v12 = v4[4];
        if (v12 == v11)
        {
          v13 = swift_endAccess();
          v14 = v4[5];
          v15 = v4[2];
          if (v15)
          {
            v2 = *(v15 + OBJC_IVAR____TtCC19VisualUnderstanding9VUGallery8Bookmark_token);
            v16 = (v15 + OBJC_IVAR____TtCC19VisualUnderstanding9VUGallery8Bookmark_changeID);
            v17 = *v16;
            v18 = *(v16 + 8);
            v13 = v2;
          }

          else
          {
            v17 = 0;
            v2 = 0;
            v18 = 1;
          }

          v21 = *(v14 + 16);
          MEMORY[0x1EEE9AC00](v13);
          *(&v103 - 6) = v14;
          *(&v103 - 5) = v2;
          *(&v103 - 4) = 0x2000;
          *(&v103 - 24) = 0;
          *(&v103 - 2) = v17;
          *(&v103 - 8) = v18;

          v3 = v21;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2190);
          sub_1D2250DBC();

          if (v110)
          {
            v4[3] = v110;
            v4[4] = 0;
          }

          swift_beginAccess();
          v22 = v4[3];
          if (v22 >> 62)
          {
            v23 = sub_1D2250F4C();
          }

          else
          {
            v23 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          v12 = v4[4];
          if (v12 == v23)
          {
            swift_endAccess();
            v76 = type metadata accessor for VUGalleryUpdate(0);
            return (*(*(v76 - 8) + 56))(v107, 1, 1, v76);
          }

          if ((v22 & 0xC000000000000001) != 0)
          {
            v24 = MEMORY[0x1D3898A80](v4[4], v22);
          }

          else
          {
            if ((v12 & 0x8000000000000000) != 0)
            {
              goto LABEL_90;
            }

            if (v12 >= *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_92;
            }

            v24 = *(v22 + 8 * v12 + 32);
          }

          v3 = v24;
          v20 = (v12 + 1);
          if (__OFADD__(v12, 1))
          {
            goto LABEL_91;
          }
        }

        else
        {
          if ((v10 & 0xC000000000000001) != 0)
          {
            v19 = MEMORY[0x1D3898A80](v4[4], v10);
          }

          else
          {
            if ((v12 & 0x8000000000000000) != 0)
            {
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
              goto LABEL_93;
            }

            if (v12 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_89;
            }

            v19 = *(v10 + 8 * v12 + 32);
          }

          v3 = v19;
          v20 = (v12 + 1);
          if (__OFADD__(v12, 1))
          {
            goto LABEL_88;
          }
        }

        v4[4] = v20;
        swift_endAccess();
        v25 = v4[2];
        if (v25)
        {
          v26 = v25;
          v27 = [v3 changeID];
          v28 = &v26[OBJC_IVAR____TtCC19VisualUnderstanding9VUGallery8Bookmark_changeID];
          *v28 = v27;
          v28[8] = 0;
        }

        v29 = [v3 changedObjectID];
        v30 = [v29 entityName];

        v2 = sub_1D225095C();
        v32 = v31;

        type metadata accessor for VUIndexMapping();
        v33 = [swift_getObjCClassFromMetadata() entityName];
        v34 = sub_1D225095C();
        v36 = v35;

        if (v2 == v34 && v32 == v36)
        {

          goto LABEL_33;
        }

        v2 = sub_1D225126C();

        if ((v2 & 1) == 0)
        {
          break;
        }

LABEL_33:
        if ([v3 changeType] == 2)
        {
          v69 = [v3 tombstone];
          if (v69)
          {
            v70 = v69;
            v71 = sub_1D225089C();

            v108 = 0x696669746E656469;
            v109 = 0xEA00000000007265;
            sub_1D2250FBC();
            if (*(v71 + 16))
            {
              v72 = sub_1D2196CF4(&v110);
              if (v73)
              {
                sub_1D21763A8(*(v71 + 56) + 32 * v72, &v112);
                sub_1D21A389C(&v110);

                if (*(&v113 + 1))
                {
                  sub_1D2174E10(0, &qword_1EDC876F8);
                  if (swift_dynamicCast())
                  {
                    v74 = v110;
                    v75 = [v110 integerValue];

                    goto LABEL_67;
                  }

LABEL_66:
                  v75 = -1;
LABEL_67:
                  v78 = [v3 tombstone];
                  if (v78)
                  {
                    v79 = v78;
                    v80 = sub_1D225089C();

                    v108 = 0x6C6562616CLL;
                    v109 = 0xE500000000000000;
                    sub_1D2250FBC();
                    if (*(v80 + 16) && (v81 = sub_1D2196CF4(&v110), (v82 & 1) != 0))
                    {
                      sub_1D21763A8(*(v80 + 56) + 32 * v81, &v112);
                      sub_1D21A389C(&v110);

                      if (*(&v113 + 1))
                      {
                        sub_1D2174E10(0, &qword_1EDC876F8);
                        if (swift_dynamicCast())
                        {
                          v83 = v110;
                          v84 = [v110 integerValue];

LABEL_77:
                          v85 = v107;
                          *v107 = 2;
                          *(v85 + 1) = v75;
                          *(v85 + 2) = v84;
                          v86 = type metadata accessor for VUGalleryUpdate(0);
                          goto LABEL_78;
                        }

LABEL_76:
                        v84 = -1;
                        goto LABEL_77;
                      }
                    }

                    else
                    {

                      sub_1D21A389C(&v110);
                      v112 = 0u;
                      v113 = 0u;
                    }
                  }

                  else
                  {

                    v112 = 0u;
                    v113 = 0u;
                  }

                  sub_1D2176170(&v112, &unk_1EC6D2180);
                  goto LABEL_76;
                }

LABEL_65:
                sub_1D2176170(&v112, &unk_1EC6D2180);
                goto LABEL_66;
              }
            }

            sub_1D21A389C(&v110);
          }

          v112 = 0u;
          v113 = 0u;
          goto LABEL_65;
        }

        if ([v3 changeType] != 1)
        {
          goto LABEL_3;
        }

        v37 = [v3 updatedProperties];
        if (!v37)
        {
          goto LABEL_3;
        }

        v38 = v37;
        sub_1D2174E10(0, &qword_1EDC872A8);
        sub_1D21A37A4();
        v39 = sub_1D2250BDC();

        sub_1D2181B10(v39);
        v41 = v40;

        v2 = &v103;
        v110 = 0x6C6562616CLL;
        v111 = 0xE500000000000000;
        MEMORY[0x1EEE9AC00](v42);
        *(&v103 - 2) = &v110;
        LOBYTE(v39) = sub_1D219DBC0(sub_1D21A73AC, (&v103 - 4), v41);

        if ((v39 & 1) == 0)
        {
          goto LABEL_3;
        }

        v43 = v4[5];

        v2 = [v3 changedObjectID];
        v44 = MEMORY[0x1EEE9AC00](v2);
        *(&v103 - 2) = v43;
        *(&v103 - 1) = v44;
        v46 = v45;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2178);
        sub_1D2250DBC();

        v47 = v110;
        if (!v110)
        {
          goto LABEL_3;
        }

        v48 = swift_dynamicCastClass();
        if (v48)
        {
          v49 = v48;
          v50 = [v48 observation];
          if (v50)
          {
            v89 = v50;
            v90 = [v50 identifier];

            LOBYTE(v89) = [v3 changeType] != 0;
            v91 = [v49 label];

            v92 = v107;
            *v107 = v89;
            *(v92 + 1) = v90;
            *(v92 + 2) = v91;
            v86 = type metadata accessor for VUGalleryUpdate(0);
            swift_storeEnumTagMultiPayload();
            v87 = *(*(v86 - 8) + 56);
            v88 = v92;
            return v87(v88, 0, 1, v86);
          }
        }

        else
        {

          v3 = v47;
        }
      }

      v51 = [v3 changedObjectID];
      v52 = [v51 entityName];

      v2 = sub_1D225095C();
      v54 = v53;

      type metadata accessor for VUIndexTag();
      v55 = [swift_getObjCClassFromMetadata() entityName];
      v56 = sub_1D225095C();
      v58 = v57;

      if (v2 == v56 && v54 == v58)
      {
      }

      else
      {
        v2 = sub_1D225126C();

        if ((v2 & 1) == 0)
        {
          goto LABEL_3;
        }
      }

      if ([v3 changeType] == 1)
      {
        v59 = [v3 updatedProperties];
        if (v59)
        {
          break;
        }
      }

LABEL_3:
    }

    v60 = v59;
    sub_1D2174E10(0, &qword_1EDC872A8);
    sub_1D21A37A4();
    v61 = sub_1D2250BDC();

    sub_1D2181B10(v61);
    v63 = v62;
    v110 = 0x6465766C6F736572;
    v111 = 0xE800000000000000;
    MEMORY[0x1EEE9AC00](v62);
    *(&v103 - 2) = &v110;
    v2 = sub_1D219DBC0(sub_1D21A380C, (&v103 - 4), v63);

    if ((v2 & 1) == 0 || (v64 = v4[5], , v2 = [v3 changedObjectID], v106 = &v103, v65 = MEMORY[0x1EEE9AC00](v2), *(&v103 - 2) = v64, *(&v103 - 1) = v65, v67 = v66, __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2178), sub_1D2250DBC(), v67, v2, , (v12 = v110) == 0))
    {

      goto LABEL_3;
    }

    v68 = swift_dynamicCastClass();
    if (v68)
    {
      break;
    }

    v3 = v12;
  }

  v9 = v68;
  result = [v68 observation];
  if (result)
  {
    v93 = result;

    v94 = [v93 mapping];

    v2 = v105;
    if (v94)
    {
      v95 = [v94 label];

      goto LABEL_94;
    }

LABEL_93:
    v95 = -1;
LABEL_94:
    if ([v9 resolved])
    {
      v96 = [v9 uuid];
      if (v96)
      {
        v97 = v96;
        sub_1D225054C();

        v98 = 0;
      }

      else
      {
        v98 = 1;
      }

      v101 = sub_1D225055C();
      (*(*(v101 - 8) + 56))(v2, v98, 1, v101);
      v100 = v104;
      sub_1D21A6938(v2, v104, &qword_1EC6D2110);
    }

    else
    {

      v99 = sub_1D225055C();
      v100 = v104;
      (*(*(v99 - 8) + 56))(v104, 1, 1, v99);
    }

    v85 = v107;
    *v107 = 1;
    *(v85 + 1) = v95;
    v102 = type metadata accessor for VUGalleryEntityUpdate(0);
    sub_1D21A6938(v100, &v85[*(v102 + 24)], &qword_1EC6D2110);
    v86 = type metadata accessor for VUGalleryUpdate(0);
LABEL_78:
    swift_storeEnumTagMultiPayload();
    v87 = *(*(v86 - 8) + 56);
    v88 = v85;
    return v87(v88, 0, 1, v86);
  }

  __break(1u);
  return result;
}

uint64_t VUGallery.ChangeSequence.deinit()
{

  return v0;
}

uint64_t VUGallery.ChangeSequence.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

size_t sub_1D2187740()
{
  v0 = sub_1D21D828C();

  return v0;
}

uint64_t sub_1D218779C(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2420);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v17 - v8;
  v10 = type metadata accessor for VUGalleryUpdate(0);
  v11 = *(v10 - 8);
  result = MEMORY[0x1EEE9AC00](v10);
  v14 = &v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = 0;
  if (!a2 || !a3)
  {
LABEL_12:
    *a1 = v3;
    return v15;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v18 = a1;
    sub_1D2186824(v9);
    if ((*(v11 + 48))(v9, 1, v10) == 1)
    {
      v15 = 0;
LABEL_9:
      sub_1D2176170(v9, &qword_1EC6D2420);
    }

    else
    {
      v15 = 0;
      v17 = a3;
      v16 = a3 - 1;
      while (1)
      {
        sub_1D21A6320(v9, v14, type metadata accessor for VUGalleryUpdate);
        sub_1D21A6320(v14, a2, type metadata accessor for VUGalleryUpdate);
        if (v16 == v15)
        {
          break;
        }

        a2 += *(v11 + 72);
        sub_1D2186824(v9);
        ++v15;
        if ((*(v11 + 48))(v9, 1, v10) == 1)
        {
          goto LABEL_9;
        }
      }

      v15 = v17;
    }

    a1 = v18;
    goto LABEL_12;
  }

  __break(1u);
  return result;
}

void sub_1D21879AC(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  if (!a2)
  {
    a3 = 0;
    goto LABEL_11;
  }

  if (!a3)
  {
LABEL_11:
    *a1 = a5;
    a1[1] = a3;
    return;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v9 = *(a5 + 16);
    if (v9)
    {
      v10 = 0;
      while (v10 < *(a5 + 16))
      {
        v11 = *(type metadata accessor for VUGallery.EntityView(0) - 8);
        v12 = *(v11 + 72);
        sub_1D21A6388(a5 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + v12 * v10, a2, type metadata accessor for VUGallery.EntityView);
        if (a3 - 1 == v10)
        {
          goto LABEL_11;
        }

        a2 += v12;
        if (v9 == ++v10)
        {
          goto LABEL_9;
        }
      }

      __break(1u);
      goto LABEL_13;
    }

LABEL_9:
    a3 = v9;
    goto LABEL_11;
  }

LABEL_13:
  __break(1u);
}

uint64_t sub_1D2187B54(void *a1)
{
  v2 = v1;
  v4 = a1;
  v5 = sub_1D225080C();
  v6 = sub_1D2250CBC();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v17 = v8;
    *v7 = 136315394;
    if (a1)
    {
      v9 = *&v4[OBJC_IVAR____TtCC19VisualUnderstanding9VUGallery8Bookmark_token];
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2198);
    v11 = sub_1D22509AC();
    v13 = sub_1D21761D0(v11, v12, &v17);

    *(v7 + 4) = v13;
    *(v7 + 12) = 2048;
    if (!a1 || (v14 = *&v4[OBJC_IVAR____TtCC19VisualUnderstanding9VUGallery8Bookmark_changeID], v15 = v4[OBJC_IVAR____TtCC19VisualUnderstanding9VUGallery8Bookmark_changeID + 8], v4, (v15 & 1) != 0))
    {
      v14 = -1;
    }

    *(v7 + 14) = v14;

    _os_log_impl(&dword_1D2171000, v5, v6, "Requesting changes since bookmark %s with changeID > %lld", v7, 0x16u);
    __swift_destroy_boxed_opaque_existential_0Tm(v8);
    MEMORY[0x1D3899640](v8, -1, -1);
    MEMORY[0x1D3899640](v7, -1, -1);

    v2 = v1;
  }

  else
  {
  }

  MEMORY[0x1EEE9AC00](v10);
  type metadata accessor for VUGallery.ChangeSequence();
  result = sub_1D2250D5C();
  if (!v2)
  {
    return v17;
  }

  return result;
}

uint64_t sub_1D2187D6C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  if (a1)
  {
    [a1 copy];
    sub_1D2250E9C();
    swift_unknownObjectRelease();
    type metadata accessor for VUGallery.Bookmark();
    if (swift_dynamicCast())
    {
      v6 = v10;
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  v7 = *(*(a2 + 16) + 16);
  type metadata accessor for VUGallery.ChangeSequence();
  v8 = swift_allocObject();

  result = sub_1D21865F0(v6, v7);
  if (!v3)
  {
    *a3 = v8;
  }

  return result;
}

uint64_t sub_1D2187E6C(char *a1)
{
  v3 = v1;
  v5 = sub_1D225085C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a1;
  v10 = sub_1D225080C();
  v11 = sub_1D2250CEC();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v23 = v5;
    v13 = v12;
    v14 = swift_slowAlloc();
    v22[1] = v2;
    v15 = v14;
    v25 = v14;
    *v13 = 136315138;
    v24 = v9;
    v16 = sub_1D22509AC();
    v22[0] = v8;
    v18 = sub_1D21761D0(v16, v17, &v25);
    v8 = v22[0];

    *(v13 + 4) = v18;
    _os_log_impl(&dword_1D2171000, v10, v11, "Resetting gallery for %s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v15);
    MEMORY[0x1D3899640](v15, -1, -1);
    v19 = v13;
    v5 = v23;
    MEMORY[0x1D3899640](v19, -1, -1);
  }

  v20 = sub_1D225084C();
  MEMORY[0x1EEE9AC00](v20);
  LOBYTE(v22[-2]) = v9;
  v22[-1] = v3;
  sub_1D2250D4C();
  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1D21880CC(char a1, uint64_t a2)
{
  v3 = v2;
  v5 = *(*(a2 + 16) + 16);
  v6 = *(v5 + 16);

  v7 = v6;
  if (a1)
  {
    goto LABEL_4;
  }

  sub_1D2250DBC();

  if (!v3)
  {
    v7 = *(v5 + 16);
LABEL_4:
    sub_1D2250DBC();
  }
}

uint64_t sub_1D21881B8(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1D225085C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);

  v8 = sub_1D225080C();
  v9 = sub_1D2250CEC();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v20 = v2;
    v11 = v10;
    v12 = swift_slowAlloc();
    v22 = v12;
    *v11 = 136315138;
    v13 = MEMORY[0x1D3898540](a1, &type metadata for VUGallery.EntityClass);
    v21 = v7;
    v15 = sub_1D21761D0(v13, v14, &v22);
    v7 = v21;

    *(v11 + 4) = v15;
    _os_log_impl(&dword_1D2171000, v8, v9, "Resetting gallery for %s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v12);
    MEMORY[0x1D3899640](v12, -1, -1);
    v16 = v11;
    v2 = v20;
    MEMORY[0x1D3899640](v16, -1, -1);
  }

  v17 = sub_1D225084C();
  MEMORY[0x1EEE9AC00](v17);
  *(&v19 - 2) = a1;
  *(&v19 - 1) = v2;
  sub_1D2250D4C();
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_1D218840C(uint64_t result, uint64_t a2)
{
  v3 = v2;
  v4 = *(result + 16);
  if (v4)
  {
    v6 = result + 32;
    v7 = v4 - 1;
    do
    {
      ++v6;
      v8 = v7;
      v9 = *(*(*(a2 + 16) + 16) + 16);
      MEMORY[0x1EEE9AC00](result);

      v10 = v9;
      sub_1D2250DBC();

      if (v3)
      {
        break;
      }

      v7 = v8 - 1;
    }

    while (v8);
  }

  return result;
}

uint64_t VUGallery.EntityView.observations.getter()
{
  type metadata accessor for VUGallery.EntityView(0);
}

id VUGallery.EntitySequence.bookmark.getter()
{
  v1 = *v0;
  v2 = *v0;
  return v1;
}

void sub_1D21885B4(void *a1@<X8>)
{
  v3 = *(v1 + 8);

  *a1 = v3;
  a1[1] = 0;
}

uint64_t sub_1D21885E8()
{
  v1 = *v0;
  v2 = sub_1D21D85D4(*v0, v0[1]);

  return v2;
}

uint64_t sub_1D21886BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t **a3@<X8>)
{
  v4 = v3;
  v115 = a3;
  v116 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2110);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v121 = &v112 - v7;
  v120 = type metadata accessor for VUGallery.EntityView(0);
  v125 = *(v120 - 8);
  v8 = MEMORY[0x1EEE9AC00](v120);
  v113 = &v112 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v122 = &v112 - v10;
  v11 = *(*(a1 + 16) + 16);
  v12 = *(a1 + OBJC_IVAR____TtC19VisualUnderstanding9VUGallery_client);
  v13 = v12 == 5;
  if (v12 == 5)
  {
    v14 = 0;
  }

  else
  {
    v14 = *(a1 + OBJC_IVAR____TtC19VisualUnderstanding9VUGallery_client);
  }

  v130 = MEMORY[0x1E69E7CC8];
  v15 = *(v11 + 16);
  v16 = swift_allocObject();
  *(v16 + 16) = 256;
  *(v16 + 18) = v14;
  *(v16 + 20) = v13;
  *(v16 + 24) = 0;
  *(v16 + 32) = 1;
  *(v16 + 40) = 4096;
  *(v16 + 48) = v11;
  *(v16 + 64) = 0;
  *(v16 + 72) = 0;
  *(v16 + 56) = &v130;
  v17 = swift_allocObject();
  *(v17 + 16) = sub_1D21A72E0;
  *(v17 + 24) = v16;
  v128 = sub_1D21A732C;
  v129 = v17;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D2179EE8;
  aBlock[3] = &block_descriptor_402;
  v18 = _Block_copy(aBlock);
  swift_retain_n();
  v19 = v15;

  [v19 performBlockAndWait_];

  _Block_release(v18);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
LABEL_83:
    __break(1u);
LABEL_84:
    __break(1u);
LABEL_85:
    sub_1D22512AC();
    __break(1u);
    goto LABEL_86;
  }

  v21 = v130;

  v18 = &v112;
  v23 = *(*(a1 + 16) + 16);
  v24 = *(v23 + 16);
  MEMORY[0x1EEE9AC00](v22);
  *(&v112 - 8) = v25;
  *(&v112 - 1) = v23;

  v26 = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2578);
  sub_1D2250DBC();
  v123 = v4;

  v126 = aBlock[0];
  v130 = MEMORY[0x1E69E7CC8];
  v27 = v21 + 8;
  v28 = 1 << *(v21 + 32);
  v29 = -1;
  if (v28 < 64)
  {
    v29 = ~(-1 << v28);
  }

  v30 = v29 & v21[8];
  v117 = OBJC_IVAR____TtC19VisualUnderstanding9VUGallery_logger;
  v31 = (v28 + 63) >> 6;

  v33 = 0;
  *&v34 = 134217984;
  v114 = v34;
  v118 = a1;
  v119 = v32;
  v35 = v121;
  while (v30)
  {
LABEL_14:
    v37 = (v33 << 9) | (8 * __clz(__rbit64(v30)));
    v38 = *(*(v32 + 56) + v37);
    v30 &= v30 - 1;
    if (HIBYTE(v38) > 0x3F || ((1 << SHIBYTE(v38)) & 0x8000000000000044) == 0)
    {
      v59 = sub_1D225080C();
      v18 = sub_1D2250CDC();
      if (os_log_type_enabled(v59, v18))
      {
        v60 = swift_slowAlloc();
        *v60 = v114;
        *(v60 + 4) = v38;
        _os_log_impl(&dword_1D2171000, v59, v18, "Invalid entity %ld!", v60, 0xCu);
        v61 = v60;
        v35 = v121;
        MEMORY[0x1D3899640](v61, -1, -1);
      }

      v32 = v119;
    }

    else
    {
      v124 = *(*(v32 + 48) + v37);
      v40 = v130;
      if (!v130[2] || (sub_1D2176758(v38), (v41 & 1) == 0))
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        aBlock[0] = v40;
        v43 = sub_1D2176758(v38);
        v45 = v40[2];
        v46 = (v44 & 1) == 0;
        v47 = __OFADD__(v45, v46);
        v48 = v45 + v46;
        if (v47)
        {
          goto LABEL_81;
        }

        v18 = v44;
        if (v40[3] >= v48)
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v62 = v43;
            sub_1D21B7130();
            v43 = v62;
          }
        }

        else
        {
          sub_1D21B1C6C(v48, isUniquelyReferenced_nonNull_native);
          v43 = sub_1D2176758(v38);
          if ((v18 & 1) != (v49 & 1))
          {
            goto LABEL_85;
          }
        }

        v35 = v121;
        v50 = aBlock[0];
        if (v18)
        {
          *(aBlock[0][7] + 8 * v43) = MEMORY[0x1E69E7CC0];
        }

        else
        {
          aBlock[0][(v43 >> 6) + 8] |= 1 << v43;
          *(v50[6] + 8 * v43) = v38;
          *(v50[7] + 8 * v43) = MEMORY[0x1E69E7CC0];
          v51 = v50[2];
          v47 = __OFADD__(v51, 1);
          v52 = v51 + 1;
          if (v47)
          {
            goto LABEL_82;
          }

          v50[2] = v52;
        }

        v130 = v50;
      }

      v54 = sub_1D21DF1F8(aBlock, v38);
      v18 = *v53;
      if (*v53)
      {
        v55 = v53;
        v56 = swift_isUniquelyReferenced_nonNull_native();
        *v55 = v18;
        if ((v56 & 1) == 0)
        {
          v18 = sub_1D2196A4C(0, *(v18 + 16) + 1, 1, v18, &qword_1EC6D24C0);
          *v55 = v18;
        }

        v58 = *(v18 + 16);
        v57 = *(v18 + 24);
        if (v58 >= v57 >> 1)
        {
          v18 = sub_1D2196A4C((v57 > 1), v58 + 1, 1, v18, &qword_1EC6D24C0);
          *v55 = v18;
        }

        *(v18 + 16) = v58 + 1;
        *(v18 + 8 * v58 + 32) = v124;
        (v54)(aBlock, 0);
        v32 = v119;
        v35 = v121;
      }

      else
      {
        (v54)(aBlock, 0);
        v32 = v119;
      }
    }
  }

  while (1)
  {
    v36 = v33 + 1;
    if (__OFADD__(v33, 1))
    {
      __break(1u);
      goto LABEL_79;
    }

    if (v36 >= v31)
    {
      break;
    }

    v30 = v27[v36];
    ++v33;
    if (v30)
    {
      v33 = v36;
      goto LABEL_14;
    }
  }

  v63 = v116;
  if (v116)
  {
    v64 = v130;
    v65 = v120;
    v66 = v126;
    if (*(v116 + 16))
    {

      v67 = v123;
      v68 = sub_1D21A6734(v64, v63);
      v123 = v67;

      v130 = v68;
      v64 = v68;
    }
  }

  else
  {
    v64 = v130;
    v65 = v120;
    v66 = v126;
  }

  v69 = *(v64 + 16);
  v70 = MEMORY[0x1E69E7CC0];
  if (v69)
  {
    v70 = sub_1D21F7F70(*(v64 + 16), 0);
    v124 = sub_1D21F91B4(aBlock, v70 + 4, v69, v64);
    v18 = v128;

    sub_1D217CF78();
    if (v124 != v69)
    {
      goto LABEL_84;
    }

    v35 = v121;
  }

  aBlock[0] = v70;
  v71 = v123;
  sub_1D2195470(aBlock);
  v18 = v71;
  if (!v71)
  {
    v72 = aBlock[0];
    v73 = aBlock[0][2];
    v116 = v64;
    *&v114 = 0;
    if (v73)
    {
      aBlock[0] = MEMORY[0x1E69E7CC0];
      v123 = v73;
      sub_1D21AF984(0, v73, 0);
      v74 = 0;
      v75 = aBlock[0];
      v18 = (v72 + 5);
      v76 = v122;
      v124 = v72;
      while (v74 < v72[2])
      {
        v77 = v75;
        v79 = *(v18 - 8);
        v78 = *v18;
        if (v66[2])
        {
          v80 = sub_1D2176758(*(v18 - 8));
          if (v81)
          {
            v82 = v80;
            v83 = v66[7];
            v84 = sub_1D225055C();
            v85 = *(v84 - 8);
            v86 = v85;
            v87 = v83 + *(v85 + 72) * v82;
            v35 = v121;
            (*(v85 + 16))(v121, v87, v84);
            (*(v86 + 56))(v35, 0, 1, v84);
            v65 = v120;
          }

          else
          {
            v89 = sub_1D225055C();
            (*(*(v89 - 8) + 56))(v35, 1, 1, v89);
          }

          v76 = v122;
        }

        else
        {
          v88 = sub_1D225055C();
          (*(*(v88 - 8) + 56))(v35, 1, 1, v88);
        }

        *v76 = v79;
        sub_1D21A6938(v35, v76 + *(v65 + 20), &qword_1EC6D2110);
        *(v76 + *(v65 + 24)) = v78;
        aBlock[0] = v77;
        v90 = v77[2];
        v91 = v77[3];

        if (v90 >= v91 >> 1)
        {
          sub_1D21AF984(v91 > 1, v90 + 1, 1);
          v76 = v122;
          v77 = aBlock[0];
        }

        ++v74;
        v77[2] = v90 + 1;
        sub_1D21A6320(v76, v77 + ((*(v125 + 80) + 32) & ~*(v125 + 80)) + *(v125 + 72) * v90, type metadata accessor for VUGallery.EntityView);
        v18 += 16;
        v72 = v124;
        v66 = v126;
        v75 = v77;
        if (v123 == v74)
        {

          v18 = v114;
          goto LABEL_62;
        }
      }

LABEL_79:
      __break(1u);
      goto LABEL_80;
    }

    v75 = MEMORY[0x1E69E7CC0];
LABEL_62:
    swift_bridgeObjectRetain_n();
    v92 = sub_1D225080C();
    v93 = sub_1D2250CBC();
    if (os_log_type_enabled(v92, v93))
    {
      v94 = swift_slowAlloc();
      *v94 = 134218240;
      *(v94 + 4) = v75[2];
      *(v94 + 12) = 2048;
      v95 = v75[2];
      LODWORD(v126) = v93;
      v124 = v94;
      if (v95)
      {
        v123 = v92;
        aBlock[0] = MEMORY[0x1E69E7CC0];
        sub_1D21AF7AC(0, v95, 0);
        v96 = aBlock[0];
        v97 = v75;
        v98 = v75 + ((*(v125 + 80) + 32) & ~*(v125 + 80));
        v99 = *(v125 + 72);
        v100 = v113;
        do
        {
          v101 = v96;
          sub_1D21A6388(v98, v100, type metadata accessor for VUGallery.EntityView);
          v102 = *(*(v100 + *(v65 + 24)) + 16);
          sub_1D21A63F0(v100, type metadata accessor for VUGallery.EntityView);
          v96 = v101;
          aBlock[0] = v101;
          v103 = v101[2];
          v104 = v96[3];
          v105 = v103 + 1;
          if (v103 >= v104 >> 1)
          {
            sub_1D21AF7AC((v104 > 1), v103 + 1, 1);
            v100 = v113;
            v96 = aBlock[0];
          }

          v96[2] = v105;
          v96[v103 + 4] = v102;
          v98 += v99;
          --v95;
        }

        while (v95);
        v18 = v114;
        v92 = v123;
LABEL_71:
        v106 = 0;
        v107 = 4;
        while (1)
        {
          v108 = v96[v107];
          v47 = __OFADD__(v106, v108);
          v106 += v108;
          if (v47)
          {
            break;
          }

          ++v107;
          if (!--v105)
          {
            v75 = v97;

            goto LABEL_75;
          }
        }

LABEL_80:
        __break(1u);
LABEL_81:
        __break(1u);
LABEL_82:
        __break(1u);
        goto LABEL_83;
      }

      v97 = v75;
      v96 = MEMORY[0x1E69E7CC0];
      v105 = *(MEMORY[0x1E69E7CC0] + 16);
      if (v105)
      {
        goto LABEL_71;
      }

      v75 = v97;

      v106 = 0;
LABEL_75:

      v109 = v124;
      *(v124 + 14) = v106;

      _os_log_impl(&dword_1D2171000, v92, v126, "Snapshot: %ld entities over %ld observations", v109, 0x16u);
      MEMORY[0x1D3899640](v109, -1, -1);
    }

    else
    {

      swift_bridgeObjectRelease_n();
    }

    type metadata accessor for VUGallery.Bookmark();
    sub_1D2250D5C();

    v111 = v115;
    *v115 = aBlock[0];
    v111[1] = v75;
    return result;
  }

LABEL_86:

  __break(1u);
  return result;
}

uint64_t sub_1D2189458@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(*(a1 + 16) + 16);
  v4 = *(a1 + OBJC_IVAR____TtC19VisualUnderstanding9VUGallery_client);
  v5 = v4 == 5;
  if (v4 == 5)
  {
    v6 = 0;
  }

  else
  {
    v6 = *(a1 + OBJC_IVAR____TtC19VisualUnderstanding9VUGallery_client);
  }

  v18 = MEMORY[0x1E69E7CC8];
  v7 = *(v3 + 16);
  v8 = swift_allocObject();
  *(v8 + 16) = 256;
  *(v8 + 18) = v6;
  *(v8 + 20) = v5;
  *(v8 + 24) = -1;
  *(v8 + 32) = 0;
  *(v8 + 40) = 4096;
  *(v8 + 48) = v3;
  *(v8 + 64) = 0;
  *(v8 + 72) = 0;
  *(v8 + 56) = &v18;
  v9 = swift_allocObject();
  *(v9 + 16) = sub_1D21A6B28;
  *(v9 + 24) = v8;
  aBlock[4] = sub_1D21A732C;
  aBlock[5] = v9;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D2179EE8;
  aBlock[3] = &block_descriptor_391;
  v10 = _Block_copy(aBlock);
  swift_retain_n();
  v11 = v7;

  [v11 performBlockAndWait_];

  _Block_release(v10);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v14 = v18;

    v15 = sub_1D2181E78(v14);
    v16 = sub_1D2206838(v15);

    *a2 = v16;
  }

  return result;
}

uint64_t sub_1D2189690@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(*(a1 + 16) + 16);
  sub_1D2174E10(0, &unk_1EDC886D0);

  v5 = MEMORY[0x1E69E7CC0];
  v6 = sub_1D2250C5C();
  v7 = *(v4 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D21D8);
  sub_1D2250DBC();
  if (v2)
  {

LABEL_3:
    v8 = MEMORY[0x1E69E7CC0];
    goto LABEL_10;
  }

  v9 = *(v16 + 16);
  if (!v9)
  {

    goto LABEL_3;
  }

  sub_1D21AF7AC(0, v9, 0);
  v8 = v5;
  v10 = *(v5 + 16);
  v11 = 32;
  do
  {
    v12 = *(v16 + v11);
    v13 = *(v5 + 24);
    if (v10 >= v13 >> 1)
    {
      sub_1D21AF7AC((v13 > 1), v10 + 1, 1);
    }

    *(v5 + 16) = v10 + 1;
    *(v5 + 8 * v10 + 32) = v12;
    v11 += 8;
    ++v10;
    --v9;
  }

  while (v9);

LABEL_10:
  v14 = sub_1D2206838(v8);

  *a2 = v14;
  return result;
}

uint64_t VUGallery.TagView.tag.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for VUGallery.TagView(0) + 20);
  v4 = sub_1D225055C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_1D21899C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v41 = a3;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2128);
  v52 = *(v48 - 8);
  v7 = MEMORY[0x1EEE9AC00](v48);
  v47 = v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v46 = (v40 - v9);
  v10 = type metadata accessor for VUGallery.TagView(0);
  v49 = *(v10 - 8);
  v50 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v12 = v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2110);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = v40 - v14;
  v16 = *(*(a1 + 16) + 16);
  v17 = OBJC_IVAR____TtC19VisualUnderstanding9VUGallery_client;
  v18 = *(a1 + OBJC_IVAR____TtC19VisualUnderstanding9VUGallery_client);
  v19 = sub_1D225055C();
  v51 = *(v19 - 8);
  v20 = *(v51 + 56);
  v45 = v19;
  v20(v15, 1, 1);
  v21 = *(v16 + 16);
  v53 = a2;
  v54 = 0;
  v55 = v18;
  v56 = 0;
  v57 = v15;
  v58 = v16;

  v22 = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2140);
  sub_1D2250DBC();

  v23 = v59;
  sub_1D2176170(v15, &qword_1EC6D2110);
  v24 = *(v23 + 16);
  if (v24)
  {
    v40[1] = v4;
    v59 = MEMORY[0x1E69E7CC0];
    sub_1D21AF7CC(0, v24, 0);
    v44 = *(a1 + v17);
    v25 = v59;
    v26 = (*(v52 + 80) + 32) & ~*(v52 + 80);
    v40[0] = v23;
    v27 = v23 + v26;
    v28 = *(v52 + 72);
    v42 = (v51 + 32);
    v43 = v28;
    do
    {
      v52 = v24;
      v29 = v46;
      sub_1D2174DA8(v27, v46, &qword_1EC6D2128);
      v30 = v47;
      sub_1D2174DA8(v29, v47, &qword_1EC6D2128);
      v31 = *(v48 + 64);
      v32 = *(v29 + *(v48 + 80));
      v51 = *v29;
      sub_1D2176170(v29, &qword_1EC6D2128);
      *v12 = v44;
      v33 = v50;
      (*v42)(&v12[*(v50 + 20)], v30 + v31, v45);
      v12[*(v33 + 24)] = v32;
      *&v12[*(v33 + 28)] = v51;
      v59 = v25;
      v35 = *(v25 + 16);
      v34 = *(v25 + 24);
      if (v35 >= v34 >> 1)
      {
        sub_1D21AF7CC(v34 > 1, v35 + 1, 1);
        v25 = v59;
      }

      *(v25 + 16) = v35 + 1;
      sub_1D21A6320(v12, v25 + ((*(v49 + 80) + 32) & ~*(v49 + 80)) + *(v49 + 72) * v35, type metadata accessor for VUGallery.TagView);
      v27 += v43;
      v24 = v52 - 1;
    }

    while (v52 != 1);

    v36 = v49;
  }

  else
  {

    v25 = MEMORY[0x1E69E7CC0];
    v36 = v49;
  }

  v37 = v41;
  if (*(v25 + 16))
  {
    sub_1D21A6388(v25 + ((*(v36 + 80) + 32) & ~*(v36 + 80)), v41, type metadata accessor for VUGallery.TagView);
    v38 = 0;
  }

  else
  {
    v38 = 1;
  }

  return (*(v36 + 56))(v37, v38, 1, v50);
}

uint64_t sub_1D2189ED0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D21B8);
  sub_1D2250D5C();
  return v1;
}

uint64_t sub_1D2189F48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2128);
  v7 = *(v6 - 8);
  v50 = v6;
  v51 = v7;
  v8 = MEMORY[0x1EEE9AC00](v6);
  v49 = v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v46 = v41 - v10;
  v11 = type metadata accessor for VUGallery.TagView(0);
  v47 = *(v11 - 8);
  v48 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v13 = v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2110);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = v41 - v15;
  v17 = *(*(a1 + 16) + 16);
  v18 = sub_1D225055C();
  v19 = *(v18 - 8);
  v20 = *(v19 + 56);
  v45 = v18;
  v20(v16, 1, 1);
  v21 = *(v17 + 16);
  v53 = a2;
  v54 = 0;
  v55 = 0;
  v56 = 1;
  v57 = v16;
  v58 = v17;

  v22 = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2140);
  v23 = v52;
  sub_1D2250DBC();

  v24 = v59;
  sub_1D2176170(v16, &qword_1EC6D2110);
  v25 = *(v24 + 16);
  if (v25)
  {
    v41[2] = v23;
    v42 = a3;
    v59 = MEMORY[0x1E69E7CC0];
    sub_1D21AF7CC(0, v25, 0);
    v26 = v59;
    v27 = (*(v51 + 80) + 32) & ~*(v51 + 80);
    v41[1] = v24;
    v28 = v24 + v27;
    v29 = *(v51 + 72);
    v43 = (v19 + 32);
    v44 = v29;
    do
    {
      v51 = v26;
      v52 = v25;
      v30 = v46;
      sub_1D2174DA8(v28, v46, &qword_1EC6D2128);
      if (*(v30 + 8) >= 6u)
      {
        v31 = 5;
      }

      else
      {
        v31 = *(v30 + 8);
      }

      v32 = v49;
      sub_1D2174DA8(v30, v49, &qword_1EC6D2128);
      v33 = *(v50 + 64);
      v34 = *(v30 + *(v50 + 80));
      v35 = *v30;
      v36 = v30;
      v26 = v51;
      sub_1D2176170(v36, &qword_1EC6D2128);
      *v13 = v31;
      v37 = v48;
      (*v43)(&v13[*(v48 + 20)], v32 + v33, v45);
      v13[*(v37 + 24)] = v34;
      *&v13[*(v37 + 28)] = v35;
      v59 = v26;
      v39 = *(v26 + 16);
      v38 = *(v26 + 24);
      if (v39 >= v38 >> 1)
      {
        sub_1D21AF7CC(v38 > 1, v39 + 1, 1);
        v26 = v59;
      }

      *(v26 + 16) = v39 + 1;
      sub_1D21A6320(v13, v26 + ((*(v47 + 80) + 32) & ~*(v47 + 80)) + *(v47 + 72) * v39, type metadata accessor for VUGallery.TagView);
      v28 += v44;
      v25 = v52 - 1;
    }

    while (v52 != 1);

    a3 = v42;
  }

  else
  {

    v26 = MEMORY[0x1E69E7CC0];
  }

  *a3 = v26;
  return result;
}

uint64_t sub_1D218A3E0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = v2;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2128);
  v49 = *(v47 - 8);
  v6 = MEMORY[0x1EEE9AC00](v47);
  v46 = v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v43 = v38 - v8;
  v9 = type metadata accessor for VUGallery.TagView(0);
  v44 = *(v9 - 8);
  v45 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2110);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = v38 - v13;
  v15 = *(*(a1 + 16) + 16);
  v16 = sub_1D225055C();
  v17 = *(v16 - 8);
  v18 = *(v17 + 56);
  v42 = v16;
  v18(v14, 1, 1);
  v19 = *(v15 + 16);
  v50 = 0;
  v51 = 1;
  v52 = 0;
  v53 = 1;
  v54 = v14;
  v55 = v15;

  v20 = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2140);
  sub_1D2250DBC();

  v21 = v56;
  sub_1D2176170(v14, &qword_1EC6D2110);
  v22 = *(v21 + 16);
  if (v22)
  {
    v38[2] = v3;
    v39 = a2;
    v56 = MEMORY[0x1E69E7CC0];
    sub_1D21AF7CC(0, v22, 0);
    v23 = v56;
    v24 = (*(v49 + 80) + 32) & ~*(v49 + 80);
    v38[1] = v21;
    v25 = v21 + v24;
    v26 = *(v49 + 72);
    v40 = (v17 + 32);
    v41 = v26;
    do
    {
      v48 = v23;
      v49 = v22;
      v27 = v43;
      sub_1D2174DA8(v25, v43, &qword_1EC6D2128);
      if (*(v27 + 8) >= 6u)
      {
        v28 = 5;
      }

      else
      {
        v28 = *(v27 + 8);
      }

      v29 = v46;
      sub_1D2174DA8(v27, v46, &qword_1EC6D2128);
      v30 = *(v47 + 64);
      v31 = *(v27 + *(v47 + 80));
      v32 = *v27;
      v33 = v27;
      v23 = v48;
      sub_1D2176170(v33, &qword_1EC6D2128);
      *v11 = v28;
      v34 = v45;
      (*v40)(&v11[*(v45 + 20)], v29 + v30, v42);
      v11[*(v34 + 24)] = v31;
      *&v11[*(v34 + 28)] = v32;
      v56 = v23;
      v36 = *(v23 + 16);
      v35 = *(v23 + 24);
      if (v36 >= v35 >> 1)
      {
        sub_1D21AF7CC(v35 > 1, v36 + 1, 1);
        v23 = v56;
      }

      *(v23 + 16) = v36 + 1;
      sub_1D21A6320(v11, v23 + ((*(v44 + 80) + 32) & ~*(v44 + 80)) + *(v44 + 72) * v36, type metadata accessor for VUGallery.TagView);
      v25 += v41;
      v22 = v49 - 1;
    }

    while (v49 != 1);

    a2 = v39;
  }

  else
  {

    v23 = MEMORY[0x1E69E7CC0];
  }

  *a2 = v23;
  return result;
}

uint64_t sub_1D218A854()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D21B8);
  sub_1D2250D5C();
  return v1;
}

uint64_t sub_1D218A8D4@<X0>(uint64_t a1@<X0>, __int16 a2@<W1>, void *a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2128);
  v7 = *(v6 - 8);
  v50 = v6;
  v51 = v7;
  v8 = MEMORY[0x1EEE9AC00](v6);
  v49 = v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v46 = v41 - v10;
  v11 = type metadata accessor for VUGallery.TagView(0);
  v47 = *(v11 - 8);
  v48 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v13 = v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2110);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = v41 - v15;
  v17 = *(*(a1 + 16) + 16);
  v18 = sub_1D225055C();
  v19 = *(v18 - 8);
  v20 = *(v19 + 56);
  v45 = v18;
  v20(v16, 1, 1);
  v21 = *(v17 + 16);
  v53 = 0;
  v54 = 1;
  v55 = a2;
  v56 = 0;
  v57 = v16;
  v58 = v17;

  v22 = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2140);
  v23 = v52;
  sub_1D2250DBC();

  v24 = v59;
  sub_1D2176170(v16, &qword_1EC6D2110);
  v25 = *(v24 + 16);
  if (v25)
  {
    v41[2] = v23;
    v42 = a3;
    v59 = MEMORY[0x1E69E7CC0];
    sub_1D21AF7CC(0, v25, 0);
    v26 = v59;
    v27 = (*(v51 + 80) + 32) & ~*(v51 + 80);
    v41[1] = v24;
    v28 = v24 + v27;
    v29 = *(v51 + 72);
    v43 = (v19 + 32);
    v44 = v29;
    do
    {
      v51 = v26;
      v52 = v25;
      v30 = v46;
      sub_1D2174DA8(v28, v46, &qword_1EC6D2128);
      if (*(v30 + 8) >= 6u)
      {
        v31 = 5;
      }

      else
      {
        v31 = *(v30 + 8);
      }

      v32 = v49;
      sub_1D2174DA8(v30, v49, &qword_1EC6D2128);
      v33 = *(v50 + 64);
      v34 = *(v30 + *(v50 + 80));
      v35 = *v30;
      v36 = v30;
      v26 = v51;
      sub_1D2176170(v36, &qword_1EC6D2128);
      *v13 = v31;
      v37 = v48;
      (*v43)(&v13[*(v48 + 20)], v32 + v33, v45);
      v13[*(v37 + 24)] = v34;
      *&v13[*(v37 + 28)] = v35;
      v59 = v26;
      v39 = *(v26 + 16);
      v38 = *(v26 + 24);
      if (v39 >= v38 >> 1)
      {
        sub_1D21AF7CC(v38 > 1, v39 + 1, 1);
        v26 = v59;
      }

      *(v26 + 16) = v39 + 1;
      sub_1D21A6320(v13, v26 + ((*(v47 + 80) + 32) & ~*(v47 + 80)) + *(v47 + 72) * v39, type metadata accessor for VUGallery.TagView);
      v28 += v44;
      v25 = v52 - 1;
    }

    while (v52 != 1);

    a3 = v42;
  }

  else
  {

    v26 = MEMORY[0x1E69E7CC0];
  }

  *a3 = v26;
  return result;
}

uint64_t sub_1D218AD44()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D21B8);
  sub_1D2250D5C();
  return v1;
}